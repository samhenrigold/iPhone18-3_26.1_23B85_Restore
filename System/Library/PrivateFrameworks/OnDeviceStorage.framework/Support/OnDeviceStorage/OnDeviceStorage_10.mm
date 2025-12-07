uint64_t sub_1000DAD98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_10016A680 != -1)
  {
    swift_once();
  }

  sub_10002FD14(v3[176], qword_10016D0F0);
  static OSSignpostID.exclusive.getter();
  v4 = OSSignposter.logHandle.getter();
  v5 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    v7 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v4, v5, v7, "makeContext", "", v6, 2u);
  }

  v8 = v3[200];
  v9 = v3[199];
  v10 = v3[197];
  v11 = v3[196];

  (*(v10 + 16))(v9, v8, v11);
  type metadata accessor for OSSignpostIntervalState();
  swift_allocObject();
  v3[201] = OSSignpostIntervalState.init(id:isOpen:)();
  v12 = *(v10 + 8);
  v3[202] = v12;
  v3[203] = (v10 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v12(v8, v11);
  if (qword_10016A678 != -1)
  {
    swift_once();
  }

  v13 = v3[190];
  sub_100026F50(qword_10016D0C8, qword_10016D0E0);
  sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_10012FA10;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v14._object = 0x800000010013D2D0;
  v14._countAndFlagsBits = 0xD000000000000029;
  LogMessage.StringInterpolation.appendLiteral(_:)(v14);
  v3[116] = v13;
  sub_100042BAC(v3 + 113);
  v3[204] = sub_1000F820C(&qword_10016A960, &type metadata accessor for SelectRequest, &protocol conformance descriptor for SelectRequest);
  dispatch thunk of QueryRequest.statementType.getter();
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002BA6C((v3 + 113), &qword_10016AB10, &unk_100130B10);
  v15._countAndFlagsBits = 0;
  v15._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v15);
  LogMessage.init(stringInterpolation:)();
  Logger.info(_:)();

  v16 = swift_task_alloc();
  v3[205] = v16;
  *v16 = v3;
  v16[1] = sub_1000DB180;

  return BaseObjectGraph.inject<A>(_:)(v3 + 13, &type metadata for ClientInfo, &type metadata for ClientInfo);
}

uint64_t sub_1000DB180()
{
  v2 = *v1;
  v2[206] = v0;

  if (v0)
  {
    v3 = v2[168];

    return _swift_task_switch(sub_1000F8858, v3, 0);
  }

  else
  {
    v4 = sub_100026F94(&qword_10016D200, &qword_1001332A0);
    v5 = swift_task_alloc();
    v2[207] = v5;
    *v5 = v2;
    v5[1] = sub_1000DB324;

    return BaseObjectGraph.inject<A>(_:)(v2 + 78, v4, v4);
  }
}

uint64_t sub_1000DB324()
{
  v2 = *v1;
  *(*v1 + 1664) = v0;

  v3 = *(v2 + 1344);
  if (v0)
  {
    v4 = sub_1000F87DC;
  }

  else
  {
    v4 = sub_1000DB450;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1000DB450()
{
  v1 = *(v0 + 1664);
  sub_100026F50((v0 + 624), *(v0 + 648));
  v2 = dispatch thunk of QueryRequest.statement.getter();
  sub_10007ACB8(v2, v3, v0 + 192);
  if (v1)
  {
    sub_100042AFC(v0 + 104);

LABEL_24:
    sub_100026FDC((v0 + 624));
    sub_1000F7B88("makeContext", 11, 2, *(v0 + 1608));

    v43 = *(v0 + 8);

    return v43();
  }

  sub_10001DAD8(v0 + 192, (v0 + 960));
  v4 = sub_10002A1C8(v0 + 960);
  v5 = sub_10002A1D0(v0 + 960);
  *(v0 + 1296) = v4;
  *(v0 + 1288) = v5;
  v6 = sub_10002A30C((v0 + 1296), (v0 + 1288));
  sub_100078558((v0 + 960));
  if (v6 != 1)
  {
    goto LABEL_14;
  }

  sub_10001DAD8(v0 + 192, (v0 + 936));
  v7 = sub_10002A1C8(v0 + 936);
  v8 = sub_10002A1D0(v0 + 936);
  *(v0 + 1304) = v7;
  *(v0 + 1280) = v8;
  if (!sub_10002A30C((v0 + 1304), (v0 + 1280)))
  {
    sub_100078558((v0 + 936));
LABEL_14:
    v25 = type metadata accessor for DaemonError();
    sub_1000F820C(&qword_10016AB40, &type metadata accessor for DaemonError, &protocol conformance descriptor for DaemonError);
    swift_allocError();
    v27 = v26;
    sub_10001DAD8(v0 + 192, (v0 + 984));
    v28 = sub_10002A1C8(v0 + 984);
    v29 = sub_10002A1D0(v0 + 984);
    *(v0 + 1264) = v28;
    *(v0 + 1256) = v29;
    v30 = sub_10002A30C((v0 + 1264), (v0 + 1256));
    if (!v30)
    {
      sub_100078558((v0 + 984));
LABEL_23:
      *v27 = _swiftEmptyArrayStorage;
      (*(*(v25 - 8) + 104))(v27, enum case for DaemonError.multipleSchemas(_:), v25);
      swift_willThrow();
      sub_100042AFC(v0 + 104);
      sub_10002AAE4((v0 + 192));
      goto LABEL_24;
    }

    v31 = v30;
    v49 = v27;
    v50 = v25;
    result = sub_10007E9EC(0, v30 & ~(v30 >> 63), 0);
    if (v31 < 0)
    {
      goto LABEL_32;
    }

    v32 = 0;
    v52 = (v0 + 1216);
    while (1)
    {
      v33 = sub_10002A418((v0 + 984), v32);
      std::string::basic_string((v0 + 1104), v33);
      std::string::basic_string((v0 + 1128), (v0 + 1104));
      v34 = v31;
      sub_10002EFB0((v0 + 1128));
      sub_10002EFC4(v0 + 1128);
      v35 = static String._fromUTF8Repairing(_:)();
      v37 = v36;
      std::string::~string((v0 + 1104));
      std::string::~string((v0 + 1128));
      v39 = _swiftEmptyArrayStorage[2];
      v38 = _swiftEmptyArrayStorage[3];
      if (v39 >= v38 >> 1)
      {
        sub_10007E9EC((v38 > 1), v39 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v39 + 1;
      v40 = &_swiftEmptyArrayStorage[2 * v39];
      v40[4] = v35;
      v40[5] = v37;
      v41 = sub_10002A1C8(v0 + 984);
      v42 = sub_10002A1D0(v0 + 984);
      *v52 = v41;
      *(v0 + 1248) = v42;
      result = sub_10002A30C(v52, (v0 + 1248));
      if (v32 >= result)
      {
        break;
      }

      ++v32;
      v31 = v34;
      if (v34 == v32)
      {
        sub_100078558((v0 + 984));
        v25 = v50;
        v27 = v49;
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v9 = sub_10002A418((v0 + 936), 0);
  std::string::basic_string((v0 + 1056), v9);
  sub_100078558((v0 + 936));
  sub_10001DE24((v0 + 1008), v0 + 192);
  v10 = sub_10002A1C8(v0 + 1008);
  v11 = sub_10002A1D0(v0 + 1008);
  *(v0 + 1272) = v10;
  *(v0 + 1312) = v11;
  v12 = sub_10002A2EC((v0 + 1272), (v0 + 1312));
  if (v12)
  {
    v13 = v12;
    result = sub_10007E9EC(0, v12 & ~(v12 >> 63), 0);
    if (v13 < 0)
    {
LABEL_33:
      __break(1u);
      return result;
    }

    v15 = 0;
    v51 = v13;
    do
    {
      v16 = sub_10002C030((v0 + 1008), v15);
      sub_10002A33C((v0 + 544), v16);
      std::string::basic_string((v0 + 1080), (v0 + 568));
      sub_10002EFB0((v0 + 1080));
      sub_10002EFC4(v0 + 1080);
      v17 = static String._fromUTF8Repairing(_:)();
      v19 = v18;
      sub_10001B428(v0 + 544);
      std::string::~string((v0 + 1080));
      v21 = _swiftEmptyArrayStorage[2];
      v20 = _swiftEmptyArrayStorage[3];
      if (v21 >= v20 >> 1)
      {
        sub_10007E9EC((v20 > 1), v21 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v21 + 1;
      v22 = &_swiftEmptyArrayStorage[2 * v21];
      v22[4] = v17;
      v22[5] = v19;
      v23 = sub_10002A1C8(v0 + 1008);
      v24 = sub_10002A1D0(v0 + 1008);
      *(v0 + 1232) = v23;
      *(v0 + 1224) = v24;
      result = sub_10002A2EC((v0 + 1232), (v0 + 1224));
      if (v15 >= result)
      {
        goto LABEL_31;
      }
    }

    while (v51 != ++v15);
  }

  sub_10002A4B8((v0 + 1008));
  *(v0 + 1672) = _swiftEmptyArrayStorage;
  std::string::basic_string((v0 + 1152), (v0 + 1056));
  sub_10002EFB0((v0 + 1152));
  sub_10002EFC4(v0 + 1152);
  v44 = static String._fromUTF8Repairing(_:)();
  v46 = v45;
  *(v0 + 1680) = v45;
  std::string::~string((v0 + 1152));
  v47 = swift_task_alloc();
  *(v0 + 1688) = v47;
  *v47 = v0;
  v47[1] = sub_1000DBBD0;
  v48 = *(v0 + 1336);

  return sub_1000F14AC(_swiftEmptyArrayStorage, v44, v46, v0 + 104, v48);
}

uint64_t sub_1000DBBD0()
{
  v2 = *v1;
  *(*v1 + 1696) = v0;

  v3 = *(v2 + 1344);

  if (v0)
  {
    v4 = sub_1000F885C;
  }

  else
  {
    v4 = sub_1000DBD34;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1000DBD34()
{
  v1 = v0[70].__r_.__value_.__r.__words[2];
  sub_10008366C(LODWORD(v0[8].__r_.__value_.__l.__data_), v0[64].__r_.__value_.__r.__words[2]);
  if (!v1)
  {
    size = v0[64].__r_.__value_.__l.__size_;
    v3 = v0[63].__r_.__value_.__r.__words[2];
    v4 = v0[63].__r_.__value_.__l.__size_;
    dispatch thunk of QueryRequest.statementType.getter();
    v5 = static StatementType.== infix(_:_:)();
    v6 = *(v3 + 8);
    v0[71].__r_.__value_.__r.__words[0] = v6;
    v0[71].__r_.__value_.__l.__size_ = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v6(size, v4);
    v25 = v6;
    if (v5)
    {
      std::string::basic_string(v0 + 49, v0 + 44);
      sub_10002EFB0(&v0[49]);
      sub_10002EFC4(&v0[49]);
      v15 = static String._fromUTF8Repairing(_:)();
      v16 = v0[64].__r_.__value_.__l.__size_;
      data = v0[64].__r_.__value_.__l.__data_;
      v18 = v0[63].__r_.__value_.__r.__words[2];
      v19 = v0[63].__r_.__value_.__l.__size_;
      v20 = v0[56].__r_.__value_.__l.__data_;
      v0[71].__r_.__value_.__r.__words[2] = v21;
      v0[72].__r_.__value_.__r.__words[0] = v15;
      std::string::~string(v0 + 49);
      v0[72].__r_.__value_.__l.__size_ = OBJC_IVAR____TtC19amsondevicestoraged13ClientSession_credential;
      AccessCredential.storageCategory.getter();
      dispatch thunk of QueryRequest.statementType.getter();
      (*(v18 + 104))(v16, enum case for StatementType.select(_:), v19);
      v0[50].__r_.__value_.__s.__data_[9] = static StatementType.== infix(_:_:)() & 1;
      v25(v16, v19);
      v25(data, v19);
      v22 = sub_100026F50(&v20[OBJC_IVAR____TtC19amsondevicestoraged13ClientSession_dbManager], *&v20[OBJC_IVAR____TtC19amsondevicestoraged13ClientSession_dbManager + 24]);
      v23 = &v20[OBJC_IVAR____TtC19amsondevicestoraged13ClientSession_id];
      v0[72].__r_.__value_.__r.__words[2] = *&v20[OBJC_IVAR____TtC19amsondevicestoraged13ClientSession_id];
      v0[73].__r_.__value_.__r.__words[0] = *(v23 + 1);
      v24 = *v22;
      v0[73].__r_.__value_.__l.__size_ = *v22;

      return _swift_task_switch(sub_1000DC1F4, v24, 0);
    }

    v7 = v0[64].__r_.__value_.__r.__words[2];
    v8 = v0[63].__r_.__value_.__r.__words[2];
    v9 = v0[63].__r_.__value_.__l.__size_;
    v10 = type metadata accessor for DaemonError();
    sub_1000F820C(&qword_10016AB40, &type metadata accessor for DaemonError, &protocol conformance descriptor for DaemonError);
    swift_allocError();
    v12 = v11;
    sub_100026F94(&qword_10016D208, &qword_1001332B0);
    (*(v8 + 16))(v12, v7, v9);
    dispatch thunk of QueryRequest.statementType.getter();
    (*(*(v10 - 8) + 104))(v12, enum case for DaemonError.statementTypeMismatch(_:), v10);
    swift_willThrow();
    v25(v7, v9);
  }

  std::string::~string(v0 + 44);
  sub_100042AFC(&v0[4].__r_.__value_.__l.__size_);
  sub_10002AAE4(&v0[8].__r_.__value_.__l.__data_);
  sub_100026FDC(v0[26].__r_.__value_.__r.__words);
  sub_1000F7B88("makeContext", 11, 2, v0[67].__r_.__value_.__l.__data_);

  v13 = v0->__r_.__value_.__l.__size_;

  return v13();
}

uint64_t sub_1000DC1F4()
{
  v1 = *(v0 + 1209);
  v2 = *(v0 + 1728);
  v3 = *(v0 + 1720);
  v4 = *(v0 + 1488);
  v5 = *(v0 + 1480);
  (*(*(v0 + 1504) + 16))(&v4[v5[5]], *(v0 + 1512), *(v0 + 1496));
  v7 = *(v0 + 120);
  v6 = *(v0 + 128);
  *v4 = v2;
  *(v4 + 1) = v3;
  v8 = &v4[v5[6]];
  *v8 = v7;
  *(v8 + 1) = v6;
  v4[v5[7]] = v1;
  v4[v5[8]] = 0;

  v9 = swift_task_alloc();
  *(v0 + 1768) = v9;
  *v9 = v0;
  v9[1] = sub_1000DC308;
  v10 = *(v0 + 1752);
  v11 = *(v0 + 1744);
  v12 = *(v0 + 1488);

  return sub_100050F58(v12, v11, v10);
}

uint64_t sub_1000DC308(uint64_t a1)
{
  v3 = *v2;
  v3[222] = a1;
  v3[223] = v1;

  if (v1)
  {
    v4 = v3[220];
    sub_1000F65EC(v3[186], type metadata accessor for DatabaseConnectionManagerImplementation.ConnectionKey);
    v5 = sub_1000DCC68;
  }

  else
  {
    v4 = v3[168];
    sub_1000F65EC(v3[186], type metadata accessor for DatabaseConnectionManagerImplementation.ConnectionKey);
    v5 = sub_1000DC460;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_1000DC460()
{
  (*(*(v0 + 1504) + 8))(*(v0 + 1512), *(v0 + 1496));
  dispatch thunk of QueryRequest.query.getter();
  sub_100026F50((v0 + 864), *(v0 + 888));
  v1 = Expressible.isExpandable.getter();
  sub_100026FDC((v0 + 864));
  if (v1)
  {
    v2 = *(v0 + 1776);
    v3 = qword_10016A548;

    if (v3 != -1)
    {
      swift_once();
    }

    v4 = *(v0 + 1424);
    v5 = *(v0 + 1416);
    v6 = *(v0 + 1408);
    v7 = sub_10002FD14(v6, qword_1001736D0);
    (*(v5 + 16))(v4, v7, v6);
    static OSSignpostID.exclusive.getter();
    v8 = swift_slowAlloc();
    *v8 = 0;
    v9 = OSSignposter.logHandle.getter();
    LOBYTE(v6) = static os_signpost_type_t.begin.getter();
    v10 = OSSignpostID.rawValue.getter();
    v60 = v8;
    v61 = v9;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v9, v6, v10, "expandQuery", "", v8, 2u);
    dispatch thunk of QueryRequest.query.getter();
    sub_100026F50((v0 + 744), *(v0 + 768));
    LOBYTE(v4) = Expressible.isExpandable.getter();
    sub_100026FDC((v0 + 744));
    if (v4)
    {
      v58 = v2;
      v11 = *(v0 + 1736);
      v12 = *(v0 + 1400);
      v13 = *(v0 + 1384);
      v14 = *(v0 + 1376);
      v15 = *(v0 + 1344);
      dispatch thunk of QueryRequest.query.getter();
      sub_100026F50((v0 + 664), *(v0 + 688));
      (*(v13 + 16))(v12, v15 + v11, v14);
      sub_10002A9C4(v0 + 16, (v0 + 192));
      v52 = *(v0 + 1784);
      v16 = *(v0 + 1400);
      v17 = *(v0 + 1384);
      v18 = *(v0 + 1376);
      v19 = (*(v17 + 80) + 16) & ~*(v17 + 80);
      v20 = (*(v0 + 1392) + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
      v21 = swift_allocObject();
      (*(v17 + 32))(v21 + v19, v16, v18);
      *(v21 + v20) = v58;
      sub_10002ABE8(v21 + ((v20 + 15) & 0xFFFFFFFFFFFFFFF8), (v0 + 16));
      sub_10002AAE4((v0 + 16));

      Expressible.expanded(using:in:rawStatementHandler:)();
      if (v52)
      {
        v22 = *(v0 + 1704);
        v23 = *(v0 + 1584);
        v24 = *(v0 + 1568);
        v25 = *(v0 + 1552);
        v26 = *(v0 + 1520);
        v56 = *(v0 + 1424);
        v57 = *(v0 + 1616);
        v27 = *(v0 + 1416);
        v54 = *(v0 + 1408);

        sub_100026FDC((v0 + 664));

        v22(v25, v26);
        std::string::~string((v0 + 1056));
        sub_100042AFC(v0 + 104);
        v57(v23, v24);
        (*(v27 + 8))(v56, v54);
LABEL_12:
        sub_10002AAE4((v0 + 192));
        sub_100026FDC((v0 + 624));
        sub_1000F7B88("makeContext", 11, 2, *(v0 + 1608));

        v46 = *(v0 + 8);

        return v46();
      }

      sub_100026FDC((v0 + 664));
      dispatch thunk of QueryRequest.withQuery(_:)();
      sub_100026FDC((v0 + 704));
      v59 = 0;
    }

    else
    {
      (*(*(v0 + 1440) + 16))(*(v0 + 1456), *(v0 + 1328), *(v0 + 1432));
      v59 = *(v0 + 1784);
    }

    v28 = *(v0 + 1584);
    v53 = *(v0 + 1568);
    v55 = *(v0 + 1616);
    v29 = *(v0 + 1472);
    v30 = *(v0 + 1464);
    v31 = *(v0 + 1456);
    v32 = *(v0 + 1440);
    v33 = *(v0 + 1432);
    v51 = *(v0 + 1424);
    v34 = *(v0 + 1416);
    v50 = *(v0 + 1408);
    v35 = static os_signpost_type_t.end.getter();
    v36 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v61, v35, v36, "expandQuery", "", v60, 2u);

    v37 = *(v32 + 32);
    v37(v30, v31, v33);

    v37(v29, v30, v33);
    v55(v28, v53);
    (*(v34 + 8))(v51, v50);
    sub_100026F50((v0 + 624), *(v0 + 648));
    v38 = dispatch thunk of QueryRequest.statement.getter();
    sub_10007ACB8(v38, v39, v0 + 280);
    if (v59)
    {
      v40 = *(v0 + 1704);
      v41 = *(v0 + 1552);
      v42 = *(v0 + 1520);
      v43 = *(v0 + 1472);
      v44 = *(v0 + 1440);
      v45 = *(v0 + 1432);

      (*(v44 + 8))(v43, v45);
      v40(v41, v42);
      std::string::~string((v0 + 1056));
      sub_100042AFC(v0 + 104);
      goto LABEL_12;
    }

    sub_10002ABE8(v0 + 456, (v0 + 280));
    sub_10002AAE4((v0 + 280));
  }

  else
  {
    (*(*(v0 + 1440) + 16))(*(v0 + 1472), *(v0 + 1328), *(v0 + 1432));
    sub_10002A9C4(v0 + 456, (v0 + 192));
  }

  v48 = sub_100026F94(&qword_10016D210, &unk_1001332B8);
  v49 = swift_task_alloc();
  *(v0 + 1792) = v49;
  *v49 = v0;
  v49[1] = sub_1000DCC84;

  return BaseObjectGraph.inject<A>(_:)(v0 + 824, v48, v48);
}

uint64_t sub_1000DCC84()
{
  v2 = *v1;
  *(*v1 + 1800) = v0;

  v3 = *(v2 + 1344);
  if (v0)
  {
    v4 = sub_1000DCF9C;
  }

  else
  {
    v4 = sub_1000DCDB0;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1000DCDB0()
{
  v1 = v0[217];
  v2 = v0[168];
  sub_100026F50(v0 + 103, v0[106]);
  v3 = swift_task_alloc();
  v0[226] = v3;
  *v3 = v0;
  v3[1] = sub_1000DCE70;
  v4 = v0[222];

  return sub_100074494((v0 + 57), v2 + v1, (v0 + 13), v4);
}

uint64_t sub_1000DCE70()
{
  v2 = *v1;
  *(*v1 + 1816) = v0;

  v3 = *(v2 + 1344);
  if (v0)
  {
    v4 = sub_1000DD560;
  }

  else
  {
    v4 = sub_1000DD284;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1000DCF9C()
{
  data = v0[75].__r_.__value_.__l.__data_;
  v0[76].__r_.__value_.__r.__words[0] = data;
  v0[51].__r_.__value_.__r.__words[2] = data;
  swift_errorRetain();
  sub_100026F94(&qword_10016ADB8, &qword_1001312C0);
  if (swift_dynamicCast())
  {
    sub_1000F62E0(v0[50].__r_.__value_.__l.__data_, v0[50].__r_.__value_.__s.__data_[8]);
    v2 = sub_100026F94(&qword_10016B008, &unk_100130F30);
    v3 = swift_task_alloc();
    v0[76].__r_.__value_.__l.__size_ = v3;
    *v3 = v0;
    v3[1] = sub_1000DD850;

    return BaseObjectGraph.inject<A>(_:)(&v0[32].__r_.__value_.__r.__words[2], v2, v2);
  }

  else
  {
    v4 = v0[71].__r_.__value_.__l.__data_;
    v5 = v0[64].__r_.__value_.__r.__words[2];
    size = v0[63].__r_.__value_.__l.__size_;
    v7 = v0[61].__r_.__value_.__l.__size_;
    v8 = v0[60].__r_.__value_.__l.__data_;
    v9 = v0[59].__r_.__value_.__r.__words[2];
    swift_willThrow();

    sub_10002AAE4(&v0[19].__r_.__value_.__l.__data_);
    (*(v8 + 1))(v7, v9);
    v4(v5, size);
    std::string::~string(v0 + 44);
    sub_100042AFC(&v0[4].__r_.__value_.__l.__size_);
    sub_10002AAE4(&v0[8].__r_.__value_.__l.__data_);
    sub_100026FDC(v0[26].__r_.__value_.__r.__words);
    sub_1000F7B88("makeContext", 11, 2, v0[67].__r_.__value_.__l.__data_);

    v10 = v0->__r_.__value_.__l.__size_;

    return v10();
  }
}

uint64_t sub_1000DD284()
{
  (*(*(v0 + 1440) + 16))(*(v0 + 1448), *(v0 + 1472), *(v0 + 1432));
  sub_10002A9C4(v0 + 368, (v0 + 456));
  std::string::basic_string((v0 + 1032), (v0 + 1056));
  v16 = *(v0 + 1776);
  v1 = *(v0 + 1704);
  v17 = *(v0 + 1608);
  v2 = *(v0 + 1552);
  v3 = *(v0 + 1520);
  v4 = *(v0 + 1472);
  v5 = *(v0 + 1448);
  v6 = *(v0 + 1440);
  v7 = *(v0 + 1432);
  v8 = *(v0 + 1320);
  sub_10002EFB0((v0 + 1032));
  sub_10002EFC4(v0 + 1032);
  v9 = static String._fromUTF8Repairing(_:)();
  v15 = v10;
  sub_10002AAE4((v0 + 456));
  (*(v6 + 8))(v4, v7);
  v1(v2, v3);
  std::string::~string((v0 + 1056));
  sub_100042AFC(v0 + 104);
  std::string::~string((v0 + 1032));
  sub_10002AAE4((v0 + 192));
  (*(v6 + 32))(v8, v5, v7);
  v11 = sub_100026F94(&qword_10016D1F8, &qword_100133288);
  sub_10002ABE8(v8 + v11[9], (v0 + 368));
  sub_10002AAE4((v0 + 368));
  v12 = (v8 + v11[10]);
  *v12 = v9;
  v12[1] = v15;
  *(v8 + v11[11]) = v16;
  sub_100026FDC((v0 + 824));
  sub_100026FDC((v0 + 624));
  sub_1000F7B88("makeContext", 11, 2, v17);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_1000DD560()
{
  sub_100026FDC(&v0[34].__r_.__value_.__l.__size_);
  v1 = v0[75].__r_.__value_.__r.__words[2];
  v0[76].__r_.__value_.__r.__words[0] = v1;
  v0[51].__r_.__value_.__r.__words[2] = v1;
  swift_errorRetain();
  sub_100026F94(&qword_10016ADB8, &qword_1001312C0);
  if (swift_dynamicCast())
  {
    sub_1000F62E0(v0[50].__r_.__value_.__l.__data_, v0[50].__r_.__value_.__s.__data_[8]);
    v2 = sub_100026F94(&qword_10016B008, &unk_100130F30);
    v3 = swift_task_alloc();
    v0[76].__r_.__value_.__l.__size_ = v3;
    *v3 = v0;
    v3[1] = sub_1000DD850;

    return BaseObjectGraph.inject<A>(_:)(&v0[32].__r_.__value_.__r.__words[2], v2, v2);
  }

  else
  {
    data = v0[71].__r_.__value_.__l.__data_;
    v5 = v0[64].__r_.__value_.__r.__words[2];
    size = v0[63].__r_.__value_.__l.__size_;
    v7 = v0[61].__r_.__value_.__l.__size_;
    v8 = v0[60].__r_.__value_.__l.__data_;
    v9 = v0[59].__r_.__value_.__r.__words[2];
    swift_willThrow();

    sub_10002AAE4(&v0[19].__r_.__value_.__l.__data_);
    (*(v8 + 1))(v7, v9);
    data(v5, size);
    std::string::~string(v0 + 44);
    sub_100042AFC(&v0[4].__r_.__value_.__l.__size_);
    sub_10002AAE4(&v0[8].__r_.__value_.__l.__data_);
    sub_100026FDC(v0[26].__r_.__value_.__r.__words);
    sub_1000F7B88("makeContext", 11, 2, v0[67].__r_.__value_.__l.__data_);

    v10 = v0->__r_.__value_.__l.__size_;

    return v10();
  }
}

uint64_t sub_1000DD850()
{
  v2 = *v1;
  *(*v1 + 1840) = v0;

  v3 = *(v2 + 1344);
  if (v0)
  {
    v4 = sub_1000F87F8;
  }

  else
  {
    v4 = sub_1000DD97C;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1000DD97C()
{
  v1 = v0[171];
  v2 = v0[170];
  v3 = v0[169];
  sub_100026F50(v0 + 98, v0[101]);
  sub_1000F820C(&qword_10016D218, &type metadata accessor for SelectRequest, &protocol conformance descriptor for SelectRequest);
  dispatch thunk of RequestType.accessType.getter();
  v4 = RequestAccessType.isRead.getter();
  (*(v2 + 8))(v1, v3);
  v5 = swift_task_alloc();
  v0[231] = v5;
  *v5 = v0;
  v5[1] = sub_1000DDAB8;
  if (v4)
  {
    v6 = 2;
  }

  else
  {
    v6 = 3;
  }

  return sub_100061DD0(v6);
}

uint64_t sub_1000DDAB8()
{
  v2 = *v1;
  *(*v1 + 1856) = v0;

  v3 = *(v2 + 1344);
  if (v0)
  {
    v4 = sub_1000F88CC;
  }

  else
  {
    v4 = sub_1000F8860;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1000DDBE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[168] = v3;
  v4[167] = a3;
  v4[166] = a2;
  v4[165] = a1;
  v5 = type metadata accessor for RequestAccessType();
  v4[169] = v5;
  v4[170] = *(v5 - 8);
  v4[171] = swift_task_alloc();
  v6 = type metadata accessor for AccessCredential();
  v4[172] = v6;
  v7 = *(v6 - 8);
  v4[173] = v7;
  v4[174] = *(v7 + 64);
  v4[175] = swift_task_alloc();
  v8 = type metadata accessor for OSSignposter();
  v4[176] = v8;
  v4[177] = *(v8 - 8);
  v4[178] = swift_task_alloc();
  v9 = type metadata accessor for PluckRequest();
  v4[179] = v9;
  v4[180] = *(v9 - 8);
  v4[181] = swift_task_alloc();
  v4[182] = swift_task_alloc();
  v4[183] = swift_task_alloc();
  v4[184] = swift_task_alloc();
  v4[185] = type metadata accessor for DatabaseConnectionManagerImplementation.ConnectionKey(0);
  v4[186] = swift_task_alloc();
  v10 = type metadata accessor for StorageCategory();
  v4[187] = v10;
  v4[188] = *(v10 - 8);
  v4[189] = swift_task_alloc();
  v11 = type metadata accessor for StatementType();
  v4[190] = v11;
  v4[191] = *(v11 - 8);
  v4[192] = swift_task_alloc();
  v4[193] = swift_task_alloc();
  v4[194] = swift_task_alloc();
  type metadata accessor for LogMessage.StringInterpolation();
  v4[195] = swift_task_alloc();
  v12 = type metadata accessor for OSSignpostID();
  v4[196] = v12;
  v4[197] = *(v12 - 8);
  v4[198] = swift_task_alloc();
  v4[199] = swift_task_alloc();
  v4[200] = swift_task_alloc();

  return _swift_task_switch(sub_1000DDF90, v3, 0);
}

uint64_t sub_1000DDF90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_10016A680 != -1)
  {
    swift_once();
  }

  sub_10002FD14(v3[176], qword_10016D0F0);
  static OSSignpostID.exclusive.getter();
  v4 = OSSignposter.logHandle.getter();
  v5 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    v7 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v4, v5, v7, "makeContext", "", v6, 2u);
  }

  v8 = v3[200];
  v9 = v3[199];
  v10 = v3[197];
  v11 = v3[196];

  (*(v10 + 16))(v9, v8, v11);
  type metadata accessor for OSSignpostIntervalState();
  swift_allocObject();
  v3[201] = OSSignpostIntervalState.init(id:isOpen:)();
  v12 = *(v10 + 8);
  v3[202] = v12;
  v3[203] = (v10 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v12(v8, v11);
  if (qword_10016A678 != -1)
  {
    swift_once();
  }

  v13 = v3[190];
  sub_100026F50(qword_10016D0C8, qword_10016D0E0);
  sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_10012FA10;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v14._object = 0x800000010013D2D0;
  v14._countAndFlagsBits = 0xD000000000000029;
  LogMessage.StringInterpolation.appendLiteral(_:)(v14);
  v3[116] = v13;
  sub_100042BAC(v3 + 113);
  v3[204] = sub_1000F820C(&qword_10016D230, &type metadata accessor for PluckRequest, &protocol conformance descriptor for PluckRequest);
  dispatch thunk of QueryRequest.statementType.getter();
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002BA6C((v3 + 113), &qword_10016AB10, &unk_100130B10);
  v15._countAndFlagsBits = 0;
  v15._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v15);
  LogMessage.init(stringInterpolation:)();
  Logger.info(_:)();

  v16 = swift_task_alloc();
  v3[205] = v16;
  *v16 = v3;
  v16[1] = sub_1000DE378;

  return BaseObjectGraph.inject<A>(_:)(v3 + 13, &type metadata for ClientInfo, &type metadata for ClientInfo);
}

uint64_t sub_1000DE378()
{
  v2 = *v1;
  v2[206] = v0;

  if (v0)
  {
    v3 = v2[168];

    return _swift_task_switch(sub_1000F8858, v3, 0);
  }

  else
  {
    v4 = sub_100026F94(&qword_10016D200, &qword_1001332A0);
    v5 = swift_task_alloc();
    v2[207] = v5;
    *v5 = v2;
    v5[1] = sub_1000DE51C;

    return BaseObjectGraph.inject<A>(_:)(v2 + 78, v4, v4);
  }
}

uint64_t sub_1000DE51C()
{
  v2 = *v1;
  *(*v1 + 1664) = v0;

  v3 = *(v2 + 1344);
  if (v0)
  {
    v4 = sub_1000F87DC;
  }

  else
  {
    v4 = sub_1000DE648;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1000DE648()
{
  v1 = *(v0 + 1664);
  sub_100026F50((v0 + 624), *(v0 + 648));
  v2 = dispatch thunk of QueryRequest.statement.getter();
  sub_10007ACB8(v2, v3, v0 + 192);
  if (v1)
  {
    sub_100042AFC(v0 + 104);

LABEL_24:
    sub_100026FDC((v0 + 624));
    sub_1000F7B88("makeContext", 11, 2, *(v0 + 1608));

    v43 = *(v0 + 8);

    return v43();
  }

  sub_10001DAD8(v0 + 192, (v0 + 960));
  v4 = sub_10002A1C8(v0 + 960);
  v5 = sub_10002A1D0(v0 + 960);
  *(v0 + 1296) = v4;
  *(v0 + 1288) = v5;
  v6 = sub_10002A30C((v0 + 1296), (v0 + 1288));
  sub_100078558((v0 + 960));
  if (v6 != 1)
  {
    goto LABEL_14;
  }

  sub_10001DAD8(v0 + 192, (v0 + 936));
  v7 = sub_10002A1C8(v0 + 936);
  v8 = sub_10002A1D0(v0 + 936);
  *(v0 + 1304) = v7;
  *(v0 + 1280) = v8;
  if (!sub_10002A30C((v0 + 1304), (v0 + 1280)))
  {
    sub_100078558((v0 + 936));
LABEL_14:
    v25 = type metadata accessor for DaemonError();
    sub_1000F820C(&qword_10016AB40, &type metadata accessor for DaemonError, &protocol conformance descriptor for DaemonError);
    swift_allocError();
    v27 = v26;
    sub_10001DAD8(v0 + 192, (v0 + 984));
    v28 = sub_10002A1C8(v0 + 984);
    v29 = sub_10002A1D0(v0 + 984);
    *(v0 + 1264) = v28;
    *(v0 + 1256) = v29;
    v30 = sub_10002A30C((v0 + 1264), (v0 + 1256));
    if (!v30)
    {
      sub_100078558((v0 + 984));
LABEL_23:
      *v27 = _swiftEmptyArrayStorage;
      (*(*(v25 - 8) + 104))(v27, enum case for DaemonError.multipleSchemas(_:), v25);
      swift_willThrow();
      sub_100042AFC(v0 + 104);
      sub_10002AAE4((v0 + 192));
      goto LABEL_24;
    }

    v31 = v30;
    v49 = v27;
    v50 = v25;
    result = sub_10007E9EC(0, v30 & ~(v30 >> 63), 0);
    if (v31 < 0)
    {
      goto LABEL_32;
    }

    v32 = 0;
    v52 = (v0 + 1216);
    while (1)
    {
      v33 = sub_10002A418((v0 + 984), v32);
      std::string::basic_string((v0 + 1104), v33);
      std::string::basic_string((v0 + 1128), (v0 + 1104));
      v34 = v31;
      sub_10002EFB0((v0 + 1128));
      sub_10002EFC4(v0 + 1128);
      v35 = static String._fromUTF8Repairing(_:)();
      v37 = v36;
      std::string::~string((v0 + 1104));
      std::string::~string((v0 + 1128));
      v39 = _swiftEmptyArrayStorage[2];
      v38 = _swiftEmptyArrayStorage[3];
      if (v39 >= v38 >> 1)
      {
        sub_10007E9EC((v38 > 1), v39 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v39 + 1;
      v40 = &_swiftEmptyArrayStorage[2 * v39];
      v40[4] = v35;
      v40[5] = v37;
      v41 = sub_10002A1C8(v0 + 984);
      v42 = sub_10002A1D0(v0 + 984);
      *v52 = v41;
      *(v0 + 1248) = v42;
      result = sub_10002A30C(v52, (v0 + 1248));
      if (v32 >= result)
      {
        break;
      }

      ++v32;
      v31 = v34;
      if (v34 == v32)
      {
        sub_100078558((v0 + 984));
        v25 = v50;
        v27 = v49;
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v9 = sub_10002A418((v0 + 936), 0);
  std::string::basic_string((v0 + 1056), v9);
  sub_100078558((v0 + 936));
  sub_10001DE24((v0 + 1008), v0 + 192);
  v10 = sub_10002A1C8(v0 + 1008);
  v11 = sub_10002A1D0(v0 + 1008);
  *(v0 + 1272) = v10;
  *(v0 + 1312) = v11;
  v12 = sub_10002A2EC((v0 + 1272), (v0 + 1312));
  if (v12)
  {
    v13 = v12;
    result = sub_10007E9EC(0, v12 & ~(v12 >> 63), 0);
    if (v13 < 0)
    {
LABEL_33:
      __break(1u);
      return result;
    }

    v15 = 0;
    v51 = v13;
    do
    {
      v16 = sub_10002C030((v0 + 1008), v15);
      sub_10002A33C((v0 + 544), v16);
      std::string::basic_string((v0 + 1080), (v0 + 568));
      sub_10002EFB0((v0 + 1080));
      sub_10002EFC4(v0 + 1080);
      v17 = static String._fromUTF8Repairing(_:)();
      v19 = v18;
      sub_10001B428(v0 + 544);
      std::string::~string((v0 + 1080));
      v21 = _swiftEmptyArrayStorage[2];
      v20 = _swiftEmptyArrayStorage[3];
      if (v21 >= v20 >> 1)
      {
        sub_10007E9EC((v20 > 1), v21 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v21 + 1;
      v22 = &_swiftEmptyArrayStorage[2 * v21];
      v22[4] = v17;
      v22[5] = v19;
      v23 = sub_10002A1C8(v0 + 1008);
      v24 = sub_10002A1D0(v0 + 1008);
      *(v0 + 1232) = v23;
      *(v0 + 1224) = v24;
      result = sub_10002A2EC((v0 + 1232), (v0 + 1224));
      if (v15 >= result)
      {
        goto LABEL_31;
      }
    }

    while (v51 != ++v15);
  }

  sub_10002A4B8((v0 + 1008));
  *(v0 + 1672) = _swiftEmptyArrayStorage;
  std::string::basic_string((v0 + 1152), (v0 + 1056));
  sub_10002EFB0((v0 + 1152));
  sub_10002EFC4(v0 + 1152);
  v44 = static String._fromUTF8Repairing(_:)();
  v46 = v45;
  *(v0 + 1680) = v45;
  std::string::~string((v0 + 1152));
  v47 = swift_task_alloc();
  *(v0 + 1688) = v47;
  *v47 = v0;
  v47[1] = sub_1000DEDC8;
  v48 = *(v0 + 1336);

  return sub_1000F14AC(_swiftEmptyArrayStorage, v44, v46, v0 + 104, v48);
}

uint64_t sub_1000DEDC8()
{
  v2 = *v1;
  *(*v1 + 1696) = v0;

  v3 = *(v2 + 1344);

  if (v0)
  {
    v4 = sub_1000F885C;
  }

  else
  {
    v4 = sub_1000DEF2C;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1000DEF2C()
{
  v1 = v0[70].__r_.__value_.__r.__words[2];
  sub_10008366C(LODWORD(v0[8].__r_.__value_.__l.__data_), v0[64].__r_.__value_.__r.__words[2]);
  if (!v1)
  {
    size = v0[64].__r_.__value_.__l.__size_;
    v3 = v0[63].__r_.__value_.__r.__words[2];
    v4 = v0[63].__r_.__value_.__l.__size_;
    dispatch thunk of QueryRequest.statementType.getter();
    v5 = static StatementType.== infix(_:_:)();
    v6 = *(v3 + 8);
    v0[71].__r_.__value_.__r.__words[0] = v6;
    v0[71].__r_.__value_.__l.__size_ = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v6(size, v4);
    v25 = v6;
    if (v5)
    {
      std::string::basic_string(v0 + 49, v0 + 44);
      sub_10002EFB0(&v0[49]);
      sub_10002EFC4(&v0[49]);
      v15 = static String._fromUTF8Repairing(_:)();
      v16 = v0[64].__r_.__value_.__l.__size_;
      data = v0[64].__r_.__value_.__l.__data_;
      v18 = v0[63].__r_.__value_.__r.__words[2];
      v19 = v0[63].__r_.__value_.__l.__size_;
      v20 = v0[56].__r_.__value_.__l.__data_;
      v0[71].__r_.__value_.__r.__words[2] = v21;
      v0[72].__r_.__value_.__r.__words[0] = v15;
      std::string::~string(v0 + 49);
      v0[72].__r_.__value_.__l.__size_ = OBJC_IVAR____TtC19amsondevicestoraged13ClientSession_credential;
      AccessCredential.storageCategory.getter();
      dispatch thunk of QueryRequest.statementType.getter();
      (*(v18 + 104))(v16, enum case for StatementType.select(_:), v19);
      v0[50].__r_.__value_.__s.__data_[9] = static StatementType.== infix(_:_:)() & 1;
      v25(v16, v19);
      v25(data, v19);
      v22 = sub_100026F50(&v20[OBJC_IVAR____TtC19amsondevicestoraged13ClientSession_dbManager], *&v20[OBJC_IVAR____TtC19amsondevicestoraged13ClientSession_dbManager + 24]);
      v23 = &v20[OBJC_IVAR____TtC19amsondevicestoraged13ClientSession_id];
      v0[72].__r_.__value_.__r.__words[2] = *&v20[OBJC_IVAR____TtC19amsondevicestoraged13ClientSession_id];
      v0[73].__r_.__value_.__r.__words[0] = *(v23 + 1);
      v24 = *v22;
      v0[73].__r_.__value_.__l.__size_ = *v22;

      return _swift_task_switch(sub_1000DF3EC, v24, 0);
    }

    v7 = v0[64].__r_.__value_.__r.__words[2];
    v8 = v0[63].__r_.__value_.__r.__words[2];
    v9 = v0[63].__r_.__value_.__l.__size_;
    v10 = type metadata accessor for DaemonError();
    sub_1000F820C(&qword_10016AB40, &type metadata accessor for DaemonError, &protocol conformance descriptor for DaemonError);
    swift_allocError();
    v12 = v11;
    sub_100026F94(&qword_10016D208, &qword_1001332B0);
    (*(v8 + 16))(v12, v7, v9);
    dispatch thunk of QueryRequest.statementType.getter();
    (*(*(v10 - 8) + 104))(v12, enum case for DaemonError.statementTypeMismatch(_:), v10);
    swift_willThrow();
    v25(v7, v9);
  }

  std::string::~string(v0 + 44);
  sub_100042AFC(&v0[4].__r_.__value_.__l.__size_);
  sub_10002AAE4(&v0[8].__r_.__value_.__l.__data_);
  sub_100026FDC(v0[26].__r_.__value_.__r.__words);
  sub_1000F7B88("makeContext", 11, 2, v0[67].__r_.__value_.__l.__data_);

  v13 = v0->__r_.__value_.__l.__size_;

  return v13();
}

uint64_t sub_1000DF3EC()
{
  v1 = *(v0 + 1209);
  v2 = *(v0 + 1728);
  v3 = *(v0 + 1720);
  v4 = *(v0 + 1488);
  v5 = *(v0 + 1480);
  (*(*(v0 + 1504) + 16))(&v4[v5[5]], *(v0 + 1512), *(v0 + 1496));
  v7 = *(v0 + 120);
  v6 = *(v0 + 128);
  *v4 = v2;
  *(v4 + 1) = v3;
  v8 = &v4[v5[6]];
  *v8 = v7;
  *(v8 + 1) = v6;
  v4[v5[7]] = v1;
  v4[v5[8]] = 0;

  v9 = swift_task_alloc();
  *(v0 + 1768) = v9;
  *v9 = v0;
  v9[1] = sub_1000DF500;
  v10 = *(v0 + 1752);
  v11 = *(v0 + 1744);
  v12 = *(v0 + 1488);

  return sub_100050F58(v12, v11, v10);
}

uint64_t sub_1000DF500(uint64_t a1)
{
  v3 = *v2;
  v3[222] = a1;
  v3[223] = v1;

  if (v1)
  {
    v4 = v3[220];
    sub_1000F65EC(v3[186], type metadata accessor for DatabaseConnectionManagerImplementation.ConnectionKey);
    v5 = sub_1000DCC68;
  }

  else
  {
    v4 = v3[168];
    sub_1000F65EC(v3[186], type metadata accessor for DatabaseConnectionManagerImplementation.ConnectionKey);
    v5 = sub_1000DF658;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_1000DF658()
{
  (*(*(v0 + 1504) + 8))(*(v0 + 1512), *(v0 + 1496));
  dispatch thunk of QueryRequest.query.getter();
  sub_100026F50((v0 + 864), *(v0 + 888));
  v1 = Expressible.isExpandable.getter();
  sub_100026FDC((v0 + 864));
  if (v1)
  {
    v2 = *(v0 + 1776);
    v3 = qword_10016A548;

    if (v3 != -1)
    {
      swift_once();
    }

    v4 = *(v0 + 1424);
    v5 = *(v0 + 1416);
    v6 = *(v0 + 1408);
    v7 = sub_10002FD14(v6, qword_1001736D0);
    (*(v5 + 16))(v4, v7, v6);
    static OSSignpostID.exclusive.getter();
    v8 = swift_slowAlloc();
    *v8 = 0;
    v9 = OSSignposter.logHandle.getter();
    LOBYTE(v6) = static os_signpost_type_t.begin.getter();
    v10 = OSSignpostID.rawValue.getter();
    v60 = v8;
    v61 = v9;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v9, v6, v10, "expandQuery", "", v8, 2u);
    dispatch thunk of QueryRequest.query.getter();
    sub_100026F50((v0 + 744), *(v0 + 768));
    LOBYTE(v4) = Expressible.isExpandable.getter();
    sub_100026FDC((v0 + 744));
    if (v4)
    {
      v58 = v2;
      v11 = *(v0 + 1736);
      v12 = *(v0 + 1400);
      v13 = *(v0 + 1384);
      v14 = *(v0 + 1376);
      v15 = *(v0 + 1344);
      dispatch thunk of QueryRequest.query.getter();
      sub_100026F50((v0 + 664), *(v0 + 688));
      (*(v13 + 16))(v12, v15 + v11, v14);
      sub_10002A9C4(v0 + 16, (v0 + 192));
      v52 = *(v0 + 1784);
      v16 = *(v0 + 1400);
      v17 = *(v0 + 1384);
      v18 = *(v0 + 1376);
      v19 = (*(v17 + 80) + 16) & ~*(v17 + 80);
      v20 = (*(v0 + 1392) + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
      v21 = swift_allocObject();
      (*(v17 + 32))(v21 + v19, v16, v18);
      *(v21 + v20) = v58;
      sub_10002ABE8(v21 + ((v20 + 15) & 0xFFFFFFFFFFFFFFF8), (v0 + 16));
      sub_10002AAE4((v0 + 16));

      Expressible.expanded(using:in:rawStatementHandler:)();
      if (v52)
      {
        v22 = *(v0 + 1704);
        v23 = *(v0 + 1584);
        v24 = *(v0 + 1568);
        v25 = *(v0 + 1552);
        v26 = *(v0 + 1520);
        v56 = *(v0 + 1424);
        v57 = *(v0 + 1616);
        v27 = *(v0 + 1416);
        v54 = *(v0 + 1408);

        sub_100026FDC((v0 + 664));

        v22(v25, v26);
        std::string::~string((v0 + 1056));
        sub_100042AFC(v0 + 104);
        v57(v23, v24);
        (*(v27 + 8))(v56, v54);
LABEL_12:
        sub_10002AAE4((v0 + 192));
        sub_100026FDC((v0 + 624));
        sub_1000F7B88("makeContext", 11, 2, *(v0 + 1608));

        v46 = *(v0 + 8);

        return v46();
      }

      sub_100026FDC((v0 + 664));
      dispatch thunk of QueryRequest.withQuery(_:)();
      sub_100026FDC((v0 + 704));
      v59 = 0;
    }

    else
    {
      (*(*(v0 + 1440) + 16))(*(v0 + 1456), *(v0 + 1328), *(v0 + 1432));
      v59 = *(v0 + 1784);
    }

    v28 = *(v0 + 1584);
    v53 = *(v0 + 1568);
    v55 = *(v0 + 1616);
    v29 = *(v0 + 1472);
    v30 = *(v0 + 1464);
    v31 = *(v0 + 1456);
    v32 = *(v0 + 1440);
    v33 = *(v0 + 1432);
    v51 = *(v0 + 1424);
    v34 = *(v0 + 1416);
    v50 = *(v0 + 1408);
    v35 = static os_signpost_type_t.end.getter();
    v36 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v61, v35, v36, "expandQuery", "", v60, 2u);

    v37 = *(v32 + 32);
    v37(v30, v31, v33);

    v37(v29, v30, v33);
    v55(v28, v53);
    (*(v34 + 8))(v51, v50);
    sub_100026F50((v0 + 624), *(v0 + 648));
    v38 = dispatch thunk of QueryRequest.statement.getter();
    sub_10007ACB8(v38, v39, v0 + 280);
    if (v59)
    {
      v40 = *(v0 + 1704);
      v41 = *(v0 + 1552);
      v42 = *(v0 + 1520);
      v43 = *(v0 + 1472);
      v44 = *(v0 + 1440);
      v45 = *(v0 + 1432);

      (*(v44 + 8))(v43, v45);
      v40(v41, v42);
      std::string::~string((v0 + 1056));
      sub_100042AFC(v0 + 104);
      goto LABEL_12;
    }

    sub_10002ABE8(v0 + 456, (v0 + 280));
    sub_10002AAE4((v0 + 280));
  }

  else
  {
    (*(*(v0 + 1440) + 16))(*(v0 + 1472), *(v0 + 1328), *(v0 + 1432));
    sub_10002A9C4(v0 + 456, (v0 + 192));
  }

  v48 = sub_100026F94(&qword_10016D210, &unk_1001332B8);
  v49 = swift_task_alloc();
  *(v0 + 1792) = v49;
  *v49 = v0;
  v49[1] = sub_1000DFE60;

  return BaseObjectGraph.inject<A>(_:)(v0 + 824, v48, v48);
}

uint64_t sub_1000DFE60()
{
  v2 = *v1;
  *(*v1 + 1800) = v0;

  v3 = *(v2 + 1344);
  if (v0)
  {
    v4 = sub_1000E0178;
  }

  else
  {
    v4 = sub_1000DFF8C;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1000DFF8C()
{
  v1 = v0[217];
  v2 = v0[168];
  sub_100026F50(v0 + 103, v0[106]);
  v3 = swift_task_alloc();
  v0[226] = v3;
  *v3 = v0;
  v3[1] = sub_1000E004C;
  v4 = v0[222];

  return sub_100074494((v0 + 57), v2 + v1, (v0 + 13), v4);
}

uint64_t sub_1000E004C()
{
  v2 = *v1;
  *(*v1 + 1816) = v0;

  v3 = *(v2 + 1344);
  if (v0)
  {
    v4 = sub_1000E073C;
  }

  else
  {
    v4 = sub_1000E0460;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1000E0178()
{
  data = v0[75].__r_.__value_.__l.__data_;
  v0[76].__r_.__value_.__r.__words[0] = data;
  v0[51].__r_.__value_.__r.__words[2] = data;
  swift_errorRetain();
  sub_100026F94(&qword_10016ADB8, &qword_1001312C0);
  if (swift_dynamicCast())
  {
    sub_1000F62E0(v0[50].__r_.__value_.__l.__data_, v0[50].__r_.__value_.__s.__data_[8]);
    v2 = sub_100026F94(&qword_10016B008, &unk_100130F30);
    v3 = swift_task_alloc();
    v0[76].__r_.__value_.__l.__size_ = v3;
    *v3 = v0;
    v3[1] = sub_1000E0A2C;

    return BaseObjectGraph.inject<A>(_:)(&v0[32].__r_.__value_.__r.__words[2], v2, v2);
  }

  else
  {
    v4 = v0[71].__r_.__value_.__l.__data_;
    v5 = v0[64].__r_.__value_.__r.__words[2];
    size = v0[63].__r_.__value_.__l.__size_;
    v7 = v0[61].__r_.__value_.__l.__size_;
    v8 = v0[60].__r_.__value_.__l.__data_;
    v9 = v0[59].__r_.__value_.__r.__words[2];
    swift_willThrow();

    sub_10002AAE4(&v0[19].__r_.__value_.__l.__data_);
    (*(v8 + 1))(v7, v9);
    v4(v5, size);
    std::string::~string(v0 + 44);
    sub_100042AFC(&v0[4].__r_.__value_.__l.__size_);
    sub_10002AAE4(&v0[8].__r_.__value_.__l.__data_);
    sub_100026FDC(v0[26].__r_.__value_.__r.__words);
    sub_1000F7B88("makeContext", 11, 2, v0[67].__r_.__value_.__l.__data_);

    v10 = v0->__r_.__value_.__l.__size_;

    return v10();
  }
}

uint64_t sub_1000E0460()
{
  (*(*(v0 + 1440) + 16))(*(v0 + 1448), *(v0 + 1472), *(v0 + 1432));
  sub_10002A9C4(v0 + 368, (v0 + 456));
  std::string::basic_string((v0 + 1032), (v0 + 1056));
  v16 = *(v0 + 1776);
  v1 = *(v0 + 1704);
  v17 = *(v0 + 1608);
  v2 = *(v0 + 1552);
  v3 = *(v0 + 1520);
  v4 = *(v0 + 1472);
  v5 = *(v0 + 1448);
  v6 = *(v0 + 1440);
  v7 = *(v0 + 1432);
  v8 = *(v0 + 1320);
  sub_10002EFB0((v0 + 1032));
  sub_10002EFC4(v0 + 1032);
  v9 = static String._fromUTF8Repairing(_:)();
  v15 = v10;
  sub_10002AAE4((v0 + 456));
  (*(v6 + 8))(v4, v7);
  v1(v2, v3);
  std::string::~string((v0 + 1056));
  sub_100042AFC(v0 + 104);
  std::string::~string((v0 + 1032));
  sub_10002AAE4((v0 + 192));
  (*(v6 + 32))(v8, v5, v7);
  v11 = sub_100026F94(&qword_10016D228, &qword_1001332F8);
  sub_10002ABE8(v8 + v11[9], (v0 + 368));
  sub_10002AAE4((v0 + 368));
  v12 = (v8 + v11[10]);
  *v12 = v9;
  v12[1] = v15;
  *(v8 + v11[11]) = v16;
  sub_100026FDC((v0 + 824));
  sub_100026FDC((v0 + 624));
  sub_1000F7B88("makeContext", 11, 2, v17);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_1000E073C()
{
  sub_100026FDC(&v0[34].__r_.__value_.__l.__size_);
  v1 = v0[75].__r_.__value_.__r.__words[2];
  v0[76].__r_.__value_.__r.__words[0] = v1;
  v0[51].__r_.__value_.__r.__words[2] = v1;
  swift_errorRetain();
  sub_100026F94(&qword_10016ADB8, &qword_1001312C0);
  if (swift_dynamicCast())
  {
    sub_1000F62E0(v0[50].__r_.__value_.__l.__data_, v0[50].__r_.__value_.__s.__data_[8]);
    v2 = sub_100026F94(&qword_10016B008, &unk_100130F30);
    v3 = swift_task_alloc();
    v0[76].__r_.__value_.__l.__size_ = v3;
    *v3 = v0;
    v3[1] = sub_1000E0A2C;

    return BaseObjectGraph.inject<A>(_:)(&v0[32].__r_.__value_.__r.__words[2], v2, v2);
  }

  else
  {
    data = v0[71].__r_.__value_.__l.__data_;
    v5 = v0[64].__r_.__value_.__r.__words[2];
    size = v0[63].__r_.__value_.__l.__size_;
    v7 = v0[61].__r_.__value_.__l.__size_;
    v8 = v0[60].__r_.__value_.__l.__data_;
    v9 = v0[59].__r_.__value_.__r.__words[2];
    swift_willThrow();

    sub_10002AAE4(&v0[19].__r_.__value_.__l.__data_);
    (*(v8 + 1))(v7, v9);
    data(v5, size);
    std::string::~string(v0 + 44);
    sub_100042AFC(&v0[4].__r_.__value_.__l.__size_);
    sub_10002AAE4(&v0[8].__r_.__value_.__l.__data_);
    sub_100026FDC(v0[26].__r_.__value_.__r.__words);
    sub_1000F7B88("makeContext", 11, 2, v0[67].__r_.__value_.__l.__data_);

    v10 = v0->__r_.__value_.__l.__size_;

    return v10();
  }
}

uint64_t sub_1000E0A2C()
{
  v2 = *v1;
  *(*v1 + 1840) = v0;

  v3 = *(v2 + 1344);
  if (v0)
  {
    v4 = sub_1000F87F8;
  }

  else
  {
    v4 = sub_1000E0B58;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1000E0B58()
{
  v1 = v0[171];
  v2 = v0[170];
  v3 = v0[169];
  sub_100026F50(v0 + 98, v0[101]);
  sub_1000F820C(&qword_10016D238, &type metadata accessor for PluckRequest, &protocol conformance descriptor for PluckRequest);
  dispatch thunk of RequestType.accessType.getter();
  v4 = RequestAccessType.isRead.getter();
  (*(v2 + 8))(v1, v3);
  v5 = swift_task_alloc();
  v0[231] = v5;
  *v5 = v0;
  v5[1] = sub_1000DDAB8;
  if (v4)
  {
    v6 = 2;
  }

  else
  {
    v6 = 3;
  }

  return sub_100061DD0(v6);
}

uint64_t sub_1000E0C94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[168] = v3;
  v4[167] = a3;
  v4[166] = a2;
  v4[165] = a1;
  v5 = type metadata accessor for RequestAccessType();
  v4[169] = v5;
  v4[170] = *(v5 - 8);
  v4[171] = swift_task_alloc();
  v6 = type metadata accessor for AccessCredential();
  v4[172] = v6;
  v7 = *(v6 - 8);
  v4[173] = v7;
  v4[174] = *(v7 + 64);
  v4[175] = swift_task_alloc();
  v8 = type metadata accessor for OSSignposter();
  v4[176] = v8;
  v4[177] = *(v8 - 8);
  v4[178] = swift_task_alloc();
  v9 = type metadata accessor for ScalarValueRequest();
  v4[179] = v9;
  v4[180] = *(v9 - 8);
  v4[181] = swift_task_alloc();
  v4[182] = swift_task_alloc();
  v4[183] = swift_task_alloc();
  v4[184] = swift_task_alloc();
  v4[185] = type metadata accessor for DatabaseConnectionManagerImplementation.ConnectionKey(0);
  v4[186] = swift_task_alloc();
  v10 = type metadata accessor for StorageCategory();
  v4[187] = v10;
  v4[188] = *(v10 - 8);
  v4[189] = swift_task_alloc();
  v11 = type metadata accessor for StatementType();
  v4[190] = v11;
  v4[191] = *(v11 - 8);
  v4[192] = swift_task_alloc();
  v4[193] = swift_task_alloc();
  v4[194] = swift_task_alloc();
  type metadata accessor for LogMessage.StringInterpolation();
  v4[195] = swift_task_alloc();
  v12 = type metadata accessor for OSSignpostID();
  v4[196] = v12;
  v4[197] = *(v12 - 8);
  v4[198] = swift_task_alloc();
  v4[199] = swift_task_alloc();
  v4[200] = swift_task_alloc();

  return _swift_task_switch(sub_1000E1040, v3, 0);
}

uint64_t sub_1000E1040(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_10016A680 != -1)
  {
    swift_once();
  }

  sub_10002FD14(v3[176], qword_10016D0F0);
  static OSSignpostID.exclusive.getter();
  v4 = OSSignposter.logHandle.getter();
  v5 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    v7 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v4, v5, v7, "makeContext", "", v6, 2u);
  }

  v8 = v3[200];
  v9 = v3[199];
  v10 = v3[197];
  v11 = v3[196];

  (*(v10 + 16))(v9, v8, v11);
  type metadata accessor for OSSignpostIntervalState();
  swift_allocObject();
  v3[201] = OSSignpostIntervalState.init(id:isOpen:)();
  v12 = *(v10 + 8);
  v3[202] = v12;
  v3[203] = (v10 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v12(v8, v11);
  if (qword_10016A678 != -1)
  {
    swift_once();
  }

  v13 = v3[190];
  sub_100026F50(qword_10016D0C8, qword_10016D0E0);
  sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_10012FA10;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v14._object = 0x800000010013D2D0;
  v14._countAndFlagsBits = 0xD000000000000029;
  LogMessage.StringInterpolation.appendLiteral(_:)(v14);
  v3[116] = v13;
  sub_100042BAC(v3 + 113);
  v3[204] = sub_1000F820C(&qword_10016D248, &type metadata accessor for ScalarValueRequest, &protocol conformance descriptor for ScalarValueRequest);
  dispatch thunk of QueryRequest.statementType.getter();
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002BA6C((v3 + 113), &qword_10016AB10, &unk_100130B10);
  v15._countAndFlagsBits = 0;
  v15._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v15);
  LogMessage.init(stringInterpolation:)();
  Logger.info(_:)();

  v16 = swift_task_alloc();
  v3[205] = v16;
  *v16 = v3;
  v16[1] = sub_1000E1428;

  return BaseObjectGraph.inject<A>(_:)(v3 + 13, &type metadata for ClientInfo, &type metadata for ClientInfo);
}

uint64_t sub_1000E1428()
{
  v2 = *v1;
  v2[206] = v0;

  if (v0)
  {
    v3 = v2[168];

    return _swift_task_switch(sub_1000E16F8, v3, 0);
  }

  else
  {
    v4 = sub_100026F94(&qword_10016D200, &qword_1001332A0);
    v5 = swift_task_alloc();
    v2[207] = v5;
    *v5 = v2;
    v5[1] = sub_1000E15CC;

    return BaseObjectGraph.inject<A>(_:)(v2 + 78, v4, v4);
  }
}

uint64_t sub_1000E15CC()
{
  v2 = *v1;
  *(*v1 + 1664) = v0;

  v3 = *(v2 + 1344);
  if (v0)
  {
    v4 = sub_1000E1FF0;
  }

  else
  {
    v4 = sub_1000E1870;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1000E16F8()
{
  sub_1000F7B88("makeContext", 11, 2, *(v0 + 1608));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000E1870()
{
  v1 = *(v0 + 1664);
  sub_100026F50((v0 + 624), *(v0 + 648));
  v2 = dispatch thunk of QueryRequest.statement.getter();
  sub_10007ACB8(v2, v3, v0 + 192);
  if (v1)
  {
    sub_100042AFC(v0 + 104);

LABEL_24:
    sub_100026FDC((v0 + 624));
    sub_1000F7B88("makeContext", 11, 2, *(v0 + 1608));

    v43 = *(v0 + 8);

    return v43();
  }

  sub_10001DAD8(v0 + 192, (v0 + 960));
  v4 = sub_10002A1C8(v0 + 960);
  v5 = sub_10002A1D0(v0 + 960);
  *(v0 + 1296) = v4;
  *(v0 + 1288) = v5;
  v6 = sub_10002A30C((v0 + 1296), (v0 + 1288));
  sub_100078558((v0 + 960));
  if (v6 != 1)
  {
    goto LABEL_14;
  }

  sub_10001DAD8(v0 + 192, (v0 + 936));
  v7 = sub_10002A1C8(v0 + 936);
  v8 = sub_10002A1D0(v0 + 936);
  *(v0 + 1304) = v7;
  *(v0 + 1280) = v8;
  if (!sub_10002A30C((v0 + 1304), (v0 + 1280)))
  {
    sub_100078558((v0 + 936));
LABEL_14:
    v25 = type metadata accessor for DaemonError();
    sub_1000F820C(&qword_10016AB40, &type metadata accessor for DaemonError, &protocol conformance descriptor for DaemonError);
    swift_allocError();
    v27 = v26;
    sub_10001DAD8(v0 + 192, (v0 + 984));
    v28 = sub_10002A1C8(v0 + 984);
    v29 = sub_10002A1D0(v0 + 984);
    *(v0 + 1264) = v28;
    *(v0 + 1256) = v29;
    v30 = sub_10002A30C((v0 + 1264), (v0 + 1256));
    if (!v30)
    {
      sub_100078558((v0 + 984));
LABEL_23:
      *v27 = _swiftEmptyArrayStorage;
      (*(*(v25 - 8) + 104))(v27, enum case for DaemonError.multipleSchemas(_:), v25);
      swift_willThrow();
      sub_100042AFC(v0 + 104);
      sub_10002AAE4((v0 + 192));
      goto LABEL_24;
    }

    v31 = v30;
    v49 = v27;
    v50 = v25;
    result = sub_10007E9EC(0, v30 & ~(v30 >> 63), 0);
    if (v31 < 0)
    {
      goto LABEL_32;
    }

    v32 = 0;
    v52 = (v0 + 1216);
    while (1)
    {
      v33 = sub_10002A418((v0 + 984), v32);
      std::string::basic_string((v0 + 1104), v33);
      std::string::basic_string((v0 + 1128), (v0 + 1104));
      v34 = v31;
      sub_10002EFB0((v0 + 1128));
      sub_10002EFC4(v0 + 1128);
      v35 = static String._fromUTF8Repairing(_:)();
      v37 = v36;
      std::string::~string((v0 + 1104));
      std::string::~string((v0 + 1128));
      v39 = _swiftEmptyArrayStorage[2];
      v38 = _swiftEmptyArrayStorage[3];
      if (v39 >= v38 >> 1)
      {
        sub_10007E9EC((v38 > 1), v39 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v39 + 1;
      v40 = &_swiftEmptyArrayStorage[2 * v39];
      v40[4] = v35;
      v40[5] = v37;
      v41 = sub_10002A1C8(v0 + 984);
      v42 = sub_10002A1D0(v0 + 984);
      *v52 = v41;
      *(v0 + 1248) = v42;
      result = sub_10002A30C(v52, (v0 + 1248));
      if (v32 >= result)
      {
        break;
      }

      ++v32;
      v31 = v34;
      if (v34 == v32)
      {
        sub_100078558((v0 + 984));
        v25 = v50;
        v27 = v49;
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v9 = sub_10002A418((v0 + 936), 0);
  std::string::basic_string((v0 + 1056), v9);
  sub_100078558((v0 + 936));
  sub_10001DE24((v0 + 1008), v0 + 192);
  v10 = sub_10002A1C8(v0 + 1008);
  v11 = sub_10002A1D0(v0 + 1008);
  *(v0 + 1272) = v10;
  *(v0 + 1312) = v11;
  v12 = sub_10002A2EC((v0 + 1272), (v0 + 1312));
  if (v12)
  {
    v13 = v12;
    result = sub_10007E9EC(0, v12 & ~(v12 >> 63), 0);
    if (v13 < 0)
    {
LABEL_33:
      __break(1u);
      return result;
    }

    v15 = 0;
    v51 = v13;
    do
    {
      v16 = sub_10002C030((v0 + 1008), v15);
      sub_10002A33C((v0 + 544), v16);
      std::string::basic_string((v0 + 1080), (v0 + 568));
      sub_10002EFB0((v0 + 1080));
      sub_10002EFC4(v0 + 1080);
      v17 = static String._fromUTF8Repairing(_:)();
      v19 = v18;
      sub_10001B428(v0 + 544);
      std::string::~string((v0 + 1080));
      v21 = _swiftEmptyArrayStorage[2];
      v20 = _swiftEmptyArrayStorage[3];
      if (v21 >= v20 >> 1)
      {
        sub_10007E9EC((v20 > 1), v21 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v21 + 1;
      v22 = &_swiftEmptyArrayStorage[2 * v21];
      v22[4] = v17;
      v22[5] = v19;
      v23 = sub_10002A1C8(v0 + 1008);
      v24 = sub_10002A1D0(v0 + 1008);
      *(v0 + 1232) = v23;
      *(v0 + 1224) = v24;
      result = sub_10002A2EC((v0 + 1232), (v0 + 1224));
      if (v15 >= result)
      {
        goto LABEL_31;
      }
    }

    while (v51 != ++v15);
  }

  sub_10002A4B8((v0 + 1008));
  *(v0 + 1672) = _swiftEmptyArrayStorage;
  std::string::basic_string((v0 + 1152), (v0 + 1056));
  sub_10002EFB0((v0 + 1152));
  sub_10002EFC4(v0 + 1152);
  v44 = static String._fromUTF8Repairing(_:)();
  v46 = v45;
  *(v0 + 1680) = v45;
  std::string::~string((v0 + 1152));
  v47 = swift_task_alloc();
  *(v0 + 1688) = v47;
  *v47 = v0;
  v47[1] = sub_1000E2170;
  v48 = *(v0 + 1336);

  return sub_1000F14AC(_swiftEmptyArrayStorage, v44, v46, v0 + 104, v48);
}

uint64_t sub_1000E1FF0()
{
  sub_100042AFC(v0 + 104);
  sub_1000F7B88("makeContext", 11, 2, *(v0 + 1608));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000E2170()
{
  v2 = *v1;
  *(*v1 + 1696) = v0;

  v3 = *(v2 + 1344);

  if (v0)
  {
    v4 = sub_1000E2794;
  }

  else
  {
    v4 = sub_1000E22D4;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1000E22D4()
{
  v1 = v0[70].__r_.__value_.__r.__words[2];
  sub_10008366C(LODWORD(v0[8].__r_.__value_.__l.__data_), v0[64].__r_.__value_.__r.__words[2]);
  if (!v1)
  {
    size = v0[64].__r_.__value_.__l.__size_;
    v3 = v0[63].__r_.__value_.__r.__words[2];
    v4 = v0[63].__r_.__value_.__l.__size_;
    dispatch thunk of QueryRequest.statementType.getter();
    v5 = static StatementType.== infix(_:_:)();
    v6 = *(v3 + 8);
    v0[71].__r_.__value_.__r.__words[0] = v6;
    v0[71].__r_.__value_.__l.__size_ = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v6(size, v4);
    v25 = v6;
    if (v5)
    {
      std::string::basic_string(v0 + 49, v0 + 44);
      sub_10002EFB0(&v0[49]);
      sub_10002EFC4(&v0[49]);
      v15 = static String._fromUTF8Repairing(_:)();
      v16 = v0[64].__r_.__value_.__l.__size_;
      data = v0[64].__r_.__value_.__l.__data_;
      v18 = v0[63].__r_.__value_.__r.__words[2];
      v19 = v0[63].__r_.__value_.__l.__size_;
      v20 = v0[56].__r_.__value_.__l.__data_;
      v0[71].__r_.__value_.__r.__words[2] = v21;
      v0[72].__r_.__value_.__r.__words[0] = v15;
      std::string::~string(v0 + 49);
      v0[72].__r_.__value_.__l.__size_ = OBJC_IVAR____TtC19amsondevicestoraged13ClientSession_credential;
      AccessCredential.storageCategory.getter();
      dispatch thunk of QueryRequest.statementType.getter();
      (*(v18 + 104))(v16, enum case for StatementType.select(_:), v19);
      v0[50].__r_.__value_.__s.__data_[9] = static StatementType.== infix(_:_:)() & 1;
      v25(v16, v19);
      v25(data, v19);
      v22 = sub_100026F50(&v20[OBJC_IVAR____TtC19amsondevicestoraged13ClientSession_dbManager], *&v20[OBJC_IVAR____TtC19amsondevicestoraged13ClientSession_dbManager + 24]);
      v23 = &v20[OBJC_IVAR____TtC19amsondevicestoraged13ClientSession_id];
      v0[72].__r_.__value_.__r.__words[2] = *&v20[OBJC_IVAR____TtC19amsondevicestoraged13ClientSession_id];
      v0[73].__r_.__value_.__r.__words[0] = *(v23 + 1);
      v24 = *v22;
      v0[73].__r_.__value_.__l.__size_ = *v22;

      return _swift_task_switch(sub_1000E292C, v24, 0);
    }

    v7 = v0[64].__r_.__value_.__r.__words[2];
    v8 = v0[63].__r_.__value_.__r.__words[2];
    v9 = v0[63].__r_.__value_.__l.__size_;
    v10 = type metadata accessor for DaemonError();
    sub_1000F820C(&qword_10016AB40, &type metadata accessor for DaemonError, &protocol conformance descriptor for DaemonError);
    swift_allocError();
    v12 = v11;
    sub_100026F94(&qword_10016D208, &qword_1001332B0);
    (*(v8 + 16))(v12, v7, v9);
    dispatch thunk of QueryRequest.statementType.getter();
    (*(*(v10 - 8) + 104))(v12, enum case for DaemonError.statementTypeMismatch(_:), v10);
    swift_willThrow();
    v25(v7, v9);
  }

  std::string::~string(v0 + 44);
  sub_100042AFC(&v0[4].__r_.__value_.__l.__size_);
  sub_10002AAE4(&v0[8].__r_.__value_.__l.__data_);
  sub_100026FDC(v0[26].__r_.__value_.__r.__words);
  sub_1000F7B88("makeContext", 11, 2, v0[67].__r_.__value_.__l.__data_);

  v13 = v0->__r_.__value_.__l.__size_;

  return v13();
}

uint64_t sub_1000E2794()
{
  std::string::~string(v0 + 44);
  sub_100042AFC(&v0[4].__r_.__value_.__l.__size_);
  sub_10002AAE4(&v0[8].__r_.__value_.__l.__data_);
  sub_100026FDC(v0[26].__r_.__value_.__r.__words);
  sub_1000F7B88("makeContext", 11, 2, v0[67].__r_.__value_.__l.__data_);

  size = v0->__r_.__value_.__l.__size_;

  return size();
}

uint64_t sub_1000E292C()
{
  v1 = *(v0 + 1209);
  v2 = *(v0 + 1728);
  v3 = *(v0 + 1720);
  v4 = *(v0 + 1488);
  v5 = *(v0 + 1480);
  (*(*(v0 + 1504) + 16))(&v4[v5[5]], *(v0 + 1512), *(v0 + 1496));
  v7 = *(v0 + 120);
  v6 = *(v0 + 128);
  *v4 = v2;
  *(v4 + 1) = v3;
  v8 = &v4[v5[6]];
  *v8 = v7;
  *(v8 + 1) = v6;
  v4[v5[7]] = v1;
  v4[v5[8]] = 0;

  v9 = swift_task_alloc();
  *(v0 + 1768) = v9;
  *v9 = v0;
  v9[1] = sub_1000E2A40;
  v10 = *(v0 + 1752);
  v11 = *(v0 + 1744);
  v12 = *(v0 + 1488);

  return sub_100050F58(v12, v11, v10);
}

uint64_t sub_1000E2A40(uint64_t a1)
{
  v3 = *v2;
  v3[222] = a1;
  v3[223] = v1;

  if (v1)
  {
    v4 = v3[220];
    sub_1000F65EC(v3[186], type metadata accessor for DatabaseConnectionManagerImplementation.ConnectionKey);
    v5 = sub_1000E33A0;
  }

  else
  {
    v4 = v3[168];
    sub_1000F65EC(v3[186], type metadata accessor for DatabaseConnectionManagerImplementation.ConnectionKey);
    v5 = sub_1000E2B98;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_1000E2B98()
{
  (*(*(v0 + 1504) + 8))(*(v0 + 1512), *(v0 + 1496));
  dispatch thunk of QueryRequest.query.getter();
  sub_100026F50((v0 + 864), *(v0 + 888));
  v1 = Expressible.isExpandable.getter();
  sub_100026FDC((v0 + 864));
  if (v1)
  {
    v2 = *(v0 + 1776);
    v3 = qword_10016A548;

    if (v3 != -1)
    {
      swift_once();
    }

    v4 = *(v0 + 1424);
    v5 = *(v0 + 1416);
    v6 = *(v0 + 1408);
    v7 = sub_10002FD14(v6, qword_1001736D0);
    (*(v5 + 16))(v4, v7, v6);
    static OSSignpostID.exclusive.getter();
    v8 = swift_slowAlloc();
    *v8 = 0;
    v9 = OSSignposter.logHandle.getter();
    LOBYTE(v6) = static os_signpost_type_t.begin.getter();
    v10 = OSSignpostID.rawValue.getter();
    v60 = v8;
    v61 = v9;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v9, v6, v10, "expandQuery", "", v8, 2u);
    dispatch thunk of QueryRequest.query.getter();
    sub_100026F50((v0 + 744), *(v0 + 768));
    LOBYTE(v4) = Expressible.isExpandable.getter();
    sub_100026FDC((v0 + 744));
    if (v4)
    {
      v58 = v2;
      v11 = *(v0 + 1736);
      v12 = *(v0 + 1400);
      v13 = *(v0 + 1384);
      v14 = *(v0 + 1376);
      v15 = *(v0 + 1344);
      dispatch thunk of QueryRequest.query.getter();
      sub_100026F50((v0 + 664), *(v0 + 688));
      (*(v13 + 16))(v12, v15 + v11, v14);
      sub_10002A9C4(v0 + 16, (v0 + 192));
      v52 = *(v0 + 1784);
      v16 = *(v0 + 1400);
      v17 = *(v0 + 1384);
      v18 = *(v0 + 1376);
      v19 = (*(v17 + 80) + 16) & ~*(v17 + 80);
      v20 = (*(v0 + 1392) + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
      v21 = swift_allocObject();
      (*(v17 + 32))(v21 + v19, v16, v18);
      *(v21 + v20) = v58;
      sub_10002ABE8(v21 + ((v20 + 15) & 0xFFFFFFFFFFFFFFF8), (v0 + 16));
      sub_10002AAE4((v0 + 16));

      Expressible.expanded(using:in:rawStatementHandler:)();
      if (v52)
      {
        v22 = *(v0 + 1704);
        v23 = *(v0 + 1584);
        v24 = *(v0 + 1568);
        v25 = *(v0 + 1552);
        v26 = *(v0 + 1520);
        v56 = *(v0 + 1424);
        v57 = *(v0 + 1616);
        v27 = *(v0 + 1416);
        v54 = *(v0 + 1408);

        sub_100026FDC((v0 + 664));

        v22(v25, v26);
        std::string::~string((v0 + 1056));
        sub_100042AFC(v0 + 104);
        v57(v23, v24);
        (*(v27 + 8))(v56, v54);
LABEL_12:
        sub_10002AAE4((v0 + 192));
        sub_100026FDC((v0 + 624));
        sub_1000F7B88("makeContext", 11, 2, *(v0 + 1608));

        v46 = *(v0 + 8);

        return v46();
      }

      sub_100026FDC((v0 + 664));
      dispatch thunk of QueryRequest.withQuery(_:)();
      sub_100026FDC((v0 + 704));
      v59 = 0;
    }

    else
    {
      (*(*(v0 + 1440) + 16))(*(v0 + 1456), *(v0 + 1328), *(v0 + 1432));
      v59 = *(v0 + 1784);
    }

    v28 = *(v0 + 1584);
    v53 = *(v0 + 1568);
    v55 = *(v0 + 1616);
    v29 = *(v0 + 1472);
    v30 = *(v0 + 1464);
    v31 = *(v0 + 1456);
    v32 = *(v0 + 1440);
    v33 = *(v0 + 1432);
    v51 = *(v0 + 1424);
    v34 = *(v0 + 1416);
    v50 = *(v0 + 1408);
    v35 = static os_signpost_type_t.end.getter();
    v36 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v61, v35, v36, "expandQuery", "", v60, 2u);

    v37 = *(v32 + 32);
    v37(v30, v31, v33);

    v37(v29, v30, v33);
    v55(v28, v53);
    (*(v34 + 8))(v51, v50);
    sub_100026F50((v0 + 624), *(v0 + 648));
    v38 = dispatch thunk of QueryRequest.statement.getter();
    sub_10007ACB8(v38, v39, v0 + 280);
    if (v59)
    {
      v40 = *(v0 + 1704);
      v41 = *(v0 + 1552);
      v42 = *(v0 + 1520);
      v43 = *(v0 + 1472);
      v44 = *(v0 + 1440);
      v45 = *(v0 + 1432);

      (*(v44 + 8))(v43, v45);
      v40(v41, v42);
      std::string::~string((v0 + 1056));
      sub_100042AFC(v0 + 104);
      goto LABEL_12;
    }

    sub_10002ABE8(v0 + 456, (v0 + 280));
    sub_10002AAE4((v0 + 280));
  }

  else
  {
    (*(*(v0 + 1440) + 16))(*(v0 + 1472), *(v0 + 1328), *(v0 + 1432));
    sub_10002A9C4(v0 + 456, (v0 + 192));
  }

  v48 = sub_100026F94(&qword_10016D210, &unk_1001332B8);
  v49 = swift_task_alloc();
  *(v0 + 1792) = v49;
  *v49 = v0;
  v49[1] = sub_1000E358C;

  return BaseObjectGraph.inject<A>(_:)(v0 + 824, v48, v48);
}

uint64_t sub_1000E33BC()
{
  data = v0[71].__r_.__value_.__l.__data_;
  v2 = v0[64].__r_.__value_.__r.__words[2];
  size = v0[63].__r_.__value_.__l.__size_;
  (*(v0[62].__r_.__value_.__r.__words[2] + 8))(v0[63].__r_.__value_.__r.__words[0], v0[62].__r_.__value_.__l.__size_);
  data(v2, size);
  std::string::~string(v0 + 44);
  sub_100042AFC(&v0[4].__r_.__value_.__l.__size_);
  sub_10002AAE4(&v0[8].__r_.__value_.__l.__data_);
  sub_100026FDC(v0[26].__r_.__value_.__r.__words);
  sub_1000F7B88("makeContext", 11, 2, v0[67].__r_.__value_.__l.__data_);

  v4 = v0->__r_.__value_.__l.__size_;

  return v4();
}

uint64_t sub_1000E358C()
{
  v2 = *v1;
  *(*v1 + 1800) = v0;

  v3 = *(v2 + 1344);
  if (v0)
  {
    v4 = sub_1000E38A4;
  }

  else
  {
    v4 = sub_1000E36B8;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1000E36B8()
{
  v1 = v0[217];
  v2 = v0[168];
  sub_100026F50(v0 + 103, v0[106]);
  v3 = swift_task_alloc();
  v0[226] = v3;
  *v3 = v0;
  v3[1] = sub_1000E3778;
  v4 = v0[222];

  return sub_100074494((v0 + 57), v2 + v1, (v0 + 13), v4);
}

uint64_t sub_1000E3778()
{
  v2 = *v1;
  *(*v1 + 1816) = v0;

  v3 = *(v2 + 1344);
  if (v0)
  {
    v4 = sub_1000E3E68;
  }

  else
  {
    v4 = sub_1000E3B8C;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1000E38A4()
{
  data = v0[75].__r_.__value_.__l.__data_;
  v0[76].__r_.__value_.__r.__words[0] = data;
  v0[51].__r_.__value_.__r.__words[2] = data;
  swift_errorRetain();
  sub_100026F94(&qword_10016ADB8, &qword_1001312C0);
  if (swift_dynamicCast())
  {
    sub_1000F62E0(v0[50].__r_.__value_.__l.__data_, v0[50].__r_.__value_.__s.__data_[8]);
    v2 = sub_100026F94(&qword_10016B008, &unk_100130F30);
    v3 = swift_task_alloc();
    v0[76].__r_.__value_.__l.__size_ = v3;
    *v3 = v0;
    v3[1] = sub_1000E4158;

    return BaseObjectGraph.inject<A>(_:)(&v0[32].__r_.__value_.__r.__words[2], v2, v2);
  }

  else
  {
    v4 = v0[71].__r_.__value_.__l.__data_;
    v5 = v0[64].__r_.__value_.__r.__words[2];
    size = v0[63].__r_.__value_.__l.__size_;
    v7 = v0[61].__r_.__value_.__l.__size_;
    v8 = v0[60].__r_.__value_.__l.__data_;
    v9 = v0[59].__r_.__value_.__r.__words[2];
    swift_willThrow();

    sub_10002AAE4(&v0[19].__r_.__value_.__l.__data_);
    (*(v8 + 1))(v7, v9);
    v4(v5, size);
    std::string::~string(v0 + 44);
    sub_100042AFC(&v0[4].__r_.__value_.__l.__size_);
    sub_10002AAE4(&v0[8].__r_.__value_.__l.__data_);
    sub_100026FDC(v0[26].__r_.__value_.__r.__words);
    sub_1000F7B88("makeContext", 11, 2, v0[67].__r_.__value_.__l.__data_);

    v10 = v0->__r_.__value_.__l.__size_;

    return v10();
  }
}

uint64_t sub_1000E3B8C()
{
  (*(*(v0 + 1440) + 16))(*(v0 + 1448), *(v0 + 1472), *(v0 + 1432));
  sub_10002A9C4(v0 + 368, (v0 + 456));
  std::string::basic_string((v0 + 1032), (v0 + 1056));
  v16 = *(v0 + 1776);
  v1 = *(v0 + 1704);
  v17 = *(v0 + 1608);
  v2 = *(v0 + 1552);
  v3 = *(v0 + 1520);
  v4 = *(v0 + 1472);
  v5 = *(v0 + 1448);
  v6 = *(v0 + 1440);
  v7 = *(v0 + 1432);
  v8 = *(v0 + 1320);
  sub_10002EFB0((v0 + 1032));
  sub_10002EFC4(v0 + 1032);
  v9 = static String._fromUTF8Repairing(_:)();
  v15 = v10;
  sub_10002AAE4((v0 + 456));
  (*(v6 + 8))(v4, v7);
  v1(v2, v3);
  std::string::~string((v0 + 1056));
  sub_100042AFC(v0 + 104);
  std::string::~string((v0 + 1032));
  sub_10002AAE4((v0 + 192));
  (*(v6 + 32))(v8, v5, v7);
  v11 = sub_100026F94(&qword_10016D240, &qword_100133328);
  sub_10002ABE8(v8 + v11[9], (v0 + 368));
  sub_10002AAE4((v0 + 368));
  v12 = (v8 + v11[10]);
  *v12 = v9;
  v12[1] = v15;
  *(v8 + v11[11]) = v16;
  sub_100026FDC((v0 + 824));
  sub_100026FDC((v0 + 624));
  sub_1000F7B88("makeContext", 11, 2, v17);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_1000E3E68()
{
  sub_100026FDC(&v0[34].__r_.__value_.__l.__size_);
  v1 = v0[75].__r_.__value_.__r.__words[2];
  v0[76].__r_.__value_.__r.__words[0] = v1;
  v0[51].__r_.__value_.__r.__words[2] = v1;
  swift_errorRetain();
  sub_100026F94(&qword_10016ADB8, &qword_1001312C0);
  if (swift_dynamicCast())
  {
    sub_1000F62E0(v0[50].__r_.__value_.__l.__data_, v0[50].__r_.__value_.__s.__data_[8]);
    v2 = sub_100026F94(&qword_10016B008, &unk_100130F30);
    v3 = swift_task_alloc();
    v0[76].__r_.__value_.__l.__size_ = v3;
    *v3 = v0;
    v3[1] = sub_1000E4158;

    return BaseObjectGraph.inject<A>(_:)(&v0[32].__r_.__value_.__r.__words[2], v2, v2);
  }

  else
  {
    data = v0[71].__r_.__value_.__l.__data_;
    v5 = v0[64].__r_.__value_.__r.__words[2];
    size = v0[63].__r_.__value_.__l.__size_;
    v7 = v0[61].__r_.__value_.__l.__size_;
    v8 = v0[60].__r_.__value_.__l.__data_;
    v9 = v0[59].__r_.__value_.__r.__words[2];
    swift_willThrow();

    sub_10002AAE4(&v0[19].__r_.__value_.__l.__data_);
    (*(v8 + 1))(v7, v9);
    data(v5, size);
    std::string::~string(v0 + 44);
    sub_100042AFC(&v0[4].__r_.__value_.__l.__size_);
    sub_10002AAE4(&v0[8].__r_.__value_.__l.__data_);
    sub_100026FDC(v0[26].__r_.__value_.__r.__words);
    sub_1000F7B88("makeContext", 11, 2, v0[67].__r_.__value_.__l.__data_);

    v10 = v0->__r_.__value_.__l.__size_;

    return v10();
  }
}

uint64_t sub_1000E4158()
{
  v2 = *v1;
  *(*v1 + 1840) = v0;

  v3 = *(v2 + 1344);
  if (v0)
  {
    v4 = sub_1000E44EC;
  }

  else
  {
    v4 = sub_1000E4284;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1000E4284()
{
  v1 = v0[171];
  v2 = v0[170];
  v3 = v0[169];
  sub_100026F50(v0 + 98, v0[101]);
  sub_1000F820C(&qword_10016D250, &type metadata accessor for ScalarValueRequest, &protocol conformance descriptor for ScalarValueRequest);
  dispatch thunk of RequestType.accessType.getter();
  v4 = RequestAccessType.isRead.getter();
  (*(v2 + 8))(v1, v3);
  v5 = swift_task_alloc();
  v0[231] = v5;
  *v5 = v0;
  v5[1] = sub_1000E43C0;
  if (v4)
  {
    v6 = 2;
  }

  else
  {
    v6 = 3;
  }

  return sub_100061DD0(v6);
}

uint64_t sub_1000E43C0()
{
  v2 = *v1;
  *(*v1 + 1856) = v0;

  v3 = *(v2 + 1344);
  if (v0)
  {
    v4 = sub_1000E48DC;
  }

  else
  {
    v4 = sub_1000E46E0;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1000E44EC()
{
  data = v0[71].__r_.__value_.__l.__data_;
  v2 = v0[64].__r_.__value_.__r.__words[2];
  size = v0[63].__r_.__value_.__l.__size_;
  v4 = v0[61].__r_.__value_.__l.__size_;
  v5 = v0[60].__r_.__value_.__l.__data_;
  v6 = v0[59].__r_.__value_.__r.__words[2];

  sub_10002AAE4(&v0[19].__r_.__value_.__l.__data_);
  (*(v5 + 1))(v4, v6);
  data(v2, size);
  std::string::~string(v0 + 44);
  sub_100042AFC(&v0[4].__r_.__value_.__l.__size_);
  sub_10002AAE4(&v0[8].__r_.__value_.__l.__data_);
  sub_100026FDC(v0[26].__r_.__value_.__r.__words);
  sub_1000F7B88("makeContext", 11, 2, v0[67].__r_.__value_.__l.__data_);

  v7 = v0->__r_.__value_.__l.__size_;

  return v7();
}

uint64_t sub_1000E46E0()
{
  sub_100026FDC(&v0[32].__r_.__value_.__r.__words[2]);
  data = v0[71].__r_.__value_.__l.__data_;
  v2 = v0[64].__r_.__value_.__r.__words[2];
  size = v0[63].__r_.__value_.__l.__size_;
  v4 = v0[61].__r_.__value_.__l.__size_;
  v5 = v0[60].__r_.__value_.__l.__data_;
  v6 = v0[59].__r_.__value_.__r.__words[2];
  swift_willThrow();

  sub_10002AAE4(&v0[19].__r_.__value_.__l.__data_);
  (*(v5 + 1))(v4, v6);
  data(v2, size);
  std::string::~string(v0 + 44);
  sub_100042AFC(&v0[4].__r_.__value_.__l.__size_);
  sub_10002AAE4(&v0[8].__r_.__value_.__l.__data_);
  sub_100026FDC(v0[26].__r_.__value_.__r.__words);
  sub_1000F7B88("makeContext", 11, 2, v0[67].__r_.__value_.__l.__data_);

  v7 = v0->__r_.__value_.__l.__size_;

  return v7();
}

uint64_t sub_1000E48DC()
{
  data = v0[71].__r_.__value_.__l.__data_;
  v2 = v0[64].__r_.__value_.__r.__words[2];
  size = v0[63].__r_.__value_.__l.__size_;
  v4 = v0[61].__r_.__value_.__l.__size_;
  v5 = v0[60].__r_.__value_.__l.__data_;
  v6 = v0[59].__r_.__value_.__r.__words[2];

  sub_10002AAE4(&v0[19].__r_.__value_.__l.__data_);
  (*(v5 + 1))(v4, v6);
  data(v2, size);
  std::string::~string(v0 + 44);
  sub_100042AFC(&v0[4].__r_.__value_.__l.__size_);
  sub_10002AAE4(&v0[8].__r_.__value_.__l.__data_);
  sub_100026FDC(&v0[32].__r_.__value_.__r.__words[2]);
  sub_100026FDC(v0[26].__r_.__value_.__r.__words);
  sub_1000F7B88("makeContext", 11, 2, v0[67].__r_.__value_.__l.__data_);

  v7 = v0->__r_.__value_.__l.__size_;

  return v7();
}

uint64_t sub_1000E4AD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[168] = v3;
  v4[167] = a3;
  v4[166] = a2;
  v4[165] = a1;
  v5 = type metadata accessor for RequestAccessType();
  v4[169] = v5;
  v4[170] = *(v5 - 8);
  v4[171] = swift_task_alloc();
  v6 = type metadata accessor for AccessCredential();
  v4[172] = v6;
  v7 = *(v6 - 8);
  v4[173] = v7;
  v4[174] = *(v7 + 64);
  v4[175] = swift_task_alloc();
  v8 = type metadata accessor for OSSignposter();
  v4[176] = v8;
  v4[177] = *(v8 - 8);
  v4[178] = swift_task_alloc();
  inserted = type metadata accessor for InsertRequest();
  v4[179] = inserted;
  v4[180] = *(inserted - 8);
  v4[181] = swift_task_alloc();
  v4[182] = swift_task_alloc();
  v4[183] = swift_task_alloc();
  v4[184] = swift_task_alloc();
  v4[185] = type metadata accessor for DatabaseConnectionManagerImplementation.ConnectionKey(0);
  v4[186] = swift_task_alloc();
  v10 = type metadata accessor for StorageCategory();
  v4[187] = v10;
  v4[188] = *(v10 - 8);
  v4[189] = swift_task_alloc();
  v11 = type metadata accessor for StatementType();
  v4[190] = v11;
  v4[191] = *(v11 - 8);
  v4[192] = swift_task_alloc();
  v4[193] = swift_task_alloc();
  v4[194] = swift_task_alloc();
  type metadata accessor for LogMessage.StringInterpolation();
  v4[195] = swift_task_alloc();
  v12 = type metadata accessor for OSSignpostID();
  v4[196] = v12;
  v4[197] = *(v12 - 8);
  v4[198] = swift_task_alloc();
  v4[199] = swift_task_alloc();
  v4[200] = swift_task_alloc();

  return _swift_task_switch(sub_1000E4E84, v3, 0);
}

uint64_t sub_1000E4E84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_10016A680 != -1)
  {
    swift_once();
  }

  sub_10002FD14(v3[176], qword_10016D0F0);
  static OSSignpostID.exclusive.getter();
  v4 = OSSignposter.logHandle.getter();
  v5 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    v7 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v4, v5, v7, "makeContext", "", v6, 2u);
  }

  v8 = v3[200];
  v9 = v3[199];
  v10 = v3[197];
  v11 = v3[196];

  (*(v10 + 16))(v9, v8, v11);
  type metadata accessor for OSSignpostIntervalState();
  swift_allocObject();
  v3[201] = OSSignpostIntervalState.init(id:isOpen:)();
  v12 = *(v10 + 8);
  v3[202] = v12;
  v3[203] = (v10 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v12(v8, v11);
  if (qword_10016A678 != -1)
  {
    swift_once();
  }

  v13 = v3[190];
  sub_100026F50(qword_10016D0C8, qword_10016D0E0);
  sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_10012FA10;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v14._object = 0x800000010013D2D0;
  v14._countAndFlagsBits = 0xD000000000000029;
  LogMessage.StringInterpolation.appendLiteral(_:)(v14);
  v3[116] = v13;
  sub_100042BAC(v3 + 113);
  v3[204] = sub_1000F820C(&qword_10016D268, &type metadata accessor for InsertRequest, &protocol conformance descriptor for InsertRequest);
  dispatch thunk of QueryRequest.statementType.getter();
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002BA6C((v3 + 113), &qword_10016AB10, &unk_100130B10);
  v15._countAndFlagsBits = 0;
  v15._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v15);
  LogMessage.init(stringInterpolation:)();
  Logger.info(_:)();

  v16 = swift_task_alloc();
  v3[205] = v16;
  *v16 = v3;
  v16[1] = sub_1000E526C;

  return BaseObjectGraph.inject<A>(_:)(v3 + 13, &type metadata for ClientInfo, &type metadata for ClientInfo);
}

uint64_t sub_1000E526C()
{
  v2 = *v1;
  v2[206] = v0;

  if (v0)
  {
    v3 = v2[168];

    return _swift_task_switch(sub_1000F8858, v3, 0);
  }

  else
  {
    v4 = sub_100026F94(&qword_10016D200, &qword_1001332A0);
    v5 = swift_task_alloc();
    v2[207] = v5;
    *v5 = v2;
    v5[1] = sub_1000E5410;

    return BaseObjectGraph.inject<A>(_:)(v2 + 78, v4, v4);
  }
}

uint64_t sub_1000E5410()
{
  v2 = *v1;
  *(*v1 + 1664) = v0;

  v3 = *(v2 + 1344);
  if (v0)
  {
    v4 = sub_1000F87DC;
  }

  else
  {
    v4 = sub_1000E553C;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1000E553C()
{
  v1 = *(v0 + 1664);
  sub_100026F50((v0 + 624), *(v0 + 648));
  v2 = dispatch thunk of QueryRequest.statement.getter();
  sub_10007ACB8(v2, v3, v0 + 192);
  if (v1)
  {
    sub_100042AFC(v0 + 104);

LABEL_24:
    sub_100026FDC((v0 + 624));
    sub_1000F7B88("makeContext", 11, 2, *(v0 + 1608));

    v43 = *(v0 + 8);

    return v43();
  }

  sub_10001DAD8(v0 + 192, (v0 + 960));
  v4 = sub_10002A1C8(v0 + 960);
  v5 = sub_10002A1D0(v0 + 960);
  *(v0 + 1296) = v4;
  *(v0 + 1288) = v5;
  v6 = sub_10002A30C((v0 + 1296), (v0 + 1288));
  sub_100078558((v0 + 960));
  if (v6 != 1)
  {
    goto LABEL_14;
  }

  sub_10001DAD8(v0 + 192, (v0 + 936));
  v7 = sub_10002A1C8(v0 + 936);
  v8 = sub_10002A1D0(v0 + 936);
  *(v0 + 1304) = v7;
  *(v0 + 1280) = v8;
  if (!sub_10002A30C((v0 + 1304), (v0 + 1280)))
  {
    sub_100078558((v0 + 936));
LABEL_14:
    v25 = type metadata accessor for DaemonError();
    sub_1000F820C(&qword_10016AB40, &type metadata accessor for DaemonError, &protocol conformance descriptor for DaemonError);
    swift_allocError();
    v27 = v26;
    sub_10001DAD8(v0 + 192, (v0 + 984));
    v28 = sub_10002A1C8(v0 + 984);
    v29 = sub_10002A1D0(v0 + 984);
    *(v0 + 1264) = v28;
    *(v0 + 1256) = v29;
    v30 = sub_10002A30C((v0 + 1264), (v0 + 1256));
    if (!v30)
    {
      sub_100078558((v0 + 984));
LABEL_23:
      *v27 = _swiftEmptyArrayStorage;
      (*(*(v25 - 8) + 104))(v27, enum case for DaemonError.multipleSchemas(_:), v25);
      swift_willThrow();
      sub_100042AFC(v0 + 104);
      sub_10002AAE4((v0 + 192));
      goto LABEL_24;
    }

    v31 = v30;
    v49 = v27;
    v50 = v25;
    result = sub_10007E9EC(0, v30 & ~(v30 >> 63), 0);
    if (v31 < 0)
    {
      goto LABEL_32;
    }

    v32 = 0;
    v52 = (v0 + 1216);
    while (1)
    {
      v33 = sub_10002A418((v0 + 984), v32);
      std::string::basic_string((v0 + 1104), v33);
      std::string::basic_string((v0 + 1128), (v0 + 1104));
      v34 = v31;
      sub_10002EFB0((v0 + 1128));
      sub_10002EFC4(v0 + 1128);
      v35 = static String._fromUTF8Repairing(_:)();
      v37 = v36;
      std::string::~string((v0 + 1104));
      std::string::~string((v0 + 1128));
      v39 = _swiftEmptyArrayStorage[2];
      v38 = _swiftEmptyArrayStorage[3];
      if (v39 >= v38 >> 1)
      {
        sub_10007E9EC((v38 > 1), v39 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v39 + 1;
      v40 = &_swiftEmptyArrayStorage[2 * v39];
      v40[4] = v35;
      v40[5] = v37;
      v41 = sub_10002A1C8(v0 + 984);
      v42 = sub_10002A1D0(v0 + 984);
      *v52 = v41;
      *(v0 + 1248) = v42;
      result = sub_10002A30C(v52, (v0 + 1248));
      if (v32 >= result)
      {
        break;
      }

      ++v32;
      v31 = v34;
      if (v34 == v32)
      {
        sub_100078558((v0 + 984));
        v25 = v50;
        v27 = v49;
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v9 = sub_10002A418((v0 + 936), 0);
  std::string::basic_string((v0 + 1056), v9);
  sub_100078558((v0 + 936));
  sub_10001DE24((v0 + 1008), v0 + 192);
  v10 = sub_10002A1C8(v0 + 1008);
  v11 = sub_10002A1D0(v0 + 1008);
  *(v0 + 1272) = v10;
  *(v0 + 1312) = v11;
  v12 = sub_10002A2EC((v0 + 1272), (v0 + 1312));
  if (v12)
  {
    v13 = v12;
    result = sub_10007E9EC(0, v12 & ~(v12 >> 63), 0);
    if (v13 < 0)
    {
LABEL_33:
      __break(1u);
      return result;
    }

    v15 = 0;
    v51 = v13;
    do
    {
      v16 = sub_10002C030((v0 + 1008), v15);
      sub_10002A33C((v0 + 544), v16);
      std::string::basic_string((v0 + 1080), (v0 + 568));
      sub_10002EFB0((v0 + 1080));
      sub_10002EFC4(v0 + 1080);
      v17 = static String._fromUTF8Repairing(_:)();
      v19 = v18;
      sub_10001B428(v0 + 544);
      std::string::~string((v0 + 1080));
      v21 = _swiftEmptyArrayStorage[2];
      v20 = _swiftEmptyArrayStorage[3];
      if (v21 >= v20 >> 1)
      {
        sub_10007E9EC((v20 > 1), v21 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v21 + 1;
      v22 = &_swiftEmptyArrayStorage[2 * v21];
      v22[4] = v17;
      v22[5] = v19;
      v23 = sub_10002A1C8(v0 + 1008);
      v24 = sub_10002A1D0(v0 + 1008);
      *(v0 + 1232) = v23;
      *(v0 + 1224) = v24;
      result = sub_10002A2EC((v0 + 1232), (v0 + 1224));
      if (v15 >= result)
      {
        goto LABEL_31;
      }
    }

    while (v51 != ++v15);
  }

  sub_10002A4B8((v0 + 1008));
  *(v0 + 1672) = _swiftEmptyArrayStorage;
  std::string::basic_string((v0 + 1152), (v0 + 1056));
  sub_10002EFB0((v0 + 1152));
  sub_10002EFC4(v0 + 1152);
  v44 = static String._fromUTF8Repairing(_:)();
  v46 = v45;
  *(v0 + 1680) = v45;
  std::string::~string((v0 + 1152));
  v47 = swift_task_alloc();
  *(v0 + 1688) = v47;
  *v47 = v0;
  v47[1] = sub_1000E5CBC;
  v48 = *(v0 + 1336);

  return sub_1000F14AC(_swiftEmptyArrayStorage, v44, v46, v0 + 104, v48);
}

uint64_t sub_1000E5CBC()
{
  v2 = *v1;
  *(*v1 + 1696) = v0;

  v3 = *(v2 + 1344);

  if (v0)
  {
    v4 = sub_1000F885C;
  }

  else
  {
    v4 = sub_1000E5E20;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1000E5E20()
{
  v1 = v0[70].__r_.__value_.__r.__words[2];
  sub_10008366C(LODWORD(v0[8].__r_.__value_.__l.__data_), v0[64].__r_.__value_.__r.__words[2]);
  if (!v1)
  {
    size = v0[64].__r_.__value_.__l.__size_;
    v3 = v0[63].__r_.__value_.__r.__words[2];
    v4 = v0[63].__r_.__value_.__l.__size_;
    dispatch thunk of QueryRequest.statementType.getter();
    v5 = static StatementType.== infix(_:_:)();
    v6 = *(v3 + 8);
    v0[71].__r_.__value_.__r.__words[0] = v6;
    v0[71].__r_.__value_.__l.__size_ = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v6(size, v4);
    v25 = v6;
    if (v5)
    {
      std::string::basic_string(v0 + 49, v0 + 44);
      sub_10002EFB0(&v0[49]);
      sub_10002EFC4(&v0[49]);
      v15 = static String._fromUTF8Repairing(_:)();
      v16 = v0[64].__r_.__value_.__l.__size_;
      data = v0[64].__r_.__value_.__l.__data_;
      v18 = v0[63].__r_.__value_.__r.__words[2];
      v19 = v0[63].__r_.__value_.__l.__size_;
      v20 = v0[56].__r_.__value_.__l.__data_;
      v0[71].__r_.__value_.__r.__words[2] = v21;
      v0[72].__r_.__value_.__r.__words[0] = v15;
      std::string::~string(v0 + 49);
      v0[72].__r_.__value_.__l.__size_ = OBJC_IVAR____TtC19amsondevicestoraged13ClientSession_credential;
      AccessCredential.storageCategory.getter();
      dispatch thunk of QueryRequest.statementType.getter();
      (*(v18 + 104))(v16, enum case for StatementType.select(_:), v19);
      v0[50].__r_.__value_.__s.__data_[9] = static StatementType.== infix(_:_:)() & 1;
      v25(v16, v19);
      v25(data, v19);
      v22 = sub_100026F50(&v20[OBJC_IVAR____TtC19amsondevicestoraged13ClientSession_dbManager], *&v20[OBJC_IVAR____TtC19amsondevicestoraged13ClientSession_dbManager + 24]);
      v23 = &v20[OBJC_IVAR____TtC19amsondevicestoraged13ClientSession_id];
      v0[72].__r_.__value_.__r.__words[2] = *&v20[OBJC_IVAR____TtC19amsondevicestoraged13ClientSession_id];
      v0[73].__r_.__value_.__r.__words[0] = *(v23 + 1);
      v24 = *v22;
      v0[73].__r_.__value_.__l.__size_ = *v22;

      return _swift_task_switch(sub_1000E62E0, v24, 0);
    }

    v7 = v0[64].__r_.__value_.__r.__words[2];
    v8 = v0[63].__r_.__value_.__r.__words[2];
    v9 = v0[63].__r_.__value_.__l.__size_;
    v10 = type metadata accessor for DaemonError();
    sub_1000F820C(&qword_10016AB40, &type metadata accessor for DaemonError, &protocol conformance descriptor for DaemonError);
    swift_allocError();
    v12 = v11;
    sub_100026F94(&qword_10016D208, &qword_1001332B0);
    (*(v8 + 16))(v12, v7, v9);
    dispatch thunk of QueryRequest.statementType.getter();
    (*(*(v10 - 8) + 104))(v12, enum case for DaemonError.statementTypeMismatch(_:), v10);
    swift_willThrow();
    v25(v7, v9);
  }

  std::string::~string(v0 + 44);
  sub_100042AFC(&v0[4].__r_.__value_.__l.__size_);
  sub_10002AAE4(&v0[8].__r_.__value_.__l.__data_);
  sub_100026FDC(v0[26].__r_.__value_.__r.__words);
  sub_1000F7B88("makeContext", 11, 2, v0[67].__r_.__value_.__l.__data_);

  v13 = v0->__r_.__value_.__l.__size_;

  return v13();
}

uint64_t sub_1000E62E0()
{
  v1 = *(v0 + 1209);
  v2 = *(v0 + 1728);
  v3 = *(v0 + 1720);
  v4 = *(v0 + 1488);
  v5 = *(v0 + 1480);
  (*(*(v0 + 1504) + 16))(&v4[v5[5]], *(v0 + 1512), *(v0 + 1496));
  v7 = *(v0 + 120);
  v6 = *(v0 + 128);
  *v4 = v2;
  *(v4 + 1) = v3;
  v8 = &v4[v5[6]];
  *v8 = v7;
  *(v8 + 1) = v6;
  v4[v5[7]] = v1;
  v4[v5[8]] = 0;

  v9 = swift_task_alloc();
  *(v0 + 1768) = v9;
  *v9 = v0;
  v9[1] = sub_1000E63F4;
  v10 = *(v0 + 1752);
  v11 = *(v0 + 1744);
  v12 = *(v0 + 1488);

  return sub_100050F58(v12, v11, v10);
}

uint64_t sub_1000E63F4(uint64_t a1)
{
  v3 = *v2;
  v3[222] = a1;
  v3[223] = v1;

  if (v1)
  {
    v4 = v3[220];
    sub_1000F65EC(v3[186], type metadata accessor for DatabaseConnectionManagerImplementation.ConnectionKey);
    v5 = sub_1000DCC68;
  }

  else
  {
    v4 = v3[168];
    sub_1000F65EC(v3[186], type metadata accessor for DatabaseConnectionManagerImplementation.ConnectionKey);
    v5 = sub_1000E654C;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_1000E654C()
{
  (*(*(v0 + 1504) + 8))(*(v0 + 1512), *(v0 + 1496));
  dispatch thunk of QueryRequest.query.getter();
  sub_100026F50((v0 + 864), *(v0 + 888));
  v1 = Expressible.isExpandable.getter();
  sub_100026FDC((v0 + 864));
  if (v1)
  {
    v2 = *(v0 + 1776);
    v3 = qword_10016A548;

    if (v3 != -1)
    {
      swift_once();
    }

    v4 = *(v0 + 1424);
    v5 = *(v0 + 1416);
    v6 = *(v0 + 1408);
    v7 = sub_10002FD14(v6, qword_1001736D0);
    (*(v5 + 16))(v4, v7, v6);
    static OSSignpostID.exclusive.getter();
    v8 = swift_slowAlloc();
    *v8 = 0;
    v9 = OSSignposter.logHandle.getter();
    LOBYTE(v6) = static os_signpost_type_t.begin.getter();
    v10 = OSSignpostID.rawValue.getter();
    v60 = v8;
    v61 = v9;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v9, v6, v10, "expandQuery", "", v8, 2u);
    dispatch thunk of QueryRequest.query.getter();
    sub_100026F50((v0 + 744), *(v0 + 768));
    LOBYTE(v4) = Expressible.isExpandable.getter();
    sub_100026FDC((v0 + 744));
    if (v4)
    {
      v58 = v2;
      v11 = *(v0 + 1736);
      v12 = *(v0 + 1400);
      v13 = *(v0 + 1384);
      v14 = *(v0 + 1376);
      v15 = *(v0 + 1344);
      dispatch thunk of QueryRequest.query.getter();
      sub_100026F50((v0 + 664), *(v0 + 688));
      (*(v13 + 16))(v12, v15 + v11, v14);
      sub_10002A9C4(v0 + 16, (v0 + 192));
      v52 = *(v0 + 1784);
      v16 = *(v0 + 1400);
      v17 = *(v0 + 1384);
      v18 = *(v0 + 1376);
      v19 = (*(v17 + 80) + 16) & ~*(v17 + 80);
      v20 = (*(v0 + 1392) + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
      v21 = swift_allocObject();
      (*(v17 + 32))(v21 + v19, v16, v18);
      *(v21 + v20) = v58;
      sub_10002ABE8(v21 + ((v20 + 15) & 0xFFFFFFFFFFFFFFF8), (v0 + 16));
      sub_10002AAE4((v0 + 16));

      Expressible.expanded(using:in:rawStatementHandler:)();
      if (v52)
      {
        v22 = *(v0 + 1704);
        v23 = *(v0 + 1584);
        v24 = *(v0 + 1568);
        v25 = *(v0 + 1552);
        v26 = *(v0 + 1520);
        v56 = *(v0 + 1424);
        v57 = *(v0 + 1616);
        v27 = *(v0 + 1416);
        v54 = *(v0 + 1408);

        sub_100026FDC((v0 + 664));

        v22(v25, v26);
        std::string::~string((v0 + 1056));
        sub_100042AFC(v0 + 104);
        v57(v23, v24);
        (*(v27 + 8))(v56, v54);
LABEL_12:
        sub_10002AAE4((v0 + 192));
        sub_100026FDC((v0 + 624));
        sub_1000F7B88("makeContext", 11, 2, *(v0 + 1608));

        v46 = *(v0 + 8);

        return v46();
      }

      sub_100026FDC((v0 + 664));
      dispatch thunk of QueryRequest.withQuery(_:)();
      sub_100026FDC((v0 + 704));
      v59 = 0;
    }

    else
    {
      (*(*(v0 + 1440) + 16))(*(v0 + 1456), *(v0 + 1328), *(v0 + 1432));
      v59 = *(v0 + 1784);
    }

    v28 = *(v0 + 1584);
    v53 = *(v0 + 1568);
    v55 = *(v0 + 1616);
    v29 = *(v0 + 1472);
    v30 = *(v0 + 1464);
    v31 = *(v0 + 1456);
    v32 = *(v0 + 1440);
    v33 = *(v0 + 1432);
    v51 = *(v0 + 1424);
    v34 = *(v0 + 1416);
    v50 = *(v0 + 1408);
    v35 = static os_signpost_type_t.end.getter();
    v36 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v61, v35, v36, "expandQuery", "", v60, 2u);

    v37 = *(v32 + 32);
    v37(v30, v31, v33);

    v37(v29, v30, v33);
    v55(v28, v53);
    (*(v34 + 8))(v51, v50);
    sub_100026F50((v0 + 624), *(v0 + 648));
    v38 = dispatch thunk of QueryRequest.statement.getter();
    sub_10007ACB8(v38, v39, v0 + 280);
    if (v59)
    {
      v40 = *(v0 + 1704);
      v41 = *(v0 + 1552);
      v42 = *(v0 + 1520);
      v43 = *(v0 + 1472);
      v44 = *(v0 + 1440);
      v45 = *(v0 + 1432);

      (*(v44 + 8))(v43, v45);
      v40(v41, v42);
      std::string::~string((v0 + 1056));
      sub_100042AFC(v0 + 104);
      goto LABEL_12;
    }

    sub_10002ABE8(v0 + 456, (v0 + 280));
    sub_10002AAE4((v0 + 280));
  }

  else
  {
    (*(*(v0 + 1440) + 16))(*(v0 + 1472), *(v0 + 1328), *(v0 + 1432));
    sub_10002A9C4(v0 + 456, (v0 + 192));
  }

  v48 = sub_100026F94(&qword_10016D210, &unk_1001332B8);
  v49 = swift_task_alloc();
  *(v0 + 1792) = v49;
  *v49 = v0;
  v49[1] = sub_1000E6D54;

  return BaseObjectGraph.inject<A>(_:)(v0 + 824, v48, v48);
}

uint64_t sub_1000E6D54()
{
  v2 = *v1;
  *(*v1 + 1800) = v0;

  v3 = *(v2 + 1344);
  if (v0)
  {
    v4 = sub_1000E706C;
  }

  else
  {
    v4 = sub_1000E6E80;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1000E6E80()
{
  v1 = v0[217];
  v2 = v0[168];
  sub_100026F50(v0 + 103, v0[106]);
  v3 = swift_task_alloc();
  v0[226] = v3;
  *v3 = v0;
  v3[1] = sub_1000E6F40;
  v4 = v0[222];

  return sub_100074494((v0 + 57), v2 + v1, (v0 + 13), v4);
}

uint64_t sub_1000E6F40()
{
  v2 = *v1;
  *(*v1 + 1816) = v0;

  v3 = *(v2 + 1344);
  if (v0)
  {
    v4 = sub_1000E7630;
  }

  else
  {
    v4 = sub_1000E7354;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1000E706C()
{
  data = v0[75].__r_.__value_.__l.__data_;
  v0[76].__r_.__value_.__r.__words[0] = data;
  v0[51].__r_.__value_.__r.__words[2] = data;
  swift_errorRetain();
  sub_100026F94(&qword_10016ADB8, &qword_1001312C0);
  if (swift_dynamicCast())
  {
    sub_1000F62E0(v0[50].__r_.__value_.__l.__data_, v0[50].__r_.__value_.__s.__data_[8]);
    v2 = sub_100026F94(&qword_10016B008, &unk_100130F30);
    v3 = swift_task_alloc();
    v0[76].__r_.__value_.__l.__size_ = v3;
    *v3 = v0;
    v3[1] = sub_1000E7920;

    return BaseObjectGraph.inject<A>(_:)(&v0[32].__r_.__value_.__r.__words[2], v2, v2);
  }

  else
  {
    v4 = v0[71].__r_.__value_.__l.__data_;
    v5 = v0[64].__r_.__value_.__r.__words[2];
    size = v0[63].__r_.__value_.__l.__size_;
    v7 = v0[61].__r_.__value_.__l.__size_;
    v8 = v0[60].__r_.__value_.__l.__data_;
    v9 = v0[59].__r_.__value_.__r.__words[2];
    swift_willThrow();

    sub_10002AAE4(&v0[19].__r_.__value_.__l.__data_);
    (*(v8 + 1))(v7, v9);
    v4(v5, size);
    std::string::~string(v0 + 44);
    sub_100042AFC(&v0[4].__r_.__value_.__l.__size_);
    sub_10002AAE4(&v0[8].__r_.__value_.__l.__data_);
    sub_100026FDC(v0[26].__r_.__value_.__r.__words);
    sub_1000F7B88("makeContext", 11, 2, v0[67].__r_.__value_.__l.__data_);

    v10 = v0->__r_.__value_.__l.__size_;

    return v10();
  }
}

uint64_t sub_1000E7354()
{
  (*(*(v0 + 1440) + 16))(*(v0 + 1448), *(v0 + 1472), *(v0 + 1432));
  sub_10002A9C4(v0 + 368, (v0 + 456));
  std::string::basic_string((v0 + 1032), (v0 + 1056));
  v16 = *(v0 + 1776);
  v1 = *(v0 + 1704);
  v17 = *(v0 + 1608);
  v2 = *(v0 + 1552);
  v3 = *(v0 + 1520);
  v4 = *(v0 + 1472);
  v5 = *(v0 + 1448);
  v6 = *(v0 + 1440);
  v7 = *(v0 + 1432);
  v8 = *(v0 + 1320);
  sub_10002EFB0((v0 + 1032));
  sub_10002EFC4(v0 + 1032);
  v9 = static String._fromUTF8Repairing(_:)();
  v15 = v10;
  sub_10002AAE4((v0 + 456));
  (*(v6 + 8))(v4, v7);
  v1(v2, v3);
  std::string::~string((v0 + 1056));
  sub_100042AFC(v0 + 104);
  std::string::~string((v0 + 1032));
  sub_10002AAE4((v0 + 192));
  (*(v6 + 32))(v8, v5, v7);
  v11 = sub_100026F94(&qword_10016D258, &qword_100133350);
  sub_10002ABE8(v8 + v11[9], (v0 + 368));
  sub_10002AAE4((v0 + 368));
  v12 = (v8 + v11[10]);
  *v12 = v9;
  v12[1] = v15;
  *(v8 + v11[11]) = v16;
  sub_100026FDC((v0 + 824));
  sub_100026FDC((v0 + 624));
  sub_1000F7B88("makeContext", 11, 2, v17);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_1000E7630()
{
  sub_100026FDC(&v0[34].__r_.__value_.__l.__size_);
  v1 = v0[75].__r_.__value_.__r.__words[2];
  v0[76].__r_.__value_.__r.__words[0] = v1;
  v0[51].__r_.__value_.__r.__words[2] = v1;
  swift_errorRetain();
  sub_100026F94(&qword_10016ADB8, &qword_1001312C0);
  if (swift_dynamicCast())
  {
    sub_1000F62E0(v0[50].__r_.__value_.__l.__data_, v0[50].__r_.__value_.__s.__data_[8]);
    v2 = sub_100026F94(&qword_10016B008, &unk_100130F30);
    v3 = swift_task_alloc();
    v0[76].__r_.__value_.__l.__size_ = v3;
    *v3 = v0;
    v3[1] = sub_1000E7920;

    return BaseObjectGraph.inject<A>(_:)(&v0[32].__r_.__value_.__r.__words[2], v2, v2);
  }

  else
  {
    data = v0[71].__r_.__value_.__l.__data_;
    v5 = v0[64].__r_.__value_.__r.__words[2];
    size = v0[63].__r_.__value_.__l.__size_;
    v7 = v0[61].__r_.__value_.__l.__size_;
    v8 = v0[60].__r_.__value_.__l.__data_;
    v9 = v0[59].__r_.__value_.__r.__words[2];
    swift_willThrow();

    sub_10002AAE4(&v0[19].__r_.__value_.__l.__data_);
    (*(v8 + 1))(v7, v9);
    data(v5, size);
    std::string::~string(v0 + 44);
    sub_100042AFC(&v0[4].__r_.__value_.__l.__size_);
    sub_10002AAE4(&v0[8].__r_.__value_.__l.__data_);
    sub_100026FDC(v0[26].__r_.__value_.__r.__words);
    sub_1000F7B88("makeContext", 11, 2, v0[67].__r_.__value_.__l.__data_);

    v10 = v0->__r_.__value_.__l.__size_;

    return v10();
  }
}

uint64_t sub_1000E7920()
{
  v2 = *v1;
  *(*v1 + 1840) = v0;

  v3 = *(v2 + 1344);
  if (v0)
  {
    v4 = sub_1000F87F8;
  }

  else
  {
    v4 = sub_1000E7A4C;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1000E7A4C()
{
  v1 = v0[171];
  v2 = v0[170];
  v3 = v0[169];
  sub_100026F50(v0 + 98, v0[101]);
  sub_1000F820C(&qword_10016D290, &type metadata accessor for InsertRequest, &protocol conformance descriptor for InsertRequest);
  dispatch thunk of RequestType.accessType.getter();
  v4 = RequestAccessType.isRead.getter();
  (*(v2 + 8))(v1, v3);
  v5 = swift_task_alloc();
  v0[231] = v5;
  *v5 = v0;
  v5[1] = sub_1000DDAB8;
  if (v4)
  {
    v6 = 2;
  }

  else
  {
    v6 = 3;
  }

  return sub_100061DD0(v6);
}

uint64_t sub_1000E7B88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[168] = v3;
  v4[167] = a3;
  v4[166] = a2;
  v4[165] = a1;
  v5 = type metadata accessor for RequestAccessType();
  v4[169] = v5;
  v4[170] = *(v5 - 8);
  v4[171] = swift_task_alloc();
  v6 = type metadata accessor for AccessCredential();
  v4[172] = v6;
  v7 = *(v6 - 8);
  v4[173] = v7;
  v4[174] = *(v7 + 64);
  v4[175] = swift_task_alloc();
  v8 = type metadata accessor for OSSignposter();
  v4[176] = v8;
  v4[177] = *(v8 - 8);
  v4[178] = swift_task_alloc();
  updated = type metadata accessor for UpdateRequest();
  v4[179] = updated;
  v4[180] = *(updated - 8);
  v4[181] = swift_task_alloc();
  v4[182] = swift_task_alloc();
  v4[183] = swift_task_alloc();
  v4[184] = swift_task_alloc();
  v4[185] = type metadata accessor for DatabaseConnectionManagerImplementation.ConnectionKey(0);
  v4[186] = swift_task_alloc();
  v10 = type metadata accessor for StorageCategory();
  v4[187] = v10;
  v4[188] = *(v10 - 8);
  v4[189] = swift_task_alloc();
  v11 = type metadata accessor for StatementType();
  v4[190] = v11;
  v4[191] = *(v11 - 8);
  v4[192] = swift_task_alloc();
  v4[193] = swift_task_alloc();
  v4[194] = swift_task_alloc();
  type metadata accessor for LogMessage.StringInterpolation();
  v4[195] = swift_task_alloc();
  v12 = type metadata accessor for OSSignpostID();
  v4[196] = v12;
  v4[197] = *(v12 - 8);
  v4[198] = swift_task_alloc();
  v4[199] = swift_task_alloc();
  v4[200] = swift_task_alloc();

  return _swift_task_switch(sub_1000E7F34, v3, 0);
}

uint64_t sub_1000E7F34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_10016A680 != -1)
  {
    swift_once();
  }

  sub_10002FD14(v3[176], qword_10016D0F0);
  static OSSignpostID.exclusive.getter();
  v4 = OSSignposter.logHandle.getter();
  v5 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    v7 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v4, v5, v7, "makeContext", "", v6, 2u);
  }

  v8 = v3[200];
  v9 = v3[199];
  v10 = v3[197];
  v11 = v3[196];

  (*(v10 + 16))(v9, v8, v11);
  type metadata accessor for OSSignpostIntervalState();
  swift_allocObject();
  v3[201] = OSSignpostIntervalState.init(id:isOpen:)();
  v12 = *(v10 + 8);
  v3[202] = v12;
  v3[203] = (v10 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v12(v8, v11);
  if (qword_10016A678 != -1)
  {
    swift_once();
  }

  v13 = v3[190];
  sub_100026F50(qword_10016D0C8, qword_10016D0E0);
  sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_10012FA10;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v14._object = 0x800000010013D2D0;
  v14._countAndFlagsBits = 0xD000000000000029;
  LogMessage.StringInterpolation.appendLiteral(_:)(v14);
  v3[116] = v13;
  sub_100042BAC(v3 + 113);
  v3[204] = sub_1000F820C(&qword_10016D2A0, &type metadata accessor for UpdateRequest, &protocol conformance descriptor for UpdateRequest);
  dispatch thunk of QueryRequest.statementType.getter();
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002BA6C((v3 + 113), &qword_10016AB10, &unk_100130B10);
  v15._countAndFlagsBits = 0;
  v15._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v15);
  LogMessage.init(stringInterpolation:)();
  Logger.info(_:)();

  v16 = swift_task_alloc();
  v3[205] = v16;
  *v16 = v3;
  v16[1] = sub_1000E831C;

  return BaseObjectGraph.inject<A>(_:)(v3 + 13, &type metadata for ClientInfo, &type metadata for ClientInfo);
}

uint64_t sub_1000E831C()
{
  v2 = *v1;
  v2[206] = v0;

  if (v0)
  {
    v3 = v2[168];

    return _swift_task_switch(sub_1000F8858, v3, 0);
  }

  else
  {
    v4 = sub_100026F94(&qword_10016D200, &qword_1001332A0);
    v5 = swift_task_alloc();
    v2[207] = v5;
    *v5 = v2;
    v5[1] = sub_1000E84C0;

    return BaseObjectGraph.inject<A>(_:)(v2 + 78, v4, v4);
  }
}

uint64_t sub_1000E84C0()
{
  v2 = *v1;
  *(*v1 + 1664) = v0;

  v3 = *(v2 + 1344);
  if (v0)
  {
    v4 = sub_1000F87DC;
  }

  else
  {
    v4 = sub_1000E85EC;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1000E85EC()
{
  v1 = *(v0 + 1664);
  sub_100026F50((v0 + 624), *(v0 + 648));
  v2 = dispatch thunk of QueryRequest.statement.getter();
  sub_10007ACB8(v2, v3, v0 + 192);
  if (v1)
  {
    sub_100042AFC(v0 + 104);

LABEL_24:
    sub_100026FDC((v0 + 624));
    sub_1000F7B88("makeContext", 11, 2, *(v0 + 1608));

    v43 = *(v0 + 8);

    return v43();
  }

  sub_10001DAD8(v0 + 192, (v0 + 960));
  v4 = sub_10002A1C8(v0 + 960);
  v5 = sub_10002A1D0(v0 + 960);
  *(v0 + 1296) = v4;
  *(v0 + 1288) = v5;
  v6 = sub_10002A30C((v0 + 1296), (v0 + 1288));
  sub_100078558((v0 + 960));
  if (v6 != 1)
  {
    goto LABEL_14;
  }

  sub_10001DAD8(v0 + 192, (v0 + 936));
  v7 = sub_10002A1C8(v0 + 936);
  v8 = sub_10002A1D0(v0 + 936);
  *(v0 + 1304) = v7;
  *(v0 + 1280) = v8;
  if (!sub_10002A30C((v0 + 1304), (v0 + 1280)))
  {
    sub_100078558((v0 + 936));
LABEL_14:
    v25 = type metadata accessor for DaemonError();
    sub_1000F820C(&qword_10016AB40, &type metadata accessor for DaemonError, &protocol conformance descriptor for DaemonError);
    swift_allocError();
    v27 = v26;
    sub_10001DAD8(v0 + 192, (v0 + 984));
    v28 = sub_10002A1C8(v0 + 984);
    v29 = sub_10002A1D0(v0 + 984);
    *(v0 + 1264) = v28;
    *(v0 + 1256) = v29;
    v30 = sub_10002A30C((v0 + 1264), (v0 + 1256));
    if (!v30)
    {
      sub_100078558((v0 + 984));
LABEL_23:
      *v27 = _swiftEmptyArrayStorage;
      (*(*(v25 - 8) + 104))(v27, enum case for DaemonError.multipleSchemas(_:), v25);
      swift_willThrow();
      sub_100042AFC(v0 + 104);
      sub_10002AAE4((v0 + 192));
      goto LABEL_24;
    }

    v31 = v30;
    v49 = v27;
    v50 = v25;
    result = sub_10007E9EC(0, v30 & ~(v30 >> 63), 0);
    if (v31 < 0)
    {
      goto LABEL_32;
    }

    v32 = 0;
    v52 = (v0 + 1216);
    while (1)
    {
      v33 = sub_10002A418((v0 + 984), v32);
      std::string::basic_string((v0 + 1104), v33);
      std::string::basic_string((v0 + 1128), (v0 + 1104));
      v34 = v31;
      sub_10002EFB0((v0 + 1128));
      sub_10002EFC4(v0 + 1128);
      v35 = static String._fromUTF8Repairing(_:)();
      v37 = v36;
      std::string::~string((v0 + 1104));
      std::string::~string((v0 + 1128));
      v39 = _swiftEmptyArrayStorage[2];
      v38 = _swiftEmptyArrayStorage[3];
      if (v39 >= v38 >> 1)
      {
        sub_10007E9EC((v38 > 1), v39 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v39 + 1;
      v40 = &_swiftEmptyArrayStorage[2 * v39];
      v40[4] = v35;
      v40[5] = v37;
      v41 = sub_10002A1C8(v0 + 984);
      v42 = sub_10002A1D0(v0 + 984);
      *v52 = v41;
      *(v0 + 1248) = v42;
      result = sub_10002A30C(v52, (v0 + 1248));
      if (v32 >= result)
      {
        break;
      }

      ++v32;
      v31 = v34;
      if (v34 == v32)
      {
        sub_100078558((v0 + 984));
        v25 = v50;
        v27 = v49;
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v9 = sub_10002A418((v0 + 936), 0);
  std::string::basic_string((v0 + 1056), v9);
  sub_100078558((v0 + 936));
  sub_10001DE24((v0 + 1008), v0 + 192);
  v10 = sub_10002A1C8(v0 + 1008);
  v11 = sub_10002A1D0(v0 + 1008);
  *(v0 + 1272) = v10;
  *(v0 + 1312) = v11;
  v12 = sub_10002A2EC((v0 + 1272), (v0 + 1312));
  if (v12)
  {
    v13 = v12;
    result = sub_10007E9EC(0, v12 & ~(v12 >> 63), 0);
    if (v13 < 0)
    {
LABEL_33:
      __break(1u);
      return result;
    }

    v15 = 0;
    v51 = v13;
    do
    {
      v16 = sub_10002C030((v0 + 1008), v15);
      sub_10002A33C((v0 + 544), v16);
      std::string::basic_string((v0 + 1080), (v0 + 568));
      sub_10002EFB0((v0 + 1080));
      sub_10002EFC4(v0 + 1080);
      v17 = static String._fromUTF8Repairing(_:)();
      v19 = v18;
      sub_10001B428(v0 + 544);
      std::string::~string((v0 + 1080));
      v21 = _swiftEmptyArrayStorage[2];
      v20 = _swiftEmptyArrayStorage[3];
      if (v21 >= v20 >> 1)
      {
        sub_10007E9EC((v20 > 1), v21 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v21 + 1;
      v22 = &_swiftEmptyArrayStorage[2 * v21];
      v22[4] = v17;
      v22[5] = v19;
      v23 = sub_10002A1C8(v0 + 1008);
      v24 = sub_10002A1D0(v0 + 1008);
      *(v0 + 1232) = v23;
      *(v0 + 1224) = v24;
      result = sub_10002A2EC((v0 + 1232), (v0 + 1224));
      if (v15 >= result)
      {
        goto LABEL_31;
      }
    }

    while (v51 != ++v15);
  }

  sub_10002A4B8((v0 + 1008));
  *(v0 + 1672) = _swiftEmptyArrayStorage;
  std::string::basic_string((v0 + 1152), (v0 + 1056));
  sub_10002EFB0((v0 + 1152));
  sub_10002EFC4(v0 + 1152);
  v44 = static String._fromUTF8Repairing(_:)();
  v46 = v45;
  *(v0 + 1680) = v45;
  std::string::~string((v0 + 1152));
  v47 = swift_task_alloc();
  *(v0 + 1688) = v47;
  *v47 = v0;
  v47[1] = sub_1000E8D6C;
  v48 = *(v0 + 1336);

  return sub_1000F14AC(_swiftEmptyArrayStorage, v44, v46, v0 + 104, v48);
}

uint64_t sub_1000E8D6C()
{
  v2 = *v1;
  *(*v1 + 1696) = v0;

  v3 = *(v2 + 1344);

  if (v0)
  {
    v4 = sub_1000F885C;
  }

  else
  {
    v4 = sub_1000E8ED0;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1000E8ED0()
{
  v1 = v0[70].__r_.__value_.__r.__words[2];
  sub_10008366C(LODWORD(v0[8].__r_.__value_.__l.__data_), v0[64].__r_.__value_.__r.__words[2]);
  if (!v1)
  {
    size = v0[64].__r_.__value_.__l.__size_;
    v3 = v0[63].__r_.__value_.__r.__words[2];
    v4 = v0[63].__r_.__value_.__l.__size_;
    dispatch thunk of QueryRequest.statementType.getter();
    v5 = static StatementType.== infix(_:_:)();
    v6 = *(v3 + 8);
    v0[71].__r_.__value_.__r.__words[0] = v6;
    v0[71].__r_.__value_.__l.__size_ = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v6(size, v4);
    v25 = v6;
    if (v5)
    {
      std::string::basic_string(v0 + 49, v0 + 44);
      sub_10002EFB0(&v0[49]);
      sub_10002EFC4(&v0[49]);
      v15 = static String._fromUTF8Repairing(_:)();
      v16 = v0[64].__r_.__value_.__l.__size_;
      data = v0[64].__r_.__value_.__l.__data_;
      v18 = v0[63].__r_.__value_.__r.__words[2];
      v19 = v0[63].__r_.__value_.__l.__size_;
      v20 = v0[56].__r_.__value_.__l.__data_;
      v0[71].__r_.__value_.__r.__words[2] = v21;
      v0[72].__r_.__value_.__r.__words[0] = v15;
      std::string::~string(v0 + 49);
      v0[72].__r_.__value_.__l.__size_ = OBJC_IVAR____TtC19amsondevicestoraged13ClientSession_credential;
      AccessCredential.storageCategory.getter();
      dispatch thunk of QueryRequest.statementType.getter();
      (*(v18 + 104))(v16, enum case for StatementType.select(_:), v19);
      v0[50].__r_.__value_.__s.__data_[9] = static StatementType.== infix(_:_:)() & 1;
      v25(v16, v19);
      v25(data, v19);
      v22 = sub_100026F50(&v20[OBJC_IVAR____TtC19amsondevicestoraged13ClientSession_dbManager], *&v20[OBJC_IVAR____TtC19amsondevicestoraged13ClientSession_dbManager + 24]);
      v23 = &v20[OBJC_IVAR____TtC19amsondevicestoraged13ClientSession_id];
      v0[72].__r_.__value_.__r.__words[2] = *&v20[OBJC_IVAR____TtC19amsondevicestoraged13ClientSession_id];
      v0[73].__r_.__value_.__r.__words[0] = *(v23 + 1);
      v24 = *v22;
      v0[73].__r_.__value_.__l.__size_ = *v22;

      return _swift_task_switch(sub_1000E9390, v24, 0);
    }

    v7 = v0[64].__r_.__value_.__r.__words[2];
    v8 = v0[63].__r_.__value_.__r.__words[2];
    v9 = v0[63].__r_.__value_.__l.__size_;
    v10 = type metadata accessor for DaemonError();
    sub_1000F820C(&qword_10016AB40, &type metadata accessor for DaemonError, &protocol conformance descriptor for DaemonError);
    swift_allocError();
    v12 = v11;
    sub_100026F94(&qword_10016D208, &qword_1001332B0);
    (*(v8 + 16))(v12, v7, v9);
    dispatch thunk of QueryRequest.statementType.getter();
    (*(*(v10 - 8) + 104))(v12, enum case for DaemonError.statementTypeMismatch(_:), v10);
    swift_willThrow();
    v25(v7, v9);
  }

  std::string::~string(v0 + 44);
  sub_100042AFC(&v0[4].__r_.__value_.__l.__size_);
  sub_10002AAE4(&v0[8].__r_.__value_.__l.__data_);
  sub_100026FDC(v0[26].__r_.__value_.__r.__words);
  sub_1000F7B88("makeContext", 11, 2, v0[67].__r_.__value_.__l.__data_);

  v13 = v0->__r_.__value_.__l.__size_;

  return v13();
}

uint64_t sub_1000E9390()
{
  v1 = *(v0 + 1209);
  v2 = *(v0 + 1728);
  v3 = *(v0 + 1720);
  v4 = *(v0 + 1488);
  v5 = *(v0 + 1480);
  (*(*(v0 + 1504) + 16))(&v4[v5[5]], *(v0 + 1512), *(v0 + 1496));
  v7 = *(v0 + 120);
  v6 = *(v0 + 128);
  *v4 = v2;
  *(v4 + 1) = v3;
  v8 = &v4[v5[6]];
  *v8 = v7;
  *(v8 + 1) = v6;
  v4[v5[7]] = v1;
  v4[v5[8]] = 0;

  v9 = swift_task_alloc();
  *(v0 + 1768) = v9;
  *v9 = v0;
  v9[1] = sub_1000E94A4;
  v10 = *(v0 + 1752);
  v11 = *(v0 + 1744);
  v12 = *(v0 + 1488);

  return sub_100050F58(v12, v11, v10);
}

uint64_t sub_1000E94A4(uint64_t a1)
{
  v3 = *v2;
  v3[222] = a1;
  v3[223] = v1;

  if (v1)
  {
    v4 = v3[220];
    sub_1000F65EC(v3[186], type metadata accessor for DatabaseConnectionManagerImplementation.ConnectionKey);
    v5 = sub_1000DCC68;
  }

  else
  {
    v4 = v3[168];
    sub_1000F65EC(v3[186], type metadata accessor for DatabaseConnectionManagerImplementation.ConnectionKey);
    v5 = sub_1000E95FC;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_1000E95FC()
{
  (*(*(v0 + 1504) + 8))(*(v0 + 1512), *(v0 + 1496));
  dispatch thunk of QueryRequest.query.getter();
  sub_100026F50((v0 + 864), *(v0 + 888));
  v1 = Expressible.isExpandable.getter();
  sub_100026FDC((v0 + 864));
  if (v1)
  {
    v2 = *(v0 + 1776);
    v3 = qword_10016A548;

    if (v3 != -1)
    {
      swift_once();
    }

    v4 = *(v0 + 1424);
    v5 = *(v0 + 1416);
    v6 = *(v0 + 1408);
    v7 = sub_10002FD14(v6, qword_1001736D0);
    (*(v5 + 16))(v4, v7, v6);
    static OSSignpostID.exclusive.getter();
    v8 = swift_slowAlloc();
    *v8 = 0;
    v9 = OSSignposter.logHandle.getter();
    LOBYTE(v6) = static os_signpost_type_t.begin.getter();
    v10 = OSSignpostID.rawValue.getter();
    v60 = v8;
    v61 = v9;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v9, v6, v10, "expandQuery", "", v8, 2u);
    dispatch thunk of QueryRequest.query.getter();
    sub_100026F50((v0 + 744), *(v0 + 768));
    LOBYTE(v4) = Expressible.isExpandable.getter();
    sub_100026FDC((v0 + 744));
    if (v4)
    {
      v58 = v2;
      v11 = *(v0 + 1736);
      v12 = *(v0 + 1400);
      v13 = *(v0 + 1384);
      v14 = *(v0 + 1376);
      v15 = *(v0 + 1344);
      dispatch thunk of QueryRequest.query.getter();
      sub_100026F50((v0 + 664), *(v0 + 688));
      (*(v13 + 16))(v12, v15 + v11, v14);
      sub_10002A9C4(v0 + 16, (v0 + 192));
      v52 = *(v0 + 1784);
      v16 = *(v0 + 1400);
      v17 = *(v0 + 1384);
      v18 = *(v0 + 1376);
      v19 = (*(v17 + 80) + 16) & ~*(v17 + 80);
      v20 = (*(v0 + 1392) + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
      v21 = swift_allocObject();
      (*(v17 + 32))(v21 + v19, v16, v18);
      *(v21 + v20) = v58;
      sub_10002ABE8(v21 + ((v20 + 15) & 0xFFFFFFFFFFFFFFF8), (v0 + 16));
      sub_10002AAE4((v0 + 16));

      Expressible.expanded(using:in:rawStatementHandler:)();
      if (v52)
      {
        v22 = *(v0 + 1704);
        v23 = *(v0 + 1584);
        v24 = *(v0 + 1568);
        v25 = *(v0 + 1552);
        v26 = *(v0 + 1520);
        v56 = *(v0 + 1424);
        v57 = *(v0 + 1616);
        v27 = *(v0 + 1416);
        v54 = *(v0 + 1408);

        sub_100026FDC((v0 + 664));

        v22(v25, v26);
        std::string::~string((v0 + 1056));
        sub_100042AFC(v0 + 104);
        v57(v23, v24);
        (*(v27 + 8))(v56, v54);
LABEL_12:
        sub_10002AAE4((v0 + 192));
        sub_100026FDC((v0 + 624));
        sub_1000F7B88("makeContext", 11, 2, *(v0 + 1608));

        v46 = *(v0 + 8);

        return v46();
      }

      sub_100026FDC((v0 + 664));
      dispatch thunk of QueryRequest.withQuery(_:)();
      sub_100026FDC((v0 + 704));
      v59 = 0;
    }

    else
    {
      (*(*(v0 + 1440) + 16))(*(v0 + 1456), *(v0 + 1328), *(v0 + 1432));
      v59 = *(v0 + 1784);
    }

    v28 = *(v0 + 1584);
    v53 = *(v0 + 1568);
    v55 = *(v0 + 1616);
    v29 = *(v0 + 1472);
    v30 = *(v0 + 1464);
    v31 = *(v0 + 1456);
    v32 = *(v0 + 1440);
    v33 = *(v0 + 1432);
    v51 = *(v0 + 1424);
    v34 = *(v0 + 1416);
    v50 = *(v0 + 1408);
    v35 = static os_signpost_type_t.end.getter();
    v36 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v61, v35, v36, "expandQuery", "", v60, 2u);

    v37 = *(v32 + 32);
    v37(v30, v31, v33);

    v37(v29, v30, v33);
    v55(v28, v53);
    (*(v34 + 8))(v51, v50);
    sub_100026F50((v0 + 624), *(v0 + 648));
    v38 = dispatch thunk of QueryRequest.statement.getter();
    sub_10007ACB8(v38, v39, v0 + 280);
    if (v59)
    {
      v40 = *(v0 + 1704);
      v41 = *(v0 + 1552);
      v42 = *(v0 + 1520);
      v43 = *(v0 + 1472);
      v44 = *(v0 + 1440);
      v45 = *(v0 + 1432);

      (*(v44 + 8))(v43, v45);
      v40(v41, v42);
      std::string::~string((v0 + 1056));
      sub_100042AFC(v0 + 104);
      goto LABEL_12;
    }

    sub_10002ABE8(v0 + 456, (v0 + 280));
    sub_10002AAE4((v0 + 280));
  }

  else
  {
    (*(*(v0 + 1440) + 16))(*(v0 + 1472), *(v0 + 1328), *(v0 + 1432));
    sub_10002A9C4(v0 + 456, (v0 + 192));
  }

  v48 = sub_100026F94(&qword_10016D210, &unk_1001332B8);
  v49 = swift_task_alloc();
  *(v0 + 1792) = v49;
  *v49 = v0;
  v49[1] = sub_1000E9E04;

  return BaseObjectGraph.inject<A>(_:)(v0 + 824, v48, v48);
}

uint64_t sub_1000E9E04()
{
  v2 = *v1;
  *(*v1 + 1800) = v0;

  v3 = *(v2 + 1344);
  if (v0)
  {
    v4 = sub_1000EA11C;
  }

  else
  {
    v4 = sub_1000E9F30;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1000E9F30()
{
  v1 = v0[217];
  v2 = v0[168];
  sub_100026F50(v0 + 103, v0[106]);
  v3 = swift_task_alloc();
  v0[226] = v3;
  *v3 = v0;
  v3[1] = sub_1000E9FF0;
  v4 = v0[222];

  return sub_100074494((v0 + 57), v2 + v1, (v0 + 13), v4);
}

uint64_t sub_1000E9FF0()
{
  v2 = *v1;
  *(*v1 + 1816) = v0;

  v3 = *(v2 + 1344);
  if (v0)
  {
    v4 = sub_1000EA6E0;
  }

  else
  {
    v4 = sub_1000EA404;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1000EA11C()
{
  data = v0[75].__r_.__value_.__l.__data_;
  v0[76].__r_.__value_.__r.__words[0] = data;
  v0[51].__r_.__value_.__r.__words[2] = data;
  swift_errorRetain();
  sub_100026F94(&qword_10016ADB8, &qword_1001312C0);
  if (swift_dynamicCast())
  {
    sub_1000F62E0(v0[50].__r_.__value_.__l.__data_, v0[50].__r_.__value_.__s.__data_[8]);
    v2 = sub_100026F94(&qword_10016B008, &unk_100130F30);
    v3 = swift_task_alloc();
    v0[76].__r_.__value_.__l.__size_ = v3;
    *v3 = v0;
    v3[1] = sub_1000EA9D0;

    return BaseObjectGraph.inject<A>(_:)(&v0[32].__r_.__value_.__r.__words[2], v2, v2);
  }

  else
  {
    v4 = v0[71].__r_.__value_.__l.__data_;
    v5 = v0[64].__r_.__value_.__r.__words[2];
    size = v0[63].__r_.__value_.__l.__size_;
    v7 = v0[61].__r_.__value_.__l.__size_;
    v8 = v0[60].__r_.__value_.__l.__data_;
    v9 = v0[59].__r_.__value_.__r.__words[2];
    swift_willThrow();

    sub_10002AAE4(&v0[19].__r_.__value_.__l.__data_);
    (*(v8 + 1))(v7, v9);
    v4(v5, size);
    std::string::~string(v0 + 44);
    sub_100042AFC(&v0[4].__r_.__value_.__l.__size_);
    sub_10002AAE4(&v0[8].__r_.__value_.__l.__data_);
    sub_100026FDC(v0[26].__r_.__value_.__r.__words);
    sub_1000F7B88("makeContext", 11, 2, v0[67].__r_.__value_.__l.__data_);

    v10 = v0->__r_.__value_.__l.__size_;

    return v10();
  }
}

uint64_t sub_1000EA404()
{
  (*(*(v0 + 1440) + 16))(*(v0 + 1448), *(v0 + 1472), *(v0 + 1432));
  sub_10002A9C4(v0 + 368, (v0 + 456));
  std::string::basic_string((v0 + 1032), (v0 + 1056));
  v16 = *(v0 + 1776);
  v1 = *(v0 + 1704);
  v17 = *(v0 + 1608);
  v2 = *(v0 + 1552);
  v3 = *(v0 + 1520);
  v4 = *(v0 + 1472);
  v5 = *(v0 + 1448);
  v6 = *(v0 + 1440);
  v7 = *(v0 + 1432);
  v8 = *(v0 + 1320);
  sub_10002EFB0((v0 + 1032));
  sub_10002EFC4(v0 + 1032);
  v9 = static String._fromUTF8Repairing(_:)();
  v15 = v10;
  sub_10002AAE4((v0 + 456));
  (*(v6 + 8))(v4, v7);
  v1(v2, v3);
  std::string::~string((v0 + 1056));
  sub_100042AFC(v0 + 104);
  std::string::~string((v0 + 1032));
  sub_10002AAE4((v0 + 192));
  (*(v6 + 32))(v8, v5, v7);
  v11 = sub_100026F94(&qword_10016D298, &qword_1001333F0);
  sub_10002ABE8(v8 + v11[9], (v0 + 368));
  sub_10002AAE4((v0 + 368));
  v12 = (v8 + v11[10]);
  *v12 = v9;
  v12[1] = v15;
  *(v8 + v11[11]) = v16;
  sub_100026FDC((v0 + 824));
  sub_100026FDC((v0 + 624));
  sub_1000F7B88("makeContext", 11, 2, v17);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_1000EA6E0()
{
  sub_100026FDC(&v0[34].__r_.__value_.__l.__size_);
  v1 = v0[75].__r_.__value_.__r.__words[2];
  v0[76].__r_.__value_.__r.__words[0] = v1;
  v0[51].__r_.__value_.__r.__words[2] = v1;
  swift_errorRetain();
  sub_100026F94(&qword_10016ADB8, &qword_1001312C0);
  if (swift_dynamicCast())
  {
    sub_1000F62E0(v0[50].__r_.__value_.__l.__data_, v0[50].__r_.__value_.__s.__data_[8]);
    v2 = sub_100026F94(&qword_10016B008, &unk_100130F30);
    v3 = swift_task_alloc();
    v0[76].__r_.__value_.__l.__size_ = v3;
    *v3 = v0;
    v3[1] = sub_1000EA9D0;

    return BaseObjectGraph.inject<A>(_:)(&v0[32].__r_.__value_.__r.__words[2], v2, v2);
  }

  else
  {
    data = v0[71].__r_.__value_.__l.__data_;
    v5 = v0[64].__r_.__value_.__r.__words[2];
    size = v0[63].__r_.__value_.__l.__size_;
    v7 = v0[61].__r_.__value_.__l.__size_;
    v8 = v0[60].__r_.__value_.__l.__data_;
    v9 = v0[59].__r_.__value_.__r.__words[2];
    swift_willThrow();

    sub_10002AAE4(&v0[19].__r_.__value_.__l.__data_);
    (*(v8 + 1))(v7, v9);
    data(v5, size);
    std::string::~string(v0 + 44);
    sub_100042AFC(&v0[4].__r_.__value_.__l.__size_);
    sub_10002AAE4(&v0[8].__r_.__value_.__l.__data_);
    sub_100026FDC(v0[26].__r_.__value_.__r.__words);
    sub_1000F7B88("makeContext", 11, 2, v0[67].__r_.__value_.__l.__data_);

    v10 = v0->__r_.__value_.__l.__size_;

    return v10();
  }
}

uint64_t sub_1000EA9D0()
{
  v2 = *v1;
  *(*v1 + 1840) = v0;

  v3 = *(v2 + 1344);
  if (v0)
  {
    v4 = sub_1000F87F8;
  }

  else
  {
    v4 = sub_1000EAAFC;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1000EAAFC()
{
  v1 = v0[171];
  v2 = v0[170];
  v3 = v0[169];
  sub_100026F50(v0 + 98, v0[101]);
  sub_1000F820C(&qword_10016D2A8, &type metadata accessor for UpdateRequest, &protocol conformance descriptor for UpdateRequest);
  dispatch thunk of RequestType.accessType.getter();
  v4 = RequestAccessType.isRead.getter();
  (*(v2 + 8))(v1, v3);
  v5 = swift_task_alloc();
  v0[231] = v5;
  *v5 = v0;
  v5[1] = sub_1000DDAB8;
  if (v4)
  {
    v6 = 2;
  }

  else
  {
    v6 = 3;
  }

  return sub_100061DD0(v6);
}

uint64_t sub_1000EAC38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[168] = v3;
  v4[167] = a3;
  v4[166] = a2;
  v4[165] = a1;
  v5 = type metadata accessor for RequestAccessType();
  v4[169] = v5;
  v4[170] = *(v5 - 8);
  v4[171] = swift_task_alloc();
  v6 = type metadata accessor for AccessCredential();
  v4[172] = v6;
  v7 = *(v6 - 8);
  v4[173] = v7;
  v4[174] = *(v7 + 64);
  v4[175] = swift_task_alloc();
  v8 = type metadata accessor for OSSignposter();
  v4[176] = v8;
  v4[177] = *(v8 - 8);
  v4[178] = swift_task_alloc();
  v9 = type metadata accessor for DeleteRequest();
  v4[179] = v9;
  v4[180] = *(v9 - 8);
  v4[181] = swift_task_alloc();
  v4[182] = swift_task_alloc();
  v4[183] = swift_task_alloc();
  v4[184] = swift_task_alloc();
  v4[185] = type metadata accessor for DatabaseConnectionManagerImplementation.ConnectionKey(0);
  v4[186] = swift_task_alloc();
  v10 = type metadata accessor for StorageCategory();
  v4[187] = v10;
  v4[188] = *(v10 - 8);
  v4[189] = swift_task_alloc();
  v11 = type metadata accessor for StatementType();
  v4[190] = v11;
  v4[191] = *(v11 - 8);
  v4[192] = swift_task_alloc();
  v4[193] = swift_task_alloc();
  v4[194] = swift_task_alloc();
  type metadata accessor for LogMessage.StringInterpolation();
  v4[195] = swift_task_alloc();
  v12 = type metadata accessor for OSSignpostID();
  v4[196] = v12;
  v4[197] = *(v12 - 8);
  v4[198] = swift_task_alloc();
  v4[199] = swift_task_alloc();
  v4[200] = swift_task_alloc();

  return _swift_task_switch(sub_1000EAFE4, v3, 0);
}

uint64_t sub_1000EAFE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_10016A680 != -1)
  {
    swift_once();
  }

  sub_10002FD14(v3[176], qword_10016D0F0);
  static OSSignpostID.exclusive.getter();
  v4 = OSSignposter.logHandle.getter();
  v5 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    v7 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v4, v5, v7, "makeContext", "", v6, 2u);
  }

  v8 = v3[200];
  v9 = v3[199];
  v10 = v3[197];
  v11 = v3[196];

  (*(v10 + 16))(v9, v8, v11);
  type metadata accessor for OSSignpostIntervalState();
  swift_allocObject();
  v3[201] = OSSignpostIntervalState.init(id:isOpen:)();
  v12 = *(v10 + 8);
  v3[202] = v12;
  v3[203] = (v10 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v12(v8, v11);
  if (qword_10016A678 != -1)
  {
    swift_once();
  }

  v13 = v3[190];
  sub_100026F50(qword_10016D0C8, qword_10016D0E0);
  sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_10012FA10;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v14._object = 0x800000010013D2D0;
  v14._countAndFlagsBits = 0xD000000000000029;
  LogMessage.StringInterpolation.appendLiteral(_:)(v14);
  v3[116] = v13;
  sub_100042BAC(v3 + 113);
  v3[204] = sub_1000F820C(&qword_10016D2B8, &type metadata accessor for DeleteRequest, &protocol conformance descriptor for DeleteRequest);
  dispatch thunk of QueryRequest.statementType.getter();
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002BA6C((v3 + 113), &qword_10016AB10, &unk_100130B10);
  v15._countAndFlagsBits = 0;
  v15._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v15);
  LogMessage.init(stringInterpolation:)();
  Logger.info(_:)();

  v16 = swift_task_alloc();
  v3[205] = v16;
  *v16 = v3;
  v16[1] = sub_1000EB3CC;

  return BaseObjectGraph.inject<A>(_:)(v3 + 13, &type metadata for ClientInfo, &type metadata for ClientInfo);
}

uint64_t sub_1000EB3CC()
{
  v2 = *v1;
  v2[206] = v0;

  if (v0)
  {
    v3 = v2[168];

    return _swift_task_switch(sub_1000F8858, v3, 0);
  }

  else
  {
    v4 = sub_100026F94(&qword_10016D200, &qword_1001332A0);
    v5 = swift_task_alloc();
    v2[207] = v5;
    *v5 = v2;
    v5[1] = sub_1000EB570;

    return BaseObjectGraph.inject<A>(_:)(v2 + 78, v4, v4);
  }
}

uint64_t sub_1000EB570()
{
  v2 = *v1;
  *(*v1 + 1664) = v0;

  v3 = *(v2 + 1344);
  if (v0)
  {
    v4 = sub_1000F87DC;
  }

  else
  {
    v4 = sub_1000EB69C;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1000EB69C()
{
  v1 = *(v0 + 1664);
  sub_100026F50((v0 + 624), *(v0 + 648));
  v2 = dispatch thunk of QueryRequest.statement.getter();
  sub_10007ACB8(v2, v3, v0 + 192);
  if (v1)
  {
    sub_100042AFC(v0 + 104);

LABEL_24:
    sub_100026FDC((v0 + 624));
    sub_1000F7B88("makeContext", 11, 2, *(v0 + 1608));

    v43 = *(v0 + 8);

    return v43();
  }

  sub_10001DAD8(v0 + 192, (v0 + 960));
  v4 = sub_10002A1C8(v0 + 960);
  v5 = sub_10002A1D0(v0 + 960);
  *(v0 + 1296) = v4;
  *(v0 + 1288) = v5;
  v6 = sub_10002A30C((v0 + 1296), (v0 + 1288));
  sub_100078558((v0 + 960));
  if (v6 != 1)
  {
    goto LABEL_14;
  }

  sub_10001DAD8(v0 + 192, (v0 + 936));
  v7 = sub_10002A1C8(v0 + 936);
  v8 = sub_10002A1D0(v0 + 936);
  *(v0 + 1304) = v7;
  *(v0 + 1280) = v8;
  if (!sub_10002A30C((v0 + 1304), (v0 + 1280)))
  {
    sub_100078558((v0 + 936));
LABEL_14:
    v25 = type metadata accessor for DaemonError();
    sub_1000F820C(&qword_10016AB40, &type metadata accessor for DaemonError, &protocol conformance descriptor for DaemonError);
    swift_allocError();
    v27 = v26;
    sub_10001DAD8(v0 + 192, (v0 + 984));
    v28 = sub_10002A1C8(v0 + 984);
    v29 = sub_10002A1D0(v0 + 984);
    *(v0 + 1264) = v28;
    *(v0 + 1256) = v29;
    v30 = sub_10002A30C((v0 + 1264), (v0 + 1256));
    if (!v30)
    {
      sub_100078558((v0 + 984));
LABEL_23:
      *v27 = _swiftEmptyArrayStorage;
      (*(*(v25 - 8) + 104))(v27, enum case for DaemonError.multipleSchemas(_:), v25);
      swift_willThrow();
      sub_100042AFC(v0 + 104);
      sub_10002AAE4((v0 + 192));
      goto LABEL_24;
    }

    v31 = v30;
    v49 = v27;
    v50 = v25;
    result = sub_10007E9EC(0, v30 & ~(v30 >> 63), 0);
    if (v31 < 0)
    {
      goto LABEL_32;
    }

    v32 = 0;
    v52 = (v0 + 1216);
    while (1)
    {
      v33 = sub_10002A418((v0 + 984), v32);
      std::string::basic_string((v0 + 1104), v33);
      std::string::basic_string((v0 + 1128), (v0 + 1104));
      v34 = v31;
      sub_10002EFB0((v0 + 1128));
      sub_10002EFC4(v0 + 1128);
      v35 = static String._fromUTF8Repairing(_:)();
      v37 = v36;
      std::string::~string((v0 + 1104));
      std::string::~string((v0 + 1128));
      v39 = _swiftEmptyArrayStorage[2];
      v38 = _swiftEmptyArrayStorage[3];
      if (v39 >= v38 >> 1)
      {
        sub_10007E9EC((v38 > 1), v39 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v39 + 1;
      v40 = &_swiftEmptyArrayStorage[2 * v39];
      v40[4] = v35;
      v40[5] = v37;
      v41 = sub_10002A1C8(v0 + 984);
      v42 = sub_10002A1D0(v0 + 984);
      *v52 = v41;
      *(v0 + 1248) = v42;
      result = sub_10002A30C(v52, (v0 + 1248));
      if (v32 >= result)
      {
        break;
      }

      ++v32;
      v31 = v34;
      if (v34 == v32)
      {
        sub_100078558((v0 + 984));
        v25 = v50;
        v27 = v49;
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v9 = sub_10002A418((v0 + 936), 0);
  std::string::basic_string((v0 + 1056), v9);
  sub_100078558((v0 + 936));
  sub_10001DE24((v0 + 1008), v0 + 192);
  v10 = sub_10002A1C8(v0 + 1008);
  v11 = sub_10002A1D0(v0 + 1008);
  *(v0 + 1272) = v10;
  *(v0 + 1312) = v11;
  v12 = sub_10002A2EC((v0 + 1272), (v0 + 1312));
  if (v12)
  {
    v13 = v12;
    result = sub_10007E9EC(0, v12 & ~(v12 >> 63), 0);
    if (v13 < 0)
    {
LABEL_33:
      __break(1u);
      return result;
    }

    v15 = 0;
    v51 = v13;
    do
    {
      v16 = sub_10002C030((v0 + 1008), v15);
      sub_10002A33C((v0 + 544), v16);
      std::string::basic_string((v0 + 1080), (v0 + 568));
      sub_10002EFB0((v0 + 1080));
      sub_10002EFC4(v0 + 1080);
      v17 = static String._fromUTF8Repairing(_:)();
      v19 = v18;
      sub_10001B428(v0 + 544);
      std::string::~string((v0 + 1080));
      v21 = _swiftEmptyArrayStorage[2];
      v20 = _swiftEmptyArrayStorage[3];
      if (v21 >= v20 >> 1)
      {
        sub_10007E9EC((v20 > 1), v21 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v21 + 1;
      v22 = &_swiftEmptyArrayStorage[2 * v21];
      v22[4] = v17;
      v22[5] = v19;
      v23 = sub_10002A1C8(v0 + 1008);
      v24 = sub_10002A1D0(v0 + 1008);
      *(v0 + 1232) = v23;
      *(v0 + 1224) = v24;
      result = sub_10002A2EC((v0 + 1232), (v0 + 1224));
      if (v15 >= result)
      {
        goto LABEL_31;
      }
    }

    while (v51 != ++v15);
  }

  sub_10002A4B8((v0 + 1008));
  *(v0 + 1672) = _swiftEmptyArrayStorage;
  std::string::basic_string((v0 + 1152), (v0 + 1056));
  sub_10002EFB0((v0 + 1152));
  sub_10002EFC4(v0 + 1152);
  v44 = static String._fromUTF8Repairing(_:)();
  v46 = v45;
  *(v0 + 1680) = v45;
  std::string::~string((v0 + 1152));
  v47 = swift_task_alloc();
  *(v0 + 1688) = v47;
  *v47 = v0;
  v47[1] = sub_1000EBE1C;
  v48 = *(v0 + 1336);

  return sub_1000F14AC(_swiftEmptyArrayStorage, v44, v46, v0 + 104, v48);
}

uint64_t sub_1000EBE1C()
{
  v2 = *v1;
  *(*v1 + 1696) = v0;

  v3 = *(v2 + 1344);

  if (v0)
  {
    v4 = sub_1000F885C;
  }

  else
  {
    v4 = sub_1000EBF80;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1000EBF80()
{
  v1 = v0[70].__r_.__value_.__r.__words[2];
  sub_10008366C(LODWORD(v0[8].__r_.__value_.__l.__data_), v0[64].__r_.__value_.__r.__words[2]);
  if (!v1)
  {
    size = v0[64].__r_.__value_.__l.__size_;
    v3 = v0[63].__r_.__value_.__r.__words[2];
    v4 = v0[63].__r_.__value_.__l.__size_;
    dispatch thunk of QueryRequest.statementType.getter();
    v5 = static StatementType.== infix(_:_:)();
    v6 = *(v3 + 8);
    v0[71].__r_.__value_.__r.__words[0] = v6;
    v0[71].__r_.__value_.__l.__size_ = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v6(size, v4);
    v25 = v6;
    if (v5)
    {
      std::string::basic_string(v0 + 49, v0 + 44);
      sub_10002EFB0(&v0[49]);
      sub_10002EFC4(&v0[49]);
      v15 = static String._fromUTF8Repairing(_:)();
      v16 = v0[64].__r_.__value_.__l.__size_;
      data = v0[64].__r_.__value_.__l.__data_;
      v18 = v0[63].__r_.__value_.__r.__words[2];
      v19 = v0[63].__r_.__value_.__l.__size_;
      v20 = v0[56].__r_.__value_.__l.__data_;
      v0[71].__r_.__value_.__r.__words[2] = v21;
      v0[72].__r_.__value_.__r.__words[0] = v15;
      std::string::~string(v0 + 49);
      v0[72].__r_.__value_.__l.__size_ = OBJC_IVAR____TtC19amsondevicestoraged13ClientSession_credential;
      AccessCredential.storageCategory.getter();
      dispatch thunk of QueryRequest.statementType.getter();
      (*(v18 + 104))(v16, enum case for StatementType.select(_:), v19);
      v0[50].__r_.__value_.__s.__data_[9] = static StatementType.== infix(_:_:)() & 1;
      v25(v16, v19);
      v25(data, v19);
      v22 = sub_100026F50(&v20[OBJC_IVAR____TtC19amsondevicestoraged13ClientSession_dbManager], *&v20[OBJC_IVAR____TtC19amsondevicestoraged13ClientSession_dbManager + 24]);
      v23 = &v20[OBJC_IVAR____TtC19amsondevicestoraged13ClientSession_id];
      v0[72].__r_.__value_.__r.__words[2] = *&v20[OBJC_IVAR____TtC19amsondevicestoraged13ClientSession_id];
      v0[73].__r_.__value_.__r.__words[0] = *(v23 + 1);
      v24 = *v22;
      v0[73].__r_.__value_.__l.__size_ = *v22;

      return _swift_task_switch(sub_1000EC440, v24, 0);
    }

    v7 = v0[64].__r_.__value_.__r.__words[2];
    v8 = v0[63].__r_.__value_.__r.__words[2];
    v9 = v0[63].__r_.__value_.__l.__size_;
    v10 = type metadata accessor for DaemonError();
    sub_1000F820C(&qword_10016AB40, &type metadata accessor for DaemonError, &protocol conformance descriptor for DaemonError);
    swift_allocError();
    v12 = v11;
    sub_100026F94(&qword_10016D208, &qword_1001332B0);
    (*(v8 + 16))(v12, v7, v9);
    dispatch thunk of QueryRequest.statementType.getter();
    (*(*(v10 - 8) + 104))(v12, enum case for DaemonError.statementTypeMismatch(_:), v10);
    swift_willThrow();
    v25(v7, v9);
  }

  std::string::~string(v0 + 44);
  sub_100042AFC(&v0[4].__r_.__value_.__l.__size_);
  sub_10002AAE4(&v0[8].__r_.__value_.__l.__data_);
  sub_100026FDC(v0[26].__r_.__value_.__r.__words);
  sub_1000F7B88("makeContext", 11, 2, v0[67].__r_.__value_.__l.__data_);

  v13 = v0->__r_.__value_.__l.__size_;

  return v13();
}

uint64_t sub_1000EC440()
{
  v1 = *(v0 + 1209);
  v2 = *(v0 + 1728);
  v3 = *(v0 + 1720);
  v4 = *(v0 + 1488);
  v5 = *(v0 + 1480);
  (*(*(v0 + 1504) + 16))(&v4[v5[5]], *(v0 + 1512), *(v0 + 1496));
  v7 = *(v0 + 120);
  v6 = *(v0 + 128);
  *v4 = v2;
  *(v4 + 1) = v3;
  v8 = &v4[v5[6]];
  *v8 = v7;
  *(v8 + 1) = v6;
  v4[v5[7]] = v1;
  v4[v5[8]] = 0;

  v9 = swift_task_alloc();
  *(v0 + 1768) = v9;
  *v9 = v0;
  v9[1] = sub_1000EC554;
  v10 = *(v0 + 1752);
  v11 = *(v0 + 1744);
  v12 = *(v0 + 1488);

  return sub_100050F58(v12, v11, v10);
}

uint64_t sub_1000EC554(uint64_t a1)
{
  v3 = *v2;
  v3[222] = a1;
  v3[223] = v1;

  if (v1)
  {
    v4 = v3[220];
    sub_1000F65EC(v3[186], type metadata accessor for DatabaseConnectionManagerImplementation.ConnectionKey);
    v5 = sub_1000DCC68;
  }

  else
  {
    v4 = v3[168];
    sub_1000F65EC(v3[186], type metadata accessor for DatabaseConnectionManagerImplementation.ConnectionKey);
    v5 = sub_1000EC6AC;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_1000EC6AC()
{
  (*(*(v0 + 1504) + 8))(*(v0 + 1512), *(v0 + 1496));
  dispatch thunk of QueryRequest.query.getter();
  sub_100026F50((v0 + 864), *(v0 + 888));
  v1 = Expressible.isExpandable.getter();
  sub_100026FDC((v0 + 864));
  if (v1)
  {
    v2 = *(v0 + 1776);
    v3 = qword_10016A548;

    if (v3 != -1)
    {
      swift_once();
    }

    v4 = *(v0 + 1424);
    v5 = *(v0 + 1416);
    v6 = *(v0 + 1408);
    v7 = sub_10002FD14(v6, qword_1001736D0);
    (*(v5 + 16))(v4, v7, v6);
    static OSSignpostID.exclusive.getter();
    v8 = swift_slowAlloc();
    *v8 = 0;
    v9 = OSSignposter.logHandle.getter();
    LOBYTE(v6) = static os_signpost_type_t.begin.getter();
    v10 = OSSignpostID.rawValue.getter();
    v60 = v8;
    v61 = v9;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v9, v6, v10, "expandQuery", "", v8, 2u);
    dispatch thunk of QueryRequest.query.getter();
    sub_100026F50((v0 + 744), *(v0 + 768));
    LOBYTE(v4) = Expressible.isExpandable.getter();
    sub_100026FDC((v0 + 744));
    if (v4)
    {
      v58 = v2;
      v11 = *(v0 + 1736);
      v12 = *(v0 + 1400);
      v13 = *(v0 + 1384);
      v14 = *(v0 + 1376);
      v15 = *(v0 + 1344);
      dispatch thunk of QueryRequest.query.getter();
      sub_100026F50((v0 + 664), *(v0 + 688));
      (*(v13 + 16))(v12, v15 + v11, v14);
      sub_10002A9C4(v0 + 16, (v0 + 192));
      v52 = *(v0 + 1784);
      v16 = *(v0 + 1400);
      v17 = *(v0 + 1384);
      v18 = *(v0 + 1376);
      v19 = (*(v17 + 80) + 16) & ~*(v17 + 80);
      v20 = (*(v0 + 1392) + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
      v21 = swift_allocObject();
      (*(v17 + 32))(v21 + v19, v16, v18);
      *(v21 + v20) = v58;
      sub_10002ABE8(v21 + ((v20 + 15) & 0xFFFFFFFFFFFFFFF8), (v0 + 16));
      sub_10002AAE4((v0 + 16));

      Expressible.expanded(using:in:rawStatementHandler:)();
      if (v52)
      {
        v22 = *(v0 + 1704);
        v23 = *(v0 + 1584);
        v24 = *(v0 + 1568);
        v25 = *(v0 + 1552);
        v26 = *(v0 + 1520);
        v56 = *(v0 + 1424);
        v57 = *(v0 + 1616);
        v27 = *(v0 + 1416);
        v54 = *(v0 + 1408);

        sub_100026FDC((v0 + 664));

        v22(v25, v26);
        std::string::~string((v0 + 1056));
        sub_100042AFC(v0 + 104);
        v57(v23, v24);
        (*(v27 + 8))(v56, v54);
LABEL_12:
        sub_10002AAE4((v0 + 192));
        sub_100026FDC((v0 + 624));
        sub_1000F7B88("makeContext", 11, 2, *(v0 + 1608));

        v46 = *(v0 + 8);

        return v46();
      }

      sub_100026FDC((v0 + 664));
      dispatch thunk of QueryRequest.withQuery(_:)();
      sub_100026FDC((v0 + 704));
      v59 = 0;
    }

    else
    {
      (*(*(v0 + 1440) + 16))(*(v0 + 1456), *(v0 + 1328), *(v0 + 1432));
      v59 = *(v0 + 1784);
    }

    v28 = *(v0 + 1584);
    v53 = *(v0 + 1568);
    v55 = *(v0 + 1616);
    v29 = *(v0 + 1472);
    v30 = *(v0 + 1464);
    v31 = *(v0 + 1456);
    v32 = *(v0 + 1440);
    v33 = *(v0 + 1432);
    v51 = *(v0 + 1424);
    v34 = *(v0 + 1416);
    v50 = *(v0 + 1408);
    v35 = static os_signpost_type_t.end.getter();
    v36 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v61, v35, v36, "expandQuery", "", v60, 2u);

    v37 = *(v32 + 32);
    v37(v30, v31, v33);

    v37(v29, v30, v33);
    v55(v28, v53);
    (*(v34 + 8))(v51, v50);
    sub_100026F50((v0 + 624), *(v0 + 648));
    v38 = dispatch thunk of QueryRequest.statement.getter();
    sub_10007ACB8(v38, v39, v0 + 280);
    if (v59)
    {
      v40 = *(v0 + 1704);
      v41 = *(v0 + 1552);
      v42 = *(v0 + 1520);
      v43 = *(v0 + 1472);
      v44 = *(v0 + 1440);
      v45 = *(v0 + 1432);

      (*(v44 + 8))(v43, v45);
      v40(v41, v42);
      std::string::~string((v0 + 1056));
      sub_100042AFC(v0 + 104);
      goto LABEL_12;
    }

    sub_10002ABE8(v0 + 456, (v0 + 280));
    sub_10002AAE4((v0 + 280));
  }

  else
  {
    (*(*(v0 + 1440) + 16))(*(v0 + 1472), *(v0 + 1328), *(v0 + 1432));
    sub_10002A9C4(v0 + 456, (v0 + 192));
  }

  v48 = sub_100026F94(&qword_10016D210, &unk_1001332B8);
  v49 = swift_task_alloc();
  *(v0 + 1792) = v49;
  *v49 = v0;
  v49[1] = sub_1000ECEB4;

  return BaseObjectGraph.inject<A>(_:)(v0 + 824, v48, v48);
}

uint64_t sub_1000ECEB4()
{
  v2 = *v1;
  *(*v1 + 1800) = v0;

  v3 = *(v2 + 1344);
  if (v0)
  {
    v4 = sub_1000ED1CC;
  }

  else
  {
    v4 = sub_1000ECFE0;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1000ECFE0()
{
  v1 = v0[217];
  v2 = v0[168];
  sub_100026F50(v0 + 103, v0[106]);
  v3 = swift_task_alloc();
  v0[226] = v3;
  *v3 = v0;
  v3[1] = sub_1000ED0A0;
  v4 = v0[222];

  return sub_100074494((v0 + 57), v2 + v1, (v0 + 13), v4);
}

uint64_t sub_1000ED0A0()
{
  v2 = *v1;
  *(*v1 + 1816) = v0;

  v3 = *(v2 + 1344);
  if (v0)
  {
    v4 = sub_1000ED790;
  }

  else
  {
    v4 = sub_1000ED4B4;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1000ED1CC()
{
  data = v0[75].__r_.__value_.__l.__data_;
  v0[76].__r_.__value_.__r.__words[0] = data;
  v0[51].__r_.__value_.__r.__words[2] = data;
  swift_errorRetain();
  sub_100026F94(&qword_10016ADB8, &qword_1001312C0);
  if (swift_dynamicCast())
  {
    sub_1000F62E0(v0[50].__r_.__value_.__l.__data_, v0[50].__r_.__value_.__s.__data_[8]);
    v2 = sub_100026F94(&qword_10016B008, &unk_100130F30);
    v3 = swift_task_alloc();
    v0[76].__r_.__value_.__l.__size_ = v3;
    *v3 = v0;
    v3[1] = sub_1000EDA80;

    return BaseObjectGraph.inject<A>(_:)(&v0[32].__r_.__value_.__r.__words[2], v2, v2);
  }

  else
  {
    v4 = v0[71].__r_.__value_.__l.__data_;
    v5 = v0[64].__r_.__value_.__r.__words[2];
    size = v0[63].__r_.__value_.__l.__size_;
    v7 = v0[61].__r_.__value_.__l.__size_;
    v8 = v0[60].__r_.__value_.__l.__data_;
    v9 = v0[59].__r_.__value_.__r.__words[2];
    swift_willThrow();

    sub_10002AAE4(&v0[19].__r_.__value_.__l.__data_);
    (*(v8 + 1))(v7, v9);
    v4(v5, size);
    std::string::~string(v0 + 44);
    sub_100042AFC(&v0[4].__r_.__value_.__l.__size_);
    sub_10002AAE4(&v0[8].__r_.__value_.__l.__data_);
    sub_100026FDC(v0[26].__r_.__value_.__r.__words);
    sub_1000F7B88("makeContext", 11, 2, v0[67].__r_.__value_.__l.__data_);

    v10 = v0->__r_.__value_.__l.__size_;

    return v10();
  }
}

uint64_t sub_1000ED4B4()
{
  (*(*(v0 + 1440) + 16))(*(v0 + 1448), *(v0 + 1472), *(v0 + 1432));
  sub_10002A9C4(v0 + 368, (v0 + 456));
  std::string::basic_string((v0 + 1032), (v0 + 1056));
  v16 = *(v0 + 1776);
  v1 = *(v0 + 1704);
  v17 = *(v0 + 1608);
  v2 = *(v0 + 1552);
  v3 = *(v0 + 1520);
  v4 = *(v0 + 1472);
  v5 = *(v0 + 1448);
  v6 = *(v0 + 1440);
  v7 = *(v0 + 1432);
  v8 = *(v0 + 1320);
  sub_10002EFB0((v0 + 1032));
  sub_10002EFC4(v0 + 1032);
  v9 = static String._fromUTF8Repairing(_:)();
  v15 = v10;
  sub_10002AAE4((v0 + 456));
  (*(v6 + 8))(v4, v7);
  v1(v2, v3);
  std::string::~string((v0 + 1056));
  sub_100042AFC(v0 + 104);
  std::string::~string((v0 + 1032));
  sub_10002AAE4((v0 + 192));
  (*(v6 + 32))(v8, v5, v7);
  v11 = sub_100026F94(&qword_10016D2B0, &qword_100133430);
  sub_10002ABE8(v8 + v11[9], (v0 + 368));
  sub_10002AAE4((v0 + 368));
  v12 = (v8 + v11[10]);
  *v12 = v9;
  v12[1] = v15;
  *(v8 + v11[11]) = v16;
  sub_100026FDC((v0 + 824));
  sub_100026FDC((v0 + 624));
  sub_1000F7B88("makeContext", 11, 2, v17);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_1000ED790()
{
  sub_100026FDC(&v0[34].__r_.__value_.__l.__size_);
  v1 = v0[75].__r_.__value_.__r.__words[2];
  v0[76].__r_.__value_.__r.__words[0] = v1;
  v0[51].__r_.__value_.__r.__words[2] = v1;
  swift_errorRetain();
  sub_100026F94(&qword_10016ADB8, &qword_1001312C0);
  if (swift_dynamicCast())
  {
    sub_1000F62E0(v0[50].__r_.__value_.__l.__data_, v0[50].__r_.__value_.__s.__data_[8]);
    v2 = sub_100026F94(&qword_10016B008, &unk_100130F30);
    v3 = swift_task_alloc();
    v0[76].__r_.__value_.__l.__size_ = v3;
    *v3 = v0;
    v3[1] = sub_1000EDA80;

    return BaseObjectGraph.inject<A>(_:)(&v0[32].__r_.__value_.__r.__words[2], v2, v2);
  }

  else
  {
    data = v0[71].__r_.__value_.__l.__data_;
    v5 = v0[64].__r_.__value_.__r.__words[2];
    size = v0[63].__r_.__value_.__l.__size_;
    v7 = v0[61].__r_.__value_.__l.__size_;
    v8 = v0[60].__r_.__value_.__l.__data_;
    v9 = v0[59].__r_.__value_.__r.__words[2];
    swift_willThrow();

    sub_10002AAE4(&v0[19].__r_.__value_.__l.__data_);
    (*(v8 + 1))(v7, v9);
    data(v5, size);
    std::string::~string(v0 + 44);
    sub_100042AFC(&v0[4].__r_.__value_.__l.__size_);
    sub_10002AAE4(&v0[8].__r_.__value_.__l.__data_);
    sub_100026FDC(v0[26].__r_.__value_.__r.__words);
    sub_1000F7B88("makeContext", 11, 2, v0[67].__r_.__value_.__l.__data_);

    v10 = v0->__r_.__value_.__l.__size_;

    return v10();
  }
}

uint64_t sub_1000EDA80()
{
  v2 = *v1;
  *(*v1 + 1840) = v0;

  v3 = *(v2 + 1344);
  if (v0)
  {
    v4 = sub_1000F87F8;
  }

  else
  {
    v4 = sub_1000EDBAC;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1000EDBAC()
{
  v1 = v0[171];
  v2 = v0[170];
  v3 = v0[169];
  sub_100026F50(v0 + 98, v0[101]);
  sub_1000F820C(qword_10016D2C0, &type metadata accessor for DeleteRequest, &protocol conformance descriptor for DeleteRequest);
  dispatch thunk of RequestType.accessType.getter();
  v4 = RequestAccessType.isRead.getter();
  (*(v2 + 8))(v1, v3);
  v5 = swift_task_alloc();
  v0[231] = v5;
  *v5 = v0;
  v5[1] = sub_1000DDAB8;
  if (v4)
  {
    v6 = 2;
  }

  else
  {
    v6 = 3;
  }

  return sub_100061DD0(v6);
}

uint64_t sub_1000EDCE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v7 = v6;
  v182 = a5;
  *&v180 = a3;
  *(&v180 + 1) = a4;
  *&v184 = a1;
  *(&v184 + 1) = a2;
  v169 = type metadata accessor for DataSpecification.Namespace.Table.Column.Datatype();
  v163 = *(v169 - 8);
  __chkstk_darwin(v169);
  v168 = &v162 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v175 = type metadata accessor for Table();
  v164 = *(v175 - 8);
  v10 = __chkstk_darwin(v175);
  v170 = &v162 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v171 = &v162 - v12;
  v13 = type metadata accessor for LogMessage.StringInterpolation();
  __chkstk_darwin(v13 - 8);
  v165 = &v162 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v188 = type metadata accessor for DataSpecification.Namespace.Table.Column();
  v181 = *(v188 - 8);
  v15 = __chkstk_darwin(v188);
  v172 = &v162 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v187 = &v162 - v17;
  v18 = type metadata accessor for AccessCredential.Error();
  v173 = *(v18 - 8);
  v174 = v18;
  __chkstk_darwin(v18);
  v183 = &v162 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for DataSpecification();
  v177 = *(v20 - 8);
  v178 = v20;
  __chkstk_darwin(v20);
  v176 = &v162 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for DataSpecification.Namespace.Table();
  v23 = *(v22 - 8);
  v166 = v22;
  v167 = v23;
  __chkstk_darwin(v22);
  v179 = &v162 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v195 = type metadata accessor for ColumnDefinition();
  v197 = *(v195 - 8);
  v25 = __chkstk_darwin(v195);
  v186 = &v162 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __chkstk_darwin(v25);
  v194 = &v162 - v28;
  __chkstk_darwin(v27);
  v30 = &v162 - v29;
  v198 = type metadata accessor for OSSignpostID();
  v31 = *(v198 - 8);
  v32 = __chkstk_darwin(v198);
  v196 = &v162 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v35 = &v162 - v34;
  if (qword_10016A680 == -1)
  {
    goto LABEL_2;
  }

  while (1)
  {
    swift_once();
LABEL_2:
    v36 = type metadata accessor for OSSignposter();
    sub_10002FD14(v36, qword_10016D0F0);
    static OSSignpostID.exclusive.getter();
    v37 = OSSignposter.logHandle.getter();
    v38 = static os_signpost_type_t.begin.getter();
    if (OS_os_log.signpostsEnabled.getter())
    {
      v39 = swift_slowAlloc();
      v193 = a6;
      v40 = v7;
      v41 = v39;
      *v39 = 0;
      v42 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v37, v38, v42, "addNewColumns", "", v41, 2u);
      v7 = v40;
      a6 = v193;
    }

    v43 = v198;
    (v31[2])(v196, v35, v198);
    type metadata accessor for OSSignpostIntervalState();
    swift_allocObject();
    v44 = OSSignpostIntervalState.init(id:isOpen:)();
    v45 = v31[1];
    ++v31;
    v45(v35, v43);
    Connection.schema.getter();
    v46 = *(&v184 + 1);
    v35 = v184;
    v47 = dispatch thunk of SchemaReader.columnDefinitions(table:)();
    v185 = v7;
    if (v7)
    {
      break;
    }

    v198 = v47;

    sub_10007683C(v35, v46, __dst);
    v48 = *(&v180 + 1);

    sub_10007683C(v180, v48, &v212);
    sub_10001DE4C(a6, __dst, &v212, &v199);
    std::string::~string(&v212);
    std::string::~string(__dst);
    v49 = sub_10002A1C8(&v199);
    v50 = sub_10002A1D0(&v199);
    *__dst = v49;
    v212.__r_.__value_.__r.__words[0] = v50;
    v51 = sub_10002A2B8(__dst, &v212);
    v162 = v44;
    if (!v51)
    {
      sub_1000785A4(&v199);
      v7 = _swiftEmptyArrayStorage;
      v61 = v195;
LABEL_15:
      v62 = *(v7 + 16);
      v196 = (v197 + 16);
      v44 = (v197 + 8);
      v63 = v198;
      v192 = v62;
      if (v62)
      {
        v64 = 0;
        v191 = (v7 + 32);
        v189 = _swiftEmptyArrayStorage;
        v190 = v7;
LABEL_18:
        while (v64 < *(v7 + 16))
        {
          v65 = (v191 + 16 * v64);
          v31 = *v65;
          v35 = v65[1];
          v193 = (v64 + 1);
          v66 = *(v63 + 16);

          a6 = 0;
          while (1)
          {
            if (v66 == a6)
            {
              v69 = v189;
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v71 = v69;
              *__dst = v69;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                sub_10007E9EC(0, v69[2] + 1, 1);
                v61 = v195;
                v71 = *__dst;
              }

              v7 = v190;
              a6 = v71[2];
              v72 = v71[3];
              v63 = v198;
              if (a6 >= v72 >> 1)
              {
                sub_10007E9EC((v72 > 1), a6 + 1, 1);
                v63 = v198;
                v61 = v195;
                v71 = *__dst;
              }

              v71[2] = a6 + 1;
              v189 = v71;
              v73 = &v71[2 * a6];
              v73[4] = v31;
              v73[5] = v35;
              v64 = v193;
              if (v193 == v192)
              {
                goto LABEL_33;
              }

              goto LABEL_18;
            }

            if (a6 >= *(v198 + 16))
            {
              __break(1u);
LABEL_103:

              v44 = v162;
              v125 = v183;
LABEL_112:
              v149 = sub_1000772BC(a6, v125);

              v150 = type metadata accessor for DaemonError();
              sub_1000F820C(&qword_10016AB40, &type metadata accessor for DaemonError, &protocol conformance descriptor for DaemonError);
              swift_allocError();
              *v151 = v149;
              (*(*(v150 - 8) + 104))(v151, enum case for DaemonError.unaccessibleColumns(_:), v150);
              swift_willThrow();
              goto LABEL_121;
            }

            (*(v197 + 16))(v30, v198 + ((*(v197 + 80) + 32) & ~*(v197 + 80)) + *(v197 + 72) * a6, v61);
            if (ColumnDefinition.name.getter() == v31 && v68 == v35)
            {
              break;
            }

            ++a6;
            v67 = _stringCompareWithSmolCheck(_:_:expecting:)();

            v61 = v195;
            (*v44)(v30, v195);
            if (v67)
            {
              goto LABEL_17;
            }
          }

          v61 = v195;
          (*v44)(v30, v195);
LABEL_17:

          v64 = v193;
          v63 = v198;
          v7 = v190;
          if (v193 == v192)
          {
            goto LABEL_33;
          }
        }

        goto LABEL_126;
      }

      v189 = _swiftEmptyArrayStorage;
LABEL_33:

      a6 = v176;
      AccessCredential.dataSpecification.getter();
      v74 = v185;
      v75 = v183;
      _s19OnDeviceStorageCore17DataSpecificationV05tableF03for2inAC9NamespaceV5TableVSS_SStAA16AccessCredentialV5ErrorOYKF();
      if (v74)
      {

        (*(v177 + 8))(a6, v178);
        sub_1000F820C(&qword_10016AB18, &type metadata accessor for AccessCredential.Error, &protocol conformance descriptor for AccessCredential.Error);
        v76 = v174;
        swift_allocError();
        (*(v173 + 32))(v77, v75, v76);
        v44 = v162;
        goto LABEL_122;
      }

      v185 = 0;
      (*(v177 + 8))(a6, v178);
      v35 = DataSpecification.Namespace.Table.columns.getter();
      v30 = *(v35 + 16);
      if (v30)
      {
        *__dst = _swiftEmptyArrayStorage;
        sub_10007E9EC(0, v30, 0);
        v78 = *__dst;
        v79 = *(v181 + 16);
        v80 = *(v181 + 80);
        v178 = v35;
        v81 = v35 + ((v80 + 32) & ~v80);
        v190 = *(v181 + 72);
        v191 = v79;
        v192 = (v181 + 16);
        v183 = (v181 + 8);
        do
        {
          v82 = v187;
          v83 = v188;
          v191(v187, v81, v188);
          v35 = DataSpecification.Namespace.Table.Column.name.getter();
          v193 = v84;
          (*v183)(v82, v83);
          *__dst = v78;
          a6 = *(v78 + 2);
          v85 = *(v78 + 3);
          v7 = a6 + 1;
          if (a6 >= v85 >> 1)
          {
            sub_10007E9EC((v85 > 1), a6 + 1, 1);
            v78 = *__dst;
          }

          *(v78 + 2) = v7;
          v86 = (v78 + 16 * a6);
          v87 = v193;
          v86[4] = v35;
          v86[5] = v87;
          v81 += v190;
          --v30;
        }

        while (v30);

        v88 = v78;
      }

      else
      {

        v88 = _swiftEmptyArrayStorage;
      }

      v89 = v195;
      v31 = v186;
      v90 = v198;
      v193 = *(v88 + 2);
      if (v193)
      {
        v7 = 0;
        v192 = (v88 + 32);
        v190 = _swiftEmptyArrayStorage;
        v191 = v88;
        while (1)
        {
          while (1)
          {
            if (v7 >= *(v88 + 2))
            {
              goto LABEL_127;
            }

            v91 = &v192[2 * v7];
            v92 = *v91;
            v35 = v91[1];
            ++v7;
            v30 = *(v90 + 16);

            a6 = 0;
LABEL_48:
            if (v30 != a6)
            {
              break;
            }

            v95 = v190;
            v96 = swift_isUniquelyReferenced_nonNull_native();
            v97 = v95;
            *__dst = v95;
            if ((v96 & 1) == 0)
            {
              sub_10007E9EC(0, *(v95 + 16) + 1, 1);
              v89 = v195;
              v97 = *__dst;
            }

            v88 = v191;
            a6 = *(v97 + 16);
            v98 = *(v97 + 24);
            v90 = v198;
            if (a6 >= v98 >> 1)
            {
              sub_10007E9EC((v98 > 1), a6 + 1, 1);
              v88 = v191;
              v90 = v198;
              v89 = v195;
              v97 = *__dst;
            }

            *(v97 + 16) = a6 + 1;
            v190 = v97;
            v99 = v97 + 16 * a6;
            *(v99 + 32) = v92;
            *(v99 + 40) = v35;
            v31 = v186;
            if (v7 == v193)
            {
              goto LABEL_60;
            }
          }

          if (a6 >= *(v198 + 16))
          {
            __break(1u);
LABEL_117:
            __break(1u);
LABEL_118:

            v152 = type metadata accessor for DaemonError();
            sub_1000F820C(&qword_10016AB40, &type metadata accessor for DaemonError, &protocol conformance descriptor for DaemonError);
            swift_allocError();
            v153 = v35;
            v155 = v154;
            *v154 = DataSpecification.Namespace.Table.Column.name.getter();
            v155[1] = v156;
            v155[2] = v7;
            v155[3] = a6;
            v157 = &enum case for DaemonError.newPrimaryKeyColumn(_:);
LABEL_120:
            (*(*(v152 - 8) + 104))(v155, *v157, v152);
            swift_willThrow();
            v160 = *v197;

            v160(v153, v188);
LABEL_121:
            (*(v167 + 8))(v179, v166);
            goto LABEL_122;
          }

          (*(v197 + 16))(v194, v198 + ((*(v197 + 80) + 32) & ~*(v197 + 80)) + *(v197 + 72) * a6, v89);
          if (ColumnDefinition.name.getter() != v92 || v94 != v35)
          {
            ++a6;
            v93 = _stringCompareWithSmolCheck(_:_:expecting:)();

            v89 = v195;
            (*v44)(v194, v195);
            if (v93)
            {
              goto LABEL_44;
            }

            goto LABEL_48;
          }

          v89 = v195;
          (*v44)(v194, v195);
LABEL_44:

          v31 = v186;
          v90 = v198;
          v88 = v191;
          if (v7 == v193)
          {
            goto LABEL_60;
          }
        }
      }

      v190 = _swiftEmptyArrayStorage;
LABEL_60:

      *__dst = v189;
      sub_10007FDCC(v190);
      v183 = sub_1000817CC(*__dst);

      if (qword_10016A4D8 != -1)
      {
        goto LABEL_133;
      }

      while (2)
      {
        a6 = qword_100173658;
        v192 = *(qword_100173658 + 16);
        if (v192)
        {
          v100 = 0;
          v191 = (qword_100173658 + 32);
          v189 = _swiftEmptyArrayStorage;
          v190 = qword_100173658;
          v101 = v195;
          while (v100 < *(a6 + 16))
          {
            v193 = (v100 + 1);
            sub_1000F67F8(v191 + 120 * v100, __dst);
            v102 = v198;
            v30 = 0;
            v194 = *(v198 + 16);
            while (v194 != v30)
            {
              if (v30 >= *(v102 + 16))
              {
                goto LABEL_117;
              }

              (*(v197 + 16))(v31, v102 + ((*(v197 + 80) + 32) & ~*(v197 + 80)) + *(v197 + 72) * v30, v101);
              a6 = v101;
              v35 = ColumnDefinition.name.getter();
              v104 = v103;
              v7 = v208;
              sub_100026F50(__dst, *&__dst[24]);
              if (v35 == Expressible.columnName.getter() && v104 == v105)
              {

                (*v44)(v31, v101);
LABEL_64:
                sub_1000F6854(__dst);
                a6 = v190;
                v7 = v193;
                goto LABEL_65;
              }

              ++v30;
              v35 = _stringCompareWithSmolCheck(_:_:expecting:)();

              (*v44)(v31, v101);
              v102 = v198;
              if (v35)
              {
                goto LABEL_64;
              }
            }

            v203 = v209[1];
            v204 = v210[0];
            v205 = v210[1];
            v206 = v211;
            v199 = *__dst;
            v200 = *&__dst[16];
            v201 = v208;
            v202 = v209[0];
            v107 = v189;
            v108 = swift_isUniquelyReferenced_nonNull_native();
            v109 = v107;
            v212.__r_.__value_.__r.__words[0] = v107;
            if ((v108 & 1) == 0)
            {
              sub_10007EA4C(0, *(v107 + 16) + 1, 1);
              v101 = v195;
              v109 = v212.__r_.__value_.__r.__words[0];
            }

            a6 = v190;
            v7 = v193;
            v35 = *(v109 + 16);
            v110 = *(v109 + 24);
            if (v35 >= v110 >> 1)
            {
              sub_10007EA4C((v110 > 1), v35 + 1, 1);
              v101 = v195;
              v109 = v212.__r_.__value_.__r.__words[0];
            }

            *(v109 + 16) = v35 + 1;
            v189 = v109;
            v111 = v109 + 120 * v35;
            v112 = v199;
            v113 = v200;
            v114 = v202;
            *(v111 + 64) = v201;
            *(v111 + 80) = v114;
            *(v111 + 32) = v112;
            *(v111 + 48) = v113;
            v115 = v203;
            v116 = v204;
            v117 = v205;
            *(v111 + 144) = v206;
            *(v111 + 112) = v116;
            *(v111 + 128) = v117;
            *(v111 + 96) = v115;
            v31 = v186;
LABEL_65:
            v100 = v7;
            if (v7 == v192)
            {
              goto LABEL_82;
            }
          }

          goto LABEL_128;
        }

        v189 = _swiftEmptyArrayStorage;
LABEL_82:

        v118 = v183;
        v119 = *(v183 + 2);
        if (v119)
        {
          v120 = sub_10007E83C(*(v183 + 2), 0);
          v121 = sub_100080804(__dst, v120 + 4, v119, v118);
          v122 = *__dst;
          v123 = *&__dst[8];

          sub_100042570(v122);
          if (v121 == v119)
          {
            v44 = v162;
            goto LABEL_86;
          }

          __break(1u);
LABEL_135:
          swift_once();
        }

        else
        {
          v44 = v162;
          if (!v189[2])
          {

            if (qword_10016A678 != -1)
            {
              swift_once();
            }

            sub_100026F50(qword_10016D0C8, qword_10016D0E0);
            sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
            type metadata accessor for LogMessage();
            *(swift_allocObject() + 16) = xmmword_10012FA10;
            LogMessage.init(stringLiteral:)();
            Logger.info(_:)();

            v44 = v162;
            goto LABEL_121;
          }

LABEL_86:
          v124 = DataSpecification.Namespace.Table.columnSpecs(for:)();

          v125 = v183;
          v123 = *(v183 + 2);
          v126 = *(v124 + 16);
          v195 = v124;
          if (v123 != v126)
          {

            if (!v126)
            {

              a6 = _swiftEmptyArrayStorage;
              goto LABEL_112;
            }

            *__dst = _swiftEmptyArrayStorage;
            sub_10007E9EC(0, v126, 0);
            a6 = *__dst;
            v135 = *(v181 + 16);
            v136 = v124 + ((*(v181 + 80) + 32) & ~*(v181 + 80));
            v197 = *(v181 + 72);
            v198 = v135;
            v181 += 16;
            v196 = (v181 - 8);
            do
            {
              v137 = v187;
              v138 = v188;
              (v198)(v187, v136, v188);
              v139 = DataSpecification.Namespace.Table.Column.name.getter();
              v141 = v140;
              (*v196)(v137, v138);
              *__dst = a6;
              v143 = *(a6 + 16);
              v142 = *(a6 + 24);
              if (v143 >= v142 >> 1)
              {
                sub_10007E9EC((v142 > 1), v143 + 1, 1);
                a6 = *__dst;
              }

              *(a6 + 16) = v143 + 1;
              v144 = a6 + 16 * v143;
              *(v144 + 32) = v139;
              *(v144 + 40) = v141;
              v136 += v197;
              --v126;
            }

            while (v126);
            goto LABEL_103;
          }

          if (qword_10016A678 != -1)
          {
            goto LABEL_135;
          }
        }

        v35 = qword_10016D0E0;
        v198 = unk_10016D0E8;
        sub_100026F50(qword_10016D0C8, qword_10016D0E0);
        sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
        type metadata accessor for LogMessage();
        *(swift_allocObject() + 16) = xmmword_10012FA10;
        LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
        v127._countAndFlagsBits = 0x20676E69646441;
        v127._object = 0xE700000000000000;
        LogMessage.StringInterpolation.appendLiteral(_:)(v127);
        *&__dst[24] = &type metadata for Int;
        *__dst = v123;
        LogMessage.StringInterpolation.appendInterpolation(safe:)();
        sub_10002BA6C(__dst, &qword_10016AB10, &unk_100130B10);
        v128._countAndFlagsBits = 0xD000000000000019;
        v128._object = 0x800000010013D610;
        LogMessage.StringInterpolation.appendLiteral(_:)(v128);
        v31 = &type metadata for String;
        *&__dst[24] = &type metadata for String;
        *__dst = v184;

        LogMessage.StringInterpolation.appendInterpolation(safe:)();
        sub_10002BA6C(__dst, &qword_10016AB10, &unk_100130B10);
        v129._countAndFlagsBits = 0x686373206E69202CLL;
        v129._object = 0xED0000203A616D65;
        LogMessage.StringInterpolation.appendLiteral(_:)(v129);
        *&__dst[24] = &type metadata for String;
        *__dst = v180;

        LogMessage.StringInterpolation.appendInterpolation(safe:)();
        sub_10002BA6C(__dst, &qword_10016AB10, &unk_100130B10);
        v130._countAndFlagsBits = 0;
        v130._object = 0xE000000000000000;
        LogMessage.StringInterpolation.appendLiteral(_:)(v130);
        LogMessage.init(stringInterpolation:)();
        Logger.info(_:)();

        v196 = *(v195 + 16);
        if (v196)
        {
          v131 = 0;
          v44 = v162;
          v193 = (v164 + 8);
          v194 = (v163 + 8);
          v197 = v181 + 8;
          v198 = v181 + 16;
          a6 = *(&v184 + 1);
          v7 = v184;
          v31 = v171;
          v35 = v172;
          while (1)
          {
            v30 = v195;
            if (v131 >= *(v195 + 16))
            {
              goto LABEL_131;
            }

            (*(v181 + 16))(v35, v195 + ((*(v181 + 80) + 32) & ~*(v181 + 80)) + *(v181 + 72) * v131, v188);
            if (DataSpecification.Namespace.Table.Column.isPrimaryKey.getter())
            {
              goto LABEL_118;
            }

            if ((DataSpecification.Namespace.Table.Column.isNullable.getter() & 1) == 0)
            {

              v152 = type metadata accessor for DaemonError();
              sub_1000F820C(&qword_10016AB40, &type metadata accessor for DaemonError, &protocol conformance descriptor for DaemonError);
              swift_allocError();
              v153 = v35;
              v155 = v158;
              *v158 = DataSpecification.Namespace.Table.Column.name.getter();
              v155[1] = v159;
              v155[2] = v7;
              v155[3] = a6;
              v157 = &enum case for DaemonError.newNonNullableColumn(_:);
              goto LABEL_120;
            }

            Table.init(_:database:)();
            DataSpecification.Namespace.Table.Column.name.getter();
            v132 = v168;
            DataSpecification.Namespace.Table.Column.datatype.getter();
            DataSpecification.Namespace.Table.Column.Datatype.sqlDatatype.getter();
            (*v194)(v132, v169);
            DataSpecification.Namespace.Table.Column.isNullable.getter();
            DataSpecification.Namespace.Table.Column.isUnique.getter();
            *&v208 = 0;
            memset(__dst, 0, sizeof(__dst));
            v31 = v171;
            v133 = v185;
            Table.addColumn(_:datatype:isNullable:isUnique:defaultValue:)();
            if (v133)
            {

              sub_10002BA6C(__dst, &qword_10016B708, &unk_100133390);
              (*v193)(v31, v175);
              (*v197)(v172, v188);
              (*(v167 + 8))(v179, v166);
              v44 = v162;
              goto LABEL_122;
            }

            sub_10002BA6C(__dst, &qword_10016B708, &unk_100133390);
            (*v193)(v31, v175);
            v134 = v182;
            Connection.run(_:_:)();
            v44 = v162;
            v185 = 0;
            ++v131;

            v35 = v172;
            (*v197)(v172, v188);
            a6 = *(&v184 + 1);
            v7 = v184;
            v30 = v170;
            if (v196 == v131)
            {
              goto LABEL_105;
            }
          }
        }

        a6 = *(&v184 + 1);
        v7 = v184;
        v134 = v182;
        v30 = v170;
LABEL_105:

        v145 = v189;
        v197 = v189[2];
        if (!v197)
        {
LABEL_110:

          sub_1000F3038(v7, a6, v180, *(&v180 + 1), v134, 1);
          v44 = v162;
          goto LABEL_121;
        }

        v44 = 0;
        v146 = (v189 + 4);
        v198 = v164 + 8;
        while (v44 < v145[2])
        {
          sub_1000F67F8(v146, __dst);

          Table.init(_:database:)();
          sub_100026F50(__dst, *&__dst[24]);
          Expressible.columnName.getter();
          v31 = v30;
          sub_100026EEC(v210, &v199);
          v147 = v185;
          Table.addColumn(_:datatype:isNullable:isUnique:defaultValue:)();
          if (v147)
          {

            sub_10002BA6C(&v199, &qword_10016B708, &unk_100133390);
            (*v198)(v30, v175);
            (*(v167 + 8))(v179, v166);
            sub_1000F6854(__dst);
            v44 = v162;
            goto LABEL_122;
          }

          sub_10002BA6C(&v199, &qword_10016B708, &unk_100133390);
          (*v198)(v30, v175);
          v134 = v182;
          v148 = Connection.run(_:_:)();
          v185 = 0;
          v35 = v148;
          v44 = (v44 + 1);

          sub_1000F6854(__dst);
          v146 += 120;
          a6 = *(&v184 + 1);
          v7 = v184;
          v145 = v189;
          if (v197 == v44)
          {
            goto LABEL_110;
          }
        }

LABEL_132:
        __break(1u);
LABEL_133:
        swift_once();
        continue;
      }
    }

    v52 = v51;
    v213 = _swiftEmptyArrayStorage;
    sub_10007E9EC(0, v51 & ~(v51 >> 63), 0);
    if (v52 < 0)
    {
      __break(1u);
LABEL_131:
      __break(1u);
      goto LABEL_132;
    }

    v35 = 0;
    v7 = v213;
    v196 = v52;
    while (1)
    {
      v53 = sub_10002A2D8(&v199, v35);
      sub_10002A2E8(__dst, v53);
      v54 = std::string::basic_string(&v212, v209);
      sub_10002EFB0(v54);
      sub_10002EFC4(&v212);
      v31 = static String._fromUTF8Repairing(_:)();
      v56 = v55;
      sub_10001B830(__dst);
      std::string::~string(&v212);
      v213 = v7;
      a6 = *(v7 + 16);
      v57 = *(v7 + 24);
      if (a6 >= v57 >> 1)
      {
        sub_10007E9EC((v57 > 1), a6 + 1, 1);
        v7 = v213;
      }

      *(v7 + 16) = a6 + 1;
      v58 = v7 + 16 * a6;
      *(v58 + 32) = v31;
      *(v58 + 40) = v56;
      v59 = sub_10002A1C8(&v199);
      v60 = sub_10002A1D0(&v199);
      *__dst = v59;
      v212.__r_.__value_.__r.__words[0] = v60;
      if (v35 >= sub_10002A2B8(__dst, &v212))
      {
        break;
      }

      ++v35;
      v61 = v195;
      if (v196 == v35)
      {
        sub_1000785A4(&v199);
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_126:
    __break(1u);
LABEL_127:
    __break(1u);
LABEL_128:
    __break(1u);
  }

LABEL_122:
  sub_1000F7B88("addNewColumns", 13, 2, v44);
}

uint64_t sub_1000EFBC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v26 = a5;
  v27 = a6;
  v25 = a4;
  v24 = a3;
  v34 = a1;
  v33 = type metadata accessor for DataSpecification.Namespace.Table.Column.Datatype();
  v7 = *(v33 - 8);
  __chkstk_darwin(v33);
  v32 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for DataSpecification.Namespace.Table.Column();
  v9 = *(v41 - 8);
  __chkstk_darwin(v41);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = DataSpecification.Namespace.Table.columns.getter();
  v31 = *(result + 16);
  if (v31)
  {
    v13 = 0;
    v28 = (v7 + 8);
    v29 = v9 + 16;
    v30 = (v9 + 8);
    v35._rawValue = _swiftEmptyArrayStorage;
    while (v13 < *(result + 16))
    {
      v14 = result;
      (*(v9 + 16))(v11, result + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v13, v41);
      v15 = DataSpecification.Namespace.Table.Column.name.getter();
      v39 = &type metadata for String;
      v40 = &protocol witness table for String;
      *&v38 = v15;
      *(&v38 + 1) = v16;
      v17 = v32;
      DataSpecification.Namespace.Table.Column.datatype.getter();
      DataSpecification.Namespace.Table.Column.Datatype.sqlDatatype.getter();
      (*v28)(v17, v33);
      DataSpecification.Namespace.Table.Column.isUnique.getter();
      DataSpecification.Namespace.Table.Column.isNullable.getter();
      v37 = 0;
      memset(v36, 0, sizeof(v36));
      TableBuilder.column(_:datatype:isPrimaryKey:isUnique:isNullable:defaultValue:)();
      if (v6)
      {

        sub_10002BA6C(v36, &qword_10016B708, &unk_100133390);
        (*v30)(v11, v41);

        return sub_100026FDC(&v38);
      }

      sub_10002BA6C(v36, &qword_10016B708, &unk_100133390);

      sub_100026FDC(&v38);
      if (DataSpecification.Namespace.Table.Column.isPrimaryKey.getter())
      {
        v18 = DataSpecification.Namespace.Table.Column.name.getter();
        v20 = v19;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v35._rawValue = sub_10007E5C8(0, *(v35._rawValue + 2) + 1, 1, v35._rawValue);
        }

        v22 = *(v35._rawValue + 2);
        v21 = *(v35._rawValue + 3);
        if (v22 >= v21 >> 1)
        {
          v35._rawValue = sub_10007E5C8((v21 > 1), v22 + 1, 1, v35._rawValue);
        }

        (*v30)(v11, v41);
        v39 = &type metadata for String;
        v40 = &protocol witness table for String;
        *&v38 = v18;
        *(&v38 + 1) = v20;
        v23 = v35._rawValue + 40 * v22;
        *(v35._rawValue + 2) = v22 + 1;
        sub_10002C604(&v38, (v23 + 32));
      }

      else
      {
        (*v30)(v11, v41);
      }

      ++v13;
      result = v14;
      if (v31 == v13)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    v35._rawValue = _swiftEmptyArrayStorage;
LABEL_14:

    sub_1000822F4(v34, v24, v25, v26, v27);
    if (!v6)
    {
      if (*(v35._rawValue + 2))
      {
        TableBuilder.primaryKey(_:)(v35);
      }
    }
  }

  return result;
}

uint64_t sub_1000F002C(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5)
{
  v44 = a5;
  v41 = a2;
  v47 = type metadata accessor for OSSignpostID();
  v46 = *(v47 - 8);
  __chkstk_darwin(v47);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for OSSignposter();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10016A680 != -1)
  {
    swift_once();
  }

  v14 = sub_10002FD14(v10, qword_10016D0F0);
  v43 = v11;
  v15 = *(v11 + 16);
  v45 = v10;
  v15(v13, v14, v10);
  static OSSignpostID.exclusive.getter();
  v16 = swift_slowAlloc();
  *v16 = 0;
  v40 = v13;
  v17 = OSSignposter.logHandle.getter();
  v18 = static os_signpost_type_t.begin.getter();
  v42 = v9;
  v19 = OSSignpostID.rawValue.getter();
  v39 = v17;
  v36 = v16;
  _os_signpost_emit_with_name_impl(&_mh_execute_header, v17, v18, v19, "createDatabaseTriggers", "", v16, 2u);
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v20 = a3;
  if (qword_10016A678 != -1)
  {
    swift_once();
  }

  sub_100026F50(qword_10016D0C8, qword_10016D0E0);
  sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_10012FA10;
  LogMessage.init(stringLiteral:)();
  Logger.info(_:)();

  v21 = a1;
  v37 = a1;
  v22 = v41;
  v23 = a3;
  v24 = a4;
  v25 = v44;
  v26 = v38;
  sub_1000F42B4(v21, v41, v20, a4, v44);
  if (v26)
  {
    v28 = v42;
    v27 = v43;
    v29 = v40;
  }

  else
  {
    sub_1000F6DE4(v37, v22);
    v28 = v42;
    v27 = v43;
    v29 = v40;
    sub_1000F714C(v37, v22, v23, v24, v25);
    sub_1000F7638(v37, v22, v25);
    sub_1000F3038(v37, v22, v23, v24, v25, 0);
    sub_1000F4D2C(v37, v22, v23, v24, v25);
    v31 = static os_signpost_type_t.end.getter();
    v32 = OSSignpostID.rawValue.getter();
    v33 = v31;
    v34 = v39;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v39, v33, v32, "createDatabaseTriggers", "", v36, 2u);
  }

  (*(v46 + 8))(v28, v47);
  return (*(v27 + 8))(v29, v45);
}

uint64_t sub_1000F0540@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v22[1] = a1;
  v22[0] = a3;
  v30 = type metadata accessor for Insert();
  v23 = *(v30 - 8);
  __chkstk_darwin(v30);
  v5 = v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for InsertRequest();
  sub_1000F820C(&qword_10016D268, &type metadata accessor for InsertRequest, &protocol conformance descriptor for InsertRequest);
  v6 = dispatch thunk of QueryRequest.statement.getter();
  v8 = v7;
  v9 = (a2 + *(sub_100026F94(&qword_10016D258, &qword_100133350) + 40));
  v11 = *v9;
  v10 = v9[1];
  v28 = v6;
  v29 = v8;
  v26 = v11;
  v27 = v10;

  v12._countAndFlagsBits = 46;
  v12._object = 0xE100000000000000;
  String.append(_:)(v12);
  v24 = 0;
  v25 = 0xE000000000000000;
  sub_10002C5B0();
  v13 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v15 = v14;

  v28 = v13;
  v29 = v15;
  v26 = 34;
  v27 = 0xE100000000000000;
  v16._countAndFlagsBits = v11;
  v16._object = v10;
  String.append(_:)(v16);
  v17._countAndFlagsBits = 11810;
  v17._object = 0xE200000000000000;
  String.append(_:)(v17);
  v24 = 0;
  v25 = 0xE000000000000000;
  StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

  Insert.init(_:_:)();
  v18 = v22[2];
  v19 = Connection.run(_:)();
  if (v18)
  {
    return (*(v23 + 8))(v5, v30);
  }

  v21 = v19;
  result = (*(v23 + 8))(v5, v30);
  *v22[0] = v21;
  return result;
}

uint64_t sub_1000F0814(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[22] = a5;
  v6[23] = v5;
  v6[20] = a3;
  v6[21] = a4;
  v6[18] = a1;
  v6[19] = a2;
  v7 = sub_100026F94(&qword_10016B008, &unk_100130F30);
  v8 = swift_task_alloc();
  v6[24] = v8;
  *v8 = v6;
  v8[1] = sub_1000F08E0;

  return BaseObjectGraph.inject<A>(_:)(v6 + 13, v7, v7);
}

uint64_t sub_1000F08E0()
{
  v2 = *v1;
  v2[25] = v0;

  if (v0)
  {
    v3 = v2[23];

    return _swift_task_switch(sub_1000F0E88, v3, 0);
  }

  else
  {
    v4 = swift_task_alloc();
    v2[26] = v4;
    *v4 = v2;
    v4[1] = sub_1000F0A64;

    return BaseObjectGraph.inject<A>(_:)(v2 + 2, &type metadata for ClientInfo, &type metadata for ClientInfo);
  }
}

uint64_t sub_1000F0A64()
{
  v2 = *(*v1 + 184);
  *(*v1 + 216) = v0;

  if (v0)
  {
    v3 = sub_1000F0EA0;
  }

  else
  {
    v3 = sub_1000F0B8C;
  }

  return _swift_task_switch(v3, v2, 0);
}

uint64_t sub_1000F0B8C()
{
  sub_100026F50(v0 + 13, v0[16]);
  v1 = AccessCredential.requestId.getter();
  v3 = v2;
  v0[28] = v2;
  v4 = swift_task_alloc();
  v0[29] = v4;
  *v4 = v0;
  v4[1] = sub_1000F0C68;
  v5 = v0[20];
  v6 = v0[21];
  v7 = v0[18];
  v8 = v0[19];

  return sub_10005DCF8(v1, v3, (v0 + 2), v7, v8, v5, v6);
}

uint64_t sub_1000F0C68()
{
  v2 = *v1;
  *(*v1 + 240) = v0;

  v3 = *(v2 + 184);
  if (v0)
  {
    v4 = sub_1000F0E1C;
  }

  else
  {
    v4 = sub_1000F0DB0;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1000F0DB0()
{
  sub_100042AFC(v0 + 16);
  sub_100026FDC((v0 + 104));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000F0E1C()
{
  sub_100042AFC(v0 + 16);
  sub_100026FDC((v0 + 104));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000F0EA0()
{
  sub_100026FDC((v0 + 104));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000F0F04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v22[1] = a1;
  v22[0] = a3;
  v30 = type metadata accessor for Update();
  v23 = *(v30 - 8);
  __chkstk_darwin(v30);
  v5 = v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for UpdateRequest();
  sub_1000F820C(&qword_10016D2A0, &type metadata accessor for UpdateRequest, &protocol conformance descriptor for UpdateRequest);
  v6 = dispatch thunk of QueryRequest.statement.getter();
  v8 = v7;
  v9 = (a2 + *(sub_100026F94(&qword_10016D298, &qword_1001333F0) + 40));
  v11 = *v9;
  v10 = v9[1];
  v28 = v6;
  v29 = v8;
  v26 = v11;
  v27 = v10;

  v12._countAndFlagsBits = 46;
  v12._object = 0xE100000000000000;
  String.append(_:)(v12);
  v24 = 0;
  v25 = 0xE000000000000000;
  sub_10002C5B0();
  v13 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v15 = v14;

  v28 = v13;
  v29 = v15;
  v26 = 34;
  v27 = 0xE100000000000000;
  v16._countAndFlagsBits = v11;
  v16._object = v10;
  String.append(_:)(v16);
  v17._countAndFlagsBits = 11810;
  v17._object = 0xE200000000000000;
  String.append(_:)(v17);
  v24 = 0;
  v25 = 0xE000000000000000;
  StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

  Update.init(_:_:)();
  v18 = v22[2];
  v19 = Connection.run(_:)();
  if (v18)
  {
    return (*(v23 + 8))(v5, v30);
  }

  v21 = v19;
  result = (*(v23 + 8))(v5, v30);
  *v22[0] = v21;
  return result;
}

uint64_t sub_1000F11D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v22[1] = a1;
  v22[0] = a3;
  v30 = type metadata accessor for Delete();
  v23 = *(v30 - 8);
  __chkstk_darwin(v30);
  v5 = v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for DeleteRequest();
  sub_1000F820C(&qword_10016D2B8, &type metadata accessor for DeleteRequest, &protocol conformance descriptor for DeleteRequest);
  v6 = dispatch thunk of QueryRequest.statement.getter();
  v8 = v7;
  v9 = (a2 + *(sub_100026F94(&qword_10016D2B0, &qword_100133430) + 40));
  v11 = *v9;
  v10 = v9[1];
  v28 = v6;
  v29 = v8;
  v26 = v11;
  v27 = v10;

  v12._countAndFlagsBits = 46;
  v12._object = 0xE100000000000000;
  String.append(_:)(v12);
  v24 = 0;
  v25 = 0xE000000000000000;
  sub_10002C5B0();
  v13 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v15 = v14;

  v28 = v13;
  v29 = v15;
  v26 = 34;
  v27 = 0xE100000000000000;
  v16._countAndFlagsBits = v11;
  v16._object = v10;
  String.append(_:)(v16);
  v17._countAndFlagsBits = 11810;
  v17._object = 0xE200000000000000;
  String.append(_:)(v17);
  v24 = 0;
  v25 = 0xE000000000000000;
  StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

  Delete.init(_:_:)();
  v18 = v22[2];
  v19 = Connection.run(_:)();
  if (v18)
  {
    return (*(v23 + 8))(v5, v30);
  }

  v21 = v19;
  result = (*(v23 + 8))(v5, v30);
  *v22[0] = v21;
  return result;
}

uint64_t sub_1000F14AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[32] = a5;
  v6[33] = v5;
  v6[30] = a3;
  v6[31] = a4;
  v6[28] = a1;
  v6[29] = a2;
  type metadata accessor for LogMessage.StringInterpolation();
  v6[34] = swift_task_alloc();
  sub_100026F94(&qword_10016AD80, &qword_1001311B0);
  v6[35] = swift_task_alloc();
  v7 = type metadata accessor for AccessCredential();
  v6[36] = v7;
  v6[37] = *(v7 - 8);
  v6[38] = swift_task_alloc();
  v6[39] = type metadata accessor for DatabaseConnectionManagerImplementation.ConnectionKey(0);
  v6[40] = swift_task_alloc();
  v8 = type metadata accessor for StorageCategory();
  v6[41] = v8;
  v6[42] = *(v8 - 8);
  v6[43] = swift_task_alloc();
  v6[44] = swift_task_alloc();

  return _swift_task_switch(sub_1000F1670, v5, 0);
}

uint64_t sub_1000F1670()
{
  v1 = *(v0 + 352);
  v2 = *(v0 + 264);
  v4 = *(v0 + 232);
  v3 = *(v0 + 240);
  v5 = sub_100026F50((v2 + OBJC_IVAR____TtC19amsondevicestoraged13ClientSession_dbManager), *(v2 + OBJC_IVAR____TtC19amsondevicestoraged13ClientSession_dbManager + 24));
  *(v0 + 200) = v4;
  *(v0 + 208) = v3;

  *(v0 + 360) = String.init<A>(_:)();
  *(v0 + 368) = v6;
  v7 = v2 + OBJC_IVAR____TtC19amsondevicestoraged13ClientSession_id;
  *(v0 + 376) = *(v2 + OBJC_IVAR____TtC19amsondevicestoraged13ClientSession_id);
  *(v0 + 384) = *(v7 + 8);
  v8 = enum case for StorageCategory.classC(_:);
  *(v0 + 520) = enum case for StorageCategory.classC(_:);
  v9 = type metadata accessor for StorageCategory();
  (*(*(v9 - 8) + 104))(v1, v8, v9);
  *(v0 + 392) = *v5;

  return _swift_task_switch(sub_1000F17AC, 0, 0);
}

uint64_t sub_1000F17AC()
{
  v1 = *(v0 + 392);
  (*(*(v0 + 336) + 104))(*(v0 + 344), *(v0 + 520), *(v0 + 328));

  return _swift_task_switch(sub_1000F182C, v1, 0);
}

uint64_t sub_1000F182C()
{
  v1 = v0[45];
  v2 = v0[46];
  v3 = v0[40];
  v4 = v0[39];
  v5 = v0[31];
  (*(v0[42] + 16))(&v3[v4[5]], v0[43], v0[41]);
  v7 = *(v5 + 16);
  v6 = *(v5 + 24);
  *v3 = v1;
  *(v3 + 1) = v2;
  v8 = &v3[v4[6]];
  *v8 = v7;
  *(v8 + 1) = v6;
  v3[v4[7]] = 0;
  v3[v4[8]] = 1;

  v9 = swift_task_alloc();
  v0[50] = v9;
  *v9 = v0;
  v9[1] = sub_1000F1934;
  v10 = v0[48];
  v11 = v0[47];
  v12 = v0[40];

  return sub_100050F58(v12, v11, v10);
}

uint64_t sub_1000F1934(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 320);
  v3[51] = a1;
  v3[52] = v1;

  sub_1000F65EC(v4, type metadata accessor for DatabaseConnectionManagerImplementation.ConnectionKey);
  if (v1)
  {
    v5 = v3[49];
    v6 = sub_1000F1E28;
  }

  else
  {
    v7 = v3[43];
    v8 = v3[44];
    v9 = v3[41];
    v10 = v3[42];
    v11 = v3[33];
    v12 = *(v10 + 8);
    v12(v7, v9);
    v12(v8, v9);
    v6 = sub_1000F1AC8;
    v5 = v11;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1000F1AC8()
{
  v1 = *(v0 + 296);
  v2 = *(v0 + 264);
  v3 = *(v0 + 224);
  v4 = v3[2];
  v5 = OBJC_IVAR____TtC19amsondevicestoraged13ClientSession_credential;
  *(v0 + 424) = v4;
  *(v0 + 432) = v5;
  *(v0 + 456) = 0;
  *(v0 + 464) = 0;
  if (v4)
  {
    v6 = *(v0 + 408);
    v7 = *(v0 + 304);
    v8 = *(v0 + 288);
    v9 = *(v0 + 240);
    v26 = *(v0 + 232);
    v11 = v3[4];
    v10 = v3[5];
    (*(v1 + 16))(v7, v2 + v5, v8);
    type metadata accessor for TTLCleanupTask(0);
    v12 = swift_allocObject();
    *(v0 + 472) = v12;

    swift_defaultActor_initialize();
    v12[14] = v11;
    v12[15] = v10;
    v12[16] = v26;
    v12[17] = v9;
    (*(v1 + 32))(v12 + OBJC_IVAR____TtC19amsondevicestoraged14TTLCleanupTask_credentialSource, v7, v8);
    type metadata accessor for TTLCleanupTask.CredentialSource(0);
    swift_storeEnumTagMultiPayload();
    *(v12 + OBJC_IVAR____TtC19amsondevicestoraged14TTLCleanupTask_connection) = v6;

    v13 = swift_task_alloc();
    *(v0 + 480) = v13;
    *v13 = v0;
    v13[1] = sub_1000F1FC8;
    v14 = *(v0 + 256);

    return sub_1000BF074(v14);
  }

  else
  {
    v16 = *(v0 + 280);
    v18 = *(v0 + 240);
    v17 = *(v0 + 248);
    v19 = *(v0 + 232);
    v20 = type metadata accessor for TaskPriority();
    (*(*(v20 - 8) + 56))(v16, 1, 1, v20);
    sub_10004F224(v17, v0 + 16);
    v21 = sub_1000F820C(&qword_10016D220, type metadata accessor for ClientSession, &unk_100133238);
    v22 = swift_allocObject();
    v23 = *(v0 + 64);
    *(v22 + 88) = *(v0 + 48);
    *(v22 + 104) = v23;
    *(v22 + 120) = *(v0 + 80);
    v24 = *(v0 + 32);
    *(v22 + 56) = *(v0 + 16);
    *(v22 + 16) = v2;
    *(v22 + 24) = v21;
    *(v22 + 32) = v2;
    *(v22 + 40) = v19;
    *(v22 + 48) = v18;
    *(v22 + 136) = *(v0 + 96);
    *(v22 + 72) = v24;
    swift_retain_n();

    sub_10009C9B8(0, 0, v16, &unk_1001332D0, v22);

    v25 = *(v0 + 8);

    return v25();
  }
}

uint64_t sub_1000F1E28()
{
  v2 = v0[42];
  v1 = v0[43];
  v3 = v0[41];
  v4 = *(v2 + 8);
  v0[55] = v4;
  v0[56] = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v4(v1, v3);

  return _swift_task_switch(sub_1000F1EAC, 0, 0);
}

uint64_t sub_1000F1EAC()
{
  v1 = *(v0 + 264);
  (*(v0 + 440))(*(v0 + 352), *(v0 + 328));

  return _swift_task_switch(sub_1000F1F20, v1, 0);
}

uint64_t sub_1000F1F20()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000F1FC8(uint64_t a1)
{
  v4 = *v2;
  v4[61] = v1;

  v5 = v4[33];
  if (v1)
  {
    v6 = sub_1000F28E0;
  }

  else
  {
    v4[62] = a1;
    v6 = sub_1000F2104;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1000F2104()
{
  v1 = *(v0 + 496);
  v2 = *(v0 + 456);

  v6 = v2 + v1;
  if (__OFADD__(v2, v1))
  {
    __break(1u);
    return BaseObjectGraph.inject<A>(_:)(v3, v4, v5);
  }

  v7 = *(v0 + 464) + 1;
  *(v0 + 456) = v6;
  *(v0 + 464) = v7;
  if (v7 == *(v0 + 424))
  {
    if (v6 >= 1)
    {
      v8 = sub_100026F94(&qword_10016AFE8, &qword_100130F00);
      v9 = swift_task_alloc();
      *(v0 + 504) = v9;
      *v9 = v0;
      v9[1] = sub_1000F252C;
      v3 = v0 + 104;
      v4 = v8;
      v5 = v8;

      return BaseObjectGraph.inject<A>(_:)(v3, v4, v5);
    }

    v23 = *(v0 + 280);
    v24 = *(v0 + 264);
    v26 = *(v0 + 240);
    v25 = *(v0 + 248);
    v27 = *(v0 + 232);
    v28 = type metadata accessor for TaskPriority();
    (*(*(v28 - 8) + 56))(v23, 1, 1, v28);
    sub_10004F224(v25, v0 + 16);
    v29 = sub_1000F820C(&qword_10016D220, type metadata accessor for ClientSession, &unk_100133238);
    v30 = swift_allocObject();
    v31 = *(v0 + 64);
    *(v30 + 88) = *(v0 + 48);
    *(v30 + 104) = v31;
    *(v30 + 120) = *(v0 + 80);
    v32 = *(v0 + 32);
    *(v30 + 56) = *(v0 + 16);
    *(v30 + 16) = v24;
    *(v30 + 24) = v29;
    *(v30 + 32) = v24;
    *(v30 + 40) = v27;
    *(v30 + 48) = v26;
    *(v30 + 136) = *(v0 + 96);
    *(v30 + 72) = v32;
    swift_retain_n();

    sub_10009C9B8(0, 0, v23, &unk_1001332D0, v30);

    v33 = *(v0 + 8);

    return v33();
  }

  else
  {
    v10 = *(v0 + 408);
    v12 = *(v0 + 296);
    v11 = *(v0 + 304);
    v13 = *(v0 + 288);
    v15 = *(v0 + 232);
    v14 = *(v0 + 240);
    v16 = *(v0 + 224) + 16 * v7;
    v18 = *(v16 + 32);
    v17 = *(v16 + 40);
    (*(v12 + 16))(v11, *(v0 + 264) + *(v0 + 432), v13);
    type metadata accessor for TTLCleanupTask(0);
    v19 = swift_allocObject();
    *(v0 + 472) = v19;

    swift_defaultActor_initialize();
    v19[14] = v18;
    v19[15] = v17;
    v19[16] = v15;
    v19[17] = v14;
    (*(v12 + 32))(v19 + OBJC_IVAR____TtC19amsondevicestoraged14TTLCleanupTask_credentialSource, v11, v13);
    type metadata accessor for TTLCleanupTask.CredentialSource(0);
    swift_storeEnumTagMultiPayload();
    *(v19 + OBJC_IVAR____TtC19amsondevicestoraged14TTLCleanupTask_connection) = v10;

    v20 = swift_task_alloc();
    *(v0 + 480) = v20;
    *v20 = v0;
    v20[1] = sub_1000F1FC8;
    v21 = *(v0 + 256);

    return sub_1000BF074(v21);
  }
}

uint64_t sub_1000F252C()
{
  v2 = *v1;
  *(*v1 + 512) = v0;

  v3 = *(v2 + 264);
  if (v0)
  {
    v4 = sub_1000F2C90;
  }

  else
  {
    v4 = sub_1000F2658;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1000F2658()
{
  v1 = *(v0 + 280);
  v2 = *sub_100026F50((v0 + 104), *(v0 + 128));
  v3 = type metadata accessor for TaskPriority();
  v4 = *(*(v3 - 8) + 56);
  v4(v1, 1, 1, v3);
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v2;

  sub_10009C9B8(0, 0, v1, &unk_1001332E0, v5);

  sub_100026FDC((v0 + 104));
  v6 = *(v0 + 280);
  v7 = *(v0 + 264);
  v9 = *(v0 + 240);
  v8 = *(v0 + 248);
  v10 = *(v0 + 232);
  v4(v6, 1, 1, v3);
  sub_10004F224(v8, v0 + 16);
  v11 = sub_1000F820C(&qword_10016D220, type metadata accessor for ClientSession, &unk_100133238);
  v12 = swift_allocObject();
  v13 = *(v0 + 64);
  *(v12 + 88) = *(v0 + 48);
  *(v12 + 104) = v13;
  *(v12 + 120) = *(v0 + 80);
  v14 = *(v0 + 32);
  *(v12 + 56) = *(v0 + 16);
  *(v12 + 16) = v7;
  *(v12 + 24) = v11;
  *(v12 + 32) = v7;
  *(v12 + 40) = v10;
  *(v12 + 48) = v9;
  *(v12 + 136) = *(v0 + 96);
  *(v12 + 72) = v14;
  swift_retain_n();

  sub_10009C9B8(0, 0, v6, &unk_1001332D0, v12);

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_1000F28E0()
{

  if (qword_10016A678 != -1)
  {
    swift_once();
  }

  sub_100026F50(qword_10016D0C8, qword_10016D0E0);
  sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_10012FA10;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v1._object = 0x800000010013D310;
  v1._countAndFlagsBits = 0xD000000000000031;
  LogMessage.StringInterpolation.appendLiteral(_:)(v1);
  swift_getErrorValue();
  v2 = *(v0 + 176);
  v3 = *(v0 + 184);
  *(v0 + 168) = v3;
  v4 = sub_100042BAC((v0 + 144));
  (*(*(v3 - 8) + 16))(v4, v2, v3);
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002BA6C(v0 + 144, &qword_10016AB10, &unk_100130B10);
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v5);
  LogMessage.init(stringInterpolation:)();
  Logger.warning(_:)();

  v6 = *(v0 + 280);
  v7 = *(v0 + 264);
  v9 = *(v0 + 240);
  v8 = *(v0 + 248);
  v10 = *(v0 + 232);
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v6, 1, 1, v11);
  sub_10004F224(v8, v0 + 16);
  v12 = sub_1000F820C(&qword_10016D220, type metadata accessor for ClientSession, &unk_100133238);
  v13 = swift_allocObject();
  v14 = *(v0 + 64);
  *(v13 + 88) = *(v0 + 48);
  *(v13 + 104) = v14;
  *(v13 + 120) = *(v0 + 80);
  v15 = *(v0 + 32);
  *(v13 + 56) = *(v0 + 16);
  *(v13 + 16) = v7;
  *(v13 + 24) = v12;
  *(v13 + 32) = v7;
  *(v13 + 40) = v10;
  *(v13 + 48) = v9;
  *(v13 + 136) = *(v0 + 96);
  *(v13 + 72) = v15;
  swift_retain_n();

  sub_10009C9B8(0, 0, v6, &unk_1001332D0, v13);

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_1000F2C90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_10016A678 != -1)
  {
    swift_once();
  }

  sub_100026F50(qword_10016D0C8, qword_10016D0E0);
  sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_10012FA10;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v4._object = 0x800000010013D310;
  v4._countAndFlagsBits = 0xD000000000000031;
  LogMessage.StringInterpolation.appendLiteral(_:)(v4);
  swift_getErrorValue();
  v5 = *(v3 + 176);
  v6 = *(v3 + 184);
  *(v3 + 168) = v6;
  v7 = sub_100042BAC((v3 + 144));
  (*(*(v6 - 8) + 16))(v7, v5, v6);
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002BA6C(v3 + 144, &qword_10016AB10, &unk_100130B10);
  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v8);
  LogMessage.init(stringInterpolation:)();
  Logger.warning(_:)();

  v9 = *(v3 + 280);
  v10 = *(v3 + 264);
  v12 = *(v3 + 240);
  v11 = *(v3 + 248);
  v13 = *(v3 + 232);
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v9, 1, 1, v14);
  sub_10004F224(v11, v3 + 16);
  v15 = sub_1000F820C(&qword_10016D220, type metadata accessor for ClientSession, &unk_100133238);
  v16 = swift_allocObject();
  v17 = *(v3 + 64);
  *(v16 + 88) = *(v3 + 48);
  *(v16 + 104) = v17;
  *(v16 + 120) = *(v3 + 80);
  v18 = *(v3 + 32);
  *(v16 + 56) = *(v3 + 16);
  *(v16 + 16) = v10;
  *(v16 + 24) = v15;
  *(v16 + 32) = v10;
  *(v16 + 40) = v13;
  *(v16 + 48) = v12;
  *(v16 + 136) = *(v3 + 96);
  *(v16 + 72) = v18;
  swift_retain_n();

  sub_10009C9B8(0, 0, v9, &unk_1001332D0, v16);

  v19 = *(v3 + 8);

  return v19();
}

uint64_t sub_1000F3038(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5, int a6)
{
  v124._countAndFlagsBits = a3;
  LODWORD(v128) = a6;
  v124._object = a4;
  v9 = sub_100026F94(&qword_10016AD28, &unk_1001318C0);
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v114 = &v107 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v107 - v13;
  v133 = type metadata accessor for DataSpecification.Namespace.Table.Column.Datatype();
  v115 = *(v133 - 8);
  __chkstk_darwin(v133);
  v132 = &v107 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = type metadata accessor for ColumnDefinition();
  v134 = *(v131 - 8);
  __chkstk_darwin(v131);
  v130 = &v107 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = type metadata accessor for DataSpecification.Namespace.Table.Column();
  v135 = *(v127 - 8);
  __chkstk_darwin(v127);
  v18 = &v107 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = type metadata accessor for AccessCredential.Error();
  v118 = *(v119 - 8);
  __chkstk_darwin(v119);
  v122 = &v107 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for DataSpecification();
  v120 = *(v20 - 8);
  v121 = v20;
  __chkstk_darwin(v20);
  v22 = &v107 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = type metadata accessor for DataSpecification.Namespace.Table();
  v116 = *(v117 - 8);
  __chkstk_darwin(v117);
  v126 = &v107 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = a5;
  if ((Connection.isServiceConnection.getter() & 1) == 0)
  {
    v125 = v18;
    v111 = v14;
    v109 = v10;
    v110 = v9;
    v137[0] = 0;
    v137[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(32);

    v137[0] = 0x5F6B63656863;
    v137[1] = 0xE600000000000000;
    v25._countAndFlagsBits = a1;
    v25._object = a2;
    String.append(_:)(v25);
    v26._countAndFlagsBits = 0xD000000000000018;
    v26._object = 0x800000010013D650;
    String.append(_:)(v26);
    v28 = v137[0];
    v27 = v137[1];
    v137[0] = 0;
    v137[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(32);

    v137[0] = 0x5F6B63656863;
    v137[1] = 0xE600000000000000;
    v113._countAndFlagsBits = a1;
    v29._countAndFlagsBits = a1;
    v113._object = a2;
    v29._object = a2;
    String.append(_:)(v29);
    v30._countAndFlagsBits = 0xD000000000000018;
    v30._object = 0x800000010013D670;
    String.append(_:)(v30);
    object = v137[1];
    v112._countAndFlagsBits = v137[0];
    if (v128)
    {
      v112._object = v137[1];
      v137[0] = 0;
      v137[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(25);

      v137[0] = 0xD000000000000017;
      v137[1] = 0x800000010013D800;
      v32._countAndFlagsBits = v28;
      v32._object = v27;
      String.append(_:)(v32);
      v33 = v136;
      Connection.run(_:_:)();
      v34 = v33;
      if (v33)
      {
      }

      v108 = v28;

      v137[0] = 0;
      v137[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(25);

      v137[0] = 0xD000000000000017;
      v137[1] = 0x800000010013D800;
      object = v112._object;
      String.append(_:)(v112);
      Connection.run(_:_:)();
    }

    else
    {
      v108 = v28;
      v34 = v136;
    }

    Connection.schema.getter();
    v35 = dispatch thunk of SchemaReader.columnDefinitions(table:)();
    v36 = v126;
    if (v34)
    {
    }

    v107 = v35;

    AccessCredential.dataSpecification.getter();
    _s19OnDeviceStorageCore17DataSpecificationV05tableF03for2inAC9NamespaceV5TableVSS_SStAA16AccessCredentialV5ErrorOYKF();
    v122 = v27;
    (*(v120 + 8))(v22, v121);
    v37 = *(v107 + 16);
    v112._object = object;
    v136 = 0;
    if (v37)
    {
      v137[0] = _swiftEmptyArrayStorage;
      v38 = v107;
      sub_10007E9EC(0, v37, 0);
      v39 = v137[0];
      v128 = *(v134 + 16);
      v40 = v38 + ((*(v134 + 80) + 32) & ~*(v134 + 80));
      v123 = *(v134 + 72);
      v134 += 16;
      v41 = (v134 - 8);
      do
      {
        v42 = v130;
        v43 = v131;
        v128(v130, v40, v131);
        v44 = ColumnDefinition.name.getter();
        v46 = v45;
        (*v41)(v42, v43);
        v137[0] = v39;
        v48 = *(v39 + 16);
        v47 = *(v39 + 24);
        if (v48 >= v47 >> 1)
        {
          sub_10007E9EC((v47 > 1), v48 + 1, 1);
          v39 = v137[0];
        }

        *(v39 + 16) = v48 + 1;
        v49 = v39 + 16 * v48;
        *(v49 + 32) = v44;
        *(v49 + 40) = v46;
        v40 += v123;
        --v37;
      }

      while (v37);

      v36 = v126;
    }

    else
    {
    }

    v50 = DataSpecification.Namespace.Table.columnSpecs(for:)();

    (*(v116 + 8))(v36, v117);
    v51 = *(v50 + 16);
    if (v51)
    {
      v134 = *(v135 + 16);
      v52 = *(v135 + 80);
      v128 = v50;
      v53 = v50 + ((v52 + 32) & ~v52);
      v131 = *(v135 + 72);
      v130 = v115 + 8;
      v135 += 16;
      v54 = (v135 - 8);
      v55 = _swiftEmptyArrayStorage;
      v56 = v127;
      do
      {
        v57 = v125;
        (v134)(v125, v53, v56);
        v58 = v132;
        DataSpecification.Namespace.Table.Column.datatype.getter();
        v59 = DataSpecification.Namespace.Table.Column.Datatype.sizeLimit.getter();
        v61 = v60;
        (*v130)(v58, v133);
        if (v61)
        {
          (*v54)(v57, v56);
        }

        else
        {
          v137[0] = 0;
          v137[1] = 0xE000000000000000;
          _StringGuts.grow(_:)(21);

          strcpy(v137, "(LENGTH(NEW.");
          BYTE5(v137[1]) = 0;
          HIWORD(v137[1]) = -5120;
          v62._countAndFlagsBits = DataSpecification.Namespace.Table.Column.name.getter();
          String.append(_:)(v62);

          v63._countAndFlagsBits = 540942377;
          v63._object = 0xE400000000000000;
          String.append(_:)(v63);
          v137[4] = v59;
          v64._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
          String.append(_:)(v64);

          v65._countAndFlagsBits = 41;
          v65._object = 0xE100000000000000;
          String.append(_:)(v65);
          v66 = v137[0];
          v67 = v137[1];
          (*v54)(v57, v56);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v55 = sub_10007E054(0, *(v55 + 2) + 1, 1, v55);
          }

          v69 = *(v55 + 2);
          v68 = *(v55 + 3);
          if (v69 >= v68 >> 1)
          {
            v55 = sub_10007E054((v68 > 1), v69 + 1, 1, v55);
          }

          *(v55 + 2) = v69 + 1;
          v70 = &v55[16 * v69];
          *(v70 + 4) = v66;
          *(v70 + 5) = v67;
          v56 = v127;
        }

        v53 += v131;
        --v51;
      }

      while (v51);
    }

    else
    {

      v55 = _swiftEmptyArrayStorage;
    }

    v137[0] = v55;
    sub_100026F94(&qword_10016AB28, &qword_100131390);
    sub_10002B95C(&qword_10016AB30, &qword_10016AB28, &qword_100131390, &protocol conformance descriptor for [A]);
    v71 = BidirectionalCollection<>.joined(separator:)();
    v73 = v72;

    v74 = HIBYTE(v73) & 0xF;
    if ((v73 & 0x2000000000000000) == 0)
    {
      v74 = v71 & 0xFFFFFFFFFFFFLL;
    }

    if (v74)
    {
      v134 = 0xD000000000000020;
      v135 = v71;
      v137[0] = 0xD000000000000020;
      v137[1] = 0x800000010013D690;
      countAndFlagsBits = v113._countAndFlagsBits;
      v76 = v113._object;
      String.append(_:)(v113);
      v77._countAndFlagsBits = 656419879;
      v77._object = 0xE400000000000000;
      String.append(_:)(v77);
      String.append(_:)(v124);
      v78._countAndFlagsBits = 10535;
      v78._object = 0xE200000000000000;
      String.append(_:)(v78);
      v79 = sub_10002B95C(&qword_10016AD30, &qword_10016AD28, &unk_1001318C0, &protocol conformance descriptor for Expression<A>);
      v80 = v111;
      v81 = v110;
      v133 = v79;
      ExpressionType.init(literal:)();
      v137[0] = 0;
      v137[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(133);
      v82._countAndFlagsBits = 0xD000000000000027;
      v132 = "DATA_ON_UPDATE('";
      v82._object = 0x800000010013D6C0;
      String.append(_:)(v82);
      v83._countAndFlagsBits = v108;
      v83._object = v122;
      String.append(_:)(v83);

      v84._object = 0x800000010013D6F0;
      v84._countAndFlagsBits = 0xD000000000000012;
      String.append(_:)(v84);
      v85._countAndFlagsBits = countAndFlagsBits;
      v86 = v135;
      v85._object = v76;
      String.append(_:)(v85);
      v87._countAndFlagsBits = 0xD000000000000014;
      v130 = "\nBEFORE UPDATE ON ";
      v87._object = 0x800000010013D710;
      String.append(_:)(v87);
      v88._countAndFlagsBits = v86;
      v88._object = v73;
      String.append(_:)(v88);
      v89._countAndFlagsBits = 0xD00000000000002BLL;
      v131 = "\nFOR EACH ROW\nWHEN (";
      v89._object = 0x800000010013D730;
      String.append(_:)(v89);
      sub_10002B95C(&qword_10016ADC8, &qword_10016AD28, &unk_1001318C0, &protocol conformance descriptor for Expression<A>);
      v90._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v90);

      v91._countAndFlagsBits = 0x444E450A3BLL;
      v91._object = 0xE500000000000000;
      String.append(_:)(v91);
      v92 = v136;
      Connection.run(_:_:)();
      if (v92)
      {
        (*(v109 + 8))(v80, v81);
      }

      else
      {

        v137[0] = v134;
        v137[1] = 0x800000010013D760;
        v93 = v113._countAndFlagsBits;
        v94 = v113._object;
        String.append(_:)(v113);
        v95._countAndFlagsBits = 656419879;
        v95._object = 0xE400000000000000;
        String.append(_:)(v95);
        String.append(_:)(v124);
        v96._countAndFlagsBits = 10535;
        v96._object = 0xE200000000000000;
        String.append(_:)(v96);
        v97 = v114;
        ExpressionType.init(literal:)();
        v137[0] = 0;
        v137[1] = 0xE000000000000000;
        _StringGuts.grow(_:)(133);
        v98._countAndFlagsBits = 0xD000000000000027;
        v98._object = (v132 | 0x8000000000000000);
        String.append(_:)(v98);
        String.append(_:)(v112);

        v99._object = 0x800000010013D790;
        v99._countAndFlagsBits = 0xD000000000000012;
        String.append(_:)(v99);
        v100._countAndFlagsBits = v93;
        v100._object = v94;
        String.append(_:)(v100);
        v101._countAndFlagsBits = 0xD000000000000014;
        v101._object = (v130 | 0x8000000000000000);
        String.append(_:)(v101);
        v102._countAndFlagsBits = v135;
        v102._object = v73;
        String.append(_:)(v102);

        v103._countAndFlagsBits = 0xD00000000000002BLL;
        v103._object = (v131 | 0x8000000000000000);
        String.append(_:)(v103);
        v104._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v104);

        v105._countAndFlagsBits = 0x444E450A3BLL;
        v105._object = 0xE500000000000000;
        String.append(_:)(v105);
        Connection.run(_:_:)();

        v106 = *(v109 + 8);
        v106(v97, v81);
        return (v106)(v111, v81);
      }
    }

    if (qword_10016A678 != -1)
    {
      swift_once();
    }

    sub_100026F50(qword_10016D0C8, qword_10016D0E0);
    sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
    type metadata accessor for LogMessage();
    *(swift_allocObject() + 16) = xmmword_10012FA10;
    LogMessage.init(stringLiteral:)();
    Logger.debug(_:)();
  }

  if (qword_10016A678 != -1)
  {
    swift_once();
  }

  sub_100026F50(qword_10016D0C8, qword_10016D0E0);
  sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_10012FA10;
  LogMessage.init(stringLiteral:)();
  Logger.debug(_:)();
}

uint64_t sub_1000F42B4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v66 = a3;
  v67 = a4;
  v70 = a2;
  *&v71 = a1;
  v6 = type metadata accessor for AccessCredential.Error();
  v61 = *(v6 - 1);
  v62 = v6;
  __chkstk_darwin(v6);
  v8 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DataSpecification();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DataSpecification.Namespace.Table();
  v60 = *(v13 - 8);
  __chkstk_darwin(v13);
  v15 = &v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DataSpecification.Namespace.Table.EvictionPolicy();
  v68 = *(v16 - 8);
  v69 = v16;
  v17 = __chkstk_darwin(v16);
  v19 = &v59 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v63 = &v59 - v20;
  v64 = a5;
  if (Connection.isServiceConnection.getter())
  {
    if (qword_10016A678 != -1)
    {
      swift_once();
    }

    sub_100026F50(qword_10016D0C8, qword_10016D0E0);
    sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
    type metadata accessor for LogMessage();
    *(swift_allocObject() + 16) = xmmword_10012FA10;
    LogMessage.init(stringLiteral:)();
    Logger.debug(_:)();
  }

  else
  {
    AccessCredential.dataSpecification.getter();
    v22 = v76;
    _s19OnDeviceStorageCore17DataSpecificationV05tableF03for2inAC9NamespaceV5TableVSS_SStAA16AccessCredentialV5ErrorOYKF();
    if (v22)
    {
      (*(v10 + 8))(v12, v9);
      sub_1000F820C(&qword_10016AB18, &type metadata accessor for AccessCredential.Error, &protocol conformance descriptor for AccessCredential.Error);
      v23 = v62;
      swift_allocError();
      return (*(v61 + 32))(v24, v8, v23);
    }

    else
    {
      v76 = 0;
      (*(v10 + 8))(v12, v9);
      DataSpecification.Namespace.Table.evictionPolicy.getter();
      (*(v60 + 8))(v15, v13);
      v25 = v68;
      (*(v68 + 104))(v19, enum case for DataSpecification.Namespace.Table.EvictionPolicy.lru(_:), v69);
      sub_1000F820C(&qword_10016D278, &type metadata accessor for DataSpecification.Namespace.Table.EvictionPolicy, &protocol conformance descriptor for DataSpecification.Namespace.Table.EvictionPolicy);
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      if (v74 == v72 && v75 == v73)
      {
        v26 = 1;
      }

      else
      {
        v26 = _stringCompareWithSmolCheck(_:_:expecting:)();
      }

      v27 = *(v25 + 8);
      v68 = v25 + 8;
      v65 = v27;
      v27(v19, v69);

      v28 = v70;
      v29 = v71;
      if (v26)
      {
        v74 = 1601725545;
        v75 = 0xE400000000000000;
        v30._countAndFlagsBits = v71;
        v30._object = v70;
        String.append(_:)(v30);
        v31._countAndFlagsBits = 0x656D69746D5FLL;
        v31._object = 0xE600000000000000;
        String.append(_:)(v31);
        v33 = v74;
        v32 = v75;
        sub_100026F94(&qword_10016AD50, &qword_100130C90);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_10012FA10;
        *(inited + 56) = sub_100026F94(&qword_10016BBD0, &qword_100132F30);
        *(inited + 64) = sub_10002B95C(&qword_10016BBD8, &qword_10016BBD0, &qword_100132F30, &protocol conformance descriptor for Expression<A>);
        sub_100042BAC((inited + 32));
        static Connection.ServiceColumns.modificationTime.getter();
        v29 = v71;
        sub_1000F68E0(v33, v32, v71, v28, inited);

        swift_setDeallocating();
        sub_100026FDC((inited + 32));
      }

      v74 = 0;
      v75 = 0xE000000000000000;
      _StringGuts.grow(_:)(17);

      v74 = 1601725545;
      v75 = 0xE400000000000000;
      v35._countAndFlagsBits = v29;
      v35._object = v28;
      String.append(_:)(v35);
      v36._countAndFlagsBits = 0x5F656C646E75625FLL;
      v36._object = 0xEB00000000736469;
      String.append(_:)(v36);
      v38 = v74;
      v37 = v75;
      v66 = sub_100026F94(&qword_10016AD50, &qword_100130C90);
      v39 = swift_initStackObject();
      v71 = xmmword_10012FA10;
      *(v39 + 16) = xmmword_10012FA10;
      v67 = sub_100026F94(&qword_10016AD28, &unk_1001318C0);
      *(v39 + 56) = v67;
      v62 = &protocol conformance descriptor for Expression<A>;
      v40 = sub_10002B95C(&qword_10016ADA8, &qword_10016AD28, &unk_1001318C0, &protocol conformance descriptor for Expression<A>);
      *(v39 + 64) = v40;
      v61 = v40;
      sub_100042BAC((v39 + 32));
      static Connection.ServiceColumns.bundleIds.getter();
      sub_1000F68E0(v38, v37, v29, v28, v39);

      swift_setDeallocating();
      sub_100026FDC((v39 + 32));
      v74 = 0;
      v75 = 0xE000000000000000;
      _StringGuts.grow(_:)(18);

      v74 = 1601725545;
      v75 = 0xE400000000000000;
      v41._countAndFlagsBits = v29;
      v41._object = v28;
      String.append(_:)(v41);
      v42._countAndFlagsBits = 0x747365757165725FLL;
      v42._object = 0xEC0000007364695FLL;
      String.append(_:)(v42);
      v43 = v74;
      v44 = v75;
      v45 = swift_initStackObject();
      *(v45 + 16) = v71;
      *(v45 + 56) = v67;
      *(v45 + 64) = v40;
      sub_100042BAC((v45 + 32));
      static Connection.ServiceColumns.requestIds.getter();
      sub_1000F68E0(v43, v44, v29, v28, v45);

      swift_setDeallocating();
      sub_100026FDC((v45 + 32));
      v74 = 0;
      v75 = 0xE000000000000000;
      _StringGuts.grow(_:)(27);

      v74 = 1601725545;
      v75 = 0xE400000000000000;
      v46._countAndFlagsBits = v29;
      v46._object = v28;
      String.append(_:)(v46);
      v47._object = 0x800000010013DE00;
      v47._countAndFlagsBits = 0xD000000000000015;
      String.append(_:)(v47);
      v49 = v74;
      v48 = v75;
      v50 = swift_initStackObject();
      *(v50 + 16) = xmmword_100130B20;
      v51 = v61;
      *(v50 + 56) = v67;
      *(v50 + 64) = v51;
      sub_100042BAC((v50 + 32));
      static Connection.ServiceColumns.bundleIds.getter();
      v52 = sub_100026F94(&qword_10016BBD0, &qword_100132F30);
      *(v50 + 96) = v52;
      v53 = sub_10002B95C(&qword_10016BBD8, &qword_10016BBD0, &qword_100132F30, v62);
      *(v50 + 104) = v53;
      sub_100042BAC((v50 + 72));
      static Connection.ServiceColumns.modificationTime.getter();
      sub_1000F68E0(v49, v48, v29, v28, v50);

      swift_setDeallocating();
      sub_100026F94(&qword_10016A948, &unk_100131880);
      swift_arrayDestroy();
      v74 = 1601725545;
      v75 = 0xE400000000000000;
      v54._countAndFlagsBits = v29;
      v54._object = v28;
      String.append(_:)(v54);
      v55._countAndFlagsBits = 0x656D6974635FLL;
      v55._object = 0xE600000000000000;
      String.append(_:)(v55);
      v56 = v74;
      v57 = v75;
      v58 = swift_initStackObject();
      *(v58 + 16) = v71;
      *(v58 + 56) = v52;
      *(v58 + 64) = v53;
      sub_100042BAC((v58 + 32));
      static Connection.ServiceColumns.creationTime.getter();
      sub_1000F68E0(v56, v57, v29, v28, v58);

      swift_setDeallocating();
      sub_100026FDC((v58 + 32));
      return v65(v63, v69);
    }
  }
}

uint64_t sub_1000F4D2C(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5)
{
  v125 = a3;
  v126 = a4;
  v128._countAndFlagsBits = a1;
  v128._object = a2;
  v119 = sub_100026F94(&qword_10016BBD0, &qword_100132F30);
  v109 = *(v119 - 8);
  __chkstk_darwin(v119);
  v117 = &v105 - v6;
  v118 = sub_100026F94(&qword_10016AE38, &unk_1001333A0);
  v108 = *(v118 - 8);
  __chkstk_darwin(v118);
  v116 = &v105 - v7;
  v111 = sub_100026F94(&qword_10016AD28, &unk_1001318C0);
  v107 = *(v111 - 8);
  v8 = __chkstk_darwin(v111);
  v114 = &v105 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v115 = &v105 - v11;
  v12 = __chkstk_darwin(v10);
  v122 = &v105 - v13;
  v14 = __chkstk_darwin(v12);
  v123 = &v105 - v15;
  __chkstk_darwin(v14);
  v124 = &v105 - v16;
  v17 = type metadata accessor for AccessCredential.Error();
  v112 = *(v17 - 8);
  __chkstk_darwin(v17);
  v19 = &v105 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for DataSpecification();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = &v105 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for DataSpecification.Namespace.Table();
  v105 = *(v24 - 8);
  __chkstk_darwin(v24);
  v26 = &v105 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = type metadata accessor for DataSpecification.Namespace.Table.EvictionPolicy();
  v127 = *(v113 - 8);
  v27 = __chkstk_darwin(v113);
  v106 = &v105 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __chkstk_darwin(v27);
  v31 = &v105 - v30;
  __chkstk_darwin(v29);
  v121 = &v105 - v32;
  v110 = a5;
  if (Connection.isServiceConnection.getter())
  {
    if (qword_10016A678 != -1)
    {
      swift_once();
    }

    sub_100026F50(qword_10016D0C8, qword_10016D0E0);
    sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
    type metadata accessor for LogMessage();
    *(swift_allocObject() + 16) = xmmword_10012FA10;
    LogMessage.init(stringLiteral:)();
    Logger.debug(_:)();
  }

  else
  {
    AccessCredential.dataSpecification.getter();
    v34 = v133;
    _s19OnDeviceStorageCore17DataSpecificationV05tableF03for2inAC9NamespaceV5TableVSS_SStAA16AccessCredentialV5ErrorOYKF();
    if (v34)
    {
      (*(v21 + 8))(v23, v20);
      sub_1000F820C(&qword_10016AB18, &type metadata accessor for AccessCredential.Error, &protocol conformance descriptor for AccessCredential.Error);
      swift_allocError();
      return (*(v112 + 32))(v35, v19, v17);
    }

    else
    {
      v133 = 0;
      (*(v21 + 8))(v23, v20);
      DataSpecification.Namespace.Table.evictionPolicy.getter();
      (*(v105 + 8))(v26, v24);
      v36 = *(v127 + 104);
      v37 = v113;
      v36(v31, enum case for DataSpecification.Namespace.Table.EvictionPolicy.ignore(_:), v113);
      sub_1000F820C(&qword_10016D278, &type metadata accessor for DataSpecification.Namespace.Table.EvictionPolicy, &protocol conformance descriptor for DataSpecification.Namespace.Table.EvictionPolicy);
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      if (v131 == v129 && v132 == v130)
      {
        v38 = 1;
      }

      else
      {
        v38 = _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
      }

      v105 = v38;
      v39 = v31;
      v40 = *(v127 + 8);
      v41 = v127 + 8;
      v40(v39, v37);

      v42 = v106;
      v36(v106, enum case for DataSpecification.Namespace.Table.EvictionPolicy.lru(_:), v37);
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      if (v131 == v129 && v132 == v130)
      {
        v43 = 1;
      }

      else
      {
        v43 = _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
      }

      v112 = v43;
      object = v128._object;
      v127 = v41;
      v40(v42, v37);

      v131 = 0;
      v132 = 0xE000000000000000;
      _StringGuts.grow(_:)(77);
      v45._countAndFlagsBits = 0xD00000000000003DLL;
      v45._object = 0x800000010013D8C0;
      String.append(_:)(v45);
      v120 = v40;
      v46._countAndFlagsBits = v128._countAndFlagsBits;
      countAndFlagsBits = v128._countAndFlagsBits;
      v46._object = object;
      String.append(_:)(v46);
      v48._countAndFlagsBits = 0x4F4E205349202927;
      v48._object = 0xEE004C4C554E2054;
      String.append(_:)(v48);
      sub_10002B95C(&qword_10016AD30, &qword_10016AD28, &unk_1001318C0, &protocol conformance descriptor for Expression<A>);
      v49 = v111;
      ExpressionType.init(literal:)();
      v51 = v125;
      v50 = v126;
      sub_1000DA19C(countAndFlagsBits, object, v125, v126);
      v131 = 0xD000000000000014;
      v132 = 0x800000010013D900;
      v52._countAndFlagsBits = countAndFlagsBits;
      v52._object = object;
      String.append(_:)(v52);
      v53._countAndFlagsBits = 656419879;
      v53._object = 0xE400000000000000;
      String.append(_:)(v53);
      v54._countAndFlagsBits = v51;
      v54._object = v50;
      String.append(_:)(v54);
      v55._countAndFlagsBits = 10535;
      v55._object = 0xE200000000000000;
      String.append(_:)(v55);
      ExpressionType.init(literal:)();
      v131 = 0xD000000000000014;
      v132 = 0x800000010013D920;
      v56._countAndFlagsBits = countAndFlagsBits;
      v56._object = object;
      String.append(_:)(v56);
      v57._countAndFlagsBits = 656419879;
      v57._object = 0xE400000000000000;
      String.append(_:)(v57);
      v58._countAndFlagsBits = v51;
      v58._object = v50;
      String.append(_:)(v58);
      v59._countAndFlagsBits = 10535;
      v59._object = 0xE200000000000000;
      String.append(_:)(v59);
      ExpressionType.init(literal:)();
      static Connection.ServiceColumns.rowId.getter();
      static Connection.ServiceColumns.modificationTime.getter();
      v131 = 0;
      v132 = 0xE000000000000000;
      _StringGuts.grow(_:)(69);
      v60._countAndFlagsBits = 0xD000000000000015;
      v60._object = 0x800000010013D940;
      String.append(_:)(v60);
      sub_10002B95C(&qword_10016D280, &qword_10016AE38, &unk_1001333A0, &protocol conformance descriptor for Expression<A>);
      v61._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v61);

      v62._countAndFlagsBits = 0x4F5246202020200ALL;
      v62._object = 0xEA0000000000204DLL;
      String.append(_:)(v62);
      v63._countAndFlagsBits = countAndFlagsBits;
      v63._object = object;
      String.append(_:)(v63);
      v64._countAndFlagsBits = 0x44524F202020200ALL;
      v64._object = 0xEE00205942205245;
      String.append(_:)(v64);
      sub_10002B95C(&qword_10016D288, &qword_10016BBD0, &qword_100132F30, &protocol conformance descriptor for Expression<A>);
      v65._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v65);

      v66._countAndFlagsBits = 0xD000000000000012;
      v66._object = 0x800000010013D960;
      String.append(_:)(v66);
      v125 = v132;
      v126 = v131;
      v131 = 0;
      v132 = 0xE000000000000000;
      _StringGuts.grow(_:)(37);

      v131 = 0xD00000000000001ALL;
      v132 = 0x800000010013D980;
      v67._countAndFlagsBits = countAndFlagsBits;
      v67._object = object;
      String.append(_:)(v67);
      v68._countAndFlagsBits = 0x312054494D494C20;
      v68._object = 0xE900000000000029;
      String.append(_:)(v68);
      ExpressionType.init(literal:)();
      v131 = 0;
      v132 = 0xE000000000000000;
      _StringGuts.grow(_:)(579);
      v69._countAndFlagsBits = 0xD00000000000002DLL;
      v69._object = 0x800000010013D9A0;
      String.append(_:)(v69);
      v70._countAndFlagsBits = countAndFlagsBits;
      v70._object = object;
      String.append(_:)(v70);
      v71._countAndFlagsBits = 0xD00000000000002ALL;
      v71._object = 0x800000010013D9D0;
      String.append(_:)(v71);
      v72._countAndFlagsBits = countAndFlagsBits;
      v72._object = object;
      String.append(_:)(v72);
      v73._object = 0x800000010013D710;
      v73._countAndFlagsBits = 0xD000000000000014;
      String.append(_:)(v73);
      sub_10002B95C(&qword_10016ADC8, &qword_10016AD28, &unk_1001318C0, &protocol conformance descriptor for Expression<A>);
      v74._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v74);

      v75._countAndFlagsBits = 0x2820444E412029;
      v75._object = 0xE700000000000000;
      String.append(_:)(v75);
      v76._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v76);

      v77._countAndFlagsBits = 0xD000000000000051;
      v77._object = 0x800000010013DA00;
      String.append(_:)(v77);
      v129 = v105;
      v78._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v78);

      v79._countAndFlagsBits = 0x202020202020200ALL;
      v79._object = 0xED000020444E4120;
      String.append(_:)(v79);
      v80._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v80);

      v81._countAndFlagsBits = 0xD00000000000009ALL;
      v81._object = 0x800000010013DA60;
      String.append(_:)(v81);
      v82 = v112;
      v129 = v112;
      v83._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v83);

      v84._countAndFlagsBits = 0x202020202020200ALL;
      v84._object = 0xED000020444E4120;
      String.append(_:)(v84);
      v85 = v114;
      v86._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v86);

      v87._countAndFlagsBits = 0x202020202020200ALL;
      v87._object = 0xED000020444E4120;
      String.append(_:)(v87);
      v88._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v88);

      v89._countAndFlagsBits = 0xD000000000000056;
      v89._object = 0x800000010013DB00;
      String.append(_:)(v89);
      String.append(_:)(v128);
      v90._countAndFlagsBits = 0xD000000000000015;
      v90._object = 0x800000010013DB60;
      String.append(_:)(v90);
      v129 = v82;
      v91._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v91);

      v92._countAndFlagsBits = 0xD000000000000011;
      v93 = v115;
      v92._object = 0x800000010013DB80;
      String.append(_:)(v92);
      v94._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v94);

      v95._object = 0xEE002820444E4120;
      v95._countAndFlagsBits = 0x202020202020200ALL;
      String.append(_:)(v95);
      v96._countAndFlagsBits = v126;
      v96._object = v125;
      String.append(_:)(v96);

      v97._object = 0xEE0020444E412020;
      v97._countAndFlagsBits = 0x2020202020200A29;
      String.append(_:)(v97);
      v98._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v98);

      v99._countAndFlagsBits = 0xA3B29202020200ALL;
      v99._object = 0xEB00000000444E45;
      String.append(_:)(v99);
      v100 = v133;
      Connection.run(_:_:)();
      v101 = (v107 + 8);
      v102 = (v109 + 8);
      v103 = (v108 + 8);

      if (!v100)
      {
      }

      v104 = *v101;
      (*v101)(v85, v49);
      (*v102)(v117, v119);
      (*v103)(v116, v118);
      v104(v93, v49);
      v104(v122, v49);
      v104(v123, v49);
      v104(v124, v49);
      return v120(v121, v113);
    }
  }
}

uint64_t sub_1000F5E4C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[9];
  v7 = v1[10];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1000A444C;

  return sub_1000DA7B8(a1, v4, v5, (v1 + 4), v6, v7);
}

uint64_t sub_1000F5F10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[6] = a6;
  v7[7] = a7;
  v7[4] = a4;
  v7[5] = a5;
  v9 = type metadata accessor for StorageCategory();
  v7[8] = v9;
  v7[9] = *(v9 - 8);
  v7[10] = swift_task_alloc();

  return _swift_task_switch(sub_1000F5FD8, a4, 0);
}

uint64_t sub_1000F5FD8()
{
  v1 = v0[10];
  v3 = v0[5];
  v2 = v0[6];
  v4 = v0[4];
  sub_100026F50((v4 + OBJC_IVAR____TtC19amsondevicestoraged13ClientSession_dbManager), *(v4 + OBJC_IVAR____TtC19amsondevicestoraged13ClientSession_dbManager + 24));
  v0[2] = v3;
  v0[3] = v2;

  v5 = String.init<A>(_:)();
  v7 = v6;
  v0[11] = v6;
  v8 = *(v4 + OBJC_IVAR____TtC19amsondevicestoraged13ClientSession_id);
  v9 = *(v4 + OBJC_IVAR____TtC19amsondevicestoraged13ClientSession_id + 8);
  v10 = enum case for StorageCategory.classC(_:);
  v11 = type metadata accessor for StorageCategory();
  (*(*(v11 - 8) + 104))(v1, v10, v11);
  v12 = swift_task_alloc();
  v0[12] = v12;
  *v12 = v0;
  v12[1] = sub_1000F616C;
  v13 = v0[10];
  v14 = v0[7];

  return sub_10009D9D8(v5, v7, v13, v14, v8, v9);
}

uint64_t sub_1000F616C()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 72);
  v3 = *(*v0 + 64);
  v6 = *v0;

  (*(v2 + 8))(v1, v3);

  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_1000F62E0(uint64_t result, unsigned __int8 a2)
{
  if (a2 - 1 <= 3)
  {
  }

  return v2;
}

uint64_t sub_1000F6310()
{
  swift_unknownObjectRelease();

  sub_100026FDC((v0 + 88));

  return _swift_deallocObject(v0, 144, 7);
}

uint64_t sub_1000F6378(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100042680;

  return sub_1000F5F10(a1, v4, v5, v6, v7, v8, (v1 + 7));
}

uint64_t sub_1000F644C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1000A444C;

  return sub_100052FD0(a1, v4, v5, v6);
}

uint64_t sub_1000F6524(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RequestContext(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000F65EC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1000F66E0(void (*a1)(void))
{
  swift_unknownObjectRelease();
  sub_100026FDC((v1 + 32));
  a1(*(v1 + 80));

  return _swift_deallocObject(v1, 88, 7);
}

uint64_t sub_1000F6738(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[10];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1000A444C;

  return sub_100092970(a1, v4, v5, (v1 + 4), v6);
}

uint64_t sub_1000F68A8(uint64_t a1, uint64_t a2)
{
  swift_weakDestroy();

  return _swift_deallocObject(v2, 24, 7);
}

uint64_t sub_1000F68E0(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5)
{
  v27._countAndFlagsBits = a1;
  v27._object = a2;
  v8 = type metadata accessor for LogMessage.StringInterpolation();
  __chkstk_darwin(v8 - 8);
  swift_getKeyPath();
  v9 = *(a5 + 16);
  v28 = a4;
  if (v9)
  {
    v26 = a3;
    v33 = _swiftEmptyArrayStorage;
    sub_10007E9EC(0, v9, 0);
    v10 = _swiftEmptyArrayStorage;
    v11 = a5 + 32;
    do
    {
      sub_100026EEC(v11, &v29);
      swift_getAtKeyPath();
      sub_100026FDC(&v29);
      v12 = v31;
      v13 = v32;
      v33 = v10;
      v15 = v10[2];
      v14 = v10[3];
      if (v15 >= v14 >> 1)
      {
        sub_10007E9EC((v14 > 1), v15 + 1, 1);
        v10 = v33;
      }

      v10[2] = v15 + 1;
      v16 = &v10[2 * v15];
      v16[4] = v12;
      v16[5] = v13;
      v11 += 40;
      --v9;
    }

    while (v9);

    a4 = v28;
    a3 = v26;
  }

  else
  {

    v10 = _swiftEmptyArrayStorage;
  }

  v29 = v10;
  sub_100026F94(&qword_10016AB28, &qword_100131390);
  sub_10002B95C(&qword_10016AB30, &qword_10016AB28, &qword_100131390, &protocol conformance descriptor for [A]);
  v17 = BidirectionalCollection<>.joined(separator:)();
  v19 = v18;

  v29 = 0;
  v30 = 0xE000000000000000;
  _StringGuts.grow(_:)(40);

  v29 = 0xD00000000000001BLL;
  v30 = 0x800000010013DE60;
  String.append(_:)(v27);
  v20._countAndFlagsBits = 542002954;
  v20._object = 0xE400000000000000;
  String.append(_:)(v20);
  v21._countAndFlagsBits = a3;
  v21._object = a4;
  String.append(_:)(v21);
  v22._countAndFlagsBits = 10272;
  v22._object = 0xE200000000000000;
  String.append(_:)(v22);
  v23._countAndFlagsBits = v17;
  v23._object = v19;
  String.append(_:)(v23);
  v24._countAndFlagsBits = 41;
  v24._object = 0xE100000000000000;
  String.append(_:)(v24);
  Connection.run(_:_:)();
}

uint64_t sub_1000F6DE4(uint64_t a1, void *a2)
{
  v5 = sub_100026F94(&qword_10016BBD0, &qword_100132F30);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v19 - v7;
  if (Connection.isServiceConnection.getter())
  {
    if (qword_10016A678 != -1)
    {
      swift_once();
    }

    sub_100026F50(qword_10016D0C8, qword_10016D0E0);
    sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
    type metadata accessor for LogMessage();
    *(swift_allocObject() + 16) = xmmword_10012FA10;
    LogMessage.init(stringLiteral:)();
    Logger.debug(_:)();
  }

  else
  {
    v19[0] = 0;
    v19[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(157);
    v10._countAndFlagsBits = 0xD00000000000002ELL;
    v10._object = 0x800000010013DC20;
    String.append(_:)(v10);
    v11._countAndFlagsBits = a1;
    v11._object = a2;
    String.append(_:)(v11);
    v12._countAndFlagsBits = 0xD000000000000017;
    v12._object = 0x800000010013DD50;
    String.append(_:)(v12);
    v13._countAndFlagsBits = a1;
    v13._object = a2;
    String.append(_:)(v13);
    v14._object = 0x800000010013DC70;
    v14._countAndFlagsBits = 0xD000000000000012;
    String.append(_:)(v14);
    v15._countAndFlagsBits = a1;
    v15._object = a2;
    String.append(_:)(v15);
    v16._countAndFlagsBits = 0x544553202020200ALL;
    v16._object = 0xE900000000000020;
    String.append(_:)(v16);
    static Connection.ServiceColumns.modificationTime.getter();
    sub_10002B95C(&qword_10016D288, &qword_10016BBD0, &qword_100132F30, &protocol conformance descriptor for Expression<A>);
    v17._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v17);

    (*(v6 + 8))(v8, v5);
    v18._countAndFlagsBits = 0xD000000000000035;
    v18._object = 0x800000010013DD70;
    String.append(_:)(v18);
    Connection.run(_:_:)();

    if (!v2)
    {
    }
  }

  return result;
}

uint64_t sub_1000F714C(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5)
{
  v10 = sub_100026F94(&qword_10016AD28, &unk_1001318C0);
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = v37 - v15;
  v37[1] = a5;
  if (Connection.isServiceConnection.getter())
  {
    if (qword_10016A678 != -1)
    {
      swift_once();
    }

    sub_100026F50(qword_10016D0C8, qword_10016D0E0);
    sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
    type metadata accessor for LogMessage();
    *(swift_allocObject() + 16) = xmmword_10012FA10;
    LogMessage.init(stringLiteral:)();
    Logger.debug(_:)();
  }

  else
  {
    static Connection.ServiceColumns.bundleIds.getter();
    sub_10002B95C(&qword_10016ADA8, &qword_10016AD28, &unk_1001318C0, &protocol conformance descriptor for Expression<A>);
    v18 = Expressible.columnName.getter();
    sub_10007D888(a1, a2, a3, a4, v18, v19);

    v37[2] = 0;
    v37[3] = 0xE000000000000000;
    _StringGuts.grow(_:)(161);
    v20._countAndFlagsBits = 0xD00000000000002ELL;
    v20._object = 0x800000010013DC20;
    String.append(_:)(v20);
    v21._countAndFlagsBits = a1;
    v21._object = a2;
    String.append(_:)(v21);
    v22._countAndFlagsBits = 0xD00000000000001DLL;
    v22._object = 0x800000010013DCF0;
    String.append(_:)(v22);
    v23._countAndFlagsBits = a1;
    v23._object = a2;
    String.append(_:)(v23);
    v24._object = 0x800000010013DC70;
    v24._countAndFlagsBits = 0xD000000000000012;
    String.append(_:)(v24);
    v25._countAndFlagsBits = a1;
    v25._object = a2;
    String.append(_:)(v25);
    v26._countAndFlagsBits = 0x544553202020200ALL;
    v26._object = 0xE900000000000020;
    String.append(_:)(v26);
    sub_10002B95C(&qword_10016ADC8, &qword_10016AD28, &unk_1001318C0, &protocol conformance descriptor for Expression<A>);
    v27._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v27);

    v28._countAndFlagsBits = 2112800;
    v28._object = 0xE300000000000000;
    String.append(_:)(v28);
    v29._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v29);

    v30._countAndFlagsBits = 0x454857202020200ALL;
    v30._object = 0xEB00000000204552;
    String.append(_:)(v30);
    v31._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v31);

    v32._object = 0x800000010013DC90;
    v32._countAndFlagsBits = 0xD000000000000012;
    String.append(_:)(v32);
    v33._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v33);

    v34._countAndFlagsBits = 0x29272527207C7C20;
    v34._object = 0xED0000444E450A3BLL;
    String.append(_:)(v34);
    v35 = v37[5];
    Connection.run(_:_:)();

    if (!v35)
    {
    }

    v36 = *(v11 + 8);
    v36(v14, v10);
    return (v36)(v16, v10);
  }
}

uint64_t sub_1000F7638(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = sub_100026F94(&qword_10016AD28, &unk_1001318C0);
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v33 - v12;
  v33[3] = a3;
  if (Connection.isServiceConnection.getter())
  {
    if (qword_10016A678 != -1)
    {
      swift_once();
    }

    sub_100026F50(qword_10016D0C8, qword_10016D0E0);
    sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
    type metadata accessor for LogMessage();
    *(swift_allocObject() + 16) = xmmword_10012FA10;
    LogMessage.init(stringLiteral:)();
    Logger.debug(_:)();
  }

  else
  {
    static Connection.ServiceColumns.requestIds.getter();
    sub_10002B95C(&qword_10016AD30, &qword_10016AD28, &unk_1001318C0, &protocol conformance descriptor for Expression<A>);
    ExpressionType.init(literal:)();
    v33[0] = 0;
    v33[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(168);
    v15._countAndFlagsBits = 0xD00000000000002ELL;
    v15._object = 0x800000010013DC20;
    String.append(_:)(v15);
    v16._countAndFlagsBits = a1;
    v16._object = a2;
    String.append(_:)(v16);
    v17._countAndFlagsBits = 0xD00000000000001ELL;
    v17._object = 0x800000010013DC50;
    String.append(_:)(v17);
    v18._countAndFlagsBits = a1;
    v18._object = a2;
    String.append(_:)(v18);
    v19._object = 0x800000010013DC70;
    v19._countAndFlagsBits = 0xD000000000000012;
    String.append(_:)(v19);
    v20._countAndFlagsBits = a1;
    v20._object = a2;
    String.append(_:)(v20);
    v21._countAndFlagsBits = 0x544553202020200ALL;
    v21._object = 0xE900000000000020;
    String.append(_:)(v21);
    sub_10002B95C(&qword_10016ADC8, &qword_10016AD28, &unk_1001318C0, &protocol conformance descriptor for Expression<A>);
    v22._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v22);

    v23._countAndFlagsBits = 2112800;
    v23._object = 0xE300000000000000;
    String.append(_:)(v23);
    v24._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v24);

    v25._countAndFlagsBits = 545029152;
    v25._object = 0xE400000000000000;
    String.append(_:)(v25);
    v26._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v26);

    v27._countAndFlagsBits = 0x454857202020200ALL;
    v27._object = 0xEB00000000204552;
    String.append(_:)(v27);
    v28._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v28);

    v29._object = 0x800000010013DC90;
    v29._countAndFlagsBits = 0xD000000000000012;
    String.append(_:)(v29);
    v30._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v30);

    v31._countAndFlagsBits = 0x29272527207C7C20;
    v31._object = 0xED0000444E450A3BLL;
    String.append(_:)(v31);
    Connection.run(_:_:)();

    if (!v3)
    {
    }

    v32 = *(v8 + 8);
    v32(v11, v7);
    return (v32)(v13, v7);
  }
}

uint64_t sub_1000F7B3C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_100026F50(a1, a1[3]);
  result = Expressible.columnName.getter();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1000F7B88(const char *a1, uint64_t a2, int a3, uint64_t a4)
{
  v20 = a3;
  v5 = type metadata accessor for OSSignpostError();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for OSSignpostID();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10016A680 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for OSSignposter();
  sub_10002FD14(v13, qword_10016D0F0);
  v14 = OSSignposter.logHandle.getter();
  OSSignpostIntervalState.signpostID.getter();
  v19 = static os_signpost_type_t.end.getter();
  result = OS_os_log.signpostsEnabled.getter();
  if ((result & 1) == 0)
  {
    goto LABEL_15;
  }

  if ((v20 & 1) == 0)
  {
    if (a1)
    {
LABEL_11:

      checkForErrorAndConsumeState(state:)();

      if ((*(v6 + 88))(v8, v5) == enum case for OSSignpostError.doubleEnd(_:))
      {
        v16 = "[Error] Interval already ended";
      }

      else
      {
        (*(v6 + 8))(v8, v5);
        v16 = "";
      }

      v17 = swift_slowAlloc();
      *v17 = 0;
      v18 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v14, v19, v18, a1, v16, v17, 2u);

LABEL_15:

      return (*(v10 + 8))(v12, v9);
    }

    __break(1u);
  }

  if (a1 >> 32)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if ((a1 & 0xFFFFF800) != 0xD800)
  {
    if (a1 >> 16 <= 0x10)
    {
      a1 = &v21;
      goto LABEL_11;
    }

    goto LABEL_17;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1000F7ED0()
{
  swift_unknownObjectRelease();
  sub_100026FDC((v0 + 32));

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_1000F7F34@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000DA01C(*(v1 + 16), *(v1 + 24), *(v1 + 32));
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1000F7F90(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100026F94(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_1000F8034(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[9];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1000A444C;

  return sub_100094AB0(a1, v4, v5, (v1 + 4), v6);
}

uint64_t sub_1000F80F4(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void))
{
  v5 = (sub_100026F94(a1, a2) - 8);
  v6 = *(*v5 + 80);
  v7 = (v6 + 24) & ~v6;
  v8 = *(*v5 + 64);

  v9 = a3(0);
  (*(*(v9 - 8) + 8))(v3 + v7, v9);
  sub_10002AAE4((v3 + v7 + v5[11]));

  return _swift_deallocObject(v3, v7 + v8, v6 | 7);
}

uint64_t sub_1000F820C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000F8254()
{
  v1 = type metadata accessor for AccessCredential();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  sub_10002AAE4((v0 + v5));

  return _swift_deallocObject(v0, v5 + 88, v3 | 7);
}

void (**sub_1000F8300(uint64_t a1, unint64_t a2))(char *, uint64_t)
{
  v5 = *(type metadata accessor for AccessCredential() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_10002EF7C(a1, a2, v2 + v6, *(v2 + v7), (v2 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8)));
}

void sub_1000F83BC(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    type metadata accessor for hsql.SQLStatementSummary(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for Connection();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1000F8464(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 95) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))(a1);
    }

    v17 = *(((((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 95) & 0xFFFFFFFFFFFFFFF8) + 8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

_BYTE *sub_1000F85B8(_BYTE *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 95) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((((((v8 + 7) & 0xFFFFFFF8) + 95) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 2;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *&result[v9] = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *&result[v9] = 0;
      }

      else if (v13)
      {
        result[v9] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if (v6 < 0x7FFFFFFF)
      {
        v19 = (((&result[v8 + 7] & 0xFFFFFFFFFFFFFFF8) + 95) & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          *v19 = a2 & 0x7FFFFFFF;
          v19[1] = 0;
        }

        else
        {
          v19[1] = a2 - 1;
        }
      }

      else
      {
        v18 = *(v5 + 56);

        return v18();
      }

      return result;
    }
  }

  if (((((((v8 + 7) & 0xFFFFFFF8) + 95) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((((((v8 + 7) & 0xFFFFFFF8) + 95) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, ((((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 95) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *&result[v9] = v15;
    }

    else
    {
      *&result[v9] = v15;
    }
  }

  else if (v13)
  {
    result[v9] = v15;
  }

  return result;
}

__n128 sub_1000F88D0(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_1000F8904(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 136))
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

uint64_t sub_1000F894C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 136) = 1;
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

    *(result + 136) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_1000F89BC(uint64_t a1, uint64_t a2)
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

uint64_t sub_1000F89D0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_1000F8A18(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_1000F8A78()
{
  v1 = 0;
  result = 0;
  v3 = *(v0 + 56);
  v4 = 1 << *(v3 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v3 + 64);
  v7 = (v4 + 63) >> 6;
  while (v6)
  {
    v8 = v1;
LABEL_10:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v10 = *(*(v3 + 56) + ((v8 << 9) | (8 * v9)));
    v11 = __OFADD__(result, v10);
    result += v10;
    if (v11)
    {
      __break(1u);
      return result;
    }
  }

  while (1)
  {
    v8 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      break;
    }

    if (v8 >= v7)
    {
      return result;
    }

    v6 = *(v3 + 64 + 8 * v8);
    ++v1;
    if (v6)
    {
      v1 = v8;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000F8B14(void *a1)
{
  v3 = v1;
  v5 = sub_100026F94(&qword_10016D3A8, &qword_100133840);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10 - v7;
  sub_100026F50(a1, a1[3]);
  sub_1000FA6D4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  HIBYTE(v10) = 0;
  sub_100026F94(&qword_10016D390, &unk_100133830);
  sub_1000FA790(&qword_10016D3B0, &protocol witness table for UInt64, &protocol conformance descriptor for <A> [A]);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    LOBYTE(v11) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v11) = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v11) = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v11) = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v11) = 5;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v11) = 6;
    KeyedEncodingContainer.encode(_:forKey:)();
    v11 = v3[7];
    HIBYTE(v10) = 7;
    sub_100026F94(&qword_10016C050, &unk_100132200);
    sub_1000FA7FC(&qword_10016D3B8, &protocol witness table for Int, &protocol conformance descriptor for <> [A : B]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1000F8E1C()
{
  v1 = *v0;
  if (v1 > 3)
  {
    v5 = 0xD000000000000011;
    if (v1 != 6)
    {
      v5 = 0x73726F727265;
    }

    v6 = 0xD000000000000012;
    if (v1 != 4)
    {
      v6 = 0xD000000000000010;
    }

    if (*v0 <= 5u)
    {
      return v6;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v2 = 0x73657A6973;
    v3 = 0xD000000000000010;
    if (v1 != 2)
    {
      v3 = 0xD000000000000011;
    }

    if (*v0)
    {
      v2 = 0x6673736563637573;
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
}

uint64_t sub_1000F8F2C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1000F9810(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1000F8F6C(uint64_t a1)
{
  v2 = sub_1000FA6D4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000F8FA8(uint64_t a1)
{
  v2 = sub_1000FA6D4();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_1000F8FE4@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_1000F9AAC(a2, v7);
  if (!v2)
  {
    v5 = v7[1];
    *a1 = v7[0];
    a1[1] = v5;
    result = *&v8;
    v6 = v9;
    a1[2] = v8;
    a1[3] = v6;
  }

  return result;
}

uint64_t sub_1000F9040(void *a1)
{
  v3 = sub_100026F94(&qword_10016D360, &qword_100133668);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_100026F50(a1, a1[3]);
  sub_1000FA370();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v8[14] = 1;
  KeyedEncodingContainer.encode(_:forKey:)();
  v8[13] = 2;
  KeyedEncodingContainer.encode(_:forKey:)();
  v8[12] = 3;
  KeyedEncodingContainer.encode(_:forKey:)();
  v8[11] = 4;
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v4 + 8))(v6, v3);
}

Swift::Int sub_1000F9220()
{
  Hasher.init(_seed:)();
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  String.hash(into:)();
  String.hash(into:)();
  String.hash(into:)();
  Hasher._combine(_:)(v1);
  v3 = 0.0;
  if (v2 != 0.0)
  {
    v3 = v2;
  }

  Hasher._combine(_:)(*&v3);
  return Hasher._finalize()();
}

Swift::Int sub_1000F92E8()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_1000F9360(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

uint64_t sub_1000F93A4()
{
  v1 = *v0;
  v2 = 0x4974736575716572;
  v3 = 0x656C626174;
  v4 = 0x6974617265706F5FLL;
  if (v1 != 3)
  {
    v4 = 0x4164657461657263;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x616D65686373;
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

uint64_t sub_1000F9448@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1000F9E80(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1000F947C(uint64_t a1)
{
  v2 = sub_1000FA370();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000F94B8(uint64_t a1)
{
  v2 = sub_1000FA370();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_1000F94F4@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_1000FA03C(a2, v7);
  if (!v2)
  {
    v5 = v7[1];
    *a1 = v7[0];
    a1[1] = v5;
    result = *&v8;
    v6 = v9;
    a1[2] = v8;
    a1[3] = v6;
  }

  return result;
}

void sub_1000F9554(uint64_t a1)
{
  v2 = *(v1 + 48);
  v3 = *(v1 + 56);
  String.hash(into:)();
  String.hash(into:)();
  String.hash(into:)();
  Hasher._combine(_:)(v2);
  v4 = 0.0;
  if (v3 != 0.0)
  {
    v4 = v3;
  }

  Hasher._combine(_:)(*&v4);
}

Swift::Int sub_1000F95EC(uint64_t a1)
{
  v2 = *(v1 + 48);
  v3 = *(v1 + 56);
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  String.hash(into:)();
  Hasher._combine(_:)(v2);
  v4 = 0.0;
  if (v3 != 0.0)
  {
    v4 = v3;
  }

  Hasher._combine(_:)(*&v4);
  return Hasher._finalize()();
}