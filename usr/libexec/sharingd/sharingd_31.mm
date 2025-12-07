uint64_t sub_1004A86FC()
{
  swift_beginAccess();
  v3 = *(v0 + 8);

  return v3(v1);
}

uint64_t sub_1004A8790(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100005C04;

  return sub_1004A7FE0(a1);
}

uint64_t sub_1004A8828(uint64_t a1)
{
  v2[5] = a1;
  sub_10028088C(&qword_1009763E0, &qword_1007F95D0);
  v3 = swift_task_alloc();
  v4 = *v1;
  v2[6] = v3;
  v2[7] = v4;
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v5 = static AirDropActor.shared;

  return _swift_task_switch(sub_1004A8900, v5, 0);
}

uint64_t sub_1004A8900()
{
  v1 = v0[6];
  v2 = v0[5];
  swift_beginAccess();
  sub_10036E788(v2, v1);
  swift_endAccess();
  sub_100005508(v1, &qword_1009763E0, &qword_1007F95D0);
  sub_1004A54BC();

  v3 = v0[1];

  return v3();
}

uint64_t sub_1004A89C4(uint64_t a1)
{
  result = sub_1004A8AFC(&qword_10097F7A8, type metadata accessor for SDAirDropDiscoveredDevice, &unk_100805594);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1004A8A1C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10028088C(&qword_10097F7B0, &unk_1008055D8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1004A8A8C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10028088C(&qword_10097F7B0, &unk_1008055D8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1004A8AFC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1004A8B64()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_10097F7B8);
  v1 = sub_10000C4AC(v0, qword_10097F7B8);
  if (qword_1009736D0 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C4AC(v0, qword_1009A08B8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1004A8C2C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for SFAirDropReceive.AskRequest.ItemInfo();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v4 = static AirDropActor.shared;

  return _swift_task_switch(sub_1004A8D24, v4, 0);
}

uint64_t sub_1004A8D24(uint64_t a1)
{
  v2 = *(SFAirDropReceive.AskRequest.urlItems.getter() + 16);

  if (v2)
  {
    goto LABEL_7;
  }

  v3 = *(SFAirDropReceive.AskRequest.files.getter() + 16);

  if (v3 != 1)
  {
    goto LABEL_7;
  }

  v4 = SFAirDropReceive.AskRequest.files.getter();
  if (*(v4 + 16))
  {
    v6 = v1[5];
    v5 = v1[6];
    v8 = v1[3];
    v7 = v1[4];
    (*(v6 + 16))(v5, v4 + ((*(v6 + 80) + 32) & ~*(v6 + 80)), v7);

    v9 = SFAirDropReceive.AskRequest.ItemInfo.fileType.getter();
    v11 = v10;
    (*(v6 + 8))(v5, v7);
    *(v8 + 16) = v9;
    *(v8 + 24) = v11;
  }

  v12 = objc_allocWithZone(LSApplicationRecord);
  v13 = sub_10066F3F8(0xD000000000000012, 0x8000000100788350, 1);
  if (v13)
  {

    v14 = 1;
  }

  else
  {
LABEL_7:
    v14 = 0;
  }

  v15 = v1[1];

  return v15(v14);
}

uint64_t sub_1004A8FCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[11] = a4;
  v5[12] = a5;
  v5[10] = a1;
  v6 = type metadata accessor for URL();
  v5[13] = v6;
  v5[14] = *(v6 - 8);
  v5[15] = swift_task_alloc();
  v5[16] = swift_task_alloc();
  v5[17] = swift_task_alloc();
  sub_10028088C(&unk_100974E00, &qword_1007F8940);
  v5[18] = swift_task_alloc();
  v5[19] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v7 = static AirDropActor.shared;

  return _swift_task_switch(sub_1004A9150, v7, 0);
}

id sub_1004A9150()
{
  v85 = v0;
  v1 = 0xD000000000000014;
  v2 = *(v0 + 144);
  v3 = *(v0 + 152);
  v4 = *(v0 + 104);
  v5 = *(v0 + 112);
  v6 = *(v0 + 88);
  sub_10028088C(&unk_100978CC0, &qword_1007FAD20);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1007F5670;
  v9 = *(v6 + 16);
  v8 = *(v6 + 24);
  *(v7 + 56) = &type metadata for String;
  *(v7 + 64) = sub_100026764();
  *(v7 + 32) = v9;
  *(v7 + 40) = v8;

  String.init(format:_:)();
  URL.init(string:)();

  sub_100333278(v3, v2);
  if ((*(v5 + 48))(v2, 1, v4) == 1)
  {
    sub_100005508(*(v0 + 144), &unk_100974E00, &qword_1007F8940);
    if (qword_1009738E0 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_10000C4AC(v10, qword_10097F7B8);

    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = *(v0 + 96);
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v84 = v15;
      *v14 = 136315138;
      if (*(v13 + 16))
      {
        v1 = URL.description.getter();
        v17 = v16;
      }

      else
      {
        v17 = 0x80000001007924A0;
      }

      v74 = *(v0 + 152);
      v75 = sub_10000C4E4(v1, v17, &v84);

      *(v14 + 4) = v75;
      _os_log_impl(&_mh_execute_header, v11, v12, "Unable to build app store search URL with item: %s", v14, 0xCu);
      sub_10000C60C(v15);

      v36 = v74;
    }

    else
    {
      v35 = *(v0 + 152);

      v36 = v35;
    }

    goto LABEL_21;
  }

  (*(*(v0 + 112) + 32))(*(v0 + 136), *(v0 + 144), *(v0 + 104));
  if (qword_1009738E0 != -1)
  {
    swift_once();
  }

  v19 = *(v0 + 128);
  v18 = *(v0 + 136);
  v21 = *(v0 + 104);
  v20 = *(v0 + 112);
  v22 = type metadata accessor for Logger();
  sub_10000C4AC(v22, qword_10097F7B8);
  v79 = *(v20 + 16);
  v79(v19, v18, v21);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();
  v25 = os_log_type_enabled(v23, v24);
  v26 = *(v0 + 128);
  v28 = *(v0 + 104);
  v27 = *(v0 + 112);
  if (v25)
  {
    v29 = swift_slowAlloc();
    v77 = swift_slowAlloc();
    v84 = v77;
    *v29 = 136315138;
    sub_1004AA010();
    v30 = dispatch thunk of CustomStringConvertible.description.getter();
    v32 = v31;
    v33 = *(v27 + 8);
    v33(v26, v28);
    v34 = sub_10000C4E4(v30, v32, &v84);

    *(v29 + 4) = v34;
    _os_log_impl(&_mh_execute_header, v23, v24, "Launching app store with URL: %s", v29, 0xCu);
    sub_10000C60C(v77);
  }

  else
  {

    v33 = *(v27 + 8);
    v33(v26, v28);
  }

  v37 = objc_opt_self();
  URL._bridgeToObjectiveC()(v38);
  v40 = v39;
  [v37 logReceiverBundleID:0 forURL:v39];

  sub_10028088C(&qword_10097B5E8, &qword_1007FE9C8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007F5670;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v42;
  *(inited + 48) = 1;
  v43 = sub_100281D9C(inited);
  swift_setDeallocating();
  sub_100005508(inited + 32, &qword_10097B5F0, &qword_1007FE9D0);
  v44 = [objc_allocWithZone(_LSOpenConfiguration) init];
  sub_1003CE73C(v43);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v44 setFrontBoardOptions:isa];

  result = [objc_opt_self() defaultWorkspace];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v47 = result;

  URL._bridgeToObjectiveC()(v48);
  v50 = v49;
  *(v0 + 72) = 0;
  v51 = [v47 openURL:v49 configuration:v44 error:v0 + 72];

  v52 = *(v0 + 72);
  v53 = *(v0 + 104);
  if (!v51)
  {
    v58 = *(v0 + 136);
    v59 = *(v0 + 120);
    v60 = v52;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v79(v59, v58, v53);
    swift_errorRetain();
    v61 = Logger.logObject.getter();
    v62 = static os_log_type_t.error.getter();

    v63 = os_log_type_enabled(v61, v62);
    v64 = *(v0 + 152);
    v65 = *(v0 + 136);
    v66 = *(v0 + 120);
    v67 = *(v0 + 104);
    if (v63)
    {
      v83 = *(v0 + 136);
      v68 = swift_slowAlloc();
      v80 = swift_slowAlloc();
      v81 = swift_slowAlloc();
      v84 = v81;
      *v68 = 136315394;
      sub_1004AA010();
      v82 = v64;
      v69 = dispatch thunk of CustomStringConvertible.description.getter();
      v78 = v62;
      v71 = v70;
      v33(v66, v67);
      v72 = sub_10000C4E4(v69, v71, &v84);

      *(v68 + 4) = v72;
      *(v68 + 12) = 2112;
      swift_errorRetain();
      v73 = _swift_stdlib_bridgeErrorToNSError();
      *(v68 + 14) = v73;
      *v80 = v73;
      _os_log_impl(&_mh_execute_header, v61, v78, "Failed to launch app store with URL %s: %@", v68, 0x16u);
      sub_100005508(v80, &qword_100975400, &qword_1007F65D0);

      sub_10000C60C(v81);

      v33(v83, v67);
      v36 = v82;
    }

    else
    {

      v33(v66, v67);
      v33(v65, v67);
      v36 = v64;
    }

LABEL_21:
    sub_100005508(v36, &unk_100974E00, &qword_1007F8940);
    v57 = 0;
    goto LABEL_22;
  }

  v54 = *(v0 + 152);
  v55 = *(v0 + 136);
  v56 = v52;

  v33(v55, v53);
  sub_100005508(v54, &unk_100974E00, &qword_1007F8940);
  v57 = 1;
LABEL_22:
  **(v0 + 80) = v57;

  v76 = *(v0 + 8);

  return v76();
}

uint64_t sub_1004A9AAC()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1004A9B08@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for SDAirDropContentHandlerUnsupportedFileType();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = 0xE000000000000000;
  *a1 = result;
  return result;
}

uint64_t sub_1004A9B44(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100289000;

  return sub_1004A8C2C(a1);
}

uint64_t sub_1004A9BE0(uint64_t a1)
{
  v3 = *v1;
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = a1;

  return SFProgressTask.init(_:initialProgress:operation:file:line:)();
}

uint64_t sub_1004A9CC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_1004A9D84;

  return sub_1004AA068(a1);
}

uint64_t sub_1004A9D84(char a1)
{
  v7 = *v2;

  v4 = *(v7 + 8);
  if (v1)
  {
    v5 = 0;
  }

  else
  {
    v5 = a1 & 1;
  }

  return v4(v5);
}

void sub_1004A9E8C(uint64_t a1, char a2)
{
  if (a2)
  {
    v2 = String._bridgeToObjectiveC()();
    v3 = SFLocalizedStringForKey();

    if (v3)
    {
LABEL_5:
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      return;
    }

    __break(1u);
  }

  v4 = String._bridgeToObjectiveC()();
  v3 = SFLocalizedStringForKey();

  if (v3)
  {
    goto LABEL_5;
  }

  __break(1u);
}

uint64_t sub_1004A9F4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = *(v3 + 16);
  v8 = *(v3 + 24);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_100005C00;

  return sub_1004A8FCC(a1, a2, a3, v9, v8);
}

unint64_t sub_1004AA010()
{
  result = qword_100975160;
  if (!qword_100975160)
  {
    type metadata accessor for URL();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100975160);
  }

  return result;
}

uint64_t sub_1004AA068(uint64_t a1)
{
  v1[7] = a1;
  v2 = sub_10028088C(&qword_100976900, &unk_1007FD250);
  v1[8] = v2;
  v1[9] = *(v2 - 8);
  v1[10] = swift_task_alloc();
  v3 = *(sub_10028088C(&unk_100974E00, &qword_1007F8940) - 8);
  v1[11] = v3;
  v1[12] = *(v3 + 64);
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v4 = type metadata accessor for URL();
  v1[15] = v4;
  v1[16] = *(v4 - 8);
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v5 = type metadata accessor for SFAirDropReceive.ItemDestination();
  v1[20] = v5;
  v1[21] = *(v5 - 8);
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  v6 = sub_10028088C(&qword_10097F8C0, &unk_1008056A0);
  v1[24] = v6;
  v1[25] = *(v6 - 8);
  v1[26] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v7 = static AirDropActor.shared;
  v1[27] = static AirDropActor.shared;

  return _swift_task_switch(sub_1004AA32C, v7, 0);
}

uint64_t sub_1004AA32C()
{
  v1 = v0[22];
  v2 = v0[23];
  v3 = v0[20];
  v4 = v0[21];
  (*(v4 + 104))(v2, enum case for SFAirDropReceive.ItemDestination.default(_:), v3);
  (*(v4 + 16))(v1, v2, v3);
  v5 = (*(v4 + 88))(v1, v3);
  v7 = v0[22];
  v6 = v0[23];
  v9 = v0[20];
  v8 = v0[21];
  if (v5 == enum case for SFAirDropReceive.ItemDestination.customURL(_:))
  {
    v10 = v0[19];
    v29 = v10;
    v12 = v0[15];
    v11 = v0[16];
    v30 = v0[23];
    v14 = v0[13];
    v13 = v0[14];
    v15 = v0[11];
    v26 = v0[7];
    v27 = v0[12];
    (*(v8 + 96))(v7, v9);
    (*(v11 + 32))(v10, v7, v12);
    (*(v11 + 16))(v13, v10, v12);
    (*(v11 + 56))(v13, 0, 1, v12);
    v0[6] = 0;
    sub_100333278(v13, v14);
    v16 = (*(v15 + 80) + 16) & ~*(v15 + 80);
    v17 = v27 + v16 + 7;
    v28 = v9;
    v18 = v17 & 0xFFFFFFFFFFFFFFF8;
    v19 = swift_allocObject();
    sub_1003332E8(v14, v19 + v16);
    *(v19 + v18) = v26;

    sub_10028088C(&qword_100975610, &qword_1007F89B0);
    SFProgressTask.init(_:initialProgress:operation:file:line:)();
    sub_100005508(v13, &unk_100974E00, &qword_1007F8940);
    (*(v11 + 8))(v29, v12);
    (*(v8 + 8))(v30, v28);
  }

  else
  {
    v0[2] = 0;
    v20 = v0[7];
    v21 = swift_allocObject();
    *(v21 + 16) = v20;
    *(v21 + 24) = 1;

    sub_10028088C(&qword_100975610, &qword_1007F89B0);
    SFProgressTask.init(_:initialProgress:operation:file:line:)();
    v22 = *(v8 + 8);
    v22(v6, v9);
    v22(v7, v9);
  }

  v23 = swift_task_alloc();
  v0[28] = v23;
  *v23 = v0;
  v23[1] = sub_1004AA71C;
  v24 = v0[24];

  return SFProgressTask.finalValue.getter(v0 + 3, v24);
}

uint64_t sub_1004AA71C()
{
  v2 = *v1;
  v3 = *(*v1 + 208);
  v4 = *(*v1 + 200);
  v5 = *(*v1 + 192);
  *(*v1 + 232) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 216);
  if (v0)
  {
    v7 = sub_1004AAF30;
  }

  else
  {
    v7 = sub_1004AA8A4;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_1004AA8A4()
{
  v1 = v0[3];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = v0[16];
    v25 = (v4 + 32);
    v23 = *(v1 + 16);
    v24 = v0[3];
    while (v3 < *(v1 + 16))
    {
      v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
      v6 = *(v4 + 72);
      (*(v4 + 16))(v0[18], v1 + v5 + v6 * v3, v0[15]);
      if (URL.isFileURL.getter())
      {
        (*(v4 + 8))(v0[18], v0[15]);
      }

      else
      {
        v7 = *v25;
        (*v25)(v0[17], v0[18], v0[15]);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_10028FAB4(0, _swiftEmptyArrayStorage[2] + 1, 1);
        }

        v9 = _swiftEmptyArrayStorage[2];
        v8 = _swiftEmptyArrayStorage[3];
        if (v9 >= v8 >> 1)
        {
          sub_10028FAB4((v8 > 1), v9 + 1, 1);
        }

        v10 = v0[17];
        v11 = v0[15];
        _swiftEmptyArrayStorage[2] = v9 + 1;
        v7(_swiftEmptyArrayStorage + v5 + v9 * v6, v10, v11);
        v2 = v23;
        v1 = v24;
      }

      if (v2 == ++v3)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
    goto LABEL_24;
  }

LABEL_12:
  v12 = _swiftEmptyArrayStorage[2];
  if (v12)
  {
    v13 = *(v1 + 16);

    if (v12 == v13)
    {
LABEL_18:
      v0[4] = 0;
      v18 = swift_allocObject();
      *(v18 + 16) = _swiftEmptyArrayStorage;
      *(v18 + 24) = 0;
      goto LABEL_20;
    }

    if (qword_1009737B0 == -1)
    {
LABEL_15:
      v14 = type metadata accessor for Logger();
      sub_10000C4AC(v14, qword_10097B528);
      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 0;
        _os_log_impl(&_mh_execute_header, v15, v16, "Asked to view mixed files and links, only viewing links", v17, 2u);
      }

      goto LABEL_18;
    }

LABEL_24:
    swift_once();
    goto LABEL_15;
  }

  v0[5] = 0;
  v19 = swift_allocObject();
  *(v19 + 16) = 0;
  *(v19 + 24) = 0;
  *(v19 + 32) = v1;
LABEL_20:
  SFProgressTask.init(_:initialProgress:operation:file:line:)();
  v20 = swift_task_alloc();
  v0[30] = v20;
  *v20 = v0;
  v20[1] = sub_1004AACC8;
  v21 = v0[8];

  return SFProgressTask.finalValue.getter(v0 + 32, v21);
}

uint64_t sub_1004AACC8()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 72);
  v5 = *(*v1 + 64);
  *(*v1 + 248) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 216);
  if (v0)
  {
    v7 = sub_1004AB00C;
  }

  else
  {
    v7 = sub_1004AAE50;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_1004AAE50()
{
  v1 = *(v0 + 256);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1004AAF30()
{

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_1004AB00C()
{

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_1004AB0E8(uint64_t a1, int *a2)
{
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 16) = v3;
  *v3 = v2;
  v3[1] = sub_100005C04;

  return v5();
}

void sub_1004AB1D0(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  __chkstk_darwin(v5);
  v7 = &v27 - v6;
  v8 = sub_10028088C(&unk_100976120, &qword_1007F9260);
  __chkstk_darwin(v8 - 8);
  v10 = &v27 - v9;
  swift_beginAccess();
  sub_10036DC54(a1, v10);
  swift_endAccess();
  v11 = (*(v3 + 48))(v10, 1, v2);
  sub_100005508(v10, &unk_100976120, &qword_1007F9260);
  if (v11 != 1)
  {
    v30 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (qword_1009738E8 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_10000C4AC(v12, qword_10097F8C8);
    v13 = *(v3 + 16);
    v13(v7, a1, v2);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v28 = v13;
      v17 = v16;
      v27 = swift_slowAlloc();
      aBlock[0] = v27;
      *v17 = 136315138;
      sub_100349CFC();
      v18 = dispatch thunk of CustomStringConvertible.description.getter();
      v29 = a1;
      v20 = v19;
      (*(v3 + 8))(v7, v2);
      v21 = sub_10000C4E4(v18, v20, aBlock);
      a1 = v29;

      *(v17 + 4) = v21;
      _os_log_impl(&_mh_execute_header, v14, v15, "SDAirDropAWDLSingleBandManager: requesting stop Single band mode for Nearby Sharing Interaction ID:%s", v17, 0xCu);
      sub_10000C60C(v27);

      v13 = v28;
    }

    else
    {

      (*(v3 + 8))(v7, v2);
    }

    v22 = [objc_opt_self() shared];
    v23 = v30;
    v13(v30, a1, v2);
    v24 = (*(v3 + 80) + 16) & ~*(v3 + 80);
    v25 = swift_allocObject();
    (*(v3 + 32))(v25 + v24, v23, v2);
    aBlock[4] = sub_1004AC264;
    aBlock[5] = v25;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1004ABE1C;
    aBlock[3] = &unk_1008E3758;
    v26 = _Block_copy(aBlock);

    [v22 endTransaction:18 completionHandler:v26];
    _Block_release(v26);
  }
}

uint64_t sub_1004AB618()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_10097F8C8);
  v1 = sub_10000C4AC(v0, qword_10097F8C8);
  if (qword_1009736D0 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C4AC(v0, qword_1009A08B8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1004AB6E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v11 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  __chkstk_darwin(v11 - 8);
  v13 = &v20 - v12;
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  (*(v9 + 16))(&v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v8);
  v15 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  (*(v9 + 32))(v16 + v15, &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
  v17 = (v16 + ((v10 + v15 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v17 = a3;
  v17[1] = a4;
  v18 = swift_allocObject();
  *(v18 + 16) = &unk_1008056E8;
  *(v18 + 24) = v16;

  static Task<>.noThrow(priority:operation:)();

  return sub_100005508(v13, &qword_100976160, &qword_1007F8770);
}

uint64_t sub_1004AB930(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = type metadata accessor for UUID();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  v4[9] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v6 = static AirDropActor.shared;

  return _swift_task_switch(sub_1004ABA38, v6, 0);
}

uint64_t sub_1004ABA38()
{
  v40 = v0;
  if (v0[2])
  {
    if (qword_1009738E8 != -1)
    {
      swift_once();
    }

    v1 = v0[9];
    v2 = v0[6];
    v3 = v0[7];
    v4 = v0[3];
    v5 = type metadata accessor for Logger();
    sub_10000C4AC(v5, qword_10097F8C8);
    (*(v3 + 16))(v1, v4, v2);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    v8 = os_log_type_enabled(v6, v7);
    v9 = v0[9];
    v10 = v0[6];
    v11 = v0[7];
    if (v8)
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v39 = v13;
      *v12 = 136315138;
      sub_100349CFC();
      v14 = dispatch thunk of CustomStringConvertible.description.getter();
      v16 = v15;
      (*(v11 + 8))(v9, v10);
      v17 = sub_10000C4E4(v14, v16, &v39);

      *(v12 + 4) = v17;
      _os_log_impl(&_mh_execute_header, v6, v7, "SDAirDropAWDLSingleBandManager: failed requesting enforce Single band mode for Nearby Sharing Interaction ID:%s", v12, 0xCu);
      sub_10000C60C(v13);
    }

    else
    {

      (*(v11 + 8))(v9, v10);
    }

    v35 = v0[4];
    sub_1004ACD0C();
    v36 = swift_allocError();
    v35(v36);
  }

  else
  {
    if (qword_1009738E8 != -1)
    {
      swift_once();
    }

    v19 = v0[7];
    v18 = v0[8];
    v20 = v0[6];
    v21 = v0[3];
    v22 = type metadata accessor for Logger();
    sub_10000C4AC(v22, qword_10097F8C8);
    (*(v19 + 16))(v18, v21, v20);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();
    v25 = os_log_type_enabled(v23, v24);
    v27 = v0[7];
    v26 = v0[8];
    v28 = v0[6];
    if (v25)
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v39 = v30;
      *v29 = 136315138;
      sub_100349CFC();
      v31 = dispatch thunk of CustomStringConvertible.description.getter();
      v33 = v32;
      (*(v27 + 8))(v26, v28);
      v34 = sub_10000C4E4(v31, v33, &v39);

      *(v29 + 4) = v34;
      _os_log_impl(&_mh_execute_header, v23, v24, "SDAirDropAWDLSingleBandManager: requested enforce Single band mode for Nearby Sharing Interaction ID:%s", v29, 0xCu);
      sub_10000C60C(v30);
    }

    else
    {

      (*(v27 + 8))(v26, v28);
    }

    (v0[4])(0);
  }

  v37 = v0[1];

  return v37();
}

uint64_t sub_1004ABE1C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

void sub_1004ABE70(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v29 - v9;
  if (a1)
  {
    if (qword_1009738E8 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_10000C4AC(v11, qword_10097F8C8);
    (*(v5 + 16))(v10, a2, v4);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v30 = v15;
      *v14 = 136315138;
      sub_100349CFC();
      v16 = dispatch thunk of CustomStringConvertible.description.getter();
      v18 = v17;
      (*(v5 + 8))(v10, v4);
      v19 = sub_10000C4E4(v16, v18, &v30);

      *(v14 + 4) = v19;
      _os_log_impl(&_mh_execute_header, v12, v13, "SDAirDropAWDLSingleBandManager: failed requesting stop Single band mode for Nearby Sharing Interaction ID:%s", v14, 0xCu);
      sub_10000C60C(v15);
    }

    else
    {

      (*(v5 + 8))(v10, v4);
    }
  }

  else
  {
    if (qword_1009738E8 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_10000C4AC(v20, qword_10097F8C8);
    (*(v5 + 16))(v8, a2, v4);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v30 = v24;
      *v23 = 136315138;
      sub_100349CFC();
      v25 = dispatch thunk of CustomStringConvertible.description.getter();
      v27 = v26;
      (*(v5 + 8))(v8, v4);
      v28 = sub_10000C4E4(v25, v27, &v30);

      *(v23 + 4) = v28;
      _os_log_impl(&_mh_execute_header, v21, v22, "SDAirDropAWDLSingleBandManager: requested stop Single band mode for Nearby Sharing Interaction ID:%s", v23, 0xCu);
      sub_10000C60C(v24);
    }

    else
    {

      (*(v5 + 8))(v8, v4);
    }
  }
}

void sub_1004AC264(uint64_t a1)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  sub_1004ABE70(a1, v4);
}

void sub_1004AC2D4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void (*a5)(void), uint64_t a6)
{
  v12 = type metadata accessor for UUID();
  v85 = *(v12 - 8);
  v86 = v12;
  v13 = *(v85 + 64);
  v14 = __chkstk_darwin(v12);
  v81 = &v80 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v14);
  v17 = &v80 - v16;
  v18 = __chkstk_darwin(v15);
  v82 = &v80 - v19;
  v20 = __chkstk_darwin(v18);
  v22 = &v80 - v21;
  __chkstk_darwin(v20);
  v24 = &v80 - v23;
  v25 = swift_allocObject();
  *(v25 + 2) = a4;
  *(v25 + 3) = a5;
  v83 = a5;
  v84 = v25;
  v26 = a6;
  *(v25 + 4) = a6;
  if (*(a1 + *(type metadata accessor for SDNearFieldTap(0) + 64)) != 1)
  {
    v43 = qword_1009738E8;
    v44 = a4;

    if (v43 != -1)
    {
      swift_once();
    }

    v45 = type metadata accessor for Logger();
    sub_10000C4AC(v45, qword_10097F8C8);
    v46 = v85;
    v47 = v86;
    (*(v85 + 16))(v24, a2, v86);
    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = v46;
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      aBlock[0] = v52;
      *v51 = 136315138;
      sub_100349CFC();
      v53 = dispatch thunk of CustomStringConvertible.description.getter();
      v82 = v26;
      v55 = v54;
      (*(v50 + 8))(v24, v47);
      v56 = sub_10000C4E4(v53, v55, aBlock);

      *(v51 + 4) = v56;
      _os_log_impl(&_mh_execute_header, v48, v49, "SDAirDropAWDLSingleBandManager: Single band not required for Nearby Sharing Interaction ID:%s", v51, 0xCu);
      sub_10000C60C(v52);
    }

    else
    {

      (*(v46 + 8))(v24, v47);
    }

    goto LABEL_17;
  }

  swift_beginAccess();
  v27 = *(a3 + 16);
  v28 = a4;

  v29 = sub_100569018(a2, v27);

  v30 = a2;
  if (v29)
  {
    v82 = v26;
    if (qword_1009738E8 != -1)
    {
      swift_once();
    }

    v31 = type metadata accessor for Logger();
    sub_10000C4AC(v31, qword_10097F8C8);
    v32 = v85;
    v33 = v86;
    (*(v85 + 16))(v22, a2, v86);
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = v32;
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      aBlock[0] = v38;
      *v37 = 136315138;
      sub_100349CFC();
      v39 = dispatch thunk of CustomStringConvertible.description.getter();
      v41 = v40;
      (*(v36 + 8))(v22, v33);
      v42 = sub_10000C4E4(v39, v41, aBlock);

      *(v37 + 4) = v42;
      _os_log_impl(&_mh_execute_header, v34, v35, "SDAirDropAWDLSingleBandManager: Nearby Sharing Interaction ID:%s already handled. ignoring it", v37, 0xCu);
      sub_10000C60C(v38);
    }

    else
    {

      (*(v32 + 8))(v22, v33);
    }

LABEL_17:
    v83();

    return;
  }

  v57 = v85;
  v58 = v86;
  v59 = *(v85 + 16);
  (v59)(v17, v30, v86);
  swift_beginAccess();
  v60 = v82;
  sub_10046E0A4(v82, v17);
  swift_endAccess();
  v61 = *(v57 + 8);
  v61(v60, v58);
  if (qword_1009738E8 != -1)
  {
    swift_once();
  }

  v62 = type metadata accessor for Logger();
  sub_10000C4AC(v62, qword_10097F8C8);
  v63 = v81;
  v83 = v59;
  (v59)(v81, v30, v58);
  v64 = Logger.logObject.getter();
  v65 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v64, v65))
  {
    v66 = v63;
    v67 = swift_slowAlloc();
    v80 = swift_slowAlloc();
    aBlock[0] = v80;
    *v67 = 136315138;
    sub_100349CFC();
    v68 = dispatch thunk of CustomStringConvertible.description.getter();
    v70 = v69;
    v61(v66, v86);
    v71 = sub_10000C4E4(v68, v70, aBlock);
    v58 = v86;

    *(v67 + 4) = v71;
    _os_log_impl(&_mh_execute_header, v64, v65, "SDAirDropAWDLSingleBandManager: requesting enforce Single band mode for Nearby Sharing Interaction ID:%s", v67, 0xCu);
    sub_10000C60C(v80);
  }

  else
  {

    v61(v63, v58);
  }

  v72 = [objc_opt_self() shared];
  v73 = v82;
  (v83)(v82, v30, v58);
  v74 = v85;
  v75 = (*(v85 + 80) + 16) & ~*(v85 + 80);
  v76 = swift_allocObject();
  (*(v74 + 32))(v76 + v75, v73, v58);
  v77 = (v76 + ((v13 + v75 + 7) & 0xFFFFFFFFFFFFFFF8));
  v78 = v84;
  *v77 = sub_1004ACB48;
  v77[1] = v78;
  aBlock[4] = sub_1004ACB54;
  aBlock[5] = v76;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1004ABE1C;
  aBlock[3] = &unk_1008E37D0;
  v79 = _Block_copy(aBlock);

  [v72 beginTransaction:18 completionHandler:v79];
  _Block_release(v79);
}

uint64_t sub_1004ACB54(uint64_t a1)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = *v5;
  v7 = v5[1];

  return sub_1004AB6E0(a1, v1 + v4, v6, v7);
}

uint64_t sub_1004ACBF4()
{
  v2 = *(type metadata accessor for UUID() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = (v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = *v5;
  v7 = v5[1];
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_100005C04;

  return sub_1004AB930(v4, v0 + v3, v6, v7);
}

unint64_t sub_1004ACD0C()
{
  result = qword_10097F980;
  if (!qword_10097F980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10097F980);
  }

  return result;
}

unint64_t sub_1004ACD74()
{
  result = qword_10097F988;
  if (!qword_10097F988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10097F988);
  }

  return result;
}

uint64_t sub_1004ACDD0()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_10097F990);
  v1 = sub_10000C4AC(v0, qword_10097F990);
  if (qword_100973758 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C4AC(v0, qword_1009A0A50);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1004ACE98(void *a1, uint64_t a2)
{
  v4 = sub_10028088C(&qword_10097FB00, &qword_1008058C8);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v9 - v6;
  sub_10002CDC0(a1, a1[3]);
  sub_1004AE9EC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v9[1] = a2;
  sub_10028088C(&qword_10097FAE8, &qword_1008058C0);
  sub_1004AEA40(&qword_10097FB08, &qword_10097FB10, &unk_1008059A4, &protocol conformance descriptor for <A> [A]);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1004AD02C(void *a1)
{
  v3 = sub_10028088C(&qword_10097FBE0, &qword_100805A50);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8 - v5;
  sub_10002CDC0(a1, a1[3]);
  sub_1004AEC98();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v12 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v1)
  {
    v11 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    _s14VolumeMetadataVMa(0);
    v10 = 2;
    type metadata accessor for Date();
    sub_1004AECEC(&qword_10097FBE8, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v9 = 3;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1004AD280@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  v3 = type metadata accessor for Date();
  v41 = *(v3 - 8);
  v42 = v3;
  v4 = __chkstk_darwin(v3);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v32 - v7;
  v43 = sub_10028088C(&qword_10097FBC8, &qword_100805A48);
  v40 = *(v43 - 8);
  __chkstk_darwin(v43);
  v10 = &v32 - v9;
  v11 = _s14VolumeMetadataVMa(0);
  __chkstk_darwin(v11);
  v13 = (&v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10002CDC0(a1, a1[3]);
  sub_1004AEC98();
  v44 = v10;
  v14 = v45;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v14)
  {
    return sub_10000C60C(a1);
  }

  v37 = v6;
  v38 = v8;
  v16 = v40;
  v15 = v41;
  v45 = v11;
  v17 = v42;
  v49 = 0;
  v18 = KeyedDecodingContainer.decode(_:forKey:)();
  v20 = v19;
  *v13 = v18;
  v13[1] = v19;
  v48 = 1;
  v21 = KeyedDecodingContainer.decode(_:forKey:)();
  v36 = v20;
  v13[2] = v21;
  v13[3] = v22;
  v47 = 2;
  v23 = sub_1004AECEC(&qword_10097FBD8, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v24 = v38;
  v34 = v23;
  v35 = 0;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v25 = *(v45 + 24);
  v26 = *(v15 + 32);
  v33 = v13;
  v27 = v24;
  v28 = v26;
  v26(v13 + v25, v27, v17);
  v46 = 3;
  v29 = v37;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v16 + 8))(v44, v43);
  v30 = v33;
  v28(v33 + *(v45 + 28), v29, v17);
  sub_1004AE70C(v30, v39);
  sub_10000C60C(a1);
  return sub_1004AE770(v30);
}

uint64_t sub_1004AD6F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x73656D756C6F76 && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1004AD778(uint64_t a1)
{
  v2 = sub_1004AE9EC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1004AD7B4(uint64_t a1)
{
  v2 = sub_1004AE9EC();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_1004AD7F0@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1004AE830(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1004AD838()
{
  v1 = 0x4449656D756C6F76;
  v2 = 0x6E6F697461657263;
  if (*v0 != 2)
  {
    v2 = 0x646573557473616CLL;
  }

  if (*v0)
  {
    v1 = 0x4449656369766564;
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

uint64_t sub_1004AD8C4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1004AEE4C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1004AD8EC(uint64_t a1)
{
  v2 = sub_1004AEC98();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1004AD928(uint64_t a1)
{
  v2 = sub_1004AEC98();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_1004AD998(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_defaultActor_initialize();
  v3[15] = a2;
  v3[16] = &_swiftEmptyDictionarySingleton;
  v3[14] = a1;
  v6 = objc_opt_self();

  v7 = [v6 standardUserDefaults];
  v8 = String._bridgeToObjectiveC()();
  v9 = [v7 dataForKey:v8];

  if (v9)
  {
    v10 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;

    type metadata accessor for JSONDecoder();
    swift_allocObject();
    JSONDecoder.init()();
    sub_10028088C(&qword_10097FAC0, &unk_1008058A8);
    sub_1004AE5E0();
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();

    v3[16] = v35;

    if (qword_1009738F0 != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    sub_10000C4AC(v25, qword_10097F990);

    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v35 = v34;
      *v28 = 136315138;

      v29 = Dictionary.description.getter();
      v31 = v30;

      v32 = sub_10000C4E4(v29, v31, &v35);

      *(v28 + 4) = v32;
      _os_log_impl(&_mh_execute_header, v26, v27, "localCache: %s", v28, 0xCu);
      sub_10000C60C(v34);
    }

    sub_100026AC0(v10, v12);
  }

  else
  {
    v13 = sub_100010F88(10, 0xD00000000000003CLL, 0x80000001007925D0);
    v15 = v14;
    sub_1000115C8();
    swift_allocError();
    *v16 = v13;
    *(v16 + 8) = v15;
    swift_willThrow();
    v17 = sub_1004ADEAC();
    if (!v17)
    {
      if (qword_1009738F0 != -1)
      {
        swift_once();
      }

      v18 = type metadata accessor for Logger();
      sub_10000C4AC(v18, qword_10097F990);
      swift_errorRetain();
      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        *v21 = 138412290;
        swift_errorRetain();
        v23 = _swift_stdlib_bridgeErrorToNSError();
        *(v21 + 4) = v23;
        *v22 = v23;
        _os_log_impl(&_mh_execute_header, v19, v20, "Could not load VolumeUnlockLocalCache %@", v21, 0xCu);
        sub_10028924C(v22);
      }

      v17 = sub_10027FF90(_swiftEmptyArrayStorage);
    }

    v24 = v17;

    v3[16] = v24;
  }

  return v3;
}

uint64_t sub_1004ADE38()
{

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

void *sub_1004ADEAC()
{
  v0 = _s14VolumeMetadataVMa(0);
  v78 = *(v0 - 8);
  v79 = v0;
  v1 = __chkstk_darwin(v0);
  v3 = &v66 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v1);
  v83 = (&v66 - v4);
  v5 = objc_opt_self();
  v6 = [v5 standardUserDefaults];
  v7 = "Cache at SDVolumeByPersonaID";
  v8 = String._bridgeToObjectiveC()();
  v9 = [v6 dictionaryForKey:v8];

  if (!v9)
  {
    return 0;
  }

  v10 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  sub_10034364C(v10);
  v12 = v11;

  if (!v12)
  {
    return 0;
  }

  if (qword_1009738F0 != -1)
  {
    goto LABEL_41;
  }

  while (1)
  {
    v13 = type metadata accessor for Logger();
    v68 = sub_10000C4AC(v13, qword_10097F990);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "Found legacy local cache, converting and deleting", v16, 2u);
    }

    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();

    v19 = os_log_type_enabled(v17, v18);
    v66 = v7;
    v67 = v5;
    if (v19)
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v84[0] = v21;
      *v20 = 136315138;
      sub_10028088C(&qword_1009799E8, &qword_1007FCB30);
      v22 = Dictionary.description.getter();
      v24 = sub_10000C4E4(v22, v23, v84);

      *(v20 + 4) = v24;
      _os_log_impl(&_mh_execute_header, v17, v18, "old cache: %s", v20, 0xCu);
      sub_10000C60C(v21);
    }

    v25 = 0;
    v26 = v12 + 64;
    v27 = 1 << *(v12 + 32);
    v28 = v27 < 64 ? ~(-1 << v27) : -1;
    v29 = v28 & *(v12 + 64);
    v30 = (v27 + 63) >> 6;
    v31 = &_swiftEmptyDictionarySingleton;
    v77 = v3;
    v69 = v30;
    v70 = v12 + 64;
    v71 = v12;
LABEL_13:
    if (!v29)
    {
      break;
    }

    v76 = v31;
    v34 = v25;
LABEL_19:
    v74 = v34;
    v75 = (v29 - 1) & v29;
    v35 = __clz(__rbit64(v29)) | (v34 << 6);
    v36 = (*(v12 + 48) + 16 * v35);
    v37 = *(*(v12 + 56) + 8 * v35);
    v38 = v36[1];
    v72 = *v36;
    v73 = v38;
    v39 = v37 + 64;
    v40 = 1 << *(v37 + 32);
    if (v40 < 64)
    {
      v41 = ~(-1 << v40);
    }

    else
    {
      v41 = -1;
    }

    v42 = v41 & *(v37 + 64);
    v7 = ((v40 + 63) >> 6);

    v81 = v37;

    v12 = 0;
    v5 = _swiftEmptyArrayStorage;
    v80 = v37 + 64;
    if (!v42)
    {
      goto LABEL_24;
    }

    do
    {
      v82 = v5;
LABEL_28:
      v44 = (v12 << 10) | (16 * __clz(__rbit64(v42)));
      v45 = (*(v81 + 48) + v44);
      v47 = *v45;
      v46 = v45[1];
      v48 = (*(v81 + 56) + v44);
      v49 = *v48;
      v50 = v48[1];
      v3 = v79;

      v51 = v83;
      Date.init()();
      Date.init()();
      *v51 = v49;
      v51[1] = v50;
      v51[2] = v47;
      v51[3] = v46;
      v52 = v77;
      sub_1004AE70C(v51, v77);
      v5 = v82;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_10028E454(0, v5[2] + 1, 1, v5);
      }

      v54 = v5[2];
      v53 = v5[3];
      v39 = v80;
      if (v54 >= v53 >> 1)
      {
        v5 = sub_10028E454((v53 > 1), v54 + 1, 1, v5);
      }

      v42 &= v42 - 1;
      sub_1004AE770(v83);
      v5[2] = v54 + 1;
      sub_1004AE7CC(v52, v5 + ((*(v78 + 80) + 32) & ~*(v78 + 80)) + *(v78 + 72) * v54);
    }

    while (v42);
LABEL_24:
    while (1)
    {
      v43 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v43 >= v7)
      {

        v32 = v76;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v84[0] = v32;
        sub_100578CF4(v5, v72, v73, isUniquelyReferenced_nonNull_native);

        v31 = v84[0];
        v25 = v74;
        v29 = v75;
        v26 = v70;
        v12 = v71;
        v30 = v69;
        goto LABEL_13;
      }

      v42 = *(v39 + 8 * v43);
      ++v12;
      if (v42)
      {
        v82 = v5;
        v12 = v43;
        goto LABEL_28;
      }
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    swift_once();
  }

  while (1)
  {
    v34 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      goto LABEL_40;
    }

    if (v34 >= v30)
    {
      break;
    }

    v29 = *(v26 + 8 * v34);
    ++v25;
    if (v29)
    {
      v76 = v31;
      goto LABEL_19;
    }
  }

  v55 = Logger.logObject.getter();
  v56 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v55, v56))
  {
    v57 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    v84[0] = v58;
    *v57 = 136315138;

    v59 = Dictionary.description.getter();
    v61 = v60;

    v62 = sub_10000C4E4(v59, v61, v84);

    *(v57 + 4) = v62;
    _os_log_impl(&_mh_execute_header, v55, v56, "new cache: %s", v57, 0xCu);
    sub_10000C60C(v58);
  }

  v63 = [v67 standardUserDefaults];
  v64 = String._bridgeToObjectiveC()();
  [v63 removeObjectForKey:v64];

  return v31;
}

unint64_t sub_1004AE5E0()
{
  result = qword_10097FAC8;
  if (!qword_10097FAC8)
  {
    sub_100280938(&qword_10097FAC0, &unk_1008058A8);
    sub_1004AE66C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10097FAC8);
  }

  return result;
}

unint64_t sub_1004AE66C()
{
  result = qword_10097FAD0;
  if (!qword_10097FAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10097FAD0);
  }

  return result;
}

uint64_t _s14VolumeMetadataVMa(uint64_t a1)
{
  result = qword_10097FB70;
  if (!qword_10097FB70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1004AE70C(uint64_t a1, uint64_t a2)
{
  v4 = _s14VolumeMetadataVMa(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1004AE770(uint64_t a1)
{
  v2 = _s14VolumeMetadataVMa(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1004AE7CC(uint64_t a1, uint64_t a2)
{
  v4 = _s14VolumeMetadataVMa(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void *sub_1004AE830(void *a1)
{
  v3 = sub_10028088C(&qword_10097FAD8, &qword_1008058B8);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v9 - v5;
  v7 = sub_10002CDC0(a1, a1[3]);
  sub_1004AE9EC();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_10000C60C(a1);
  }

  else
  {
    sub_10028088C(&qword_10097FAE8, &qword_1008058C0);
    sub_1004AEA40(&qword_10097FAF0, &qword_10097FAF8, &unk_1008059CC, &protocol conformance descriptor for <A> [A]);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v4 + 8))(v6, v3);
    v7 = v9[1];
    sub_10000C60C(a1);
  }

  return v7;
}

unint64_t sub_1004AE9EC()
{
  result = qword_10097FAE0;
  if (!qword_10097FAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10097FAE0);
  }

  return result;
}

uint64_t sub_1004AEA40(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_100280938(&qword_10097FAE8, &qword_1008058C0);
    sub_1004AECEC(a2, _s14VolumeMetadataVMa, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1004AEB14(uint64_t a1)
{
  result = type metadata accessor for Date();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1004AEB94()
{
  result = qword_10097FBB0;
  if (!qword_10097FBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10097FBB0);
  }

  return result;
}

unint64_t sub_1004AEBEC()
{
  result = qword_10097FBB8;
  if (!qword_10097FBB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10097FBB8);
  }

  return result;
}

unint64_t sub_1004AEC44()
{
  result = qword_10097FBC0;
  if (!qword_10097FBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10097FBC0);
  }

  return result;
}

unint64_t sub_1004AEC98()
{
  result = qword_10097FBD0;
  if (!qword_10097FBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10097FBD0);
  }

  return result;
}

uint64_t sub_1004AECEC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1004AED48()
{
  result = qword_10097FBF0;
  if (!qword_10097FBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10097FBF0);
  }

  return result;
}

unint64_t sub_1004AEDA0()
{
  result = qword_10097FBF8;
  if (!qword_10097FBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10097FBF8);
  }

  return result;
}

unint64_t sub_1004AEDF8()
{
  result = qword_10097FC00;
  if (!qword_10097FC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10097FC00);
  }

  return result;
}

uint64_t sub_1004AEE4C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4449656D756C6F76 && a2 == 0xE800000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4449656369766564 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E6F697461657263 && a2 == 0xEC00000065746144 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x646573557473616CLL && a2 == 0xEC00000065746144)
  {

    return 3;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1004AEFBC()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_10097FC08);
  v1 = sub_10000C4AC(v0, qword_10097FC08);
  if (qword_100973758 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C4AC(v0, qword_1009A0A50);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_1004AF084()
{
  v1 = *(_s14MacUnlockPhoneV17InitialKeyContextVMa(0) + 40);
  v2 = *(v0 + v1);
  if (v2)
  {
    v3 = *(v0 + v1);
LABEL_5:
    v5 = v2;
    return v3;
  }

  result = [objc_allocWithZone(SDAuthenticationRequest) init];
  if (result)
  {
    *(v0 + v1) = result;
    v3 = result;
    v2 = 0;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t sub_1004AF0F4()
{
  sub_10028088C(&qword_100975660, &qword_1007FA820);
  result = swift_allocObject();
  *(result + 16) = xmmword_100805B60;
  if (qword_100973900 != -1)
  {
    v1 = result;
    swift_once();
    result = v1;
  }

  *(result + 56) = &type metadata for SDAuthentication.Operation.CheckIsBluetoothEnabled;
  *(result + 64) = &off_10097BDB8;
  *(result + 96) = &type metadata for SDAuthentication.Operation.CheckIsWiFiEnabled;
  *(result + 104) = &off_10097BDA0;
  *(result + 136) = &type metadata for SDAuthentication.Operation.CheckRemoteDeviceOSVersionIsSupported;
  *(result + 144) = &off_10097BE00;
  *(result + 176) = &type metadata for SDAuthentication.Operation.RecordRemoteDevice;
  *(result + 184) = &off_10097BD70;
  *(result + 216) = &type metadata for SDAuthentication.Operation.CheckEnabledWithPeer;
  *(result + 224) = &off_10097BCE0;
  *(result + 256) = &type metadata for SDAuthentication.Operation.CheckLocalSecurityPolicy;
  *(result + 264) = &off_10097BD58;
  *(result + 296) = &type metadata for SDAuthentication.Operation.IncludeLastRegistrationDateInMessage;
  *(result + 304) = &off_10097BCC8;
  *(result + 336) = &type metadata for SDAuthentication.Operation.IncludeSessionStartDateInMessage;
  *(result + 344) = &off_10097BCB0;
  *(result + 376) = &type metadata for SDAuthentication.Operation.UseAuthTokenForFirstAKSTokenAsKeyInMessage;
  *(result + 384) = &off_10097BC98;
  *(result + 416) = &type metadata for SDAuthentication.Operation.SendRequestMessage;
  *(result + 424) = &off_10097BCF8;
  return result;
}

void sub_1004AF2D0(uint64_t a1)
{
  sub_1002A6B2C(319);
  if (v1 <= 0x3F)
  {
    sub_1002A6B90(319, &qword_100975788, &protocol descriptor for SDAuthenticationAKSSessionProtocol);
    if (v2 <= 0x3F)
    {
      type metadata accessor for SDAuthenticationSessionMetrics(319);
      if (v3 <= 0x3F)
      {
        sub_1002A6BEC(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1004AF3DC(uint64_t a1)
{
  sub_1002A6B2C(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for SDAuthenticationSessionMetrics(319);
    if (v2 <= 0x3F)
    {
      sub_1002A6B90(319, &qword_100975788, &protocol descriptor for SDAuthenticationAKSSessionProtocol);
      if (v3 <= 0x3F)
      {
        sub_1002A6BEC(319);
        if (v4 <= 0x3F)
        {
          sub_1002F9C34(319, &unk_100978AB0, &type metadata for Data, &type metadata accessor for Optional);
          if (v5 <= 0x3F)
          {
            sub_1002A6C94(319, &unk_1009759E8, &qword_1009758B8, off_1008C8D48);
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

id sub_1004AF57C()
{
  v1 = *(_s14MacUnlockPhoneV20HandleRequestContextVMa(0) + 44);
  v2 = *(v0 + v1);
  if (v2)
  {
    v3 = *(v0 + v1);
LABEL_5:
    v5 = v2;
    return v3;
  }

  result = [objc_allocWithZone(SDAuthenticationResponse) init];
  if (result)
  {
    *(v0 + v1) = result;
    v3 = result;
    v2 = 0;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

id sub_1004AF5EC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v48 = a2;
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v44 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v45 = &v44 - v9;
  sub_10028088C(&qword_100975660, &qword_1007FA820);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_100805B60;
  if (qword_100973900 != -1)
  {
    swift_once();
  }

  *(v10 + 56) = &type metadata for SDAuthentication.Operation.RecordSessionStart;
  *(v10 + 64) = &off_10097BDE8;
  *(v10 + 96) = &type metadata for SDAuthentication.Operation.RecordRemoteUnlockDate;
  *(v10 + 104) = &off_10097BF40;
  *(v10 + 136) = &type metadata for SDAuthentication.Operation.RecordDiscoveryEnd;
  *(v10 + 144) = &off_10097BB90;
  *(v10 + 176) = &type metadata for SDAuthentication.Operation.RecordKeyExchangeStart;
  *(v10 + 184) = &off_10097BDD0;
  *(v10 + 216) = &type metadata for SDAuthentication.Operation.RecordKeyExchangeEnd;
  *(v10 + 224) = &off_10097C1F8;
  *(v10 + 256) = &type metadata for SDAuthentication.Operation.CheckEnabledWithPeer;
  *(v10 + 264) = &off_10097BCE0;
  *(v10 + 296) = &type metadata for SDAuthentication.Operation.CheckLocalSecurityPolicy;
  *(v10 + 304) = &off_10097BD58;
  *(v10 + 336) = &type metadata for SDAuthentication.Operation.CheckLockRegisteredAndArmed;
  *(v10 + 344) = &off_10097BEC8;
  *(v10 + 376) = &type metadata for SDAuthentication.Operation.UseReceivedTokenForIncludingFirstAKSTokenInMessage;
  *(v10 + 384) = &off_10097BEB0;
  *(v10 + 416) = &type metadata for SDAuthentication.Operation.SendResponseMessage;
  *(v10 + 424) = &off_10097C1B0;
  *a3 = v10;
  v11 = _s14MacUnlockPhoneV20HandleRequestContextVMa(0);
  v12 = v11[8];
  v47 = v6;
  v13 = *(v6 + 56);
  v13(&a3[v12], 1, 1, v5);
  v14 = v5;
  v15 = v11[9];
  v46 = v14;
  (v13)(&a3[v15], 1, 1);
  *&a3[v11[11]] = 0;
  a3[v11[12]] = 1;
  v16 = a1;
  if ([a1 hasAksToken])
  {
    v17 = v48;
    sub_1002A9938(v48 + 8, (a3 + 8));
    v18 = _s14MacUnlockPhoneV18InitialLockContextVMa(0);
    sub_1004B13F4(v17 + v18[6], &a3[v11[6]], type metadata accessor for SDAuthenticationSessionMetrics);
    sub_1000168F4(v17 + v18[7], &a3[v12]);
    sub_1000168F4(v17 + v18[8], &a3[v15]);
    if ([a1 hasUnlockDate] && (objc_msgSend(a1, "unlockDate"), v19 != 0.0))
    {
      [a1 unlockDate];
      v20 = v45;
      Date.init(timeIntervalSince1970:)();
    }

    else
    {
      v20 = v45;
      Date.init()();
    }

    v21 = v46;
    (*(v47 + 32))(&a3[v11[10]], v20, v46);
    result = [a1 aksToken];
    if (result)
    {
      v23 = result;
      v24 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v26 = v25;

      v27 = &a3[v11[7]];
      *v27 = v24;
      v27[1] = v26;
      if (qword_1009738F8 != -1)
      {
        swift_once();
      }

      v28 = type metadata accessor for Logger();
      sub_10000C4AC(v28, qword_10097FC08);
      v29 = v16;
      v30 = Logger.logObject.getter();
      v31 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        v49 = v33;
        *v32 = 136315138;
        [v29 unlockDate];
        v34 = v44;
        Date.init(timeIntervalSince1970:)();
        sub_100418E5C();
        v35 = dispatch thunk of CustomStringConvertible.description.getter();
        v37 = v36;
        (*(v47 + 8))(v34, v21);
        v38 = sub_10000C4E4(v35, v37, &v49);

        *(v32 + 4) = v38;
        _os_log_impl(&_mh_execute_header, v30, v31, "got remote unlock date: %s", v32, 0xCu);
        sub_10000C60C(v33);

        v39 = v48;
      }

      else
      {

        v39 = v17;
      }

      return sub_1004B145C(v39, _s14MacUnlockPhoneV18InitialLockContextVMa);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v40 = sub_100010F88(1, 0xD000000000000011, 0x80000001007901B0);
    v42 = v41;
    sub_1000115C8();
    swift_allocError();
    *v43 = v40;
    *(v43 + 8) = v42;
    swift_willThrow();

    sub_1004B145C(v48, _s14MacUnlockPhoneV18InitialLockContextVMa);

    sub_100005508(&a3[v12], &qword_10097A7F0, &unk_1007FB600);
    return sub_100005508(&a3[v15], &qword_10097A7F0, &unk_1007FB600);
  }

  return result;
}

uint64_t sub_1004AFC14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 40);
  v5 = type metadata accessor for Date();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

id sub_1004AFCC8()
{
  v1 = *(_s14MacUnlockPhoneV21HandleResponseContextVMa(0) + 36);
  v2 = *(v0 + v1);
  if (v2)
  {
    v3 = *(v0 + v1);
LABEL_5:
    v5 = v2;
    return v3;
  }

  result = [objc_allocWithZone(SDAuthenticationToken) init];
  if (result)
  {
    *(v0 + v1) = result;
    v3 = result;
    v2 = 0;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

id sub_1004AFD38@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_10028088C(&qword_100975660, &qword_1007FA820);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1007F8A70;
  if (qword_100973900 != -1)
  {
    swift_once();
  }

  *(v6 + 56) = &type metadata for SDAuthentication.Operation.IncludeNextAKSTokenInMessage;
  *(v6 + 64) = &off_10097BEF8;
  *(v6 + 96) = &type metadata for SDAuthentication.Operation.SendTokenMessage;
  *(v6 + 104) = &off_10097C180;
  *a3 = v6;
  v7 = _s14MacUnlockPhoneV21HandleResponseContextVMa(0);
  *(a3 + v7[7]) = 34;
  *(a3 + v7[9]) = 0;
  *(a3 + v7[10]) = 7;
  if ([a1 hasAksToken])
  {
    v8 = _s14MacUnlockPhoneV17InitialKeyContextVMa(0);
    sub_1002A9938(a2 + *(v8 + 24), (a3 + 1));
    sub_1004B13F4(a2 + *(v8 + 20), a3 + v7[6], type metadata accessor for SDAuthenticationSessionMetrics);
    result = [a1 aksToken];
    if (result)
    {
      v10 = result;
      v11 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = v12;

      result = sub_1004B145C(a2, _s14MacUnlockPhoneV17InitialKeyContextVMa);
      v14 = (a3 + v7[8]);
      *v14 = v11;
      v14[1] = v13;
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v15 = sub_100010F88(1, 0xD000000000000019, 0x8000000100789BB0);
    v17 = v16;
    sub_1000115C8();
    swift_allocError();
    *v18 = v15;
    *(v18 + 8) = v17;
    swift_willThrow();

    sub_1004B145C(a2, _s14MacUnlockPhoneV17InitialKeyContextVMa);
  }

  return result;
}

id sub_1004AFFB0()
{
  v1 = *(_s14MacUnlockPhoneV18HandleTokenContextVMa(0) + 32);
  v2 = *(v0 + v1);
  if (v2)
  {
    v3 = *(v0 + v1);
LABEL_5:
    v5 = v2;
    return v3;
  }

  result = [objc_allocWithZone(SDAuthenticationConfirmation) init];
  if (result)
  {
    *(v0 + v1) = result;
    v3 = result;
    v2 = 0;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

id sub_1004B0020@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_10028088C(&qword_100975660, &qword_1007FA820);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1007F8830;
  if (qword_100973900 != -1)
  {
    swift_once();
  }

  *(v6 + 56) = &type metadata for SDAuthentication.Operation.ConsumeAKSToken;
  *(v6 + 64) = &off_10097BEE0;
  *(v6 + 96) = &type metadata for SDAuthentication.Operation.SendConfirmation;
  *(v6 + 104) = &off_10097C270;
  *(v6 + 136) = &type metadata for SDAuthentication.Operation.RecordSessionFinished;
  *(v6 + 144) = &off_10097BB00;
  *a3 = v6;
  v7 = _s14MacUnlockPhoneV18HandleTokenContextVMa(0);
  *(a3 + v7[8]) = 0;
  *(a3 + v7[9]) = 2;
  if ([a1 hasAksToken])
  {
    sub_1002A9938(a2 + 8, (a3 + 1));
    v8 = _s14MacUnlockPhoneV20HandleRequestContextVMa(0);
    sub_1004B13F4(a2 + *(v8 + 24), a3 + v7[6], type metadata accessor for SDAuthenticationSessionMetrics);
    result = [a1 aksToken];
    if (result)
    {
      v10 = result;
      v11 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = v12;

      result = sub_1004B145C(a2, _s14MacUnlockPhoneV20HandleRequestContextVMa);
      v14 = (a3 + v7[7]);
      *v14 = v11;
      v14[1] = v13;
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v15 = sub_100010F88(1, 0xD000000000000019, 0x8000000100789BB0);
    v17 = v16;
    sub_1000115C8();
    swift_allocError();
    *v18 = v15;
    *(v18 + 8) = v17;
    swift_willThrow();

    sub_1004B145C(a2, _s14MacUnlockPhoneV20HandleRequestContextVMa);
  }

  return result;
}

uint64_t sub_1004B028C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v3 = a3(a1, a2);
  v4 = [v3 data];

  if (v4)
  {
    v5 = static Data._unconditionallyBridgeFromObjectiveC(_:)();

    return v5;
  }

  else
  {
    v7 = sub_100010F88(10, 0xD00000000000001ALL, 0x8000000100789BF0);
    v9 = v8;
    sub_1000115C8();
    swift_allocError();
    *v10 = v7;
    *(v10 + 8) = v9;
    return swift_willThrow();
  }
}

uint64_t sub_1004B0360@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_10028088C(&qword_100975660, &qword_1007FA820);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1007F8830;
  if (qword_100973900 != -1)
  {
    swift_once();
  }

  *(v6 + 56) = &type metadata for SDAuthentication.Operation.HandleSucceededResult;
  *(v6 + 64) = &off_10097C258;
  *(v6 + 96) = &type metadata for SDAuthentication.Operation.ConfirmAKSSession;
  *(v6 + 104) = &off_10097BE98;
  *(v6 + 136) = &type metadata for SDAuthentication.Operation.RecordSessionFinished;
  *(v6 + 144) = &off_10097BB00;
  *a3 = v6;
  if ([a1 hasSuccess])
  {
    sub_1002A9938(a2 + 8, (a3 + 1));
    v7 = *(_s14MacUnlockPhoneV21HandleResponseContextVMa(0) + 24);
    v8 = _s14MacUnlockPhoneV25HandleConfirmationContextVMa(0);
    sub_1004B13F4(a2 + v7, a3 + *(v8 + 24), type metadata accessor for SDAuthenticationSessionMetrics);
    LOBYTE(v7) = [a1 success];

    result = sub_1004B145C(a2, _s14MacUnlockPhoneV21HandleResponseContextVMa);
    *(a3 + *(v8 + 28)) = v7;
  }

  else
  {
    v10 = sub_100010F88(1, 0xD000000000000016, 0x8000000100789BD0);
    v12 = v11;
    sub_1000115C8();
    swift_allocError();
    *v13 = v10;
    *(v13 + 8) = v12;
    swift_willThrow();

    sub_1004B145C(a2, _s14MacUnlockPhoneV21HandleResponseContextVMa);
  }

  return result;
}

void sub_1004B055C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v116 = a2;
  v111 = a3;
  v95 = _s14MacUnlockPhoneV25HandleConfirmationContextVMa(0);
  __chkstk_darwin(v95);
  v99 = (&v95 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_10028088C(&qword_10097FE00, &qword_100805D08);
  __chkstk_darwin(v5 - 8);
  v104 = &v95 - v6;
  v96 = _s14MacUnlockPhoneV18HandleTokenContextVMa(0);
  __chkstk_darwin(v96);
  v103 = (&v95 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_10028088C(&qword_10097FE08, &qword_100805D10);
  __chkstk_darwin(v8 - 8);
  v110 = &v95 - v9;
  v105 = _s14MacUnlockPhoneV21HandleResponseContextVMa(0);
  v102 = *(v105 - 8);
  v10 = __chkstk_darwin(v105);
  v97 = &v95 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v98 = &v95 - v13;
  __chkstk_darwin(v12);
  v109 = (&v95 - v14);
  v15 = sub_10028088C(&qword_10097FE10, &qword_100805D18);
  __chkstk_darwin(v15 - 8);
  v17 = &v95 - v16;
  v18 = _s14MacUnlockPhoneV17InitialKeyContextVMa(0);
  v113 = *(v18 - 8);
  v114 = v18;
  v19 = __chkstk_darwin(v18);
  v107 = &v95 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v108 = &v95 - v21;
  v112 = _s14MacUnlockPhoneV20HandleRequestContextVMa(0);
  v106 = *(v112 - 8);
  v22 = __chkstk_darwin(v112);
  v100 = &v95 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v22);
  v101 = &v95 - v25;
  __chkstk_darwin(v24);
  v27 = &v95 - v26;
  v28 = sub_10028088C(&qword_10097FE18, &unk_100805D20);
  __chkstk_darwin(v28 - 8);
  v30 = &v95 - v29;
  v31 = _s14MacUnlockPhoneV18InitialLockContextVMa(0);
  v32 = *(v31 - 8);
  v33 = __chkstk_darwin(v31);
  v35 = &v95 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v37 = &v95 - v36;
  sub_1002A9938(a1, v117);
  sub_10028088C(&qword_1009819F0, &unk_1007FAAA0);
  sub_1000276B4(0, &qword_1009758B8, off_1008C8D48);
  if (swift_dynamicCast())
  {
    v38 = v118;
    sub_1002A9938(v116, v117);
    sub_10028088C(&qword_1009758D8, &unk_1007F8C30);
    v39 = swift_dynamicCast();
    v40 = *(v32 + 56);
    if (v39)
    {
      v40(v30, 0, 1, v31);
      sub_1004B138C(v30, v37, _s14MacUnlockPhoneV18InitialLockContextVMa);
      sub_1004B13F4(v37, v35, _s14MacUnlockPhoneV18InitialLockContextVMa);
      v41 = v38;
      v42 = v115;
      sub_1004AF5EC(v41, v35, v27);
      if (v42)
      {
        v43 = _s14MacUnlockPhoneV18InitialLockContextVMa;
        v44 = v37;
LABEL_21:
        sub_1004B145C(v44, v43);

        return;
      }

      v80 = v111;
      v111[3] = v112;
      v80[4] = &off_1008E3F80;
      v81 = sub_10002F604(v80);
      sub_1004B138C(v27, v81, _s14MacUnlockPhoneV20HandleRequestContextVMa);

      v82 = _s14MacUnlockPhoneV18InitialLockContextVMa;
      v83 = v37;
      goto LABEL_30;
    }

    v40(v30, 1, 1, v31);
    sub_100005508(v30, &qword_10097FE18, &unk_100805D20);
    v54 = "sult, message may be replayed";
    v55 = 0xD000000000000047;
LABEL_10:
    v56 = sub_100010F88(10, v55, v54 | 0x8000000000000000);
    v58 = v57;
    sub_1000115C8();
    swift_allocError();
    *v59 = v56;
    *(v59 + 8) = v58;
    swift_willThrow();

    return;
  }

  v45 = v116;
  sub_1002A9938(a1, v117);
  sub_1000276B4(0, &qword_1009758C0, off_1008C8D50);
  if (swift_dynamicCast())
  {
    v46 = v118;
    sub_1002A9938(v45, v117);
    sub_10028088C(&qword_1009758D8, &unk_1007F8C30);
    v47 = v114;
    v48 = swift_dynamicCast();
    v49 = *(v113 + 56);
    if (!v48)
    {
      v49(v17, 1, 1, v47);
      sub_100005508(v17, &qword_10097FE10, &qword_100805D18);
      v69 = sub_100010F88(10, 0xD000000000000046, 0x8000000100789AA0);
      v71 = v70;
      sub_1000115C8();
      swift_allocError();
      *v72 = v69;
      *(v72 + 8) = v71;
      swift_willThrow();

      return;
    }

    v49(v17, 0, 1, v47);
    v50 = v108;
    sub_1004B138C(v17, v108, _s14MacUnlockPhoneV17InitialKeyContextVMa);
    v51 = v107;
    sub_1004B13F4(v50, v107, _s14MacUnlockPhoneV17InitialKeyContextVMa);
    v41 = v46;
    v52 = v109;
    v53 = v115;
    sub_1004AFD38(v41, v51, v109);
    if (v53)
    {
      v43 = _s14MacUnlockPhoneV17InitialKeyContextVMa;
      v44 = v50;
      goto LABEL_21;
    }

    v88 = v111;
    v111[3] = v105;
    v88[4] = &off_1008E3F98;
    v89 = sub_10002F604(v88);
    sub_1004B138C(v52, v89, _s14MacUnlockPhoneV21HandleResponseContextVMa);

    v82 = _s14MacUnlockPhoneV17InitialKeyContextVMa;
    v83 = v50;
    goto LABEL_30;
  }

  sub_1002A9938(a1, v117);
  sub_1000276B4(0, &qword_1009758C8, off_1008C8D58);
  if (swift_dynamicCast())
  {
    v38 = v118;
    sub_1002A9938(v45, v117);
    sub_10028088C(&qword_1009758D8, &unk_1007F8C30);
    v60 = v110;
    v61 = v112;
    v62 = swift_dynamicCast();
    v63 = *(v106 + 56);
    if (!v62)
    {
      v63(v60, 1, 1, v61);
      sub_100005508(v60, &qword_10097FE08, &qword_100805D10);
      v54 = "t, message may be replayed";
      v55 = 0xD000000000000049;
      goto LABEL_10;
    }

    v63(v60, 0, 1, v61);
    v64 = v101;
    sub_1004B138C(v60, v101, _s14MacUnlockPhoneV20HandleRequestContextVMa);
    v65 = v100;
    sub_1004B13F4(v64, v100, _s14MacUnlockPhoneV20HandleRequestContextVMa);
    v41 = v38;
    v66 = v103;
    v67 = v115;
    sub_1004B0020(v41, v65, v103);
    if (v67)
    {
      v68 = _s14MacUnlockPhoneV20HandleRequestContextVMa;
LABEL_20:
      v43 = v68;
      v44 = v64;
      goto LABEL_21;
    }

    v90 = v111;
    v111[3] = v96;
    v90[4] = &off_1008E3FB0;
    v91 = sub_10002F604(v90);
    sub_1004B138C(v66, v91, _s14MacUnlockPhoneV18HandleTokenContextVMa);

    v92 = _s14MacUnlockPhoneV20HandleRequestContextVMa;
  }

  else
  {
    sub_1002A9938(a1, v117);
    sub_1000276B4(0, &qword_1009758D0, off_1008C8D08);
    if (!swift_dynamicCast())
    {
      v84 = sub_100010F88(10, 0xD00000000000001FLL, 0x80000001007898F0);
      v86 = v85;
      sub_1000115C8();
      swift_allocError();
      *v87 = v84;
      *(v87 + 8) = v86;
      swift_willThrow();
      return;
    }

    v38 = v118;
    sub_1002A9938(v45, v117);
    sub_10028088C(&qword_1009758D8, &unk_1007F8C30);
    v74 = v104;
    v73 = v105;
    v75 = swift_dynamicCast();
    v76 = *(v102 + 56);
    if (!v75)
    {
      v76(v74, 1, 1, v73);
      sub_100005508(v74, &qword_10097FE00, &qword_100805D08);
      v54 = "Invalid message object received";
      v55 = 0xD00000000000004ALL;
      goto LABEL_10;
    }

    v76(v74, 0, 1, v73);
    v64 = v98;
    sub_1004B138C(v74, v98, _s14MacUnlockPhoneV21HandleResponseContextVMa);
    v77 = v97;
    sub_1004B13F4(v64, v97, _s14MacUnlockPhoneV21HandleResponseContextVMa);
    v41 = v38;
    v78 = v99;
    v79 = v115;
    sub_1004B0360(v41, v77, v99);
    if (v79)
    {
      v68 = _s14MacUnlockPhoneV21HandleResponseContextVMa;
      goto LABEL_20;
    }

    v93 = v111;
    v111[3] = v95;
    v93[4] = &off_1008E3FC8;
    v94 = sub_10002F604(v93);
    sub_1004B138C(v78, v94, _s14MacUnlockPhoneV25HandleConfirmationContextVMa);

    v92 = _s14MacUnlockPhoneV21HandleResponseContextVMa;
  }

  v82 = v92;
  v83 = v64;
LABEL_30:
  sub_1004B145C(v83, v82);
}

uint64_t sub_1004B138C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1004B13F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1004B145C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1004B14E4(uint64_t a1)
{
  sub_1002A6B2C(319);
  if (v1 <= 0x3F)
  {
    sub_1002A6B90(319, &qword_100975788, &protocol descriptor for SDAuthenticationAKSSessionProtocol);
    if (v2 <= 0x3F)
    {
      type metadata accessor for SDAuthenticationSessionMetrics(319);
      if (v3 <= 0x3F)
      {
        sub_1002A6BEC(319);
        if (v4 <= 0x3F)
        {
          type metadata accessor for Date();
          if (v5 <= 0x3F)
          {
            sub_1002A6C94(319, &unk_100975A90, &qword_1009758C0, off_1008C8D50);
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

void sub_1004B1628(uint64_t a1)
{
  sub_1002A6B2C(319);
  if (v1 <= 0x3F)
  {
    sub_1002A6B90(319, &qword_100975788, &protocol descriptor for SDAuthenticationAKSSessionProtocol);
    if (v2 <= 0x3F)
    {
      type metadata accessor for SDAuthenticationSessionMetrics(319);
      if (v3 <= 0x3F)
      {
        sub_1002A6C94(319, &unk_100975B40, &qword_1009758D0, off_1008C8D08);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1004B174C(uint64_t a1)
{
  sub_1002A6B2C(319);
  if (v1 <= 0x3F)
  {
    sub_1002A6B90(319, &qword_100975788, &protocol descriptor for SDAuthenticationAKSSessionProtocol);
    if (v2 <= 0x3F)
    {
      type metadata accessor for SDAuthenticationSessionMetrics(319);
      if (v3 <= 0x3F)
      {
        type metadata accessor for SFAuthenticationErrorCode(319);
        if (v4 <= 0x3F)
        {
          sub_1002A6C94(319, &unk_100975BE8, &qword_1009758C8, off_1008C8D58);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_1004B1884(uint64_t a1, uint64_t a2)
{
  v2[10] = a1;
  v2[11] = a2;
  v3 = type metadata accessor for SFInterventionWorkflow.SprinboardSettings();
  v2[12] = v3;
  v2[13] = *(v3 - 8);
  v2[14] = swift_task_alloc();

  return _swift_task_switch(sub_1004B1944, 0, 0);
}

uint64_t sub_1004B1944()
{
  v2 = *(v0 + 104);
  v1 = *(v0 + 112);
  v3 = *(v0 + 96);
  v4 = *(v2 + 104);
  v4(v1, enum case for SFInterventionWorkflow.SprinboardSettings.interventionShouldContinue(_:), v3);
  v5 = SFInterventionWorkflow.SprinboardSettings.rawValue.getter();
  v6 = *(v2 + 8);
  v6(v1, v3);
  v4(v1, enum case for SFInterventionWorkflow.SprinboardSettings.interventionReply(_:), v3);
  v7 = SFInterventionWorkflow.SprinboardSettings.rawValue.getter();
  v6(v1, v3);
  v8 = sub_100011040(_swiftEmptyArrayStorage);
  v9 = static SFInterventionWorkflow.SprinboardSettings.userInfoKey.getter();
  v11 = v10;
  v12 = SFInterventionWorkflow.rawValue.getter();
  *(v0 + 40) = &type metadata for String;
  *(v0 + 16) = v12;
  *(v0 + 24) = v13;
  sub_1000106E0((v0 + 16), (v0 + 48));
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_100011170((v0 + 48), v9, v11, isUniquelyReferenced_nonNull_native);

  v15 = v8;
  *(v0 + 120) = v8;
  v16 = [objc_allocWithZone(sub_10028088C(&qword_1009800F0 &unk_100806010))];
  *(v0 + 128) = v16;
  v17 = swift_task_alloc();
  *(v0 + 136) = v17;
  *(v17 + 16) = v16;
  *(v17 + 24) = v5;
  *(v17 + 32) = xmmword_1007F84A0;
  *(v17 + 48) = 0x8000000100789280;
  *(v17 + 56) = 0xD00000000000001DLL;
  *(v17 + 64) = 0x8000000100792680;
  *(v17 + 72) = v15;
  *(v17 + 80) = v7;
  *(v17 + 88) = 0;
  v18 = swift_task_alloc();
  *(v0 + 144) = v18;
  v19 = sub_10028088C(&qword_10097A3C0, &qword_1007FD5D0);
  *v18 = v0;
  v18[1] = sub_1004B1BD0;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 160, 0, 0, 0xD00000000000006ALL, 0x80000001007892A0, sub_1004B2880, v17, v19);
}

uint64_t sub_1004B1BD0()
{
  v2 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v3 = sub_1004B1DE0;
  }

  else
  {

    *(v2 + 161) = *(v2 + 160);
    v3 = sub_1004B1CFC;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1004B1CFC()
{
  v1 = *(v0 + 161);

  if (v1 == 2 || (*(v0 + 161) & 1) == 0)
  {
    v2 = &enum case for SFInterventionResponse.reject(_:);
  }

  else
  {
    v2 = &enum case for SFInterventionResponse.accept(_:);
  }

  v3 = *(v0 + 80);
  v4 = *v2;
  v5 = type metadata accessor for SFInterventionResponse();
  (*(*(v5 - 8) + 104))(v3, v4, v5);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1004B1DE0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1004B1E80()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_1009800B0);
  v1 = sub_10000C4AC(v0, qword_1009800B0);
  if (qword_1009736D0 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C4AC(v0, qword_1009A08B8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1004B1F48(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 32) = a6;
  *(v7 + 40) = a7;
  *(v7 + 24) = a5;
  *(v7 + 120) = a4;
  v8 = type metadata accessor for SFInterventionResponse();
  *(v7 + 48) = v8;
  *(v7 + 56) = *(v8 - 8);
  *(v7 + 64) = swift_task_alloc();
  *(v7 + 72) = swift_task_alloc();
  v9 = type metadata accessor for SFInterventionWorkflow();
  *(v7 + 80) = v9;
  *(v7 + 88) = *(v9 - 8);
  *(v7 + 96) = swift_task_alloc();

  return _swift_task_switch(sub_1004B2078, 0, 0);
}

uint64_t sub_1004B2078()
{
  v1 = &enum case for SFInterventionWorkflow.send(_:);
  if (!*(v0 + 120))
  {
    v1 = &enum case for SFInterventionWorkflow.receive(_:);
  }

  (*(*(v0 + 88) + 104))(*(v0 + 96), *v1, *(v0 + 80));
  v2 = swift_task_alloc();
  *(v0 + 104) = v2;
  *v2 = v0;
  v2[1] = sub_1004B2148;
  v3 = *(v0 + 96);
  v4 = *(v0 + 72);

  return sub_1004B1884(v4, v3);
}

uint64_t sub_1004B2148()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_1004B23CC;
  }

  else
  {
    v2 = sub_1004B225C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1004B225C()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 48);
  v3 = *(v0 + 56);
  (*(v3 + 16))(v1, *(v0 + 72), v2);
  v4 = (*(v3 + 88))(v1, v2);
  if (v4 == enum case for SFInterventionResponse.accept(_:) || v4 == enum case for SFInterventionResponse.reject(_:))
  {
    v7 = *(v0 + 88);
    v6 = *(v0 + 96);
    v9 = *(v0 + 72);
    v8 = *(v0 + 80);
    v10 = *(v0 + 48);
    v11 = *(v0 + 56);
    (*(v0 + 32))(v4 == enum case for SFInterventionResponse.accept(_:));
    (*(v11 + 8))(v9, v10);
    (*(v7 + 8))(v6, v8);

    v12 = *(v0 + 8);

    return v12();
  }

  else
  {

    return _diagnoseUnexpectedEnumCase<A>(type:)();
  }
}

uint64_t sub_1004B23CC()
{
  v13 = v0;
  (*(*(v0 + 88) + 8))(*(v0 + 96), *(v0 + 80));
  if (qword_100973908 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000C4AC(v1, qword_1009800B0);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 112);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12 = v6;
    *v5 = 136315138;
    *(v0 + 16) = v4;
    swift_errorRetain();
    sub_10028088C(&unk_10097A930, &unk_1007F9050);
    v7 = String.init<A>(describing:)();
    v9 = sub_10000C4E4(v7, v8, &v12);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v2, v3, "Intervention UI failed {error: %s}", v5, 0xCu);
    sub_10000C60C(v6);
  }

  (*(v0 + 32))(0);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_1004B27A8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_100005C04;

  return sub_1004B1F48(a1, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1004B28C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[26] = a4;
  v5[27] = v4;
  v5[24] = a2;
  v5[25] = a3;
  v5[23] = a1;
  v5[28] = sub_10028088C(&qword_10097B348, &qword_1007FE748);
  v5[29] = swift_task_alloc();
  sub_10028088C(&qword_10097B338, &unk_1007FE730);
  v5[30] = swift_task_alloc();
  v6 = type metadata accessor for SFAirDrop.TransferType();
  v5[31] = v6;
  v5[32] = *(v6 - 8);
  v5[33] = swift_task_alloc();
  v5[34] = swift_task_alloc();
  v7 = type metadata accessor for Date();
  v5[35] = v7;
  v5[36] = *(v7 - 8);
  v5[37] = swift_task_alloc();
  v5[38] = swift_task_alloc();
  v8 = type metadata accessor for SFAirDropSend.Failure();
  v5[39] = v8;
  v5[40] = *(v8 - 8);
  v5[41] = swift_task_alloc();
  v5[42] = swift_task_alloc();
  v5[43] = swift_task_alloc();
  v5[44] = swift_task_alloc();
  sub_10028088C(&qword_100980278, &unk_1008060F0);
  v5[45] = swift_task_alloc();
  v9 = _s15EndpointFailureVMa(0);
  v5[46] = v9;
  v5[47] = *(v9 - 8);
  v5[48] = swift_task_alloc();
  sub_10028088C(&qword_1009763E0, &qword_1007F95D0);
  v5[49] = swift_task_alloc();
  v10 = sub_10028088C(&qword_100980280, &unk_100806100);
  v5[50] = v10;
  v5[51] = *(v10 - 8);
  v5[52] = swift_task_alloc();
  sub_10028088C(&qword_10097B350, &qword_1007FE758);
  v5[53] = swift_task_alloc();
  v5[54] = swift_task_alloc();
  v5[55] = swift_task_alloc();
  v5[56] = swift_task_alloc();
  v11 = sub_10028088C(&qword_10097B340, &qword_100806090);
  v5[57] = v11;
  v5[58] = *(v11 - 8);
  v5[59] = swift_task_alloc();
  v12 = sub_10028088C(&qword_100980288, &unk_100806110);
  v5[60] = v12;
  v5[61] = *(v12 - 8);
  v5[62] = swift_task_alloc();
  v5[63] = swift_task_alloc();

  return _swift_task_switch(sub_1004B2D5C, v4, 0);
}

uint64_t sub_1004B2D5C()
{
  v1 = *(v0 + 464);
  v31 = *(v0 + 456);
  v2 = *(v0 + 216);
  v3 = (v2 + OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropAskFanoutHelper_runner);
  *(v0 + 136) = *(*sub_10002CDC0((v2 + OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropAskFanoutHelper_runner), *(v2 + OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropAskFanoutHelper_runner + 24)) + OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine10BaseRunner_endpoints);
  swift_allocObject();
  swift_weakInit();

  sub_10028088C(&qword_100980290, &qword_100809190);
  sub_1004BA170();
  v29 = Publisher<>.sink(receiveValue:)();
  *(v0 + 512) = v29;

  *(v0 + 144) = *(*sub_10002CDC0(v3, v3[3]) + OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine10BaseRunner_backupEndpoints);
  swift_allocObject();
  swift_weakInit();

  v4 = Publisher<>.sink(receiveValue:)();
  *(v0 + 520) = v4;

  v5 = OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropAskFanoutHelper_askContinuation;
  *(v0 + 528) = OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropAskFanoutHelper_askContinuation;
  swift_beginAccess();
  v6 = *(v1 + 48);
  *(v0 + 536) = v6;
  *(v0 + 544) = (v1 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v6(v2 + v5, 1, v31))
  {
    v7 = *(v0 + 312);
    v8 = *(v0 + 320);
    v9 = *(v0 + 216);
    sub_1004BA228(&qword_1009755A0, &type metadata accessor for SFAirDropSend.Failure, &protocol conformance descriptor for SFAirDropSend.Failure);
    swift_allocError();
    (*(v8 + 104))(v10, enum case for SFAirDropSend.Failure.badRequest(_:), v7);
    swift_willThrow();
    sub_1004B603C(v29, v4, v9);

    v11 = *(v0 + 8);

    return v11();
  }

  else
  {
    v13 = *(v0 + 496);
    v27 = *(v0 + 504);
    v14 = *(v0 + 480);
    v15 = *(v0 + 488);
    v17 = *(v0 + 464);
    v16 = *(v0 + 472);
    v18 = *(v0 + 456);
    v30 = *(v0 + 448);
    v19 = *(v0 + 320);
    v28 = *(v0 + 312);
    v20 = *(v17 + 16);
    *(v0 + 552) = v20;
    *(v0 + 560) = (v17 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v20(v16, v2 + v5, v18);
    SFProgressContinuation.task.getter();
    v21 = *(v17 + 8);
    *(v0 + 568) = v21;
    *(v0 + 576) = (v17 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v21(v16, v18);
    (*(v15 + 32))(v27, v13, v14);
    v22 = *(v19 + 56);
    *(v0 + 584) = v22;
    *(v0 + 592) = (v19 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v22(v30, 1, 1, v28);
    SFProgressTask.makeAsyncIterator()();
    v23 = sub_1004BA228(&qword_1009802A0, type metadata accessor for SDAirDropAskFanoutHelper, &unk_1008060B0);
    *(v0 + 600) = v23;
    *(v0 + 608) = OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropAskFanoutHelper_askStart;
    *(v0 + 616) = OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropAskFanoutHelper_sendRequest;
    *(v0 + 624) = OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropAskFanoutHelper_endpointService;
    *(v0 + 680) = enum case for SFAirDropSend.Failure.unexpected(_:);
    *(v0 + 684) = enum case for SFAirDropSend.Failure.missingEndpoint(_:);
    *(v0 + 688) = enum case for SFAirDropSend.Failure.resolveFailure(_:);
    *(v0 + 692) = enum case for SFAirDropSend.Failure.receiverDeclined(_:);
    *(v0 + 696) = enum case for SFAirDropSend.Failure.unsupportedConnection(_:);
    *(v0 + 700) = enum case for SFAirDrop.TransferType.peerPayment(_:);
    v24 = *(v0 + 216);
    v25 = swift_task_alloc();
    *(v0 + 632) = v25;
    *v25 = v0;
    v25[1] = sub_1004B3358;
    v26 = *(v0 + 400);

    return __sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v0 + 152, v24, v23, v26, v0 + 160);
  }
}

uint64_t sub_1004B3358()
{
  v2 = *v1;

  v3 = *(v2 + 216);
  if (v0)
  {
    v4 = sub_1004B4B18;
  }

  else
  {
    v4 = sub_1004B346C;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1004B346C()
{
  v146 = v0;
  v2 = v0 + 152;
  v1 = *(v0 + 152);
  *(v0 + 640) = v1;
  if (v1 == 1)
  {
    (*(*(v0 + 408) + 8))(*(v0 + 416), *(v0 + 400));
    v14 = swift_task_alloc();
    *(v0 + 664) = v14;
    *v14 = v0;
    v14[1] = sub_1004B46C0;
    v15 = *(v0 + 480);
    v16 = *(v0 + 232);

    return SFProgressTask.finalValue.getter(v16, v15);
  }

  else
  {
    if (!v1)
    {
LABEL_42:
      v103 = *(v0 + 600);
      v104 = *(v0 + 216);
      v105 = swift_task_alloc();
      *(v0 + 632) = v105;
      *v105 = v0;
      v105[1] = sub_1004B3358;
      v106 = *(v0 + 400);

      return __sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v2, v104, v103, v106, v0 + 160);
    }

    v3 = *(v0 + 392);
    v4 = type metadata accessor for SDAirDropDiscoveredEndpoint(0);
    v5 = *(*(v4 - 8) + 56);
    v5(v3, 1, 1, v4);
    *(v0 + 168) = v1;
    sub_1004BA270(v1);
    swift_errorRetain();
    sub_10028088C(&unk_10097A930, &unk_1007F9050);
    v143 = v1;
    if (swift_dynamicCast())
    {
      v138 = *(v0 + 584);
      v6 = *(v0 + 448);
      v7 = *(v0 + 384);
      v8 = *(v0 + 392);
      v133 = v5;
      v9 = *(v0 + 368);
      v10 = *(v0 + 376);
      v11 = *(v0 + 360);
      v12 = *(v0 + 320);
      v135 = *(v0 + 312);
      sub_100005508(v8, &qword_1009763E0, &qword_1007F95D0);
      sub_100005508(v6, &qword_10097B350, &qword_1007FE758);
      (*(v10 + 56))(v11, 0, 1, v9);
      v13 = v11;
      v2 = v0 + 152;
      sub_1004BA578(v13, v7, _s15EndpointFailureVMa);
      sub_1004BA578(v7, v8, type metadata accessor for SDAirDropDiscoveredEndpoint);
      v133(v8, 0, 1, v4);
      (*(v12 + 32))(v6, v7 + *(v9 + 20), v135);
      v138(v6, 0, 1, v135);
    }

    else
    {
      v17 = *(v0 + 360);
      (*(*(v0 + 376) + 56))(v17, 1, 1, *(v0 + 368));
      sub_100005508(v17, &qword_100980278, &unk_1008060F0);
      *(v0 + 176) = v1;
      swift_errorRetain();
      if (swift_dynamicCast())
      {
        v18 = *(v0 + 584);
        v20 = *(v0 + 440);
        v19 = *(v0 + 448);
        v21 = *(v0 + 352);
        v22 = *(v0 + 312);
        v23 = *(v0 + 320);
        sub_100005508(v19, &qword_10097B350, &qword_1007FE758);
        v18(v20, 0, 1, v22);
        v24 = *(v23 + 32);
        v24(v21, v20, v22);
        v24(v19, v21, v22);
        v18(v19, 0, 1, v22);
      }

      else
      {
        v140 = *(v0 + 680);
        v25 = *(v0 + 584);
        v27 = *(v0 + 440);
        v26 = *(v0 + 448);
        v28 = *(v0 + 432);
        v30 = *(v0 + 312);
        v29 = *(v0 + 320);
        v25(v27, 1, 1, v30);
        sub_100005508(v27, &qword_10097B350, &qword_1007FE758);
        swift_errorRetain();
        CodableError.init(_:)();
        sub_100005508(v26, &qword_10097B350, &qword_1007FE758);
        (*(v29 + 104))(v28, v140, v30);
        v25(v28, 0, 1, v30);
        v2 = v0 + 152;
        sub_10002C4E4(v28, v26, &qword_10097B350, &qword_1007FE758);
      }
    }

    v31 = *(v0 + 424);
    v33 = *(v0 + 312);
    v32 = *(v0 + 320);
    sub_10000FF90(*(v0 + 448), v31, &qword_10097B350, &qword_1007FE758);
    if ((*(v32 + 48))(v31, 1, v33) == 1)
    {
      v34 = *(v0 + 424);
      sub_100005508(*(v0 + 392), &qword_1009763E0, &qword_1007F95D0);
      sub_1004BA280(v143);
      sub_1004BA280(v143);
      sub_100005508(v34, &qword_10097B350, &qword_1007FE758);
      goto LABEL_42;
    }

    v35 = *(v0 + 684);
    v37 = *(v0 + 336);
    v36 = *(v0 + 344);
    v39 = *(v0 + 312);
    v38 = *(v0 + 320);
    (*(v38 + 32))(v36, *(v0 + 424), v39);
    v139 = *(v38 + 16);
    v139(v37, v36, v39);
    v40 = (*(v38 + 88))(v37, v39);
    if (v40 == v35)
    {
      (*(*(v0 + 320) + 8))(*(v0 + 336), *(v0 + 312));
LABEL_15:
      if (qword_100973910 != -1)
      {
        swift_once();
      }

      v41 = *(v0 + 344);
      v42 = *(v0 + 328);
      v43 = *(v0 + 312);
      v44 = type metadata accessor for Logger();
      sub_10000C4AC(v44, qword_1009800F8);
      v139(v42, v41, v43);
      v45 = Logger.logObject.getter();
      v46 = static os_log_type_t.default.getter();
      v47 = os_log_type_enabled(v45, v46);
      v48 = *(v0 + 320);
      v49 = *(v0 + 328);
      v50 = *(v0 + 312);
      if (v47)
      {
        v51 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        v145 = v52;
        *v51 = 136315138;
        v131 = SFAirDropSend.Failure.errorDescription.getter();
        v54 = v53;
        v55 = *(v48 + 8);
        v55(v49, v50);
        v56 = sub_10000C4E4(v131, v54, &v145);

        *(v51 + 4) = v56;
        _os_log_impl(&_mh_execute_header, v45, v46, "Fatal Ask failure %s", v51, 0xCu);
        sub_10000C60C(v52);

        v57 = v55;
      }

      else
      {

        v57 = *(v48 + 8);
        v57(v49, v50);
      }

      v65 = v143;
      v66 = *(v0 + 536);
      v67 = *(v0 + 528);
      v68 = *(v0 + 456);
      v69 = *(v0 + 216);
      swift_beginAccess();
      v2 = v0 + 152;
      if (v66(v69 + v67, 1, v68))
      {
        v70 = *(v0 + 392);
        v57(*(v0 + 344), *(v0 + 312));
        sub_100005508(v70, &qword_1009763E0, &qword_1007F95D0);
        swift_endAccess();
        sub_1004BA280(v143);
        sub_1004BA280(v143);
      }

      else
      {
        v92 = *(v0 + 568);
        v93 = *(v0 + 472);
        v94 = *(v0 + 456);
        v144 = *(v0 + 392);
        v95 = *(v0 + 344);
        v96 = v57;
        v97 = *(v0 + 312);
        (*(v0 + 552))(v93, *(v0 + 216) + *(v0 + 528), v94);
        swift_endAccess();
        sub_1004BA228(&qword_1009755A0, &type metadata accessor for SFAirDropSend.Failure, &protocol conformance descriptor for SFAirDropSend.Failure);
        swift_allocError();
        v139(v98, v95, v97);
        SFProgressContinuation.fail(with:)();
        sub_1004BA280(v65);
        sub_1004BA280(v65);
        v99 = v94;
        v2 = v0 + 152;
        v92(v93, v99);
        v96(v95, v97);
        sub_100005508(v144, &qword_1009763E0, &qword_1007F95D0);
      }

      v100 = *(v0 + 528);
      v101 = *(v0 + 240);
      v102 = *(v0 + 216);
      (*(*(v0 + 464) + 56))(v101, 1, 1, *(v0 + 456));
      swift_beginAccess();
      sub_1004BA290(v101, v102 + v100);
      swift_endAccess();
      goto LABEL_42;
    }

    if (v40 != *(v0 + 688))
    {
      if (v40 != *(v0 + 692) && v40 != *(v0 + 696))
      {
        if (qword_100973910 != -1)
        {
          swift_once();
        }

        v71 = type metadata accessor for Logger();
        sub_10000C4AC(v71, qword_1009800F8);
        swift_errorRetain();
        v72 = Logger.logObject.getter();
        v73 = static os_log_type_t.default.getter();
        sub_1004BA280(v143);
        if (os_log_type_enabled(v72, v73))
        {
          v74 = swift_slowAlloc();
          v75 = swift_slowAlloc();
          *v74 = 138412290;
          swift_errorRetain();
          v76 = _swift_stdlib_bridgeErrorToNSError();
          *(v74 + 4) = v76;
          *v75 = v76;
          _os_log_impl(&_mh_execute_header, v72, v73, "Ask failed %@ - waiting for other asks if appropriate", v74, 0xCu);
          sub_100005508(v75, &qword_100975400, &qword_1007F65D0);
        }

        v141 = *(v0 + 700);
        v77 = *(v0 + 608);
        v78 = *(v0 + 296);
        v79 = *(v0 + 304);
        v80 = v72;
        v82 = *(v0 + 280);
        v81 = *(v0 + 288);
        v83 = *(v0 + 264);
        v136 = *(v0 + 272);
        v85 = *(v0 + 248);
        v84 = *(v0 + 256);
        v86 = *(v0 + 216);

        static Date.now.getter();
        (*(v81 + 16))(v78, v86 + v77, v82);
        Date.timeIntervalSince(_:)();
        v88 = v87;
        v89 = *(v81 + 8);
        v89(v78, v82);
        v89(v79, v82);
        SFAirDropSend.Request.type.getter();
        (*(v84 + 104))(v83, v141, v85);
        LOBYTE(v89) = static SFAirDrop.TransferType.== infix(_:_:)();
        v90 = *(v84 + 8);
        v90(v83, v85);
        v90(v136, v85);
        if (v89)
        {
          v91 = 120.0;
        }

        else
        {
          v91 = 45.0;
        }

        v2 = v0 + 152;
        if (v88 <= v91)
        {
          v116 = *(v0 + 392);
          v117 = *(v0 + 344);
          v119 = *(v0 + 312);
          v118 = *(v0 + 320);
          sub_1004BA280(v143);
          sub_1004BA280(v143);
          v115 = *(v118 + 8);
          v115(v117, v119);
          sub_100005508(v116, &qword_1009763E0, &qword_1007F95D0);
        }

        else
        {
          v107 = Logger.logObject.getter();
          v108 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v107, v108))
          {
            v109 = swift_slowAlloc();
            *v109 = 0;
            _os_log_impl(&_mh_execute_header, v107, v108, "Ask timed out", v109, 2u);
          }

          v110 = *(v0 + 536);
          v111 = *(v0 + 528);
          v112 = *(v0 + 456);
          v113 = *(v0 + 216);

          swift_beginAccess();
          if (v110(v113 + v111, 1, v112))
          {
            v114 = *(v0 + 392);
            v115 = *(*(v0 + 320) + 8);
            v115(*(v0 + 344), *(v0 + 312));
            sub_100005508(v114, &qword_1009763E0, &qword_1007F95D0);
            swift_endAccess();
            sub_1004BA280(v143);
            sub_1004BA280(v143);
          }

          else
          {
            v132 = *(v0 + 684);
            v137 = *(v0 + 568);
            v120 = *(v0 + 472);
            v121 = *(v0 + 456);
            v142 = *(v0 + 392);
            v134 = *(v0 + 344);
            v123 = *(v0 + 312);
            v122 = *(v0 + 320);
            (*(v0 + 552))(v120, *(v0 + 216) + *(v0 + 528), v121);
            swift_endAccess();
            sub_1004BA228(&qword_1009755A0, &type metadata accessor for SFAirDropSend.Failure, &protocol conformance descriptor for SFAirDropSend.Failure);
            swift_allocError();
            v125 = v124;
            SFAirDropSend.Request.endpointID.getter();
            (*(v122 + 104))(v125, v132, v123);
            SFProgressContinuation.fail(with:)();
            sub_1004BA280(v143);
            sub_1004BA280(v143);
            v126 = v120;
            v2 = v0 + 152;
            v137(v126, v121);
            v115 = *(v122 + 8);
            v115(v134, v123);
            sub_100005508(v142, &qword_1009763E0, &qword_1007F95D0);
          }

          v127 = *(v0 + 528);
          v128 = *(v0 + 240);
          v129 = *(v0 + 216);
          (*(*(v0 + 464) + 56))(v128, 1, 1, *(v0 + 456));
          swift_beginAccess();
          sub_1004BA290(v128, v129 + v127);
          swift_endAccess();
        }

        v115(*(v0 + 336), *(v0 + 312));
        goto LABEL_42;
      }

      goto LABEL_15;
    }

    if (qword_100973910 != -1)
    {
      swift_once();
    }

    v58 = type metadata accessor for Logger();
    sub_10000C4AC(v58, qword_1009800F8);
    v59 = Logger.logObject.getter();
    v60 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      *v61 = 0;
      _os_log_impl(&_mh_execute_header, v59, v60, "Resolve failed - waiting for other asks if appropriate and attempting fallback", v61, 2u);
    }

    v62 = *(v0 + 624);
    v63 = *(v0 + 216);

    *(v0 + 648) = *(v63 + v62);
    sub_100294244();
    *(v0 + 656) = Set.init(minimumCapacity:)();
    if (qword_1009735E0 != -1)
    {
      swift_once();
    }

    v64 = static AirDropActor.shared;

    return _swift_task_switch(sub_1004B4518, v64, 0);
  }
}

uint64_t sub_1004B4518()
{
  v1 = *(v0 + 216);
  sub_100481560(0, *(v0 + 656));

  return _swift_task_switch(sub_1004B45A0, v1, 0);
}

uint64_t sub_1004B45A0()
{
  v1 = v0[80];
  v2 = v0[49];
  v3 = v0[43];
  v4 = v0[39];
  v5 = v0[40];
  sub_1004B61AC(v2);
  sub_1004BA280(v1);
  sub_1004BA280(v1);
  (*(v5 + 8))(v3, v4);
  sub_100005508(v2, &qword_1009763E0, &qword_1007F95D0);
  v6 = v0[75];
  v7 = v0[27];
  v8 = swift_task_alloc();
  v0[79] = v8;
  *v8 = v0;
  v8[1] = sub_1004B3358;
  v9 = v0[50];

  return __sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v0 + 19, v7, v6, v9, v0 + 20);
}

uint64_t sub_1004B46C0()
{
  v2 = *v1;
  *(*v1 + 672) = v0;

  v3 = *(v2 + 216);
  if (v0)
  {
    v4 = sub_1004B4D10;
  }

  else
  {
    v4 = sub_1004B47EC;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1004B47EC()
{
  v1 = v0[65];
  v2 = v0[63];
  v3 = v0[61];
  v18 = v0[64];
  v4 = v0[60];
  v5 = v0[29];
  v6 = v0[28];
  v7 = v0[25];
  v16 = v0[26];
  v17 = v0[27];
  v8 = v0[23];
  v9 = v0[24];
  sub_100005508(v0[56], &qword_10097B350, &qword_1007FE758);
  (*(v3 + 8))(v2, v4);
  v30 = *(v5 + *(v6 + 48));
  v29 = *v5;
  v28 = *(v5 + 4);
  v10 = sub_10028088C(&qword_10097B320, &qword_100806120);
  v27 = *(v5 + v10[16]);
  v11 = v10[20];
  v12 = (v5 + v10[24]);
  v25 = *v12;
  v23 = *(v12 + 3);
  v24 = *(v12 + 2);
  v26 = *(v5 + v10[28]);
  LOBYTE(v4) = *(v12 + 32);
  v13 = v10[32];
  v21 = *(v12 + 72);
  v22 = *(v12 + 40);
  v19 = *(v12 + 88);
  v20 = *(v12 + 56);
  sub_1004BA578(v5 + v10[12], v9, _s10AskRequestVMa);
  sub_1004BA578(v5 + v11, v7, type metadata accessor for SDAirDropDiscoveredEndpoint);
  sub_10002C4E4(v5 + v13, v16, &qword_10097B1B8, &qword_1007FE4C0);
  sub_1004B603C(v18, v1, v17);

  *(v8 + 4) = v28;
  *v8 = v29;
  *(v8 + 8) = v27;
  *(v8 + 16) = v25;
  *(v8 + 32) = v24;
  *(v8 + 40) = v23;
  *(v8 + 48) = v4;
  *(v8 + 72) = v20;
  *(v8 + 56) = v22;
  *(v8 + 104) = v19;
  *(v8 + 88) = v21;
  *(v8 + 120) = v26;
  *(v8 + 128) = v30;
  v14 = v0[1];

  return v14();
}

uint64_t sub_1004B4B18()
{
  v1 = v0[65];
  v3 = v0[63];
  v2 = v0[64];
  v4 = v0[60];
  v5 = v0[61];
  v6 = v0[56];
  v7 = v0[27];
  (*(v0[51] + 8))(v0[52], v0[50]);
  sub_100005508(v6, &qword_10097B350, &qword_1007FE758);
  (*(v5 + 8))(v3, v4);
  sub_1004B603C(v2, v1, v7);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1004B4D10()
{
  v1 = v0[65];
  v3 = v0[63];
  v2 = v0[64];
  v4 = v0[60];
  v5 = v0[61];
  v6 = v0[27];
  sub_100005508(v0[56], &qword_10097B350, &qword_1007FE758);
  (*(v5 + 8))(v3, v4);
  sub_1004B603C(v2, v1, v6);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1004B4EEC()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_1009800F8);
  v1 = sub_10000C4AC(v0, qword_1009800F8);
  if (qword_1009736E0 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C4AC(v0, qword_1009A08E8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1004B4FB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[5] = a1;
  return _swift_task_switch(sub_1004B4FD8, 0, 0);
}

uint64_t sub_1004B4FD8()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 64) = Strong;
  if (Strong)
  {

    return _swift_task_switch(sub_1004B509C, Strong, 0);
  }

  else
  {
    **(v0 + 40) = 1;
    v2 = *(v0 + 8);

    return v2();
  }
}

uint64_t sub_1004B509C()
{
  sub_1004B510C(*(v0 + 56));

  return _swift_task_switch(sub_1002F9710, 0, 0);
}

uint64_t sub_1004B510C(uint64_t a1)
{
  v2 = type metadata accessor for SDAirDropDiscoveredEndpoint(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v5 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  __chkstk_darwin(v5 - 8);
  v7 = &v14[-v6];
  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = swift_allocObject();
  swift_weakInit();
  sub_1004BA418(a1, &v14[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for SDAirDropDiscoveredEndpoint);
  v10 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = v9;
  sub_1004BA578(&v14[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)], v11 + v10, type metadata accessor for SDAirDropDiscoveredEndpoint);
  v12 = sub_1002B3098(0, 0, v7, &unk_100806188, v11);
  swift_beginAccess();

  sub_10046F2E0(&v15, v12);
  swift_endAccess();
}

void sub_1004B5350(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v52 = a5;
  v53 = a6;
  v50 = a3;
  v51 = a4;
  v49 = a2;
  v7 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  v8 = __chkstk_darwin(v7 - 8);
  v48 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v41 - v10;
  v12 = type metadata accessor for SDAirDropDiscoveredEndpoint(0);
  v46 = *(v12 - 8);
  v13 = __chkstk_darwin(v12 - 8);
  v44 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = v14;
  __chkstk_darwin(v13);
  v43 = &v41 - v15;
  v16 = *a1;
  v17 = *a1 + 56;
  v18 = 1 << *(*a1 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & *(*a1 + 56);
  v21 = (v18 + 63) >> 6;
  v54 = v16;

  v22 = 0;
  v41 = v21;
  v42 = v17;
  v47 = v11;
  v23 = v49;
  while (v20)
  {
    v24 = v11;
LABEL_11:
    v26 = v46;
    v27 = v43;
    sub_1004BA418(*(v54 + 48) + *(v46 + 72) * (__clz(__rbit64(v20)) | (v22 << 6)), v43, type metadata accessor for SDAirDropDiscoveredEndpoint);
    v28 = type metadata accessor for TaskPriority();
    v29 = *(v28 - 8);
    (*(v29 + 56))(v24, 1, 1, v28);
    v30 = v27;
    v31 = v44;
    sub_1004BA578(v30, v44, type metadata accessor for SDAirDropDiscoveredEndpoint);
    v32 = (*(v26 + 80) + 40) & ~*(v26 + 80);
    v33 = swift_allocObject();
    v33[2] = 0;
    v33[3] = 0;
    v33[4] = v23;
    sub_1004BA578(v31, v33 + v32, type metadata accessor for SDAirDropDiscoveredEndpoint);
    v34 = v48;
    sub_10000FF90(v24, v48, &qword_100976160, &qword_1007F8770);
    v35 = (*(v29 + 48))(v34, 1, v28);

    if (v35 == 1)
    {
      sub_100005508(v34, &qword_100976160, &qword_1007F8770);
    }

    else
    {
      TaskPriority.rawValue.getter();
      (*(v29 + 8))(v34, v28);
    }

    v36 = v33[2];
    swift_unknownObjectRetain();

    v11 = v47;
    if (v36)
    {
      swift_getObjectType();
      v37 = dispatch thunk of Actor.unownedExecutor.getter();
      v39 = v38;
      swift_unknownObjectRelease();
    }

    else
    {
      v37 = 0;
      v39 = 0;
    }

    sub_100005508(v11, &qword_100976160, &qword_1007F8770);
    v40 = swift_allocObject();
    *(v40 + 16) = v52;
    *(v40 + 24) = v33;
    sub_10028088C(&qword_100976168, &qword_1007F92F0);
    if (v39 | v37)
    {
      v55 = 0;
      v56 = 0;
      v57 = v37;
      v58 = v39;
    }

    v21 = v41;
    v20 &= v20 - 1;
    swift_task_create();

    v17 = v42;
  }

  while (1)
  {
    v25 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v25 >= v21)
    {

      return;
    }

    v20 = *(v17 + 8 * v25);
    ++v22;
    if (v20)
    {
      v24 = v11;
      v22 = v25;
      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t sub_1004B57B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[5] = a1;
  return _swift_task_switch(sub_1004B57D8, 0, 0);
}

uint64_t sub_1004B57D8()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 64) = Strong;
  if (Strong)
  {

    return _swift_task_switch(sub_1004B589C, Strong, 0);
  }

  else
  {
    **(v0 + 40) = 1;
    v2 = *(v0 + 8);

    return v2();
  }
}

uint64_t sub_1004B589C()
{
  sub_1004B590C(*(v0 + 56));

  return _swift_task_switch(sub_1002F7F9C, 0, 0);
}

void sub_1004B590C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  __chkstk_darwin(v4 - 8);
  v6 = &v56 - v5;
  v7 = type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint(0);
  __chkstk_darwin(v7);
  v9 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint(0);
  __chkstk_darwin(v10 - 8);
  v12 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for SDAirDropDiscoveredEndpoint(0);
  v61 = *(v13 - 8);
  v14 = *(v61 + 64);
  v15 = __chkstk_darwin(v13);
  v62 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v15);
  v18 = &v56 - v17;
  __chkstk_darwin(v16);
  v20 = &v56 - v19;
  sub_1004BA418(a1, &v56 - v19, type metadata accessor for SDAirDropDiscoveredEndpoint);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v26 = type metadata accessor for SDAirDropDiscoveredEndpoint.NearFieldEndpoint;
    }

    else
    {
      v26 = type metadata accessor for SDAirDropDiscoveredEndpoint;
    }

    v42 = v26;
    v43 = v20;
    goto LABEL_15;
  }

  if (EnumCaseMultiPayload)
  {
    sub_1004BA578(v20, v9, type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint);
    v27 = &v9[*(v7 + 28)];
    v23 = *v27;
    v25 = v27[1];

    sub_1004BA5E0(v9, type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint);
    if (!v25)
    {
      return;
    }

    goto LABEL_9;
  }

  sub_1004BA578(v20, v12, type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint);
  if (!NWEndpoint.nw.getter())
  {
    __break(1u);
    return;
  }

  device_id = nw_endpoint_get_device_id();
  swift_unknownObjectRelease();
  if (!device_id)
  {
    v42 = type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint;
    v43 = v12;
LABEL_15:
    sub_1004BA5E0(v43, v42);
    return;
  }

  v23 = String.init(cString:)();
  v25 = v24;
  sub_1004BA5E0(v12, type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint);
LABEL_9:
  if (qword_100973910 != -1)
  {
    swift_once();
  }

  v28 = type metadata accessor for Logger();
  v29 = sub_10000C4AC(v28, qword_1009800F8);
  sub_1004BA418(a1, v18, type metadata accessor for SDAirDropDiscoveredEndpoint);
  v59 = v29;
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.default.getter();
  v32 = os_log_type_enabled(v30, v31);
  v60 = a1;
  if (v32)
  {
    v33 = swift_slowAlloc();
    v58 = v25;
    v34 = v33;
    v35 = swift_slowAlloc();
    v64[0] = v35;
    *v34 = 136315138;
    v36 = sub_10032DA30();
    v57 = v23;
    v37 = v6;
    v38 = v2;
    v40 = v39;
    sub_1004BA5E0(v18, type metadata accessor for SDAirDropDiscoveredEndpoint);
    v41 = sub_10000C4E4(v36, v40, v64);
    v2 = v38;
    v6 = v37;
    v23 = v57;

    *(v34 + 4) = v41;
    _os_log_impl(&_mh_execute_header, v30, v31, "Checking if backup Ask needed for %s", v34, 0xCu);
    sub_10000C60C(v35);

    v25 = v58;
  }

  else
  {

    sub_1004BA5E0(v18, type metadata accessor for SDAirDropDiscoveredEndpoint);
  }

  v44 = OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropAskFanoutHelper_needsFallbackDeviceIDs;
  swift_beginAccess();
  v45 = *(v2 + v44);

  v46 = sub_100569230(v23, v25, v45);

  if (v46)
  {
    swift_beginAccess();
    sub_10036DB18(v23, v25);
    swift_endAccess();

    v47 = type metadata accessor for TaskPriority();
    (*(*(v47 - 8) + 56))(v6, 1, 1, v47);
    v48 = swift_allocObject();
    swift_weakInit();
    v49 = v62;
    sub_1004BA418(v60, v62, type metadata accessor for SDAirDropDiscoveredEndpoint);
    v50 = (*(v61 + 80) + 40) & ~*(v61 + 80);
    v51 = swift_allocObject();
    v51[2] = 0;
    v51[3] = 0;
    v51[4] = v48;
    sub_1004BA578(v49, v51 + v50, type metadata accessor for SDAirDropDiscoveredEndpoint);
    v52 = sub_1002B3098(0, 0, v6, &unk_100806160, v51);
    swift_beginAccess();

    sub_10046F2E0(&v63, v52);
    swift_endAccess();
  }

  else
  {

    v53 = Logger.logObject.getter();
    v54 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      *v55 = 0;
      _os_log_impl(&_mh_execute_header, v53, v54, "Fallback not needed", v55, 2u);
    }
  }
}

uint64_t sub_1004B603C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AnyCancellable.cancel()();
  AnyCancellable.cancel()();
  v4 = OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropAskFanoutHelper_askTasks;
  swift_beginAccess();
  v5 = *(a3 + v4);
  v8 = *(v5 + 56);
  v7 = v5 + 56;
  v6 = v8;
  v9 = 1 << *(*(a3 + v4) + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & v6;
  v12 = (v9 + 63) >> 6;
  result = swift_bridgeObjectRetain_n();
  v14 = 0;
  if (v11)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v15 >= v12)
    {

      *(a3 + v4) = &_swiftEmptySetSingleton;
    }

    v11 = *(v7 + 8 * v15);
    ++v14;
    if (v11)
    {
      v14 = v15;
      do
      {
LABEL_9:
        v11 &= v11 - 1;

        Task.cancel()();
      }

      while (v11);
      continue;
    }
  }

  __break(1u);
  return result;
}

void sub_1004B61AC(uint64_t a1)
{
  v2 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  __chkstk_darwin(v2 - 8);
  v59 = &v55 - v3;
  v4 = type metadata accessor for UUID();
  v62 = *(v4 - 8);
  v63 = v4;
  v5 = __chkstk_darwin(v4);
  v56 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v61 = &v55 - v7;
  v8 = type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint(0);
  v57 = *(v8 - 8);
  v9 = *(v57 + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v58 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v55 - v11;
  v13 = sub_10028088C(&qword_1009763E0, &qword_1007F95D0);
  __chkstk_darwin(v13 - 8);
  v15 = &v55 - v14;
  v16 = type metadata accessor for SDAirDropDiscoveredEndpoint(0);
  v17 = *(v16 - 8);
  v18 = __chkstk_darwin(v16);
  v20 = &v55 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v55 - v21;
  sub_10000FF90(a1, v15, &qword_1009763E0, &qword_1007F95D0);
  if ((*(v17 + 48))(v15, 1, v16) != 1)
  {
    sub_1004BA578(v15, v22, type metadata accessor for SDAirDropDiscoveredEndpoint);
    sub_1004BA418(v22, v20, type metadata accessor for SDAirDropDiscoveredEndpoint);
    if (swift_getEnumCaseMultiPayload())
    {
      sub_1004BA5E0(v20, type metadata accessor for SDAirDropDiscoveredEndpoint);
      if (qword_100973910 != -1)
      {
        swift_once();
      }

      v27 = type metadata accessor for Logger();
      sub_10000C4AC(v27, qword_1009800F8);
      v28 = Logger.logObject.getter();
      v29 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        *v30 = 0;
        _os_log_impl(&_mh_execute_header, v28, v29, "We only handle Application Service endpoints for fallbacks", v30, 2u);
      }
    }

    else
    {
      v31 = v20;
      v32 = v12;
      sub_1004BA578(v31, v12, type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint);
      v33 = OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropAskFanoutHelper_failedResolveEndpointIDs;
      v34 = v60;
      swift_beginAccess();
      v35 = *(v34 + v33);

      v37 = v61;
      sub_10032C0AC(v36);
      v38 = sub_100569018(v37, v35);

      v39 = v63;
      v40 = *(v62 + 1);
      v41 = v40(v37, v63);
      if ((v38 & 1) == 0)
      {
        v62 = v22;
        v47 = v56;
        sub_10032C0AC(v41);
        swift_beginAccess();
        sub_10046E0A4(v37, v47);
        swift_endAccess();
        v40(v37, v39);
        v48 = type metadata accessor for TaskPriority();
        v49 = v59;
        (*(*(v48 - 8) + 56))(v59, 1, 1, v48);
        v50 = swift_allocObject();
        swift_weakInit();
        v51 = v58;
        sub_1004BA418(v32, v58, type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint);
        v52 = (*(v57 + 80) + 40) & ~*(v57 + 80);
        v53 = swift_allocObject();
        v53[2] = 0;
        v53[3] = 0;
        v53[4] = v50;
        sub_1004BA578(v51, v53 + v52, type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint);
        v54 = sub_1002B3098(0, 0, v49, &unk_100806130, v53);
        swift_beginAccess();

        sub_10046F2E0(&v64, v54);
        swift_endAccess();

        sub_1004BA5E0(v32, type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint);
        v46 = v62;
        goto LABEL_20;
      }

      if (qword_100973910 != -1)
      {
        swift_once();
      }

      v42 = type metadata accessor for Logger();
      sub_10000C4AC(v42, qword_1009800F8);
      v43 = Logger.logObject.getter();
      v44 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        *v45 = 0;
        _os_log_impl(&_mh_execute_header, v43, v44, "We only attempt a fallback once per endpoint, for each send", v45, 2u);
      }

      sub_1004BA5E0(v32, type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint);
    }

    v46 = v22;
LABEL_20:
    sub_1004BA5E0(v46, type metadata accessor for SDAirDropDiscoveredEndpoint);
    return;
  }

  sub_100005508(v15, &qword_1009763E0, &qword_1007F95D0);
  if (qword_100973910 != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for Logger();
  sub_10000C4AC(v23, qword_1009800F8);
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&_mh_execute_header, v24, v25, "No endpoint provided from failure, skipping fallback", v26, 2u);
  }
}

uint64_t sub_1004B69F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[9] = a4;
  v5[10] = a5;
  v6 = sub_10028088C(&qword_10097B340, &qword_100806090);
  v5[11] = v6;
  v5[12] = *(v6 - 8);
  v5[13] = swift_task_alloc();

  return _swift_task_switch(sub_1004B6AC4, 0, 0);
}

uint64_t sub_1004B6AC4()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 112) = Strong;
  if (Strong)
  {

    return _swift_task_switch(sub_1004B6B84, Strong, 0);
  }

  else
  {

    v2 = *(v0 + 8);

    return v2();
  }
}

uint64_t sub_1004B6B84()
{
  if (sub_1004B6F88(v0[10]))
  {
    v1 = swift_task_alloc();
    v0[15] = v1;
    *v1 = v0;
    v1[1] = sub_1004B6CE0;
    v2 = v0[10];

    return sub_1004B751C(v2);
  }

  else
  {
    v4 = v0[14];
    v5 = v0[11];
    v6 = v0[12];
    v7 = OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropAskFanoutHelper_askContinuation;
    swift_beginAccess();
    if ((*(v6 + 48))(v4 + v7, 1, v5))
    {
      v8 = sub_1004BAC78;
    }

    else
    {
      (*(v0[12] + 16))(v0[13], v4 + v7, v0[11]);
      v8 = sub_1004B6E44;
    }

    return _swift_task_switch(v8, 0, 0);
  }
}

uint64_t sub_1004B6CE0()
{

  return _swift_task_switch(sub_1004B6DDC, 0, 0);
}

uint64_t sub_1004B6DDC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1004B6E44()
{
  v1 = v0[13];
  v2 = v0[11];
  v3 = v0[12];
  v4 = type metadata accessor for SFAirDropSend.Failure();
  sub_1004BA228(&qword_1009755A0, &type metadata accessor for SFAirDropSend.Failure, &protocol conformance descriptor for SFAirDropSend.Failure);
  v5 = swift_allocError();
  (*(*(v4 - 8) + 104))(v6, enum case for SFAirDropSend.Failure.badRequest(_:), v4);
  v0[8] = v5;
  SFProgressContinuation.yield(_:)();

  (*(v3 + 8))(v1, v2);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1004B6F88(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for SDAirDropDiscoveredEndpoint(0);
  v5 = __chkstk_darwin(v4);
  v7 = v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = v45 - v9;
  __chkstk_darwin(v8);
  v12 = v45 - v11;
  v13 = *sub_10002CDC0((v1 + OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropAskFanoutHelper_runner), *(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropAskFanoutHelper_runner + 24));
  v14 = OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine6Runner_sendConnections;
  swift_beginAccess();
  v15 = *(v13 + v14);
  v47 = a1;

  sub_100390318(sub_1004BAC58, v46, v15);
  v17 = v16;

  sub_10032E82C();
  if (!v18)
  {
    goto LABEL_9;
  }

  v19 = OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropAskFanoutHelper_needsFallbackDeviceIDs;
  swift_beginAccess();
  v45[1] = v19;
  v20 = *(v2 + v19);

  result = sub_10032E82C();
  if (!v22)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    return result;
  }

  v23 = sub_100569230(result, v22, v20);

  if (v23)
  {
    sub_1004BA418(a1, v12, type metadata accessor for SDAirDropDiscoveredEndpoint);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1004BA5E0(v12, type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint);
      if (qword_100973910 != -1)
      {
        swift_once();
      }

      v24 = type metadata accessor for Logger();
      sub_10000C4AC(v24, qword_1009800F8);
      sub_1004BA418(a1, v10, type metadata accessor for SDAirDropDiscoveredEndpoint);
      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v48[0] = v28;
        *v27 = 136315138;
        v29 = sub_10032DA30();
        v31 = v30;
        sub_1004BA5E0(v10, type metadata accessor for SDAirDropDiscoveredEndpoint);
        v32 = sub_10000C4E4(v29, v31, v48);

        *(v27 + 4) = v32;
        _os_log_impl(&_mh_execute_header, v25, v26, "Running fallback Ask for endpoint %s", v27, 0xCu);
        sub_10000C60C(v28);
      }

      else
      {

        sub_1004BA5E0(v10, type metadata accessor for SDAirDropDiscoveredEndpoint);
      }

      result = sub_10032E82C();
      if (v42)
      {
        v43 = result;
        v44 = v42;
        swift_beginAccess();
        sub_10036DB18(v43, v44);
        swift_endAccess();

        return 1;
      }

      goto LABEL_23;
    }

    sub_1004BA5E0(v12, type metadata accessor for SDAirDropDiscoveredEndpoint);
    if ((v17 & 1) == 0)
    {
      return 1;
    }
  }

  else
  {
LABEL_9:
    if ((v17 & 1) == 0)
    {
      return 1;
    }
  }

  if (qword_100973910 != -1)
  {
    swift_once();
  }

  v33 = type metadata accessor for Logger();
  sub_10000C4AC(v33, qword_1009800F8);
  sub_1004BA418(a1, v7, type metadata accessor for SDAirDropDiscoveredEndpoint);
  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v48[0] = v37;
    *v36 = 136315138;
    v38 = sub_10032DA30();
    v40 = v39;
    sub_1004BA5E0(v7, type metadata accessor for SDAirDropDiscoveredEndpoint);
    v41 = sub_10000C4E4(v38, v40, v48);

    *(v36 + 4) = v41;
    _os_log_impl(&_mh_execute_header, v34, v35, "Endpoint already exists in runner endpoints, ignoring %s", v36, 0xCu);
    sub_10000C60C(v37);
  }

  else
  {

    sub_1004BA5E0(v7, type metadata accessor for SDAirDropDiscoveredEndpoint);
  }

  return 0;
}

uint64_t sub_1004B751C(uint64_t a1)
{
  v2[60] = a1;
  v2[61] = v1;
  sub_10028088C(&qword_10097B338, &unk_1007FE730);
  v2[62] = swift_task_alloc();
  v2[63] = sub_10028088C(&qword_10097B348, &qword_1007FE748);
  v2[64] = swift_task_alloc();
  v3 = sub_10028088C(&qword_10097B340, &qword_100806090);
  v2[65] = v3;
  v2[66] = *(v3 - 8);
  v2[67] = swift_task_alloc();
  v2[68] = sub_10028088C(&qword_10097B320, &qword_100806120);
  v2[69] = swift_task_alloc();
  v2[70] = swift_task_alloc();
  v2[71] = swift_task_alloc();
  v2[72] = swift_task_alloc();

  return _swift_task_switch(sub_1004B76BC, v1, 0);
}

uint64_t sub_1004B76BC()
{
  v1 = v0[61];
  sub_1002A9938(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropAskFanoutHelper_runner, (v0 + 45));
  sub_10002CDC0(v0 + 45, v0[48]);
  v2 = OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropAskFanoutHelper_sendRequest;
  if (SFAirDropSend.Request.supportsPipelining.getter() & 1) != 0 && (sub_10032ED50() & 1) != 0 && *(v0[61] + OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropAskFanoutHelper_pipelinedUploadAvailable) == 1 && (sub_10032F010())
  {
    *(v0[61] + OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropAskFanoutHelper_pipelinedUploadAvailable) = 0;
    v3 = 1;
  }

  else
  {
    v3 = 0;
  }

  v4 = v0[72];
  v5 = v0[68];
  v6 = v5[12];
  v7 = v5[20];
  v8 = v5[32];
  v9 = swift_task_alloc();
  v0[73] = v9;
  *v9 = v0;
  v9[1] = sub_1004B7824;
  v10 = v0[60];

  return sub_1003B1C7C((v0 + 2), v4 + v6, v4 + v7, v4 + v8, v10, v3, v1 + v2);
}

uint64_t sub_1004B7824()
{
  v2 = *v1;
  v3 = *v1;
  v3[74] = v0;
  v4 = *(v3 + 4);
  *(v3 + 604) = *(v3 + 20);
  *(v3 + 150) = v4;
  v3[76] = v2[3];
  v3[77] = v2[4];
  *(v3 + 39) = *(v3 + 5);
  v3[80] = v2[7];
  *(v3 + 740) = *(v3 + 64);
  *(v3 + 81) = *(v3 + 9);
  *(v3 + 83) = *(v3 + 11);
  *(v3 + 85) = *(v3 + 13);
  *(v3 + 87) = *(v3 + 15);
  v3[89] = v2[17];
  v3[90] = v2[18];

  if (v0)
  {
    v5 = v3[61];
    v6 = sub_1004B7FF4;
  }

  else
  {
    v7 = v3[68];
    v5 = v3[61];
    *(v3 + 182) = v7[16];
    *(v3 + 183) = v7[24];
    *(v3 + 184) = v7[28];
    v6 = sub_1004B7A28;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1004B7A28()
{
  v1 = *(v0 + 736);
  v2 = *(v0 + 728);
  v3 = *(v0 + 712);
  v4 = *(v0 + 740);
  v5 = *(v0 + 640);
  v6 = *(v0 + 632);
  v7 = *(v0 + 616);
  v8 = *(v0 + 608);
  v9 = *(v0 + 600);
  v10 = *(v0 + 576);
  v11 = *(v0 + 568);
  v12 = *(v0 + 560);
  v13 = *(v0 + 544);
  v14 = *(v0 + 528);
  v73 = *(v0 + 520);
  v15 = *(v0 + 488);
  v16 = v10 + *(v0 + 732);
  v17 = *(v0 + 648);
  v18 = *(v0 + 664);
  v19 = *(v0 + 680);
  v20 = *(v0 + 696);
  *(v10 + 4) = *(v0 + 604);
  *v10 = v9;
  *(v10 + v2) = v8;
  *v16 = v7;
  *(v16 + 16) = v6;
  *(v16 + 24) = v5;
  *(v16 + 32) = v4;
  *(v16 + 40) = v17;
  *(v16 + 56) = v18;
  *(v16 + 72) = v19;
  *(v16 + 88) = v20;
  *(v10 + v1) = v3;
  sub_10000C60C((v0 + 360));
  sub_10000FF90(v10, v11, &qword_10097B320, &qword_100806120);
  v21 = *v11;
  v22 = *(v11 + 4);
  v23 = v13[12];
  v24 = *(v11 + v13[16]);
  v25 = v13[20];
  v26 = v11 + v13[24];
  v28 = *(v26 + 48);
  v27 = *(v26 + 64);
  v29 = *(v26 + 96);
  *(v0 + 232) = *(v26 + 80);
  *(v0 + 248) = v29;
  *(v0 + 200) = v28;
  v31 = *(v26 + 16);
  v30 = *(v26 + 32);
  *(v0 + 152) = *v26;
  *(v0 + 168) = v31;
  *(v0 + 184) = v30;
  *(v0 + 216) = v27;
  v32 = *(v11 + v13[28]);
  v33 = v13[32];
  *(v12 + 4) = v22;
  *v12 = v21;
  v77 = v23;
  sub_1004BA418(v11 + v23, v12 + v13[12], _s10AskRequestVMa);
  *(v12 + v13[16]) = v24;
  v76 = v25;
  sub_1004BA418(v11 + v25, v12 + v13[20], type metadata accessor for SDAirDropDiscoveredEndpoint);
  v34 = v12 + v13[24];
  v35 = *(v0 + 248);
  v36 = *(v0 + 232);
  v37 = *(v0 + 216);
  *(v34 + 48) = *(v0 + 200);
  *(v34 + 64) = v37;
  *(v34 + 80) = v36;
  *(v34 + 96) = v35;
  v38 = *(v0 + 184);
  v39 = *(v0 + 168);
  *v34 = *(v0 + 152);
  *(v34 + 16) = v39;
  *(v34 + 32) = v38;
  *(v12 + v13[28]) = v32;
  v40 = v13[32];
  v41 = v33;
  sub_10000FF90(v11 + v33, v12 + v40, &qword_10097B1B8, &qword_1007FE4C0);
  v42 = v24;
  sub_1003C34C8(v0 + 152, v0 + 256);
  v43 = OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropAskFanoutHelper_askContinuation;
  swift_beginAccess();
  if ((*(v14 + 48))(v15 + v43, 1, v73))
  {
    sub_100005508(*(v0 + 560), &qword_10097B320, &qword_100806120);
    swift_endAccess();
    sub_10030D74C(v0 + 152);
  }

  else
  {
    v44 = *(v0 + 560);
    v68 = *(v0 + 720);
    v69 = v44;
    v45 = *(v0 + 552);
    v70 = v42;
    v46 = *(v0 + 544);
    v71 = *(v0 + 528);
    v72 = v41;
    v66 = *(v0 + 520);
    v67 = *(v0 + 536);
    v47 = *(v0 + 512);
    v74 = *(v0 + 504);
    (*(v71 + 16))();
    swift_endAccess();
    sub_10000FF90(v44, v45, &qword_10097B320, &qword_100806120);
    v48 = *v45;
    v49 = v46[12];
    v50 = v46[16];
    v63 = *(v45 + v50);
    v51 = v46[20];
    v52 = v46[24];
    v82 = *(v45 + v52 + 64);
    v83 = *(v45 + v52 + 80);
    v84 = *(v45 + v52 + 96);
    v78 = *(v45 + v52);
    v79 = *(v45 + v52 + 16);
    v53 = v46[28];
    v80 = *(v45 + v52 + 32);
    v81 = *(v45 + v52 + 48);
    v54 = v46[32];
    v64 = *(v45 + v53);
    v65 = *(v74 + 48);
    v75 = v15;
    v55 = v47 + v52;
    *(v47 + 4) = *(v45 + 4);
    *v47 = v48;
    sub_1004BA578(v45 + v49, v47 + v49, _s10AskRequestVMa);
    *(v47 + v50) = v63;
    sub_1004BA578(v45 + v51, v47 + v51, type metadata accessor for SDAirDropDiscoveredEndpoint);
    *(v55 + 64) = v82;
    *(v55 + 80) = v83;
    *(v55 + 96) = v84;
    *v55 = v78;
    *(v55 + 16) = v79;
    *(v55 + 32) = v80;
    *(v55 + 48) = v81;
    v15 = v75;
    *(v47 + v53) = v64;
    sub_10002C4E4(v45 + v54, v47 + v54, &qword_10097B1B8, &qword_1007FE4C0);
    *(v47 + v65) = v68;
    v56 = v68;
    SFProgressContinuation.finish(with:)();
    sub_10030D74C(v0 + 152);

    v57 = v47;
    v41 = v72;
    sub_100005508(v57, &qword_10097B348, &qword_1007FE748);
    (*(v71 + 8))(v67, v66);
    sub_100005508(v69, &qword_10097B320, &qword_100806120);
  }

  v58 = *(v0 + 720);
  v59 = *(v0 + 576);
  v60 = *(v0 + 496);
  (*(*(v0 + 528) + 56))(v60, 1, 1, *(v0 + 520));
  swift_beginAccess();
  sub_1004BA290(v60, v15 + v43);
  swift_endAccess();
  sub_100005508(v11 + v41, &qword_10097B1B8, &qword_1007FE4C0);
  sub_1004BA5E0(v11 + v76, type metadata accessor for SDAirDropDiscoveredEndpoint);
  sub_1004BA5E0(v11 + v77, _s10AskRequestVMa);

  sub_100005508(v59, &qword_10097B320, &qword_100806120);

  v61 = *(v0 + 8);

  return v61();
}

uint64_t sub_1004B7FF4()
{
  v1 = v0[66];
  v2 = v0[65];
  v3 = v0[61];
  sub_10000C60C(v0 + 45);
  v4 = OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropAskFanoutHelper_askContinuation;
  swift_beginAccess();
  if ((*(v1 + 48))(v3 + v4, 1, v2))
  {
  }

  else
  {
    v5 = v0[74];
    v6 = v0[67];
    v7 = v0[66];
    v8 = v0[65];
    (*(v7 + 16))(v6, v3 + v4, v8);
    v0[59] = v5;
    SFProgressContinuation.yield(_:)();

    (*(v7 + 8))(v6, v8);
  }

  v9 = v0[1];

  return v9();
}

uint64_t sub_1004B8168(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  type metadata accessor for SDAirDropDiscoveredEndpoint(0);
  v5[7] = swift_task_alloc();

  return _swift_task_switch(sub_1004B81F8, 0, 0);
}

uint64_t sub_1004B81F8()
{
  v20 = v0;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[8] = Strong;
  if (Strong)
  {
    if (qword_100973910 != -1)
    {
      swift_once();
    }

    v3 = v0[6];
    v2 = v0[7];
    v4 = type metadata accessor for Logger();
    sub_10000C4AC(v4, qword_1009800F8);
    sub_1004BA418(v3, v2, type metadata accessor for SDAirDropDiscoveredEndpoint);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    v7 = os_log_type_enabled(v5, v6);
    v8 = v0[7];
    if (v7)
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v19 = v10;
      *v9 = 136315138;
      v11 = sub_10032DA30();
      v13 = v12;
      sub_1004BA5E0(v8, type metadata accessor for SDAirDropDiscoveredEndpoint);
      v14 = sub_10000C4E4(v11, v13, &v19);

      *(v9 + 4) = v14;
      _os_log_impl(&_mh_execute_header, v5, v6, "Sending backup Ask to new endpoint: %s", v9, 0xCu);
      sub_10000C60C(v10);
    }

    else
    {

      sub_1004BA5E0(v8, type metadata accessor for SDAirDropDiscoveredEndpoint);
    }

    v17 = swift_task_alloc();
    v0[9] = v17;
    *v17 = v0;
    v17[1] = sub_1004B84A4;
    v18 = v0[6];

    return sub_1004B751C(v18);
  }

  else
  {

    v15 = v0[1];

    return v15();
  }
}

uint64_t sub_1004B84A4()
{

  return _swift_task_switch(sub_1004B85A0, 0, 0);
}

uint64_t sub_1004B85A0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1004B8608(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[10] = a4;
  v5[11] = a5;
  v6 = sub_10028088C(&qword_10097B340, &qword_100806090);
  v5[12] = v6;
  v5[13] = *(v6 - 8);
  v5[14] = swift_task_alloc();
  v7 = type metadata accessor for ContinuousClock();
  v5[15] = v7;
  v5[16] = *(v7 - 8);
  v5[17] = swift_task_alloc();
  v8 = type metadata accessor for SFAirDrop.TransferType();
  v5[18] = v8;
  v5[19] = *(v8 - 8);
  v5[20] = swift_task_alloc();
  v5[21] = swift_task_alloc();
  sub_10028088C(&qword_1009763E0, &qword_1007F95D0);
  v5[22] = swift_task_alloc();
  v9 = type metadata accessor for SDAirDropDiscoveredEndpoint(0);
  v5[23] = v9;
  v5[24] = *(v9 - 8);
  v5[25] = swift_task_alloc();
  v5[26] = swift_task_alloc();

  return _swift_task_switch(sub_1004B8838, 0, 0);
}

uint64_t sub_1004B8838()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[27] = Strong;
  if (Strong)
  {
    v0[28] = OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropAskFanoutHelper_runner;

    return _swift_task_switch(sub_1004B895C, Strong, 0);
  }

  else
  {

    v2 = v0[1];

    return v2();
  }
}

uint64_t sub_1004B895C()
{
  v1 = (v0[27] + v0[28]);
  v2 = v1[3];
  v0[29] = v2;
  sub_10002CDC0(v1, v2);
  v3 = *(v2 - 8);
  v0[30] = v3;
  v0[31] = swift_task_alloc();
  (*(v3 + 16))();

  return _swift_task_switch(sub_1004B8A50, 0, 0);
}

uint64_t sub_1004B8A50()
{
  v40 = v0;
  v1 = v0[31];
  v2 = v0[29];
  v3 = v0[23];
  v4 = v0[24];
  v5 = v0[22];
  v6 = v0[11];
  v7 = *(v0[30] + 8);

  v7(v1, v2);
  CurrentValueSubject.value.getter();

  v8 = v0[8];
  *(swift_task_alloc() + 16) = v6;
  sub_1002CC594(sub_1004BA3F8, v8, v5);

  if ((*(v4 + 48))(v5, 1, v3) == 1)
  {
    sub_100005508(v0[22], &qword_1009763E0, &qword_1007F95D0);
    result = NWEndpoint.nw.getter();
    if (result)
    {
      device_id = nw_endpoint_get_device_id();
      swift_unknownObjectRelease();
      if (device_id)
      {
        v11 = String.init(cString:)();
        v13 = v12;
        v0[32] = v12;
        v14 = swift_task_alloc();
        v0[33] = v14;
        *v14 = v0;
        v14[1] = sub_1004B8FA8;

        return sub_1004B9924(v11, v13);
      }

      else
      {
        v31 = v0[20];
        v30 = v0[21];
        v32 = v0[18];
        v33 = v0[19];
        SFAirDropSend.Request.type.getter();
        (*(v33 + 104))(v31, enum case for SFAirDrop.TransferType.peerPayment(_:), v32);
        v34 = static SFAirDrop.TransferType.== infix(_:_:)();
        v35 = *(v33 + 8);
        v35(v31, v32);
        v35(v30, v32);
        if (v34)
        {
          v36 = 0x8155A43676E00000;
        }

        else
        {
          v36 = 0x70801D946C940000;
        }

        if (v34)
        {
          v37 = 6;
        }

        else
        {
          v37 = 2;
        }

        static Clock<>.continuous.getter();
        v38 = swift_task_alloc();
        v0[35] = v38;
        *v38 = v0;
        v38[1] = sub_1004B941C;

        return sub_10002ED10(v36, v37, 0, 0, 1);
      }
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    sub_1004BA578(v0[22], v0[26], type metadata accessor for SDAirDropDiscoveredEndpoint);
    if (qword_100973910 != -1)
    {
      swift_once();
    }

    v15 = v0[25];
    v16 = v0[26];
    v17 = type metadata accessor for Logger();
    sub_10000C4AC(v17, qword_1009800F8);
    sub_1004BA418(v16, v15, type metadata accessor for SDAirDropDiscoveredEndpoint);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();
    v20 = os_log_type_enabled(v18, v19);
    v21 = v0[25];
    if (v20)
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v39 = v23;
      *v22 = 136315138;
      v24 = sub_10032DA30();
      v26 = v25;
      sub_1004BA5E0(v21, type metadata accessor for SDAirDropDiscoveredEndpoint);
      v27 = sub_10000C4E4(v24, v26, &v39);

      *(v22 + 4) = v27;
      _os_log_impl(&_mh_execute_header, v18, v19, "Sending backup Ask to existing backup endpoint: %s", v22, 0xCu);
      sub_10000C60C(v23);
    }

    else
    {

      sub_1004BA5E0(v21, type metadata accessor for SDAirDropDiscoveredEndpoint);
    }

    v28 = swift_task_alloc();
    v0[34] = v28;
    *v28 = v0;
    v28[1] = sub_1004B924C;
    v29 = v0[26];

    return sub_1004B751C(v29);
  }

  return result;
}

uint64_t sub_1004B8FA8()
{

  return _swift_task_switch(sub_1004B90C0, 0, 0);
}

uint64_t sub_1004B90C0(uint64_t a1)
{
  v3 = v1[20];
  v2 = v1[21];
  v4 = v1[18];
  v5 = v1[19];
  SFAirDropSend.Request.type.getter();
  (*(v5 + 104))(v3, enum case for SFAirDrop.TransferType.peerPayment(_:), v4);
  v6 = static SFAirDrop.TransferType.== infix(_:_:)();
  v7 = *(v5 + 8);
  v7(v3, v4);
  v7(v2, v4);
  if (v6)
  {
    v8 = 0x8155A43676E00000;
  }

  else
  {
    v8 = 0x70801D946C940000;
  }

  if (v6)
  {
    v9 = 6;
  }

  else
  {
    v9 = 2;
  }

  static Clock<>.continuous.getter();
  v10 = swift_task_alloc();
  v1[35] = v10;
  *v10 = v1;
  v10[1] = sub_1004B941C;

  return sub_10002ED10(v8, v9, 0, 0, 1);
}

uint64_t sub_1004B924C()
{

  return _swift_task_switch(sub_1004B9348, 0, 0);
}

uint64_t sub_1004B9348()
{
  v1 = *(v0 + 208);

  sub_1004BA5E0(v1, type metadata accessor for SDAirDropDiscoveredEndpoint);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1004B941C()
{
  v3 = *v1;
  v2 = *v1;

  v4 = v2[17];
  v5 = v2[16];
  v6 = v2[15];
  if (v0)
  {

    (*(v5 + 8))(v4, v6);
    v7 = sub_1004B95C8;
    v8 = 0;
  }

  else
  {
    (*(v5 + 8))(v4, v6);
    v8 = v3[27];
    v3[36] = OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropAskFanoutHelper_askContinuation;
    v7 = sub_1004B95F0;
  }

  return _swift_task_switch(v7, v8, 0);
}

uint64_t sub_1004B95C8()
{
  v1 = *(v0 + 216);
  *(v0 + 288) = OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropAskFanoutHelper_askContinuation;
  return _swift_task_switch(sub_1004B95F0, v1, 0);
}

uint64_t sub_1004B95F0()
{
  v1 = v0[36];
  v2 = v0[27];
  v3 = v0[12];
  v4 = v0[13];
  swift_beginAccess();
  if ((*(v4 + 48))(v2 + v1, 1, v3))
  {
    v5 = sub_1004B96CC;
  }

  else
  {
    (*(v0[13] + 16))(v0[14], v0[27] + v0[36], v0[12]);
    v5 = sub_1004B9784;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1004B96CC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1004B9784()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];
  v4 = type metadata accessor for SFAirDropSend.Failure();
  sub_1004BA228(&qword_1009755A0, &type metadata accessor for SFAirDropSend.Failure, &protocol conformance descriptor for SFAirDropSend.Failure);
  v5 = swift_allocError();
  v7 = v6;
  sub_10032C0AC(v5);
  (*(*(v4 - 8) + 104))(v7, enum case for SFAirDropSend.Failure.missingEndpoint(_:), v4);
  v0[9] = v5;
  SFProgressContinuation.yield(_:)();

  (*(v2 + 8))(v1, v3);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1004B9924(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  return _swift_task_switch(sub_1004B9948, v2, 0);
}

uint64_t sub_1004B9948()
{
  v13 = v0;
  if (qword_100973910 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000C4AC(v1, qword_1009800F8);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[5];
    v4 = v0[6];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v12 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_10000C4E4(v5, v4, &v12);
    _os_log_impl(&_mh_execute_header, v2, v3, "No backup endpoint present, adding deviceID for needsFallback %s", v6, 0xCu);
    sub_10000C60C(v7);
  }

  v8 = v0[6];
  v9 = v0[5];
  swift_beginAccess();

  sub_10046DAAC(&v12, v9, v8);
  swift_endAccess();

  v10 = v0[1];

  return v10();
}

uint64_t sub_1004B9B1C()
{
  v0 = sub_10032E82C();
  v2 = v1;
  result = NWEndpoint.nw.getter();
  if (result)
  {
    device_id = nw_endpoint_get_device_id();
    swift_unknownObjectRelease();
    if (device_id)
    {
      v5 = String.init(cString:)();
      if (v2)
      {
        if (v6)
        {
          if (v0 == v5 && v2 == v6)
          {

            v7 = 1;
          }

          else
          {
            v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
          }

          goto LABEL_14;
        }

        goto LABEL_9;
      }

      if (v6)
      {
        v7 = 0;
        goto LABEL_14;
      }
    }

    else if (v2)
    {
LABEL_9:
      v7 = 0;
LABEL_14:

      return v7 & 1;
    }

    v7 = 1;
    return v7 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1004B9C14()
{
  v0 = sub_10032B99C();
  v2 = v1;
  if (v0 == sub_10032B99C() && v2 == v3)
  {
LABEL_13:

    return 1;
  }

  v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v5)
  {
    return 1;
  }

  v6 = sub_10032E82C();
  v8 = v7;
  v9 = sub_10032E82C();
  if (v8)
  {
    if (v10)
    {
      if (v6 != v9 || v8 != v10)
      {
        v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

        return v12 & 1;
      }

      goto LABEL_13;
    }
  }

  else if (!v10)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_1004B9D50()
{
  v1 = OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropAskFanoutHelper_sendRequest;
  v2 = type metadata accessor for SFAirDropSend.Request();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropAskFanoutHelper_initialTransfer;
  v4 = type metadata accessor for SFAirDropSend.Transfer();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  sub_10000C60C((v0 + OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropAskFanoutHelper_runner));
  sub_100005508(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropAskFanoutHelper_askContinuation, &qword_10097B338, &unk_1007FE730);

  v5 = OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropAskFanoutHelper_askStart;
  v6 = type metadata accessor for Date();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1004B9EB8()
{
  sub_1004B9D50();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t type metadata accessor for SDAirDropAskFanoutHelper(uint64_t a1)
{
  result = qword_100980190;
  if (!qword_100980190)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1004B9F38(uint64_t a1)
{
  type metadata accessor for SFAirDropSend.Request();
  if (v1 <= 0x3F)
  {
    type metadata accessor for SFAirDropSend.Transfer();
    if (v2 <= 0x3F)
    {
      sub_1004BA0B8(319);
      if (v3 <= 0x3F)
      {
        type metadata accessor for Date();
        if (v4 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_1004BA0B8(uint64_t a1)
{
  if (!qword_1009801A0)
  {
    sub_100280938(&qword_10097B340, &qword_100806090);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_1009801A0);
    }
  }
}

unint64_t sub_1004BA170()
{
  result = qword_100980298;
  if (!qword_100980298)
  {
    sub_100280938(&qword_100980290, &qword_100809190);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100980298);
  }

  return result;
}

uint64_t sub_1004BA228(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1004BA270(uint64_t result)
{
  if (result != 1)
  {
    return swift_errorRetain();
  }

  return result;
}

uint64_t sub_1004BA280(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_1004BA290(uint64_t a1, uint64_t a2)
{
  v4 = sub_10028088C(&qword_10097B338, &unk_1007FE730);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1004BA300(uint64_t a1)
{
  v4 = *(type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint(0) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100005C00;

  return sub_1004B8608(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_1004BA418(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1004BA480(uint64_t a1)
{
  v4 = *(type metadata accessor for SDAirDropDiscoveredEndpoint(0) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100005C00;

  return sub_1004B57B4(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_1004BA578(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1004BA5E0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1004BA640(uint64_t a1)
{
  v4 = *(type metadata accessor for SDAirDropDiscoveredEndpoint(0) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100005C00;

  return sub_1004B8168(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_1004BA738(uint64_t a1)
{
  v4 = *(type metadata accessor for SDAirDropDiscoveredEndpoint(0) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100005C00;

  return sub_1004B4FB4(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_1004BA830(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100005C04;

  return sub_1002D65C0(a1, v4);
}

uint64_t sub_1004BA8E8()
{
  v1 = *(type metadata accessor for SDAirDropDiscoveredEndpoint(0) - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  swift_unknownObjectRelease();

  v4 = v0 + v2;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_100026AC0(*v4, *(v4 + 8));
      v12 = *(type metadata accessor for SDAirDropDiscoveredEndpoint.NearFieldEndpoint(0) + 20);
      v13 = type metadata accessor for UUID();
      (*(*(v13 - 8) + 8))(v4 + v12, v13);
      swift_unknownObjectRelease();
    }

    else if (EnumCaseMultiPayload == 3)
    {
    }
  }

  else if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {

      v6 = type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint(0);
      v7 = *(v6 + 20);
      v8 = type metadata accessor for NWEndpoint();
      (*(*(v8 - 8) + 8))(v4 + v7, v8);

      v9 = (v4 + *(v6 + 56));
      v10 = v9[1];
      if (v10 >> 60 != 15)
      {
        sub_100026AC0(*v9, v10);
      }
    }
  }

  else
  {
    v11 = type metadata accessor for NWEndpoint();
    (*(*(v11 - 8) + 8))(v0 + v2, v11);
  }

  return _swift_deallocObject(v0, v2 + v3);
}

uint64_t sub_1004BAB60(uint64_t a1)
{
  v4 = *(type metadata accessor for SDAirDropDiscoveredEndpoint(0) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100005C04;

  return sub_1004B69F8(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_1004BAC7C()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_1009802A8);
  v1 = sub_10000C4AC(v0, qword_1009802A8);
  if (qword_100973700 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C4AC(v0, qword_1009A0948);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_1004BAD44()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 objectForKey:v1];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_10000C5B0(v25, v24);
    if (swift_dynamicCast())
    {
      v3 = v22[0];
      if (v22[0] <= 2592000.0)
      {
        sub_10000C60C(v25);
        return;
      }

      if (qword_100973918 != -1)
      {
        swift_once();
      }

      v4 = type metadata accessor for Logger();
      sub_10000C4AC(v4, qword_1009802A8);
      v5 = Logger.logObject.getter();
      v6 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        v8 = swift_slowAlloc();
        v24[0] = v8;
        *v7 = 134218498;
        *(v7 + 4) = v3;
        *(v7 + 12) = 2080;
        *(v7 + 14) = sub_10000C4E4(0xD000000000000028, 0x80000001007927C0, v24);
        *(v7 + 22) = 2048;
        *(v7 + 24) = 0x4143C68000000000;
        _os_log_impl(&_mh_execute_header, v5, v6, "Pseudonym properties provider retrieved an invalid IDS Server Bag value %f for key %s greater than %f", v7, 0x20u);
        sub_10000C60C(v8);
      }
    }

    else
    {
      if (qword_100973918 != -1)
      {
        swift_once();
      }

      v14 = type metadata accessor for Logger();
      sub_10000C4AC(v14, qword_1009802A8);
      sub_10000C5B0(v25, v24);
      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        *v17 = 136315394;
        sub_10000C5B0(v24, v22);
        v18 = String.init<A>(describing:)();
        v20 = v19;
        sub_10000C60C(v24);
        v21 = sub_10000C4E4(v18, v20, &v23);

        *(v17 + 4) = v21;
        *(v17 + 12) = 2080;
        *(v17 + 14) = sub_10000C4E4(0xD000000000000028, 0x80000001007927C0, &v23);
        _os_log_impl(&_mh_execute_header, v15, v16, "Pseudonym properties provider retrieved an invalid IDS Server Bag object %s for key %s", v17, 0x16u);
        swift_arrayDestroy();
      }

      else
      {

        sub_10000C60C(v24);
      }
    }

    sub_10000C60C(v25);
  }

  else
  {
    if (qword_100973918 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_10000C4AC(v9, qword_1009802A8);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v25[0] = v13;
      *v12 = 136315138;
      *(v12 + 4) = sub_10000C4E4(0xD000000000000028, 0x80000001007927C0, v25);
      _os_log_impl(&_mh_execute_header, v10, v11, "Pseudonym properties provider failed to retrieve an IDS Server Bag object for key %s", v12, 0xCu);
      sub_10000C60C(v13);
    }
  }
}

uint64_t sub_1004BB21C()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 objectForKey:v1];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_10000C5B0(v20, v19);
    if (swift_dynamicCast())
    {
      sub_10000C60C(v20);
      return v17[0];
    }

    if (qword_100973918 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_10000C4AC(v9, qword_1009802A8);
    sub_10000C5B0(v20, v19);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v12 = 136315394;
      sub_10000C5B0(v19, v17);
      v13 = String.init<A>(describing:)();
      v15 = v14;
      sub_10000C60C(v19);
      v16 = sub_10000C4E4(v13, v15, &v18);

      *(v12 + 4) = v16;
      *(v12 + 12) = 2080;
      *(v12 + 14) = sub_10000C4E4(0xD000000000000019, 0x80000001007927A0, &v18);
      _os_log_impl(&_mh_execute_header, v10, v11, "Pseudonym properties provider retrieved an invalid IDS Server Bag object %s for key %s", v12, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      sub_10000C60C(v19);
    }

    sub_10000C60C(v20);
  }

  else
  {
    if (qword_100973918 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_10000C4AC(v4, qword_1009802A8);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v20[0] = v8;
      *v7 = 136315138;
      *(v7 + 4) = sub_10000C4E4(0xD000000000000019, 0x80000001007927A0, v20);
      _os_log_impl(&_mh_execute_header, v5, v6, "Pseudonym properties provider failed to retrieve an IDS Server Bag object for key %s", v7, 0xCu);
      sub_10000C60C(v8);
    }
  }

  return 1;
}

uint64_t sub_1004BB5B4()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_1009802C0);
  v1 = sub_10000C4AC(v0, qword_1009802C0);
  if (qword_1009736D0 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C4AC(v0, qword_1009A08B8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1004BB67C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  sub_10028088C(&unk_100974E00, &qword_1007F8940);
  v2[4] = swift_task_alloc();
  sub_10028088C(&qword_1009803B8, &unk_100807F30);
  v2[5] = swift_task_alloc();
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v3 = type metadata accessor for URL();
  v2[8] = v3;
  v2[9] = *(v3 - 8);
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v4 = type metadata accessor for SFAirDrop.TransferType();
  v2[12] = v4;
  v2[13] = *(v4 - 8);
  v2[14] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v5 = static AirDropActor.shared;

  return _swift_task_switch(sub_1004BB864, v5, 0);
}

uint64_t sub_1004BB864(uint64_t a1)
{
  v3 = v1[13];
  v2 = v1[14];
  v4 = v1[12];
  SFAirDropReceive.AskRequest.type.getter();
  v5 = SFAirDrop.TransferType.isLinks.getter();
  (*(v3 + 8))(v2, v4);
  if ((v5 & 1) == 0)
  {
    v36 = 0;
    goto LABEL_30;
  }

  v6 = v1[9];
  result = SFAirDropReceive.AskRequest.urlItems.getter();
  v8 = 0;
  v9 = *(result + 56);
  v48 = result + 56;
  v10 = -1;
  v11 = -1 << *(result + 32);
  if (-v11 < 64)
  {
    v10 = ~(-1 << -v11);
  }

  v12 = v10 & v9;
  v49 = v6;
  v50 = (v6 + 8);
  v51 = result;
  v47 = (63 - v11) >> 6;
  if ((v10 & v9) != 0)
  {
    while (1)
    {
LABEL_12:
      v16 = v1[11];
      v18 = v1[7];
      v17 = v1[8];
      v19 = v1[6];
      v20 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      (*(v49 + 16))(v16, *(v51 + 48) + *(v49 + 72) * (v20 | (v8 << 6)), v17);
      URLComponents.init(url:resolvingAgainstBaseURL:)();
      (*(v49 + 8))(v16, v17);
      sub_1004BCD60(v18, v19);
      v21 = type metadata accessor for URLComponents();
      v22 = *(v21 - 8);
      v23 = *(v22 + 48);
      v24 = v23(v19, 1, v21);
      v25 = v1[6];
      if (v24 == 1)
      {
        sub_100005508(v1[6], &qword_1009803B8, &unk_100807F30);
LABEL_18:
        v30 = v1[5];
        sub_1004BCD60(v1[7], v30);
        v31 = v23(v30, 1, v21);
        v32 = v1[5];
        if (v31 == 1)
        {
          sub_100005508(v1[5], &qword_1009803B8, &unk_100807F30);
LABEL_34:
          sub_100005508(v1[7], &qword_1009803B8, &unk_100807F30);

          v36 = 0;
          goto LABEL_30;
        }

        v33 = URLComponents.scheme.getter();
        v35 = v34;
        (*(v22 + 8))(v32, v21);
        if (!v35)
        {
          goto LABEL_34;
        }

        if (v33 == 0xD000000000000010 && v35 == 0x80000001007928B0)
        {
LABEL_22:

          goto LABEL_23;
        }

        v13 = v1[7];
        v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

        result = sub_100005508(v13, &qword_1009803B8, &unk_100807F30);
        if ((v14 & 1) == 0)
        {

          v36 = 0;
          goto LABEL_30;
        }

        if (!v12)
        {
          goto LABEL_8;
        }
      }

      else
      {
        v26 = URLComponents.scheme.getter();
        v28 = v27;
        (*(v22 + 8))(v25, v21);
        if (!v28)
        {
          goto LABEL_18;
        }

        if (v26 == 0xD000000000000013 && v28 == 0x8000000100792910)
        {
          goto LABEL_22;
        }

        v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v29 & 1) == 0)
        {
          goto LABEL_18;
        }

LABEL_23:
        result = sub_100005508(v1[7], &qword_1009803B8, &unk_100807F30);
        if (!v12)
        {
          goto LABEL_8;
        }
      }
    }
  }

  while (1)
  {
LABEL_8:
    v15 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
      return result;
    }

    if (v15 >= v47)
    {
      break;
    }

    v12 = *(v48 + 8 * v15);
    ++v8;
    if (v12)
    {
      v8 = v15;
      goto LABEL_12;
    }
  }

  v38 = v1[8];
  v37 = v1[9];
  v39 = v1[4];

  v40 = SFAirDropReceive.AskRequest.urlItems.getter();
  sub_1002FB398(v40, v39);

  if ((*(v37 + 48))(v39, 1, v38) == 1)
  {
    sub_100005508(v1[4], &unk_100974E00, &qword_1007F8940);
  }

  else
  {
    v41 = v1[10];
    v42 = v1[8];
    v43 = v1[3];
    (*(v1[9] + 32))(v41, v1[4], v42);
    v44 = sub_1004BC5D4(v41);
    (*v50)(v41, v42);
    v45 = *(v43 + 16);
    *(v43 + 16) = v44;
  }

  v36 = *(v1[3] + 16) != 0;
LABEL_30:

  v46 = v1[1];

  return v46(v36);
}

void sub_1004BBDAC(uint64_t a1, char a2)
{
  v3 = v2;
  LOBYTE(v4) = a2;
  v5 = *(SFAirDropReceive.AskRequest.urlItems.getter() + 16);

  v6 = *(v2 + 16);
  if (!v6)
  {
    goto LABEL_13;
  }

  v7 = [v6 displayName];
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  v11 = *(v3 + 16);
  if (v11)
  {
    v12 = [v11 passkeyCredential];
    if (v12)
    {
      v13 = v12;
      v14 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v16 = v15;

      sub_100026AC0(v14, v16);
      if (!v10)
      {
        goto LABEL_16;
      }

      if (v5 != 1)
      {
LABEL_15:

LABEL_16:
        sub_10028088C(&qword_1009775E0, &unk_1007FAD10);
        inited = swift_initStackObject();
        v34 = xmmword_1007F5670;
        *(inited + 16) = xmmword_1007F5670;
        *(inited + 32) = 0x59454B53534150;
        v30 = inited + 32;
        *(inited + 40) = 0xE700000000000000;
        *(inited + 48) = v5;
        sub_1003D8D18(inited, v4 & 1);
        swift_setDeallocating();
        sub_100005508(v30, &qword_100981D40, &unk_1007FA6C0);
        v31 = String._bridgeToObjectiveC()();
        v28 = SFLocalizedStringForKey();

        if (!v28)
        {
          __break(1u);
          goto LABEL_20;
        }

LABEL_17:

        static String._unconditionallyBridgeFromObjectiveC(_:)();

        sub_10028088C(&unk_100978CC0, &qword_1007FAD20);
        v32 = swift_allocObject();
        *(v32 + 16) = v34;
        *(v32 + 56) = &type metadata for Int;
        *(v32 + 64) = &protocol witness table for Int;
        *(v32 + 32) = v5;
        goto LABEL_18;
      }

      sub_10028088C(&qword_1009775E0, &unk_1007FAD10);
      v17 = swift_initStackObject();
      v33 = xmmword_1007F5670;
      *(v17 + 16) = xmmword_1007F5670;
      *(v17 + 32) = 0xD000000000000012;
      v18 = v17 + 32;
      *(v17 + 40) = 0x80000001007928F0;
      *(v17 + 48) = 1;
      sub_1003D8D18(v17, v4 & 1);
      LOBYTE(v4) = v19;
      swift_setDeallocating();
      sub_100005508(v18, &qword_100981D40, &unk_1007FA6C0);
      v20 = String._bridgeToObjectiveC()();
      v21 = SFLocalizedStringForKey();

      if (v21)
      {
LABEL_11:

        static String._unconditionallyBridgeFromObjectiveC(_:)();

        sub_10028088C(&unk_100978CC0, &qword_1007FAD20);
        v25 = swift_allocObject();
        *(v25 + 16) = v33;
        *(v25 + 56) = &type metadata for String;
        *(v25 + 64) = sub_100026764();
        *(v25 + 32) = v8;
        *(v25 + 40) = v10;
LABEL_18:
        static String.localizedStringWithFormat(_:_:)();

        return;
      }

      __break(1u);
    }
  }

  if (!v10)
  {
LABEL_13:
    sub_10028088C(&qword_1009775E0, &unk_1007FAD10);
    v26 = swift_initStackObject();
    v34 = xmmword_1007F5670;
    *(v26 + 16) = xmmword_1007F5670;
    *(v26 + 32) = 0x49544E4544455243;
    v27 = v26 + 32;
    *(v26 + 40) = 0xEA00000000004C41;
    *(v26 + 48) = v5;
    sub_1003D8D18(v26, v4 & 1);
    swift_setDeallocating();
    sub_100005508(v27, &qword_100981D40, &unk_1007FA6C0);
    v4 = String._bridgeToObjectiveC()();
    v28 = SFLocalizedStringForKey();

    if (v28)
    {
      goto LABEL_17;
    }

    __break(1u);
    goto LABEL_15;
  }

  if (v5 != 1)
  {

    goto LABEL_13;
  }

  sub_10028088C(&qword_1009775E0, &unk_1007FAD10);
  v22 = swift_initStackObject();
  v33 = xmmword_1007F5670;
  *(v22 + 16) = xmmword_1007F5670;
  *(v22 + 32) = 0xD000000000000015;
  v23 = v22 + 32;
  *(v22 + 40) = 0x80000001007928D0;
  *(v22 + 48) = 1;
  sub_1003D8D18(v22, v4 & 1);
  swift_setDeallocating();
  sub_100005508(v23, &qword_100981D40, &unk_1007FA6C0);
  v24 = String._bridgeToObjectiveC()();
  v21 = SFLocalizedStringForKey();

  if (v21)
  {
    goto LABEL_11;
  }

LABEL_20:
  __break(1u);
}

uint64_t sub_1004BC258(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  v5 = type metadata accessor for URL();
  v4[4] = v5;
  v4[5] = *(v5 - 8);
  v4[6] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v6 = static AirDropActor.shared;

  return _swift_task_switch(sub_1004BC350, v6, 0);
}

uint64_t sub_1004BC350()
{
  v1 = *(*(v0 + 24) + 16);
  if (v1)
  {
    v2 = v1;
    v3 = [v2 passwordManagerURL];
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    if (qword_100973920 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_10000C4AC(v4, qword_1009802C0);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "Opening password manager url", v7, 2u);
    }

    v9 = *(v0 + 40);
    v8 = *(v0 + 48);
    v10 = *(v0 + 32);

    v11 = objc_opt_self();
    URL._bridgeToObjectiveC()(v12);
    v14 = v13;
    [v11 openPasswordManagerURL:v13];

    (*(v9 + 8))(v8, v10);
    v15 = 1;
  }

  else
  {
    if (qword_100973920 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_10000C4AC(v16, qword_1009802C0);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "### No credential?", v19, 2u);
    }

    v15 = 0;
  }

  **(v0 + 16) = v15;

  v20 = *(v0 + 8);

  return v20();
}

id sub_1004BC5D4(uint64_t a1)
{
  v2 = sub_10028088C(&qword_1009803B8, &unk_100807F30);
  __chkstk_darwin(v2 - 8);
  v4 = &v45 - v3;
  v5 = *(v1 + 16);
  if (!v5)
  {
    v7 = v1;
    if (qword_100973920 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_10000C4AC(v8, qword_1009802C0);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "Grabbing credential from AirDrop handler...", v11, 2u);
    }

    URLComponents.init(url:resolvingAgainstBaseURL:)();
    v12 = type metadata accessor for URLComponents();
    v13 = *(v12 - 8);
    if ((*(v13 + 48))(v4, 1, v12) == 1)
    {
      sub_100005508(v4, &qword_1009803B8, &unk_100807F30);
      goto LABEL_15;
    }

    v14 = URLComponents.scheme.getter();
    v16 = v15;
    (*(v13 + 8))(v4, v12);
    if (v16)
    {
      if (v14 == 0xD000000000000010 && v16 == 0x80000001007928B0)
      {
      }

      else
      {
        v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v18 & 1) == 0)
        {
          goto LABEL_15;
        }
      }

      URL._bridgeToObjectiveC()(v19);
      v38 = v37;
      v5 = SFSharablePasswordForUnencryptedAirDropURL();

      if (!v5)
      {
        goto LABEL_19;
      }

      goto LABEL_30;
    }

LABEL_15:
    v20 = [objc_opt_self() sharedAgent];
    v21 = [v20 myAccount];

    if (!v21)
    {
      v30 = Logger.logObject.getter();
      v31 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        *v32 = 0;
        v33 = "### Failed to grab myAccount?";
        goto LABEL_23;
      }

LABEL_24:

      return 0;
    }

    v22 = [v21 identity];
    if (!v22)
    {
      v34 = Logger.logObject.getter();
      v35 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        *v36 = 0;
        _os_log_impl(&_mh_execute_header, v34, v35, "### Failed to grab myIdentity?", v36, 2u);
      }

      return 0;
    }

    v23 = v22;
    v24 = [v22 copyPrivateKey];
    if (!v24)
    {
      v41 = Logger.logObject.getter();
      v42 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        *v43 = 0;
        _os_log_impl(&_mh_execute_header, v41, v42, "### Failed to grab myPrivateKey?", v43, 2u);
      }

      return 0;
    }

    v26 = v24;
    URL._bridgeToObjectiveC()(v25);
    v28 = v27;
    v29 = v26;
    v5 = SFSharablePasswordForEncryptedAirDropURL();

    if (!v5)
    {
LABEL_19:
      v30 = Logger.logObject.getter();
      v31 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        *v32 = 0;
        v33 = "Failed to grab credential from AirDrop handler!";
LABEL_23:
        _os_log_impl(&_mh_execute_header, v30, v31, v33, v32, 2u);

        goto LABEL_24;
      }

      goto LABEL_24;
    }

LABEL_30:
    v39 = *(v7 + 16);
    *(v7 + 16) = v5;
    v40 = v5;

    return v5;
  }

  v6 = v5;
  return v5;
}

uint64_t sub_1004BCB04@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for SDAirDropContentHandlerCredentialLinks();
  result = swift_allocObject();
  *(result + 16) = 0;
  *a1 = result;
  return result;
}

uint64_t sub_1004BCB3C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100289000;

  return sub_1004BB67C(a1);
}

uint64_t sub_1004BCCAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_100005C04;

  return sub_1004BC258(a1, a2, a3, v3);
}

uint64_t sub_1004BCD60(uint64_t a1, uint64_t a2)
{
  v4 = sub_10028088C(&qword_1009803B8, &unk_100807F30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1004BCEB8()
{
  result = qword_1009803C0;
  if (!qword_1009803C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009803C0);
  }

  return result;
}

unint64_t sub_1004BCF0C()
{
  result = qword_1009803C8;
  if (!qword_1009803C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009803C8);
  }

  return result;
}

unint64_t sub_1004BCF84()
{
  result = qword_1009803D0;
  if (!qword_1009803D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009803D0);
  }

  return result;
}

unint64_t sub_1004BCFDC()
{
  result = qword_1009803D8;
  if (!qword_1009803D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009803D8);
  }

  return result;
}

uint64_t _s10AKSSessionVwet(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s10AKSSessionVwst(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
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

  *(result + 8) = v3;
  return result;
}

unint64_t sub_1004BD0BC(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v20 = 0;
  if (a2 >> 60 == 15)
  {
    v3 = 0;
  }

  else
  {
    v3 = a1;
  }

  if (a2 >> 60 == 15)
  {
    v4 = 0xC000000000000000;
  }

  else
  {
    v4 = a2;
  }

  v5 = v4 >> 62;
  if ((v4 >> 62) <= 1)
  {
    if (!v5)
    {
      v19[0] = v3;
      LOWORD(v19[1]) = v4;
      BYTE2(v19[1]) = BYTE2(v4);
      BYTE3(v19[1]) = BYTE3(v4);
      BYTE4(v19[1]) = BYTE4(v4);
      BYTE5(v19[1]) = BYTE5(v4);
      sub_1002A9924(a1, a2);
      goto LABEL_21;
    }

    goto LABEL_16;
  }

  if (v5 == 2)
  {
    v6 = *(v3 + 16);
    v7 = *(v3 + 24);
    sub_1002A9924(a1, a2);
    a1 = __DataStorage._bytes.getter();
    if (a1)
    {
      a1 = __DataStorage._offset.getter();
      if (__OFSUB__(v6, a1))
      {
        goto LABEL_27;
      }
    }

    if (!__OFSUB__(v7, v6))
    {
LABEL_19:
      __DataStorage._length.getter();
      goto LABEL_21;
    }

    __break(1u);
LABEL_16:
    if (v3 >> 32 >= v3)
    {
      sub_1002A9924(a1, a2);
      if (!__DataStorage._bytes.getter() || !__OFSUB__(v3, __DataStorage._offset.getter()))
      {
        goto LABEL_19;
      }

LABEL_28:
      __break(1u);
    }

    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  memset(v19, 0, 14);
  sub_1002A9924(a1, a2);
LABEL_21:
  v8 = aks_remote_session_step();
  if (qword_100973928 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_10000C4AC(v9, qword_1009803E0);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v19[0] = v13;
    *v12 = 67109378;
    *(v12 + 4) = v8;
    *(v12 + 8) = 2080;
    v14 = sub_1004BD7D4();
    v16 = sub_10000C4E4(v14, v15, v19);

    *(v12 + 10) = v16;
    _os_log_impl(&_mh_execute_header, v10, v11, "AKS step ret: %d %s", v12, 0x12u);
    sub_10000C60C(v13);
  }

  v17 = sub_1004BD8E4(v8, v20, 0, 0xD000000000000021, 0x8000000100792AA0);
  sub_100026AC0(v3, v4);
  return v17;
}

uint64_t sub_1004BD438(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = a2 >> 60;
  if (a2 >> 60 == 15)
  {
    v5 = 0;
  }

  else
  {
    v5 = a1;
  }

  if (a2 >> 60 == 15)
  {
    v6 = 0xC000000000000000;
  }

  else
  {
    v6 = a2;
  }

  v7 = v6 >> 62;
  if ((v6 >> 62) <= 1)
  {
    if (!v7)
    {
      goto LABEL_20;
    }

    goto LABEL_16;
  }

  if (v7 == 2)
  {
    v8 = *(v5 + 16);
    v9 = *(v5 + 24);
    sub_1002A9924(a1, a2);
    a1 = __DataStorage._bytes.getter();
    if (a1)
    {
      a1 = __DataStorage._offset.getter();
      if (__OFSUB__(v8, a1))
      {
        goto LABEL_34;
      }
    }

    if (!__OFSUB__(v9, v8))
    {
LABEL_19:
      __DataStorage._length.getter();
      goto LABEL_21;
    }

    __break(1u);
LABEL_16:
    if (v5 >> 32 >= v5)
    {
      sub_1002A9924(a1, a2);
      if (!__DataStorage._bytes.getter() || !__OFSUB__(v5, __DataStorage._offset.getter()))
      {
        goto LABEL_19;
      }

LABEL_35:
      __break(1u);
    }

    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

LABEL_20:
  sub_1002A9924(a1, a2);
LABEL_21:
  v10 = aks_remote_peer_setup();
  if (v10 == -536870194)
  {
    v11 = sub_100010F88(23, 0xD000000000000015, 0x8000000100792B10);
    v13 = v12;
    sub_1000115C8();
    swift_allocError();
    *v14 = v11;
    *(v14 + 8) = v13;
    swift_willThrow();
  }

  else
  {
    if (v4 <= 0xE)
    {
      v15 = 0xD000000000000019;
    }

    else
    {
      v15 = 0xD00000000000001FLL;
    }

    if (v4 <= 0xE)
    {
      v16 = "mote_session_step";
    }

    else
    {
      v16 = "Finalizing pairing failed";
    }

    v17 = sub_1004BD8E4(v10, 0, 0, v15, v16 | 0x8000000000000000);
    if (!v3)
    {
      sub_10028BCC0(v17, v18);
    }
  }

  return sub_100026AC0(v5, v6);
}

uint64_t sub_1004BD70C()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_1009803E0);
  v1 = sub_10000C4AC(v0, qword_1009803E0);
  if (qword_100973758 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C4AC(v0, qword_1009A0A50);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1004BD7D4()
{
  _StringGuts.grow(_:)(33);

  strcpy(v4, "AKSSession id=");
  v0._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v0);

  v1._countAndFlagsBits = 0x67616279656B202CLL;
  v1._object = 0xEF3D656C646E6148;
  String.append(_:)(v1);
  v2._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v2);

  return v4[0];
}

unint64_t sub_1004BD8E4(int a1, _BYTE *a2, uint64_t a3, void *a4, unint64_t a5)
{
  if (a1)
  {
    if (qword_100973928 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_10000C4AC(v8, qword_1009803E0);

    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v21 = v12;
      *v11 = 136315394;
      *(v11 + 4) = sub_10000C4E4(a4, a5, &v21);
      *(v11 + 12) = 1024;
      *(v11 + 14) = a1;
      _os_log_impl(&_mh_execute_header, v9, v10, "%s, AKS errCode: %d", v11, 0x12u);
      sub_10000C60C(v12);
    }

    v21 = a4;
    v22 = a5;

    v13._countAndFlagsBits = 0x646F43727265202CLL;
    v13._object = 0xEB00000000203A65;
    String.append(_:)(v13);
    v23 = a1;
    v14._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v14);

    v15 = sub_100010F88(10, v21, v22);
    v17 = v16;
    sub_1000115C8();
    swift_allocError();
    *v18 = v15;
    *(v18 + 8) = v17;
    swift_willThrow();
  }

  else
  {
    v15 = 0;
    if (a2 && a3 >= 1)
    {
      v15 = sub_1004E53D0(a2, a3);
      free(a2);
    }
  }

  return v15;
}

uint64_t sub_1004BDB34()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_1009803F8);
  v1 = sub_10000C4AC(v0, qword_1009803F8);
  if (qword_1009736C0 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C4AC(v0, qword_1009A0888);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1004BDBFC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1004C361C();
  v5 = sub_100283208();

  return Error<>._code.getter(a1, a2, v4, v5);
}

uint64_t sub_1004BDC80()
{
  if (qword_100973930 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10000C4AC(v0, qword_1009803F8);

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 136315138;
    v9 = v4;
    type metadata accessor for NWConnection();

    v5 = String.init<A>(describing:)();
    v7 = sub_10000C4E4(v5, v6, &v9);

    *(v3 + 4) = v7;
    _os_log_impl(&_mh_execute_header, v1, v2, "Starting connection: %s", v3, 0xCu);
    sub_10000C60C(v4);
  }

  swift_allocObject();
  swift_weakInit();

  NWConnection.stateUpdateHandler.setter();

  return NWConnection.start(queue:)();
}

uint64_t sub_1004BDE60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[46] = a3;
  v4[47] = v3;
  v4[44] = a1;
  v4[45] = a2;
  sub_10028088C(&unk_100976120, &qword_1007F9260);
  v4[48] = swift_task_alloc();
  v5 = type metadata accessor for UUID();
  v4[49] = v5;
  v4[50] = *(v5 - 8);
  v4[51] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v6 = static AirDropActor.shared;
  v4[52] = static AirDropActor.shared;

  return _swift_task_switch(sub_1004BDF98, v6, 0);
}

uint64_t sub_1004BDF98()
{
  v1 = *(v0[47] + OBJC_IVAR____TtC16DaemoniOSLibrary23SDTempPairingConnection_temporaryIdentity);
  v2 = [v1 identifier];
  if (v2)
  {
    v3 = v2;
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v8 = v0[50];
    v7 = v0[51];
    v9 = v0[49];
    UUID.init()();
    v4 = UUID.uuidString.getter();
    v6 = v10;
    (*(v8 + 8))(v7, v9);
  }

  v11 = [v1 deviceIRKData];
  if (v11)
  {
    v12 = v11;
    v13 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    v0[53] = v13;
    v0[54] = v15;
    v16 = [v1 edPKData];
    if (v16)
    {
      v18 = v0[45];
      v17 = v0[46];
      v19 = v16;
      v20 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v22 = v21;

      v0[55] = v20;
      v0[56] = v22;
      v0[2] = 1;
      v0[3] = v18;
      v0[4] = v17;
      v0[5] = v4;
      v0[6] = v6;
      v0[7] = v20;
      v0[8] = v22;
      v0[9] = v13;
      v0[10] = v15;

      sub_100294008(v20, v22);
      sub_100294008(v13, v15);
      if (qword_100973930 != -1)
      {
        swift_once();
      }

      v23 = type metadata accessor for Logger();
      v0[57] = sub_10000C4AC(v23, qword_1009803F8);
      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        *v26 = 0;
        _os_log_impl(&_mh_execute_header, v24, v25, "Sending pairing request", v26, 2u);
      }

      v27 = v0[47];

      v0[58] = *(v27 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDTempPairingConnection_connection);
      v0[41] = &type metadata for SDTempPairingMessage.Request;
      v0[42] = sub_1004C2728();
      v28 = swift_allocObject();
      v0[38] = v28;
      v29 = *(v0 + 4);
      *(v28 + 48) = *(v0 + 3);
      *(v28 + 64) = v29;
      *(v28 + 80) = v0[10];
      v30 = *(v0 + 2);
      *(v28 + 16) = *(v0 + 1);
      *(v28 + 32) = v30;
      sub_1004C277C((v0 + 2), (v0 + 11));
      v31 = swift_task_alloc();
      v0[59] = v31;
      *v31 = v0;
      v31[1] = sub_1004BE458;

      return sub_100676434((v0 + 38));
    }

    v35 = type metadata accessor for SFError();
    sub_10044FED8();
    swift_allocError();
    *v36 = 0x617461444B506465;
    v36[1] = 0xE800000000000000;
    v36[2] = 0xD00000000000005ELL;
    v36[3] = 0x8000000100792BC0;
    v36[4] = 83;
    (*(*(v35 - 8) + 104))(v36, enum case for SFError.missingValue(_:), v35);
    swift_willThrow();
    sub_100026AC0(v13, v15);
  }

  else
  {

    v33 = type metadata accessor for SFError();
    sub_10044FED8();
    swift_allocError();
    strcpy(v34, "deviceIRKData");
    *(v34 + 7) = -4864;
    *(v34 + 2) = 0xD00000000000005ELL;
    *(v34 + 3) = 0x8000000100792BC0;
    *(v34 + 4) = 79;
    (*(*(v33 - 8) + 104))(v34, enum case for SFError.missingValue(_:), v33);
    swift_willThrow();
  }

  v37 = v0[1];

  return v37();
}

uint64_t sub_1004BE458()
{
  v2 = *v1;
  *(*v1 + 480) = v0;

  if (v0)
  {
    v3 = *(v2 + 416);
    v4 = sub_1004BF29C;
  }

  else
  {
    v5 = *(v2 + 416);
    sub_10000C60C((v2 + 304));
    v4 = sub_1004BE580;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1004BE580(uint64_t a1)
{
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Sent pairing request, waiting for response", v4, 2u);
  }

  v5 = swift_task_alloc();
  *(v1 + 488) = v5;
  *v5 = v1;
  v5[1] = sub_1004BE688;

  return sub_100630D8C();
}

uint64_t sub_1004BE688(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v4[66] = v1;
    v6 = v4[52];

    return _swift_task_switch(sub_1004BF0B4, v6, 0);
  }

  else
  {
    v7 = swift_task_alloc();
    v4[62] = v7;
    *v7 = v5;
    v7[1] = sub_1004BE810;

    return sub_1006311CC(a1, 0x20000);
  }
}

uint64_t sub_1004BE810(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[63] = a1;
  v4[64] = a2;
  v4[65] = v2;

  if (v2)
  {
    v4[66] = v2;
    v5 = v4[52];
    v6 = sub_1004BF0B4;
  }

  else
  {
    v6 = sub_1004BE944;
    v5 = 0;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1004BE944()
{
  v1 = v0[65];
  sub_1006760AC();
  if (v1)
  {
    sub_100026AC0(v0[63], v0[64]);
    v0[66] = v1;
    v2 = v0[52];
    v3 = sub_1004BF0B4;
  }

  else
  {
    v4 = v0[52];
    sub_100026AC0(v0[63], v0[64]);
    v3 = sub_1004BE9F0;
    v2 = v4;
  }

  return _swift_task_switch(v3, v2, 0);
}

uint64_t sub_1004BE9F0(uint64_t a1)
{
  v54 = v1;
  v2 = *(v1 + 160);
  *(v1 + 248) = *(v1 + 176);
  v3 = *(v1 + 208);
  *(v1 + 264) = *(v1 + 192);
  *(v1 + 280) = v3;
  *(v1 + 296) = *(v1 + 224);
  *(v1 + 232) = v2;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "Received pairing response", v6, 2u);
  }

  if ((*(v1 + 248) & 1) == 0)
  {
    v16 = *(v1 + 240) != 0;
    v17 = type metadata accessor for SFError();
    sub_10044FED8();
    v18 = swift_allocError();
    v20 = v19;
    _StringGuts.grow(_:)(28);

    v52 = 0xD00000000000001ALL;
    v53 = 0x8000000100792CA0;
    *(v1 + 536) = v16;
    sub_10028088C(&qword_1009805C8, &qword_100806718);
    v21._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v21);

    v22 = v53;
    *v20 = v52;
    v20[1] = v22;
    v20[2] = 0xD00000000000005ELL;
    v20[3] = 0x8000000100792BC0;
    v20[4] = 101;
    (*(*(v17 - 8) + 104))(v20, enum case for SFError.unexpected(_:), v17);
    goto LABEL_9;
  }

  v7 = *(v1 + 352);
  v8 = v7 + *(type metadata accessor for SDTempPairingEndpoint(0) + 20);
  if (!sub_100331508(*(v8 + 16), *(v8 + 24), *(v1 + 272), *(v1 + 280)))
  {
    v23 = type metadata accessor for SFError();
    sub_10044FED8();
    v18 = swift_allocError();
    *v24 = 0xD000000000000018;
    v24[1] = 0x8000000100792C20;
    v24[2] = 0xD00000000000005ELL;
    v24[3] = 0x8000000100792BC0;
    v24[4] = 103;
    (*(*(v23 - 8) + 104))(v24, enum case for SFError.unexpected(_:), v23);
LABEL_9:
    swift_willThrow();
    sub_1004C27E4(v1 + 232);
    sub_1004C27B4(v1 + 16);
    swift_errorRetain();
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();

    v27 = os_log_type_enabled(v25, v26);
    v29 = *(v1 + 440);
    v28 = *(v1 + 448);
    v31 = *(v1 + 424);
    v30 = *(v1 + 432);
    if (v27)
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v52 = v33;
      *v32 = 136315138;
      *(v1 + 344) = v18;
      swift_errorRetain();
      sub_10028088C(&unk_10097A930, &unk_1007F9050);
      v34 = String.init<A>(describing:)();
      v51 = v31;
      v36 = sub_10000C4E4(v34, v35, &v52);

      *(v32 + 4) = v36;
      _os_log_impl(&_mh_execute_header, v25, v26, "Failed to exchange temporary identity: %s", v32, 0xCu);
      sub_10000C60C(v33);

      sub_100026AC0(v29, v28);
      sub_100026AC0(v51, v30);
    }

    else
    {
      sub_100026AC0(*(v1 + 440), *(v1 + 448));
      sub_100026AC0(v31, v30);
    }

    goto LABEL_19;
  }

  v10 = *(v1 + 424);
  v9 = *(v1 + 432);
  v12 = *(v1 + 392);
  v11 = *(v1 + 400);
  v13 = *(v1 + 384);
  sub_100026AC0(*(v1 + 440), *(v1 + 448));
  sub_100026AC0(v10, v9);
  v14 = [objc_allocWithZone(CUPairedPeer) init];
  UUID.init(uuidString:)();
  if ((*(v11 + 48))(v13, 1, v12) == 1)
  {
    isa = 0;
  }

  else
  {
    v38 = *(v1 + 392);
    v37 = *(v1 + 400);
    v39 = *(v1 + 384);
    isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(v37 + 8))(v39, v38);
  }

  [v14 setIdentifier:isa];

  v40 = [objc_allocWithZone(RPIdentity) initWithPairedPeer:v14 type:15];
  if (!v40)
  {
    return _assertionFailure(_:_:file:line:flags:)();
  }

  v41 = v40;
  v42 = *(v1 + 376);
  v43 = String._bridgeToObjectiveC()();
  [v41 setName:v43];

  v44 = Data._bridgeToObjectiveC()().super.isa;
  [v41 setDeviceIRKData:v44];

  v45 = Data._bridgeToObjectiveC()().super.isa;
  [v41 setEdPKData:v45];

  v46 = Array._bridgeToObjectiveC()().super.isa;
  [v41 setAccessGroups:v46];

  v47 = *(v42 + 24);
  if (v47)
  {
    v48 = *(*(v1 + 376) + 32);

    v47(v41);
    sub_1004C27B4(v1 + 16);
    sub_1002F5A40(v47, v48);
  }

  else
  {
    sub_1004C27B4(v1 + 16);
  }

  sub_1004C27E4(v1 + 232);
LABEL_19:

  v50 = *(v1 + 8);

  return v50();
}

uint64_t sub_1004BF0B4()
{
  v18 = v0;
  sub_1004C27B4((v0 + 2));
  v1 = v0[66];
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[55];
    v4 = v0[56];
    v15 = v0[53];
    v16 = v0[54];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v17 = v7;
    *v6 = 136315138;
    v0[43] = v1;
    swift_errorRetain();
    sub_10028088C(&unk_10097A930, &unk_1007F9050);
    v8 = String.init<A>(describing:)();
    v10 = sub_10000C4E4(v8, v9, &v17);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to exchange temporary identity: %s", v6, 0xCu);
    sub_10000C60C(v7);

    sub_100026AC0(v5, v4);
    sub_100026AC0(v15, v16);
  }

  else
  {
    v12 = v0[53];
    v11 = v0[54];
    sub_100026AC0(v0[55], v0[56]);
    sub_100026AC0(v12, v11);
  }

  v13 = v0[1];

  return v13();
}

uint64_t sub_1004BF29C()
{
  v18 = v0;
  sub_1004C27B4((v0 + 2));
  sub_10000C60C(v0 + 38);
  v1 = v0[60];
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[55];
    v4 = v0[56];
    v15 = v0[53];
    v16 = v0[54];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v17 = v7;
    *v6 = 136315138;
    v0[43] = v1;
    swift_errorRetain();
    sub_10028088C(&unk_10097A930, &unk_1007F9050);
    v8 = String.init<A>(describing:)();
    v10 = sub_10000C4E4(v8, v9, &v17);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to exchange temporary identity: %s", v6, 0xCu);
    sub_10000C60C(v7);

    sub_100026AC0(v5, v4);
    sub_100026AC0(v15, v16);
  }

  else
  {
    v12 = v0[53];
    v11 = v0[54];
    sub_100026AC0(v0[55], v0[56]);
    sub_100026AC0(v12, v11);
  }

  v13 = v0[1];

  return v13();
}

uint64_t sub_1004BF48C()
{
  v1[44] = v0;
  sub_10028088C(&unk_100976120, &qword_1007F9260);
  v1[45] = swift_task_alloc();
  v2 = type metadata accessor for UUID();
  v1[46] = v2;
  v1[47] = *(v2 - 8);
  v1[48] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v3 = static AirDropActor.shared;
  v1[49] = static AirDropActor.shared;

  return _swift_task_switch(sub_1004BF5C0, v3, 0);
}

uint64_t sub_1004BF5C0()
{
  v1 = *(v0[44] + OBJC_IVAR____TtC16DaemoniOSLibrary23SDTempPairingConnection_temporaryIdentity);
  v2 = [v1 identifier];
  if (v2)
  {
    v3 = v2;
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v8 = v0[47];
    v7 = v0[48];
    v9 = v0[46];
    UUID.init()();
    v4 = UUID.uuidString.getter();
    v6 = v10;
    (*(v8 + 8))(v7, v9);
  }

  v0[50] = v6;
  v0[51] = v4;
  v11 = [v1 deviceIRKData];
  if (v11)
  {
    v12 = v11;
    v13 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    v0[52] = v13;
    v0[53] = v15;
    v16 = [v1 edPKData];
    if (v16)
    {
      v17 = v16;
      v18 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v20 = v19;

      v0[54] = v18;
      v0[55] = v20;
      if (qword_100973930 != -1)
      {
        swift_once();
      }

      v21 = type metadata accessor for Logger();
      v0[56] = sub_10000C4AC(v21, qword_1009803F8);
      v22 = Logger.logObject.getter();
      v23 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        *v24 = 0;
        _os_log_impl(&_mh_execute_header, v22, v23, "Waiting for pairing request", v24, 2u);
      }

      v25 = v0[44];

      v0[57] = *(v25 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDTempPairingConnection_connection);
      v26 = swift_task_alloc();
      v0[58] = v26;
      *v26 = v0;
      v26[1] = sub_1004BF9E4;

      return sub_100630D8C();
    }

    v30 = type metadata accessor for SFError();
    sub_10044FED8();
    swift_allocError();
    *v31 = 0x617461444B506465;
    v31[1] = 0xE800000000000000;
    v31[2] = 0xD00000000000005ELL;
    v31[3] = 0x8000000100792BC0;
    v31[4] = 123;
    (*(*(v30 - 8) + 104))(v31, enum case for SFError.missingValue(_:), v30);
    swift_willThrow();
    sub_100026AC0(v13, v15);
  }

  else
  {

    v28 = type metadata accessor for SFError();
    sub_10044FED8();
    swift_allocError();
    strcpy(v29, "deviceIRKData");
    *(v29 + 7) = -4864;
    *(v29 + 2) = 0xD00000000000005ELL;
    *(v29 + 3) = 0x8000000100792BC0;
    *(v29 + 4) = 119;
    (*(*(v28 - 8) + 104))(v29, enum case for SFError.missingValue(_:), v28);
    swift_willThrow();
  }

  v32 = v0[1];

  return v32();
}

uint64_t sub_1004BF9E4(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {

    v4[63] = v1;
    v6 = v4[49];

    return _swift_task_switch(sub_1004BFFB0, v6, 0);
  }

  else
  {
    v7 = swift_task_alloc();
    v4[59] = v7;
    *v7 = v5;
    v7[1] = sub_1004BFB74;

    return sub_1006311CC(a1, 0x20000);
  }
}

uint64_t sub_1004BFB74(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[60] = a1;
  v4[61] = a2;
  v4[62] = v2;

  if (v2)
  {

    v4[63] = v2;
    v5 = v4[49];
    v6 = sub_1004BFFB0;
  }

  else
  {
    v6 = sub_1004BFCB0;
    v5 = 0;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1004BFCB0()
{
  v1 = v0[62];
  sub_100676270();
  if (v1)
  {
    v2 = v0[60];
    v3 = v0[61];

    sub_100026AC0(v2, v3);
    v0[63] = v1;
    v4 = v0[49];
    v5 = sub_1004BFFB0;
  }

  else
  {
    v6 = v0[49];
    sub_100026AC0(v0[60], v0[61]);
    v5 = sub_1004BFD6C;
    v4 = v6;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_1004BFD6C(uint64_t a1)
{
  v2 = *(v1 + 16);
  *(v1 + 104) = *(v1 + 32);
  v3 = *(v1 + 64);
  *(v1 + 120) = *(v1 + 48);
  *(v1 + 136) = v3;
  *(v1 + 152) = *(v1 + 80);
  *(v1 + 88) = v2;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "Received pairing request", v6, 2u);
  }

  v7 = *(v1 + 440);
  v9 = *(v1 + 424);
  v8 = *(v1 + 432);
  v11 = *(v1 + 408);
  v10 = *(v1 + 416);
  v12 = *(v1 + 400);

  *(v1 + 160) = xmmword_100806670;
  *(v1 + 176) = 1;
  *(v1 + 184) = v11;
  *(v1 + 192) = v12;
  *(v1 + 200) = v8;
  *(v1 + 208) = v7;
  *(v1 + 216) = v10;
  *(v1 + 224) = v9;
  sub_100294008(v8, v7);
  sub_100294008(v10, v9);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "Sending pairing response", v15, 2u);
  }

  *(v1 + 328) = &type metadata for SDTempPairingMessage.Response;
  *(v1 + 336) = sub_1004C2814();
  v16 = swift_allocObject();
  *(v1 + 304) = v16;
  v17 = *(v1 + 208);
  *(v16 + 48) = *(v1 + 192);
  *(v16 + 64) = v17;
  *(v16 + 80) = *(v1 + 224);
  v18 = *(v1 + 176);
  *(v16 + 16) = *(v1 + 160);
  *(v16 + 32) = v18;
  sub_1004C2868(v1 + 160, v1 + 232);
  v19 = swift_task_alloc();
  *(v1 + 512) = v19;
  *v19 = v1;
  v19[1] = sub_1004C0190;

  return sub_100676434(v1 + 304);
}

uint64_t sub_1004BFFB0()
{
  v18 = v0;
  v1 = v0[63];
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[54];
    v4 = v0[55];
    v15 = v0[52];
    v16 = v0[53];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v17 = v7;
    *v6 = 136315138;
    v0[43] = v1;
    swift_errorRetain();
    sub_10028088C(&unk_10097A930, &unk_1007F9050);
    v8 = String.init<A>(describing:)();
    v10 = sub_10000C4E4(v8, v9, &v17);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to exchange temporary identity: %s", v6, 0xCu);
    sub_10000C60C(v7);

    sub_100026AC0(v5, v4);
    sub_100026AC0(v15, v16);
  }

  else
  {
    v12 = v0[52];
    v11 = v0[53];
    sub_100026AC0(v0[54], v0[55]);
    sub_100026AC0(v12, v11);
  }

  v13 = v0[1];

  return v13();
}

uint64_t sub_1004C0190()
{
  v2 = *v1;
  *(*v1 + 520) = v0;

  if (v0)
  {
    v3 = v2[49];
    v4 = sub_1004C0620;
  }

  else
  {
    v6 = v2[52];
    v5 = v2[53];
    v7 = v2[49];
    sub_100026AC0(v2[54], v2[55]);
    sub_100026AC0(v6, v5);
    sub_10000C60C(v2 + 38);
    v4 = sub_1004C02D8;
    v3 = v7;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1004C02D8(uint64_t a1)
{
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Sent pairing response", v4, 2u);
  }

  v5 = v1[46];
  v6 = v1[47];
  v7 = v1[45];

  v8 = [objc_allocWithZone(CUPairedPeer) init];
  UUID.init(uuidString:)();
  if ((*(v6 + 48))(v7, 1, v5) == 1)
  {
    isa = 0;
  }

  else
  {
    v10 = v1[46];
    v11 = v1[47];
    v12 = v1[45];
    isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(v11 + 8))(v12, v10);
  }

  [v8 setIdentifier:isa];

  v13 = [objc_allocWithZone(RPIdentity) initWithPairedPeer:v8 type:15];
  if (!v13)
  {
    return _assertionFailure(_:_:file:line:flags:)();
  }

  v14 = v13;
  v15 = v1[44];
  v16 = String._bridgeToObjectiveC()();
  [v14 setName:v16];

  v17 = Data._bridgeToObjectiveC()().super.isa;
  [v14 setDeviceIRKData:v17];

  v18 = Data._bridgeToObjectiveC()().super.isa;
  [v14 setEdPKData:v18];

  v19 = Array._bridgeToObjectiveC()().super.isa;
  [v14 setAccessGroups:v19];

  v20 = *(v15 + 24);
  if (v20)
  {
    v21 = *(v1[44] + 32);

    v20(v14);
    sub_1004C27E4((v1 + 20));
    sub_1002F5A40(v20, v21);
  }

  else
  {
    sub_1004C27E4((v1 + 20));
  }

  sub_1004C27B4((v1 + 11));

  v23 = v1[1];

  return v23();
}

uint64_t sub_1004C0620()
{
  v18 = v0;
  sub_1004C27E4((v0 + 20));
  sub_1004C27B4((v0 + 11));
  sub_10000C60C(v0 + 38);
  v1 = v0[65];
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[54];
    v4 = v0[55];
    v15 = v0[52];
    v16 = v0[53];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v17 = v7;
    *v6 = 136315138;
    v0[43] = v1;
    swift_errorRetain();
    sub_10028088C(&unk_10097A930, &unk_1007F9050);
    v8 = String.init<A>(describing:)();
    v10 = sub_10000C4E4(v8, v9, &v17);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to exchange temporary identity: %s", v6, 0xCu);
    sub_10000C60C(v7);

    sub_100026AC0(v5, v4);
    sub_100026AC0(v15, v16);
  }

  else
  {
    v12 = v0[52];
    v11 = v0[53];
    sub_100026AC0(v0[54], v0[55]);
    sub_100026AC0(v12, v11);
  }

  v13 = v0[1];

  return v13();
}

uint64_t sub_1004C0818(char *a1, uint64_t a2)
{
  v3 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  __chkstk_darwin(v3 - 8);
  v5 = &v35 - v4;
  v6 = type metadata accessor for NWConnection.State();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = &v35 - v12;
  __chkstk_darwin(v11);
  v15 = &v35 - v14;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v17 = result;
    if (qword_100973930 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_10000C4AC(v18, qword_1009803F8);
    v19 = *(v7 + 16);
    v39 = a1;
    v40 = v19;
    v19(v15, a1, v6);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v36 = v17;
      v23 = v22;
      v24 = swift_slowAlloc();
      v37 = v10;
      v35 = v24;
      v41 = v24;
      *v23 = 136315138;
      v40(v13, v15, v6);
      v25 = String.init<A>(describing:)();
      v38 = v5;
      v27 = v26;
      v28 = *(v7 + 8);
      v28(v15, v6);
      v29 = sub_10000C4E4(v25, v27, &v41);
      v5 = v38;

      *(v23 + 4) = v29;
      _os_log_impl(&_mh_execute_header, v20, v21, "Connection state changed to %s", v23, 0xCu);
      sub_10000C60C(v35);
      v10 = v37;

      v17 = v36;
    }

    else
    {

      v28 = *(v7 + 8);
      v28(v15, v6);
    }

    v40(v10, v39, v6);
    v30 = (*(v7 + 88))(v10, v6);
    if (v30 == enum case for NWConnection.State.waiting(_:) || v30 == enum case for NWConnection.State.failed(_:))
    {

      return (v28)(v10, v6);
    }

    if (v30 == enum case for NWConnection.State.setup(_:) || v30 == enum case for NWConnection.State.preparing(_:))
    {
    }

    if (v30 == enum case for NWConnection.State.ready(_:))
    {
      v31 = type metadata accessor for TaskPriority();
      (*(*(v31 - 8) + 56))(v5, 1, 1, v31);
      v32 = swift_allocObject();
      v32[2] = 0;
      v32[3] = 0;
      v32[4] = v17;
      sub_1002B3098(0, 0, v5, &unk_1008066F8, v32);
    }

    v33 = enum case for NWConnection.State.cancelled(_:);
    v34 = v30;

    if (v34 != v33)
    {
      return (v28)(v10, v6);
    }
  }

  return result;
}

uint64_t sub_1004C0CBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  type metadata accessor for SDTempPairingEndpoint(0);
  v4[3] = swift_task_alloc();
  v4[4] = type metadata accessor for SDTempPairingConnection.Role(0);
  v4[5] = swift_task_alloc();

  return _swift_task_switch(sub_1004C0D7C, 0, 0);
}

uint64_t sub_1004C0D7C()
{
  sub_1004C25A8(v0[2] + OBJC_IVAR____TtC16DaemoniOSLibrary23SDTempPairingConnection_role, v0[5]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v2 = v0[5];
  if (EnumCaseMultiPayload == 1)
  {
    sub_1004C260C(v0[5], type metadata accessor for SDTempPairingConnection.Role);
    v3 = swift_task_alloc();
    v0[9] = v3;
    *v3 = v0;
    v3[1] = sub_1004C10C8;

    return sub_1004BF48C();
  }

  else
  {
    v5 = v0[3];
    v6 = (v2 + *(sub_10028088C(&unk_10097CA30, &unk_100801610) + 48));
    v7 = *v6;
    v8 = v6[1];
    v0[6] = v8;
    sub_100413418(v2, v5);
    v9 = swift_task_alloc();
    v0[7] = v9;
    *v9 = v0;
    v9[1] = sub_1004C0F10;
    v10 = v0[3];

    return sub_1004BDE60(v10, v7, v8);
  }
}

uint64_t sub_1004C0F10()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_1004C1248;
  }

  else
  {
    v2 = sub_1004C1040;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1004C1040()
{
  sub_1004C260C(*(v0 + 24), type metadata accessor for SDTempPairingEndpoint);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1004C10C8()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_1004C1408;
  }

  else
  {
    v2 = sub_1004C11DC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1004C11DC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1004C1248()
{
  sub_1004C260C(*(v0 + 24), type metadata accessor for SDTempPairingEndpoint);
  if (qword_100973930 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000C4AC(v1, qword_1009803F8);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "%@", v4, 0xCu);
    sub_10028924C(v5);
  }

  else
  {
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1004C1408()
{
  if (qword_100973930 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000C4AC(v1, qword_1009803F8);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "%@", v4, 0xCu);
    sub_10028924C(v5);
  }

  else
  {
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1004C15AC()
{
  sub_1002F5A40(*(v0 + 24), *(v0 + 32));
  v1 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDTempPairingConnection_identifier;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1004C260C(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDTempPairingConnection_role, type metadata accessor for SDTempPairingConnection.Role);

  return swift_deallocClassInstance();
}

uint64_t sub_1004C16C4(uint64_t a1)
{
  result = type metadata accessor for UUID();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for SDTempPairingConnection.Role(319);
    if (v3 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

void sub_1004C17D8(uint64_t a1)
{
  sub_1004C184C(319);
  if (v1 <= 0x3F)
  {
    sub_1004C18B8();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1004C184C(uint64_t a1)
{
  if (!qword_100980588)
  {
    type metadata accessor for SDTempPairingEndpoint(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_100980588);
    }
  }
}

void sub_1004C18B8()
{
  if (!qword_100980590)
  {
    v0 = type metadata accessor for NWConnection();
    if (!v1)
    {
      atomic_store(v0, &qword_100980590);
    }
  }
}

uint64_t sub_1004C1900(void *a1)
{
  v3 = v1;
  v5 = sub_10028088C(&qword_1009805E0, &qword_100806AF8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11[-v7 - 8];
  sub_10002CDC0(a1, a1[3]);
  sub_1004C2A7C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v13) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    LOBYTE(v13) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v13) = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v15 = *(v3 + 40);
    v13 = *(v3 + 40);
    v12 = 3;
    sub_100320328(&v15, v11);
    sub_1002F3198();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100026AC0(v13, *(&v13 + 1));
    v13 = *(v3 + 56);
    v14 = v13;
    v12 = 4;
    sub_100320328(&v14, v11);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100026AC0(v13, *(&v13 + 1));
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1004C1B78(void *a1)
{
  v3 = v1;
  v5 = sub_10028088C(&qword_100980600, &qword_100806B08);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11[-v7 - 8];
  sub_10002CDC0(a1, a1[3]);
  sub_1004C35C8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v13) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    LOBYTE(v13) = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v13) = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v15 = *(v3 + 40);
    v13 = *(v3 + 40);
    v12 = 3;
    sub_100320328(&v15, v11);
    sub_1002F3198();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100026AC0(v13, *(&v13 + 1));
    v13 = *(v3 + 56);
    v14 = v13;
    v12 = 4;
    sub_100320328(&v14, v11);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100026AC0(v13, *(&v13 + 1));
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1004C1E10()
{
  v1 = *v0;
  v2 = 0x6E6F6973726576;
  v3 = 0x696669746E656469;
  v4 = 0x654B63696C627570;
  if (v1 != 3)
  {
    v4 = 0x5249656369766564;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 1701667182;
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

uint64_t sub_1004C1EB8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1004C2AD0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1004C1EE0(uint64_t a1)
{
  v2 = sub_1004C2A7C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1004C1F1C(uint64_t a1)
{
  v2 = sub_1004C2A7C();

  return CodingKey.debugDescription.getter(a1, v2);
}

__n128 sub_1004C1F58@<Q0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_1004C2C98(a2, v6);
  if (!v2)
  {
    v5 = v6[3];
    *(a1 + 32) = v6[2];
    *(a1 + 48) = v5;
    *(a1 + 64) = v7;
    result = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = result;
  }

  return result;
}

uint64_t sub_1004C1FF0()
{
  v1 = *v0;
  v2 = 0x6E6F6973726576;
  v3 = 0x696669746E656469;
  v4 = 0x654B63696C627570;
  if (v1 != 3)
  {
    v4 = 0x5249656369766564;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x726F727265;
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

uint64_t sub_1004C209C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1004C3070(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1004C20C4(uint64_t a1)
{
  v2 = sub_1004C35C8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1004C2100(uint64_t a1)
{
  v2 = sub_1004C35C8();

  return CodingKey.debugDescription.getter(a1, v2);
}

__n128 sub_1004C213C@<Q0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_1004C3234(a2, v6);
  if (!v2)
  {
    v5 = v6[3];
    *(a1 + 32) = v6[2];
    *(a1 + 48) = v5;
    *(a1 + 64) = v7;
    result = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = result;
  }

  return result;
}

void *sub_1004C21D4(uint64_t a1, void *a2, void *a3)
{
  v4 = v3;
  v8 = type metadata accessor for NWEndpoint();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for SDTempPairingEndpoint(0);
  __chkstk_darwin(v12 - 8);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for SDTempPairingConnection.Role(0);
  __chkstk_darwin(v15);
  v17 = (&v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4[3] = 0;
  v4[4] = 0;
  UUID.init()();
  sub_1004C25A8(a1, v4 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDTempPairingConnection_role);
  *(v4 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDTempPairingConnection_temporaryIdentity) = a2;
  v4[2] = a3;
  sub_1004C25A8(a1, v17);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    *(v4 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDTempPairingConnection_connection) = *v17;
    v18 = a2;
    v19 = a3;
  }

  else
  {
    sub_10028088C(&unk_10097CA30, &unk_100801610);
    v27 = v8;
    v20 = a2;
    v21 = a3;

    sub_100413418(v17, v14);
    type metadata accessor for NWProtocolTCP.Options();
    swift_allocObject();
    NWProtocolTCP.Options.init()();
    dispatch thunk of NWProtocolTCP.Options.enableKeepalive.setter();
    dispatch thunk of NWProtocolTCP.Options.keepaliveIdle.setter();
    type metadata accessor for NWProtocolTLS.Options();
    swift_allocObject();
    NWProtocolTLS.Options.init()();
    v22 = dispatch thunk of NWProtocolTLS.Options.securityProtocolOptions.getter();
    aBlock[4] = sub_1004BDC54;
    aBlock[5] = 0;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10062FDCC;
    aBlock[3] = &unk_1008E44E0;
    v23 = _Block_copy(aBlock);
    sec_protocol_options_set_verify_block(v22, v23, v21);
    _Block_release(v23);
    swift_unknownObjectRelease();
    type metadata accessor for NWParameters();

    NWParameters.__allocating_init(tls:tcp:)();
    NWParameters.includePeerToPeer.setter();
    (*(v9 + 16))(v11, v14, v27);
    type metadata accessor for NWConnection();
    swift_allocObject();
    v24 = NWConnection.init(to:using:)();

    sub_1004C260C(v14, type metadata accessor for SDTempPairingEndpoint);
    *(v4 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDTempPairingConnection_connection) = v24;
  }

  sub_1004BDC80();
  sub_1004C260C(a1, type metadata accessor for SDTempPairingConnection.Role);
  return v4;
}

uint64_t sub_1004C25A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SDTempPairingConnection.Role(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1004C260C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1004C2674(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100005C04;

  return sub_1004C0CBC(a1, v4, v5, v6);
}

unint64_t sub_1004C2728()
{
  result = qword_1009805C0;
  if (!qword_1009805C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009805C0);
  }

  return result;
}

unint64_t sub_1004C2814()
{
  result = qword_1009805D0;
  if (!qword_1009805D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009805D0);
  }

  return result;
}

__n128 sub_1004C28B0(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1004C28D4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1004C291C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1004C297C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1004C29C4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1004C2A28()
{
  result = qword_1009805D8;
  if (!qword_1009805D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009805D8);
  }

  return result;
}

unint64_t sub_1004C2A7C()
{
  result = qword_1009805E8;
  if (!qword_1009805E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009805E8);
  }

  return result;
}

uint64_t sub_1004C2AD0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x654B63696C627570 && a2 == 0xE900000000000079 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x5249656369766564 && a2 == 0xED0000617461444BLL)
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

uint64_t sub_1004C2C98@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_10028088C(&qword_100980608, &qword_100806B10);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v24 - v7;
  sub_10002CDC0(a1, a1[3]);
  sub_1004C2A7C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000C60C(a1);
  }

  LOBYTE(v38) = 0;
  v9 = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v38) = 1;
  v10 = KeyedDecodingContainer.decode(_:forKey:)();
  v32 = v11;
  v31 = v10;
  LOBYTE(v38) = 2;
  v12 = KeyedDecodingContainer.decode(_:forKey:)();
  v30 = v13;
  v28 = v12;
  LOBYTE(v33) = 3;
  v29 = sub_1002F309C();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v14 = v39;
  v27 = v38;
  v49 = 4;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v6 + 8))(v8, v5);
  v29 = v47;
  v26 = v48;
  v15 = v31;
  *&v33 = v9;
  *(&v33 + 1) = v31;
  v16 = v32;
  v17 = v14;
  v25 = v14;
  v18 = v28;
  *&v34 = v32;
  *(&v34 + 1) = v28;
  v19 = v30;
  v20 = v27;
  *&v35 = v30;
  *(&v35 + 1) = v27;
  *&v36 = v17;
  *(&v36 + 1) = v47;
  v37 = v48;
  sub_1004C277C(&v33, &v38);
  sub_10000C60C(a1);
  v38 = v9;
  v39 = v15;
  v40 = v16;
  v41 = v18;
  v42 = v19;
  v43 = v20;
  v44 = v25;
  v45 = v29;
  v46 = v26;
  result = sub_1004C27B4(&v38);
  v22 = v36;
  *(a2 + 32) = v35;
  *(a2 + 48) = v22;
  *(a2 + 64) = v37;
  v23 = v34;
  *a2 = v33;
  *(a2 + 16) = v23;
  return result;
}

uint64_t sub_1004C3070(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x726F727265 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x654B63696C627570 && a2 == 0xE900000000000079 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x5249656369766564 && a2 == 0xED0000617461444BLL)
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

uint64_t sub_1004C3234@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_10028088C(&qword_1009805F0, &qword_100806B00);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v21 - v7;
  sub_10002CDC0(a1, a1[3]);
  sub_1004C35C8();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000C60C(a1);
  }

  LOBYTE(v33) = 0;
  v9 = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v33) = 1;
  v27 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v44 = v10 & 1;
  LOBYTE(v33) = 2;
  v11 = KeyedDecodingContainer.decode(_:forKey:)();
  v26 = v12;
  v25 = v11;
  LOBYTE(v28) = 3;
  sub_1002F309C();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v23 = v33;
  v24 = v34;
  v45 = 4;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v6 + 8))(v8, v5);
  v22 = v42;
  v21 = v43;
  *&v28 = v9;
  *(&v28 + 1) = v27;
  v13 = v44;
  LOBYTE(v29) = v44;
  v14 = v25;
  v15 = v26;
  *(&v29 + 1) = v25;
  *&v30 = v26;
  v16 = v23;
  v17 = v24;
  *(&v30 + 1) = v23;
  *&v31 = v24;
  *(&v31 + 1) = v42;
  v32 = v43;
  sub_1004C2868(&v28, &v33);
  sub_10000C60C(a1);
  v33 = v9;
  v34 = v27;
  v35 = v13;
  v36 = v14;
  v37 = v15;
  v38 = v16;
  v39 = v17;
  v40 = v22;
  v41 = v21;
  result = sub_1004C27E4(&v33);
  v19 = v31;
  *(a2 + 32) = v30;
  *(a2 + 48) = v19;
  *(a2 + 64) = v32;
  v20 = v29;
  *a2 = v28;
  *(a2 + 16) = v20;
  return result;
}

unint64_t sub_1004C35C8()
{
  result = qword_1009805F8;
  if (!qword_1009805F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009805F8);
  }

  return result;
}

unint64_t sub_1004C361C()
{
  result = qword_100980610;
  if (!qword_100980610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100980610);
  }

  return result;
}

unint64_t sub_1004C36A4()
{
  result = qword_100980618;
  if (!qword_100980618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100980618);
  }

  return result;
}

unint64_t sub_1004C36FC()
{
  result = qword_100980620;
  if (!qword_100980620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100980620);
  }

  return result;
}

unint64_t sub_1004C3754()
{
  result = qword_100980628;
  if (!qword_100980628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100980628);
  }

  return result;
}

unint64_t sub_1004C37AC()
{
  result = qword_100980630;
  if (!qword_100980630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100980630);
  }

  return result;
}

unint64_t sub_1004C3804()
{
  result = qword_100980638;
  if (!qword_100980638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100980638);
  }

  return result;
}

unint64_t sub_1004C385C()
{
  result = qword_100980640;
  if (!qword_100980640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100980640);
  }

  return result;
}

uint64_t sub_1004C38BC(uint64_t a1)
{
  type metadata accessor for Optional();
  sub_100280938(&unk_10097A930, &unk_1007F9050);
  type metadata accessor for CheckedContinuation();
  result = type metadata accessor for Optional();
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

uint64_t sub_1004C39A4()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_100980650);
  v1 = sub_10000C4AC(v0, qword_100980650);
  if (qword_1009736D0 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C4AC(v0, qword_1009A08B8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1004C3A6C(uint64_t a1)
{
  v22 = a1;
  v2 = *v1;
  v3 = swift_isaMask;
  type metadata accessor for Optional();
  sub_100280938(&unk_10097A930, &unk_1007F9050);
  v4 = type metadata accessor for CheckedContinuation();
  v5 = type metadata accessor for Optional();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v24 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v11 = &v21 - v10;
  __chkstk_darwin(v9);
  v13 = &v21 - v12;
  v23 = *(v1 + *((v3 & v2) + 0x58));
  os_unfair_lock_lock(v23 + 4);
  v14 = *((swift_isaMask & *v1) + 0x68);
  swift_beginAccess();
  v15 = *(v6 + 16);
  v15(v13, v1 + v14, v5);
  v16 = *(v4 - 8);
  (*(v16 + 56))(v11, 1, 1, v4);
  swift_beginAccess();
  v17 = v1 + v14;
  v18 = v24;
  (*(v6 + 40))(v17, v11, v5);
  swift_endAccess();
  os_unfair_lock_unlock(v23 + 4);
  v15(v18, v13, v5);
  if ((*(v16 + 48))(v18, 1, v4) == 1)
  {
    v19 = *(v6 + 8);
    v19(v13, v5);
    return (v19)(v18, v5);
  }

  else
  {
    sub_1004C3D8C(v22, v4);
    (*(v6 + 8))(v13, v5);
    return (*(v16 + 8))(v18, v4);
  }
}

uint64_t sub_1004C3D8C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(a1);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v8 + 24);
  v10 = *(v9 - 8);
  __chkstk_darwin(v5);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Result();
  __chkstk_darwin(v13);
  v15 = &v18 - v14;
  (*(v16 + 16))(&v18 - v14, a1, v13);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v10 + 32))(v12, v15, v9);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    (*(v4 + 32))(v7, v15, v3);
    return CheckedContinuation.resume(returning:)();
  }
}