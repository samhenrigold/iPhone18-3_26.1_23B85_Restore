uint64_t sub_100685140(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 48) = a2;
  *(v4 + 56) = v3;
  *(v4 + 34) = a3;
  *(v4 + 40) = a1;
  v5 = type metadata accessor for Connection.TransactionMode();
  *(v4 + 64) = v5;
  *(v4 + 72) = *(v5 - 8);
  *(v4 + 80) = swift_task_alloc();
  v6 = sub_1000BC4D4(&qword_101699D08, &unk_1013D7C10);
  *(v4 + 88) = v6;
  *(v4 + 96) = *(v6 - 8);
  *(v4 + 104) = swift_task_alloc();
  *(v4 + 112) = swift_task_alloc();
  *(v4 + 120) = swift_task_alloc();
  *(v4 + 128) = swift_task_alloc();
  v7 = type metadata accessor for Table();
  *(v4 + 136) = v7;
  *(v4 + 144) = *(v7 - 8);
  *(v4 + 152) = swift_task_alloc();
  *(v4 + 160) = swift_task_alloc();

  return _swift_task_switch(sub_1006852FC, v3, 0);
}

uint64_t sub_1006852FC()
{
  v1 = *(*(v0 + 56) + 112);
  if (v1)
  {

    v2 = sub_100218230();
    if (v2)
    {
      v3 = v2;
      (*(*(v0 + 144) + 16))(*(v0 + 160), v1 + OBJC_IVAR____TtC12searchpartyd22ItemSharingKeyDatabase_nearOwnerKeys, *(v0 + 136));
      if (qword_101694588 != -1)
      {
        swift_once();
      }

      v37 = (v0 + 16);
      v4 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
      sub_1000076D4(v4, qword_10177A930);
      type metadata accessor for UUID();
      == infix<A>(_:_:)();
      if (qword_101694590 != -1)
      {
        swift_once();
      }

      v38 = v3;
      v5 = *(v0 + 112);
      v6 = *(v0 + 96);
      v7 = *(v0 + 104);
      v8 = *(v0 + 88);
      sub_1000076D4(v4, qword_10177A948);
      == infix<A>(_:_:)();
      && infix(_:_:)();
      v9 = *(v6 + 8);
      v9(v7, v8);
      v9(v5, v8);
      if (qword_1016945A0 != -1)
      {
        swift_once();
      }

      v34 = *(v0 + 152);
      v10 = *(v0 + 128);
      v11 = *(v0 + 112);
      v12 = *(v0 + 120);
      v13 = *(v0 + 88);
      v14 = *(v0 + 72);
      v35 = *(v0 + 80);
      v36 = *(v0 + 64);
      v15 = *(v0 + 34);
      v16 = sub_1000BC4D4(&qword_101699DA0, &unk_10139D120);
      sub_1000076D4(v16, qword_10177A978);
      *(v0 + 33) = v15 & 1;
      sub_100028088();
      == infix<A>(_:_:)();
      && infix(_:_:)();
      v9(v11, v13);
      v9(v12, v13);
      QueryType.filter(_:)();
      v9(v10, v13);
      *v37 = 0;
      *(v0 + 24) = 0;
      *(v0 + 32) = 1;
      v17 = swift_task_alloc();
      v17[2] = v38;
      v17[3] = v34;
      v17[4] = v37;
      (*(v14 + 104))(v35, enum case for Connection.TransactionMode.deferred(_:), v36);
      Connection.transaction(_:block:)();
      v18 = *(v0 + 152);
      v19 = *(v0 + 160);
      v20 = *(v0 + 136);
      v21 = *(v0 + 144);
      v26 = *(v0 + 72);
      v27 = *(v0 + 80);
      v28 = *(v0 + 64);

      (*(v26 + 8))(v27, v28);
      v29 = *(v21 + 8);
      v29(v19, v20);

      v30 = *(v0 + 16);
      v31 = *(v0 + 24);
      v32 = *(v0 + 32);
      v29(v18, v20);

      v33 = *(v0 + 8);

      return v33(v30, v31, v32);
    }

    sub_10020223C();
    swift_allocError();
    *v23 = 2;
    *(v23 + 4) = 1;
    swift_willThrow();
  }

  else
  {
    sub_10020223C();
    swift_allocError();
    *v22 = 2;
    *(v22 + 4) = 1;
    swift_willThrow();
  }

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_1006858D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[15] = a5;
  v6[16] = v5;
  v6[13] = a3;
  v6[14] = a4;
  v6[11] = a1;
  v6[12] = a2;
  v7 = sub_1000BC4D4(&qword_101699D08, &unk_1013D7C10);
  v6[17] = v7;
  v6[18] = *(v7 - 8);
  v6[19] = swift_task_alloc();
  v6[20] = swift_task_alloc();
  v6[21] = swift_task_alloc();
  v6[22] = swift_task_alloc();
  v6[23] = swift_task_alloc();
  v8 = type metadata accessor for Table();
  v6[24] = v8;
  v6[25] = *(v8 - 8);
  v6[26] = swift_task_alloc();

  return _swift_task_switch(sub_100685A30, v5, 0);
}

uint64_t sub_100685A30()
{
  if (*(*(v0 + 128) + 112))
  {
    v2 = *(v0 + 112);
    v1 = *(v0 + 120);

    v3 = sub_10002BD40(v2, v1);
    if (qword_101694588 != -1)
    {
      v30 = v3;
      swift_once();
      v3 = v30;
    }

    v4 = v3 & 1;
    v5 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
    sub_1000076D4(v5, qword_10177A930);
    type metadata accessor for UUID();
    == infix<A>(_:_:)();
    if (qword_101694590 != -1)
    {
      swift_once();
    }

    v6 = *(v0 + 160);
    v8 = *(v0 + 144);
    v7 = *(v0 + 152);
    v9 = *(v0 + 136);
    sub_1000076D4(v5, qword_10177A948);
    == infix<A>(_:_:)();
    && infix(_:_:)();
    v10 = *(v8 + 8);
    v10(v7, v9);
    v10(v6, v9);
    if (qword_1016945A0 != -1)
    {
      swift_once();
    }

    v11 = *(v0 + 168);
    v12 = *(v0 + 160);
    v13 = *(v0 + 136);
    v14 = sub_1000BC4D4(&qword_101699DA0, &unk_10139D120);
    sub_1000076D4(v14, qword_10177A978);
    *(v0 + 216) = v4;
    sub_100028088();
    == infix<A>(_:_:)();
    && infix(_:_:)();
    v10(v12, v13);
    v10(v11, v13);
    if (qword_101694598 != -1)
    {
      swift_once();
    }

    v32 = *(v0 + 208);
    v33 = *(v0 + 200);
    v15 = *(v0 + 184);
    v31 = *(v0 + 192);
    v17 = *(v0 + 168);
    v16 = *(v0 + 176);
    v18 = *(v0 + 136);
    v19 = sub_1000BC4D4(&qword_101699DE8, &qword_101393120);
    sub_1000076D4(v19, qword_10177A960);
    dispatch thunk of RawRepresentable.rawValue.getter();
    *(v0 + 80) = *(v0 + 72);
    sub_100029580();
    == infix<A>(_:_:)();
    && infix(_:_:)();
    v10(v17, v18);
    v10(v16, v18);
    QueryType.filter(_:)();
    v10(v15, v18);
    *(v0 + 40) = v31;
    *(v0 + 48) = &protocol witness table for Table;
    v20 = sub_1000280DC((v0 + 16));
    (*(v33 + 16))(v20, v32, v31);
    sub_100686ED8(v0 + 16, &qword_1016A77C0, &qword_1013B6418, sub_100693110);
    v22 = *(v0 + 200);
    v21 = *(v0 + 208);
    v23 = *(v0 + 192);
    sub_100007BAC((v0 + 16));
    dispatch thunk of _AnySequenceBox._makeIterator()();

    dispatch thunk of _AnyIteratorBoxBase.next()();

    (*(v22 + 8))(v21, v23);
    v27 = *(v0 + 56);
    v28 = *(v0 + 64);

    v29 = *(v0 + 8);

    return v29(v27, v28);
  }

  else
  {
    sub_10020223C();
    swift_allocError();
    *v24 = 2;
    *(v24 + 4) = 1;
    swift_willThrow();

    v25 = *(v0 + 8);

    return v25();
  }
}

uint64_t sub_100686048(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 72) = a2;
  *(v4 + 80) = v3;
  *(v4 + 177) = a3;
  *(v4 + 64) = a1;
  v5 = sub_1000BC4D4(&qword_101699D08, &unk_1013D7C10);
  *(v4 + 88) = v5;
  *(v4 + 96) = *(v5 - 8);
  *(v4 + 104) = swift_task_alloc();
  *(v4 + 112) = swift_task_alloc();
  *(v4 + 120) = swift_task_alloc();
  *(v4 + 128) = swift_task_alloc();
  v6 = type metadata accessor for Table();
  *(v4 + 136) = v6;
  *(v4 + 144) = *(v6 - 8);
  *(v4 + 152) = swift_task_alloc();
  *(v4 + 160) = swift_task_alloc();
  *(v4 + 168) = swift_task_alloc();

  return _swift_task_switch(sub_1006861B4, v3, 0);
}

uint64_t sub_1006861B4()
{
  if (*(*(v0 + 80) + 112))
  {

    if (sub_100218230())
    {
      if (qword_101694588 != -1)
      {
        swift_once();
      }

      v1 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
      sub_1000076D4(v1, qword_10177A930);
      type metadata accessor for UUID();
      == infix<A>(_:_:)();
      if (qword_101694590 != -1)
      {
        swift_once();
      }

      v2 = *(v0 + 112);
      v3 = *(v0 + 96);
      v4 = *(v0 + 104);
      v5 = *(v0 + 88);
      sub_1000076D4(v1, qword_10177A948);
      == infix<A>(_:_:)();
      && infix(_:_:)();
      v6 = *(v3 + 8);
      v6(v4, v5);
      v6(v2, v5);
      if (qword_1016945A0 != -1)
      {
        swift_once();
      }

      v7 = *(v0 + 128);
      v9 = *(v0 + 112);
      v8 = *(v0 + 120);
      v10 = *(v0 + 88);
      v11 = *(v0 + 177);
      v12 = sub_1000BC4D4(&qword_101699DA0, &unk_10139D120);
      sub_1000076D4(v12, qword_10177A978);
      *(v0 + 176) = v11 & 1;
      sub_100028088();
      == infix<A>(_:_:)();
      && infix(_:_:)();
      v6(v9, v10);
      v6(v8, v10);
      QueryType.filter(_:)();
      v6(v7, v10);
      sub_1000BC4D4(&qword_101699D90, &unk_1013930F0);
      *(swift_allocObject() + 16) = xmmword_101385D80;
      if (qword_101694598 != -1)
      {
        swift_once();
      }

      v13 = *(v0 + 160);
      v29 = *(v0 + 168);
      v14 = *(v0 + 144);
      v15 = *(v0 + 152);
      v16 = *(v0 + 136);
      v17 = sub_1000BC4D4(&qword_101699DE8, &qword_101393120);
      sub_1000076D4(v17, qword_10177A960);
      sub_1000041A4(&qword_10169DDA0, &qword_101699DE8, &qword_101393120, &protocol conformance descriptor for Expression<A>);
      ExpressionType.desc.getter();
      QueryType.order(_:)();

      v18 = *(v14 + 8);
      v18(v15, v16);
      QueryType.limit(_:)();
      v18(v13, v16);
      *(v0 + 40) = v16;
      *(v0 + 48) = &protocol witness table for Table;
      v19 = sub_1000280DC((v0 + 16));
      (*(v14 + 16))(v19, v29, v16);
      Connection.prepare(_:)();
      sub_100007BAC((v0 + 16));
      v24 = dispatch thunk of _AnySequenceBox._map<A>(_:)();

      if (v24[2])
      {
        v28 = v24[5];
        v30 = v24[4];
        sub_100017D5C(v30, v28);
      }

      else
      {
        v28 = 0xF000000000000000;
        v30 = 0;
      }

      v25 = *(v0 + 168);
      v26 = *(v0 + 136);

      v18(v25, v26);

      v27 = *(v0 + 8);

      return v27(v30, v28);
    }

    sub_10020223C();
    swift_allocError();
    *v21 = 2;
    *(v21 + 4) = 1;
    swift_willThrow();
  }

  else
  {
    sub_10020223C();
    swift_allocError();
    *v20 = 2;
    *(v20 + 4) = 1;
    swift_willThrow();
  }

  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_1006868C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[12] = a3;
  v4[13] = v3;
  v4[10] = a1;
  v4[11] = a2;
  v5 = sub_1000BC4D4(&qword_101699D08, &unk_1013D7C10);
  v4[14] = v5;
  v4[15] = *(v5 - 8);
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();
  v6 = type metadata accessor for Table();
  v4[20] = v6;
  v4[21] = *(v6 - 8);
  v4[22] = swift_task_alloc();

  return _swift_task_switch(sub_100686A14, v3, 0);
}

uint64_t sub_100686A14()
{
  if (*(v0[13] + 112))
  {
    v1 = qword_101694588;

    if (v1 != -1)
    {
      swift_once();
    }

    v2 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
    sub_1000076D4(v2, qword_10177A930);
    type metadata accessor for UUID();
    == infix<A>(_:_:)();
    if (qword_101694590 != -1)
    {
      swift_once();
    }

    v3 = v0[17];
    v4 = v0[15];
    v5 = v0[16];
    v6 = v0[14];
    sub_1000076D4(v2, qword_10177A948);
    == infix<A>(_:_:)();
    && infix(_:_:)();
    v7 = *(v4 + 8);
    v7(v5, v6);
    v7(v3, v6);
    if (qword_101694598 != -1)
    {
      swift_once();
    }

    v25 = v0[22];
    v26 = v0[21];
    v9 = v0[19];
    v8 = v0[20];
    v11 = v0[17];
    v10 = v0[18];
    v12 = v0[14];
    v13 = v0[12];
    v14 = sub_1000BC4D4(&qword_101699DE8, &qword_101393120);
    sub_1000076D4(v14, qword_10177A960);
    v0[9] = v13;
    sub_100029580();
    == infix<A>(_:_:)();
    && infix(_:_:)();
    v7(v11, v12);
    v7(v10, v12);
    QueryType.filter(_:)();
    v7(v9, v12);
    v0[5] = v8;
    v0[6] = &protocol witness table for Table;
    v15 = sub_1000280DC(v0 + 2);
    (*(v26 + 16))(v15, v25, v8);
    sub_100686ED8((v0 + 2), &qword_1016A77D8, &unk_1013B6440, sub_100693134);
    v16 = v0[21];
    v17 = v0[22];
    v18 = v0[20];
    sub_100007BAC(v0 + 2);
    dispatch thunk of _AnySequenceBox._makeIterator()();

    dispatch thunk of _AnyIteratorBoxBase.next()();

    (*(v16 + 8))(v17, v18);
    v23 = v0[7];
    v22 = v0[8];

    v24 = v0[1];

    return v24(v23, v22);
  }

  else
  {
    sub_10020223C();
    swift_allocError();
    *v19 = 2;
    *(v19 + 4) = 1;
    swift_willThrow();

    v20 = v0[1];

    return v20();
  }
}

void *sub_100686ED8(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  if (*(v4 + 112))
  {

    if (sub_100218230())
    {
      v9 = Connection.prepare(_:)();

      if (!v5)
      {
        sub_1000BC4D4(a2, a3);
        result = swift_allocObject();
        result[2] = v9;
        result[3] = a4;
        result[4] = 0;
      }
    }

    else
    {
      sub_10020223C();
      swift_allocError();
      *v12 = 2;
      *(v12 + 4) = 1;
      swift_willThrow();
    }
  }

  else
  {
    sub_10020223C();
    swift_allocError();
    *v11 = 2;
    *(v11 + 4) = 1;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_100687010(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  v4 = type metadata accessor for Connection.TransactionMode();
  v3[8] = v4;
  v3[9] = *(v4 - 8);
  v3[10] = swift_task_alloc();
  v5 = sub_1000BC4D4(&qword_101699D08, &unk_1013D7C10);
  v3[11] = v5;
  v3[12] = *(v5 - 8);
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v6 = type metadata accessor for Table();
  v3[16] = v6;
  v3[17] = *(v6 - 8);
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();

  return _swift_task_switch(sub_1006871BC, v2, 0);
}

uint64_t sub_1006871BC()
{
  v1 = *(*(v0 + 56) + 112);
  if (v1)
  {

    v2 = sub_100218230();
    if (v2)
    {
      v30 = (v0 + 16);
      v32 = v2;
      (*(*(v0 + 136) + 16))(*(v0 + 152), v1 + OBJC_IVAR____TtC12searchpartyd22ItemSharingKeyDatabase_connectionKeys, *(v0 + 128));
      if (qword_101694588 != -1)
      {
        swift_once();
      }

      v27 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
      sub_1000076D4(v27, qword_10177A930);
      type metadata accessor for UUID();
      == infix<A>(_:_:)();
      if (qword_101694590 != -1)
      {
        swift_once();
      }

      v26 = *(v0 + 144);
      v3 = *(v0 + 120);
      v5 = *(v0 + 104);
      v4 = *(v0 + 112);
      v6 = *(v0 + 88);
      v7 = *(v0 + 96);
      v8 = *(v0 + 72);
      v28 = *(v0 + 80);
      v29 = *(v0 + 64);
      sub_1000076D4(v27, qword_10177A948);
      == infix<A>(_:_:)();
      && infix(_:_:)();
      v9 = *(v7 + 8);
      v9(v5, v6);
      v9(v4, v6);
      QueryType.filter(_:)();
      v9(v3, v6);
      *v30 = 0;
      *(v0 + 24) = 0;
      *(v0 + 32) = 1;
      v10 = swift_task_alloc();
      v10[2] = v32;
      v10[3] = v26;
      v10[4] = v30;
      (*(v8 + 104))(v28, enum case for Connection.TransactionMode.deferred(_:), v29);
      Connection.transaction(_:block:)();
      v11 = *(v0 + 144);
      v31 = *(v0 + 152);
      v12 = *(v0 + 128);
      v13 = *(v0 + 136);
      v18 = *(v0 + 72);
      v19 = *(v0 + 80);
      v20 = *(v0 + 64);

      (*(v18 + 8))(v19, v20);
      v21 = *(v13 + 8);
      v21(v31, v12);

      v22 = *(v0 + 16);
      v23 = *(v0 + 24);
      v24 = *(v0 + 32);
      v21(v11, v12);

      v25 = *(v0 + 8);

      return v25(v22, v23, v24);
    }

    sub_10020223C();
    swift_allocError();
    *v15 = 2;
    *(v15 + 4) = 1;
    swift_willThrow();
  }

  else
  {
    sub_10020223C();
    swift_allocError();
    *v14 = 2;
    *(v14 + 4) = 1;
    swift_willThrow();
  }

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_1006876B4(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  v35 = a1;
  v27 = a3;
  v36 = sub_1000BC4D4(&qword_1016A77C8, &qword_1013B6430);
  v39 = *(v36 - 8);
  __chkstk_darwin(v36);
  v5 = &v25 - v4;
  v6 = sub_1000BC4D4(&qword_1016A77D0, &qword_1013B6438);
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v33 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v25 - v10;
  if (qword_101694598 != -1)
  {
    swift_once();
  }

  v12 = sub_1000BC4D4(&qword_101699DE8, &qword_101393120);
  v13 = sub_1000076D4(v12, qword_10177A960);
  v14 = sub_1000041A4(&qword_10169DDA0, &qword_101699DE8, &qword_101393120, &protocol conformance descriptor for Expression<A>);
  sub_100029580();
  v31 = v14;
  v32 = v13;
  ExpressionType<>.min.getter();
  v30 = type metadata accessor for Table();
  SchemaType.select<A>(_:)();
  v15 = *(v39 + 8);
  v39 += 8;
  v28 = a2;
  v29 = v15;
  v15(v5, v36);
  v16 = v34;
  Connection.scalar<A>(_:)();
  v19 = *(v7 + 8);
  v17 = v7 + 8;
  v18 = v19;
  result = v19(v11, v6);
  if (!v16)
  {
    v25 = v37;
    v26 = v38;
    v34 = v17;
    ExpressionType<>.max.getter();
    v21 = v6;
    v22 = v33;
    SchemaType.select<A>(_:)();
    v29(v5, v36);
    Connection.scalar<A>(_:)();
    result = v18(v22, v21);
    if (((v26 | v38) & 1) == 0)
    {
      v23 = v37;
      if (v37 < v25)
      {
        __break(1u);
      }

      else
      {
        v24 = v27;
        *v27 = v25;
        v24[1] = v23;
        *(v24 + 16) = 0;
      }
    }
  }

  return result;
}

uint64_t sub_100687A6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[28] = a3;
  v4[29] = v3;
  v4[26] = a1;
  v4[27] = a2;
  v5 = sub_1000BC4D4(&qword_101699D08, &unk_1013D7C10);
  v4[30] = v5;
  v4[31] = *(v5 - 8);
  v4[32] = swift_task_alloc();
  v4[33] = swift_task_alloc();
  v4[34] = swift_task_alloc();
  v6 = type metadata accessor for Table();
  v4[35] = v6;
  v4[36] = *(v6 - 8);
  v4[37] = swift_task_alloc();
  v4[38] = swift_task_alloc();
  v4[39] = swift_task_alloc();

  return _swift_task_switch(sub_100687BC8, v3, 0);
}

uint64_t sub_100687BC8()
{
  v1 = *(*(v0 + 232) + 112);
  if (!v1)
  {
    sub_10020223C();
    swift_allocError();
    *v12 = 2;
    *(v12 + 4) = 1;
    swift_willThrow();
LABEL_10:

    v14 = *(v0 + 8);
    goto LABEL_11;
  }

  if (!sub_100218230())
  {
    sub_10020223C();
    swift_allocError();
    *v13 = 2;
    *(v13 + 4) = 1;
    swift_willThrow();

    goto LABEL_10;
  }

  v27 = *(*(v0 + 288) + 16);
  v27(*(v0 + 312), v1 + OBJC_IVAR____TtC12searchpartyd22ItemSharingKeyDatabase_beaconAttributes, *(v0 + 280));
  if (qword_101694588 != -1)
  {
    swift_once();
  }

  v23 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
  sub_1000076D4(v23, qword_10177A930);
  type metadata accessor for UUID();
  == infix<A>(_:_:)();
  if (qword_101694590 != -1)
  {
    swift_once();
  }

  v25 = *(v0 + 304);
  v2 = *(v0 + 296);
  v31 = *(v0 + 288);
  v4 = *(v0 + 272);
  v3 = *(v0 + 280);
  v5 = *(v0 + 256);
  v6 = *(v0 + 264);
  v7 = *(v0 + 240);
  v8 = *(v0 + 248);
  sub_1000076D4(v23, qword_10177A948);
  == infix<A>(_:_:)();
  && infix(_:_:)();
  v9 = *(v8 + 8);
  v9(v5, v7);
  v9(v6, v7);
  QueryType.filter(_:)();
  v9(v4, v7);
  QueryType.limit(_:)();
  v10 = *(v31 + 8);
  v10(v2, v3);
  *(v0 + 184) = v3;
  *(v0 + 192) = &protocol witness table for Table;
  v11 = sub_1000280DC((v0 + 160));
  v27(v11, v25, v3);
  Connection.prepare(_:)();
  sub_100007BAC((v0 + 160));
  v16 = dispatch thunk of _AnySequenceBox._map<A>(_:)();

  if (*(v16 + 16))
  {
    *(v0 + 16) = *(v16 + 32);
    v17 = *(v16 + 48);
    v18 = *(v16 + 64);
    v19 = *(v16 + 80);
    *(v0 + 80) = *(v16 + 96);
    *(v0 + 48) = v18;
    *(v0 + 64) = v19;
    *(v0 + 32) = v17;
    sub_1002497B8(v0 + 16, v0 + 88);

    v28 = *(v0 + 32);
    v29 = *(v0 + 16);
    v24 = *(v0 + 64);
    v26 = *(v0 + 48);
    v30 = *(v0 + 80);
  }

  else
  {

    v30 = 0;
    v28 = 0u;
    v29 = 0u;
    v24 = 0u;
    v26 = 0u;
  }

  v20 = *(v0 + 312);
  v21 = *(v0 + 280);
  v22 = *(v0 + 208);
  v10(*(v0 + 304), v21);
  v10(v20, v21);
  *v22 = v29;
  *(v22 + 16) = v28;
  *(v22 + 32) = v26;
  *(v22 + 48) = v24;
  *(v22 + 64) = v30;

  v14 = *(v0 + 8);
LABEL_11:

  return v14();
}

uint64_t sub_10068818C(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v3 = sub_1000BC4D4(&qword_101699D08, &unk_1013D7C10);
  v2[10] = v3;
  v2[11] = *(v3 - 8);
  v2[12] = swift_task_alloc();
  v4 = type metadata accessor for Table();
  v2[13] = v4;
  v2[14] = *(v4 - 8);
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();

  return _swift_task_switch(sub_1006882C0, v1, 0);
}

uint64_t sub_1006882C0()
{
  v1 = *(v0[9] + 112);
  if (v1)
  {

    if (sub_100218230())
    {
      v21 = *(v0[14] + 16);
      v21(v0[16], v1 + OBJC_IVAR____TtC12searchpartyd22ItemSharingKeyDatabase_beaconAttributes, v0[13]);
      if (qword_101694588 != -1)
      {
        swift_once();
      }

      v2 = v0[15];
      v4 = v0[12];
      v3 = v0[13];
      v5 = v0[11];
      v20 = v0[10];
      v6 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
      sub_1000076D4(v6, qword_10177A930);
      type metadata accessor for UUID();
      == infix<A>(_:_:)();
      QueryType.filter(_:)();
      (*(v5 + 8))(v4, v20);
      v0[5] = v3;
      v0[6] = &protocol witness table for Table;
      v7 = sub_1000280DC(v0 + 2);
      v21(v7, v2, v3);
      Connection.prepare(_:)();
      sub_100007BAC(v0 + 2);
      sub_1000BC4D4(&qword_101697708, &qword_10138C3C0);
      v10 = dispatch thunk of _AnySequenceBox._map<A>(_:)();
      v12 = v0[15];
      v11 = v0[16];
      v14 = v0[13];
      v13 = v0[14];
      v17 = v10;

      v18 = *(v13 + 8);
      v18(v12, v14);
      v18(v11, v14);

      v19 = v0[1];

      return v19(v17);
    }

    sub_10020223C();
    swift_allocError();
    *v9 = 2;
    *(v9 + 4) = 1;
    swift_willThrow();
  }

  else
  {
    sub_10020223C();
    swift_allocError();
    *v8 = 2;
    *(v8 + 4) = 1;
    swift_willThrow();
  }

  v15 = v0[1];

  return v15();
}

uint64_t sub_1006886F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = type metadata accessor for Connection.TransactionMode();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  v6 = type metadata accessor for Table();
  v4[9] = v6;
  v4[10] = *(v6 - 8);
  v4[11] = swift_task_alloc();

  return _swift_task_switch(sub_100688810, v3, 0);
}

uint64_t sub_100688810()
{
  v1 = *(*(v0 + 40) + 112);
  if (v1)
  {

    v2 = sub_1002072CC();
    if (v2)
    {
      v3 = v2;
      v5 = *(v0 + 80);
      v4 = *(v0 + 88);
      v6 = *(v0 + 64);
      v16 = *(v0 + 72);
      v7 = *(v0 + 48);
      v8 = *(v0 + 56);
      v9 = *(v0 + 16);
      v15 = *(v0 + 24);
      (*(v5 + 16))(v4, v1 + OBJC_IVAR____TtC12searchpartyd22ItemSharingKeyDatabase_beaconAttributes);
      v10 = swift_task_alloc();
      *(v10 + 16) = v4;
      *(v10 + 24) = vextq_s8(v15, v15, 8uLL);
      *(v10 + 40) = v9;
      *(v10 + 48) = v3;
      (*(v8 + 104))(v6, enum case for Connection.TransactionMode.deferred(_:), v7);
      Connection.transaction(_:block:)();
      (*(v8 + 8))(v6, v7);

      (*(v5 + 8))(v4, v16);

      v11 = *(v0 + 8);
      goto LABEL_7;
    }

    sub_10020223C();
    swift_allocError();
    *v13 = 2;
    *(v13 + 4) = 1;
    swift_willThrow();
  }

  else
  {
    sub_10020223C();
    swift_allocError();
    *v12 = 2;
    *(v12 + 4) = 1;
    swift_willThrow();
  }

  v11 = *(v0 + 8);
LABEL_7:

  return v11();
}

uint64_t sub_100688A64(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, uint64_t a5)
{
  v29 = a5;
  v25 = a1;
  v6 = type metadata accessor for OnConflict();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for Insert();
  v26 = *(v28 - 8);
  __chkstk_darwin(v28);
  v22 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = v9;
  v24 = v7;
  v11 = *(v7 + 104);
  v27 = v6;
  v11(v9, enum case for OnConflict.replace(_:), v6);
  sub_1000BC4D4(&qword_101699D48, &unk_1013B6E00);
  type metadata accessor for Setter();
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1013B62D0;
  v21[1] = v12;
  if (qword_101694588 != -1)
  {
    swift_once();
  }

  v13 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
  sub_1000076D4(v13, qword_10177A930);
  type metadata accessor for UUID();
  <- infix<A>(_:_:)();
  if (qword_101694590 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v13, qword_10177A948);
  <- infix<A>(_:_:)();
  if (qword_1016945C0 != -1)
  {
    swift_once();
  }

  v14 = sub_1000BC4D4(&qword_10169DE00, &unk_10139D160);
  sub_1000076D4(v14, qword_10177A9D8);
  v35 = *a4;
  v31 = *a4;

  <- infix<A>(_:_:)();
  sub_1002FFC04(&v35);
  if (qword_1016945C8 != -1)
  {
    swift_once();
  }

  v15 = sub_1000BC4D4(&qword_101699E88, &unk_10139D170);
  sub_1000076D4(v15, qword_10177A9F0);
  *&v31 = *(a4 + 2);
  <- infix<A>(_:_:)();
  if (qword_1016945D0 != -1)
  {
    swift_once();
  }

  v16 = sub_1000BC4D4(&qword_10169DDE0, &unk_1013B6420);
  sub_1000076D4(v16, qword_10177AA08);
  v34 = *(a4 + 24);
  v31 = *(a4 + 24);
  sub_1000D2A70(&v34, v30, &qword_1016A0AC0, &unk_1013926A0);
  <- infix<A>(_:_:)();
  sub_10000B3A8(&v34, &qword_1016A0AC0, &unk_1013926A0);
  if (qword_1016945D8 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v14, qword_10177AA20);
  v33 = *(a4 + 40);
  v31 = *(a4 + 40);

  <- infix<A>(_:_:)();
  sub_1002FFC04(&v33);
  if (qword_1016945E0 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v16, qword_10177AA38);
  v31 = *(a4 + 56);
  v32 = v31;
  sub_1000D2A70(&v32, v30, &qword_1016A0AC0, &unk_1013926A0);
  <- infix<A>(_:_:)();
  sub_10000B3A8(&v32, &qword_1016A0AC0, &unk_1013926A0);
  if (qword_1016945E8 != -1)
  {
    swift_once();
  }

  v17 = sub_1000BC4D4(&qword_101699EA8, &unk_101393170);
  sub_1000076D4(v17, qword_10177AA50);
  LOBYTE(v31) = 2;
  <- infix<A>(_:_:)();
  type metadata accessor for Table();
  v19 = v22;
  v18 = v23;
  QueryType.insert(or:_:)();

  (*(v24 + 8))(v18, v27);
  Connection.run(_:)();
  return (*(v26 + 8))(v19, v28);
}

uint64_t sub_100689160(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for Connection.TransactionMode();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v5 = type metadata accessor for Table();
  v3[8] = v5;
  v3[9] = *(v5 - 8);
  v3[10] = swift_task_alloc();

  return _swift_task_switch(sub_100689280, v2, 0);
}

uint64_t sub_100689280()
{
  v1 = *(*(v0 + 32) + 112);
  if (v1)
  {

    v2 = sub_1002072CC();
    if (v2)
    {
      v3 = v2;
      v5 = *(v0 + 72);
      v4 = *(v0 + 80);
      v6 = *(v0 + 56);
      v15 = *(v0 + 64);
      v8 = *(v0 + 40);
      v7 = *(v0 + 48);
      v14 = *(v0 + 16);
      (*(v5 + 16))(v4, v1 + OBJC_IVAR____TtC12searchpartyd22ItemSharingKeyDatabase_beaconAttributes);
      v9 = swift_task_alloc();
      *(v9 + 16) = v4;
      *(v9 + 24) = vextq_s8(v14, v14, 8uLL);
      *(v9 + 40) = v3;
      (*(v7 + 104))(v6, enum case for Connection.TransactionMode.deferred(_:), v8);
      Connection.transaction(_:block:)();
      (*(v7 + 8))(v6, v8);

      (*(v5 + 8))(v4, v15);

      v10 = *(v0 + 8);
      goto LABEL_7;
    }

    sub_10020223C();
    swift_allocError();
    *v12 = 2;
    *(v12 + 4) = 1;
    swift_willThrow();
  }

  else
  {
    sub_10020223C();
    swift_allocError();
    *v11 = 2;
    *(v11 + 4) = 1;
    swift_willThrow();
  }

  v10 = *(v0 + 8);
LABEL_7:

  return v10();
}

uint64_t sub_1006894CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a4;
  v25[1] = a2;
  v25[2] = a3;
  v27 = a1;
  v32 = type metadata accessor for Connection.TransactionMode();
  v31 = *(v32 - 8);
  __chkstk_darwin(v32);
  v29 = v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000BC4D4(&qword_101699D08, &unk_1013D7C10);
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = v25 - v11;
  __chkstk_darwin(v10);
  v14 = v25 - v13;
  v28 = type metadata accessor for Table();
  v26 = *(v28 - 8);
  __chkstk_darwin(v28);
  v16 = v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_101694588 != -1)
  {
    swift_once();
  }

  v17 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
  sub_1000076D4(v17, qword_10177A930);
  type metadata accessor for UUID();
  == infix<A>(_:_:)();
  if (qword_101694590 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v17, qword_10177A948);
  == infix<A>(_:_:)();
  && infix(_:_:)();
  v18 = *(v6 + 8);
  v18(v9, v5);
  v18(v12, v5);
  v19 = v28;
  QueryType.filter(_:)();
  v20 = (v18)(v14, v5);
  __chkstk_darwin(v20);
  v21 = v29;
  v25[-2] = v30;
  v25[-1] = v16;
  v22 = v31;
  v23 = v32;
  (*(v31 + 104))(v21, enum case for Connection.TransactionMode.deferred(_:), v32);
  Connection.transaction(_:block:)();
  (*(v22 + 8))(v21, v23);
  return (*(v26 + 8))(v16, v19);
}

uint64_t sub_1006898E8()
{
  v0 = type metadata accessor for Delete();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Table();
  QueryType.delete()();
  Connection.run(_:)();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_1006899E4(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  v4 = type metadata accessor for DelegatedBeaconLostDates(0);
  v3[11] = v4;
  v3[12] = *(v4 - 8);
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v5 = sub_1000BC4D4(&qword_101699D08, &unk_1013D7C10);
  v3[15] = v5;
  v3[16] = *(v5 - 8);
  v3[17] = swift_task_alloc();
  v6 = type metadata accessor for Table();
  v3[18] = v6;
  v3[19] = *(v6 - 8);
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();

  return _swift_task_switch(sub_100689B90, v2, 0);
}

uint64_t sub_100689B90()
{
  v1 = *(v0[10] + 112);
  if (!v1)
  {
    sub_10020223C();
    swift_allocError();
    *v9 = 2;
    *(v9 + 4) = 1;
    swift_willThrow();
LABEL_8:

    v11 = v0[1];
    goto LABEL_9;
  }

  if (!sub_100218230())
  {
    sub_10020223C();
    swift_allocError();
    *v10 = 2;
    *(v10 + 4) = 1;
    swift_willThrow();

    goto LABEL_8;
  }

  v27 = *(v0[19] + 16);
  v27(v0[22], v1 + OBJC_IVAR____TtC12searchpartyd22ItemSharingKeyDatabase_lostItemDates, v0[18]);
  if (qword_101694590 != -1)
  {
    swift_once();
  }

  v2 = v0[20];
  v24 = v0[19];
  v25 = v0[21];
  v4 = v0[17];
  v3 = v0[18];
  v5 = v0[16];
  v23 = v0[15];
  v6 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
  sub_1000076D4(v6, qword_10177A948);
  type metadata accessor for UUID();
  == infix<A>(_:_:)();
  QueryType.filter(_:)();
  (*(v5 + 8))(v4, v23);
  QueryType.limit(_:)();
  v7 = *(v24 + 8);
  v7(v2, v3);
  v0[5] = v3;
  v0[6] = &protocol witness table for Table;
  v8 = sub_1000280DC(v0 + 2);
  v27(v8, v25, v3);
  Connection.prepare(_:)();
  sub_100007BAC(v0 + 2);
  v13 = dispatch thunk of _AnySequenceBox._map<A>(_:)();

  v15 = v0[21];
  v14 = v0[22];
  v16 = v0[18];
  if (*(v13 + 16))
  {
    v18 = v0[13];
    v17 = v0[14];
    v26 = v0[8];
    v28 = v0[11];
    v19 = *(v0[12] + 80);
    sub_100694B20(v13 + ((v19 + 32) & ~v19), v18, type metadata accessor for DelegatedBeaconLostDates);

    v7(v15, v16);
    v7(v14, v16);
    sub_100694B88(v18, v17);
    sub_1000D2A70(v17, v26, &unk_101696900, &unk_10138B1E0);
    v20 = *(v28 + 24);
    started = type metadata accessor for DelegatedBeaconStartReunitedDates(0);
    sub_1000D2A70(v17 + v20, v26 + *(started + 20), &unk_101696900, &unk_10138B1E0);
    sub_100694BEC(v17, type metadata accessor for DelegatedBeaconLostDates);
    v22 = 0;
  }

  else
  {

    v7(v15, v16);
    v7(v14, v16);
    started = type metadata accessor for DelegatedBeaconStartReunitedDates(0);
    v22 = 1;
  }

  (*(*(started - 8) + 56))(v0[8], v22, 1, started);

  v11 = v0[1];
LABEL_9:

  return v11();
}

uint64_t sub_10068A150(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  v4 = sub_1000BC4D4(&qword_101699D08, &unk_1013D7C10);
  v3[11] = v4;
  v3[12] = *(v4 - 8);
  v3[13] = swift_task_alloc();
  v5 = type metadata accessor for Table();
  v3[14] = v5;
  v3[15] = *(v5 - 8);
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();

  return _swift_task_switch(sub_10068A294, v2, 0);
}

uint64_t sub_10068A294()
{
  v1 = *(v0[10] + 112);
  if (!v1)
  {
    sub_10020223C();
    swift_allocError();
    *v10 = 2;
    *(v10 + 4) = 1;
    swift_willThrow();
LABEL_8:

    v13 = v0[1];
    goto LABEL_9;
  }

  if (!sub_100218230())
  {
    sub_10020223C();
    swift_allocError();
    *v11 = 2;
    *(v11 + 4) = 1;
    swift_willThrow();

    goto LABEL_8;
  }

  v23 = *(v0[15] + 16);
  v23(v0[18], v1 + OBJC_IVAR____TtC12searchpartyd22ItemSharingKeyDatabase_lostItemDates, v0[14]);
  if (qword_101694590 != -1)
  {
    swift_once();
  }

  v2 = v0[15];
  v3 = v0[16];
  v5 = v0[13];
  v4 = v0[14];
  v6 = v0[12];
  v21 = v0[11];
  v22 = v0[17];
  v7 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
  sub_1000076D4(v7, qword_10177A948);
  type metadata accessor for UUID();
  == infix<A>(_:_:)();
  QueryType.filter(_:)();
  (*(v6 + 8))(v5, v21);
  QueryType.limit(_:)();
  v8 = *(v2 + 8);
  v8(v3, v4);
  v0[5] = v4;
  v0[6] = &protocol witness table for Table;
  v9 = sub_1000280DC(v0 + 2);
  v23(v9, v22, v4);
  Connection.prepare(_:)();
  sub_100007BAC(v0 + 2);
  v12 = type metadata accessor for KeyDropLostItemDates(0);
  v15 = dispatch thunk of _AnySequenceBox._map<A>(_:)();

  v17 = v0[17];
  v16 = v0[18];
  v18 = v0[14];
  if (*(v15 + 16))
  {
    v19 = *(v12 - 8);
    sub_100694B20(v15 + ((*(v19 + 80) + 32) & ~*(v19 + 80)), v0[8], type metadata accessor for KeyDropLostItemDates);

    v8(v17, v18);
    v8(v16, v18);
    v20 = 0;
  }

  else
  {

    v8(v17, v18);
    v8(v16, v18);
    v19 = *(v12 - 8);
    v20 = 1;
  }

  (*(v19 + 56))(v0[8], v20, 1, v12);

  v13 = v0[1];
LABEL_9:

  return v13();
}

uint64_t sub_10068A7D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[3] = a3;
  v4[4] = v3;
  v4[2] = a1;
  v5 = type metadata accessor for Connection.TransactionMode();
  v4[5] = v5;
  v4[6] = *(v5 - 8);
  v4[7] = swift_task_alloc();
  v6 = type metadata accessor for Table();
  v4[8] = v6;
  v4[9] = *(v6 - 8);
  v4[10] = swift_task_alloc();

  return _swift_task_switch(sub_10068A8F8, v3, 0);
}

uint64_t sub_10068A8F8()
{
  v1 = *(*(v0 + 32) + 112);
  if (v1)
  {

    v2 = sub_1002072CC();
    if (v2)
    {
      v3 = v2;
      v5 = *(v0 + 72);
      v4 = *(v0 + 80);
      v6 = *(v0 + 56);
      v15 = *(v0 + 64);
      v8 = *(v0 + 40);
      v7 = *(v0 + 48);
      v14 = *(v0 + 16);
      (*(v5 + 16))(v4, v1 + OBJC_IVAR____TtC12searchpartyd22ItemSharingKeyDatabase_lostItemDates);
      v9 = swift_task_alloc();
      *(v9 + 16) = v4;
      *(v9 + 24) = v14;
      *(v9 + 40) = v3;
      (*(v7 + 104))(v6, enum case for Connection.TransactionMode.deferred(_:), v8);
      Connection.transaction(_:block:)();
      (*(v7 + 8))(v6, v8);

      (*(v5 + 8))(v4, v15);

      v10 = *(v0 + 8);
      goto LABEL_7;
    }

    sub_10020223C();
    swift_allocError();
    *v12 = 2;
    *(v12 + 4) = 1;
    swift_willThrow();
  }

  else
  {
    sub_10020223C();
    swift_allocError();
    *v11 = 2;
    *(v11 + 4) = 1;
    swift_willThrow();
  }

  v10 = *(v0 + 8);
LABEL_7:

  return v10();
}

uint64_t sub_10068AB40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23 = a4;
  v18 = a3;
  v20 = a1;
  v4 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  __chkstk_darwin(v4 - 8);
  v6 = &v17 - v5;
  v7 = type metadata accessor for Insert();
  v21 = *(v7 - 8);
  v22 = v7;
  __chkstk_darwin(v7);
  v19 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000BC4D4(&qword_101699D48, &unk_1013B6E00);
  type metadata accessor for Setter();
  *(swift_allocObject() + 16) = xmmword_10138BBE0;
  if (qword_101694590 != -1)
  {
    swift_once();
  }

  v9 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
  v10 = sub_1000076D4(v9, qword_10177A948);
  type metadata accessor for UUID();
  <- infix<A>(_:_:)();
  if (qword_101694628 != -1)
  {
    swift_once();
  }

  v11 = sub_1000BC4D4(&qword_101699D60, &qword_1013B6DE0);
  sub_1000076D4(v11, qword_10177AB10);
  v12 = type metadata accessor for Date();
  v13 = *(v12 - 8);
  (*(v13 + 16))(v6, v18, v12);
  (*(v13 + 56))(v6, 0, 1, v12);
  <- infix<A>(_:_:)();
  sub_10000B3A8(v6, &unk_101696900, &unk_10138B1E0);
  v24[3] = v9;
  v24[4] = sub_1000041A4(&qword_101699D18, &qword_101699D10, &unk_1013930B0, &protocol conformance descriptor for Expression<A>);
  v14 = sub_1000280DC(v24);
  (*(*(v9 - 8) + 16))(v14, v10, v9);
  type metadata accessor for Table();
  v15 = v19;
  QueryType.upsert(_:onConflictOf:)();

  sub_100007BAC(v24);
  Connection.run(_:)();
  return (*(v21 + 8))(v15, v22);
}

uint64_t sub_10068AF3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[3] = a3;
  v4[4] = v3;
  v4[2] = a1;
  v5 = type metadata accessor for Connection.TransactionMode();
  v4[5] = v5;
  v4[6] = *(v5 - 8);
  v4[7] = swift_task_alloc();
  v6 = type metadata accessor for Table();
  v4[8] = v6;
  v4[9] = *(v6 - 8);
  v4[10] = swift_task_alloc();

  return _swift_task_switch(sub_10068B05C, v3, 0);
}

uint64_t sub_10068B05C()
{
  v1 = *(*(v0 + 32) + 112);
  if (v1)
  {

    v2 = sub_1002072CC();
    if (v2)
    {
      v3 = v2;
      v5 = *(v0 + 72);
      v4 = *(v0 + 80);
      v6 = *(v0 + 56);
      v15 = *(v0 + 64);
      v8 = *(v0 + 40);
      v7 = *(v0 + 48);
      v14 = *(v0 + 16);
      (*(v5 + 16))(v4, v1 + OBJC_IVAR____TtC12searchpartyd22ItemSharingKeyDatabase_lostItemDates);
      v9 = swift_task_alloc();
      *(v9 + 16) = v4;
      *(v9 + 24) = v14;
      *(v9 + 40) = v3;
      (*(v7 + 104))(v6, enum case for Connection.TransactionMode.deferred(_:), v8);
      Connection.transaction(_:block:)();
      (*(v7 + 8))(v6, v8);

      (*(v5 + 8))(v4, v15);

      v10 = *(v0 + 8);
      goto LABEL_7;
    }

    sub_10020223C();
    swift_allocError();
    *v12 = 2;
    *(v12 + 4) = 1;
    swift_willThrow();
  }

  else
  {
    sub_10020223C();
    swift_allocError();
    *v11 = 2;
    *(v11 + 4) = 1;
    swift_willThrow();
  }

  v10 = *(v0 + 8);
LABEL_7:

  return v10();
}

uint64_t sub_10068B2A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15 = a4;
  v13 = a3;
  v14 = a1;
  v18 = type metadata accessor for Insert();
  v16 = *(v18 - 8);
  __chkstk_darwin(v18);
  v12 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000BC4D4(&qword_101699D48, &unk_1013B6E00);
  type metadata accessor for Setter();
  *(swift_allocObject() + 16) = xmmword_10138B360;
  if (qword_101694590 != -1)
  {
    swift_once();
  }

  v5 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
  v6 = sub_1000076D4(v5, qword_10177A948);
  type metadata accessor for UUID();
  <- infix<A>(_:_:)();
  if (qword_101694618 != -1)
  {
    swift_once();
  }

  v7 = sub_1000BC4D4(&qword_101699D60, &qword_1013B6DE0);
  sub_1000076D4(v7, qword_10177AAE0);
  type metadata accessor for Date();
  <- infix<A>(_:_:)();
  if (qword_101694620 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v7, qword_10177AAF8);
  type metadata accessor for KeyDropLostItemDates(0);
  <- infix<A>(_:_:)();
  v17[3] = v5;
  v17[4] = sub_1000041A4(&qword_101699D18, &qword_101699D10, &unk_1013930B0, &protocol conformance descriptor for Expression<A>);
  v8 = sub_1000280DC(v17);
  (*(*(v5 - 8) + 16))(v8, v6, v5);
  type metadata accessor for Table();
  v9 = v12;
  QueryType.upsert(_:onConflictOf:)();

  sub_100007BAC(v17);
  Connection.run(_:)();
  return (*(v16 + 8))(v9, v18);
}

uint64_t sub_10068B650(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v35 = a5;
  v36 = a6;
  v33 = a3;
  v34 = a4;
  v32 = a2;
  v31 = type metadata accessor for Setter();
  v9 = *(v31 - 8);
  __chkstk_darwin(v31);
  v43 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for Insert();
  result = __chkstk_darwin(v30);
  v14 = *(a1 + 16);
  if (v14)
  {
    v28 = (v9 + 8);
    v26 = (v12 + 8);
    v15 = (a1 + 56);
    v27 = xmmword_10138C0D0;
    v25 = v9;
    v29 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
    while (1)
    {
      v37 = *(v15 - 24);
      v16 = *(v15 - 1);
      v38 = *(v15 - 2);
      v39 = *v15;
      v40 = v7;
      sub_100017D5C(v16, v39);
      if (qword_101694590 != -1)
      {
        swift_once();
      }

      v17 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
      sub_1000076D4(v17, qword_10177A948);
      type metadata accessor for UUID();
      <- infix<A>(_:_:)();
      sub_1000BC4D4(&qword_101699D48, &unk_1013B6E00);
      *(swift_allocObject() + 16) = v27;
      if (qword_101694650 != -1)
      {
        swift_once();
      }

      sub_1000076D4(v17, qword_10177AB88);
      <- infix<A>(_:_:)();
      if (qword_101694588 != -1)
      {
        swift_once();
      }

      sub_1000076D4(v17, qword_10177A930);
      <- infix<A>(_:_:)();
      if (qword_1016945A0 != -1)
      {
        swift_once();
      }

      v18 = sub_1000BC4D4(&qword_101699DA0, &unk_10139D120);
      sub_1000076D4(v18, qword_10177A978);
      LOBYTE(v41) = v37;
      sub_100028088();
      <- infix<A>(_:_:)();
      v19 = v39;
      if (qword_101694598 != -1)
      {
        swift_once();
      }

      v20 = sub_1000BC4D4(&qword_101699DE8, &qword_101393120);
      sub_1000076D4(v20, qword_10177A960);
      v41 = v38;
      sub_100029580();
      <- infix<A>(_:_:)();
      if (qword_101694630 != -1)
      {
        swift_once();
      }

      v21 = sub_1000BC4D4(&qword_101699DC0, &unk_10139D110);
      sub_1000076D4(v21, qword_10177AB28);
      v41 = v16;
      v42 = v19;
      sub_100017D5C(v16, v19);
      <- infix<A>(_:_:)();
      sub_100016590(v41, v42);
      type metadata accessor for Table();
      v22 = v29;
      v23 = v43;
      QueryType.insert(_:_:)();

      (*v28)(v23, v31);
      v24 = v40;
      Connection.run(_:)();
      v7 = v24;
      if (v24)
      {
        break;
      }

      v15 += 4;
      (*v26)(v22, v30);
      result = sub_100016590(v16, v19);
      if (!--v14)
      {
        return result;
      }
    }

    (*v26)(v22, v30);
    return sub_100016590(v16, v19);
  }

  return result;
}

uint64_t sub_10068BBC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[10] = a3;
  v4[11] = v3;
  v4[8] = a1;
  v4[9] = a2;
  v5 = type metadata accessor for Connection.TransactionMode();
  v4[12] = v5;
  v4[13] = *(v5 - 8);
  v4[14] = swift_task_alloc();
  v4[15] = sub_1000BC4D4(&qword_1016AF880, &unk_10138CE20);
  v4[16] = swift_task_alloc();
  sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();
  v6 = type metadata accessor for UUID();
  v4[21] = v6;
  v4[22] = *(v6 - 8);
  v4[23] = swift_task_alloc();
  v4[24] = swift_task_alloc();
  v7 = sub_1000BC4D4(&qword_101699D08, &unk_1013D7C10);
  v4[25] = v7;
  v4[26] = *(v7 - 8);
  v4[27] = swift_task_alloc();
  v4[28] = swift_task_alloc();
  v4[29] = swift_task_alloc();
  v8 = type metadata accessor for Table();
  v4[30] = v8;
  v4[31] = *(v8 - 8);
  v4[32] = swift_task_alloc();
  v4[33] = swift_task_alloc();

  return _swift_task_switch(sub_10068BE70, v3, 0);
}

uint64_t sub_10068BE70()
{
  v1 = *(v0[11] + 112);
  if (!v1)
  {
    sub_10020223C();
    swift_allocError();
    *v13 = 2;
    *(v13 + 4) = 1;
    swift_willThrow();
LABEL_10:

    v15 = v0[1];
    goto LABEL_11;
  }

  v2 = sub_1002072CC();
  if (!v2)
  {
    sub_10020223C();
    swift_allocError();
    *v14 = 2;
    *(v14 + 4) = 1;
    swift_willThrow();

    goto LABEL_10;
  }

  v3 = v2;
  v87 = (v0[31] + 16);
  v84 = *v87;
  (*v87)(v0[33], v1 + OBJC_IVAR____TtC12searchpartyd22ItemSharingKeyDatabase_publicKeysSuffix, v0[30]);
  if (qword_101694650 != -1)
  {
    swift_once();
  }

  v86 = v3;
  v4 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
  sub_1000076D4(v4, qword_10177AB88);
  == infix<A>(_:_:)();
  if (qword_101694588 != -1)
  {
    swift_once();
  }

  v83 = v0[32];
  v6 = v0[29];
  v5 = v0[30];
  v90 = v0;
  v7 = v0[28];
  v8 = v0[27];
  v9 = v0[26];
  v10 = v0[25];
  sub_1000076D4(v4, qword_10177A930);
  == infix<A>(_:_:)();
  && infix(_:_:)();
  v11 = *(v9 + 8);
  v11(v8, v10);
  v11(v7, v10);
  QueryType.filter(_:)();
  v11(v6, v10);
  v0[5] = v5;
  v0[6] = &protocol witness table for Table;
  v12 = sub_1000280DC(v0 + 2);
  v84(v12, v83, v5);
  Connection.prepare(_:)();
  sub_100007BAC(v0 + 2);
  v88 = dispatch thunk of _AnySequenceBox._map<A>(_:)();
  v17 = v0[21];
  v18 = v0[22];
  v19 = v0[20];
  v20 = v0[10];

  sub_1000D2A70(v20, v19, &qword_1016980D0, &unk_10138F3B0);
  v21 = *(v18 + 48);
  v22 = v21(v19, 1, v17);
  if (v22 != 1)
  {
    v85 = v21;
    v25 = v0[24];
    v26 = v0[21];
    v27 = v0[22];
    v28 = v0[19];
    v82 = v27[4];
    v82(v25, v0[20], v26);
    v29 = v27[2];
    v29(v28, v25, v26);
    v30 = v27[7];
    v31 = 1;
    v30(v28, 0, 1, v26);
    if (*(v88 + 16))
    {
      v32 = *(v0[22] + 80);
      v29(v0[18], v88 + ((v32 + 32) & ~v32), v0[21]);
      v31 = 0;
    }

    v33 = v0[21];
    v35 = v0[18];
    v34 = v0[19];
    v37 = v0[15];
    v36 = v0[16];

    v30(v35, v31, 1, v33);
    v38 = *(v37 + 48);
    sub_1000D2A70(v34, v36, &qword_1016980D0, &unk_10138F3B0);
    v39 = v38;
    sub_1000D2A70(v35, v36 + v38, &qword_1016980D0, &unk_10138F3B0);
    v40 = v85(v36, 1, v33);
    v41 = v0[21];
    v42 = v0;
    if (v40 == 1)
    {
      v43 = v0[19];
      sub_10000B3A8(v0[18], &qword_1016980D0, &unk_10138F3B0);
      sub_10000B3A8(v43, &qword_1016980D0, &unk_10138F3B0);
      v24 = v86;
      if (v85(v36 + v39, 1, v41) == 1)
      {
        sub_10000B3A8(v0[16], &qword_1016980D0, &unk_10138F3B0);
LABEL_27:
        if (qword_101694780 != -1)
        {
          swift_once();
        }

        v71 = type metadata accessor for Logger();
        sub_1000076D4(v71, qword_10177AE40);
        v72 = Logger.logObject.getter();
        v73 = static os_log_type_t.default.getter();
        v74 = os_log_type_enabled(v72, v73);
        v75 = v90[31];
        v76 = v90[32];
        v77 = v90[30];
        v78 = v90[24];
        v80 = v90[21];
        v79 = v90[22];
        if (v74)
        {
          v81 = swift_slowAlloc();
          *v81 = 0;
          _os_log_impl(&_mh_execute_header, v72, v73, "Suffix keys have current imported beacon entries. Do not delete.", v81, 2u);
        }

        (*(v79 + 8))(v78, v80);
        v63 = *(v75 + 8);
        v63(v76, v77);
        v0 = v90;
        goto LABEL_32;
      }
    }

    else
    {
      sub_1000D2A70(v0[16], v0[17], &qword_1016980D0, &unk_10138F3B0);
      if (v85(v36 + v39, 1, v41) != 1)
      {
        v65 = v0[22];
        v64 = v42[23];
        v66 = v42[21];
        v68 = v42[18];
        v67 = v42[19];
        v69 = v42[17];
        v89 = v42[16];
        v82(v64, v36 + v39, v66);
        sub_1003912E0();
        v70 = dispatch thunk of static Equatable.== infix(_:_:)();
        v50 = *(v65 + 8);
        v50(v64, v66);
        sub_10000B3A8(v68, &qword_1016980D0, &unk_10138F3B0);
        sub_10000B3A8(v67, &qword_1016980D0, &unk_10138F3B0);
        v50(v69, v66);
        sub_10000B3A8(v89, &qword_1016980D0, &unk_10138F3B0);
        v24 = v86;
        if (v70)
        {
          goto LABEL_27;
        }

        v49 = v90;
LABEL_24:
        v50(v49[24], v49[21]);
        v0 = v49;
        goto LABEL_25;
      }

      v44 = v0[21];
      v45 = v0[22];
      v46 = v42[19];
      v47 = v42[17];
      sub_10000B3A8(v42[18], &qword_1016980D0, &unk_10138F3B0);
      sub_10000B3A8(v46, &qword_1016980D0, &unk_10138F3B0);
      (*(v45 + 8))(v47, v44);
      v24 = v86;
    }

    v48 = v42[22];
    sub_10000B3A8(v42[16], &qword_1016AF880, &unk_10138CE20);
    v49 = v42;
    v50 = *(v48 + 8);
    goto LABEL_24;
  }

  v23 = v0[20];

  sub_10000B3A8(v23, &qword_1016980D0, &unk_10138F3B0);
  v24 = v86;
LABEL_25:
  v51 = v0[33];
  v53 = v0[13];
  v52 = v0[14];
  v54 = v0[12];
  v55 = swift_task_alloc();
  v56 = *(v0 + 4);
  *(v55 + 16) = v51;
  *(v55 + 24) = v56;
  *(v55 + 40) = v24;
  (*(v53 + 104))(v52, enum case for Connection.TransactionMode.deferred(_:), v54);
  Connection.transaction(_:block:)();
  v58 = v0[31];
  v57 = v0[32];
  v59 = v0[30];
  v61 = v0[13];
  v60 = v0[14];
  v62 = v0[12];

  (*(v61 + 8))(v60, v62);
  v63 = *(v58 + 8);
  v63(v57, v59);

LABEL_32:
  v63(v0[33], v0[30]);

  v15 = v0[1];
LABEL_11:

  return v15();
}

uint64_t sub_10068C9FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a1;
  v30 = a4;
  v25 = a3;
  v22[1] = a2;
  v28 = sub_1000BC4D4(&qword_101699D08, &unk_1013D7C10);
  v4 = *(v28 - 8);
  v5 = __chkstk_darwin(v28);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = v22 - v9;
  __chkstk_darwin(v8);
  v12 = v22 - v11;
  v26 = type metadata accessor for Table();
  v23 = *(v26 - 8);
  __chkstk_darwin(v26);
  v14 = v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for Delete();
  v24 = *(v27 - 8);
  __chkstk_darwin(v27);
  v16 = v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_101694650 != -1)
  {
    swift_once();
  }

  v17 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
  sub_1000076D4(v17, qword_10177AB88);
  type metadata accessor for UUID();
  == infix<A>(_:_:)();
  if (qword_101694588 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v17, qword_10177A930);
  == infix<A>(_:_:)();
  && infix(_:_:)();
  v18 = *(v4 + 8);
  v19 = v28;
  v18(v7, v28);
  v18(v10, v19);
  v20 = v26;
  QueryType.filter(_:)();
  v18(v12, v19);
  QueryType.delete()();
  (*(v23 + 8))(v14, v20);
  Connection.run(_:)();
  return (*(v24 + 8))(v16, v27);
}

uint64_t sub_10068CDC8(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  *(v5 + 80) = a4;
  *(v5 + 88) = v4;
  *(v5 + 185) = a3;
  *(v5 + 64) = a1;
  *(v5 + 72) = a2;
  v6 = sub_1000BC4D4(&qword_101699D08, &unk_1013D7C10);
  *(v5 + 96) = v6;
  *(v5 + 104) = *(v6 - 8);
  *(v5 + 112) = swift_task_alloc();
  *(v5 + 120) = swift_task_alloc();
  *(v5 + 128) = swift_task_alloc();
  *(v5 + 136) = swift_task_alloc();
  *(v5 + 144) = swift_task_alloc();
  v7 = type metadata accessor for Table();
  *(v5 + 152) = v7;
  *(v5 + 160) = *(v7 - 8);
  *(v5 + 168) = swift_task_alloc();
  *(v5 + 176) = swift_task_alloc();

  return _swift_task_switch(sub_10068CF34, v4, 0);
}

uint64_t sub_10068CF34()
{
  v1 = *(*(v0 + 88) + 112);
  if (v1)
  {

    if (sub_100218230())
    {
      v31 = *(*(v0 + 160) + 16);
      v31(*(v0 + 176), v1 + OBJC_IVAR____TtC12searchpartyd22ItemSharingKeyDatabase_publicKeysSuffix, *(v0 + 152));
      if (qword_101694650 != -1)
      {
        swift_once();
      }

      v2 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
      sub_1000076D4(v2, qword_10177AB88);
      type metadata accessor for UUID();
      == infix<A>(_:_:)();
      if (qword_101694590 != -1)
      {
        swift_once();
      }

      v3 = *(v0 + 120);
      v4 = *(v0 + 104);
      v5 = *(v0 + 112);
      v6 = *(v0 + 96);
      sub_1000076D4(v2, qword_10177A948);
      == infix<A>(_:_:)();
      && infix(_:_:)();
      v7 = *(v4 + 8);
      v7(v5, v6);
      v7(v3, v6);
      if (qword_101694588 != -1)
      {
        swift_once();
      }

      v8 = *(v0 + 128);
      v9 = *(v0 + 120);
      v10 = *(v0 + 96);
      sub_1000076D4(v2, qword_10177A930);
      == infix<A>(_:_:)();
      && infix(_:_:)();
      v7(v9, v10);
      v7(v8, v10);
      if (qword_1016945A0 != -1)
      {
        swift_once();
      }

      v11 = *(v0 + 168);
      v12 = *(v0 + 144);
      v30 = *(v0 + 152);
      v14 = *(v0 + 128);
      v13 = *(v0 + 136);
      v15 = *(v0 + 96);
      v16 = *(v0 + 185);
      v17 = sub_1000BC4D4(&qword_101699DA0, &unk_10139D120);
      sub_1000076D4(v17, qword_10177A978);
      *(v0 + 184) = v16 & 1;
      sub_100028088();
      == infix<A>(_:_:)();
      && infix(_:_:)();
      v7(v14, v15);
      v7(v13, v15);
      QueryType.filter(_:)();
      v7(v12, v15);
      *(v0 + 40) = v30;
      *(v0 + 48) = &protocol witness table for Table;
      v18 = sub_1000280DC((v0 + 16));
      v31(v18, v11, v30);
      Connection.prepare(_:)();
      sub_100007BAC((v0 + 16));
      v21 = dispatch thunk of _AnySequenceBox._map<A>(_:)();
      v23 = *(v0 + 168);
      v22 = *(v0 + 176);
      v25 = *(v0 + 152);
      v24 = *(v0 + 160);
      v32 = v21;

      v28 = *(v24 + 8);
      v28(v23, v25);
      v28(v22, v25);

      v29 = *(v0 + 8);

      return v29(v32);
    }

    sub_10020223C();
    swift_allocError();
    *v20 = 2;
    *(v20 + 4) = 1;
    swift_willThrow();
  }

  else
  {
    sub_10020223C();
    swift_allocError();
    *v19 = 2;
    *(v19 + 4) = 1;
    swift_willThrow();
  }

  v26 = *(v0 + 8);

  return v26();
}

uint64_t sub_10068D5D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[10] = a3;
  v4[11] = v3;
  v4[8] = a1;
  v4[9] = a2;
  v5 = sub_1000BC4D4(&qword_101699D08, &unk_1013D7C10);
  v4[12] = v5;
  v4[13] = *(v5 - 8);
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();
  v6 = type metadata accessor for Table();
  v4[18] = v6;
  v4[19] = *(v6 - 8);
  v4[20] = swift_task_alloc();
  v4[21] = swift_task_alloc();
  v4[22] = swift_task_alloc();

  return _swift_task_switch(sub_10068D73C, v3, 0);
}

uint64_t sub_10068D73C()
{
  v1 = *(v0[11] + 112);
  if (v1)
  {

    if (sub_100218230())
    {
      v28 = *(v0[19] + 16);
      v28(v0[22], v1 + OBJC_IVAR____TtC12searchpartyd22ItemSharingKeyDatabase_importedBeaconAttributes, v0[18]);
      if (qword_101694650 != -1)
      {
        swift_once();
      }

      v2 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
      sub_1000076D4(v2, qword_10177AB88);
      type metadata accessor for UUID();
      == infix<A>(_:_:)();
      if (qword_101694590 != -1)
      {
        swift_once();
      }

      v3 = v0[15];
      v4 = v0[13];
      v5 = v0[14];
      v6 = v0[12];
      sub_1000076D4(v2, qword_10177A948);
      == infix<A>(_:_:)();
      && infix(_:_:)();
      v25 = v2;
      v7 = *(v4 + 8);
      v7(v5, v6);
      v7(v3, v6);
      if (qword_101694588 != -1)
      {
        swift_once();
      }

      v27 = v0[21];
      v8 = v0[19];
      v26 = v0[20];
      v10 = v0[17];
      v9 = v0[18];
      v11 = v0[15];
      v12 = v0[16];
      v13 = v0[12];
      sub_1000076D4(v25, qword_10177A930);
      == infix<A>(_:_:)();
      && infix(_:_:)();
      v7(v11, v13);
      v7(v12, v13);
      QueryType.filter(_:)();
      v7(v10, v13);
      QueryType.limit(_:)();
      v14 = *(v8 + 8);
      v14(v26, v9);
      v0[5] = v9;
      v0[6] = &protocol witness table for Table;
      v15 = sub_1000280DC(v0 + 2);
      v28(v15, v27, v9);
      Connection.prepare(_:)();
      sub_100007BAC(v0 + 2);
      sub_1000BC4D4(&qword_1016A0AC0, &unk_1013926A0);
      v20 = dispatch thunk of _AnySequenceBox._map<A>(_:)();
      v22 = v0[21];
      v21 = v0[22];
      v23 = v0[18];
      v29 = v20;

      v14(v22, v23);
      v14(v21, v23);

      v24 = v0[1];

      return v24(v29);
    }

    sub_10020223C();
    swift_allocError();
    *v17 = 2;
    *(v17 + 4) = 1;
    swift_willThrow();
  }

  else
  {
    sub_10020223C();
    swift_allocError();
    *v16 = 2;
    *(v16 + 4) = 1;
    swift_willThrow();
  }

  v18 = v0[1];

  return v18();
}

uint64_t sub_10068DD58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v24 = a7;
  v18 = a5;
  v19 = a6;
  v17[1] = a3;
  v17[2] = a4;
  v17[0] = a2;
  v20 = a1;
  v7 = type metadata accessor for OnConflict();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for Insert();
  v21 = *(v23 - 8);
  __chkstk_darwin(v23);
  v12 = v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v8 + 104);
  v22 = v7;
  v13(v10, enum case for OnConflict.ignore(_:), v7);
  sub_1000BC4D4(&qword_101699D48, &unk_1013B6E00);
  type metadata accessor for Setter();
  *(swift_allocObject() + 16) = xmmword_101391790;
  if (qword_101694590 != -1)
  {
    swift_once();
  }

  v14 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
  sub_1000076D4(v14, qword_10177A948);
  type metadata accessor for UUID();
  <- infix<A>(_:_:)();
  if (qword_101694650 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v14, qword_10177AB88);
  <- infix<A>(_:_:)();
  if (qword_101694588 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v14, qword_10177A930);
  <- infix<A>(_:_:)();
  if (qword_101694670 != -1)
  {
    swift_once();
  }

  v15 = sub_1000BC4D4(&qword_10169DDE0, &unk_1013B6420);
  sub_1000076D4(v15, qword_10177ABE8);
  v25 = v18;
  v26 = v19;

  <- infix<A>(_:_:)();

  type metadata accessor for Table();
  QueryType.insert(or:_:)();

  (*(v8 + 8))(v10, v22);
  Connection.run(_:)();
  return (*(v21 + 8))(v12, v23);
}

uint64_t sub_10068E1A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v41 = a8;
  v39 = a7;
  v34 = a6;
  v29[1] = a4;
  v29[0] = a3;
  v40 = a1;
  v9 = sub_1000BC4D4(&qword_10169DDE0, &unk_1013B6420);
  v30 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = v29 - v10;
  v12 = type metadata accessor for OnConflict();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for Insert();
  v36 = *(v38 - 8);
  __chkstk_darwin(v38);
  v32 = v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = v13;
  v17 = *(v13 + 104);
  v33 = v15;
  v37 = v12;
  v17(v15, enum case for OnConflict.replace(_:), v12);
  sub_1000BC4D4(&qword_101699D48, &unk_1013B6E00);
  type metadata accessor for Setter();
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1013B62D0;
  v31 = v18;
  if (qword_101694590 != -1)
  {
    swift_once();
  }

  v19 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
  sub_1000076D4(v19, qword_10177A948);
  type metadata accessor for UUID();
  <- infix<A>(_:_:)();
  if (qword_101694650 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v19, qword_10177AB88);
  <- infix<A>(_:_:)();
  if (qword_101694588 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v19, qword_10177A930);
  <- infix<A>(_:_:)();
  if (qword_1016945E0 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v9, qword_10177AA38);
  v20 = *(a5 + 8);
  *&v43 = *a5;
  *(&v43 + 1) = v20;

  <- infix<A>(_:_:)();

  if (qword_101694658 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v9, qword_10177ABA0);
  v45[0] = *(a5 + 16);
  v43 = *(a5 + 16);
  sub_1000D2A70(v45, v42, &qword_1016A0AC0, &unk_1013926A0);
  <- infix<A>(_:_:)();
  sub_10000B3A8(v45, &qword_1016A0AC0, &unk_1013926A0);
  if (qword_101694660 != -1)
  {
    swift_once();
  }

  v21 = sub_1000076D4(v9, qword_10177ABB8);
  v22 = v30;
  (*(v30 + 16))(v11, v21, v9);
  countAndFlagsBits = *(a5 + 32);
  if (*(a5 + 40))
  {
    v24 = String.lowercased()();
    countAndFlagsBits = v24._countAndFlagsBits;
    object = v24._object;
  }

  else
  {
    object = 0;
  }

  *&v43 = countAndFlagsBits;
  *(&v43 + 1) = object;
  <- infix<A>(_:_:)();

  (*(v22 + 8))(v11, v9);
  if (qword_101694668 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v9, qword_10177ABD0);
  v43 = *(a5 + 48);
  v44 = v43;
  sub_1000D2A70(&v44, v42, &qword_1016A0AC0, &unk_1013926A0);
  <- infix<A>(_:_:)();
  sub_10000B3A8(&v44, &qword_1016A0AC0, &unk_1013926A0);
  if (qword_101694670 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v9, qword_10177ABE8);
  *&v43 = v34;
  *(&v43 + 1) = v39;

  <- infix<A>(_:_:)();

  type metadata accessor for Table();
  v27 = v32;
  v26 = v33;
  QueryType.insert(or:_:)();

  (*(v35 + 8))(v26, v37);
  Connection.run(_:)();
  return (*(v36 + 8))(v27, v38);
}

uint64_t sub_10068E930(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[27] = a4;
  v5[28] = v4;
  v5[25] = a2;
  v5[26] = a3;
  v5[24] = a1;
  v6 = sub_1000BC4D4(&qword_101699D08, &unk_1013D7C10);
  v5[29] = v6;
  v5[30] = *(v6 - 8);
  v5[31] = swift_task_alloc();
  v5[32] = swift_task_alloc();
  v5[33] = swift_task_alloc();
  v5[34] = swift_task_alloc();
  v7 = type metadata accessor for Table();
  v5[35] = v7;
  v5[36] = *(v7 - 8);
  v5[37] = swift_task_alloc();
  v5[38] = swift_task_alloc();
  v5[39] = swift_task_alloc();

  return _swift_task_switch(sub_10068EA9C, v4, 0);
}

uint64_t sub_10068EA9C()
{
  v1 = *(*(v0 + 224) + 112);
  if (!v1)
  {
    sub_10020223C();
    swift_allocError();
    *v17 = 2;
    *(v17 + 4) = 1;
    swift_willThrow();
LABEL_12:

    v19 = *(v0 + 8);
    goto LABEL_13;
  }

  if (!sub_100218230())
  {
    sub_10020223C();
    swift_allocError();
    *v18 = 2;
    *(v18 + 4) = 1;
    swift_willThrow();

    goto LABEL_12;
  }

  v32 = (*(v0 + 288) + 16);
  v30 = *v32;
  (*v32)(*(v0 + 312), v1 + OBJC_IVAR____TtC12searchpartyd22ItemSharingKeyDatabase_importedBeaconAttributes, *(v0 + 280));
  if (qword_101694650 != -1)
  {
    swift_once();
  }

  v2 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
  sub_1000076D4(v2, qword_10177AB88);
  type metadata accessor for UUID();
  == infix<A>(_:_:)();
  if (qword_101694590 != -1)
  {
    swift_once();
  }

  v3 = *(v0 + 256);
  v4 = *(v0 + 240);
  v5 = *(v0 + 248);
  v6 = *(v0 + 232);
  sub_1000076D4(v2, qword_10177A948);
  == infix<A>(_:_:)();
  && infix(_:_:)();
  v7 = *(v4 + 8);
  v7(v5, v6);
  v7(v3, v6);
  v8 = v2;
  if (qword_101694588 != -1)
  {
    swift_once();
    v8 = v2;
  }

  v28 = *(v0 + 304);
  v9 = *(v0 + 296);
  v35 = *(v0 + 288);
  v11 = *(v0 + 272);
  v10 = *(v0 + 280);
  v12 = *(v0 + 256);
  v13 = *(v0 + 264);
  v14 = *(v0 + 232);
  sub_1000076D4(v8, qword_10177A930);
  == infix<A>(_:_:)();
  && infix(_:_:)();
  v7(v12, v14);
  v7(v13, v14);
  QueryType.filter(_:)();
  v7(v11, v14);
  QueryType.limit(_:)();
  v15 = *(v35 + 8);
  v15(v9, v10);
  *(v0 + 168) = v10;
  *(v0 + 176) = &protocol witness table for Table;
  v16 = sub_1000280DC((v0 + 144));
  v30(v16, v28, v10);
  Connection.prepare(_:)();
  sub_100007BAC((v0 + 144));
  v21 = dispatch thunk of _AnySequenceBox._map<A>(_:)();

  if (*(v21 + 16))
  {
    v22 = *(v21 + 32);
    v23 = *(v21 + 48);
    v24 = *(v21 + 80);
    *(v0 + 48) = *(v21 + 64);
    *(v0 + 64) = v24;
    *(v0 + 16) = v22;
    *(v0 + 32) = v23;
    sub_1006941BC(v0 + 16, v0 + 80);

    v34 = *(v0 + 16);
    v29 = *(v0 + 64);
    v31 = *(v0 + 48);
    v33 = *(v0 + 32);
  }

  else
  {

    v34 = 0u;
    v31 = 0u;
    v33 = 0u;
    v29 = 0u;
  }

  v25 = *(v0 + 312);
  v26 = *(v0 + 280);
  v27 = *(v0 + 192);
  v15(*(v0 + 304), v26);
  v15(v25, v26);
  *v27 = v34;
  v27[1] = v33;
  v27[2] = v31;
  v27[3] = v29;

  v19 = *(v0 + 8);
LABEL_13:

  return v19();
}

uint64_t sub_10068F110(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for Connection.TransactionMode();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = type metadata accessor for Table();
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();

  return _swift_task_switch(sub_10068F22C, v1, 0);
}

uint64_t sub_10068F22C()
{
  v1 = *(v0[3] + 112);
  if (v1)
  {

    v2 = sub_1002072CC();
    if (v2)
    {
      v3 = v2;
      v5 = v0[8];
      v4 = v0[9];
      v6 = v0[6];
      v15 = v0[7];
      v7 = v0[4];
      v8 = v0[5];
      v9 = v0[2];
      (*(v5 + 16))(v4, v1 + OBJC_IVAR____TtC12searchpartyd22ItemSharingKeyDatabase_importedBeaconAttributes);
      v10 = swift_task_alloc();
      v10[2] = v4;
      v10[3] = v9;
      v10[4] = v3;
      (*(v8 + 104))(v6, enum case for Connection.TransactionMode.deferred(_:), v7);
      Connection.transaction(_:block:)();
      (*(v8 + 8))(v6, v7);

      (*(v5 + 8))(v4, v15);

      v11 = v0[1];
      goto LABEL_7;
    }

    sub_10020223C();
    swift_allocError();
    *v13 = 2;
    *(v13 + 4) = 1;
    swift_willThrow();
  }

  else
  {
    sub_10020223C();
    swift_allocError();
    *v12 = 2;
    *(v12 + 4) = 1;
    swift_willThrow();
  }

  v11 = v0[1];
LABEL_7:

  return v11();
}

uint64_t sub_10068F46C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17 = a1;
  v18 = a3;
  v16 = sub_1000BC4D4(&qword_101699D08, &unk_1013D7C10);
  v3 = *(v16 - 8);
  __chkstk_darwin(v16);
  v5 = &v15 - v4;
  v6 = type metadata accessor for Table();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Delete();
  v10 = *(v15 - 8);
  __chkstk_darwin(v15);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_101694650 != -1)
  {
    swift_once();
  }

  v13 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
  sub_1000076D4(v13, qword_10177AB88);
  type metadata accessor for UUID();
  == infix<A>(_:_:)();
  QueryType.filter(_:)();
  (*(v3 + 8))(v5, v16);
  QueryType.delete()();
  (*(v7 + 8))(v9, v6);
  Connection.run(_:)();
  return (*(v10 + 8))(v12, v15);
}

uint64_t sub_10068F740(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  v4 = sub_1000BC4D4(&qword_101699D08, &unk_1013D7C10);
  v3[11] = v4;
  v3[12] = *(v4 - 8);
  v3[13] = swift_task_alloc();
  v5 = type metadata accessor for Table();
  v3[14] = v5;
  v3[15] = *(v5 - 8);
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();

  return _swift_task_switch(sub_10068F878, v2, 0);
}

uint64_t sub_10068F878()
{
  v1 = *(v0[10] + 112);
  if (!v1)
  {
    sub_10020223C();
    swift_allocError();
    *v8 = 2;
    *(v8 + 4) = 1;
    swift_willThrow();
LABEL_8:

    v11 = v0[1];
    goto LABEL_9;
  }

  if (!sub_100218230())
  {
    sub_10020223C();
    swift_allocError();
    *v9 = 2;
    *(v9 + 4) = 1;
    swift_willThrow();

    goto LABEL_8;
  }

  v23 = *(v0[15] + 16);
  v23(v0[17], v1 + OBJC_IVAR____TtC12searchpartyd22ItemSharingKeyDatabase_delegatedBeaconMetadata, v0[14]);
  if (qword_1016945F0 != -1)
  {
    swift_once();
  }

  v2 = v0[16];
  v4 = v0[13];
  v3 = v0[14];
  v5 = v0[12];
  v22 = v0[11];
  v6 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
  sub_1000076D4(v6, qword_10177AA68);
  type metadata accessor for UUID();
  == infix<A>(_:_:)();
  QueryType.filter(_:)();
  (*(v5 + 8))(v4, v22);
  v0[5] = v3;
  v0[6] = &protocol witness table for Table;
  v7 = sub_1000280DC(v0 + 2);
  v23(v7, v2, v3);
  Connection.prepare(_:)();
  sub_100007BAC(v0 + 2);
  v10 = type metadata accessor for DelegatedBeaconMetadata(0);
  v13 = dispatch thunk of _AnySequenceBox._map<A>(_:)();

  v15 = v0[16];
  v14 = v0[17];
  v16 = v0[14];
  v17 = v0[15];
  if (*(v13 + 16))
  {
    v18 = *(v10 - 8);
    sub_100694B20(v13 + ((*(v18 + 80) + 32) & ~*(v18 + 80)), v0[8], type metadata accessor for DelegatedBeaconMetadata);

    v19 = *(v17 + 8);
    v19(v15, v16);
    v19(v14, v16);
    v20 = 0;
  }

  else
  {

    v21 = *(v17 + 8);
    v21(v15, v16);
    v21(v14, v16);
    v18 = *(v10 - 8);
    v20 = 1;
  }

  (*(v18 + 56))(v0[8], v20, 1, v10);

  v11 = v0[1];
LABEL_9:

  return v11();
}

uint64_t sub_10068FD8C()
{
  v1 = *(v0[7] + 112);
  if (v1)
  {

    if (sub_100218230())
    {
      v2 = OBJC_IVAR____TtC12searchpartyd22ItemSharingKeyDatabase_delegatedBeaconMetadata;
      v3 = type metadata accessor for Table();
      v0[5] = v3;
      v0[6] = &protocol witness table for Table;
      v4 = sub_1000280DC(v0 + 2);
      (*(*(v3 - 8) + 16))(v4, v1 + v2, v3);
      Connection.prepare(_:)();
      sub_100007BAC(v0 + 2);
      type metadata accessor for DelegatedBeaconMetadata(0);
      v9 = dispatch thunk of _AnySequenceBox._map<A>(_:)();

      v10 = v0[1];

      return v10(v9);
    }

    sub_10020223C();
    swift_allocError();
    *v6 = 2;
    *(v6 + 4) = 1;
    swift_willThrow();
  }

  else
  {
    sub_10020223C();
    swift_allocError();
    *v5 = 2;
    *(v5 + 4) = 1;
    swift_willThrow();
  }

  v7 = v0[1];

  return v7();
}

uint64_t sub_100690004@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for Row();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, a1, v4);
  if (qword_1016945F0 != -1)
  {
    swift_once();
  }

  v8 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
  sub_1000076D4(v8, qword_10177AA68);
  type metadata accessor for UUID();
  Row.subscript.getter();
  if (qword_1016945F8 != -1)
  {
    swift_once();
  }

  v9 = sub_1000BC4D4(&qword_10169DDB8, &unk_10139D130);
  sub_1000076D4(v9, qword_10177AA80);
  Row.subscript.getter();
  v10 = v18;
  v11 = BYTE8(v18);
  v12 = type metadata accessor for DelegatedBeaconMetadata(0);
  v13 = a2 + v12[5];
  *v13 = v10;
  v13[8] = v11;
  if (qword_101694600 != -1)
  {
    swift_once();
  }

  v14 = sub_1000BC4D4(&qword_101699D60, &qword_1013B6DE0);
  sub_1000076D4(v14, qword_10177AA98);
  type metadata accessor for Date();
  Row.subscript.getter();
  if (qword_101694608 != -1)
  {
    swift_once();
  }

  v15 = sub_1000BC4D4(&qword_10169DDD0, &unk_10139D140);
  sub_1000076D4(v15, qword_10177AAB0);
  Row.subscript.getter();
  *(a2 + v12[7]) = v18;
  if (qword_101694610 != -1)
  {
    swift_once();
  }

  v16 = sub_1000BC4D4(&qword_101699D08, &unk_1013D7C10);
  sub_1000076D4(v16, qword_10177AAC8);
  Row.subscript.getter();
  result = (*(v5 + 8))(v7, v4);
  *(a2 + v12[8]) = v18;
  return result;
}

uint64_t sub_100690360(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for Connection.TransactionMode();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v5 = type metadata accessor for Table();
  v3[8] = v5;
  v3[9] = *(v5 - 8);
  v3[10] = swift_task_alloc();

  return _swift_task_switch(sub_100690480, v2, 0);
}

uint64_t sub_100690480()
{
  v1 = *(v0[4] + 112);
  if (v1)
  {

    v2 = sub_1002072CC();
    if (v2)
    {
      v3 = v2;
      v5 = v0[9];
      v4 = v0[10];
      v6 = v0[7];
      v16 = v0[8];
      v7 = v0[5];
      v8 = v0[6];
      v9 = v0[2];
      v15 = v0[3];
      (*(v5 + 16))(v4, v1 + OBJC_IVAR____TtC12searchpartyd22ItemSharingKeyDatabase_delegatedBeaconMetadata);
      v10 = swift_task_alloc();
      v10[2] = v4;
      v10[3] = v9;
      v10[4] = v15;
      v10[5] = v3;
      (*(v8 + 104))(v6, enum case for Connection.TransactionMode.deferred(_:), v7);
      Connection.transaction(_:block:)();
      (*(v8 + 8))(v6, v7);

      (*(v5 + 8))(v4, v16);

      v11 = v0[1];
      goto LABEL_7;
    }

    sub_10020223C();
    swift_allocError();
    *v13 = 2;
    *(v13 + 4) = 1;
    swift_willThrow();
  }

  else
  {
    sub_10020223C();
    swift_allocError();
    *v12 = 2;
    *(v12 + 4) = 1;
    swift_willThrow();
  }

  v11 = v0[1];
LABEL_7:

  return v11();
}

uint64_t sub_1006906C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21 = a3;
  v22 = a4;
  v18[1] = a1;
  v4 = sub_1000BC4D4(&qword_101699D08, &unk_1013D7C10);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v18 - v6;
  v8 = type metadata accessor for Table();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Update();
  v19 = *(v12 - 8);
  v20 = v12;
  __chkstk_darwin(v12);
  v14 = v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1016945F0 != -1)
  {
    swift_once();
  }

  v15 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
  sub_1000076D4(v15, qword_10177AA68);
  type metadata accessor for UUID();
  == infix<A>(_:_:)();
  QueryType.filter(_:)();
  (*(v5 + 8))(v7, v4);
  sub_1000BC4D4(&qword_101699D48, &unk_1013B6E00);
  type metadata accessor for Setter();
  *(swift_allocObject() + 16) = xmmword_101385D80;
  if (qword_1016945F8 != -1)
  {
    swift_once();
  }

  v16 = sub_1000BC4D4(&qword_10169DDB8, &unk_10139D130);
  sub_1000076D4(v16, qword_10177AA80);
  v23 = v21;
  v24 = 0;
  <- infix<A>(_:_:)();
  QueryType.update(_:)();

  (*(v9 + 8))(v11, v8);
  Connection.run(_:)();
  return (*(v19 + 8))(v14, v20);
}

uint64_t sub_100690AAC(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, unint64_t a6, int a7, uint64_t a8)
{
  v72 = a6;
  v73 = a8;
  v77 = a7;
  v71 = a5;
  v67 = a4;
  v66 = a3;
  v61 = a2;
  v8 = type metadata accessor for Insert();
  v75 = *(v8 - 8);
  v76 = v8;
  __chkstk_darwin(v8);
  v74 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v11 = __chkstk_darwin(v10 - 8);
  v63 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v61 - v13;
  v15 = type metadata accessor for Date();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v64 = &v61 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = type metadata accessor for Setter();
  v18 = *(v84 - 8);
  v19 = __chkstk_darwin(v84);
  v65 = &v61 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v68 = &v61 - v22;
  v23 = __chkstk_darwin(v21);
  v62 = &v61 - v24;
  v25 = __chkstk_darwin(v23);
  v27 = &v61 - v26;
  __chkstk_darwin(v25);
  v29 = &v61 - v28;
  if (qword_1016945F0 != -1)
  {
    swift_once();
  }

  v70 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
  v30 = sub_1000076D4(v70, qword_10177AA68);
  type metadata accessor for UUID();
  v69 = v30;
  <- infix<A>(_:_:)();
  v31 = sub_100A5D7F4(0, 1, 1, _swiftEmptyArrayStorage);
  v33 = *(v31 + 2);
  v32 = *(v31 + 3);
  if (v33 >= v32 >> 1)
  {
    v31 = sub_100A5D7F4((v32 > 1), v33 + 1, 1, v31);
  }

  *(v31 + 2) = v33 + 1;
  v35 = *(v18 + 32);
  v34 = v18 + 32;
  v78 = (*(v34 + 48) + 32) & ~*(v34 + 48);
  v79 = v35;
  v36 = *(v34 + 40);
  v35(&v31[v78 + v36 * v33], v29, v84);
  if ((v66 & 1) == 0)
  {
    if (qword_1016945F8 != -1)
    {
      swift_once();
    }

    v37 = sub_1000BC4D4(&qword_10169DDB8, &unk_10139D130);
    sub_1000076D4(v37, qword_10177AA80);
    v80 = v61;
    LOBYTE(v81) = 0;
    <- infix<A>(_:_:)();
    v39 = *(v31 + 2);
    v38 = *(v31 + 3);
    if (v39 >= v38 >> 1)
    {
      v31 = sub_100A5D7F4((v38 > 1), v39 + 1, 1, v31);
    }

    *(v31 + 2) = v39 + 1;
    v79(&v31[v78 + v39 * v36], v27, v84);
  }

  sub_1000D2A70(v67, v14, &unk_101696900, &unk_10138B1E0);
  v40 = (*(v16 + 48))(v14, 1, v15);
  v41 = v77;
  if (v40 == 1)
  {
    sub_10000B3A8(v14, &unk_101696900, &unk_10138B1E0);
  }

  else
  {
    v42 = v64;
    (*(v16 + 32))(v64, v14, v15);
    if (qword_101694600 != -1)
    {
      swift_once();
    }

    v43 = sub_1000BC4D4(&qword_101699D60, &qword_1013B6DE0);
    sub_1000076D4(v43, qword_10177AA98);
    v44 = v63;
    (*(v16 + 16))(v63, v42, v15);
    (*(v16 + 56))(v44, 0, 1, v15);
    v45 = v62;
    <- infix<A>(_:_:)();
    sub_10000B3A8(v44, &unk_101696900, &unk_10138B1E0);
    v47 = *(v31 + 2);
    v46 = *(v31 + 3);
    if (v47 >= v46 >> 1)
    {
      v31 = sub_100A5D7F4((v46 > 1), v47 + 1, 1, v31);
    }

    (*(v16 + 8))(v42, v15);
    *(v31 + 2) = v47 + 1;
    v79(&v31[v78 + v47 * v36], v45, v84);
    v41 = v77;
  }

  v49 = v71;
  v48 = v72;
  if (v72 >> 60 != 15)
  {
    sub_100017D5C(v71, v72);
    if (qword_101694608 != -1)
    {
      swift_once();
    }

    v50 = sub_1000BC4D4(&qword_10169DDD0, &unk_10139D140);
    sub_1000076D4(v50, qword_10177AAB0);
    v80 = v49;
    v81 = v48;
    sub_100017D5C(v49, v48);
    <- infix<A>(_:_:)();
    sub_100006654(v80, v81);
    v52 = *(v31 + 2);
    v51 = *(v31 + 3);
    if (v52 >= v51 >> 1)
    {
      v31 = sub_100A5D7F4((v51 > 1), v52 + 1, 1, v31);
    }

    sub_100006654(v49, v48);
    *(v31 + 2) = v52 + 1;
    v79(&v31[v78 + v52 * v36], v68, v84);
  }

  if (v41 != 2)
  {
    if (qword_101694610 != -1)
    {
      swift_once();
    }

    v53 = sub_1000BC4D4(&qword_101699D08, &unk_1013D7C10);
    sub_1000076D4(v53, qword_10177AAC8);
    LOBYTE(v80) = v41 & 1;
    v54 = v65;
    <- infix<A>(_:_:)();
    v56 = *(v31 + 2);
    v55 = *(v31 + 3);
    if (v56 >= v55 >> 1)
    {
      v31 = sub_100A5D7F4((v55 > 1), v56 + 1, 1, v31);
    }

    *(v31 + 2) = v56 + 1;
    v79(&v31[v78 + v56 * v36], v54, v84);
  }

  v57 = v70;
  v82 = v70;
  v83 = sub_1000041A4(&qword_101699D18, &qword_101699D10, &unk_1013930B0, &protocol conformance descriptor for Expression<A>);
  v58 = sub_1000280DC(&v80);
  (*(*(v57 - 8) + 16))(v58, v69, v57);
  type metadata accessor for Table();
  v59 = v74;
  QueryType.upsert(_:onConflictOf:)();

  sub_100007BAC(&v80);
  Connection.run(_:)();
  return (*(v75 + 8))(v59, v76);
}

uint64_t sub_100691410(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for Connection.TransactionMode();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = type metadata accessor for Table();
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();

  return _swift_task_switch(sub_10069152C, v1, 0);
}

uint64_t sub_10069152C()
{
  v1 = *(v0[3] + 112);
  if (v1)
  {

    v2 = sub_1002072CC();
    if (v2)
    {
      v3 = v2;
      v5 = v0[8];
      v4 = v0[9];
      v6 = v0[6];
      v15 = v0[7];
      v7 = v0[4];
      v8 = v0[5];
      v9 = v0[2];
      (*(v5 + 16))(v4, v1 + OBJC_IVAR____TtC12searchpartyd22ItemSharingKeyDatabase_delegatedBeaconMetadata);
      v10 = swift_task_alloc();
      v10[2] = v4;
      v10[3] = v9;
      v10[4] = v3;
      (*(v8 + 104))(v6, enum case for Connection.TransactionMode.deferred(_:), v7);
      Connection.transaction(_:block:)();
      (*(v8 + 8))(v6, v7);

      (*(v5 + 8))(v4, v15);

      v11 = v0[1];
      goto LABEL_7;
    }

    sub_10020223C();
    swift_allocError();
    *v13 = 2;
    *(v13 + 4) = 1;
    swift_willThrow();
  }

  else
  {
    sub_10020223C();
    swift_allocError();
    *v12 = 2;
    *(v12 + 4) = 1;
    swift_willThrow();
  }

  v11 = v0[1];
LABEL_7:

  return v11();
}

uint64_t sub_10069176C(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v3 = sub_1000BC4D4(&qword_101699D08, &unk_1013D7C10);
  v2[10] = v3;
  v2[11] = *(v3 - 8);
  v2[12] = swift_task_alloc();
  v4 = type metadata accessor for Table();
  v2[13] = v4;
  v2[14] = *(v4 - 8);
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();

  return _swift_task_switch(sub_1006918A0, v1, 0);
}

uint64_t sub_1006918A0()
{
  v1 = *(v0[9] + 112);
  if (v1)
  {

    if (sub_100218230())
    {
      v21 = *(v0[14] + 16);
      v21(v0[16], v1 + OBJC_IVAR____TtC12searchpartyd22ItemSharingKeyDatabase_sharingCircleSecret, v0[13]);
      if (qword_101694650 != -1)
      {
        swift_once();
      }

      v2 = v0[15];
      v4 = v0[12];
      v3 = v0[13];
      v5 = v0[11];
      v20 = v0[10];
      v6 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
      sub_1000076D4(v6, qword_10177AB88);
      type metadata accessor for UUID();
      == infix<A>(_:_:)();
      QueryType.filter(_:)();
      (*(v5 + 8))(v4, v20);
      v0[5] = v3;
      v0[6] = &protocol witness table for Table;
      v7 = sub_1000280DC(v0 + 2);
      v21(v7, v2, v3);
      Connection.prepare(_:)();
      sub_100007BAC(v0 + 2);
      type metadata accessor for SharingCircleSecret(0);
      v12 = dispatch thunk of _AnySequenceBox._map<A>(_:)();
      v14 = v0[15];
      v13 = v0[16];
      v16 = v0[13];
      v15 = v0[14];
      v17 = v12;

      v18 = *(v15 + 8);
      v18(v14, v16);
      v18(v13, v16);

      v19 = v0[1];

      return v19(v17);
    }

    sub_10020223C();
    swift_allocError();
    *v9 = 2;
    *(v9 + 4) = 1;
    swift_willThrow();
  }

  else
  {
    sub_10020223C();
    swift_allocError();
    *v8 = 2;
    *(v8 + 4) = 1;
    swift_willThrow();
  }

  v10 = v0[1];

  return v10();
}

uint64_t sub_100691CBC@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  __chkstk_darwin(v4 - 8);
  v6 = v25 - v5;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_101694648 != -1)
  {
    swift_once();
  }

  v11 = sub_1000BC4D4(&qword_101699E70, &unk_101393160);
  sub_1000076D4(v11, qword_10177AB70);
  Row.subscript.getter();
  v12 = *(v8 + 48);
  if (v12(v6, 1, v7) == 1)
  {
    UUID.init()();
    if (v12(v6, 1, v7) != 1)
    {
      sub_10000B3A8(v6, &qword_1016980D0, &unk_10138F3B0);
    }
  }

  else
  {
    (*(v8 + 32))(v10, v6, v7);
  }

  if (qword_101694650 != -1)
  {
    swift_once();
  }

  v13 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
  sub_1000076D4(v13, qword_10177AB88);
  v14 = type metadata accessor for SharingCircleSecret(0);
  Row.subscript.getter();
  if (qword_101694638 != -1)
  {
    swift_once();
  }

  v15 = sub_1000BC4D4(&qword_101699DC0, &unk_10139D110);
  sub_1000076D4(v15, qword_10177AB40);
  Row.subscript.getter();
  v16 = v25[2];
  v17 = v25[3];
  if (qword_101694640 != -1)
  {
    swift_once();
  }

  v18 = sub_1000BC4D4(&qword_10169DE00, &unk_10139D160);
  sub_1000076D4(v18, qword_10177AB58);
  Row.subscript.getter();
  v19 = type metadata accessor for Row();
  (*(*(v19 - 8) + 8))(a1, v19);
  v20 = v25[0];
  v21 = v25[1];
  *a2 = xmmword_10138C660;
  result = (*(v8 + 32))(&a2[v14[5]], v10, v7);
  v23 = &a2[v14[8]];
  *v23 = v16;
  *(v23 + 1) = v17;
  v24 = &a2[v14[7]];
  *v24 = v20;
  *(v24 + 1) = v21;
  return result;
}

uint64_t sub_10069208C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for Connection.TransactionMode();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = type metadata accessor for Table();
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();

  return _swift_task_switch(sub_1006921A8, v1, 0);
}

uint64_t sub_1006921A8()
{
  v1 = *(v0[3] + 112);
  if (v1)
  {

    v2 = sub_1002072CC();
    if (v2)
    {
      v3 = v2;
      v5 = v0[8];
      v4 = v0[9];
      v6 = v0[6];
      v15 = v0[7];
      v7 = v0[4];
      v8 = v0[5];
      v9 = v0[2];
      (*(v5 + 16))(v4, v1 + OBJC_IVAR____TtC12searchpartyd22ItemSharingKeyDatabase_sharingCircleSecret);
      v10 = swift_task_alloc();
      v10[2] = v9;
      v10[3] = v4;
      v10[4] = v3;
      (*(v8 + 104))(v6, enum case for Connection.TransactionMode.deferred(_:), v7);
      Connection.transaction(_:block:)();
      (*(v8 + 8))(v6, v7);

      (*(v5 + 8))(v4, v15);

      v11 = v0[1];
      goto LABEL_7;
    }

    sub_10020223C();
    swift_allocError();
    *v13 = 2;
    *(v13 + 4) = 1;
    swift_willThrow();
  }

  else
  {
    sub_10020223C();
    swift_allocError();
    *v12 = 2;
    *(v12 + 4) = 1;
    swift_willThrow();
  }

  v11 = v0[1];
LABEL_7:

  return v11();
}

uint64_t sub_1006923E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v52 = a2;
  v53 = a3;
  v6 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  __chkstk_darwin(v6 - 8);
  v51 = &v40 - v7;
  v8 = type metadata accessor for OnConflict();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = type metadata accessor for Insert();
  v12 = *(v50 - 8);
  __chkstk_darwin(v50);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for SharingCircleSecret(0);
  result = __chkstk_darwin(v15);
  v19 = &v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(a1 + 16);
  if (v20)
  {
    v44 = (v9 + 8);
    v45 = (v9 + 104);
    v41 = (v12 + 8);
    v21 = *(v17 + 80);
    v43 = enum case for OnConflict.ignore(_:);
    result = a1 + ((v21 + 32) & ~v21);
    v40 = *(v17 + 72);
    v42 = xmmword_101391790;
    v48 = v11;
    v49 = v8;
    v46 = v15;
    v47 = v14;
    while (1)
    {
      v54 = result;
      v55 = v20;
      v60 = v4;
      sub_100694B20(result, v19, type metadata accessor for SharingCircleSecret);
      v22 = *(v15 + 32);
      v23 = &v19[*(v15 + 28)];
      v24 = *v23;
      v56 = *(v23 + 1);
      v26 = *&v19[v22];
      v25 = *&v19[v22 + 8];
      (*v45)(v11, v43, v8);
      sub_1000BC4D4(&qword_101699D48, &unk_1013B6E00);
      type metadata accessor for Setter();
      v27 = swift_allocObject();
      *(v27 + 16) = v42;
      if (qword_101694638 != -1)
      {
        v39 = v27;
        swift_once();
        v27 = v39;
      }

      v57 = v27;
      v28 = sub_1000BC4D4(&qword_101699DC0, &unk_10139D110);
      sub_1000076D4(v28, qword_10177AB40);
      v58 = v26;
      v59 = v25;
      <- infix<A>(_:_:)();
      if (qword_101694640 != -1)
      {
        swift_once();
      }

      v29 = sub_1000BC4D4(&qword_10169DE00, &unk_10139D160);
      sub_1000076D4(v29, qword_10177AB58);
      v58 = v24;
      v59 = v56;
      <- infix<A>(_:_:)();
      if (qword_101694648 != -1)
      {
        swift_once();
      }

      v30 = sub_1000BC4D4(&qword_101699E70, &unk_101393160);
      sub_1000076D4(v30, qword_10177AB70);
      v15 = v46;
      v31 = *(v46 + 20);
      v32 = type metadata accessor for UUID();
      v33 = *(v32 - 8);
      v34 = &v19[v31];
      v35 = v51;
      (*(v33 + 16))(v51, v34, v32);
      (*(v33 + 56))(v35, 0, 1, v32);
      <- infix<A>(_:_:)();
      sub_10000B3A8(v35, &qword_1016980D0, &unk_10138F3B0);
      if (qword_101694650 != -1)
      {
        swift_once();
      }

      v36 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
      sub_1000076D4(v36, qword_10177AB88);
      <- infix<A>(_:_:)();
      type metadata accessor for Table();
      v37 = v47;
      v11 = v48;
      QueryType.insert(or:_:)();

      v8 = v49;
      (*v44)(v11, v49);
      v38 = v60;
      Connection.run(_:)();
      v4 = v38;
      if (v38)
      {
        break;
      }

      (*v41)(v37, v50);
      sub_100694BEC(v19, type metadata accessor for SharingCircleSecret);
      result = v54 + v40;
      v20 = v55 - 1;
      if (v55 == 1)
      {
        return result;
      }
    }

    (*v41)(v37, v50);
    return sub_100694BEC(v19, type metadata accessor for SharingCircleSecret);
  }

  return result;
}

uint64_t sub_100692A94(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for Connection.TransactionMode();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = type metadata accessor for Table();
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();

  return _swift_task_switch(sub_100692BB0, v1, 0);
}

uint64_t sub_100692BB0()
{
  v1 = *(v0[3] + 112);
  if (v1)
  {

    v2 = sub_1002072CC();
    if (v2)
    {
      v3 = v2;
      v5 = v0[8];
      v4 = v0[9];
      v6 = v0[6];
      v15 = v0[7];
      v7 = v0[4];
      v8 = v0[5];
      v9 = v0[2];
      (*(v5 + 16))(v4, v1 + OBJC_IVAR____TtC12searchpartyd22ItemSharingKeyDatabase_sharingCircleSecret);
      v10 = swift_task_alloc();
      v10[2] = v4;
      v10[3] = v9;
      v10[4] = v3;
      (*(v8 + 104))(v6, enum case for Connection.TransactionMode.deferred(_:), v7);
      Connection.transaction(_:block:)();
      (*(v8 + 8))(v6, v7);

      (*(v5 + 8))(v4, v15);

      v11 = v0[1];
      goto LABEL_7;
    }

    sub_10020223C();
    swift_allocError();
    *v13 = 2;
    *(v13 + 4) = 1;
    swift_willThrow();
  }

  else
  {
    sub_10020223C();
    swift_allocError();
    *v12 = 2;
    *(v12 + 4) = 1;
    swift_willThrow();
  }

  v11 = v0[1];
LABEL_7:

  return v11();
}

uint64_t sub_100692E28(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v20[0] = a6;
  v20[1] = a2;
  v20[3] = a3;
  v20[2] = a1;
  v22 = type metadata accessor for Delete();
  v21 = *(v22 - 8);
  __chkstk_darwin(v22);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000BC4D4(&qword_101699D08, &unk_1013D7C10);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v20 - v12;
  v14 = type metadata accessor for Table();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a4 != -1)
  {
    swift_once();
  }

  v18 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
  sub_1000076D4(v18, a5);
  type metadata accessor for UUID();
  == infix<A>(_:_:)();
  QueryType.filter(_:)();
  (*(v11 + 8))(v13, v10);
  QueryType.delete()();
  Connection.run(_:)();
  (*(v21 + 8))(v9, v22);
  return (*(v15 + 8))(v17, v14);
}

double sub_100693158@<D0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, _OWORD *a5@<X8>)
{
  v9 = type metadata accessor for Row();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v12, a1, v9);
  if (*a2 != -1)
  {
    swift_once();
  }

  v13 = sub_1000BC4D4(&qword_101699DC0, &unk_10139D110);
  sub_1000076D4(v13, a3);
  Row.subscript.getter();
  (*(v10 + 8))(v12, v9);
  result = *&v15;
  *a5 = v15;
  return result;
}

uint64_t sub_1006932B4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = sub_100690004(a1, a2);
  if (v2)
  {
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    result = swift_allocError();
    *v4 = v5;
  }

  return result;
}

void *sub_100693310()
{
  if (qword_101694590 != -1)
  {
    swift_once();
  }

  v1 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
  sub_1000076D4(v1, qword_10177A948);
  type metadata accessor for UUID();
  return Row.subscript.getter();
}

uint64_t sub_1006933B8@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = type metadata accessor for Row();
  __chkstk_darwin(v4);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v6, a1);
  return sub_100691CBC(v6, a2);
}

uint64_t sub_10069348C(uint64_t a1)
{
  v3 = type metadata accessor for Row();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v6, a1, v3);
  if (qword_101694618 != -1)
  {
    swift_once();
  }

  v7 = sub_1000BC4D4(&qword_101699D60, &qword_1013B6DE0);
  sub_1000076D4(v7, qword_10177AAE0);
  type metadata accessor for Date();
  Row.subscript.getter();
  if (qword_101694620 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v7, qword_10177AAF8);
  type metadata accessor for KeyDropLostItemDates(0);
  Row.subscript.getter();
  return (*(v4 + 8))(v6, v3);
}

__n128 sub_100693668@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for Row();
  __chkstk_darwin(v5);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7, a1);
  sub_100694218(v7, v13);
  if (v2)
  {
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    swift_allocError();
    *v10 = v2;
  }

  else
  {
    v11 = v13[3];
    *(a2 + 32) = v13[2];
    *(a2 + 48) = v11;
    *(a2 + 64) = v14;
    result = v13[1];
    *a2 = v13[0];
    *(a2 + 16) = result;
  }

  return result;
}

void *sub_10069379C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = type metadata accessor for Row();
  __chkstk_darwin(v5);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7, a1);
  sub_100694218(v7, v16);
  if (v2)
  {
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    result = swift_allocError();
    *v10 = v2;
  }

  else
  {
    v11 = a2 + *(sub_1000BC4D4(&qword_101697708, &qword_10138C3C0) + 48);
    if (qword_101694590 != -1)
    {
      swift_once();
    }

    v12 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
    sub_1000076D4(v12, qword_10177A948);
    type metadata accessor for UUID();
    result = Row.subscript.getter();
    v13 = v16[3];
    *(v11 + 2) = v16[2];
    *(v11 + 3) = v13;
    *(v11 + 8) = v17;
    v14 = v16[1];
    *v11 = v16[0];
    *(v11 + 1) = v14;
  }

  return result;
}

double sub_10069396C@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = type metadata accessor for Row();
  __chkstk_darwin(v5);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7, a1);
  sub_100694708(v7, v13);
  if (v2)
  {
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    swift_allocError();
    *v10 = v2;
  }

  else
  {
    v11 = v13[1];
    *a2 = v13[0];
    a2[1] = v11;
    result = *&v14;
    v12 = v15;
    a2[2] = v14;
    a2[3] = v12;
  }

  return result;
}

uint64_t sub_100693A90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for Row();
  __chkstk_darwin(v5);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7, a1);
  result = sub_1006944BC(v7);
  if (v2)
  {
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    result = swift_allocError();
    *v13 = v2;
  }

  else
  {
    *a2 = result & 1;
    *(a2 + 8) = v10;
    *(a2 + 16) = v11;
    *(a2 + 24) = v12;
  }

  return result;
}

double sub_100693BAC@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = type metadata accessor for Row();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, a1, v4);
  if (qword_1016945B0 != -1)
  {
    swift_once();
  }

  v8 = sub_1000BC4D4(&qword_101699DC0, &unk_10139D110);
  sub_1000076D4(v8, qword_10177A9A8);
  Row.subscript.getter();
  (*(v5 + 8))(v7, v4);
  result = *&v10;
  *a2 = v10;
  return result;
}

uint64_t sub_100693D10(uint64_t a1)
{
  v3 = type metadata accessor for Row();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v6, a1, v3);
  if (qword_101694618 != -1)
  {
    swift_once();
  }

  v7 = sub_1000BC4D4(&qword_101699D60, &qword_1013B6DE0);
  sub_1000076D4(v7, qword_10177AAE0);
  type metadata accessor for Date();
  Row.subscript.getter();
  if (qword_101694620 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v7, qword_10177AAF8);
  type metadata accessor for DelegatedBeaconLostDates(0);
  Row.subscript.getter();
  if (qword_101694628 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v7, qword_10177AB10);
  Row.subscript.getter();
  return (*(v4 + 8))(v6, v3);
}

double sub_100693F50@<D0>(_OWORD *a1@<X8>)
{
  if (qword_101694670 != -1)
  {
    swift_once();
  }

  v2 = sub_1000BC4D4(&qword_10169DDE0, &unk_1013B6420);
  sub_1000076D4(v2, qword_10177ABE8);
  Row.subscript.getter();
  result = *&v4;
  *a1 = v4;
  return result;
}

uint64_t sub_100693FFC()
{
  swift_defaultActor_initialize();
  if (qword_101694FA8 != -1)
  {
    swift_once();
  }

  SynchronousCache.cachedValue<A>(key:computeBlock:)();
  type metadata accessor for ItemSharingKeyDatabase(0);
  swift_allocObject();
  *(v0 + 112) = sub_10031C764(v2);
  return v0;
}

__n128 sub_100694218@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (qword_1016945C0 != -1)
  {
    swift_once();
  }

  v4 = sub_1000BC4D4(&qword_10169DE00, &unk_10139D160);
  sub_1000076D4(v4, qword_10177A9D8);
  Row.subscript.getter();
  if (qword_1016945C8 != -1)
  {
    swift_once();
  }

  v5 = sub_1000BC4D4(&qword_101699E88, &unk_10139D170);
  sub_1000076D4(v5, qword_10177A9F0);
  Row.subscript.getter();
  if (qword_1016945D0 != -1)
  {
    swift_once();
  }

  v6 = sub_1000BC4D4(&qword_10169DDE0, &unk_1013B6420);
  sub_1000076D4(v6, qword_10177AA08);
  Row.subscript.getter();
  if (qword_1016945D8 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v4, qword_10177AA20);
  Row.subscript.getter();
  if (qword_1016945E0 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v6, qword_10177AA38);
  Row.subscript.getter();
  v7 = type metadata accessor for Row();
  (*(*(v7 - 8) + 8))(a1, v7);
  result = v9;
  *a2 = v9;
  *(a2 + 16) = v9.n128_u64[0];
  *(a2 + 24) = v9;
  *(a2 + 40) = v9;
  *(a2 + 56) = v9;
  return result;
}

uint64_t sub_1006944BC(uint64_t a1)
{
  if (qword_1016945A0 != -1)
  {
    swift_once();
  }

  v2 = sub_1000BC4D4(&qword_101699DA0, &unk_10139D120);
  v3 = sub_1000076D4(v2, qword_10177A978);
  sub_100028088();
  Row.subscript.getter();
  if (v10 == 1)
  {
    v3 = 1;
  }

  else
  {
    if (v10)
    {
      sub_10022A480();
      swift_allocError();
      *v7 = 0;
      swift_willThrow();
      v8 = type metadata accessor for Row();
      (*(*(v8 - 8) + 8))(a1, v8);
      return v3;
    }

    v3 = 0;
  }

  if (qword_101694598 != -1)
  {
    swift_once();
  }

  v4 = sub_1000BC4D4(&qword_101699DE8, &qword_101393120);
  sub_1000076D4(v4, qword_10177A960);
  sub_100029580();
  Row.subscript.getter();
  if (qword_101694630 != -1)
  {
    swift_once();
  }

  v5 = sub_1000BC4D4(&qword_101699DC0, &unk_10139D110);
  sub_1000076D4(v5, qword_10177AB28);
  Row.subscript.getter();
  v6 = type metadata accessor for Row();
  (*(*(v6 - 8) + 8))(a1, v6);
  return v3;
}

uint64_t sub_100694708@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  if (qword_1016945E0 != -1)
  {
    swift_once();
  }

  v4 = sub_1000BC4D4(&qword_10169DDE0, &unk_1013B6420);
  sub_1000076D4(v4, qword_10177AA38);
  Row.subscript.getter();
  if (*(&v19[0] + 1))
  {
    if (qword_101694658 != -1)
    {
      swift_once();
    }

    sub_1000076D4(v4, qword_10177ABA0);
    Row.subscript.getter();
    if (*(&v20 + 1))
    {
      v21 = *&v19[0];
      if (qword_101694660 != -1)
      {
        swift_once();
      }

      sub_1000076D4(v4, qword_10177ABB8);
      Row.subscript.getter();
      v5 = v19[0];
      if (qword_101694668 != -1)
      {
        swift_once();
      }

      sub_1000076D4(v4, qword_10177ABD0);
      Row.subscript.getter();
      v6 = type metadata accessor for Row();
      (*(*(v6 - 8) + 8))(a1, v6);
      *&v15 = v21;
      *(&v15 + 1) = *(&v19[0] + 1);
      v16 = v20;
      v17 = v19[0];
      v18 = v19[0];
      *&v19[0] = v21;
      v19[1] = v20;
      v19[2] = v5;
      v19[3] = v18;
      sub_1006941BC(&v15, v14);
      result = sub_100694A6C(v19);
      v8 = v16;
      *a2 = v15;
      a2[1] = v8;
      v9 = v18;
      a2[2] = v17;
      a2[3] = v9;
    }

    else
    {
      sub_10020223C();
      swift_allocError();
      *v12 = 5;
      *(v12 + 4) = 1;
      swift_willThrow();
      v13 = type metadata accessor for Row();
      (*(*(v13 - 8) + 8))(a1, v13);
    }
  }

  else
  {
    sub_10020223C();
    swift_allocError();
    *v10 = 5;
    *(v10 + 4) = 1;
    swift_willThrow();
    v11 = type metadata accessor for Row();
    return (*(*(v11 - 8) + 8))(a1, v11);
  }

  return result;
}

uint64_t sub_100694B20(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100694B88(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DelegatedBeaconLostDates(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100694BEC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100694CEC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&qword_101697700, &unk_10139FB90);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100694DE4(void *a1, uint64_t a2)
{
  v2 = a2;
  sub_1000035D0(a1, a1[3]);
  dispatch thunk of BinaryEncoding.container()();
  v5 = sub_10098E0F0(v2);
  v6 = v3;
  sub_10015049C(v7, v7[3]);
  sub_100165078();
  dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
  sub_100016590(v5, v6);
  return sub_100007BAC(v7);
}

unint64_t sub_100694E9C@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_100694F78(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 2) = BYTE2(result);
    *(a1 + 3) = BYTE3(result);
  }

  return result;
}

unint64_t sub_100694EF4(uint64_t a1)
{
  *(a1 + 8) = sub_100694F24();
  result = sub_10059BE50();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_100694F24()
{
  result = qword_1016A77E0;
  if (!qword_1016A77E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A77E0);
  }

  return result;
}

unint64_t sub_100694F78(void *a1)
{
  sub_1000035D0(a1, a1[3]);
  dispatch thunk of BinaryDecoding.container()();
  v3 = v10[4];
  sub_10015049C(v10, v10[3]);
  v4 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  if (v1)
  {
    goto LABEL_5;
  }

  v6 = v4;
  v7 = v5;
  sub_100017D5C(v4, v5);
  v3 = sub_10098E844(v6, v7);
  sub_100016590(v6, v7);
  if ((v3 & 0x100000000) != 0)
  {
    v3 = type metadata accessor for BinaryEncodingError();
    sub_100205404();
    swift_allocError();
    (*(*(v3 - 8) + 104))(v8, enum case for BinaryEncodingError.encodingError(_:), v3);
    swift_willThrow();
    sub_100016590(v6, v7);
LABEL_5:
    sub_100007BAC(v10);
    sub_100007BAC(a1);
    return v3;
  }

  sub_100016590(v6, v7);
  sub_100007BAC(v10);
  sub_100007BAC(a1);
  return v3;
}

void sub_100695108(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1000BC4D4(&qword_1016A77E8, &unk_1013C53B0);
    v1 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v1 = _swiftEmptyDictionarySingleton;
  }

  v2 = 1 << *(a1 + 32);
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  else
  {
    v3 = -1;
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;
  v6 = v1 + 8;

  v7 = 0;
  while (v4)
  {
LABEL_15:
    v10 = (v7 << 9) | (8 * __clz(__rbit64(v4)));
    v11 = *(*(a1 + 48) + v10);
    v25 = *(*(a1 + 56) + v10);
    v12 = v25;
    type metadata accessor for FileProtectionType(0);
    v13 = v11;
    v14 = v12;
    swift_dynamicCast();
    sub_10004D07C((v26 + 8), v24);
    sub_10004D07C(v24, v26);
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    Hasher.init(_seed:)();
    String.hash(into:)();
    v15 = Hasher._finalize()();

    v16 = -1 << *(v1 + 32);
    v17 = v15 & ~v16;
    v18 = v17 >> 6;
    if (((-1 << v17) & ~v6[v17 >> 6]) == 0)
    {
      v19 = 0;
      v20 = (63 - v16) >> 6;
      while (++v18 != v20 || (v19 & 1) == 0)
      {
        v21 = v18 == v20;
        if (v18 == v20)
        {
          v18 = 0;
        }

        v19 |= v21;
        v22 = v6[v18];
        if (v22 != -1)
        {
          v8 = __clz(__rbit64(~v22)) + (v18 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v8 = __clz(__rbit64((-1 << v17) & ~v6[v17 >> 6])) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    *(v6 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
    v4 &= v4 - 1;
    *(v1[6] + 8 * v8) = v13;
    sub_10004D07C(v26, (v1[7] + 32 * v8));
    ++v1[2];
  }

  while (1)
  {
    v9 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v9 >= v5)
    {

      return;
    }

    v4 = *(a1 + 64 + 8 * v9);
    ++v7;
    if (v4)
    {
      v7 = v9;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
}

void sub_1006953B0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1000BC4D4(&unk_1016B1490, &unk_1013C5310);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = _swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v11 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v7;
    if (v5)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v13 = (*(a1 + 48) + ((v11 << 10) | (16 * v12)));
        v15 = *v13;
        v14 = v13[1];

        swift_dynamicCast();
        sub_10004D07C(&v22, v24);
        sub_10004D07C(v24, v25);
        sub_10004D07C(v25, &v23);
        v16 = sub_100771D58(v15, v14);
        if (v17)
        {
          v8 = (v2[6] + 16 * v16);
          *v8 = v15;
          v8[1] = v14;
          v9 = v16;

          v10 = (v2[7] + 32 * v9);
          sub_100007BAC(v10);
          sub_10004D07C(&v23, v10);
          v7 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v16;
          v18 = (v2[6] + 16 * v16);
          *v18 = v15;
          v18[1] = v14;
          sub_10004D07C(&v23, (v2[7] + 32 * v16));
          v19 = v2[2];
          v20 = __OFADD__(v19, 1);
          v21 = v19 + 1;
          if (v20)
          {
            goto LABEL_21;
          }

          v2[2] = v21;
          v7 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v11 = v7;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
}

void sub_100695608(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1000BC4D4(&qword_1016A0B08, &unk_1013C5390);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = _swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v11 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v7;
    if (v5)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v13 = (*(a1 + 48) + ((v11 << 10) | (16 * v12)));
        v15 = *v13;
        v14 = v13[1];

        sub_1000BC4D4(&qword_1016A0B00, &unk_1013A48B0);
        swift_dynamicCast();
        sub_10004D07C(&v22, v24);
        sub_10004D07C(v24, v25);
        sub_10004D07C(v25, &v23);
        v16 = sub_100771D58(v15, v14);
        if (v17)
        {
          v8 = (v2[6] + 16 * v16);
          *v8 = v15;
          v8[1] = v14;
          v9 = v16;

          v10 = (v2[7] + 32 * v9);
          sub_100007BAC(v10);
          sub_10004D07C(&v23, v10);
          v7 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v16;
          v18 = (v2[6] + 16 * v16);
          *v18 = v15;
          v18[1] = v14;
          sub_10004D07C(&v23, (v2[7] + 32 * v16));
          v19 = v2[2];
          v20 = __OFADD__(v19, 1);
          v21 = v19 + 1;
          if (v20)
          {
            goto LABEL_21;
          }

          v2[2] = v21;
          v7 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v11 = v7;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
}

void sub_100695894(uint64_t a1, uint64_t *a2, uint64_t *a3, void (*a4)(_OWORD *, _BYTE *))
{
  if (*(a1 + 16))
  {
    sub_1000BC4D4(a2, a3);
    v6 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v6 = _swiftEmptyDictionarySingleton;
  }

  v7 = 1 << *(a1 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v10 = (v7 + 63) >> 6;
  v11 = v6 + 8;

  v12 = 0;
  while (v9)
  {
LABEL_15:
    v16 = __clz(__rbit64(v9)) | (v12 << 6);
    v17 = (*(a1 + 48) + 16 * v16);
    v19 = *v17;
    v18 = v17[1];
    sub_100013894(*(a1 + 56) + 32 * v16, v39);
    *&v38 = v19;
    *(&v38 + 1) = v18;
    v36[2] = v38;
    v37[0] = v39[0];
    v37[1] = v39[1];
    v36[0] = v38;

    swift_dynamicCast();
    a4(v37, v31);
    v32 = v28;
    v33 = v29;
    v34 = v30;
    a4(v31, v35);
    v28 = v32;
    v29 = v33;
    v30 = v34;
    a4(v35, v36);
    v20 = AnyHashable._rawHashValue(seed:)(v6[5]);
    v21 = -1 << *(v6 + 32);
    v22 = v20 & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~v11[v22 >> 6]) == 0)
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
        v27 = v11[v23];
        if (v27 != -1)
        {
          v13 = __clz(__rbit64(~v27)) + (v23 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v13 = __clz(__rbit64((-1 << v22) & ~v11[v22 >> 6])) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v9 &= v9 - 1;
    *(v11 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
    v14 = v6[6] + 40 * v13;
    *v14 = v28;
    *(v14 + 16) = v29;
    *(v14 + 32) = v30;
    a4(v36, (v6[7] + 32 * v13));
    ++v6[2];
  }

  while (1)
  {
    v15 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v15 >= v10)
    {

      return;
    }

    v9 = *(a1 + 64 + 8 * v15);
    ++v12;
    if (v9)
    {
      v12 = v15;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
}

void sub_100695B6C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1000BC4D4(&unk_1016B1490, &unk_1013C5310);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = _swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v10 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v10);
    ++v7;
    if (v5)
    {
      while (1)
      {
        v11 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v12 = v11 | (v10 << 6);
        v13 = (*(a1 + 48) + 16 * v12);
        v14 = *v13;
        v15 = v13[1];
        sub_100013894(*(a1 + 56) + 32 * v12, v29);
        *&v28 = v14;
        *(&v28 + 1) = v15;
        v26[2] = v28;
        v27[0] = v29[0];
        v27[1] = v29[1];
        v16 = v28;
        sub_10004D07C(v27, &v22);

        sub_1000BC4D4(&qword_1016A0B00, &unk_1013A48B0);
        swift_dynamicCast();
        sub_10004D07C(&v23, v25);
        sub_10004D07C(v25, v26);
        sub_10004D07C(v26, &v24);
        v17 = sub_100771D58(v16, *(&v16 + 1));
        if (v18)
        {
          *(v2[6] + 16 * v17) = v16;
          v8 = v17;

          v9 = (v2[7] + 32 * v8);
          sub_100007BAC(v9);
          sub_10004D07C(&v24, v9);
          v7 = v10;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v17;
          *(v2[6] + 16 * v17) = v16;
          sub_10004D07C(&v24, (v2[7] + 32 * v17));
          v19 = v2[2];
          v20 = __OFADD__(v19, 1);
          v21 = v19 + 1;
          if (v20)
          {
            goto LABEL_21;
          }

          v2[2] = v21;
          v7 = v10;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v10 = v7;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
}

uint64_t sub_100695DF8()
{
  if (qword_101694940 != -1)
  {
    swift_once();
  }

  OS_dispatch_queue.sync<A>(execute:)();
  v11[2] = v11[3];
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  sub_100150AB8();
  v1 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v3 = v2;
  v4 = objc_opt_self();
  isa = Data._bridgeToObjectiveC()().super.isa;
  v11[0] = 0;
  v6 = [v4 JSONObjectWithData:isa options:4 error:v11];

  v7 = v11[0];
  if (!v6)
  {
    v10 = v7;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    sub_100016590(v1, v3);

    return 0;
  }

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_1000BC4D4(&qword_1016BFE60, &qword_1013D6B40);
  if ((swift_dynamicCast() & 1) == 0)
  {

    sub_100016590(v1, v3);
    return 0;
  }

  sub_100695894(v11[0], &unk_1016C3040, &qword_1013B6518, sub_1001E6224);
  v9 = v8;

  sub_100016590(v1, v3);

  return v9;
}

unint64_t sub_10069609C(uint64_t a1)
{
  *(a1 + 8) = sub_1006960CC();
  result = sub_10059BFA0();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1006960CC()
{
  result = qword_1016A77F8;
  if (!qword_1016A77F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A77F8);
  }

  return result;
}

uint64_t sub_100696120()
{
  v1 = v0;
  _StringGuts.grow(_:)(21);
  type metadata accessor for UUID();
  sub_100003E8C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v2 = dispatch thunk of CustomStringConvertible.description.getter();

  v3._countAndFlagsBits = 8250;
  v3._object = 0xE200000000000000;
  String.append(_:)(v3);
  v4 = type metadata accessor for KeySyncMetadataDisplay(0);
  String.append(_:)(*(v1 + *(v4 + 20)));
  v5._countAndFlagsBits = 773860640;
  v5._object = 0xE400000000000000;
  String.append(_:)(v5);
  String.append(_:)(*(v1 + *(v4 + 28)));
  v6._countAndFlagsBits = 40;
  v6._object = 0xE100000000000000;
  String.append(_:)(v6);
  v7._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v7);

  v8._countAndFlagsBits = 539828265;
  v8._object = 0xE400000000000000;
  String.append(_:)(v8);
  type metadata accessor for Date();
  sub_100003E8C(&qword_1016969A0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v9._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v9);

  return v2;
}

uint64_t sub_1006962EC(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 64) = a2;
  *(v4 + 72) = v3;
  *(v4 + 104) = a3;
  *(v4 + 56) = a1;
  return _swift_task_switch(sub_100696314, 0, 0);
}

uint64_t sub_100696314()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 104);
  v3 = *(v0 + 56);
  v4 = swift_allocObject();
  swift_weakInit();
  sub_10001F280(v3, v0 + 16);
  v5 = swift_allocObject();
  *(v0 + 80) = v5;
  sub_10000A748((v0 + 16), v5 + 16);
  *(v5 + 56) = v4;
  *(v5 + 64) = v1;
  *(v5 + 72) = v2 & 1;
  v6 = swift_task_alloc();
  *(v0 + 88) = v6;
  *v6 = v0;
  v6[1] = sub_100696458;

  return withTimeout<A>(_:block:)(v6, 0x40AAD21B3B700000, 3, &unk_101390908, v5, &type metadata for () + 1);
}

uint64_t sub_100696458()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_100696574;
  }

  else
  {

    v2 = Database.await(state:);
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100696574()
{

  v1 = *(v0 + 8);

  return v1();
}

id sub_1006965D8(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  v4 = v3;
  v179 = a3;
  v180 = a2;
  v186 = a1;
  v152 = type metadata accessor for StableIdentifier(0);
  __chkstk_darwin(v152);
  v153 = &v150 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v166 = sub_1000BC4D4(&qword_1016A5978, &qword_101410D20);
  v159 = *(v166 - 8);
  __chkstk_darwin(v166);
  v158 = &v150 - v6;
  v7 = sub_1000BC4D4(&qword_1016A5980, &unk_1013B3480);
  __chkstk_darwin(v7 - 8);
  v157 = (&v150 - v8);
  v9 = sub_1000BC4D4(&qword_1016A5970, &unk_1013B3470);
  __chkstk_darwin(v9 - 8);
  v165 = &v150 - v10;
  v164 = sub_1000BC4D4(&qword_1016A7828, &unk_1013D7340);
  v156 = *(v164 - 8);
  __chkstk_darwin(v164);
  v154 = &v150 - v11;
  v12 = sub_1000BC4D4(&qword_1016A7830, &unk_1013D69E0);
  __chkstk_darwin(v12 - 8);
  v155 = (&v150 - v13);
  v14 = sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  __chkstk_darwin(v14 - 8);
  v161 = &v150 - v15;
  v170 = type metadata accessor for OwnedBeaconRecord(0);
  v160 = *(v170 - 8);
  __chkstk_darwin(v170);
  v169 = &v150 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1000BC4D4(&unk_101698C30, &unk_101392630);
  __chkstk_darwin(v17 - 8);
  v173 = &v150 - v18;
  v19 = type metadata accessor for ShareRecord(0);
  v168 = *(v19 - 8);
  __chkstk_darwin(v19 - 8);
  v167 = &v150 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  __chkstk_darwin(v21 - 8);
  v176 = &v150 - v22;
  v23 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  __chkstk_darwin(v23 - 8);
  v25 = (&v150 - v24);
  v181 = type metadata accessor for DirectorySequence();
  v185 = *(v181 - 8);
  __chkstk_darwin(v181);
  v27 = &v150 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v188 = type metadata accessor for URL();
  v184 = *(v188 - 8);
  v28 = __chkstk_darwin(v188);
  v163 = &v150 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __chkstk_darwin(v28);
  v162 = &v150 - v31;
  v32 = __chkstk_darwin(v30);
  v178 = &v150 - v33;
  v34 = __chkstk_darwin(v32);
  v36 = &v150 - v35;
  __chkstk_darwin(v34);
  v183 = &v150 - v37;
  v38 = static os_log_type_t.info.getter();
  if (qword_101695028 != -1)
  {
    swift_once();
  }

  v39 = qword_10177C370;
  v182 = sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v40 = swift_allocObject();
  v174 = xmmword_10138BBE0;
  *(v40 + 16) = xmmword_10138BBE0;
  v192 = *v4;
  sub_1000BC4D4(&qword_1016C1A50, &unk_1013A08C8);
  v41 = String.init<A>(describing:)();
  v43 = v42;
  *(v40 + 56) = &type metadata for String;
  v44 = sub_100008C00();
  *(v40 + 32) = v41;
  *(v40 + 40) = v43;
  *(v40 + 96) = &type metadata for String;
  *(v40 + 104) = v44;
  v175 = v44;
  *(v40 + 64) = v44;
  *(v40 + 72) = 0xD000000000000017;
  *(v40 + 80) = 0x800000010135D780;
  os_log(_:dso:log:_:_:)(v38, &_mh_execute_header, v39, "%@: %@", 6, 2, v40);

  v177 = v4;
  v45 = v4[35];
  sub_100025020(v186, &v190);
  if (!v191)
  {
    sub_10000B3A8(&v190, &qword_101696920, &unk_10138B200);
    return (v180)(0);
  }

  v151 = v36;
  v172 = v25;
  sub_10000A748(&v190, &v192);
  v46 = *(v45 + 168);
  v47 = objc_autoreleasePoolPush();
  if (qword_101694468 != -1)
  {
    swift_once();
  }

  v48 = v188;
  sub_1000076D4(v188, qword_10177A518);
  UUID.uuidString.getter();
  URL.appendingPathComponent(_:isDirectory:)();

  objc_autoreleasePoolPop(v47);
  v189 = _swiftEmptyArrayStorage;
  *&v190 = _swiftEmptyArrayStorage;
  v49 = [objc_opt_self() defaultManager];
  NSFileManager.deepSequence(at:includingPropertiesForKeys:options:)();

  v50 = v172;
  DirectorySequence.next()();
  v51 = v48;
  v52 = v184;
  v53 = *(v184 + 6);
  v54 = v53(v50, 1, v51);
  v171 = v45;
  if (v54 != 1)
  {
    v187 = v53;
    v56 = *(v52 + 4);
    v57 = v172;
    v58 = v151;
    do
    {
      v56(v58, v57, v51);
      v59 = objc_autoreleasePoolPush();
      sub_1005FF9CC(v58, v46, &v190, &v189);
      objc_autoreleasePoolPop(v59);
      (*(v52 + 1))(v58, v188);
      DirectorySequence.next()();
      v51 = v188;
    }

    while (v187(v57, 1, v188) != 1);
  }

  (*(v185 + 8))(v27, v181);
  v60 = static os_log_type_t.debug.getter();
  sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
  v61 = static OS_os_log.default.getter();
  v62 = swift_allocObject();
  *(v62 + 16) = v174;
  v63 = v190;
  v64 = *(v190 + 16);
  *(v62 + 56) = &type metadata for Int;
  *(v62 + 64) = &protocol witness table for Int;
  *(v62 + 32) = v64;
  sub_100003E8C(&qword_1016B14E0, &type metadata accessor for URL, &protocol conformance descriptor for URL);

  v65 = v183;
  v66 = dispatch thunk of CustomStringConvertible.description.getter();
  v67 = v175;
  *(v62 + 96) = &type metadata for String;
  *(v62 + 104) = v67;
  *(v62 + 72) = v66;
  *(v62 + 80) = v68;
  os_log(_:dso:log:_:_:)(v60, &_mh_execute_header, v61, "Found %i records at %@", 22, 2, v62);

  v69 = *(v184 + 1);
  v175 = v184 + 8;
  *&v174 = v69;
  v69(v65, v51);

  v70 = *(v63 + 16);
  if (v70)
  {
    *&v190 = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v71 = v63 + ((*(v168 + 80) + 32) & ~*(v168 + 80));
    v72 = *(v168 + 72);
    v73 = v177;
    v74 = v167;
    do
    {
      sub_100721C9C(v71, v74, type metadata accessor for ShareRecord);
      sub_100156F5C();
      sub_100721D04(v74, type metadata accessor for ShareRecord);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v71 += v72;
      --v70;
    }

    while (v70);

    v75 = v190;
  }

  else
  {

    v75 = _swiftEmptyArrayStorage;
    v73 = v177;
  }

  sub_10112A654(v75);

  v76 = v193;
  v77 = v194;
  v78 = sub_1000035D0(&v192, v193);
  v79 = sub_100B005BC(v78, v171, v76, v77);
  sub_100008BB8(0, &unk_1016BBE80, SPBeaconShare_ptr);
  sub_100009D18(&qword_101698BF0, &unk_1016BBE80, SPBeaconShare_ptr, &protocol conformance descriptor for NSObject);
  isa = Set._bridgeToObjectiveC()().super.isa;

  [v79 setShares:isa];

  v81 = v186;
  v82 = v178;
  if (qword_101694920 != -1)
  {
    swift_once();
  }

  v83 = sub_1011A30E0(v81);
  [v79 setSeparationState:v83];

  v84 = type metadata accessor for UUID();
  v85 = *(v84 - 8);
  v86 = v176;
  v85[2](v176, v81, v84);
  v172 = v85;
  v87 = v85[7];
  v183 = v84;
  (v87)(v86, 0, 1, v84);
  v88 = sub_1009C75D0(4, v86);
  sub_10000B3A8(v86, &qword_1016980D0, &unk_10138F3B0);
  sub_10112A684(v88);

  sub_100008BB8(0, &unk_1016B1680, SPSafeLocation_ptr);
  v187 = v79;
  sub_100009D18(qword_1016B1820, &unk_1016B1680, SPSafeLocation_ptr, &protocol conformance descriptor for NSObject);
  v89 = v187;
  v90 = Set._bridgeToObjectiveC()().super.isa;

  [v89 setSafeLocations:v90];

  v91 = v193;
  v92 = v194;
  v93 = sub_1000035D0(&v192, v193);
  [v89 setCanBeLeashedByHost:{sub_100A05A00(v93, v73, v91, v92) & 1}];
  result = [v89 setBeaconSeparationState:sub_1009C7E64(v81)];
  v94 = *(v73 + 40);
  v95 = v185;
  if (v94)
  {
    v96 = *(v94 + 280);

    v97 = static os_log_type_t.info.getter();
    v98 = v173;
    if (qword_101695030 != -1)
    {
      swift_once();
    }

    v99 = qword_10177C378;
    v100 = swift_allocObject();
    *(v100 + 16) = xmmword_101385D80;
    *(v100 + 56) = &type metadata for Bool;
    *(v100 + 64) = &protocol witness table for Bool;
    *(v100 + 32) = v96;
    os_log(_:dso:log:_:_:)(v97, &_mh_execute_header, v99, "thisDeviceConnectionAllowed: %i", v150);

    v101 = v187;
    [v187 setConnectionAllowed:v96];
    sub_10001F280(&v192, &v190);
    sub_1000BC4D4(&unk_1016AA470, &qword_10139FD30);
    v102 = type metadata accessor for SharedBeaconRecord(0);
    v103 = swift_dynamicCast();
    v104 = *(*(v102 - 8) + 56);
    if (v103)
    {
      v104(v98, 0, 1, v102);
      sub_10000B3A8(v98, &unk_101698C30, &unk_101392630);
      [v101 setConnectableDeviceCount:0];
LABEL_37:
      v148 = v180;
      v149 = v101;
      v148(v101);

      return sub_100007BAC(&v192);
    }

    v104(v98, 1, 1, v102);
    sub_10000B3A8(v98, &unk_101698C30, &unk_101392630);
    sub_10001F280(&v192, &v190);
    v105 = v161;
    v106 = v170;
    v107 = swift_dynamicCast();
    v108 = *(v160 + 56);
    if ((v107 & 1) == 0)
    {
      v108(v105, 1, 1, v106);
      sub_10000B3A8(v105, &unk_1016A9A20, &qword_10138B280);
      goto LABEL_37;
    }

    v108(v105, 0, 1, v106);
    sub_10002AB74(v105, v169, type metadata accessor for OwnedBeaconRecord);
    v109 = *(v171 + 168);
    if (qword_101694EB8 != -1)
    {
      swift_once();
    }

    v110 = v188;
    v111 = sub_1000076D4(v188, qword_10177C0D8);
    v112 = *(v184 + 2);
    v112(v82, v111, v110);
    v113 = v162;
    v112(v162, v82, v110);
    v114 = v164;
    v176 = *(v164 + 40);
    v115 = *(v95 + 56);
    v116 = v95 + 56;
    v117 = v154;
    v115(&v154[v176], 1, 1, v181);
    v112(v117, v113, v110);
    *(v117 + *(v114 + 36)) = v109;
    v182 = v112;
    v112(v163, v113, v110);

    v118 = v165;
    DirectorySequence.init(at:includingPropertiesForKeys:options:)();
    v119 = v174;
    (v174)(v113, v110);
    v119(v178, v110);
    v184 = v115;
    v185 = v116;
    v115(v118, 0, 1, v181);
    sub_10002311C(v118, v117 + v176, &qword_1016A5970, &unk_1013B3470);
    v120 = *(v156 + 56);
    v121 = v155;
    v122 = v164;
    v120(v155, 1, 1, v164);
    sub_10000B3A8(v121, &qword_1016A7838, &unk_1013EB250);
    sub_1000D2AD8(v117, v121, &qword_1016A7828, &unk_1013D7340);
    v120(v121, 0, 1, v122);
    v176 = sub_100B34BBC(v121);
    sub_10000B3A8(v121, &qword_1016A7830, &unk_1013D69E0);
    v171 = *(v171 + 168);
    if (qword_101694680 != -1)
    {
      swift_once();
    }

    v123 = sub_1000076D4(v110, qword_10177AC60);
    v124 = v178;
    v125 = v182;
    v182(v178, v123, v110);
    v126 = v162;
    v125(v162, v124, v110);
    v173 = *(v166 + 40);
    v127 = v166;
    v128 = v158;
    v184((v158 + v173), 1, 1, v181);
    v125(v128, v126, v110);
    *(v128 + *(v127 + 36)) = v171;
    v125(v163, v126, v110);

    v129 = v165;
    DirectorySequence.init(at:includingPropertiesForKeys:options:)();
    v130 = v174;
    (v174)(v126, v110);
    v130(v124, v110);
    v184(v129, 0, 1, v181);
    sub_10002311C(v129, v128 + v173, &qword_1016A5970, &unk_1013B3470);
    v131 = *(v159 + 56);
    v132 = v157;
    v133 = v166;
    v131(v157, 1, 1, v166);
    sub_10000B3A8(v132, &qword_1016A5988, &qword_1013B3490);
    sub_1000D2AD8(v128, v132, &qword_1016A5978, &qword_101410D20);
    v131(v132, 0, 1, v133);
    v134 = sub_100B33E08(v132);
    v135 = sub_10000B3A8(v132, &qword_1016A5980, &unk_1013B3480);
    __chkstk_darwin(v135);
    v136 = v186;
    *(&v150 - 2) = v186;
    v137 = sub_10013CF58(sub_100721E70, (&v150 - 8), v176)[2];

    __chkstk_darwin(v138);
    *(&v150 - 2) = v136;
    v139 = sub_10013CEF0(sub_10062CF74, (&v150 - 8), v134)[2];

    v140 = v137 + v139;
    if (__OFADD__(v137, v139))
    {
      __break(1u);
    }

    else
    {
      CurrentValueSubject.value.getter();
      v141 = v190;
      result = sub_10069CA80(v136, v190);
      v142 = v153;
      v101 = v187;
      if (!__OFADD__(v141, v140))
      {
        [v187 setConnectableDeviceCount:v141 + v140];
        sub_100721C9C(v169 + *(v170 + 24), v142, type metadata accessor for StableIdentifier);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        if (EnumCaseMultiPayload == 2)
        {
          sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);

          v147 = String._bridgeToObjectiveC()();

          [v101 setSerialNumber:v147];

          sub_100721D04(v169, type metadata accessor for OwnedBeaconRecord);
          v172[1](v142, v183);
        }

        else
        {
          if (EnumCaseMultiPayload == 1)
          {

            v144 = String._bridgeToObjectiveC()();

            [v101 setSerialNumber:v144];

            v145 = type metadata accessor for OwnedBeaconRecord;
            v146 = v169;
          }

          else
          {
            [v101 setSerialNumber:0];
            sub_100721D04(v169, type metadata accessor for OwnedBeaconRecord);
            v145 = type metadata accessor for StableIdentifier;
            v146 = v142;
          }

          sub_100721D04(v146, v145);
        }

        goto LABEL_37;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100697FA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v24 = a1;
  v25 = a3;
  v23 = a2;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v28 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v26 = *(v7 - 8);
  v27 = v7;
  __chkstk_darwin(v7);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = static os_log_type_t.info.getter();
  if (qword_101695028 != -1)
  {
    swift_once();
  }

  v11 = qword_10177C370;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_10138BBE0;
  aBlock[0] = *v3;
  sub_1000BC4D4(&qword_1016C1A50, &unk_1013A08C8);
  v13 = String.init<A>(describing:)();
  v15 = v14;
  *(v12 + 56) = &type metadata for String;
  v16 = sub_100008C00();
  *(v12 + 32) = v13;
  *(v12 + 40) = v15;
  *(v12 + 96) = &type metadata for String;
  *(v12 + 104) = v16;
  *(v12 + 64) = v16;
  *(v12 + 72) = 0xD000000000000022;
  *(v12 + 80) = 0x800000010135CC20;
  os_log(_:dso:log:_:_:)(v10, &_mh_execute_header, v11, "%@: %@", 6, 2, v12);

  v17 = swift_allocObject();
  v19 = v23;
  v18 = v24;
  v17[2] = v3;
  v17[3] = v19;
  v17[4] = v25;
  v17[5] = v18;
  aBlock[4] = sub_10071F068;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_10162E748;
  v20 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v29 = _swiftEmptyArrayStorage;
  sub_100003E8C(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v20);
  (*(v28 + 8))(v6, v4);
  (*(v26 + 8))(v9, v27);
}

uint64_t sub_1006983B8()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177B060);
  sub_1000076D4(v0, qword_10177B060);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100698438(int a1, uint64_t a2, uint64_t (*a3)(uint64_t a1), uint64_t (*a4)(uint64_t a1))
{
  v56 = a4;
  v55 = a3;
  LODWORD(v59) = a1;
  v5 = type metadata accessor for OwnedBeaconGroup(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5 - 8);
  v9 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v52 - v10;
  if (qword_1016950D0 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_1000076D4(v12, qword_10177C418);
  v13 = a2;
  sub_100721C9C(a2, v11, type metadata accessor for OwnedBeaconGroup);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v58 = v6;
    v17 = v7;
    v18 = v16;
    v19 = v9;
    v20 = swift_slowAlloc();
    v60 = v20;
    *v18 = 136315138;
    v21 = sub_10051F7B0();
    v23 = v22;
    sub_100721D04(v11, type metadata accessor for OwnedBeaconGroup);
    v24 = sub_1000136BC(v21, v23, &v60);

    *(v18 + 4) = v24;
    _os_log_impl(&_mh_execute_header, v14, v15, "updateFindMyNetwork for %s", v18, 0xCu);
    sub_100007BAC(v20);
    v9 = v19;

    v7 = v17;
    v6 = v58;
  }

  else
  {

    sub_100721D04(v11, type metadata accessor for OwnedBeaconGroup);
  }

  v54 = v7;
  v25 = v57;
  v26 = v57[35];
  v27 = v13;
  sub_100721C9C(v13, v9, type metadata accessor for OwnedBeaconGroup);
  v28 = *(v6 + 80);
  v58 = ~v28;
  v29 = swift_allocObject();
  v30 = v59 & 1;
  *(v29 + 16) = v59 & 1;
  v59 = v29;
  sub_10002AB74(v9, v29 + ((v28 + 17) & ~v28), type metadata accessor for OwnedBeaconGroup);
  sub_100721C9C(v13, v9, type metadata accessor for OwnedBeaconGroup);
  v31 = swift_allocObject();
  *(v31 + 16) = v30;
  v32 = v56;
  *(v31 + 24) = v55;
  *(v31 + 32) = v32;
  *(v31 + 40) = v25;
  sub_10002AB74(v9, v31 + ((v28 + 48) & ~v28), type metadata accessor for OwnedBeaconGroup);

  v33 = static os_log_type_t.default.getter();
  v34 = v9;
  if (qword_101695038 != -1)
  {
    swift_once();
  }

  v35 = qword_10177C380;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_101385D80;
  *(v36 + 56) = &type metadata for String;
  *(v36 + 64) = sub_100008C00();
  *(v36 + 32) = 0x65736C6166;
  *(v36 + 40) = 0xE500000000000000;
  os_log(_:dso:log:_:_:)(v33, &_mh_execute_header, v35, "Modify record. Disk First? (%@)", 31, 2, v36);

  v37 = objc_autoreleasePoolPush();
  sub_1011218E0(v27);
  v39 = v38;
  v57 = v38;
  objc_autoreleasePoolPop(v37);
  sub_1000BC4D4(&unk_1016B14B0, &qword_1013A08F0);
  v53 = v26;
  type metadata accessor for CloudKitCoordinator();
  OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  v56 = type metadata accessor for OwnedBeaconGroup;
  sub_100721C9C(v27, v34, type metadata accessor for OwnedBeaconGroup);
  v52 = v27;
  v40 = v58;
  v41 = v34;
  v42 = (v28 + 32) & v58;
  v43 = v54;
  v44 = swift_allocObject();
  v45 = v59;
  *(v44 + 16) = sub_100721A9C;
  *(v44 + 24) = v45;
  v55 = type metadata accessor for OwnedBeaconGroup;
  sub_10002AB74(v41, v44 + v42, type metadata accessor for OwnedBeaconGroup);

  sub_100FDCA40(v39, sub_100721B8C, v44);

  v46 = swift_allocObject();
  *(v46 + 16) = sub_100721B10;
  *(v46 + 24) = v31;

  Future.addFailure(block:)();

  sub_100721C9C(v52, v41, v56);
  v47 = (v28 + 16) & v40;
  v48 = (v43 + v47 + 7) & 0xFFFFFFFFFFFFFFF8;
  v49 = swift_allocObject();
  sub_10002AB74(v41, v49 + v47, v55);
  *(v49 + v48) = v53;
  v50 = (v49 + ((v48 + 15) & 0xFFFFFFFFFFFFFFF8));
  *v50 = sub_100721B10;
  v50[1] = v31;

  Future.addSuccess(block:)();
}

void sub_100698AE4(uint64_t a1, uint64_t a2, NSObject *a3)
{
  swift_beginAccess();
  *(a2 + 16) = a1;
  swift_errorRetain();

  dispatch_group_leave(a3);
}

uint64_t sub_100698B50(uint64_t a1, char a2, uint64_t a3)
{
  v6 = type metadata accessor for OwnedBeaconGroup(0);
  result = __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(a1 + *(result + 32)) = a2;
  if ((a2 & 1) == 0)
  {
    sub_100721C9C(a3, v9, type metadata accessor for OwnedBeaconGroup);
    sub_100522190();
    v10 = *&v9[*(v6 + 40)];

    sub_100721D04(v9, type metadata accessor for OwnedBeaconGroup);
    v11 = *(v6 + 40);

    *(a1 + v11) = v10;
  }

  return result;
}

uint64_t sub_100698C48(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v72 = a5;
  v73 = a6;
  v83 = a3;
  v84 = a4;
  v74 = a2;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v81 = *(v7 - 8);
  v82 = v7;
  __chkstk_darwin(v7);
  v78 = &v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v79 = *(v9 - 8);
  v80 = v9;
  __chkstk_darwin(v9);
  v77 = &v71 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS.QoSClass();
  v75 = *(v11 - 8);
  v76 = v11;
  __chkstk_darwin(v11);
  v13 = &v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for OwnedBeaconGroup(0);
  v15 = __chkstk_darwin(v14);
  v17 = &v71 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v15);
  v20 = &v71 - v19;
  __chkstk_darwin(v18);
  v22 = &v71 - v21;
  v23 = sub_1000BC4D4(&qword_101699398, &qword_101391900);
  __chkstk_darwin(v23);
  v25 = (&v71 - v24);
  sub_1000D2A70(a1, &v71 - v24, &qword_101699398, &qword_101391900);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v26 = *v25;
    if (qword_1016950D0 != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    sub_1000076D4(v27, qword_10177C418);
    sub_100721C9C(v73, v17, type metadata accessor for OwnedBeaconGroup);
    swift_errorRetain();
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      aBlock = swift_slowAlloc();
      *v30 = 136315394;
      v31 = sub_10051F7B0();
      v33 = v32;
      sub_100721D04(v17, type metadata accessor for OwnedBeaconGroup);
      v34 = sub_1000136BC(v31, v33, &aBlock);

      *(v30 + 4) = v34;
      *(v30 + 12) = 2082;
      v85 = v26;
      swift_errorRetain();
      sub_1000BC4D4(&qword_101696960, &unk_10138B220);
      v35 = String.init<A>(describing:)();
      v37 = sub_1000136BC(v35, v36, &aBlock);

      *(v30 + 14) = v37;
      _os_log_impl(&_mh_execute_header, v28, v29, "Failed to set FMN status for %s. Error %{public}s", v30, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      sub_100721D04(v17, type metadata accessor for OwnedBeaconGroup);
    }

    sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
    v57 = v75;
    v56 = v76;
    (*(v75 + 104))(v13, enum case for DispatchQoS.QoSClass.default(_:), v76);
    v58 = static OS_dispatch_queue.global(qos:)();
    (*(v57 + 8))(v13, v56);
    v59 = swift_allocObject();
    v60 = v84;
    v59[2] = v83;
    v59[3] = v60;
    v59[4] = v26;
    v90 = sub_1002EF79C;
    v91 = v59;
    aBlock = _NSConcreteStackBlock;
    v87 = 1107296256;
    v88 = sub_100006684;
    v89 = &unk_10162F670;
    v61 = _Block_copy(&aBlock);

    swift_errorRetain();
    v62 = v77;
    static DispatchQoS.unspecified.getter();
    v85 = _swiftEmptyArrayStorage;
    sub_100003E8C(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
    v63 = v78;
    v64 = v82;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v61);

    (*(v81 + 8))(v63, v64);
    (*(v79 + 8))(v62, v80);
  }

  sub_10002AB74(v25, v22, type metadata accessor for OwnedBeaconGroup);
  if (qword_1016950D0 != -1)
  {
    swift_once();
  }

  v38 = type metadata accessor for Logger();
  sub_1000076D4(v38, qword_10177C418);
  sub_100721C9C(v22, v20, type metadata accessor for OwnedBeaconGroup);
  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    aBlock = v42;
    *v41 = 136315138;
    v43 = sub_10051F7B0();
    v45 = v44;
    sub_100721D04(v20, type metadata accessor for OwnedBeaconGroup);
    v46 = sub_1000136BC(v43, v45, &aBlock);

    *(v41 + 4) = v46;
    _os_log_impl(&_mh_execute_header, v39, v40, "Successfully set FMN status for %s", v41, 0xCu);
    sub_100007BAC(v42);

    if ((v74 & 1) == 0)
    {
LABEL_10:
      sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
      v48 = v75;
      v47 = v76;
      (*(v75 + 104))(v13, enum case for DispatchQoS.QoSClass.default(_:), v76);
      v49 = static OS_dispatch_queue.global(qos:)();
      (*(v48 + 8))(v13, v47);
      v50 = swift_allocObject();
      v51 = v84;
      *(v50 + 16) = v83;
      *(v50 + 24) = v51;
      v90 = sub_100470308;
      v91 = v50;
      aBlock = _NSConcreteStackBlock;
      v87 = 1107296256;
      v88 = sub_100006684;
      v89 = &unk_10162F6C0;
      v52 = _Block_copy(&aBlock);

      v53 = v77;
      static DispatchQoS.unspecified.getter();
      v85 = _swiftEmptyArrayStorage;
      sub_100003E8C(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
      sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
      v54 = v78;
      v55 = v82;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v52);

      (*(v81 + 8))(v54, v55);
      (*(v79 + 8))(v53, v80);
      sub_100721D04(v22, type metadata accessor for OwnedBeaconGroup);
    }
  }

  else
  {

    sub_100721D04(v20, type metadata accessor for OwnedBeaconGroup);
    if ((v74 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  v66 = *(v72 + OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_bluetoothCommunicatorCoordinator);
  v67 = *(v14 + 28);
  v68 = swift_allocObject();
  v69 = v84;
  *(v68 + 16) = v83;
  *(v68 + 24) = v69;
  v70 = *(v66 + 24);

  sub_1013273F4(&v22[v67], v70, sub_100721C94, v68);

  return sub_100721D04(v22, type metadata accessor for OwnedBeaconGroup);
}

uint64_t sub_10069978C(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v37 = *(v6 - 8);
  __chkstk_darwin(v6);
  v36 = &v29[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for DispatchQoS();
  v34 = *(v8 - 8);
  v35 = v8;
  __chkstk_darwin(v8);
  v10 = &v29[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = type metadata accessor for DispatchQoS.QoSClass();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v29[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (a1)
  {
    v33 = v6;
    swift_errorRetain();
    if (qword_1016950D0 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_1000076D4(v15, qword_10177C418);
    swift_errorRetain();
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v32 = a2;
      v19 = v18;
      v31 = swift_slowAlloc();
      v38 = a1;
      aBlock[0] = v31;
      *v19 = 136446210;
      swift_errorRetain();
      sub_1000BC4D4(&qword_101696960, &unk_10138B220);
      v20 = String.init<A>(describing:)();
      v30 = v17;
      v22 = a3;
      v23 = sub_1000136BC(v20, v21, aBlock);

      *(v19 + 4) = v23;
      a3 = v22;
      _os_log_impl(&_mh_execute_header, v16, v30, "fakeClassicPairing failed due to %{public}s", v19, 0xCu);
      sub_100007BAC(v31);

      a2 = v32;
    }

    else
    {
    }

    v6 = v33;
  }

  sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
  (*(v12 + 104))(v14, enum case for DispatchQoS.QoSClass.default(_:), v11);
  v24 = static OS_dispatch_queue.global(qos:)();
  (*(v12 + 8))(v14, v11);
  v25 = swift_allocObject();
  *(v25 + 16) = a2;
  *(v25 + 24) = a3;
  aBlock[4] = sub_10041ABC0;
  aBlock[5] = v25;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_10162F738;
  v26 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v38 = _swiftEmptyArrayStorage;
  sub_100003E8C(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
  v27 = v36;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v26);

  (*(v37 + 8))(v27, v6);
  (*(v34 + 8))(v10, v35);
}

uint64_t sub_100699CD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  sub_1000BC4D4(&qword_1016A7258, &qword_1013B6050);
  v5[7] = swift_task_alloc();
  v5[8] = swift_task_alloc();
  v6 = swift_task_alloc();
  v5[9] = v6;
  *v6 = v5;
  v6[1] = sub_100699DB8;

  return daemon.getter();
}

uint64_t sub_100699DB8(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  v2[10] = a1;

  v3 = swift_task_alloc();
  v2[11] = v3;
  v4 = type metadata accessor for Daemon();
  v2[12] = v4;
  v5 = type metadata accessor for LegacyServiceContainer();
  v6 = sub_100003E8C(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_100003E8C(&unk_101698D70, type metadata accessor for LegacyServiceContainer, &unk_1014015E0);
  *v3 = v9;
  v3[1] = sub_100699F98;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_100699F98(uint64_t a1)
{
  v4 = *v2;
  v4[13] = a1;
  v4[14] = v1;

  if (v1)
  {

    v4[19] = v1;
    v5 = sub_10069A3F8;
    v6 = 0;
  }

  else
  {
    v5 = sub_10069A0D4;
    v6 = a1;
  }

  return _swift_task_switch(v5, v6, 0);
}

uint64_t sub_10069A0D4()
{
  v1 = v0[14];
  sub_1003A8474();
  v0[15] = v2;
  v0[16] = v1;
  sub_100003E8C(&qword_1016969E0, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  if (v1)
  {
    v5 = sub_10069A37C;
  }

  else
  {
    v5 = sub_10069A1B4;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_10069A1B4()
{

  v1 = swift_task_alloc();
  v0[17] = v1;
  *v1 = v0;
  v1[1] = sub_10069A268;
  v2 = v0[8];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[2];

  return sub_100659D60(v2, v5, v3, v4);
}

uint64_t sub_10069A268()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_10069A634;
  }

  else
  {
    v2 = sub_10069A494;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10069A37C()
{

  *(v0 + 152) = *(v0 + 128);

  return _swift_task_switch(sub_10069A3F8, 0, 0);
}

uint64_t sub_10069A3F8()
{
  v1 = v0[19];
  v2 = v0[5];
  swift_errorRetain();
  v2(v1);

  v3 = v0[1];

  return v3();
}

uint64_t sub_10069A494()
{
  v1 = *(v0 + 56);
  sub_1000D2A70(*(v0 + 64), v1, &qword_1016A7258, &qword_1013B6050);
  v2 = type metadata accessor for OwnerCommandManager.Error(0);
  v3 = (*(*(v2 - 8) + 48))(v1, 1, v2);
  v4 = *(v0 + 56);
  if (v3 == 1)
  {
    sub_10000B3A8(*(v0 + 56), &qword_1016A7258, &qword_1013B6050);
    v5 = 0;
  }

  else
  {
    sub_100003E8C(&qword_1016A7260, type metadata accessor for OwnerCommandManager.Error, &unk_1013B6288);
    v5 = swift_allocError();
    sub_10002AB74(v4, v6, type metadata accessor for OwnerCommandManager.Error);
  }

  v7 = *(v0 + 64);
  (*(v0 + 40))(v5);

  sub_10000B3A8(v7, &qword_1016A7258, &qword_1013B6050);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_10069A634()
{

  v1 = v0[18];
  v2 = v0[5];
  swift_errorRetain();
  v2(v1);

  v3 = v0[1];

  return v3();
}

uint64_t sub_10069A6D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  sub_1000BC4D4(&qword_1016A7258, &qword_1013B6050);
  v3[5] = swift_task_alloc();
  v3[6] = swift_task_alloc();
  v4 = swift_task_alloc();
  v3[7] = v4;
  *v4 = v3;
  v4[1] = sub_10069A7B4;

  return daemon.getter();
}

uint64_t sub_10069A7B4(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  v2[8] = a1;

  v3 = swift_task_alloc();
  v2[9] = v3;
  v4 = type metadata accessor for Daemon();
  v2[10] = v4;
  v5 = type metadata accessor for LegacyServiceContainer();
  v6 = sub_100003E8C(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_100003E8C(&unk_101698D70, type metadata accessor for LegacyServiceContainer, &unk_1014015E0);
  *v3 = v9;
  v3[1] = sub_10069A994;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_10069A994(uint64_t a1)
{
  v4 = *v2;
  v4[11] = a1;
  v4[12] = v1;

  if (v1)
  {

    v4[17] = v1;
    v5 = sub_10069ADF0;
    v6 = 0;
  }

  else
  {
    v5 = sub_10069AAD0;
    v6 = a1;
  }

  return _swift_task_switch(v5, v6, 0);
}

uint64_t sub_10069AAD0()
{
  v1 = v0[12];
  sub_1003A8474();
  v0[13] = v2;
  v0[14] = v1;
  sub_100003E8C(&qword_1016969E0, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  if (v1)
  {
    v5 = sub_10069AD74;
  }

  else
  {
    v5 = sub_10069ABB0;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_10069ABB0()
{

  v1 = swift_task_alloc();
  v0[15] = v1;
  *v1 = v0;
  v1[1] = sub_10069AC60;
  v2 = v0[6];
  v3 = v0[2];

  return sub_10065C190(v2, v3);
}

uint64_t sub_10069AC60()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_10069B02C;
  }

  else
  {
    v2 = sub_10069AE8C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10069AD74()
{

  *(v0 + 136) = *(v0 + 112);

  return _swift_task_switch(sub_10069ADF0, 0, 0);
}

uint64_t sub_10069ADF0()
{
  v1 = v0[17];
  v2 = v0[3];
  swift_errorRetain();
  v2(v1);

  v3 = v0[1];

  return v3();
}

uint64_t sub_10069AE8C()
{
  v1 = *(v0 + 40);
  sub_1000D2A70(*(v0 + 48), v1, &qword_1016A7258, &qword_1013B6050);
  v2 = type metadata accessor for OwnerCommandManager.Error(0);
  v3 = (*(*(v2 - 8) + 48))(v1, 1, v2);
  v4 = *(v0 + 40);
  if (v3 == 1)
  {
    sub_10000B3A8(*(v0 + 40), &qword_1016A7258, &qword_1013B6050);
    v5 = 0;
  }

  else
  {
    sub_100003E8C(&qword_1016A7260, type metadata accessor for OwnerCommandManager.Error, &unk_1013B6288);
    v5 = swift_allocError();
    sub_10002AB74(v4, v6, type metadata accessor for OwnerCommandManager.Error);
  }

  v7 = *(v0 + 48);
  (*(v0 + 24))(v5);

  sub_10000B3A8(v7, &qword_1016A7258, &qword_1013B6050);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_10069B02C()
{

  v1 = v0[16];
  v2 = v0[3];
  swift_errorRetain();
  v2(v1);

  v3 = v0[1];

  return v3();
}

uint64_t sub_10069B0D0(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v21 = a2;
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v24 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v22 = *(v6 - 8);
  v23 = v6;
  __chkstk_darwin(v6);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = static os_log_type_t.info.getter();
  if (qword_101695028 != -1)
  {
    swift_once();
  }

  v10 = qword_10177C370;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_10138BBE0;
  aBlock[0] = *v2;
  sub_1000BC4D4(&qword_1016C1A50, &unk_1013A08C8);
  v12 = String.init<A>(describing:)();
  v14 = v13;
  *(v11 + 56) = &type metadata for String;
  v15 = sub_100008C00();
  *(v11 + 32) = v12;
  *(v11 + 40) = v14;
  *(v11 + 96) = &type metadata for String;
  *(v11 + 104) = v15;
  *(v11 + 64) = v15;
  *(v11 + 72) = 0xD00000000000001DLL;
  *(v11 + 80) = 0x800000010135CCF0;
  os_log(_:dso:log:_:_:)(v9, &_mh_execute_header, v10, "%@: %@", 6, 2, v11);

  v16 = swift_allocObject();
  v17 = v21;
  v16[2] = v20;
  v16[3] = v17;
  v16[4] = v2;
  aBlock[4] = sub_10071F144;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_10162E888;
  v18 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v25 = _swiftEmptyArrayStorage;
  sub_100003E8C(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v18);
  (*(v24 + 8))(v5, v3);
  (*(v22 + 8))(v8, v23);
}

uint64_t sub_10069B4D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[3] = a4;
  v7 = type metadata accessor for UUID();
  v6[6] = v7;
  v6[7] = *(v7 - 8);
  v6[8] = swift_task_alloc();
  v6[9] = swift_task_alloc();
  v8 = swift_task_alloc();
  v6[10] = v8;
  *v8 = v6;
  v8[1] = sub_10069B5D4;

  return daemon.getter();
}

uint64_t sub_10069B5D4(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 88) = a1;

  v3 = swift_task_alloc();
  *(v2 + 96) = v3;
  v4 = type metadata accessor for Daemon();
  found = type metadata accessor for NotifyWhenFoundManager();
  v6 = sub_100003E8C(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_100003E8C(&unk_1016B10A0, type metadata accessor for NotifyWhenFoundManager, &unk_10139D670);
  *v3 = v9;
  v3[1] = sub_10069B7B0;

  return ActorServiceDaemon.getService<A>()(v4, found, v6, v7);
}

uint64_t sub_10069B7B0(uint64_t a1)
{
  *(*v2 + 104) = a1;

  if (v1)
  {

    v3 = sub_10069B900;
  }

  else
  {

    v3 = sub_10069BA34;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10069B900()
{
  if (qword_101694688 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177AC78);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Missing NotifyWhenFoundManager.", v4, 2u);
  }

  v5 = *(v0 + 24);

  v5(0);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_10069BA34()
{
  if (qword_101694940 != -1)
  {
    swift_once();
  }

  v1 = qword_10177B348;
  *(v0 + 112) = qword_10177B348;

  v2 = swift_task_alloc();
  *(v0 + 120) = v2;
  *v2 = v0;
  v2[1] = sub_10069BB34;

  return unsafeBlocking<A>(_:)(v0 + 16, sub_1000D2BE0, v1, &type metadata for Configuration);
}

uint64_t sub_10069BB34()
{

  return _swift_task_switch(sub_10069BC4C, 0, 0);
}

uint64_t sub_10069BC4C()
{
  v27 = v0;
  v1 = sub_101074630(*(v0 + 16));

  if (v1)
  {
    v2 = swift_task_alloc();
    *(v0 + 128) = v2;
    *v2 = v0;
    v2[1] = sub_10069C018;
    v3 = *(v0 + 40);

    return sub_10034F730(v3);
  }

  else
  {
    if (qword_101694688 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_1000076D4(v5, qword_10177AC78);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "Server configured: allowing both local and online NWF notifications.", v8, 2u);
    }

    if (qword_101694688 != -1)
    {
      swift_once();
    }

    v9 = *(v0 + 72);
    v10 = *(v0 + 48);
    v11 = *(v0 + 56);
    v12 = *(v0 + 40);
    sub_1000076D4(v5, qword_10177AC78);
    (*(v11 + 16))(v9, v12, v10);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();
    v15 = os_log_type_enabled(v13, v14);
    v16 = *(v0 + 72);
    v17 = *(v0 + 48);
    v18 = *(v0 + 56);
    if (v15)
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v26 = v20;
      *v19 = 141558531;
      *(v19 + 4) = 1752392040;
      *(v19 + 12) = 2081;
      sub_100003E8C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v21 = dispatch thunk of CustomStringConvertible.description.getter();
      v23 = v22;
      (*(v18 + 8))(v16, v17);
      v24 = sub_1000136BC(v21, v23, &v26);

      *(v19 + 14) = v24;
      *(v19 + 22) = 1024;
      *(v19 + 24) = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "Posted local NWF notification for beacon %{private,mask.hash}s %{BOOL}d.", v19, 0x1Cu);
      sub_100007BAC(v20);
    }

    else
    {

      (*(v18 + 8))(v16, v17);
    }

    (*(v0 + 24))(0);

    v25 = *(v0 + 8);

    return v25();
  }
}

uint64_t sub_10069C018(char a1)
{
  v4 = *v2;
  *(*v2 + 136) = v1;

  if (v1)
  {
    v5 = sub_10069C3C8;
  }

  else
  {
    *(v4 + 144) = a1 & 1;
    v5 = sub_10069C144;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10069C144()
{
  v22 = v0;
  v1 = *(v0 + 144);
  if (qword_101694688 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 72);
  v4 = *(v0 + 48);
  v3 = *(v0 + 56);
  v5 = *(v0 + 40);
  v6 = type metadata accessor for Logger();
  sub_1000076D4(v6, qword_10177AC78);
  (*(v3 + 16))(v2, v5, v4);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v0 + 72);
  v12 = *(v0 + 48);
  v11 = *(v0 + 56);
  if (v9)
  {
    v13 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v21 = v20;
    *v13 = 141558531;
    *(v13 + 4) = 1752392040;
    *(v13 + 12) = 2081;
    sub_100003E8C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    (*(v11 + 8))(v10, v12);
    v17 = sub_1000136BC(v14, v16, &v21);

    *(v13 + 14) = v17;
    *(v13 + 22) = 1024;
    *(v13 + 24) = v1;
    _os_log_impl(&_mh_execute_header, v7, v8, "Posted local NWF notification for beacon %{private,mask.hash}s %{BOOL}d.", v13, 0x1Cu);
    sub_100007BAC(v20);
  }

  else
  {

    (*(v11 + 8))(v10, v12);
  }

  (*(v0 + 24))(v1);

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_10069C3C8()
{
  v39 = v0;
  if (qword_101694688 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  v4 = *(v0 + 40);
  v3 = *(v0 + 48);
  v37 = type metadata accessor for Logger();
  sub_1000076D4(v37, qword_10177AC78);
  (*(v1 + 16))(v2, v4, v3);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  v7 = os_log_type_enabled(v5, v6);
  v9 = *(v0 + 56);
  v8 = *(v0 + 64);
  v10 = *(v0 + 48);
  if (v7)
  {
    v11 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v38 = v36;
    *v11 = 141558531;
    *(v11 + 4) = 1752392040;
    *(v11 + 12) = 2081;
    sub_100003E8C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v12 = dispatch thunk of CustomStringConvertible.description.getter();
    v14 = v13;
    (*(v9 + 8))(v8, v10);
    v15 = sub_1000136BC(v12, v14, &v38);

    *(v11 + 14) = v15;
    *(v11 + 22) = 2114;
    swift_errorRetain();
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 24) = v16;
    *v35 = v16;
    _os_log_impl(&_mh_execute_header, v5, v6, "Error reading posted state for %{private,mask.hash}s, %{public}@.", v11, 0x20u);
    sub_10000B3A8(v35, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v36);
  }

  else
  {

    (*(v9 + 8))(v8, v10);
  }

  if (qword_101694688 != -1)
  {
    swift_once();
  }

  v17 = *(v0 + 72);
  v18 = *(v0 + 48);
  v19 = *(v0 + 56);
  v20 = *(v0 + 40);
  sub_1000076D4(v37, qword_10177AC78);
  (*(v19 + 16))(v17, v20, v18);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();
  v23 = os_log_type_enabled(v21, v22);
  v24 = *(v0 + 72);
  v25 = *(v0 + 48);
  v26 = *(v0 + 56);
  if (v23)
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v38 = v28;
    *v27 = 141558531;
    *(v27 + 4) = 1752392040;
    *(v27 + 12) = 2081;
    sub_100003E8C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v29 = dispatch thunk of CustomStringConvertible.description.getter();
    v31 = v30;
    (*(v26 + 8))(v24, v25);
    v32 = sub_1000136BC(v29, v31, &v38);

    *(v27 + 14) = v32;
    *(v27 + 22) = 1024;
    *(v27 + 24) = 0;
    _os_log_impl(&_mh_execute_header, v21, v22, "Posted local NWF notification for beacon %{private,mask.hash}s %{BOOL}d.", v27, 0x1Cu);
    sub_100007BAC(v28);
  }

  else
  {

    (*(v26 + 8))(v24, v25);
  }

  (*(v0 + 24))(0);

  v33 = *(v0 + 8);

  return v33();
}

uint64_t sub_10069C89C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = static os_log_type_t.default.getter();
  if (qword_101695050 != -1)
  {
    swift_once();
  }

  v7 = qword_10177C398;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_101385D80;
  v9 = UUID.uuidString.getter();
  v11 = v10;
  *(v8 + 56) = &type metadata for String;
  *(v8 + 64) = sub_100008C00();
  *(v8 + 32) = v9;
  *(v8 + 40) = v11;
  os_log(_:dso:log:_:_:)(v6, &_mh_execute_header, v7, "#Durian: Command fetchFirmwareVersion identifier: %@", 52, 2, v8);

  sub_100891C74(a1);
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a3;

  Future.addSuccess(block:)();

  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;

  Future.addFailure(block:)();
}

uint64_t sub_10069CA80(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BeaconObservation(0);
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v57 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v10 = &v56 - v9;
  __chkstk_darwin(v8);
  v12 = &v56 - v11;
  v13 = sub_1000BC4D4(&qword_1016A42E0, &qword_1013B0010);
  v14 = __chkstk_darwin(v13 - 8);
  v59 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v18 = &v56 - v17;
  v19 = __chkstk_darwin(v16);
  v21 = &v56 - v20;
  __chkstk_darwin(v19);
  v23 = &v56 - v22;
  if (qword_101694920 != -1)
  {
    swift_once();
  }

  v24 = qword_10177B2E8;
  v61 = a1;
  v25 = sub_100035730(a1, sub_10069D268, 0);
  sub_1012BB138(v25, v23);

  v60 = v5;
  v26 = v23;
  v27 = v23;
  v28 = *(v5 + 48);
  v29 = v28(v27, 1, v4);
  if (a2 < 2)
  {
    v36 = v10;
    v30 = v26;
    if (v29 != 1)
    {
      sub_1000D2A70(v26, v18, &qword_1016A42E0, &qword_1013B0010);
      if (v28(v18, 1, v4) == 1)
      {
        sub_10000B3A8(v18, &qword_1016A42E0, &qword_1013B0010);
        return sub_10000B3A8(v30, &qword_1016A42E0, &qword_1013B0010);
      }

      v49 = v18[*(v4 + 24)];
      sub_100721D04(v18, type metadata accessor for BeaconObservation);
      if (v49 != 30)
      {
        return sub_10000B3A8(v30, &qword_1016A42E0, &qword_1013B0010);
      }
    }

    v56 = v28;
    v37 = type metadata accessor for UUID();
    v38 = v61;
    (*(*(v37 - 8) + 16))(v36, v61, v37);
    Date.init()();
    *(v36 + *(v4 + 24)) = 31;
    sub_1000BC4D4(&qword_1016AC9D0, &unk_10139D760);
    v39 = (*(v60 + 80) + 32) & ~*(v60 + 80);
    v40 = swift_allocObject();
    *(v40 + 16) = xmmword_101385D80;
    sub_100721C9C(v36, v40 + v39, type metadata accessor for BeaconObservation);
    v41 = type metadata accessor for Transaction();
    __chkstk_darwin(v41);
    *(&v56 - 4) = v24;
    *(&v56 - 3) = v40;
    *(&v56 - 2) = 0;
    *(&v56 - 1) = 0;
    static Transaction.named<A>(_:with:)();

    v42 = *(v58 + 280);
    sub_100025020(v38, &v62);
    if (v63)
    {
      sub_10000A748(&v62, v64);
      v43 = v65;
      v44 = v66;
      v45 = sub_1000035D0(v64, v65);
      v46 = sub_100B005BC(v45, v42, v43, v44);
      sub_100007BAC(v64);
      v47 = v46;
    }

    else
    {
      sub_10000B3A8(&v62, &qword_101696920, &unk_10138B200);
      v46 = 0;
    }

    v50 = v59;
    sub_1000D2A70(v30, v59, &qword_1016A42E0, &qword_1013B0010);
    if (v56(v50, 1, v4) == 1)
    {
      sub_10000B3A8(v50, &qword_1016A42E0, &qword_1013B0010);
      v51 = 0.0;
    }

    else
    {
      v52 = v57;
      sub_10002AB74(v50, v57, type metadata accessor for BeaconObservation);
      Date.timeIntervalSinceNow.getter();
      v51 = fabs(v53);
      sub_100721D04(v52, type metadata accessor for BeaconObservation);
    }

    v54 = swift_allocObject();
    *(v54 + 16) = v51;
    *(v54 + 24) = v46;
    static Transaction.asyncTask(name:block:)();

    v35 = v36;
    goto LABEL_22;
  }

  v30 = v26;
  if (v29 == 1)
  {
LABEL_5:
    v31 = type metadata accessor for UUID();
    (*(*(v31 - 8) + 16))(v12, v61, v31);
    Date.init()();
    v12[*(v4 + 24)] = 30;
    sub_1000BC4D4(&qword_1016AC9D0, &unk_10139D760);
    v32 = (*(v60 + 80) + 32) & ~*(v60 + 80);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_101385D80;
    sub_100721C9C(v12, v33 + v32, type metadata accessor for BeaconObservation);
    v34 = type metadata accessor for Transaction();
    __chkstk_darwin(v34);
    *(&v56 - 4) = v24;
    *(&v56 - 3) = v33;
    *(&v56 - 2) = 0;
    *(&v56 - 1) = 0;
    static Transaction.named<A>(_:with:)();

    v35 = v12;
LABEL_22:
    sub_100721D04(v35, type metadata accessor for BeaconObservation);
    return sub_10000B3A8(v30, &qword_1016A42E0, &qword_1013B0010);
  }

  sub_1000D2A70(v26, v21, &qword_1016A42E0, &qword_1013B0010);
  if (v28(v21, 1, v4) != 1)
  {
    v48 = v21[*(v4 + 24)];
    sub_100721D04(v21, type metadata accessor for BeaconObservation);
    if (v48 != 31)
    {
      return sub_10000B3A8(v30, &qword_1016A42E0, &qword_1013B0010);
    }

    goto LABEL_5;
  }

  sub_10000B3A8(v21, &qword_1016A42E0, &qword_1013B0010);
  return sub_10000B3A8(v30, &qword_1016A42E0, &qword_1013B0010);
}

uint64_t sub_10069D268(uint64_t a1)
{
  v2 = sub_10112ADD0(&off_101609B00);
  v3 = type metadata accessor for BeaconObservation(0);
  LOBYTE(a1) = sub_101120594(*(a1 + *(v3 + 24)), v2);

  return a1 & 1;
}

uint64_t sub_10069D2C0(uint64_t a1, double a2)
{
  *(v2 + 24) = a1;
  *(v2 + 16) = a2;
  return _swift_task_switch(sub_10069D2E4, 0, 0);
}

uint64_t sub_10069D2E4()
{
  v1 = *(v0 + 24);
  type metadata accessor for AnalyticsEvent(0);
  v2 = swift_allocObject();
  *(v0 + 32) = v2;
  swift_defaultActor_initialize();
  *(v2 + 14) = sub_100907BEC(_swiftEmptyArrayStorage);
  UUID.init()();
  v3 = OBJC_IVAR____TtC12searchpartyd14AnalyticsEvent_startTime;
  v4 = type metadata accessor for DispatchTime();
  v5 = *(*(v4 - 8) + 56);
  v5(&v2[v3], 1, 1, v4);
  v5(&v2[OBJC_IVAR____TtC12searchpartyd14AnalyticsEvent_endTime], 1, 1, v4);
  *(v2 + 15) = 0xD00000000000003DLL;
  *(v2 + 16) = 0x800000010135CA50;
  v6 = v1;

  return _swift_task_switch(sub_10069D440, v2, 0);
}

uint64_t sub_10069D440()
{
  sub_101172B1C(*(v0 + 32), *(v0 + 24), *(v0 + 16));

  type metadata accessor for AnalyticsPublisher();
  *(v0 + 40) = swift_allocObject();
  swift_defaultActor_initialize();
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_10069D520;
  v2 = *(v0 + 32);

  return sub_101163F78(v2);
}

uint64_t sub_10069D520()
{

  return _swift_task_switch(sub_10069D638, 0, 0);
}

uint64_t sub_10069D638()
{

  v1 = *(v0 + 8);

  return v1();
}

id sub_10069D698(void *a1, double a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000BC4D4(&qword_101699338, &unk_1013AAFB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10138BBE0;
  *(inited + 32) = 0xD000000000000016;
  *(inited + 40) = 0x800000010135CA90;
  *(inited + 48) = 0;
  *(inited + 56) = 1;
  *(inited + 64) = 0x6E6F697461727564;
  *(inited + 72) = 0xE800000000000000;
  v9 = objc_allocWithZone(NSNumber);
  v10 = a1;
  *(inited + 80) = [v9 initWithDouble:a2];
  *(inited + 88) = 0;
  v11 = sub_100908768(inited);
  swift_setDeallocating();
  sub_1000BC4D4(&qword_101699340, &qword_1013918A0);
  swift_arrayDestroy();
  if (!a1)
  {
    return v11;
  }

  result = [v10 systemVersion];
  if (result)
  {
    v13 = result;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v46 = v11;
    sub_100FFC418(v13, 0, 0xD000000000000013, 0x8000000101356E70, isUniquelyReferenced_nonNull_native);
    v15 = v46;
    result = [v10 systemVersion];
    if (result)
    {
      v16 = result;
      v17 = swift_isUniquelyReferenced_nonNull_native();
      v46 = v15;
      sub_100FFC418(v16, 0, 0xD00000000000001BLL, 0x8000000101356E90, v17);
      v18 = v46;
      v19 = [objc_allocWithZone(NSNumber) initWithInteger:{objc_msgSend(v10, "batteryLevel")}];
      v20 = swift_isUniquelyReferenced_nonNull_native();
      v46 = v18;
      sub_100FFC418(v19, 0, 0x4C79726574746162, 0xEC0000006C657665, v20);
      v21 = v46;
      v22 = [v10 taskInformation];
      type metadata accessor for SPBeaconTaskName(0);
      sub_100008BB8(0, &unk_1016AF850, SPBeaconTaskInformation_ptr);
      sub_100003E8C(&qword_1016964D0, type metadata accessor for SPBeaconTaskName, &unk_10138A8F4);
      v23 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      if (*(v23 + 16) && (v24 = sub_100777014(), (v25 & 1) != 0))
      {
        v26 = *(*(v23 + 56) + 8 * v24);

        v27 = [v26 state];

        v28 = v27 == 0;
      }

      else
      {

        v28 = 0;
      }

      v29 = swift_isUniquelyReferenced_nonNull_native();
      v46 = v21;
      sub_100FFC418(v28, 1, 0x6563697665447369, 0xEF6465687361654CLL, v29);
      v30 = v46;
      v31 = [v10 connected];
      v32 = swift_isUniquelyReferenced_nonNull_native();
      v46 = v30;
      sub_100FFC418(v31, 1, 0xD000000000000011, 0x8000000101350630, v32);
      v11 = v46;
      v33 = [v10 role];
      if (v33)
      {
        v34 = v33;
        v35 = [v33 role];

        if (!v35)
        {
          static String._unconditionallyBridgeFromObjectiveC(_:)();
          v35 = String._bridgeToObjectiveC()();
        }

        v36 = swift_isUniquelyReferenced_nonNull_native();
        v46 = v11;
        sub_100FFC418(v35, 0, 1701605234, 0xE400000000000000, v36);
        v11 = v46;
      }

      v37 = [objc_opt_self() sharedInstance];
      v38 = [v37 isInternalBuild];

      if (v38 && (v39 = [v10 identifier], static UUID._unconditionallyBridgeFromObjectiveC(_:)(), v39, UUID.uuidString.getter(), (*(v5 + 8))(v7, v4), v40 = String._bridgeToObjectiveC()(), , v41 = swift_isUniquelyReferenced_nonNull_native(), v46 = v11, sub_100FFC418(v40, 0, 0x6544646572696170, 0xEE00444965636976, v41), v11 = v46, (v42 = objc_msgSend(v10, "serialNumber")) != 0))
      {
        v43 = v42;
        v44 = swift_isUniquelyReferenced_nonNull_native();
        v46 = v11;
        sub_100FFC418(v43, 0, 0xD000000000000018, 0x8000000101350650, v44);

        return v46;
      }

      else
      {
      }

      return v11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10069DCD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v26 = a2;
  v27 = a3;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v31 = *(v6 - 8);
  v32 = v6;
  __chkstk_darwin(v6);
  v29 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for DispatchQoS();
  v28 = *(v30 - 8);
  __chkstk_darwin(v30);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = static os_log_type_t.info.getter();
  if (qword_101695028 != -1)
  {
    swift_once();
  }

  v11 = qword_10177C370;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_10138BBE0;
  aBlock[0] = *v3;
  sub_1000BC4D4(&qword_1016C1A50, &unk_1013A08C8);
  v13 = String.init<A>(describing:)();
  v15 = v14;
  *(v12 + 56) = &type metadata for String;
  v16 = sub_100008C00();
  *(v12 + 32) = v13;
  *(v12 + 40) = v15;
  *(v12 + 96) = &type metadata for String;
  *(v12 + 104) = v16;
  *(v12 + 64) = v16;
  *(v12 + 72) = 0xD00000000000001FLL;
  *(v12 + 80) = 0x800000010135D810;
  os_log(_:dso:log:_:_:)(v10, &_mh_execute_header, v11, "%@: %@", 6, 2, v12);

  v17 = static os_log_type_t.default.getter();
  if (qword_1016950B0 != -1)
  {
    swift_once();
  }

  v18 = qword_10177C3F8;
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_101385D80;
  *(v19 + 56) = sub_1000BC4D4(&unk_1016BF350, &unk_1013E4AF0);
  *(v19 + 64) = sub_1000041A4(&qword_1016A78E8, &unk_1016BF350, &unk_1013E4AF0, &protocol conformance descriptor for [A]);
  *(v19 + 32) = a1;

  os_log(_:dso:log:_:_:)(v17, &_mh_execute_header, v18, "unknownBeacons for uuids: %{public}@", 36, 2, v19);

  v20 = swift_allocObject();
  v20[2] = a1;
  v20[3] = v4;
  v21 = v27;
  v20[4] = v26;
  v20[5] = v21;
  aBlock[4] = sub_10072142C;
  aBlock[5] = v20;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_10162F2B0;
  v22 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v33 = _swiftEmptyArrayStorage;
  sub_100003E8C(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
  v23 = v29;
  v24 = v32;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v22);
  (*(v31 + 8))(v23, v24);
  (*(v28 + 8))(v9, v30);
}

void *sub_10069E1E0(uint64_t a1, unint64_t a2, void (*a3)(void *), uint64_t a4)
{
  v96 = a4;
  v97 = a3;
  v4 = a2;
  v93 = a2;
  v95 = type metadata accessor for SharedBeaconRecord(0);
  v109 = *(v95 - 8);
  v6 = __chkstk_darwin(v95);
  v108 = &v91 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v100 = &v91 - v8;
  v9 = sub_1000BC4D4(&unk_1016C7C90, &qword_1013BB4B0);
  __chkstk_darwin(v9 - 8);
  v11 = (&v91 - v10);
  v113 = type metadata accessor for WildModeAssociationRecord(0);
  v12 = *(v113 - 8);
  v13 = __chkstk_darwin(v113);
  v101 = (&v91 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = __chkstk_darwin(v13);
  v105 = &v91 - v16;
  v17 = __chkstk_darwin(v15);
  v104 = &v91 - v18;
  v19 = __chkstk_darwin(v17);
  v111 = (&v91 - v20);
  __chkstk_darwin(v19);
  v110 = (&v91 - v21);
  v22 = type metadata accessor for UUID();
  v23 = __chkstk_darwin(v22);
  v92 = &v91 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v23);
  v94 = &v91 - v26;
  v27 = __chkstk_darwin(v25);
  v30 = &v91 - v29;
  v116 = _swiftEmptyArrayStorage;
  v31 = *(a1 + 16);
  v32 = *(v4 + 280);
  v102 = v12;
  v103 = v27;
  v98 = v28;
  v112 = v32;
  if (v31)
  {
    v4 = v28 + 16;
    v33 = *(v28 + 16);
    v34 = a1 + ((*(v28 + 80) + 32) & ~*(v28 + 80));
    v106 = *(v28 + 72);
    v107 = v33;
    v35 = (v12 + 48);
    v36 = (v28 + 8);
    v37 = _swiftEmptyArrayStorage;
    v99 = v28 + 16;
    v33(v30, v34, v22);
    while (1)
    {
      sub_100023184(v30, v11);
      if ((*v35)(v11, 1, v113) == 1)
      {
        (*v36)(v30, v22);
        sub_10000B3A8(v11, &unk_1016C7C90, &qword_1013BB4B0);
      }

      else
      {
        v38 = v110;
        sub_10002AB74(v11, v110, type metadata accessor for WildModeAssociationRecord);
        sub_100721C9C(v38, v111, type metadata accessor for WildModeAssociationRecord);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v37 = sub_100A5D218(0, v37[2] + 1, 1, v37);
        }

        v40 = v37[2];
        v39 = v37[3];
        if (v40 >= v39 >> 1)
        {
          v37 = sub_100A5D218((v39 > 1), v40 + 1, 1, v37);
        }

        sub_100721D04(v110, type metadata accessor for WildModeAssociationRecord);
        v22 = v103;
        (*v36)(v30, v103);
        v37[2] = v40 + 1;
        sub_10002AB74(v111, v37 + ((*(v102 + 80) + 32) & ~*(v102 + 80)) + *(v102 + 72) * v40, type metadata accessor for WildModeAssociationRecord);
        v116 = v37;
        v4 = v99;
      }

      v34 += v106;
      if (!--v31)
      {
        break;
      }

      v107(v30, v34, v22);
    }
  }

  else
  {
    v116 = sub_10125E224();
  }

  type metadata accessor for BeaconKeyManager(0);
  OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  v41 = v115;
  v42 = sub_100030068();
  v43 = *(v42 + 2);
  if (v43)
  {
    v44 = 0;
    v45 = _swiftEmptyArrayStorage;
    v46 = v95;
    v4 = v100;
    while (v44 < *(v42 + 2))
    {
      v47 = (*(v109 + 80) + 32) & ~*(v109 + 80);
      v48 = *(v109 + 72);
      sub_100721C9C(&v42[v47 + v48 * v44], v4, type metadata accessor for SharedBeaconRecord);
      if (*(v4 + *(v46 + 64)) == 5)
      {
        sub_10002AB74(v4, v108, type metadata accessor for SharedBeaconRecord);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v115 = v45;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_10112421C(0, v45[2] + 1, 1);
          v45 = v115;
        }

        v51 = v45[2];
        v50 = v45[3];
        if (v51 >= v50 >> 1)
        {
          sub_10112421C((v50 > 1), v51 + 1, 1);
          v45 = v115;
        }

        v45[2] = v51 + 1;
        sub_10002AB74(v108, v45 + v47 + v51 * v48, type metadata accessor for SharedBeaconRecord);
        v4 = v100;
      }

      else
      {
        sub_100721D04(v4, type metadata accessor for SharedBeaconRecord);
      }

      if (v43 == ++v44)
      {
        goto LABEL_25;
      }
    }

    __break(1u);
  }

  else
  {
    v45 = _swiftEmptyArrayStorage;
LABEL_25:

    v52 = swift_allocObject();
    *(v52 + 16) = v45;
    *(v52 + 24) = v41;

    sub_1000BC4D4(&qword_1016A78F0, &qword_1013DBEC0);
    unsafeFromAsyncTask<A>(_:)();

    sub_10039A050(v115);
    v53 = v116;
    v54 = v116[2];
    if (!v54)
    {
      v97(_swiftEmptyArrayStorage);
    }

    v111 = v41;
    v44 = 0;
    v55 = _swiftEmptyArrayStorage;
    v56 = v102;
    while (v44 < v53[2])
    {
      v57 = (*(v56 + 80) + 32) & ~*(v56 + 80);
      v58 = *(v56 + 72);
      v4 = v104;
      sub_100721C9C(v53 + v57 + v58 * v44, v104, type metadata accessor for WildModeAssociationRecord);
      v59 = *(v4 + *(v113 + 64));
      if (v59 == 8 || (v59 & 0xFA) == 0)
      {
        sub_100721D04(v4, type metadata accessor for WildModeAssociationRecord);
      }

      else
      {
        sub_10002AB74(v4, v105, type metadata accessor for WildModeAssociationRecord);
        v61 = swift_isUniquelyReferenced_nonNull_native();
        v115 = v55;
        if ((v61 & 1) == 0)
        {
          sub_101124B2C(0, v55[2] + 1, 1);
          v56 = v102;
          v55 = v115;
        }

        v63 = v55[2];
        v62 = v55[3];
        v4 = v63 + 1;
        if (v63 >= v62 >> 1)
        {
          sub_101124B2C((v62 > 1), v63 + 1, 1);
          v56 = v102;
          v55 = v115;
        }

        v55[2] = v4;
        sub_10002AB74(v105, v55 + v57 + v63 * v58, type metadata accessor for WildModeAssociationRecord);
      }

      if (v54 == ++v44)
      {
        v64 = v55[2];
        if (v64)
        {
          v113 = v53;
          v115 = _swiftEmptyArrayStorage;
          specialized ContiguousArray.reserveCapacity(_:)();
          v65 = v55 + v57;
          v66 = v101;
          do
          {
            sub_100721C9C(v65, v66, type metadata accessor for WildModeAssociationRecord);
            v67 = sub_10125EC08(v66);
            sub_1006A35F4(v66);
            type metadata accessor for SPBeaconTaskName(0);
            sub_100008BB8(0, &unk_1016AF850, SPBeaconTaskInformation_ptr);
            sub_100003E8C(&qword_1016964D0, type metadata accessor for SPBeaconTaskName, &unk_10138A8F4);
            v66 = v101;
            isa = Dictionary._bridgeToObjectiveC()().super.isa;

            [v67 setTaskInformation:isa];

            sub_100721D04(v66, type metadata accessor for WildModeAssociationRecord);
            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            specialized ContiguousArray._endMutation()();
            v65 += v58;
            --v64;
          }

          while (v64);

          v4 = v115;
        }

        else
        {

          v4 = _swiftEmptyArrayStorage;
        }

        v44 = v94;
        if (qword_101694910 != -1)
        {
          goto LABEL_70;
        }

        goto LABEL_46;
      }
    }
  }

  __break(1u);
LABEL_70:
  swift_once();
LABEL_46:
  v70 = type metadata accessor for Logger();
  sub_1000076D4(v70, qword_10177B2D0);

  v71 = Logger.logObject.getter();
  v72 = static os_log_type_t.debug.getter();
  if (!os_log_type_enabled(v71, v72))
  {

LABEL_67:
    v97(v4);
  }

  v73 = swift_slowAlloc();
  v112 = swift_slowAlloc();
  v115 = v112;
  *v73 = 134218242;
  if (v4 >> 62)
  {
    v74 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v74 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *(v73 + 4) = v74;

  *(v73 + 12) = 2082;
  if (v4 >> 62)
  {
    v75 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v75 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  LODWORD(v113) = v72;
  if (!v75)
  {
LABEL_66:
    v87 = Array.description.getter();
    v89 = v88;

    v90 = sub_1000136BC(v87, v89, &v115);

    *(v73 + 14) = v90;
    _os_log_impl(&_mh_execute_header, v71, v113, "unknownBeacons[%ld]: %{public}s ", v73, 0x16u);
    sub_100007BAC(v112);

    goto LABEL_67;
  }

  v114 = _swiftEmptyArrayStorage;
  result = sub_101123D4C(0, v75 & ~(v75 >> 63), 0);
  if ((v75 & 0x8000000000000000) == 0)
  {
    v109 = v73;
    v110 = v71;
    v76 = v114;
    if ((v4 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v75; ++i)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
        v78 = [swift_unknownObjectRetain() identifier];
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();
        swift_unknownObjectRelease_n();

        v114 = v76;
        v80 = v76[2];
        v79 = v76[3];
        if (v80 >= v79 >> 1)
        {
          sub_101123D4C((v79 > 1), v80 + 1, 1);
          v76 = v114;
        }

        v76[2] = v80 + 1;
        (*(v98 + 32))(v76 + ((*(v98 + 80) + 32) & ~*(v98 + 80)) + *(v98 + 72) * v80, v44, v103);
      }
    }

    else
    {
      v81 = (v4 + 32);
      v82 = v92;
      do
      {
        v83 = *v81;
        v84 = [v83 identifier];
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v114 = v76;
        v86 = v76[2];
        v85 = v76[3];
        if (v86 >= v85 >> 1)
        {
          sub_101123D4C((v85 > 1), v86 + 1, 1);
          v76 = v114;
        }

        v76[2] = v86 + 1;
        (*(v98 + 32))(v76 + ((*(v98 + 80) + 32) & ~*(v98 + 80)) + *(v98 + 72) * v86, v82, v103);
        ++v81;
        --v75;
      }

      while (v75);
    }

    v71 = v110;
    v73 = v109;
    goto LABEL_66;
  }

  __break(1u);
  return result;
}

uint64_t sub_10069F014(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  return _swift_task_switch(sub_10069F038, 0, 0);
}

uint64_t sub_10069F038()
{
  v0[2] = v0[4];
  v1 = swift_task_alloc();
  v0[6] = v1;
  v2 = sub_1000BC4D4(&qword_101697720, &unk_101392640);
  v3 = type metadata accessor for WildModeAssociationRecord(0);
  v4 = sub_1000041A4(&qword_1016A78F8, &qword_101697720, &unk_101392640, &protocol conformance descriptor for [A]);
  *v1 = v0;
  v1[1] = sub_10069F160;
  v5 = v0[5];

  return Sequence.asyncCompactMap<A>(_:)(&unk_1013B6910, v5, v2, v3, v4);
}

uint64_t sub_10069F160(uint64_t a1)
{
  v4 = *v2;

  if (v1)
  {
  }

  else
  {
    *(v4 + 56) = a1;

    return _swift_task_switch(sub_10069F29C, 0, 0);
  }
}

uint64_t sub_10069F2BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v3[5] = type metadata accessor for SharedBeaconRecord(0);
  v3[6] = swift_task_alloc();
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();
  sub_1000BC4D4(&qword_101697268, &qword_101394FE0);
  v3[9] = swift_task_alloc();
  sub_1000BC4D4(&qword_1016A62A0, &unk_101396E10);
  v3[10] = swift_task_alloc();
  sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v4 = type metadata accessor for Date();
  v3[14] = v4;
  v3[15] = *(v4 - 8);
  v3[16] = swift_task_alloc();
  sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v3[17] = swift_task_alloc();
  v5 = type metadata accessor for WildModeAssociationRecord(0);
  v3[18] = v5;
  v3[19] = *(v5 - 8);
  v3[20] = swift_task_alloc();
  sub_1000BC4D4(&qword_1016A40D0, &unk_10138BE70);
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();
  v3[25] = swift_task_alloc();
  v3[26] = swift_task_alloc();
  v6 = type metadata accessor for MACAddress();
  v3[27] = v6;
  v3[28] = *(v6 - 8);
  v3[29] = swift_task_alloc();
  v3[30] = swift_task_alloc();
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();
  v3[33] = swift_task_alloc();
  v7 = type metadata accessor for ObservedAdvertisement(0);
  v3[34] = v7;
  v3[35] = *(v7 - 8);
  v3[36] = swift_task_alloc();
  v3[37] = swift_task_alloc();
  sub_1000BC4D4(&unk_10169BB50, &unk_101395760);
  v3[38] = swift_task_alloc();
  v3[39] = swift_task_alloc();
  v3[40] = swift_task_alloc();
  v3[41] = swift_task_alloc();
  v3[42] = type metadata accessor for BeaconIdentifier(0);
  v3[43] = swift_task_alloc();
  v3[44] = swift_task_alloc();
  v8 = type metadata accessor for UUID();
  v3[45] = v8;
  v3[46] = *(v8 - 8);
  v3[47] = swift_task_alloc();
  v3[48] = swift_task_alloc();
  v3[49] = swift_task_alloc();
  v9 = swift_task_alloc();
  v3[50] = v9;
  *v9 = v3;
  v9[1] = sub_10069F7C0;

  return daemon.getter();
}

uint64_t sub_10069F7C0(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 408) = a1;

  v3 = swift_task_alloc();
  *(v2 + 416) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for ObservationStoreService();
  v6 = sub_100003E8C(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_100003E8C(&qword_1016AA450, type metadata accessor for ObservationStoreService, &unk_101404B80);
  *v3 = v9;
  v3[1] = sub_10069F99C;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_10069F99C(uint64_t a1)
{
  *(*v2 + 424) = a1;

  if (v1)
  {

    v3 = sub_10069FAEC;
  }

  else
  {

    v3 = sub_10069FFA4;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10069FAEC()
{
  if (qword_101694780 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177AE40);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "No ObservationStoreService available.", v4, 2u);
  }

  v5 = type metadata accessor for Daemon.Error();
  sub_100003E8C(&qword_101697368, &type metadata accessor for Daemon.Error, &protocol conformance descriptor for Daemon.Error);
  swift_allocError();
  *v6 = 0xD000000000000017;
  v6[1] = 0x800000010134D340;
  (*(*(v5 - 8) + 104))(v6, enum case for Daemon.Error.missingService(_:), v5);
  swift_willThrow();
  if (qword_101694780 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v1, qword_10177AE40);
  swift_errorRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v11;
    *v10 = v11;
    _os_log_impl(&_mh_execute_header, v7, v8, "Failed to create unknownBeacon from wild mode advt: %@", v9, 0xCu);
    sub_10000B3A8(v10, &qword_10169BB30, &unk_10138B3C0);
  }

  else
  {
  }

  (*(v0[19] + 56))(v0[2], 1, 1, v0[18]);

  v12 = v0[1];

  return v12();
}

uint64_t sub_10069FFA4()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 24);
  if (*(v2 + v1[11]) == 76)
  {
    v3 = *(v2 + v1[12]);
    v4 = HIDWORD(v3) == 0;
    v5 = v3 == 21760;
    v6 = v3 == 22034;
    v7 = v3 == 22034;
    if (v6)
    {
      v5 = 1;
    }

    if (v4 && v5)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }

    v9 = v4 && v7;
    if (v9)
    {
      v10 = 4;
    }

    else
    {
      v10 = v8;
    }
  }

  else
  {
    LOBYTE(v9) = 0;
    v10 = 2;
  }

  *(v0 + 589) = v9 & 1;
  *(v0 + 588) = v10;
  *(v0 + 432) = *(*(v0 + 32) + OBJC_IVAR____TtC12searchpartyd16BeaconKeyManager_keyStore);
  v11 = v1[5];
  *(v0 + 584) = v11;
  v12 = getuid();
  sub_1000294F0(v12);
  v13 = swift_task_alloc();
  *(v0 + 440) = v13;
  *v13 = v0;
  v13[1] = sub_1006A00F0;
  v14 = *(v0 + 392);

  return sub_100686048(v14, v2 + v11, 0);
}

uint64_t sub_1006A00F0(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 392);
  v6 = *(*v3 + 368);
  v7 = *(*v3 + 360);
  v4[56] = a1;
  v4[57] = a2;
  v4[58] = v2;

  v8 = *(v6 + 8);
  v4[59] = v8;
  v4[60] = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v5, v7);
  if (v2)
  {
    v9 = sub_1006A2820;
  }

  else
  {
    v9 = sub_1006A027C;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_1006A027C()
{
  v1 = *(v0 + 584);
  if (*(v0 + 456) >> 60 == 15)
  {
    v2 = *(v0 + 24);
    v3 = getuid();
    sub_1000294F0(v3);
    v4 = swift_task_alloc();
    *(v0 + 520) = v4;
    *v4 = v0;
    v4[1] = sub_1006A130C;
    v5 = *(v0 + 376);

    return sub_100686048(v5, v2 + v1, 1);
  }

  else
  {
    v7 = *(v0 + 360);
    v8 = *(v0 + 368);
    v9 = *(v0 + 352);
    v10 = *(v0 + 336);
    v11 = *(v0 + 24);
    v12 = getuid();
    sub_1000294F0(v12);
    v13 = *(v10 + 20);
    v14 = *(v8 + 16);
    *(v0 + 488) = v14;
    *(v0 + 496) = (v8 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v14(v9 + v13, v11 + v1, v7);
    v15 = swift_task_alloc();
    *(v0 + 504) = v15;
    *v15 = v0;
    v15[1] = sub_1006A0418;
    v16 = *(v0 + 352);
    v17 = *(v0 + 328);

    return sub_1010CE088(v17, v16);
  }
}

uint64_t sub_1006A0418()
{
  *(*v1 + 512) = v0;

  if (v0)
  {
    v2 = sub_1006A2B7C;
  }

  else
  {
    v2 = sub_1006A052C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1006A052C()
{
  v106 = v0;
  v1 = *(v0 + 320);
  v2 = *(v0 + 272);
  v3 = *(v0 + 280);
  sub_1000D2A70(*(v0 + 328), v1, &unk_10169BB50, &unk_101395760);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    sub_10000B3A8(*(v0 + 320), &unk_10169BB50, &unk_101395760);
    if (qword_101694780 != -1)
    {
      swift_once();
    }

    v4 = *(v0 + 64);
    v5 = *(v0 + 24);
    v6 = type metadata accessor for Logger();
    sub_1000076D4(v6, qword_10177AE40);
    sub_100721C9C(v5, v4, type metadata accessor for SharedBeaconRecord);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.debug.getter();
    v9 = os_log_type_enabled(v7, v8);
    v11 = *(v0 + 448);
    v10 = *(v0 + 456);
    if (v9)
    {
      v100 = *(v0 + 328);
      v102 = *(v0 + 352);
      v12 = *(v0 + 64);
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v105 = v14;
      *v13 = 141558275;
      *(v13 + 4) = 1752392040;
      *(v13 + 12) = 2081;
      sub_100003E8C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v15 = dispatch thunk of CustomStringConvertible.description.getter();
      v17 = v16;
      sub_100721D04(v12, type metadata accessor for SharedBeaconRecord);
      v18 = sub_1000136BC(v15, v17, &v105);

      *(v13 + 14) = v18;
      _os_log_impl(&_mh_execute_header, v7, v8, "latest observation for primary sequence not found in Observations / Beacon Info DB for imported beacon %{private,mask.hash}s", v13, 0x16u);
      sub_100007BAC(v14);

      sub_100006654(v11, v10);
      sub_10000B3A8(v100, &unk_10169BB50, &unk_101395760);
      v19 = v102;
    }

    else
    {
      v21 = *(v0 + 352);
      v22 = *(v0 + 328);
      v23 = *(v0 + 64);

      sub_100006654(v11, v10);
      sub_100721D04(v23, type metadata accessor for SharedBeaconRecord);
      sub_10000B3A8(v22, &unk_10169BB50, &unk_101395760);
      v19 = v21;
    }

    sub_100721D04(v19, type metadata accessor for BeaconIdentifier);
    v24 = *(v0 + 584);
    v25 = *(v0 + 24);
    v26 = getuid();
    sub_1000294F0(v26);
    v27 = swift_task_alloc();
    *(v0 + 520) = v27;
    *v27 = v0;
    v27[1] = sub_1006A130C;
    v28 = *(v0 + 376);

    return sub_100686048(v28, v25 + v24, 1);
  }

  v20 = *(v0 + 589);
  sub_10002AB74(*(v0 + 320), *(v0 + 296), type metadata accessor for ObservedAdvertisement);
  if (v20 & 1) != 0 || (*(*(v0 + 296) + *(*(v0 + 272) + 56)))
  {
    v88 = 0;
    v101 = 0xB000000000000000;
  }

  else
  {
    sub_100017D5C(*(v0 + 448), *(v0 + 456));
    v101 = *(v0 + 456);
    v88 = *(v0 + 448);
  }

  v30 = *(v0 + 448);
  v31 = *(v0 + 456);
  v32 = *(v0 + 216);
  v33 = *(v0 + 224);
  v34 = *(v0 + 200);
  sub_100017D5C(v30, v31);
  v35 = static MACAddress.length.getter();
  sub_10002EA98(v35, v30, v31, &v105);
  MACAddress.init(data:type:)();
  v103 = *(v33 + 48);
  result = v103(v34, 1, v32);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_24;
  }

  v36 = *(v0 + 256);
  v37 = *(v0 + 216);
  v38 = *(v0 + 224);
  v39 = *(v0 + 208);
  v40 = *(v38 + 32);
  v40(v36, *(v0 + 200), v37);
  MACAddress.data.getter();
  v87 = *(v38 + 8);
  v87(v36, v37);
  MACAddress.init(addressToSanitize:type:)();
  v41 = v103(v39, 1, v37);
  v42 = *(v0 + 216);
  if (v41 == 1)
  {
    v44 = *(v0 + 448);
    v43 = *(v0 + 456);
    v45 = *(v0 + 192);
    sub_100017D5C(v44, v43);
    v46 = static MACAddress.length.getter();
    sub_10002EA98(v46, v44, v43, &v105);
    MACAddress.init(data:type:)();
    result = v103(v45, 1, v42);
    if (result != 1)
    {
      v47 = *(v0 + 208);
      v48 = *(v0 + 216);
      v40(*(v0 + 264), *(v0 + 192), v48);
      if (v103(v47, 1, v48) != 1)
      {
        sub_10000B3A8(*(v0 + 208), &qword_1016A40D0, &unk_10138BE70);
      }

      goto LABEL_20;
    }

LABEL_24:
    __break(1u);
    return result;
  }

  v40(*(v0 + 264), *(v0 + 208), *(v0 + 216));
LABEL_20:
  v91 = *(v0 + 488);
  v83 = *(v0 + 472);
  v80 = *(v0 + 448);
  v81 = *(v0 + 456);
  v78 = *(v0 + 588);
  v97 = *(v0 + 384);
  v49 = *(v0 + 368);
  v90 = *(v0 + 360);
  v84 = *(v0 + 328);
  v85 = *(v0 + 352);
  v82 = *(v0 + 296);
  v98 = *(v0 + 264);
  v50 = *(v0 + 248);
  v51 = *(v0 + 216);
  v104 = *(v0 + 224);
  v96 = v50;
  v52 = *(v0 + 160);
  v54 = *(v0 + 136);
  v53 = *(v0 + 144);
  v55 = *(v0 + 120);
  v56 = *(v0 + 128);
  v95 = v55;
  v89 = *(v0 + 112);
  v92 = *(v0 + 104);
  v99 = *(v0 + 96);
  v79 = *(v0 + 88);
  v93 = *(v0 + 80);
  v94 = *(v0 + 72);
  v86 = *(v0 + 16);
  v91();
  v76 = *(v49 + 56);
  v76(v54, 1, 1, v90);
  v73 = *(v104 + 16);
  v73(v50, v98, v51);
  static Date.trustedNow.getter(v56);
  v57 = *(v55 + 56);
  v57(v92, 1, 1, v89);
  v58 = type metadata accessor for AccessoryMetadata(0);
  v72 = *(*(v58 - 8) + 56);
  v72(v93, 1, 1, v58);
  v59 = type metadata accessor for AccessoryProductInfo(0);
  v70 = *(*(v59 - 8) + 56);
  v70(v94, 1, 1, v59);
  v57(v99, 1, 1, v89);
  v65 = v53[5];
  v76(v52 + v65, 1, 1, v90);
  v66 = v53[6];
  v68 = v53[11];
  v57(v52 + v68, 1, 1, v89);
  v67 = (v52 + v53[12]);
  v69 = v53[14];
  v72(v52 + v69, 1, 1, v58);
  v60 = v53[15];
  v70(v52 + v60, 1, 1, v59);
  v61 = v53[17];
  v71 = v53[16];
  *(v52 + v61) = sub_100908B38(_swiftEmptyArrayStorage);
  v62 = v53[18];
  static Date.trustedNow.getter(v52 + v62);
  v57(v52 + v62, 0, 1, v89);
  v74 = v53[19];
  v57(v52 + v74, 1, 1, v89);
  v75 = v53[21];
  v77 = v53[22];
  (v91)(v52, v97, v90);
  sub_1001DA61C(v54, v52 + v65, &qword_1016980D0, &unk_10138F3B0);
  *(v52 + v66) = 0;
  v73(v52 + v53[7], v96, v51);
  *(v52 + v53[8]) = _swiftEmptyArrayStorage;
  *(v52 + v53[9]) = 3;
  (*(v95 + 16))(v52 + v53[10], v56, v89);
  sub_1001DA61C(v92, v52 + v68, &unk_101696900, &unk_10138B1E0);
  v67[1] = 0;
  v67[2] = 0;
  *v67 = 0;
  *(v52 + v53[13]) = v78;
  sub_1001DA61C(v93, v52 + v69, &qword_1016A62A0, &unk_101396E10);
  sub_1001DA61C(v94, v52 + v60, &qword_101697268, &qword_101394FE0);
  *(v52 + v71) = 7;
  static Date.trustedNow.getter(v79);
  v57(v79, 0, 1, v89);
  sub_10002311C(v79, v52 + v62, &unk_101696900, &unk_10138B1E0);
  sub_1000D2A70(v52 + v62, v79, &unk_101696900, &unk_10138B1E0);
  sub_1001DE1F0(v79, 7);

  sub_100006654(v80, v81);
  sub_10000B3A8(v94, &qword_101697268, &qword_101394FE0);
  sub_10000B3A8(v93, &qword_1016A62A0, &unk_101396E10);
  sub_10000B3A8(v92, &unk_101696900, &unk_10138B1E0);
  (*(v95 + 8))(v56, v89);
  v87(v96, v51);
  sub_10000B3A8(v54, &qword_1016980D0, &unk_10138F3B0);
  v83(v97, v90);
  v87(v98, v51);
  sub_100721D04(v82, type metadata accessor for ObservedAdvertisement);
  sub_10000B3A8(v84, &unk_10169BB50, &unk_101395760);
  sub_100721D04(v85, type metadata accessor for BeaconIdentifier);
  sub_10002311C(v99, v52 + v74, &unk_101696900, &unk_10138B1E0);
  v63 = (v52 + v53[20]);
  *v63 = v88;
  v63[1] = v101;
  *(v52 + v75) = v101 >> 60 == 11;
  *(v52 + v77) = 256;
  sub_10002AB74(v52, v86, type metadata accessor for WildModeAssociationRecord);
  (*(*(v0 + 152) + 56))(*(v0 + 16), 0, 1, *(v0 + 144));

  v64 = *(v0 + 8);

  return v64();
}

uint64_t sub_1006A130C(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 472);
  v6 = *(*v3 + 376);
  v7 = *(*v3 + 360);
  v4[66] = a1;
  v4[67] = a2;
  v4[68] = v2;

  v5(v6, v7);
  if (v2)
  {
    v8 = sub_1006A2F08;
  }

  else
  {
    v8 = sub_1006A1498;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_1006A1498()
{
  v29 = v0;
  if (*(v0 + 536) >> 60 == 15)
  {
    if (qword_101694780 != -1)
    {
      swift_once();
    }

    v1 = *(v0 + 48);
    v2 = *(v0 + 24);
    v3 = type metadata accessor for Logger();
    sub_1000076D4(v3, qword_10177AE40);
    sub_100721C9C(v2, v1, type metadata accessor for SharedBeaconRecord);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = *(v0 + 48);
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v28 = v8;
      *v7 = 141558275;
      *(v7 + 4) = 1752392040;
      *(v7 + 12) = 2081;
      sub_100003E8C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v9 = dispatch thunk of CustomStringConvertible.description.getter();
      v11 = v10;
      sub_100721D04(v6, type metadata accessor for SharedBeaconRecord);
      v12 = sub_1000136BC(v9, v11, &v28);

      *(v7 + 14) = v12;
      _os_log_impl(&_mh_execute_header, v4, v5, "maxAdvertisement for secondary sequence not found in ItemSharingKeys DB for imported beacon %{private,mask.hash}s", v7, 0x16u);
      sub_100007BAC(v8);
    }

    else
    {
      v26 = *(v0 + 48);

      sub_100721D04(v26, type metadata accessor for SharedBeaconRecord);
    }

    (*(*(v0 + 152) + 56))(*(v0 + 16), 1, 1, *(v0 + 144));

    v27 = *(v0 + 8);

    return v27();
  }

  else
  {
    v13 = *(v0 + 584);
    v14 = *(v0 + 360);
    v15 = *(v0 + 368);
    v17 = *(v0 + 336);
    v16 = *(v0 + 344);
    v18 = *(v0 + 24);
    v19 = getuid();
    sub_1000294F0(v19);
    v20 = *(v17 + 20);
    v21 = *(v15 + 16);
    *(v0 + 552) = v21;
    *(v0 + 560) = (v15 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v21(v16 + v20, v18 + v13, v14);
    v22 = swift_task_alloc();
    *(v0 + 568) = v22;
    *v22 = v0;
    v22[1] = sub_1006A198C;
    v23 = *(v0 + 344);
    v24 = *(v0 + 312);

    return sub_1010CE088(v24, v23);
  }
}

uint64_t sub_1006A198C()
{
  *(*v1 + 576) = v0;

  if (v0)
  {
    v2 = sub_1006A3264;
  }

  else
  {
    v2 = sub_1006A1AA0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1006A1AA0()
{
  v103 = v0;
  v1 = *(v0 + 304);
  v2 = *(v0 + 272);
  v3 = *(v0 + 280);
  sub_1000D2A70(*(v0 + 312), v1, &unk_10169BB50, &unk_101395760);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    sub_10000B3A8(*(v0 + 304), &unk_10169BB50, &unk_101395760);
    if (qword_101694780 != -1)
    {
      swift_once();
    }

    v4 = *(v0 + 56);
    v5 = *(v0 + 24);
    v6 = type metadata accessor for Logger();
    sub_1000076D4(v6, qword_10177AE40);
    sub_100721C9C(v5, v4, type metadata accessor for SharedBeaconRecord);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.debug.getter();
    v9 = os_log_type_enabled(v7, v8);
    v10 = *(v0 + 536);
    v11 = *(v0 + 528);
    if (v9)
    {
      v95 = *(v0 + 536);
      v97 = *(v0 + 312);
      v99 = *(v0 + 344);
      v12 = *(v0 + 56);
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v102 = v14;
      *v13 = 141558275;
      *(v13 + 4) = 1752392040;
      *(v13 + 12) = 2081;
      sub_100003E8C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v15 = dispatch thunk of CustomStringConvertible.description.getter();
      v17 = v16;
      sub_100721D04(v12, type metadata accessor for SharedBeaconRecord);
      v18 = sub_1000136BC(v15, v17, &v102);

      *(v13 + 14) = v18;
      _os_log_impl(&_mh_execute_header, v7, v8, "latest observation for secondary sequence not found in Observations / Beacon Info DB for imported beacon %{private,mask.hash}s", v13, 0x16u);
      sub_100007BAC(v14);

      sub_100006654(v11, v95);
      sub_10000B3A8(v97, &unk_10169BB50, &unk_101395760);
      v19 = v99;
    }

    else
    {
      v21 = *(v0 + 344);
      v22 = *(v0 + 312);
      v23 = *(v0 + 56);

      sub_100006654(v11, v10);
      sub_100721D04(v23, type metadata accessor for SharedBeaconRecord);
      sub_10000B3A8(v22, &unk_10169BB50, &unk_101395760);
      v19 = v21;
    }

    sub_100721D04(v19, type metadata accessor for BeaconIdentifier);
    v24 = 1;
    goto LABEL_19;
  }

  v20 = *(v0 + 589);
  sub_10002AB74(*(v0 + 304), *(v0 + 288), type metadata accessor for ObservedAdvertisement);
  if (v20 & 1) != 0 || (*(*(v0 + 288) + *(*(v0 + 272) + 56)))
  {
    v84 = 0;
    v98 = 0xB000000000000000;
  }

  else
  {
    sub_100017D5C(*(v0 + 528), *(v0 + 536));
    v98 = *(v0 + 536);
    v84 = *(v0 + 528);
  }

  v25 = *(v0 + 536);
  v26 = *(v0 + 528);
  v27 = *(v0 + 216);
  v28 = *(v0 + 224);
  v29 = *(v0 + 176);
  sub_100017D5C(v26, v25);
  v30 = static MACAddress.length.getter();
  sub_10002EA98(v30, v26, v25, &v102);
  MACAddress.init(data:type:)();
  v100 = *(v28 + 48);
  result = v100(v29, 1, v27);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_23;
  }

  v33 = *(v0 + 224);
  v32 = *(v0 + 232);
  v34 = *(v0 + 216);
  v35 = *(v0 + 184);
  v36 = *(v33 + 32);
  v36(v32, *(v0 + 176), v34);
  MACAddress.data.getter();
  v83 = *(v33 + 8);
  v83(v32, v34);
  MACAddress.init(addressToSanitize:type:)();
  v37 = v100(v35, 1, v34);
  v38 = *(v0 + 216);
  if (v37 == 1)
  {
    v39 = *(v0 + 536);
    v40 = *(v0 + 528);
    v41 = *(v0 + 168);
    sub_100017D5C(v40, v39);
    v42 = static MACAddress.length.getter();
    sub_10002EA98(v42, v40, v39, &v102);
    MACAddress.init(data:type:)();
    result = v100(v41, 1, v38);
    if (result != 1)
    {
      v43 = *(v0 + 216);
      v44 = *(v0 + 184);
      v36(*(v0 + 240), *(v0 + 168), v43);
      if (v100(v44, 1, v43) != 1)
      {
        sub_10000B3A8(*(v0 + 184), &qword_1016A40D0, &unk_10138BE70);
      }

      goto LABEL_18;
    }

LABEL_23:
    __break(1u);
    return result;
  }

  v36(*(v0 + 240), *(v0 + 184), *(v0 + 216));
LABEL_18:
  v87 = *(v0 + 552);
  v76 = *(v0 + 528);
  v77 = *(v0 + 536);
  v78 = *(v0 + 472);
  v74 = *(v0 + 588);
  v93 = *(v0 + 384);
  v45 = *(v0 + 368);
  v86 = *(v0 + 360);
  v80 = *(v0 + 312);
  v81 = *(v0 + 344);
  v79 = *(v0 + 288);
  v46 = *(v0 + 248);
  v94 = *(v0 + 240);
  v47 = *(v0 + 216);
  v101 = *(v0 + 224);
  v92 = v46;
  v48 = *(v0 + 160);
  v50 = *(v0 + 136);
  v49 = *(v0 + 144);
  v51 = *(v0 + 120);
  v52 = *(v0 + 128);
  v91 = v51;
  v85 = *(v0 + 112);
  v88 = *(v0 + 104);
  v96 = *(v0 + 96);
  v75 = *(v0 + 88);
  v89 = *(v0 + 80);
  v90 = *(v0 + 72);
  v82 = *(v0 + 16);
  v87();
  v72 = *(v45 + 56);
  v72(v50, 1, 1, v86);
  v69 = *(v101 + 16);
  v69(v46, v94, v47);
  static Date.trustedNow.getter(v52);
  v53 = *(v51 + 56);
  v53(v88, 1, 1, v85);
  v54 = type metadata accessor for AccessoryMetadata(0);
  v68 = *(*(v54 - 8) + 56);
  v68(v89, 1, 1, v54);
  v55 = type metadata accessor for AccessoryProductInfo(0);
  v66 = *(*(v55 - 8) + 56);
  v66(v90, 1, 1, v55);
  v53(v96, 1, 1, v85);
  v61 = v49[5];
  v72(v48 + v61, 1, 1, v86);
  v62 = v49[6];
  v64 = v49[11];
  v53(v48 + v64, 1, 1, v85);
  v63 = (v48 + v49[12]);
  v65 = v49[14];
  v68(v48 + v65, 1, 1, v54);
  v56 = v49[15];
  v66(v48 + v56, 1, 1, v55);
  v57 = v49[17];
  v67 = v49[16];
  *(v48 + v57) = sub_100908B38(_swiftEmptyArrayStorage);
  v58 = v49[18];
  static Date.trustedNow.getter(v48 + v58);
  v53(v48 + v58, 0, 1, v85);
  v70 = v49[19];
  v53(v48 + v70, 1, 1, v85);
  v71 = v49[21];
  v73 = v49[22];
  (v87)(v48, v93, v86);
  sub_1001DA61C(v50, v48 + v61, &qword_1016980D0, &unk_10138F3B0);
  *(v48 + v62) = 0;
  v69(v48 + v49[7], v92, v47);
  *(v48 + v49[8]) = _swiftEmptyArrayStorage;
  *(v48 + v49[9]) = 3;
  (*(v91 + 16))(v48 + v49[10], v52, v85);
  sub_1001DA61C(v88, v48 + v64, &unk_101696900, &unk_10138B1E0);
  v63[1] = 0;
  v63[2] = 0;
  *v63 = 0;
  *(v48 + v49[13]) = v74;
  sub_1001DA61C(v89, v48 + v65, &qword_1016A62A0, &unk_101396E10);
  sub_1001DA61C(v90, v48 + v56, &qword_101697268, &qword_101394FE0);
  *(v48 + v67) = 7;
  static Date.trustedNow.getter(v75);
  v53(v75, 0, 1, v85);
  sub_10002311C(v75, v48 + v58, &unk_101696900, &unk_10138B1E0);
  sub_1000D2A70(v48 + v58, v75, &unk_101696900, &unk_10138B1E0);
  sub_1001DE1F0(v75, 7);

  sub_100006654(v76, v77);
  sub_10000B3A8(v90, &qword_101697268, &qword_101394FE0);
  sub_10000B3A8(v89, &qword_1016A62A0, &unk_101396E10);
  sub_10000B3A8(v88, &unk_101696900, &unk_10138B1E0);
  (*(v91 + 8))(v52, v85);
  v83(v92, v47);
  sub_10000B3A8(v50, &qword_1016980D0, &unk_10138F3B0);
  v78(v93, v86);
  v83(v94, v47);
  sub_100721D04(v79, type metadata accessor for ObservedAdvertisement);
  sub_10000B3A8(v80, &unk_10169BB50, &unk_101395760);
  sub_100721D04(v81, type metadata accessor for BeaconIdentifier);
  sub_10002311C(v96, v48 + v70, &unk_101696900, &unk_10138B1E0);
  v59 = (v48 + v49[20]);
  *v59 = v84;
  v59[1] = v98;
  *(v48 + v71) = v98 >> 60 == 11;
  *(v48 + v73) = 256;
  sub_10002AB74(v48, v82, type metadata accessor for WildModeAssociationRecord);
  v24 = 0;
LABEL_19:
  (*(*(v0 + 152) + 56))(*(v0 + 16), v24, 1, *(v0 + 144));

  v60 = *(v0 + 8);

  return v60();
}

uint64_t sub_1006A2820()
{

  if (qword_101694780 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177AE40);
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
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to create unknownBeacon from wild mode advt: %@", v4, 0xCu);
    sub_10000B3A8(v5, &qword_10169BB30, &unk_10138B3C0);
  }

  else
  {
  }

  (*(v0[19] + 56))(v0[2], 1, 1, v0[18]);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1006A2B7C()
{
  v1 = v0[56];
  v2 = v0[57];
  v3 = v0[44];

  sub_100006654(v1, v2);
  sub_100721D04(v3, type metadata accessor for BeaconIdentifier);
  if (qword_101694780 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000076D4(v4, qword_10177AE40);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v5, v6, "Failed to create unknownBeacon from wild mode advt: %@", v7, 0xCu);
    sub_10000B3A8(v8, &qword_10169BB30, &unk_10138B3C0);
  }

  else
  {
  }

  (*(v0[19] + 56))(v0[2], 1, 1, v0[18]);

  v10 = v0[1];

  return v10();
}

uint64_t sub_1006A2F08()
{

  if (qword_101694780 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177AE40);
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
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to create unknownBeacon from wild mode advt: %@", v4, 0xCu);
    sub_10000B3A8(v5, &qword_10169BB30, &unk_10138B3C0);
  }

  else
  {
  }

  (*(v0[19] + 56))(v0[2], 1, 1, v0[18]);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1006A3264()
{
  v1 = v0[67];
  v2 = v0[66];
  v3 = v0[43];

  sub_100006654(v2, v1);
  sub_100721D04(v3, type metadata accessor for BeaconIdentifier);
  if (qword_101694780 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000076D4(v4, qword_10177AE40);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v5, v6, "Failed to create unknownBeacon from wild mode advt: %@", v7, 0xCu);
    sub_10000B3A8(v8, &qword_10169BB30, &unk_10138B3C0);
  }

  else
  {
  }

  (*(v0[19] + 56))(v0[2], 1, 1, v0[18]);

  v10 = v0[1];

  return v10();
}

void *sub_1006A35F4(NSObject *a1)
{
  v3 = type metadata accessor for WildModeAssociationRecord(0);
  __chkstk_darwin(v3 - 8);
  v5 = &v104 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v7 = __chkstk_darwin(v6 - 8);
  v110 = &v104 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v109 = &v104 - v9;
  v10 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v11 = __chkstk_darwin(v10 - 8);
  v13 = &v104 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v16 = &v104 - v15;
  __chkstk_darwin(v14);
  v121 = &v104 - v17;
  v107 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  __chkstk_darwin(v107);
  v106 = &v104 - v18;
  v19 = type metadata accessor for Date();
  v20 = *(v19 - 8);
  v21 = __chkstk_darwin(v19);
  v114 = &v104 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v133 = &v104 - v23;
  v113 = v1;
  v124 = a1;
  v24 = sub_10125F790(a1);
  v25 = sub_1010D7CD4(v24);
  v27 = v25[2];
  if (!v27)
  {

    v28 = COERCE_DOUBLE(_swiftEmptyDictionarySingleton);
    return *&v28;
  }

  v132 = 0;
  v105 = (v20 + 48);
  v116 = (v20 + 32);
  v125 = (v20 + 8);
  v28 = COERCE_DOUBLE(_swiftEmptyDictionarySingleton);
  v29 = 32;
  v118 = SPBeaconTaskNamePlaySound;
  v111 = OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_soundPlaybackManager;
  v115 = enum case for Feature.FindMy.trustedNowUsesReferenceClock(_:);
  *&v26 = 136315394;
  v108 = v26;
  v117 = v5;
  v120 = v13;
  v112 = v16;
  v30 = v121;
  v126 = v19;
  v119 = v25;
  do
  {
    v129 = v28;
    v130 = v29;
    v131 = v27;
    v34 = qword_101694FA8;
    v35 = *(v25 + v29);
    if (v34 != -1)
    {
      swift_once();
    }

    v138 = 7.45683732e247;
    v139 = -5.98008217e197;
    SynchronousCache.cachedValue<A>(key:computeBlock:)();
    if (v142 == 1)
    {
      v36 = [objc_opt_self() sharedInstance];
      v37 = [v36 isInternalBuild];

      if (v37)
      {
        if (qword_101694418 != -1)
        {
          swift_once();
        }

        v38 = sub_1000076D4(v107, qword_101696A00);
        swift_beginAccess();
        v39 = v38;
        v40 = v106;
        sub_1000D2A70(v39, v106, &unk_101696900, &unk_10138B1E0);
        if ((*v105)(v40, 1, v19) != 1)
        {
          (*v116)(v133, v40, v19);
          goto LABEL_30;
        }

        sub_10000B3A8(v40, &unk_101696900, &unk_10138B1E0);
      }
    }

    My = type metadata accessor for Feature.FindMy();
    v140 = My;
    v141 = sub_100003E8C(&qword_1016AF950, &type metadata accessor for Feature.FindMy, &protocol conformance descriptor for Feature.FindMy);
    v42 = sub_1000280DC(&v138);
    (*(*(My - 8) + 104))(v42, v115, My);
    LOBYTE(My) = isFeatureEnabled(_:)();
    sub_100007BAC(&v138);
    if (My)
    {
      sub_100F0FDBC();
      Current = CFAbsoluteTimeGetCurrent();
      if (qword_101694FD8 != -1)
      {
        swift_once();
      }

      sub_1000BC4D4(&unk_1016B7CA0, &unk_101395220);
      v44 = v132;
      OSAllocatedUnfairLock.callAsFunction<A>(_:)();
      v45 = v110;
      if (Current - v138 - v139 <= 86400.0)
      {
        v132 = v44;
      }

      else
      {
        OSAllocatedUnfairLock.callAsFunction<A>(_:)();
        v132 = v44;
        v46 = type metadata accessor for TaskPriority();
        v47 = *(v46 - 8);
        v48 = v109;
        (*(v47 + 56))(v109, 1, 1, v46);
        v49 = swift_allocObject();
        *(v49 + 16) = 0;
        *(v49 + 24) = 0;
        sub_1000D2A70(v48, v45, &qword_101698C00, &qword_10138B570);
        v50 = v45;
        v51 = (*(v47 + 48))(v45, 1, v46);

        if (v51 == 1)
        {
          sub_10000B3A8(v50, &qword_101698C00, &qword_10138B570);
        }

        else
        {
          TaskPriority.rawValue.getter();
          (*(v47 + 8))(v50, v46);
        }

        v52 = *(v49 + 16);
        swift_unknownObjectRetain();

        v30 = v121;
        if (v52)
        {
          swift_getObjectType();
          v53 = dispatch thunk of Actor.unownedExecutor.getter();
          v55 = v54;
          swift_unknownObjectRelease();
        }

        else
        {
          v53 = 0;
          v55 = 0;
        }

        sub_10000B3A8(v109, &qword_101698C00, &qword_10138B570);
        v56 = swift_allocObject();
        *(v56 + 16) = &unk_10138B610;
        *(v56 + 24) = v49;
        if (v55 | v53)
        {
          v134 = 0;
          v135 = 0;
          v136 = v53;
          v137 = v55;
        }

        swift_task_create();

        v5 = v117;
      }

      Date.init(timeIntervalSinceReferenceDate:)();
    }

    else
    {
      Date.init()();
    }

LABEL_30:
    v57 = type metadata accessor for UUID();
    v128 = *(v57 - 8);
    v58 = *(v128 + 56);
    v59 = v128 + 56;
    v58(v30, 1, 1, v57);
    v60 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v62 = v61;
    if (v60 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v62 == v63)
    {
    }

    else
    {
      v65 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v65 & 1) == 0)
      {
        v93 = 0;
        v88 = 2;
        v86 = v120;
        goto LABEL_44;
      }
    }

    v123 = v58;
    __chkstk_darwin(v64);
    *(&v104 - 2) = v66;
    *(&v104 - 1) = v124;
    sub_100008BB8(0, &unk_1016AF850, SPBeaconTaskInformation_ptr);
    v67 = v132;
    OS_dispatch_queue.sync<A>(execute:)();
    v132 = v67;
    v68 = v138;
    if (qword_101694960 != -1)
    {
      swift_once();
    }

    v127 = v57;
    v69 = type metadata accessor for Logger();
    sub_1000076D4(v69, qword_10177B380);
    sub_100721C9C(v124, v5, type metadata accessor for WildModeAssociationRecord);
    v70 = *&v68;
    v71 = Logger.logObject.getter();
    v72 = static os_log_type_t.info.getter();

    v73 = os_log_type_enabled(v71, v72);
    v122 = v59;
    if (v73)
    {
      v74 = swift_slowAlloc();
      v138 = COERCE_DOUBLE(swift_slowAlloc());
      *v74 = v108;
      sub_100003E8C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v75 = dispatch thunk of CustomStringConvertible.description.getter();
      v76 = v35;
      v78 = v77;
      sub_100721D04(v117, type metadata accessor for WildModeAssociationRecord);
      v79 = sub_1000136BC(v75, v78, &v138);

      *(v74 + 4) = v79;
      *(v74 + 12) = 2080;
      v80 = [v70 debugDescription];
      v81 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v83 = v82;

      v84 = v81;
      v35 = v76;
      v5 = v117;
      v85 = sub_1000136BC(v84, v83, &v138);

      *(v74 + 14) = v85;
      _os_log_impl(&_mh_execute_header, v71, v72, "UT Play taskInfo for %s: %s", v74, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      sub_100721D04(v5, type metadata accessor for WildModeAssociationRecord);
    }

    v86 = v120;
    v87 = v112;
    v88 = [v70 state];
    v89 = [v70 lastUpdated];
    v90 = v114;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v91 = v133;
    v92 = v126;
    (*v125)(v133, v126);
    (*v116)(v91, v90, v92);
    v93 = [v70 error];
    v94 = [v70 commandIdentifier];
    if (v94)
    {
      v95 = v94;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v96 = v121;
      sub_10000B3A8(v121, &qword_1016980D0, &unk_10138F3B0);
      v97 = 0;
    }

    else
    {
      v96 = v121;
      sub_10000B3A8(v121, &qword_1016980D0, &unk_10138F3B0);

      v97 = 1;
    }

    v57 = v127;
    v123(v87, v97, 1, v127);
    sub_1000D2AD8(v87, v96, &qword_1016980D0, &unk_10138F3B0);
    v30 = v96;
LABEL_44:
    v98 = v35;
    swift_errorRetain();
    v99.super.isa = Date._bridgeToObjectiveC()().super.isa;
    if (v93)
    {
      v100 = _convertErrorToNSError(_:)();
    }

    else
    {
      v100 = 0;
    }

    v101 = v128;
    v102 = [objc_allocWithZone(SPBeaconTaskInformation) initWithName:v98 lastUpdated:v99.super.isa error:v100 state:v88];

    sub_1000D2A70(v30, v86, &qword_1016980D0, &unk_10138F3B0);
    if ((*(v101 + 48))(v86, 1, v57) == 1)
    {
      isa = 0;
    }

    else
    {
      isa = UUID._bridgeToObjectiveC()().super.isa;
      (*(v101 + 8))(v86, v57);
    }

    [v102 setCommandIdentifier:isa];

    v32 = v129;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v138 = v32;
    sub_100FFF5A8(v102, v98, isUniquelyReferenced_nonNull_native);

    v28 = v138;
    sub_10000B3A8(v30, &qword_1016980D0, &unk_10138F3B0);
    v19 = v126;
    (*v125)(v133, v126);
    v29 = v130 + 8;
    v27 = v131 - 1;
    v25 = v119;
  }

  while (v131 != 1);

  return *&v28;
}

uint64_t sub_1006A4634(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = swift_task_alloc();
  v2[4] = v3;
  *v3 = v2;
  v3[1] = sub_1006A46C8;

  return daemon.getter();
}

uint64_t sub_1006A46C8(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 40) = a1;

  v3 = swift_task_alloc();
  *(v2 + 48) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for OwnerCommandService(0);
  v6 = sub_100003E8C(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_100003E8C(&unk_1016B10E0, type metadata accessor for OwnerCommandService, &unk_10140DB10);
  *v3 = v9;
  v3[1] = sub_1006A48A4;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_1006A48A4(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(*v2 + 56) = a1;

  if (v1)
  {

    return _swift_task_switch(sub_1006A4BE0, 0, 0);
  }

  else
  {

    v5 = swift_task_alloc();
    *(v3 + 64) = v5;
    *v5 = v4;
    v5[1] = sub_1006A4A58;

    return sub_1012247BC();
  }
}

uint64_t sub_1006A4A58()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_1006A4D64;
  }

  else
  {
    v2 = sub_1006A4B6C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1006A4B6C()
{
  (*(v0 + 16))(0);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1006A4BE0()
{
  v9 = v0;
  if (qword_101694828 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177B048);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v8 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_1000136BC(0xD000000000000035, 0x800000010135D8A0, &v8);
    _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s Missing OwnerCommandService!", v4, 0xCu);
    sub_100007BAC(v5);
  }

  (*(v0 + 16))(0);
  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1006A4D64()
{
  if (qword_101694910 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177B2D0);
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
    _os_log_impl(&_mh_execute_header, v2, v3, "Error stop fetching encrypted serial number %{public}@", v4, 0xCu);
    sub_10000B3A8(v5, &qword_10169BB30, &unk_10138B3C0);
  }

  v7 = *(v0 + 16);

  v7(0);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1006A4F18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v37 = a2;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v36 = &v30[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v12 = &v30[-v11];
  if (qword_101694910 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_1000076D4(v13, qword_10177B2D0);
  v35 = *(v8 + 16);
  v35(v12, a1, v7);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v34 = v9;
    v17 = v16;
    v33 = swift_slowAlloc();
    v38 = v33;
    *v17 = 136446466;
    *(v17 + 4) = sub_1000136BC(0xD000000000000030, 0x800000010135D960, &v38);
    *(v17 + 12) = 2082;
    sub_100003E8C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v32 = v14;
    v18 = dispatch thunk of CustomStringConvertible.description.getter();
    v31 = v15;
    v19 = a1;
    v20 = a3;
    v21 = v4;
    v23 = v22;
    (*(v8 + 8))(v12, v7);
    v24 = sub_1000136BC(v18, v23, &v38);
    v4 = v21;
    a3 = v20;
    a1 = v19;

    *(v17 + 14) = v24;
    v25 = v32;
    _os_log_impl(&_mh_execute_header, v32, v31, "%{public}s identifier: %{public}s", v17, 0x16u);
    swift_arrayDestroy();

    v9 = v34;
  }

  else
  {

    (*(v8 + 8))(v12, v7);
  }

  type metadata accessor for Transaction();
  v26 = v36;
  v35(v36, a1, v7);
  v27 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = v37;
  *(v28 + 24) = a3;
  (*(v8 + 32))(v28 + v27, v26, v7);
  *(v28 + ((v9 + v27 + 7) & 0xFFFFFFFFFFFFFFF8)) = v4;

  static Transaction.asyncTask(name:block:)();
}

uint64_t sub_1006A52F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  sub_1000BC4D4(&unk_1016C7C90, &qword_1013BB4B0);
  v4[6] = swift_task_alloc();
  v5 = type metadata accessor for WildModeAssociationRecord(0);
  v4[7] = v5;
  v4[8] = *(v5 - 8);
  v4[9] = swift_task_alloc();
  sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  v4[10] = swift_task_alloc();
  v6 = type metadata accessor for URL();
  v4[11] = v6;
  v4[12] = *(v6 - 8);
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();
  v4[15] = sub_1000BC4D4(&qword_1016A9A30, &unk_1013BD120);
  v4[16] = swift_task_alloc();
  v7 = type metadata accessor for LocalFindableAccessoryRecord(0);
  v4[17] = v7;
  v4[18] = *(v7 - 8);
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();
  v8 = type metadata accessor for UUID();
  v4[21] = v8;
  v9 = *(v8 - 8);
  v4[22] = v9;
  v4[23] = *(v9 + 64);
  v4[24] = swift_task_alloc();
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();
  v4[27] = swift_task_alloc();
  v4[28] = swift_task_alloc();
  v4[29] = swift_task_alloc();
  v4[30] = swift_task_alloc();
  v10 = swift_task_alloc();
  v4[31] = v10;
  *v10 = v4;
  v10[1] = sub_1006A5610;

  return daemon.getter();
}

uint64_t sub_1006A5610(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  v2[32] = a1;

  v3 = swift_task_alloc();
  v2[33] = v3;
  v4 = type metadata accessor for Daemon();
  v2[34] = v4;
  v5 = type metadata accessor for OwnerCommandService(0);
  v6 = sub_100003E8C(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v2[35] = v6;
  v7 = sub_100003E8C(&unk_1016B10E0, type metadata accessor for OwnerCommandService, &unk_10140DB10);
  *v3 = v9;
  v3[1] = sub_1006A57F0;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_1006A57F0(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(*v2 + 288) = a1;

  if (v1)
  {

    return _swift_task_switch(sub_1006A599C, 0, 0);
  }

  else
  {

    v5 = swift_task_alloc();
    *(v3 + 296) = v5;
    *v5 = v4;
    v5[1] = sub_1006A5BBC;

    return daemon.getter();
  }
}

uint64_t sub_1006A599C()
{
  if (qword_101694828 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177B048);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Missing OwnerCommandService to fetchUnauthorizedEncryptedPayload!", v4, 2u);
  }

  v5 = v0[11];
  v6 = v0[12];
  v7 = v0[10];
  v8 = v0[2];

  (*(v6 + 56))(v7, 1, 1, v5);
  v8(v7);
  sub_10000B3A8(v7, &unk_101696AC0, &qword_101390A60);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1006A5BBC(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v4 = *v1;
  *(v3 + 304) = a1;

  v5 = swift_task_alloc();
  *(v3 + 312) = v5;
  v6 = type metadata accessor for CloudStorageService();
  v7 = sub_100003E8C(&unk_1016AA520, type metadata accessor for CloudStorageService, &unk_1013BF308);
  *v5 = v4;
  v5[1] = sub_1006A5D70;
  v8 = *(v2 + 280);
  v9 = *(v2 + 272);

  return ActorServiceDaemon.getService<A>()(v9, v6, v8, v7);
}

uint64_t sub_1006A5D70(uint64_t a1)
{
  *(*v2 + 320) = a1;

  if (v1)
  {

    v3 = sub_1006A71BC;
  }

  else
  {

    v3 = sub_1006A5EC0;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1006A5EC0()
{
  v34 = v0;
  if (qword_101694910 != -1)
  {
    swift_once();
  }

  v1 = v0[30];
  v2 = v0[21];
  v3 = v0[22];
  v4 = v0[4];
  v5 = type metadata accessor for Logger();
  v0[41] = sub_1000076D4(v5, qword_10177B2D0);
  v6 = *(v3 + 16);
  v0[42] = v6;
  v0[43] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v4, v2);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[30];
  v12 = v0[21];
  v11 = v0[22];
  if (v9)
  {
    v32 = v8;
    v13 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    *v13 = 136446723;
    *(v13 + 4) = sub_1000136BC(0xD000000000000030, 0x800000010135D960, &v33);
    *(v13 + 12) = 2160;
    *(v13 + 14) = 1752392040;
    *(v13 + 22) = 2081;
    sub_100003E8C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    log = v7;
    v14 = v6;
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v17 = v16;
    v18 = *(v11 + 8);
    v18(v10, v12);
    v19 = v15;
    v6 = v14;
    v20 = sub_1000136BC(v19, v17, &v33);

    *(v13 + 24) = v20;
    _os_log_impl(&_mh_execute_header, log, v32, "%{public}s Checking LocalFindableRecord: %{private,mask.hash}s", v13, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    v18 = *(v11 + 8);
    v18(v10, v12);
  }

  v0[44] = v18;
  v21 = v0[40];
  v22 = v0[29];
  v23 = v0[22];
  v24 = v0[21];
  v6(v22, v0[4], v24);
  v25 = (*(v23 + 80) + 24) & ~*(v23 + 80);
  v26 = swift_allocObject();
  v0[45] = v26;
  *(v26 + 16) = v21;
  (*(v23 + 32))(v26 + v25, v22, v24);

  v27 = swift_task_alloc();
  v0[46] = v27;
  *v27 = v0;
  v27[1] = sub_1006A6254;
  v29 = v0[15];
  v28 = v0[16];

  return withTimeout<A>(_:block:)(v28, 5000000000000000000, 0, &unk_1013B6950, v26, v29);
}