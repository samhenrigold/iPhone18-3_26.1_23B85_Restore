uint64_t sub_1001709AC(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1000104D4;

  return sub_10016FE58(a1, a2, v6, v7, v8);
}

uint64_t sub_100170A70(uint64_t a1, uint64_t *a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1000105C8;

  return sub_10013E6D0(a1, a2, v6);
}

uint64_t sub_100170B44()
{

  return _swift_deallocObject(v0, 32, 7);
}

void *sub_100170B9C@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(v2 + 16))(&v6, *a1);
  if (!v3)
  {
    *a2 = v6;
  }

  return result;
}

uint64_t sub_100170C04(uint64_t a1, int a2)
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

uint64_t sub_100170C4C(uint64_t result, int a2, int a3)
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

uint64_t sub_100170CB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[6] = a4;
  v5[7] = v4;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  v6 = type metadata accessor for DIPError.Code();
  v5[8] = v6;
  v5[9] = *(v6 - 8);
  v5[10] = swift_task_alloc();
  v7 = type metadata accessor for Logger();
  v5[11] = v7;
  v5[12] = *(v7 - 8);
  v5[13] = swift_task_alloc();
  v5[14] = swift_task_alloc();
  v5[15] = swift_task_alloc();
  v5[16] = swift_task_alloc();
  v5[17] = swift_task_alloc();
  v5[18] = swift_task_alloc();
  v5[19] = swift_task_alloc();

  return _swift_task_switch(sub_100170E1C, 0, 0);
}

void sub_100170E1C()
{
  v41 = v0;
  v1 = v0[4];
  v39 = v0[3];
  v40 = v1;

  v2._countAndFlagsBits = 0x746E65646572632DLL;
  v2._object = 0xEC000000736C6169;
  String.append(_:)(v2);
  v3 = v39;
  v4 = v40;
  v0[20] = v39;
  v0[21] = v4;
  v5 = sub_100174404(v3, v4);
  defaultLogger()();

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[19];
  v11 = v0[11];
  v10 = v0[12];
  if (v8)
  {
    v38 = v0[11];
    v13 = v0[5];
    v12 = v0[6];
    v14 = swift_slowAlloc();
    v37 = v9;
    v15 = swift_slowAlloc();
    v39 = v15;
    *v14 = 136446210;
    *(v14 + 4) = sub_10010150C(v13, v12, &v39);
    _os_log_impl(&_mh_execute_header, v6, v7, "Deleting credential with ID: %{public}s from credential identifier list", v14, 0xCu);
    sub_100005090(v15);

    v16 = *(v10 + 8);
    v16(v37, v38);
  }

  else
  {

    v16 = *(v10 + 8);
    v16(v9, v11);
  }

  v0[22] = v16;
  v17 = sub_1001752E8(v5, v0[5], v0[6]);
  if (v18)
  {
    v19 = *(v5 + 2);
    v20 = v19;
    goto LABEL_26;
  }

  v20 = v17;
  v21 = v17 + 1;
  if (__OFADD__(v17, 1))
  {
LABEL_42:
    __break(1u);
    return;
  }

  v22 = *(v5 + 2);

  if (v21 != v22)
  {
    v23 = 16 * v20;
    while (v21 < v22)
    {
      v25 = *&v5[v23 + 48];
      v26 = *&v5[v23 + 56];
      v27 = v25 == v0[5] && v26 == v0[6];
      if (!v27 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        if (v21 != v20)
        {
          if (v20 >= v22)
          {
            goto LABEL_40;
          }

          v28 = &v5[16 * v20 + 32];
          v30 = *v28;
          v29 = *(v28 + 1);

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v5 = sub_1001751C8(v5);
          }

          v31 = &v5[16 * v20];
          *(v31 + 4) = v25;
          *(v31 + 5) = v26;

          if (v21 >= *(v5 + 2))
          {
            goto LABEL_41;
          }

          v24 = &v5[v23];
          *(v24 + 6) = v30;
          *(v24 + 7) = v29;
        }

        ++v20;
      }

      ++v21;
      v22 = *(v5 + 2);
      v23 += 16;
      if (v21 == v22)
      {
        goto LABEL_24;
      }
    }

    __break(1u);
    goto LABEL_37;
  }

LABEL_24:

  v19 = *(v5 + 2);
  if (v19 < v20)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  if (v20 < 0)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

LABEL_26:
  if (__OFADD__(v19, v20 - v19))
  {
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v0[2] = v5;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0 || v20 > *(v5 + 3) >> 1)
  {
    if (v19 <= v20)
    {
      v33 = v20;
    }

    else
    {
      v33 = v19;
    }

    v5 = sub_100100418(isUniquelyReferenced_nonNull_native, v33, 1, v5);
    v0[2] = v5;
  }

  v0[23] = v5;
  sub_10010DC58(v20, v19, 0);
  v0[2] = v5;
  v34 = swift_task_alloc();
  v0[24] = v34;
  *v34 = v0;
  v34[1] = sub_100171278;
  v35 = v0[6];
  v36 = v0[5];

  sub_100173A0C(v36, v35, 0);
}

uint64_t sub_100171278()
{
  *(*v1 + 200) = v0;

  if (v0)
  {
    v2 = sub_100171F0C;
  }

  else
  {
    v2 = sub_10017138C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10017138C(uint64_t a1)
{
  v43 = v1;
  v2 = v1[25];
  if (*(v1[23] + 16))
  {
    defaultLogger()();
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v39 = v1[16];
      v40 = v1[22];
      v38 = v1[11];
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v41 = v6;
      *v5 = 136446210;

      v7 = Array.description.getter();
      v9 = v8;

      v10 = sub_10010150C(v7, v9, &v41);

      *(v5 + 4) = v10;
      _os_log_impl(&_mh_execute_header, v3, v4, "Token Credential list not empty, updating list with new list: %{public}s", v5, 0xCu);
      sub_100005090(v6);

      v40(v39, v38);
    }

    else
    {
      v25 = v1[22];
      v26 = v1[16];
      v27 = v1[11];

      v25(v26, v27);
    }

    v28 = v1[23];
    v30 = v1[20];
    v29 = v1[21];

    sub_100174B44(v30, v29, v28);

    swift_bridgeObjectRelease_n();

    v31 = v1[1];

    return v31();
  }

  else
  {
    defaultLogger()();
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "Token credential list is empty attempting to clean token", v13, 2u);
    }

    v14 = v1[22];
    v15 = v1[18];
    v16 = v1[11];
    v17 = v1[7];
    v19 = v1[3];
    v18 = v1[4];

    v14(v15, v16);
    sub_100009278((*(v17 + 112) + 48), *(*(v17 + 112) + 72));
    sub_100049CB0(v19, v18);
    v1[26] = v2;
    if (v2)
    {
      defaultLogger()();
      swift_errorRetain();
      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        *v22 = 138412290;
        swift_errorRetain();
        v24 = _swift_stdlib_bridgeErrorToNSError();
        *(v22 + 4) = v24;
        *v23 = v24;
        _os_log_impl(&_mh_execute_header, v20, v21, "Failed to delete PII token: %@", v22, 0xCu);
        sub_100005CA8(v23);
      }

      else
      {
      }

      (v1[22])(v1[17], v1[11]);
    }

    v33 = v1[4];
    v41 = v1[3];
    v42 = v33;

    v34._countAndFlagsBits = 0x7361682D6969702DLL;
    v34._object = 0xE900000000000068;
    String.append(_:)(v34);
    v36 = v41;
    v35 = v42;
    v1[27] = v42;
    v37 = swift_task_alloc();
    v1[28] = v37;
    *v37 = v1;
    v37[1] = sub_10017187C;

    return sub_100173A0C(v36, v35, 1);
  }
}

uint64_t sub_10017187C()
{
  *(*v1 + 232) = v0;

  if (v0)
  {
    v2 = sub_100172508;
  }

  else
  {
    v2 = sub_100171990;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100171990()
{

  v1 = *(v0 + 232);
  sub_1001749AC(*(v0 + 160), *(v0 + 168));
  if (v1)
  {

    defaultLogger()();
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
      _os_log_impl(&_mh_execute_header, v2, v3, "Failed to delete PII token credential list: %@", v4, 0xCu);
      sub_100005CA8(v5);
    }

    else
    {
    }

    v9 = *(v0 + 208);
    (*(v0 + 176))(*(v0 + 104), *(v0 + 88));
    if (v9)
    {
      goto LABEL_10;
    }

    if (*(v0 + 200))
    {
LABEL_12:
      (*(*(v0 + 72) + 104))(*(v0 + 80), enum case for DIPError.Code.failedToDeletePIIHashLocally(_:), *(v0 + 64));
      sub_10002688C(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_100008E7C();
      swift_allocError();
      goto LABEL_13;
    }

    if (!*(v0 + 232))
    {
      (*(*(v0 + 72) + 104))(*(v0 + 80), enum case for DIPError.Code.failedToDeleteTokenCredentialList(_:), *(v0 + 64));
      sub_10002688C(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_100008E7C();
      swift_allocError();
      goto LABEL_13;
    }

LABEL_18:
    (*(*(v0 + 72) + 104))(*(v0 + 80), enum case for DIPError.Code.failedToDeletePIIHashKeychain(_:), *(v0 + 64));
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    goto LABEL_13;
  }

  v7 = *(v0 + 208);

  if (!v7)
  {
    if (*(v0 + 200))
    {
      goto LABEL_12;
    }

    if (!*(v0 + 232))
    {

      v8 = *(v0 + 8);
      goto LABEL_14;
    }

    goto LABEL_18;
  }

LABEL_10:
  (*(*(v0 + 72) + 104))(*(v0 + 80), enum case for DIPError.Code.failedToDeletePIIToken(_:), *(v0 + 64));
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100008E7C();
  swift_allocError();
LABEL_13:
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v8 = *(v0 + 8);
LABEL_14:

  return v8();
}

uint64_t sub_100171F0C(uint64_t a1)
{
  v42 = v1;
  defaultLogger()();
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
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to delete local PII hash: %@", v4, 0xCu);
    sub_100005CA8(v5);
  }

  else
  {
  }

  (*(v1 + 176))(*(v1 + 120), *(v1 + 88));
  if (*(*(v1 + 184) + 16))
  {
    defaultLogger()();
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v38 = *(v1 + 128);
      v39 = *(v1 + 176);
      v9 = *(v1 + 88);
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v40 = v11;
      *v10 = 136446210;

      v12 = Array.description.getter();
      v14 = v13;

      v15 = sub_10010150C(v12, v14, &v40);

      *(v10 + 4) = v15;
      _os_log_impl(&_mh_execute_header, v7, v8, "Token Credential list not empty, updating list with new list: %{public}s", v10, 0xCu);
      sub_100005090(v11);

      v39(v38, v9);
    }

    else
    {
      v25 = *(v1 + 176);
      v26 = *(v1 + 128);
      v27 = *(v1 + 88);

      v25(v26, v27);
    }

    v28 = *(v1 + 184);
    v29 = *(v1 + 160);
    v30 = *(v1 + 168);

    sub_100174B44(v29, v30, v28);

    swift_bridgeObjectRelease_n();

    v31 = *(v1 + 8);

    return v31();
  }

  else
  {
    defaultLogger()();
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "Token credential list is empty attempting to clean token", v18, 2u);
    }

    v19 = *(v1 + 176);
    v20 = *(v1 + 144);
    v21 = *(v1 + 88);
    v22 = *(v1 + 56);
    v24 = *(v1 + 24);
    v23 = *(v1 + 32);

    v19(v20, v21);
    sub_100009278((*(v22 + 112) + 48), *(*(v22 + 112) + 72));
    sub_100049CB0(v24, v23);
    *(v1 + 208) = 0;
    v33 = *(v1 + 32);
    v40 = *(v1 + 24);
    v41 = v33;

    v34._countAndFlagsBits = 0x7361682D6969702DLL;
    v34._object = 0xE900000000000068;
    String.append(_:)(v34);
    v36 = v40;
    v35 = v41;
    *(v1 + 216) = v41;
    v37 = swift_task_alloc();
    *(v1 + 224) = v37;
    *v37 = v1;
    v37[1] = sub_10017187C;

    return sub_100173A0C(v36, v35, 1);
  }
}

uint64_t sub_100172508()
{

  defaultLogger()();
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
    _os_log_impl(&_mh_execute_header, v1, v2, "Failed to delete remote PII hash: %@", v3, 0xCu);
    sub_100005CA8(v4);
  }

  else
  {
  }

  (*(v0 + 176))(*(v0 + 112), *(v0 + 88));
  sub_1001749AC(*(v0 + 160), *(v0 + 168));
  v6 = *(v0 + 208);

  if (v6)
  {
    (*(*(v0 + 72) + 104))(*(v0 + 80), enum case for DIPError.Code.failedToDeletePIIToken(_:), *(v0 + 64));
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
  }

  else if (*(v0 + 200))
  {
    (*(*(v0 + 72) + 104))(*(v0 + 80), enum case for DIPError.Code.failedToDeletePIIHashLocally(_:), *(v0 + 64));
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
  }

  else
  {
    if (!*(v0 + 232))
    {

      v7 = *(v0 + 8);
      goto LABEL_11;
    }

    (*(*(v0 + 72) + 104))(*(v0 + 80), enum case for DIPError.Code.failedToDeletePIIHashKeychain(_:), *(v0 + 64));
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
  }

  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v7 = *(v0 + 8);
LABEL_11:

  return v7();
}

uint64_t sub_100172B90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v7 = type metadata accessor for DIPError.Code();
  v6[8] = v7;
  v6[9] = *(v7 - 8);
  v6[10] = swift_task_alloc();
  v8 = type metadata accessor for Logger();
  v6[11] = v8;
  v6[12] = *(v8 - 8);
  v6[13] = swift_task_alloc();

  return _swift_task_switch(sub_100172CB4, 0, 0);
}

uint64_t sub_100172CB4(uint64_t a1)
{
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "CredentialStore storePIIHashInSyncableKeyStore", v4, 2u);
  }

  v6 = v1[12];
  v5 = v1[13];
  v7 = v1[11];
  v8 = v1[6];

  (*(v6 + 8))(v5, v7);
  if (v8 == 1)
  {
    sub_100031CDC(v1[2], v1[3], v1[4], v1[5]);
  }

  else if (!v8)
  {
    v9 = v1[7];
    v11 = v1[4];
    v10 = v1[5];
    v13 = v1[2];
    v12 = v1[3];
    v14 = swift_allocObject();
    v1[14] = v14;
    v14[2] = v9;
    v14[3] = v13;
    v14[4] = v12;
    v14[5] = v11;
    v14[6] = v10;

    sub_100009708(v11, v10);
    v15 = swift_allocObject();
    v1[15] = v15;
    *(v15 + 16) = sub_1001752C4;
    *(v15 + 24) = v14;

    v16 = swift_task_alloc();
    v1[16] = v16;
    *v16 = v1;
    v16[1] = sub_100172F50;

    return AsyncCoreDataContainer.performWrite<A>(_:)(v16, sub_10001C150, v15, &type metadata for () + 8);
  }

  v17 = v1[1];

  return v17();
}

uint64_t sub_100172F50()
{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = sub_1001730E4;
  }

  else
  {

    v2 = sub_100173074;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100173074()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001730E4()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];

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

uint64_t sub_10017325C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[6] = a3;
  v4[7] = v3;
  v4[4] = a1;
  v4[5] = a2;
  v5 = type metadata accessor for DIPError.Code();
  v4[8] = v5;
  v4[9] = *(v5 - 8);
  v4[10] = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  v4[11] = v6;
  v4[12] = *(v6 - 8);
  v4[13] = swift_task_alloc();

  return _swift_task_switch(sub_10017337C, 0, 0);
}

uint64_t sub_10017337C(uint64_t a1)
{
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "CredentialStore retrievePIIHashData", v4, 2u);
  }

  v6 = v1[12];
  v5 = v1[13];
  v7 = v1[11];
  v8 = v1[6];

  (*(v6 + 8))(v5, v7);
  if (v8 == 1)
  {
    v15 = sub_100031EDC(v1[4], v1[5]);
    v17 = v16;

    v18 = v1[1];

    return v18(v15, v17);
  }

  else if (v8)
  {
    (*(v1[9] + 104))(v1[10], enum case for DIPError.Code.failedToRetrieveHashUnknownKeystoreType(_:), v1[8]);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v19 = v1[1];

    return v19();
  }

  else
  {
    v9 = v1[7];
    v10 = v1[4];
    v11 = v1[5];
    v12 = swift_allocObject();
    v1[14] = v12;
    v12[2] = v9;
    v12[3] = v10;
    v12[4] = v11;
    v13 = swift_allocObject();
    v1[15] = v13;
    *(v13 + 16) = sub_1001751DC;
    *(v13 + 24) = v12;

    v14 = swift_task_alloc();
    v1[16] = v14;
    *v14 = v1;
    v14[1] = sub_100173720;

    return AsyncCoreDataContainer.performRead<A>(_:)(v1 + 2, sub_100175234, v13, &type metadata for String);
  }
}

uint64_t sub_100173720()
{
  v2 = *v1;
  v2[17] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100173894, 0, 0);
  }

  else
  {

    v3 = v2[2];
    v4 = v2[3];

    v5 = v2[1];

    return v5(v3, v4);
  }
}

uint64_t sub_100173894()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];

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

uint64_t sub_100173A0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = type metadata accessor for DIPError.Code();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  v4[9] = v6;
  v4[10] = *(v6 - 8);
  v4[11] = swift_task_alloc();

  return _swift_task_switch(sub_100173B2C, 0, 0);
}

uint64_t sub_100173B2C(uint64_t a1)
{
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "CredentialStore deletePIIHashData", v4, 2u);
  }

  v6 = v1[10];
  v5 = v1[11];
  v7 = v1[9];
  v8 = v1[4];

  (*(v6 + 8))(v5, v7);
  if (v8 == 1)
  {
    sub_100031D00(v1[2], v1[3]);
  }

  else if (!v8)
  {
    v9 = v1[5];
    v10 = v1[2];
    v11 = v1[3];
    v12 = swift_allocObject();
    v1[12] = v12;
    v12[2] = v9;
    v12[3] = v10;
    v12[4] = v11;
    v13 = swift_allocObject();
    v1[13] = v13;
    *(v13 + 16) = sub_1001751A8;
    *(v13 + 24) = v12;

    v14 = swift_task_alloc();
    v1[14] = v14;
    *v14 = v1;
    v14[1] = sub_100173DB0;

    return AsyncCoreDataContainer.performWrite<A>(_:)(v14, sub_10001AAC8, v13, &type metadata for () + 8);
  }

  v15 = v1[1];

  return v15();
}

uint64_t sub_100173DB0()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_100173F44;
  }

  else
  {

    v2 = sub_100173ED4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100173ED4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100173F44()
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

uint64_t sub_1001740BC(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = v4;
  v37 = a2;
  v36 = a1;
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v34 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v33 - v12;
  defaultLogger()();

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();

  v16 = os_log_type_enabled(v14, v15);
  v35 = a3;
  if (v16)
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v33 = v4;
    v19 = v18;
    v38 = v18;
    *v17 = 136446210;
    *(v17 + 4) = sub_10010150C(a3, a4, &v38);
    _os_log_impl(&_mh_execute_header, v14, v15, "CredentialStore storePIITokenCredentialList called for credentialIdentifier %{public}s", v17, 0xCu);
    sub_100005090(v19);
    v5 = v33;
  }

  v20 = *(v9 + 8);
  v20(v13, v8);
  v21 = sub_100174404(v36, v37);
  v22 = v34;
  if (v5)
  {
    defaultLogger()();
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v23, v24, "No Credential list stored yet for this PII token", v25, 2u);
    }

    v20(v22, v8);
    v26 = _swiftEmptyArrayStorage;
  }

  else
  {
    v26 = v21;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v28 = v35;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v26 = sub_100100418(0, *(v26 + 2) + 1, 1, v26);
  }

  v30 = *(v26 + 2);
  v29 = *(v26 + 3);
  if (v30 >= v29 >> 1)
  {
    v26 = sub_100100418((v29 > 1), v30 + 1, 1, v26);
  }

  *(v26 + 2) = v30 + 1;
  v31 = &v26[16 * v30];
  *(v31 + 4) = v28;
  *(v31 + 5) = a4;
  sub_100174B44(v36, v37, v26);
}

char *sub_100174404(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v33 = a1;
  v5 = type metadata accessor for DIPError.Code();
  v29 = *(v5 - 8);
  v30 = v5;
  __chkstk_darwin(v5);
  v31 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for String.Encoding();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v32 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  defaultLogger()();
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v28 = a2;
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "CredentialStore retrieveTokenCredentialList", v16, 2u);
    v3 = v2;
    a2 = v28;
  }

  (*(v11 + 8))(v13, v10);
  result = sub_1000316B4(v33, a2);
  if (!v3)
  {
    v18 = v32;
    static String.Encoding.utf8.getter();
    v19 = String.data(using:allowLossyConversion:)();
    v21 = v20;

    (*(v8 + 8))(v18, v7);
    if (v21 >> 60 == 15)
    {
      (*(v29 + 104))(v31, enum case for DIPError.Code.failedToDecodeTokenCredentialListJsonData(_:), v30);
      sub_10002688C(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_100008E7C();
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      return swift_willThrow();
    }

    v22 = objc_opt_self();
    isa = Data._bridgeToObjectiveC()().super.isa;
    v35[0] = 0;
    v24 = [v22 JSONObjectWithData:isa options:0 error:v35];

    if (v24)
    {
      v25 = v35[0];
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      sub_100004E70(&qword_100201580, &qword_1001AB980);
      if (swift_dynamicCast())
      {
        sub_10001C120(v19, v21);
        return v34;
      }

      (*(v29 + 104))(v31, enum case for DIPError.Code.failedToDecodeTokenCredentialList(_:), v30);
      sub_10002688C(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_100008E7C();
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    }

    else
    {
      v26 = v35[0];
      _convertNSErrorToError(_:)();
    }

    swift_willThrow();
    return sub_10001C120(v19, v21);
  }

  return result;
}

uint64_t sub_1001749AC(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  defaultLogger()();
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v15 = v3;
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "CredentialStore deletePIITokenCredentialList", v12, 2u);
    v3 = v15;
  }

  (*(v7 + 8))(v9, v6);
  sub_100009278((*(v3 + 112) + 48), *(*(v3 + 112) + 72));
  return sub_100049CB0(a1, a2);
}

uint64_t sub_100174B44(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = v3;
  v33 = a1;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  defaultLogger()();

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v31 = v3;
    v13 = v12;
    v14 = swift_slowAlloc();
    v32 = a2;
    v15 = v14;
    v34 = v14;
    *v13 = 136446210;
    v16 = Array.description.getter();
    v30 = v6;
    v18 = sub_10010150C(v16, v17, &v34);

    *(v13 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v10, v11, "Storing updated credental list: %{public}s", v13, 0xCu);
    sub_100005090(v15);
    a2 = v32;

    v4 = v31;

    (*(v7 + 8))(v9, v30);
  }

  else
  {

    (*(v7 + 8))(v9, v6);
  }

  v19 = objc_opt_self();
  isa = Array._bridgeToObjectiveC()().super.isa;
  v34 = 0;
  v21 = [v19 dataWithJSONObject:isa options:0 error:&v34];

  v22 = v34;
  if (v21)
  {
    v23 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v24;

    v26 = v33;
    sub_10003142C(v33, a2, v23, v25);
    if (v4)
    {
      sub_100031204(v26, a2, v23, v25);
      sub_1000092BC(v23, v25);
    }

    else
    {
      return sub_1000092BC(v23, v25);
    }
  }

  else
  {
    v27 = v22;
    _convertNSErrorToError(_:)();

    return swift_willThrow();
  }
}

void sub_100174E7C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = sub_10016A520(a3, a4);
  if (!v4)
  {
    v6 = v5;
    Data.base16EncodedString()();
    v7 = String._bridgeToObjectiveC()();

    [v6 setPiiHash:v7];

    sub_100050240();
  }
}

void sub_100174F24(uint64_t a1@<X2>, void *a2@<X3>, uint64_t *a3@<X8>)
{
  v7 = type metadata accessor for DIPError.Code();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10016A520(a1, a2);
  if (!v3)
  {
    v12 = v11;
    v13 = [v11 piiHash];
    if (v13)
    {
      v14 = v13;
      v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v17 = v16;

      *a3 = v15;
      a3[1] = v17;
    }

    else
    {
      (*(v8 + 104))(v10, enum case for DIPError.Code.failedToFindPIIHash(_:), v7);
      sub_10002688C(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_100008E7C();
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
    }
  }
}

void sub_100175134(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = sub_10016A520(a3, a4);
  if (!v4)
  {
    v6 = v5;
    [v5 setPiiHash:0];
    sub_100050240();
  }
}

uint64_t sub_1001751FC()
{

  return _swift_deallocObject(v0, 32, 7);
}

void *sub_100175234@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = (*(v2 + 16))(v7, *a1);
  if (!v3)
  {
    v6 = v7[1];
    *a2 = v7[0];
    a2[1] = v6;
  }

  return result;
}

uint64_t sub_10017527C()
{

  sub_1000092BC(*(v0 + 40), *(v0 + 48));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1001752E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    return 0;
  }

  v6 = 0;
  for (i = (a1 + 40); ; i += 2)
  {
    v8 = *(i - 1) == a2 && *i == a3;
    if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    if (v3 == ++v6)
    {
      return 0;
    }
  }

  return v6;
}

uint64_t sub_100175394(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v7 = type metadata accessor for DIPError.Code();
  v6[8] = v7;
  v6[9] = *(v7 - 8);
  v6[10] = swift_task_alloc();
  v8 = type metadata accessor for Logger();
  v6[11] = v8;
  v6[12] = *(v8 - 8);
  v6[13] = swift_task_alloc();

  return _swift_task_switch(sub_1001754B8, 0, 0);
}

uint64_t sub_1001754B8(uint64_t a1)
{
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "CredentialStore replacePayload", v4, 2u);
  }

  v6 = v1[12];
  v5 = v1[13];
  v7 = v1[11];
  v8 = v1[7];
  v18 = v1[6];
  v10 = v1[4];
  v9 = v1[5];
  v12 = v1[2];
  v11 = v1[3];

  (*(v6 + 8))(v5, v7);
  v13._object = 0x80000001001BCCE0;
  v13._countAndFlagsBits = 0xD000000000000014;
  debugLogFootprint(_:)(v13);
  v14 = swift_allocObject();
  v1[14] = v14;
  v14[2] = v8;
  v14[3] = v12;
  v14[4] = v11;
  v14[5] = v10;
  v14[6] = v9;
  v14[7] = v18;

  sub_100009708(v10, v9);
  v15 = swift_allocObject();
  v1[15] = v15;
  *(v15 + 16) = &unk_1001AED90;
  *(v15 + 24) = v14;

  v16 = swift_task_alloc();
  v1[16] = v16;
  *v16 = v1;
  v16[1] = sub_1001756DC;

  return AsyncCoreDataContainer.write<A>(_:)(v16, &unk_1001AB060, v15, &type metadata for () + 8);
}

uint64_t sub_1001756DC()
{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = sub_100175890;
  }

  else
  {

    v2 = sub_100175800;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100175800()
{
  v1._object = 0x80000001001BCD60;
  v1._countAndFlagsBits = 0xD000000000000012;
  debugLogFootprint(_:)(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100175890()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];

  (*(v2 + 104))(v1, enum case for DIPError.Code.internalError(_:), v3);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_10018FF54(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v4._object = 0x80000001001BCD60;
  v4._countAndFlagsBits = 0xD000000000000012;
  debugLogFootprint(_:)(v4);

  v5 = v0[1];

  return v5();
}

uint64_t sub_100175A5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[7] = a7;
  v8[8] = a8;
  v8[5] = a5;
  v8[6] = a6;
  v8[3] = a3;
  v8[4] = a4;
  v8[2] = a2;
  v9 = *(sub_100004E70(&qword_100202490, &unk_1001ACF80) - 8);
  v8[9] = v9;
  v8[10] = *(v9 + 64);
  v8[11] = swift_task_alloc();
  v8[12] = swift_task_alloc();
  sub_100004E70(&qword_100202498, &unk_1001AD910);
  v8[13] = swift_task_alloc();
  v10 = type metadata accessor for PayloadMetadata(0);
  v8[14] = v10;
  v11 = *(v10 - 8);
  v8[15] = v11;
  v8[16] = *(v11 + 64);
  v8[17] = swift_task_alloc();
  v8[18] = swift_task_alloc();
  v8[19] = swift_task_alloc();
  v8[20] = swift_task_alloc();
  v12 = type metadata accessor for Logger();
  v8[21] = v12;
  v8[22] = *(v12 - 8);
  v8[23] = swift_task_alloc();
  v8[24] = swift_task_alloc();
  v8[25] = swift_task_alloc();
  sub_100004E70(&qword_100203CF0, &qword_1001AED98);
  v8[26] = swift_task_alloc();
  v13 = type metadata accessor for ISO18013JumboPackage();
  v8[27] = v13;
  v8[28] = *(v13 - 8);
  v8[29] = swift_task_alloc();
  v14 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  v8[30] = v14;
  v8[31] = *(v14 - 8);
  v8[32] = swift_task_alloc();
  v8[33] = swift_task_alloc();
  v8[34] = swift_task_alloc();
  v8[35] = sub_100004E70(&qword_100203CF8, &qword_1001AEDA0);
  v8[36] = swift_task_alloc();
  v15 = _s8DBResultVMa(0);
  v8[37] = v15;
  v16 = *(v15 - 8);
  v8[38] = v16;
  v8[39] = *(v16 + 64);
  v8[40] = swift_task_alloc();
  v8[41] = swift_task_alloc();

  return _swift_task_switch(sub_100175E2C, 0, 0);
}

uint64_t sub_100175E2C()
{
  v1 = *(v0 + 248);
  v17 = *(v0 + 272);
  v3 = *(v0 + 56);
  v2 = *(v0 + 64);
  v5 = *(v0 + 40);
  v4 = *(v0 + 48);
  v7 = *(v0 + 24);
  v6 = *(v0 + 32);
  v8 = *(v0 + 16);
  v9 = swift_allocObject();
  *(v0 + 336) = v9;
  v9[2] = v7;
  v9[3] = v6;
  v9[4] = v5;
  v9[5] = v8;
  v9[6] = v4;
  v9[7] = v3;
  v9[8] = v2;

  sub_100009708(v4, v3);
  *(v0 + 344) = *(v8 + 16);
  v10 = swift_allocObject();
  *(v0 + 352) = v10;
  *(v10 + 16) = sub_10018E4CC;
  *(v10 + 24) = v9;
  *(v0 + 760) = enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:);
  v11 = *(v1 + 104);
  *(v0 + 360) = v11;
  *(v0 + 368) = (v1 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v11(v17);

  v12 = swift_task_alloc();
  *(v0 + 376) = v12;
  *v12 = v0;
  v12[1] = sub_100175FE0;
  v14 = *(v0 + 280);
  v13 = *(v0 + 288);
  v15 = *(v0 + 272);

  return NSManagedObjectContext.perform<A>(schedule:_:)(v13, v15, sub_1000BBAFC, v10, v14);
}

uint64_t sub_100175FE0()
{
  v2 = *v1;
  *(*v1 + 384) = v0;

  if (v0)
  {
    (*(v2[31] + 8))(v2[34], v2[30]);

    v3 = sub_1001767F4;
  }

  else
  {
    v4 = v2[34];
    v5 = v2[30];
    v6 = v2[31];

    v7 = *(v6 + 8);
    v2[49] = v7;
    v2[50] = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v7(v4, v5);
    v3 = sub_100176178;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100176178()
{
  v1 = *(v0 + 288);
  if ((*(*(v0 + 304) + 48))(v1, 1, *(v0 + 296)) == 1)
  {
    sub_10000A0D4(v1, &qword_100203CF8, &qword_1001AEDA0);

    v2 = *(v0 + 8);

    return v2();
  }

  v4 = *(v0 + 328);
  v5 = sub_10018EAB4(v1, v4, _s8DBResultVMa);
  v10 = *v4;
  *(v0 + 408) = *v4;
  if (*(v4 + 8))
  {
    *(v0 + 448) = xmmword_1001AE390;
    v11 = *(v0 + 56);
    v12 = v11 >> 62;
    if ((v11 >> 62) > 1)
    {
      if (v12 != 2)
      {
        v20 = *(v0 + 328);
        if ((*(v20 + 9) & 1) == 0)
        {
LABEL_25:
          defaultLogger()();
          v27 = Logger.logObject.getter();
          v28 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v27, v28))
          {
            v29 = swift_slowAlloc();
            *v29 = 0;
            _os_log_impl(&_mh_execute_header, v27, v28, "Inserting biometric encrypted payload (legacy flow)", v29, 2u);
          }

          v30 = *(v0 + 192);
          v31 = *(v0 + 168);
          v32 = *(v0 + 176);

          (*(v32 + 8))(v30, v31);
          (*(*(v0 + 120) + 56))(*(v0 + 96), 1, 1, *(v0 + 112));
          v55 = *(v0 + 448);
          v56 = *(v0 + 456);
          v60 = *(v0 + 360);
          v59 = *(v0 + 760);
          v33 = *(v0 + 320);
          v34 = *(v0 + 328);
          v51 = v33;
          v36 = *(v0 + 304);
          v35 = *(v0 + 312);
          v57 = *(v0 + 256);
          v58 = *(v0 + 240);
          v50 = *(v0 + 88);
          v37 = *(v0 + 72);
          v38 = *(v0 + 80);
          v54 = *(v0 + 64);
          v61 = *(v0 + 48);
          v62 = *(v0 + 56);
          v39 = *(v0 + 24);
          v52 = *(v0 + 32);
          v53 = *(v0 + 40);
          v40 = *(v0 + 16);
          sub_100046360(*(v0 + 96), v50, &qword_100202490, &unk_1001ACF80);
          sub_10018EB60(v34, v33, _s8DBResultVMa);
          v41 = (*(v37 + 80) + 48) & ~*(v37 + 80);
          v42 = (v38 + v41 + 7) & 0xFFFFFFFFFFFFFFF8;
          v43 = (v42 + 15) & 0xFFFFFFFFFFFFFFF8;
          v44 = (*(v36 + 80) + v43 + 16) & ~*(v36 + 80);
          v45 = (v35 + v44 + 7) & 0xFFFFFFFFFFFFFFF8;
          v46 = swift_allocObject();
          *(v0 + 728) = v46;
          v46[2] = v39;
          v46[3] = v40;
          v46[4] = v61;
          v46[5] = v62;
          sub_100046524(v50, v46 + v41, &qword_100202490, &unk_1001ACF80);
          *(v46 + v42) = 0;
          v47 = (v46 + v43);
          *v47 = v52;
          v47[1] = v53;
          sub_10018EAB4(v51, v46 + v44, _s8DBResultVMa);
          *(v46 + v45) = v54;
          v48 = (v46 + ((v45 + 15) & 0xFFFFFFFFFFFFFFF8));
          *v48 = v55;
          v48[1] = v56;

          sub_100009708(v61, v62);
          sub_100032EBC(v55, v56);
          v49 = swift_allocObject();
          *(v0 + 736) = v49;
          *(v49 + 16) = sub_10018E95C;
          *(v49 + 24) = v46;
          v60(v57, v59, v58);

          v5 = swift_task_alloc();
          *(v0 + 744) = v5;
          *v5 = v0;
          v5[1] = sub_100178B54;
          v6 = *(v0 + 256);
          v7 = sub_10001C0A8;
          v9 = &type metadata for () + 8;
          v8 = v49;

          return NSManagedObjectContext.perform<A>(schedule:_:)(v5, v6, v7, v8, v9);
        }

        v13 = 0;
        goto LABEL_22;
      }

      v15 = *(*(v0 + 48) + 16);
      v16 = *(*(v0 + 48) + 24);
      v17 = __OFSUB__(v16, v15);
      v13 = v16 - v15;
      if (!v17)
      {
LABEL_18:
        v20 = *(v0 + 328);
        if (*(v20 + 9) != 1)
        {
          goto LABEL_25;
        }

LABEL_22:
        *(v0 + 464) = v13;
        v21 = *(*(v0 + 296) + 24);
        *(v0 + 764) = v21;
        v22 = swift_task_alloc();
        *(v0 + 472) = v22;
        *v22 = v0;
        v22[1] = sub_100176EF8;
        v23 = *(v0 + 208);
        v24 = *(v0 + 56);
        v25 = *(v0 + 64);
        v26 = *(v0 + 48);

        return sub_10017A074(v23, v26, v24, v20 + v21, v25);
      }

      __break(1u);
    }

    else if (!v12)
    {
      v13 = BYTE6(v11);
      goto LABEL_18;
    }

    v18 = *(v0 + 48);
    v19 = *(v0 + 52);
    v17 = __OFSUB__(v19, v18);
    LODWORD(v13) = v19 - v18;
    if (v17)
    {
      __break(1u);
      return NSManagedObjectContext.perform<A>(schedule:_:)(v5, v6, v7, v8, v9);
    }

    v13 = v13;
    goto LABEL_18;
  }

  v14 = swift_task_alloc();
  *(v0 + 416) = v14;
  *v14 = v0;
  v14[1] = sub_100176948;

  return sub_100179D04(v10);
}

uint64_t sub_1001767F4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100176948(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 424) = v2;

  if (v2)
  {
    v7 = sub_100178FF8;
  }

  else
  {
    *(v6 + 432) = a2;
    *(v6 + 440) = a1;
    v7 = sub_100176A7C;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100176A7C(int8x16_t **a1, uint64_t a2, uint64_t (*a3)(), uint64_t a4, char *a5)
{
  v5[28] = vextq_s8(v5[27], v5[27], 8uLL);
  v6 = v5[3].u64[1];
  v7 = v6 >> 62;
  if ((v6 >> 62) <= 1)
  {
    if (!v7)
    {
      v8 = BYTE6(v6);
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (v7 == 2)
  {
    v9 = *(v5[3].i64[0] + 16);
    v10 = *(v5[3].i64[0] + 24);
    v11 = __OFSUB__(v10, v9);
    v8 = v10 - v9;
    if (!v11)
    {
      goto LABEL_10;
    }

    __break(1u);
LABEL_8:
    v12 = v5[3].i32[0];
    v13 = v5[3].i32[1];
    v11 = __OFSUB__(v13, v12);
    LODWORD(v8) = v13 - v12;
    if (v11)
    {
      __break(1u);
      return NSManagedObjectContext.perform<A>(schedule:_:)(a1, a2, a3, a4, a5);
    }

    v8 = v8;
LABEL_10:
    v14 = v5[20].i64[1];
    if (*(v14 + 9) != 1)
    {
      goto LABEL_17;
    }

    goto LABEL_14;
  }

  v14 = v5[20].i64[1];
  if ((*(v14 + 9) & 1) == 0)
  {
LABEL_17:
    defaultLogger()();
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "Inserting biometric encrypted payload (legacy flow)", v24, 2u);
    }

    v25 = v5[12].i64[0];
    v26 = v5[10].i64[1];
    v27 = v5[11].i64[0];

    (*(v27 + 8))(v25, v26);
    (*(v5[7].i64[1] + 56))(v5[6].i64[0], 1, 1, v5[7].i64[0]);
    v50 = v5[28].i64[0];
    v51 = v5[28].u64[1];
    v55 = v5[22].i64[1];
    v54 = v5[47].u32[2];
    v28 = v5[20].i64[0];
    v29 = v5[20].i64[1];
    v46 = v28;
    v31 = v5[19].i64[0];
    v30 = v5[19].i64[1];
    v52 = v5[16].i64[0];
    v53 = v5[15].i64[0];
    v45 = v5[5].i64[1];
    v32 = v5[4].i64[1];
    v33 = v5[5].i64[0];
    v49 = v5[4].i64[0];
    v56 = v5[3].i64[0];
    v57 = v5[3].u64[1];
    v34 = v5[1].i64[1];
    v47 = v5[2].i64[0];
    v48 = v5[2].i64[1];
    v35 = v5[1].i64[0];
    sub_100046360(v5[6].i64[0], v45, &qword_100202490, &unk_1001ACF80);
    sub_10018EB60(v29, v28, _s8DBResultVMa);
    v36 = (*(v32 + 80) + 48) & ~*(v32 + 80);
    v37 = (v33 + v36 + 7) & 0xFFFFFFFFFFFFFFF8;
    v38 = (v37 + 15) & 0xFFFFFFFFFFFFFFF8;
    v39 = (*(v31 + 80) + v38 + 16) & ~*(v31 + 80);
    v40 = (v30 + v39 + 7) & 0xFFFFFFFFFFFFFFF8;
    v41 = swift_allocObject();
    v5[45].i64[1] = v41;
    v41[2] = v34;
    v41[3] = v35;
    v41[4] = v56;
    v41[5] = v57;
    sub_100046524(v45, v41 + v36, &qword_100202490, &unk_1001ACF80);
    *(v41 + v37) = 0;
    v42 = (v41 + v38);
    *v42 = v47;
    v42[1] = v48;
    sub_10018EAB4(v46, v41 + v39, _s8DBResultVMa);
    *(v41 + v40) = v49;
    v43 = (v41 + ((v40 + 15) & 0xFFFFFFFFFFFFFFF8));
    *v43 = v50;
    v43[1] = v51;

    sub_100009708(v56, v57);
    sub_100032EBC(v50, v51);
    v44 = swift_allocObject();
    v5[46].i64[0] = v44;
    *(v44 + 16) = sub_10018E95C;
    *(v44 + 24) = v41;
    v55(v52, v54, v53);

    a1 = swift_task_alloc();
    v5[46].i64[1] = a1;
    *a1 = v5;
    a1[1] = sub_100178B54;
    a2 = v5[16].i64[0];
    a3 = sub_10001C0A8;
    a5 = &type metadata for () + 8;
    a4 = v44;

    return NSManagedObjectContext.perform<A>(schedule:_:)(a1, a2, a3, a4, a5);
  }

  v8 = 0;
LABEL_14:
  v5[29].i64[0] = v8;
  v15 = *(v5[18].i64[1] + 24);
  v5[47].i32[3] = v15;
  v16 = swift_task_alloc();
  v5[29].i64[1] = v16;
  *v16 = v5;
  v16[1] = sub_100176EF8;
  v17 = v5[13].i64[0];
  v18 = v5[3].i64[1];
  v19 = v5[4].i64[0];
  v20 = v5[3].i64[0];

  return sub_10017A074(v17, v20, v18, v14 + v15, v19);
}

uint64_t sub_100176EF8()
{
  *(*v1 + 480) = v0;

  if (v0)
  {
    v2 = sub_1001795BC;
  }

  else
  {
    v2 = sub_10017700C;
  }

  return _swift_task_switch(v2, 0, 0);
}

void *sub_10017700C()
{
  v1 = *(v0 + 216);
  v2 = *(v0 + 224);
  v3 = *(v0 + 208);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_10000A0D4(v3, &qword_100203CF0, &qword_1001AED98);
    defaultLogger()();
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "Inserting biometric encrypted payload (legacy flow)", v6, 2u);
    }

    v7 = *(v0 + 192);
    v8 = *(v0 + 168);
    v9 = *(v0 + 176);

    (*(v9 + 8))(v7, v8);
    v10 = *(v0 + 328);
    v11 = *(v0 + 24);
    v12 = *(*(v0 + 296) + 24);
    v13 = swift_task_alloc();
    *(v0 + 704) = v13;
    *v13 = v0;
    v13[1] = sub_10017872C;
    v14 = *(v0 + 136);
    v15 = *(v0 + 56);
    v16 = *(v0 + 64);
    v18 = *(v0 + 40);
    v17 = *(v0 + 48);
    v19 = *(v0 + 32);
    v20 = v11 + 72;
    v21 = v10 + v12;
    goto LABEL_5;
  }

  (*(v2 + 32))(*(v0 + 232), v3, v1);
  defaultLogger()();
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&_mh_execute_header, v23, v24, "Inserting standard payload", v25, 2u);
  }

  v26 = *(v0 + 200);
  v27 = *(v0 + 168);
  v28 = *(v0 + 176);

  (*(v28 + 8))(v26, v27);
  *(v0 + 488) = *(ISO18013JumboPackage.packages.getter() + 16);

  v29._countAndFlagsBits = 0xD000000000000021;
  v29._object = 0x80000001001BCD80;
  debugLogFootprint(_:)(v29);
  result = ISO18013JumboPackage.packages.getter();
  *(v0 + 496) = result;
  v30 = result[2];
  *(v0 + 504) = v30;
  if (v30)
  {
    v31 = *(v0 + 480);
    *(v0 + 512) = 0u;
    *(v0 + 528) = 0u;
    *(v0 + 544) = 0u;
    if (!result[2])
    {
      __break(1u);
      return result;
    }

    v32 = *(v0 + 64);
    v33 = result[4];
    *(v0 + 560) = v33;
    v34 = result[5];
    *(v0 + 568) = v34;
    sub_100009708(v33, v34);
    v35 = sub_1000F554C(v32);
    *(v0 + 576) = v35;
    if (!v31)
    {
      v52 = v35;
      v53 = *(v0 + 764);
      v54 = *(v0 + 328);
      v55 = *(v0 + 24);
      v56 = swift_task_alloc();
      *(v0 + 584) = v56;
      *v56 = v0;
      v56[1] = sub_1001776A0;
      v14 = *(v0 + 152);
      v19 = *(v0 + 32);
      v18 = *(v0 + 40);
      v20 = v55 + 72;
      v21 = v54 + v53;
      v17 = v33;
      v15 = v34;
      v16 = v52;
LABEL_5:

      return sub_10017B108(v14, v20, v17, v15, v16, v21, v19, v18);
    }

    v37 = *(v0 + 448);
    v36 = *(v0 + 456);
    v38 = *(v0 + 328);
    v39 = *(v0 + 224);
    v40 = *(v0 + 232);
    v41 = *(v0 + 216);

    sub_10018EB1C(0, 0, 0, 0, 0);
    sub_1000092BC(v33, v34);
    sub_10001C120(v37, v36);
    (*(v39 + 8))(v40, v41);
    sub_10018F128(v38, _s8DBResultVMa);

    v42 = *(v0 + 8);

    return v42();
  }

  else
  {
    *(v0 + 632) = 0;
    *(v0 + 600) = 0u;
    *(v0 + 616) = 0u;
    v43 = *(v0 + 764);
    v44 = *(v0 + 328);
    v45 = *(v0 + 104);

    v46._object = 0x80000001001BCDB0;
    v46._countAndFlagsBits = 0xD00000000000001FLL;
    debugLogFootprint(_:)(v46);
    sub_100046360(v44 + v43, v45, &qword_100202498, &unk_1001AD910);
    v47 = type metadata accessor for KeyLookupInfo(0);
    v48 = (*(*(v47 - 8) + 48))(v45, 1, v47);
    v49 = *(v0 + 104);
    if (v48 == 1)
    {
      sub_10000A0D4(*(v0 + 104), &qword_100202498, &unk_1001AD910);
      v50 = 0;
      v51 = 0;
    }

    else
    {
      v50 = *v49;
      v51 = v49[1];

      sub_10018F128(v49, type metadata accessor for KeyLookupInfo);
    }

    *(v0 + 680) = v51;
    v57 = swift_task_alloc();
    *(v0 + 688) = v57;
    *v57 = v0;
    v57[1] = sub_1001783E8;
    v59 = *(v0 + 32);
    v58 = *(v0 + 40);
    v60 = *(v0 + 16);

    return sub_100180C38(v59, v58, v60, v50, v51);
  }
}

uint64_t sub_1001776A0(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 592) = v1;

  if (v1)
  {
    v5 = v4[69];
    v6 = v4[68];
    v7 = v4[67];
    v8 = v4[66];
    v9 = v4[65];

    sub_10018EB1C(v5, v6, v7, v8, v9);
    v10 = sub_100179730;
  }

  else
  {
    v4[80] = a1;
    v10 = sub_100177800;
  }

  return _swift_task_switch(v10, 0, 0);
}

uint64_t sub_100177800()
{
  v31 = *(v0 + 640);
  v32 = *(v0 + 576);
  v39 = *(v0 + 560);
  v40 = *(v0 + 568);
  v33 = *(v0 + 448);
  v34 = *(v0 + 456);
  v38 = *(v0 + 360);
  v37 = *(v0 + 760);
  v1 = *(v0 + 320);
  v2 = *(v0 + 328);
  v25 = v1;
  v3 = *(v0 + 304);
  v24 = *(v0 + 312);
  v35 = *(v0 + 264);
  v36 = *(v0 + 240);
  v4 = *(v0 + 160);
  v5 = *(v0 + 144);
  v7 = *(v0 + 120);
  v6 = *(v0 + 128);
  v29 = *(v0 + 48);
  v30 = *(v0 + 56);
  v27 = *(v0 + 32);
  v28 = *(v0 + 40);
  v8 = *(v0 + 24);
  v26 = *(v0 + 16);
  v23 = v5;
  sub_10018EAB4(*(v0 + 152), v4, type metadata accessor for PayloadMetadata);
  sub_10018EB60(v4, v5, type metadata accessor for PayloadMetadata);
  sub_10018EB60(v2, v1, _s8DBResultVMa);
  v9 = (*(v7 + 80) + 48) & ~*(v7 + 80);
  v10 = (v6 + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 15) & 0xFFFFFFFFFFFFFFF8;
  v12 = (*(v3 + 80) + v11 + 16) & ~*(v3 + 80);
  v13 = (v24 + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = (v13 + 15) & 0xFFFFFFFFFFFFFFF8;
  v15 = swift_allocObject();
  *(v0 + 648) = v15;
  v15[2] = v8;
  v15[3] = v26;
  v15[4] = v39;
  v15[5] = v40;
  sub_10018EAB4(v23, v15 + v9, type metadata accessor for PayloadMetadata);
  *(v15 + v10) = v31;
  v16 = (v15 + v11);
  *v16 = v27;
  v16[1] = v28;
  sub_10018EAB4(v25, v15 + v12, _s8DBResultVMa);
  *(v15 + v13) = v32;
  v17 = (v15 + v14);
  *v17 = v29;
  v17[1] = v30;
  v18 = (v15 + ((v14 + 23) & 0xFFFFFFFFFFFFFFF8));
  *v18 = v33;
  v18[1] = v34;

  sub_100009708(v29, v30);
  sub_100009708(v39, v40);
  sub_100032EBC(v33, v34);
  v19 = swift_allocObject();
  *(v0 + 656) = v19;
  *(v19 + 16) = sub_10018EFC8;
  *(v19 + 24) = v15;
  v38(v35, v37, v36);

  v20 = swift_task_alloc();
  *(v0 + 664) = v20;
  *v20 = v0;
  v20[1] = sub_100177B04;
  v21 = *(v0 + 264);

  return NSManagedObjectContext.perform<A>(schedule:_:)(v20, v21, sub_10019054C, v19, &type metadata for () + 8);
}

uint64_t sub_100177B04()
{
  v2 = *v1;
  *(*v1 + 672) = v0;

  if (v0)
  {
    v3 = *(v2 + 552);
    v4 = *(v2 + 544);
    v5 = *(v2 + 536);
    v6 = *(v2 + 528);
    v7 = *(v2 + 520);
    (*(v2 + 392))(*(v2 + 264), *(v2 + 240));

    sub_10018EB1C(v3, v4, v5, v6, v7);
    v8 = sub_100178210;
  }

  else
  {
    v9 = *(v2 + 392);
    v10 = *(v2 + 264);
    v11 = *(v2 + 240);

    v9(v10, v11);
    v8 = sub_100177CC0;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_100177CC0()
{
  v1 = *(v0 + 568);
  if (*(v0 + 536))
  {
    sub_1000092BC(*(v0 + 560), v1);
    v2 = *(v0 + 552);
    v3 = *(v0 + 544);
    v4 = *(v0 + 536);
    v5 = *(v0 + 528);
    v6 = *(v0 + 520);
    v7 = *(v0 + 160);
    goto LABEL_14;
  }

  v8 = v1 >> 62;
  v9 = *(v0 + 560);
  if ((v1 >> 62) > 1)
  {
    if (v8 != 2)
    {
      sub_1000092BC(v9, v1);
      v2 = 0;
      goto LABEL_13;
    }

    v11 = *(v9 + 16);
    v12 = *(v9 + 24);
    v9 = sub_1000092BC(v9, v1);
    v13 = __OFSUB__(v12, v11);
    v2 = v12 - v11;
    if (!v13)
    {
      goto LABEL_13;
    }

    __break(1u);
LABEL_10:
    v14 = HIDWORD(v9);
    v15 = v9;
    result = sub_1000092BC(v9, v1);
    if (__OFSUB__(v14, v15))
    {
LABEL_30:
      __break(1u);
      return result;
    }

    v2 = v14 - v15;
    goto LABEL_13;
  }

  if (v8)
  {
    goto LABEL_10;
  }

  v10 = *(v0 + 568);
  sub_1000092BC(v9, v1);
  v2 = BYTE6(v10);
LABEL_13:
  v17 = *(v0 + 160);
  v3 = *v17;
  v4 = v17[1];
  v18 = (v17 + *(*(v0 + 112) + 44));
  v5 = *v18;
  v6 = v18[1];

  v7 = v17;
LABEL_14:
  v19 = *(v0 + 504);
  v20 = *(v0 + 512) + 1;
  result = sub_10018F128(v7, type metadata accessor for PayloadMetadata);
  if (v20 == v19)
  {
    *(v0 + 632) = v6;
    *(v0 + 624) = v5;
    *(v0 + 616) = v4;
    *(v0 + 608) = v3;
    *(v0 + 600) = v2;
    v21 = *(v0 + 764);
    v22 = *(v0 + 328);
    v23 = *(v0 + 104);

    v24._object = 0x80000001001BCDB0;
    v24._countAndFlagsBits = 0xD00000000000001FLL;
    debugLogFootprint(_:)(v24);
    sub_100046360(v22 + v21, v23, &qword_100202498, &unk_1001AD910);
    v25 = type metadata accessor for KeyLookupInfo(0);
    v26 = (*(*(v25 - 8) + 48))(v23, 1, v25);
    v27 = *(v0 + 104);
    if (v26 == 1)
    {
      sub_10000A0D4(*(v0 + 104), &qword_100202498, &unk_1001AD910);
      v28 = 0;
      v29 = 0;
    }

    else
    {
      v28 = *v27;
      v29 = v27[1];

      sub_10018F128(v27, type metadata accessor for KeyLookupInfo);
    }

    *(v0 + 680) = v29;
    v41 = swift_task_alloc();
    *(v0 + 688) = v41;
    *v41 = v0;
    v41[1] = sub_1001783E8;
    v43 = *(v0 + 32);
    v42 = *(v0 + 40);
    v44 = *(v0 + 16);

    return sub_100180C38(v43, v42, v44, v28, v29);
  }

  v30 = *(v0 + 672);
  v31 = *(v0 + 512) + 1;
  *(v0 + 552) = v2;
  *(v0 + 544) = v3;
  *(v0 + 536) = v4;
  *(v0 + 528) = v5;
  *(v0 + 520) = v6;
  *(v0 + 512) = v31;
  v32 = *(v0 + 496);
  if (v31 >= *(v32 + 16))
  {
    __break(1u);
    goto LABEL_30;
  }

  v33 = *(v0 + 64);
  v34 = v32 + 16 * v31;
  v35 = *(v34 + 32);
  *(v0 + 560) = v35;
  v36 = *(v34 + 40);
  *(v0 + 568) = v36;
  sub_100009708(v35, v36);
  v37 = sub_1000F554C(v33);
  *(v0 + 576) = v37;
  if (v30)
  {
    v38 = *(v0 + 448);
    v39 = *(v0 + 224);
    v55 = *(v0 + 232);
    v56 = *(v0 + 328);
    v53 = *(v0 + 456);
    v54 = *(v0 + 216);

    sub_10018EB1C(v2, v3, v4, v5, v6);
    sub_1000092BC(v35, v36);
    sub_10001C120(v38, v53);
    (*(v39 + 8))(v55, v54);
    sub_10018F128(v56, _s8DBResultVMa);

    v40 = *(v0 + 8);

    return v40();
  }

  else
  {
    v45 = v37;
    v46 = *(v0 + 764);
    v47 = *(v0 + 328);
    v48 = *(v0 + 24);
    v49 = swift_task_alloc();
    *(v0 + 584) = v49;
    *v49 = v0;
    v49[1] = sub_1001776A0;
    v50 = *(v0 + 152);
    v51 = *(v0 + 32);
    v52 = *(v0 + 40);

    return sub_10017B108(v50, v48 + 72, v35, v36, v45, v47 + v46, v51, v52);
  }
}

uint64_t sub_100178210()
{
  v1 = v0[71];
  v2 = v0[70];
  v4 = v0[56];
  v3 = v0[57];
  v5 = v0[41];
  v7 = v0[28];
  v6 = v0[29];
  v8 = v0[27];
  v9 = v0[20];

  sub_1000092BC(v2, v1);
  sub_10001C120(v4, v3);
  sub_10018F128(v9, type metadata accessor for PayloadMetadata);
  (*(v7 + 8))(v6, v8);
  sub_10018F128(v5, _s8DBResultVMa);

  v10 = v0[1];

  return v10();
}

uint64_t sub_1001783E8()
{
  v2 = *v1;
  (*v1)[87] = v0;

  if (v0)
  {
    sub_10018EB1C(v2[75], v2[76], v2[77], v2[78], v2[79]);

    v3 = sub_1001798D8;
  }

  else
  {

    v3 = sub_100178540;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100178540()
{
  if (v0[77])
  {
    type metadata accessor for IDCSAnalytics();
    static IDCSAnalytics.sendPayloadIngestionSizeEvent(docType:issuer:overallSizeBytes:numberOfPackages:packageSizeBytes:)();
  }

  v1 = v0[41];
  v3 = v0[28];
  v2 = v0[29];
  v4 = v0[27];
  sub_10001C120(v0[56], v0[57]);
  (*(v3 + 8))(v2, v4);
  sub_10018F128(v1, _s8DBResultVMa);

  v5 = v0[1];

  return v5();
}

uint64_t sub_10017872C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 712) = v1;

  if (v1)
  {
    v5 = sub_100179A6C;
  }

  else
  {
    *(v4 + 720) = a1;
    v5 = sub_100178854;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100178854()
{
  v31 = *(v0 + 720);
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);
  v3 = *(v0 + 96);
  sub_10018EAB4(*(v0 + 136), v3, type metadata accessor for PayloadMetadata);
  (*(v2 + 56))(v3, 0, 1, v1);
  v29 = *(v0 + 448);
  v30 = *(v0 + 456);
  v35 = *(v0 + 360);
  v34 = *(v0 + 760);
  v4 = *(v0 + 320);
  v5 = *(v0 + 328);
  v25 = v4;
  v7 = *(v0 + 304);
  v6 = *(v0 + 312);
  v32 = *(v0 + 256);
  v33 = *(v0 + 240);
  v24 = *(v0 + 88);
  v9 = *(v0 + 72);
  v8 = *(v0 + 80);
  v28 = *(v0 + 64);
  v36 = *(v0 + 48);
  v37 = *(v0 + 56);
  v10 = *(v0 + 24);
  v26 = *(v0 + 32);
  v27 = *(v0 + 40);
  v11 = *(v0 + 16);
  sub_100046360(*(v0 + 96), v24, &qword_100202490, &unk_1001ACF80);
  sub_10018EB60(v5, v4, _s8DBResultVMa);
  v12 = (*(v9 + 80) + 48) & ~*(v9 + 80);
  v13 = (v8 + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = (v13 + 15) & 0xFFFFFFFFFFFFFFF8;
  v15 = (*(v7 + 80) + v14 + 16) & ~*(v7 + 80);
  v16 = (v6 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  *(v0 + 728) = v17;
  v17[2] = v10;
  v17[3] = v11;
  v17[4] = v36;
  v17[5] = v37;
  sub_100046524(v24, v17 + v12, &qword_100202490, &unk_1001ACF80);
  *(v17 + v13) = v31;
  v18 = (v17 + v14);
  *v18 = v26;
  v18[1] = v27;
  sub_10018EAB4(v25, v17 + v15, _s8DBResultVMa);
  *(v17 + v16) = v28;
  v19 = (v17 + ((v16 + 15) & 0xFFFFFFFFFFFFFFF8));
  *v19 = v29;
  v19[1] = v30;

  sub_100009708(v36, v37);
  sub_100032EBC(v29, v30);
  v20 = swift_allocObject();
  *(v0 + 736) = v20;
  *(v20 + 16) = sub_10018E95C;
  *(v20 + 24) = v17;
  v35(v32, v34, v33);

  v21 = swift_task_alloc();
  *(v0 + 744) = v21;
  *v21 = v0;
  v21[1] = sub_100178B54;
  v22 = *(v0 + 256);

  return NSManagedObjectContext.perform<A>(schedule:_:)(v21, v22, sub_10001C0A8, v20, &type metadata for () + 8);
}

uint64_t sub_100178B54()
{
  v2 = *v1;
  *(*v1 + 752) = v0;

  if (v0)
  {
    (*(v2 + 392))(*(v2 + 256), *(v2 + 240));

    v3 = sub_100178E58;
  }

  else
  {
    v4 = *(v2 + 392);
    v5 = *(v2 + 256);
    v6 = *(v2 + 240);

    v4(v5, v6);
    v3 = sub_100178CD0;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100178CD0()
{
  v1 = v0[41];
  v2 = v0[12];
  sub_10001C120(v0[56], v0[57]);
  sub_10000A0D4(v2, &qword_100202490, &unk_1001ACF80);
  sub_10018F128(v1, _s8DBResultVMa);

  v3 = v0[1];

  return v3();
}

uint64_t sub_100178E58()
{
  v1 = v0[56];
  v2 = v0[57];
  v3 = v0[41];
  v4 = v0[12];

  sub_10001C120(v1, v2);
  sub_10000A0D4(v4, &qword_100202490, &unk_1001ACF80);
  sub_10018F128(v3, _s8DBResultVMa);

  v5 = v0[1];

  return v5();
}

uint64_t sub_100178FF8(uint64_t a1)
{
  v75 = v1;
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v1 + 176);
    v70 = *(v1 + 168);
    v72 = *(v1 + 184);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v74 = v6;
    *v5 = 136315138;
    v7 = DCCredentialPayloadProtectionPolicyToString();
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;

    v11 = sub_10010150C(v8, v10, &v74);

    *(v5 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v2, v3, "replacePayload unable to fetch acl for payload protection policy %s. This may not be required for dekar payloads.", v5, 0xCu);
    sub_100005090(v6);

    v12 = (*(v4 + 8))(v72, v70);
  }

  else
  {
    v18 = *(v1 + 176);
    v17 = *(v1 + 184);
    v19 = *(v1 + 168);

    v12 = (*(v18 + 8))(v17, v19);
  }

  *(v1 + 448) = xmmword_1001AE390;
  v20 = *(v1 + 56);
  v21 = v20 >> 62;
  if ((v20 >> 62) <= 1)
  {
    if (!v21)
    {
      v22 = BYTE6(v20);
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  if (v21 == 2)
  {
    v23 = *(*(v1 + 48) + 16);
    v24 = *(*(v1 + 48) + 24);
    v25 = __OFSUB__(v24, v23);
    v22 = v24 - v23;
    if (!v25)
    {
      goto LABEL_13;
    }

    __break(1u);
LABEL_11:
    v26 = *(v1 + 48);
    v27 = *(v1 + 52);
    v25 = __OFSUB__(v27, v26);
    LODWORD(v22) = v27 - v26;
    if (v25)
    {
      __break(1u);
      return NSManagedObjectContext.perform<A>(schedule:_:)(v12, v13, v14, v15, v16);
    }

    v22 = v22;
LABEL_13:
    v28 = *(v1 + 328);
    if (*(v28 + 9) != 1)
    {
      goto LABEL_20;
    }

    goto LABEL_17;
  }

  v28 = *(v1 + 328);
  if ((*(v28 + 9) & 1) == 0)
  {
LABEL_20:
    defaultLogger()();
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&_mh_execute_header, v36, v37, "Inserting biometric encrypted payload (legacy flow)", v38, 2u);
    }

    v39 = *(v1 + 192);
    v40 = *(v1 + 168);
    v41 = *(v1 + 176);

    (*(v41 + 8))(v39, v40);
    (*(*(v1 + 120) + 56))(*(v1 + 96), 1, 1, *(v1 + 112));
    v64 = *(v1 + 448);
    v65 = *(v1 + 456);
    v69 = *(v1 + 360);
    v68 = *(v1 + 760);
    v42 = *(v1 + 320);
    v43 = *(v1 + 328);
    v60 = v42;
    v45 = *(v1 + 304);
    v44 = *(v1 + 312);
    v66 = *(v1 + 256);
    v67 = *(v1 + 240);
    v59 = *(v1 + 88);
    v46 = *(v1 + 72);
    v47 = *(v1 + 80);
    v63 = *(v1 + 64);
    v71 = *(v1 + 48);
    v73 = *(v1 + 56);
    v48 = *(v1 + 24);
    v61 = *(v1 + 32);
    v62 = *(v1 + 40);
    v49 = *(v1 + 16);
    sub_100046360(*(v1 + 96), v59, &qword_100202490, &unk_1001ACF80);
    sub_10018EB60(v43, v42, _s8DBResultVMa);
    v50 = (*(v46 + 80) + 48) & ~*(v46 + 80);
    v51 = (v47 + v50 + 7) & 0xFFFFFFFFFFFFFFF8;
    v52 = (v51 + 15) & 0xFFFFFFFFFFFFFFF8;
    v53 = (*(v45 + 80) + v52 + 16) & ~*(v45 + 80);
    v54 = (v44 + v53 + 7) & 0xFFFFFFFFFFFFFFF8;
    v55 = swift_allocObject();
    *(v1 + 728) = v55;
    v55[2] = v48;
    v55[3] = v49;
    v55[4] = v71;
    v55[5] = v73;
    sub_100046524(v59, v55 + v50, &qword_100202490, &unk_1001ACF80);
    *(v55 + v51) = 0;
    v56 = (v55 + v52);
    *v56 = v61;
    v56[1] = v62;
    sub_10018EAB4(v60, v55 + v53, _s8DBResultVMa);
    *(v55 + v54) = v63;
    v57 = (v55 + ((v54 + 15) & 0xFFFFFFFFFFFFFFF8));
    *v57 = v64;
    v57[1] = v65;

    sub_100009708(v71, v73);
    sub_100032EBC(v64, v65);
    v58 = swift_allocObject();
    *(v1 + 736) = v58;
    *(v58 + 16) = sub_10018E95C;
    *(v58 + 24) = v55;
    v69(v66, v68, v67);

    v12 = swift_task_alloc();
    *(v1 + 744) = v12;
    *v12 = v1;
    v12[1] = sub_100178B54;
    v13 = *(v1 + 256);
    v14 = sub_10001C0A8;
    v16 = &type metadata for () + 8;
    v15 = v58;

    return NSManagedObjectContext.perform<A>(schedule:_:)(v12, v13, v14, v15, v16);
  }

  v22 = 0;
LABEL_17:
  *(v1 + 464) = v22;
  v29 = *(*(v1 + 296) + 24);
  *(v1 + 764) = v29;
  v30 = swift_task_alloc();
  *(v1 + 472) = v30;
  *v30 = v1;
  v30[1] = sub_100176EF8;
  v31 = *(v1 + 208);
  v32 = *(v1 + 56);
  v33 = *(v1 + 64);
  v34 = *(v1 + 48);

  return sub_10017A074(v31, v34, v32, v28 + v29, v33);
}

uint64_t sub_1001795BC()
{
  v1 = v0[41];
  sub_10001C120(v0[56], v0[57]);
  sub_10018F128(v1, _s8DBResultVMa);

  v2 = v0[1];

  return v2();
}

uint64_t sub_100179730()
{
  v1 = v0[56];
  v2 = v0[57];
  v3 = v0[41];
  v5 = v0[28];
  v4 = v0[29];
  v6 = v0[27];
  sub_1000092BC(v0[70], v0[71]);
  sub_10001C120(v1, v2);
  (*(v5 + 8))(v4, v6);
  sub_10018F128(v3, _s8DBResultVMa);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1001798D8()
{
  v1 = v0[41];
  v3 = v0[28];
  v2 = v0[29];
  v4 = v0[27];
  sub_10001C120(v0[56], v0[57]);
  (*(v3 + 8))(v2, v4);
  sub_10018F128(v1, _s8DBResultVMa);

  v5 = v0[1];

  return v5();
}

uint64_t sub_100179A6C()
{
  v1 = v0[41];
  sub_10001C120(v0[56], v0[57]);
  sub_10018F128(v1, _s8DBResultVMa);

  v2 = v0[1];

  return v2();
}

uint64_t sub_100179BE0()
{

  sub_1000092BC(*(v0 + 40), *(v0 + 48));

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100179C28(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v11 = v2[6];
  v10 = v2[7];
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1000104D4;

  return sub_100175A5C(a1, a2, v6, v7, v8, v9, v11, v10);
}

uint64_t sub_100179D04(uint64_t a1)
{
  *(v2 + 80) = a1;
  *(v2 + 88) = v1;
  return _swift_task_switch(sub_100179D24, 0, 0);
}

uint64_t sub_100179D24()
{
  if (v0[10] == 1)
  {
    v1 = *(v0[11] + 24);
    type metadata accessor for ACLFetcher();
    inited = swift_initStackObject();
    v0[12] = inited;
    *(inited + 16) = v1;
    type metadata accessor for AppleIDVManager();

    sub_1000215BC((inited + 24));
    v3 = swift_task_alloc();
    v0[13] = v3;
    *v3 = v0;
    v3[1] = sub_100179E4C;

    return sub_1000074F0();
  }

  else
  {
    v5 = v0[1];

    return v5(0, 0xF000000000000000);
  }
}

uint64_t sub_100179E4C(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 112) = v2;

  if (v2)
  {
    v7 = sub_100179FFC;
  }

  else
  {
    *(v6 + 120) = a2;
    *(v6 + 128) = a1;
    v7 = sub_100179F80;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100179F80()
{
  v1 = v0[12];
  swift_setDeallocating();

  sub_100005090((v1 + 24));
  v3 = v0[15];
  v2 = v0[16];
  v4 = v0[1];

  return v4(v2, v3);
}

uint64_t sub_100179FFC()
{
  v1 = *(v0 + 96);
  swift_setDeallocating();

  sub_100005090((v1 + 24));
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10017A074(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[16] = a5;
  v6[17] = v5;
  v6[14] = a3;
  v6[15] = a4;
  v6[12] = a1;
  v6[13] = a2;
  v7 = type metadata accessor for ISO18013JumboPackage();
  v6[18] = v7;
  v6[19] = *(v7 - 8);
  v6[20] = swift_task_alloc();
  v6[21] = swift_task_alloc();
  v6[22] = swift_task_alloc();
  sub_100004E70(&qword_100202498, &unk_1001AD910);
  v6[23] = swift_task_alloc();
  sub_100004E70(&qword_100200510, qword_1001AB070);
  v6[24] = swift_task_alloc();
  v8 = type metadata accessor for Logger();
  v6[25] = v8;
  v6[26] = *(v8 - 8);
  v6[27] = swift_task_alloc();
  v6[28] = swift_task_alloc();
  v6[29] = swift_task_alloc();
  v6[30] = swift_task_alloc();

  return _swift_task_switch(sub_10017A244, 0, 0);
}

uint64_t sub_10017A244(uint64_t a1)
{
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Fetching the ISO18013JumboPackage", v4, 2u);
  }

  v5 = v1[30];
  v6 = v1[25];
  v7 = v1[26];
  v8 = v1[23];
  v9 = v1[15];

  v10 = *(v7 + 8);
  v1[31] = v10;
  v10(v5, v6);
  sub_100046360(v9, v8, &qword_100202498, &unk_1001AD910);
  v11 = type metadata accessor for KeyLookupInfo(0);
  v12 = (*(*(v11 - 8) + 48))(v8, 1, v11);
  v13 = v1[23];
  v14 = v1[24];
  if (v12 == 1)
  {
    sub_10000A0D4(v1[23], &qword_100202498, &unk_1001AD910);
    v15 = type metadata accessor for CredentialKeyType();
    (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  }

  else
  {
    v16 = *(v11 + 24);
    v17 = type metadata accessor for CredentialKeyType();
    v18 = *(v17 - 8);
    (*(v18 + 16))(v14, v13 + v16, v17);
    sub_10018F128(v13, type metadata accessor for KeyLookupInfo);
    (*(v18 + 56))(v14, 0, 1, v17);
  }

  v19 = v1[24];
  v20 = v1[17];
  v21 = sub_1000F575C(v1[16], v19);
  v1[32] = v21;
  sub_10000A0D4(v19, &qword_100200510, qword_1001AB070);
  sub_10001A940(v20 + 72, (v1 + 7));
  sub_100009278(v1 + 7, v1[10]);
  if (v21 && (v22 = [v21 externalizedContext]) != 0)
  {
    v23 = v22;
    v24 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = v25;
  }

  else
  {
    v24 = 0;
    v26 = 0xF000000000000000;
  }

  v1[33] = v24;
  v1[34] = v26;
  v27 = swift_task_alloc();
  v1[35] = v27;
  *v27 = v1;
  v27[1] = sub_10017A5A0;
  v29 = v1[15];
  v28 = v1[16];
  v30 = v1[13];
  v31 = v1[14];

  return sub_1000F1194((v1 + 2), v30, v31, v28, v29, v24, v26);
}

uint64_t sub_10017A5A0()
{
  v2 = *v1;
  *(*v1 + 288) = v0;

  sub_10001C120(*(v2 + 264), *(v2 + 272));
  if (v0)
  {
    v3 = sub_10017A92C;
  }

  else
  {
    v3 = sub_10017A6E8;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10017A6E8()
{
  sub_100005090(v0 + 7);
  v1 = v0[5];
  v2 = v0[6];
  sub_100009278(v0 + 2, v1);
  v5 = (*(v2 + 48) + **(v2 + 48));
  v3 = swift_task_alloc();
  v0[37] = v3;
  *v3 = v0;
  v3[1] = sub_10017A814;

  return v5(v1, v2);
}

uint64_t sub_10017A814(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[38] = a1;
  v4[39] = a2;
  v4[40] = v2;

  if (v2)
  {
    v5 = sub_10017B024;
  }

  else
  {
    v5 = sub_10017AA10;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10017A92C()
{
  sub_100005090((v0 + 56));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10017AA10()
{
  v1 = [objc_opt_self() standardUserDefaults];
  v2._object = 0x80000001001BAB90;
  v2._countAndFlagsBits = 0xD000000000000025;
  v3 = NSUserDefaults.internalBool(forKey:)(v2);

  if (v3)
  {
    sub_10019F170(v0[38], v0[39]);
  }

  v4 = v0[40];
  type metadata accessor for CBORDecoder();
  swift_allocObject();
  CBORDecoder.init()();
  sub_10018FF54(&qword_100203D08, &type metadata accessor for ISO18013JumboPackage, &protocol conformance descriptor for ISO18013JumboPackage);
  dispatch thunk of CBORDecoder.decode<A>(_:from:)();
  if (v4)
  {

    defaultLogger()();
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "Replace payload called with a non ISO18013JumboPackage. Will attempt to transform the package into ISO18013JumboPackage", v7, 2u);
    }

    v8 = v0[38];
    v9 = v0[39];
    v10 = v0[31];
    v58 = v0[32];
    v11 = v0[27];
    v12 = v0[25];

    v10(v11, v12);
    sub_100004E70(&qword_100203508, &qword_1001ADD78);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1001AA160;
    *(v13 + 32) = v8;
    *(v13 + 40) = v9;
    sub_100009708(v8, v9);
    static ISO18013JumboPackage.supportedJumboPackageVersion.getter();
    ISO18013JumboPackage.init(version:packages:)();

    sub_1000092BC(v8, v9);

    goto LABEL_26;
  }

  v14 = *(ISO18013JumboPackage.packages.getter() + 16);

  if (v14)
  {
    v15 = v0 + 29;
    v17 = v0[21];
    v16 = v0[22];
    v19 = v0[19];
    v18 = v0[20];
    v20 = v0[18];
    defaultLogger()();
    v21 = *(v19 + 16);
    v21(v17, v16, v20);
    v21(v18, v16, v20);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = v0[21];
      v25 = v0[18];
      v26 = v0[19];
      v27 = swift_slowAlloc();
      *v27 = 134349312;
      v28 = *(ISO18013JumboPackage.packages.getter() + 16);

      v59 = *(v26 + 8);
      v59(v24, v25);
      *(v27 + 4) = v28;
      *(v27 + 12) = 2050;
      v29 = ISO18013JumboPackage.packages.getter();
      if (v29[2])
      {
        v30 = v29[4];
        v31 = v29[5];
        sub_100009708(v30, v31);

        v32 = v31 >> 62;
        if ((v31 >> 62) > 1)
        {
          if (v32 != 2)
          {
            v33 = 0;
            goto LABEL_24;
          }

          v44 = *(v30 + 16);
          v43 = *(v30 + 24);
          sub_1000092BC(v30, v31);
          v45 = __OFSUB__(v43, v44);
          v33 = v43 - v44;
          if (!v45)
          {
            goto LABEL_24;
          }

          __break(1u);
        }

        else if (!v32)
        {
          v33 = BYTE6(v31);
LABEL_24:
          v47 = v0[38];
          v46 = v0[39];
          v48 = v0[32];
          v59(v0[20], v0[18]);
          *(v27 + 14) = v33;
          _os_log_impl(&_mh_execute_header, v22, v23, "Jumbo package contains %{public}ld payloads of size %{public}ld bytes", v27, 0x16u);

          sub_1000092BC(v47, v46);
          v22 = v48;
          goto LABEL_25;
        }

        sub_1000092BC(v30, v31);
        if (!__OFSUB__(HIDWORD(v30), v30))
        {
          v33 = HIDWORD(v30) - v30;
          goto LABEL_24;
        }

        __break(1u);
      }

      __break(1u);
      return result;
    }

    v37 = v0[38];
    v36 = v0[39];
    v38 = v0[32];
    v40 = v0[21];
    v41 = v0[18];
    v42 = *(v0[19] + 8);
    v42(v0[20], v41);
    v42(v40, v41);
    goto LABEL_16;
  }

  v15 = v0 + 28;
  defaultLogger()();
  v22 = Logger.logObject.getter();
  v34 = static os_log_type_t.info.getter();
  v35 = os_log_type_enabled(v22, v34);
  v37 = v0[38];
  v36 = v0[39];
  v38 = v0[32];
  if (!v35)
  {
LABEL_16:

    sub_1000092BC(v37, v36);
    goto LABEL_25;
  }

  v39 = swift_slowAlloc();
  *v39 = 0;
  _os_log_impl(&_mh_execute_header, v22, v34, "Jumbo package contains no payloads", v39, 2u);

  sub_1000092BC(v37, v36);
  v22 = v38;
LABEL_25:
  v49 = *v15;
  v50 = v0[31];
  v51 = v0[25];
  v52 = v0[22];
  v53 = v0[18];
  v54 = v0[19];
  v55 = v0[12];

  v50(v49, v51);
  (*(v54 + 32))(v55, v52, v53);
LABEL_26:
  (*(v0[19] + 56))(v0[12], 0, 1, v0[18]);
  sub_100005090(v0 + 2);

  v56 = v0[1];

  return v56();
}

uint64_t sub_10017B024()
{
  sub_100005090((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10017B108(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[15] = v16;
  v9[16] = v8;
  v9[13] = a7;
  v9[14] = a8;
  v9[11] = a5;
  v9[12] = a6;
  v9[9] = a3;
  v9[10] = a4;
  v9[7] = a1;
  v9[8] = a2;
  v10 = type metadata accessor for DIPError();
  v9[17] = v10;
  v9[18] = *(v10 - 8);
  v9[19] = swift_task_alloc();
  v11 = type metadata accessor for DIPError.Code();
  v9[20] = v11;
  v9[21] = *(v11 - 8);
  v9[22] = swift_task_alloc();
  v12 = type metadata accessor for ISO18013MobileSecurityObject.IdentifierList();
  v9[23] = v12;
  v9[24] = *(v12 - 8);
  v9[25] = swift_task_alloc();
  v9[26] = swift_task_alloc();
  sub_100004E70(&qword_100203870, &qword_1001AE008);
  v9[27] = swift_task_alloc();
  v9[28] = swift_task_alloc();
  v9[29] = swift_task_alloc();
  sub_100004E70(&qword_1002004D0, &unk_1001AE1C0);
  v9[30] = swift_task_alloc();
  v9[31] = type metadata accessor for PayloadMetadata(0);
  v9[32] = swift_task_alloc();
  v9[33] = swift_task_alloc();
  v9[34] = swift_task_alloc();
  v9[35] = swift_task_alloc();
  v9[36] = swift_task_alloc();
  v9[37] = swift_task_alloc();
  v9[38] = swift_task_alloc();
  v9[39] = swift_task_alloc();
  v9[40] = swift_task_alloc();
  v9[41] = swift_task_alloc();
  v9[42] = swift_task_alloc();
  v9[43] = swift_task_alloc();
  sub_100004E70(&qword_100202498, &unk_1001AD910);
  v9[44] = swift_task_alloc();
  sub_100004E70(&qword_100200510, qword_1001AB070);
  v9[45] = swift_task_alloc();
  v13 = type metadata accessor for Logger();
  v9[46] = v13;
  v9[47] = *(v13 - 8);
  v9[48] = swift_task_alloc();
  v9[49] = swift_task_alloc();
  v9[50] = swift_task_alloc();
  v9[51] = swift_task_alloc();

  return _swift_task_switch(sub_10017B4D0, 0, 0);
}

uint64_t sub_10017B4D0(uint64_t a1)
{
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Validating credential payload", v4, 2u);
  }

  v5 = v1[51];
  v6 = v1[46];
  v7 = v1[47];
  v8 = v1[44];
  v9 = v1[12];

  v10 = *(v7 + 8);
  v1[52] = v10;
  v10(v5, v6);
  sub_100046360(v9, v8, &qword_100202498, &unk_1001AD910);
  v11 = type metadata accessor for KeyLookupInfo(0);
  v12 = (*(*(v11 - 8) + 48))(v8, 1, v11);
  v13 = v1[44];
  v14 = v1[45];
  if (v12 == 1)
  {
    sub_10000A0D4(v1[44], &qword_100202498, &unk_1001AD910);
    v15 = type metadata accessor for CredentialKeyType();
    (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  }

  else
  {
    v16 = *(v11 + 24);
    v17 = type metadata accessor for CredentialKeyType();
    v18 = *(v17 - 8);
    (*(v18 + 16))(v14, v13 + v16, v17);
    sub_10018F128(v13, type metadata accessor for KeyLookupInfo);
    (*(v18 + 56))(v14, 0, 1, v17);
  }

  v19 = v1[45];
  v20 = v1[8];
  v21 = sub_1000F575C(v1[11], v19);
  v1[53] = v21;
  sub_10000A0D4(v19, &qword_100200510, qword_1001AB070);
  sub_100009278(v20, v20[3]);
  if (v21 && (v22 = [v21 externalizedContext]) != 0)
  {
    v23 = v22;
    v24 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = v25;
  }

  else
  {
    v24 = 0;
    v26 = 0xF000000000000000;
  }

  v1[54] = v24;
  v1[55] = v26;
  v27 = swift_task_alloc();
  v1[56] = v27;
  *v27 = v1;
  v27[1] = sub_10017B824;
  v28 = v1[11];
  v29 = v1[12];
  v30 = v1[9];
  v31 = v1[10];

  return sub_1000F1194((v1 + 2), v30, v31, v28, v29, v24, v26);
}

uint64_t sub_10017B824()
{
  v2 = *v1;
  *(*v1 + 456) = v0;

  sub_10001C120(*(v2 + 432), *(v2 + 440));
  if (v0)
  {
    v3 = sub_10017BBB0;
  }

  else
  {
    v3 = sub_10017B96C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10017B96C()
{
  v1 = v0[5];
  v2 = v0[6];
  sub_100009278(v0 + 2, v1);
  v6 = (*(v2 + 8) + **(v2 + 8));
  v3 = swift_task_alloc();
  v0[58] = v3;
  *v3 = v0;
  v3[1] = sub_10017BA9C;
  v4 = v0[43];

  return v6(v4, 0, v1, v2);
}

uint64_t sub_10017BA9C()
{
  *(*v1 + 472) = v0;

  if (v0)
  {
    v2 = sub_10017DD88;
  }

  else
  {
    v2 = sub_10017BE6C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10017BBB0()
{
  (*(*(v0 + 168) + 104))(*(v0 + 176), enum case for DIPError.Code.internalError(_:), *(v0 + 160));
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  sub_10018FF54(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10017BE6C()
{
  v1 = v0[5];
  v2 = v0[6];
  sub_100009278(v0 + 2, v1);
  v5 = (*(v2 + 40) + **(v2 + 40));
  v3 = swift_task_alloc();
  v0[60] = v3;
  *v3 = v0;
  v3[1] = sub_10017BF90;

  return v5(v1, v2);
}

uint64_t sub_10017BF90(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 488) = a1;
  *(v3 + 496) = v1;

  if (v1)
  {
    v4 = sub_10017E04C;
  }

  else
  {
    v4 = sub_10017C0A4;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10017C0A4(uint64_t a1)
{
  v149 = v1;
  v2 = v1[61];
  v3 = v1[52];
  v4 = v1[50];
  v6 = v1[46];
  v5 = v1[47];
  v8 = v1[42];
  v7 = v1[43];
  v124 = v1[41];
  v125 = v1[40];
  v126 = v1[39];
  v127 = v1[38];
  v130 = v1[37];
  v132 = v1[36];
  loga = v1[35];
  v138 = v1[34];
  v140 = v1[33];
  v144 = v1[32];
  defaultLogger()();
  *(swift_task_alloc() + 16) = v2;
  Logger.sensitive(_:)();

  v1[63] = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v3(v4, v6);
  defaultLogger()();
  sub_10018EB60(v7, v8, type metadata accessor for PayloadMetadata);
  sub_10018EB60(v7, v124, type metadata accessor for PayloadMetadata);
  sub_10018EB60(v7, v125, type metadata accessor for PayloadMetadata);
  sub_10018EB60(v7, v126, type metadata accessor for PayloadMetadata);
  sub_10018EB60(v7, v127, type metadata accessor for PayloadMetadata);
  sub_10018EB60(v7, v130, type metadata accessor for PayloadMetadata);
  sub_10018EB60(v7, v132, type metadata accessor for PayloadMetadata);
  sub_10018EB60(v7, loga, type metadata accessor for PayloadMetadata);
  sub_10018EB60(v7, v138, type metadata accessor for PayloadMetadata);
  sub_10018EB60(v7, v140, type metadata accessor for PayloadMetadata);
  sub_10018EB60(v7, v144, type metadata accessor for PayloadMetadata);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v133 = v10;
    log = v9;
    v11 = v1[41];
    v12 = v1[42];
    v13 = v1[40];
    v128 = v1[39];
    v14 = v1[31];
    v141 = v1[30];
    v145 = v1[38];
    v15 = swift_slowAlloc();
    v148 = swift_slowAlloc();
    *v15 = 136448770;
    v16 = DCCredentialPayloadFormatToString();
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;

    sub_10018F128(v12, type metadata accessor for PayloadMetadata);
    v20 = sub_10010150C(v17, v19, &v148);

    *(v15 + 4) = v20;
    *(v15 + 12) = 2082;
    v21 = *v11;
    v22 = v11[1];

    sub_10018F128(v11, type metadata accessor for PayloadMetadata);
    v23 = sub_10010150C(v21, v22, &v148);

    *(v15 + 14) = v23;
    *(v15 + 22) = 2080;
    v24 = type metadata accessor for Date();
    sub_10018FF54(&qword_100200500, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    v25 = dispatch thunk of CustomStringConvertible.description.getter();
    v27 = v26;
    sub_10018F128(v13, type metadata accessor for PayloadMetadata);
    v28 = sub_10010150C(v25, v27, &v148);

    *(v15 + 24) = v28;
    *(v15 + 32) = 2080;
    v29 = dispatch thunk of CustomStringConvertible.description.getter();
    v31 = v30;
    sub_10018F128(v128, type metadata accessor for PayloadMetadata);
    v32 = sub_10010150C(v29, v31, &v148);

    *(v15 + 34) = v32;
    *(v15 + 42) = 2080;
    sub_100046360(v145 + *(v14 + 40), v141, &qword_1002004D0, &unk_1001AE1C0);
    v33 = *(v24 - 8);
    v34 = (*(v33 + 48))(v141, 1, v24);
    v35 = v1[30];
    if (v34 == 1)
    {
      sub_10000A0D4(v1[30], &qword_1002004D0, &unk_1001AE1C0);
      v36 = 0xE500000000000000;
      v37 = 0x3E6C696E3CLL;
    }

    else
    {
      v37 = Date.description.getter();
      v36 = v45;
      (*(v33 + 8))(v35, v24);
    }

    v46 = v1[37];
    v47 = v1[31];
    sub_10018F128(v1[38], type metadata accessor for PayloadMetadata);
    v48 = sub_10010150C(v37, v36, &v148);

    *(v15 + 44) = v48;
    *(v15 + 52) = 2080;
    v49 = (v46 + *(v47 + 52));
    if (v49[1])
    {
      v50 = *v49;
      v51 = v49[1];
    }

    else
    {
      v51 = 0xE500000000000000;
      v50 = 0x3E6C696E3CLL;
    }

    v53 = v1[36];
    v52 = v1[37];
    v54 = v1[31];

    sub_10018F128(v52, type metadata accessor for PayloadMetadata);
    v55 = sub_10010150C(v50, v51, &v148);

    *(v15 + 54) = v55;
    *(v15 + 62) = 2080;
    v56 = (v53 + *(v54 + 56));
    if (v56[1])
    {
      v57 = *v56;
      v58 = v56[1];
    }

    else
    {
      v58 = 0xE500000000000000;
      v57 = 0x3E6C696E3CLL;
    }

    v60 = v1[35];
    v59 = v1[36];
    v61 = v1[31];

    sub_10018F128(v59, type metadata accessor for PayloadMetadata);
    v62 = sub_10010150C(v57, v58, &v148);

    *(v15 + 64) = v62;
    *(v15 + 72) = 2080;
    v63 = (v60 + *(v61 + 60));
    if (v63[1])
    {
      v64 = *v63;
      v65 = v63[1];
    }

    else
    {
      v65 = 0xE500000000000000;
      v64 = 0x3E6C696E3CLL;
    }

    v67 = v1[34];
    v66 = v1[35];
    v68 = v1[31];
    v69 = v1[29];
    v70 = v1[23];
    v71 = v1[24];

    sub_10018F128(v66, type metadata accessor for PayloadMetadata);
    v72 = sub_10010150C(v64, v65, &v148);

    *(v15 + 74) = v72;
    *(v15 + 82) = 2080;
    v147 = v68;
    sub_100046360(v67 + *(v68 + 64), v69, &qword_100203870, &qword_1001AE008);
    v143 = *(v71 + 48);
    if (v143(v69, 1, v70) == 1)
    {
      object = 0xE500000000000000;
      countAndFlagsBits = 0x3E6C696E3CLL;
    }

    else
    {
      v75 = v1[26];
      v76 = v1[23];
      v77 = v1[24];
      (*(v77 + 32))(v75, v1[29], v76);
      v78 = ISO18013MobileSecurityObject.IdentifierList.id.getter();
      v80 = v79;
      v81 = Data.base16EncodedString()();
      countAndFlagsBits = v81._countAndFlagsBits;
      object = v81._object;
      sub_1000092BC(v78, v80);
      (*(v77 + 8))(v75, v76);
    }

    v82 = v1[33];
    v83 = v1[28];
    v84 = v1[23];
    sub_10018F128(v1[34], type metadata accessor for PayloadMetadata);
    v85 = sub_10010150C(countAndFlagsBits, object, &v148);

    *(v15 + 84) = v85;
    *(v15 + 92) = 2080;
    sub_100046360(v82 + *(v147 + 64), v83, &qword_100203870, &qword_1001AE008);
    if (v143(v83, 1, v84) == 1)
    {
      v86 = 0xE500000000000000;
      v87 = 0x3E6C696E3CLL;
    }

    else
    {
      (*(v1[24] + 32))(v1[25], v1[28], v1[23]);
      v88 = ISO18013MobileSecurityObject.IdentifierList.certificate.getter();
      if (v89 >> 60 == 15)
      {
        v86 = 0xE500000000000000;
        v87 = 0x3E6C696E3CLL;
      }

      else
      {
        v90 = v88;
        v91 = v89;
        v92 = Data.base64EncodedString(options:)(0);
        v87 = v92._countAndFlagsBits;
        v86 = v92._object;
        sub_10001C120(v90, v91);
      }

      (*(v1[24] + 8))(v1[25], v1[23]);
    }

    v93 = v1[32];
    v94 = v1[27];
    v95 = v1[23];
    sub_10018F128(v1[33], type metadata accessor for PayloadMetadata);
    v96 = sub_10010150C(v87, v86, &v148);

    *(v15 + 94) = v96;
    *(v15 + 102) = 2080;
    sub_100046360(v93 + *(v147 + 64), v94, &qword_100203870, &qword_1001AE008);
    if (v143(v94, 1, v95) == 1)
    {
      v97 = 0xE500000000000000;
      v98 = 0x3E6C696E3CLL;
    }

    else
    {
      v99 = v1[26];
      v100 = v1[23];
      v101 = v1[24];
      (*(v101 + 32))(v99, v1[27], v100);
      v98 = ISO18013MobileSecurityObject.IdentifierList.uri.getter();
      v97 = v102;
      (*(v101 + 8))(v99, v100);
    }

    v103 = v1[52];
    v104 = v1[49];
    v105 = v1[46];
    sub_10018F128(v1[32], type metadata accessor for PayloadMetadata);
    v106 = sub_10010150C(v98, v97, &v148);

    *(v15 + 104) = v106;
    _os_log_impl(&_mh_execute_header, log, v133, "Saving validated payload with format %{public}s,\n    doc type %{public}s,\n    valid from %s,\n    valid until %s,X\n    valid signedAt %s,\n    region %s,\n    issuing jurisdiction %s,\n    issuing authority %s,\n    credentialRevocationInfo:\n        identifier: %s\n        certificate: %s\n        uri: %s", v15, 0x70u);
    swift_arrayDestroy();

    v103(v104, v105);
  }

  else
  {
    v142 = v1[49];
    v146 = v1[52];
    logb = v1[42];
    v139 = v1[46];
    v131 = v1[40];
    v134 = v1[41];
    v129 = v1[39];
    v39 = v1[37];
    v38 = v1[38];
    v40 = v1[35];
    v41 = v1[36];
    v43 = v1[33];
    v42 = v1[34];
    v44 = v1[32];

    sub_10018F128(v44, type metadata accessor for PayloadMetadata);
    sub_10018F128(v43, type metadata accessor for PayloadMetadata);
    sub_10018F128(v42, type metadata accessor for PayloadMetadata);
    sub_10018F128(v40, type metadata accessor for PayloadMetadata);
    sub_10018F128(v41, type metadata accessor for PayloadMetadata);
    sub_10018F128(v39, type metadata accessor for PayloadMetadata);
    sub_10018F128(v38, type metadata accessor for PayloadMetadata);
    sub_10018F128(v129, type metadata accessor for PayloadMetadata);
    sub_10018F128(v131, type metadata accessor for PayloadMetadata);
    sub_10018F128(v134, type metadata accessor for PayloadMetadata);
    sub_10018F128(logb, type metadata accessor for PayloadMetadata);
    v146(v142, v139);
  }

  v107 = v1[61];
  v108 = v1[52];
  v109 = v1[50];
  v110 = v1[46];
  v111 = v1[43];
  v112 = v1[31];
  defaultLogger()();
  *(swift_task_alloc() + 16) = v111;
  Logger.sensitive(_:)();

  v108(v109, v110);
  v113 = sub_10000ED58();
  sub_10000DBD0(v111, v107, v113, v114);

  v116 = *v111;
  v115 = v111[1];
  v117 = (v111 + *(v112 + 60));
  if (v117[1])
  {
    v118 = *v117;
    v119 = v117[1];
  }

  else
  {
    v118 = 0;
    v119 = 0xE000000000000000;
  }

  v1[64] = v119;

  v120 = swift_task_alloc();
  v1[65] = v120;
  *v120 = v1;
  v120[1] = sub_10017CCBC;
  v121 = v1[13];
  v122 = v1[14];

  return sub_100183EF4(v116, v115, v118, v119, v121, v122);
}

uint64_t sub_10017CCBC(char a1)
{
  *(*v1 + 568) = a1;

  return _swift_task_switch(sub_10017CDDC, 0, 0);
}

uint64_t sub_10017CDDC(uint64_t a1)
{
  if (*(v1 + 568) == 1)
  {
    defaultLogger()();
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "Performing device cross check", v4, 2u);
    }

    v5 = *(v1 + 488);
    v6 = *(v1 + 416);
    v7 = *(v1 + 384);
    v8 = *(v1 + 368);

    v6(v7, v8);
    v9 = *(v1 + 40);
    v10 = *(v1 + 48);
    sub_100009278((v1 + 16), v9);
    v11 = *(v10 + 16);

    v18 = (v11 + *v11);
    v12 = swift_task_alloc();
    *(v1 + 528) = v12;
    *v12 = v1;
    v12[1] = sub_10017D17C;

    return v18(v5, v9, v10);
  }

  else
  {
    v14 = *(v1 + 344);
    v15 = *(v1 + 56);

    sub_10018EAB4(v14, v15, type metadata accessor for PayloadMetadata);
    sub_100005090((v1 + 16));

    v16 = *(v1 + 8);
    v17 = *(v1 + 488);

    return v16(v17);
  }
}

uint64_t sub_10017D17C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 536) = a1;
  *(v3 + 544) = v1;

  if (v1)
  {
    v4 = sub_10017E330;
  }

  else
  {

    v4 = sub_10017D29C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10017D29C()
{
  v1 = *(v0 + 544);
  v2 = sub_10016A520(*(v0 + 104), *(v0 + 112));
  if (v1)
  {
    (*(*(v0 + 168) + 104))(*(v0 + 176), enum case for DIPError.Code.failedToPerformDeviceCrossCheckFailedToGetElements(_:), *(v0 + 160));
    sub_10002688C(_swiftEmptyArrayStorage);
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    v3 = [objc_opt_self() standardUserDefaults];
    v4._countAndFlagsBits = static SharedInternalDefaultsKeys.makeDeviceCrossCheckErrorsTerminal.getter();
    v5 = NSUserDefaults.internalBool(forKey:)(v4);

    v33 = *(v0 + 544);
    v6 = *(v0 + 424);
    if (v5)
    {
      v8 = *(v0 + 144);
      v7 = *(v0 + 152);
      v9 = *(v0 + 136);

      sub_10018FF54(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      swift_allocError();
      (*(v8 + 16))(v10, v7, v9);
      swift_willThrow();

      (*(v8 + 8))(v7, v9);
      if (!v33)
      {
      }

      sub_10018F128(*(v0 + 344), type metadata accessor for PayloadMetadata);
      sub_100005090((v0 + 16));
      (*(*(v0 + 168) + 104))(*(v0 + 176), enum case for DIPError.Code.internalError(_:), *(v0 + 160));
      swift_errorRetain();
      sub_10002688C(_swiftEmptyArrayStorage);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();

      v11 = *(v0 + 8);

      return v11();
    }

    else
    {
      v17 = *(v0 + 416);
      v18 = *(v0 + 400);
      v19 = *(v0 + 368);
      v32 = *(v0 + 344);
      v20 = *(v0 + 144);
      v21 = *(v0 + 152);
      v22 = *(v0 + 136);
      v31 = *(v0 + 56);
      sub_10018FF54(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      swift_allocError();
      (*(v20 + 16))(v23, v21, v22);
      defaultLogger()();
      DIPRecordError(_:message:log:)();

      v17(v18, v19);
      (*(v20 + 8))(v21, v22);

      sub_10018EB60(v32, v31, type metadata accessor for PayloadMetadata);
      if (!v33)
      {
      }

      sub_10018F128(*(v0 + 344), type metadata accessor for PayloadMetadata);
      sub_100005090((v0 + 16));

      v24 = *(v0 + 8);
      v25 = *(v0 + 488);

      return v24(v25);
    }
  }

  else
  {
    v13 = v2;
    v14 = [v2 options];
    if (v14)
    {
      v15 = v14;
      v16 = [v14 isPIIHashMismatchTerminal];
    }

    else
    {
      v16 = 0;
    }

    v26 = swift_task_alloc();
    *(v0 + 552) = v26;
    *v26 = v0;
    v26[1] = sub_10017DA60;
    v27 = *(v0 + 536);
    v28 = *(v0 + 120);
    v29 = *(v0 + 104);
    v30 = *(v0 + 112);

    return sub_1001843E4(v27, v29, v30, v16, v28);
  }
}

uint64_t sub_10017DA60()
{
  *(*v1 + 560) = v0;

  if (v0)
  {

    v2 = sub_10017EA14;
  }

  else
  {
    v2 = sub_10017DBA4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10017DBA4()
{
  v1 = *(v0 + 344);
  v2 = *(v0 + 56);

  sub_10018EAB4(v1, v2, type metadata accessor for PayloadMetadata);
  sub_100005090((v0 + 16));

  v3 = *(v0 + 8);
  v4 = *(v0 + 488);

  return v3(v4);
}

uint64_t sub_10017DD88()
{
  sub_100005090((v0 + 16));
  (*(*(v0 + 168) + 104))(*(v0 + 176), enum case for DIPError.Code.internalError(_:), *(v0 + 160));
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  sub_10018FF54(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10017E04C()
{
  v1 = *(v0 + 344);

  sub_10018F128(v1, type metadata accessor for PayloadMetadata);
  sub_100005090((v0 + 16));
  (*(*(v0 + 168) + 104))(*(v0 + 176), enum case for DIPError.Code.internalError(_:), *(v0 + 160));
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  sub_10018FF54(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10017E330()
{

  (*(v0[21] + 104))(v0[22], enum case for DIPError.Code.failedToPerformDeviceCrossCheckFailedToGetElements(_:), v0[20]);
  sub_10002688C(_swiftEmptyArrayStorage);
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  v1 = [objc_opt_self() standardUserDefaults];
  v2._countAndFlagsBits = static SharedInternalDefaultsKeys.makeDeviceCrossCheckErrorsTerminal.getter();
  v3 = NSUserDefaults.internalBool(forKey:)(v2);

  v23 = v0[68];
  if (v3)
  {
    v4 = v0[53];
    v5 = v0[18];
    v6 = v0[19];
    v7 = v0[17];

    sub_10018FF54(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    (*(v5 + 16))(v8, v6, v7);
    swift_willThrow();

    (*(v5 + 8))(v6, v7);
    if (!v23)
    {
    }

    sub_10018F128(v0[43], type metadata accessor for PayloadMetadata);
    sub_100005090(v0 + 2);
    (*(v0[21] + 104))(v0[22], enum case for DIPError.Code.internalError(_:), v0[20]);
    swift_errorRetain();
    sub_10002688C(_swiftEmptyArrayStorage);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v9 = v0[1];

    return v9();
  }

  else
  {
    v12 = v0[52];
    v11 = v0[53];
    v13 = v0[50];
    v14 = v0[46];
    v15 = v0[18];
    v16 = v0[19];
    v17 = v0[17];
    v21 = v0[7];
    v22 = v0[43];
    sub_10018FF54(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    (*(v15 + 16))(v18, v16, v17);
    defaultLogger()();
    DIPRecordError(_:message:log:)();

    v12(v13, v14);
    (*(v15 + 8))(v16, v17);

    sub_10018EB60(v22, v21, type metadata accessor for PayloadMetadata);
    if (!v23)
    {
    }

    sub_10018F128(v0[43], type metadata accessor for PayloadMetadata);
    sub_100005090(v0 + 2);

    v19 = v0[1];
    v20 = v0[61];

    return v19(v20);
  }
}

uint64_t sub_10017EA14()
{
  v1 = *(v0 + 344);

  sub_10018F128(v1, type metadata accessor for PayloadMetadata);
  sub_100005090((v0 + 16));
  (*(*(v0 + 168) + 104))(*(v0 + 176), enum case for DIPError.Code.internalError(_:), *(v0 + 160));
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  sub_10018FF54(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v2 = *(v0 + 8);

  return v2();
}

void sub_10017ECF8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9, __int128 a10, __int128 a11, unint64_t a12)
{
  v29 = a7;
  v30 = a8;
  v26 = a1;
  v27 = a6;
  v25 = a4;
  v23 = a11;
  v24 = a10;
  v15 = sub_100004E70(&qword_100202490, &unk_1001ACF80);
  __chkstk_darwin(v15 - 8);
  v17 = &v23 - v16;
  v18 = type metadata accessor for PayloadMetadata(0);
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = (&v23 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = objc_autoreleasePoolPush();
  sub_10018EB60(a5, v17, type metadata accessor for PayloadMetadata);
  (*(v19 + 56))(v17, 0, 1, v18);
  v22 = v31;
  sub_10017EF1C(a2, a3, v25, v17, v27, v29, v30, *(a9 + 9), v21, v24, *(&v24 + 1), v23, *(&v23 + 1), a12);
  sub_10000A0D4(v17, &qword_100202490, &unk_1001ACF80);
  if (!v22)
  {
    sub_10018F128(v21, type metadata accessor for PayloadMetadata);
    sub_100050240();
  }

  objc_autoreleasePoolPop(v28);
}

void sub_10017EF1C(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X6>, int a8@<W7>, uint64_t *a9@<X8>, uint64_t a10, uint64_t a11, unint64_t a12, uint64_t a13, unint64_t a14)
{
  v233 = a8;
  v241 = a7;
  v242 = a6;
  v215 = a5;
  v232 = a4;
  v235 = a2;
  v236 = a3;
  v234 = a9;
  v226 = type metadata accessor for SHA256();
  v211 = *(v226 - 8);
  __chkstk_darwin(v226);
  v210 = &v197 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v214 = type metadata accessor for SHA256Digest();
  v213 = *(v214 - 8);
  __chkstk_darwin(v214);
  v212 = &v197 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v225 = type metadata accessor for ISO18013KnownDocTypes();
  v224 = *(v225 - 8);
  __chkstk_darwin(v225);
  v221 = &v197 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_100004E70(&qword_100203870, &qword_1001AE008);
  v19 = __chkstk_darwin(v18 - 8);
  v230 = &v197 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v209 = &v197 - v21;
  v217 = type metadata accessor for ISO18013MobileSecurityObject.IdentifierList();
  v216 = *(v217 - 8);
  __chkstk_darwin(v217);
  v207 = &v197 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_100004E70(&qword_1002004D0, &unk_1001AE1C0);
  v24 = __chkstk_darwin(v23 - 8);
  v229 = &v197 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v208 = &v197 - v26;
  v219 = type metadata accessor for DIPError.Code();
  v218 = *(v219 - 8);
  __chkstk_darwin(v219);
  v220 = &v197 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_100004E70(&qword_100202490, &unk_1001ACF80);
  v29 = __chkstk_darwin(v28 - 8);
  v222 = &v197 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v223 = &v197 - v31;
  v237 = type metadata accessor for PayloadMetadata(0);
  v231 = *(v237 - 1);
  __chkstk_darwin(v237);
  v227 = (&v197 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  v239 = type metadata accessor for Logger();
  v245 = *(v239 - 8);
  v33 = __chkstk_darwin(v239);
  v228 = &v197 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __chkstk_darwin(v33);
  v37 = &v197 - v36;
  v38 = __chkstk_darwin(v35);
  v40 = &v197 - v39;
  v41 = __chkstk_darwin(v38);
  v43 = &v197 - v42;
  v44 = __chkstk_darwin(v41);
  v46 = &v197 - v45;
  __chkstk_darwin(v44);
  v48 = &v197 - v47;
  v240 = type metadata accessor for Date();
  v238 = *(v240 - 8);
  v49 = __chkstk_darwin(v240);
  v51 = &v197 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = __chkstk_darwin(v49);
  v54 = &v197 - v53;
  __chkstk_darwin(v52);
  v56 = &v197 - v55;
  v57 = v242;
  v242 = a1;
  v58 = v244;
  v59 = sub_10016A520(v57, v241);
  if (v58)
  {
    return;
  }

  v203 = v48;
  v200 = v46;
  v201 = v43;
  v202 = v40;
  v204 = v37;
  v205 = v54;
  v206 = v51;
  v243 = v59;
  v241 = 0;
  type metadata accessor for StoredPayload();
  v60 = *(v242 + 16);
  v61 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext:v60];
  Date.init()();
  isa = Date._bridgeToObjectiveC()().super.isa;
  v64 = v238 + 8;
  v63 = *(v238 + 8);
  v65 = v240;
  v63(v56, v240);
  [v61 setCreatedAt:isa];

  Date.init()();
  v66 = Date._bridgeToObjectiveC()().super.isa;
  v199 = v64;
  v198 = v63;
  v63(v56, v65);
  [v61 setUpdatedAt:v66];

  v244 = v61;
  if (v233)
  {
    v67 = v203;
    defaultLogger()();
    v68 = Logger.logObject.getter();
    v69 = static os_log_type_t.debug.getter();
    v70 = os_log_type_enabled(v68, v69);
    v71 = v234;
    v73 = v231;
    v72 = v232;
    if (v70)
    {
      v74 = swift_slowAlloc();
      *v74 = 0;
      _os_log_impl(&_mh_execute_header, v68, v69, "insertPayload payload is accessible", v74, 2u);
      v67 = v203;
      v61 = v244;
    }

    (*(v245 + 8))(v67, v239);
    v75 = v223;
    sub_100046360(v72, v223, &qword_100202490, &unk_1001ACF80);
    v76 = (*(v73 + 48))(v75, 1, v237);
    v77 = v240;
    v78 = v243;
    v79 = v227;
    if (v76 == 1)
    {
      sub_10000A0D4(v75, &qword_100202490, &unk_1001ACF80);
LABEL_35:
      (*(v218 + 104))(v220, enum case for DIPError.Code.internalError(_:), v219);
      sub_10002688C(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_10018FF54(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();

      return;
    }

    sub_10018EAB4(v75, v227, type metadata accessor for PayloadMetadata);
    if (!v215)
    {
      sub_10018F128(v79, type metadata accessor for PayloadMetadata);
      goto LABEL_35;
    }

    v111 = v241;
    sub_10005EE94(v215);
    if (v111)
    {

      sub_10018F128(v79, type metadata accessor for PayloadMetadata);
      return;
    }

    v112 = sub_10018F32C(v78);
    v242 = v60;
    if (v112)
    {
      if (a14 >> 60 == 15)
      {
        (*(v218 + 104))(v220, enum case for DIPError.Code.idcsInvalidACL(_:), v219);
        sub_10002688C(_swiftEmptyArrayStorage);
        type metadata accessor for DIPError();
        sub_10018FF54(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
        swift_allocError();
        DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
        swift_willThrow();

        sub_10018F128(v79, type metadata accessor for PayloadMetadata);
        return;
      }

      v165 = v79[3];
      v166 = v79[4];
      sub_100032EBC(a13, a14);
      v167 = sub_10018F590(a13, a14, v165, v166);
      v241 = 0;
      v187 = v167;
      v197 = v56;
      v245 = v188;
      type metadata accessor for StoredCryptoKey();
      v189 = objc_allocWithZone(swift_getObjCClassFromMetadata());
      v190 = [v189 initWithContext:v242];
      sub_10006000C();
      v191 = v243;
      [v243 addCryptoKeysObject:v190];
      v192 = v244;
      [v244 setPayloadProtectionKey:v190];
      [v192 setFormat:3];
      v193 = v187;
      v194 = Data._bridgeToObjectiveC()().super.isa;
      [v192 setPayloadData:v194];

      v71 = v234;
      v195 = v191;
      [v192 setProtectionType:2];
      v61 = v192;
      v78 = v195;
      v79 = v227;

      v196 = v193;
      v56 = v197;
      sub_1000092BC(v196, v245);
      sub_10001C120(a13, a14);
      v77 = v240;
    }

    else
    {
      v241 = 0;
      if ((v79[2] & 0x8000000000000000) != 0)
      {
LABEL_62:
        __break(1u);
        return;
      }

      [v61 setFormat:?];
      v155 = Data._bridgeToObjectiveC()().super.isa;
      [v61 setPayloadData:v155];

      [v61 setProtectionType:0];
    }

    v156 = String._bridgeToObjectiveC()();
    [v61 setDocType:v156];

    v157 = v237;
    v158 = Date._bridgeToObjectiveC()().super.isa;
    [v61 setValidFrom:v158];

    v159 = Date._bridgeToObjectiveC()().super.isa;
    [v61 setValidUntil:v159];

    v160 = v208;
    sub_100046360(v79 + v157[10], v208, &qword_1002004D0, &unk_1001AE1C0);
    if ((*(v238 + 48))(v160, 1, v77) == 1)
    {
      v161 = 0;
    }

    else
    {
      v161 = Date._bridgeToObjectiveC()().super.isa;
      v198(v160, v77);
    }

    [v61 setSignedAt:v161];

    v162 = v237;
    v163 = Array._bridgeToObjectiveC()().super.isa;
    [v61 setIssuerCertificateChain:v163];

    if (*(v79 + v162[13] + 8))
    {
      v164 = String._bridgeToObjectiveC()();
    }

    else
    {
      v164 = 0;
    }

    v168 = v209;
    [v61 setRegion:v164];

    if (*(v79 + v237[14] + 8))
    {
      v169 = String._bridgeToObjectiveC()();
    }

    else
    {
      v169 = 0;
    }

    [v61 setIssuingJurisdiction:v169];

    if (*(v79 + v237[15] + 8))
    {
      v170 = String._bridgeToObjectiveC()();
    }

    else
    {
      v170 = 0;
    }

    [v61 setIssuingAuthority:v170];

    sub_100046360(v79 + v237[16], v168, &qword_100203870, &qword_1001AE008);
    v171 = v216;
    v172 = v217;
    v173 = (*(v216 + 48))(v168, 1, v217);
    v197 = v56;
    if (v173 == 1)
    {
      sub_10000A0D4(v168, &qword_100203870, &qword_1001AE008);
      v125 = v235;
      v124 = v236;
    }

    else
    {
      v174 = v207;
      (*(v171 + 32))(v207, v168, v172);
      type metadata accessor for StoredIdentifierRevocationList();
      v175 = objc_allocWithZone(swift_getObjCClassFromMetadata());
      v176 = [v175 initWithContext:v242];
      v177 = ISO18013MobileSecurityObject.IdentifierList.id.getter();
      v179 = v178;
      v180 = Data._bridgeToObjectiveC()().super.isa;
      sub_1000092BC(v177, v179);
      [v176 setIdentifier:v180];

      v181 = ISO18013MobileSecurityObject.IdentifierList.certificate.getter();
      v183 = 0;
      if (v182 >> 60 != 15)
      {
        v184 = v181;
        v185 = v182;
        v183 = Data._bridgeToObjectiveC()().super.isa;
        sub_10001C120(v184, v185);
      }

      [v176 setCertificate:{v183, v197}];

      ISO18013MobileSecurityObject.IdentifierList.uri.getter();
      v186 = String._bridgeToObjectiveC()();

      [v176 setUri:v186];

      v61 = v244;
      [v244 setIdentifierRevocationList:v176];

      (*(v171 + 8))(v174, v217);
      v125 = v235;
      v124 = v236;
      v78 = v243;
    }

    v130 = v227[5];
    v131 = v227[6];
    sub_10018EAB4(v227, v71, type metadata accessor for PayloadMetadata);
    sub_100009708(v130, v131);
  }

  else
  {
    v197 = v56;
    v242 = a10;
    v80 = v200;
    defaultLogger()();
    v81 = Logger.logObject.getter();
    v82 = static os_log_type_t.debug.getter();
    v83 = os_log_type_enabled(v81, v82);
    v84 = v245;
    if (v83)
    {
      v85 = swift_slowAlloc();
      *v85 = 0;
      _os_log_impl(&_mh_execute_header, v81, v82, "Credential has biometric protection policy; not attempting to validate payload", v85, 2u);
    }

    v86 = *(v84 + 8);
    v87 = v239;
    v86(v80, v239);
    v88 = v201;
    v89 = defaultLogger()();
    __chkstk_darwin(v89);
    Logger.sensitive(_:)();
    v245 = v84 + 8;
    v86(v88, v87);
    v90 = v225;
    v91 = v224;
    if (v242 < 0)
    {
      goto LABEL_61;
    }

    v92 = v244;
    [v244 setFormat:?];
    v93 = Data._bridgeToObjectiveC()().super.isa;
    [v92 setPayloadData:v93];

    [v92 setProtectionType:1];
    v94 = v221;
    (*(v91 + 104))(v221, enum case for ISO18013KnownDocTypes.iso18013_5_1_mDL(_:), v90);
    v95 = ISO18013KnownDocTypes.rawValue.getter();
    v96 = v91;
    v98 = v97;
    (*(v96 + 8))(v94, v90);
    v99 = v202;
    defaultLogger()();

    v100 = Logger.logObject.getter();
    v101 = static os_log_type_t.debug.getter();

    v102 = os_log_type_enabled(v100, v101);
    v103 = v240;
    if (v102)
    {
      v104 = swift_slowAlloc();
      v105 = v103;
      v106 = v87;
      v107 = swift_slowAlloc();
      v246 = v107;
      *v104 = 136315138;
      *(v104 + 4) = sub_10010150C(v95, v98, &v246);
      _os_log_impl(&_mh_execute_header, v100, v101, "ISO18013PackageUndecryptablePayloadProcessor assuming doctype %s", v104, 0xCu);
      sub_100005090(v107);
      v108 = v244;

      v109 = v106;
      v103 = v105;
      v86(v202, v109);
      v110 = v237;
    }

    else
    {

      v86(v99, v87);
      v110 = v237;
      v108 = v244;
    }

    v113 = v230;
    v114 = String._bridgeToObjectiveC()();
    [v108 setDocType:v114];

    defaultLogger()();
    v115 = Logger.logObject.getter();
    v116 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v115, v116))
    {
      v117 = swift_slowAlloc();
      *v117 = 0;
      _os_log_impl(&_mh_execute_header, v115, v116, "ISO18013PackageUndecryptablePayloadProcessor assuming region US", v117, 2u);
      v113 = v230;
    }

    v86(v204, v239);
    v118 = String._bridgeToObjectiveC()();
    [v244 setRegion:v118];

    defaultLogger()();
    v119 = Logger.logObject.getter();
    v120 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v119, v120))
    {
      v121 = swift_slowAlloc();
      *v121 = 0;
      _os_log_impl(&_mh_execute_header, v119, v120, "ISO18013PackageUndecryptablePayloadProcessor assuming issuing jurisdiction nil", v121, 2u);
      v113 = v230;
    }

    v86(v228, v239);
    static Date.distantPast.getter();
    static Date.distantFuture.getter();
    v122 = v238;
    (*(v238 + 56))(v229, 1, 1, v103);
    v123 = v222;
    sub_100046360(v232, v222, &qword_100202490, &unk_1001ACF80);
    if ((*(v231 + 48))(v123, 1, v110) == 1)
    {
      sub_10000A0D4(v123, &qword_100202490, &unk_1001ACF80);
      (*(v216 + 56))(v113, 1, 1, v217);
    }

    else
    {
      sub_100046360(v123 + v110[16], v113, &qword_100203870, &qword_1001AE008);
      sub_10018F128(v123, type metadata accessor for PayloadMetadata);
    }

    v71 = v234;
    *v234 = v95;
    *(v71 + 8) = v98;
    v125 = v235;
    v124 = v236;
    *(v71 + 16) = v242;
    *(v71 + 24) = v125;
    *(v71 + 32) = v124;
    *(v71 + 40) = xmmword_1001AB540;
    v126 = *(v122 + 32);
    v126(v71 + v110[8], v205, v103);
    v126(v71 + v110[9], v206, v103);
    sub_100046524(v229, v71 + v110[10], &qword_1002004D0, &unk_1001AE1C0);
    v127 = (v71 + v110[11]);
    *v127 = 0;
    v127[1] = 0;
    *(v71 + v110[12]) = _swiftEmptyArrayStorage;
    *(v71 + v110[13]) = xmmword_1001AED50;
    v128 = (v71 + v110[14]);
    *v128 = 0;
    v128[1] = 0;
    v129 = (v71 + v110[15]);
    *v129 = 0;
    v129[1] = 0;
    sub_100046524(v113, v71 + v110[16], &qword_100203870, &qword_1001AE008);
    sub_100009708(v125, v124);
    v130 = 0;
    v131 = 0xF000000000000000;
    v78 = v243;
    v61 = v244;
  }

  v132 = v226;
  v133 = [v78 state];
  if ((v133 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  if (v133 == 1)
  {
    [v78 setState:2];
  }

  v134 = v241;
  sub_10018F8B8(v78, v61, v130, v131);
  if (v134)
  {
    sub_10018F128(v71, type metadata accessor for PayloadMetadata);

    sub_10001C120(v130, v131);
  }

  else
  {
    if (a12 >> 60 == 15)
    {
      sub_10018FF54(&qword_100200608, &type metadata accessor for SHA256, &protocol conformance descriptor for SHA256);
      v135 = v210;
      dispatch thunk of HashFunction.init()();
      sub_100009708(v125, v124);
      sub_1000D8FBC(v125, v124, v135);
      v241 = 0;
      sub_1000092BC(v125, v124);
      v136 = v212;
      dispatch thunk of HashFunction.finalize()();
      (*(v211 + 8))(v135, v132);
      sub_10018FF54(&qword_100200610, &type metadata accessor for SHA256Digest, &protocol conformance descriptor for SHA256Digest);
      v137 = v214;
      v138 = Digest.data.getter();
      v140 = v139;
      (*(v213 + 8))(v136, v137);
      v141 = Data._bridgeToObjectiveC()().super.isa;
      sub_1000092BC(v138, v140);
      v142 = v244;
      [v244 setIngestionHash:v141];

      v143 = v243;
    }

    else
    {
      sub_100009708(a11, a12);
      sub_10018FF54(&qword_100200608, &type metadata accessor for SHA256, &protocol conformance descriptor for SHA256);
      v144 = v210;
      dispatch thunk of HashFunction.init()();
      sub_100009708(a11, a12);
      sub_1000D8FBC(a11, a12, v144);
      v241 = 0;
      sub_10001C120(a11, a12);
      v145 = v212;
      dispatch thunk of HashFunction.finalize()();
      (*(v211 + 8))(v144, v132);
      sub_10018FF54(&qword_100200610, &type metadata accessor for SHA256Digest, &protocol conformance descriptor for SHA256Digest);
      v146 = v214;
      v147 = Digest.data.getter();
      v149 = v148;
      (*(v213 + 8))(v145, v146);
      v150 = Data._bridgeToObjectiveC()().super.isa;
      v151 = v147;
      v143 = v243;
      sub_1000092BC(v151, v149);
      v142 = v244;
      [v244 setIngestionHash:v150];

      sub_10001C120(a11, a12);
    }

    [v143 addPayloadsObject:v142];
    v152 = v143;
    v153 = v197;
    Date.init()();
    v154 = Date._bridgeToObjectiveC()().super.isa;
    v198(v153, v240);
    [v152 setUpdatedAt:v154];

    sub_10001C120(v130, v131);
  }
}

uint64_t sub_100180C38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v7 = type metadata accessor for DIPError.Code();
  v6[8] = v7;
  v6[9] = *(v7 - 8);
  v6[10] = swift_task_alloc();
  v8 = type metadata accessor for DIPError();
  v6[11] = v8;
  v6[12] = *(v8 - 8);
  v6[13] = swift_task_alloc();
  v9 = type metadata accessor for Logger();
  v6[14] = v9;
  v6[15] = *(v9 - 8);
  v6[16] = swift_task_alloc();
  v6[17] = swift_task_alloc();

  return _swift_task_switch(sub_100180DC4, 0, 0);
}

uint64_t sub_100180DC4(uint64_t a1)
{
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Deleting device encryption keys", v4, 2u);
  }

  v5 = v1[17];
  v6 = v1[14];
  v7 = v1[15];
  v8 = v1[6];

  v9 = *(v7 + 8);
  v1[18] = v9;
  v9(v5, v6);
  if (v8)
  {
    v10 = v1[6];
    v11 = swift_task_alloc();
    v1[19] = v11;
    *v11 = v1;
    v11[1] = sub_100180F80;
    v13 = v1[4];
    v12 = v1[5];
    v14 = v1[2];
    v15 = v1[3];

    return sub_100181880(v13, v14, v15, v12, v10);
  }

  else
  {

    v17 = v1[1];

    return v17();
  }
}

uint64_t sub_100180F80()
{
  v2 = *v1;
  v2[20] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100181264, 0, 0);
  }

  else
  {
    v3 = swift_task_alloc();
    v2[21] = v3;
    *v3 = v2;
    v3[1] = sub_1001810F8;
    v4 = v2[3];
    v5 = v2[2];
    v6 = v2[4];

    return sub_100182EC0(v6, v5, v4);
  }
}

uint64_t sub_1001810F8()
{
  v2 = *v1;
  *(v2 + 176) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100181498, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_100181264()
{
  v1 = v0[16];
  v2 = v0[13];
  v8 = v0[14];
  v9 = v0[18];
  v3 = v0[11];
  v4 = v0[12];
  (*(v0[9] + 104))(v0[10], enum case for DIPError.Code.internalError(_:), v0[8]);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  sub_10018FF54(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  (*(v4 + 16))(v5, v2, v3);
  defaultLogger()();
  DIPRecordError(_:message:log:)();

  v9(v1, v8);
  (*(v4 + 8))(v2, v3);

  v6 = v0[1];

  return v6();
}

uint64_t sub_100181498()
{
  v1 = v0[16];
  v2 = v0[13];
  v8 = v0[14];
  v9 = v0[18];
  v3 = v0[11];
  v4 = v0[12];
  (*(v0[9] + 104))(v0[10], enum case for DIPError.Code.internalError(_:), v0[8]);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  sub_10018FF54(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  (*(v4 + 16))(v5, v2, v3);
  defaultLogger()();
  DIPRecordError(_:message:log:)();

  v9(v1, v8);
  (*(v4 + 8))(v2, v3);

  v6 = v0[1];

  return v6();
}

void sub_1001816CC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11, unint64_t a12)
{
  v22 = a7;
  v23 = a8;
  v20 = a1;
  v21 = a6;
  v16 = type metadata accessor for PayloadMetadata(0);
  __chkstk_darwin(v16 - 8);
  v18 = (&v20 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = v24;
  sub_10017EF1C(a2, a3, a4, a5, v21, v22, v23, *(a9 + 9), v18, a10, 0, 0xF000000000000000, a11, a12);
  if (!v19)
  {
    sub_10018F128(v18, type metadata accessor for PayloadMetadata);
    sub_100050240();
  }
}

unint64_t sub_1001817F0()
{
  _StringGuts.grow(_:)(34);

  v0 = Data.base16EncodedString()();
  String.append(_:)(v0);

  return 0xD000000000000020;
}

uint64_t sub_100181880(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v7 = type metadata accessor for DIPError.Code();
  v6[8] = v7;
  v6[9] = *(v7 - 8);
  v6[10] = swift_task_alloc();
  v8 = type metadata accessor for DIPError();
  v6[11] = v8;
  v6[12] = *(v8 - 8);
  v6[13] = swift_task_alloc();
  v9 = type metadata accessor for Logger();
  v6[14] = v9;
  v6[15] = *(v9 - 8);
  v6[16] = swift_task_alloc();
  v6[17] = swift_task_alloc();
  v6[18] = swift_task_alloc();
  v6[19] = swift_task_alloc();
  v6[20] = swift_task_alloc();
  v10 = type metadata accessor for CredentialKeyType();
  v6[21] = v10;
  v6[22] = *(v10 - 8);
  v6[23] = swift_task_alloc();
  v11 = _s11KeyToDeleteVMa(0);
  v6[24] = v11;
  v6[25] = *(v11 - 8);
  v6[26] = swift_task_alloc();
  v6[27] = swift_task_alloc();
  v12 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  v6[28] = v12;
  v6[29] = *(v12 - 8);
  v6[30] = swift_task_alloc();
  v6[31] = sub_100004E70(&qword_100203D00, &qword_1001AEDD8);
  v6[32] = swift_task_alloc();
  v6[33] = swift_task_alloc();

  return _swift_task_switch(sub_100181B98, 0, 0);
}

uint64_t sub_100181B98()
{
  v1 = v0[29];
  v17 = v0[28];
  v18 = v0[30];
  v3 = v0[6];
  v2 = v0[7];
  v5 = v0[4];
  v4 = v0[5];
  v7 = v0[2];
  v6 = v0[3];
  v8 = swift_allocObject();
  v0[34] = v8;
  v8[2] = v2;
  v8[3] = v6;
  v8[4] = v5;
  v8[5] = v7;
  v8[6] = v4;
  v8[7] = v3;
  v9 = swift_allocObject();
  v0[35] = v9;
  *(v9 + 16) = sub_10018F268;
  *(v9 + 24) = v8;
  v10 = enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:);
  v11 = *(v1 + 104);

  v11(v18, v10, v17);

  v12 = swift_task_alloc();
  v0[36] = v12;
  *v12 = v0;
  v12[1] = sub_100181D38;
  v13 = v0[33];
  v14 = v0[30];
  v15 = v0[31];

  return NSManagedObjectContext.perform<A>(schedule:_:)(v13, v14, sub_1000BBAFC, v9, v15);
}

uint64_t sub_100181D38()
{
  v2 = *v1;
  *(*v1 + 296) = v0;

  if (v0)
  {
    (*(v2[29] + 8))(v2[30], v2[28]);

    v3 = sub_10018282C;
  }

  else
  {
    v5 = v2[29];
    v4 = v2[30];
    v6 = v2[28];

    (*(v5 + 8))(v4, v6);
    v3 = sub_100181EC4;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100181EC4()
{
  v78 = v0;
  v1 = v0[32];
  v2 = v0[24];
  v3 = v0[25];
  sub_100046360(v0[33], v1, &qword_100203D00, &qword_1001AEDD8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = v0[32];
    sub_10000A0D4(v0[33], &qword_100203D00, &qword_1001AEDD8);
    sub_10000A0D4(v4, &qword_100203D00, &qword_1001AEDD8);
LABEL_3:

    v5 = v0[1];

    return v5();
  }

  v7 = v0[27];
  v8 = v0[23];
  v9 = v0[24];
  v10 = v0[21];
  v11 = v0[22];
  sub_10018EAB4(v0[32], v7, _s11KeyToDeleteVMa);
  (*(v11 + 16))(v8, v7 + *(v9 + 20), v10);
  v12 = (*(v11 + 88))(v8, v10);
  if (v12 == enum case for CredentialKeyType.ses(_:))
  {
    defaultLogger()();
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "Deleting SES device encryption key from SE", v15, 2u);
    }

    v16 = v0[27];
    v17 = v0[24];
    v18 = v0[19];
    v19 = v0[14];
    v20 = v0[15];

    v21 = *(v20 + 8);
    v21(v18, v19);
    v22 = (v16 + *(v17 + 24));
    v23 = v22[1];
    if (v23 >> 60 == 15)
    {
      defaultLogger()();
      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        *v26 = 0;
        _os_log_impl(&_mh_execute_header, v24, v25, "Unable to delete key from SE because no key blob provided", v26, 2u);
      }

      v27 = v0[33];
      v28 = v0[27];
      v29 = v0[18];
      v30 = v0[14];

      v21(v29, v30);
      sub_10000A0D4(v27, &qword_100203D00, &qword_1001AEDD8);
      sub_10018F128(v28, _s11KeyToDeleteVMa);
    }

    else
    {
      v42 = *v22;
      v43 = v0[37];
      sub_100009708(*v22, v23);
      sub_100027880(v42, v23);
      if (v43)
      {
        sub_10001C120(v42, v23);
        v44 = v0[16];
        v72 = v0[27];
        v45 = v0[13];
        v73 = v0[14];
        v75 = v0[33];
        v47 = v0[11];
        v46 = v0[12];
        (*(v0[9] + 104))(v0[10], enum case for DIPError.Code.internalError(_:), v0[8]);
        swift_errorRetain();
        sub_10002688C(_swiftEmptyArrayStorage);
        DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
        sub_10018FF54(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
        swift_allocError();
        (*(v46 + 16))(v48, v45, v47);
        v77[0] = 0;
        v77[1] = 0xE000000000000000;
        _StringGuts.grow(_:)(58);
        v49._countAndFlagsBits = 0xD000000000000038;
        v49._object = 0x80000001001BCEC0;
        String.append(_:)(v49);
        String.append(_:)(*v72);
        defaultLogger()();
        DIPRecordError(_:message:log:)();

        v21(v44, v73);
        (*(v46 + 8))(v45, v47);
        sub_10000A0D4(v75, &qword_100203D00, &qword_1001AEDD8);
        sub_10018F128(v72, _s11KeyToDeleteVMa);
      }

      else
      {
        v71 = v0[27];
        sub_10000A0D4(v0[33], &qword_100203D00, &qword_1001AEDD8);
        sub_10001C120(v42, v23);
        sub_10018F128(v71, _s11KeyToDeleteVMa);
      }
    }

    goto LABEL_3;
  }

  if (v12 != enum case for CredentialKeyType.sep(_:))
  {
    v50 = v0[26];
    v51 = v0[27];
    defaultLogger()();
    sub_10018EB60(v51, v50, _s11KeyToDeleteVMa);
    v52 = Logger.logObject.getter();
    v53 = static os_log_type_t.debug.getter();
    v54 = os_log_type_enabled(v52, v53);
    v55 = v0[33];
    v56 = v0[26];
    v57 = v0[17];
    v59 = v0[14];
    v58 = v0[15];
    if (v54)
    {
      v76 = v0[14];
      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v77[0] = v61;
      *v60 = 136315138;
      v74 = v55;
      v62 = CredentialKeyType.rawValue.getter();
      v63 = v57;
      v65 = v64;
      sub_10018F128(v56, _s11KeyToDeleteVMa);
      v66 = sub_10010150C(v62, v65, v77);

      *(v60 + 4) = v66;
      _os_log_impl(&_mh_execute_header, v52, v53, "Unexpected device encryption key type: %s", v60, 0xCu);
      sub_100005090(v61);

      (*(v58 + 8))(v63, v76);
      v67 = v74;
    }

    else
    {

      sub_10018F128(v56, _s11KeyToDeleteVMa);
      (*(v58 + 8))(v57, v59);
      v67 = v55;
    }

    sub_10000A0D4(v67, &qword_100203D00, &qword_1001AEDD8);
    v69 = v0[22];
    v68 = v0[23];
    v70 = v0[21];
    sub_10018F128(v0[27], _s11KeyToDeleteVMa);
    (*(v69 + 8))(v68, v70);
    goto LABEL_3;
  }

  defaultLogger()();
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    *v33 = 0;
    _os_log_impl(&_mh_execute_header, v31, v32, "Deleting SEP device encryption key from keychain", v33, 2u);
  }

  v34 = v0[27];
  v35 = v0[20];
  v36 = v0[14];
  v37 = v0[15];

  v38 = *(v37 + 8);
  v0[38] = v38;
  v38(v35, v36);
  v39 = *v34;
  v40 = v34[1];
  v41 = swift_task_alloc();
  v0[39] = v41;
  *v41 = v0;
  v41[1] = sub_100182944;

  return sub_1000273FC(v39, v40);
}

uint64_t sub_10018282C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100182944()
{
  *(*v1 + 320) = v0;

  if (v0)
  {
    v2 = sub_100182B9C;
  }

  else
  {
    v2 = sub_100182A58;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100182A58()
{
  v1 = v0[27];
  sub_10000A0D4(v0[33], &qword_100203D00, &qword_1001AEDD8);
  sub_10018F128(v1, _s11KeyToDeleteVMa);

  v2 = v0[1];

  return v2();
}

uint64_t sub_100182B9C()
{
  v11 = v0[38];
  v12 = v0[33];
  v1 = v0[27];
  v2 = v0[16];
  v3 = v0[13];
  v10 = v0[14];
  v4 = v0[11];
  v5 = v0[12];
  (*(v0[9] + 104))(v0[10], enum case for DIPError.Code.internalError(_:), v0[8]);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  sub_10018FF54(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  (*(v5 + 16))(v6, v3, v4);
  _StringGuts.grow(_:)(58);
  v7._countAndFlagsBits = 0xD000000000000038;
  v7._object = 0x80000001001BCEC0;
  String.append(_:)(v7);
  String.append(_:)(*v1);
  defaultLogger()();
  DIPRecordError(_:message:log:)();

  v11(v2, v10);
  (*(v5 + 8))(v3, v4);
  sub_10000A0D4(v12, &qword_100203D00, &qword_1001AEDD8);
  sub_10018F128(v1, _s11KeyToDeleteVMa);

  v8 = v0[1];

  return v8();
}

uint64_t sub_100182EC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[11] = a3;
  v4[12] = v3;
  v4[9] = a1;
  v4[10] = a2;
  v5 = type metadata accessor for Logger();
  v4[13] = v5;
  v4[14] = *(v5 - 8);
  v4[15] = swift_task_alloc();
  v6 = type metadata accessor for DIPError();
  v4[16] = v6;
  v4[17] = *(v6 - 8);
  v4[18] = swift_task_alloc();
  v7 = type metadata accessor for DIPError.Code();
  v4[19] = v7;
  v4[20] = *(v7 - 8);
  v4[21] = swift_task_alloc();
  v8 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  v4[22] = v8;
  v4[23] = *(v8 - 8);
  v4[24] = swift_task_alloc();

  return _swift_task_switch(sub_100183098, 0, 0);
}

uint64_t sub_100183098()
{
  v1 = v0[23];
  v15 = v0[24];
  v2 = v0[22];
  v4 = v0[11];
  v3 = v0[12];
  v6 = v0[9];
  v5 = v0[10];
  v7 = swift_allocObject();
  v0[25] = v7;
  v7[2] = v3;
  v7[3] = v5;
  v7[4] = v4;
  v7[5] = v6;
  v8 = swift_allocObject();
  v0[26] = v8;
  *(v8 + 16) = sub_10018F1D0;
  *(v8 + 24) = v7;
  v9 = enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:);
  v10 = *(v1 + 104);

  v10(v15, v9, v2);

  v11 = swift_task_alloc();
  v0[27] = v11;
  v12 = sub_100004E70(&qword_100201580, &qword_1001AB980);
  *v11 = v0;
  v11[1] = sub_100183244;
  v13 = v0[24];

  return NSManagedObjectContext.perform<A>(schedule:_:)(v0 + 8, v13, sub_10001BF74, v8, v12);
}

uint64_t sub_100183244()
{
  v2 = *v1;
  *(*v1 + 224) = v0;

  if (v0)
  {
    (*(v2[23] + 8))(v2[24], v2[22]);

    v3 = sub_100183548;
  }

  else
  {
    v5 = v2[23];
    v4 = v2[24];
    v6 = v2[22];

    (*(v5 + 8))(v4, v6);
    v2[29] = v2[8];
    v3 = sub_1001833C4;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1001833C4()
{
  v1 = *(v0 + 232);
  v2 = v1[2];
  *(v0 + 240) = v2;
  if (v2)
  {
    v3 = *(*(v0 + 96) + 112);
    *(v0 + 304) = enum case for DIPError.Code.internalError(_:);
    *(v0 + 248) = v3;
    *(v0 + 256) = 0;
    v4 = v1[4];
    *(v0 + 264) = v4;
    v5 = v1[5];
    *(v0 + 272) = v5;

    *(v0 + 16) = 778790244;
    *(v0 + 24) = 0xE400000000000000;
    v6._countAndFlagsBits = v4;
    v6._object = v5;
    String.append(_:)(v6);
    v7 = *(v0 + 16);
    v8 = *(v0 + 24);
    *(v0 + 280) = v8;
    v9 = swift_task_alloc();
    *(v0 + 288) = v9;
    *v9 = v0;
    v9[1] = sub_1001835E0;

    return DeviceIdentityKeystore.deleteKeysAndCertificates(label:)(v7, v8);
  }

  else
  {

    v10 = *(v0 + 8);

    return v10();
  }
}

uint64_t sub_100183548()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001835E0()
{
  *(*v1 + 296) = v0;

  if (v0)
  {
    v2 = sub_1001838A8;
  }

  else
  {

    v2 = sub_100183728;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100183728()
{
  v1 = v0[32] + 1;
  if (v1 == v0[30])
  {

    v2 = v0[1];

    return v2();
  }

  else
  {
    v0[32] = v1;
    v4 = v0[29] + 16 * v1;
    v5 = *(v4 + 32);
    v0[33] = v5;
    v6 = *(v4 + 40);
    v0[34] = v6;

    v0[2] = 778790244;
    v0[3] = 0xE400000000000000;
    v7._countAndFlagsBits = v5;
    v7._object = v6;
    String.append(_:)(v7);
    v8 = v0[2];
    v9 = v0[3];
    v0[35] = v9;
    v10 = swift_task_alloc();
    v0[36] = v10;
    *v10 = v0;
    v10[1] = sub_1001835E0;

    return DeviceIdentityKeystore.deleteKeysAndCertificates(label:)(v8, v9);
  }
}

uint64_t sub_1001838A8()
{
  v22 = *(v0 + 264);
  v17 = *(v0 + 304);
  v1 = *(v0 + 168);
  v2 = *(v0 + 152);
  v19 = *(v0 + 144);
  v20 = *(v0 + 136);
  v18 = *(v0 + 128);
  v21 = *(v0 + 120);
  v23 = *(v0 + 112);
  v24 = *(v0 + 104);
  v3 = *(*(v0 + 160) + 104);
  v3(v1);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  sub_10018FF54(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  (v3)(v1, v17, v2);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_allocError();
  (*(v20 + 16))(v4, v19, v18);
  *(v0 + 48) = 0;
  *(v0 + 56) = 0xE000000000000000;
  _StringGuts.grow(_:)(58);
  v5 = *(v0 + 56);
  *(v0 + 32) = *(v0 + 48);
  *(v0 + 40) = v5;
  v6._countAndFlagsBits = 0xD000000000000038;
  v6._object = 0x80000001001BCEC0;
  String.append(_:)(v6);
  String.append(_:)(v22);

  defaultLogger()();
  DIPRecordError(_:message:log:)();

  (*(v23 + 8))(v21, v24);
  (*(v20 + 8))(v19, v18);

  v7 = *(v0 + 256) + 1;
  if (v7 == *(v0 + 240))
  {

    v8 = *(v0 + 8);

    return v8();
  }

  else
  {
    *(v0 + 256) = v7;
    v10 = *(v0 + 232) + 16 * v7;
    v11 = *(v10 + 32);
    *(v0 + 264) = v11;
    v12 = *(v10 + 40);
    *(v0 + 272) = v12;

    *(v0 + 16) = 778790244;
    *(v0 + 24) = 0xE400000000000000;
    v13._countAndFlagsBits = v11;
    v13._object = v12;
    String.append(_:)(v13);
    v14 = *(v0 + 16);
    v15 = *(v0 + 24);
    *(v0 + 280) = v15;
    v16 = swift_task_alloc();
    *(v0 + 288) = v16;
    *v16 = v0;
    v16[1] = sub_1001835E0;

    return DeviceIdentityKeystore.deleteKeysAndCertificates(label:)(v14, v15);
  }
}

uint64_t sub_100183D20(uint64_t a1, unint64_t a2)
{
  object = 0xE000000000000000;
  _StringGuts.grow(_:)(74);
  v4._object = 0x80000001001BD1C0;
  v4._countAndFlagsBits = 0xD000000000000048;
  String.append(_:)(v4);
  if (a2 >> 60 == 15)
  {
    countAndFlagsBits = 0;
  }

  else
  {
    v6 = Data.base16EncodedString()();
    countAndFlagsBits = v6._countAndFlagsBits;
    object = v6._object;
  }

  v7 = object;
  String.append(_:)(*&countAndFlagsBits);

  return 0;
}

unint64_t sub_100183DCC(uint64_t a1)
{
  _StringGuts.grow(_:)(42);

  sub_100004E70(&qword_100201580, &qword_1001AB980);
  v1._countAndFlagsBits = Dictionary.description.getter();
  String.append(_:)(v1);

  return 0xD000000000000028;
}

unint64_t sub_100183E74()
{
  _StringGuts.grow(_:)(32);

  v0 = Data.base16EncodedString()();
  String.append(_:)(v0);

  return 0xD00000000000001ELL;
}

uint64_t sub_100183EF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v9 = type metadata accessor for Logger();
  v6[6] = v9;
  v6[7] = *(v9 - 8);
  v6[8] = swift_task_alloc();
  v10 = type metadata accessor for ISO18013KnownDocTypes();
  v6[9] = v10;
  v6[10] = *(v10 - 8);
  v6[11] = swift_task_alloc();
  v11 = swift_task_alloc();
  v6[12] = v11;
  *v11 = v6;
  v11[1] = sub_10018405C;

  return sub_10017325C(a5, a6, 0);
}

uint64_t sub_10018405C(uint64_t a1, uint64_t a2)
{
  *(*v3 + 104) = v2;

  if (v2)
  {
    v4 = sub_1001842B8;
  }

  else
  {

    v4 = sub_10018417C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10018417C()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];
  v5 = v0[2];
  v4 = v0[3];
  (*(v2 + 104))(v1, enum case for ISO18013KnownDocTypes.photoID(_:), v3);
  v6 = ISO18013KnownDocTypes.rawValue.getter();
  v8 = v7;
  (*(v2 + 8))(v1, v3);
  if (v6 == v5 && v8 == v4)
  {

    goto LABEL_8;
  }

  v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

  v11 = 0;
  if (v10)
  {
LABEL_8:
    v11 = sub_10018AF64(2965848, 0xE300000000000000, v0[4], v0[5]);
  }

  v12 = v0[1];

  return v12(v11 & 1);
}

uint64_t sub_1001842B8(uint64_t a1)
{
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  v4 = os_log_type_enabled(v2, v3);
  v6 = v1[7];
  v5 = v1[8];
  v7 = v1[6];
  if (v4)
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "No stored hash available skipping device cross check", v8, 2u);
  }

  (*(v6 + 8))(v5, v7);

  v9 = v1[1];

  return v9(0);
}

uint64_t sub_1001843E4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  *(v6 + 560) = v5;
  *(v6 + 552) = a5;
  *(v6 + 1360) = a4;
  *(v6 + 544) = a3;
  *(v6 + 536) = a2;
  *(v6 + 528) = a1;
  v7 = type metadata accessor for AlgorithmIdentifier();
  *(v6 + 568) = v7;
  *(v6 + 576) = *(v7 - 8);
  *(v6 + 584) = swift_task_alloc();
  v8 = type metadata accessor for DIPError.Code();
  *(v6 + 592) = v8;
  *(v6 + 600) = *(v8 - 8);
  *(v6 + 608) = swift_task_alloc();
  v9 = type metadata accessor for DIPError();
  *(v6 + 616) = v9;
  *(v6 + 624) = *(v9 - 8);
  *(v6 + 632) = swift_task_alloc();
  sub_100004E70(&qword_100203D10, &qword_1001AEDF0);
  *(v6 + 640) = swift_task_alloc();
  v10 = type metadata accessor for Locale();
  *(v6 + 648) = v10;
  *(v6 + 656) = *(v10 - 8);
  *(v6 + 664) = swift_task_alloc();
  v11 = type metadata accessor for Date();
  *(v6 + 672) = v11;
  *(v6 + 680) = *(v11 - 8);
  *(v6 + 688) = swift_task_alloc();
  *(v6 + 696) = swift_task_alloc();
  v12 = type metadata accessor for DateComponents();
  *(v6 + 704) = v12;
  *(v6 + 712) = *(v12 - 8);
  *(v6 + 720) = swift_task_alloc();
  sub_100004E70(&qword_100203D18, &qword_1001AEDF8);
  *(v6 + 728) = swift_task_alloc();
  sub_100004E70(&qword_1002004D0, &unk_1001AE1C0);
  *(v6 + 736) = swift_task_alloc();
  *(v6 + 744) = swift_task_alloc();
  *(v6 + 752) = swift_task_alloc();
  *(v6 + 760) = swift_task_alloc();
  sub_100004E70(&qword_100202988, &unk_1001AD140);
  *(v6 + 768) = swift_task_alloc();
  *(v6 + 776) = swift_task_alloc();
  *(v6 + 784) = swift_task_alloc();
  v13 = type metadata accessor for AnyCodable();
  *(v6 + 792) = v13;
  *(v6 + 800) = *(v13 - 8);
  *(v6 + 808) = swift_task_alloc();
  *(v6 + 816) = swift_task_alloc();
  *(v6 + 824) = swift_task_alloc();
  *(v6 + 832) = swift_task_alloc();
  *(v6 + 840) = swift_task_alloc();
  *(v6 + 848) = swift_task_alloc();
  *(v6 + 856) = swift_task_alloc();
  *(v6 + 864) = swift_task_alloc();
  v14 = type metadata accessor for ISO18013IssuerSignedItem();
  *(v6 + 872) = v14;
  *(v6 + 880) = *(v14 - 8);
  *(v6 + 888) = swift_task_alloc();
  *(v6 + 896) = swift_task_alloc();
  v15 = sub_100004E70(&qword_1002004D8, &qword_1001ACBF0);
  *(v6 + 904) = v15;
  *(v6 + 912) = *(v15 - 8);
  *(v6 + 920) = swift_task_alloc();
  *(v6 + 928) = swift_task_alloc();
  *(v6 + 936) = swift_task_alloc();
  v16 = type metadata accessor for ISO18013KnownNamespaces();
  *(v6 + 944) = v16;
  *(v6 + 952) = *(v16 - 8);
  *(v6 + 960) = swift_task_alloc();
  v17 = type metadata accessor for ISO23220_1_ElementIdentifier();
  *(v6 + 968) = v17;
  *(v6 + 976) = *(v17 - 8);
  *(v6 + 984) = swift_task_alloc();
  *(v6 + 992) = swift_task_alloc();
  *(v6 + 1000) = swift_task_alloc();
  *(v6 + 1008) = swift_task_alloc();
  *(v6 + 1016) = swift_task_alloc();
  *(v6 + 1024) = swift_task_alloc();
  *(v6 + 1032) = swift_task_alloc();
  *(v6 + 1040) = swift_task_alloc();
  *(v6 + 1048) = swift_task_alloc();
  *(v6 + 1056) = swift_task_alloc();
  *(v6 + 1064) = swift_task_alloc();
  *(v6 + 1072) = swift_task_alloc();
  *(v6 + 1080) = swift_task_alloc();
  *(v6 + 1088) = swift_task_alloc();
  *(v6 + 1096) = swift_task_alloc();
  v18 = type metadata accessor for Logger();
  *(v6 + 1104) = v18;
  *(v6 + 1112) = *(v18 - 8);
  *(v6 + 1120) = swift_task_alloc();
  *(v6 + 1128) = swift_task_alloc();
  *(v6 + 1136) = swift_task_alloc();
  *(v6 + 1144) = swift_task_alloc();
  *(v6 + 1152) = swift_task_alloc();
  *(v6 + 1160) = swift_task_alloc();
  *(v6 + 1168) = swift_task_alloc();

  return _swift_task_switch(sub_100184B74, 0, 0);
}

uint64_t sub_100184B74(uint64_t a1)
{
  defaultLogger()();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Performing device cross check", v3, 2u);
  }

  v4 = v369;
  v5 = v369[146];
  v6 = v369[139];
  v7 = v369[138];
  v8 = v369[137];
  v324 = v369[136];
  v326 = v369[135];
  v329 = v369[134];
  v334 = v369[133];
  v340 = v369[132];
  v343 = v369[131];
  v9 = v369[122];
  v10 = v369[121];
  v348 = v369[119];
  v353 = v369[118];
  v357 = v369[120];
  v360 = v369[66];
  v363 = v369[130];

  (*(v6 + 8))(v5, v7);
  sub_100004E70(&qword_1002004F8, &qword_1001AAFA8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001AED60;
  v12 = *(v9 + 104);
  v320 = enum case for ISO23220_1_ElementIdentifier.portrait(_:);
  v12(v8);
  v13 = ISO23220_1_ElementIdentifier.rawValue.getter();
  v15 = v14;
  v16 = *(v9 + 8);
  v16(v8, v10);
  *(inited + 32) = v13;
  *(inited + 40) = v15;
  v319 = enum case for ISO23220_1_ElementIdentifier.givenName(_:);
  v12(v324);
  v17 = ISO23220_1_ElementIdentifier.rawValue.getter();
  v19 = v18;
  v16(v324, v10);
  *(inited + 48) = v17;
  *(inited + 56) = v19;
  v318 = enum case for ISO23220_1_ElementIdentifier.familyName(_:);
  v12(v326);
  v20 = ISO23220_1_ElementIdentifier.rawValue.getter();
  v22 = v21;
  v16(v326, v10);
  *(inited + 64) = v20;
  *(inited + 72) = v22;
  v317 = enum case for ISO23220_1_ElementIdentifier.birthDate(_:);
  v12(v329);
  v23 = ISO23220_1_ElementIdentifier.rawValue.getter();
  v25 = v24;
  v16(v329, v10);
  *(inited + 80) = v23;
  *(inited + 88) = v25;
  v316 = enum case for ISO23220_1_ElementIdentifier.expiryDate(_:);
  v12(v334);
  v26 = ISO23220_1_ElementIdentifier.rawValue.getter();
  v28 = v27;
  v16(v334, v10);
  *(inited + 96) = v26;
  *(inited + 104) = v28;
  (v12)(v340, enum case for ISO23220_1_ElementIdentifier.sex(_:), v10);
  v29 = ISO23220_1_ElementIdentifier.rawValue.getter();
  v31 = v30;
  v16(v340, v10);
  *(inited + 112) = v29;
  *(inited + 120) = v31;
  v315 = enum case for ISO23220_1_ElementIdentifier.nationality(_:);
  v12(v343);
  v32 = ISO23220_1_ElementIdentifier.rawValue.getter();
  v34 = v33;
  v16(v343, v10);
  *(inited + 128) = v32;
  *(inited + 136) = v34;
  v314 = enum case for ISO23220_1_ElementIdentifier.documentNumber(_:);
  v322 = v12;
  v12(v363);
  v35 = ISO23220_1_ElementIdentifier.rawValue.getter();
  v37 = v36;
  v321 = v16;
  v16(v363, v10);
  *(inited + 144) = v35;
  *(inited + 152) = v37;
  v364 = inited;
  (*(v348 + 104))(v357, enum case for ISO18013KnownNamespaces.iso23220_1(_:), v353);
  v38 = ISO18013KnownNamespaces.rawValue.getter();
  v40 = v39;
  (*(v348 + 8))(v357, v353);
  if (!*(v360 + 16))
  {

    goto LABEL_17;
  }

  v41 = sub_100099644(v38, v40);
  v43 = v42;

  if ((v43 & 1) == 0)
  {
LABEL_17:
    v62 = v369[76];
    v63 = v369[75];
    v64 = v369[74];

    (*(v63 + 104))(v62, enum case for DIPError.Code.mDocelementsMapUnavailable(_:), v64);
    sub_10002688C(_swiftEmptyArrayStorage);
    sub_10018FF54(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    v65 = 730;
LABEL_47:
    v313 = v65;
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
LABEL_48:
    defaultLogger()();
    swift_errorRetain();
    v156 = Logger.logObject.getter();
    v157 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v156, v157))
    {
      v158 = swift_slowAlloc();
      v159 = swift_slowAlloc();
      *v158 = 138412290;
      swift_errorRetain();
      v160 = _swift_stdlib_bridgeErrorToNSError();
      *(v158 + 4) = v160;
      *v159 = v160;
      _os_log_impl(&_mh_execute_header, v156, v157, "Device cross check failed with error: %@", v158, 0xCu);
      sub_10000A0D4(v159, &qword_1002003B8, &unk_1001AB850);
    }

    v161 = v4[142];
    v162 = v4[139];
    v163 = v4[138];
    v164 = *(v4 + 1360);

    v165 = *(v162 + 8);
    v165(v161, v163);
    if ((v164 & 1) != 0 || (v166 = [objc_opt_self() standardUserDefaults], v167._countAndFlagsBits = static SharedInternalDefaultsKeys.makeDeviceCrossCheckErrorsTerminal.getter(), v168 = NSUserDefaults.internalBool(forKey:)(v167), , v166, v168))
    {
      swift_willThrow();

      v169 = v369[1];
    }

    else
    {
      v170 = v4[141];
      v171 = v4[138];
      defaultLogger()();
      DIPRecordError(_:message:log:)();

      v165(v170, v171);

      v169 = v369[1];
    }

    return v169();
  }

  v44 = *(*(v369[66] + 56) + 8 * v41);
  v45 = v44[2];

  v361 = v45;
  if (v45)
  {
    v46 = 0;
    v47 = v369[114];
    v341 = (v369[110] + 8);
    v349 = v47;
    v330 = (v47 + 8);
    v335 = (v47 + 32);
    v358 = v44;
    while (v46 < v44[2])
    {
      v48 = v4[112];
      v49 = v4[109];
      v50 = (*(v349 + 80) + 32) & ~*(v349 + 80);
      v51 = v44 + v50;
      v52 = *(v349 + 72);
      (*(v349 + 16))(v4[117], &v51[v52 * v46], v4[113]);
      CBOREncodedCBOR.value.getter();
      v53 = ISO18013IssuerSignedItem.elementIdentifier.getter();
      v55 = v54;
      (*v341)(v48, v49);
      v4[42] = v53;
      v4[43] = v55;
      v56 = swift_task_alloc();
      *(v56 + 16) = v369 + 42;
      LOBYTE(v48) = sub_100120CF8(sub_10000ED28, v56, v364);

      if (v48)
      {
        v57 = *v335;
        (*v335)(v4[116], v4[117], v4[113]);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_10010A758(0, _swiftEmptyArrayStorage[2] + 1, 1);
        }

        v59 = _swiftEmptyArrayStorage[2];
        v58 = _swiftEmptyArrayStorage[3];
        if (v59 >= v58 >> 1)
        {
          sub_10010A758((v58 > 1), v59 + 1, 1);
        }

        v4 = v369;
        v60 = v369[116];
        v61 = v369[113];
        _swiftEmptyArrayStorage[2] = v59 + 1;
        v57(_swiftEmptyArrayStorage + v50 + v59 * v52, v60, v61);
      }

      else
      {
        (*v330)(v4[117], v4[113]);
      }

      ++v46;
      v44 = v358;
      if (v361 == v46)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
    goto LABEL_64;
  }

LABEL_18:
  swift_setDeallocating();
  swift_arrayDestroy();

  v354 = _swiftEmptyArrayStorage[2];
  if (v354)
  {
    v66 = 0;
    v67 = v4[114];
    v344 = _swiftEmptyArrayStorage + ((*(v67 + 80) + 32) & ~*(v67 + 80));
    v350 = v67;
    v336 = v4[100];
    v358 = (v336 + 32);
    v327 = (v67 + 8);
    v331 = (v4[110] + 8);
    v68 = _swiftEmptyDictionarySingleton;
    while (1)
    {
      if (v66 >= _swiftEmptyArrayStorage[2])
      {
        __break(1u);
LABEL_67:
        __break(1u);
LABEL_68:
        __break(1u);
        goto LABEL_65;
      }

      v71 = v4[115];
      v72 = v4[113];
      v73 = v4[108];
      v74 = v4;
      v75 = v68;
      v76 = v74[107];
      v77 = v74;
      v78 = v74[99];
      (*(v350 + 16))(v71, &v344[*(v350 + 72) * v66], v72);
      CBOREncodedCBOR.value.getter();
      v79 = ISO18013IssuerSignedItem.elementIdentifier.getter();
      v81 = v80;
      ISO18013IssuerSignedItem.elementValue.getter();
      v82 = v78;
      v83 = *v358;
      (*v358)(v76, v73, v82);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v370 = v75;
      v85 = sub_100099644(v79, v81);
      v87 = v75[2];
      v88 = (v86 & 1) == 0;
      v89 = __OFADD__(v87, v88);
      v90 = v87 + v88;
      if (v89)
      {
        goto LABEL_67;
      }

      v91 = v86;
      if (v75[3] >= v90)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v100 = v85;
          sub_10010A13C();
          v85 = v100;
        }
      }

      else
      {
        sub_100108DE8(v90, isUniquelyReferenced_nonNull_native);
        v85 = sub_100099644(v79, v81);
        if ((v91 & 1) != (v92 & 1))
        {

          return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        }
      }

      v361 = v77[113];
      v365 = v77[115];
      v93 = v77[111];
      v94 = v77[109];
      v95 = v77[107];
      v96 = v77[99];
      if (v91)
      {
        v69 = v85;

        v70 = v370[7] + *(v336 + 72) * v69;
        v68 = v370;
        (*(v336 + 40))(v70, v95, v96);
        (*v331)(v93, v94);
        (*v327)(v365, v361);
      }

      else
      {
        v370[(v85 >> 6) + 8] |= 1 << v85;
        v97 = (v370[6] + 16 * v85);
        *v97 = v79;
        v97[1] = v81;
        v68 = v370;
        v83(v370[7] + *(v336 + 72) * v85, v95, v96);
        (*v331)(v93, v94);
        (*v327)(v365, v361);
        v98 = v370[2];
        v89 = __OFADD__(v98, 1);
        v99 = v98 + 1;
        if (v89)
        {
          goto LABEL_68;
        }

        v370[2] = v99;
      }

      ++v66;
      v4 = v369;
      if (v354 == v66)
      {
        goto LABEL_33;
      }
    }
  }

  v68 = _swiftEmptyDictionarySingleton;
LABEL_33:
  v101 = v4[129];
  v102 = v4[121];

  (v322)(v101, v320, v102);
  v103 = ISO23220_1_ElementIdentifier.rawValue.getter();
  v105 = v104;
  v321(v101, v102);
  if (!v68[2])
  {

LABEL_46:
    v4 = v369;
    v153 = v369[76];
    v154 = v369[75];
    v155 = v369[74];

    (*(v154 + 104))(v153, enum case for DIPError.Code.deviceCrossCheckPortraitUnavailable(_:), v155);
    sub_10002688C(_swiftEmptyArrayStorage);
    sub_10018FF54(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    v65 = 734;
    goto LABEL_47;
  }

  v106 = sub_100099644(v103, v105);
  v108 = v107;

  v109 = v68;
  if ((v108 & 1) == 0)
  {
    goto LABEL_46;
  }

  v110 = v369[106];
  v111 = v369[100];
  v112 = v369[99];
  v113 = v111[9];
  v366 = v111[2];
  v366(v110, v68[7] + v113 * v106, v112);
  v114 = AnyCodable.dataValue.getter();
  v116 = v115;
  v369[147] = v114;
  v369[148] = v115;
  v117 = v111[1];
  v117(v110, v112);
  if (v116 >> 60 == 15)
  {
    goto LABEL_46;
  }

  v361 = v116;
  v118 = v369[128];
  v119 = v369[121];
  (v322)(v118, v319, v119);
  v120 = ISO23220_1_ElementIdentifier.rawValue.getter();
  v122 = v121;
  v321(v118, v119);
  v358 = v114;
  if (!v109[2])
  {

LABEL_61:

    v4 = v369;
    (*(v369[75] + 104))(v369[76], enum case for DIPError.Code.deviceCrossCheckGivenNameUnavailable(_:), v369[74]);
    sub_10002688C(_swiftEmptyArrayStorage);
    sub_10018FF54(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    v173 = 738;
LABEL_62:
    v313 = v173;
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    sub_10001C120(v358, v361);
    goto LABEL_48;
  }

  v123 = sub_100099644(v120, v122);
  v125 = v124;

  if ((v125 & 1) == 0)
  {
    goto LABEL_61;
  }

  v126 = v369[105];
  v127 = v369[99];
  v366(v126, v109[7] + v123 * v113, v127);
  v128 = AnyCodable.stringValue.getter();
  v130 = v129;
  v117(v126, v127);
  if (!v130)
  {
    goto LABEL_61;
  }

  v355 = v128;
  v131 = v369[127];
  v132 = v369[121];
  (v322)(v131, v318, v132);
  v133 = ISO23220_1_ElementIdentifier.rawValue.getter();
  v135 = v134;
  v321(v131, v132);
  if (!v109[2])
  {
LABEL_64:

LABEL_65:

    v4 = v369;
    v174 = v369[76];
    v175 = v369[75];
    v176 = v369[74];

    (*(v175 + 104))(v174, enum case for DIPError.Code.deviceCrossCheckFamilyNameUnavailable(_:), v176);
    sub_10002688C(_swiftEmptyArrayStorage);
    sub_10018FF54(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    v173 = 742;
    goto LABEL_62;
  }

  v136 = sub_100099644(v133, v135);
  v138 = v137;

  if ((v138 & 1) == 0)
  {
    goto LABEL_65;
  }

  v351 = v130;
  v139 = v369[104];
  v140 = v369[99];
  v366(v139, v109[7] + v136 * v113, v140);
  v141 = AnyCodable.stringValue.getter();
  v143 = v142;
  v117(v139, v140);
  if (!v143)
  {
    goto LABEL_65;
  }

  v328 = v141;
  v342 = v143;
  v144 = v369[126];
  v145 = v369[121];
  (v322)(v144, v317, v145);
  v146 = ISO23220_1_ElementIdentifier.rawValue.getter();
  v148 = v147;
  v321(v144, v145);
  v345 = v109;
  if (v109[2])
  {
    v149 = sub_100099644(v146, v148);
    v151 = v150;

    if (v151)
    {
      v366(v369[98], v109[7] + v149 * v113, v369[99]);
      v152 = 0;
      goto LABEL_72;
    }
  }

  else
  {
  }

  v152 = 1;
LABEL_72:
  v177 = v369[100];
  v178 = v369[99];
  v179 = v369[98];
  v180 = v369[97];
  (*(v177 + 56))(v179, v152, 1, v178);
  sub_100046360(v179, v180, &qword_100202988, &unk_1001AD140);
  v332 = *(v177 + 48);
  if (v332(v180, 1, v178) == 1)
  {
    v181 = v369[94];
    v182 = v369[85];
    v183 = v369[84];
    sub_10000A0D4(v369[97], &qword_100202988, &unk_1001AD140);
    (*(v182 + 56))(v181, 1, 1, v183);
  }

  else
  {
    v184 = v369[99];
    v185 = v369[97];
    v186 = v369[94];
    v187 = v369[85];
    v188 = v369[84];
    AnyCodable.dateValue.getter();
    v117(v185, v184);
    v189 = v188;
    v190 = *(v187 + 48);
    if (v190(v186, 1, v189) != 1)
    {
      v201 = v369[95];
      v202 = v369[85];
      v203 = v369[84];
      (*(v202 + 32))(v201, v369[94], v203);
      (*(v202 + 56))(v201, 0, 1, v203);
      v204 = v190;
      goto LABEL_84;
    }
  }

  v191 = v369[99];
  v192 = v369[96];
  sub_100046360(v369[98], v192, &qword_100202988, &unk_1001AD140);
  if (v332(v192, 1, v191) == 1)
  {
    v193 = v369[96];
    v194 = &qword_100202988;
    v195 = &unk_1001AD140;
LABEL_79:
    sub_10000A0D4(v193, v194, v195);
    (*(v369[85] + 56))(v369[95], 1, 1, v369[84]);
    goto LABEL_82;
  }

  v196 = v369[99];
  v197 = v369[96];
  v198 = v369[91];
  AnyCodable.birthDateValue.getter();
  v117(v197, v196);
  v199 = type metadata accessor for ISO23220.BirthDate();
  v200 = *(v199 - 8);
  if ((*(v200 + 48))(v198, 1, v199) == 1)
  {
    v193 = v369[91];
    v194 = &qword_100203D18;
    v195 = &qword_1001AEDF8;
    goto LABEL_79;
  }

  v205 = v369[91];
  v206 = v369[90];
  v207 = v369[89];
  v337 = v369[88];
  ISO23220.BirthDate.dateComponents.getter();
  (*(v200 + 8))(v205, v199);
  DateComponents.date.getter();
  (*(v207 + 8))(v206, v337);
LABEL_82:
  v208 = v369[94];
  v204 = *(v369[85] + 48);
  if (v204(v208, 1, v369[84]) != 1)
  {
    sub_10000A0D4(v208, &qword_1002004D0, &unk_1001AE1C0);
  }

LABEL_84:
  v209 = v369[93];
  v210 = v369[84];
  sub_100046360(v369[95], v209, &qword_1002004D0, &unk_1001AE1C0);
  if (v204(v209, 1, v210) == 1)
  {
    v211 = v369[98];
    v212 = v369[95];
    v213 = v369[93];
    v214 = v369[76];
    v215 = v369[75];
    v216 = v369[74];

    sub_10000A0D4(v213, &qword_1002004D0, &unk_1001AE1C0);
    (*(v215 + 104))(v214, enum case for DIPError.Code.deviceCrossCheckDobUnavailable(_:), v216);
    sub_10002688C(_swiftEmptyArrayStorage);
    sub_10018FF54(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    v313 = 749;
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    sub_10001C120(v358, v361);
    sub_10000A0D4(v212, &qword_1002004D0, &unk_1001AE1C0);
    sub_10000A0D4(v211, &qword_100202988, &unk_1001AD140);
    v4 = v369;
    goto LABEL_48;
  }

  v333 = v204;
  v217 = v369[125];
  v218 = v369[121];
  v325 = *(v369[85] + 32);
  v325(v369[87], v369[93], v369[84]);
  (v322)(v217, v316, v218);
  v219 = ISO23220_1_ElementIdentifier.rawValue.getter();
  v221 = v220;
  v321(v217, v218);
  if (!v345[2])
  {

    goto LABEL_91;
  }

  v222 = sub_100099644(v219, v221);
  v224 = v223;

  if ((v224 & 1) == 0)
  {
LABEL_91:

    v228 = v369;
    v229 = v369[92];
    v230 = v369[85];
    v231 = v369[84];

    (*(v230 + 56))(v229, 1, 1, v231);
    goto LABEL_92;
  }

  v225 = v369[103];
  v226 = v369[99];
  v227 = v369[92];
  v323 = v369[84];
  v366(v225, v345[7] + v222 * v113, v226);
  AnyCodable.dateValue.getter();
  v117(v225, v226);
  if (v333(v227, 1, v323) == 1)
  {

    v228 = v369;
LABEL_92:
    v367 = v228[98];
    v232 = v228[95];
    v233 = v228[87];
    v234 = v228[85];
    v235 = v228[84];
    v236 = v228[76];
    v237 = v228[75];
    v238 = v369[74];
    sub_10000A0D4(v228[92], &qword_1002004D0, &unk_1001AE1C0);
    (*(v237 + 104))(v236, enum case for DIPError.Code.deviceCrossCheckDoeUnavailable(_:), v238);
    sub_10002688C(_swiftEmptyArrayStorage);
    sub_10018FF54(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    v313 = 753;
    swift_allocError();
    v4 = v369;
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    sub_10001C120(v358, v361);
    (*(v234 + 8))(v233, v235);
    v239 = v232;
LABEL_93:
    sub_10000A0D4(v239, &qword_1002004D0, &unk_1001AE1C0);
    sub_10000A0D4(v367, &qword_100202988, &unk_1001AD140);
    goto LABEL_48;
  }

  v240 = v369[124];
  v241 = v369[121];
  v325(v369[86], v369[92], v369[84]);
  (v322)(v240, v315, v241);
  v242 = ISO23220_1_ElementIdentifier.rawValue.getter();
  v244 = v243;
  v321(v240, v241);
  if (!v345[2])
  {

LABEL_106:

    v4 = v369;
    v367 = v369[98];
    v352 = v369[87];
    v356 = v369[95];
    v300 = v369[86];
    v301 = v369[85];
    v302 = v369[84];
    v303 = v369[76];
    v304 = v369[75];
    v305 = v369[74];

    (*(v304 + 104))(v303, enum case for DIPError.Code.deviceCrossCheckNationalityUnavailable(_:), v305);
    sub_10002688C(_swiftEmptyArrayStorage);
    sub_10018FF54(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    v313 = 757;
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    sub_10001C120(v358, v361);
    v306 = *(v301 + 8);
    v306(v300, v302);
    v306(v352, v302);
LABEL_107:
    v239 = v356;
    goto LABEL_93;
  }

  v245 = sub_100099644(v242, v244);
  v247 = v246;

  if ((v247 & 1) == 0)
  {
    goto LABEL_106;
  }

  v248 = v369[102];
  v249 = v369[99];
  v366(v248, v345[7] + v245 * v113, v249);
  v250 = AnyCodable.stringValue.getter();
  v252 = v251;
  v369[149] = v250;
  v369[150] = v251;
  v117(v248, v249);
  if (!v252)
  {
    goto LABEL_106;
  }

  v253 = v369[123];
  v254 = v369[121];
  (v322)(v253, v314, v254);
  v255 = ISO23220_1_ElementIdentifier.rawValue.getter();
  v257 = v256;
  v321(v253, v254);
  if (!v345[2])
  {

    goto LABEL_110;
  }

  v258 = sub_100099644(v255, v257);
  v260 = v259;

  if ((v260 & 1) == 0)
  {
LABEL_110:

LABEL_111:
    v4 = v369;
    v367 = v369[98];
    v356 = v369[95];
    v347 = v369[87];
    v339 = v369[86];
    v307 = v369[85];
    v308 = v369[84];
    v309 = v369[76];
    v310 = v369[75];
    v311 = v369[74];

    (*(v310 + 104))(v309, enum case for DIPError.Code.deviceCrossCheckDocNumberUnavailable(_:), v311);
    sub_10002688C(_swiftEmptyArrayStorage);
    sub_10018FF54(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    v313 = 761;
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    sub_10001C120(v358, v361);
    v312 = *(v307 + 8);
    v312(v339, v308);
    v312(v347, v308);
    goto LABEL_107;
  }

  v261 = v369[101];
  v262 = v369[99];
  v366(v261, v345[7] + v258 * v113, v262);

  v368 = AnyCodable.stringValue.getter();
  v264 = v263;
  v117(v261, v262);
  if (!v264)
  {
    goto LABEL_111;
  }

  v338 = v369[83];
  v346 = v369[82];
  v359 = v369[81];
  v362 = v369[80];
  v369[44] = v355;
  v369[45] = v351;
  v369[46] = 32;
  v369[47] = 0xE100000000000000;
  v369[48] = 60;
  v369[49] = 0xE100000000000000;
  v265 = sub_100021E18();
  v266 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v268 = v267;

  v369[50] = v328;
  v369[51] = v342;
  v369[52] = 32;
  v369[53] = 0xE100000000000000;
  v369[54] = 60;
  v369[55] = 0xE100000000000000;
  v269 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v271 = v270;

  v272._countAndFlagsBits = 15420;
  v272._object = 0xE200000000000000;
  String.append(_:)(v272);
  v273._countAndFlagsBits = v266;
  v273._object = v268;
  String.append(_:)(v273);

  v369[56] = v269;
  v369[57] = v271;
  v369[58] = 60;
  v369[59] = 0xE100000000000000;
  v274 = StringProtocol.padding<A>(toLength:withPad:startingAt:)();
  v276 = v275;

  v369[151] = v274;
  v369[152] = v276;
  v369[60] = v368;
  v369[61] = v264;
  v369[62] = 60;
  v369[63] = 0xE100000000000000;
  v277 = StringProtocol.padding<A>(toLength:withPad:startingAt:)();
  v279 = v278;

  v369[153] = v277;
  v369[154] = v279;
  v280 = [objc_allocWithZone(NSDateFormatter) init];
  v369[155] = v280;
  v281 = String._bridgeToObjectiveC()();
  [v280 setDateFormat:v281];

  Locale.init(identifier:)();
  isa = Locale._bridgeToObjectiveC()().super.isa;
  (*(v346 + 8))(v338, v359);
  [v280 setLocale:isa];

  TimeZone.init(abbreviation:)();
  v283 = type metadata accessor for TimeZone();
  v284 = *(v283 - 8);
  v285 = 0;
  if ((*(v284 + 48))(v362, 1, v283) != 1)
  {
    v286 = v369[80];
    v285 = TimeZone._bridgeToObjectiveC()().super.isa;
    (*(v284 + 8))(v286, v283);
  }

  [v280 setTimeZone:v285];

  v287 = Date._bridgeToObjectiveC()().super.isa;
  v288 = [v280 stringFromDate:v287];

  v289 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v291 = v290;

  v369[156] = v289;
  v369[157] = v291;
  v292 = Date._bridgeToObjectiveC()().super.isa;
  v293 = [v280 stringFromDate:v292];

  v294 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v296 = v295;

  v369[158] = v294;
  v369[159] = v296;

  v297 = swift_task_alloc();
  v369[160] = v297;
  *v297 = v369;
  v297[1] = sub_100187858;
  v298 = v369[68];
  v299 = v369[67];

  return sub_10017325C(v299, v298, 0);
}

uint64_t sub_100187858(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[161] = a1;
  v4[162] = a2;
  v4[163] = v2;

  if (v2)
  {

    v5 = sub_10018A6DC;
  }

  else
  {
    v5 = sub_1001879FC;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1001879FC(uint64_t a1)
{
  v150 = v1;
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "performFieldBasedHashComparison", v4, 2u);
  }

  v5 = *(v1 + 1160);
  v6 = *(v1 + 1112);
  v7 = *(v1 + 1104);

  v8 = *(v6 + 8);
  *(v1 + 1312) = v8;
  v8(v5, v7);

  v9 = Data.init(base16Encoded:)();
  *(v1 + 1320) = v9;
  *(v1 + 1328) = v10;
  if (v10 >> 60 == 15)
  {
    goto LABEL_11;
  }

  v11 = v9;
  v12 = v10;
  v13 = objc_opt_self();
  isa = Data._bridgeToObjectiveC()().super.isa;
  *(v1 + 512) = 0;
  v15 = [v13 JSONObjectWithData:isa options:0 error:v1 + 512];

  v16 = *(v1 + 512);
  if (!v15)
  {
    v27 = v16;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v28 = v11;
    v29 = v12;
LABEL_9:
    sub_10001C120(v28, v29);
    goto LABEL_12;
  }

  v17 = v16;
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_100004E70(&qword_1002018D0, &qword_1001AAEA0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_10001C120(v11, v12);
LABEL_11:
    (*(*(v1 + 600) + 104))(*(v1 + 608), enum case for DIPError.Code.incorrectPIIHashFormat(_:), *(v1 + 592));
    sub_10002688C(_swiftEmptyArrayStorage);
    sub_10018FF54(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    goto LABEL_12;
  }

  v131 = v11;
  v133 = v12;
  v147 = *(v1 + 1304);
  v18 = *(v1 + 520);
  *(v1 + 1336) = v18;
  sub_10010CBB4(_swiftEmptyArrayStorage);

  Data.base16EncodedString()();
  v19 = v147;
  v148 = static PassportPIIHashUtility.generatePIIHashes(portrait:holder:dob:doe:nationality:docNumber:)();
  *(v1 + 1344) = v148;
  if (v19)
  {
    v20 = *(v1 + 632);
    v21 = *(v1 + 624);
    v22 = *(v1 + 616);
    v23 = *(v1 + 608);
    v24 = *(v1 + 600);
    v25 = *(v1 + 592);

    (*(v24 + 104))(v23, enum case for DIPError.Code.deviceCrossCheckFailedToGenerateHashForFieldBasedHash(_:), v25);
    swift_errorRetain();
    sub_10002688C(_swiftEmptyArrayStorage);
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    sub_10018FF54(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    (*(v21 + 16))(v26, v20, v22);
    swift_willThrow();
    sub_10001C120(v131, v133);

    (*(v21 + 8))(v20, v22);
LABEL_12:
    defaultLogger()();
    swift_errorRetain();
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      *v32 = 138412290;
      swift_errorRetain();
      v34 = _swift_stdlib_bridgeErrorToNSError();
      *(v32 + 4) = v34;
      *v33 = v34;
      _os_log_impl(&_mh_execute_header, v30, v31, "Failed to perform field based hash comparison performing concatenated hash comparison: %@", v32, 0xCu);
      sub_10000A0D4(v33, &qword_1002003B8, &unk_1001AB850);
    }

    v35 = *(v1 + 1312);
    v36 = *(v1 + 1144);
    v37 = *(v1 + 1104);

    v35(v36, v37);
    defaultLogger()();
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&_mh_execute_header, v38, v39, "performConcatenatedHashComparison", v40, 2u);
    }

    v41 = *(v1 + 1312);
    v42 = *(v1 + 1272);
    v132 = *(v1 + 1264);
    v134 = *(v1 + 1248);
    v141 = *(v1 + 1224);
    v43 = *(v1 + 1216);
    v44 = *(v1 + 1208);
    v138 = *(v1 + 1200);
    v136 = *(v1 + 1192);
    v45 = *(v1 + 1120);
    v46 = *(v1 + 1104);

    v41(v45, v46);
    v149[0] = Data.base16EncodedString()();

    v47._countAndFlagsBits = v44;
    v47._object = v43;
    String.append(_:)(v47);

    v48._countAndFlagsBits = v132;
    v48._object = v42;
    String.append(_:)(v48);

    String.append(_:)(v134);

    v49._countAndFlagsBits = v136;
    v49._object = v138;
    String.append(_:)(v49);

    String.append(_:)(v141);

    v50 = String.lowercased()();

    static AlgorithmIdentifier.sha256.getter();
    v51 = sub_10018CCD8(v50._countAndFlagsBits, v50._object);
    v53 = v52;
    v54 = AlgorithmIdentifier.hash(_:)();
    v55 = *(v1 + 1296);
    v79 = *(v1 + 1288);
    v80 = v54;
    v82 = v81;
    (*(*(v1 + 576) + 8))(*(v1 + 584), *(v1 + 568));
    sub_1000092BC(v51, v53);
    v83 = Data.base16EncodedString()();
    sub_1000092BC(v80, v82);
    if ((v79 != v83._countAndFlagsBits || v55 != v83._object) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      v94 = *(v1 + 1288);
      v139 = *(v1 + 1296);
      v142 = *(v1 + 608);
      v95 = *(v1 + 600);
      v144 = *(v1 + 592);
      sub_100004E70(&qword_1002034C8, &qword_1001ADD48);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1001AA160;
      *(inited + 32) = 0x687361682D696970;
      v97 = inited + 32;
      *(inited + 40) = 0xE800000000000000;
      *(inited + 48) = v83;
      v98 = sub_10010CBB4(inited);
      swift_setDeallocating();
      sub_10000A0D4(v97, &qword_100200468, &qword_1001AAE98);
      v99 = swift_initStackObject();
      *(v99 + 16) = xmmword_1001AA160;
      *(v99 + 32) = 0x687361682D696970;
      v100 = v99 + 32;
      *(v99 + 40) = 0xE800000000000000;
      *(v99 + 48) = v94;
      *(v99 + 56) = v139;
      v101 = sub_10010CBB4(v99);
      swift_setDeallocating();
      sub_10000A0D4(v100, &qword_100200468, &qword_1001AAE98);
      sub_100005918(v98, v101);

      (*(v95 + 104))(v142, enum case for DIPError.Code.deviceCrossCheckFailedHashMismatch(_:), v144);
      sub_10002688C(_swiftEmptyArrayStorage);
      sub_10018FF54(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
      v56 = *(v1 + 1184);
      v57 = *(v1 + 1176);
      v58 = *(v1 + 784);
      v59 = *(v1 + 760);
      v60 = *(v1 + 696);
      v61 = *(v1 + 688);
      v62 = *(v1 + 680);
      v63 = *(v1 + 672);

      sub_10001C120(v57, v56);

      v64 = *(v62 + 8);
      v64(v61, v63);
      v64(v60, v63);
      sub_10000A0D4(v59, &qword_1002004D0, &unk_1001AE1C0);
      sub_10000A0D4(v58, &qword_100202988, &unk_1001AD140);
      defaultLogger()();
      swift_errorRetain();
      v65 = Logger.logObject.getter();
      v66 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v65, v66))
      {
        v67 = swift_slowAlloc();
        v68 = swift_slowAlloc();
        *v67 = 138412290;
        swift_errorRetain();
        v69 = _swift_stdlib_bridgeErrorToNSError();
        *(v67 + 4) = v69;
        *v68 = v69;
        _os_log_impl(&_mh_execute_header, v65, v66, "Device cross check failed with error: %@", v67, 0xCu);
        sub_10000A0D4(v68, &qword_1002003B8, &unk_1001AB850);
      }

      v70 = *(v1 + 1136);
      v71 = *(v1 + 1112);
      v72 = *(v1 + 1104);
      v73 = *(v1 + 1360);

      v74 = *(v71 + 8);
      v74(v70, v72);
      if ((v73 & 1) != 0 || (v75 = [objc_opt_self() standardUserDefaults], v76._countAndFlagsBits = static SharedInternalDefaultsKeys.makeDeviceCrossCheckErrorsTerminal.getter(), v77 = NSUserDefaults.internalBool(forKey:)(v76), , v75, v77))
      {
        swift_willThrow();

        v78 = *(v1 + 8);
LABEL_29:

        return v78();
      }

      v91 = *(v1 + 1128);
      v92 = *(v1 + 1104);
      defaultLogger()();
      DIPRecordError(_:message:log:)();

      v74(v91, v92);
LABEL_28:

      v78 = *(v1 + 8);
      goto LABEL_29;
    }

    v84 = *(v1 + 1184);
    v85 = *(v1 + 1176);

    sub_10001C120(v85, v84);

LABEL_26:
    v86 = *(v1 + 784);
    v87 = *(v1 + 760);
    v88 = *(v1 + 696);
    v89 = *(v1 + 672);
    v90 = *(*(v1 + 680) + 8);
    v90(*(v1 + 688), v89);
    v90(v88, v89);
    sub_10000A0D4(v87, &qword_1002004D0, &unk_1001AE1C0);
    sub_10000A0D4(v86, &qword_100202988, &unk_1001AD140);
    goto LABEL_28;
  }

  v130 = v18;

  v102 = v148 + 64;
  v103 = -1;
  v104 = -1 << *(v148 + 32);
  if (-v104 < 64)
  {
    v103 = ~(-1 << -v104);
  }

  v105 = v103 & *(v148 + 64);
  v106 = (63 - v104) >> 6;

  v107 = 0;
  while (v105)
  {
    v108 = v107;
LABEL_43:
    v109 = __clz(__rbit64(v105));
    v105 &= v105 - 1;
    v110 = (v108 << 10) | (16 * v109);
    v111 = (*(v148 + 48) + v110);
    v112 = v111[1];
    v137 = *v111;
    v113 = (*(v148 + 56) + v110);
    v114 = v113[1];
    v140 = *v113;

    defaultLogger()();

    v115 = Logger.logObject.getter();
    v116 = static os_log_type_t.default.getter();

    v135 = v116;
    v117 = os_log_type_enabled(v115, v116);
    v143 = *(v1 + 1104);
    v145 = *(v1 + 1152);
    if (v117)
    {
      v118 = swift_slowAlloc();
      v149[0]._countAndFlagsBits = swift_slowAlloc();
      *v118 = 136315394;
      v119 = sub_10010150C(v137, v112, &v149[0]._countAndFlagsBits);

      *(v118 + 4) = v119;
      *(v118 + 12) = 2080;
      v120 = sub_10010150C(v140, v114, &v149[0]._countAndFlagsBits);

      *(v118 + 14) = v120;
      _os_log_impl(&_mh_execute_header, v115, v135, "CredentialStorage - Calculated PII Hash for %s is: %s", v118, 0x16u);
      swift_arrayDestroy();

      v102 = v148 + 64;
    }

    else
    {
    }

    v8(v145, v143);
    v107 = v108;
  }

  while (1)
  {
    v108 = v107 + 1;
    if (__OFADD__(v107, 1))
    {
      __break(1u);
    }

    if (v108 >= v106)
    {
      break;
    }

    v105 = *(v102 + 8 * v108);
    ++v107;
    if (v105)
    {
      goto LABEL_43;
    }
  }

  if (!*(v148 + 16))
  {
    v123 = *(v1 + 608);
    v124 = *(v1 + 600);
    v125 = *(v1 + 592);

    (*(v124 + 104))(v123, enum case for DIPError.Code.deviceCrossCheckFailedCalculatedHashEmpty(_:), v125);
    sub_10002688C(_swiftEmptyArrayStorage);
    sub_10018FF54(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v28 = v131;
    v29 = v133;
    goto LABEL_9;
  }

  if (sub_1000FFEB4(v130, v148))
  {
    v121 = *(v1 + 1240);
    v146 = *(v1 + 1184);
    v122 = *(v1 + 1176);
    sub_10001C120(v131, v133);

    sub_10001C120(v122, v146);
    goto LABEL_26;
  }

  sub_100005918(v148, v130);
  v126 = swift_task_alloc();
  *(v1 + 1352) = v126;
  *v126 = v1;
  v126[1] = sub_10018942C;
  v127 = *(v1 + 552);
  v128 = *(v1 + 544);
  v129 = *(v1 + 536);

  return sub_10018D1F8(v130, v148, v129, v128, v127);
}

uint64_t sub_10018942C()
{

  return _swift_task_switch(sub_100189594, 0, 0);
}

uint64_t sub_100189594()
{
  v1 = *(v0 + 1328);
  v2 = *(v0 + 1320);
  (*(*(v0 + 600) + 104))(*(v0 + 608), enum case for DIPError.Code.deviceCrossCheckFailedHashMismatchForFieldBasedHash(_:), *(v0 + 592));
  sub_10002688C(_swiftEmptyArrayStorage);
  sub_10018FF54(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();
  sub_10001C120(v2, v1);
  defaultLogger()();
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&_mh_execute_header, v3, v4, "Failed to perform field based hash comparison performing concatenated hash comparison: %@", v5, 0xCu);
    sub_10000A0D4(v6, &qword_1002003B8, &unk_1001AB850);
  }

  v8 = *(v0 + 1312);
  v9 = *(v0 + 1144);
  v10 = *(v0 + 1104);

  v8(v9, v10);
  defaultLogger()();
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "performConcatenatedHashComparison", v13, 2u);
  }

  v14 = *(v0 + 1312);
  v15 = *(v0 + 1272);
  v75 = *(v0 + 1264);
  v76 = *(v0 + 1248);
  v80 = *(v0 + 1224);
  v16 = *(v0 + 1216);
  v17 = *(v0 + 1208);
  v78 = *(v0 + 1200);
  v77 = *(v0 + 1192);
  v18 = *(v0 + 1120);
  v19 = *(v0 + 1104);

  v14(v18, v19);
  Data.base16EncodedString()();

  v20._countAndFlagsBits = v17;
  v20._object = v16;
  String.append(_:)(v20);

  v21._countAndFlagsBits = v75;
  v21._object = v15;
  String.append(_:)(v21);

  String.append(_:)(v76);

  v22._countAndFlagsBits = v77;
  v22._object = v78;
  String.append(_:)(v22);

  String.append(_:)(v80);

  v23 = String.lowercased()();

  static AlgorithmIdentifier.sha256.getter();
  v24 = sub_10018CCD8(v23._countAndFlagsBits, v23._object);
  v26 = v25;
  v27 = AlgorithmIdentifier.hash(_:)();
  v28 = *(v0 + 1296);
  v52 = *(v0 + 1288);
  v53 = v27;
  v55 = v54;
  (*(*(v0 + 576) + 8))(*(v0 + 584), *(v0 + 568));
  sub_1000092BC(v24, v26);
  v56 = Data.base16EncodedString()();
  sub_1000092BC(v53, v55);
  if (v52 == v56._countAndFlagsBits && v28 == v56._object || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v57 = *(v0 + 1184);
    v58 = *(v0 + 1176);

    sub_10001C120(v58, v57);

    v59 = *(v0 + 784);
    v60 = *(v0 + 760);
    v61 = *(v0 + 696);
    v62 = *(v0 + 672);
    v63 = *(*(v0 + 680) + 8);
    v63(*(v0 + 688), v62);
    v63(v61, v62);
    sub_10000A0D4(v60, &qword_1002004D0, &unk_1001AE1C0);
    sub_10000A0D4(v59, &qword_100202988, &unk_1001AD140);
  }

  else
  {
    v67 = *(v0 + 1288);
    v79 = *(v0 + 1296);
    v81 = *(v0 + 608);
    v68 = *(v0 + 600);
    v82 = *(v0 + 592);
    sub_100004E70(&qword_1002034C8, &qword_1001ADD48);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1001AA160;
    *(inited + 32) = 0x687361682D696970;
    v70 = inited + 32;
    *(inited + 40) = 0xE800000000000000;
    *(inited + 48) = v56;
    v71 = sub_10010CBB4(inited);
    swift_setDeallocating();
    sub_10000A0D4(v70, &qword_100200468, &qword_1001AAE98);
    v72 = swift_initStackObject();
    *(v72 + 16) = xmmword_1001AA160;
    *(v72 + 32) = 0x687361682D696970;
    v73 = v72 + 32;
    *(v72 + 40) = 0xE800000000000000;
    *(v72 + 48) = v67;
    *(v72 + 56) = v79;
    v74 = sub_10010CBB4(v72);
    swift_setDeallocating();
    sub_10000A0D4(v73, &qword_100200468, &qword_1001AAE98);
    sub_100005918(v71, v74);

    (*(v68 + 104))(v81, enum case for DIPError.Code.deviceCrossCheckFailedHashMismatch(_:), v82);
    sub_10002688C(_swiftEmptyArrayStorage);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v29 = *(v0 + 1184);
    v30 = *(v0 + 1176);
    v31 = *(v0 + 784);
    v32 = *(v0 + 760);
    v33 = *(v0 + 696);
    v34 = *(v0 + 688);
    v35 = *(v0 + 680);
    v36 = *(v0 + 672);

    sub_10001C120(v30, v29);

    v37 = *(v35 + 8);
    v37(v34, v36);
    v37(v33, v36);
    sub_10000A0D4(v32, &qword_1002004D0, &unk_1001AE1C0);
    sub_10000A0D4(v31, &qword_100202988, &unk_1001AD140);
    defaultLogger()();
    swift_errorRetain();
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      *v40 = 138412290;
      swift_errorRetain();
      v42 = _swift_stdlib_bridgeErrorToNSError();
      *(v40 + 4) = v42;
      *v41 = v42;
      _os_log_impl(&_mh_execute_header, v38, v39, "Device cross check failed with error: %@", v40, 0xCu);
      sub_10000A0D4(v41, &qword_1002003B8, &unk_1001AB850);
    }

    v43 = *(v0 + 1136);
    v44 = *(v0 + 1112);
    v45 = *(v0 + 1104);
    v46 = *(v0 + 1360);

    v47 = *(v44 + 8);
    v47(v43, v45);
    if ((v46 & 1) != 0 || (v48 = [objc_opt_self() standardUserDefaults], v49._countAndFlagsBits = static SharedInternalDefaultsKeys.makeDeviceCrossCheckErrorsTerminal.getter(), v50 = NSUserDefaults.internalBool(forKey:)(v49), , v48, v50))
    {
      swift_willThrow();

      v51 = *(v0 + 8);
      goto LABEL_17;
    }

    v64 = *(v0 + 1128);
    v65 = *(v0 + 1104);
    defaultLogger()();
    DIPRecordError(_:message:log:)();

    v47(v64, v65);
  }

  v51 = *(v0 + 8);
LABEL_17:

  return v51();
}

uint64_t sub_10018A6DC()
{
  v1 = *(v0 + 1184);
  v2 = *(v0 + 1176);
  v3 = *(v0 + 784);
  v4 = *(v0 + 760);
  v5 = *(v0 + 696);
  v6 = *(v0 + 688);
  v7 = *(v0 + 680);
  v8 = *(v0 + 672);

  sub_10001C120(v2, v1);
  v9 = *(v7 + 8);
  v9(v6, v8);
  v9(v5, v8);
  sub_10000A0D4(v4, &qword_1002004D0, &unk_1001AE1C0);
  sub_10000A0D4(v3, &qword_100202988, &unk_1001AD140);
  defaultLogger()();
  swift_errorRetain();
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412290;
    swift_errorRetain();
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 4) = v14;
    *v13 = v14;
    _os_log_impl(&_mh_execute_header, v10, v11, "Device cross check failed with error: %@", v12, 0xCu);
    sub_10000A0D4(v13, &qword_1002003B8, &unk_1001AB850);
  }

  v15 = *(v0 + 1136);
  v16 = *(v0 + 1112);
  v17 = *(v0 + 1104);
  v18 = *(v0 + 1360);

  v19 = *(v16 + 8);
  v19(v15, v17);
  if ((v18 & 1) != 0 || (v20 = [objc_opt_self() standardUserDefaults], v21._countAndFlagsBits = static SharedInternalDefaultsKeys.makeDeviceCrossCheckErrorsTerminal.getter(), v22 = NSUserDefaults.internalBool(forKey:)(v21), , v20, v22))
  {
    swift_willThrow();

    v23 = *(v0 + 8);
  }

  else
  {
    v24 = *(v0 + 1128);
    v25 = *(v0 + 1104);
    defaultLogger()();
    DIPRecordError(_:message:log:)();

    v19(v24, v25);

    v23 = *(v0 + 8);
  }

  return v23();
}

uint64_t sub_10018AF64(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
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

void sub_10018B0C0(uint64_t a1@<X0>, char *a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v87 = a6;
  v88 = a5;
  v89 = a2;
  v90 = a1;
  v86 = a7;
  v9 = type metadata accessor for DIPError.Code();
  v82 = *(v9 - 8);
  v83 = v9;
  __chkstk_darwin(v9);
  v84 = v71 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100004E70(&qword_100200510, qword_1001AB070);
  __chkstk_darwin(v11 - 8);
  v79 = v71 - v12;
  v13 = type metadata accessor for CredentialKeyType();
  v14 = *(v13 - 8);
  v80 = v13;
  v81 = v14;
  __chkstk_darwin(v13);
  v16 = v71 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = _s11KeyToDeleteVMa(0);
  v85 = *(v17 - 8);
  __chkstk_darwin(v17);
  v19 = v71 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for Logger();
  v21 = *(v20 - 8);
  v22 = __chkstk_darwin(v20);
  v24 = v71 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v26 = v71 - v25;
  v27 = a3;
  v28 = a4;
  v29 = v91;
  v30 = sub_10016A520(v89, v27);
  if (v29)
  {
    return;
  }

  v89 = v26;
  v90 = v20;
  v77 = v19;
  v78 = v16;
  v91 = v21;
  v31 = v30;
  if (!sub_10018F32C(v30))
  {
    v37 = v24;
    defaultLogger()();
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&_mh_execute_header, v38, v39, "Credential payload protection policy does not use biometric auth, skipping deletion of device encryption key", v40, 2u);
    }

    (*(v91 + 8))(v37, v90);
    (*(v85 + 56))(v86, 1, 1, v17);
    return;
  }

  v32 = v89;
  v33 = defaultLogger()();
  __chkstk_darwin(v33);
  Logger.cryptoParam(_:)();
  v34 = v91 + 8;
  v35 = *(v91 + 8);
  v35(v32, v90);
  sub_10005966C();
  v41 = v36;
  v72 = v35;
  v73 = v17;
  v91 = v34;
  v74 = 0;
  v71[1] = v28;
  if (v36 >> 62)
  {
LABEL_39:
    v42 = _CocoaArrayWrapper.endIndex.getter();
    v43 = v31;
    if (v42)
    {
      goto LABEL_10;
    }

LABEL_40:

    (*(v85 + 56))(v86, 1, 1, v73);
    return;
  }

  v42 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v43 = v31;
  if (!v42)
  {
    goto LABEL_40;
  }

LABEL_10:
  v44 = 0;
  v75 = v41 & 0xFFFFFFFFFFFFFF8;
  v76 = v41 & 0xC000000000000001;
  while (1)
  {
    if (v76)
    {
      v45 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v44 >= *(v75 + 16))
      {
        goto LABEL_38;
      }

      v45 = *(v41 + 8 * v44 + 32);
    }

    v46 = v45;
    v47 = v44 + 1;
    if (__OFADD__(v44, 1))
    {
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v48 = [v45 identifier];
    if (!v48)
    {
      goto LABEL_12;
    }

    v31 = v48;
    v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v51 = v50;

    if (v49 == v88 && v51 == v87)
    {
      break;
    }

    if (_stringCompareWithSmolCheck(_:_:expecting:)())
    {
      goto LABEL_26;
    }

LABEL_12:

    ++v44;
    if (v47 == v42)
    {
      goto LABEL_40;
    }
  }

  v49 = v88;
LABEL_26:

  v53 = [v46 keyType];
  v54 = v43;
  v55 = v80;
  if (v53)
  {
    v56 = v53;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v57 = v79;
    CredentialKeyType.init(rawValue:)();
    v58 = v81;
    if ((*(v81 + 48))(v57, 1, v55) == 1)
    {
      sub_10000A0D4(v57, &qword_100200510, qword_1001AB070);
      v54 = v43;
      goto LABEL_29;
    }

    (*(v58 + 32))(v78, v57, v55);
    v54 = v43;
  }

  else
  {
LABEL_29:
    (*(v81 + 104))(v78, enum case for CredentialKeyType.invalid(_:), v55);
  }

  v59 = [v46 keyBlob];
  v60 = v77;
  if (v59)
  {
    v61 = v59;
    v62 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v64 = v63;
  }

  else
  {
    v62 = 0;
    v64 = 0xF000000000000000;
  }

  *v60 = v49;
  v60[1] = v51;
  v65 = v73;
  (*(v81 + 32))(v60 + *(v73 + 20), v78, v80);
  v66 = (v60 + *(v65 + 24));
  *v66 = v62;
  v66[1] = v64;

  v67 = v89;
  v68 = defaultLogger()();
  __chkstk_darwin(v68);
  Logger.cryptoParam(_:)();

  v72(v67, v90);
  [v54 removeCryptoKeysObject:v46];
  v69 = v74;
  sub_100050240();
  if (v69)
  {
    sub_10018F128(v60, _s11KeyToDeleteVMa);

    (*(v82 + 104))(v84, enum case for DIPError.Code.internalError(_:), v83);
    swift_errorRetain();
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10018FF54(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
  }

  else
  {

    v70 = v86;
    sub_10018EAB4(v60, v86, _s11KeyToDeleteVMa);
    (*(v85 + 56))(v70, 0, 1, v65);
  }
}

uint64_t sub_10018B9F0(uint64_t a1, void *a2)
{
  _StringGuts.grow(_:)(58);
  v4._object = 0x80000001001BCFE0;
  v4._countAndFlagsBits = 0xD000000000000038;
  String.append(_:)(v4);
  v5._countAndFlagsBits = a1;
  v5._object = a2;
  String.append(_:)(v5);
  return 0;
}

unint64_t sub_10018BA74(uint64_t a1, void *a2)
{
  _StringGuts.grow(_:)(50);

  v4._countAndFlagsBits = a1;
  v4._object = a2;
  String.append(_:)(v4);
  return 0xD000000000000030;
}

void sub_10018BAF4(uint64_t a1@<X1>, char *a2@<X2>, uint64_t a3@<X3>, char **a4@<X8>)
{
  v5 = v4;
  v67 = a3;
  v78 = a2;
  v75 = a1;
  v60 = a4;
  v6 = type metadata accessor for DIPError.Code();
  v61 = *(v6 - 8);
  __chkstk_darwin(v6);
  v62 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100004E70(&qword_1002024A8, &unk_1001ACFA0);
  __chkstk_darwin(v8 - 8);
  v69 = &v56 - v9;
  v10 = type metadata accessor for CredentialKeyUsage();
  v73 = *(v10 - 8);
  v11 = __chkstk_darwin(v10);
  v83 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v56 - v13;
  v15 = type metadata accessor for Logger();
  v16 = *(v15 - 8);
  v76 = v15;
  v77 = v16;
  v17 = __chkstk_darwin(v15);
  v68 = &v56 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v20 = &v56 - v19;
  defaultLogger()();
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&_mh_execute_header, v21, v22, "Deleting all device encryption auth required keys", v23, 2u);
    v5 = v4;
  }

  v25 = v77 + 8;
  v24 = *(v77 + 8);
  v24(v20, v76);
  v26 = sub_10016A520(v75, v78);
  if (!v5)
  {
    v27 = v26;
    v64 = v24;
    v77 = v25;
    sub_10005966C();
    v29 = v28;
    v58 = 0;
    if (v28 >> 62)
    {
      v30 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v30 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v63 = v27;
    v57 = v6;
    if (v30)
    {
      if (v30 >= 1)
      {
        v31 = 0;
        v74 = v29 & 0xC000000000000001;
        v65 = (v73 + 48);
        v59 = (v73 + 32);
        v66 = enum case for CredentialKeyUsage.invalid(_:);
        v32 = v73 + 104;
        v33 = (v73 + 8);
        v78 = _swiftEmptyArrayStorage;
        LODWORD(v73) = enum case for CredentialKeyUsage.deviceEncryptionAuthRequired(_:);
        v70 = v29;
        v71 = v32;
        v72 = v32 & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
        v75 = v30;
        while (1)
        {
          if (v74)
          {
            v34 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v34 = *(v29 + 8 * v31 + 32);
          }

          v35 = v34;
          v36 = [v34 usage];
          if (v36)
          {
            v37 = v36;
            static String._unconditionallyBridgeFromObjectiveC(_:)();

            v38 = v69;
            CredentialKeyUsage.init(rawValue:)();
            if ((*v65)(v38, 1, v10) != 1)
            {
              (*v59)(v14, v38, v10);
              v39 = *v71;
              goto LABEL_19;
            }

            sub_10000A0D4(v38, &qword_1002024A8, &unk_1001ACFA0);
          }

          v39 = *v71;
          (*v71)(v14, v66, v10);
LABEL_19:
          v39(v83, v73, v10);
          sub_10018FF54(&qword_1002024B0, &type metadata accessor for CredentialKeyUsage, &protocol conformance descriptor for CredentialKeyUsage);
          dispatch thunk of RawRepresentable.rawValue.getter();
          dispatch thunk of RawRepresentable.rawValue.getter();
          if (v81 == v79 && v82 == v80)
          {
            v40 = *v33;
            (*v33)(v83, v10);
            v40(v14, v10);
          }

          else
          {
            v41 = _stringCompareWithSmolCheck(_:_:expecting:)();
            v42 = *v33;
            (*v33)(v83, v10);
            v42(v14, v10);
            v29 = v70;

            if ((v41 & 1) == 0)
            {
              goto LABEL_9;
            }
          }

          v43 = [v35 identifier];
          if (v43)
          {
            v44 = v43;
            v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v47 = v46;

            v48 = v68;
            v49 = defaultLogger()();
            __chkstk_darwin(v49);
            Logger.cryptoParam(_:)();
            v64(v48, v76);
            [v63 removeCryptoKeysObject:v35];
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v78 = sub_100100418(0, *(v78 + 2) + 1, 1, v78);
            }

            v51 = *(v78 + 2);
            v50 = *(v78 + 3);
            if (v51 >= v50 >> 1)
            {
              v78 = sub_100100418((v50 > 1), v51 + 1, 1, v78);
            }

            v52 = v78;
            *(v78 + 2) = v51 + 1;
            v53 = &v52[16 * v51];
            *(v53 + 4) = v45;
            *(v53 + 5) = v47;
            v29 = v70;
            goto LABEL_10;
          }

LABEL_9:

LABEL_10:
          if (v75 == ++v31)
          {
            goto LABEL_30;
          }
        }
      }

      __break(1u);
    }

    else
    {
      v78 = _swiftEmptyArrayStorage;
LABEL_30:

      v54 = v58;
      sub_100050240();
      if (v54)
      {

        v55 = v63;
        (*(v61 + 104))(v62, enum case for DIPError.Code.internalError(_:), v57);
        swift_errorRetain();
        sub_10002688C(_swiftEmptyArrayStorage);
        type metadata accessor for DIPError();
        sub_10018FF54(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
        swift_allocError();
        DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
        swift_willThrow();
      }

      else
      {

        *v60 = v78;
      }
    }
  }
}

uint64_t sub_10018C3D0(uint64_t a1, void *a2)
{
  _StringGuts.grow(_:)(64);
  v4._object = 0x80000001001BCF00;
  v4._countAndFlagsBits = 0xD00000000000003ELL;
  String.append(_:)(v4);
  v5._countAndFlagsBits = a1;
  v5._object = a2;
  String.append(_:)(v5);
  return 0;
}

void sub_10018C454(unint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X5>, uint64_t a7@<X6>, unint64_t *a8@<X8>)
{
  v108 = a6;
  v106 = a7;
  v107 = a5;
  v110 = a2;
  v105 = a8;
  v11 = sub_100004E70(&qword_100200510, qword_1001AB070);
  __chkstk_darwin(v11 - 8);
  v99 = &v94 - v12;
  v104 = type metadata accessor for CredentialKeyType();
  v101 = *(v104 - 8);
  v13 = __chkstk_darwin(v104);
  v103 = &v94 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v100 = &v94 - v16;
  __chkstk_darwin(v15);
  v102 = &v94 - v17;
  v18 = sub_100004E70(&qword_100202498, &unk_1001AD910);
  v19 = __chkstk_darwin(v18 - 8);
  v21 = (&v94 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v19);
  v23 = &v94 - v22;
  v24 = type metadata accessor for Logger();
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v27 = &v94 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = a3;
  v29 = a4;
  v30 = v109;
  v31 = sub_10016A520(v110, v28);
  if (v30)
  {
    return;
  }

  v32 = v31;
  v97 = v25;
  v98 = v24;
  v109 = a1;
  v33 = v106;
  v34 = v107;
  v94 = v21;
  v95 = v29;
  v96 = v23;
  v110 = 0;
  v35 = v108;
  sub_10016B688(v31, v107, v108);
  if ((v36 & 1) == 0)
  {
    v41 = [v32 options];
    if (v41)
    {
      v42 = v41;
      v43 = [v41 payloadProtectionPolicy];

      v44 = v33;
      v45 = v109;
      if ((v43 & 0x8000000000000000) == 0)
      {
        goto LABEL_10;
      }

      __break(1u);
    }

    v43 = 0;
    v44 = v33;
    v45 = v109;
LABEL_10:
    sub_100009278((v45 + 32), *(v45 + 56));
    v46 = sub_100021FD0(v32, v34, v35, v44);
    v47 = v110;
    v48 = sub_10016AC34(v45 + 72, v44, v46);
    if (v47)
    {

      return;
    }

    LODWORD(v110) = v48;
    v108 = v32;
    v49 = sub_10005947C();
    v50 = v49;
    v109 = v43;
    if (v49 >> 62)
    {
      v51 = _CocoaArrayWrapper.endIndex.getter();
      v52 = v95;
      if (!v51)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v51 = *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v52 = v95;
      if (!v51)
      {
        goto LABEL_21;
      }
    }

    if (v51 < 1)
    {
      __break(1u);
      return;
    }

    v53 = 0;
    v54 = *(v52 + 16);
    do
    {
      if ((v50 & 0xC000000000000001) != 0)
      {
        v55 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v55 = *(v50 + 8 * v53 + 32);
      }

      v56 = v55;
      ++v53;
      [v54 deleteObject:v55];
    }

    while (v51 != v53);
LABEL_21:

    v57 = type metadata accessor for KeyLookupInfo(0);
    v58 = *(*(v57 - 8) + 56);
    v59 = v96;
    v58(v96, 1, 1, v57);
    if (v46)
    {
      v60 = [v46 identifier];
      if (v60)
      {
        v61 = v60;
        v62 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v64 = v63;

        v65 = [v46 publicKeyIdentifier];
        if (v65)
        {
          v106 = v62;
          v107 = v64;
          v66 = v65;
          v67 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v97 = v68;
          v98 = v67;

          v69 = v46;
          v70 = [v69 keyType];
          v71 = v100;
          if (v70)
          {
            v72 = v70;
            static String._unconditionallyBridgeFromObjectiveC(_:)();

            v73 = v99;
            CredentialKeyType.init(rawValue:)();
            v74 = v101;
            v75 = v104;
            if ((*(v101 + 48))(v73, 1, v104) != 1)
            {
              v78 = v71;
              v79 = *(v74 + 32);
              v79(v78, v73, v75);

              v76 = v79;
              v77 = v100;
              goto LABEL_32;
            }

            sub_10000A0D4(v73, &qword_100200510, qword_1001AB070);
          }

          v74 = v101;
          v75 = v104;
          (*(v101 + 104))(v71, enum case for CredentialKeyType.invalid(_:), v104);

          v76 = *(v74 + 32);
          v77 = v71;
LABEL_32:
          v80 = v102;
          v100 = v76;
          (v76)(v102, v77, v75);
          (*(v74 + 16))(v103, v80, v75);
          v81 = [v69 keyBlob];
          if (v81)
          {
            v82 = v81;
            v99 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
            v95 = v83;

            v74 = v101;
          }

          else
          {

            v99 = 0;
            v95 = 0xF000000000000000;
          }

          v84 = v104;
          (*(v74 + 8))(v102, v104);
          v85 = v96;
          sub_10000A0D4(v96, &qword_100202498, &unk_1001AD910);
          v86 = v94;
          v87 = v107;
          *v94 = v106;
          v86[1] = v87;
          v88 = v97;
          v86[2] = v98;
          v86[3] = v88;
          (v100)(v86 + *(v57 + 24), v103, v84);
          v89 = (v86 + *(v57 + 28));
          v90 = v95;
          *v89 = v99;
          v89[1] = v90;
          v58(v86, 0, 1, v57);
          v91 = v86;
          v59 = v85;
          sub_100046524(v91, v85, &qword_100202498, &unk_1001AD910);
          goto LABEL_36;
        }
      }

      else
      {
      }
    }

LABEL_36:
    v92 = v105;
    *v105 = v109;
    *(v92 + 8) = 0;
    *(v92 + 9) = v110 & 1;
    v93 = _s8DBResultVMa(0);
    sub_100046524(v59, v92 + *(v93 + 24), &qword_100202498, &unk_1001AD910);
    (*(*(v93 - 8) + 56))(v92, 0, 1, v93);
    return;
  }

  defaultLogger()();
  v37 = Logger.logObject.getter();
  v38 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    *v39 = 0;
    _os_log_impl(&_mh_execute_header, v37, v38, "Skipping payload ingestion because new payload data matches existing ingestion hash", v39, 2u);
  }

  (*(v97 + 8))(v27, v98);
  v40 = _s8DBResultVMa(0);
  (*(*(v40 - 8) + 56))(v105, 1, 1, v40);
}

uint64_t sub_10018CCD8(uint64_t a1, unint64_t a2)
{
  v39[0] = a1;
  v39[1] = a2;
  *&v42 = a1;
  *(&v42 + 1) = a2;

  sub_100004E70(&qword_100203D28, &qword_1001AEE10);
  if (swift_dynamicCast())
  {
    sub_10001AA08(__src, &v43);
    sub_100009278(&v43, v44);
    dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
    __src[0] = v42;
    sub_100005090(&v43);
    goto LABEL_63;
  }

  v41 = 0;
  memset(__src, 0, sizeof(__src));
  sub_10000A0D4(__src, &qword_100203D30, &qword_1001AEE18);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_67;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
    *&__src[0] = a1;
    *(&__src[0] + 1) = a2 & 0xFFFFFFFFFFFFFFLL;
    v4 = __src;
  }

  else if ((a1 & 0x1000000000000000) != 0)
  {
    v4 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = _StringObject.sharedUTF8.getter();
  }

  sub_10018DE80(&v43, v4, v5);
  v6 = *(&v43 + 1);
  v7 = v43;
  if (*(&v43 + 1) >> 60 != 15)
  {
    __src[0] = v43;
    goto LABEL_63;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

LABEL_12:
  *&__src[0] = sub_10018F28C(v8);
  *(&__src[0] + 1) = v9;
  __chkstk_darwin(*&__src[0]);
  v34[2] = v39;
  v10 = sub_10018DF48(sub_100190010, v34);
  v14 = v10;
  v15 = v11;
  v16 = v12;
  v17 = *(&__src[0] + 1) >> 62;
  if ((*(&__src[0] + 1) >> 62) > 1)
  {
    if (v17 == 2)
    {
      v19 = *(*&__src[0] + 16);
      v18 = *(*&__src[0] + 24);
      v20 = __OFSUB__(v18, v19);
      v21 = v18 - v19;
      if (v20)
      {
        goto LABEL_70;
      }

      if (v13 != v21)
      {
        goto LABEL_23;
      }
    }

    else if (v13)
    {
      v22 = 0;
      goto LABEL_60;
    }
  }

  else if (v17)
  {
    if (__OFSUB__(DWORD1(__src[0]), __src[0]))
    {
      goto LABEL_71;
    }

    if (v13 != DWORD1(__src[0]) - LODWORD(__src[0]))
    {
LABEL_23:
      if (v17 == 2)
      {
        v22 = *(*&__src[0] + 24);
      }

      else if (v17 == 1)
      {
        v22 = *&__src[0] >> 32;
      }

      else
      {
        v22 = BYTE14(__src[0]);
      }

LABEL_60:
      if (v22 >= v13)
      {
        Data._Representation.replaceSubrange(_:with:count:)();
LABEL_62:

        goto LABEL_63;
      }

      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
    }
  }

  else if (v13 != BYTE14(__src[0]))
  {
    goto LABEL_23;
  }

  v36 = v7;
  if ((v11 & 0x2000000000000000) != 0)
  {
    v23 = HIBYTE(v11) & 0xF;
  }

  else
  {
    v23 = v10 & 0xFFFFFFFFFFFFLL;
  }

  *(&v42 + 7) = 0;
  *&v42 = 0;
  if (4 * v23 == v12 >> 14)
  {
    goto LABEL_57;
  }

  v35 = v6;
  LOBYTE(v24) = 0;
  v25 = (v10 >> 59) & 1;
  if ((v11 & 0x1000000000000000) == 0)
  {
    LOBYTE(v25) = 1;
  }

  v26 = 4 << v25;
  v37 = (v11 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v38 = v11 & 0xFFFFFFFFFFFFFFLL;
  do
  {
    v27 = v16 & 0xC;
    v28 = v16;
    if (v27 == v26)
    {
      v28 = sub_10004FB68(v16, v14, v15);
    }

    v29 = v28 >> 16;
    if (v28 >> 16 >= v23)
    {
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      v8 = String.UTF8View._foreignCount()();
      v7 = 0;
      v6 = 0xF000000000000000;
      goto LABEL_12;
    }

    if ((v15 & 0x1000000000000000) != 0)
    {
      v31 = String.UTF8View._foreignSubscript(position:)();
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else if ((v15 & 0x2000000000000000) != 0)
    {
      *&v43 = v14;
      *(&v43 + 1) = v38;
      v31 = *(&v43 + v29);
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v30 = v37;
      if ((v14 & 0x1000000000000000) == 0)
      {
        v30 = _StringObject.sharedUTF8.getter();
      }

      v31 = *(v30 + v29);
      if (v27 != v26)
      {
LABEL_46:
        if ((v15 & 0x1000000000000000) == 0)
        {
          goto LABEL_47;
        }

        goto LABEL_50;
      }
    }

    v16 = sub_10004FB68(v16, v14, v15);
    if ((v15 & 0x1000000000000000) == 0)
    {
LABEL_47:
      v16 = (v16 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_52;
    }

LABEL_50:
    if (v23 <= v16 >> 16)
    {
      goto LABEL_66;
    }

    v16 = String.UTF8View._foreignIndex(after:)();
LABEL_52:
    *(&v42 + v24) = v31;
    v24 = v24 + 1;
    if ((v24 >> 8))
    {
      goto LABEL_65;
    }

    if (v24 == 14)
    {
      *&v43 = v42;
      *(&v43 + 6) = *(&v42 + 6);
      Data._Representation.append(contentsOf:)();
      LOBYTE(v24) = 0;
    }
  }

  while (4 * v23 != v16 >> 14);
  v6 = v35;
  if (v24)
  {
    *&v43 = v42;
    *(&v43 + 6) = *(&v42 + 6);
    Data._Representation.append(contentsOf:)();
    sub_10001C120(v36, v6);
    goto LABEL_62;
  }

LABEL_57:

  sub_10001C120(v36, v6);
LABEL_63:
  v32 = __src[0];
  sub_100009708(*&__src[0], *(&__src[0] + 1));

  sub_1000092BC(v32, *(&v32 + 1));
  return v32;
}

uint64_t sub_10018D1F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[10] = a5;
  v6[11] = v5;
  v6[8] = a3;
  v6[9] = a4;
  v6[6] = a1;
  v6[7] = a2;
  v7 = type metadata accessor for Logger();
  v6[12] = v7;
  v6[13] = *(v7 - 8);
  v6[14] = swift_task_alloc();
  v8 = type metadata accessor for DIPError.Code();
  v6[15] = v8;
  v6[16] = *(v8 - 8);
  v6[17] = swift_task_alloc();
  v9 = type metadata accessor for DIPError();
  v6[18] = v9;
  v6[19] = *(v9 - 8);
  v6[20] = swift_task_alloc();
  v10 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  v6[21] = v10;
  v6[22] = *(v10 - 8);
  v6[23] = swift_task_alloc();
  v11 = type metadata accessor for ProvisioningFailureReson();
  v6[24] = v11;
  v6[25] = *(v11 - 8);
  v6[26] = swift_task_alloc();
  sub_100004E70(&qword_100203D20, &qword_1001AEE08);
  v6[27] = swift_task_alloc();
  v12 = type metadata accessor for PIIHashKey();
  v6[28] = v12;
  v6[29] = *(v12 - 8);
  v6[30] = swift_task_alloc();

  return _swift_task_switch(sub_10018D4C4, 0, 0);
}

uint64_t sub_10018D4C4()
{
  v1 = v0[29];
  v2 = v0[6];
  v57 = v0[7];
  v3 = v2 + 64;
  v4 = -1;
  v5 = -1 << *(v2 + 32);
  if (-v5 < 64)
  {
    v4 = ~(-1 << -v5);
  }

  v6 = v4 & *(v2 + 64);
  v7 = (63 - v5) >> 6;
  v54 = (v1 + 48);
  v55 = v0[6];
  v51 = (v0[25] + 8);
  v52 = (v1 + 32);
  v50 = (v1 + 8);

  v13 = 0;
  v53 = _swiftEmptyArrayStorage;
  while (1)
  {
    v14 = v13;
    if (!v6)
    {
      break;
    }

LABEL_8:
    v15 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v16 = (v13 << 10) | (16 * v15);
    v17 = (*(v55 + 48) + v16);
    v19 = *v17;
    v18 = v17[1];
    v20 = (*(v55 + 56) + v16);
    v22 = *v20;
    v21 = v20[1];
    v23 = *(v57 + 16);

    if (!v23)
    {
      goto LABEL_17;
    }

    v24 = sub_100099644(v19, v18);
    if ((v25 & 1) == 0)
    {

      goto LABEL_17;
    }

    v26 = (*(v57 + 56) + 16 * v24);
    if (v22 == *v26 && v21 == v26[1])
    {

      goto LABEL_20;
    }

    v28 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v28)
    {
LABEL_20:
    }

    else
    {
LABEL_17:
      v30 = v0[27];
      v29 = v0[28];
      PIIHashKey.init(rawValue:)();
      if ((*v54)(v30, 1, v29) == 1)
      {
        v8 = sub_10000A0D4(v0[27], &qword_100203D20, &qword_1001AEE08);
      }

      else
      {
        v31 = v0[26];
        v32 = v0[24];
        (*v52)(v0[30], v0[27], v0[28]);
        PIIHashKey.failureDescription.getter();
        v33 = ProvisioningFailureReson.rawValue.getter();
        v35 = v34;
        (*v51)(v31, v32);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v53 = sub_100100418(0, *(v53 + 2) + 1, 1, v53);
        }

        v37 = *(v53 + 2);
        v36 = *(v53 + 3);
        if (v37 >= v36 >> 1)
        {
          v53 = sub_100100418((v36 > 1), v37 + 1, 1, v53);
        }

        v8 = (*v50)(v0[30], v0[28]);
        *(v53 + 2) = v37 + 1;
        v38 = &v53[16 * v37];
        *(v38 + 4) = v33;
        *(v38 + 5) = v35;
      }
    }
  }

  while (1)
  {
    v13 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      return NSManagedObjectContext.perform<A>(schedule:_:)(v8, v9, v10, v11, v12);
    }

    if (v13 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v13);
    ++v14;
    if (v6)
    {
      goto LABEL_8;
    }
  }

  v39 = v0[22];
  v56 = v0[23];
  v40 = v0[21];
  v42 = v0[10];
  v41 = v0[11];
  v43 = v0[8];
  v44 = v0[9];

  v45 = swift_allocObject();
  v0[31] = v45;
  v45[2] = v41;
  v45[3] = v43;
  v45[4] = v44;
  v45[5] = v42;
  v45[6] = v53;
  v46 = swift_allocObject();
  v0[32] = v46;
  *(v46 + 16) = sub_10018FFEC;
  *(v46 + 24) = v45;
  v47 = enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:);
  v48 = *(v39 + 104);

  v48(v56, v47, v40);

  v8 = swift_task_alloc();
  v0[33] = v8;
  *v8 = v0;
  v8[1] = sub_10018D910;
  v9 = v0[23];
  v10 = sub_10019054C;
  v12 = &type metadata for () + 8;
  v11 = v46;

  return NSManagedObjectContext.perform<A>(schedule:_:)(v8, v9, v10, v11, v12);
}

uint64_t sub_10018D910()
{
  v2 = *v1;
  *(*v1 + 272) = v0;

  if (v0)
  {
    (*(v2[22] + 8))(v2[23], v2[21]);

    v3 = sub_10018DB50;
  }

  else
  {
    v5 = v2[22];
    v4 = v2[23];
    v6 = v2[21];

    (*(v5 + 8))(v4, v6);
    v3 = sub_10018DA9C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10018DA9C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10018DB50()
{
  v1 = v0[19];
  v12 = v0[20];
  v3 = v0[17];
  v2 = v0[18];
  v5 = v0[15];
  v4 = v0[16];
  v6 = v0[13];
  v7 = v0[14];
  v13 = v0[12];

  _StringGuts.grow(_:)(47);
  v8._object = 0x80000001001BD730;
  v8._countAndFlagsBits = 0xD00000000000002DLL;
  String.append(_:)(v8);
  swift_getErrorValue();
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  (*(v4 + 104))(v3, enum case for DIPError.Code.failedToStoreProvisioningFailureReason(_:), v5);
  sub_10002688C(_swiftEmptyArrayStorage);
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  sub_10018FF54(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  (*(v1 + 16))(v9, v12, v2);
  defaultLogger()();
  DIPRecordError(_:message:log:)();

  (*(v6 + 8))(v7, v13);
  (*(v1 + 8))(v12, v2);

  v10 = v0[1];

  return v10();
}

void sub_10018DDF0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_10016A520(a2, a3);
  if (!v3)
  {
    v5 = v4;
    isa = Array._bridgeToObjectiveC()().super.isa;
    [v5 setProvisioningFailureReasons:isa];

    sub_100050240();
  }
}

uint64_t *sub_10018DE80@<X0>(uint64_t *__return_ptr a1@<X8>, _BYTE *__src@<X0>, unint64_t a3@<X1>)
{
  result = 0;
  v6 = 0xC000000000000000;
  if (__src && a3)
  {
    if (a3 <= 14)
    {
      result = sub_1000F0C64(__src, &__src[a3]);
      v6 = v9 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      type metadata accessor for __DataStorage();
      swift_allocObject();
      v8 = __DataStorage.init(bytes:length:)();
      if (a3 >= 0x7FFFFFFF)
      {
        type metadata accessor for Data.RangeReference();
        result = swift_allocObject();
        result[2] = 0;
        result[3] = a3;
        v6 = v8 | 0x8000000000000000;
      }

      else
      {
        result = (a3 << 32);
        v6 = v8 | 0x4000000000000000;
      }
    }
  }

  *a1 = result;
  a1[1] = v6;
  return result;
}

char *sub_10018DF48(void *(*a1)(uint64_t *__return_ptr, char *, char *), uint64_t a2)
{
  v4 = v2;
  v7 = *v2;
  v6 = v2[1];
  v8 = v6 >> 62;
  if ((v6 >> 62) <= 1)
  {
    if (!v8)
    {
      sub_1000092BC(v7, v6);
      v19[0] = v7;
      LOWORD(v19[1]) = v6;
      BYTE2(v19[1]) = BYTE2(v6);
      BYTE3(v19[1]) = BYTE3(v6);
      BYTE4(v19[1]) = BYTE4(v6);
      BYTE5(v19[1]) = BYTE5(v6);
      BYTE6(v19[1]) = BYTE6(v6);
      result = a1(&v17, v19, v19 + BYTE6(v6));
      if (!v3)
      {
        result = v17;
      }

      v10 = LODWORD(v19[1]) | ((WORD2(v19[1]) | (BYTE6(v19[1]) << 16)) << 32);
      *v4 = v19[0];
      v4[1] = v10;
      return result;
    }

    v12 = v6 & 0x3FFFFFFFFFFFFFFFLL;

    sub_1000092BC(v7, v6);
    *v4 = xmmword_1001AB540;
    sub_1000092BC(0, 0xC000000000000000);
    v13 = v7 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v13 < v7)
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      if (__DataStorage._bytes.getter() && __OFSUB__(v7, __DataStorage._offset.getter()))
      {
LABEL_26:
        __break(1u);
      }

      type metadata accessor for __DataStorage();
      swift_allocObject();
      v14 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();

      v12 = v14;
    }

    if (v13 >= v7)
    {

      v15 = sub_10018E358(v7, v7 >> 32, a1);

      v11 = v12 | 0x4000000000000000;
      if (!v3)
      {
        *v4 = v7;
        v4[1] = v11;
        return v15;
      }

      *v4 = v7;
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_25;
  }

  if (v8 == 2)
  {

    sub_1000092BC(v7, v6);
    v17 = v7;
    v18 = v6 & 0x3FFFFFFFFFFFFFFFLL;
    *v4 = xmmword_1001AB540;
    sub_1000092BC(0, 0xC000000000000000);
    Data.LargeSlice.ensureUniqueReference()();
    result = sub_10018E358(*(v17 + 2), *(v17 + 3), a1);
    v11 = v18 | 0x8000000000000000;
    if (!v3)
    {
      *v4 = v17;
      v4[1] = v11;
      return result;
    }

    *v4 = v17;
LABEL_21:
    v4[1] = v11;
    return result;
  }

  memset(v19, 0, 15);
  result = a1(&v17, v19, v19);
  if (!v3)
  {
    return v17;
  }

  return result;
}

void *sub_10018E2EC(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    result = a1(&v6, a3, a4 - a3);
    if (!v4)
    {
      return v6;
    }
  }

  else
  {
    result = (a1)(&v6, 0, 0, 0, a4);
    if (!v4)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

char *sub_10018E358(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = __DataStorage._bytes.getter();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = __DataStorage._offset.getter();
  v9 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = __DataStorage._length.getter();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  result = a3(&v14, &v8[v9], &v8[v9 + v13]);
  if (!v3)
  {
    return v14;
  }

  return result;
}

uint64_t sub_10018E40C@<X0>(uint64_t result@<X0>, void *a4@<X8>)
{
  if (result)
  {
    result = _StringGuts.copyUTF8(into:)();
    if ((v5 & 1) == 0)
    {
      *a4 = 0;
      a4[1] = 0xE000000000000000;
      a4[2] = 15;
      a4[3] = result;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10018E47C()
{

  sub_1000092BC(*(v0 + 48), *(v0 + 56));

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_10018E4F4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10018E52C()
{
  v1 = *(sub_100004E70(&qword_100202490, &unk_1001ACF80) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 48) & ~v2;
  v4 = (((*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = _s8DBResultVMa(0);
  v6 = *(*(v5 - 8) + 80);
  v7 = (v4 + v6 + 16) & ~v6;
  v29 = ((*(*(v5 - 8) + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8) + 15;

  sub_1000092BC(*(v0 + 32), *(v0 + 40));
  v8 = v0 + v3;
  v9 = type metadata accessor for PayloadMetadata(0);
  if (!(*(*(v9 - 1) + 48))(v8, 1, v9))
  {
    v27 = v6;
    v28 = v2;

    sub_1000092BC(*(v8 + 24), *(v8 + 32));
    sub_1000092BC(*(v8 + 40), *(v8 + 48));
    v10 = v9[8];
    v11 = type metadata accessor for Date();
    v12 = *(v11 - 8);
    v13 = *(v12 + 8);
    v13(v8 + v10, v11);
    v13(v8 + v9[9], v11);
    v14 = v9[10];
    if (!(*(v12 + 48))(v8 + v14, 1, v11))
    {
      v13(v8 + v14, v11);
    }

    v15 = v9[16];
    v16 = type metadata accessor for ISO18013MobileSecurityObject.IdentifierList();
    v17 = *(v16 - 8);
    v6 = v27;
    v2 = v28;
    if (!(*(v17 + 48))(v8 + v15, 1, v16))
    {
      (*(v17 + 8))(v8 + v15, v16);
    }
  }

  v18 = v29 & 0xFFFFFFFFFFFFFFF8;

  v19 = v0 + v7 + *(v5 + 24);
  v20 = type metadata accessor for KeyLookupInfo(0);
  if (!(*(*(v20 - 8) + 48))(v19, 1, v20))
  {

    sub_1000092BC(*(v19 + 16), *(v19 + 24));
    v21 = *(v20 + 24);
    v22 = type metadata accessor for CredentialKeyType();
    (*(*(v22 - 8) + 8))(v19 + v21, v22);
    v23 = (v19 + *(v20 + 28));
    v24 = v23[1];
    if (v24 >> 60 != 15)
    {
      sub_1000092BC(*v23, v24);
    }
  }

  v25 = *(v0 + v18 + 8);
  if (v25 >> 60 != 15)
  {
    sub_1000092BC(*(v0 + v18), v25);
  }

  return _swift_deallocObject(v0, v18 + 16, v2 | v6 | 7);
}

void sub_10018E95C()
{
  v1 = *(sub_100004E70(&qword_100202490, &unk_1001ACF80) - 8);
  v2 = (*(v1 + 80) + 48) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(_s8DBResultVMa(0) - 8);
  v6 = (v4 + *(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_1001816CC(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), v0 + v2, *(v0 + v3), *(v0 + v4), *(v0 + v4 + 8), v0 + v6, *(v0 + v7), *(v0 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t sub_10018EAB4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_10018EB1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3)
  {
  }
}

uint64_t sub_10018EB60(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10018EBC8()
{
  v1 = type metadata accessor for PayloadMetadata(0);
  v26 = *(*(v1 - 1) + 80);
  v2 = (v26 + 48) & ~v26;
  v3 = (((*(*(v1 - 1) + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v24 = _s8DBResultVMa(0);
  v25 = *(*(v24 - 8) + 80);
  v4 = (v3 + v25 + 16) & ~v25;
  v5 = (((*(*(v24 - 8) + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  sub_1000092BC(*(v0 + 32), *(v0 + 40));
  v6 = v0 + v2;

  sub_1000092BC(*(v6 + 24), *(v6 + 32));
  sub_1000092BC(*(v6 + 40), *(v6 + 48));
  v7 = v1[8];
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  v10 = *(v9 + 8);
  v10(v6 + v7, v8);
  v10(v6 + v1[9], v8);
  v11 = v1[10];
  if (!(*(v9 + 48))(v6 + v11, 1, v8))
  {
    v10(v6 + v11, v8);
  }

  v12 = v1[16];
  v13 = type metadata accessor for ISO18013MobileSecurityObject.IdentifierList();
  v14 = *(v13 - 8);
  if (!(*(v14 + 48))(v6 + v12, 1, v13))
  {
    (*(v14 + 8))(v6 + v12, v13);
  }

  v15 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;

  v16 = v0 + v4 + *(v24 + 24);
  v17 = type metadata accessor for KeyLookupInfo(0);
  if (!(*(*(v17 - 8) + 48))(v16, 1, v17))
  {

    sub_1000092BC(*(v16 + 16), *(v16 + 24));
    v18 = *(v17 + 24);
    v19 = type metadata accessor for CredentialKeyType();
    (*(*(v19 - 8) + 8))(v16 + v18, v19);
    v20 = (v16 + *(v17 + 28));
    v21 = v20[1];
    if (v21 >> 60 != 15)
    {
      sub_1000092BC(*v20, v21);
    }
  }

  sub_1000092BC(*(v0 + v5), *(v0 + v5 + 8));
  v22 = *(v0 + v15 + 8);
  if (v22 >> 60 != 15)
  {
    sub_1000092BC(*(v0 + v15), v22);
  }

  return _swift_deallocObject(v0, v15 + 16, v26 | v25 | 7);
}

void sub_10018EFC8()
{
  v1 = *(type metadata accessor for PayloadMetadata(0) - 8);
  v2 = (*(v1 + 80) + 48) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(_s8DBResultVMa(0) - 8);
  v6 = (v4 + *(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 23) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v0 + v8);
  v11 = (v0 + v9);
  *(&v13 + 1) = *v11;
  *(&v12 + 1) = *v10;
  *&v13 = v10[1];
  *&v12 = *(v0 + v7);
  sub_10017ECF8(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), v0 + v2, *(v0 + v3), *(v0 + v4), *(v0 + v4 + 8), v0 + v6, v12, v13, v11[1]);
}

uint64_t sub_10018F128(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10018F188()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10018F218()
{

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10018F28C(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      return sub_1000F0C44(result);
    }

    else
    {
      type metadata accessor for __DataStorage();
      swift_allocObject();
      __DataStorage.init(length:)();
      if (v1 >= 0x7FFFFFFF)
      {
        type metadata accessor for Data.RangeReference();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = v1;
      }

      else
      {
        return v1 << 32;
      }
    }
  }

  return result;
}

BOOL sub_10018F32C(void *a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [a1 options];
  if (v6)
  {
    v7 = v6;
    v8 = [v6 payloadProtectionPolicy];

    if ((v8 & 0x8000000000000000) == 0)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v8 = 0;
LABEL_5:
  defaultLogger()();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v23 = v3;
    v12 = v11;
    v13 = swift_slowAlloc();
    v25 = v13;
    *v12 = 136315138;
    v14 = DCCredentialPayloadProtectionPolicyToString();
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v8;
    v16 = v15;
    v22 = v2;
    v18 = v17;

    v19 = sub_10010150C(v16, v18, &v25);

    *(v12 + 4) = v19;
    v8 = v24;
    _os_log_impl(&_mh_execute_header, v9, v10, "Credential payload protection policy: %s", v12, 0xCu);
    sub_100005090(v13);

    (*(v23 + 8))(v5, v22);
  }

  else
  {

    (*(v3 + 8))(v5, v2);
  }

  return v8 != 0;
}

void (*sub_10018F590(uint64_t a1, void *a2, uint64_t a3, uint64_t a4))(char *, uint64_t)
{
  v5 = v4;
  v35 = a3;
  v36 = a4;
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v31 - v13;
  defaultLogger()();
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v34 = v9;
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v15, v16, "encryptPayloadWithNewProtectionKey called", v17, 2u);
    v5 = v4;
    v9 = v34;
  }

  v18 = *(v9 + 1);
  v18(v14, v8);
  v19 = sub_100033BA0(a1, a2);
  if (!v5)
  {
    v20 = v19;
    v34 = 0;
    defaultLogger()();

    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v37 = v32;
      *v23 = 136315138;
      v33 = v8;
      v24 = *(v20 + 16);
      v25 = *(v20 + 24);

      v26 = sub_10010150C(v24, v25, &v37);

      *(v23 + 4) = v26;
      _os_log_impl(&_mh_execute_header, v21, v22, "Created new payload protection key %s", v23, 0xCu);
      sub_100005090(v32);

      v27 = v12;
      v28 = v33;
    }

    else
    {

      v27 = v12;
      v28 = v8;
    }

    v18(v27, v28);

    v29 = v34;
    v18 = sub_1000F04F0(v35, v36, v20);

    if (v29)
    {
      v18 = v29;
    }
  }

  return v18;
}