uint64_t sub_10005159C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  *(v8 + 56) = v12;
  *(v8 + 64) = v13;
  *(v8 + 120) = a7;
  *(v8 + 40) = a6;
  *(v8 + 48) = a8;
  *(v8 + 24) = a4;
  *(v8 + 32) = a5;
  v9 = type metadata accessor for UUID();
  *(v8 + 72) = v9;
  *(v8 + 80) = *(v9 - 8);
  *(v8 + 88) = swift_task_alloc();
  *(v8 + 96) = swift_task_alloc();

  return _swift_task_switch(sub_10005167C, 0, 0);
}

uint64_t sub_10005167C()
{
  sub_10000D224(*(v0 + 24), *(*(v0 + 24) + 24));
  if (dispatch thunk of FeaturesDataSource.isActivityHistory2025Enabled.getter())
  {
    v1 = *(v0 + 48);
    v2 = *(v0 + 120);
    v3 = sub_10000CED0(&qword_1000AB3D0, &qword_100086288);
    v4 = swift_task_alloc();
    *(v0 + 104) = v4;
    v5 = *(v0 + 32);
    *(v4 + 16) = v2;
    *(v4 + 24) = 0;
    *(v4 + 32) = 0;
    *(v4 + 40) = v5;
    *(v4 + 56) = v1;
    v6 = swift_task_alloc();
    *(v0 + 112) = v6;
    *v6 = v0;
    v6[1] = sub_100051BC8;
    v7 = &unk_100087548;
    v8 = v0 + 16;
    v9 = v3;
    v10 = v3;
    v11 = 0;
    v12 = 0;
    v13 = v4;
    v14 = v3;

    return withTaskGroup<A, B>(of:returning:isolation:body:)(v8, v9, v10, v11, v12, v7, v13, v14);
  }

  v16 = *(v0 + 32);
  v15 = *(v0 + 40);
  sub_10005CCD4();
  v17 = swift_allocError();
  *v18 = 0xD000000000000018;
  *(v18 + 8) = 0x80000001000899C0;
  *(v18 + 16) = 0;
  v56 = v17;
  v8 = swift_willThrow();
  if (__OFADD__(*(v16 + 16), *(v15 + 16)))
  {
LABEL_34:
    __break(1u);
    return withTaskGroup<A, B>(of:returning:isolation:body:)(v8, v9, v10, v11, v12, v7, v13, v14);
  }

  v19 = *(v0 + 80);
  v20 = *(v0 + 32);
  sub_10000CED0(&unk_1000AAB08, &qword_1000853D0);
  sub_10005E474(&unk_1000AC310, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v21 = Dictionary.init(minimumCapacity:)();

  v8 = sub_10004DF38(v22, v20);
  v23 = 0;
  v24 = v8 + 56;
  v53 = v19;
  v54 = v8;
  v25 = -1;
  v26 = -1 << *(v8 + 32);
  if (-v26 < 64)
  {
    v25 = ~(-1 << -v26);
  }

  v27 = v25 & *(v8 + 56);
  v28 = (63 - v26) >> 6;
  v52 = (v19 + 8);
  v57 = v0;
  while (v27)
  {
    v29 = v23;
LABEL_16:
    v31 = *(v0 + 88);
    v30 = *(v0 + 96);
    v32 = *(v0 + 72);
    v33 = *(v53 + 72);
    v55 = *(v53 + 16);
    v55(v30, *(v54 + 48) + v33 * (__clz(__rbit64(v27)) | (v29 << 6)), v32);
    (*(v53 + 32))(v31, v30, v32);
    swift_errorRetain();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v58 = v21;
    v8 = sub_10007B6C4(v31);
    v35 = v21[2];
    v36 = (v9 & 1) == 0;
    v37 = __OFADD__(v35, v36);
    v38 = v35 + v36;
    if (v37)
    {
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    v39 = v9;
    if (v21[3] >= v38)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v48 = v8;
        sub_10007F178();
        v8 = v48;
        v21 = v58;
      }
    }

    else
    {
      v40 = *(v57 + 88);
      sub_10007C614(v38, isUniquelyReferenced_nonNull_native);
      v8 = sub_10007B6C4(v40);
      if ((v39 & 1) != (v41 & 1))
      {

        return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      }
    }

    v27 &= v27 - 1;
    v42 = *(v57 + 88);
    v43 = *(v57 + 72);
    if (v39)
    {
      *(v21[7] + 8 * v8) = v56;

      v8 = (*v52)(v42, v43);
    }

    else
    {
      v21[(v8 >> 6) + 8] |= 1 << v8;
      v44 = v21[6] + v8 * v33;
      v45 = v8;
      v55(v44, v42, v43);
      *(v21[7] + 8 * v45) = v56;
      v8 = (*v52)(v42, v43);
      v46 = v21[2];
      v37 = __OFADD__(v46, 1);
      v47 = v46 + 1;
      if (v37)
      {
        goto LABEL_33;
      }

      v21[2] = v47;
    }

    v23 = v29;
    v0 = v57;
  }

  while (1)
  {
    v29 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      __break(1u);
      goto LABEL_32;
    }

    if (v29 >= v28)
    {
      break;
    }

    v27 = *(v24 + 8 * v29);
    ++v23;
    if (v27)
    {
      goto LABEL_16;
    }
  }

  v49 = *(v0 + 56);

  v49(v21);

  v50 = *(v0 + 8);

  return v50();
}

uint64_t sub_100051BC8()
{

  return _swift_task_switch(sub_100051CE0, 0, 0);
}

uint64_t sub_100051CE0()
{
  (*(v0 + 56))(*(v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

void sub_100051E98(uint64_t a1, uint64_t a2)
{
  type metadata accessor for UUID();
  sub_10000CED0(&unk_1000AAB08, &qword_1000853D0);
  sub_10005E474(&unk_1000AC310, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  (*(a2 + 16))(a2, isa);
}

uint64_t sub_100051F64(uint64_t a1, char *a2, char *a3)
{
  v33 = a1;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v32 = v7;
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000CED0(&qword_1000AAD30, &qword_100085540);
  __chkstk_darwin(v9 - 8);
  v34 = &v31 - v10;
  v11 = type metadata accessor for Logger();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for XPCServer();
  sub_10005E474(&qword_1000AAFD8, type metadata accessor for XPCServer, &unk_100085BD8);
  static LoggedObject.logger.getter();
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v31 = v8;
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v15, v16, "calling ensureDigests()", v17, 2u);
    v8 = v31;
  }

  (*(v12 + 8))(v14, v11);
  v18 = swift_allocObject();
  *(v18 + 16) = a2;
  *(v18 + 24) = a3;

  v19 = v35;
  v20 = sub_10004ED44(1, sub_10005F7E8, v18);

  if (v20)
  {
    v31 = a2;
    result = swift_weakLoadStrong();
    if (result)
    {
      v22 = result;
      v23 = type metadata accessor for TaskPriority();
      v24 = *(*(v23 - 8) + 56);
      v25 = v34;
      v24(v34, 1, 1, v23);
      v26 = swift_allocObject();
      *(v26 + 16) = 0;
      *(v26 + 24) = 0;
      *(v26 + 32) = v22;
      *(v26 + 40) = 0;
      sub_100080ECC(0, 0, v25, &unk_100087518, v26);

      v24(v25, 1, 1, v23);
      sub_10000D2CC(v19 + 40, v36);
      (*(v6 + 16))(v8, v33, v5);
      v27 = (*(v6 + 80) + 72) & ~*(v6 + 80);
      v28 = (v32 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
      v29 = swift_allocObject();
      *(v29 + 16) = 0;
      *(v29 + 24) = 0;
      sub_1000111BC(v36, v29 + 32);
      (*(v6 + 32))(v29 + v27, v8, v5);
      v30 = (v29 + v28);
      *v30 = v31;
      v30[1] = a3;

      sub_100080ECC(0, 0, v25, &unk_100087528, v29);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1000523E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  sub_10000CED0(&qword_1000AB0C8, &qword_100085F18);
  v7[6] = swift_task_alloc();

  return _swift_task_switch(sub_100052488, 0, 0);
}

uint64_t sub_100052488()
{
  sub_10000D224(*(v0 + 16), *(*(v0 + 16) + 24));
  if (dispatch thunk of FeaturesDataSource.isActivityHistory2025Enabled.getter())
  {
    v1 = *(v0 + 48);
    v2 = type metadata accessor for Date();
    (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
    v3 = swift_task_alloc();
    *(v0 + 56) = v3;
    *v3 = v0;
    v3[1] = sub_100052650;
    v4 = *(v0 + 48);
    v5 = *(v0 + 24);

    return sub_1000128C8(v5, v4);
  }

  else
  {
    sub_10005CCD4();
    v7 = swift_allocError();
    *v8 = 0xD000000000000018;
    *(v8 + 8) = 0x80000001000899C0;
    *(v8 + 16) = 0;
    swift_willThrow();
    v9 = *(v0 + 32);
    swift_errorRetain();
    v9(v7);

    v10 = *(v0 + 8);

    return v10();
  }
}

uint64_t sub_100052650()
{
  v2 = *(*v1 + 48);
  *(*v1 + 64) = v0;

  sub_10000D620(v2, &qword_1000AB0C8, &qword_100085F18);
  if (v0)
  {
    v3 = sub_100052800;
  }

  else
  {
    v3 = sub_100052790;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100052790()
{
  (*(v0 + 32))(0);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100052800()
{
  v1 = v0[8];
  v2 = v0[4];
  swift_errorRetain();
  v2(v1);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1000529CC(uint64_t a1, uint64_t a2)
{
  v5 = sub_10000CED0(&qword_1000AAD30, &qword_100085540);
  __chkstk_darwin(v5 - 8);
  v7 = v17 - v6;
  result = swift_weakLoadStrong();
  if (result)
  {
    v9 = result;
    v10 = type metadata accessor for TaskPriority();
    v11 = *(*(v10 - 8) + 56);
    v11(v7, 1, 1, v10);
    v12 = swift_allocObject();
    *(v12 + 16) = 0;
    *(v12 + 24) = 0;
    *(v12 + 32) = v9;
    *(v12 + 40) = 0;
    sub_100080ECC(0, 0, v7, &unk_1000873F0, v12);

    result = swift_weakLoadStrong();
    if (result)
    {
      v13 = result;
      v14 = swift_allocObject();
      *(v14 + 16) = a1;
      *(v14 + 24) = a2;
      v15 = *sub_10000D224((v2 + 80), *(v2 + 104));
      v18[3] = type metadata accessor for CoreDataDatabase();
      v18[4] = &off_1000A42B8;
      v18[0] = v15;
      v11(v7, 1, 1, v10);
      sub_10000D2CC(v18, v17);
      v16 = swift_allocObject();
      v16[2] = 0;
      v16[3] = 0;
      v16[4] = v13;
      v16[5] = sub_10005D844;
      v16[6] = v14;
      sub_1000111BC(v17, (v16 + 7));

      sub_100080ECC(0, 0, v7, &unk_1000873F8, v16);

      return sub_10000D330(v18);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100052CC4(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = sub_10000CED0(&qword_1000AAD30, &qword_100085540);
  __chkstk_darwin(v10 - 8);
  v12 = v36 - v11;
  v39 = type metadata accessor for Logger();
  v13 = *(v39 - 8);
  __chkstk_darwin(v39);
  v15 = v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for XPCServer();
  sub_10005E474(&qword_1000AAFD8, type metadata accessor for XPCServer, &unk_100085BD8);
  static LoggedObject.logger.getter();

  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.debug.getter();

  v18 = os_log_type_enabled(v16, v17);
  v38 = a1;
  if (v18)
  {
    v19 = swift_slowAlloc();
    v37 = v12;
    v20 = a2;
    v21 = a3;
    v22 = a4;
    v23 = a1;
    v24 = v19;
    v25 = swift_slowAlloc();
    v36[1] = v5;
    v26 = v25;
    v40 = v25;
    *v24 = 136315138;
    v27 = v23;
    a4 = v22;
    a3 = v21;
    a2 = v20;
    v12 = v37;
    *(v24 + 4) = sub_100035120(v27, a2, &v40);
    _os_log_impl(&_mh_execute_header, v16, v17, "calling hmvutil echo(%s)", v24, 0xCu);
    sub_10000D330(v26);
  }

  (*(v13 + 8))(v15, v39);
  v28 = swift_allocObject();
  *(v28 + 16) = a3;
  *(v28 + 24) = a4;

  v29 = sub_10004ED44(2, sub_10005E928, v28);

  if (v29)
  {
    result = swift_weakLoadStrong();
    if (result)
    {
      v31 = result;
      v32 = type metadata accessor for TaskPriority();
      v33 = *(*(v32 - 8) + 56);
      v33(v12, 1, 1, v32);
      v34 = swift_allocObject();
      *(v34 + 16) = 0;
      *(v34 + 24) = 0;
      *(v34 + 32) = v31;
      *(v34 + 40) = 0;
      sub_100080ECC(0, 0, v12, &unk_100087500, v34);

      v33(v12, 1, 1, v32);
      v35 = swift_allocObject();
      v35[2] = 0;
      v35[3] = 0;
      v35[4] = a3;
      v35[5] = a4;
      v35[6] = v38;
      v35[7] = a2;

      sub_100080ECC(0, 0, v12, &unk_100087510, v35);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1000530BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  return _swift_task_switch(sub_1000530E0, 0, 0);
}

uint64_t sub_1000530E0()
{
  (*(v0 + 16))(*(v0 + 32), *(v0 + 40), 0);
  v1 = *(v0 + 8);

  return v1();
}

void sub_100053180(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v6 = String._bridgeToObjectiveC()();
    if (a3)
    {
LABEL_3:
      v7 = _convertErrorToNSError(_:)();
      goto LABEL_6;
    }
  }

  else
  {
    v6 = 0;
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v7 = 0;
LABEL_6:
  v8 = v7;
  (*(a4 + 16))(a4, v6);
}

uint64_t sub_100053210(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v37 = a3;
  v36 = a2;
  v8 = sub_10000CED0(&qword_1000AAD30, &qword_100085540);
  __chkstk_darwin(v8 - 8);
  v35 = &v32 - v9;
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for XPCServer();
  sub_10005E474(&qword_1000AAFD8, type metadata accessor for XPCServer, &unk_100085BD8);
  static LoggedObject.logger.getter();

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v34 = a4;
    v17 = v16;
    v18 = swift_slowAlloc();
    v33 = v5;
    v19 = v18;
    v38 = a1;
    *&v39[0] = v18;
    *v17 = 136315138;

    sub_10000CED0(&unk_1000ABED0, &qword_1000874F8);
    v20 = String.init<A>(describing:)();
    v22 = sub_100035120(v20, v21, v39);

    *(v17 + 4) = v22;
    _os_log_impl(&_mh_execute_header, v14, v15, "calling hmvutil clearEvents(%s", v17, 0xCu);
    sub_10000D330(v19);
    v5 = v33;

    a4 = v34;
  }

  (*(v11 + 8))(v13, v10);
  v23 = swift_allocObject();
  *(v23 + 16) = v37;
  *(v23 + 24) = a4;

  v24 = sub_10004ED44(2, sub_10005F7E8, v23);

  if (v24)
  {
    result = swift_weakLoadStrong();
    if (result)
    {
      v26 = result;
      v27 = type metadata accessor for TaskPriority();
      v28 = *(*(v27 - 8) + 56);
      v29 = v35;
      v28(v35, 1, 1, v27);
      v30 = swift_allocObject();
      *(v30 + 16) = 0;
      *(v30 + 24) = 0;
      *(v30 + 32) = v26;
      *(v30 + 40) = 0;
      sub_100080ECC(0, 0, v29, &unk_1000874E0, v30);

      v28(v29, 1, 1, v27);
      sub_10000D2CC(v5 + 80, v39);
      v31 = swift_allocObject();
      *(v31 + 16) = 0;
      *(v31 + 24) = 0;
      *(v31 + 32) = a1;
      *(v31 + 40) = v36 & 1;
      sub_1000111BC(v39, v31 + 48);
      *(v31 + 88) = v37;
      *(v31 + 96) = a4;

      sub_100080ECC(0, 0, v29, &unk_1000874F0, v31);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_100053648(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[2] = a7;
  v8[3] = a8;
  v12 = swift_task_alloc();
  v8[4] = v12;
  *v12 = v8;
  v12[1] = sub_10004FDA0;

  return sub_10001C164(a4, a5, a6);
}

uint64_t sub_100053740(uint64_t a1, int a2, uint64_t a3, uint64_t a4, void *aBlock, uint64_t a6, uint64_t a7, void (*a8)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v12 = _Block_copy(aBlock);
  if (a3)
  {
    type metadata accessor for UUID();
    a3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v13 = swift_allocObject();
  *(v13 + 16) = v12;

  a8(a3, a4, a7, v13);
}

uint64_t sub_100053810(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_10000CED0(&qword_1000AAD30, &qword_100085540);
  __chkstk_darwin(v8 - 8);
  v10 = &v26 - v9;
  v11 = type metadata accessor for Logger();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for XPCServer();
  sub_10005E474(&qword_1000AAFD8, type metadata accessor for XPCServer, &unk_100085BD8);
  static LoggedObject.logger.getter();
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v26 = v10;
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v15, v16, "calling hmvutil clearLocalDatabase()", v17, 2u);
    v10 = v26;
  }

  (*(v12 + 8))(v14, v11);
  v18 = swift_allocObject();
  *(v18 + 16) = a2;
  *(v18 + 24) = a3;

  v19 = sub_10004ED44(2, sub_10005F7E8, v18);

  if (v19)
  {
    result = swift_weakLoadStrong();
    if (result)
    {
      v21 = result;
      v22 = type metadata accessor for TaskPriority();
      v23 = *(*(v22 - 8) + 56);
      v23(v10, 1, 1, v22);
      v24 = swift_allocObject();
      *(v24 + 16) = 0;
      *(v24 + 24) = 0;
      *(v24 + 32) = v21;
      *(v24 + 40) = 0;
      sub_100080ECC(0, 0, v10, &unk_1000874C8, v24);

      v23(v10, 1, 1, v22);
      sub_10000D2CC(v4 + 80, v27);
      v25 = swift_allocObject();
      v25[2] = 0;
      v25[3] = 0;
      sub_1000111BC(v27, (v25 + 4));
      v25[9] = a1;
      v25[10] = a2;
      v25[11] = a3;

      sub_100080ECC(0, 0, v10, &unk_1000874D8, v25);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_100053BB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[2] = a6;
  v7[3] = a7;
  v10 = swift_task_alloc();
  v7[4] = v10;
  *v10 = v7;
  v10[1] = sub_10004FDA0;

  return sub_1000358C4(a4, a5);
}

uint64_t sub_100053D2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v8 + 48) = v14;
  *(v8 + 56) = v15;
  *(v8 + 138) = v13;
  *(v8 + 137) = v12;
  *(v8 + 136) = a8;
  *(v8 + 32) = a6;
  *(v8 + 40) = a7;
  *(v8 + 16) = a4;
  *(v8 + 24) = a5;
  v9 = type metadata accessor for EventRecord.DecodedEvent();
  *(v8 + 64) = v9;
  *(v8 + 72) = *(v9 - 8);
  *(v8 + 80) = swift_task_alloc();

  return _swift_task_switch(sub_100053E10, 0, 0);
}

uint64_t sub_100053E10()
{
  v1 = sub_100066850(*(v0 + 16), *(v0 + 24));
  *(v0 + 88) = v1;
  v4 = v1[2];
  if (v4)
  {
    v5 = v1;
    if (*(v0 + 138))
    {
      v6 = *(v0 + 72);
      sub_10003E718(0, v4, 0);
      v24 = type metadata accessor for SomeEvent();
      v7 = *(v24 - 8);
      v23 = *(v7 + 16);
      v8 = v5 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v22 = *(v7 + 72);
      v9 = enum case for EventRecord.DecodedEvent.someEvent(_:);
      do
      {
        v10 = *(v0 + 80);
        v11 = *(v0 + 64);
        v23(v10, v8, v24);
        (*(v6 + 104))(v10, v9, v11);
        v13 = _swiftEmptyArrayStorage[2];
        v12 = _swiftEmptyArrayStorage[3];
        if (v13 >= v12 >> 1)
        {
          sub_10003E718((v12 > 1), v13 + 1, 1);
        }

        v14 = *(v0 + 80);
        v15 = *(v0 + 64);
        _swiftEmptyArrayStorage[2] = v13 + 1;
        (*(v6 + 32))(_swiftEmptyArrayStorage + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v13, v14, v15);
        v8 += v22;
        --v4;
      }

      while (v4);

      *(v0 + 112) = _swiftEmptyArrayStorage;
      v17 = swift_task_alloc();
      *(v0 + 120) = v17;
      *v17 = v0;
      v17[1] = sub_100054544;
      v18 = *(v0 + 137);
      v19 = *(v0 + 136);
      v20 = *(v0 + 32);
      v21 = *(v0 + 40);

      return sub_10005FF20(_swiftEmptyArrayStorage, v20, v21, v19, v18);
    }

    else
    {
      v16 = swift_task_alloc();
      *(v0 + 96) = v16;
      *v16 = v0;
      v16[1] = sub_100054160;

      return sub_10002AA68(v5);
    }
  }

  else
  {

    (*(v0 + 48))(0);

    v2 = *(v0 + 8);

    return v2();
  }
}

uint64_t sub_100054160()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_100054274;
  }

  else
  {
    v2 = sub_100054310;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100054274()
{

  v1 = v0[13];
  v2 = v0[6];
  swift_errorRetain();
  v2(v1);

  v3 = v0[1];

  return v3();
}

uint64_t sub_100054310()
{
  v1 = *(v0 + 88);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + 72);
    sub_10003E718(0, v2, 0);
    v21 = type metadata accessor for SomeEvent();
    v4 = *(v21 - 8);
    v20 = *(v4 + 16);
    v5 = v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v19 = *(v4 + 72);
    v6 = enum case for EventRecord.DecodedEvent.someEvent(_:);
    do
    {
      v7 = *(v0 + 80);
      v8 = *(v0 + 64);
      v20(v7, v5, v21);
      (*(v3 + 104))(v7, v6, v8);
      v10 = _swiftEmptyArrayStorage[2];
      v9 = _swiftEmptyArrayStorage[3];
      if (v10 >= v9 >> 1)
      {
        sub_10003E718((v9 > 1), v10 + 1, 1);
      }

      v11 = *(v0 + 80);
      v12 = *(v0 + 64);
      _swiftEmptyArrayStorage[2] = v10 + 1;
      (*(v3 + 32))(_swiftEmptyArrayStorage + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v10, v11, v12);
      v5 += v19;
      --v2;
    }

    while (v2);
  }

  *(v0 + 112) = _swiftEmptyArrayStorage;
  v13 = swift_task_alloc();
  *(v0 + 120) = v13;
  *v13 = v0;
  v13[1] = sub_100054544;
  v14 = *(v0 + 137);
  v15 = *(v0 + 136);
  v16 = *(v0 + 32);
  v17 = *(v0 + 40);

  return sub_10005FF20(_swiftEmptyArrayStorage, v16, v17, v15, v14);
}

uint64_t sub_100054544()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_1000546D0;
  }

  else
  {
    v2 = sub_100054658;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100054658()
{

  (*(v0 + 48))(0);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000546D0()
{

  v1 = v0[16];
  v2 = v0[6];
  swift_errorRetain();
  v2(v1);

  v3 = v0[1];

  return v3();
}

uint64_t sub_100054834(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 64) = v17;
  *(v8 + 72) = v18;
  *(v8 + 153) = v15;
  *(v8 + 152) = v14;
  *(v8 + 48) = a7;
  *(v8 + 56) = a8;
  *(v8 + 32) = a5;
  *(v8 + 40) = a6;
  *(v8 + 24) = a4;
  v10 = type metadata accessor for Logger();
  *(v8 + 80) = v10;
  *(v8 + 88) = *(v10 - 8);
  *(v8 + 96) = swift_task_alloc();
  if (v16)
  {
    *(v8 + 112) = 0;

    return _swift_task_switch(sub_100054AD4, 0, 0);
  }

  else
  {
    v11 = swift_task_alloc();
    *(v8 + 104) = v11;
    *v11 = v8;
    v11[1] = sub_1000549B0;

    return sub_10002B3F0(a5);
  }
}

uint64_t sub_1000549B0()
{
  v2 = *v1;

  if (v0)
  {
    *(v2 + 144) = v0;
    v3 = sub_100055048;
  }

  else
  {
    *(v2 + 112) = 0;
    v3 = sub_100054AD4;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100054AD4()
{
  v1 = *(v0 + 40);
  if (v1 < 1)
  {
    v18 = type metadata accessor for HomeKitEventsError();
    sub_10005E474(&qword_1000ABA30, &type metadata accessor for HomeKitEventsError, &protocol conformance descriptor for HomeKitEventsError);
    v19 = swift_allocError();
    v21 = v20;
    _StringGuts.grow(_:)(35);

    *(v0 + 16) = v1;
    v22._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v22);

    *v21 = 0xD000000000000021;
    v21[1] = 0x80000001000895C0;
    (*(*(v18 - 8) + 104))(v21, enum case for HomeKitEventsError.unexpected(_:), v18);
    swift_willThrow();
    *(v0 + 144) = v19;

    return _swift_task_switch(sub_100055048, 0, 0);
  }

  else
  {
    type metadata accessor for XPCServer();
    sub_10005E474(&qword_1000AAFD8, type metadata accessor for XPCServer, &unk_100085BD8);
    static LoggedObject.logger.getter();
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = *(v0 + 40);
      v5 = swift_slowAlloc();
      *v5 = 134217984;
      *(v5 + 4) = v4;
      _os_log_impl(&_mh_execute_header, v2, v3, "Creating %ld fake event(s)", v5, 0xCu);
    }

    v7 = *(v0 + 88);
    v6 = *(v0 + 96);
    v8 = *(v0 + 80);
    v9 = *(v0 + 40);
    v23 = *(v0 + 24);

    (*(v7 + 8))(v6, v8);
    v10 = swift_task_alloc();
    *(v10 + 16) = v23;
    v11 = sub_1000366FC(sub_100047D94, v10, 0, v9);
    *(v0 + 120) = v11;

    v12 = swift_task_alloc();
    *(v0 + 128) = v12;
    *v12 = v0;
    v12[1] = sub_100054E4C;
    v13 = *(v0 + 153);
    v14 = *(v0 + 152);
    v15 = *(v0 + 48);
    v16 = *(v0 + 56);

    return sub_10005FF20(v11, v15, v16, v14, v13);
  }
}

uint64_t sub_100054E4C()
{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = sub_100054FD8;
  }

  else
  {
    v2 = sub_100054F60;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100054F60()
{
  v1 = *(v0 + 64);

  v1(0);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100054FD8()
{

  *(v0 + 144) = *(v0 + 136);

  return _swift_task_switch(sub_100055048, 0, 0);
}

uint64_t sub_100055048()
{
  v1 = v0[18];
  v2 = v0[8];
  swift_errorRetain();
  v2(v1);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1000552D0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_10000CED0(&qword_1000AAD30, &qword_100085540);
  __chkstk_darwin(v6 - 8);
  v8 = &v24 - v7;
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for XPCServer();
  sub_10005E474(&qword_1000AAFD8, type metadata accessor for XPCServer, &unk_100085BD8);
  static LoggedObject.logger.getter();
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "calling hmvutil dumpLocalDatabase()", v15, 2u);
  }

  (*(v10 + 8))(v12, v9);
  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  *(v16 + 24) = a2;

  v17 = sub_10004ED44(2, sub_10005DEE8, v16);

  if (v17)
  {
    result = swift_weakLoadStrong();
    if (result)
    {
      v19 = result;
      v20 = type metadata accessor for TaskPriority();
      v21 = *(*(v20 - 8) + 56);
      v21(v8, 1, 1, v20);
      v22 = swift_allocObject();
      *(v22 + 16) = 0;
      *(v22 + 24) = 0;
      *(v22 + 32) = v19;
      *(v22 + 40) = 0;
      sub_100080ECC(0, 0, v8, &unk_100087470, v22);

      v21(v8, 1, 1, v20);
      sub_10000D2CC(v3 + 80, v25);
      v23 = swift_allocObject();
      v23[2] = 0;
      v23[3] = 0;
      sub_1000111BC(v25, (v23 + 4));
      v23[9] = a1;
      v23[10] = a2;

      sub_100080ECC(0, 0, v8, &unk_100087480, v23);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_100055640(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a5;
  v6[3] = a6;
  v8 = swift_task_alloc();
  v6[4] = v8;
  *v8 = v6;
  v8[1] = sub_1000556EC;

  return sub_100082138(a4);
}

uint64_t sub_1000556EC(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 40) = v1;

  if (v1)
  {
    v5 = sub_10005588C;
  }

  else
  {
    *(v4 + 48) = a1;
    v5 = sub_100055814;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100055814()
{
  (*(v0 + 16))(*(v0 + 48), 0);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10005588C()
{
  v1 = v0[5];
  v2 = v0[2];
  swift_errorRetain();
  v2(0, v1);

  v3 = v0[1];

  return v3();
}

void sub_1000559AC(objc_class *a1, uint64_t a2, uint64_t a3)
{
  isa = a1;
  if (a1)
  {
    type metadata accessor for UUID();
    sub_10000CED0(&qword_1000ABEC0, &qword_100087488);
    sub_10005E474(&unk_1000AC310, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  if (a2)
  {
    v6 = _convertErrorToNSError(_:)();
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  (*(a3 + 16))(a3, isa);
}

uint64_t sub_100055AA8(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_10000CED0(&qword_1000AAD30, &qword_100085540);
  __chkstk_darwin(v8 - 8);
  v10 = &v27 - v9;
  v11 = type metadata accessor for Logger();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for XPCServer();
  sub_10005E474(&qword_1000AAFD8, type metadata accessor for XPCServer, &unk_100085BD8);
  static LoggedObject.logger.getter();
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v27 = v10;
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v15, v16, "calling hmvutil uploadEvents()", v17, 2u);
    v10 = v27;
  }

  (*(v12 + 8))(v14, v11);
  v18 = swift_allocObject();
  *(v18 + 16) = a2;
  *(v18 + 24) = a3;

  v19 = sub_10004ED44(2, sub_10005F7E8, v18);

  if (v19)
  {
    result = swift_weakLoadStrong();
    if (result)
    {
      v21 = result;
      v22 = type metadata accessor for TaskPriority();
      v23 = *(*(v22 - 8) + 56);
      v23(v10, 1, 1, v22);
      v24 = swift_allocObject();
      *(v24 + 16) = 0;
      *(v24 + 24) = 0;
      *(v24 + 32) = v21;
      *(v24 + 40) = 0;
      sub_100080ECC(0, 0, v10, &unk_100087458, v24);

      v23(v10, 1, 1, v22);
      sub_10000D2CC(v4 + 80, v28);
      v25 = swift_allocObject();
      v25[2] = 0;
      v25[3] = 0;
      sub_1000111BC(v28, (v25 + 4));
      v25[9] = a1;
      v25[10] = a2;
      v25[11] = a3;
      v26 = a1;

      sub_100080ECC(0, 0, v10, &unk_100087468, v25);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_100055E4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  return _swift_task_switch(sub_100055E70, 0, 0);
}

uint64_t sub_100055E70()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = [*(v0 + 24) integerValue];
  }

  else
  {
    v2 = 0;
  }

  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  *v3 = v0;
  v3[1] = sub_100055F50;
  v4 = *(v0 + 16);

  return sub_10000F394(v4, v2, v1 == 0);
}

uint64_t sub_100055F50()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_1000560CC;
  }

  else
  {
    v2 = sub_100056064;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100056064()
{
  (*(v0 + 32))(0);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000560CC()
{
  v1 = v0[7];
  v2 = v0[4];
  swift_errorRetain();
  v2(v1);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1000561FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v24 = a1;
  v5 = sub_10000CED0(&qword_1000AAD30, &qword_100085540);
  __chkstk_darwin(v5 - 8);
  v7 = &v23 - v6;
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for XPCServer();
  sub_10005E474(&qword_1000AAFD8, type metadata accessor for XPCServer, &unk_100085BD8);
  static LoggedObject.logger.getter();
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 134217984;
    *(v14 + 4) = v24;
    _os_log_impl(&_mh_execute_header, v12, v13, "calling hmvutil exit(%ld)", v14, 0xCu);
  }

  (*(v9 + 8))(v11, v8);
  v15 = swift_allocObject();
  *(v15 + 16) = a2;
  *(v15 + 24) = a3;

  v16 = sub_10004ED44(2, sub_10005F7E8, v15);

  if (v16)
  {
    result = swift_weakLoadStrong();
    if (result)
    {
      v18 = result;
      v19 = type metadata accessor for TaskPriority();
      v20 = *(*(v19 - 8) + 56);
      v20(v7, 1, 1, v19);
      v21 = swift_allocObject();
      *(v21 + 16) = 0;
      *(v21 + 24) = 0;
      *(v21 + 32) = v18;
      *(v21 + 40) = 0;
      sub_100080ECC(0, 0, v7, &unk_100087440, v21);

      v20(v7, 1, 1, v19);
      v22 = swift_allocObject();
      v22[2] = 0;
      v22[3] = 0;
      v22[4] = a2;
      v22[5] = a3;
      v22[6] = v24;

      sub_100080ECC(0, 0, v7, &unk_100087450, v22);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_100056570(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return _swift_task_switch(sub_100056594, 0, 0);
}

void sub_100056594()
{
  v1 = *(v0 + 32);
  (*(v0 + 16))(0);
  if (v1 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else
  {
    v2 = *(v0 + 32);
    if (v2 <= 0x7FFFFFFF)
    {
      exit(v2);
    }
  }

  __break(1u);
}

uint64_t sub_100056690(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27 = a1;
  v28 = a2;
  v6 = sub_10000CED0(&qword_1000AAD30, &qword_100085540);
  __chkstk_darwin(v6 - 8);
  v8 = &v27 - v7;
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for XPCServer();
  sub_10005E474(&qword_1000AAFD8, type metadata accessor for XPCServer, &unk_100085BD8);
  static LoggedObject.logger.getter();
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "calling hmvutil registerForTaskWithIdentifier()", v15, 2u);
  }

  (*(v10 + 8))(v12, v9);
  v16 = swift_allocObject();
  *(v16 + 16) = a3;
  *(v16 + 24) = a4;

  v17 = sub_10004ED44(2, sub_10005F7E8, v16);

  if (v17)
  {
    result = swift_weakLoadStrong();
    if (result)
    {
      v19 = result;
      v20 = type metadata accessor for TaskPriority();
      v21 = *(*(v20 - 8) + 56);
      v21(v8, 1, 1, v20);
      v22 = swift_allocObject();
      *(v22 + 16) = 0;
      *(v22 + 24) = 0;
      *(v22 + 32) = v19;
      *(v22 + 40) = 0;
      sub_100080ECC(0, 0, v8, &unk_100087418, v22);

      result = swift_weakLoadStrong();
      if (result)
      {
        sub_100024F5C(result + OBJC_IVAR____TtC11homeeventsd10MainDriver_scheduler, v31);

        v21(v8, 1, 1, v20);
        sub_100024F5C(v31, v29);
        v23 = swift_allocObject();
        *(v23 + 16) = 0;
        *(v23 + 24) = 0;
        v24 = v29[1];
        *(v23 + 32) = v29[0];
        *(v23 + 48) = v24;
        v25 = v27;
        v26 = v28;
        *(v23 + 64) = v30;
        *(v23 + 72) = v25;
        *(v23 + 80) = v26;
        *(v23 + 88) = a3;
        *(v23 + 96) = a4;

        sub_100080ECC(0, 0, v8, &unk_100087428, v23);

        return sub_10000D5CC(v31);
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

uint64_t sub_100056A54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  return _swift_task_switch(sub_100056A7C, 0, 0);
}

uint64_t sub_100056A7C()
{
  v1 = v0[5];
  sub_100047DB4(v0[3], v0[4], sub_100056B14, 0);
  v1(0);
  v2 = v0[1];

  return v2();
}

uint64_t sub_100056B14()
{
  v0 = sub_10000CED0(&qword_1000AAD30, &qword_100085540);
  __chkstk_darwin(v0 - 8);
  v2 = &v6 - v1;
  v3 = type metadata accessor for TaskPriority();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *(v4 + 24) = 0;
  return sub_10004E410(0, 0, v2, &unk_100087438, v4);
}

uint64_t sub_100056C34(uint64_t a1, int a2, uint64_t a3, void *aBlock, uint64_t a5, uint64_t a6, void (*a7)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v9 = _Block_copy(aBlock);
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;
  v13 = swift_allocObject();
  *(v13 + 16) = v9;

  a7(v10, v12, a6, v13);
}

uint64_t sub_100056CF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27 = a1;
  v28 = a2;
  v6 = sub_10000CED0(&qword_1000AAD30, &qword_100085540);
  __chkstk_darwin(v6 - 8);
  v8 = &v27 - v7;
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for XPCServer();
  sub_10005E474(&qword_1000AAFD8, type metadata accessor for XPCServer, &unk_100085BD8);
  static LoggedObject.logger.getter();
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "calling hmvutil submitTaskRequestForIdentifier()", v15, 2u);
  }

  (*(v10 + 8))(v12, v9);
  v16 = swift_allocObject();
  *(v16 + 16) = a3;
  *(v16 + 24) = a4;

  v17 = sub_10004ED44(2, sub_10005F7E8, v16);

  if (v17)
  {
    result = swift_weakLoadStrong();
    if (result)
    {
      v19 = result;
      v20 = type metadata accessor for TaskPriority();
      v21 = *(*(v20 - 8) + 56);
      v21(v8, 1, 1, v20);
      v22 = swift_allocObject();
      *(v22 + 16) = 0;
      *(v22 + 24) = 0;
      *(v22 + 32) = v19;
      *(v22 + 40) = 0;
      sub_100080ECC(0, 0, v8, &unk_100087400, v22);

      result = swift_weakLoadStrong();
      if (result)
      {
        sub_100024F5C(result + OBJC_IVAR____TtC11homeeventsd10MainDriver_scheduler, v31);

        v21(v8, 1, 1, v20);
        sub_100024F5C(v31, v29);
        v23 = swift_allocObject();
        *(v23 + 16) = 0;
        *(v23 + 24) = 0;
        v24 = v29[1];
        *(v23 + 32) = v29[0];
        *(v23 + 48) = v24;
        v25 = v27;
        v26 = v28;
        *(v23 + 64) = v30;
        *(v23 + 72) = v25;
        *(v23 + 80) = v26;
        *(v23 + 88) = a3;
        *(v23 + 96) = a4;

        sub_100080ECC(0, 0, v8, &unk_100087410, v23);

        return sub_10000D5CC(v31);
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

uint64_t sub_1000570BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[10] = a7;
  v8[11] = a8;
  v8[8] = a5;
  v8[9] = a6;
  v8[7] = a4;
  return _swift_task_switch(sub_1000570E4, 0, 0);
}

uint64_t sub_1000570E4()
{
  v2 = v0[8];
  v1 = v0[9];
  v0[5] = &type metadata for BackgroundSystemTaskRequest;
  v0[6] = &off_1000A24F0;
  v3 = swift_allocObject();
  v0[2] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  *(v3 + 32) = 16777473;
  *(v3 + 40) = xmmword_1000872F0;
  *(v3 + 56) = 0;
  *(v3 + 64) = 0;
  *(v3 + 72) = 1;
  *(v3 + 80) = 0;
  *(v3 + 88) = 1;

  sub_10004827C(v0 + 2);
  v4 = v0[10];
  sub_10000D330(v0 + 2);
  v4(0);
  v5 = v0[1];

  return v5();
}

uint64_t sub_10005724C(uint64_t a1, uint64_t a2, const char *a3, uint64_t a4, int a5, uint64_t a6)
{
  v21 = a3;
  v22 = type metadata accessor for Logger();
  v11 = *(v22 - 8);
  __chkstk_darwin(v22);
  v13 = v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for XPCServer();
  sub_10005E474(&qword_1000AAFD8, type metadata accessor for XPCServer, &unk_100085BD8);
  static LoggedObject.logger.getter();
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v20[1] = a4;
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, v21, v16, 2u);
  }

  (*(v11 + 8))(v13, v22);
  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  *(v17 + 24) = a2;

  v18 = sub_10004ED44(a5, a6, v17);

  if (v18)
  {
    return sub_1000529CC(a1, a2);
  }

  return result;
}

uint64_t sub_100057534(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v80 = a4;
  v81 = a5;
  v77 = a3;
  v9 = sub_10000CED0(&qword_1000AAD30, &qword_100085540);
  __chkstk_darwin(v9 - 8);
  v76 = &v63[-v10];
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v73 = &v63[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = __chkstk_darwin(v13);
  v72 = &v63[-v16];
  v17 = __chkstk_darwin(v15);
  v19 = &v63[-v18];
  v71 = v20;
  __chkstk_darwin(v17);
  v22 = &v63[-v21];
  v23 = type metadata accessor for Logger();
  v78 = *(v23 - 8);
  v79 = v23;
  __chkstk_darwin(v23);
  v25 = &v63[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for XPCServer();
  sub_10005E474(&qword_1000AAFD8, type metadata accessor for XPCServer, &unk_100085BD8);
  static LoggedObject.logger.getter();
  v26 = *(v12 + 16);
  v74 = a1;
  v26(v22, a1, v11);
  v27 = a2;
  v69 = v26;
  v70 = v12 + 16;
  v26(v19, a2, v11);
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.debug.getter();
  v30 = os_log_type_enabled(v28, v29);
  v75 = v12;
  if (v30)
  {
    v31 = swift_slowAlloc();
    v67 = v6;
    v32 = v31;
    v66 = swift_slowAlloc();
    v82[0] = v66;
    *v32 = 136315650;
    sub_10005E474(&qword_1000AB0D8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v68 = a2;
    v65 = v28;
    v33 = dispatch thunk of CustomStringConvertible.description.getter();
    v35 = v34;
    v64 = v29;
    v36 = *(v12 + 8);
    v36(v22, v11);
    v37 = sub_100035120(v33, v35, v82);

    *(v32 + 4) = v37;
    *(v32 + 12) = 2080;
    v27 = v68;
    v38 = dispatch thunk of CustomStringConvertible.description.getter();
    v40 = v39;
    v36(v19, v11);
    v41 = v80;
    v42 = sub_100035120(v38, v40, v82);
    LOBYTE(v40) = v77;

    *(v32 + 14) = v42;
    *(v32 + 22) = 1024;
    *(v32 + 24) = v40 & 1;
    v43 = v65;
    _os_log_impl(&_mh_execute_header, v65, v64, "calling hmvutil createEncryptionKey(%s, %s, %{BOOL}d)", v32, 0x1Cu);
    swift_arrayDestroy();

    (*(v78 + 8))(v25, v79);
  }

  else
  {

    v44 = *(v12 + 8);
    v44(v19, v11);
    v44(v22, v11);
    (*(v78 + 8))(v25, v79);
    v41 = v80;
  }

  v45 = swift_allocObject();
  *(v45 + 16) = v41;
  *(v45 + 24) = v81;

  v46 = sub_10004ED44(2, sub_10005F7E8, v45);

  if (v46)
  {
    result = swift_weakLoadStrong();
    if (result)
    {
      v48 = *(result + OBJC_IVAR____TtC11homeeventsd10MainDriver_cloudKitContainer);

      v49 = type metadata accessor for TaskPriority();
      (*(*(v49 - 8) + 56))(v76, 1, 1, v49);
      v50 = v72;
      v51 = v69;
      v69(v72, v74, v11);
      v52 = v73;
      v51(v73, v27, v11);
      v53 = v75;
      v54 = *(v75 + 80);
      v55 = (v54 + 40) & ~v54;
      v56 = (v71 + v54 + v55) & ~v54;
      v57 = v56 + v71;
      v58 = (v56 + v71) & 0xFFFFFFFFFFFFFFF8;
      v59 = swift_allocObject();
      *(v59 + 2) = 0;
      *(v59 + 3) = 0;
      *(v59 + 4) = v48;
      v60 = *(v53 + 32);
      v60(&v59[v55], v50, v11);
      v60(&v59[v56], v52, v11);
      v59[v57] = v77 & 1;
      v61 = &v59[v58];
      v62 = v81;
      *(v61 + 1) = v80;
      *(v61 + 2) = v62;

      sub_100080ECC(0, 0, v76, &unk_1000873E8, v59);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_100057BD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  *(v8 + 80) = a8;
  *(v8 + 88) = v14;
  *(v8 + 200) = a7;
  *(v8 + 64) = a5;
  *(v8 + 72) = a6;
  *(v8 + 56) = a4;
  v9 = type metadata accessor for LubyRackoffEncryptionKey();
  *(v8 + 96) = v9;
  *(v8 + 104) = *(v9 - 8);
  *(v8 + 112) = swift_task_alloc();
  v10 = type metadata accessor for UUID();
  *(v8 + 120) = v10;
  *(v8 + 128) = *(v10 - 8);
  *(v8 + 136) = swift_task_alloc();
  v11 = type metadata accessor for DatabaseConfiguration();
  *(v8 + 144) = v11;
  *(v8 + 152) = *(v11 - 8);
  *(v8 + 160) = swift_task_alloc();

  return _swift_task_switch(sub_100057D5C, 0, 0);
}

uint64_t sub_100057D5C()
{
  v2 = *(v0 + 152);
  v1 = *(v0 + 160);
  v3 = *(v0 + 144);
  v4 = *(v0 + 200);
  v5 = *(v0 + 56);
  v6 = sub_100064E70(v5);
  *(v0 + 168) = v6;
  v7 = sub_10000CED0(&qword_1000AB8B8, &qword_100086D10);
  v8 = *(v7 + 48);
  v9 = *(v7 + 64);
  *v1 = v5;
  v10 = enum case for QueryScope.owned(_:);
  Scope = type metadata accessor for QueryScope();
  (*(*(Scope - 8) + 104))(&v1[v8], v10, Scope);
  *&v1[v9] = v6;
  (*(v2 + 104))(v1, enum case for DatabaseConfiguration.unconfigured(_:), v3);
  v12 = sub_10000CED0(&qword_1000AAFF8, &qword_100085C78);
  v13 = v5;
  v14 = v6;
  v15 = SimpleAsyncCache.__allocating_init()();
  *(v0 + 40) = v12;
  *(v0 + 48) = sub_100011108();
  *(v0 + 16) = v15;
  type metadata accessor for TagEncryptionKeyController(0);
  v16 = swift_allocObject();
  *(v0 + 176) = v16;
  (*(v2 + 32))(v16 + OBJC_IVAR____TtC11homeeventsd26TagEncryptionKeyController_database, v1, v3);
  sub_1000111BC((v0 + 16), v16 + OBJC_IVAR____TtC11homeeventsd26TagEncryptionKeyController_cache);
  v17 = v16 + OBJC_IVAR____TtC11homeeventsd26TagEncryptionKeyController_qualityOfService;
  *v17 = 0;
  *(v17 + 8) = 1;
  *(v16 + OBJC_IVAR____TtC11homeeventsd26TagEncryptionKeyController_preventZoneCreation) = v4;
  v18 = swift_task_alloc();
  *(v0 + 184) = v18;
  *v18 = v0;
  v18[1] = sub_100057F94;
  v19 = *(v0 + 136);
  v20 = *(v0 + 112);
  v21 = *(v0 + 64);
  v22 = *(v0 + 72);

  return sub_100044108(v19, v20, v21, v22);
}

uint64_t sub_100057F94()
{
  v2 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {
    v3 = sub_100058208;
  }

  else
  {
    (*(v2[13] + 8))(v2[14], v2[12]);
    v3 = sub_1000580C0;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000580C0()
{
  v2 = v0[21];
  v1 = v0[22];
  v3 = v0[18];
  v4 = v0[19];
  v6 = v0[16];
  v5 = v0[17];
  v7 = v0[15];
  v8 = v0[10];
  swift_setDeallocating();
  (*(v4 + 8))(v1 + OBJC_IVAR____TtC11homeeventsd26TagEncryptionKeyController_database, v3);
  sub_10000D330((v1 + OBJC_IVAR____TtC11homeeventsd26TagEncryptionKeyController_cache));
  swift_deallocClassInstance();

  (*(v6 + 8))(v5, v7);
  v8(0);

  v9 = v0[1];

  return v9();
}

uint64_t sub_100058208()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 176);
  v3 = *(v0 + 144);
  v4 = *(v0 + 152);
  v5 = *(v0 + 80);

  swift_setDeallocating();
  (*(v4 + 8))(v2 + OBJC_IVAR____TtC11homeeventsd26TagEncryptionKeyController_database, v3);
  sub_10000D330((v2 + OBJC_IVAR____TtC11homeeventsd26TagEncryptionKeyController_cache));
  swift_deallocClassInstance();
  swift_errorRetain();
  v5(v1);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1000584D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v73 = a4;
  v72 = a3;
  v6 = sub_10000CED0(&qword_1000AAD30, &qword_100085540);
  __chkstk_darwin(v6 - 8);
  v66 = &v56[-v7];
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = v9[8];
  v11 = __chkstk_darwin(v8);
  v65 = &v56[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = __chkstk_darwin(v11);
  v64 = &v56[-v13];
  v14 = __chkstk_darwin(v12);
  v16 = &v56[-v15];
  __chkstk_darwin(v14);
  v18 = &v56[-v17];
  v19 = type metadata accessor for Logger();
  v70 = *(v19 - 8);
  v71 = v19;
  __chkstk_darwin(v19);
  v21 = &v56[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for XPCServer();
  sub_10005E474(&qword_1000AAFD8, type metadata accessor for XPCServer, &unk_100085BD8);
  static LoggedObject.logger.getter();
  v22 = v9[2];
  v61 = a1;
  v22(v18, a1, v8);
  v68 = v16;
  v23 = a2;
  v62 = v22;
  v63 = v9 + 2;
  v22(v16, a2, v8);
  v69 = v21;
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.debug.getter();
  v26 = os_log_type_enabled(v24, v25);
  v67 = v9;
  if (v26)
  {
    v27 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    v74[0] = v58;
    *v27 = 136315394;
    sub_10005E474(&qword_1000AB0D8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v59 = v10;
    v57 = v25;
    v28 = dispatch thunk of CustomStringConvertible.description.getter();
    v30 = v29;
    v60 = v23;
    v31 = v9[1];
    v31(v18, v8);
    v32 = sub_100035120(v28, v30, v74);

    *(v27 + 4) = v32;
    *(v27 + 12) = 2080;
    v33 = v68;
    v34 = dispatch thunk of CustomStringConvertible.description.getter();
    v36 = v35;
    v31(v33, v8);
    v23 = v60;
    v37 = sub_100035120(v34, v36, v74);
    v10 = v59;

    *(v27 + 14) = v37;
    _os_log_impl(&_mh_execute_header, v24, v57, "calling hmvutil deleteEncryptionKey(%s, %s)", v27, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v38 = v9[1];
    v38(v68, v8);
    v38(v18, v8);
  }

  (*(v70 + 8))(v69, v71);
  v39 = swift_allocObject();
  *(v39 + 16) = v72;
  *(v39 + 24) = v73;

  v40 = sub_10004ED44(2, sub_10005F7E8, v39);

  if (v40)
  {
    result = swift_weakLoadStrong();
    if (result)
    {
      v42 = *(result + OBJC_IVAR____TtC11homeeventsd10MainDriver_cloudKitContainer);

      v43 = type metadata accessor for TaskPriority();
      v44 = v66;
      (*(*(v43 - 8) + 56))(v66, 1, 1, v43);
      v45 = v64;
      v46 = v62;
      v62(v64, v61, v8);
      v47 = v65;
      v46(v65, v23, v8);
      v48 = v67;
      v49 = *(v67 + 80);
      v50 = (v49 + 40) & ~v49;
      v51 = (v10 + v49 + v50) & ~v49;
      v52 = swift_allocObject();
      *(v52 + 2) = 0;
      *(v52 + 3) = 0;
      *(v52 + 4) = v42;
      v53 = v48[4];
      v53(&v52[v50], v45, v8);
      v53(&v52[v51], v47, v8);
      v54 = &v52[(v10 + v51 + 7) & 0xFFFFFFFFFFFFFFF8];
      v55 = v73;
      *v54 = v72;
      v54[1] = v55;

      sub_100080ECC(0, 0, v44, &unk_1000873D8, v52);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_100058B34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[2] = a7;
  v8[3] = a8;
  v12 = swift_task_alloc();
  v8[4] = v12;
  *v12 = v8;
  v12[1] = sub_10004FDA0;

  return sub_100065094(a4, a5, a6);
}

uint64_t sub_100058D80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v43 = a2;
  v44 = a3;
  v40 = a1;
  v7 = sub_10000CED0(&qword_1000AB0C8, &qword_100085F18);
  v41 = *(v7 - 8);
  v42 = *(v41 + 64);
  __chkstk_darwin(v7 - 8);
  v9 = &v36 - v8;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v37 = v12;
  v38 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10000CED0(&qword_1000AAD30, &qword_100085540);
  __chkstk_darwin(v13 - 8);
  v39 = &v36 - v14;
  v15 = type metadata accessor for Logger();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for XPCServer();
  sub_10005E474(&qword_1000AAFD8, type metadata accessor for XPCServer, &unk_100085BD8);
  static LoggedObject.logger.getter();
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v36 = v11;
    *v21 = 0;
    _os_log_impl(&_mh_execute_header, v19, v20, "calling ensureDigests()", v21, 2u);
    v11 = v36;
  }

  (*(v16 + 8))(v18, v15);
  v22 = swift_allocObject();
  *(v22 + 16) = v44;
  *(v22 + 24) = a4;

  v23 = sub_10004ED44(2, sub_10005F7E8, v22);

  if (v23)
  {
    result = swift_weakLoadStrong();
    if (result)
    {
      v25 = result;
      v26 = type metadata accessor for TaskPriority();
      v27 = *(*(v26 - 8) + 56);
      v28 = v39;
      v27(v39, 1, 1, v26);
      v29 = swift_allocObject();
      *(v29 + 16) = 0;
      *(v29 + 24) = 0;
      *(v29 + 32) = v25;
      *(v29 + 40) = 0;
      sub_100080ECC(0, 0, v28, &unk_1000873B8, v29);

      v27(v28, 1, 1, v26);
      sub_10000D2CC(v5 + 40, v45);
      v30 = v38;
      (*(v11 + 16))(v38, v40, v10);
      sub_100013358(v43, v9, &qword_1000AB0C8, &qword_100085F18);
      v31 = (*(v11 + 80) + 72) & ~*(v11 + 80);
      v32 = (v37 + *(v41 + 80) + v31) & ~*(v41 + 80);
      v33 = (v42 + v32 + 7) & 0xFFFFFFFFFFFFFFF8;
      v34 = swift_allocObject();
      *(v34 + 16) = 0;
      *(v34 + 24) = 0;
      sub_1000111BC(v45, v34 + 32);
      (*(v11 + 32))(v34 + v31, v30, v10);
      sub_10005D170(v9, v34 + v32);
      v35 = (v34 + v33);
      *v35 = v44;
      v35[1] = a4;

      sub_100080ECC(0, 0, v28, &unk_1000873C8, v34);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1000592C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  return _swift_task_switch(sub_1000592F0, 0, 0);
}

uint64_t sub_1000592F0()
{
  sub_10000D224(*(v0 + 16), *(*(v0 + 16) + 24));
  if (dispatch thunk of FeaturesDataSource.isActivityHistory2025Enabled.getter())
  {
    v1 = swift_task_alloc();
    *(v0 + 56) = v1;
    *v1 = v0;
    v1[1] = sub_100059468;
    v3 = *(v0 + 24);
    v2 = *(v0 + 32);

    return sub_1000128C8(v3, v2);
  }

  else
  {
    sub_10005CCD4();
    v5 = swift_allocError();
    *v6 = 0xD000000000000018;
    *(v6 + 8) = 0x80000001000899C0;
    *(v6 + 16) = 0;
    swift_willThrow();
    v7 = *(v0 + 40);
    swift_errorRetain();
    v7(v5);

    v8 = *(v0 + 8);

    return v8();
  }
}

uint64_t sub_100059468()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_1000595E4;
  }

  else
  {
    v2 = sub_10005957C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10005957C()
{
  (*(v0 + 40))(0);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000595E4()
{
  v1 = v0[8];
  v2 = v0[5];
  swift_errorRetain();
  v2(v1);

  v3 = v0[1];

  return v3();
}

uint64_t sub_100059878(uint64_t a1, void (*a2)(char *, uint64_t))
{
  v4 = sub_10000CED0(&qword_1000AADD8, &qword_1000855A8);
  __chkstk_darwin(v4 - 8);
  v6 = &v9 - v5;
  v7 = type metadata accessor for URL();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  a2(v6, a1);
  return sub_10000D620(v6, &qword_1000AADD8, &qword_1000855A8);
}

uint64_t sub_100059968(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[2] = a6;
  v7[3] = a7;
  sub_10000CED0(&qword_1000AADD8, &qword_1000855A8);
  v7[4] = swift_task_alloc();
  v10 = type metadata accessor for URL();
  v7[5] = v10;
  v7[6] = *(v10 - 8);
  v11 = swift_task_alloc();
  v7[7] = v11;
  v12 = swift_task_alloc();
  v7[8] = v12;
  *v12 = v7;
  v12[1] = sub_100059AB0;

  return sub_1000134B8(v11, a4, a5);
}

uint64_t sub_100059AB0()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_100059CD0;
  }

  else
  {
    v2 = sub_100059BC4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100059BC4()
{
  v2 = v0[6];
  v1 = v0[7];
  v4 = v0[4];
  v3 = v0[5];
  v5 = v0[2];
  (*(v2 + 16))(v4, v1, v3);
  (*(v2 + 56))(v4, 0, 1, v3);
  v5(v4, 0);
  sub_10000D620(v4, &qword_1000AADD8, &qword_1000855A8);
  (*(v2 + 8))(v1, v3);

  v6 = v0[1];

  return v6();
}

uint64_t sub_100059CD0()
{
  v1 = v0[9];
  v2 = v0[4];
  v3 = v0[2];
  (*(v0[6] + 56))(v2, 1, 1, v0[5]);
  swift_errorRetain();
  v3(v2, v1);

  sub_10000D620(v2, &qword_1000AADD8, &qword_1000855A8);

  v4 = v0[1];

  return v4();
}

void sub_100059E28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10000CED0(&qword_1000AADD8, &qword_1000855A8);
  __chkstk_darwin(v6 - 8);
  v8 = &v15 - v7;
  sub_100013358(a1, &v15 - v7, &qword_1000AADD8, &qword_1000855A8);
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  v12 = 0;
  if ((*(v10 + 48))(v8, 1, v9) != 1)
  {
    URL._bridgeToObjectiveC()(v11);
    v12 = v13;
    (*(v10 + 8))(v8, v9);
  }

  if (a2)
  {
    v14 = _convertErrorToNSError(_:)();
  }

  else
  {
    v14 = 0;
  }

  (*(a3 + 16))(a3, v12, v14);
}

uint64_t sub_100059F84()
{
  type metadata accessor for XPCServer();
  sub_10005E474(&qword_1000AAFD8, type metadata accessor for XPCServer, &unk_100085BD8);
  return static LoggedObject.logger.getter();
}

uint64_t sub_100059FF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return _swift_task_switch(sub_10005A018, 0, 0);
}

uint64_t sub_10005A018()
{
  (*(v0 + 16))(*(v0 + 32));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10005A080(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 32) = a5;
  *(v5 + 16) = a4;
  return _swift_task_switch(sub_10005A0A4, a4, 0);
}

uint64_t sub_10005A0A4()
{
  v1 = *(v0 + 16);
  if (*(v1 + OBJC_IVAR____TtC11homeeventsd10MainDriver_didRecordProcessLaunchMetrics))
  {
    v2 = *(v0 + 8);

    return v2();
  }

  else
  {
    *(v1 + OBJC_IVAR____TtC11homeeventsd10MainDriver_didRecordProcessLaunchMetrics) = 1;
    v4 = swift_task_alloc();
    *(v0 + 24) = v4;
    *v4 = v0;
    v4[1] = sub_10005A18C;
    v5 = *(v0 + 32);

    return sub_100005E6C(v5, 1);
  }
}

uint64_t sub_10005A18C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_10005A280(int64_t a1, uint64_t a2)
{
  v40 = type metadata accessor for UUID();
  v4 = *(v40 - 8);
  result = __chkstk_darwin(v40);
  v39 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v41 = v6;
    v12 = _HashTable.previousHole(before:)();
    v13 = v40;
    v6 = v41;
    v14 = v11;
    v38 = (v12 + 1) & v11;
    v16 = *(v4 + 16);
    v15 = v4 + 16;
    v36 = a2 + 64;
    v37 = v16;
    v17 = *(v15 + 56);
    v35 = (v15 - 8);
    do
    {
      v18 = v17;
      v19 = v17 * v10;
      v20 = v39;
      v21 = v14;
      v22 = v15;
      v37(v39, *(v6 + 48) + v17 * v10, v13);
      sub_10005E474(&unk_1000AC310, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v23 = dispatch thunk of Hashable._rawHashValue(seed:)();
      result = (*v35)(v20, v13);
      v14 = v21;
      v24 = v23 & v21;
      if (a1 >= v38)
      {
        if (v24 >= v38 && a1 >= v24)
        {
LABEL_15:
          v6 = v41;
          v27 = *(v41 + 48);
          result = v27 + v18 * a1;
          v15 = v22;
          if (v18 * a1 < v19 || (v17 = v18, result >= v27 + v19 + v18))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v6 = v41;
            v17 = v18;
            v14 = v21;
            v8 = v36;
          }

          else
          {
            v8 = v36;
            if (v18 * a1 != v19)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v6 = v41;
              v17 = v18;
              v14 = v21;
            }
          }

          v28 = *(v6 + 56);
          v29 = (v28 + 8 * a1);
          v30 = (v28 + 8 * v10);
          if (a1 != v10 || v29 >= v30 + 1)
          {
            *v29 = *v30;
            a1 = v10;
          }

          goto LABEL_4;
        }
      }

      else if (v24 >= v38 || a1 >= v24)
      {
        goto LABEL_15;
      }

      v15 = v22;
      v8 = v36;
      v17 = v18;
      v6 = v41;
LABEL_4:
      v10 = (v10 + 1) & v14;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v31 = *(v6 + 16);
  v32 = __OFSUB__(v31, 1);
  v33 = v31 - 1;
  if (v32)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v33;
    ++*(v6 + 36);
  }

  return result;
}

uint64_t sub_10005A5A0(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      Hasher.init(_seed:)();

      String.hash(into:)();
      v10 = Hasher._finalize()();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + 16 * v3);
        v14 = (v12 + 16 * v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 32 * v3);
        v17 = (v15 + 32 * v6);
        if (v3 != v6 || v16 >= v17 + 2)
        {
          v9 = v17[1];
          *v16 = *v17;
          v16[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

void sub_10005A750(uint64_t a1, char *a2, char *a3, void (**a4)(void, void))
{
  v68 = a2;
  v7 = sub_10000CED0(&qword_1000AAD30, &qword_100085540);
  __chkstk_darwin(v7 - 8);
  v66 = &v60 - v8;
  v9 = sub_10000CED0(&qword_1000ABEC8, &qword_100087490);
  __chkstk_darwin(v9 - 8);
  v67 = &v60 - v10;
  v11 = type metadata accessor for EventWriterScope();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v63 = v14;
  v64 = &v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v60 - v15;
  v69 = type metadata accessor for Logger();
  v17 = *(v69 - 8);
  __chkstk_darwin(v69);
  v19 = &v60 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  type metadata accessor for XPCServer();
  v65 = a4;
  _Block_copy(a4);
  sub_10005E474(&qword_1000AAFD8, type metadata accessor for XPCServer, &unk_100085BD8);
  static LoggedObject.logger.getter();

  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v62 = a3;
    v24 = v16;
    v25 = v20;
    v26 = v12;
    v27 = v11;
    v28 = v23;
    *v23 = 134217984;
    *(v23 + 4) = *(a1 + 16);

    _os_log_impl(&_mh_execute_header, v21, v22, "calling createEvents(%ld events)", v28, 0xCu);
    v11 = v27;
    v12 = v26;
    v20 = v25;
    v16 = v24;
    a3 = v62;
  }

  else
  {
  }

  (*(v17 + 8))(v19, v69);
  v29 = swift_allocObject();
  *(v29 + 16) = sub_10005F7EC;
  *(v29 + 24) = v20;

  v30 = sub_10004ED44(1, sub_10005F7E8, v29);

  if ((v30 & 1) == 0)
  {
    goto LABEL_15;
  }

  v31 = v67;
  v32 = v68;
  EventWriterScope.init(rawValue:)();
  if ((*(v12 + 48))(v31, 1, v11) == 1)
  {
    sub_10000D620(v31, &qword_1000ABEC8, &qword_100087490);
    *&v70[0] = 0;
    *(&v70[0] + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(17);

    *&v70[0] = 0x2064696C61766E49;
    *(&v70[0] + 1) = 0xEF203A65706F6373;
    v71 = v32;
    v33._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v33);

    v34 = v70[0];
    sub_10005CCD4();
    swift_allocError();
    *v35 = v34;
    *(v35 + 16) = 2;
    v36 = _convertErrorToNSError(_:)();
    (v65)[2](v65, v36);

LABEL_15:

    return;
  }

  v37 = *(v12 + 32);
  v67 = (v12 + 32);
  v62 = v37;
  (v37)(v16, v31, v11);
  Strong = swift_weakLoadStrong();
  v68 = v16;
  v69 = v11;
  if (Strong)
  {
    v39 = Strong;
    v61 = type metadata accessor for TaskPriority();
    v40 = *(v61 - 8);
    v60 = *(v40 + 56);
    v65 = (v40 + 56);
    v41 = v66;
    v60(v66, 1, 1, v61);
    v42 = swift_allocObject();
    *(v42 + 16) = 0;
    *(v42 + 24) = 0;
    *(v42 + 32) = v39;
    *(v42 + 40) = 0;
    sub_100080ECC(0, 0, v41, &unk_100087568, v42);

    v43 = *(a3 + 3);
    v44 = a3;
    ObjectType = swift_getObjectType();
    v46 = *(v43 + 160);
    swift_unknownObjectRetain();
    v47 = v46(ObjectType, v43);
    v49 = v48;
    swift_unknownObjectRelease();
    if (v49)
    {
      v50 = v47;
    }

    else
    {
      v50 = 0x436E776F6E6B6E75;
    }

    if (v49)
    {
      v51 = v49;
    }

    else
    {
      v51 = 0xED0000746E65696CLL;
    }

    type metadata accessor for EventUploadRequestLogEvent();
    sub_10005F7F0(v50, v51, *(a1 + 16), 0);

    v52 = *(v44 + 15);
    v60(v41, 1, 1, v61);
    sub_10000D2CC((v44 + 40), v70);
    v53 = v64;
    v55 = v68;
    v54 = v69;
    (*(v12 + 16))(v64, v68, v69);
    v56 = (*(v12 + 80) + 88) & ~*(v12 + 80);
    v57 = (v63 + v56 + 7) & 0xFFFFFFFFFFFFFFF8;
    v58 = swift_allocObject();
    v58[2] = 0;
    v58[3] = 0;
    v58[4] = a1;
    sub_1000111BC(v70, (v58 + 5));
    v58[10] = v52;
    (v62)(v58 + v56, v53, v54);
    v59 = (v58 + v57);
    *v59 = sub_10005F7EC;
    v59[1] = v20;

    sub_100080ECC(0, 0, v66, &unk_100087578, v58);

    (*(v12 + 8))(v55, v54);
    goto LABEL_15;
  }

  _Block_release(v65);
  __break(1u);
}

void sub_10005AEF8(uint64_t a1, void (*a2)(void, void, void), int a3, int a4, int a5, void *a6, void (**a7)(void, void))
{
  v87 = a6;
  v76 = a5;
  v85 = a4;
  v86 = a3;
  v80 = a2;
  v9 = sub_10000CED0(&qword_1000AAD30, &qword_100085540);
  __chkstk_darwin(v9 - 8);
  v79 = &v75 - v10;
  v11 = sub_10000CED0(&qword_1000ABEC8, &qword_100087490);
  __chkstk_darwin(v11 - 8);
  v13 = &v75 - v12;
  v83 = type metadata accessor for EventWriterScope();
  v81 = *(v83 - 8);
  v14 = *(v81 + 64);
  v15 = __chkstk_darwin(v83);
  v75 = &v75 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v82 = &v75 - v16;
  v89 = type metadata accessor for Logger();
  v17 = *(v89 - 8);
  v18 = __chkstk_darwin(v89);
  v78 = &v75 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v22 = &v75 - v21;
  __chkstk_darwin(v20);
  v24 = &v75 - v23;
  v88 = swift_allocObject();
  *(v88 + 16) = a7;
  type metadata accessor for XPCServer();
  v84 = a7;
  v25 = a7;
  v26 = a1;
  _Block_copy(v25);
  sub_10005E474(&qword_1000AAFD8, type metadata accessor for XPCServer, &unk_100085BD8);
  static LoggedObject.logger.getter();

  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.debug.getter();
  v29 = os_log_type_enabled(v27, v28);
  v77 = v26;
  if (v29)
  {
    v30 = swift_slowAlloc();
    v31 = v26;
    v32 = v30;
    *v30 = 134217984;
    *(v30 + 4) = *(v31 + 16);

    _os_log_impl(&_mh_execute_header, v27, v28, "calling hmvutil createEvents(%ld events)", v32, 0xCu);
  }

  else
  {
  }

  v33 = *(v17 + 8);
  v33(v24, v89);
  v34 = swift_allocObject();
  v35 = v88;
  *(v34 + 16) = sub_10005F7EC;
  *(v34 + 24) = v35;

  v36 = sub_10004ED44(2, sub_10005F7E8, v34);

  if ((v36 & 1) == 0)
  {
    goto LABEL_19;
  }

  if (v86 & 1) != 0 && (v85)
  {
    static LoggedObject.logger.getter();
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&_mh_execute_header, v37, v38, "Incompatible argument flags uploadOnly and saveOnly cannot be reconciled, declining to create events", v39, 2u);
    }

    v33(v22, v89);
    v40 = 0x8000000100089A00;
    sub_10005CCD4();
    swift_allocError();
    v42 = 0xD00000000000002ELL;
LABEL_14:
    *v41 = v42;
    *(v41 + 8) = v40;
    *(v41 + 16) = 0;
    v50 = _convertErrorToNSError(_:)();
    (v84)[2](v84, v50);

LABEL_19:

    return;
  }

  v43 = v80;
  EventWriterScope.init(rawValue:)();
  v44 = v81;
  v45 = v83;
  if ((*(v81 + 48))(v13, 1, v83) == 1)
  {
    sub_10000D620(v13, &qword_1000ABEC8, &qword_100087490);
    v46 = v78;
    static LoggedObject.logger.getter();
    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      *v49 = 134217984;
      *(v49 + 4) = v43;
      _os_log_impl(&_mh_execute_header, v47, v48, "Invalid scope value: %ld", v49, 0xCu);
    }

    v33(v46, v89);
    v40 = 0x80000001000899E0;
    sub_10005CCD4();
    swift_allocError();
    v42 = 0xD000000000000013;
    goto LABEL_14;
  }

  v51 = *(v44 + 32);
  v89 = v44 + 32;
  v80 = v51;
  v51(v82, v13, v45);
  v52 = v87;
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v54 = v44;
    v55 = Strong;
    v56 = type metadata accessor for TaskPriority();
    v57 = *(v56 - 8);
    v78 = *(v57 + 56);
    v84 = (v57 + 56);
    v58 = v79;
    (v78)(v79, 1, 1, v56);
    v59 = swift_allocObject();
    *(v59 + 16) = 0;
    *(v59 + 24) = 0;
    *(v59 + 32) = v55;
    *(v59 + 40) = 0;
    sub_100080ECC(0, 0, v58, &unk_1000874B0, v59);

    v60 = v52[3];
    ObjectType = swift_getObjectType();
    v62 = *(v60 + 160);
    swift_unknownObjectRetain();
    v63 = v62(ObjectType, v60);
    v65 = v64;
    swift_unknownObjectRelease();
    if (!v65)
    {
      v63 = 0x436E776F6E6B6E75;
      v65 = 0xED0000746E65696CLL;
    }

    type metadata accessor for EventUploadRequestLogEvent();
    v66 = v77;
    sub_10005F7F0(v63, v65, *(v77 + 16), 0);

    v67 = v52[15];
    (v78)(v58, 1, 1, v56);
    sub_10000D2CC((v52 + 5), v90);
    v68 = v75;
    v69 = v83;
    (*(v54 + 16))(v75, v82, v83);
    v70 = (*(v54 + 80) + 88) & ~*(v54 + 80);
    v71 = swift_allocObject();
    v71[2] = 0;
    v71[3] = 0;
    v71[4] = v66;
    sub_1000111BC(v90, (v71 + 5));
    v71[10] = v67;
    v80(v71 + v70, v68, v69);
    v72 = v71 + v70 + v14;
    *v72 = v86 & 1;
    v72[1] = v85 & 1;
    v72[2] = v76 & 1;
    v73 = (v71 + ((v70 + v14 + 10) & 0xFFFFFFFFFFFFFFF8));
    v74 = v88;
    *v73 = sub_10005F7EC;
    v73[1] = v74;

    sub_100080ECC(0, 0, v79, &unk_1000874C0, v71);

    (*(v54 + 8))(v82, v69);
    goto LABEL_19;
  }

  _Block_release(v84);
  __break(1u);
}

void sub_10005B83C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, int a7, void *a8, void (*a9)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v91 = a8;
  v75 = a6;
  v76 = a7;
  v74 = a5;
  v85 = a4;
  v89 = a3;
  v70 = a2;
  v69 = a1;
  v84 = type metadata accessor for UUID();
  v73 = *(v84 - 8);
  __chkstk_darwin(v84);
  v71 = v9;
  v83 = &v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = type metadata accessor for Date();
  v72 = *(v81 - 8);
  __chkstk_darwin(v81);
  v68 = v10;
  v80 = &v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10000CED0(&qword_1000AAD30, &qword_100085540);
  __chkstk_darwin(v11 - 8);
  v82 = &v68 - v12;
  v13 = sub_10000CED0(&qword_1000ABEC8, &qword_100087490);
  __chkstk_darwin(v13 - 8);
  v15 = &v68 - v14;
  v16 = type metadata accessor for EventWriterScope();
  v87 = *(v16 - 8);
  v88 = v16;
  v17 = *(v87 + 64);
  v18 = __chkstk_darwin(v16);
  v79 = &v68 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v86 = &v68 - v19;
  v20 = type metadata accessor for Logger();
  v21 = *(v20 - 8);
  v22 = __chkstk_darwin(v20);
  v77 = &v68 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v25 = &v68 - v24;
  v90 = swift_allocObject();
  *(v90 + 16) = a9;
  type metadata accessor for XPCServer();
  v78 = a9;
  _Block_copy(a9);
  sub_10005E474(&qword_1000AAFD8, type metadata accessor for XPCServer, &unk_100085BD8);
  static LoggedObject.logger.getter();
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 134217984;
    *(v28 + 4) = v89;
    _os_log_impl(&_mh_execute_header, v26, v27, "calling createFakeEvents(%ld events)", v28, 0xCu);
  }

  v29 = *(v21 + 8);
  v29(v25, v20);
  v30 = swift_allocObject();
  v31 = v90;
  *(v30 + 16) = sub_10005F7EC;
  *(v30 + 24) = v31;

  v32 = sub_10004ED44(2, sub_10005F7E8, v30);

  if ((v32 & 1) == 0)
  {
    goto LABEL_12;
  }

  EventWriterScope.init(rawValue:)();
  v34 = v87;
  v33 = v88;
  if ((*(v87 + 48))(v15, 1, v88) == 1)
  {
    sub_10000D620(v15, &qword_1000ABEC8, &qword_100087490);
    v35 = v77;
    static LoggedObject.logger.getter();
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 134217984;
      *(v38 + 4) = v85;
      _os_log_impl(&_mh_execute_header, v36, v37, "Invalid scope value: %ld", v38, 0xCu);
    }

    v29(v35, v20);
    sub_10005CCD4();
    swift_allocError();
    *v39 = 0xD000000000000013;
    *(v39 + 8) = 0x80000001000899E0;
    *(v39 + 16) = 0;
    v40 = _convertErrorToNSError(_:)();
    (*(v78 + 2))(v78, v40);

LABEL_12:

    return;
  }

  v41 = *(v34 + 32);
  v85 = v34 + 32;
  v77 = v41;
  (v41)(v86, v15, v33);
  v42 = v91;
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v44 = Strong;
    v45 = type metadata accessor for TaskPriority();
    v78 = *(*(v45 - 8) + 56);
    v46 = v82;
    v78(v82, 1, 1, v45);
    v47 = swift_allocObject();
    *(v47 + 16) = 0;
    *(v47 + 24) = 0;
    *(v47 + 32) = v44;
    *(v47 + 40) = 1;
    sub_100080ECC(0, 0, v46, &unk_100087498, v47);

    v48 = v42[3];
    ObjectType = swift_getObjectType();
    v50 = *(v48 + 160);
    swift_unknownObjectRetain();
    v51 = v50(ObjectType, v48);
    v53 = v52;
    swift_unknownObjectRelease();
    if (!v53)
    {
      v51 = 0x436E776F6E6B6E75;
      v53 = 0xED0000746E65696CLL;
    }

    type metadata accessor for EventUploadRequestLogEvent();
    sub_10005F7F0(v51, v53, v89, 1);

    v91 = v42[15];
    v78(v46, 1, 1, v45);
    v54 = v72;
    (*(v72 + 16))(v80, v69, v81);
    v55 = v73;
    (*(v73 + 16))(v83, v70, v84);
    v56 = v87;
    (*(v87 + 16))(v79, v86, v88);
    v57 = (*(v54 + 80) + 32) & ~*(v54 + 80);
    v58 = (v68 + *(v55 + 80) + v57) & ~*(v55 + 80);
    v59 = (v71 + v58 + 7) & 0xFFFFFFFFFFFFFFF8;
    v60 = (v59 + 15) & 0xFFFFFFFFFFFFFFF8;
    v61 = (*(v56 + 80) + v60 + 8) & ~*(v56 + 80);
    v62 = v61 + v17;
    v63 = swift_allocObject();
    *(v63 + 16) = 0;
    *(v63 + 24) = 0;
    (*(v54 + 32))(v63 + v57, v80, v81);
    (*(v55 + 32))(v63 + v58, v83, v84);
    v64 = v88;
    *(v63 + v59) = v89;
    *(v63 + v60) = v91;
    (v77)(v63 + v61, v79, v64);
    v65 = (v63 + v62);
    *v65 = v74 & 1;
    v65[1] = v75 & 1;
    v65[2] = v76 & 1;
    v66 = (v63 + ((v62 + 10) & 0xFFFFFFFFFFFFFFF8));
    v67 = v90;
    *v66 = sub_10005F7EC;
    v66[1] = v67;

    sub_100080ECC(0, 0, v82, &unk_1000874A8, v63);

    (*(v87 + 8))(v86, v64);
    goto LABEL_12;
  }

  _Block_release(v78);
  __break(1u);
}

void sub_10005C1F0(int a1, uint64_t a2, void (**a3)(void, void, void))
{
  v76 = a1;
  v5 = sub_10000CED0(&qword_1000AADD8, &qword_1000855A8);
  v6 = __chkstk_darwin(v5 - 8);
  v72 = &v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v73 = &v67 - v9;
  v10 = __chkstk_darwin(v8);
  v69 = &v67 - v11;
  __chkstk_darwin(v10);
  v70 = &v67 - v12;
  v13 = sub_10000CED0(&qword_1000AAD30, &qword_100085540);
  __chkstk_darwin(v13 - 8);
  v15 = &v67 - v14;
  v16 = type metadata accessor for Logger();
  v17 = *(v16 - 8);
  v18 = __chkstk_darwin(v16);
  v68 = &v67 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v71 = &v67 - v21;
  __chkstk_darwin(v20);
  v23 = &v67 - v22;
  v24 = swift_allocObject();
  *(v24 + 16) = a3;
  type metadata accessor for XPCServer();
  v75 = a3;
  _Block_copy(a3);
  v74 = sub_10005E474(&qword_1000AAFD8, type metadata accessor for XPCServer, &unk_100085BD8);
  static LoggedObject.logger.getter();
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 67109120;
    *(v27 + 4) = v76 & 1;
    _os_log_impl(&_mh_execute_header, v25, v26, "calling collectDiagnostics(%{BOOL}d)", v27, 8u);
  }

  v28 = *(v17 + 8);
  v28(v23, v16);
  v29 = swift_allocObject();
  *(v29 + 16) = sub_10005CBC8;
  *(v29 + 24) = v24;

  v30 = sub_10004ED44(2, sub_10005CC08, v29);

  if ((v30 & 1) == 0)
  {
    goto LABEL_20;
  }

  v67 = v24;
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v32 = Strong;
    v33 = type metadata accessor for TaskPriority();
    v34 = *(*(v33 - 8) + 56);
    v34(v15, 1, 1, v33);
    v35 = swift_allocObject();
    *(v35 + 16) = 0;
    *(v35 + 24) = 0;
    *(v35 + 32) = v32;
    *(v35 + 40) = 0;
    sub_100080ECC(0, 0, v15, &unk_100087380, v35);

    sub_10000D2CC(a2 + 80, v78);
    sub_10000CED0(&qword_1000ABEA8, &qword_100087388);
    type metadata accessor for CoreDataDatabase();
    if (swift_dynamicCast())
    {
      v36 = [*(v77 + 16) persistentStoreCoordinator];
      if (v36)
      {
        v37 = v36;
        v34(v15, 1, 1, v33);
        v38 = swift_allocObject();
        v39 = v76 & 1;
        *(v38 + 16) = 0;
        *(v38 + 24) = 0;
        *(v38 + 32) = v39;
        *(v38 + 40) = v37;
        *(v38 + 48) = sub_10005CBC8;
        *(v38 + 56) = v67;

        sub_100080ECC(0, 0, v15, &unk_100087398, v38);

LABEL_20:

        return;
      }

      v54 = v68;
      static LoggedObject.logger.getter();
      v55 = Logger.logObject.getter();
      v56 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v55, v56))
      {
        v57 = swift_slowAlloc();
        *v57 = 0;
        _os_log_impl(&_mh_execute_header, v55, v56, "CoreDataDatabase has no coordinator", v57, 2u);
      }

      v28(v54, v16);
      v58 = type metadata accessor for URL();
      v59 = *(v58 - 8);
      v60 = v70;
      (*(v59 + 56))(v70, 1, 1, v58);
      sub_10005CCD4();
      swift_allocError();
      *v61 = 0xD000000000000023;
      *(v61 + 8) = 0x8000000100089870;
      *(v61 + 16) = 0;
      v62 = v69;
      sub_100013358(v60, v69, &qword_1000AADD8, &qword_1000855A8);
      v64 = 0;
      if ((*(v59 + 48))(v62, 1, v58) != 1)
      {
        URL._bridgeToObjectiveC()(v63);
        v64 = v65;
        (*(v59 + 8))(v62, v58);
      }

      v66 = _convertErrorToNSError(_:)();
      (v75)[2](v75, v64, v66);

      v53 = v60;
    }

    else
    {
      v40 = v71;
      static LoggedObject.logger.getter();
      v41 = Logger.logObject.getter();
      v42 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        *v43 = 0;
        _os_log_impl(&_mh_execute_header, v41, v42, "Database is not a CoreDataDatabase", v43, 2u);
      }

      v28(v40, v16);
      v44 = type metadata accessor for URL();
      v45 = *(v44 - 8);
      v46 = v73;
      (*(v45 + 56))(v73, 1, 1, v44);
      sub_10005CCD4();
      swift_allocError();
      *v47 = 0xD000000000000022;
      *(v47 + 8) = 0x8000000100089840;
      *(v47 + 16) = 0;
      v48 = v72;
      sub_100013358(v46, v72, &qword_1000AADD8, &qword_1000855A8);
      v50 = 0;
      if ((*(v45 + 48))(v48, 1, v44) != 1)
      {
        URL._bridgeToObjectiveC()(v49);
        v50 = v51;
        (*(v45 + 8))(v48, v44);
      }

      v52 = _convertErrorToNSError(_:)();
      (v75)[2](v75, v50, v52);

      v53 = v46;
    }

    sub_10000D620(v53, &qword_1000AADD8, &qword_1000855A8);
    goto LABEL_20;
  }

  _Block_release(v75);
  __break(1u);
}

uint64_t sub_10005CB90()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10005CBD0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10005CC10(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10001DBDC;

  return sub_10005A080(a1, v4, v5, v6, v7);
}

unint64_t sub_10005CCD4()
{
  result = qword_1000ABEB0;
  if (!qword_1000ABEB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ABEB0);
  }

  return result;
}

uint64_t sub_10005CD28()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10005CD70(uint64_t a1)
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
  v10[1] = sub_10001DBDC;

  return sub_100059968(a1, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_10005CE48()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10005CE90(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10001DBDC;

  return sub_100059FF4(a1, v4, v5, v6, v7, v8);
}

unint64_t sub_10005CF58()
{
  result = qword_1000AADD0;
  if (!qword_1000AADD0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000AADD0);
  }

  return result;
}

uint64_t sub_10005CFAC()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 72) & ~v3;
  v5 = v4 + *(v2 + 64);
  v6 = *(sub_10000CED0(&qword_1000AB0C8, &qword_100085F18) - 8);
  v7 = *(v6 + 80);
  v8 = (v5 + v7) & ~v7;
  v9 = *(v6 + 64);
  swift_unknownObjectRelease();
  sub_10000D330((v0 + 32));
  (*(v2 + 8))(v0 + v4, v1);
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v0 + v8, 1, v10))
  {
    (*(v11 + 8))(v0 + v8, v10);
  }

  return _swift_deallocObject(v0, ((v9 + v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 16, v3 | v7 | 7);
}

uint64_t sub_10005D170(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000CED0(&qword_1000AB0C8, &qword_100085F18);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10005D1E0(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for UUID() - 8);
  v6 = (*(v5 + 80) + 72) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = *(sub_10000CED0(&qword_1000AB0C8, &qword_100085F18) - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = (v1 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v13 = *v12;
  v14 = v12[1];
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_10001DBDC;

  return sub_1000592C8(a1, v10, v11, v1 + 32, v1 + v6, v1 + v9, v13, v14);
}

uint64_t sub_10005D380()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = (v5 + v3 + v4) & ~v3;
  v7 = (v5 + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  v8 = *(v2 + 8);
  v8(v0 + v4, v1);
  v8(v0 + v6, v1);

  return _swift_deallocObject(v0, v7 + 16, v3 | 7);
}

uint64_t sub_10005D48C(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for UUID() - 8);
  v6 = *(v5 + 80);
  v7 = (v6 + 40) & ~v6;
  v8 = *(v5 + 64);
  v9 = (v8 + v6 + v7) & ~v6;
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  v13 = (v1 + ((v8 + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v14 = *v13;
  v15 = v13[1];
  v16 = swift_task_alloc();
  *(v3 + 16) = v16;
  *v16 = v3;
  v16[1] = sub_10001DBDC;

  return sub_100058B34(a1, v10, v11, v12, v1 + v7, v1 + v9, v14, v15);
}

uint64_t sub_10005D5E0()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = (v5 + v3 + v4) & ~v3;
  v7 = (v6 + v5) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  v8 = *(v2 + 8);
  v8(v0 + v4, v1);
  v8(v0 + v6, v1);

  return _swift_deallocObject(v0, v7 + 24, v3 | 7);
}

uint64_t sub_10005D6E8(uint64_t a1)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 40) & ~v4;
  v6 = *(v3 + 64);
  v7 = (v6 + v4 + v5) & ~v4;
  v8 = v1[2];
  v9 = v1[3];
  v10 = *(v1 + v7 + v6);
  v11 = v1[4];
  v12 = *(v1 + ((v7 + v6) & 0xFFFFFFFFFFFFFFF8) + 8);
  v13 = swift_task_alloc();
  *(v2 + 16) = v13;
  *v13 = v2;
  v13[1] = sub_10001DBDC;

  return sub_100057BD0(a1, v8, v9, v11, v1 + v5, v1 + v7, v10, v12);
}

uint64_t sub_10005D86C()
{
  swift_unknownObjectRelease();

  sub_10000D330((v0 + 56));

  return _swift_deallocObject(v0, 96, 7);
}

uint64_t sub_10005D8BC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10001DBDC;

  return sub_100081664(a1, v4, v5, v6, v7, v8, (v1 + 7));
}

uint64_t sub_10005D994(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[9];
  v7 = v1[10];
  v8 = v1[11];
  v9 = v1[12];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10001DBDC;

  return sub_1000570BC(a1, v4, v5, (v1 + 4), v6, v7, v8, v9);
}

uint64_t sub_10005DA6C()
{

  return _swift_deallocObject(v0, 89, 7);
}

uint64_t sub_10005DAA8()
{
  swift_unknownObjectRelease();
  sub_10000D330((v0 + 32));

  return _swift_deallocObject(v0, 104, 7);
}

uint64_t sub_10005DAF8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[9];
  v7 = v1[10];
  v8 = v1[11];
  v9 = v1[12];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10001DBDC;

  return sub_100056A54(a1, v4, v5, (v1 + 4), v6, v7, v8, v9);
}

uint64_t sub_10005DBD0()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10005DC08()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000D130;

  return sub_100034FA8();
}

uint64_t sub_10005DCB4()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10005DCF4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10001DBDC;

  return sub_100056570(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_10005DDBC()
{
  swift_unknownObjectRelease();
  sub_10000D330((v0 + 32));

  return _swift_deallocObject(v0, 96, 7);
}

uint64_t sub_10005DE0C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[9];
  v7 = v1[10];
  v8 = v1[11];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10001DBDC;

  return sub_100055E4C(a1, v4, v5, (v1 + 4), v6, v7, v8);
}

uint64_t sub_10005DF18()
{
  swift_unknownObjectRelease();
  sub_10000D330((v0 + 32));

  return _swift_deallocObject(v0, 88, 7);
}

uint64_t sub_10005DF60(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[9];
  v7 = v1[10];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10001DBDC;

  return sub_100055640(a1, v4, v5, (v1 + 4), v6, v7);
}

uint64_t sub_10005E024()
{
  v17 = type metadata accessor for Date();
  v1 = *(v17 - 8);
  v2 = *(v1 + 80);
  v15 = (v2 + 32) & ~v2;
  v3 = *(v1 + 64);
  v16 = type metadata accessor for UUID();
  v4 = *(v16 - 8);
  v5 = *(v4 + 80);
  v6 = (v15 + v3 + v5) & ~v5;
  v7 = (((*(v4 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = type metadata accessor for EventWriterScope();
  v9 = *(v8 - 8);
  v10 = *(v9 + 80);
  v11 = (v7 + v10 + 8) & ~v10;
  v12 = v2 | v5 | v10;
  v13 = (*(v9 + 64) + v11 + 10) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v1 + 8))(v0 + v15, v17);
  (*(v4 + 8))(v0 + v6, v16);

  (*(v9 + 8))(v0 + v11, v8);

  return _swift_deallocObject(v0, v13 + 16, v12 | 7);
}

uint64_t sub_10005E234(uint64_t a1)
{
  v3 = v2;
  v4 = *(type metadata accessor for Date() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v4 + 64);
  v7 = *(type metadata accessor for UUID() - 8);
  v8 = (v5 + v6 + *(v7 + 80)) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(type metadata accessor for EventWriterScope() - 8);
  v12 = (v10 + *(v11 + 80) + 8) & ~*(v11 + 80);
  v13 = *(v1 + 24);
  v16 = *(v1 + 16);
  v17 = *(v1 + v10);
  v18 = *(v1 + v9);
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_10001DBDC;

  return sub_100054834(a1, v16, v13, v1 + v5, v1 + v8, v18, v17, v1 + v12);
}

uint64_t sub_10005E474(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10005E4BC()
{
  v1 = type metadata accessor for EventWriterScope();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 88) & ~v3;
  v5 = (*(v2 + 64) + v4 + 10) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  sub_10000D330((v0 + 40));

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

uint64_t sub_10005E5B0(uint64_t a1)
{
  v3 = *(type metadata accessor for EventWriterScope() - 8);
  v4 = (*(v3 + 80) + 88) & ~*(v3 + 80);
  v10 = v1[3];
  v11 = v1[2];
  v5 = v1[4];
  v6 = v1[10];
  v7 = *(v1 + v4 + *(v3 + 64));
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10001DBDC;

  return sub_100053D2C(a1, v11, v10, v5, (v1 + 5), v6, v1 + v4, v7);
}

uint64_t sub_10005E71C()
{
  swift_unknownObjectRelease();
  sub_10000D330((v0 + 32));

  return _swift_deallocObject(v0, 96, 7);
}

uint64_t sub_10005E76C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[9];
  v7 = v1[10];
  v8 = v1[11];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10001DBDC;

  return sub_100053BB8(a1, v4, v5, (v1 + 4), v6, v7, v8);
}

uint64_t sub_10005E844(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 88);
  v9 = *(v1 + 96);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10001DBDC;

  return sub_100053648(a1, v4, v5, v6, v7, v1 + 48, v8, v9);
}

uint64_t sub_10005E95C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10005E9A4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10001DBDC;

  return sub_1000530BC(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_10005EA78()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 72) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  sub_10000D330((v0 + 32));
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

uint64_t sub_10005EB5C(uint64_t a1)
{
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = (*(v4 + 80) + 72) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = (v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_10001DBDC;

  return sub_1000523E8(a1, v6, v7, v1 + 32, v1 + v5, v9, v10);
}

uint64_t sub_10005EC98()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10005ECEC()
{
  swift_unknownObjectRelease();
  sub_10000D330((v0 + 32));

  sub_10000D330((v0 + 96));

  return _swift_deallocObject(v0, 152, 7);
}

uint64_t sub_10005ED4C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 72);
  v7 = *(v1 + 80);
  v8 = *(v1 + 88);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10001DBDC;

  return sub_10005159C(a1, v4, v5, v1 + 32, v6, v7, v8, v1 + 96);
}

uint64_t sub_10005EE38(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = *(v2 + 32);
  v9 = *(v2 + 40);
  v10 = *(v2 + 48);
  v11 = *(v2 + 56);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_10000D130;

  return sub_100017CD8(a1, a2, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_10005EF18()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = v3 | v8;
  v11 = (((((*(v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v11 + 16, v10 | 7);
}

uint64_t sub_10005F098(uint64_t a1)
{
  v3 = *(type metadata accessor for Date() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for UUID() - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = (*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v1 + v8);
  v11 = *(v1 + v9);
  v12 = *(v1 + 16);
  v13 = *(v1 + 24);
  v14 = *(v1 + ((v9 + 15) & 0xFFFFFFFFFFFFFFF8));
  v15 = swift_task_alloc();
  *(v2 + 16) = v15;
  *v15 = v2;
  v15[1] = sub_10001DBDC;

  return sub_10005055C(a1, v12, v13, v1 + v4, v1 + v7, v10, v11, v14);
}

uint64_t sub_10005F254()
{
  v1 = type metadata accessor for EventWriterScope();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 88) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  sub_10000D330((v0 + 40));

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

uint64_t sub_10005F348(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for EventWriterScope() - 8);
  v6 = (*(v5 + 80) + 88) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = v1[10];
  v11 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_10001DBDC;

  return sub_10004FCC8(a1, v7, v8, v9, (v1 + 5), v10, v1 + v6, v11);
}

uint64_t sub_10005F49C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 41, 7);
}

uint64_t sub_10005F4DC()
{
  swift_unknownObjectRelease();

  sub_10000D330((v0 + 48));

  return _swift_deallocObject(v0, 104, 7);
}

uint64_t sub_10005F52C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 88);
  v9 = *(v1 + 96);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10001DBDC;

  return sub_10004F964(a1, v4, v5, v6, v7, v1 + 48, v8, v9);
}

void *sub_10005F608(void *result, uint64_t a2)
{
  if (result)
  {
    v2 = result;
  }

  return result;
}

uint64_t sub_10005F654(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_10005F69C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_10005F7F0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = objc_allocWithZone(v5);
  v15 = &v14[OBJC_IVAR____TtC11homeeventsd26EventUploadRequestLogEvent_clientName];
  *v15 = a1;
  v15[1] = a2;
  *&v14[OBJC_IVAR____TtC11homeeventsd26EventUploadRequestLogEvent_numEventsToUpload] = a3;
  v14[OBJC_IVAR____TtC11homeeventsd26EventUploadRequestLogEvent_attributedToFakeData] = a4;
  v41.receiver = v14;
  v41.super_class = v5;

  v16 = objc_msgSendSuper2(&v41, "init");
  type metadata accessor for MetricsManager();
  static MetricsManager.sharedInstance.getter();
  v17 = v16;
  MetricsManager.submitLogEvent(_:error:)();

  sub_10005FE8C();
  static LoggedObject.logger.getter();
  v18 = v17;
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.info.getter();

  if (!os_log_type_enabled(v19, v20))
  {

    return (*(v11 + 8))(v13, v10);
  }

  v21 = swift_slowAlloc();
  v37 = swift_slowAlloc();
  v40 = v37;
  v38 = v21;
  *v21 = 136315138;
  v22 = sub_10005FB60();
  v23 = *(v22 + 16);
  if (!v23)
  {
    v24 = _swiftEmptyArrayStorage;
    goto LABEL_7;
  }

  HIDWORD(v32) = v20;
  v33 = v18;
  v34 = v11;
  v35 = v10;
  v24 = sub_100032ABC(v23, 0);
  v36 = sub_100033338(&v39, v24 + 4, v23, v22);
  v25 = v39;

  sub_1000123C4(v25);
  if (v36 == v23)
  {
    v11 = v34;
    v10 = v35;
    v18 = v33;
    LOBYTE(v20) = BYTE4(v32);
LABEL_7:
    v39 = v24;
    sub_100011900(&v39);

    sub_10000CED0(&unk_1000AB050, &unk_100085CF0);
    v26 = Array.description.getter();
    v28 = v27;

    v29 = sub_100035120(v26, v28, &v40);

    v30 = v38;
    *(v38 + 1) = v29;
    _os_log_impl(&_mh_execute_header, v19, v20, "Submitted EventUploadRequestLogEvent: %s", v30, 0xCu);
    sub_10000D330(v37);

    return (*(v11 + 8))(v13, v10);
  }

  __break(1u);

  __break(1u);
  return result;
}

unint64_t sub_10005FB60()
{
  sub_10000CED0(&unk_1000AB060, &unk_100085D00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100085D10;
  *(inited + 32) = 0x65757165526D756ELL;
  *(inited + 40) = 0xEB00000000737473;
  *(inited + 48) = [objc_allocWithZone(NSNumber) initWithInteger:1];
  *(inited + 56) = 0x614E746E65696C63;
  *(inited + 64) = 0xEA0000000000656DLL;
  v2 = objc_allocWithZone(NSString);
  v3 = String._bridgeToObjectiveC()();
  v4 = [v2 initWithString:v3];

  *(inited + 72) = v4;
  *(inited + 80) = 0xD000000000000011;
  *(inited + 88) = 0x8000000100089AF0;
  *(inited + 96) = [objc_allocWithZone(NSNumber) initWithInteger:*(v0 + OBJC_IVAR____TtC11homeeventsd26EventUploadRequestLogEvent_numEventsToUpload)];
  *(inited + 104) = 0xD000000000000014;
  *(inited + 112) = 0x8000000100088B40;
  *(inited + 120) = [objc_allocWithZone(NSNumber) initWithBool:*(v0 + OBJC_IVAR____TtC11homeeventsd26EventUploadRequestLogEvent_attributedToFakeData)];
  v5 = sub_1000806CC(inited);
  swift_setDeallocating();
  sub_10000CED0(&qword_1000AB3B0, &qword_100086230);
  swift_arrayDestroy();
  return v5;
}

unint64_t sub_10005FE8C()
{
  result = qword_1000ABF28;
  if (!qword_1000ABF28)
  {
    type metadata accessor for EventUploadRequestLogEvent();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ABF28);
  }

  return result;
}

uint64_t sub_10005FEE0()
{
  type metadata accessor for XPCServer();
  sub_10000E874();
  return static LoggedObject.logger.getter();
}

uint64_t sub_10005FF20(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5)
{
  *(v5 + 129) = a5;
  *(v5 + 128) = a4;
  *(v5 + 24) = a2;
  *(v5 + 32) = a3;
  *(v5 + 16) = a1;
  v6 = type metadata accessor for Logger();
  *(v5 + 40) = v6;
  *(v5 + 48) = *(v6 - 8);
  *(v5 + 56) = swift_task_alloc();
  *(v5 + 64) = swift_task_alloc();
  *(v5 + 72) = swift_task_alloc();

  return _swift_task_switch(sub_100060004, 0, 0);
}

uint64_t sub_100060004()
{
  if (*(v0 + 128) == 1)
  {
    type metadata accessor for XPCServer();
    sub_10000E874();
    static LoggedObject.logger.getter();
    v1 = Logger.logObject.getter();
    v2 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v1, v2))
    {
      v3 = swift_slowAlloc();
      *v3 = 0;
      _os_log_impl(&_mh_execute_header, v1, v2, "Asked to upload only, skipping local database save", v3, 2u);
    }

    v4 = *(v0 + 72);
    v5 = *(v0 + 40);
    v6 = *(v0 + 48);
    v7 = *(v0 + 24);

    (*(v6 + 8))(v4, v5);

    return _swift_task_switch(sub_1000601B0, v7, 0);
  }

  else
  {
    v8 = swift_task_alloc();
    *(v0 + 112) = v8;
    *v8 = v0;
    v8[1] = sub_100060660;
    v9 = *(v0 + 32);
    v10 = *(v0 + 16);

    return sub_10002869C(v10, v9);
  }
}

uint64_t sub_1000601B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(*(v3 + 24) + 208);
  *(v3 + 80) = v4;
  if (v4)
  {

    v4 = sub_10006022C;
    a2 = 0;
    a3 = 0;
  }

  else
  {
    __break(1u);
  }

  return _swift_task_switch(v4, a2, a3);
}

uint64_t sub_10006022C()
{
  v1 = v0[10];
  v2 = v0[4];
  v3 = v0[2];
  v4 = swift_task_alloc();
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  v5 = sub_100036514(sub_100060A88, v4, v3);

  sub_10000CED0(&qword_1000ABF30, &qword_100087728);
  v6 = (sub_10000CED0(&qword_1000ABF38, &qword_100087F40) - 8);
  v7 = (*(*v6 + 80) + 32) & ~*(*v6 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_100085330;
  v9 = v8 + v7;
  v10 = v6[14];
  v11 = type metadata accessor for EventWriterScope();
  (*(*(v11 - 8) + 16))(v9, v2, v11);
  *(v9 + v10) = v5;
  v12 = sub_1000809B8(v8);
  v0[11] = v12;
  swift_setDeallocating();
  sub_100060AA8(v9);
  swift_deallocClassInstance();
  v13 = swift_task_alloc();
  v0[12] = v13;
  *v13 = v0;
  v13[1] = sub_100060434;

  return sub_10006C0E8(v12);
}

uint64_t sub_100060434()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_1000605D0;
  }

  else
  {

    v2 = sub_100060550;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100060550()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000605D0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100060660()
{
  v2 = *v1;
  *(v2 + 120) = v0;

  if (v0)
  {

    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return _swift_task_switch(sub_1000607BC, 0, 0);
  }
}

uint64_t sub_1000607BC()
{
  v1 = *(v0 + 129);
  type metadata accessor for XPCServer();
  sub_10000E874();
  if (v1 == 1)
  {
    static LoggedObject.logger.getter();
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.info.getter();
    v4 = os_log_type_enabled(v2, v3);
    v5 = *(v0 + 64);
    v6 = *(v0 + 40);
    v7 = *(v0 + 48);
    if (v4)
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "Asked to save only, skipping cloud upload request", v8, 2u);
    }

    (*(v7 + 8))(v5, v6);

    v9 = *(v0 + 8);

    return v9();
  }

  else
  {
    static LoggedObject.logger.getter();
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "Requesting background upload of events to CloudKit database", v13, 2u);
    }

    v15 = *(v0 + 48);
    v14 = *(v0 + 56);
    v16 = *(v0 + 40);
    v17 = *(v0 + 24);

    (*(v15 + 8))(v14, v16);

    return _swift_task_switch(sub_1000609E8, v17, 0);
  }
}

uint64_t sub_1000609E8()
{
  sub_100028B58(0, 1);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100060AA8(uint64_t a1)
{
  v2 = sub_10000CED0(&qword_1000ABF38, &qword_100087F40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_100060B20()
{
  v1 = v0;
  v2 = *v0;
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000133C0((v0 + 2), v13);
  sub_10000D224(v13, v13[3]);
  v7 = dispatch thunk of FeaturesDataSource.isActivityHistory2025Enabled.getter();
  sub_10000D330(v13);
  if (v7)
  {
    os_unfair_lock_lock((v1 + 96));
    sub_100061450((v1 + 104), v1, v2);
    os_unfair_lock_unlock((v1 + 96));
  }

  else
  {
    sub_1000630B4(&qword_1000ABCA0, v8, type metadata accessor for EventDigestController, &unk_1000877F8);
    static LoggedObject.logger.getter();
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "Refusing to start as feature flag is disabled", v11, 2u);
    }

    (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_100060D54()
{
  sub_1000133C0(v0[7] + 16, (v0 + 2));
  sub_10000D224(v0 + 2, v0[5]);
  v1 = dispatch thunk of FeaturesDataSource.isActivityHistory2025Enabled.getter();
  sub_10000D330(v0 + 2);
  if (v1)
  {
    v2 = v0[7];
    os_unfair_lock_lock((v2 + 96));
    v3 = *(v2 + 104);
    v0[8] = v3;

    os_unfair_lock_unlock((v2 + 96));
    if (v3)
    {
      v4 = swift_task_alloc();
      v0[9] = v4;
      v5 = sub_10000CED0(&unk_1000AAB08, &qword_1000853D0);
      *v4 = v0;
      v4[1] = sub_100061000;

      return Task.value.getter(v0 + 11, v3, &type metadata for Bool, v5, &protocol self-conformance witness table for Error);
    }

    v6 = type metadata accessor for HomeKitEventsError();
    sub_1000630B4(&qword_1000ABA30, 255, &type metadata accessor for HomeKitEventsError, &protocol conformance descriptor for HomeKitEventsError);
    v7 = swift_allocError();
    v9 = v10;
    strcpy(v10, "Never started");
    *(v10 + 14) = -4864;
  }

  else
  {
    v6 = type metadata accessor for HomeKitEventsError();
    sub_1000630B4(&qword_1000ABA30, 255, &type metadata accessor for HomeKitEventsError, &protocol conformance descriptor for HomeKitEventsError);
    v7 = swift_allocError();
    v9 = v8;
    *v8 = 0xD000000000000018;
    v8[1] = 0x8000000100089BD0;
  }

  (*(*(v6 - 8) + 104))(v9, enum case for HomeKitEventsError.unexpected(_:), v6);
  v11 = v0[1];

  return v11(v7, 1);
}

uint64_t sub_100061000()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_10006117C;
  }

  else
  {
    v2 = sub_100061114;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100061114()
{

  v1 = *(v0 + 88);
  v2 = *(v0 + 8);

  return v2(v1, 0);
}

uint64_t sub_10006117C()
{
  v1 = *(v0 + 80);

  v2 = *(v0 + 8);

  return v2(v1, 1);
}

uint64_t sub_1000611F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = sub_10000CED0(&qword_1000AAD30, &qword_100085540);
  __chkstk_darwin(v9 - 8);
  v11 = v23 - v10;
  sub_10001DA7C(a3, v23 - v10);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_10000D620(v11, &qword_1000AAD30, &qword_100085540);
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

      if (v18 | v16)
      {
        v24[0] = 0;
        v24[1] = 0;
        v20 = v24;
        v24[2] = v16;
        v24[3] = v18;
      }

      else
      {
        v20 = 0;
      }

      v23[1] = 7;
      v23[2] = v20;
      v23[3] = v19;
      v21 = swift_task_create();

      return v21;
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

  if (v18 | v16)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v16;
    v24[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_100061450(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10000CED0(&qword_1000AAD30, &qword_100085540);
  __chkstk_darwin(v6 - 8);
  v8 = v21 - v7;
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  result = __chkstk_darwin(v9);
  v14 = v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*a1)
  {
    sub_1000630B4(&qword_1000ABCA0, v12, type metadata accessor for EventDigestController, &unk_1000877F8);
    static LoggedObject.logger.getter();
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v21[1] = v3;
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "Starting", v17, 2u);
    }

    (*(v10 + 8))(v14, v9);
    v18 = type metadata accessor for TaskPriority();
    (*(*(v18 - 8) + 56))(v8, 1, 1, v18);
    v19 = swift_allocObject();
    v19[2] = 0;
    v19[3] = 0;
    v19[4] = a2;

    v20 = sub_1000611F8(0, 0, v8, &unk_100087838, v19, &type metadata for Bool);
    result = sub_10000D620(v8, &qword_1000AAD30, &qword_100085540);
    *a1 = v20;
  }

  return result;
}

uint64_t sub_1000616FC()
{
  sub_10001341C(v0 + 16);
  sub_10000D330((v0 + 56));
  sub_100063084(v0 + 104);

  return swift_deallocClassInstance();
}

char *sub_100061768()
{
  if (&swift_runtimeSupportsNoncopyableTypes)
  {
    return sub_10000CED0(&qword_1000ABFF0, &qword_100087788);
  }

  else
  {
    return &type metadata for () + 8;
  }
}

uint64_t sub_1000617A4(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
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

uint64_t sub_100061800(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_100061870(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_100061904;

  return sub_100061A78();
}

uint64_t sub_100061904(char a1)
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
    *(v4 + 32) = a1 & 1;

    return _swift_task_switch(sub_100061A54, 0, 0);
  }
}

uint64_t sub_100061A78()
{
  v1[2] = v0;
  v1[3] = *v0;
  v2 = type metadata accessor for Logger();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();

  return _swift_task_switch(sub_100061BB4, 0, 0);
}

uint64_t sub_100061BB4(uint64_t a1, uint64_t a2)
{
  v2[14] = sub_1000630B4(&qword_1000ABCA0, a2, type metadata accessor for EventDigestController, &unk_1000877F8);
  static LoggedObject.logger.getter();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Running", v5, 2u);
  }

  v6 = v2[13];
  v7 = v2[4];
  v8 = v2[5];

  v9 = *(v8 + 8);
  v2[15] = v9;
  v9(v6, v7);
  static LoggedObject.logger.getter();
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "Preparing", v12, 2u);
  }

  v13 = v2[12];
  v14 = v2[4];
  v15 = v2[2];

  v9(v13, v14);
  sub_10000D224((v15 + 56), *(v15 + 80));
  v16 = swift_task_alloc();
  v2[16] = v16;
  *v16 = v2;
  v16[1] = sub_100061DFC;

  return sub_10000EB14();
}

uint64_t sub_100061DFC()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 8);

    return v3(0);
  }

  else
  {

    return _swift_task_switch(sub_100061FA0, 0, 0);
  }
}

uint64_t sub_100061FA0()
{
  static LoggedObject.logger.getter();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Creating", v3, 2u);
  }

  v4 = v0[15];
  v5 = v0[11];
  v6 = v0[4];
  v7 = v0[2];

  v4(v5, v6);
  sub_10000D224((v7 + 56), *(v7 + 80));
  v8 = _s15DefaultDelegateCMa(0);
  v0[17] = v8;
  v9 = swift_task_alloc();
  v0[18] = v9;
  *v9 = v0;
  v9[1] = sub_10006219C;

  return (sub_10002EE24)(v8, &off_1000A2F40);
}

uint64_t sub_10006219C(char a1)
{
  v3 = *v2;
  *(v3 + 200) = a1;
  *(v3 + 152) = v1;

  if (v1)
  {
    v4 = sub_100062DBC;
  }

  else
  {
    v4 = sub_1000622B4;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1000622B4()
{
  if (*(v0 + 200) == 1)
  {
    static LoggedObject.logger.getter();
    v1 = Logger.logObject.getter();
    v2 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v1, v2))
    {
      v3 = swift_slowAlloc();
      *v3 = 0;
      _os_log_impl(&_mh_execute_header, v1, v2, "Publishing", v3, 2u);
    }

    v4 = *(v0 + 120);
    v5 = *(v0 + 80);
    v6 = *(v0 + 32);
    v7 = *(v0 + 16);

    v4(v5, v6);
    sub_10000D224((v7 + 56), *(v7 + 80));
    v8 = swift_task_alloc();
    *(v0 + 160) = v8;
    *v8 = v0;
    v8[1] = sub_1000625D4;
    v9 = *(v0 + 136);

    return (sub_100034CDC)(v9, &off_1000A2F40);
  }

  else
  {
    static LoggedObject.logger.getter();
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "Cleaning up", v13, 2u);
    }

    v14 = *(v0 + 120);
    v15 = *(v0 + 72);
    v16 = *(v0 + 32);
    v17 = *(v0 + 16);

    v14(v15, v16);
    sub_10000D224((v17 + 56), *(v17 + 80));
    v18 = swift_task_alloc();
    *(v0 + 176) = v18;
    *v18 = v0;
    v18[1] = sub_100062844;

    return sub_100082738();
  }
}

uint64_t sub_1000625D4()
{
  *(*v1 + 168) = v0;

  if (v0)
  {
    v2 = sub_100062F20;
  }

  else
  {
    v2 = sub_1000626E8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000626E8()
{
  static LoggedObject.logger.getter();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Cleaning up", v3, 2u);
  }

  v4 = v0[15];
  v5 = v0[9];
  v6 = v0[4];
  v7 = v0[2];

  v4(v5, v6);
  sub_10000D224((v7 + 56), *(v7 + 80));
  v8 = swift_task_alloc();
  v0[22] = v8;
  *v8 = v0;
  v8[1] = sub_100062844;

  return sub_100082738();
}

uint64_t sub_100062844()
{

  return _swift_task_switch(sub_100062940, 0, 0);
}

uint64_t sub_100062940()
{
  static LoggedObject.logger.getter();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 200);
    v4 = swift_slowAlloc();
    *v4 = 67109120;
    *(v4 + 4) = v3;
    _os_log_impl(&_mh_execute_header, v1, v2, "Finished with result: %{BOOL}d", v4, 8u);
  }

  v5 = *(v0 + 120);
  v6 = *(v0 + 64);
  v7 = *(v0 + 32);

  v5(v6, v7);

  v8 = *(v0 + 8);
  v9 = *(v0 + 200);

  return v8(v9);
}

uint64_t sub_100062AD0()
{

  return _swift_task_switch(sub_100062BCC, 0, 0);
}

uint64_t sub_100062BCC()
{
  static LoggedObject.logger.getter();
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
    _os_log_impl(&_mh_execute_header, v1, v2, "Finished with error: %@", v3, 0xCu);
    sub_10000D620(v4, &unk_1000AB7D0, &qword_100085510);
  }

  v6 = v0[15];
  v7 = v0[6];
  v8 = v0[4];

  v6(v7, v8);
  swift_willThrow();

  v9 = v0[1];

  return v9(0);
}

uint64_t sub_100062DBC()
{
  v0[23] = v0[19];
  static LoggedObject.logger.getter();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Cleaning up after error", v3, 2u);
  }

  v4 = v0[15];
  v5 = v0[7];
  v6 = v0[4];
  v7 = v0[2];

  v4(v5, v6);
  sub_10000D224((v7 + 56), *(v7 + 80));
  v8 = swift_task_alloc();
  v0[24] = v8;
  *v8 = v0;
  v8[1] = sub_100062AD0;

  return sub_100082738();
}

uint64_t sub_100062F20()
{
  v0[23] = v0[21];
  static LoggedObject.logger.getter();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Cleaning up after error", v3, 2u);
  }

  v4 = v0[15];
  v5 = v0[7];
  v6 = v0[4];
  v7 = v0[2];

  v4(v5, v6);
  sub_10000D224((v7 + 56), *(v7 + 80));
  v8 = swift_task_alloc();
  v0[24] = v8;
  *v8 = v0;
  v8[1] = sub_100062AD0;

  return sub_100082738();
}

uint64_t sub_1000630B4(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_1000630FC()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10006313C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10000D130;

  return sub_100061870(a1);
}

void sub_1000631F0(uint64_t a1, void *a2, void *a3)
{
  sub_10000D224((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v4 = a3;
    sub_10000CED0(&qword_1000ABFF8, &qword_100087868);
    CheckedContinuation.resume(throwing:)();
  }

  else
  {
    sub_10000CED0(&qword_1000ABFF8, &qword_100087868);
    CheckedContinuation.resume(returning:)();
  }
}

uint64_t sub_100063294(uint64_t a1)
{
  v1[25] = a1;
  v2 = sub_10000CED0(&qword_1000ABFF8, &qword_100087868);
  v1[26] = v2;
  v1[27] = *(v2 - 8);
  v1[28] = swift_task_alloc();

  return _swift_task_switch(sub_100063360, 0, 0);
}

uint64_t sub_100063360()
{
  v1 = v0;
  v2 = v0;
  v3 = v0 + 2;
  v4 = v0 + 10;
  v5 = v0 + 22;
  v7 = v0[27];
  v6 = v0[28];
  v8 = v0[26];
  v12 = v1[25];
  v1[2] = v2;
  v1[7] = v5;
  v1[3] = sub_100063524;
  swift_continuation_init();
  v1[17] = v8;
  v9 = sub_10000CF2C(v1 + 14);
  type metadata accessor for CKAccountStatus(0);
  v1[29] = v10;
  sub_10000CED0(&unk_1000AAB08, &qword_1000853D0);
  CheckedContinuation.init(continuation:function:)();
  (*(v7 + 32))(v9, v6, v8);
  v1[10] = _NSConcreteStackBlock;
  v1[11] = 1107296256;
  v1[12] = sub_1000631F0;
  v1[13] = &unk_1000A3FD8;
  [v12 accountStatusWithCompletionHandler:v4];
  (*(v7 + 8))(v9, v8);

  return _swift_continuation_await(v3);
}

uint64_t sub_100063524()
{
  v1 = *(*v0 + 48);
  *(*v0 + 240) = v1;
  if (v1)
  {
    v2 = sub_100063854;
  }

  else
  {
    v2 = sub_100063634;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100063634()
{
  v1 = v0[22];
  if (v1 <= 1)
  {
    if (v1)
    {
      if (v1 == 1)
      {

        v2 = v0[1];
        goto LABEL_15;
      }

      goto LABEL_12;
    }

LABEL_9:
    _StringGuts.grow(_:)(25);
    v0[20] = 0;
    v0[21] = 0xE000000000000000;
    v3._object = 0x8000000100089C30;
    v3._countAndFlagsBits = 0xD000000000000017;
    String.append(_:)(v3);
    v0[24] = v1;
    _print_unlocked<A, B>(_:_:)();
    v4 = v0[20];
    v5 = v0[21];
LABEL_13:
    sub_1000638E0();
    swift_allocError();
    *v9 = v4;
    v9[1] = v5;
    goto LABEL_14;
  }

  switch(v1)
  {
    case 2:
      sub_1000638E0();
      swift_allocError();
      *v6 = xmmword_100087850;
      break;
    case 3:
      sub_1000638E0();
      swift_allocError();
      *v7 = 0;
      v7[1] = 0;
      break;
    case 4:
      goto LABEL_9;
    default:
LABEL_12:
      _StringGuts.grow(_:)(28);
      v0[18] = 0;
      v0[19] = 0xE000000000000000;
      v8._countAndFlagsBits = 0xD00000000000001ALL;
      v8._object = 0x8000000100089C10;
      String.append(_:)(v8);
      v0[23] = v1;
      _print_unlocked<A, B>(_:_:)();
      v4 = v0[18];
      v5 = v0[19];
      goto LABEL_13;
  }

LABEL_14:
  swift_willThrow();

  v2 = v0[1];
LABEL_15:

  return v2();
}

uint64_t sub_100063854(uint64_t a1)
{
  swift_willThrow();

  v2 = *(v1 + 8);

  return v2();
}

unint64_t sub_1000638E0()
{
  result = qword_1000AC000;
  if (!qword_1000AC000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AC000);
  }

  return result;
}

id sub_100063934()
{
  v3 = 0;
  if ([v0 setTaskExpiredWithRetryAfter:&v3 error:?])
  {
    return v3;
  }

  v2 = v3;
  _convertNSErrorToError(_:)();

  return swift_willThrow();
}

uint64_t sub_1000639DC(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  if (a1)
  {
    v8[4] = a1;
    v8[5] = a2;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 1107296256;
    v8[2] = sub_10004CB28;
    v8[3] = &unk_1000A4038;
    v6 = _Block_copy(v8);
  }

  else
  {
    v6 = 0;
  }

  [v5 setExpirationHandler:v6];
  _Block_release(v6);
  return sub_10003FB64(a1, a2);
}

uint64_t sub_100063AEC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100063B14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = type metadata accessor for EventRecord.DecodedEvent();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  v4[9] = v6;
  v4[10] = *(v6 - 8);
  v4[11] = swift_task_alloc();

  return _swift_task_switch(sub_100063C34, 0, 0);
}

uint64_t sub_100063C34()
{
  v1 = sub_100066850(*(v0 + 16), *(v0 + 24));
  v3 = v1[2];
  if (v3)
  {
    v4 = *(v0 + 56);
    v5 = v1;
    sub_10003E718(0, v3, 0);
    v20 = type metadata accessor for SomeEvent();
    v6 = *(v20 - 8);
    v19 = *(v6 + 16);
    v7 = v5 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v18 = *(v6 + 72);
    v17 = enum case for EventRecord.DecodedEvent.someEvent(_:);
    do
    {
      v8 = *(v0 + 64);
      v9 = *(v0 + 48);
      v19(v8, v7, v20);
      (*(v4 + 104))(v8, v17, v9);
      v11 = _swiftEmptyArrayStorage[2];
      v10 = _swiftEmptyArrayStorage[3];
      if (v11 >= v10 >> 1)
      {
        sub_10003E718((v10 > 1), v11 + 1, 1);
      }

      *(v0 + 112) = _swiftEmptyArrayStorage;
      v12 = *(v0 + 64);
      v13 = *(v0 + 48);
      _swiftEmptyArrayStorage[2] = v11 + 1;
      (*(v4 + 32))(_swiftEmptyArrayStorage + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v11, v12, v13);
      v7 += v18;
      --v3;
    }

    while (v3);

    v14 = swift_task_alloc();
    *(v0 + 96) = v14;
    *v14 = v0;
    v14[1] = sub_100063ED0;
    v15 = *(v0 + 40);

    return sub_10002869C(_swiftEmptyArrayStorage, v15);
  }

  else
  {

    v16 = *(v0 + 8);

    return v16();
  }
}

uint64_t sub_100063ED0()
{
  v2 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {

    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return _swift_task_switch(sub_100064048, 0, 0);
  }
}

uint64_t sub_100064048()
{
  type metadata accessor for XPCServer();
  sub_10000E874();
  static LoggedObject.logger.getter();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Requesting background upload of events to CloudKit database", v3, 2u);
  }

  v5 = v0[10];
  v4 = v0[11];
  v6 = v0[9];
  v7 = v0[4];

  (*(v5 + 8))(v4, v6);

  return _swift_task_switch(sub_100064170, v7, 0);
}

uint64_t sub_100064170()
{
  sub_100028B58(0, 1);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100064208(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[38] = a3;
  v4[39] = a4;
  v4[37] = a2;
  v5 = sub_10000CED0(&qword_1000AC008, &qword_100087908);
  v4[40] = v5;
  v4[41] = *(v5 - 8);
  v4[42] = swift_task_alloc();
  v6 = type metadata accessor for RecordType();
  v4[43] = v6;
  v4[44] = *(v6 - 8);
  v4[45] = swift_task_alloc();
  v7 = sub_10000CED0(&qword_1000AB800, &qword_100086C38);
  v4[46] = v7;
  v4[47] = *(v7 - 8);
  v4[48] = swift_task_alloc();

  return _swift_task_switch(sub_10006439C, 0, 0);
}

uint64_t sub_10006439C()
{
  v1 = v0;
  v2 = v0;
  v3 = v0 + 2;
  v4 = v0 + 18;
  v5 = v0 + 34;
  v6 = v0[47];
  v7 = v0[48];
  v8 = v0[46];
  v11 = v1[37];
  v12 = v1[38];
  v1[2] = v2;
  v1[7] = v5;
  v1[3] = sub_100064570;
  swift_continuation_init();
  v1[25] = v8;
  v9 = sub_10000CF2C(v1 + 22);
  sub_10000D544(0, &qword_1000AB808, CKRecord_ptr);
  v1[49] = sub_10000CED0(&unk_1000AAB08, &qword_1000853D0);
  CheckedContinuation.init(continuation:function:)();
  (*(v6 + 32))(v9, v7, v8);
  v1[18] = _NSConcreteStackBlock;
  v1[19] = 1107296256;
  v1[20] = sub_100034C2C;
  v1[21] = &unk_1000A40E0;
  [v11 fetchRecordWithID:v12 completionHandler:v4];
  (*(v6 + 8))(v9, v8);

  return _swift_continuation_await(v3);
}

uint64_t sub_100064570()
{
  v1 = *(*v0 + 48);
  *(*v0 + 400) = v1;
  if (v1)
  {
    v2 = sub_100064BF8;
  }

  else
  {
    v2 = sub_100064680;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100064680()
{
  v2 = v0[44];
  v1 = v0[45];
  v3 = v0[43];
  v4 = v0[34];
  v5 = CKRecord.recordType.getter();
  v7 = v6;

  static EncryptionKeyRecord.recordType.getter();
  v8 = RecordType.rawValue.getter();
  v10 = v9;
  (*(v2 + 8))(v1, v3);
  if (v5 == v8 && v7 == v10)
  {
    swift_bridgeObjectRelease_n();
LABEL_8:
    v13 = v0[41];
    v14 = v0[42];
    v15 = v0[40];
    v24 = v0[37];
    v25 = v0[38];

    v0[10] = v0;
    v0[15] = v0 + 36;
    v0[11] = sub_100064A64;
    swift_continuation_init();
    v0[33] = v15;
    v16 = sub_10000CF2C(v0 + 30);
    sub_10000D544(0, &qword_1000AB8F0, CKRecordID_ptr);
    CheckedContinuation.init(continuation:function:)();
    (*(v13 + 32))(v16, v14, v15);
    v0[26] = _NSConcreteStackBlock;
    v0[27] = 1107296256;
    v0[28] = sub_100064DC0;
    v0[29] = &unk_1000A4108;
    [v24 deleteRecordWithID:v25 completionHandler:v0 + 26];
    (*(v13 + 8))(v16, v15);

    return _swift_continuation_await(v0 + 10);
  }

  v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v12)
  {
    goto LABEL_8;
  }

  _StringGuts.grow(_:)(38);

  type metadata accessor for UUID();
  sub_10006569C(&qword_1000AB0D8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v17._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v17);

  v18._object = 0x8000000100089C50;
  v18._countAndFlagsBits = 0xD00000000000001ALL;
  String.append(_:)(v18);
  v19._countAndFlagsBits = v5;
  v19._object = v7;
  String.append(_:)(v19);

  v20._countAndFlagsBits = 34;
  v20._object = 0xE100000000000000;
  String.append(_:)(v20);
  sub_1000656E4();
  swift_allocError();
  *v21 = 0x2064726F636552;
  *(v21 + 8) = 0xE700000000000000;
  *(v21 + 16) = 2;
  swift_willThrow();

  v22 = v0[1];

  return v22();
}

uint64_t sub_100064A64()
{
  v1 = *(*v0 + 112);
  *(*v0 + 408) = v1;
  if (v1)
  {
    v2 = sub_100064D34;
  }

  else
  {
    v2 = sub_100064B74;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100064B74()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100064BF8(uint64_t a1)
{
  swift_willThrow();
  _s3__C4CodeOMa_0(0);
  *(v1 + 280) = 11;
  swift_errorRetain();
  sub_10006569C(&qword_1000AAE90, _s3__C4CodeOMa_0, &unk_100085B44);
  v2 = static _ErrorCodeProtocol.~= infix(_:_:)();

  if (v2)
  {
  }

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_100064D34(uint64_t a1)
{
  swift_willThrow();

  v2 = *(v1 + 8);

  return v2();
}

void sub_100064DC0(uint64_t a1, void *a2, void *a3)
{
  sub_10000D224((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v5 = a3;
    sub_10000CED0(&qword_1000AC008, &qword_100087908);
    CheckedContinuation.resume(throwing:)();
  }

  else if (a2)
  {
    v6 = a2;
    sub_10000CED0(&qword_1000AC008, &qword_100087908);
    CheckedContinuation.resume(returning:)();
  }

  else
  {
    __break(1u);
  }
}

id sub_100064E70(uint64_t a1)
{
  v2 = [objc_allocWithZone(CKOperationGroup) init];
  v14[2] = 0;
  v14[3] = 0xE000000000000000;
  v14[0] = 47;
  v14[1] = 0xE100000000000000;
  v13[2] = v14;
  if (!sub_100022238(0x7FFFFFFFFFFFFFFFLL, 1, sub_10004C9F8, v13, 0xD000000000000033, 0x8000000100089CA0, "ID8@NSError16")[2])
  {

    __break(1u);
    goto LABEL_6;
  }

  v3 = static String._fromSubstring(_:)();
  v5 = v4;

  v6._countAndFlagsBits = v3;
  v6._object = v5;
  String.append(_:)(v6);

  v7._countAndFlagsBits = 46;
  v7._object = 0xE100000000000000;
  String.append(_:)(v7);
  v14[0] = &type metadata for HMVCommandHandlers;
  sub_10000CED0(&qword_1000AC018, &qword_100087910);
  v8._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v8);

  v9 = String._bridgeToObjectiveC()();

  [v2 setName:v9];

  [v2 setExpectedSendSize:1];
  result = [v2 defaultConfiguration];
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v11 = result;
  [result setContainer:a1];

  result = [v2 defaultConfiguration];
  if (result)
  {
    v12 = result;
    [result setQualityOfService:25];

    return v2;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_100065094(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = type metadata accessor for Configuration.TargetCloudKitZone();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();

  return _swift_task_switch(sub_100065158, 0, 0);
}

uint64_t sub_100065158()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  v22 = v0[4];
  v4 = v0[2];
  v0[8] = [v4 privateCloudDatabase];
  v5 = sub_100064E70(v4);
  v0[9] = v5;
  [v5 setExpectedReceiveSize:1];
  sub_10000D544(0, &qword_1000AB8F0, CKRecordID_ptr);
  v6 = UUID.uuidString.getter();
  v8 = v7;
  sub_10000D544(0, &qword_1000AC3A0, CKRecordZoneID_ptr);
  type metadata accessor for Configuration();
  (*(v2 + 104))(v1, enum case for Configuration.TargetCloudKitZone.default(_:), v3);
  v9 = static Configuration.zoneName(forHomeIdentifier:target:)();
  v11 = v10;
  (*(v2 + 8))(v1, v3);
  v12._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12._object = v13;
  v14._countAndFlagsBits = v9;
  v14._object = v11;
  isa = CKRecordZoneID.init(zoneName:ownerName:)(v14, v12).super.isa;
  v16._countAndFlagsBits = v6;
  v16._object = v8;
  v17 = CKRecordID.init(recordName:zoneID:)(v16, isa).super.isa;
  v0[10] = v17;
  v18 = swift_task_alloc();
  v0[11] = v18;
  *(v18 + 16) = v17;
  *(v18 + 24) = v22;
  v19 = v5;
  v20 = swift_task_alloc();
  v0[12] = v20;
  *v20 = v0;
  v20[1] = sub_100065390;

  return CKDatabase.configuredWith<A>(configuration:group:body:)(v20, 0, v5, &unk_100087900, v18, &type metadata for () + 8);
}

uint64_t sub_100065390()
{
  v2 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v3 = sub_100065538;
  }

  else
  {

    v3 = sub_1000654B8;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000654B8()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 64);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100065538()
{
  v1 = v0[10];
  v3 = v0[8];
  v2 = v0[9];

  v4 = v0[1];

  return v4();
}

uint64_t sub_1000655D0(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_10000D130;

  return sub_100064208(a1, a2, v7, v6);
}

uint64_t sub_10006569C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1000656E4()
{
  result = qword_1000AC010;
  if (!qword_1000AC010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AC010);
  }

  return result;
}

id sub_100065740()
{
  v1 = v0;
  v2 = type metadata accessor for CocoaError.Code();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = (&v14 - v5);
  URL._bridgeToObjectiveC()(v5);
  v8 = v7;
  v14 = 0;
  LODWORD(v1) = [v1 removeItemAtURL:v7 error:&v14];

  if (v1)
  {
    return v14;
  }

  v10 = v14;
  _convertNSErrorToError(_:)();

  swift_willThrow();
  swift_errorRetain();
  static CocoaError.fileNoSuchFile.getter();
  sub_100036300();
  v11 = static _ErrorCodeProtocol.~= infix(_:_:)();

  v12 = *(v3 + 8);
  v12(v6, v2);
  if (v11)
  {
  }

  swift_errorRetain();
  static CocoaError.fileReadNoSuchFile.getter();
  v13 = static _ErrorCodeProtocol.~= infix(_:_:)();

  result = (v12)(v6, v2);
  if (v13)
  {
  }

  return result;
}

uint64_t sub_10006593C(uint64_t a1, unint64_t a2)
{
  sub_10003F994(a1, a2);
  sub_1000659E4(a1, a2);
  v4 = static String._fromUTF8Repairing(_:)();

  return v4;
}

uint64_t sub_1000659A8@<X0>(uint64_t *a3@<X8>)
{
  result = static String._fromUTF8Repairing(_:)();
  *a3 = result;
  a3[1] = v5;
  return result;
}

void *sub_1000659E4(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for Data.Iterator();
  v5 = *(v4 - 8);
  result = __chkstk_darwin(v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v9 != 2)
    {
LABEL_12:
      sub_10000D37C(a1, a2);
      return _swiftEmptyArrayStorage;
    }

    v12 = *(a1 + 16);
    v11 = *(a1 + 24);
    v10 = v11 - v12;
    if (!__OFSUB__(v11, v12))
    {
      if (v10)
      {
        goto LABEL_8;
      }

      goto LABEL_12;
    }

    __break(1u);
LABEL_15:
    __break(1u);
  }

  else
  {
    if (v9)
    {
      goto LABEL_10;
    }

    v10 = BYTE6(a2);
    if (!BYTE6(a2))
    {
      goto LABEL_12;
    }

LABEL_8:
    while (1)
    {
      v13 = sub_100035560(v10, 0);
      v14 = Data._copyContents(initializing:)();
      sub_10000D37C(a1, a2);
      v15 = *(v5 + 8);
      v5 += 8;
      v15(v8, v4);
      result = v13;
      if (v14 == v10)
      {
        break;
      }

      __break(1u);
LABEL_10:
      v16 = HIDWORD(a1) - a1;
      if (__OFSUB__(HIDWORD(a1), a1))
      {
        goto LABEL_15;
      }

      v10 = v16;
      if (!v16)
      {
        goto LABEL_12;
      }
    }
  }

  return result;
}

uint64_t sub_100065B60(uint64_t a1, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v2)
    {
      return static String._fromUTF8Repairing(_:)();
    }

    goto LABEL_10;
  }

  if (v2 != 2)
  {
    return static String._fromUTF8Repairing(_:)();
  }

  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  a1 = __DataStorage._bytes.getter();
  if (a1)
  {
    a1 = __DataStorage._offset.getter();
    if (__OFSUB__(v3, a1))
    {
      goto LABEL_18;
    }
  }

  if (__OFSUB__(v4, v3))
  {
    __break(1u);
LABEL_10:
    v5 = a1;
    if (a1 >> 32 >= a1)
    {
      if (!__DataStorage._bytes.getter() || !__OFSUB__(v5, __DataStorage._offset.getter()))
      {
        goto LABEL_15;
      }

LABEL_19:
      __break(1u);
    }

    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_15:
  __DataStorage._length.getter();
  return static String._fromUTF8Repairing(_:)();
}

uint64_t sub_100065D0C(void *a1, void *a2)
{
  v74 = a2;
  v75 = a1;
  v2 = type metadata accessor for EnergyKit.SomeEnergyKitEvent();
  v70 = *(v2 - 8);
  v71 = v2;
  v3 = __chkstk_darwin(v2);
  v64 = &v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v67 = &v62 - v6;
  __chkstk_darwin(v5);
  v69 = &v62 - v7;
  v8 = type metadata accessor for Logger();
  v72 = *(v8 - 8);
  v73 = v8;
  v9 = __chkstk_darwin(v8);
  v68 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v66 = &v62 - v12;
  __chkstk_darwin(v11);
  v65 = &v62 - v13;
  v14 = type metadata accessor for SomeAccessoryEvent();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v63 = &v62 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v20 = &v62 - v19;
  __chkstk_darwin(v18);
  v22 = &v62 - v21;
  v23 = type metadata accessor for SomeEvent();
  v24 = *(v23 - 8);
  v25 = __chkstk_darwin(v23);
  v27 = &v62 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v29 = &v62 - v28;
  v30 = *(v24 + 16);
  v30(&v62 - v28, v75, v23);
  v31 = (*(v24 + 88))(v29, v23);
  if (v31 == enum case for SomeEvent.accessory(_:))
  {
    (*(v24 + 96))(v29, v23);
    (*(v15 + 32))(v22, v29, v14);
    v32 = *(v15 + 16);
    v32(v20, v22, v14);
    v33 = (*(v15 + 88))(v20, v14);
    if (v33 == enum case for SomeAccessoryEvent.contactSensor(_:) || v33 == enum case for SomeAccessoryEvent.door(_:) || v33 == enum case for SomeAccessoryEvent.garageDoor(_:) || v33 == enum case for SomeAccessoryEvent.lock(_:) || v33 == enum case for SomeAccessoryEvent.securitySystem(_:) || v33 == enum case for SomeAccessoryEvent.smokeDetector(_:))
    {
      goto LABEL_12;
    }

    if (v33 != enum case for SomeAccessoryEvent.thermostatAutomation(_:) && v33 != enum case for SomeAccessoryEvent.thermostatAutomationFailure(_:) && v33 != enum case for SomeAccessoryEvent.thermostatReducedEnergyAutomation(_:))
    {
      if (v33 == enum case for SomeAccessoryEvent.window(_:))
      {
LABEL_12:
        v34 = *(v15 + 8);
        v34(v22, v14);
        v34(v20, v14);
        return 1;
      }

      v76 = 0;
      v77 = 0xE000000000000000;
      _StringGuts.grow(_:)(19);

      v76 = 0xD000000000000011;
      v77 = 0x8000000100089D10;
      v32(v63, v22, v14);
      v61._countAndFlagsBits = String.init<A>(describing:)();
      String.append(_:)(v61);

      goto LABEL_34;
    }

    v43 = *(v15 + 8);
    v43(v20, v14);
    sub_10000D224(v74, v74[3]);
    if (dispatch thunk of FeaturesDataSource.isHomeActivityStateEnabled.getter())
    {
      v43(v22, v14);
      return 1;
    }

    type metadata accessor for XPCServer();
    sub_1000677FC(&qword_1000AAFD8, type metadata accessor for XPCServer, &unk_100085BD8);
    v55 = v65;
    static LoggedObject.logger.getter();
    v56 = Logger.logObject.getter();
    v57 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      *v58 = 0;
      _os_log_impl(&_mh_execute_header, v56, v57, "Dropping event because HomeActivityState feature flag is not enabled", v58, 2u);
    }

    (*(v72 + 8))(v55, v73);
    v43(v22, v14);
  }

  else if (v31 == enum case for SomeEvent.homeActivityState(_:))
  {
    sub_10000D224(v74, v74[3]);
    if (dispatch thunk of FeaturesDataSource.isHomeActivityStateEnabled.getter())
    {
      (*(v24 + 8))(v29, v23);
      return 1;
    }

    type metadata accessor for XPCServer();
    sub_1000677FC(&qword_1000AAFD8, type metadata accessor for XPCServer, &unk_100085BD8);
    v39 = v66;
    static LoggedObject.logger.getter();
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&_mh_execute_header, v40, v41, "Dropping event because HomeActivityState feature flag is not enabled", v42, 2u);
    }

    (*(v72 + 8))(v39, v73);
    (*(v24 + 8))(v29, v23);
  }

  else
  {
    if (v31 != enum case for SomeEvent.energyKit(_:))
    {
      v76 = 0;
      v77 = 0xE000000000000000;
      _StringGuts.grow(_:)(19);

      v76 = 0xD000000000000011;
      v77 = 0x8000000100089D10;
      v30(v27, v75, v23);
      v60._countAndFlagsBits = String.init<A>(describing:)();
      String.append(_:)(v60);

LABEL_34:
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return result;
    }

    (*(v24 + 96))(v29, v23);
    v37 = v69;
    v36 = v70;
    v38 = v71;
    (*(v70 + 32))(v69, v29, v71);
    sub_10000D224(v74, v74[3]);
    if (dispatch thunk of FeaturesDataSource.isActivityHistory2025Enabled.getter())
    {
      (*(v36 + 8))(v37, v38);
      return 1;
    }

    type metadata accessor for XPCServer();
    sub_1000677FC(&qword_1000AAFD8, type metadata accessor for XPCServer, &unk_100085BD8);
    v44 = v68;
    static LoggedObject.logger.getter();
    v45 = *(v36 + 16);
    v46 = v67;
    v45(v67, v37, v38);
    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      v76 = v75;
      *v49 = 136315138;
      v45(v64, v46, v38);
      v50 = String.init<A>(describing:)();
      v52 = v51;
      v53 = *(v36 + 8);
      v53(v46, v38);
      v54 = sub_100035120(v50, v52, &v76);

      *(v49 + 4) = v54;
      _os_log_impl(&_mh_execute_header, v47, v48, "Dropping event because ActivityHistory2025 feature flag is not enabled: %s", v49, 0xCu);
      sub_10000D330(v75);

      (*(v72 + 8))(v68, v73);
      v53(v37, v38);
    }

    else
    {

      v59 = *(v36 + 8);
      v59(v46, v38);
      (*(v72 + 8))(v44, v73);
      v59(v37, v38);
    }
  }

  return 0;
}

void *sub_100066850(uint64_t a1, void *a2)
{
  v111 = a2;
  v4 = type metadata accessor for SomeEvent();
  v105 = *(v4 - 8);
  v5 = __chkstk_darwin(v4);
  v110 = &v100 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v113 = &v100 - v8;
  __chkstk_darwin(v7);
  v117 = &v100 - v9;
  v124 = type metadata accessor for Logger();
  v10 = *(v124 - 8);
  v11 = __chkstk_darwin(v124);
  v13 = &v100 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v107 = &v100 - v15;
  v16 = __chkstk_darwin(v14);
  v104 = &v100 - v17;
  v18 = __chkstk_darwin(v16);
  v20 = &v100 - v19;
  __chkstk_darwin(v18);
  v22 = &v100 - v21;
  v23 = type metadata accessor for XPCServer();
  v121 = sub_1000677FC(&qword_1000AAFD8, type metadata accessor for XPCServer, &unk_100085BD8);
  v122 = v23;
  static LoggedObject.logger.getter();

  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.default.getter();
  v26 = os_log_type_enabled(v24, v25);
  v118 = v20;
  if (v26)
  {
    v27 = swift_slowAlloc();
    *v27 = 134217984;
    *(v27 + 4) = *(a1 + 16);

    _os_log_impl(&_mh_execute_header, v24, v25, "Creating %ld events", v27, 0xCu);
    v20 = v118;
  }

  else
  {
  }

  v29 = *(v10 + 8);
  v28 = v10 + 8;
  v120 = v29;
  v29(v22, v124);
  v30 = *(a1 + 16);
  v114 = sub_100022830(0, v30, 0, _swiftEmptyArrayStorage);
  if (!v30)
  {
    return v114;
  }

  v101 = v13;
  v115 = (v105 + 32);
  v108 = (v105 + 8);
  v103 = (v105 + 16);
  v32 = (a1 + 40);
  *&v31 = 136315138;
  v106 = v31;
  *&v31 = 136446210;
  v102 = v31;
  v33 = v2;
  v109 = v28;
  v34 = v113;
  v116 = v4;
  while (1)
  {
    v119 = v30;
    v35 = *(v32 - 1);
    v36 = *v32;
    sub_10003F994(v35, *v32);
    static LoggedObject.logger.getter();
    sub_10003F994(v35, v36);
    v37 = v20;
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.debug.getter();
    sub_10000D37C(v35, v36);
    v40 = os_log_type_enabled(v38, v39);
    v123 = v36;
    v125 = v35;
    if (!v40)
    {

      v120(v37, v124);
      goto LABEL_19;
    }

    v41 = v33;
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v133 = v43;
    *v42 = v106;
    sub_10003F994(v35, v36);
    v44 = sub_100065B60(v35, v36);
    v112 = v41;
    if (v45)
    {
      goto LABEL_17;
    }

    DynamicType = v35;
    v130 = v36;
    sub_10003F994(v35, v36);
    sub_10000CED0(&qword_1000AC028, &qword_100087918);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v128 = 0;
      v126 = 0u;
      v127 = 0u;
      sub_10000D620(&v126, &qword_1000AC030, &qword_100087920);
LABEL_16:
      v35 = v125;
      v36 = v123;
      v44 = sub_10006593C(v125, v123);
LABEL_17:
      v48 = v44;
      v47 = v45;
      sub_10000D37C(v35, v36);
      goto LABEL_18;
    }

    sub_1000111BC(&v126, &v131);
    sub_10000D224(&v131, v132);
    if ((dispatch thunk of _HasContiguousBytes._providesContiguousBytesNoCopy.getter() & 1) == 0)
    {
      sub_10000D330(&v131);
      goto LABEL_16;
    }

    sub_10000D37C(v125, v123);
    sub_10000D224(&v131, v132);
    v46 = v112;
    dispatch thunk of _HasContiguousBytes.withUnsafeBytes<A>(_:)();
    v112 = v46;
    v47 = *(&v126 + 1);
    v48 = v126;
    sub_10000D330(&v131);
LABEL_18:
    v49 = sub_100035120(v48, v47, &v133);

    *(v42 + 4) = v49;
    _os_log_impl(&_mh_execute_header, v38, v39, "Attempting to decode event: '%s'", v42, 0xCu);
    sub_10000D330(v43);

    v120(v118, v124);
    v36 = v123;
    v35 = v125;
    v33 = v112;
    v34 = v113;
LABEL_19:
    v50 = v117;
    type metadata accessor for JSONDecoder();
    swift_allocObject();
    JSONDecoder.init()();
    sub_1000677FC(&qword_1000AC020, &type metadata accessor for SomeEvent, &protocol conformance descriptor for SomeEvent);
    v51 = v116;
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    if (v33)
    {
      break;
    }

    v52 = *v115;
    (*v115)(v50, v34, v51);
    if (sub_100065D0C(v50, v111))
    {
      v112 = v52;
      SomeEvent.anyEvent.getter();
      v53 = v104;
      static LoggedObject.logger.getter();
      sub_10000D2CC(&v131, &v126);
      v54 = Logger.logObject.getter();
      v55 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v54, v55))
      {
        v56 = swift_slowAlloc();
        v57 = swift_slowAlloc();
        v133 = v57;
        *v56 = v102;
        sub_10000D224(&v126, *(&v127 + 1));
        DynamicType = swift_getDynamicType();
        v130 = v128;
        sub_10000CED0(&qword_1000AC038, &qword_100087928);
        v58 = String.init<A>(describing:)();
        v60 = v59;
        sub_10000D330(&v126);
        v61 = sub_100035120(v58, v60, &v133);

        *(v56 + 4) = v61;
        _os_log_impl(&_mh_execute_header, v54, v55, "Successfully created %{public}s event", v56, 0xCu);
        sub_10000D330(v57);
      }

      else
      {

        sub_10000D330(&v126);
      }

      v120(v53, v124);
      v62 = v107;
      static LoggedObject.logger.getter();
      sub_10000D2CC(&v131, &v126);
      v63 = Logger.logObject.getter();
      v64 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v63, v64))
      {
        v65 = swift_slowAlloc();
        v66 = swift_slowAlloc();
        DynamicType = v66;
        *v65 = v106;
        v67 = sub_10000D224(&v126, *(&v127 + 1));
        __chkstk_darwin(v67);
        (*(v69 + 16))(&v100 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0));
        v70 = String.init<A>(describing:)();
        v72 = v71;
        v33 = 0;
        sub_10000D330(&v126);
        v73 = sub_100035120(v70, v72, &DynamicType);

        *(v65 + 4) = v73;
        _os_log_impl(&_mh_execute_header, v63, v64, "%s", v65, 0xCu);
        sub_10000D330(v66);

        v120(v107, v124);
      }

      else
      {

        v120(v62, v124);
        sub_10000D330(&v126);
      }

      v74 = v123;
      v75 = v116;
      v76 = v117;
      v77 = v114;
      (*v103)(v110, v117, v116);
      v79 = v77[2];
      v78 = v77[3];
      if (v79 >= v78 >> 1)
      {
        v77 = sub_100022830((v78 > 1), v79 + 1, 1, v77);
      }

      sub_10000D37C(v125, v74);
      sub_10000D330(&v131);
      v80 = v105;
      (*(v105 + 8))(v76, v75);
      v77[2] = v79 + 1;
      v81 = (*(v80 + 80) + 32) & ~*(v80 + 80);
      v114 = v77;
      v112(v77 + v81 + *(v80 + 72) * v79, v110, v75);
      v34 = v113;
    }

    else
    {
      (*v108)(v50, v51);
      sub_10000D37C(v35, v36);
    }

    v32 += 2;
    v20 = v118;
    v30 = v119 - 1;
    if (v119 == 1)
    {
      return v114;
    }
  }

  v83 = v101;
  static LoggedObject.logger.getter();
  sub_10003F994(v35, v36);
  swift_errorRetain();
  v84 = v35;
  v85 = Logger.logObject.getter();
  v86 = static os_log_type_t.error.getter();

  sub_10000D37C(v84, v36);
  if (os_log_type_enabled(v85, v86))
  {
    v87 = swift_slowAlloc();
    v88 = swift_slowAlloc();
    v122 = swift_slowAlloc();
    v133 = v122;
    *v87 = 138543618;
    swift_errorRetain();
    v89 = _swift_stdlib_bridgeErrorToNSError();
    *(v87 + 4) = v89;
    *v88 = v89;
    *(v87 + 12) = 2080;
    sub_10003F994(v84, v36);
    v90 = sub_100065B60(v84, v36);
    if (v91)
    {
      v92 = v90;
      v93 = v91;
      v94 = v84;
      v95 = v36;
      sub_10000D37C(v94, v36);
      goto LABEL_41;
    }

    v121 = 0;
    DynamicType = v84;
    v130 = v36;
    v96 = v84;
    v95 = v36;
    sub_10003F994(v96, v36);
    sub_10000CED0(&qword_1000AC028, &qword_100087918);
    if (swift_dynamicCast())
    {
      sub_1000111BC(&v126, &v131);
      sub_10000D224(&v131, v132);
      if (dispatch thunk of _HasContiguousBytes._providesContiguousBytesNoCopy.getter())
      {
        sub_10000D37C(v125, v36);
        sub_10000D224(&v131, v132);
        dispatch thunk of _HasContiguousBytes.withUnsafeBytes<A>(_:)();
        v93 = *(&v126 + 1);
        v92 = v126;
        sub_10000D330(&v131);
        goto LABEL_41;
      }

      v112 = v33;
      sub_10000D330(&v131);
    }

    else
    {
      v112 = v33;
      v128 = 0;
      v126 = 0u;
      v127 = 0u;
      sub_10000D620(&v126, &qword_1000AC030, &qword_100087920);
    }

    v97 = v125;
    v92 = sub_10006593C(v125, v36);
    v93 = v98;
    sub_10000D37C(v97, v36);
LABEL_41:
    v99 = sub_100035120(v92, v93, &v133);

    *(v87 + 14) = v99;
    _os_log_impl(&_mh_execute_header, v85, v86, "Failed to decode event: %{public}@, '%s'", v87, 0x16u);
    sub_10000D620(v88, &unk_1000AB7D0, &qword_100085510);

    sub_10000D330(v122);

    v120(v101, v124);
  }

  else
  {
    v95 = v36;

    v120(v83, v124);
  }

  swift_willThrow();
  return sub_10000D37C(v125, v95);
}

uint64_t sub_1000677FC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100067844(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = type metadata accessor for Logger();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();

  return _swift_task_switch(sub_10006791C, 0, 0);
}

uint64_t sub_10006791C()
{
  v0[10] = sub_10006A274();
  static LoggedObject.logger.getter();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Fetching all record zones", v3, 2u);
  }

  v4 = v0[9];
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0[4];

  v8 = *(v6 + 8);
  v0[11] = v8;
  v8(v4, v5);
  v9 = swift_task_alloc();
  v0[12] = v9;
  v10 = sub_10000CED0(&qword_1000AC058, &qword_100087988);
  *v9 = v0;
  v9[1] = sub_100067ABC;

  return CKDatabase.configuredWith<A>(configuration:group:body:)(v0 + 2, 0, v7, &unk_100087980, 0, v10);
}

uint64_t sub_100067ABC()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_100067EB8;
  }

  else
  {
    v2 = sub_100067BD0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100067BD0()
{
  v22 = v0;
  v1 = *(v0 + 16);
  static LoggedObject.logger.getter();

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 134217984;
    if (v1 >> 62)
    {
      v5 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v5 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v4 + 4) = v5;

    _os_log_impl(&_mh_execute_header, v2, v3, "Found %ld zone(s)", v4, 0xCu);
  }

  else
  {
  }

  (*(v0 + 88))(*(v0 + 64), *(v0 + 40));
  static LoggedObject.logger.getter();

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();

  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 88);
  v10 = *(v0 + 56);
  v11 = *(v0 + 40);
  if (v8)
  {
    v20 = *(v0 + 88);
    v12 = swift_slowAlloc();
    v19 = v11;
    v13 = swift_slowAlloc();
    v21 = v13;
    *v12 = 136315138;
    sub_10000D544(0, &qword_1000ABA00, CKRecordZone_ptr);
    v14 = Array.description.getter();
    v16 = sub_100035120(v14, v15, &v21);

    *(v12 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v6, v7, "%s", v12, 0xCu);
    sub_10000D330(v13);

    v20(v10, v19);
  }

  else
  {

    v9(v10, v11);
  }

  v17 = *(v0 + 8);

  return v17(v1);
}

uint64_t sub_100067EB8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100067F30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = type metadata accessor for Logger();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();

  return _swift_task_switch(sub_100067FF4, 0, 0);
}

uint64_t sub_100067FF4()
{
  v19 = v0;
  sub_10006A274();
  static LoggedObject.logger.getter();

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  v3 = os_log_type_enabled(v1, v2);
  v5 = v0[6];
  v4 = v0[7];
  v6 = v0[5];
  if (v3)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v18 = v8;
    *v7 = 136315138;
    sub_10000D544(0, &qword_1000AC3A0, CKRecordZoneID_ptr);
    v9 = Array.description.getter();
    v11 = sub_100035120(v9, v10, &v18);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v1, v2, "Deleting zone(s) %s", v7, 0xCu);
    sub_10000D330(v8);
  }

  (*(v5 + 8))(v4, v6);
  v12 = v0[3];
  v13 = v0[4];
  v14 = v0[2];
  v15 = swift_task_alloc();
  v0[8] = v15;
  v15[2] = v12;
  v15[3] = v13;
  v15[4] = v14;
  v16 = swift_task_alloc();
  v0[9] = v16;
  *v16 = v0;
  v16[1] = sub_100068230;

  return CKDatabase.configuredWith<A>(configuration:group:body:)(v16, 0, v13, &unk_100087970, v15, &type metadata for () + 8);
}

uint64_t sub_100068230()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_10006A520;
  }

  else
  {

    v2 = sub_10006A524;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10006834C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = type metadata accessor for Logger();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();

  return _swift_task_switch(sub_100068410, 0, 0);
}

uint64_t sub_100068410()
{
  v18 = v0;
  sub_10006A274();
  static LoggedObject.logger.getter();

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.info.getter();

  v3 = os_log_type_enabled(v1, v2);
  v5 = v0[6];
  v4 = v0[7];
  v6 = v0[5];
  if (v3)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v17 = v8;
    *v7 = 136315138;
    sub_10000D544(0, &qword_1000AC3A0, CKRecordZoneID_ptr);
    v9 = Array.description.getter();
    v11 = sub_100035120(v9, v10, &v17);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v1, v2, "Ensuring zone(s) exist %s", v7, 0xCu);
    sub_10000D330(v8);
  }

  (*(v5 + 8))(v4, v6);
  v12 = v0[4];
  v13 = v0[2];
  v14 = swift_task_alloc();
  v0[8] = v14;
  *(v14 + 16) = v13;
  v15 = swift_task_alloc();
  v0[9] = v15;
  *v15 = v0;
  v15[1] = sub_100068648;

  return CKDatabase.configuredWith<A>(configuration:group:body:)(v15, 0, v12, &unk_1000879B0, v14, &type metadata for () + 8);
}

uint64_t sub_100068648()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_1000687C8;
  }

  else
  {

    v2 = sub_100068764;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100068764()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000687C8()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_100068834(void **a1, void *a2, uint64_t a3)
{
  v5 = *a1;
  v16[2] = 0;
  v16[3] = 0xE000000000000000;
  v16[0] = 47;
  v16[1] = 0xE100000000000000;
  v15[2] = v16;
  if (sub_100022238(0x7FFFFFFFFFFFFFFFLL, 1, sub_10004C9F8, v15, 0xD00000000000001BLL, 0x8000000100089D50, "v24@?0@NSArray8@NSError16")[2])
  {

    v6 = static String._fromSubstring(_:)();
    v8 = v7;

    v9._countAndFlagsBits = v6;
    v9._object = v8;
    String.append(_:)(v9);

    v10._countAndFlagsBits = 46;
    v10._object = 0xE100000000000000;
    String.append(_:)(v10);
    v16[0] = &type metadata for ZoneUtils;
    sub_10000CED0(&qword_1000AC068, &qword_100087998);
    v11._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v11);

    v12 = String._bridgeToObjectiveC()();

    [v5 setName:v12];

    [v5 setExpectedSendSize:1];
    v13 = [objc_allocWithZone(CKOperationConfiguration) init];
    v14 = [a2 container];
    [v13 setContainer:v14];

    [v13 setQualityOfService:a3];
    [v5 setDefaultConfiguration:v13];
  }

  else
  {

    __break(1u);
  }
}

uint64_t sub_100068A54(uint64_t a1, uint64_t a2)
{
  v2[19] = a1;
  v2[20] = a2;
  v3 = type metadata accessor for Logger();
  v2[21] = v3;
  v2[22] = *(v3 - 8);
  v2[23] = swift_task_alloc();
  v4 = sub_10000CED0(&qword_1000AC060, &qword_100087990);
  v2[24] = v4;
  v2[25] = *(v4 - 8);
  v2[26] = swift_task_alloc();

  return _swift_task_switch(sub_100068B7C, 0, 0);
}

uint64_t sub_100068B7C()
{
  v1 = v0;
  v2 = v0;
  v3 = v0 + 2;
  v4 = v0 + 10;
  v5 = v0 + 18;
  v7 = v0[25];
  v6 = v0[26];
  v8 = v0[24];
  v11 = v1[20];
  v1[2] = v2;
  v1[7] = v5;
  v1[3] = sub_100068D48;
  swift_continuation_init();
  v1[17] = v8;
  v9 = sub_10000CF2C(v1 + 14);
  sub_10000CED0(&qword_1000AC058, &qword_100087988);
  sub_10000CED0(&unk_1000AAB08, &qword_1000853D0);
  CheckedContinuation.init(continuation:function:)();
  (*(v7 + 32))(v9, v6, v8);
  v1[10] = _NSConcreteStackBlock;
  v1[11] = 1107296256;
  v1[12] = sub_100069074;
  v1[13] = &unk_1000A4130;
  [v11 fetchAllRecordZonesWithCompletionHandler:v4];
  (*(v7 + 8))(v9, v8);

  return _swift_continuation_await(v3);
}

uint64_t sub_100068D48()
{
  v1 = *(*v0 + 48);
  *(*v0 + 216) = v1;
  if (v1)
  {
    v2 = sub_100068ED0;
  }

  else
  {
    v2 = sub_100068E58;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100068E58()
{
  **(v0 + 152) = *(v0 + 144);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100068ED0(uint64_t a1)
{
  swift_willThrow();
  sub_10006A274();
  static LoggedObject.logger.getter();
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
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to fetch all record zones: %{public}@", v4, 0xCu);
    sub_10000F32C(v5);
  }

  v8 = v1[22];
  v7 = v1[23];
  v9 = v1[21];

  (*(v8 + 8))(v7, v9);
  swift_willThrow();

  v10 = v1[1];

  return v10();
}

void sub_100069074(uint64_t a1, uint64_t a2, void *a3)
{
  sub_10000D224((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v4 = a3;
    sub_10000CED0(&qword_1000AC060, &qword_100087990);
    CheckedContinuation.resume(throwing:)();
  }

  else
  {
    sub_10000D544(0, &qword_1000ABA00, CKRecordZone_ptr);
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
    sub_10000CED0(&qword_1000AC060, &qword_100087990);
    CheckedContinuation.resume(returning:)();
  }
}

uint64_t sub_10006913C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a2;
  v3[3] = a3;
  v4 = type metadata accessor for Logger();
  v3[4] = v4;
  v3[5] = *(v4 - 8);
  v3[6] = swift_task_alloc();
  v3[7] = swift_task_alloc();

  return _swift_task_switch(sub_100069208, 0, 0);
}

uint64_t sub_100069208()
{
  v1 = v0[3];
  if (v1 >> 62)
  {
    v2 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v2)
  {
    v3 = specialized ContiguousArray.reserveCapacity(_:)();
    if (v2 < 0)
    {
      __break(1u);
      return CKDatabase.modifyRecordZones(saving:deleting:)(v3, v4);
    }

    v5 = 0;
    v6 = v0[3] + 32;
    do
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v7 = *(v6 + 8 * v5);
      }

      v8 = v7;
      ++v5;
      [objc_allocWithZone(CKRecordZone) initWithZoneID:v7];

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    while (v2 != v5);
  }

  v0[8] = _swiftEmptyArrayStorage;
  v9 = swift_task_alloc();
  v0[9] = v9;
  *v9 = v0;
  v9[1] = sub_1000693B8;
  v4 = _swiftEmptyArrayStorage;
  v3 = _swiftEmptyArrayStorage;

  return CKDatabase.modifyRecordZones(saving:deleting:)(v3, v4);
}

uint64_t sub_1000693B8(uint64_t a1, uint64_t a2)
{
  v5 = *v3;
  *(*v3 + 80) = v2;

  if (v2)
  {
    v6 = sub_1000697A8;
  }

  else
  {

    *(v5 + 88) = a1;
    v6 = sub_100069514;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100069514()
{
  v19 = v0;
  sub_10006996C(v0[11], sub_10003FCD0);
  v2 = v1;

  if (*(v2 + 16))
  {
    sub_10006A274();
    static LoggedObject.logger.getter();

    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();

    v5 = os_log_type_enabled(v3, v4);
    v6 = v0[7];
    v8 = v0[4];
    v7 = v0[5];
    if (v5)
    {
      v17 = v0[7];
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v18 = v10;
      *v9 = 136446210;
      sub_10000D544(0, &qword_1000AC3A0, CKRecordZoneID_ptr);
      sub_10000CED0(&unk_1000AAB08, &qword_1000853D0);
      sub_10006A3E0();
      v11 = Dictionary.description.getter();
      v13 = sub_100035120(v11, v12, &v18);

      *(v9 + 4) = v13;
      _os_log_impl(&_mh_execute_header, v3, v4, "Zone addition(s) failed: %{public}s", v9, 0xCu);
      sub_10000D330(v10);

      (*(v7 + 8))(v17, v8);
    }

    else
    {

      (*(v7 + 8))(v6, v8);
    }

    sub_10006A38C();
    swift_allocError();
    *v15 = v2;
    *(v15 + 8) = 2;
    swift_willThrow();

    v14 = v0[1];
  }

  else
  {

    v14 = v0[1];
  }

  return v14();
}

uint64_t sub_1000697A8(uint64_t a1)
{
  sub_10006A274();
  static LoggedObject.logger.getter();
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
    _os_log_impl(&_mh_execute_header, v2, v3, "CloudKit add zone failed: %{public}@", v4, 0xCu);
    sub_10000F32C(v5);
  }

  v8 = v1[5];
  v7 = v1[6];
  v9 = v1[4];

  (*(v8 + 8))(v7, v9);
  v10 = v1[10];
  sub_10006A38C();
  swift_allocError();
  *v11 = v10;
  *(v11 + 8) = 0;
  swift_willThrow();

  v12 = v1[1];

  return v12();
}

void sub_10006996C(uint64_t a1, void (*a2)(uint64_t, uint64_t))
{
  v4 = v2;
  v6 = a1 + 64;
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

  v11 = 0;
  if (v9)
  {
    while (1)
    {
LABEL_5:
      while (1)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
        v13 = v12 | (v11 << 6);
        v14 = *(a1 + 56) + 16 * v13;
        if (*(v14 + 8) == 1)
        {
          break;
        }

        if (!v9)
        {
          goto LABEL_7;
        }
      }

      v32 = v4;
      v34 = a2;
      v16 = *(*(a1 + 48) + 8 * v13);
      v17 = *v14;
      v18 = *(&_swiftEmptyDictionarySingleton + 2);
      v33 = *v14;
      if (*(&_swiftEmptyDictionarySingleton + 3) <= v18)
      {
        v20 = v16;
        v34(v17, 1);
        sub_10007E070(v18 + 1, 1);
      }

      else
      {
        v19 = v16;
        v34(v17, 1);
      }

      v21 = NSObject._rawHashValue(seed:)(*(&_swiftEmptyDictionarySingleton + 5));
      v22 = &_swiftEmptyDictionarySingleton + 64;
      v23 = -1 << *(&_swiftEmptyDictionarySingleton + 32);
      v24 = v21 & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(&_swiftEmptyDictionarySingleton + (v24 >> 6) + 8)) == 0)
      {
        break;
      }

      v26 = __clz(__rbit64((-1 << v24) & ~*(&_swiftEmptyDictionarySingleton + (v24 >> 6) + 8))) | v24 & 0x7FFFFFFFFFFFFFC0;
      v27 = v33;
      a2 = v34;
LABEL_24:
      *&v22[(v26 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v26;
      *(*(&_swiftEmptyDictionarySingleton + 6) + 8 * v26) = v16;
      *(*(&_swiftEmptyDictionarySingleton + 7) + 8 * v26) = v27;
      ++*(&_swiftEmptyDictionarySingleton + 2);
      v4 = v32;
      if (!v9)
      {
        goto LABEL_7;
      }
    }

    v28 = 0;
    v29 = (63 - v23) >> 6;
    v27 = v33;
    a2 = v34;
    while (++v25 != v29 || (v28 & 1) == 0)
    {
      v30 = v25 == v29;
      if (v25 == v29)
      {
        v25 = 0;
      }

      v28 |= v30;
      v31 = *&v22[8 * v25];
      if (v31 != -1)
      {
        v26 = __clz(__rbit64(~v31)) + (v25 << 6);
        goto LABEL_24;
      }
    }
  }

  else
  {
LABEL_7:
    while (1)
    {
      v15 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v15 >= v10)
      {

        return;
      }

      v9 = *(v6 + 8 * v15);
      ++v11;
      if (v9)
      {
        v11 = v15;
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t sub_100069BC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = type metadata accessor for Logger();
  v5[2] = v7;
  v5[3] = *(v7 - 8);
  v5[4] = swift_task_alloc();
  v5[5] = swift_task_alloc();
  v8 = swift_task_alloc();
  v5[6] = v8;
  *v8 = v5;
  v8[1] = sub_100069CE0;

  return CKDatabase.modifyRecordZones(saving:deleting:)(_swiftEmptyArrayStorage, a5);
}

uint64_t sub_100069CE0(uint64_t a1, uint64_t a2)
{
  v5 = *v3;
  *(*v3 + 56) = v2;

  if (v2)
  {
    v6 = sub_10006A0B0;
  }

  else
  {
    *(v5 + 64) = a2;

    v6 = sub_100069E1C;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100069E1C()
{
  v19 = v0;
  sub_10006996C(v0[8], sub_10004A354);
  v2 = v1;

  if (*(v2 + 16))
  {
    sub_10006A274();
    static LoggedObject.logger.getter();

    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();

    v5 = os_log_type_enabled(v3, v4);
    v6 = v0[5];
    v8 = v0[2];
    v7 = v0[3];
    if (v5)
    {
      v17 = v0[5];
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v18 = v10;
      *v9 = 136446210;
      sub_10000D544(0, &qword_1000AC3A0, CKRecordZoneID_ptr);
      sub_10000CED0(&unk_1000AAB08, &qword_1000853D0);
      sub_10006A3E0();
      v11 = Dictionary.description.getter();
      v13 = sub_100035120(v11, v12, &v18);

      *(v9 + 4) = v13;
      _os_log_impl(&_mh_execute_header, v3, v4, "Zone deletion(s) failed: %{public}s", v9, 0xCu);
      sub_10000D330(v10);

      (*(v7 + 8))(v17, v8);
    }

    else
    {

      (*(v7 + 8))(v6, v8);
    }

    sub_10006A38C();
    swift_allocError();
    *v15 = v2;
    *(v15 + 8) = 2;
    swift_willThrow();

    v14 = v0[1];
  }

  else
  {

    v14 = v0[1];
  }

  return v14();
}

uint64_t sub_10006A0B0(uint64_t a1)
{
  sub_10006A274();
  static LoggedObject.logger.getter();
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
    _os_log_impl(&_mh_execute_header, v2, v3, "CloudKit delete failed: %{public}@", v4, 0xCu);
    sub_10000F32C(v5);
  }

  v8 = v1[3];
  v7 = v1[4];
  v9 = v1[2];

  (*(v8 + 8))(v7, v9);
  v10 = v1[7];
  sub_10006A38C();
  swift_allocError();
  *v11 = v10;
  *(v11 + 8) = 0;
  swift_willThrow();

  v12 = v1[1];

  return v12();
}

unint64_t sub_10006A274()
{
  result = qword_1000AC040;
  if (!qword_1000AC040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AC040);
  }

  return result;
}

uint64_t sub_10006A2C8(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_10001DBDC;

  return sub_100069BC8(a1, a2, v6, v7, v8);
}

unint64_t sub_10006A38C()
{
  result = qword_1000AC048;
  if (!qword_1000AC048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AC048);
  }

  return result;
}

unint64_t sub_10006A3E0()
{
  result = qword_1000AC050;
  if (!qword_1000AC050)
  {
    sub_10000D544(255, &qword_1000AC3A0, CKRecordZoneID_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AC050);
  }

  return result;
}

uint64_t sub_10006A460(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_10000D130;

  return sub_10006913C(a1, a2, v6);
}

uint64_t sub_10006A528()
{
  v1[2] = v0;
  v1[3] = *v0;
  v2 = type metadata accessor for Logger();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();

  return _swift_task_switch(sub_10006A61C, 0, 0);
}

uint64_t sub_10006A61C()
{
  if (static Task<>.isCancelled.getter())
  {
    sub_100072428(&qword_1000AB008, v1, type metadata accessor for EventUploader, &unk_100087A4C);
    static LoggedObject.logger.getter();
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "Canceled before fetching pending events", v4, 2u);
    }

    v5 = v0[7];
    v6 = v0[4];
    v7 = v0[5];

    (*(v7 + 8))(v5, v6);
    type metadata accessor for CancellationError();
    sub_100072428(&qword_1000AC180, 255, &type metadata accessor for CancellationError, &protocol conformance descriptor for CancellationError);
    swift_allocError();
    CancellationError.init()();
    swift_willThrow();

    v8 = v0[1];

    return v8();
  }

  else
  {
    v10 = v0[2];
    sub_10000D224(v10 + 7, v10[10]);
    v11 = v10[21];
    v12 = swift_task_alloc();
    v0[8] = v12;
    *v12 = v0;
    v12[1] = sub_10006A86C;

    return sub_100075500(v11);
  }
}

uint64_t sub_10006A86C(uint64_t a1)
{
  v3 = *v2;
  *(*v2 + 72) = a1;

  if (v1)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return _swift_task_switch(sub_10006A9C4, 0, 0);
  }
}

uint64_t sub_10006A9C4()
{
  sub_100079B78(v0[9]);
  if (!v1)
  {

    v10 = v0[1];
LABEL_11:

    return v10();
  }

  if (static Task<>.isCancelled.getter())
  {
    sub_100072428(&qword_1000AB008, v2, type metadata accessor for EventUploader, &unk_100087A4C);
    static LoggedObject.logger.getter();

    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.info.getter();
    v5 = os_log_type_enabled(v3, v4);
    v6 = v0[9];
    if (v5)
    {
      v7 = swift_slowAlloc();
      *v7 = 134217984;
      sub_100079B78(v6);
      v9 = v8;

      *(v7 + 4) = v9;

      _os_log_impl(&_mh_execute_header, v3, v4, "Canceled before uploading %ld pending event(s)", v7, 0xCu);
    }

    else
    {
      swift_bridgeObjectRelease_n();
    }

    (*(v0[5] + 8))(v0[6], v0[4]);
    type metadata accessor for CancellationError();
    sub_100072428(&qword_1000AC180, 255, &type metadata accessor for CancellationError, &protocol conformance descriptor for CancellationError);
    swift_allocError();
    CancellationError.init()();
    swift_willThrow();

    v10 = v0[1];
    goto LABEL_11;
  }

  v11 = swift_task_alloc();
  v0[10] = v11;
  *v11 = v0;
  v11[1] = sub_10006AC7C;
  v12 = v0[9];

  return sub_10006C0E8(v12);
}

uint64_t sub_10006AC7C()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_10006AFE8;
  }

  else
  {
    v2 = sub_10006AD90;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10006AD90()
{

  if (static Task<>.isCancelled.getter())
  {
    sub_100072428(&qword_1000AB008, v1, type metadata accessor for EventUploader, &unk_100087A4C);
    static LoggedObject.logger.getter();
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "Canceled before fetching pending events", v4, 2u);
    }

    v5 = v0[7];
    v6 = v0[4];
    v7 = v0[5];

    (*(v7 + 8))(v5, v6);
    type metadata accessor for CancellationError();
    sub_100072428(&qword_1000AC180, 255, &type metadata accessor for CancellationError, &protocol conformance descriptor for CancellationError);
    swift_allocError();
    CancellationError.init()();
    swift_willThrow();

    v8 = v0[1];

    return v8();
  }

  else
  {
    v10 = v0[2];
    sub_10000D224(v10 + 7, v10[10]);
    v11 = v10[21];
    v12 = swift_task_alloc();
    v0[8] = v12;
    *v12 = v0;
    v12[1] = sub_10006A86C;

    return sub_100075500(v11);
  }
}

uint64_t sub_10006AFE8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10006B05C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = *v2;
  v4 = type metadata accessor for EventWriterScope();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();
  v5 = type metadata accessor for Logger();
  v3[9] = v5;
  v3[10] = *(v5 - 8);
  v3[11] = swift_task_alloc();

  return _swift_task_switch(sub_10006B1A4, 0, 0);
}

uint64_t sub_10006B1A4(uint64_t a1, uint64_t a2)
{
  v35 = v2;
  v4 = v2[7];
  v3 = v2[8];
  v5 = v2[6];
  v6 = v2[3];
  sub_100072428(&qword_1000AB008, a2, type metadata accessor for EventUploader, &unk_100087A4C);
  static LoggedObject.logger.getter();
  (*(v4 + 16))(v3, v6, v5);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v11 = v2[10];
  v10 = v2[11];
  v12 = v2[8];
  v13 = v2[9];
  v15 = v2[6];
  v14 = v2[7];
  v16 = v2[2];
  if (v9)
  {
    v33 = v2[9];
    v17 = swift_slowAlloc();
    v32 = v8;
    v18 = swift_slowAlloc();
    v34 = v18;
    *v17 = 134218242;
    *(v17 + 4) = *(v16 + 16);

    *(v17 + 12) = 2082;
    sub_100072428(&qword_1000AC150, 255, &type metadata accessor for EventWriterScope, &protocol conformance descriptor for EventWriterScope);
    v19 = dispatch thunk of CustomStringConvertible.description.getter();
    v31 = v10;
    v21 = v20;
    (*(v14 + 8))(v12, v15);
    v22 = sub_100035120(v19, v21, &v34);

    *(v17 + 14) = v22;
    _os_log_impl(&_mh_execute_header, v7, v32, "Saving %ld event(s) to %{public}s scope", v17, 0x16u);
    sub_10000D330(v18);

    (*(v11 + 8))(v31, v33);
  }

  else
  {

    (*(v14 + 8))(v12, v15);
    (*(v11 + 8))(v10, v13);
  }

  v24 = v2[4];
  v23 = v2[5];
  v25 = v2[2];
  v26 = v2[3];
  v27 = swift_task_alloc();
  v27[2] = v24;
  v27[3] = v26;
  v27[4] = v23;
  v28 = sub_10006B628(sub_100072470, v27, v25);
  v2[12] = v28;

  sub_10000D224((v24 + 56), *(v24 + 80));
  v29 = swift_task_alloc();
  v2[13] = v29;
  *v29 = v2;
  v29[1] = sub_10006B4D8;

  return sub_10007428C(v28);
}

uint64_t sub_10006B4D8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void *sub_10006B628(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  v6 = sub_10000CED0(&qword_1000AB918, &qword_100086D98);
  __chkstk_darwin(v6 - 8);
  v8 = &v23 - v7;
  v9 = type metadata accessor for PendingEventData(0);
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v29 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v27 = &v23 - v13;
  v14 = *(a3 + 16);
  if (!v14)
  {
    return _swiftEmptyArrayStorage;
  }

  v15 = *(type metadata accessor for EventRecord.DecodedEvent() - 8);
  v24 = v10;
  v16 = (v10 + 48);
  v17 = a3 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
  v28 = *(v15 + 72);
  v18 = _swiftEmptyArrayStorage;
  v25 = v9;
  v26 = a1;
  while (1)
  {
    a1(v17);
    if (v3)
    {
      break;
    }

    if ((*v16)(v8, 1, v9) == 1)
    {
      sub_10000D620(v8, &qword_1000AB918, &qword_100086D98);
    }

    else
    {
      v19 = v27;
      sub_10003FB74(v8, v27);
      sub_10003FB74(v19, v29);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v18 = sub_1000226FC(0, v18[2] + 1, 1, v18);
      }

      v21 = v18[2];
      v20 = v18[3];
      if (v21 >= v20 >> 1)
      {
        v18 = sub_1000226FC((v20 > 1), v21 + 1, 1, v18);
      }

      v18[2] = v21 + 1;
      sub_10003FB74(v29, v18 + ((*(v24 + 80) + 32) & ~*(v24 + 80)) + *(v24 + 72) * v21);
      v9 = v25;
      a1 = v26;
    }

    v17 += v28;
    if (!--v14)
    {
      return v18;
    }
  }

  return v18;
}

uint64_t sub_10006B90C@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a5@<X8>)
{
  v59 = a5;
  v60 = type metadata accessor for Logger();
  v7 = *(v60 - 8);
  v8 = __chkstk_darwin(v60);
  v61 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v52 - v10;
  v12 = type metadata accessor for PendingEventData(0);
  v57 = *(v12 - 8);
  v13 = __chkstk_darwin(v12);
  v53 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v56 = &v52 - v16;
  v17 = __chkstk_darwin(v15);
  v19 = &v52 - v18;
  __chkstk_darwin(v17);
  v21 = &v52 - v20;
  sub_10006C3F8(a3, *(a2 + 160), &v52 - v20);
  v55 = sub_100072428(&qword_1000AB008, v22, type metadata accessor for EventUploader, &unk_100087A4C);
  static LoggedObject.logger.getter();
  sub_100037660(v21, v19);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.info.getter();
  v25 = os_log_type_enabled(v23, v24);
  v58 = v12;
  v54 = v7;
  if (v25)
  {
    v26 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v63 = v52;
    *v26 = 136446466;
    v62 = v12;
    sub_10000CED0(&qword_1000AC188, &qword_100087AE8);
    v27 = String.init<A>(describing:)();
    v29 = sub_100035120(v27, v28, &v63);

    *(v26 + 4) = v29;
    *(v26 + 12) = 2082;
    type metadata accessor for UUID();
    sub_100072428(&qword_1000AB0D8, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v30 = dispatch thunk of CustomStringConvertible.description.getter();
    v32 = v31;
    sub_1000376C4(v19);
    v33 = sub_100035120(v30, v32, &v63);

    *(v26 + 14) = v33;
    _os_log_impl(&_mh_execute_header, v23, v24, "Created %{public}s with identifier %{public}s", v26, 0x16u);
    swift_arrayDestroy();

    v34 = v54;
  }

  else
  {

    sub_1000376C4(v19);
    v34 = v7;
  }

  v35 = *(v34 + 8);
  v36 = v60;
  v35(v11, v60);
  v37 = v61;
  static LoggedObject.logger.getter();
  v38 = v56;
  sub_100037660(v21, v56);
  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v63 = v42;
    *v41 = 136315138;
    sub_100037660(v38, v53);
    v43 = v58;
    v44 = String.init<A>(describing:)();
    v45 = v38;
    v46 = v44;
    v48 = v47;
    sub_1000376C4(v45);
    v49 = sub_100035120(v46, v48, &v63);

    *(v41 + 4) = v49;
    _os_log_impl(&_mh_execute_header, v39, v40, "%s", v41, 0xCu);
    sub_10000D330(v42);

    v35(v61, v60);
  }

  else
  {

    sub_1000376C4(v38);
    v35(v37, v36);
    v43 = v58;
  }

  v50 = v59;
  sub_10003FB74(v21, v59);
  return (*(v57 + 56))(v50, 0, 1, v43);
}

void sub_10006BEB0(void **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *a1;
  v18[3] = 0xE000000000000000;
  v18[0] = 47;
  v18[1] = 0xE100000000000000;
  v18[2] = 0;
  v17[2] = v18;
  if (sub_100022238(0x7FFFFFFFFFFFFFFFLL, 1, sub_10004C9F8, v17, 0xD00000000000001FLL, 0x8000000100089E00, "coalescingWindowSeconds")[2])
  {

    v8 = static String._fromSubstring(_:)();
    v10 = v9;

    v11._countAndFlagsBits = v8;
    v11._object = v10;
    String.append(_:)(v11);

    v12._countAndFlagsBits = 46;
    v12._object = 0xE100000000000000;
    String.append(_:)(v12);
    v18[0] = a4;
    swift_getMetatypeMetadata();
    v13._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v13);

    v14 = String._bridgeToObjectiveC()();

    [v7 setName:v14];

    [v7 setQuantity:a2];
    [v7 setExpectedSendSize:sub_10003EB04(a2)];
    v15 = [v7 defaultConfiguration];
    if (v15)
    {
      v16 = v15;
      [v15 setContainer:*(a3 + 96)];
      [v16 setQualityOfService:17];

      return;
    }
  }

  else
  {

    __break(1u);
  }

  __break(1u);
}

uint64_t sub_10006C0E8(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *v1;
  v3 = type metadata accessor for Logger();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();

  return _swift_task_switch(sub_10006C1D0, 0, 0);
}

uint64_t sub_10006C1D0()
{
  sub_100079B78(v0[2]);
  if (v2)
  {
    v3 = v0[4];
    v4 = swift_task_alloc();
    v0[8] = v4;
    *(v4 + 16) = *(v0 + 1);
    *(v4 + 32) = v3;
    v5 = swift_task_alloc();
    v0[9] = v5;
    *v5 = v0;
    v5[1] = sub_100068648;

    return withThrowingTaskGroup<A, B>(of:returning:isolation:body:)(v5, &type metadata for () + 8, &type metadata for () + 8, 0, 0, &unk_100087A90, v4, &type metadata for () + 8);
  }

  else
  {
    sub_100072428(&qword_1000AB008, v1, type metadata accessor for EventUploader, &unk_100087A4C);
    static LoggedObject.logger.getter();
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.info.getter();
    v8 = os_log_type_enabled(v6, v7);
    v10 = v0[6];
    v9 = v0[7];
    v11 = v0[5];
    if (v8)
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "No events to upload", v12, 2u);
    }

    (*(v10 + 8))(v9, v11);

    v13 = v0[1];

    return v13();
  }
}

uint64_t sub_10006C3F8@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v62 = a2;
  v59 = a4;
  v5 = type metadata accessor for EventRecord.DataType();
  v64 = *(v5 - 8);
  v65 = v5;
  __chkstk_darwin(v5);
  v63 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = type metadata accessor for EventWriterScope();
  v7 = *(v61 - 8);
  __chkstk_darwin(v61);
  v56 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Date();
  v66 = *(v9 - 8);
  v67 = v9;
  v10 = __chkstk_darwin(v9);
  v12 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v69 = &v53 - v13;
  v14 = type metadata accessor for EventRecord.EncodedEvent();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v18 = &v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v53 - v19;
  v68 = type metadata accessor for UUID();
  v58 = *(v68 - 8);
  __chkstk_darwin(v68);
  v22 = &v53 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  UUID.init()();
  static EventRecord.encodeEvent(_:)();
  v23 = *(v15 + 32);
  v60 = v14;
  v23(v20, v18, v14);
  v57 = EventRecord.DecodedEvent.tags.getter();
  EventRecord.DecodedEvent.anyEvent.getter();
  sub_10000D224(&v70, v72);
  if (a3 < 1)
  {
    dispatch thunk of EventProtocol.date.getter();
    v27 = v66;
    goto LABEL_8;
  }

  dispatch thunk of EventProtocol.date.getter();
  Date.timeIntervalSinceReferenceDate.getter();
  v25 = v24;
  v26 = v24;
  v27 = v66;
  (*(v66 + 8))(v12, v67);
  if ((*&v26 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (v25 <= -9.22337204e18)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v25 >= 9.22337204e18)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if ((v25 / a3 * a3) >> 64 != (v25 / a3 * a3) >> 63)
  {
LABEL_16:
    __break(1u);
    v70 = 0;
    v71 = 0xE000000000000000;
    _StringGuts.grow(_:)(40);
    v73 = v70;
    v74 = v71;
    v46._object = 0x8000000100089E50;
    v46._countAndFlagsBits = 0xD000000000000010;
    String.append(_:)(v46);
    EventRecord.DecodedEvent.anyEvent.getter();
    v47 = sub_10000D224(&v70, v72);
    __chkstk_darwin(v47);
    (*(v49 + 16))(&v53 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0));
    v50._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v50);

    sub_10000D330(&v70);
    v51._countAndFlagsBits = 0xD000000000000014;
    v51._object = 0x8000000100089E70;
    String.append(_:)(v51);
    swift_getErrorValue();
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    goto LABEL_18;
  }

  Date.init(timeIntervalSinceReferenceDate:)();
LABEL_8:
  v28 = v56;
  v29 = v61;
  (*(v7 + 16))(v56, v62, v61);
  v30 = (*(v7 + 88))(v28, v29);
  v55 = v15;
  if (v30 == enum case for EventWriterScope.owned(_:))
  {
    v31 = v22;
    v32 = v20;
    LODWORD(v66) = 0;
LABEL_12:
    v33 = v58;
    v34 = *(v58 + 16);
    v35 = v59;
    v54 = v31;
    v34(v59, v31, v68);
    sub_10000D224(&v70, v72);
    v36 = type metadata accessor for PendingEventData(0);
    dispatch thunk of EventProtocol.homeIdentifier.getter();
    v37 = v69;
    v38 = v67;
    (*(v27 + 16))(v35 + v36[6], v69, v67);
    v39 = v63;
    EventRecord.EncodedEvent.type.getter();
    v40 = EventRecord.DataType.rawValue.getter();
    (*(v64 + 8))(v39, v65);
    v41 = EventRecord.EncodedEvent.data.getter();
    v43 = v42;
    (*(v27 + 8))(v37, v38);
    (*(v55 + 8))(v32, v60);
    (*(v33 + 8))(v54, v68);
    *(v35 + v36[7]) = v40;
    v44 = (v35 + v36[8]);
    *v44 = v41;
    v44[1] = v43;
    *(v35 + v36[9]) = v57;
    *(v35 + v36[10]) = v66;
    return sub_10000D330(&v70);
  }

  if (v30 == enum case for EventWriterScope.shared(_:))
  {
    v31 = v22;
    v32 = v20;
    LODWORD(v66) = 1;
    goto LABEL_12;
  }

  v73 = 0;
  v74 = 0xE000000000000000;
  _StringGuts.grow(_:)(21);

  v73 = 0xD000000000000013;
  v74 = 0x8000000100089E90;
  sub_100072428(&qword_1000AC150, 255, &type metadata accessor for EventWriterScope, &protocol conformance descriptor for EventWriterScope);
  v52._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v52);

LABEL_18:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_10006CC7C()
{
  sub_10000D330((v0 + 16));
  sub_10000D330((v0 + 56));

  sub_10000D330((v0 + 104));
  sub_10003FB64(*(v0 + 144), *(v0 + 152));

  return swift_deallocClassInstance();
}

uint64_t sub_10006CCF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[11] = a4;
  v5[12] = a5;
  v5[9] = a2;
  v5[10] = a3;
  sub_10000CED0(&qword_1000AAD30, &qword_100085540);
  v5[13] = swift_task_alloc();
  v5[14] = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  v5[15] = v6;
  v5[16] = *(v6 - 8);
  v5[17] = swift_task_alloc();
  v7 = type metadata accessor for EventWriterScope();
  v5[18] = v7;
  v5[19] = *(v7 - 8);
  v5[20] = swift_task_alloc();
  v5[21] = swift_task_alloc();
  v5[22] = swift_task_alloc();
  sub_10000CED0(&qword_1000AC140, &unk_100087CE0);
  v5[23] = swift_task_alloc();
  v5[24] = swift_task_alloc();

  return _swift_task_switch(sub_10006CEB8, 0, 0);
}

void sub_10006CEB8()
{
  v79 = v0;
  v1 = v0;
  v64 = v0 + 2;
  v2 = v0[19];
  v3 = v0[10];
  v6 = *(v3 + 64);
  v5 = v3 + 64;
  v4 = v6;
  v7 = -1;
  v8 = -1 << *(v0[10] + 32);
  if (-v8 < 64)
  {
    v7 = ~(-1 << -v8);
  }

  v9 = v7 & v4;
  v63 = (63 - v8) >> 6;
  v74 = (v2 + 16);
  v76 = (v2 + 32);
  v70 = v0[19];
  v75 = (v2 + 8);
  v68 = (v0[16] + 8);
  v69 = v0[10];

  v10 = 0;
  v71 = v5;
  v73 = v0;
  if (!v9)
  {
    goto LABEL_6;
  }

  do
  {
    while (1)
    {
      v13 = v10;
LABEL_16:
      v16 = v1[22];
      v17 = v1[23];
      v18 = v1[18];
      v19 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v20 = v19 | (v13 << 6);
      (*(v70 + 16))(v16, *(v69 + 48) + *(v70 + 72) * v20, v18);
      v21 = *(*(v69 + 56) + 8 * v20);
      v22 = sub_10000CED0(&qword_1000AC148, &qword_100087A98);
      v23 = *(v22 + 48);
      v1 = v73;
      (*(v70 + 32))(v17, v16, v18);
      *(v17 + v23) = v21;
      (*(*(v22 - 8) + 56))(v17, 0, 1, v22);

LABEL_17:
      v24 = v1[24];
      sub_1000723C0(v1[23], v24, &qword_1000AC140, &unk_100087CE0);
      v25 = sub_10000CED0(&qword_1000AC148, &qword_100087A98);
      if ((*(*(v25 - 8) + 48))(v24, 1, v25) == 1)
      {

        v62 = swift_task_alloc();
        v1[25] = v62;
        *v62 = v1;
        v62[1] = sub_10006D704;

        sub_100020618(0, 0);
        return;
      }

      v26 = *(v1[24] + *(v25 + 48));
      (*v76)(v1[21]);
      v28 = v1[21];
      if (*(v26 + 16))
      {
        break;
      }

      (*v75)(v1[21], v1[18]);

      v5 = v71;
      if (!v9)
      {
        goto LABEL_6;
      }
    }

    v77 = v26;
    v29 = v1[20];
    v30 = v1[18];
    sub_100072428(&qword_1000AB008, v27, type metadata accessor for EventUploader, &unk_100087A4C);
    static LoggedObject.logger.getter();
    v31 = v26;
    (*v74)(v29, v28, v30);

    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.info.getter();
    v34 = os_log_type_enabled(v32, v33);
    v35 = v1[20];
    v36 = v1[17];
    v37 = v1[18];
    v38 = v1[15];
    if (v34)
    {
      v67 = v1[17];
      v39 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      v78 = v66;
      *v39 = 134218242;
      *(v39 + 4) = *(v31 + 16);

      *(v39 + 12) = 2080;
      sub_100072428(&qword_1000AC150, 255, &type metadata accessor for EventWriterScope, &protocol conformance descriptor for EventWriterScope);
      v65 = v38;
      v40 = dispatch thunk of CustomStringConvertible.description.getter();
      v41 = v33;
      v43 = v42;
      v72 = *v75;
      (*v75)(v35, v37);
      v44 = sub_100035120(v40, v43, &v78);

      *(v39 + 14) = v44;
      _os_log_impl(&_mh_execute_header, v32, v41, "Uploading %ld event(s) to %s scope", v39, 0x16u);
      sub_10000D330(v66);

      (*v68)(v67, v65);
    }

    else
    {

      v72 = *v75;
      (*v75)(v35, v37);
      (*v68)(v36, v38);
    }

    v46 = v1[13];
    v45 = v1[14];
    v47 = v1[11];
    v48 = type metadata accessor for TaskPriority();
    v49 = *(v48 - 8);
    (*(v49 + 56))(v45, 1, 1, v48);
    v50 = swift_allocObject();
    v51 = v1;
    v50[2] = 0;
    v52 = v50 + 2;
    v50[3] = 0;
    v50[4] = v47;
    v50[5] = v77;
    sub_100013358(v45, v46, &qword_1000AAD30, &qword_100085540);
    LODWORD(v46) = (*(v49 + 48))(v46, 1, v48);

    v53 = v51[13];
    if (v46 == 1)
    {
      sub_10000D620(v51[13], &qword_1000AAD30, &qword_100085540);
      if (*v52)
      {
        goto LABEL_24;
      }
    }

    else
    {
      TaskPriority.rawValue.getter();
      (*(v49 + 8))(v53, v48);
      if (*v52)
      {
LABEL_24:
        swift_getObjectType();
        swift_unknownObjectRetain();
        v54 = dispatch thunk of Actor.unownedExecutor.getter();
        v56 = v55;
        swift_unknownObjectRelease();
        goto LABEL_27;
      }
    }

    v54 = 0;
    v56 = 0;
LABEL_27:
    v1 = v73;
    v57 = *v73[9];

    if (v56 | v54)
    {
      v58 = v64;
      *v64 = 0;
      v64[1] = 0;
      v73[4] = v54;
      v73[5] = v56;
    }

    else
    {
      v58 = 0;
    }

    v59 = v73[21];
    v60 = v73[18];
    v61 = v73[14];
    v73[6] = 1;
    v73[7] = v58;
    v73[8] = v57;
    swift_task_create();

    sub_10000D620(v61, &qword_1000AAD30, &qword_100085540);
    v72(v59, v60);
    v5 = v71;
  }

  while (v9);
LABEL_6:
  if (v63 <= v10 + 1)
  {
    v11 = v10 + 1;
  }

  else
  {
    v11 = v63;
  }

  v12 = v11 - 1;
  while (1)
  {
    v13 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v13 >= v63)
    {
      v14 = v1[23];
      v15 = sub_10000CED0(&qword_1000AC148, &qword_100087A98);
      (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
      v9 = 0;
      v10 = v12;
      goto LABEL_17;
    }

    v9 = *(v5 + 8 * v13);
    ++v10;
    if (v9)
    {
      v10 = v13;
      goto LABEL_16;
    }
  }

  __break(1u);
}

uint64_t sub_10006D704()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10006D8F8(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_10000D130;

  return sub_10006CCF8(a1, a2, v6, v7, v8);
}

uint64_t sub_10006D9BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = sub_10000D130;

  return sub_10006DA58(a5);
}

uint64_t sub_10006DA58(uint64_t a1)
{
  v2[12] = a1;
  v2[13] = v1;
  v2[14] = *v1;
  v2[15] = sub_10000CED0(&qword_1000AC158, &qword_100087AB8);
  v2[16] = swift_task_alloc();
  v3 = type metadata accessor for UUID();
  v2[17] = v3;
  v2[18] = *(v3 - 8);
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v4 = type metadata accessor for EventRecord.DataType();
  v2[23] = v4;
  v2[24] = *(v4 - 8);
  v2[25] = swift_task_alloc();
  v2[26] = sub_10000CED0(&qword_1000AC160, &qword_100087AC0);
  v2[27] = swift_task_alloc();
  sub_10000CED0(&qword_1000AB8F8, &qword_100086D78);
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();
  v5 = type metadata accessor for PendingEventData(0);
  v2[31] = v5;
  v2[32] = *(v5 - 8);
  v2[33] = swift_task_alloc();
  sub_10000CED0(&qword_1000AB918, &qword_100086D98);
  v2[34] = swift_task_alloc();
  v2[35] = swift_task_alloc();
  sub_10000CED0(&qword_1000AC168, &qword_100087AC8);
  v2[36] = swift_task_alloc();
  v2[37] = swift_task_alloc();
  v2[38] = swift_task_alloc();
  v6 = sub_10000CED0(&qword_1000AB6B8, &qword_100086D40);
  v2[39] = v6;
  v2[40] = *(v6 - 8);
  v2[41] = swift_task_alloc();
  v2[42] = swift_task_alloc();
  v2[43] = swift_task_alloc();
  v2[44] = swift_task_alloc();
  v2[45] = swift_task_alloc();
  v7 = type metadata accessor for Logger();
  v2[46] = v7;
  v2[47] = *(v7 - 8);
  v2[48] = swift_task_alloc();
  v2[49] = swift_task_alloc();
  v2[50] = swift_task_alloc();
  v2[51] = swift_task_alloc();
  v2[52] = swift_task_alloc();
  v2[53] = swift_task_alloc();
  v2[54] = swift_task_alloc();
  v2[55] = swift_task_alloc();
  v2[56] = swift_task_alloc();

  return _swift_task_switch(sub_10006DECC, 0, 0);
}

void *sub_10006DECC(uint64_t a1, uint64_t a2)
{
  v129 = v2;
  v3 = *(*(v2 + 96) + 16);
  *(v2 + 456) = v3;
  *(v2 + 464) = sub_100072428(&qword_1000AB008, a2, type metadata accessor for EventUploader, &unk_100087A4C);
  if (v3)
  {
    static LoggedObject.logger.getter();

    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    v117 = v3;
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 134217984;
      *(v6 + 4) = v3;

      _os_log_impl(&_mh_execute_header, v4, v5, "Uploading %ld event(s)", v6, 0xCu);
    }

    else
    {
    }

    v16 = *(v2 + 448);
    v17 = *(v2 + 368);
    v18 = *(v2 + 376);
    v19 = *(v18 + 8);
    *(v2 + 472) = v19;
    *(v2 + 480) = (v18 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v19(v16, v17);
    static LoggedObject.logger.getter();

    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.debug.getter();

    v22 = os_log_type_enabled(v20, v21);
    v23 = *(v2 + 440);
    v24 = *(v2 + 368);
    if (v22)
    {
      v126 = v19;
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v128[0] = v26;
      *v25 = 136315138;
      v27 = Array.description.getter();
      v29 = sub_100035120(v27, v28, v128);

      *(v25 + 4) = v29;
      _os_log_impl(&_mh_execute_header, v20, v21, "%s", v25, 0xCu);
      sub_10000D330(v26);

      v126(v23, v24);
    }

    else
    {

      v19(v23, v24);
    }

    v30 = *(v2 + 104);
    v31 = v30[18];
    v32 = v117;
    if (v31)
    {
      v33 = v30[19];

      v31(v117);
      sub_10003FB64(v31, v33);
    }

    else
    {
      v34 = *(v2 + 112);
      v35 = [objc_allocWithZone(CKOperationGroup) init];
      v128[0] = v35;
      sub_10006BEB0(v128, v117, v30, v34);
      *(v2 + 40) = &type metadata for EventRecordUploader;
      *(v2 + 48) = &off_1000A2BF8;
      v36 = swift_allocObject();
      *(v2 + 16) = v36;
      sub_10000D2CC((v30 + 2), v36 + 16);
      sub_10000D2CC((v30 + 13), v36 + 80);
      v37 = v30[21];
      *(v36 + 56) = v35;
      *(v36 + 64) = 1;
      *(v36 + 72) = v37;
    }

    v38 = *(v2 + 320);
    v39 = *(v2 + 256);
    v116 = *(v2 + 208);
    v40 = *(v2 + 192);
    v41 = *(v2 + 144);
    sub_100072428(&unk_1000AC310, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);

    result = Set.init(minimumCapacity:)();
    v121 = (v39 + 56);
    v128[0] = result;
    v42 = (v39 + 48);
    v115 = (v40 + 104);
    v114 = enum case for EventRecord.DataType.fakeEvent(_:);
    v113 = (v40 + 56);
    v111 = v39;
    v112 = (v40 + 48);
    v106 = (v40 + 32);
    v43 = (v40 + 8);
    v44 = 0;
    v110 = v43;
    v123 = (v41 + 56);
    v107 = (v41 + 16);
    v120 = (v38 + 56);
    v124 = v41 + 48;
    v125 = (v38 + 48);
    v122 = (v41 + 32);
    v118 = (v41 + 8);
    v119 = (v39 + 48);
    v45 = v117 == 0;
LABEL_19:
    if (v45)
    {
      __break(1u);
    }

    else
    {
      result = sub_100037660(*(v2 + 96) + ((*(v111 + 80) + 32) & ~*(v111 + 80)) + *(v111 + 72) * v44, *(v2 + 280));
      v48 = __OFADD__(v44, 1);
      v49 = v44 + 1;
      if (!v48)
      {
        v127 = v49;
        for (i = 0; ; i = 1)
        {
          v52 = *(v2 + 272);
          v51 = *(v2 + 280);
          v53 = *(v2 + 248);
          v54 = 1;
          (*v121)(v51, i, 1, v53);
          sub_1000723C0(v51, v52, &qword_1000AB918, &qword_100086D98);
          if ((*v42)(v52, 1, v53) == 1)
          {
            goto LABEL_34;
          }

          v56 = *(v2 + 232);
          v55 = *(v2 + 240);
          v57 = *(v2 + 216);
          v58 = *(v2 + 184);
          sub_10003FB74(*(v2 + 272), *(v2 + 264));
          EventRecord.DataType.init(rawValue:)();
          (*v115)(v56, v114, v58);
          (*v113)(v56, 0, 1, v58);
          v59 = *(v116 + 48);
          sub_100013358(v55, v57, &qword_1000AB8F8, &qword_100086D78);
          sub_100013358(v56, v57 + v59, &qword_1000AB8F8, &qword_100086D78);
          v60 = *v112;
          v61 = (*v112)(v57, 1, v58);
          v62 = *(v2 + 184);
          if (v61 == 1)
          {
            v63 = *(v2 + 240);
            sub_10000D620(*(v2 + 232), &qword_1000AB8F8, &qword_100086D78);
            sub_10000D620(v63, &qword_1000AB8F8, &qword_100086D78);
            if (v60(v57 + v59, 1, v62) == 1)
            {
              sub_10000D620(*(v2 + 216), &qword_1000AB8F8, &qword_100086D78);
              v32 = v117;
LABEL_31:
              (*v107)(*(v2 + 296), *(v2 + 264), *(v2 + 136));
              v69 = 0;
              goto LABEL_33;
            }
          }

          else
          {
            sub_100013358(*(v2 + 216), *(v2 + 224), &qword_1000AB8F8, &qword_100086D78);
            v64 = v60(v57 + v59, 1, v62);
            v65 = *(v2 + 232);
            v66 = *(v2 + 240);
            v67 = *(v2 + 224);
            if (v64 != 1)
            {
              v109 = *(v2 + 216);
              v70 = *(v2 + 200);
              v71 = *(v2 + 184);
              (*v106)(v70, v57 + v59, v71);
              sub_100072428(&qword_1000AC178, 255, &type metadata accessor for EventRecord.DataType, &protocol conformance descriptor for EventRecord.DataType);
              v108 = dispatch thunk of static Equatable.== infix(_:_:)();
              v72 = *v110;
              v73 = v70;
              v32 = v117;
              (*v110)(v73, v71);
              sub_10000D620(v65, &qword_1000AB8F8, &qword_100086D78);
              sub_10000D620(v66, &qword_1000AB8F8, &qword_100086D78);
              v72(v67, v71);
              sub_10000D620(v109, &qword_1000AB8F8, &qword_100086D78);
              if ((v108 & 1) == 0)
              {
                v69 = 1;
                goto LABEL_33;
              }

              goto LABEL_31;
            }

            v68 = *(v2 + 184);
            sub_10000D620(*(v2 + 232), &qword_1000AB8F8, &qword_100086D78);
            sub_10000D620(v66, &qword_1000AB8F8, &qword_100086D78);
            (*v110)(v67, v68);
          }

          sub_10000D620(*(v2 + 216), &qword_1000AC160, &qword_100087AC0);
          v69 = 1;
          v32 = v117;
LABEL_33:
          v74 = *(v2 + 264);
          (*v123)(*(v2 + 296), v69, 1, *(v2 + 136));
          sub_1000376C4(v74);
          v54 = 0;
LABEL_34:
          v75 = *(v2 + 312);
          v76 = *(v2 + 296);
          v77 = *v120;
          (*v120)(v76, v54, 1, v75);
          v78 = *v125;
          if ((*v125)(v76, 1, v75) == 1)
          {
            v79 = *(v2 + 304);
            v80 = *(v2 + 312);
            sub_10000D620(*(v2 + 296), &qword_1000AC168, &qword_100087AC8);
            v77(v79, 1, 1, v80);
          }

          else
          {
            v81 = *(v2 + 352);
            v82 = *(v2 + 136);
            sub_1000723C0(*(v2 + 296), v81, &qword_1000AB6B8, &qword_100086D40);
            v83 = (*v124)(v81, 1, v82);
            v84 = *(v2 + 352);
            if (v83 == 1)
            {
              result = sub_10000D620(v84, &qword_1000AB6B8, &qword_100086D40);
              v44 = v127;
              goto LABEL_18;
            }

            v85 = *(v2 + 304);
            v86 = *(v2 + 312);
            sub_1000723C0(v84, v85, &qword_1000AB6B8, &qword_100086D40);
            v77(v85, 0, 1, v86);
          }

          v87 = *(v2 + 312);
          v88 = *(v2 + 288);
          sub_1000723C0(*(v2 + 304), v88, &qword_1000AC168, &qword_100087AC8);
          if (v78(v88, 1, v87) == 1)
          {
            (*v123)(*(v2 + 360), 1, 1, *(v2 + 136));
            v89 = *v124;
            v44 = v127;
          }

          else
          {
            v90 = *(v2 + 336);
            v91 = *(v2 + 344);
            v92 = *(v2 + 136);
            sub_1000723C0(*(v2 + 288), v91, &qword_1000AB6B8, &qword_100086D40);
            sub_100013358(v91, v90, &qword_1000AB6B8, &qword_100086D40);
            v89 = *v124;
            result = (*v124)(v90, 1, v92);
            if (result == 1)
            {
              goto LABEL_49;
            }

            v93 = *(v2 + 360);
            v94 = *(v2 + 344);
            v95 = *(v2 + 136);
            (*v122)(v93, *(v2 + 336), v95);
            sub_10000D620(v94, &qword_1000AB6B8, &qword_100086D40);
            (*v123)(v93, 0, 1, v95);
            v44 = v127;
          }

          v96 = *(v2 + 360);
          v97 = *(v2 + 136);
          *(v2 + 488) = v89;
          *(v2 + 496) = v124 & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
          if (v89(v96, 1, v97) == 1)
          {

            v98 = v128[0];
            *(v2 + 504) = v128[0];
            v99 = v98[2];
            *(v2 + 512) = v99;
            v100 = v99 == v32;
            v101 = type metadata accessor for EventUploadSubtaskLogEvent();
            v102 = objc_allocWithZone(v101);
            v103 = OBJC_IVAR____TtC11homeeventsd26EventUploadSubtaskLogEvent_metricsManager;
            type metadata accessor for MetricsManager();
            *&v102[v103] = static MetricsManager.sharedInstance.getter();
            v102[OBJC_IVAR____TtC11homeeventsd26EventUploadSubtaskLogEvent_subtaskType] = 1;
            *&v102[OBJC_IVAR____TtC11homeeventsd26EventUploadSubtaskLogEvent_numRecords] = v32;
            v102[OBJC_IVAR____TtC11homeeventsd26EventUploadSubtaskLogEvent_attributedToFakeData] = v100;
            *(v2 + 56) = v102;
            *(v2 + 64) = v101;
            *(v2 + 520) = objc_msgSendSuper2((v2 + 56), "init");
            sub_10000D224((v2 + 16), *(v2 + 40));
            v104 = swift_task_alloc();
            *(v2 + 528) = v104;
            *v104 = v2;
            v104[1] = sub_10006EDD0;
            v105 = *(v2 + 96);

            return sub_1000370C8(v105);
          }

          v47 = *(v2 + 168);
          v46 = *(v2 + 176);
          (*v122)(v47, v96, v97);
          sub_10002F2E4(v46, v47);
          result = (*v118)(v46, v97);
LABEL_18:
          v42 = v119;
          v45 = v44 >= v32;
          if (v44 != v32)
          {
            goto LABEL_19;
          }

          v127 = v32;
        }
      }
    }

    __break(1u);
LABEL_49:
    __break(1u);
  }

  else
  {
    static LoggedObject.logger.getter();
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.info.getter();
    v9 = os_log_type_enabled(v7, v8);
    v10 = *(v2 + 408);
    v11 = *(v2 + 368);
    v12 = *(v2 + 376);
    if (v9)
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "No events to upload", v13, 2u);
    }

    (*(v12 + 8))(v10, v11);

    v14 = *(v2 + 8);

    return v14();
  }

  return result;
}

uint64_t sub_10006EDD0(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 536) = a1;
  *(v3 + 544) = v1;

  if (v1)
  {
    v4 = sub_10006F2FC;
  }

  else
  {
    v4 = sub_10006EEE8;
  }

  return _swift_task_switch(v4, 0, 0);
}

void sub_10006EEE8()
{
  static LoggedObject.logger.getter();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Upload operation completed successfully", v3, 2u);
  }

  v4 = *(v0 + 536);
  v5 = *(v0 + 472);
  v6 = *(v0 + 432);
  v7 = *(v0 + 368);
  v39 = *(v0 + 144);
  v37 = *(v0 + 120);

  v5(v6, v7);
  sub_100031AD8();
  *(v0 + 88) = &_swiftEmptyDictionarySingleton;
  *(v0 + 72) = 0;
  *(v0 + 80) = 1;
  v35 = v4 + 64;
  v8 = -1;
  v9 = -1 << *(v4 + 32);
  if (-v9 < 64)
  {
    v8 = ~(-1 << -v9);
  }

  v10 = v8 & *(v4 + 64);
  v11 = (63 - v9) >> 6;
  v38 = v4;

  v12 = 0;
  v40 = _swiftEmptyArrayStorage;
  v36 = v11;
LABEL_6:
  v13 = v12;
  while (1)
  {
    *(v0 + 552) = v40;
    if (!v10)
    {
      break;
    }

    v12 = v13;
LABEL_12:
    v41 = *(v0 + 504);
    v42 = *(v0 + 488);
    v14 = *(v0 + 328);
    v15 = *(v0 + 136);
    v16 = *(v0 + 128);
    v17 = *(v0 + 112);
    v18 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    v19 = v18 | (v12 << 6);
    v20 = *(v39 + 72);
    (*(*(v0 + 144) + 16))(v16, *(v38 + 48) + v20 * v19, v15);
    v21 = *(*(v38 + 56) + 8 * v19);
    *&v16[*(v37 + 48)] = v21;
    swift_errorRetain();
    sub_100070384(v16, v21, v41, (v0 + 88), v0 + 72, v17, v14);
    sub_10000D620(v16, &qword_1000AC158, &qword_100087AB8);
    if (v42(v14, 1, v15) != 1)
    {
      v22 = *(v0 + 152);
      v23 = *(v0 + 160);
      v24 = *(v0 + 136);
      v25 = *(*(v0 + 144) + 32);
      v25(v23, *(v0 + 328), v24);
      v25(v22, v23, v24);
      v11 = v36;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v40 = sub_100022858(0, v40[2] + 1, 1, v40);
      }

      v27 = v40[2];
      v26 = v40[3];
      v28 = v27 + 1;
      if (v27 >= v26 >> 1)
      {
        v31 = sub_100022858((v26 > 1), v27 + 1, 1, v40);
        v28 = v27 + 1;
        v40 = v31;
      }

      v29 = *(v0 + 152);
      v30 = *(v0 + 136);
      v40[2] = v28;
      v25(v40 + ((*(v39 + 80) + 32) & ~*(v39 + 80)) + v27 * v20, v29, v30);
      goto LABEL_6;
    }

    sub_10000D620(*(v0 + 328), &qword_1000AB6B8, &qword_100086D40);
    v13 = v12;
    v11 = v36;
  }

  while (1)
  {
    v12 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
      return;
    }

    if (v12 >= v11)
    {
      break;
    }

    v10 = *(v35 + 8 * v12);
    ++v13;
    if (v10)
    {
      goto LABEL_12;
    }
  }

  v32 = *(v0 + 512);
  v33 = *(v0 + 456);

  v34 = swift_task_alloc();
  *(v0 + 560) = v34;
  *v34 = v0;
  v34[1] = sub_10006F858;

  sub_100071684(v40, v32 == v33);
}

uint64_t sub_10006F2FC()
{
  v1 = v0[68];
  sub_100031DC0(v1);
  v2 = sub_100072224(v1);
  if (!(v3 >> 62))
  {
    return _assertionFailure(_:_:file:line:flags:)();
  }

  v5 = v3;
  v6 = v4;
  v28 = v2;
  if (v3 >> 62 != 1)
  {
    v8 = v0 + 48;

    static LoggedObject.logger.getter();
    swift_errorRetain();
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v27 = v6;
      v11 = 12;
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v12 = 258;
      v14 = "Upload operation failed with non-recoverable error: %{public}@";
      goto LABEL_9;
    }

LABEL_13:
    v19 = *v8;
    goto LABEL_14;
  }

  v7 = v2;

  if ((v5 & 1) == 0)
  {
    v8 = v0 + 50;
    static LoggedObject.logger.getter();
    swift_errorRetain();
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v27 = v6;
      v11 = 22;
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v12 = 134349314;
      *(v12 + 4) = v7;
      v26 = "Upload operation failed with recoverable error that includes suggested retry time of %{public}f seconds: %{public}@";
      v16 = 14;
      v17 = 13;
      v18 = 12;
      goto LABEL_12;
    }

    goto LABEL_13;
  }

  v8 = v0 + 49;
  static LoggedObject.logger.getter();
  swift_errorRetain();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();

  if (!os_log_type_enabled(v9, v10))
  {
    goto LABEL_13;
  }

  v27 = v6;
  v11 = 12;
  v12 = swift_slowAlloc();
  v13 = swift_slowAlloc();
  *v12 = 258;
  v14 = "Upload operation failed with recoverable error that did not include a retry time suggestion: %{public}@";
LABEL_9:
  v26 = v14;
  v16 = 4;
  v17 = 3;
  v18 = 2;
LABEL_12:
  v19 = *v8;
  *(v12 + v18) = 66;
  *(v12 + v17) = 8;
  swift_errorRetain();
  v20 = _swift_stdlib_bridgeErrorToNSError();
  *(v12 + v16) = v20;
  *v13 = v20;
  _os_log_impl(&_mh_execute_header, v9, v10, v26, v12, v11);
  sub_10000D620(v13, &unk_1000AB7D0, &qword_100085510);

  v6 = v27;
LABEL_14:
  v21 = v0[65];
  v22 = v0[59];
  v23 = v0[46];

  v22(v19, v23);
  sub_10007236C();
  swift_allocError();
  *v24 = v28;
  v24[1] = v5;
  v24[2] = v6;
  swift_willThrow();

  sub_10000D330(v0 + 2);

  v25 = v0[1];

  return v25();
}

uint64_t sub_10006F858()
{
  *(*v1 + 568) = v0;

  if (v0)
  {
    v2 = sub_10006FE84;
  }

  else
  {
    v2 = sub_10006F98C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10006F98C()
{
  v1 = *(v0 + 88);
  if (*(v1 + 16))
  {
    static LoggedObject.logger.getter();
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "Some events failed to upload", v4, 2u);
    }

    v5 = *(v0 + 520);
    v6 = *(v0 + 472);
    v7 = *(v0 + 424);
    v8 = *(v0 + 368);

    v6(v7, v8);
    v9 = *(v0 + 72);
    v10 = *(v0 + 80);
    sub_10007236C();
    swift_allocError();
    *v11 = v9;
    v11[1] = v10;
    v11[2] = v1;
    swift_willThrow();

    sub_10000D330((v0 + 16));

    v12 = *(v0 + 8);
  }

  else
  {
    static LoggedObject.logger.getter();
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "All events uploaded successfully", v15, 2u);
    }

    v16 = *(v0 + 472);
    v17 = *(v0 + 416);
    v18 = *(v0 + 368);

    v16(v17, v18);

    sub_10000D330((v0 + 16));

    v12 = *(v0 + 8);
  }

  return v12();
}

uint64_t sub_10006FE84()
{

  v1 = *(v0 + 88);
  if (*(v1 + 16))
  {
    static LoggedObject.logger.getter();
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "Some events failed to upload", v4, 2u);
    }

    v5 = *(v0 + 520);
    v6 = *(v0 + 472);
    v7 = *(v0 + 424);
    v8 = *(v0 + 368);

    v6(v7, v8);
    v9 = *(v0 + 72);
    v10 = *(v0 + 80);
    sub_10007236C();
    swift_allocError();
    *v11 = v9;
    v11[1] = v10;
    v11[2] = v1;
    swift_willThrow();

    sub_10000D330((v0 + 16));

    v12 = *(v0 + 8);
  }

  else
  {
    static LoggedObject.logger.getter();
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "All events uploaded successfully", v15, 2u);
    }

    v16 = *(v0 + 472);
    v17 = *(v0 + 416);
    v18 = *(v0 + 368);

    v16(v17, v18);

    sub_10000D330((v0 + 16));

    v12 = *(v0 + 8);
  }

  return v12();
}