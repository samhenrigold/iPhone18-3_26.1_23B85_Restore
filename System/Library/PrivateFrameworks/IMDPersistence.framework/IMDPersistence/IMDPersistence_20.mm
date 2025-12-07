uint64_t sub_1B7CD6220(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

uint64_t sub_1B7CD6250(unsigned int a1)
{
  if (a1 >= 6)
  {
    return 5;
  }

  else
  {
    return (0x403020105uLL >> (8 * a1));
  }
}

uint64_t sub_1B7CD6274()
{
  v0 = sub_1B7CFE420();
  sub_1B7AED154(v0, qword_1EBA5DA08);
  sub_1B7AD9040(v0, qword_1EBA5DA08);
  sub_1B7CFE3F0();
  return sub_1B7CFE410();
}

void sub_1B7CD62E0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = type metadata accessor for SQLConnectionConfiguration(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = (v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v7);
  v9 = v24 - v8;
  v10 = sub_1B7CFEA30();
  IMDSqlOperationInitAndCreateIfNeededWithPath(v10, v25);

  Connection = IMDSqlOperationGetConnection(v25);
  if (Connection)
  {
    v14 = *(Connection + 8);
    if (v14)
    {
      IMDDropAllTriggersWithOperation(v25, 1, v12, v13);
      v15 = *(v4 + 28);
      v16 = sub_1B7CFE420();
      (*(*(v16 - 8) + 56))(&v9[v15], 1, 1, v16);
      *v9 = 1;
      *(v9 + 1) = 0;
      *(v9 + 8) = 1;
      sub_1B7AE3EA4(v9, v6);
      type metadata accessor for SQLConnection(0);
      v17 = swift_allocObject();
      v18 = (v17 + OBJC_IVAR____TtC14IMDPersistence13SQLConnection_cachedStatementsByStatementString);
      v19 = MEMORY[0x1E69E7CC8];
      *v18 = MEMORY[0x1E69E7CC8];
      v18[1] = v19;
      v18[2] = 32;
      *(v17 + 16) = v14;
      *(v17 + OBJC_IVAR____TtC14IMDPersistence13SQLConnection_owned) = 0;
      sub_1B7AE3EA4(v6, v17 + OBJC_IVAR____TtC14IMDPersistence13SQLConnection_configuration);
      if (v6[2])
      {
LABEL_8:
        sub_1B7AE3F08(v6);
        v24[2] = v17;

        v21 = sub_1B7C17B04();
        (a3)(0, v21);

        sub_1B7AE3F08(v9);
        IMDCreateTriggersWithOperation(v25, 1);
        return;
      }

      v20 = v6[1] * 1000.0;
      if (COERCE__INT64(fabs(v20)) > 0x7FEFFFFFFFFFFFFFLL)
      {
        __break(1u);
      }

      else if (v20 > -2147483650.0)
      {
        if (v20 < 2147483650.0)
        {
          sqlite3_busy_timeout(v14, v20);
          goto LABEL_8;
        }

LABEL_13:
        __break(1u);
      }

      __break(1u);
      goto LABEL_13;
    }
  }

  sub_1B7CD68B0();
  v22 = swift_allocError();
  *v23 = 0;
  v23[1] = 0;
  a3();
}

uint64_t sub_1B7CD66B0(uint64_t a1, uint64_t a2, void (**a3)(void, void))
{
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  v7 = objc_opt_self();
  _Block_copy(a3);
  v8 = [v7 sharedFeatureFlags];
  v9 = [v8 isOneChatEnabled];

  if (v9)
  {
    v10 = swift_allocObject();
    v10[2] = a1;
    v10[3] = a2;
    v10[4] = sub_1B7AF5954;
    v10[5] = v6;
    v18[4] = sub_1B7CD6904;
    v18[5] = v10;
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 1107296256;
    v18[2] = sub_1B7AE14D0;
    v18[3] = &unk_1F2F9FA28;
    v11 = _Block_copy(v18);

    IMDPersistencePerformBlock(v11, 1, v12, v13);
    _Block_release(v11);
  }

  else
  {
    sub_1B7CD68B0();
    v15 = swift_allocError();
    *v16 = 0xD000000000000014;
    v16[1] = 0x80000001B7D5B9E0;
    v17 = sub_1B7CFDEB0();
    (a3)[2](a3, v17);
  }
}

unint64_t sub_1B7CD68B0()
{
  result = qword_1EBA53960;
  if (!qword_1EBA53960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA53960);
  }

  return result;
}

uint64_t sub_1B7CD6910(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B7CD6960(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

void *sub_1B7CD69B4(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

id sub_1B7CD69E4()
{
  sub_1B7C107FC(&qword_1EBA52980, &unk_1B7D0DB40);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1B7D0A6F0;
  v1 = *MEMORY[0x1E695DBA8];
  v5 = *MEMORY[0x1E695DC58];
  v2 = *MEMORY[0x1E695DC58];
  *(v0 + 32) = *MEMORY[0x1E695DBA8];
  *(v0 + 40) = v2;
  qword_1EBA5DB50 = v0;
  v3 = v1;

  return v5;
}

uint64_t sub_1B7CD6A6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  *(v3 + 16) = 0;
  *(v3 + OBJC_IVAR____TtC14IMDPersistence29AttachmentDirectoryEnumerator_error) = 0;
  v6 = OBJC_IVAR____TtC14IMDPersistence29AttachmentDirectoryEnumerator_directoryURL;
  v7 = sub_1B7CFDFF0();
  v8 = *(v7 - 8);
  (*(v8 + 16))(v3 + v6, a1, v7);
  v9 = [objc_opt_self() defaultManager];
  swift_allocObject();
  swift_weakInit();

  v10 = sub_1B7CFEEC0();

  if (v10)
  {
    (*(v8 + 8))(a1, v7);
    v11 = *(v4 + 16);
    *(v4 + 16) = v10;
  }

  else
  {
    sub_1B7CD725C();
    swift_allocError();
    swift_willThrow();

    (*(v8 + 8))(a1, v7);
  }

  return v4;
}

BOOL sub_1B7CD6C3C(uint64_t a1, void (*a2)(char *, uint64_t, uint64_t), uint64_t a3)
{
  v43 = a1;
  v4 = sub_1B7CFDFF0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v37 - v9;
  v11 = sub_1B7CFE420();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v44 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v42 = v12;
    sub_1B7CFE410();
    v41 = *(v5 + 16);
    v41(v10, v43, v4);

    v15 = a2;
    v16 = sub_1B7CFE400();
    v17 = sub_1B7CFEEF0();

    LODWORD(v43) = v17;
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v40 = v11;
      v19 = v18;
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v45 = v39;
      *v19 = 136315650;
      v41(v7, Strong + OBJC_IVAR____TtC14IMDPersistence29AttachmentDirectoryEnumerator_directoryURL, v4);
      sub_1B7C5A16C();
      v37 = v16;
      v20 = sub_1B7CFF570();
      v22 = v21;
      v41 = a2;
      v23 = *(v5 + 8);
      v23(v7, v4);
      v24 = sub_1B7AED1B8(v20, v22, &v45);

      *(v19 + 4) = v24;
      *(v19 + 12) = 2080;
      v25 = sub_1B7CFF570();
      v27 = v26;
      v23(v10, v4);
      a2 = v41;
      v28 = sub_1B7AED1B8(v25, v27, &v45);

      *(v19 + 14) = v28;
      *(v19 + 22) = 2112;
      v29 = a2;
      v30 = _swift_stdlib_bridgeErrorToNSError();
      *(v19 + 24) = v30;
      v32 = v37;
      v31 = v38;
      *v38 = v30;
      _os_log_impl(&dword_1B7AD5000, v32, v43, "directoryIterator for '%s' failed at '%s' with error: %@ ", v19, 0x20u);
      sub_1B7C20434(v31);
      MEMORY[0x1B8CB0E70](v31, -1, -1);
      v33 = v39;
      swift_arrayDestroy();
      MEMORY[0x1B8CB0E70](v33, -1, -1);
      MEMORY[0x1B8CB0E70](v19, -1, -1);

      (*(v42 + 8))(v44, v40);
    }

    else
    {

      (*(v5 + 8))(v10, v4);
      (*(v42 + 8))(v44, v11);
    }

    v34 = *(Strong + OBJC_IVAR____TtC14IMDPersistence29AttachmentDirectoryEnumerator_error);
    *(Strong + OBJC_IVAR____TtC14IMDPersistence29AttachmentDirectoryEnumerator_error) = a2;
    v35 = a2;
  }

  return Strong != 0;
}

uint64_t sub_1B7CD70B0()
{
  v1 = OBJC_IVAR____TtC14IMDPersistence29AttachmentDirectoryEnumerator_directoryURL;
  v2 = sub_1B7CFDFF0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AttachmentDirectoryEnumerator(uint64_t a1)
{
  result = qword_1EBA53970;
  if (!qword_1EBA53970)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B7CD71B8(uint64_t a1)
{
  result = sub_1B7CFDFF0();
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

unint64_t sub_1B7CD725C()
{
  result = qword_1EBA53980;
  if (!qword_1EBA53980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA53980);
  }

  return result;
}

unint64_t sub_1B7CD72C4()
{
  result = qword_1EBA53988;
  if (!qword_1EBA53988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA53988);
  }

  return result;
}

unint64_t sub_1B7CD731C()
{
  result = qword_1EBA53990;
  if (!qword_1EBA53990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA53990);
  }

  return result;
}

uint64_t sub_1B7CD73E4(uint64_t a1, uint64_t a2, void (*a3)(void *__return_ptr, uint64_t), uint64_t a4, void (*a5)(void, uint64_t), void (*a6)(void, uint64_t))
{
  v10 = v7;
  v21[3] = *MEMORY[0x1E69E9840];
  v13 = objc_autoreleasePoolPush();
  v14 = sub_1B7CFEA30();
  swift_beginAccess();
  IMDSqlOperationStartQuery((v6 + 16), v14);
  swift_endAccess();

  swift_beginAccess();
  v20 = 0;
  IMDSqlOperationGetError(v6 + 16, &v20);
  v15 = v20;
  swift_endAccess();
  if (!v15)
  {
    if (a3)
    {
      a5(a3, a4);
      a3(v21, v6);
      if (v7)
      {
        a6(a3, a4);
        v16 = 0;
LABEL_10:
        swift_beginAccess();
        IMDSqlOperationFinishQuery(v6 + 16);
        v20 = 0;
        IMDSqlOperationGetError(v6 + 16, &v20);
        v18 = v20;
        swift_endAccess();
        swift_willThrow();
        if (v18)
        {
          v18;
        }

        goto LABEL_12;
      }

      a6(a3, a4);
      v16 = v21[0];
    }

    else
    {
      v16 = 0;
    }

    swift_beginAccess();
    IMDSqlOperationFinishQuery(v6 + 16);
    v20 = 0;
    IMDSqlOperationGetError(v6 + 16, &v20);
    v17 = v20;
    swift_endAccess();
    if (!v17)
    {
      objc_autoreleasePoolPop(v13);
      return v16;
    }

    swift_willThrow();
    v10 = v17;
    goto LABEL_10;
  }

  swift_willThrow();
  v15;
  v16 = 0;
LABEL_12:
  objc_autoreleasePoolPop(v13);

  return v16;
}

uint64_t sub_1B7CD7640(void *a1)
{
  v3 = v2;
  v5 = swift_allocObject();
  *(v5 + 16) = *a1;
  if (qword_1EBA515F0 != -1)
  {
    swift_once();
  }

  sub_1B7CFF210();
  MEMORY[0x1B8CADCA0](0xD00000000000002BLL, 0x80000001B7D5BAA0);
  v6 = *(v1 + 64);
  v7 = *(v6 + 16);
  v8 = *(v6 + 24);

  MEMORY[0x1B8CADCA0](v7, v8);

  MEMORY[0x1B8CADCA0](0xD00000000000002DLL, 0x80000001B7D55340);
  v9 = swift_allocObject();
  *(v9 + 16) = v5;
  *(v9 + 24) = v1;

  v10 = sub_1B7CD73E4(0, 0xE000000000000000, sub_1B7CD93F4, v9, sub_1B7CDB4A0, sub_1B7CDB4A4);
  if (v3)
  {

    return v3;
  }

  v3 = v10;

  if (!v3)
  {
LABEL_10:

    return MEMORY[0x1E69E7CC0];
  }

  if (!*(v3 + 16))
  {

    goto LABEL_10;
  }

  swift_beginAccess();
  v11 = *(v5 + 16);

  if (v11 != -1)
  {
    *a1 = v11 + 1;
    return v3;
  }

  __break(1u);
  return result;
}

unint64_t sub_1B7CD7888(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1B7CFF210();

  v5 = sub_1B7CFF570();
  MEMORY[0x1B8CADCA0](v5);

  MEMORY[0x1B8CADCA0](0x656C646E6168202CLL, 0xEA0000000000203ALL);
  MEMORY[0x1B8CADCA0](a2, a3);
  return 0xD000000000000024;
}

uint64_t sub_1B7CD795C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[1] = a4;
  v6 = sub_1B7C107FC(&qword_1EBA539A8, &qword_1B7D139B8);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v11 - v8;
  sub_1B7AE9124(a1, a1[3]);
  sub_1B7CDB334();
  sub_1B7CFF830();
  v13 = 0;
  sub_1B7CFF520();
  if (!v4)
  {
    v12 = 1;
    sub_1B7CFF4E0();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_1B7CD7AF0()
{
  if (*v0)
  {
    return 0x656C646E6168;
  }

  else
  {
    return 0x4449776F72;
  }
}

void sub_1B7CD7B24(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x4449776F72 && a2 == 0xE500000000000000;
  if (v6 || (sub_1B7CFF590() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x656C646E6168 && a2 == 0xE600000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1B7CFF590();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t sub_1B7CD7BF8(uint64_t a1)
{
  v2 = sub_1B7CDB334();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7CD7C34(uint64_t a1)
{
  v2 = sub_1B7CDB334();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B7CD7C70@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1B7CDB188(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
  }

  return result;
}

void sub_1B7CD7CCC(Swift::OpaquePointer a1@<0:X1>, uint64_t a2@<X0>, char **a3@<X8>)
{
  SqlOperation.bind(_:)(a1);
  if (!v5)
  {
    v23 = a3;
    v32 = 0;

    swift_beginAccess();

    HasRows = IMDSqlOperationHasRows(a2 + 16);
    swift_endAccess();
    if (!HasRows)
    {
      v8 = MEMORY[0x1E69E7CC0];
      goto LABEL_22;
    }

    type metadata accessor for SqlOperation.Row();
    v7 = MEMORY[0x1E69E7CC0];
    v8 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v22 = v8;
      while (1)
      {
        inited = swift_initStackObject();
        v11 = sub_1B7C23650(v7);
        *(inited + 16) = a2;
        *(inited + 24) = v11;
        SqlOperation.Row.column(forColumnName:)(0x6469uLL, 0xE200000000000000, &v24);
        if (!*(&v24 + 1))
        {
          goto LABEL_6;
        }

        v28 = v24;
        v29 = v25;
        v30 = v26;
        v31 = v27;
        v12 = v25;
        sub_1B7C26C78(&v28);
        v13 = SqlOperation.Row.string(forColumnIndex:)(v12);
        if (!v13.value._object)
        {
          goto LABEL_13;
        }

        SqlOperation.Row.column(forColumnName:)(0x4449574F52uLL, 0xE500000000000000, &v24);
        if (*(&v24 + 1))
        {
          break;
        }

LABEL_6:
        swift_setDeallocating();

        sub_1B7AEE190(&v24, &qword_1EBA52298, &unk_1B7D10570);
LABEL_7:
        swift_beginAccess();

        v9 = IMDSqlOperationHasRows(a2 + 16);
        swift_endAccess();
        if (!v9)
        {
          v8 = v22;
          goto LABEL_22;
        }
      }

      v28 = v24;
      v29 = v25;
      v30 = v26;
      v31 = v27;
      v14 = v25;
      sub_1B7C26C78(&v28);
      v33 = SqlOperation.Row.uint64(forColumnIndex:)(v14);
      if (v33.is_nil)
      {

LABEL_13:
        swift_setDeallocating();

        goto LABEL_7;
      }

      value = v33.value;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v22 = sub_1B7CA3704(0, *(v22 + 2) + 1, 1, v22);
      }

      v17 = *(v22 + 2);
      v16 = *(v22 + 3);
      v20 = v17 + 1;
      v21 = v17;
      if (v17 >= v16 >> 1)
      {
        v22 = sub_1B7CA3704((v16 > 1), v17 + 1, 1, v22);
      }

      v8 = v22;
      *(v22 + 2) = v20;
      v18 = &v22[24 * v21];
      *(v18 + 4) = value;
      *(v18 + 40) = v13;
      swift_beginAccess();

      v19 = IMDSqlOperationHasRows(a2 + 16);
      swift_endAccess();
      if (!v19)
      {
LABEL_22:

        *v23 = v8;
        return;
      }
    }
  }
}

id sub_1B7CD7FB8@<X0>(uint64_t a1@<X0>, sqlite3_int64 a2@<X1>, void *a3@<X8>)
{
  v8[4] = *MEMORY[0x1E69E9840];
  if (a2 < 0)
  {
    __break(1u);
  }

  swift_beginAccess();
  IMDSqlStatementBindInt64((a1 + 48), a2);
  v8[0] = 0;
  IMDSqlOperationGetError(a1 + 16, v8);
  v6 = v8[0];
  swift_endAccess();
  if (v6)
  {
    swift_willThrow();
    return v6;
  }

  else
  {
    result = SqlOperation.uint64s(forColumnName:)(0x695F656C646E6168uLL, 0xE900000000000064);
    *a3 = result;
  }

  return result;
}

id sub_1B7CD80B8@<X0>(uint64_t a1@<X0>, sqlite3_int64 a2@<X1>, uint64_t a3@<X8>)
{
  v26 = *MEMORY[0x1E69E9840];
  if (a2 < 0)
  {
    __break(1u);
  }

  swift_beginAccess();
  IMDSqlStatementBindInt64((a1 + 48), a2);
  v20 = 0;
  IMDSqlOperationGetError(a1 + 16, &v20);
  v6 = v20;
  swift_endAccess();
  if (v6)
  {
    swift_willThrow();
    return v6;
  }

  swift_beginAccess();

  HasRows = IMDSqlOperationHasRows(a1 + 16);
  swift_endAccess();
  if (HasRows)
  {
    type metadata accessor for SqlOperation.Row();
    v9 = MEMORY[0x1E69E7CC8];
    while (1)
    {
      inited = swift_initStackObject();
      *(inited + 16) = a1;
      *(inited + 24) = v9;
      swift_beginAccess();
      v12 = IMDSqlStatementColumnCount((a1 + 48));
      swift_endAccess();
      if (v12)
      {
        swift_beginAccess();
        IMDSqlStatementColumnByIndex((a1 + 48), 0, &v20);
        v13 = v20;
        v14 = v21;
        v15 = v22;
        swift_endAccess();
        v23 = v13;
        v24 = v14;
        v25 = v15;
        if (IMDSqlColumnGetType(&v23) == 1)
        {
          break;
        }
      }

      swift_beginAccess();

      v10 = IMDSqlOperationHasRows(a1 + 16);
      swift_endAccess();
      if (!v10)
      {
        goto LABEL_11;
      }
    }

    swift_beginAccess();
    IMDSqlStatementColumnByIndex((a1 + 48), 0, &v20);
    v16 = v20;
    v17 = v21;
    v18 = v22;
    swift_endAccess();
    v23 = v16;
    v24 = v17;
    v25 = v18;
    v19 = IMDInt64FromSqlColumn(&v23);

    if ((v19 & 0x8000000000000000) == 0)
    {
      goto LABEL_12;
    }

    __break(1u);
  }

LABEL_11:

  v19 = 0;
LABEL_12:
  *a3 = v19;
  *(a3 + 8) = 0;
  return result;
}

unint64_t sub_1B7CD8340(unint64_t result, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  v3 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    return 0;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v23[0] = result;
      v23[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v2)
        {
          v3 = v2 - 1;
          if (v2 != 1)
          {
            v6 = 0;
            v14 = v23 + 1;
            while (1)
            {
              v15 = *v14 - 48;
              if (v15 > 9)
              {
                break;
              }

              if (!is_mul_ok(v6, 0xAuLL))
              {
                break;
              }

              v9 = __CFADD__(10 * v6, v15);
              v6 = 10 * v6 + v15;
              if (v9)
              {
                break;
              }

              ++v14;
              if (!--v3)
              {
                goto LABEL_64;
              }
            }
          }

          goto LABEL_63;
        }

LABEL_74:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v2)
        {
          v6 = 0;
          v17 = v23;
          while (1)
          {
            v18 = *v17 - 48;
            if (v18 > 9)
            {
              break;
            }

            if (!is_mul_ok(v6, 0xAuLL))
            {
              break;
            }

            v9 = __CFADD__(10 * v6, v18);
            v6 = 10 * v6 + v18;
            if (v9)
            {
              break;
            }

            ++v17;
            if (!--v2)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_63;
      }

      if (v2)
      {
        v3 = v2 - 1;
        if (v2 != 1)
        {
          v6 = 0;
          v10 = v23 + 1;
          while (1)
          {
            v11 = *v10 - 48;
            if (v11 > 9)
            {
              break;
            }

            if (!is_mul_ok(v6, 0xAuLL))
            {
              break;
            }

            v9 = 10 * v6 >= v11;
            v6 = 10 * v6 - v11;
            if (!v9)
            {
              break;
            }

            ++v10;
            if (!--v3)
            {
              goto LABEL_64;
            }
          }
        }

        goto LABEL_63;
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = sub_1B7CFF280();
        v3 = v22;
      }

      v5 = *result;
      if (v5 == 43)
      {
        if (v3 >= 1)
        {
          if (--v3)
          {
            v6 = 0;
            if (result)
            {
              v12 = (result + 1);
              while (1)
              {
                v13 = *v12 - 48;
                if (v13 > 9)
                {
                  goto LABEL_63;
                }

                if (!is_mul_ok(v6, 0xAuLL))
                {
                  goto LABEL_63;
                }

                v9 = __CFADD__(10 * v6, v13);
                v6 = 10 * v6 + v13;
                if (v9)
                {
                  goto LABEL_63;
                }

                ++v12;
                if (!--v3)
                {
                  goto LABEL_64;
                }
              }
            }

            goto LABEL_62;
          }

          goto LABEL_63;
        }

        goto LABEL_73;
      }

      if (v5 != 45)
      {
        if (v3)
        {
          v6 = 0;
          if (result)
          {
            while (1)
            {
              v16 = *result - 48;
              if (v16 > 9)
              {
                goto LABEL_63;
              }

              if (!is_mul_ok(v6, 0xAuLL))
              {
                goto LABEL_63;
              }

              v9 = __CFADD__(10 * v6, v16);
              v6 = 10 * v6 + v16;
              if (v9)
              {
                goto LABEL_63;
              }

              ++result;
              if (!--v3)
              {
                goto LABEL_64;
              }
            }
          }

          goto LABEL_62;
        }

LABEL_63:
        v6 = 0;
        LOBYTE(v3) = 1;
        goto LABEL_64;
      }

      if (v3 >= 1)
      {
        if (--v3)
        {
          v6 = 0;
          if (result)
          {
            v7 = (result + 1);
            while (1)
            {
              v8 = *v7 - 48;
              if (v8 > 9)
              {
                goto LABEL_63;
              }

              if (!is_mul_ok(v6, 0xAuLL))
              {
                goto LABEL_63;
              }

              v9 = 10 * v6 >= v8;
              v6 = 10 * v6 - v8;
              if (!v9)
              {
                goto LABEL_63;
              }

              ++v7;
              if (!--v3)
              {
                goto LABEL_64;
              }
            }
          }

LABEL_62:
          LOBYTE(v3) = 0;
LABEL_64:
          v24 = v3;
          v19 = v3;
          goto LABEL_65;
        }

        goto LABEL_63;
      }

      __break(1u);
    }

    __break(1u);
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  sub_1B7CDA2D8(result, a2, 10);
  v6 = v20;
  v19 = v21;
LABEL_65:

  if (v19)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

void sub_1B7CD8640(uint64_t a1@<X0>, sqlite3_int64 a2@<X1>, uint64_t *a3@<X8>)
{
  v55 = *MEMORY[0x1E69E9840];
  if (a2 < 0)
  {
    __break(1u);
LABEL_95:
    __break(1u);
LABEL_96:
    __break(1u);
LABEL_97:
    __break(1u);
LABEL_98:
    __break(1u);
  }

  swift_beginAccess();
  IMDSqlStatementBindInt64((a1 + 48), a2);
  *&v47 = 0;
  IMDSqlOperationGetError(a1 + 16, &v47);
  v6 = v47;
  swift_endAccess();
  if (v6)
  {
    swift_willThrow();
    v7 = v6;
    return;
  }

  v8 = MEMORY[0x1E69E7CD0];
  v46 = MEMORY[0x1E69E7CD0];

  swift_beginAccess();

  HasRows = IMDSqlOperationHasRows(a1 + 16);
  swift_endAccess();
  if (!HasRows)
  {
    goto LABEL_89;
  }

  type metadata accessor for SqlOperation.Row();
  v10 = MEMORY[0x1E69E7CC0];
  do
  {
    inited = swift_initStackObject();
    v13 = sub_1B7C23650(v10);
    *(inited + 16) = a1;
    *(inited + 24) = v13;
    SqlOperation.Row.column(forColumnName:)(0x695F656C646E6168uLL, 0xE900000000000064, &v47);
    if (!*(&v47 + 1))
    {
      sub_1B7AEE190(&v47, &qword_1EBA52298, &unk_1B7D10570);
      goto LABEL_78;
    }

    v51 = v47;
    v52 = v48;
    v53 = v49;
    v54 = v50;
    v14 = v48;
    sub_1B7C26C78(&v51);
    v15 = SqlOperation.Row.string(forColumnIndex:)(v14);
    if (!v15.value._object)
    {
      goto LABEL_78;
    }

    v16 = (v15.value._object >> 56) & 0xF;
    v17 = v15.value._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
    if ((v15.value._object & 0x2000000000000000) != 0)
    {
      v18 = (v15.value._object >> 56) & 0xF;
    }

    else
    {
      v18 = v15.value._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
    }

    if (v18)
    {
      if ((v15.value._object & 0x1000000000000000) != 0)
      {
        sub_1B7CDA2D8(v15.value._countAndFlagsBits, v15.value._object, 10);
        v21 = v39;
        v41 = v40;

        if ((v41 & 1) == 0)
        {
LABEL_75:
          if (v21)
          {
            sub_1B7C5E800(&v51, v21);
          }
        }

LABEL_77:
        v10 = MEMORY[0x1E69E7CC0];
        goto LABEL_78;
      }

      if ((v15.value._object & 0x2000000000000000) != 0)
      {
        *&v51 = v15.value._countAndFlagsBits;
        *(&v51 + 1) = v15.value._object & 0xFFFFFFFFFFFFFFLL;
        if (LOBYTE(v15.value._countAndFlagsBits) == 43)
        {
          if (!v16)
          {
            goto LABEL_95;
          }

          v17 = v16 - 1;
          if (v16 != 1)
          {
            v21 = 0;
            v29 = &v51 + 1;
            while (1)
            {
              v30 = *v29 - 48;
              if (v30 > 9)
              {
                break;
              }

              if (!is_mul_ok(v21, 0xAuLL))
              {
                break;
              }

              v24 = __CFADD__(10 * v21, v30);
              v21 = 10 * v21 + v30;
              if (v24)
              {
                break;
              }

              ++v29;
              if (!--v17)
              {
                goto LABEL_74;
              }
            }
          }
        }

        else if (LOBYTE(v15.value._countAndFlagsBits) == 45)
        {
          if (!v16)
          {
            goto LABEL_96;
          }

          v17 = v16 - 1;
          if (v16 != 1)
          {
            v21 = 0;
            v25 = &v51 + 1;
            while (1)
            {
              v26 = *v25 - 48;
              if (v26 > 9)
              {
                break;
              }

              if (!is_mul_ok(v21, 0xAuLL))
              {
                break;
              }

              v24 = 10 * v21 >= v26;
              v21 = 10 * v21 - v26;
              if (!v24)
              {
                break;
              }

              ++v25;
              if (!--v17)
              {
                goto LABEL_74;
              }
            }
          }
        }

        else if (v16)
        {
          v21 = 0;
          v32 = &v51;
          while (1)
          {
            v33 = *v32 - 48;
            if (v33 > 9)
            {
              break;
            }

            if (!is_mul_ok(v21, 0xAuLL))
            {
              break;
            }

            v24 = __CFADD__(10 * v21, v33);
            v21 = 10 * v21 + v33;
            if (v24)
            {
              break;
            }

            ++v32;
            if (!--v16)
            {
              goto LABEL_72;
            }
          }
        }

        goto LABEL_73;
      }

      if ((v15.value._countAndFlagsBits & 0x1000000000000000) != 0)
      {
        v19 = ((v15.value._object & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        v19 = sub_1B7CFF280();
        v17 = v42;
      }

      v20 = *v19;
      if (v20 == 43)
      {
        if (v17 < 1)
        {
          goto LABEL_97;
        }

        if (!--v17)
        {
          goto LABEL_73;
        }

        v21 = 0;
        if (v19)
        {
          v27 = v19 + 1;
          while (1)
          {
            v28 = *v27 - 48;
            if (v28 > 9)
            {
              goto LABEL_73;
            }

            if (!is_mul_ok(v21, 0xAuLL))
            {
              goto LABEL_73;
            }

            v24 = __CFADD__(10 * v21, v28);
            v21 = 10 * v21 + v28;
            if (v24)
            {
              goto LABEL_73;
            }

            ++v27;
            if (!--v17)
            {
              goto LABEL_74;
            }
          }
        }
      }

      else if (v20 == 45)
      {
        if (v17 < 1)
        {
          goto LABEL_98;
        }

        if (!--v17)
        {
          goto LABEL_73;
        }

        v21 = 0;
        if (v19)
        {
          v22 = v19 + 1;
          while (1)
          {
            v23 = *v22 - 48;
            if (v23 > 9)
            {
              goto LABEL_73;
            }

            if (!is_mul_ok(v21, 0xAuLL))
            {
              goto LABEL_73;
            }

            v24 = 10 * v21 >= v23;
            v21 = 10 * v21 - v23;
            if (!v24)
            {
              goto LABEL_73;
            }

            ++v22;
            if (!--v17)
            {
              goto LABEL_74;
            }
          }
        }
      }

      else
      {
        if (!v17)
        {
LABEL_73:
          v21 = 0;
          LOBYTE(v17) = 1;
LABEL_74:
          LOBYTE(v47) = v17;
          v34 = v17;

          if ((v34 & 1) == 0)
          {
            goto LABEL_75;
          }

          goto LABEL_77;
        }

        v21 = 0;
        if (v19)
        {
          while (1)
          {
            v31 = *v19 - 48;
            if (v31 > 9)
            {
              goto LABEL_73;
            }

            if (!is_mul_ok(v21, 0xAuLL))
            {
              goto LABEL_73;
            }

            v24 = __CFADD__(10 * v21, v31);
            v21 = 10 * v21 + v31;
            if (v24)
            {
              goto LABEL_73;
            }

            ++v19;
            if (!--v17)
            {
              goto LABEL_74;
            }
          }
        }
      }

LABEL_72:
      LOBYTE(v17) = 0;
      goto LABEL_74;
    }

LABEL_78:
    SqlOperation.Row.column(forColumnName:)(0x61685F726568746FuLL, 0xEC000000656C646ELL, &v47);
    if (*(&v47 + 1))
    {
      v51 = v47;
      v52 = v48;
      v53 = v49;
      v54 = v50;
      v35 = v48;
      sub_1B7C26C78(&v51);
      v36 = SqlOperation.Row.string(forColumnIndex:)(v35);
      if (v36.value._object)
      {
        v37 = sub_1B7CD8340(v36.value._countAndFlagsBits, v36.value._object);
        if ((v38 & 1) == 0)
        {
          if (v37)
          {
            sub_1B7C5E800(&v51, v37);
          }
        }
      }

      swift_setDeallocating();
    }

    else
    {
      swift_setDeallocating();

      sub_1B7AEE190(&v47, &qword_1EBA52298, &unk_1B7D10570);
    }

    swift_beginAccess();

    v11 = IMDSqlOperationHasRows(a1 + 16);
    swift_endAccess();
  }

  while (v11);
  v8 = v46;
LABEL_89:

  v43 = *(v8 + 16);
  if (v43)
  {
    v44 = sub_1B7CD94BC(*(v8 + 16), 0, &qword_1EBA52998, &qword_1B7D0DC40);
    v45 = sub_1B7CDA1D8(&v51, v44 + 4, v43, v8);
    sub_1B7AEC4CC(v51);
    if (v45 != v43)
    {
      __break(1u);
      goto LABEL_92;
    }
  }

  else
  {
LABEL_92:

    v44 = MEMORY[0x1E69E7CC0];
  }

  *a3 = v44;
}

void sub_1B7CD8CA8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v59 = *MEMORY[0x1E69E9840];
  swift_beginAccess();
  v8 = *(a2 + 16);
  if (v8 < 0)
  {
    __break(1u);
LABEL_101:
    __break(1u);
LABEL_102:
    __break(1u);
LABEL_103:
    __break(1u);
LABEL_104:
    __break(1u);
LABEL_105:
    __break(1u);
LABEL_106:
    __break(1u);
    goto LABEL_107;
  }

  swift_beginAccess();
  IMDSqlStatementBindInt64((a1 + 48), v8);
  *&v51 = 0;
  IMDSqlOperationGetError(a1 + 16, &v51);
  v9 = v51;
  swift_endAccess();
  if (v9)
  {
LABEL_6:
    v9;
    swift_willThrow();
    return;
  }

  v10 = *(a3 + 24);
  if (v10 < 0xFFFFFFFF80000000)
  {
    goto LABEL_101;
  }

  if (v10 > 0x7FFFFFFF)
  {
    goto LABEL_102;
  }

  swift_beginAccess();
  IMDSqlStatementBindInt((a1 + 48), v10);
  *&v51 = 0;
  IMDSqlOperationGetError(a1 + 16, &v51);
  v9 = v51;
  swift_endAccess();
  if (v9)
  {
    goto LABEL_6;
  }

  v11 = MEMORY[0x1E69E7CD0];
  v50 = MEMORY[0x1E69E7CD0];

  swift_beginAccess();
  swift_beginAccess();

  HasRows = IMDSqlOperationHasRows(a1 + 16);
  swift_endAccess();
  if (!HasRows)
  {
    goto LABEL_96;
  }

  type metadata accessor for SqlOperation.Row();
  v13 = MEMORY[0x1E69E7CC0];
  do
  {
    inited = swift_initStackObject();
    v16 = sub_1B7C23650(v13);
    *(inited + 16) = a1;
    *(inited + 24) = v16;
    SqlOperation.Row.column(forColumnName:)(0x4449574F52uLL, 0xE500000000000000, &v51);
    if (*(&v51 + 1))
    {
      v55 = v51;
      v56 = v52;
      v57 = v53;
      v58 = v54;
      v17 = v52;
      sub_1B7C26C78(&v55);
      v60 = SqlOperation.Row.uint64(forColumnIndex:)(v17);
      if (!v60.is_nil)
      {
        *(a2 + 16) = v60.value;
      }
    }

    else
    {
      sub_1B7AEE190(&v51, &qword_1EBA52298, &unk_1B7D10570);
    }

    SqlOperation.Row.column(forColumnName:)(0x695F656C646E6168uLL, 0xE900000000000064, &v51);
    if (!*(&v51 + 1))
    {
      sub_1B7AEE190(&v51, &qword_1EBA52298, &unk_1B7D10570);
      goto LABEL_85;
    }

    v55 = v51;
    v56 = v52;
    v57 = v53;
    v58 = v54;
    v18 = v52;
    sub_1B7C26C78(&v55);
    v19 = SqlOperation.Row.string(forColumnIndex:)(v18);
    if (!v19.value._object)
    {
      goto LABEL_85;
    }

    v20 = (v19.value._object >> 56) & 0xF;
    v21 = v19.value._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
    if ((v19.value._object & 0x2000000000000000) != 0)
    {
      v22 = (v19.value._object >> 56) & 0xF;
    }

    else
    {
      v22 = v19.value._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
    }

    if (v22)
    {
      if ((v19.value._object & 0x1000000000000000) != 0)
      {
        sub_1B7CDA2D8(v19.value._countAndFlagsBits, v19.value._object, 10);
        v25 = v43;
        v45 = v44;

        if ((v45 & 1) == 0)
        {
LABEL_82:
          if (v25)
          {
            sub_1B7C5E800(&v55, v25);
          }
        }

LABEL_84:
        v13 = MEMORY[0x1E69E7CC0];
        goto LABEL_85;
      }

      if ((v19.value._object & 0x2000000000000000) != 0)
      {
        *&v55 = v19.value._countAndFlagsBits;
        *(&v55 + 1) = v19.value._object & 0xFFFFFFFFFFFFFFLL;
        if (LOBYTE(v19.value._countAndFlagsBits) == 43)
        {
          if (!v20)
          {
            goto LABEL_103;
          }

          v21 = v20 - 1;
          if (v20 != 1)
          {
            v25 = 0;
            v33 = &v55 + 1;
            while (1)
            {
              v34 = *v33 - 48;
              if (v34 > 9)
              {
                break;
              }

              if (!is_mul_ok(v25, 0xAuLL))
              {
                break;
              }

              v28 = __CFADD__(10 * v25, v34);
              v25 = 10 * v25 + v34;
              if (v28)
              {
                break;
              }

              ++v33;
              if (!--v21)
              {
                goto LABEL_81;
              }
            }
          }
        }

        else if (LOBYTE(v19.value._countAndFlagsBits) == 45)
        {
          if (!v20)
          {
            goto LABEL_104;
          }

          v21 = v20 - 1;
          if (v20 != 1)
          {
            v25 = 0;
            v29 = &v55 + 1;
            while (1)
            {
              v30 = *v29 - 48;
              if (v30 > 9)
              {
                break;
              }

              if (!is_mul_ok(v25, 0xAuLL))
              {
                break;
              }

              v28 = 10 * v25 >= v30;
              v25 = 10 * v25 - v30;
              if (!v28)
              {
                break;
              }

              ++v29;
              if (!--v21)
              {
                goto LABEL_81;
              }
            }
          }
        }

        else if (v20)
        {
          v25 = 0;
          v36 = &v55;
          while (1)
          {
            v37 = *v36 - 48;
            if (v37 > 9)
            {
              break;
            }

            if (!is_mul_ok(v25, 0xAuLL))
            {
              break;
            }

            v28 = __CFADD__(10 * v25, v37);
            v25 = 10 * v25 + v37;
            if (v28)
            {
              break;
            }

            ++v36;
            if (!--v20)
            {
              goto LABEL_79;
            }
          }
        }

        goto LABEL_80;
      }

      if ((v19.value._countAndFlagsBits & 0x1000000000000000) != 0)
      {
        v23 = ((v19.value._object & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        v23 = sub_1B7CFF280();
        v21 = v46;
      }

      v24 = *v23;
      if (v24 == 43)
      {
        if (v21 < 1)
        {
          goto LABEL_105;
        }

        if (!--v21)
        {
          goto LABEL_80;
        }

        v25 = 0;
        if (v23)
        {
          v31 = v23 + 1;
          while (1)
          {
            v32 = *v31 - 48;
            if (v32 > 9)
            {
              goto LABEL_80;
            }

            if (!is_mul_ok(v25, 0xAuLL))
            {
              goto LABEL_80;
            }

            v28 = __CFADD__(10 * v25, v32);
            v25 = 10 * v25 + v32;
            if (v28)
            {
              goto LABEL_80;
            }

            ++v31;
            if (!--v21)
            {
              goto LABEL_81;
            }
          }
        }
      }

      else if (v24 == 45)
      {
        if (v21 < 1)
        {
          goto LABEL_106;
        }

        if (!--v21)
        {
          goto LABEL_80;
        }

        v25 = 0;
        if (v23)
        {
          v26 = v23 + 1;
          while (1)
          {
            v27 = *v26 - 48;
            if (v27 > 9)
            {
              goto LABEL_80;
            }

            if (!is_mul_ok(v25, 0xAuLL))
            {
              goto LABEL_80;
            }

            v28 = 10 * v25 >= v27;
            v25 = 10 * v25 - v27;
            if (!v28)
            {
              goto LABEL_80;
            }

            ++v26;
            if (!--v21)
            {
              goto LABEL_81;
            }
          }
        }
      }

      else
      {
        if (!v21)
        {
LABEL_80:
          v25 = 0;
          LOBYTE(v21) = 1;
LABEL_81:
          LOBYTE(v51) = v21;
          v38 = v21;

          if ((v38 & 1) == 0)
          {
            goto LABEL_82;
          }

          goto LABEL_84;
        }

        v25 = 0;
        if (v23)
        {
          while (1)
          {
            v35 = *v23 - 48;
            if (v35 > 9)
            {
              goto LABEL_80;
            }

            if (!is_mul_ok(v25, 0xAuLL))
            {
              goto LABEL_80;
            }

            v28 = __CFADD__(10 * v25, v35);
            v25 = 10 * v25 + v35;
            if (v28)
            {
              goto LABEL_80;
            }

            ++v23;
            if (!--v21)
            {
              goto LABEL_81;
            }
          }
        }
      }

LABEL_79:
      LOBYTE(v21) = 0;
      goto LABEL_81;
    }

LABEL_85:
    SqlOperation.Row.column(forColumnName:)(0x61685F726568746FuLL, 0xEC000000656C646ELL, &v51);
    if (*(&v51 + 1))
    {
      v55 = v51;
      v56 = v52;
      v57 = v53;
      v58 = v54;
      v39 = v52;
      sub_1B7C26C78(&v55);
      v40 = SqlOperation.Row.string(forColumnIndex:)(v39);
      if (v40.value._object)
      {
        v41 = sub_1B7CD8340(v40.value._countAndFlagsBits, v40.value._object);
        if ((v42 & 1) == 0)
        {
          if (v41)
          {
            sub_1B7C5E800(&v55, v41);
          }
        }
      }

      swift_setDeallocating();
    }

    else
    {
      swift_setDeallocating();

      sub_1B7AEE190(&v51, &qword_1EBA52298, &unk_1B7D10570);
    }

    swift_beginAccess();

    v14 = IMDSqlOperationHasRows(a1 + 16);
    swift_endAccess();
  }

  while (v14);
  v11 = v50;
LABEL_96:

  v47 = *(v11 + 16);
  if (v47)
  {
    v48 = sub_1B7CD94BC(*(v11 + 16), 0, &qword_1EBA52998, &qword_1B7D0DC40);
    v49 = sub_1B7CDA1D8(&v55, v48 + 4, v47, v11);
    sub_1B7AEC4CC(v55);
    if (v49 == v47)
    {
      *a4 = v48;
      return;
    }

LABEL_107:
    __break(1u);
  }

  *a4 = MEMORY[0x1E69E7CC0];
}

void *sub_1B7CD9410(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  sub_1B7C107FC(&qword_1EBA525D0, qword_1B7D0A720);
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

void *sub_1B7CD94BC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (a2 <= a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  if (!v4)
  {
    return MEMORY[0x1E69E7CC0];
  }

  sub_1B7C107FC(a3, a4);
  v6 = swift_allocObject();
  v7 = j__malloc_size(v6);
  result = v6;
  v10 = v7 - 32;
  v9 = v7 < 32;
  v11 = v7 - 25;
  if (!v9)
  {
    v11 = v10;
  }

  v6[2] = a1;
  v6[3] = 2 * (v11 >> 3);
  return result;
}

void *sub_1B7CD9538(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  sub_1B7C107FC(&qword_1EBA52060, &qword_1B7D0AFD0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

void *sub_1B7CD95C0(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  sub_1B7C107FC(&qword_1EBA52768, &qword_1B7D0CFA0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

unint64_t sub_1B7CD9634(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_1B7CFEBE0();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x1B8CADD00](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t sub_1B7CD96B0(uint64_t *a1, _OWORD *a2, uint64_t a3)
{
  v4 = v3;
  result = *(v3 + 16);
  if (!a2)
  {
    *a1 = result;
    a1[1] = v3;
    a1[2] = 0;

    return 0;
  }

  v7 = a3;
  v40 = *(v3 + 16);
  if (!a3)
  {

LABEL_34:
    *a1 = v40;
    a1[1] = v4;
    a1[2] = v7;
    return v7;
  }

  if (a3 < 0)
  {
    goto LABEL_39;
  }

  v8 = a2;

  v9 = *(v3 + 16);
  swift_beginAccess();
  LODWORD(v9) = IMDSqlStatementColumnCount((v9 + 48));
  swift_endAccess();
  v10 = 0;
  if (!v9)
  {
LABEL_31:
    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v38 = v10;
LABEL_36:
    sub_1B7AEE190(&v52, &qword_1EBA52298, &unk_1B7D10570);
    *a1 = v40;
    a1[1] = v4;
    v7 = v10;
    a1[2] = v38;
    return v7;
  }

  while (1)
  {
    swift_beginAccess();
    v11 = *(v4 + 24);
    if (*(v11 + 16))
    {
      v12 = sub_1B7AE1160(v10);
      if (v13)
      {
        sub_1B7CDB094(*(v11 + 56) + (v12 << 6), &v48);
        v52 = v48;
        v53 = v49;
        v54 = v50;
        v55 = v51;
        goto LABEL_28;
      }
    }

    result = swift_endAccess();
    if (v10 >> 31)
    {
      break;
    }

    v14 = *(v4 + 16);
    swift_beginAccess();
    IMDSqlStatementColumnByIndex((v14 + 48), v10, &v44);
    v15 = *(&v44 + 1);
    v16 = v45;
    swift_endAccess();
    if (v15)
    {
      v17 = sub_1B7CFEB70();
      v19 = v18;
      if ((v16 & 0x80000000) != 0)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v17 = 0;
      v19 = 0xE000000000000000;
      if ((v16 & 0x80000000) != 0)
      {
        goto LABEL_23;
      }
    }

    v20 = *(v4 + 16);
    swift_beginAccess();
    v21 = IMDSqlStatementColumnCount((v20 + 48));
    swift_endAccess();
    if (v16 >= v21)
    {
      goto LABEL_23;
    }

    v22 = *(v4 + 16);
    swift_beginAccess();
    IMDSqlStatementColumnByIndex((v22 + 48), v16, &v44);
    v23 = v44;
    v24 = v45;
    swift_endAccess();
    v46 = v23;
    v47 = v24;
    v25 = IMDSqlColumnGetType(&v46) - 1;
    if (v25 > 4)
    {
      goto LABEL_23;
    }

    v26 = *(v4 + 16);
    swift_beginAccess();
    LODWORD(v26) = IMDSqlStatementColumnCount((v26 + 48));
    swift_endAccess();
    if (v16 >= v26)
    {
      v44 = 0u;
      v45 = 0u;
LABEL_22:
      sub_1B7AEE190(&v44, &qword_1EBA51FA8, qword_1B7D0B230);
LABEL_23:
      v50 = 0u;
      v51 = 0u;
      *&v48 = v17;
      *(&v48 + 1) = v19;
      *&v49 = v16;
      BYTE8(v49) = 4;
      goto LABEL_24;
    }

    v39 = a1;
    v27 = *(v4 + 16);
    swift_beginAccess();
    IMDSqlStatementColumnByIndex((v27 + 48), v16, v43);
    v29 = v43[0];
    v28 = v43[1];
    v30 = v43[2];
    swift_endAccess();
    *&v41 = v29;
    *(&v41 + 1) = v28;
    *&v42 = v30;
    if (IMDSqlColumnGetObject(&v41))
    {
      sub_1B7CFF0A0();
      swift_unknownObjectRelease();
    }

    else
    {
      v41 = 0u;
      v42 = 0u;
    }

    a1 = v39;
    v44 = v41;
    v45 = v42;
    if (!*(&v42 + 1))
    {
      goto LABEL_22;
    }

    sub_1B7C255E0(&v44, &v46);
    sub_1B7C255E0(&v46, &v50);
    *&v48 = v17;
    *(&v48 + 1) = v19;
    *&v49 = v16;
    BYTE8(v49) = v25;
LABEL_24:
    swift_beginAccess();
    sub_1B7CE097C(&v48, v10);
    swift_endAccess();
    swift_beginAccess();
    v31 = *(v4 + 24);
    if (*(v31 + 16) && (v32 = sub_1B7AE1160(v10), (v33 & 1) != 0))
    {
      sub_1B7CDB094(*(v31 + 56) + (v32 << 6), &v52);
    }

    else
    {
      v54 = 0u;
      v55 = 0u;
      v52 = 0u;
      v53 = 0u;
    }

LABEL_28:
    swift_endAccess();
    if (!*(&v52 + 1))
    {
      v38 = v10 + 1;
      goto LABEL_36;
    }

    v34 = v53;
    v56 = v52;
    v57 = v53;
    v35 = v54;
    v36 = v55;
    v58 = v54;
    v59 = v55;
    *v8 = v52;
    v8[1] = v34;
    v8[2] = v35;
    v8[3] = v36;
    if (v7 - 1 == v10)
    {
      goto LABEL_34;
    }

    v8 += 4;
    v37 = *(v4 + 16);
    swift_beginAccess();
    LODWORD(v37) = IMDSqlStatementColumnCount((v37 + 48));
    swift_endAccess();
    if (++v10 >= v37)
    {
      goto LABEL_31;
    }
  }

  __break(1u);
LABEL_39:
  __break(1u);
  return result;
}

void *sub_1B7CD9B30(void *result, uint64_t a2, uint64_t a3)
{
  v4 = result;
  if (!a2 || !a3)
  {
LABEL_10:
    v7 = 0;
LABEL_13:
    *v4 = v3;
    return v7;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    swift_beginAccess();
    v7 = 0;
    v8 = MEMORY[0x1E69E7CC8];
    while (1)
    {
      if (!IMDSqlOperationHasRows(v3 + 16))
      {
        swift_endAccess();
        goto LABEL_13;
      }

      type metadata accessor for SqlOperation.Row();
      v9 = swift_allocObject();
      *(v9 + 16) = v3;
      *(v9 + 24) = v8;
      *(a2 + 8 * v7) = v9;
      if (a3 - 1 == v7)
      {
        break;
      }

      if (__OFADD__(++v7, 1))
      {
        __break(1u);
        goto LABEL_10;
      }
    }

    swift_endAccess();

    v7 = a3;
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

void *sub_1B7CD9C2C(void *result, void *a2, uint64_t a3, uint64_t a4)
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

void *sub_1B7CD9D84(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v7 = result;
  if ((a4 & 0xC000000000000001) == 0)
  {
LABEL_21:
    v10 = 0;
    v18 = -1 << *(v4 + 32);
    v8 = v4 + 56;
    v9 = ~v18;
    v19 = -v18;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v11 = v20 & *(v4 + 56);
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_25:
    v12 = 0;
    goto LABEL_32;
  }

  sub_1B7CFF110();
  sub_1B7C60A20();
  sub_1B7CBC9EC();
  result = sub_1B7CFEE10();
  v4 = v25;
  v8 = v26;
  v9 = v27;
  v10 = v28;
  v11 = v29;
  if (!a2)
  {
    goto LABEL_25;
  }

LABEL_3:
  if (!a3)
  {
    v12 = 0;
    goto LABEL_32;
  }

  if (a3 < 0)
  {
LABEL_35:
    __break(1u);
    return result;
  }

  v22 = v9;
  v23 = v7;
  v12 = 0;
  v13 = (v9 + 64) >> 6;
  v7 = 1;
  while (1)
  {
    if (v4 < 0)
    {
      if (!sub_1B7CFF140())
      {
        goto LABEL_30;
      }

      sub_1B7C60A20();
      swift_dynamicCast();
      result = v24;
      if (!v24)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    v14 = v10;
    if (!v11)
    {
      break;
    }

    v15 = v10;
LABEL_13:
    v16 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    result = *(*(v4 + 48) + ((v15 << 9) | (8 * v16)));
    if (!result)
    {
      goto LABEL_30;
    }

LABEL_17:
    *a2 = result;
    if (v7 == a3)
    {
      v12 = a3;
      goto LABEL_30;
    }

    ++a2;
    v12 = v7;
    if (__OFADD__(v7++, 1))
    {
      __break(1u);
      goto LABEL_21;
    }
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      goto LABEL_35;
    }

    if (v15 >= v13)
    {
      break;
    }

    v11 = *(v8 + 8 * v15);
    ++v14;
    if (v11)
    {
      v10 = v15;
      goto LABEL_13;
    }
  }

  v11 = 0;
  if (v13 <= v10 + 1)
  {
    v21 = v10 + 1;
  }

  else
  {
    v21 = v13;
  }

  v10 = v21 - 1;
LABEL_30:
  v9 = v22;
  v7 = v23;
LABEL_32:
  *v7 = v4;
  *(v7 + 8) = v8;
  *(v7 + 16) = v9;
  *(v7 + 24) = v10;
  *(v7 + 32) = v11;
  return v12;
}

void *sub_1B7CD9F80(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
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
      v17 = (*(a4 + 56) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
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

void *sub_1B7CDA0D8(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 64;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 64);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + ((v9 << 9) | (8 * v14)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

void *sub_1B7CDA1D8(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 56;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 56);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + ((v9 << 9) | (8 * v14)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

void sub_1B7CDA2D8(uint64_t a1, uint64_t a2, int64_t a3)
{
  v72 = a1;
  v73 = a2;

  v4 = sub_1B7CFEC30();
  v6 = v4;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_1B7CDA85C(v4, v5);
    v40 = v39;

    v5 = v40;
    if ((v40 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      v7 = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v8 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      v7 = sub_1B7CFF280();
      v8 = v71;
    }

    v9 = *v7;
    if (v9 == 43)
    {
      if (v8 >= 1)
      {
        v21 = v8 - 1;
        if (v21)
        {
          v22 = a3 + 48;
          v23 = a3 + 55;
          v24 = a3 + 87;
          if (a3 > 10)
          {
            v22 = 58;
          }

          else
          {
            v24 = 97;
            v23 = 65;
          }

          if (v7)
          {
            v25 = 0;
            v26 = v7 + 1;
            while (1)
            {
              v27 = *v26;
              if (v27 < 0x30 || v27 >= v22)
              {
                if (v27 < 0x41 || v27 >= v23)
                {
                  if (v27 < 0x61 || v27 >= v24)
                  {
                    goto LABEL_127;
                  }

                  v28 = -87;
                }

                else
                {
                  v28 = -55;
                }
              }

              else
              {
                v28 = -48;
              }

              if (is_mul_ok(v25, a3))
              {
                v29 = v25 * a3;
                v30 = v27 + v28;
                v20 = __CFADD__(v29, v30);
                v25 = v29 + v30;
                if (!v20)
                {
                  ++v26;
                  if (--v21)
                  {
                    continue;
                  }
                }
              }

              goto LABEL_127;
            }
          }
        }

        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v9 != 45)
    {
      if (v8)
      {
        v31 = a3 + 48;
        v32 = a3 + 55;
        v33 = a3 + 87;
        if (a3 > 10)
        {
          v31 = 58;
        }

        else
        {
          v33 = 97;
          v32 = 65;
        }

        if (v7)
        {
          v34 = 0;
          while (1)
          {
            v35 = *v7;
            if (v35 < 0x30 || v35 >= v31)
            {
              if (v35 < 0x41 || v35 >= v32)
              {
                if (v35 < 0x61 || v35 >= v33)
                {
                  goto LABEL_127;
                }

                v36 = -87;
              }

              else
              {
                v36 = -55;
              }
            }

            else
            {
              v36 = -48;
            }

            if (is_mul_ok(v34, a3))
            {
              v37 = v34 * a3;
              v38 = v35 + v36;
              v20 = __CFADD__(v37, v38);
              v34 = v37 + v38;
              if (!v20)
              {
                ++v7;
                if (--v8)
                {
                  continue;
                }
              }
            }

            goto LABEL_127;
          }
        }
      }

      goto LABEL_127;
    }

    if (v8 >= 1)
    {
      v10 = v8 - 1;
      if (v10)
      {
        v11 = a3 + 48;
        v12 = a3 + 55;
        v13 = a3 + 87;
        if (a3 > 10)
        {
          v11 = 58;
        }

        else
        {
          v13 = 97;
          v12 = 65;
        }

        if (v7)
        {
          v14 = 0;
          v15 = v7 + 1;
          while (1)
          {
            v16 = *v15;
            if (v16 < 0x30 || v16 >= v11)
            {
              if (v16 < 0x41 || v16 >= v12)
              {
                if (v16 < 0x61 || v16 >= v13)
                {
                  break;
                }

                v17 = -87;
              }

              else
              {
                v17 = -55;
              }
            }

            else
            {
              v17 = -48;
            }

            if (is_mul_ok(v14, a3))
            {
              v18 = v14 * a3;
              v19 = v16 + v17;
              v20 = v18 >= v19;
              v14 = v18 - v19;
              if (v20)
              {
                ++v15;
                if (--v10)
                {
                  continue;
                }
              }
            }

            break;
          }
        }
      }

LABEL_127:

      return;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v41 = HIBYTE(v5) & 0xF;
  v72 = v6;
  v73 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v41)
      {
        v62 = 0;
        v63 = a3 + 48;
        v64 = a3 + 55;
        v65 = a3 + 87;
        if (a3 > 10)
        {
          v63 = 58;
        }

        else
        {
          v65 = 97;
          v64 = 65;
        }

        v66 = &v72;
        while (1)
        {
          v67 = *v66;
          if (v67 < 0x30 || v67 >= v63)
          {
            if (v67 < 0x41 || v67 >= v64)
            {
              if (v67 < 0x61 || v67 >= v65)
              {
                goto LABEL_127;
              }

              v68 = -87;
            }

            else
            {
              v68 = -55;
            }
          }

          else
          {
            v68 = -48;
          }

          if (is_mul_ok(v62, a3))
          {
            v69 = v62 * a3;
            v70 = v67 + v68;
            v20 = __CFADD__(v69, v70);
            v62 = v69 + v70;
            if (!v20)
            {
              v66 = (v66 + 1);
              if (--v41)
              {
                continue;
              }
            }
          }

          goto LABEL_127;
        }
      }

      goto LABEL_127;
    }

    if (v41)
    {
      v42 = v41 - 1;
      if (v42)
      {
        v43 = 0;
        v44 = a3 + 48;
        v45 = a3 + 55;
        v46 = a3 + 87;
        if (a3 > 10)
        {
          v44 = 58;
        }

        else
        {
          v46 = 97;
          v45 = 65;
        }

        v47 = &v72 + 1;
        while (1)
        {
          v48 = *v47;
          if (v48 < 0x30 || v48 >= v44)
          {
            if (v48 < 0x41 || v48 >= v45)
            {
              if (v48 < 0x61 || v48 >= v46)
              {
                goto LABEL_127;
              }

              v49 = -87;
            }

            else
            {
              v49 = -55;
            }
          }

          else
          {
            v49 = -48;
          }

          if (is_mul_ok(v43, a3))
          {
            v50 = v43 * a3;
            v51 = v48 + v49;
            v20 = v50 >= v51;
            v43 = v50 - v51;
            if (v20)
            {
              ++v47;
              if (--v42)
              {
                continue;
              }
            }
          }

          goto LABEL_127;
        }
      }

      goto LABEL_127;
    }

    goto LABEL_130;
  }

  if (v41)
  {
    v52 = v41 - 1;
    if (v52)
    {
      v53 = 0;
      v54 = a3 + 48;
      v55 = a3 + 55;
      v56 = a3 + 87;
      if (a3 > 10)
      {
        v54 = 58;
      }

      else
      {
        v56 = 97;
        v55 = 65;
      }

      v57 = &v72 + 1;
      while (1)
      {
        v58 = *v57;
        if (v58 < 0x30 || v58 >= v54)
        {
          if (v58 < 0x41 || v58 >= v55)
          {
            if (v58 < 0x61 || v58 >= v56)
            {
              goto LABEL_127;
            }

            v59 = -87;
          }

          else
          {
            v59 = -55;
          }
        }

        else
        {
          v59 = -48;
        }

        if (is_mul_ok(v53, a3))
        {
          v60 = v53 * a3;
          v61 = v58 + v59;
          v20 = __CFADD__(v60, v61);
          v53 = v60 + v61;
          if (!v20)
          {
            ++v57;
            if (--v52)
            {
              continue;
            }
          }
        }

        goto LABEL_127;
      }
    }

    goto LABEL_127;
  }

LABEL_132:
  __break(1u);
}

uint64_t sub_1B7CDA85C(uint64_t a1, unint64_t a2)
{
  v2 = sub_1B7CFEC40();
  v6 = sub_1B7CDA8DC(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_1B7CDA8DC(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_1B7CFF010();
    if (!v9 || (v10 = v9, v11 = sub_1B7CD95C0(v9, 0), v12 = sub_1B7CDAA34(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_1B7CFEB00();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_1B7CFEB00();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_1B7CFF280();
LABEL_4:

  return sub_1B7CFEB00();
}

unint64_t sub_1B7CDAA34(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_1B7CD9634(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_1B7CFEBD0();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_1B7CFF280();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_1B7CD9634(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_1B7CFEBB0();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
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

uint64_t sub_1B7CDAC54(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    if (qword_1EBA515F0 != -1)
    {
      swift_once();
    }

    sub_1B7CFF210();

    sub_1B7AF7F10(0x3F, 0xE100000000000000, v1);
    sub_1B7C107FC(&unk_1EBA525A0, "D\r\b");
    sub_1B7AF7FAC();
    v4 = sub_1B7CFEA10();
    v6 = v5;

    MEMORY[0x1B8CADCA0](v4, v6);

    MEMORY[0x1B8CADCA0](15145, 0xE200000000000000);
    v7 = swift_allocObject();
    *(v7 + 16) = a1;

    v8 = sub_1B7CD73E4(0xD00000000000002DLL, 0x80000001B7D5BAD0, sub_1B7CDAE48, v7, sub_1B7CDB4A0, sub_1B7CDB4A4);

    if (v8)
    {
      return v8;
    }

    else
    {
      return v2;
    }
  }

  return v2;
}

void sub_1B7CDAE64(sqlite3_int64 a1)
{
  v2 = v1;
  v11[3] = *MEMORY[0x1E69E9840];
  if (qword_1EBA515F0 != -1)
  {
    swift_once();
  }

  v4 = off_1EBA52D08;
  v5 = objc_autoreleasePoolPush();
  v6 = sub_1B7CFEA30();
  swift_beginAccess();
  IMDSqlOperationStartQuery(v4 + 16, v6);
  swift_endAccess();

  swift_beginAccess();
  v10 = 0;
  IMDSqlOperationGetError((v4 + 16), &v10);
  v7 = v10;
  swift_endAccess();
  if (v7)
  {
    swift_willThrow();
    v7;
  }

  else
  {
    sub_1B7CD80B8(v4, a1, v11);
    if (!v1)
    {
      swift_beginAccess();
      IMDSqlOperationFinishQuery((v4 + 16));
      v10 = 0;
      IMDSqlOperationGetError((v4 + 16), &v10);
      v8 = v10;
      swift_endAccess();
      if (!v8)
      {
        goto LABEL_10;
      }

      swift_willThrow();
      v2 = v8;
    }

    swift_beginAccess();
    IMDSqlOperationFinishQuery((v4 + 16));
    v10 = 0;
    IMDSqlOperationGetError((v4 + 16), &v10);
    v9 = v10;
    swift_endAccess();
    swift_willThrow();
    if (v9)
    {
      v9;
    }
  }

LABEL_10:
  objc_autoreleasePoolPop(v5);
}

uint64_t sub_1B7CDB0F0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1B7CDB138(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1B7CDB188(void *a1)
{
  v3 = sub_1B7C107FC(&qword_1EBA53998, &qword_1B7D139B0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9[-v5];
  v7 = a1[3];
  sub_1B7AE9124(a1, v7);
  sub_1B7CDB334();
  sub_1B7CFF820();
  if (!v1)
  {
    v9[15] = 0;
    v7 = sub_1B7CFF460();
    v9[14] = 1;
    sub_1B7CFF420();
    (*(v4 + 8))(v6, v3);
  }

  sub_1B7AE9168(a1);
  return v7;
}

unint64_t sub_1B7CDB334()
{
  result = qword_1EBA539A0;
  if (!qword_1EBA539A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA539A0);
  }

  return result;
}

unint64_t sub_1B7CDB39C()
{
  result = qword_1EBA539B0;
  if (!qword_1EBA539B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA539B0);
  }

  return result;
}

unint64_t sub_1B7CDB3F4()
{
  result = qword_1EBA539B8;
  if (!qword_1EBA539B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA539B8);
  }

  return result;
}

unint64_t sub_1B7CDB44C()
{
  result = qword_1EBA539C0;
  if (!qword_1EBA539C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA539C0);
  }

  return result;
}

sqlite3 *sub_1B7CDB4A8(sqlite3_stmt *a1, int a2, char a3)
{
  result = sqlite3_bind_int(a1, a2, a3);
  if (result)
  {
    result = sqlite3_db_handle(a1);
    if (result)
    {
      v5 = result;
      result = sqlite3_errmsg(result);
      if (result)
      {
        v6 = sub_1B7CFEB70();
        v8 = v7;
        v9 = sqlite3_extended_errcode(v5);
        sub_1B7C951E8();
        swift_allocError();
        *v10 = v9;
        v10[1] = v6;
        v10[2] = v8;
        return swift_willThrow();
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1B7CDB568@<X0>(sqlite3_stmt *a1@<X0>, int a2@<W1>, _BYTE *a3@<X8>)
{
  result = sqlite3_column_int(a1, a2);
  if (result < -128)
  {
    __break(1u);
  }

  else if (result <= 127)
  {
    *a3 = result;
    return result;
  }

  __break(1u);
  return result;
}

sqlite3 *sub_1B7CDB5B0(sqlite3_stmt *a1, int a2, __int16 a3)
{
  result = sqlite3_bind_int(a1, a2, a3);
  if (result)
  {
    result = sqlite3_db_handle(a1);
    if (result)
    {
      v5 = result;
      result = sqlite3_errmsg(result);
      if (result)
      {
        v6 = sub_1B7CFEB70();
        v8 = v7;
        v9 = sqlite3_extended_errcode(v5);
        sub_1B7C951E8();
        swift_allocError();
        *v10 = v9;
        v10[1] = v6;
        v10[2] = v8;
        return swift_willThrow();
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1B7CDB670@<X0>(sqlite3_stmt *a1@<X0>, int a2@<W1>, _WORD *a3@<X8>)
{
  result = sqlite3_column_int(a1, a2);
  if (result < -32768)
  {
    __break(1u);
  }

  else if (result < 0x8000)
  {
    *a3 = result;
    return result;
  }

  __break(1u);
  return result;
}

sqlite3 *sub_1B7CDB6B8(sqlite3_stmt *a1, int a2)
{
  result = sqlite3_bind_int(a1, a2, *v2);
  if (result)
  {
    result = sqlite3_db_handle(a1);
    if (result)
    {
      v5 = result;
      result = sqlite3_errmsg(result);
      if (result)
      {
        v6 = sub_1B7CFEB70();
        v8 = v7;
        v9 = sqlite3_extended_errcode(v5);
        sub_1B7C951E8();
        swift_allocError();
        *v10 = v9;
        v10[1] = v6;
        v10[2] = v8;
        return swift_willThrow();
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1B7CDB75C@<X0>(sqlite3_stmt *a1@<X0>, int a2@<W1>, _DWORD *a3@<X8>)
{
  result = sqlite3_column_int(a1, a2);
  *a3 = result;
  return result;
}

sqlite3 *sub_1B7CDB78C(sqlite3_stmt *a1, int a2)
{
  result = sqlite3_bind_int64(a1, a2, *v2);
  if (result)
  {
    result = sqlite3_db_handle(a1);
    if (result)
    {
      v5 = result;
      result = sqlite3_errmsg(result);
      if (result)
      {
        v6 = sub_1B7CFEB70();
        v8 = v7;
        v9 = sqlite3_extended_errcode(v5);
        sub_1B7C951E8();
        swift_allocError();
        *v10 = v9;
        v10[1] = v6;
        v10[2] = v8;
        return swift_willThrow();
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  return result;
}

sqlite3 *sub_1B7CDB830(sqlite3_stmt *a1, int a2, unsigned __int8 a3)
{
  result = sqlite3_bind_int(a1, a2, a3);
  if (result)
  {
    result = sqlite3_db_handle(a1);
    if (result)
    {
      v5 = result;
      result = sqlite3_errmsg(result);
      if (result)
      {
        v6 = sub_1B7CFEB70();
        v8 = v7;
        v9 = sqlite3_extended_errcode(v5);
        sub_1B7C951E8();
        swift_allocError();
        *v10 = v9;
        v10[1] = v6;
        v10[2] = v8;
        return swift_willThrow();
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1B7CDB8F0@<X0>(sqlite3_stmt *a1@<X0>, int a2@<W1>, _BYTE *a3@<X8>)
{
  result = sqlite3_column_int(a1, a2);
  if ((result & 0x80000000) != 0)
  {
    __break(1u);
  }

  else if (result <= 0xFF)
  {
    *a3 = result;
    return result;
  }

  __break(1u);
  return result;
}

sqlite3 *sub_1B7CDB934(sqlite3_stmt *a1, int a2, unsigned __int16 a3)
{
  result = sqlite3_bind_int(a1, a2, a3);
  if (result)
  {
    result = sqlite3_db_handle(a1);
    if (result)
    {
      v5 = result;
      result = sqlite3_errmsg(result);
      if (result)
      {
        v6 = sub_1B7CFEB70();
        v8 = v7;
        v9 = sqlite3_extended_errcode(v5);
        sub_1B7C951E8();
        swift_allocError();
        *v10 = v9;
        v10[1] = v6;
        v10[2] = v8;
        return swift_willThrow();
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1B7CDB9F4@<X0>(sqlite3_stmt *a1@<X0>, int a2@<W1>, _WORD *a3@<X8>)
{
  result = sqlite3_column_int(a1, a2);
  if ((result & 0x80000000) != 0)
  {
    __break(1u);
  }

  else if (!WORD1(result))
  {
    *a3 = result;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B7CDBA38(sqlite3_stmt *a1, int a2, unsigned int a3)
{
  result = sqlite3_bind_int64(a1, a2, a3);
  if (result)
  {
    result = sqlite3_db_handle(a1);
    if (result)
    {
      v5 = result;
      result = sqlite3_errmsg(result);
      if (result)
      {
        v6 = sub_1B7CFEB70();
        v8 = v7;
        v9 = sqlite3_extended_errcode(v5);
        sub_1B7C951E8();
        swift_allocError();
        *v10 = v9;
        v10[1] = v6;
        v10[2] = v8;
        return swift_willThrow();
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  return result;
}

unint64_t sub_1B7CDBAF8@<X0>(sqlite3_stmt *a1@<X0>, int a2@<W1>, _DWORD *a3@<X8>)
{
  result = sqlite3_column_int64(a1, a2);
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (!HIDWORD(result))
  {
    *a3 = result;
    return result;
  }

  __break(1u);
  return result;
}

sqlite3_stmt *sub_1B7CDBB3C(sqlite3_stmt *result, int a2, sqlite3_int64 a3)
{
  if (a3 < 0)
  {
    __break(1u);
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v3 = result;
  result = sqlite3_bind_int64(result, a2, a3);
  if (!result)
  {
    return result;
  }

  result = sqlite3_db_handle(v3);
  if (!result)
  {
    goto LABEL_8;
  }

  v4 = result;
  result = sqlite3_errmsg(result);
  if (!result)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v5 = sub_1B7CFEB70();
  v7 = v6;
  v8 = sqlite3_extended_errcode(v4);
  sub_1B7C951E8();
  swift_allocError();
  *v9 = v8;
  v9[1] = v5;
  v9[2] = v7;
  return swift_willThrow();
}

sqlite3_int64 sub_1B7CDBBE4@<X0>(sqlite3_stmt *a1@<X0>, int a2@<W1>, sqlite3_int64 *a3@<X8>)
{
  result = sqlite3_column_int64(a1, a2);
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    *a3 = result;
  }

  return result;
}

sqlite3 *sub_1B7CDBC1C(sqlite3_stmt *a1, int a2)
{
  result = sqlite3_bind_double(a1, a2, *v2);
  if (result)
  {
    result = sqlite3_db_handle(a1);
    if (result)
    {
      v5 = result;
      result = sqlite3_errmsg(result);
      if (result)
      {
        v6 = sub_1B7CFEB70();
        v8 = v7;
        v9 = sqlite3_extended_errcode(v5);
        sub_1B7C951E8();
        swift_allocError();
        *v10 = v9;
        v10[1] = v6;
        v10[2] = v8;
        return swift_willThrow();
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1B7CDBCF0(uint64_t result, uint64_t a2, sqlite3_stmt *a3, int a4)
{
  if (result)
  {
    v4 = a2 - result;
  }

  else
  {
    v4 = 0;
  }

  if (v4 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v4 > 0x7FFFFFFF)
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v7 = result;
  v8 = _IMDSQLTransient();
  result = sqlite3_bind_blob(a3, a4, v7, v4, v8);
  if (!result)
  {
    return result;
  }

  result = sqlite3_db_handle(a3);
  if (!result)
  {
    goto LABEL_13;
  }

  v9 = result;
  result = sqlite3_errmsg(result);
  if (!result)
  {
LABEL_14:
    __break(1u);
    return result;
  }

  v10 = sub_1B7CFEB70();
  v12 = v11;
  v13 = sqlite3_extended_errcode(v9);
  sub_1B7C951E8();
  swift_allocError();
  *v14 = v13;
  v14[1] = v10;
  v14[2] = v12;
  return swift_willThrow();
}

_BYTE *sub_1B7CDBE10@<X0>(sqlite3_stmt *a1@<X0>, int a2@<W1>, void *a3@<X8>)
{
  v6 = sqlite3_column_bytes(a1, a2);
  if (v6 < 1)
  {
    result = 0;
    v9 = 0xC000000000000000;
    goto LABEL_5;
  }

  v7 = v6;
  result = sqlite3_column_blob(a1, a2);
  if (result)
  {
    result = sub_1B7C3A6B4(result, v7);
LABEL_5:
    *a3 = result;
    a3[1] = v9;
    return result;
  }

  __break(1u);
  return result;
}

sqlite3 *sub_1B7CDBE8C(sqlite3_stmt *a1, int a2)
{
  sub_1B7CFE140();
  v4 = _IMDSQLTransient();
  v5 = sub_1B7CFEAD0();

  v6 = sqlite3_bind_text(a1, a2, (v5 + 32), -1, v4);

  if (v6)
  {
    result = sqlite3_db_handle(a1);
    if (result)
    {
      v8 = result;
      result = sqlite3_errmsg(result);
      if (result)
      {
        v9 = sub_1B7CFEB70();
        v11 = v10;
        v12 = sqlite3_extended_errcode(v8);
        sub_1B7C951E8();
        swift_allocError();
        *v13 = v12;
        v13[1] = v9;
        v13[2] = v11;
        return swift_willThrow();
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  return result;
}

const unsigned __int8 *sub_1B7CDBF84@<X0>(sqlite3_stmt *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v6 = sub_1B7C107FC(&qword_1EBA525D8, &qword_1B7D0CB88);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v12 - v7;
  result = sqlite3_column_text(a1, a2);
  if (result)
  {
    sub_1B7CFEB80();
    sub_1B7CFE130();

    v10 = sub_1B7CFE180();
    v11 = *(v10 - 8);
    if ((*(v11 + 48))(v8, 1, v10) == 1)
    {
      sub_1B7CDC378(v8);
      sub_1B7CDC3E0();
      swift_allocError();
      return swift_willThrow();
    }

    else
    {
      return (*(v11 + 32))(a3, v8, v10);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B7CDC150(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  v20 = a2;
  v7 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v10 + 16);
  v12 = *(v11 - 8);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9, v17, v14);
  if ((*(v12 + 48))(v9, 1, v11) == 1)
  {
    return (*(v7 + 8))(v9, a3);
  }

  (*(v12 + 32))(v16, v9, v11);
  (*(a4 + 16))(a1, v20, v11, a4);
  return (*(v12 + 8))(v16, v11);
}

uint64_t sub_1B7CDC378(uint64_t a1)
{
  v2 = sub_1B7C107FC(&qword_1EBA525D8, &qword_1B7D0CB88);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1B7CDC3E0()
{
  result = qword_1EBA539C8;
  if (!qword_1EBA539C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA539C8);
  }

  return result;
}

uint64_t sub_1B7CDC434(uint64_t a1, unint64_t a2, sqlite3_stmt *a3, int a4)
{
  v20[2] = *MEMORY[0x1E69E9840];
  v4 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v4 != 2)
    {
      memset(v20, 0, 14);
      v6 = v20;
      v5 = v20;
      return sub_1B7CDBCF0(v6, v5, a3, a4);
    }

    v7 = a3;
    v8 = a4;
    v9 = *(a1 + 16);
    v10 = *(a1 + 24);
    a1 = sub_1B7CFDC90();
    v11 = a1;
    if (a1)
    {
      a1 = sub_1B7CFDCB0();
      if (__OFSUB__(v9, a1))
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      v11 += v9 - a1;
    }

    v12 = __OFSUB__(v10, v9);
    v13 = v10 - v9;
    if (!v12)
    {
      goto LABEL_15;
    }

    __break(1u);
  }

  else if (!v4)
  {
    v20[0] = a1;
    LOWORD(v20[1]) = a2;
    BYTE2(v20[1]) = BYTE2(a2);
    BYTE3(v20[1]) = BYTE3(a2);
    BYTE4(v20[1]) = BYTE4(a2);
    BYTE5(v20[1]) = BYTE5(a2);
    v5 = v20 + BYTE6(a2);
    v6 = v20;
    return sub_1B7CDBCF0(v6, v5, a3, a4);
  }

  v14 = a1;
  v13 = (a1 >> 32) - a1;
  if (a1 >> 32 < a1)
  {
    __break(1u);
    goto LABEL_25;
  }

  v7 = a3;
  v8 = a4;
  v11 = sub_1B7CFDC90();
  if (v11)
  {
    v15 = sub_1B7CFDCB0();
    if (!__OFSUB__(v14, v15))
    {
      v11 += v14 - v15;
      goto LABEL_15;
    }

LABEL_26:
    __break(1u);
  }

LABEL_15:
  v16 = sub_1B7CFDCA0();
  if (v16 >= v13)
  {
    v17 = v13;
  }

  else
  {
    v17 = v16;
  }

  v18 = (v17 + v11);
  if (v11)
  {
    v5 = v18;
  }

  else
  {
    v5 = 0;
  }

  v6 = v11;
  a3 = v7;
  a4 = v8;
  return sub_1B7CDBCF0(v6, v5, a3, a4);
}

unint64_t sub_1B7CDC62C()
{
  result = qword_1EBA539D0;
  if (!qword_1EBA539D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA539D0);
  }

  return result;
}

id sub_1B7CDC9B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v12 = sub_1B7C107FC(&unk_1EBA51980, &unk_1B7D0A1B0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v24 - v13;
  v15 = &v6[OBJC_IVAR___IMDSyncDeletedChatRecord_ckRecordID];
  *v15 = 0;
  *(v15 + 1) = 0;
  v16 = &v6[OBJC_IVAR___IMDSyncDeletedChatRecord_guid];
  *v16 = a1;
  *(v16 + 1) = a2;
  *v15 = a3;
  *(v15 + 1) = a4;
  sub_1B7C108AC(a5, v14);
  v17 = sub_1B7CFE120();
  v18 = *(v17 - 8);
  if ((*(v18 + 48))(v14, 1, v17) == 1)
  {
    sub_1B7C10844(v14);
    v19 = 0.0;
LABEL_6:
    *&v6[OBJC_IVAR___IMDSyncDeletedChatRecord_rawDate] = v19;
    v24.receiver = v6;
    v24.super_class = IMDSyncDeletedChatRecord;
    v23 = objc_msgSendSuper2(&v24, sel_init);
    sub_1B7C10844(a5);
    return v23;
  }

  sub_1B7CFE060();
  v21 = v20;
  result = (*(v18 + 8))(v14, v17);
  v19 = v21 * 1000000000.0;
  if (COERCE__INT64(fabs(v21 * 1000000000.0)) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    if (v19 <= -9.22337204e18)
    {
      __break(1u);
    }

    else if (v19 < 9.22337204e18)
    {
      goto LABEL_6;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

id IMDSyncDeletedChatRecord.init(coder:)(void *a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithCoder_];

  return v2;
}

{
  v2 = v1;
  v4 = sub_1B7CFE120();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B7AEE088(0, &unk_1EDBE59A0, 0x1E696AEC0);
  v8 = sub_1B7CFEFB0();
  if (v8)
  {
    v9 = v8;
    v10 = sub_1B7CFEFB0();
    v11 = sub_1B7CFEA30();
    [a1 decodeIntegerForKey_];

    sub_1B7CFE050();
    v12 = sub_1B7CFE0A0();
    v13 = [v2 initWithGUID:v9 ckRecordID:v10 date:v12];

    (*(v5 + 8))(v7, v4);
  }

  else
  {

    swift_getObjectType();
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v13;
}

void sub_1B7CDCF58(void *a1)
{
  v3 = [v1 guid];
  if (!v3)
  {
    sub_1B7CFEA60();
    v3 = sub_1B7CFEA30();
  }

  v4 = sub_1B7CFEA30();
  [a1 encodeObject:v3 forKey:v4];

  v5 = [v1 ckRecordID];
  if (v5)
  {
    v6 = v5;
    v7 = sub_1B7CFEA30();
    [a1 encodeObject:v6 forKey:v7];
  }

  v8 = [v1 rawDate];
  v9 = sub_1B7CFEA30();
  [a1 encodeInt64:v8 forKey:v9];
}

id IMDSyncDeletedChatRecord.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

void sub_1B7CDD1FC()
{
  if (qword_1EBA515F0 != -1)
  {
    swift_once();
  }

  sub_1B7CFF210();
  MEMORY[0x1B8CADCA0](0xD00000000000001BLL, 0x80000001B7D513A0);
  MEMORY[0x1B8CADCA0](*(v0 + 16), *(v0 + 24));
  MEMORY[0x1B8CADCA0](0xD000000000000083, 0x80000001B7D5BD00);
  SqlOperation.execute(_:_:)(0, 0xE000000000000000, 0, 0);

  if (!v1)
  {
    sub_1B7C741A8(&unk_1F2FA1F48);

    sub_1B7C741A8(&unk_1F2FA1F78);
  }
}

void sub_1B7CDD354(uint64_t a1@<X0>, sqlite3_int64 *a4@<X8>)
{
  v10[4] = *MEMORY[0x1E69E9840];
  v6 = sub_1B7CFEA30();
  v7 = [v6 stringByAbbreviatingWithTildeInPath];

  sub_1B7CFEA60();
  v8 = sub_1B7CFEA30();
  swift_beginAccess();
  IMDSqlStatementBindTextFromCFString(a1 + 48, v8);
  swift_endAccess();

  swift_beginAccess();
  v10[0] = 0;
  IMDSqlOperationGetError(a1 + 16, v10);
  v9 = v10[0];
  swift_endAccess();
  if (v9)
  {
    swift_willThrow();
    v9;
  }

  else
  {

    *a4 = _s14IMDPersistence12SqlOperationC7uint64s14forColumnIndexSays6UInt64VGSi_tF_0();
  }
}

uint64_t sub_1B7CDD4A0(void *a1, uint64_t a2)
{
  v4 = v3;
  v7 = swift_allocObject();
  v12 = a1;
  *(v7 + 16) = *a1;
  if (qword_1EBA515F0 != -1)
  {
    swift_once();
  }

  sub_1B7CFF210();
  MEMORY[0x1B8CADCA0](0xD00000000000003CLL, 0x80000001B7D5BDD0);
  MEMORY[0x1B8CADCA0](*(v2 + 16), *(v2 + 24));
  MEMORY[0x1B8CADCA0](0xD00000000000002DLL, 0x80000001B7D5BE10);
  v8 = swift_allocObject();
  v8[2] = v7;
  v8[3] = a2;
  v8[4] = v2;

  v9 = sub_1B7CD7370(0, 0xE000000000000000, sub_1B7CDF9E0, v8);
  if (v3)
  {

    return v4;
  }

  v4 = v9;

  if (!v4)
  {
LABEL_10:

    return MEMORY[0x1E69E7CC0];
  }

  if (!*(v4 + 16))
  {

    goto LABEL_10;
  }

  swift_beginAccess();
  v10 = *(v7 + 16);

  if (v10 != -1)
  {
    *v12 = v10 + 1;
    return v4;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B7CDD6B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v82 = *MEMORY[0x1E69E9840];
  v9 = sub_1B7CFE420();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = type metadata accessor for StorageInspectionFileRecord(0);
  v62 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v66 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v61 = (&v50 - v15);
  MEMORY[0x1EEE9AC00](v16);
  v65 = &v50 - v17;
  v64 = sub_1B7CFDFF0();
  v18 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v60 = &v50 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v67 = &v50 - v21;
  swift_beginAccess();
  v69 = a2;
  v22 = *(a2 + 16);
  if (v22 < 0)
  {
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
  }

  v68 = a4;
  swift_beginAccess();
  IMDSqlStatementBindInt64((a1 + 48), v22);
  *&v74 = 0;
  IMDSqlOperationGetError(a1 + 16, &v74);
  v23 = v74;
  swift_endAccess();
  if (v23)
  {
LABEL_6:
    v23;
    return swift_willThrow();
  }

  if (a3 < 0xFFFFFFFF80000000)
  {
    goto LABEL_45;
  }

  if (a3 > 0x7FFFFFFF)
  {
    goto LABEL_46;
  }

  swift_beginAccess();
  IMDSqlStatementBindInt((a1 + 48), a3);
  *&v74 = 0;
  IMDSqlOperationGetError(a1 + 16, &v74);
  v23 = v74;
  swift_endAccess();
  if (v23)
  {
    goto LABEL_6;
  }

  swift_beginAccess();
  swift_beginAccess();

  HasRows = IMDSqlOperationHasRows(a1 + 16);
  swift_endAccess();
  if (!HasRows)
  {
    v27 = MEMORY[0x1E69E7CC0];
    goto LABEL_43;
  }

  v73 = type metadata accessor for SqlOperation.Row();
  v72 = "directoryBatchSize";
  v71 = "ORDER BY ROWID ASC;";
  v26 = (v10 + 8);
  v53 = *MEMORY[0x1E695DBA8];
  v57 = "at_update_sync_chat_deletes";
  v56 = *MEMORY[0x1E695DC58];
  v55 = (v18 + 32);
  v54 = (v18 + 8);
  v70 = 0xD000000000000012;
  v27 = MEMORY[0x1E69E7CC0];
  v58 = v4;
  do
  {
    v59 = v27;
    while (1)
    {
      inited = swift_initStackObject();
      v30 = sub_1B7C23650(MEMORY[0x1E69E7CC0]);
      *(inited + 16) = a1;
      *(inited + 24) = v30;
      SqlOperation.Row.column(forColumnName:)(0x4449574F52uLL, 0xE500000000000000, &v74);
      if (!*(&v74 + 1))
      {
LABEL_16:
        sub_1B7C26C10(&v74);
        goto LABEL_17;
      }

      v78 = v74;
      v79 = v75;
      v80 = v76;
      v81 = v77;
      v31 = v75;
      sub_1B7C26C78(&v78);
      v83 = SqlOperation.Row.uint64(forColumnIndex:)(v31);
      if (!v83.is_nil)
      {
        value = v83.value;
        SqlOperation.Row.column(forColumnName:)(0x68746170uLL, 0xE400000000000000, &v74);
        if (!*(&v74 + 1))
        {
          goto LABEL_16;
        }

        v78 = v74;
        v79 = v75;
        v80 = v76;
        v81 = v77;
        v33 = v75;
        sub_1B7C26C78(&v78);
        v34 = SqlOperation.Row.string(forColumnIndex:)(v33);
        if (v34.value._object)
        {
          break;
        }
      }

LABEL_17:
      sub_1B7CFE410();
      v35 = sub_1B7CFE400();
      v36 = sub_1B7CFEEF0();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        *v37 = 0;
        _os_log_impl(&dword_1B7AD5000, v35, v36, "selecting batch of FileRecords failed", v37, 2u);
        MEMORY[0x1B8CB0E70](v37, -1, -1);
      }

      (*v26)(v12, v9);
      swift_beginAccess();

      v28 = IMDSqlOperationHasRows(a1 + 16);
      swift_endAccess();
      if (!v28)
      {
        v27 = v59;
        goto LABEL_43;
      }
    }

    *(v69 + 16) = value;
    sub_1B7CFDF20();
    SqlOperation.Row.column(forColumnName:)(0x65677275705F7369uLL, 0xEC000000656C6261, &v74);
    if (*(&v74 + 1))
    {
      v78 = v74;
      v79 = v75;
      v80 = v76;
      v81 = v77;
      v38 = v75;
      sub_1B7C26C78(&v78);
      v84 = SqlOperation.Row.uint64(forColumnIndex:)(v38);
      if (!v84.is_nil)
      {
        v39 = v84.value != 0;
        *(&v79 + 1) = sub_1B7C107FC(&qword_1EBA52E78, "̌\a");
        v52 = v39;
        LOBYTE(v78) = v39;
        sub_1B7CFDF90();
        sub_1B7AE9168(&v78);
        goto LABEL_24;
      }
    }

    else
    {
      sub_1B7C26C10(&v74);
    }

    v52 = 2;
LABEL_24:
    SqlOperation.Row.column(forColumnName:)(0xD000000000000014, v57 | 0x8000000000000000, &v74);
    if (*(&v74 + 1))
    {
      v78 = v74;
      v79 = v75;
      v80 = v76;
      v81 = v77;
      v40 = v75;
      sub_1B7C26C78(&v78);
      v85 = SqlOperation.Row.uint64(forColumnIndex:)(v40);
      if (!v85.is_nil)
      {
        *(&v79 + 1) = MEMORY[0x1E69E76D8];
        *&v78 = v85.value;
        sub_1B7CFDF90();
        sub_1B7AE9168(&v78);
      }
    }

    else
    {
      sub_1B7C26C10(&v74);
    }

    SqlOperation.Row.column(forColumnName:)(0xD000000000000014, v57 | 0x8000000000000000, &v74);
    if (!*(&v74 + 1))
    {
      sub_1B7C26C10(&v74);
LABEL_32:
      v86.value = 0;
      goto LABEL_33;
    }

    v78 = v74;
    v79 = v75;
    v80 = v76;
    v81 = v77;
    v41 = v75;
    sub_1B7C26C78(&v78);
    v86 = SqlOperation.Row.uint64(forColumnIndex:)(v41);
    if (v86.is_nil)
    {
      goto LABEL_32;
    }

LABEL_33:
    v42 = v61;
    *v61 = value;
    v43 = v42;
    *(v42 + 8) = 0;
    *(v42 + 1) = v34;
    *(v42 + 32) = v52;
    v51 = v86.value;
    v42[5] = v86.value;

    v44 = v60;
    sub_1B7CFDF20();
    v45 = v52;

    if (v45 != 2)
    {
      *(&v79 + 1) = MEMORY[0x1E69E6370];
      LOBYTE(v78) = v45;
      sub_1B7CFDF90();
      sub_1B7AE9168(&v78);
    }

    *(&v79 + 1) = MEMORY[0x1E69E76D8];
    *&v78 = v51;
    sub_1B7CFDF90();
    sub_1B7AE9168(&v78);
    (*v55)(v43 + *(v63 + 32), v44, v64);
    v46 = v65;
    sub_1B7CDFA00(v43, v65);
    sub_1B7CC0E30(v46, v66);
    v27 = v59;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v27 = sub_1B7CA3824(0, v27[2] + 1, 1, v27);
    }

    v48 = v27[2];
    v47 = v27[3];
    if (v48 >= v47 >> 1)
    {
      v27 = sub_1B7CA3824((v47 > 1), v48 + 1, 1, v27);
    }

    sub_1B7CC0E94(v65);
    (*v54)(v67, v64);
    v27[2] = v48 + 1;
    sub_1B7CDFA00(v66, v27 + ((*(v62 + 80) + 32) & ~*(v62 + 80)) + *(v62 + 72) * v48);
    swift_beginAccess();

    v49 = IMDSqlOperationHasRows(a1 + 16);
    swift_endAccess();
  }

  while (v49);
LABEL_43:

  *v68 = v27;
  return result;
}

void *sub_1B7CDE180(uint64_t a1)
{
  v2 = v1;
  v66 = *MEMORY[0x1E69E9840];
  v4 = sub_1B7CFDFF0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v44 = v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v40 - v8;
  v10 = swift_allocObject();
  v46 = v10;
  *(v10 + 16) = MEMORY[0x1E69E7CC0];
  v40[1] = v10 + 16;
  v11 = *(a1 + *(type metadata accessor for StorageInspectionAttachmentDirectory(0) + 20));
  v49 = *(v11 + 16);
  if (v49)
  {
    v12 = 0;
    v59 = v5 + 16;
    v52 = "', isPurgeable: '";
    v53 = ", isRecoverable: ";
    v54 = (v5 + 8);
    v43 = " INTEGER NOT NULL);";
    v42 = v6 + 7;
    v41 = (v5 + 32);
    v50 = v4;
    v51 = v9;
    v47 = v11;
    v48 = v5;
    while (1)
    {
      if (v12 >= *(v11 + 16))
      {
        __break(1u);
      }

      v13 = *(v5 + 80);
      v57 = v13;
      v58 = (v13 + 32) & ~v13;
      v14 = v11 + v58 + *(v5 + 72) * v12;
      v56 = *(v5 + 16);
      v56(v9, v14, v4);
      sub_1B7CFDFD0();
      v15 = sub_1B7CFEA30();

      v16 = [v15 stringByAbbreviatingWithTildeInPath];

      v62 = sub_1B7CFEA60();
      v18 = v17;

      if (qword_1EBA515F0 != -1)
      {
        swift_once();
      }

      v19 = off_1EBA52D08;
      v64 = 0;
      v65 = 0xE000000000000000;
      sub_1B7CFF210();
      MEMORY[0x1B8CADCA0](0xD000000000000012, v53 | 0x8000000000000000);
      v21 = *(v55 + 16);
      v20 = *(v55 + 24);
      MEMORY[0x1B8CADCA0](v21, v20);
      MEMORY[0x1B8CADCA0](0xD000000000000023, v52 | 0x8000000000000000);
      v22 = v65;

      v23 = objc_autoreleasePoolPush();
      v61 = v22;
      v24 = sub_1B7CFEA30();
      swift_beginAccess();
      IMDSqlOperationStartQuery(v19 + 16, v24);
      swift_endAccess();

      swift_beginAccess();
      v63 = 0;
      IMDSqlOperationGetError((v19 + 16), &v63);
      v25 = v63;
      swift_endAccess();
      if (v25)
      {
        swift_willThrow();
        v25;
        v27 = v51;
        goto LABEL_22;
      }

      v60 = v12;
      v26 = v18;
      sub_1B7CDD354(v19, &v64);
      v27 = v51;
      if (v2)
      {
        break;
      }

      v28 = v51;
      v29 = v64;
      swift_beginAccess();
      IMDSqlOperationFinishQuery((v19 + 16));
      v63 = 0;
      IMDSqlOperationGetError((v19 + 16), &v63);
      v30 = v63;
      swift_endAccess();
      if (v30)
      {
        swift_willThrow();
        v2 = v30;
        v27 = v28;
        break;
      }

      objc_autoreleasePoolPop(v23);

      if (v29)
      {
        v31 = v29;
      }

      else
      {
        v31 = MEMORY[0x1E69E7CC0];
      }

      v32 = *(v31 + 16);

      if (v32)
      {
        v9 = v28;
        v4 = v50;
        (*v54)(v28, v50);
      }

      else
      {
        v64 = 0;
        v65 = 0xE000000000000000;
        sub_1B7CFF210();
        MEMORY[0x1B8CADCA0](0x4920545245534E49, 0xEC000000204F544ELL);
        MEMORY[0x1B8CADCA0](v21, v20);
        MEMORY[0x1B8CADCA0](0xD00000000000003DLL, v43 | 0x8000000000000000);
        v61 = v64;
        v45 = v65;
        v33 = v44;
        v4 = v50;
        v56(v44, v28, v50);
        v34 = v58;
        v35 = (v42 + v58) & 0xFFFFFFFFFFFFFFF8;
        v36 = swift_allocObject();
        *(v36 + 16) = v62;
        *(v36 + 24) = v26;
        (*v41)(v36 + v34, v33, v4);
        *(v36 + v35) = v46;
        SqlOperation.execute(_:_:)(v61, v45, sub_1B7CDF944, v36);
        v37 = *v54;

        v37(v28, v4);

        v9 = v28;
      }

      v12 = v60 + 1;
      v5 = v48;
      v11 = v47;
      if (v49 == v60 + 1)
      {
        goto LABEL_16;
      }
    }

    swift_beginAccess();
    IMDSqlOperationFinishQuery((v19 + 16));
    v63 = 0;
    IMDSqlOperationGetError((v19 + 16), &v63);
    v38 = v63;
    swift_endAccess();
    swift_willThrow();
    if (v38)
    {
      v38;
    }

LABEL_22:

    objc_autoreleasePoolPop(v23);

    (*v54)(v27, v50);
  }

  else
  {
LABEL_16:
    swift_beginAccess();
    v23 = *(v46 + 16);
  }

  return v23;
}

void sub_1B7CDE8F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v22[4] = *MEMORY[0x1E69E9840];
  v8 = sub_1B7CFDFF0();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v22[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1B7CFEA30();
  swift_beginAccess();
  IMDSqlStatementBindTextFromCFString(a1 + 48, v12);
  swift_endAccess();

  swift_beginAccess();
  v22[0] = 0;
  IMDSqlOperationGetError(a1 + 16, v22);
  v13 = v22[0];
  swift_endAccess();
  if (v13)
  {
    goto LABEL_2;
  }

  v14 = URL.isPurgeable.getter();
  if (v14 == 2)
  {
    swift_beginAccess();
    IMDSqlStatementBindNull((a1 + 48));
    v22[0] = 0;
    IMDSqlOperationGetError(a1 + 16, v22);
    v13 = v22[0];
    swift_endAccess();
    if (v13)
    {
LABEL_2:
      swift_willThrow();
      v13;
      return;
    }
  }

  else
  {
    v23.value = v14 & 1;
    v23.is_nil = 0;
    SqlOperation.bind(_:)(v23);
    if (v15)
    {
      return;
    }
  }

  v24.value = URL.fileAllocationSize.getter();
  v24.is_nil &= 1u;
  SqlOperation.bind(_:)(v24);
  if (!v16)
  {
    (*(v9 + 16))(v11, a4, v8);
    swift_beginAccess();
    v17 = *(a5 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a5 + 16) = v17;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v17 = sub_1B7CA1D44(0, v17[2] + 1, 1, v17);
      *(a5 + 16) = v17;
    }

    v20 = v17[2];
    v19 = v17[3];
    if (v20 >= v19 >> 1)
    {
      v17 = sub_1B7CA1D44((v19 > 1), v20 + 1, 1, v17);
    }

    v17[2] = v20 + 1;
    (*(v9 + 32))(v17 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v20, v11, v8);
    *(a5 + 16) = v17;
  }
}

void *sub_1B7CDEC04(uint64_t a1)
{
  v2 = v1;
  v69[5] = *MEMORY[0x1E69E9840];
  v55 = sub_1B7CFE420();
  v4 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v6 = v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for StorageInspectionFileRecord(0);
  v60 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = v47 - v10;
  v67 = MEMORY[0x1E69E7CD0];
  v68 = 0;
  v58 = "', isPurgeable: '";
  v59 = ", isRecoverable: ";
  v53 = "directoryBatchSize";
  v52 = "ORDER BY ROWID ASC;";
  v51 = (v4 + 8);
  p_cb = &OBJC_PROTOCOL___CNChangeHistoryEventVisitor.cb;
  v13 = &qword_1EBA52000;
  v9.n128_u64[0] = 136315394;
  v48 = v9;
  v47[1] = a1;
  v56 = v6;
  v54 = v14;
  while (1)
  {
    if (*(p_cb + 190) != -1)
    {
      swift_once();
    }

    v15 = v13[417];
    v50 = objc_autoreleasePoolPush();
    swift_beginAccess();
    IMDSqlOperationBeginTransaction((v15 + 16));
    v66 = 0;
    IMDSqlOperationGetError(v15 + 16, &v66);
    v16 = v66;
    swift_endAccess();
    if (v16)
    {
      swift_willThrow();
      v16;
      goto LABEL_32;
    }

    v17 = sub_1B7CDD4A0(&v68, 50);
    if (v2)
    {
      goto LABEL_26;
    }

    v18 = v17;
    v49 = 0;
    v63 = *(v17 + 16);
    if (v63)
    {
      break;
    }

LABEL_17:

    swift_beginAccess();
    IMDSqlOperationCommitTransaction((v15 + 16));
    v66 = 0;
    IMDSqlOperationGetError(v15 + 16, &v66);
    v16 = v66;
    swift_endAccess();
    if (v16)
    {
      swift_willThrow();
      v2 = v16;
      if (*(v15 + 32))
      {
        goto LABEL_27;
      }

      goto LABEL_31;
    }

    objc_autoreleasePoolPop(v50);
    v2 = v49;
    p_cb = (&OBJC_PROTOCOL___CNChangeHistoryEventVisitor + 64);
    v13 = &qword_1EBA52000;
    if (!v63)
    {
      v43 = v67;
      v44 = *(v67 + 16);
      if (!v44)
      {

        return MEMORY[0x1E69E7CC0];
      }

      v16 = sub_1B7CD9410(*(v67 + 16), 0);
      v45 = sub_1B7CD9C2C(v69, v16 + 4, v44, v43);
      v46 = v69[0];

      sub_1B7AEC4CC(v46);
      if (v45 == v44)
      {

        return v16;
      }

LABEL_39:
      __break(1u);
    }
  }

  v19 = 0;
  v57 = v17;
  while (1)
  {
    if (v19 >= *(v18 + 16))
    {
      __break(1u);
      goto LABEL_39;
    }

    sub_1B7CC0E30(v18 + ((*(v60 + 80) + 32) & ~*(v60 + 80)) + *(v60 + 72) * v19, v11);
    v20 = *(v11 + 2);
    v16 = *(v11 + 3);
    v69[0] = 0;
    v69[1] = 0xE000000000000000;
    sub_1B7CFF210();
    MEMORY[0x1B8CADCA0](0xD000000000000012, v59 | 0x8000000000000000);
    v21 = *(v64 + 16);
    v62 = *(v64 + 24);
    MEMORY[0x1B8CADCA0](v21);
    MEMORY[0x1B8CADCA0](0xD000000000000023, v58 | 0x8000000000000000);

    v65 = objc_autoreleasePoolPush();
    v22 = sub_1B7CFEA30();
    swift_beginAccess();
    IMDSqlOperationStartQuery((v15 + 16), v22);
    swift_endAccess();

    swift_beginAccess();
    v66 = 0;
    IMDSqlOperationGetError(v15 + 16, &v66);
    v23 = v66;
    swift_endAccess();
    if (v23)
    {
      swift_willThrow();
      v2 = v23;
      goto LABEL_25;
    }

    v61 = v21;
    v24 = sub_1B7CFEA30();
    v25 = [v24 stringByAbbreviatingWithTildeInPath];

    sub_1B7CFEA60();
    v26 = sub_1B7CFEA30();
    swift_beginAccess();
    IMDSqlStatementBindTextFromCFString(v15 + 48, v26);
    swift_endAccess();

    swift_beginAccess();
    v66 = 0;
    IMDSqlOperationGetError(v15 + 16, &v66);
    v27 = v66;
    swift_endAccess();
    if (v27)
    {
      break;
    }

    v28 = _s14IMDPersistence12SqlOperationC7uint64s14forColumnIndexSays6UInt64VGSi_tF_0();
    swift_beginAccess();
    IMDSqlOperationFinishQuery(v15 + 16);
    v66 = 0;
    IMDSqlOperationGetError(v15 + 16, &v66);
    v29 = v66;
    swift_endAccess();
    if (v29)
    {
      swift_willThrow();
      v2 = v29;
      goto LABEL_23;
    }

    objc_autoreleasePoolPop(v65);

    v30 = *(v28 + 16);

    if (!v30)
    {

      sub_1B7C5E91C(v69, v20, v16);

      v31 = v56;
      sub_1B7CFE410();
      v32 = v54;
      sub_1B7CC0E30(v11, v54);

      v33 = sub_1B7CFE400();
      v34 = sub_1B7CFEED0();

      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        v65 = swift_slowAlloc();
        v69[0] = v65;
        *v35 = v48.n128_u32[0];
        v36 = *(v32 + 16);
        v37 = *(v32 + 24);

        sub_1B7CC0E94(v32);
        v38 = sub_1B7AED1B8(v36, v37, v69);

        *(v35 + 4) = v38;
        *(v35 + 12) = 2080;
        *(v35 + 14) = sub_1B7AED1B8(v61, v62, v69);
        _os_log_impl(&dword_1B7AD5000, v33, v34, "Found missing path: %s in %s", v35, 0x16u);
        v39 = v65;
        swift_arrayDestroy();
        MEMORY[0x1B8CB0E70](v39, -1, -1);
        MEMORY[0x1B8CB0E70](v35, -1, -1);

        (*v51)(v56, v55);
      }

      else
      {

        sub_1B7CC0E94(v32);
        (*v51)(v31, v55);
      }
    }

    ++v19;
    sub_1B7CC0E94(v11);
    v18 = v57;
    if (v63 == v19)
    {
      goto LABEL_17;
    }
  }

  swift_willThrow();
  v2 = v27;

LABEL_23:
  swift_beginAccess();
  IMDSqlOperationFinishQuery(v15 + 16);
  v66 = 0;
  IMDSqlOperationGetError(v15 + 16, &v66);
  v40 = v66;
  swift_endAccess();
  swift_willThrow();
  if (v40)
  {
    v41 = v40;

    v2 = v41;
  }

LABEL_25:

  objc_autoreleasePoolPop(v65);

  sub_1B7CC0E94(v11);
LABEL_26:
  if (*(v15 + 32))
  {
LABEL_27:
    swift_beginAccess();
    IMDSqlOperationRevertTransaction((v15 + 16));
    v66 = 0;
    IMDSqlOperationGetError(v15 + 16, &v66);
    v16 = v66;
    swift_endAccess();
    if (v16)
    {
      swift_willThrow();
      v16 = v16;

      goto LABEL_32;
    }
  }

LABEL_31:
  swift_willThrow();
LABEL_32:
  objc_autoreleasePoolPop(v50);

  return v16;
}

uint64_t sub_1B7CDF584(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = type metadata accessor for StorageInspectionFileRecord(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a3;
  v12 = a1;
  v13 = sub_1B7CDD4A0(a2, v11);
  if (v3)
  {
    return v12;
  }

  v14 = *(v13 + 16);
  if (!v14)
  {

    return MEMORY[0x1E69E7CC0];
  }

  v30 = MEMORY[0x1E69E7CC0];
  v15 = v13;
  sub_1B7AECEEC(0, v14, 0);
  v16 = 0;
  v12 = v30;
  v26 = v15 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v27 = v10;
  while (v16 < *(v15 + 16))
  {
    v17 = v8;
    sub_1B7CC0E30(v26 + *(v8 + 72) * v16, v10);
    sub_1B7CDF790(v10, &v28);
    sub_1B7CC0E94(v10);
    v19 = v28;
    v18 = v29;
    v30 = v12;
    v21 = *(v12 + 16);
    v20 = *(v12 + 24);
    if (v21 >= v20 >> 1)
    {
      v25 = v29;
      sub_1B7AECEEC((v20 > 1), v21 + 1, 1);
      v18 = v25;
      v12 = v30;
    }

    ++v16;
    *(v12 + 16) = v21 + 1;
    v22 = v12 + 16 * v21;
    *(v22 + 32) = v19;
    *(v22 + 40) = v18;
    v8 = v17;
    v10 = v27;
    if (v14 == v16)
    {

      return v12;
    }
  }

  __break(1u);
  sub_1B7CC0E94(v10);

  __break(1u);
  return result;
}

void sub_1B7CDF790(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = 0xE000000000000000;
  sub_1B7CFF210();
  if (*(a1 + 8))
  {
    v5 = 0;
  }

  else
  {
    sub_1B7C2617C();
    v5 = sub_1B7CFF090();
    v4 = v6;
  }

  MEMORY[0x1B8CADCA0](v5, v4);

  MEMORY[0x1B8CADCA0](0x203A68746170202CLL, 0xE900000000000027);
  MEMORY[0x1B8CADCA0](*(a1 + 16), *(a1 + 24));
  MEMORY[0x1B8CADCA0](0xD000000000000018, 0x80000001B7D5BC50);
  v7 = sub_1B7CFF570();
  MEMORY[0x1B8CADCA0](v7);

  MEMORY[0x1B8CADCA0](0xD000000000000011, 0x80000001B7D5BC70);
  v8 = *(a1 + 32);
  v9 = 1702195828;
  if ((v8 & 1) == 0)
  {
    v9 = 0x65736C6166;
  }

  v10 = 0xE500000000000000;
  if (v8)
  {
    v10 = 0xE400000000000000;
  }

  if (v8 == 2)
  {
    v11 = 0x6E776F6E6B6E75;
  }

  else
  {
    v11 = v9;
  }

  if (v8 == 2)
  {
    v12 = 0xE700000000000000;
  }

  else
  {
    v12 = v10;
  }

  MEMORY[0x1B8CADCA0](v11, v12);

  *a2 = 0;
  a2[1] = 0xE000000000000000;
}

void sub_1B7CDF944(uint64_t a1)
{
  v3 = *(sub_1B7CFDFF0() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  sub_1B7CDE8F4(a1, *(v1 + 16), *(v1 + 24), v1 + v4, *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_1B7CDFA00(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StorageInspectionFileRecord(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_1B7CDFA64()
{
  v0 = [objc_opt_self() interfaceWithProtocol_];
  sub_1B7C107FC(&qword_1EBA539F0, &qword_1B7D13D40);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1B7D0A6F0;
  v2 = sub_1B7AEE088(0, &unk_1EDBE59C0, 0x1E695DEC8);
  *(v1 + 32) = v2;
  v3 = sub_1B7AEE088(0, &qword_1EDBE5A20, off_1E7CB5138);
  *(v1 + 40) = v3;
  sub_1B7CFEF10();

  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B7D0A6F0;
  *(v4 + 32) = v2;
  *(v4 + 40) = sub_1B7AEE088(0, &qword_1EDBE5A10, 0x1E69A81D0);
  sub_1B7CFEF10();

  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1B7D0A6F0;
  *(v5 + 32) = v2;
  *(v5 + 40) = v3;
  sub_1B7CFEF10();

  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1B7D0A7B0;
  *(v6 + 32) = sub_1B7AEE088(0, &unk_1EDBE5930, 0x1E696AE18);
  sub_1B7CFEF10();

  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1B7D0A6F0;
  *(v7 + 32) = v2;
  *(v7 + 40) = sub_1B7AEE088(0, &unk_1EDBE5900, 0x1E696AEB0);
  sub_1B7CFEF10();

  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1B7D0A6F0;
  *(v8 + 32) = v2;
  *(v8 + 40) = v3;
  sub_1B7CFEF10();

  return v0;
}

id sub_1B7CDFCEC()
{
  v0 = [objc_opt_self() interfaceWithProtocol_];
  sub_1B7C107FC(&qword_1EBA539F0, &qword_1B7D13D40);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1B7D13D30;
  *(v1 + 32) = sub_1B7AEE088(0, &qword_1EDBE5A48, 0x1E695DF20);
  *(v1 + 40) = sub_1B7AEE088(0, &unk_1EDBE59C0, 0x1E695DEC8);
  *(v1 + 48) = sub_1B7AEE088(0, &unk_1EDBE59A0, 0x1E696AEC0);
  *(v1 + 56) = sub_1B7AEE088(0, &unk_1EDBE59E8, 0x1E695DEF0);
  *(v1 + 64) = sub_1B7AEE088(0, &unk_1EDBE59B0, 0x1E696AD98);
  *(v1 + 72) = sub_1B7AEE088(0, &qword_1EDBE5A18, 0x1E696AAB0);
  *(v1 + 80) = sub_1B7AEE088(0, &qword_1EDBE59E0, 0x1E695DF00);
  *(v1 + 88) = sub_1B7AEE088(0, &unk_1EDBE59F8, 0x1E695DFD8);
  *(v1 + 96) = sub_1B7AEE088(0, &unk_1EDBE59D0, 0x1E695DFB0);
  *(v1 + 104) = sub_1B7AEE088(0, &unk_1EDBE5A38, 0x1E695DFB8);
  sub_1B7CFEF10();

  return v0;
}

id sub_1B7CDFEA4()
{
  v0 = [objc_opt_self() interfaceWithProtocol_];
  sub_1B7C107FC(&qword_1EBA539F0, &qword_1B7D13D40);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1B7D0A6F0;
  v2 = sub_1B7AEE088(0, &unk_1EDBE59C0, 0x1E695DEC8);
  *(v1 + 32) = v2;
  v3 = sub_1B7AEE088(0, &qword_1EDBE58F8, 0x1E69A8340);
  *(v1 + 40) = v3;
  sub_1B7CFEF10();

  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B7D0A6F0;
  *(v4 + 32) = v2;
  *(v4 + 40) = v3;
  sub_1B7CFEF10();

  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1B7D0A6F0;
  *(v5 + 32) = v2;
  v6 = sub_1B7AEE088(0, &qword_1EDBE5920, off_1E7CB4FD8);
  *(v5 + 40) = v6;
  sub_1B7CFEF10();

  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1B7D0A7B0;
  v8 = type metadata accessor for IMDSyncChatSliceRecord(0);
  *(v7 + 32) = v8;
  sub_1B7CFEF10();

  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1B7D0A6F0;
  *(v9 + 32) = v2;
  *(v9 + 40) = v8;
  sub_1B7CFEF10();

  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1B7D0A6F0;
  *(v10 + 32) = v2;
  *(v10 + 40) = v8;
  sub_1B7CFEF10();

  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1B7D0CB60;
  *(v11 + 32) = sub_1B7AEE088(0, &qword_1EDBE5A48, 0x1E695DF20);
  *(v11 + 40) = sub_1B7AEE088(0, &unk_1EDBE59A0, 0x1E696AEC0);
  *(v11 + 48) = type metadata accessor for IMDAttachmentMetadata(0);
  sub_1B7CFEF10();

  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1B7D0A6F0;
  *(v12 + 32) = v2;
  *(v12 + 40) = type metadata accessor for IMDSyncDeletedChatRecord(0);
  sub_1B7CFEF10();

  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1B7D0A6F0;
  *(v13 + 32) = v2;
  *(v13 + 40) = v6;
  sub_1B7CFEF10();

  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1B7D0A6F0;
  *(v14 + 32) = v2;
  v15 = sub_1B7AEE088(0, &unk_1EDBE5900, 0x1E696AEB0);
  *(v14 + 40) = v15;
  sub_1B7CFEF10();

  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1B7D0A6F0;
  *(v16 + 32) = v2;
  v17 = sub_1B7AEE088(0, &unk_1EDBE5910, off_1E7CB5100);
  *(v16 + 40) = v17;
  sub_1B7CFEF10();

  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1B7D0A6F0;
  *(v18 + 32) = v2;
  *(v18 + 40) = v15;
  sub_1B7CFEF10();

  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1B7D0A6F0;
  *(v19 + 32) = v2;
  *(v19 + 40) = v17;
  sub_1B7CFEF10();

  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1B7D0A6F0;
  *(v20 + 32) = v2;
  *(v20 + 40) = v15;
  sub_1B7CFEF10();

  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1B7D0A6F0;
  *(v21 + 32) = v2;
  *(v21 + 40) = v17;
  sub_1B7CFEF10();

  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1B7D0A6F0;
  *(v22 + 32) = v2;
  *(v22 + 40) = v15;
  sub_1B7CFEF10();

  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1B7D0A6F0;
  *(v23 + 32) = v2;
  *(v23 + 40) = v17;
  sub_1B7CFEF10();

  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1B7D0A6F0;
  *(v24 + 32) = v2;
  *(v24 + 40) = v15;
  sub_1B7CFEF10();

  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1B7D0A6F0;
  *(v25 + 32) = v2;
  *(v25 + 40) = v17;
  sub_1B7CFEF10();

  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_1B7D0A6F0;
  *(v26 + 32) = v2;
  *(v26 + 40) = v6;
  sub_1B7CFEF10();

  return v0;
}

id sub_1B7CE04F8()
{
  v0 = objc_opt_self();
  v1 = [v0 interfaceWithProtocol_];
  v2 = sub_1B7CDFA64();
  [v1 setInterface:v2 forSelector:sel_ptaskQueryProviderWithBlock_ argumentIndex:0 ofReply:1];

  v3 = sub_1B7CDFCEC();
  [v1 setInterface:v3 forSelector:sel_indexingQueryProviderWithBlock_ argumentIndex:0 ofReply:1];

  v4 = [v0 interfaceWithProtocol_];
  sub_1B7C107FC(&qword_1EBA539F0, &qword_1B7D13D40);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1B7D0A7B0;
  *(v5 + 32) = sub_1B7AEE088(0, &qword_1EDBE5A08, 0x1E697B700);
  sub_1B7CFEF10();

  [v1 setInterface:v4 forSelector:sel_spotlightQueryProviderWithBlock_ argumentIndex:0 ofReply:1];

  v6 = [v0 interfaceWithProtocol_];
  v7 = [v0 interfaceWithProtocol_];
  [v6 setInterface:v7 forSelector:sel_addActivityMonitor_withID_ argumentIndex:0 ofReply:0];

  [v1 setInterface:v6 forSelector:sel_spotlightActivityMonitorQueryProviderWithBlock_ argumentIndex:0 ofReply:1];
  v8 = sub_1B7CDFEA4();
  [v1 setInterface:v8 forSelector:sel_databaseQueryProviderWithBlock_ argumentIndex:0 ofReply:1];

  return v1;
}

void sub_1B7CE071C(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 16);
  if (v2)
  {
    v28 = MEMORY[0x1E69E7CC0];
    sub_1B7AECEEC(0, v2, 0);
    v3 = v28;
    v4 = v1 + 64;
    v5 = sub_1B7CFF0E0();
    v6 = 0;
    v22 = v1 + 72;
    v23 = v2;
    v24 = v1 + 64;
    while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(v1 + 32))
    {
      v8 = v5 >> 6;
      if ((*(v4 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
      {
        goto LABEL_21;
      }

      v25 = v6;
      v26 = *(v1 + 36);
      sub_1B7CDB094(*(v1 + 56) + (v5 << 6), v27);
      v9 = SqlOperation.Row.Column.description.getter();
      MEMORY[0x1B8CADCA0](v9);

      sub_1B7C26C78(v27);
      v10 = v3;
      v28 = v3;
      v11 = v1;
      v13 = *(v10 + 16);
      v12 = *(v10 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_1B7AECEEC((v12 > 1), v13 + 1, 1);
        v10 = v28;
      }

      *(v10 + 16) = v13 + 1;
      v14 = v10 + 16 * v13;
      *(v14 + 32) = 538976288;
      *(v14 + 40) = 0xE400000000000000;
      v7 = 1 << *(v11 + 32);
      if (v5 >= v7)
      {
        goto LABEL_22;
      }

      v4 = v24;
      v15 = *(v24 + 8 * v8);
      if ((v15 & (1 << v5)) == 0)
      {
        goto LABEL_23;
      }

      v1 = v11;
      v3 = v10;
      if (v26 != *(v1 + 36))
      {
        goto LABEL_24;
      }

      v16 = v15 & (-2 << (v5 & 0x3F));
      if (v16)
      {
        v7 = __clz(__rbit64(v16)) | v5 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v17 = v8 << 6;
        v18 = v8 + 1;
        v19 = (v22 + 8 * v8);
        while (v18 < (v7 + 63) >> 6)
        {
          v21 = *v19++;
          v20 = v21;
          v17 += 64;
          ++v18;
          if (v21)
          {
            sub_1B7C8CB5C(v5, v26, 0);
            v7 = __clz(__rbit64(v20)) + v17;
            goto LABEL_4;
          }
        }

        sub_1B7C8CB5C(v5, v26, 0);
      }

LABEL_4:
      v6 = v25 + 1;
      v5 = v7;
      if (v25 + 1 == v23)
      {
        return;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
  }
}

unint64_t sub_1B7CE097C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (*(a1 + 8))
  {
    v5 = *(a1 + 16);
    v20 = *a1;
    v21 = v5;
    v6 = *(a1 + 48);
    v22 = *(a1 + 32);
    v23 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v2;
    result = sub_1B7CA5B98(&v20, a2, isUniquelyReferenced_nonNull_native);
    *v2 = v18;
  }

  else
  {
    sub_1B7AEE190(a1, &qword_1EBA52298, &unk_1B7D10570);
    v9 = sub_1B7AE1160(a2);
    if (v10)
    {
      v11 = v9;
      v12 = swift_isUniquelyReferenced_nonNull_native();
      v13 = *v2;
      v19 = *v3;
      if (!v12)
      {
        sub_1B7CE7BE8();
        v13 = v19;
      }

      v14 = (*(v13 + 56) + (v11 << 6));
      v16 = v14[2];
      v15 = v14[3];
      v17 = v14[1];
      v20 = *v14;
      v21 = v17;
      v22 = v16;
      v23 = v15;
      sub_1B7CE6C08(v11, v13);
      *v3 = v13;
    }

    else
    {
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
    }

    return sub_1B7AEE190(&v20, &qword_1EBA52298, &unk_1B7D10570);
  }

  return result;
}

uint64_t sub_1B7CE0A94(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    sub_1B7C255E0(a1, v7);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *v2;
    sub_1B7CA6064(v7, a2, isUniquelyReferenced_nonNull_native);
    result = sub_1B7C410D4(a2);
    *v2 = v6;
  }

  else
  {
    sub_1B7AEE190(a1, &qword_1EBA51FA8, qword_1B7D0B230);
    sub_1B7CE3008(a2, v7);
    sub_1B7C410D4(a2);
    return sub_1B7AEE190(v7, &qword_1EBA51FA8, qword_1B7D0B230);
  }

  return result;
}

uint64_t sub_1B7CE0B50(uint64_t a1, char a2, uint64_t a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_1B7C40430(a3);
    if (v7)
    {
      v8 = v6;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v10 = *v3;
      v21 = *v4;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1B7CE9AA4(&qword_1EBA52178, &qword_1B7D0B2F8);
        v10 = v21;
      }

      v11 = *(v10 + 48);
      v12 = sub_1B7CFE7C0();
      v13 = *(v12 - 8);
      v14 = *(v13 + 8);
      v14(v11 + *(v13 + 72) * v8, v12);
      sub_1B7CE75C8(v8, v10);
      result = (v14)(a3, v12);
      *v4 = v10;
    }

    else
    {
      v19 = sub_1B7CFE7C0();
      v20 = *(*(v19 - 8) + 8);

      return v20(a3, v19);
    }
  }

  else
  {
    v17 = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v3;
    sub_1B7CA61B0(a1, a3, v17);
    v18 = sub_1B7CFE7C0();
    result = (*(*(v18 - 8) + 8))(a3, v18);
    *v3 = v22;
  }

  return result;
}

uint64_t sub_1B7CE0D14(uint64_t a1, uint64_t a2)
{
  v5 = sub_1B7C107FC(&qword_1EBA53518, &qword_1B7D11ED8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v15 - v6;
  v8 = sub_1B7CFE7C0();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v9 + 48))(a1, 1, v8, v10) == 1)
  {
    sub_1B7AEE190(a1, &qword_1EBA53518, &qword_1B7D11ED8);
    sub_1B7CE30AC(a2, v7);
    (*(v9 + 8))(a2, v8);
    return sub_1B7AEE190(v7, &qword_1EBA53518, &qword_1B7D11ED8);
  }

  else
  {
    (*(v9 + 32))(v12, a1, v8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *v2;
    sub_1B7CA61DC(v12, a2, isUniquelyReferenced_nonNull_native);
    result = (*(v9 + 8))(a2, v8);
    *v2 = v16;
  }

  return result;
}

uint64_t sub_1B7CE0F04(uint64_t a1, unsigned __int8 a2)
{
  sub_1B7CFF7C0();
  sub_1B7CFEB10();

  return sub_1B7CFF800();
}

Swift::UInt64_optional __swiftcall SqlOperation.Row.uint64(forColumnName:)(Swift::String forColumnName)
{
  v1 = sub_1B7CE10DC(forColumnName._countAndFlagsBits, forColumnName._object, SqlOperation.Row.uint64(forColumnIndex:));
  result.value = v1;
  result.is_nil = v2;
  return result;
}

Swift::String_optional __swiftcall SqlOperation.Row.string(forColumnName:)(Swift::String forColumnName)
{
  SqlOperation.Row.column(forColumnName:)(forColumnName._countAndFlagsBits, forColumnName._object, &v6);
  if (*(&v6 + 1))
  {
    v10[0] = v6;
    v10[1] = v7;
    v10[2] = v8;
    v10[3] = v9;
    v1 = v7;
    sub_1B7C26C78(v10);
    v4 = SqlOperation.Row.string(forColumnIndex:)(v1);
    object = v4.value._object;
    countAndFlagsBits = v4.value._countAndFlagsBits;
  }

  else
  {
    sub_1B7AEE190(&v6, &qword_1EBA52298, &unk_1B7D10570);
    countAndFlagsBits = 0;
    object = 0;
  }

  result.value._object = object;
  result.value._countAndFlagsBits = countAndFlagsBits;
  return result;
}

Swift::Int64_optional __swiftcall SqlOperation.Row.int64(forColumnName:)(Swift::String forColumnName)
{
  v1 = sub_1B7CE10DC(forColumnName._countAndFlagsBits, forColumnName._object, SqlOperation.Row.int64(forColumnIndex:));
  result.value = v1;
  result.is_nil = v2;
  return result;
}

uint64_t sub_1B7CE10DC(unint64_t a1, unint64_t a2, uint64_t (*a3)(uint64_t))
{
  SqlOperation.Row.column(forColumnName:)(a1, a2, &v6);
  if (*(&v6 + 1))
  {
    v10[0] = v6;
    v10[1] = v7;
    v10[2] = v8;
    v10[3] = v9;
    v4 = v7;
    sub_1B7C26C78(v10);
    return a3(v4);
  }

  else
  {
    sub_1B7AEE190(&v6, &qword_1EBA52298, &unk_1B7D10570);
    return 0;
  }
}

Swift::Int_optional __swiftcall SqlOperation.Row.int(forColumnName:)(Swift::String forColumnName)
{
  v1 = sub_1B7CE10DC(forColumnName._countAndFlagsBits, forColumnName._object, SqlOperation.Row.int(forColumnIndex:));
  result.value = v1;
  result.is_nil = v2;
  return result;
}

Swift::Int64_optional __swiftcall SqlOperation.Row.int64(forColumnIndex:)(Swift::Int forColumnIndex)
{
  if (forColumnIndex < 0)
  {
    goto LABEL_6;
  }

  v3 = *(v1 + 16);
  swift_beginAccess();
  v4 = IMDSqlStatementColumnCount((v3 + 48));
  v5 = swift_endAccess();
  if (v4 <= forColumnIndex)
  {
    goto LABEL_6;
  }

  if (forColumnIndex >> 31)
  {
    __break(1u);
    goto LABEL_8;
  }

  swift_beginAccess();
  IMDSqlStatementColumnByIndex((v3 + 48), forColumnIndex, &v13);
  v7 = v13;
  v8 = v14;
  v9 = v15;
  swift_endAccess();
  v16 = v7;
  v17 = v8;
  v18 = v9;
  if (IMDSqlColumnGetType(&v16) != 1)
  {
LABEL_6:
    v5 = 0;
    v6 = 1;
  }

  else
  {
    swift_beginAccess();
    IMDSqlStatementColumnByIndex((v3 + 48), forColumnIndex, &v13);
    v10 = v13;
    v11 = v14;
    v12 = v15;
    swift_endAccess();
    v16 = v10;
    v17 = v11;
    v18 = v12;
    v5 = IMDInt64FromSqlColumn(&v16);
    v6 = 0;
  }

LABEL_8:
  result.value = v5;
  result.is_nil = v6;
  return result;
}

Swift::UInt64_optional __swiftcall SqlOperation.Row.uint64(forColumnIndex:)(Swift::Int forColumnIndex)
{
  if (forColumnIndex < 0)
  {
    goto LABEL_7;
  }

  v3 = *(v1 + 16);
  swift_beginAccess();
  v4 = IMDSqlStatementColumnCount((v3 + 48));
  v5 = swift_endAccess();
  if (v4 <= forColumnIndex)
  {
    goto LABEL_7;
  }

  if (forColumnIndex >> 31)
  {
    __break(1u);
    goto LABEL_9;
  }

  swift_beginAccess();
  IMDSqlStatementColumnByIndex((v3 + 48), forColumnIndex, &v13);
  v7 = v13;
  v8 = v14;
  v9 = v15;
  swift_endAccess();
  v16 = v7;
  v17 = v8;
  v18 = v9;
  if (IMDSqlColumnGetType(&v16) != 1)
  {
LABEL_7:
    v5 = 0;
    v6 = 1;
    goto LABEL_10;
  }

  swift_beginAccess();
  IMDSqlStatementColumnByIndex((v3 + 48), forColumnIndex, &v13);
  v10 = v13;
  v11 = v14;
  v12 = v15;
  swift_endAccess();
  v16 = v10;
  v17 = v11;
  v18 = v12;
  v5 = IMDInt64FromSqlColumn(&v16);
  if ((v5 & 0x8000000000000000) != 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v6 = 0;
LABEL_10:
  result.value = v5;
  result.is_nil = v6;
  return result;
}

Swift::Int_optional __swiftcall SqlOperation.Row.int(forColumnIndex:)(Swift::Int forColumnIndex)
{
  if (forColumnIndex < 0)
  {
    goto LABEL_6;
  }

  v3 = *(v1 + 16);
  swift_beginAccess();
  v4 = IMDSqlStatementColumnCount((v3 + 48));
  v5 = swift_endAccess();
  if (v4 <= forColumnIndex)
  {
    goto LABEL_6;
  }

  if (forColumnIndex >> 31)
  {
    __break(1u);
    goto LABEL_8;
  }

  swift_beginAccess();
  IMDSqlStatementColumnByIndex((v3 + 48), forColumnIndex, &v13);
  v7 = v13;
  v8 = v14;
  v9 = v15;
  swift_endAccess();
  v16 = v7;
  v17 = v8;
  v18 = v9;
  if (IMDSqlColumnGetType(&v16) != 1)
  {
LABEL_6:
    v5 = 0;
    v6 = 1;
  }

  else
  {
    swift_beginAccess();
    IMDSqlStatementColumnByIndex((v3 + 48), forColumnIndex, &v13);
    v10 = v13;
    v11 = v14;
    v12 = v15;
    swift_endAccess();
    v16 = v10;
    v17 = v11;
    v18 = v12;
    LODWORD(v5) = IMDIntFromSqlColumn(&v16);
    v6 = 0;
    v5 = v5;
  }

LABEL_8:
  result.value = v5;
  result.is_nil = v6;
  return result;
}

Swift::String_optional __swiftcall SqlOperation.Row.string(forColumnIndex:)(Swift::Int forColumnIndex)
{
  if (forColumnIndex < 0)
  {
    goto LABEL_7;
  }

  v3 = *(v1 + 16);
  swift_beginAccess();
  v4 = IMDSqlStatementColumnCount((v3 + 48));
  v5 = swift_endAccess();
  if (v4 <= forColumnIndex)
  {
    goto LABEL_7;
  }

  if (forColumnIndex >> 31)
  {
    __break(1u);
    goto LABEL_9;
  }

  swift_beginAccess();
  IMDSqlStatementColumnByIndex((v3 + 48), forColumnIndex, &v18);
  v7 = v18;
  v8 = v19;
  v9 = v20;
  swift_endAccess();
  v21 = v7;
  v22 = v8;
  v23 = v9;
  if (IMDSqlColumnGetType(&v21) != 3)
  {
LABEL_7:
    v5 = 0;
    v6 = 0;
    goto LABEL_10;
  }

  swift_beginAccess();
  IMDSqlStatementColumnByIndex((v3 + 48), forColumnIndex, &v18);
  v10 = v18;
  v11 = v19;
  v12 = v20;
  swift_endAccess();
  v21 = v10;
  v22 = v11;
  v23 = v12;
  v5 = IMDStringFromSqlColumn(&v21);
  if (!v5)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v13 = v5;
  v14 = sub_1B7CFEA60();
  v16 = v15;

  v6 = v16;
  v5 = v14;
LABEL_10:
  result.value._object = v6;
  result.value._countAndFlagsBits = v5;
  return result;
}

Swift::Double_optional __swiftcall SqlOperation.Row.double(forColumnIndex:)(Swift::Int forColumnIndex)
{
  if (forColumnIndex < 0)
  {
    goto LABEL_6;
  }

  v3 = *(v1 + 16);
  swift_beginAccess();
  v4 = IMDSqlStatementColumnCount((v3 + 48));
  v5 = swift_endAccess();
  if (v4 <= forColumnIndex)
  {
    goto LABEL_6;
  }

  if (forColumnIndex >> 31)
  {
    __break(1u);
    goto LABEL_8;
  }

  swift_beginAccess();
  IMDSqlStatementColumnByIndex((v3 + 48), forColumnIndex, &v13);
  v7 = v13;
  v8 = v14;
  v9 = v15;
  swift_endAccess();
  v16 = v7;
  v17 = v8;
  v18 = v9;
  if (IMDSqlColumnGetType(&v16) != 2)
  {
LABEL_6:
    v5 = 0;
  }

  else
  {
    swift_beginAccess();
    IMDSqlStatementColumnByIndex((v3 + 48), forColumnIndex, &v13);
    v10 = v13;
    v11 = v14;
    v12 = v15;
    swift_endAccess();
    v16 = v10;
    v17 = v11;
    v18 = v12;
    v6 = IMDDoubleFromSqlColumn(&v16);
    v5 = LOBYTE(v6);
  }

LABEL_8:
  result.value = v6;
  result.is_nil = v5;
  return result;
}

CFDataRef SqlOperation.Row.blob(forColumnIndex:)(unint64_t a1)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  v3 = *(v1 + 16);
  swift_beginAccess();
  v4 = IMDSqlStatementColumnCount((v3 + 48));
  result = swift_endAccess();
  if (v4 <= a1)
  {
    return 0;
  }

  if (!(a1 >> 31))
  {
    swift_beginAccess();
    IMDSqlStatementColumnByIndex((v3 + 48), a1, &v14);
    v6 = v14;
    v7 = v15;
    v8 = v16;
    swift_endAccess();
    v17 = v6;
    v18 = v7;
    v19 = v8;
    if (IMDSqlColumnGetType(&v17) == 4)
    {
      swift_beginAccess();
      IMDSqlStatementColumnByIndex((v3 + 48), a1, &v14);
      v9 = v14;
      v10 = v15;
      v11 = v16;
      swift_endAccess();
      v17 = v9;
      v18 = v10;
      v19 = v11;
      result = IMDBlobFromSqlColumn(&v17);
      if (result)
      {
        v12 = result;
        v13 = sub_1B7CFE020();

        return v13;
      }

      goto LABEL_9;
    }

    return 0;
  }

  __break(1u);
LABEL_9:
  __break(1u);
  return result;
}

uint64_t SqlOperation.Row.object(forColumnIndex:)@<X0>(uint64_t result@<X0>, _OWORD *a2@<X8>)
{
  if (result < 0 || (v4 = result, v5 = *(v2 + 16), swift_beginAccess(), v6 = IMDSqlStatementColumnCount((v5 + 48)), result = swift_endAccess(), v6 <= v4))
  {
    *a2 = 0u;
    a2[1] = 0u;
  }

  else if (v4 >> 31)
  {
    __break(1u);
  }

  else
  {
    swift_beginAccess();
    IMDSqlStatementColumnByIndex((v5 + 48), v4, v13);
    v7 = v13[0];
    v8 = v13[1];
    v9 = v13[2];
    swift_endAccess();
    *&v11 = v7;
    *(&v11 + 1) = v8;
    *&v12 = v9;
    result = IMDSqlColumnGetObject(&v11);
    if (result)
    {
      sub_1B7CFF0A0();
      result = swift_unknownObjectRelease();
    }

    else
    {
      v11 = 0u;
      v12 = 0u;
    }

    v10 = v12;
    *a2 = v11;
    a2[1] = v10;
  }

  return result;
}

Swift::Double_optional __swiftcall SqlOperation.Row.double(forColumnName:)(Swift::String forColumnName)
{
  v1 = sub_1B7CE10DC(forColumnName._countAndFlagsBits, forColumnName._object, SqlOperation.Row.double(forColumnIndex:));
  result.value = v2;
  result.is_nil = v1;
  return result;
}

CFDataRef SqlOperation.Row.blob(forColumnName:)(unint64_t a1, unint64_t a2)
{
  SqlOperation.Row.column(forColumnName:)(a1, a2, &v4);
  if (*(&v4 + 1))
  {
    v8[0] = v4;
    v8[1] = v5;
    v8[2] = v6;
    v8[3] = v7;
    v2 = v5;
    sub_1B7C26C78(v8);
    return SqlOperation.Row.blob(forColumnIndex:)(v2);
  }

  else
  {
    sub_1B7AEE190(&v4, &qword_1EBA52298, &unk_1B7D10570);
    return 0;
  }
}

double SqlOperation.Row.object(forColumnName:)@<D0>(unint64_t a1@<X0>, unint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  SqlOperation.Row.column(forColumnName:)(a1, a2, &v6);
  if (*(&v6 + 1))
  {
    v10[0] = v6;
    v10[1] = v7;
    v10[2] = v8;
    v10[3] = v9;
    v4 = v7;
    sub_1B7C26C78(v10);
    SqlOperation.Row.object(forColumnIndex:)(v4, a3);
  }

  else
  {
    sub_1B7AEE190(&v6, &qword_1EBA52298, &unk_1B7D10570);
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t SqlOperation.Row.columnCount.getter()
{
  v1 = *(v0 + 16);
  swift_beginAccess();
  LODWORD(v1) = IMDSqlStatementColumnCount((v1 + 48));
  swift_endAccess();
  return v1;
}

void *SqlOperation.Row.allColumns()()
{
  v1 = v0;
  v2 = sub_1B7C237A4(MEMORY[0x1E69E7CC0]);
  v3 = *(v0 + 16);
  swift_beginAccess();
  v32 = v3;
  v4 = IMDSqlStatementColumnCount((v3 + 48));
  swift_endAccess();
  if (!v4)
  {
    return v2;
  }

  v5 = 0;
  v41 = v4;
  while (1)
  {
    swift_beginAccess();
    v6 = *(v1 + 24);
    if (*(v6 + 16) && (v7 = sub_1B7AE1160(v5), (v8 & 1) != 0))
    {
      sub_1B7CDB094(*(v6 + 56) + (v7 << 6), v33);
      v36 = v33[0];
      v37 = v33[1];
      v38 = v33[2];
      v39 = v33[3];
      swift_endAccess();
    }

    else
    {
      swift_endAccess();
      if (v5 >> 31)
      {
        goto LABEL_28;
      }

      swift_beginAccess();
      IMDSqlStatementColumnByIndex((v32 + 48), v5, v34);
      v9 = v34[1];
      v10 = v35;
      swift_endAccess();
      sub_1B7CE20C4(v9, v10, v33);
      swift_beginAccess();
      sub_1B7CE097C(v33, v5);
      swift_endAccess();
      swift_beginAccess();
      v11 = *(v1 + 24);
      if (*(v11 + 16) && (v12 = sub_1B7AE1160(v5), (v13 & 1) != 0))
      {
        sub_1B7CDB094(*(v11 + 56) + (v12 << 6), &v36);
      }

      else
      {
        v39 = 0u;
        v37 = 0u;
        v38 = 0u;
        v36 = 0u;
      }

      swift_endAccess();
      if (!*(&v36 + 1))
      {

        sub_1B7AEE190(&v36, &qword_1EBA52298, &unk_1B7D10570);
        sub_1B7CEA5A0();
        swift_allocError();
        swift_willThrow();
        return v2;
      }
    }

    v40[0] = v36;
    v40[1] = v37;
    v40[2] = v38;
    v40[3] = v39;
    v14 = v36;
    sub_1B7CDB094(v40, &v36);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v33[0] = v2;
    v16 = sub_1B7AE11D0(v14, *(&v14 + 1));
    v18 = v2[2];
    v19 = (v17 & 1) == 0;
    v20 = __OFADD__(v18, v19);
    v21 = v18 + v19;
    if (v20)
    {
      break;
    }

    v22 = v17;
    if (v2[3] < v21)
    {
      sub_1B7CE3A14(v21, isUniquelyReferenced_nonNull_native);
      v16 = sub_1B7AE11D0(v14, *(&v14 + 1));
      if ((v22 & 1) != (v23 & 1))
      {
        goto LABEL_30;
      }

LABEL_19:
      v2 = *&v33[0];
      if (v22)
      {
        goto LABEL_3;
      }

      goto LABEL_20;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_19;
    }

    v30 = v16;
    sub_1B7CE8054();
    v16 = v30;
    v2 = *&v33[0];
    if (v22)
    {
LABEL_3:
      sub_1B7CA6D44(&v36, v2[7] + (v16 << 6));
      goto LABEL_4;
    }

LABEL_20:
    v2[(v16 >> 6) + 8] |= 1 << v16;
    *(v2[6] + 16 * v16) = v14;
    v24 = (v2[7] + (v16 << 6));
    v25 = v36;
    v26 = v37;
    v27 = v39;
    v24[2] = v38;
    v24[3] = v27;
    *v24 = v25;
    v24[1] = v26;
    v28 = v2[2];
    v20 = __OFADD__(v28, 1);
    v29 = v28 + 1;
    if (v20)
    {
      goto LABEL_29;
    }

    v2[2] = v29;

LABEL_4:
    ++v5;
    sub_1B7C26C78(v40);
    if (v41 == v5)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  result = sub_1B7CFF740();
  __break(1u);
  return result;
}

uint64_t SqlOperation.Row.column(forColumnIndex:)@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  swift_beginAccess();
  v6 = *(v2 + 24);
  if (*(v6 + 16))
  {
    v7 = sub_1B7AE1160(a1);
    if (v8)
    {
      sub_1B7CDB094(*(v6 + 56) + (v7 << 6), v18);
      v9 = v18[1];
      *a2 = v18[0];
      a2[1] = v9;
      v10 = v18[3];
      a2[2] = v18[2];
      a2[3] = v10;
      return swift_endAccess();
    }
  }

  result = swift_endAccess();
  if (a1 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (a1 <= 0x7FFFFFFF)
  {
    v12 = *(v3 + 16);
    swift_beginAccess();
    IMDSqlStatementColumnByIndex((v12 + 48), a1, v19);
    v13 = v19[1];
    v14 = v20;
    swift_endAccess();
    sub_1B7CE20C4(v13, v14, v18);
    swift_beginAccess();
    sub_1B7CE097C(v18, a1);
    swift_endAccess();
    swift_beginAccess();
    v15 = *(v3 + 24);
    if (*(v15 + 16) && (v16 = sub_1B7AE1160(a1), (v17 & 1) != 0))
    {
      sub_1B7CDB094(*(v15 + 56) + (v16 << 6), a2);
    }

    else
    {
      a2[2] = 0u;
      a2[3] = 0u;
      *a2 = 0u;
      a2[1] = 0u;
    }

    return swift_endAccess();
  }

  __break(1u);
  return result;
}

Swift::Bool __swiftcall SqlOperation.Row.isValidColumnIndex(_:)(Swift::Int a1)
{
  if (a1 < 0)
  {
    return 0;
  }

  v3 = *(v1 + 16);
  swift_beginAccess();
  LODWORD(v3) = IMDSqlStatementColumnCount((v3 + 48));
  swift_endAccess();
  return v3 > a1;
}

void sub_1B7CE20C4(uint64_t a1@<X1>, int a2@<W2>, uint64_t a3@<X8>)
{
  if (a1)
  {
    v6 = sub_1B7CFEB70();
    v8 = v7;
    v9 = a2;
    if (a2 < 0)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v6 = 0;
    v8 = 0xE000000000000000;
    v9 = a2;
    if (a2 < 0)
    {
      goto LABEL_10;
    }
  }

  v10 = *(v3 + 16);
  swift_beginAccess();
  v11 = IMDSqlStatementColumnCount((v10 + 48));
  swift_endAccess();
  if (v9 < v11)
  {
    swift_beginAccess();
    IMDSqlStatementColumnByIndex((v10 + 48), a2, &v15);
    v12 = v15;
    v13 = v16;
    swift_endAccess();
    v18 = v12;
    v19 = v13;
    v14 = IMDSqlColumnGetType(&v18) - 1;
    if (v14 <= 4)
    {
      SqlOperation.Row.object(forColumnIndex:)(v9, &v15);
      if (v17)
      {
        sub_1B7C255E0(&v15, &v18);
        sub_1B7C255E0(&v18, (a3 + 32));
        *a3 = v6;
        *(a3 + 8) = v8;
        *(a3 + 16) = v9;
        *(a3 + 24) = v14;
        return;
      }

      sub_1B7AEE190(&v15, &qword_1EBA51FA8, qword_1B7D0B230);
    }
  }

LABEL_10:
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *a3 = v6;
  *(a3 + 8) = v8;
  *(a3 + 16) = v9;
  *(a3 + 24) = 4;
}

void SqlOperation.Row.column(forColumnName:)(unint64_t a1@<X0>, unint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  swift_beginAccess();
  v7 = *(v3 + 24);
  v8 = 1 << *(v7 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(v7 + 64);
  v11 = (v8 + 63) >> 6;

  v12 = 0;
  if (v10)
  {
    while (1)
    {
      v13 = v12;
LABEL_8:
      sub_1B7CDB094(*(v7 + 56) + ((v13 << 12) | (__clz(__rbit64(v10)) << 6)), &v29);
      v25 = v29;
      v26 = v30;
      v27 = v31;
      v28 = v32;
      if (v29 == __PAIR128__(a2, a1) || (sub_1B7CFF590() & 1) != 0)
      {
        break;
      }

      v10 &= v10 - 1;
      sub_1B7C26C78(&v25);
      v12 = v13;
      if (!v10)
      {
        goto LABEL_5;
      }
    }

    v22 = v26;
    *a3 = v25;
    a3[1] = v22;
    v20 = v27;
    v21 = v28;
LABEL_16:
    a3[2] = v20;
    a3[3] = v21;
  }

  else
  {
    while (1)
    {
LABEL_5:
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        return;
      }

      if (v13 >= v11)
      {
        break;
      }

      v10 = *(v7 + 64 + 8 * v13);
      ++v12;
      if (v10)
      {
        goto LABEL_8;
      }
    }

    v14 = *(v3 + 16);
    swift_beginAccess();
    v15 = sub_1B7CFEAD0();
    IMDSqlStatementColumnByName((v14 + 48), (v15 + 32), v23);
    v16 = v23[1];
    v17 = v24;
    swift_endAccess();

    sub_1B7CE20C4(v16, v17, &v25);
    if (*(&v25 + 1))
    {
      v29 = v25;
      v30 = v26;
      v31 = v27;
      v32 = v28;
      v18 = v26;
      sub_1B7CDB094(&v29, &v25);
      swift_beginAccess();
      sub_1B7CE097C(&v25, v18);
      swift_endAccess();
      v19 = v30;
      *a3 = v29;
      a3[1] = v19;
      v20 = v31;
      v21 = v32;
      goto LABEL_16;
    }

    sub_1B7AEE190(&v25, &qword_1EBA52298, &unk_1B7D10570);
    a3[2] = 0u;
    a3[3] = 0u;
    *a3 = 0u;
    a3[1] = 0u;
  }
}

Swift::Int_optional __swiftcall SqlOperation.Row.columnIndex(forColumnName:)(Swift::String forColumnName)
{
  SqlOperation.Row.column(forColumnName:)(forColumnName._countAndFlagsBits, forColumnName._object, &v5);
  v1 = *(&v5 + 1);
  if (*(&v5 + 1))
  {
    v9[0] = v5;
    v9[1] = v6;
    v9[2] = v7;
    v9[3] = v8;
    v2 = v6;
    sub_1B7C26C78(v9);
  }

  else
  {
    sub_1B7AEE190(&v5, &qword_1EBA52298, &unk_1B7D10570);
    v2 = 0;
  }

  v3 = v1 == 0;
  v4 = v2;
  result.value = v4;
  result.is_nil = v3;
  return result;
}

uint64_t SqlOperation.Row.columnType(forColumnIndex:)@<X0>(uint64_t result@<X0>, _BYTE *a2@<X8>)
{
  if (result < 0 || (v4 = result, v5 = *(v2 + 16), swift_beginAccess(), v6 = IMDSqlStatementColumnCount((v5 + 48)), result = swift_endAccess(), v6 <= v4))
  {
    *a2 = 5;
  }

  else if (v4 >> 31)
  {
    __break(1u);
  }

  else
  {
    swift_beginAccess();
    IMDSqlStatementColumnByIndex((v5 + 48), v4, v11);
    v7 = v11[0];
    v8 = v11[1];
    v9 = v11[2];
    swift_endAccess();
    v12[0] = v7;
    v12[1] = v8;
    v12[2] = v9;
    Type = IMDSqlColumnGetType(v12);
    return SqlOperation.ColumnType.init(rawValue:)(Type, a2);
  }

  return result;
}

uint64_t SqlOperation.Row.deinit()
{

  return v0;
}

uint64_t SqlOperation.Row.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t SqlOperation.Row.Column.name.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_1B7CE26B0(uint64_t a1)
{
  if (*(v1 + 24))
  {
    return 0;
  }

  sub_1B7CEA5F4(v1 + 32, v4);
  if (!v5)
  {
    sub_1B7AEE190(v4, &qword_1EBA51FA8, qword_1B7D0B230);
    return 0;
  }

  if (swift_dynamicCast())
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t SqlOperation.Row.Column.double.getter()
{
  if (*(v0 + 24) != 1)
  {
    return 0;
  }

  sub_1B7CEA5F4(v0 + 32, v3);
  if (!v4)
  {
    sub_1B7AEE190(v3, &qword_1EBA51FA8, qword_1B7D0B230);
    return 0;
  }

  if (swift_dynamicCast())
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

uint64_t SqlOperation.Row.Column.text.getter()
{
  if (*(v0 + 24) != 2)
  {
    return 0;
  }

  sub_1B7CEA5F4(v0 + 32, v3);
  if (!v4)
  {
    sub_1B7AEE190(v3, &qword_1EBA51FA8, qword_1B7D0B230);
    return 0;
  }

  if (swift_dynamicCast())
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

uint64_t SqlOperation.Row.Column.blob.getter()
{
  if (*(v0 + 24) != 3)
  {
    return 0;
  }

  sub_1B7CEA5F4(v0 + 32, v3);
  if (!v4)
  {
    sub_1B7AEE190(v3, &qword_1EBA51FA8, qword_1B7D0B230);
    return 0;
  }

  if (swift_dynamicCast())
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

double SqlOperation.Row.ColumnIterator.next()@<D0>(_OWORD *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(*(v1 + 8) + 16);
  swift_beginAccess();
  LODWORD(v4) = IMDSqlStatementColumnCount((v4 + 48));
  swift_endAccess();
  if (v3 >= v4)
  {
    result = 0.0;
    a1[2] = 0u;
    a1[3] = 0u;
    *a1 = 0u;
    a1[1] = 0u;
  }

  else
  {
    SqlOperation.Row.column(forColumnIndex:)(v3, a1);
    *(v1 + 16) = v3 + 1;
  }

  return result;
}

double SqlOperation.Row.makeIterator()@<D0>(void *a1@<X8>)
{
  v2 = *(v1 + 16);
  a1[1] = v1;
  a1[2] = 0;
  *a1 = v2;

  return result;
}

double sub_1B7CE2A04@<D0>(void *a1@<X8>)
{
  v2 = *(*v1 + 16);
  a1[1] = *v1;
  a1[2] = 0;
  *a1 = v2;

  return result;
}

char *sub_1B7CE2A18()
{
  v1 = sub_1B7CE9E80(*v0);

  return v1;
}

uint64_t SqlOperation.Row.description.getter()
{
  v0 = SqlOperation.Row.allColumns()();
  sub_1B7CE071C(v0);

  v5 = sub_1B7CFF8D0();
  MEMORY[0x1B8CADCA0](663610, 0xE300000000000000);
  sub_1B7C107FC(&unk_1EBA525A0, "D\r\b");
  sub_1B7AF7FAC();
  v1 = sub_1B7CFEA10();
  v3 = v2;

  MEMORY[0x1B8CADCA0](v1, v3);

  return v5;
}

uint64_t SqlOperation.Row.Column.description.getter()
{
  v11[0] = 0;
  v11[1] = 0xE000000000000000;
  sub_1B7CFF210();

  strcpy(v12, "Column: name: ");
  HIBYTE(v12[1]) = -18;
  MEMORY[0x1B8CADCA0](*v0, *(v0 + 8));
  MEMORY[0x1B8CADCA0](0x3A7865646E69202CLL, 0xE900000000000020);
  v11[0] = *(v0 + 16);
  v1 = sub_1B7CFF570();
  MEMORY[0x1B8CADCA0](v1);

  MEMORY[0x1B8CADCA0](0x203A65707974202CLL, 0xE800000000000000);
  v2 = 0xE700000000000000;
  v3 = 0x72656765746E69;
  v4 = *(v0 + 24);
  v5 = 1954047348;
  v6 = 1651469410;
  if (v4 != 3)
  {
    v6 = 1819047278;
  }

  if (v4 != 2)
  {
    v5 = v6;
  }

  if (*(v0 + 24))
  {
    v3 = 0x74616F6C66;
    v2 = 0xE500000000000000;
  }

  if (*(v0 + 24) <= 1u)
  {
    v7 = v3;
  }

  else
  {
    v7 = v5;
  }

  if (*(v0 + 24) <= 1u)
  {
    v8 = v2;
  }

  else
  {
    v8 = 0xE400000000000000;
  }

  MEMORY[0x1B8CADCA0](v7, v8);

  MEMORY[0x1B8CADCA0](0x3A65756C6176202CLL, 0xE900000000000020);
  sub_1B7CEA5F4(v0 + 32, v11);
  sub_1B7C107FC(&qword_1EBA51FA8, qword_1B7D0B230);
  v9 = sub_1B7CFEAB0();
  MEMORY[0x1B8CADCA0](v9);

  return v12[0];
}

double sub_1B7CE2EA4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = sub_1B7AE11D0(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v12 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1B7CE8638();
      v10 = v12;
    }

    sub_1B7AE910C((*(v10 + 56) + 40 * v8), a3);
    sub_1B7CE6F30(v8, v10);
    *v4 = v10;
  }

  else
  {
    *(a3 + 32) = 0;
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

uint64_t sub_1B7CE2F50(uint64_t a1)
{
  v2 = v1;
  v3 = sub_1B7C402DC(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v1;
  v10 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_1B7CE8BD0();
    v7 = v10;
  }

  v8 = *(*(v7 + 56) + 24 * v5);
  sub_1B7CE70EC(v5, v7);
  *v2 = v7;
  return v8;
}

double sub_1B7CE3008@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = sub_1B7C40388(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v11 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1B7CE91A4();
      v9 = v11;
    }

    sub_1B7C410D4(*(v9 + 48) + 40 * v7);
    sub_1B7C255E0((*(v9 + 56) + 32 * v7), a2);
    sub_1B7CE7424(v7, v9);
    *v3 = v9;
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_1B7CE30AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_1B7C40430(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v21 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1B7CE97C8();
      v9 = v21;
    }

    v10 = *(v9 + 48);
    v11 = sub_1B7CFE7C0();
    v12 = *(v11 - 8);
    v20 = v12;
    v13 = *(v12 + 72) * v7;
    (*(v12 + 8))(v10 + v13, v11);
    (*(v20 + 32))(a2, *(v9 + 56) + v13, v11);
    sub_1B7CE78E8(v7, v9);
    *v3 = v9;
    v14 = *(v20 + 56);
    v15 = a2;
    v16 = 0;
    v17 = v11;
  }

  else
  {
    v18 = sub_1B7CFE7C0();
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a2;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

uint64_t sub_1B7CE3244(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1B7C107FC(&qword_1EBA52260, &qword_1B7D0B3B8);
  result = sub_1B7CFF370();
  v7 = result;
  if (*(v5 + 16))
  {
    v37 = v3;
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
      v20 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v23 = v20 | (v8 << 6);
      v24 = *(*(v5 + 48) + 8 * v23);
      v25 = (*(v5 + 56) + (v23 << 6));
      if (v4)
      {
        v26 = *v25;
        v27 = v25[1];
        v28 = v25[3];
        v40 = v25[2];
        v41 = v28;
        v38 = v26;
        v39 = v27;
      }

      else
      {
        sub_1B7CDB094(v25, &v38);
      }

      result = sub_1B7CFF7B0();
      v29 = -1 << *(v7 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v14 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v14 + 8 * v31);
          if (v35 != -1)
          {
            v15 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v30) & ~*(v14 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v24;
      v16 = (*(v7 + 56) + (v15 << 6));
      v17 = v38;
      v18 = v39;
      v19 = v41;
      v16[2] = v40;
      v16[3] = v19;
      *v16 = v17;
      v16[1] = v18;
      ++*(v7 + 16);
    }

    v21 = v8;
    while (1)
    {
      v8 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v22 = v9[v8];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v12 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if (v4)
    {
      v36 = 1 << *(v5 + 32);
      if (v36 >= 64)
      {
        bzero((v5 + 64), ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v36;
      }

      *(v5 + 16) = 0;
    }

    v3 = v37;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_1B7CE34D0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1B7C107FC(&qword_1EBA53410, &qword_1B7D11578);
  v37 = v4;
  result = sub_1B7CFF370();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v5;
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
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = 16 * (v19 | (v8 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = (*(v5 + 56) + v22);
      v27 = v26[1];
      v38 = *v26;
      if ((v37 & 1) == 0)
      {
      }

      sub_1B7CFF7C0();
      sub_1B7CFEB10();
      result = sub_1B7CFF800();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = (*(v7 + 56) + v16);
      *v18 = v38;
      v18[1] = v27;
      ++*(v7 + 16);
      v5 = v36;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v2;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1B7CE3790(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1B7C107FC(&qword_1EBA53768, &unk_1B7D13070);
  result = sub_1B7CFF370();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v3;
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
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v4 & 1) == 0)
      {
      }

      result = sub_1B7CFF7B0();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v4 & 1) == 0)
    {

      v3 = v30;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v30;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1B7CE3A14(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1B7C107FC(&qword_1EBA521F8, &qword_1B7D0B358);
  v40 = v4;
  result = sub_1B7CFF370();
  v7 = result;
  if (*(v5 + 16))
  {
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
      v21 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v24 = v21 | (v8 << 6);
      v25 = (*(v5 + 48) + 16 * v24);
      v26 = *v25;
      v27 = v25[1];
      v28 = (*(v5 + 56) + (v24 << 6));
      if (v40)
      {
        v29 = *v28;
        v30 = v28[1];
        v31 = v28[3];
        v43 = v28[2];
        v44 = v31;
        v41 = v29;
        v42 = v30;
      }

      else
      {
        sub_1B7CDB094(v28, &v41);
      }

      sub_1B7CFF7C0();
      sub_1B7CFEB10();
      result = sub_1B7CFF800();
      v32 = -1 << *(v7 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v14 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v14 + 8 * v34);
          if (v38 != -1)
          {
            v15 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v33) & ~*(v14 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v26;
      v16[1] = v27;
      v17 = (*(v7 + 56) + (v15 << 6));
      v18 = v41;
      v19 = v42;
      v20 = v44;
      v17[2] = v43;
      v17[3] = v20;
      *v17 = v18;
      v17[1] = v19;
      ++*(v7 + 16);
    }

    v22 = v8;
    while (1)
    {
      v8 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v23 = v9[v8];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v12 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v39 = 1 << *(v5 + 32);
    v3 = v2;
    if (v39 >= 64)
    {
      bzero((v5 + 64), ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v39;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_1B7CE3CDC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1B7C107FC(&qword_1EBA52210, &qword_1B7D0B370);
  result = sub_1B7CFF370();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v4;
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
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      sub_1B7CFF7C0();
      sub_1B7CFEB10();

      result = sub_1B7CFF800();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (v30)
    {
      v29 = 1 << *(v5 + 32);
      if (v29 >= 64)
      {
        bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v29;
      }

      *(v5 + 16) = 0;
    }

    v3 = v2;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_1B7CE4030(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1B7C107FC(&qword_1EBA521B8, &qword_1B7D0B330);
  v34 = v4;
  result = sub_1B7CFF370();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
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
      if ((v34 & 1) == 0)
      {
      }

      sub_1B7CFF7C0();
      sub_1B7CFEB10();
      result = sub_1B7CFF800();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
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

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1B7CE42D8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1B7C107FC(&qword_1EBA521A8, &qword_1B7D0B328);
  v33 = v4;
  result = sub_1B7CFF370();
  v7 = result;
  if (*(v5 + 16))
  {
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
      v24 = (*(v5 + 56) + 40 * v20);
      if (v33)
      {
        sub_1B7AE910C(v24, v34);
      }

      else
      {
        sub_1B7AE90A8(v24, v34);
      }

      sub_1B7CFF7C0();
      sub_1B7CFEB10();
      result = sub_1B7CFF800();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_1B7AE910C(v34, *(v7 + 56) + 40 * v15);
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
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

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_1B7CE459C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_1B7CFDD90();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_1B7C107FC(&qword_1EBA52168, &qword_1B7D0B2E8);
  v42 = v4;
  result = sub_1B7CFF370();
  v11 = result;
  if (*(v9 + 16))
  {
    v46 = v8;
    v38 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v39 = (v6 + 16);
    v40 = v6;
    v43 = (v6 + 32);
    v18 = result + 64;
    v41 = v9;
    while (v16)
    {
      v21 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v24 = v21 | (v12 << 6);
      v25 = *(v9 + 48);
      v45 = *(v6 + 72);
      v26 = v25 + v45 * v24;
      if (v42)
      {
        (*v43)(v46, v26, v5);
        v27 = *(v9 + 56) + 24 * v24;
        v44 = *v27;
        v47 = *(v27 + 8);
      }

      else
      {
        (*v39)(v46, v26, v5);
        v28 = *(v9 + 56) + 24 * v24;
        v44 = *v28;
        v47 = *(v28 + 8);
      }

      sub_1B7CEA730(&qword_1EBA52618, MEMORY[0x1E6968B10], MEMORY[0x1E6968B18]);
      result = sub_1B7CFE9B0();
      v29 = -1 << *(v11 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v18 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v18 + 8 * v31);
          if (v35 != -1)
          {
            v19 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v30) & ~*(v18 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v43)(*(v11 + 48) + v45 * v19, v46, v5);
      v20 = *(v11 + 56) + 24 * v19;
      *v20 = v44;
      *(v20 + 8) = v47;
      ++*(v11 + 16);
      v6 = v40;
      v9 = v41;
    }

    v22 = v12;
    while (1)
    {
      v12 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v23 = v13[v12];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v16 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v42 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_34;
    }

    v36 = 1 << *(v9 + 32);
    v3 = v38;
    if (v36 >= 64)
    {
      bzero(v13, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v36;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_1B7CE49B4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1B7C107FC(&qword_1EBA52238, &qword_1B7D0B390);
  result = sub_1B7CFF370();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v4;
    v31 = v3;
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
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      result = sub_1B7CFF7B0();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (v30)
    {
      v29 = 1 << *(v5 + 32);
      if (v29 >= 64)
      {
        bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v29;
      }

      *(v5 + 16) = 0;
    }

    v3 = v31;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_1B7CE4C18(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1B7C107FC(&unk_1EBA52270, &qword_1B7D0B3C8);
  v37 = v4;
  result = sub_1B7CFF370();
  v7 = result;
  if (*(v5 + 16))
  {
    v35 = v2;
    v36 = v5;
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
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = (*(v5 + 56) + 24 * v20);
      v23 = *v22;
      v24 = v22[1];
      v25 = v22[2];
      if ((v37 & 1) == 0)
      {

        v26 = v21;
      }

      result = sub_1B7CFEFC0();
      v27 = -1 << *(v7 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v14 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v14 + 8 * v29);
          if (v33 != -1)
          {
            v15 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      v16 = (*(v7 + 56) + 24 * v15);
      *v16 = v23;
      v16[1] = v24;
      v16[2] = v25;
      ++*(v7 + 16);
      v5 = v36;
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

    if ((v37 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_33;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero(v9, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1B7CE4EC0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1B7C107FC(&qword_1EBA52250, &qword_1B7D0B3A8);
  v32 = v4;
  result = sub_1B7CFF370();
  v7 = result;
  if (*(v5 + 16))
  {
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
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(v5 + 56) + 48 * v20;
      v34 = *v22;
      v35 = *(v22 + 16);
      v23 = *(v22 + 32);
      v33 = *(v22 + 40);
      if ((v32 & 1) == 0)
      {
      }

      sub_1B7CFF7C0();
      MEMORY[0x1B8CAE910](v21);
      result = sub_1B7CFF800();
      v24 = -1 << *(v7 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v14 + 8 * v26);
          if (v30 != -1)
          {
            v15 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      v16 = *(v7 + 56) + 48 * v15;
      *v16 = v34;
      *(v16 + 16) = v35;
      *(v16 + 32) = v23;
      *(v16 + 40) = v33;
      ++*(v7 + 16);
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

    if ((v32 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v2;
    if (v31 >= 64)
    {
      bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1B7CE5184(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1B7C107FC(&qword_1EBA52258, &qword_1B7D0B3B0);
  v30 = v4;
  result = sub_1B7CFF370();
  v7 = result;
  if (*(v5 + 16))
  {
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
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v30 & 1) == 0)
      {
      }

      sub_1B7CFF7C0();
      MEMORY[0x1B8CAE910](v20);
      result = sub_1B7CFF800();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v30 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}