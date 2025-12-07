uint64_t sub_1002AD3C8()
{
  v0[22] = v0[43];
  v1 = swift_allocObject();
  v0[45] = v1;
  v1[2] = v0 + 22;
  v1[3] = 0xD000000000000013;
  v1[4] = 0x800000010046ABA0;
  v2 = swift_task_alloc();
  v0[46] = v2;
  *v2 = v0;
  v2[1] = sub_1002AD4DC;

  return sub_1001FBFAC(0xD000000000000013, 0x800000010046ABA0, &unk_100414498, v1);
}

uint64_t sub_1002AD4DC(uint64_t a1)
{
  *(*v2 + 376) = v1;

  if (v1)
  {

    v3 = sub_1002AD758;
  }

  else
  {

    v3 = sub_1002AD628;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1002AD628()
{
  v1 = v0[24];
  swift_beginAccess();
  v2 = v0[22];
  v3 = OBJC_IVAR____TtC10seserviced14SECUserSession_credentials;
  swift_beginAccess();
  *(v1 + v3) = v2;

  v4 = v0[1];

  return v4();
}

uint64_t sub_1002AD6E8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002AD758()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002AD7D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[23] = a4;
  v5[24] = v4;
  v5[21] = a2;
  v5[22] = a3;
  v5[20] = a1;
  v6 = type metadata accessor for UUID();
  v5[25] = v6;
  v5[26] = *(v6 - 8);
  v5[27] = swift_task_alloc();

  return _swift_task_switch(sub_1002AD898, 0, 0);
}

uint64_t sub_1002AD898(uint64_t a1, uint64_t a2)
{
  if (qword_100501DC8 != -1)
  {
    swift_once();
  }

  v3 = qword_10051B858;
  *(v2 + 224) = qword_10051B858;
  sub_1001FF418((v2 + 16));
  *(v2 + 232) = 0;
  v4 = *(v2 + 24);
  *(v2 + 240) = *(v2 + 16);
  *(v2 + 248) = v4;

  sub_10012E450(v2 + 16);

  return _swift_task_switch(sub_1002AD9A8, v3, 0);
}

uint64_t sub_1002AD9A8()
{
  v1 = *(v0 + 232);
  v2 = sub_10035E904();
  v3 = *(v0 + 248);
  if (v1)
  {

    v9 = *(v0 + 8);

    return v9();
  }

  else
  {
    v4 = v2;
    v5 = *(v0 + 240);
    v6 = *(v0 + 224);
    v11 = *(v0 + 176);
    v7 = swift_task_alloc();
    v8 = *(v0 + 160);
    *(v7 + 16) = v4;
    *(v7 + 24) = v8;
    *(v7 + 40) = v11;
    *(v7 + 56) = v6;
    *(v7 + 64) = v5;
    *(v7 + 72) = v3;
    type metadata accessor for CredentialInternal();
    NSManagedObjectContext.performAndWait<A>(_:)();

    *(v0 + 256) = *(v0 + 152);

    return _swift_task_switch(sub_1002ADB0C, 0, 0);
  }
}

uint64_t sub_1002ADB0C(uint64_t a1, uint64_t a2)
{
  v27 = v2;
  if (qword_100501C48 != -1)
  {
    swift_once();
  }

  v4 = v2[26];
  v3 = v2[27];
  v5 = v2[25];
  v6 = v2[20];
  v7 = type metadata accessor for Logger();
  sub_1000958E4(v7, qword_100509790);
  (*(v4 + 16))(v3, v6, v5);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();
  v10 = os_log_type_enabled(v8, v9);
  v12 = v2[26];
  v11 = v2[27];
  v13 = v2[25];
  if (v10)
  {
    v14 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *v14 = 136315394;
    *(v14 + 4) = sub_1002FFA0C(0xD000000000000036, 0x800000010046AB60, &v26);
    *(v14 + 12) = 2080;
    v15 = UUID.uuidString.getter();
    v17 = v16;
    (*(v12 + 8))(v11, v13);
    v18 = sub_1002FFA0C(v15, v17, &v26);

    *(v14 + 14) = v18;
    _os_log_impl(&_mh_execute_header, v8, v9, "%s identifier %s success", v14, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    (*(v12 + 8))(v11, v13);
  }

  v19 = v2[32];
  v20 = v2[24];
  v21 = OBJC_IVAR____TtC10seserviced14SECUserSession_credentials;
  swift_beginAccess();
  v22 = v19;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(v20 + v21) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v20 + v21) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();

  v23 = v2[1];
  v24 = v2[32];

  return v23(v24);
}

uint64_t sub_1002ADDF8(uint64_t a1, uint64_t a2)
{
  if (qword_100501DC8 != -1)
  {
    swift_once();
  }

  v3 = qword_10051B858;
  *(v2 + 304) = qword_10051B858;
  sub_1001FF418((v2 + 128));
  *(v2 + 312) = 0;
  v4 = *(v2 + 136);
  *(v2 + 320) = *(v2 + 128);
  *(v2 + 328) = v4;

  sub_10012E450(v2 + 128);

  return _swift_task_switch(sub_1002AE0A0, v3, 0);
}

uint64_t sub_1002AE0A0()
{
  v1 = v0[39];
  v0[42] = sub_100362B68(v0[40], v0[41]);
  v0[43] = v1;

  if (v1)
  {
    v2 = sub_1002AE870;
  }

  else
  {
    v2 = sub_1002AE134;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1002AE134()
{
  v0[36] = v0[42];
  v1 = swift_allocObject();
  v0[44] = v1;
  v1[2] = v0 + 36;
  v1[3] = 0xD000000000000015;
  v1[4] = 0x800000010046AB40;
  v2 = swift_task_alloc();
  v0[45] = v2;
  *v2 = v0;
  v2[1] = sub_1002AE248;

  return sub_1001FBFAC(0xD000000000000015, 0x800000010046AB40, &unk_100414478, v1);
}

uint64_t sub_1002AE248(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 368) = a1;
  *(v3 + 376) = v1;

  if (v1)
  {
    v4 = sub_1002AEA70;
  }

  else
  {
    v4 = sub_1002AE384;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1002AE384(uint64_t a1, uint64_t a2)
{
  v38 = v2;
  v3 = *(v2 + 376);
  sub_1001FF418((v2 + 16));
  v4 = *(v2 + 368);
  if (v3)
  {

    if (qword_100501C48 == -1)
    {
      goto LABEL_3;
    }

    goto LABEL_26;
  }

  v12 = *(v2 + 16);
  v13 = *(v2 + 24);

  sub_10012E450(v2 + 16);
  if (v4 >> 62)
  {
    v14 = _CocoaArrayWrapper.endIndex.getter();
    if (!v14)
    {
      goto LABEL_28;
    }
  }

  else
  {
    v14 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v14)
    {
      goto LABEL_28;
    }
  }

  if (qword_100501C48 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_1000958E4(v15, qword_100509790);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&_mh_execute_header, v16, v17, "Firing installation complete callback", v18, 2u);
  }

  v19 = *(v2 + 296);

  v20 = *(v2 + 368);
  if (*(v19 + OBJC_IVAR____TtC10seserviced14SECUserSession_installFinishedCallback))
  {
    v35 = *(v19 + OBJC_IVAR____TtC10seserviced14SECUserSession_installFinishedCallback);
    v36 = v2;
    v21 = *(v19 + OBJC_IVAR____TtC10seserviced14SECUserSession_installFinishedCallback + 8);
    v37 = _swiftEmptyArrayStorage;
    v2 = v4 & 0xC000000000000001;
    v22 = v4 & 0xFFFFFFFFFFFFFF8;
    v23 = v20 + 32;
    v34 = v21;

    v24 = 0;
    while (1)
    {
      if (v2)
      {
        v25 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v24 >= *(v22 + 16))
        {
          goto LABEL_25;
        }

        v25 = *(v23 + 8 * v24);
      }

      v26 = v25;
      v27 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      v28._countAndFlagsBits = v12;
      v28._object = v13;
      if (CredentialInternal.isAccessible(appId:)(v28))
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        v23 = v20 + 32;
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      else
      {
      }

      ++v24;
      if (v27 == v14)
      {
        v2 = v36;

        v35(v37);
        sub_1000B2A4C(v35, v34);

        goto LABEL_29;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    swift_once();
LABEL_3:
    v5 = type metadata accessor for Logger();
    sub_1000958E4(v5, qword_100509790);
    swift_errorRetain();
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v37 = v10;
      *v8 = 138412546;
      swift_errorRetain();
      v11 = _swift_stdlib_bridgeErrorToNSError();
      *(v8 + 4) = v11;
      *v9 = v11;
      *(v8 + 12) = 2080;
      *(v8 + 14) = sub_1002FFA0C(0xD000000000000018, 0x800000010046AB20, &v37);
      _os_log_impl(&_mh_execute_header, v6, v7, "Error %@ encountered %s", v8, 0x16u);
      sub_100075768(v9, &unk_100503F70, &unk_10040B2E0);

      sub_1000752F4(v10);
    }

    else
    {
    }

    goto LABEL_30;
  }

LABEL_28:

LABEL_29:
  v29 = *(v2 + 296);
  swift_beginAccess();
  v30 = *(v2 + 288);
  v31 = OBJC_IVAR____TtC10seserviced14SECUserSession_credentials;
  swift_beginAccess();
  *(v29 + v31) = v30;

LABEL_30:
  v32 = *(v2 + 8);

  return v32();
}

uint64_t sub_1002AE870(uint64_t a1, uint64_t a2)
{
  v13 = v2;
  if (qword_100501C48 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_1000958E4(v3, qword_100509790);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v12 = v8;
    *v6 = 138412546;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    *(v6 + 12) = 2080;
    *(v6 + 14) = sub_1002FFA0C(0xD000000000000018, 0x800000010046AB20, &v12);
    _os_log_impl(&_mh_execute_header, v4, v5, "Error %@ encountered %s", v6, 0x16u);
    sub_100075768(v7, &unk_100503F70, &unk_10040B2E0);

    sub_1000752F4(v8);
  }

  else
  {
  }

  v10 = *(v2 + 8);

  return v10();
}

uint64_t sub_1002AEA70()
{
  v11 = v0;

  if (qword_100501C48 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000958E4(v1, qword_100509790);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v10 = v6;
    *v4 = 138412546;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v7;
    *v5 = v7;
    *(v4 + 12) = 2080;
    *(v4 + 14) = sub_1002FFA0C(0xD000000000000018, 0x800000010046AB20, &v10);
    _os_log_impl(&_mh_execute_header, v2, v3, "Error %@ encountered %s", v4, 0x16u);
    sub_100075768(v5, &unk_100503F70, &unk_10040B2E0);

    sub_1000752F4(v6);
  }

  else
  {
  }

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1002AEC78(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = type metadata accessor for UUID();
  v2[7] = v3;
  v2[8] = *(v3 - 8);
  v2[9] = swift_task_alloc();

  return _swift_task_switch(sub_1002AED38, 0, 0);
}

uint64_t sub_1002AED38()
{
  if (qword_100501DC8 != -1)
  {
    swift_once();
  }

  v1 = qword_10051B858;
  *(v0 + 80) = qword_10051B858;

  return _swift_task_switch(sub_1002AEDD0, v1, 0);
}

uint64_t sub_1002AEDD0()
{
  v1 = sub_10035E904();
  v2 = v0[10];
  v3 = v0[5];
  v4 = swift_task_alloc();
  v4[2] = v1;
  v4[3] = v2;
  v4[4] = v3;
  NSManagedObjectContext.performAndWait<A>(_:)();
  v0[11] = 0;

  return _swift_task_switch(sub_1002AEEF0, 0, 0);
}

uint64_t sub_1002AEEF0(uint64_t a1, uint64_t a2)
{
  v30 = v2;
  if (qword_100501C48 != -1)
  {
    swift_once();
  }

  v4 = v2[8];
  v3 = v2[9];
  v5 = v2[7];
  v6 = v2[5];
  v7 = type metadata accessor for Logger();
  sub_1000958E4(v7, qword_100509790);
  (*(v4 + 16))(v3, v6, v5);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();
  v10 = os_log_type_enabled(v8, v9);
  v12 = v2[8];
  v11 = v2[9];
  v13 = v2[7];
  if (v10)
  {
    v14 = swift_slowAlloc();
    v29[0] = swift_slowAlloc();
    *v14 = 136315394;
    *(v14 + 4) = sub_1002FFA0C(0xD000000000000017, 0x800000010046AB00, v29);
    *(v14 + 12) = 2080;
    v15 = UUID.uuidString.getter();
    v17 = v16;
    (*(v12 + 8))(v11, v13);
    v18 = sub_1002FFA0C(v15, v17, v29);

    *(v14 + 14) = v18;
    _os_log_impl(&_mh_execute_header, v8, v9, "%s identifier %s success", v14, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    (*(v12 + 8))(v11, v13);
  }

  v19 = v2[11];
  v20 = v2[5];
  v21 = v2[6];
  v22 = swift_task_alloc();
  *(v22 + 16) = v20;
  v23 = OBJC_IVAR____TtC10seserviced14SECUserSession_credentials;
  swift_beginAccess();
  result = sub_1002B04E0(sub_1002B02C8, v22);
  if (v19)
  {

    return swift_endAccess();
  }

  v25 = *(v21 + v23);
  if (v25 >> 62)
  {
    v28 = result;
    v26 = _CocoaArrayWrapper.endIndex.getter();
    result = v28;
    if (v26 >= v28)
    {
      goto LABEL_12;
    }

LABEL_16:
    __break(1u);
    return result;
  }

  v26 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v26 < result)
  {
    goto LABEL_16;
  }

LABEL_12:
  sub_1001A281C(result, v26);
  swift_endAccess();

  v27 = v2[1];

  return v27();
}

uint64_t sub_1002AF224(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[11] = a3;
  v4[12] = v3;
  v4[9] = a1;
  v4[10] = a2;
  v5 = type metadata accessor for UUID();
  v4[13] = v5;
  v4[14] = *(v5 - 8);
  v4[15] = swift_task_alloc();

  return _swift_task_switch(sub_1002AF2E8, 0, 0);
}

uint64_t sub_1002AF2E8()
{
  if (qword_100501DC8 != -1)
  {
    swift_once();
  }

  v1 = qword_10051B858;
  *(v0 + 128) = qword_10051B858;

  return _swift_task_switch(sub_1002AF380, v1, 0);
}

uint64_t sub_1002AF380()
{
  v1 = sub_10035E904();
  v2 = *(v0 + 128);
  v3 = *(v0 + 88);
  v4 = swift_task_alloc();
  v5 = *(v0 + 72);
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  *(v4 + 32) = v5;
  *(v4 + 48) = v3;
  NSManagedObjectContext.performAndWait<A>(_:)();
  *(v0 + 136) = 0;

  return _swift_task_switch(sub_1002AF4A8, 0, 0);
}

uint64_t sub_1002AF4A8(uint64_t a1, uint64_t a2)
{
  v22 = v2;
  if (qword_100501C48 != -1)
  {
    swift_once();
  }

  v4 = v2[14];
  v3 = v2[15];
  v5 = v2[13];
  v6 = v2[9];
  v7 = type metadata accessor for Logger();
  sub_1000958E4(v7, qword_100509790);
  (*(v4 + 16))(v3, v6, v5);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();
  v10 = os_log_type_enabled(v8, v9);
  v12 = v2[14];
  v11 = v2[15];
  v13 = v2[13];
  if (v10)
  {
    v14 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *v14 = 136315394;
    *(v14 + 4) = sub_1002FFA0C(0xD000000000000026, 0x800000010046AAD0, &v21);
    *(v14 + 12) = 2080;
    v15 = UUID.uuidString.getter();
    v17 = v16;
    (*(v12 + 8))(v11, v13);
    v18 = sub_1002FFA0C(v15, v17, &v21);

    *(v14 + 14) = v18;
    _os_log_impl(&_mh_execute_header, v8, v9, "%s identifier %s success", v14, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    (*(v12 + 8))(v11, v13);
  }

  v19 = v2[16];

  return _swift_task_switch(sub_1002AF6E4, v19, 0);
}

uint64_t sub_1002AF6E4()
{
  v1 = v0[17];
  v0[18] = sub_100362B68(0, 0);
  v0[19] = v1;
  if (v1)
  {
    v2 = sub_1002AFA90;
  }

  else
  {
    v2 = sub_1002AF774;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1002AF774()
{
  v0[8] = v0[18];
  v1 = swift_allocObject();
  v0[20] = v1;
  *(v1 + 16) = v0 + 8;
  strcpy((v1 + 24), "Update Access");
  *(v1 + 38) = -4864;
  v2 = swift_task_alloc();
  v0[21] = v2;
  *v2 = v0;
  v2[1] = sub_1002AF88C;

  return sub_1001FBFAC(0x4120657461647055, 0xED00007373656363, &unk_100414458, v1);
}

uint64_t sub_1002AF88C(uint64_t a1)
{
  *(*v2 + 176) = v1;

  if (v1)
  {

    v3 = sub_1002AFAF4;
  }

  else
  {

    v3 = sub_1002AF9D8;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1002AF9D8()
{
  v1 = v0[12];
  swift_beginAccess();
  v2 = v0[8];
  v3 = OBJC_IVAR____TtC10seserviced14SECUserSession_credentials;
  swift_beginAccess();
  *(v1 + v3) = v2;

  v4 = v0[1];

  return v4();
}

uint64_t sub_1002AFA90()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002AFAF4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002AFB60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v5[6] = a2;
  v5[7] = a3;
  v5[5] = a1;
  sub_100068FC4(&unk_10050BE80, &unk_10040B360);
  v5[10] = swift_task_alloc();

  return _swift_task_switch(sub_1002AFC04, 0, 0);
}

uint64_t sub_1002AFC04()
{
  if (qword_100501DC8 != -1)
  {
    swift_once();
  }

  v1 = v0[10];
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  swift_beginAccess();
  v3 = swift_task_alloc();
  v0[11] = v3;
  *v3 = v0;
  v3[1] = sub_1002AFD3C;
  v4 = v0[9];
  v5 = v0[10];
  v7 = v0[7];
  v6 = v0[8];
  v8 = v0[6];

  return sub_10032C1CC(v7, v6, v4, v8, v5);
}

uint64_t sub_1002AFD3C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 96) = v1;

  if (v1)
  {
    v5 = sub_1002B09EC;
  }

  else
  {
    v6 = *(v4 + 80);
    *(v4 + 104) = a1;
    swift_endAccess();
    sub_100075768(v6, &unk_10050BE80, &unk_10040B360);
    v5 = sub_1002B09DC;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1002AFE84(uint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  if (a2)
  {

    if ((a2(v11) & 1) == 0)
    {
      sub_1000B2A4C(a2, a3);
      v12 = 0;
      return v12 & 1;
    }

    CredentialInternal.identifier.getter();
    v12 = static UUID.== infix(_:_:)();
    sub_1000B2A4C(a2, a3);
  }

  else
  {
    CredentialInternal.identifier.getter();
    v12 = static UUID.== infix(_:_:)();
  }

  (*(v8 + 8))(v10, v7);
  return v12 & 1;
}

uint64_t sub_1002AFFF0(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  CredentialInternal.identifier.getter();
  v6 = static UUID.== infix(_:_:)();
  (*(v3 + 8))(v5, v2);
  return v6 & 1;
}

uint64_t sub_1002B00E0(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for Logger();
  sub_1000B6A94(v2, qword_100509790);
  v3 = sub_1000958E4(v2, qword_100509790);
  if (qword_1005019D8 != -1)
  {
    swift_once();
  }

  v4 = sub_1000958E4(v2, qword_10051B2C8);
  v5 = *(*(v2 - 8) + 16);

  return v5(v3, v4, v2);
}

uint64_t sub_1002B01CC()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1002B0204(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1000C288C;

  return sub_100204558(a1, a2, v6, v7, v8);
}

uint64_t sub_1002B02E8(uint64_t (*a1)(__int128 *), uint64_t a2)
{
  v4 = a2;
  v6 = *v2;
  result = sub_100196530(a1, a2, *v2);
  v31 = v3;
  if (!v3)
  {
    if (v8)
    {
      return *(v6 + 16);
    }

    v9 = result + 1;
    if (!__OFADD__(result, 1))
    {
      v11 = (v6 + 16);
      v10 = *(v6 + 16);
      if (v9 == v10)
      {
        return result;
      }

      v28 = a1;
      v12 = 16 * result;
      while (v9 < v10)
      {
        v13 = result;
        v14 = v6;
        v15 = v6 + v12;
        v16 = *(v15 + 56);
        v29 = *(v15 + 48);
        v30 = v16;
        sub_100069E2C(v29, v16);
        v17 = v4;
        v18 = v31;
        v19 = v28(&v29);
        result = sub_10006A178(v29, v30);
        v31 = v18;
        if (v18)
        {
          return result;
        }

        if (v19)
        {
          v4 = v17;
          result = v13;
          v6 = v14;
        }

        else
        {
          result = v13;
          if (v9 == v13)
          {
            v6 = v14;
          }

          else
          {
            if ((v13 & 0x8000000000000000) != 0)
            {
              goto LABEL_26;
            }

            if (v13 >= *v11)
            {
              goto LABEL_27;
            }

            if (v9 >= *v11)
            {
              goto LABEL_28;
            }

            v20 = *(v15 + 48);
            v21 = *(v15 + 56);
            v6 = v14;
            v27 = *(v14 + 32 + 16 * v13);
            sub_100069E2C(*(v14 + 32 + 16 * v13), *(v14 + 32 + 16 * v13 + 8));
            sub_100069E2C(v20, v21);
            result = swift_isUniquelyReferenced_nonNull_native();
            if ((result & 1) == 0)
            {
              result = sub_1001A1598(v14);
              v6 = result;
            }

            if (v13 >= *(v6 + 16))
            {
              goto LABEL_29;
            }

            v22 = v6 + 16 * v13;
            v23 = *(v22 + 32);
            v24 = *(v22 + 40);
            *(v22 + 32) = v20;
            *(v22 + 40) = v21;
            result = sub_10006A178(v23, v24);
            if (v9 >= *(v6 + 16))
            {
              goto LABEL_30;
            }

            v25 = *(v6 + v12 + 48);
            v26 = *(v6 + v12 + 56);
            *(v6 + v12 + 48) = v27;
            sub_10006A178(v25, v26);
            *v2 = v6;
            result = v13;
          }

          ++result;
          v4 = v17;
        }

        ++v9;
        v11 = (v6 + 16);
        v10 = *(v6 + 16);
        v12 += 16;
        if (v9 == v10)
        {
          return result;
        }
      }

      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1002B04E0(uint64_t (*a1)(id *), uint64_t a2)
{
  v6 = *v2;
  sub_1001965F0(a1, a2, *v2);
  if (v3)
  {
    return v4;
  }

  if (v8)
  {
    if (v6 >> 62)
    {
      return _CocoaArrayWrapper.endIndex.getter();
    }

    return *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = v7;
  v10 = v7 + 1;
  if (__OFADD__(v7, 1))
  {
    __break(1u);
    goto LABEL_9;
  }

  while (1)
  {
    if (v6 >> 62)
    {
      if (v10 == _CocoaArrayWrapper.endIndex.getter())
      {
        return v4;
      }
    }

    else if (v10 == *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v4;
    }

    if ((v6 & 0xC000000000000001) != 0)
    {
      v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if ((v10 & 0x8000000000000000) != 0)
      {
        goto LABEL_40;
      }

      if (v10 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_41;
      }

      v12 = *(v6 + 8 * v10 + 32);
    }

    v13 = v12;
    v25 = v12;
    v14 = a1(&v25);

    if ((v14 & 1) == 0)
    {
      break;
    }

LABEL_10:
    v11 = __OFADD__(v10++, 1);
    if (v11)
    {
      goto LABEL_42;
    }
  }

  if (v4 == v10)
  {
LABEL_9:
    v11 = __OFADD__(v4++, 1);
    if (v11)
    {
      goto LABEL_43;
    }

    goto LABEL_10;
  }

  if ((v6 & 0xC000000000000001) != 0)
  {
    v24 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if ((v4 & 0x8000000000000000) != 0)
    {
      goto LABEL_45;
    }

    v16 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4 >= v16)
    {
      goto LABEL_46;
    }

    if (v10 >= v16)
    {
      goto LABEL_47;
    }

    v17 = *(v6 + 32 + 8 * v10);
    v24 = *(v6 + 32 + 8 * v4);
    v15 = v17;
  }

  v18 = v15;
  if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v6 & 0x8000000000000000) != 0 || (v6 & 0x4000000000000000) != 0)
  {
    v6 = sub_1001A291C(v6);
    v19 = (v6 >> 62) & 1;
  }

  else
  {
    LODWORD(v19) = 0;
  }

  v20 = v6 & 0xFFFFFFFFFFFFFF8;
  v21 = *((v6 & 0xFFFFFFFFFFFFFF8) + 8 * v4 + 0x20);
  *((v6 & 0xFFFFFFFFFFFFFF8) + 8 * v4 + 0x20) = v18;

  if ((v6 & 0x8000000000000000) == 0 && !v19)
  {
    if ((v10 & 0x8000000000000000) != 0)
    {
      goto LABEL_39;
    }

    goto LABEL_33;
  }

  v6 = sub_1001A291C(v6);
  v20 = v6 & 0xFFFFFFFFFFFFFF8;
  if ((v10 & 0x8000000000000000) == 0)
  {
LABEL_33:
    if (v10 >= *(v20 + 16))
    {
      goto LABEL_44;
    }

    v22 = v20 + 8 * v10;
    v23 = *(v22 + 32);
    *(v22 + 32) = v24;

    *v2 = v6;
    goto LABEL_9;
  }

LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
  return _CocoaArrayWrapper.endIndex.getter();
}

uint64_t sub_1002B0748(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_10012E598;

  return sub_1002AFB60(a1, a2, v6, v7, v8);
}

uint64_t sub_1002B0854(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_10012E598;

  return sub_1002AFB60(a1, a2, v6, v7, v8);
}

uint64_t sub_1002B0918(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_10012E598;

  return sub_1002AFB60(a1, a2, v6, v7, v8);
}

uint64_t sub_1002B0A20()
{
  if (*v0)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0x696669746E656469;
  }
}

uint64_t sub_1002B0A64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000010 && 0x800000010046AC20 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

uint64_t sub_1002B0B50(uint64_t a1)
{
  v2 = sub_1002B10AC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1002B0B8C(uint64_t a1)
{
  v2 = sub_1002B10AC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1002B0C40(void *a1)
{
  v3 = sub_100068FC4(&qword_1005097F0, &qword_100414540);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_1000752B0(a1, a1[3]);
  sub_1002B10AC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8[15] = 0;

  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v1)
  {

    v8[14] = 1;

    KeyedEncodingContainer.encode(_:forKey:)();
  }

  (*(v4 + 8))(v6, v3);
}

void *sub_1002B0E0C(void *a1)
{
  v3 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_100068FC4(&qword_1005097E0, &qword_100414538);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16 - v7;
  sub_1000752B0(a1, a1[3]);
  sub_1002B10AC();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    sub_1000752F4(a1);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v19 = 0;
    v9 = KeyedDecodingContainer.decode(_:forKey:)();
    v11 = (v1 + OBJC_IVAR____TtC10seserviced32SecureElementApplicationInternal_identifier);
    *v11 = v9;
    v11[1] = v12;
    v19 = 1;
    v13 = KeyedDecodingContainer.decode(_:forKey:)();
    v14 = (v1 + OBJC_IVAR____TtC10seserviced32SecureElementApplicationInternal_bundleIdentifier);
    *v14 = v13;
    v14[1] = v15;
    v18.receiver = v1;
    v18.super_class = ObjectType;
    v3 = objc_msgSendSuper2(&v18, "init");
    (*(v6 + 8))(v8, v5);
    sub_1000752F4(a1);
  }

  return v3;
}

void *sub_1002B1038@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v6 = objc_allocWithZone(v2);
  result = sub_1002B0E0C(a1);
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_1002B10AC()
{
  result = qword_1005097E8;
  if (!qword_1005097E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005097E8);
  }

  return result;
}

unint64_t sub_1002B1114()
{
  result = qword_1005097F8;
  if (!qword_1005097F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005097F8);
  }

  return result;
}

unint64_t sub_1002B116C()
{
  result = qword_100509800;
  if (!qword_100509800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100509800);
  }

  return result;
}

unint64_t sub_1002B11C4()
{
  result = qword_100509808;
  if (!qword_100509808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100509808);
  }

  return result;
}

void sub_1002B1218(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v5 = v3;
  v9 = type metadata accessor for String.Encoding();
  __chkstk_darwin(v9);
  v13 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v14 != 2)
    {
      goto LABEL_14;
    }

    v16 = *(a1 + 16);
    v15 = *(a1 + 24);
    v17 = __OFSUB__(v15, v16);
    v18 = v15 - v16;
    if (!v17)
    {
      if (v18 == 32)
      {
        goto LABEL_8;
      }

      goto LABEL_14;
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (v14)
  {
    if (!__OFSUB__(HIDWORD(a1), a1))
    {
      if (HIDWORD(a1) - a1 == 32)
      {
        goto LABEL_8;
      }

LABEL_14:
      if (qword_100501C50 != -1)
      {
        swift_once();
      }

      v30 = type metadata accessor for Logger();
      sub_1000958E4(v30, qword_100509810);
      v31 = Logger.logObject.getter();
      v32 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        *v33 = 0;
        _os_log_impl(&_mh_execute_header, v31, v32, "Incorrect length for BLESK, cannot set value", v33, 2u);
      }

      sub_1000755A4();
      swift_allocError();
      *v34 = 0;
      goto LABEL_29;
    }

    goto LABEL_31;
  }

  if (BYTE6(a2) != 32)
  {
    goto LABEL_14;
  }

LABEL_8:
  v68 = v10;
  v69 = v11;
  if (qword_100501C50 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  v20 = sub_1000958E4(v19, qword_100509810);
  sub_100069E2C(a1, a2);
  v67 = v20;
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.debug.getter();
  sub_10006A178(a1, a2);
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v63 = v23;
    v64 = swift_slowAlloc();
    v71 = v64;
    *v23 = 136315138;
    v24 = sub_100288788(a1, a2);
    v65 = a1;
    v66 = v4;
    v70 = v24;
    v62 = v22;
    sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
    sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0, &protocol conformance descriptor for [A]);
    v25 = BidirectionalCollection<>.joined(separator:)();
    v27 = v26;

    v28 = sub_1002FFA0C(v25, v27, &v71);
    a1 = v65;

    v29 = v63;
    *(v63 + 1) = v28;
    _os_log_impl(&_mh_execute_header, v21, v62, "Received BLESK with type %s", v29, 0xCu);
    sub_1000752F4(v64);
  }

  else
  {
    v66 = v4;
  }

  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    *v37 = 0;
    _os_log_impl(&_mh_execute_header, v35, v36, "Deriving BleSKDevice", v37, 2u);
  }

  static String.Encoding.utf8.getter();
  v38 = String.data(using:allowLossyConversion:)();
  v40 = v39;
  v41 = *(v69 + 8);
  v69 += 8;
  v41(v13, v68);
  if (v40 >> 60 == 15)
  {
    goto LABEL_32;
  }

  v42 = v66;
  v43 = sub_1002B3440(a1, a2, v38, v40, a3);
  if (v42)
  {
    sub_10006A2D0(v38, v40);
LABEL_29:
    swift_willThrow();
    return;
  }

  v65 = a1;
  v45 = v43;
  v46 = v38;
  v47 = v44;
  sub_10006A2D0(v46, v40);
  v48 = v5[4];
  v49 = v5[5];
  v5[4] = v45;
  v5[5] = v47;
  sub_10006A2D0(v48, v49);
  v50 = Logger.logObject.getter();
  v51 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    *v52 = 0;
    _os_log_impl(&_mh_execute_header, v50, v51, "Deriving BleSKReader", v52, 2u);
  }

  static String.Encoding.utf8.getter();
  v53 = String.data(using:allowLossyConversion:)();
  v55 = v54;
  v41(v13, v68);
  if (v55 >> 60 != 15)
  {
    v56 = sub_1002B3440(v65, a2, v53, v55, a3);
    v58 = v57;
    sub_10006A2D0(v53, v55);
    v59 = v5[2];
    v60 = v5[3];
    v5[2] = v56;
    v5[3] = v58;
    sub_10006A2D0(v59, v60);
    return;
  }

LABEL_33:
  __break(1u);
}

uint64_t sub_1002B1854(uint64_t a1, uint64_t a2)
{
  v8[3] = &type metadata for UnsafeRawBufferPointer;
  v8[4] = &protocol witness table for UnsafeRawBufferPointer;
  v8[0] = a1;
  v8[1] = a2;
  v2 = sub_1000752B0(v8, &type metadata for UnsafeRawBufferPointer);
  v3 = *v2;
  if (*v2 && (v4 = v2[1], v5 = v4 - v3, v4 != v3))
  {
    if (v5 <= 14)
    {
      v6 = sub_10008FCD4(v3, v4);
    }

    else if (v5 >= 0x7FFFFFFF)
    {
      v6 = sub_10008FD8C(v3, v4);
    }

    else
    {
      v6 = sub_10008FE08(v3, v4);
    }
  }

  else
  {
    v6 = 0;
  }

  sub_1000752F4(v8);
  return v6;
}

Class sub_1002B1910(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v7 = v5;
  v10 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v10 != 2)
    {
      goto LABEL_14;
    }

    v12 = *(a1 + 16);
    v11 = *(a1 + 24);
    v13 = __OFSUB__(v11, v12);
    v14 = v11 - v12;
    if (!v13)
    {
      if (v14 >= 17)
      {
        goto LABEL_8;
      }

      goto LABEL_14;
    }

    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  if (v10)
  {
    if (!__OFSUB__(HIDWORD(a1), a1))
    {
      if (HIDWORD(a1) - a1 >= 17)
      {
        goto LABEL_8;
      }

LABEL_14:
      if (qword_100501C50 != -1)
      {
        swift_once();
      }

      v20 = type metadata accessor for Logger();
      sub_1000958E4(v20, qword_100509810);
      sub_100069E2C(a1, a2);
      v17 = Logger.logObject.getter();
      v21 = static os_log_type_t.error.getter();
      sub_10006A178(a1, a2);
      if (!os_log_type_enabled(v17, v21))
      {
        goto LABEL_19;
      }

      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v109 = v23;
      *v22 = 136315138;
      sub_100288788(a1, a2);
      sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
      sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0, &protocol conformance descriptor for [A]);
      v24 = BidirectionalCollection<>.joined(separator:)();
      v26 = v25;

      v27 = sub_1002FFA0C(v24, v26, &v109);

      *(v22 + 4) = v27;
      _os_log_impl(&_mh_execute_header, v17, v21, "Auth tag not present in %s", v22, 0xCu);
      sub_1000752F4(v23);

      goto LABEL_18;
    }

    goto LABEL_71;
  }

  if (BYTE6(a2) < 0x11uLL)
  {
    goto LABEL_14;
  }

LABEL_8:
  v15 = *(v5 + 24);
  if (v15 >> 60 == 15)
  {
    if (qword_100501C50 == -1)
    {
LABEL_10:
      v16 = type metadata accessor for Logger();
      sub_1000958E4(v16, qword_100509810);
      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v17, v18))
      {
LABEL_19:

        sub_1000755A4();
        swift_allocError();
        *v28 = 0;
        return swift_willThrow();
      }

      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "Decrypt message called before bleSKReader is derived", v19, 2u);
LABEL_18:

      goto LABEL_19;
    }

LABEL_72:
    swift_once();
    goto LABEL_10;
  }

  v30 = *(v5 + 16);
  v31 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v31 != 2)
    {
      goto LABEL_34;
    }

    v33 = *(a3 + 16);
    v32 = *(a3 + 24);
    v13 = __OFSUB__(v32, v33);
    v34 = v32 - v33;
    if (!v13)
    {
      if (v34 == 4)
      {
        goto LABEL_27;
      }

      goto LABEL_34;
    }

    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    swift_once();
    goto LABEL_41;
  }

  if (v31)
  {
    if (!__OFSUB__(HIDWORD(a3), a3))
    {
      if (HIDWORD(a3) - a3 == 4)
      {
        goto LABEL_27;
      }

LABEL_34:
      v39 = *(v5 + 16);
      v108 = *(v5 + 24);
      sub_100069E2C(v39, v15);
      if (qword_100501C50 != -1)
      {
        swift_once();
      }

      v40 = type metadata accessor for Logger();
      sub_1000958E4(v40, qword_100509810);
      sub_100069E2C(a3, a4);
      v41 = Logger.logObject.getter();
      v42 = static os_log_type_t.error.getter();
      sub_10006A178(a3, a4);
      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        v109 = v44;
        *v43 = 136315394;
        sub_100288788(a3, a4);
        sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
        sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0, &protocol conformance descriptor for [A]);
        v45 = BidirectionalCollection<>.joined(separator:)();
        v47 = v46;

        v48 = sub_1002FFA0C(v45, v47, &v109);

        *(v43 + 4) = v48;
        *(v43 + 12) = 2048;
        *(v43 + 14) = 4;
        _os_log_impl(&_mh_execute_header, v41, v42, "Malformed header %s, expected length %ld", v43, 0x16u);
        sub_1000752F4(v44);
      }

      sub_1000755A4();
      swift_allocError();
      *v49 = 0;
      swift_willThrow();
      v50 = v39;
      return sub_10006A2D0(v50, v108);
    }

    goto LABEL_74;
  }

  if (BYTE6(a4) != 4)
  {
    goto LABEL_34;
  }

LABEL_27:
  v105 = a3;
  v107 = a4;
  v35 = *(v5 + 64);
  v6 = v15;
  sub_100069E2C(v30, v15);
  if (v35 <= 0xFFFE)
  {
    v108 = v6;
    result = Data._bridgeToObjectiveC()().super.isa;
    v104 = result;
    if (v10 == 2)
    {
      v57 = *(a1 + 16);
      v56 = *(a1 + 24);
      v13 = __OFSUB__(v56, v57);
      v36 = v56 - v57;
      if (!v13)
      {
        goto LABEL_48;
      }

      __break(1u);
    }

    else if (v10 == 1)
    {
      LODWORD(v36) = HIDWORD(a1) - a1;
      if (__OFSUB__(HIDWORD(a1), a1))
      {
LABEL_81:
        __break(1u);
        goto LABEL_82;
      }

      v36 = v36;
LABEL_48:
      v58 = v36 - 16;
      if (__OFSUB__(v36, 16))
      {
        __break(1u);
      }

      else
      {
        result = [objc_allocWithZone(NSMutableData) initWithLength:v58];
        v103 = result;
        if (!result)
        {
LABEL_83:
          __break(1u);
          return result;
        }

        v101 = v30;
        if ((v58 & 0x8000000000000000) == 0)
        {
          v59 = Data.subdata(in:)();
          v61 = v60;
          isa = Data._bridgeToObjectiveC()().super.isa;
          sub_10006A178(v59, v61);
          v105 = Data._bridgeToObjectiveC()().super.isa;
          v6 = [objc_allocWithZone(NSMutableData) init];
          [v6 appendU64BE:0];
          [v6 appendU32BE:*(v7 + 64)];
          result = [objc_allocWithZone(NSMutableData) init];
          v107 = result;
          if (v10 == 2)
          {
            v64 = *(a1 + 16);
            v63 = *(a1 + 24);
            v62 = v63 - v64;
            if (!__OFSUB__(v63, v64))
            {
              goto LABEL_59;
            }

            __break(1u);
          }

          else if (v10 == 1)
          {
            if (__OFSUB__(HIDWORD(a1), a1))
            {
LABEL_82:
              __break(1u);
              goto LABEL_83;
            }

            v62 = HIDWORD(a1) - a1;
LABEL_59:
            if (v62 >= v58)
            {
              v65 = Data.subdata(in:)();
              v67 = v66;
              v68 = Data._bridgeToObjectiveC()().super.isa;
              sub_10006A178(v65, v67);
              [(objc_class *)v107 appendData:v68];

              if (qword_100501C50 == -1)
              {
LABEL_61:
                v69 = type metadata accessor for Logger();
                sub_1000958E4(v69, qword_100509810);
                v70 = v6;
                v71 = v105;
                v72 = Logger.logObject.getter();
                v73 = static os_log_type_t.debug.getter();

                v106 = v70;
                if (os_log_type_enabled(v72, v73))
                {
                  v100 = v73;
                  v74 = swift_slowAlloc();
                  v109 = swift_slowAlloc();
                  *v74 = 136380931;
                  log = v72;
                  v75 = [v70 asHexString];
                  v76 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                  v78 = v77;

                  v79 = sub_1002FFA0C(v76, v78, &v109);

                  *(v74 + 4) = v79;
                  *(v74 + 12) = 2081;
                  v80 = [(objc_class *)v71 asHexString];
                  v81 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                  v83 = v82;

                  v84 = sub_1002FFA0C(v81, v83, &v109);
                  v70 = v106;

                  *(v74 + 14) = v84;
                  _os_log_impl(&_mh_execute_header, log, v100, "LyonBLE Decryption parameters iv: %{private}s, aad: %{private}s", v74, 0x16u);
                  swift_arrayDestroy();
                }

                else
                {
                }

                ccaes_gcm_decrypt_mode();
                [(objc_class *)v104 length];
                [(objc_class *)v104 bytes];
                [v70 length];
                [v70 bytes];
                [(objc_class *)v71 length];
                [(objc_class *)v71 bytes];
                [(objc_class *)isa length];
                [(objc_class *)isa bytes];
                [(objc_class *)v103 mutableBytes];
                [(objc_class *)v107 mutableBytes];
                result = ccgcm_one_shot();
                if (result)
                {
                  sub_100069E2C(a1, a2);
                  v85 = Logger.logObject.getter();
                  v86 = static os_log_type_t.error.getter();
                  sub_10006A178(a1, a2);
                  if (os_log_type_enabled(v85, v86))
                  {
                    v87 = swift_slowAlloc();
                    v88 = swift_slowAlloc();
                    v109 = v88;
                    *v87 = 136315138;
                    sub_100288788(a1, a2);
                    sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
                    sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0, &protocol conformance descriptor for [A]);
                    v89 = BidirectionalCollection<>.joined(separator:)();
                    v91 = v90;

                    v92 = sub_1002FFA0C(v89, v91, &v109);

                    *(v87 + 4) = v92;
                    _os_log_impl(&_mh_execute_header, v85, v86, "Decryption failed for secure channel with payload %s", v87, 0xCu);
                    sub_1000752F4(v88);
                  }

                  sub_1000755A4();
                  swift_allocError();
                  *v93 = 0;
                  swift_willThrow();

                  v50 = v101;
                  return sub_10006A2D0(v50, v108);
                }

                v94 = *(v7 + 64);
                v95 = __CFADD__(v94, 1);
                v96 = v94 + 1;
                if (!v95)
                {
                  *(v7 + 64) = v96;
                  v97 = v103;
                  v98 = static Data._unconditionallyBridgeFromObjectiveC(_:)();

                  sub_10006A2D0(v101, v108);
                  return v98;
                }

                __break(1u);
                goto LABEL_81;
              }

LABEL_79:
              swift_once();
              goto LABEL_61;
            }

LABEL_78:
            __break(1u);
            goto LABEL_79;
          }

          v62 = BYTE6(a2);
          goto LABEL_59;
        }
      }

      __break(1u);
      goto LABEL_78;
    }

    v36 = BYTE6(a2);
    goto LABEL_48;
  }

  v4 = v30;
  if (qword_100501C50 != -1)
  {
    goto LABEL_75;
  }

LABEL_41:
  v51 = type metadata accessor for Logger();
  sub_1000958E4(v51, qword_100509810);
  v52 = Logger.logObject.getter();
  v53 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    *v54 = 0;
    _os_log_impl(&_mh_execute_header, v52, v53, "Counter has reached max value cannot decrypt", v54, 2u);
  }

  sub_1000755A4();
  swift_allocError();
  *v55 = 0;
  swift_willThrow();
  return sub_10006A2D0(v4, v6);
}

void *sub_1002B2694(void *result, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if (*(v4 + 68) > 0xFFFEu)
  {
    if (qword_100501C50 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_1000958E4(v11, qword_100509810);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v7, v8))
    {
      goto LABEL_12;
    }

    v9 = swift_slowAlloc();
    *v9 = 0;
    v10 = "Counter has reached max value cannot encrypt";
    goto LABEL_11;
  }

  v5 = *(v4 + 40);
  if (v5 >> 60 == 15)
  {
    if (qword_100501C50 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_1000958E4(v6, qword_100509810);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v7, v8))
    {
      goto LABEL_12;
    }

    v9 = swift_slowAlloc();
    *v9 = 0;
    v10 = "Encrypt message called before bleSKDevice is derived";
LABEL_11:
    _os_log_impl(&_mh_execute_header, v7, v8, v10, v9, 2u);

LABEL_12:

    sub_1000755A4();
    swift_allocError();
    *v12 = 0;
    return swift_willThrow();
  }

  v13 = *(v4 + 32);
  v14 = a4 >> 62;
  v89 = *(v4 + 40);
  v88 = v13;
  if ((a4 >> 62) > 1)
  {
    if (v14 != 2)
    {
      goto LABEL_26;
    }

    v16 = *(a3 + 16);
    v15 = *(a3 + 24);
    v17 = __OFSUB__(v15, v16);
    v18 = v15 - v16;
    if (!v17)
    {
      if (v18 == 4)
      {
        goto LABEL_20;
      }

      goto LABEL_26;
    }

    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  if (v14)
  {
    if (!__OFSUB__(HIDWORD(a3), a3))
    {
      if (HIDWORD(a3) - a3 == 4)
      {
        goto LABEL_20;
      }

LABEL_26:
      sub_100069E2C(v13, v5);
      if (qword_100501C50 != -1)
      {
        swift_once();
      }

      v26 = type metadata accessor for Logger();
      sub_1000958E4(v26, qword_100509810);
      sub_100069E2C(a3, a4);
      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.error.getter();
      sub_10006A178(a3, a4);
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v90[0] = v30;
        *v29 = 136315394;
        v91 = sub_100288788(a3, a4);
        sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
        sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0, &protocol conformance descriptor for [A]);
        v31 = BidirectionalCollection<>.joined(separator:)();
        v33 = v32;

        v34 = sub_1002FFA0C(v31, v33, v90);

        *(v29 + 4) = v34;
        *(v29 + 12) = 2048;
        *(v29 + 14) = 4;
        _os_log_impl(&_mh_execute_header, v27, v28, "Malformed header %s, expected length %ld", v29, 0x16u);
        sub_1000752F4(v30);
      }

      sub_1000755A4();
      swift_allocError();
      *v35 = 0;
      swift_willThrow();
      return sub_10006A2D0(v88, v89);
    }

    goto LABEL_53;
  }

  if (BYTE6(a4) != 4)
  {
    goto LABEL_26;
  }

LABEL_20:
  v19 = result;
  sub_100069E2C(v13, v5);
  v85 = v19;
  isa = Data._bridgeToObjectiveC()().super.isa;
  v84 = Data._bridgeToObjectiveC()().super.isa;
  result = [objc_allocWithZone(NSMutableData) initWithLength:16];
  v82 = result;
  if (!result)
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  v22 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    v21 = v19;
    if (!v22)
    {
      v23 = BYTE6(a2);
      goto LABEL_38;
    }

    goto LABEL_35;
  }

  if (v22 != 2)
  {
    v23 = 0;
    goto LABEL_38;
  }

  v36 = v19[2];
  v37 = v19[3];
  v23 = v37 - v36;
  if (__OFSUB__(v37, v36))
  {
    __break(1u);
LABEL_35:
    if (__OFSUB__(HIDWORD(v21), v21))
    {
LABEL_55:
      __break(1u);
      goto LABEL_56;
    }

    v23 = HIDWORD(v21) - v21;
  }

LABEL_38:
  result = [objc_allocWithZone(NSMutableData) initWithLength:v23];
  v81 = result;
  if (result)
  {
    v38 = [objc_allocWithZone(NSMutableData) init];
    v80 = Data._bridgeToObjectiveC()().super.isa;
    [v38 appendU64BE:1];
    v79 = v4;
    [v38 appendU32BE:*(v4 + 68)];
    if (qword_100501C50 != -1)
    {
      swift_once();
    }

    v39 = type metadata accessor for Logger();
    sub_1000958E4(v39, qword_100509810);
    sub_100069E2C(v85, a2);
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.debug.getter();
    sub_10006A178(v85, a2);
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v90[0] = v43;
      *v42 = 136315138;
      v91 = sub_100288788(v85, a2);
      v86 = v38;
      sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
      sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0, &protocol conformance descriptor for [A]);
      v44 = BidirectionalCollection<>.joined(separator:)();
      v46 = v45;

      v47 = sub_1002FFA0C(v44, v46, v90);

      *(v42 + 4) = v47;
      v38 = v86;
      _os_log_impl(&_mh_execute_header, v40, v41, "LyonBLE Encryption payload: %s", v42, 0xCu);
      sub_1000752F4(v43);
    }

    v48 = v38;
    v49 = v80;
    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.debug.getter();

    v87 = v48;
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v90[0] = swift_slowAlloc();
      *v52 = 136380931;
      v53 = [v48 asHexString];
      v54 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v56 = v55;

      v57 = sub_1002FFA0C(v54, v56, v90);

      *(v52 + 4) = v57;
      *(v52 + 12) = 2081;
      v58 = [(objc_class *)v49 asHexString];
      v59 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v61 = v60;

      v62 = sub_1002FFA0C(v59, v61, v90);
      v48 = v87;

      *(v52 + 14) = v62;
      _os_log_impl(&_mh_execute_header, v50, v51, "LyonBLE Encryption parameters iv: %{private}s, aad: %{private}s)", v52, 0x16u);
      swift_arrayDestroy();
    }

    ccaes_gcm_encrypt_mode();
    [(objc_class *)v84 length];
    [(objc_class *)v84 bytes];
    [v48 length];
    [v48 bytes];
    [(objc_class *)v49 length];
    [(objc_class *)v49 bytes];
    [(objc_class *)isa length];
    [(objc_class *)isa bytes];
    [v81 mutableBytes];
    [v82 mutableBytes];
    result = ccgcm_one_shot();
    if (result)
    {
      v63 = result;
      v64 = Logger.logObject.getter();
      v65 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v64, v65))
      {
        v66 = swift_slowAlloc();
        *v66 = 67109120;
        *(v66 + 4) = v63;
        _os_log_impl(&_mh_execute_header, v64, v65, "Lyon BLE encryption failed with result %d", v66, 8u);
      }

      sub_1000755A4();
      swift_allocError();
      *v67 = 0;
      swift_willThrow();

      return sub_10006A2D0(v88, v89);
    }

    v68 = *(v79 + 68);
    v69 = __CFADD__(v68, 1);
    v70 = v68 + 1;
    if (!v69)
    {
      *(v79 + 68) = v70;
      *v90 = xmmword_1004098D0;
      v71 = v81;
      v72 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v74 = v73;

      Data.append(_:)();
      sub_10006A178(v72, v74);
      v75 = v82;
      v76 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v78 = v77;

      Data.append(_:)();
      sub_10006A2D0(v88, v89);

      sub_10006A178(v76, v78);
      return v90[0];
    }

    goto LABEL_54;
  }

LABEL_57:
  __break(1u);
  return result;
}

void sub_1002B3208(unint64_t a1, unint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 56);
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  sub_10006A2D0(v5, v6);
  sub_100069E2C(a1, a2);
  if (qword_100501C50 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_1000958E4(v7, qword_100509810);
  sub_100069E2C(a1, a2);
  oslog = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();
  sub_10006A178(a1, a2);
  if (os_log_type_enabled(oslog, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v16 = v10;
    *v9 = 136315138;
    sub_100288788(a1, a2);
    sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
    sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0, &protocol conformance descriptor for [A]);
    v11 = BidirectionalCollection<>.joined(separator:)();
    v13 = v12;

    v14 = sub_1002FFA0C(v11, v13, &v16);

    *(v9 + 4) = v14;
    _os_log_impl(&_mh_execute_header, oslog, v8, "Set supported protocol versions as %s", v9, 0xCu);
    sub_1000752F4(v10);
  }

  else
  {
  }
}

uint64_t sub_1002B3440(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = [objc_allocWithZone(NSMutableData) initWithLength:32];
  if (!v7)
  {
    goto LABEL_5;
  }

  v8 = *(v5 + 56);
  if (v8 >> 60 == 15 || (*(a5 + OBJC_IVAR____TtC10seserviced8LyonPeer_bleUwbProtocolVersion + 2) & 1) != 0)
  {

LABEL_5:
    if (qword_100501C50 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_1000958E4(v9, qword_100509810);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "Data to derive keys cannot be initializd", v12, 2u);
    }

    sub_1000755A4();
    swift_allocError();
    *v13 = 0;
    swift_willThrow();
    return v11;
  }

  v48 = v7;
  v15 = *(v5 + 48);
  v16 = *(a5 + OBJC_IVAR____TtC10seserviced8LyonPeer_bleUwbProtocolVersion);
  v52 = xmmword_1004098D0;
  v17 = v8;
  sub_100069E2C(v15, v8);
  v49 = v15;
  v50 = v17;
  Data.append(_:)();
  LOWORD(v51) = bswap32(v16) >> 16;
  v18 = sub_1002B1854(&v51, &v51 + 2);
  v20 = v19;
  Data.append(_:)();
  sub_10006A178(v18, v20);
  v21.super.isa = Data._bridgeToObjectiveC()().super.isa;
  v22.super.isa = Data._bridgeToObjectiveC()().super.isa;
  v23.super.isa = Data._bridgeToObjectiveC()().super.isa;
  ccsha256_di();
  [(objc_class *)v22.super.isa length];
  isa = v22.super.isa;
  [(objc_class *)v22.super.isa bytes];
  [(objc_class *)v23.super.isa length];
  [(objc_class *)v23.super.isa bytes];
  [(objc_class *)v21.super.isa length];
  [(objc_class *)v21.super.isa bytes];
  [v48 length];
  [v48 mutableBytes];
  v24 = cchkdf();
  if (v24)
  {
    v25 = v24;
    if (qword_100501C50 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    sub_1000958E4(v26, qword_100509810);
    v27 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v27, v11))
    {
      v28 = swift_slowAlloc();
      *v28 = 67109120;
      *(v28 + 4) = v25;
      _os_log_impl(&_mh_execute_header, v27, v11, "Unable to derive key with error: %d", v28, 8u);
    }

    sub_1000755A4();
    swift_allocError();
    *v29 = 0;
    swift_willThrow();

    sub_10006A2D0(v49, v50);
    sub_10006A178(v52, *(&v52 + 1));
  }

  else
  {
    if (qword_100501C50 != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    sub_1000958E4(v30, qword_100509810);
    v31 = v48;
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v32, v33))
    {
      buf = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v51 = v45;
      *buf = 136380675;
      v46 = v31;
      v34 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v36 = v35;
      sub_100288788(v34, v35);
      v43 = v33;
      sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
      sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0, &protocol conformance descriptor for [A]);
      v37 = BidirectionalCollection<>.joined(separator:)();
      v39 = v38;
      v40 = v34;
      v31 = v46;
      sub_10006A178(v40, v36);

      v41 = sub_1002FFA0C(v37, v39, &v51);

      *(buf + 4) = v41;
      _os_log_impl(&_mh_execute_header, v32, v43, "Derived %{private}s", buf, 0xCu);
      sub_1000752F4(v45);
    }

    v42 = v31;
    v11 = static Data._unconditionallyBridgeFromObjectiveC(_:)();

    sub_10006A2D0(v49, v50);
    sub_10006A178(v52, *(&v52 + 1));
  }

  return v11;
}

uint64_t sub_1002B3AB0()
{
  sub_10006A2D0(*(v0 + 16), *(v0 + 24));
  sub_10006A2D0(*(v0 + 32), *(v0 + 40));
  sub_10006A2D0(*(v0 + 48), *(v0 + 56));

  return swift_deallocClassInstance();
}

uint64_t sub_1002B3B1C(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for Logger();
  sub_1000B6A94(v2, qword_100509810);
  sub_1000958E4(v2, qword_100509810);
  String.init(cString:)();
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1002B3B94(uint64_t a1)
{
  v9 = sub_100068FC4(&qword_100504F50, &qword_1004146C0);
  v10 = sub_100075C60(&qword_100504F58, &qword_100504F50, &qword_1004146C0, &protocol conformance descriptor for <A> [A]);
  v8[0] = a1;
  v2 = sub_1000752B0(v8, v9);
  v3 = (*v2 + 32);
  v4 = *(*v2 + 16);

  sub_10008E434(v3, &v3[v4], &v7);
  v5 = v7;
  sub_1000752F4(v8);
  return v5;
}

void (*sub_1002B3C70(void (*result)(uint64_t *), uint64_t a2, uint64_t a3))(uint64_t *)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v5 = result;
    for (i = (a3 + 32); ; ++i)
    {
      v7 = *i;

      v5(&v7);
      if (v3)
      {
        break;
      }

      if (!--v4)
      {
        return result;
      }
    }
  }

  return result;
}

uint64_t sub_1002B3D04(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{

  v4 = String.Iterator.next()();
  if (v4.value._object)
  {
    countAndFlagsBits = v4.value._countAndFlagsBits;
    object = v4.value._object;
    do
    {
      v9 = String.Iterator.next()();
      if (!v9.value._object)
      {

        return 1;
      }

      if (countAndFlagsBits == v9.value._countAndFlagsBits && object == v9.value._object)
      {
      }

      else
      {
        v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v7 & 1) == 0)
        {

          goto LABEL_14;
        }
      }

      v8 = String.Iterator.next()();
      countAndFlagsBits = v8.value._countAndFlagsBits;
      object = v8.value._object;
    }

    while (v8.value._object);
  }

  v10 = String.Iterator.next()().value._object;

  if (!v10)
  {
    return 1;
  }

LABEL_14:

  return 0;
}

uint64_t sub_1002B3E60(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = type metadata accessor for Data.Iterator();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v15[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_100069E2C(a2, a3);
  Data.Iterator.init(_:at:)();
  sub_1002BC5B4(&qword_100509A50, &type metadata accessor for Data.Iterator, &protocol conformance descriptor for Data.Iterator);
  v10 = 0;
  while (1)
  {
    result = dispatch thunk of IteratorProtocol.next()();
    if (v15[15])
    {
      result = (*(v7 + 8))(v9, v6);
      v14 = *(a1 + 16);
      if (v14 != v10)
      {
        if (v10 < v14)
        {
          return 0;
        }

        goto LABEL_13;
      }

      return 1;
    }

    v12 = *(a1 + 16);
    if (v10 == v12)
    {
      (*(v7 + 8))(v9, v6);
      return 1;
    }

    if (v10 >= v12)
    {
      break;
    }

    v13 = *(a1 + 32 + v10++);
    if (v15[14] != v13)
    {
      (*(v7 + 8))(v9, v6);
      return 0;
    }
  }

  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

id sub_1002B405C()
{
  ObjectType = swift_getObjectType();
  v1 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v1);
  v2 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS.QoSClass();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v10 - 8);
  v23 = OBJC_IVAR____TtC10seserviced15SESAssetManager_queue;
  v11 = sub_10009393C(0, &qword_100501E50, OS_dispatch_queue_ptr);
  v22[1] = "Failed to delete ";
  v22[2] = v11;
  (*(v7 + 104))(v9, enum case for DispatchQoS.QoSClass.default(_:), v6);
  DispatchQoS.init(qosClass:relativePriority:)();
  (*(v3 + 104))(v5, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v2);
  v26 = _swiftEmptyArrayStorage;
  sub_1002BC5B4(&qword_1005064A0, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_100068FC4(&unk_100501E60, &qword_100408C30);
  sub_1001A1FB4();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  *&v0[v23] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  String.init(cString:)();
  Logger.init(subsystem:category:)();
  v0[OBJC_IVAR____TtC10seserviced15SESAssetManager_isRunning] = 0;
  v12 = &v0[OBJC_IVAR____TtC10seserviced15SESAssetManager_staticAssetPath];
  *v12 = 0xD000000000000021;
  v12[1] = 0x800000010046B090;
  v13 = &v0[OBJC_IVAR____TtC10seserviced15SESAssetManager_activeAssetPath];
  *v13 = 0xD000000000000037;
  v13[1] = 0x800000010046B0C0;
  *&v0[OBJC_IVAR____TtC10seserviced15SESAssetManager_minimumCompatibilityVersion] = 4;
  *&v0[OBJC_IVAR____TtC10seserviced15SESAssetManager_currentCompatibilityVersion] = 4;
  *&v0[OBJC_IVAR____TtC10seserviced15SESAssetManager_currentContentVersion] = 0;
  v14 = &v0[OBJC_IVAR____TtC10seserviced15SESAssetManager_assetInfoFileName];
  *v14 = 0x666E497465737341;
  v14[1] = 0xEF7473696C702E6FLL;
  v15 = &v0[OBJC_IVAR____TtC10seserviced15SESAssetManager_profilePrefix];
  *v15 = 0x5F656C69666F7270;
  v15[1] = 0xE800000000000000;
  v16 = &v0[OBJC_IVAR____TtC10seserviced15SESAssetManager_compatibilityVersionKey];
  *v16 = 0xD000000000000015;
  v16[1] = 0x800000010046B100;
  v17 = &v0[OBJC_IVAR____TtC10seserviced15SESAssetManager_contentVersionKey];
  *v17 = 0x746E65746E6F435FLL;
  v17[1] = 0xEF6E6F6973726556;
  v18 = &v0[OBJC_IVAR____TtC10seserviced15SESAssetManager_manufacturerKey];
  strcpy(&v0[OBJC_IVAR____TtC10seserviced15SESAssetManager_manufacturerKey], "Manufacturer");
  v18[13] = 0;
  *(v18 + 7) = -5120;
  v19 = &v0[OBJC_IVAR____TtC10seserviced15SESAssetManager_versionKey];
  *v19 = 0x6E6F6973726556;
  v19[1] = 0xE700000000000000;
  v20 = &v0[OBJC_IVAR____TtC10seserviced15SESAssetManager_lastAssetCheckBootUUIDKey];
  *v20 = 0xD00000000000001CLL;
  v20[1] = 0x800000010046B120;
  *&v0[OBJC_IVAR____TtC10seserviced15SESAssetManager_mobileAssetClient] = 0;
  *&v0[OBJC_IVAR____TtC10seserviced15SESAssetManager_delegates] = _swiftEmptyArrayStorage;
  v25.receiver = v0;
  v25.super_class = ObjectType;
  return objc_msgSendSuper2(&v25, "init");
}

id sub_1002B4590()
{
  result = [objc_allocWithZone(type metadata accessor for SESAssetManager(0)) init];
  qword_1005098E8 = result;
  return result;
}

uint64_t sub_1002B45EC()
{
  v0 = sub_100068FC4(&qword_100506F28, &qword_10040F2B0);
  sub_1000B6A94(v0, qword_1005098F0);
  sub_1000958E4(v0, qword_1005098F0);
  return UserDefaultBacked.init(suiteName:key:initial:internalOnly:internalOnlyInitial:)();
}

uint64_t sub_1002B46A4()
{
  v0 = sub_100068FC4(&qword_100506F28, &qword_10040F2B0);
  sub_1000B6A94(v0, qword_100509908);
  sub_1000958E4(v0, qword_100509908);
  return UserDefaultBacked.init(suiteName:key:initial:internalOnly:internalOnlyInitial:)();
}

void sub_1002B475C()
{
  if (qword_100501C58 != -1)
  {
    swift_once();
  }

  sub_1002B47BC();
}

void sub_1002B47BC()
{
  v2 = v0;
  v3 = type metadata accessor for URL.DirectoryHint();
  v73 = *(v3 - 8);
  v74 = v3;
  __chkstk_darwin(v3);
  v75 = &v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100068FC4(&unk_10050BEA0, &unk_10040F450);
  __chkstk_darwin(v5 - 8);
  v7 = &v60 - v6;
  v8 = type metadata accessor for URL();
  v76 = *(v8 - 8);
  __chkstk_darwin(v8);
  v71 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v67 = &v60 - v11;
  __chkstk_darwin(v12);
  v72 = &v60 - v13;
  v14 = type metadata accessor for DispatchPredicate();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v18 = (&v60 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = *&v2[OBJC_IVAR____TtC10seserviced15SESAssetManager_queue];
  *v18 = v19;
  (*(v15 + 104))(v18, enum case for DispatchPredicate.onQueue(_:), v14, v16);
  v20 = v19;
  v21 = _dispatchPreconditionTest(_:)();
  v23 = *(v15 + 8);
  v22 = (v15 + 8);
  v23(v18, v14);
  if ((v21 & 1) == 0)
  {
    __break(1u);
LABEL_26:
    swift_once();
    goto LABEL_16;
  }

  if (v2[OBJC_IVAR____TtC10seserviced15SESAssetManager_isRunning])
  {
    return;
  }

  v62 = v20;
  v63 = OBJC_IVAR____TtC10seserviced15SESAssetManager_isRunning;
  v69 = v1;
  v64 = OBJC_IVAR____TtC10seserviced15SESAssetManager_logger;
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&_mh_execute_header, v24, v25, "Asset Manager starting", v26, 2u);
  }

  v27 = *(v76 + 56);
  v68 = v8;
  v27(v7, 1, 1, v8);
  v28 = *(v73 + 104);
  v66 = enum case for URL.DirectoryHint.inferFromPath(_:);
  v65 = v28;
  v28(v75);

  v29 = v72;
  URL.init(filePath:directoryHint:relativeTo:)();
  v30 = objc_opt_self();
  v70 = v2;
  v31 = String._bridgeToObjectiveC()();
  v61 = v30;
  LODWORD(v30) = [v30 isFirstLaunchAfterBootForKey:v31];

  if (v30)
  {
    v32 = v69;
    sub_1002B5480(v29);
    if (v32)
    {
      (*(v76 + 8))(v29, v68);
      return;
    }

    sub_1002B5D60(v29);
    v60 = *&v70[OBJC_IVAR____TtC10seserviced15SESAssetManager_staticAssetPath];
    v69 = 0;
    v27(v7, 1, 1, v68);
    v50 = v74;
    v51 = v75;
    v65(v75, v66, v74);

    v52 = v67;
    URL.init(filePath:directoryHint:relativeTo:)();
    v53 = v69;
    sub_1002B64C8(v52, v29);
    if (v53)
    {
      v54 = *(v76 + 8);
      v55 = v68;
      v54(v52, v68);
      v54(v29, v55);
      return;
    }

    sub_1002B8B4C(v29);
    v34 = 0;
    v56 = String._bridgeToObjectiveC()();
    [v61 setFirstLaunchAfterBootDoneForKey:v56];

    v33 = v70;
    v57 = Logger.logObject.getter();
    v58 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      *v59 = 0;
      _os_log_impl(&_mh_execute_header, v57, v58, "Asset Manager first launch after boot complete", v59, 2u);
      v51 = v75;
    }

    (*(v76 + 8))(v52, v68);
    v7 = v71;
  }

  else
  {
    v34 = v69;
    v33 = v70;
    v7 = v71;
    v50 = v74;
    v51 = v75;
  }

  v35 = *&v33[OBJC_IVAR____TtC10seserviced15SESAssetManager_assetInfoFileName + 8];
  aBlock = *&v33[OBJC_IVAR____TtC10seserviced15SESAssetManager_assetInfoFileName];
  v78 = v35;
  v65(v51, v66, v50);
  sub_10012512C();

  URL.appending<A>(path:directoryHint:)();
  (*(v73 + 8))(v51, v50);

  sub_1002BBBE8(v7, *&v33[OBJC_IVAR____TtC10seserviced15SESAssetManager_contentVersionKey], *&v33[OBJC_IVAR____TtC10seserviced15SESAssetManager_contentVersionKey + 8]);
  if (v34)
  {
    v37 = *(v76 + 8);
    v38 = v68;
    v37(v7, v68);
    v37(v29, v38);
    return;
  }

  v21 = v36;
  *&v33[OBJC_IVAR____TtC10seserviced15SESAssetManager_currentContentVersion] = v36;
  v39 = v33;
  v22 = v33;
  v40 = Logger.logObject.getter();
  v41 = static os_log_type_t.info.getter();
  v42 = os_log_type_enabled(v40, v41);
  v8 = v68;
  if (v42)
  {
    v43 = swift_slowAlloc();
    *v43 = 134218240;
    *(v43 + 4) = 4;

    *(v43 + 12) = 2048;
    *(v43 + 14) = v21;
    _os_log_impl(&_mh_execute_header, v40, v41, "Asset Manager compatibility version %lu content version %lu", v43, 0x16u);
  }

  else
  {

    v40 = v39;
  }

  v44 = swift_allocObject();
  *(v44 + 16) = v39;
  v81 = sub_1002BC500;
  v82 = v44;
  aBlock = _NSConcreteStackBlock;
  v78 = 1107296256;
  v79 = sub_100193978;
  v80 = &unk_1004CF438;
  v45 = _Block_copy(&aBlock);
  v20 = v39;

  os_state_add_handler();
  _Block_release(v45);
  if (qword_100501C60 != -1)
  {
    goto LABEL_26;
  }

LABEL_16:
  v46 = sub_100068FC4(&qword_100506F28, &qword_10040F2B0);
  sub_1000958E4(v46, qword_1005098F0);
  v83 = v21;
  swift_beginAccess();
  UserDefaultBacked.wrappedValue.setter();
  swift_endAccess();
  if (qword_100501C68 != -1)
  {
    swift_once();
  }

  sub_1000958E4(v46, qword_100509908);
  v83 = 4;
  swift_beginAccess();
  UserDefaultBacked.wrappedValue.setter();
  swift_endAccess();
  v47 = [objc_allocWithZone(SESMobileAssetClient) initWithManager:v20];
  v48 = *(v76 + 8);
  v48(v7, v8);
  v48(v72, v8);
  v49 = *(&v20->isa + OBJC_IVAR____TtC10seserviced15SESAssetManager_mobileAssetClient);
  *(&v20->isa + OBJC_IVAR____TtC10seserviced15SESAssetManager_mobileAssetClient) = v47;

  v22[v63] = 1;
}

uint64_t sub_1002B52D8(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if (qword_100501C58 != -1)
  {
    swift_once();
    v2 = a2;
  }

  v3 = qword_1005098E8;
  sub_1000BC094(v2, v11);
  v4 = OBJC_IVAR____TtC10seserviced15SESAssetManager_delegates;
  swift_beginAccess();
  v5 = *(v3 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v3 + v4) = v5;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v5 = sub_100130260(0, v5[2] + 1, 1, v5);
    *(v3 + v4) = v5;
  }

  v8 = v5[2];
  v7 = v5[3];
  if (v8 >= v7 >> 1)
  {
    v5 = sub_100130260((v7 > 1), v8 + 1, 1, v5);
  }

  v5[2] = v8 + 1;
  sub_1000BC104(v11, &v5[5 * v8 + 4]);
  *(v3 + v4) = v5;
  return swift_endAccess();
}

void sub_1002B5480(uint64_t a1)
{
  v2 = type metadata accessor for URLResourceValues();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v79 = &v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100068FC4(&unk_10050BEA0, &unk_10040F450);
  __chkstk_darwin(v5 - 8);
  v7 = &v58 - v6;
  v80 = type metadata accessor for URL();
  v8 = *(v80 - 8);
  __chkstk_darwin(v80);
  v70 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v81 = &v58 - v11;
  v67 = type metadata accessor for NSFastEnumerationIterator();
  v66 = *(v67 - 8);
  __chkstk_darwin(v67);
  v13 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = objc_opt_self();
  v14 = [v69 defaultManager];
  v77 = sub_100068FC4(&qword_100509A38, &qword_100414768);
  v15 = swift_allocObject();
  v76 = xmmword_1004098F0;
  *(v15 + 16) = xmmword_1004098F0;
  *(v15 + 32) = NSURLIsRegularFileKey;
  v75 = NSURLIsRegularFileKey;
  v16 = NSFileManager.enumerator(at:includingPropertiesForKeys:options:errorHandler:)();

  if (!v16)
  {
    return;
  }

  v82 = v1;
  v62 = v16;
  NSEnumerator.makeIterator()();
  v17 = OBJC_IVAR____TtC10seserviced15SESAssetManager_profilePrefix;
  v65 = OBJC_IVAR____TtC10seserviced15SESAssetManager_logger;
  v78 = v13;
  NSFastEnumerationIterator.next()();
  if (!v84)
  {
    v22 = v78;
LABEL_20:
    (*(v66 + 8))(v22, v67);

    return;
  }

  v71 = v72 + v17;
  v19 = (v8 + 56);
  v74 = (v8 + 32);
  v73 = (v3 + 8);
  v20 = v8;
  v21 = (v8 + 8);
  v64 = (v20 + 16);
  *&v18 = 136315138;
  v58 = v18;
  v22 = v78;
  v24 = v80;
  v23 = v81;
  v63 = v2;
  while (1)
  {
    v25 = swift_dynamicCast();
    v26 = *v19;
    if (v25)
    {
      break;
    }

    v26(v7, 1, 1, v24);
    sub_100075768(v7, &unk_10050BEA0, &unk_10040F450);
LABEL_5:
    NSFastEnumerationIterator.next()();
    if (!v84)
    {
      goto LABEL_20;
    }
  }

  v27 = v19;
  v26(v7, 0, 1, v24);
  (*v74)(v23, v7, v24);
  inited = swift_initStackObject();
  *(inited + 16) = v76;
  v29 = v75;
  *(inited + 32) = v75;
  v30 = v29;
  sub_1000B3A70(inited);
  swift_setDeallocating();
  v31 = v79;
  sub_1002BC450(inited + 32);
  v32 = v82;
  URL.resourceValues(forKeys:)();
  v82 = v32;
  if (v32)
  {

    (*v21)(v81, v80);
    goto LABEL_22;
  }

  v33 = URLResourceValues.isRegularFile.getter();
  if (v33 == 2)
  {
    __break(1u);
  }

  v23 = v81;
  if ((v33 & 1) == 0)
  {
    (*v73)(v31, v2);
    v24 = v80;
    (*v21)(v23, v80);
LABEL_18:
    v22 = v78;
    v19 = v27;
    goto LABEL_5;
  }

  v34 = URL.lastPathComponent.getter();
  v36 = v23;
  v37 = sub_1002B3D04(*v71, *(v71 + 8), v34, v35);

  if ((v37 & 1) == 0)
  {
    (*v73)(v31, v2);
    v24 = v80;
    (*v21)(v36, v80);
    v22 = v78;
    v23 = v36;
    v19 = v27;
    goto LABEL_5;
  }

  v38 = v70;
  v39 = v36;
  v40 = v80;
  (*v64)(v70, v39, v80);
  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    v60 = v43;
    v61 = swift_slowAlloc();
    v83 = v61;
    *v43 = v58;
    v44 = URL.path(percentEncoded:)(1);
    countAndFlagsBits = v44._countAndFlagsBits;
    v68 = *v21;
    v68(v38, v40);
    v45 = sub_1002FFA0C(countAndFlagsBits, v44._object, &v83);

    v46 = v60;
    *(v60 + 1) = v45;
    _os_log_impl(&_mh_execute_header, v41, v42, "Deleting profile %s", v46, 0xCu);
    sub_1000752F4(v61);
  }

  else
  {

    v68 = *v21;
    v68(v38, v40);
  }

  v47 = [v69 defaultManager];
  v23 = v81;
  URL._bridgeToObjectiveC()(v48);
  v50 = v49;
  v83 = 0;
  v51 = [v47 removeItemAtURL:v49 error:&v83];

  v52 = v79;
  if (v51)
  {
    v53 = *v73;
    v54 = v83;
    v55 = v63;
    v53(v52, v63);
    v2 = v55;
    v24 = v80;
    v68(v23, v80);
    goto LABEL_18;
  }

  v56 = v83;
  v57 = _convertNSErrorToError(_:)();

  v82 = v57;
  swift_willThrow();

  (*v73)(v52, v63);
  v68(v81, v80);
LABEL_22:
  (*(v66 + 8))(v78, v67);
}

uint64_t sub_1002B5D60(uint64_t a1)
{
  v2 = v1;
  v65 = a1;
  v3 = type metadata accessor for URL.DirectoryHint();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  v62 = v7;
  v63 = v8;
  __chkstk_darwin(v7);
  v59 = v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v60 = v57 - v11;
  __chkstk_darwin(v12);
  v14 = v57 - v13;
  v15 = type metadata accessor for DispatchPredicate();
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin(v15);
  v19 = (v57 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = *&v2[OBJC_IVAR____TtC10seserviced15SESAssetManager_queue];
  *v19 = v20;
  (*(v16 + 104))(v19, enum case for DispatchPredicate.onQueue(_:), v15, v17);
  v21 = v20;
  LOBYTE(v20) = _dispatchPreconditionTest(_:)();
  result = (*(v16 + 8))(v19, v15);
  if (v20)
  {
    v23 = *&v2[OBJC_IVAR____TtC10seserviced15SESAssetManager_assetInfoFileName + 8];
    v64[0] = *&v2[OBJC_IVAR____TtC10seserviced15SESAssetManager_assetInfoFileName];
    v64[1] = v23;
    (*(v4 + 104))(v6, enum case for URL.DirectoryHint.inferFromPath(_:), v3);
    sub_10012512C();

    v24 = v65;
    URL.appending<A>(path:directoryHint:)();
    (*(v4 + 8))(v6, v3);

    v25 = v61;
    sub_1002BBBE8(v14, *&v2[OBJC_IVAR____TtC10seserviced15SESAssetManager_compatibilityVersionKey], *&v2[OBJC_IVAR____TtC10seserviced15SESAssetManager_compatibilityVersionKey + 8]);
    if (v25)
    {
      v61 = v14;
      v27 = v62;
      v28 = v63;
      v29 = v60;
      (*(v63 + 16))(v60, v24, v62);
      v30 = Logger.logObject.getter();
      v31 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        v58 = v2;
        v33 = v32;
        v34 = swift_slowAlloc();
        v64[0] = v34;
        *v33 = 136315138;
        v35 = URL.path(percentEncoded:)(1);
        v36 = *(v28 + 8);
        v36(v29, v62);
        v37 = sub_1002FFA0C(v35._countAndFlagsBits, v35._object, v64);

        *(v33 + 4) = v37;
        _os_log_impl(&_mh_execute_header, v30, v31, "Deleting asset due to failure reading its compatibility version at %s", v33, 0xCu);
        sub_1000752F4(v34);

        v27 = v62;
      }

      else
      {

        v36 = *(v28 + 8);
        v36(v29, v27);
      }

      sub_1002B9B6C(v65);
      v36(v61, v27);
    }

    else
    {
      v38 = v62;
      if (v26 == 4)
      {
        return (*(v63 + 8))(v14, v62);
      }

      else
      {
        v57[1] = 0;
        v60 = v26;
        v61 = v14;
        v39 = v63;
        v40 = v59;
        (*(v63 + 16))(v59, v24, v62);
        v41 = v2;
        v58 = v2;
        v42 = Logger.logObject.getter();
        v43 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v42, v43))
        {
          v44 = swift_slowAlloc();
          v57[0] = v41;
          v45 = v44;
          v46 = swift_slowAlloc();
          v64[0] = v46;
          *v45 = 134218498;
          *(v45 + 4) = v60;
          *(v45 + 12) = 2048;
          *(v45 + 14) = 4;

          *(v45 + 22) = 2080;
          v47 = URL.path(percentEncoded:)(1);
          v48 = *(v39 + 8);
          v48(v40, v38);
          v49 = sub_1002FFA0C(v47._countAndFlagsBits, v47._object, v64);

          *(v45 + 24) = v49;
          _os_log_impl(&_mh_execute_header, v42, v43, "Migrating asset from %lu to %lu at %s", v45, 0x20u);
          sub_1000752F4(v46);

          v41 = v57[0];

          v50 = v48;
        }

        else
        {

          v50 = *(v39 + 8);
          v50(v40, v38);
        }

        v51 = v41;
        v52 = Logger.logObject.getter();
        v53 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v52, v53))
        {
          v54 = swift_slowAlloc();
          *v54 = 134218496;
          *(v54 + 4) = v60;
          *(v54 + 12) = 2048;
          *(v54 + 14) = 4;
          *(v54 + 22) = 2048;
          *(v54 + 24) = 4;

          _os_log_impl(&_mh_execute_header, v52, v53, "Can't migrate asset compatibility version %lu current %lu minimum %ld", v54, 0x20u);
        }

        else
        {

          v52 = v51;
        }

        v55 = v65;
        v56 = v61;

        sub_1002B9B6C(v55);
        return (v50)(v56, v38);
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1002B64C8(uint64_t a1, uint64_t a2)
{
  v272 = a2;
  v4 = sub_100068FC4(&qword_100509A30, &qword_100414760);
  __chkstk_darwin(v4 - 8);
  v256 = &v229 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v255 = &v229 - v7;
  i = type metadata accessor for URLResourceValues();
  v242 = *(i - 8);
  __chkstk_darwin(i);
  v252 = &v229 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100068FC4(&unk_10050BEA0, &unk_10040F450);
  __chkstk_darwin(v9 - 8);
  v249 = &v229 - v10;
  v244 = type metadata accessor for NSFastEnumerationIterator();
  v243 = *(v244 - 8);
  __chkstk_darwin(v244);
  v250 = (&v229 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v261 = type metadata accessor for URL.DirectoryHint();
  v263 = *(v261 - 8);
  __chkstk_darwin(v261);
  v260 = &v229 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for URL();
  v273 = *(v13 - 8);
  __chkstk_darwin(v13);
  v257 = &v229 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v265 = &v229 - v16;
  __chkstk_darwin(v17);
  v264 = &v229 - v18;
  __chkstk_darwin(v19);
  v259 = &v229 - v20;
  __chkstk_darwin(v21);
  v258 = &v229 - v22;
  __chkstk_darwin(v23);
  v254 = &v229 - v24;
  __chkstk_darwin(v25);
  v240 = &v229 - v26;
  __chkstk_darwin(v27);
  v241 = &v229 - v28;
  __chkstk_darwin(v29);
  v253 = &v229 - v30;
  __chkstk_darwin(v31);
  countAndFlagsBits = &v229 - v32;
  __chkstk_darwin(v33);
  v246 = &v229 - v34;
  __chkstk_darwin(v35);
  *&v245 = &v229 - v36;
  __chkstk_darwin(v37);
  v251 = &v229 - v38;
  __chkstk_darwin(v39);
  v262 = &v229 - v40;
  __chkstk_darwin(v41);
  v43 = &v229 - v42;
  __chkstk_darwin(v44);
  v46 = (&v229 - v45);
  v47 = type metadata accessor for DispatchPredicate();
  v48 = *(v47 - 8);
  v49 = __chkstk_darwin(v47);
  v51 = (&v229 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0));
  v52 = *(v2 + OBJC_IVAR____TtC10seserviced15SESAssetManager_queue);
  *v51 = v52;
  (*(v48 + 104))(v51, enum case for DispatchPredicate.onQueue(_:), v47, v49);
  v53 = v52;
  v54 = _dispatchPreconditionTest(_:)();
  (*(v48 + 8))(v51, v47);
  if ((v54 & 1) == 0)
  {
    __break(1u);
    goto LABEL_33;
  }

  v55 = OBJC_IVAR____TtC10seserviced15SESAssetManager_logger;
  v57 = v273 + 2;
  v56 = v273[2];
  v56(v46, a1, v13);
  v58 = v272;
  v268 = v56;
  v269 = v57;
  v56(v43, v272, v13);
  v267 = v55;
  v59 = a1;
  v60 = v2;
  v61 = Logger.logObject.getter();
  v62 = static os_log_type_t.info.getter();
  v63 = os_log_type_enabled(v61, v62);
  v271 = v60;
  if (v63)
  {
    v64 = swift_slowAlloc();
    v239 = swift_slowAlloc();
    v277._countAndFlagsBits = v239;
    *v64 = 136315394;
    LODWORD(v238) = v62;
    v65 = URL.path(percentEncoded:)(1);
    v266 = v59;
    v66 = v273[1];
    v66(v46, v13);
    v67 = sub_1002FFA0C(v65._countAndFlagsBits, v65._object, &v277._countAndFlagsBits);
    v68 = v266;

    *(v64 + 4) = v67;
    *(v64 + 12) = 2080;
    v69 = URL.path(percentEncoded:)(1);
    v66(v43, v13);
    v70 = v66;
    v71 = sub_1002FFA0C(v69._countAndFlagsBits, v69._object, &v277._countAndFlagsBits);

    *(v64 + 14) = v71;
    _os_log_impl(&_mh_execute_header, v61, v238, "Trying to apply %s on top of %s", v64, 0x16u);
    swift_arrayDestroy();

    v72 = v272;
  }

  else
  {
    v72 = v58;

    v70 = v273[1];
    v70(v43, v13);
    v70(v46, v13);
    v68 = v59;
  }

  v73 = [objc_opt_self() defaultManager];
  v276 = 0;
  URL.path(percentEncoded:)(1);
  v74 = String._bridgeToObjectiveC()();

  v75 = [v73 fileExistsAtPath:v74 isDirectory:&v276];

  if (!v75 || v276 != 1)
  {
    sub_10009393C(0, &qword_10050AA20, NSError_ptr);
    v277._countAndFlagsBits = 0;
    v277._object = 0xE000000000000000;
    _StringGuts.grow(_:)(26);

    v277._countAndFlagsBits = 0xD000000000000018;
    v277._object = 0x800000010046AEC0;
    v92 = URL.path(percentEncoded:)(1);
    String.append(_:)(v92);

    sub_10030990C(0, 1, v277._countAndFlagsBits, v277._object, 0);
    swift_willThrow();
    goto LABEL_12;
  }

  URL.path(percentEncoded:)(1);
  v76 = String._bridgeToObjectiveC()();

  v77 = [v73 fileExistsAtPath:v76 isDirectory:&v276];

  v239 = v70;
  if (!v77 || v276 != 1)
  {
    v94 = v264;
    v268(v264, v72, v13);
    v95 = Logger.logObject.getter();
    v96 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v95, v96))
    {
      v97 = v94;
      v98 = swift_slowAlloc();
      v99 = swift_slowAlloc();
      v266 = v68;
      v263 = v99;
      v277._countAndFlagsBits = v99;
      *v98 = 136315138;
      v100 = URL.path(percentEncoded:)(1);
      v70(v97, v13);
      v101 = sub_1002FFA0C(v100._countAndFlagsBits, v100._object, &v277._countAndFlagsBits);

      *(v98 + 4) = v101;
      _os_log_impl(&_mh_execute_header, v95, v96, "Invalid target asset at %s", v98, 0xCu);
      sub_1000752F4(v263);
      v68 = v266;
    }

    else
    {

      v70(v94, v13);
    }

    v43 = v265;
    v102 = v272;
    v103 = v270;
    sub_1002B9B6C(v272);
    if (!v103)
    {
      sub_1002BC1FC();
      v104 = v268;
      v268(v43, v68, v13);
      v105 = v257;
      v104(v257, v102, v13);
      v106 = Logger.logObject.getter();
      v107 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v106, v107))
      {
        v108 = swift_slowAlloc();
        v272 = swift_slowAlloc();
        v277._countAndFlagsBits = v272;
        *v108 = 136315394;
        v109 = v43;
        LOBYTE(v43) = 1;
        LODWORD(v271) = v107;
        v110 = URL.path(percentEncoded:)(1);
        v270 = v106;
        v265 = v73;
        v111 = v109;
        v112 = v239;
        v239(v111, v13);
        v113 = sub_1002FFA0C(v110._countAndFlagsBits, v110._object, &v277._countAndFlagsBits);

        *(v108 + 4) = v113;
        *(v108 + 12) = 2080;
        v114 = URL.path(percentEncoded:)(1);
        v112(v105, v13);
        v115 = sub_1002FFA0C(v114._countAndFlagsBits, v114._object, &v277._countAndFlagsBits);

        *(v108 + 14) = v115;
        v116 = v270;
        _os_log_impl(&_mh_execute_header, v270, v271, "Copied asset from %s to %s", v108, 0x16u);
        swift_arrayDestroy();
      }

      else
      {

        v119 = v239;
        v239(v105, v13);
        v119(v43, v13);
        LOBYTE(v43) = 1;
      }

      return v43 & 1;
    }

LABEL_12:

    return v43 & 1;
  }

  v237 = v13;
  v265 = v73;
  v78 = *(v271 + OBJC_IVAR____TtC10seserviced15SESAssetManager_assetInfoFileName + 8);
  v236 = *(v271 + OBJC_IVAR____TtC10seserviced15SESAssetManager_assetInfoFileName);
  v277._countAndFlagsBits = v236;
  v277._object = v78;
  v79 = v263;
  v81 = v263 + 13;
  isa = v263[13].isa;
  v82 = v260;
  LODWORD(v264) = enum case for URL.DirectoryHint.inferFromPath(_:);
  v83 = v261;
  v257 = isa;
  (isa)(v260);
  v84 = sub_10012512C();

  v85 = v262;
  v238 = v84;
  URL.appending<A>(path:directoryHint:)();
  v86 = v271;
  v87 = v82;
  v89 = v79[1].isa;
  v88 = v79 + 1;
  v43 = v89;
  v89(v87, v83);

  v90 = v270;
  sub_1002BBBE8(v85, *(v86 + OBJC_IVAR____TtC10seserviced15SESAssetManager_compatibilityVersionKey), *(v86 + OBJC_IVAR____TtC10seserviced15SESAssetManager_compatibilityVersionKey + 8));
  if (v90)
  {
    v239(v85, v237);

    return v43 & 1;
  }

  v235 = v78;
  v270 = v81;
  v263 = v88;
  if (v91 != 4)
  {
    v120 = v91;
    sub_10009393C(0, &qword_10050AA20, NSError_ptr);
    v277._countAndFlagsBits = 0;
    v277._object = 0xE000000000000000;
    _StringGuts.grow(_:)(43);

    v277._countAndFlagsBits = 0xD000000000000029;
    v277._object = 0x800000010046AEE0;
    v279._countAndFlagsBits = v120;
    v121._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v121);

    sub_10030990C(0, 1, v277._countAndFlagsBits, v277._object, 0);
    swift_willThrow();

    v239(v262, v237);
    return v43 & 1;
  }

  v117 = *(v271 + OBJC_IVAR____TtC10seserviced15SESAssetManager_contentVersionKey);
  v118 = *(v271 + OBJC_IVAR____TtC10seserviced15SESAssetManager_contentVersionKey + 8);
  sub_1002BBBE8(v262, v117, v118);
  a1 = 0;
  v233 = v122;
  v277._countAndFlagsBits = v236;
  v277._object = v235;
  v234 = v43;
  v123 = v260;
  v124 = v261;
  (v257)(v260, v264, v261);

  v125 = v251;
  URL.appending<A>(path:directoryHint:)();
  v234(v123, v124);

  sub_1002BBBE8(v125, v117, v118);
  v13 = v237;
  if (v126 >= v233)
  {
    v142 = v245;
    v268(v245, v272, v237);
    v143 = Logger.logObject.getter();
    v144 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v143, v144))
    {
      v145 = swift_slowAlloc();
      v146 = swift_slowAlloc();
      v277._countAndFlagsBits = v146;
      *v145 = 136315138;
      v147 = URL.path(percentEncoded:)(1);
      v148 = v142;
      v149 = v239;
      v239(v148, v13);
      v150 = sub_1002FFA0C(v147._countAndFlagsBits, v147._object, &v277._countAndFlagsBits);

      *(v145 + 4) = v150;
      _os_log_impl(&_mh_execute_header, v143, v144, "Target asset already up to date %s", v145, 0xCu);
      sub_1000752F4(v146);

      v151 = v237;
      v149(v251, v237);
      v149(v262, v151);
    }

    else
    {

      v188 = v239;
      v239(v142, v13);
      v188(v251, v13);
      v188(v262, v13);
    }

    LOBYTE(v43) = 0;
    return v43 & 1;
  }

  v127 = v126;
  v51 = v271;
  v128 = Logger.logObject.getter();
  v129 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v128, v129))
  {
    v130 = swift_slowAlloc();
    *v130 = 134218240;
    *(v130 + 4) = v233;
    *(v130 + 12) = 2048;
    *(v130 + 14) = v127;
    _os_log_impl(&_mh_execute_header, v128, v129, "Source asset version %lu target asset version %lu", v130, 0x16u);
    v51 = v271;
  }

  v43 = v246;
  v131 = v268;
  v268(v246, v272, v13);
  v54 = countAndFlagsBits;
  v266 = v68;
  v131(countAndFlagsBits, v68, v13);
  v46 = Logger.logObject.getter();
  v132 = static os_log_type_t.info.getter();
  v133 = os_log_type_enabled(v46, v132);
  v47 = v249;
  if (v133)
  {
    v134 = swift_slowAlloc();
    *&v245 = swift_slowAlloc();
    v277._countAndFlagsBits = v245;
    *v134 = 136315394;
    LODWORD(v232) = v132;
    v135 = URL.path(percentEncoded:)(1);
    v231 = v46;
    v136 = v43;
    v137 = v239;
    v239(v136, v13);
    v138 = sub_1002FFA0C(v135._countAndFlagsBits, v135._object, &v277._countAndFlagsBits);

    *(v134 + 4) = v138;
    *(v134 + 12) = 2080;
    v139 = URL.path(percentEncoded:)(1);
    v137(v54, v13);
    v140 = sub_1002FFA0C(v139._countAndFlagsBits, v139._object, &v277._countAndFlagsBits);

    *(v134 + 14) = v140;
    v141 = v231;
    _os_log_impl(&_mh_execute_header, v231, v232, "Updating target asset %s with %s", v134, 0x16u);
    swift_arrayDestroy();

    v51 = v271;

    goto LABEL_34;
  }

LABEL_33:

  v152 = v239;
  v239(v54, v13);
  v152(v43, v13);
LABEL_34:
  v153 = v250;
  v246 = sub_100068FC4(&qword_100509A38, &qword_100414768);
  v154 = swift_allocObject();
  v245 = xmmword_1004098F0;
  *(v154 + 16) = xmmword_1004098F0;
  *(v154 + 32) = NSURLIsRegularFileKey;
  v155 = NSURLIsRegularFileKey;
  v156 = NSFileManager.enumerator(at:includingPropertiesForKeys:options:errorHandler:)();

  if (!v156)
  {
    v189 = _swiftEmptyDictionarySingleton;
LABEL_64:
    v190 = 0;
    countAndFlagsBits = v189;
    v192 = v189 + 64;
    v191 = *(v189 + 8);
    v193 = 1 << *(v192 - 32);
    v194 = -1;
    if (v193 < 64)
    {
      v194 = ~(-1 << v193);
    }

    v43 = v194 & v191;
    v250 = (v51 + OBJC_IVAR____TtC10seserviced15SESAssetManager_versionKey);
    v195 = (v193 + 63) >> 6;
    v267 = (v273 + 4);
    v252 = (v273 + 1);
    v196 = v264;
    v249 = v192;
    for (i = v195; ; v195 = i)
    {
      if (v43)
      {
        v198 = v190;
LABEL_80:
        v202 = __clz(__rbit64(v43));
        v43 &= v43 - 1;
        v203 = v202 | (v198 << 6);
        v204 = countAndFlagsBits;
        v205 = v273;
        v206 = v254;
        v268(v254, *(countAndFlagsBits + 6) + v273[9] * v203, v13);
        v207 = *(*(v204 + 7) + 8 * v203);
        v208 = sub_100068FC4(&qword_100509A40, &qword_100414770);
        v209 = *(v208 + 48);
        v210 = v205[4];
        v211 = v256;
        v210(v256, v206, v13);
        *&v211[v209] = v207;
        v201 = v211;
        (*(*(v208 - 8) + 56))(v211, 0, 1, v208);
        v196 = v264;
      }

      else
      {
        if (v195 <= v190 + 1)
        {
          v199 = v190 + 1;
        }

        else
        {
          v199 = v195;
        }

        v200 = v199 - 1;
        v201 = v256;
        while (1)
        {
          v198 = v190 + 1;
          if (__OFADD__(v190, 1))
          {
            __break(1u);
          }

          if (v198 >= v195)
          {
            break;
          }

          v43 = *&v192[8 * v198];
          ++v190;
          if (v43)
          {
            v190 = v198;
            goto LABEL_80;
          }
        }

        v222 = sub_100068FC4(&qword_100509A40, &qword_100414770);
        (*(*(v222 - 8) + 56))(v201, 1, 1, v222);
        v43 = 0;
        v190 = v200;
      }

      v212 = v201;
      v213 = v255;
      sub_1002BC3E0(v212, v255);
      v214 = sub_100068FC4(&qword_100509A40, &qword_100414770);
      if ((*(*(v214 - 8) + 48))(v213, 1, v214) == 1)
      {

        v223 = v262;
        v224 = v251;
        v225 = v271;
        sub_1002BA0BC(v262, v251);

        v226 = v224;
        v227 = v239;
        v239(v226, v13);
        v227(v223, v13);
        if (!a1)
        {
          *(v225 + OBJC_IVAR____TtC10seserviced15SESAssetManager_currentContentVersion) = v233;
          LOBYTE(v43) = 1;
        }

        return v43 & 1;
      }

      v253 = *(v213 + *(v214 + 48));
      (*v267)(v258, v213, v13);
      v277 = URL.path(percentEncoded:)(1);
      v279 = URL.path(percentEncoded:)(1);
      v274 = 0;
      v275 = 0xE000000000000000;
      v215 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
      v217 = v216;

      v277._countAndFlagsBits = v215;
      v277._object = v217;
      v218 = v260;
      v219 = v261;
      (v257)(v260, v196, v261);
      v220 = v259;
      URL.appending<A>(path:directoryHint:)();
      v234(v218, v219);

      sub_1002BBBE8(v220, *v250, v250[1]);
      if (a1)
      {
        break;
      }

      v13 = v237;
      v196 = v264;
      if (v221 < v253)
      {
        goto LABEL_68;
      }

LABEL_69:
      v197 = v239;
      v239(v259, v13);
      v197(v258, v13);
      v192 = v249;
    }

    a1 = 0;
    v13 = v237;
    v196 = v264;
LABEL_68:
    sub_1002BA0BC(v258, v259);
    goto LABEL_69;
  }

  v157 = v13;
  v231 = v156;
  NSEnumerator.makeIterator()();
  v158 = OBJC_IVAR____TtC10seserviced15SESAssetManager_versionKey;
  NSFastEnumerationIterator.next()();
  if (!v278)
  {
    countAndFlagsBits = _swiftEmptyDictionarySingleton;
LABEL_63:
    (*(v243 + 8))(v153, v244);

    v13 = v157;
    v51 = v271;
    v189 = countAndFlagsBits;
    goto LABEL_64;
  }

  v230 = (v51 + v158);
  v159 = (v273 + 7);
  v160 = (v273 + 4);
  v232 = (v242 + 1);
  countAndFlagsBits = _swiftEmptyDictionarySingleton;
  v242 = v273 + 1;
  while (1)
  {
    while (1)
    {
      v161 = swift_dynamicCast();
      v162 = *v159;
      if (v161)
      {
        break;
      }

      v162(v47, 1, 1, v157);
      sub_100075768(v47, &unk_10050BEA0, &unk_10040F450);
LABEL_38:
      NSFastEnumerationIterator.next()();
      if (!v278)
      {
        goto LABEL_63;
      }
    }

    v162(v47, 0, 1, v157);
    (*v160)(v253, v47, v157);
    inited = swift_initStackObject();
    *(inited + 16) = v245;
    *(inited + 32) = v155;
    v164 = v155;
    sub_1000B3A70(inited);
    swift_setDeallocating();
    sub_1002BC450(inited + 32);
    LOBYTE(v43) = v252;
    URL.resourceValues(forKeys:)();
    if (a1)
    {

      v228 = v239;
      v239(v253, v157);
      (*(v243 + 8))(v250, v244);
      v228(v251, v157);
      v228(v262, v157);

      return v43 & 1;
    }

    v165 = URLResourceValues.isRegularFile.getter();
    if (v165 == 2)
    {
      goto LABEL_92;
    }

    v153 = v250;
    v47 = v249;
    if ((v165 & 1) == 0)
    {
      goto LABEL_47;
    }

    if (URL.lastPathComponent.getter() == v236 && v166 == v235)
    {

LABEL_47:
      (*v232)(v252, i);
      v239(v253, v157);
      goto LABEL_38;
    }

    v167 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v167)
    {
      goto LABEL_47;
    }

    sub_1002BBBE8(v253, *v230, v230[1]);
    v229 = v168;
    v169 = v241;
    v268(v241, v253, v157);
    v170 = countAndFlagsBits;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v279._countAndFlagsBits = v170;
    v173 = sub_10008D144(v169);
    v174 = *(v170 + 16);
    v175 = (v172 & 1) == 0;
    v176 = v174 + v175;
    if (__OFADD__(v174, v175))
    {
      break;
    }

    v177 = v172;
    if (*(countAndFlagsBits + 3) >= v176)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_100313F9C();
      }
    }

    else
    {
      sub_10030F904(v176, isUniquelyReferenced_nonNull_native);
      v178 = sub_10008D144(v241);
      if ((v177 & 1) != (v179 & 1))
      {
        goto LABEL_93;
      }

      v173 = v178;
    }

    countAndFlagsBits = v279._countAndFlagsBits;
    if (v177)
    {
      *(*(countAndFlagsBits + 7) + 8 * v173) = v229;
      v180 = v239;
      v239(v241, v157);
      (*v232)(v252, i);
      v180(v253, v157);
    }

    else
    {
      v181 = countAndFlagsBits;
      *&countAndFlagsBits[8 * (v173 >> 6) + 64] |= 1 << v173;
      v182 = v241;
      v268((*(v181 + 6) + v273[9] * v173), v241, v157);
      *(*(v181 + 7) + 8 * v173) = v229;
      v183 = v182;
      v184 = v239;
      v239(v183, v157);
      (*v232)(v252, i);
      v184(v253, v157);
      v185 = *(v181 + 2);
      v186 = __OFADD__(v185, 1);
      v187 = v185 + 1;
      if (v186)
      {
        goto LABEL_91;
      }

      *(countAndFlagsBits + 2) = v187;
    }

    v153 = v250;
    NSFastEnumerationIterator.next()();
    v47 = v249;
    if (!v278)
    {
      goto LABEL_63;
    }
  }

  __break(1u);
LABEL_91:
  __break(1u);
LABEL_92:
  __break(1u);
LABEL_93:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void sub_1002B8B4C(uint64_t a1)
{
  v31 = a1;
  v2 = objc_allocWithZone(NSUserDefaults);
  v3 = String._bridgeToObjectiveC()();
  v4 = [v2 initWithSuiteName:v3];

  if (v4)
  {
    v5 = v4;
    v6 = String._bridgeToObjectiveC()();
    v7 = [v5 dictionaryForKey:v6];

    if (v7)
    {
      v30 = v5;
      v40 = v1;
      v8 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      v9 = 0;
      v11 = v8 + 64;
      v10 = *(v8 + 64);
      v33 = v8;
      v12 = 1 << *(v8 + 32);
      v13 = -1;
      if (v12 < 64)
      {
        v13 = ~(-1 << v12);
      }

      v14 = v13 & v10;
      v15 = (v12 + 63) >> 6;
      if ((v13 & v10) == 0)
      {
        goto LABEL_9;
      }

      do
      {
        while (1)
        {
          v16 = v9;
LABEL_16:
          v19 = __clz(__rbit64(v14));
          v14 &= v14 - 1;
          v20 = v19 | (v16 << 6);
          v21 = (*(v33 + 48) + 16 * v20);
          v22 = *v21;
          v23 = v21[1];
          sub_1000754F0(*(v33 + 56) + 32 * v20, v34);
          *&v35 = v22;
          *(&v35 + 1) = v23;
          sub_100075D50(v34, &v36);

          v18 = v16;
LABEL_17:
          v38 = v35;
          v39[0] = v36;
          v39[1] = v37;
          v24 = *(&v35 + 1);
          if (!*(&v35 + 1))
          {

            return;
          }

          v25 = v38;
          sub_100075D50(v39, &v35);
          sub_100068FC4(&unk_100503EC0, &unk_100417130);
          v26 = swift_dynamicCast();
          if (v26)
          {
            break;
          }

          v9 = v18;
          if (!v14)
          {
            goto LABEL_9;
          }
        }

        v27 = *&v34[0];
        __chkstk_darwin(v26);
        v29[2] = v32;
        v29[3] = v31;
        v29[4] = v25;
        v29[5] = v24;
        v28 = v40;
        sub_1002B3C70(sub_1002BC524, v29, v27);
        v40 = v28;

        v9 = v18;
      }

      while (v14);
LABEL_9:
      if (v15 <= v9 + 1)
      {
        v17 = v9 + 1;
      }

      else
      {
        v17 = v15;
      }

      v18 = v17 - 1;
      while (1)
      {
        v16 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          break;
        }

        if (v16 >= v15)
        {
          v14 = 0;
          v36 = 0u;
          v37 = 0u;
          v35 = 0u;
          goto LABEL_17;
        }

        v14 = *(v11 + 8 * v16);
        ++v9;
        if (v14)
        {
          goto LABEL_16;
        }
      }

      __break(1u);
    }

    else
    {
    }
  }
}

_DWORD *sub_1002B8E54()
{
  v1 = v0;
  v2 = sub_100068FC4(&qword_100509A48, &qword_100414778);
  __chkstk_darwin(v2 - 8);
  v101 = &v88 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v103 = &v88 - v5;
  v99 = type metadata accessor for NSFastEnumerationIterator();
  v98 = *(v99 - 8);
  __chkstk_darwin(v99);
  v108 = &v88 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = type metadata accessor for URL.DirectoryHint();
  v7 = *(v107 - 8);
  __chkstk_darwin(v107);
  v9 = &v88 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100068FC4(&unk_10050BEA0, &unk_10040F450);
  __chkstk_darwin(v10 - 8);
  v12 = &v88 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v88 - v14;
  v16 = type metadata accessor for URL();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v102 = &v88 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v88 - v20;
  v22 = [objc_opt_self() defaultManager];
  v100 = v1;
  v109 = *(v17 + 56);
  v110 = v17 + 56;
  v109(v15, 1, 1, v16);
  (*(v7 + 104))(v9, enum case for URL.DirectoryHint.inferFromPath(_:), v107);

  URL.init(filePath:directoryHint:relativeTo:)();
  v107 = sub_100068FC4(&qword_100509A38, &qword_100414768);
  v23 = swift_allocObject();
  v106 = xmmword_1004098F0;
  *(v23 + 16) = xmmword_1004098F0;
  *(v23 + 32) = NSURLIsRegularFileKey;
  v24 = NSURLIsRegularFileKey;
  v25 = NSFileManager.enumerator(at:includingPropertiesForKeys:options:errorHandler:)();

  v26 = v17;

  v27 = *(v17 + 8);
  v105 = v17 + 8;
  v104 = v27;
  v27(v21, v16);
  if (!v25)
  {
    v82 = _swiftEmptyDictionarySingleton;
LABEL_32:
    v83 = *(v100 + OBJC_IVAR____TtC10seserviced15SESAssetManager_isRunning);
    v116 = &type metadata for Bool;
    LOBYTE(v115) = v83;
    sub_100075D50(&v115, &v113);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v112[0] = v82;
    sub_100315178(&v113, 0x6E696E6E75527369, 0xE900000000000067, isUniquelyReferenced_nonNull_native);
    sub_1001950D4(*&v112[0]);

    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v86 = sub_100015DA0("assetmanager.state", isa);

    return v86;
  }

  v96 = v25;
  NSEnumerator.makeIterator()();
  v28 = OBJC_IVAR____TtC10seserviced15SESAssetManager_assetInfoFileName;
  v29 = OBJC_IVAR____TtC10seserviced15SESAssetManager_versionKey;
  v30 = OBJC_IVAR____TtC10seserviced15SESAssetManager_compatibilityVersionKey;
  v31 = OBJC_IVAR____TtC10seserviced15SESAssetManager_contentVersionKey;
  NSFastEnumerationIterator.next()();
  if (!v116)
  {
    v97 = _swiftEmptyDictionarySingleton;
    v34 = v108;
LABEL_31:
    (*(v98 + 8))(v34, v99);

    v82 = v97;
    goto LABEL_32;
  }

  v95 = (v100 + v28);
  v92 = (v100 + v29);
  v94 = (v100 + v30);
  v93 = (v100 + v31);
  v32 = (v26 + 32);
  v97 = _swiftEmptyDictionarySingleton;
  v33 = v103;
  v34 = v108;
  v35 = v102;
  while ((swift_dynamicCast() & 1) == 0)
  {
    v109(v12, 1, 1, v16);
    sub_100075768(v12, &unk_10050BEA0, &unk_10040F450);
LABEL_5:
    NSFastEnumerationIterator.next()();
    if (!v116)
    {
      goto LABEL_31;
    }
  }

  v109(v12, 0, 1, v16);
  (*v32)(v35, v12, v16);
  inited = swift_initStackObject();
  *(inited + 16) = v106;
  *(inited + 32) = v24;
  v37 = v24;
  sub_1000B3A70(inited);
  swift_setDeallocating();
  sub_1002BC450(inited + 32);
  URL.resourceValues(forKeys:)();

  v38 = type metadata accessor for URLResourceValues();
  v39 = *(v38 - 8);
  (*(v39 + 56))(v33, 0, 1, v38);
  v40 = v101;
  sub_1002BC544(v33, v101);
  if ((*(v39 + 48))(v40, 1, v38) == 1)
  {
    goto LABEL_36;
  }

  v41 = URLResourceValues.isRegularFile.getter();
  (*(v39 + 8))(v40, v38);
  if (v41 == 2)
  {
    goto LABEL_35;
  }

  v33 = v103;
  v34 = v108;
  if ((v41 & 1) == 0)
  {
    sub_100075768(v103, &qword_100509A48, &qword_100414778);
    v35 = v102;
LABEL_11:
    v104(v35, v16);
    goto LABEL_5;
  }

  v35 = v102;
  if (URL.lastPathComponent.getter() == *v95 && v42 == v95[1])
  {

LABEL_16:
    v44 = *v94;
    v45 = v94[1];
    sub_1002BBBE8(v35, *v94, v45);
    v90 = v45;
    v89 = v46;
    v47 = *v93;
    v48 = v93[1];
    sub_1002BBBE8(v35, *v93, v48);
    v91 = v44;
    *&v113 = v49;
    v50 = dispatch thunk of CustomStringConvertible.description.getter();
    v114 = &type metadata for String;
    *&v113 = v50;
    *(&v113 + 1) = v51;
    sub_100075D50(&v113, v112);
    v52 = v97;
    v53 = swift_isUniquelyReferenced_nonNull_native();
    v111 = v52;
    sub_100315178(v112, v47, v48, v53);
    v54 = v111;
    *&v113 = v89;
    v55 = dispatch thunk of CustomStringConvertible.description.getter();
    v114 = &type metadata for String;
    *&v113 = v55;
    *(&v113 + 1) = v56;
    sub_100075D50(&v113, v112);
    v57 = swift_isUniquelyReferenced_nonNull_native();
    v111 = v54;
    sub_100315178(v112, v91, v90, v57);
    sub_100075768(v33, &qword_100509A48, &qword_100414778);
    v104(v35, v16);
    v97 = v111;
    v34 = v108;
    goto LABEL_5;
  }

  v43 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v43)
  {
    goto LABEL_16;
  }

  sub_1002BBBE8(v35, *v92, v92[1]);
  v59 = v58;
  v91 = URL.lastPathComponent.getter();
  v61 = v60;
  *&v113 = v59;
  v62 = dispatch thunk of CustomStringConvertible.description.getter();
  v114 = &type metadata for String;
  *&v113 = v62;
  *(&v113 + 1) = v63;
  sub_100075D50(&v113, v112);
  v64 = v97;
  v65 = swift_isUniquelyReferenced_nonNull_native();
  v111 = v64;
  v90 = v61;
  v66 = sub_10008C908(v91, v61);
  v68 = v64[2];
  v69 = (v67 & 1) == 0;
  v70 = __OFADD__(v68, v69);
  v71 = v68 + v69;
  if (!v70)
  {
    v72 = v67;
    if (v64[3] >= v71)
    {
      if ((v65 & 1) == 0)
      {
        v81 = v66;
        sub_10031130C();
        v66 = v81;
      }

      v73 = v90;
    }

    else
    {
      sub_10030A928(v71, v65);
      v73 = v90;
      v66 = sub_10008C908(v91, v90);
      if ((v72 & 1) != (v74 & 1))
      {
        goto LABEL_37;
      }
    }

    if (v72)
    {
      v75 = v66;

      v97 = v111;
      v76 = (v111[7] + 32 * v75);
      sub_1000752F4(v76);
      sub_100075D50(v112, v76);
    }

    else
    {
      v77 = v111;
      v111[(v66 >> 6) + 8] |= 1 << v66;
      v78 = (v77[6] + 16 * v66);
      *v78 = v91;
      v78[1] = v73;
      sub_100075D50(v112, (v77[7] + 32 * v66));
      v79 = v77[2];
      v70 = __OFADD__(v79, 1);
      v80 = v79 + 1;
      if (v70)
      {
        goto LABEL_34;
      }

      v97 = v77;
      v77[2] = v80;
    }

    v34 = v108;
    sub_100075768(v33, &qword_100509A48, &qword_100414778);
    goto LABEL_11;
  }

  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void sub_1002B9B6C(uint64_t a1)
{
  v3 = v2;
  v4 = v1;
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v51 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v9);
  v12 = &v45 - v11;
  v13 = OBJC_IVAR____TtC10seserviced15SESAssetManager_logger;
  v47 = *(v7 + 16);
  v48 = v7 + 16;
  v47(&v45 - v11, a1, v6, v10);
  v49 = v13;
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.info.getter();
  v16 = os_log_type_enabled(v14, v15);
  v52 = v7;
  if (v16)
  {
    v17 = swift_slowAlloc();
    v45 = v4;
    v18 = v17;
    v19 = swift_slowAlloc();
    v46 = a1;
    v20 = v19;
    v54 = v19;
    *v18 = 136315138;
    v21 = URL.path(percentEncoded:)(1);
    v53 = v2;
    v50 = *(v7 + 8);
    v50(v12, v6);
    v22 = sub_1002FFA0C(v21._countAndFlagsBits, v21._object, &v54);
    v3 = v53;

    *(v18 + 4) = v22;
    _os_log_impl(&_mh_execute_header, v14, v15, "Deleting %s", v18, 0xCu);
    sub_1000752F4(v20);
    a1 = v46;
  }

  else
  {

    v50 = *(v7 + 8);
    v50(v12, v6);
  }

  v23 = [objc_opt_self() defaultManager];
  URL.path(percentEncoded:)(1);
  v24 = String._bridgeToObjectiveC()();

  v25 = [v23 fileExistsAtPath:v24];

  if (v25)
  {
    URL._bridgeToObjectiveC()(v26);
    v28 = v27;
    v54 = 0;
    v29 = [v23 removeItemAtURL:v27 error:&v54];

    if (v29)
    {
      v30 = v54;
    }

    else
    {
      v40 = v54;
      v41 = _convertNSErrorToError(_:)();

      swift_willThrow();
      sub_10009393C(0, &qword_10050AA20, NSError_ptr);
      v54 = 0;
      v55 = 0xE000000000000000;
      _StringGuts.grow(_:)(19);

      v54 = 0xD000000000000011;
      v55 = 0x800000010046B040;
      v42 = URL.path(percentEncoded:)(1);
      String.append(_:)(v42);

      v43 = v54;
      v44 = v55;
      swift_errorRetain();
      sub_10030990C(0, 1, v43, v44, v41);
      swift_willThrow();
    }
  }

  else
  {
    v31 = v51;
    (v47)(v51, a1, v6);
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = v31;
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v53 = v3;
      v54 = v36;
      v37 = v36;
      *v35 = 136315138;
      v38 = URL.path(percentEncoded:)(1);
      v50(v34, v6);
      v39 = sub_1002FFA0C(v38._countAndFlagsBits, v38._object, &v54);

      *(v35 + 4) = v39;
      _os_log_impl(&_mh_execute_header, v32, v33, "Target does not exist %s", v35, 0xCu);
      sub_1000752F4(v37);
    }

    else
    {

      v50(v31, v6);
    }
  }
}

void sub_1002BA0BC(uint64_t a1, uint64_t a2)
{
  v64 = a2;
  v3 = type metadata accessor for UUID();
  v66 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v62[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for URL.DirectoryHint();
  v68 = *(v6 - 8);
  v69 = v6;
  __chkstk_darwin(v6);
  v8 = &v62[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_100068FC4(&unk_10050BEA0, &unk_10040F450);
  __chkstk_darwin(v9 - 8);
  v11 = &v62[-v10];
  v12 = type metadata accessor for URL();
  v70 = *(v12 - 8);
  v71 = v12;
  __chkstk_darwin(v12);
  v14 = &v62[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v15);
  v67 = &v62[-v16];
  v17 = [objc_opt_self() defaultManager];
  v75 = 0;
  v72 = a1;
  URL.path(percentEncoded:)(1);
  v18 = String._bridgeToObjectiveC()();

  LODWORD(a1) = [v17 fileExistsAtPath:v18 isDirectory:&v75];

  if (!a1 || (v75 & 1) != 0)
  {
    sub_10009393C(0, &qword_10050AA20, NSError_ptr);
    v73 = 0;
    v74 = 0xE000000000000000;
    _StringGuts.grow(_:)(19);

    v73 = 0xD000000000000011;
    v74 = 0x800000010046AF10;
LABEL_4:
    v19 = URL.path(percentEncoded:)(1);
    String.append(_:)(v19);

    sub_10030990C(0, 1, v73, v74, 0);
    swift_willThrow();

    return;
  }

  URL.path(percentEncoded:)(1);
  v20 = String._bridgeToObjectiveC()();

  v21 = [v17 isReadableFileAtPath:v20];

  if (!v21)
  {
    sub_10009393C(0, &qword_10050AA20, NSError_ptr);
    v73 = 0;
    v74 = 0xE000000000000000;
    _StringGuts.grow(_:)(30);

    v73 = 0xD00000000000001CLL;
    v74 = 0x800000010046AF30;
    goto LABEL_4;
  }

  v65 = v17;
  (*(v70 + 56))(v11, 1, 1, v71);
  v63 = enum case for URL.DirectoryHint.inferFromPath(_:);
  v22 = *(v68 + 104);
  v22(v8);

  URL.init(filePath:directoryHint:relativeTo:)();
  v73 = 1601203572;
  v74 = 0xE400000000000000;
  UUID.init()();
  sub_1002BC5B4(&qword_100504C70, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v23._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v23);

  (*(v66 + 8))(v5, v3);
  v24._countAndFlagsBits = 0x7473696C702ELL;
  v24._object = 0xE600000000000000;
  String.append(_:)(v24);
  v25 = v69;
  (v22)(v8, v63, v69);
  sub_10012512C();
  v26 = v67;
  URL.appending<A>(path:directoryHint:)();
  (*(v68 + 8))(v8, v25);

  v27 = *(v70 + 8);
  v27(v14, v71);
  URL._bridgeToObjectiveC()(v28);
  v30 = v29;
  URL._bridgeToObjectiveC()(v31);
  v33 = v32;
  v73 = 0;
  v34 = v65;
  LODWORD(v25) = [v65 copyItemAtURL:v30 toURL:v32 error:&v73];

  if (v25)
  {
    v35 = v73;
    URL._bridgeToObjectiveC()(v36);
    v38 = v37;
    URL._bridgeToObjectiveC()(v39);
    v41 = v40;
    v73 = 0;
    v42 = [v34 replaceItemAtURL:v38 withItemAtURL:v40 backupItemName:0 options:0 resultingItemURL:0 error:&v73];

    if (v42)
    {
      v43 = v73;
      v27(v26, v71);

      return;
    }

    v51 = v73;
    v45 = _convertNSErrorToError(_:)();

    swift_willThrow();
    URL._bridgeToObjectiveC()(v52);
    v54 = v53;
    v73 = 0;
    v55 = [v34 removeItemAtURL:v53 error:&v73];

    if (v55)
    {
      v56 = v73;
    }

    else
    {
      v58 = v73;
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }

    sub_10009393C(0, &qword_10050AA20, NSError_ptr);
    v73 = 0;
    v74 = 0xE000000000000000;
    _StringGuts.grow(_:)(37);

    v73 = 0xD000000000000023;
    v74 = 0x800000010046AF80;
  }

  else
  {
    v44 = v73;
    v45 = _convertNSErrorToError(_:)();

    swift_willThrow();
    URL._bridgeToObjectiveC()(v46);
    v48 = v47;
    v73 = 0;
    v49 = [v34 removeItemAtURL:v47 error:&v73];

    if (v49)
    {
      v50 = v73;
    }

    else
    {
      v57 = v73;
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }

    sub_10009393C(0, &qword_10050AA20, NSError_ptr);
    v73 = 0;
    v74 = 0xE000000000000000;
    _StringGuts.grow(_:)(39);

    v73 = 0xD000000000000025;
    v74 = 0x800000010046AF50;
  }

  v59 = URL.path(percentEncoded:)(1);
  String.append(_:)(v59);

  v60 = v73;
  v61 = v74;
  swift_errorRetain();
  sub_10030990C(0, 1, v60, v61, v45);
  swift_willThrow();

  v27(v26, v71);
}

uint64_t sub_1002BA988(uint64_t a1)
{
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v7 = *&v1[OBJC_IVAR____TtC10seserviced15SESAssetManager_queue];
  (*(v4 + 16))(aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3, v6);
  v8 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = v1;
  (*(v4 + 32))(v9 + v8, aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  v10 = swift_allocObject();
  *(v10 + 16) = sub_1002BBB5C;
  *(v10 + 24) = v9;
  aBlock[4] = sub_1000B3564;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100346DB0;
  aBlock[3] = &unk_1004CF3E8;
  v11 = _Block_copy(aBlock);
  v12 = v1;

  dispatch_sync(v7, v11);
  _Block_release(v11);
  LOBYTE(v7) = swift_isEscapingClosureAtFileLocation();

  if (v7)
  {
    __break(1u);
  }

  return result;
}

void sub_1002BABA8(uint64_t a1, uint64_t a2)
{
  v25 = a2;
  v3 = type metadata accessor for URL.DirectoryHint();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v26[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100068FC4(&unk_10050BEA0, &unk_10040F450);
  __chkstk_darwin(v7 - 8);
  v9 = &v26[-1] - v8;
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v26[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 56))(v9, 1, 1, v10, v12);
  (*(v4 + 104))(v6, enum case for URL.DirectoryHint.inferFromPath(_:), v3);

  v15 = a1;
  URL.init(filePath:directoryHint:relativeTo:)();
  LOBYTE(a1) = sub_1002B64C8(v25, v14);
  (*(v11 + 8))(v14, v10);
  if (a1)
  {
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "Notifying clients of an asset update", v18, 2u);
    }

    v19 = OBJC_IVAR____TtC10seserviced15SESAssetManager_delegates;
    swift_beginAccess();
    v20 = *(v15 + v19);
    v21 = *(v20 + 16);
    if (v21)
    {
      v22 = v20 + 32;

      do
      {
        sub_1000BC094(v22, v26);
        v23 = v27;
        v24 = v28;
        sub_1000752B0(v26, v27);
        (*(v24 + 8))(v23, v24);
        sub_1000752F4(v26);
        v22 += 40;
        --v21;
      }

      while (v21);
    }
  }
}

uint64_t sub_1002BAFF0(uint64_t *a1, NSObject *a2, void (*a3)(char *, uint64_t), void *a4, uint64_t a5)
{
  v65 = a5;
  v67 = a3;
  v79 = a2;
  v7 = type metadata accessor for URL.DirectoryHint();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for URL();
  v12 = *(v11 - 8);
  v72 = v11;
  v73 = v12;
  __chkstk_darwin(v11);
  v70 = &v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v62 - v15;
  __chkstk_darwin(v17);
  v19 = &v62 - v18;
  __chkstk_darwin(v20);
  v71 = &v62 - v21;
  v22 = *a1;
  v23 = *(*a1 + 16);
  v68 = *a1;
  v66 = v16;
  if (v23 && (v24 = sub_10008C908(*(&v79->isa + OBJC_IVAR____TtC10seserviced15SESAssetManager_manufacturerKey), *(&v79[1].isa + OBJC_IVAR____TtC10seserviced15SESAssetManager_manufacturerKey)), (v25 & 1) != 0) && (sub_1000754F0(*(v22 + 56) + 32 * v24, &v76), (swift_dynamicCast() & 1) != 0))
  {
    v26 = v74;
    v27 = v75;
  }

  else
  {
    v27 = 0xE900000000000073;
    v26 = 0x676E69747465735FLL;
  }

  v76 = a4;
  v77 = v65;
  LODWORD(v65) = enum case for URL.DirectoryHint.inferFromPath(_:);
  v64 = *(v8 + 104);
  v64(v10);
  sub_10012512C();
  URL.appending<A>(path:directoryHint:)();
  v63 = v19;
  v28 = *(v8 + 8);
  v28(v10, v7);
  v29 = *(&v79[1].isa + OBJC_IVAR____TtC10seserviced15SESAssetManager_profilePrefix);
  v76 = *(&v79->isa + OBJC_IVAR____TtC10seserviced15SESAssetManager_profilePrefix);
  v77 = v29;

  v30._countAndFlagsBits = v26;
  v30._object = v27;
  String.append(_:)(v30);

  v31._countAndFlagsBits = 0x7473696C702ELL;
  v31._object = 0xE600000000000000;
  String.append(_:)(v31);

  (v64)(v10, v65, v7);
  v32 = v71;
  v33 = v63;
  URL.appending<A>(path:directoryHint:)();
  v28(v10, v7);

  v34 = v72;
  v35 = v73;
  v36 = *(v73 + 8);
  v36(v33, v72);
  v37 = OBJC_IVAR____TtC10seserviced15SESAssetManager_logger;
  v38 = *(v35 + 16);
  v39 = v66;
  v73 = v35 + 16;
  v38(v66, v32, v34);
  v65 = v37;
  v40 = Logger.logObject.getter();
  v41 = static os_log_type_t.info.getter();
  v42 = os_log_type_enabled(v40, v41);
  v67 = v36;
  if (v42)
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v76 = v44;
    *v43 = 136315138;
    v45 = URL.path(percentEncoded:)(1);
    v36(v39, v72);
    v46 = sub_1002FFA0C(v45._countAndFlagsBits, v45._object, &v76);

    *(v43 + 4) = v46;
    _os_log_impl(&_mh_execute_header, v40, v41, "Writing profile %s", v43, 0xCu);
    sub_1000752F4(v44);
    v32 = v71;

    v34 = v72;
  }

  else
  {

    v36(v39, v34);
  }

  v47 = v70;
  v78 = sub_100068FC4(&qword_100505FD0, &qword_10040B550);
  v76 = v68;

  v48 = v69;
  sub_1002BBFA8(&v76, v32);
  if (v48)
  {
    sub_1000752F4(&v76);
    v38(v47, v32, v34);
    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v79 = v49;
      v53 = v47;
      v54 = v52;
      v76 = v52;
      *v51 = 136315138;
      v55 = URL.path(percentEncoded:)(1);
      v56 = v34;
      v57 = v67;
      v67(v53, v56);
      v58 = sub_1002FFA0C(v55._countAndFlagsBits, v55._object, &v76);

      *(v51 + 4) = v58;
      v59 = v79;
      _os_log_impl(&_mh_execute_header, v79, v50, "Failed to write profile file to %s", v51, 0xCu);
      sub_1000752F4(v54);

      return (v57)(v71, v72);
    }

    else
    {

      v61 = v67;
      v67(v47, v34);
      return (v61)(v32, v34);
    }
  }

  else
  {
    v67(v32, v34);
    return sub_1000752F4(&v76);
  }
}

uint64_t type metadata accessor for SESAssetManager(uint64_t a1)
{
  result = qword_100509A20;
  if (!qword_100509A20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1002BB864(uint64_t a1, uint64_t a2)
{
  result = type metadata accessor for Logger();
  if (v3 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

id sub_1002BB94C(uint64_t a1)
{
  v2 = v1;
  URL._bridgeToObjectiveC()(__stack_chk_guard);
  v5 = v4;
  v14 = 0;
  v6 = [v2 initWithContentsOfURL:v4 error:&v14];

  v7 = v14;
  if (v6)
  {
    v8 = type metadata accessor for URL();
    v9 = *(*(v8 - 8) + 8);
    v10 = v7;
    v9(a1, v8);
  }

  else
  {
    v11 = v14;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v12 = type metadata accessor for URL();
    (*(*(v12 - 8) + 8))(a1, v12);
  }

  return v6;
}

uint64_t sub_1002BBA98()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

void sub_1002BBB5C()
{
  v1 = *(type metadata accessor for URL() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  sub_1002BABA8(v2, v3);
}

uint64_t sub_1002BBBD0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1002BBBE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v28 = a3;
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [objc_opt_self() defaultManager];
  URL.path(percentEncoded:)(1);
  v11 = String._bridgeToObjectiveC()();

  v12 = [v10 isReadableFileAtPath:v11];

  if (!v12)
  {
    sub_10009393C(0, &qword_10050AA20, NSError_ptr);
    v29 = 0;
    v30 = 0xE000000000000000;
    _StringGuts.grow(_:)(23);

    v15 = 0x800000010046AFB0;
    v16 = 0xD000000000000015;
    goto LABEL_6;
  }

  (*(v7 + 16))(v9, a1, v6);
  v13 = objc_allocWithZone(NSDictionary);
  v14 = sub_1002BB94C(v9);
  if (v3)
  {

LABEL_4:
    sub_10009393C(0, &qword_10050AA20, NSError_ptr);
    v29 = 0;
    v30 = 0xE000000000000000;
    _StringGuts.grow(_:)(25);

    v15 = 0x800000010046AFD0;
    v16 = 0xD000000000000017;
LABEL_6:
    v29 = v16;
    v30 = v15;
    v17 = URL.path(percentEncoded:)(1);
    String.append(_:)(v17);

    v18 = v29;
    v19 = v30;
LABEL_7:
    sub_10030990C(0, 1, v18, v19, 0);
    swift_willThrow();

    return;
  }

  v29 = 0;
  v20 = v14;
  static Dictionary._conditionallyBridgeFromObjectiveC(_:result:)();

  v21 = v29;
  if (!v29)
  {
    goto LABEL_4;
  }

  if (!*(v29 + 16))
  {

    v22 = v28;
    goto LABEL_15;
  }

  v22 = v28;
  v23 = sub_10008C908(a2, v28);
  if ((v24 & 1) == 0)
  {

    goto LABEL_15;
  }

  sub_1000754F0(*(v21 + 56) + 32 * v23, &v29);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_15:
    sub_10009393C(0, &qword_10050AA20, NSError_ptr);
    v29 = 0;
    v30 = 0xE000000000000000;
    _StringGuts.grow(_:)(42);

    v29 = a2;
    v30 = v22;
    v25._countAndFlagsBits = 0xD000000000000026;
    v25._object = 0x800000010046AFF0;
    String.append(_:)(v25);
    v26 = URL.path(percentEncoded:)(1);
    String.append(_:)(v26);

    v18 = v29;
    v19 = v30;
    goto LABEL_7;
  }
}

uint64_t sub_1002BBFA8(void *a1, uint64_t a2)
{
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_opt_self() defaultManager];
  URL.deletingLastPathComponent()();
  URL._bridgeToObjectiveC()(v8);
  v10 = v9;
  (*(v4 + 8))(v6, v3);
  v22 = 0;
  LODWORD(v3) = [v7 createDirectoryAtURL:v10 withIntermediateDirectories:1 attributes:0 error:&v22];

  v11 = v22;
  if (v3)
  {
    v12 = objc_opt_self();
    sub_1000752B0(a1, a1[3]);
    v13 = v11;
    v14 = _bridgeAnythingToObjectiveC<A>(_:)();
    v22 = 0;
    v15 = [v12 dataWithPropertyList:v14 format:200 options:0 error:&v22];
    swift_unknownObjectRelease();
    v16 = v22;
    if (v15)
    {
      v17 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v19 = v18;

      Data.write(to:options:)();
      return sub_10006A178(v17, v19);
    }
  }

  else
  {
    v16 = v22;
  }

  v21 = v16;
  _convertNSErrorToError(_:)();

  return swift_willThrow();
}

void sub_1002BC1FC()
{
  v0 = [objc_opt_self() defaultManager];
  URL.path(percentEncoded:)(1);
  v1 = String._bridgeToObjectiveC()();

  v2 = [v0 isReadableFileAtPath:v1];

  if (!v2)
  {
    sub_10009393C(0, &qword_10050AA20, NSError_ptr);
    _StringGuts.grow(_:)(23);

    v13[0] = 0xD000000000000015;
    v13[1] = 0x800000010046B020;
    v11 = URL.path(percentEncoded:)(1);
    String.append(_:)(v11);

    sub_10030990C(0, 1, 0xD000000000000015, 0x800000010046B020, 0);
LABEL_6:
    swift_willThrow();
    goto LABEL_7;
  }

  URL._bridgeToObjectiveC()(v3);
  v5 = v4;
  URL._bridgeToObjectiveC()(v6);
  v8 = v7;
  v13[0] = 0;
  v9 = [v0 copyItemAtURL:v5 toURL:v7 error:v13];

  if ((v9 & 1) == 0)
  {
    v12 = v13[0];
    _convertNSErrorToError(_:)();

    goto LABEL_6;
  }

  v10 = v13[0];
LABEL_7:
}

uint64_t sub_1002BC3E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100068FC4(&qword_100509A30, &qword_100414760);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002BC450(uint64_t a1)
{
  type metadata accessor for URLResourceKey(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1002BC4C8()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1002BC544(uint64_t a1, uint64_t a2)
{
  v4 = sub_100068FC4(&qword_100509A48, &qword_100414778);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002BC5B4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *sub_1002BC604(uint64_t a1)
{
  v3 = type metadata accessor for SEStorageCredential();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v7 = (v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(a1 + 16);
  v9 = _swiftEmptyArrayStorage;
  if (!v8)
  {
    return v9;
  }

  v42 = v7;
  v35[1] = v1;
  v48 = _swiftEmptyArrayStorage;
  v44 = v5;
  sub_10019F6C4(0, v8, 0);
  v46 = v48;
  v10 = a1 + 64;
  result = _HashTable.startBucket.getter();
  v12 = result;
  v13 = 0;
  v47 = *(a1 + 36);
  v40 = v4 + 32;
  v41 = (v4 + 104);
  v39 = enum case for SEStorageCredential.eSIM(_:);
  v36 = a1 + 72;
  v37 = v8;
  v43 = v4;
  v38 = a1 + 64;
  while ((v12 & 0x8000000000000000) == 0 && v12 < 1 << *(a1 + 32))
  {
    v15 = v12 >> 6;
    if ((*(v10 + 8 * (v12 >> 6)) & (1 << v12)) == 0)
    {
      goto LABEL_23;
    }

    if (v47 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v45 = v13;
    v16 = *(*(a1 + 56) + 8 * v12);
    swift_bridgeObjectRetain_n();
    v17 = v16;
    [v17 integerValue];
    v18 = objc_allocWithZone(type metadata accessor for ESIMProfileInfo());
    v19 = ESIMProfileInfo.init(iccid:exactSize:)();
    v20 = v44;
    v21 = a1;
    v22 = v41;
    v23 = v42;
    *v42 = v19;
    (*v22)(v23, v39, v20);

    v24 = v46;
    v48 = v46;
    v26 = v46[2];
    v25 = v46[3];
    if (v26 >= v25 >> 1)
    {
      sub_10019F6C4((v25 > 1), v26 + 1, 1);
      v20 = v44;
      v24 = v48;
    }

    v24[2] = v26 + 1;
    v27 = (*(v43 + 80) + 32) & ~*(v43 + 80);
    v46 = v24;
    result = (*(v43 + 32))(v24 + v27 + *(v43 + 72) * v26, v23, v20);
    v14 = 1 << *(v21 + 32);
    if (v12 >= v14)
    {
      goto LABEL_25;
    }

    a1 = v21;
    v10 = v38;
    v28 = *(v38 + 8 * v15);
    if ((v28 & (1 << v12)) == 0)
    {
      goto LABEL_26;
    }

    if (v47 != *(a1 + 36))
    {
      goto LABEL_27;
    }

    v29 = v28 & (-2 << (v12 & 0x3F));
    if (v29)
    {
      v14 = __clz(__rbit64(v29)) | v12 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v30 = v15 << 6;
      v31 = v15 + 1;
      v32 = (v36 + 8 * v15);
      while (v31 < (v14 + 63) >> 6)
      {
        v34 = *v32++;
        v33 = v34;
        v30 += 64;
        ++v31;
        if (v34)
        {
          result = sub_1000937D4(v12, v47, 0);
          v14 = __clz(__rbit64(v33)) + v30;
          goto LABEL_4;
        }
      }

      result = sub_1000937D4(v12, v47, 0);
    }

LABEL_4:
    v13 = v45 + 1;
    v12 = v14;
    if (v45 + 1 == v37)
    {
      return v46;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_1002BC9B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[11] = v4;
  v5[12] = a4;
  v5[9] = a2;
  v5[10] = a3;
  v5[8] = a1;
  v6 = type metadata accessor for SERXPCInternalErrors();
  v5[13] = v6;
  v5[14] = *(v6 - 8);
  v5[15] = swift_task_alloc();
  v5[16] = swift_task_alloc();
  v5[17] = swift_task_alloc();
  v7 = type metadata accessor for SESnapshot.TargetDevice();
  v5[18] = v7;
  v5[19] = *(v7 - 8);
  v5[20] = swift_task_alloc();

  return _swift_task_switch(sub_1002BCAEC, 0, 0);
}

uint64_t sub_1002BCAEC()
{
  v2 = v0[19];
  v1 = v0[20];
  v3 = v0[18];
  (*(v2 + 16))(v1, v0[10], v3);
  v4 = (*(v2 + 88))(v1, v3);
  if (v4 == enum case for SESnapshot.TargetDevice.currentDevice(_:))
  {
    v5 = swift_task_alloc();
    v0[21] = v5;
    *v5 = v0;
    v5[1] = sub_1002BCDEC;
    v6 = v0[17];
    v8 = v0[8];
    v7 = v0[9];

    return sub_1002C89B8(v8, v7, v6);
  }

  else if (v4 == enum case for SESnapshot.TargetDevice.pairedWatch(_:))
  {
    v10 = swift_task_alloc();
    v0[24] = v10;
    *v10 = v0;
    v10[1] = sub_1002BD128;
    v11 = v0[15];

    return sub_1002CA910(v11);
  }

  else
  {
    v13 = v0[19];
    v12 = v0[20];
    v14 = v0[18];
    v15 = v0[13];
    v16 = v0[14];
    v17 = v0[12];
    _StringGuts.grow(_:)(27);

    v18._countAndFlagsBits = SESnapshot.TargetDevice.rawValue.getter();
    String.append(_:)(v18);

    *v17 = 0xD000000000000019;
    v17[1] = 0x800000010046B1C0;
    (*(v16 + 104))(v17, enum case for SERXPCInternalErrors.resourceUnavailable(_:), v15);
    sub_1002D9BE4(&qword_100507080, &type metadata accessor for SERXPCInternalErrors, &protocol conformance descriptor for SERXPCInternalErrors);
    swift_willThrowTypedImpl();
    (*(v13 + 8))(v12, v14);

    v19 = v0[1];

    return v19();
  }
}

uint64_t sub_1002BCDEC(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  *(*v2 + 176) = a1;

  if (v1)
  {

    return _swift_task_switch(sub_1002BD2D4, 0, 0);
  }

  else
  {
    v6 = swift_task_alloc();
    *(v4 + 184) = v6;
    *v6 = v5;
    v6[1] = sub_1002BCF74;
    v7 = *(v4 + 128);

    return sub_1002C8FAC(a1, v7);
  }
}

uint64_t sub_1002BCF74(uint64_t a1)
{
  v3 = *v2;
  v3[2] = v2;
  v3[3] = a1;
  v3[4] = v1;

  if (v1)
  {
    v4 = sub_1002BD37C;
  }

  else
  {
    v4 = sub_1002BD08C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1002BD08C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1002BD128(uint64_t a1)
{
  v3 = *v2;
  v3[5] = v2;
  v3[6] = a1;
  v3[7] = v1;

  if (v1)
  {
    v4 = sub_1002BD438;
  }

  else
  {
    v4 = sub_1002BD240;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1002BD240()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1002BD2D4()
{
  (*(v0[14] + 32))(v0[12], v0[17], v0[13]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1002BD37C()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 104);
  v3 = *(v0 + 112);
  v4 = *(v0 + 96);

  (*(v3 + 32))(v4, v1, v2);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1002BD438()
{
  (*(v0[14] + 32))(v0[12], v0[15], v0[13]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1002BD4DC(uint64_t a1, uint64_t a2)
{

  dispatch thunk of XPCListener.IncomingSessionRequest.accept(incomingMessageHandler:cancellationHandler:)();
}

double sub_1002BD550@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v65 = a2;
  v3 = type metadata accessor for SERXPCResponse();
  v61 = *(v3 - 8);
  v62 = v3;
  __chkstk_darwin(v3);
  v54 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100068FC4(&qword_100504250, &qword_10040D610);
  __chkstk_darwin(v5 - 8);
  v7 = &v45 - v6;
  v8 = type metadata accessor for SERXPCInternalErrors();
  v59 = *(v8 - 8);
  v60 = v8;
  __chkstk_darwin(v8);
  v56 = (&v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for XPCReceivedMessage();
  v55 = *(v10 - 8);
  v11 = *(v55 + 64);
  __chkstk_darwin(v10);
  v58 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v45 - v13;
  v15 = type metadata accessor for SERXPCRequest();
  v64 = *(v15 - 8);
  v16 = *(v64 + 64);
  __chkstk_darwin(v15);
  __chkstk_darwin(v17);
  v19 = &v45 - v18;
  __chkstk_darwin(v20);
  v63 = &v45 - v21;
  sub_1002D9BE4(&qword_100509B48, &type metadata accessor for SERXPCRequest, &protocol conformance descriptor for SERXPCRequest);
  XPCReceivedMessage.decode<A>(as:)();
  v48 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = v7;
  v22 = *(v64 + 32);
  v47 = v64 + 32;
  v46 = v22;
  v22(v63, v19, v15);
  XPCReceivedMessage.detachHandoff()();
  v23 = XPCReceivedMessage.auditToken.getter();
  v52 = v24;
  v53 = v23;
  v51 = v25;
  v50 = v26;
  v27 = v55;
  v28 = *(v55 + 16);
  v28(v14, a1, v10);
  v28(v58, v14, v10);
  v29 = (*(v27 + 80) + 16) & ~*(v27 + 80);
  v30 = swift_allocObject();
  (*(v27 + 32))(v30 + v29, v14, v10);
  v31 = v57;
  sub_1002BDE60(v53, v52, v51, v50, v56);
  v32 = v27;
  v33 = v15;
  v34 = type metadata accessor for TaskPriority();
  (*(*(v34 - 8) + 56))(v49, 1, 1, v34);
  v35 = v64 + 16;
  v36 = v10;
  v37 = v48;
  (*(v64 + 16))(v48, v63, v33);
  v38 = (*(v35 + 64) + 32) & ~*(v35 + 64);
  v39 = (v16 + v38 + 7) & 0xFFFFFFFFFFFFFFF8;
  v40 = swift_allocObject();
  *(v40 + 16) = 0;
  *(v40 + 24) = 0;
  v46(v40 + v38, v37, v33);
  *(v40 + v39) = v31;
  v41 = (v40 + ((v39 + 15) & 0xFFFFFFFFFFFFFFF8));
  *v41 = sub_1002D9328;
  v41[1] = v30;

  sub_1001F9BE8(0, 0, v49, &unk_100414810, v40);

  v42 = v65;
  v43 = v64;
  (*(v32 + 8))(v58, v36);
  (*(v43 + 8))(v63, v33);
  *(v42 + 32) = 0;
  result = 0.0;
  *v42 = 0u;
  *(v42 + 16) = 0u;
  return result;
}

uint64_t sub_1002BDDE4(uint64_t a1)
{
  type metadata accessor for SERXPCResponse();
  sub_1002D9BE4(&qword_100509B50, &type metadata accessor for SERXPCResponse, &protocol conformance descriptor for SERXPCResponse);
  return XPCReceivedMessage.reply<A>(_:)();
}

uint64_t sub_1002BDE60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  *token.val = a1;
  *&token.val[2] = a2;
  *&token.val[4] = a3;
  *&token.val[6] = a4;
  v6 = SecTaskCreateWithAuditToken(kCFAllocatorDefault, &token);
  if (v6)
  {
    v7 = v6;
    *token.val = 0;
    v8 = String._bridgeToObjectiveC()();
    v9 = SecTaskCopyValueForEntitlement(v7, v8, &token);

    if (v9)
    {
      v41 = v9;
      swift_unknownObjectRetain();
      if (swift_dynamicCast())
      {
        swift_unknownObjectRelease();

        v10 = v40;
      }

      else
      {
        if (qword_100501C78 != -1)
        {
          swift_once();
        }

        v26 = type metadata accessor for Logger();
        sub_1000958E4(v26, qword_100509A58);
        swift_unknownObjectRetain();
        v27 = Logger.logObject.getter();
        v28 = static os_log_type_t.error.getter();
        swift_unknownObjectRelease();
        if (os_log_type_enabled(v27, v28))
        {
          v29 = swift_slowAlloc();
          v41 = swift_slowAlloc();
          *v29 = 136315394;
          *(v29 + 4) = sub_1002FFA0C(0xD000000000000031, 0x800000010046B8B0, &v41);
          *(v29 + 12) = 2080;
          swift_getObjectType();
          v30 = _typeName(_:qualified:)();
          v32 = sub_1002FFA0C(v30, v31, &v41);

          *(v29 + 14) = v32;
          _os_log_impl(&_mh_execute_header, v27, v28, "SERXPC: Failed to cast result of entitlement %s from %s to Bool", v29, 0x16u);
          swift_arrayDestroy();
        }

        *a5 = 0xD000000000000016;
        a5[1] = 0x800000010046B920;
        v33 = enum case for SERXPCInternalErrors.entitlementError(_:);
        v34 = type metadata accessor for SERXPCInternalErrors();
        (*(*(v34 - 8) + 104))(a5, v33, v34);
        sub_1002D9BE4(&qword_100507080, &type metadata accessor for SERXPCInternalErrors, &protocol conformance descriptor for SERXPCInternalErrors);
        swift_willThrowTypedImpl();

        swift_unknownObjectRelease();
      }
    }

    else
    {
      v17 = *token.val;
      if (qword_100501C78 != -1)
      {
        swift_once();
      }

      v18 = type metadata accessor for Logger();
      sub_1000958E4(v18, qword_100509A58);
      v19 = v17;
      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v20, v21))
      {
        v39 = v19;
        v22 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        *v22 = 136315394;
        *(v22 + 4) = sub_1002FFA0C(0xD000000000000031, 0x800000010046B8B0, &v41);
        *(v22 + 12) = 2080;
        if (v17)
        {
          type metadata accessor for CFError(0);
          sub_1002D9BE4(&qword_100504A60, type metadata accessor for CFError, &protocol conformance descriptor for CFErrorRef);
          v23 = Error.localizedDescription.getter();
          v25 = v24;
        }

        else
        {
          v25 = 0xE500000000000000;
          v23 = 0x3E6C696E3CLL;
        }

        v35 = sub_1002FFA0C(v23, v25, &v41);

        *(v22 + 14) = v35;
        _os_log_impl(&_mh_execute_header, v20, v21, "SERXPC: Failed to SecTaskCopyValueForEntitlement %s : %s", v22, 0x16u);
        swift_arrayDestroy();

        v19 = v39;
      }

      else
      {
      }

      *a5 = 0xD000000000000028;
      a5[1] = 0x800000010046B8F0;
      v36 = enum case for SERXPCInternalErrors.entitlementError(_:);
      v37 = type metadata accessor for SERXPCInternalErrors();
      (*(*(v37 - 8) + 104))(a5, v36, v37);
      sub_1002D9BE4(&qword_100507080, &type metadata accessor for SERXPCInternalErrors, &protocol conformance descriptor for SERXPCInternalErrors);
      swift_willThrowTypedImpl();
    }
  }

  else
  {
    if (qword_100501C78 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_1000958E4(v11, qword_100509A58);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "SERXPC: Failed to SecTaskCreateWithAuditToken", v14, 2u);
    }

    *a5 = 0xD000000000000025;
    a5[1] = 0x8000000100468170;
    v15 = enum case for SERXPCInternalErrors.entitlementError(_:);
    v16 = type metadata accessor for SERXPCInternalErrors();
    (*(*(v16 - 8) + 104))(a5, v15, v16);
    sub_1002D9BE4(&qword_100507080, &type metadata accessor for SERXPCInternalErrors, &protocol conformance descriptor for SERXPCInternalErrors);
    swift_willThrowTypedImpl();
  }

  return v10 & 1;
}

uint64_t sub_1002BE5A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  v8 = type metadata accessor for UUID();
  v7[6] = v8;
  v7[7] = *(v8 - 8);
  v7[8] = swift_task_alloc();
  v9 = type metadata accessor for CredentialType();
  v7[9] = v9;
  v7[10] = *(v9 - 8);
  v7[11] = swift_task_alloc();
  v10 = type metadata accessor for SESnapshot.TargetDevice();
  v7[12] = v10;
  v7[13] = *(v10 - 8);
  v7[14] = swift_task_alloc();
  v11 = type metadata accessor for SERXPCResponse();
  v7[15] = v11;
  v7[16] = *(v11 - 8);
  v7[17] = swift_task_alloc();
  v7[18] = swift_task_alloc();
  v12 = type metadata accessor for SERXPCRequest();
  v7[19] = v12;
  v7[20] = *(v12 - 8);
  v7[21] = swift_task_alloc();
  v7[22] = swift_task_alloc();

  return _swift_task_switch(sub_1002BE7F4, 0, 0);
}

uint64_t sub_1002BE7F4()
{
  v129 = v0;
  v1 = arc4random();
  *(v0 + 400) = v1;
  if (qword_100501C78 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 176);
  v3 = *(v0 + 152);
  v4 = *(v0 + 160);
  v5 = *(v0 + 16);
  v6 = type metadata accessor for Logger();
  *(v0 + 184) = sub_1000958E4(v6, qword_100509A58);
  v127 = *(v4 + 16);
  v127(v2, v5, v3);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v0 + 176);
  v11 = *(v0 + 152);
  v12 = *(v0 + 160);
  if (v9)
  {
    v13 = swift_slowAlloc();
    v126 = swift_slowAlloc();
    v128 = v126;
    *v13 = 67109378;
    *(v13 + 4) = v1;
    *(v13 + 8) = 2080;
    v14 = SERXPCRequest.description.getter();
    v125 = v8;
    v16 = v15;
    v17 = *(v12 + 8);
    v17(v10, v11);
    v18 = sub_1002FFA0C(v14, v16, &v128);

    *(v13 + 10) = v18;
    _os_log_impl(&_mh_execute_header, v7, v125, "Received XPC request %u: %s", v13, 0x12u);
    sub_1000752F4(v126);
  }

  else
  {

    v17 = *(v12 + 8);
    v17(v10, v11);
  }

  v20 = *(v0 + 160);
  v19 = *(v0 + 168);
  v21 = *(v0 + 152);
  v127(v19, *(v0 + 16), v21);
  v22 = (*(v20 + 88))(v19, v21);
  if (v22 == enum case for SERXPCRequest.getSESnapshot(_:))
  {
    v23 = *(v0 + 168);
    v25 = *(v0 + 104);
    v24 = *(v0 + 112);
    v26 = *(v0 + 96);
    (*(*(v0 + 160) + 96))(v23, *(v0 + 152));
    v27 = *v23;
    *(v0 + 192) = *v23;
    v28 = v23[1];
    *(v0 + 200) = v28;
    v29 = sub_100068FC4(&qword_100509B70, &qword_100414880);
    (*(v25 + 32))(v24, v23 + *(v29 + 48), v26);
    v30 = swift_task_alloc();
    *(v0 + 208) = v30;
    *v30 = v0;
    v30[1] = sub_1002BF65C;
    v31 = *(v0 + 136);
    v32 = *(v0 + 112);

    return sub_1002C1058(v31, v27, v28, v32);
  }

  if (v22 == enum case for SERXPCRequest.refresh(_:))
  {
    v34 = *(v0 + 168);
    (*(*(v0 + 160) + 96))(v34, *(v0 + 152));
    v35 = *v34;
    *(v0 + 216) = *v34;
    v36 = v34[1];
    *(v0 + 224) = v36;
    v37 = v34[2];
    *(v0 + 232) = v37;
    v38 = swift_task_alloc();
    *(v0 + 240) = v38;
    *v38 = v0;
    v38[1] = sub_1002BF910;
    v39 = *(v0 + 136);

    return sub_1002C174C(v39, v35, v36, v37);
  }

  if (v22 == enum case for SERXPCRequest.reclaimUnusedSEMemory(_:))
  {
    v40 = *(v0 + 168);
    v42 = *(v0 + 104);
    v41 = *(v0 + 112);
    v43 = *(v0 + 96);
    (*(*(v0 + 160) + 96))(v40, *(v0 + 152));
    (*(v42 + 32))(v41, v40, v43);
    v44 = swift_task_alloc();
    *(v0 + 328) = v44;
    *v44 = v0;
    v44[1] = sub_1002C083C;
    v45 = *(v0 + 136);
    v46 = *(v0 + 112);

    return sub_1002C3F9C(v45, v46);
  }

  if (v22 == enum case for SERXPCRequest.addReservation(_:))
  {
    v47 = *(v0 + 168);
    v49 = *(v0 + 80);
    v48 = *(v0 + 88);
    v50 = *(v0 + 72);
    (*(*(v0 + 160) + 96))(v47, *(v0 + 152));
    v51 = (v47 + *(sub_100068FC4(&qword_100509B68, &qword_100414868) + 48));
    v52 = *v51;
    *(v0 + 248) = *v51;
    v53 = v51[1];
    *(v0 + 256) = v53;
    (*(v49 + 32))(v48, v47, v50);
    v54 = swift_task_alloc();
    *(v0 + 264) = v54;
    *v54 = v0;
    v54[1] = sub_1002BFBAC;
    v55 = *(v0 + 136);
    v56 = *(v0 + 88);

    return sub_1002C1F78(v55, v56, v52, v53);
  }

  if (v22 == enum case for SERXPCRequest.editReservation(_:))
  {
    v57 = *(v0 + 168);
    v59 = *(v0 + 56);
    v58 = *(v0 + 64);
    v60 = *(v0 + 48);
    (*(*(v0 + 160) + 96))(v57, *(v0 + 152));
    v61 = (v57 + *(sub_100068FC4(&qword_100509B60, &qword_100414858) + 48));
    v62 = *v61;
    *(v0 + 272) = *v61;
    v63 = v61[1];
    *(v0 + 280) = v63;
    (*(v59 + 32))(v58, v57, v60);
    v64 = swift_task_alloc();
    *(v0 + 288) = v64;
    *v64 = v0;
    v64[1] = sub_1002BFE60;
    v65 = *(v0 + 136);
    v66 = *(v0 + 64);

    return sub_1002C23BC(v65, v66, v62, v63);
  }

  if (v22 == enum case for SERXPCRequest.findReservation(_:))
  {
    v67 = *(v0 + 168);
    v69 = *(v0 + 56);
    v68 = *(v0 + 64);
    v70 = *(v0 + 48);
    (*(*(v0 + 160) + 96))(v67, *(v0 + 152));
    (*(v69 + 32))(v68, v67, v70);
    v71 = swift_task_alloc();
    *(v0 + 296) = v71;
    *v71 = v0;
    v71[1] = sub_1002C0114;
    v72 = *(v0 + 136);
    v73 = *(v0 + 64);

    return sub_1002C291C(v72, v73);
  }

  if (v22 == enum case for SERXPCRequest.removeReservation(_:))
  {
    v74 = *(v0 + 168);
    v76 = *(v0 + 56);
    v75 = *(v0 + 64);
    v77 = *(v0 + 48);
    (*(*(v0 + 160) + 96))(v74, *(v0 + 152));
    (*(v76 + 32))(v75, v74, v77);
    v78 = swift_task_alloc();
    *(v0 + 304) = v78;
    *v78 = v0;
    v78[1] = sub_1002C03B8;
    v79 = *(v0 + 136);
    v80 = *(v0 + 64);

    return sub_1002C2DCC(v79, v80);
  }

  if (v22 == enum case for SERXPCRequest.canFit(_:))
  {
    v81 = *(v0 + 168);
    v83 = *(v0 + 104);
    v82 = *(v0 + 112);
    v84 = *(v0 + 96);
    (*(*(v0 + 160) + 96))(v81, *(v0 + 152));
    v85 = *v81;
    *(v0 + 336) = *v81;
    v86 = *(v81 + 8);
    v87 = *(v81 + 16);
    *(v0 + 344) = v87;
    v88 = *(v81 + 24);
    *(v0 + 352) = v88;
    v89 = sub_100068FC4(&qword_100509B58, &qword_100414818);
    (*(v83 + 32))(v82, v81 + *(v89 + 80), v84);
    v90 = swift_task_alloc();
    *(v0 + 360) = v90;
    *v90 = v0;
    v90[1] = sub_1002C0AE0;
    v91 = *(v0 + 136);
    v92 = *(v0 + 112);

    return sub_1002C5928(v91, v85, v86, v87, v88, v92);
  }

  if (v22 == enum case for SERXPCRequest.canFitESim(_:))
  {
    v93 = *(v0 + 168);
    v95 = *(v0 + 104);
    v94 = *(v0 + 112);
    v96 = *(v0 + 96);
    (*(*(v0 + 160) + 96))(v93, *(v0 + 152));
    v97 = *v93;
    *(v0 + 368) = *v93;
    v98 = *(v93 + 8);
    *(v0 + 376) = *(v93 + 16);
    *(v0 + 384) = *(v93 + 24);
    v99 = sub_100068FC4(&qword_100509B58, &qword_100414818);
    (*(v95 + 32))(v94, v93 + *(v99 + 80), v96);
    v100 = swift_task_alloc();
    *(v0 + 392) = v100;
    *v100 = v0;
    v100[1] = sub_1002C0D9C;
    v101 = *(v0 + 136);

    return sub_1002C7A88(v101, v97, v98);
  }

  if (v22 == enum case for SERXPCRequest.addReservationViena(_:))
  {
    v103 = *(v0 + 128);
    v102 = *(v0 + 136);
    v104 = *(v0 + 120);
    v17(*(v0 + 168), *(v0 + 152));
    *v102 = 1;
    (*(v103 + 104))(v102, enum case for SERXPCResponse.addReservationViena(_:), v104);
LABEL_44:
    (*(*(v0 + 128) + 32))(*(v0 + 144), *(v0 + 136), *(v0 + 120));
    v105 = Logger.logObject.getter();
    v106 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v105, v106))
    {
      v107 = *(v0 + 400);
      v108 = swift_slowAlloc();
      *v108 = 67109120;
      *(v108 + 4) = v107;
      _os_log_impl(&_mh_execute_header, v105, v106, "Posting XPC response %u", v108, 8u);
    }

    v109 = *(v0 + 144);
    v110 = *(v0 + 120);
    v111 = *(v0 + 128);
    v112 = *(v0 + 32);

    v112(v109);
    (*(v111 + 8))(v109, v110);

    v113 = *(v0 + 8);

    return v113();
  }

  if (v22 == enum case for SERXPCRequest.reservations(_:))
  {
    v114 = swift_task_alloc();
    *(v0 + 312) = v114;
    *v114 = v0;
    v114[1] = sub_1002C04B4;
    v115 = *(v0 + 136);

    return sub_1002C32E0(v115);
  }

  else
  {
    if (v22 != enum case for SERXPCRequest.clearReservations(_:))
    {
      v118 = *(v0 + 168);
      v119 = *(v0 + 152);
      v121 = *(v0 + 128);
      v120 = *(v0 + 136);
      v122 = *(v0 + 120);
      *v120 = 0xD000000000000013;
      v120[1] = 0x800000010046B4A0;
      v123 = enum case for SERXPCInternalErrors.typeMismatch(_:);
      v124 = type metadata accessor for SERXPCInternalErrors();
      (*(*(v124 - 8) + 104))(v120, v123, v124);
      (*(v121 + 104))(v120, enum case for SERXPCResponse.error(_:), v122);
      v17(v118, v119);
      goto LABEL_44;
    }

    v116 = swift_task_alloc();
    *(v0 + 320) = v116;
    *v116 = v0;
    v116[1] = sub_1002C0740;
    v117 = *(v0 + 136);

    return sub_1002C3A8C(v117);
  }
}

uint64_t sub_1002BF65C()
{

  return _swift_task_switch(sub_1002BF758, 0, 0);
}

uint64_t sub_1002BF758()
{
  v2 = *(v0 + 104);
  v1 = *(v0 + 112);
  v3 = *(v0 + 96);
  sub_10006A2D0(*(v0 + 192), *(v0 + 200));
  (*(v2 + 8))(v1, v3);
  (*(*(v0 + 128) + 32))(*(v0 + 144), *(v0 + 136), *(v0 + 120));
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 400);
    v7 = swift_slowAlloc();
    *v7 = 67109120;
    *(v7 + 4) = v6;
    _os_log_impl(&_mh_execute_header, v4, v5, "Posting XPC response %u", v7, 8u);
  }

  v8 = *(v0 + 144);
  v9 = *(v0 + 120);
  v10 = *(v0 + 128);
  v11 = *(v0 + 32);

  v11(v8);
  (*(v10 + 8))(v8, v9);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_1002BF910()
{

  return _swift_task_switch(sub_1002BFA0C, 0, 0);
}

uint64_t sub_1002BFA0C()
{
  v1 = *(v0 + 216);
  sub_10006A178(*(v0 + 224), *(v0 + 232));

  (*(*(v0 + 128) + 32))(*(v0 + 144), *(v0 + 136), *(v0 + 120));
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 400);
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = v4;
    _os_log_impl(&_mh_execute_header, v2, v3, "Posting XPC response %u", v5, 8u);
  }

  v6 = *(v0 + 144);
  v7 = *(v0 + 120);
  v8 = *(v0 + 128);
  v9 = *(v0 + 32);

  v9(v6);
  (*(v8 + 8))(v6, v7);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_1002BFBAC()
{

  return _swift_task_switch(sub_1002BFCA8, 0, 0);
}

uint64_t sub_1002BFCA8()
{
  v2 = *(v0 + 80);
  v1 = *(v0 + 88);
  v3 = *(v0 + 72);
  sub_10006A178(*(v0 + 248), *(v0 + 256));
  (*(v2 + 8))(v1, v3);
  (*(*(v0 + 128) + 32))(*(v0 + 144), *(v0 + 136), *(v0 + 120));
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 400);
    v7 = swift_slowAlloc();
    *v7 = 67109120;
    *(v7 + 4) = v6;
    _os_log_impl(&_mh_execute_header, v4, v5, "Posting XPC response %u", v7, 8u);
  }

  v8 = *(v0 + 144);
  v9 = *(v0 + 120);
  v10 = *(v0 + 128);
  v11 = *(v0 + 32);

  v11(v8);
  (*(v10 + 8))(v8, v9);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_1002BFE60()
{

  return _swift_task_switch(sub_1002BFF5C, 0, 0);
}

uint64_t sub_1002BFF5C()
{
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  v3 = *(v0 + 48);
  sub_10006A178(*(v0 + 272), *(v0 + 280));
  (*(v2 + 8))(v1, v3);
  (*(*(v0 + 128) + 32))(*(v0 + 144), *(v0 + 136), *(v0 + 120));
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 400);
    v7 = swift_slowAlloc();
    *v7 = 67109120;
    *(v7 + 4) = v6;
    _os_log_impl(&_mh_execute_header, v4, v5, "Posting XPC response %u", v7, 8u);
  }

  v8 = *(v0 + 144);
  v9 = *(v0 + 120);
  v10 = *(v0 + 128);
  v11 = *(v0 + 32);

  v11(v8);
  (*(v10 + 8))(v8, v9);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_1002C0114()
{

  return _swift_task_switch(sub_1002C0210, 0, 0);
}

uint64_t sub_1002C0210()
{
  (*(*(v0 + 56) + 8))(*(v0 + 64), *(v0 + 48));
  (*(*(v0 + 128) + 32))(*(v0 + 144), *(v0 + 136), *(v0 + 120));
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 400);
    v4 = swift_slowAlloc();
    *v4 = 67109120;
    *(v4 + 4) = v3;
    _os_log_impl(&_mh_execute_header, v1, v2, "Posting XPC response %u", v4, 8u);
  }

  v5 = *(v0 + 144);
  v6 = *(v0 + 120);
  v7 = *(v0 + 128);
  v8 = *(v0 + 32);

  v8(v5);
  (*(v7 + 8))(v5, v6);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1002C03B8()
{

  return _swift_task_switch(sub_1002D9C58, 0, 0);
}

uint64_t sub_1002C04B4()
{

  return _swift_task_switch(sub_1002C05B0, 0, 0);
}

uint64_t sub_1002C05B0()
{
  (*(*(v0 + 128) + 32))(*(v0 + 144), *(v0 + 136), *(v0 + 120));
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 400);
    v4 = swift_slowAlloc();
    *v4 = 67109120;
    *(v4 + 4) = v3;
    _os_log_impl(&_mh_execute_header, v1, v2, "Posting XPC response %u", v4, 8u);
  }

  v5 = *(v0 + 144);
  v6 = *(v0 + 120);
  v7 = *(v0 + 128);
  v8 = *(v0 + 32);

  v8(v5);
  (*(v7 + 8))(v5, v6);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1002C0740()
{

  return _swift_task_switch(sub_1002D9C6C, 0, 0);
}

uint64_t sub_1002C083C()
{

  return _swift_task_switch(sub_1002C0938, 0, 0);
}

uint64_t sub_1002C0938()
{
  (*(*(v0 + 104) + 8))(*(v0 + 112), *(v0 + 96));
  (*(*(v0 + 128) + 32))(*(v0 + 144), *(v0 + 136), *(v0 + 120));
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 400);
    v4 = swift_slowAlloc();
    *v4 = 67109120;
    *(v4 + 4) = v3;
    _os_log_impl(&_mh_execute_header, v1, v2, "Posting XPC response %u", v4, 8u);
  }

  v5 = *(v0 + 144);
  v6 = *(v0 + 120);
  v7 = *(v0 + 128);
  v8 = *(v0 + 32);

  v8(v5);
  (*(v7 + 8))(v5, v6);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1002C0AE0()
{

  return _swift_task_switch(sub_1002C0BDC, 0, 0);
}

uint64_t sub_1002C0BDC()
{
  v1 = *(v0 + 336);
  v3 = *(v0 + 104);
  v2 = *(v0 + 112);
  v4 = *(v0 + 96);
  sub_10006A2D0(*(v0 + 344), *(v0 + 352));

  (*(v3 + 8))(v2, v4);
  (*(*(v0 + 128) + 32))(*(v0 + 144), *(v0 + 136), *(v0 + 120));
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 400);
    v8 = swift_slowAlloc();
    *v8 = 67109120;
    *(v8 + 4) = v7;
    _os_log_impl(&_mh_execute_header, v5, v6, "Posting XPC response %u", v8, 8u);
  }

  v9 = *(v0 + 144);
  v10 = *(v0 + 120);
  v11 = *(v0 + 128);
  v12 = *(v0 + 32);

  v12(v9);
  (*(v11 + 8))(v9, v10);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_1002C0D9C()
{

  return _swift_task_switch(sub_1002C0E98, 0, 0);
}

uint64_t sub_1002C0E98()
{
  v1 = *(v0 + 368);
  v3 = *(v0 + 104);
  v2 = *(v0 + 112);
  v4 = *(v0 + 96);
  sub_10006A2D0(*(v0 + 376), *(v0 + 384));

  (*(v3 + 8))(v2, v4);
  (*(*(v0 + 128) + 32))(*(v0 + 144), *(v0 + 136), *(v0 + 120));
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 400);
    v8 = swift_slowAlloc();
    *v8 = 67109120;
    *(v8 + 4) = v7;
    _os_log_impl(&_mh_execute_header, v5, v6, "Posting XPC response %u", v8, 8u);
  }

  v9 = *(v0 + 144);
  v10 = *(v0 + 120);
  v11 = *(v0 + 128);
  v12 = *(v0 + 32);

  v12(v9);
  (*(v11 + 8))(v9, v10);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_1002C1058(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v8 = type metadata accessor for SERXPCInternalErrors();
  v4[3] = v8;
  v4[4] = *(v8 - 8);
  v4[5] = swift_task_alloc();
  v4[6] = swift_task_alloc();
  v9 = swift_task_alloc();
  v4[7] = v9;
  v4[8] = swift_task_alloc();
  v10 = swift_task_alloc();
  v4[9] = v10;
  *v10 = v4;
  v10[1] = sub_1002C11C4;

  return sub_1002BC9B0(a2, a3, a4, v9);
}

uint64_t sub_1002C11C4(uint64_t a1)
{
  v4 = *v2;

  if (v1)
  {
    v5 = sub_1002C13C0;
  }

  else
  {
    *(v4 + 80) = a1;
    v5 = sub_1002C12E8;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1002C12E8()
{
  v1 = v0[2];
  *v1 = v0[10];
  v2 = enum case for SERXPCResponse.getSESnapshot(_:);
  v3 = type metadata accessor for SERXPCResponse();
  (*(*(v3 - 8) + 104))(v1, v2, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1002C13C0()
{
  v31 = v0;
  v1 = v0[8];
  v2 = v0[6];
  v3 = v0[3];
  v4 = *(v0[4] + 32);
  v4(v1, v0[7], v3);
  v4(v2, v1, v3);
  if (qword_100501C78 != -1)
  {
    swift_once();
  }

  v5 = v0[5];
  v6 = v0[6];
  v7 = v0[3];
  v8 = v0[4];
  v9 = type metadata accessor for Logger();
  sub_1000958E4(v9, qword_100509A58);
  v10 = *(v8 + 16);
  v10(v5, v6, v7);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.error.getter();
  v13 = os_log_type_enabled(v11, v12);
  v14 = v0[4];
  v15 = v0[5];
  v16 = v0[3];
  if (v13)
  {
    v28 = v12;
    v17 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v30 = v29;
    *v17 = 136315650;
    *(v17 + 4) = sub_1002FFA0C(0xD000000000000020, 0x800000010046B4C0, &v30);
    *(v17 + 12) = 2048;
    *(v17 + 14) = 118;
    *(v17 + 22) = 2112;
    sub_1002D9BE4(&qword_100507080, &type metadata accessor for SERXPCInternalErrors, &protocol conformance descriptor for SERXPCInternalErrors);
    swift_allocError();
    v18 = v10;
    v19 = v4;
    v18(v20, v15, v16);
    v21 = _swift_stdlib_bridgeErrorToNSError();
    (*(v14 + 8))(v15, v16);
    *(v17 + 24) = v21;
    *v27 = v21;
    v4 = v19;
    _os_log_impl(&_mh_execute_header, v11, v28, "%s:%ld - %@", v17, 0x20u);
    sub_100075768(v27, &unk_100503F70, &unk_10040B2E0);

    sub_1000752F4(v29);
  }

  else
  {

    (*(v14 + 8))(v15, v16);
  }

  v22 = v0[2];
  v4(v22, v0[6], v0[3]);
  v23 = enum case for SERXPCResponse.error(_:);
  v24 = type metadata accessor for SERXPCResponse();
  (*(*(v24 - 8) + 104))(v22, v23, v24);

  v25 = v0[1];

  return v25();
}

uint64_t sub_1002C174C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4;
  v9 = *v6;
  v5[8] = a2;
  v5[9] = v9;
  v5[7] = a1;
  v10 = type metadata accessor for SERXPCInternalErrors();
  v5[10] = v10;
  v5[11] = *(v10 - 8);
  v5[12] = swift_task_alloc();
  v11 = swift_task_alloc();
  v5[13] = v11;
  v5[14] = swift_task_alloc();
  v12 = swift_task_alloc();
  v5[15] = v12;
  *v12 = v5;
  v12[1] = sub_1002C18A8;

  return sub_1002C89B8(a3, a4, v11);
}

uint64_t sub_1002C18A8(void *a1)
{
  v4 = *v2;
  v4[16] = a1;

  if (v1)
  {

    return _swift_task_switch(sub_1002C1C54, 0, 0);
  }

  else
  {
    v5 = a1;
    v6 = swift_task_alloc();
    v4[17] = v6;
    *v6 = v4;
    v6[1] = sub_1002C1A3C;
    v7 = v4[8];

    return sub_1002CADB8(v7, v5);
  }
}

uint64_t sub_1002C1A3C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 128);
  *(*v2 + 144) = v1;

  if (v1)
  {
    v6 = sub_1002C1D5C;
  }

  else
  {
    *(v4 + 152) = a1;
    v6 = sub_1002C1B84;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1002C1B84()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 56);

  *v2 = v1;
  v3 = enum case for SERXPCResponse.refresh(_:);
  v4 = type metadata accessor for SERXPCResponse();
  (*(*(v4 - 8) + 104))(v2, v3, v4);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1002C1C54()
{
  v1 = v0[14];
  v2 = v0[10];
  v3 = v0[7];
  v4 = *(v0[11] + 32);
  v4(v1, v0[13], v2);
  v4(v3, v1, v2);
  v5 = enum case for SERXPCResponse.error(_:);
  v6 = type metadata accessor for SERXPCResponse();
  (*(*(v6 - 8) + 104))(v3, v5, v6);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1002C1D5C()
{
  *(v0 + 40) = *(v0 + 144);
  swift_errorRetain();
  sub_100068FC4(&unk_100503F80, &qword_100409CF0);
  if (swift_dynamicCast())
  {
    v2 = *(v0 + 88);
    v1 = *(v0 + 96);
    v3 = *(v0 + 80);
    v4 = *(v0 + 56);

    (*(v2 + 32))(v4, v1, v3);
    v5 = enum case for SERXPCResponse.error(_:);
    v6 = type metadata accessor for SERXPCResponse();
    (*(*(v6 - 8) + 104))(v4, v5, v6);
  }

  else
  {
    v7 = *(v0 + 128);
    v8 = *(v0 + 80);
    v9 = *(v0 + 88);
    v10 = *(v0 + 56);

    swift_getErrorValue();
    v11 = Error.localizedDescription.getter();
    v13 = v12;

    *v10 = v11;
    v10[1] = v13;
    (*(v9 + 104))(v10, enum case for SERXPCInternalErrors.resourceUnavailable(_:), v8);
    v14 = enum case for SERXPCResponse.error(_:);
    v15 = type metadata accessor for SERXPCResponse();
    (*(*(v15 - 8) + 104))(v10, v14, v15);
  }

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_1002C1F78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return _swift_task_switch(sub_1002C1F9C, 0, 0);
}

uint64_t sub_1002C1F9C()
{
  v1 = qword_100508D40;
  if (!qword_100508D40)
  {
    type metadata accessor for SERPersistenceController(0);
    swift_allocObject();
    sub_100284074();
    v1 = v2;
    qword_100508D40 = v2;
  }

  *(v0 + 48) = 0;
  *(v0 + 56) = v1;

  return _swift_task_switch(sub_1002C2154, v1, 0);
}

uint64_t sub_1002C2154()
{
  v1 = v0[6];
  v0[8] = sub_100282E1C(v0[3], v0[4], v0[5]);
  if (v1)
  {

    v2 = sub_1002C22B0;
  }

  else
  {

    v2 = sub_1002C2200;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1002C2200()
{
  **(v0 + 16) = *(v0 + 64);
  v1 = *(v0 + 16);
  v2 = enum case for SERXPCResponse.addReservation(_:);
  v3 = type metadata accessor for SERXPCResponse();
  (*(*(v3 - 8) + 104))(v1, v2, v3);
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1002C22B0()
{
  v1 = *(v0 + 16);
  *v1 = 0xD00000000000003FLL;
  v1[1] = 0x800000010046B4F0;
  v2 = enum case for SERXPCInternalErrors.internalError(_:);
  v3 = type metadata accessor for SERXPCInternalErrors();
  (*(*(v3 - 8) + 104))(v1, v2, v3);
  v4 = *(v0 + 16);
  v5 = enum case for SERXPCResponse.error(_:);
  v6 = type metadata accessor for SERXPCResponse();
  (*(*(v6 - 8) + 104))(v4, v5, v6);
  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1002C23BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  v4[3] = a1;
  v4[4] = a2;
  return _swift_task_switch(sub_1002C23E0, 0, 0);
}

uint64_t sub_1002C23E0()
{
  v1 = qword_100508D40;
  if (!qword_100508D40)
  {
    type metadata accessor for SERPersistenceController(0);
    swift_allocObject();
    sub_100284074();
    v1 = v2;
    qword_100508D40 = v2;
  }

  *(v0 + 56) = 0;
  *(v0 + 64) = v1;

  return _swift_task_switch(sub_1002C2598, v1, 0);
}

uint64_t sub_1002C2598()
{
  v1 = *(v0 + 64);
  v2 = *(v1 + 112);
  if (!v2)
  {
    v7 = objc_allocWithZone(NSError);
    v8 = String._bridgeToObjectiveC()();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
    v10 = [v7 initWithDomain:v8 code:21 userInfo:isa];

    swift_willThrow();

    goto LABEL_5;
  }

  v4 = *(v0 + 48);
  v3 = *(v0 + 56);
  v13 = *(v0 + 32);
  v5 = swift_task_alloc();
  *(v5 + 16) = v1;
  *(v5 + 24) = v13;
  *(v5 + 40) = v4;
  *(v5 + 48) = v2;
  type metadata accessor for Reservation();
  v6 = v2;
  NSManagedObjectContext.performAndWait<A>(_:)();
  if (v3)
  {

LABEL_5:
    v11 = sub_1002C2810;
    goto LABEL_7;
  }

  *(v0 + 72) = *(v0 + 16);
  v11 = sub_1002C2760;
LABEL_7:

  return _swift_task_switch(v11, 0, 0);
}

uint64_t sub_1002C2760()
{
  **(v0 + 24) = *(v0 + 72);
  v1 = *(v0 + 24);
  v2 = enum case for SERXPCResponse.editReservation(_:);
  v3 = type metadata accessor for SERXPCResponse();
  (*(*(v3 - 8) + 104))(v1, v2, v3);
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1002C2810()
{
  v1 = *(v0 + 24);
  *v1 = 0xD000000000000040;
  v1[1] = 0x800000010046B530;
  v2 = enum case for SERXPCInternalErrors.internalError(_:);
  v3 = type metadata accessor for SERXPCInternalErrors();
  (*(*(v3 - 8) + 104))(v1, v2, v3);
  v4 = *(v0 + 24);
  v5 = enum case for SERXPCResponse.error(_:);
  v6 = type metadata accessor for SERXPCResponse();
  (*(*(v6 - 8) + 104))(v4, v5, v6);
  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1002C291C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_1002C293C, 0, 0);
}

uint64_t sub_1002C293C()
{
  v1 = qword_100508D40;
  if (!qword_100508D40)
  {
    type metadata accessor for SERPersistenceController(0);
    swift_allocObject();
    sub_100284074();
    v1 = v2;
    qword_100508D40 = v2;
  }

  *(v0 + 32) = 0;
  *(v0 + 40) = v1;

  return _swift_task_switch(sub_1002C2AF4, v1, 0);
}

uint64_t sub_1002C2AF4()
{
  v1 = *(v0 + 32);
  *(v0 + 48) = sub_100282BF8(*(v0 + 24));
  if (v1)
  {

    v2 = sub_1002C2CC0;
  }

  else
  {

    v2 = sub_1002C2B9C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1002C2B9C()
{
  v1 = v0[6];
  v2 = v0[2];
  if (v1)
  {
    *v2 = v1;
    v3 = &enum case for SERXPCResponse.findReservation(_:);
  }

  else
  {
    *v2 = 0xD000000000000040;
    v2[1] = 0x800000010046B580;
    v4 = enum case for SERXPCInternalErrors.internalError(_:);
    v5 = type metadata accessor for SERXPCInternalErrors();
    (*(*(v5 - 8) + 104))(v2, v4, v5);
    v3 = &enum case for SERXPCResponse.error(_:);
  }

  v6 = v0[2];
  v7 = *v3;
  v8 = type metadata accessor for SERXPCResponse();
  (*(*(v8 - 8) + 104))(v6, v7, v8);
  v9 = v0[1];

  return v9();
}

uint64_t sub_1002C2CC0()
{
  v1 = *(v0 + 16);
  *v1 = 0xD000000000000040;
  v1[1] = 0x800000010046B580;
  v2 = enum case for SERXPCInternalErrors.internalError(_:);
  v3 = type metadata accessor for SERXPCInternalErrors();
  (*(*(v3 - 8) + 104))(v1, v2, v3);
  v4 = *(v0 + 16);
  v5 = enum case for SERXPCResponse.error(_:);
  v6 = type metadata accessor for SERXPCResponse();
  (*(*(v6 - 8) + 104))(v4, v5, v6);
  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1002C2DCC(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_1002C2DEC, 0, 0);
}

uint64_t sub_1002C2DEC()
{
  v1 = qword_100508D40;
  if (!qword_100508D40)
  {
    type metadata accessor for SERPersistenceController(0);
    swift_allocObject();
    sub_100284074();
    v1 = v2;
    qword_100508D40 = v2;
  }

  *(v0 + 32) = 0;
  *(v0 + 40) = v1;

  return _swift_task_switch(sub_1002C2FA0, v1, 0);
}

uint64_t sub_1002C2FA0()
{
  v1 = v0[5];
  v2 = *(v1 + 112);
  if (v2)
  {
    v4 = v0[3];
    v3 = v0[4];
    v5 = swift_task_alloc();
    v5[2] = v1;
    v5[3] = v4;
    v5[4] = v2;
    v6 = v2;
    NSManagedObjectContext.performAndWait<A>(_:)();
    v7 = v3;

    if (!v3)
    {
      v8 = sub_1002C312C;
      goto LABEL_6;
    }
  }

  else
  {
    v9 = objc_allocWithZone(NSError);
    v10 = String._bridgeToObjectiveC()();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
    v7 = [v9 initWithDomain:v10 code:21 userInfo:isa];

    swift_willThrow();
  }

  v0[6] = v7;
  v8 = sub_1002C31D0;
LABEL_6:

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_1002C312C()
{
  v1 = *(v0 + 16);
  v2 = enum case for SERXPCResponse.removeReservation(_:);
  v3 = type metadata accessor for SERXPCResponse();
  (*(*(v3 - 8) + 104))(v1, v2, v3);
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1002C31D0()
{
  v1 = *(v0 + 16);

  *v1 = 0xD000000000000042;
  v1[1] = 0x800000010046B5D0;
  v2 = enum case for SERXPCInternalErrors.internalError(_:);
  v3 = type metadata accessor for SERXPCInternalErrors();
  (*(*(v3 - 8) + 104))(v1, v2, v3);
  v4 = enum case for SERXPCResponse.error(_:);
  v5 = type metadata accessor for SERXPCResponse();
  (*(*(v5 - 8) + 104))(v1, v4, v5);
  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1002C3300()
{
  v1 = qword_100508D40;
  if (!qword_100508D40)
  {
    type metadata accessor for SERPersistenceController(0);
    swift_allocObject();
    sub_100284074();
    v1 = v2;
    qword_100508D40 = v2;
  }

  *(v0 + 32) = 0;
  *(v0 + 40) = v1;

  return _swift_task_switch(sub_1002C34B8, v1, 0);
}

uint64_t sub_1002C34B8()
{
  v1 = *(v0[5] + 112);
  if (!v1)
  {
    v4 = objc_allocWithZone(NSError);
    v5 = String._bridgeToObjectiveC()();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
    v7 = [v4 initWithDomain:v5 code:21 userInfo:isa];

    swift_willThrow();

    goto LABEL_5;
  }

  v2 = v0[4];
  *(swift_task_alloc() + 16) = v1;
  v3 = v1;
  sub_100068FC4(&qword_100508E98, &qword_100413B18);
  NSManagedObjectContext.performAndWait<A>(_:)();
  v0[6] = v2;
  if (v2)
  {

LABEL_5:
    v8 = sub_1002C3980;
    goto LABEL_7;
  }

  v0[7] = v0[2];
  v8 = sub_1002C3678;
LABEL_7:

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_1002C3678()
{
  v25 = v0;
  v1 = v0[7];
  if (v1 >> 62)
  {
    goto LABEL_20;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v2)
  {
    while (1)
    {
      result = specialized ContiguousArray.reserveCapacity(_:)();
      if (v2 < 0)
      {
        break;
      }

      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      v5 = v0[6];
      v6 = v0[7];
      v7 = v1 & 0xC000000000000001;
      if ((v1 & 0xC000000000000001) != 0)
      {
        v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
LABEL_25:
          __break(1u);
          break;
        }

        v8 = *(v6 + 32);
      }

      v9 = v8;
      v24[0] = v8;
      sub_1002D3DB4(v24, v0 + 2, &v23);
      if (v5)
      {

        v10 = v0[3];
        *v10 = 0xD00000000000003DLL;
        v10[1] = 0x800000010046B620;
        v11 = enum case for SERXPCInternalErrors.internalError(_:);
        v12 = type metadata accessor for SERXPCInternalErrors();
        (*(*(v12 - 8) + 104))(v10, v11, v12);
        v13 = &enum case for SERXPCResponse.error(_:);
        goto LABEL_22;
      }

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v1 = _swiftEmptyArrayStorage[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      result = specialized ContiguousArray._endMutation()();
      if (v2 != 1)
      {
        v14 = (v6 + 40);
        v15 = 1;
        while (1)
        {
          v16 = v15 + 1;
          if (__OFADD__(v15, 1))
          {
            break;
          }

          if (v7)
          {
            v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v15 >= *(v4 + 16))
            {
              goto LABEL_25;
            }

            v17 = *v14;
          }

          v18 = v17;
          v24[0] = v17;
          sub_1002D3DB4(v24, v0 + 2, &v23);

          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          v1 = _swiftEmptyArrayStorage[2];
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          result = specialized ContiguousArray._endMutation()();
          ++v15;
          ++v14;
          if (v16 == v2)
          {
            goto LABEL_21;
          }
        }

        __break(1u);
LABEL_20:
        v2 = _CocoaArrayWrapper.endIndex.getter();
        if (v2)
        {
          continue;
        }
      }

      goto LABEL_21;
    }

    __break(1u);
  }

  else
  {
LABEL_21:

    *v0[3] = _swiftEmptyArrayStorage;
    v13 = &enum case for SERXPCResponse.reservations(_:);
LABEL_22:
    v19 = v0[3];
    v20 = *v13;
    v21 = type metadata accessor for SERXPCResponse();
    (*(*(v21 - 8) + 104))(v19, v20, v21);
    v22 = v0[1];

    return v22();
  }

  return result;
}

uint64_t sub_1002C3980()
{
  v1 = *(v0 + 24);
  *v1 = 0xD00000000000003DLL;
  v1[1] = 0x800000010046B620;
  v2 = enum case for SERXPCInternalErrors.internalError(_:);
  v3 = type metadata accessor for SERXPCInternalErrors();
  (*(*(v3 - 8) + 104))(v1, v2, v3);
  v4 = *(v0 + 24);
  v5 = enum case for SERXPCResponse.error(_:);
  v6 = type metadata accessor for SERXPCResponse();
  (*(*(v6 - 8) + 104))(v4, v5, v6);
  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1002C3AAC()
{
  v1 = qword_100508D40;
  if (!qword_100508D40)
  {
    type metadata accessor for SERPersistenceController(0);
    swift_allocObject();
    sub_100284074();
    v1 = v2;
    qword_100508D40 = v2;
  }

  *(v0 + 24) = 0;
  *(v0 + 32) = v1;

  return _swift_task_switch(sub_1002C3C60, v1, 0);
}

uint64_t sub_1002C3C60()
{
  v1 = v0[4];
  v2 = *(v1 + 112);
  if (v2)
  {
    v3 = v0[3];
    v4 = swift_task_alloc();
    *(v4 + 16) = v1;
    *(v4 + 24) = v2;
    v5 = v2;
    NSManagedObjectContext.performAndWait<A>(_:)();
    v6 = v3;

    if (!v3)
    {
      v7 = sub_1002C3DE8;
      goto LABEL_6;
    }
  }

  else
  {
    v8 = objc_allocWithZone(NSError);
    v9 = String._bridgeToObjectiveC()();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
    v6 = [v8 initWithDomain:v9 code:21 userInfo:isa];

    swift_willThrow();
  }

  v0[5] = v6;
  v7 = sub_1002C3E8C;
LABEL_6:

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1002C3DE8()
{
  v1 = *(v0 + 16);
  v2 = enum case for SERXPCResponse.clearReservations(_:);
  v3 = type metadata accessor for SERXPCResponse();
  (*(*(v3 - 8) + 104))(v1, v2, v3);
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1002C3E8C()
{
  v1 = *(v0 + 16);

  *v1 = 0xD000000000000042;
  v1[1] = 0x800000010046B660;
  v2 = enum case for SERXPCInternalErrors.internalError(_:);
  v3 = type metadata accessor for SERXPCInternalErrors();
  (*(*(v3 - 8) + 104))(v1, v2, v3);
  v4 = enum case for SERXPCResponse.error(_:);
  v5 = type metadata accessor for SERXPCResponse();
  (*(*(v5 - 8) + 104))(v1, v4, v5);
  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1002C3F9C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = *v2;
  v4 = type metadata accessor for SERXPCInternalErrors();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();
  v5 = type metadata accessor for SESnapshot.TargetDevice();
  v3[10] = v5;
  v3[11] = *(v5 - 8);
  v3[12] = swift_task_alloc();

  return _swift_task_switch(sub_1002C40F0, 0, 0);
}

uint64_t sub_1002C40F0()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  (*(v2 + 16))(v1, v0[3], v3);
  v4 = (*(v2 + 88))(v1, v3);
  if (v4 == enum case for SESnapshot.TargetDevice.currentDevice(_:))
  {
    v5 = swift_task_alloc();
    v0[13] = v5;
    *v5 = v0;
    v5[1] = sub_1002C43EC;
    v6 = v0[4];

    return sub_1002CCE4C(v5, &unk_1004148A0, v6);
  }

  else if (v4 == enum case for SESnapshot.TargetDevice.pairedWatch(_:))
  {
    v8 = swift_task_alloc();
    v0[21] = v8;
    *v8 = v0;
    v8[1] = sub_1002C4958;

    return sub_1002CEF54();
  }

  else
  {
    v10 = v0[11];
    v9 = v0[12];
    v11 = v0[10];
    v12 = v0[6];
    v13 = v0[7];
    v14 = v0[2];
    _StringGuts.grow(_:)(35);

    v15._countAndFlagsBits = SESnapshot.TargetDevice.rawValue.getter();
    String.append(_:)(v15);

    *v14 = 0xD000000000000021;
    v14[1] = 0x800000010046B6B0;
    (*(v13 + 104))(v14, enum case for SERXPCInternalErrors.resourceUnavailable(_:), v12);
    v16 = enum case for SERXPCResponse.error(_:);
    v17 = type metadata accessor for SERXPCResponse();
    (*(*(v17 - 8) + 104))(v14, v16, v17);
    (*(v10 + 8))(v9, v11);

    v18 = v0[1];

    return v18();
  }
}

uint64_t sub_1002C43EC()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_1002C4DAC;
  }

  else
  {
    v2 = sub_1002C4500;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1002C4500()
{
  v1 = swift_task_alloc();
  *(v0 + 120) = v1;
  *v1 = v0;
  v1[1] = sub_1002C4590;

  return sub_1002CDC84();
}

uint64_t sub_1002C4590()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_1002C5048;
  }

  else
  {
    v2 = sub_1002C46A4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1002C46A4()
{
  v1 = v0[5];
  v2 = swift_task_alloc();
  v0[17] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[18] = v3;
  *v3 = v0;
  v3[1] = sub_1002C4760;

  return sub_1002CD24C(&unk_1004148C0, v2);
}

uint64_t sub_1002C4760(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 152) = v1;

  if (v1)
  {
    v5 = sub_1002C52E4;
  }

  else
  {
    *(v4 + 160) = a1;

    v5 = sub_1002C4890;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1002C4890()
{
  v1 = v0[2];
  *v1 = v0[20];
  v2 = enum case for SERXPCResponse.reclaimUnusedSEMemory(_:);
  v3 = type metadata accessor for SERXPCResponse();
  (*(*(v3 - 8) + 104))(v1, v2, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1002C4958(uint64_t a1)
{
  v3 = *v2;
  *(*v2 + 176) = a1;

  if (v1)
  {
    (*(v3[7] + 8))(v3[9], v3[6]);
    v4 = sub_1002C5588;
  }

  else
  {
    v4 = sub_1002C4A84;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1002C4A84()
{
  v1 = v0[22];
  if (v1)
  {
    v2 = v0[2];
    *v2 = v1;
    v3 = enum case for SERXPCResponse.reclaimUnusedSEMemory(_:);
    v4 = type metadata accessor for SERXPCResponse();
    (*(*(v4 - 8) + 104))(v2, v3, v4);

    v5 = v0[1];

    return v5();
  }

  else
  {
    v7 = swift_task_alloc();
    v0[23] = v7;
    *v7 = v0;
    v7[1] = sub_1002C4BC0;
    v8 = v0[8];

    return sub_1002CA910(v8);
  }
}

uint64_t sub_1002C4BC0(uint64_t a1)
{
  v4 = *v2;

  if (v1)
  {
    v5 = sub_1002C5620;
  }

  else
  {
    *(v4 + 192) = a1;
    v5 = sub_1002C4CE4;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1002C4CE4()
{
  v1 = v0[2];
  *v1 = v0[24];
  v2 = enum case for SERXPCResponse.reclaimUnusedSEMemory(_:);
  v3 = type metadata accessor for SERXPCResponse();
  (*(*(v3 - 8) + 104))(v1, v2, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1002C4DAC(uint64_t a1, uint64_t a2)
{
  v16 = v2;
  if (qword_100501C78 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_1000958E4(v3, qword_100509A58);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v15 = v8;
    *v6 = 136315650;
    *(v6 + 4) = sub_1002FFA0C(0xD000000000000024, 0x800000010046B6E0, &v15);
    *(v6 + 12) = 2048;
    *(v6 + 14) = 232;
    *(v6 + 22) = 2112;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 24) = v9;
    *v7 = v9;
    _os_log_impl(&_mh_execute_header, v4, v5, "%s:%ld - %@", v6, 0x20u);
    sub_100075768(v7, &unk_100503F70, &unk_10040B2E0);

    sub_1000752F4(v8);
  }

  else
  {
  }

  v10 = v2[2];
  (*(v2[7] + 104))(v10, enum case for SERXPCInternalErrors.unknownError(_:), v2[6]);
  v11 = enum case for SERXPCResponse.error(_:);
  v12 = type metadata accessor for SERXPCResponse();
  (*(*(v12 - 8) + 104))(v10, v11, v12);

  v13 = v2[1];

  return v13();
}

uint64_t sub_1002C5048(uint64_t a1, uint64_t a2)
{
  v16 = v2;
  if (qword_100501C78 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_1000958E4(v3, qword_100509A58);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v15 = v8;
    *v6 = 136315650;
    *(v6 + 4) = sub_1002FFA0C(0xD000000000000024, 0x800000010046B6E0, &v15);
    *(v6 + 12) = 2048;
    *(v6 + 14) = 232;
    *(v6 + 22) = 2112;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 24) = v9;
    *v7 = v9;
    _os_log_impl(&_mh_execute_header, v4, v5, "%s:%ld - %@", v6, 0x20u);
    sub_100075768(v7, &unk_100503F70, &unk_10040B2E0);

    sub_1000752F4(v8);
  }

  else
  {
  }

  v10 = v2[2];
  (*(v2[7] + 104))(v10, enum case for SERXPCInternalErrors.unknownError(_:), v2[6]);
  v11 = enum case for SERXPCResponse.error(_:);
  v12 = type metadata accessor for SERXPCResponse();
  (*(*(v12 - 8) + 104))(v10, v11, v12);

  v13 = v2[1];

  return v13();
}

uint64_t sub_1002C52E4()
{
  v14 = v0;

  if (qword_100501C78 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000958E4(v1, qword_100509A58);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v13 = v6;
    *v4 = 136315650;
    *(v4 + 4) = sub_1002FFA0C(0xD000000000000024, 0x800000010046B6E0, &v13);
    *(v4 + 12) = 2048;
    *(v4 + 14) = 232;
    *(v4 + 22) = 2112;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 24) = v7;
    *v5 = v7;
    _os_log_impl(&_mh_execute_header, v2, v3, "%s:%ld - %@", v4, 0x20u);
    sub_100075768(v5, &unk_100503F70, &unk_10040B2E0);

    sub_1000752F4(v6);
  }

  else
  {
  }

  v8 = v0[2];
  (*(v0[7] + 104))(v8, enum case for SERXPCInternalErrors.unknownError(_:), v0[6]);
  v9 = enum case for SERXPCResponse.error(_:);
  v10 = type metadata accessor for SERXPCResponse();
  (*(*(v10 - 8) + 104))(v8, v9, v10);

  v11 = v0[1];

  return v11();
}

uint64_t sub_1002C5588()
{
  v1 = swift_task_alloc();
  *(v0 + 184) = v1;
  *v1 = v0;
  v1[1] = sub_1002C4BC0;
  v2 = *(v0 + 64);

  return sub_1002CA910(v2);
}

uint64_t sub_1002C5620()
{
  v18 = v0;
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];
  sub_1002D9BE4(&qword_100507080, &type metadata accessor for SERXPCInternalErrors, &protocol conformance descriptor for SERXPCInternalErrors);
  swift_allocError();
  (*(v2 + 32))(v4, v1, v3);
  if (qword_100501C78 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_1000958E4(v5, qword_100509A58);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v17 = v10;
    *v8 = 136315650;
    *(v8 + 4) = sub_1002FFA0C(0xD000000000000024, 0x800000010046B6E0, &v17);
    *(v8 + 12) = 2048;
    *(v8 + 14) = 232;
    *(v8 + 22) = 2112;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 24) = v11;
    *v9 = v11;
    _os_log_impl(&_mh_execute_header, v6, v7, "%s:%ld - %@", v8, 0x20u);
    sub_100075768(v9, &unk_100503F70, &unk_10040B2E0);

    sub_1000752F4(v10);
  }

  else
  {
  }

  v12 = v0[2];
  (*(v0[7] + 104))(v12, enum case for SERXPCInternalErrors.unknownError(_:), v0[6]);
  v13 = enum case for SERXPCResponse.error(_:);
  v14 = type metadata accessor for SERXPCResponse();
  (*(*(v14 - 8) + 104))(v12, v13, v14);

  v15 = v0[1];

  return v15();
}

uint64_t sub_1002C5928(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 32) = a6;
  *(v7 + 40) = v6;
  *(v7 + 232) = a3;
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  *(v7 + 48) = *v6;
  v8 = type metadata accessor for SERXPCInternalErrors();
  *(v7 + 56) = v8;
  *(v7 + 64) = *(v8 - 8);
  *(v7 + 72) = swift_task_alloc();
  *(v7 + 80) = swift_task_alloc();
  *(v7 + 88) = swift_task_alloc();
  v9 = type metadata accessor for SESnapshot.TargetDevice();
  *(v7 + 96) = v9;
  *(v7 + 104) = *(v9 - 8);
  *(v7 + 112) = swift_task_alloc();

  return _swift_task_switch(sub_1002C5A8C, 0, 0);
}

uint64_t sub_1002C5A8C()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];
  (*(v2 + 16))(v1, v0[4], v3);
  v4 = (*(v2 + 88))(v1, v3);
  if (v4 == enum case for SESnapshot.TargetDevice.currentDevice(_:))
  {
    v5 = v0[6];
    v6 = v0[3];
    v7 = swift_task_alloc();
    v0[15] = v7;
    *(v7 + 16) = v6;
    *(v7 + 24) = v5;
    v8 = swift_task_alloc();
    v0[16] = v8;
    *v8 = v0;
    v8[1] = sub_1002C5DB0;

    return sub_1002CD6C0(&unk_100414910, v7);
  }

  else if (v4 == enum case for SESnapshot.TargetDevice.pairedWatch(_:))
  {
    v10 = swift_task_alloc();
    v0[23] = v10;
    *v10 = v0;
    v10[1] = sub_1002C6434;
    v11 = v0[11];

    return sub_1002CA910(v11);
  }

  else
  {
    v13 = v0[13];
    v12 = v0[14];
    v14 = v0[12];
    v15 = v0[7];
    v16 = v0[8];
    v17 = v0[2];
    _StringGuts.grow(_:)(26);

    v18._countAndFlagsBits = SESnapshot.TargetDevice.rawValue.getter();
    String.append(_:)(v18);

    *v17 = 0xD000000000000018;
    v17[1] = 0x800000010046B7E0;
    (*(v16 + 104))(v17, enum case for SERXPCInternalErrors.resourceUnavailable(_:), v15);
    v19 = enum case for SERXPCResponse.error(_:);
    v20 = type metadata accessor for SERXPCResponse();
    (*(*(v20 - 8) + 104))(v17, v19, v20);
    (*(v13 + 8))(v12, v14);

    v21 = v0[1];

    return v21();
  }
}

uint64_t sub_1002C5DB0(char a1)
{
  v4 = *v2;
  *(*v2 + 136) = v1;

  if (v1)
  {
    v5 = sub_1002C6BB8;
  }

  else
  {
    *(v4 + 233) = a1 & 1;

    v5 = sub_1002C5EE4;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1002C5EE4()
{
  v1 = *(v0 + 232);
  if (v1 != 1 || (*(v0 + 233) & 1) != 0)
  {
    v4 = *(v0 + 16);
    *v4 = (v1 | *(v0 + 233)) & 1;
    v5 = enum case for SERXPCResponse.canFit(_:);
    v6 = type metadata accessor for SERXPCResponse();
    (*(*(v6 - 8) + 104))(v4, v5, v6);

    v7 = *(v0 + 8);

    return v7();
  }

  else
  {
    v2 = swift_task_alloc();
    *(v0 + 144) = v2;
    *v2 = v0;
    v2[1] = sub_1002C6044;

    return sub_1002CDC84();
  }
}

uint64_t sub_1002C6044()
{
  *(*v1 + 152) = v0;

  if (v0)
  {
    v2 = sub_1002C6E68;
  }

  else
  {
    v2 = sub_1002C6158;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1002C6158()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[3];
  v4 = swift_task_alloc();
  v0[20] = v4;
  v4[2] = v2;
  v4[3] = v3;
  v4[4] = v1;
  v5 = swift_task_alloc();
  v0[21] = v5;
  *v5 = v0;
  v5[1] = sub_1002C6224;

  return sub_1002CD6C0(&unk_100414928, v4);
}

uint64_t sub_1002C6224(char a1)
{
  v4 = *v2;
  *(*v2 + 176) = v1;

  if (v1)
  {
    v5 = sub_1002C7110;
  }

  else
  {
    *(v4 + 234) = a1 & 1;

    v5 = sub_1002C6358;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1002C6358()
{
  v1 = *(v0 + 16);
  *v1 = *(v0 + 234);
  v2 = enum case for SERXPCResponse.canFit(_:);
  v3 = type metadata accessor for SERXPCResponse();
  (*(*(v3 - 8) + 104))(v1, v2, v3);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1002C6434(uint64_t a1)
{
  *(*v2 + 192) = a1;

  if (v1)
  {
    v3 = sub_1002C73C0;
  }

  else
  {
    v3 = sub_1002C6548;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1002C6548()
{
  v1 = *(v0 + 232);
  v2 = *(v0 + 192);
  v3 = SESnapshot.canFit(proposedUsage:)();

  if (v1 != 1 || (v3 & 1) != 0)
  {
    v6 = v1 | v3;
    v7 = *(v0 + 16);

    *v7 = v6 & 1;
    v8 = enum case for SERXPCResponse.canFit(_:);
    v9 = type metadata accessor for SERXPCResponse();
    (*(*(v9 - 8) + 104))(v7, v8, v9);

    v10 = *(v0 + 8);

    return v10();
  }

  else
  {
    v4 = swift_task_alloc();
    *(v0 + 200) = v4;
    *v4 = v0;
    v4[1] = sub_1002C66D8;

    return sub_1002CEF54();
  }
}

uint64_t sub_1002C66D8(uint64_t a1)
{
  v3 = *v2;
  *(*v2 + 208) = a1;

  if (v1)
  {
    (*(v3[8] + 8))(v3[10], v3[7]);
    v4 = sub_1002C76D4;
  }

  else
  {
    v4 = sub_1002C6804;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1002C6804()
{
  v1 = *(v0 + 208);
  if (v1)
  {

    v2 = v1;
    v3 = SESnapshot.canFit(proposedUsage:)();

    v4 = *(v0 + 16);
    *v4 = v3 & 1;
    v5 = enum case for SERXPCResponse.canFit(_:);
    v6 = type metadata accessor for SERXPCResponse();
    (*(*(v6 - 8) + 104))(v4, v5, v6);

    v7 = *(v0 + 8);

    return v7();
  }

  else
  {
    v9 = swift_task_alloc();
    *(v0 + 216) = v9;
    *v9 = v0;
    v9[1] = sub_1002C6988;
    v10 = *(v0 + 72);

    return sub_1002CA910(v10);
  }
}

uint64_t sub_1002C6988(uint64_t a1)
{
  v4 = *v2;

  if (v1)
  {
    v5 = sub_1002C776C;
  }

  else
  {
    *(v4 + 224) = a1;
    v5 = sub_1002C6AAC;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1002C6AAC()
{
  v1 = *(v0 + 224);
  v2 = SESnapshot.canFit(proposedUsage:)();

  v3 = *(v0 + 16);
  *v3 = v2 & 1;
  v4 = enum case for SERXPCResponse.canFit(_:);
  v5 = type metadata accessor for SERXPCResponse();
  (*(*(v5 - 8) + 104))(v3, v4, v5);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1002C6BB8()
{
  v14 = v0;

  if (qword_100501C78 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000958E4(v1, qword_100509A58);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v13 = v6;
    *v4 = 136315650;
    *(v4 + 4) = sub_1002FFA0C(0xD000000000000037, 0x800000010046B800, &v13);
    *(v4 + 12) = 2048;
    *(v4 + 14) = 330;
    *(v4 + 22) = 2112;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 24) = v7;
    *v5 = v7;
    _os_log_impl(&_mh_execute_header, v2, v3, "%s:%ld - %@", v4, 0x20u);
    sub_100075768(v5, &unk_100503F70, &unk_10040B2E0);

    sub_1000752F4(v6);
  }

  else
  {
  }

  v8 = v0[2];
  (*(v0[8] + 104))(v8, enum case for SERXPCInternalErrors.unknownError(_:), v0[7]);
  v9 = enum case for SERXPCResponse.error(_:);
  v10 = type metadata accessor for SERXPCResponse();
  (*(*(v10 - 8) + 104))(v8, v9, v10);

  v11 = v0[1];

  return v11();
}

uint64_t sub_1002C6E68(uint64_t a1, uint64_t a2)
{
  v16 = v2;
  if (qword_100501C78 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_1000958E4(v3, qword_100509A58);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v15 = v8;
    *v6 = 136315650;
    *(v6 + 4) = sub_1002FFA0C(0xD000000000000037, 0x800000010046B800, &v15);
    *(v6 + 12) = 2048;
    *(v6 + 14) = 330;
    *(v6 + 22) = 2112;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 24) = v9;
    *v7 = v9;
    _os_log_impl(&_mh_execute_header, v4, v5, "%s:%ld - %@", v6, 0x20u);
    sub_100075768(v7, &unk_100503F70, &unk_10040B2E0);

    sub_1000752F4(v8);
  }

  else
  {
  }

  v10 = v2[2];
  (*(v2[8] + 104))(v10, enum case for SERXPCInternalErrors.unknownError(_:), v2[7]);
  v11 = enum case for SERXPCResponse.error(_:);
  v12 = type metadata accessor for SERXPCResponse();
  (*(*(v12 - 8) + 104))(v10, v11, v12);

  v13 = v2[1];

  return v13();
}

uint64_t sub_1002C7110()
{
  v14 = v0;

  if (qword_100501C78 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000958E4(v1, qword_100509A58);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v13 = v6;
    *v4 = 136315650;
    *(v4 + 4) = sub_1002FFA0C(0xD000000000000037, 0x800000010046B800, &v13);
    *(v4 + 12) = 2048;
    *(v4 + 14) = 330;
    *(v4 + 22) = 2112;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 24) = v7;
    *v5 = v7;
    _os_log_impl(&_mh_execute_header, v2, v3, "%s:%ld - %@", v4, 0x20u);
    sub_100075768(v5, &unk_100503F70, &unk_10040B2E0);

    sub_1000752F4(v6);
  }

  else
  {
  }

  v8 = v0[2];
  (*(v0[8] + 104))(v8, enum case for SERXPCInternalErrors.unknownError(_:), v0[7]);
  v9 = enum case for SERXPCResponse.error(_:);
  v10 = type metadata accessor for SERXPCResponse();
  (*(*(v10 - 8) + 104))(v8, v9, v10);

  v11 = v0[1];

  return v11();
}

uint64_t sub_1002C73C0()
{
  v18 = v0;
  v1 = v0[11];
  v2 = v0[7];
  v3 = v0[8];
  sub_1002D9BE4(&qword_100507080, &type metadata accessor for SERXPCInternalErrors, &protocol conformance descriptor for SERXPCInternalErrors);
  swift_allocError();
  (*(v3 + 32))(v4, v1, v2);
  if (qword_100501C78 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_1000958E4(v5, qword_100509A58);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v17 = v10;
    *v8 = 136315650;
    *(v8 + 4) = sub_1002FFA0C(0xD000000000000037, 0x800000010046B800, &v17);
    *(v8 + 12) = 2048;
    *(v8 + 14) = 330;
    *(v8 + 22) = 2112;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 24) = v11;
    *v9 = v11;
    _os_log_impl(&_mh_execute_header, v6, v7, "%s:%ld - %@", v8, 0x20u);
    sub_100075768(v9, &unk_100503F70, &unk_10040B2E0);

    sub_1000752F4(v10);
  }

  else
  {
  }

  v12 = v0[2];
  (*(v0[8] + 104))(v12, enum case for SERXPCInternalErrors.unknownError(_:), v0[7]);
  v13 = enum case for SERXPCResponse.error(_:);
  v14 = type metadata accessor for SERXPCResponse();
  (*(*(v14 - 8) + 104))(v12, v13, v14);

  v15 = v0[1];

  return v15();
}

uint64_t sub_1002C76D4()
{
  v1 = swift_task_alloc();
  *(v0 + 216) = v1;
  *v1 = v0;
  v1[1] = sub_1002C6988;
  v2 = *(v0 + 72);

  return sub_1002CA910(v2);
}

uint64_t sub_1002C776C()
{
  v19 = v0;
  v1 = v0[24];
  v3 = v0[8];
  v2 = v0[9];
  v4 = v0[7];
  sub_1002D9BE4(&qword_100507080, &type metadata accessor for SERXPCInternalErrors, &protocol conformance descriptor for SERXPCInternalErrors);
  swift_allocError();
  (*(v3 + 32))(v5, v2, v4);

  if (qword_100501C78 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_1000958E4(v6, qword_100509A58);
  swift_errorRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v18 = v11;
    *v9 = 136315650;
    *(v9 + 4) = sub_1002FFA0C(0xD000000000000037, 0x800000010046B800, &v18);
    *(v9 + 12) = 2048;
    *(v9 + 14) = 330;
    *(v9 + 22) = 2112;
    swift_errorRetain();
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 24) = v12;
    *v10 = v12;
    _os_log_impl(&_mh_execute_header, v7, v8, "%s:%ld - %@", v9, 0x20u);
    sub_100075768(v10, &unk_100503F70, &unk_10040B2E0);

    sub_1000752F4(v11);
  }

  else
  {
  }

  v13 = v0[2];
  (*(v0[8] + 104))(v13, enum case for SERXPCInternalErrors.unknownError(_:), v0[7]);
  v14 = enum case for SERXPCResponse.error(_:);
  v15 = type metadata accessor for SERXPCResponse();
  (*(*(v15 - 8) + 104))(v13, v14, v15);

  v16 = v0[1];

  return v16();
}

uint64_t sub_1002C7A88(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 24) = a2;
  *(v4 + 32) = v3;
  *(v4 + 112) = a3;
  *(v4 + 16) = a1;
  *(v4 + 40) = *v3;
  return _swift_task_switch(sub_1002C7AD8, 0, 0);
}

uint64_t sub_1002C7AD8()
{
  v1 = v0[5];
  v2 = v0[3];
  v3 = swift_task_alloc();
  v0[6] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = swift_task_alloc();
  v0[7] = v4;
  *v4 = v0;
  v4[1] = sub_1002C7BA0;

  return sub_1002CD6C0(&unk_100414938, v3);
}

uint64_t sub_1002C7BA0(char a1)
{
  v4 = *v2;
  *(*v2 + 64) = v1;

  if (v1)
  {
    v5 = sub_1002C81BC;
  }

  else
  {
    *(v4 + 113) = a1 & 1;

    v5 = sub_1002C7CD4;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1002C7CD4()
{
  v1 = *(v0 + 112);
  if (v1 != 1 || (*(v0 + 113) & 1) != 0)
  {
    v4 = *(v0 + 16);
    *v4 = (v1 | *(v0 + 113)) & 1;
    v5 = enum case for SERXPCResponse.canFit(_:);
    v6 = type metadata accessor for SERXPCResponse();
    (*(*(v6 - 8) + 104))(v4, v5, v6);
    v7 = *(v0 + 8);

    return v7();
  }

  else
  {
    v2 = swift_task_alloc();
    *(v0 + 72) = v2;
    *v2 = v0;
    v2[1] = sub_1002C7E00;

    return sub_1002CDC84();
  }
}

uint64_t sub_1002C7E00()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_1002C8468;
  }

  else
  {
    v2 = sub_1002C7F14;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1002C7F14()
{
  v1 = *(v0 + 40);
  v2 = swift_task_alloc();
  *(v0 + 88) = v2;
  v2[1] = vextq_s8(*(v0 + 24), *(v0 + 24), 8uLL);
  v2[2].i64[0] = v1;
  v3 = swift_task_alloc();
  *(v0 + 96) = v3;
  *v3 = v0;
  v3[1] = sub_1002C7FDC;

  return sub_1002CD6C0(&unk_100414948, v2);
}

uint64_t sub_1002C7FDC(char a1)
{
  v4 = *v2;
  *(*v2 + 104) = v1;

  if (v1)
  {
    v5 = sub_1002C870C;
  }

  else
  {
    *(v4 + 114) = a1 & 1;

    v5 = sub_1002C8110;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1002C8110()
{
  v1 = *(v0 + 16);
  *v1 = *(v0 + 114);
  v2 = enum case for SERXPCResponse.canFit(_:);
  v3 = type metadata accessor for SERXPCResponse();
  (*(*(v3 - 8) + 104))(v1, v2, v3);
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1002C81BC()
{
  v16 = v0;

  if (qword_100501C78 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000958E4(v1, qword_100509A58);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v15 = v6;
    *v4 = 136315650;
    *(v4 + 4) = sub_1002FFA0C(0xD00000000000003BLL, 0x800000010046B840, &v15);
    *(v4 + 12) = 2048;
    *(v4 + 14) = 360;
    *(v4 + 22) = 2112;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 24) = v7;
    *v5 = v7;
    _os_log_impl(&_mh_execute_header, v2, v3, "%s:%ld - %@", v4, 0x20u);
    sub_100075768(v5, &unk_100503F70, &unk_10040B2E0);

    sub_1000752F4(v6);
  }

  else
  {
  }

  v8 = *(v0 + 16);
  v9 = enum case for SERXPCInternalErrors.unknownError(_:);
  v10 = type metadata accessor for SERXPCInternalErrors();
  (*(*(v10 - 8) + 104))(v8, v9, v10);
  v11 = enum case for SERXPCResponse.error(_:);
  v12 = type metadata accessor for SERXPCResponse();
  (*(*(v12 - 8) + 104))(v8, v11, v12);
  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_1002C8468(uint64_t a1, uint64_t a2)
{
  v18 = v2;
  if (qword_100501C78 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_1000958E4(v3, qword_100509A58);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v17 = v8;
    *v6 = 136315650;
    *(v6 + 4) = sub_1002FFA0C(0xD00000000000003BLL, 0x800000010046B840, &v17);
    *(v6 + 12) = 2048;
    *(v6 + 14) = 360;
    *(v6 + 22) = 2112;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 24) = v9;
    *v7 = v9;
    _os_log_impl(&_mh_execute_header, v4, v5, "%s:%ld - %@", v6, 0x20u);
    sub_100075768(v7, &unk_100503F70, &unk_10040B2E0);

    sub_1000752F4(v8);
  }

  else
  {
  }

  v10 = *(v2 + 16);
  v11 = enum case for SERXPCInternalErrors.unknownError(_:);
  v12 = type metadata accessor for SERXPCInternalErrors();
  (*(*(v12 - 8) + 104))(v10, v11, v12);
  v13 = enum case for SERXPCResponse.error(_:);
  v14 = type metadata accessor for SERXPCResponse();
  (*(*(v14 - 8) + 104))(v10, v13, v14);
  v15 = *(v2 + 8);

  return v15();
}

uint64_t sub_1002C870C()
{
  v16 = v0;

  if (qword_100501C78 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000958E4(v1, qword_100509A58);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v15 = v6;
    *v4 = 136315650;
    *(v4 + 4) = sub_1002FFA0C(0xD00000000000003BLL, 0x800000010046B840, &v15);
    *(v4 + 12) = 2048;
    *(v4 + 14) = 360;
    *(v4 + 22) = 2112;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 24) = v7;
    *v5 = v7;
    _os_log_impl(&_mh_execute_header, v2, v3, "%s:%ld - %@", v4, 0x20u);
    sub_100075768(v5, &unk_100503F70, &unk_10040B2E0);

    sub_1000752F4(v6);
  }

  else
  {
  }

  v8 = *(v0 + 16);
  v9 = enum case for SERXPCInternalErrors.unknownError(_:);
  v10 = type metadata accessor for SERXPCInternalErrors();
  (*(*(v10 - 8) + 104))(v8, v9, v10);
  v11 = enum case for SERXPCResponse.error(_:);
  v12 = type metadata accessor for SERXPCResponse();
  (*(*(v12 - 8) + 104))(v8, v11, v12);
  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_1002C89B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[28] = a2;
  v3[29] = a3;
  v3[27] = a1;
  return _swift_task_switch(sub_1002C89DC, 0, 0);
}

uint64_t sub_1002C89DC()
{
  if (v0[28] >> 60 == 15)
  {
    isa = 0;
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
  }

  v0[30] = isa;
  v2 = objc_opt_self();
  v3 = String._bridgeToObjectiveC()();
  v0[31] = v3;
  v0[2] = v0;
  v0[7] = v0 + 24;
  v0[3] = sub_1002C8B5C;
  v4 = swift_continuation_init();
  v0[17] = sub_100068FC4(&qword_100503460, &qword_10040B560);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_1001861F4;
  v0[13] = &unk_1004CF4B0;
  v0[14] = v4;
  sub_100055378(v2, 0, isa, v3, v0 + 10);

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1002C8B5C()
{
  v1 = *(*v0 + 48);
  *(*v0 + 256) = v1;
  if (v1)
  {
    v2 = sub_1002C8CDC;
  }

  else
  {
    v2 = sub_1002C8C6C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1002C8C6C()
{
  v1 = *(v0 + 240);
  v2 = *(v0 + 192);

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_1002C8CDC(uint64_t a1)
{
  v21 = v1;
  v2 = v1[31];
  v3 = v1[30];
  swift_willThrow();

  if (qword_100501C78 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000958E4(v4, qword_100509A58);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v19 = v8;
    *v7 = 136315138;
    swift_getErrorValue();
    v9 = Error.localizedDescription.getter();
    v11 = sub_1002FFA0C(v9, v10, &v19);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v5, v6, "Failed to get SE with reason: %s", v7, 0xCu);
    sub_1000752F4(v8);
  }

  v12 = v1[29];
  v19 = 0;
  v20 = 0xE000000000000000;
  _StringGuts.grow(_:)(32);

  v19 = 0xD00000000000001ELL;
  v20 = 0x800000010046B430;
  swift_getErrorValue();
  v13._countAndFlagsBits = Error.localizedDescription.getter();
  String.append(_:)(v13);

  v14 = v20;
  *v12 = v19;
  v12[1] = v14;
  v15 = enum case for SERXPCInternalErrors.resourceUnavailable(_:);
  v16 = type metadata accessor for SERXPCInternalErrors();
  (*(*(v16 - 8) + 104))(v12, v15, v16);
  sub_1002D9BE4(&qword_100507080, &type metadata accessor for SERXPCInternalErrors, &protocol conformance descriptor for SERXPCInternalErrors);
  swift_willThrowTypedImpl();

  v17 = v1[1];

  return v17();
}

uint64_t sub_1002C8FAC(uint64_t a1, uint64_t a2)
{
  v3[8] = v2;
  v3[9] = a2;
  v3[7] = a1;
  v4 = type metadata accessor for SERXPCInternalErrors();
  v3[10] = v4;
  v3[11] = *(v4 - 8);
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v5 = type metadata accessor for SECMemoryInfo();
  v3[14] = v5;
  v3[15] = *(v5 - 8);
  v3[16] = swift_task_alloc();
  v6 = type metadata accessor for SECCredentialInfo();
  v3[17] = v6;
  v3[18] = *(v6 - 8);
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();
  v7 = type metadata accessor for SECMetadata();
  v3[21] = v7;
  v3[22] = *(v7 - 8);
  v3[23] = swift_task_alloc();
  v8 = type metadata accessor for UUID();
  v3[24] = v8;
  v3[25] = *(v8 - 8);
  v3[26] = swift_task_alloc();
  v9 = type metadata accessor for SECCredentialConfig();
  v3[27] = v9;
  v3[28] = *(v9 - 8);
  v3[29] = swift_task_alloc();

  return _swift_task_switch(sub_1002C9254, 0, 0);
}

uint64_t sub_1002C9254()
{
  if (qword_100501DC8 != -1)
  {
    swift_once();
  }

  v1 = qword_10051B858;
  *(v0 + 240) = qword_10051B858;

  return _swift_task_switch(sub_1002C92EC, v1, 0);
}

uint64_t sub_1002C92EC()
{
  *(v0 + 248) = sub_100094934();
  *(v0 + 256) = 0;

  return _swift_task_switch(sub_1002C9380, 0, 0);
}

uint64_t sub_1002C9380(uint64_t a1, uint64_t a2)
{
  v119 = v2;
  if (qword_100501C78 != -1)
  {
    goto LABEL_55;
  }

  while (1)
  {
    v3 = v2;
    v2 = *(v2 + 248);
    v4 = type metadata accessor for Logger();
    sub_1000958E4(v4, qword_100509A58);

    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.debug.getter();

    v116 = v3;
    if (os_log_type_enabled(v5, v6))
    {
      v7 = v3[31];
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v10 = v9;
      v117 = v9;
      *v8 = 136315138;
      v11 = *(v7 + 16);
      if (v11)
      {
        v100 = v9;
        v101 = v8;
        v104 = v6;
        v106 = v5;
        v12 = v3[31];
        v13 = v3[28];
        v14 = v3[25];
        v118 = _swiftEmptyArrayStorage;
        sub_10019F3C0(0, v11, 0);
        v15 = v118;
        v16 = *(v13 + 16);
        v13 += 16;
        v17 = v12 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
        v112 = *(v13 + 56);
        v114 = v16;
        v110 = (v14 + 8);
        v108 = (v13 - 8);
        do
        {
          v18 = v116[29];
          v20 = v116[26];
          v19 = v116[27];
          v21 = v116[24];
          v114(v18, v17, v19);
          SECCredentialConfig.configUUID.getter();
          v22 = UUID.uuidString.getter();
          v24 = v23;
          (*v110)(v20, v21);
          (*v108)(v18, v19);
          v118 = v15;
          v26 = v15[2];
          v25 = v15[3];
          if (v26 >= v25 >> 1)
          {
            sub_10019F3C0((v25 > 1), v26 + 1, 1);
            v15 = v118;
          }

          v15[2] = v26 + 1;
          v27 = &v15[2 * v26];
          v27[4] = v22;
          v27[5] = v24;
          v17 += v112;
          --v11;
        }

        while (v11);
        v5 = v106;
        v6 = v104;
        v10 = v100;
        v8 = v101;
      }

      v28 = Array.description.getter();
      v2 = v29;

      v30 = sub_1002FFA0C(v28, v2, &v117);

      *(v8 + 4) = v30;
      _os_log_impl(&_mh_execute_header, v5, v6, "Credential Configs on device %s", v8, 0xCu);
      sub_1000752F4(v10);
    }

    v31 = v116[31];
    v32 = *(v31 + 16);
    if (v32)
    {
      v33 = v116[28];
      v34 = v116[25];
      v118 = _swiftEmptyArrayStorage;
      sub_10019F3C0(0, v32, 0);
      v35 = v118;
      v36 = *(v33 + 16);
      v33 += 16;
      v37 = v31 + ((*(v33 + 64) + 32) & ~*(v33 + 64));
      v113 = *(v33 + 56);
      v115 = v36;
      v107 = (v34 + 8);
      v111 = (v33 - 8);
      v38 = v37;
      v105 = v32;
      v39 = v32;
      do
      {
        v40 = v116[29];
        v42 = v116[26];
        v41 = v116[27];
        v43 = v116[24];
        v115(v40, v38, v41);
        SECCredentialConfig.configUUID.getter();
        v44 = UUID.uuidString.getter();
        v46 = v45;
        (*v107)(v42, v43);
        v109 = *v111;
        (*v111)(v40, v41);
        v118 = v35;
        v48 = v35[2];
        v47 = v35[3];
        if (v48 >= v47 >> 1)
        {
          sub_10019F3C0((v47 > 1), v48 + 1, 1);
          v35 = v118;
        }

        v35[2] = v48 + 1;
        v49 = &v35[2 * v48];
        v49[4] = v44;
        v49[5] = v46;
        v38 += v113;
        --v39;
      }

      while (v39);
      v102 = v35;
      v50 = v116[22];
      v118 = _swiftEmptyArrayStorage;
      v51 = v105;
      sub_10019F7C8(0, v105, 0);
      v52 = v118;
      v53 = (v50 + 8);
      do
      {
        v54 = v116[29];
        v55 = v116[27];
        v56 = v116[23];
        v57 = v116[21];
        v115(v54, v37, v55);
        SECCredentialConfig.metadata.getter();
        v2 = SECMetadata.appletInstances.getter();
        (*v53)(v56, v57);
        v109(v54, v55);
        v118 = v52;
        v59 = v52[2];
        v58 = v52[3];
        if (v59 >= v58 >> 1)
        {
          sub_10019F7C8((v58 > 1), v59 + 1, 1);
          v52 = v118;
        }

        v52[2] = v59 + 1;
        v52[v59 + 4] = v2;
        v37 += v113;
        --v51;
      }

      while (v51);

      v60 = v102;
    }

    else
    {

      v52 = _swiftEmptyArrayStorage;
      v60 = _swiftEmptyArrayStorage;
    }

    v61 = v52[2];
    v62 = _swiftEmptyArrayStorage;
    v103 = v60;
    if (!v61)
    {
      break;
    }

    v63 = 0;
    while (v63 < v52[2])
    {
      v64 = v52[v63 + 4];
      v65 = *(v64 + 16);
      v66 = v62[2];
      v2 = v66 + v65;
      if (__OFADD__(v66, v65))
      {
        goto LABEL_51;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || v2 > v62[3] >> 1)
      {
        if (v66 <= v2)
        {
          v68 = v66 + v65;
        }

        else
        {
          v68 = v66;
        }

        v62 = sub_10012FAD0(isUniquelyReferenced_nonNull_native, v68, 1, v62);
      }

      v60 = v103;
      if (*(v64 + 16))
      {
        if ((v62[3] >> 1) - v62[2] < v65)
        {
          goto LABEL_53;
        }

        swift_arrayInitWithCopy();

        if (v65)
        {
          v69 = v62[2];
          v70 = __OFADD__(v69, v65);
          v71 = v69 + v65;
          if (v70)
          {
            goto LABEL_54;
          }

          v62[2] = v71;
        }
      }

      else
      {

        if (v65)
        {
          goto LABEL_52;
        }
      }

      if (v61 == ++v63)
      {
        goto LABEL_38;
      }
    }

    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    swift_once();
  }

LABEL_38:

  v72 = v62[2];
  if (v72)
  {
    v73 = v116[18];
    v74 = v116[15];
    v118 = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    type metadata accessor for SERCredentialInfo();
    type metadata accessor for MemoryUsage();
    v75 = *(v73 + 16);
    v73 += 16;
    v99 = v75;
    v76 = v62 + ((*(v73 + 64) + 32) & ~*(v73 + 64));
    v98 = *(v73 + 56);
    v97 = (v73 - 8);
    v77 = (v74 + 8);
    do
    {
      v79 = v116[19];
      v78 = v116[20];
      v80 = v116[16];
      v81 = v116[17];
      v82 = v116[14];
      v99(v78, v76, v81);
      v99(v79, v78, v81);
      SECCredentialInfo.modulesAIDs.getter();
      SECCredentialInfo.packageAid.getter();
      SECCredentialInfo.containerSize.getter();
      SECMemoryInfo.nvmSize.getter();
      SECMemoryInfo.corSize.getter();
      SECMemoryInfo.codSize.getter();
      dispatch thunk of MemoryUsage.__allocating_init(pHeap:cor:cod:usedIndices:)();
      v83 = *v77;
      (*v77)(v80, v82);
      SECCredentialInfo.requiredMemoryForCredential.getter();
      SECMemoryInfo.nvmSize.getter();
      SECMemoryInfo.corSize.getter();
      SECMemoryInfo.codSize.getter();
      dispatch thunk of MemoryUsage.__allocating_init(pHeap:cor:cod:usedIndices:)();
      v83(v80, v82);
      dispatch thunk of SERCredentialInfo.__allocating_init(moduleAIDs:packageAID:containerSize:requiredMemoryForCredential:)();
      v84 = *v97;
      (*v97)(v79, v81);
      v84(v78, v81);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v76 += v98;
      --v72;
    }

    while (v72);

    v85 = v118;
    v60 = v103;
  }

  else
  {

    v85 = _swiftEmptyArrayStorage;
  }

  v86 = v116[32];
  sub_1002D7F1C(v60, v85);

  v87 = objc_allocWithZone(type metadata accessor for SERDataSource());
  v88 = SERDataSource.init(credentialSizes:)();
  v116[33] = v88;
  if (v86)
  {
    v90 = v116[10];
    v89 = v116[11];
    v91 = v116[9];
    *v91 = 0xD000000000000031;
    v91[1] = 0x800000010046B230;
    (*(v89 + 104))(v91, enum case for SERXPCInternalErrors.resourceUnavailable(_:), v90);
    sub_1002D9BE4(&qword_100507080, &type metadata accessor for SERXPCInternalErrors, &protocol conformance descriptor for SERXPCInternalErrors);
    swift_willThrowTypedImpl();

    v92 = v116[1];

    return v92();
  }

  else
  {
    v94 = v88;
    v95 = swift_task_alloc();
    v116[34] = v95;
    *v95 = v116;
    v95[1] = sub_1002C9E28;
    v96 = v116[7];

    return sub_1002CADB8(v94, v96);
  }
}