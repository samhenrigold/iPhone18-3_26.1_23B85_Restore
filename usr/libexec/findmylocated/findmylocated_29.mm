uint64_t sub_10032CD78()
{
  v1 = *(*(v0 + 80) + 112);
  *(v0 + 136) = v1;
  return _swift_task_switch(sub_10032CD9C, v1, 0);
}

uint64_t sub_10032CD9C()
{
  sub_10000A0A4();
  *(v0 + 144) = 0;
  v1 = *(v0 + 136);

  return _swift_task_switch(sub_10032CE64, v1, 0);
}

uint64_t sub_10032CE64()
{
  type metadata accessor for LocalStorageDatabase(0);
  sub_10000A49C(&qword_1005B19F0, type metadata accessor for LocalStorageDatabase, &unk_1004D5700);
  *(v0 + 152) = Database.writeConnection.getter();

  return _swift_task_switch(sub_10032CF18, 0, 0);
}

uint64_t sub_10032CF18()
{
  if (!v0[19])
  {
    v14 = type metadata accessor for DatabaseError();
    sub_10000A49C(&qword_1005AF460, &type metadata accessor for DatabaseError, &protocol conformance descriptor for DatabaseError);
    swift_allocError();
    (*(*(v14 - 8) + 104))(v15, enum case for DatabaseError.notConnected(_:), v14);
    swift_willThrow();
    goto LABEL_11;
  }

  if (qword_1005A8168 != -1)
  {
    swift_once();
  }

  v1 = v0[12];
  v2 = v0[13];
  v3 = v0[11];
  v19 = type metadata accessor for Table();
  sub_10000A6F0(v19, qword_1005E0108);
  (*(v1 + 104))(v2, enum case for OnConflict.replace(_:), v3);
  sub_10004B564(&qword_1005AF4F0, &qword_1004D07D0);
  type metadata accessor for Setter();
  *(swift_allocObject() + 16) = xmmword_1004C2310;
  if (qword_1005A8478 != -1)
  {
    swift_once();
  }

  v4 = v0[6];
  v5 = v0[7];
  v6 = sub_10004B564(&qword_1005AF068, &unk_1004D06E0);
  sub_10000A6F0(v6, qword_1005E0A50);
  v0[2] = v4;
  v0[3] = v5;

  <- infix<A>(_:_:)();

  if (qword_1005A8480 != -1)
  {
    swift_once();
  }

  v18 = v0[18];
  v7 = v0[12];
  v8 = v0[13];
  v9 = v0[11];
  v10 = v0[8];
  v11 = v0[9];
  v12 = sub_10004B564(&qword_1005AF028, &qword_1004D0238);
  sub_10000A6F0(v12, qword_1005E0A68);
  v0[4] = v10;
  v0[5] = v11;
  sub_100005F6C(v10, v11);
  <- infix<A>(_:_:)();
  sub_1000049D0(v0[4], v0[5]);
  QueryType.insert(or:_:)();

  (*(v7 + 8))(v8, v9);
  Connection.run(_:)();
  v13 = v0[15];
  if (v18)
  {
    (*(v13 + 8))(v0[16], v0[14]);

LABEL_11:

    v16 = v0[1];
    goto LABEL_13;
  }

  (*(v13 + 8))();

  v16 = v0[1];
LABEL_13:

  return v16();
}

uint64_t sub_10032D348(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  v4 = sub_10004B564(&qword_1005AF0B0, &unk_1004D0290);
  v3[7] = v4;
  v3[8] = *(v4 - 8);
  v3[9] = swift_task_alloc();
  v5 = type metadata accessor for Table();
  v3[10] = v5;
  v3[11] = *(v5 - 8);
  v3[12] = swift_task_alloc();
  v6 = type metadata accessor for Delete();
  v3[13] = v6;
  v3[14] = *(v6 - 8);
  v3[15] = swift_task_alloc();

  return _swift_task_switch(sub_10032D4D0, 0, 0);
}

uint64_t sub_10032D4D0()
{
  v1 = *(*(v0 + 48) + 112);
  *(v0 + 128) = v1;
  return _swift_task_switch(sub_10032D4F4, v1, 0);
}

uint64_t sub_10032D4F4()
{
  sub_10000A0A4();
  *(v0 + 136) = 0;
  v1 = *(v0 + 128);

  return _swift_task_switch(sub_10032D5CC, v1, 0);
}

uint64_t sub_10032D5CC()
{
  type metadata accessor for LocalStorageDatabase(0);
  sub_10000A49C(&qword_1005B19F0, type metadata accessor for LocalStorageDatabase, &unk_1004D5700);
  *(v0 + 144) = Database.writeConnection.getter();

  return _swift_task_switch(sub_10032D680, 0, 0);
}

uint64_t sub_10032D680()
{
  v26 = v0;
  if (!v0[18])
  {
    v19 = type metadata accessor for DatabaseError();
    sub_10000A49C(&qword_1005AF460, &type metadata accessor for DatabaseError, &protocol conformance descriptor for DatabaseError);
    swift_allocError();
    (*(*(v19 - 8) + 104))(v20, enum case for DatabaseError.notConnected(_:), v19);
    swift_willThrow();
    goto LABEL_13;
  }

  if (qword_1005A84A0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000A6F0(v1, qword_1005E0AC8);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[4];
    v4 = v0[5];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v25 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_10000D01C(v5, v4, &v25);
    _os_log_impl(&_mh_execute_header, v2, v3, "Deleting value for key: %s", v6, 0xCu);
    sub_100004984(v7);
  }

  if (qword_1005A8168 != -1)
  {
    swift_once();
  }

  sub_10000A6F0(v0[10], qword_1005E0108);
  if (qword_1005A8478 != -1)
  {
    swift_once();
  }

  v24 = v0[17];
  v8 = v0[11];
  v9 = v0[12];
  v11 = v0[9];
  v10 = v0[10];
  v12 = v0[7];
  v13 = v0[8];
  v14 = v0[4];
  v15 = v0[5];
  v16 = sub_10004B564(&qword_1005AF068, &unk_1004D06E0);
  sub_10000A6F0(v16, qword_1005E0A50);
  v0[2] = v14;
  v0[3] = v15;
  == infix<A>(_:_:)();
  QueryType.filter(_:)();
  (*(v13 + 8))(v11, v12);
  QueryType.delete()();
  (*(v8 + 8))(v9, v10);
  v17 = Connection.run(_:)();
  v18 = v0[14];
  if (v24)
  {
    (*(v18 + 8))(v0[15], v0[13]);

LABEL_13:

    v21 = v0[1];
    v22 = 0;
    goto LABEL_15;
  }

  (*(v18 + 8))();

  v21 = v0[1];
  v22 = v17 > 0;
LABEL_15:

  return v21(v22);
}

uint64_t sub_10032DAAC(uint64_t a1)
{
  v2[15] = a1;
  v2[16] = v1;
  sub_10004B564(&qword_1005AF468, &qword_1004D06C0);
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v3 = type metadata accessor for Row();
  v2[19] = v3;
  v2[20] = *(v3 - 8);
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();

  return _swift_task_switch(sub_10032DBBC, 0, 0);
}

uint64_t sub_10032DBBC()
{
  v1 = *(*(v0 + 128) + 112);
  *(v0 + 184) = v1;
  return _swift_task_switch(sub_10032DBE0, v1, 0);
}

uint64_t sub_10032DBE0()
{
  sub_10000A0A4();
  *(v0 + 192) = 0;
  v1 = *(v0 + 184);

  return _swift_task_switch(sub_10032DCC4, v1, 0);
}

uint64_t sub_10032DCC4()
{
  type metadata accessor for LocalStorageDatabase(0);
  sub_10000A49C(&qword_1005B19F0, type metadata accessor for LocalStorageDatabase, &unk_1004D5700);
  *(v0 + 200) = Database.readConnection.getter();

  return _swift_task_switch(sub_10032DD78, 0, 0);
}

uint64_t sub_10032DD78()
{
  if (!*(v0 + 200))
  {
    v5 = type metadata accessor for DatabaseError();
    sub_10000A49C(&qword_1005AF460, &type metadata accessor for DatabaseError, &protocol conformance descriptor for DatabaseError);
    swift_allocError();
    (*(*(v5 - 8) + 104))(v6, enum case for DatabaseError.notConnected(_:), v5);
    swift_willThrow();
    goto LABEL_5;
  }

  v1 = *(v0 + 192);
  v2 = *(v0 + 120);
  v3 = type metadata accessor for Table();
  *(v0 + 40) = v3;
  *(v0 + 48) = &protocol witness table for Table;
  v4 = sub_10000331C((v0 + 16));
  (*(*(v3 - 8) + 16))(v4, v2, v3);
  Connection.prepare(_:)();
  if (v1)
  {

    sub_100004984((v0 + 16));
LABEL_5:

    v7 = *(v0 + 8);

    return v7();
  }

  sub_100004984((v0 + 16));
  v9 = dispatch thunk of _AnySequenceBox._underestimatedCount.getter();
  sub_100239724(0, v9 & ~(v9 >> 63), 0);
  result = dispatch thunk of _AnySequenceBox._makeIterator()();
  if (v9 < 0)
  {
    __break(1u);
LABEL_33:
    __break(1u);
    return result;
  }

  if (v9)
  {
    v10 = *(v0 + 160);
    v52 = (v10 + 16);
    v54 = (v10 + 48);
    v11 = (v10 + 8);
    do
    {
      v12 = *(v0 + 152);
      v13 = *(v0 + 136);
      dispatch thunk of _AnyIteratorBoxBase.next()();
      result = (*v54)(v13, 1, v12);
      if (result == 1)
      {
        goto LABEL_33;
      }

      (*v52)(*(v0 + 168), *(v0 + 136), *(v0 + 152));
      if (qword_1005A8488 != -1)
      {
        swift_once();
      }

      v14 = sub_10004B564(&qword_1005B1A68, &qword_1004D5878);
      sub_10000A6F0(v14, qword_1005E0A80);
      sub_100300D10();
      Row.subscript.getter();
      v55 = *(v0 + 64);
      v57 = *(v0 + 56);
      if (qword_1005A8480 != -1)
      {
        swift_once();
      }

      v15 = *(v0 + 168);
      v16 = *(v0 + 152);
      v17 = *(v0 + 136);
      v18 = sub_10004B564(&qword_1005AF028, &qword_1004D0238);
      sub_10000A6F0(v18, qword_1005E0A68);
      Row.subscript.getter();
      v19 = *v11;
      (*v11)(v15, v16);
      v21 = *(v0 + 72);
      v20 = *(v0 + 80);
      v19(v17, v16);
      v23 = _swiftEmptyArrayStorage[2];
      v22 = _swiftEmptyArrayStorage[3];
      if (v23 >= v22 >> 1)
      {
        sub_100239724((v22 > 1), v23 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v23 + 1;
      v24 = &_swiftEmptyArrayStorage[4 * v23];
      v24[4] = v57;
      v24[5] = v55;
      v24[6] = v21;
      v24[7] = v20;
    }

    while (--v9);
  }

  v26 = *(v0 + 152);
  v25 = *(v0 + 160);
  v27 = *(v0 + 144);
  dispatch thunk of _AnyIteratorBoxBase.next()();
  v56 = *(v25 + 48);
  if (v56(v27, 1, v26) != 1)
  {
    v30 = *(v0 + 160);
    v31 = *(v30 + 32);
    v30 += 32;
    v51 = (v30 - 16);
    v53 = v31;
    v32 = (v30 - 24);
    do
    {
      v34 = *(v0 + 168);
      v33 = *(v0 + 176);
      v35 = *(v0 + 152);
      v53(v33, *(v0 + 144), v35);
      (*v51)(v34, v33, v35);
      if (qword_1005A8488 != -1)
      {
        swift_once();
      }

      v36 = sub_10004B564(&qword_1005B1A68, &qword_1004D5878);
      sub_10000A6F0(v36, qword_1005E0A80);
      sub_100300D10();
      Row.subscript.getter();
      v38 = *(v0 + 88);
      v37 = *(v0 + 96);
      if (qword_1005A8480 != -1)
      {
        swift_once();
      }

      v39 = *(v0 + 168);
      v40 = *(v0 + 176);
      v41 = *(v0 + 152);
      v42 = sub_10004B564(&qword_1005AF028, &qword_1004D0238);
      sub_10000A6F0(v42, qword_1005E0A68);
      Row.subscript.getter();
      v43 = *v32;
      (*v32)(v39, v41);
      v43(v40, v41);
      v44 = *(v0 + 104);
      v46 = _swiftEmptyArrayStorage[2];
      v45 = _swiftEmptyArrayStorage[3];
      if (v46 >= v45 >> 1)
      {
        v50 = *(v0 + 104);
        sub_100239724((v45 > 1), v46 + 1, 1);
        v44 = v50;
      }

      v48 = *(v0 + 144);
      v47 = *(v0 + 152);
      _swiftEmptyArrayStorage[2] = v46 + 1;
      v49 = &_swiftEmptyArrayStorage[4 * v46];
      v49[4] = v38;
      v49[5] = v37;
      *(v49 + 3) = v44;
      dispatch thunk of _AnyIteratorBoxBase.next()();
    }

    while (v56(v48, 1, v47) != 1);
  }

  v28 = *(v0 + 144);

  sub_100002CE0(v28, &qword_1005AF468, &qword_1004D06C0);

  v29 = *(v0 + 8);

  return v29(_swiftEmptyArrayStorage);
}

uint64_t sub_10032E450(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[19] = a3;
  v4[20] = v3;
  v4[17] = a1;
  v4[18] = a2;
  sub_10004B564(&qword_1005AF468, &qword_1004D06C0);
  v4[21] = swift_task_alloc();
  v4[22] = swift_task_alloc();
  v5 = type metadata accessor for Row();
  v4[23] = v5;
  v4[24] = *(v5 - 8);
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();
  v6 = sub_10004B564(&qword_1005AF0B0, &unk_1004D0290);
  v4[27] = v6;
  v4[28] = *(v6 - 8);
  v4[29] = swift_task_alloc();
  v7 = type metadata accessor for Table();
  v4[30] = v7;
  v4[31] = *(v7 - 8);
  v4[32] = swift_task_alloc();

  return _swift_task_switch(sub_10032E628, 0, 0);
}

uint64_t sub_10032E628()
{
  v1 = *(*(v0 + 160) + 112);
  *(v0 + 264) = v1;
  return _swift_task_switch(sub_10032E64C, v1, 0);
}

uint64_t sub_10032E64C()
{
  sub_10000A0A4();
  *(v0 + 272) = 0;
  v1 = *(v0 + 264);

  return _swift_task_switch(sub_10032E754, v1, 0);
}

uint64_t sub_10032E754()
{
  type metadata accessor for LocalStorageDatabase(0);
  sub_10000A49C(&qword_1005B19F0, type metadata accessor for LocalStorageDatabase, &unk_1004D5700);
  *(v0 + 280) = Database.readConnection.getter();

  return _swift_task_switch(sub_10032E808, 0, 0);
}

uint64_t sub_10032E808()
{
  if (!*(v0 + 280))
  {
    v10 = type metadata accessor for DatabaseError();
    sub_10000A49C(&qword_1005AF460, &type metadata accessor for DatabaseError, &protocol conformance descriptor for DatabaseError);
    swift_allocError();
    (*(*(v10 - 8) + 104))(v11, enum case for DatabaseError.notConnected(_:), v10);
    swift_willThrow();
    goto LABEL_7;
  }

  if (qword_1005A8488 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 248);
  v1 = *(v0 + 256);
  v4 = *(v0 + 232);
  v3 = *(v0 + 240);
  v5 = *(v0 + 224);
  v65 = *(v0 + 216);
  v68 = *(v0 + 272);
  v6 = *(v0 + 144);
  v7 = *(v0 + 136);
  v8 = sub_10004B564(&qword_1005B1A68, &qword_1004D5878);
  sub_10000A6F0(v8, qword_1005E0A80);
  *(v0 + 56) = v7;
  *(v0 + 64) = v6;
  sub_100300D10();
  == infix<A>(_:_:)();
  QueryType.where(_:)();
  (*(v5 + 8))(v4, v65);
  *(v0 + 40) = v3;
  *(v0 + 48) = &protocol witness table for Table;
  v9 = sub_10000331C((v0 + 16));
  (*(v2 + 16))(v9, v1, v3);
  Connection.prepare(_:)();
  if (v68)
  {
    (*(*(v0 + 248) + 8))(*(v0 + 256), *(v0 + 240));

    sub_100004984((v0 + 16));
LABEL_7:

    v12 = *(v0 + 8);

    return v12();
  }

  sub_100004984((v0 + 16));
  v14 = dispatch thunk of _AnySequenceBox._underestimatedCount.getter();
  sub_100239724(0, v14 & ~(v14 >> 63), 0);
  result = dispatch thunk of _AnySequenceBox._makeIterator()();
  if (v14 < 0)
  {
    __break(1u);
LABEL_34:
    __break(1u);
    return result;
  }

  if (v14)
  {
    v15 = *(v0 + 192);
    v62 = (v15 + 16);
    v64 = (v15 + 48);
    v16 = (v15 + 8);
    do
    {
      v17 = *(v0 + 184);
      v18 = *(v0 + 168);
      dispatch thunk of _AnyIteratorBoxBase.next()();
      result = (*v64)(v18, 1, v17);
      if (result == 1)
      {
        goto LABEL_34;
      }

      (*v62)(*(v0 + 200), *(v0 + 168), *(v0 + 184));
      Row.subscript.getter();
      v66 = *(v0 + 80);
      v69 = *(v0 + 72);
      if (qword_1005A8480 != -1)
      {
        swift_once();
      }

      v19 = *(v0 + 200);
      v20 = *(v0 + 184);
      v21 = *(v0 + 168);
      v22 = sub_10004B564(&qword_1005AF028, &qword_1004D0238);
      sub_10000A6F0(v22, qword_1005E0A68);
      Row.subscript.getter();
      v23 = *v16;
      (*v16)(v19, v20);
      v24 = *(v0 + 88);
      v25 = *(v0 + 96);
      v23(v21, v20);
      v27 = _swiftEmptyArrayStorage[2];
      v26 = _swiftEmptyArrayStorage[3];
      if (v27 >= v26 >> 1)
      {
        sub_100239724((v26 > 1), v27 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v27 + 1;
      v28 = &_swiftEmptyArrayStorage[4 * v27];
      v28[4] = v69;
      v28[5] = v66;
      v28[6] = v24;
      v28[7] = v25;
    }

    while (--v14);
  }

  v29 = *(v0 + 184);
  v30 = *(v0 + 192);
  v31 = *(v0 + 176);
  dispatch thunk of _AnyIteratorBoxBase.next()();
  v67 = *(v30 + 48);
  if (v67(v31, 1, v29) != 1)
  {
    v40 = *(v0 + 192);
    v41 = *(v40 + 32);
    v40 += 32;
    v61 = (v40 - 16);
    v63 = v41;
    v42 = (v40 - 24);
    do
    {
      v44 = *(v0 + 200);
      v43 = *(v0 + 208);
      v45 = *(v0 + 184);
      v63(v43, *(v0 + 176), v45);
      (*v61)(v44, v43, v45);
      Row.subscript.getter();
      v47 = *(v0 + 104);
      v46 = *(v0 + 112);
      if (qword_1005A8480 != -1)
      {
        swift_once();
      }

      v48 = *(v0 + 200);
      v49 = *(v0 + 208);
      v50 = *(v0 + 184);
      v51 = sub_10004B564(&qword_1005AF028, &qword_1004D0238);
      sub_10000A6F0(v51, qword_1005E0A68);
      Row.subscript.getter();
      v52 = *v42;
      (*v42)(v48, v50);
      v52(v49, v50);
      v53 = *(v0 + 120);
      v55 = _swiftEmptyArrayStorage[2];
      v54 = _swiftEmptyArrayStorage[3];
      if (v55 >= v54 >> 1)
      {
        v60 = *(v0 + 120);
        sub_100239724((v54 > 1), v55 + 1, 1);
        v53 = v60;
      }

      v56 = *(v0 + 176);
      v57 = *(v0 + 184);
      _swiftEmptyArrayStorage[2] = v55 + 1;
      v58 = &_swiftEmptyArrayStorage[4 * v55];
      v58[4] = v47;
      v58[5] = v46;
      *(v58 + 3) = v53;
      dispatch thunk of _AnyIteratorBoxBase.next()();
    }

    while (v67(v56, 1, v57) != 1);
  }

  v32 = *(v0 + 176);

  sub_100002CE0(v32, &qword_1005AF468, &qword_1004D06C0);
  v34 = *(v0 + 248);
  v33 = *(v0 + 256);
  v35 = *(v0 + 240);
  if (_swiftEmptyArrayStorage[2])
  {
    v37 = _swiftEmptyArrayStorage[4];
    v36 = _swiftEmptyArrayStorage[5];
    v38 = _swiftEmptyArrayStorage[6];
    v39 = _swiftEmptyArrayStorage[7];

    sub_100005F6C(v38, v39);

    (*(v34 + 8))(v33, v35);
  }

  else
  {
    (*(v34 + 8))(*(v0 + 256), *(v0 + 240));

    v37 = 0;
    v36 = 0;
    v38 = 0;
    v39 = 0;
  }

  v59 = *(v0 + 8);

  return v59(v37, v36, v38, v39);
}

uint64_t sub_10032EFC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[10] = a5;
  v6[11] = v5;
  v6[8] = a3;
  v6[9] = a4;
  v6[6] = a1;
  v6[7] = a2;
  v7 = type metadata accessor for OnConflict();
  v6[12] = v7;
  v6[13] = *(v7 - 8);
  v6[14] = swift_task_alloc();
  v8 = type metadata accessor for Insert();
  v6[15] = v8;
  v6[16] = *(v8 - 8);
  v6[17] = swift_task_alloc();

  return _swift_task_switch(sub_10032F0E4, 0, 0);
}

uint64_t sub_10032F0E4()
{
  v1 = *(*(v0 + 88) + 112);
  *(v0 + 144) = v1;
  return _swift_task_switch(sub_10032F108, v1, 0);
}

uint64_t sub_10032F108()
{
  sub_10000A0A4();
  *(v0 + 152) = 0;
  v1 = *(v0 + 144);

  return _swift_task_switch(sub_10032F1D0, v1, 0);
}

uint64_t sub_10032F1D0()
{
  type metadata accessor for LocalStorageDatabase(0);
  sub_10000A49C(&qword_1005B19F0, type metadata accessor for LocalStorageDatabase, &unk_1004D5700);
  *(v0 + 160) = Database.writeConnection.getter();

  return _swift_task_switch(sub_10032F284, 0, 0);
}

uint64_t sub_10032F284()
{
  if (!v0[20])
  {
    v10 = type metadata accessor for DatabaseError();
    sub_10000A49C(&qword_1005AF460, &type metadata accessor for DatabaseError, &protocol conformance descriptor for DatabaseError);
    swift_allocError();
    (*(*(v10 - 8) + 104))(v11, enum case for DatabaseError.notConnected(_:), v10);
    swift_willThrow();
    goto LABEL_9;
  }

  (*(v0[13] + 104))(v0[14], enum case for OnConflict.replace(_:), v0[12]);
  sub_10004B564(&qword_1005AF4F0, &qword_1004D07D0);
  type metadata accessor for Setter();
  *(swift_allocObject() + 16) = xmmword_1004C2310;
  if (qword_1005A8488 != -1)
  {
    swift_once();
  }

  v1 = v0[6];
  v2 = v0[7];
  v3 = sub_10004B564(&qword_1005B1A68, &qword_1004D5878);
  sub_10000A6F0(v3, qword_1005E0A80);
  v0[2] = v1;
  v0[3] = v2;
  sub_100300D10();

  <- infix<A>(_:_:)();

  if (qword_1005A8480 != -1)
  {
    swift_once();
  }

  v4 = v0[13];
  v5 = v0[14];
  v14 = v0[12];
  v15 = v0[19];
  v6 = v0[9];
  v7 = v0[8];
  v8 = sub_10004B564(&qword_1005AF028, &qword_1004D0238);
  sub_10000A6F0(v8, qword_1005E0A68);
  v0[4] = v7;
  v0[5] = v6;
  sub_100005F6C(v7, v6);
  <- infix<A>(_:_:)();
  sub_1000049D0(v0[4], v0[5]);
  type metadata accessor for Table();
  QueryType.insert(or:_:)();

  (*(v4 + 8))(v5, v14);
  Connection.run(_:)();
  v9 = v0[16];
  if (v15)
  {
    (*(v9 + 8))(v0[17], v0[15]);

LABEL_9:

    v12 = v0[1];
    goto LABEL_11;
  }

  (*(v9 + 8))();

  v12 = v0[1];
LABEL_11:

  return v12();
}

uint64_t sub_10032F670(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[6] = a3;
  v4[7] = v3;
  v4[4] = a1;
  v4[5] = a2;
  v5 = sub_10004B564(&qword_1005AF0B0, &unk_1004D0290);
  v4[8] = v5;
  v4[9] = *(v5 - 8);
  v4[10] = swift_task_alloc();
  v6 = type metadata accessor for Table();
  v4[11] = v6;
  v4[12] = *(v6 - 8);
  v4[13] = swift_task_alloc();
  v7 = type metadata accessor for Delete();
  v4[14] = v7;
  v4[15] = *(v7 - 8);
  v4[16] = swift_task_alloc();

  return _swift_task_switch(sub_10032F7F8, 0, 0);
}

uint64_t sub_10032F7F8()
{
  v1 = *(*(v0 + 56) + 112);
  *(v0 + 136) = v1;
  return _swift_task_switch(sub_10032F81C, v1, 0);
}

uint64_t sub_10032F81C()
{
  sub_10000A0A4();
  *(v0 + 144) = 0;
  v1 = *(v0 + 136);

  return _swift_task_switch(sub_10032F8F4, v1, 0);
}

uint64_t sub_10032F8F4()
{
  type metadata accessor for LocalStorageDatabase(0);
  sub_10000A49C(&qword_1005B19F0, type metadata accessor for LocalStorageDatabase, &unk_1004D5700);
  *(v0 + 152) = Database.writeConnection.getter();

  return _swift_task_switch(sub_10032F9A8, 0, 0);
}

uint64_t sub_10032F9A8()
{
  v26 = v0;
  if (!v0[19])
  {
    v18 = type metadata accessor for DatabaseError();
    sub_10000A49C(&qword_1005AF460, &type metadata accessor for DatabaseError, &protocol conformance descriptor for DatabaseError);
    swift_allocError();
    (*(*(v18 - 8) + 104))(v19, enum case for DatabaseError.notConnected(_:), v18);
    swift_willThrow();
    goto LABEL_11;
  }

  if (qword_1005A84A0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000A6F0(v1, qword_1005E0AC8);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[4];
    v4 = v0[5];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v25 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_10000D01C(v5, v4, &v25);
    _os_log_impl(&_mh_execute_header, v2, v3, "Deleting record for: %s", v6, 0xCu);
    sub_100004984(v7);
  }

  if (qword_1005A8488 != -1)
  {
    swift_once();
  }

  v24 = v0[18];
  v8 = v0[12];
  v9 = v0[13];
  v11 = v0[10];
  v10 = v0[11];
  v12 = v0[9];
  v23 = v0[8];
  v13 = v0[5];
  v14 = v0[4];
  v15 = sub_10004B564(&qword_1005B1A68, &qword_1004D5878);
  sub_10000A6F0(v15, qword_1005E0A80);
  v0[2] = v14;
  v0[3] = v13;
  sub_100300D10();
  == infix<A>(_:_:)();
  QueryType.filter(_:)();
  (*(v12 + 8))(v11, v23);
  QueryType.delete()();
  (*(v8 + 8))(v9, v10);
  v16 = Connection.run(_:)();
  v17 = v0[15];
  if (v24)
  {
    (*(v17 + 8))(v0[16], v0[14]);

LABEL_11:

    v20 = v0[1];
    v21 = 0;
    goto LABEL_13;
  }

  (*(v17 + 8))();

  v20 = v0[1];
  v21 = v16 > 0;
LABEL_13:

  return v20(v21);
}

uint64_t sub_10032FDA0()
{
  v0 = type metadata accessor for Logger();
  sub_10004F154(v0, qword_1005E0AC8);
  v1 = sub_10000A6F0(v0, qword_1005E0AC8);
  if (qword_1005A84A8 != -1)
  {
    swift_once();
  }

  v2 = sub_10000A6F0(v0, qword_1005E0AE0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_10032FE68()
{

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_10032FECC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_10004B564(&qword_1005AEB98, &unk_1004D07C0);
  __chkstk_darwin(v4 - 8);
  v6 = &v21 - v5;
  v7 = type metadata accessor for SharedSecretKey();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1005A8198 != -1)
  {
    swift_once();
  }

  v11 = sub_10004B564(&qword_1005AF028, &qword_1004D0238);
  sub_10000A6F0(v11, qword_1005E01B0);
  Row.subscript.getter();
  sub_10000A49C(&qword_1005AEC08, &type metadata accessor for SharedSecretKey, &protocol conformance descriptor for SharedSecretKey);
  KeyRepresenting.init(rawValue:)();
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_100002CE0(v6, &qword_1005AEB98, &unk_1004D07C0);
    v12 = objc_allocWithZone(NSError);
    v13 = String._bridgeToObjectiveC()();
    [v12 initWithDomain:v13 code:0 userInfo:0];

    swift_willThrow();
    v14 = type metadata accessor for Row();
    return (*(*(v14 - 8) + 8))(a1, v14);
  }

  else
  {
    v22 = *(v8 + 32);
    v22(v10, v6, v7);
    if (qword_1005A8180 != -1)
    {
      swift_once();
    }

    v16 = sub_10004B564(&qword_1005AF078, &unk_1004D0260);
    sub_10000A6F0(v16, qword_1005E0168);
    type metadata accessor for UUID();
    Row.subscript.getter();
    if (qword_1005A81A0 != -1)
    {
      swift_once();
    }

    v17 = sub_10004B564(&qword_1005AF0C8, &unk_1004D02A0);
    sub_10000A6F0(v17, qword_1005E01C8);
    v18 = type metadata accessor for OwnerSharedSecretsRecord(0);
    type metadata accessor for Date();
    Row.subscript.getter();
    if (qword_1005A8190 != -1)
    {
      swift_once();
    }

    v19 = sub_10004B564(&qword_1005AF0B8, &qword_1004D5850);
    sub_10000A6F0(v19, qword_1005E0198);
    sub_1001B921C();
    Row.subscript.getter();
    v20 = type metadata accessor for Row();
    (*(*(v20 - 8) + 8))(a1, v20);
    *(a2 + *(v18 + 20)) = v21 == 1;
    return (v22)(a2 + *(v18 + 24), v10, v7);
  }
}

uint64_t sub_100330374(uint64_t a1, uint64_t a2)
{
  v3[5] = a1;
  v3[6] = a2;
  v4 = type metadata accessor for OnConflict();
  v3[7] = v4;
  v3[8] = *(v4 - 8);
  v3[9] = swift_task_alloc();

  return _swift_task_switch(sub_100330434, v2, 0);
}

uint64_t sub_100330434()
{
  if (qword_1005A8130 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  v3 = *(v0 + 56);
  v17 = type metadata accessor for Table();
  sub_10000A6F0(v17, qword_1005E0060);
  (*(v1 + 104))(v2, enum case for OnConflict.replace(_:), v3);
  sub_10004B564(&qword_1005AF4F0, &qword_1004D07D0);
  type metadata accessor for Setter();
  *(swift_allocObject() + 16) = xmmword_1004C0BC0;
  if (qword_1005A8180 != -1)
  {
    swift_once();
  }

  v4 = sub_10004B564(&qword_1005AF078, &unk_1004D0260);
  sub_10000A6F0(v4, qword_1005E0168);
  type metadata accessor for UUID();
  <- infix<A>(_:_:)();
  if (qword_1005A8188 != -1)
  {
    swift_once();
  }

  v5 = sub_10004B564(&qword_1005AF058, &unk_1004D0250);
  sub_10000A6F0(v5, qword_1005E0180);
  *(v0 + 32) = 1;
  <- infix<A>(_:_:)();
  if (qword_1005A81A0 != -1)
  {
    swift_once();
  }

  v6 = sub_10004B564(&qword_1005AF0C8, &unk_1004D02A0);
  sub_10000A6F0(v6, qword_1005E01C8);
  v7 = type metadata accessor for OwnerSharedSecretsRecord(0);
  type metadata accessor for Date();
  <- infix<A>(_:_:)();
  if (qword_1005A8190 != -1)
  {
    swift_once();
  }

  v8 = *(v0 + 48);
  v9 = sub_10004B564(&qword_1005AF0B8, &qword_1004D5850);
  sub_10000A6F0(v9, qword_1005E0198);
  *(v0 + 80) = *(v8 + *(v7 + 20));
  sub_1001B921C();
  <- infix<A>(_:_:)();
  if (qword_1005A8198 != -1)
  {
    swift_once();
  }

  v10 = *(v0 + 64);
  v11 = *(v0 + 72);
  v12 = *(v0 + 56);
  v13 = sub_10004B564(&qword_1005AF028, &qword_1004D0238);
  sub_10000A6F0(v13, qword_1005E01B0);
  *(v0 + 16) = SharedSecretKey.data.getter();
  *(v0 + 24) = v14;
  <- infix<A>(_:_:)();
  sub_1000049D0(*(v0 + 16), *(v0 + 24));
  QueryType.insert(or:_:)();

  (*(v10 + 8))(v11, v12);

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_1003308CC()
{
  v1 = *(*(v0 + 16) + 112);
  *(v0 + 24) = v1;
  return _swift_task_switch(sub_1003308F0, v1, 0);
}

uint64_t sub_1003308F0()
{
  v1 = v0[2];
  v0[4] = type metadata accessor for LocalStorageDatabase(0);
  v0[5] = sub_10000A49C(&qword_1005B19F0, type metadata accessor for LocalStorageDatabase, &unk_1004D5700);
  v0[6] = Database.readConnection.getter();

  return _swift_task_switch(sub_1003309B4, v1, 0);
}

uint64_t sub_1003309B4()
{
  if (v0[6])
  {
    v1 = v0[3];

    return _swift_task_switch(sub_100330AF8, v1, 0);
  }

  else
  {
    v2 = type metadata accessor for DatabaseError();
    sub_10000A49C(&qword_1005AF460, &type metadata accessor for DatabaseError, &protocol conformance descriptor for DatabaseError);
    swift_allocError();
    (*(*(v2 - 8) + 104))(v3, enum case for DatabaseError.notConnected(_:), v2);
    swift_willThrow();
    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_100330AF8()
{
  v0[7] = Database.columnNames(connection:tableName:)();
  v0[8] = 0;
  v1 = v0[2];

  return _swift_task_switch(sub_100330B9C, v1, 0);
}

uint64_t sub_100330B9C()
{
  v1 = sub_10023F00C(v0[7]);

  v2 = sub_10021B304(0xD000000000000018, 0x80000001004E4820, v1);

  if (v2)
  {
    if (qword_1005A84A0 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_10000A6F0(v3, qword_1005E0AC8);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "LocalStorage.db is good", v6, 2u);
    }

    else
    {
    }

    v12 = v0[1];

    return v12();
  }

  else
  {
    if (qword_1005A84A0 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_10000A6F0(v7, qword_1005E0AC8);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "LocalStorage.db is missing handleSiblingIdentifiers -- needs to be reset", v10, 2u);
    }

    v11 = v0[3];

    return _swift_task_switch(sub_100330E00, v11, 0);
  }
}

uint64_t sub_100330E00()
{
  Database.reset()();
  *(v0 + 72) = v1;
  v2 = *(v0 + 16);
  if (v1)
  {
    v3 = sub_100253EE0;
  }

  else
  {
    v3 = sub_100016108;
  }

  return _swift_task_switch(v3, v2, 0);
}

uint64_t sub_100330E90()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100330EF4(uint64_t a1, uint64_t a2)
{
  v2[8] = a1;
  v2[9] = a2;
  v3 = type metadata accessor for OnConflict();
  v2[10] = v3;
  v2[11] = *(v3 - 8);
  v2[12] = swift_task_alloc();

  return _swift_task_switch(sub_100330FB4, 0, 0);
}

uint64_t sub_100330FB4()
{
  if (qword_1005A8140 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  v3 = *(v0 + 80);
  v4 = type metadata accessor for Table();
  sub_10000A6F0(v4, qword_1005E0090);
  (*(v2 + 104))(v1, enum case for OnConflict.replace(_:), v3);
  sub_10004B564(&qword_1005AF4F0, &qword_1004D07D0);
  type metadata accessor for Setter();
  *(swift_allocObject() + 16) = xmmword_1004C0BE0;
  if (qword_1005A82A8 != -1)
  {
    swift_once();
  }

  v5 = sub_10004B564(&qword_1005AF068, &unk_1004D06E0);
  sub_10000A6F0(v5, qword_1005E04E0);
  *(v0 + 16) = Device.identifier.getter();
  *(v0 + 24) = v6;
  <- infix<A>(_:_:)();

  if (qword_1005A82B0 != -1)
  {
    swift_once();
  }

  sub_10000A6F0(v5, qword_1005E04F8);
  *(v0 + 32) = Device.deviceName.getter();
  *(v0 + 40) = v7;
  <- infix<A>(_:_:)();

  if (qword_1005A82B8 != -1)
  {
    swift_once();
  }

  sub_10000A6F0(v5, qword_1005E0510);
  *(v0 + 48) = Device.idsDeviceId.getter();
  *(v0 + 56) = v8;
  <- infix<A>(_:_:)();

  if (qword_1005A82C0 != -1)
  {
    swift_once();
  }

  v9 = sub_10004B564(&qword_1005AF0B0, &unk_1004D0290);
  sub_10000A6F0(v9, qword_1005E0528);
  *(v0 + 104) = Device.isActive.getter() & 1;
  <- infix<A>(_:_:)();
  if (qword_1005A82C8 != -1)
  {
    swift_once();
  }

  sub_10000A6F0(v9, qword_1005E0540);
  *(v0 + 105) = Device.isThisDevice.getter() & 1;
  <- infix<A>(_:_:)();
  if (qword_1005A82D0 != -1)
  {
    swift_once();
  }

  sub_10000A6F0(v9, qword_1005E0558);
  *(v0 + 106) = Device.isCompanion.getter() & 1;
  <- infix<A>(_:_:)();
  if (qword_1005A82D8 != -1)
  {
    swift_once();
  }

  v10 = *(v0 + 88);
  v11 = *(v0 + 96);
  v12 = *(v0 + 80);
  sub_10000A6F0(v9, qword_1005E0570);
  *(v0 + 107) = Device.isAutoMeCapable.getter() & 1;
  <- infix<A>(_:_:)();
  QueryType.insert(or:_:)();

  (*(v10 + 8))(v11, v12);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_10033150C(uint64_t a1, uint64_t a2)
{
  v2[1005] = a2;
  v2[1004] = a1;
  v3 = type metadata accessor for OnConflict();
  v2[1006] = v3;
  v2[1007] = *(v3 - 8);
  v2[1008] = swift_task_alloc();
  v4 = swift_task_alloc();
  v2[1009] = v4;
  *v4 = v2;
  v4[1] = sub_100331604;

  return sub_100325664((v2 + 2));
}

uint64_t sub_100331604()
{
  *(*v1 + 8080) = v0;

  if (v0)
  {
    v2 = sub_100332C58;
  }

  else
  {
    v2 = sub_100331718;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100331718()
{
  v208 = v0;
  v1 = (v0 + 3856);
  v2 = (v0 + 5744);
  v3 = (v0 + 7792);
  v4 = *(v0 + 8040);
  *(v0 + 5888) = v4[16];
  v5 = v4[19];
  v6 = v4[20];
  v7 = v4[18];
  *(v0 + 5904) = v4[17];
  *(v0 + 5952) = v6;
  *(v0 + 5936) = v5;
  *(v0 + 5920) = v7;
  v8 = v4[23];
  v9 = v4[24];
  v10 = v4[22];
  *(v0 + 5968) = v4[21];
  *(v0 + 6016) = v9;
  *(v0 + 6000) = v8;
  *(v0 + 5984) = v10;
  v11 = v4[21];
  v12 = v4[22];
  v13 = v4[23];
  *(v0 + 6160) = v4[24];
  *(v0 + 6144) = v13;
  *(v0 + 6128) = v12;
  *(v0 + 6112) = v11;
  v14 = v4[17];
  v15 = v4[18];
  v16 = v4[19];
  *(v0 + 6096) = v4[20];
  *(v0 + 6080) = v16;
  *(v0 + 6064) = v15;
  *(v0 + 6048) = v14;
  *(v0 + 6032) = v4[16];
  if (sub_10005A3B0(v0 + 6032) == 1)
  {
    memcpy((v0 + 1456), (v0 + 16), 0x1E0uLL);
    if (sub_100033B90(v0 + 1456) == 1)
    {
      sub_10017E0C8(v0 + 5744);
    }

    else
    {
      v21 = *(v0 + 1792);
      v22 = *(v0 + 1824);
      *(v0 + 5840) = *(v0 + 1808);
      *(v0 + 5856) = v22;
      *(v0 + 5872) = *(v0 + 1840);
      v23 = *(v0 + 1728);
      v24 = *(v0 + 1760);
      *(v0 + 5776) = *(v0 + 1744);
      *(v0 + 5792) = v24;
      *(v0 + 5808) = *(v0 + 1776);
      *(v0 + 5824) = v21;
      *v2 = *(v0 + 1712);
      *(v0 + 5760) = v23;
    }
  }

  else
  {
    v17 = *(v0 + 6000);
    *(v0 + 5840) = *(v0 + 5984);
    *(v0 + 5856) = v17;
    *(v0 + 5872) = *(v0 + 6016);
    v18 = *(v0 + 5936);
    *(v0 + 5776) = *(v0 + 5920);
    *(v0 + 5792) = v18;
    v19 = *(v0 + 5968);
    *(v0 + 5808) = *(v0 + 5952);
    *(v0 + 5824) = v19;
    v20 = *(v0 + 5904);
    *v2 = *(v0 + 5888);
    *(v0 + 5760) = v20;
  }

  v25 = (v0 + 7712);
  v26 = (v0 + 4016);
  v27 = *(v0 + 8040);
  v28 = v27[7];
  *v1 = v27[6];
  *(v0 + 3872) = v28;
  v29 = v27[11];
  v31 = v27[8];
  v30 = v27[9];
  *(v0 + 3920) = v27[10];
  *(v0 + 3936) = v29;
  *(v0 + 3888) = v31;
  *(v0 + 3904) = v30;
  v32 = v27[15];
  v34 = v27[12];
  v33 = v27[13];
  *(v0 + 3984) = v27[14];
  *(v0 + 4000) = v32;
  *(v0 + 3952) = v34;
  *(v0 + 3968) = v33;
  v35 = v27[7];
  *(v0 + 3696) = v27[6];
  *(v0 + 3712) = v35;
  v36 = v27[11];
  v38 = v27[8];
  v37 = v27[9];
  *(v0 + 3760) = v27[10];
  *(v0 + 3776) = v36;
  *(v0 + 3728) = v38;
  *(v0 + 3744) = v37;
  v39 = v27[15];
  v41 = v27[12];
  v40 = v27[13];
  *(v0 + 3824) = v27[14];
  *(v0 + 3840) = v39;
  *(v0 + 3792) = v41;
  *(v0 + 3808) = v40;
  if (sub_10002D650(v0 + 3696) == 1)
  {
    memcpy((v0 + 1936), (v0 + 16), 0x1E0uLL);
    if (sub_100033B90(v0 + 1936) == 1)
    {
      v42 = (v0 + 4176);
      sub_10003170C((v0 + 4176));
    }

    else
    {
      v42 = (v0 + 3536);
      v49 = *(v0 + 2144);
      *(v0 + 3632) = *(v0 + 2128);
      *(v0 + 3648) = v49;
      v50 = *(v0 + 2176);
      *(v0 + 3664) = *(v0 + 2160);
      *(v0 + 3680) = v50;
      v51 = *(v0 + 2080);
      *(v0 + 3568) = *(v0 + 2064);
      *(v0 + 3584) = v51;
      v52 = *(v0 + 2112);
      *(v0 + 3600) = *(v0 + 2096);
      *(v0 + 3616) = v52;
      v53 = *(v0 + 2048);
      *(v0 + 3536) = *(v0 + 2032);
      *(v0 + 3552) = v53;
      sub_100005F04(v0 + 3536, v0 + 2896, &qword_1005A9328, &unk_1004C7F20);
    }

    v54 = v42[7];
    *(v0 + 4112) = v42[6];
    *(v0 + 4128) = v54;
    v55 = v42[9];
    *(v0 + 4144) = v42[8];
    *(v0 + 4160) = v55;
    v56 = v42[3];
    *(v0 + 4048) = v42[2];
    *(v0 + 4064) = v56;
    v57 = v42[5];
    *(v0 + 4080) = v42[4];
    *(v0 + 4096) = v57;
    v47 = *v42;
    v48 = v42[1];
  }

  else
  {
    v43 = *(v0 + 3968);
    *(v0 + 4112) = *(v0 + 3952);
    *(v0 + 4128) = v43;
    v44 = *(v0 + 4000);
    *(v0 + 4144) = *(v0 + 3984);
    *(v0 + 4160) = v44;
    v45 = *(v0 + 3904);
    *(v0 + 4048) = *(v0 + 3888);
    *(v0 + 4064) = v45;
    v46 = *(v0 + 3936);
    *(v0 + 4080) = *(v0 + 3920);
    *(v0 + 4096) = v46;
    v47 = *v1;
    v48 = *(v0 + 3872);
  }

  *v26 = v47;
  *(v0 + 4032) = v48;
  v202 = (v0 + 6608);
  v58 = (v0 + 6896);
  v59 = *(v0 + 8040);
  v60 = v59[26];
  v61 = v59[27];
  v62 = v59[29];
  *(v0 + 7840) = v59[28];
  *(v0 + 7856) = v62;
  *(v0 + 7824) = v61;
  *v3 = v59[25];
  *(v0 + 7808) = v60;
  if (*(v0 + 7832))
  {
    sub_100005F04(v0 + 3856, v0 + 3216, &qword_1005A9328, &unk_1004C7F20);
    sub_100005F04(v0 + 7792, v0 + 7392, &qword_1005AD7A8, &qword_1004CA280);
    sub_100002CE0(v0 + 16, &qword_1005A90D8, &unk_1004C6AB0);
    v63 = *(v0 + 7840);
    *(v0 + 7744) = *(v0 + 7824);
    *(v0 + 7760) = v63;
    *(v0 + 7776) = *(v0 + 7856);
    v65 = *v3;
    v64 = *(v0 + 7808);
  }

  else
  {
    memcpy((v0 + 2416), (v0 + 16), 0x1E0uLL);
    if (sub_100033B90(v0 + 2416) == 1)
    {
      sub_100005F04(v0 + 3856, v0 + 4656, &qword_1005A9328, &unk_1004C7F20);
      *v25 = 0u;
      *(v0 + 7728) = 0u;
      *(v0 + 7744) = 0u;
      *(v0 + 7760) = 0u;
      *(v0 + 7776) = 0u;
      goto LABEL_18;
    }

    v66 = *(v0 + 2832);
    v67 = *(v0 + 2864);
    *(v0 + 7904) = *(v0 + 2848);
    *(v0 + 7920) = v67;
    *(v0 + 7936) = *(v0 + 2880);
    *(v0 + 7872) = *(v0 + 2816);
    *(v0 + 7888) = v66;
    sub_100005F04(v0 + 3856, v0 + 4336, &qword_1005A9328, &unk_1004C7F20);
    sub_100005F04(v0 + 7872, v0 + 7232, &qword_1005AD7A8, &qword_1004CA280);
    sub_100002CE0(v0 + 16, &qword_1005A90D8, &unk_1004C6AB0);
    v68 = *(v0 + 7920);
    *(v0 + 7744) = *(v0 + 7904);
    *(v0 + 7760) = v68;
    *(v0 + 7776) = *(v0 + 7936);
    v65 = *(v0 + 7872);
    v64 = *(v0 + 7888);
  }

  *v25 = v65;
  *(v0 + 7728) = v64;
LABEL_18:
  v204 = (v0 + 5744);
  v206 = (v0 + 7712);
  if (static SystemInfo.isInternalBuild.getter())
  {
    if (qword_1005A84A0 != -1)
    {
      swift_once();
    }

    v69 = *(v0 + 8040);
    v70 = type metadata accessor for Logger();
    sub_10000A6F0(v70, qword_1005E0AC8);
    sub_1001B5440(v69, v0 + 496);
    sub_100005F04(v25, v0 + 7312, &qword_1005AD7A8, &qword_1004CA280);
    v71 = (v0 + 7712);
    sub_100005F04(v0 + 4016, v0 + 3376, &qword_1005A9328, &unk_1004C7F20);
    v72 = Logger.logObject.getter();
    v73 = static os_log_type_t.default.getter();
    sub_1001B5478(v69);
    sub_100002CE0(v25, &qword_1005AD7A8, &qword_1004CA280);
    sub_100002CE0(v0 + 4016, &qword_1005A9328, &unk_1004C7F20);
    if (os_log_type_enabled(v72, v73))
    {
      v74 = *(v0 + 8040);
      v75 = swift_slowAlloc();
      v207[0] = swift_slowAlloc();
      *v75 = 141559811;
      *(v75 + 4) = 1752392040;
      *(v75 + 12) = 2081;
      v76 = v74[1];
      *(v0 + 6800) = *v74;
      *(v0 + 6816) = v76;
      v77 = v74[5];
      v79 = v74[2];
      v78 = v74[3];
      *(v0 + 6864) = v74[4];
      *(v0 + 6880) = v77;
      *(v0 + 6832) = v79;
      *(v0 + 6848) = v78;
      v80 = sub_100032B70();
      v82 = sub_10000D01C(v80, v81, v207);

      *(v75 + 14) = v82;
      *(v75 + 22) = 2160;
      *(v75 + 24) = 1752392040;
      *(v75 + 32) = 2081;
      v83 = *(v0 + 7760);
      *(v0 + 7504) = *(v0 + 7744);
      *(v0 + 7520) = v83;
      *(v0 + 7536) = *(v0 + 7776);
      v84 = *(v0 + 7728);
      *(v0 + 7472) = *v71;
      *(v0 + 7488) = v84;
      sub_100005F04(v71, v0 + 7552, &qword_1005AD7A8, &qword_1004CA280);
      sub_10004B564(&qword_1005AD7A8, &qword_1004CA280);
      v85 = String.init<A>(describing:)();
      v87 = sub_10000D01C(v85, v86, v207);

      *(v75 + 34) = v87;
      *(v75 + 42) = 2160;
      *(v75 + 44) = 1752392040;
      *(v75 + 52) = 2081;
      v88 = *(v0 + 4128);
      *(v0 + 5072) = *(v0 + 4112);
      *(v0 + 5088) = v88;
      v89 = *(v0 + 4160);
      *(v0 + 5104) = *(v0 + 4144);
      *(v0 + 5120) = v89;
      v90 = *(v0 + 4064);
      *(v0 + 5008) = *(v0 + 4048);
      *(v0 + 5024) = v90;
      v91 = *(v0 + 4096);
      *(v0 + 5040) = *(v0 + 4080);
      *(v0 + 5056) = v91;
      v92 = *(v0 + 4032);
      *(v0 + 4976) = *v26;
      *(v0 + 4992) = v92;
      sub_100005F04(v0 + 4016, v0 + 4496, &qword_1005A9328, &unk_1004C7F20);
      sub_10004B564(&qword_1005A9328, &unk_1004C7F20);
      v93 = String.init<A>(describing:)();
      v95 = sub_10000D01C(v93, v94, v207);

      *(v75 + 54) = v95;
      *(v75 + 62) = 2160;
      *(v75 + 64) = 1752392040;
      *(v75 + 72) = 2081;
      v96 = (v0 + 5744);
      v97 = *(v0 + 5856);
      *(v0 + 5696) = *(v0 + 5840);
      *(v0 + 5712) = v97;
      *(v0 + 5728) = *(v0 + 5872);
      v98 = *(v0 + 5792);
      *(v0 + 5632) = *(v0 + 5776);
      *(v0 + 5648) = v98;
      v99 = *(v0 + 5824);
      *(v0 + 5664) = *(v0 + 5808);
      *(v0 + 5680) = v99;
      v100 = *(v0 + 5760);
      *(v0 + 5600) = *v204;
      *(v0 + 5616) = v100;
      sub_10004B564(&qword_1005AD7E0, &qword_1004CA2C0);
      v101 = String.init<A>(describing:)();
      v103 = sub_10000D01C(v101, v102, v207);

      *(v75 + 74) = v103;
      _os_log_impl(&_mh_execute_header, v72, v73, "LocalStorageService write new serverSettings\nmyInfo: %{private,mask.hash}s\nprefs: %{private,mask.hash}s\ncontext: %{private,mask.hash}s\nconfig: %{private,mask.hash}s", v75, 0x52u);
      swift_arrayDestroy();
    }

    else
    {

      v96 = (v0 + 5744);
    }

    v58 = (v0 + 6896);
  }

  else
  {
    if (qword_1005A84A0 != -1)
    {
      swift_once();
    }

    v104 = *(v0 + 8040);
    v105 = type metadata accessor for Logger();
    sub_10000A6F0(v105, qword_1005E0AC8);
    sub_1001B5440(v104, v0 + 976);
    sub_100005F04(v25, v0 + 7632, &qword_1005AD7A8, &qword_1004CA280);
    v106 = (v0 + 7712);
    sub_100005F04(v0 + 4016, v0 + 5136, &qword_1005A9328, &unk_1004C7F20);
    v107 = Logger.logObject.getter();
    v108 = static os_log_type_t.default.getter();
    sub_1001B5478(v104);
    sub_100002CE0(v25, &qword_1005AD7A8, &qword_1004CA280);
    sub_100002CE0(v0 + 4016, &qword_1005A9328, &unk_1004C7F20);
    if (os_log_type_enabled(v107, v108))
    {
      v109 = *(v0 + 8040);
      v110 = swift_slowAlloc();
      v207[0] = swift_slowAlloc();
      *v110 = 136447747;
      v111 = v109[1];
      *(v0 + 6704) = *v109;
      *(v0 + 6720) = v111;
      v112 = v109[5];
      v114 = v109[2];
      v113 = v109[3];
      *(v0 + 6768) = v109[4];
      *(v0 + 6784) = v112;
      *(v0 + 6736) = v114;
      *(v0 + 6752) = v113;
      v115 = sub_100171264();
      v117 = sub_10000D01C(v115, v116, v207);

      *(v110 + 4) = v117;
      *(v110 + 12) = 2160;
      *(v110 + 14) = 1752392040;
      *(v110 + 22) = 2081;
      v118 = *(v0 + 7760);
      *(v0 + 7184) = *(v0 + 7744);
      *(v0 + 7200) = v118;
      *(v0 + 7216) = *(v0 + 7776);
      v119 = *(v0 + 7728);
      *(v0 + 7152) = *v106;
      *(v0 + 7168) = v119;
      sub_100005F04(v106, v0 + 7072, &qword_1005AD7A8, &qword_1004CA280);
      sub_10004B564(&qword_1005AD7A8, &qword_1004CA280);
      v120 = String.init<A>(describing:)();
      v122 = sub_10000D01C(v120, v121, v207);

      *(v110 + 24) = v122;
      *(v110 + 32) = 2160;
      *(v110 + 34) = 1752392040;
      *(v110 + 42) = 2081;
      v123 = *(v0 + 4128);
      *(v0 + 3152) = *(v0 + 4112);
      *(v0 + 3168) = v123;
      v124 = *(v0 + 4160);
      *(v0 + 3184) = *(v0 + 4144);
      *(v0 + 3200) = v124;
      v125 = *(v0 + 4064);
      *(v0 + 3088) = *(v0 + 4048);
      *(v0 + 3104) = v125;
      v126 = *(v0 + 4096);
      *(v0 + 3120) = *(v0 + 4080);
      *(v0 + 3136) = v126;
      v127 = *(v0 + 4032);
      *(v0 + 3056) = *v26;
      *(v0 + 3072) = v127;
      sub_100005F04(v0 + 4016, v0 + 5296, &qword_1005A9328, &unk_1004C7F20);
      sub_10004B564(&qword_1005A9328, &unk_1004C7F20);
      v128 = String.init<A>(describing:)();
      v130 = sub_10000D01C(v128, v129, v207);

      *(v110 + 44) = v130;
      *(v110 + 52) = 2160;
      *(v110 + 54) = 1752392040;
      *(v110 + 62) = 2081;
      v96 = (v0 + 5744);
      v131 = *(v0 + 5856);
      *(v0 + 6272) = *(v0 + 5840);
      *(v0 + 6288) = v131;
      *(v0 + 6304) = *(v0 + 5872);
      v132 = *(v0 + 5792);
      *(v0 + 6208) = *(v0 + 5776);
      *(v0 + 6224) = v132;
      v133 = *(v0 + 5824);
      *(v0 + 6240) = *(v0 + 5808);
      *(v0 + 6256) = v133;
      v134 = *(v0 + 5760);
      *(v0 + 6176) = *v204;
      *(v0 + 6192) = v134;
      sub_10004B564(&qword_1005AD7E0, &qword_1004CA2C0);
      v135 = String.init<A>(describing:)();
      v137 = sub_10000D01C(v135, v136, v207);

      *(v110 + 64) = v137;
      _os_log_impl(&_mh_execute_header, v107, v108, "LocalStorageService write new serverSettings\nmyInfo: %{public}s\nprefs: %{private,mask.hash}s\ncontext: %{private,mask.hash}s\nconfig: %{private,mask.hash}s", v110, 0x48u);
      swift_arrayDestroy();
    }

    else
    {

      v96 = (v0 + 5744);
    }
  }

  v138 = *(v0 + 8080);
  v139 = *(v0 + 8040);
  type metadata accessor for PropertyListEncoder();
  swift_allocObject();
  PropertyListEncoder.init()();
  v140 = v139[1];
  *v202 = *v139;
  *(v0 + 6624) = v140;
  v141 = v139[2];
  v142 = v139[3];
  v143 = v139[5];
  *(v0 + 6672) = v139[4];
  *(v0 + 6688) = v143;
  *(v0 + 6640) = v141;
  *(v0 + 6656) = v142;
  v144 = v139[1];
  *v58 = *v139;
  v58[1] = v144;
  v145 = v139[5];
  v147 = v139[2];
  v146 = v139[3];
  v58[4] = v139[4];
  v58[5] = v145;
  v58[2] = v147;
  v58[3] = v146;
  sub_100032B38(v202, v0 + 6320);
  sub_1001B54A8();
  v148 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  if (v138)
  {
    v150 = v58[3];
    *(v0 + 6448) = v58[2];
    *(v0 + 6464) = v150;
    v151 = v58[5];
    *(v0 + 6480) = v58[4];
    *(v0 + 6496) = v151;
    v152 = v58[1];
    *(v0 + 6416) = *v58;
    *(v0 + 6432) = v152;
    sub_100032B08(v0 + 6416);

    sub_100002CE0(v0 + 4016, &qword_1005A9328, &unk_1004C7F20);
    sub_100002CE0(v206, &qword_1005AD7A8, &qword_1004CA280);
    if (qword_1005A84A0 != -1)
    {
      swift_once();
    }

    v153 = type metadata accessor for Logger();
    sub_10000A6F0(v153, qword_1005E0AC8);
    swift_errorRetain();
    v154 = Logger.logObject.getter();
    v155 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v154, v155))
    {
      v156 = swift_slowAlloc();
      v207[0] = swift_slowAlloc();
      *v156 = 136446466;
      *(v156 + 4) = sub_10000D01C(0xD000000000000017, 0x80000001004E7BC0, v207);
      *(v156 + 12) = 2082;
      *(v0 + 8024) = v138;
      swift_errorRetain();
      sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
      v157 = String.init<A>(describing:)();
      v159 = sub_10000D01C(v157, v158, v207);

      *(v156 + 14) = v159;
      _os_log_impl(&_mh_execute_header, v154, v155, "%{public}s error: %{public}s", v156, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    v168 = *(v0 + 8032);
    v169 = type metadata accessor for Insert();
    (*(*(v169 - 8) + 56))(v168, 1, 1, v169);
  }

  else
  {
    v201 = v149;
    v203 = v148;
    v160 = v58[3];
    *(v0 + 6544) = v58[2];
    *(v0 + 6560) = v160;
    v161 = v58[5];
    *(v0 + 6576) = v58[4];
    *(v0 + 6592) = v161;
    v162 = v58[1];
    *(v0 + 6512) = *v58;
    *(v0 + 6528) = v162;
    sub_100032B08(v0 + 6512);

    swift_allocObject();
    PropertyListEncoder.init()();
    v163 = v96[7];
    *(v0 + 5552) = v96[6];
    *(v0 + 5568) = v163;
    *(v0 + 5584) = v96[8];
    v164 = v96[3];
    *(v0 + 5488) = v96[2];
    *(v0 + 5504) = v164;
    v165 = v96[5];
    *(v0 + 5520) = v96[4];
    *(v0 + 5536) = v165;
    v166 = v96[1];
    *(v0 + 5456) = *v96;
    *(v0 + 5472) = v166;
    sub_10004B564(&qword_1005AD7E0, &qword_1004CA2C0);
    sub_10033BD84();
    v167 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    v200 = v170;
    v205 = v167;

    swift_allocObject();
    PropertyListEncoder.init()();
    v171 = *(v0 + 4128);
    *(v0 + 4912) = *(v0 + 4112);
    *(v0 + 4928) = v171;
    v172 = *(v0 + 4160);
    *(v0 + 4944) = *(v0 + 4144);
    *(v0 + 4960) = v172;
    v173 = *(v0 + 4064);
    *(v0 + 4848) = *(v0 + 4048);
    *(v0 + 4864) = v173;
    v174 = *(v0 + 4096);
    *(v0 + 4880) = *(v0 + 4080);
    *(v0 + 4896) = v174;
    v175 = *(v0 + 4032);
    *(v0 + 4816) = *v26;
    *(v0 + 4832) = v175;
    sub_10004B564(&qword_1005A9328, &unk_1004C7F20);
    sub_10033BE08();
    v176 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    log = v177;
    v178 = v176;

    sub_100002CE0(v0 + 4016, &qword_1005A9328, &unk_1004C7F20);
    swift_allocObject();
    PropertyListEncoder.init()();
    v179 = *(v0 + 7760);
    *(v0 + 7024) = *(v0 + 7744);
    *(v0 + 7040) = v179;
    *(v0 + 7056) = *(v0 + 7776);
    v180 = *(v0 + 7728);
    *(v0 + 6992) = *v206;
    *(v0 + 7008) = v180;
    sub_10004B564(&qword_1005AD7A8, &qword_1004CA280);
    sub_10033BE8C();
    v181 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    v197 = v182;
    v198 = v181;

    sub_100002CE0(v206, &qword_1005AD7A8, &qword_1004CA280);
    if (qword_1005A8148 != -1)
    {
      swift_once();
    }

    v183 = *(v0 + 8064);
    v184 = *(v0 + 8056);
    v185 = *(v0 + 8048);
    v186 = type metadata accessor for Table();
    sub_10000A6F0(v186, qword_1005E00A8);
    (*(v184 + 104))(v183, enum case for OnConflict.replace(_:), v185);
    sub_10004B564(&qword_1005AF4F0, &qword_1004D07D0);
    type metadata accessor for Setter();
    *(swift_allocObject() + 16) = xmmword_1004C0BC0;
    if (qword_1005A82E0 != -1)
    {
      swift_once();
    }

    v187 = sub_10004B564(&qword_1005AF058, &unk_1004D0250);
    sub_10000A6F0(v187, qword_1005E0588);
    *(v0 + 8016) = 0;
    <- infix<A>(_:_:)();
    if (qword_1005A82E8 != -1)
    {
      swift_once();
    }

    v188 = sub_10004B564(&qword_1005AF028, &qword_1004D0238);
    sub_10000A6F0(v188, qword_1005E05A0);
    *(v0 + 8000) = v203;
    *(v0 + 8008) = v201;
    <- infix<A>(_:_:)();
    if (qword_1005A82F8 != -1)
    {
      swift_once();
    }

    v189 = sub_10004B564(&qword_1005AF038, &unk_1004D0240);
    sub_10000A6F0(v189, qword_1005E05D0);
    *(v0 + 7952) = v205;
    *(v0 + 7960) = v200;
    <- infix<A>(_:_:)();
    if (qword_1005A82F0 != -1)
    {
      swift_once();
    }

    sub_10000A6F0(v189, qword_1005E05B8);
    *(v0 + 7984) = v178;
    *(v0 + 7992) = log;
    <- infix<A>(_:_:)();
    if (qword_1005A8300 != -1)
    {
      swift_once();
    }

    v190 = *(v0 + 8064);
    v191 = *(v0 + 8056);
    v196 = *(v0 + 8048);
    v192 = *(v0 + 8032);
    sub_10000A6F0(v189, qword_1005E05E8);
    *(v0 + 7968) = v198;
    *(v0 + 7976) = v197;
    <- infix<A>(_:_:)();
    QueryType.insert(or:_:)();

    sub_10001A794(v198, v197);
    sub_10001A794(v178, log);
    sub_10001A794(v205, v200);
    sub_1000049D0(v203, v201);
    (*(v191 + 8))(v190, v196);
    v193 = type metadata accessor for Insert();
    (*(*(v193 - 8) + 56))(v192, 0, 1, v193);
  }

  v194 = *(v0 + 8);

  return v194();
}

uint64_t sub_100332C58()
{
  v14 = v0;
  v1 = v0[1010];
  if (qword_1005A84A0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A6F0(v2, qword_1005E0AC8);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v5 = 136446466;
    *(v5 + 4) = sub_10000D01C(0xD000000000000017, 0x80000001004E7BC0, &v13);
    *(v5 + 12) = 2082;
    v0[1003] = v1;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v6 = String.init<A>(describing:)();
    v8 = sub_10000D01C(v6, v7, &v13);

    *(v5 + 14) = v8;
    _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s error: %{public}s", v5, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v9 = v0[1004];
  v10 = type metadata accessor for Insert();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);

  v11 = v0[1];

  return v11();
}

uint64_t sub_100332EB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v24 = a3;
  v5 = type metadata accessor for Insert();
  v20 = *(v5 - 8);
  v21 = v5;
  __chkstk_darwin(v5);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Delete();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1005A8158 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Table();
  sub_10000A6F0(v12, qword_1005E00D8);
  QueryType.delete()();
  Connection.run(_:)();
  if (v3)
  {
    return (*(v9 + 8))(v11, v8);
  }

  v18 = v9;
  v19 = v8;
  v14 = *(a2 + 16);
  if (v14)
  {
    v15 = (a2 + 32);
    v16 = (v20 + 8);
    do
    {
      memcpy(v23, v15, 0x241uLL);
      sub_10005D0C0(v23, &v22);
      sub_100333184(v23);
      sub_10005D11C(v23);
      Connection.run(_:)();
      (*v16)(v7, v21);
      v15 += 584;
      --v14;
    }

    while (v14);
  }

  return (*(v18 + 8))(v11, v19);
}

uint64_t sub_100333184(uint64_t a1)
{
  v2 = __chkstk_darwin(a1);
  v4 = v3;
  v5 = sub_10004B564(&qword_1005B1A08, &qword_1004D5FF0);
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v184 = &v151 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v177 = &v151 - v10;
  v11 = __chkstk_darwin(v9);
  v176 = &v151 - v12;
  v13 = __chkstk_darwin(v11);
  v175 = &v151 - v14;
  v15 = __chkstk_darwin(v13);
  v174 = &v151 - v16;
  v17 = __chkstk_darwin(v15);
  v173 = &v151 - v18;
  v19 = __chkstk_darwin(v17);
  v172 = &v151 - v20;
  v21 = __chkstk_darwin(v19);
  v171 = &v151 - v22;
  v23 = __chkstk_darwin(v21);
  v170 = &v151 - v24;
  v25 = __chkstk_darwin(v23);
  v169 = &v151 - v26;
  v27 = __chkstk_darwin(v25);
  v167 = &v151 - v28;
  v29 = __chkstk_darwin(v27);
  v168 = &v151 - v30;
  v31 = __chkstk_darwin(v29);
  v166 = &v151 - v32;
  __chkstk_darwin(v31);
  v165 = &v151 - v33;
  v34 = type metadata accessor for OnConflict();
  v182 = *(v34 - 8);
  v183 = v34;
  __chkstk_darwin(v34);
  v180 = &v151 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v181 = type metadata accessor for Table();
  v179 = *(v181 - 8);
  __chkstk_darwin(v181);
  v178 = &v151 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PropertyListEncoder();
  swift_allocObject();
  v37 = PropertyListEncoder.init()();
  if (*(v2 + 80))
  {
    *&v187 = *(v2 + 80);
    sub_10004B564(&qword_1005A9630, &qword_1004C5680);
    sub_10001CCC4(&qword_1005A9EA8, &protocol witness table for String, &protocol conformance descriptor for <A> [A]);
    v38 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    if (v1)
    {
    }

    v41 = v39;
    v185 = v38;
    v42 = *(v2 + 104);
    if (!v42)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v185 = 0;
    v41 = 0xF000000000000000;
    v42 = *(v2 + 104);
    if (!v42)
    {
LABEL_8:
      v43 = 0;
      v44 = 0xF000000000000000;
      goto LABEL_9;
    }
  }

  *&v187 = v42;
  sub_10004B564(&qword_1005A9630, &qword_1004C5680);
  sub_10001CCC4(&qword_1005A9EA8, &protocol witness table for String, &protocol conformance descriptor for <A> [A]);
  v43 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  if (v1)
  {

    v45 = v185;
    v46 = v41;
    return sub_10001A794(v45, v46);
  }

LABEL_9:
  *&v162 = v43;
  *(&v162 + 1) = v44;
  if (*(v2 + 464))
  {
    *&v187 = *(v2 + 464);
    sub_10004B564(&qword_1005A9630, &qword_1004C5680);
    sub_10001CCC4(&qword_1005A9EA8, &protocol witness table for String, &protocol conformance descriptor for <A> [A]);
    v47 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    if (v1)
    {

      sub_10001A794(v185, v41);
      v46 = *(&v162 + 1);
      v45 = v162;
      return sub_10001A794(v45, v46);
    }

    *&v161 = v47;
    *(&v161 + 1) = v48;
  }

  else
  {
    *&v161 = 0;
    *(&v161 + 1) = 0xF000000000000000;
  }

  v49 = *(v2 + 304);
  v50 = *(v2 + 336);
  v215 = *(v2 + 320);
  v216 = v50;
  v51 = *(v2 + 240);
  v52 = *(v2 + 272);
  v211 = *(v2 + 256);
  v212 = v52;
  v53 = *(v2 + 272);
  v54 = *(v2 + 304);
  v213 = *(v2 + 288);
  v214 = v54;
  v55 = *(v2 + 176);
  v56 = *(v2 + 208);
  v207 = *(v2 + 192);
  v208 = v56;
  v57 = *(v2 + 208);
  v58 = *(v2 + 240);
  v209 = *(v2 + 224);
  v210 = v58;
  v59 = *(v2 + 144);
  v203 = *(v2 + 128);
  v204 = v59;
  v60 = *(v2 + 176);
  v62 = *(v2 + 128);
  v61 = *(v2 + 144);
  v205 = *(v2 + 160);
  v206 = v60;
  v63 = *(v2 + 336);
  v347 = v215;
  v348 = v63;
  v343 = v211;
  v344 = v53;
  v346 = v49;
  v345 = v213;
  v339 = v207;
  v340 = v57;
  v342 = v51;
  v341 = v209;
  v337[0] = v62;
  v337[1] = v61;
  v217 = *(v2 + 352);
  v349 = *(v2 + 352);
  v338 = v55;
  v337[2] = v205;
  if (sub_10004AFD4(v337) == 1 || !v338)
  {
    v64 = 0;
    v65 = 0xF000000000000000;
  }

  else
  {
    *&v187 = v338;
    sub_10004B564(&qword_1005A9630, &qword_1004C5680);
    sub_10001CCC4(&qword_1005A9EA8, &protocol witness table for String, &protocol conformance descriptor for <A> [A]);
    v64 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    if (v1)
    {

      sub_10001A794(v185, v41);
      sub_10001A794(v162, *(&v162 + 1));
      v46 = *(&v161 + 1);
      v45 = v161;
      return sub_10001A794(v45, v46);
    }
  }

  if (!*(v2 + 368))
  {
    v84 = v65;
    v85 = v64;
    if (qword_1005A84A0 != -1)
    {
      swift_once();
    }

    v86 = type metadata accessor for Logger();
    sub_10000A6F0(v86, qword_1005E0AC8);
    v87 = Logger.logObject.getter();
    v88 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v87, v88))
    {
      v89 = swift_slowAlloc();
      v90 = swift_slowAlloc();
      *&v187 = v90;
      *v89 = 136446210;
      *(v89 + 4) = sub_10000D01C(0x6628747265736E69, 0xEE00293A65636E65, &v187);
      _os_log_impl(&_mh_execute_header, v87, v88, "%{public}s: encounted fence with no ID.", v89, 0xCu);
      sub_100004984(v90);
    }

    sub_10033BD30();
    swift_allocError();
    *v91 = 0;
    *(v91 + 8) = 0;
    *(v91 + 16) = 2;
    swift_willThrow();
    sub_10001A794(v85, v84);
    sub_10001A794(v161, *(&v161 + 1));
    sub_10001A794(v162, *(&v162 + 1));
    sub_10001A794(v185, v41);
  }

  *(&v151 + 1) = *(v2 + 368);
  v157 = v65;
  v158 = v64;
  v154 = v4;
  *&v151 = *(v2 + 360);
  if (qword_1005A8158 != -1)
  {
    swift_once();
  }

  v159 = v41;
  v164 = v6;
  v155 = v37;
  v66 = v181;
  v67 = sub_10000A6F0(v181, qword_1005E00D8);
  (*(v179 + 16))(v178, v67, v66);
  (*(v182 + 104))(v180, enum case for OnConflict.replace(_:), v183);
  sub_10004B564(&qword_1005AF4F0, &qword_1004D07D0);
  v68 = *(type metadata accessor for Setter() - 8);
  v69 = (*(v68 + 80) + 32) & ~*(v68 + 80);
  v350 = *(v68 + 72);
  v70 = swift_allocObject();
  *(v70 + 16) = xmmword_1004D5F30;
  v153 = v70;
  v71 = v70 + v69;
  if (qword_1005A8318 != -1)
  {
    swift_once();
  }

  sub_10000A6F0(v5, qword_1005E0630);
  v202 = *v2;
  v187 = *v2;
  sub_100005F04(&v202, v186, &qword_1005A96A8, &qword_1004C3320);
  <- infix<A>(_:_:)();
  sub_100002CE0(&v202, &qword_1005A96A8, &qword_1004C3320);
  if (qword_1005A8320 != -1)
  {
    swift_once();
  }

  sub_10000A6F0(v5, qword_1005E0648);
  v201 = *(v2 + 16);
  v187 = *(v2 + 16);
  sub_100005F04(&v201, v186, &qword_1005A96A8, &qword_1004C3320);
  v72 = v350;
  <- infix<A>(_:_:)();
  sub_100002CE0(&v201, &qword_1005A96A8, &qword_1004C3320);
  v163 = v71;
  if (qword_1005A8328 != -1)
  {
    swift_once();
  }

  v152 = v1;
  sub_10000A6F0(v5, qword_1005E0660);
  v200 = *(v2 + 32);
  v187 = *(v2 + 32);
  sub_100005F04(&v200, v186, &qword_1005A96A8, &qword_1004C3320);
  <- infix<A>(_:_:)();
  sub_100002CE0(&v200, &qword_1005A96A8, &qword_1004C3320);
  if (qword_1005A8330 != -1)
  {
    swift_once();
  }

  sub_10000A6F0(v5, qword_1005E0678);
  v199 = *(v2 + 48);
  v187 = *(v2 + 48);
  sub_100005F04(&v199, v186, &qword_1005A96A8, &qword_1004C3320);
  <- infix<A>(_:_:)();
  sub_100002CE0(&v199, &qword_1005A96A8, &qword_1004C3320);
  if (qword_1005A8338 != -1)
  {
    swift_once();
  }

  sub_10000A6F0(v5, qword_1005E0690);
  v198 = *(v2 + 64);
  v187 = *(v2 + 64);
  sub_100005F04(&v198, v186, &qword_1005A96A8, &qword_1004C3320);
  <- infix<A>(_:_:)();
  sub_100002CE0(&v198, &qword_1005A96A8, &qword_1004C3320);
  if (qword_1005A8340 != -1)
  {
    swift_once();
  }

  v160 = sub_10004B564(&qword_1005AF038, &unk_1004D0240);
  sub_10000A6F0(v160, qword_1005E06A8);
  *&v187 = v185;
  *(&v187 + 1) = v159;
  v73 = v163;
  <- infix<A>(_:_:)();
  if (qword_1005A8348 != -1)
  {
    swift_once();
  }

  sub_10000A6F0(v5, qword_1005E06C0);
  v197 = *(v2 + 88);
  v187 = *(v2 + 88);
  sub_100005F04(&v197, v186, &qword_1005A96A8, &qword_1004C3320);
  <- infix<A>(_:_:)();
  sub_100002CE0(&v197, &qword_1005A96A8, &qword_1004C3320);
  v156 = v73 - v72;
  if (qword_1005A8350 != -1)
  {
    swift_once();
  }

  sub_10000A6F0(v160, qword_1005E06D8);
  v187 = v162;
  <- infix<A>(_:_:)();
  if (qword_1005A8358 != -1)
  {
    swift_once();
  }

  sub_10000A6F0(v5, qword_1005E06F0);
  v196 = *(v2 + 112);
  v187 = *(v2 + 112);
  sub_100005F04(&v196, v186, &qword_1005A96A8, &qword_1004C3320);
  <- infix<A>(_:_:)();
  sub_100002CE0(&v196, &qword_1005A96A8, &qword_1004C3320);
  if (qword_1005A8360 != -1)
  {
    swift_once();
  }

  v74 = sub_10004B564(&qword_1005AF068, &unk_1004D06E0);
  sub_10000A6F0(v74, qword_1005E0708);
  v187 = v151;
  <- infix<A>(_:_:)();
  if (qword_1005A8368 != -1)
  {
    swift_once();
  }

  *(&v151 + 1) = sub_10004B564(&qword_1005B1A20, &qword_1004D5818);
  sub_10000A6F0(*(&v151 + 1), qword_1005E0720);
  LOBYTE(v187) = *(v2 + 376);
  <- infix<A>(_:_:)();
  if (qword_1005A8370 != -1)
  {
    swift_once();
  }

  sub_10000A6F0(v5, qword_1005E0738);
  v195 = *(v2 + 384);
  v187 = *(v2 + 384);
  sub_100005F04(&v195, v186, &qword_1005A96A8, &qword_1004C3320);
  <- infix<A>(_:_:)();
  sub_100002CE0(&v195, &qword_1005A96A8, &qword_1004C3320);
  if (qword_1005A8378 != -1)
  {
    swift_once();
  }

  sub_10000A6F0(v5, qword_1005E0750);
  v194 = *(v2 + 400);
  v187 = *(v2 + 400);
  sub_100005F04(&v194, v186, &qword_1005A96A8, &qword_1004C3320);
  <- infix<A>(_:_:)();
  sub_100002CE0(&v194, &qword_1005A96A8, &qword_1004C3320);
  if (qword_1005A8380 != -1)
  {
    swift_once();
  }

  v75 = sub_10004B564(&qword_1005B1A28, &unk_1004D5820);
  sub_10000A6F0(v75, qword_1005E0768);
  *&v187 = *(v2 + 416);
  BYTE8(v187) = *(v2 + 424);
  <- infix<A>(_:_:)();
  if (qword_1005A8388 != -1)
  {
    swift_once();
  }

  *&v151 = v75;
  sub_10000A6F0(v75, qword_1005E0780);
  *&v187 = *(v2 + 448);
  BYTE8(v187) = *(v2 + 456);
  <- infix<A>(_:_:)();
  if (qword_1005A8390 != -1)
  {
    swift_once();
  }

  sub_10000A6F0(v5, qword_1005E0798);
  v193 = *(v2 + 432);
  v187 = *(v2 + 432);
  sub_100005F04(&v193, v186, &qword_1005A96A8, &qword_1004C3320);
  <- infix<A>(_:_:)();
  sub_100002CE0(&v193, &qword_1005A96A8, &qword_1004C3320);
  if (qword_1005A8398 != -1)
  {
    swift_once();
  }

  sub_10000A6F0(*(&v151 + 1), qword_1005E07B0);
  LOBYTE(v187) = *(v2 + 457);
  <- infix<A>(_:_:)();
  if (qword_1005A83A0 != -1)
  {
    swift_once();
  }

  sub_10000A6F0(v160, qword_1005E07C8);
  v187 = v161;
  <- infix<A>(_:_:)();
  if (qword_1005A83A8 != -1)
  {
    swift_once();
  }

  sub_10000A6F0(v5, qword_1005E07E0);
  v192 = *(v2 + 472);
  v187 = *(v2 + 472);
  sub_100005F04(&v192, v186, &qword_1005A96A8, &qword_1004C3320);
  <- infix<A>(_:_:)();
  sub_100002CE0(&v192, &qword_1005A96A8, &qword_1004C3320);
  if (qword_1005A83B0 != -1)
  {
    swift_once();
  }

  sub_10000A6F0(v151, qword_1005E07F8);
  *&v187 = *(v2 + 488);
  BYTE8(v187) = *(v2 + 496);
  <- infix<A>(_:_:)();
  if (qword_1005A83B8 != -1)
  {
    swift_once();
  }

  sub_10000A6F0(v5, qword_1005E0810);
  v191 = *(v2 + 504);
  v187 = *(v2 + 504);
  sub_100005F04(&v191, v186, &qword_1005A96A8, &qword_1004C3320);
  <- infix<A>(_:_:)();
  sub_100002CE0(&v191, &qword_1005A96A8, &qword_1004C3320);
  if (qword_1005A83C0 != -1)
  {
    swift_once();
  }

  sub_10000A6F0(v5, qword_1005E0828);
  v190 = *(v2 + 520);
  v187 = *(v2 + 520);
  sub_100005F04(&v190, v186, &qword_1005A96A8, &qword_1004C3320);
  <- infix<A>(_:_:)();
  sub_100002CE0(&v190, &qword_1005A96A8, &qword_1004C3320);
  if (qword_1005A83C8 != -1)
  {
    swift_once();
  }

  sub_10000A6F0(v5, qword_1005E0840);
  v189 = *(v2 + 536);
  v187 = *(v2 + 536);
  sub_100005F04(&v189, v186, &qword_1005A96A8, &qword_1004C3320);
  <- infix<A>(_:_:)();
  sub_100002CE0(&v189, &qword_1005A96A8, &qword_1004C3320);
  if (qword_1005A83D0 != -1)
  {
    swift_once();
  }

  sub_10000A6F0(v5, qword_1005E0858);
  v187 = *(v2 + 552);
  v188 = v187;
  sub_100005F04(&v188, v186, &qword_1005A96A8, &qword_1004C3320);
  <- infix<A>(_:_:)();
  sub_100002CE0(&v188, &qword_1005A96A8, &qword_1004C3320);
  if (qword_1005A83D8 != -1)
  {
    swift_once();
  }

  v76 = sub_10004B564(&qword_1005B1A50, &qword_1004D5860);
  sub_10000A6F0(v76, qword_1005E0870);
  *&v187 = *(v2 + 568);
  BYTE8(v187) = *(v2 + 576);
  <- infix<A>(_:_:)();
  v78 = v165;
  v77 = v166;
  v79 = v164;
  if (qword_1005A83E0 != -1)
  {
    swift_once();
  }

  v80 = sub_10000A6F0(v5, qword_1005E0888);
  v81 = *(v79 + 16);
  v81(v78, v80, v5);
  v335[12] = v215;
  v335[13] = v216;
  v336 = v217;
  v335[8] = v211;
  v335[9] = v212;
  v335[11] = v214;
  v335[10] = v213;
  v335[4] = v207;
  v335[5] = v208;
  v335[7] = v210;
  v335[6] = v209;
  v335[0] = v203;
  v335[1] = v204;
  v335[3] = v206;
  v335[2] = v205;
  if (sub_10004AFD4(v335) == 1)
  {
    v82 = 0;
    v83 = 0;
  }

  else
  {
    v83 = *(&v335[0] + 1);
    v82 = *&v335[0];
  }

  *&v187 = v82;
  *(&v187 + 1) = v83;
  <- infix<A>(_:_:)();

  v93 = *(v79 + 8);
  v92 = v79 + 8;
  v165 = v93;
  (v93)(v78, v5);
  if (qword_1005A83E8 != -1)
  {
    swift_once();
  }

  v94 = sub_10000A6F0(v5, qword_1005E08A0);
  v81(v77, v94, v5);
  v332 = v215;
  v333 = v216;
  v334 = v217;
  v328 = v211;
  v329 = v212;
  v331 = v214;
  v330 = v213;
  v324 = v207;
  v325 = v208;
  v327 = v210;
  v326 = v209;
  v320 = v203;
  v321 = v204;
  v323 = v206;
  v322 = v205;
  v95 = sub_10004AFD4(&v320);
  v96 = v167;
  if (v95 == 1)
  {
    v97 = 0;
    v98 = 0;
  }

  else
  {
    v98 = *(&v321 + 1);
    v97 = v321;
  }

  *&v187 = v97;
  *(&v187 + 1) = v98;
  <- infix<A>(_:_:)();

  (v165)(v77, v5);
  if (qword_1005A83F0 != -1)
  {
    swift_once();
  }

  v99 = sub_10000A6F0(v5, qword_1005E08B8);
  v81(v168, v99, v5);
  v317 = v215;
  v318 = v216;
  v319 = v217;
  v313 = v211;
  v314 = v212;
  v316 = v214;
  v315 = v213;
  v309 = v207;
  v310 = v208;
  v312 = v210;
  v311 = v209;
  v306[0] = v203;
  v306[1] = v204;
  v308 = v206;
  v307 = v205;
  v100 = sub_10004AFD4(v306);
  v164 = v92;
  if (v100 == 1)
  {
    v101 = 0;
    v102 = 0;
  }

  else
  {
    v102 = *(&v307 + 1);
    v101 = v307;
  }

  *&v187 = v101;
  *(&v187 + 1) = v102;
  v103 = v168;
  <- infix<A>(_:_:)();

  (v165)(v103, v5);
  if (qword_1005A83F8 != -1)
  {
    swift_once();
  }

  sub_10000A6F0(v160, qword_1005E08D0);
  *&v187 = v158;
  *(&v187 + 1) = v157;
  <- infix<A>(_:_:)();
  if (qword_1005A8400 != -1)
  {
    swift_once();
  }

  v104 = sub_10000A6F0(v5, qword_1005E08E8);
  v81(v96, v104, v5);
  v303 = v215;
  v304 = v216;
  v305 = v217;
  v299 = v211;
  v300 = v212;
  v302 = v214;
  v301 = v213;
  v295 = v207;
  v296 = v208;
  v298 = v210;
  v297 = v209;
  v293[0] = v203;
  v293[1] = v204;
  v294 = v206;
  v293[2] = v205;
  if (sub_10004AFD4(v293) == 1)
  {
    v105 = 0;
    v106 = 0;
  }

  else
  {
    v105 = *(&v294 + 1);
    v106 = v295;
  }

  *&v187 = v105;
  *(&v187 + 1) = v106;
  <- infix<A>(_:_:)();

  (v165)(v96, v5);
  if (qword_1005A8408 != -1)
  {
    swift_once();
  }

  v107 = sub_10000A6F0(v5, qword_1005E0900);
  v81(v169, v107, v5);
  v290 = v215;
  v291 = v216;
  v292 = v217;
  v286 = v211;
  v287 = v212;
  v289 = v214;
  v288 = v213;
  v282 = v207;
  v283 = v208;
  v285 = v210;
  v284 = v209;
  v281[0] = v203;
  v281[1] = v204;
  v281[3] = v206;
  v281[2] = v205;
  if (sub_10004AFD4(v281) == 1)
  {
    v108 = 0;
    v109 = 0;
  }

  else
  {
    v108 = *(&v282 + 1);
    v109 = v283;
  }

  *&v187 = v108;
  *(&v187 + 1) = v109;
  v110 = v169;
  <- infix<A>(_:_:)();

  (v165)(v110, v5);
  if (qword_1005A8410 != -1)
  {
    swift_once();
  }

  v111 = sub_10000A6F0(v5, qword_1005E0918);
  v81(v170, v111, v5);
  v278 = v215;
  v279 = v216;
  v280 = v217;
  v274 = v211;
  v275 = v212;
  v277 = v214;
  v276 = v213;
  v270[4] = v207;
  v271 = v208;
  v273 = v210;
  v272 = v209;
  v270[0] = v203;
  v270[1] = v204;
  v270[3] = v206;
  v270[2] = v205;
  if (sub_10004AFD4(v270) == 1)
  {
    v112 = 0;
    v113 = 0;
  }

  else
  {
    v112 = *(&v271 + 1);
    v113 = v272;
  }

  *&v187 = v112;
  *(&v187 + 1) = v113;
  v114 = v170;
  <- infix<A>(_:_:)();

  (v165)(v114, v5);
  if (qword_1005A8418 != -1)
  {
    swift_once();
  }

  v115 = sub_10000A6F0(v5, qword_1005E0930);
  v81(v171, v115, v5);
  v267 = v215;
  v268 = v216;
  v269 = v217;
  v263 = v211;
  v264 = v212;
  v266 = v214;
  v265 = v213;
  v260[4] = v207;
  v260[5] = v208;
  v262 = v210;
  v261 = v209;
  v260[0] = v203;
  v260[1] = v204;
  v260[3] = v206;
  v260[2] = v205;
  if (sub_10004AFD4(v260) == 1)
  {
    v116 = 0;
    v117 = 0;
  }

  else
  {
    v116 = *(&v261 + 1);
    v117 = v262;
  }

  *&v187 = v116;
  *(&v187 + 1) = v117;
  v118 = v171;
  <- infix<A>(_:_:)();

  (v165)(v118, v5);
  if (qword_1005A8420 != -1)
  {
    swift_once();
  }

  v119 = sub_10000A6F0(v5, qword_1005E0948);
  v81(v172, v119, v5);
  v257 = v215;
  v258 = v216;
  v259 = v217;
  v253 = v211;
  v254 = v212;
  v256 = v214;
  v255 = v213;
  v251[4] = v207;
  v251[5] = v208;
  v252 = v210;
  v251[6] = v209;
  v251[0] = v203;
  v251[1] = v204;
  v251[3] = v206;
  v251[2] = v205;
  if (sub_10004AFD4(v251) == 1)
  {
    v120 = v165;
    v121 = 0;
    v122 = 0;
  }

  else
  {
    v120 = v165;
    v121 = *(&v252 + 1);
    v122 = v253;
  }

  *&v187 = v121;
  *(&v187 + 1) = v122;
  v123 = v172;
  <- infix<A>(_:_:)();

  v120(v123, v5);
  if (qword_1005A8428 != -1)
  {
    swift_once();
  }

  v124 = sub_10000A6F0(v5, qword_1005E0960);
  v81(v173, v124, v5);
  v248 = v215;
  v249 = v216;
  v250 = v217;
  v244 = v211;
  v245 = v212;
  v247 = v214;
  v246 = v213;
  v243[4] = v207;
  v243[5] = v208;
  v243[7] = v210;
  v243[6] = v209;
  v243[0] = v203;
  v243[1] = v204;
  v243[3] = v206;
  v243[2] = v205;
  if (sub_10004AFD4(v243) == 1)
  {
    v125 = 0;
    v126 = 0;
  }

  else
  {
    v125 = *(&v244 + 1);
    v126 = v245;
  }

  *&v187 = v125;
  *(&v187 + 1) = v126;
  v127 = v173;
  <- infix<A>(_:_:)();

  v120(v127, v5);
  if (qword_1005A8430 != -1)
  {
    swift_once();
  }

  v128 = sub_10000A6F0(v5, qword_1005E0978);
  v81(v174, v128, v5);
  v240 = v215;
  v241 = v216;
  v242 = v217;
  v236[8] = v211;
  v237 = v212;
  v239 = v214;
  v238 = v213;
  v236[4] = v207;
  v236[5] = v208;
  v236[7] = v210;
  v236[6] = v209;
  v236[0] = v203;
  v236[1] = v204;
  v236[3] = v206;
  v236[2] = v205;
  if (sub_10004AFD4(v236) == 1)
  {
    v129 = 0;
    v130 = 0;
  }

  else
  {
    v129 = *(&v237 + 1);
    v130 = v238;
  }

  *&v187 = v129;
  *(&v187 + 1) = v130;
  v131 = v174;
  <- infix<A>(_:_:)();

  v120(v131, v5);
  if (qword_1005A8438 != -1)
  {
    swift_once();
  }

  v132 = sub_10000A6F0(v5, qword_1005E0990);
  v81(v175, v132, v5);
  v233 = v215;
  v234 = v216;
  v235 = v217;
  v230[8] = v211;
  v230[9] = v212;
  v232 = v214;
  v231 = v213;
  v230[4] = v207;
  v230[5] = v208;
  v230[7] = v210;
  v230[6] = v209;
  v230[0] = v203;
  v230[1] = v204;
  v230[3] = v206;
  v230[2] = v205;
  if (sub_10004AFD4(v230) == 1)
  {
    v133 = 0;
    v134 = 0;
  }

  else
  {
    v133 = *(&v231 + 1);
    v134 = v232;
  }

  *&v187 = v133;
  *(&v187 + 1) = v134;
  v135 = v175;
  <- infix<A>(_:_:)();

  v120(v135, v5);
  if (qword_1005A8440 != -1)
  {
    swift_once();
  }

  v136 = sub_10000A6F0(v5, qword_1005E09A8);
  v81(v176, v136, v5);
  v227 = v215;
  v228 = v216;
  v229 = v217;
  v225[8] = v211;
  v225[9] = v212;
  v226 = v214;
  v225[10] = v213;
  v225[4] = v207;
  v225[5] = v208;
  v225[7] = v210;
  v225[6] = v209;
  v225[0] = v203;
  v225[1] = v204;
  v225[3] = v206;
  v225[2] = v205;
  if (sub_10004AFD4(v225) == 1)
  {
    v137 = 0;
    v138 = 0;
  }

  else
  {
    v137 = *(&v226 + 1);
    v138 = v227;
  }

  *&v187 = v137;
  *(&v187 + 1) = v138;
  v139 = v176;
  <- infix<A>(_:_:)();

  v120(v139, v5);
  if (qword_1005A8448 != -1)
  {
    swift_once();
  }

  v140 = sub_10000A6F0(v5, qword_1005E09C0);
  v81(v177, v140, v5);
  v222 = v215;
  v223 = v216;
  v224 = v217;
  v221[8] = v211;
  v221[9] = v212;
  v221[11] = v214;
  v221[10] = v213;
  v221[4] = v207;
  v221[5] = v208;
  v221[7] = v210;
  v221[6] = v209;
  v221[0] = v203;
  v221[1] = v204;
  v221[3] = v206;
  v221[2] = v205;
  if (sub_10004AFD4(v221) == 1)
  {
    v141 = 0;
    v142 = 0;
  }

  else
  {
    v141 = *(&v222 + 1);
    v142 = v223;
  }

  *&v187 = v141;
  *(&v187 + 1) = v142;
  v143 = v177;
  <- infix<A>(_:_:)();

  v120(v143, v5);
  if (qword_1005A8450 != -1)
  {
    swift_once();
  }

  v144 = sub_10000A6F0(v5, qword_1005E09D8);
  v81(v184, v144, v5);
  v218[12] = v215;
  v219 = v216;
  v220 = v217;
  v218[8] = v211;
  v218[9] = v212;
  v218[10] = v213;
  v218[11] = v214;
  v218[4] = v207;
  v218[5] = v208;
  v218[6] = v209;
  v218[7] = v210;
  v218[0] = v203;
  v218[1] = v204;
  v218[2] = v205;
  v218[3] = v206;
  if (sub_10004AFD4(v218) == 1)
  {
    v145 = 0;
    v146 = 0;
  }

  else
  {
    v145 = *(&v219 + 1);
    v146 = v220;
  }

  *&v187 = v145;
  *(&v187 + 1) = v146;
  v147 = v184;
  <- infix<A>(_:_:)();

  v120(v147, v5);
  v149 = v180;
  v148 = v181;
  v150 = v178;
  QueryType.insert(or:_:)();

  sub_10001A794(v185, v159);
  sub_10001A794(v162, *(&v162 + 1));
  sub_10001A794(v161, *(&v161 + 1));

  sub_10001A794(v158, v157);
  (*(v182 + 8))(v149, v183);
  return (*(v179 + 8))(v150, v148);
}

uint64_t sub_100335BAC(uint64_t a1)
{
  v2 = sub_10033C4F0();

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_100335BE8(uint64_t a1)
{
  v2 = sub_10033C4F0();

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_100335C24()
{
  if (!*(v0 + 16))
  {
    return 3;
  }

  if (*(v0 + 16) == 1)
  {
    return 0;
  }

  if (*v0 == 0)
  {
    return 2;
  }

  return 1;
}

uint64_t sub_100335C5C(uint64_t a1, uint64_t a2)
{
  v3[56] = a1;
  v3[57] = a2;
  v4 = sub_10004B564(&qword_1005B1A20, &qword_1004D5818);
  v3[58] = v4;
  v3[59] = *(v4 - 8);
  v3[60] = swift_task_alloc();
  v5 = sub_10004B564(&qword_1005B1A28, &unk_1004D5820);
  v3[61] = v5;
  v3[62] = *(v5 - 8);
  v3[63] = swift_task_alloc();
  v6 = sub_10004B564(&qword_1005B1A08, &qword_1004D5FF0);
  v3[64] = v6;
  v3[65] = *(v6 - 8);
  v3[66] = swift_task_alloc();
  v3[67] = swift_task_alloc();
  v3[68] = swift_task_alloc();
  v3[69] = swift_task_alloc();
  v3[70] = swift_task_alloc();
  v3[71] = swift_task_alloc();
  v3[72] = swift_task_alloc();
  v3[73] = swift_task_alloc();
  sub_10004B564(&qword_1005AE998, &unk_1004D6030);
  v3[74] = swift_task_alloc();
  v3[75] = swift_task_alloc();
  v7 = sub_10004B564(&qword_1005B1A10, &unk_1004D5800);
  v3[76] = v7;
  v3[77] = *(v7 - 8);
  v3[78] = swift_task_alloc();
  v3[79] = swift_task_alloc();
  v8 = type metadata accessor for OnConflict();
  v3[80] = v8;
  v3[81] = *(v8 - 8);
  v3[82] = swift_task_alloc();
  sub_10004B564(&qword_1005B3360, &unk_1004C6AA0);
  v3[83] = swift_task_alloc();
  v3[84] = swift_task_alloc();
  v3[85] = swift_task_alloc();
  v3[86] = swift_task_alloc();
  v3[87] = swift_task_alloc();
  v3[88] = swift_task_alloc();
  v3[89] = swift_task_alloc();
  v3[90] = swift_task_alloc();
  v3[91] = swift_task_alloc();
  v3[92] = swift_task_alloc();
  v3[93] = swift_task_alloc();
  v3[94] = swift_task_alloc();
  v3[95] = swift_task_alloc();
  v9 = type metadata accessor for Table();
  v3[96] = v9;
  v3[97] = *(v9 - 8);
  v3[98] = swift_task_alloc();

  return _swift_task_switch(sub_100336084, v2, 0);
}

uint64_t sub_100336084()
{
  if (qword_1005A8138 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 784);
  v2 = *(v0 + 776);
  v3 = *(v0 + 768);
  v4 = *(v0 + 456);
  v5 = sub_10000A6F0(v3, qword_1005E0078);
  (*(v2 + 16))(v1, v5, v3);
  type metadata accessor for PropertyListEncoder();
  swift_allocObject();
  PropertyListEncoder.init()();
  v236 = type metadata accessor for FriendRecord(0);
  *(v0 + 400) = *(v4 + v236[12]);

  sub_10004B564(&qword_1005A9E20, &qword_1004C3350);
  sub_10033C09C();
  v6 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  v230 = v7;
  v231 = v6;

  v8 = *(v0 + 760);
  v9 = *(v0 + 456);
  swift_allocObject();
  PropertyListEncoder.init()();
  v234 = v9;
  v235 = v236[36];
  sub_100005F04(v9 + v235, v8, &qword_1005B3360, &unk_1004C6AA0);
  v10 = type metadata accessor for Handle();
  v11 = *(v10 - 8);
  v237 = *(v11 + 48);
  v12 = v237(v8, 1, v10);
  v13 = *(v0 + 760);
  if (v12 == 1)
  {
    sub_100002CE0(*(v0 + 760), &qword_1005B3360, &unk_1004C6AA0);
    v14 = 0;
  }

  else
  {
    v14 = Handle.pushIdentifiers.getter();
    (*(v11 + 8))(v13, v10);
  }

  *(v0 + 440) = v14;
  v15 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  v228 = v16;
  v229 = v15;

  v17 = *(v0 + 752);

  swift_allocObject();
  PropertyListEncoder.init()();
  sub_100005F04(v234 + v235, v17, &qword_1005B3360, &unk_1004C6AA0);
  v18 = v237(v17, 1, v10);
  v19 = *(v0 + 752);
  if (v18 == 1)
  {
    sub_100002CE0(*(v0 + 752), &qword_1005B3360, &unk_1004C6AA0);
    v20 = 0;
  }

  else
  {
    v20 = Handle.expiresByGroupId.getter();
    (*(v11 + 8))(v19, v10);
  }

  *(v0 + 424) = v20;
  sub_10004B564(&qword_1005B1DC8, &unk_1004D6040);
  sub_10033C144();
  v21 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  v226 = v22;
  v227 = v21;

  v23 = *(v0 + 456);

  swift_allocObject();
  PropertyListEncoder.init()();
  *(v0 + 416) = *(v23 + v236[34]);

  sub_10004B564(&qword_1005AEB40, &qword_1004CF770);
  sub_10033C1C8();
  v24 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  v225 = v25;
  v223 = v24;
  v26 = *(v0 + 656);
  v27 = *(v0 + 648);
  v28 = *(v0 + 640);

  (*(v27 + 104))(v26, enum case for OnConflict.replace(_:), v28);
  sub_10004B564(&qword_1005AF4F0, &qword_1004D07D0);
  type metadata accessor for Setter();
  *(swift_allocObject() + 16) = xmmword_1004D5F40;
  if (qword_1005A81A8 != -1)
  {
    swift_once();
  }

  v29 = sub_10004B564(&qword_1005AF068, &unk_1004D06E0);
  sub_10000A6F0(v29, qword_1005E01E0);
  *(v0 + 80) = String.lowercased()();
  <- infix<A>(_:_:)();

  if (qword_1005A81B0 != -1)
  {
    swift_once();
  }

  v30 = *(v0 + 456);
  sub_10000A6F0(*(v0 + 512), qword_1005E01F8);
  v31 = *(v30 + 16);
  v32 = *(v30 + 24);
  *(v0 + 96) = v31;
  *(v0 + 104) = v32;

  <- infix<A>(_:_:)();

  if (qword_1005A81B8 != -1)
  {
    swift_once();
  }

  v33 = *(v0 + 632);
  v34 = *(v0 + 616);
  v35 = *(v0 + 608);
  v36 = *(v0 + 600);
  v37 = *(v0 + 456);
  v38 = sub_10000A6F0(v35, qword_1005E0210);
  v220 = *(v34 + 16);
  v220(v33, v38, v35);
  sub_100005F04(v37 + v236[6], v36, &qword_1005AE998, &unk_1004D6030);
  v39 = type metadata accessor for IDSStatus();
  v40 = *(v39 - 8);
  v218 = *(v40 + 48);
  v41 = v218(v36, 1, v39);
  v42 = *(v0 + 600);
  v219 = v39;
  v222 = v40;
  if (v41 == 1)
  {
    sub_100002CE0(v42, &qword_1005AE998, &unk_1004D6030);
    v43 = 0;
  }

  else
  {
    v43 = IDSStatus.rawValue.getter();
    (*(v40 + 8))(v42, v39);
  }

  v44 = v41 == 1;
  v45 = *(v0 + 632);
  v46 = *(v0 + 616);
  v47 = *(v0 + 608);
  *(v0 + 352) = v43;
  *(v0 + 360) = v44;
  <- infix<A>(_:_:)();
  v221 = *(v46 + 8);
  v221(v45, v47);
  if (qword_1005A81C0 != -1)
  {
    swift_once();
  }

  v48 = *(v0 + 456);
  sub_10000A6F0(*(v0 + 512), qword_1005E0228);
  v49 = (v48 + v236[7]);
  v50 = v49[1];
  *(v0 + 112) = *v49;
  *(v0 + 120) = v50;

  <- infix<A>(_:_:)();

  if (qword_1005A81C8 != -1)
  {
    swift_once();
  }

  v51 = *(v0 + 456);
  v52 = sub_10004B564(&qword_1005B1A18, &qword_1004D5810);
  sub_10000A6F0(v52, qword_1005E0240);
  *(v0 + 408) = *(v51 + v236[8]);
  <- infix<A>(_:_:)();
  if (qword_1005A81D0 != -1)
  {
    swift_once();
  }

  v53 = *(v0 + 456);
  sub_10000A6F0(*(v0 + 512), qword_1005E0258);
  v54 = (v53 + v236[9]);
  v55 = v54[1];
  *(v0 + 144) = *v54;
  *(v0 + 152) = v55;

  <- infix<A>(_:_:)();

  if (qword_1005A81D8 != -1)
  {
    swift_once();
  }

  v56 = *(v0 + 456);
  sub_10000A6F0(*(v0 + 512), qword_1005E0270);
  v57 = (v56 + v236[10]);
  v58 = v57[1];
  *(v0 + 160) = *v57;
  *(v0 + 168) = v58;

  <- infix<A>(_:_:)();

  if (qword_1005A81E0 != -1)
  {
    swift_once();
  }

  v59 = *(v0 + 456);
  sub_10000A6F0(*(v0 + 464), qword_1005E0288);
  *(v0 + 362) = *(v59 + v236[11]);
  <- infix<A>(_:_:)();
  if (qword_1005A81E8 != -1)
  {
    swift_once();
  }

  v224 = sub_10004B564(&qword_1005AF038, &unk_1004D0240);
  sub_10000A6F0(v224, qword_1005E02A0);
  *(v0 + 192) = v231;
  *(v0 + 200) = v230;
  <- infix<A>(_:_:)();
  if (qword_1005A81F0 != -1)
  {
    swift_once();
  }

  v60 = *(v0 + 456);
  sub_10000A6F0(*(v0 + 512), qword_1005E02B8);
  v61 = (v60 + v236[13]);
  v62 = v61[1];
  *(v0 + 208) = *v61;
  *(v0 + 216) = v62;

  <- infix<A>(_:_:)();

  if (qword_1005A81F8 != -1)
  {
    swift_once();
  }

  v63 = *(v0 + 456);
  sub_10000A6F0(*(v0 + 512), qword_1005E02D0);
  v64 = (v63 + v236[14]);
  v65 = v64[1];
  *(v0 + 224) = *v64;
  *(v0 + 232) = v65;

  <- infix<A>(_:_:)();

  if (qword_1005A8208 != -1)
  {
    swift_once();
  }

  v66 = *(v0 + 456);
  sub_10000A6F0(*(v0 + 512), qword_1005E0300);
  v67 = (v66 + v236[16]);
  v68 = v67[1];
  *(v0 + 240) = *v67;
  *(v0 + 248) = v68;

  <- infix<A>(_:_:)();

  if (qword_1005A8200 != -1)
  {
    swift_once();
  }

  v69 = *(v0 + 456);
  sub_10000A6F0(v29, qword_1005E02E8);
  v70 = (v69 + v236[15]);
  v71 = v70[1];
  *(v0 + 256) = *v70;
  *(v0 + 264) = v71;

  <- infix<A>(_:_:)();

  if (qword_1005A8210 != -1)
  {
    swift_once();
  }

  v72 = *(v0 + 744);
  v73 = *(v0 + 584);
  v74 = *(v0 + 520);
  v75 = *(v0 + 512);
  v76 = sub_10000A6F0(v75, qword_1005E0318);
  v233 = *(v74 + 16);
  v233(v73, v76, v75);
  sub_100005F04(v234 + v235, v72, &qword_1005B3360, &unk_1004C6AA0);
  v77 = v237(v72, 1, v10);
  v78 = *(v0 + 744);
  if (v77 == 1)
  {
    sub_100002CE0(*(v0 + 744), &qword_1005B3360, &unk_1004C6AA0);
    v79 = 0;
    v80 = 0;
  }

  else
  {
    v79 = Handle.identifier.getter();
    v80 = v81;
    (*(v11 + 8))(v78, v10);
  }

  v82 = *(v0 + 584);
  v83 = *(v0 + 520);
  v84 = *(v0 + 512);
  *(v0 + 272) = v79;
  *(v0 + 280) = v80;
  <- infix<A>(_:_:)();

  v232 = *(v83 + 8);
  v232(v82, v84);
  if (qword_1005A8218 != -1)
  {
    swift_once();
  }

  v85 = *(v0 + 736);
  v86 = *(v0 + 576);
  v87 = *(v0 + 512);
  v88 = sub_10000A6F0(v87, qword_1005E0330);
  v233(v86, v88, v87);
  sub_100005F04(v234 + v235, v85, &qword_1005B3360, &unk_1004C6AA0);
  v89 = v237(v85, 1, v10);
  v90 = *(v0 + 736);
  if (v89 == 1)
  {
    sub_100002CE0(*(v0 + 736), &qword_1005B3360, &unk_1004C6AA0);
    v91 = 0;
    v92 = 0;
  }

  else
  {
    v91 = Handle.qualifiedIdentifier.getter();
    v92 = v93;
    (*(v11 + 8))(v90, v10);
  }

  v94 = *(v0 + 576);
  v95 = *(v0 + 512);
  *(v0 + 288) = v91;
  *(v0 + 296) = v92;
  <- infix<A>(_:_:)();

  v232(v94, v95);
  if (qword_1005A8220 != -1)
  {
    swift_once();
  }

  v96 = *(v0 + 728);
  v97 = *(v0 + 624);
  v98 = *(v0 + 608);
  v99 = sub_10000A6F0(v98, qword_1005E0348);
  v220(v97, v99, v98);
  sub_100005F04(v234 + v235, v96, &qword_1005B3360, &unk_1004C6AA0);
  v100 = v237(v96, 1, v10);
  v101 = *(v0 + 728);
  if (v100 == 1)
  {
    v102 = &qword_1005B3360;
    v103 = &unk_1004C6AA0;
    v104 = *(v0 + 728);
LABEL_54:
    sub_100002CE0(v104, v102, v103);
    v108 = 0;
    v109 = 1;
    goto LABEL_56;
  }

  v105 = *(v0 + 592);
  Handle.idsStatus.getter();
  (*(v11 + 8))(v101, v10);
  v106 = v218(v105, 1, v219);
  v107 = *(v0 + 592);
  if (v106 == 1)
  {
    v102 = &qword_1005AE998;
    v103 = &unk_1004D6030;
    v104 = *(v0 + 592);
    goto LABEL_54;
  }

  v108 = IDSStatus.rawValue.getter();
  (*(v222 + 8))(v107, v219);
  v109 = 0;
LABEL_56:
  v110 = *(v0 + 624);
  v111 = *(v0 + 608);
  *(v0 + 368) = v108;
  *(v0 + 376) = v109;
  <- infix<A>(_:_:)();
  v221(v110, v111);
  if (qword_1005A8228 != -1)
  {
    swift_once();
  }

  v112 = *(v0 + 720);
  v113 = *(v0 + 568);
  v114 = *(v0 + 512);
  v115 = sub_10000A6F0(v114, qword_1005E0360);
  v233(v113, v115, v114);
  sub_100005F04(v234 + v235, v112, &qword_1005B3360, &unk_1004C6AA0);
  v116 = v237(v112, 1, v10);
  v117 = *(v0 + 720);
  if (v116 == 1)
  {
    sub_100002CE0(*(v0 + 720), &qword_1005B3360, &unk_1004C6AA0);
    v118 = 0;
    v119 = 0;
  }

  else
  {
    v118 = Handle.dsid.getter();
    v119 = v120;
    (*(v11 + 8))(v117, v10);
  }

  v121 = *(v0 + 568);
  v122 = *(v0 + 512);
  *(v0 + 304) = v118;
  *(v0 + 312) = v119;
  <- infix<A>(_:_:)();

  v232(v121, v122);
  if (qword_1005A8238 != -1)
  {
    swift_once();
  }

  v123 = *(v0 + 712);
  v125 = *(v0 + 496);
  v124 = *(v0 + 504);
  v126 = *(v0 + 488);
  v127 = sub_10000A6F0(v126, qword_1005E0390);
  (*(v125 + 16))(v124, v127, v126);
  sub_100005F04(v234 + v235, v123, &qword_1005B3360, &unk_1004C6AA0);
  v128 = v237(v123, 1, v10);
  v129 = *(v0 + 712);
  if (v128 == 1)
  {
    sub_100002CE0(*(v0 + 712), &qword_1005B3360, &unk_1004C6AA0);
    v130 = 0;
  }

  else
  {
    Handle.trackingTimestamp.getter();
    v130 = v131;
    (*(v11 + 8))(v129, v10);
  }

  v132 = v128 == 1;
  v134 = *(v0 + 496);
  v133 = *(v0 + 504);
  v135 = *(v0 + 488);
  *(v0 + 384) = v130;
  *(v0 + 392) = v132;
  <- infix<A>(_:_:)();
  (*(v134 + 8))(v133, v135);
  if (qword_1005A8240 != -1)
  {
    swift_once();
  }

  v136 = *(v0 + 704);
  v137 = *(v0 + 560);
  v138 = *(v0 + 512);
  v139 = sub_10000A6F0(v138, qword_1005E03A8);
  v233(v137, v139, v138);
  sub_100005F04(v234 + v235, v136, &qword_1005B3360, &unk_1004C6AA0);
  v140 = v237(v136, 1, v10);
  v141 = *(v0 + 704);
  if (v140 == 1)
  {
    sub_100002CE0(*(v0 + 704), &qword_1005B3360, &unk_1004C6AA0);
    v142 = 0;
    v143 = 0;
  }

  else
  {
    v142 = Handle.hashedDSID.getter();
    v143 = v144;
    (*(v11 + 8))(v141, v10);
  }

  v145 = *(v0 + 560);
  v146 = *(v0 + 512);
  *(v0 + 320) = v142;
  *(v0 + 328) = v143;
  <- infix<A>(_:_:)();

  v232(v145, v146);
  if (qword_1005A8248 != -1)
  {
    swift_once();
  }

  v147 = *(v0 + 696);
  v148 = *(v0 + 552);
  v149 = *(v0 + 512);
  v150 = sub_10000A6F0(v149, qword_1005E03C0);
  v233(v148, v150, v149);
  sub_100005F04(v234 + v235, v147, &qword_1005B3360, &unk_1004C6AA0);
  v151 = v237(v147, 1, v10);
  v152 = *(v0 + 696);
  if (v151 == 1)
  {
    sub_100002CE0(*(v0 + 696), &qword_1005B3360, &unk_1004C6AA0);
    v153 = 0;
    v154 = 0;
  }

  else
  {
    v153 = Handle.favoriteOrder.getter();
    v154 = v155;
    (*(v11 + 8))(v152, v10);
  }

  v156 = *(v0 + 552);
  v157 = *(v0 + 512);
  *(v0 + 336) = v153;
  *(v0 + 344) = v154;
  <- infix<A>(_:_:)();

  v232(v156, v157);
  if (qword_1005A8230 != -1)
  {
    swift_once();
  }

  sub_10000A6F0(v224, qword_1005E0378);
  *(v0 + 16) = v227;
  *(v0 + 24) = v226;
  <- infix<A>(_:_:)();
  if (qword_1005A8250 != -1)
  {
    swift_once();
  }

  v158 = *(v0 + 688);
  v160 = *(v0 + 472);
  v159 = *(v0 + 480);
  v161 = *(v0 + 464);
  v162 = sub_10000A6F0(v161, qword_1005E03D8);
  (*(v160 + 16))(v159, v162, v161);
  sub_100005F04(v234 + v235, v158, &qword_1005B3360, &unk_1004C6AA0);
  v163 = v237(v158, 1, v10);
  v164 = *(v0 + 688);
  if (v163 == 1)
  {
    sub_100002CE0(*(v0 + 688), &qword_1005B3360, &unk_1004C6AA0);
    v165 = 2;
  }

  else
  {
    v165 = Handle.reachable.getter();
    (*(v11 + 8))(v164, v10);
  }

  v167 = *(v0 + 472);
  v166 = *(v0 + 480);
  v168 = *(v0 + 464);
  *(v0 + 361) = v165;
  <- infix<A>(_:_:)();
  (*(v167 + 8))(v166, v168);
  if (qword_1005A8258 != -1)
  {
    swift_once();
  }

  sub_10000A6F0(v224, qword_1005E03F0);
  *(v0 + 176) = v229;
  *(v0 + 184) = v228;
  <- infix<A>(_:_:)();
  if (qword_1005A8260 != -1)
  {
    swift_once();
  }

  v169 = *(v0 + 680);
  v170 = *(v0 + 544);
  v171 = *(v0 + 512);
  v172 = sub_10000A6F0(v171, qword_1005E0408);
  v233(v170, v172, v171);
  sub_100005F04(v234 + v235, v169, &qword_1005B3360, &unk_1004C6AA0);
  v173 = v237(v169, 1, v10);
  v174 = *(v0 + 680);
  if (v173 == 1)
  {
    sub_100002CE0(*(v0 + 680), &qword_1005B3360, &unk_1004C6AA0);
    v175 = 0;
    v176 = 0;
  }

  else
  {
    v175 = Handle.prettyName.getter();
    v176 = v177;
    (*(v11 + 8))(v174, v10);
  }

  v178 = *(v0 + 544);
  v179 = *(v0 + 512);
  *(v0 + 128) = v175;
  *(v0 + 136) = v176;
  <- infix<A>(_:_:)();

  v232(v178, v179);
  if (qword_1005A8268 != -1)
  {
    swift_once();
  }

  v180 = *(v0 + 672);
  v181 = *(v0 + 536);
  v182 = *(v0 + 512);
  v183 = sub_10000A6F0(v182, qword_1005E0420);
  v233(v181, v183, v182);
  sub_100005F04(v234 + v235, v180, &qword_1005B3360, &unk_1004C6AA0);
  v184 = v237(v180, 1, v10);
  v185 = *(v0 + 672);
  if (v184 == 1)
  {
    sub_100002CE0(*(v0 + 672), &qword_1005B3360, &unk_1004C6AA0);
    v186 = 0;
    v187 = 0;
  }

  else
  {
    v186 = Handle.contactIdentifier.getter();
    v187 = v188;
    (*(v11 + 8))(v185, v10);
  }

  v189 = *(v0 + 536);
  v190 = *(v0 + 512);
  *(v0 + 64) = v186;
  *(v0 + 72) = v187;
  <- infix<A>(_:_:)();

  v232(v189, v190);
  if (qword_1005A8270 != -1)
  {
    swift_once();
  }

  v191 = *(v0 + 664);
  v192 = *(v0 + 528);
  v193 = *(v0 + 512);
  v194 = sub_10000A6F0(v193, qword_1005E0438);
  v233(v192, v194, v193);
  sub_100005F04(v234 + v235, v191, &qword_1005B3360, &unk_1004C6AA0);
  v195 = v237(v191, 1, v10);
  v196 = *(v0 + 664);
  if (v195 == 1)
  {
    sub_100002CE0(*(v0 + 664), &qword_1005B3360, &unk_1004C6AA0);
    v197 = 0;
    v198 = 0;
  }

  else
  {
    v197 = Handle.serverID.getter();
    v198 = v199;
    (*(v11 + 8))(v196, v10);
  }

  v200 = *(v0 + 528);
  v201 = *(v0 + 512);
  *(v0 + 48) = v197;
  *(v0 + 56) = v198;
  <- infix<A>(_:_:)();

  v232(v200, v201);
  if (qword_1005A8280 != -1)
  {
    swift_once();
  }

  v202 = *(v0 + 456);
  v203 = sub_10004B564(&qword_1005AF0B0, &unk_1004D0290);
  sub_10000A6F0(v203, qword_1005E0468);
  *(v0 + 363) = *(v202 + v236[31]);
  <- infix<A>(_:_:)();
  if (qword_1005A8288 != -1)
  {
    swift_once();
  }

  v204 = *(v0 + 456);
  sub_10000A6F0(v203, qword_1005E0480);
  *(v0 + 364) = *(v204 + v236[32]);
  <- infix<A>(_:_:)();
  if (qword_1005A8290 != -1)
  {
    swift_once();
  }

  v205 = *(v0 + 456);
  v238 = v203;
  sub_10000A6F0(v203, qword_1005E0498);
  *(v0 + 365) = *(v205 + v236[33]);
  <- infix<A>(_:_:)();
  if (qword_1005A82A0 != -1)
  {
    swift_once();
  }

  v206 = *(v0 + 456);
  v207 = sub_10004B564(&qword_1005B1A30, &qword_1004D6050);
  sub_10000A6F0(v207, qword_1005E04C8);
  *(v0 + 432) = *(v206 + v236[35]);
  sub_10001D2D8();
  <- infix<A>(_:_:)();
  if (qword_1005A8298 != -1)
  {
    swift_once();
  }

  v208 = sub_10004B564(&qword_1005AF028, &qword_1004D0238);
  sub_10000A6F0(v208, qword_1005E04B0);
  *(v0 + 32) = v223;
  *(v0 + 40) = v225;
  <- infix<A>(_:_:)();
  if (qword_1005A8278 != -1)
  {
    swift_once();
  }

  v209 = *(v0 + 784);
  v210 = *(v0 + 776);
  v211 = *(v0 + 768);
  v212 = *(v0 + 656);
  v213 = *(v0 + 648);
  v217 = *(v0 + 640);
  v214 = *(v0 + 456);
  sub_10000A6F0(v238, qword_1005E0450);
  *(v0 + 366) = *(v214 + v236[30]);
  <- infix<A>(_:_:)();
  QueryType.insert(or:_:)();

  sub_1000049D0(v223, v225);
  sub_10001A794(v227, v226);
  sub_10001A794(v229, v228);
  sub_10001A794(v231, v230);
  (*(v213 + 8))(v212, v217);
  (*(v210 + 8))(v209, v211);

  v215 = *(v0 + 8);

  return v215();
}

uint64_t sub_1003384D0(uint64_t *a1)
{
  v2 = type metadata accessor for Handle();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *a1;
  v7 = a1[1];
  Friend.handle.getter();
  Handle.identifier.getter();
  (*(v3 + 8))(v5, v2);
  v8 = String.lowercased()();

  if (v6 == v8._countAndFlagsBits && v7 == v8._object)
  {
    v10 = 1;
  }

  else
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v10 & 1;
}

uint64_t sub_10033861C(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return 0;
  }

  v7 = 0;
  v8 = *(type metadata accessor for FriendRecord(0) - 8);
  v9 = a3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v10 = *(v8 + 72);
  while (1)
  {
    v11 = a1(v9);
    if (v3 || (v11 & 1) != 0)
    {
      break;
    }

    ++v7;
    v9 += v10;
    if (v4 == v7)
    {
      return 0;
    }
  }

  return v7;
}

uint64_t sub_100338708()
{
  v0 = type metadata accessor for Logger();
  sub_10004F154(v0, qword_1005E0AE0);
  sub_10000A6F0(v0, qword_1005E0AE0);
  return Logger.init(subsystem:category:)();
}

void *sub_100338788(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v31 = a1;
  v5 = type metadata accessor for FriendInfoOption(0);
  v30 = *(v5 - 8);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v7) = *(a3 + 32);
  v9 = ((1 << v7) + 63) >> 6;
  if ((v7 & 0x3Fu) > 0xD)
  {
    goto LABEL_21;
  }

  while (1)
  {
    v26 = v9;
    v28 = &v26;
    __chkstk_darwin(v6);
    v27 = &v26 - ((v10 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v27, v10);
    v29 = 0;
    v9 = 0;
    v32 = a3;
    v12 = *(a3 + 56);
    a3 += 56;
    v11 = v12;
    v13 = 1 << *(a3 - 24);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & v11;
    v16 = (v13 + 63) >> 6;
    while (v15)
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_12:
      v20 = v17 | (v9 << 6);
      sub_10033C390(*(v32 + 48) + *(v30 + 72) * v20, v8, type metadata accessor for FriendInfoOption);
      v21 = v31(v8);
      sub_10033C3F8(v8, type metadata accessor for FriendInfoOption);
      if (v3)
      {

        return swift_willThrow();
      }

      if (v21)
      {
        *&v27[(v20 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v20;
        if (__OFADD__(v29++, 1))
        {
          __break(1u);
          return sub_10033916C(v27, v26, v29, v32);
        }
      }
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v16)
      {
        return sub_10033916C(v27, v26, v29, v32);
      }

      v19 = *(a3 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_21:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v24 = swift_slowAlloc();
  v25 = sub_100338F80(v24, v9, a3, v31);

  if (!v3)
  {
    return v25;
  }

  return result;
}

Swift::Int sub_100338AC0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *))
{
  v30 = a4;
  v26 = a2;
  v27 = a1;
  v6 = type metadata accessor for FriendInfoOption(0);
  v29 = *(v6 - 8);
  result = __chkstk_darwin(v6 - 8);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = 0;
  v10 = 0;
  v31 = a3;
  v13 = *(a3 + 56);
  v12 = a3 + 56;
  v11 = v13;
  v14 = 1 << *(v12 - 24);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & v11;
  v17 = (v14 + 63) >> 6;
  while (v16)
  {
    v18 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
LABEL_11:
    v21 = v18 | (v10 << 6);
    sub_10033C390(*(v31 + 48) + *(v29 + 72) * v21, v9, type metadata accessor for FriendInfoOption);
    v22 = v30(v9);
    result = sub_10033C3F8(v9, type metadata accessor for FriendInfoOption);
    if (v4)
    {
      return result;
    }

    if (v22)
    {
      *(v27 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      if (__OFADD__(v28++, 1))
      {
        __break(1u);
LABEL_16:
        v24 = v31;

        return sub_10033916C(v27, v26, v28, v24);
      }
    }
  }

  v19 = v10;
  while (1)
  {
    v10 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v10 >= v17)
    {
      goto LABEL_16;
    }

    v20 = *(v12 + 8 * v10);
    ++v19;
    if (v20)
    {
      v18 = __clz(__rbit64(v20));
      v16 = (v20 - 1) & v20;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100338D18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *), uint64_t a5, uint64_t (*a6)(void), uint64_t (*a7)(uint64_t, uint64_t, uint64_t, uint64_t, __n128))
{
  v31 = a2;
  v32 = a7;
  v38 = a4;
  v33 = a1;
  v41 = a6(0);
  result = __chkstk_darwin(v41);
  v39 = a3;
  v40 = &v31 - v11;
  v12 = 0;
  v15 = *(a3 + 56);
  v14 = a3 + 56;
  v13 = v15;
  v16 = 1 << *(v14 - 24);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & v13;
  v19 = (v16 + 63) >> 6;
  v36 = v10 + 16;
  v37 = v10;
  v34 = 0;
  v35 = (v10 + 8);
  while (v18)
  {
    v20 = __clz(__rbit64(v18));
    v18 &= v18 - 1;
    v21 = v20 | (v12 << 6);
    v22 = v41;
    v23 = v40;
LABEL_11:
    (*(v37 + 16))(v23, *(v39 + 48) + *(v37 + 72) * v21, v22);
    v26 = v38(v23);
    v27 = v23;
    if (v7)
    {
      return (*v35)(v23, v22);
    }

    v28 = v26;
    result = (*v35)(v27, v22);
    if (v28)
    {
      *(v33 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      if (__OFADD__(v34++, 1))
      {
        __break(1u);
LABEL_16:
        v30 = v39;

        return (v32)(v33, v31, v34, v30);
      }
    }
  }

  v24 = v12;
  v22 = v41;
  v23 = v40;
  while (1)
  {
    v12 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v12 >= v19)
    {
      goto LABEL_16;
    }

    v25 = *(v14 + 8 * v12);
    ++v24;
    if (v25)
    {
      v18 = (v25 - 1) & v25;
      v21 = __clz(__rbit64(v25)) | (v12 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void *sub_100338F80(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    v8 = sub_100338AC0(result, a2, a3, a4);

    return v8;
  }

  return result;
}

void *sub_100339010(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void *, uint64_t, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v9 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v10 = a5(v9, a2, a3, a4);
    swift_bridgeObjectRelease_n();

    return v10;
  }

  return result;
}

void *sub_1003390B4(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *), uint64_t a5)
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
      v8 = a5;
      v9 = a4;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
      a4 = v9;
      a5 = v8;
    }

    v10 = sub_100338D18(result, a2, a3, a4, a5, &type metadata accessor for Device, sub_10033948C);

    return v10;
  }

  return result;
}

Swift::Int sub_10033916C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for FriendInfoOption(0);
  v32 = *(v8 - 8);
  __chkstk_darwin(v8 - 8);
  if (!a3)
  {

    return &_swiftEmptySetSingleton;
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  v31 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10004B564(&qword_1005B0560, &qword_1004D6070);
  result = static _SetStorage.allocate(capacity:)();
  v10 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v14 = result + 56;
  v15 = v31;
  v30 = a4;
  while (v12)
  {
    v16 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_16:
    v19 = *(a4 + 48);
    v20 = *(v32 + 72);
    sub_10033C390(v19 + v20 * (v16 | (v13 << 6)), v15, type metadata accessor for FriendInfoOption);
    Hasher.init(_seed:)();
    type metadata accessor for HandleType();
    sub_10000A49C(&qword_1005AE818, &type metadata accessor for HandleType, &protocol conformance descriptor for HandleType);
    dispatch thunk of Hashable.hash(into:)();
    result = Hasher._finalize()();
    v21 = -1 << *(v10 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
    {
      v25 = 0;
      v26 = (63 - v21) >> 6;
      v15 = v31;
      while (++v23 != v26 || (v25 & 1) == 0)
      {
        v27 = v23 == v26;
        if (v23 == v26)
        {
          v23 = 0;
        }

        v25 |= v27;
        v28 = *(v14 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
    v15 = v31;
LABEL_26:
    *(v14 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    result = sub_10033C458(v15, *(v10 + 48) + v24 * v20, type metadata accessor for FriendInfoOption);
    ++*(v10 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v30;
    if (!a3)
    {
LABEL_28:

      return v10;
    }
  }

  v17 = v13;
  while (1)
  {
    v13 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      goto LABEL_28;
    }

    v18 = a1[v13];
    ++v17;
    if (v18)
    {
      v16 = __clz(__rbit64(v18));
      v12 = (v18 - 1) & v18;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_10033948C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = type metadata accessor for Device();
  v8 = *(v35 - 8);
  __chkstk_darwin(v35);
  v34 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return &_swiftEmptySetSingleton;
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  sub_10004B564(&qword_1005B0570, &qword_1004D1EC0);
  result = static _SetStorage.allocate(capacity:)();
  v10 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v14 = result + 56;
  v30 = (v8 + 32);
  v31 = v8 + 16;
  v29 = a4;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v32 = (v12 - 1) & v12;
LABEL_16:
    v18 = *(a4 + 48);
    v33 = *(v8 + 72);
    (*(v8 + 16))(v34, v18 + v33 * (v15 | (v13 << 6)), v35);
    sub_10000A49C(&qword_1005AE9C0, &type metadata accessor for Device, &protocol conformance descriptor for Device);
    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v19 = -1 << *(v10 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v14 + 8 * (v20 >> 6))) == 0)
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
        v26 = *(v14 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v14 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v14 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    result = (*v30)(*(v10 + 48) + v22 * v33, v34, v35);
    ++*(v10 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v29;
    v12 = v32;
    if (!a3)
    {
LABEL_28:

      return v10;
    }
  }

  v16 = v13;
  while (1)
  {
    v13 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      goto LABEL_28;
    }

    v17 = a1[v13];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v32 = (v17 - 1) & v17;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1003397B4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = type metadata accessor for ClientID();
  v8 = *(v35 - 8);
  __chkstk_darwin(v35);
  v34 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return &_swiftEmptySetSingleton;
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  sub_10004B564(&qword_1005B05E8, &qword_1004D6100);
  result = static _SetStorage.allocate(capacity:)();
  v10 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v14 = result + 56;
  v30 = (v8 + 32);
  v31 = v8 + 16;
  v29 = a4;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v32 = (v12 - 1) & v12;
LABEL_16:
    v18 = *(a4 + 48);
    v33 = *(v8 + 72);
    (*(v8 + 16))(v34, v18 + v33 * (v15 | (v13 << 6)), v35);
    sub_10000A49C(&qword_1005AE9D0, &type metadata accessor for ClientID, &protocol conformance descriptor for ClientID);
    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v19 = -1 << *(v10 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v14 + 8 * (v20 >> 6))) == 0)
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
        v26 = *(v14 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v14 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v14 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    result = (*v30)(*(v10 + 48) + v22 * v33, v34, v35);
    ++*(v10 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v29;
    v12 = v32;
    if (!a3)
    {
LABEL_28:

      return v10;
    }
  }

  v16 = v13;
  while (1)
  {
    v13 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      goto LABEL_28;
    }

    v17 = a1[v13];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v32 = (v17 - 1) & v17;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

unint64_t sub_100339AF0(uint64_t a1)
{
  v41 = type metadata accessor for HandleType();
  v2 = *(v41 - 8);
  __chkstk_darwin(v41);
  v40 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for FriendRecord(0);
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4 - 8);
  v48 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v49 = (&v37 - v9);
  __chkstk_darwin(v8);
  v47 = &v37 - v10;
  v11 = type metadata accessor for Friend();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v42 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v37 - v15;
  v17 = *(a1 + 16);
  if (!v17)
  {
    return _swiftEmptyArrayStorage;
  }

  v51 = 0;
  v20 = *(v12 + 16);
  v18 = v12 + 16;
  v19 = v20;
  v21 = a1 + ((*(v18 + 64) + 32) & ~*(v18 + 64));
  v22 = *(v18 + 56);
  v39 = (v2 + 8);
  v43 = (v18 - 8);
  v44 = v22;
  v23 = _swiftEmptyArrayStorage;
  v45 = v20;
  v46 = v11;
  v50 = &v37 - v15;
  v38 = v5;
  for (i = (v20)(v16, v21, v11); ; i = v45(v16, v21, v11))
  {
    __chkstk_darwin(i);
    *(&v37 - 2) = v16;
    v25 = v51;
    result = sub_10033861C(sub_10033C27C, (&v37 - 4), v23);
    v51 = v25;
    if (v27)
    {
      v28 = v42;
      v19(v42, v16, v11);
      v29 = v49;
      sub_1001A80DC(v28, v49);
      sub_10033C390(v29, v48, type metadata accessor for FriendRecord);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v23 = sub_1001FD4B4(0, v23[2] + 1, 1, v23);
      }

      v31 = v23[2];
      v30 = v23[3];
      if (v31 >= v30 >> 1)
      {
        v23 = sub_1001FD4B4((v30 > 1), v31 + 1, 1, v23);
      }

      sub_10033C3F8(v49, type metadata accessor for FriendRecord);
      v23[2] = v31 + 1;
      sub_10033C458(v48, v23 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v31, type metadata accessor for FriendRecord);
      goto LABEL_4;
    }

    v32 = result;
    if ((result & 0x8000000000000000) != 0)
    {
      break;
    }

    if (result >= v23[2])
    {
      goto LABEL_20;
    }

    v33 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v34 = *(v5 + 72) * result;
    sub_10033C390(v23 + v33 + v34, v47, type metadata accessor for FriendRecord);
    v35 = v40;
    v36 = v50;
    Friend.type.getter();
    sub_1001A952C(v36, v35);
    (*v39)(v35, v41);
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_100339ADC(v23);
      v23 = result;
    }

    if (v32 >= v23[2])
    {
      goto LABEL_21;
    }

    sub_10033C29C(v47, v23 + v33 + v34);
    v5 = v38;
LABEL_4:
    v16 = v50;
    v11 = v46;
    (*v43)(v50, v46);
    v19 = v45;
    v21 += v44;
    if (!--v17)
    {
      return v23;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_100339FCC(uint64_t a1)
{
  v55 = type metadata accessor for Device();
  v1 = *(v55 - 8);
  v2 = __chkstk_darwin(v55);
  v52 = v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v45 = v42 - v4;
  v5 = sub_10004B564(&qword_1005AF468, &qword_1004D06C0);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = v42 - v9;
  v11 = type metadata accessor for Row();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = v42 - v16;
  v18 = v62;
  result = Connection.prepare(_:)();
  if (!v18)
  {
    v20 = result;
    v51 = v8;
    v43 = v17;
    v46 = v12;
    v44 = v10;
    v42[2] = 0;

    v21 = dispatch thunk of _AnySequenceBox._underestimatedCount.getter();
    v65 = _swiftEmptyArrayStorage;
    sub_1002395B4(0, v21 & ~(v21 >> 63), 0);
    v22 = v65;
    result = dispatch thunk of _AnySequenceBox._makeIterator()();
    v56 = result;
    if (v21 < 0)
    {
      __break(1u);
LABEL_46:
      __break(1u);
      return result;
    }

    v53 = v11;
    v54 = v1;
    v42[1] = v20;
    if (v21)
    {
      v49 = (v46 + 16);
      v50 = (v46 + 48);
      v47 = v1 + 32;
      v48 = (v46 + 8);
      v23 = v51;
      do
      {
        dispatch thunk of _AnyIteratorBoxBase.next()();
        result = (*v50)(v23, 1, v11);
        if (result == 1)
        {
          goto LABEL_46;
        }

        (*v49)(v15, v23, v11);
        if (qword_1005A82A8 != -1)
        {
          swift_once();
        }

        v24 = sub_10004B564(&qword_1005AF068, &unk_1004D06E0);
        sub_10000A6F0(v24, qword_1005E04E0);
        Row.subscript.getter();
        v60 = v64;
        v61 = v63;
        if (qword_1005A82B0 != -1)
        {
          swift_once();
        }

        sub_10000A6F0(v24, qword_1005E04F8);
        Row.subscript.getter();
        v58 = v64;
        v59 = v63;
        if (qword_1005A82B8 != -1)
        {
          swift_once();
        }

        v62 = v22;
        sub_10000A6F0(v24, qword_1005E0510);
        Row.subscript.getter();
        v57 = v63;
        if (qword_1005A82C0 != -1)
        {
          swift_once();
        }

        v25 = sub_10004B564(&qword_1005AF0B0, &unk_1004D0290);
        sub_10000A6F0(v25, qword_1005E0528);
        Row.subscript.getter();
        if (qword_1005A82C8 != -1)
        {
          swift_once();
        }

        sub_10000A6F0(v25, qword_1005E0540);
        Row.subscript.getter();
        if (qword_1005A82D0 != -1)
        {
          swift_once();
        }

        sub_10000A6F0(v25, qword_1005E0558);
        Row.subscript.getter();
        if (qword_1005A82D8 != -1)
        {
          swift_once();
        }

        sub_10000A6F0(v25, qword_1005E0570);
        Row.subscript.getter();
        v26 = v52;
        Device.init(identifier:deviceName:idsDeviceId:isActive:isThisDevice:isCompanion:isAutoMeCapable:)();
        v27 = *v48;
        v11 = v53;
        (*v48)(v15, v53);
        v23 = v51;
        v27(v51, v11);
        v22 = v62;
        v65 = v62;
        v29 = v62[2];
        v28 = v62[3];
        if (v29 >= v28 >> 1)
        {
          sub_1002395B4((v28 > 1), v29 + 1, 1);
          v26 = v52;
          v22 = v65;
        }

        v22[2] = v29 + 1;
        v1 = v54;
        (*(v54 + 32))(v22 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v29, v26, v55);
      }

      while (--v21);
    }

    v30 = v44;
    dispatch thunk of _AnyIteratorBoxBase.next()();
    v31 = v46;
    v32 = *(v46 + 48);
    v57 = v46 + 48;
    v52 = v32;
    if ((v32)(v30, 1, v11) != 1)
    {
      v34 = *(v31 + 32);
      v33 = v31 + 32;
      v50 = (v33 - 16);
      v51 = v34;
      v48 = (v1 + 32);
      v49 = (v33 - 24);
      v35 = v43;
      v46 = v33;
      do
      {
        (v51)(v35, v30, v11);
        (*v50)(v15, v35, v11);
        if (qword_1005A82A8 != -1)
        {
          swift_once();
        }

        v36 = sub_10004B564(&qword_1005AF068, &unk_1004D06E0);
        sub_10000A6F0(v36, qword_1005E04E0);
        Row.subscript.getter();
        v60 = v64;
        v61 = v63;
        if (qword_1005A82B0 != -1)
        {
          swift_once();
        }

        sub_10000A6F0(v36, qword_1005E04F8);
        Row.subscript.getter();
        v58 = v64;
        v59 = v63;
        if (qword_1005A82B8 != -1)
        {
          swift_once();
        }

        sub_10000A6F0(v36, qword_1005E0510);
        Row.subscript.getter();
        if (qword_1005A82C0 != -1)
        {
          swift_once();
        }

        v62 = v22;
        v37 = sub_10004B564(&qword_1005AF0B0, &unk_1004D0290);
        sub_10000A6F0(v37, qword_1005E0528);
        Row.subscript.getter();
        if (qword_1005A82C8 != -1)
        {
          swift_once();
        }

        sub_10000A6F0(v37, qword_1005E0540);
        Row.subscript.getter();
        if (qword_1005A82D0 != -1)
        {
          swift_once();
        }

        sub_10000A6F0(v37, qword_1005E0558);
        Row.subscript.getter();
        if (qword_1005A82D8 != -1)
        {
          swift_once();
        }

        sub_10000A6F0(v37, qword_1005E0570);
        Row.subscript.getter();
        v38 = v45;
        Device.init(identifier:deviceName:idsDeviceId:isActive:isThisDevice:isCompanion:isAutoMeCapable:)();
        v39 = *v49;
        v11 = v53;
        (*v49)(v15, v53);
        v35 = v43;
        v39(v43, v11);
        v22 = v62;
        v65 = v62;
        v41 = v62[2];
        v40 = v62[3];
        if (v41 >= v40 >> 1)
        {
          sub_1002395B4((v40 > 1), v41 + 1, 1);
          v22 = v65;
        }

        v22[2] = v41 + 1;
        (*(v54 + 32))(v22 + ((*(v54 + 80) + 32) & ~*(v54 + 80)) + *(v54 + 72) * v41, v38, v55);
        v30 = v44;
        dispatch thunk of _AnyIteratorBoxBase.next()();
      }

      while ((v52)(v30, 1, v11) != 1);
    }

    sub_100002CE0(v30, &qword_1005AF468, &qword_1004D06C0);
    sub_10004B564(&qword_1005B1D60, &qword_1004D5FB0);
    result = swift_allocObject();
    *(result + 16) = v22;
  }

  return result;
}

uint64_t sub_10033AB70(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = a2;
  v39 = a1;
  v6 = type metadata accessor for Device();
  v7 = __chkstk_darwin(v6);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v7);
  v13 = &v36 - v12;
  v42 = a3;
  v43 = 0;
  v14 = 0;
  v15 = *(a3 + 56);
  v38 = a3 + 56;
  v16 = 1 << *(a3 + 32);
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  else
  {
    v17 = -1;
  }

  v18 = v17 & v15;
  v19 = (v16 + 63) >> 6;
  v50 = v11 + 16;
  v47 = a4 + 56;
  v40 = v19;
  v41 = v11;
  v51 = (v11 + 8);
LABEL_6:
  while (v18)
  {
    v20 = __clz(__rbit64(v18));
    v46 = (v18 - 1) & v18;
LABEL_13:
    v23 = v20 | (v14 << 6);
    v24 = *(v42 + 48);
    v25 = *(v41 + 72);
    v45 = v23;
    v48 = *(v41 + 16);
    v49 = v25;
    v48(v13, v24 + v25 * v23, v6);
    v26 = *(a4 + 16);
    v44 = v51 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    if (v26 && (sub_10000A49C(&qword_1005AE9C0, &type metadata accessor for Device, &protocol conformance descriptor for Device), v27 = dispatch thunk of Hashable._rawHashValue(seed:)(), v28 = -1 << *(a4 + 32), v29 = v27 & ~v28, ((*(v47 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29) & 1) != 0))
    {
      v30 = a4;
      v31 = ~v28;
      do
      {
        v48(v9, *(v30 + 48) + v29 * v49, v6);
        sub_10000A49C(&qword_1005AE9C8, &type metadata accessor for Device, &protocol conformance descriptor for Device);
        v32 = dispatch thunk of static Equatable.== infix(_:_:)();
        v33 = *v51;
        (*v51)(v9, v6);
        if (v32)
        {
          result = (v33)(v13, v6);
          a4 = v30;
          v19 = v40;
          v18 = v46;
          goto LABEL_6;
        }

        v29 = (v29 + 1) & v31;
      }

      while (((*(v47 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29) & 1) != 0);
      a4 = v30;
      v19 = v40;
      result = (v33)(v13, v6);
    }

    else
    {
      result = (*v51)(v13, v6);
    }

    *(v39 + ((v45 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v45;
    v34 = __OFADD__(v43++, 1);
    v18 = v46;
    if (v34)
    {
      goto LABEL_25;
    }
  }

  v21 = v14;
  while (1)
  {
    v14 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v14 >= v19)
    {
      v35 = v42;

      return sub_10033948C(v39, v37, v43, v35);
    }

    v22 = *(v38 + 8 * v14);
    ++v21;
    if (v22)
    {
      v20 = __clz(__rbit64(v22));
      v46 = (v22 - 1) & v22;
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_10033AF34(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for Device();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v52 = v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = v40 - v10;
  v12 = *(a1 + 32);
  v13 = v12 & 0x3F;
  v14 = ((1 << v12) + 63) >> 6;
  v15 = 8 * v14;

  if (v13 > 0xD)
  {
    goto LABEL_28;
  }

  while (1)
  {
    v41 = v14;
    v42 = v3;
    v40[1] = v40;
    __chkstk_darwin(v16);
    v44 = v40 - ((v15 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v44, v15);
    v48 = 0;
    v14 = 0;
    v17 = *(a1 + 56);
    v43 = a1 + 56;
    v18 = 1 << *(a1 + 32);
    v19 = v18 < 64 ? ~(-1 << v18) : -1;
    v20 = v19 & v17;
    v3 = (v18 + 63) >> 6;
    v53 = a2 + 56;
    v56 = v7 + 16;
    v57 = (v7 + 8);
    v46 = a1;
    v47 = v7;
    v45 = v3;
LABEL_7:
    while (v20)
    {
      v21 = __clz(__rbit64(v20));
      v51 = (v20 - 1) & v20;
LABEL_14:
      v24 = v21 | (v14 << 6);
      v25 = *(a1 + 48);
      v26 = *(v7 + 72);
      v50 = v24;
      v54 = *(v7 + 16);
      v55 = v26;
      v54(v11, v25 + v26 * v24, v6);
      v27 = *(a2 + 16);
      v49 = v57 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      if (v27 && (sub_10000A49C(&qword_1005AE9C0, &type metadata accessor for Device, &protocol conformance descriptor for Device), v15 = v11, v28 = dispatch thunk of Hashable._rawHashValue(seed:)(), v29 = -1 << *(a2 + 32), v30 = v28 & ~v29, ((*(v53 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30) & 1) != 0))
      {
        v31 = v11;
        v32 = a2;
        v33 = ~v29;
        do
        {
          v34 = v52;
          v54(v52, *(v32 + 48) + v30 * v55, v6);
          sub_10000A49C(&qword_1005AE9C8, &type metadata accessor for Device, &protocol conformance descriptor for Device);
          v15 = dispatch thunk of static Equatable.== infix(_:_:)();
          v35 = *v57;
          (*v57)(v34, v6);
          if (v15)
          {
            v11 = v31;
            v35(v31, v6);
            a2 = v32;
            a1 = v46;
            v7 = v47;
            v3 = v45;
            v20 = v51;
            goto LABEL_7;
          }

          v30 = (v30 + 1) & v33;
        }

        while (((*(v53 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30) & 1) != 0);
        a2 = v32;
        v11 = v31;
        v3 = v45;
        a1 = v46;
        v35(v11, v6);
      }

      else
      {
        (*v57)(v11, v6);
      }

      *&v44[(v50 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v50;
      v7 = v47;
      v36 = __OFADD__(v48++, 1);
      v20 = v51;
      if (v36)
      {
        goto LABEL_27;
      }
    }

    v22 = v14;
    while (1)
    {
      v14 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v14 >= v3)
      {
        v37 = sub_10033948C(v44, v41, v48, a1);

        return v37;
      }

      v23 = *(v43 + 8 * v14);
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v51 = (v23 - 1) & v23;
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v39 = swift_slowAlloc();

  v37 = sub_100339010(v39, v14, a1, a2, sub_10033AB70);

  return v37;
}

uint64_t sub_10033B450(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v36 = a2;
  v37 = a1;
  v6 = type metadata accessor for Device();
  v7 = __chkstk_darwin(v6);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v7);
  v49 = &v36 - v12;
  v13 = 0;
  v42 = v11;
  v43 = a3;
  v14 = *(a3 + 56);
  v38 = a3 + 56;
  v39 = 0;
  v15 = 1 << *(a3 + 32);
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  else
  {
    v16 = -1;
  }

  v17 = v16 & v14;
  v18 = (v15 + 63) >> 6;
  v47 = v11 + 16;
  v48 = a4;
  v45 = a4 + 7;
  v19 = (v11 + 8);
  v41 = v18;
  while (v17)
  {
    v20 = __clz(__rbit64(v17));
    v44 = (v17 - 1) & v17;
LABEL_13:
    v23 = v20 | (v13 << 6);
    v24 = *(v43 + 48);
    v25 = *(v42 + 72);
    v40 = v23;
    v46 = v25;
    v26 = *(v42 + 16);
    v26(v49, v24 + v25 * v23, v6);
    if (v48[2] && (v27 = v48, sub_10000A49C(&qword_1005AE9C0, &type metadata accessor for Device, &protocol conformance descriptor for Device), v28 = dispatch thunk of Hashable._rawHashValue(seed:)(), v29 = -1 << *(v27 + 32), v30 = v28 & ~v29, ((*(v45 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30) & 1) != 0))
    {
      v31 = ~v29;
      while (1)
      {
        v26(v9, v48[6] + v30 * v46, v6);
        sub_10000A49C(&qword_1005AE9C8, &type metadata accessor for Device, &protocol conformance descriptor for Device);
        v32 = dispatch thunk of static Equatable.== infix(_:_:)();
        v33 = *v19;
        (*v19)(v9, v6);
        if (v32)
        {
          break;
        }

        v30 = (v30 + 1) & v31;
        if (((*(v45 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30) & 1) == 0)
        {
          goto LABEL_5;
        }
      }

      result = v33(v49, v6);
      *(v37 + ((v40 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v40;
      v34 = __OFADD__(v39++, 1);
      v18 = v41;
      v17 = v44;
      if (v34)
      {
        __break(1u);
LABEL_22:
        v35 = v43;

        return sub_10033948C(v37, v36, v39, v35);
      }
    }

    else
    {
LABEL_5:
      result = (*v19)(v49, v6);
      v18 = v41;
      v17 = v44;
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
      goto LABEL_22;
    }

    v22 = *(v38 + 8 * v13);
    ++v21;
    if (v22)
    {
      v20 = __clz(__rbit64(v22));
      v44 = (v22 - 1) & v22;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10033B7FC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for Device();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v48 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v53 = &v37 - v10;
  v11 = *(a1 + 32);
  v12 = v11 & 0x3F;
  v13 = ((1 << v11) + 63) >> 6;
  v14 = 8 * v13;

  if (v12 > 0xD)
  {
LABEL_27:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v36 = swift_slowAlloc();

      v34 = sub_100339010(v36, v13, a1, a2, sub_10033B450);

      return v34;
    }
  }

  v38 = v13;
  v39 = v3;
  v37 = &v37;
  __chkstk_darwin(v15);
  v40 = &v37 - ((v14 + 15) & 0x3FFFFFFFFFFFFFF0);
  bzero(v40, v14);
  v16 = 0;
  v17 = 0;
  v18 = *(a1 + 56);
  v41 = a1 + 56;
  v19 = 1 << *(a1 + 32);
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  else
  {
    v20 = -1;
  }

  v21 = v20 & v18;
  v22 = (v19 + 63) >> 6;
  v49 = a2 + 56;
  v45 = a1;
  v46 = v7;
  v51 = (v7 + 8);
  v52 = v7 + 16;
  v44 = v22;
  while (2)
  {
    v42 = v16;
    while (1)
    {
      if (!v21)
      {
        v24 = v17;
        while (1)
        {
          v17 = v24 + 1;
          if (__OFADD__(v24, 1))
          {
            break;
          }

          if (v17 >= v22)
          {
            goto LABEL_24;
          }

          v25 = *(v41 + 8 * v17);
          ++v24;
          if (v25)
          {
            v23 = __clz(__rbit64(v25));
            v47 = (v25 - 1) & v25;
            goto LABEL_15;
          }
        }

        __break(1u);
        goto LABEL_27;
      }

      v23 = __clz(__rbit64(v21));
      v47 = (v21 - 1) & v21;
LABEL_15:
      v26 = v23 | (v17 << 6);
      v27 = *(a1 + 48);
      v28 = *(v46 + 9);
      v43 = v26;
      v50 = v28;
      v29 = *(v46 + 2);
      v29(v53, v27 + v28 * v26, v6);
      if (*(a2 + 16))
      {
        sub_10000A49C(&qword_1005AE9C0, &type metadata accessor for Device, &protocol conformance descriptor for Device);
        v14 = v53;
        v30 = dispatch thunk of Hashable._rawHashValue(seed:)();
        v31 = -1 << *(a2 + 32);
        v13 = v30 & ~v31;
        if ((*(v49 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
        {
          break;
        }
      }

LABEL_7:
      (*v51)(v53, v6);
      v22 = v44;
      a1 = v45;
      v21 = v47;
    }

    v3 = ~v31;
    while (1)
    {
      v32 = a2;
      v7 = v48;
      v29(v48, *(a2 + 48) + v13 * v50, v6);
      sub_10000A49C(&qword_1005AE9C8, &type metadata accessor for Device, &protocol conformance descriptor for Device);
      v14 = dispatch thunk of static Equatable.== infix(_:_:)();
      v33 = *v51;
      (*v51)(v7, v6);
      if (v14)
      {
        break;
      }

      v13 = (v13 + 1) & v3;
      a2 = v32;
      if (((*(v49 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    v33(v53, v6);
    v22 = v44;
    *&v40[(v43 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v43;
    v16 = v42 + 1;
    a2 = v32;
    a1 = v45;
    v21 = v47;
    if (!__OFADD__(v42, 1))
    {
      continue;
    }

    break;
  }

  __break(1u);
LABEL_24:
  v34 = sub_10033948C(v40, v38, v42, a1);

  return v34;
}

unint64_t sub_10033BD30()
{
  result = qword_1005B1D78;
  if (!qword_1005B1D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B1D78);
  }

  return result;
}

unint64_t sub_10033BD84()
{
  result = qword_1005B1D88;
  if (!qword_1005B1D88)
  {
    sub_10004B610(&qword_1005AD7E0, &qword_1004CA2C0);
    sub_1001B54FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B1D88);
  }

  return result;
}

unint64_t sub_10033BE08()
{
  result = qword_1005B1D90;
  if (!qword_1005B1D90)
  {
    sub_10004B610(&qword_1005A9328, &unk_1004C7F20);
    sub_100145258();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B1D90);
  }

  return result;
}

unint64_t sub_10033BE8C()
{
  result = qword_1005B1D98;
  if (!qword_1005B1D98)
  {
    sub_10004B610(&qword_1005AD7A8, &qword_1004CA280);
    sub_1001B5550();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B1D98);
  }

  return result;
}

unint64_t sub_10033BF10()
{
  result = qword_1005B1DA8;
  if (!qword_1005B1DA8)
  {
    sub_10004B610(&qword_1005AD7A8, &qword_1004CA280);
    sub_10017DB0C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B1DA8);
  }

  return result;
}

unint64_t sub_10033BF94()
{
  result = qword_1005B1DB0;
  if (!qword_1005B1DB0)
  {
    sub_10004B610(&qword_1005AD7E0, &qword_1004CA2C0);
    sub_10017E074();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B1DB0);
  }

  return result;
}

unint64_t sub_10033C018()
{
  result = qword_1005B1DB8;
  if (!qword_1005B1DB8)
  {
    sub_10004B610(&qword_1005A9328, &unk_1004C7F20);
    sub_1001452AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B1DB8);
  }

  return result;
}

unint64_t sub_10033C09C()
{
  result = qword_1005B1DC0;
  if (!qword_1005B1DC0)
  {
    sub_10004B610(&qword_1005A9E20, &qword_1004C3350);
    sub_10001CCC4(&qword_1005A9EA8, &protocol witness table for String, &protocol conformance descriptor for <A> [A]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B1DC0);
  }

  return result;
}

unint64_t sub_10033C144()
{
  result = qword_1005B1DD0;
  if (!qword_1005B1DD0)
  {
    sub_10004B610(&qword_1005B1DC8, &unk_1004D6040);
    sub_1001A7A6C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B1DD0);
  }

  return result;
}

unint64_t sub_10033C1C8()
{
  result = qword_1005AEB68;
  if (!qword_1005AEB68)
  {
    sub_10004B610(&qword_1005AEB40, &qword_1004CF770);
    sub_10000A49C(&qword_1005AEB70, type metadata accessor for FriendInfoOption, &protocol conformance descriptor for FriendInfoOption);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AEB68);
  }

  return result;
}

uint64_t sub_10033C29C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FriendRecord(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10033C300(uint64_t a1, uint64_t a2)
{
  v4 = sub_10004B564(&qword_1005AFFF8, &unk_1004D2ED0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10033C390(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10033C3F8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10033C458(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10033C4C0(uint64_t a1)
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

unint64_t sub_10033C4F0()
{
  result = qword_1005B1E10;
  if (!qword_1005B1E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B1E10);
  }

  return result;
}

unint64_t sub_10033C560@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  PropertyListDecoder.init()();
  if (qword_1005A8318 != -1)
  {
    swift_once();
  }

  v5 = sub_10004B564(&qword_1005B1A08, &qword_1004D5FF0);
  sub_10000A6F0(v5, qword_1005E0630);
  Row.subscript.getter();
  v6 = v58;
  if (qword_1005A8320 != -1)
  {
    swift_once();
  }

  sub_10000A6F0(v5, qword_1005E0648);
  Row.subscript.getter();
  v55 = v58;
  if (qword_1005A8328 != -1)
  {
    swift_once();
  }

  sub_10000A6F0(v5, qword_1005E0660);
  Row.subscript.getter();
  v54 = v58;
  if (qword_1005A8330 != -1)
  {
    swift_once();
  }

  sub_10000A6F0(v5, qword_1005E0678);
  Row.subscript.getter();
  v7 = v58;
  if (qword_1005A8338 != -1)
  {
    swift_once();
  }

  sub_10000A6F0(v5, qword_1005E0690);
  Row.subscript.getter();
  v8 = v58;
  if (qword_1005A8340 != -1)
  {
    swift_once();
  }

  v71 = sub_10004B564(&qword_1005AF038, &unk_1004D0240);
  sub_10000A6F0(v71, qword_1005E06A8);
  Row.subscript.getter();
  if (*(&v58 + 1) >> 60 == 15)
  {
    v56 = 0;
  }

  else
  {
    sub_10004B564(&qword_1005A9630, &qword_1004C5680);
    sub_10033DE38();
    dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
    if (v2)
    {

      sub_10001A794(v58, *(&v58 + 1));
      v9 = type metadata accessor for Row();
      return (*(*(v9 - 8) + 8))(a1, v9);
    }

    v56 = v58;
  }

  v57 = *(&v58 + 1);
  if (qword_1005A8348 != -1)
  {
    swift_once();
  }

  sub_10000A6F0(v5, qword_1005E06C0);
  Row.subscript.getter();
  v50 = v58;
  if (qword_1005A8350 != -1)
  {
    swift_once();
  }

  sub_10000A6F0(v71, qword_1005E06D8);
  Row.subscript.getter();
  if (*(&v58 + 1) >> 60 == 15)
  {
    v51 = *(&v58 + 1);
    v52 = 0;
  }

  else
  {
    sub_10004B564(&qword_1005A9630, &qword_1004C5680);
    sub_10033DE38();
    dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
    if (v2)
    {

      sub_10001A794(v58, *(&v58 + 1));
      sub_10001A794(v58, *(&v58 + 1));

      v11 = type metadata accessor for Row();
      return (*(*(v11 - 8) + 8))(a1, v11);
    }

    v51 = *(&v58 + 1);
    v52 = v58;
  }

  if (qword_1005A8358 != -1)
  {
    swift_once();
  }

  sub_10000A6F0(v5, qword_1005E06F0);
  Row.subscript.getter();
  v12 = v58;
  if (qword_1005A8360 != -1)
  {
    swift_once();
  }

  v53 = *(&v58 + 1);
  v13 = sub_10004B564(&qword_1005AF068, &unk_1004D06E0);
  sub_10000A6F0(v13, qword_1005E0708);
  Row.subscript.getter();
  v14 = v58;
  if (qword_1005A8368 != -1)
  {
    swift_once();
  }

  v15 = sub_10004B564(&qword_1005B1A20, &qword_1004D5818);
  sub_10000A6F0(v15, qword_1005E0720);
  Row.subscript.getter();
  v49 = v58;
  if (qword_1005A8370 != -1)
  {
    swift_once();
  }

  sub_10000A6F0(v5, qword_1005E0738);
  Row.subscript.getter();
  v16 = v58;
  if (qword_1005A8378 != -1)
  {
    swift_once();
  }

  sub_10000A6F0(v5, qword_1005E0750);
  Row.subscript.getter();
  v17 = v58;
  if (qword_1005A8380 != -1)
  {
    swift_once();
  }

  v18 = sub_10004B564(&qword_1005B1A28, &unk_1004D5820);
  sub_10000A6F0(v18, qword_1005E0768);
  Row.subscript.getter();
  v48 = v58;
  v46 = BYTE8(v58);
  if (qword_1005A8390 != -1)
  {
    swift_once();
  }

  sub_10000A6F0(v5, qword_1005E0798);
  Row.subscript.getter();
  v19 = v58;
  if (qword_1005A8388 != -1)
  {
    swift_once();
  }

  sub_10000A6F0(v18, qword_1005E0780);
  Row.subscript.getter();
  v47 = v58;
  v44 = BYTE8(v58);
  if (qword_1005A8398 != -1)
  {
    swift_once();
  }

  sub_10000A6F0(v15, qword_1005E07B0);
  Row.subscript.getter();
  v45 = v58;
  if (qword_1005A83A0 != -1)
  {
    swift_once();
  }

  sub_10000A6F0(v71, qword_1005E07C8);
  Row.subscript.getter();
  if (*(&v58 + 1) >> 60 == 15)
  {
    v43 = 0;
  }

  else
  {
    sub_10004B564(&qword_1005A9630, &qword_1004C5680);
    sub_10033DE38();
    dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
    if (v2)
    {

      sub_10001A794(v58, *(&v58 + 1));
      sub_10001A794(v58, *(&v58 + 1));
      sub_10001A794(v58, *(&v58 + 1));
      goto LABEL_78;
    }

    v43 = v58;
  }

  if (qword_1005A83A8 != -1)
  {
    swift_once();
  }

  sub_10000A6F0(v5, qword_1005E07E0);
  Row.subscript.getter();
  v20 = v58;
  if (qword_1005A83B0 != -1)
  {
    swift_once();
  }

  sub_10000A6F0(v18, qword_1005E07F8);
  Row.subscript.getter();
  v42 = v58;
  v41 = BYTE8(v58);
  if (qword_1005A83B8 != -1)
  {
    swift_once();
  }

  sub_10000A6F0(v5, qword_1005E0810);
  Row.subscript.getter();
  v21 = v58;
  if (qword_1005A83C0 != -1)
  {
    swift_once();
  }

  sub_10000A6F0(v5, qword_1005E0828);
  Row.subscript.getter();
  v22 = v58;
  if (qword_1005A83C8 != -1)
  {
    swift_once();
  }

  sub_10000A6F0(v5, qword_1005E0840);
  Row.subscript.getter();
  v23 = v58;
  if (qword_1005A83D0 != -1)
  {
    swift_once();
  }

  sub_10000A6F0(v5, qword_1005E0858);
  Row.subscript.getter();
  v24 = v58;
  if (qword_1005A83D8 != -1)
  {
    swift_once();
  }

  v25 = sub_10004B564(&qword_1005B1A50, &qword_1004D5860);
  sub_10000A6F0(v25, qword_1005E0870);
  Row.subscript.getter();
  v40 = v58;
  v39 = BYTE8(v58);
  if (qword_1005A83E0 != -1)
  {
    swift_once();
  }

  sub_10000A6F0(v5, qword_1005E0888);
  Row.subscript.getter();
  if (qword_1005A83E8 != -1)
  {
    swift_once();
  }

  sub_10000A6F0(v5, qword_1005E08A0);
  Row.subscript.getter();
  if (qword_1005A83F0 != -1)
  {
    swift_once();
  }

  sub_10000A6F0(v5, qword_1005E08B8);
  Row.subscript.getter();
  if (qword_1005A83F8 != -1)
  {
    swift_once();
  }

  sub_10000A6F0(v71, qword_1005E08D0);
  Row.subscript.getter();
  if (*(&v58 + 1) >> 60 != 15)
  {
    sub_10004B564(&qword_1005A9630, &qword_1004C5680);
    sub_10033DE38();
    dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
    if (!v2)
    {
      v38 = v58;
      goto LABEL_80;
    }

    sub_10001A794(v58, *(&v58 + 1));
    sub_10001A794(v58, *(&v58 + 1));
    sub_10001A794(v58, *(&v58 + 1));
    sub_10001A794(v58, *(&v58 + 1));

LABEL_78:

    v26 = type metadata accessor for Row();
    return (*(*(v26 - 8) + 8))(a1, v26);
  }

  v38 = 0;
LABEL_80:
  if (qword_1005A8400 != -1)
  {
    swift_once();
  }

  sub_10000A6F0(v5, qword_1005E08E8);
  Row.subscript.getter();
  if (qword_1005A8408 != -1)
  {
    swift_once();
  }

  sub_10000A6F0(v5, qword_1005E0900);
  Row.subscript.getter();
  if (qword_1005A8410 != -1)
  {
    swift_once();
  }

  sub_10000A6F0(v5, qword_1005E0918);
  Row.subscript.getter();
  if (qword_1005A8418 != -1)
  {
    swift_once();
  }

  sub_10000A6F0(v5, qword_1005E0930);
  Row.subscript.getter();
  if (qword_1005A8420 != -1)
  {
    swift_once();
  }

  sub_10000A6F0(v5, qword_1005E0948);
  Row.subscript.getter();
  if (qword_1005A8428 != -1)
  {
    swift_once();
  }

  sub_10000A6F0(v5, qword_1005E0960);
  Row.subscript.getter();
  if (qword_1005A8430 != -1)
  {
    swift_once();
  }

  sub_10000A6F0(v5, qword_1005E0978);
  Row.subscript.getter();
  if (qword_1005A8438 != -1)
  {
    swift_once();
  }

  v71 = v2;
  sub_10000A6F0(v5, qword_1005E0990);
  Row.subscript.getter();
  if (qword_1005A8440 != -1)
  {
    swift_once();
  }

  sub_10000A6F0(v5, qword_1005E09A8);
  Row.subscript.getter();
  if (qword_1005A8448 != -1)
  {
    swift_once();
  }

  sub_10000A6F0(v5, qword_1005E09C0);
  Row.subscript.getter();
  if (qword_1005A8450 != -1)
  {
    swift_once();
  }

  sub_10000A6F0(v5, qword_1005E09D8);
  Row.subscript.getter();

  sub_10001A794(v58, *(&v58 + 1));
  sub_10001A794(v58, *(&v58 + 1));
  sub_10001A794(v58, *(&v58 + 1));
  sub_10001A794(v58, *(&v58 + 1));
  v27 = type metadata accessor for Row();
  (*(*(v27 - 8) + 8))(a1, v27);
  v59 = v58;
  v60 = v58;
  *v61 = v38;
  *&v61[8] = v58;
  *&v61[24] = v58;
  *&v61[40] = v58;
  *&v61[56] = v58;
  *&v61[72] = v58;
  *&v61[88] = v58;
  *&v61[104] = v58;
  *&v61[120] = v58;
  *&v61[136] = v58;
  *&v61[152] = v58;
  *&v61[168] = v58;
  v28._countAndFlagsBits = &v58;
  result = DarwinNotification.init(name:value:)(v28, v29);
  v69 = v46;
  v67 = v44;
  v64 = v41;
  v62 = v39;
  *a2 = v6;
  *(a2 + 16) = v55;
  *(a2 + 24) = v57;
  *(a2 + 32) = v54;
  *(a2 + 40) = v53;
  *(a2 + 48) = v7;
  *(a2 + 64) = v8;
  *(a2 + 80) = v56;
  *(a2 + 88) = v50;
  *(a2 + 96) = v51;
  *(a2 + 104) = v52;
  *(a2 + 112) = v12;
  v30 = *&v61[160];
  *(a2 + 320) = *&v61[144];
  *(a2 + 336) = v30;
  v31 = *&v61[176];
  v32 = *&v61[96];
  *(a2 + 256) = *&v61[80];
  *(a2 + 272) = v32;
  v33 = *&v61[128];
  *(a2 + 288) = *&v61[112];
  *(a2 + 304) = v33;
  v34 = *&v61[32];
  *(a2 + 192) = *&v61[16];
  *(a2 + 208) = v34;
  v35 = *&v61[64];
  *(a2 + 224) = *&v61[48];
  *(a2 + 240) = v35;
  v36 = v59;
  *(a2 + 128) = v58;
  *(a2 + 144) = v36;
  v37 = *v61;
  *(a2 + 160) = v60;
  *(a2 + 176) = v37;
  *(a2 + 352) = v31;
  *(a2 + 360) = v14;
  *(a2 + 376) = v49;
  *(a2 + 377) = v70[0];
  *(a2 + 380) = *(v70 + 3);
  *(a2 + 384) = v16;
  *(a2 + 400) = v17;
  *(a2 + 416) = v48;
  *(a2 + 424) = v69;
  *(a2 + 425) = *v68;
  *(a2 + 428) = *&v68[3];
  *(a2 + 432) = v19;
  *(a2 + 448) = v47;
  *(a2 + 456) = v67;
  *(a2 + 457) = v45;
  *(a2 + 458) = v65;
  *(a2 + 462) = v66;
  *(a2 + 464) = v43;
  *(a2 + 472) = v20;
  *(a2 + 488) = v42;
  *(a2 + 496) = v64;
  *(a2 + 497) = *v63;
  *(a2 + 500) = *&v63[3];
  *(a2 + 504) = v21;
  *(a2 + 520) = v22;
  *(a2 + 536) = v23;
  *(a2 + 552) = v24;
  *(a2 + 568) = v40;
  *(a2 + 576) = v62;
  return result;
}

unint64_t sub_10033DE38()
{
  result = qword_1005A9E80;
  if (!qword_1005A9E80)
  {
    sub_10004B610(&qword_1005A9630, &qword_1004C5680);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005A9E80);
  }

  return result;
}

uint64_t sub_10033DEB4()
{
  v1 = sub_10004B564(&qword_1005A9690, &qword_1004C2A00);
  __chkstk_darwin(v1 - 8);
  v3 = &v24 - v2;
  v4 = sub_10004B564(&unk_1005AE5B0, &qword_1004C32F0);
  __chkstk_darwin(v4 - 8);
  v6 = &v24 - v5;
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v11 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v24 - v12;
  if (*(v0 + 112))
  {

    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    Task.cancel()();
  }

  swift_beginAccess();

  sub_10044C970(v14, v6);

  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    return sub_1000CF9E4(v6);
  }

  v26 = *(v8 + 32);
  v26(v13, v6, v7);
  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v3, 1, 1, v16);
  (*(v8 + 16))(v11, v13, v7);
  v18 = sub_1003404B8(&qword_1005B1F28, v17, type metadata accessor for BackgroundLocationsTimeoutManager, &unk_1004D6288);
  v19 = *(v8 + 80);
  v25 = v3;
  v20 = (v19 + 32) & ~v19;
  v21 = (v9 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  *(v22 + 16) = v0;
  *(v22 + 24) = v18;
  v26((v22 + v20), v11, v7);
  *(v22 + v21) = v0;
  swift_retain_n();
  v23 = sub_10020D620(0, 0, v25, &unk_1004D62D0, v22);
  (*(v8 + 8))(v13, v7);
  *(v0 + 112) = v23;
}

uint64_t sub_10033E248(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v7 = type metadata accessor for ContinuousClock();
  v5[4] = v7;
  v5[5] = *(v7 - 8);
  v5[6] = swift_task_alloc();

  return _swift_task_switch(sub_10033E30C, a5, 0);
}

uint64_t sub_10033E30C()
{
  Date.timeIntervalSinceNow.getter();
  v1 = static Duration.seconds(_:)();
  v3 = v2;
  static Clock<>.continuous.getter();
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  *v4 = v0;
  v4[1] = sub_10033E3F8;

  return sub_100291918(v1, v3, 0, 0, 1);
}

uint64_t sub_10033E3F8()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v4 = *(*v1 + 40);
  v5 = *(*v1 + 32);
  *(*v1 + 64) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 24);
  if (v0)
  {
    v7 = sub_10033E654;
  }

  else
  {
    v7 = sub_10033E580;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_10033E580(uint64_t a1, __n128 a2)
{
  if (static Task<>.isCancelled.getter())
  {

    v3 = *(v2 + 8);

    return v3();
  }

  else
  {
    v5 = swift_task_alloc();
    *(v2 + 72) = v5;
    *v5 = v2;
    v5[1] = sub_10033E6B8;

    return sub_10033E7D0();
  }
}

uint64_t sub_10033E654()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10033E6B8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10033E7D0()
{
  v1[11] = v0;
  sub_10004B564(&unk_1005AE5B0, &qword_1004C32F0);
  v1[12] = swift_task_alloc();
  v2 = type metadata accessor for Date();
  v1[13] = v2;
  v1[14] = *(v2 - 8);
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  v3 = type metadata accessor for ClientID();
  v1[17] = v3;
  v1[18] = *(v3 - 8);
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  sub_10004B564(&qword_1005B1F18, &qword_1004D62B8);
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();

  return _swift_task_switch(sub_10033E98C, v0, 0);
}

uint64_t sub_10033E98C()
{
  v11 = v0;
  if (qword_1005A84C0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[24] = sub_10000A6F0(v1, qword_1005E0B10);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[11];
  if (v4)
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v10 = v7;
    *v6 = 136446466;
    *(v6 + 4) = sub_10000D01C(0xD00000000000001ELL, 0x80000001004E7C60, &v10);
    *(v6 + 12) = 2050;
    swift_beginAccess();
    *(v6 + 14) = *(*(v5 + 120) + 16);

    _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s: Subscriptions %{public}ld", v6, 0x16u);
    sub_100004984(v7);
  }

  else
  {
  }

  v8 = swift_task_alloc();
  v0[25] = v8;
  *v8 = v0;
  v8[1] = sub_10033EB8C;

  return daemon.getter();
}

uint64_t sub_10033EB8C(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 208) = a1;

  v3 = swift_task_alloc();
  *(v2 + 216) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for LocationService(0);
  v6 = sub_1003404B8(&unk_1005AFA50, 255, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_1003404B8(&qword_1005A9308, 255, type metadata accessor for LocationService, &unk_1004D65B0);
  *v3 = v9;
  v3[1] = sub_10033ED70;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_10033ED70(uint64_t a1)
{
  v3 = *v2;
  v3[28] = a1;
  v3[29] = v1;

  if (v1)
  {
    v4 = v3[11];
    v5 = sub_10033FE9C;
  }

  else
  {
    v6 = v3[11];

    v5 = sub_10033EE98;
    v4 = v6;
  }

  return _swift_task_switch(v5, v4, 0);
}

void sub_10033EE98()
{
  v57 = v0;
  v1 = *(v0 + 88);
  swift_beginAccess();
  v2 = *(v1 + 120);
  *(v0 + 240) = v2;
  v3 = *(v2 + 32);
  *(v0 + 288) = v3;
  v4 = 1 << v3;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(v2 + 64);

  v7 = 0;
  if (v6)
  {
    while (1)
    {
      v8 = *(v0 + 240);
LABEL_14:
      v13 = *(v0 + 176);
      v14 = *(v0 + 144);
      v53 = *(v0 + 136);
      v54 = *(v0 + 168);
      v15 = *(v0 + 128);
      v52 = v15;
      v17 = *(v0 + 104);
      v16 = *(v0 + 112);
      v18 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v19 = v18 | (v7 << 6);
      (*(v14 + 16))();
      (*(v16 + 16))(v15, *(v8 + 56) + *(v16 + 72) * v19, v17);
      v20 = sub_10004B564(&qword_1005B1F20, &qword_1004D62C0);
      v21 = *(v20 + 48);
      (*(v14 + 32))(v13, v54, v53);
      (*(v16 + 32))(v13 + v21, v52, v17);
      (*(*(v20 - 8) + 56))(v13, 0, 1, v20);
      v11 = v7;
LABEL_15:
      *(v0 + 248) = v6;
      *(v0 + 256) = v11;
      v22 = *(v0 + 184);
      sub_100340448(*(v0 + 176), v22);
      v23 = sub_10004B564(&qword_1005B1F20, &qword_1004D62C0);
      if ((*(*(v23 - 8) + 48))(v22, 1, v23) == 1)
      {
        break;
      }

      v24 = *(v0 + 184);
      v25 = *(v0 + 112);
      v26 = *(v0 + 120);
      v27 = *(v0 + 104);
      v28 = *(v23 + 48);
      (*(*(v0 + 144) + 32))(*(v0 + 160), v24, *(v0 + 136));
      (*(v25 + 32))(v26, v24 + v28, v27);
      Date.timeIntervalSinceNow.getter();
      if (v29 < 0.0)
      {
        (*(*(v0 + 144) + 16))(*(v0 + 152), *(v0 + 160), *(v0 + 136));
        v37 = Logger.logObject.getter();
        v38 = static os_log_type_t.default.getter();
        v39 = os_log_type_enabled(v37, v38);
        v41 = *(v0 + 144);
        v40 = *(v0 + 152);
        v42 = *(v0 + 136);
        if (v39)
        {
          v43 = swift_slowAlloc();
          v55 = swift_slowAlloc();
          v56 = v55;
          *v43 = 136446210;
          sub_1003404B8(&qword_1005B1F10, 255, &type metadata accessor for ClientID, &protocol conformance descriptor for ClientID);
          v44 = dispatch thunk of CustomStringConvertible.description.getter();
          v46 = v45;
          v47 = *(v41 + 8);
          v47(v40, v42);
          v48 = sub_10000D01C(v44, v46, &v56);

          *(v43 + 4) = v48;
          _os_log_impl(&_mh_execute_header, v37, v38, "Client have expired: %{public}s", v43, 0xCu);
          sub_100004984(v55);
        }

        else
        {

          v47 = *(v41 + 8);
          v47(v40, v42);
        }

        *(v0 + 264) = v47;
        v49 = swift_task_alloc();
        *(v0 + 272) = v49;
        *v49 = v0;
        v49[1] = sub_10033F504;
        v50 = *(v0 + 160);

        sub_100384D84(v50);
        return;
      }

      v30 = *(v0 + 160);
      v32 = *(v0 + 136);
      v31 = *(v0 + 144);
      (*(*(v0 + 112) + 8))(*(v0 + 120), *(v0 + 104));
      (*(v31 + 8))(v30, v32);
      v7 = v11;
      if (!v6)
      {
        goto LABEL_6;
      }
    }

    v35 = *(v0 + 88);

    if (*(*(v35 + 120) + 16))
    {
      sub_10033DEB4();

      v36 = *(v0 + 8);

      v36();
    }

    else
    {
      v51 = swift_task_alloc();
      *(v0 + 280) = v51;
      *v51 = v0;
      v51[1] = sub_10033FCC0;

      sub_100349F80();
    }
  }

  else
  {
LABEL_6:
    v9 = ((1 << *(v0 + 288)) + 63) >> 6;
    if (v9 <= (v7 + 1))
    {
      v10 = v7 + 1;
    }

    else
    {
      v10 = ((1 << *(v0 + 288)) + 63) >> 6;
    }

    v11 = v10 - 1;
    while (1)
    {
      v12 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      if (v12 >= v9)
      {
        v33 = *(v0 + 176);
        v34 = sub_10004B564(&qword_1005B1F20, &qword_1004D62C0);
        (*(*(v34 - 8) + 56))(v33, 1, 1, v34);
        v6 = 0;
        goto LABEL_15;
      }

      v8 = *(v0 + 240);
      v6 = *(v8 + 8 * v12 + 64);
      ++v7;
      if (v6)
      {
        v7 = v12;
        goto LABEL_14;
      }
    }

    __break(1u);
  }
}

uint64_t sub_10033F504()
{
  v1 = *(*v0 + 88);

  return _swift_task_switch(sub_10033F614, v1, 0);
}

uint64_t sub_10033F614()
{
  v60 = v0;
  v56 = *(v0 + 264);
  v1 = *(v0 + 160);
  v2 = *(v0 + 136);
  v4 = *(v0 + 112);
  v3 = *(v0 + 120);
  v6 = *(v0 + 96);
  v5 = *(v0 + 104);
  swift_beginAccess();
  sub_1001FF60C(v1, v6);
  sub_1000CF9E4(v6);
  swift_endAccess();
  sub_10033DEB4();
  (*(v4 + 8))(v3, v5);
  result = v56(v1, v2);
  v9 = *(v0 + 248);
  v8 = *(v0 + 256);
  if (v9)
  {
    while (1)
    {
      v10 = *(v0 + 240);
LABEL_11:
      v15 = *(v0 + 176);
      v16 = *(v0 + 144);
      v55 = *(v0 + 136);
      v57 = *(v0 + 168);
      v17 = *(v0 + 128);
      v54 = v17;
      v19 = *(v0 + 104);
      v18 = *(v0 + 112);
      v20 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v21 = v20 | (v8 << 6);
      (*(v16 + 16))();
      (*(v18 + 16))(v17, *(v10 + 56) + *(v18 + 72) * v21, v19);
      v22 = sub_10004B564(&qword_1005B1F20, &qword_1004D62C0);
      v23 = *(v22 + 48);
      (*(v16 + 32))(v15, v57, v55);
      (*(v18 + 32))(v15 + v23, v54, v19);
      (*(*(v22 - 8) + 56))(v15, 0, 1, v22);
      v13 = v8;
LABEL_12:
      *(v0 + 248) = v9;
      *(v0 + 256) = v13;
      v24 = *(v0 + 184);
      sub_100340448(*(v0 + 176), v24);
      v25 = sub_10004B564(&qword_1005B1F20, &qword_1004D62C0);
      if ((*(*(v25 - 8) + 48))(v24, 1, v25) == 1)
      {
        break;
      }

      v26 = *(v0 + 184);
      v27 = *(v0 + 112);
      v28 = *(v0 + 120);
      v29 = *(v0 + 104);
      v30 = *(v25 + 48);
      (*(*(v0 + 144) + 32))(*(v0 + 160), v26, *(v0 + 136));
      (*(v27 + 32))(v28, v26 + v30, v29);
      Date.timeIntervalSinceNow.getter();
      if (v31 < 0.0)
      {
        (*(*(v0 + 144) + 16))(*(v0 + 152), *(v0 + 160), *(v0 + 136));
        v39 = Logger.logObject.getter();
        v40 = static os_log_type_t.default.getter();
        v41 = os_log_type_enabled(v39, v40);
        v43 = *(v0 + 144);
        v42 = *(v0 + 152);
        v44 = *(v0 + 136);
        if (v41)
        {
          v45 = swift_slowAlloc();
          v58 = swift_slowAlloc();
          v59 = v58;
          *v45 = 136446210;
          sub_1003404B8(&qword_1005B1F10, 255, &type metadata accessor for ClientID, &protocol conformance descriptor for ClientID);
          v46 = dispatch thunk of CustomStringConvertible.description.getter();
          v48 = v47;
          v49 = *(v43 + 8);
          v49(v42, v44);
          v50 = sub_10000D01C(v46, v48, &v59);

          *(v45 + 4) = v50;
          _os_log_impl(&_mh_execute_header, v39, v40, "Client have expired: %{public}s", v45, 0xCu);
          sub_100004984(v58);
        }

        else
        {

          v49 = *(v43 + 8);
          v49(v42, v44);
        }

        *(v0 + 264) = v49;
        v51 = swift_task_alloc();
        *(v0 + 272) = v51;
        *v51 = v0;
        v51[1] = sub_10033F504;
        v52 = *(v0 + 160);

        return sub_100384D84(v52);
      }

      v32 = *(v0 + 160);
      v34 = *(v0 + 136);
      v33 = *(v0 + 144);
      (*(*(v0 + 112) + 8))(*(v0 + 120), *(v0 + 104));
      result = (*(v33 + 8))(v32, v34);
      v8 = v13;
      if (!v9)
      {
        goto LABEL_3;
      }
    }

    v37 = *(v0 + 88);

    if (*(*(v37 + 120) + 16))
    {
      sub_10033DEB4();

      v38 = *(v0 + 8);

      return v38();
    }

    else
    {
      v53 = swift_task_alloc();
      *(v0 + 280) = v53;
      *v53 = v0;
      v53[1] = sub_10033FCC0;

      return sub_100349F80();
    }
  }

  else
  {
LABEL_3:
    v11 = ((1 << *(v0 + 288)) + 63) >> 6;
    if (v11 <= (v8 + 1))
    {
      v12 = v8 + 1;
    }

    else
    {
      v12 = ((1 << *(v0 + 288)) + 63) >> 6;
    }

    v13 = v12 - 1;
    while (1)
    {
      v14 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v14 >= v11)
      {
        v35 = *(v0 + 176);
        v36 = sub_10004B564(&qword_1005B1F20, &qword_1004D62C0);
        (*(*(v36 - 8) + 56))(v35, 1, 1, v36);
        v9 = 0;
        goto LABEL_12;
      }

      v10 = *(v0 + 240);
      v9 = *(v10 + 8 * v14 + 64);
      ++v8;
      if (v9)
      {
        v8 = v14;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_10033FCC0()
{
  v1 = *(*v0 + 88);

  return _swift_task_switch(sub_10033FDD0, v1, 0);
}

uint64_t sub_10033FDD0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10033FE9C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10033FF6C(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = type metadata accessor for Date();
  v2[7] = v3;
  v2[8] = *(v3 - 8);
  v2[9] = swift_task_alloc();
  sub_10004B564(&unk_1005AE5B0, &qword_1004C32F0);
  v2[10] = swift_task_alloc();
  v4 = type metadata accessor for ClientID();
  v2[11] = v4;
  v2[12] = *(v4 - 8);
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();

  return _swift_task_switch(sub_1003400CC, v1, 0);
}

uint64_t sub_1003400CC()
{
  v29 = v0;
  if (qword_1005A84C0 != -1)
  {
    swift_once();
  }

  v1 = v0[14];
  v2 = v0[11];
  v3 = v0[12];
  v4 = v0[5];
  v5 = type metadata accessor for Logger();
  sub_10000A6F0(v5, qword_1005E0B10);
  v6 = *(v3 + 16);
  v6(v1, v4, v2);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[14];
  v12 = v0[11];
  v11 = v0[12];
  if (v9)
  {
    v13 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v28 = v27;
    *v13 = 136315138;
    sub_1003404B8(&qword_1005B1F10, 255, &type metadata accessor for ClientID, &protocol conformance descriptor for ClientID);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v26 = v8;
    v15 = v6;
    v17 = v16;
    (*(v11 + 8))(v10, v12);
    v18 = sub_10000D01C(v14, v17, &v28);
    v6 = v15;

    *(v13 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v7, v26, "monitorBackgroundSession: %s", v13, 0xCu);
    sub_100004984(v27);
  }

  else
  {

    (*(v11 + 8))(v10, v12);
  }

  v19 = v0[13];
  v20 = v0[10];
  v22 = v0[8];
  v21 = v0[9];
  v23 = v0[7];
  v6(v19, v0[5], v0[11]);
  static Date.now.getter();
  static Date.+ infix(_:_:)();
  (*(v22 + 8))(v21, v23);
  (*(v22 + 56))(v20, 0, 1, v23);
  swift_beginAccess();
  sub_1001464BC(v20, v19);
  swift_endAccess();
  sub_10033DEB4();

  v24 = v0[1];

  return v24();
}

uint64_t sub_1003403E4()
{

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_100340448(uint64_t a1, uint64_t a2)
{
  v4 = sub_10004B564(&qword_1005B1F18, &qword_1004D62B8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003404B8(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_100340500(uint64_t a1)
{
  v4 = *(type metadata accessor for Date() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100003690;

  return sub_10033E248(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_100340620()
{
  v0 = type metadata accessor for Logger();
  sub_10004F154(v0, qword_1005B1F30);
  v1 = sub_10000A6F0(v0, qword_1005B1F30);
  if (qword_1005A84B8 != -1)
  {
    swift_once();
  }

  v2 = sub_10000A6F0(v0, qword_1005E0AF8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1003406E8()
{
  v0 = type metadata accessor for Logger();
  sub_10004F154(v0, qword_1005E0AF8);
  sub_10000A6F0(v0, qword_1005E0AF8);
  return Logger.init(subsystem:category:)();
}

unint64_t sub_100340768(unint64_t result)
{
  v1 = result;
  if (!(result >> 62))
  {
    v2 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    v3 = result & 0xC000000000000001;
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_9:
    v5 = 0;
    if (!v2)
    {
      return v5;
    }

LABEL_10:
    v6 = 0;
    while (2)
    {
      for (i = v6; ; ++i)
      {
        if (v3)
        {
          v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (i >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_34;
          }

          v8 = *(v1 + 8 * i + 32);
        }

        v9 = v8;
        v6 = i + 1;
        if (__OFADD__(i, 1))
        {
          __break(1u);
LABEL_34:
          __break(1u);
          goto LABEL_35;
        }

        if ([v8 imageDataAvailable])
        {

          return v9;
        }

        if (!v5)
        {

          goto LABEL_29;
        }

        if ([v5 isSuggested] && (objc_msgSend(v9, "isSuggested") & 1) == 0)
        {
          break;
        }

        if (v6 == v2)
        {
          return v5;
        }
      }

      if (qword_1005A84B0 != -1)
      {
        swift_once();
      }

      v10 = type metadata accessor for Logger();
      sub_10000A6F0(v10, qword_1005B1F30);
      v11 = Logger.logObject.getter();
      v14 = static os_log_type_t.default.getter();
      log = v11;
      if (os_log_type_enabled(v11, v14))
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        v16 = v13;
        *v12 = 136446210;
        *(v12 + 4) = sub_10000D01C(0xD000000000000020, 0x80000001004E7C80, &v16);
        _os_log_impl(&_mh_execute_header, log, v14, "%{public}s Replacing suggested contact with non-suggested contact", v12, 0xCu);
        sub_100004984(v13);
      }

      v5 = v9;
LABEL_29:
      if (v6 != v2)
      {
        continue;
      }

      return v5;
    }
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  v2 = result;
  v3 = v1 & 0xC000000000000001;
  if (!result)
  {
    goto LABEL_9;
  }

LABEL_3:
  if (v3)
  {
LABEL_35:
    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_6:
    v5 = v4;
    if (!v2)
    {
      return v5;
    }

    goto LABEL_10;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v4 = *(v1 + 32);
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

uint64_t sub_100340A1C(uint64_t a1, uint64_t a2)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = a2;

  return _swift_task_switch(sub_100340AAC, 0, 0);
}

uint64_t sub_100340AAC(__n128 a1)
{
  if (static Handle.isPhoneNumber(_:)())
  {
    v2 = objc_allocWithZone(CNPhoneNumber);
    v3 = String._bridgeToObjectiveC()();
    v4 = [v2 initWithStringValue:v3];

    v5 = [objc_opt_self() predicateForContactsMatchingPhoneNumber:v4 prefixHint:0];
  }

  else
  {
    v6 = objc_opt_self();
    v4 = String._bridgeToObjectiveC()();
    v5 = [v6 predicateForContactsMatchingEmailAddress:v4];
  }

  v7 = v5;
  v1[9] = v7;

  sub_10004B564(&qword_1005AF250, &qword_1004D0478);
  v8 = swift_allocObject();
  v1[10] = v8;
  *(v8 + 16) = xmmword_1004D62E0;
  *(v8 + 32) = CNContactImageDataKey;
  *(v8 + 40) = CNContactImageDataAvailableKey;
  type metadata accessor for DaemonActor();
  v9 = v7;
  v10 = CNContactImageDataKey;
  v11 = CNContactImageDataAvailableKey;
  v1[11] = static DaemonActor.shared.getter();
  sub_10034109C();
  v13 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100340C88, v13, v12);
}

uint64_t sub_100340C88()
{

  v1 = qword_1005B5D40;
  if (qword_1005B5D40)
  {
    v2 = qword_1005B5D40;
  }

  else
  {
    v3 = [objc_allocWithZone(CNContactStore) init];
    v4 = qword_1005B5D40;
    qword_1005B5D40 = v3;
    v2 = v3;

    v1 = 0;
  }

  *(v0 + 96) = v2;
  v5 = v1;

  return _swift_task_switch(sub_100340D74, 0, 0);
}

uint64_t sub_100340D74()
{
  v24 = v0;
  v1 = *(v0 + 96);
  v2 = *(v0 + 72);
  sub_10004B564(&unk_1005B3D80, &qword_1004D62F8);
  isa = Array._bridgeToObjectiveC()().super.isa;

  *(v0 + 40) = 0;
  v4 = [v1 unifiedContactsMatchingPredicate:v2 keysToFetch:isa error:v0 + 40];

  v5 = *(v0 + 40);
  if (v4)
  {
    v6 = *(v0 + 72);
    sub_1003410F4();
    v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v5;

    v9 = sub_100340768(v7);
  }

  else
  {
    v10 = v5;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_1005A84B0 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_10000A6F0(v11, qword_1005B1F30);

    swift_errorRetain();
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v15 = *(v0 + 56);
      v14 = *(v0 + 64);
      v22 = *(v0 + 72);
      v16 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *v16 = 136380931;
      *(v16 + 4) = sub_10000D01C(v15, v14, &v23);
      *(v16 + 12) = 2080;
      swift_getErrorValue();
      v17 = Error.localizedDescription.getter();
      v19 = sub_10000D01C(v17, v18, &v23);

      *(v16 + 14) = v19;
      _os_log_impl(&_mh_execute_header, v12, v13, "Could not find contact for handle %{private}s, error: %s", v16, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    v9 = 0;
  }

  v20 = *(v0 + 8);

  return v20(v9);
}

unint64_t sub_10034109C()
{
  result = qword_1005B1F50;
  if (!qword_1005B1F50)
  {
    type metadata accessor for DaemonActor();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B1F50);
  }

  return result;
}

unint64_t sub_1003410F4()
{
  result = qword_1005B1F60;
  if (!qword_1005B1F60)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1005B1F60);
  }

  return result;
}

void sub_100341140(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100239744(0, v1, 0);
    v2 = a1 + 64;
    v3 = _HashTable.startBucket.getter();
    v4 = a1;
    v5 = 0;
    v20 = v1;
    while ((v3 & 0x8000000000000000) == 0 && v3 < 1 << *(v4 + 32))
    {
      v8 = v3 >> 6;
      if ((*(v2 + 8 * (v3 >> 6)) & (1 << v3)) == 0)
      {
        goto LABEL_21;
      }

      v21 = *(v4 + 36);
      v9 = *(*(v4 + 56) + 24 * v3);
      v11 = _swiftEmptyArrayStorage[2];
      v10 = _swiftEmptyArrayStorage[3];

      if (v11 >= v10 >> 1)
      {
        sub_100239744((v10 > 1), v11 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v11 + 1;
      _swiftEmptyArrayStorage[v11 + 4] = v9;
      v6 = 1 << *(v4 + 32);
      if (v3 >= v6)
      {
        goto LABEL_22;
      }

      v2 = a1 + 64;
      v12 = *(a1 + 64 + 8 * v8);
      if ((v12 & (1 << v3)) == 0)
      {
        goto LABEL_23;
      }

      if (v21 != *(v4 + 36))
      {
        goto LABEL_24;
      }

      v13 = v12 & (-2 << (v3 & 0x3F));
      if (v13)
      {
        v6 = __clz(__rbit64(v13)) | v3 & 0x7FFFFFFFFFFFFFC0;
        v7 = v20;
      }

      else
      {
        v14 = v8 << 6;
        v15 = v8 + 1;
        v16 = (a1 + 72 + 8 * v8);
        v7 = v20;
        while (v15 < (v6 + 63) >> 6)
        {
          v18 = *v16++;
          v17 = v18;
          v14 += 64;
          ++v15;
          if (v18)
          {
            sub_10002F14C(v3, v21, 0);
            v4 = a1;
            v6 = __clz(__rbit64(v17)) + v14;
            goto LABEL_4;
          }
        }

        sub_10002F14C(v3, v21, 0);
        v4 = a1;
      }

LABEL_4:
      ++v5;
      v3 = v6;
      if (v5 == v7)
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

void sub_10034137C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    for (i = (a1 + 32); ; ++i)
    {
      v6 = *i;

      sub_10034578C(&v6, a2);
      if (v2)
      {
        break;
      }

      if (!--v3)
      {
        return;
      }
    }
  }
}

uint64_t sub_100341404@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10037B9E8(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100341430()
{
  v0 = type metadata accessor for Logger();
  sub_10004F154(v0, qword_1005E0B10);
  sub_10000A6F0(v0, qword_1005E0B10);
  return Logger.init(subsystem:category:)();
}

Swift::Int sub_1003414B4(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  type metadata accessor for LocationServiceClient();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100341510(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = type metadata accessor for LocationServiceClient();
  v6 = sub_10001AEBC(&qword_1005B23F8, v5, type metadata accessor for LocationServiceClient, &unk_1004D66F8);

  return static XPCAcceptedClient.== infix(_:_:)(v2, v3, v4, v6);
}

uint64_t sub_100341598(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SecureLocationsStewie.ServiceState();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v9 = sub_10004B564(&qword_1005A9690, &qword_1004C2A00);
  __chkstk_darwin(v9 - 8);
  v11 = &v16 - v10;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  (*(v7 + 16))(&v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v6);
  v13 = (*(v7 + 80) + 48) & ~*(v7 + 80);
  v14 = swift_allocObject();
  *(v14 + 2) = 0;
  *(v14 + 3) = 0;
  *(v14 + 4) = a2;
  *(v14 + 5) = a1;
  (*(v7 + 32))(&v14[v13], &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);

  sub_1001D7F30(0, 0, v11, &unk_1004D6770, v14);
}

uint64_t sub_10034178C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[3] = a4;
  v7 = type metadata accessor for SecureLocationsStewie.ServiceState();
  v6[6] = v7;
  v8 = *(v7 - 8);
  v6[7] = v8;
  v6[8] = *(v8 + 64);
  v6[9] = swift_task_alloc();

  return _swift_task_switch(sub_100341858, 0, 0);
}

uint64_t sub_100341858()
{
  v1 = v0[9];
  v2 = v0[6];
  v3 = v0[7];
  v4 = v0[4];
  v5 = v0[3];
  (*(v3 + 16))(v1, v0[5], v2);
  v6 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v7 = swift_allocObject();
  v0[10] = v7;
  *(v7 + 16) = v5;
  *(v7 + 24) = v4;
  (*(v3 + 32))(v7 + v6, v1, v2);

  v8 = swift_task_alloc();
  v0[11] = v8;
  *v8 = v0;
  v8[1] = sub_1003419BC;

  return withTimeout<A>(_:block:)(v8, 0x8AC7230489E80000, 0, &unk_1004D6780, v7, &type metadata for () + 1);
}

uint64_t sub_1003419BC()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_100341B38;
  }

  else
  {

    v2 = sub_100341AD8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100341AD8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100341B38()
{
  v12 = v0;
  v1 = v0[12];

  v0[2] = v1;
  OnceCheckedContinuation.resume(throwing:)();
  if (qword_1005A84C0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A6F0(v2, qword_1005E0B10);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v11 = v7;
    *v5 = 136446466;
    *(v5 + 4) = sub_10000D01C(0xD00000000000001DLL, 0x80000001004E7E80, &v11);
    *(v5 + 12) = 2114;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 14) = v8;
    *v6 = v8;
    _os_log_impl(&_mh_execute_header, v3, v4, "Uncaught error in %{public}s: %{public}@", v5, 0x16u);
    sub_100002CE0(v6, &qword_1005A9670, &unk_1004C2480);

    sub_100004984(v7);
  }

  else
  {
  }

  v9 = v0[1];

  return v9();
}

uint64_t sub_100341D60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[11] = a3;
  v4[12] = a4;
  v4[10] = a2;
  return _swift_task_switch(sub_100341D84, 0, 0);
}

uint64_t sub_100341D84(uint64_t a1)
{
  static Task<>.checkCancellation()();
  v5 = (&async function pointer to dispatch thunk of FM.XPCSession.proxy(errorHandler:) + async function pointer to dispatch thunk of FM.XPCSession.proxy(errorHandler:));

  v2 = swift_task_alloc();
  *(v1 + 104) = v2;
  *v2 = v1;
  v2[1] = sub_100341EA0;
  v3 = *(v1 + 88);

  return v5(v1 + 64, sub_1003792BC, v3);
}

uint64_t sub_100341EA0()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_1002AD1F8;
  }

  else
  {

    v2 = sub_100341FBC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100341FBC()
{
  v1 = v0[11];
  v2 = v0[8];
  v0[9] = SecureLocationsStewie.ServiceState.rawValue.getter();
  sub_10004E724();
  v3 = FixedWidthInteger.data.getter();
  v5 = v4;
  isa = Data._bridgeToObjectiveC()().super.isa;
  v0[6] = sub_1003792D8;
  v0[7] = v1;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_1000A8DE8;
  v0[5] = &unk_10059A1D0;
  v7 = _Block_copy(v0 + 2);

  [v2 stewieServiceStateChanged:isa completion:v7];
  _Block_release(v7);

  sub_1000049D0(v3, v5);
  swift_unknownObjectRelease();
  v8 = v0[1];

  return v8();
}

uint64_t sub_100342118(uint64_t a1)
{
  if (qword_1005A84C0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A6F0(v2, qword_1005E0B10);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v5 = 136446466;
    *(v5 + 4) = sub_10000D01C(0xD00000000000001DLL, 0x80000001004E7E80, &v10);
    *(v5 + 12) = 2082;
    swift_errorRetain();
    sub_10004B564(&qword_1005A9E10, &qword_1004D6790);
    v6 = String.init<A>(describing:)();
    v8 = sub_10000D01C(v6, v7, &v10);

    *(v5 + 14) = v8;
    _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s error: %{public}s", v5, 0x16u);
    swift_arrayDestroy();
  }

  if (!a1)
  {
    return OnceCheckedContinuation.resume<>()();
  }

  v10 = a1;
  swift_errorRetain();
  OnceCheckedContinuation.resume(throwing:)();
}

uint64_t sub_100342308(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[3] = a4;
  return _swift_task_switch(sub_10034232C, 0, 0);
}

uint64_t sub_10034232C()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[3];
  v4 = swift_allocObject();
  v0[6] = v4;
  v4[2] = v3;
  v4[3] = v1;
  v4[4] = v2;

  v5 = swift_task_alloc();
  v0[7] = v5;
  *v5 = v0;
  v5[1] = sub_100342448;

  return withTimeout<A>(_:block:)(v5, 0x8AC7230489E80000, 0, &unk_1004D67D8, v4, &type metadata for () + 1);
}

uint64_t sub_100342448()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_100342564;
  }

  else
  {

    v2 = sub_1000161BC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100342564()
{
  v12 = v0;
  v1 = v0[8];

  v0[2] = v1;
  OnceCheckedContinuation.resume(throwing:)();
  if (qword_1005A84C0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A6F0(v2, qword_1005E0B10);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v11 = v7;
    *v5 = 136446466;
    *(v5 + 4) = sub_10000D01C(0xD000000000000017, 0x80000001004E7EC0, &v11);
    *(v5 + 12) = 2114;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 14) = v8;
    *v6 = v8;
    _os_log_impl(&_mh_execute_header, v3, v4, "Uncaught error in %{public}s: %{public}@", v5, 0x16u);
    sub_100002CE0(v6, &qword_1005A9670, &unk_1004C2480);

    sub_100004984(v7);
  }

  else
  {
  }

  v9 = v0[1];

  return v9();
}

uint64_t sub_100342784(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[11] = a3;
  v4[12] = a4;
  v4[10] = a2;
  return _swift_task_switch(sub_1003427A8, 0, 0);
}

uint64_t sub_1003427A8(uint64_t a1)
{
  static Task<>.checkCancellation()();
  v5 = (&async function pointer to dispatch thunk of FM.XPCSession.proxy(errorHandler:) + async function pointer to dispatch thunk of FM.XPCSession.proxy(errorHandler:));

  v2 = swift_task_alloc();
  *(v1 + 104) = v2;
  *v2 = v1;
  v2[1] = sub_1003428C4;
  v3 = *(v1 + 88);

  return v5(v1 + 64, sub_10037F52C, v3);
}

uint64_t sub_1003428C4()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_10037F540;
  }

  else
  {

    v2 = sub_1003429E0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1003429E0()
{
  v1 = v0[14];
  v2 = v0[12];
  v3 = v0[8];
  type metadata accessor for PropertyListEncoder();
  swift_allocObject();
  PropertyListEncoder.init()();
  v0[9] = v2;
  sub_10004B564(&qword_1005B04E8, &qword_1004D67E0);
  sub_100379750();
  v4 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  if (v1)
  {
  }

  else
  {
    v7 = v0[11];
    v8 = v4;
    v9 = v5;

    isa = Data._bridgeToObjectiveC()().super.isa;
    v0[6] = sub_100379844;
    v0[7] = v7;
    v0[2] = _NSConcreteStackBlock;
    v0[3] = 1107296256;
    v0[4] = sub_1000A8DE8;
    v0[5] = &unk_10059A2C0;
    v11 = _Block_copy(v0 + 2);

    [v3 locationsForHandles:isa completion:v11];
    _Block_release(v11);

    sub_1000049D0(v8, v9);
  }

  swift_unknownObjectRelease();
  v6 = v0[1];

  return v6();
}

uint64_t sub_100342BB0(uint64_t a1)
{
  if (qword_1005A84C0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000A6F0(v1, qword_1005E0B10);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138543362;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "LocationServiceClient proxy error: %{public}@", v4, 0xCu);
    sub_100002CE0(v5, &qword_1005A9670, &unk_1004C2480);
  }

  return OnceCheckedContinuation.resume(throwing:)();
}

uint64_t sub_100342D18(uint64_t a1)
{
  if (qword_1005A84C0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A6F0(v2, qword_1005E0B10);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v5 = 136446466;
    *(v5 + 4) = sub_10000D01C(0xD000000000000017, 0x80000001004E7EC0, &v10);
    *(v5 + 12) = 2082;
    swift_errorRetain();
    sub_10004B564(&qword_1005A9E10, &qword_1004D6790);
    v6 = String.init<A>(describing:)();
    v8 = sub_10000D01C(v6, v7, &v10);

    *(v5 + 14) = v8;
    _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s error: %{public}s", v5, 0x16u);
    swift_arrayDestroy();
  }

  if (!a1)
  {
    return OnceCheckedContinuation.resume<>()();
  }

  v10 = a1;
  swift_errorRetain();
  OnceCheckedContinuation.resume(throwing:)();
}

uint64_t sub_100342F08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_10004B564(&qword_1005A9690, &qword_1004C2A00);
  __chkstk_darwin(v9 - 8);
  v11 = &v15 - v10;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = a2;
  v13[5] = a1;
  v13[6] = a3;

  sub_1001D7F30(0, 0, v11, a5, v13);
}

uint64_t sub_10034302C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[3] = a4;
  return _swift_task_switch(sub_100343050, 0, 0);
}

uint64_t sub_100343050()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[3];
  v4 = swift_allocObject();
  v0[6] = v4;
  v4[2] = v3;
  v4[3] = v1;
  v4[4] = v2;

  v5 = swift_task_alloc();
  v0[7] = v5;
  *v5 = v0;
  v5[1] = sub_10034316C;

  return withTimeout<A>(_:block:)(v5, 0x8AC7230489E80000, 0, &unk_1004D67B0, v4, &type metadata for () + 1);
}

uint64_t sub_10034316C()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_100343288;
  }

  else
  {

    v2 = sub_1000161B8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100343288()
{
  v12 = v0;
  v1 = v0[8];

  v0[2] = v1;
  OnceCheckedContinuation.resume(throwing:)();
  if (qword_1005A84C0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A6F0(v2, qword_1005E0B10);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v11 = v7;
    *v5 = 136446466;
    *(v5 + 4) = sub_10000D01C(0xD00000000000001ALL, 0x80000001004E7EA0, &v11);
    *(v5 + 12) = 2114;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 14) = v8;
    *v6 = v8;
    _os_log_impl(&_mh_execute_header, v3, v4, "Uncaught error in %{public}s: %{public}@", v5, 0x16u);
    sub_100002CE0(v6, &qword_1005A9670, &unk_1004C2480);

    sub_100004984(v7);
  }

  else
  {
  }

  v9 = v0[1];

  return v9();
}

uint64_t sub_1003434A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[11] = a3;
  v4[12] = a4;
  v4[10] = a2;
  return _swift_task_switch(sub_1003434CC, 0, 0);
}

uint64_t sub_1003434CC()
{
  v4 = (&async function pointer to dispatch thunk of FM.XPCSession.proxy(errorHandler:) + async function pointer to dispatch thunk of FM.XPCSession.proxy(errorHandler:));

  v1 = swift_task_alloc();
  *(v0 + 104) = v1;
  *v1 = v0;
  v1[1] = sub_1003435A0;
  v2 = *(v0 + 88);

  return v4(v0 + 64, sub_10037F52C, v2);
}

uint64_t sub_1003435A0()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_10037F540;
  }

  else
  {

    v2 = sub_1003436BC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1003436BC()
{
  v1 = v0[14];
  v2 = v0[12];
  v3 = v0[8];
  type metadata accessor for PropertyListEncoder();
  swift_allocObject();
  PropertyListEncoder.init()();
  v0[9] = v2;
  sub_10004B564(&qword_1005B2400, &qword_1004D67B8);
  sub_100379494();
  v4 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  if (v1)
  {
  }

  else
  {
    v7 = v0[11];
    v8 = v4;
    v9 = v5;

    isa = Data._bridgeToObjectiveC()().super.isa;
    v0[6] = sub_10037954C;
    v0[7] = v7;
    v0[2] = _NSConcreteStackBlock;
    v0[3] = 1107296256;
    v0[4] = sub_1000A8DE8;
    v0[5] = &unk_10059A248;
    v11 = _Block_copy(v0 + 2);

    [v3 locationsUnavailableFor:isa completion:v11];
    _Block_release(v11);

    sub_1000049D0(v8, v9);
  }

  swift_unknownObjectRelease();
  v6 = v0[1];

  return v6();
}

uint64_t sub_10034388C(uint64_t a1)
{
  if (qword_1005A84C0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A6F0(v2, qword_1005E0B10);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v5 = 136446466;
    *(v5 + 4) = sub_10000D01C(0xD00000000000001ALL, 0x80000001004E7EA0, &v10);
    *(v5 + 12) = 2082;
    swift_errorRetain();
    sub_10004B564(&qword_1005A9E10, &qword_1004D6790);
    v6 = String.init<A>(describing:)();
    v8 = sub_10000D01C(v6, v7, &v10);

    *(v5 + 14) = v8;
    _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s error: %{public}s", v5, 0x16u);
    swift_arrayDestroy();
  }

  if (!a1)
  {
    return OnceCheckedContinuation.resume<>()();
  }

  v10 = a1;
  swift_errorRetain();
  OnceCheckedContinuation.resume(throwing:)();
}

uint64_t sub_100343A7C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_100343A9C, v1, 0);
}

uint64_t sub_100343A9C()
{
  v1 = swift_task_alloc();
  v0[2].i64[0] = v1;
  v1[1] = vextq_s8(v0[1], v0[1], 8uLL);
  v2 = swift_task_alloc();
  v0[2].i64[1] = v2;
  *v2 = v0;
  v2[1] = sub_1002AD560;

  return withOnceCheckedThrowingContinuation<A>(function:_:)(v2, 0xD000000000000017, 0x80000001004E7EC0, sub_100379554, v1, &type metadata for () + 1);
}

uint64_t sub_100343B84(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_100343BA4, v1, 0);
}

uint64_t sub_100343BA4()
{
  v1 = swift_task_alloc();
  v0[2].i64[0] = v1;
  v1[1] = vextq_s8(v0[1], v0[1], 8uLL);
  v2 = swift_task_alloc();
  v0[2].i64[1] = v2;
  *v2 = v0;
  v2[1] = sub_1002AD560;

  return withOnceCheckedThrowingContinuation<A>(function:_:)(v2, 0xD00000000000001ALL, 0x80000001004E7EA0, sub_1003792E0, v1, &type metadata for () + 1);
}

uint64_t sub_100343C8C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_100343CAC, v1, 0);
}

uint64_t sub_100343CAC()
{
  v1 = swift_task_alloc();
  v0[2].i64[0] = v1;
  v1[1] = vextq_s8(v0[1], v0[1], 8uLL);
  v2 = swift_task_alloc();
  v0[2].i64[1] = v2;
  *v2 = v0;
  v2[1] = sub_1002AD78C;

  return withOnceCheckedThrowingContinuation<A>(function:_:)(v2, 0xD00000000000001DLL, 0x80000001004E7E80, sub_100378574, v1, &type metadata for () + 1);
}

void sub_100343D94(void *a1, void *a2)
{
  v4 = type metadata accessor for Handle();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v44 = &v33 - v10;
  __chkstk_darwin(v9);
  v39 = &v33 - v11;
  v12 = a2[2];
  if (v12)
  {
    v13 = a1[2];
    if (v13)
    {
      if (v12 >= v13)
      {
        v14 = a1;
      }

      else
      {
        v14 = a2;
      }

      if (v12 < v13)
      {
        a2 = a1;
      }

      v15 = v14 + 7;
      v16 = 1 << *(v14 + 32);
      if (v16 < 64)
      {
        v17 = ~(-1 << v16);
      }

      else
      {
        v17 = -1;
      }

      v18 = v17 & v14[7];
      v19 = (v16 + 63) >> 6;
      v42 = v5 + 16;
      v37 = v5 + 32;
      v38 = v14;
      v40 = a2 + 7;
      v20 = (v5 + 8);

      v43 = a2;

      v21 = 0;
      v34 = v19;
      v35 = v15;
      v36 = v5;
      while (v18)
      {
LABEL_18:
        v23 = v39;
        v24 = v38[6];
        v41 = *(v5 + 72);
        v25 = *(v5 + 16);
        v25(v39, v24 + v41 * (__clz(__rbit64(v18)) | (v21 << 6)), v4);
        (*(v5 + 32))(v44, v23, v4);
        if (v43[2])
        {
          v26 = v43;
          sub_10001AEBC(&qword_1005A91B0, 255, &type metadata accessor for Handle, &protocol conformance descriptor for Handle);
          v27 = dispatch thunk of Hashable._rawHashValue(seed:)();
          v28 = -1 << *(v26 + 32);
          v29 = v27 & ~v28;
          if ((*(v40 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29))
          {
            v30 = ~v28;
            while (1)
            {
              v25(v8, v43[6] + v29 * v41, v4);
              sub_10001AEBC(&qword_1005A91B8, 255, &type metadata accessor for Handle, &protocol conformance descriptor for Handle);
              v31 = dispatch thunk of static Equatable.== infix(_:_:)();
              v32 = *v20;
              (*v20)(v8, v4);
              if (v31)
              {
                break;
              }

              v29 = (v29 + 1) & v30;
              if (((*(v40 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29) & 1) == 0)
              {
                goto LABEL_12;
              }
            }

            v32(v44, v4);
            return;
          }
        }

LABEL_12:
        v18 &= v18 - 1;
        (*v20)(v44, v4);
        v15 = v35;
        v5 = v36;
        v19 = v34;
      }

      while (1)
      {
        v22 = v21 + 1;
        if (__OFADD__(v21, 1))
        {
          break;
        }

        if (v22 >= v19)
        {

          return;
        }

        v18 = v15[v22];
        ++v21;
        if (v18)
        {
          v21 = v22;
          goto LABEL_18;
        }
      }

      __break(1u);
    }
  }
}

void sub_10034415C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10004B564(&qword_1005AC640, &qword_1004C6EE0);
  __chkstk_darwin(v4 - 8);
  v61 = &v58 - v5;
  v79 = type metadata accessor for Location();
  v6 = *(v79 - 8);
  v7 = __chkstk_darwin(v79);
  v9 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v63 = &v58 - v10;
  v11 = type metadata accessor for Handle();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v72 = &v58 - v16;
  v17 = sub_10004B564(&qword_1005B2438, &qword_1004D68B0);
  v18 = __chkstk_darwin(v17 - 8);
  v20 = &v58 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v77 = &v58 - v21;
  v22 = *(a1 + 64);
  v59 = a1 + 64;
  v23 = 1 << *(a1 + 32);
  v24 = -1;
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  v25 = v24 & v22;
  v58 = (v23 + 63) >> 6;
  v70 = (v6 + 16);
  v71 = (v12 + 16);
  v74 = (v6 + 32);
  v75 = (v12 + 32);
  v60 = (v6 + 56);
  v64 = v6;
  v65 = a1;
  v26 = (v6 + 8);
  v27 = v9;
  v68 = (v12 + 8);
  v69 = v26;

  v28 = 0;
  v67 = 0;
  v78 = v9;
  v73 = v20;
  v62 = v15;
  v76 = v2;
LABEL_5:
  while (v25)
  {
    v29 = v28;
LABEL_15:
    v32 = __clz(__rbit64(v25));
    v25 &= v25 - 1;
    v33 = v32 | (v29 << 6);
    v34 = v65;
    (*(v12 + 16))(v72, *(v65 + 48) + *(v12 + 72) * v33, v11);
    v36 = v63;
    v35 = v64;
    v37 = v79;
    (*(v64 + 16))(v63, *(v34 + 56) + *(v64 + 72) * v33, v79);
    v38 = sub_10004B564(&qword_1005B2440, &qword_1004D68C0);
    v39 = *(v38 + 48);
    v20 = v73;
    (*(v12 + 32))();
    (*(v35 + 32))(&v20[v39], v36, v37);
    (*(*(v38 - 8) + 56))(v20, 0, 1, v38);
    v27 = v78;
    v2 = v76;
    v15 = v62;
LABEL_16:
    v40 = v77;
    sub_1000176A8(v20, v77, &qword_1005B2438, &qword_1004D68B0);
    v41 = sub_10004B564(&qword_1005B2440, &qword_1004D68C0);
    if ((*(*(v41 - 8) + 48))(v40, 1, v41) != 1)
    {
      v42 = *(v41 + 48);
      v43 = v77;
      (*v75)(v15, v77, v11);
      (*v74)(v27, v43 + v42, v79);
      v44 = 0;
      v45 = *v2;
      v46 = *(v45 + 16);
      do
      {
        if (v46 == v44)
        {
          v27 = v78;
          (*v69)(v78, v79);
          (*v68)(v15, v11);
          v2 = v76;
          goto LABEL_5;
        }

        v47 = v44 + 1;
        sub_10001AEBC(&qword_1005A91B8, 255, &type metadata accessor for Handle, &protocol conformance descriptor for Handle);
        v48 = dispatch thunk of static Equatable.== infix(_:_:)();
        v44 = v47;
      }

      while ((v48 & 1) == 0);
      v49 = v72;
      (*v71)(v72, v15, v11);
      v50 = v61;
      v51 = v79;
      (*v70)(v61, v78, v79);
      (*v60)(v50, 0, 1, v51);
      v52 = v76;
      v53 = sub_100145824(v50, v49);
      v66 = &v58;
      __chkstk_darwin(v53);
      *(&v58 - 2) = v15;

      v54 = v67;
      v55 = sub_10020D434(sub_10037CBB4, (&v58 - 4), v45);
      v67 = v54;
      v2 = v52;

      *v52 = v55;
      if (v55[2])
      {
        (*v69)(v78, v79);
      }

      else
      {
        if (v52[1])
        {
          OnceCheckedContinuation.resume<>()();
        }

        (*v69)(v78, v79);

        v52[1] = 0;
      }

      v20 = v73;
      v57 = v55[2];
      (*v68)(v15, v11);
      v27 = v78;
      if (v57)
      {
        continue;
      }
    }

    return;
  }

  if (v58 <= v28 + 1)
  {
    v30 = v28 + 1;
  }

  else
  {
    v30 = v58;
  }

  v31 = v30 - 1;
  while (1)
  {
    v29 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      break;
    }

    if (v29 >= v58)
    {
      v56 = sub_10004B564(&qword_1005B2440, &qword_1004D68C0);
      (*(*(v56 - 8) + 56))(v20, 1, 1, v56);
      v25 = 0;
      v28 = v31;
      goto LABEL_16;
    }

    v25 = *(v59 + 8 * v29);
    ++v28;
    if (v25)
    {
      v28 = v29;
      goto LABEL_15;
    }
  }

  __break(1u);
}

BOOL sub_1003448FC(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Handle();
  sub_10001AEBC(&qword_1005A91B8, 255, &type metadata accessor for Handle, &protocol conformance descriptor for Handle);
  return (dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0;
}

void *sub_100344994(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = sub_10004B564(&qword_1005B2420, &qword_1004D67E8);
  v10 = __chkstk_darwin(v79);
  v78 = &v64 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v77 = &v64 - v13;
  v14 = __chkstk_darwin(v12);
  v76 = &v64 - v15;
  __chkstk_darwin(v14);
  v75 = &v64 - v16;
  v17 = *(a1 + 16);
  if (v17)
  {
    v65 = a3;
    v66 = v9;
    v67 = a2;
    v68 = v7;
    v69 = v6;
    v85 = _swiftEmptyArrayStorage;
    sub_10002B3C0(0, v17, 0);
    v83 = v85;
    v18 = a1 + 64;
    result = _HashTable.startBucket.getter();
    v20 = result;
    v21 = 0;
    v22 = *(a1 + 36);
    v70 = a1 + 72;
    v71 = v17;
    v72 = v22;
    v73 = a1 + 64;
    v74 = a1;
    while ((v20 & 0x8000000000000000) == 0 && v20 < 1 << *(a1 + 32))
    {
      if ((*(v18 + 8 * (v20 >> 6)) & (1 << v20)) == 0)
      {
        goto LABEL_27;
      }

      if (v22 != *(a1 + 36))
      {
        goto LABEL_28;
      }

      v81 = 1 << v20;
      v82 = v20 >> 6;
      v80 = v21;
      v24 = *(a1 + 48);
      v25 = type metadata accessor for Handle();
      v26 = *(v25 - 8);
      v27 = v26;
      v28 = v24 + *(v26 + 72) * v20;
      v29 = v75;
      (*(v26 + 16))(v75, v28, v25);
      v30 = *(*(a1 + 56) + 8 * v20);
      v31 = *(v27 + 32);
      v32 = v76;
      v31(v76, v29, v25);
      v33 = v79;
      *(v32 + *(v79 + 48)) = v30;
      v34 = v77;
      sub_100005F04(v32, v77, &qword_1005B2420, &qword_1004D67E8);
      v35 = *(v33 + 48);
      v36 = *(v34 + v35);
      v37 = v78;
      v31(v78, v34, v25);
      *(v37 + v35) = v36;

      v38 = Handle.identifier.getter();
      v40 = v39;
      sub_100002CE0(v37, &qword_1005B2420, &qword_1004D67E8);
      result = sub_100002CE0(v32, &qword_1005B2420, &qword_1004D67E8);
      v41 = v83;
      v85 = v83;
      v43 = v83[2];
      v42 = v83[3];
      if (v43 >= v42 >> 1)
      {
        result = sub_10002B3C0((v42 > 1), v43 + 1, 1);
        v41 = v85;
      }

      v41[2] = v43 + 1;
      v44 = &v41[2 * v43];
      v44[4] = v38;
      v44[5] = v40;
      a1 = v74;
      v23 = 1 << *(v74 + 32);
      if (v20 >= v23)
      {
        goto LABEL_29;
      }

      v18 = v73;
      v45 = *(v73 + 8 * v82);
      if ((v45 & v81) == 0)
      {
        goto LABEL_30;
      }

      v83 = v41;
      LODWORD(v22) = v72;
      if (v72 != *(v74 + 36))
      {
        goto LABEL_31;
      }

      v46 = v45 & (-2 << (v20 & 0x3F));
      if (v46)
      {
        v23 = __clz(__rbit64(v46)) | v20 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v47 = v82 << 6;
        v48 = v82 + 1;
        v49 = (v70 + 8 * v82);
        while (v48 < (v23 + 63) >> 6)
        {
          v51 = *v49++;
          v50 = v51;
          v47 += 64;
          ++v48;
          if (v51)
          {
            result = sub_10002F14C(v20, v72, 0);
            v23 = __clz(__rbit64(v50)) + v47;
            goto LABEL_4;
          }
        }

        result = sub_10002F14C(v20, v72, 0);
      }

LABEL_4:
      v21 = v80 + 1;
      v20 = v23;
      if (v80 + 1 == v71)
      {
        v7 = v68;
        v6 = v69;
        v9 = v66;
        a2 = v67;
        a3 = v65;
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
  }

  else
  {
    v83 = _swiftEmptyArrayStorage;
LABEL_22:
    v52 = 0xE000000000000000;
    v85 = 0;
    v86 = 0xE000000000000000;
    _StringGuts.grow(_:)(60);
    v53._object = 0x80000001004E7EE0;
    v53._countAndFlagsBits = 0xD000000000000010;
    String.append(_:)(v53);
    v54 = Array.description.getter();
    v56 = v55;

    v57._countAndFlagsBits = v54;
    v57._object = v56;
    String.append(_:)(v57);

    v58._countAndFlagsBits = 0xD00000000000001ALL;
    v58._object = 0x80000001004E7F00;
    String.append(_:)(v58);
    v84 = a3;
    v59._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v59);

    v60._countAndFlagsBits = 0x7469206B726F5720;
    v60._object = 0xEC000000203A6D65;
    String.append(_:)(v60);
    if (a2)
    {
      WorkItemQueue.WorkItem.id.getter();
      v61 = UUID.uuidString.getter();
      v52 = v62;
      (*(v7 + 8))(v9, v6);
    }

    else
    {
      v61 = 0;
    }

    v63._countAndFlagsBits = v61;
    v63._object = v52;
    String.append(_:)(v63);

    return v85;
  }

  return result;
}

uint64_t sub_100344FCC()
{
  v0 = type metadata accessor for Logger();
  sub_10004F154(v0, qword_1005E0B28);
  v1 = sub_10000A6F0(v0, qword_1005E0B28);
  if (qword_1005A84C0 != -1)
  {
    swift_once();
  }

  v2 = sub_10000A6F0(v0, qword_1005E0B10);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100345094()
{
  v1 = *(*v0 + 32);

  return _swift_task_switch(sub_1003451A4, v1, 0);
}

uint64_t sub_1003451A4()
{

  v1 = *(v0 + 16);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_100345214(uint64_t a1)
{
  *(v1 + 24) = a1;
  v2 = swift_task_alloc();
  *(v1 + 32) = v2;
  v3 = type metadata accessor for SecureLocationsManagerAdapter();
  *v2 = v1;
  v2[1] = sub_1003452D4;

  return unsafeBlocking<A>(_:)(v1 + 16, sub_1003453EC, 0, v3);
}

uint64_t sub_1003452D4()
{

  return _swift_task_switch(sub_1003453D0, 0, 0);
}

uint64_t sub_1003453EC@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for SecureLocationsManagerAdapter();
  swift_allocObject();
  result = sub_1004724D8();
  *a1 = result;
  return result;
}

void sub_10034548C()
{
  v30 = type metadata accessor for ClientID.ConnectionType();
  v0 = *(v30 - 8);
  v1 = __chkstk_darwin(v30);
  v29 = v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v1);
  v28 = v21 - v3;
  v33 = type metadata accessor for ClientID();
  v4 = *(v33 - 8);
  __chkstk_darwin(v33);
  v26 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10002F198();
  v7 = v6[7];
  v21[0] = v6 + 7;
  v8 = 1 << *(v6 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & v7;
  v11 = (v8 + 63) >> 6;
  v25 = v4 + 16;
  v24 = enum case for ClientID.ConnectionType.background(_:);
  v22 = (v0 + 8);
  v23 = (v0 + 104);
  v27 = v4;
  v21[1] = v4 + 8;
  v31 = v6;

  v12 = 0;
  v14 = v27;
  v13 = v28;
  while (v10)
  {
    v15 = v12;
LABEL_10:
    v16 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    v17 = v26;
    (*(v14 + 16))(v26, v31[6] + *(v14 + 72) * (v16 | (v15 << 6)), v33);
    ClientID.connectionType.getter();
    v19 = v29;
    v18 = v30;
    (*v23)(v29, v24, v30);
    v32 = static ClientID.ConnectionType.== infix(_:_:)();
    v20 = *v22;
    (*v22)(v19, v18);
    v20(v13, v18);
    (*(v14 + 8))(v17, v33);
    if (v32)
    {
LABEL_11:

      return;
    }
  }

  while (1)
  {
    v15 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v15 >= v11)
    {
      goto LABEL_11;
    }

    v10 = *(v21[0] + 8 * v15);
    ++v12;
    if (v10)
    {
      v12 = v15;
      goto LABEL_10;
    }
  }

  __break(1u);
}

void sub_10034578C(uint64_t *a1, uint64_t a2)
{
  v43 = a2;
  v51 = sub_10004B564(&qword_1005B2420, &qword_1004D67E8);
  v3 = __chkstk_darwin(v51);
  v50 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v49 = &v43 - v6;
  __chkstk_darwin(v5);
  v48 = &v43 - v7;
  v8 = *a1;
  v9 = *(v8 + 16);
  if (v9)
  {
    v54 = _swiftEmptyArrayStorage;
    sub_100239784(0, v9, 0);
    v10 = v54;
    v11 = v8 + 64;
    v12 = _HashTable.startBucket.getter();
    v13 = 0;
    v44 = v8 + 72;
    v45 = v9;
    v46 = v8 + 64;
    v47 = v8;
    while ((v12 & 0x8000000000000000) == 0 && v12 < 1 << *(v8 + 32))
    {
      v15 = v12 >> 6;
      if ((*(v11 + 8 * (v12 >> 6)) & (1 << v12)) == 0)
      {
        goto LABEL_28;
      }

      v16 = *(v8 + 36);
      v52 = v13;
      v53 = v16;
      v17 = *(v8 + 48);
      v18 = type metadata accessor for Handle();
      v19 = *(v18 - 8);
      v20 = v48;
      (*(v19 + 16))(v48, v17 + *(v19 + 72) * v12, v18);
      v21 = *(*(v8 + 56) + 8 * v12);
      v22 = v10;
      v23 = v49;
      (*(v19 + 32))(v49, v20, v18);
      v24 = v51;
      *&v23[*(v51 + 48)] = v21;
      v25 = v23;
      v26 = v50;
      sub_1000176A8(v25, v50, &qword_1005B2420, &qword_1004D67E8);
      v27 = *(v26 + *(v24 + 48));
      v28 = *(v19 + 8);

      v29 = v26;
      v10 = v22;
      v28(v29, v18);
      v54 = v22;
      v31 = v22[2];
      v30 = v22[3];
      if (v31 >= v30 >> 1)
      {
        sub_100239784((v30 > 1), v31 + 1, 1);
        v10 = v54;
      }

      v10[2] = v31 + 1;
      v10[v31 + 4] = v27;
      v8 = v47;
      v14 = 1 << *(v47 + 32);
      if (v12 >= v14)
      {
        goto LABEL_29;
      }

      v11 = v46;
      v32 = *(v46 + 8 * v15);
      if ((v32 & (1 << v12)) == 0)
      {
        goto LABEL_30;
      }

      if (v53 != *(v47 + 36))
      {
        goto LABEL_31;
      }

      v33 = v32 & (-2 << (v12 & 0x3F));
      if (v33)
      {
        v14 = __clz(__rbit64(v33)) | v12 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v34 = v15 << 6;
        v35 = v15 + 1;
        v36 = (v44 + 8 * v15);
        while (v35 < (v14 + 63) >> 6)
        {
          v38 = *v36++;
          v37 = v38;
          v34 += 64;
          ++v35;
          if (v38)
          {
            sub_10002F14C(v12, v53, 0);
            v14 = __clz(__rbit64(v37)) + v34;
            goto LABEL_4;
          }
        }

        sub_10002F14C(v12, v53, 0);
      }

LABEL_4:
      v13 = v52 + 1;
      v12 = v14;
      if (v52 + 1 == v45)
      {
        goto LABEL_21;
      }
    }
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
LABEL_21:
    v54 = _swiftEmptyArrayStorage;
    v39 = v10[2];
    if (!v39)
    {
LABEL_25:

      sub_10002F894(v54);

      return;
    }

    v40 = 0;
    while (v40 < v10[2])
    {
      v41 = v40 + 1;

      sub_10002CF8C(v42);
      v40 = v41;
      if (v39 == v41)
      {
        goto LABEL_25;
      }
    }

    __break(1u);
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
}

uint64_t sub_100345BC0()
{
  v1[2] = v0;
  v2 = type metadata accessor for ClientID.ConnectionType();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();
  v3 = type metadata accessor for ClientID();
  v1[7] = v3;
  v1[8] = *(v3 - 8);
  v1[9] = swift_task_alloc();

  return _swift_task_switch(sub_100345D1C, v0, 0);
}

uint64_t sub_100345D1C()
{
  *(v0 + 80) = *(*(v0 + 16) + OBJC_IVAR____TtC13findmylocated15LocationService_connectionPool);
  sub_10004B564(&qword_1005B2498, &qword_1004D6A98);
  sub_10001DF0C(&qword_1005B24A0, &qword_1005B2498, &qword_1004D6A98, &protocol conformance descriptor for XPCClientConnectionPool<A>);
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100345E28, v2, v1);
}

uint64_t sub_100345E28()
{
  v1 = *(v0 + 16);
  *(v0 + 88) = dispatch thunk of XPCClientConnectionPool.sessions.getter();

  return _swift_task_switch(sub_10002EC84, v1, 0);
}

uint64_t sub_100345ECC(uint64_t a1)
{
  v3 = *v2;
  v3[15] = a1;
  v3[16] = v1;

  if (v1)
  {
  }

  else
  {
    v5 = v3[2];
    swift_bridgeObjectRelease_n();

    return _swift_task_switch(sub_100346094, v5, 0);
  }
}

uint64_t sub_100346094()
{
  v57 = v0;
  v1 = sub_10002F198();
  v2 = v1;
  v3 = *(v1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  v53 = v0;
  if ((v3 & 0x3Fu) > 0xD)
  {
    goto LABEL_31;
  }

  while (1)
  {
    v41[1] = v41;
    v42 = v4;
    v5 = *(v0 + 8);
    v6 = *(v0 + 4);
    __chkstk_darwin(v1);
    v43 = v41 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v43, v7);
    v44 = 0;
    v8 = 0;
    v52 = v2;
    v10 = *(v2 + 56);
    v2 += 56;
    v9 = v10;
    v11 = 1 << *(v2 - 24);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & v9;
    v4 = (v11 + 63) >> 6;
    v50 = v5 + 16;
    v49 = enum case for ClientID.ConnectionType.background(_:);
    v47 = (v6 + 8);
    v48 = (v6 + 104);
    v51 = v5;
    v46 = v5 + 8;
    v14 = v5;
    while (v13)
    {
      v56 = (v13 - 1) & v13;
      v15 = __clz(__rbit64(v13)) | (v8 << 6);
      v0 = v53;
LABEL_12:
      v18 = *(v0 + 9);
      v19 = *(v0 + 6);
      v55 = *(v0 + 7);
      v20 = *(v0 + 5);
      v21 = *(v0 + 3);
      v22 = *(v52 + 48);
      v23 = *(v14 + 72);
      v45 = v15;
      (*(v14 + 16))(v18, v22 + v23 * v15);
      ClientID.connectionType.getter();
      (*v48)(v20, v49, v21);
      v54 = static ClientID.ConnectionType.== infix(_:_:)();
      v0 = *v47;
      (*v47)(v20, v21);
      v0(v19, v21);
      (*(v14 + 8))(v18, v55);
      v13 = v56;
      if (v54)
      {
        *&v43[(v45 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v45;
        if (__OFADD__(v44++, 1))
        {
          __break(1u);
LABEL_16:
          v25 = sub_1003397B4(v43, v42, v44, v52);
          goto LABEL_17;
        }
      }
    }

    v16 = v8;
    v0 = v53;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v8 >= v4)
      {
        goto LABEL_16;
      }

      v17 = *(v2 + 8 * v8);
      ++v16;
      if (v17)
      {
        v56 = (v17 - 1) & v17;
        v15 = __clz(__rbit64(v17)) | (v8 << 6);
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_31:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v39 = *(v0 + 16);
  v40 = swift_slowAlloc();
  v25 = sub_10037984C(v40, v4, v2, sub_100346658, 0);

  if (!v39)
  {
LABEL_17:
    if (qword_1005A84C8 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    sub_10000A6F0(v26, qword_1005E0B28);
    swift_bridgeObjectRetain_n();

    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = v0;
      v30 = *(v0 + 11);
      v31 = swift_slowAlloc();
      *v31 = 134218496;
      if ((v30 & 0xC000000000000001) != 0)
      {
        v32 = __CocoaSet.count.getter();
      }

      else
      {
        v32 = *(*(v29 + 11) + 16);
      }

      v33 = *(v29 + 15);

      *(v31 + 4) = v32;

      *(v31 + 12) = 2048;
      v34 = *(v25 + 16);

      *(v31 + 14) = v34;

      *(v31 + 22) = 2048;
      if (v33 >> 62)
      {
        v35 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v35 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v0 = v53;

      *(v31 + 24) = v35;

      _os_log_impl(&_mh_execute_header, v27, v28, "All XPC sessions: %ld. Background sessions %ld. Active sessions: %ld", v31, 0x20u);
    }

    else
    {
      swift_bridgeObjectRelease_n();

      swift_bridgeObjectRelease_n();
    }

    v36 = *(v0 + 1);
    v37 = *(v0 + 15);

    return v36(v37);
  }

  return result;
}

uint64_t sub_100346658()
{
  v0 = type metadata accessor for ClientID.ConnectionType();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = v10 - v5;
  ClientID.connectionType.getter();
  (*(v1 + 104))(v4, enum case for ClientID.ConnectionType.background(_:), v0);
  v7 = static ClientID.ConnectionType.== infix(_:_:)();
  v8 = *(v1 + 8);
  v8(v4, v0);
  v8(v6, v0);
  return v7 & 1;
}

uint64_t sub_1003467A4(uint64_t a1)
{
  v4 = *v2;

  if (v1)
  {
  }

  else
  {
    v6 = *(v4 + 40);

    *(v4 + 80) = a1;

    return _swift_task_switch(sub_100346910, v6, 0);
  }
}

uint64_t sub_100346910()
{
  v1 = v0[10];
  if (qword_1005A84C8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A6F0(v2, qword_1005E0B28);
  swift_bridgeObjectRetain_n();

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[8];
  if (v5)
  {
    v7 = swift_slowAlloc();
    *v7 = 134218240;
    if ((v6 & 0xC000000000000001) != 0)
    {
      v8 = __CocoaSet.count.getter();
    }

    else
    {
      v8 = *(v0[8] + 16);
    }

    *(v7 + 4) = v8;

    *(v7 + 12) = 2048;
    if (v1 >> 62)
    {
      v9 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v9 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v7 + 14) = v9;

    _os_log_impl(&_mh_execute_header, v3, v4, "All XPC sessions: %ld. Active stewie sessions: %ld", v7, 0x16u);
  }

  else
  {
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
  }

  v10 = v0[1];

  return v10(v1);
}