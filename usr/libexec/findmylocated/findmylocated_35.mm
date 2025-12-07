uint64_t sub_1003E82E0()
{
  v1 = *(*v0 + 96);

  return _swift_task_switch(sub_1003E83F0, v1, 0);
}

uint64_t sub_1003E83F0()
{
  v1 = *(v0[12] + v0[60]);
  v0[65] = v1;
  if (v1)
  {
    v14 = (&async function pointer to dispatch thunk of XPCActivity.updateCriteria() + async function pointer to dispatch thunk of XPCActivity.updateCriteria());

    v2 = swift_task_alloc();
    v0[66] = v2;
    *v2 = v0;
    v2[1] = sub_1003E85E8;
    v3 = v0[40];

    return v14(v3);
  }

  else
  {
    v5 = v0[49];
    v6 = v0[43];
    v7 = v0[40];
    v8 = type metadata accessor for XPCActivity.State();
    (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
    sub_100002CE0(v7, &qword_1005B3750, &qword_1004D84E8);
    sub_100002CE0(v6, &qword_1005AA718, &qword_1004C4370);
    sub_1003F4E48(v5, type metadata accessor for DataManager.State);
    v0[61] = v0[63];
    v9 = v0[59];
    v10 = v0[12];
    v11 = swift_task_alloc();
    v0[62] = v11;
    *v11 = v0;
    v11[1] = sub_1003E6588;
    v12 = v0[50];
    v13 = v0[51];

    return AsyncStream.Iterator.next(isolation:)(v12, v10, v9, v13);
  }
}

uint64_t sub_1003E85E8()
{
  v1 = *(*v0 + 96);

  return _swift_task_switch(sub_1003E8714, v1, 0);
}

uint64_t sub_1003E8714()
{
  v1 = v0[49];
  v2 = v0[43];
  v3 = v0[40];
  v4 = type metadata accessor for XPCActivity.State();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  sub_100002CE0(v3, &qword_1005B3750, &qword_1004D84E8);
  sub_100002CE0(v2, &qword_1005AA718, &qword_1004C4370);
  sub_1003F4E48(v1, type metadata accessor for DataManager.State);
  v0[61] = v0[63];
  v5 = v0[59];
  v6 = v0[12];
  v7 = swift_task_alloc();
  v0[62] = v7;
  *v7 = v0;
  v7[1] = sub_1003E6588;
  v8 = v0[50];
  v9 = v0[51];

  return AsyncStream.Iterator.next(isolation:)(v8, v6, v5, v9);
}

uint64_t sub_1003E8868()
{
  v1 = *(*v0 + 96);

  return _swift_task_switch(sub_1003E8994, v1, 0);
}

uint64_t sub_1003E8994()
{
  v1 = v0[67];
  v2 = v0[49];
  v3 = v0[39];
  v4 = v0[37];
  v5 = v0[27];
  v6 = type metadata accessor for XPCActivity.State();
  (*(*(v6 - 8) + 56))(v3, 0, 1, v6);
  sub_100002CE0(v3, &qword_1005B3750, &qword_1004D84E8);
  v1(v4, v5);
  sub_1003F4E48(v2, type metadata accessor for DataManager.State);
  v0[61] = v0[63];
  v7 = v0[59];
  v8 = v0[12];
  v9 = swift_task_alloc();
  v0[62] = v9;
  *v9 = v0;
  v9[1] = sub_1003E6588;
  v10 = v0[50];
  v11 = v0[51];

  return AsyncStream.Iterator.next(isolation:)(v10, v8, v7, v11);
}

uint64_t sub_1003E8AF8()
{
  v1 = *(*v0 + 96);

  return _swift_task_switch(sub_1003E8C24, v1, 0);
}

uint64_t sub_1003E8C24()
{
  v1 = v0[70];
  v2 = v0[49];
  v3 = v0[38];
  v4 = v0[33];
  v5 = v0[27];
  v6 = type metadata accessor for XPCActivity.State();
  (*(*(v6 - 8) + 56))(v3, 0, 1, v6);
  sub_100002CE0(v3, &qword_1005B3750, &qword_1004D84E8);
  v1(v4, v5);
  sub_1003F4E48(v2, type metadata accessor for DataManager.State);
  v0[61] = v0[63];
  v7 = v0[59];
  v8 = v0[12];
  v9 = swift_task_alloc();
  v0[62] = v9;
  *v9 = v0;
  v9[1] = sub_1003E6588;
  v10 = v0[50];
  v11 = v0[51];

  return AsyncStream.Iterator.next(isolation:)(v10, v8, v7, v11);
}

uint64_t sub_1003E8D88()
{
  v1 = *(*v0 + 112);
  v2 = *(*v0 + 96);

  sub_100002CE0(v1, &qword_1005B1C88, &qword_1004D5E68);

  return _swift_task_switch(sub_1003E8EC4, v2, 0);
}

uint64_t sub_1003E8EC4(uint64_t a1)
{
  sub_100438FC0();
  sub_1003F4E48(v1[49], type metadata accessor for DataManager.State);
  v1[61] = v1[63];
  v2 = v1[59];
  v3 = v1[12];
  v4 = swift_task_alloc();
  v1[62] = v4;
  *v4 = v1;
  v4[1] = sub_1003E6588;
  v5 = v1[50];
  v6 = v1[51];

  return AsyncStream.Iterator.next(isolation:)(v5, v3, v2, v6);
}

uint64_t sub_1003E8FA4()
{
  v1 = *(*v0 + 96);

  return _swift_task_switch(sub_1003E90B4, v1, 0);
}

uint64_t sub_1003E90B4()
{
  sub_1003F4E48(v0[49], type metadata accessor for DataManager.State);
  v0[61] = v0[63];
  v1 = v0[59];
  v2 = v0[12];
  v3 = swift_task_alloc();
  v0[62] = v3;
  *v3 = v0;
  v3[1] = sub_1003E6588;
  v4 = v0[50];
  v5 = v0[51];

  return AsyncStream.Iterator.next(isolation:)(v4, v2, v1, v5);
}

uint64_t sub_1003E918C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000368C;

  return sub_1003E921C();
}

uint64_t sub_1003E921C()
{
  v1[13] = v0;
  sub_10004B564(&qword_1005B1C88, &qword_1004D5E68);
  v1[14] = swift_task_alloc();
  v2 = sub_10004B564(&qword_1005B3748, &qword_1004D84D8);
  v1[15] = v2;
  v1[16] = *(v2 - 8);
  v1[17] = swift_task_alloc();
  sub_10004B564(&qword_1005B3720, &qword_1004D8408);
  v1[18] = swift_task_alloc();
  v3 = sub_10004B564(&qword_1005B3570, &qword_1004D82F0);
  v1[19] = v3;
  v1[20] = *(v3 - 8);
  v1[21] = swift_task_alloc();

  return _swift_task_switch(sub_1003E93C0, v0, 0);
}

uint64_t sub_1003E93C0(uint64_t a1)
{
  if (static SystemInfo.underTest.getter())
  {

    v2 = v1[1];
LABEL_11:

    return v2();
  }

  if (qword_1005A8530 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  v1[22] = sub_10000A6F0(v3, qword_1005E0C30);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "Monitoring LocationServicesToggle stream", v6, 2u);
  }

  v7 = v1[19];
  v8 = v1[20];
  v9 = v1[18];
  v10 = v1[13];

  v11 = OBJC_IVAR____TtC13findmylocated14NITokenService_locationServicesToggleStream;
  swift_beginAccess();
  sub_100005F04(v10 + v11, v9, &qword_1005B3720, &qword_1004D8408);
  if ((*(v8 + 48))(v9, 1, v7) == 1)
  {
    sub_100002CE0(v1[18], &qword_1005B3720, &qword_1004D8408);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "locationServicesToggleStream should be available by now!", v14, 2u);
    }

    sub_1003DA6A0();
    swift_allocError();
    *v15 = 8;
    swift_willThrow();

    v2 = v1[1];
    goto LABEL_11;
  }

  (*(v1[20] + 32))(v1[21], v1[18], v1[19]);
  AsyncStream.makeAsyncIterator()();
  v17 = sub_1003F50C4(&qword_1005B3700, type metadata accessor for NITokenService, &unk_1004D83C8);
  v1[23] = v17;
  v1[24] = 0;
  v18 = v1[13];
  v19 = swift_task_alloc();
  v1[25] = v19;
  *v19 = v1;
  v19[1] = sub_1003E9768;
  v20 = v1[15];

  return AsyncStream.Iterator.next(isolation:)(v1 + 29, v18, v17, v20);
}

uint64_t sub_1003E9768()
{
  v1 = *(*v0 + 104);

  return _swift_task_switch(sub_1003E9878, v1, 0);
}

uint64_t sub_1003E9878(uint64_t a1)
{
  v46 = v1;
  v2 = *(v1 + 232);
  if (v2 == 4)
  {
    v4 = *(v1 + 160);
    v3 = *(v1 + 168);
    v5 = *(v1 + 152);
    (*(*(v1 + 128) + 8))(*(v1 + 136), *(v1 + 120));
    (*(v4 + 8))(v3, v5);

    v6 = *(v1 + 8);
LABEL_5:

    return v6();
  }

  v7 = *(v1 + 192);
  static Task<>.checkCancellation()();
  *(v1 + 208) = v7;
  if (v7)
  {
    v9 = *(v1 + 160);
    v8 = *(v1 + 168);
    v10 = *(v1 + 152);
    (*(*(v1 + 128) + 8))(*(v1 + 136), *(v1 + 120));
    (*(v9 + 8))(v8, v10);

    v6 = *(v1 + 8);
    goto LABEL_5;
  }

  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *(v1 + 96) = v15;
    *v14 = 136315138;
    if (v2 == 2)
    {
      v16 = 0x6E776F6E6B6E752ELL;
      v17 = 0xE800000000000000;
    }

    else if (v2 == 3)
    {
      v16 = 0x6C616974696E692ELL;
      v17 = 0xEC00000064657A69;
    }

    else
    {
      *(v1 + 80) = 0;
      *(v1 + 88) = 0xE000000000000000;
      _StringGuts.grow(_:)(21);

      *(v1 + 64) = 0xD000000000000012;
      *(v1 + 72) = 0x80000001004E9C50;
      if (v2)
      {
        v18 = 1702195828;
      }

      else
      {
        v18 = 0x65736C6166;
      }

      if (v2)
      {
        v19 = 0xE400000000000000;
      }

      else
      {
        v19 = 0xE500000000000000;
      }

      v20 = v19;
      String.append(_:)(*&v18);

      v21._countAndFlagsBits = 41;
      v21._object = 0xE100000000000000;
      String.append(_:)(v21);
      v16 = *(v1 + 64);
      v17 = *(v1 + 72);
    }

    v22 = sub_10000D01C(v16, v17, (v1 + 96));

    *(v14 + 4) = v22;
    _os_log_impl(&_mh_execute_header, v12, v13, "locationServicesToggleStream event: %s", v14, 0xCu);
    sub_100004984(v15);
  }

  if ((v2 & 0xFE) == 2)
  {
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v45[0] = v26;
      *v25 = 136315138;
      if (v2 == 2)
      {
        v27 = 0x6E776F6E6B6E752ELL;
      }

      else
      {
        v27 = 0x6C616974696E692ELL;
      }

      if (v2 == 2)
      {
        v28 = 0xE800000000000000;
      }

      else
      {
        v28 = 0xEC00000064657A69;
      }

      v29 = sub_10000D01C(v27, v28, v45);

      *(v25 + 4) = v29;
      _os_log_impl(&_mh_execute_header, v23, v24, "Ignoring %s", v25, 0xCu);
      sub_100004984(v26);
    }

    *(v1 + 192) = *(v1 + 208);
    v30 = *(v1 + 184);
    v31 = *(v1 + 104);
    v32 = swift_task_alloc();
    *(v1 + 200) = v32;
    *v32 = v1;
    v32[1] = sub_1003E9768;
    v33 = *(v1 + 120);

    return AsyncStream.Iterator.next(isolation:)(v1 + 232, v31, v30, v33);
  }

  else
  {
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v45[0] = v37;
      *v36 = 136315138;
      if (v2)
      {
        v38 = 0x64656C62616E65;
      }

      else
      {
        v38 = 0x64656C6261736964;
      }

      if (v2)
      {
        v39 = 0xE700000000000000;
      }

      else
      {
        v39 = 0xE800000000000000;
      }

      v40 = sub_10000D01C(v38, v39, v45);

      *(v36 + 4) = v40;
      _os_log_impl(&_mh_execute_header, v34, v35, "Location services is %s", v36, 0xCu);
      sub_100004984(v37);
    }

    if (v2)
    {
      if (qword_1005A8548 != -1)
      {
        swift_once();
      }

      v41 = sub_10004B564(&qword_1005AFFF0, &qword_1004D1520);
      sub_10000A6F0(v41, qword_1005B34C8);
      *(v1 + 233) = 0;
      swift_beginAccess();
      ManagedDefault.wrappedValue.setter();
      swift_endAccess();
      v42 = swift_task_alloc();
      *(v1 + 216) = v42;
      *v42 = v1;
      v42[1] = sub_1003E9F94;
      v43 = *(v1 + 112);

      return sub_100437A14(v43);
    }

    else
    {
      v44 = swift_task_alloc();
      *(v1 + 224) = v44;
      *v44 = v1;
      v44[1] = sub_1003EA198;

      return sub_1004383C4();
    }
  }
}

uint64_t sub_1003E9F94()
{
  v1 = *(*v0 + 112);
  v2 = *(*v0 + 104);

  sub_100002CE0(v1, &qword_1005B1C88, &qword_1004D5E68);

  return _swift_task_switch(sub_1003EA0D0, v2, 0);
}

uint64_t sub_1003EA0D0(uint64_t a1)
{
  sub_100438FC0();
  v1[24] = v1[26];
  v2 = v1[23];
  v3 = v1[13];
  v4 = swift_task_alloc();
  v1[25] = v4;
  *v4 = v1;
  v4[1] = sub_1003E9768;
  v5 = v1[15];

  return AsyncStream.Iterator.next(isolation:)(v1 + 29, v3, v2, v5);
}

uint64_t sub_1003EA198()
{
  v1 = *v0;
  v2 = *v0;

  v1[24] = v1[26];
  v3 = v1[23];
  v4 = v1[13];
  v5 = swift_task_alloc();
  v1[25] = v5;
  *v5 = v2;
  v5[1] = sub_1003E9768;
  v6 = v1[15];

  return AsyncStream.Iterator.next(isolation:)(v1 + 29, v4, v3, v6);
}

uint64_t sub_1003EA348()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000368C;

  return sub_1003EA3D8();
}

uint64_t sub_1003EA3D8()
{
  v1[13] = v0;
  sub_10004B564(&qword_1005B1C88, &qword_1004D5E68);
  v1[14] = swift_task_alloc();
  v2 = sub_10004B564(&qword_1005B3740, &qword_1004D84C8);
  v1[15] = v2;
  v1[16] = *(v2 - 8);
  v1[17] = swift_task_alloc();
  sub_10004B564(&qword_1005B3710, &qword_1004D83F8);
  v1[18] = swift_task_alloc();
  v3 = sub_10004B564(&unk_1005B3580, &qword_1004D82F8);
  v1[19] = v3;
  v1[20] = *(v3 - 8);
  v1[21] = swift_task_alloc();

  return _swift_task_switch(sub_1003EA57C, v0, 0);
}

uint64_t sub_1003EA57C(uint64_t a1)
{
  if (static SystemInfo.underTest.getter())
  {

    v2 = v1[1];
LABEL_11:

    return v2();
  }

  if (qword_1005A8530 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  v1[22] = sub_10000A6F0(v3, qword_1005E0C30);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "Monitoring AppDeletionService stream", v6, 2u);
  }

  v7 = v1[19];
  v8 = v1[20];
  v9 = v1[18];
  v10 = v1[13];

  v11 = OBJC_IVAR____TtC13findmylocated14NITokenService_appDeletionStream;
  swift_beginAccess();
  sub_100005F04(v10 + v11, v9, &qword_1005B3710, &qword_1004D83F8);
  if ((*(v8 + 48))(v9, 1, v7) == 1)
  {
    sub_100002CE0(v1[18], &qword_1005B3710, &qword_1004D83F8);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "appDeletionStream should be available by now!", v14, 2u);
    }

    sub_1003DA6A0();
    swift_allocError();
    *v15 = 9;
    swift_willThrow();

    v2 = v1[1];
    goto LABEL_11;
  }

  (*(v1[20] + 32))(v1[21], v1[18], v1[19]);
  AsyncStream.makeAsyncIterator()();
  v17 = sub_1003F50C4(&qword_1005B3700, type metadata accessor for NITokenService, &unk_1004D83C8);
  v1[23] = v17;
  v1[24] = 0;
  v18 = v1[13];
  v19 = swift_task_alloc();
  v1[25] = v19;
  *v19 = v1;
  v19[1] = sub_1003EA924;
  v20 = v1[15];

  return AsyncStream.Iterator.next(isolation:)(v1 + 29, v18, v17, v20);
}

uint64_t sub_1003EA924()
{
  v1 = *(*v0 + 104);

  return _swift_task_switch(sub_1003EAA34, v1, 0);
}

uint64_t sub_1003EAA34(uint64_t a1)
{
  v46 = v1;
  v2 = *(v1 + 232);
  if (v2 == 4)
  {
    v4 = *(v1 + 160);
    v3 = *(v1 + 168);
    v5 = *(v1 + 152);
    (*(*(v1 + 128) + 8))(*(v1 + 136), *(v1 + 120));
    (*(v4 + 8))(v3, v5);

    v6 = *(v1 + 8);
LABEL_5:

    return v6();
  }

  v7 = *(v1 + 192);
  static Task<>.checkCancellation()();
  *(v1 + 208) = v7;
  if (v7)
  {
    v9 = *(v1 + 160);
    v8 = *(v1 + 168);
    v10 = *(v1 + 152);
    (*(*(v1 + 128) + 8))(*(v1 + 136), *(v1 + 120));
    (*(v9 + 8))(v8, v10);

    v6 = *(v1 + 8);
    goto LABEL_5;
  }

  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *(v1 + 96) = v15;
    *v14 = 136315138;
    if (v2 == 2)
    {
      v16 = 0x6E776F6E6B6E752ELL;
      v17 = 0xE800000000000000;
    }

    else if (v2 == 3)
    {
      v16 = 0x6C616974696E692ELL;
      v17 = 0xEC00000064657A69;
    }

    else
    {
      *(v1 + 80) = 0;
      *(v1 + 88) = 0xE000000000000000;
      _StringGuts.grow(_:)(27);

      *(v1 + 64) = 0xD000000000000018;
      *(v1 + 72) = 0x80000001004E9C30;
      if (v2)
      {
        v18 = 1702195828;
      }

      else
      {
        v18 = 0x65736C6166;
      }

      if (v2)
      {
        v19 = 0xE400000000000000;
      }

      else
      {
        v19 = 0xE500000000000000;
      }

      v20 = v19;
      String.append(_:)(*&v18);

      v21._countAndFlagsBits = 41;
      v21._object = 0xE100000000000000;
      String.append(_:)(v21);
      v16 = *(v1 + 64);
      v17 = *(v1 + 72);
    }

    v22 = sub_10000D01C(v16, v17, (v1 + 96));

    *(v14 + 4) = v22;
    _os_log_impl(&_mh_execute_header, v12, v13, "appDeletionStream event: %s", v14, 0xCu);
    sub_100004984(v15);
  }

  if ((v2 & 0xFE) == 2)
  {
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v45[0] = v26;
      *v25 = 136315138;
      if (v2 == 2)
      {
        v27 = 0x6E776F6E6B6E752ELL;
      }

      else
      {
        v27 = 0x6C616974696E692ELL;
      }

      if (v2 == 2)
      {
        v28 = 0xE800000000000000;
      }

      else
      {
        v28 = 0xEC00000064657A69;
      }

      v29 = sub_10000D01C(v27, v28, v45);

      *(v25 + 4) = v29;
      _os_log_impl(&_mh_execute_header, v23, v24, "Ignoring %s", v25, 0xCu);
      sub_100004984(v26);
    }

    *(v1 + 192) = *(v1 + 208);
    v30 = *(v1 + 184);
    v31 = *(v1 + 104);
    v32 = swift_task_alloc();
    *(v1 + 200) = v32;
    *v32 = v1;
    v32[1] = sub_1003EA924;
    v33 = *(v1 + 120);

    return AsyncStream.Iterator.next(isolation:)(v1 + 232, v31, v30, v33);
  }

  else
  {
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v45[0] = v37;
      *v36 = 136315138;
      if (v2)
      {
        v38 = 7562585;
      }

      else
      {
        v38 = 28494;
      }

      if (v2)
      {
        v39 = 0xE300000000000000;
      }

      else
      {
        v39 = 0xE200000000000000;
      }

      v40 = sub_10000D01C(v38, v39, v45);

      *(v36 + 4) = v40;
      _os_log_impl(&_mh_execute_header, v34, v35, "isFindMyAppInstalled:%s", v36, 0xCu);
      sub_100004984(v37);
    }

    if (v2)
    {
      if (qword_1005A8548 != -1)
      {
        swift_once();
      }

      v41 = sub_10004B564(&qword_1005AFFF0, &qword_1004D1520);
      sub_10000A6F0(v41, qword_1005B34C8);
      *(v1 + 233) = 0;
      swift_beginAccess();
      ManagedDefault.wrappedValue.setter();
      swift_endAccess();
      v42 = swift_task_alloc();
      *(v1 + 216) = v42;
      *v42 = v1;
      v42[1] = sub_1003EB13C;
      v43 = *(v1 + 112);

      return sub_100437A14(v43);
    }

    else
    {
      v44 = swift_task_alloc();
      *(v1 + 224) = v44;
      *v44 = v1;
      v44[1] = sub_1003EB340;

      return sub_1004383C4();
    }
  }
}

uint64_t sub_1003EB13C()
{
  v1 = *(*v0 + 112);
  v2 = *(*v0 + 104);

  sub_100002CE0(v1, &qword_1005B1C88, &qword_1004D5E68);

  return _swift_task_switch(sub_1003EB278, v2, 0);
}

uint64_t sub_1003EB278(uint64_t a1)
{
  sub_100438FC0();
  v1[24] = v1[26];
  v2 = v1[23];
  v3 = v1[13];
  v4 = swift_task_alloc();
  v1[25] = v4;
  *v4 = v1;
  v4[1] = sub_1003EA924;
  v5 = v1[15];

  return AsyncStream.Iterator.next(isolation:)(v1 + 29, v3, v2, v5);
}

uint64_t sub_1003EB340()
{
  v1 = *v0;
  v2 = *v0;

  v1[24] = v1[26];
  v3 = v1[23];
  v4 = v1[13];
  v5 = swift_task_alloc();
  v1[25] = v5;
  *v5 = v2;
  v5[1] = sub_1003EA924;
  v6 = v1[15];

  return AsyncStream.Iterator.next(isolation:)(v1 + 29, v4, v3, v6);
}

uint64_t sub_1003EB4F0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100003784;

  return sub_10044D004();
}

uint64_t sub_1003EB580()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000368C;

  return sub_1003EB610();
}

uint64_t sub_1003EB610()
{
  v1[275] = v0;
  v1[281] = sub_10004B564(&qword_1005B1C88, &qword_1004D5E68);
  v1[287] = swift_task_alloc();
  v2 = type metadata accessor for Account();
  v1[288] = v2;
  v1[289] = *(v2 - 8);
  v1[290] = swift_task_alloc();
  v3 = type metadata accessor for AccountService.State(0);
  v1[291] = v3;
  v1[292] = *(v3 - 8);
  v1[293] = swift_task_alloc();
  v1[294] = swift_task_alloc();
  v1[295] = swift_task_alloc();
  v1[296] = swift_task_alloc();
  v1[297] = swift_task_alloc();
  v1[298] = swift_task_alloc();
  v1[299] = swift_task_alloc();
  v1[300] = swift_task_alloc();
  sub_10004B564(&qword_1005B02E8, &unk_1004D7BA0);
  v1[301] = swift_task_alloc();
  v4 = sub_10004B564(&qword_1005B02F0, &unk_1004D6A70);
  v1[302] = v4;
  v1[303] = *(v4 - 8);
  v1[304] = swift_task_alloc();
  sub_10004B564(&qword_1005B02F8, &qword_1004D1870);
  v1[305] = swift_task_alloc();
  v5 = sub_10004B564(&unk_1005AFB18, &qword_1004D12E8);
  v1[306] = v5;
  v1[307] = *(v5 - 8);
  v1[308] = swift_task_alloc();

  return _swift_task_switch(sub_1003EB8FC, v0, 0);
}

uint64_t sub_1003EB8FC(uint64_t a1)
{
  if (static SystemInfo.underTest.getter())
  {
LABEL_10:

    v14 = v1[1];

    return v14();
  }

  if (qword_1005A8530 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v1[309] = sub_10000A6F0(v2, qword_1005E0C30);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Monitoring AccountState stream", v5, 2u);
  }

  v6 = v1[307];
  v7 = v1[306];
  v8 = v1[305];
  v9 = v1[275];

  v10 = OBJC_IVAR____TtC13findmylocated14NITokenService_accountStateStream;
  swift_beginAccess();
  sub_100005F04(v9 + v10, v8, &qword_1005B02F8, &qword_1004D1870);
  if ((*(v6 + 48))(v8, 1, v7) == 1)
  {
    sub_100002CE0(v1[305], &qword_1005B02F8, &qword_1004D1870);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "accountStateStream should be available by now!", v13, 2u);
    }

    goto LABEL_10;
  }

  (*(v1[307] + 32))(v1[308], v1[305], v1[306]);
  AsyncStream.makeAsyncIterator()();
  v16 = sub_1003F50C4(&qword_1005B3700, type metadata accessor for NITokenService, &unk_1004D83C8);
  v1[310] = v16;
  v1[311] = 0;
  v17 = v1[275];
  v18 = swift_task_alloc();
  v1[312] = v18;
  *v18 = v1;
  v18[1] = sub_1003EBCE0;
  v19 = v1[302];
  v20 = v1[301];

  return AsyncStream.Iterator.next(isolation:)(v20, v17, v16, v19);
}

uint64_t sub_1003EBCE0()
{
  v1 = *(*v0 + 2200);

  return _swift_task_switch(sub_1003EBDF0, v1, 0);
}

uint64_t sub_1003EBDF0()
{
  v1 = v0[301];
  if ((*(v0[292] + 48))(v1, 1, v0[291]) == 1)
  {
    v2 = v0[308];
    v3 = v0[307];
    v4 = v0[306];
    (*(v0[303] + 8))(v0[304], v0[302]);
    (*(v3 + 8))(v2, v4);

    v5 = v0[1];
LABEL_5:

    return v5();
  }

  v6 = v0[311];
  sub_1003F4D30(v1, v0[300], type metadata accessor for AccountService.State);
  static Task<>.checkCancellation()();
  v0[313] = v6;
  if (v6)
  {
    v7 = v0[308];
    v8 = v0[307];
    v9 = v0[306];
    v10 = v0[304];
    v11 = v0[303];
    v12 = v0[302];
    sub_1003F4E48(v0[300], type metadata accessor for AccountService.State);
    (*(v11 + 8))(v10, v12);
    (*(v8 + 8))(v7, v9);

    v5 = v0[1];
    goto LABEL_5;
  }

  sub_1003F4254(v0[300], v0[299], type metadata accessor for AccountService.State);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  v16 = os_log_type_enabled(v14, v15);
  v17 = v0[299];
  if (v16)
  {
    v18 = v0[298];
    v19 = v0[297];
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v0[269] = v21;
    *v20 = 136315138;
    sub_1003F4254(v17, v18, type metadata accessor for AccountService.State);
    sub_1003F4254(v18, v19, type metadata accessor for AccountService.State);
    v22 = sub_10004B564(&qword_1005AFFD8, &qword_1004D14D8);
    v23 = (*(*(v22 - 8) + 48))(v19, 3, v22);
    if (v23 > 1)
    {
      if (v23 == 2)
      {
        v30 = 0x6C696176616E752ELL;
      }

      else
      {
        v30 = 0x756F6363416F6E2ELL;
      }

      if (v23 == 2)
      {
        v31 = 0xEC000000656C6261;
      }

      else
      {
        v31 = 0xEA0000000000746ELL;
      }
    }

    else if (v23)
    {
      v30 = 0x6E776F6E6B6E752ELL;
      v31 = 0xE800000000000000;
    }

    else
    {
      v24 = v0[290];
      v25 = v0[289];
      v26 = v0[288];
      (*(v25 + 32))(v24, v0[297], v26);
      v0[261] = 0;
      v0[262] = 0xE000000000000000;
      _StringGuts.grow(_:)(23);
      v27 = v0[262];
      v0[259] = v0[261];
      v0[260] = v27;
      v28._object = 0x80000001004E5490;
      v28._countAndFlagsBits = 0xD000000000000014;
      String.append(_:)(v28);
      _print_unlocked<A, B>(_:_:)();
      v29._countAndFlagsBits = 41;
      v29._object = 0xE100000000000000;
      String.append(_:)(v29);
      v30 = v0[259];
      v31 = v0[260];
      (*(v25 + 8))(v24, v26);
    }

    v32 = v0[299];
    sub_1003F4E48(v0[298], type metadata accessor for AccountService.State);
    sub_1003F4E48(v32, type metadata accessor for AccountService.State);
    v33 = sub_10000D01C(v30, v31, v0 + 269);

    *(v20 + 4) = v33;
    _os_log_impl(&_mh_execute_header, v14, v15, "accountStateStream event: %s", v20, 0xCu);
    sub_100004984(v21);
  }

  else
  {

    sub_1003F4E48(v17, type metadata accessor for AccountService.State);
  }

  v34 = v0[296];
  sub_1003F4254(v0[300], v34, type metadata accessor for AccountService.State);
  v35 = sub_10004B564(&qword_1005AFFD8, &qword_1004D14D8);
  v36 = *(*(v35 - 8) + 48);
  v37 = v36(v34, 3, v35);
  if ((v37 - 1) < 2)
  {
    goto LABEL_24;
  }

  if (!v37)
  {
    (*(v0[289] + 8))(v0[296], v0[288]);
LABEL_24:
    sub_1003F4254(v0[300], v0[295], type metadata accessor for AccountService.State);
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v38, v39))
    {
      v65 = v39;
      v40 = v0[295];
      v41 = v0[294];
      v42 = v0[293];
      v43 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      v0[263] = v64;
      *v43 = 136315138;
      sub_1003F4254(v40, v41, type metadata accessor for AccountService.State);
      sub_1003F4254(v41, v42, type metadata accessor for AccountService.State);
      v44 = v36(v42, 3, v35);
      if (v44 > 1)
      {
        if (v44 == 2)
        {
          v51 = 0x6C696176616E752ELL;
        }

        else
        {
          v51 = 0x756F6363416F6E2ELL;
        }

        if (v44 == 2)
        {
          v52 = 0xEC000000656C6261;
        }

        else
        {
          v52 = 0xEA0000000000746ELL;
        }
      }

      else if (v44)
      {
        v51 = 0x6E776F6E6B6E752ELL;
        v52 = 0xE800000000000000;
      }

      else
      {
        v45 = v0[290];
        v46 = v0[289];
        v47 = v0[288];
        (*(v46 + 32))(v45, v0[293], v47);
        v0[257] = 0;
        v0[258] = 0xE000000000000000;
        _StringGuts.grow(_:)(23);
        v48 = v0[258];
        v0[255] = v0[257];
        v0[256] = v48;
        v49._object = 0x80000001004E5490;
        v49._countAndFlagsBits = 0xD000000000000014;
        String.append(_:)(v49);
        _print_unlocked<A, B>(_:_:)();
        v50._countAndFlagsBits = 41;
        v50._object = 0xE100000000000000;
        String.append(_:)(v50);
        v51 = v0[255];
        v52 = v0[256];
        (*(v46 + 8))(v45, v47);
      }

      v56 = v0[300];
      v57 = v0[295];
      sub_1003F4E48(v0[294], type metadata accessor for AccountService.State);
      sub_1003F4E48(v57, type metadata accessor for AccountService.State);
      v58 = sub_10000D01C(v51, v52, v0 + 263);

      *(v43 + 4) = v58;
      _os_log_impl(&_mh_execute_header, v38, v65, "Ignoring %s", v43, 0xCu);
      sub_100004984(v64);

      v55 = v56;
    }

    else
    {
      v53 = v0[300];
      v54 = v0[295];

      sub_1003F4E48(v54, type metadata accessor for AccountService.State);
      v55 = v53;
    }

    sub_1003F4E48(v55, type metadata accessor for AccountService.State);
    v0[311] = v0[313];
    v59 = v0[310];
    v60 = v0[275];
    v61 = swift_task_alloc();
    v0[312] = v61;
    *v61 = v0;
    v61[1] = sub_1003EBCE0;
    v62 = v0[302];
    v63 = v0[301];

    return AsyncStream.Iterator.next(isolation:)(v63, v60, v59, v62);
  }

  swift_asyncLet_begin();
  swift_asyncLet_begin();
  swift_asyncLet_begin();

  return _swift_asyncLet_get(v0 + 2);
}

uint64_t sub_1003EC9A8()
{
  sub_1003F4E48(v0[300], type metadata accessor for AccountService.State);
  v0[311] = v0[313];
  v1 = v0[310];
  v2 = v0[275];
  v3 = swift_task_alloc();
  v0[312] = v3;
  *v3 = v0;
  v3[1] = sub_1003EBCE0;
  v4 = v0[302];
  v5 = v0[301];

  return AsyncStream.Iterator.next(isolation:)(v5, v2, v1, v4);
}

uint64_t sub_1003ECAA0()
{
  v10 = v0;
  if (qword_1005A8530 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000A6F0(v1, qword_1005E0C30);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v9 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_10000D01C(0xD000000000000018, 0x80000001004E9BE0, &v9);
    _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s", v4, 0xCu);
    sub_100004984(v5);
  }

  if (qword_1005A8548 != -1)
  {
    swift_once();
  }

  v6 = sub_10004B564(&qword_1005AFFF0, &qword_1004D1520);
  sub_10000A6F0(v6, qword_1005B34C8);
  *(v0 + 40) = 0;
  swift_beginAccess();
  ManagedDefault.wrappedValue.setter();
  swift_endAccess();
  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1003ECC9C()
{

  sub_100002CE0(v0 + OBJC_IVAR____TtC13findmylocated14NITokenService_accountStateStream, &qword_1005B02F8, &qword_1004D1870);
  sub_100002CE0(v0 + OBJC_IVAR____TtC13findmylocated14NITokenService_cloudKitAccountStateStream, &qword_1005B3728, &qword_1004D8410);
  sub_100002CE0(v0 + OBJC_IVAR____TtC13findmylocated14NITokenService_dataManagerStateStream, &qword_1005B0F00, &qword_1004D2F00);
  sub_100002CE0(v0 + OBJC_IVAR____TtC13findmylocated14NITokenService_locationServicesToggleStream, &qword_1005B3720, &qword_1004D8408);
  sub_100002CE0(v0 + OBJC_IVAR____TtC13findmylocated14NITokenService_appDeletionStream, &qword_1005B3710, &qword_1004D83F8);

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t type metadata accessor for NITokenService(uint64_t a1)
{
  result = qword_1005B3548;
  if (!qword_1005B3548)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1003ECDE0(uint64_t a1)
{
  sub_1001AE28C(319, &qword_1005AFB10, &unk_1005AFB18, &qword_1004D12E8);
  if (v1 <= 0x3F)
  {
    sub_1001AE28C(319, &qword_1005B3558, &qword_1005B3560, &qword_1004D82E8);
    if (v2 <= 0x3F)
    {
      sub_1001AE28C(319, &qword_1005B0D40, &qword_1005AA710, &qword_1004D2BA0);
      if (v3 <= 0x3F)
      {
        sub_1001AE28C(319, &qword_1005B3568, &qword_1005B3570, &qword_1004D82F0);
        if (v4 <= 0x3F)
        {
          sub_1001AE28C(319, &qword_1005B3578, &unk_1005B3580, &qword_1004D82F8);
          if (v5 <= 0x3F)
          {
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

uint64_t sub_1003ED000()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  __chkstk_darwin(v2 - 8);
  swift_defaultActor_initialize();
  strcpy((v0 + 112), "NITokenService");
  *(v0 + 127) = -18;
  type metadata accessor for WorkItemQueue();
  UUID.init()();
  *(v0 + 128) = WorkItemQueue.__allocating_init(identifier:)();
  v3 = OBJC_IVAR____TtC13findmylocated14NITokenService_accountStateStream;
  v4 = sub_10004B564(&unk_1005AFB18, &qword_1004D12E8);
  (*(*(v4 - 8) + 56))(v1 + v3, 1, 1, v4);
  v5 = OBJC_IVAR____TtC13findmylocated14NITokenService_cloudKitAccountStateStream;
  v6 = sub_10004B564(&qword_1005B3560, &qword_1004D82E8);
  (*(*(v6 - 8) + 56))(v1 + v5, 1, 1, v6);
  v7 = OBJC_IVAR____TtC13findmylocated14NITokenService_dataManagerStateStream;
  v8 = sub_10004B564(&qword_1005AA710, &qword_1004D2BA0);
  (*(*(v8 - 8) + 56))(v1 + v7, 1, 1, v8);
  v9 = OBJC_IVAR____TtC13findmylocated14NITokenService_locationServicesToggleStream;
  v10 = sub_10004B564(&qword_1005B3570, &qword_1004D82F0);
  (*(*(v10 - 8) + 56))(v1 + v9, 1, 1, v10);
  v11 = OBJC_IVAR____TtC13findmylocated14NITokenService_appDeletionStream;
  v12 = sub_10004B564(&unk_1005B3580, &qword_1004D82F8);
  (*(*(v12 - 8) + 56))(v1 + v11, 1, 1, v12);
  *(v1 + OBJC_IVAR____TtC13findmylocated14NITokenService_tokenRequestActivity) = 0;
  return v1;
}

uint64_t sub_1003ED274()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100003690;

  return sub_1003ECA84();
}

uint64_t sub_1003ED300(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = type metadata accessor for NITokenService(0);
  *v4 = v2;
  v4[1] = sub_10000368C;

  return ActorServiceProtocol.startup()(v5, a2);
}

uint64_t sub_1003ED3AC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100003690;

  return sub_1003DFF9C();
}

uint64_t sub_1003ED438()
{
  type metadata accessor for NITokenService(0);
  sub_1003F50C4(&qword_1005AD548, type metadata accessor for NITokenService, &unk_1004D8368);
  return ActorServiceProtocol.description.getter();
}

uint64_t sub_1003ED534(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100003788;

  return sub_100437A14(a1);
}

uint64_t sub_1003ED5D0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100003784;

  return sub_1004383C4();
}

uint64_t sub_1003ED67C()
{
  sub_100440F28(86400.0);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003ED6EC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100003784;

  return sub_100437A14(a1);
}

uint64_t sub_1003ED788(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *v1;
  sub_10004B564(&qword_1005B1C88, &qword_1004D5E68);
  v2[5] = swift_task_alloc();
  sub_10004B564(&qword_1005AA718, &qword_1004C4370);
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();

  return _swift_task_switch(sub_1003ED890, v1, 0);
}

uint64_t sub_1003ED890()
{
  v21 = v0;
  if (qword_1005A8530 != -1)
  {
    swift_once();
  }

  v1 = v0[7];
  v2 = v0[2];
  v3 = type metadata accessor for Logger();
  v0[8] = sub_10000A6F0(v3, qword_1005E0C30);
  sub_100005F04(v2, v1, &qword_1005AA718, &qword_1004C4370);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[7];
  if (v6)
  {
    v8 = v0[6];
    v9 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *v9 = 136446466;
    *(v9 + 4) = sub_10000D01C(0xD000000000000019, 0x80000001004E9C70, &v20);
    *(v9 + 12) = 2080;
    sub_100005F04(v7, v8, &qword_1005AA718, &qword_1004C4370);
    v10 = type metadata accessor for Device();
    v11 = *(v10 - 8);
    v12 = (*(v11 + 48))(v8, 1, v10);
    v13 = v0[6];
    if (v12 == 1)
    {
      sub_100002CE0(v0[6], &qword_1005AA718, &qword_1004C4370);
      v14 = 0;
      v15 = 0xE000000000000000;
    }

    else
    {
      v14 = Device.description.getter();
      v15 = v16;
      (*(v11 + 8))(v13, v10);
    }

    sub_100002CE0(v0[7], &qword_1005AA718, &qword_1004C4370);
    v17 = sub_10000D01C(v14, v15, &v20);

    *(v9 + 14) = v17;
    _os_log_impl(&_mh_execute_header, v4, v5, "%{public}s meDevice: %s", v9, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    sub_100002CE0(v7, &qword_1005AA718, &qword_1004C4370);
  }

  v18 = swift_task_alloc();
  v0[9] = v18;
  *v18 = v0;
  v18[1] = sub_1003EDBB8;

  return sub_100405674();
}

uint64_t sub_1003EDBB8(char a1)
{
  v4 = *v2;
  v4[10] = v1;

  if (v1)
  {
    v5 = v4[3];

    return _swift_task_switch(sub_1003EEC44, v5, 0);
  }

  else if (a1)
  {
    v6 = swift_task_alloc();
    v4[11] = v6;
    *v6 = v4;
    v6[1] = sub_1003EDD88;

    return daemon.getter();
  }

  else
  {

    v7 = v4[1];

    return v7();
  }
}

uint64_t sub_1003EDD88(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  v2[12] = a1;

  v3 = swift_task_alloc();
  v2[13] = v3;
  v4 = type metadata accessor for Daemon();
  v2[14] = v4;
  v5 = type metadata accessor for DataManager(0);
  v6 = sub_1003F50C4(&unk_1005AFA50, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v2[15] = v6;
  v7 = sub_1003F50C4(&qword_1005A90D0, type metadata accessor for DataManager, &unk_1004D1410);
  *v3 = v9;
  v3[1] = sub_1003EDF68;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_1003EDF68(uint64_t a1)
{
  v3 = *v2;
  v3[16] = a1;
  v3[17] = v1;

  if (v1)
  {
    v4 = v3[3];
    v5 = sub_1003EEE1C;
  }

  else
  {
    v6 = v3[3];

    v5 = sub_1003EE090;
    v4 = v6;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_1003EE090(uint64_t a1)
{
  v2 = sub_1003F399C();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  v5 = os_log_type_enabled(v3, v4);
  if (v2)
  {
    if (v5)
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Eligible to generate token and is finding capable. Checking if we need to generate tokens.", v6, 2u);
    }

    v7 = swift_task_alloc();
    v1[26] = v7;
    *v7 = v1;
    v7[1] = sub_1003EE82C;
    v8 = v1[5];

    return sub_100437A14(v8);
  }

  else
  {
    if (v5)
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Eligible to generate token, but not finding capable. Revoking all tokens.", v10, 2u);
    }

    v11 = swift_task_alloc();
    v1[18] = v11;
    *v11 = v1;
    v11[1] = sub_1003EE268;

    return daemon.getter();
  }
}

uint64_t sub_1003EE268(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v4 = *v1;
  *(v3 + 152) = a1;

  v5 = swift_task_alloc();
  *(v3 + 160) = v5;
  v6 = type metadata accessor for CloudStorageService();
  v7 = sub_1003F50C4(&qword_1005AD568, type metadata accessor for CloudStorageService, &unk_1004D03B0);
  *v5 = v4;
  v5[1] = sub_1003EE41C;
  v8 = *(v2 + 120);
  v9 = *(v2 + 112);

  return ActorServiceDaemon.getService<A>()(v9, v6, v8, v7);
}

uint64_t sub_1003EE41C(uint64_t a1)
{
  v3 = *v2;
  v3[21] = a1;
  v3[22] = v1;

  if (v1)
  {
    v4 = v3[3];
    v5 = sub_1003EEFFC;
  }

  else
  {
    v6 = v3[3];

    v5 = sub_1003EE544;
    v4 = v6;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_1003EE544()
{
  v1 = v0[21];
  v2 = v0[16];
  v3 = v0[3];
  v4 = v0[4];
  sub_1003F50C4(&qword_1005B3700, type metadata accessor for NITokenService, &unk_1004D83C8);
  v5 = swift_task_alloc();
  v0[23] = v5;
  v5[2] = v2;
  v5[3] = v1;
  v5[4] = v3;
  v5[5] = v4;
  v6 = swift_task_alloc();
  v0[24] = v6;
  *v6 = v0;
  v6[1] = sub_1003EE67C;

  return withThrowingTaskGroup<A, B>(of:returning:isolation:body:)();
}

uint64_t sub_1003EE67C()
{
  v2 = *v1;
  *(*v1 + 200) = v0;

  if (v0)
  {
    v3 = *(v2 + 24);
    v4 = sub_1003EF1E8;
  }

  else
  {
    v5 = *(v2 + 24);

    v4 = sub_1003EE7A4;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1003EE7A4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003EE82C()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 24);

  sub_100002CE0(v1, &qword_1005B1C88, &qword_1004D5E68);

  return _swift_task_switch(sub_1003EE968, v2, 0);
}

uint64_t sub_1003EE968()
{
  v1 = v0[16];
  v2 = v0[3];
  v3 = v0[4];
  v4 = sub_1003F50C4(&qword_1005B3700, type metadata accessor for NITokenService, &unk_1004D83C8);
  v5 = swift_task_alloc();
  v0[27] = v5;
  v5[2] = v1;
  v5[3] = v2;
  v5[4] = v3;
  v6 = swift_task_alloc();
  v0[28] = v6;
  *v6 = v0;
  v6[1] = sub_1003EEA9C;

  return withTaskGroup<A, B>(of:returning:isolation:body:)(v6, &type metadata for () + 1, &type metadata for () + 1, v2, v4, &unk_1004D8540, v5, &type metadata for () + 1);
}

uint64_t sub_1003EEA9C()
{
  v1 = *(*v0 + 24);

  return _swift_task_switch(sub_1003EEBC8, v1, 0);
}

uint64_t sub_1003EEBC8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003EEC44()
{
  v10 = v0;
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v9 = v5;
    *v3 = 136446466;
    *(v3 + 4) = sub_10000D01C(0xD000000000000019, 0x80000001004E9C70, &v9);
    *(v3 + 12) = 2114;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 14) = v6;
    *v4 = v6;
    _os_log_impl(&_mh_execute_header, v1, v2, "%{public}s error %{public}@", v3, 0x16u);
    sub_100002CE0(v4, &qword_1005A9670, &unk_1004C2480);

    sub_100004984(v5);
  }

  else
  {
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1003EEE1C()
{
  v10 = v0;

  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v9 = v5;
    *v3 = 136446466;
    *(v3 + 4) = sub_10000D01C(0xD000000000000019, 0x80000001004E9C70, &v9);
    *(v3 + 12) = 2114;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 14) = v6;
    *v4 = v6;
    _os_log_impl(&_mh_execute_header, v1, v2, "%{public}s error %{public}@", v3, 0x16u);
    sub_100002CE0(v4, &qword_1005A9670, &unk_1004C2480);

    sub_100004984(v5);
  }

  else
  {
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1003EEFFC()
{
  v10 = v0;

  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v9 = v5;
    *v3 = 136446466;
    *(v3 + 4) = sub_10000D01C(0xD000000000000019, 0x80000001004E9C70, &v9);
    *(v3 + 12) = 2114;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 14) = v6;
    *v4 = v6;
    _os_log_impl(&_mh_execute_header, v1, v2, "%{public}s error %{public}@", v3, 0x16u);
    sub_100002CE0(v4, &qword_1005A9670, &unk_1004C2480);

    sub_100004984(v5);
  }

  else
  {
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1003EF1E8()
{
  v10 = v0;

  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v9 = v5;
    *v3 = 136446466;
    *(v3 + 4) = sub_10000D01C(0xD000000000000019, 0x80000001004E9C70, &v9);
    *(v3 + 12) = 2114;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 14) = v6;
    *v4 = v6;
    _os_log_impl(&_mh_execute_header, v1, v2, "%{public}s error %{public}@", v3, 0x16u);
    sub_100002CE0(v4, &qword_1005A9670, &unk_1004C2480);

    sub_100004984(v5);
  }

  else
  {
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1003EF3E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[12] = a5;
  v6[13] = a6;
  v6[10] = a3;
  v6[11] = a4;
  v6[9] = a2;
  sub_10004B564(&qword_1005A9690, &qword_1004C2A00);
  v6[14] = swift_task_alloc();
  v6[15] = swift_task_alloc();
  v8 = *(sub_10004B564(&qword_1005AF228, &unk_1004D0440) - 8);
  v6[16] = v8;
  v6[17] = *(v8 + 64);
  v6[18] = swift_task_alloc();
  v6[19] = swift_task_alloc();
  sub_10004B564(&unk_1005AECE8, &qword_1004D07A0);
  v6[20] = swift_task_alloc();
  v9 = type metadata accessor for FriendSharedSecretsRecord(0);
  v6[21] = v9;
  v6[22] = *(v9 - 8);
  v6[23] = swift_task_alloc();
  sub_10004B564(&qword_1005A96E0, &qword_1004C2A80);
  v6[24] = swift_task_alloc();
  v10 = type metadata accessor for Handle();
  v6[25] = v10;
  v6[26] = *(v10 - 8);
  v6[27] = swift_task_alloc();
  v11 = type metadata accessor for UUID();
  v6[28] = v11;
  v12 = *(v11 - 8);
  v6[29] = v12;
  v6[30] = *(v12 + 64);
  v6[31] = swift_task_alloc();
  v6[32] = swift_task_alloc();
  v13 = type metadata accessor for Friend();
  v6[33] = v13;
  v14 = *(v13 - 8);
  v6[34] = v14;
  v6[35] = *(v14 + 64);
  v6[36] = swift_task_alloc();
  v6[37] = swift_task_alloc();
  v6[38] = swift_task_alloc();
  v6[39] = swift_task_alloc();
  v6[40] = swift_task_alloc();

  return _swift_task_switch(sub_1003EF738, a3, 0);
}

uint64_t sub_1003EF738()
{
  sub_10004B564(&qword_1005A92A8, &qword_1004C4330);
  v1 = type metadata accessor for HandleType();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = swift_allocObject();
  *(v0 + 328) = v4;
  *(v4 + 16) = xmmword_1004C1900;
  (*(v2 + 104))(v4 + v3, enum case for HandleType.follower(_:), v1);
  v5 = swift_task_alloc();
  *(v0 + 336) = v5;
  *v5 = v0;
  v5[1] = sub_1003EF89C;

  return sub_10001C61C(v4, 1);
}

uint64_t sub_1003EF89C(uint64_t a1)
{
  v2 = *(*v1 + 96);
  *(*v1 + 344) = a1;

  return _swift_task_switch(sub_1003EF9D0, v2, 0);
}

uint64_t sub_1003EF9D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v63 = v3;
  v4 = *(v3 + 344);
  v5 = *(v4 + 2);
  *(v3 + 352) = v5;
  if (v5)
  {
    v6 = 0;
    *(v3 + 456) = *(*(v3 + 272) + 80);
    while (1)
    {
      *(v3 + 360) = v6;
      v7 = *(v3 + 344);
      if (v6 >= *(v7 + 16))
      {
        __break(1u);
        return _swift_task_switch(v4, a2, a3);
      }

      v8 = *(v3 + 320);
      v9 = *(v3 + 264);
      v10 = *(v3 + 272);
      v12 = *(v10 + 16);
      v10 += 16;
      v11 = v12;
      v13 = v7 + ((*(v3 + 456) + 32) & ~*(v3 + 456)) + *(v10 + 56) * v6;
      *(v3 + 368) = v12;
      *(v3 + 376) = v10 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v12(v8, v13, v9);
      if (qword_1005A8530 != -1)
      {
        swift_once();
      }

      v14 = *(v3 + 312);
      v15 = *(v3 + 320);
      v16 = *(v3 + 264);
      v17 = type metadata accessor for Logger();
      *(v3 + 384) = sub_10000A6F0(v17, qword_1005E0C30);
      v11(v14, v15, v16);
      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.default.getter();
      v20 = os_log_type_enabled(v18, v19);
      v21 = *(v3 + 312);
      v23 = *(v3 + 264);
      v22 = *(v3 + 272);
      v61 = v11;
      if (v20)
      {
        v24 = swift_slowAlloc();
        v59 = swift_slowAlloc();
        v62 = v59;
        *v24 = 141558275;
        *(v24 + 4) = 1752392040;
        *(v24 + 12) = 2081;
        sub_1003F50C4(&qword_1005AA720, &type metadata accessor for Friend, &protocol conformance descriptor for Friend);
        v25 = dispatch thunk of CustomStringConvertible.description.getter();
        v27 = v26;
        v28 = v23;
        v29 = *(v22 + 8);
        v29(v21, v28);
        v30 = sub_10000D01C(v25, v27, &v62);

        *(v24 + 14) = v30;
        _os_log_impl(&_mh_execute_header, v18, v19, "Revoking token from %{private,mask.hash}s", v24, 0x16u);
        sub_100004984(v59);
      }

      else
      {

        v31 = v23;
        v29 = *(v22 + 8);
        v29(v21, v31);
      }

      *(v3 + 392) = v29;
      v32 = *(v3 + 224);
      v33 = *(v3 + 232);
      v35 = *(v3 + 208);
      v34 = *(v3 + 216);
      v37 = *(v3 + 192);
      v36 = *(v3 + 200);
      Friend.handle.getter();
      Handle.peerID.getter();
      (*(v35 + 8))(v34, v36);
      if ((*(v33 + 48))(v37, 1, v32) != 1)
      {
        break;
      }

      v38 = *(v3 + 320);
      v39 = *(v3 + 288);
      v40 = *(v3 + 264);
      sub_100002CE0(*(v3 + 192), &qword_1005A96E0, &qword_1004C2A80);
      v61(v39, v38, v40);
      v41 = Logger.logObject.getter();
      v42 = static os_log_type_t.error.getter();
      v43 = os_log_type_enabled(v41, v42);
      v44 = *(v3 + 320);
      v45 = *(v3 + 288);
      v46 = *(v3 + 264);
      if (v43)
      {
        v47 = swift_slowAlloc();
        v62 = swift_slowAlloc();
        *v47 = 136446723;
        *(v47 + 4) = sub_10000D01C(0xD000000000000019, 0x80000001004E9C70, &v62);
        *(v47 + 12) = 2160;
        *(v47 + 14) = 1752392040;
        *(v47 + 22) = 2081;
        sub_1003F50C4(&qword_1005AA720, &type metadata accessor for Friend, &protocol conformance descriptor for Friend);
        v60 = v44;
        v48 = dispatch thunk of CustomStringConvertible.description.getter();
        v50 = v49;
        v29(v45, v46);
        v51 = sub_10000D01C(v48, v50, &v62);

        *(v47 + 24) = v51;
        _os_log_impl(&_mh_execute_header, v41, v42, "%{public}s No peerID for follower %{private,mask.hash}s", v47, 0x20u);
        swift_arrayDestroy();

        v4 = (v29)(v60, v46);
      }

      else
      {

        v29(v45, v46);
        v4 = (v29)(v44, v46);
      }

      v6 = *(v3 + 360) + 1;
      if (v6 == *(v3 + 352))
      {
        goto LABEL_17;
      }
    }

    v52 = *(v3 + 256);
    v53 = *(v3 + 224);
    v54 = *(v3 + 232);
    v55 = *(v3 + 192);
    v56 = *(v54 + 32);
    *(v3 + 400) = v56;
    *(v3 + 408) = (v54 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v56(v52, v55, v53);
    v4 = sub_1003F0060;
    a2 = 0;
    a3 = 0;

    return _swift_task_switch(v4, a2, a3);
  }

  else
  {
LABEL_17:

    v57 = *(v3 + 8);

    return v57();
  }
}

uint64_t sub_1003F0060()
{
  v1 = swift_task_alloc();
  v0[52] = v1;
  *v1 = v0;
  v1[1] = sub_1003F0100;
  v2 = v0[32];
  v3 = v0[20];

  return sub_1001C4430(v3, v2);
}

uint64_t sub_1003F0100()
{
  v2 = *v1;
  *(*v1 + 424) = v0;

  if (v0)
  {
    v3 = sub_1003F0B4C;
    v4 = 0;
  }

  else
  {
    v4 = *(v2 + 96);
    v3 = sub_1003F021C;
  }

  return _swift_task_switch(v3, v4, 0);
}

uint64_t sub_1003F021C()
{
  v84 = v0;
  v1 = *(v0 + 160);
  if ((*(*(v0 + 176) + 48))(v1, 1, *(v0 + 168)) != 1)
  {
    v18 = *(v0 + 256);
    v19 = *(v0 + 184);
    v20 = *(v0 + 104);
    v21 = *(v0 + 88);
    sub_1003F4D30(v1, v19, type metadata accessor for FriendSharedSecretsRecord);
    v22 = swift_task_alloc();
    *(v0 + 432) = v22;
    v22[2] = v19;
    v22[3] = v18;
    v22[4] = v20;
    v23 = sub_1003F0D1C;
    v24 = v21;
LABEL_23:
    v25 = 0;

    return _swift_task_switch(v23, v24, v25);
  }

  v2 = *(v0 + 368);
  v3 = *(v0 + 320);
  v4 = *(v0 + 296);
  v5 = *(v0 + 264);
  sub_100002CE0(v1, &unk_1005AECE8, &qword_1004D07A0);
  v2(v4, v3, v5);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 392);
  v10 = *(v0 + 320);
  v11 = *(v0 + 296);
  v12 = *(v0 + 264);
  if (v8)
  {
    v13 = swift_slowAlloc();
    v83 = swift_slowAlloc();
    *v13 = 136446723;
    *(v13 + 4) = sub_10000D01C(0xD000000000000019, 0x80000001004E9C70, &v83);
    *(v13 + 12) = 2160;
    *(v13 + 14) = 1752392040;
    *(v13 + 22) = 2081;
    sub_1003F50C4(&qword_1005AA720, &type metadata accessor for Friend, &protocol conformance descriptor for Friend);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    v9(v11, v12);
    v17 = sub_10000D01C(v14, v16, &v83);

    *(v13 + 24) = v17;
    _os_log_impl(&_mh_execute_header, v6, v7, "%{public}s Missing friendSharedSecretsRecord for %{private,mask.hash}s.", v13, 0x20u);
    swift_arrayDestroy();

    v9(v10, v12);
  }

  else
  {

    v9(v11, v12);
    v9(v10, v12);
  }

  v23 = (*(*(v0 + 232) + 8))(*(v0 + 256), *(v0 + 224));
  v26 = *(v0 + 360) + 1;
  if (v26 != *(v0 + 352))
  {
    while (1)
    {
      *(v0 + 360) = v26;
      v34 = *(v0 + 344);
      if (v26 >= *(v34 + 16))
      {
        break;
      }

      v35 = *(v0 + 320);
      v36 = *(v0 + 264);
      v37 = *(v0 + 272);
      v39 = *(v37 + 16);
      v37 += 16;
      v38 = v39;
      v40 = v34 + ((*(v0 + 456) + 32) & ~*(v0 + 456)) + *(v37 + 56) * v26;
      *(v0 + 368) = v39;
      *(v0 + 376) = v37 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v39(v35, v40, v36);
      if (qword_1005A8530 != -1)
      {
        swift_once();
      }

      v41 = *(v0 + 312);
      v42 = *(v0 + 320);
      v43 = *(v0 + 264);
      v44 = type metadata accessor for Logger();
      *(v0 + 384) = sub_10000A6F0(v44, qword_1005E0C30);
      v38(v41, v42, v43);
      v45 = Logger.logObject.getter();
      v46 = static os_log_type_t.default.getter();
      v47 = os_log_type_enabled(v45, v46);
      v48 = *(v0 + 312);
      v50 = *(v0 + 264);
      v49 = *(v0 + 272);
      v82 = v38;
      if (v47)
      {
        v51 = swift_slowAlloc();
        v80 = swift_slowAlloc();
        v83 = v80;
        *v51 = 141558275;
        *(v51 + 4) = 1752392040;
        *(v51 + 12) = 2081;
        sub_1003F50C4(&qword_1005AA720, &type metadata accessor for Friend, &protocol conformance descriptor for Friend);
        v52 = dispatch thunk of CustomStringConvertible.description.getter();
        v54 = v53;
        v55 = v50;
        v56 = *(v49 + 8);
        v56(v48, v55);
        v57 = sub_10000D01C(v52, v54, &v83);

        *(v51 + 14) = v57;
        _os_log_impl(&_mh_execute_header, v45, v46, "Revoking token from %{private,mask.hash}s", v51, 0x16u);
        sub_100004984(v80);
      }

      else
      {

        v58 = v50;
        v56 = *(v49 + 8);
        v56(v48, v58);
      }

      *(v0 + 392) = v56;
      v59 = *(v0 + 224);
      v60 = *(v0 + 232);
      v62 = *(v0 + 208);
      v61 = *(v0 + 216);
      v64 = *(v0 + 192);
      v63 = *(v0 + 200);
      Friend.handle.getter();
      Handle.peerID.getter();
      (*(v62 + 8))(v61, v63);
      v65 = (*(v60 + 48))(v64, 1, v59);
      v66 = *(v0 + 192);
      if (v65 != 1)
      {
        v76 = *(v0 + 256);
        v77 = *(v0 + 224);
        v78 = *(v0 + 232);
        v79 = *(v78 + 32);
        *(v0 + 400) = v79;
        *(v0 + 408) = (v78 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
        v79(v76, v66, v77);
        v23 = sub_1003F0060;
        v24 = 0;
        goto LABEL_23;
      }

      v67 = *(v0 + 320);
      v68 = *(v0 + 288);
      v69 = *(v0 + 264);
      sub_100002CE0(*(v0 + 192), &qword_1005A96E0, &qword_1004C2A80);
      v82(v68, v67, v69);
      v70 = Logger.logObject.getter();
      v71 = static os_log_type_t.error.getter();
      v72 = os_log_type_enabled(v70, v71);
      v73 = *(v0 + 320);
      v74 = *(v0 + 288);
      v75 = *(v0 + 264);
      if (v72)
      {
        v29 = swift_slowAlloc();
        v83 = swift_slowAlloc();
        *v29 = 136446723;
        *(v29 + 4) = sub_10000D01C(0xD000000000000019, 0x80000001004E9C70, &v83);
        *(v29 + 12) = 2160;
        *(v29 + 14) = 1752392040;
        *(v29 + 22) = 2081;
        sub_1003F50C4(&qword_1005AA720, &type metadata accessor for Friend, &protocol conformance descriptor for Friend);
        v81 = v73;
        v30 = dispatch thunk of CustomStringConvertible.description.getter();
        v32 = v31;
        v56(v74, v75);
        v33 = sub_10000D01C(v30, v32, &v83);

        *(v29 + 24) = v33;
        _os_log_impl(&_mh_execute_header, v70, v71, "%{public}s No peerID for follower %{private,mask.hash}s", v29, 0x20u);
        swift_arrayDestroy();

        v23 = (v56)(v81, v75);
      }

      else
      {

        v56(v74, v75);
        v23 = (v56)(v73, v75);
      }

      v26 = *(v0 + 360) + 1;
      if (v26 == *(v0 + 352))
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    return _swift_task_switch(v23, v24, v25);
  }

LABEL_7:

  v27 = *(v0 + 8);

  return v27();
}

uint64_t sub_1003F0B4C()
{
  v1 = *(v0 + 96);

  return _swift_task_switch(sub_1003F0BB8, v1, 0);
}

uint64_t sub_1003F0BB8()
{
  (*(v0 + 392))(*(v0 + 320), *(v0 + 264));
  (*(*(v0 + 232) + 8))(*(v0 + 256), *(v0 + 224));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003F0D1C()
{
  v5 = (&async function pointer to dispatch thunk of CloudKitStorage.changeSet(block:) + async function pointer to dispatch thunk of CloudKitStorage.changeSet(block:));
  v1 = swift_task_alloc();
  v0[55] = v1;
  *v1 = v0;
  v1[1] = sub_1003F0DE4;
  v2 = v0[54];
  v3 = v0[19];

  return v5(v3, &unk_1004D8560, v2);
}

uint64_t sub_1003F0DE4()
{
  v2 = *v1;
  *(*v1 + 448) = v0;

  if (v0)
  {
    v3 = *(v2 + 88);
    v4 = sub_1003F199C;
  }

  else
  {
    v5 = *(v2 + 96);

    v4 = sub_1003F0F0C;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1003F0F0C()
{
  v109 = v0;
  v104 = *(v0 + 400);
  v92 = *(v0 + 368);
  v1 = *(v0 + 456);
  v91 = *(v0 + 320);
  v2 = *(v0 + 304);
  v94 = *(v0 + 280);
  v99 = *(v0 + 272);
  v3 = *(v0 + 264);
  v4 = *(v0 + 248);
  v85 = *(v0 + 256);
  v5 = *(v0 + 232);
  v6 = *(v0 + 224);
  v7 = *(v0 + 144);
  v84 = *(v0 + 152);
  v86 = v7;
  v87 = v3;
  v90 = *(v0 + 136);
  v88 = *(v0 + 128);
  v8 = *(v0 + 120);
  v96 = v8;
  v101 = *(v0 + 112);
  v98 = *(v0 + 104);
  v89 = *(v0 + 240) + v1;
  v97 = *(v0 + 96);
  v93 = *(v0 + 88);
  v9 = type metadata accessor for TaskPriority();
  v95 = *(v9 - 8);
  (*(v95 + 56))(v8, 1, 1, v9);
  sub_100005F04(v84, v7, &qword_1005AF228, &unk_1004D0440);
  (*(v5 + 16))(v4, v85, v6);
  v92(v2, v91, v3);
  v10 = (*(v88 + 80) + 40) & ~*(v88 + 80);
  v11 = (v90 + *(v5 + 80) + v10) & ~*(v5 + 80);
  v12 = (v89 + v11) & ~v1;
  v13 = (v94 + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = swift_allocObject();
  *(v14 + 2) = 0;
  *(v14 + 3) = 0;
  *(v14 + 4) = v93;
  sub_1000176A8(v86, &v14[v10], &qword_1005AF228, &unk_1004D0440);
  v104(&v14[v11], v4, v6);
  (*(v99 + 32))(&v14[v12], v2, v87);
  *&v14[v13] = v97;
  *&v14[(v13 + 15) & 0xFFFFFFFFFFFFFFF8] = v98;
  sub_100005F04(v96, v101, &qword_1005A9690, &qword_1004C2A00);
  LODWORD(v13) = (*(v95 + 48))(v101, 1, v9);

  v15 = *(v0 + 112);
  if (v13 == 1)
  {
    sub_100002CE0(*(v0 + 112), &qword_1005A9690, &qword_1004C2A00);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v95 + 8))(v15, v9);
  }

  if (*(v14 + 2))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
  }

  else
  {
    v16 = 0;
    v18 = 0;
  }

  v19 = **(v0 + 72);

  if (v18 | v16)
  {
    v20 = v0 + 16;
    *(v0 + 16) = 0;
    *(v0 + 24) = 0;
    *(v0 + 32) = v16;
    *(v0 + 40) = v18;
  }

  else
  {
    v20 = 0;
  }

  v100 = *(v0 + 392);
  v21 = *(v0 + 320);
  v22 = *(v0 + 264);
  v23 = *(v0 + 232);
  v102 = *(v0 + 224);
  v105 = *(v0 + 256);
  v24 = *(v0 + 184);
  v25 = *(v0 + 152);
  v26 = *(v0 + 120);
  *(v0 + 48) = 1;
  *(v0 + 56) = v20;
  *(v0 + 64) = v19;
  swift_task_create();

  sub_100002CE0(v26, &qword_1005A9690, &qword_1004C2A00);
  sub_100002CE0(v25, &qword_1005AF228, &unk_1004D0440);
  v100(v21, v22);
  sub_1003F4E48(v24, type metadata accessor for FriendSharedSecretsRecord);
  v27 = (*(v23 + 8))(v105, v102);
  v30 = *(v0 + 360) + 1;
  if (v30 == *(v0 + 352))
  {
LABEL_11:

    v31 = *(v0 + 8);

    return v31();
  }

  else
  {
    while (1)
    {
      *(v0 + 360) = v30;
      v38 = *(v0 + 344);
      if (v30 >= *(v38 + 16))
      {
        __break(1u);
        return _swift_task_switch(v27, v28, v29);
      }

      v39 = *(v0 + 320);
      v40 = *(v0 + 264);
      v41 = *(v0 + 272);
      v43 = *(v41 + 16);
      v41 += 16;
      v42 = v43;
      v44 = v38 + ((*(v0 + 456) + 32) & ~*(v0 + 456)) + *(v41 + 56) * v30;
      *(v0 + 368) = v43;
      *(v0 + 376) = v41 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v43(v39, v44, v40);
      if (qword_1005A8530 != -1)
      {
        swift_once();
      }

      v45 = *(v0 + 312);
      v46 = *(v0 + 320);
      v47 = *(v0 + 264);
      v48 = type metadata accessor for Logger();
      *(v0 + 384) = sub_10000A6F0(v48, qword_1005E0C30);
      v42(v45, v46, v47);
      v49 = Logger.logObject.getter();
      v50 = static os_log_type_t.default.getter();
      v51 = os_log_type_enabled(v49, v50);
      v52 = *(v0 + 312);
      v54 = *(v0 + 264);
      v53 = *(v0 + 272);
      v107 = v42;
      if (v51)
      {
        v55 = swift_slowAlloc();
        v103 = swift_slowAlloc();
        v108[0] = v103;
        *v55 = 141558275;
        *(v55 + 4) = 1752392040;
        *(v55 + 12) = 2081;
        sub_1003F50C4(&qword_1005AA720, &type metadata accessor for Friend, &protocol conformance descriptor for Friend);
        v56 = dispatch thunk of CustomStringConvertible.description.getter();
        v58 = v57;
        v59 = v54;
        v60 = *(v53 + 8);
        v60(v52, v59);
        v61 = sub_10000D01C(v56, v58, v108);

        *(v55 + 14) = v61;
        _os_log_impl(&_mh_execute_header, v49, v50, "Revoking token from %{private,mask.hash}s", v55, 0x16u);
        sub_100004984(v103);
      }

      else
      {

        v62 = v54;
        v60 = *(v53 + 8);
        v60(v52, v62);
      }

      *(v0 + 392) = v60;
      v63 = *(v0 + 224);
      v64 = *(v0 + 232);
      v66 = *(v0 + 208);
      v65 = *(v0 + 216);
      v68 = *(v0 + 192);
      v67 = *(v0 + 200);
      Friend.handle.getter();
      Handle.peerID.getter();
      (*(v66 + 8))(v65, v67);
      v69 = (*(v64 + 48))(v68, 1, v63);
      v70 = *(v0 + 192);
      if (v69 != 1)
      {
        break;
      }

      v71 = *(v0 + 320);
      v72 = *(v0 + 288);
      v73 = *(v0 + 264);
      sub_100002CE0(*(v0 + 192), &qword_1005A96E0, &qword_1004C2A80);
      v107(v72, v71, v73);
      v74 = Logger.logObject.getter();
      v75 = static os_log_type_t.error.getter();
      v76 = os_log_type_enabled(v74, v75);
      v77 = *(v0 + 320);
      v78 = *(v0 + 288);
      v79 = *(v0 + 264);
      if (v76)
      {
        v33 = swift_slowAlloc();
        v108[0] = swift_slowAlloc();
        *v33 = 136446723;
        *(v33 + 4) = sub_10000D01C(0xD000000000000019, 0x80000001004E9C70, v108);
        *(v33 + 12) = 2160;
        *(v33 + 14) = 1752392040;
        *(v33 + 22) = 2081;
        sub_1003F50C4(&qword_1005AA720, &type metadata accessor for Friend, &protocol conformance descriptor for Friend);
        v106 = v77;
        v34 = dispatch thunk of CustomStringConvertible.description.getter();
        v36 = v35;
        v60(v78, v79);
        v37 = sub_10000D01C(v34, v36, v108);

        *(v33 + 24) = v37;
        _os_log_impl(&_mh_execute_header, v74, v75, "%{public}s No peerID for follower %{private,mask.hash}s", v33, 0x20u);
        swift_arrayDestroy();

        v27 = (v60)(v106, v79);
      }

      else
      {

        v60(v78, v79);
        v27 = (v60)(v77, v79);
      }

      v30 = *(v0 + 360) + 1;
      if (v30 == *(v0 + 352))
      {
        goto LABEL_11;
      }
    }

    v80 = *(v0 + 256);
    v81 = *(v0 + 224);
    v82 = *(v0 + 232);
    v83 = *(v82 + 32);
    *(v0 + 400) = v83;
    *(v0 + 408) = (v82 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v83(v80, v70, v81);
    v27 = sub_1003F0060;
    v28 = 0;
    v29 = 0;

    return _swift_task_switch(v27, v28, v29);
  }
}

uint64_t sub_1003F199C()
{
  v1 = *(v0 + 96);

  return _swift_task_switch(sub_1003F1A14, v1, 0);
}

uint64_t sub_1003F1A14()
{
  v1 = *(v0 + 184);
  (*(v0 + 392))(*(v0 + 320), *(v0 + 264));
  sub_1003F4E48(v1, type metadata accessor for FriendSharedSecretsRecord);
  (*(*(v0 + 232) + 8))(*(v0 + 256), *(v0 + 224));

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1003F1B98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return _swift_task_switch(sub_1003F1BBC, 0, 0);
}

uint64_t sub_1003F1BBC()
{
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *(v1 + 16) = *(v0 + 32);
  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  v3 = type metadata accessor for FriendSharedSecretsRecord(0);
  v4 = sub_1003F50C4(&qword_1005AF498, type metadata accessor for FriendSharedSecretsRecord, &unk_1004CF940);
  *v2 = v0;
  v2[1] = sub_1003F1CD4;
  v5 = *(v0 + 24);

  return CloudKitChangeSet.Adaptor.update<A>(record:updateBlock:)(v5, sub_1003F50BC, v1, v3, v4);
}

uint64_t sub_1003F1CD4()
{
  v2 = *v1;
  *(v2 + 64) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1003F1E10, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1003F1E10()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003F1E74(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1005A8530 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_10000A6F0(v8, qword_1005E0C30);
  (*(v5 + 16))(v7, a2, v4);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v24 = v12;
    *v11 = 136446210;
    sub_1003F50C4(&qword_1005A92C0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = v14;
    (*(v5 + 8))(v7, v4);
    v16 = sub_10000D01C(v13, v15, &v24);

    *(v11 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v9, v10, "Removing incomingSharedSecret for %{public}s", v11, 0xCu);
    sub_100004984(v12);
  }

  else
  {

    (*(v5 + 8))(v7, v4);
  }

  v17 = type metadata accessor for FriendSharedSecretsRecord(0);
  v18 = *(v17 + 32);
  sub_100002CE0(a1 + v18, &qword_1005AEB98, &unk_1004D07C0);
  v19 = type metadata accessor for SharedSecretKey();
  (*(*(v19 - 8) + 56))(a1 + v18, 1, 1, v19);
  v20 = *(v17 + 36);
  sub_100002CE0(a1 + v20, &unk_1005AE5B0, &qword_1004C32F0);
  v21 = type metadata accessor for Date();
  return (*(*(v21 - 8) + 56))(a1 + v20, 1, 1, v21);
}

uint64_t sub_1003F21AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  v9 = type metadata accessor for Handle();
  v8[7] = v9;
  v8[8] = *(v9 - 8);
  v8[9] = swift_task_alloc();
  v10 = type metadata accessor for Friend();
  v8[10] = v10;
  v8[11] = *(v10 - 8);
  v8[12] = swift_task_alloc();
  v11 = type metadata accessor for UUID();
  v8[13] = v11;
  v8[14] = *(v11 - 8);
  v8[15] = swift_task_alloc();
  v12 = type metadata accessor for CloudKitCoordinator.Database();
  v8[16] = v12;
  v8[17] = *(v12 - 8);
  v8[18] = swift_task_alloc();

  return _swift_task_switch(sub_1003F238C, 0, 0);
}

uint64_t sub_1003F238C()
{
  v1 = v0[2];
  (*(v0[17] + 104))(v0[18], enum case for CloudKitCoordinator.Database.private(_:), v0[16]);

  return _swift_task_switch(sub_1003F2414, v1, 0);
}

uint64_t sub_1003F2414()
{
  v5 = (&async function pointer to dispatch thunk of CloudKitStorage.apply(changeSet:database:) + async function pointer to dispatch thunk of CloudKitStorage.apply(changeSet:database:));
  v1 = swift_task_alloc();
  v0[19] = v1;
  *v1 = v0;
  v1[1] = sub_1003F24C8;
  v2 = v0[18];
  v3 = v0[3];

  return v5(v3, v2);
}

uint64_t sub_1003F24C8()
{
  v2 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v3 = v2[2];
    v4 = sub_1003F2960;
  }

  else
  {
    (*(v2[17] + 8))(v2[18], v2[16]);
    v4 = sub_1003F25FC;
    v3 = 0;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1003F25FC()
{
  v38 = v0;
  if (qword_1005A8530 != -1)
  {
    swift_once();
  }

  v2 = v0[14];
  v1 = v0[15];
  v4 = v0[12];
  v3 = v0[13];
  v5 = v0[10];
  v6 = v0[11];
  v8 = v0[4];
  v7 = v0[5];
  v9 = type metadata accessor for Logger();
  sub_10000A6F0(v9, qword_1005E0C30);
  (*(v2 + 16))(v1, v8, v3);
  (*(v6 + 16))(v4, v7, v5);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  v12 = os_log_type_enabled(v10, v11);
  v13 = v0[14];
  v14 = v0[15];
  v15 = v0[12];
  v16 = v0[13];
  v18 = v0[10];
  v17 = v0[11];
  if (v12)
  {
    v19 = v0[9];
    v34 = v0[8];
    v35 = v0[7];
    log = v10;
    v20 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    *v20 = 136446723;
    sub_1003F50C4(&qword_1005A92C0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v33 = v11;
    v21 = dispatch thunk of CustomStringConvertible.description.getter();
    v32 = v18;
    v23 = v22;
    (*(v13 + 8))(v14, v16);
    v24 = sub_10000D01C(v21, v23, &v37);

    *(v20 + 4) = v24;
    *(v20 + 12) = 2160;
    *(v20 + 14) = 1752392040;
    *(v20 + 22) = 2081;
    Friend.handle.getter();
    v25 = Handle.identifier.getter();
    v27 = v26;
    (*(v34 + 8))(v19, v35);
    (*(v17 + 8))(v15, v32);
    v28 = sub_10000D01C(v25, v27, &v37);

    *(v20 + 24) = v28;
    _os_log_impl(&_mh_execute_header, log, v33, "Successfully removed incomingSharedSecret for %{public}s %{private,mask.hash}s)", v20, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    (*(v17 + 8))(v15, v18);
    (*(v13 + 8))(v14, v16);
  }

  v29 = swift_task_alloc();
  v0[21] = v29;
  *v29 = v0;
  v29[1] = sub_1003F2A68;
  v30 = v0[5];

  return sub_10041AF84(v30);
}

uint64_t sub_1003F2960()
{
  (*(v0[17] + 8))(v0[18], v0[16]);

  return _swift_task_switch(sub_1003F29D8, 0, 0);
}

uint64_t sub_1003F29D8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003F2A68()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1003F2BDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[10] = a3;
  v4[11] = a4;
  v4[9] = a2;
  sub_10004B564(&qword_1005A9690, &qword_1004C2A00);
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();
  v6 = type metadata accessor for Friend();
  v4[14] = v6;
  v7 = *(v6 - 8);
  v4[15] = v7;
  v4[16] = *(v7 + 64);
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();

  return _swift_task_switch(sub_1003F2D08, a3, 0);
}

uint64_t sub_1003F2D08()
{
  sub_10004B564(&qword_1005A92A8, &qword_1004C4330);
  v1 = type metadata accessor for HandleType();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = swift_allocObject();
  *(v0 + 160) = v4;
  *(v4 + 16) = xmmword_1004C1900;
  (*(v2 + 104))(v4 + v3, enum case for HandleType.follower(_:), v1);
  v5 = swift_task_alloc();
  *(v0 + 168) = v5;
  *v5 = v0;
  v5[1] = sub_1003F2E6C;

  return sub_10001C61C(v4, 1);
}

uint64_t sub_1003F2E6C(uint64_t a1)
{
  v2 = *(*v1 + 88);
  *(*v1 + 176) = a1;

  return _swift_task_switch(sub_1003F2FA0, v2, 0);
}

uint64_t sub_1003F2FA0()
{
  v54 = v0;
  v1 = *(v0 + 176);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + 120);
    v5 = *(v3 + 16);
    v3 += 16;
    v4 = v5;
    v6 = *(v3 + 64);
    v7 = v1 + ((v6 + 32) & ~v6);
    v51 = (v3 - 8);
    v46 = (v6 + 40) & ~v6;
    v44 = **(v0 + 72);
    v45 = (v3 + 16);
    v43 = *(v3 + 56);
    v52 = v5;
    do
    {
      v49 = v7;
      v50 = v2;
      (v4)(*(v0 + 152));
      if (qword_1005A8530 != -1)
      {
        swift_once();
      }

      v13 = *(v0 + 144);
      v12 = *(v0 + 152);
      v14 = *(v0 + 112);
      v15 = type metadata accessor for Logger();
      sub_10000A6F0(v15, qword_1005E0C30);
      v4(v13, v12, v14);
      v16 = Logger.logObject.getter();
      v17 = static os_log_type_t.default.getter();
      v18 = os_log_type_enabled(v16, v17);
      v19 = *(v0 + 144);
      v20 = *(v0 + 112);
      if (v18)
      {
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        v53 = v22;
        *v21 = 141558275;
        *(v21 + 4) = 1752392040;
        *(v21 + 12) = 2081;
        sub_1003F50C4(&qword_1005AA720, &type metadata accessor for Friend, &protocol conformance descriptor for Friend);
        v23 = dispatch thunk of CustomStringConvertible.description.getter();
        v25 = v24;
        v48 = *v51;
        (*v51)(v19, v20);
        v26 = sub_10000D01C(v23, v25, &v53);

        *(v21 + 14) = v26;
        _os_log_impl(&_mh_execute_header, v16, v17, "Generate token for %{private,mask.hash}s", v21, 0x16u);
        sub_100004984(v22);
      }

      else
      {

        v48 = *v51;
        (*v51)(v19, v20);
      }

      v27 = *(v0 + 152);
      v28 = *(v0 + 136);
      v30 = *(v0 + 104);
      v29 = *(v0 + 112);
      v31 = *(v0 + 88);
      v47 = *(v0 + 96);
      v32 = type metadata accessor for TaskPriority();
      v33 = *(v32 - 8);
      (*(v33 + 56))(v30, 1, 1, v32);
      v52(v28, v27, v29);
      v34 = swift_allocObject();
      v34[2] = 0;
      v35 = v34 + 2;
      v34[3] = 0;
      v34[4] = v31;
      (*v45)(v34 + v46, v28, v29);
      sub_100005F04(v30, v47, &qword_1005A9690, &qword_1004C2A00);
      LODWORD(v28) = (*(v33 + 48))(v47, 1, v32);

      v36 = *(v0 + 96);
      if (v28 == 1)
      {
        sub_100002CE0(*(v0 + 96), &qword_1005A9690, &qword_1004C2A00);
        if (*v35)
        {
          goto LABEL_14;
        }
      }

      else
      {
        TaskPriority.rawValue.getter();
        (*(v33 + 8))(v36, v32);
        if (*v35)
        {
LABEL_14:
          swift_getObjectType();
          swift_unknownObjectRetain();
          v37 = dispatch thunk of Actor.unownedExecutor.getter();
          v38 = v39;
          swift_unknownObjectRelease();
          goto LABEL_15;
        }
      }

      v37 = 0;
      v38 = 0;
LABEL_15:
      v40 = swift_allocObject();
      *(v40 + 16) = &unk_1004D8550;
      *(v40 + 24) = v34;

      if (v38 | v37)
      {
        v8 = v0 + 16;
        *(v0 + 16) = 0;
        *(v0 + 24) = 0;
        *(v0 + 32) = v37;
        *(v0 + 40) = v38;
      }

      else
      {
        v8 = 0;
      }

      v9 = *(v0 + 152);
      v11 = *(v0 + 104);
      v10 = *(v0 + 112);
      *(v0 + 48) = 1;
      *(v0 + 56) = v8;
      *(v0 + 64) = v44;
      swift_task_create();

      sub_100002CE0(v11, &qword_1005A9690, &qword_1004C2A00);
      v48(v9, v10);
      v7 = v49 + v43;
      v2 = v50 - 1;
      v4 = v52;
    }

    while (v50 != 1);
  }

  v41 = *(v0 + 8);

  return v41();
}

uint64_t sub_1003F355C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return _swift_task_switch(sub_1003F357C, a4, 0);
}

uint64_t sub_1003F357C()
{
  sub_1004053C0(*(v0 + 24));
  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_1003F35DC(char a1)
{
  result = 0x64696C61766E692ELL;
  switch(a1)
  {
    case 1:
    case 12:
      return 0xD000000000000014;
    case 2:
      return result;
    case 3:
      return 0xD000000000000012;
    case 4:
    case 13:
      return 0xD000000000000013;
    case 5:
    case 14:
      v3 = 9;
      goto LABEL_22;
    case 6:
      v3 = 13;
      goto LABEL_22;
    case 7:
      return 0xD00000000000001ELL;
    case 8:
      return 0xD000000000000024;
    case 9:
    case 17:
      return 0xD000000000000019;
    case 10:
      return 0xD000000000000012;
    case 11:
      return 0xD000000000000015;
    case 15:
      return 0xD000000000000010;
    case 16:
      return 0xD000000000000011;
    case 18:
    case 22:
      return 0xD000000000000016;
    case 19:
      return 0xD00000000000001ALL;
    case 20:
      return 0x67696C45746F6E2ELL;
    case 21:
      return 0xD000000000000020;
    case 23:
      v3 = 5;
LABEL_22:
      result = v3 | 0xD000000000000012;
      break;
    case 24:
      result = 0x6E776F6E6B6E752ELL;
      break;
    default:
      result = 0xD000000000000012;
      break;
  }

  return result;
}

uint64_t sub_1003F3890@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1003F54DC(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1003F38BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1003F5488();
  v5 = sub_10004E724();

  return Error<>._code.getter(a1, a2, v4, v5);
}

uint64_t sub_1003F391C()
{
  v0 = type metadata accessor for Logger();
  sub_10004F154(v0, qword_1005E0C60);
  sub_10000A6F0(v0, qword_1005E0C60);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1003F399C()
{
  v0 = [objc_msgSend(objc_opt_self() "deviceCapabilities")];
  swift_unknownObjectRelease();
  if (v0)
  {
    return 1;
  }

  if (static SystemInfo.isInternalBuild.getter())
  {
    v2 = [objc_opt_self() standardUserDefaults];
    v3 = String._bridgeToObjectiveC()();
    v4 = [v2 BOOLForKey:v3];
  }

  else
  {
    v4 = 0;
  }

  v5 = static SystemInfo.arrowChipID.getter();
  if (v6)
  {
    v7 = -1;
  }

  else
  {
    v7 = v5;
  }

  if (qword_1005A8530 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_10000A6F0(v8, qword_1005E0C30);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 67109632;
    *(v11 + 8) = 2048;
    *(v11 + 10) = v7;
    *(v11 + 18) = 1024;
    *(v11 + 20) = v4;
    _os_log_impl(&_mh_execute_header, v9, v10, "isFindingCapable supportsExtendedDistanceMeasurement: %{BOOL}d. arrowChipID: %ld. AllowPeopleFindingOnR1Devices: %{BOOL}d", v11, 0x18u);
  }

  if (v7 == 8198)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1003F3B84()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000368C;

  return sub_1003E4304();
}

uint64_t sub_1003F3C20()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000368C;

  return sub_1003E59BC();
}

uint64_t sub_1003F3CBC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000368C;

  return sub_1003E918C();
}

uint64_t sub_1003F3D58()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000368C;

  return sub_1003EA348();
}

uint64_t sub_1003F3DF4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000368C;

  return sub_1003EB4F0();
}

uint64_t sub_1003F3E90()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000368C;

  return sub_1003EB580();
}

uint64_t sub_1003F3F2C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000368C;

  return sub_10044BD24(a1, a2);
}

uint64_t sub_1003F3FD8(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_10000368C;

  return sub_10044C4BC(a1, a2, v2);
}

uint64_t sub_1003F4080(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10000368C;

  return sub_1003ED534(a1);
}

uint64_t sub_1003F411C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000368C;

  return sub_10004B074();
}

uint64_t sub_1003F41B8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000368C;

  return sub_1003ED5D0();
}

uint64_t sub_1003F4254(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1003F42BC()
{
  v2 = *(type metadata accessor for Handle() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + v4);
  v7 = *(v0 + v5);
  v8 = *(v0 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_10000368C;

  return sub_10040F940(v0 + v3, v6, v7, v8);
}

uint64_t sub_1003F43E8(uint64_t a1, char a2)
{
  v6 = *(type metadata accessor for Handle() - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_10000368C;

  return sub_100412A84(a1, a2 & 1, v2 + v7);
}

uint64_t sub_1003F4500()
{
  v1 = type metadata accessor for Handle();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_1003F45AC()
{
  v2 = *(type metadata accessor for Handle() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + v4);
  v7 = *(v0 + v5);
  v8 = *(v0 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_100003690;

  return sub_10040F940(v0 + v3, v6, v7, v8);
}

uint64_t sub_1003F46D8(uint64_t a1, char a2)
{
  v6 = *(type metadata accessor for Handle() - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_100003690;

  return sub_100412A84(a1, a2 & 1, v2 + v7);
}

uint64_t sub_1003F47F0()
{
  v2 = *(type metadata accessor for Friend() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_10000368C;

  return sub_100406098(v4, v0 + v3, v5);
}

uint64_t sub_1003F48F8(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = (*(v3 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v3 + 8))(v1 + v5, v2);

  return _swift_deallocObject(v1, v6 + 8, v4 | 7);
}

uint64_t sub_1003F4994(uint64_t a1, char a2)
{
  v6 = *(type metadata accessor for Friend() - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = *(v2 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_10000368C;

  return sub_10040EF18(a1, a2 & 1, v2 + v7, v8);
}

uint64_t sub_1003F4AAC(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_10000368C;

  return sub_1003EF3E0(a1, a2, v6, v7, v9, v8);
}

uint64_t sub_1003F4B74(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_10000368C;

  return sub_1003F2BDC(a1, a2, v6, v7);
}

uint64_t sub_1003F4C38(uint64_t a1)
{
  v4 = *(type metadata accessor for Friend() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10000368C;

  return sub_1003F355C(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_1003F4D30(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1003F4D98(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000368C;

  return sub_1003F1B98(a1, v4, v5, v6);
}

uint64_t sub_1003F4E48(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1003F4EA8(uint64_t a1)
{
  v3 = *(sub_10004B564(&qword_1005AF228, &unk_1004D0440) - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for UUID() - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  v9 = *(type metadata accessor for Friend() - 8);
  v10 = (v7 + v8 + *(v9 + 80)) & ~*(v9 + 80);
  v11 = v1[2];
  v12 = v1[3];
  v13 = v1[4];
  v14 = *(v1 + ((*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8));
  v15 = swift_task_alloc();
  *(v2 + 16) = v15;
  *v15 = v2;
  v15[1] = sub_10000368C;

  return sub_1003F21AC(a1, v11, v12, v13, v1 + v4, v1 + v7, v1 + v10, v14);
}

uint64_t sub_1003F50C4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1003F510C(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10000368C;

  return sub_1003ED660(a1, v1);
}

uint64_t sub_1003F51A8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10000368C;

  return sub_1003ED6EC(a1);
}

uint64_t sub_1003F5244()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000368C;

  return sub_10004B074();
}

uint64_t getEnumTagSinglePayload for NITokenService.Error(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE8)
  {
    goto LABEL_17;
  }

  if (a2 + 24 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 24) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 24;
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

      return (*a1 | (v4 << 8)) - 24;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 24;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x19;
  v8 = v6 - 25;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for NITokenService.Error(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 24 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 24) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE8)
  {
    v4 = 0;
  }

  if (a2 > 0xE7)
  {
    v5 = ((a2 - 232) >> 8) + 1;
    *result = a2 + 24;
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
    *result = a2 + 24;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1003F5434()
{
  result = qword_1005B3770;
  if (!qword_1005B3770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B3770);
  }

  return result;
}

unint64_t sub_1003F5488()
{
  result = qword_1005B3778;
  if (!qword_1005B3778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B3778);
  }

  return result;
}

uint64_t sub_1003F54DC(uint64_t a1)
{
  if ((a1 - 1) >= 0x19)
  {
    return 25;
  }

  else
  {
    return a1 - 1;
  }
}

uint64_t sub_1003F54F4(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 104) = a1;
  sub_10004B564(&qword_1005B29F0, &qword_1004D8830);
  *(v2 + 24) = swift_task_alloc();
  v3 = type metadata accessor for Device();
  *(v2 + 32) = v3;
  *(v2 + 40) = *(v3 - 8);
  *(v2 + 48) = swift_task_alloc();
  v4 = swift_task_alloc();
  *(v2 + 56) = v4;
  *v4 = v2;
  v4[1] = sub_1003F5620;

  return daemon.getter();
}

uint64_t sub_1003F5620(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 64) = a1;

  v3 = swift_task_alloc();
  *(v2 + 72) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for LocalMessagingService();
  v6 = sub_1004028E8(&unk_1005AFA50, 255, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_1004028E8(&qword_1005AD520, 255, type metadata accessor for LocalMessagingService, &unk_1004D5468);
  *v3 = v9;
  v3[1] = sub_1003F5804;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_1003F5804(uint64_t a1)
{
  v4 = *v2;
  v4[10] = a1;
  v4[11] = v1;

  if (v1)
  {
    v5 = v4[2];
    v6 = sub_1003F5CBC;
  }

  else
  {

    v6 = sub_1003F593C;
    v5 = a1;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1003F593C()
{
  *(v0 + 96) = *(*(v0 + 80) + 128);
  sub_10004B564(&qword_1005AD518, &qword_1004D54F0);
  sub_10001DF0C(&qword_1005B1880, &qword_1005AD518, &qword_1004D54F0, &protocol conformance descriptor for LocalMessaging<A>);
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1003F5A0C, v2, v1);
}

uint64_t sub_1003F5A0C()
{
  v1 = *(v0 + 16);
  dispatch thunk of LocalMessaging.connectedDevice.getter();

  return _swift_task_switch(sub_1003F5A78, v1, 0);
}

uint64_t sub_1003F5A78()
{
  v14 = v0;
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = *(v0 + 24);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_100002CE0(v3, &qword_1005B29F0, &qword_1004D8830);
    if (qword_1005A8560 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_10000A6F0(v4, qword_1005E0C80);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v13 = v8;
      *v7 = 136446210;
      *(v7 + 4) = sub_10000D01C(0xD000000000000027, 0x80000001004E9F50, &v13);
      _os_log_impl(&_mh_execute_header, v5, v6, "%{public}s no connected device!", v7, 0xCu);
      sub_100004984(v8);
    }
  }

  else
  {
    v9 = *(v0 + 48);
    v10 = *(v0 + 104);
    (*(v2 + 32))(v9, v3, v1);
    sub_1003F97F4(v9, v10);

    (*(v2 + 8))(v9, v1);
  }

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_1003F5CBC()
{
  v11 = v0;

  if (qword_1005A8560 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000A6F0(v1, qword_1005E0C80);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v10 = v6;
    *v4 = 136446466;
    *(v4 + 4) = sub_10000D01C(0xD000000000000027, 0x80000001004E9F50, &v10);
    *(v4 + 12) = 2114;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 14) = v7;
    *v5 = v7;
    _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s error: %{public}@", v4, 0x16u);
    sub_100002CE0(v5, &qword_1005A9670, &unk_1004C2480);

    sub_100004984(v6);
  }

  else
  {
  }

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1003F5EDC()
{
  v0 = type metadata accessor for Logger();
  sub_10004F154(v0, qword_1005E0C80);
  v1 = sub_10000A6F0(v0, qword_1005E0C80);
  if (qword_1005A8588 != -1)
  {
    swift_once();
  }

  v2 = sub_10000A6F0(v0, qword_1005E0CB0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1003F5FA4()
{
  v0 = type metadata accessor for PrefixedDefaults();
  sub_10004F154(v0, qword_1005B3780);
  sub_10000A6F0(v0, qword_1005B3780);
  return PrefixedDefaults.init(prefix:)();
}

uint64_t sub_1003F6008()
{
  v0 = type metadata accessor for PrefixedDefaults();
  sub_10004F154(v0, qword_1005E0C98);
  v1 = sub_10000A6F0(v0, qword_1005E0C98);
  if (qword_1005A8568 != -1)
  {
    swift_once();
  }

  v2 = sub_10000A6F0(v0, qword_1005B3780);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1003F60D0()
{
  v0 = type metadata accessor for PrefixedDefaults();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10004B564(&qword_1005B3938, &unk_1004D8880);
  sub_10004F154(v4, qword_1005B3798);
  sub_10000A6F0(v4, qword_1005B3798);
  if (qword_1005A8570 != -1)
  {
    swift_once();
  }

  v5 = sub_10000A6F0(v0, qword_1005E0C98);
  (*(v1 + 16))(v3, v5, v0);
  sub_10004B564(&qword_1005A9630, &qword_1004C5680);
  sub_1004022A0();
  return ManagedDefault.init(prefixedDefaults:key:)();
}

uint64_t sub_1003F6254()
{
  v0 = type metadata accessor for PrefixedDefaults();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10004B564(&qword_1005B3938, &unk_1004D8880);
  sub_10004F154(v4, qword_1005B37B0);
  sub_10000A6F0(v4, qword_1005B37B0);
  if (qword_1005A8570 != -1)
  {
    swift_once();
  }

  v5 = sub_10000A6F0(v0, qword_1005E0C98);
  (*(v1 + 16))(v3, v5, v0);
  sub_10004B564(&qword_1005A9630, &qword_1004C5680);
  sub_1004022A0();
  return ManagedDefault.init(prefixedDefaults:key:)();
}

uint64_t sub_1003F63D8()
{
  v1[98] = v0;
  v2 = type metadata accessor for UUID();
  v1[99] = v2;
  v1[100] = *(v2 - 8);
  v1[101] = swift_task_alloc();
  v3 = swift_task_alloc();
  v1[102] = v3;
  *v3 = v1;
  v3[1] = sub_1003F64C8;

  return daemon.getter();
}

uint64_t sub_1003F64C8(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 824) = a1;

  v3 = swift_task_alloc();
  *(v2 + 832) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for LocalMessagingService();
  v6 = sub_1004028E8(&unk_1005AFA50, 255, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_1004028E8(&qword_1005AD520, 255, type metadata accessor for LocalMessagingService, &unk_1004D5468);
  *v3 = v9;
  v3[1] = sub_1003F66AC;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_1003F66AC(uint64_t a1)
{
  v3 = *v2;
  v3[105] = a1;
  v3[106] = v1;

  if (v1)
  {
    v4 = v3[98];
    v5 = sub_1003F6B44;
  }

  else
  {
    v6 = v3[98];

    v5 = sub_1003F67D8;
    v4 = v6;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_1003F67D8(uint64_t a1)
{
  v2 = v1[98];
  v1[90] = type metadata accessor for NITokenService_LocalMessaging();
  v1[91] = sub_1004028E8(&qword_1005B3988, v3, type metadata accessor for NITokenService_LocalMessaging, &unk_1004D8730);
  v1[87] = v2;

  v4 = swift_task_alloc();
  v1[107] = v4;
  *v4 = v1;
  v4[1] = sub_1003F68C8;
  v5 = v1[101];

  return sub_1002F3E48(v5, (v1 + 87));
}

uint64_t sub_1003F68C8()
{
  v2 = *v1;
  *(*v1 + 864) = v0;

  if (v0)
  {
    v3 = v2[98];
    v4 = sub_1003F6BB4;
  }

  else
  {
    v5 = v2[98];
    (*(v2[100] + 8))(v2[101], v2[99]);
    sub_100004984(v2 + 87);
    v4 = sub_1003F6A0C;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1003F6A0C()
{
  swift_asyncLet_begin();

  return _swift_asyncLet_get(v0 + 16);
}

uint64_t sub_1003F6AD4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003F6B44()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003F6BB4()
{
  v13 = v0;
  sub_100004984(v0 + 87);
  if (qword_1005A8560 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000A6F0(v1, qword_1005E0C80);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[108];
  if (v4)
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v12 = v7;
    *v6 = 136446210;
    v0[97] = v5;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v8 = String.init<A>(describing:)();
    v10 = sub_10000D01C(v8, v9, &v12);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v2, v3, "LocalMessagingService subscription up error: %{public}s", v6, 0xCu);
    sub_100004984(v7);
  }

  else
  {
  }

  swift_asyncLet_begin();

  return _swift_asyncLet_get(v0 + 2);
}

uint64_t sub_1003F6DC8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100003788;

  return sub_1003F6E58();
}

uint64_t sub_1003F6E58()
{
  v1[2] = v0;
  v2 = type metadata accessor for DarwinNotification();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  sub_10004B564(&qword_1005AACD0, &unk_1004C4750);
  v1[6] = swift_task_alloc();
  v3 = sub_10004B564(&qword_1005AACD8, &qword_1004D8900);
  v1[7] = v3;
  v1[8] = *(v3 - 8);
  v1[9] = swift_task_alloc();
  v4 = sub_10004B564(&qword_1005AACE0, &qword_1004C4760);
  v1[10] = v4;
  v1[11] = *(v4 - 8);
  v1[12] = swift_task_alloc();

  return _swift_task_switch(sub_1003F7020, v0, 0);
}

uint64_t sub_1003F7020()
{
  v9 = v0;
  if (qword_1005A8560 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[13] = sub_10000A6F0(v1, qword_1005E0C80);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v8 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_10000D01C(0xD000000000000026, 0x80000001004EA190, &v8);
    _os_log_impl(&_mh_execute_header, v2, v3, "Registering listener for Darwin notification: %s", v4, 0xCu);
    sub_100004984(v5);
  }

  else
  {
  }

  v0[14] = 0x80000001004EA190;
  v6 = swift_task_alloc();
  v0[15] = v6;
  *v6 = v0;
  v6[1] = sub_1003F71F0;

  return daemon.getter();
}

uint64_t sub_1003F71F0(uint64_t a1)
{
  *(*v1 + 128) = a1;

  type metadata accessor for Daemon();
  sub_1004028E8(&qword_1005AB4E0, 255, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1003F734C, v3, v2);
}

uint64_t sub_1003F734C()
{
  *(v0 + 136) = Daemon.darwinNotificationHandler.getter();

  type metadata accessor for DarwinNotificationHandler();
  sub_1004028E8(&qword_1005AACE8, 255, &type metadata accessor for DarwinNotificationHandler, &protocol conformance descriptor for DarwinNotificationHandler);
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1003F7428, v2, v1);
}

uint64_t sub_1003F7428()
{
  v1 = *(v0 + 16);
  dispatch thunk of DarwinNotificationHandler.asyncStream(name:)();

  return _swift_task_switch(sub_1003F74AC, v1, 0);
}

uint64_t sub_1003F74AC()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];
  AsyncStream.makeAsyncIterator()();
  (*(v2 + 8))(v1, v3);
  v5 = sub_1004028E8(&qword_1005B3918, v4, type metadata accessor for NITokenService_LocalMessaging, &unk_1004D8800);
  v0[18] = v5;
  v6 = v0[2];
  v7 = swift_task_alloc();
  v0[19] = v7;
  *v7 = v0;
  v7[1] = sub_1003F75C8;
  v8 = v0[10];
  v9 = v0[6];

  return AsyncStream.Iterator.next(isolation:)(v9, v6, v5, v8);
}

uint64_t sub_1003F75C8()
{
  v1 = *(*v0 + 16);

  return _swift_task_switch(sub_1003F76D8, v1, 0);
}

uint64_t sub_1003F76D8()
{
  v27 = v0;
  v1 = v0[6];
  v2 = v0[3];
  v3 = v0[4];
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    (*(v0[11] + 8))(v0[12], v0[10]);

    v4 = v0[1];

    return v4();
  }

  else
  {
    (*(v3 + 32))(v0[5], v1, v2);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    v8 = os_log_type_enabled(v6, v7);
    v10 = v0[4];
    v9 = v0[5];
    v11 = v0[3];
    if (v8)
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v26 = v13;
      *v12 = 136315138;
      sub_1004028E8(&qword_1005B3240, 255, &type metadata accessor for DarwinNotification, &protocol conformance descriptor for DarwinNotification);
      v14 = dispatch thunk of CustomStringConvertible.description.getter();
      v16 = v15;
      (*(v10 + 8))(v9, v11);
      v17 = sub_10000D01C(v14, v16, &v26);

      *(v12 + 4) = v17;
      _os_log_impl(&_mh_execute_header, v6, v7, "Process NanoRegistryDeviceDidUnpair event: %s", v12, 0xCu);
      sub_100004984(v13);
    }

    else
    {

      (*(v10 + 8))(v9, v11);
    }

    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v18, v19, "Clearing paired devices.", v20, 2u);
    }

    sub_10040231C();
    v21 = v0[18];
    v22 = v0[2];
    v23 = swift_task_alloc();
    v0[19] = v23;
    *v23 = v0;
    v23[1] = sub_1003F75C8;
    v24 = v0[10];
    v25 = v0[6];

    return AsyncStream.Iterator.next(isolation:)(v25, v22, v21, v24);
  }
}

uint64_t sub_1003F7A38()
{

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_1003F7A9C(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = type metadata accessor for NITokenService_LocalMessaging();
  *v4 = v2;
  v4[1] = sub_10000368C;

  return ActorServiceProtocol.startup()(v5, a2);
}

uint64_t sub_1003F7B44()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100003690;

  return sub_1003F63D8();
}

uint64_t sub_1003F7BD0()
{
  type metadata accessor for NITokenService_LocalMessaging();
  sub_1004028E8(&qword_1005AD550, v0, type metadata accessor for NITokenService_LocalMessaging, &unk_1004D87A0);
  return ActorServiceProtocol.description.getter();
}

uint64_t sub_1003F7C38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[3] = a2;
  v4[4] = a3;
  v4[2] = a1;
  v5 = type metadata accessor for Destination();
  v4[5] = v5;
  v4[6] = *(v5 - 8);
  v4[7] = swift_task_alloc();
  v6 = type metadata accessor for UUID();
  v4[8] = v6;
  v4[9] = *(v6 - 8);
  v4[10] = swift_task_alloc();
  v7 = type metadata accessor for Account();
  v4[11] = v7;
  v4[12] = *(v7 - 8);
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();

  return _swift_task_switch(sub_1003F7DC0, v3, 0);
}

uint64_t sub_1003F7DC0()
{
  v54 = v0;
  if (qword_1005A8560 != -1)
  {
    swift_once();
  }

  v1 = v0[14];
  v2 = v0[11];
  v3 = v0[12];
  v4 = v0[9];
  v5 = v0[8];
  v6 = v0[6];
  v50 = v0[5];
  v51 = v0[7];
  v7 = v0[3];
  v46 = v0[10];
  v48 = v0[4];
  v8 = v0[2];
  v9 = type metadata accessor for Logger();
  sub_10000A6F0(v9, qword_1005E0C80);
  v45 = *(v3 + 16);
  v45(v1, v8, v2);
  (*(v4 + 16))(v46, v7, v5);
  (*(v6 + 16))(v51, v48, v50);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  v12 = os_log_type_enabled(v10, v11);
  v13 = v0[14];
  if (v12)
  {
    v52 = v11;
    v14 = v0[12];
    v15 = v0[13];
    v16 = v0[11];
    v18 = v0[8];
    v17 = v0[9];
    v47 = v0[7];
    v49 = v0[6];
    v43 = v0[10];
    v44 = v0[5];
    v19 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    *v19 = 136446978;
    *(v19 + 4) = sub_10000D01C(0xD00000000000002CLL, 0x80000001004DECA0, &v53);
    *(v19 + 12) = 2080;
    v45(v15, v13, v16);
    v20 = String.init<A>(describing:)();
    v22 = v21;
    (*(v14 + 8))(v13, v16);
    v23 = sub_10000D01C(v20, v22, &v53);

    *(v19 + 14) = v23;
    *(v19 + 22) = 2080;
    sub_1004028E8(&qword_1005A92C0, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v24 = dispatch thunk of CustomStringConvertible.description.getter();
    v26 = v25;
    (*(v17 + 8))(v43, v18);
    v27 = sub_10000D01C(v24, v26, &v53);

    *(v19 + 24) = v27;
    *(v19 + 32) = 2080;
    sub_1004028E8(&qword_1005A9260, 255, &type metadata accessor for Destination, &protocol conformance descriptor for Destination);
    v28 = dispatch thunk of CustomStringConvertible.description.getter();
    v30 = v29;
    (*(v49 + 8))(v47, v44);
    v31 = sub_10000D01C(v28, v30, &v53);

    *(v19 + 34) = v31;
    _os_log_impl(&_mh_execute_header, v10, v52, "Local IDS %{public}s %s id %s from: %s", v19, 0x2Au);
    swift_arrayDestroy();
  }

  else
  {
    v32 = v0[11];
    v33 = v0[12];
    v35 = v0[9];
    v34 = v0[10];
    v37 = v0[7];
    v36 = v0[8];
    v38 = v10;
    v40 = v0[5];
    v39 = v0[6];

    (*(v39 + 8))(v37, v40);
    (*(v35 + 8))(v34, v36);
    (*(v33 + 8))(v13, v32);
  }

  v41 = v0[1];

  return v41();
}

uint64_t sub_1003F821C(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = type metadata accessor for Destination();
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  sub_10004B564(&qword_1005A96E0, &qword_1004C2A80);
  v2[9] = swift_task_alloc();
  v4 = type metadata accessor for UUID();
  v2[10] = v4;
  v2[11] = *(v4 - 8);
  v2[12] = swift_task_alloc();
  sub_10004B564(&qword_1005B29F0, &qword_1004D8830);
  v2[13] = swift_task_alloc();
  v5 = type metadata accessor for Device();
  v2[14] = v5;
  v2[15] = *(v5 - 8);
  v2[16] = swift_task_alloc();

  return _swift_task_switch(sub_1003F8404, v1, 0);
}

uint64_t sub_1003F8404()
{
  v16 = v0;
  if (qword_1005A8560 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 136) = sub_10000A6F0(v1, qword_1005E0C80);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v15 = v5;
    *v4 = 141558275;
    *(v4 + 4) = 1752392040;
    *(v4 + 12) = 2081;
    sub_10040263C();
    v6 = dispatch thunk of CustomStringConvertible.description.getter();
    v8 = sub_10000D01C(v6, v7, &v15);

    *(v4 + 14) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "Extracted CompanionPeopleFindingCapabilityRequestEnvelopeV1: %{private,mask.hash}s", v4, 0x16u);
    sub_100004984(v5);
  }

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v15 = v12;
    *v11 = 136446210;
    *(v11 + 4) = sub_10000D01C(0xD000000000000039, 0x80000001004EA120, &v15);
    _os_log_impl(&_mh_execute_header, v9, v10, "%{public}s Watch requested companion finding capability. Sending now.", v11, 0xCu);
    sub_100004984(v12);
  }

  v13 = swift_task_alloc();
  *(v0 + 144) = v13;
  *v13 = v0;
  v13[1] = sub_1003F86A0;

  return daemon.getter();
}

uint64_t sub_1003F86A0(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 152) = a1;

  v3 = swift_task_alloc();
  *(v2 + 160) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for LocalMessagingService();
  v6 = sub_1004028E8(&unk_1005AFA50, 255, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_1004028E8(&qword_1005AD520, 255, type metadata accessor for LocalMessagingService, &unk_1004D5468);
  *v3 = v9;
  v3[1] = sub_1003F8884;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_1003F8884(uint64_t a1)
{
  v3 = *v2;
  v3[21] = a1;
  v3[22] = v1;

  if (v1)
  {
    v4 = v3[5];
    v5 = sub_1003F8F50;
  }

  else
  {
    v6 = v3[5];

    v5 = sub_1003F89AC;
    v4 = v6;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_1003F89AC(uint64_t a1)
{
  v2 = v1[21];
  v1[23] = Destination.destination.getter();
  v1[24] = v3;

  return _swift_task_switch(sub_1003F8A1C, v2, 0);
}

uint64_t sub_1003F8A1C()
{
  *(v0 + 200) = *(*(v0 + 168) + 128);
  sub_10004B564(&qword_1005AD518, &qword_1004D54F0);
  sub_10001DF0C(&qword_1005B1880, &qword_1005AD518, &qword_1004D54F0, &protocol conformance descriptor for LocalMessaging<A>);
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1003F8AEC, v2, v1);
}

uint64_t sub_1003F8AEC()
{
  v1 = *(v0 + 40);
  dispatch thunk of LocalMessaging.device(fromID:)();

  return _swift_task_switch(sub_1003F8B74, v1, 0);
}

uint64_t sub_1003F8B74()
{
  v31 = v0;
  v1 = v0[14];
  v2 = v0[15];
  v3 = v0[13];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v5 = v0[7];
    v4 = v0[8];
    v6 = v0[6];
    v7 = v0[4];
    sub_100002CE0(v3, &qword_1005B29F0, &qword_1004D8830);
    (*(v5 + 16))(v4, v7, v6);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    v10 = os_log_type_enabled(v8, v9);
    v12 = v0[7];
    v11 = v0[8];
    v13 = v0[6];
    if (v10)
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v30 = v15;
      *v14 = 141558275;
      *(v14 + 4) = 1752392040;
      *(v14 + 12) = 2081;
      sub_1004028E8(&qword_1005A9260, 255, &type metadata accessor for Destination, &protocol conformance descriptor for Destination);
      v16 = dispatch thunk of CustomStringConvertible.description.getter();
      v18 = v17;
      (*(v12 + 8))(v11, v13);
      v19 = sub_10000D01C(v16, v18, &v30);

      *(v14 + 14) = v19;
      _os_log_impl(&_mh_execute_header, v8, v9, "No IDSDevice for %{private,mask.hash}s!", v14, 0x16u);
      sub_100004984(v15);
    }

    else
    {

      (*(v12 + 8))(v11, v13);
    }
  }

  else
  {
    v20 = v0[16];
    v22 = v0[11];
    v21 = v0[12];
    v29 = v0[10];
    v28 = v0[9];
    (*(v2 + 32))(v20, v3, v1);
    Device.uniqueIDOverride.getter();
    v23 = String.utf8Data.getter();
    v25 = v24;

    v0[2] = v23;
    v0[3] = v25;
    sub_1000CA210();
    DataProtocol.stableUUID.getter();
    sub_1000049D0(v23, v25);
    v30 = sub_100401AFC(&qword_1005A8580, qword_1005B37B0, sub_1003F6254);
    sub_1001ACB04(v21, v28);
    sub_100002CE0(v28, &qword_1005A96E0, &qword_1004C2A80);
    sub_100401FE8(v30, &qword_1005A8580, qword_1005B37B0, sub_1003F6254);
    sub_1003FD068(v20);

    (*(v22 + 8))(v21, v29);
    (*(v2 + 8))(v20, v1);
  }

  v26 = v0[1];

  return v26();
}

uint64_t sub_1003F8F50()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003F9018()
{
  v11 = v0;
  if (qword_1005A8560 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000A6F0(v1, qword_1005E0C80);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v4 = 136446466;
    *(v4 + 4) = sub_10000D01C(0xD00000000000001ALL, 0x80000001004EA0B0, &v10);
    *(v4 + 12) = 2080;
    type metadata accessor for Account();
    sub_1004028E8(&qword_1005A9258, 255, &type metadata accessor for Account, &protocol conformance descriptor for Account);
    v5 = Set.description.getter();
    v7 = sub_10000D01C(v5, v6, &v10);

    *(v4 + 14) = v7;
    _os_log_impl(&_mh_execute_header, v2, v3, "Local IDS %{public}s. Accounts: %s", v4, 0x16u);
    swift_arrayDestroy();
  }

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1003F9254()
{
  v13 = v0;
  if (qword_1005A8560 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000A6F0(v1, qword_1005E0C80);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 16);
  if (v4)
  {
    v6 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v6 = 136446722;
    *(v6 + 4) = sub_10000D01C(0xD000000000000018, 0x80000001004EA090, &v12);
    *(v6 + 12) = 2048;
    *(v6 + 14) = *(v5 + 16);

    *(v6 + 22) = 2080;
    type metadata accessor for Device();
    sub_1004028E8(&qword_1005A9250, 255, &type metadata accessor for Device, &protocol conformance descriptor for Device);
    v7 = Set.description.getter();
    v9 = sub_10000D01C(v7, v8, &v12);

    *(v6 + 24) = v9;
    _os_log_impl(&_mh_execute_header, v2, v3, "Local IDS %{public}s. Devices[%ld]: %s", v6, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_1003F9490(uint64_t a1)
{
  v2 = sub_10004B564(&qword_1005B29F0, &qword_1004D8830);
  __chkstk_darwin(v2 - 8);
  v4 = &v18 - v3;
  v5 = type metadata accessor for Device();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1005A8560 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_10000A6F0(v9, qword_1005E0C80);

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v20 = v8;
    v13 = v12;
    v19 = swift_slowAlloc();
    v21 = v19;
    *v13 = 136446466;
    *(v13 + 4) = sub_10000D01C(0xD000000000000021, 0x80000001004EA060, &v21);
    *(v13 + 12) = 2080;
    sub_1004028E8(&qword_1005A9250, 255, &type metadata accessor for Device, &protocol conformance descriptor for Device);
    v14 = Set.description.getter();
    v16 = sub_10000D01C(v14, v15, &v21);

    *(v13 + 14) = v16;
    _os_log_impl(&_mh_execute_header, v10, v11, "Local IDS %{public}s. Connected devices: %s", v13, 0x16u);
    swift_arrayDestroy();

    v8 = v20;
  }

  sub_1003AE5B0(a1, v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    return sub_100002CE0(v4, &qword_1005B29F0, &qword_1004D8830);
  }

  (*(v6 + 32))(v8, v4, v5);
  sub_1003F97F4(v8, 0);
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1003F97F4(uint64_t a1, int a2)
{
  v39 = *v2;
  v40 = v2;
  v5 = type metadata accessor for UUID();
  __chkstk_darwin(v5 - 8);
  v38 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Device();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v37 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v33 - v11;
  if (qword_1005A8560 != -1)
  {
    swift_once();
  }

  v41 = a2;
  v13 = type metadata accessor for Logger();
  sub_10000A6F0(v13, qword_1005E0C80);
  v14 = *(v8 + 16);
  v14(v12, a1, v7);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v35 = v16;
    v18 = v17;
    v36 = swift_slowAlloc();
    v42 = v36;
    *v18 = 136446722;
    *(v18 + 4) = sub_10000D01C(0xD000000000000021, 0x80000001004E9F80, &v42);
    *(v18 + 12) = 2080;
    sub_1004028E8(&qword_1005B3920, 255, &type metadata accessor for Device, &protocol conformance descriptor for Device);
    v34 = v15;
    v19 = dispatch thunk of CustomStringConvertible.description.getter();
    v20 = v14;
    v21 = v9;
    v22 = a1;
    v24 = v23;
    (*(v8 + 8))(v12, v7);
    v25 = sub_10000D01C(v19, v24, &v42);
    a1 = v22;
    v9 = v21;
    v14 = v20;

    *(v18 + 14) = v25;
    *(v18 + 22) = 1024;
    *(v18 + 24) = v41 & 1;
    v26 = v34;
    _os_log_impl(&_mh_execute_header, v34, v35, "%{public}s to: %s. Force? %{BOOL}d", v18, 0x1Cu);
    swift_arrayDestroy();
  }

  else
  {

    (*(v8 + 8))(v12, v7);
  }

  v27 = v40;
  v36 = v40[16];
  type metadata accessor for WorkItemQueue.WorkItem();
  v28 = v37;
  v14(v37, a1, v7);
  v29 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v30 = (v29 + v9) & 0xFFFFFFFFFFFFFFF8;
  v31 = swift_allocObject();
  (*(v8 + 32))(v31 + v29, v28, v7);
  *(v31 + v29 + v9) = v41 & 1;
  *(v31 + v30 + 8) = v27;
  *(v31 + ((v30 + 23) & 0xFFFFFFFFFFFFFFF8)) = v39;

  UUID.init()();
  WorkItemQueue.WorkItem.__allocating_init(identifier:block:completion:)();
  dispatch thunk of WorkItemQueue.enqueue(_:)();
}

uint64_t sub_1003F9C84(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = a4;
  *(v4 + 96) = a2;
  *(v4 + 16) = a1;
  v5 = type metadata accessor for Device();
  *(v4 + 40) = v5;
  v6 = *(v5 - 8);
  *(v4 + 48) = v6;
  *(v4 + 56) = *(v6 + 64);
  *(v4 + 64) = swift_task_alloc();

  return _swift_task_switch(sub_1003F9D54, 0, 0);
}

uint64_t sub_1003F9D54()
{
  v20 = v0;
  if (qword_1005A8560 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000A6F0(v1, qword_1005E0C80);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v19 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_10000D01C(0xD000000000000021, 0x80000001004E9F80, &v19);
    _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s entered queue.", v4, 0xCu);
    sub_100004984(v5);
  }

  v7 = *(v0 + 56);
  v6 = *(v0 + 64);
  v8 = *(v0 + 40);
  v9 = *(v0 + 48);
  v10 = *(v0 + 24);
  v18 = *(v0 + 32);
  v17 = *(v0 + 96);
  (*(v9 + 16))(v6, *(v0 + 16), v8);
  v11 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v12 = v11 + v7;
  v13 = (v11 + v7) & 0xFFFFFFFFFFFFFFF8;
  v14 = swift_allocObject();
  *(v0 + 72) = v14;
  (*(v9 + 32))(v14 + v11, v6, v8);
  *(v14 + v12) = v17;
  *(v14 + v13 + 8) = v10;
  *(v14 + ((v13 + 23) & 0xFFFFFFFFFFFFFFF8)) = v18;

  v15 = swift_task_alloc();
  *(v0 + 80) = v15;
  *v15 = v0;
  v15[1] = sub_1001EDCA8;

  return withTimeout<A>(_:block:)(v15, 0x8155A43676E00000, 6, &unk_1004D8860, v14, &type metadata for () + 1);
}

uint64_t sub_1003F9FF4(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  *(v4 + 489) = a3;
  *(v4 + 32) = a2;
  *(v4 + 40) = a4;
  sub_10004B564(&qword_1005A96E0, &qword_1004C2A80);
  *(v4 + 48) = swift_task_alloc();
  v5 = type metadata accessor for MessagingOptions();
  *(v4 + 56) = v5;
  *(v4 + 64) = *(v5 - 8);
  *(v4 + 72) = swift_task_alloc();
  v6 = sub_10004B564(&qword_1005B1888, &unk_1004D8870);
  *(v4 + 80) = v6;
  *(v4 + 88) = *(v6 - 8);
  *(v4 + 96) = swift_task_alloc();
  *(v4 + 104) = type metadata accessor for OwnerTokenEnvelopeV1(0);
  *(v4 + 112) = swift_task_alloc();
  *(v4 + 120) = swift_task_alloc();
  sub_10004B564(&qword_1005B1C88, &qword_1004D5E68);
  *(v4 + 128) = swift_task_alloc();
  v7 = type metadata accessor for OwnerSharedSecretsRecord(0);
  *(v4 + 136) = v7;
  *(v4 + 144) = *(v7 - 8);
  *(v4 + 152) = swift_task_alloc();
  *(v4 + 160) = swift_task_alloc();
  v8 = type metadata accessor for Device();
  *(v4 + 168) = v8;
  *(v4 + 176) = *(v8 - 8);
  *(v4 + 184) = swift_task_alloc();
  v9 = type metadata accessor for UUID();
  *(v4 + 192) = v9;
  *(v4 + 200) = *(v9 - 8);
  *(v4 + 208) = swift_task_alloc();
  *(v4 + 216) = swift_task_alloc();
  *(v4 + 224) = swift_task_alloc();
  *(v4 + 232) = swift_task_alloc();
  *(v4 + 240) = swift_task_alloc();
  *(v4 + 248) = swift_task_alloc();
  *(v4 + 256) = swift_task_alloc();
  *(v4 + 264) = swift_task_alloc();
  *(v4 + 272) = swift_task_alloc();
  *(v4 + 280) = swift_task_alloc();

  return _swift_task_switch(sub_1003FA358, 0, 0);
}

uint64_t sub_1003FA358(uint64_t a1)
{
  v65 = v1;
  Device.uniqueIDOverride.getter();
  v2 = String.utf8Data.getter();
  v4 = v3;

  *(v1 + 16) = v2;
  *(v1 + 24) = v4;
  sub_1000CA210();
  DataProtocol.stableUUID.getter();
  sub_1000049D0(v2, v4);
  if (qword_1005A8560 != -1)
  {
    swift_once();
  }

  v6 = *(v1 + 272);
  v5 = *(v1 + 280);
  v8 = *(v1 + 192);
  v7 = *(v1 + 200);
  v9 = type metadata accessor for Logger();
  *(v1 + 288) = sub_10000A6F0(v9, qword_1005E0C80);
  v10 = *(v7 + 16);
  *(v1 + 296) = v10;
  *(v1 + 304) = (v7 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v10(v6, v5, v8);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  v13 = os_log_type_enabled(v11, v12);
  v14 = *(v1 + 272);
  v16 = *(v1 + 192);
  v15 = *(v1 + 200);
  if (v13)
  {
    v17 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    *v17 = 136446466;
    *(v17 + 4) = sub_10000D01C(0xD000000000000021, 0x80000001004E9F80, &v64);
    *(v17 + 12) = 2082;
    sub_1004028E8(&qword_1005A92C0, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    log = v11;
    v18 = dispatch thunk of CustomStringConvertible.description.getter();
    v19 = v14;
    v21 = v20;
    v59 = v12;
    v22 = *(v15 + 8);
    v22(v19, v16);
    v23 = sub_10000D01C(v18, v21, &v64);

    *(v17 + 14) = v23;
    _os_log_impl(&_mh_execute_header, log, v59, "%{public}s to device: %{public}s", v17, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v22 = *(v15 + 8);
    v22(v14, v16);
  }

  *(v1 + 312) = v22;
  if (*(v1 + 489))
  {
    v24 = *(v1 + 296);
    v25 = *(v1 + 280);
    v26 = *(v1 + 256);
    v27 = *(v1 + 192);
    (*(*(v1 + 176) + 16))(*(v1 + 184), *(v1 + 32), *(v1 + 168));
    v24(v26, v25, v27);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();
    v30 = os_log_type_enabled(v28, v29);
    v31 = *(v1 + 312);
    v32 = *(v1 + 256);
    v33 = *(v1 + 192);
    v35 = *(v1 + 176);
    v34 = *(v1 + 184);
    v36 = *(v1 + 168);
    if (v30)
    {
      loga = v29;
      v37 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      *v37 = 136315394;
      sub_1004028E8(&qword_1005B3920, 255, &type metadata accessor for Device, &protocol conformance descriptor for Device);
      v60 = v31;
      v38 = dispatch thunk of CustomStringConvertible.description.getter();
      v40 = v39;
      (*(v35 + 8))(v34, v36);
      v41 = sub_10000D01C(v38, v40, &v64);

      *(v37 + 4) = v41;
      *(v37 + 12) = 2082;
      sub_1004028E8(&qword_1005A92C0, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v42 = dispatch thunk of CustomStringConvertible.description.getter();
      v44 = v43;
      v60(v32, v33);
      v45 = sub_10000D01C(v42, v44, &v64);

      *(v37 + 14) = v45;
      _os_log_impl(&_mh_execute_header, v28, loga, "Connected device: %s ID: %{public}s", v37, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      v31(v32, v33);
      (*(v35 + 8))(v34, v36);
    }

    v56 = swift_task_alloc();
    *(v1 + 328) = v56;
    *v56 = v1;
    v56[1] = sub_1003FB144;

    return daemon.getter();
  }

  else
  {
    v10(*(v1 + 264), *(v1 + 280), *(v1 + 192));
    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.default.getter();
    v48 = os_log_type_enabled(v46, v47);
    v49 = *(v1 + 264);
    v50 = *(v1 + 192);
    if (v48)
    {
      v63 = v22;
      v51 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      *v51 = 136446466;
      *(v51 + 4) = sub_10000D01C(0xD000000000000021, 0x80000001004E9F80, &v64);
      *(v51 + 12) = 2082;
      sub_1004028E8(&qword_1005A92C0, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v52 = dispatch thunk of CustomStringConvertible.description.getter();
      v54 = v53;
      v63(v49, v50);
      v55 = sub_10000D01C(v52, v54, &v64);

      *(v51 + 14) = v55;
      _os_log_impl(&_mh_execute_header, v46, v47, "%{public}s Checking if we should send to %{public}s", v51, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      v22(v49, v50);
    }

    v57 = *(v1 + 40);

    return _swift_task_switch(sub_1003FAADC, v57, 0);
  }
}

uint64_t sub_1003FAADC()
{
  *(v0 + 320) = sub_100401AFC(&qword_1005A8578, qword_1005B3798, sub_1003F60D0);

  return _swift_task_switch(sub_1003FAB64, 0, 0);
}

uint64_t sub_1003FAB64()
{
  v45 = v0;
  v1 = sub_10021B5B8(v0[35], v0[40]);

  v2 = v0[37];
  v3 = v0[35];
  v4 = v0[24];
  if (v1)
  {
    v2(v0[26], v0[35], v0[24]);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    v7 = os_log_type_enabled(v5, v6);
    v8 = v0[39];
    v9 = v0[35];
    v10 = v0[26];
    v11 = v0[24];
    if (v7)
    {
      v43 = v0[39];
      v12 = swift_slowAlloc();
      v41 = v9;
      v13 = swift_slowAlloc();
      v44 = v13;
      *v12 = 136446210;
      sub_1004028E8(&qword_1005A92C0, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v14 = dispatch thunk of CustomStringConvertible.description.getter();
      v16 = v15;
      v43(v10, v11);
      v17 = sub_10000D01C(v14, v16, &v44);

      *(v12 + 4) = v17;
      _os_log_impl(&_mh_execute_header, v5, v6, "Already sent owner token to %{public}s.", v12, 0xCu);
      sub_100004984(v13);

      v43(v41, v11);
    }

    else
    {

      v8(v10, v11);
      v8(v9, v11);
    }

    v37 = v0[1];

    return v37();
  }

  else
  {
    v18 = v0[32];
    (*(v0[22] + 16))(v0[23], v0[4], v0[21]);
    v2(v18, v3, v4);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();
    v21 = os_log_type_enabled(v19, v20);
    v22 = v0[39];
    v23 = v0[32];
    v24 = v0[24];
    v26 = v0[22];
    v25 = v0[23];
    v27 = v0[21];
    if (v21)
    {
      v42 = v20;
      v28 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      *v28 = 136315394;
      sub_1004028E8(&qword_1005B3920, 255, &type metadata accessor for Device, &protocol conformance descriptor for Device);
      v40 = v22;
      v29 = dispatch thunk of CustomStringConvertible.description.getter();
      v31 = v30;
      (*(v26 + 8))(v25, v27);
      v32 = sub_10000D01C(v29, v31, &v44);

      *(v28 + 4) = v32;
      *(v28 + 12) = 2082;
      sub_1004028E8(&qword_1005A92C0, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v33 = dispatch thunk of CustomStringConvertible.description.getter();
      v35 = v34;
      v40(v23, v24);
      v36 = sub_10000D01C(v33, v35, &v44);

      *(v28 + 14) = v36;
      _os_log_impl(&_mh_execute_header, v19, v42, "Connected device: %s ID: %{public}s", v28, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      v22(v23, v24);
      (*(v26 + 8))(v25, v27);
    }

    v39 = swift_task_alloc();
    v0[41] = v39;
    *v39 = v0;
    v39[1] = sub_1003FB144;

    return daemon.getter();
  }
}

uint64_t sub_1003FB144(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  v2[42] = a1;

  v3 = swift_task_alloc();
  v2[43] = v3;
  v4 = type metadata accessor for Daemon();
  v2[44] = v4;
  v5 = type metadata accessor for NITokenService(0);
  v2[45] = v5;
  v6 = sub_1004028E8(&unk_1005AFA50, 255, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v2[46] = v6;
  v7 = sub_1004028E8(&qword_1005AD548, 255, type metadata accessor for NITokenService, &unk_1004D8368);
  *v3 = v9;
  v3[1] = sub_1003FB33C;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_1003FB33C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v3[47] = a1;
  v3[48] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_1003FCCF0, 0, 0);
  }

  else
  {
    v5 = swift_task_alloc();
    v3[49] = v5;
    *v5 = v4;
    v5[1] = sub_1003FB4E0;
    v6 = v3[16];

    return sub_100437A14(v6);
  }
}

uint64_t sub_1003FB4E0()
{

  return _swift_task_switch(sub_1003FB5DC, 0, 0);
}

uint64_t sub_1003FB5DC()
{
  v58 = v0;
  v1 = *(v0 + 128);
  if ((*(*(v0 + 144) + 48))(v1, 1, *(v0 + 136)) == 1)
  {
    sub_100002CE0(v1, &qword_1005B1C88, &qword_1004D5E68);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.error.getter();
    v4 = os_log_type_enabled(v2, v3);
    v5 = *(v0 + 312);
    v6 = *(v0 + 280);
    v7 = *(v0 + 192);
    if (v4)
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v57[0] = v9;
      *v8 = 136446210;
      *(v8 + 4) = sub_10000D01C(0xD000000000000021, 0x80000001004E9F80, v57);
      _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s No owner token record!", v8, 0xCu);
      sub_100004984(v9);
    }

    v5(v6, v7);

    v10 = *(v0 + 8);
    goto LABEL_10;
  }

  v11 = *(v0 + 296);
  v12 = *(v0 + 280);
  v13 = *(v0 + 248);
  v14 = *(v0 + 192);
  sub_100401EBC(v1, *(v0 + 160));
  v11(v13, v12, v14);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  v17 = os_log_type_enabled(v15, v16);
  v18 = *(v0 + 312);
  v19 = *(v0 + 248);
  v20 = *(v0 + 192);
  if (v17)
  {
    v55 = *(v0 + 312);
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v57[0] = v22;
    *v21 = 136446210;
    sub_1004028E8(&qword_1005A92C0, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v23 = dispatch thunk of CustomStringConvertible.description.getter();
    v25 = v24;
    v55(v19, v20);
    v26 = sub_10000D01C(v23, v25, v57);

    *(v21 + 4) = v26;
    _os_log_impl(&_mh_execute_header, v15, v16, "Sending owner shared secret to local device %{public}s over IDS.", v21, 0xCu);
    sub_100004984(v22);
  }

  else
  {

    v18(v19, v20);
  }

  v27 = *(v0 + 296);
  v28 = *(v0 + 192);
  v29 = *(v0 + 152);
  v30 = *(v0 + 136);
  v31 = *(v0 + 112);
  v32 = *(v0 + 120);
  v33 = *(v0 + 104);
  v56 = *(v0 + 384);
  sub_100401F20(*(v0 + 160), v29, type metadata accessor for OwnerSharedSecretsRecord);
  v27(v32, v29, v28);
  *(v32 + v33[5]) = *(v29 + *(v30 + 20));
  v34 = *(v30 + 28);
  v35 = v33[6];
  v36 = type metadata accessor for Date();
  (*(*(v36 - 8) + 16))(v32 + v35, v29 + v34, v36);
  v37 = SharedSecretKey.data.getter();
  v39 = v38;
  sub_100401F88(v29, type metadata accessor for OwnerSharedSecretsRecord);
  v40 = (v32 + v33[7]);
  *v40 = v37;
  v40[1] = v39;
  *(v0 + 488) = 0;
  sub_100401F20(v32, v31, type metadata accessor for OwnerTokenEnvelopeV1);
  sub_1003B0678();
  sub_1004028E8(&qword_1005B3928, 255, type metadata accessor for OwnerTokenEnvelopeV1, &unk_1004D4900);
  sub_1004028E8(&qword_1005B3930, 255, type metadata accessor for OwnerTokenEnvelopeV1, &unk_1004D48D8);
  Message.init<A>(type:version:payload:)();
  if (v56)
  {
    v41 = *(v0 + 312);
    v42 = *(v0 + 280);
    v43 = *(v0 + 192);
    v44 = *(v0 + 160);
    v45 = *(v0 + 120);

    sub_100401F88(v45, type metadata accessor for OwnerTokenEnvelopeV1);
    sub_100401F88(v44, type metadata accessor for OwnerSharedSecretsRecord);
    v41(v42, v43);

    v10 = *(v0 + 8);
LABEL_10:

    return v10();
  }

  v47 = *(v0 + 192);
  v48 = *(v0 + 200);
  v49 = *(v0 + 48);
  sub_10004B564(&qword_1005A9270, &qword_1004C5810);
  type metadata accessor for Destination();
  *(swift_allocObject() + 16) = xmmword_1004C1900;
  Device.destination.getter();
  (*(v48 + 56))(v49, 1, 1, v47);
  sub_10004B564(&qword_1005AB930, &qword_1004C5818);
  v50 = type metadata accessor for MessagingCapability();
  v51 = *(v50 - 8);
  v52 = (*(v51 + 80) + 32) & ~*(v51 + 80);
  v53 = swift_allocObject();
  *(v53 + 16) = xmmword_1004C1900;
  (*(v51 + 104))(v53 + v52, enum case for MessagingCapability.supportsPeopleFindingV1(_:), v50);
  sub_10025EC18(v53);
  swift_setDeallocating();
  (*(v51 + 8))(v53 + v52, v50);
  swift_deallocClassInstance();
  sub_100293190(_swiftEmptyArrayStorage);
  MessagingOptions.init(destinations:expectsPeerResponse:responseIdentifier:timeToLive:fireAndForget:requiredCapabilities:lackingCapabilities:queueOneIdentifier:)();
  v54 = swift_task_alloc();
  *(v0 + 400) = v54;
  *v54 = v0;
  v54[1] = sub_1003FBF44;

  return daemon.getter();
}

uint64_t sub_1003FBF44(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v4 = *v1;
  *(v3 + 408) = a1;

  v5 = swift_task_alloc();
  *(v3 + 416) = v5;
  v6 = type metadata accessor for LocalMessagingService();
  v7 = sub_1004028E8(&qword_1005AD520, 255, type metadata accessor for LocalMessagingService, &unk_1004D5468);
  *v5 = v4;
  v5[1] = sub_1003FC0FC;
  v8 = *(v2 + 368);
  v9 = *(v2 + 352);

  return ActorServiceDaemon.getService<A>()(v9, v6, v8, v7);
}

uint64_t sub_1003FC0FC(uint64_t a1)
{
  v4 = *v2;
  *(v4 + 424) = a1;
  *(v4 + 432) = v1;

  if (v1)
  {
    v5 = sub_1003FCE68;
    v6 = 0;
  }

  else
  {
    v5 = sub_1003FC240;
    v6 = a1;
  }

  return _swift_task_switch(v5, v6, 0);
}

uint64_t sub_1003FC240()
{
  v1 = swift_task_alloc();
  v0[55] = v1;
  *v1 = v0;
  v1[1] = sub_1003FC2E8;
  v2 = v0[30];
  v3 = v0[12];
  v4 = v0[9];

  return LocalMessaging.send(message:messageOptions:)(v2, v3, v4);
}

uint64_t sub_1003FC2E8()
{
  v2 = *v1;
  *(*v1 + 448) = v0;

  if (v0)
  {
    v3 = sub_1003FC5F4;
  }

  else
  {
    v4 = v2[30];
    v5 = v2[24];
    v6 = v2[25];
    v7 = *(v6 + 8);
    v2[57] = v7;
    v2[58] = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v7(v4, v5);
    v3 = sub_1003FC420;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1003FC420()
{
  v16 = v0;
  (*(v0 + 296))(*(v0 + 232), *(v0 + 280), *(v0 + 192));
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 456);
  v5 = *(v0 + 232);
  v6 = *(v0 + 192);
  if (v3)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v15 = v8;
    *v7 = 136446210;
    sub_1004028E8(&qword_1005A92C0, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v9 = dispatch thunk of CustomStringConvertible.description.getter();
    v11 = v10;
    v4(v5, v6);
    v12 = sub_10000D01C(v9, v11, &v15);

    *(v7 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v1, v2, "Successfully sent owner shared secret over local IDS to device: %{public}s", v7, 0xCu);
    sub_100004984(v8);
  }

  else
  {

    v4(v5, v6);
  }

  v13 = *(v0 + 40);

  return _swift_task_switch(sub_1003FC804, v13, 0);
}

uint64_t sub_1003FC5F4()
{
  v1 = v0[25];
  v12 = v0[24];
  v13 = v0[35];
  v11 = v0[20];
  v2 = v0[15];
  v3 = v0[11];
  v4 = v0[12];
  v6 = v0[9];
  v5 = v0[10];
  v8 = v0[7];
  v7 = v0[8];

  (*(v7 + 8))(v6, v8);
  (*(v3 + 8))(v4, v5);
  sub_100401F88(v2, type metadata accessor for OwnerTokenEnvelopeV1);
  sub_100401F88(v11, type metadata accessor for OwnerSharedSecretsRecord);
  (*(v1 + 8))(v13, v12);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1003FC804()
{
  v1 = *(v0 + 456);
  v3 = *(v0 + 216);
  v2 = *(v0 + 224);
  v4 = *(v0 + 192);
  (*(v0 + 296))(v3, *(v0 + 280), v4);
  v6 = sub_100401AFC(&qword_1005A8578, qword_1005B3798, sub_1003F60D0);
  sub_10001CFF8(v2, v3);
  v1(v2, v4);
  sub_100401FE8(v6, &qword_1005A8578, qword_1005B3798, sub_1003F60D0);

  return _swift_task_switch(sub_1003FC908, 0, 0);
}

uint64_t sub_1003FC908()
{
  v1 = sub_100209E2C(_swiftEmptyArrayStorage);
  *(v0 + 472) = v1;
  v2 = swift_task_alloc();
  *(v0 + 480) = v2;
  *v2 = v0;
  v2[1] = sub_1003FC9D4;

  return sub_100402934(0xD00000000000003DLL, 0x80000001004E9FB0, 0, v1);
}

uint64_t sub_1003FC9D4()
{

  return _swift_task_switch(sub_1003FCAEC, 0, 0);
}

uint64_t sub_1003FCAEC()
{
  v13 = v0[57];
  v11 = v0[24];
  v12 = v0[35];
  v1 = v0[20];
  v2 = v0[15];
  v3 = v0[11];
  v4 = v0[12];
  v6 = v0[9];
  v5 = v0[10];
  v8 = v0[7];
  v7 = v0[8];

  (*(v7 + 8))(v6, v8);
  (*(v3 + 8))(v4, v5);
  sub_100401F88(v2, type metadata accessor for OwnerTokenEnvelopeV1);
  sub_100401F88(v1, type metadata accessor for OwnerSharedSecretsRecord);
  v13(v12, v11);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1003FCCF0()
{
  (*(v0 + 312))(*(v0 + 280), *(v0 + 192));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003FCE68()
{
  v1 = v0[25];
  v12 = v0[24];
  v13 = v0[35];
  v2 = v0[20];
  v3 = v0[15];
  v4 = v0[11];
  v5 = v0[12];
  v7 = v0[9];
  v6 = v0[10];
  v9 = v0[7];
  v8 = v0[8];

  (*(v8 + 8))(v7, v9);
  (*(v4 + 8))(v5, v6);
  sub_100401F88(v3, type metadata accessor for OwnerTokenEnvelopeV1);
  sub_100401F88(v2, type metadata accessor for OwnerSharedSecretsRecord);
  (*(v1 + 8))(v13, v12);

  v10 = v0[1];

  return v10();
}

uint64_t sub_1003FD068(uint64_t a1)
{
  v36 = *v1;
  v37 = v1;
  v3 = type metadata accessor for UUID();
  __chkstk_darwin(v3 - 8);
  v35 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Device();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v34 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v31 - v9;
  if (qword_1005A8560 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_10000A6F0(v11, qword_1005E0C80);
  v12 = *(v6 + 16);
  v12(v10, a1, v5);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v32 = v14;
    v16 = v15;
    v33 = swift_slowAlloc();
    v38 = v33;
    *v16 = 136446466;
    *(v16 + 4) = sub_10000D01C(0xD000000000000023, 0x80000001004EA160, &v38);
    *(v16 + 12) = 2080;
    sub_1004028E8(&qword_1005B3920, 255, &type metadata accessor for Device, &protocol conformance descriptor for Device);
    v31 = v13;
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v18 = v12;
    v19 = v7;
    v20 = a1;
    v22 = v21;
    (*(v6 + 8))(v10, v5);
    v23 = sub_10000D01C(v17, v22, &v38);
    a1 = v20;
    v7 = v19;
    v12 = v18;

    *(v16 + 14) = v23;
    v24 = v31;
    _os_log_impl(&_mh_execute_header, v31, v32, "%{public}s to: %s.", v16, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    (*(v6 + 8))(v10, v5);
  }

  v25 = v37;
  type metadata accessor for WorkItemQueue.WorkItem();
  v26 = v34;
  v12(v34, a1, v5);
  v27 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v28 = (v7 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
  v29 = swift_allocObject();
  (*(v6 + 32))(v29 + v27, v26, v5);
  *(v29 + v28) = v25;
  *(v29 + ((v28 + 15) & 0xFFFFFFFFFFFFFFF8)) = v36;

  UUID.init()();
  WorkItemQueue.WorkItem.__allocating_init(identifier:block:completion:)();
  dispatch thunk of WorkItemQueue.enqueue(_:)();
}

uint64_t sub_1003FD4CC(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = a2;
  sub_10004B564(&qword_1005A96E0, &qword_1004C2A80);
  v2[7] = swift_task_alloc();
  v3 = type metadata accessor for MessagingOptions();
  v2[8] = v3;
  v2[9] = *(v3 - 8);
  v2[10] = swift_task_alloc();
  v4 = sub_10004B564(&qword_1005B1888, &unk_1004D8870);
  v2[11] = v4;
  v2[12] = *(v4 - 8);
  v2[13] = swift_task_alloc();
  v5 = type metadata accessor for Device();
  v2[14] = v5;
  v2[15] = *(v5 - 8);
  v2[16] = swift_task_alloc();
  v6 = type metadata accessor for UUID();
  v2[17] = v6;
  v2[18] = *(v6 - 8);
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();

  return _swift_task_switch(sub_1003FD738, 0, 0);
}

uint64_t sub_1003FD738(uint64_t a1)
{
  v2 = v1[6];
  Device.uniqueIDOverride.getter();
  v3 = String.utf8Data.getter();
  v5 = v4;

  v1[2] = v3;
  v1[3] = v5;
  sub_1000CA210();
  DataProtocol.stableUUID.getter();
  sub_1000049D0(v3, v5);

  return _swift_task_switch(sub_1003FD7FC, v2, 0);
}

uint64_t sub_1003FD7FC()
{
  *(v0 + 216) = sub_100401AFC(&qword_1005A8580, qword_1005B37B0, sub_1003F6254);

  return _swift_task_switch(sub_1003FD884, 0, 0);
}

uint64_t sub_1003FD884()
{
  v80 = v0;
  v1 = sub_10021B5B8(*(v0 + 208), *(v0 + 216));

  if (v1)
  {
    if (qword_1005A8560 != -1)
    {
      swift_once();
    }

    v2 = *(v0 + 208);
    v4 = *(v0 + 144);
    v3 = *(v0 + 152);
    v5 = *(v0 + 136);
    v6 = type metadata accessor for Logger();
    sub_10000A6F0(v6, qword_1005E0C80);
    (*(v4 + 16))(v3, v2, v5);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    v9 = os_log_type_enabled(v7, v8);
    v10 = *(v0 + 208);
    v12 = *(v0 + 144);
    v11 = *(v0 + 152);
    v13 = *(v0 + 136);
    if (v9)
    {
      v76 = *(v0 + 208);
      v14 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      v79[0] = v75;
      *v14 = 136446210;
      sub_1004028E8(&qword_1005A92C0, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v15 = dispatch thunk of CustomStringConvertible.description.getter();
      v17 = v16;
      v18 = *(v12 + 8);
      v18(v11, v13);
      v19 = sub_10000D01C(v15, v17, v79);

      *(v14 + 4) = v19;
      _os_log_impl(&_mh_execute_header, v7, v8, "Already sent finding capability to %{public}s.", v14, 0xCu);
      sub_100004984(v75);

      v18(v76, v13);
    }

    else
    {

      v48 = *(v12 + 8);
      v48(v11, v13);
      v48(v10, v13);
    }

    v70 = *(v0 + 8);

    return v70();
  }

  else
  {
    if (qword_1005A8560 != -1)
    {
      swift_once();
    }

    v21 = *(v0 + 200);
    v20 = *(v0 + 208);
    v22 = *(v0 + 136);
    v23 = *(v0 + 144);
    v24 = *(v0 + 120);
    v25 = *(v0 + 128);
    v26 = *(v0 + 112);
    v27 = *(v0 + 40);
    v28 = type metadata accessor for Logger();
    *(v0 + 224) = sub_10000A6F0(v28, qword_1005E0C80);
    (*(v24 + 16))(v25, v27, v26);
    v29 = *(v23 + 16);
    *(v0 + 232) = v29;
    *(v0 + 240) = (v23 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v29(v21, v20, v22);
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.default.getter();
    v32 = os_log_type_enabled(v30, v31);
    v77 = *(v0 + 200);
    v34 = *(v0 + 136);
    v33 = *(v0 + 144);
    v36 = *(v0 + 120);
    v35 = *(v0 + 128);
    v37 = *(v0 + 112);
    if (v32)
    {
      log = v30;
      v38 = swift_slowAlloc();
      v79[0] = swift_slowAlloc();
      *v38 = 136315394;
      sub_1004028E8(&qword_1005B3920, 255, &type metadata accessor for Device, &protocol conformance descriptor for Device);
      v72 = v31;
      v39 = dispatch thunk of CustomStringConvertible.description.getter();
      v74 = v29;
      v41 = v40;
      (*(v36 + 8))(v35, v37);
      v42 = sub_10000D01C(v39, v41, v79);

      *(v38 + 4) = v42;
      *(v38 + 12) = 2082;
      sub_1004028E8(&qword_1005A92C0, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v43 = v77;
      v44 = dispatch thunk of CustomStringConvertible.description.getter();
      v46 = v45;
      v78 = *(v33 + 8);
      v78(v43, v34);
      v47 = sub_10000D01C(v44, v46, v79);
      v29 = v74;

      *(v38 + 14) = v47;
      _os_log_impl(&_mh_execute_header, log, v72, "Connected device: %s ID: %{public}s", v38, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      v49 = v77;
      v78 = *(v33 + 8);
      v78(v49, v34);
      (*(v36 + 8))(v35, v37);
    }

    v29(*(v0 + 192), *(v0 + 208), *(v0 + 136));
    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.default.getter();
    v52 = os_log_type_enabled(v50, v51);
    v53 = *(v0 + 192);
    v54 = *(v0 + 136);
    if (v52)
    {
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v79[0] = v56;
      *v55 = 136446210;
      sub_1004028E8(&qword_1005A92C0, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v57 = dispatch thunk of CustomStringConvertible.description.getter();
      v59 = v58;
      v78(v53, v54);
      v60 = sub_10000D01C(v57, v59, v79);

      *(v55 + 4) = v60;
      _os_log_impl(&_mh_execute_header, v50, v51, "Sending finding capability to local device %{public}s over IDS.", v55, 0xCu);
      sub_100004984(v56);
    }

    else
    {

      v78(v53, v54);
    }

    v61 = sub_1003F399C();
    *(v0 + 320) = 2;
    *(v0 + 321) = v61 & 1;
    sub_1003B0678();
    sub_1004027A4();
    sub_1004027F8();
    Message.init<A>(type:version:payload:)();
    v62 = *(v0 + 136);
    v63 = *(v0 + 144);
    v64 = *(v0 + 56);
    sub_10004B564(&qword_1005A9270, &qword_1004C5810);
    type metadata accessor for Destination();
    *(swift_allocObject() + 16) = xmmword_1004C1900;
    Device.destination.getter();
    (*(v63 + 56))(v64, 1, 1, v62);
    sub_10004B564(&qword_1005AB930, &qword_1004C5818);
    v65 = type metadata accessor for MessagingCapability();
    v66 = *(v65 - 8);
    v67 = (*(v66 + 80) + 32) & ~*(v66 + 80);
    v68 = swift_allocObject();
    *(v68 + 16) = xmmword_1004C1900;
    (*(v66 + 104))(v68 + v67, enum case for MessagingCapability.supportsPeopleFindingV1(_:), v65);
    sub_10025EC18(v68);
    swift_setDeallocating();
    (*(v66 + 8))(v68 + v67, v65);
    swift_deallocClassInstance();
    sub_100293190(_swiftEmptyArrayStorage);
    MessagingOptions.init(destinations:expectsPeerResponse:responseIdentifier:timeToLive:fireAndForget:requiredCapabilities:lackingCapabilities:queueOneIdentifier:)();
    v69 = swift_task_alloc();
    *(v0 + 248) = v69;
    *v69 = v0;
    v69[1] = sub_1003FE414;

    return daemon.getter();
  }
}

uint64_t sub_1003FE414(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 256) = a1;

  v3 = swift_task_alloc();
  *(v2 + 264) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for LocalMessagingService();
  v6 = sub_1004028E8(&unk_1005AFA50, 255, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_1004028E8(&qword_1005AD520, 255, type metadata accessor for LocalMessagingService, &unk_1004D5468);
  *v3 = v9;
  v3[1] = sub_1003FE5F8;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_1003FE5F8(uint64_t a1)
{
  v4 = *v2;
  *(v4 + 272) = a1;
  *(v4 + 280) = v1;

  if (v1)
  {
    v5 = sub_1003FF010;
    v6 = 0;
  }

  else
  {
    v5 = sub_1003FE73C;
    v6 = a1;
  }

  return _swift_task_switch(v5, v6, 0);
}

uint64_t sub_1003FE73C()
{
  v1 = swift_task_alloc();
  v0[36] = v1;
  *v1 = v0;
  v1[1] = sub_1003FE7E4;
  v2 = v0[23];
  v3 = v0[13];
  v4 = v0[10];

  return LocalMessaging.send(message:messageOptions:)(v2, v3, v4);
}

uint64_t sub_1003FE7E4()
{
  v2 = *v1;
  *(*v1 + 296) = v0;

  if (v0)
  {
    v3 = sub_1003FEAF4;
  }

  else
  {
    v4 = v2[23];
    v5 = v2[17];
    v6 = v2[18];
    v7 = *(v6 + 8);
    v2[38] = v7;
    v2[39] = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v7(v4, v5);
    v3 = sub_1003FE91C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1003FE91C()
{
  v16 = v0;
  (*(v0 + 232))(*(v0 + 176), *(v0 + 208), *(v0 + 136));
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 304);
  v5 = *(v0 + 176);
  v6 = *(v0 + 136);
  if (v3)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v15 = v8;
    *v7 = 136446210;
    sub_1004028E8(&qword_1005A92C0, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v9 = dispatch thunk of CustomStringConvertible.description.getter();
    v11 = v10;
    v4(v5, v6);
    v12 = sub_10000D01C(v9, v11, &v15);

    *(v7 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v1, v2, "Successfully sent finding capability over local IDS to device: %{public}s", v7, 0xCu);
    sub_100004984(v8);
  }

  else
  {

    v4(v5, v6);
  }

  v13 = *(v0 + 48);

  return _swift_task_switch(sub_1003FEDAC, v13, 0);
}

uint64_t sub_1003FEAF4()
{
  v20 = v0;
  v1 = v0[26];
  v2 = v0[17];
  v3 = v0[18];
  v5 = v0[12];
  v4 = v0[13];
  v7 = v0[10];
  v6 = v0[11];
  v8 = v0[8];
  v9 = v0[9];

  (*(v9 + 8))(v7, v8);
  (*(v5 + 8))(v4, v6);
  (*(v3 + 8))(v1, v2);
  v10 = v0[37];
  swift_errorRetain();
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *v13 = 136446466;
    *(v13 + 4) = sub_10000D01C(0xD000000000000023, 0x80000001004EA160, &v19);
    *(v13 + 12) = 2082;
    v0[4] = v10;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v14 = String.init<A>(describing:)();
    v16 = sub_10000D01C(v14, v15, &v19);

    *(v13 + 14) = v16;
    _os_log_impl(&_mh_execute_header, v11, v12, "%{public}s error: %{public}s", v13, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v17 = v0[1];

  return v17();
}

uint64_t sub_1003FEDAC()
{
  v1 = *(v0 + 304);
  v3 = *(v0 + 160);
  v2 = *(v0 + 168);
  v4 = *(v0 + 136);
  (*(v0 + 232))(v3, *(v0 + 208), v4);
  v6 = sub_100401AFC(&qword_1005A8580, qword_1005B37B0, sub_1003F6254);
  sub_10001CFF8(v2, v3);
  v1(v2, v4);
  sub_100401FE8(v6, &qword_1005A8580, qword_1005B37B0, sub_1003F6254);

  return _swift_task_switch(sub_1003FEEB0, 0, 0);
}

uint64_t sub_1003FEEB0()
{
  v1 = v0[38];
  v2 = v0[26];
  v3 = v0[17];
  v5 = v0[12];
  v4 = v0[13];
  v7 = v0[10];
  v6 = v0[11];
  v8 = v0[8];
  v9 = v0[9];

  (*(v9 + 8))(v7, v8);
  (*(v5 + 8))(v4, v6);
  v1(v2, v3);

  v10 = v0[1];

  return v10();
}

uint64_t sub_1003FF010()
{
  v17 = v0;
  v1 = v0[26];
  v2 = v0[17];
  v3 = v0[18];
  v5 = v0[12];
  v4 = v0[13];
  v6 = v0[11];
  (*(v0[9] + 8))(v0[10], v0[8]);
  (*(v5 + 8))(v4, v6);
  (*(v3 + 8))(v1, v2);
  v7 = v0[35];
  swift_errorRetain();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v10 = 136446466;
    *(v10 + 4) = sub_10000D01C(0xD000000000000023, 0x80000001004EA160, &v16);
    *(v10 + 12) = 2082;
    v0[4] = v7;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v11 = String.init<A>(describing:)();
    v13 = sub_10000D01C(v11, v12, &v16);

    *(v10 + 14) = v13;
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s error: %{public}s", v10, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v14 = v0[1];

  return v14();
}

uint64_t sub_1003FF2B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_10000368C;

  return sub_1003F7C38(a1, a2, a3);
}

uint64_t sub_1003FF368(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = swift_task_alloc();
  *(v5 + 16) = v9;
  *v9 = v5;
  v9[1] = sub_10000368C;

  return sub_100400C6C(a1, a2, a3);
}

uint64_t sub_1003FF43C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10000368C;

  return sub_1003F8FF8(a1);
}

uint64_t sub_1003FF4D4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100003690;

  return sub_1003F9234(a1);
}

uint64_t sub_1003FF56C(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return _swift_task_switch(sub_1003FF58C, v3, 0);
}

uint64_t sub_1003FF58C()
{
  sub_1003F9490(*(v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003FF67C()
{
  v0 = type metadata accessor for Logger();
  sub_10004F154(v0, qword_1005E0CB0);
  sub_10000A6F0(v0, qword_1005E0CB0);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1003FF6FC()
{
  v2 = *(type metadata accessor for Device() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = v3 + *(v2 + 64);
  v5 = *(v0 + v4);
  v6 = *(v0 + (v4 & 0xFFFFFFFFFFFFFFF8) + 8);
  v7 = *(v0 + (((v4 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8));
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_100003690;

  return sub_1003F9C84(v0 + v3, v5, v6, v7);
}

uint64_t sub_1003FF820(uint64_t a1, char a2)
{
  *(v2 + 25) = a2;
  *(v2 + 32) = a1;
  return _swift_task_switch(sub_1003FF844, 0, 0);
}

uint64_t sub_1003FF844()
{
  v19 = v0;
  if (qword_1005A8560 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 32);
  v2 = *(v0 + 25);
  v3 = type metadata accessor for Logger();
  sub_10000A6F0(v3, qword_1005E0C80);
  sub_10037DB5C(v1, v2 & 1);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  sub_1002BC5B4(v1, v2 & 1);
  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 32);
    v7 = *(v0 + 25);
    v8 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v8 = 136446466;
    *(v8 + 4) = sub_10000D01C(0xD000000000000021, 0x80000001004E9F80, &v18);
    *(v8 + 12) = 2082;
    *(v0 + 16) = v6;
    *(v0 + 24) = v7 & 1;
    sub_10037DB5C(v6, v7 & 1);
    sub_10004B564(&qword_1005A8800, &qword_1004C0EC0);
    v9 = String.init<A>(describing:)();
    v11 = sub_10000D01C(v9, v10, &v18);

    *(v8 + 14) = v11;
    _os_log_impl(&_mh_execute_header, v4, v5, "%{public}s completed with %{public}s", v8, 0x16u);
    swift_arrayDestroy();
  }

  if (*(v0 + 25))
  {
    v12 = *(v0 + 32);
    type metadata accessor for NITokenService(0);
    sub_10037DB5C(v12, 1);
    sub_10037DB5C(v12, 1);
    v13 = sub_100209E2C(_swiftEmptyArrayStorage);
    *(v0 + 40) = v13;
    v14 = swift_task_alloc();
    *(v0 + 48) = v14;
    *v14 = v0;
    v14[1] = sub_1003FFB30;
    v15 = *(v0 + 32);

    return sub_100402934(0xD00000000000003DLL, 0x80000001004E9FB0, v15, v13);
  }

  else
  {
    v17 = *(v0 + 8);

    return v17();
  }
}

uint64_t sub_1003FFB30()
{
  v1 = *(*v0 + 32);

  sub_1002BC5B4(v1, 1);

  return _swift_task_switch(sub_1003FFC68, 0, 0);
}

uint64_t sub_1003FFC68()
{
  sub_1002BC5B4(*(v0 + 32), 1);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003FFCCC()
{
  v1 = type metadata accessor for Device();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (v4 + *(v2 + 64)) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, ((v5 + 23) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_1003FFD70(uint64_t a1)
{
  v4 = *(type metadata accessor for Device() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = v5 + *(v4 + 64);
  v7 = *(v1 + v6);
  v8 = *(v1 + (v6 & 0xFFFFFFFFFFFFFFF8) + 8);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10000368C;

  return sub_1003F9FF4(a1, v1 + v5, v7, v8);
}

uint64_t sub_1003FFE9C(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = type metadata accessor for Destination();
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();
  sub_10004B564(&qword_1005B29F0, &qword_1004D8830);
  v2[12] = swift_task_alloc();
  v4 = type metadata accessor for Device();
  v2[13] = v4;
  v2[14] = *(v4 - 8);
  v2[15] = swift_task_alloc();

  return _swift_task_switch(sub_1003FFFF0, v1, 0);
}

uint64_t sub_1003FFFF0()
{
  v20 = v0;
  if (qword_1005A8560 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[16] = sub_10000A6F0(v1, qword_1005E0C80);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v19 = v5;
    *v4 = 141558275;
    *(v4 + 4) = 1752392040;
    *(v4 + 12) = 2081;
    *(v4 + 14) = sub_10000D01C(0xD00000000000001BLL, 0x80000001004EA100, &v19);
    _os_log_impl(&_mh_execute_header, v2, v3, "Extracted OwnerTokenEnvelopeRequestV1: %{private,mask.hash}s", v4, 0x16u);
    sub_100004984(v5);
  }

  My = type metadata accessor for Feature.FindMy();
  v0[5] = My;
  v0[6] = sub_1004028E8(&qword_1005A9EE8, 255, &type metadata accessor for Feature.FindMy, &protocol conformance descriptor for Feature.FindMy);
  v7 = sub_10000331C(v0 + 2);
  (*(*(My - 8) + 104))(v7, enum case for Feature.FindMy.redStripe(_:), My);
  v8 = isFeatureEnabled(_:)();
  sub_100004984(v0 + 2);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  v11 = os_log_type_enabled(v9, v10);
  if (v8)
  {
    if (v11)
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v19 = v13;
      *v12 = 136446210;
      *(v12 + 4) = sub_10000D01C(0xD000000000000029, 0x80000001004EA0D0, &v19);
      _os_log_impl(&_mh_execute_header, v9, v10, "%{public}s Watch requested owner token. Sending now.", v12, 0xCu);
      sub_100004984(v13);
    }

    v14 = swift_task_alloc();
    v0[17] = v14;
    *v14 = v0;
    v14[1] = sub_10040042C;

    return daemon.getter();
  }

  else
  {
    if (v11)
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v19 = v16;
      *v15 = 136446210;
      *(v15 + 4) = sub_10000D01C(0xD000000000000029, 0x80000001004EA0D0, &v19);
      _os_log_impl(&_mh_execute_header, v9, v10, "%{public}s Feature.FindMy.redStripe FF disabled.", v15, 0xCu);
      sub_100004984(v16);
    }

    v17 = v0[1];

    return v17();
  }
}

uint64_t sub_10040042C(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 144) = a1;

  v3 = swift_task_alloc();
  *(v2 + 152) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for LocalMessagingService();
  v6 = sub_1004028E8(&unk_1005AFA50, 255, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_1004028E8(&qword_1005AD520, 255, type metadata accessor for LocalMessagingService, &unk_1004D5468);
  *v3 = v9;
  v3[1] = sub_100400610;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_100400610(uint64_t a1)
{
  v3 = *v2;
  v3[20] = a1;
  v3[21] = v1;

  if (v1)
  {
    v4 = v3[8];
    v5 = sub_100400BE0;
  }

  else
  {
    v6 = v3[8];

    v5 = sub_100400738;
    v4 = v6;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_100400738(uint64_t a1)
{
  v2 = v1[20];
  v1[22] = Destination.destination.getter();
  v1[23] = v3;

  return _swift_task_switch(sub_1004007A8, v2, 0);
}

uint64_t sub_1004007A8()
{
  *(v0 + 192) = *(*(v0 + 160) + 128);
  sub_10004B564(&qword_1005AD518, &qword_1004D54F0);
  sub_10001DF0C(&qword_1005B1880, &qword_1005AD518, &qword_1004D54F0, &protocol conformance descriptor for LocalMessaging<A>);
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100400878, v2, v1);
}

uint64_t sub_100400878()
{
  v1 = *(v0 + 64);
  dispatch thunk of LocalMessaging.device(fromID:)();

  return _swift_task_switch(sub_100400900, v1, 0);
}

uint64_t sub_100400900()
{
  v24 = v0;
  v1 = v0[13];
  v2 = v0[14];
  v3 = v0[12];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v5 = v0[10];
    v4 = v0[11];
    v6 = v0[9];
    v7 = v0[7];
    sub_100002CE0(v3, &qword_1005B29F0, &qword_1004D8830);
    (*(v5 + 16))(v4, v7, v6);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    v10 = os_log_type_enabled(v8, v9);
    v12 = v0[10];
    v11 = v0[11];
    v13 = v0[9];
    if (v10)
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v23 = v15;
      *v14 = 141558275;
      *(v14 + 4) = 1752392040;
      *(v14 + 12) = 2081;
      sub_1004028E8(&qword_1005A9260, 255, &type metadata accessor for Destination, &protocol conformance descriptor for Destination);
      v16 = dispatch thunk of CustomStringConvertible.description.getter();
      v18 = v17;
      (*(v12 + 8))(v11, v13);
      v19 = sub_10000D01C(v16, v18, &v23);

      *(v14 + 14) = v19;
      _os_log_impl(&_mh_execute_header, v8, v9, "No IDSDevice for %{private,mask.hash}s!", v14, 0x16u);
      sub_100004984(v15);
    }

    else
    {

      (*(v12 + 8))(v11, v13);
    }
  }

  else
  {
    v20 = v0[15];
    (*(v2 + 32))(v20, v3, v1);
    sub_1003F97F4(v20, 1);

    (*(v2 + 8))(v20, v1);
  }

  v21 = v0[1];

  return v21();
}

uint64_t sub_100400BE0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100400C6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_10004B564(&qword_1005B1888, &unk_1004D8870);
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  v6 = type metadata accessor for Destination();
  v4[9] = v6;
  v4[10] = *(v6 - 8);
  v4[11] = swift_task_alloc();
  v7 = type metadata accessor for Account();
  v4[12] = v7;
  v4[13] = *(v7 - 8);
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();

  return _swift_task_switch(sub_100400E00, v3, 0);
}

uint64_t sub_100400E00()
{
  v59 = v0;
  if (qword_1005A8560 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 120);
  v2 = *(v0 + 96);
  v3 = *(v0 + 104);
  v4 = *(v0 + 80);
  v5 = *(v0 + 72);
  v6 = *(v0 + 56);
  v55 = *(v0 + 48);
  v57 = *(v0 + 64);
  v7 = *(v0 + 24);
  v51 = *(v0 + 88);
  v53 = *(v0 + 32);
  v8 = *(v0 + 16);
  v9 = type metadata accessor for Logger();
  *(v0 + 128) = sub_10000A6F0(v9, qword_1005E0C80);
  v10 = v1;
  v11 = *(v3 + 16);
  v11(v10, v8, v2);
  (*(v4 + 16))(v51, v7, v5);
  (*(v6 + 16))(v57, v53, v55);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  v14 = os_log_type_enabled(v12, v13);
  v15 = *(v0 + 120);
  if (v14)
  {
    v49 = v13;
    v16 = *(v0 + 104);
    v17 = *(v0 + 112);
    v18 = *(v0 + 96);
    v19 = *(v0 + 80);
    v48 = *(v0 + 72);
    v54 = *(v0 + 64);
    v56 = *(v0 + 56);
    v50 = *(v0 + 88);
    v52 = *(v0 + 48);
    v20 = swift_slowAlloc();
    v58[0] = swift_slowAlloc();
    *v20 = 136447747;
    *(v20 + 4) = sub_10000D01C(0xD00000000000003ELL, 0x80000001004DEC60, v58);
    *(v20 + 12) = 2160;
    *(v20 + 14) = 1752392040;
    *(v20 + 22) = 2081;
    v11(v17, v15, v18);
    v21 = String.init<A>(describing:)();
    v23 = v22;
    (*(v16 + 8))(v15, v18);
    v24 = sub_10000D01C(v21, v23, v58);

    *(v20 + 24) = v24;
    *(v20 + 32) = 2160;
    *(v20 + 34) = 1752392040;
    *(v20 + 42) = 2081;
    sub_1004028E8(&qword_1005A9260, 255, &type metadata accessor for Destination, &protocol conformance descriptor for Destination);
    v25 = dispatch thunk of CustomStringConvertible.description.getter();
    v27 = v26;
    (*(v19 + 8))(v50, v48);
    v28 = sub_10000D01C(v25, v27, v58);

    *(v20 + 44) = v28;
    *(v20 + 52) = 2160;
    *(v20 + 54) = 1752392040;
    *(v20 + 62) = 2081;
    sub_10001DF0C(&qword_1005B3968, &qword_1005B1888, &unk_1004D8870, &protocol conformance descriptor for Message<A>);
    v29 = dispatch thunk of CustomStringConvertible.description.getter();
    v31 = v30;
    (*(v56 + 8))(v54, v52);
    v32 = sub_10000D01C(v29, v31, v58);

    *(v20 + 64) = v32;
    _os_log_impl(&_mh_execute_header, v12, v49, "Local IDS %{public}s\naccount: %{private,mask.hash}s\ndestination %{private,mask.hash}s\nmessage: %{private,mask.hash}s", v20, 0x48u);
    swift_arrayDestroy();
  }

  else
  {
    v33 = *(v0 + 96);
    v34 = *(v0 + 104);
    v36 = *(v0 + 80);
    v35 = *(v0 + 88);
    v38 = *(v0 + 64);
    v37 = *(v0 + 72);
    v39 = v12;
    v41 = *(v0 + 48);
    v40 = *(v0 + 56);

    (*(v40 + 8))(v38, v41);
    (*(v36 + 8))(v35, v37);
    (*(v34 + 8))(v15, v33);
  }

  Message.type.getter();
  if (*(v0 + 168) <= 1u)
  {
    if (*(v0 + 168))
    {
      sub_100402594();
      sub_1004025E8();
      Message.extract<A>()();
      v42 = swift_task_alloc();
      *(v0 + 136) = v42;
      *v42 = v0;
      v42[1] = sub_100401514;
      v43 = *(v0 + 24);

      return sub_1003FFE9C(v43);
    }

    goto LABEL_13;
  }

  if (*(v0 + 168) == 2)
  {
LABEL_13:

    v45 = *(v0 + 8);

    return v45();
  }

  sub_1004024EC();
  sub_100402540();
  Message.extract<A>()();
  v46 = swift_task_alloc();
  *(v0 + 152) = v46;
  *v46 = v0;
  v46[1] = sub_10040184C;
  v47 = *(v0 + 24);

  return sub_1003F821C(v47);
}

uint64_t sub_100401514()
{
  v2 = *v1;
  *(*v1 + 144) = v0;

  v3 = *(v2 + 40);
  if (v0)
  {
    v4 = sub_1004016C8;
  }

  else
  {
    v4 = sub_100401640;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100401640()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1004016C8()
{
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138543362;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v1, v2, "messageReceived handler error: %{public}@", v3, 0xCu);
    sub_100002CE0(v4, &qword_1005A9670, &unk_1004C2480);
  }

  else
  {
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_10040184C()
{
  v2 = *v1;
  *(*v1 + 160) = v0;

  v3 = *(v2 + 40);
  if (v0)
  {
    v4 = sub_100401978;
  }

  else
  {
    v4 = sub_100402930;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100401978()
{
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138543362;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v1, v2, "messageReceived handler error: %{public}@", v3, 0xCu);
    sub_100002CE0(v4, &qword_1005A9670, &unk_1004C2480);
  }

  else
  {
  }

  v6 = *(v0 + 8);

  return v6();
}

void *sub_100401AFC(char **a1, uint64_t a2, char *a3)
{
  v5 = sub_10004B564(&qword_1005A96E0, &qword_1004C2A80);
  __chkstk_darwin(v5 - 8);
  v7 = &v23 - v6;
  v8 = type metadata accessor for UUID();
  v24 = *(v8 - 8);
  __chkstk_darwin(v8);
  v26 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10004B564(&qword_1005B3938, &unk_1004D8880);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v23 - v12;
  if (*a1 != -1)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v14 = sub_10000A6F0(v10, a2);
    swift_beginAccess();
    (*(v11 + 16))(v13, v14, v10);
    ManagedDefault.wrappedValue.getter();
    (*(v11 + 8))(v13, v10);
    a2 = v27;
    if (!v27)
    {
      return &_swiftEmptySetSingleton;
    }

    v25 = *(v27 + 16);
    if (!v25)
    {
      break;
    }

    v10 = 0;
    v11 = v24 + 48;
    v15 = (v24 + 32);
    v16 = (v27 + 40);
    v17 = _swiftEmptyArrayStorage;
    v23 = v27;
    while (v10 < *(a2 + 16))
    {
      v13 = *v16;

      UUID.init(uuidString:)();

      if ((*v11)(v7, 1, v8) == 1)
      {
        sub_100002CE0(v7, &qword_1005A96E0, &qword_1004C2A80);
      }

      else
      {
        v18 = *v15;
        (*v15)(v26, v7, v8);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v17 = sub_1001FD1A0(0, *(v17 + 2) + 1, 1, v17);
        }

        v20 = *(v17 + 2);
        v19 = *(v17 + 3);
        v13 = (v20 + 1);
        if (v20 >= v19 >> 1)
        {
          v17 = sub_1001FD1A0((v19 > 1), v20 + 1, 1, v17);
        }

        *(v17 + 2) = v13;
        v18(&v17[((*(v24 + 80) + 32) & ~*(v24 + 80)) + *(v24 + 72) * v20], v26, v8);
        a2 = v23;
      }

      ++v10;
      v16 += 2;
      if (v25 == v10)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_19:
    swift_once();
  }

  v17 = _swiftEmptyArrayStorage;
LABEL_16:

  v21 = sub_10023F15C(v17);

  return v21;
}

uint64_t sub_100401EBC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OwnerSharedSecretsRecord(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100401F20(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100401F88(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100401FE8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v37 = type metadata accessor for UUID();
  v8 = *(v37 - 8);
  __chkstk_darwin(v37);
  v36 = v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 16);
  if (v10)
  {
    v11 = sub_10022BD1C(*(a1 + 16), 0);
    v12 = sub_10023EA90(&v39, &v11[(*(v8 + 80) + 32) & ~*(v8 + 80)], v10, a1);
    sub_10000E3F8(v39);
    if (v12 == v10)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v11 = _swiftEmptyArrayStorage;
LABEL_5:
  v31[0] = a4;
  v13 = *(v11 + 2);
  if (v13)
  {
    v32 = a2;
    v33 = a3;
    v39 = _swiftEmptyArrayStorage;
    sub_10002B3C0(0, v13, 0);
    v14 = v39;
    v16 = *(v8 + 16);
    v15 = v8 + 16;
    v17 = *(v15 + 64);
    v31[1] = v11;
    v18 = &v11[(v17 + 32) & ~v17];
    v34 = *(v15 + 56);
    v35 = v16;
    v19 = (v15 - 8);
    do
    {
      v21 = v36;
      v20 = v37;
      v22 = v15;
      v35(v36, v18, v37);
      v23 = UUID.uuidString.getter();
      v25 = v24;
      (*v19)(v21, v20);
      v39 = v14;
      v27 = v14[2];
      v26 = v14[3];
      if (v27 >= v26 >> 1)
      {
        sub_10002B3C0((v26 > 1), v27 + 1, 1);
        v14 = v39;
      }

      v14[2] = v27 + 1;
      v28 = &v14[2 * v27];
      v28[4] = v23;
      v28[5] = v25;
      v18 += v34;
      --v13;
      v15 = v22;
    }

    while (v13);

    a2 = v32;
    a3 = v33;
  }

  else
  {

    v14 = _swiftEmptyArrayStorage;
  }

  if (*a2 != -1)
  {
    swift_once();
  }

  v29 = sub_10004B564(&qword_1005B3938, &unk_1004D8880);
  sub_10000A6F0(v29, a3);
  v38 = v14;
  swift_beginAccess();
  ManagedDefault.wrappedValue.setter();
  return swift_endAccess();
}

unint64_t sub_1004022A0()
{
  result = qword_1005B3940;
  if (!qword_1005B3940)
  {
    sub_10004B610(&qword_1005A9630, &qword_1004C5680);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B3940);
  }

  return result;
}

uint64_t sub_10040231C()
{
  if (qword_1005A8560 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10000A6F0(v0, qword_1005E0C80);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v6 = v4;
    *v3 = 136446210;
    *(v3 + 4) = sub_10000D01C(0xD000000000000014, 0x80000001004EA010, &v6);
    _os_log_impl(&_mh_execute_header, v1, v2, "%{public}s", v3, 0xCu);
    sub_100004984(v4);
  }

  sub_100401AFC(&qword_1005A8578, qword_1005B3798, sub_1003F60D0);

  sub_100401FE8(&_swiftEmptySetSingleton, &qword_1005A8578, qword_1005B3798, sub_1003F60D0);
  sub_100401AFC(&qword_1005A8580, qword_1005B37B0, sub_1003F6254);

  return sub_100401FE8(&_swiftEmptySetSingleton, &qword_1005A8580, qword_1005B37B0, sub_1003F6254);
}

unint64_t sub_1004024EC()
{
  result = qword_1005B3948;
  if (!qword_1005B3948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B3948);
  }

  return result;
}

unint64_t sub_100402540()
{
  result = qword_1005B3950;
  if (!qword_1005B3950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B3950);
  }

  return result;
}

unint64_t sub_100402594()
{
  result = qword_1005B3958;
  if (!qword_1005B3958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B3958);
  }

  return result;
}

unint64_t sub_1004025E8()
{
  result = qword_1005B3960;
  if (!qword_1005B3960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B3960);
  }

  return result;
}

unint64_t sub_10040263C()
{
  result = qword_1005B3970;
  if (!qword_1005B3970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B3970);
  }

  return result;
}

uint64_t sub_100402690()
{
  v2 = *(type metadata accessor for Device() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10000368C;

  return sub_1003FD4CC(v0 + v3, v4);
}

unint64_t sub_1004027A4()
{
  result = qword_1005B3978;
  if (!qword_1005B3978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B3978);
  }

  return result;
}

unint64_t sub_1004027F8()
{
  result = qword_1005B3980;
  if (!qword_1005B3980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B3980);
  }

  return result;
}

uint64_t sub_10040284C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000368C;

  return sub_1003F6DC8();
}

uint64_t sub_1004028E8(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_100402934(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[6] = a4;
  v5[7] = v4;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  sub_10004B564(&qword_1005A9690, &qword_1004C2A00);
  v5[8] = swift_task_alloc();

  return _swift_task_switch(sub_1004029D8, 0, 0);
}

uint64_t sub_1004029D8()
{
  v21 = v0;
  if (qword_1005A8530 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000A6F0(v1, qword_1005E0C30);

  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 32);
    v5 = *(v0 + 40);
    v6 = *(v0 + 24);
    v7 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *v7 = 136446722;
    *(v7 + 4) = sub_10000D01C(0xD000000000000030, 0x80000001004EA1C0, &v20);
    *(v7 + 12) = 2082;
    *(v7 + 14) = sub_10000D01C(v6, v4, &v20);
    *(v7 + 22) = 2080;
    *(v0 + 16) = v5;
    swift_errorRetain();
    sub_10004B564(&qword_1005A9E10, &qword_1004D6790);
    v8 = String.init<A>(describing:)();
    v10 = sub_10000D01C(v8, v9, &v20);

    *(v7 + 24) = v10;
    _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s %{public}s %s", v7, 0x20u);
    swift_arrayDestroy();
  }

  v11 = *(v0 + 64);
  v12 = *(v0 + 32);
  v13 = *(v0 + 40);
  v14 = *(v0 + 24);
  v15 = type metadata accessor for TaskPriority();
  v19 = *(v0 + 48);
  (*(*(v15 - 8) + 56))(v11, 1, 1, v15);
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  *(v16 + 24) = 0;
  *(v16 + 32) = v14;
  *(v16 + 40) = v12;
  *(v16 + 48) = v13;
  *(v16 + 56) = v19;

  swift_errorRetain();

  sub_1001D7F30(0, 0, v11, &unk_1004D8918, v16);

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_100402CD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[10] = a6;
  v7[11] = a7;
  v7[8] = a4;
  v7[9] = a5;
  return _swift_task_switch(sub_100402CF8, 0, 0);
}

uint64_t sub_100402CF8()
{
  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  v3 = *(v0 + 64);
  type metadata accessor for AnalyticsEvent(0);
  v4 = swift_allocObject();
  *(v0 + 96) = v4;
  swift_defaultActor_initialize();
  *(v4 + 14) = sub_100207808(_swiftEmptyArrayStorage);
  UUID.init()();
  v5 = OBJC_IVAR____TtC13findmylocated14AnalyticsEvent_startTime;
  v6 = type metadata accessor for DispatchTime();
  v7 = *(*(v6 - 8) + 56);
  v7(&v4[v5], 1, 1, v6);
  v7(&v4[OBJC_IVAR____TtC13findmylocated14AnalyticsEvent_endTime], 1, 1, v6);
  *(v4 + 15) = v3;
  *(v4 + 16) = v2;
  if (v1)
  {
    v8 = *(v0 + 80);

    swift_errorRetain();
    v9 = swift_task_alloc();
    *(v0 + 104) = v9;
    *v9 = v0;
    v9[1] = sub_100402FE8;

    return sub_1000502C4(v8);
  }

  else
  {
    v11 = *(v0 + 88);
    *(v0 + 16) = 1;
    *(v0 + 56) = 0;
    v12 = *(v11 + 16);

    if (v12)
    {

      v13 = swift_task_alloc();
      *(v0 + 112) = v13;
      *v13 = v0;
      v13[1] = sub_100403250;
      v14 = *(v0 + 88);
      v15 = *(v0 + 96);

      return sub_100052618(v15, v14);
    }

    else
    {
      v16 = swift_task_alloc();
      *(v0 + 128) = v16;
      *(v16 + 16) = v0 + 16;
      v17 = swift_task_alloc();
      *(v0 + 136) = v17;
      *v17 = v0;
      v17[1] = sub_100403660;

      return sub_10004F258(&unk_1004D8928, v16);
    }
  }
}

uint64_t sub_100402FE8()
{

  return _swift_task_switch(sub_1004030E4, 0, 0);
}

uint64_t sub_1004030E4()
{

  *(v0 + 16) = 0;
  v1 = *(v0 + 88);
  *(v0 + 56) = 0;
  if (*(v1 + 16))
  {

    v2 = swift_task_alloc();
    *(v0 + 112) = v2;
    *v2 = v0;
    v2[1] = sub_100403250;
    v3 = *(v0 + 88);
    v4 = *(v0 + 96);

    return sub_100052618(v4, v3);
  }

  else
  {
    v6 = swift_task_alloc();
    *(v0 + 128) = v6;
    *(v6 + 16) = v0 + 16;
    v7 = swift_task_alloc();
    *(v0 + 136) = v7;
    *v7 = v0;
    v7[1] = sub_100403660;

    return sub_10004F258(&unk_1004D8928, v6);
  }
}

uint64_t sub_100403250()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_100403440;
  }

  else
  {
    v2 = sub_100403380;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100403380()
{
  v1 = swift_task_alloc();
  *(v0 + 128) = v1;
  *(v1 + 16) = v0 + 16;
  v2 = swift_task_alloc();
  *(v0 + 136) = v2;
  *v2 = v0;
  v2[1] = sub_100403660;

  return sub_10004F258(&unk_1004D8928, v1);
}

uint64_t sub_100403440()
{
  v13 = v0;

  sub_100053520((v0 + 2));
  if (qword_1005A8530 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000A6F0(v1, qword_1005E0C30);

  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[8];
    v4 = v0[9];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v12 = v8;
    *v6 = 136446466;
    *(v6 + 4) = sub_10000D01C(v5, v4, &v12);
    *(v6 + 12) = 2114;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 14) = v9;
    *v7 = v9;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to publish %{public}s. Error %{public}@", v6, 0x16u);
    sub_100002CE0(v7, &qword_1005A9670, &unk_1004C2480);

    sub_100004984(v8);
  }

  else
  {
  }

  v10 = v0[1];

  return v10();
}

uint64_t sub_100403660()
{
  v2 = *v1;
  v3 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100403998, 0, 0);
  }

  else
  {

    type metadata accessor for AnalyticsPublisher();
    v2[19] = swift_allocObject();
    swift_defaultActor_initialize();
    v4 = swift_task_alloc();
    v2[20] = v4;
    *v4 = v3;
    v4[1] = sub_100403818;
    v5 = v2[12];

    return sub_100050D70(v5);
  }
}

uint64_t sub_100403818()
{

  return _swift_task_switch(sub_100403930, 0, 0);
}

uint64_t sub_100403930()
{

  sub_100053520(v0 + 16);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100403998()
{
  v13 = v0;

  sub_100053520((v0 + 2));
  if (qword_1005A8530 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000A6F0(v1, qword_1005E0C30);

  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[8];
    v4 = v0[9];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v12 = v8;
    *v6 = 136446466;
    *(v6 + 4) = sub_10000D01C(v5, v4, &v12);
    *(v6 + 12) = 2114;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 14) = v9;
    *v7 = v9;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to publish %{public}s. Error %{public}@", v6, 0x16u);
    sub_100002CE0(v7, &qword_1005A9670, &unk_1004C2480);

    sub_100004984(v8);
  }

  else
  {
  }

  v10 = v0[1];

  return v10();
}

uint64_t sub_100403BB8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_100003690;

  return sub_100402CD4(a1, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_100403CB4()
{
  v1 = *(v0 + 112);
  sub_10004B564(&qword_1005B2DD0, &unk_1004D7C00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004C1900;
  *(inited + 32) = 0x6563637553736177;
  *(inited + 40) = 0xEA00000000007373;
  sub_10005345C(v1, inited + 48);
  v3 = sub_100209E2C(inited);
  swift_setDeallocating();
  sub_100002CE0(inited + 32, &qword_1005B0160, &qword_1004D16F0);
  v4 = *(v0 + 8);

  return v4(v3);
}

uint64_t sub_100403DA4()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100002D40;

  return sub_100403C94(v2);
}

uint64_t sub_100403E38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v4[6] = *v3;
  return _swift_task_switch(sub_100403E84, 0, 0);
}

uint64_t sub_100403E84()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  v4 = *(v0 + 24);
  *(v3 + 16) = v2;
  *(v3 + 24) = v4;
  *(v3 + 40) = v1;
  v5 = swift_task_alloc();
  *(v0 + 64) = v5;
  v6 = sub_10004B564(&qword_1005B0F30, &qword_1004D3308);
  *v5 = v0;
  v5[1] = sub_1003061B4;
  v7 = *(v0 + 16);

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v7, 0, 0, 0xD000000000000015, 0x80000001004EA260, sub_10041A380, v3, v6);
}

uint64_t sub_100403F98()
{
  v1[7] = v0;
  v1[8] = *v0;
  sub_10004B564(&qword_1005B1C88, &qword_1004D5E68);
  v1[9] = swift_task_alloc();
  v2 = type metadata accessor for OwnerSharedSecretsRecord(0);
  v1[10] = v2;
  v1[11] = *(v2 - 8);
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();

  return _swift_task_switch(sub_1004040D0, v0, 0);
}

uint64_t sub_1004040D0()
{
  v14 = v0;
  My = type metadata accessor for Feature.FindMy();
  v0[5] = My;
  v0[6] = sub_100006964(&qword_1005A9EE8, &type metadata accessor for Feature.FindMy, &protocol conformance descriptor for Feature.FindMy);
  v2 = sub_10000331C(v0 + 2);
  (*(*(My - 8) + 104))(v2, enum case for Feature.FindMy.redStripe(_:), My);
  LOBYTE(My) = isFeatureEnabled(_:)();
  sub_100004984(v0 + 2);
  if ((My & 1) == 0)
  {
    if (qword_1005A8530 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_10000A6F0(v4, qword_1005E0C30);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v5, v6))
    {
      goto LABEL_15;
    }

    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v13 = v8;
    *v7 = 136446210;
    *(v7 + 4) = sub_10000D01C(0xD000000000000011, 0x80000001004EA200, &v13);
    v9 = "%{public}s Feature.FindMy.redStripe FF disabled.";
    goto LABEL_14;
  }

  if (sub_1003F399C())
  {
    v3 = swift_task_alloc();
    v0[15] = v3;
    *v3 = v0;
    v3[1] = sub_10040445C;

    return daemon.getter();
  }

  if (qword_1005A8530 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_10000A6F0(v10, qword_1005E0C30);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v13 = v8;
    *v7 = 136446210;
    *(v7 + 4) = sub_10000D01C(0xD000000000000011, 0x80000001004EA200, &v13);
    v9 = "%{public}s isFindingCapable == false.";
LABEL_14:
    _os_log_impl(&_mh_execute_header, v5, v6, v9, v7, 0xCu);
    sub_100004984(v8);
  }

LABEL_15:

  v11 = v0[1];

  return v11(0);
}

uint64_t sub_10040445C(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 128) = a1;

  v3 = swift_task_alloc();
  *(v2 + 136) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for LocalStorageService();
  v6 = sub_100006964(&unk_1005AFA50, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_100006964(&qword_1005AAB88, type metadata accessor for LocalStorageService, &unk_1004D5A30);
  *v3 = v9;
  v3[1] = sub_100404638;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_100404638(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v3[18] = a1;
  v3[19] = v1;

  if (v1)
  {
    v5 = v3[7];

    return _swift_task_switch(sub_100405280, v5, 0);
  }

  else
  {

    v6 = swift_task_alloc();
    v3[20] = v6;
    *v6 = v4;
    v6[1] = sub_1004047C4;
    v7 = v3[9];

    return sub_100309F04(v7);
  }
}

uint64_t sub_1004047C4()
{
  v2 = *v1;
  *(*v1 + 168) = v0;

  v3 = *(v2 + 56);
  if (v0)
  {
    v4 = sub_100405320;
  }

  else
  {
    v4 = sub_1004048F0;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1004048F0()
{
  v36 = v0;
  v1 = v0[9];
  if ((*(v0[11] + 48))(v1, 1, v0[10]) == 1)
  {
    sub_100002CE0(v1, &qword_1005B1C88, &qword_1004D5E68);
    if (qword_1005A8530 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_10000A6F0(v2, qword_1005E0C30);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "No OwnerSharedSecretRecord!", v5, 2u);
    }

    v0[25] = sub_1003DA6A0();
    v6 = swift_allocError();
    v0[26] = v6;
    *v7 = 17;
    v8 = sub_100209E2C(_swiftEmptyArrayStorage);
    v0[27] = v8;
    v9 = swift_task_alloc();
    v0[28] = v9;
    *v9 = v0;
    v9[1] = sub_100405068;
    v10 = v6;
    v11 = v8;
  }

  else
  {
    sub_10041AAB8(v1, v0[14], type metadata accessor for OwnerSharedSecretsRecord);
    if (qword_1005A8530 != -1)
    {
      swift_once();
    }

    v13 = v0[13];
    v12 = v0[14];
    v14 = type metadata accessor for Logger();
    sub_10000A6F0(v14, qword_1005E0C30);
    sub_10041ADFC(v12, v13, type metadata accessor for OwnerSharedSecretsRecord);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    v17 = os_log_type_enabled(v15, v16);
    v18 = v0[13];
    if (v17)
    {
      v19 = v0[12];
      v20 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      *v20 = 136446466;
      *(v20 + 4) = sub_10000D01C(0xD000000000000011, 0x80000001004EA200, &v35);
      *(v20 + 12) = 2080;
      sub_10041ADFC(v18, v19, type metadata accessor for OwnerSharedSecretsRecord);
      v21 = String.init<A>(describing:)();
      v23 = v22;
      sub_10041AE64(v18, type metadata accessor for OwnerSharedSecretsRecord);
      v24 = sub_10000D01C(v21, v23, &v35);

      *(v20 + 14) = v24;
      _os_log_impl(&_mh_execute_header, v15, v16, "%{public}s found existing owner record: %s", v20, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      sub_10041AE64(v18, type metadata accessor for OwnerSharedSecretsRecord);
    }

    v25 = sub_10042F8D8(v0[14] + *(v0[10] + 24), 0, 1);
    v0[22] = v25;
    v26 = v25;
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      *v29 = 141558275;
      *(v29 + 4) = 1752392040;
      *(v29 + 12) = 2113;
      *(v29 + 14) = v26;
      *v30 = v25;
      v31 = v26;
      _os_log_impl(&_mh_execute_header, v27, v28, "ownerToken: %{private,mask.hash}@.", v29, 0x16u);
      sub_100002CE0(v30, &qword_1005A9670, &unk_1004C2480);
    }

    v32 = sub_100209E2C(_swiftEmptyArrayStorage);
    v0[23] = v32;
    v33 = swift_task_alloc();
    v0[24] = v33;
    *v33 = v0;
    v33[1] = sub_100404E80;
    v10 = 0;
    v11 = v32;
  }

  return sub_100402934(0xD00000000000003ALL, 0x80000001004EA220, v10, v11);
}

uint64_t sub_100404E80()
{
  v1 = *(*v0 + 56);

  return _swift_task_switch(sub_100404FAC, v1, 0);
}

uint64_t sub_100404FAC()
{
  v1 = v0[14];

  sub_10041AE64(v1, type metadata accessor for OwnerSharedSecretsRecord);
  v2 = v0[22];

  v3 = v0[1];

  return v3(v2);
}

uint64_t sub_100405068()
{
  v1 = *(*v0 + 56);

  return _swift_task_switch(sub_1004051B8, v1, 0);
}

uint64_t sub_1004051B8()
{
  swift_allocError();
  *v1 = 17;
  swift_willThrow();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100405280()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100405320()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1004053C0(uint64_t a1)
{
  v24 = a1;
  v3 = v1;
  v28 = *v1;
  v4 = type metadata accessor for UUID();
  __chkstk_darwin(v4 - 8);
  v30 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Friend();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v26 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v23 - v10;
  v29 = v1[16];
  v25 = v1;
  v27 = type metadata accessor for WorkItemQueue.WorkItem();
  v23 = *(v7 + 16);
  v23(v11, a1, v6);
  v12 = *(v7 + 80);
  v13 = (v12 + 24) & ~v12;
  v14 = v8 + 7;
  v15 = (v8 + 7 + v13) & 0xFFFFFFFFFFFFFFF8;
  v16 = swift_allocObject();
  *(v16 + 16) = v3;
  v17 = *(v7 + 32);
  v17(v16 + v13, v11, v6);
  v18 = v28;
  *(v16 + v15) = v28;
  v19 = v26;
  v23(v26, v24, v6);
  v20 = (v12 + 16) & ~v12;
  v21 = swift_allocObject();
  v17(v21 + v20, v19, v6);
  *(v21 + ((v14 + v20) & 0xFFFFFFFFFFFFFFF8)) = v18;

  UUID.init()();
  WorkItemQueue.WorkItem.__allocating_init(identifier:block:completion:)();
  dispatch thunk of WorkItemQueue.enqueue(_:)();
}

uint64_t sub_100405674()
{
  v1[2] = v0;
  sub_10004B564(&qword_1005AA718, &qword_1004C4370);
  v1[3] = swift_task_alloc();
  v2 = swift_task_alloc();
  v1[4] = v2;
  *v2 = v1;
  v2[1] = sub_100405740;

  return daemon.getter();
}

uint64_t sub_100405740(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 40) = a1;

  v3 = swift_task_alloc();
  *(v2 + 48) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for DataManager(0);
  v6 = sub_100006964(&unk_1005AFA50, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_100006964(&qword_1005A90D0, type metadata accessor for DataManager, &unk_1004D1410);
  *v3 = v9;
  v3[1] = sub_10040591C;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_10040591C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v3[7] = a1;
  v3[8] = v1;

  if (v1)
  {
    v5 = v3[2];

    return _swift_task_switch(sub_100406024, v5, 0);
  }

  else
  {

    v6 = swift_task_alloc();
    v3[9] = v6;
    *v6 = v4;
    v6[1] = sub_100405AA8;
    v7 = v3[3];

    return sub_1001DB14C(v7);
  }
}

uint64_t sub_100405AA8()
{
  v1 = *(*v0 + 56);

  return _swift_task_switch(sub_100405BB8, v1, 0);
}

uint64_t sub_100405BB8()
{
  v1 = *(v0 + 24);
  v2 = type metadata accessor for Device();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 48))(v1, 1, v2);
  v5 = *(v0 + 16);
  if (v4 == 1)
  {
    sub_100002CE0(v1, &qword_1005AA718, &qword_1004C4370);
    v6 = sub_100405E94;
  }

  else
  {
    *(v0 + 80) = Device.isThisDevice.getter() & 1;
    (*(v3 + 8))(v1, v2);
    v6 = sub_100405CE8;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100405CE8()
{
  v10 = v0;
  v1 = *(v0 + 80);
  if (v1 != 1)
  {
    if (qword_1005A8530 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_10000A6F0(v2, qword_1005E0C30);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v9 = v6;
      *v5 = 136446210;
      *(v5 + 4) = sub_10000D01C(0xD000000000000019, 0x80000001004EA390, &v9);
      _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s not Me device.", v5, 0xCu);
      sub_100004984(v6);
    }
  }

  v7 = *(v0 + 8);

  return v7(v1);
}

uint64_t sub_100405E94()
{
  v9 = v0;
  if (qword_1005A8530 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000A6F0(v1, qword_1005E0C30);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v8 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_10000D01C(0xD000000000000019, 0x80000001004EA390, &v8);
    _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s not Me device.", v4, 0xCu);
    sub_100004984(v5);
  }

  v6 = *(v0 + 8);

  return v6(0);
}

uint64_t sub_100406024()
{

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_100406098(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  v4 = type metadata accessor for MessagingOptions();
  v3[10] = v4;
  v3[11] = *(v4 - 8);
  v3[12] = swift_task_alloc();
  v5 = sub_10004B564(&qword_1005A92B0, &qword_1004D8050);
  v3[13] = v5;
  v3[14] = *(v5 - 8);
  v3[15] = swift_task_alloc();
  v3[16] = type metadata accessor for FindingTokenEnvelopeV1(0);
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();
  sub_10004B564(&qword_1005AEB98, &unk_1004D07C0);
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();
  v6 = type metadata accessor for SharedSecretKey();
  v3[22] = v6;
  v3[23] = *(v6 - 8);
  v3[24] = swift_task_alloc();
  sub_10004B564(&unk_1005AECE8, &qword_1004D07A0);
  v3[25] = swift_task_alloc();
  v7 = type metadata accessor for FriendSharedSecretsRecord(0);
  v3[26] = v7;
  v3[27] = *(v7 - 8);
  v3[28] = swift_task_alloc();
  v3[29] = swift_task_alloc();
  v3[30] = swift_task_alloc();
  v8 = type metadata accessor for Friend();
  v3[31] = v8;
  v3[32] = *(v8 - 8);
  v3[33] = swift_task_alloc();
  v3[34] = swift_task_alloc();
  sub_10004B564(&unk_1005AE5B0, &qword_1004C32F0);
  v3[35] = swift_task_alloc();
  v3[36] = swift_task_alloc();
  v3[37] = swift_task_alloc();
  v3[38] = swift_task_alloc();
  v3[39] = swift_task_alloc();
  v3[40] = swift_task_alloc();
  v3[41] = swift_task_alloc();
  v9 = type metadata accessor for Date();
  v3[42] = v9;
  v3[43] = *(v9 - 8);
  v3[44] = swift_task_alloc();
  v3[45] = swift_task_alloc();
  v3[46] = swift_task_alloc();
  v3[47] = swift_task_alloc();
  v3[48] = swift_task_alloc();
  sub_10004B564(&qword_1005A9110, &qword_1004C25F8);
  v3[49] = swift_task_alloc();
  v10 = type metadata accessor for Account();
  v3[50] = v10;
  v3[51] = *(v10 - 8);
  v3[52] = swift_task_alloc();
  sub_10004B564(&qword_1005A96E0, &qword_1004C2A80);
  v3[53] = swift_task_alloc();
  v3[54] = swift_task_alloc();
  v11 = type metadata accessor for UUID();
  v3[55] = v11;
  v3[56] = *(v11 - 8);
  v3[57] = swift_task_alloc();
  v3[58] = swift_task_alloc();
  v3[59] = swift_task_alloc();
  v12 = type metadata accessor for Handle();
  v3[60] = v12;
  v3[61] = *(v12 - 8);
  v3[62] = swift_task_alloc();
  v3[63] = swift_task_alloc();
  v3[64] = swift_task_alloc();
  v3[65] = swift_task_alloc();
  v3[66] = swift_task_alloc();
  v3[67] = swift_task_alloc();
  v3[68] = swift_task_alloc();

  return _swift_task_switch(sub_1004066BC, 0, 0);
}

uint64_t sub_1004066BC()
{
  v14 = v0;
  My = type metadata accessor for Feature.FindMy();
  v0[5] = My;
  v0[6] = sub_100006964(&qword_1005A9EE8, &type metadata accessor for Feature.FindMy, &protocol conformance descriptor for Feature.FindMy);
  v2 = sub_10000331C(v0 + 2);
  (*(*(My - 8) + 104))(v2, enum case for Feature.FindMy.redStripe(_:), My);
  LOBYTE(My) = isFeatureEnabled(_:)();
  sub_100004984(v0 + 2);
  if ((My & 1) == 0)
  {
    if (qword_1005A8530 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_10000A6F0(v5, qword_1005E0C30);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v6, v7))
    {
      goto LABEL_15;
    }

    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v13[0] = v9;
    *v8 = 136446210;
    *(v8 + 4) = sub_10000D01C(0xD000000000000010, 0x80000001004EA370, v13);
    v10 = "%{public}s Feature.FindMy.redStripe FF disabled.";
    goto LABEL_14;
  }

  if (sub_1003F399C())
  {
    v3 = swift_task_alloc();
    v0[69] = v3;
    *v3 = v0;
    v3[1] = sub_100406C18;

    return sub_100405674();
  }

  if (qword_1005A8530 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_10000A6F0(v11, qword_1005E0C30);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v13[0] = v9;
    *v8 = 136446210;
    *(v8 + 4) = sub_10000D01C(0xD000000000000010, 0x80000001004EA370, v13);
    v10 = "%{public}s isFindingCapable == false.";
LABEL_14:
    _os_log_impl(&_mh_execute_header, v6, v7, v10, v8, 0xCu);
    sub_100004984(v9);
  }

LABEL_15:

  v12 = v0[1];

  return v12();
}

uint64_t sub_100406C18(char a1)
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
    *(v4 + 913) = a1 & 1;

    return _swift_task_switch(sub_100406F70, 0, 0);
  }
}

uint64_t sub_100406F70(uint64_t a1)
{
  v36 = v1;
  if (*(v1 + 913) != 1)
  {
    if (qword_1005A8530 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_10000A6F0(v22, qword_1005E0C30);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v35[0] = v26;
      *v25 = 136446210;
      *(v25 + 4) = sub_10000D01C(0xD000000000000010, 0x80000001004EA370, v35);
      _os_log_impl(&_mh_execute_header, v23, v24, "%{public}s this device is NOT eligible to generate finding tokens.", v25, 0xCu);
      sub_100004984(v26);
    }

    sub_1003DA6A0();
    swift_allocError();
    *v27 = 20;
    swift_willThrow();
    goto LABEL_17;
  }

  v2 = *(v1 + 440);
  v3 = *(v1 + 448);
  v4 = *(v1 + 432);
  Friend.handle.getter();
  Handle.peerID.getter();
  if ((*(v3 + 48))(v4, 1, v2) == 1)
  {
    sub_100002CE0(*(v1 + 432), &qword_1005A96E0, &qword_1004C2A80);
    if (qword_1005A8530 != -1)
    {
      swift_once();
    }

    v5 = *(v1 + 544);
    v7 = *(v1 + 488);
    v6 = *(v1 + 496);
    v8 = *(v1 + 480);
    v9 = type metadata accessor for Logger();
    sub_10000A6F0(v9, qword_1005E0C30);
    (*(v7 + 16))(v6, v5, v8);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    v12 = os_log_type_enabled(v10, v11);
    v14 = *(v1 + 488);
    v13 = *(v1 + 496);
    v15 = *(v1 + 480);
    if (v12)
    {
      v34 = *(v1 + 480);
      v16 = swift_slowAlloc();
      v35[0] = swift_slowAlloc();
      *v16 = 136446723;
      *(v16 + 4) = sub_10000D01C(0xD000000000000010, 0x80000001004EA370, v35);
      *(v16 + 12) = 2160;
      *(v16 + 14) = 1752392040;
      *(v16 + 22) = 2081;
      v17 = Handle.identifier.getter();
      v19 = v18;
      v20 = *(v14 + 8);
      v20(v13, v34);
      v21 = sub_10000D01C(v17, v19, v35);

      *(v16 + 24) = v21;
      _os_log_impl(&_mh_execute_header, v10, v11, "%{public}s Missing peerID for handle %{private,mask.hash}s!", v16, 0x20u);
      swift_arrayDestroy();
    }

    else
    {

      v20 = *(v14 + 8);
      v20(v13, v15);
    }

    v29 = *(v1 + 544);
    v30 = *(v1 + 480);
    sub_1003DA6A0();
    swift_allocError();
    *v31 = 15;
    swift_willThrow();
    v20(v29, v30);
LABEL_17:

    v32 = *(v1 + 8);

    return v32();
  }

  (*(*(v1 + 448) + 32))(*(v1 + 472), *(v1 + 432), *(v1 + 440));
  v28 = swift_task_alloc();
  *(v1 + 560) = v28;
  *v28 = v1;
  v28[1] = sub_100407634;

  return daemon.getter();
}

uint64_t sub_100407634(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  v2[71] = a1;

  v3 = swift_task_alloc();
  v2[72] = v3;
  v4 = type metadata accessor for Daemon();
  v2[73] = v4;
  v5 = type metadata accessor for AccountService(0);
  v6 = sub_100006964(&unk_1005AFA50, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v2[74] = v6;
  v7 = sub_100006964(&qword_1005A9118, type metadata accessor for AccountService, &unk_1004DCC10);
  *v3 = v9;
  v3[1] = sub_100407814;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_100407814(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v3[75] = a1;
  v3[76] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_10040B814, 0, 0);
  }

  else
  {
    v5 = swift_task_alloc();
    v3[77] = v5;
    *v5 = v4;
    v5[1] = sub_1004079BC;
    v6 = v3[49];

    return sub_10000EB24(v6);
  }
}

uint64_t sub_1004079BC()
{

  return _swift_task_switch(sub_100407AB8, 0, 0);
}

uint64_t sub_100407AB8()
{
  v112 = v0;
  v1 = v0[50];
  v2 = v0[51];
  v3 = v0[49];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_100002CE0(v3, &qword_1005A9110, &qword_1004C25F8);
    if (qword_1005A8530 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_10000A6F0(v4, qword_1005E0C30);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v111[0] = v8;
      *v7 = 136446210;
      *(v7 + 4) = sub_10000D01C(0xD000000000000010, 0x80000001004EA370, v111);
      _os_log_impl(&_mh_execute_header, v5, v6, "%{public}s Missing primary account to send friend token!", v7, 0xCu);
      sub_100004984(v8);
    }

    v9 = v0[68];
    v10 = v0[60];
    v11 = v0[61];
    v12 = v0[59];
    v13 = v0[55];
    v14 = v0[56];
    sub_1003DA6A0();
    swift_allocError();
    *v15 = 16;
    swift_willThrow();

    (*(v14 + 8))(v12, v13);
    (*(v11 + 8))(v9, v10);
LABEL_18:

    v85 = v0[1];

    return v85();
  }

  v16 = v0[42];
  v17 = v0[43];
  v18 = v0[41];
  (*(v2 + 32))(v0[52], v3, v1);
  Friend.createdAt.getter();
  v19 = *(v17 + 48);
  v0[78] = v19;
  v0[79] = (v17 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v19(v18, 1, v16) == 1)
  {
    sub_100002CE0(v0[41], &unk_1005AE5B0, &qword_1004C32F0);
    if (qword_1005A8530 != -1)
    {
      swift_once();
    }

    v20 = v0[68];
    v21 = v0[63];
    v22 = v0[60];
    v23 = v0[61];
    v24 = type metadata accessor for Logger();
    sub_10000A6F0(v24, qword_1005E0C30);
    (*(v23 + 16))(v21, v20, v22);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();
    v27 = os_log_type_enabled(v25, v26);
    v28 = v0[63];
    v29 = v0[60];
    v30 = v0[61];
    if (v27)
    {
      v31 = swift_slowAlloc();
      v111[0] = swift_slowAlloc();
      *v31 = 136446723;
      *(v31 + 4) = sub_10000D01C(0xD000000000000010, 0x80000001004EA370, v111);
      *(v31 + 12) = 2160;
      *(v31 + 14) = 1752392040;
      *(v31 + 22) = 2081;
      v32 = Handle.identifier.getter();
      v34 = v33;
      v105 = *(v30 + 8);
      v105(v28, v29);
      v35 = sub_10000D01C(v32, v34, v111);

      *(v31 + 24) = v35;
      _os_log_impl(&_mh_execute_header, v25, v26, "%{public}s Missing relationship date: %{private,mask.hash}s!", v31, 0x20u);
      swift_arrayDestroy();
    }

    else
    {

      v105 = *(v30 + 8);
      v105(v28, v29);
    }

    v103 = v0[68];
    v78 = v0[59];
    v77 = v0[60];
    v79 = v0[55];
    v80 = v0[56];
    v81 = v0[51];
    v82 = v0[52];
    v83 = v0[50];
    sub_1003DA6A0();
    swift_allocError();
    *v84 = 15;
    swift_willThrow();

    (*(v81 + 8))(v82, v83);
    (*(v80 + 8))(v78, v79);
    v105(v103, v77);
    goto LABEL_18;
  }

  v36 = v0[48];
  v37 = v0[42];
  v38 = v0[43];
  v39 = v0[41];
  v40 = *(v38 + 32);
  v0[80] = v40;
  v0[81] = (v38 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v40(v36, v39, v37);
  if (qword_1005A8530 != -1)
  {
    swift_once();
  }

  v41 = v0[58];
  v42 = v0[59];
  v43 = v0[55];
  v44 = v0[56];
  v106 = v0[47];
  v108 = v0[48];
  v45 = v0[43];
  v101 = v0[34];
  v104 = v0[42];
  v47 = v0[31];
  v46 = v0[32];
  v48 = v0[8];
  v49 = type metadata accessor for Logger();
  v0[82] = sub_10000A6F0(v49, qword_1005E0C30);
  (*(v44 + 16))(v41, v42, v43);
  v50 = *(v46 + 16);
  v0[83] = v50;
  v0[84] = (v46 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v50(v101, v48, v47);
  v51 = *(v45 + 16);
  v0[85] = v51;
  v0[86] = (v45 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v51(v106, v108, v104);
  v52 = Logger.logObject.getter();
  v53 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v52, v53))
  {
    v54 = v0[67];
    v55 = v0[61];
    v109 = v53;
    v56 = v0[58];
    v57 = v0[55];
    v58 = v0[56];
    v100 = v0[47];
    v102 = v0[43];
    v98 = v0[60];
    v99 = v0[42];
    v107 = v52;
    v59 = v0[32];
    v96 = v0[34];
    v97 = v0[31];
    v60 = swift_slowAlloc();
    v111[0] = swift_slowAlloc();
    *v60 = 136446979;
    sub_100006964(&qword_1005A92C0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v61 = dispatch thunk of CustomStringConvertible.description.getter();
    v63 = v62;
    v64 = v57;
    v65 = *(v58 + 8);
    v65(v56, v64);
    v66 = sub_10000D01C(v61, v63, v111);

    *(v60 + 4) = v66;
    *(v60 + 12) = 2160;
    *(v60 + 14) = 1752392040;
    *(v60 + 22) = 2081;
    Friend.handle.getter();
    v67 = Handle.identifier.getter();
    v69 = v68;
    (*(v55 + 8))(v54, v98);
    v70 = *(v59 + 8);
    v70(v96, v97);
    v71 = sub_10000D01C(v67, v69, v111);

    *(v60 + 24) = v71;
    *(v60 + 32) = 2082;
    sub_100006964(&qword_1005A9800, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    v72 = dispatch thunk of CustomStringConvertible.description.getter();
    v74 = v73;
    v75 = *(v102 + 8);
    v75(v100, v99);
    v76 = sub_10000D01C(v72, v74, v111);

    *(v60 + 34) = v76;
    _os_log_impl(&_mh_execute_header, v107, v109, "Adding peer %{public}s %{private,mask.hash}s baseDate: %{public}s", v60, 0x2Au);
    swift_arrayDestroy();
  }

  else
  {
    v110 = v0[58];
    v87 = v0[55];
    v88 = v0[56];
    v89 = v0[47];
    v90 = v0[42];
    v91 = v0[43];
    v92 = v0[34];
    v94 = v0[31];
    v93 = v0[32];

    v75 = *(v91 + 8);
    v75(v89, v90);
    v70 = *(v93 + 8);
    v70(v92, v94);
    v65 = *(v88 + 8);
    v65(v110, v87);
  }

  v0[89] = v75;
  v0[88] = v65;
  v0[87] = v70;
  v95 = swift_task_alloc();
  v0[90] = v95;
  *v95 = v0;
  v95[1] = sub_100408670;

  return daemon.getter();
}

uint64_t sub_100408670(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v4 = *v1;
  *(v3 + 728) = a1;

  v5 = swift_task_alloc();
  *(v3 + 736) = v5;
  v6 = type metadata accessor for CloudStorageService();
  v7 = sub_100006964(&qword_1005AD568, type metadata accessor for CloudStorageService, &unk_1004D03B0);
  *v5 = v4;
  v5[1] = sub_100408824;
  v8 = *(v2 + 592);
  v9 = *(v2 + 584);

  return ActorServiceDaemon.getService<A>()(v9, v6, v8, v7);
}

uint64_t sub_100408824(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 744) = a1;
  *(v3 + 752) = v1;

  if (v1)
  {
    v4 = sub_10040BAB4;
  }

  else
  {
    v4 = sub_100408964;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100408964()
{
  v1 = v0[93];
  v2 = v0[9];
  v3 = swift_allocObject();
  v0[95] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;

  v4 = swift_task_alloc();
  v0[96] = v4;
  *v4 = v0;
  v4[1] = sub_100408A64;

  return withTimeout<A>(_:block:)(v4, 0x8155A43676E00000, 6, &unk_1004D8A00, v3, &type metadata for () + 1);
}

uint64_t sub_100408A64()
{
  *(*v1 + 776) = v0;

  if (v0)
  {
    v2 = sub_10040BDB4;
  }

  else
  {
    v2 = sub_100408B98;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100408B98()
{
  v1 = swift_task_alloc();
  v0[98] = v1;
  *v1 = v0;
  v1[1] = sub_100408C38;
  v2 = v0[59];
  v3 = v0[25];

  return sub_1001C4430(v3, v2);
}

uint64_t sub_100408C38()
{
  *(*v1 + 792) = v0;

  if (v0)
  {
    v2 = sub_10040996C;
  }

  else
  {
    v2 = sub_100408D4C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100408D4C()
{
  v95 = v0;
  v1 = *(v0 + 200);
  if ((*(*(v0 + 216) + 48))(v1, 1, *(v0 + 208)) == 1)
  {
    v2 = &unk_1005AECE8;
    v3 = &qword_1004D07A0;
    v4 = v1;
LABEL_11:
    sub_100002CE0(v4, v2, v3);
    goto LABEL_12;
  }

  v6 = *(v0 + 232);
  v5 = *(v0 + 240);
  sub_10041AAB8(v1, v5, type metadata accessor for FriendSharedSecretsRecord);
  sub_10041ADFC(v5, v6, type metadata accessor for FriendSharedSecretsRecord);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v0 + 232);
  if (v9)
  {
    v11 = *(v0 + 224);
    v12 = swift_slowAlloc();
    v94[0] = swift_slowAlloc();
    *v12 = 136446466;
    *(v12 + 4) = sub_10000D01C(0xD000000000000010, 0x80000001004EA370, v94);
    *(v12 + 12) = 2080;
    sub_10041ADFC(v10, v11, type metadata accessor for FriendSharedSecretsRecord);
    v13 = String.init<A>(describing:)();
    v15 = v14;
    sub_10041AE64(v10, type metadata accessor for FriendSharedSecretsRecord);
    v16 = sub_10000D01C(v13, v15, v94);

    *(v12 + 14) = v16;
    _os_log_impl(&_mh_execute_header, v7, v8, "%{public}s found existing peer record %s", v12, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    sub_10041AE64(v10, type metadata accessor for FriendSharedSecretsRecord);
  }

  v17 = *(v0 + 624);
  v18 = *(v0 + 336);
  v19 = *(v0 + 320);
  v20 = *(v0 + 240);
  v21 = *(*(v0 + 208) + 36);
  sub_100005F04(v20 + v21, v19, &unk_1005AE5B0, &qword_1004C32F0);
  if (v17(v19, 1, v18) == 1)
  {
    v22 = *(v0 + 320);
LABEL_10:
    sub_10041AE64(*(v0 + 240), type metadata accessor for FriendSharedSecretsRecord);
    v2 = &unk_1005AE5B0;
    v3 = &qword_1004C32F0;
    v4 = v22;
    goto LABEL_11;
  }

  v23 = *(v0 + 624);
  v24 = *(v0 + 336);
  v25 = *(v0 + 312);
  sub_100002CE0(*(v0 + 320), &unk_1005AE5B0, &qword_1004C32F0);
  sub_100005F04(v20 + v21, v25, &unk_1005AE5B0, &qword_1004C32F0);
  if (v23(v25, 1, v24) == 1)
  {
    v22 = *(v0 + 312);
    goto LABEL_10;
  }

  (*(v0 + 640))(*(v0 + 368), *(v0 + 312), *(v0 + 336));
  if ((static Date.> infix(_:_:)() & 1) == 0)
  {
    (*(*(v0 + 488) + 16))(*(v0 + 528), *(v0 + 544), *(v0 + 480));
    v57 = Logger.logObject.getter();
    v58 = static os_log_type_t.error.getter();
    v59 = os_log_type_enabled(v57, v58);
    v60 = *(v0 + 528);
    v61 = *(v0 + 480);
    v62 = *(v0 + 488);
    if (v59)
    {
      v63 = swift_slowAlloc();
      v94[0] = swift_slowAlloc();
      *v63 = 136446723;
      *(v63 + 4) = sub_10000D01C(0xD000000000000010, 0x80000001004EA370, v94);
      *(v63 + 12) = 2160;
      *(v63 + 14) = 1752392040;
      *(v63 + 22) = 2081;
      v64 = Handle.identifier.getter();
      v66 = v65;
      v93 = *(v62 + 8);
      v93(v60, v61);
      v67 = sub_10000D01C(v64, v66, v94);

      *(v63 + 24) = v67;
      _os_log_impl(&_mh_execute_header, v57, v58, "%{public}s Peer already exists: %{private,mask.hash}s!", v63, 0x20u);
      swift_arrayDestroy();
    }

    else
    {

      v93 = *(v62 + 8);
      v93(v60, v61);
    }

    v68 = *(v0 + 712);
    v88 = *(v0 + 544);
    v82 = *(v0 + 704);
    v85 = *(v0 + 480);
    v79 = *(v0 + 440);
    v80 = *(v0 + 472);
    v69 = *(v0 + 408);
    v75 = *(v0 + 400);
    v76 = *(v0 + 416);
    v74 = *(v0 + 384);
    v70 = *(v0 + 368);
    v71 = *(v0 + 336);
    v72 = *(v0 + 240);
    sub_1003DA6A0();
    swift_allocError();
    *v73 = 0;
    swift_willThrow();

    v68(v70, v71);
    sub_10041AE64(v72, type metadata accessor for FriendSharedSecretsRecord);
    v68(v74, v71);
    (*(v69 + 8))(v76, v75);
    v82(v80, v79);
    v93(v88, v85);
LABEL_16:

    v39 = *(v0 + 8);

    return v39();
  }

  v56 = *(v0 + 240);
  (*(v0 + 712))(*(v0 + 368), *(v0 + 336));
  sub_10041AE64(v56, type metadata accessor for FriendSharedSecretsRecord);
LABEL_12:
  v26 = *(v0 + 176);
  v27 = *(v0 + 184);
  v28 = *(v0 + 168);
  static SharedSecretKey.length.getter();
  static Data.random(bytes:)();
  sub_100006964(&qword_1005AEC08, &type metadata accessor for SharedSecretKey, &protocol conformance descriptor for SharedSecretKey);
  KeyRepresenting.init(rawValue:)();
  if ((*(v27 + 48))(v28, 1, v26) == 1)
  {
    sub_100002CE0(*(v0 + 168), &qword_1005AEB98, &unk_1004D07C0);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v94[0] = v32;
      *v31 = 136446210;
      *(v31 + 4) = sub_10000D01C(0xD000000000000010, 0x80000001004EA370, v94);
      _os_log_impl(&_mh_execute_header, v29, v30, "%{public}s Unable to generate SharedSecretKey!", v31, 0xCu);
      sub_100004984(v32);
    }

    v91 = *(v0 + 544);
    v33 = *(v0 + 488);
    v86 = *(v0 + 704);
    v89 = *(v0 + 480);
    v78 = *(v0 + 712);
    v81 = *(v0 + 440);
    v83 = *(v0 + 472);
    v34 = *(v0 + 408);
    v77 = *(v0 + 416);
    v35 = *(v0 + 400);
    v36 = *(v0 + 384);
    v37 = *(v0 + 336);
    sub_1003DA6A0();
    swift_allocError();
    *v38 = 21;
    swift_willThrow();

    v78(v36, v37);
    (*(v34 + 8))(v77, v35);
    v86(v83, v81);
    (*(v33 + 8))(v91, v89);
    goto LABEL_16;
  }

  v92 = *(v0 + 680);
  v41 = *(v0 + 336);
  v42 = *(v0 + 344);
  v84 = *(v0 + 304);
  v87 = *(v0 + 296);
  v90 = *(v0 + 384);
  v43 = *(v0 + 184);
  v44 = *(v0 + 192);
  v45 = *(v0 + 176);
  v47 = *(v0 + 152);
  v46 = *(v0 + 160);
  (*(v43 + 32))(v44, *(v0 + 168), v45);
  v48 = *(v43 + 56);
  v48(v46, 1, 1, v45);
  v49 = *(v42 + 56);
  v49(v84, 1, 1, v41);
  (*(v43 + 16))(v47, v44, v45);
  v48(v47, 0, 1, v45);
  v92(v87, v90, v41);
  v49(v87, 0, 1, v41);
  v50 = swift_task_alloc();
  *(v0 + 800) = v50;
  *v50 = v0;
  v50[1] = sub_100409C7C;
  v51 = *(v0 + 472);
  v53 = *(v0 + 296);
  v52 = *(v0 + 304);
  v55 = *(v0 + 152);
  v54 = *(v0 + 160);

  return sub_10040CCB0(v51, v54, v52, v55, v53);
}

uint64_t sub_10040996C()
{
  v1 = v0[89];
  v14 = v0[68];
  v2 = v0[61];
  v12 = v0[88];
  v13 = v0[60];
  v10 = v0[55];
  v11 = v0[59];
  v3 = v0[51];
  v4 = v0[52];
  v5 = v0[50];
  v6 = v0[48];
  v7 = v0[42];

  v1(v6, v7);
  (*(v3 + 8))(v4, v5);
  v12(v11, v10);
  (*(v2 + 8))(v14, v13);

  v8 = v0[1];

  return v8();
}

uint64_t sub_100409C7C()
{
  v2 = *v1;
  v3 = *v1;
  v2[101] = v0;

  v4 = v2[38];
  v5 = v2[37];
  v6 = v2[20];
  v7 = v2[19];
  if (v0)
  {
    sub_100002CE0(v5, &unk_1005AE5B0, &qword_1004C32F0);
    sub_100002CE0(v7, &qword_1005AEB98, &unk_1004D07C0);
    sub_100002CE0(v4, &unk_1005AE5B0, &qword_1004C32F0);
    sub_100002CE0(v6, &qword_1005AEB98, &unk_1004D07C0);

    return _swift_task_switch(sub_10040C0C4, 0, 0);
  }

  else
  {
    sub_100002CE0(v5, &unk_1005AE5B0, &qword_1004C32F0);
    sub_100002CE0(v7, &qword_1005AEB98, &unk_1004D07C0);
    sub_100002CE0(v4, &unk_1005AE5B0, &qword_1004C32F0);
    sub_100002CE0(v6, &qword_1005AEB98, &unk_1004D07C0);
    v8 = swift_task_alloc();
    v2[102] = v8;
    *v8 = v3;
    v8[1] = sub_100409F14;

    return daemon.getter();
  }
}

uint64_t sub_100409F14(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v4 = *v1;
  *(v3 + 824) = a1;

  v5 = swift_task_alloc();
  *(v3 + 832) = v5;
  v6 = sub_10004B564(&qword_1005A90E0, &qword_1004C2490);
  v7 = sub_10005A3CC();
  *v5 = v4;
  v5[1] = sub_10040A0A4;
  v8 = *(v2 + 592);
  v9 = *(v2 + 584);

  return ActorServiceDaemon.getService<A>()(v9, v6, v8, v7);
}

uint64_t sub_10040A0A4(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 840) = a1;
  *(v3 + 848) = v1;

  if (v1)
  {
    v4 = sub_10040C3F8;
  }

  else
  {
    v4 = sub_10040A1E4;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10040A1E4()
{
  v79 = v0;
  v1 = *(v0 + 664);
  v2 = *(v0 + 544);
  v3 = *(v0 + 520);
  v4 = *(v0 + 480);
  v5 = *(v0 + 488);
  v6 = *(v0 + 264);
  v7 = *(v0 + 248);
  v8 = *(v0 + 64);
  v9 = Account.dsidBase64EncodedString()();
  v10 = *(v5 + 16);
  *(v0 + 856) = v10;
  *(v0 + 864) = (v5 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v10(v3, v2, v4);
  v11 = v8;
  object = v9._object;
  v1(v6, v11, v7);

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v74 = v14;
    v72 = *(v0 + 624);
    v15 = *(v0 + 520);
    v16 = *(v0 + 480);
    v17 = *(v0 + 488);
    v18 = *(v0 + 288);
    v70 = *(v0 + 336);
    v19 = swift_slowAlloc();
    v78[0] = swift_slowAlloc();
    *v19 = 141559043;
    *(v19 + 4) = 1752392040;
    *(v19 + 12) = 2081;
    v20 = Handle.identifier.getter();
    v22 = v21;
    v23 = *(v17 + 8);
    v23(v15, v16);
    v24 = sub_10000D01C(v20, v22, v78);

    *(v19 + 14) = v24;
    *(v19 + 22) = 2050;
    Friend.expiry.getter();
    if (v72(v18, 1, v70) == 1)
    {
      v25 = 0x4143C68000000000;
    }

    else
    {
      v33 = *(v0 + 712);
      v34 = *(v0 + 352);
      v35 = *(v0 + 360);
      v36 = *(v0 + 336);
      (*(v0 + 640))(v35, *(v0 + 288), v36);
      static Date.trustedNow.getter(v34);
      Date.timeIntervalSince(_:)();
      v25 = v37;
      v33(v34, v36);
      v33(v35, v36);
    }

    countAndFlagsBits = v9._countAndFlagsBits;
    (*(v0 + 696))(*(v0 + 264), *(v0 + 248));
    *(v19 + 24) = v25;
    *(v19 + 32) = 2160;
    *(v19 + 34) = 1752392040;
    *(v19 + 42) = 2081;
    object = v9._object;
    *(v19 + 44) = sub_10000D01C(v9._countAndFlagsBits, v9._object, v78);
    _os_log_impl(&_mh_execute_header, v13, v74, "Sending shared secret to %{private,mask.hash}s. TTL: %{public}f\nfrom my serverID: %{private,mask.hash}s over IDS.", v19, 0x34u);
    swift_arrayDestroy();
  }

  else
  {
    v26 = *(v0 + 696);
    v27 = *(v0 + 520);
    v28 = *(v0 + 480);
    v29 = *(v0 + 488);
    v30 = *(v0 + 264);
    v31 = *(v0 + 248);

    v26(v30, v31);
    v23 = *(v29 + 8);
    v23(v27, v28);
    countAndFlagsBits = v9._countAndFlagsBits;
  }

  *(v0 + 872) = v23;
  v38 = *(v0 + 848);
  v40 = *(v0 + 136);
  v39 = *(v0 + 144);
  v41 = *(v0 + 128);
  (*(v0 + 680))(v39 + *(v41 + 20), *(v0 + 384), *(v0 + 336));
  v42 = SharedSecretKey.data.getter();
  *v39 = countAndFlagsBits;
  v39[1] = object;
  v43 = (v39 + *(v41 + 24));
  *v43 = v42;
  v43[1] = v44;
  *(v0 + 912) = 1;
  sub_10041ADFC(v39, v40, type metadata accessor for FindingTokenEnvelopeV1);
  sub_10006DFA4();
  sub_100006964(&qword_1005B3998, type metadata accessor for FindingTokenEnvelopeV1, &unk_1004D43E0);
  sub_100006964(&qword_1005B39A0, type metadata accessor for FindingTokenEnvelopeV1, &unk_1004D43B8);
  Message.init<A>(type:version:payload:)();
  if (v38)
  {
    v68 = *(v0 + 712);
    v73 = *(v0 + 704);
    v75 = *(v0 + 480);
    v76 = *(v0 + 544);
    v71 = *(v0 + 472);
    v69 = *(v0 + 440);
    v45 = *(v0 + 408);
    v66 = *(v0 + 400);
    v67 = *(v0 + 416);
    v65 = *(v0 + 384);
    v46 = *(v0 + 336);
    v48 = *(v0 + 184);
    v47 = *(v0 + 192);
    v49 = *(v0 + 176);
    v50 = *(v0 + 144);

    sub_10041AE64(v50, type metadata accessor for FindingTokenEnvelopeV1);
    (*(v48 + 8))(v47, v49);
    v68(v65, v46);
    (*(v45 + 8))(v67, v66);
    v73(v71, v69);
    v23(v76, v75);

    v51 = *(v0 + 8);

    return v51();
  }

  else
  {
    sub_10004B564(&qword_1005A9270, &qword_1004C5810);
    type metadata accessor for Destination();
    *(swift_allocObject() + 16) = xmmword_1004C1900;
    v53 = Handle.isPhoneNumber.getter();
    Handle.identifier.getter();
    if (v53)
    {
      Destination.init(phoneNumber:)();
    }

    else
    {
      Destination.init(email:)();
    }

    v54 = *(v0 + 624);
    v55 = *(v0 + 336);
    v56 = *(v0 + 280);
    (*(*(v0 + 448) + 56))(*(v0 + 424), 1, 1, *(v0 + 440));
    Friend.expiry.getter();
    if (v54(v56, 1, v55) != 1)
    {
      v57 = *(v0 + 712);
      v59 = *(v0 + 352);
      v58 = *(v0 + 360);
      v60 = *(v0 + 336);
      (*(v0 + 640))(v58, *(v0 + 280), v60);
      static Date.trustedNow.getter(v59);
      Date.timeIntervalSince(_:)();
      v57(v59, v60);
      v57(v58, v60);
    }

    v77 = *(v0 + 840);
    sub_10004B564(&qword_1005AB930, &qword_1004C5818);
    v61 = type metadata accessor for MessagingCapability();
    v62 = *(v61 - 8);
    v63 = (*(v62 + 80) + 32) & ~*(v62 + 80);
    v64 = swift_allocObject();
    *(v64 + 16) = xmmword_1004C1900;
    (*(v62 + 104))(v64 + v63, enum case for MessagingCapability.supportsPeopleFindingV1(_:), v61);
    sub_10025EC18(v64);
    swift_setDeallocating();
    (*(v62 + 8))(v64 + v63, v61);
    swift_deallocClassInstance();
    sub_100293190(_swiftEmptyArrayStorage);
    MessagingOptions.init(destinations:expectsPeerResponse:responseIdentifier:timeToLive:fireAndForget:requiredCapabilities:lackingCapabilities:queueOneIdentifier:)();

    return _swift_task_switch(sub_10040AC88, v77, 0);
  }
}

uint64_t sub_10040AC88()
{
  v1 = swift_task_alloc();
  v0[110] = v1;
  *v1 = v0;
  v1[1] = sub_10040AD30;
  v2 = v0[57];
  v3 = v0[15];
  v4 = v0[12];

  return InternetMessaging.send(message:messageOptions:)(v2, v3, v4);
}

uint64_t sub_10040AD30()
{
  v2 = *v1;
  *(*v1 + 888) = v0;

  if (v0)
  {
    v3 = sub_10040B038;
  }

  else
  {
    v4 = v2[88];
    v5 = v2[57];
    v6 = v2[55];
    v2[112] = (v2[56] + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v4(v5, v6);
    v3 = sub_10040AE6C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10040AE6C()
{
  v19 = v0;
  (*(v0 + 856))(*(v0 + 512), *(v0 + 544), *(v0 + 480));
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 872);
  v5 = *(v0 + 512);
  v6 = *(v0 + 480);
  v7 = *(v0 + 488);
  if (v3)
  {
    v17 = *(v0 + 872);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v18 = v9;
    *v8 = 141558275;
    *(v8 + 4) = 1752392040;
    *(v8 + 12) = 2081;
    v10 = Handle.identifier.getter();
    v12 = v11;
    v13 = v7 + 8;
    v17(v5, v6);
    v14 = sub_10000D01C(v10, v12, &v18);

    *(v8 + 14) = v14;
    _os_log_impl(&_mh_execute_header, v1, v2, "Successfully sent finding token over IDS for %{private,mask.hash}s", v8, 0x16u);
    sub_100004984(v9);
  }

  else
  {

    v13 = v7 + 8;
    v4(v5, v6);
  }

  *(v0 + 904) = v13;
  v15 = *(v0 + 56);

  return _swift_task_switch(sub_10040B400, v15, 0);
}