uint64_t sub_1011A4C60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[11] = a3;
  v4[12] = v3;
  v4[9] = a1;
  v4[10] = a2;
  sub_1000BC4D4(&qword_101699D68, &unk_1013B6450);
  v4[13] = swift_task_alloc();
  v5 = type metadata accessor for Row();
  v4[14] = v5;
  v4[15] = *(v5 - 8);
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();
  v6 = sub_1000BC4D4(&qword_101699D08, &unk_1013D7C10);
  v4[18] = v6;
  v4[19] = *(v6 - 8);
  v4[20] = swift_task_alloc();
  v7 = type metadata accessor for Table();
  v4[21] = v7;
  v4[22] = *(v7 - 8);
  v4[23] = swift_task_alloc();
  v4[24] = swift_task_alloc();
  v4[25] = swift_task_alloc();

  return _swift_task_switch(sub_1011A4E44, v3, 0);
}

uint64_t sub_1011A4E44()
{
  v1 = *(*(v0 + 96) + 112);
  *(v0 + 208) = v1;
  return _swift_task_switch(sub_1011A4E68, v1, 0);
}

uint64_t sub_1011A4E68()
{
  v0[27] = type metadata accessor for LocalStorageDatabase(0);
  v0[28] = sub_1011A70B4(&qword_1016B62E0, type metadata accessor for LocalStorageDatabase, &unk_1013D7B20);
  Database.startup()();
  v0[29] = v1;
  if (v1)
  {

    v2 = v0[1];

    return v2();
  }

  else
  {
    v4 = v0[26];

    return _swift_task_switch(sub_1011A4FCC, v4, 0);
  }
}

uint64_t sub_1011A4FCC()
{
  *(v0 + 240) = Database.readConnection.getter();

  return _swift_task_switch(sub_1011A503C, 0, 0);
}

uint64_t sub_1011A503C()
{
  if (v0[30])
  {
    if (qword_101694C60 != -1)
    {
      swift_once();
    }

    sub_1000076D4(v0[21], qword_10177BAB8);
    if (qword_101694CB0 != -1)
    {
      swift_once();
    }

    v1 = v0[20];
    v3 = v0[18];
    v2 = v0[19];
    v5 = v0[10];
    v4 = v0[11];
    v6 = sub_1000BC4D4(&qword_101699DC0, &unk_10139D110);
    sub_1000076D4(v6, qword_10177BBA8);
    v0[7] = v5;
    v0[8] = v4;
    sub_100017D5C(v5, v4);
    sub_1011A70B4(&qword_101699DC8, &type metadata accessor for Blob, &protocol conformance descriptor for Blob);
    == infix<A>(_:_:)();
    sub_100016590(v0[7], v0[8]);
    QueryType.filter(_:)();
    (*(v2 + 8))(v1, v3);
    sub_1000BC4D4(&qword_101699D90, &unk_1013930F0);
    *(swift_allocObject() + 16) = xmmword_101385D80;
    if (qword_101694CC0 != -1)
    {
      swift_once();
    }

    v7 = v0[29];
    v9 = v0[24];
    v8 = v0[25];
    v10 = v0[22];
    v11 = v0[23];
    v12 = v0[21];
    v13 = sub_1000BC4D4(&qword_101699D78, &unk_1013BF4B0);
    sub_1000076D4(v13, qword_10177BBD8);
    sub_1011A70FC();
    ExpressionType.desc.getter();
    QueryType.order(_:)();

    v14 = v11;
    v15 = *(v10 + 8);
    v15(v14, v12);
    QueryType.limit(_:)();
    v15(v9, v12);
    v0[5] = v12;
    v0[6] = &protocol witness table for Table;
    v16 = sub_1000280DC(v0 + 2);
    (*(v10 + 16))(v16, v8, v12);
    Connection.prepare(_:)();
    if (!v7)
    {
      v21 = v0[14];
      v20 = v0[15];
      v22 = v0[13];
      sub_100007BAC(v0 + 2);
      dispatch thunk of _AnySequenceBox._makeIterator()();

      dispatch thunk of _AnyIteratorBoxBase.next()();

      if ((*(v20 + 48))(v22, 1, v21) == 1)
      {
        v23 = v0[13];
        v15(v0[25], v0[21]);

        sub_10000B3A8(v23, &qword_101699D68, &unk_1013B6450);
        v24 = 1;
      }

      else
      {
        v26 = v0[16];
        v25 = v0[17];
        v28 = v0[14];
        v27 = v0[15];
        v29 = v0[9];
        (*(v27 + 32))(v25, v0[13], v28);
        (*(v27 + 16))(v26, v25, v28);
        sub_10111D480(v26, v29);
        v30 = v0[25];
        v31 = v0[21];
        v32 = v0[17];
        v34 = v0[14];
        v33 = v0[15];

        (*(v33 + 8))(v32, v34);
        v15(v30, v31);
        v24 = 0;
      }

      v35 = v0[9];
      v36 = type metadata accessor for AccessoryPairingAnalytics(0);
      (*(*(v36 - 8) + 56))(v35, v24, 1, v36);

      v18 = v0[1];
      goto LABEL_12;
    }

    v15(v0[25], v0[21]);

    sub_100007BAC(v0 + 2);
  }

  else
  {
    sub_10020223C();
    swift_allocError();
    *v17 = 2;
    *(v17 + 4) = 1;
    swift_willThrow();
  }

  v18 = v0[1];
LABEL_12:

  return v18();
}

uint64_t sub_1011A55FC(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v2[4] = swift_task_alloc();
  v3 = sub_1000BC4D4(&qword_101699EA8, &unk_101393170);
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v4 = type metadata accessor for Table();
  v2[8] = v4;
  v2[9] = *(v4 - 8);
  v2[10] = swift_task_alloc();
  v5 = type metadata accessor for Delete();
  v2[11] = v5;
  v2[12] = *(v5 - 8);
  v2[13] = swift_task_alloc();

  return _swift_task_switch(sub_1011A57B8, v1, 0);
}

uint64_t sub_1011A57B8()
{
  v1 = *(*(v0 + 24) + 112);
  *(v0 + 112) = v1;
  return _swift_task_switch(sub_1011A57DC, v1, 0);
}

uint64_t sub_1011A57DC()
{
  v0[15] = type metadata accessor for LocalStorageDatabase(0);
  v0[16] = sub_1011A70B4(&qword_1016B62E0, type metadata accessor for LocalStorageDatabase, &unk_1013D7B20);
  Database.startup()();
  v0[17] = v1;
  if (v1)
  {

    v2 = v0[1];

    return v2();
  }

  else
  {
    v4 = v0[14];

    return _swift_task_switch(sub_1011A5918, v4, 0);
  }
}

uint64_t sub_1011A5918()
{
  *(v0 + 144) = Database.writeConnection.getter();

  return _swift_task_switch(sub_1011A5988, 0, 0);
}

uint64_t sub_1011A5988()
{
  if (v0[18])
  {
    if (qword_101694C60 != -1)
    {
      swift_once();
    }

    sub_1000076D4(v0[8], qword_10177BAB8);
    if (qword_101694C70 != -1)
    {
      swift_once();
    }

    v16 = v0[12];
    v1 = v0[10];
    v17 = v0[11];
    v2 = v0[8];
    v14 = v0[13];
    v15 = v0[9];
    v3 = v0[6];
    v4 = v0[7];
    v5 = v0[4];
    v13 = v0[5];
    v6 = v0[2];
    v7 = sub_1000BC4D4(&qword_101699E70, &unk_101393160);
    sub_1000076D4(v7, qword_10177BAE8);
    v8 = type metadata accessor for UUID();
    v9 = *(v8 - 8);
    (*(v9 + 16))(v5, v6, v8);
    (*(v9 + 56))(v5, 0, 1, v8);
    == infix<A>(_:_:)();
    sub_10000B3A8(v5, &qword_1016980D0, &unk_10138F3B0);
    QueryType.filter(_:)();
    (*(v3 + 8))(v4, v13);
    QueryType.delete()();
    (*(v15 + 8))(v1, v2);
    Connection.run(_:)();
    (*(v16 + 8))(v14, v17);
  }

  else
  {
    sub_10020223C();
    swift_allocError();
    *v10 = 2;
    *(v10 + 4) = 1;
    swift_willThrow();
  }

  v11 = v0[1];

  return v11();
}

uint64_t sub_1011A5CC8(uint64_t a1)
{
  v2[13] = a1;
  v2[14] = v1;
  sub_1000BC4D4(&qword_1016A40D0, &unk_10138BE70);
  v2[15] = swift_task_alloc();
  v3 = sub_1000BC4D4(&qword_10169DDD0, &unk_10139D140);
  v2[16] = v3;
  v2[17] = *(v3 - 8);
  v2[18] = swift_task_alloc();
  v4 = type metadata accessor for OnConflict();
  v2[19] = v4;
  v2[20] = *(v4 - 8);
  v2[21] = swift_task_alloc();
  v5 = type metadata accessor for Table();
  v2[22] = v5;
  v2[23] = *(v5 - 8);
  v2[24] = swift_task_alloc();
  v6 = type metadata accessor for Insert();
  v2[25] = v6;
  v2[26] = *(v6 - 8);
  v2[27] = swift_task_alloc();

  return _swift_task_switch(sub_1011A5EE0, v1, 0);
}

uint64_t sub_1011A5EE0()
{
  v1 = *(*(v0 + 112) + 112);
  *(v0 + 224) = v1;
  return _swift_task_switch(sub_1011A5F04, v1, 0);
}

uint64_t sub_1011A5F04()
{
  v0[29] = type metadata accessor for LocalStorageDatabase(0);
  v0[30] = sub_1011A70B4(&qword_1016B62E0, type metadata accessor for LocalStorageDatabase, &unk_1013D7B20);
  Database.startup()();
  v0[31] = v1;
  if (v1)
  {

    v2 = v0[1];

    return v2();
  }

  else
  {
    v4 = v0[28];

    return _swift_task_switch(sub_1011A604C, v4, 0);
  }
}

uint64_t sub_1011A604C()
{
  *(v0 + 256) = Database.writeConnection.getter();

  return _swift_task_switch(sub_1011A60BC, 0, 0);
}

unint64_t sub_1011A60BC()
{
  if (!*(v0 + 256))
  {
    sub_10020223C();
    swift_allocError();
    *v33 = 2;
    *(v33 + 4) = 1;
    swift_willThrow();
    goto LABEL_49;
  }

  if (qword_101694C60 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 184);
  v2 = *(v0 + 192);
  v4 = *(v0 + 168);
  v3 = *(v0 + 176);
  v5 = *(v0 + 152);
  v6 = *(v0 + 160);
  v7 = sub_1000076D4(v3, qword_10177BAB8);
  (*(v1 + 16))(v2, v7, v3);
  (*(v6 + 104))(v4, enum case for OnConflict.replace(_:), v5);
  sub_1000BC4D4(&qword_101699D48, &unk_1013B6E00);
  type metadata accessor for Setter();
  *(swift_allocObject() + 16) = xmmword_1013E2E80;
  if (qword_101694C68 != -1)
  {
    swift_once();
  }

  v8 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
  sub_1000076D4(v8, qword_10177BAD0);
  type metadata accessor for UUID();
  <- infix<A>(_:_:)();
  if (qword_101694C70 != -1)
  {
    swift_once();
  }

  v9 = sub_1000BC4D4(&qword_101699E70, &unk_101393160);
  sub_1000076D4(v9, qword_10177BAE8);
  v10 = type metadata accessor for AccessoryPairingAnalytics(0);
  <- infix<A>(_:_:)();
  if (qword_101694C80 != -1)
  {
    swift_once();
  }

  v11 = *(v0 + 104);
  v12 = sub_1000BC4D4(&qword_101699DA0, &unk_10139D120);
  sub_1000076D4(v12, qword_10177BB18);
  *(v0 + 272) = *(v11 + v10[6]);
  sub_100028088();
  <- infix<A>(_:_:)();
  if (qword_101694CB0 != -1)
  {
    swift_once();
  }

  v13 = *(v0 + 104);
  v14 = sub_1000BC4D4(&qword_101699DC0, &unk_10139D110);
  sub_1000076D4(v14, qword_10177BBA8);
  v15 = (v13 + v10[7]);
  v16 = *v15;
  v17 = v15[1];
  *(v0 + 16) = *v15;
  *(v0 + 24) = v17;
  sub_100017D5C(v16, v17);
  <- infix<A>(_:_:)();
  sub_100016590(*(v0 + 16), *(v0 + 24));
  if (qword_101694C78 != -1)
  {
    swift_once();
  }

  v18 = *(v0 + 104);
  v66 = sub_1000BC4D4(&qword_10169DE00, &unk_10139D160);
  sub_1000076D4(v66, qword_10177BB00);
  v19 = (v18 + v10[8]);
  v20 = v19[1];
  *(v0 + 32) = *v19;
  *(v0 + 40) = v20;

  <- infix<A>(_:_:)();

  if (qword_101694CB8 != -1)
  {
    swift_once();
  }

  v21 = *(v0 + 136);
  v22 = *(v0 + 144);
  v24 = *(v0 + 120);
  v23 = *(v0 + 128);
  v25 = *(v0 + 104);
  v26 = sub_1000076D4(v23, qword_10177BBC0);
  (*(v21 + 16))(v22, v26, v23);
  v68 = v10;
  sub_1011A7044(v25 + v10[12], v24);
  v27 = type metadata accessor for MACAddress();
  v28 = *(v27 - 8);
  v29 = (*(v28 + 48))(v24, 1, v27);
  v30 = *(v0 + 120);
  if (v29 == 1)
  {
    sub_10000B3A8(*(v0 + 120), &qword_1016A40D0, &unk_10138BE70);
    v31 = 0;
    v32 = 0xF000000000000000;
  }

  else
  {
    v31 = MACAddress.dataRepresentation.getter();
    v32 = v34;
    (*(v28 + 8))(v30, v27);
  }

  v35 = *(v0 + 136);
  v36 = *(v0 + 144);
  v37 = *(v0 + 128);
  *(v0 + 48) = v31;
  *(v0 + 56) = v32;
  <- infix<A>(_:_:)();
  sub_100006654(*(v0 + 48), *(v0 + 56));
  (*(v35 + 8))(v36, v37);
  if (qword_101694C90 != -1)
  {
    swift_once();
  }

  v38 = *(v0 + 104);
  v39 = sub_1000BC4D4(&qword_101699E60, &unk_1013BF4C0);
  sub_1000076D4(v39, qword_10177BB48);
  v40 = v38 + v68[9];
  v41 = *v40;
  v42 = *(v40 + 8);
  if ((sub_100313A28(*v40, v42) & 0x8000000000000000) == 0 && sub_100313A28(v41, v42) < &_mh_execute_header)
  {
    result = sub_100313A28(v41, v42);
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (!HIDWORD(result))
    {
      goto LABEL_27;
    }

    __break(1u);
    return result;
  }

  LODWORD(result) = 0;
LABEL_27:
  *(v0 + 264) = result;
  sub_10022A60C();
  <- infix<A>(_:_:)();
  if (qword_101694C88 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v39, qword_10177BB30);
  *(v0 + 268) = sub_100313BD8(*v40, *(v40 + 8));
  <- infix<A>(_:_:)();
  if (qword_101694C98 != -1)
  {
    swift_once();
  }

  v44 = *(v0 + 104);
  sub_1000076D4(v66, qword_10177BB60);
  v45 = 0xE700000000000000;
  v46 = 0x6E776F6E6B6E75;
  v47 = 0xE800000000000000;
  v48 = 0x6465726961706E75;
  if (*(v44 + v68[10]) != 2)
  {
    v48 = 0x64656B636F6CLL;
    v47 = 0xE600000000000000;
  }

  if (*(v44 + v68[10]))
  {
    v46 = 0x646572696170;
    v45 = 0xE600000000000000;
  }

  if (*(v44 + v68[10]) <= 1u)
  {
    v49 = v46;
  }

  else
  {
    v49 = v48;
  }

  if (*(v44 + v68[10]) <= 1u)
  {
    v50 = v45;
  }

  else
  {
    v50 = v47;
  }

  *(v0 + 64) = v49;
  *(v0 + 72) = v50;
  <- infix<A>(_:_:)();

  if (qword_101694CA0 != -1)
  {
    swift_once();
  }

  v51 = *(v0 + 104);
  v52 = sub_1000BC4D4(&qword_101699E88, &unk_10139D170);
  sub_1000076D4(v52, qword_10177BB78);
  *(v0 + 96) = *(v51 + v68[11]) - 1;
  <- infix<A>(_:_:)();
  if (qword_101694CA8 != -1)
  {
    swift_once();
  }

  v53 = *(v0 + 104);
  v54 = sub_1000BC4D4(&qword_10169DDE0, &unk_1013B6420);
  sub_1000076D4(v54, qword_10177BB90);
  v55 = (v53 + v68[13]);
  v56 = v55[1];
  *(v0 + 80) = *v55;
  *(v0 + 88) = v56;

  <- infix<A>(_:_:)();

  if (qword_101694CC0 != -1)
  {
    swift_once();
  }

  v67 = *(v0 + 248);
  v58 = *(v0 + 184);
  v57 = *(v0 + 192);
  v59 = *(v0 + 168);
  v60 = *(v0 + 176);
  v61 = *(v0 + 160);
  v65 = *(v0 + 152);
  v62 = sub_1000BC4D4(&qword_101699D78, &unk_1013BF4B0);
  sub_1000076D4(v62, qword_10177BBD8);
  type metadata accessor for Date();
  <- infix<A>(_:_:)();
  QueryType.insert(or:_:)();

  (*(v61 + 8))(v59, v65);
  (*(v58 + 8))(v57, v60);
  Connection.run(_:)();
  v63 = *(v0 + 208);
  if (!v67)
  {
    (*(v63 + 8))();

    v64 = *(v0 + 8);
    goto LABEL_51;
  }

  (*(v63 + 8))(*(v0 + 216), *(v0 + 200));

LABEL_49:

  v64 = *(v0 + 8);
LABEL_51:

  return v64();
}

uint64_t sub_1011A6C24()
{
  v1[2] = v0;
  v2 = type metadata accessor for Delete();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();

  return _swift_task_switch(sub_1011A6CE4, v0, 0);
}

uint64_t sub_1011A6CE4()
{
  v1 = *(*(v0 + 16) + 112);
  *(v0 + 48) = v1;
  return _swift_task_switch(sub_1011A6D08, v1, 0);
}

uint64_t sub_1011A6D08()
{
  v0[7] = type metadata accessor for LocalStorageDatabase(0);
  v0[8] = sub_1011A70B4(&qword_1016B62E0, type metadata accessor for LocalStorageDatabase, &unk_1013D7B20);
  Database.startup()();
  v0[9] = v1;
  if (v1)
  {

    v2 = v0[1];

    return v2();
  }

  else
  {
    v4 = v0[6];

    return _swift_task_switch(sub_1011A6E14, v4, 0);
  }
}

uint64_t sub_1011A6E14()
{
  *(v0 + 80) = Database.writeConnection.getter();

  return _swift_task_switch(sub_1011A6E84, 0, 0);
}

uint64_t sub_1011A6E84()
{
  if (v0[10])
  {
    if (qword_101694C60 != -1)
    {
      swift_once();
    }

    v2 = v0[4];
    v1 = v0[5];
    v3 = v0[3];
    v4 = type metadata accessor for Table();
    sub_1000076D4(v4, qword_10177BAB8);
    QueryType.delete()();
    Connection.run(_:)();
    (*(v2 + 8))(v1, v3);
  }

  else
  {
    sub_10020223C();
    swift_allocError();
    *v5 = 2;
    *(v5 + 4) = 1;
    swift_willThrow();
  }

  v6 = v0[1];

  return v6();
}

uint64_t sub_1011A6FE0()
{

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_1011A7044(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&qword_1016A40D0, &unk_10138BE70);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1011A70B4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1011A70FC()
{
  result = qword_101699D88;
  if (!qword_101699D88)
  {
    sub_1000BC580(&qword_101699D78, &unk_1013BF4B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101699D88);
  }

  return result;
}

uint64_t sub_1011A7160(uint64_t a1)
{
  v1 = type metadata accessor for AccessoryPairingAnalytics(0);
  v50 = *(v1 - 8);
  v2 = __chkstk_darwin(v1 - 8);
  v4 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v2);
  v7 = (&v39 - v6);
  __chkstk_darwin(v5);
  v9 = &v39 - v8;
  v10 = type metadata accessor for Row();
  v44 = *(v10 - 8);
  v11 = __chkstk_darwin(v10);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v39 - v14;
  v16 = sub_1000BC4D4(&qword_101699D68, &unk_1013B6450);
  __chkstk_darwin(v16 - 8);
  v18 = &v39 - v17;
  v19 = v51;
  result = Connection.prepare(_:)();
  if (!v19)
  {
    v51 = 0;
    v47 = v9;
    v48 = v13;
    v49 = v7;

    dispatch thunk of _AnySequenceBox._makeIterator()();
    dispatch thunk of _AnyIteratorBoxBase.next()();
    v21 = v44;
    v45 = *(v44 + 48);
    v46 = v44 + 48;
    if (v45(v18, 1, v10) == 1)
    {
      v22 = _swiftEmptyArrayStorage;
LABEL_4:

      sub_1000BC4D4(&qword_1016CA128, &qword_10140A638);
      result = swift_allocObject();
      *(result + 16) = v22;
    }

    else
    {
      v23 = v10;
      v24 = v21 + 32;
      v25 = *(v21 + 32);
      v43 = (v21 + 16);
      v44 = v25;
      v42 = (v21 + 8);
      v22 = _swiftEmptyArrayStorage;
      v40 = v23;
      v41 = v4;
      while (1)
      {
        v26 = v18;
        v27 = v24;
        (v44)(v15, v18, v23);
        v28 = v48;
        (*v43)(v48, v15, v23);
        v29 = v23;
        v30 = v49;
        v31 = v51;
        v32 = sub_10111D480(v28, v49);
        v51 = v31;
        if (v31)
        {
          break;
        }

        (*v42)(v15, v29, v32);
        v33 = v30;
        v34 = v47;
        sub_1011A75C0(v33, v47);
        sub_1011A75C0(v34, v4);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v22 = sub_100A5EABC(0, v22[2] + 1, 1, v22);
        }

        v18 = v26;
        v36 = v22[2];
        v35 = v22[3];
        if (v36 >= v35 >> 1)
        {
          v22 = sub_100A5EABC((v35 > 1), v36 + 1, 1, v22);
        }

        v22[2] = v36 + 1;
        v37 = v22 + ((*(v50 + 80) + 32) & ~*(v50 + 80)) + *(v50 + 72) * v36;
        v4 = v41;
        sub_1011A75C0(v41, v37);
        dispatch thunk of _AnyIteratorBoxBase.next()();
        v23 = v40;
        v38 = v45(v26, 1, v40);
        v24 = v27;
        if (v38 == 1)
        {
          goto LABEL_4;
        }
      }

      (*v42)(v15, v29);
    }
  }

  return result;
}

uint64_t sub_1011A75C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccessoryPairingAnalytics(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1011A7624@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v24 = a1;
  v3 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v3);
  v4 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000BC4D4(&qword_1016CA2A8, &unk_10140A700);
  swift_allocObject();
  *a2 = PassthroughSubject.init()();
  v23 = sub_1000BC488();
  (*(v6 + 104))(v8, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v5);
  static DispatchQoS.unspecified.getter();
  v25 = _swiftEmptyArrayStorage;
  sub_1000249C8(&qword_10169BB60, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_1000BC4D4(&unk_101695580, &qword_101385D90);
  sub_100014084(&qword_10169BB70, &unk_101695580, &qword_101385D90);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  *(a2 + 1) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v9 = type metadata accessor for BeaconPayloadFileManager(0);
  v10 = v9[6];
  v11 = type metadata accessor for URL();
  (*(*(v11 - 8) + 32))(&a2[v10], v24, v11);
  v12 = v9[7];
  if (qword_101694940 != -1)
  {
    swift_once();
  }

  OS_dispatch_queue.sync<A>(execute:)();
  v13 = v25;
  v14 = sub_101073524(v25);
  v15 = sub_101073C48(v13);

  *&a2[v12] = v14 * 60.0 / v15;
  v16 = v9[8];
  OS_dispatch_queue.sync<A>(execute:)();
  v17 = sub_101073C48(v25);

  *&a2[v16] = v17;
  v18 = v9[9];
  OS_dispatch_queue.sync<A>(execute:)();
  sub_101073C64(v25);
  v20 = v19;

  *&a2[v18] = v20;
  v21 = v9[10];
  type metadata accessor for BeaconPayloadCountEstimate();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = 1;
  *&a2[v21] = result;
  return result;
}

uint64_t sub_1011A7A60(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v23 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v21 = *(v9 - 8);
  v22 = v9;
  __chkstk_darwin(v9);
  v11 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for BeaconPayloadFileManager(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12 - 8);
  v20[1] = *(v3 + 8);
  sub_1011AC80C(v3, v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for BeaconPayloadFileManager);
  v15 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v16 = swift_allocObject();
  sub_1011AC874(v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15, type metadata accessor for BeaconPayloadFileManager);
  v17 = (v16 + ((v14 + v15 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v17 = a1;
  v17[1] = a2;
  aBlock[4] = sub_1011AC8DC;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_101669878;
  v18 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v24 = _swiftEmptyArrayStorage;
  sub_1000249C8(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_100014084(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v18);
  (*(v23 + 8))(v8, v6);
  (*(v21 + 8))(v11, v22);
}

uint64_t sub_1011A7DE8(uint64_t (*a1)(char *), uint64_t a2)
{
  v32 = a1;
  v33 = a2;
  v36 = type metadata accessor for URLResourceValues();
  v2 = *(v36 - 8);
  __chkstk_darwin(v36);
  v37 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  __chkstk_darwin(v4 - 8);
  v6 = &v30 - v5;
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v40 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DirectorySequence();
  v30 = *(v10 - 8);
  v31 = v10;
  __chkstk_darwin(v10);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for BeaconPayloadFileManager(0);
  sub_1000BC4D4(&qword_10169F480, &qword_1013A0A50);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_101385D80;
  *(v13 + 32) = NSURLIsDirectoryKey;
  v14 = objc_opt_self();
  v15 = NSURLIsDirectoryKey;
  v16 = [v14 defaultManager];
  NSFileManager.flatSequence(at:includingPropertiesForKeys:)();

  v39 = v12;
  DirectorySequence.next()();
  v17 = *(v8 + 48);
  v38 = (v8 + 48);
  if (v17(v6, 1, v7) == 1)
  {
LABEL_2:

    (*(v30 + 8))(v39, v31);
    return sub_10000B3A8(v6, &unk_101696AC0, &qword_101390A60);
  }

  v19 = v37;
  v20 = (v2 + 8);
  v21 = (v38 - 5);
  v34 = *(v38 - 2);
  v35 = v38 - 2;
  while (1)
  {
    v22 = v6;
    v23 = v6;
    v24 = v7;
    v34(v40, v23, v7);
    v25 = objc_autoreleasePoolPush();

    sub_10112A718(v26);

    URL.resourceValues(forKeys:)();

    v27 = URLResourceValues.isDirectory.getter();
    if (v27 != 2 && (v27 & 1) != 0)
    {
      break;
    }

    (*v20)(v19, v36);
    objc_autoreleasePoolPop(v25);
    v7 = v24;
    (*v21)(v40, v24);
LABEL_5:
    v6 = v22;
    DirectorySequence.next()();
    if ((*v38)(v22, 1, v7) == 1)
    {
      goto LABEL_2;
    }
  }

  v28 = v40;
  v29 = v32(v40);
  (*v20)(v19, v36);
  objc_autoreleasePoolPop(v25);
  v7 = v24;
  (*v21)(v28, v24);
  if (v29)
  {
    goto LABEL_5;
  }

  return (*(v30 + 8))(v39, v31);
}

void sub_1011A82B0(uint64_t a1)
{
  v3 = v2;
  dispatch_assert_queue_V2(*(v1 + 8));
  v5 = *(a1 + 16);
  if (v5)
  {
    v6 = *(type metadata accessor for URL() - 8);
    v7 = a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v8 = *(v6 + 72);
    while (1)
    {
      v9 = objc_autoreleasePoolPush();
      sub_1011AA3E8(v7, v1, &v10);
      if (v3)
      {
        break;
      }

      v3 = 0;
      objc_autoreleasePoolPop(v9);
      v7 += v8;
      if (!--v5)
      {
        return;
      }
    }

    objc_autoreleasePoolPop(v9);
  }
}

uint64_t sub_1011A8398(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v41 = a2;
  v42 = a3;
  v44 = type metadata accessor for URLResourceValues();
  v46 = *(v44 - 8);
  __chkstk_darwin(v44);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  __chkstk_darwin(v6 - 8);
  v8 = &v37 - v7;
  v9 = type metadata accessor for URL();
  v38 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DirectorySequence();
  v39 = *(v12 - 8);
  v40 = v12;
  __chkstk_darwin(v12);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchPredicate();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = (&v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = *(a1 + 8);
  *v18 = v19;
  (*(v16 + 104))(v18, enum case for DispatchPredicate.onQueue(_:), v15);
  v20 = v19;
  v21 = _dispatchPreconditionTest(_:)();
  (*(v16 + 8))(v18, v15);
  if (v21)
  {
    v47 = v5;
    v37 = type metadata accessor for BeaconPayloadFileManager(0);
    v22 = [objc_opt_self() defaultManager];
    v48 = a1;
    NSFileManager.flatSequence(at:includingPropertiesForKeys:)();

    v23 = (v38 + 48);
    v43 = v46 + 1;
    v45 = (v38 + 32);
    v46 = (v38 + 8);
    v24 = v14;
    while (1)
    {
      DirectorySequence.next()();
      if ((*v23)(v8, 1, v9) == 1)
      {
        break;
      }

      v25 = v8;
      (*v45)(v11, v8, v9);
      v26 = objc_autoreleasePoolPush();
      sub_10112A718(_swiftEmptyArrayStorage);
      v27 = v9;
      v28 = v47;
      URL.resourceValues(forKeys:)();

      v29 = sub_1011A8F44(v11);
      (*v43)(v28, v44);
      objc_autoreleasePoolPop(v26);
      (*v46)(v11, v27);
      v9 = v27;
      v8 = v25;
      if ((v29 & 1) == 0)
      {
        (*(v39 + 8))(v24, v40);
        goto LABEL_7;
      }
    }

    (*(v39 + 8))(v24, v40);
    sub_10000B3A8(v8, &unk_101696AC0, &qword_101390A60);
LABEL_7:
    v30 = *(v48 + *(v37 + 40));
    *(v30 + 16) = 0;
    *(v30 + 24) = 0;
    return sub_1011A899C(0, v41, v42);
  }

  else
  {
    __break(1u);
    swift_once();
    v32 = qword_10177C360;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_101385D80;
    v49 = v21;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v34 = String.init<A>(describing:)();
    v36 = v35;
    *(v33 + 56) = &type metadata for String;
    *(v33 + 64) = sub_100008C00();
    *(v33 + 32) = v34;
    *(v33 + 40) = v36;
    os_log(_:dso:log:_:_:)(v15, &_mh_execute_header, v32, "Failed to clear cache: %@", 25, 2, v33);

    swift_errorRetain();
    sub_1011A899C(v21, v41, v42);
  }
}

uint64_t sub_1011A899C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20 = a2;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v23 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v21 = *(v8 - 8);
  v22 = v8;
  __chkstk_darwin(v8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS.QoSClass();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000BC488();
  (*(v12 + 104))(v14, enum case for DispatchQoS.QoSClass.default(_:), v11);
  v15 = static OS_dispatch_queue.global(qos:)();
  (*(v12 + 8))(v14, v11);
  v16 = swift_allocObject();
  v16[2] = v20;
  v16[3] = a3;
  v16[4] = a1;
  aBlock[4] = sub_1002EF79C;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_1016698C8;
  v17 = _Block_copy(aBlock);

  swift_errorRetain();
  static DispatchQoS.unspecified.getter();
  v24 = _swiftEmptyArrayStorage;
  sub_1000249C8(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_100014084(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v17);

  (*(v23 + 8))(v7, v5);
  (*(v21 + 8))(v10, v22);
}

void sub_1011A8D3C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v24 = 0;
  v11 = swift_allocObject();
  v11[2] = a1;
  v11[3] = a2;
  v11[4] = a3;
  v12 = swift_allocObject();
  *(v12 + 16) = a1 & 1;
  v22 = 0;
  v23 = 0;
  v21 = _swiftEmptyArrayStorage;
  v15[2] = a4;
  v15[3] = &v23;
  v15[4] = sub_1011AAD7C;
  v15[5] = v12;
  v15[6] = sub_1011AAD70;
  v15[7] = v11;
  v15[8] = a3;
  v16 = 0;
  v17 = &v22;
  v18 = &v21;
  v19 = &v24;

  sub_1011A7DE8(sub_1011AADC0, v15);
  v13 = objc_autoreleasePoolPush();
  sub_1011A9F0C(sub_1011AAD70, v11, &v21, &v20);
  objc_autoreleasePoolPop(v13);
  if (v5)
  {
    __break(1u);
  }

  else
  {

    v14 = v20;

    *a5 = v14;
  }
}

uint64_t sub_1011A8F44(uint64_t a1)
{
  sub_1000BC4D4(&qword_1016B3A48, &qword_1013D47E8);
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_101385D80;
  (*(v3 + 16))(v5 + v4, a1, v2);
  sub_1011A82B0(v5);
  swift_setDeallocating();
  (*(v3 + 8))(v5 + v4, v2);
  swift_deallocClassInstance();
  return 1;
}

uint64_t sub_1011A9174(void (**a1)(char *, char *, uint64_t), uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int8 a9, void *a10, uint64_t *a11, void *a12)
{
  v95 = a8;
  v110 = a7;
  v126 = a1;
  v127 = a3;
  v98 = sub_1000BC4D4(&qword_1016A5A10, &unk_10140A6F0);
  v97 = *(v98 - 8);
  v15 = __chkstk_darwin(v98);
  v90 = &v89 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v89 = &v89 - v18;
  __chkstk_darwin(v17);
  v105 = &v89 - v19;
  v107 = type metadata accessor for BeaconPayloadFile.MetaData(0);
  v123 = *(v107 - 8);
  v20 = __chkstk_darwin(v107);
  v104 = &v89 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v93 = &v89 - v22;
  v23 = sub_1000BC4D4(&qword_10169BA58, &unk_101395640);
  v24 = __chkstk_darwin(v23 - 8);
  v121 = &v89 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v24);
  v111 = &v89 - v27;
  __chkstk_darwin(v26);
  v29 = &v89 - v28;
  v30 = type metadata accessor for URLResourceValues();
  v116 = *(v30 - 8);
  v117 = v30;
  __chkstk_darwin(v30);
  v32 = &v89 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  __chkstk_darwin(v33 - 8);
  v35 = &v89 - v34;
  v36 = type metadata accessor for URL();
  v37 = *(v36 - 8);
  v38 = __chkstk_darwin(v36);
  v118 = &v89 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v38);
  v128 = &v89 - v40;
  v92 = type metadata accessor for DirectorySequence();
  v91 = *(v92 - 8);
  __chkstk_darwin(v92);
  v124 = &v89 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = objc_opt_self();
  v99 = a5;
  sub_100012908(a4, a5);
  v43 = v36;
  sub_100012908(a6, v110);
  v44 = [v42 defaultManager];
  NSFileManager.flatSequence(at:includingPropertiesForKeys:)();

  DirectorySequence.next()();
  v45 = *(v37 + 48);
  v120 = a4;
  v108 = a6;
  v46 = a4 | a6;
  v47 = v29;
  v48 = v107;
  v49 = v46 == 0;
  v122 = (v37 + 48);
  if (v45(v35, 1, v43) == 1)
  {
LABEL_2:
    (*(v91 + 8))(v124, v92);
    sub_10000B3A8(v35, &unk_101696AC0, &qword_101390A60);
    sub_1000BB27C(v108, v110);
    sub_1000BB27C(v120, v99);
    return 1;
  }

  v103 = a12;
  v50 = a10;
  v109 = a11;
  v126 = (v122 - 4);
  v102 = a9;
  v106 = v49 | a9;
  v94 = v123 + 56;
  v119 = (v122 - 5);
  v112 = (v123 + 48);
  v113 = (v116 + 1);
  v115 = *(v122 - 2);
  v116 = v122 - 2;
  v100 = v29;
  v101 = v32;
  v96 = a10;
  v125 = v43;
  v114 = v35;
  while (1)
  {
    v115(v128, v35, v43);
    v51 = objc_autoreleasePoolPush();
    sub_10112A718(_swiftEmptyArrayStorage);
    URL.resourceValues(forKeys:)();

    if (__OFADD__(*v127, 1))
    {
      break;
    }

    v53 = v128;
    ++*v127;
    v54 = v43;
    v55 = *v126;
    v56 = v118;
    (*v126)(v118, v53, v54);
    type metadata accessor for BeaconPayloadFile(0);
    swift_allocObject();
    if (!sub_10047815C(v56))
    {
      v43 = v125;
      goto LABEL_38;
    }

    v123 = v51;
    if (v106)
    {
      result = (*v94)(v47, 1, 1, v48);
    }

    else
    {
      result = sub_1004784B0(v47);
    }

    if (v120)
    {
      v57 = v111;
      sub_1000D2A70(v47, v111, &qword_10169BA58, &unk_101395640);
      if ((*v112)(v57, 1, v48) == 1)
      {
        result = sub_10000B3A8(v111, &qword_10169BA58, &unk_101395640);
      }

      else
      {
        v58 = v93;
        sub_1011AC874(v111, v93, type metadata accessor for BeaconPayloadFile.MetaData);
        v59 = v99;

        v60 = v120;
        v61 = v120(v58);
        v32 = v101;
        v62 = v59;
        v48 = v107;
        sub_1000BB27C(v60, v62);
        v63 = v58;
        v50 = v96;
        v47 = v100;
        result = sub_1004796F8(v63);
        if ((v61 & 1) == 0)
        {
          sub_10000B3A8(v47, &qword_10169BA58, &unk_101395640);

          v43 = v125;
          goto LABEL_37;
        }
      }
    }

    if (__OFADD__(*v50, 1))
    {
      goto LABEL_45;
    }

    ++*v50;
    v64 = v121;
    sub_1000D2A70(v47, v121, &qword_10169BA58, &unk_101395640);
    if ((*v112)(v64, 1, v48) == 1)
    {
      sub_10000B3A8(v121, &qword_10169BA58, &unk_101395640);
      v65 = v50;
    }

    else
    {
      v66 = v104;
      sub_1011AC874(v121, v104, type metadata accessor for BeaconPayloadFile.MetaData);
      v67 = *(v98 + 48);
      v68 = v105;
      v55(v105, v128, v125);
      sub_1011AC80C(v66, v68 + v67, type metadata accessor for BeaconPayloadFile.MetaData);
      v69 = v109;
      v70 = *v109;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v69 = v70;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v70 = sub_100A5F10C(0, v70[2] + 1, 1, v70);
        *v69 = v70;
      }

      v73 = v70[2];
      v72 = v70[3];
      v47 = v100;
      v32 = v101;
      if (v73 >= v72 >> 1)
      {
        v88 = sub_100A5F10C((v72 > 1), v73 + 1, 1, v70);
        *v109 = v88;
      }

      sub_1004796F8(v104);
      v74 = v109;
      v75 = *v109;
      *(v75 + 16) = v73 + 1;
      sub_1011AAE0C(v105, v75 + ((*(v97 + 80) + 32) & ~*(v97 + 80)) + *(v97 + 72) * v73);
      v65 = (*v74 + 16);
      v48 = v107;
    }

    *v103 = *v65;
    v43 = v125;
    if (v102)
    {
      sub_10000B3A8(v47, &qword_10169BA58, &unk_101395640);

      goto LABEL_37;
    }

    if (v108)
    {
      v76 = v109;
      v77 = *(*v109 + 16);

      if (v77 < v95 || (result = sub_1011AC6E4(v76, v108, v110, sub_100607464), v78 = *v76, v79 = *(*v76 + 16), v79 <= v95))
      {
        sub_10000B3A8(v47, &qword_10169BA58, &unk_101395640);

        sub_1000BB27C(v108, v110);
      }

      else
      {
        if (!v79)
        {
          goto LABEL_46;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v80 = v78[2];
          if (!v80)
          {
            goto LABEL_42;
          }
        }

        else
        {
          v78 = sub_100607464(v78);
          v80 = v78[2];
          if (!v80)
          {
LABEL_42:
            __break(1u);

            objc_autoreleasePoolPop(&unk_101395640);
            (*(v91 + 8))(v124, v92);
            (*v119)(v128, v43);
            sub_1000BB27C(v108, v110);
            sub_1000BB27C(v120, v99);

            return 1;
          }
        }

        v81 = v80 - 1;
        v82 = v90;
        sub_1011AAE0C(v78 + ((*(v97 + 80) + 32) & ~*(v97 + 80)) + *(v97 + 72) * (v80 - 1), v90);
        v78[2] = v81;
        v48 = v107;
        v83 = v109;
        *v109 = v78;

        sub_1000BB27C(v108, v110);
        sub_10000B3A8(v47, &qword_10169BA58, &unk_101395640);
        v84 = v82;
        v32 = v101;
        v85 = v89;
        sub_1011AAE0C(v84, v89);
        sub_1004796F8(v85 + *(v98 + 48));
        (*v119)(v85, v43);
        *v103 = *(*v83 + 16);
      }

      v50 = v96;
LABEL_37:
      v51 = v123;
LABEL_38:
      (*v113)(v32, v117);
      objc_autoreleasePoolPop(v51);
      (*v119)(v128, v43);
      v35 = v114;
      goto LABEL_39;
    }

    sub_10000B3A8(v47, &qword_10169BA58, &unk_101395640);

    if (v120)
    {
      goto LABEL_37;
    }

    v86 = *v50;
    (*v113)(v32, v117);
    objc_autoreleasePoolPop(v123);
    (*v119)(v128, v43);
    v87 = v86 < v95;
    v35 = v114;
    if (!v87)
    {
      (*(v91 + 8))(v124, v92);
      sub_1000BB27C(v108, v110);
      sub_1000BB27C(v120, v99);
      return 0;
    }

LABEL_39:
    DirectorySequence.next()();
    if ((*v122)(v35, 1, v43) == 1)
    {
      goto LABEL_2;
    }
  }

  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
  return result;
}

uint64_t sub_1011A9F0C@<X0>(uint64_t (*a1)(uint64_t, uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  v55 = sub_1000BC4D4(&qword_1016A5A10, &unk_10140A6F0);
  v9 = *(v55 - 8);
  v10 = __chkstk_darwin(v55);
  v53 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v54 = &v47 - v12;
  v13 = type metadata accessor for URL();
  v56 = *(v13 - 8);
  v14 = __chkstk_darwin(v13);
  v16 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v14);
  if (!a1)
  {
    v34 = *a3;
    v35 = *(*a3 + 16);
    v22 = _swiftEmptyArrayStorage;
    if (v35)
    {
      v36 = &v47 - v18;
      v50 = a4;
      v51 = v4;
      v57 = _swiftEmptyArrayStorage;

      sub_1011257E8(0, v35, 0);
      v22 = v57;
      v37 = *(v9 + 80);
      v49 = v34;
      v38 = v34 + ((v37 + 32) & ~v37);
      v52 = *(v9 + 72);
      v39 = (v56 + 32);
      do
      {
        v40 = v54;
        sub_1000D2A70(v38, v54, &qword_1016A5A10, &unk_10140A6F0);
        v41 = v53;
        sub_1011AAE0C(v40, v53);
        v42 = *(v55 + 48);
        v43 = *v39;
        (*v39)(v36, v41, v13);
        sub_1004796F8(v41 + v42);
        v57 = v22;
        v44 = v36;
        v46 = v22[2];
        v45 = v22[3];
        if (v46 >= v45 >> 1)
        {
          sub_1011257E8((v45 > 1), v46 + 1, 1);
          v22 = v57;
        }

        v22[2] = v46 + 1;
        v43(v22 + ((*(v56 + 80) + 32) & ~*(v56 + 80)) + *(v56 + 72) * v46, v44, v13);
        v38 += v52;
        --v35;
        v36 = v44;
      }

      while (v35);

      a4 = v50;
    }

    goto LABEL_16;
  }

  v57 = *a3;
  swift_bridgeObjectRetain_n();
  sub_100012908(a1, a2);
  sub_1011AC6E4(&v57, a1, a2, sub_100B32250);
  if (!v4)
  {

    v19 = v57;
    v20 = v57[2];
    if (v20)
    {
      v48 = a1;
      v49 = a2;
      v50 = a4;
      v51 = 0;
      v57 = _swiftEmptyArrayStorage;
      v21 = v19;
      sub_1011257E8(0, v20, 0);
      v22 = v57;
      v23 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v24 = v9;
      v47 = v21;
      v25 = v21 + v23;
      v52 = *(v24 + 72);
      v26 = (v56 + 32);
      v27 = v13;
      do
      {
        v28 = v54;
        sub_1000D2A70(v25, v54, &qword_1016A5A10, &unk_10140A6F0);
        v29 = v53;
        sub_1011AAE0C(v28, v53);
        v30 = *(v55 + 48);
        v31 = *v26;
        (*v26)(v16, v29, v27);
        sub_1004796F8(v29 + v30);
        v57 = v22;
        v33 = v22[2];
        v32 = v22[3];
        if (v33 >= v32 >> 1)
        {
          sub_1011257E8((v32 > 1), v33 + 1, 1);
          v22 = v57;
        }

        v22[2] = v33 + 1;
        v31(v22 + ((*(v56 + 80) + 32) & ~*(v56 + 80)) + *(v56 + 72) * v33, v16, v27);
        v25 += v52;
        --v20;
      }

      while (v20);
      sub_1000BB27C(v48, v49);

      a4 = v50;
    }

    else
    {

      result = sub_1000BB27C(a1, a2);
      v22 = _swiftEmptyArrayStorage;
    }

LABEL_16:
    *a4 = v22;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_1011AA3E8(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = v3;
  v65 = a2;
  v66 = type metadata accessor for URLResourceValues();
  v63 = *(v66 - 8);
  __chkstk_darwin(v66);
  v67 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  __chkstk_darwin(v7 - 8);
  v9 = &v54 - v8;
  v10 = type metadata accessor for DirectorySequence();
  v56 = *(v10 - 8);
  v57 = v10;
  __chkstk_darwin(v10);
  v12 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = type metadata accessor for URL();
  v59 = *(v69 - 8);
  v13 = __chkstk_darwin(v69);
  v68 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v54 - v15;
  v58 = objc_opt_self();
  v17 = [v58 defaultManager];
  URL._bridgeToObjectiveC()(v18);
  v20 = v19;
  v70 = 0;
  v21 = [v17 removeItemAtURL:v19 error:&v70];

  v22 = v70;
  if (v21)
  {
    v23 = *(v65 + *(type metadata accessor for BeaconPayloadFileManager(0) + 40));
    v24 = v69;
    if ((*(v23 + 24) & 1) == 0)
    {
      v25 = *(v23 + 16);
      v26 = __OFSUB__(v25, 1);
      v27 = v25 - 1;
      if (v26)
      {
LABEL_21:
        __break(1u);
        goto LABEL_22;
      }

      *(v23 + 16) = v27;
      *(v23 + 24) = 0;
    }

    v28 = v22;
    URL.deletingLastPathComponent()();
    v29 = [v58 defaultManager];
    NSFileManager.flatSequence(at:includingPropertiesForKeys:)();

    DirectorySequence.next()();
    v30 = v59;
    v64 = *(v59 + 48);
    v65 = v59 + 48;
    if (v64(v9, 1, v24) != 1)
    {
      v54 = v16;
      v55 = a3;
      v16 = 0;
      v45 = (v63 + 8);
      v62 = *(v30 + 32);
      v63 = v30 + 32;
      v60 = v45;
      v61 = (v30 + 8);
      v46 = v68;
      do
      {
        v21 = v12;
        v47 = v9;
        v62(v46, v9, v24);
        v48 = objc_autoreleasePoolPush();
        sub_10112A718(_swiftEmptyArrayStorage);
        v49 = v67;
        URL.resourceValues(forKeys:)();
        if (v3)
        {

          objc_autoreleasePoolPop(v48);
          v52 = *v61;
          v53 = v69;
          (*v61)(v68, v69);
          (*(v56 + 8))(v21, v57);
          result = (v52)(v54, v53);
          a3 = v55;
          goto LABEL_19;
        }

        (*v60)(v49, v66);

        v50 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          __break(1u);
          goto LABEL_21;
        }

        objc_autoreleasePoolPop(v48);
        v46 = v68;
        v24 = v69;
        (*v61)(v68, v69);
        v9 = v47;
        v12 = v21;
        DirectorySequence.next()();
        ++v16;
      }

      while (v64(v9, 1, v24) != 1);
      (*(v56 + 8))(v21, v57);
      sub_10000B3A8(v9, &unk_101696AC0, &qword_101390A60);
      v16 = v54;
      a3 = v55;
      if (!v50)
      {
        goto LABEL_7;
      }

      return (*(v59 + 8))(v16, v24);
    }

    (*(v56 + 8))(v12, v57);
    sub_10000B3A8(v9, &unk_101696AC0, &qword_101390A60);
LABEL_7:
    v31 = [v58 defaultManager];
    URL._bridgeToObjectiveC()(v32);
    v34 = v33;
    v70 = 0;
    v35 = [v31 removeItemAtURL:v33 error:&v70];

    if (v35)
    {
      v36 = v70;
      v21 = static os_log_type_t.default.getter();
      if (qword_101695018 == -1)
      {
LABEL_9:
        v37 = qword_10177C360;
        sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
        v38 = swift_allocObject();
        *(v38 + 16) = xmmword_101385D80;
        sub_1000249C8(&qword_1016B14E0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
        v39 = v69;
        v40 = dispatch thunk of CustomStringConvertible.description.getter();
        v42 = v41;
        *(v38 + 56) = &type metadata for String;
        *(v38 + 64) = sub_100008C00();
        *(v38 + 32) = v40;
        *(v38 + 40) = v42;
        os_log(_:dso:log:_:_:)(v21, &_mh_execute_header, v37, "BeaconPayloadCache tombstone deleted empty folder: %@", 53, 2, v38);
        v24 = v39;

        return (*(v59 + 8))(v16, v24);
      }

LABEL_22:
      swift_once();
      goto LABEL_9;
    }

    v51 = v70;
    v5 = _convertNSErrorToError(_:)();

    swift_willThrow();
    result = (*(v59 + 8))(v16, v24);
  }

  else
  {
    v43 = v70;
    v5 = _convertNSErrorToError(_:)();

    result = swift_willThrow();
  }

LABEL_19:
  *a3 = v5;
  return result;
}

uint64_t type metadata accessor for BeaconPayloadFileManager(uint64_t a1)
{
  result = qword_1016CA248;
  if (!qword_1016CA248)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1011AABCC(uint64_t a1)
{
  sub_1011AAC94(319);
  if (v1 <= 0x3F)
  {
    sub_1000BC488();
    if (v2 <= 0x3F)
    {
      type metadata accessor for URL();
      if (v3 <= 0x3F)
      {
        type metadata accessor for BeaconPayloadCountEstimate();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1011AAC94(uint64_t a1)
{
  if (!qword_1016CA258)
  {
    sub_1000BC580(&unk_1016CA260, qword_10140A6B0);
    v1 = type metadata accessor for PassthroughSubject();
    if (!v2)
    {
      atomic_store(v1, &qword_1016CA258);
    }
  }
}

uint64_t sub_1011AAD08@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  type metadata accessor for BeaconPayloadCountEstimate();
  result = swift_allocObject();
  *(result + 16) = v3;
  *(result + 24) = v4;
  *a2 = result;
  return result;
}

void sub_1011AAD58(uint64_t a1@<X8>)
{
  v2 = *(*v1 + 24);
  *a1 = *(*v1 + 16);
  *(a1 + 8) = v2;
}

uint64_t sub_1011AAD7C(uint64_t a1)
{
  if (*(v1 + 16) == 1)
  {
    return *(a1 + *(type metadata accessor for BeaconPayloadFile.MetaData(0) + 24));
  }

  else
  {
    return 1;
  }
}

uint64_t sub_1011AAE0C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&qword_1016A5A10, &unk_10140A6F0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1011AAE7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v38 = type metadata accessor for BeaconPayloadFile.MetaData(0);
  v8 = __chkstk_darwin(v38);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v37 - v11;
  sub_1011AC80C(a2, &v37 - v11, type metadata accessor for BeaconPayloadFile.MetaData);
  v39 = v10;
  sub_1011AC80C(a3, v10, type metadata accessor for BeaconPayloadFile.MetaData);
  v13 = *(a1 + 16);
  if (!v13)
  {
LABEL_21:
    sub_1004796F8(v39);
    sub_1004796F8(v12);
    LOBYTE(a2) = 0;
    return a2 & 1;
  }

  v14 = (a1 + 48);
  v37 = v12;
  while (1)
  {
    v16 = *(v14 - 2);
    v15 = *(v14 - 1);
    v17 = *v14;
    if (!*v14)
    {
      break;
    }

    if (v17 == 1)
    {
      v18 = *(v38 + 28);
      v19 = v12[v18];
      v20 = v39[v18];
      swift_retain_n();
      v21 = v16(v19, v20);
      if (v4)
      {
        v12 = v37;
LABEL_24:
        sub_1011AC7F4(v16, v15, v17);
        sub_1004796F8(v39);
        sub_1004796F8(v12);
        sub_1011AC7F4(v16, v15, v17);
        return a2 & 1;
      }

      LOBYTE(a2) = v21;
      if (v21)
      {
        sub_1011AC7F4(v16, v15, 1u);
LABEL_28:
        sub_1004796F8(v39);
        sub_1004796F8(v37);
        v33 = v16;
        v34 = v15;
        v35 = 1;
        goto LABEL_29;
      }

      v22 = v16(v20, v19);
      sub_1011AC7F4(v16, v15, 1u);
      if (v22)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v25 = *(v38 + 32);
      v26 = &v12[v25];
      if (v12[v25 + 8])
      {
        goto LABEL_4;
      }

      v27 = &v39[v25];
      if (v27[8])
      {
        goto LABEL_4;
      }

      v28 = *v26;
      v29 = *v27;
      v30 = swift_retain_n();
      v31 = (v16)(v30, v28, v29);
      if (v4)
      {
        goto LABEL_24;
      }

      LOBYTE(a2) = v31;
      if (v31)
      {
        sub_1011AC7F4(v16, v15, 2u);
LABEL_32:
        sub_1004796F8(v39);
        sub_1004796F8(v37);
        v33 = v16;
        v34 = v15;
        v35 = 2;
        goto LABEL_29;
      }

      v32 = (v16)(v29, v28);
      sub_1011AC7F4(v16, v15, 2u);
      if (v32)
      {
        goto LABEL_32;
      }
    }

LABEL_3:
    sub_1011AC7F4(v16, v15, v17);
    v12 = v37;
LABEL_4:
    v14 += 24;
    if (!--v13)
    {
      goto LABEL_21;
    }
  }

  swift_retain_n();
  v23 = v16(v12, v39);
  if (v4)
  {
    goto LABEL_24;
  }

  LOBYTE(a2) = v23;
  if ((v23 & 1) == 0)
  {
    v24 = v16(v39, v12);
    sub_1011AC7F4(v16, v15, 0);
    v4 = 0;
    if (v24)
    {
      goto LABEL_26;
    }

    goto LABEL_3;
  }

  sub_1011AC7F4(v16, v15, 0);
LABEL_26:
  sub_1004796F8(v39);
  sub_1004796F8(v37);
  v33 = v16;
  v34 = v15;
  v35 = 0;
LABEL_29:
  sub_1011AC7F4(v33, v34, v35);
  return a2 & 1;
}

uint64_t sub_1011AB234(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t (*a5)(uint64_t, uint64_t), uint64_t a6)
{
  v46 = a6;
  v49 = a5;
  v51 = sub_1000BC4D4(&qword_1016A5A10, &unk_10140A6F0);
  v10 = __chkstk_darwin(v51);
  v48 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v10);
  v47 = &v39 - v13;
  v15 = *(v14 + 72);
  if (!v15)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_61;
  }

  v16 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_62;
  }

  v17 = (a2 - a1) / v15;
  v54 = a1;
  v53 = a4;
  v45 = v15;
  if (v17 >= v16 / v15)
  {
    v19 = v16 / v15 * v15;
    if (a4 < a2 || a2 + v19 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v26 = a2;
    v27 = a4;
    v28 = a4 + v19;
    if (v19 >= 1)
    {
      v29 = -v45;
      v30 = v28;
      v42 = a1;
      v43 = v27;
      v41 = -v45;
      do
      {
        v39 = v28;
        v31 = v26;
        v32 = v26 + v29;
        v44 = v26;
        v45 = v26 + v29;
        while (1)
        {
          if (v31 <= a1)
          {
            v54 = v31;
            v52 = v39;
            goto LABEL_59;
          }

          v33 = a3;
          v40 = v28;
          v50 = a3 + v29;
          v34 = v30 + v29;
          v35 = v47;
          sub_1000D2A70(v30 + v29, v47, &qword_1016A5A10, &unk_10140A6F0);
          v36 = v48;
          sub_1000D2A70(v32, v48, &qword_1016A5A10, &unk_10140A6F0);
          v37 = v49(v35 + *(v51 + 48), v36 + *(v51 + 48));
          sub_10000B3A8(v36, &qword_1016A5A10, &unk_10140A6F0);
          sub_10000B3A8(v35, &qword_1016A5A10, &unk_10140A6F0);
          if (v37)
          {
            break;
          }

          v28 = v30 + v29;
          a3 = v50;
          if (v33 < v30 || v50 >= v30)
          {
            swift_arrayInitWithTakeFrontToBack();
            a1 = v42;
          }

          else
          {
            a1 = v42;
            if (v33 != v30)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v30 += v29;
          v31 = v44;
          v32 = v45;
          v29 = v41;
          if (v34 <= v43)
          {
            v26 = v44;
            goto LABEL_58;
          }
        }

        a3 = v50;
        if (v33 < v44 || v50 >= v44)
        {
          v26 = v45;
          swift_arrayInitWithTakeFrontToBack();
          v29 = v41;
          a1 = v42;
          v28 = v40;
        }

        else
        {
          v38 = v33 == v44;
          v26 = v45;
          v29 = v41;
          a1 = v42;
          v28 = v40;
          if (!v38)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v30 > v43);
    }

LABEL_58:
    v54 = v26;
    v52 = v28;
  }

  else
  {
    v18 = v17 * v15;
    if (a4 < a1 || a1 + v18 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v44 = a4 + v18;
    v52 = a4 + v18;
    if (v18 >= 1 && a2 < a3)
    {
      v50 = a3;
      do
      {
        v21 = v47;
        sub_1000D2A70(a2, v47, &qword_1016A5A10, &unk_10140A6F0);
        v22 = v48;
        sub_1000D2A70(a4, v48, &qword_1016A5A10, &unk_10140A6F0);
        v23 = a4;
        v24 = v49(v21 + *(v51 + 48), v22 + *(v51 + 48));
        sub_10000B3A8(v22, &qword_1016A5A10, &unk_10140A6F0);
        sub_10000B3A8(v21, &qword_1016A5A10, &unk_10140A6F0);
        if (v24)
        {
          v25 = v45;
          if (a1 < a2 || a1 >= a2 + v45)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v25;
        }

        else
        {
          v25 = v45;
          a4 += v45;
          if (a1 < v23 || a1 >= a4)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != v23)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v53 = a4;
        }

        a1 += v25;
        v54 = a1;
      }

      while (a4 < v44 && a2 < v50);
    }
  }

LABEL_59:
  sub_10060AC30(&v54, &v53, &v52);
  return 1;
}

uint64_t sub_1011AB788(uint64_t *a1, unint64_t a2, uint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t), uint64_t a5)
{
  v6 = v5;
  v7 = a1;
  v8 = *a1;

  v29 = v8;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_16:
    v29 = sub_100B31E68(v29);
  }

  v23 = v7;
  *v7 = v29;
  v9 = v29 + 16;
  v10 = *(v29 + 2);
  if (v10 < 2)
  {
LABEL_10:

    *v23 = v29;
    return 1;
  }

  else
  {
    v24 = (v29 + 16);
    while (1)
    {
      v11 = *a3;
      if (!*a3)
      {
        break;
      }

      v12 = &v29[16 * v10];
      v13 = *v12;
      v7 = &v9[16 * v10];
      v14 = *v7;
      v15 = v7[1];
      v16 = *(*(sub_1000BC4D4(&qword_1016A5A10, &unk_10140A6F0) - 8) + 72);
      v17 = v11 + v16 * v13;
      v18 = v11 + v16 * v14;
      v19 = v11 + v16 * v15;

      sub_1011AB234(v17, v18, v19, a2, a4, a5);

      if (v6)
      {
        *v23 = v29;

        return 1;
      }

      if (v15 < v13)
      {
        __break(1u);
LABEL_14:
        __break(1u);
LABEL_15:
        __break(1u);
        goto LABEL_16;
      }

      v9 = v29 + 16;
      v20 = *v24;
      if (v10 - 2 >= *v24)
      {
        goto LABEL_14;
      }

      *v12 = v13;
      *(v12 + 1) = v15;
      v21 = v20 - v10;
      if (v20 < v10)
      {
        goto LABEL_15;
      }

      v10 = v20 - 1;
      memmove(v7, v7 + 2, 16 * v21);
      *v24 = v10;
      if (v10 <= 1)
      {
        goto LABEL_10;
      }
    }

    *v23 = v29;
    __break(1u);
  }

  return result;
}

uint64_t sub_1011AB958(unint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t), uint64_t a6)
{
  v135 = a5;
  v117 = a1;
  v9 = sub_1000BC4D4(&qword_1016A5A10, &unk_10140A6F0);
  v124 = *(v9 - 8);
  v10 = __chkstk_darwin(v9);
  v120 = &v114 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v131 = &v114 - v13;
  v14 = __chkstk_darwin(v12);
  v132 = &v114 - v15;
  __chkstk_darwin(v14);
  v133 = &v114 - v16;
  v137 = _swiftEmptyArrayStorage;
  v126 = a3;
  v17 = a3[1];
  if (v17 >= 1)
  {
    swift_retain_n();
    v18 = 0;
    v19 = _swiftEmptyArrayStorage;
    v136 = a6;
    v116 = a4;
    v134 = v9;
    while (1)
    {
      v118 = v18;
      if (v18 + 1 >= v17)
      {
        v29 = v18 + 1;
      }

      else
      {
        v115 = v19;
        v128 = v17;
        v20 = *v126;
        v21 = *(v124 + 72);
        v22 = v18;
        v23 = *v126 + v21 * (v18 + 1);
        v24 = v133;
        sub_1000D2A70(v23, v133, &qword_1016A5A10, &unk_10140A6F0);
        v25 = v20 + v21 * v22;
        v26 = v132;
        sub_1000D2A70(v25, v132, &qword_1016A5A10, &unk_10140A6F0);
        LODWORD(v125) = v135(v24 + *(v9 + 48), v26 + *(v9 + 48));
        sub_10000B3A8(v26, &qword_1016A5A10, &unk_10140A6F0);
        sub_10000B3A8(v24, &qword_1016A5A10, &unk_10140A6F0);
        v27 = v118 + 2;
        v129 = v21;
        v28 = v20 + v21 * (v118 + 2);
        while (1)
        {
          v29 = v128;
          if (v128 == v27)
          {
            break;
          }

          v30 = v133;
          sub_1000D2A70(v28, v133, &qword_1016A5A10, &unk_10140A6F0);
          v31 = v132;
          sub_1000D2A70(v23, v132, &qword_1016A5A10, &unk_10140A6F0);
          LOBYTE(v130) = v135(v30 + *(v9 + 48), v31 + *(v9 + 48)) & 1;
          LODWORD(v130) = v130;
          sub_10000B3A8(v31, &qword_1016A5A10, &unk_10140A6F0);
          sub_10000B3A8(v30, &qword_1016A5A10, &unk_10140A6F0);
          ++v27;
          v28 += v129;
          v23 += v129;
          if ((v125 & 1) != v130)
          {
            v29 = v27 - 1;
            break;
          }
        }

        a4 = v116;
        v18 = v118;
        v19 = v115;
        if (v125)
        {
          if (v29 < v118)
          {
            goto LABEL_121;
          }

          if (v118 < v29)
          {
            v32 = v129 * (v29 - 1);
            v33 = v29 * v129;
            v34 = v29;
            v35 = v118;
            v36 = v118 * v129;
            do
            {
              if (v35 != --v34)
              {
                v37 = *v126;
                if (!*v126)
                {
                  goto LABEL_126;
                }

                sub_1011AAE0C(v37 + v36, v120);
                if (v36 < v32 || v37 + v36 >= (v37 + v33))
                {
                  swift_arrayInitWithTakeFrontToBack();
                }

                else if (v36 != v32)
                {
                  swift_arrayInitWithTakeBackToFront();
                }

                sub_1011AAE0C(v120, v37 + v32);
                a6 = v136;
                v9 = v134;
              }

              ++v35;
              v32 -= v129;
              v33 -= v129;
              v36 += v129;
            }

            while (v35 < v34);
            a4 = v116;
            v19 = v115;
            v18 = v118;
          }
        }
      }

      v38 = v126[1];
      if (v29 >= v38)
      {
        goto LABEL_31;
      }

      if (__OFSUB__(v29, v18))
      {
        goto LABEL_120;
      }

      if (v29 - v18 >= a4)
      {
        goto LABEL_31;
      }

      v39 = v18 + a4;
      if (__OFADD__(v18, a4))
      {
        goto LABEL_122;
      }

      if (v39 >= v38)
      {
        v39 = v126[1];
      }

      if (v39 < v18)
      {
LABEL_123:
        __break(1u);
LABEL_124:

        __break(1u);
LABEL_125:

        __break(1u);
LABEL_126:

        __break(1u);
LABEL_127:

        __break(1u);
        goto LABEL_128;
      }

      if (v29 == v39)
      {
LABEL_31:
        v40 = v29;
        if (v29 < v18)
        {
          goto LABEL_119;
        }
      }

      else
      {
        v115 = v19;
        v101 = *v126;
        v102 = *(v124 + 72);
        v103 = *v126 + v102 * (v29 - 1);
        v129 = -v102;
        v130 = v101;
        v104 = v18 - v29;
        v119 = v102;
        v105 = v101 + v29 * v102;
        v121 = v39;
        do
        {
          v128 = v29;
          v122 = v105;
          v123 = v104;
          v125 = v103;
          while (1)
          {
            v106 = v133;
            sub_1000D2A70(v105, v133, &qword_1016A5A10, &unk_10140A6F0);
            v107 = v132;
            sub_1000D2A70(v103, v132, &qword_1016A5A10, &unk_10140A6F0);
            v108 = v135(v106 + *(v9 + 48), v107 + *(v9 + 48));
            sub_10000B3A8(v107, &qword_1016A5A10, &unk_10140A6F0);
            sub_10000B3A8(v106, &qword_1016A5A10, &unk_10140A6F0);
            if ((v108 & 1) == 0)
            {
              break;
            }

            if (!v130)
            {
              goto LABEL_124;
            }

            v109 = v131;
            sub_1011AAE0C(v105, v131);
            v9 = v134;
            swift_arrayInitWithTakeFrontToBack();
            sub_1011AAE0C(v109, v103);
            v103 += v129;
            v105 += v129;
            v110 = __CFADD__(v104++, 1);
            a6 = v136;
            if (v110)
            {
              goto LABEL_85;
            }
          }

          a6 = v136;
          v9 = v134;
LABEL_85:
          v29 = v128 + 1;
          v103 = v125 + v119;
          v104 = v123 - 1;
          v105 = v122 + v119;
          v40 = v121;
        }

        while (v128 + 1 != v121);
        v19 = v115;
        if (v121 < v118)
        {
          goto LABEL_119;
        }
      }

      v121 = v40;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v19 = sub_100A5B430(0, *(v19 + 2) + 1, 1, v19);
      }

      v42 = *(v19 + 2);
      v41 = *(v19 + 3);
      v43 = v42 + 1;
      if (v42 >= v41 >> 1)
      {
        v19 = sub_100A5B430((v41 > 1), v42 + 1, 1, v19);
      }

      *(v19 + 2) = v43;
      v44 = v19 + 32;
      v45 = &v19[16 * v42 + 32];
      v46 = v121;
      *v45 = v118;
      *(v45 + 1) = v46;
      v130 = *v117;
      if (!v130)
      {
        goto LABEL_127;
      }

      if (v42)
      {
        v129 = v19 + 32;
        while (1)
        {
          v47 = v43 - 1;
          if (v43 >= 4)
          {
            break;
          }

          if (v43 == 3)
          {
            v48 = *(v19 + 4);
            v49 = *(v19 + 5);
            v58 = __OFSUB__(v49, v48);
            v50 = v49 - v48;
            v51 = v58;
LABEL_52:
            if (v51)
            {
              goto LABEL_109;
            }

            v64 = &v19[16 * v43];
            v66 = *v64;
            v65 = *(v64 + 1);
            v67 = __OFSUB__(v65, v66);
            v68 = v65 - v66;
            v69 = v67;
            if (v67)
            {
              goto LABEL_111;
            }

            v70 = &v44[16 * v47];
            v72 = *v70;
            v71 = *(v70 + 1);
            v58 = __OFSUB__(v71, v72);
            v73 = v71 - v72;
            if (v58)
            {
              goto LABEL_114;
            }

            if (__OFADD__(v68, v73))
            {
              goto LABEL_116;
            }

            if (v68 + v73 >= v50)
            {
              if (v50 < v73)
              {
                v47 = v43 - 2;
              }

              goto LABEL_74;
            }

            goto LABEL_67;
          }

          if (v43 < 2)
          {
            goto LABEL_117;
          }

          v74 = &v19[16 * v43];
          v76 = *v74;
          v75 = *(v74 + 1);
          v58 = __OFSUB__(v75, v76);
          v68 = v75 - v76;
          v69 = v58;
LABEL_67:
          if (v69)
          {
            goto LABEL_113;
          }

          v77 = &v44[16 * v47];
          v79 = *v77;
          v78 = *(v77 + 1);
          v58 = __OFSUB__(v78, v79);
          v80 = v78 - v79;
          if (v58)
          {
            goto LABEL_115;
          }

          if (v80 < v68)
          {
            goto LABEL_3;
          }

LABEL_74:
          if (v47 - 1 >= v43)
          {
            __break(1u);
LABEL_104:
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
LABEL_113:
            __break(1u);
LABEL_114:
            __break(1u);
LABEL_115:
            __break(1u);
LABEL_116:
            __break(1u);
LABEL_117:
            __break(1u);
LABEL_118:
            __break(1u);
LABEL_119:
            __break(1u);
LABEL_120:
            __break(1u);
LABEL_121:
            __break(1u);
LABEL_122:
            __break(1u);
            goto LABEL_123;
          }

          v85 = *v126;
          if (!*v126)
          {
            goto LABEL_125;
          }

          v86 = v19;
          v87 = &v44[16 * v47 - 16];
          v88 = *v87;
          v89 = v47;
          v90 = &v44[16 * v47];
          v91 = *(v90 + 1);
          v92 = *(v124 + 72);
          v93 = v85 + v92 * *v87;
          v94 = v85 + v92 * *v90;
          v95 = v85 + v92 * v91;
          v96 = v136;

          v97 = v93;
          v98 = v127;
          sub_1011AB234(v97, v94, v95, v130, v135, v96);
          v127 = v98;
          if (v98)
          {

            v137 = v86;
            goto LABEL_99;
          }

          if (v91 < v88)
          {
            goto LABEL_104;
          }

          v99 = *(v86 + 2);
          if (v89 > v99)
          {
            goto LABEL_105;
          }

          *v87 = v88;
          *(v87 + 1) = v91;
          if (v89 >= v99)
          {
            goto LABEL_106;
          }

          v43 = v99 - 1;
          memmove(v90, v90 + 16, 16 * (v99 - 1 - v89));
          v19 = v86;
          *(v86 + 2) = v99 - 1;
          v100 = v99 > 2;
          a6 = v136;
          v9 = v134;
          v44 = v129;
          if (!v100)
          {
            goto LABEL_3;
          }
        }

        v52 = &v44[16 * v43];
        v53 = *(v52 - 8);
        v54 = *(v52 - 7);
        v58 = __OFSUB__(v54, v53);
        v55 = v54 - v53;
        if (v58)
        {
          goto LABEL_107;
        }

        v57 = *(v52 - 6);
        v56 = *(v52 - 5);
        v58 = __OFSUB__(v56, v57);
        v50 = v56 - v57;
        v51 = v58;
        if (v58)
        {
          goto LABEL_108;
        }

        v59 = &v19[16 * v43];
        v61 = *v59;
        v60 = *(v59 + 1);
        v58 = __OFSUB__(v60, v61);
        v62 = v60 - v61;
        if (v58)
        {
          goto LABEL_110;
        }

        v58 = __OFADD__(v50, v62);
        v63 = v50 + v62;
        if (v58)
        {
          goto LABEL_112;
        }

        if (v63 >= v55)
        {
          v81 = &v44[16 * v47];
          v83 = *v81;
          v82 = *(v81 + 1);
          v58 = __OFSUB__(v82, v83);
          v84 = v82 - v83;
          if (v58)
          {
            goto LABEL_118;
          }

          if (v50 < v84)
          {
            v47 = v43 - 2;
          }

          goto LABEL_74;
        }

        goto LABEL_52;
      }

LABEL_3:
      v17 = v126[1];
      v18 = v121;
      a4 = v116;
      if (v121 >= v17)
      {
        v137 = v19;
        goto LABEL_96;
      }
    }
  }

  swift_retain_n();
LABEL_96:
  v111 = *v117;
  v112 = v127;
  if (*v117)
  {

    sub_1011AB788(&v137, v111, v126, v135, a6);
    if (v112)
    {

LABEL_99:
    }

    else
    {
    }
  }

  else
  {
LABEL_128:

    __break(1u);
  }

  return result;
}

uint64_t sub_1011AC2D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t (*a5)(char *, char *))
{
  v38 = a5;
  v39 = sub_1000BC4D4(&qword_1016A5A10, &unk_10140A6F0);
  v9 = __chkstk_darwin(v39);
  v37 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v13 = &v28 - v12;
  result = __chkstk_darwin(v11);
  v17 = &v28 - v16;
  v30 = a2;
  if (a3 != a2)
  {
    v18 = *a4;
    v19 = *(v15 + 72);
    v20 = *a4 + v19 * (a3 - 1);
    v35 = -v19;
    v36 = v18;
    v21 = a1 - a3;
    v29 = v19;
    v22 = v18 + v19 * a3;
LABEL_5:
    v33 = v20;
    v34 = a3;
    v31 = v22;
    v32 = v21;
    v23 = v22;
    v24 = v39;
    while (1)
    {
      sub_1000D2A70(v23, v17, &qword_1016A5A10, &unk_10140A6F0);
      sub_1000D2A70(v20, v13, &qword_1016A5A10, &unk_10140A6F0);
      v25 = v38(&v17[*(v24 + 48)], &v13[*(v24 + 48)]);
      sub_10000B3A8(v13, &qword_1016A5A10, &unk_10140A6F0);
      result = sub_10000B3A8(v17, &qword_1016A5A10, &unk_10140A6F0);
      if ((v25 & 1) == 0)
      {
LABEL_4:
        a3 = v34 + 1;
        v20 = v33 + v29;
        v21 = v32 - 1;
        v22 = v31 + v29;
        if (v34 + 1 == v30)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v36)
      {
        break;
      }

      v26 = v37;
      sub_1011AAE0C(v23, v37);
      v24 = v39;
      swift_arrayInitWithTakeFrontToBack();
      result = sub_1011AAE0C(v26, v20);
      v20 += v35;
      v23 += v35;
      if (__CFADD__(v21++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

Swift::Int sub_1011AC534(uint64_t *a1, uint64_t (*a2)(uint64_t, uint64_t), uint64_t a3)
{
  v6 = a1[1];
  swift_retain_n();
  result = _minimumMergeRunLength(_:)(v6);
  if (result < v6)
  {
    if (v6 >= -1)
    {
      v8 = result;
      v9 = v6 / 2;
      if (v6 <= 1)
      {
        v10 = _swiftEmptyArrayStorage;
      }

      else
      {
        sub_1000BC4D4(&qword_1016A5A10, &unk_10140A6F0);
        v10 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v10[2] = v9;
      }

      v11 = *(sub_1000BC4D4(&qword_1016A5A10, &unk_10140A6F0) - 8);
      v12[0] = v10 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
      v12[1] = v9;

      sub_1011AB958(v12, v13, a1, v8, a2, a3);

      v10[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v6 < 0)
  {
    goto LABEL_12;
  }

  if (v6)
  {

    sub_1011AC2D0(0, v6, 1, a1, a2);
  }
}

uint64_t sub_1011AC6E4(uint64_t *a1, uint64_t (*a2)(uint64_t, uint64_t), uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v8 = *(sub_1000BC4D4(&qword_1016A5A10, &unk_10140A6F0) - 8);
  v9 = *a1;
  swift_retain_n();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v9 = a4(v9);
  }

  v10 = *(v9 + 16);
  v12[0] = v9 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v12[1] = v10;

  sub_1011AC534(v12, a2, a3);

  *a1 = v9;
}

uint64_t sub_1011AC7F4(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 2u)
  {
  }

  return result;
}

uint64_t sub_1011AC80C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1011AC874(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1011AC8DC()
{
  v1 = *(type metadata accessor for BeaconPayloadFileManager(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  v4 = *v3;
  v5 = v3[1];

  return sub_1011A8398(v0 + v2, v4, v5);
}

uint64_t sub_1011AC974(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[20] = a8;
  v9[21] = v8;
  v9[18] = a6;
  v9[19] = a7;
  v9[16] = a4;
  v9[17] = a5;
  v9[14] = a2;
  v9[15] = a3;
  v9[13] = a1;
  return _swift_task_switch(sub_1011AC9A4, v8, 0);
}

uint64_t sub_1011AC9A4()
{
  v18 = v0;
  if (qword_101694780 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[22] = sub_1000076D4(v1, qword_10177AE40);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[14];
    v4 = v0[15];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v17 = v7;
    *v6 = 141558275;
    *(v6 + 4) = 1752392040;
    *(v6 + 12) = 2081;
    *(v6 + 14) = sub_1000136BC(v5, v4, &v17);
    _os_log_impl(&_mh_execute_header, v2, v3, "Starting session for importing url: %{private,mask.hash}s.", v6, 0x16u);
    sub_100007BAC(v7);
  }

  v8 = swift_task_alloc();
  v0[23] = v8;
  *v8 = v0;
  v8[1] = sub_1011ACBC8;
  v9 = v0[19];
  v10 = v0[20];
  v11 = v0[17];
  v12 = v0[18];
  v13 = v0[15];
  v14 = v0[16];
  v15 = v0[14];

  return sub_1011B2C0C(v15, v13, v14, v11, v12, v9, v10);
}

uint64_t sub_1011ACBC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v6 = *v4;
  v5[24] = a1;
  v5[25] = a2;
  v5[26] = a3;

  if (v3)
  {
    v7 = v6[1];

    return v7();
  }

  else
  {
    v9 = v5[21];

    return _swift_task_switch(sub_1011ACD14, v9, 0);
  }
}

uint64_t sub_1011ACD14()
{
  v17 = v0;
  v2 = v0[25];
  v1 = v0[26];

  sub_100017D5C(v2, v1);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  sub_100016590(v2, v1);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v16 = v6;
    *v5 = 136315138;
    v7 = sub_100646BE8();
    if (v8)
    {
      v9 = v8;
    }

    else
    {
      v7 = 7104878;
      v9 = 0xE300000000000000;
    }

    v10 = sub_1000136BC(v7, v9, &v16);

    *(v5 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v3, v4, "KeyDropStartSessionRequest: %s", v5, 0xCu);
    sub_100007BAC(v6);
  }

  v11 = v0[25];
  v12 = v0[26];
  v13 = v0[24];
  v0[11] = &type metadata for KeyDropStartSessionRequest;
  v0[12] = sub_1011B3798();
  v0[8] = v13;
  v0[9] = v11;
  v0[10] = v12;

  sub_100017D5C(v11, v12);
  v14 = swift_task_alloc();
  v0[27] = v14;
  *v14 = v0;
  v14[1] = sub_1011ACF34;

  return sub_100643914((v0 + 2), (v0 + 8), 8);
}

uint64_t sub_1011ACF34()
{
  v2 = *v1;
  *(*v1 + 224) = v0;

  if (v0)
  {
    v3 = *(v2 + 168);
    v4 = sub_1011AD0EC;
  }

  else
  {
    v5 = *(v2 + 168);
    sub_100007BAC((v2 + 64));
    v4 = sub_1011AD05C;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1011AD05C()
{
  v1 = *(v0 + 200);
  v2 = *(v0 + 208);
  v3 = *(v0 + 104);

  sub_100016590(v1, v2);
  v4 = *(v0 + 16);
  v5 = *(v0 + 48);
  v3[1] = *(v0 + 32);
  v3[2] = v5;
  *v3 = v4;
  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1011AD0EC()
{
  v1 = v0[25];
  v2 = v0[26];

  sub_100016590(v1, v2);
  sub_100007BAC(v0 + 8);
  v3 = v0[1];

  return v3();
}

uint64_t sub_1011AD168(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[8] = a2;
  v4[9] = v3;
  v4[7] = a1;

  v8 = swift_task_alloc();
  v4[10] = v8;
  *v8 = v4;
  v8[1] = sub_1011AD258;

  return sub_1011B2C0C(a1, a2, a3, 0, 0, 0, 0);
}

uint64_t sub_1011AD258(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v6 = *v4;
  v5[11] = a1;
  v5[12] = a2;
  v5[13] = a3;

  if (v3)
  {
    v7 = v6[1];

    return v7(0);
  }

  else
  {
    v9 = v5[9];

    return _swift_task_switch(sub_1011AD3A8, v9, 0);
  }
}

uint64_t sub_1011AD3A8()
{
  v18 = v0;
  if (qword_101694780 != -1)
  {
    swift_once();
  }

  v2 = v0[12];
  v1 = v0[13];
  v3 = type metadata accessor for Logger();
  v0[14] = sub_1000076D4(v3, qword_10177AE40);

  sub_100017D5C(v2, v1);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();

  sub_100016590(v2, v1);
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v17 = v7;
    *v6 = 136315138;
    v8 = sub_100646BE8();
    if (v9)
    {
      v10 = v9;
    }

    else
    {
      v8 = 7104878;
      v10 = 0xE300000000000000;
    }

    v11 = sub_1000136BC(v8, v10, &v17);

    *(v6 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v4, v5, "KeyDropPreviewForImportRequest: %s", v6, 0xCu);
    sub_100007BAC(v7);
  }

  v12 = v0[12];
  v13 = v0[13];
  v14 = v0[11];
  v0[5] = &type metadata for KeyDropStartSessionRequest;
  v0[6] = sub_1011B3798();
  v0[2] = v14;
  v0[3] = v12;
  v0[4] = v13;

  sub_100017D5C(v12, v13);
  v15 = swift_task_alloc();
  v0[15] = v15;
  *v15 = v0;
  v15[1] = sub_1011AD5F4;

  return sub_101259064((v0 + 2), 7);
}

uint64_t sub_1011AD5F4()
{
  v2 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v3 = *(v2 + 72);
    v4 = sub_1011AD89C;
  }

  else
  {
    v5 = *(v2 + 72);
    sub_100007BAC((v2 + 16));
    v4 = sub_1011AD71C;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1011AD71C()
{
  v13 = v0;

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  v3 = os_log_type_enabled(v1, v2);
  v5 = v0[12];
  v4 = v0[13];
  if (v3)
  {
    v7 = v0[7];
    v6 = v0[8];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v12 = v9;
    *v8 = 141558275;
    *(v8 + 4) = 1752392040;
    *(v8 + 12) = 2081;
    *(v8 + 14) = sub_1000136BC(v7, v6, &v12);
    _os_log_impl(&_mh_execute_header, v1, v2, "preview import returned share is valid %{private,mask.hash}s", v8, 0x16u);
    sub_100007BAC(v9);
  }

  sub_100016590(v5, v4);

  v10 = v0[1];

  return v10(1);
}

uint64_t sub_1011AD89C()
{
  v14 = v0;
  sub_100007BAC(v0 + 2);

  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v4 = v0[7];
    v3 = v0[8];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v5 = 141558531;
    *(v5 + 4) = 1752392040;
    *(v5 + 12) = 2081;
    *(v5 + 14) = sub_1000136BC(v4, v3, &v13);
    *(v5 + 22) = 2112;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 24) = v8;
    *v6 = v8;
    _os_log_impl(&_mh_execute_header, v1, v2, "preview import for share %{private,mask.hash}s returned error: %@", v5, 0x20u);
    sub_10000B3A8(v6, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v7);
  }

  v9 = v0[12];
  v10 = v0[13];
  swift_willThrow();

  sub_100016590(v9, v10);
  v11 = v0[1];

  return v11(0);
}

uint64_t sub_1011ADA9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[10] = a4;
  v5[11] = v4;
  v5[8] = a2;
  v5[9] = a3;
  v5[7] = a1;
  v6 = type metadata accessor for UUID();
  v5[12] = v6;
  v5[13] = *(v6 - 8);
  v5[14] = swift_task_alloc();
  v5[15] = swift_task_alloc();

  return _swift_task_switch(sub_1011ADB70, v4, 0);
}

uint64_t sub_1011ADB70()
{
  v33 = v0;
  if (qword_101694780 != -1)
  {
    swift_once();
  }

  v1 = v0[15];
  v2 = v0[12];
  v3 = v0[13];
  v4 = v0[8];
  v5 = type metadata accessor for Logger();
  v0[16] = sub_1000076D4(v5, qword_10177AE40);
  v6 = *(v3 + 16);
  v6(v1, v4, v2);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[15];
  v11 = v0[12];
  v12 = v0[13];
  if (v9)
  {
    v13 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v32 = v31;
    *v13 = 141558275;
    *(v13 + 4) = 1752392040;
    *(v13 + 12) = 2081;
    sub_1011B1CEC(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v30 = v8;
    v15 = v6;
    v17 = v16;
    (*(v12 + 8))(v10, v11);
    v18 = sub_1000136BC(v14, v17, &v32);
    v6 = v15;

    *(v13 + 14) = v18;
    _os_log_impl(&_mh_execute_header, v7, v30, "Downloading keys for imported share id: %{private,mask.hash}s.", v13, 0x16u);
    sub_100007BAC(v31);
  }

  else
  {

    (*(v12 + 8))(v10, v11);
  }

  v19 = v0[14];
  v20 = v0[12];
  v21 = v0[8];
  type metadata accessor for DeviceIdentityUtility(0);
  v22 = swift_allocObject();
  v0[17] = v22;
  swift_defaultActor_initialize();
  v23 = OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_certExpiryDate;
  v24 = type metadata accessor for Date();
  (*(*(v24 - 8) + 56))(v22 + v23, 1, 1, v24);
  *(v22 + OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_refKey) = 0;
  *(v22 + OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_certs) = _swiftEmptyArrayStorage;
  *(v22 + OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_signingType) = 13;
  v6(v19, v21, v20);

  v25 = swift_task_alloc();
  v0[18] = v25;
  *v25 = v0;
  v25[1] = sub_1011ADF00;
  v26 = v0[14];
  v27 = v0[9];
  v28 = v0[10];

  return sub_1011B1E78(v26, v27, v28, v22);
}

uint64_t sub_1011ADF00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v6 = *v4;
  v6[19] = a1;
  v6[20] = a2;
  v6[21] = a3;
  v6[22] = v3;

  v7 = v5[11];
  if (v3)
  {
    v8 = sub_1011AE258;
  }

  else
  {
    v8 = sub_1011AE038;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_1011AE038()
{
  v18 = v0;
  v2 = v0[20];
  v1 = v0[21];

  sub_100017D5C(v2, v1);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  sub_100016590(v2, v1);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v17 = v6;
    *v5 = 136315138;
    v7 = sub_100646BE8();
    if (v8)
    {
      v9 = v8;
    }

    else
    {
      v7 = 7104878;
      v9 = 0xE300000000000000;
    }

    v10 = sub_1000136BC(v7, v9, &v17);

    *(v5 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v3, v4, "KeyDropDownloadDelegatedKeysRequest: %s", v5, 0xCu);
    sub_100007BAC(v6);
  }

  v11 = v0[20];
  v12 = v0[21];
  v13 = v0[19];
  v0[5] = &type metadata for KeyDropDownloadDelegatedKeysRequest;
  v0[6] = sub_1011B2B98();
  v0[2] = v13;
  v0[3] = v11;
  v0[4] = v12;

  sub_100017D5C(v11, v12);
  v14 = swift_task_alloc();
  v0[23] = v14;
  *v14 = v0;
  v14[1] = sub_1011AE2CC;
  v15 = v0[7];

  return sub_100641568(v15, (v0 + 2), 9);
}

uint64_t sub_1011AE258()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1011AE2CC()
{
  v2 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {
    v3 = *(v2 + 88);
    v4 = sub_1011AE498;
  }

  else
  {
    v5 = *(v2 + 88);
    sub_100007BAC((v2 + 16));
    v4 = sub_1011AE3F4;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1011AE3F4()
{
  v1 = v0[20];
  v2 = v0[21];

  sub_100016590(v1, v2);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1011AE498()
{
  v1 = v0[20];
  v2 = v0[21];

  sub_100016590(v1, v2);
  sub_100007BAC(v0 + 2);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1011AE538(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 120) = a6;
  *(v7 + 128) = v6;
  *(v7 + 320) = a4;
  *(v7 + 104) = a3;
  *(v7 + 112) = a5;
  *(v7 + 88) = a1;
  *(v7 + 96) = a2;
  v8 = type metadata accessor for P256.Signing.PrivateKey();
  *(v7 + 136) = v8;
  *(v7 + 144) = *(v8 - 8);
  *(v7 + 152) = swift_task_alloc();
  v9 = type metadata accessor for P256.Signing.ECDSASignature();
  *(v7 + 160) = v9;
  *(v7 + 168) = *(v9 - 8);
  *(v7 + 176) = swift_task_alloc();
  *(v7 + 184) = type metadata accessor for KeyDropDownloadRequest.KeyDropDownloadContent(0);
  *(v7 + 192) = swift_task_alloc();
  v10 = type metadata accessor for JSONEncoder.DateEncodingStrategy();
  *(v7 + 200) = v10;
  *(v7 + 208) = *(v10 - 8);
  *(v7 + 216) = swift_task_alloc();
  *(v7 + 224) = type metadata accessor for KeyDropJoinToken(0);
  *(v7 + 232) = swift_task_alloc();
  v11 = type metadata accessor for UUID();
  *(v7 + 240) = v11;
  *(v7 + 248) = *(v11 - 8);
  *(v7 + 256) = swift_task_alloc();
  *(v7 + 264) = swift_task_alloc();
  *(v7 + 272) = swift_task_alloc();

  return _swift_task_switch(sub_1011AE790, v6, 0);
}

uint64_t sub_1011AE790()
{
  v70 = v0;
  if (qword_1016954C0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 272);
  v2 = *(v0 + 240);
  v3 = *(v0 + 248);
  v4 = *(v0 + 96);
  v5 = type metadata accessor for Logger();
  sub_1000076D4(v5, qword_10177CDD0);
  v67 = *(v3 + 16);
  (v67)(v1, v4, v2);
  swift_bridgeObjectRetain_n();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 272);
  v11 = *(v0 + 240);
  v10 = *(v0 + 248);
  v12 = *(v0 + 120);
  if (v8)
  {
    v13 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    v69[0] = v65;
    *v13 = 141558531;
    *(v13 + 4) = 1752392040;
    *(v13 + 12) = 2081;
    sub_1011B1CEC(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    v68 = *(v10 + 8);
    v68(v9, v11);
    v17 = sub_1000136BC(v14, v16, v69);

    *(v13 + 14) = v17;
    *(v13 + 22) = 2048;
    v18 = *(v12 + 16);

    *(v13 + 24) = v18;

    _os_log_impl(&_mh_execute_header, v6, v7, "Downloading keys for share id: %{private,mask.hash}s, request count: %ld.", v13, 0x20u);
    sub_100007BAC(v65);
  }

  else
  {
    swift_bridgeObjectRelease_n();

    v68 = *(v10 + 8);
    v68(v9, v11);
  }

  v19 = *(v0 + 256);
  v63 = *(v0 + 264);
  v20 = *(v0 + 240);
  v22 = *(v0 + 208);
  v21 = *(v0 + 216);
  v23 = *(v0 + 192);
  v62 = *(v0 + 200);
  v60 = *(v0 + 232);
  v61 = *(v0 + 184);
  v24 = *(v0 + 112);
  v66 = *(v0 + 120);
  v64 = *(v0 + 320);
  v25 = *(v0 + 104);
  v67();
  (v67)(v19, v25, v20);
  sub_1011B4300(v24, v60, type metadata accessor for KeyDropJoinToken);
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  *v21 = sub_100281AE0;
  v21[1] = 0;
  (*(v22 + 104))(v21, enum case for JSONEncoder.DateEncodingStrategy.custom(_:), v62);
  dispatch thunk of JSONEncoder.dateEncodingStrategy.setter();
  (v67)(v23, v63, v20);
  static Date.trustedNow.getter(v23 + v61[6]);
  (v67)(v23 + v61[7], v19, v20);
  *(v23 + v61[5]) = v64;
  *(v23 + v61[8]) = v66;
  sub_1011B1CEC(&qword_1016CA2B0, type metadata accessor for KeyDropDownloadRequest.KeyDropDownloadContent, &unk_10140AD14);

  v26 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  *(v0 + 280) = v26;
  *(v0 + 288) = v27;
  v28 = v26;
  v29 = v27;
  v30 = (*(v0 + 232) + *(*(v0 + 224) + 20));
  v31 = *v30;
  v32 = v30[1];
  *(v0 + 56) = *v30;
  *(v0 + 64) = v32;
  sub_100017D5C(v31, v32);
  P256.Signing.PrivateKey.init<A>(rawRepresentation:)();
  *(v0 + 72) = v28;
  *(v0 + 80) = v29;
  sub_1000E0A3C();
  P256.Signing.PrivateKey.signature<A>(for:)();
  (*(*(v0 + 144) + 8))(*(v0 + 152), *(v0 + 136));
  v33 = sub_100646BE0();
  if (qword_101694F58 != -1)
  {
    swift_once();
  }

  v34 = qword_10177C218;
  v35 = [objc_opt_self() sharedInstance];
  v36 = [v35 isInternalBuild];

  if ((v36 & 1) != 0 && (v37 = String._bridgeToObjectiveC()(), v38 = [v34 BOOLForKey:v37], v37, v38))
  {
  }

  else
  {
    v39 = P256.Signing.ECDSASignature.derRepresentation.getter();
    v41 = v40;
    v42 = Data.base64EncodedString(options:)(0);
    sub_100016590(v39, v41);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v69[0] = v33;
    sub_100FFACA0(v42._countAndFlagsBits, v42._object, 0xD000000000000012, 0x800000010134D2A0, isUniquelyReferenced_nonNull_native);

    v33 = v69[0];
  }

  *(v0 + 296) = v33;
  v44 = *(v0 + 256);
  v45 = *(v0 + 264);
  v46 = *(v0 + 240);
  v47 = *(v0 + 232);
  v48 = *(v0 + 192);
  (*(*(v0 + 168) + 8))(*(v0 + 176), *(v0 + 160));
  sub_1011B1C38(v48, type metadata accessor for KeyDropDownloadRequest.KeyDropDownloadContent);
  sub_1011B1C38(v47, type metadata accessor for KeyDropJoinToken);
  v68(v44, v46);
  v68(v45, v46);

  sub_100017D5C(v28, v29);
  v49 = Logger.logObject.getter();
  v50 = static os_log_type_t.debug.getter();

  sub_100016590(v28, v29);
  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v69[0] = v52;
    *v51 = 136315138;
    v53 = sub_100646BE8();
    if (v54)
    {
      v55 = v54;
    }

    else
    {
      v53 = 7104878;
      v55 = 0xE300000000000000;
    }

    v56 = sub_1000136BC(v53, v55, v69);

    *(v51 + 4) = v56;
    _os_log_impl(&_mh_execute_header, v49, v50, "KeyDropDownloadRequest: %s", v51, 0xCu);
    sub_100007BAC(v52);
  }

  *(v0 + 40) = &type metadata for KeyDropDownloadRequest;
  *(v0 + 48) = sub_1011B1C98();
  *(v0 + 16) = v33;
  *(v0 + 24) = v28;
  *(v0 + 32) = v29;

  sub_100017D5C(v28, v29);
  v57 = swift_task_alloc();
  *(v0 + 304) = v57;
  *v57 = v0;
  v57[1] = sub_1011AF230;
  v58 = *(v0 + 88);

  return sub_1006420FC(v58, v0 + 16, 1);
}

uint64_t sub_1011AF230()
{
  v2 = *v1;
  *(*v1 + 312) = v0;

  if (v0)
  {
    v3 = *(v2 + 128);
    v4 = sub_1011AF448;
  }

  else
  {
    v5 = *(v2 + 128);
    sub_100007BAC((v2 + 16));
    v4 = sub_1011AF358;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1011AF358()
{
  v1 = v0[36];
  v2 = v0[35];

  sub_100016590(v2, v1);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1011AF448()
{
  v1 = v0[36];
  v2 = v0[35];

  sub_100016590(v2, v1);
  sub_100007BAC(v0 + 2);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1011AF534(void *a1, char a2, uint64_t a3, char a4, uint64_t a5)
{
  v13[0] = a5;
  v13[1] = a3;
  v8 = sub_1000BC4D4(&qword_1016CA6B8, &qword_10140AD98);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v13 - v10;
  sub_1000035D0(a1, a1[3]);
  sub_1011B4E18();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v18 = a2;
  v17 = 0;
  sub_1010602A0();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (v5)
  {
    return (*(v9 + 8))(v11, v8);
  }

  v16 = 1;
  KeyedEncodingContainer.encode(_:forKey:)();
  v15 = 2;
  KeyedEncodingContainer.encode(_:forKey:)();
  v14 = 3;
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_1011AF71C(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_1016CA608, &qword_10140AD40);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v11 - v7;
  sub_1000035D0(a1, a1[3]);
  sub_1011B40E4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v17 = 0;
  type metadata accessor for UUID();
  sub_1011B1CEC(&qword_101698330, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v9 = type metadata accessor for KeyDropDownloadRequest.KeyDropDownloadContent(0);
    v16 = *(v3 + v9[5]);
    v15 = 1;
    sub_1001E8200();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v11[0] = v9[6];
    v14 = 2;
    type metadata accessor for Date();
    sub_1011B1CEC(&unk_101697F60, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v13 = 3;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v11[1] = *(v3 + v9[8]);
    v12 = 4;
    sub_1000BC4D4(&qword_1016CA618, &qword_10140AD48);
    sub_1011B4138();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1011AFA04()
{
  v1 = 1701869940;
  v2 = 0x617461646174656DLL;
  if (*v0 != 2)
  {
    v2 = 0x7379654B78616DLL;
  }

  if (*v0)
  {
    v1 = 0x646E497472617473;
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

uint64_t sub_1011AFA7C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1011B44DC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1011AFAA4(uint64_t a1)
{
  v2 = sub_1011B4E18();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1011AFAE0(uint64_t a1)
{
  v2 = sub_1011B4E18();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1011AFB44(uint64_t a1)
{
  v2 = sub_1011B40E4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1011AFB80(uint64_t a1)
{
  v2 = sub_1011B40E4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1011AFBD4(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_1016CA6F0, &qword_10140ADB0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13[-v7];
  sub_1000035D0(a1, a1[3]);
  sub_1011B4EC0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v14) = 0;
  type metadata accessor for UUID();
  sub_1011B1CEC(&qword_101698330, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v9 = type metadata accessor for KeyDropDownloadResponse.Member(0);
    LOBYTE(v14) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v10 = (v3 + *(v9 + 24));
    v11 = v10[1];
    v14 = *v10;
    v15 = v11;
    v13[15] = 2;
    sub_10002E98C(v14, v11);
    sub_1000E3190();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_100006654(v14, v15);
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1011AFDE4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v4 = type metadata accessor for UUID();
  v18 = *(v4 - 8);
  __chkstk_darwin(v4);
  v21 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000BC4D4(&qword_1016CA6E0, &qword_10140ADA8);
  v19 = *(v6 - 8);
  v20 = v6;
  __chkstk_darwin(v6);
  v8 = &v16 - v7;
  v9 = type metadata accessor for KeyDropDownloadResponse.Member(0);
  __chkstk_darwin(v9);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000035D0(a1, a1[3]);
  sub_1011B4EC0();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100007BAC(a1);
  }

  v12 = v11;
  v13 = v18;
  LOBYTE(v22) = 0;
  sub_1011B1CEC(&qword_101698300, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v14 = v20;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v13 + 32))(v12, v21, v4);
  LOBYTE(v22) = 1;
  *(v12 + *(v9 + 20)) = KeyedDecodingContainer.decode(_:forKey:)() & 1;
  v23 = 2;
  sub_1000E307C();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v19 + 8))(v8, v14);
  *(v12 + *(v9 + 24)) = v22;
  sub_1011B4300(v12, v17, type metadata accessor for KeyDropDownloadResponse.Member);
  sub_100007BAC(a1);
  return sub_1011B1C38(v12, type metadata accessor for KeyDropDownloadResponse.Member);
}

uint64_t sub_1011B0190(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_1016CA6F8, &qword_10140ADB8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11 - v7;
  sub_1000035D0(a1, a1[3]);
  sub_1011B4210();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v12) = 0;
  type metadata accessor for UUID();
  sub_1011B1CEC(&qword_101698330, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v9 = type metadata accessor for KeyDropDownloadResponse(0);
    LOBYTE(v12) = 1;
    type metadata accessor for Date();
    sub_1011B1CEC(&unk_101697F60, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v12 = *(v3 + *(v9 + 24));
    HIBYTE(v11) = 2;
    sub_1000BC4D4(&qword_1016CA640, &unk_10140AD58);
    sub_1011B4F14(&qword_1016CA700, &qword_1016CA708, &unk_10140AA08, &protocol conformance descriptor for <A> [A]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v12 = *(v3 + *(v9 + 28));
    HIBYTE(v11) = 3;
    sub_1000BC4D4(&qword_10169CDB0, &qword_10139A080);
    sub_1011B4264(&qword_10169CDB8, &qword_10169CDC0, &unk_10140EB78, &protocol conformance descriptor for <A> [A]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1011B04B4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v3 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  __chkstk_darwin(v3 - 8);
  v5 = &v18 - v4;
  v6 = type metadata accessor for UUID();
  v19 = *(v6 - 8);
  __chkstk_darwin(v6);
  v22 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000BC4D4(&qword_1016CA630, &qword_10140AD50);
  v20 = *(v8 - 8);
  v21 = v8;
  __chkstk_darwin(v8);
  v10 = &v18 - v9;
  v11 = type metadata accessor for KeyDropDownloadResponse(0);
  __chkstk_darwin(v11);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000035D0(a1, a1[3]);
  sub_1011B4210();
  v23 = v10;
  v14 = v24;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v14)
  {
    return sub_100007BAC(a1);
  }

  v15 = v19;
  LOBYTE(v26) = 0;
  sub_1011B1CEC(&qword_101698300, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v15 + 32))(v13, v22, v6);
  type metadata accessor for Date();
  LOBYTE(v26) = 1;
  sub_1011B1CEC(&qword_101697F40, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  sub_1001578A0(v5, &v13[v11[5]]);
  sub_1000BC4D4(&qword_1016CA640, &unk_10140AD58);
  v25 = 2;
  sub_1011B4F14(&qword_1016CA648, &qword_1016CA650, &unk_10140AA30, &protocol conformance descriptor for <A> [A]);
  v24 = 0;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v16 = v20;
  *&v13[v11[6]] = v26;
  sub_1000BC4D4(&qword_10169CDB0, &qword_10139A080);
  v25 = 3;
  sub_1011B4264(&qword_1016B9BE0, &qword_1016B9BE8, &unk_10140EAE8, &protocol conformance descriptor for <A> [A]);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v16 + 8))(v23, v21);
  *&v13[v11[7]] = v26;
  sub_1011B4300(v13, v18, type metadata accessor for KeyDropDownloadResponse);
  sub_100007BAC(a1);
  return sub_1011B1C38(v13, type metadata accessor for KeyDropDownloadResponse);
}

uint64_t sub_1011B0A60(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_1016CA6C8, &qword_10140ADA0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13 - v7;
  sub_1000035D0(a1, a1[3]);
  sub_1011B4368();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v15) = 0;
  type metadata accessor for Date();
  sub_1011B1CEC(&unk_101697F60, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (!v2)
  {
    v9 = type metadata accessor for KeyDropDownloadKeysMetadataResponse(0);
    v10 = (v3 + *(v9 + 20));
    v11 = v10[1];
    v15 = *v10;
    v16 = v11;
    v14 = 1;
    sub_100017D5C(v15, v11);
    sub_1000E3190();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100016590(v15, v16);
    v15 = *(v3 + *(v9 + 24));
    v14 = 2;
    sub_1000BC4D4(&qword_1016CA668, &qword_10140AD70);
    sub_1011B43BC(&qword_1016CA6D0, sub_1011B4E6C, &protocol conformance descriptor for <A> [A]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1011B0CCC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  v4 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  __chkstk_darwin(v4 - 8);
  v6 = &v15 - v5;
  v7 = sub_1000BC4D4(&qword_1016CA658, &qword_10140AD68);
  v17 = *(v7 - 8);
  v18 = v7;
  __chkstk_darwin(v7);
  v9 = &v15 - v8;
  v10 = type metadata accessor for KeyDropDownloadKeysMetadataResponse(0);
  __chkstk_darwin(v10);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000035D0(a1, a1[3]);
  sub_1011B4368();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100007BAC(a1);
  }

  v13 = v17;
  type metadata accessor for Date();
  LOBYTE(v19) = 0;
  sub_1011B1CEC(&qword_101697F40, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  sub_1001578A0(v6, v12);
  v20 = 1;
  sub_1000E307C();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  *&v12[*(v10 + 20)] = v19;
  sub_1000BC4D4(&qword_1016CA668, &qword_10140AD70);
  v20 = 2;
  sub_1011B43BC(&qword_1016CA670, sub_1011B4434, &protocol conformance descriptor for <A> [A]);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v13 + 8))(v9, v18);
  *&v12[*(v10 + 24)] = v19;
  sub_1011B4300(v12, v16, type metadata accessor for KeyDropDownloadKeysMetadataResponse);
  sub_100007BAC(a1);
  return sub_1011B1C38(v12, type metadata accessor for KeyDropDownloadKeysMetadataResponse);
}

uint64_t sub_1011B10BC(uint64_t a1)
{
  v2 = sub_1011B4EC0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1011B10F8(uint64_t a1)
{
  v2 = sub_1011B4EC0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1011B1168()
{
  v1 = 0x64496572616873;
  v2 = 0x737265626D656DLL;
  if (*v0 != 2)
  {
    v2 = 0x616B63615079656BLL;
  }

  if (*v0)
  {
    v1 = 0x6974617269707865;
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

uint64_t sub_1011B11F0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1011B4648(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1011B1218(uint64_t a1)
{
  v2 = sub_1011B4210();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1011B1254(uint64_t a1)
{
  v2 = sub_1011B4210();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1011B12C0()
{
  v1 = 0x646174654D626577;
  if (*v0 != 1)
  {
    v1 = 0x616B63615079656BLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7078456572616873;
  }
}

uint64_t sub_1011B1338@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1011B47B8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1011B1360(uint64_t a1)
{
  v2 = sub_1011B4368();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1011B139C(uint64_t a1)
{
  v2 = sub_1011B4368();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1011B1408(void *a1)
{
  v3 = sub_1000BC4D4(&qword_1016CA6A0, &qword_10140AD88);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_1000035D0(a1, a1[3]);
  sub_1011B4DC4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v8[14] = 1;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v8[13] = 2;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1011B15A8()
{
  v1 = 0x6B6361626C6C6163;
  if (*v0 != 1)
  {
    v1 = 0x546E6F6973736573;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 7107189;
  }
}

uint64_t sub_1011B1610@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1011B48E0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1011B1638(uint64_t a1)
{
  v2 = sub_1011B4DC4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1011B1674(uint64_t a1)
{
  v2 = sub_1011B4DC4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1011B16C8(void *a1)
{
  v3 = sub_1000BC4D4(&qword_1016CA680, &qword_10140AD78);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_1000035D0(a1, a1[3]);
  sub_1011B4488();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8[15] = 0;
  type metadata accessor for UUID();
  sub_1011B1CEC(&qword_101698330, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v1)
  {
    type metadata accessor for KeyDropDownloadDelegatedKeysRequest.KeyDropDownloadDelegatedKeysContent(0);
    v8[14] = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1011B1884(uint64_t a1)
{
  v2 = sub_1011B4488();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1011B18C0(uint64_t a1)
{
  v2 = sub_1011B4488();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1011B1914(void *a1)
{
  v3 = sub_1000BC4D4(&qword_1016CA6B0, &qword_10140AD90);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_1000035D0(a1, a1[3]);
  sub_1011B4D70();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8[15] = 0;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v8[14] = 1;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v8[13] = 2;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1011B1AB4()
{
  v1 = 0x6B6F546863746566;
  if (*v0 != 1)
  {
    v1 = 0x546E6F6973736573;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6C725568747561;
  }
}

uint64_t sub_1011B1B1C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1011B4A04(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1011B1B44(uint64_t a1)
{
  v2 = sub_1011B4D70();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1011B1B80(uint64_t a1)
{
  v2 = sub_1011B4D70();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_1011B1BBC@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_1011B4B28(a2, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    a1[1] = v5;
    result = *&v7;
    a1[2] = v7;
  }

  return result;
}

uint64_t sub_1011B1C38(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1011B1C98()
{
  result = qword_1016CA2B8;
  if (!qword_1016CA2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016CA2B8);
  }

  return result;
}

uint64_t sub_1011B1CEC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

BOOL sub_1011B1D34(uint64_t a1, uint64_t a2)
{
  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for KeyDropDownloadResponse.Member(0);
  if (*(a1 + *(v4 + 20)) != *(a2 + *(v4 + 20)))
  {
    return 0;
  }

  v5 = *(v4 + 24);
  v7 = *(a1 + v5);
  v6 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v10 = *v8;
  v9 = v8[1];
  if (v6 >> 60 == 15)
  {
    if (v9 >> 60 == 15)
    {
      sub_10002E98C(v7, v6);
      sub_10002E98C(v10, v9);
      sub_100006654(v7, v6);
      return 1;
    }

    goto LABEL_7;
  }

  if (v9 >> 60 == 15)
  {
LABEL_7:
    sub_10002E98C(v7, v6);
    sub_10002E98C(v10, v9);
    sub_100006654(v7, v6);
    sub_100006654(v10, v9);
    return 0;
  }

  sub_10002E98C(v7, v6);
  sub_10002E98C(v10, v9);
  v12 = _s12searchpartyd24KeyRepresentableInternalV23__derived_struct_equalsySbAC_ACtFZ_0(v7, v6, v10, v9);
  sub_100006654(v10, v9);
  sub_100006654(v7, v6);
  return v12;
}

uint64_t sub_1011B1E78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[11] = a3;
  v4[12] = a4;
  v4[9] = a1;
  v4[10] = a2;
  v5 = type metadata accessor for HashAlgorithm();
  v4[13] = v5;
  v4[14] = *(v5 - 8);
  v4[15] = swift_task_alloc();
  v4[16] = type metadata accessor for KeyDropDownloadDelegatedKeysRequest.KeyDropDownloadDelegatedKeysContent(0);
  v4[17] = swift_task_alloc();
  v6 = type metadata accessor for JSONEncoder.DateEncodingStrategy();
  v4[18] = v6;
  v4[19] = *(v6 - 8);
  v4[20] = swift_task_alloc();

  return _swift_task_switch(sub_1011B1FC8, 0, 0);
}

uint64_t sub_1011B1FC8()
{
  v2 = v0[19];
  v1 = v0[20];
  v3 = v0[17];
  v4 = v0[18];
  v5 = v0[16];
  v7 = v0[10];
  v6 = v0[11];
  v8 = v0[9];
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  v0[21] = JSONEncoder.init()();
  *v1 = sub_100281AE0;
  v1[1] = 0;
  (*(v2 + 104))(v1, enum case for JSONEncoder.DateEncodingStrategy.custom(_:), v4);
  dispatch thunk of JSONEncoder.dateEncodingStrategy.setter();
  v9 = type metadata accessor for UUID();
  v0[22] = v9;
  v10 = *(v9 - 8);
  v0[23] = v10;
  (*(v10 + 16))(v3, v8, v9);
  v11 = (v3 + *(v5 + 20));
  *v11 = v7;
  v11[1] = v6;
  sub_1011B1CEC(&qword_1016CA2C8, type metadata accessor for KeyDropDownloadDelegatedKeysRequest.KeyDropDownloadDelegatedKeysContent, &unk_10140AC64);
  v12 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v0[24] = 0;
  v0[25] = v12;
  v0[26] = v13;
  v14 = sub_100646BE0();
  v0[27] = v14;
  if (qword_101694F58 != -1)
  {
    swift_once();
  }

  v15 = qword_10177C218;
  v16 = [objc_opt_self() sharedInstance];
  v17 = [v16 isInternalBuild];

  if (v17 && (v18 = String._bridgeToObjectiveC()(), v19 = [v15 BOOLForKey:v18], v18, (v19 & 1) != 0))
  {
    v20 = v0[17];
    v21 = v0[9];

    (*(v10 + 8))(v21, v9);
    sub_1011B1C38(v20, type metadata accessor for KeyDropDownloadDelegatedKeysRequest.KeyDropDownloadDelegatedKeysContent);

    v22 = v0[1];
    v23 = v0[25];
    v24 = v0[26];

    return v22(v14, v23, v24);
  }

  else
  {
    v26 = swift_task_alloc();
    v0[28] = v26;
    *v26 = v0;
    v26[1] = sub_1011B23EC;

    return sub_100E9D67C();
  }
}

uint64_t sub_1011B23EC(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 232) = a1;
  *(v3 + 240) = a2;

  return _swift_task_switch(sub_1011B24EC, 0, 0);
}

uint64_t sub_1011B24EC()
{
  v2 = v0[29];
  v1 = v0[30];
  v3 = v0[25];
  v4 = v0[26];
  v5 = v0[14];
  v6 = v0[15];
  v0[7] = v2;
  v17 = v5;
  v18 = v0[13];
  v19 = v6;
  v0[8] = v1;
  v0[5] = &type metadata for Data;
  v0[6] = &protocol witness table for Data;
  v0[2] = v3;
  v0[3] = v4;
  v7 = sub_1000035D0(v0 + 2, &type metadata for Data);
  v8 = *v7;
  v9 = v7[1];
  sub_100017D5C(v2, v1);
  sub_100017D5C(v3, v4);
  sub_100017DB0(v8, v9, (v0 + 7));
  sub_100016590(v2, v1);
  sub_100007BAC(v0 + 2);
  v10 = v0[8];
  v0[31] = v0[7];
  v0[32] = v10;
  (*(v17 + 104))(v19, enum case for HashAlgorithm.sha256(_:), v18);
  v11 = Data.hash(algorithm:)();
  v13 = v12;
  v0[33] = v11;
  v0[34] = v12;
  (*(v17 + 8))(v19, v18);
  v14 = swift_task_alloc();
  v0[35] = v14;
  *v14 = v0;
  v14[1] = sub_1011B26BC;
  v15 = v0[12];

  return sub_100EA87F4(v11, v13, v15);
}

uint64_t sub_1011B26BC(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 288) = v1;

  if (v1)
  {
    v5 = sub_1011B2944;
  }

  else
  {
    v6 = v4[33];
    v7 = v4[34];
    v4[37] = a1;
    sub_100016590(v6, v7);
    v5 = sub_1011B27EC;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1011B27EC()
{
  v16 = v0;
  v1 = v0[37];
  v3 = v0[31];
  v2 = v0[32];
  v4 = v0[27];
  v5 = v0[23];
  v13 = v0[22];
  v14 = v0[17];
  v6 = v0[9];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = v4;
  sub_10028709C(v1, sub_100EB00A4, 0, isUniquelyReferenced_nonNull_native, &v15);

  sub_100016590(v3, v2);

  (*(v5 + 8))(v6, v13);
  sub_1011B1C38(v14, type metadata accessor for KeyDropDownloadDelegatedKeysRequest.KeyDropDownloadDelegatedKeysContent);
  v8 = v15;

  v9 = v0[1];
  v10 = v0[25];
  v11 = v0[26];

  return v9(v8, v10, v11);
}

uint64_t sub_1011B2944()
{
  v1 = v0[31];
  v2 = v0[32];
  sub_100016590(v0[33], v0[34]);
  sub_100016590(v1, v2);
  if (qword_1016954C0 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_1000076D4(v3, qword_10177CDD0);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  v6 = os_log_type_enabled(v4, v5);
  v8 = v0[22];
  v7 = v0[23];
  v9 = v0[17];
  v10 = v0[9];
  if (v6)
  {
    v19 = v0[22];
    v11 = swift_slowAlloc();
    v20 = v9;
    v12 = swift_slowAlloc();
    *v11 = 138543362;
    swift_errorRetain();
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 4) = v13;
    *v12 = v13;
    _os_log_impl(&_mh_execute_header, v4, v5, "Failed to generate keydrop fetch attestation header: %{public}@.", v11, 0xCu);
    sub_10000B3A8(v12, &qword_10169BB30, &unk_10138B3C0);
    v9 = v20;

    v8 = v19;
  }

  (*(v7 + 8))(v10, v8);
  sub_1011B1C38(v9, type metadata accessor for KeyDropDownloadDelegatedKeysRequest.KeyDropDownloadDelegatedKeysContent);
  v14 = v0[27];

  v15 = v0[1];
  v16 = v0[25];
  v17 = v0[26];

  return v15(v14, v16, v17);
}

unint64_t sub_1011B2B98()
{
  result = qword_1016CA2C0;
  if (!qword_1016CA2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016CA2C0);
  }

  return result;
}

uint64_t sub_1011B2C0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[20] = a6;
  v7[21] = a7;
  v7[18] = a4;
  v7[19] = a5;
  v7[16] = a2;
  v7[17] = a3;
  v7[15] = a1;
  v8 = type metadata accessor for HashAlgorithm();
  v7[22] = v8;
  v7[23] = *(v8 - 8);
  v7[24] = swift_task_alloc();
  v9 = type metadata accessor for JSONEncoder.DateEncodingStrategy();
  v7[25] = v9;
  v7[26] = *(v9 - 8);
  v7[27] = swift_task_alloc();

  return _swift_task_switch(sub_1011B2D34, 0, 0);
}

uint64_t sub_1011B2D34()
{
  v2 = *(v0 + 208);
  v1 = *(v0 + 216);
  v3 = *(v0 + 200);
  v5 = *(v0 + 120);
  v4 = *(v0 + 128);
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  v19 = *(v0 + 160);
  v20 = *(v0 + 144);
  *(v0 + 224) = JSONEncoder.init()();
  *v1 = sub_100281AE0;
  v1[1] = 0;
  (*(v2 + 104))(v1, enum case for JSONEncoder.DateEncodingStrategy.custom(_:), v3);
  dispatch thunk of JSONEncoder.dateEncodingStrategy.setter();
  *(v0 + 16) = v5;
  *(v0 + 24) = v4;
  *(v0 + 32) = v20;
  *(v0 + 48) = v19;
  sub_1011B37EC();
  v6 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  *(v0 + 232) = 0;
  *(v0 + 240) = v6;
  *(v0 + 248) = v7;

  v8 = sub_100646BE0();
  *(v0 + 256) = v8;
  if (qword_101694F58 != -1)
  {
    swift_once();
  }

  v9 = qword_10177C218;
  v10 = [objc_opt_self() sharedInstance];
  v11 = [v10 isInternalBuild];

  if (v11 && (v12 = String._bridgeToObjectiveC()(), v13 = [v9 BOOLForKey:v12], v12, (v13 & 1) != 0))
  {

    v14 = *(v0 + 8);
    v15 = *(v0 + 240);
    v16 = *(v0 + 248);

    return v14(v8, v15, v16);
  }

  else
  {
    v18 = swift_task_alloc();
    *(v0 + 264) = v18;
    *v18 = v0;
    v18[1] = sub_1011B3088;

    return sub_100E9F6BC();
  }
}

uint64_t sub_1011B3088(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 272) = a1;
  *(v3 + 280) = a2;

  return _swift_task_switch(sub_1011B3188, 0, 0);
}

uint64_t sub_1011B3188()
{
  v2 = v0[34];
  v1 = v0[35];
  v3 = v0[30];
  v4 = v0[31];
  v5 = v0[23];
  v6 = v0[24];
  v0[13] = v2;
  v17 = v5;
  v18 = v0[22];
  v19 = v6;
  v0[14] = v1;
  v0[11] = &type metadata for Data;
  v0[12] = &protocol witness table for Data;
  v0[8] = v3;
  v0[9] = v4;
  v7 = sub_1000035D0(v0 + 8, &type metadata for Data);
  v8 = *v7;
  v9 = v7[1];
  sub_100017D5C(v2, v1);
  sub_100017D5C(v3, v4);
  sub_100017DB0(v8, v9, (v0 + 13));
  sub_100016590(v2, v1);
  sub_100007BAC(v0 + 8);
  v10 = v0[14];
  v0[36] = v0[13];
  v0[37] = v10;
  (*(v17 + 104))(v19, enum case for HashAlgorithm.sha256(_:), v18);
  v11 = Data.hash(algorithm:)();
  v13 = v12;
  v0[38] = v11;
  v0[39] = v12;
  (*(v17 + 8))(v19, v18);
  v14 = swift_task_alloc();
  v0[40] = v14;
  *v14 = v0;
  v14[1] = sub_1011B3358;
  v15 = v0[17];

  return sub_100EA87F4(v11, v13, v15);
}

uint64_t sub_1011B3358(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 328) = v1;

  if (v1)
  {
    v5 = sub_1011B3588;
  }

  else
  {
    v6 = v4[38];
    v7 = v4[39];
    v4[42] = a1;
    sub_100016590(v6, v7);
    v5 = sub_1011B3488;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1011B3488()
{
  v12 = v0;
  v1 = v0[42];
  v3 = v0[36];
  v2 = v0[37];
  v4 = v0[32];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = v4;
  sub_10028709C(v1, sub_100EB00A4, 0, isUniquelyReferenced_nonNull_native, &v11);

  sub_100016590(v3, v2);

  v6 = v11;

  v7 = v0[1];
  v8 = v0[30];
  v9 = v0[31];

  return v7(v6, v8, v9);
}

uint64_t sub_1011B3588()
{
  v1 = v0[36];
  v2 = v0[37];
  sub_100016590(v0[38], v0[39]);
  sub_100016590(v1, v2);
  if (qword_1016954C0 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_1000076D4(v3, qword_10177CDD0);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138543362;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v4, v5, "Failed to generate keydrop fetch attestation header: %{public}@.", v6, 0xCu);
    sub_10000B3A8(v7, &qword_10169BB30, &unk_10138B3C0);
  }

  else
  {
  }

  v9 = v0[32];

  v10 = v0[1];
  v11 = v0[30];
  v12 = v0[31];

  return v10(v9, v11, v12);
}

unint64_t sub_1011B3798()
{
  result = qword_1016CA2D0;
  if (!qword_1016CA2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016CA2D0);
  }

  return result;
}

unint64_t sub_1011B37EC()
{
  result = qword_1016CA2D8;
  if (!qword_1016CA2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016CA2D8);
  }

  return result;
}

uint64_t sub_1011B3850(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 48))
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

uint64_t sub_1011B38AC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_1011B392C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 32))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1011B3980(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 1;
    }
  }

  return result;
}

void sub_1011B3A54(uint64_t a1)
{
  sub_1011B3F0C(319, &qword_1016BA040, &type metadata accessor for Date, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    sub_1011B3D30(319, &unk_1016CA3D8, &type metadata for KeyDropInterface.KeyPackageImportedShare, &type metadata accessor for Array);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1011B3B6C(uint64_t a1)
{
  type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    type metadata accessor for Date();
    if (v2 <= 0x3F)
    {
      sub_1011B3D30(319, &unk_1016CA478, &type metadata for KeyDropDownloadRequest.PackageRequest, &type metadata accessor for Array);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1011B3C80(uint64_t a1)
{
  type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    sub_1011B3D30(319, &qword_10169A330, &type metadata for Data, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1011B3D30(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1011B3DC8(uint64_t a1)
{
  type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    sub_1011B3F0C(319, &qword_1016BA040, &type metadata accessor for Date, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      sub_1011B3F0C(319, &unk_1016CA5B8, type metadata accessor for KeyDropDownloadResponse.Member, &type metadata accessor for Array);
      if (v3 <= 0x3F)
      {
        sub_1011B3F0C(319, &unk_1016C3C40, type metadata accessor for KeyDropInterface.KeyPackage, &type metadata accessor for Array);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1011B3F0C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_1011B3F70(uint64_t a1)
{
  result = sub_1011B3F98();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1011B3F98()
{
  result = qword_1016CA5F0;
  if (!qword_1016CA5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016CA5F0);
  }

  return result;
}

unint64_t sub_1011B3FEC(uint64_t a1)
{
  result = sub_1011B4014();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1011B4014()
{
  result = qword_1016CA5F8;
  if (!qword_1016CA5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016CA5F8);
  }

  return result;
}

unint64_t sub_1011B4068(uint64_t a1)
{
  result = sub_1011B4090();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1011B4090()
{
  result = qword_1016CA600;
  if (!qword_1016CA600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016CA600);
  }

  return result;
}

unint64_t sub_1011B40E4()
{
  result = qword_1016CA610;
  if (!qword_1016CA610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016CA610);
  }

  return result;
}

unint64_t sub_1011B4138()
{
  result = qword_1016CA620;
  if (!qword_1016CA620)
  {
    sub_1000BC580(&qword_1016CA618, &qword_10140AD48);
    sub_1011B41BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016CA620);
  }

  return result;
}

unint64_t sub_1011B41BC()
{
  result = qword_1016CA628;
  if (!qword_1016CA628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016CA628);
  }

  return result;
}

unint64_t sub_1011B4210()
{
  result = qword_1016CA638;
  if (!qword_1016CA638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016CA638);
  }

  return result;
}

uint64_t sub_1011B4264(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1000BC580(&qword_10169CDB0, &qword_10139A080);
    sub_1011B1CEC(a2, type metadata accessor for KeyDropInterface.KeyPackage, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1011B4300(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1011B4368()
{
  result = qword_1016CA660;
  if (!qword_1016CA660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016CA660);
  }

  return result;
}

uint64_t sub_1011B43BC(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1000BC580(&qword_1016CA668, &qword_10140AD70);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1011B4434()
{
  result = qword_1016CA678;
  if (!qword_1016CA678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016CA678);
  }

  return result;
}

unint64_t sub_1011B4488()
{
  result = qword_1016CA688;
  if (!qword_1016CA688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016CA688);
  }

  return result;
}

uint64_t sub_1011B44DC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x646E497472617473 && a2 == 0xEA00000000007865 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x617461646174656DLL && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7379654B78616DLL && a2 == 0xE700000000000000)
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

uint64_t sub_1011B4648(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x64496572616873 && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6974617269707865 && a2 == 0xEA00000000006E6FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x737265626D656DLL && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x616B63615079656BLL && a2 == 0xEB00000000736567)
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

uint64_t sub_1011B47B8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7078456572616873 && a2 == 0xED00007354797269;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x646174654D626577 && a2 == 0xEB00000000617461 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x616B63615079656BLL && a2 == 0xEB00000000736567)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1011B48E0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7107189 && a2 == 0xE300000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6B6361626C6C6163 && a2 == 0xED000065756C6156 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x546E6F6973736573 && a2 == 0xEC0000006E656B6FLL)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1011B4A04(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C725568747561 && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6B6F546863746566 && a2 == 0xEA00000000006E65 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x546E6F6973736573 && a2 == 0xEC0000006E656B6FLL)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1011B4B28@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_1000BC4D4(&qword_1016CA690, &qword_10140AD80);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v19 - v7;
  sub_1000035D0(a1, a1[3]);
  sub_1011B4D70();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100007BAC(a1);
  }

  v25 = 0;
  v9 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v11 = v10;
  v22 = v9;
  v24 = 1;
  v20 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v21 = v12;
  v23 = 2;
  v13 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v14 = v8;
  v16 = v15;
  (*(v6 + 8))(v14, v5);
  result = sub_100007BAC(a1);
  *a2 = v22;
  a2[1] = v11;
  v18 = v21;
  a2[2] = v20;
  a2[3] = v18;
  a2[4] = v13;
  a2[5] = v16;
  return result;
}

unint64_t sub_1011B4D70()
{
  result = qword_1016CA698;
  if (!qword_1016CA698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016CA698);
  }

  return result;
}

unint64_t sub_1011B4DC4()
{
  result = qword_1016CA6A8;
  if (!qword_1016CA6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016CA6A8);
  }

  return result;
}

unint64_t sub_1011B4E18()
{
  result = qword_1016CA6C0;
  if (!qword_1016CA6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016CA6C0);
  }

  return result;
}

unint64_t sub_1011B4E6C()
{
  result = qword_1016CA6D8;
  if (!qword_1016CA6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016CA6D8);
  }

  return result;
}

unint64_t sub_1011B4EC0()
{
  result = qword_1016CA6E8;
  if (!qword_1016CA6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016CA6E8);
  }

  return result;
}

uint64_t sub_1011B4F14(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1000BC580(&qword_1016CA640, &unk_10140AD58);
    sub_1011B1CEC(a2, type metadata accessor for KeyDropDownloadResponse.Member, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1011B5034()
{
  result = qword_1016CA710;
  if (!qword_1016CA710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016CA710);
  }

  return result;
}

unint64_t sub_1011B508C()
{
  result = qword_1016CA718;
  if (!qword_1016CA718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016CA718);
  }

  return result;
}

unint64_t sub_1011B50E4()
{
  result = qword_1016CA720;
  if (!qword_1016CA720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016CA720);
  }

  return result;
}

unint64_t sub_1011B513C()
{
  result = qword_1016CA728;
  if (!qword_1016CA728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016CA728);
  }

  return result;
}

unint64_t sub_1011B5194()
{
  result = qword_1016CA730;
  if (!qword_1016CA730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016CA730);
  }

  return result;
}

unint64_t sub_1011B51EC()
{
  result = qword_1016CA738;
  if (!qword_1016CA738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016CA738);
  }

  return result;
}

unint64_t sub_1011B5244()
{
  result = qword_1016CA740;
  if (!qword_1016CA740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016CA740);
  }

  return result;
}

unint64_t sub_1011B529C()
{
  result = qword_1016CA748;
  if (!qword_1016CA748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016CA748);
  }

  return result;
}

unint64_t sub_1011B52F4()
{
  result = qword_1016CA750;
  if (!qword_1016CA750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016CA750);
  }

  return result;
}

unint64_t sub_1011B534C()
{
  result = qword_1016CA758;
  if (!qword_1016CA758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016CA758);
  }

  return result;
}

unint64_t sub_1011B53A4()
{
  result = qword_1016CA760;
  if (!qword_1016CA760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016CA760);
  }

  return result;
}

unint64_t sub_1011B53FC()
{
  result = qword_1016CA768;
  if (!qword_1016CA768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016CA768);
  }

  return result;
}

unint64_t sub_1011B5454()
{
  result = qword_1016CA770;
  if (!qword_1016CA770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016CA770);
  }

  return result;
}

unint64_t sub_1011B54AC()
{
  result = qword_1016CA778;
  if (!qword_1016CA778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016CA778);
  }

  return result;
}

unint64_t sub_1011B5504()
{
  result = qword_1016CA780;
  if (!qword_1016CA780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016CA780);
  }

  return result;
}

unint64_t sub_1011B555C()
{
  result = qword_1016CA788;
  if (!qword_1016CA788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016CA788);
  }

  return result;
}

unint64_t sub_1011B55B4()
{
  result = qword_1016CA790;
  if (!qword_1016CA790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016CA790);
  }

  return result;
}

unint64_t sub_1011B560C()
{
  result = qword_1016CA798;
  if (!qword_1016CA798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016CA798);
  }

  return result;
}

unint64_t sub_1011B5664()
{
  result = qword_1016CA7A0;
  if (!qword_1016CA7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016CA7A0);
  }

  return result;
}

unint64_t sub_1011B56BC()
{
  result = qword_1016CA7A8;
  if (!qword_1016CA7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016CA7A8);
  }

  return result;
}

unint64_t sub_1011B5714()
{
  result = qword_1016CA7B0;
  if (!qword_1016CA7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016CA7B0);
  }

  return result;
}

unint64_t sub_1011B576C()
{
  result = qword_1016CA7B8;
  if (!qword_1016CA7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016CA7B8);
  }

  return result;
}

unint64_t sub_1011B57C4()
{
  result = qword_1016CA7C0;
  if (!qword_1016CA7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016CA7C0);
  }

  return result;
}

unint64_t sub_1011B581C()
{
  result = qword_1016CA7C8[0];
  if (!qword_1016CA7C8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1016CA7C8);
  }

  return result;
}

uint64_t sub_1011B5900()
{

  sub_1000BB27C(*(v0 + 80), *(v0 + 88));
  sub_1000BB27C(*(v0 + 96), *(v0 + 104));
  sub_1000BB27C(*(v0 + 112), *(v0 + 120));
  sub_1000BB27C(*(v0 + 128), *(v0 + 136));
  sub_1000BB27C(*(v0 + 144), *(v0 + 152));
  sub_1000BB27C(*(v0 + 160), *(v0 + 168));
  return v0;
}

uint64_t sub_1011B5980()
{
  sub_1011B5900();

  return swift_deallocClassInstance();
}

uint64_t sub_1011B59CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for LocalMessagingService(0, *(v4->_countAndFlagsBits + 80), *(v4->_countAndFlagsBits + 88), a4);
  swift_getWitnessTable();
  v5._countAndFlagsBits = CustomStringConvertible.typeDescription.getter();
  String.append(_:)(v5);

  v6._countAndFlagsBits = 32;
  v6._object = 0xE100000000000000;
  String.append(_:)(v6);
  v7._countAndFlagsBits = CustomStringConvertible<>.addressDescription.getter();
  String.append(_:)(v7);

  v8._countAndFlagsBits = 32;
  v8._object = 0xE100000000000000;
  String.append(_:)(v8);
  String.append(_:)(v4[1]);
  v9._countAndFlagsBits = 62;
  v9._object = 0xE100000000000000;
  String.append(_:)(v9);
  return 60;
}

uint64_t sub_1011B5B18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for LocalMessagingService(255, *(v4 + 80), *(v4 + 88), a4);
  swift_getMetatypeMetadata();
  return String.init<A>(describing:)();
}

void sub_1011B5B54(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, NSObject *a7)
{
  v8 = v7;
  v15 = *v8;
  dispatch_assert_queue_V2(v8[6]);
  v18 = v8[2];
  v17 = v8[3];
  v19 = v18 == a1 && v17 == a2;
  if (v19 || (v16 = _stringCompareWithSmolCheck(_:_:expecting:)(), (v16 & 1) != 0))
  {
    __chkstk_darwin(v16);
    type metadata accessor for Message(255, *(v15 + 80), *(v15 + 88), v20);
    type metadata accessor for MessagingMessageContext(255);
    swift_getTupleTypeMetadata2();
    sub_1000BC580(&qword_101696960, &unk_10138B220);
    type metadata accessor for Result();
    swift_getFunctionTypeMetadata1();
    type metadata accessor for Optional();
    OSAllocatedUnfairLock.callAsFunction<A>(_:)();
    if (v35[0])
    {
      sub_1000BB27C(v35[0], v35[1]);
    }

    else
    {
      v21 = v8[10];
      if (v21)
      {
        v22 = v8[11];

        v21(a3, a4, a5, a6 & 1, a7);
        sub_1000BB27C(v21, v22);
      }
    }
  }

  else
  {
    if (qword_101695190 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    sub_1000076D4(v23, qword_10177C4F0);

    v34 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v34, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v35[0] = v26;
      *v25 = 136315650;
      v30 = sub_1011B5B18(v26, v27, v28, v29);
      v32 = sub_1000136BC(v30, v31, v35);

      *(v25 + 4) = v32;
      *(v25 + 12) = 2080;
      *(v25 + 14) = sub_1000136BC(v18, v17, v35);
      *(v25 + 22) = 2080;
      *(v25 + 24) = sub_1000136BC(a1, a2, v35);
      _os_log_impl(&_mh_execute_header, v34, v24, "%s: Ignoring delegate callback from wrong IDS service! Expected %s, received: %s", v25, 0x20u);
      swift_arrayDestroy();
    }

    else
    {
    }
  }
}

void sub_1011B5EFC(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, NSObject *a8)
{
  v9 = v8;
  v16 = *v9;
  dispatch_assert_queue_V2(v9[6]);
  v18 = v9[2];
  v19 = v9[3];
  v20 = v18 == a1 && v19 == a2;
  if (v20 || (v17 = _stringCompareWithSmolCheck(_:_:expecting:)(), (v17 & 1) != 0))
  {
    __chkstk_darwin(v17);
    type metadata accessor for Message(255, *(v16 + 80), *(v16 + 88), v21);
    type metadata accessor for MessagingMessageContext(255);
    swift_getTupleTypeMetadata2();
    sub_1000BC580(&qword_101696960, &unk_10138B220);
    type metadata accessor for Result();
    swift_getFunctionTypeMetadata1();
    type metadata accessor for Optional();
    OSAllocatedUnfairLock.callAsFunction<A>(_:)();
    if (v37[0])
    {
      sub_1000BB27C(v37[0], v37[1]);
    }

    else
    {
      v22 = v9[12];
      if (v22)
      {
        v23 = v9[13];

        v22(a3, a4, a5, a6, a7, a8);
        sub_1000BB27C(v22, v23);
      }
    }
  }

  else
  {
    if (qword_101695190 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    sub_1000076D4(v24, qword_10177C4F0);

    v36 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v36, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v37[0] = v27;
      *v26 = 136315650;
      v31 = sub_1011B5B18(v27, v28, v29, v30);
      v33 = sub_1000136BC(v31, v32, v37);

      *(v26 + 4) = v33;
      *(v26 + 12) = 2080;
      *(v26 + 14) = sub_1000136BC(v18, v19, v37);
      *(v26 + 22) = 2080;
      *(v26 + 24) = sub_1000136BC(a1, a2, v37);
      _os_log_impl(&_mh_execute_header, v36, v25, "%s: Ignoring delegate callback from wrong IDS service! Expected %s, received: %s", v26, 0x20u);
      swift_arrayDestroy();
    }

    else
    {
    }
  }
}

double sub_1011B62A4@<D0>(uint64_t *a1@<X0>, _OWORD *a3@<X8>)
{
  v4 = *a1;
  type metadata accessor for UUID();
  type metadata accessor for Message(255, *(v4 + 80), *(v4 + 88), v5);
  type metadata accessor for MessagingMessageContext(255);

  swift_getTupleTypeMetadata2();
  sub_1000BC580(&qword_101696960, &unk_10138B220);
  type metadata accessor for Result();
  swift_getFunctionTypeMetadata1();
  sub_1000096E8(&qword_1016967B0, &protocol conformance descriptor for UUID);
  Dictionary.subscript.getter();

  result = *&v7;
  *a3 = v7;
  return result;
}

void sub_1011B6404(void (*a1)(NSObject *, NSObject *), unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(char *, NSObject *, NSObject *), unsigned int a7, uint64_t a8, unint64_t a9, uint64_t a10)
{
  v11 = v10;
  v164 = a8;
  v156 = a7;
  v173 = a6;
  v155 = a4;
  v154 = a3;
  v172 = a10;
  v167 = a9;
  v169 = *v10;
  v14 = type metadata accessor for Message(255, *(v169 + 80), *(v169 + 88), a4);
  v15 = type metadata accessor for MessagingMessageContext(255);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  sub_1000BC580(&qword_101696960, &unk_10138B220);
  v157 = TupleTypeMetadata2;
  v162 = type metadata accessor for Result();
  v159 = *(v162 - 8);
  v17 = __chkstk_darwin(v162);
  v158 = v150 - v18;
  v161 = v15;
  v19 = __chkstk_darwin(v17);
  v160 = (v150 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v19);
  v165 = v150 - v21;
  v22 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  __chkstk_darwin(v22 - 8);
  v24 = v150 - v23;
  v25 = type metadata accessor for UUID();
  v170 = *(v25 - 8);
  v171 = v25;
  v26 = __chkstk_darwin(v25);
  v153 = (v150 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = __chkstk_darwin(v26);
  v166 = v150 - v29;
  v30 = __chkstk_darwin(v28);
  v163 = (v150 - v31);
  v176 = v14;
  isa = v14[-1].isa;
  v32 = __chkstk_darwin(v30);
  v34 = v150 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __chkstk_darwin(v32);
  v37 = v150 - v36;
  v38 = __chkstk_darwin(v35);
  v40 = (v150 - v39);
  __chkstk_darwin(v38);
  v175 = (v150 - v41);
  dispatch_assert_queue_V2(v11[6]);
  v43 = v11[2];
  v42 = v11[3];
  v174 = a1;
  if (__PAIR128__(v42, v43) == __PAIR128__(a2, a1) || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v152 = v37;
    type metadata accessor for PropertyListDecoder();
    swift_allocObject();
    PropertyListDecoder.init()();
    v44 = v176;
    swift_getWitnessTable();
    v45 = v175;
    dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();

    sub_100015794(v172, v24);
    v47 = v170;
    v46 = v171;
    if ((*(v170 + 48))(v24, 1, v171) != 1)
    {
      v89 = v163;
      (*(v47 + 32))(v163, v24, v46);
      v90 = isa;
      if (qword_101695190 != -1)
      {
        swift_once();
      }

      v91 = type metadata accessor for Logger();
      v92 = sub_1000076D4(v91, qword_10177C4F0);
      sub_100D2577C(v172, v165);
      v93 = *(v90 + 2);
      v173 = (v90 + 16);
      v160 = v93;
      (v93)(v40, v45, v44);
      v94 = *(v170 + 16);
      v154 = v170 + 16;
      v151 = v94;
      v94(v166, v89, v46);

      v95 = v90;
      v96 = v167;

      v155 = v92;
      v97 = Logger.logObject.getter();
      LODWORD(v92) = static os_log_type_t.info.getter();

      v156 = v92;
      if (os_log_type_enabled(v97, v92))
      {
        v98 = swift_slowAlloc();
        v99 = swift_slowAlloc();
        v150[1] = v99;
        v177[0] = v99;
        *v98 = 136316418;
        v150[0] = v97;
        v103 = sub_1011B5B18(v99, v100, v101, v102);
        v105 = v44;
        v106 = sub_1000136BC(v103, v104, v177);

        *(v98 + 4) = v106;
        *(v98 + 12) = 2080;
        v169 = sub_1000096E8(&qword_101696930, &protocol conformance descriptor for UUID);
        v107 = v165;
        v108 = dispatch thunk of CustomStringConvertible.description.getter();
        v110 = v109;
        sub_100476F00(v107);
        v111 = sub_1000136BC(v108, v110, v177);

        *(v98 + 14) = v111;
        *(v98 + 22) = 2080;
        *(v98 + 24) = sub_1000136BC(v174, a2, v177);
        *(v98 + 32) = 2080;
        *(v98 + 34) = sub_1000136BC(v164, v96, v177);
        *(v98 + 42) = 2080;
        v112 = v152;
        (v160)(v152, v40, v105);
        v113 = v40;
        v114 = *(isa + 1);
        v114(v113, v105);
        Message.description.getter(v105);
        v116 = v115;
        v118 = v117;
        v114(v112, v105);
        v119 = sub_1000136BC(v116, v118, v177);

        *(v98 + 44) = v119;
        *(v98 + 52) = 2080;
        v120 = v166;
        v121 = v171;
        v122 = dispatch thunk of CustomStringConvertible.description.getter();
        v124 = v123;
        v67 = *(v170 + 8);
        v67(v120, v121);
        v125 = sub_1000136BC(v122, v124, v177);

        *(v98 + 54) = v125;
        v126 = v150[0];
        _os_log_impl(&_mh_execute_header, v150[0], v156, "%s: Received message %s on %s from %s: %s in response to %s", v98, 0x3Eu);
        swift_arrayDestroy();

        v127 = v163;
      }

      else
      {
        v127 = v89;
        v131 = v40;
        v114 = *(v95 + 1);
        v114(v131, v44);

        v67 = *(v170 + 8);
        v67(v166, v171);
        v128 = sub_100476F00(v165);
      }

      __chkstk_darwin(v128);
      v150[-2] = v11;
      v150[-1] = v127;
      v132 = v162;
      swift_getFunctionTypeMetadata1();
      type metadata accessor for Optional();
      OSAllocatedUnfairLock.callAsFunction<A>(_:)();
      v133 = v177[0];
      if (v177[0])
      {
        v134 = v177[1];
        v135 = *(v157 + 48);
        v136 = v158;
        v138 = v175;
        v137 = v176;
        (v160)(v158, v175, v176);
        sub_100D2577C(v172, &v136[v135]);
        swift_storeEnumTagMultiPayload();

        v133(v136);
        sub_1000BB27C(v133, v134);
        sub_1000BB27C(v133, v134);
        (*(v159 + 8))(v136, v132);
        v114(v138, v137);
        v130 = v171;
      }

      else
      {
        v139 = v153;
        v140 = v171;
        v151(v153, v127, v171);
        v141 = Logger.logObject.getter();
        v142 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v141, v142))
        {
          v143 = swift_slowAlloc();
          v144 = swift_slowAlloc();
          v177[0] = v144;
          *v143 = 136315138;
          sub_1000096E8(&qword_101696930, &protocol conformance descriptor for UUID);
          v145 = dispatch thunk of CustomStringConvertible.description.getter();
          v146 = v139;
          v148 = v147;
          v174 = v114;
          v67(v146, v140);
          v149 = sub_1000136BC(v145, v148, v177);

          *(v143 + 4) = v149;
          _os_log_impl(&_mh_execute_header, v141, v142, "Could not find promise for %s", v143, 0xCu);
          sub_100007BAC(v144);

          v174(v175, v176);
        }

        else
        {

          v67(v139, v140);
          v114(v175, v176);
        }

        v130 = v140;
      }

      v78 = v127;
      goto LABEL_31;
    }

    sub_10000B3A8(v24, &qword_1016980D0, &unk_10138F3B0);
    v48 = isa;
    if (qword_101695190 != -1)
    {
      swift_once();
    }

    v49 = type metadata accessor for Logger();
    sub_1000076D4(v49, qword_10177C4F0);
    v50 = v160;
    sub_100D2577C(v172, v160);
    v173 = *(v48 + 2);
    v173(v34, v45, v44);

    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v170 = v54;
      v177[0] = v54;
      *v53 = 136316162;
      v166 = v51;
      v58 = sub_1011B5B18(v54, v55, v56, v57);
      v60 = sub_1000136BC(v58, v59, v177);
      LODWORD(v169) = v52;
      v61 = v60;

      *(v53 + 4) = v61;
      *(v53 + 12) = 2080;
      sub_1000096E8(&qword_101696930, &protocol conformance descriptor for UUID);
      v62 = dispatch thunk of CustomStringConvertible.description.getter();
      v64 = v63;
      sub_100476F00(v50);
      v65 = sub_1000136BC(v62, v64, v177);

      *(v53 + 14) = v65;
      *(v53 + 22) = 2080;
      *(v53 + 24) = sub_1000136BC(v174, a2, v177);
      *(v53 + 32) = 2080;
      *(v53 + 34) = sub_1000136BC(v164, v167, v177);
      *(v53 + 42) = 2080;
      v66 = v152;
      v173(v152, v34, v176);
      v67 = *(v48 + 1);
      v67(v34, v176);
      Message.description.getter(v176);
      v69 = v68;
      v71 = v70;
      v67(v66, v176);
      v72 = sub_1000136BC(v69, v71, v177);

      *(v53 + 44) = v72;
      v73 = v166;
      _os_log_impl(&_mh_execute_header, v166, v169, "%s: Received message %s on %s from %s: %s", v53, 0x34u);
      swift_arrayDestroy();

      v44 = v176;

      v74 = v11[14];
      if (v74)
      {
LABEL_8:
        v75 = v11[15];
        sub_100012908(v74, v75);
        v76 = sub_100908F24(_swiftEmptyArrayStorage);
        v77 = v175;
        v74(v154, v155, v156, v164, v167, v175, v76, v172);
        sub_1000BB27C(v74, v75);

        v78 = v77;
LABEL_22:
        v130 = v44;
LABEL_31:
        v67(v78, v130);
        return;
      }
    }

    else
    {
      v67 = *(v48 + 1);
      v67(v34, v44);

      sub_100476F00(v50);
      v74 = v11[14];
      if (v74)
      {
        goto LABEL_8;
      }
    }

    v78 = v175;
    goto LABEL_22;
  }

  if (qword_101695190 != -1)
  {
    swift_once();
  }

  v79 = type metadata accessor for Logger();
  sub_1000076D4(v79, qword_10177C4F0);

  v176 = Logger.logObject.getter();
  v80 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v176, v80))
  {
    v81 = swift_slowAlloc();
    v82 = swift_slowAlloc();
    v177[0] = v82;
    *v81 = 136315650;
    v86 = sub_1011B5B18(v82, v83, v84, v85);
    v88 = sub_1000136BC(v86, v87, v177);

    *(v81 + 4) = v88;
    *(v81 + 12) = 2080;
    *(v81 + 14) = sub_1000136BC(v43, v42, v177);
    *(v81 + 22) = 2080;
    *(v81 + 24) = sub_1000136BC(v174, a2, v177);
    _os_log_impl(&_mh_execute_header, v176, v80, "%s: Ignoring delegate callback from wrong IDS service! Expected %s, received: %s", v81, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
    v129 = v176;
  }
}

void sub_1011B76D0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int a7, uint64_t a8, NSObject *a9, uint64_t a10)
{
  v80 = a7;
  v77 = a3;
  v78 = a4;
  v79 = a10;
  v81 = a8;
  v82 = a9;
  v14 = *v10;
  v15 = type metadata accessor for Message(0, *(*v10 + 80), *(*v10 + 88), a4);
  v76 = *(v15 - 8);
  v16 = __chkstk_darwin(v15);
  v18 = &v69 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v16);
  v21 = &v69 - v20;
  __chkstk_darwin(v19);
  v23 = &v69 - v22;
  dispatch_assert_queue_V2(v10[6]);
  v24 = v10[14];
  if (v24)
  {
    v74 = a6;
    v75 = v14;
    v83 = v24;
    v84 = v10[15];
    v26 = v10[2];
    v25 = v10[3];
    if (v26 == a1 && v25 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      v27 = Data.init(contentsOf:options:)();
      v29 = v28;
      type metadata accessor for PropertyListDecoder();
      swift_allocObject();
      PropertyListDecoder.init()();
      swift_getWitnessTable();
      dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
      v72 = v27;
      v73 = v29;

      if (qword_101695190 != -1)
      {
        swift_once();
      }

      v42 = type metadata accessor for Logger();
      sub_1000076D4(v42, qword_10177C4F0);
      v43 = v76;
      v44 = *(v76 + 16);
      v44(v21, v23, v15);
      v45 = v82;

      v46 = Logger.logObject.getter();
      v47 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        v49 = swift_slowAlloc();
        v71 = v49;
        v85 = v49;
        *v48 = 136315650;
        v70 = v46;
        v53 = sub_1011B5B18(v49, v50, v51, v52);
        v55 = sub_1000136BC(v53, v54, &v85);
        v69 = v44;
        v56 = v55;

        *(v48 + 4) = v56;
        *(v48 + 12) = 2080;
        LODWORD(v75) = v47;
        v57 = v43;
        v58 = v81;
        *(v48 + 14) = sub_1000136BC(v81, v82, &v85);
        *(v48 + 22) = 2080;
        v69(v18, v21, v15);
        v59 = *(v57 + 8);
        v59(v21, v15);
        Message.description.getter(v15);
        v61 = v60;
        v63 = v62;
        v59(v18, v15);
        v64 = sub_1000136BC(v61, v63, &v85);

        *(v48 + 24) = v64;
        v65 = v70;
        _os_log_impl(&_mh_execute_header, v70, v75, "%s: Received resource from %s: %s", v48, 0x20u);
        swift_arrayDestroy();

        v45 = v82;
      }

      else
      {
        v59 = *(v43 + 8);
        v59(v21, v15);

        v58 = v81;
      }

      v66 = v45;
      v67 = v83;
      v68 = v84;
      v83(v77, v78, v80, v58, v66, v23, v74, v79);
      sub_1000BB27C(v67, v68);
      sub_100016590(v72, v73);
      v59(v23, v15);
    }

    else
    {
      v30 = qword_101695190;

      if (v30 != -1)
      {
        swift_once();
      }

      v31 = type metadata accessor for Logger();
      sub_1000076D4(v31, qword_10177C4F0);

      v82 = Logger.logObject.getter();
      v32 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v82, v32))
      {
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        v85 = v34;
        *v33 = 136315650;
        v38 = sub_1011B5B18(v34, v35, v36, v37);
        v40 = sub_1000136BC(v38, v39, &v85);

        *(v33 + 4) = v40;
        *(v33 + 12) = 2080;
        *(v33 + 14) = sub_1000136BC(v26, v25, &v85);
        *(v33 + 22) = 2080;
        *(v33 + 24) = sub_1000136BC(a1, a2, &v85);
        _os_log_impl(&_mh_execute_header, v82, v32, "%s: Ignoring delegate callback from wrong IDS service! Expected %s, received: %s", v33, 0x20u);
        swift_arrayDestroy();

        sub_1000BB27C(v83, v84);
      }

      else
      {
        sub_1000BB27C(v83, v84);
        v41 = v82;
      }
    }
  }
}

void sub_1011B7F2C(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = v3;
  dispatch_assert_queue_V2(*(v4 + 48));
  v8 = *(v4 + 128);
  if (v8)
  {
    v9 = *(v4 + 136);
    v10 = *(v4 + 16);
    v11 = *(v4 + 24);
    v12 = v10 == a1 && v11 == a2;
    if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      v8(a3);

      sub_1000BB27C(v8, v9);
    }

    else
    {
      v13 = qword_101695190;

      if (v13 != -1)
      {
        swift_once();
      }

      v14 = type metadata accessor for Logger();
      sub_1000076D4(v14, qword_10177C4F0);

      oslog = Logger.logObject.getter();
      v15 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(oslog, v15))
      {
        v16 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        v25 = v23;
        *v16 = 136315650;
        v20 = sub_1011B5B18(v23, v17, v18, v19);
        v22 = sub_1000136BC(v20, v21, &v25);

        *(v16 + 4) = v22;
        *(v16 + 12) = 2080;
        *(v16 + 14) = sub_1000136BC(v10, v11, &v25);
        *(v16 + 22) = 2080;
        *(v16 + 24) = sub_1000136BC(a1, a2, &v25);
        _os_log_impl(&_mh_execute_header, oslog, v15, "%s: Ignoring delegate callback from wrong IDS service! Expected %s, received: %s", v16, 0x20u);
        swift_arrayDestroy();

        sub_1000BB27C(v8, v9);
      }

      else
      {
        sub_1000BB27C(v8, v9);
      }
    }
  }
}

void sub_1011B8204(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = v3;
  dispatch_assert_queue_V2(*(v4 + 48));
  v8 = *(v4 + 144);
  if (v8)
  {
    v9 = *(v4 + 152);
    v10 = *(v4 + 16);
    v11 = *(v4 + 24);
    v12 = v10 == a1 && v11 == a2;
    if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      v8(a3);

      sub_1000BB27C(v8, v9);
    }

    else
    {
      v13 = qword_101695190;

      if (v13 != -1)
      {
        swift_once();
      }

      v14 = type metadata accessor for Logger();
      sub_1000076D4(v14, qword_10177C4F0);

      oslog = Logger.logObject.getter();
      v15 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(oslog, v15))
      {
        v16 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        v25 = v23;
        *v16 = 136315650;
        v20 = sub_1011B5B18(v23, v17, v18, v19);
        v22 = sub_1000136BC(v20, v21, &v25);

        *(v16 + 4) = v22;
        *(v16 + 12) = 2080;
        *(v16 + 14) = sub_1000136BC(v10, v11, &v25);
        *(v16 + 22) = 2080;
        *(v16 + 24) = sub_1000136BC(a1, a2, &v25);
        _os_log_impl(&_mh_execute_header, oslog, v15, "%s: Ignoring delegate callback from wrong IDS service! Expected %s, received: %s", v16, 0x20u);
        swift_arrayDestroy();

        sub_1000BB27C(v8, v9);
      }

      else
      {
        sub_1000BB27C(v8, v9);
      }
    }
  }
}

void sub_1011B84DC(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = v3;
  dispatch_assert_queue_V2(*(v4 + 48));
  v8 = *(v4 + 160);
  if (v8)
  {
    v9 = *(v4 + 168);
    v10 = *(v4 + 16);
    v11 = *(v4 + 24);
    v12 = v10 == a1 && v11 == a2;
    if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      v8(a3);

      sub_1000BB27C(v8, v9);
    }

    else
    {
      v13 = qword_101695190;

      if (v13 != -1)
      {
        swift_once();
      }

      v14 = type metadata accessor for Logger();
      sub_1000076D4(v14, qword_10177C4F0);

      oslog = Logger.logObject.getter();
      v15 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(oslog, v15))
      {
        v16 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        v25 = v23;
        *v16 = 136315650;
        v20 = sub_1011B5B18(v23, v17, v18, v19);
        v22 = sub_1000136BC(v20, v21, &v25);

        *(v16 + 4) = v22;
        *(v16 + 12) = 2080;
        *(v16 + 14) = sub_1000136BC(v10, v11, &v25);
        *(v16 + 22) = 2080;
        *(v16 + 24) = sub_1000136BC(a1, a2, &v25);
        _os_log_impl(&_mh_execute_header, oslog, v15, "%s: Ignoring delegate callback from wrong IDS service! Expected %s, received: %s", v16, 0x20u);
        swift_arrayDestroy();

        sub_1000BB27C(v8, v9);
      }

      else
      {
        sub_1000BB27C(v8, v9);
      }
    }
  }
}

uint64_t sub_1011B8814(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a2)
  {
LABEL_13:
    v6 = 0;
    a3 = 0;
    goto LABEL_15;
  }

  if (!a3)
  {
    v6 = 0;
LABEL_15:
    v7 = a4;
LABEL_18:
    *result = a4;
    *(result + 8) = a5;
    *(result + 16) = v7;
    *(result + 24) = v6;
    return a3;
  }

  if (a3 < 0)
  {
    goto LABEL_20;
  }

  v5 = 0;
  v6 = 0;
  v7 = a4;
  while (1)
  {
    if (v6)
    {
      v6 = 1;
      a3 = v5;
      goto LABEL_18;
    }

    v6 = v7 == a5;
    if (v7 == a5)
    {
      v8 = 0;
      goto LABEL_9;
    }

    v8 = v7 + 1;
    if (v7 == -1)
    {
      break;
    }

LABEL_9:
    *(a2 + 8 * v5) = v7;
    if (a3 - 1 == v5)
    {
      v7 = v8;
      goto LABEL_18;
    }

    ++v5;
    v7 = v8;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1011B88B8()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_1016CA850);
  v1 = sub_1000076D4(v0, qword_1016CA850);
  if (qword_101695468 != -1)
  {
    swift_once();
  }

  v2 = sub_1000076D4(v0, qword_10177CCE0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1011B8980()
{
  v0 = sub_1000BC4D4(&qword_101699D30, &qword_1013BA850);
  sub_100044B3C(v0, qword_10177C770);
  sub_1000076D4(v0, qword_10177C770);
  sub_1000041A4(&qword_1016A8FF8, &qword_101699D30, &qword_1013BA850, &protocol conformance descriptor for Expression<A>);
  return ExpressionType.init(_:)();
}

uint64_t sub_1011B8A30()
{
  v0 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
  sub_100044B3C(v0, qword_10177C788);
  sub_1000076D4(v0, qword_10177C788);
  sub_1000041A4(&qword_10169DDB0, &qword_101699D10, &unk_1013930B0, &protocol conformance descriptor for Expression<A>);
  return ExpressionType.init(_:)();
}

uint64_t sub_1011B8AF0()
{
  v0 = sub_1000BC4D4(&qword_101699DE8, &qword_101393120);
  sub_100044B3C(v0, qword_10177C7A0);
  sub_1000076D4(v0, qword_10177C7A0);
  sub_1000041A4(&qword_10169DDA0, &qword_101699DE8, &qword_101393120, &protocol conformance descriptor for Expression<A>);
  return ExpressionType.init(_:)();
}

uint64_t sub_1011B8BA0()
{
  v0 = sub_1000BC4D4(&qword_101699DA0, &unk_10139D120);
  sub_100044B3C(v0, qword_10177C7B8);
  sub_1000076D4(v0, qword_10177C7B8);
  sub_1000041A4(&qword_10169DDA8, &qword_101699DA0, &unk_10139D120, &protocol conformance descriptor for Expression<A>);
  return ExpressionType.init(_:)();
}

uint64_t sub_1011B8C54()
{
  v0 = sub_1000BC4D4(&qword_101699D08, &unk_1013D7C10);
  sub_100044B3C(v0, qword_10177C7D0);
  sub_1000076D4(v0, qword_10177C7D0);
  sub_1000041A4(&qword_101699D20, &qword_101699D08, &unk_1013D7C10, &protocol conformance descriptor for Expression<A>);
  return ExpressionType.init(_:)();
}

uint64_t sub_1011B8D04()
{
  v0 = sub_1000BC4D4(&qword_101699DC0, &unk_10139D110);
  sub_100044B3C(v0, qword_10177C7E8);
  sub_1000076D4(v0, qword_10177C7E8);
  sub_1000041A4(&qword_101699E90, &qword_101699DC0, &unk_10139D110, &protocol conformance descriptor for Expression<A>);
  return ExpressionType.init(_:)();
}

uint64_t sub_1011B8DC0()
{
  v0 = sub_1000BC4D4(&qword_101699DA0, &unk_10139D120);
  sub_100044B3C(v0, qword_10177C800);
  sub_1000076D4(v0, qword_10177C800);
  sub_1000041A4(&qword_10169DDA8, &qword_101699DA0, &unk_10139D120, &protocol conformance descriptor for Expression<A>);
  return ExpressionType.init(_:)();
}

uint64_t sub_1011B8E70()
{
  v0 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
  sub_100044B3C(v0, qword_10177C818);
  sub_1000076D4(v0, qword_10177C818);
  sub_1000041A4(&qword_10169DDB0, &qword_101699D10, &unk_1013930B0, &protocol conformance descriptor for Expression<A>);
  return ExpressionType.init(_:)();
}

uint64_t sub_1011B8F30()
{
  v0 = sub_1000BC4D4(&qword_101699D78, &unk_1013BF4B0);
  sub_100044B3C(v0, qword_10177C830);
  sub_1000076D4(v0, qword_10177C830);
  sub_1000041A4(&qword_101699D88, &qword_101699D78, &unk_1013BF4B0, &protocol conformance descriptor for Expression<A>);
  return ExpressionType.init(_:)();
}

uint64_t sub_1011B8FE4()
{
  v0 = sub_1000BC4D4(&qword_101699DC0, &unk_10139D110);
  sub_100044B3C(v0, qword_10177C848);
  sub_1000076D4(v0, qword_10177C848);
  sub_1000041A4(&qword_101699E90, &qword_101699DC0, &unk_10139D110, &protocol conformance descriptor for Expression<A>);
  return ExpressionType.init(_:)();
}

uint64_t sub_1011B909C()
{
  v0 = sub_1000BC4D4(&qword_10169DDD0, &unk_10139D140);
  sub_100044B3C(v0, qword_10177C860);
  sub_1000076D4(v0, qword_10177C860);
  sub_1000041A4(&qword_10169DDD8, &qword_10169DDD0, &unk_10139D140, &protocol conformance descriptor for Expression<A>);
  return ExpressionType.init(_:)();
}

uint64_t sub_1011B915C()
{
  v0 = sub_1000BC4D4(&qword_101699DE8, &qword_101393120);
  sub_100044B3C(v0, qword_10177C878);
  sub_1000076D4(v0, qword_10177C878);
  sub_1000041A4(&qword_10169DDA0, &qword_101699DE8, &qword_101393120, &protocol conformance descriptor for Expression<A>);
  return ExpressionType.init(_:)();
}

uint64_t sub_1011B9214()
{
  v0 = sub_1000BC4D4(&qword_101699DC0, &unk_10139D110);
  sub_100044B3C(v0, qword_10177C890);
  sub_1000076D4(v0, qword_10177C890);
  sub_1000041A4(&qword_101699E90, &qword_101699DC0, &unk_10139D110, &protocol conformance descriptor for Expression<A>);
  return ExpressionType.init(_:)();
}

uint64_t sub_1011B92CC()
{
  v0 = sub_1000BC4D4(&qword_101699DC0, &unk_10139D110);
  sub_100044B3C(v0, qword_10177C8A8);
  sub_1000076D4(v0, qword_10177C8A8);
  sub_1000041A4(&qword_101699E90, &qword_101699DC0, &unk_10139D110, &protocol conformance descriptor for Expression<A>);
  return ExpressionType.init(_:)();
}

uint64_t sub_1011B938C()
{
  v0 = sub_1000BC4D4(&qword_101699DA0, &unk_10139D120);
  sub_100044B3C(v0, qword_10177C8C0);
  sub_1000076D4(v0, qword_10177C8C0);
  sub_1000041A4(&qword_10169DDA8, &qword_101699DA0, &unk_10139D120, &protocol conformance descriptor for Expression<A>);
  return ExpressionType.init(_:)();
}

uint64_t sub_1011B943C()
{
  v0 = sub_1000BC4D4(&qword_101699DA0, &unk_10139D120);
  sub_100044B3C(v0, qword_10177C8D8);
  sub_1000076D4(v0, qword_10177C8D8);
  sub_1000041A4(&qword_10169DDA8, &qword_101699DA0, &unk_10139D120, &protocol conformance descriptor for Expression<A>);
  return ExpressionType.init(_:)();
}

uint64_t sub_1011B94F4()
{
  v0 = sub_1000BC4D4(&qword_101699DA0, &unk_10139D120);
  sub_100044B3C(v0, qword_10177C8F0);
  sub_1000076D4(v0, qword_10177C8F0);
  sub_1000041A4(&qword_10169DDA8, &qword_101699DA0, &unk_10139D120, &protocol conformance descriptor for Expression<A>);
  return ExpressionType.init(_:)();
}

uint64_t sub_1011B95B0()
{
  v0 = sub_1000BC4D4(&qword_101699DD0, &qword_101393110);
  sub_100044B3C(v0, qword_10177C908);
  sub_1000076D4(v0, qword_10177C908);
  sub_1000041A4(&qword_1016CAA00, &qword_101699DD0, &qword_101393110, &protocol conformance descriptor for Expression<A>);
  return ExpressionType.init(_:)();
}

uint64_t sub_1011B965C()
{
  v0 = sub_1000BC4D4(&qword_101699DD8, &qword_101393118);
  sub_100044B3C(v0, qword_10177C920);
  sub_1000076D4(v0, qword_10177C920);
  sub_1000041A4(&qword_1016CA9F8, &qword_101699DD8, &qword_101393118, &protocol conformance descriptor for Expression<A>);
  return ExpressionType.init(_:)();
}

uint64_t sub_1011B9708()
{
  v0 = sub_1000BC4D4(&qword_101699D78, &unk_1013BF4B0);
  sub_100044B3C(v0, qword_10177C938);
  sub_1000076D4(v0, qword_10177C938);
  sub_1000041A4(&qword_101699D88, &qword_101699D78, &unk_1013BF4B0, &protocol conformance descriptor for Expression<A>);
  return ExpressionType.init(_:)();
}

uint64_t sub_1011B97BC()
{
  v0 = sub_1000BC4D4(&qword_101699D08, &unk_1013D7C10);
  sub_100044B3C(v0, qword_10177C950);
  sub_1000076D4(v0, qword_10177C950);
  sub_1000041A4(&qword_101699D20, &qword_101699D08, &unk_1013D7C10, &protocol conformance descriptor for Expression<A>);
  return ExpressionType.init(_:)();
}

uint64_t sub_1011B9878()
{
  v0 = sub_1000BC4D4(&qword_101699D08, &unk_1013D7C10);
  sub_100044B3C(v0, qword_10177C968);
  sub_1000076D4(v0, qword_10177C968);
  sub_1000041A4(&qword_101699D20, &qword_101699D08, &unk_1013D7C10, &protocol conformance descriptor for Expression<A>);
  return ExpressionType.init(_:)();
}

uint64_t sub_1011B9928()
{
  v0 = sub_1000BC4D4(&qword_101699E00, &qword_101393128);
  sub_100044B3C(v0, qword_10177C980);
  sub_1000076D4(v0, qword_10177C980);
  sub_1000041A4(&qword_101699EA0, &qword_101699E00, &qword_101393128, &protocol conformance descriptor for Expression<A>);
  return ExpressionType.init(_:)();
}

uint64_t sub_1011B99DC()
{
  v0 = sub_1000BC4D4(&qword_101699E00, &qword_101393128);
  sub_100044B3C(v0, qword_10177C998);
  sub_1000076D4(v0, qword_10177C998);
  sub_1000041A4(&qword_101699EA0, &qword_101699E00, &qword_101393128, &protocol conformance descriptor for Expression<A>);
  return ExpressionType.init(_:)();
}

uint64_t sub_1011B9A94()
{
  v0 = sub_1000BC4D4(&qword_101699E00, &qword_101393128);
  sub_100044B3C(v0, qword_10177C9B0);
  sub_1000076D4(v0, qword_10177C9B0);
  sub_1000041A4(&qword_101699EA0, &qword_101699E00, &qword_101393128, &protocol conformance descriptor for Expression<A>);
  return ExpressionType.init(_:)();
}

uint64_t sub_1011B9B54()
{
  v0 = sub_1000BC4D4(&qword_101699D78, &unk_1013BF4B0);
  sub_100044B3C(v0, qword_10177C9C8);
  sub_1000076D4(v0, qword_10177C9C8);
  sub_1000041A4(&qword_101699D88, &qword_101699D78, &unk_1013BF4B0, &protocol conformance descriptor for Expression<A>);
  return ExpressionType.init(_:)();
}

uint64_t sub_1011B9C0C()
{
  v0 = sub_1000BC4D4(&qword_101699DA0, &unk_10139D120);
  sub_100044B3C(v0, qword_10177C9E0);
  sub_1000076D4(v0, qword_10177C9E0);
  sub_1000041A4(&qword_10169DDA8, &qword_101699DA0, &unk_10139D120, &protocol conformance descriptor for Expression<A>);
  return ExpressionType.init(_:)();
}

uint64_t sub_1011B9CB8()
{
  v0 = sub_1000BC4D4(&qword_101699E60, &unk_1013BF4C0);
  sub_100044B3C(v0, qword_10177C9F8);
  sub_1000076D4(v0, qword_10177C9F8);
  sub_1000041A4(&qword_1016AB598, &qword_101699E60, &unk_1013BF4C0, &protocol conformance descriptor for Expression<A>);
  return ExpressionType.init(_:)();
}

uint64_t sub_1011B9D68()
{
  v0 = sub_1000BC4D4(&qword_101699D78, &unk_1013BF4B0);
  sub_100044B3C(v0, qword_10177CA10);
  sub_1000076D4(v0, qword_10177CA10);
  sub_1000041A4(&qword_101699D88, &qword_101699D78, &unk_1013BF4B0, &protocol conformance descriptor for Expression<A>);
  return ExpressionType.init(_:)();
}

uint64_t sub_1011B9E20()
{
  v0 = sub_1000BC4D4(&qword_101699D30, &qword_1013BA850);
  sub_100044B3C(v0, qword_10177CA28);
  sub_1000076D4(v0, qword_10177CA28);
  sub_1000041A4(&qword_1016A8FF8, &qword_101699D30, &qword_1013BA850, &protocol conformance descriptor for Expression<A>);
  return ExpressionType.init(_:)();
}

uint64_t sub_1011B9ED4()
{
  v0 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
  sub_100044B3C(v0, qword_10177CA40);
  sub_1000076D4(v0, qword_10177CA40);
  sub_1000041A4(&qword_10169DDB0, &qword_101699D10, &unk_1013930B0, &protocol conformance descriptor for Expression<A>);
  return ExpressionType.init(_:)();
}

uint64_t sub_1011B9F94()
{
  v0 = sub_1000BC4D4(&qword_101699E70, &unk_101393160);
  sub_100044B3C(v0, qword_10177CA58);
  sub_1000076D4(v0, qword_10177CA58);
  sub_1000041A4(&qword_101699EB0, &qword_101699E70, &unk_101393160, &protocol conformance descriptor for Expression<A>);
  return ExpressionType.init(_:)();
}

uint64_t sub_1011BA054()
{
  v0 = sub_1000BC4D4(&qword_101699E70, &unk_101393160);
  sub_100044B3C(v0, qword_10177CA70);
  sub_1000076D4(v0, qword_10177CA70);
  sub_1000041A4(&qword_101699EB0, &qword_101699E70, &unk_101393160, &protocol conformance descriptor for Expression<A>);
  return ExpressionType.init(_:)();
}

uint64_t sub_1011BA104()
{
  v0 = sub_1000BC4D4(&qword_10169DE00, &unk_10139D160);
  sub_100044B3C(v0, qword_10177CA88);
  sub_1000076D4(v0, qword_10177CA88);
  sub_1000041A4(&qword_10169DE08, &qword_10169DE00, &unk_10139D160, &protocol conformance descriptor for Expression<A>);
  return ExpressionType.init(_:)();
}

uint64_t sub_1011BA1B8()
{
  v0 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
  sub_100044B3C(v0, qword_10177CAA0);
  sub_1000076D4(v0, qword_10177CAA0);
  sub_1000041A4(&qword_10169DDB0, &qword_101699D10, &unk_1013930B0, &protocol conformance descriptor for Expression<A>);
  return ExpressionType.init(_:)();
}

uint64_t sub_1011BA270()
{
  v0 = sub_1000BC4D4(&qword_10169DE00, &unk_10139D160);
  sub_100044B3C(v0, qword_10177CAB8);
  sub_1000076D4(v0, qword_10177CAB8);
  sub_1000041A4(&qword_10169DE08, &qword_10169DE00, &unk_10139D160, &protocol conformance descriptor for Expression<A>);
  return ExpressionType.init(_:)();
}

uint64_t sub_1011BA31C()
{
  v0 = sub_1000BC4D4(&qword_10169DE00, &unk_10139D160);
  sub_100044B3C(v0, qword_10177CAD0);
  sub_1000076D4(v0, qword_10177CAD0);
  sub_1000041A4(&qword_10169DE08, &qword_10169DE00, &unk_10139D160, &protocol conformance descriptor for Expression<A>);
  return ExpressionType.init(_:)();
}

uint64_t sub_1011BA3D8()
{
  v0 = sub_1000BC4D4(&qword_10169DDE0, &unk_1013B6420);
  sub_100044B3C(v0, qword_10177CAE8);
  sub_1000076D4(v0, qword_10177CAE8);
  sub_1000041A4(&qword_10169DDE8, &qword_10169DDE0, &unk_1013B6420, &protocol conformance descriptor for Expression<A>);
  return ExpressionType.init(_:)();
}

uint64_t sub_1011BA494()
{
  v0 = sub_1000BC4D4(&qword_10169DE00, &unk_10139D160);
  sub_100044B3C(v0, qword_10177CB00);
  sub_1000076D4(v0, qword_10177CB00);
  sub_1000041A4(&qword_10169DE08, &qword_10169DE00, &unk_10139D160, &protocol conformance descriptor for Expression<A>);
  return ExpressionType.init(_:)();
}

uint64_t sub_1011BA550()
{
  v0 = sub_1000BC4D4(&qword_10169DE00, &unk_10139D160);
  sub_100044B3C(v0, qword_10177CB18);
  sub_1000076D4(v0, qword_10177CB18);
  sub_1000041A4(&qword_10169DE08, &qword_10169DE00, &unk_10139D160, &protocol conformance descriptor for Expression<A>);
  return ExpressionType.init(_:)();
}

uint64_t sub_1011BA60C()
{
  v0 = sub_1000BC4D4(&qword_10169DE00, &unk_10139D160);
  sub_100044B3C(v0, qword_10177CB30);
  sub_1000076D4(v0, qword_10177CB30);
  sub_1000041A4(&qword_10169DE08, &qword_10169DE00, &unk_10139D160, &protocol conformance descriptor for Expression<A>);
  return ExpressionType.init(_:)();
}

uint64_t sub_1011BA6CC()
{
  v0 = sub_1000BC4D4(&qword_10169DE00, &unk_10139D160);
  sub_100044B3C(v0, qword_10177CB48);
  sub_1000076D4(v0, qword_10177CB48);
  sub_1000041A4(&qword_10169DE08, &qword_10169DE00, &unk_10139D160, &protocol conformance descriptor for Expression<A>);
  return ExpressionType.init(_:)();
}

uint64_t sub_1011BA78C()
{
  v0 = sub_1000BC4D4(&qword_1016A7BF8, &qword_1013B6DD8);
  sub_100044B3C(v0, qword_10177CB60);
  sub_1000076D4(v0, qword_10177CB60);
  sub_1000041A4(&qword_1016CAA20, &qword_1016A7BF8, &qword_1013B6DD8, &protocol conformance descriptor for Expression<A>);
  return ExpressionType.init(_:)();
}

uint64_t sub_1011BA848()
{
  v0 = sub_1000BC4D4(&qword_10169DDE0, &unk_1013B6420);
  sub_100044B3C(v0, qword_10177CB78);
  sub_1000076D4(v0, qword_10177CB78);
  sub_1000041A4(&qword_10169DDE8, &qword_10169DDE0, &unk_1013B6420, &protocol conformance descriptor for Expression<A>);
  return ExpressionType.init(_:)();
}

uint64_t sub_1011BA908()
{
  v0 = sub_1000BC4D4(&qword_101699D08, &unk_1013D7C10);
  sub_100044B3C(v0, qword_10177CB90);
  sub_1000076D4(v0, qword_10177CB90);
  sub_1000041A4(&qword_101699D20, &qword_101699D08, &unk_1013D7C10, &protocol conformance descriptor for Expression<A>);
  return ExpressionType.init(_:)();
}

uint64_t sub_1011BA9C4()
{
  v0 = sub_1000BC4D4(&qword_101699D08, &unk_1013D7C10);
  sub_100044B3C(v0, qword_10177CBA8);
  sub_1000076D4(v0, qword_10177CBA8);
  sub_1000041A4(&qword_101699D20, &qword_101699D08, &unk_1013D7C10, &protocol conformance descriptor for Expression<A>);
  return ExpressionType.init(_:)();
}

uint64_t sub_1011BAA84()
{
  v0 = sub_1000BC4D4(&qword_101699D08, &unk_1013D7C10);
  sub_100044B3C(v0, qword_10177CBC0);
  sub_1000076D4(v0, qword_10177CBC0);
  sub_1000041A4(&qword_101699D20, &qword_101699D08, &unk_1013D7C10, &protocol conformance descriptor for Expression<A>);
  return ExpressionType.init(_:)();
}

uint64_t sub_1011BAB3C()
{
  v0 = sub_1000BC4D4(&qword_10169DE00, &unk_10139D160);
  sub_100044B3C(v0, qword_10177CBD8);
  sub_1000076D4(v0, qword_10177CBD8);
  sub_1000041A4(&qword_10169DE08, &qword_10169DE00, &unk_10139D160, &protocol conformance descriptor for Expression<A>);
  return ExpressionType.init(_:)();
}

uint64_t sub_1011BABF8()
{
  v0 = sub_1000BC4D4(&qword_101699D08, &unk_1013D7C10);
  sub_100044B3C(v0, qword_10177CBF0);
  sub_1000076D4(v0, qword_10177CBF0);
  sub_1000041A4(&qword_101699D20, &qword_101699D08, &unk_1013D7C10, &protocol conformance descriptor for Expression<A>);
  return ExpressionType.init(_:)();
}

uint64_t sub_1011BACA8()
{
  v0 = sub_1000BC4D4(&qword_101699D60, &qword_1013B6DE0);
  sub_100044B3C(v0, qword_10177CC08);
  sub_1000076D4(v0, qword_10177CC08);
  sub_1000041A4(&qword_10169DDC8, &qword_101699D60, &qword_1013B6DE0, &protocol conformance descriptor for Expression<A>);
  return ExpressionType.init(_:)();
}

uint64_t sub_1011BAD68()
{
  v0 = sub_1000BC4D4(&qword_101699D60, &qword_1013B6DE0);
  sub_100044B3C(v0, qword_10177CC20);
  sub_1000076D4(v0, qword_10177CC20);
  sub_1000041A4(&qword_10169DDC8, &qword_101699D60, &qword_1013B6DE0, &protocol conformance descriptor for Expression<A>);
  return ExpressionType.init(_:)();
}

uint64_t sub_1011BAE28()
{
  v0 = sub_1000BC4D4(&qword_101699D60, &qword_1013B6DE0);
  sub_100044B3C(v0, qword_10177CC38);
  sub_1000076D4(v0, qword_10177CC38);
  sub_1000041A4(&qword_10169DDC8, &qword_101699D60, &qword_1013B6DE0, &protocol conformance descriptor for Expression<A>);
  return ExpressionType.init(_:)();
}

uint64_t sub_1011BAEE8()
{
  v0 = sub_1000BC4D4(&qword_101699D08, &unk_1013D7C10);
  sub_100044B3C(v0, qword_10177CC50);
  sub_1000076D4(v0, qword_10177CC50);
  sub_1000041A4(&qword_101699D20, &qword_101699D08, &unk_1013D7C10, &protocol conformance descriptor for Expression<A>);
  return ExpressionType.init(_:)();
}

uint64_t sub_1011BAFA8()
{
  v0 = sub_1000BC4D4(&qword_10169DE00, &unk_10139D160);
  sub_100044B3C(v0, qword_10177CC68);
  sub_1000076D4(v0, qword_10177CC68);
  sub_1000041A4(&qword_10169DE08, &qword_10169DE00, &unk_10139D160, &protocol conformance descriptor for Expression<A>);
  return ExpressionType.init(_:)();
}

uint64_t sub_1011BB058()
{
  v0 = sub_1000BC4D4(&qword_101699D08, &unk_1013D7C10);
  sub_100044B3C(v0, qword_10177CC80);
  sub_1000076D4(v0, qword_10177CC80);
  sub_1000041A4(&qword_101699D20, &qword_101699D08, &unk_1013D7C10, &protocol conformance descriptor for Expression<A>);
  return ExpressionType.init(_:)();
}

uint64_t sub_1011BB118()
{
  v0 = sub_1000BC4D4(&qword_101699D08, &unk_1013D7C10);
  sub_100044B3C(v0, qword_10177CC98);
  sub_1000076D4(v0, qword_10177CC98);
  sub_1000041A4(&qword_101699D20, &qword_101699D08, &unk_1013D7C10, &protocol conformance descriptor for Expression<A>);
  return ExpressionType.init(_:)();
}

uint64_t sub_1011BB1D8()
{
  v0 = sub_1000BC4D4(&qword_101699D08, &unk_1013D7C10);
  sub_100044B3C(v0, qword_10177CCB0);
  sub_1000076D4(v0, qword_10177CCB0);
  sub_1000041A4(&qword_101699D20, &qword_101699D08, &unk_1013D7C10, &protocol conformance descriptor for Expression<A>);
  return ExpressionType.init(_:)();
}

uint64_t sub_1011BB298()
{
  v0 = sub_1000BC4D4(&qword_10169DDE0, &unk_1013B6420);
  sub_100044B3C(v0, qword_10177CCC8);
  sub_1000076D4(v0, qword_10177CCC8);
  sub_1000041A4(&qword_10169DDE8, &qword_10169DDE0, &unk_1013B6420, &protocol conformance descriptor for Expression<A>);
  return ExpressionType.init(_:)();
}

uint64_t sub_1011BB354(int a1)
{
  v15 = a1;
  v2 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v2);
  v3 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v3 - 8);
  v4 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14[1] = sub_1000BC488();
  (*(v5 + 104))(v7, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v4);
  static DispatchQoS.unspecified.getter();
  v16 = _swiftEmptyArrayStorage;
  sub_1011D1A0C(&qword_10169BB60, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_1000BC4D4(&unk_101695580, &qword_101385D90);
  sub_1000041A4(&qword_10169BB70, &unk_101695580, &qword_101385D90, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  *(v1 + 16) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  sub_1000BC4D4(&qword_10169DDF0, &qword_1013BF4F0);
  v8 = swift_allocObject();
  *(v8 + 20) = 0;
  *(v8 + 16) = 0;
  *(v1 + 24) = v8;
  sub_1000BC4D4(&qword_10169DDF8, &unk_10139D150);
  swift_allocObject();
  *(v1 + 32) = AsyncStreamProvider.init()();
  *(v1 + 40) = 20;
  sub_1000BC4D4(&qword_1016A6010, &qword_101391C30);
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  *(v1 + 48) = v9;
  *(v1 + 64) = 0;
  Table.init(_:database:)();
  Table.init(_:database:)();
  Table.init(_:database:)();
  Table.init(_:database:)();
  Table.init(_:database:)();
  Table.init(_:database:)();
  Table.init(_:database:)();
  Table.init(_:database:)();
  Table.init(_:database:)();
  Table.init(_:database:)();
  Table.init(_:database:)();
  v10 = v15;
  *(v1 + 56) = v15;
  if (v10)
  {
    *(v1 + 57) = 0;
    if (qword_101695290 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    v12 = sub_1000076D4(v11, qword_1016CA850);
    sub_100C630FC(v12);
  }

  else
  {
    *(v1 + 57) = 1;
  }

  return v1;
}

uint64_t sub_1011BB8C4(uint64_t a1)
{
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = &v48 - v9;
  v11 = __chkstk_darwin(v8);
  v13 = &v48 - v12;
  __chkstk_darwin(v11);
  v15 = &v48 - v14;
  result = *(a1 + 64);
  if (result)
  {
    *(a1 + 64) = 0;

    if ((*(a1 + 56) & 1) == 0)
    {
      v52 = v10;
      v53 = v1;
      v51 = v13;
      sub_1011BBDC8();
      v50 = [objc_opt_self() defaultManager];
      if (qword_101695290 != -1)
      {
        swift_once();
      }

      v17 = type metadata accessor for Logger();
      sub_1000076D4(v17, qword_1016CA850);
      (*(v4 + 16))(v7, v15, v3);
      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v48 = swift_slowAlloc();
        v54 = v48;
        *v20 = 136446210;
        sub_1011D1A0C(&qword_1016B14E0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
        v21 = dispatch thunk of CustomStringConvertible.description.getter();
        v22 = v4;
        v24 = v23;
        v49 = *(v22 + 8);
        v49(v7, v3);
        v25 = sub_1000136BC(v21, v24, &v54);

        *(v20 + 4) = v25;
        _os_log_impl(&_mh_execute_header, v18, v19, "Purging database: %{public}s", v20, 0xCu);
        sub_100007BAC(v48);
      }

      else
      {

        v49 = *(v4 + 8);
        v49(v7, v3);
      }

      URL._bridgeToObjectiveC()(v26);
      v28 = v27;
      v54 = 0;
      v29 = v50;
      v30 = [v50 removeItemAtURL:v27 error:&v54];

      v32 = v51;
      v31 = v52;
      if (v30)
      {
        v33 = v54;
      }

      else
      {
        v35 = v54;
        _convertNSErrorToError(_:)();

        swift_willThrow();

        v53 = 0;
      }

      URL._bridgeToObjectiveC()(v34);
      v37 = v36;
      v54 = 0;
      v38 = [v29 removeItemAtURL:v36 error:&v54];

      if (v38)
      {
        v39 = v54;
      }

      else
      {
        v41 = v54;
        _convertNSErrorToError(_:)();

        swift_willThrow();

        v53 = 0;
      }

      URL._bridgeToObjectiveC()(v40);
      v43 = v42;
      v54 = 0;
      v44 = [v29 removeItemAtURL:v42 error:&v54];

      if (v44)
      {
        v45 = v54;
      }

      else
      {
        v46 = v54;
        _convertNSErrorToError(_:)();

        swift_willThrow();

        v53 = 0;
      }

      v47 = v49;
      v49(v31, v3);
      v47(v32, v3);
      return (v47)(v15, v3);
    }
  }

  return result;
}

uint64_t sub_1011BBDC8()
{
  v0 = type metadata accessor for URL();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_101694C10 != -1)
  {
    swift_once();
  }

  v4 = sub_1000076D4(v0, qword_10177BA58);
  v5 = *(v1 + 16);
  v5(v3, v4, v0);
  URL.appendingPathComponent(_:isDirectory:)();
  v6 = *(v1 + 8);
  v6(v3, v0);
  v5(v3, v4, v0);
  URL.appendingPathComponent(_:isDirectory:)();
  v6(v3, v0);
  v5(v3, v4, v0);
  URL.appendingPathComponent(_:isDirectory:)();
  return (v6)(v3, v0);
}

void sub_1011BBFD4(int a1, int a2, uint64_t a3)
{
  v91 = a1;
  v92 = a2;
  v5 = type metadata accessor for Connection.TransactionMode();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v87 = &v75 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v86 = &v75 - v10;
  v11 = __chkstk_darwin(v9);
  v88 = &v75 - v12;
  v13 = __chkstk_darwin(v11);
  v85 = &v75 - v14;
  v15 = __chkstk_darwin(v13);
  v84 = &v75 - v16;
  v17 = __chkstk_darwin(v15);
  v83 = &v75 - v18;
  v19 = __chkstk_darwin(v17);
  v82 = &v75 - v20;
  v21 = __chkstk_darwin(v19);
  v81 = &v75 - v22;
  v23 = __chkstk_darwin(v21);
  v80 = &v75 - v24;
  v25 = __chkstk_darwin(v23);
  v79 = &v75 - v26;
  v27 = __chkstk_darwin(v25);
  v29 = &v75 - v28;
  v30 = __chkstk_darwin(v27);
  v32 = &v75 - v31;
  v33 = __chkstk_darwin(v30);
  v35 = &v75 - v34;
  v36 = __chkstk_darwin(v33);
  v38 = &v75 - v37;
  v39 = __chkstk_darwin(v36);
  v41 = &v75 - v40;
  v42 = __chkstk_darwin(v39);
  v78 = &v75 - v43;
  v89 = v3;
  if ((*(v3 + 56) & 1) == 0)
  {
    v77 = a3;
    if (qword_101695290 != -1)
    {
      swift_once();
    }

    v44 = type metadata accessor for Logger();
    sub_1000076D4(v44, qword_1016CA850);
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v76 = v5;
      *v47 = 67109376;
      *(v47 + 4) = v91;
      *(v47 + 8) = 1024;
      *(v47 + 10) = v92;
      _os_log_impl(&_mh_execute_header, v45, v46, "Migrate schema %d -> %d", v47, 0xEu);
      v5 = v76;
    }

    a3 = v77;
  }

  v48 = v92;
  switch(v92)
  {
    case 1:
      v59._countAndFlagsBits = 0xD00000000000001FLL;
      v59._object = 0x80000001013513F0;
      Connection.execute(_:)(v59);
      if (!v60)
      {
        v61._object = 0x8000000101351410;
        v61._countAndFlagsBits = 0xD000000000000018;
        Connection.execute(_:)(v61);
        if (!v63)
        {
          __chkstk_darwin(v62);
          v64 = v89;
          *(&v75 - 2) = a3;
          *(&v75 - 1) = v64;
          v29 = v78;
          (*(v6 + 104))(v78, enum case for Connection.TransactionMode.deferred(_:), v5);
          goto LABEL_32;
        }
      }

      return;
    case 2:
      __chkstk_darwin(v42);
      v65 = v89;
      *(&v75 - 2) = a3;
      *(&v75 - 1) = v65;
      (*(v6 + 104))(v41, enum case for Connection.TransactionMode.deferred(_:), v5);
      v66 = v90;
      Connection.transaction(_:block:)();
      if (!v66)
      {
        v29 = v41;
        goto LABEL_33;
      }

      (*(v6 + 8))(v41, v5);
      return;
    case 3:
    case 4:
    case 5:
    case 6:
      __chkstk_darwin(v42);
      v49 = v89;
      *(&v75 - 2) = a3;
      *(&v75 - 1) = v49;
      (*(v6 + 104))(v38, enum case for Connection.TransactionMode.deferred(_:), v5);
      v50 = v90;
      Connection.transaction(_:block:)();
      if (!v50)
      {
        v29 = v38;
        goto LABEL_33;
      }

      (*(v6 + 8))(v38, v5);
      return;
    case 7:
      __chkstk_darwin(v42);
      v67 = v89;
      *(&v75 - 2) = a3;
      *(&v75 - 1) = v67;
      (*(v6 + 104))(v35, enum case for Connection.TransactionMode.deferred(_:), v5);
      v68 = v90;
      Connection.transaction(_:block:)();
      if (!v68)
      {
        v29 = v35;
        goto LABEL_33;
      }

      (*(v6 + 8))(v35, v5);
      return;
    case 8:
      __chkstk_darwin(v42);
      v69 = v89;
      *(&v75 - 2) = a3;
      *(&v75 - 1) = v69;
      (*(v6 + 104))(v32, enum case for Connection.TransactionMode.deferred(_:), v5);
      v70 = v90;
      Connection.transaction(_:block:)();
      if (!v70)
      {
        v29 = v32;
        goto LABEL_33;
      }

      (*(v6 + 8))(v32, v5);
      return;
    case 9:
      __chkstk_darwin(v42);
      v53 = v89;
      *(&v75 - 2) = a3;
      *(&v75 - 1) = v53;
      (*(v6 + 104))(v29, enum case for Connection.TransactionMode.deferred(_:), v5);
      goto LABEL_32;
    case 10:
      __chkstk_darwin(v42);
      v71 = v89;
      *(&v75 - 2) = a3;
      *(&v75 - 1) = v71;
      v29 = v79;
      (*(v6 + 104))(v79, enum case for Connection.TransactionMode.deferred(_:), v5);
      goto LABEL_32;
    case 11:
      __chkstk_darwin(v42);
      v55 = v89;
      *(&v75 - 2) = a3;
      *(&v75 - 1) = v55;
      v29 = v80;
      (*(v6 + 104))(v80, enum case for Connection.TransactionMode.deferred(_:), v5);
      goto LABEL_32;
    case 12:
      __chkstk_darwin(v42);
      v72 = v89;
      *(&v75 - 2) = a3;
      *(&v75 - 1) = v72;
      v29 = v81;
      (*(v6 + 104))(v81, enum case for Connection.TransactionMode.deferred(_:), v5);
      goto LABEL_32;
    case 13:
      __chkstk_darwin(v42);
      v52 = v89;
      *(&v75 - 2) = a3;
      *(&v75 - 1) = v52;
      v29 = v82;
      (*(v6 + 104))(v82, enum case for Connection.TransactionMode.deferred(_:), v5);
      goto LABEL_32;
    case 14:
      __chkstk_darwin(v42);
      v56 = v89;
      *(&v75 - 2) = a3;
      *(&v75 - 1) = v56;
      v29 = v83;
      (*(v6 + 104))(v83, enum case for Connection.TransactionMode.deferred(_:), v5);
      goto LABEL_32;
    case 15:
      __chkstk_darwin(v42);
      v74 = v89;
      *(&v75 - 2) = a3;
      *(&v75 - 1) = v74;
      v29 = v84;
      (*(v6 + 104))(v84, enum case for Connection.TransactionMode.deferred(_:), v5);
      goto LABEL_32;
    case 16:
      __chkstk_darwin(v42);
      v54 = v89;
      *(&v75 - 2) = a3;
      *(&v75 - 1) = v54;
      v29 = v85;
      (*(v6 + 104))(v85, enum case for Connection.TransactionMode.deferred(_:), v5);
      goto LABEL_32;
    case 17:
    case 18:
      __chkstk_darwin(v42);
      v29 = v88;
      v51 = v89;
      *(&v75 - 2) = a3;
      *(&v75 - 1) = v51;
      (*(v6 + 104))(v29, enum case for Connection.TransactionMode.deferred(_:), v5);
      goto LABEL_32;
    case 19:
      __chkstk_darwin(v42);
      v58 = v89;
      *(&v75 - 2) = a3;
      *(&v75 - 1) = v58;
      v29 = v86;
      (*(v6 + 104))(v86, enum case for Connection.TransactionMode.deferred(_:), v5);
      goto LABEL_32;
    case 20:
      __chkstk_darwin(v42);
      v73 = v89;
      *(&v75 - 2) = a3;
      *(&v75 - 1) = v73;
      v29 = v87;
      (*(v6 + 104))(v87, enum case for Connection.TransactionMode.deferred(_:), v5);
LABEL_32:
      Connection.transaction(_:block:)();
LABEL_33:
      (*(v6 + 8))(v29, v5);
      break;
    default:
      sub_10020223C();
      swift_allocError();
      *v57 = v48;
      *(v57 + 4) = 0;
      swift_willThrow();
      break;
  }
}

uint64_t sub_1011BCC24(uint64_t a1, uint64_t a2)
{
  Table.create(temporary:ifNotExists:withoutRowid:block:)();
  Connection.run(_:_:)();
  if (v2)
  {
  }

  Table.create(temporary:ifNotExists:withoutRowid:block:)();
  Connection.run(_:_:)();

  Table.create(temporary:ifNotExists:withoutRowid:block:)();
  Connection.run(_:_:)();

  sub_1000BC4D4(&qword_101699D90, &unk_1013930F0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_101385D80;
  if (qword_1016952D0 != -1)
  {
    swift_once();
  }

  v5 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
  v6 = sub_1000076D4(v5, qword_10177C818);
  *(v4 + 56) = v5;
  v43 = sub_1000041A4(&qword_101699D18, &qword_101699D10, &unk_1013930B0, &protocol conformance descriptor for Expression<A>);
  *(v4 + 64) = v43;
  v7 = sub_1000280DC((v4 + 32));
  v8 = *(*(v5 - 8) + 16);
  v8(v7, v6, v5);
  Table.createIndex(_:unique:ifNotExists:)();

  Connection.run(_:_:)();
  v41 = v5;
  v42 = v8;

  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_101385D80;
  if (qword_1016952A0 != -1)
  {
    swift_once();
  }

  v10 = sub_1000076D4(v5, qword_10177C788);
  *(v9 + 56) = v5;
  *(v9 + 64) = v43;
  v11 = sub_1000280DC((v9 + 32));
  v42(v11, v10, v5);
  Table.createIndex(_:unique:ifNotExists:)();

  Connection.run(_:_:)();

  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_101385D80;
  if (qword_1016952A8 != -1)
  {
    swift_once();
  }

  v13 = sub_1000BC4D4(&qword_101699DE8, &qword_101393120);
  v14 = sub_1000076D4(v13, qword_10177C7A0);
  *(v12 + 56) = v13;
  *(v12 + 64) = sub_1000041A4(&qword_10169DE38, &qword_101699DE8, &qword_101393120, &protocol conformance descriptor for Expression<A>);
  v15 = sub_1000280DC((v12 + 32));
  (*(*(v13 - 8) + 16))(v15, v14, v13);
  Table.createIndex(_:unique:ifNotExists:)();

  Connection.run(_:_:)();

  sub_1000BC4D4(&qword_101699368, &unk_1013B34B0);
  v16 = swift_allocObject();
  v17 = j__malloc_size(v16);
  *(v16 + 16) = 4;
  *(v16 + 24) = 2 * v17 - 64;
  *(v16 + 32) = 50462976;
  v18 = swift_allocObject();
  v19 = j__malloc_size(v18);
  *(v18 + 16) = 4;
  *(v18 + 24) = 2 * v19 - 64;
  *(v18 + 32) = 185207048;
  v20 = sub_10039B818(v18);
  __chkstk_darwin(v20);
  Table.create(temporary:ifNotExists:withoutRowid:block:)();

  Connection.run(_:_:)();

  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_101385D80;
  if (qword_1016952F8 != -1)
  {
    swift_once();
  }

  v22 = sub_1000BC4D4(&qword_101699DC0, &unk_10139D110);
  v23 = sub_1000076D4(v22, qword_10177C890);
  *(v21 + 56) = v22;
  v38 = sub_1000041A4(&qword_101699E98, &qword_101699DC0, &unk_10139D110, &protocol conformance descriptor for Expression<A>);
  *(v21 + 64) = v38;
  v24 = sub_1000280DC((v21 + 32));
  v25 = (*(v22 - 8) + 16);
  v40 = *v25;
  (*v25)(v24, v23, v22);
  Table.createIndex(_:unique:ifNotExists:)();

  Connection.run(_:_:)();

  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_101385D80;
  if (qword_101695300 != -1)
  {
    swift_once();
  }

  v27 = sub_1000076D4(v22, qword_10177C8A8);
  *(v26 + 56) = v22;
  *(v26 + 64) = v38;
  v28 = sub_1000280DC((v26 + 32));
  v40(v28, v27, v22);
  Table.createIndex(_:unique:ifNotExists:)();

  Connection.run(_:_:)();

  Table.create(temporary:ifNotExists:withoutRowid:block:)();
  Connection.run(_:_:)();

  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_101385D80;
  if (qword_101695298 != -1)
  {
    swift_once();
  }

  v30 = sub_1000BC4D4(&qword_101699D30, &qword_1013BA850);
  v31 = sub_1000076D4(v30, qword_10177C770);
  *(v29 + 56) = v30;
  v39 = sub_1000041A4(&qword_101699D98, &qword_101699D30, &qword_1013BA850, &protocol conformance descriptor for Expression<A>);
  *(v29 + 64) = v39;
  v32 = sub_1000280DC((v29 + 32));
  v37 = *(*(v30 - 8) + 16);
  v37(v32, v31, v30);
  Table.createIndex(_:unique:ifNotExists:)();

  Connection.run(_:_:)();

  Table.create(temporary:ifNotExists:withoutRowid:block:)();
  Connection.run(_:_:)();

  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_101385D80;
  *(v33 + 56) = v30;
  *(v33 + 64) = v39;
  v34 = sub_1000280DC((v33 + 32));
  v37(v34, v31, v30);
  Table.createIndex(_:unique:ifNotExists:)();

  Connection.run(_:_:)();

  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_101385D80;
  *(v35 + 56) = v41;
  *(v35 + 64) = v43;
  v36 = sub_1000280DC((v35 + 32));
  v42(v36, v10, v41);
  Table.createIndex(_:unique:ifNotExists:)();

  Connection.run(_:_:)();
}

uint64_t sub_1011BD854()
{
  v0 = sub_1000BC4D4(&qword_10169DE58, &unk_10139D1B0);
  __chkstk_darwin(v0 - 8);
  v17 = v16 - v1;
  v2 = sub_1000BC4D4(&qword_10169DE28, &unk_1013BF4E0);
  __chkstk_darwin(v2 - 8);
  v4 = v16 - v3;
  v5 = sub_1000BC4D4(&qword_10169DE30, &unk_10139D190);
  __chkstk_darwin(v5 - 8);
  v7 = v16 - v6;
  if (qword_1016952D0 != -1)
  {
    swift_once();
  }

  v8 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
  v9 = sub_1000076D4(v8, qword_10177C818);
  v10 = sub_1000BC4D4(&qword_101699D08, &unk_1013D7C10);
  v11 = *(*(v10 - 8) + 56);
  v18 = v10;
  v11(v7, 1, 1);
  v12 = *(*(v8 - 8) + 56);
  v12(v4, 1, 1, v8);
  type metadata accessor for UUID();
  v16[1] = v9;
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v4, &qword_10169DE28, &unk_1013BF4E0);
  sub_10000B3A8(v7, &qword_10169DE30, &unk_10139D190);
  if (qword_1016952A0 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v8, qword_10177C788);
  (v11)(v7, 1, 1, v18);
  v12(v4, 1, 1, v8);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v4, &qword_10169DE28, &unk_1013BF4E0);
  sub_10000B3A8(v7, &qword_10169DE30, &unk_10139D190);
  if (qword_1016952D8 != -1)
  {
    swift_once();
  }

  v13 = sub_1000BC4D4(&qword_101699D78, &unk_1013BF4B0);
  sub_1000076D4(v13, qword_10177C830);
  (v11)(v7, 1, 1, v18);
  v14 = v17;
  (*(*(v13 - 8) + 56))(v17, 1, 1, v13);
  type metadata accessor for Date();
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v14, &qword_10169DE58, &unk_10139D1B0);
  sub_10000B3A8(v7, &qword_10169DE30, &unk_10139D190);
  return TableBuilder.primaryKey<A, B>(_:_:)();
}

uint64_t sub_1011BDCBC(uint64_t a1, uint64_t a2)
{
  v63 = a2;
  v3 = sub_1000BC4D4(&qword_101699E88, &unk_10139D170);
  v67 = *(v3 - 8);
  v68 = v3;
  __chkstk_darwin(v3);
  v66 = v57 - v4;
  v5 = sub_1000BC4D4(&qword_101699D08, &unk_1013D7C10);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v64 = v57 - v7;
  v8 = sub_1000BC4D4(&qword_1016CAA08, &qword_10140B848);
  v9 = __chkstk_darwin(v8 - 8);
  v62 = v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v61 = v57 - v11;
  v12 = sub_1000BC4D4(&qword_10169DE40, &unk_1013D7C00);
  __chkstk_darwin(v12 - 8);
  v14 = v57 - v13;
  v15 = sub_1000BC4D4(&qword_10169DE28, &unk_1013BF4E0);
  __chkstk_darwin(v15 - 8);
  v17 = v57 - v16;
  v18 = sub_1000BC4D4(&qword_10169DE30, &unk_10139D190);
  __chkstk_darwin(v18 - 8);
  v20 = v57 - v19;
  if (qword_1016952D0 != -1)
  {
    swift_once();
  }

  v21 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
  v22 = sub_1000076D4(v21, qword_10177C818);
  v65 = v6;
  v71 = *(v6 + 56);
  v71(v20, 1, 1, v5);
  v23 = *(v21 - 8);
  v70 = v5;
  v58 = v23;
  v24 = *(v23 + 56);
  v24(v17, 1, 1, v21);
  v25 = type metadata accessor for UUID();
  v69 = v22;
  v26 = a1;
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v17, &qword_10169DE28, &unk_1013BF4E0);
  sub_10000B3A8(v20, &qword_10169DE30, &unk_10139D190);
  if (qword_1016952A0 != -1)
  {
    swift_once();
  }

  v27 = sub_1000076D4(v21, qword_10177C788);
  v71(v20, 1, 1, v70);
  v24(v17, 1, 1, v21);
  v59 = v27;
  v60 = v25;
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v17, &qword_10169DE28, &unk_1013BF4E0);
  sub_10000B3A8(v20, &qword_10169DE30, &unk_10139D190);
  if (qword_1016952E0 != -1)
  {
    swift_once();
  }

  v28 = sub_1000BC4D4(&qword_101699DC0, &unk_10139D110);
  v29 = sub_1000076D4(v28, qword_10177C848);
  v30 = v70;
  v71(v20, 1, 1, v70);
  v31 = *(*(v28 - 8) + 56);
  v31(v14, 1, 1, v28);
  v57[3] = v29;
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v14, &qword_10169DE40, &unk_1013D7C00);
  sub_10000B3A8(v20, &qword_10169DE30, &unk_10139D190);
  v32 = v30;
  if (qword_1016952C0 != -1)
  {
    swift_once();
  }

  v33 = sub_1000076D4(v28, qword_10177C7E8);
  v71(v20, 1, 1, v32);
  v31(v14, 1, 1, v28);
  v57[2] = v33;
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v14, &qword_10169DE40, &unk_1013D7C00);
  sub_10000B3A8(v20, &qword_10169DE30, &unk_10139D190);
  if (qword_1016952E8 != -1)
  {
    swift_once();
  }

  v34 = sub_1000BC4D4(&qword_10169DDD0, &unk_10139D140);
  sub_1000076D4(v34, qword_10177C860);
  v71(v20, 1, 1, v32);
  v31(v14, 1, 1, v28);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v14, &qword_10169DE40, &unk_1013D7C00);
  sub_10000B3A8(v20, &qword_10169DE30, &unk_10139D190);
  sub_1000BC4D4(&qword_101699D90, &unk_1013930F0);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_10138BBE0;
  *(v35 + 56) = v21;
  v36 = sub_1000041A4(&qword_101699D18, &qword_101699D10, &unk_1013930B0, &protocol conformance descriptor for Expression<A>);
  *(v35 + 64) = v36;
  v37 = sub_1000280DC((v35 + 32));
  v38 = *(v58 + 16);
  v38(v37, v69, v21);
  *(v35 + 96) = v21;
  *(v35 + 104) = v36;
  v39 = sub_1000280DC((v35 + 72));
  v38(v39, v59, v21);
  TableBuilder.unique(_:)(v35);

  v40 = OBJC_IVAR____TtC12searchpartyd19ObservationDatabase_keyGenerationBeaconInfo;
  v41 = type metadata accessor for Table();
  v72[3] = v41;
  v72[4] = &protocol witness table for Table;
  v42 = sub_1000280DC(v72);
  (*(*(v41 - 8) + 16))(v42, v63 + v40, v41);
  v43 = enum case for TableBuilder.Dependency.cascade(_:);
  v44 = type metadata accessor for TableBuilder.Dependency();
  v45 = *(v44 - 8);
  v46 = *(v45 + 104);
  v71 = v28;
  v47 = v61;
  v46(v61, v43, v44);
  v48 = *(v45 + 56);
  v48(v47, 0, 1, v44);
  v49 = v62;
  v46(v62, v43, v44);
  v48(v49, 0, 1, v44);
  v57[1] = v26;
  TableBuilder.foreignKey<A, B>(_:references:_:update:delete:)();
  sub_10000B3A8(v49, &qword_1016CAA08, &qword_10140B848);
  sub_10000B3A8(v47, &qword_1016CAA08, &qword_10140B848);
  sub_100007BAC(v72);
  v69 = sub_1000041A4(&qword_101699E90, &qword_101699DC0, &unk_10139D110, &protocol conformance descriptor for Expression<A>);
  v50 = v66;
  ExpressionType<>.length.getter();
  v72[0] = 85;
  v51 = v64;
  == infix<A>(_:_:)();
  v52 = v68;
  v53 = *(v67 + 8);
  v53(v50, v68);
  TableBuilder.check(_:)();
  v54 = *(v65 + 8);
  v55 = v70;
  v54(v51, v70);
  ExpressionType<>.length.getter();
  v72[0] = 32;
  == infix<A>(_:_:)();
  v53(v50, v52);
  TableBuilder.check(_:)();
  return (v54)(v51, v55);
}

uint64_t sub_1011BE7DC(uint64_t a1, uint64_t a2)
{
  v86 = a2;
  v3 = sub_1000BC4D4(&qword_101699E88, &unk_10139D170);
  v90 = *(v3 - 8);
  v91 = v3;
  __chkstk_darwin(v3);
  v89 = v70 - v4;
  v5 = sub_1000BC4D4(&qword_101699D08, &unk_1013D7C10);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v87 = v70 - v7;
  v8 = sub_1000BC4D4(&qword_1016CAA08, &qword_10140B848);
  v9 = __chkstk_darwin(v8 - 8);
  v85 = v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v84 = v70 - v11;
  v12 = sub_1000BC4D4(&qword_10169DE40, &unk_1013D7C00);
  __chkstk_darwin(v12 - 8);
  v80 = v70 - v13;
  v14 = sub_1000BC4D4(&qword_10169DE48, &qword_10139D1A0);
  __chkstk_darwin(v14 - 8);
  v77 = v70 - v15;
  v16 = sub_1000BC4D4(&qword_10169DE50, &qword_10139D1A8);
  __chkstk_darwin(v16 - 8);
  v93 = v70 - v17;
  v18 = sub_1000BC4D4(&qword_10169DE28, &unk_1013BF4E0);
  __chkstk_darwin(v18 - 8);
  v20 = v70 - v19;
  v21 = sub_1000BC4D4(&qword_10169DE30, &unk_10139D190);
  __chkstk_darwin(v21 - 8);
  v23 = v70 - v22;
  if (qword_1016952D0 != -1)
  {
    swift_once();
  }

  v24 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
  v25 = sub_1000076D4(v24, qword_10177C818);
  v88 = v6;
  v92 = *(v6 + 56);
  v92(v23, 1, 1, v5);
  v78 = *(v24 - 8);
  v26 = *(v78 + 56);
  v26(v20, 1, 1, v24);
  v27 = type metadata accessor for UUID();
  v83 = v25;
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v20, &qword_10169DE28, &unk_1013BF4E0);
  sub_10000B3A8(v23, &qword_10169DE30, &unk_10139D190);
  v28 = v5;
  if (qword_1016952A0 != -1)
  {
    swift_once();
  }

  v29 = sub_1000076D4(v24, qword_10177C788);
  v92(v23, 1, 1, v28);
  v75 = v24;
  v26(v20, 1, 1, v24);
  v81 = v29;
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v20, &qword_10169DE28, &unk_1013BF4E0);
  sub_10000B3A8(v23, &qword_10169DE30, &unk_10139D190);
  if (qword_1016952B0 != -1)
  {
    swift_once();
  }

  v30 = sub_1000BC4D4(&qword_101699DA0, &unk_10139D120);
  v31 = sub_1000076D4(v30, qword_10177C7B8);
  v32 = v92;
  v92(v23, 1, 1, v28);
  v72 = *(v30 - 8);
  v33 = *(v72 + 56);
  v34 = v93;
  v74 = v30;
  v33(v93, 1, 1, v30);
  v35 = sub_100028088();
  v94 = v31;
  v79 = v35;
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v34, &qword_10169DE50, &qword_10139D1A8);
  sub_10000B3A8(v23, &qword_10169DE30, &unk_10139D190);
  v36 = v28;
  if (qword_1016952A8 != -1)
  {
    swift_once();
  }

  v82 = v27;
  v37 = sub_1000BC4D4(&qword_101699DE8, &qword_101393120);
  v38 = sub_1000076D4(v37, qword_10177C7A0);
  v32(v23, 1, 1, v28);
  v71 = *(v37 - 8);
  v39 = v32;
  v40 = v77;
  (*(v71 + 56))(v77, 1, 1, v37);
  v41 = sub_100029580();
  v93 = v38;
  v76 = v41;
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v40, &qword_10169DE48, &qword_10139D1A0);
  sub_10000B3A8(v23, &qword_10169DE30, &unk_10139D190);
  v42 = v75;
  if (qword_1016952C0 != -1)
  {
    swift_once();
  }

  v43 = sub_1000BC4D4(&qword_101699DC0, &unk_10139D110);
  v73 = sub_1000076D4(v43, qword_10177C7E8);
  v39(v23, 1, 1, v36);
  v44 = v43;
  v77 = v43;
  v45 = *(*(v43 - 8) + 56);
  v46 = v80;
  v45(v80, 1, 1, v44);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v46, &qword_10169DE40, &unk_1013D7C00);
  sub_10000B3A8(v23, &qword_10169DE30, &unk_10139D190);
  sub_1000BC4D4(&qword_101699D90, &unk_1013930F0);
  v47 = swift_allocObject();
  *(v47 + 16) = xmmword_101391790;
  *(v47 + 56) = v42;
  v48 = sub_1000041A4(&qword_101699D18, &qword_101699D10, &unk_1013930B0, &protocol conformance descriptor for Expression<A>);
  *(v47 + 64) = v48;
  v49 = sub_1000280DC((v47 + 32));
  v92 = v36;
  v50 = *(v78 + 16);
  v50(v49, v83, v42);
  *(v47 + 96) = v42;
  *(v47 + 104) = v48;
  v51 = sub_1000280DC((v47 + 72));
  v70[1] = a1;
  v50(v51, v81, v42);
  v52 = v74;
  *(v47 + 136) = v74;
  *(v47 + 144) = sub_1000041A4(&qword_101699DA8, &qword_101699DA0, &unk_10139D120, &protocol conformance descriptor for Expression<A>);
  v53 = sub_1000280DC((v47 + 112));
  (*(v72 + 16))(v53, v94, v52);
  *(v47 + 176) = v37;
  *(v47 + 184) = sub_1000041A4(&qword_10169DE38, &qword_101699DE8, &qword_101393120, &protocol conformance descriptor for Expression<A>);
  v54 = sub_1000280DC((v47 + 152));
  (*(v71 + 16))(v54, v93, v37);
  TableBuilder.unique(_:)(v47);

  v55 = OBJC_IVAR____TtC12searchpartyd19ObservationDatabase_keyGenerationBeaconInfo;
  v56 = type metadata accessor for Table();
  v95[3] = v56;
  v95[4] = &protocol witness table for Table;
  v57 = sub_1000280DC(v95);
  (*(*(v56 - 8) + 16))(v57, v86 + v55, v56);
  v58 = enum case for TableBuilder.Dependency.cascade(_:);
  v59 = type metadata accessor for TableBuilder.Dependency();
  v60 = *(v59 - 8);
  v61 = *(v60 + 104);
  v62 = v84;
  v61(v84, v58, v59);
  v63 = *(v60 + 56);
  v63(v62, 0, 1, v59);
  v64 = v85;
  v61(v85, v58, v59);
  v63(v64, 0, 1, v59);
  TableBuilder.foreignKey<A, B>(_:references:_:update:delete:)();
  sub_10000B3A8(v64, &qword_1016CAA08, &qword_10140B848);
  sub_10000B3A8(v62, &qword_1016CAA08, &qword_10140B848);
  sub_100007BAC(v95);
  LOWORD(v95[0]) = 256;
  v65 = v87;
  ~= infix<A>(_:_:)();
  TableBuilder.check(_:)();
  v66 = *(v88 + 8);
  v67 = v92;
  v66(v65, v92);
  v95[0] = 0;
  > infix<A>(_:_:)();
  TableBuilder.check(_:)();
  v66(v65, v67);
  sub_1000041A4(&qword_101699E90, &qword_101699DC0, &unk_10139D110, &protocol conformance descriptor for Expression<A>);
  v68 = v89;
  ExpressionType<>.length.getter();
  v95[0] = 32;
  == infix<A>(_:_:)();
  (*(v90 + 8))(v68, v91);
  TableBuilder.check(_:)();
  return (v66)(v65, v67);
}

uint64_t sub_1011BF54C(uint64_t a1, uint64_t a2)
{
  v47 = a2;
  v2 = sub_1000BC4D4(&qword_101699D08, &unk_1013D7C10);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v50 = v45 - v4;
  v5 = sub_1000BC4D4(&qword_1016CAA08, &qword_10140B848);
  v6 = __chkstk_darwin(v5 - 8);
  v49 = v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v48 = v45 - v8;
  v9 = sub_1000BC4D4(&qword_10169DE48, &qword_10139D1A0);
  __chkstk_darwin(v9 - 8);
  v46 = v45 - v10;
  v11 = sub_1000BC4D4(&qword_10169DE50, &qword_10139D1A8);
  __chkstk_darwin(v11 - 8);
  v13 = v45 - v12;
  v14 = sub_1000BC4D4(&qword_10169DE28, &unk_1013BF4E0);
  __chkstk_darwin(v14 - 8);
  v16 = v45 - v15;
  v17 = sub_1000BC4D4(&qword_1016A8FF0, &unk_1013BA840);
  __chkstk_darwin(v17 - 8);
  v19 = v45 - v18;
  v20 = sub_1000BC4D4(&qword_10169DE30, &unk_10139D190);
  __chkstk_darwin(v20 - 8);
  v22 = v45 - v21;
  if (qword_101695298 != -1)
  {
    swift_once();
  }

  v23 = sub_1000BC4D4(&qword_101699D30, &qword_1013BA850);
  v24 = sub_1000076D4(v23, qword_10177C770);
  v51 = v3;
  v25 = *(v3 + 56);
  v25(v22, 1, 1, v2);
  (*(*(v23 - 8) + 56))(v19, 1, 1, v23);
  v45[4] = v24;
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v19, &qword_1016A8FF0, &unk_1013BA840);
  sub_10000B3A8(v22, &qword_10169DE30, &unk_10139D190);
  if (qword_1016952A0 != -1)
  {
    swift_once();
  }

  v26 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
  sub_1000076D4(v26, qword_10177C788);
  v25(v22, 1, 1, v2);
  (*(*(v26 - 8) + 56))(v16, 1, 1, v26);
  type metadata accessor for UUID();
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v16, &qword_10169DE28, &unk_1013BF4E0);
  sub_10000B3A8(v22, &qword_10169DE30, &unk_10139D190);
  if (qword_1016952B0 != -1)
  {
    swift_once();
  }

  v27 = sub_1000BC4D4(&qword_101699DA0, &unk_10139D120);
  v28 = sub_1000076D4(v27, qword_10177C7B8);
  v25(v22, 1, 1, v2);
  (*(*(v27 - 8) + 56))(v13, 1, 1, v27);
  v45[2] = sub_100028088();
  v45[3] = v28;
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v13, &qword_10169DE50, &qword_10139D1A8);
  sub_10000B3A8(v22, &qword_10169DE30, &unk_10139D190);
  if (qword_1016952A8 != -1)
  {
    swift_once();
  }

  v29 = sub_1000BC4D4(&qword_101699DE8, &qword_101393120);
  v45[1] = sub_1000076D4(v29, qword_10177C7A0);
  v25(v22, 1, 1, v2);
  v30 = v46;
  (*(*(v29 - 8) + 56))(v46, 1, 1, v29);
  v45[0] = sub_100029580();
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v30, &qword_10169DE48, &qword_10139D1A0);
  sub_10000B3A8(v22, &qword_10169DE30, &unk_10139D190);
  TableBuilder.primaryKey<A>(_:)();
  v31 = OBJC_IVAR____TtC12searchpartyd19ObservationDatabase_observedAdvertisement;
  v32 = type metadata accessor for Table();
  v52[3] = v32;
  v52[4] = &protocol witness table for Table;
  v33 = sub_1000280DC(v52);
  (*(*(v32 - 8) + 16))(v33, v47 + v31, v32);
  v34 = enum case for TableBuilder.Dependency.cascade(_:);
  v35 = type metadata accessor for TableBuilder.Dependency();
  v36 = *(v35 - 8);
  v47 = v2;
  v37 = *(v36 + 104);
  v38 = v48;
  v37(v48, v34, v35);
  v39 = *(v36 + 56);
  v39(v38, 0, 1, v35);
  v40 = v49;
  v37(v49, v34, v35);
  v39(v40, 0, 1, v35);
  TableBuilder.foreignKey<A>(_:references:_:update:delete:)();
  sub_10000B3A8(v40, &qword_1016CAA08, &qword_10140B848);
  sub_10000B3A8(v38, &qword_1016CAA08, &qword_10140B848);
  sub_100007BAC(v52);
  LOWORD(v52[0]) = 256;
  v41 = v50;
  ~= infix<A>(_:_:)();
  TableBuilder.check(_:)();
  v42 = *(v51 + 8);
  v43 = v47;
  v42(v41, v47);
  v52[0] = 0;
  > infix<A>(_:_:)();
  TableBuilder.check(_:)();
  return (v42)(v41, v43);
}

uint64_t sub_1011BFE70()
{
  v0 = sub_1000BC4D4(&qword_101699D08, &unk_1013D7C10);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v34 = v30 - v2;
  v3 = sub_1000BC4D4(&qword_10169DE58, &unk_10139D1B0);
  __chkstk_darwin(v3 - 8);
  v33 = v30 - v4;
  v5 = sub_1000BC4D4(&qword_10169DE48, &qword_10139D1A0);
  __chkstk_darwin(v5 - 8);
  v31 = v30 - v6;
  v7 = sub_1000BC4D4(&qword_10169DE50, &qword_10139D1A8);
  __chkstk_darwin(v7 - 8);
  v9 = v30 - v8;
  v10 = sub_1000BC4D4(&qword_10169DE28, &unk_1013BF4E0);
  __chkstk_darwin(v10 - 8);
  v12 = v30 - v11;
  v13 = sub_1000BC4D4(&qword_10169DE30, &unk_10139D190);
  __chkstk_darwin(v13 - 8);
  v15 = v30 - v14;
  if (qword_1016952A0 != -1)
  {
    swift_once();
  }

  v16 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
  v17 = sub_1000076D4(v16, qword_10177C788);
  v35 = v1;
  v18 = *(v1 + 56);
  v18(v15, 1, 1, v0);
  (*(*(v16 - 8) + 56))(v12, 1, 1, v16);
  v19 = type metadata accessor for UUID();
  v32 = v17;
  v30[2] = v19;
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v12, &qword_10169DE28, &unk_1013BF4E0);
  sub_10000B3A8(v15, &qword_10169DE30, &unk_10139D190);
  if (qword_101695368 != -1)
  {
    swift_once();
  }

  v20 = sub_1000BC4D4(&qword_101699DA0, &unk_10139D120);
  v21 = sub_1000076D4(v20, qword_10177C9E0);
  v18(v15, 1, 1, v0);
  v22 = *(*(v20 - 8) + 56);
  v36 = v0;
  v22(v9, 1, 1, v20);
  sub_100028088();
  v30[1] = v21;
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v9, &qword_10169DE50, &qword_10139D1A8);
  sub_10000B3A8(v15, &qword_10169DE30, &unk_10139D190);
  if (qword_1016952B0 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v20, qword_10177C7B8);
  v18(v15, 1, 1, v36);
  v22(v9, 1, 1, v20);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v9, &qword_10169DE50, &qword_10139D1A8);
  sub_10000B3A8(v15, &qword_10169DE30, &unk_10139D190);
  if (qword_1016952A8 != -1)
  {
    swift_once();
  }

  v23 = sub_1000BC4D4(&qword_101699DE8, &qword_101393120);
  sub_1000076D4(v23, qword_10177C7A0);
  v24 = v36;
  v18(v15, 1, 1, v36);
  v25 = v31;
  (*(*(v23 - 8) + 56))(v31, 1, 1, v23);
  sub_100029580();
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v25, &qword_10169DE48, &qword_10139D1A0);
  sub_10000B3A8(v15, &qword_10169DE30, &unk_10139D190);
  if (qword_101695360 != -1)
  {
    swift_once();
  }

  v26 = sub_1000BC4D4(&qword_101699D78, &unk_1013BF4B0);
  sub_1000076D4(v26, qword_10177C9C8);
  v18(v15, 1, 1, v24);
  v27 = v33;
  (*(*(v26 - 8) + 56))(v33, 1, 1, v26);
  type metadata accessor for Date();
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v27, &qword_10169DE58, &unk_10139D1B0);
  sub_10000B3A8(v15, &qword_10169DE30, &unk_10139D190);
  TableBuilder.primaryKey<A, B>(_:_:)();
  v37 = -256;
  v28 = v34;
  ~= infix<A>(_:_:)();
  TableBuilder.check(_:)();
  return (*(v35 + 8))(v28, v24);
}

uint64_t sub_1011C064C(uint64_t a1, uint64_t a2)
{
  Table.create(temporary:ifNotExists:withoutRowid:block:)();
  Connection.run(_:_:)();
  if (v2)
  {
  }

  sub_1000BC4D4(&qword_101699D90, &unk_1013930F0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_101385D80;
  if (qword_1016952D0 != -1)
  {
    swift_once();
  }

  v4 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
  v5 = sub_1000076D4(v4, qword_10177C818);
  *(v3 + 56) = v4;
  v6 = sub_1000041A4(&qword_101699D18, &qword_101699D10, &unk_1013930B0, &protocol conformance descriptor for Expression<A>);
  *(v3 + 64) = v6;
  v7 = sub_1000280DC((v3 + 32));
  v8 = (*(v4 - 8) + 16);
  v9 = v5;
  v10 = *v8;
  (*v8)(v7, v9, v4);
  Table.createIndex(_:unique:ifNotExists:)();

  Connection.run(_:_:)();
  v15 = v10;

  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_101385D80;
  if (qword_1016952A0 != -1)
  {
    swift_once();
  }

  v12 = sub_1000076D4(v4, qword_10177C788);
  *(v11 + 56) = v4;
  *(v11 + 64) = v6;
  v13 = sub_1000280DC((v11 + 32));
  v15(v13, v12, v4);
  Table.createIndex(_:unique:ifNotExists:)();

  Connection.run(_:_:)();

  Table.create(temporary:ifNotExists:withoutRowid:block:)();
  Connection.run(_:_:)();

  Table.create(temporary:ifNotExists:withoutRowid:block:)();
  Connection.run(_:_:)();
}

uint64_t sub_1011C0A40()
{
  v0 = sub_1000BC4D4(&qword_10169DE58, &unk_10139D1B0);
  __chkstk_darwin(v0 - 8);
  v28 = &v26 - v1;
  v2 = sub_1000BC4D4(&unk_1016AB5A0, &unk_1013BF4D0);
  __chkstk_darwin(v2 - 8);
  v27 = &v26 - v3;
  v4 = sub_1000BC4D4(&qword_10169DE28, &unk_1013BF4E0);
  __chkstk_darwin(v4 - 8);
  v6 = &v26 - v5;
  v7 = sub_1000BC4D4(&qword_10169DE30, &unk_10139D190);
  __chkstk_darwin(v7 - 8);
  v9 = &v26 - v8;
  v10 = type metadata accessor for PrimaryKey();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_101695380 != -1)
  {
    swift_once();
  }

  v14 = sub_1000BC4D4(&qword_101699D30, &qword_1013BA850);
  sub_1000076D4(v14, qword_10177CA28);
  (*(v11 + 104))(v13, enum case for PrimaryKey.autoincrement(_:), v10);
  v15 = sub_1000BC4D4(&qword_101699D08, &unk_1013D7C10);
  v16 = *(v15 - 8);
  v17 = *(v16 + 56);
  v18 = v16 + 56;
  v17(v9, 1, 1, v15);
  TableBuilder.column<A>(_:primaryKey:check:)();
  sub_10000B3A8(v9, &qword_10169DE30, &unk_10139D190);
  (*(v11 + 8))(v13, v10);
  if (qword_1016952D0 != -1)
  {
    swift_once();
  }

  v19 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
  sub_1000076D4(v19, qword_10177C818);
  v17(v9, 1, 1, v15);
  v20 = *(*(v19 - 8) + 56);
  v29 = v18;
  v20(v6, 1, 1, v19);
  type metadata accessor for UUID();
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v6, &qword_10169DE28, &unk_1013BF4E0);
  sub_10000B3A8(v9, &qword_10169DE30, &unk_10139D190);
  if (qword_1016952A0 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v19, qword_10177C788);
  v17(v9, 1, 1, v15);
  v20(v6, 1, 1, v19);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v6, &qword_10169DE28, &unk_1013BF4E0);
  sub_10000B3A8(v9, &qword_10169DE30, &unk_10139D190);
  if (qword_101695370 != -1)
  {
    swift_once();
  }

  v21 = sub_1000BC4D4(&qword_101699E60, &unk_1013BF4C0);
  sub_1000076D4(v21, qword_10177C9F8);
  v17(v9, 1, 1, v15);
  v22 = v27;
  (*(*(v21 - 8) + 56))(v27, 1, 1, v21);
  sub_10022A60C();
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v22, &unk_1016AB5A0, &unk_1013BF4D0);
  sub_10000B3A8(v9, &qword_10169DE30, &unk_10139D190);
  if (qword_101695360 != -1)
  {
    swift_once();
  }

  v23 = sub_1000BC4D4(&qword_101699D78, &unk_1013BF4B0);
  sub_1000076D4(v23, qword_10177C9C8);
  v17(v9, 1, 1, v15);
  v24 = v28;
  (*(*(v23 - 8) + 56))(v28, 1, 1, v23);
  type metadata accessor for Date();
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v24, &qword_10169DE58, &unk_10139D1B0);
  return sub_10000B3A8(v9, &qword_10169DE30, &unk_10139D190);
}

uint64_t sub_1011C1144(uint64_t a1, uint64_t a2)
{
  v31 = a2;
  v2 = sub_1000BC4D4(&qword_1016CAA08, &qword_10140B848);
  v3 = __chkstk_darwin(v2 - 8);
  v32 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v6 = &v30 - v5;
  v7 = sub_1000BC4D4(&qword_10169DE28, &unk_1013BF4E0);
  __chkstk_darwin(v7 - 8);
  v9 = &v30 - v8;
  v10 = sub_1000BC4D4(&qword_1016A8FF0, &unk_1013BA840);
  __chkstk_darwin(v10 - 8);
  v12 = &v30 - v11;
  v13 = sub_1000BC4D4(&qword_10169DE30, &unk_10139D190);
  __chkstk_darwin(v13 - 8);
  v15 = &v30 - v14;
  if (qword_101695380 != -1)
  {
    swift_once();
  }

  v16 = sub_1000BC4D4(&qword_101699D30, &qword_1013BA850);
  sub_1000076D4(v16, qword_10177CA28);
  v17 = sub_1000BC4D4(&qword_101699D08, &unk_1013D7C10);
  v18 = *(*(v17 - 8) + 56);
  v18(v15, 1, 1, v17);
  (*(*(v16 - 8) + 56))(v12, 1, 1, v16);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v12, &qword_1016A8FF0, &unk_1013BA840);
  sub_10000B3A8(v15, &qword_10169DE30, &unk_10139D190);
  if (qword_101695388 != -1)
  {
    swift_once();
  }

  v19 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
  sub_1000076D4(v19, qword_10177CA40);
  v18(v15, 1, 1, v17);
  (*(*(v19 - 8) + 56))(v9, 1, 1, v19);
  type metadata accessor for UUID();
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v9, &qword_10169DE28, &unk_1013BF4E0);
  sub_10000B3A8(v15, &qword_10169DE30, &unk_10139D190);
  TableBuilder.primaryKey<A>(_:)();
  v20 = OBJC_IVAR____TtC12searchpartyd19ObservationDatabase_deviceEvent;
  v21 = type metadata accessor for Table();
  v33[3] = v21;
  v33[4] = &protocol witness table for Table;
  v22 = sub_1000280DC(v33);
  (*(*(v21 - 8) + 16))(v22, v31 + v20, v21);
  v23 = enum case for TableBuilder.Dependency.cascade(_:);
  v24 = type metadata accessor for TableBuilder.Dependency();
  v25 = *(v24 - 8);
  v26 = *(v25 + 104);
  v26(v6, v23, v24);
  v27 = *(v25 + 56);
  v27(v6, 0, 1, v24);
  v28 = v32;
  v26(v32, v23, v24);
  v27(v28, 0, 1, v24);
  TableBuilder.foreignKey<A>(_:references:_:update:delete:)();
  sub_10000B3A8(v28, &qword_1016CAA08, &qword_10140B848);
  sub_10000B3A8(v6, &qword_1016CAA08, &qword_10140B848);
  return sub_100007BAC(v33);
}

uint64_t sub_1011C16AC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t *a5, uint64_t a6)
{
  v53 = a5;
  v54 = a2;
  v8 = sub_1000BC4D4(&qword_101699D08, &unk_1013D7C10);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v55 = v50 - v10;
  v11 = sub_1000BC4D4(&qword_1016CAA08, &qword_10140B848);
  v12 = __chkstk_darwin(v11 - 8);
  v57 = v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v56 = v50 - v14;
  v15 = sub_1000BC4D4(&qword_10169DE58, &unk_10139D1B0);
  __chkstk_darwin(v15 - 8);
  v51 = v50 - v16;
  v17 = sub_1000BC4D4(&qword_1016CAA10, &qword_10140B850);
  __chkstk_darwin(v17 - 8);
  v19 = v50 - v18;
  v20 = sub_1000BC4D4(&qword_1016A8FF0, &unk_1013BA840);
  __chkstk_darwin(v20 - 8);
  v22 = v50 - v21;
  v23 = sub_1000BC4D4(&qword_10169DE30, &unk_10139D190);
  __chkstk_darwin(v23 - 8);
  v25 = v50 - v24;
  if (*a3 != -1)
  {
    swift_once();
  }

  v26 = sub_1000BC4D4(&qword_101699D30, &qword_1013BA850);
  v27 = sub_1000076D4(v26, a4);
  v58 = v9;
  v28 = *(v9 + 56);
  v28(v25, 1, 1, v8);
  (*(*(v26 - 8) + 56))(v22, 1, 1, v26);
  v52 = v27;
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v22, &qword_1016A8FF0, &unk_1013BA840);
  sub_10000B3A8(v25, &qword_10169DE30, &unk_10139D190);
  if (qword_101695348 != -1)
  {
    swift_once();
  }

  v29 = sub_1000BC4D4(&qword_101699E00, &qword_101393128);
  v30 = sub_1000076D4(v29, qword_10177C980);
  v28(v25, 1, 1, v8);
  v31 = *(*(v29 - 8) + 56);
  v31(v19, 1, 1, v29);
  v50[3] = v30;
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v19, &qword_1016CAA10, &qword_10140B850);
  sub_10000B3A8(v25, &qword_10169DE30, &unk_10139D190);
  if (qword_101695350 != -1)
  {
    swift_once();
  }

  v32 = sub_1000076D4(v29, qword_10177C998);
  v28(v25, 1, 1, v8);
  v31(v19, 1, 1, v29);
  v50[2] = v32;
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v19, &qword_1016CAA10, &qword_10140B850);
  sub_10000B3A8(v25, &qword_10169DE30, &unk_10139D190);
  if (qword_101695358 != -1)
  {
    swift_once();
  }

  v33 = sub_1000076D4(v29, qword_10177C9B0);
  v28(v25, 1, 1, v8);
  v31(v19, 1, 1, v29);
  v50[1] = v33;
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v19, &qword_1016CAA10, &qword_10140B850);
  sub_10000B3A8(v25, &qword_10169DE30, &unk_10139D190);
  if (qword_101695360 != -1)
  {
    swift_once();
  }

  v34 = sub_1000BC4D4(&qword_101699D78, &unk_1013BF4B0);
  sub_1000076D4(v34, qword_10177C9C8);
  v50[0] = v8;
  v28(v25, 1, 1, v8);
  v35 = v51;
  (*(*(v34 - 8) + 56))(v51, 1, 1, v34);
  type metadata accessor for Date();
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v35, &qword_10169DE58, &unk_10139D1B0);
  sub_10000B3A8(v25, &qword_10169DE30, &unk_10139D190);
  TableBuilder.primaryKey<A>(_:)();
  v36 = *v53;
  v37 = type metadata accessor for Table();
  v60 = v37;
  v61 = &protocol witness table for Table;
  v38 = sub_1000280DC(&v59);
  (*(*(v37 - 8) + 16))(v38, v54 + v36, v37);
  v39 = enum case for TableBuilder.Dependency.cascade(_:);
  v40 = type metadata accessor for TableBuilder.Dependency();
  v41 = *(v40 - 8);
  v42 = *(v41 + 104);
  v43 = v56;
  v42(v56, v39, v40);
  v44 = *(v41 + 56);
  v44(v43, 0, 1, v40);
  v45 = v57;
  v42(v57, v39, v40);
  v44(v45, 0, 1, v40);
  TableBuilder.foreignKey<A>(_:references:_:update:delete:)();
  sub_10000B3A8(v45, &qword_1016CAA08, &qword_10140B848);
  sub_10000B3A8(v43, &qword_1016CAA08, &qword_10140B848);
  sub_100007BAC(&v59);
  v59 = xmmword_10140B750;
  v46 = v55;
  ~= infix<A>(_:_:)();
  TableBuilder.check(_:)();
  v47 = *(v58 + 8);
  v48 = v50[0];
  v47(v46, v50[0]);
  v59 = xmmword_10140B760;
  ~= infix<A>(_:_:)();
  TableBuilder.check(_:)();
  v47(v46, v48);
  *&v59 = 0;
  >= infix<A>(_:_:)();
  TableBuilder.check(_:)();
  return (v47)(v46, v48);
}

uint64_t sub_1011C2074()
{
  type metadata accessor for Table();
  SchemaType.drop(ifExists:)(0);
  Connection.run(_:_:)();
  if (v0)
  {
  }

  Table.create(temporary:ifNotExists:withoutRowid:block:)();
  Connection.run(_:_:)();

  sub_1000BC4D4(&qword_101699D90, &unk_1013930F0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_101385D80;
  if (qword_1016952D0 != -1)
  {
    swift_once();
  }

  v2 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
  v3 = sub_1000076D4(v2, qword_10177C818);
  *(v1 + 56) = v2;
  v12 = sub_1000041A4(&qword_101699D18, &qword_101699D10, &unk_1013930B0, &protocol conformance descriptor for Expression<A>);
  *(v1 + 64) = v12;
  v4 = sub_1000280DC((v1 + 32));
  v5 = v3;
  v6 = *(*(v2 - 8) + 16);
  v6(v4, v5, v2);
  Table.createIndex(_:unique:ifNotExists:)();

  Connection.run(_:_:)();
  v11 = v6;

  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_101385D80;
  if (qword_1016952A0 != -1)
  {
    swift_once();
  }

  v8 = sub_1000076D4(v2, qword_10177C788);
  *(v7 + 56) = v2;
  *(v7 + 64) = v12;
  v9 = sub_1000280DC((v7 + 32));
  v11(v9, v8, v2);
  Table.createIndex(_:unique:ifNotExists:)();

  Connection.run(_:_:)();
}

uint64_t sub_1011C23E4()
{
  v0 = sub_1000BC4D4(&qword_10169DE58, &unk_10139D1B0);
  __chkstk_darwin(v0 - 8);
  v2 = &v29 - v1;
  v3 = sub_1000BC4D4(&unk_1016AB5A0, &unk_1013BF4D0);
  __chkstk_darwin(v3 - 8);
  v30 = &v29 - v4;
  v5 = sub_1000BC4D4(&qword_10169DE28, &unk_1013BF4E0);
  __chkstk_darwin(v5 - 8);
  v7 = &v29 - v6;
  v8 = sub_1000BC4D4(&qword_10169DE30, &unk_10139D190);
  __chkstk_darwin(v8 - 8);
  v10 = &v29 - v9;
  v11 = type metadata accessor for PrimaryKey();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_101695380 != -1)
  {
    swift_once();
  }

  v31 = v2;
  v15 = sub_1000BC4D4(&qword_101699D30, &qword_1013BA850);
  sub_1000076D4(v15, qword_10177CA28);
  (*(v12 + 104))(v14, enum case for PrimaryKey.autoincrement(_:), v11);
  v16 = sub_1000BC4D4(&qword_101699D08, &unk_1013D7C10);
  v17 = *(*(v16 - 8) + 56);
  v17(v10, 1, 1, v16);
  TableBuilder.column<A>(_:primaryKey:check:)();
  sub_10000B3A8(v10, &qword_10169DE30, &unk_10139D190);
  (*(v12 + 8))(v14, v11);
  if (qword_1016952D0 != -1)
  {
    swift_once();
  }

  v18 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
  sub_1000076D4(v18, qword_10177C818);
  v17(v10, 1, 1, v16);
  v19 = *(*(v18 - 8) + 56);
  v32 = v16;
  v19(v7, 1, 1, v18);
  type metadata accessor for UUID();
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v7, &qword_10169DE28, &unk_1013BF4E0);
  sub_10000B3A8(v10, &qword_10169DE30, &unk_10139D190);
  if (qword_1016952A0 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v18, qword_10177C788);
  v17(v10, 1, 1, v32);
  v19(v7, 1, 1, v18);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v7, &qword_10169DE28, &unk_1013BF4E0);
  sub_10000B3A8(v10, &qword_10169DE30, &unk_10139D190);
  if (qword_101695370 != -1)
  {
    swift_once();
  }

  v20 = sub_1000BC4D4(&qword_101699E60, &unk_1013BF4C0);
  sub_1000076D4(v20, qword_10177C9F8);
  v21 = v32;
  v17(v10, 1, 1, v32);
  v22 = v30;
  (*(*(v20 - 8) + 56))(v30, 1, 1, v20);
  sub_10022A60C();
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v22, &unk_1016AB5A0, &unk_1013BF4D0);
  sub_10000B3A8(v10, &qword_10169DE30, &unk_10139D190);
  v23 = v31;
  if (qword_101695360 != -1)
  {
    swift_once();
  }

  v24 = sub_1000BC4D4(&qword_101699D78, &unk_1013BF4B0);
  sub_1000076D4(v24, qword_10177C9C8);
  v17(v10, 1, 1, v21);
  v25 = *(v24 - 8);
  v30 = v17;
  v26 = v21;
  v27 = *(v25 + 56);
  v27(v23, 1, 1, v24);
  type metadata accessor for Date();
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v23, &qword_10169DE58, &unk_10139D1B0);
  sub_10000B3A8(v10, &qword_10169DE30, &unk_10139D190);
  if (qword_101695378 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v24, qword_10177CA10);
  (v30)(v10, 1, 1, v26);
  v27(v23, 1, 1, v24);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v23, &qword_10169DE58, &unk_10139D1B0);
  return sub_10000B3A8(v10, &qword_10169DE30, &unk_10139D190);
}

uint64_t sub_1011C2BBC(uint64_t a1, uint64_t a2)
{
  v102 = a2;
  v110 = a1;
  v2 = sub_1000BC4D4(&qword_101699EA8, &unk_101393170);
  v100 = *(v2 - 8);
  v101 = v2;
  __chkstk_darwin(v2);
  v99 = &v79 - v3;
  v4 = sub_1000BC4D4(&qword_101699E88, &unk_10139D170);
  v96 = *(v4 - 8);
  v97 = v4;
  __chkstk_darwin(v4);
  v95 = &v79 - v5;
  v6 = sub_1000BC4D4(&qword_101699D08, &unk_1013D7C10);
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v94 = &v79 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v93 = &v79 - v11;
  __chkstk_darwin(v10);
  v98 = &v79 - v12;
  v13 = sub_1000BC4D4(&qword_10169DE58, &unk_10139D1B0);
  __chkstk_darwin(v13 - 8);
  v90 = &v79 - v14;
  v15 = sub_1000BC4D4(&qword_1016CAA18, &qword_10140B858);
  __chkstk_darwin(v15 - 8);
  v88 = &v79 - v16;
  v17 = sub_1000BC4D4(&qword_10169DE40, &unk_1013D7C00);
  __chkstk_darwin(v17 - 8);
  v19 = &v79 - v18;
  v20 = sub_1000BC4D4(&qword_10169DE50, &qword_10139D1A8);
  __chkstk_darwin(v20 - 8);
  v22 = &v79 - v21;
  v23 = sub_1000BC4D4(&qword_10169DE30, &unk_10139D190);
  v24 = __chkstk_darwin(v23 - 8);
  v89 = &v79 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v27 = &v79 - v26;
  v28 = type metadata accessor for PrimaryKey();
  v29 = *(v28 - 8);
  __chkstk_darwin(v28);
  v31 = &v79 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_101695298 != -1)
  {
    swift_once();
  }

  v32 = sub_1000BC4D4(&qword_101699D30, &qword_1013BA850);
  sub_1000076D4(v32, qword_10177C770);
  (*(v29 + 104))(v31, enum case for PrimaryKey.autoincrement(_:), v28);
  v109 = v7;
  v35 = *(v7 + 56);
  v34 = (v7 + 56);
  v33 = v35;
  v35(v27, 1, 1, v6);
  TableBuilder.column<A>(_:primaryKey:check:)();
  sub_10000B3A8(v27, &qword_10169DE30, &unk_10139D190);
  (*(v29 + 8))(v31, v28);
  if (qword_1016952C8 != -1)
  {
    swift_once();
  }

  v36 = sub_1000BC4D4(&qword_101699DA0, &unk_10139D120);
  v37 = sub_1000076D4(v36, qword_10177C800);
  v33(v27, 1, 1, v6);
  v92 = *(v36 - 8);
  v38 = *(v92 + 56);
  v108 = v36;
  v83 = v92 + 56;
  v82 = v38;
  v38(v22, 1, 1, v36);
  v39 = sub_100028088();
  v107 = v37;
  v105 = v39;
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v22, &qword_10169DE50, &qword_10139D1A8);
  sub_10000B3A8(v27, &qword_10169DE30, &unk_10139D190);
  v40 = v33;
  if (qword_1016952F8 != -1)
  {
    swift_once();
  }

  v41 = sub_1000BC4D4(&qword_101699DC0, &unk_10139D110);
  v42 = sub_1000076D4(v41, qword_10177C890);
  v40(v27, 1, 1, v6);
  v43 = *(v41 - 8);
  v103 = v34;
  v44 = v40;
  v91 = v43;
  v45 = *(v43 + 56);
  v45(v19, 1, 1, v41);
  v85 = v42;
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v19, &qword_10169DE40, &unk_1013D7C00);
  sub_10000B3A8(v27, &qword_10169DE30, &unk_10139D190);
  if (qword_101695300 != -1)
  {
    swift_once();
  }

  v46 = sub_1000076D4(v41, qword_10177C8A8);
  v40(v27, 1, 1, v6);
  v106 = v41;
  v45(v19, 1, 1, v41);
  v104 = v46;
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v19, &qword_10169DE40, &unk_1013D7C00);
  sub_10000B3A8(v27, &qword_10169DE30, &unk_10139D190);
  if (qword_101695308 != -1)
  {
    swift_once();
  }

  v47 = v108;
  v48 = sub_1000076D4(v108, qword_10177C8C0);
  v40(v27, 1, 1, v6);
  v49 = v82;
  v82(v22, 1, 1, v47);
  v86 = v48;
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v22, &qword_10169DE50, &qword_10139D1A8);
  sub_10000B3A8(v27, &qword_10169DE30, &unk_10139D190);
  if (qword_101695310 != -1)
  {
    swift_once();
  }

  v50 = sub_1000076D4(v47, qword_10177C8D8);
  v44(v27, 1, 1, v6);
  v49(v22, 1, 1, v47);
  v87 = v50;
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v22, &qword_10169DE50, &qword_10139D1A8);
  sub_10000B3A8(v27, &qword_10169DE30, &unk_10139D190);
  if (qword_101695320 != -1)
  {
    swift_once();
  }

  v51 = sub_1000BC4D4(&qword_101699DD0, &qword_101393110);
  v52 = sub_1000076D4(v51, qword_10177C908);
  v44(v27, 1, 1, v6);
  v49(v22, 1, 1, v47);
  v84 = v52;
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v22, &qword_10169DE50, &qword_10139D1A8);
  sub_10000B3A8(v27, &qword_10169DE30, &unk_10139D190);
  if (qword_101695318 != -1)
  {
    swift_once();
  }

  v53 = sub_1000076D4(v47, qword_10177C8F0);
  v44(v27, 1, 1, v6);
  v49(v22, 1, 1, v47);
  v82 = v53;
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v22, &qword_10169DE50, &qword_10139D1A8);
  sub_10000B3A8(v27, &qword_10169DE30, &unk_10139D190);
  if (qword_101695328 != -1)
  {
    swift_once();
  }

  v54 = sub_1000BC4D4(&qword_101699DD8, &qword_101393118);
  sub_1000076D4(v54, qword_10177C920);
  v44(v27, 1, 1, v6);
  v55 = v88;
  (*(*(v54 - 8) + 56))(v88, 1, 1, v54);
  sub_100027F50();
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v55, &qword_1016CAA18, &qword_10140B858);
  sub_10000B3A8(v27, &qword_10169DE30, &unk_10139D190);
  if (qword_101695330 != -1)
  {
    swift_once();
  }

  v56 = sub_1000BC4D4(&qword_101699D78, &unk_1013BF4B0);
  v57 = sub_1000076D4(v56, qword_10177C938);
  v44(v27, 1, 1, v6);
  v81 = *(v56 - 8);
  v58 = *(v81 + 56);
  v59 = v90;
  v88 = v56;
  v58(v90, 1, 1, v56);
  type metadata accessor for Date();
  v83 = v57;
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v59, &qword_10169DE58, &unk_10139D1B0);
  sub_10000B3A8(v27, &qword_10169DE30, &unk_10139D190);
  if (qword_101695340 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v6, qword_10177C968);
  v44(v27, 1, 1, v6);
  v60 = v89;
  v44(v89, 1, 1, v6);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v60, &qword_10169DE30, &unk_10139D190);
  sub_10000B3A8(v27, &qword_10169DE30, &unk_10139D190);
  sub_1000041A4(&qword_101699E90, &qword_101699DC0, &unk_10139D110, &protocol conformance descriptor for Expression<A>);
  v61 = v95;
  ExpressionType<>.length.getter();
  v111 = static MACAddress.length.getter();
  v62 = v98;
  == infix<A>(_:_:)();
  v63 = v6;
  v80 = v6;
  v64 = v97;
  v65 = *(v96 + 8);
  v65(v61, v97);
  TableBuilder.check(_:)();
  v103 = *(v109 + 8);
  v109 += 8;
  v103(v62, v63);
  ExpressionType<>.length.getter();
  v111 = 6;
  v66 = v93;
  == infix<A>(_:_:)();
  v65(v61, v64);
  ExpressionType<>.length.getter();
  v111 = 28;
  v67 = v94;
  == infix<A>(_:_:)();
  v65(v61, v64);
  || infix(_:_:)();
  v68 = v80;
  v69 = v103;
  v103(v67, v80);
  v69(v66, v68);
  TableBuilder.check(_:)();
  v69(v62, v68);
  LOWORD(v111) = -256;
  ~= infix<A>(_:_:)();
  TableBuilder.check(_:)();
  v69(v62, v68);
  LOWORD(v111) = -256;
  ~= infix<A>(_:_:)();
  TableBuilder.check(_:)();
  v69(v62, v68);
  LOWORD(v111) = -256;
  ~= infix<A>(_:_:)();
  TableBuilder.check(_:)();
  v69(v62, v68);
  LOWORD(v111) = -256;
  v70 = v99;
  ~= infix<A>(_:_:)();
  TableBuilder.check(_:)();
  (*(v100 + 8))(v70, v101);
  v111 = v102;
  sub_1000BC4D4(&unk_10169BA40, &unk_1013918E0);
  sub_1000041A4(&qword_101699E20, &unk_10169BA40, &unk_1013918E0, &protocol conformance descriptor for [A]);
  Collection<>.contains(_:)();
  TableBuilder.check(_:)();
  v69(v62, v68);
  sub_1000BC4D4(&qword_101699D90, &unk_1013930F0);
  v71 = swift_allocObject();
  *(v71 + 16) = xmmword_10138B360;
  v72 = v108;
  *(v71 + 56) = v108;
  *(v71 + 64) = sub_1000041A4(&qword_101699DA8, &qword_101699DA0, &unk_10139D120, &protocol conformance descriptor for Expression<A>);
  v73 = sub_1000280DC((v71 + 32));
  (*(v92 + 16))(v73, v107, v72);
  v74 = v106;
  *(v71 + 96) = v106;
  *(v71 + 104) = sub_1000041A4(&qword_101699E98, &qword_101699DC0, &unk_10139D110, &protocol conformance descriptor for Expression<A>);
  v75 = sub_1000280DC((v71 + 72));
  (*(v91 + 16))(v75, v104, v74);
  v76 = v88;
  *(v71 + 136) = v88;
  *(v71 + 144) = sub_1000041A4(&qword_101699E58, &qword_101699D78, &unk_1013BF4B0, &protocol conformance descriptor for Expression<A>);
  v77 = sub_1000280DC((v71 + 112));
  (*(v81 + 16))(v77, v83, v76);
  TableBuilder.unique(_:)(v71);
}