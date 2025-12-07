uint64_t sub_100137614(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v4 = type metadata accessor for DIPError.Code();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();

  return _swift_task_switch(sub_1001376D8, 0, 0);
}

uint64_t sub_1001376D8()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  v4 = swift_allocObject();
  v0[9] = v4;
  v4[2] = v3;
  v4[3] = v2;
  v4[4] = v1;
  v5 = swift_allocObject();
  v0[10] = v5;
  *(v5 + 16) = sub_10013FCC8;
  *(v5 + 24) = v4;

  v6 = swift_task_alloc();
  v0[11] = v6;
  v7 = sub_100004E70(&qword_100203AF0, &qword_1001AE460);
  *v6 = v0;
  v6[1] = sub_100137830;

  return AsyncCoreDataContainer.performRead<A>(_:)(v0 + 2, sub_100141890, v5, v7);
}

uint64_t sub_100137830()
{
  v2 = *v1;
  v2[12] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100137998, 0, 0);
  }

  else
  {

    v3 = v2[2];

    v4 = v2[1];

    return v4(v3);
  }
}

uint64_t sub_100137998()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];

  (*(v2 + 104))(v1, enum case for DIPError.Code.internalError(_:), v3);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_10013FC40(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v4 = v0[1];

  return v4();
}

uint64_t sub_100137B2C(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  v4 = type metadata accessor for DIPError.Code();
  v3[8] = v4;
  v3[9] = *(v4 - 8);
  v3[10] = swift_task_alloc();

  return _swift_task_switch(sub_100137BF0, 0, 0);
}

uint64_t sub_100137BF0()
{
  v1 = v0[6];
  v2 = v0[5];
  v3 = swift_allocObject();
  v0[11] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = swift_allocObject();
  v0[12] = v4;
  *(v4 + 16) = sub_10013E4A4;
  *(v4 + 24) = v3;

  v5 = swift_task_alloc();
  v0[13] = v5;
  v6 = sub_100004E70(&qword_100203AC0, &qword_1001AE3F0);
  *v5 = v0;
  v5[1] = sub_100137D3C;

  return AsyncCoreDataContainer.performRead<A>(_:)(v0 + 2, sub_1000DCAB0, v4, v6);
}

uint64_t sub_100137D3C()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_100137EE0;
  }

  else
  {

    v2 = sub_100137E60;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100137E60()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];

  v4 = v0[1];

  return v4(v2, v1, v3);
}

uint64_t sub_100137EE0()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];

  (*(v2 + 104))(v1, enum case for DIPError.Code.internalError(_:), v3);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_10013FC40(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v4 = v0[1];

  return v4();
}

void sub_10013807C(uint64_t a1@<X1>, void *a2@<X2>, void *a3@<X3>, void *a4@<X8>)
{
  v68 = a3;
  v66 = a4;
  v6 = type metadata accessor for DIPError.Code();
  v65 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Logger();
  v67 = *(v9 - 8);
  v10 = __chkstk_darwin(v9);
  v12 = &v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v15 = &v63 - v14;
  __chkstk_darwin(v13);
  v17 = &v63 - v16;
  v18 = v69;
  v19 = sub_1000508BC(a1, a2);
  if (!v18)
  {
    v20 = v12;
    v21 = v67;
    v22 = v68;
    v69 = 0;
    if (v19)
    {
      v64 = v19;
      v23 = [v19 version];
      if (v23 == 1)
      {
        v33 = v15;
        defaultLogger()();
        v34 = Logger.logObject.getter();
        v35 = static os_log_type_t.debug.getter();
        v36 = os_log_type_enabled(v34, v35);
        v37 = v66;
        if (v36)
        {
          v38 = swift_slowAlloc();
          *v38 = 0;
          _os_log_impl(&_mh_execute_header, v34, v35, "v1 acl", v38, 2u);
        }

        (*(v21 + 8))(v33, v9);
        v39 = v64;
        v40 = [v39 encryptedACL];
        if (!v40)
        {

          *v37 = 0;
          return;
        }

        v41 = v40;
        v42 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v44 = v43;

        v45 = [v39 aclType];
        if ((v45 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_26:
          __break(1u);
          return;
        }

        sub_100009278(v22 + 3, v22[6]);
        sub_100009708(v42, v44);
        v46 = v69;
        v47 = dispatch thunk of AppleIDVManaging.recoverPersistedACLBlob(from:)();
        if (v46)
        {
          sub_1000092BC(v42, v44);
          sub_1000092BC(v42, v44);
        }

        else
        {
          v49 = v47;
          v50 = v48;
          v51 = objc_allocWithZone(DCCredentialAuthACL);
          isa = Data._bridgeToObjectiveC()().super.isa;
          v53 = [v51 initWithData:isa type:v45];

          sub_1000092BC(v49, v50);
          sub_1000092BC(v42, v44);
          sub_1000092BC(v42, v44);
          *v66 = v53;
        }
      }

      else
      {
        if (v23 == 2)
        {
          defaultLogger()();
          v24 = Logger.logObject.getter();
          v25 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v24, v25))
          {
            v26 = swift_slowAlloc();
            *v26 = 0;
            _os_log_impl(&_mh_execute_header, v24, v25, "v2 acl", v26, 2u);
          }

          (*(v21 + 8))(v17, v9);
          v27 = v69;
          v28 = sub_10013EB24(v64);
          if (v27)
          {

            return;
          }

          v54 = sub_10002B1A4(*(v28 + OBJC_IVAR____TtC7idcredd13ProgenitorKey_keyBlob), *(v28 + OBJC_IVAR____TtC7idcredd13ProgenitorKey_keyBlob + 8));
          v55 = SecAccessControlRef.data.getter();
          v57 = v56;

          v58 = [v64 aclType];
          if ((v58 & 0x8000000000000000) == 0)
          {
            v59 = v58;
            v60 = objc_allocWithZone(DCCredentialAuthACL);
            v61 = Data._bridgeToObjectiveC()().super.isa;
            v62 = [v60 initWithData:v61 type:v59];

            sub_1000092BC(v55, v57);

            *v66 = v62;
            return;
          }

          goto LABEL_26;
        }

        (*(v65 + 104))(v8, enum case for DIPError.Code.idcsInvalidACLVersionStored(_:), v6);
        sub_10002688C(_swiftEmptyArrayStorage);
        type metadata accessor for DIPError();
        sub_10013FC40(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
        swift_allocError();
        DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
        swift_willThrow();
      }
    }

    else
    {
      v29 = v20;
      defaultLogger()();
      v30 = Logger.logObject.getter();
      v31 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        *v32 = 0;
        _os_log_impl(&_mh_execute_header, v30, v31, "no acl", v32, 2u);
      }

      (*(v21 + 8))(v29, v9);
      *v66 = 0;
    }
  }
}

void sub_1001388A4(uint64_t a1@<X1>, void *a2@<X2>, uint64_t *a3@<X8>)
{
  v5 = sub_1000508BC(a1, a2);
  if (!v3)
  {
    if (v5)
    {
      v6 = v5;
      v7 = [v6 encryptedACL];
      if (!v7)
      {

        v9 = 0;
        v12 = 0;
        v11 = 0xF000000000000000;
        goto LABEL_8;
      }

      v8 = v7;
      v9 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v11 = v10;

      v12 = [v6 aclType];
      if ((v12 & 0x8000000000000000) == 0)
      {
LABEL_8:
        *a3 = v9;
        a3[1] = v11;
        a3[2] = v12;
        return;
      }

      __break(1u);
    }

    v9 = 0;
    v12 = 0;
    v11 = 0xF000000000000000;
    goto LABEL_8;
  }
}

uint64_t sub_100138978(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  v4 = type metadata accessor for DIPError.Code();
  v3[8] = v4;
  v3[9] = *(v4 - 8);
  v3[10] = swift_task_alloc();
  v5 = type metadata accessor for Logger();
  v3[11] = v5;
  v3[12] = *(v5 - 8);
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();

  return _swift_task_switch(sub_100138AA4, 0, 0);
}

uint64_t sub_100138AA4()
{
  v1 = v0[7];
  v0[15] = *(v1 + 16);
  v2 = swift_allocObject();
  v0[16] = v2;
  *(v2 + 16) = sub_100140E80;
  *(v2 + 24) = v1;
  swift_retain_n();
  v3 = swift_task_alloc();
  v0[17] = v3;
  *v3 = v0;
  v3[1] = sub_100138BB4;

  return AsyncCoreDataContainer.performRead<A>(_:)(v0 + 2, sub_100140EA4, v2, &type metadata for Int);
}

uint64_t sub_100138BB4()
{
  v2 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v3 = sub_100138F20;
  }

  else
  {

    *(v2 + 152) = *(v2 + 16);
    v3 = sub_100138CE4;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100138CE4()
{
  v1 = v0[7];
  v2 = swift_allocObject();
  v0[20] = v2;
  *(v2 + 16) = sub_100140EBC;
  *(v2 + 24) = v1;
  swift_retain_n();
  v3 = swift_task_alloc();
  v0[21] = v3;
  *v3 = v0;
  v3[1] = sub_100138DF0;

  return AsyncCoreDataContainer.performRead<A>(_:)(v0 + 3, sub_100141890, v2, &type metadata for Int);
}

uint64_t sub_100138DF0()
{
  v2 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {
    v3 = sub_1001392E8;
  }

  else
  {

    *(v2 + 184) = *(v2 + 24);
    v3 = sub_1001390D8;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100138F20()
{

  (*(v0[9] + 104))(v0[10], enum case for DIPError.Code.internalError(_:), v0[8]);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_10013FC40(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v1 = v0[1];

  return v1();
}

uint64_t sub_1001390D8(uint64_t a1)
{
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v1[23];
    v5 = v1[19];
    v6 = swift_slowAlloc();
    *v6 = 134218240;
    *(v6 + 4) = v5;
    *(v6 + 12) = 2048;
    *(v6 + 14) = v4;
    _os_log_impl(&_mh_execute_header, v2, v3, "fetchCredentialUUIDsForAuthACL: active bound credentials = %ld, incomplete credentials = %ld", v6, 0x16u);
  }

  v7 = v1[14];
  v8 = v1[11];
  v9 = v1[12];
  v11 = v1[5];
  v10 = v1[6];

  v12 = *(v9 + 8);
  v1[24] = v12;
  v1[25] = (v9 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v12(v7, v8);
  v13 = swift_allocObject();
  v1[26] = v13;
  *(v13 + 16) = v11;
  *(v13 + 24) = v10;
  v14 = swift_allocObject();
  v1[27] = v14;
  *(v14 + 16) = sub_100140EE0;
  *(v14 + 24) = v13;

  v15 = swift_task_alloc();
  v1[28] = v15;
  v16 = sub_100004E70(&qword_100203AF8, &qword_1001AE498);
  *v15 = v1;
  v15[1] = sub_1001394A0;

  return AsyncCoreDataContainer.performRead<A>(_:)(v1 + 4, sub_100141890, v14, v16);
}

uint64_t sub_1001392E8()
{

  (*(v0[9] + 104))(v0[10], enum case for DIPError.Code.internalError(_:), v0[8]);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_10013FC40(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v1 = v0[1];

  return v1();
}

uint64_t sub_1001394A0()
{
  v2 = *v1;
  *(*v1 + 232) = v0;

  if (v0)
  {
    v3 = sub_100139710;
  }

  else
  {

    *(v2 + 240) = *(v2 + 32);
    v3 = sub_1001395CC;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1001395CC(uint64_t a1)
{
  v2 = v1[30];
  if (v2)
  {
    if (v2[2])
    {
      goto LABEL_7;
    }
  }

  defaultLogger()();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "fetchCredentialUUIDsForAuthACL: No UUIDs to return", v5, 2u);
  }

  v6 = v1[24];
  v7 = v1[13];
  v8 = v1[11];

  v6(v7, v8);
  v2 = _swiftEmptyArrayStorage;
LABEL_7:

  v9 = v1[1];
  v10 = v1[23];
  v11 = v1[19];

  return v9(v2, v11, v10);
}

uint64_t sub_100139710()
{

  (*(v0[9] + 104))(v0[10], enum case for DIPError.Code.internalError(_:), v0[8]);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_10013FC40(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v1 = v0[1];

  return v1();
}

uint64_t sub_1001398C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v6 = sub_100112AE4(a2);
  v7 = sub_100140CAC(a1, v6);

  if (!v3)
  {
    v9 = *(v7 + 2);

    *a3 = v9;
  }

  return result;
}

void sub_100139938(uint64_t a1@<X1>, void *a2@<X2>, void *a3@<X8>)
{
  v7 = sub_100004E70(&qword_100203B00, &qword_1001AE4A0);
  __chkstk_darwin(v7 - 8);
  v9 = &v25 - v8;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1000508BC(a1, a2);
  if (v3)
  {
    return;
  }

  v30 = v13;
  if (!v14)
  {
LABEL_16:
    *a3 = 0;
    return;
  }

  v15 = v14;
  v16 = sub_1000607CC();

  if (!v16)
  {

    goto LABEL_16;
  }

  v26 = v15;
  v27 = a3;
  v33 = *(v16 + 2);
  if (v33)
  {
    v17 = 0;
    v29 = v11;
    v31 = (v11 + 32);
    v32 = (v11 + 48);
    v18 = v16 + 40;
    v19 = _swiftEmptyArrayStorage;
    v20 = v30;
    v28 = v16;
    while (v17 < *(v16 + 2))
    {

      UUID.init(uuidString:)();

      if ((*v32)(v9, 1, v10) == 1)
      {
        sub_10000A0D4(v9, &qword_100203B00, &qword_1001AE4A0);
      }

      else
      {
        v21 = *v31;
        (*v31)(v20, v9, v10);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v19 = sub_10010115C(0, v19[2] + 1, 1, v19);
        }

        v23 = v19[2];
        v22 = v19[3];
        if (v23 >= v22 >> 1)
        {
          v19 = sub_10010115C((v22 > 1), v23 + 1, 1, v19);
        }

        v19[2] = v23 + 1;
        v24 = v19 + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v23;
        v20 = v30;
        v21(v24, v30, v10);
        v16 = v28;
      }

      ++v17;
      v18 += 16;
      if (v33 == v17)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
  }

  else
  {
    v19 = _swiftEmptyArrayStorage;
LABEL_18:

    *v27 = v19;
  }
}

void sub_100139C54(void **a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  v12 = sub_10005AAEC();
  if (v3)
  {
    return;
  }

  v13 = v12;
  v29 = 0;
  v14 = [v11 credentialIdentifier];
  if (!v14)
  {
LABEL_8:

    *a3 = 0;
    a3[1] = 0;
    return;
  }

  v15 = v14;
  v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;

  v18 = [v13 options];
  v19 = [v18 presentmentAuthPolicy];

  if (v19 != 2 || !sub_1000A1058([v13 credentialState], a2))
  {

    goto LABEL_8;
  }

  defaultLogger()();
  v20 = v17;

  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.debug.getter();

  v27 = v21;
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v30 = v24;
    *v23 = 136315138;
    HIDWORD(v26) = v22;
    v25 = v28;
    *(v23 + 4) = sub_10010150C(v28, v17, &v30);
    _os_log_impl(&_mh_execute_header, v27, BYTE4(v26), "fetchBoundCredentials: credential identifier %s", v23, 0xCu);
    sub_100005090(v24);

    v20 = v17;

    (*(v8 + 8))(v10, v7);
  }

  else
  {

    (*(v8 + 8))(v10, v7);
    v25 = v28;
  }

  *a3 = v25;
  a3[1] = v20;
}

unint64_t sub_100139F0C(uint64_t a1, uint64_t a2)
{
  type metadata accessor for SecAccessControl(0);
  v2 = static SecAccessControlRef.fromData(_:)();
  _StringGuts.grow(_:)(24);

  if (v2)
  {
    v3 = v2;
    v4 = SecAccessControlRef.constraintsDescription.getter();
    v6 = v5;
  }

  else
  {
    v6 = 0xE500000000000000;
    v4 = 0x3E6C696E3CLL;
  }

  v7._countAndFlagsBits = v4;
  v7._object = v6;
  String.append(_:)(v7);

  return 0xD000000000000016;
}

unint64_t sub_10013A000(uint64_t a1, uint64_t a2)
{
  type metadata accessor for SecAccessControl(0);
  v2 = static SecAccessControlRef.fromData(_:)();
  _StringGuts.grow(_:)(29);

  if (v2)
  {
    v3 = v2;
    v4 = SecAccessControlRef.constraintsDescription.getter();
    v6 = v5;
  }

  else
  {
    v6 = 0xE500000000000000;
    v4 = 0x3E6C696E3CLL;
  }

  v7._countAndFlagsBits = v4;
  v7._object = v6;
  String.append(_:)(v7);

  return 0xD00000000000001BLL;
}

unint64_t sub_10013A0F4()
{
  _StringGuts.grow(_:)(32);

  v0 = Data.base16EncodedString()();
  String.append(_:)(v0);

  _StringGuts.grow(_:)(17);

  v1 = Data.base16EncodedString()();
  String.append(_:)(v1);

  v2._countAndFlagsBits = 0x617473657474410ALL;
  v2._object = 0xEF203A206E6F6974;
  String.append(_:)(v2);

  _StringGuts.grow(_:)(17);

  v3 = Data.base16EncodedString()();
  String.append(_:)(v3);

  v4._countAndFlagsBits = 0x4B63696C6275700ALL;
  v4._object = 0xEF203A2020207965;
  String.append(_:)(v4);

  _StringGuts.grow(_:)(17);

  v5 = Data.base16EncodedString()();
  String.append(_:)(v5);

  v6._countAndFlagsBits = 0x6220656C6F68770ALL;
  v6._object = 0xEF203A2020626F6CLL;
  String.append(_:)(v6);

  return 0xD00000000000001ELL;
}

unint64_t sub_10013A364()
{
  _StringGuts.grow(_:)(17);

  v0 = Data.base16EncodedString()();
  String.append(_:)(v0);

  v1._countAndFlagsBits = 0x617473657474410ALL;
  v1._object = 0xEF203A206E6F6974;
  String.append(_:)(v1);

  _StringGuts.grow(_:)(17);

  v2 = Data.base16EncodedString()();
  String.append(_:)(v2);

  v3._countAndFlagsBits = 0x4B63696C6275700ALL;
  v3._object = 0xEF203A2020207965;
  String.append(_:)(v3);

  _StringGuts.grow(_:)(17);

  v4 = Data.base16EncodedString()();
  String.append(_:)(v4);

  v5._countAndFlagsBits = 0x6220656C6F68770ALL;
  v5._object = 0xEF203A2020626F6CLL;
  String.append(_:)(v5);

  return 0xD00000000000001CLL;
}

uint64_t sub_10013A578(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = type metadata accessor for DIPError.Code();
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();
  v7 = type metadata accessor for Logger();
  v5[10] = v7;
  v5[11] = *(v7 - 8);
  v5[12] = swift_task_alloc();

  return _swift_task_switch(sub_10013A69C, 0, 0);
}

uint64_t sub_10013A69C(uint64_t a1)
{
  v24 = v1;
  v3 = v1[2];
  v2 = v1[3];
  defaultLogger()();
  sub_100009708(v3, v2);

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();
  sub_1000092BC(v3, v2);

  v6 = os_log_type_enabled(v4, v5);
  v8 = v1[11];
  v7 = v1[12];
  v9 = v1[10];
  if (v6)
  {
    v21 = v1[4];
    v22 = v1[5];
    v10 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *v10 = 136315394;
    v11 = Data.base64EncodedString(options:)(0);
    v12 = sub_10010150C(v11._countAndFlagsBits, v11._object, &v23);

    *(v10 + 4) = v12;
    *(v10 + 12) = 2080;
    *(v10 + 14) = sub_10010150C(v21, v22, &v23);
    _os_log_impl(&_mh_execute_header, v4, v5, "Trying to persist protected public key: %s for pairingID: %s", v10, 0x16u);
    swift_arrayDestroy();
  }

  (*(v8 + 8))(v7, v9);
  v13 = v1[5];
  v14 = v1[3];
  v15 = v1[4];
  v16 = v1[2];
  v17 = swift_allocObject();
  v1[13] = v17;
  v17[2] = v15;
  v17[3] = v13;
  v17[4] = v16;
  v17[5] = v14;
  sub_100009708(v16, v14);
  v18 = swift_allocObject();
  v1[14] = v18;
  *(v18 + 16) = sub_1001412B4;
  *(v18 + 24) = v17;

  v19 = swift_task_alloc();
  v1[15] = v19;
  *v19 = v1;
  v19[1] = sub_10013A954;

  return AsyncCoreDataContainer.performWrite<A>(_:)(v19, sub_10001C150, v18, &type metadata for () + 8);
}

uint64_t sub_10013A954()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_10013AAE8;
  }

  else
  {

    v2 = sub_10013AA78;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10013AA78()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10013AAE8()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];

  (*(v2 + 104))(v1, enum case for DIPError.Code.internalError(_:), v3);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_10013FC40(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v4 = v0[1];

  return v4();
}

void sub_10013AC98(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, unint64_t a5)
{
  v11 = type metadata accessor for Logger();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100057464(a2, a3);
  if (!v5)
  {
    v25 = v11;
    v26 = v12;
    type metadata accessor for StoredTrustKey();
    v15 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext:*(a1 + 16)];
    isa = Data._bridgeToObjectiveC()().super.isa;
    [v15 setProtectedPublicKey:isa];

    v17 = String._bridgeToObjectiveC()();
    [v15 setPairingID:v17];

    sub_100050240();
    defaultLogger()();
    sub_100009708(a4, a5);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.debug.getter();
    sub_1000092BC(a4, a5);
    if (os_log_type_enabled(v18, v19))
    {
      v20 = v15;
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v27 = v22;
      *v21 = 136315138;
      v23 = Data.base64EncodedString(options:)(0);
      v24 = sub_10010150C(v23._countAndFlagsBits, v23._object, &v27);

      *(v21 + 4) = v24;
      _os_log_impl(&_mh_execute_header, v18, v19, "Successfully persisted protected public key: %s", v21, 0xCu);
      sub_100005090(v22);
    }

    else
    {
    }

    (*(v26 + 8))(v14, v25);
  }
}

uint64_t sub_10013AF38(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  v4 = type metadata accessor for DIPError.Code();
  v3[7] = v4;
  v3[8] = *(v4 - 8);
  v3[9] = swift_task_alloc();
  v5 = type metadata accessor for Logger();
  v3[10] = v5;
  v3[11] = *(v5 - 8);
  v3[12] = swift_task_alloc();

  return _swift_task_switch(sub_10013B058, 0, 0);
}

uint64_t sub_10013B058(uint64_t a1)
{
  v20 = v1;
  defaultLogger()();

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();

  v4 = os_log_type_enabled(v2, v3);
  v6 = v1[11];
  v5 = v1[12];
  v7 = v1[10];
  if (v4)
  {
    v9 = v1[4];
    v8 = v1[5];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v19 = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_10010150C(v9, v8, &v19);
    _os_log_impl(&_mh_execute_header, v2, v3, "Trying to retrieve persisted protected public key for pairingID: %s", v10, 0xCu);
    sub_100005090(v11);
  }

  (*(v6 + 8))(v5, v7);
  v12 = v1[5];
  v13 = v1[4];
  v14 = swift_allocObject();
  v1[13] = v14;
  *(v14 + 16) = v13;
  *(v14 + 24) = v12;
  v15 = swift_allocObject();
  v1[14] = v15;
  *(v15 + 16) = sub_100141134;
  *(v15 + 24) = v14;

  v16 = swift_task_alloc();
  v1[15] = v16;
  v17 = sub_100004E70(&qword_100203B08, &qword_1001AE520);
  *v16 = v1;
  v16[1] = sub_10013B2AC;

  return AsyncCoreDataContainer.performRead<A>(_:)(v1 + 2, sub_1000DCAB0, v15, v17);
}

uint64_t sub_10013B2AC()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_10013B454;
  }

  else
  {

    v2 = sub_10013B3D0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10013B3D0()
{
  v1 = v0[2];
  v2 = v0[3];

  v3 = v0[1];

  return v3(v1, v2);
}

uint64_t sub_10013B454()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];

  (*(v2 + 104))(v1, enum case for DIPError.Code.internalError(_:), v3);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_10013FC40(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v4 = v0[1];

  return v4();
}

void sub_10013B604(uint64_t a1@<X0>, uint64_t *a3@<X8>)
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = v30 - v11;
  v13 = sub_1000508BC(0xD000000000000012, 0x80000001001B18B0);
  if (!v3)
  {
    if (v13)
    {
      v14 = v13;
      if ([v13 version]== 2)
      {
        v15 = sub_100112AE4(&off_1001F4288);
        v21 = sub_100140CAC(a1, v15);

        v22 = *(v21 + 2);

        if (v22)
        {
          v23 = v14;
          v24 = sub_10013EB24(v14);

          v19 = sub_10002E3C4(v24);
          v20 = v29;

          goto LABEL_9;
        }

        defaultLogger()();
        v25 = Logger.logObject.getter();
        v26 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v25, v26))
        {
          v27 = swift_slowAlloc();
          *v27 = 0;
          _os_log_impl(&_mh_execute_header, v25, v26, "establishPrearmTrust - no credentials used, forcing new progenitory key attestations", v27, 2u);

          v28 = v14;
        }

        else
        {
          v28 = v25;
          v25 = v14;
        }

        (*(v7 + 8))(v12, v6);
LABEL_8:
        v19 = 0;
        v20 = 0xF000000000000000;
LABEL_9:
        *a3 = v19;
        a3[1] = v20;
        return;
      }
    }

    defaultLogger()();
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "establishPrearmTrust - no attestation for globalAuthACL", v18, 2u);
    }

    (*(v7 + 8))(v10, v6);
    goto LABEL_8;
  }
}

void sub_10013B934(uint64_t a1@<X1>, void *a2@<X2>, uint64_t *a3@<X8>)
{
  v5 = sub_100056E4C(a1, a2);
  if (!v3)
  {
    if (v5)
    {
      v6 = v5;
      v7 = [v5 protectedPublicKey];
      if (v7)
      {
        v8 = v7;
        v9 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v11 = v10;
      }

      else
      {

        v9 = 0;
        v11 = 0xF000000000000000;
      }
    }

    else
    {
      v9 = 0;
      v11 = 0xF000000000000000;
    }

    *a3 = v9;
    a3[1] = v11;
  }
}

uint64_t sub_10013B9D8()
{
  v1[3] = v0;
  v2 = type metadata accessor for DIPError.Code();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();

  return _swift_task_switch(sub_10013BA98, 0, 0);
}

uint64_t sub_10013BA98()
{
  v1 = v0[3];
  v2 = swift_allocObject();
  v0[7] = v2;
  *(v2 + 16) = sub_100141118;
  *(v2 + 24) = v1;
  swift_retain_n();
  v3 = swift_task_alloc();
  v0[8] = v3;
  v4 = sub_100004E70(&qword_100203AC8, &qword_1001AE420);
  *v3 = v0;
  v3[1] = sub_10013BBB4;

  return AsyncCoreDataContainer.performRead<A>(_:)(v0 + 2, sub_100140EA4, v2, v4);
}

uint64_t sub_10013BBB4()
{
  v2 = *v1;
  v2[9] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_10013BD1C, 0, 0);
  }

  else
  {

    v3 = v2[2];

    v4 = v2[1];

    return v4(v3);
  }
}

uint64_t sub_10013BD1C()
{
  v1 = v0[6];
  v2 = v0[4];
  v3 = v0[5];

  (*(v3 + 104))(v1, enum case for DIPError.Code.internalError(_:), v2);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_10013FC40(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v4 = v0[1];

  return v4();
}

uint64_t sub_10013BEB4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v4 + 25) = a4;
  *(v4 + 40) = a2;
  *(v4 + 48) = a3;
  *(v4 + 32) = a1;
  v5 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  *(v4 + 56) = v5;
  *(v4 + 64) = *(v5 - 8);
  *(v4 + 72) = swift_task_alloc();

  return _swift_task_switch(sub_10013BF7C, 0, 0);
}

uint64_t sub_10013BF7C()
{
  v1 = *(v0 + 64);
  v13 = *(v0 + 72);
  v3 = *(v0 + 48);
  v2 = *(v0 + 56);
  v4 = *(v0 + 25);
  v5 = *(v0 + 40);
  v6 = swift_allocObject();
  *(v0 + 80) = v6;
  *(v6 + 16) = v5;
  *(v6 + 24) = v3;
  *(v6 + 32) = v4;
  v7 = swift_allocObject();
  *(v0 + 88) = v7;
  *(v7 + 16) = sub_10013EA9C;
  *(v7 + 24) = v6;
  v8 = enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:);
  v9 = *(v1 + 104);

  v9(v13, v8, v2);

  v10 = swift_task_alloc();
  *(v0 + 96) = v10;
  *v10 = v0;
  v10[1] = sub_10013C108;
  v11 = *(v0 + 72);

  return NSManagedObjectContext.perform<A>(schedule:_:)(v0 + 16, v11, sub_10013EABC, v7, &type metadata for BiometricStorage.DBResult);
}

uint64_t sub_10013C108()
{
  v2 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    (*(*(v2 + 64) + 8))(*(v2 + 72), *(v2 + 56));

    v3 = sub_10013C37C;
  }

  else
  {
    v5 = *(v2 + 64);
    v4 = *(v2 + 72);
    v6 = *(v2 + 56);

    (*(v5 + 8))(v4, v6);
    *(v2 + 112) = *(v2 + 16);
    *(v2 + 26) = *(v2 + 24);
    v3 = sub_10013C290;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10013C290()
{
  v1 = *(v0 + 112);
  if (v1)
  {
    v2 = 1;
  }

  else
  {
    v2 = *(v0 + 26) == 0;
  }

  if (v2)
  {
    **(v0 + 32) = v1;

    v3 = *(v0 + 8);

    return v3();
  }

  else
  {
    v5 = swift_task_alloc();
    *(v0 + 120) = v5;
    *v5 = v0;
    v5[1] = sub_10013C3E8;
    v6 = *(v0 + 40);

    return sub_10013CA44(v6);
  }
}

uint64_t sub_10013C37C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10013C3E8(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {

    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 128) = a1;

    return _swift_task_switch(sub_10013C53C, 0, 0);
  }
}

uint64_t sub_10013C53C()
{
  **(v0 + 32) = *(v0 + 128);

  v1 = *(v0 + 8);

  return v1();
}

void sub_10013C5AC(uint64_t a1@<X1>, int a2@<W2>, uint64_t a3@<X8>)
{
  LODWORD(v37) = a2;
  v35 = a1;
  v36 = a3;
  v4 = type metadata accessor for DIPError.Code();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v33 - v13;
  v15 = sub_1000508BC(0xD000000000000012, 0x80000001001B18B0);
  if (!v3)
  {
    v16 = v37;
    v33 = v9;
    v34 = 0;
    v17 = v36;
    if (v15)
    {
      v18 = v15;
      if ([v15 version]!= 2)
      {
        if ((v16 & 1) == 0)
        {
          defaultLogger()();
          v27 = Logger.logObject.getter();
          v28 = static os_log_type_t.info.getter();
          if (os_log_type_enabled(v27, v28))
          {
            v29 = swift_slowAlloc();
            *v29 = 0;
            _os_log_impl(&_mh_execute_header, v27, v28, "acl does not contain progenitor key, returning nil", v29, 2u);

            v30 = v18;
          }

          else
          {
            v30 = v27;
            v27 = v18;
          }

          v31 = v17;
          v32 = v33;

          (*(v32 + 8))(v12, v8);
          v25 = 0;
          v26 = 0;
          goto LABEL_16;
        }

        v25 = 0;
        v26 = 1;
LABEL_15:
        v31 = v17;
LABEL_16:
        *v31 = v25;
        *(v31 + 8) = v26;
        return;
      }

      v19 = v18;
      v20 = v34;
      v21 = sub_10013EB24(v18);
      v34 = v20;
      if (v20)
      {

        v37 = "deviceInformationProvider";
        (*(v5 + 104))(v7, enum case for DIPError.Code.internalError(_:), v4);
        swift_errorRetain();
        sub_10002688C(_swiftEmptyArrayStorage);
        type metadata accessor for DIPError();
        sub_10013FC40(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
        swift_allocError();
        DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
        swift_willThrow();

        return;
      }

      v25 = v21;
    }

    else
    {
      defaultLogger()();
      v22 = Logger.logObject.getter();
      v23 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        *v24 = 0;
        _os_log_impl(&_mh_execute_header, v22, v23, "no global acl, returning nil attestation", v24, 2u);
      }

      (*(v33 + 8))(v14, v8);
      v25 = 0;
    }

    v26 = 0;
    goto LABEL_15;
  }
}

uint64_t sub_10013CA44(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  v2[7] = v3;
  v2[8] = *(v3 - 8);
  v2[9] = swift_task_alloc();
  v4 = type metadata accessor for Logger();
  v2[10] = v4;
  v2[11] = *(v4 - 8);
  v2[12] = swift_task_alloc();

  return _swift_task_switch(sub_10013CB60, 0, 0);
}

uint64_t sub_10013CB60(uint64_t a1)
{
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Migrating progenitor key ACL", v4, 2u);
  }

  v6 = v1[11];
  v5 = v1[12];
  v8 = v1[9];
  v7 = v1[10];
  v9 = v1[7];
  v10 = v1[8];
  v11 = v1[5];

  (*(v6 + 8))(v5, v7);
  v12 = swift_allocObject();
  v1[13] = v12;
  *(v12 + 16) = sub_10013EB08;
  *(v12 + 24) = v11;
  v13 = enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:);
  v14 = *(v10 + 104);

  v14(v8, v13, v9);

  v15 = swift_task_alloc();
  v1[14] = v15;
  v16 = sub_100004E70(&qword_100203AD0, &qword_1001AE430);
  *v15 = v1;
  v15[1] = sub_10013CD54;
  v17 = v1[9];

  return NSManagedObjectContext.perform<A>(schedule:_:)(v1 + 2, v17, sub_100026510, v12, v16);
}

uint64_t sub_10013CD54()
{
  v2 = *v1;
  v2[15] = v0;

  v3 = v2[9];
  v4 = v2[8];
  v5 = v2[7];
  if (v0)
  {
    (*(v4 + 8))(v2[9], v2[7]);

    v6 = sub_10013D060;
  }

  else
  {

    (*(v4 + 8))(v3, v5);
    v6 = sub_10013CF1C;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_10013CF1C()
{
  v1 = v0[15];
  v2 = v0[2];
  v3 = v0[3];
  v0[16] = v2;
  v0[17] = v3;
  v4 = v0[4];
  v5 = sub_1001326E0(v2, v3, v4);
  v0[18] = v5;
  v0[19] = v6;
  if (v1)
  {
    sub_1000092BC(v2, v3);

    v7 = v0[1];

    return v7();
  }

  else
  {
    v9 = v5;
    v10 = v6;
    v11 = swift_task_alloc();
    v0[20] = v11;
    *v11 = v0;
    v11[1] = sub_10013D0D8;
    v12 = v0[5];

    return sub_10012F470(v9, v10, v4, v12, 1);
  }
}

uint64_t sub_10013D060()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10013D0D8(uint64_t a1, unint64_t a2)
{
  *(*v3 + 168) = v2;

  if (v2)
  {
    v6 = sub_10013D390;
  }

  else
  {
    sub_10001C120(a1, a2);
    v6 = sub_10013D208;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_10013D208()
{
  v1 = v0[21];
  v2 = sub_1000508BC(0xD000000000000012, 0x80000001001B18B0);
  if (v1)
  {
    v3 = v0[16];
    v4 = v0[17];
    sub_1000092BC(v0[18], v0[19]);
    sub_1000092BC(v3, v4);

    v11 = v0[1];

    return v11();
  }

  else
  {
    v5 = v2;
    v6 = sub_10013EB24(v2);
    v8 = v0[18];
    v7 = v0[19];
    v10 = v0[16];
    v9 = v0[17];
    v13 = v6;

    sub_1000092BC(v8, v7);
    sub_1000092BC(v10, v9);

    v14 = v0[1];

    return v14(v13);
  }
}

uint64_t sub_10013D390()
{
  v1 = v0[16];
  v2 = v0[17];
  sub_1000092BC(v0[18], v0[19]);
  sub_1000092BC(v1, v2);

  v3 = v0[1];

  return v3();
}

void sub_10013D418(unint64_t *a2@<X8>)
{
  v4 = sub_1000508BC(0xD00000000000001ELL, 0x80000001001B18D0);
  if (!v2)
  {
    if (v4)
    {
      v5 = v4;
      v6 = v4;
      v7 = sub_10013EB24(v5);

      *a2 = v7;
    }

    else
    {
      *a2 = 0;
    }
  }
}

void sub_10013D4C0(uint64_t *a1@<X8>)
{
  v3 = type metadata accessor for DIPError.Code();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v32[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000508BC(0xD000000000000012, 0x80000001001B18B0);
  if (!v1)
  {
    v8 = v7;
    if (v7)
    {
      if ([v7 version] == 1)
      {
        v9 = [v8 encryptedACL];
        if (v9)
        {
          v10 = v9;
          v11 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v13 = v12;

          v14 = [v8 aclType];
          if ((v14 & 0x8000000000000000) != 0)
          {
            __break(1u);
          }

          else
          {
            v15 = v14;
            type metadata accessor for AppleIDVManager();
            sub_1000215BC(v32);
            sub_100009278(v32, v32[3]);
            v16 = dispatch thunk of AppleIDVManaging.recoverPersistedACLBlob(from:)();
            v31 = v1;
            v20 = v16;
            v22 = v21;
            v23 = objc_allocWithZone(DCCredentialAuthACL);
            isa = Data._bridgeToObjectiveC()().super.isa;
            v25 = [v23 initWithData:isa type:v15];
            sub_1000092BC(v11, v13);

            sub_1000092BC(v20, v22);
            sub_100005090(v32);
            v26 = [v25 aclData];
            v27 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
            v29 = v28;

            *a1 = v27;
            a1[1] = v29;
            v30 = [v25 aclType];

            a1[2] = v30;
          }
        }

        else
        {
          (*(v4 + 104))(v6, enum case for DIPError.Code.idcsMissingGlobalAuthACL(_:), v3);
          sub_10002688C(_swiftEmptyArrayStorage);
          type metadata accessor for DIPError();
          sub_10013FC40(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
          swift_allocError();
          DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
          swift_willThrow();
        }
      }

      else
      {
        v32[0] = 0;
        v32[1] = 0xE000000000000000;
        _StringGuts.grow(_:)(39);
        v17._countAndFlagsBits = 0xD000000000000025;
        v17._object = 0x80000001001BB2F0;
        String.append(_:)(v17);
        v18 = [v8 version];
        if (v18 == 2)
        {
          v19 = 1;
        }

        else
        {
          v19 = 2;
        }

        if (v18 == 1)
        {
          v19 = 0;
        }

        v33 = v19;
        _print_unlocked<A, B>(_:_:)();
        (*(v4 + 104))(v6, enum case for DIPError.Code.idcsInvalidACLVersionStored(_:), v3);
        sub_10002688C(_swiftEmptyArrayStorage);
        type metadata accessor for DIPError();
        sub_10013FC40(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
        swift_allocError();
        DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
        swift_willThrow();
      }
    }

    else
    {
      (*(v4 + 104))(v6, enum case for DIPError.Code.idcsMissingGlobalAuthACL(_:), v3);
      sub_10002688C(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_10013FC40(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
    }
  }
}

uint64_t sub_10013DAD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = a6;
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  *v12 = v6;
  v12[1] = sub_1000105C8;

  return sub_1001A02E0(a2, a4, a5, v7, a3);
}

uint64_t sub_10013DB94()
{
  v1[2] = v0;
  v2 = type metadata accessor for DIPError.Code();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();

  return _swift_task_switch(sub_10013DC54, 0, 0);
}

uint64_t sub_10013DC54()
{
  v1 = v0[2];
  v2 = swift_allocObject();
  v0[6] = v2;
  *(v2 + 16) = &unk_1001AE478;
  *(v2 + 24) = v1;
  swift_retain_n();
  v3 = swift_task_alloc();
  v0[7] = v3;
  *v3 = v0;
  v3[1] = sub_10013DD60;

  return AsyncCoreDataContainer.read<A>(_:)(v0 + 9, &unk_1001AE488, v2, &type metadata for Bool);
}

uint64_t sub_10013DD60()
{
  v2 = *v1;
  *(v2 + 64) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_10013DEC8, 0, 0);
  }

  else
  {

    v3 = *(v2 + 72);

    v4 = *(v2 + 8);

    return v4(v3);
  }
}

uint64_t sub_10013DEC8()
{
  v1 = v0[5];
  v2 = v0[3];
  v3 = v0[4];

  (*(v3 + 104))(v1, enum case for DIPError.Code.internalError(_:), v2);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_10013FC40(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v4 = v0[1];

  return v4(0);
}

uint64_t sub_10013E068(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return _swift_task_switch(sub_10013E08C, 0, 0);
}

uint64_t sub_10013E08C()
{
  v1 = v0[4];
  v0[5] = *(*(v1 + 64) + 16);

  v2 = swift_task_alloc();
  v0[6] = v2;
  *v2 = v0;
  v2[1] = sub_10013E154;
  v3 = v0[3];

  return (sub_1001A3950)(v3, v1 + 80);
}

uint64_t sub_10013E154(char a1)
{
  v4 = *v2;
  *(*v2 + 56) = v1;

  if (v1)
  {
    v5 = sub_10013E2F0;
  }

  else
  {
    *(v4 + 64) = a1 & 1;
    v5 = sub_10013E280;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10013E280()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 16);

  *v2 = v1;
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10013E2F0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10013E354(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1000104D4;

  return sub_10019F998(a2, a3);
}

uint64_t sub_10013E3F0()
{

  sub_100005090((v0 + 24));

  sub_100005090((v0 + 80));

  return swift_deallocClassInstance();
}

uint64_t sub_10013E46C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10013E4C0(uint64_t a1, uint64_t *a2, int *a3)
{
  *(v3 + 16) = a1;
  v4 = *a2;
  v7 = (a3 + *a3);
  v5 = swift_task_alloc();
  *(v3 + 24) = v5;
  *v5 = v3;
  v5[1] = sub_10013E5C0;

  return v7(v3 + 32, v4);
}

uint64_t sub_10013E5C0()
{
  v2 = *v1;
  v3 = *v1;

  if (!v0)
  {
    **(v2 + 16) = *(v2 + 32);
  }

  v4 = *(v3 + 8);

  return v4();
}

uint64_t sub_10013E6D0(uint64_t a1, uint64_t *a2, int *a3)
{
  *(v3 + 24) = a1;
  v4 = *a2;
  v7 = (a3 + *a3);
  v5 = swift_task_alloc();
  *(v3 + 32) = v5;
  *v5 = v3;
  v5[1] = sub_10013E7D0;

  return v7(v3 + 16, v4);
}

uint64_t sub_10013E7D0()
{
  v2 = *v1;
  v3 = *v1;

  if (!v0)
  {
    **(v2 + 24) = *(v2 + 16);
  }

  v4 = *(v3 + 8);

  return v4();
}

uint64_t sub_10013E8DC()
{

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t sub_10013E914(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1000105C8;

  return sub_10013BEB4(a1, a2, v6, v7);
}

uint64_t sub_10013E9CC(uint64_t a1, uint64_t *a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1000105C8;

  return sub_10013E6D0(a1, a2, v6);
}

void *sub_10013EABC@<X0>(uint64_t a1@<X8>)
{
  result = (*(v1 + 16))(&v6);
  if (!v2)
  {
    v5 = v7;
    *a1 = v6;
    *(a1 + 8) = v5;
  }

  return result;
}

unint64_t sub_10013EB24(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DIPError.Code();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(a1);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!v6)
  {
    goto LABEL_9;
  }

  v9 = [v6 progenitorKey];
  if (!v9)
  {
    goto LABEL_9;
  }

  v10 = v9;
  v11 = [v9 identifier];
  if (!v11)
  {

LABEL_9:
    (*(v5 + 104))(v8, enum case for DIPError.Code.idcsMissingProgenitorKeyInAuthACL(_:), v4);
    v2 = sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10013FC40(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    return v2;
  }

  v12 = v11;
  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  v16 = [v10 keyBlob];
  if (!v16)
  {

    goto LABEL_9;
  }

  v29 = v13;
  v17 = v16;
  v18 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v19;

  v21 = [v10 publicKeyIdentifier];
  if (v21)
  {
    v22 = v21;
    v23 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v24;
  }

  else
  {
    v23 = 0;
    v25 = 0xF000000000000000;
  }

  v27 = sub_10002DA84(v29, v15, v18, v20, v23, v25);
  if (!v1)
  {
    v2 = v27;
  }

  sub_10001C120(v23, v25);
  sub_1000092BC(v18, v20);

  return v2;
}

uint64_t sub_10013EE94()
{

  sub_1000092BC(*(v0 + 40), *(v0 + 48));

  sub_1000092BC(*(v0 + 64), *(v0 + 72));

  return _swift_deallocObject(v0, 128, 7);
}

uint64_t sub_10013EF70(void *a1)
{
  v3 = type metadata accessor for DIPError.Code();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Logger();
  v28 = *(v7 - 8);
  v29 = v7;
  v8 = __chkstk_darwin(v7);
  v10 = v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = v27 - v12;
  __chkstk_darwin(v11);
  v15 = v27 - v14;
  if ([a1 version] == 2)
  {
    v16 = sub_10013EB24(a1);
    if (v1)
    {
      v30 = 0;
      v31 = 0;
      v32 = 0xE000000000000000;
      _StringGuts.grow(_:)(38);

      v31 = 0xD000000000000024;
      v32 = 0x80000001001BB180;
      swift_getErrorValue();
      v19._countAndFlagsBits = Error.localizedDescription.getter();
      String.append(_:)(v19);

      (*(v4 + 104))(v6, enum case for DIPError.Code.idcsProgenitorKeyDeletionError(_:), v3);
      sub_10002688C(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_10013FC40(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      defaultLogger()();
      DIPRecordError(_:message:log:)();

      (*(v28 + 8))(v10, v29);
    }

    else
    {
      v27[1] = v16;
      v18 = *(v16 + OBJC_IVAR____TtC7idcredd13ProgenitorKey_keyBlob);
      v17 = *(v16 + OBJC_IVAR____TtC7idcredd13ProgenitorKey_keyBlob + 8);
      sub_100009708(v18, v17);
      sub_10002E100(v18, v17);
      v30 = 0;
      sub_1000092BC(v18, v17);
      defaultLogger()();
      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        *v26 = 0;
        _os_log_impl(&_mh_execute_header, v24, v25, "deleted progenitor key", v26, 2u);
      }

      else
      {
      }

      return (*(v28 + 8))(v15, v29);
    }
  }

  else
  {
    v30 = v1;
    defaultLogger()();
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v21, v22, "no progenitor key to delete", v23, 2u);
    }

    return (*(v28 + 8))(v13, v29);
  }
}

uint64_t sub_10013F468(unint64_t a1, void *a2, char *a3, uint64_t a4)
{
  v63 = a3;
  v57 = a4;
  v6 = type metadata accessor for DIPError.Code();
  v59 = *(v6 - 8);
  v60 = v6;
  __chkstk_darwin(v6);
  v61 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v55 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v14 = &v54 - v13;
  v15 = __chkstk_darwin(v12);
  v54 = &v54 - v16;
  __chkstk_darwin(v15);
  v18 = &v54 - v17;
  defaultLogger()();

  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.debug.getter();

  v21 = os_log_type_enabled(v19, v20);
  v56 = v9;
  if (v21)
  {
    v22 = swift_slowAlloc();
    v58 = v8;
    v23 = v22;
    v24 = swift_slowAlloc();
    v64 = v24;
    *v23 = 136315138;
    *(v23 + 4) = sub_10010150C(a1, a2, &v64);
    _os_log_impl(&_mh_execute_header, v19, v20, "BiometricStorage deleteAuthACL with identifier %s", v23, 0xCu);
    sub_100005090(v24);

    v8 = v58;
  }

  v25 = *(v9 + 8);
  v25(v18, v8);
  v26 = v62;
  v27 = sub_1000508BC(a1, a2);
  if (v26)
  {
    (*(v59 + 104))(v61, enum case for DIPError.Code.internalError(_:), v60);
    swift_errorRetain();
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10013FC40(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    return v28 & 1;
  }

  v30 = v27;
  if (!v27)
  {
    v31 = v55;
    defaultLogger()();

    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = a2;
      v36 = a1;
      v58 = v8;
      v37 = v34;
      v38 = v31;
      v39 = swift_slowAlloc();
      v64 = v39;
      *v37 = 136315138;
      *(v37 + 4) = sub_10010150C(v36, v35, &v64);
      _os_log_impl(&_mh_execute_header, v32, v33, "No acl found with identifier %s", v37, 0xCu);
      sub_100005090(v39);

      v40 = v38;
      v41 = v58;
    }

    else
    {

      v40 = v31;
      v41 = v8;
    }

LABEL_11:
    v25(v40, v41);
    v28 = 0;
    return v28 & 1;
  }

  v58 = v8;
  sub_10013EF70(v27);
  v42 = sub_100051424(a1, a2);
  if ((v42 & 1) == 0)
  {
    defaultLogger()();

    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v63 = v14;
      v53 = v52;
      v64 = v52;
      *v51 = 136315138;
      *(v51 + 4) = sub_10010150C(a1, a2, &v64);
      _os_log_impl(&_mh_execute_header, v49, v50, "No auth acl exists with identifier %s so nothing to delete", v51, 0xCu);
      sub_100005090(v53);

      v40 = v63;
    }

    else
    {

      v40 = v14;
    }

    v41 = v58;
    goto LABEL_11;
  }

  v43 = v54;
  defaultLogger()();

  v44 = Logger.logObject.getter();
  v45 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v64 = v47;
    *v46 = 136315138;
    *(v46 + 4) = sub_10010150C(a1, a2, &v64);
    _os_log_impl(&_mh_execute_header, v44, v45, "Auth ACL %s was deleted", v46, 0xCu);
    sub_100005090(v47);

    v48 = v54;
  }

  else
  {

    v48 = v43;
  }

  v25(v48, v58);
  v28 = 1;
  return v28 & 1;
}

uint64_t sub_10013FBD0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004E70(&qword_100203AE0, &qword_1001AE450);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10013FC40(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10013FC88()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10013FCE8(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1000105C8;

  return sub_10013E068(a1, a2, v2);
}

uint64_t sub_10013FD94(uint64_t a1, uint64_t *a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1000105C8;

  return sub_10013E4C0(a1, a2, v6);
}

void sub_10013FE5C(void *a1, void *a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v121 = a1;
  v11 = type metadata accessor for DIPError.Code();
  v127 = *(v11 - 8);
  v128 = v11;
  __chkstk_darwin(v11);
  v126 = &v110 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Logger();
  v129 = *(v13 - 8);
  v14 = __chkstk_darwin(v13);
  v119 = &v110 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v118 = &v110 - v17;
  v18 = __chkstk_darwin(v16);
  v114 = &v110 - v19;
  v20 = __chkstk_darwin(v18);
  v123 = &v110 - v21;
  __chkstk_darwin(v20);
  v23 = &v110 - v22;
  defaultLogger()();
  sub_100009708(a3, a4);
  v24 = a2;
  v25 = a4;
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.debug.getter();
  v130 = a3;
  sub_1000092BC(a3, v25);

  v28 = os_log_type_enabled(v26, v27);
  v116 = a5;
  v117 = a6;
  v115 = v24;
  if (v28)
  {
    v29 = swift_slowAlloc();
    v131 = swift_slowAlloc();
    *v29 = 136315394;
    v30 = Data.base16EncodedString()();
    v120 = v25;
    v31 = sub_10010150C(v30._countAndFlagsBits, v30._object, &v131);

    *(v29 + 4) = v31;
    *(v29 + 12) = 2080;
    v32 = SecAccessControlRef.constraintsDescription.getter();
    v34 = sub_10010150C(v32, v33, &v131);

    *(v29 + 14) = v34;
    _os_log_impl(&_mh_execute_header, v26, v27, "New acl is %s = %s", v29, 0x16u);
    swift_arrayDestroy();
    v35 = v120;

    v122 = *(v129 + 8);
    v122(v23, v13);
  }

  else
  {

    v122 = *(v129 + 8);
    v122(v23, v13);
    v35 = v25;
  }

  sub_100009278((v125 + 24), *(v125 + 48));
  v36 = v124;
  v37 = dispatch thunk of AppleIDVManaging.getUUIDsFromACL(_:)();
  if (v36)
  {
    goto LABEL_23;
  }

  v38 = v37;
  v120 = v35;
  v113 = v13;
  v124 = 0;
  v39 = v123;
  defaultLogger()();

  v40 = Logger.logObject.getter();
  v41 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v131 = v43;
    *v42 = 136315138;

    v44 = Array.description.getter();
    v46 = v45;

    v47 = sub_10010150C(v44, v46, &v131);

    *(v42 + 4) = v47;
    _os_log_impl(&_mh_execute_header, v40, v41, "New ACL uuids are %s", v42, 0xCu);
    sub_100005090(v43);

    v48 = v123;
  }

  else
  {

    v48 = v39;
  }

  v122(v48, v113);
  v49 = v121;
  if (v38)
  {
    v50 = v124;
    sub_10006055C(v38);
    v51 = v50;
    if (v50)
    {

LABEL_23:
      (*(v127 + 104))(v126, enum case for DIPError.Code.internalError(_:), v128);
      swift_errorRetain();
      sub_10002688C(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_10013FC40(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();

      return;
    }
  }

  else
  {
    v51 = v124;
  }

  v52 = [v49 progenitorKey];
  if (!v52)
  {
LABEL_22:
    (*(v127 + 104))(v126, enum case for DIPError.Code.idcsMissingProgenitorKeyInAuthACL(_:), v128);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10013FC40(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    goto LABEL_23;
  }

  v53 = v52;
  v54 = [v52 identifier];
  if (!v54)
  {

    goto LABEL_22;
  }

  v55 = v54;
  v123 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v57 = v56;

  v58 = [v53 keyBlob];
  if (!v58)
  {

    goto LABEL_22;
  }

  v111 = v57;
  v124 = v51;
  v59 = v58;
  v112 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v110 = v60;

  v61 = [v49 encryptedACL];
  if (!v61)
  {
LABEL_33:
    v79 = v118;
    defaultLogger()();
    v80 = Logger.logObject.getter();
    v81 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v80, v81))
    {
      v82 = swift_slowAlloc();
      *v82 = 0;
      _os_log_impl(&_mh_execute_header, v80, v81, "skip manipulating legacy sidv encryptedACL because there isn't one", v82, 2u);
    }

    v83 = v79;
    v84 = v113;
    v85 = v119;
    goto LABEL_36;
  }

  v62 = v61;
  v63 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v65 = v64;

  v66 = v65;
  v67 = v65 >> 62;
  if ((v65 >> 62) > 1)
  {
    if (v67 != 2)
    {
      sub_1000092BC(v63, v65);
      goto LABEL_33;
    }

    v69 = *(v63 + 16);
    v70 = *(v63 + 24);
    sub_1000092BC(v63, v66);
  }

  else
  {
    if (!v67)
    {
      sub_1000092BC(v63, v65);
      v68 = (v65 & 0xFF000000000000) == 0;
      goto LABEL_28;
    }

    sub_1000092BC(v63, v65);
    v69 = v63;
    v70 = v63 >> 32;
  }

  v68 = v69 == v70;
LABEL_28:
  if (v68)
  {
    goto LABEL_33;
  }

  v118 = v53;
  v71 = [v121 encryptedACL];
  if (!v71)
  {

    (*(v127 + 104))(v126, enum case for DIPError.Code.invalidStoredData(_:), v128);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10013FC40(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    sub_1000092BC(v112, v110);

    goto LABEL_23;
  }

  v72 = v71;
  v73 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v75 = v74;

  sub_100009278((v125 + 24), *(v125 + 48));
  v76 = v124;
  v77 = dispatch thunk of AppleIDVManaging.persistModifiedACLBlob(_:referenceACLBlob:externalizedLAContext:)();
  if (v76)
  {
    sub_1000092BC(v73, v75);
    sub_1000092BC(v112, v110);

    goto LABEL_23;
  }

  v104 = v77;
  v105 = v78;
  v124 = 0;
  sub_100009708(v77, v78);
  isa = Data._bridgeToObjectiveC()().super.isa;
  sub_1000092BC(v104, v105);
  [v121 setEncryptedACL:isa];

  defaultLogger()();
  v107 = Logger.logObject.getter();
  v108 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v107, v108))
  {
    v109 = swift_slowAlloc();
    *v109 = 0;
    _os_log_impl(&_mh_execute_header, v107, v108, "set new sidv encrypedACL", v109, 2u);

    sub_1000092BC(v73, v75);

    sub_1000092BC(v104, v105);
  }

  else
  {
    sub_1000092BC(v104, v105);

    sub_1000092BC(v73, v75);
  }

  v84 = v113;
  v83 = v114;
  v53 = v118;
  v85 = v119;
LABEL_36:
  v122(v83, v84);
  defaultLogger()();
  v86 = v111;

  v87 = Logger.logObject.getter();
  v88 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v87, v88))
  {
    v89 = swift_slowAlloc();
    v90 = swift_slowAlloc();
    v118 = v53;
    v91 = v84;
    v92 = v90;
    v131 = v90;
    *v89 = 136315138;
    *(v89 + 4) = sub_10010150C(v123, v86, &v131);
    _os_log_impl(&_mh_execute_header, v87, v88, "Updating acl for progenitor key %s", v89, 0xCu);
    sub_100005090(v92);

    v93 = v91;
    v53 = v118;
    v94 = v119;
  }

  else
  {

    v94 = v85;
    v93 = v84;
  }

  v122(v94, v93);
  v95 = [v53 publicKeyIdentifier];
  v96 = v112;
  if (v95)
  {
    v97 = v95;
    v98 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v130 = v99;
  }

  else
  {
    v98 = 0;
    v130 = 0xF000000000000000;
  }

  v100 = v124;
  v101 = v96;
  v102 = v110;
  v129 = sub_10002DA84(v123, v111, v101, v110, v98, v130);
  if (v100)
  {
    sub_10001C120(v98, v130);
    sub_1000092BC(v112, v102);

    goto LABEL_23;
  }

  sub_10001C120(v98, v130);
  v103 = sub_10002EA64(v129, v115, v116, v117);
  sub_10005FFF0(v103);

  sub_1000092BC(v112, v110);
}

char *sub_100140CAC(uint64_t a1, uint64_t a2)
{
  v5 = sub_100051CD4();
  if (!v2)
  {
    v6 = v5;
    if (v5 >> 62)
    {
      goto LABEL_19;
    }

    for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v8 = 0;
      v21 = v6 & 0xFFFFFFFFFFFFFF8;
      v22 = v6 & 0xC000000000000001;
      v3 = _swiftEmptyArrayStorage;
      v19 = v6;
      v20 = a2;
      while (1)
      {
        if (v22)
        {
          v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v8 >= *(v21 + 16))
          {
            goto LABEL_18;
          }

          v10 = *(v6 + 8 * v8 + 32);
        }

        v11 = v10;
        v12 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          break;
        }

        v25 = v10;
        sub_100139C54(&v25, a2, &v23);

        v13 = v24;
        if (v24)
        {
          v14 = i;
          v15 = v23;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v3 = sub_100100418(0, *(v3 + 2) + 1, 1, v3);
          }

          v17 = *(v3 + 2);
          v16 = *(v3 + 3);
          if (v17 >= v16 >> 1)
          {
            v3 = sub_100100418((v16 > 1), v17 + 1, 1, v3);
          }

          *(v3 + 2) = v17 + 1;
          v9 = &v3[16 * v17];
          *(v9 + 4) = v15;
          *(v9 + 5) = v13;
          i = v14;
          v6 = v19;
          a2 = v20;
        }

        ++v8;
        if (v12 == i)
        {
          goto LABEL_21;
        }
      }

      __break(1u);
LABEL_18:
      __break(1u);
LABEL_19:
      ;
    }

    v3 = _swiftEmptyArrayStorage;
LABEL_21:
  }

  return v3;
}

uint64_t sub_100140EFC()
{

  v1 = *(v0 + 32);
  if (v1 >> 60 != 15)
  {
    sub_1000092BC(*(v0 + 24), v1);
  }

  return _swift_deallocObject(v0, 41, 7);
}

uint64_t sub_100140F4C(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = *(v2 + 32);
  v9 = *(v2 + 40);
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_1000105C8;

  return sub_10013DAD0(a1, a2, v6, v7, v8, v9);
}

uint64_t sub_100141034()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10014106C(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1000105C8;

  return sub_10013E354(a1, a2, v2);
}

uint64_t sub_10014116C()
{

  sub_1000092BC(*(v0 + 24), *(v0 + 32));

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1001411AC(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_1000104D4;

  return sub_10012F220(a1, a2, v6, v7, v9, v8);
}

uint64_t sub_100141274()
{

  sub_1000092BC(*(v0 + 32), *(v0 + 40));

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100141310(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1000105C8;

  return sub_100136AEC(a1, a2, v2);
}

uint64_t sub_1001413C4(uint64_t a1)
{

  return _swift_deallocObject(v1, a1, 7);
}

void *sub_10014142C@<X0>(_BYTE *a1@<X8>)
{
  result = (*(v1 + 16))(&v5);
  if (!v2)
  {
    *a1 = v5;
  }

  return result;
}

uint64_t sub_100141470()
{

  sub_1000092BC(*(v0 + 24), *(v0 + 32));
  sub_1000092BC(*(v0 + 40), *(v0 + 48));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1001414B8(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v10 = v2[6];
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_1000105C8;

  return sub_100133008(a1, a2, v6, v7, v8, v9, v10);
}

uint64_t sub_100141590()
{

  sub_1000092BC(*(v0 + 32), *(v0 + 40));
  sub_1000092BC(*(v0 + 48), *(v0 + 56));
  sub_1000092BC(*(v0 + 72), *(v0 + 80));

  sub_1000092BC(*(v0 + 96), *(v0 + 104));

  return _swift_deallocObject(v0, 128, 7);
}

__n128 sub_100141630(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_100141644(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10014168C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1001416EC(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_100141700(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 9))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_10014175C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_1001417C0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 24))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_100141814(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t sub_100141928(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_100004E70(&qword_100201488, &qword_1001ACFD0);
  __chkstk_darwin(v3 - 8);
  v5 = &v16 - v4;
  v6 = type metadata accessor for DIPError.Code();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v16 - v11;
  DIPError.Code.init(rawValue:)();
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_10008C18C(v5);
    return -5000;
  }

  (*(v7 + 32))(v12, v5, v6);
  (*(v7 + 16))(v10, v12, v6);
  v14 = (*(v7 + 88))(v10, v6);
  if (v14 == enum case for DIPError.Code.missingEntitlement(_:))
  {
    goto LABEL_5;
  }

  if (v14 == enum case for DIPError.Code.invalidStoredData(_:))
  {
    (*(v7 + 8))(v12, v6);
    return -5004;
  }

  else
  {
    if (v14 == enum case for DIPError.Code.idcsUnauthorizedPartition(_:))
    {
LABEL_5:
      (*(v7 + 8))(v12, v6);
      return -5002;
    }

    if (v14 == enum case for DIPError.Code.idcsMissingGlobalAuthACL(_:))
    {
      (*(v7 + 8))(v12, v6);
      return -5005;
    }

    else if (v14 == enum case for DIPError.Code.unableToGeneratePrearmTrustKeyOnPhone(_:))
    {
      (*(v7 + 8))(v12, v6);
      return -5008;
    }

    else if (v14 == enum case for DIPError.Code.unableToGenerateNonceOnWatch(_:))
    {
      (*(v7 + 8))(v12, v6);
      return -5007;
    }

    else
    {
      if (v14 != enum case for DIPError.Code.unableToGenerateAuthorizationTokenOnPhone(_:))
      {
        v15 = *(v7 + 8);
        v15(v12, v6);
        v15(v10, v6);
        return -5000;
      }

      (*(v7 + 8))(v12, v6);
      return -5006;
    }
  }
}

unint64_t sub_100141D3C(void *a1, uint64_t a2)
{
  v40 = type metadata accessor for DIPError.Code();
  v38 = *(v40 - 8);
  __chkstk_darwin(v40);
  v39 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for KeyAuthorizationCOSE_Sign1Payload.AuthorizerType();
  v35 = *(v5 - 8);
  v36 = v5;
  __chkstk_darwin(v5);
  v34 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for KeyAuthorizationCOSE_Sign1Payload.KeyPurpose();
  v30 = *(v7 - 8);
  v31 = v7;
  __chkstk_darwin(v7);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for KeyAuthorizationCOSE_Sign1Payload();
  v32 = *(v10 - 8);
  v33 = v10;
  __chkstk_darwin(v10);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100004E70(&qword_100201070, &unk_1001AD2D0);
  __chkstk_darwin(v13 - 8);
  v15 = &v29 - v14;
  v16 = type metadata accessor for COSEKey();
  v17 = *(v16 - 8);
  v18 = __chkstk_darwin(v16);
  v20 = &v29 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v29 - v21;
  (*(a2 + 24))(*a1, a2);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_10000A0D4(v15, &qword_100201070, &unk_1001AD2D0);
    v23 = v39;
    v24 = *(v38 + 104);
    v24(v39, enum case for DIPError.Code.idcsInvalidPublicKey(_:), v40);
    v25 = 0x80000001001BBBC0;
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100144864(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
  }

  else
  {
    (*(v17 + 32))(v22, v15, v16);
    (*(v17 + 16))(v20, v22, v16);
    (*(v30 + 104))(v9, enum case for KeyAuthorizationCOSE_Sign1Payload.KeyPurpose.deviceEncryptionKey(_:), v31);
    (*(v35 + 104))(v34, enum case for KeyAuthorizationCOSE_Sign1Payload.AuthorizerType.keyAuthorizationKey(_:), v36);
    KeyAuthorizationCOSE_Sign1Payload.init(publicKey:keyPurpose:authorizerType:)();
    v26 = v37;
    v27 = sub_100142428(v12);
    if (!v26)
    {
      v25 = v27;
      (*(v32 + 8))(v12, v33);
      (*(v17 + 8))(v22, v16);
      return v25;
    }

    (*(v32 + 8))(v12, v33);
    (*(v17 + 8))(v22, v16);
    v23 = v39;
    v24 = *(v38 + 104);
    v25 = 0x80000001001BBBC0;
  }

  v24(v23, enum case for DIPError.Code.internalError(_:), v40);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100144864(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  return v25;
}

char *sub_100142428(char *a1)
{
  v109 = a1;
  v95 = type metadata accessor for DIPError.Code();
  v93 = *(v95 - 8);
  __chkstk_darwin(v95);
  v96 = &v83 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = sub_100004E70(&qword_1002014D0, &unk_1001AD120);
  __chkstk_darwin(v94);
  v97 = &v83 - v2;
  v3 = type metadata accessor for SHA256();
  v100 = *(v3 - 8);
  v101 = v3;
  __chkstk_darwin(v3);
  v98 = &v83 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SHA256Digest();
  v102 = *(v5 - 8);
  v103 = v5;
  __chkstk_darwin(v5);
  v99 = (&v83 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for RFC8152SigStructure();
  v105 = *(v7 - 8);
  v106 = v7;
  __chkstk_darwin(v7);
  v9 = &v83 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Logger();
  v108 = *(v10 - 8);
  v11 = __chkstk_darwin(v10);
  v13 = &v83 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v83 - v14;
  v16 = sub_100004E70(&qword_100201520, &qword_1001AD110);
  v107 = *(v16 - 8);
  __chkstk_darwin(v16);
  v18 = &v83 - v17;
  type metadata accessor for CBOREncoder();
  swift_allocObject();
  v19 = CBOREncoder.init()();
  type metadata accessor for KeyAuthorizationCOSE_Sign1Payload();
  sub_100144864(&qword_100203B10, &type metadata accessor for KeyAuthorizationCOSE_Sign1Payload, &protocol conformance descriptor for KeyAuthorizationCOSE_Sign1Payload);
  v20 = v111;
  v21 = dispatch thunk of CBOREncoder.encode<A>(_:)();
  if (v20)
  {
  }

  else
  {
    v90 = v16;
    v91 = v15;
    v89 = v13;
    v92 = v10;
    v111 = v19;
    v109 = v9;
    v110[0] = v21;
    v110[1] = v22;
    v23 = v22;
    v24 = v21;
    swift_allocObject();
    sub_100009708(v24, v23);
    CBOREncoder.init()();
    sub_100046428();
    sub_10004647C();
    CBOREncodedCBOR.init(value:tag:encoder:)();
    v88 = v24;
    v87 = v23;
    v25 = v90;
    v26 = CBOREncodedCBOR.dataValue.getter();
    v28 = v27;
    (*(v107 + 8))(v18, v25);
    v29 = v91;
    v30 = defaultLogger()();
    __chkstk_darwin(v30);
    Logger.cryptoParam(_:)();
    v31 = v108 + 8;
    v32 = *(v108 + 8);
    v33 = v92;
    v32(v29, v92);
    sub_100009708(v26, v28);
    v9 = v111;

    RFC8152SigStructure.init(algorithm:payload:encoder:)();
    v86 = v26;
    v107 = v28;
    sub_100144864(&qword_100202940, &type metadata accessor for RFC8152SigStructure, &protocol conformance descriptor for RFC8152SigStructure);
    v35 = dispatch thunk of CBOREncoder.encode<A>(_:)();
    v37 = v36;
    v38 = v91;
    v39 = defaultLogger()();
    __chkstk_darwin(v39);
    v90 = v37;
    v40 = v35;
    v85 = 0;
    Logger.cryptoParam(_:)();
    v32(v38, v33);
    sub_100144864(&qword_100200608, &type metadata accessor for SHA256, &protocol conformance descriptor for SHA256);
    v84 = v32;
    v41 = v98;
    v42 = v101;
    dispatch thunk of HashFunction.init()();
    v43 = v90;
    sub_100009708(v40, v90);
    v44 = v85;
    sub_1000D8FBC(v40, v43, v41);
    v108 = v44;
    v83 = v40;
    sub_1000092BC(v40, v43);
    v45 = v99;
    dispatch thunk of HashFunction.finalize()();
    v46 = v84;
    (*(v100 + 8))(v41, v42);
    sub_100144864(&qword_100200610, &type metadata accessor for SHA256Digest, &protocol conformance descriptor for SHA256Digest);
    v47 = v103;
    v48 = Digest.data.getter();
    v50 = v49;
    (*(v102 + 8))(v45, v47);
    v51 = defaultLogger()();
    v52 = v31;
    __chkstk_darwin(v51);
    Logger.cryptoParam(_:)();
    v46(v38, v92);
    v53 = v104;
    v54 = v104[3];
    v55 = v104[4];
    sub_100009278(v104, v54);
    v56 = v108;
    v57 = (*(v55 + 16))(v48, v50, v54, v55);
    if (v56)
    {
      (*(v105 + 8))(v109, v106);
      sub_1000092BC(v88, v87);
      sub_1000092BC(v86, v107);

      sub_1000092BC(v48, v50);
      sub_1000092BC(v83, v90);
    }

    else
    {
      v102 = v57;
      v103 = v58;
      v101 = v48;
      v108 = v52;
      v85 = 0;
      v59 = v53[3];
      v60 = v53[4];
      sub_100009278(v53, v59);
      v61 = (*(v60 + 8))(v59, v60);
      if (v62 >> 60 == 15)
      {
        (*(v93 + 104))(v96, enum case for DIPError.Code.idcsInvalidPublicKey(_:), v95);
        v9 = "g key signing key";
        sub_10002688C(_swiftEmptyArrayStorage);
        type metadata accessor for DIPError();
        sub_100144864(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
        swift_allocError();
        DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
        swift_willThrow();
        sub_1000092BC(v101, v50);
        sub_1000092BC(v83, v90);
        sub_1000092BC(v102, v103);

        sub_1000092BC(v86, v107);
        sub_1000092BC(v88, v87);
        (*(v105 + 8))(v109, v106);
      }

      else
      {
        v63 = v61;
        v64 = v62;
        v104 = v50;
        v65 = v107;
        sub_100009708(v86, v107);
        sub_100032EBC(v63, v64);
        v66 = v102;
        v67 = v103;
        sub_100009708(v102, v103);
        v68 = v97;
        COSE_Sign1.init(algorithmIdentifier:keyIdentifier:payload:signature:includeCBORTag:)();
        sub_1001447B0();
        v100 = v64;
        v69 = v85;
        v70 = dispatch thunk of CBOREncoder.encode<A>(_:)();
        v85 = v69;
        v72 = v90;
        if (v69)
        {
          sub_1000092BC(v101, v104);
          sub_1000092BC(v83, v72);
          sub_1000092BC(v66, v67);
          sub_10001C120(v63, v100);

          sub_1000092BC(v86, v65);
          sub_1000092BC(v88, v87);
          sub_10000A0D4(v68, &qword_1002014D0, &unk_1001AD120);
          (*(v105 + 8))(v109, v106);
        }

        else
        {
          v9 = v70;
          v73 = v71;
          v98 = v63;
          v74 = v89;
          defaultLogger()();
          sub_100009708(v9, v73);
          v75 = Logger.logObject.getter();
          v76 = static os_log_type_t.debug.getter();
          sub_1000092BC(v9, v73);
          v99 = v75;
          if (os_log_type_enabled(v75, v76))
          {
            v77 = swift_slowAlloc();
            v78 = swift_slowAlloc();
            v110[0] = v78;
            *v77 = 136315138;
            v79 = Data.base16EncodedString()();
            v80 = sub_10010150C(v79._countAndFlagsBits, v79._object, v110);

            *(v77 + 4) = v80;
            v81 = v99;
            _os_log_impl(&_mh_execute_header, v99, v76, "Created key authorization %s", v77, 0xCu);
            sub_100005090(v78);

            sub_1000092BC(v101, v104);

            sub_1000092BC(v83, v72);
            sub_1000092BC(v102, v103);
            sub_10001C120(v98, v100);

            sub_1000092BC(v86, v107);
            sub_1000092BC(v88, v87);
            v84(v74, v92);
            v82 = v97;
          }

          else
          {
            sub_1000092BC(v101, v104);

            sub_1000092BC(v83, v72);
            sub_1000092BC(v102, v103);
            sub_10001C120(v98, v100);

            sub_1000092BC(v86, v107);
            sub_1000092BC(v88, v87);
            v84(v74, v92);
            v82 = v68;
          }

          sub_10000A0D4(v82, &qword_1002014D0, &unk_1001AD120);
          (*(v105 + 8))(v109, v106);
        }
      }
    }
  }

  return v9;
}

unint64_t sub_100143318()
{
  v1 = type metadata accessor for DIPError.Code();
  v27 = *(v1 - 8);
  v28 = v1;
  __chkstk_darwin(v1);
  v29 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for KeyAuthorizationCOSE_Sign1Payload.AuthorizerType();
  v25 = *(v3 - 8);
  v26 = v3;
  __chkstk_darwin(v3);
  v24 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for KeyAuthorizationCOSE_Sign1Payload.KeyPurpose();
  v21 = *(v5 - 8);
  v22 = v5;
  __chkstk_darwin(v5);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for KeyAuthorizationCOSE_Sign1Payload();
  v23 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for COSEKey();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v20 - v16;
  sub_10002551C(&v20 - v16);
  if (v0)
  {
    (*(v27 + 104))(v29, enum case for DIPError.Code.internalError(_:), v28);
    swift_errorRetain();
    v19 = sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100144864(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
  }

  else
  {
    v20 = v8;
    (*(v12 + 16))(v15, v17, v11);
    (*(v21 + 104))(v7, enum case for KeyAuthorizationCOSE_Sign1Payload.KeyPurpose.presentmentKey(_:), v22);
    (*(v25 + 104))(v24, enum case for KeyAuthorizationCOSE_Sign1Payload.AuthorizerType.keyAuthorizationKey(_:), v26);
    KeyAuthorizationCOSE_Sign1Payload.init(publicKey:keyPurpose:authorizerType:)();
    v19 = sub_100142428(v10);
    (*(v23 + 8))(v10, v20);
    (*(v12 + 8))(v17, v11);
  }

  return v19;
}

char *sub_100143824(uint64_t a1)
{
  v25 = a1;
  v1 = type metadata accessor for DIPError.Code();
  v19 = *(v1 - 8);
  v20 = v1;
  __chkstk_darwin(v1);
  v21 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for KeyAuthorizationCOSE_Sign1Payload.AuthorizerType();
  v3 = *(v24 - 8);
  __chkstk_darwin(v24);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for KeyAuthorizationCOSE_Sign1Payload.KeyPurpose();
  v6 = *(v22 - 8);
  __chkstk_darwin(v22);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for COSEKey();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for KeyAuthorizationCOSE_Sign1Payload();
  v13 = *(v23 - 8);
  __chkstk_darwin(v23);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v12, v25, v9);
  (*(v6 + 104))(v8, enum case for KeyAuthorizationCOSE_Sign1Payload.KeyPurpose.keySigningKey(_:), v22);
  (*(v3 + 104))(v5, enum case for KeyAuthorizationCOSE_Sign1Payload.AuthorizerType.keyAuthorizationKey(_:), v24);
  KeyAuthorizationCOSE_Sign1Payload.init(publicKey:keyPurpose:authorizerType:)();
  v16 = v26;
  v17 = sub_100142428(v15);
  (*(v13 + 8))(v15, v23);
  if (v16)
  {
    (*(v19 + 104))(v21, enum case for DIPError.Code.internalError(_:), v20);
    swift_errorRetain();
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100144864(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
  }

  return v17;
}

char *sub_100143CB8(uint64_t a1)
{
  v25 = a1;
  v1 = type metadata accessor for DIPError.Code();
  v19 = *(v1 - 8);
  v20 = v1;
  __chkstk_darwin(v1);
  v21 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for KeyAuthorizationCOSE_Sign1Payload.AuthorizerType();
  v3 = *(v24 - 8);
  __chkstk_darwin(v24);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for KeyAuthorizationCOSE_Sign1Payload.KeyPurpose();
  v6 = *(v22 - 8);
  __chkstk_darwin(v22);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for COSEKey();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for KeyAuthorizationCOSE_Sign1Payload();
  v13 = *(v23 - 8);
  __chkstk_darwin(v23);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v12, v25, v9);
  (*(v6 + 104))(v8, enum case for KeyAuthorizationCOSE_Sign1Payload.KeyPurpose.accountKeySigningKey(_:), v22);
  (*(v3 + 104))(v5, enum case for KeyAuthorizationCOSE_Sign1Payload.AuthorizerType.keyAuthorizationKey(_:), v24);
  KeyAuthorizationCOSE_Sign1Payload.init(publicKey:keyPurpose:authorizerType:)();
  v16 = v26;
  v17 = sub_100142428(v15);
  (*(v13 + 8))(v15, v23);
  if (v16)
  {
    (*(v19 + 104))(v21, enum case for DIPError.Code.internalError(_:), v20);
    swift_errorRetain();
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100144864(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
  }

  return v17;
}

char *sub_100144150(uint64_t a1)
{
  v25 = a1;
  v1 = type metadata accessor for DIPError.Code();
  v19 = *(v1 - 8);
  v20 = v1;
  __chkstk_darwin(v1);
  v21 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for KeyAuthorizationCOSE_Sign1Payload.AuthorizerType();
  v3 = *(v24 - 8);
  __chkstk_darwin(v24);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for KeyAuthorizationCOSE_Sign1Payload.KeyPurpose();
  v6 = *(v22 - 8);
  __chkstk_darwin(v22);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for COSEKey();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for KeyAuthorizationCOSE_Sign1Payload();
  v13 = *(v23 - 8);
  __chkstk_darwin(v23);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v12, v25, v9);
  (*(v6 + 104))(v8, enum case for KeyAuthorizationCOSE_Sign1Payload.KeyPurpose.keySigningKey(_:), v22);
  (*(v3 + 104))(v5, enum case for KeyAuthorizationCOSE_Sign1Payload.AuthorizerType.accountKeySigningKey(_:), v24);
  KeyAuthorizationCOSE_Sign1Payload.init(publicKey:keyPurpose:authorizerType:)();
  v16 = v26;
  v17 = sub_100142428(v15);
  (*(v13 + 8))(v15, v23);
  if (v16)
  {
    (*(v19 + 104))(v21, enum case for DIPError.Code.internalError(_:), v20);
    swift_errorRetain();
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100144864(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
  }

  return v17;
}

unint64_t sub_1001445E8()
{
  _StringGuts.grow(_:)(26);

  v0 = Data.base16EncodedString()();
  String.append(_:)(v0);

  return 0xD000000000000018;
}

unint64_t sub_100144678()
{
  _StringGuts.grow(_:)(33);

  v0 = Data.base16EncodedString()();
  String.append(_:)(v0);

  return 0xD00000000000001FLL;
}

unint64_t sub_100144708()
{
  _StringGuts.grow(_:)(27);

  v0 = Data.base16EncodedString()();
  String.append(_:)(v0);

  return 0xD000000000000019;
}

unint64_t sub_1001447B0()
{
  result = qword_100203B18;
  if (!qword_100203B18)
  {
    sub_100021ED0(&qword_1002014D0, &unk_1001AD120);
    sub_100144864(&qword_100203B20, &type metadata accessor for COSE_Sign1, &protocol conformance descriptor for COSE_Sign1);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100203B18);
  }

  return result;
}

uint64_t sub_100144864(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

__n128 sub_1001448BC@<Q0>(__n128 *a1@<X8>)
{
  v68 = type metadata accessor for Logger();
  v70 = *(v68 - 8);
  v2 = __chkstk_darwin(v68);
  v66 = &v65 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __chkstk_darwin(v2);
  v67 = &v65 - v5;
  v6 = __chkstk_darwin(v4);
  v65 = &v65 - v7;
  v8 = __chkstk_darwin(v6);
  v10 = &v65 - v9;
  v11 = __chkstk_darwin(v8);
  v13 = &v65 - v12;
  v14 = __chkstk_darwin(v11);
  v16 = &v65 - v15;
  __chkstk_darwin(v14);
  v18 = &v65 - v17;
  v19 = objc_opt_self();
  v20 = [v19 standardUserDefaults];
  v21._countAndFlagsBits = 0xD00000000000001FLL;
  v21._object = 0x80000001001BBE40;
  v22 = NSUserDefaults.internalString(forKey:)(v21);

  if (!v22.value._object)
  {
    goto LABEL_21;
  }

  if (v22.value._countAndFlagsBits == 0x6975716552746F6ELL && v22.value._object == 0xEB00000000646572 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    defaultLogger()();
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v23, v24, "Forcing credential presentment auth policy to not required due to user defaults setting", v25, 2u);
    }

    v26 = v68;
    (*(v70 + 8))(v18, v68);
    v27 = 0;
    v28 = v69;
    goto LABEL_22;
  }

  if ((v22.value._countAndFlagsBits != 0xD000000000000016 || 0x80000001001BBEA0 != v22.value._object) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    if (v22.value._countAndFlagsBits == 0x69426C61626F6C67 && v22.value._object == 0xED0000676E69646ELL)
    {

LABEL_18:
      defaultLogger()();
      v33 = Logger.logObject.getter();
      v34 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v33, v34))
      {
        v27 = 2;
        v35 = swift_slowAlloc();
        *v35 = 0;
        _os_log_impl(&_mh_execute_header, v33, v34, "Forcing credential presentment auth policy to global binding due to user defaults setting", v35, 2u);

        v36 = v13;
        v26 = v68;
        (*(v70 + 8))(v36, v68);
      }

      else
      {

        v64 = v13;
        v26 = v68;
        (*(v70 + 8))(v64, v68);
        v27 = 2;
      }

      v28 = v69;
      goto LABEL_22;
    }

    v32 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v32)
    {
      goto LABEL_18;
    }

LABEL_21:
    v26 = v68;
    v28 = v69;
    v27 = v69[1].n128_u64[1];
    goto LABEL_22;
  }

  defaultLogger()();
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&_mh_execute_header, v29, v30, "Forcing credential presentment auth policy to any biometric or passcode due to user defaults setting", v31, 2u);
  }

  v26 = v68;
  (*(v70 + 8))(v16, v68);
  v27 = 1;
  v28 = v69;
LABEL_22:
  v37 = [v19 standardUserDefaults];
  v38._countAndFlagsBits = 0xD00000000000001FLL;
  v38._object = 0x80000001001BBE40;
  v39 = NSUserDefaults.internalString(forKey:)(v38);

  if (!v39.value._object)
  {
    goto LABEL_36;
  }

  if (v39.value._countAndFlagsBits == 1701736302 && v39.value._object == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    defaultLogger()();
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&_mh_execute_header, v40, v41, "Forcing reader auth policy to none due to user defaults setting", v42, 2u);
    }

    (*(v70 + 8))(v10, v26);
    v43 = 0;
    goto LABEL_37;
  }

  if (v39.value._countAndFlagsBits != 0x797469746E656469 || v39.value._object != 0xE800000000000000)
  {
    v44 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v44)
    {
      goto LABEL_33;
    }

LABEL_36:
    v43 = v28[1].n128_u64[0];
    goto LABEL_37;
  }

LABEL_33:
  v45 = v65;
  defaultLogger()();
  v46 = Logger.logObject.getter();
  v47 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    *v48 = 0;
    _os_log_impl(&_mh_execute_header, v46, v47, "Forcing reader auth policy to identity due to user defaults setting", v48, 2u);
  }

  (*(v70 + 8))(v45, v26);
  v43 = 1;
LABEL_37:
  v49 = [v19 standardUserDefaults];
  v50._countAndFlagsBits = 0xD000000000000034;
  v50._object = 0x80000001001BBE60;
  v51 = NSUserDefaults.internalString(forKey:)(v50);

  if (!v51.value._object)
  {
    goto LABEL_51;
  }

  if (v51.value._countAndFlagsBits == 0x647261646E617473 && v51.value._object == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v52 = v67;
    defaultLogger()();
    v53 = Logger.logObject.getter();
    v54 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      *v55 = 0;
      _os_log_impl(&_mh_execute_header, v53, v54, "Forcing payload protection policy to standard due to user defaults setting", v55, 2u);
    }

    (*(v70 + 8))(v52, v26);
    v56 = 0;
    goto LABEL_52;
  }

  if (v51.value._countAndFlagsBits != 0x697274656D6F6962 || v51.value._object != 0xE900000000000063)
  {
    v57 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v57)
    {
      goto LABEL_48;
    }

LABEL_51:
    v56 = v28[2].n128_u64[0];
    goto LABEL_52;
  }

LABEL_48:
  v58 = v66;
  defaultLogger()();
  v59 = Logger.logObject.getter();
  v60 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v59, v60))
  {
    v61 = swift_slowAlloc();
    *v61 = 0;
    _os_log_impl(&_mh_execute_header, v59, v60, "Forcing payload protection policy to biometric due to user defaults setting", v61, 2u);
  }

  (*(v70 + 8))(v58, v26);
  v56 = 1;
LABEL_52:
  v62 = v28[2].n128_u8[8];
  result = *v28;
  *a1 = *v28;
  a1[1].n128_u64[0] = v43;
  a1[1].n128_u64[1] = v27;
  a1[2].n128_u64[0] = v56;
  a1[2].n128_u8[8] = v62;
  return result;
}

id sub_100145224(uint64_t a1)
{
  type metadata accessor for StoredCredentialOptions();
  v3 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext:*(a1 + 16)];
  [v3 setDeleteInactiveKeysAfterDays:*(v1 + 8)];
  result = [v3 setDeleteIncompleteCredentialAfterDays:*v1];
  if ((*(v1 + 16) & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_6;
  }

  result = [v3 setReaderAuthenticationPolicy:?];
  if ((*(v1 + 24) & 0x8000000000000000) != 0)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  result = [v3 setPresentmentAuthPolicy:?];
  if ((*(v1 + 32) & 0x8000000000000000) == 0)
  {
    [v3 setPayloadProtectionPolicy:?];
    [v3 setIsPIIHashMismatchTerminal:*(v1 + 40)];
    return v3;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1001452FC(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for DIPError.Code();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  sub_100004E70(&qword_100201CD0, &qword_1001AC550);
  v3[8] = swift_task_alloc();
  v5 = type metadata accessor for Logger();
  v3[9] = v5;
  v3[10] = *(v5 - 8);
  v3[11] = swift_task_alloc();

  return _swift_task_switch(sub_100145454, 0, 0);
}

uint64_t sub_100145454(uint64_t a1)
{
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "CredentialStore deleteCredential", v4, 2u);
  }

  v6 = v1[10];
  v5 = v1[11];
  v7 = v1[9];
  v9 = v1[3];
  v8 = v1[4];
  v10 = v1[2];

  (*(v6 + 8))(v5, v7);
  v11 = swift_allocObject();
  v1[12] = v11;
  v11[2] = v8;
  v11[3] = v10;
  v11[4] = v9;
  v12 = swift_allocObject();
  v1[13] = v12;
  *(v12 + 16) = &unk_1001AE940;
  *(v12 + 24) = v11;

  v13 = swift_task_alloc();
  v1[14] = v13;
  *v13 = v1;
  v13[1] = sub_100145638;

  return AsyncCoreDataContainer.write<A>(_:)(v13, &unk_1001AB060, v12, &type metadata for () + 8);
}

uint64_t sub_100145638()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_100145880;
  }

  else
  {

    v2 = sub_10014575C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10014575C()
{
  v1 = v0[8];
  v2 = v0[4];
  v3 = type metadata accessor for TaskPriority();
  (*(*(v3 - 8) + 56))(v1, 1, 1, v3);
  v4 = swift_allocObject();
  v4[2] = 0;
  v4[3] = 0;
  v4[4] = v2;

  sub_10014EF84(0, 0, v1, &unk_1001AE960, v4);

  v5 = v0[1];

  return v5();
}

uint64_t sub_100145880()
{
  v1 = v0[7];
  v2 = v0[5];
  v3 = v0[6];

  (*(v3 + 104))(v1, enum case for DIPError.Code.internalError(_:), v2);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100008E7C();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v4 = v0[1];

  return v4();
}

uint64_t sub_100145A04(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v2[5] = *v1;
  v3 = type metadata accessor for DIPError.Code();
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  v4 = type metadata accessor for Logger();
  v2[9] = v4;
  v2[10] = *(v4 - 8);
  v2[11] = swift_task_alloc();

  return _swift_task_switch(sub_100145B48, 0, 0);
}

uint64_t sub_100145B48(uint64_t a1)
{
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "CredentialStore getCredentialIdentifiers", v4, 2u);
  }

  v6 = v1[10];
  v5 = v1[11];
  v7 = v1[9];
  v8 = v1[3];

  (*(v6 + 8))(v5, v7);
  if (sub_10016A3B4(v8))
  {
    v9 = v1[5];
    v10 = v1[3];
    v11 = swift_allocObject();
    v1[12] = v11;
    *(v11 + 16) = v10;
    *(v11 + 24) = v9;
    v12 = swift_allocObject();
    v1[13] = v12;
    *(v12 + 16) = sub_100153AA0;
    *(v12 + 24) = v11;

    v13 = swift_task_alloc();
    v1[14] = v13;
    v14 = sub_100004E70(&qword_1002019B8, &qword_1001AD020);
    *v13 = v1;
    v13[1] = sub_100145F9C;

    return AsyncCoreDataContainer.performRead<A>(_:)(v1 + 2, sub_100140EA4, v12, v14);
  }

  else
  {
    v16 = v1[7];
    v15 = v1[8];
    v17 = v1[6];
    _StringGuts.grow(_:)(49);

    v18._countAndFlagsBits = Array.description.getter();
    String.append(_:)(v18);

    v19._countAndFlagsBits = 0xD000000000000024;
    v19._object = 0x80000001001BC0A0;
    String.append(_:)(v19);
    v20 = *(v16 + 104);
    v20(v15, enum case for DIPError.Code.idcsUnauthorizedPartition(_:), v17);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v20(v1[8], enum case for DIPError.Code.internalError(_:), v1[6]);
    swift_errorRetain();
    sub_10002688C(_swiftEmptyArrayStorage);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v21 = v1[1];

    return v21();
  }
}

uint64_t sub_100145F9C()
{
  v2 = *v1;
  v2[15] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100146110, 0, 0);
  }

  else
  {

    v3 = v2[2];

    v4 = v2[1];

    return v4(v3);
  }
}

uint64_t sub_100146110()
{
  v1 = v0[7];

  (*(v1 + 104))(v0[8], enum case for DIPError.Code.internalError(_:), v0[6]);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100008E7C();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v2 = v0[1];

  return v2();
}

uint64_t sub_100146280(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v4 = type metadata accessor for DIPError.Code();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();
  v5 = type metadata accessor for Logger();
  v3[9] = v5;
  v3[10] = *(v5 - 8);
  v3[11] = swift_task_alloc();

  return _swift_task_switch(sub_1001463A0, 0, 0);
}

uint64_t sub_1001463A0(uint64_t a1)
{
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "CredentialStore getProperties", v4, 2u);
  }

  v6 = v1[10];
  v5 = v1[11];
  v7 = v1[9];
  v9 = v1[4];
  v8 = v1[5];
  v10 = v1[3];

  (*(v6 + 8))(v5, v7);
  v11 = swift_allocObject();
  v1[12] = v11;
  v11[2] = v8;
  v11[3] = v10;
  v11[4] = v9;
  v12 = swift_allocObject();
  v1[13] = v12;
  *(v12 + 16) = sub_1001539FC;
  *(v12 + 24) = v11;

  v13 = swift_task_alloc();
  v1[14] = v13;
  v14 = sub_100153A1C();
  *v13 = v1;
  v13[1] = sub_10014658C;

  return AsyncCoreDataContainer.performRead<A>(_:)(v1 + 2, sub_1000BCF60, v12, v14);
}

uint64_t sub_10014658C()
{
  v2 = *v1;
  v2[15] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100146700, 0, 0);
  }

  else
  {

    v3 = v2[2];

    v4 = v2[1];

    return v4(v3);
  }
}

uint64_t sub_100146700()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];

  (*(v2 + 104))(v1, enum case for DIPError.Code.internalError(_:), v3);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100008E7C();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v4 = v0[1];

  return v4();
}

uint64_t sub_10014687C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[16] = a3;
  v4[17] = v3;
  v4[14] = a1;
  v4[15] = a2;
  v5 = type metadata accessor for DIPError.Code();
  v4[18] = v5;
  v4[19] = *(v5 - 8);
  v4[20] = swift_task_alloc();
  v6 = type metadata accessor for UUID();
  v4[21] = v6;
  v4[22] = *(v6 - 8);
  v4[23] = swift_task_alloc();
  v7 = type metadata accessor for Logger();
  v4[24] = v7;
  v4[25] = *(v7 - 8);
  v4[26] = swift_task_alloc();

  return _swift_task_switch(sub_1001469F8, 0, 0);
}

uint64_t sub_1001469F8(uint64_t a1)
{
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "CredentialStore createCredential", v4, 2u);
  }

  v6 = *(v1 + 200);
  v5 = *(v1 + 208);
  v7 = *(v1 + 192);

  (*(v6 + 8))(v5, v7);
  if (_isInternalBuild.getter() & 1) != 0 && (sub_1000A0DEC(42, 0xE100000000000000, *(*(v1 + 136) + 16)) & 1) != 0 || (sub_1000A0DEC(*(v1 + 112), *(v1 + 120), *(*(v1 + 136) + 16)))
  {
    v9 = *(v1 + 176);
    v8 = *(v1 + 184);
    v10 = *(v1 + 168);
    v11 = *(v1 + 128);
    UUID.init()();
    v35 = UUID.uuidString.getter();
    v36 = v12;
    *(v1 + 216) = v35;
    *(v1 + 224) = v12;
    (*(v9 + 8))(v8, v10);
    if (v11)
    {
      v13 = *(v1 + 128);
      v14 = [v13 deleteIncompleteCredentialAfterDays];
      v15 = [v13 deleteInactiveKeysAfterDays];
      v11 = [v13 readerAuthenticationPolicy];
      v16 = [v13 presentmentAuthPolicy];
      v17 = [v13 payloadProtectionPolicy];
      v18 = [v13 isPIIHashMismatchTerminal];
    }

    else
    {
      v18 = 0;
      v17 = 0;
      v16 = 0;
      v15 = 0;
      v14 = 0;
    }

    v29 = *(v1 + 112);
    v30 = *(v1 + 120);
    *(v1 + 16) = v14;
    *(v1 + 24) = v15;
    *(v1 + 32) = v11;
    *(v1 + 40) = v16;
    *(v1 + 48) = v17;
    *(v1 + 56) = v18;
    sub_1001448BC((v1 + 64));
    v31 = swift_allocObject();
    *(v1 + 232) = v31;
    *(v31 + 16) = v29;
    *(v31 + 24) = v30;
    *(v31 + 32) = v35;
    *(v31 + 40) = v36;
    v32 = *(v1 + 80);
    *(v31 + 48) = *(v1 + 64);
    *(v31 + 64) = v32;
    *(v31 + 73) = *(v1 + 89);
    v33 = swift_allocObject();
    *(v1 + 240) = v33;
    *(v33 + 16) = sub_100153F3C;
    *(v33 + 24) = v31;

    v34 = swift_task_alloc();
    *(v1 + 248) = v34;
    *v34 = v1;
    v34[1] = sub_100146F74;

    return AsyncCoreDataContainer.performWrite<A>(_:)(v34, sub_10001C150, v33, &type metadata for () + 8);
  }

  else
  {
    v20 = *(v1 + 152);
    v19 = *(v1 + 160);
    v21 = *(v1 + 144);
    v23 = *(v1 + 112);
    v22 = *(v1 + 120);
    _StringGuts.grow(_:)(47);

    v24._countAndFlagsBits = v23;
    v24._object = v22;
    String.append(_:)(v24);
    v25._countAndFlagsBits = 0xD000000000000023;
    v25._object = 0x80000001001BC280;
    String.append(_:)(v25);
    v26 = *(v20 + 104);
    v26(v19, enum case for DIPError.Code.idcsUnauthorizedPartition(_:), v21);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v26(*(v1 + 160), enum case for DIPError.Code.internalError(_:), *(v1 + 144));
    swift_errorRetain();
    sub_10002688C(_swiftEmptyArrayStorage);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v27 = *(v1 + 8);

    return v27();
  }
}

uint64_t sub_100146F74()
{
  *(*v1 + 256) = v0;

  if (v0)
  {
    v2 = sub_100147118;
  }

  else
  {

    v2 = sub_100147098;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100147098()
{

  v1 = v0[1];
  v2 = v0[27];
  v3 = v0[28];

  return v1(v2, v3);
}

uint64_t sub_100147118()
{
  v1 = v0[19];

  (*(v1 + 104))(v0[20], enum case for DIPError.Code.internalError(_:), v0[18]);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100008E7C();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v2 = v0[1];

  return v2();
}

uint64_t sub_1001472A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  v4[7] = *v3;
  v5 = type metadata accessor for DIPError.Code();
  v4[8] = v5;
  v4[9] = *(v5 - 8);
  v4[10] = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  v4[11] = v6;
  v4[12] = *(v6 - 8);
  v4[13] = swift_task_alloc();

  return _swift_task_switch(sub_1001473F0, 0, 0);
}

uint64_t sub_1001473F0(uint64_t a1)
{
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "CredentialStore credentialIdentifiersInPartitionsDocType", v4, 2u);
  }

  v6 = v1[12];
  v5 = v1[13];
  v7 = v1[11];
  v8 = v1[3];

  (*(v6 + 8))(v5, v7);
  if (sub_10016A3B4(v8))
  {
    v9 = v1[7];
    v11 = v1[4];
    v10 = v1[5];
    v12 = v1[3];
    v13 = swift_allocObject();
    v1[14] = v13;
    v13[2] = v12;
    v13[3] = v11;
    v13[4] = v10;
    v13[5] = v9;
    v14 = swift_allocObject();
    v1[15] = v14;
    *(v14 + 16) = sub_100153EDC;
    *(v14 + 24) = v13;

    v15 = swift_task_alloc();
    v1[16] = v15;
    v16 = sub_100004E70(&qword_1002019B8, &qword_1001AD020);
    *v15 = v1;
    v15[1] = sub_100147860;

    return AsyncCoreDataContainer.performRead<A>(_:)(v1 + 2, sub_100141890, v14, v16);
  }

  else
  {
    v18 = v1[9];
    v17 = v1[10];
    v19 = v1[8];
    _StringGuts.grow(_:)(49);

    v20._countAndFlagsBits = Array.description.getter();
    String.append(_:)(v20);

    v21._countAndFlagsBits = 0xD000000000000024;
    v21._object = 0x80000001001BC0A0;
    String.append(_:)(v21);
    v22 = *(v18 + 104);
    v22(v17, enum case for DIPError.Code.idcsUnauthorizedPartition(_:), v19);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v22(v1[10], enum case for DIPError.Code.internalError(_:), v1[8]);
    swift_errorRetain();
    sub_10002688C(_swiftEmptyArrayStorage);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v23 = v1[1];

    return v23();
  }
}

uint64_t sub_100147860()
{
  v2 = *v1;
  v2[17] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1001479D4, 0, 0);
  }

  else
  {

    v3 = v2[2];

    v4 = v2[1];

    return v4(v3);
  }
}

uint64_t sub_1001479D4()
{
  v1 = v0[9];

  (*(v1 + 104))(v0[10], enum case for DIPError.Code.internalError(_:), v0[8]);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100008E7C();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v2 = v0[1];

  return v2();
}

uint64_t sub_100147B4C(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v3[6] = *v2;
  v4 = type metadata accessor for DIPError.Code();
  v3[7] = v4;
  v3[8] = *(v4 - 8);
  v3[9] = swift_task_alloc();
  v5 = type metadata accessor for Logger();
  v3[10] = v5;
  v3[11] = *(v5 - 8);
  v3[12] = swift_task_alloc();

  return _swift_task_switch(sub_100147C94, 0, 0);
}

uint64_t sub_100147C94(uint64_t a1)
{
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "CredentialStore activeRegionsInPartitions", v4, 2u);
  }

  v6 = v1[11];
  v5 = v1[12];
  v7 = v1[10];
  v8 = v1[3];

  (*(v6 + 8))(v5, v7);
  v9 = sub_10016A3B4(v8);
  v10 = v1[3];
  if (v9)
  {
    v11 = v1[6];
    v12 = v1[4];
    v13 = swift_allocObject();
    v1[13] = v13;
    v13[2] = v10;
    v13[3] = v12;
    v13[4] = v11;
    v14 = swift_allocObject();
    v1[14] = v14;
    *(v14 + 16) = sub_100153E28;
    *(v14 + 24) = v13;

    v15 = swift_task_alloc();
    v1[15] = v15;
    v16 = sub_100004E70(&qword_100203C08, &qword_1001AE980);
    *v15 = v1;
    v15[1] = sub_1001480FC;

    return AsyncCoreDataContainer.performRead<A>(_:)(v1 + 2, sub_100141890, v14, v16);
  }

  else
  {
    v18 = v1[8];
    v17 = v1[9];
    v19 = v1[7];
    _StringGuts.grow(_:)(49);

    v20._countAndFlagsBits = Array.description.getter();
    String.append(_:)(v20);

    v21._countAndFlagsBits = 0xD000000000000024;
    v21._object = 0x80000001001BC0A0;
    String.append(_:)(v21);
    v22 = *(v18 + 104);
    v22(v17, enum case for DIPError.Code.idcsUnauthorizedPartition(_:), v19);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v22(v1[9], enum case for DIPError.Code.internalError(_:), v1[7]);
    swift_errorRetain();
    sub_10002688C(_swiftEmptyArrayStorage);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v23 = v1[1];

    return v23();
  }
}

uint64_t sub_1001480FC()
{
  v2 = *v1;
  v2[16] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100148270, 0, 0);
  }

  else
  {

    v3 = v2[2];

    v4 = v2[1];

    return v4(v3);
  }
}

uint64_t sub_100148270()
{
  v1 = v0[8];

  (*(v1 + 104))(v0[9], enum case for DIPError.Code.internalError(_:), v0[7]);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100008E7C();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v2 = v0[1];

  return v2();
}

uint64_t sub_1001483E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  sub_100004E70(&qword_100201CD0, &qword_1001AC550);
  v4[6] = swift_task_alloc();
  v5 = type metadata accessor for DIPError.Code();
  v4[7] = v5;
  v4[8] = *(v5 - 8);
  v4[9] = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  v4[10] = v6;
  v4[11] = *(v6 - 8);
  v4[12] = swift_task_alloc();

  return _swift_task_switch(sub_100148540, 0, 0);
}

uint64_t sub_100148540(uint64_t a1)
{
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "CredentialStore setState", v4, 2u);
  }

  v6 = v1[11];
  v5 = v1[12];
  v7 = v1[10];
  v9 = v1[4];
  v8 = v1[5];
  v11 = v1[2];
  v10 = v1[3];

  (*(v6 + 8))(v5, v7);
  v12 = swift_allocObject();
  v1[13] = v12;
  v12[2] = v8;
  v12[3] = v11;
  v12[4] = v10;
  v12[5] = v9;
  v13 = swift_allocObject();
  v1[14] = v13;
  *(v13 + 16) = sub_100153794;
  *(v13 + 24) = v12;

  v14 = swift_task_alloc();
  v1[15] = v14;
  *v14 = v1;
  v14[1] = sub_100148724;

  return AsyncCoreDataContainer.performWrite<A>(_:)(v14, sub_10001AAC8, v13, &type metadata for () + 8);
}

uint64_t sub_100148724()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_100148970;
  }

  else
  {

    v2 = sub_100148848;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100148848()
{
  if (v0[4] == 2)
  {
    v1 = v0[5];
    v2 = v0[6];
    v3 = type metadata accessor for TaskPriority();
    (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
    v4 = swift_allocObject();
    v4[2] = 0;
    v4[3] = 0;
    v4[4] = v1;

    sub_10014EF84(0, 0, v2, &unk_1001AE8F0, v4);
  }

  v5 = v0[1];

  return v5();
}

uint64_t sub_100148970()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];

  (*(v2 + 104))(v1, enum case for DIPError.Code.internalError(_:), v3);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100008E7C();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v4 = v0[1];

  return v4();
}

uint64_t sub_100148AF0(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  v4 = type metadata accessor for DIPError.Code();
  v3[7] = v4;
  v3[8] = *(v4 - 8);
  v3[9] = swift_task_alloc();
  v5 = type metadata accessor for Logger();
  v3[10] = v5;
  v3[11] = *(v5 - 8);
  v3[12] = swift_task_alloc();

  return _swift_task_switch(sub_100148C10, 0, 0);
}

uint64_t sub_100148C10(uint64_t a1)
{
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "CredentialStore getPayloadAuthACL", v4, 2u);
  }

  v6 = v1[11];
  v5 = v1[12];
  v7 = v1[10];
  v9 = v1[5];
  v8 = v1[6];
  v10 = v1[4];

  (*(v6 + 8))(v5, v7);
  v11 = swift_allocObject();
  v1[13] = v11;
  v11[2] = v8;
  v11[3] = v10;
  v11[4] = v9;
  v12 = swift_allocObject();
  v1[14] = v12;
  *(v12 + 16) = &unk_1001AE8B0;
  *(v12 + 24) = v11;

  v13 = swift_task_alloc();
  v1[15] = v13;
  v14 = sub_100004E70(&qword_100203B08, &qword_1001AE520);
  *v13 = v1;
  v13[1] = sub_100148E08;

  return AsyncCoreDataContainer.read<A>(_:)(v1 + 2, &unk_1001AE8C0, v12, v14);
}

uint64_t sub_100148E08()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_100148F2C;
  }

  else
  {

    v2 = sub_10013B3D0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100148F2C()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];

  (*(v2 + 104))(v1, enum case for DIPError.Code.internalError(_:), v3);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100008E7C();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v4 = v0[1];

  return v4();
}

uint64_t sub_1001490A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[11] = a5;
  v6[12] = v5;
  v6[9] = a3;
  v6[10] = a4;
  v6[7] = a1;
  v6[8] = a2;
  v7 = type metadata accessor for DIPError.Code();
  v6[13] = v7;
  v6[14] = *(v7 - 8);
  v6[15] = swift_task_alloc();
  v8 = type metadata accessor for Logger();
  v6[16] = v8;
  v6[17] = *(v8 - 8);
  v6[18] = swift_task_alloc();

  return _swift_task_switch(sub_1001491C8, 0, 0);
}

uint64_t sub_1001491C8(uint64_t a1)
{
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "CredentialStore getElements", v4, 2u);
  }

  v6 = v1[17];
  v5 = v1[18];
  v7 = v1[16];
  v9 = v1[11];
  v8 = v1[12];
  v10 = v1[10];
  v12 = v1[7];
  v11 = v1[8];

  (*(v6 + 8))(v5, v7);
  v13 = swift_allocObject();
  v1[19] = v13;
  v13[2] = v8;
  v13[3] = v12;
  v13[4] = v11;
  v13[5] = v10;
  v13[6] = v9;

  sub_100032EBC(v10, v9);
  v14 = swift_allocObject();
  v1[20] = v14;
  *(v14 + 16) = &unk_1001AE878;
  *(v14 + 24) = v13;

  v15 = swift_task_alloc();
  v1[21] = v15;
  v16 = sub_100004E70(&qword_100202720, &unk_1001AE890);
  *v15 = v1;
  v15[1] = sub_1001493DC;

  return AsyncCoreDataContainer.read<A>(_:)(v1 + 2, &unk_1001AE888, v14, v16);
}

uint64_t sub_1001493DC()
{
  *(*v1 + 176) = v0;

  if (v0)
  {
    v2 = sub_100149754;
  }

  else
  {

    v2 = sub_100149500;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100149500()
{
  v1 = v0[5];
  v2 = v0[6];
  sub_100009278(v0 + 2, v1);
  v6 = (*(v2 + 16) + **(v2 + 16));
  v3 = swift_task_alloc();
  v0[23] = v3;
  *v3 = v0;
  v3[1] = sub_10014962C;
  v4 = v0[9];

  return v6(v4, v1, v2);
}

uint64_t sub_10014962C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 192) = v1;

  if (v1)
  {
    v5 = sub_100149968;
  }

  else
  {
    *(v4 + 200) = a1;
    v5 = sub_1001498C8;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100149754()
{

  (*(v0[14] + 104))(v0[15], enum case for DIPError.Code.internalError(_:), v0[13]);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100008E7C();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v1 = v0[1];

  return v1();
}

uint64_t sub_1001498C8()
{
  v1 = sub_100020718(v0[25]);

  sub_100005090(v0 + 2);

  v2 = v0[1];

  return v2(v1);
}

uint64_t sub_100149968()
{
  sub_100005090(v0 + 2);
  (*(v0[14] + 104))(v0[15], enum case for DIPError.Code.internalError(_:), v0[13]);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100008E7C();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v1 = v0[1];

  return v1();
}

void sub_100149AD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v25 = a6;
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v25 - v12;
  type metadata accessor for StoredCredential();
  v26 = a1;
  v14 = *(a1 + 16);
  v15 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v16 = [v15 initWithContext:{v14, v25}];
  v17 = String._bridgeToObjectiveC()();
  [v16 setPartition:v17];

  [v16 setState:1];
  v18 = String._bridgeToObjectiveC()();
  [v16 setCredentialIdentifier:v18];

  Date.init()();
  isa = Date._bridgeToObjectiveC()().super.isa;
  v20 = *(v8 + 8);
  v20(v13, v7);
  [v16 setCreatedAt:isa];

  v21 = [v16 createdAt];
  if (v21)
  {
    v22 = v21;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v23.super.isa = Date._bridgeToObjectiveC()().super.isa;
    v20(v11, v7);
  }

  else
  {
    v23.super.isa = 0;
  }

  [v16 setUpdatedAt:v23.super.isa];

  v24 = sub_100145224(v26);
  [v16 setOptions:v24];

  sub_100050240();
}

unint64_t sub_100149D4C@<X0>(uint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  isInternal = _isInternalBuild.getter();
  if (isInternal & 1) != 0 && (v9[0] = 42, v9[1] = 0xE100000000000000, __chkstk_darwin(isInternal), v8[2] = v9, (sub_100120CF8(sub_10000ED28, v8, a2)))
  {
    result = sub_100052B58(_swiftEmptyArrayStorage);
    if (v3)
    {
      return result;
    }
  }

  else
  {
    result = sub_100052B58(a2);
    if (v3)
    {
      return result;
    }
  }

  *a3 = result;
  return result;
}

unint64_t sub_100149E20@<X0>(void *a2@<X1>, unint64_t a3@<X2>, const char *a4@<X3>, unint64_t *a5@<X8>)
{
  isInternal = _isInternalBuild.getter();
  if (isInternal & 1) != 0 && (v14[0] = 42, v14[1] = 0xE100000000000000, __chkstk_darwin(isInternal), v13[2] = v14, (sub_100120CF8(sub_100154218, v13, a2)))
  {
    v11 = _swiftEmptyArrayStorage;
  }

  else
  {
    v11 = a2;
  }

  result = sub_1000534F4(v11, a3, a4);
  if (!v5)
  {
    *a5 = result;
  }

  return result;
}

void *sub_100149F08@<X0>(void *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  isInternal = _isInternalBuild.getter();
  if (isInternal & 1) != 0 && (v12[0] = 42, v12[1] = 0xE100000000000000, __chkstk_darwin(isInternal), v11[2] = v12, (sub_100120CF8(sub_100154218, v11, a2)))
  {
    v9 = _swiftEmptyArrayStorage;
  }

  else
  {
    v9 = a2;
  }

  result = sub_100053E30(v9, a3);
  if (!v4)
  {
    *a4 = result;
  }

  return result;
}

uint64_t sub_100149FDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[10] = a4;
  v5[11] = a5;
  v5[8] = a2;
  v5[9] = a3;
  v6 = type metadata accessor for DIPError();
  v5[12] = v6;
  v5[13] = *(v6 - 8);
  v5[14] = swift_task_alloc();
  v7 = type metadata accessor for DIPError.Code();
  v5[15] = v7;
  v5[16] = *(v7 - 8);
  v5[17] = swift_task_alloc();
  v8 = type metadata accessor for Logger();
  v5[18] = v8;
  v5[19] = *(v8 - 8);
  v5[20] = swift_task_alloc();
  v5[21] = swift_task_alloc();
  v5[22] = swift_task_alloc();
  v9 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  v5[23] = v9;
  v5[24] = *(v9 - 8);
  v5[25] = swift_task_alloc();
  v5[26] = swift_task_alloc();

  return _swift_task_switch(sub_10014A1D8, 0, 0);
}

uint64_t sub_10014A1D8()
{
  v1 = *(v0 + 192);
  v14 = *(v0 + 184);
  v15 = *(v0 + 208);
  v2 = *(v0 + 80);
  v3 = *(v0 + 88);
  v5 = *(v0 + 64);
  v4 = *(v0 + 72);
  v6 = swift_allocObject();
  *(v0 + 216) = v6;
  v6[2] = v4;
  v6[3] = v2;
  v6[4] = v3;
  v6[5] = v5;
  *(v0 + 224) = *(v5 + 16);
  v7 = swift_allocObject();
  *(v0 + 232) = v7;
  *(v7 + 16) = sub_100153CE4;
  *(v7 + 24) = v6;
  v8 = enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:);
  *(v0 + 472) = enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:);
  v9 = *(v1 + 104);
  *(v0 + 240) = v9;
  *(v0 + 248) = (v1 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;

  v9(v15, v8, v14);

  v10 = swift_task_alloc();
  *(v0 + 256) = v10;
  v11 = sub_100004E70(&qword_100203C00, &qword_1001AE970);
  *v10 = v0;
  v10[1] = sub_10014A38C;
  v12 = *(v0 + 208);

  return NSManagedObjectContext.perform<A>(schedule:_:)(v0 + 16, v12, sub_100153D3C, v7, v11);
}

uint64_t sub_10014A38C()
{
  v2 = *v1;
  *(*v1 + 264) = v0;

  if (v0)
  {
    (*(*(v2 + 192) + 8))(*(v2 + 208), *(v2 + 184));

    v3 = sub_10014ADA0;
  }

  else
  {
    v4 = *(v2 + 208);
    v5 = *(v2 + 184);
    v6 = *(v2 + 192);

    v7 = *(v6 + 8);
    *(v2 + 272) = v7;
    *(v2 + 280) = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v7(v4, v5);
    *(v2 + 288) = *(v2 + 16);
    v3 = sub_10014A518;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10014A518(uint64_t a1)
{
  defaultLogger()();

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v1 + 288);
  if (v4)
  {
    v6 = swift_slowAlloc();
    *v6 = 134349056;
    *(v6 + 4) = *(v5 + 16);

    _os_log_impl(&_mh_execute_header, v2, v3, "Deleting %{public}ld key signing keys", v6, 0xCu);
  }

  else
  {
  }

  v7 = *(v1 + 288);
  v8 = *(v1 + 176);
  v9 = *(v1 + 144);
  v10 = *(v1 + 152);
  v11 = *(v10 + 8);
  *(v1 + 304) = v11;
  *(v1 + 312) = (v10 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v11(v8, v9);
  v12 = *(v7 + 16);
  *(v1 + 320) = v12;
  if (v12)
  {
    v13 = *(v1 + 288);
    v14 = *(*(v1 + 72) + 112);
    *(v1 + 476) = enum case for DIPError.Code.internalError(_:);
    *(v1 + 328) = v14;
    *(v1 + 336) = 0;
    v16 = *(v13 + 32);
    v15 = *(v13 + 40);

    *(v1 + 32) = 778793835;
    *(v1 + 40) = 0xE400000000000000;
    v17._countAndFlagsBits = v16;
    v17._object = v15;
    String.append(_:)(v17);

    v18 = *(v1 + 32);
    v19 = *(v1 + 40);
    *(v1 + 344) = v19;
    v20 = swift_task_alloc();
    *(v1 + 352) = v20;
    *v20 = v1;
    v21 = sub_10014AE64;
LABEL_6:
    v20[1] = v21;

    return DeviceIdentityKeystore.deleteKeysAndCertificates(label:)(v18, v19);
  }

  v22 = *(v1 + 264);

  defaultLogger()();

  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.info.getter();
  v25 = os_log_type_enabled(v23, v24);
  v26 = *(v1 + 296);
  if (v25)
  {
    v27 = swift_slowAlloc();
    *v27 = 134349056;
    *(v27 + 4) = *(v26 + 16);

    _os_log_impl(&_mh_execute_header, v23, v24, "Deleting %{public}ld device encryption keys", v27, 0xCu);
  }

  else
  {
  }

  v28 = *(v1 + 296);
  (*(v1 + 304))(*(v1 + 160), *(v1 + 144));
  v29 = *(v28 + 16);
  *(v1 + 368) = v29;
  if (v29)
  {
    v30 = 0;
    *(v1 + 480) = enum case for DIPError.Code.internalError(_:);
    while (1)
    {
      *(v1 + 376) = v30;
      v31 = (*(v1 + 296) + 32 * v30);
      v32 = v31[4];
      *(v1 + 384) = v32;
      v33 = v31[5];
      *(v1 + 392) = v33;
      v34 = v31[6];
      *(v1 + 400) = v34;
      v35 = v31[7];
      *(v1 + 408) = v35;
      if ((v35 & 0x2000000000000000) == 0)
      {
        break;
      }

      sub_10001BFB8(v32, v33, v34, v35);
      sub_100009708(v34, v35 & 0xDFFFFFFFFFFFFFFFLL);
      dispatch thunk of SESKeystore.deleteKey(_:)();
      if (v22)
      {
        v64 = *(v1 + 480);
        v36 = *(v1 + 136);
        v62 = *(v1 + 120);
        v37 = *(*(v1 + 128) + 104);
        v37(v36);
        swift_errorRetain();
        sub_10002688C(_swiftEmptyArrayStorage);
        sub_100008E7C();
        swift_allocError();
        DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
        swift_willThrow();

        (v37)(v36, v64, v62);
        swift_errorRetain();
        sub_10002688C(_swiftEmptyArrayStorage);
        swift_allocError();
        DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
        swift_willThrow();

        sub_1000092BC(v34, v35 & 0xDFFFFFFFFFFFFFFFLL);
        v59 = *(v1 + 400);
        v60 = *(v1 + 408);
        v38 = *(v1 + 384);
        v39 = *(v1 + 392);
        v63 = *(v1 + 304);
        v40 = *(v1 + 168);
        v61 = *(v1 + 144);
        v42 = *(v1 + 104);
        v41 = *(v1 + 112);
        v43 = *(v1 + 96);
        (v37)(*(v1 + 136), *(v1 + 480), *(v1 + 120));
        swift_errorRetain();
        DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
        swift_allocError();
        (*(v42 + 16))(v44, v41, v43);
        defaultLogger()();
        DIPRecordError(_:message:log:)();
        sub_10001BFFC(v38, v39, v59, v60);

        v63(v40, v61);
        (*(v42 + 8))(v41, v43);
      }

      else
      {
        sub_10001BFFC(v32, v33, v34, v35);
        sub_1000092BC(v34, v35 & 0xDFFFFFFFFFFFFFFFLL);
      }

      v22 = 0;
      v30 = *(v1 + 376) + 1;
      if (v30 == *(v1 + 368))
      {
        goto LABEL_19;
      }
    }

    sub_100009708(v34, v35);
    *(v1 + 48) = 778790244;
    *(v1 + 56) = 0xE400000000000000;
    v57._countAndFlagsBits = v32;
    v57._object = v33;
    String.append(_:)(v57);
    v18 = *(v1 + 48);
    v19 = *(v1 + 56);
    *(v1 + 416) = v19;
    v20 = swift_task_alloc();
    *(v1 + 424) = v20;
    *v20 = v1;
    v21 = sub_10014C0F4;
    goto LABEL_6;
  }

LABEL_19:
  v45 = *(v1 + 240);
  v46 = *(v1 + 472);
  v47 = *(v1 + 200);
  v48 = *(v1 + 184);
  v50 = *(v1 + 80);
  v49 = *(v1 + 88);
  v52 = *(v1 + 64);
  v51 = *(v1 + 72);

  v53 = swift_allocObject();
  *(v1 + 440) = v53;
  v53[2] = v51;
  v53[3] = v50;
  v53[4] = v49;
  v53[5] = v52;
  v54 = swift_allocObject();
  *(v1 + 448) = v54;
  *(v54 + 16) = sub_100153DC8;
  *(v54 + 24) = v53;

  v45(v47, v46, v48);

  v55 = swift_task_alloc();
  *(v1 + 456) = v55;
  *v55 = v1;
  v55[1] = sub_10014C228;
  v56 = *(v1 + 200);

  return NSManagedObjectContext.perform<A>(schedule:_:)(v55, v56, sub_10001C0A8, v54, &type metadata for () + 8);
}

uint64_t sub_10014ADA0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10014AE64()
{
  *(*v1 + 360) = v0;

  if (v0)
  {
    v2 = sub_10014B740;
  }

  else
  {
    v2 = sub_10014AF98;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10014AF98()
{
  v1 = *(v0 + 336) + 1;
  if (v1 == *(v0 + 320))
  {
    v2 = *(v0 + 360);

    defaultLogger()();

    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.info.getter();
    v5 = os_log_type_enabled(v3, v4);
    v6 = *(v0 + 296);
    if (v5)
    {
      v7 = swift_slowAlloc();
      *v7 = 134349056;
      *(v7 + 4) = *(v6 + 16);

      _os_log_impl(&_mh_execute_header, v3, v4, "Deleting %{public}ld device encryption keys", v7, 0xCu);
    }

    else
    {
    }

    v16 = *(v0 + 296);
    (*(v0 + 304))(*(v0 + 160), *(v0 + 144));
    v17 = *(v16 + 16);
    *(v0 + 368) = v17;
    if (!v17)
    {
LABEL_13:
      v33 = *(v0 + 240);
      v34 = *(v0 + 472);
      v35 = *(v0 + 200);
      v36 = *(v0 + 184);
      v38 = *(v0 + 80);
      v37 = *(v0 + 88);
      v40 = *(v0 + 64);
      v39 = *(v0 + 72);

      v41 = swift_allocObject();
      *(v0 + 440) = v41;
      v41[2] = v39;
      v41[3] = v38;
      v41[4] = v37;
      v41[5] = v40;
      v42 = swift_allocObject();
      *(v0 + 448) = v42;
      *(v42 + 16) = sub_100153DC8;
      *(v42 + 24) = v41;

      v33(v35, v34, v36);

      v43 = swift_task_alloc();
      *(v0 + 456) = v43;
      *v43 = v0;
      v43[1] = sub_10014C228;
      v44 = *(v0 + 200);

      return NSManagedObjectContext.perform<A>(schedule:_:)(v43, v44, sub_10001C0A8, v42, &type metadata for () + 8);
    }

    v18 = 0;
    *(v0 + 480) = enum case for DIPError.Code.internalError(_:);
    while (1)
    {
      *(v0 + 376) = v18;
      v19 = (*(v0 + 296) + 32 * v18);
      v20 = v19[4];
      *(v0 + 384) = v20;
      v21 = v19[5];
      *(v0 + 392) = v21;
      v22 = v19[6];
      *(v0 + 400) = v22;
      v23 = v19[7];
      *(v0 + 408) = v23;
      if ((v23 & 0x2000000000000000) == 0)
      {
        break;
      }

      sub_10001BFB8(v20, v21, v22, v23);
      sub_100009708(v22, v23 & 0xDFFFFFFFFFFFFFFFLL);
      dispatch thunk of SESKeystore.deleteKey(_:)();
      if (v2)
      {
        v52 = *(v0 + 480);
        v24 = *(v0 + 136);
        v50 = *(v0 + 120);
        v25 = *(*(v0 + 128) + 104);
        v25(v24);
        swift_errorRetain();
        sub_10002688C(_swiftEmptyArrayStorage);
        sub_100008E7C();
        swift_allocError();
        DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
        swift_willThrow();

        (v25)(v24, v52, v50);
        swift_errorRetain();
        sub_10002688C(_swiftEmptyArrayStorage);
        swift_allocError();
        DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
        swift_willThrow();

        sub_1000092BC(v22, v23 & 0xDFFFFFFFFFFFFFFFLL);
        v47 = *(v0 + 400);
        v48 = *(v0 + 408);
        v26 = *(v0 + 384);
        v27 = *(v0 + 392);
        v51 = *(v0 + 304);
        v28 = *(v0 + 168);
        v49 = *(v0 + 144);
        v30 = *(v0 + 104);
        v29 = *(v0 + 112);
        v31 = *(v0 + 96);
        (v25)(*(v0 + 136), *(v0 + 480), *(v0 + 120));
        swift_errorRetain();
        DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
        swift_allocError();
        (*(v30 + 16))(v32, v29, v31);
        defaultLogger()();
        DIPRecordError(_:message:log:)();
        sub_10001BFFC(v26, v27, v47, v48);

        v51(v28, v49);
        (*(v30 + 8))(v29, v31);
      }

      else
      {
        sub_10001BFFC(v20, v21, v22, v23);
        sub_1000092BC(v22, v23 & 0xDFFFFFFFFFFFFFFFLL);
      }

      v2 = 0;
      v18 = *(v0 + 376) + 1;
      if (v18 == *(v0 + 368))
      {
        goto LABEL_13;
      }
    }

    sub_100009708(v22, v23);
    *(v0 + 48) = 778790244;
    *(v0 + 56) = 0xE400000000000000;
    v45._countAndFlagsBits = v20;
    v45._object = v21;
    String.append(_:)(v45);
    v12 = *(v0 + 48);
    v13 = *(v0 + 56);
    *(v0 + 416) = v13;
    v14 = swift_task_alloc();
    *(v0 + 424) = v14;
    *v14 = v0;
    v15 = sub_10014C0F4;
  }

  else
  {
    *(v0 + 336) = v1;
    v8 = *(v0 + 288) + 16 * v1;
    v10 = *(v8 + 32);
    v9 = *(v8 + 40);

    *(v0 + 32) = 778793835;
    *(v0 + 40) = 0xE400000000000000;
    v11._countAndFlagsBits = v10;
    v11._object = v9;
    String.append(_:)(v11);

    v12 = *(v0 + 32);
    v13 = *(v0 + 40);
    *(v0 + 344) = v13;
    v14 = swift_task_alloc();
    *(v0 + 352) = v14;
    *v14 = v0;
    v15 = sub_10014AE64;
  }

  v14[1] = v15;

  return DeviceIdentityKeystore.deleteKeysAndCertificates(label:)(v12, v13);
}

uint64_t sub_10014B740()
{
  v43 = *(v0 + 476);
  v47 = *(v0 + 304);
  v1 = *(v0 + 136);
  v45 = *(v0 + 168);
  v46 = *(v0 + 144);
  v42 = *(v0 + 112);
  v44 = *(v0 + 104);
  v40 = *(v0 + 120);
  v41 = *(v0 + 96);
  v2 = *(*(v0 + 128) + 104);
  v2(v1);
  sub_100008E7C();
  swift_allocError();
  swift_errorRetain();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  (v2)(v1, v43, v40);
  swift_errorRetain();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_allocError();
  (*(v44 + 16))(v3, v42, v41);
  defaultLogger()();
  DIPRecordError(_:message:log:)();

  v47(v45, v46);
  (*(v44 + 8))(v42, v41);

  v4 = *(v0 + 336) + 1;
  if (v4 == *(v0 + 320))
  {

    defaultLogger()();

    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.info.getter();
    v7 = os_log_type_enabled(v5, v6);
    v8 = *(v0 + 296);
    if (v7)
    {
      v9 = swift_slowAlloc();
      *v9 = 134349056;
      *(v9 + 4) = *(v8 + 16);

      _os_log_impl(&_mh_execute_header, v5, v6, "Deleting %{public}ld device encryption keys", v9, 0xCu);
    }

    else
    {
    }

    v18 = *(v0 + 296);
    (*(v0 + 304))(*(v0 + 160), *(v0 + 144));
    v19 = *(v18 + 16);
    *(v0 + 368) = v19;
    if (!v19)
    {
LABEL_11:
      v26 = *(v0 + 240);
      v27 = *(v0 + 472);
      v28 = *(v0 + 200);
      v29 = *(v0 + 184);
      v31 = *(v0 + 80);
      v30 = *(v0 + 88);
      v33 = *(v0 + 64);
      v32 = *(v0 + 72);

      v34 = swift_allocObject();
      *(v0 + 440) = v34;
      v34[2] = v32;
      v34[3] = v31;
      v34[4] = v30;
      v34[5] = v33;
      v35 = swift_allocObject();
      *(v0 + 448) = v35;
      *(v35 + 16) = sub_100153DC8;
      *(v35 + 24) = v34;

      v26(v28, v27, v29);

      v36 = swift_task_alloc();
      *(v0 + 456) = v36;
      *v36 = v0;
      v36[1] = sub_10014C228;
      v37 = *(v0 + 200);

      return NSManagedObjectContext.perform<A>(schedule:_:)(v36, v37, sub_10001C0A8, v35, &type metadata for () + 8);
    }

    v20 = 0;
    *(v0 + 480) = enum case for DIPError.Code.internalError(_:);
    while (1)
    {
      *(v0 + 376) = v20;
      v21 = (*(v0 + 296) + 32 * v20);
      v22 = v21[4];
      *(v0 + 384) = v22;
      v23 = v21[5];
      *(v0 + 392) = v23;
      v24 = v21[6];
      *(v0 + 400) = v24;
      v25 = v21[7];
      *(v0 + 408) = v25;
      if ((v25 & 0x2000000000000000) == 0)
      {
        break;
      }

      sub_10001BFB8(v22, v23, v24, v25);
      sub_100009708(v24, v25 & 0xDFFFFFFFFFFFFFFFLL);
      dispatch thunk of SESKeystore.deleteKey(_:)();
      sub_10001BFFC(v22, v23, v24, v25);
      sub_1000092BC(v24, v25 & 0xDFFFFFFFFFFFFFFFLL);
      v20 = *(v0 + 376) + 1;
      if (v20 == *(v0 + 368))
      {
        goto LABEL_11;
      }
    }

    sub_100009708(v24, v25);
    *(v0 + 48) = 778790244;
    *(v0 + 56) = 0xE400000000000000;
    v38._countAndFlagsBits = v22;
    v38._object = v23;
    String.append(_:)(v38);
    v14 = *(v0 + 48);
    v15 = *(v0 + 56);
    *(v0 + 416) = v15;
    v16 = swift_task_alloc();
    *(v0 + 424) = v16;
    *v16 = v0;
    v17 = sub_10014C0F4;
  }

  else
  {
    *(v0 + 336) = v4;
    v10 = *(v0 + 288) + 16 * v4;
    v12 = *(v10 + 32);
    v11 = *(v10 + 40);

    *(v0 + 32) = 778793835;
    *(v0 + 40) = 0xE400000000000000;
    v13._countAndFlagsBits = v12;
    v13._object = v11;
    String.append(_:)(v13);

    v14 = *(v0 + 32);
    v15 = *(v0 + 40);
    *(v0 + 344) = v15;
    v16 = swift_task_alloc();
    *(v0 + 352) = v16;
    *v16 = v0;
    v17 = sub_10014AE64;
  }

  v16[1] = v17;

  return DeviceIdentityKeystore.deleteKeysAndCertificates(label:)(v14, v15);
}

uint64_t sub_10014C0F4()
{
  *(*v1 + 432) = v0;

  if (v0)
  {
    v2 = sub_10014CB58;
  }

  else
  {
    v2 = sub_10014C51C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10014C228()
{
  v2 = *v1;
  *(*v1 + 464) = v0;

  if (v0)
  {
    (*(v2 + 272))(*(v2 + 200), *(v2 + 184));

    v3 = sub_10014C458;
  }

  else
  {
    v4 = *(v2 + 272);
    v5 = *(v2 + 200);
    v6 = *(v2 + 184);

    v4(v5, v6);
    v3 = sub_10014C3A4;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10014C3A4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10014C458()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10014C51C()
{
  sub_10001BFFC(*(v0 + 384), *(v0 + 392), *(v0 + 400), *(v0 + 408));
  v1 = *(v0 + 376) + 1;
  if (v1 == *(v0 + 368))
  {
LABEL_2:
    v2 = *(v0 + 240);
    v3 = *(v0 + 472);
    v4 = *(v0 + 200);
    v5 = *(v0 + 184);
    v7 = *(v0 + 80);
    v6 = *(v0 + 88);
    v9 = *(v0 + 64);
    v8 = *(v0 + 72);

    v10 = swift_allocObject();
    *(v0 + 440) = v10;
    v10[2] = v8;
    v10[3] = v7;
    v10[4] = v6;
    v10[5] = v9;
    v11 = swift_allocObject();
    *(v0 + 448) = v11;
    *(v11 + 16) = sub_100153DC8;
    *(v11 + 24) = v10;

    v2(v4, v3, v5);

    v12 = swift_task_alloc();
    *(v0 + 456) = v12;
    *v12 = v0;
    v12[1] = sub_10014C228;
    v13 = *(v0 + 200);

    return NSManagedObjectContext.perform<A>(schedule:_:)(v12, v13, sub_10001C0A8, v11, &type metadata for () + 8);
  }

  else
  {
    v14 = *(v0 + 432);
    while (1)
    {
      *(v0 + 376) = v1;
      v15 = (*(v0 + 296) + 32 * v1);
      v16 = v15[4];
      *(v0 + 384) = v16;
      v17 = v15[5];
      *(v0 + 392) = v17;
      v18 = v15[6];
      *(v0 + 400) = v18;
      v19 = v15[7];
      *(v0 + 408) = v19;
      if ((v19 & 0x2000000000000000) == 0)
      {
        break;
      }

      sub_10001BFB8(v16, v17, v18, v19);
      sub_100009708(v18, v19 & 0xDFFFFFFFFFFFFFFFLL);
      dispatch thunk of SESKeystore.deleteKey(_:)();
      if (v14)
      {
        v39 = *(v0 + 480);
        v20 = *(v0 + 136);
        v21 = *(v0 + 120);
        v34 = *(*(v0 + 128) + 104);
        v34(v20);
        swift_errorRetain();
        sub_10002688C(_swiftEmptyArrayStorage);
        sub_100008E7C();
        swift_allocError();
        DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
        swift_willThrow();

        (v34)(v20, v39, v21);
        swift_errorRetain();
        sub_10002688C(_swiftEmptyArrayStorage);
        swift_allocError();
        DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
        swift_willThrow();

        sub_1000092BC(v18, v19 & 0xDFFFFFFFFFFFFFFFLL);
        v35 = *(v0 + 400);
        v36 = *(v0 + 408);
        v23 = *(v0 + 384);
        v22 = *(v0 + 392);
        v38 = *(v0 + 304);
        v24 = *(v0 + 168);
        v37 = *(v0 + 144);
        v26 = *(v0 + 104);
        v25 = *(v0 + 112);
        v27 = *(v0 + 96);
        (v34)(*(v0 + 136), *(v0 + 480), *(v0 + 120));
        swift_errorRetain();
        DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
        swift_allocError();
        (*(v26 + 16))(v28, v25, v27);
        defaultLogger()();
        DIPRecordError(_:message:log:)();
        sub_10001BFFC(v23, v22, v35, v36);

        v38(v24, v37);
        (*(v26 + 8))(v25, v27);
      }

      else
      {
        sub_10001BFFC(v16, v17, v18, v19);
        sub_1000092BC(v18, v19 & 0xDFFFFFFFFFFFFFFFLL);
      }

      v14 = 0;
      v1 = *(v0 + 376) + 1;
      if (v1 == *(v0 + 368))
      {
        goto LABEL_2;
      }
    }

    sub_100009708(v18, v19);
    *(v0 + 48) = 778790244;
    *(v0 + 56) = 0xE400000000000000;
    v29._countAndFlagsBits = v16;
    v29._object = v17;
    String.append(_:)(v29);
    v30 = *(v0 + 48);
    v31 = *(v0 + 56);
    *(v0 + 416) = v31;
    v32 = swift_task_alloc();
    *(v0 + 424) = v32;
    *v32 = v0;
    v32[1] = sub_10014C0F4;

    return DeviceIdentityKeystore.deleteKeysAndCertificates(label:)(v30, v31);
  }
}

uint64_t sub_10014CB58()
{
  v35 = *(*(v0 + 128) + 104);
  v35(*(v0 + 136), *(v0 + 480), *(v0 + 120));
  sub_100008E7C();
  swift_allocError();
  swift_errorRetain();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v31 = *(v0 + 400);
  v32 = *(v0 + 408);
  v29 = *(v0 + 384);
  v30 = *(v0 + 392);
  v34 = *(v0 + 304);
  v1 = *(v0 + 168);
  v33 = *(v0 + 144);
  v3 = *(v0 + 104);
  v2 = *(v0 + 112);
  v4 = *(v0 + 96);
  v35(*(v0 + 136), *(v0 + 480), *(v0 + 120));
  swift_errorRetain();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_allocError();
  (*(v3 + 16))(v5, v2, v4);
  defaultLogger()();
  DIPRecordError(_:message:log:)();
  sub_10001BFFC(v29, v30, v31, v32);

  v34(v1, v33);
  (*(v3 + 8))(v2, v4);

  v6 = *(v0 + 376) + 1;
  if (v6 == *(v0 + 368))
  {
LABEL_4:
    v12 = *(v0 + 240);
    v13 = *(v0 + 472);
    v14 = *(v0 + 200);
    v15 = *(v0 + 184);
    v17 = *(v0 + 80);
    v16 = *(v0 + 88);
    v19 = *(v0 + 64);
    v18 = *(v0 + 72);

    v20 = swift_allocObject();
    *(v0 + 440) = v20;
    v20[2] = v18;
    v20[3] = v17;
    v20[4] = v16;
    v20[5] = v19;
    v21 = swift_allocObject();
    *(v0 + 448) = v21;
    *(v21 + 16) = sub_100153DC8;
    *(v21 + 24) = v20;

    v12(v14, v13, v15);

    v22 = swift_task_alloc();
    *(v0 + 456) = v22;
    *v22 = v0;
    v22[1] = sub_10014C228;
    v23 = *(v0 + 200);

    return NSManagedObjectContext.perform<A>(schedule:_:)(v22, v23, sub_10001C0A8, v21, &type metadata for () + 8);
  }

  else
  {
    while (1)
    {
      *(v0 + 376) = v6;
      v7 = (*(v0 + 296) + 32 * v6);
      v8 = v7[4];
      *(v0 + 384) = v8;
      v9 = v7[5];
      *(v0 + 392) = v9;
      v10 = v7[6];
      *(v0 + 400) = v10;
      v11 = v7[7];
      *(v0 + 408) = v11;
      if ((v11 & 0x2000000000000000) == 0)
      {
        break;
      }

      sub_10001BFB8(v8, v9, v10, v11);
      sub_100009708(v10, v11 & 0xDFFFFFFFFFFFFFFFLL);
      dispatch thunk of SESKeystore.deleteKey(_:)();
      sub_10001BFFC(v8, v9, v10, v11);
      sub_1000092BC(v10, v11 & 0xDFFFFFFFFFFFFFFFLL);
      v6 = *(v0 + 376) + 1;
      if (v6 == *(v0 + 368))
      {
        goto LABEL_4;
      }
    }

    sub_100009708(v10, v11);
    *(v0 + 48) = 778790244;
    *(v0 + 56) = 0xE400000000000000;
    v24._countAndFlagsBits = v8;
    v24._object = v9;
    String.append(_:)(v24);
    v25 = *(v0 + 48);
    v26 = *(v0 + 56);
    *(v0 + 416) = v26;
    v27 = swift_task_alloc();
    *(v0 + 424) = v27;
    *v27 = v0;
    v27[1] = sub_10014C0F4;

    return DeviceIdentityKeystore.deleteKeysAndCertificates(label:)(v25, v26);
  }
}

void sub_10014D250(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v103 = a5;
  v10 = sub_100004E70(&qword_100200510, qword_1001AB070);
  __chkstk_darwin(v10 - 8);
  v12 = &v83 - v11;
  v13 = type metadata accessor for CredentialKeyType();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v83 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10016A520(a2, a3);
  if (v5)
  {
    return;
  }

  v18 = v17;
  v102 = v14;
  sub_100059DE4();
  v20 = v19;
  v98 = v18;
  v99 = v16;
  v101 = v13;
  v97 = v12;
  if (v19 >> 62)
  {
    v21 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v21 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v22 = a4;
  v100 = 0;
  if (v21)
  {
    if (v21 < 1)
    {
      __break(1u);
LABEL_63:
      v37 = _CocoaArrayWrapper.endIndex.getter();
      goto LABEL_23;
    }

    v23 = 0;
    v105 = _swiftEmptyArrayStorage;
    v104 = a4;
    do
    {
      if ((v20 & 0xC000000000000001) != 0)
      {
        v26 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v26 = *(v20 + 8 * v23 + 32);
      }

      v27 = v26;
      v28 = [v26 identifier];
      if (v28)
      {
        v29 = v28;
        v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v32 = v31;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v105 = sub_100100418(0, *(v105 + 2) + 1, 1, v105);
        }

        v34 = *(v105 + 2);
        v33 = *(v105 + 3);
        if (v34 >= v33 >> 1)
        {
          v105 = sub_100100418((v33 > 1), v34 + 1, 1, v105);
        }

        v24 = v105;
        *(v105 + 2) = v34 + 1;
        v25 = &v24[16 * v34];
        *(v25 + 4) = v30;
        *(v25 + 5) = v32;
        v22 = v104;
        [*(v104 + 16) deleteObject:v27];
      }

      ++v23;
    }

    while (v21 != v23);
  }

  else
  {
    v105 = _swiftEmptyArrayStorage;
  }

  v35 = v100;
  sub_100050240();
  if (v35)
  {

    return;
  }

  v18 = v98;
  sub_10005966C();
  a1 = v36;
  if (v36 >> 62)
  {
    goto LABEL_63;
  }

  v37 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_23:
  v38 = v103;
  v100 = 0;
  if (!v37)
  {

    v93 = _swiftEmptyArrayStorage;
    goto LABEL_58;
  }

  if (v37 < 1)
  {
    __break(1u);
    return;
  }

  v39 = 0;
  v40 = a1 & 0xC000000000000001;
  v87 = (v102 + 32);
  v88 = (v102 + 48);
  v86 = (v102 + 88);
  v84 = enum case for CredentialKeyType.sep(_:);
  v85 = enum case for CredentialKeyType.ses(_:);
  v91 = (v102 + 104);
  v94 = (v102 + 8);
  v92 = a1;
  v93 = _swiftEmptyArrayStorage;
  v41 = &off_1001FE000;
  v90 = enum case for CredentialKeyType.invalid(_:);
  v89 = a1 & 0xC000000000000001;
  do
  {
    if (v40)
    {
      v42 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v42 = *(a1 + 8 * v39 + 32);
    }

    v43 = v42;
    v44 = [v42 v41[279]];
    if (!v44)
    {

      goto LABEL_27;
    }

    v45 = v44;
    v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v48 = v47;

    v49 = [v43 publicKeyIdentifier];
    if (!v49)
    {

      v41 = &off_1001FE000;
      goto LABEL_27;
    }

    v95 = v46;
    v50 = a1;
    v51 = v37;
    v104 = v48;
    v52 = v49;
    v53 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v55 = v54;

    v56 = [v43 keyType];
    if (!v56)
    {

      sub_1000092BC(v53, v55);

      v37 = v51;
      a1 = v50;
      goto LABEL_38;
    }

    v96 = v53;
    v102 = v55;
    v57 = v51;
    v58 = v56;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v59 = v97;
    CredentialKeyType.init(rawValue:)();
    v60 = v101;
    if ((*v88)(v59, 1, v101) == 1)
    {

      sub_1000092BC(v96, v102);

      sub_10000A0D4(v59, &qword_100200510, qword_1001AB070);
      a1 = v92;
      v37 = v57;
      v40 = v89;
LABEL_38:
      v41 = &off_1001FE000;
      v61 = v99;
      v62 = v101;
      (*v91)(v99, v90, v101);
LABEL_39:
      (*v94)(v61, v62);
      goto LABEL_27;
    }

    v63 = v99;
    (*v87)(v99, v59, v60);
    v64 = (*v86)(v63, v60);
    if (v64 != v85)
    {
      a1 = v92;
      v41 = &off_1001FE000;
      if (v64 != v84)
      {

        sub_1000092BC(v96, v102);

        v62 = v101;
        v61 = v99;
        v37 = v57;
        v40 = v89;
        goto LABEL_39;
      }

      v77 = v96;
      sub_100009708(v96, v102);
      v75 = v57;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v93 = sub_100100524(0, *(v93 + 2) + 1, 1, v93);
      }

      v40 = v89;
      v71 = *(v93 + 2);
      v78 = *(v93 + 3);
      v72 = v71 + 1;
      if (v71 >= v78 >> 1)
      {
        v93 = sub_100100524((v78 > 1), v71 + 1, 1, v93);
      }

      v73 = v77;
      v76 = v102;
      v74 = v102;
      goto LABEL_53;
    }

    v65 = [v43 keyBlob];
    v41 = &off_1001FE000;
    if (v65)
    {
      v66 = v65;
      v67 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v69 = v68;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v93 = sub_100100524(0, *(v93 + 2) + 1, 1, v93);
      }

      v71 = *(v93 + 2);
      v70 = *(v93 + 3);
      v72 = v71 + 1;
      if (v71 >= v70 >> 1)
      {
        v93 = sub_100100524((v70 > 1), v71 + 1, 1, v93);
      }

      v73 = v67;
      v74 = v69 | 0x2000000000000000;
      v75 = v57;
      v40 = v89;
      v76 = v102;
      v77 = v96;
LABEL_53:
      v79 = v93;
      *(v93 + 2) = v72;
      v80 = &v79[32 * v71];
      *(v80 + 4) = v95;
      *(v80 + 5) = v104;
      *(v80 + 6) = v73;
      *(v80 + 7) = v74;
      [*(v22 + 16) deleteObject:v43];
      sub_1000092BC(v77, v76);

      a1 = v92;
      v41 = &off_1001FE000;
      v37 = v75;
      goto LABEL_27;
    }

    sub_1000092BC(v96, v102);
    a1 = v92;
    v37 = v57;
    v40 = v89;
LABEL_27:
    ++v39;
  }

  while (v37 != v39);

  v38 = v103;
  v18 = v98;
LABEL_58:
  v81 = v100;
  sub_100050240();
  if (v81)
  {
  }

  else
  {

    v82 = v93;
    *v38 = v105;
    v38[1] = v82;
  }
}

void sub_10014DA98(uint64_t a1, unint64_t a2, void *a3, uint64_t a4)
{
  v136 = a2;
  v127 = type metadata accessor for DIPError();
  v123 = *(v127 - 8);
  __chkstk_darwin(v127);
  v125 = &v94 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = type metadata accessor for DIPError.Code();
  v122 = *(v126 - 8);
  __chkstk_darwin(v126);
  v124 = &v94 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100004E70(&qword_100200510, qword_1001AB070);
  __chkstk_darwin(v9 - 8);
  v135 = &v94 - v10;
  v11 = type metadata accessor for CredentialKeyType();
  v131 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v94 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Logger();
  v130 = *(v14 - 8);
  v15 = __chkstk_darwin(v14);
  v17 = &v94 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v15);
  v20 = &v94 - v19;
  __chkstk_darwin(v18);
  v22 = &v94 - v21;
  v23 = a3;
  v24 = a4;
  v25 = a1;
  v26 = v139;
  v27 = sub_10016A520(v136, v23);
  if (!v26)
  {
    v28 = v27;
    v139 = v22;
    v133 = v11;
    v134 = v13;
    v112 = v25;
    v105 = v17;
    v117 = v20;
    v29 = v130;
    v121 = v14;
    v132 = v24;
    sub_10005A084();
    v103 = v28;
    v30 = v139;
    v32 = v31;
    defaultLogger()();

    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.info.getter();
    v35 = os_log_type_enabled(v33, v34);
    v36 = v32 >> 62;
    v136 = v32;
    if (!v35)
    {

      v38 = v121;
      goto LABEL_7;
    }

    LODWORD(v129) = v34;
    v37 = swift_slowAlloc();
    *v37 = 134349056;
    v38 = v121;
    if (v36)
    {
      goto LABEL_48;
    }

    for (i = *((v136 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
    {
      *(v37 + 4) = i;

      _os_log_impl(&_mh_execute_header, v33, v129, "Deleting %{public}ld presentment keys", v37, 0xCu);

LABEL_7:
      v40 = *(v29 + 8);
      v130 = v29 + 8;
      v116 = v40;
      v40(v30, v38);
      v37 = v132;
      v33 = v134;
      if (v36)
      {
        v36 = v136;
        v91 = _CocoaArrayWrapper.endIndex.getter();
        v41 = v36;
        v139 = v91;
      }

      else
      {
        v41 = v136;
        v139 = *((v136 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v29 = v133;
      v42 = v131;
      if (!v139)
      {
        break;
      }

      if (v139 >= 1)
      {
        v43 = 0;
        v44 = v41 & 0xC000000000000001;
        v128 = (v131 + 6);
        v120 = (v131 + 4);
        v119 = (v131 + 11);
        v118 = enum case for CredentialKeyType.legacySE(_:);
        v113 = enum case for CredentialKeyType.ses(_:);
        v99 = "with identifier: ";
        v98 = 0x80000001001B25A0;
        v115 = enum case for DIPError.Code.internalError(_:);
        v114 = (v122 + 104);
        v97 = 0x80000001001B3530;
        v96 = "error deleting presentment key";
        v110 = "credentialDecryptionKeyFinder";
        v109 = 0x80000001001B6C20;
        v108 = (v123 + 16);
        v107 = (v123 + 8);
        v104 = "ayload protection key";
        LODWORD(v129) = enum case for CredentialKeyType.invalid(_:);
        v45 = (v131 + 13);
        ++v131;
        v111 = v41 & 0xC000000000000001;
        v106 = (v42 + 13);
        while (1)
        {
          if (v44)
          {
            v46 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v46 = *(v41 + 8 * v43 + 32);
          }

          v47 = v46;
          v48 = [v46 keyType];
          if (!v48)
          {
            goto LABEL_18;
          }

          v49 = v48;
          static String._unconditionallyBridgeFromObjectiveC(_:)();

          v50 = v135;
          v29 = v133;
          CredentialKeyType.init(rawValue:)();
          if ((*v128)(v50, 1, v29) == 1)
          {
            break;
          }

          v33 = v134;
          (*v120)();
          v51 = (*v119)(v33, v29);
          v37 = v132;
          if (v51 == v118)
          {
            sub_100032980([v47 keySlot]);
            goto LABEL_20;
          }

          if (v51 != v113)
          {
            goto LABEL_19;
          }

          v52 = [v47 keyBlob];
          if (!v52)
          {
            goto LABEL_21;
          }

          v53 = v52;
          v54 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v100 = 0;
          v55 = v54;
          v57 = v56;

          v101 = v55;
          v102 = v57;
          v58 = v100;
          dispatch thunk of SESKeystore.deleteKey(_:)();
          if (v58)
          {
            v95 = *v114;
            v59 = v124;
            v60 = v126;
            v95(v124, v115, v126);
            swift_errorRetain();
            sub_10002688C(_swiftEmptyArrayStorage);
            v100 = sub_100008E7C();
            swift_allocError();
            DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
            swift_willThrow();

            v61 = v115;
            v62 = v60;
            v63 = v95;
            v95(v59, v115, v62);
            swift_errorRetain();
            sub_10002688C(_swiftEmptyArrayStorage);
            swift_allocError();
            v94 = 0xD000000000000021;
            v37 = v132;
            DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
            swift_willThrow();

            sub_1000092BC(v101, v102);
            v63(v59, v61, v126);
            v64 = v125;
            swift_errorRetain();
            sub_10002688C(_swiftEmptyArrayStorage);
            v45 = v106;
            DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
            v65 = v127;
            swift_allocError();
            (*v108)(v66, v64, v65);
            v67 = v117;
            defaultLogger()();
            DIPRecordError(_:message:log:)();

            v68 = v67;
            v44 = v111;
            v116(v68, v121);
            v69 = v64;
            v29 = v133;
            (*v107)(v69, v65);
          }

          else
          {
            sub_1000092BC(v101, v102);
          }

          v33 = v134;
LABEL_20:
          [*(v37 + 16) deleteObject:v47];
LABEL_21:
          ++v43;

          v41 = v136;
          if (v139 == v43)
          {
            goto LABEL_31;
          }
        }

        sub_10000A0D4(v50, &qword_100200510, qword_1001AB070);
        v37 = v132;
        v33 = v134;
LABEL_18:
        (*v45)(v33, v129, v29);
LABEL_19:
        (*v131)(v33, v29);
        goto LABEL_20;
      }

      __break(1u);
LABEL_48:
      ;
    }

LABEL_31:

    sub_100050240();
    sub_10005964C();
    v71 = v70;
    v72 = v105;
    defaultLogger()();

    v73 = Logger.logObject.getter();
    LOBYTE(v74) = static os_log_type_t.info.getter();
    v75 = os_log_type_enabled(v73, v74);
    v76 = v71 >> 62;
    v139 = v71;
    if (!v75)
    {

      v73 = v122;
      v77 = v123;
      v78 = v121;
      goto LABEL_36;
    }

    v29 = swift_slowAlloc();
    *v29 = 134349056;
    v77 = v123;
    v78 = v121;
    if (v76)
    {
      goto LABEL_52;
    }

    for (j = *((v139 & 0xFFFFFFFFFFFFFF8) + 0x10); ; j = _CocoaArrayWrapper.endIndex.getter())
    {
      *(v29 + 4) = j;

      _os_log_impl(&_mh_execute_header, v73, v74, "Deleting %{public}ld payload protection keys", v29, 0xCu);

      v73 = v122;
LABEL_36:
      v116(v72, v78);
      if (v76)
      {
        v74 = _CocoaArrayWrapper.endIndex.getter();
        if (!v74)
        {
          goto LABEL_50;
        }
      }

      else
      {
        v74 = *((v139 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v74)
        {
          goto LABEL_50;
        }
      }

      if (v74 >= 1)
      {
        break;
      }

      __break(1u);
LABEL_52:
      ;
    }

    v80 = 0;
    v81 = v139;
    v82 = v139 & 0xC000000000000001;
    v135 = "credentialDecryptionKeyFinder";
    v136 = "evice encryption key";
    v134 = 0x80000001001B6C20;
    LODWORD(v133) = enum case for DIPError.Code.internalError(_:);
    v131 = &v73[13];
    v128 = (v77 + 8);
    v129 = v77 + 16;
    do
    {
      if (v82)
      {
        v83 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v83 = *(v81 + 8 * v80 + 32);
      }

      v84 = v83;
      v85 = [v83 identifier];
      if (v85)
      {
        v86 = v85;
        v87 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v89 = v88;

        v137 = 778793072;
        v138 = 0xE400000000000000;
        v90._countAndFlagsBits = v87;
        v90._object = v89;
        String.append(_:)(v90);

        sub_1000343E0(v137, v138);

        [*(v132 + 16) deleteObject:v84];
      }

      ++v80;
    }

    while (v74 != v80);
LABEL_50:

    v92 = v132;
    sub_100050240();
    v93 = v103;
    [*(v92 + 16) deleteObject:v103];
    sub_100050240();
  }
}

uint64_t sub_10014EBB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = type metadata accessor for Logger();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();

  return _swift_task_switch(sub_10014EC78, 0, 0);
}

uint64_t sub_10014EC78(uint64_t a1)
{
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Kicking off MobileAsset clear cache", v4, 2u);
  }

  v6 = v1[4];
  v5 = v1[5];
  v8 = v1[2];
  v7 = v1[3];

  (*(v6 + 8))(v5, v7);
  v9 = *(v8 + 120);
  type metadata accessor for OSTransaction();
  v10 = swift_task_alloc();
  v1[6] = v10;
  *v10 = v1;
  v10[1] = sub_10014EE14;

  return __s13CoreIDVShared13OSTransactionC5namedyq_SS_q_yYaYbxYKXEtYaxYKs5ErrorRzRi__r0_lFZ(v10, 0xD00000000000001BLL, 0x80000001001BC110, &unk_1001AE968, v9, &type metadata for Never, &type metadata for () + 8, &protocol witness table for Never);
}

uint64_t sub_10014EE14()
{

  if (!v0)
  {

    return _swift_task_switch(sub_10014EF24, 0, 0);
  }

  return result;
}

uint64_t sub_10014EF24()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10014EF84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100004E70(&qword_100201CD0, &qword_1001AC550);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_100046360(a3, v25 - v10, &qword_100201CD0, &qword_1001AC550);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_10000A0D4(v11, &qword_100201CD0, &qword_1001AC550);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;
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

      sub_10000A0D4(a3, &qword_100201CD0, &qword_1001AC550);

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

  sub_10000A0D4(a3, &qword_100201CD0, &qword_1001AC550);
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

void sub_10014F284(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v9 = type metadata accessor for DIPError.Code();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10016A520(a3, a4);
  if (!v5)
  {
    v14 = v13;
    v15 = [v13 state];
    if ((v15 & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_9:
      __break(1u);
      return;
    }

    if (sub_10016A994(v15, a5))
    {
      if ((a5 & 0x8000000000000000) == 0)
      {
        [v14 setState:a5];
        sub_100050240();

        return;
      }

      goto LABEL_9;
    }

    v28 = 0;
    v29 = 0xE000000000000000;
    _StringGuts.grow(_:)(45);

    v28 = 0xD000000000000016;
    v29 = 0x80000001001BC0F0;
    v16 = DCCredentialStateToString();
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;

    v20._countAndFlagsBits = v17;
    v20._object = v19;
    String.append(_:)(v20);

    v21._countAndFlagsBits = 544175136;
    v21._object = 0xE400000000000000;
    String.append(_:)(v21);
    v22 = DCCredentialStateToString();
    v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v24;

    v26._countAndFlagsBits = v23;
    v26._object = v25;
    String.append(_:)(v26);

    v27._countAndFlagsBits = 0x20746F6E20736920;
    v27._object = 0xEF6465776F6C6C61;
    String.append(_:)(v27);
    (*(v10 + 104))(v12, enum case for DIPError.Code.idcsInvalidCredentialStateTransition(_:), v9);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
  }
}

uint64_t sub_10014F588(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = type metadata accessor for Logger();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();

  return _swift_task_switch(sub_10014F648, 0, 0);
}

uint64_t sub_10014F648(uint64_t a1)
{
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Kicking off MobileAssetRefresh", v4, 2u);
  }

  v6 = v1[4];
  v5 = v1[5];
  v8 = v1[2];
  v7 = v1[3];

  (*(v6 + 8))(v5, v7);
  v9 = *(v8 + 120);
  type metadata accessor for OSTransaction();
  v10 = swift_task_alloc();
  v1[6] = v10;
  *v10 = v1;
  v10[1] = sub_10014F7E4;

  return __s13CoreIDVShared13OSTransactionC5namedyq_SS_q_yYaYbxYKXEtYaxYKs5ErrorRzRi__r0_lFZ(v10, 0xD000000000000018, 0x80000001001B2240, &unk_1001AE910, v9, &type metadata for Never, &type metadata for () + 8, &protocol witness table for Never);
}

uint64_t sub_10014F7E4()
{

  if (!v0)
  {

    return _swift_task_switch(sub_100154234, 0, 0);
  }

  return result;
}

void sub_10014F8F4(uint64_t a2@<X2>, void *a3@<X3>, void *a4@<X8>)
{
  v6 = sub_10016A520(a2, a3);
  if (!v4)
  {
    v7 = v6;
    v8 = sub_10005AAEC();
    v9 = [v8 options];
    v10 = [v9 presentmentAuthPolicy];

    if (v10 >= 2)
    {
      if (v10 == 2)
      {
        v12 = [v7 state];
        if ((v12 & 0x8000000000000000) != 0)
        {
          __break(1u);
          return;
        }

        v11 = 0xCu >> (v12 & 0xF);
        if (v12 >= 4)
        {
          LOBYTE(v11) = 0;
        }
      }

      else
      {
        LOBYTE(v11) = 0;
      }
    }

    else
    {
      LOBYTE(v11) = 1;
    }

    [v8 setHasUsablePresentmentAuthPolicy:v11 & 1];

    *a4 = v8;
  }
}

uint64_t sub_10014F9F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[15] = a4;
  v5[16] = a5;
  v5[13] = a2;
  v5[14] = a3;
  v5[12] = a1;
  v6 = type metadata accessor for Logger();
  v5[17] = v6;
  v5[18] = *(v6 - 8);
  v5[19] = swift_task_alloc();
  v5[20] = swift_task_alloc();
  v5[21] = swift_task_alloc();
  v7 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  v5[22] = v7;
  v5[23] = *(v7 - 8);
  v5[24] = swift_task_alloc();

  return _swift_task_switch(sub_10014FB2C, 0, 0);
}

uint64_t sub_10014FB2C()
{
  v1 = v0[23];
  v15 = v0[24];
  v2 = v0[22];
  v3 = v0[15];
  v4 = v0[16];
  v6 = v0[13];
  v5 = v0[14];
  v7 = swift_allocObject();
  v0[25] = v7;
  v7[2] = v5;
  v7[3] = v3;
  v7[4] = v4;
  v7[5] = v6;
  v8 = swift_allocObject();
  v0[26] = v8;
  *(v8 + 16) = sub_100153744;
  *(v8 + 24) = v7;
  v9 = enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:);
  v10 = *(v1 + 104);

  v10(v15, v9, v2);

  v11 = swift_task_alloc();
  v0[27] = v11;
  v12 = sub_100004E70(&qword_100203BF0, &qword_1001AE8D0);
  *v11 = v0;
  v11[1] = sub_10014FCD8;
  v13 = v0[24];

  return NSManagedObjectContext.perform<A>(schedule:_:)(v0 + 10, v13, sub_10013EABC, v8, v12);
}

uint64_t sub_10014FCD8()
{
  v2 = *v1;
  *(*v1 + 224) = v0;

  if (v0)
  {
    (*(*(v2 + 184) + 8))(*(v2 + 192), *(v2 + 176));

    v3 = sub_1001502E8;
  }

  else
  {
    v5 = *(v2 + 184);
    v4 = *(v2 + 192);
    v6 = *(v2 + 176);

    (*(v5 + 8))(v4, v6);
    *(v2 + 232) = *(v2 + 80);
    *(v2 + 89) = *(v2 + 88);
    v3 = sub_10014FE60;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10014FE60(uint64_t a1)
{
  v41 = v1;
  if (*(v1 + 89))
  {
    goto LABEL_17;
  }

  v2 = *(v1 + 232);
  if ((v2 - 1) < 2)
  {
    defaultLogger()();
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v38 = *(v1 + 160);
      v6 = *(v1 + 136);
      v5 = *(v1 + 144);
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v40 = v8;
      *v7 = 136315138;
      v9 = DCCredentialPayloadProtectionTypeToString();
      v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v12 = v11;

      v13 = sub_10010150C(v10, v12, &v40);

      *(v7 + 4) = v13;
      _os_log_impl(&_mh_execute_header, v3, v4, "Payload uses key protection: %s, fetching ACL", v7, 0xCu);
      sub_100005090(v8);

      (*(v5 + 8))(v38, v6);
    }

    else
    {
      v18 = *(v1 + 160);
      v19 = *(v1 + 136);
      v20 = *(v1 + 144);

      (*(v20 + 8))(v18, v19);
    }

    v21 = *(*(v1 + 112) + 24);
    type metadata accessor for ACLFetcher();
    inited = swift_initStackObject();
    *(v1 + 240) = inited;
    *(inited + 16) = v21;
    type metadata accessor for AppleIDVManager();

    sub_1000215BC((inited + 24));
    v23 = swift_task_alloc();
    *(v1 + 248) = v23;
    *v23 = v1;
    v23[1] = sub_10015037C;

    return sub_100007DC4();
  }

  if (!v2)
  {
    defaultLogger()();
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "Payload uses standard protection, no ACL required", v16, 2u);
    }

    v17 = *(v1 + 168);
    goto LABEL_16;
  }

  defaultLogger()();
  v14 = Logger.logObject.getter();
  v25 = static os_log_type_t.error.getter();
  if (!os_log_type_enabled(v14, v25))
  {
    v17 = *(v1 + 152);
LABEL_16:
    v35 = *(v1 + 136);
    v36 = *(v1 + 144);

    (*(v36 + 8))(v17, v35);
    goto LABEL_17;
  }

  v26 = *(v1 + 144);
  v39 = *(v1 + 152);
  v27 = *(v1 + 136);
  v28 = swift_slowAlloc();
  v29 = swift_slowAlloc();
  v40 = v29;
  *v28 = 136315138;
  v30 = DCCredentialPayloadProtectionTypeToString();
  v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v33 = v32;

  v34 = sub_10010150C(v31, v33, &v40);

  *(v28 + 4) = v34;
  _os_log_impl(&_mh_execute_header, v14, v25, "Unknown payload protection type %s", v28, 0xCu);
  sub_100005090(v29);

  (*(v26 + 8))(v39, v27);
LABEL_17:
  **(v1 + 96) = xmmword_1001AE390;

  v37 = *(v1 + 8);

  return v37();
}

uint64_t sub_1001502E8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10015037C(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 256) = v2;

  if (v2)
  {
    v7 = sub_100150564;
  }

  else
  {
    *(v6 + 264) = a2;
    *(v6 + 272) = a1;
    v7 = sub_1001504B0;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1001504B0()
{
  v1 = v0[30];
  swift_setDeallocating();

  sub_100005090((v1 + 24));
  v2 = v0[33];
  v3 = v0[12];
  *v3 = v0[34];
  v3[1] = v2;

  v4 = v0[1];

  return v4();
}

uint64_t sub_100150564()
{
  v1 = *(v0 + 240);
  swift_setDeallocating();

  sub_100005090((v1 + 24));

  v2 = *(v0 + 8);

  return v2();
}

void sub_10015060C(uint64_t a1@<X1>, void *a2@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10016A520(a1, a2);
  if (!v4)
  {
    v22[1] = 0;
    v13 = v12;
    v14 = sub_10005947C();
    if (v14 >> 62)
    {
      goto LABEL_9;
    }

    for (i = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10); i; v14 = v18)
    {
      if ((v14 & 0xC000000000000001) != 0)
      {
        v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (!*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return;
        }

        v16 = *(v14 + 32);
      }

      v17 = v16;

      v8 = [v17 protectionType];

      if ((v8 & 0x8000000000000000) == 0)
      {
        goto LABEL_13;
      }

      __break(1u);
LABEL_9:
      v18 = v14;
      i = _CocoaArrayWrapper.endIndex.getter();
    }

    defaultLogger()();
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v19, v20, "Credential has no payloads, so no payload auth acl", v21, 2u);
    }

    (*(v9 + 8))(v11, v8);
    v8 = 0;
LABEL_13:
    *a4 = v8;
    *(a4 + 8) = i == 0;
  }
}

uint64_t sub_100150858(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[32] = a6;
  v7[33] = a7;
  v7[30] = a4;
  v7[31] = a5;
  v7[28] = a2;
  v7[29] = a3;
  v7[27] = a1;
  sub_100004E70(&qword_100202498, &unk_1001AD910);
  v7[34] = swift_task_alloc();
  v8 = type metadata accessor for DIPError.Code();
  v7[35] = v8;
  v7[36] = *(v8 - 8);
  v7[37] = swift_task_alloc();
  v9 = type metadata accessor for Logger();
  v7[38] = v9;
  v7[39] = *(v9 - 8);
  v7[40] = swift_task_alloc();
  v7[41] = swift_task_alloc();
  v7[42] = swift_task_alloc();
  v7[43] = swift_task_alloc();
  v10 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  v7[44] = v10;
  v7[45] = *(v10 - 8);
  v7[46] = swift_task_alloc();
  v7[47] = type metadata accessor for CredentialStorage.DBResult(0);
  v7[48] = swift_task_alloc();

  return _swift_task_switch(sub_100150A68, 0, 0);
}

uint64_t sub_100150A68()
{
  v1 = v0[45];
  v16 = v0[46];
  v2 = v0[44];
  v3 = v0[30];
  v4 = v0[31];
  v6 = v0[28];
  v5 = v0[29];
  v7 = swift_allocObject();
  v0[49] = v7;
  v7[2] = v5;
  v7[3] = v3;
  v7[4] = v4;
  v7[5] = v6;
  v8 = swift_allocObject();
  v0[50] = v8;
  *(v8 + 16) = sub_10015349C;
  *(v8 + 24) = v7;
  v9 = enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:);
  v10 = *(v1 + 104);

  v10(v16, v9, v2);

  v11 = swift_task_alloc();
  v0[51] = v11;
  *v11 = v0;
  v11[1] = sub_100150BFC;
  v13 = v0[47];
  v12 = v0[48];
  v14 = v0[46];

  return NSManagedObjectContext.perform<A>(schedule:_:)(v12, v14, sub_1000BBAFC, v8, v13);
}

uint64_t sub_100150BFC()
{
  v2 = *v1;
  *(*v1 + 416) = v0;

  if (v0)
  {
    (*(v2[45] + 8))(v2[46], v2[44]);

    v3 = sub_1001514C0;
  }

  else
  {
    v5 = v2[45];
    v4 = v2[46];
    v6 = v2[44];

    (*(v5 + 8))(v4, v6);
    v3 = sub_100150D88;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100150D88()
{
  v1 = v0[48];
  v2 = *v1;
  v4 = v1[3];
  v3 = v1[4];
  v5 = v1[5];
  v6 = [objc_opt_self() standardUserDefaults];
  v7._countAndFlagsBits = 0xD00000000000001ELL;
  v7._object = 0x80000001001BBF60;
  v8 = NSUserDefaults.internalBool(forKey:)(v7);

  if (!v8)
  {
    v32 = v0[33];
    if (v5 == 1)
    {
      if (v32 >> 60 != 15)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v44 = v32 >> 60;
      if (v5 != 2 || v44 <= 0xE)
      {
        goto LABEL_5;
      }
    }

    v46 = v0[48];
    (*(v0[36] + 104))(v0[37], enum case for DIPError.Code.idcsPayloadRequiresAuth(_:), v0[35]);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    goto LABEL_30;
  }

  defaultLogger()();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "Attempting to access payload due to internal defaults setting", v11, 2u);
  }

  v12 = v0[43];
  v13 = v0[38];
  v14 = v0[39];

  (*(v14 + 8))(v12, v13);
LABEL_5:
  switch(v5)
  {
    case 2:
      v60 = v2;
      defaultLogger()();
      v47 = Logger.logObject.getter();
      v48 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        *v49 = 0;
        _os_log_impl(&_mh_execute_header, v47, v48, "Payload protection type is payload encryption key", v49, 2u);
      }

      v51 = v0[47];
      v50 = v0[48];
      v53 = v0[39];
      v52 = v0[40];
      v54 = v0[38];
      v55 = v0[29];

      (*(v53 + 8))(v52, v54);
      sub_100009278((v55 + 72), *(v55 + 96));
      v56 = *(v51 + 20);
      v57 = swift_task_alloc();
      v0[57] = v57;
      *v57 = v0;
      v57[1] = sub_100151EE4;
      v30 = v0[32];
      v31 = v0[33];
      v26 = (v0 + 7);
      v25 = v50 + v56;
      goto LABEL_25;
    case 1:
LABEL_13:
      v60 = v2;
      defaultLogger()();
      v33 = Logger.logObject.getter();
      v34 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        *v35 = 0;
        _os_log_impl(&_mh_execute_header, v33, v34, "Payload protection type is device encryption key", v35, 2u);
      }

      v37 = v0[47];
      v36 = v0[48];
      v38 = v0[41];
      v39 = v0[38];
      v40 = v0[39];
      v41 = v0[29];

      (*(v40 + 8))(v38, v39);
      sub_100009278((v41 + 72), *(v41 + 96));
      v42 = *(v37 + 20);
      v43 = swift_task_alloc();
      v0[55] = v43;
      *v43 = v0;
      v43[1] = sub_100151A50;
      v30 = v0[32];
      v31 = v0[33];
      v26 = (v0 + 17);
      v25 = v36 + v42;
LABEL_25:
      v27 = v4;
      v28 = v3;
      v29 = v60;
LABEL_26:

      return sub_1000F1194(v26, v27, v28, v29, v25, v30, v31);
    case 0:
      defaultLogger()();
      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 0;
        _os_log_impl(&_mh_execute_header, v15, v16, "Payload protection type is standard, extracting elements from credential payload", v17, 2u);
      }

      v18 = v0[42];
      v19 = v0[38];
      v20 = v0[39];
      v21 = v0[34];
      v22 = v0[29];

      (*(v20 + 8))(v18, v19);
      sub_100009278((v22 + 72), *(v22 + 96));
      v23 = type metadata accessor for KeyLookupInfo(0);
      (*(*(v23 - 8) + 56))(v21, 1, 1, v23);
      v24 = swift_task_alloc();
      v0[53] = v24;
      *v24 = v0;
      v24[1] = sub_100151590;
      v25 = v0[34];
      v26 = (v0 + 22);
      v27 = v4;
      v28 = v3;
      v29 = v2;
      v30 = 0;
      v31 = 0xF000000000000000;
      goto LABEL_26;
  }

  v46 = v0[48];
  (*(v0[36] + 104))(v0[37], enum case for DIPError.Code.internalError(_:), v0[35]);
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100008E7C();
  swift_allocError();
LABEL_30:
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();
  sub_1001534BC(v46);

  v59 = v0[1];

  return v59();
}

uint64_t sub_1001514C0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100151590()
{
  v2 = *v1;
  *(*v1 + 432) = v0;

  sub_10000A0D4(*(v2 + 272), &qword_100202498, &unk_1001AD910);
  if (v0)
  {
    v3 = sub_100151980;
  }

  else
  {
    v3 = sub_1001516D4;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1001516D4()
{
  v1 = *(v0 + 192);
  *(v0 + 16) = *(v0 + 176);
  *(v0 + 32) = v1;
  *(v0 + 48) = *(v0 + 208);
  sub_100046360(v0 + 16, v0 + 96, &qword_100202460, &unk_1001AD180);
  v2 = *(v0 + 384);
  if (*(v0 + 120))
  {
    v3 = *(v0 + 216);
    sub_10000A0D4(v0 + 16, &qword_100202460, &unk_1001AD180);
    sub_1001534BC(v2);
    sub_1000BDD00((v0 + 96), v3);
  }

  else
  {
    v6 = *(v0 + 288);
    v5 = *(v0 + 296);
    v7 = *(v0 + 280);
    sub_10000A0D4(v0 + 96, &qword_100202460, &unk_1001AD180);
    (*(v6 + 104))(v5, enum case for DIPError.Code.idcsErrorInitializingPayloadProcessor(_:), v7);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    sub_10000A0D4(v0 + 16, &qword_100202460, &unk_1001AD180);
    sub_1001534BC(v2);
  }

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100151980()
{
  sub_1001534BC(*(v0 + 384));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100151A50()
{
  *(*v1 + 448) = v0;

  if (v0)
  {
    v2 = sub_100151E14;
  }

  else
  {
    v2 = sub_100151B64;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100151B64()
{
  v1 = *(v0 + 152);
  *(v0 + 16) = *(v0 + 136);
  *(v0 + 32) = v1;
  *(v0 + 48) = *(v0 + 168);
  sub_100046360(v0 + 16, v0 + 96, &qword_100202460, &unk_1001AD180);
  v2 = *(v0 + 384);
  if (*(v0 + 120))
  {
    v3 = *(v0 + 216);
    sub_10000A0D4(v0 + 16, &qword_100202460, &unk_1001AD180);
    sub_1001534BC(v2);
    sub_1000BDD00((v0 + 96), v3);
  }

  else
  {
    v6 = *(v0 + 288);
    v5 = *(v0 + 296);
    v7 = *(v0 + 280);
    sub_10000A0D4(v0 + 96, &qword_100202460, &unk_1001AD180);
    (*(v6 + 104))(v5, enum case for DIPError.Code.idcsErrorInitializingPayloadProcessor(_:), v7);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    sub_10000A0D4(v0 + 16, &qword_100202460, &unk_1001AD180);
    sub_1001534BC(v2);
  }

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100151E14()
{
  sub_1001534BC(*(v0 + 384));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100151EE4()
{
  *(*v1 + 464) = v0;

  if (v0)
  {
    v2 = sub_1001522A8;
  }

  else
  {
    v2 = sub_100151FF8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100151FF8()
{
  v1 = *(v0 + 72);
  *(v0 + 16) = *(v0 + 56);
  *(v0 + 32) = v1;
  *(v0 + 48) = *(v0 + 88);
  sub_100046360(v0 + 16, v0 + 96, &qword_100202460, &unk_1001AD180);
  v2 = *(v0 + 384);
  if (*(v0 + 120))
  {
    v3 = *(v0 + 216);
    sub_10000A0D4(v0 + 16, &qword_100202460, &unk_1001AD180);
    sub_1001534BC(v2);
    sub_1000BDD00((v0 + 96), v3);
  }

  else
  {
    v6 = *(v0 + 288);
    v5 = *(v0 + 296);
    v7 = *(v0 + 280);
    sub_10000A0D4(v0 + 96, &qword_100202460, &unk_1001AD180);
    (*(v6 + 104))(v5, enum case for DIPError.Code.idcsErrorInitializingPayloadProcessor(_:), v7);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    sub_10000A0D4(v0 + 16, &qword_100202460, &unk_1001AD180);
    sub_1001534BC(v2);
  }

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1001522A8()
{
  sub_1001534BC(*(v0 + 384));

  v1 = *(v0 + 8);

  return v1();
}

void sub_100152378(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(char *, uint64_t, uint64_t, uint64_t)@<X2>, _OWORD *a5@<X8>)
{
  v124 = a2;
  v125 = a3;
  v120 = a5;
  v6 = sub_100004E70(&qword_100200510, qword_1001AB070);
  v7 = __chkstk_darwin(v6 - 8);
  v115 = &v107 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v123 = &v107 - v10;
  __chkstk_darwin(v9);
  v116 = &v107 - v11;
  v119 = type metadata accessor for CredentialKeyType();
  v117 = *(v119 - 8);
  v12 = __chkstk_darwin(v119);
  v122 = &v107 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v121 = &v107 - v15;
  __chkstk_darwin(v14);
  v17 = &v107 - v16;
  v18 = type metadata accessor for Logger();
  v118 = *(v18 - 8);
  __chkstk_darwin(v18);
  v20 = &v107 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_100004E70(&qword_100202498, &unk_1001AD910);
  __chkstk_darwin(v21 - 8);
  v23 = &v107 - v22;
  v24 = type metadata accessor for DIPError.Code();
  v25 = *(v24 - 1);
  __chkstk_darwin(v24);
  v27 = &v107 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = a1;
  v29 = v131;
  v30 = sub_10016A520(v124, v125);
  if (v29)
  {
    return;
  }

  v31 = v30;
  v124 = v25;
  v125 = v24;
  v111 = v20;
  v131 = v27;
  v112 = v28;
  v113 = v18;
  v32 = v121;
  v33 = v122;
  v34 = v123;
  v114 = v23;
  sub_10016AA60(v30);
  v35 = v31;
  v36 = sub_10005947C();
  if (v36 >> 62)
  {
    v105 = v36;
    v106 = _CocoaArrayWrapper.endIndex.getter();
    v36 = v105;
    v37 = v131;
    if (v106)
    {
      goto LABEL_4;
    }

LABEL_44:

    (*(v124 + 104))(v37, enum case for DIPError.Code.idcsMissingPayload(_:), v125);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    return;
  }

  v37 = v131;
  if (!*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_44;
  }

LABEL_4:
  if ((v36 & 0xC000000000000001) != 0)
  {
    v38 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_7:
    v39 = v38;

    sub_10005E914(&v126);
    v110 = 0;
    v109 = v39;
    v40 = type metadata accessor for KeyLookupInfo(0);
    v41 = *(v40 - 8);
    v42 = *(v41 + 56);
    v43 = (v41 + 56);
    v44 = v114;
    v42(v114, 1, 1, v40);
    if (*(&v128 + 1) != 2)
    {
      if (*(&v128 + 1) != 1)
      {
        if (*(&v128 + 1))
        {
          (*(v124 + 104))(v131, enum case for DIPError.Code.internalError(_:), v125);
          sub_10002688C(_swiftEmptyArrayStorage);
          type metadata accessor for DIPError();
          sub_100008E7C();
          swift_allocError();
          DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
          swift_willThrow();

          sub_1000BCE9C(&v126);
          sub_10000A0D4(v114, &qword_100202498, &unk_1001AD910);
          return;
        }

        v45 = v111;
        defaultLogger()();
        v46 = Logger.logObject.getter();
        v47 = static os_log_type_t.debug.getter();
        v48 = os_log_type_enabled(v46, v47);
        v49 = v109;
        if (v48)
        {
          v50 = swift_slowAlloc();
          *v50 = 0;
          _os_log_impl(&_mh_execute_header, v46, v47, "no key needed", v50, 2u);
        }

        (*(v118 + 8))(v45, v113);
        goto LABEL_39;
      }

      v131 = v43;
      sub_100009278((v112 + 32), *(v112 + 56));
      v51 = sub_100021FD0(v35, *(&v127 + 1), v128, v126);
      if (v51)
      {
        v52 = v51;
        v53 = [v51 identifier];
        if (v53)
        {
          v125 = v42;
          v54 = v53;
          v55 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v123 = v56;

          v57 = [v52 publicKeyIdentifier];
          if (v57)
          {
            v115 = v55;
            v124 = v40;
            v58 = v57;
            v118 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
            v60 = v59;

            v61 = v52;
            v62 = [v61 keyType];
            v63 = v32;
            v64 = v109;
            v108 = v35;
            v122 = v60;
            if (v62)
            {
              v65 = v32;
              v66 = v62;
              static String._unconditionallyBridgeFromObjectiveC(_:)();

              v67 = v116;
              CredentialKeyType.init(rawValue:)();
              v68 = v117;
              v69 = v119;
              if ((*(v117 + 48))(v67, 1, v119) != 1)
              {
                v70 = *(v68 + 32);
                v63 = v65;
                v70(v65, v67, v69);

                v64 = v109;
                goto LABEL_35;
              }

              sub_10000A0D4(v67, &qword_100200510, qword_1001AB070);
              v64 = v109;
              v63 = v65;
            }

            v68 = v117;
            v69 = v119;
            (*(v117 + 104))(v63, enum case for CredentialKeyType.invalid(_:), v119);

            v70 = *(v68 + 32);
LABEL_35:
            v87 = v17;
            v70(v17, v63, v69);
            v88 = [v61 keyBlob];
            if (v88)
            {
              v89 = v88;
              v90 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
              v91 = v87;
              v93 = v92;

              v44 = v114;
              sub_10000A0D4(v114, &qword_100202498, &unk_1001AD910);
              v94 = v124;
              v70(&v44[*(v124 + 24)], v91, v119);
              v95 = v123;
              *v44 = v115;
              *(v44 + 1) = v95;
              v96 = v122;
              *(v44 + 2) = v118;
              *(v44 + 3) = v96;
              v97 = &v44[*(v94 + 28)];
              *v97 = v90;
              v97[1] = v93;
              v125(v44, 0, 1, v94);
              goto LABEL_37;
            }

            sub_1000092BC(v118, v122);
            (*(v68 + 8))(v17, v69);
LABEL_39:
            v82 = v120;
            v44 = v114;
            goto LABEL_40;
          }
        }

        else
        {
        }
      }

      goto LABEL_39;
    }

    v125 = v42;
    v71 = v109;
    v72 = [v109 payloadProtectionKey];
    if (!v72 || (v131 = v43, v124 = v40, v73 = v72, v74 = [v72 identifier], v73, !v74))
    {

LABEL_37:
      v82 = v120;
LABEL_40:
      v98 = type metadata accessor for CredentialStorage.DBResult(0);
      sub_100153518(v44, v82 + *(v98 + 20));
      v99 = v129;
      v82[2] = v128;
      v82[3] = v99;
      v82[4] = v130;
      v100 = v127;
      *v82 = v126;
      v82[1] = v100;
      return;
    }

    v75 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v77 = v76;

    v78 = [v71 payloadProtectionKey];
    if (!v78)
    {

      (*(v117 + 56))(v34, 1, 1, v119);
      sub_10000A0D4(v34, &qword_100200510, qword_1001AB070);
      goto LABEL_39;
    }

    v79 = v78;
    v118 = v75;
    v121 = v77;
    v80 = v71;
    v81 = [v78 keyType];
    v83 = v119;
    v82 = v120;
    if (v81)
    {
      v84 = v81;
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v85 = v115;
      v83 = v119;
      CredentialKeyType.init(rawValue:)();
      v86 = v117;
      if ((*(v117 + 48))(v85, 1, v83) != 1)
      {
        (*(v86 + 32))(v34, v85, v83);
        v82 = v120;
        goto LABEL_42;
      }

      sub_10000A0D4(v85, &qword_100200510, qword_1001AB070);
      v82 = v120;
    }

    v86 = v117;
    (*(v117 + 104))(v34, enum case for CredentialKeyType.invalid(_:), v83);
LABEL_42:

    v101 = v114;
    sub_10000A0D4(v114, &qword_100202498, &unk_1001AD910);
    (*(v86 + 56))(v34, 0, 1, v83);
    v102 = *(v86 + 32);
    v102(v33, v34, v83);
    v103 = v124;
    v102(v101 + *(v124 + 24), v33, v83);
    v44 = v101;
    v104 = v121;
    *v101 = v118;
    *(v101 + 8) = v104;
    *(v101 + 16) = xmmword_1001AB540;
    *(v101 + *(v103 + 28)) = xmmword_1001AB540;
    v125(v101, 0, 1, v103);
    goto LABEL_40;
  }

  if (*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v38 = *(v36 + 32);
    goto LABEL_7;
  }

  __break(1u);
}

uint64_t sub_1001530D0()
{

  sub_100005090((v0 + 32));
  sub_100005090((v0 + 72));

  return swift_deallocClassInstance();
}

uint64_t sub_100153154()
{

  v1 = *(v0 + 48);
  if (v1 >> 60 != 15)
  {
    sub_1000092BC(*(v0 + 40), v1);
  }

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1001531AC(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v10 = v2[6];
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_1000105C8;

  return sub_100150858(a1, a2, v6, v7, v8, v9, v10);
}

uint64_t sub_100153284(uint64_t a1, uint64_t *a2, int *a3)
{
  v5 = *a2;
  v8 = (a3 + *a3);
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1000105C8;

  return v8(a1, v5);
}

uint64_t sub_100153388(uint64_t a1, uint64_t *a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1000105C8;

  return sub_100153284(a1, a2, v6);
}

uint64_t type metadata accessor for CredentialStorage.DBResult(uint64_t a1)
{
  result = qword_100203C68;
  if (!qword_100203C68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1001534BC(uint64_t a1)
{
  v2 = type metadata accessor for CredentialStorage.DBResult(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100153518(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004E70(&qword_100202498, &unk_1001AD910);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001535B8(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1000105C8;

  return sub_10014F9F0(a1, a2, v6, v7, v8);
}

uint64_t sub_10015367C(uint64_t a1, uint64_t *a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1000105C8;

  return sub_1000BACE0(a1, a2, v6);
}

uint64_t sub_1001537E4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1000105C8;

  return sub_10014F588(a1, v4, v5, v6);
}

uint64_t sub_100153898(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000105C8;

  return sub_100093F10(a1, v4);
}

uint64_t sub_100153950(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1000105C8;

  return sub_10001C3C4(a1, v1);
}

unint64_t sub_100153A1C()
{
  result = qword_100203BF8;
  if (!qword_100203BF8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100203BF8);
  }

  return result;
}

uint64_t sub_100153A68()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100153ABC(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1000104D4;

  return sub_100149FDC(a1, a2, v6, v7, v8);
}

uint64_t sub_100153B80(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1000104D4;

  return sub_10014EBB8(a1, v4, v5, v6);
}

uint64_t sub_100153C34(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1000105C8;

  return sub_10001EAD0(a1, v1);
}

uint64_t sub_100153D04()
{

  return _swift_deallocObject(v0, 32, 7);
}

double sub_100153D3C@<D0>(_OWORD *a1@<X8>)
{
  (*(v1 + 16))(&v5);
  if (!v2)
  {
    result = *&v5;
    *a1 = v5;
  }

  return result;
}

uint64_t sub_100153D80()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100153DE8()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100153E78(void (*a1)(void), void (*a2)(void), uint64_t a3)
{
  a1(*(v3 + 16));
  a2(*(v3 + 32));

  return _swift_deallocObject(v3, a3, 7);
}

uint64_t sub_100153EFC()
{

  return _swift_deallocObject(v0, 89, 7);
}

uint64_t sub_100153F74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_100004E70(&qword_100202498, &unk_1001AD910);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100154044(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = sub_100004E70(&qword_100202498, &unk_1001AD910);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1001540F4(uint64_t a1)
{
  sub_100154170(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_100154170(uint64_t a1)
{
  if (!qword_100202A40)
  {
    type metadata accessor for KeyLookupInfo(255);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_100202A40);
    }
  }
}

uint64_t sub_100154238(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[12] = a4;
  v5[13] = v4;
  v5[10] = a2;
  v5[11] = a3;
  v5[9] = a1;
  v6 = type metadata accessor for DIPError.Code();
  v5[14] = v6;
  v5[15] = *(v6 - 8);
  v5[16] = swift_task_alloc();
  v7 = type metadata accessor for COSEKey();
  v5[17] = v7;
  v5[18] = *(v7 - 8);
  v5[19] = swift_task_alloc();
  v8 = type metadata accessor for Logger();
  v5[20] = v8;
  v5[21] = *(v8 - 8);
  v5[22] = swift_task_alloc();
  v5[23] = swift_task_alloc();
  v5[24] = swift_task_alloc();
  v5[25] = swift_task_alloc();

  return _swift_task_switch(sub_1001543DC, 0, 0);
}

uint64_t sub_1001543DC(uint64_t a1)
{
  v61 = v1;
  defaultLogger()();

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();

  v4 = os_log_type_enabled(v2, v3);
  v5 = v1[25];
  v6 = v1[20];
  v7 = v1[21];
  if (v4)
  {
    v9 = v1[9];
    v8 = v1[10];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v60[0] = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_10010150C(v9, v8, v60);
    _os_log_impl(&_mh_execute_header, v2, v3, "Checking if the AccountKaK exists for the given accountKeyIdentifier %s", v10, 0xCu);
    sub_100005090(v11);
  }

  v12 = *(v7 + 8);
  v12(v5, v6);
  v1[26] = v12;
  v13 = v1[9];
  v14 = v1[10];
  v1[27] = *(v1[13] + 112);
  v15 = sub_10002F8D8(v13, v14);
  if (v16 >> 60 == 15)
  {
    defaultLogger()();

    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.debug.getter();

    v21 = os_log_type_enabled(v19, v20);
    v22 = v1[24];
    v23 = v1[20];
    if (v21)
    {
      v54 = v1[10];
      v58 = v1[20];
      v24 = v1[9];
      v25 = swift_slowAlloc();
      v56 = v22;
      v26 = swift_slowAlloc();
      v60[0] = v26;
      *v25 = 136315138;
      *(v25 + 4) = sub_10010150C(v24, v54, v60);
      _os_log_impl(&_mh_execute_header, v19, v20, "AccountKaK doesn't exist for the given accountKeyIdentifier %s", v25, 0xCu);
      sub_100005090(v26);

      v27 = v56;
      v28 = v58;
    }

    else
    {

      v27 = v22;
      v28 = v23;
    }

    v12(v27, v28);
    v57 = sub_10002F210(v1[9], v1[10]);
    v59 = v38;
    v39 = sub_100156958(v57, v38);
  }

  else
  {
    v57 = v15;
    v59 = v16;
    defaultLogger()();

    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.debug.getter();

    v31 = os_log_type_enabled(v29, v30);
    v32 = v1[23];
    v33 = v1[20];
    if (v31)
    {
      v34 = v1[9];
      v53 = v1[10];
      v55 = v1[23];
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v60[0] = v36;
      *v35 = 136315138;
      *(v35 + 4) = sub_10010150C(v34, v53, v60);
      _os_log_impl(&_mh_execute_header, v29, v30, "AccountKaK exists for the given accountKeyIdentifier %s", v35, 0xCu);
      sub_100005090(v36);

      v37 = v55;
    }

    else
    {

      v37 = v32;
    }

    v12(v37, v33);
    v39 = sub_100156958(v57, v59);
  }

  v1[29] = v57;
  v1[30] = v59;
  v1[28] = v39;
  v40 = v39;
  v41 = [v39 casdAttestation];
  if (v41)
  {
    v43 = v1[12];
    v42 = v1[13];
    v44 = v1[11];
    v45 = v41;
    v46 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v48 = v47;

    v1[31] = v46;
    v1[32] = v48;
    v49 = swift_allocObject();
    v1[33] = v49;
    v49[2] = v42;
    v49[3] = v44;
    v49[4] = v43;
    v50 = swift_allocObject();
    v1[34] = v50;
    *(v50 + 16) = &unk_1001AE9E0;
    *(v50 + 24) = v49;

    v51 = swift_task_alloc();
    v1[35] = v51;
    v52 = sub_100004E70(&qword_1002014B0, &unk_1001ACFE0);
    *v51 = v1;
    v51[1] = sub_100154BBC;

    return AsyncCoreDataContainer.read<A>(_:)(v1 + 7, &unk_1001AE9E8, v50, v52);
  }

  else
  {
    (*(v1[15] + 104))(v1[16], enum case for DIPError.Code.accountKeySigningKeyAttestationDoesntExist(_:), v1[14]);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100157F14(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    sub_1000092BC(v57, v59);
    (*(v1[15] + 104))(v1[16], enum case for DIPError.Code.internalError(_:), v1[14]);
    swift_errorRetain();
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100157F14(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v17 = v1[1];

    return v17();
  }
}

uint64_t sub_100154BBC()
{
  v2 = *v1;
  *(*v1 + 288) = v0;

  if (v0)
  {
    v3 = sub_10015515C;
  }

  else
  {

    *(v2 + 296) = *(v2 + 56);
    v3 = sub_100154CEC;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100154CEC()
{
  v1 = v0[38];
  if (v1)
  {
    v2 = swift_task_alloc();
    v0[39] = v2;
    *v2 = v0;
    v2[1] = sub_100155020;
    v3 = v0[37];

    return sub_100028458(v3, v1, 0, 0xF000000000000000);
  }

  else
  {
    v6 = v0[31];
    v7 = v0[32];
    v9 = v0[29];
    v10 = v0[30];
    v8 = v0[28];
    (*(v0[15] + 104))(v0[16], enum case for DIPError.Code.idcsMissingKeySigningKey(_:), v0[14]);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100157F14(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    sub_1000092BC(v6, v7);

    sub_1000092BC(v9, v10);
    (*(v0[15] + 104))(v0[16], enum case for DIPError.Code.internalError(_:), v0[14]);
    swift_errorRetain();
    sub_10002688C(_swiftEmptyArrayStorage);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_100155020(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 320) = a1;
  *(v3 + 328) = v1;

  if (v1)
  {
    v4 = sub_10015593C;
  }

  else
  {
    v4 = sub_10015535C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10015515C()
{
  v2 = v0[31];
  v1 = v0[32];
  v4 = v0[29];
  v3 = v0[30];
  v5 = v0[28];

  sub_1000092BC(v2, v1);

  sub_1000092BC(v4, v3);
  (*(v0[15] + 104))(v0[16], enum case for DIPError.Code.internalError(_:), v0[14]);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100157F14(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v6 = v0[1];

  return v6();
}

uint64_t sub_10015535C()
{
  v1 = v0[40];
  if (!v1)
  {
    v31 = v0[31];
    v33 = v0[32];
    v35 = v0[29];
    v37 = v0[30];
    v34 = v0[28];
    (*(v0[15] + 104))(v0[16], enum case for DIPError.Code.idcsMissingKeySigningKey(_:), v0[14]);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100157F14(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    sub_1000092BC(v31, v33);

    sub_1000092BC(v35, v37);
    goto LABEL_6;
  }

  v2 = v0[41];
  v3 = v0[28];
  type metadata accessor for CBORDecoder();
  swift_allocObject();
  CBORDecoder.init()();
  v4 = [v3 publicKeyCOSEKey];
  v5 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  sub_100157F14(&qword_100203CA0, &type metadata accessor for COSEKey, &protocol conformance descriptor for COSEKey);
  dispatch thunk of CBORDecoder.decode<A>(_:from:)();
  if (v2)
  {
    v9 = v0[31];
    v8 = v0[32];
    v10 = v0[29];
    v36 = v0[30];
    v11 = v0[28];
    sub_1000092BC(v5, v7);

    sub_1000092BC(v9, v8);

    sub_1000092BC(v10, v36);
LABEL_6:
    (*(v0[15] + 104))(v0[16], enum case for DIPError.Code.internalError(_:), v0[14]);
    swift_errorRetain();
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100157F14(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v15 = v0[1];

    return v15();
  }

  v12 = v0[19];
  sub_1000092BC(v5, v7);

  v0[5] = &type metadata for KeySigningKeySignatureProvider;
  v0[6] = &off_1001F9920;
  v0[2] = v1;
  v13 = sub_100143CB8(v12);
  v17 = v0[29];
  v18 = v0[28];
  v32 = v0[26];
  v19 = v0[22];
  v20 = v0[19];
  v28 = v0[30];
  v29 = v0[20];
  v21 = v0[18];
  v30 = v0[17];
  v22 = v13;
  v23 = v14;
  defaultLogger()();
  v24 = swift_task_alloc();
  *(v24 + 16) = v22;
  *(v24 + 24) = v23;
  Logger.sensitive(_:)();

  sub_1000092BC(v17, v28);

  v32(v19, v29);
  (*(v21 + 8))(v20, v30);
  sub_100157C88((v0 + 2));

  v25 = v0[1];
  v26 = v0[31];
  v27 = v0[32];

  return v25(v22, v23, v26, v27);
}

uint64_t sub_10015593C()
{
  v1 = v0[29];
  v2 = v0[30];
  v3 = v0[28];
  sub_1000092BC(v0[31], v0[32]);

  sub_1000092BC(v1, v2);
  (*(v0[15] + 104))(v0[16], enum case for DIPError.Code.internalError(_:), v0[14]);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100157F14(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v4 = v0[1];

  return v4();
}

uint64_t sub_100155B24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[12] = a4;
  v5[13] = v4;
  v5[10] = a2;
  v5[11] = a3;
  v5[9] = a1;
  v6 = type metadata accessor for DIPError.Code();
  v5[14] = v6;
  v5[15] = *(v6 - 8);
  v5[16] = swift_task_alloc();
  sub_100004E70(&qword_100201070, &unk_1001AD2D0);
  v5[17] = swift_task_alloc();
  v7 = type metadata accessor for COSEKey();
  v5[18] = v7;
  v5[19] = *(v7 - 8);
  v5[20] = swift_task_alloc();

  return _swift_task_switch(sub_100155C80, 0, 0);
}

uint64_t sub_100155C80()
{
  v1 = v0[13];
  v2 = v0[9];
  v3 = v0[10];
  v4 = swift_allocObject();
  v0[21] = v4;
  v4[2] = v1;
  v4[3] = v2;
  v4[4] = v3;
  v5 = swift_allocObject();
  v0[22] = v5;
  *(v5 + 16) = &unk_1001AE9B8;
  *(v5 + 24) = v4;

  v6 = swift_task_alloc();
  v0[23] = v6;
  v7 = sub_100004E70(&qword_1002014B0, &unk_1001ACFE0);
  *v6 = v0;
  v6[1] = sub_100155DD8;

  return AsyncCoreDataContainer.read<A>(_:)(v0 + 7, &unk_1001AE9C8, v5, v7);
}

uint64_t sub_100155DD8()
{
  v2 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {
    v3 = sub_10015624C;
  }

  else
  {

    *(v2 + 200) = *(v2 + 56);
    v3 = sub_100155F04;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100155F04()
{
  v1 = v0[26];
  if (v1)
  {
    v0[27] = *(v0[13] + 112);
    v2 = swift_task_alloc();
    v0[28] = v2;
    *v2 = v0;
    v2[1] = sub_100156130;
    v3 = v0[25];

    return sub_100028458(v3, v1, 0, 0xF000000000000000);
  }

  else
  {
    (*(v0[15] + 104))(v0[16], enum case for DIPError.Code.idcsMissingKeySigningKey(_:), v0[14]);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100157F14(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_100156130(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 232) = a1;
  *(v3 + 240) = v1;

  if (v1)
  {
    v4 = sub_1001568D0;
  }

  else
  {

    v4 = sub_1001562DC;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10015624C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001562DC()
{
  if (!v0[29])
  {
    (*(v0[15] + 104))(v0[16], enum case for DIPError.Code.idcsMissingKeySigningKey(_:), v0[14]);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100157F14(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
LABEL_8:

    v12 = v0[1];

    return v12();
  }

  v1 = v0[18];
  v2 = v0[19];
  v3 = v0[17];

  sub_100024590(v3);

  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = v0[16];
    v5 = v0[14];
    v6 = v0[15];
    sub_100026564(v0[17]);
    (*(v6 + 104))(v4, enum case for DIPError.Code.coseInvalidPublicKey(_:), v5);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100157F14(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
LABEL_7:

    goto LABEL_8;
  }

  v7 = v0[30];
  v9 = v0[11];
  v8 = v0[12];
  (*(v0[19] + 32))(v0[20], v0[17], v0[18]);
  v10 = sub_10002F8D8(v9, v8);
  if (v7)
  {
    (*(v0[19] + 8))(v0[20], v0[18]);
    goto LABEL_7;
  }

  if (v11 >> 60 == 15)
  {
    v14 = v0[19];
    v32 = v0[18];
    v33 = v0[20];
    v16 = v0[15];
    v15 = v0[16];
    v17 = v0[14];
    v19 = v0[11];
    v18 = v0[12];
    _StringGuts.grow(_:)(72);
    v20._countAndFlagsBits = 0xD000000000000046;
    v20._object = 0x80000001001BC3B0;
    String.append(_:)(v20);
    v21._countAndFlagsBits = v19;
    v21._object = v18;
    String.append(_:)(v21);
    (*(v16 + 104))(v15, enum case for DIPError.Code.accountKeySigningKeyDoesntExist(_:), v17);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100157F14(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    (*(v14 + 8))(v33, v32);
    goto LABEL_8;
  }

  v22 = v0[27];
  v23 = v0[20];
  v0[5] = &type metadata for AccountKeySigningKeySignatureProvider;
  v0[6] = &off_1001F7D80;
  v0[2] = v22;
  v0[3] = v10;
  v0[4] = v11;

  v24 = sub_100144150(v23);
  v26 = v0[19];
  v25 = v0[20];
  v27 = v0[18];
  v28 = v24;
  v30 = v29;

  sub_100157C88((v0 + 2));
  (*(v26 + 8))(v25, v27);

  v31 = v0[1];

  return v31(v28, v30);
}

uint64_t sub_1001568D0()
{

  v1 = *(v0 + 8);

  return v1();
}

char *sub_100156958(uint64_t a1, uint64_t a2)
{
  v6 = sub_100004E70(&qword_100201070, &unk_1001AD2D0);
  __chkstk_darwin(v6);
  v8 = v40 - v7;
  v9 = type metadata accessor for Insecure.SHA1();
  v44 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Insecure.SHA1Digest();
  v45 = *(v12 - 8);
  v46 = v12;
  __chkstk_darwin(v12);
  v14 = v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = *(v2 + 112);
  v48 = a1;
  v49 = a2;
  v15 = dispatch thunk of SESKeystore.getPublicKey(of:)();
  if (!v3)
  {
    v17 = v15;
    v18 = v16;
    v40[1] = v6;
    v41 = v8;
    v19 = [objc_allocWithZone(DCCredentialCryptoKey) init];
    v20 = v18;
    isa = Data._bridgeToObjectiveC()().super.isa;
    [v19 setPublicKey:isa];

    sub_100157F14(&qword_100201090, &type metadata accessor for Insecure.SHA1, &protocol conformance descriptor for Insecure.SHA1);
    dispatch thunk of HashFunction.init()();
    sub_100009708(v17, v20);
    sub_1000265CC(v17, v20, v11);
    v42 = v17;
    v43 = v20;
    sub_1000092BC(v17, v20);
    dispatch thunk of HashFunction.finalize()();
    (*(v44 + 8))(v11, v9);
    sub_100157F14(&qword_100201098, &type metadata accessor for Insecure.SHA1Digest, &protocol conformance descriptor for Insecure.SHA1Digest);
    v22 = v46;
    v23 = Digest.data.getter();
    v25 = v24;
    v26 = v14;
    v14 = v19;
    (*(v45 + 8))(v26, v22);
    v27 = Data._bridgeToObjectiveC()().super.isa;
    sub_1000092BC(v23, v25);
    [v19 setPublicKeyIdentifier:v27];

    v28 = sub_10003086C(v48, v49);
    v30 = v29;
    v31 = Data._bridgeToObjectiveC()().super.isa;
    sub_1000092BC(v28, v30);
    [v14 setCasdAttestation:v31];

    v32 = v42;
    sub_100009708(v42, v43);
    v33 = v41;
    COSEKey.init(ec2CurveIdentifier:publicKey:)();
    type metadata accessor for CBOREncoder();
    swift_allocObject();
    CBOREncoder.init()();
    sub_100157E60();
    v35 = dispatch thunk of CBOREncoder.encode<A>(_:)();
    v36 = v33;
    v38 = v37;
    sub_100026564(v36);

    v39 = Data._bridgeToObjectiveC()().super.isa;
    sub_1000092BC(v35, v38);
    [v14 setPublicKeyCOSEKey:v39];

    [v14 setKeyType:2];
    [v14 setKeyUsage:0];
    sub_1000092BC(v32, v43);
  }

  return v14;
}