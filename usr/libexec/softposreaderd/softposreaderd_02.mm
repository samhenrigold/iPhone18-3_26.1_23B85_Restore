uint64_t *sub_100034124(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = type metadata accessor for DefaultSecureTimeKeeper();
  v32 = &off_100384E70;
  v30[0] = a2;
  v28 = type metadata accessor for MPOCDefaultAttestationOfflineVerifier();
  v29 = &off_100380B00;
  v27[0] = a3;
  v25 = type metadata accessor for MPOCDefaultAttestationData();
  v26 = &off_100380B10;
  v24[0] = a4;
  type metadata accessor for MPOCDefaultAttestationManager();
  v8 = swift_allocObject();
  v9 = sub_100022438(v30, v31);
  __chkstk_darwin(v9);
  v11 = (&v24[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v12 + 16))(v11);
  v13 = sub_100022438(v27, v28);
  __chkstk_darwin(v13);
  v15 = (&v24[-1] - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v16 + 16))(v15);
  v17 = sub_100022438(v24, v25);
  __chkstk_darwin(v17);
  v19 = (&v24[-1] - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v20 + 16))(v19);
  v21 = sub_100033E28(a1, *v11, *v15, *v19, v8);
  sub_10000959C(v24);
  sub_10000959C(v27);
  sub_10000959C(v30);
  return v21;
}

uint64_t *sub_1000343C4(uint64_t a1)
{
  sub_1000E4518(v22);
  if (v1)
  {
  }

  else
  {
    sub_1000E4B7C(v21);
    sub_1000E51E0(v20);
    if (qword_10039D340 != -1)
    {
      swift_once();
    }

    memcpy(v23, &unk_1003A6940, 0x122uLL);
    v4 = sub_100022438(v22, v22[3]);
    v24 = v19;
    __chkstk_darwin(v4);
    v6 = &v19[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
    (*(v7 + 16))(v6);
    v8 = sub_100022438(v21, v21[3]);
    __chkstk_darwin(v8);
    v10 = &v19[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
    (*(v11 + 16))(v10);
    v12 = sub_100022438(v20, v20[3]);
    __chkstk_darwin(v12);
    v14 = &v19[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
    (*(v15 + 16))(v14);
    v16 = *v6;
    v17 = *v10;
    v18 = *v14;
    sub_100031B40(v23, v19);
    v2 = sub_100034124(v23, v16, v17, v18);

    sub_10000959C(v20);
    sub_10000959C(v21);
    sub_10000959C(v22);
  }

  return v2;
}

void *sub_100034704@<X0>(void *a1@<X8>)
{
  v2 = v1;
  if (qword_10039D348 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000403C(v4, qword_10039F278);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *v7 = 136315650;
    v8 = _typeName(_:qualified:)();
    v10 = sub_100008F6C(v8, v9, &v20);

    *(v7 + 4) = v10;
    *(v7 + 12) = 2080;
    v11 = showFunction(signature:_:)(0xD000000000000015, 0x8000000100347740, _swiftEmptyArrayStorage);
    v13 = sub_100008F6C(v11, v12, &v20);

    *(v7 + 14) = v13;
    *(v7 + 22) = 2080;
    memcpy(__dst, (v1 + 16), 0x122uLL);
    sub_100031B40(__dst, v19);
    v14 = sub_100031894();
    v16 = v15;
    sub_100031B78(__dst);
    v17 = sub_100008F6C(v14, v16, &v20);

    *(v7 + 24) = v17;
    _os_log_impl(&_mh_execute_header, v5, v6, "%s.%s returned: %s", v7, 0x20u);
    swift_arrayDestroy();
  }

  return memcpy(a1, (v2 + 16), 0x122uLL);
}

uint64_t sub_1000349B4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Date();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000349F8()
{
  if (v0[3])
  {

    sub_100009548(v0[32], v0[33]);
  }

  return _swift_deallocObject(v0, 306, 7);
}

uint64_t sub_100034AAC()
{
  v0 = type metadata accessor for Logger();
  sub_100003FD8(v0, qword_10039F3F8);
  sub_10000403C(v0, qword_10039F3F8);
  sub_100023B24();
  return static SPRLogger.attestation.getter();
}

uint64_t sub_100034B08(uint64_t a1)
{
  v2 = v1;
  if (qword_10039D350 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000403C(v4, qword_10039F3F8);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    *v7 = 136315394;
    v8 = _typeName(_:qualified:)();
    v10 = sub_100008F6C(v8, v9, &v50);

    *(v7 + 4) = v10;
    *(v7 + 12) = 2080;
    sub_100004074(&qword_1003A6740, &unk_1002C2930);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1002C1660;
    sub_100035270();
    v12 = String.init<A>(_:radix:uppercase:)();
    *(v11 + 56) = &type metadata for String;
    *(v11 + 32) = v12;
    *(v11 + 40) = v13;
    v14 = showFunction(signature:_:)(0x6228796669726576, 0xEF293A70616D7469, v11);
    v16 = v15;

    v17 = sub_100008F6C(v14, v16, &v50);

    *(v7 + 14) = v17;
    _os_log_impl(&_mh_execute_header, v5, v6, "%s.%s", v7, 0x16u);
    swift_arrayDestroy();
  }

  v49 = a1;
  v50 = _swiftEmptyArrayStorage;
  result = sub_1000439AC(&v49, &v50);
  v19 = v50;
  v20 = v50[2];
  if (!v20)
  {
    __break(1u);
    goto LABEL_31;
  }

  if (v20 == 1)
  {
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
    return result;
  }

  if (((*(v2 + 48) & v50[4]) & (*(v2 + 16) ^ *(v50 + 33))) != 0)
  {

    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v50 = v24;
      *v23 = 136315138;
      v25 = sub_10014B8C8(v19);
      v27 = v26;

      v28 = Data.hexString()();
      sub_100009548(v25, v27);
      v29 = sub_100008F6C(v28._countAndFlagsBits, v28._object, &v50);

      *(v23 + 4) = v29;
      v30 = "Invalid attestation data: bit field %s";
LABEL_27:
      _os_log_impl(&_mh_execute_header, v21, v22, v30, v23, 0xCu);
      sub_10000959C(v24);

LABEL_29:

      return 0;
    }

    goto LABEL_28;
  }

  if (v20 < 3)
  {
    goto LABEL_32;
  }

  if (*(v50 + 34) > 5u)
  {

    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v50 = v24;
      *v23 = 136315138;
      v31 = sub_10014B8C8(v19);
      v33 = v32;

      v34 = Data.hexString()();
      sub_100009548(v31, v33);
      v35 = sub_100008F6C(v34._countAndFlagsBits, v34._object, &v50);

      *(v23 + 4) = v35;
      v30 = "Invalid attestation data: number of clients %s";
      goto LABEL_27;
    }

LABEL_28:

    goto LABEL_29;
  }

  if (v20 < 5)
  {
    goto LABEL_33;
  }

  if (*(v50 + 35) < *(v2 + 18))
  {

    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v50 = v24;
      *v23 = 136315138;
      v36 = sub_10014B8C8(v19);
      v38 = v37;

      v39 = Data.hexString()();
      sub_100009548(v36, v38);
      v40 = sub_100008F6C(v39._countAndFlagsBits, v39._object, &v50);

      *(v23 + 4) = v40;
      v30 = "Invalid attestation data: jsbl version %s";
      goto LABEL_27;
    }

    goto LABEL_28;
  }

  if (v20 < 8)
  {
    goto LABEL_34;
  }

  if (*(v2 + 24) != *(v50 + 39) || *(v2 + 32) != *(v50 + 38) || *(v2 + 40) != *(v50 + 37))
  {

    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v50 = v24;
      *v23 = 136315138;
      v44 = sub_10014B8C8(v19);
      v46 = v45;

      v47 = Data.hexString()();
      sub_100009548(v44, v46);
      v48 = sub_100008F6C(v47._countAndFlagsBits, v47._object, &v50);

      *(v23 + 4) = v48;
      v30 = "Invalid attestation data: iOSVersion %s";
      goto LABEL_27;
    }

    goto LABEL_28;
  }

  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    *v43 = 0;
    _os_log_impl(&_mh_execute_header, v41, v42, "Attestation data valid.", v43, 2u);
  }

  return 1;
}

unint64_t sub_100035270()
{
  result = qword_10039F4F8;
  if (!qword_10039F4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10039F4F8);
  }

  return result;
}

uint64_t sub_10003531C()
{
  v0 = type metadata accessor for Logger();
  sub_100003FD8(v0, qword_10039F658);
  sub_10000403C(v0, qword_10039F658);
  sub_100023B24();
  return static SPRLogger.sesnapshotWrapper.getter();
}

uint64_t sub_100035378(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[10] = a6;
  v7[11] = a7;
  v7[8] = a4;
  v7[9] = a5;
  return _swift_task_switch(sub_10003539C, 0, 0);
}

uint64_t sub_10003539C()
{
  if (qword_10039D358 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[12] = sub_10000403C(v1, qword_10039F658);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Calling canFit with reclaimUnusedSpace", v4, 2u);
  }

  type metadata accessor for SESnapshot();
  v5 = swift_task_alloc();
  v0[13] = v5;
  *v5 = v0;
  v5[1] = sub_100035508;
  v6 = v0[9];

  return static SESnapshot.canFit(proposedKernelInfo:reclaimUnusedSpace:session:)(v6, 1, 0);
}

uint64_t sub_100035508(char a1)
{
  v4 = *v2;
  *(*v2 + 112) = v1;

  if (v1)
  {
    v5 = sub_1000356B4;
  }

  else
  {
    *(v4 + 120) = a1 & 1;
    v5 = sub_100035634;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100035634()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 64);
  swift_beginAccess();
  *(v2 + 16) = v1;
  dispatch_group_leave(*(v0 + 88));
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1000356B4()
{
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138412290;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v1, v2, "Could not get an SE snapshot %@", v3, 0xCu);
    sub_10000BD44(v4, &unk_10039E220, &qword_1002C3D60);
  }

  v6 = *(v0 + 112);
  v7 = *(v0 + 80);

  swift_beginAccess();
  *(v7 + 16) = v6;

  dispatch_group_leave(*(v0 + 88));
  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_10003582C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a4;
  v8[6] = a8;
  type metadata accessor for SESnapshot();
  v12 = swift_task_alloc();
  v8[7] = v12;
  *v12 = v8;
  v12[1] = sub_1000358F0;

  return static SESnapshot.getCurrentSnapshot(with:seid:)(a5, a6, a7);
}

uint64_t sub_1000358F0(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 64) = v1;

  if (v1)
  {
    v5 = sub_100035AA0;
  }

  else
  {
    *(v4 + 72) = a1;
    v5 = sub_100035A18;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100035A18()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 40);
  swift_beginAccess();
  v3 = *(v2 + 16);
  *(v2 + 16) = v1;

  dispatch_group_leave(*(v0 + 48));
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100035AA0()
{
  if (qword_10039D358 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000403C(v1, qword_10039F658);
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
    _os_log_impl(&_mh_execute_header, v2, v3, "Could not get an SE snapshot %@", v4, 0xCu);
    sub_10000BD44(v5, &unk_10039E220, &qword_1002C3D60);
  }

  else
  {
  }

  dispatch_group_leave(*(v0 + 48));
  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_100035C4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[14] = a4;
  v7[15] = a7;
  v10 = type metadata accessor for SEStorageManagementSheet.ErrorCode();
  v7[16] = v10;
  v7[17] = *(v10 - 8);
  v11 = swift_task_alloc();
  v7[18] = v11;
  v12 = swift_task_alloc();
  v7[19] = v12;
  if (a6)
  {
    v13 = swift_task_alloc();
    v7[20] = v13;
    *v13 = v7;
    v13[1] = sub_100035E18;

    return (__s9SEService24SEStorageManagementSheetV7present23overSceneWithIdentifier013inApplicationH8BundleIDSbSS_SStYaAC9ErrorCodeOYKF)(a5, a6, v18, v19, v11);
  }

  else
  {
    v14 = v12;
    v15 = swift_task_alloc();
    v7[21] = v15;
    *v15 = v7;
    v15[1] = sub_100035F34;

    return (__s9SEService24SEStorageManagementSheetV7present25inApplicationWithBundleIDSbSS_tYaAC9ErrorCodeOYKF)(v18, v19, v14);
  }
}

uint64_t sub_100035E18(char a1)
{
  v3 = *v2;
  *(v3 + 80) = v1;
  *(v3 + 72) = a1;
  *(v3 + 64) = v2;

  if (v1)
  {
    v4 = sub_1000361A0;
  }

  else
  {
    v4 = sub_100036050;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100035F34(char a1)
{
  v3 = *v2;
  *(v3 + 104) = v1;
  *(v3 + 96) = a1;
  *(v3 + 88) = v2;

  if (v1)
  {
    v4 = sub_100036268;
  }

  else
  {
    v4 = sub_1000360F8;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100036050()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 112);
  v3 = *(v0 + 120);
  swift_beginAccess();
  *(v3 + 16) = v1;
  dispatch_group_leave(v2);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1000360F8()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 112);
  v3 = *(v0 + 120);
  swift_beginAccess();
  *(v3 + 16) = v1;
  dispatch_group_leave(v2);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1000361A0()
{
  v1 = v0[18];
  v2 = v0[16];
  v3 = v0[17];
  v4 = v0[14];
  sub_10003774C();
  swift_allocError();
  (*(v3 + 32))(v5, v1, v2);
  dispatch_group_leave(v4);

  v6 = v0[1];

  return v6();
}

uint64_t sub_100036268()
{
  v1 = v0[19];
  v2 = v0[16];
  v3 = v0[17];
  v4 = v0[14];
  sub_10003774C();
  swift_allocError();
  (*(v3 + 32))(v5, v1, v2);
  dispatch_group_leave(v4);

  v6 = v0[1];

  return v6();
}

uint64_t sub_100036330(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_100004074(&qword_10039F738, &qword_1002C2AB8);
  __chkstk_darwin(v8 - 8);
  v10 = v22 - v9;
  sub_1000376DC(a3, v22 - v9);
  v11 = type metadata accessor for TaskPriority();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_10000BD44(v10, &qword_10039F738, &qword_1002C2AB8);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = dispatch thunk of Actor.unownedExecutor.getter();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = String.utf8CString.getter() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_10000BD44(a3, &qword_10039F738, &qword_1002C2AB8);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_10000BD44(a3, &qword_10039F738, &qword_1002C2AB8);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_1000365F0(uint64_t a1)
{
  v37 = type metadata accessor for DispatchTime();
  v36 = *(v37 - 8);
  v2 = __chkstk_darwin(v37);
  v35 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v34 = &v30 - v4;
  v5 = type metadata accessor for SESnapshot.ProposedKernelInfo();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100004074(&qword_10039F738, &qword_1002C2AB8);
  __chkstk_darwin(v9 - 8);
  v11 = &v30 - v10;
  v32 = &v30 - v10;
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  v30 = v12 + 16;
  v13 = dispatch_group_create();
  v14 = swift_allocObject();
  v31 = v14;
  *(v14 + 16) = 0;
  v33 = (v14 + 16);
  dispatch_group_enter(v13);
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v11, 1, 1, v15);
  v16 = v5;
  (*(v6 + 16))(v8, a1, v5);
  v17 = (*(v6 + 80) + 40) & ~*(v6 + 80);
  v18 = (v7 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  *(v19 + 2) = 0;
  *(v19 + 3) = 0;
  *(v19 + 4) = v12;
  (*(v6 + 32))(&v19[v17], v8, v16);
  *&v19[v18] = v31;
  *&v19[(v18 + 15) & 0xFFFFFFFFFFFFFFF8] = v13;

  v20 = v13;
  sub_10013C974(0, 0, v32, &unk_1002C2AF8, v19);

  v21 = v35;
  static DispatchTime.now()();
  v22 = v34;
  + infix(_:_:)();
  v23 = *(v36 + 8);
  v24 = v21;
  v25 = v37;
  v23(v24, v37);
  OS_dispatch_group.wait(timeout:)();
  v26 = v25;
  v27 = v33;
  v23(v22, v26);
  swift_beginAccess();
  v28 = *v27;
  if (*v27)
  {
    goto LABEL_5;
  }

  if ((static DispatchTimeoutResult.== infix(_:_:)() & 1) == 0)
  {
    v28 = *v27;
LABEL_5:
    swift_errorRetain();
    sub_100020148(2009, 0xD00000000000001ALL, 0x80000001003479D0, v28);

    swift_willThrow();

    return v20 & 1;
  }

  swift_beginAccess();
  LOBYTE(v20) = *(v12 + 16);

  return v20 & 1;
}

NSObject *sub_100036A44(void *a1, uint64_t a2, uint64_t a3)
{
  v30 = a3;
  v32 = a2;
  v31 = type metadata accessor for DispatchTime();
  v4 = *(v31 - 8);
  v5 = __chkstk_darwin(v31);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v29 - v8;
  v10 = sub_100004074(&qword_10039F738, &qword_1002C2AB8);
  __chkstk_darwin(v10 - 8);
  v12 = &v29 - v11;
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  v14 = (v13 + 16);
  v15 = dispatch_group_create();
  dispatch_group_enter(v15);
  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v12, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = v13;
  v17[5] = a1;
  v18 = a1;
  v19 = v30;
  v17[6] = v32;
  v17[7] = v19;
  v17[8] = v15;
  v32 = v13;

  v20 = v18;

  v21 = v15;
  sub_10013C974(0, 0, v12, &unk_1002C2AE0, v17);

  static DispatchTime.now()();
  + infix(_:_:)();
  v22 = *(v4 + 8);
  v23 = v31;
  v22(v7, v31);
  OS_dispatch_group.wait(timeout:)();
  v22(v9, v23);
  swift_beginAccess();
  if (*v14)
  {
    v24 = *v14;
    if (static DispatchTimeoutResult.== infix(_:_:)())
    {

      return v24;
    }
  }

  if (qword_10039D358 != -1)
  {
    swift_once();
  }

  v25 = type metadata accessor for Logger();
  sub_10000403C(v25, qword_10039F658);
  v24 = Logger.logObject.getter();
  v26 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v24, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&_mh_execute_header, v24, v26, "Could not get an SE snapshot", v27, 2u);
  }

  sub_100020148(2009, 0xD000000000000032, 0x8000000100347990, 0);
  swift_willThrow();

  return v24;
}

uint64_t sub_100036E04(void *a1, os_log_type_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v58 = a5;
  v59 = a3;
  v57 = a2;
  v10 = sub_100004074(&qword_10039F738, &qword_1002C2AB8);
  __chkstk_darwin(v10 - 8);
  v60 = &v52 - v11;
  v12 = type metadata accessor for SEStorageManagementSheet.ProvisioningDeviceConfiguration();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = (&v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = type metadata accessor for SEStorageManagementSheet();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = __chkstk_darwin(v16);
  __chkstk_darwin(v19);
  v61 = a4;
  if (a4)
  {
    *v15 = a1;
    v23 = *(v13 + 104);
    v24 = a1;
    v25 = &v52 - v20;
    v53 = v22;
    v54 = v21;
    v23(v15, enum case for SEStorageManagementSheet.ProvisioningDeviceConfiguration.currentDevice(_:), v12);
    sub_100004074(&qword_10039F740, &qword_1002C2AC0);
    v26 = type metadata accessor for SEStorageManagementSheet.ProposedCredentialType();
    v27 = *(v26 - 8);
    v55 = a6;
    v28 = v27;
    v29 = *(v27 + 80);
    v56 = v6;
    v30 = (v29 + 32) & ~v29;
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_1002C1660;
    v32 = type metadata accessor for SESnapshot.ProposedKernelInfo();
    (*(*(v32 - 8) + 16))(v31 + v30, v57, v32);
    (*(v28 + 104))(v31 + v30, enum case for SEStorageManagementSheet.ProposedCredentialType.muirfield(_:), v26);

    v33 = v24;
    v34 = v25;
    v52 = v25;
    SEStorageManagementSheet.init(deviceConfiguration:provisioning:)();
    v35 = swift_allocObject();
    *(v35 + 16) = 0;
    v57 = (v35 + 16);
    v36 = dispatch_group_create();
    dispatch_group_enter(v36);
    v37 = type metadata accessor for TaskPriority();
    (*(*(v37 - 8) + 56))(v60, 1, 1, v37);
    v38 = v53;
    v39 = v54;
    (*(v17 + 16))(v53, v34, v54);
    v40 = (*(v17 + 80) + 64) & ~*(v17 + 80);
    v41 = swift_allocObject();
    *(v41 + 2) = 0;
    *(v41 + 3) = 0;
    v42 = v58;
    *(v41 + 4) = v36;
    *(v41 + 5) = v42;
    *(v41 + 6) = v55;
    *(v41 + 7) = v35;
    (*(v17 + 32))(&v41[v40], v38, v39);
    v43 = &v41[(v18 + v40 + 7) & 0xFFFFFFFFFFFFFFF8];
    v44 = v61;
    *v43 = v59;
    v43[1] = v44;

    v45 = v36;
    sub_100036330(0, 0, v60, &unk_1002C2AD0, v41);

    OS_dispatch_group.wait()();

    (*(v17 + 8))(v52, v39);
    v46 = v57;
    swift_beginAccess();
    v47 = *v46;
  }

  else
  {
    if (qword_10039D358 != -1)
    {
      swift_once();
    }

    v48 = type metadata accessor for Logger();
    sub_10000403C(v48, qword_10039F658);
    v49 = Logger.logObject.getter();
    v47 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v49, v47))
    {
      v50 = swift_slowAlloc();
      *v50 = 0;
      _os_log_impl(&_mh_execute_header, v49, v47, "Found nil bundleID for storage management sheet.", v50, 2u);
    }

    sub_100020148(2028, 0, 0, 0);
    swift_willThrow();
  }

  return v47 & 1;
}

uint64_t sub_1000373A0()
{
  v1 = type metadata accessor for SEStorageManagementSheet();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 64) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

uint64_t sub_100037494(uint64_t a1)
{
  type metadata accessor for SEStorageManagementSheet();
  v3 = v1[3];
  v10 = v1[2];
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  v7 = v1[7];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1000375E8;

  return sub_100035C4C(a1, v10, v3, v4, v5, v6, v7);
}

uint64_t sub_1000375E8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1000376DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004074(&qword_10039F738, &qword_1002C2AB8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_10003774C()
{
  result = qword_10039F748[0];
  if (!qword_10039F748[0])
  {
    type metadata accessor for SEStorageManagementSheet.ErrorCode();
    result = swift_getWitnessTable();
    atomic_store(result, qword_10039F748);
  }

  return result;
}

uint64_t sub_1000377A4()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000377DC()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_100037834(uint64_t a1)
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
  v11[1] = sub_1000375E8;

  return sub_10003582C(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_100037910()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100037948()
{
  v1 = type metadata accessor for SESnapshot.ProposedKernelInfo();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_100037A40(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for SESnapshot.ProposedKernelInfo() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = v1[2];
  v9 = v1[3];
  v10 = v1[4];
  v11 = *(v1 + v7);
  v12 = *(v1 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_100037B84;

  return sub_100035378(a1, v8, v9, v10, v1 + v6, v11, v12);
}

uint64_t sub_100037BF0(uint64_t a1)
{
  v2 = v1;
  v3 = *(*v1 + 88);
  v4 = *(v3 - 8);
  __chkstk_darwin(a1);
  v6 = &v16 - v5;
  v17 = 0;
  v18 = 0xE000000000000000;
  v7._countAndFlagsBits = 40;
  v7._object = 0xE100000000000000;
  String.append(_:)(v7);
  v8 = *(*v1 + 144);
  swift_beginAccess();
  (*(v4 + 16))(v6, v2 + v8, v3);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  (*(v4 + 8))(v6, v3);
  v9._countAndFlagsBits = 0x203E2D2029;
  v9._object = 0xE500000000000000;
  String.append(_:)(v9);
  if (*(v2 + *(*v2 + 160)))
  {

    v11 = sub_100037BF0(v10);
    v13 = v12;
  }

  else
  {
    v13 = 0xE400000000000000;
    v11 = 1818845556;
  }

  v14._countAndFlagsBits = v11;
  v14._object = v13;
  String.append(_:)(v14);

  return v17;
}

uint64_t sub_100037DA4(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  sub_100037DF4(a1, a2);
  return v4;
}

uint64_t *sub_100037DF4(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  swift_weakInit();
  *(v2 + *(*v2 + 160)) = 0;
  (*(*(*(v5 + 80) - 8) + 32))(v2 + *(*v2 + 136), a1);
  (*(*(*(v5 + 88) - 8) + 32))(v2 + *(*v2 + 144), a2);
  return v2;
}

uint64_t sub_100037F10(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7955819 && a2 == 0xE300000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
  {

    return 1;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_100037FD8(char a1)
{
  if (a1)
  {
    return 0x65756C6176;
  }

  else
  {
    return 7955819;
  }
}

uint64_t sub_1000380A0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return CodingKey.description.getter(a1, WitnessTable);
}

uint64_t sub_1000380F4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return CodingKey.debugDescription.getter(a1, WitnessTable);
}

uint64_t sub_100038148(void *a1)
{
  v3 = *(v1 + 88);
  v26 = *(v3 - 8);
  v4 = __chkstk_darwin(a1);
  v27 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v33 = &v25 - v7;
  v8 = *(v1 + 80);
  v31 = *(v8 - 8);
  v9 = __chkstk_darwin(v6);
  v28 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v32 = &v25 - v11;
  v12 = *(v1 + 112);
  v36[0] = v8;
  v36[1] = v3;
  v30 = *(v1 + 96);
  v37 = v30;
  v38 = v12;
  v29 = *(v1 + 120);
  v39 = v29;
  type metadata accessor for LRUCache.Node.CodingKeys(255, v36);
  swift_getWitnessTable();
  v13 = type metadata accessor for KeyedDecodingContainer();
  v34 = *(v13 - 8);
  v35 = v13;
  __chkstk_darwin(v13);
  v15 = &v25 - v14;
  v16 = sub_10000BE18(a1, a1[3]);
  v17 = v40;
  v18 = a1;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v17)
  {
    v19 = v33;
    v40 = v3;
    LOBYTE(v36[0]) = 0;
    v21 = v31;
    v20 = v32;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *&v30 = v8;
    LOBYTE(v36[0]) = 1;
    v22 = v40;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v34 + 8))(v15, v35);
    (*(v21 + 32))(v28, v20, v30);
    v24 = v27;
    (*(v26 + 32))(v27, v19, v22);
    v16 = swift_allocObject();
    sub_100037DF4(v28, v24);
  }

  sub_10000959C(v18);
  return v16;
}

uint64_t sub_100038518(void *a1)
{
  v2 = v1;
  v31 = *(*(*v2 + 88) - 8);
  v4 = __chkstk_darwin(a1);
  v30 = v29 - v5;
  v7 = *(v6 + 80);
  v35 = *(v7 - 8);
  __chkstk_darwin(v4);
  v33 = v29 - v8;
  v10 = v9[12];
  v11 = v9[15];
  v12 = v9[16];
  v38[0] = v7;
  v38[1] = v13;
  v32 = v13;
  v38[2] = v10;
  v36 = *(v14 + 104);
  v39 = v36;
  v40 = v11;
  v41 = v12;
  v29[1] = v12;
  type metadata accessor for LRUCache.Node.CodingKeys(255, v38);
  swift_getWitnessTable();
  v15 = type metadata accessor for KeyedEncodingContainer();
  v34 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = v29 - v16;
  sub_10000BE18(a1, a1[3]);
  v18 = v33;
  v19 = v35;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  (*(v19 + 16))(v18, v2 + *(*v2 + 136), v7);
  LOBYTE(v38[0]) = 0;
  *&v36 = v17;
  v20 = v37;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (v20)
  {
    (*(v19 + 8))(v18, v7);
    return (*(v34 + 8))(v36, v15);
  }

  else
  {
    v22 = v34;
    (*(v19 + 8))(v18, v7);
    v23 = *(*v2 + 144);
    swift_beginAccess();
    v24 = v31;
    v25 = v2 + v23;
    v26 = v30;
    v27 = v32;
    (*(v31 + 16))(v30, v25, v32);
    v42 = 1;
    v28 = v36;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v24 + 8))(v26, v27);
    return (*(v22 + 8))(v28, v15);
  }
}

uint64_t *sub_100038944()
{
  v1 = *v0;
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 136));
  (*(*(*(v1 + 88) - 8) + 8))(v0 + *(*v0 + 144));
  swift_weakDestroy();
  v2 = *(*v0 + 160);
  v3 = *(v0 + v2);
  *(v0 + v2) = 0;

  if (v3)
  {
    do
    {

      if (!swift_isUniquelyReferenced_native())
      {
        break;
      }

      v4 = *(v3 + *(*v3 + 160));
      swift_retain_n();

      v3 = v4;
    }

    while (v4);
  }

  return v0;
}

uint64_t sub_100038AAC()
{
  sub_100038944();

  return swift_deallocClassInstance();
}

uint64_t sub_100038B28@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_100038148(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_100038B78()
{
  v1 = 0xE500000000000000;
  v2._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v2);

  v3._countAndFlagsBits = 0x203E2D2029;
  v3._object = 0xE500000000000000;
  String.append(_:)(v3);
  if (*(v0 + 32))
  {

    v5 = sub_100037BF0(v4);
    v1 = v6;
  }

  else
  {
    v5 = 0x7974706D65;
  }

  v7._countAndFlagsBits = v5;
  v7._object = v1;
  String.append(_:)(v7);

  return 0x2864616568;
}

uint64_t sub_100038C58(uint64_t a1)
{
  v2 = swift_allocObject();
  sub_100038C98(a1);
  return v2;
}

void *sub_100038C98(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 128);
  v5 = *(*v1 + 96);
  v13[0] = *(*v1 + 80);
  v13[1] = v5;
  v11 = *&v13[0];
  v14 = *(v3 + 112);
  v12 = v14;
  v15 = v4;
  v6 = type metadata accessor for LRUCache.Node(255, v13);
  swift_getTupleTypeMetadata2();
  v7 = static Array._allocateUninitialized(_:)();
  v8 = sub_10003A858(v7, v11, v6, v12);

  v1[3] = v8;
  v1[4] = 0;
  swift_weakInit();
  if (a1 <= 1)
  {
    v9 = 1;
  }

  else
  {
    v9 = a1;
  }

  v1[2] = v9;
  return v1;
}

uint64_t sub_100038DA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v34 = a2;
  v35 = a3;
  v6 = *v3;
  v7 = *v3;
  v8 = *(*v3 + 88);
  v36 = *(v8 - 8);
  v9 = __chkstk_darwin(a1);
  v32 = &v31 - v10;
  v11 = *(v6 + 80);
  v31 = *(v11 - 8);
  __chkstk_darwin(v9);
  v13 = &v31 - v12;
  swift_beginAccess();
  v14 = *(v6 + 128);

  v37[0] = v11;
  v37[1] = v8;
  v15 = *(v7 + 96);
  v33 = *(v7 + 112);
  v38 = v15;
  v39 = v33;
  v40 = v14;
  type metadata accessor for LRUCache.Node(0, v37);
  Dictionary.subscript.getter();

  v16 = v41;
  if (v41)
  {
    v17 = *(*v41 + 144);
    swift_beginAccess();
    v18 = v36;
    (*(v36 + 24))(v16 + v17, v34, v8);
    swift_endAccess();
    sub_1000391EC(v16);
    v19 = 1;
    v20 = v35;
    v21 = v18;
  }

  else
  {
    v22 = *(v31 + 16);
    v22(v13, a1, v11);
    v23 = *(v36 + 16);
    v24 = v32;
    v25 = v34;
    v34 = v8;
    *&v33 = v23;
    v31 = v36 + 16;
    v23(v32, v25, v8);
    v26 = swift_allocObject();
    sub_100037DF4(v13, v24);
    v22(v13, a1, v11);
    v41 = v26;
    swift_beginAccess();
    type metadata accessor for Dictionary();

    Dictionary.subscript.setter();
    swift_endAccess();

    v27 = Dictionary.count.getter();

    v28 = 0;
    if (v4[2] < v27)
    {
      v28 = sub_100039490();
    }

    sub_1000393B0(v26);

    if (!v28)
    {
      v19 = 1;
      v8 = v34;
      v20 = v35;
      v21 = v36;
      return (*(v21 + 56))(v20, v19, 1, v8);
    }

    v29 = *(*v28 + 144);
    swift_beginAccess();
    v8 = v34;
    v20 = v35;
    (v33)(v35, v28 + v29, v34);
    v19 = 0;
    v21 = v36;
  }

  return (*(v21 + 56))(v20, v19, 1, v8);
}

uint64_t sub_1000391EC(uint64_t result)
{
  v2 = *(v1 + 32);
  if (v2)
  {
    v3 = v2 == result;
  }

  else
  {
    v3 = 0;
  }

  if (!v3)
  {
    v4 = result;
    sub_100039240(result);

    return sub_1000393B0(v4);
  }

  return result;
}

uint64_t sub_100039240(uint64_t a1)
{
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    *(Strong + *(*Strong + 160)) = *(a1 + *(*a1 + 160));
  }

  v4 = *(*a1 + 160);
  if (*(a1 + v4))
  {
    swift_weakLoadStrong();
    swift_weakAssign();
  }

  v5 = swift_weakLoadStrong();
  if (v5)
  {
    v6 = v5;

    if (v6 == a1)
    {
      swift_weakLoadStrong();
      swift_weakAssign();
    }
  }

  if (*(v1 + 32) == a1)
  {
    *(v1 + 32) = *(a1 + v4);
  }

  swift_weakAssign();
  *(a1 + v4) = 0;
}

uint64_t sub_1000393B0(uint64_t a1)
{
  v3 = *(v1 + 32);
  if (v3)
  {
    *(a1 + *(*a1 + 160)) = v3;

    if (*(v1 + 32))
    {
      swift_weakAssign();
    }

    *(v1 + 32) = a1;
  }

  else
  {
    *(v1 + 32) = a1;
    swift_weakAssign();
  }
}

uint64_t sub_100039490()
{
  v1 = *v0;
  v2 = *(*v0 + 80);
  v3 = *(v2 - 8);
  __chkstk_darwin(v0 + 5);
  v5 = &v10 - v4;
  result = swift_weakLoadStrong();
  if (result)
  {
    v7 = result;
    sub_100039240(result);
    (*(v3 + 16))(v5, v7 + *(*v7 + 136), v2);
    v16 = 0;
    swift_beginAccess();
    v8 = *(v1 + 104);
    v9 = *(v1 + 128);
    v11 = v2;
    v12 = *(v1 + 88);
    v13 = v8;
    v10 = *(v1 + 112);
    v14 = v10;
    v15 = v9;
    type metadata accessor for LRUCache.Node(255, &v11);
    type metadata accessor for Dictionary();
    Dictionary.subscript.setter();
    swift_endAccess();
    return v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100039638(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7365646F6ELL && a2 == 0xE500000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7974696361706163 && a2 == 0xE800000000000000)
  {

    return 1;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

Swift::Int sub_100039738(char a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1 & 1);
  return Hasher._finalize()();
}

uint64_t sub_100039780(char a1)
{
  if (a1)
  {
    return 0x7974696361706163;
  }

  else
  {
    return 0x7365646F6ELL;
  }
}

Swift::Int sub_100039878(uint64_t a1, void *a2, uint64_t a3, void (*a4)(void *, void, void, void, void, void, void, void, void))
{
  Hasher.init(_seed:)();
  a4(v8, *v4, a2[2], a2[3], a2[4], a2[5], a2[6], a2[7], a2[8]);
  return Hasher._finalize()();
}

uint64_t sub_100039934@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t (*a4)(uint64_t, uint64_t, void, void, void, void, void, void, void)@<X4>, _BYTE *a5@<X8>)
{
  result = a4(a1, a2, a3[2], a3[3], a3[4], a3[5], a3[6], a3[7], a3[8]);
  *a5 = result;
  return result;
}

uint64_t sub_100039984@<X0>(void *a1@<X1>, uint64_t (*a2)(void, void, void, void, void, void, void)@<X3>, _BYTE *a3@<X8>)
{
  result = a2(a1[2], a1[3], a1[4], a1[5], a1[6], a1[7], a1[8]);
  *a3 = result;
  return result;
}

uint64_t sub_1000399C8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return CodingKey.description.getter(a1, WitnessTable);
}

uint64_t sub_100039A1C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return CodingKey.debugDescription.getter(a1, WitnessTable);
}

uint64_t sub_100039A70(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 88);
  v44 = *(v4 - 8);
  v5 = __chkstk_darwin(a1);
  v53 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + 80);
  v43 = *(v7 - 8);
  __chkstk_darwin(v5);
  v54 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = type metadata accessor for Optional();
  v42 = *(v52 - 8);
  __chkstk_darwin(v52);
  v51 = &v37 - v9;
  v10 = *(v2 + 96);
  v11 = *(v2 + 112);
  v12 = *(v2 + 120);
  v13 = *(v2 + 128);
  v55 = v7;
  *&v57 = v7;
  *(&v57 + 1) = v4;
  v45 = v10;
  v58 = v10;
  v47 = v12;
  v48 = v11;
  v59 = v11;
  v60 = v12;
  v46 = v13;
  v61 = v13;
  type metadata accessor for LRUCache.CodingKeys(255, &v57);
  swift_getWitnessTable();
  v14 = type metadata accessor for KeyedDecodingContainer();
  v49 = *(v14 - 8);
  __chkstk_darwin(v14);
  v16 = &v37 - v15;
  sub_10000BE18(a1, a1[3]);
  v17 = v50;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v17)
  {
    sub_10000959C(a1);
    return v2;
  }

  v18 = v47;
  v19 = v48;
  v41 = a1;
  LOBYTE(v57) = 1;
  v50 = KeyedDecodingContainer.decode(_:forKey:)();
  v20 = v55;
  *&v21 = v55;
  *(&v21 + 1) = v4;
  v57 = v21;
  v58 = v45;
  v59 = v19;
  v60 = v18;
  v61 = v46;
  v22 = v14;
  v23 = type metadata accessor for LRUCache.Node(255, &v57);
  type metadata accessor for Array();
  LOBYTE(v57) = 0;
  WitnessTable = swift_getWitnessTable();
  swift_getWitnessTable();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v48 = v4;
  v38 = v16;
  v39 = 0;
  v40 = v22;
  v25 = v62;
  v26 = swift_allocObject();
  sub_100038C98(v50);
  v50 = v26;

  if (!Array.endIndex.getter())
  {
LABEL_13:

    v2 = v50;

    (*(v49 + 8))(v38, v40);
    sub_10000959C(v41);
    return v2;
  }

  v46 = (v43 + 2);
  *&v45 = v44 + 2;
  ++v44;
  ++v43;
  ++v42;
  v27 = 4;
  v47 = v23;
  while (1)
  {
    IsNativeType = Array._hoistableIsNativeTypeChecked()();
    Array._checkSubscript(_:wasNativeTypeChecked:)();
    if (IsNativeType)
    {
      v29 = *(v25 + 8 * v27);
    }

    else
    {
      result = _ArrayBuffer._getElementSlowPath(_:)();
      v29 = result;
    }

    v30 = v27 - 3;
    v31 = v54;
    if (__OFADD__(v27 - 4, 1))
    {
      break;
    }

    (*v46)(v54, v29 + *(*v29 + 136), v20);
    v32 = *(*v29 + 144);
    swift_beginAccess();
    v33 = v53;
    v34 = v48;
    (*v45)(v53, v29 + v32, v48);
    v35 = v51;
    sub_100038DA8(v31, v33, v51);

    v36 = v33;
    v20 = v55;
    (*v44)(v36, v34);
    (*v43)(v31, v20);
    (*v42)(v35, v52);
    ++v27;
    if (v30 == Array.endIndex.getter())
    {
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10003A100(void *a1)
{
  v2 = v1;
  v4 = *(*v2 + 80);
  v5 = *(*v2 + 96);
  v6 = *(*v2 + 104);
  v7 = *(*v2 + 112);
  v8 = *(*v2 + 120);
  v9 = *(*v2 + 128);
  v26 = *(*v2 + 88);
  v27 = v4;
  v31 = v4;
  v32 = v26;
  v24 = v6;
  v25 = v5;
  v33 = v5;
  v34 = v6;
  v22 = v8;
  v23 = v7;
  v35 = v7;
  v36 = v8;
  v21 = v9;
  v37 = v9;
  type metadata accessor for LRUCache.CodingKeys(255, &v31);
  swift_getWitnessTable();
  v10 = type metadata accessor for KeyedEncodingContainer();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v20 - v12;
  sub_10000BE18(a1, a1[3]);
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v31) = 1;
  v14 = v28;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v14)
  {
    v31 = v27;
    v32 = v26;
    v33 = v25;
    v34 = v24;
    v35 = v23;
    v36 = v22;
    v37 = v21;
    type metadata accessor for LRUCache.Node(0, &v31);
    v15 = Array.init()();
    v38 = v15;
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v17 = Strong;
      type metadata accessor for Array();
      do
      {
        v31 = v17;

        Array.append(_:)();
        v18 = swift_weakLoadStrong();

        v17 = v18;
      }

      while (v18);
      v15 = v38;
    }

    v31 = v15;
    v30 = 0;
    type metadata accessor for Array();
    WitnessTable = swift_getWitnessTable();
    swift_getWitnessTable();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_10003A454()
{

  swift_weakDestroy();
  return v0;
}

uint64_t sub_10003A484()
{
  sub_10003A454();

  return swift_deallocClassInstance();
}

uint64_t sub_10003A4D0(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_10003A5F4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_100039A70(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_10003A674(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = dispatch thunk of Hashable._rawHashValue(seed:)();

  return sub_10003A6D0(a1, v6, a2, a3);
}

unint64_t sub_10003A6D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21[1] = a1;
  v21[2] = a4;
  __chkstk_darwin(a1);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v4;
  v9 = -1 << *(v4 + 32);
  v11 = v10 & ~v9;
  v21[0] = v4 + 64;
  if ((*(v4 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v9;
    v15 = *(v6 + 16);
    v13 = v6 + 16;
    v14 = v15;
    v16 = *(v13 + 56);
    v17 = (v13 - 8);
    do
    {
      v18 = v13;
      v14(v8, *(v22 + 48) + v16 * v11, a3);
      v19 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*v17)(v8, a3);
      if (v19)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      v13 = v18;
    }

    while (((*(v21[0] + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  return v11;
}

unint64_t sub_10003A858(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(TupleTypeMetadata2 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(TupleTypeMetadata2);
  v12 = v23 - v11;
  if (Array.count.getter())
  {
    type metadata accessor for _DictionaryStorage();
    v13 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v13 = &_swiftEmptyDictionarySingleton;
  }

  result = Array._getCount()();
  if (result)
  {
    if (result >= 1)
    {
      v23[0] = v10;
      v27 = a4;
      v15 = 0;
      v16 = *(TupleTypeMetadata2 + 48);
      v25 = a3;
      v26 = (v9 + 16);
      v23[2] = a2 - 8;
      v24 = v16;
      v23[1] = a3 - 8;
      while (1)
      {
        v17 = result;
        if (Array._hoistableIsNativeTypeChecked()())
        {
          (*(v9 + 16))(v12, a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v15, TupleTypeMetadata2);
        }

        else
        {
          result = _ArrayBuffer._getElementSlowPath(_:)();
          if (v23[0] != 8)
          {
            goto LABEL_19;
          }

          v28 = result;
          (*v26)(v12, &v28, TupleTypeMetadata2);
          swift_unknownObjectRelease();
        }

        result = sub_10003A674(v12, a2, v27);
        if (v18)
        {
          break;
        }

        v19 = result;
        *(v13 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
        (*(*(a2 - 8) + 32))(v13[6] + *(*(a2 - 8) + 72) * result, v12, a2);
        result = (*(*(v25 - 8) + 32))(v13[7] + *(*(v25 - 8) + 72) * v19, &v12[v24]);
        v20 = v13[2];
        v21 = __OFADD__(v20, 1);
        v22 = v20 + 1;
        if (v21)
        {
          goto LABEL_17;
        }

        ++v15;
        v13[2] = v22;
        result = v17;
        if (v17 == v15)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {
LABEL_15:

    return v13;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CertificateManager.RawValidationToken.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for CertificateManager.RawValidationToken.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_10003AD78()
{
  v1._countAndFlagsBits = 40;
  v1._object = 0xE100000000000000;
  String.append(_:)(v1);
  swift_beginAccess();
  _print_unlocked<A, B>(_:_:)();
  v2._countAndFlagsBits = 0x203E2D2029;
  v2._object = 0xE500000000000000;
  String.append(_:)(v2);
  if (*(v0 + 72))
  {

    v3 = sub_10003AD78();
    v5 = v4;
  }

  else
  {
    v5 = 0xE400000000000000;
    v3 = 1818845556;
  }

  v6._countAndFlagsBits = v3;
  v6._object = v5;
  String.append(_:)(v6);

  return 0;
}

uint64_t sub_10003AE6C()
{
  v1 = 0xE500000000000000;
  v2._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v2);

  v3._countAndFlagsBits = 0x203E2D2029;
  v3._object = 0xE500000000000000;
  String.append(_:)(v3);
  if (*(v0 + 32))
  {

    v4 = sub_10003AD78();
    v1 = v5;
  }

  else
  {
    v4 = 0x7974706D65;
  }

  v6._countAndFlagsBits = v4;
  v6._object = v1;
  String.append(_:)(v6);

  return 0x2864616568;
}

uint64_t sub_10003AF4C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_beginAccess();
  v6 = *(v2 + 24);
  if (!*(v6 + 16))
  {
    return 0;
  }

  v7 = sub_1000F5A28(a1, a2);
  if ((v8 & 1) == 0)
  {

    return 0;
  }

  v9 = *(*(v6 + 56) + 8 * v7);

  v10 = *(v3 + 32);
  if (!v10 || v9 != v10)
  {
    sub_10003BA38(v9);
    sub_10003BB40(v9);
  }

  swift_beginAccess();
  v11 = *(v9 + 32);

  return v11;
}

void *sub_10003B060(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  swift_beginAccess();
  v14 = v6[3];
  if (*(v14 + 16))
  {

    v15 = sub_1000F5A28(a1, a2);
    if (v16)
    {
      v17 = *(*(v14 + 56) + 8 * v15);

      swift_beginAccess();
      v17[4] = a3;
      v17[5] = a4;
      v17[6] = a5;
      v17[7] = a6;

      v18 = v7[4];

      if (!v18 || v17 != v18)
      {
        sub_10003BA38(v17);
        sub_10003BB40(v17);
      }

      return 0;
    }
  }

  sub_100004074(&qword_10039FAF0, &qword_1002C2F88);
  v19 = swift_allocObject();
  swift_weakInit();
  v19[9] = 0;
  v19[2] = a1;
  v19[3] = a2;
  v19[4] = a3;
  v19[5] = a4;
  v19[6] = a5;
  v19[7] = a6;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v26 = v7[3];
  v7[3] = 0x8000000000000000;
  sub_10018008C(v19, a1, a2, isUniquelyReferenced_nonNull_native);
  v7[3] = v26;
  swift_endAccess();
  v21 = 0;
  if (v7[2] >= *(v26 + 16))
  {
LABEL_11:
    sub_10003BB40(v19);

    if (v21)
    {
      swift_beginAccess();
      v25 = v21[4];

      return v25;
    }

    return 0;
  }

  result = swift_weakLoadStrong();
  if (result)
  {
    v21 = result;
    sub_10003BA38(result);
    v23 = v21[2];
    v24 = v21[3];
    swift_beginAccess();

    sub_10002D438(0, v23, v24);
    swift_endAccess();
    goto LABEL_11;
  }

  __break(1u);
  return result;
}

uint64_t sub_10003B318(uint64_t a1)
{
  v2 = v1;

  v5 = sub_10003B91C(v4);
  if (*(v1 + 16) < v5[2])
  {

    v6 = 0;
    return v6 & 1;
  }

  swift_beginAccess();

  v8 = sub_10003B91C(v7);

  v9 = sub_100040E98(v5, v8);
  if (v9[2] <= v8[2] >> 3)
  {

    sub_10003F48C(v9);
    v64 = v8;
  }

  else
  {

    v64 = sub_10003F5B8(v9, v8);
  }

  v62 = a1;
  if (v9[2] <= v5[2] >> 3)
  {

    sub_10003F48C(v9);
    v63 = v5;
  }

  else
  {

    v63 = sub_10003F5B8(v9, v5);
  }

  v10 = 1 << *(v64 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & v64[7];
  v13 = (v10 + 63) >> 6;

  v6 = 0;
  v14 = 0;
  while (v12)
  {
LABEL_19:
    v16 = *(v2 + 24);
    if (!*(v16 + 16))
    {
      goto LABEL_56;
    }

    v17 = (v64[6] + ((v14 << 10) | (16 * __clz(__rbit64(v12)))));
    v19 = *v17;
    v18 = v17[1];

    v20 = sub_1000F5A28(v19, v18);
    if ((v21 & 1) == 0)
    {
      goto LABEL_57;
    }

    v22 = *(*(v16 + 56) + 8 * v20);

    sub_10003BA38(v22);
    swift_beginAccess();
    sub_1000F5A28(v19, v18);
    v24 = v23;

    if (v24)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v26 = *(v2 + 24);
      *(v2 + 24) = 0x8000000000000000;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_100181A74();
      }

      sub_10017C5C4();
      *(v2 + 24) = v26;
    }

    v12 &= v12 - 1;
    swift_endAccess();

    v6 = 1;
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      goto LABEL_55;
    }

    if (v15 >= v13)
    {
      break;
    }

    v12 = v64[v15 + 7];
    ++v14;
    if (v12)
    {
      v14 = v15;
      goto LABEL_19;
    }
  }

  v27 = v63 + 7;
  v28 = 1 << *(v63 + 32);
  v29 = -1;
  if (v28 < 64)
  {
    v29 = ~(-1 << v28);
  }

  v30 = v29 & v63[7];
  v31 = (v28 + 63) >> 6;

  v32 = 0;
  v61 = v31;
  while (v30)
  {
    if (!*(v62 + 16))
    {
      goto LABEL_58;
    }

LABEL_31:
    v33 = (v63[6] + ((v32 << 10) | (16 * __clz(__rbit64(v30)))));
    v34 = *v33;
    v35 = v33[1];

    v36 = sub_1000F5A28(v34, v35);
    if ((v37 & 1) == 0)
    {
      goto LABEL_59;
    }

    v38 = (*(v62 + 56) + 32 * v36);
    v40 = *v38;
    v39 = v38[1];
    v42 = v38[2];
    v41 = v38[3];
    sub_100004074(&qword_10039FAF0, &qword_1002C2F88);
    v43 = swift_allocObject();
    swift_weakInit();
    v43[9] = 0;
    v43[2] = v34;
    v43[3] = v35;
    v43[4] = v40;
    v43[5] = v39;
    v43[6] = v42;
    v43[7] = v41;
    swift_beginAccess();

    v44 = swift_isUniquelyReferenced_nonNull_native();
    v45 = *(v2 + 24);
    *(v2 + 24) = 0x8000000000000000;
    v47 = sub_1000F5A28(v34, v35);
    v48 = v45[2];
    v49 = (v46 & 1) == 0;
    v50 = v48 + v49;
    if (__OFADD__(v48, v49))
    {
      goto LABEL_60;
    }

    v51 = v46;
    if (v45[3] >= v50)
    {
      if (v44)
      {
        if (v46)
        {
          goto LABEL_44;
        }
      }

      else
      {
        sub_100181A74();
        if (v51)
        {
          goto LABEL_44;
        }
      }
    }

    else
    {
      sub_10017D87C(v50, v44);
      v52 = sub_1000F5A28(v34, v35);
      if ((v51 & 1) != (v53 & 1))
      {
        goto LABEL_62;
      }

      v47 = v52;
      if (v51)
      {
LABEL_44:
        *(v45[7] + 8 * v47) = v43;

        goto LABEL_48;
      }
    }

    v45[(v47 >> 6) + 8] |= 1 << v47;
    v55 = (v45[6] + 16 * v47);
    *v55 = v34;
    v55[1] = v35;
    *(v45[7] + 8 * v47) = v43;
    v56 = v45[2];
    v57 = __OFADD__(v56, 1);
    v58 = v56 + 1;
    if (v57)
    {
      goto LABEL_61;
    }

    v45[2] = v58;
LABEL_48:
    v30 &= v30 - 1;
    *(v2 + 24) = v45;
    swift_endAccess();
    v59 = *(v2 + 32);
    if (v59)
    {
      v43[9] = v59;

      if (*(v2 + 32))
      {
        swift_weakAssign();
      }

      *(v2 + 32) = v43;
    }

    else
    {
      *(v2 + 32) = v43;
      swift_weakAssign();
    }

    v6 = 1;
    v31 = v61;
    v27 = v63 + 7;
  }

  while (1)
  {
    v54 = v32 + 1;
    if (__OFADD__(v32, 1))
    {
      break;
    }

    if (v54 >= v31)
    {

      return v6 & 1;
    }

    v30 = v27[v54];
    ++v32;
    if (v30)
    {
      v32 = v54;
      if (*(v62 + 16))
      {
        goto LABEL_31;
      }

      goto LABEL_58;
    }
  }

LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_10003B91C(uint64_t a1)
{
  result = Set.init(minimumCapacity:)();
  v3 = 0;
  v14 = result;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  for (i = (v4 + 63) >> 6; v6; result = )
  {
    v8 = v3;
LABEL_9:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v10 = (*(a1 + 48) + ((v8 << 10) | (16 * v9)));
    v11 = *v10;
    v12 = v10[1];

    sub_10003F33C(v13, v11, v12);
  }

  while (1)
  {
    v8 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v8 >= i)
    {

      return v14;
    }

    v6 = *(a1 + 64 + 8 * v8);
    ++v3;
    if (v6)
    {
      v3 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10003BA38(uint64_t a1)
{
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    *(Strong + 72) = *(a1 + 72);
  }

  if (*(a1 + 72))
  {
    swift_weakLoadStrong();
    swift_weakAssign();
  }

  v4 = swift_weakLoadStrong();
  if (v4)
  {
    v5 = v4;

    if (v5 == a1)
    {
      swift_weakLoadStrong();
      swift_weakAssign();
    }
  }

  v6 = *(v1 + 32);
  if (v6 && v6 == a1)
  {
    *(v1 + 32) = *(a1 + 72);
  }

  swift_weakAssign();
  *(a1 + 72) = 0;
}

uint64_t sub_10003BB40(uint64_t a1)
{
  v3 = *(v1 + 32);
  if (v3)
  {
    *(a1 + 72) = v3;

    if (*(v1 + 32))
    {
      swift_weakAssign();
    }

    *(v1 + 32) = a1;
  }

  else
  {
    *(v1 + 32) = a1;
    swift_weakAssign();
  }
}

uint64_t sub_10003BBF8()
{
  v0 = type metadata accessor for Logger();
  sub_100003FD8(v0, qword_10039F950);
  sub_10000403C(v0, qword_10039F950);
  sub_100023B24();
  return static SPRLogger.configurator.getter();
}

uint64_t sub_10003BC54()
{
  _StringGuts.grow(_:)(46);
  v1 = *v0;

  v2._countAndFlagsBits = 8236;
  v2._object = 0xE200000000000000;
  String.append(_:)(v2);
  v3._countAndFlagsBits = sub_10003C674(v0[2], v0[3]);
  String.append(_:)(v3);

  v4._countAndFlagsBits = 0x414641537369202CLL;
  v4._object = 0xEF203A6576697463;
  String.append(_:)(v4);
  if (v0[4])
  {
    v5 = 1702195828;
  }

  else
  {
    v5 = 0x65736C6166;
  }

  if (v0[4])
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  v7 = v6;
  String.append(_:)(*&v5);

  v8._object = 0x8000000100347BA0;
  v8._countAndFlagsBits = 0xD000000000000014;
  String.append(_:)(v8);
  if (v0[6])
  {
    v10 = String.redactedTokenFromBase64()();
    countAndFlagsBits = v10._countAndFlagsBits;
    object = v10._object;
  }

  else
  {
    object = 0xE300000000000000;
    countAndFlagsBits = 7104878;
  }

  v12 = object;
  String.append(_:)(*&countAndFlagsBits);

  v13._countAndFlagsBits = 10;
  v13._object = 0xE100000000000000;
  String.append(_:)(v13);
  return v1;
}

uint64_t sub_10003BDB4(void *a1)
{
  v3 = v1;
  v5 = sub_100004074(&qword_10039FB58, &qword_1002C31D8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10[-v7];
  sub_10000BE18(a1, a1[3]);
  sub_100042CE4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v11) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v11 = *(v3 + 16);
    v10[15] = 1;
    sub_100042D38();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v11) = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v11) = 3;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

Swift::Int sub_10003BF80()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_10003BFF4(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

unint64_t sub_10003C038()
{
  v1 = 0x725074656C707061;
  v2 = 0x7463414641537369;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000010;
  }

  if (*v0)
  {
    v1 = 0x666E6F4374736F68;
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

uint64_t sub_10003C0D0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100042084(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_10003C104(uint64_t a1)
{
  v2 = sub_100042CE4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10003C140(uint64_t a1)
{
  v2 = sub_100042CE4();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_10003C17C@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_100042204(a2, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v5;
    result = *&v7;
    *(a1 + 32) = v7;
    *(a1 + 48) = v8;
  }

  return result;
}

uint64_t sub_10003C1E8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12[0] = a4;
  v12[1] = a5;
  v7 = sub_100004074(&qword_10039FB90, &qword_1002C31F0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v12 - v9;
  sub_10000BE18(a1, a1[3]);
  sub_100042DE0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v5)
  {
    v13 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_10003C39C()
{
  if (*v0)
  {
    return 0x6F436C61626F6C67;
  }

  else
  {
    return 0x49656C69666F7270;
  }
}

uint64_t sub_10003C3E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x49656C69666F7270 && a2 == 0xE900000000000044;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6F436C61626F6C67 && a2 == 0xEE0044496769666ELL)
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

uint64_t sub_10003C4E0(uint64_t a1)
{
  v2 = sub_100042DE0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10003C51C(uint64_t a1)
{
  v2 = sub_100042DE0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10003C558@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1000424F4(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
    a1[3] = v7;
  }

  return result;
}

uint64_t sub_10003C5A8()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  _StringGuts.grow(_:)(34);

  v5._countAndFlagsBits = v1;
  v5._object = v2;
  String.append(_:)(v5);
  v6._object = 0x8000000100347B80;
  v6._countAndFlagsBits = 0xD000000000000012;
  String.append(_:)(v6);
  v7._countAndFlagsBits = v3;
  v7._object = v4;
  String.append(_:)(v7);
  v8._countAndFlagsBits = 10;
  v8._object = 0xE100000000000000;
  String.append(_:)(v8);
  return 0x49656C69666F7270;
}

unint64_t sub_10003C674(uint64_t a1, uint64_t a2)
{
  _StringGuts.grow(_:)(45);

  v2._countAndFlagsBits = Array.description.getter();
  String.append(_:)(v2);

  v3._countAndFlagsBits = 0xD000000000000018;
  v3._object = 0x8000000100347BE0;
  String.append(_:)(v3);
  v4._countAndFlagsBits = Array.description.getter();
  String.append(_:)(v4);

  return 0xD000000000000011;
}

uint64_t sub_10003C750(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_100004074(&qword_10039FBC8, &unk_1002C34D0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v12 - v9;
  sub_10000BE18(a1, a1[3]);
  sub_100043074();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = a2;
  v13 = 0;
  sub_100004074(&qword_10039E270, &unk_1002C3BE0);
  sub_1000430C8(&qword_10039FBD8, &protocol witness table for String, &protocol conformance descriptor for <A> [A]);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v3)
  {
    v14 = a3;
    v13 = 1;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_10003C938()
{
  if (*v0)
  {
    return 0xD000000000000014;
  }

  else
  {
    return 0x7250737361707962;
  }
}

uint64_t sub_10003C984@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7250737361707962 && a2 == 0xEF44494178696665;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000100347C20 == a2)
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

uint64_t sub_10003CA70(uint64_t a1)
{
  v2 = sub_100043074();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10003CAAC(uint64_t a1)
{
  v2 = sub_100043074();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10003CAE8@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1000426D8(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
  }

  return result;
}

void sub_10003CB38()
{
  v1 = v0;
  v2 = v0[7];
  v3 = v1[8];
  sub_10000BE18(v1 + 4, v2);
  v4 = v1[11];
  v5 = v1[12];
  v6 = sub_100004074(&qword_10039FB08, &qword_1002C2FB0);
  sub_100041EF4();
  sub_10009A1A4(v4, v5, v2, v6, v3);
  swift_beginAccess();
  v1[3] = v29;

  if (qword_10039D360 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_10000403C(v7, qword_10039F950);

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v29 = v11;
    *v10 = 136315138;
    type metadata accessor for UUID();
    sub_100041F9C(&qword_10039FB28, &protocol conformance descriptor for UUID);

    v12 = Dictionary.description.getter();
    v14 = v13;

    v15 = sub_100008F6C(v12, v14, &v29);

    *(v10 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v8, v9, "read tpid dictionary: %s", v10, 0xCu);
    sub_10000959C(v11);
  }

  v16 = v1[7];
  v17 = v1[8];
  sub_10000BE18(v1 + 4, v16);
  v18 = v1[9];
  v19 = v1[10];
  v20 = sub_100004074(&qword_10039FAF8, &unk_1002C2FA0);
  sub_100042034(&qword_10039FB48, &unk_1002C2C58);
  sub_10009A1A4(v18, v19, v16, v20, v17);
  v1[2] = v29;

  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v29 = v24;
    *v23 = 136315138;

    v25 = sub_10003AE6C();
    v27 = v26;

    v28 = sub_100008F6C(v25, v27, &v29);

    *(v23 + 4) = v28;
    _os_log_impl(&_mh_execute_header, v21, v22, "read LRU cache: %s", v23, 0xCu);
    sub_10000959C(v24);
  }
}

void sub_10003CFC8()
{
  v1 = v0;
  v2 = v0[7];
  v3 = v1[8];
  sub_10000BE18(v1 + 4, v2);
  v4 = v1[11];
  v5 = v1[12];
  swift_beginAccess();
  v17 = v1[3];

  v6 = sub_100004074(&qword_10039FB08, &qword_1002C2FB0);
  v7 = sub_100041DF8();
  sub_10009A268(v4, v5, &v17, v2, v6, v3, v7);

  if (qword_10039D360 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_10000403C(v8, qword_10039F950);

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v17 = v12;
    *v11 = 136315138;
    type metadata accessor for UUID();
    sub_100041F9C(&qword_10039FB28, &protocol conformance descriptor for UUID);

    v13 = Dictionary.description.getter();
    v15 = v14;

    v16 = sub_100008F6C(v13, v15, &v17);

    *(v11 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v9, v10, "wrote tpid dictionary: %s", v11, 0xCu);
    sub_10000959C(v12);
  }
}

void sub_10003D33C()
{
  v1 = v0;
  v2 = v0[7];
  v3 = v1[8];
  sub_10000BE18(v1 + 4, v2);
  v4 = v1[9];
  v5 = v1[10];
  v17 = v1[2];

  v6 = sub_100004074(&qword_10039FAF8, &unk_1002C2FA0);
  v7 = sub_100042034(&qword_10039FB00, &unk_1002C2C30);
  sub_10009A268(v4, v5, &v17, v2, v6, v3, v7);

  if (qword_10039D360 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_10000403C(v8, qword_10039F950);

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v17 = v12;
    *v11 = 136315138;

    v13 = sub_10003AE6C();
    v15 = v14;

    v16 = sub_100008F6C(v13, v15, &v17);

    *(v11 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v9, v10, "wrote LRU cache: %s", v11, 0xCu);
    sub_10000959C(v12);
  }
}

uint64_t sub_10003D678@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v76 = a2;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10039D360 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  v10 = sub_10000403C(v9, qword_10039F950);
  v11 = *(v6 + 16);
  v11(v8, a1, v5);
  v77 = v10;
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v74 = a1;
    v15 = v14;
    v73 = swift_slowAlloc();
    *&v79 = v73;
    *v15 = 136315394;
    v16 = _typeName(_:qualified:)();
    v18 = sub_100008F6C(v16, v17, &v79);
    v75 = v3;
    v19 = v18;

    *(v15 + 4) = v19;
    *(v15 + 12) = 2080;
    sub_100004074(&qword_1003A6740, &unk_1002C2930);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_1002C1660;
    *(v20 + 56) = v5;
    v21 = sub_10000BE5C((v20 + 32));
    v11(v21, v8, v5);
    v22 = showFunction(signature:_:)(0x6469707428746567, 0xEA0000000000293ALL, v20);
    v24 = v23;

    (*(v6 + 8))(v8, v5);
    v25 = v22;
    v3 = v75;
    v26 = sub_100008F6C(v25, v24, &v79);

    *(v15 + 14) = v26;
    _os_log_impl(&_mh_execute_header, v12, v13, "%s.%s", v15, 0x16u);
    swift_arrayDestroy();

    a1 = v74;
  }

  else
  {

    (*(v6 + 8))(v8, v5);
  }

  swift_beginAccess();
  v27 = v3[3];
  if (*(v27 + 16))
  {

    v28 = sub_1000F5DA0(a1);
    if (v29)
    {
      v30 = *(v27 + 56) + 56 * v28;
      v31 = *v30;
      v32 = *(v30 + 8);
      v33 = *(v30 + 16);
      v34 = *(v30 + 24);
      LODWORD(v35) = *(v30 + 32);
      v36 = *(v30 + 40);
      v75 = *(v30 + 48);

      v37 = *(v3[14] + 16);
      v72 = v34;
      v70[1] = v33;
      if (v37 || *(v3[13] + 16))
      {
        *&v79 = v31;
        *(&v79 + 1) = v32;
        *&v80 = v33;
        *(&v80 + 1) = v34;
        LOBYTE(v81) = v35;
        *(&v81 + 1) = v36;
        *&v82 = v75;

        sub_100043B8C(v38);

        sub_100043B8C(v39);
        v73 = *(&v79 + 1);
        v74 = v79;
        v40 = v31;
        v41 = *(&v80 + 1);
        v77 = v80;
        LODWORD(v35) = v81;
        v42 = v82;
        v71 = *(&v81 + 1);
        sub_10003F2A0(0, 0, 0, 0, 0, 0, 0);
      }

      else
      {

        v68 = v75;

        sub_10003F2A0(0, 0, 0, 0, 0, 0, 0);
        v74 = v31;
        v73 = v32;
        v69 = v33;
        v40 = v31;
        v77 = v69;
        v41 = v34;
        v71 = v36;
        v42 = v68;
      }

      v35 = v35;

      v43 = sub_10003AF4C(v40, v32);
      v45 = v44;
      v47 = v46;
      v49 = v48;

      swift_bridgeObjectRelease_n();

      sub_100041D4C(0, 0, 0, 0);
      sub_10003D33C();
      v50 = v74;
      v51 = v73;
      *&v79 = v74;
      *(&v79 + 1) = v73;
      *&v80 = v77;
      *(&v80 + 1) = v41;
      v52 = v71;
      *&v81 = v35;
      *(&v81 + 1) = v71;
      *&v82 = v42;
      *(&v82 + 1) = v43;
      *&v83 = v45;
      *(&v83 + 1) = v47;
      v84 = v49;
      sub_100041CE4(&v79, v78);
      v53 = v50;
      v54 = v52;
      goto LABEL_16;
    }
  }

  v55 = Logger.logObject.getter();
  v56 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v55, v56))
  {
    v57 = swift_slowAlloc();
    *v57 = 0;
    _os_log_impl(&_mh_execute_header, v55, v56, "unknown tpid", v57, 2u);
  }

  v84 = 0;
  v82 = 0u;
  v83 = 0u;
  v80 = 0u;
  v81 = 0u;
  v79 = 0u;
  sub_100041CE4(&v79, v78);
  v53 = 0;
  v51 = 0;
  v77 = 0;
  v41 = 0;
  v35 = 0;
  v54 = 0;
  v42 = 0;
  v43 = 0;
  v45 = 0;
  v47 = 0;
  v49 = 0;
LABEL_16:
  v75 = v49;
  *&v79 = v53;
  *(&v79 + 1) = v51;
  *&v80 = v77;
  *(&v80 + 1) = v41;
  *&v81 = v35;
  *(&v81 + 1) = v54;
  *&v82 = v42;
  *(&v82 + 1) = v43;
  *&v83 = v45;
  *(&v83 + 1) = v47;
  v84 = v49;
  v58 = v47;
  v59 = v45;
  v60 = v43;
  v61 = v42;
  v62 = v41;
  v63 = v77;
  v64 = v51;
  v65 = v53;
  result = sub_100041D1C(&v79);
  v67 = v76;
  *v76 = v65;
  v67[1] = v64;
  v67[2] = v63;
  v67[3] = v62;
  v67[4] = v35;
  v67[5] = v54;
  v67[6] = v61;
  v67[7] = v60;
  v67[8] = v59;
  v67[9] = v58;
  v67[10] = v75;
  return result;
}

void *sub_10003DDC0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10039D360 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  v9 = sub_10000403C(v8, qword_10039F950);
  v10 = *(v5 + 16);
  v10(v7, a1, v4);
  v67 = v9;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();
  v13 = os_log_type_enabled(v11, v12);
  v66 = a1;
  if (v13)
  {
    v14 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    v75[0] = v64;
    *v14 = 136315394;
    v15 = _typeName(_:qualified:)();
    v17 = sub_100008F6C(v15, v16, v75);
    v65 = a2;
    v18 = v17;

    *(v14 + 4) = v18;
    *(v14 + 12) = 2080;
    sub_100004074(&qword_1003A6740, &unk_1002C2930);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_1002C1660;
    *(v19 + 56) = v4;
    v20 = sub_10000BE5C((v19 + 32));
    v10(v20, v7, v4);
    v21 = showFunction(signature:_:)(0x6469707428747570, 0xEF293A6F666E693ALL, v19);
    v23 = v22;

    (*(v5 + 8))(v7, v4);
    v24 = v21;
    a2 = v65;
    v25 = sub_100008F6C(v24, v23, v75);

    *(v14 + 14) = v25;
    _os_log_impl(&_mh_execute_header, v11, v12, "%s.%s", v14, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    (*(v5 + 8))(v7, v4);
  }

  v26 = *(a2 + 8);
  v27 = v68;
  if (!v26)
  {
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&_mh_execute_header, v43, v44, "no kernel token info", v45, 2u);
    }

    return 0;
  }

  v28 = *(a2 + 40);
  v29 = *(a2 + 48);
  v30 = *(a2 + 32);
  v31 = *(a2 + 16);
  v32 = *(a2 + 24);
  v65 = *a2;
  v71[0] = v65;
  v71[1] = v26;
  v71[2] = v31;
  v71[3] = v32;
  v72 = v30 & 1;
  v73 = v28;
  v74 = v29;
  swift_beginAccess();
  v33 = *(v27 + 24);
  if (*(v33 + 16))
  {

    v34 = v66;
    v35 = sub_1000F5DA0(v66);
    if (v36)
    {
      v37 = *(v33 + 56) + 56 * v35;
      v38 = *(v37 + 32);
      v39 = a2;
      v41 = *(v37 + 40);
      v40 = *(v37 + 48);

      v75[0] = v65;
      v75[1] = v26;
      v75[2] = v31;
      v75[3] = v32;
      v76 = v38;
      v77 = v41;
      v78 = v40;
      a2 = v39;
      swift_beginAccess();

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v69 = *(v27 + 24);
      *(v27 + 24) = 0x8000000000000000;
      sub_1001800A0(v75, v34, isUniquelyReferenced_nonNull_native);
      *(v27 + 24) = v69;
      goto LABEL_15;
    }
  }

  swift_beginAccess();

  v46 = swift_isUniquelyReferenced_nonNull_native();
  v70[0] = *(v27 + 24);
  *(v27 + 24) = 0x8000000000000000;
  sub_1001800A0(v71, v66, v46);
  *(v27 + 24) = v70[0];
LABEL_15:
  swift_endAccess();
  v47 = *(a2 + 64);
  if (!v47)
  {
    v60 = Logger.logObject.getter();
    v61 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      *v62 = 0;
      _os_log_impl(&_mh_execute_header, v60, v61, "skip update LRU cache", v62, 2u);
    }

    sub_10003CFC8();
    return 0;
  }

  v49 = *(a2 + 72);
  v48 = *(a2 + 80);
  v50 = *(a2 + 56);

  v51 = sub_10003B060(v65, v26, v50, v47, v49, v48);
  v53 = v52;

  if (v53)
  {

    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v70[0] = v57;
      *v56 = 136315138;

      v58 = sub_100008F6C(v51, v53, v70);

      *(v56 + 4) = v58;
      _os_log_impl(&_mh_execute_header, v54, v55, "evict: %s", v56, 0xCu);
      sub_10000959C(v57);
    }
  }

  sub_10003D33C();
  sub_10003CFC8();
  return v51;
}

void sub_10003E51C(void *a1)
{
  if (qword_10039D360 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000403C(v2, qword_10039F950);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    *v5 = 136315394;
    v6 = _typeName(_:qualified:)();
    v8 = sub_100008F6C(v6, v7, &v43);

    *(v5 + 4) = v8;
    *(v5 + 12) = 2080;
    sub_100004074(&qword_1003A6740, &unk_1002C2930);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1002C1660;
    *(v9 + 56) = sub_100004074(&qword_10039FAE8, &qword_1002C2F80);
    *(v9 + 32) = a1;

    v10 = showFunction(signature:_:)(0xD000000000000010, 0x8000000100347AE0, v9);
    v12 = v11;

    v13 = sub_100008F6C(v10, v12, &v43);

    *(v5 + 14) = v13;
    _os_log_impl(&_mh_execute_header, v3, v4, "%s.%s", v5, 0x16u);
    swift_arrayDestroy();
  }

  v14 = a1[2];
  if (v14)
  {
    v43 = _swiftEmptyArrayStorage;
    sub_10004E2DC(0, v14, 0);
    v15 = v43;
    v41 = a1;
    v16 = a1 + 5;
    v17 = v14;
    do
    {
      v18 = *(v16 - 1);
      v19 = *v16;
      v43 = v15;
      v21 = v15[2];
      v20 = v15[3];

      if (v21 >= v20 >> 1)
      {
        sub_10004E2DC((v20 > 1), v21 + 1, 1);
        v15 = v43;
      }

      v15[2] = v21 + 1;
      v22 = &v15[2 * v21];
      v22[4] = v18;
      v22[5] = v19;
      v16 += 4;
      --v17;
    }

    while (v17);
    a1 = v41;
  }

  else
  {
    v15 = _swiftEmptyArrayStorage;
  }

  v23 = sub_100041C44(v15);

  v24 = *(v23 + 16);

  if (v24 == v14)
  {
    if (v14)
    {
      v43 = _swiftEmptyArrayStorage;

      sub_10004E2FC(0, v14, 0);
      v25 = v43;
      v26 = a1 + 7;
      do
      {
        v27 = *(v26 - 3);
        v28 = *(v26 - 2);
        v29 = *(v26 - 1);
        v30 = *v26;
        v43 = v25;
        v32 = v25[2];
        v31 = v25[3];
        swift_bridgeObjectRetain_n();

        if (v32 >= v31 >> 1)
        {
          sub_10004E2FC((v31 > 1), v32 + 1, 1);
          v25 = v43;
        }

        v25[2] = v32 + 1;
        v33 = &v25[6 * v32];
        v33[4] = v27;
        v33[5] = v28;
        v33[6] = v27;
        v33[7] = v28;
        v33[8] = v29;
        v33[9] = v30;
        v26 += 4;
        --v14;
      }

      while (v14);
    }

    else
    {

      if (!_swiftEmptyArrayStorage[2])
      {
        v34 = &_swiftEmptyDictionarySingleton;
LABEL_22:
        v43 = v34;

        sub_100041854(v35, 1, &v43);

        v36 = sub_10003B318(v43);

        oslog = Logger.logObject.getter();
        if (v36)
        {
          v37 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(oslog, v37))
          {
            v38 = swift_slowAlloc();
            *v38 = 0;
            _os_log_impl(&_mh_execute_header, oslog, v37, "cache synced", v38, 2u);
          }

          sub_10003D33C();
        }

        else
        {
          v39 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(oslog, v39))
          {
            v40 = swift_slowAlloc();
            *v40 = 0;
            _os_log_impl(&_mh_execute_header, oslog, v39, "cache not synced", v40, 2u);
          }
        }

        return;
      }
    }

    sub_100004074(&qword_10039FAE0, &unk_1002C2F70);
    v34 = static _DictionaryStorage.allocate(capacity:)();
    goto LABEL_22;
  }
}

void sub_10003EADC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v44 = a1;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10039D360 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  v12 = sub_10000403C(v11, qword_10039F950);
  (*(v8 + 16))(v10, a3, v7);
  v45 = v12;
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v43 = a2;
    v16 = v15;
    v42 = swift_slowAlloc();
    v47[0] = v42;
    *v16 = 136315650;
    v17 = _typeName(_:qualified:)();
    v19 = sub_100008F6C(v17, v18, v47);

    *(v16 + 4) = v19;
    *(v16 + 12) = 2080;
    v20 = showFunction(signature:_:)(0xD00000000000001ELL, 0x8000000100347AA0, _swiftEmptyArrayStorage);
    v22 = sub_100008F6C(v20, v21, v47);

    *(v16 + 14) = v22;
    *(v16 + 22) = 2080;
    sub_100041F9C(&qword_10039FAD8, &protocol conformance descriptor for UUID);
    v23 = dispatch thunk of CustomStringConvertible.description.getter();
    v25 = v24;
    (*(v8 + 8))(v10, v7);
    v26 = sub_100008F6C(v23, v25, v47);

    *(v16 + 24) = v26;
    _os_log_impl(&_mh_execute_header, v13, v14, "%s.%s saftpid: %s", v16, 0x20u);
    swift_arrayDestroy();

    a2 = v43;
  }

  else
  {

    (*(v8 + 8))(v10, v7);
  }

  swift_beginAccess();
  v27 = *(v4 + 24);
  if (*(v27 + 16))
  {

    v28 = sub_1000F5DA0(a3);
    if (v29)
    {
      v30 = *(v27 + 56) + 56 * v28;
      v31 = a3;
      v33 = *v30;
      v32 = *(v30 + 8);
      v34 = *(v30 + 16);
      v35 = *(v30 + 24);
      v36 = *(v30 + 32);

      v47[0] = v33;
      v47[1] = v32;
      v47[2] = v34;
      v47[3] = v35;
      v48 = v36;
      v49 = v44;
      v50 = a2;
      swift_beginAccess();
      sub_10003F304(v47, v46);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v46[0] = *(v4 + 24);
      *(v4 + 24) = 0x8000000000000000;
      sub_1001800A0(v47, v31, isUniquelyReferenced_nonNull_native);
      *(v4 + 24) = v46[0];
      swift_endAccess();
      sub_10003CFC8();

      return;
    }
  }

  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    *v40 = 0;
    _os_log_impl(&_mh_execute_header, v38, v39, "cannot update attestationToken because ProfileInfo doesn't exist", v40, 2u);
  }
}

uint64_t sub_10003EFB8(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 24);
  if (!*(v3 + 16))
  {
    goto LABEL_5;
  }

  v4 = sub_1000F5DA0(a1);
  if ((v5 & 1) == 0)
  {

LABEL_5:
    v20 = 0;
    v21 = 0;
    v19 = 0;
    v18 = 0;
    v17 = 0;
    v16 = 0;
    v15 = 0;
    v14 = 0;
    goto LABEL_6;
  }

  v6 = *(v3 + 56) + 56 * v4;
  v8 = *v6;
  v7 = *(v6 + 8);
  v9 = *(v6 + 16);
  v10 = *(v6 + 24);
  v11 = *(v6 + 32);
  v13 = *(v6 + 40);
  v12 = *(v6 + 48);

  v14 = v8;
  v15 = v7;
  v16 = v9;
  v17 = v10;
  v18 = v13;
  v19 = v12;
  v20 = v11;
  v21 = v11;
LABEL_6:
  v22 = v15 != 0;
  sub_10003F2A0(v14, v15, v16, v17, v20, v18, v19);
  return v22 & v21;
}

void sub_10003F0DC(uint64_t a1, char a2)
{
  v4 = v2;
  swift_beginAccess();
  v6 = *(v2 + 24);
  if (*(v6 + 16))
  {

    v7 = sub_1000F5DA0(a1);
    if (v8)
    {
      v9 = (*(v6 + 56) + 56 * v7);
      v11 = *v9;
      v10 = v9[1];
      v12 = v9[2];
      v13 = v9[3];
      v15 = v9[5];
      v14 = v9[6];

      v18[0] = v11;
      v18[1] = v10;
      v18[2] = v12;
      v18[3] = v13;
      v19 = a2;
      v20 = v15;
      v21 = v14;
      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v17 = *(v4 + 24);
      *(v4 + 24) = 0x8000000000000000;
      sub_1001800A0(v18, a1, isUniquelyReferenced_nonNull_native);
      *(v4 + 24) = v17;
      swift_endAccess();
      sub_10003CFC8();
    }

    else
    {
    }
  }
}

uint64_t sub_10003F214()
{

  sub_10000959C(v0 + 4);
  sub_100009548(v0[9], v0[10]);
  sub_100009548(v0[11], v0[12]);

  return swift_deallocClassInstance();
}

void sub_10003F2A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a2)
  {
  }
}

uint64_t sub_10003F33C(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  Hasher.init(_seed:)();
  String.hash(into:)();
  v8 = Hasher._finalize()();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
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

    sub_1000414C8(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_10003F48C(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = result;
    v3 = result + 56;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(result + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
        v12 = *v11;
        v13 = v11[1];

        sub_10003FB28(v12, v13);

        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return result;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }

  return result;
}

void *sub_10003F5B8(uint64_t a1, void *a2)
{
  v5 = a2;
  if (!a2[2])
  {

    return &_swiftEmptySetSingleton;
  }

  v53 = 0;
  v7 = a1 + 56;
  v6 = *(a1 + 56);
  v8 = -1;
  v9 = -1 << *(a1 + 32);
  v57 = ~v9;
  if (-v9 < 64)
  {
    v10 = ~(-1 << -v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & v6;
  v12 = (63 - v9) >> 6;
  v61 = a2 + 7;

  v15 = 0;
  v59 = v13;
  if (!v11)
  {
LABEL_6:
    v16 = v15;
    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_56;
      }

      if (v17 >= v12)
      {
        goto LABEL_53;
      }

      v11 = *(v7 + 8 * v17);
      ++v16;
      if (v11)
      {
        v15 = v17;
        break;
      }
    }
  }

  while (1)
  {
    v18 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v19 = *(v13 + 48);
    v60 = v15;
    v20 = (v19 + ((v15 << 10) | (16 * v18)));
    v22 = *v20;
    v21 = v20[1];
    Hasher.init(_seed:)();

    String.hash(into:)();
    v23 = Hasher._finalize()();
    v24 = -1 << *(v5 + 32);
    v2 = v23 & ~v24;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v61[v2 >> 6]) != 0)
    {
      break;
    }

LABEL_19:

    v13 = v59;
    v15 = v60;
    v8 = -1;
    if (!v11)
    {
      goto LABEL_6;
    }
  }

  v3 = ~v24;
  while (1)
  {
    v25 = (v5[6] + 16 * v2);
    v26 = *v25 == v22 && v25[1] == v21;
    if (v26 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v2 = (v2 + 1) & v3;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v61[v2 >> 6]) == 0)
    {
      goto LABEL_19;
    }
  }

  v3 = v59;
  v27 = v60;
  v63 = v57;
  v64 = v60;
  v65 = v11;
  v62[0] = v59;
  v62[1] = v7;

  v29 = *(v5 + 32);
  v54 = ((1 << v29) + 63) >> 6;
  v14 = 8 * v54;
  if ((v29 & 0x3Fu) > 0xD)
  {
    goto LABEL_57;
  }

  while (1)
  {
    v55 = &v53;
    __chkstk_darwin(v28);
    v2 = &v53 - ((v30 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v2, v61, v30);
    v31 = *(v2 + 8 * v8) & ~v4;
    v32 = v5[2];
    v58 = v2;
    *(v2 + 8 * v8) = v31;
    v33 = v32 - 1;
LABEL_23:
    v56 = v33;
    if (v11)
    {
      goto LABEL_33;
    }

LABEL_28:
    v35 = v27;
    while (1)
    {
      v36 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      if (v36 >= v12)
      {
        v5 = sub_100040384(v58, v54, v56, v5);
        goto LABEL_51;
      }

      v11 = *(v7 + 8 * v36);
      ++v35;
      if (v11)
      {
        v27 = v36;
        while (1)
        {
LABEL_33:
          while (1)
          {
            v37 = __clz(__rbit64(v11));
            v11 &= v11 - 1;
            v38 = *(v3 + 48);
            v60 = v27;
            v39 = (v38 + ((v27 << 10) | (16 * v37)));
            v40 = *v39;
            v4 = v39[1];
            Hasher.init(_seed:)();

            String.hash(into:)();
            v41 = Hasher._finalize()();
            v42 = -1 << *(v5 + 32);
            v8 = v41 & ~v42;
            v2 = v8 >> 6;
            v43 = 1 << v8;
            if (((1 << v8) & v61[v8 >> 6]) != 0)
            {
              break;
            }

LABEL_45:

            v27 = v60;
            if (!v11)
            {
              goto LABEL_28;
            }
          }

          v44 = (v5[6] + 16 * v8);
          if (*v44 != v40 || v44[1] != v4)
          {
            v46 = ~v42;
            while ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
            {
              v8 = (v8 + 1) & v46;
              v2 = v8 >> 6;
              v43 = 1 << v8;
              if (((1 << v8) & v61[v8 >> 6]) == 0)
              {
                v3 = v59;
                goto LABEL_45;
              }

              v47 = (v5[6] + 16 * v8);
              if (*v47 == v40 && v47[1] == v4)
              {
                break;
              }
            }
          }

          v3 = v59;
          v34 = v58[v2];
          v58[v2] = v34 & ~v43;
          v26 = (v34 & v43) == 0;
          v27 = v60;
          if (!v26)
          {
            break;
          }

          if (!v11)
          {
            goto LABEL_28;
          }
        }

        v33 = v56 - 1;
        if (__OFSUB__(v56, 1))
        {
          __break(1u);
        }

        if (v56 == 1)
        {

          v5 = &_swiftEmptySetSingleton;
          goto LABEL_51;
        }

        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    v49 = v14;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    v27 = v60;
  }

  v50 = swift_slowAlloc();
  memcpy(v50, v61, v49);
  v51 = v53;
  v52 = sub_10004014C(v50, v54, v5, v2, v62);

  if (!v51)
  {

    v3 = v62[0];
    v57 = v63;
    v5 = v52;
LABEL_51:
    v13 = v3;
LABEL_53:
    sub_100041CDC(v13);
    return v5;
  }

  __break(1u);
  return result;
}

uint64_t sub_10003FB28(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(v5 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v2;
  v16 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1000405A8();
    v14 = v16;
  }

  v12 = *(*(v14 + 48) + 16 * v8);
  sub_100040CD4(v8);
  *v2 = v16;
  return v12;
}

Swift::Int sub_10003FC64(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100004074(&qword_1003A5D50, &unk_1002C2F90);
  result = static _SetStorage.resize(original:capacity:move:)();
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
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
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

Swift::Int sub_10003FEC4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100004074(&qword_10039FB50, &qword_1002C2FB8);
  result = static _SetStorage.resize(original:capacity:move:)();
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
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + (v14 | (v6 << 6)));
      Hasher.init(_seed:)();
      String.hash(into:)();

      result = Hasher._finalize()();
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      bzero((v3 + 56), ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v25;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

unint64_t *sub_10004014C(unint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = *(a3 + 16);
  v31 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = a3 + 56;
  while (2)
  {
    v30 = v8;
    do
    {
      while (1)
      {
        v11 = a5[3];
        v12 = a5[4];
        if (!v12)
        {
          v14 = (a5[2] + 64) >> 6;
          v15 = a5[3];
          while (1)
          {
            v13 = v15 + 1;
            if (__OFADD__(v15, 1))
            {
              __break(1u);
              goto LABEL_30;
            }

            if (v13 >= v14)
            {
              break;
            }

            v12 = *(a5[1] + 8 * v13);
            ++v15;
            if (v12)
            {
              goto LABEL_10;
            }
          }

          if (v14 <= v11 + 1)
          {
            v28 = v11 + 1;
          }

          else
          {
            v28 = (a5[2] + 64) >> 6;
          }

          a5[3] = v28 - 1;
          a5[4] = 0;

          return sub_100040384(v31, a2, v30, a3);
        }

        v13 = a5[3];
LABEL_10:
        v16 = (*(*a5 + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v12)))));
        v18 = *v16;
        v17 = v16[1];
        a5[3] = v13;
        a5[4] = (v12 - 1) & v12;
        Hasher.init(_seed:)();

        String.hash(into:)();
        v19 = Hasher._finalize()();
        v20 = -1 << *(a3 + 32);
        v21 = v19 & ~v20;
        v22 = v21 >> 6;
        v23 = 1 << v21;
        if (((1 << v21) & *(v9 + 8 * (v21 >> 6))) != 0)
        {
          break;
        }

LABEL_21:
      }

      v24 = (*(a3 + 48) + 16 * v21);
      if (*v24 != v18 || v24[1] != v17)
      {
        v26 = ~v20;
        while ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          v21 = (v21 + 1) & v26;
          v22 = v21 >> 6;
          v23 = 1 << v21;
          if (((1 << v21) & *(v9 + 8 * (v21 >> 6))) == 0)
          {
            goto LABEL_21;
          }

          v27 = (*(a3 + 48) + 16 * v21);
          if (*v27 == v18 && v27[1] == v17)
          {
            break;
          }
        }
      }

      v10 = v31[v22];
      v31[v22] = v10 & ~v23;
    }

    while ((v10 & v23) == 0);
    v8 = v30 - 1;
    if (__OFSUB__(v30, 1))
    {
LABEL_30:
      __break(1u);
    }

    else
    {
      if (v30 != 1)
      {
        continue;
      }

      return &_swiftEmptySetSingleton;
    }

    return result;
  }
}

Swift::Int sub_100040384(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = &_swiftEmptySetSingleton;
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_100004074(&qword_1003A5D50, &unk_1002C2F90);
  result = static _SetStorage.allocate(capacity:)();
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
  v12 = result + 56;
  v29 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    Hasher.init(_seed:)();

    String.hash(into:)();
    result = Hasher._finalize()();
    v19 = -1 << v9[32];
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v12 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v9 + 6) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v9 + 2);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v29;
    if (!v5)
    {
      goto LABEL_6;
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
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

void *sub_1000405A8()
{
  v1 = v0;
  sub_100004074(&qword_1003A5D50, &unk_1002C2F90);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
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

void *sub_100040704()
{
  v1 = v0;
  sub_100004074(&qword_10039FB50, &qword_1002C2FB8);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

Swift::Int sub_100040844(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100004074(&qword_1003A5D50, &unk_1002C2F90);
  result = static _SetStorage.resize(original:capacity:move:)();
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
      Hasher.init(_seed:)();

      String.hash(into:)();
      result = Hasher._finalize()();
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

Swift::Int sub_100040A7C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100004074(&qword_10039FB50, &qword_1002C2FB8);
  result = static _SetStorage.resize(original:capacity:move:)();
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
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + (v13 | (v6 << 6)));
      Hasher.init(_seed:)();
      String.hash(into:)();

      result = Hasher._finalize()();
      v17 = -1 << *(v5 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
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

unint64_t sub_100040CD4(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        Hasher.init(_seed:)();

        String.hash(into:)();
        v10 = Hasher._finalize()();

        v11 = v10 & v7;
        if (v2 >= v9)
        {
          if (v11 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v11 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v11)
        {
LABEL_11:
          v12 = *(v3 + 48);
          v13 = (v12 + 16 * v2);
          v14 = (v12 + 16 * v6);
          if (v2 != v6 || v13 >= v14 + 1)
          {
            *v13 = *v14;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v15 = *(v3 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v17;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t *sub_100040E98(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v6 = ((1 << v4) + 63) >> 6;
  v7 = 8 * v6;

  if (v5 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    __chkstk_darwin(isStackAllocationSafe);
    bzero(&v12 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0), v7);
    v9 = sub_1000410EC((&v12 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0)), v6, a2, a1);
  }

  else
  {
    v11 = swift_slowAlloc();

    v9 = sub_10004105C(v11, v6, a2, a1);
  }

  return v9;
}

unint64_t *sub_10004105C(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
    }

    v8 = sub_1000410EC(result, a2, a3, a4);

    return v8;
  }

  return result;
}

unint64_t *sub_1000410EC(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v50 = result;
  if (*(a4 + 16) >= *(a3 + 16))
  {
    v53 = 0;
    v13 = 0;
    v14 = a3 + 56;
    v15 = 1 << *(a3 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(a3 + 56);
    v18 = (v15 + 63) >> 6;
    v19 = a4 + 56;
    while (v17)
    {
      v20 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_18:
      v51 = v20 | (v13 << 6);
      v23 = (*(a3 + 48) + 16 * v51);
      v25 = *v23;
      v24 = v23[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      v26 = Hasher._finalize()();
      v27 = -1 << *(v4 + 32);
      v28 = v26 & ~v27;
      if ((*(v19 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28))
      {
        v29 = ~v27;
        while (1)
        {
          v30 = (*(a4 + 48) + 16 * v28);
          v31 = *v30 == v25 && v30[1] == v24;
          if (v31 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            break;
          }

          v28 = (v28 + 1) & v29;
          if (((*(v19 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
          {
            goto LABEL_10;
          }
        }

        *(v50 + ((v51 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v51;
        v32 = __OFADD__(v53++, 1);
        v4 = a4;
        if (v32)
        {
          __break(1u);
LABEL_30:
          v5 = a3;
LABEL_31:

          return sub_100040384(v50, a2, v53, v5);
        }
      }

      else
      {
LABEL_10:

        v4 = a4;
      }
    }

    v21 = v13;
    while (1)
    {
      v13 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v13 >= v18)
      {
        goto LABEL_30;
      }

      v22 = *(v14 + 8 * v13);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v17 = (v22 - 1) & v22;
        goto LABEL_18;
      }
    }

LABEL_54:
    __break(1u);
  }

  else
  {
    v53 = 0;
    v6 = 0;
    v7 = a4 + 56;
    v8 = 1 << *(a4 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(a4 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = a3 + 56;
    v49 = v11;
    while (v10)
    {
      v33 = __clz(__rbit64(v10));
      v52 = (v10 - 1) & v10;
LABEL_41:
      v36 = (*(v4 + 48) + 16 * (v33 | (v6 << 6)));
      v38 = *v36;
      v37 = v36[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      v39 = Hasher._finalize()();
      v40 = -1 << *(v5 + 32);
      v41 = v39 & ~v40;
      v42 = v41 >> 6;
      v43 = 1 << v41;
      if (((1 << v41) & *(v12 + 8 * (v41 >> 6))) != 0)
      {
        v44 = (*(v5 + 48) + 16 * v41);
        if (*v44 != v38 || v44[1] != v37)
        {
          v46 = ~v40;
          while ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
          {
            v41 = (v41 + 1) & v46;
            v42 = v41 >> 6;
            v43 = 1 << v41;
            if (((1 << v41) & *(v12 + 8 * (v41 >> 6))) == 0)
            {
              v5 = a3;
              goto LABEL_33;
            }

            v47 = (*(a3 + 48) + 16 * v41);
            if (*v47 == v38 && v47[1] == v37)
            {
              break;
            }
          }
        }

        v11 = v49;
        v50[v42] |= v43;
        v5 = a3;
        v32 = __OFADD__(v53++, 1);
        v4 = a4;
        v10 = v52;
        if (v32)
        {
          __break(1u);
          goto LABEL_54;
        }
      }

      else
      {
LABEL_33:

        v4 = a4;
        v11 = v49;
        v10 = v52;
      }
    }

    v34 = v6;
    while (1)
    {
      v6 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        break;
      }

      if (v6 >= v11)
      {
        goto LABEL_31;
      }

      v35 = *(v7 + 8 * v6);
      ++v34;
      if (v35)
      {
        v33 = __clz(__rbit64(v35));
        v52 = (v35 - 1) & v35;
        goto LABEL_41;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000414C8(uint64_t result, uint64_t a2, unint64_t a3, char a4)
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
    sub_10003FC64(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_1000405A8();
      goto LABEL_16;
    }

    sub_100040844(v8 + 1);
  }

  v10 = *v4;
  Hasher.init(_seed:)();
  String.hash(into:)();
  result = Hasher._finalize()();
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

      result = _stringCompareWithSmolCheck(_:_:expecting:)();
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
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100041648(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  v22 = result;
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_25;
  }

  if (a3)
  {
    sub_10003FEC4(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_100040704();
      goto LABEL_25;
    }

    sub_100040A7C(v6 + 1);
  }

  v8 = 7565168;
  v9 = *v3;
  Hasher.init(_seed:)();
  if (v5)
  {
    v10 = 0xE300000000000000;
  }

  else
  {
    v8 = 0x6F697369766F7270;
    v10 = 0xE90000000000006ELL;
  }

  String.hash(into:)();

  result = Hasher._finalize()();
  v11 = -1 << *(v9 + 32);
  a2 = result & ~v11;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    do
    {
      v13 = *(*(v9 + 48) + a2) ? 7565168 : 0x6F697369766F7270;
      v14 = *(*(v9 + 48) + a2) ? 0xE300000000000000 : 0xE90000000000006ELL;
      if (v13 == v8 && v14 == v10)
      {
        goto LABEL_28;
      }

      v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v16)
      {
        goto LABEL_29;
      }

      a2 = (a2 + 1) & v12;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_25:
  v17 = *v21;
  *(*v21 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v17 + 48) + a2) = v22 & 1;
  v18 = *(v17 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v17 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_28:

LABEL_29:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100041854(void *a1, char a2, void *a3)
{
  v42 = a1[2];
  if (!v42)
  {
  }

  v5 = a1[4];
  v4 = a1[5];
  v6 = a1[6];
  v7 = a1[7];
  v8 = a1[8];
  v9 = a1[9];
  v10 = *a3;

  v44 = v7;

  v11 = sub_1000F5A28(v5, v4);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  LOBYTE(v17) = v12;
  if (v10[3] < v16)
  {
    sub_10017DCD4(v16, a2 & 1);
    v11 = sub_1000F5A28(v5, v4);
    if ((v17 & 1) == (v18 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    v11 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if (a2)
  {
LABEL_7:
    if (v17)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v20 = v11;
  sub_100181D6C();
  v11 = v20;
  if (v17)
  {
LABEL_8:
    swift_allocError();
    swift_willThrow();
    swift_errorRetain();
    sub_100004074(&unk_1003A3C00, &unk_1002C16C0);
    if ((swift_dynamicCast() & 1) == 0)
    {
    }

    goto LABEL_26;
  }

LABEL_11:
  v21 = *a3;
  *(*a3 + 8 * (v11 >> 6) + 64) |= 1 << v11;
  v22 = (v21[6] + 16 * v11);
  *v22 = v5;
  v22[1] = v4;
  v23 = (v21[7] + 32 * v11);
  *v23 = v6;
  v23[1] = v44;
  v23[2] = v8;
  v23[3] = v9;
  v24 = v21[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    _StringGuts.grow(_:)(30);
    v40._object = 0x8000000100347B20;
    v40._countAndFlagsBits = 0xD00000000000001BLL;
    String.append(_:)(v40);
    _print_unlocked<A, B>(_:_:)();
    v41._countAndFlagsBits = 39;
    v41._object = 0xE100000000000000;
    String.append(_:)(v41);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v21[2] = v25;
  if (v42 != 1)
  {
    v17 = a1 + 15;
    v6 = 1;
    while (v6 < a1[2])
    {
      v5 = *(v17 - 5);
      v4 = *(v17 - 4);
      v27 = *(v17 - 3);
      v26 = *(v17 - 2);
      v8 = *(v17 - 1);
      v9 = *v17;
      v28 = *a3;

      v44 = v26;

      v29 = sub_1000F5A28(v5, v4);
      v31 = v28[2];
      v32 = (v30 & 1) == 0;
      v15 = __OFADD__(v31, v32);
      v33 = v31 + v32;
      if (v15)
      {
        goto LABEL_23;
      }

      a2 = v30;
      if (v28[3] < v33)
      {
        sub_10017DCD4(v33, 1);
        v29 = sub_1000F5A28(v5, v4);
        if ((a2 & 1) != (v34 & 1))
        {
          goto LABEL_5;
        }
      }

      if (a2)
      {
        goto LABEL_8;
      }

      v35 = *a3;
      *(*a3 + 8 * (v29 >> 6) + 64) |= 1 << v29;
      v36 = (v35[6] + 16 * v29);
      *v36 = v5;
      v36[1] = v4;
      v37 = (v35[7] + 32 * v29);
      *v37 = v27;
      v37[1] = v26;
      v37[2] = v8;
      v37[3] = v9;
      v38 = v35[2];
      v15 = __OFADD__(v38, 1);
      v39 = v38 + 1;
      if (v15)
      {
        goto LABEL_24;
      }

      ++v6;
      v35[2] = v39;
      v17 += 6;
      if (v42 == v6)
      {
      }
    }

    goto LABEL_25;
  }
}

uint64_t sub_100041C44(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = Set.init(minimumCapacity:)();
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_10003F33C(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

void sub_100041D4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }
}

uint64_t sub_100041D90(uint64_t a1)
{
  v2 = sub_100004074(&unk_10039E220, &qword_1002C3D60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100041DF8()
{
  result = qword_10039FB10;
  if (!qword_10039FB10)
  {
    sub_1000040BC(&qword_10039FB08, &qword_1002C2FB0);
    sub_100041F9C(&qword_10039FB18, &protocol conformance descriptor for UUID);
    sub_100041EA0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10039FB10);
  }

  return result;
}

unint64_t sub_100041EA0()
{
  result = qword_10039FB20;
  if (!qword_10039FB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10039FB20);
  }

  return result;
}

unint64_t sub_100041EF4()
{
  result = qword_10039FB30;
  if (!qword_10039FB30)
  {
    sub_1000040BC(&qword_10039FB08, &qword_1002C2FB0);
    sub_100041F9C(&qword_10039FB38, &protocol conformance descriptor for UUID);
    sub_100041FE0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10039FB30);
  }

  return result;
}

uint64_t sub_100041F9C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for UUID();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100041FE0()
{
  result = qword_10039FB40;
  if (!qword_10039FB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10039FB40);
  }

  return result;
}

uint64_t sub_100042034(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1000040BC(&qword_10039FAF8, &unk_1002C2FA0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100042084(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x725074656C707061 && a2 == 0xEF4449656C69666FLL;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x666E6F4374736F68 && a2 == 0xEA00000000006769 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7463414641537369 && a2 == 0xEB00000000657669 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000100347C00 == a2)
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

uint64_t sub_100042204@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_100004074(&qword_10039FB70, &qword_1002C31E0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v20 - v7;
  sub_10000BE18(a1, a1[3]);
  sub_100042CE4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000959C(a1);
  }

  LOBYTE(v24) = 0;
  v9 = KeyedDecodingContainer.decode(_:forKey:)();
  v11 = v10;
  v23 = a2;
  v27 = 1;
  sub_100042D8C();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v21 = v25;
  v22 = v24;
  LOBYTE(v24) = 2;
  v26 = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v24) = 3;
  v12 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v14 = v13;
  v26 &= 1u;
  v15 = v12;
  (*(v6 + 8))(v8, v5);

  v16 = v22;

  v17 = v21;

  sub_10000959C(a1);

  v19 = v23;
  *v23 = v9;
  v19[1] = v11;
  v19[2] = v16;
  v19[3] = v17;
  *(v19 + 32) = v26;
  v19[5] = v15;
  v19[6] = v14;
  return result;
}

uint64_t sub_1000424F4(void *a1)
{
  v3 = sub_100004074(&qword_10039FB80, &qword_1002C31E8);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - v5;
  v7 = a1[4];
  sub_10000BE18(a1, a1[3]);
  sub_100042DE0();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v11 = 0;
    v7 = KeyedDecodingContainer.decode(_:forKey:)();
    v10 = 1;
    KeyedDecodingContainer.decode(_:forKey:)();
    (*(v4 + 8))(v6, v3);
  }

  sub_10000959C(a1);
  return v7;
}

uint64_t sub_1000426D8(void *a1)
{
  v2 = sub_100004074(&qword_10039FBE0, &qword_1002C34E0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - v4;
  sub_10000BE18(a1, a1[3]);
  sub_100043074();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  sub_100004074(&qword_10039E270, &unk_1002C3BE0);
  v9 = 0;
  sub_1000430C8(&qword_10039FBE8, &protocol witness table for String, &protocol conformance descriptor for <A> [A]);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v7 = v10;
  v9 = 1;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v3 + 8))(v5, v2);
  sub_10000959C(a1);
  return v7;
}

void *sub_1000428FC(void *a1, uint64_t a2, uint64_t a3)
{
  sub_100004074(&qword_10039FAF8, &unk_1002C2FA0);
  v7 = swift_allocObject();
  v7[3] = sub_100183DF8(_swiftEmptyArrayStorage);
  v7[4] = 0;
  swift_weakInit();
  v7[2] = 4;
  v8 = sub_100183BE4(_swiftEmptyArrayStorage);
  v9 = a1[3];
  v10 = a1[4];
  v11 = sub_10000BE18(a1, v9);
  v12 = v9;
  v13 = v11;
  sub_1000C7DD8(v12, v10);
  if (v3)
  {
  }

  else
  {
    type metadata accessor for ProfileManager();
    v13 = swift_allocObject();
    v13[9] = sub_100146900(0xD000000000000014, 0x8000000100347B40);
    v13[10] = v14;
    v13[11] = sub_100146900(0xD000000000000013, 0x8000000100347B60);
    v13[12] = v15;
    v13[2] = v7;
    v13[3] = v8;
    sub_100029790(&v17, (v13 + 4));
    v13[13] = a2;
    v13[14] = a3;

    sub_10003CB38();
  }

  sub_10000959C(a1);
  return v13;
}

__n128 sub_100042A88(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_100042A94(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_100042ADC(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

__n128 sub_100042B2C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_100042B48(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_100042B90(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_100042BEC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_100042C10(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 88))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_100042C6C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 88) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 88) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_100042CE4()
{
  result = qword_10039FB60;
  if (!qword_10039FB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10039FB60);
  }

  return result;
}

unint64_t sub_100042D38()
{
  result = qword_10039FB68;
  if (!qword_10039FB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10039FB68);
  }

  return result;
}

unint64_t sub_100042D8C()
{
  result = qword_10039FB78;
  if (!qword_10039FB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10039FB78);
  }

  return result;
}

unint64_t sub_100042DE0()
{
  result = qword_10039FB88;
  if (!qword_10039FB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10039FB88);
  }

  return result;
}

unint64_t sub_100042E68()
{
  result = qword_10039FB98;
  if (!qword_10039FB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10039FB98);
  }

  return result;
}

unint64_t sub_100042EC0()
{
  result = qword_10039FBA0;
  if (!qword_10039FBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10039FBA0);
  }

  return result;
}

unint64_t sub_100042F18()
{
  result = qword_10039FBA8;
  if (!qword_10039FBA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10039FBA8);
  }

  return result;
}

unint64_t sub_100042F70()
{
  result = qword_10039FBB0;
  if (!qword_10039FBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10039FBB0);
  }

  return result;
}

unint64_t sub_100042FC8()
{
  result = qword_10039FBB8;
  if (!qword_10039FBB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10039FBB8);
  }

  return result;
}

unint64_t sub_100043020()
{
  result = qword_10039FBC0;
  if (!qword_10039FBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10039FBC0);
  }

  return result;
}

unint64_t sub_100043074()
{
  result = qword_10039FBD0;
  if (!qword_10039FBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10039FBD0);
  }

  return result;
}

uint64_t sub_1000430C8(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1000040BC(&qword_10039E270, &unk_1002C3BE0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100043148()
{
  result = qword_10039FBF0;
  if (!qword_10039FBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10039FBF0);
  }

  return result;
}

unint64_t sub_1000431A0()
{
  result = qword_10039FBF8;
  if (!qword_10039FBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10039FBF8);
  }

  return result;
}

unint64_t sub_1000431F8()
{
  result = qword_10039FC00;
  if (!qword_10039FC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10039FC00);
  }

  return result;
}

uint64_t sub_100043268@<X0>(char *a1@<X8>)
{
  v21 = a1;
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100004074(&unk_1003A3BE0, &qword_1002C36F0);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v20 - v10;
  __chkstk_darwin(v9);
  v13 = &v20 - v12;
  v23 = 0.0;
  v24 = 0;
  v22 = 0;
  v14 = *(v2 + 56);
  v14(&v20 - v12, 1, 1, v1);
  if (TMGetReferenceTime() && v22 == 1 && fabs(v23) < 2.0)
  {
    Date.init(timeIntervalSinceReferenceDate:)();
    sub_10000BD44(v13, &unk_1003A3BE0, &qword_1002C36F0);
    v14(v8, 0, 1, v1);
    sub_10004F494(v8, v13);
  }

  sub_10004F424(v13, v11);
  if ((*(v2 + 48))(v11, 1, v1) == 1)
  {
    sub_10000BD44(v11, &unk_1003A3BE0, &qword_1002C36F0);
    sub_1001451FC(v25);
    memcpy(v26, v25, sizeof(v26));
    v15 = sub_100031A30(v26);
    v16 = v21;
    if (v15 == 1)
    {
      sub_10000BD44(v13, &unk_1003A3BE0, &qword_1002C36F0);
      v18 = 1;
      return (v14)(v16, v18, 1, v1);
    }

    memcpy(v27, v26, sizeof(v27));
    sub_10004CF70(v27, v21);
    sub_10000BD44(v13, &unk_1003A3BE0, &qword_1002C36F0);
    sub_10000BD44(v25, &qword_10039F268, &qword_1002C2730);
  }

  else
  {
    sub_10000BD44(v13, &unk_1003A3BE0, &qword_1002C36F0);
    v17 = *(v2 + 32);
    v17(v4, v11, v1);
    v16 = v21;
    v17(v21, v4, v1);
  }

  v18 = 0;
  return (v14)(v16, v18, 1, v1);
}

void *sub_100043754(void *result)
{
  v2 = result[2];
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
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_10004D6C8(result, v10, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  sub_100004074(&qword_10039FE68, &qword_1002C3730);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = v3[2];
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    v3[2] = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_10004385C(uint64_t result)
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
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
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

  v3 = sub_10004DEE0(isUniquelyReferenced_nonNull_native, v12, 1, v3, &qword_10039E2D8, &qword_1002C3720, &type metadata accessor for TLV);
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
  v8 = (v3[3] >> 1) - v3[2];
  result = type metadata accessor for TLV();
  if (v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = v3[2];
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    v3[2] = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_1000439AC(char *result, char *a2)
{
  v5 = a2 - result;
  if (result)
  {
    v6 = a2 - result;
  }

  else
  {
    v6 = 0;
  }

  v7 = *v3;
  v8 = *(*v3 + 2);
  v9 = v8 + v6;
  if (__OFADD__(v8, v6))
  {
    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v4 = a2;
  v2 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (!result || (v10 = *(v7 + 3) >> 1, v10 < v9))
  {
    if (v8 <= v9)
    {
      v11 = v8 + v6;
    }

    else
    {
      v11 = v8;
    }

    result = sub_10004DDCC(result, v11, 1, v7, &qword_10039E2E0, &qword_1002C1720);
    v7 = result;
    v10 = *(result + 3) >> 1;
  }

  v12 = *(v7 + 2);
  v13 = v10 - v12;
  v14 = 0;
  if (v2 && v4 && v4 > v2 && v10 != v12)
  {
    if (v5 >= v13)
    {
      v14 = v10 - v12;
    }

    else
    {
      v14 = v5;
    }

    if (v14 < 0)
    {
      __break(1u);
      return result;
    }

    result = memmove(&v7[v12 + 32], v2, v14);
    v2 += v14;
  }

  if (v14 < v6)
  {
    goto LABEL_34;
  }

  if (!v14)
  {
    goto LABEL_24;
  }

  v15 = *(v7 + 2);
  v16 = __OFADD__(v15, v14);
  v17 = v15 + v14;
  if (!v16)
  {
    *(v7 + 2) = v17;
LABEL_24:
    if (v14 != v13 || v2 == 0 || v2 == v4)
    {
      goto LABEL_32;
    }

    goto LABEL_36;
  }

LABEL_35:
  __break(1u);
LABEL_36:
  v20 = *(v7 + 2);
  v23 = *v2;
  v21 = v2 + 1;
  v22 = v23;
  v24 = &qword_10039E2E0;
  while (1)
  {
    v25 = *(v7 + 3);
    v26 = v25 >> 1;
    if ((v25 >> 1) < v20 + 1)
    {
      break;
    }

    if (v20 < v26)
    {
      goto LABEL_40;
    }

LABEL_37:
    *(v7 + 2) = v20;
  }

  v29 = v7;
  v30 = v24;
  result = sub_10004DDCC((v25 > 1), v20 + 1, 1, v29, v24, &qword_1002C1720);
  v24 = v30;
  v7 = result;
  v26 = *(result + 3) >> 1;
  if (v20 >= v26)
  {
    goto LABEL_37;
  }

LABEL_40:
  v27 = v20 + 32;
  while (1)
  {
    v7[v27] = v22;
    if (v21 == v4)
    {
      break;
    }

    v28 = *v21++;
    v22 = v28;
    if (++v27 - v26 == 32)
    {
      v20 = v26;
      goto LABEL_37;
    }
  }

  *(v7 + 2) = v27 - 31;
LABEL_32:
  *v3 = v7;
  return result;
}

uint64_t sub_100043B8C(uint64_t result)
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
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_10004D4B0(result, v10, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_100043C80(uint64_t result)
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
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_10004D96C(result, v10, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_100043D74()
{
  v0 = type metadata accessor for Logger();
  sub_100003FD8(v0, qword_10039FC08);
  sub_10000403C(v0, qword_10039FC08);
  sub_10000411C(0, &qword_1003A26E0, SPRLogger_ptr);
  return static SPRLogger.configurator.getter();
}

void sub_100043DE0(char *a1@<X8>)
{
  sub_100046348();
  if (v1)
  {
    if (qword_10039D368 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_10000403C(v3, qword_10039FC08);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "certificates are revoked", v6, 2u);
    }

    v7 = 1;
  }

  else
  {

    if (qword_10039D368 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_10000403C(v8, qword_10039FC08);
    v4 = Logger.logObject.getter();
    v9 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v4, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v4, v9, "certificates are not revoked", v10, 2u);
    }

    v7 = 0;
  }

  *a1 = v7;
}

void sub_100043FB8(uint64_t a1@<X0>, BOOL *a2@<X8>, double a3@<D0>)
{
  v69 = a2;
  v6 = sub_100004074(&unk_1003A3BE0, &qword_1002C36F0);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v64 - v10;
  v12 = type metadata accessor for Date();
  v71 = *(v12 - 8);
  v13 = __chkstk_darwin(v12);
  v15 = &v64 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v13);
  v18 = (&v64 - v17);
  __chkstk_darwin(v16);
  v20 = &v64 - v19;
  v21 = sub_100046348();
  v23 = &unk_10039D000;
  if (v3)
  {
    v24 = v69;
  }

  else
  {
    v25 = v21;
    v26 = v22;
    v66 = v11;
    v67 = a1;
    v64 = v15;
    v65 = v9;
    v68 = v20;
    sub_100004074(&qword_10039FE30, &qword_1002C36E8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1002C1660;
    *(inited + 32) = v25;
    v73 = inited;
    sub_100043C80(v26);
    v28 = v73;
    v24 = v73[2];
    if (v24)
    {
      v70 = v12;
      v73 = _swiftEmptyArrayStorage;
      sub_10004E33C(0, v24, 0);
      v29 = 0;
      v30 = v73;
      while (v29 < v28[2])
      {
        v72 = v28[v29 + 4];
        sub_10004473C(&v72, v18);
        v73 = v30;
        v32 = v30[2];
        v31 = v30[3];
        if (v32 >= v31 >> 1)
        {
          sub_10004E33C((v31 > 1), v32 + 1, 1);
          v30 = v73;
        }

        ++v29;
        v30[2] = v32 + 1;
        (*(v71 + 32))(v30 + ((*(v71 + 80) + 32) & ~*(v71 + 80)) + *(v71 + 72) * v32, v18, v70);
        if (v24 == v29)
        {

          v33 = v70;
          goto LABEL_11;
        }
      }

      __break(1u);
      goto LABEL_31;
    }

    v30 = _swiftEmptyArrayStorage;
    v33 = v12;
LABEL_11:
    v34 = v66;
    sub_100044B80(v30, v66);

    v35 = v71;
    v36 = *(v71 + 48);
    v37 = v36(v34, 1, v33);
    v38 = v67;
    if (v37 == 1)
    {
      sub_10000BD44(v34, &unk_1003A3BE0, &qword_1002C36F0);
      if (qword_10039D368 != -1)
      {
        swift_once();
      }

      v39 = type metadata accessor for Logger();
      sub_10000403C(v39, qword_10039FC08);
      v40 = Logger.logObject.getter();
      v41 = static os_log_type_t.error.getter();
      v42 = os_log_type_enabled(v40, v41);
      v24 = v69;
      if (v42)
      {
        v43 = swift_slowAlloc();
        *v43 = 0;
        _os_log_impl(&_mh_execute_header, v40, v41, "Could not get the minimum expiration date", v43, 2u);
      }

      sub_10004F3D0();
      swift_allocError();
      *v44 = 5;
      swift_willThrow();
      v23 = &unk_10039D000;
    }

    else
    {
      v45 = *(v35 + 32);
      v45(v68, v34, v33);
      sub_10000BE18((v38 + 72), *(v38 + 96));
      v46 = v65;
      sub_100043268(v65);
      if (v36(v46, 1, v33) != 1)
      {
        v59 = v64;
        v45(v64, v46, v33);
        v60 = v68;
        Date.timeIntervalSince(_:)();
        v62 = v61;
        v63 = *(v35 + 8);
        v63(v59, v33);
        v63(v60, v33);
        v58 = v62 > a3;
        v24 = v69;
        goto LABEL_28;
      }

      sub_10000BD44(v46, &unk_1003A3BE0, &qword_1002C36F0);
      if (qword_10039D368 != -1)
      {
        swift_once();
      }

      v47 = type metadata accessor for Logger();
      sub_10000403C(v47, qword_10039FC08);
      v48 = Logger.logObject.getter();
      v49 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        *v50 = 0;
        _os_log_impl(&_mh_execute_header, v48, v49, "Could not calculate secure now", v50, 2u);
      }

      sub_10004F3D0();
      swift_allocError();
      *v51 = 6;
      swift_willThrow();
      (*(v35 + 8))(v68, v33);
      v24 = v69;
      v23 = &unk_10039D000;
    }
  }

  if (v23[109] != -1)
  {
LABEL_31:
    swift_once();
  }

  v52 = type metadata accessor for Logger();
  sub_10000403C(v52, qword_10039FC08);
  swift_errorRetain();
  v53 = Logger.logObject.getter();
  v54 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v53, v54))
  {
    v55 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    *v55 = 138412290;
    swift_errorRetain();
    v57 = _swift_stdlib_bridgeErrorToNSError();
    *(v55 + 4) = v57;
    *v56 = v57;
    _os_log_impl(&_mh_execute_header, v53, v54, "Certificate(s) invalid or not found: %@", v55, 0xCu);
    sub_10000BD44(v56, &unk_10039E220, &qword_1002C3D60);
  }

  else
  {
  }

  v58 = 0;
LABEL_28:
  *v24 = v58;
}

void sub_10004473C(unint64_t *a1@<X0>, void **a2@<X8>)
{
  v4 = v2;
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  v12 = *a1 & 0xC000000000000001;
  if (v12)
  {
    goto LABEL_24;
  }

  if (!*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_26;
  }

  for (i = *(v11 + 32); ; i = specialized _ArrayBuffer._getElementSlowPath(_:)())
  {
    v14 = i;
    SecCertificateNotValidAfter();

    Date.init(timeIntervalSinceReferenceDate:)();
    if (qword_10039D368 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_10000403C(v15, qword_10039FC08);
    (*(v8 + 16))(v10, a2, v7);

    v3 = Logger.logObject.getter();
    v16 = static os_log_type_t.debug.getter();

    if (!os_log_type_enabled(v3, v16))
    {

      (*(v8 + 8))(v10, v7);
      return;
    }

    v34 = v16;
    v36 = v4;
    v17 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v38 = v33;
    *v17 = 136315394;
    sub_1000508C0(&qword_10039F3E8, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    v18 = dispatch thunk of CustomStringConvertible.description.getter();
    v20 = v19;
    v21 = *(v8 + 8);
    v8 += 8;
    v21(v10, v7);
    v22 = sub_100008F6C(v18, v20, &v38);

    *(v17 + 4) = v22;
    v35 = v17;
    *(v17 + 12) = 2080;
    if (v11 >> 62)
    {
LABEL_26:
      v7 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v7 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (!v7)
    {
LABEL_20:
      type metadata accessor for CFString(0);
      v26 = Array.description.getter();
      v28 = v27;

      v29 = sub_100008F6C(v26, v28, &v38);

      v30 = v35;
      *(v35 + 14) = v29;
      _os_log_impl(&_mh_execute_header, v3, v34, "Expiration date is: %s for certificate with description:\n%s", v30, 0x16u);
      swift_arrayDestroy();

      return;
    }

    v37 = _swiftEmptyArrayStorage;
    a2 = &v37;
    specialized ContiguousArray.reserveCapacity(_:)();
    if (v7 < 0)
    {
      break;
    }

    v32 = v3;
    v10 = 0;
    v4 = v11 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      v23 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v12)
      {
        v24 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v10 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_23;
        }

        v24 = *(v11 + 8 * v10 + 32);
      }

      v25 = v24;
      if (!CFCopyDescription(v24))
      {
        goto LABEL_28;
      }

      a2 = &v37;
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v8 = v37[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      ++v10;
      if (v23 == v7)
      {
        v3 = v32;
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    ;
  }

  __break(1u);
LABEL_28:
  __break(1u);
}

uint64_t sub_100044B80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Date();
  v5 = __chkstk_darwin(*(v4 - 8));
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = &v22 - v9;
  v11 = *(a1 + 16);
  if (v11)
  {
    v12 = *(v8 + 16);
    v13 = a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v25 = v8;
    v23 = a2;
    v24 = v12;
    v12(&v22 - v9, v13, v4);
    result = v25;
    if (v11 == 1)
    {
LABEL_3:
      v15 = v23;
      (*(result + 32))(v23, v10, v4);
      return (*(v25 + 56))(v15, 0, 1, v4);
    }

    else
    {
      v17 = (v25 + 32);
      v18 = 1;
      while (1)
      {
        v19 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          break;
        }

        v24(v7, v13 + *(result + 72) * v18, v4);
        sub_1000508C0(&qword_10039F3F0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
        v20 = dispatch thunk of static Comparable.< infix(_:_:)();
        v21 = *(v25 + 8);
        if (v20)
        {
          v21(v10, v4);
          (*v17)(v10, v7, v4);
        }

        else
        {
          v21(v7, v4);
        }

        ++v18;
        result = v25;
        if (v19 == v11)
        {
          goto LABEL_3;
        }
      }

      __break(1u);
    }
  }

  else
  {
    v16 = *(v8 + 56);

    return v16(a2, 1, 1, v4);
  }

  return result;
}

uint64_t sub_100044E30()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v13 - v6;
  result = sub_100048C8C(v5);
  if (!v0)
  {
    v10 = result;
    v11 = v9;
    (*(v2 + 32))(v7, v5, v1);
    sub_100004074(&qword_10039FE30, &qword_1002C36E8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1002C1660;
    *(inited + 32) = v10;
    v14 = v11;
    sub_100043C80(inited);
    sub_10004772C(v7, v14);

    return (*(v2 + 8))(v7, v1);
  }

  return result;
}

void sub_100044FBC(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v153 = a5;
  v154._countAndFlagsBits = a2;
  v149 = a4;
  v154._object = a3;
  v133 = a6;
  v152 = type metadata accessor for P521.KeyAgreement.PublicKey();
  v142 = *(v152 - 8);
  v7 = __chkstk_darwin(v152);
  v140 = &v124 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v146 = &v124 - v9;
  v141 = type metadata accessor for P384.KeyAgreement.PublicKey();
  v148 = *(v141 - 8);
  v10 = __chkstk_darwin(v141);
  v139 = &v124 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v145 = &v124 - v12;
  v13 = type metadata accessor for HPKE.Ciphersuite();
  v143 = *(v13 - 8);
  v144 = v13;
  v14 = __chkstk_darwin(v13);
  v137 = &v124 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v136 = &v124 - v17;
  __chkstk_darwin(v16);
  v135 = &v124 - v18;
  v138 = type metadata accessor for P256.KeyAgreement.PublicKey();
  v147 = *(v138 - 8);
  v19 = __chkstk_darwin(v138);
  v134 = &v124 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v22 = &v124 - v21;
  v23 = type metadata accessor for HPKE.Sender();
  v150 = *(v23 - 8);
  v24 = __chkstk_darwin(v23);
  v26 = &v124 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __chkstk_darwin(v24);
  v29 = &v124 - v28;
  v30 = __chkstk_darwin(v27);
  v32 = &v124 - v31;
  __chkstk_darwin(v30);
  v34 = &v124 - v33;
  v35 = type metadata accessor for String.Encoding();
  v151 = *(v35 - 8);
  __chkstk_darwin(v35);
  v37 = &v124 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = v160;
  v39 = sub_1000465A0(200, 0x702D657275636573, 0xEE0064616F6C7961);
  if (v38)
  {
    return;
  }

  v125 = v29;
  v128 = v26;
  v129 = v32;
  v160 = v39;
  v130 = v22;
  v40 = v152;
  v131 = a1;
  v126 = v34;
  v127 = v23;
  v41 = v153;
  v132 = 0;
  v158 = 0xD000000000000024;
  v159 = 0x8000000100347D70;
  String.append(_:)(v154);
  static String.Encoding.utf8.getter();
  v42 = String.data(using:allowLossyConversion:)();
  v44 = v43;

  (*(v151 + 8))(v37, v35);
  if (v44 >> 60 != 15)
  {
    v158 = v42;
    v159 = v44;
    v49 = v160 & 0xC000000000000001;
    v154._countAndFlagsBits = v42;
    v154._object = v44;
    if ((v160 & 0xC000000000000001) != 0)
    {
      v50 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (!*((v160 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_55;
      }

      v50 = *(v160 + 32);
    }

    v51 = v50;
    v52 = SecCertificateRef.publicKey.getter();

    if (!v52)
    {
      goto LABEL_13;
    }

    v53 = SecKeyRef.keySizeInBits.getter();
    v55 = v54;

    if (v55)
    {
      goto LABEL_13;
    }

    if (v53 == 521)
    {
      if (v49)
      {
        v61 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v57 = v41;
      }

      else
      {
        if (!*((v160 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
LABEL_56:
          __break(1u);
          goto LABEL_57;
        }

        v57 = v41;
        v61 = *(v160 + 32);
      }

      v80 = v149;
      v81 = v150;
      v82 = SecCertificateRef.publicKey.getter();

      if (!v82)
      {
        goto LABEL_42;
      }

      v83 = SecKeyRef.externalRepresentation.getter();
      v85 = v84;

      if (v85 >> 60 == 15)
      {
        goto LABEL_42;
      }

      v156 = v83;
      v157 = v85;
      v86 = v146;
      v87 = v132;
      P521.KeyAgreement.PublicKey.init<A>(x963Representation:)();
      v132 = v87;
      if (v87)
      {
        goto LABEL_44;
      }

      v88 = P521.KeyAgreement.PublicKey.x963Representation.getter();
      v90 = v89;
      v91 = Data.sha256Digest.getter();
      v93 = v92;
      sub_100009548(v88, v90);
      v154._object = v91;
      v160 = v93;
      Data.append(_:)();
      v94 = v142;
      (*(v142 + 16))(v140, v86, v40);
      (*(v143 + 16))(v137, v131 + OBJC_IVAR____TtC14softposreaderd18CertificateManager_cipherSuiteForKeySize521, v144);
      sub_1000094F4(v158, v159);
      v95 = v132;
      HPKE.Sender.init<A>(recipientKey:ciphersuite:info:)();
      if (!v95)
      {
        (*(v94 + 8))(v146, v40);
        v112 = v128;
        v114 = v127;
LABEL_50:
        v115 = v160;
        object = v154._object;
        goto LABEL_51;
      }

      sub_100009548(v154._object, v160);
      (*(v94 + 8))(v146, v40);
LABEL_52:
      sub_100009548(v158, v159);
      return;
    }

    if (v53 != 384)
    {
      if (v53 != 256)
      {
LABEL_13:

        sub_100020C74(10001, 0xD000000000000013, 0x8000000100347DA0, 0);
        swift_willThrow();
        sub_100009548(v154._countAndFlagsBits, v154._object);
        return;
      }

      if (v49)
      {
        v56 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v57 = v41;
        goto LABEL_40;
      }

      if (*((v160 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v57 = v41;
        v56 = *(v160 + 32);
LABEL_40:
        v80 = v149;
        v81 = v150;
        v96 = v147;
        v97 = SecCertificateRef.publicKey.getter();

        if (!v97 || (v98 = SecKeyRef.externalRepresentation.getter(), v100 = v99, v97, v100 >> 60 == 15))
        {
LABEL_42:
          sub_100020C74(10005, 0xD000000000000022, 0x8000000100347DC0, 0);
          swift_willThrow();

          sub_100009548(v154._countAndFlagsBits, v154._object);
          return;
        }

        v156 = v98;
        v157 = v100;
        v101 = v130;
        v102 = v132;
        P256.KeyAgreement.PublicKey.init<A>(x963Representation:)();
        v132 = v102;
        if (v102)
        {
LABEL_44:
          sub_100009548(v154._countAndFlagsBits, v154._object);
          return;
        }

        v103 = P256.KeyAgreement.PublicKey.x963Representation.getter();
        v105 = v104;
        v106 = Data.sha256Digest.getter();
        v108 = v107;
        sub_100009548(v103, v105);
        v154._object = v106;
        v160 = v108;
        Data.append(_:)();
        v109 = v101;
        v110 = v138;
        (*(v96 + 16))(v134, v109, v138);
        (*(v143 + 16))(v135, v131 + OBJC_IVAR____TtC14softposreaderd18CertificateManager_cipherSuiteForKeySize256, v144);
        sub_1000094F4(v158, v159);
        v111 = v132;
        HPKE.Sender.init<A>(recipientKey:ciphersuite:info:)();
        if (v111)
        {
          sub_100009548(v154._object, v160);
          (*(v96 + 8))(v130, v110);
          goto LABEL_52;
        }

        (*(v96 + 8))(v130, v110);
        v114 = v127;
        v112 = v129;
        goto LABEL_50;
      }

LABEL_57:
      __break(1u);
      return;
    }

    if (v49)
    {
      v58 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v59 = v131;
      v60 = v148;
      goto LABEL_26;
    }

    v60 = v148;
    if (*((v160 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v58 = *(v160 + 32);
      v59 = v131;
LABEL_26:
      v62 = SecCertificateRef.publicKey.getter();

      if (!v62)
      {
        goto LABEL_42;
      }

      v63 = SecKeyRef.externalRepresentation.getter();
      v65 = v64;

      if (v65 >> 60 == 15)
      {
        goto LABEL_42;
      }

      v156 = v63;
      v157 = v65;
      v66 = v145;
      v67 = v132;
      P384.KeyAgreement.PublicKey.init<A>(x963Representation:)();
      v132 = v67;
      if (v67)
      {
        goto LABEL_44;
      }

      v68 = P384.KeyAgreement.PublicKey.x963Representation.getter();
      v70 = v69;
      v71 = Data.sha256Digest.getter();
      v73 = v72;
      sub_100009548(v68, v70);
      v160 = v73;
      Data.append(_:)();
      v74 = *(v60 + 16);
      v75 = v66;
      v76 = v60;
      v77 = v141;
      v74(v139, v75, v141);
      (*(v143 + 16))(v136, v59 + OBJC_IVAR____TtC14softposreaderd18CertificateManager_cipherSuiteForKeySize384, v144);
      sub_1000094F4(v158, v159);
      v78 = v125;
      v79 = v132;
      HPKE.Sender.init<A>(recipientKey:ciphersuite:info:)();
      if (!v79)
      {
        (*(v76 + 8))(v145, v77);
        v112 = v78;
        v57 = v41;
        v80 = v149;
        v81 = v150;
        object = v71;
        v114 = v127;
        v115 = v160;
LABEL_51:
        v116 = v126;
        (*(v81 + 32))(v126, v112, v114);
        v156 = v80;
        v157 = v57;
        v155 = xmmword_1002BDC30;
        sub_10004F340();
        v117 = HPKE.Sender.seal<A, B>(_:authenticating:)();
        v119 = v118;
        sub_100009548(v155, *(&v155 + 1));
        v120 = v133;
        *v133 = object;
        v120[1] = v115;
        v120[2] = v117;
        v120[3] = v119;
        v121 = HPKE.Sender.encapsulatedKey.getter();
        v123 = v122;
        (*(v81 + 8))(v116, v114);
        sub_100009548(v158, v159);
        v120[4] = v121;
        v120[5] = v123;
        return;
      }

      sub_100009548(v71, v160);
      (*(v76 + 8))(v145, v77);
      goto LABEL_52;
    }

LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  if (qword_10039D368 != -1)
  {
    swift_once();
  }

  v45 = type metadata accessor for Logger();
  sub_10000403C(v45, qword_10039FC08);
  v46 = Logger.logObject.getter();
  v47 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    *v48 = 0;
    _os_log_impl(&_mh_execute_header, v46, v47, "Error converting senderInfo to Data", v48, 2u);
  }

  sub_1000207FC(4000, 0, 0, 0);
  swift_willThrow();
}

uint64_t sub_100045E20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchQoS();
  v9 = *(v16 - 8);
  __chkstk_darwin(v16);
  v11 = v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15[1] = v3[25];
  v12 = swift_allocObject();
  *(v12 + 16) = v3;
  *(v12 + 24) = v4;
  aBlock[4] = sub_1000508B8;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100003974;
  aBlock[3] = &unk_100381370;
  v13 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v17 = _swiftEmptyArrayStorage;
  sub_1000508C0(&qword_10039E2A0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100004074(&qword_10039DD40, &qword_1002BFEC0);
  sub_10001A570(&qword_10039E2B0, &qword_10039DD40, &qword_1002BFEC0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v13);
  (*(v6 + 8))(v8, v5);
  (*(v9 + 8))(v11, v16);
}

void *sub_100046348()
{
  if (qword_10039D368 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000403C(v1, qword_10039FC08);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v4 = 136315394;
    v5 = _typeName(_:qualified:)();
    v7 = sub_100008F6C(v5, v6, &v13);

    *(v4 + 4) = v7;
    *(v4 + 12) = 2080;
    v8 = showFunction(signature:_:)(0xD00000000000001ALL, 0x8000000100348050, _swiftEmptyArrayStorage);
    v10 = sub_100008F6C(v8, v9, &v13);

    *(v4 + 14) = v10;
    _os_log_impl(&_mh_execute_header, v2, v3, "%s.%s", v4, 0x16u);
    swift_arrayDestroy();
  }

  result = sub_1000465A0(200, 0x702D657275636573, 0xEE0064616F6C7961);
  if (!v0)
  {
    v12 = result;
    sub_10004671C(300, 0x696C61762D6E6970uLL, 0xEE006E6F69746164);
    return v12;
  }

  return result;
}

void *sub_1000465A0(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v8 = sub_10004B78C(a1, a2, a3);
  if (!v8)
  {
    goto LABEL_6;
  }

  v9 = v8;
  sub_100004074(&qword_10039FE30, &qword_1002C36E8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1002C1660;
  *(inited + 32) = v9;
  v11 = inited + 32;
  v12 = sub_100046894(inited, a1, a2, a3);
  swift_setDeallocating();
  sub_100050864(v11);
  if (!v4)
  {
    if (v12[2])
    {
      v3 = v12[4];

      return v3;
    }

    v13 = v3[8];
    v3 = sub_10000BE18(v3 + 4, v3[7]);
    v14 = sub_10014D0AC(a1, a2, a3);
    v16 = v15;
    (*(v13 + 48))();
    sub_100009548(v14, v16);
LABEL_6:
    sub_10004F3D0();
    swift_allocError();
    *v17 = 1;
    swift_willThrow();
  }

  return v3;
}

uint64_t sub_10004671C(uint64_t a1, unint64_t a2, void *a3)
{
  v9 = sub_10004BAFC(a1, a2, a3);
  if (!v9)
  {
    goto LABEL_6;
  }

  if (!*(v9 + 2))
  {

LABEL_6:
    sub_10004F3D0();
    swift_allocError();
    *v12 = 1;
    swift_willThrow();
    return v5;
  }

  v10 = v9;
  v11 = sub_100046894(v9, a1, a2, a3);
  if (v4)
  {

    return v5;
  }

  v5 = v11;
  v14 = v11[2];
  if (!v14)
  {

    v5 = v3[7];
    v16 = v3[8];
    sub_10000BE18(v3 + 4, v5);
    v17 = sub_10014D0AC(a1, a2, a3);
    v19 = v18;
    (*(v16 + 48))();
    sub_100009548(v17, v19);
    goto LABEL_6;
  }

  v15 = *(v10 + 2);

  if (v14 != v15)
  {
    sub_10004A978(v5, a1, a2, a3);
  }

  return v5;
}

void *sub_100046894(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    v6 = v4;
    v7 = a4;
    v10 = (a1 + 32);
    v11 = _swiftEmptyArrayStorage;
    do
    {
      v12 = *v10;
      v31 = *v10;

      if (sub_100046C04(&v31, a2, a3, v7, v6))
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v32 = v11;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_10004E31C(0, v11[2] + 1, 1);
          v11 = v32;
        }

        v15 = v11[2];
        v14 = v11[3];
        if (v15 >= v14 >> 1)
        {
          sub_10004E31C((v14 > 1), v15 + 1, 1);
          v11 = v32;
        }

        v11[2] = v15 + 1;
        v11[v15 + 4] = v12;
        v7 = a4;
        v6 = v4;
      }

      else
      {
      }

      ++v10;
      --v5;
    }

    while (v5);
  }

  else
  {
    v11 = _swiftEmptyArrayStorage;
  }

  if (v11[2])
  {
    if (qword_10039D368 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_10000403C(v16, qword_10039FC08);

    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v32 = v20;
      *v19 = 136315138;
      v21 = Array.debugDescription.getter();
      v23 = sub_100008F6C(v21, v22, &v32);

      *(v19 + 4) = v23;
      _os_log_impl(&_mh_execute_header, v17, v18, "Valid certificates: %s", v19, 0xCu);
      sub_10000959C(v20);
    }
  }

  else
  {

    if (qword_10039D368 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    sub_10000403C(v24, qword_10039FC08);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&_mh_execute_header, v25, v26, "No valid certificates", v27, 2u);
    }

    sub_10004F3D0();
    swift_allocError();
    *v28 = 0;
    swift_willThrow();
  }

  return v11;
}

uint64_t sub_100046C04(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v8 = *a1;
  if (a2 == 200)
  {
    if (a3 == 0x702D657275636573 && a4 == 0xEE0064616F6C7961 || (v14 = a5, v15 = _stringCompareWithSmolCheck(_:_:expecting:)(), a5 = v14, (v15 & 1) != 0))
    {
      v11 = a5[17];
      v12 = a5[18];
      v13 = a5 + 14;
LABEL_11:
      sub_10000BE18(v13, v11);
      (*(v12 + 16))(v8, v11, v12);
      if (!v5)
      {
        return 1;
      }

      if (qword_10039D368 != -1)
      {
        swift_once();
      }

      v16 = type metadata accessor for Logger();
      sub_10000403C(v16, qword_10039FC08);

      swift_errorRetain();

      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        *v19 = 136315650;
        *(v19 + 4) = sub_100008F6C(a3, a4, &v31);
        *(v19 + 12) = 2080;
        swift_errorRetain();
        sub_100004074(&unk_1003A3C00, &unk_1002C16C0);
        v20 = String.init<A>(describing:)();
        v22 = sub_100008F6C(v20, v21, &v31);

        *(v19 + 14) = v22;
        *(v19 + 22) = 2080;
        v23 = sub_100156088(v8);
        v25 = sub_100008F6C(v23, v24, &v31);

        *(v19 + 24) = v25;
        _os_log_impl(&_mh_execute_header, v17, v18, "Certificate for %s failed verification: %s\nCertificate description: %s", v19, 0x20u);
        swift_arrayDestroy();
      }

      else
      {
      }

      return 0;
    }
  }

  else if (a2 == 300)
  {
    if (a3 == 7596553831663430000 && a4 == 0xEE006E6F69746164 || (v9 = a5, v10 = _stringCompareWithSmolCheck(_:_:expecting:)(), a5 = v9, (v10 & 1) != 0))
    {
      v11 = a5[22];
      v12 = a5[23];
      v13 = a5 + 19;
      goto LABEL_11;
    }
  }

  if (qword_10039D368 != -1)
  {
    swift_once();
  }

  v26 = type metadata accessor for Logger();
  sub_10000403C(v26, qword_10039FC08);
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&_mh_execute_header, v27, v28, "Unexpected CertificateRole", v29, 2u);
  }

  return 0;
}

uint64_t sub_100046FE8()
{
  v2 = v1;
  v3 = v0;
  v4 = sub_100004074(&unk_1003A3BE0, &qword_1002C36F0);
  v5 = __chkstk_darwin(v4 - 8);
  v57 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = &v57 - v7;
  v9 = type metadata accessor for Date();
  v62 = *(v9 - 8);
  v63 = v9;
  v10 = __chkstk_darwin(v9);
  v12 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v58 = &v57 - v14;
  __chkstk_darwin(v13);
  v16 = &v57 - v15;
  if (qword_10039D368 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  v61 = sub_10000403C(v17, qword_10039FC08);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.debug.getter();
  v20 = os_log_type_enabled(v18, v19);
  v60 = v12;
  if (v20)
  {
    v21 = swift_slowAlloc();
    v59 = v16;
    v22 = v21;
    v64 = swift_slowAlloc();
    *v22 = 136315394;
    v23 = _typeName(_:qualified:)();
    v25 = sub_100008F6C(v23, v24, &v64);

    *(v22 + 4) = v25;
    *(v22 + 12) = 2080;
    v26 = showFunction(signature:_:)(0xD000000000000015, 0x8000000100348030, _swiftEmptyArrayStorage);
    v28 = sub_100008F6C(v26, v27, &v64);

    *(v22 + 14) = v28;
    v2 = v1;
    _os_log_impl(&_mh_execute_header, v18, v19, "%s.%s", v22, 0x16u);
    swift_arrayDestroy();

    v16 = v59;
  }

  v29 = v2;
  v31 = sub_100046348();
  if (v29)
  {
    goto LABEL_6;
  }

  v36 = v8;
  v37 = v30;
  sub_10004B520(v36);
  v38 = *(v62 + 48);
  if (v38(v36, 1, v63) == 1)
  {
    sub_10000BD44(v36, &unk_1003A3BE0, &qword_1002C36F0);
    sub_10000BE18((v3 + 72), *(v3 + 96));
    v39 = v57;
    sub_100043268(v57);
    if (v38(v39, 1, v63) == 1)
    {
      sub_10000BD44(v39, &unk_1003A3BE0, &qword_1002C36F0);
      v40 = Logger.logObject.getter();
      v41 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        *v42 = 0;
        _os_log_impl(&_mh_execute_header, v40, v41, "Could not calculate secure now", v42, 2u);
      }

      sub_10004F3D0();
      swift_allocError();
      *v43 = 4;
      swift_willThrow();
LABEL_6:
      v59 = v31;
      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        *v34 = 0;
        _os_log_impl(&_mh_execute_header, v32, v33, "certififcates are not valid, renew...", v34, 2u);
      }

      v35 = v60;
      v44 = sub_100048C8C(v60);
      v46 = v45;

      if (!v29)
      {
      }

      (*(v62 + 32))(v16, v35, v63);
      v37 = v46;
      v31 = v44;
      goto LABEL_24;
    }

    v59 = v16;
    v47 = *(v62 + 32);
    v47(v58, v39, v63);
    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      *v50 = 0;
      _os_log_impl(&_mh_execute_header, v48, v49, "Could not load certificate rotation date, using secure now", v50, 2u);
    }

    v51 = v59;
    v47(v59, v58, v63);
    v16 = v51;
  }

  else
  {
    (*(v62 + 32))(v16, v36, v63);
  }

  v52 = Logger.logObject.getter();
  v53 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    *v54 = 0;
    _os_log_impl(&_mh_execute_header, v52, v53, "all certififcates are valid", v54, 2u);
  }

LABEL_24:
  sub_100004074(&qword_10039FE30, &qword_1002C36E8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1002C1660;
  *(inited + 32) = v31;
  v64 = v37;
  sub_100043C80(inited);
  sub_10004772C(v16, v64);

  return (*(v62 + 8))(v16, v63);
}

uint64_t sub_10004772C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v65 = a2;
  v69 = *v2;
  v5 = sub_100004074(&unk_1003A3BE0, &qword_1002C36F0);
  __chkstk_darwin(v5 - 8);
  v66 = &v57 - v6;
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v63 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v13 = &v57 - v12;
  v14 = __chkstk_darwin(v11);
  v68 = &v57 - v15;
  __chkstk_darwin(v14);
  v17 = &v57 - v16;
  if (qword_10039D368 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  v19 = sub_10000403C(v18, qword_10039FC08);
  v20 = *(v8 + 16);
  v20(v17, a1, v7);
  v21 = Logger.logObject.getter();
  v59 = static os_log_type_t.debug.getter();
  v22 = os_log_type_enabled(v21, v59);
  v64 = v3;
  v67 = a1;
  v61 = v8 + 16;
  v62 = v19;
  v60 = v20;
  if (v22)
  {
    v23 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    v71 = v58;
    *v23 = 136315394;
    v24 = _typeName(_:qualified:)();
    v26 = sub_100008F6C(v24, v25, &v71);

    *(v23 + 4) = v26;
    *(v23 + 12) = 2080;
    sub_100004074(&qword_1003A6740, &unk_1002C2930);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_1002C1660;
    *(v27 + 56) = v7;
    v28 = sub_10000BE5C((v27 + 32));
    v20(v28, v17, v7);
    v29 = showFunction(signature:_:)(0xD000000000000030, 0x8000000100347FF0, v27);
    v31 = v30;

    v69 = *(v8 + 8);
    v69(v17, v7);
    v32 = sub_100008F6C(v29, v31, &v71);
    v33 = v68;

    *(v23 + 14) = v32;
    _os_log_impl(&_mh_execute_header, v21, v59, "%s.%s", v23, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v69 = *(v8 + 8);
    v69(v17, v7);
    v33 = v68;
  }

  v34 = v65;
  v35 = *(v65 + 16);
  v36 = _swiftEmptyArrayStorage;
  if (v35)
  {
    v71 = _swiftEmptyArrayStorage;
    sub_10004E33C(0, v35, 0);
    v36 = v71;
    v37 = (v34 + 32);
    do
    {
      v70 = *v37;
      sub_100047E54(&v70, v13);
      v71 = v36;
      v39 = v36[2];
      v38 = v36[3];
      if (v39 >= v38 >> 1)
      {
        sub_10004E33C((v38 > 1), v39 + 1, 1);
        v36 = v71;
      }

      v36[2] = v39 + 1;
      (*(v8 + 32))(v36 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v39, v13, v7);
      ++v37;
      --v35;
    }

    while (v35);
    v33 = v68;
  }

  v40 = v66;
  sub_100044B80(v36, v66);
  result = (*(v8 + 48))(v40, 1, v7);
  v42 = v67;
  if (result == 1)
  {
    __break(1u);
  }

  else
  {

    sub_1000508C0(&qword_10039F3F0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    if (dispatch thunk of static Comparable.< infix(_:_:)())
    {
      v43 = v33;
      v44 = v40;
    }

    else
    {
      v43 = v33;
      v44 = v42;
    }

    v45 = v60;
    v60(v43, v44, v7);
    v46 = v40;
    v47 = v69;
    v69(v46, v7);
    v48 = v63;
    v45(v63, v33, v7);
    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v71 = v52;
      *v51 = 136315138;
      sub_1000508C0(&qword_10039F3E8, &type metadata accessor for Date, &protocol conformance descriptor for Date);
      v53 = dispatch thunk of CustomStringConvertible.description.getter();
      v55 = v54;
      v69(v48, v7);
      v56 = sub_100008F6C(v53, v55, &v71);

      *(v51 + 4) = v56;
      _os_log_impl(&_mh_execute_header, v49, v50, "renewalDate is min(rotationDate, expirationDates): %s", v51, 0xCu);
      sub_10000959C(v52);

      v47 = v69;
    }

    else
    {

      v47(v48, v7);
    }

    sub_100048180(v33);
    return (v47)(v33, v7);
  }

  return result;
}

void sub_100047E54(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  if ((v9 & 0xC000000000000001) != 0)
  {
    v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v10 = *(v9 + 32);
  }

  v11 = v10;
  SecCertificateNotValidAfter();

  Date.init(timeIntervalSinceReferenceDate:)();
  if (qword_10039D368 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_10000403C(v12, qword_10039FC08);
  (*(v6 + 16))(v8, a2, v5);

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v26 = v24;
    *v15 = 136315394;
    sub_1000508C0(&qword_10039F3E8, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    v25 = v2;
    v18 = v17;
    (*(v6 + 8))(v8, v5);
    v19 = sub_100008F6C(v16, v18, &v26);

    *(v15 + 4) = v19;
    *(v15 + 12) = 2080;
    v20 = sub_100156088(v9);
    v22 = sub_100008F6C(v20, v21, &v26);

    *(v15 + 14) = v22;
    _os_log_impl(&_mh_execute_header, v13, v14, "Expiration date is: %s for certificate with description:\n%s", v15, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    (*(v6 + 8))(v8, v5);
  }
}

void sub_100048180(uint64_t a1)
{
  v2 = v1;
  v44 = a1;
  v3 = type metadata accessor for DispatchTime();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v47 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v48 = &v42 - v7;
  v45 = type metadata accessor for DispatchWorkItemFlags();
  __chkstk_darwin(v45);
  v46 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100004074(&unk_1003A3BE0, &qword_1002C36F0);
  __chkstk_darwin(v9 - 8);
  v11 = &v42 - v10;
  v12 = type metadata accessor for Date();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v49 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10039D368 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_10000403C(v15, qword_10039FC08);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.debug.getter();
  v18 = os_log_type_enabled(v16, v17);
  v50 = v12;
  if (v18)
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v42 = v3;
    v43 = v4;
    aBlock[0] = v20;
    *v19 = 136315394;
    v21 = _typeName(_:qualified:)();
    v23 = v13;
    v24 = sub_100008F6C(v21, v22, aBlock);

    *(v19 + 4) = v24;
    *(v19 + 12) = 2080;
    v25 = showFunction(signature:_:)(0xD000000000000022, 0x8000000100347FC0, _swiftEmptyArrayStorage);
    v27 = sub_100008F6C(v25, v26, aBlock);

    *(v19 + 14) = v27;
    v13 = v23;
    _os_log_impl(&_mh_execute_header, v16, v17, "%s.%s", v19, 0x16u);
    swift_arrayDestroy();
    v3 = v42;
    v4 = v43;

    v12 = v50;
  }

  sub_10000BE18(v2 + 9, v2[12]);
  sub_100043268(v11);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_10000BD44(v11, &unk_1003A3BE0, &qword_1002C36F0);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&_mh_execute_header, v28, v29, "Failed to schedule renewal. Could not calculate secure now", v30, 2u);
    }
  }

  else
  {
    (*(v13 + 32))(v49, v11, v12);
    Date.timeIntervalSince(_:)();
    v32 = v31;

    dispatch thunk of DispatchWorkItem.cancel()();

    v33 = swift_allocObject();
    swift_weakInit();
    v34 = swift_allocObject();
    *(v34 + 16) = v33;
    *(v34 + 24) = v32;
    aBlock[4] = sub_100050840;
    aBlock[5] = v34;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100003974;
    aBlock[3] = &unk_100381320;
    _Block_copy(aBlock);
    v51 = _swiftEmptyArrayStorage;
    sub_1000508C0(&qword_10039E2A0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);

    v35 = v13;
    sub_100004074(&qword_10039DD40, &qword_1002BFEC0);
    sub_10001A570(&qword_10039E2B0, &qword_10039DD40, &qword_1002BFEC0, &protocol conformance descriptor for [A]);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    type metadata accessor for DispatchWorkItem();
    swift_allocObject();
    v36 = DispatchWorkItem.init(flags:block:)();

    v2[24] = v36;

    v38 = v2[12];
    v37 = v2[13];
    sub_10000BE18(v2 + 9, v38);
    v39 = v47;
    (*(*(v37 + 8) + 16))(v38);
    v40 = v48;
    + infix(_:_:)();
    v41 = *(v4 + 8);
    v41(v39, v3);

    OS_dispatch_queue.asyncAfter(deadline:execute:)();

    v41(v40, v3);
    (*(v35 + 8))(v49, v50);
  }
}

uint64_t sub_1000488A8(uint64_t a1, double a2)
{
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v27 - v8;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (a2 <= 0.0)
    {
      if (qword_10039D368 != -1)
      {
        swift_once();
      }

      v20 = type metadata accessor for Logger();
      sub_10000403C(v20, qword_10039FC08);
      v12 = Logger.logObject.getter();
      v21 = static os_log_type_t.default.getter();
      if (!os_log_type_enabled(v12, v21))
      {
        goto LABEL_12;
      }

      v22 = swift_slowAlloc();
      *v22 = 0;
      v15 = "Renewing certificates now";
      v16 = v21;
      v17 = v12;
      v18 = v22;
      v19 = 2;
    }

    else
    {
      if (qword_10039D368 != -1)
      {
        swift_once();
      }

      v11 = type metadata accessor for Logger();
      sub_10000403C(v11, qword_10039FC08);
      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.default.getter();
      if (!os_log_type_enabled(v12, v13))
      {
        goto LABEL_12;
      }

      v14 = swift_slowAlloc();
      *v14 = 134217984;
      *(v14 + 4) = a2;
      v15 = "Will renew certificates after %f s";
      v16 = v13;
      v17 = v12;
      v18 = v14;
      v19 = 12;
    }

    _os_log_impl(&_mh_execute_header, v17, v16, v15, v18, v19);

LABEL_12:

    v23 = sub_100048C8C(v7);
    v25 = v24;
    (*(v4 + 32))(v9, v7, v3);
    sub_100004074(&qword_10039FE30, &qword_1002C36E8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1002C1660;
    *(inited + 32) = v23;
    v27 = v25;
    sub_100043C80(inited);
    sub_10004772C(v9, v27);

    return (*(v4 + 8))(v9, v3);
  }

  return result;
}

uint64_t sub_100048C8C(unint64_t a1)
{
  v2 = v1;
  v101 = *v1;
  countAndFlagsBits = type metadata accessor for Date();
  object = *(countAndFlagsBits - 8);
  __chkstk_darwin(countAndFlagsBits);
  v98 = &v94 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100004074(&qword_10039E288, &unk_1002C1700);
  __chkstk_darwin(v7 - 8);
  v108 = (&v94 - v8);
  v104 = type metadata accessor for DispatchTime();
  v106 = *(v104 - 8);
  __chkstk_darwin(v104);
  *&v105 = &v94 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100004074(&qword_10039E290, &unk_1002C37C0);
  v11 = __chkstk_darwin(v10 - 8);
  *&v102 = &v94 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v94 - v13;
  v110 = type metadata accessor for StopWatch(0);
  v103 = *(v110 - 1);
  __chkstk_darwin(v110);
  v16 = &v94 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10039D368 != -1)
  {
    goto LABEL_52;
  }

  while (1)
  {
    v17 = type metadata accessor for Logger();
    sub_10000403C(v17, qword_10039FC08);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.info.getter();
    v20 = os_log_type_enabled(v18, v19);
    v107 = v2;
    v96 = countAndFlagsBits;
    v97 = a1;
    v95 = object;
    if (v20)
    {
      v21 = swift_slowAlloc();
      v111[0] = swift_slowAlloc();
      *v21 = 136315394;
      v22 = _typeName(_:qualified:)();
      v24 = sub_100008F6C(v22, v23, v111);

      *(v21 + 4) = v24;
      *(v21 + 12) = 2080;
      v25 = showFunction(signature:_:)(0xD000000000000013, 0x8000000100347FA0, _swiftEmptyArrayStorage);
      v27 = sub_100008F6C(v25, v26, v111);

      *(v21 + 14) = v27;
      v2 = v107;
      _os_log_impl(&_mh_execute_header, v18, v19, "%s.%s", v21, 0x16u);
      swift_arrayDestroy();
    }

    v101 = *(*(v2 + 248) + 56);
    os_unfair_lock_lock(v101 + 8);
    v28 = v106;
    v29 = *(v106 + 56);
    v30 = v104;
    v29(v14, 1, 1, v104);
    v31 = v102;
    v29(v102, 1, 1, v30);
    v29(v16, 1, 1, v30);
    v32 = *(v110 + 5);
    v29(v16 + v32, 1, 1, v30);
    sub_10001A178(v14, v16);
    sub_10001A178(v31, v16 + v32);
    v33 = v105;
    static DispatchTime.now()();
    sub_10000BD44(v16, &qword_10039E290, &unk_1002C37C0);
    (*(v28 + 32))(v16, v33, v30);
    v34 = v30;
    v35 = v107;
    v29(v16, 0, 1, v34);
    v36 = v108;
    sub_10001A1E8(v16, v108);
    (*(v103 + 56))(v36, 0, 1, v110);
    v37 = v101;
    sub_10002D278(v36, 0x5474736575716552, 0xEB00000000656D69);
    sub_10001A24C(v16);
    os_unfair_lock_unlock(v37 + 8);
    v115 = 0;
    v38 = v109;
    v39 = sub_100049D10();
    v41 = v40;
    v42 = v38;
    v104 = v39;
    if (v38)
    {
      v43 = v35[29];
      v44 = v35[30];
      sub_10000BE18(v35 + 26, v43);
      sub_100004074(&unk_1003A26F0, &unk_1002C3D70);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1002C1660;
      *(inited + 32) = 0x726F727265;
      *(inited + 40) = 0xE500000000000000;
      v111[0] = v38;
      swift_errorRetain();
      sub_100004074(&unk_1003A3C00, &unk_1002C16C0);
      v46 = String.init<A>(describing:)();
      *(inited + 72) = &type metadata for String;
      *(inited + 80) = &protocol witness table for String;
      *(inited + 48) = v46;
      *(inited + 56) = v47;
      v48 = sub_100184010(inited);
      swift_setDeallocating();
      sub_10000BD44(inited + 32, &qword_10039FEC8, &unk_1002C37B0);
      sub_1000C2288(0xAu, v48, v43, v44);
      v2 = v107;

LABEL_37:
      _s3__C4CodeOMa_2(0);
      v111[0] = 2034;
      swift_errorRetain();
      sub_1000508C0(&qword_10039DBE8, _s3__C4CodeOMa_2, &unk_1002BFC28);
      v88 = static _ErrorCodeProtocol.~= infix(_:_:)();

      if (v88)
      {
        v89 = 4;
      }

      else
      {
        v111[0] = 2000;
        swift_errorRetain();
        v90 = static _ErrorCodeProtocol.~= infix(_:_:)();

        if (v90)
        {
          v89 = 1;
        }

        else
        {
          v111[0] = 2025;
          swift_errorRetain();
          v91 = static _ErrorCodeProtocol.~= infix(_:_:)();

          if ((v91 & 1) != 0 || (v111[0] = v42, swift_errorRetain(), sub_100004074(&unk_1003A3C00, &unk_1002C16C0), v92 = swift_dynamicCast(), v93 = v114, , v92) && v93 == 2)
          {
            v89 = 2;
          }

          else
          {
            v89 = 3;
          }
        }
      }

      v115 = v89;
      swift_willThrow();
      goto LABEL_47;
    }

    sub_10004A5B0(v49, 200, 0x702D657275636573, 0xEE0064616F6C7961);
    v103 = v41;
    v106 = 0;

    sub_10000CCE4((v35 + 26), v111);
    v14 = v112;
    v50 = v113;
    sub_10000BE18(v111, v112);
    *&v105 = sub_100004074(&unk_1003A26F0, &unk_1002C3D70);
    result = swift_initStackObject();
    v52 = result;
    v102 = xmmword_1002C1670;
    *(result + 16) = xmmword_1002C1670;
    *(result + 32) = 1701605234;
    a1 = result + 32;
    *(result + 72) = &type metadata for Int;
    *(result + 80) = &protocol witness table for Int;
    *(result + 40) = 0xE400000000000000;
    *(result + 48) = 200;
    *(result + 88) = 0x747365676964;
    *(result + 96) = 0xE600000000000000;
    v110 = v50;
    if ((v49 & 0xC000000000000001) != 0)
    {
      v53 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      goto LABEL_9;
    }

    if (!*((v49 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      break;
    }

    v53 = *(v49 + 32);
LABEL_9:
    v54 = v53;
    v55 = SecCertificateRef.fingerprint.getter();
    v16 = v56;

    v57 = Data.base64EncodedString(options:)(0);
    sub_100009548(v55, v16);
    *(v52 + 128) = &type metadata for String;
    *(v52 + 136) = &protocol witness table for String;
    *(v52 + 104) = v57;
    v58 = sub_100184010(v52);
    swift_setDeallocating();
    countAndFlagsBits = sub_100004074(&qword_10039FEC8, &unk_1002C37B0);
    swift_arrayDestroy();
    sub_1000C2288(9u, v58, v14, v110);

    sub_10000959C(v111);
    v59 = v103;
    v60 = v106;
    v2 = v107;
    sub_10004A978(v103, 300, 7596553831663430000, 0xEE006E6F69746164);
    v106 = v60;
    if (!v60)
    {
      v61 = *(v59 + 16);

      v101 = v61;
      if (v61)
      {
        object = 0;
        v99 = countAndFlagsBits;
        v100 = v59 + 32;
        do
        {
          if (object >= *(v59 + 16))
          {
            goto LABEL_50;
          }

          v14 = *(v100 + 8 * object);
          v62 = *(v2 + 232);
          a1 = *(v2 + 240);
          countAndFlagsBits = sub_10000BE18((v2 + 208), v62);
          v2 = swift_initStackObject();
          *(v2 + 16) = v102;
          *(v2 + 32) = 1701605234;
          *(v2 + 72) = &type metadata for Int;
          *(v2 + 40) = 0xE400000000000000;
          *(v2 + 48) = 300;
          *(v2 + 80) = &protocol witness table for Int;
          *(v2 + 88) = 0x747365676964;
          *(v2 + 96) = 0xE600000000000000;
          v109 = a1;
          v110 = v62;
          v108 = countAndFlagsBits;
          if ((v14 & 0xC000000000000001) != 0)
          {

            v64 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (!*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_51;
            }

            v63 = *(v14 + 32);

            v64 = v63;
          }

          v65 = v64;
          ++object;
          v16 = SecCertificateRef.fingerprint.getter();
          countAndFlagsBits = v66;

          v67 = Data.base64EncodedString(options:)(0);
          sub_100009548(v16, countAndFlagsBits);
          *(v2 + 128) = &type metadata for String;
          *(v2 + 136) = &protocol witness table for String;
          *(v2 + 104) = v67;
          a1 = sub_100184010(v2);
          swift_setDeallocating();
          swift_arrayDestroy();
          sub_1000C2288(9u, a1, v110, v109);

          v60 = v106;
          v2 = v107;
          v59 = v103;
        }

        while (v101 != object);
      }

      countAndFlagsBits = v98;
      sub_10004B00C(v98);
      if (!v60)
      {
        (*(v95 + 32))(v97, countAndFlagsBits, v96);
LABEL_47:
        sub_100049BD0(v2, &v115);
        return v104;
      }

      v106 = v60;
    }

    object = v104;
    sub_100004074(&qword_10039FE30, &qword_1002C36E8);
    v68 = swift_initStackObject();
    *(v68 + 16) = xmmword_1002C1660;
    *(v68 + 32) = object;
    v111[0] = v59;
    sub_100043C80(v68);
    v69 = v111[0];
    v14 = *(v111[0] + 16);
    if (!v14)
    {

      v70 = _swiftEmptyArrayStorage;
LABEL_32:
      v79 = v70[2];
      v42 = v106;
      if (v79)
      {
        v110 = v70;
        v80 = v70 + 5;
        v105 = xmmword_1002C1670;
        do
        {
          v82 = *(v80 - 1);
          v81 = *v80;
          v83 = v107[29];
          v109 = v107[30];
          v108 = sub_10000BE18(v107 + 26, v83);
          sub_100004074(&unk_1003A26F0, &unk_1002C3D70);
          v84 = swift_initStackObject();
          *(v84 + 16) = v105;
          *(v84 + 32) = 0x747365676964;
          *(v84 + 72) = &type metadata for String;
          *(v84 + 40) = 0xE600000000000000;
          *(v84 + 48) = v82;
          v42 = v106;
          *(v84 + 56) = v81;
          *(v84 + 80) = &protocol witness table for String;
          *(v84 + 88) = 0x726F727265;
          *(v84 + 96) = 0xE500000000000000;
          v111[0] = v42;

          swift_errorRetain();
          sub_100004074(&unk_1003A3C00, &unk_1002C16C0);
          v85 = String.init<A>(describing:)();
          *(v84 + 128) = &type metadata for String;
          *(v84 + 136) = &protocol witness table for String;
          *(v84 + 104) = v85;
          *(v84 + 112) = v86;
          v87 = sub_100184010(v84);
          swift_setDeallocating();
          sub_100004074(&qword_10039FEC8, &unk_1002C37B0);
          swift_arrayDestroy();
          sub_1000C2288(0xAu, v87, v83, v109);

          v80 += 2;
          --v79;
        }

        while (v79);

        v2 = v107;
      }

      else
      {
      }

      goto LABEL_37;
    }

    v111[0] = _swiftEmptyArrayStorage;
    sub_10004E2DC(0, v14, 0);
    v2 = 32;
    v70 = v111[0];
    v109 = v69;
    while (1)
    {
      a1 = *(v69 + v2);
      v110 = v70;
      if ((a1 & 0xC000000000000001) != 0)
      {

        v72 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        goto LABEL_26;
      }

      if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        break;
      }

      v71 = *(a1 + 32);

      v72 = v71;
LABEL_26:
      v73 = v72;
      v74 = SecCertificateRef.fingerprint.getter();
      v76 = v75;

      v77 = Data.base64EncodedString(options:)(0);
      countAndFlagsBits = v77._countAndFlagsBits;
      object = v77._object;
      sub_100009548(v74, v76);

      v70 = v110;
      v111[0] = v110;
      v16 = v110[2];
      v78 = v110[3];
      if (v16 >= v78 >> 1)
      {
        sub_10004E2DC((v78 > 1), v16 + 1, 1);
        v70 = v111[0];
      }

      v70[2] = v16 + 1;
      *&v70[2 * v16 + 4] = v77;
      v2 += 8;
      --v14;
      v69 = v109;
      if (!v14)
      {

        v2 = v107;
        goto LABEL_32;
      }
    }

    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    swift_once();
  }

  __break(1u);
  return result;
}