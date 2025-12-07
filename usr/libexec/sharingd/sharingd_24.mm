uint64_t sub_1003F8AC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100005C00;

  return sub_1003F87A0(a1, a2, a3);
}

uint64_t sub_1003F8B78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v3[5] = type metadata accessor for SDAuthenticationCommonOperationInput(0);
  v3[6] = swift_task_alloc();

  return _swift_task_switch(sub_1003F8C10, 0, 0);
}

uint64_t sub_1003F8C10()
{
  v20 = v0;
  v1 = v0[4];
  if (*(v1 + *(v0[5] + 28)) == 3)
  {
    v2 = qword_1009737E8;
    v3 = SFAuthenticationsDynamicStoreEnabledBioArmPath;
    if (v2 != -1)
    {
      swift_once();
      v1 = v0[4];
    }

    v4 = v0[6];
    v5 = type metadata accessor for Logger();
    sub_10000C4AC(v5, qword_10097BA28);
    sub_1003FC900(v1, v4, type metadata accessor for SDAuthenticationCommonOperationInput);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    v8 = os_log_type_enabled(v6, v7);
    v9 = v0[6];
    if (v8)
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v19 = v11;
      *v10 = 136315138;
      v12 = sub_100027340();
      v14 = v13;
      sub_1003FC968(v9, type metadata accessor for SDAuthenticationCommonOperationInput);
      v15 = sub_10000C4E4(v12, v14, &v19);

      *(v10 + 4) = v15;
      _os_log_impl(&_mh_execute_header, v6, v7, "Setting dynamic store to enabled for type %s", v10, 0xCu);
      sub_10000C60C(v11);
    }

    else
    {

      sub_1003FC968(v9, type metadata accessor for SDAuthenticationCommonOperationInput);
    }

    v16 = String._bridgeToObjectiveC()();
    sub_10001ED70(0, v16, v3);
  }

  sub_1002A9938(v0[3], v0[2]);

  v17 = v0[1];

  return v17();
}

uint64_t sub_1003F8E8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100005C00;

  return sub_1003F8B78(a1, a2, a3);
}

uint64_t sub_1003F8F3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[19] = a2;
  v3[20] = a3;
  v3[18] = a1;
  return _swift_task_switch(sub_1003F8F60, 0, 0);
}

uint64_t sub_1003F8F60()
{
  v1 = *(v0 + 160);
  sub_1002D63B0(*(v0 + 152), v0 + 16);
  v2 = *(v0 + 40);
  v3 = *(v0 + 56);
  sub_10002F5B4(v0 + 16, v2);
  v4 = (*(v3 + 24))(v2, v3);
  v5 = type metadata accessor for SDAuthenticationCommonOperationInput(0);
  sub_1003FBDAC(v1 + *(v5 + 36), v0 + 104);
  if (*(v0 + 128))
  {
    v6 = *(v0 + 152);
    sub_1000121F8((v0 + 104), v0 + 64);
    sub_10002CDC0((v0 + 64), *(v0 + 88));
    v7 = v6[3];
    v8 = v6[4];
    sub_10002CDC0(v6, v7);
    v9 = (*(v8 + 16))(v7, v8);
    v11 = v10;
    v12 = sub_1003FF018(v9, v10);
    v17 = *(v0 + 144);
    v18 = v12;
    v19 = v9;
    v21 = v20;
    sub_100026AC0(v19, v11);
    isa = Data._bridgeToObjectiveC()().super.isa;
    sub_100026AC0(v18, v21);
    sub_10000C60C((v0 + 64));
    [v4 setToken:isa];

    v23 = *(v0 + 40);
    v24 = *(v0 + 48);
    v25 = sub_10002CDC0((v0 + 16), v23);
    v17[3] = v23;
    v17[4] = *(v24 + 8);
    v26 = sub_10002F604(v17);
    (*(*(v23 - 8) + 16))(v26, v25, v23);
  }

  else
  {

    sub_100005508(v0 + 104, &qword_1009819B0, &qword_100800360);
    v13 = sub_100010F88(37, 0xD000000000000027, 0x800000010078EF00);
    v15 = v14;
    sub_1000115C8();
    swift_allocError();
    *v16 = v13;
    *(v16 + 8) = v15;
    swift_willThrow();
  }

  sub_10000C60C((v0 + 16));
  v27 = *(v0 + 8);

  return v27();
}

uint64_t sub_1003F91F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100005C00;

  return sub_1003F8F3C(a1, a2, a3);
}

uint64_t sub_1003F92A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[19] = a2;
  v3[20] = a3;
  v3[18] = a1;
  return _swift_task_switch(sub_1003F92CC, 0, 0);
}

uint64_t sub_1003F92CC()
{
  v1 = *(v0 + 160);
  sub_1002D63B0(*(v0 + 152), v0 + 16);
  v2 = *(v0 + 40);
  v3 = *(v0 + 56);
  sub_10002F5B4(v0 + 16, v2);
  v4 = (*(v3 + 24))(v2, v3);
  v5 = type metadata accessor for SDAuthenticationCommonOperationInput(0);
  sub_1003FBDAC(v1 + *(v5 + 36), v0 + 104);
  if (*(v0 + 128))
  {
    v6 = *(v0 + 152);
    sub_1000121F8((v0 + 104), v0 + 64);
    sub_10002CDC0((v0 + 64), *(v0 + 88));
    v7 = v6[3];
    v8 = v6[4];
    sub_10002CDC0(v6, v7);
    v9 = (*(v8 + 16))(v7, v8);
    v11 = v10;
    v12 = sub_1003FFEE0(v9, v10);
    v17 = *(v0 + 144);
    v18 = v12;
    v19 = v9;
    v21 = v20;
    sub_100026AC0(v19, v11);
    isa = Data._bridgeToObjectiveC()().super.isa;
    sub_100026AC0(v18, v21);
    sub_10000C60C((v0 + 64));
    [v4 setToken:isa];

    v23 = *(v0 + 40);
    v24 = *(v0 + 48);
    v25 = sub_10002CDC0((v0 + 16), v23);
    v17[3] = v23;
    v17[4] = *(v24 + 8);
    v26 = sub_10002F604(v17);
    (*(*(v23 - 8) + 16))(v26, v25, v23);
  }

  else
  {

    sub_100005508(v0 + 104, &qword_1009819B0, &qword_100800360);
    v13 = sub_100010F88(37, 0xD000000000000027, 0x800000010078EF00);
    v15 = v14;
    sub_1000115C8();
    swift_allocError();
    *v16 = v13;
    *(v16 + 8) = v15;
    swift_willThrow();
  }

  sub_10000C60C((v0 + 16));
  v27 = *(v0 + 8);

  return v27();
}

uint64_t sub_1003F9564(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100005C00;

  return sub_1003F92A8(a1, a2, a3);
}

uint64_t sub_1003F9614(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[13] = a2;
  v3[14] = a3;
  v3[12] = a1;
  return _swift_task_switch(sub_1003F9638, 0, 0);
}

uint64_t sub_1003F9638()
{
  v1 = *(v0 + 104);
  v2 = v1[3];
  v3 = v1[5];
  sub_10002CDC0(v1, v2);
  v4 = (*(v3 + 16))(v2, v3);
  if (v5 >> 60 == 15)
  {
    v6 = sub_100010F88(1, 0xD000000000000010, 0x800000010078F4F0);
    v8 = v7;
    sub_1000115C8();
    swift_allocError();
    *v9 = v6;
    *(v9 + 8) = v8;
    swift_willThrow();
  }

  else
  {
    v10 = v4;
    v11 = v5;
    v12 = *(v0 + 112);
    v13 = type metadata accessor for SDAuthenticationCommonOperationInput(0);
    sub_1003FBDAC(v12 + *(v13 + 36), v0 + 56);
    if (*(v0 + 80))
    {
      v14 = *(v0 + 104);
      sub_1000121F8((v0 + 56), v0 + 16);
      sub_10002CDC0((v0 + 16), *(v0 + 40));
      v15 = v1[3];
      v16 = v14[4];
      sub_10002CDC0(v14, v15);
      v17 = (*(v16 + 16))(v15, v16);
      v19 = v18;
      sub_1003FF724(v17, v18, v10, v11);
      v26 = *(v0 + 96);
      v25 = *(v0 + 104);
      sub_100026AC0(v17, v19);
      sub_10000C60C((v0 + 16));
      v27 = v1[3];
      v28 = v14[4];
      v29 = sub_10002CDC0(v25, v27);
      v26[3] = v27;
      v26[4] = *(v28 + 8);
      v30 = sub_10002F604(v26);
      (*(*(v27 - 8) + 16))(v30, v29, v27);
      sub_10028BCC0(v10, v11);
      v31 = *(v0 + 8);
      goto LABEL_7;
    }

    sub_100005508(v0 + 56, &qword_1009819B0, &qword_100800360);
    v20 = sub_100010F88(37, 0xD000000000000027, 0x800000010078EF00);
    v22 = v21;
    sub_1000115C8();
    swift_allocError();
    *v23 = v20;
    *(v23 + 8) = v22;
    swift_willThrow();
    sub_10028BCC0(v10, v11);
  }

  v31 = *(v0 + 8);
LABEL_7:

  return v31();
}

uint64_t sub_1003F9928(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100005C00;

  return sub_1003F9614(a1, a2, a3);
}

uint64_t sub_1003F99D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[18] = a2;
  v3[19] = a3;
  v3[17] = a1;
  return _swift_task_switch(sub_1003F99FC, 0, 0);
}

uint64_t sub_1003F99FC()
{
  v1 = *(v0 + 152);
  sub_1002A9938(*(v0 + 144), v0 + 16);
  v2 = type metadata accessor for SDAuthenticationCommonOperationInput(0);
  sub_1003FBDAC(v1 + *(v2 + 36), v0 + 96);
  if (*(v0 + 120))
  {
    v3 = *(v0 + 152);
    sub_1000121F8((v0 + 96), v0 + 56);
    v4 = sub_10002CDC0((v0 + 56), *(v0 + 80));
    v5 = *(v2 + 24);
    v6 = *(*v4 + OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication10LTKSession_localLTK);
    v7 = v3 + v5;
    v8 = (*v4 + OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication10LTKSession_remoteDeviceID);
    v9 = *v8;
    v10 = v8[1];
    v11 = *(v6 + 112);
    v12 = swift_task_alloc();
    v12[2] = v6;
    v12[3] = v9;
    v12[4] = v10;
    v12[5] = v7;
    v13 = swift_task_alloc();
    *(v13 + 16) = sub_1003FC588;
    *(v13 + 24) = v12;
    os_unfair_lock_lock(v11 + 4);
    sub_1003206A8(v14);
    os_unfair_lock_unlock(v11 + 4);

    sub_10002CDC0((v0 + 56), *(v0 + 80));
    v15 = sub_1003FF8FC(0, 0xF000000000000000);
    v21 = *(v0 + 136);
    v22 = *(v0 + 40);
    v23 = *(v0 + 48);
    v24 = v15;
    v26 = v25;
    sub_10002F5B4(v0 + 16, v22);
    v27 = (*(v23 + 24))(v22, v23);
    isa = Data._bridgeToObjectiveC()().super.isa;
    [v27 setToken:isa];

    v29 = *(v0 + 40);
    v30 = *(v0 + 48);
    v31 = sub_10002CDC0((v0 + 16), v29);
    v21[3] = v29;
    v21[4] = *(v30 + 8);
    v32 = sub_10002F604(v21);
    (*(*(v29 - 8) + 16))(v32, v31, v29);
    sub_100026AC0(v24, v26);
    sub_10000C60C((v0 + 56));
  }

  else
  {
    sub_100005508(v0 + 96, &qword_1009819B0, &qword_100800360);
    v16 = sub_100010F88(37, 0xD000000000000027, 0x800000010078EF00);
    v18 = v17;
    sub_1000115C8();
    swift_allocError();
    *v19 = v16;
    *(v19 + 8) = v18;
    swift_willThrow();
  }

  sub_10000C60C((v0 + 16));
  v33 = *(v0 + 8);

  return v33();
}

uint64_t sub_1003F9CE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100005C00;

  return sub_1003F99D8(a1, a2, a3);
}

uint64_t sub_1003F9D98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[19] = a2;
  v3[20] = a3;
  v3[18] = a1;
  return _swift_task_switch(sub_1003F9DBC, 0, 0);
}

uint64_t sub_1003F9DBC()
{
  v1 = *(v0 + 160);
  sub_1002D63B0(*(v0 + 152), v0 + 16);
  v2 = type metadata accessor for SDAuthenticationCommonOperationInput(0);
  sub_1003FBDAC(v1 + *(v2 + 36), v0 + 104);
  if (*(v0 + 128))
  {
    v3 = *(v0 + 152);
    sub_1000121F8((v0 + 104), v0 + 64);
    sub_10002CDC0((v0 + 64), *(v0 + 88));
    v4 = v3[3];
    v5 = v3[4];
    sub_10002CDC0(v3, v4);
    v6 = (*(v5 + 16))(v4, v5);
    v8 = v7;
    v9 = sub_1003FF8FC(v6, v7);
    v14 = *(v0 + 144);
    v15 = v9;
    v17 = v16;
    sub_100026AC0(v6, v8);
    sub_10000C60C((v0 + 64));
    v18 = *(v0 + 40);
    v19 = *(v0 + 56);
    sub_10002F5B4(v0 + 16, v18);
    v20 = (*(v19 + 24))(v18, v19);
    isa = Data._bridgeToObjectiveC()().super.isa;
    [v20 setToken:isa];

    v22 = *(v0 + 40);
    v23 = *(v0 + 48);
    v24 = sub_10002CDC0((v0 + 16), v22);
    v14[3] = v22;
    v14[4] = *(v23 + 8);
    v25 = sub_10002F604(v14);
    (*(*(v22 - 8) + 16))(v25, v24, v22);
    sub_100026AC0(v15, v17);
  }

  else
  {
    sub_100005508(v0 + 104, &qword_1009819B0, &qword_100800360);
    v10 = sub_100010F88(37, 0xD000000000000027, 0x800000010078EF00);
    v12 = v11;
    sub_1000115C8();
    swift_allocError();
    *v13 = v10;
    *(v13 + 8) = v12;
    swift_willThrow();
  }

  sub_10000C60C((v0 + 16));
  v26 = *(v0 + 8);

  return v26();
}

uint64_t sub_1003FA054(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100005C00;

  return sub_1003F9D98(a1, a2, a3);
}

uint64_t sub_1003FA104(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[13] = a2;
  v3[14] = a3;
  v3[12] = a1;
  return _swift_task_switch(sub_1003FA128, 0, 0);
}

uint64_t sub_1003FA128()
{
  v1 = *(v0 + 112);
  v2 = type metadata accessor for SDAuthenticationCommonOperationInput(0);
  sub_1003FBDAC(v1 + *(v2 + 36), v0 + 56);
  if (*(v0 + 80))
  {
    v3 = *(v0 + 104);
    sub_1000121F8((v0 + 56), v0 + 16);
    sub_10002CDC0((v0 + 16), *(v0 + 40));
    v4 = v3[3];
    v5 = v3[4];
    sub_10002CDC0(v3, v4);
    v6 = (*(v5 + 16))(v4, v5);
    v8 = v7;
    sub_10040035C(v6, v7);
    v14 = *(v0 + 96);
    v13 = *(v0 + 104);
    sub_100026AC0(v6, v8);
    sub_10000C60C((v0 + 16));
    v16 = v3[3];
    v15 = v3[4];
    v17 = sub_10002CDC0(v13, v16);
    v14[3] = v16;
    v14[4] = *(v15 + 8);
    v18 = sub_10002F604(v14);
    (*(*(v16 - 8) + 16))(v18, v17, v16);
  }

  else
  {
    sub_100005508(v0 + 56, &qword_1009819B0, &qword_100800360);
    v9 = sub_100010F88(37, 0xD000000000000027, 0x800000010078EF00);
    v11 = v10;
    sub_1000115C8();
    swift_allocError();
    *v12 = v9;
    *(v12 + 8) = v11;
    swift_willThrow();
  }

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_1003FA328(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100005C00;

  return sub_1003FA104(a1, a2, a3);
}

uint64_t sub_1003FA3D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[13] = a2;
  v3[14] = a3;
  v3[12] = a1;
  return _swift_task_switch(sub_1003FA3FC, 0, 0);
}

uint64_t sub_1003FA3FC()
{
  v1 = sub_1003E7E2C();
  v4 = v3;
  v5 = v1;
  v6 = *(v0 + 112);
  v7 = type metadata accessor for SDAuthenticationCommonOperationInput(0);
  sub_1003FBDAC(v6 + *(v7 + 36), v0 + 56);
  if (*(v0 + 80))
  {
    sub_1000121F8((v0 + 56), v0 + 16);
    v8 = sub_10002CDC0((v0 + 16), *(v0 + 40));
    UUID.uuidString.getter();
    v9 = *(*v8 + OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication10LTKSession_localLTK);
    v10 = *(v9 + 112);
    v11 = swift_task_alloc();
    v11[2] = v9;
    v11[3] = v5;
    v11[4] = v4;
    v11[5] = sub_10031CCA8;
    v11[6] = 0;
    v12 = swift_task_alloc();
    *(v12 + 16) = sub_1003FCB78;
    *(v12 + 24) = v11;
    os_unfair_lock_lock(v10 + 4);
    sub_1003206A8(v13);
    os_unfair_lock_unlock(v10 + 4);

    sub_10000C60C((v0 + 16));
    if (qword_1009737E8 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_10000C4AC(v14, qword_10097BA28);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "Record Last Registration", v17, 2u);
    }

    v19 = *(v0 + 96);
    v18 = *(v0 + 104);

    sub_1002A9938(v18, v19);
    v20 = *(v0 + 8);
  }

  else
  {

    sub_100005508(v0 + 56, &qword_1009819B0, &qword_100800360);
    v21 = sub_100010F88(37, 0xD000000000000027, 0x800000010078EF00);
    v23 = v22;
    sub_1000115C8();
    swift_allocError();
    *v24 = v21;
    *(v24 + 8) = v23;
    swift_willThrow();
    v20 = *(v0 + 8);
  }

  return v20();
}

uint64_t sub_1003FA6D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100005C00;

  return sub_1003FA3D8(a1, a2, a3);
}

uint64_t sub_1003FA784(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[13] = a2;
  v3[14] = a3;
  v3[12] = a1;
  return _swift_task_switch(sub_1003FA7A8, 0, 0);
}

uint64_t sub_1003FA7A8()
{
  v1 = sub_1003E7E2C();
  v4 = v3;
  v5 = v1;
  v6 = *(v0 + 112);
  v7 = type metadata accessor for SDAuthenticationCommonOperationInput(0);
  sub_1003FBDAC(v6 + *(v7 + 36), v0 + 56);
  if (*(v0 + 80))
  {
    v8 = *(v0 + 112);
    sub_1000121F8((v0 + 56), v0 + 16);
    v9 = sub_10002CDC0((v0 + 16), *(v0 + 40));
    v10 = UUID.uuidString.getter();
    v12 = v11;
    LOBYTE(v8) = *(v8 + *(v7 + 32));
    v13 = *(*v9 + OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication10LTKSession_localLTK);
    v14 = swift_task_alloc();
    v28 = v8;
    *(v14 + 16) = v8;
    *(v14 + 24) = v10;
    *(v14 + 32) = v12;
    *(v14 + 40) = v13;
    v15 = *(v13 + 112);
    v16 = swift_task_alloc();
    v16[2] = v13;
    v16[3] = v5;
    v16[4] = v4;
    v16[5] = sub_1003FC9C8;
    v16[6] = v14;
    v17 = swift_task_alloc();
    *(v17 + 16) = sub_1003FCB78;
    *(v17 + 24) = v16;
    os_unfair_lock_lock(v15 + 4);
    sub_1003206A8(v18);
    os_unfair_lock_unlock(v15 + 4);

    sub_10000C60C((v0 + 16));
    if (qword_1009737E8 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_10000C4AC(v19, qword_10097BA28);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v20, v21, "Record PairingID and Last Registration Date", v22, 2u);
    }

    if ((v28 & 1) == 0)
    {
      sub_10002CDC0(*(v0 + 112), *(*(v0 + 112) + 24));
      sub_1006D2DF0();
    }

    sub_1002A9938(*(v0 + 104), *(v0 + 96));
    v23 = *(v0 + 8);
  }

  else
  {

    sub_100005508(v0 + 56, &qword_1009819B0, &qword_100800360);
    v24 = sub_100010F88(37, 0xD000000000000027, 0x800000010078EF00);
    v26 = v25;
    sub_1000115C8();
    swift_allocError();
    *v27 = v24;
    *(v27 + 8) = v26;
    swift_willThrow();
    v23 = *(v0 + 8);
  }

  return v23();
}

uint64_t sub_1003FAAD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100005C00;

  return sub_1003FA784(a1, a2, a3);
}

uint64_t sub_1003FAB80(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_1003FABA0, 0, 0);
}

uint64_t sub_1003FABA0()
{
  v1 = v0[3];
  v2 = v1[3];
  v3 = v1[4];
  sub_10002CDC0(v1, v2);
  if ((*(v3 + 24))(v2, v3))
  {
    v4 = v0[2];
    v5 = v1[3];
    v6 = v1[4];
    v7 = sub_10002CDC0(v0[3], v5);
    v4[3] = v5;
    v4[4] = *(v6 + 16);
    v8 = sub_10002F604(v4);
    (*(*(v5 - 8) + 16))(v8, v7, v5);
  }

  else
  {
    v10 = sub_100010F88(10, 0xD000000000000037, 0x800000010078F2D0);
    v12 = v11;
    sub_1000115C8();
    swift_allocError();
    *v13 = v10;
    *(v13 + 8) = v12;
    swift_willThrow();
  }

  v9 = v0[1];

  return v9();
}

uint64_t sub_1003FAD04(uint64_t a1, uint64_t a2)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  return _swift_task_switch(sub_1003FAD24, 0, 0);
}

uint64_t sub_1003FAD24()
{
  v1 = v0[8];
  v2 = v1[3];
  v3 = v1[4];
  sub_10002CDC0(v1, v2);
  (*(v3 + 16))(v2, v3);
  sub_10002CDC0(v0 + 2, v0[5]);
  sub_10066A014();
  v5 = v0[7];
  v4 = v0[8];
  sub_10000C60C(v0 + 2);
  v7 = v1[3];
  v6 = v1[4];
  v8 = sub_10002CDC0(v4, v7);
  v5[3] = v7;
  v5[4] = *(v6 + 8);
  v9 = sub_10002F604(v5);
  (*(*(v7 - 8) + 16))(v9, v8, v7);
  v10 = v0[1];

  return v10();
}

uint64_t sub_1003FAE60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[13] = a2;
  v3[14] = a3;
  v3[12] = a1;
  return _swift_task_switch(sub_1003FAE84, 0, 0);
}

uint64_t sub_1003FAE84()
{
  v1 = *(v0 + 112);
  v2 = type metadata accessor for SDAuthenticationCommonOperationInput(0);
  sub_1003FBDAC(v1 + *(v2 + 36), v0 + 56);
  if (*(v0 + 80))
  {
    sub_1000121F8((v0 + 56), v0 + 16);
    sub_10002CDC0((v0 + 16), *(v0 + 40));
    sub_1003FD6F8();
    v7 = *(v0 + 96);
    v8 = *(v0 + 104);
    sub_10000C60C((v0 + 16));
    sub_1002A9938(v8, v7);
  }

  else
  {
    sub_100005508(v0 + 56, &qword_1009819B0, &qword_100800360);
    v3 = sub_100010F88(37, 0xD000000000000027, 0x800000010078EF00);
    v5 = v4;
    sub_1000115C8();
    swift_allocError();
    *v6 = v3;
    *(v6 + 8) = v5;
    swift_willThrow();
  }

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1003FAFD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100005C00;

  return sub_1003FAE60(a1, a2, a3);
}

uint64_t sub_1003FB088(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v7 = *(a1 - 8);
  v8 = __chkstk_darwin(a1);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = (*(v11 + 8))(v8);
  if (result)
  {
    v13 = (*(a2 + 16))(a1, a2);
    *&v47 = 0;
    *(&v47 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(32);

    *&v47 = 0xD00000000000001ELL;
    *(&v47 + 1) = 0x800000010078DE50;
    v14 = SFAuthenticationErrorCodeToString();
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;

    v18._countAndFlagsBits = v15;
    v18._object = v17;
    String.append(_:)(v18);

    v19 = sub_100010F88(v13, v47, *(&v47 + 1));
    v49 = v20;
    (*(v7 + 16))(v10, v4, a1);
    sub_1000276B4(0, &qword_1009758C0, off_1008C8D50);
    if (swift_dynamicCast())
    {
      v21 = v47;
      v22 = [v47 underlyingError];
      if (v22)
      {
        v23 = v22;
        v24 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v26 = v25;

        if (qword_1009737E8 != -1)
        {
          swift_once();
        }

        v27 = type metadata accessor for Logger();
        sub_10000C4AC(v27, qword_10097BA28);
        v28 = Logger.logObject.getter();
        v29 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v28, v29))
        {
          v30 = swift_slowAlloc();
          *v30 = 0;
          _os_log_impl(&_mh_execute_header, v28, v29, "underlying error exists, decoding", v30, 2u);
        }

        sub_1000276B4(0, &qword_100977280, NSKeyedUnarchiver_ptr);
        v31 = sub_1000276B4(0, &qword_1009753F0, NSError_ptr);
        v32 = static NSKeyedUnarchiver.unarchivedObject<A>(ofClass:from:)();
        if (v3)
        {

          v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v35 = v34;
        }

        else
        {
          v36 = v32;
          v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v35 = v37;
          if (v36)
          {
            v48 = v31;
            *&v47 = v36;
            v38 = v33;
            sub_1000106E0(&v47, v46);
            v39 = v36;
            v40 = v49;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v45 = v40;
            sub_100011170(v46, v38, v35, isUniquelyReferenced_nonNull_native);

            sub_100026AC0(v24, v26);

            v49 = v45;
            goto LABEL_14;
          }
        }

        sub_1002D298C(v33, v35, v46);

        sub_100026AC0(v24, v26);

        sub_100005508(v46, &unk_1009746F0, &qword_1007F90B0);
      }

      else
      {
      }
    }

LABEL_14:
    v42 = v49;
    sub_1000115C8();
    swift_allocError();
    *v43 = v19;
    *(v43 + 8) = v42;
    return swift_willThrow();
  }

  return result;
}

uint64_t type metadata accessor for SDAuthenticationCommonOperationInput(uint64_t a1)
{
  result = qword_10097BA98;
  if (!qword_10097BA98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1003FB530(uint64_t a1)
{
  sub_1002A6B90(319, &qword_10097BAA8, &protocol descriptor for SDAuthenticationSessionDelegate);
  if (v1 <= 0x3F)
  {
    sub_1002A6B90(319, &qword_10097BAB0, &protocol descriptor for SDIDSDevice);
    if (v2 <= 0x3F)
    {
      type metadata accessor for UUID();
      if (v3 <= 0x3F)
      {
        sub_1003FB61C(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1003FB61C(uint64_t a1)
{
  if (!qword_10097BAB8)
  {
    sub_100280938(&unk_10097BAC0, &qword_1007FFA28);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_10097BAB8);
    }
  }
}

void *sub_1003FB690(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = sub_1003FBE38(v7, a2, a3, a4);
    swift_bridgeObjectRelease_n();

    return v8;
  }

  return result;
}

void *sub_1003FB72C(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, __n128))
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

    v8 = sub_1006E3178(result, a2, a3, a4);

    return v8;
  }

  return result;
}

void *sub_1003FB7BC(uint64_t (*a1)(void *, __n128), uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v31 = a1;
  v5 = *(a3 + 32);
  v6 = ((1 << v5) + 63) >> 6;
  if ((v5 & 0x3Fu) > 0xD)
  {
    goto LABEL_22;
  }

  while (1)
  {
    v27 = v6;
    v32 = v3;
    v29 = &v26;
    __chkstk_darwin(a1);
    v28 = &v26 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v28, v7);
    v30 = 0;
    v8 = 0;
    v6 = v4 + 56;
    v9 = 1 << *(v4 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v4 + 56);
    v12 = (v9 + 63) >> 6;
    while (v11)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_12:
      v16 = v13 | (v8 << 6);
      v17 = v4;
      v18 = (*(v4 + 48) + 16 * v16);
      v19 = v18[1];
      v33[0] = *v18;
      v33[1] = v19;

      v3 = v32;
      v20 = (v31)(v33);
      v32 = v3;
      if (v3)
      {

        return swift_willThrow();
      }

      v21 = v20;

      v4 = v17;
      if (v21)
      {
        *&v28[(v16 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v16;
        if (__OFADD__(v30++, 1))
        {
          __break(1u);
          return sub_1006E395C(v28, v27, v30, v4);
        }
      }
    }

    v14 = v8;
    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v8 >= v12)
      {
        return sub_1006E395C(v28, v27, v30, v4);
      }

      v15 = *(v6 + 8 * v8);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_22:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v24 = swift_slowAlloc();
  v25 = sub_1003FB72C(v24, v6, v4, v31);

  if (!v3)
  {
    return v25;
  }

  return result;
}

double sub_1003FBA78@<D0>(void (*a1)(__int128 *__return_ptr)@<X1>, _OWORD *a2@<X8>)
{
  a1(&v5);
  if (!v2)
  {
    result = *&v5;
    *a2 = v5;
  }

  return result;
}

uint64_t sub_1003FBACC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
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

uint64_t sub_1003FBB28(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t sub_1003FBDAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10028088C(&qword_1009819B0, &qword_100800360);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

Swift::Int sub_1003FBE38(Swift::Int result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v25 = result;
  v27 = 0;
  v5 = 0;
  v6 = a3 + 56;
  v7 = 1 << *(a3 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a3 + 56);
  v10 = (v7 + 63) >> 6;
  v29 = a4 + 56;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_13:
    if (*(a4 + 16))
    {
      v26 = v11 | (v5 << 6);
      v14 = (*(a3 + 48) + 16 * v26);
      v16 = *v14;
      v15 = v14[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      v17 = Hasher._finalize()();
      v18 = -1 << *(a4 + 32);
      v19 = v17 & ~v18;
      if ((*(v29 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19))
      {
        v20 = ~v18;
        while (1)
        {
          v21 = (*(a4 + 48) + 16 * v19);
          v22 = *v21 == v16 && v21[1] == v15;
          if (v22 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            break;
          }

          v19 = (v19 + 1) & v20;
          if (((*(v29 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
          {
            goto LABEL_5;
          }
        }

        *(v25 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
        if (__OFADD__(v27++, 1))
        {
          __break(1u);
LABEL_26:

          return sub_1006E395C(v25, a2, v27, a3);
        }
      }

      else
      {
LABEL_5:
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      goto LABEL_26;
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

void *sub_1003FC048(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = a1;
  v6 = *(a1 + 32);
  v7 = v6 & 0x3F;
  v8 = ((1 << v6) + 63) >> 6;
  v9 = 8 * v8;

  if (v7 > 0xD)
  {
    goto LABEL_30;
  }

  while (1)
  {
    v34[0] = v3;
    v34[1] = v34;
    v35 = v8;
    __chkstk_darwin(v10);
    v36 = v34 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v36, v9);
    v11 = 0;
    v8 = v5 + 56;
    v12 = 1 << *(v5 + 32);
    v13 = v12 < 64 ? ~(-1 << v12) : -1;
    v14 = v13 & *(v5 + 56);
    v3 = (v12 + 63) >> 6;
    v39 = 0;
    v40 = a2 + 56;
    v37 = v5;
    while (v14)
    {
      v15 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_14:
      v18 = v15 | (v11 << 6);
      if (*(a2 + 16))
      {
        v19 = *(v5 + 48);
        v38 = v18;
        v20 = (v19 + 16 * v18);
        v22 = *v20;
        v21 = v20[1];
        Hasher.init(_seed:)();

        String.hash(into:)();
        v23 = Hasher._finalize()();
        v24 = a2;
        v25 = -1 << *(a2 + 32);
        v9 = v23 & ~v25;
        if ((*(v40 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
        {
          v26 = ~v25;
          while (1)
          {
            v27 = (*(v24 + 48) + 16 * v9);
            v28 = *v27 == v22 && v27[1] == v21;
            if (v28 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {
              break;
            }

            v9 = (v9 + 1) & v26;
            if (((*(v40 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
            {
              goto LABEL_6;
            }
          }

          v5 = v37;
          *&v36[(v38 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v38;
          v29 = __OFADD__(v39++, 1);
          a2 = v24;
          if (v29)
          {
            __break(1u);
LABEL_27:
            v30 = sub_1006E395C(v36, v35, v39, v5);

            return v30;
          }
        }

        else
        {
LABEL_6:

          a2 = v24;
          v5 = v37;
        }
      }
    }

    v16 = v11;
    while (1)
    {
      v11 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v11 >= v3)
      {
        goto LABEL_27;
      }

      v17 = *(v8 + 8 * v11);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v14 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_30:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v32 = swift_slowAlloc();

  v33 = sub_1003FB690(v32, v8, v5, a2);

  return v33;
}

unint64_t sub_1003FC3A8()
{
  v0 = static Array._allocateBufferUninitialized(minimumCapacity:)();
  *(v0 + 16) = 64;
  *(v0 + 32) = 0u;
  v1 = (v0 + 32);
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0u;
  if (SecRandomCopyBytes(kSecRandomDefault, 0x40uLL, (v0 + 32)))
  {

    _StringGuts.grow(_:)(42);

    v2._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v2);

    v3._countAndFlagsBits = 41;
    v3._object = 0xE100000000000000;
    String.append(_:)(v3);
    v4 = sub_100010F88(10, 0xD000000000000027, 0x800000010078F080);
    v6 = v5;
    sub_1000115C8();
    swift_allocError();
    *v7 = v4;
    *(v7 + 8) = v6;
    return swift_willThrow();
  }

  else
  {
    v9 = sub_1004E53D0(v1, 0x40uLL);

    return v9;
  }
}

double sub_1003FC8BC@<D0>(_OWORD *a1@<X8>)
{
  (*(v1 + 16))(&v5);
  if (!v2)
  {
    result = *&v5;
    *a1 = v5;
  }

  return result;
}

uint64_t sub_1003FC900(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1003FC968(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1003FCA0C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  v4 = *(a1 + 48);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = v4;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1003FCA70(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1003FCAB8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  v4 = *(a1 + 48);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = v4;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1003FCBD8()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_10097C2F8);
  v1 = sub_10000C4AC(v0, qword_10097C2F8);
  if (qword_100973758 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C4AC(v0, qword_1009A0A50);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1003FCCA0(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = v4 + OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication10LTKSession_aksSession;
  if (*(v4 + OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication10LTKSession_aksSession + 8) != 1)
  {
    v13 = 0xD000000000000038;
    v14 = 0x800000010078F880;
    v15 = 1;
    goto LABEL_5;
  }

  v7 = *(v4 + OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication10LTKSession_localLTK);
  v9 = *(v4 + OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication10LTKSession_remoteDeviceID);
  v8 = *(v4 + OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication10LTKSession_remoteDeviceID + 8);
  v10 = sub_10031D924();
  v79 = v10;
  if (v11 >> 60 == 15)
  {
    _StringGuts.grow(_:)(32);

    v12._countAndFlagsBits = v9;
    v12._object = v8;
    String.append(_:)(v12);
    v13 = 0xD00000000000001ELL;
    v14 = 0x800000010078F6C0;
    v15 = 10;
LABEL_5:
    v16 = sub_100010F88(v15, v13, v14);
    v18 = v17;
    sub_1000115C8();
    swift_allocError();
    *v19 = v16;
    *(v19 + 8) = v18;
    return swift_willThrow();
  }

  v70 = v6;
  v74 = v11;
  v21 = *(v4 + OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication10LTKSession_role);
  v22 = *(v7 + 112);
  __chkstk_darwin(v10);
  os_unfair_lock_lock(v22 + 4);
  sub_1002F5418(v23);
  if (v5)
  {
    os_unfair_lock_unlock(v22 + 4);
    return sub_10028BCC0(v79, v74);
  }

  os_unfair_lock_unlock(v22 + 4);
  v24 = v83;
  v25 = *(v7 + 112);
  v27 = __chkstk_darwin(v26);
  __chkstk_darwin(v27);
  os_unfair_lock_lock(v25 + 4);
  sub_1002F5418(v28);
  os_unfair_lock_unlock(v25 + 4);
  v29 = *(&v83 + 1);
  v31 = a2;
  v30 = a1;
  v71 = a1;
  v32 = a2;
  v33 = v74;
  v34 = v79;
  v35 = *(&v83 + 1);
  v69 = *(&v83 + 1);
  v36 = v83;
  if (a2 >> 60 == 15)
  {
    sub_1002A9924(v83, *(&v83 + 1));
    v29 = *(&v83 + 1);
    v31 = a2;
    v30 = a1;
    v32 = *(&v83 + 1);
    v71 = v83;
  }

  v37 = *(v4 + OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication10LTKSession_type);
  if (v37 > 10)
  {
    if (v37 != 11 && v37 != 19)
    {
      if (v37 == 20)
      {
        goto LABEL_14;
      }

LABEL_18:
      v38 = 2;
      goto LABEL_22;
    }

    v38 = 10;
  }

  else
  {
    switch(v37)
    {
      case 4:
        v38 = 7;
        break;
      case 6:
        v38 = 8;
        break;
      case 7:
LABEL_14:
        v38 = 9;
        break;
      default:
        goto LABEL_18;
    }
  }

LABEL_22:
  v78 = v32;
  v39 = v32 >> 60;
  v41 = v32 >> 60 != 15 && v29 >> 60 == 15;
  sub_1002A9924(v30, v31);
  v76 = sub_100311EC0(v38, v21, v41);
  if (qword_1009735C0 != -1)
  {
    swift_once();
  }

  v42 = type metadata accessor for Logger();
  sub_10000C4AC(v42, qword_100977C58);
  sub_100294008(v83, *(&v83 + 1));
  sub_1002A9924(v79, v74);
  v43 = Logger.logObject.getter();
  v44 = static os_log_type_t.default.getter();
  sub_100026AC0(v83, *(&v83 + 1));
  sub_10028BCC0(v79, v74);
  v67 = v83;
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    v68 = v39;
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    *&v83 = v47;
    *v45 = 136315650;
    v48 = sub_1003112B8(v76);
    v50 = sub_10000C4E4(v48, v49, &v83);
    v34 = v79;

    *(v45 + 4) = v50;
    v36 = v24;
    *(v45 + 12) = 2112;
    v51.super.isa = Data._bridgeToObjectiveC()().super.isa;
    *(v45 + 14) = v51;
    v46->super.isa = v51.super.isa;
    *(v45 + 22) = 2112;
    v52.super.isa = Data._bridgeToObjectiveC()().super.isa;
    *(v45 + 24) = v52;
    v46[1].super.isa = v52.super.isa;
    _os_log_impl(&_mh_execute_header, v43, v44, "Creating AKSSession with flags: %s localLTK: %@ remoteLTK: %@", v45, 0x20u);
    sub_10028088C(&qword_100975400, &qword_1007F65D0);
    swift_arrayDestroy();
    v39 = v68;

    sub_10000C60C(v47);
    v35 = *(&v24 + 1);
  }

  LODWORD(v81) = 0;
  if (v39 >= 0xF)
  {
    v53 = 0;
  }

  else
  {
    v53 = v71;
  }

  if (v39 >= 0xF)
  {
    v54 = 0xC000000000000000;
  }

  else
  {
    v54 = v78;
  }

  v55 = v54 >> 62;
  if ((v54 >> 62) > 1)
  {
    if (v55 != 2)
    {
      *(&v83 + 6) = 0;
      *&v83 = 0;
      sub_100294008(v36, v35);
      sub_1002A9924(v34, v74);
      sub_1002A9924(v71, v78);
      goto LABEL_52;
    }

    v56 = *(v53 + 16);
    v57 = *(v53 + 24);
    sub_100294008(v36, v35);
    sub_1002A9924(v34, v74);
    sub_1002A9924(v71, v78);
    if (__DataStorage._bytes.getter() && __OFSUB__(v56, __DataStorage._offset.getter()))
    {
      goto LABEL_64;
    }

    if (!__OFSUB__(v57, v56))
    {
      __DataStorage._length.getter();
      v58 = v36;
      v59 = v35;
      v60 = v34;
      v33 = v74;
LABEL_50:
      sub_10030DF94(v58, v59, v60, v33, &v83);
      sub_100026AC0(v36, v35);
      sub_10028BCC0(v34, v33);
      v61 = v83;
      goto LABEL_53;
    }

LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  if (v55)
  {
    if (v53 >> 32 >= v53)
    {
      sub_100294008(v36, v35);
      sub_1002A9924(v34, v74);
      sub_1002A9924(v71, v78);
      if (__DataStorage._bytes.getter() && __OFSUB__(v53, __DataStorage._offset.getter()))
      {
LABEL_65:
        __break(1u);
      }

      v33 = v74;
      __DataStorage._length.getter();
      v58 = v36;
      v59 = v35;
      v60 = v34;
      goto LABEL_50;
    }

    __break(1u);
    goto LABEL_62;
  }

  *&v83 = v53;
  WORD4(v83) = v54;
  BYTE10(v83) = BYTE2(v54);
  BYTE11(v83) = BYTE3(v54);
  BYTE12(v83) = BYTE4(v54);
  BYTE13(v83) = BYTE5(v54);
  sub_100294008(v36, v35);
  sub_1002A9924(v34, v74);
  sub_1002A9924(v71, v78);
LABEL_52:
  sub_10030DF94(v36, v35, v34, v74, &v80);
  sub_100026AC0(v36, v35);
  sub_10028BCC0(v34, v74);
  v61 = v80;
LABEL_53:
  sub_100311810(v61, 0xD00000000000001CLL, 0x800000010078F840);
  v62 = v81;
  if (qword_1009735C8 != -1)
  {
    swift_once();
  }

  TaskLocal.get()();
  sub_100026AC0(v53, v54);
  v63 = 0;
  if (BYTE4(v83))
  {
    v65 = a4;
    v64 = a3;
    goto LABEL_60;
  }

  v65 = a4;
  v64 = a3;
  if (v83)
  {
    if ((v83 & 0x80000000) == 0)
    {
      v63 = -v83 << 32;
      goto LABEL_60;
    }

    goto LABEL_63;
  }

LABEL_60:
  *v70 = v63 | v62;
  *(v70 + 8) = 0;
  v81 = sub_1004BD0BC(v64, v65, v63 | v62);
  v82 = v66;
  sub_10028088C(&qword_100974E10, &qword_1007FC4C0);
  Optional.tryUnwrap(_:file:line:)();
  sub_10028BCC0(v81, v82);
  sub_10028BCC0(v67, v69);
  sub_10028BCC0(v71, v78);
  sub_100026AC0(v24, v35);
  sub_10028BCC0(v34, v33);
  return v83;
}

void sub_1003FD6F8()
{
  v2 = *(v0 + OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication10LTKSession_aksSession + 8);
  v14 = *(v0 + OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication10LTKSession_aksSession);
  v15 = v2;
  sub_10028088C(&qword_10097C2A0, &qword_100800F80);
  Optional.tryUnwrap(_:file:line:)();
  if (!v1)
  {
    if (qword_1009737F0 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_10000C4AC(v3, qword_10097C2F8);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v14 = v7;
      *v6 = 136315138;
      v8 = sub_1004BD7D4();
      v10 = sub_10000C4E4(v8, v9, &v14);

      *(v6 + 4) = v10;
      _os_log_impl(&_mh_execute_header, v4, v5, "Confirm aksSession: %s", v6, 0xCu);
      sub_10000C60C(v7);
    }

    v14 = 0;
    v11 = aks_remote_peer_confirm();
    v12 = sub_1004BD8E4(v11, v14, 0, 0xD000000000000021, 0x800000010078F920);
    sub_10028BCC0(v12, v13);
    sub_1003FD950();
  }
}

void sub_1003FD950()
{
  if (qword_1009737F0 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10000C4AC(v0, qword_10097C2F8);

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v14[0] = v4;
    *v3 = 136315138;
    type metadata accessor for UUID();
    sub_100349CFC();
    v5 = dispatch thunk of CustomStringConvertible.description.getter();
    v7 = sub_10000C4E4(v5, v6, v14);

    *(v3 + 4) = v7;
    _os_log_impl(&_mh_execute_header, v1, v2, "End AKSSession: %s", v3, 0xCu);
    sub_10000C60C(v4);
  }

  v9 = __chkstk_darwin(v8);
  v10 = __chkstk_darwin(v9);
  v12 = *(v11 + 112);
  v13 = __chkstk_darwin(v10);
  __chkstk_darwin(v13);
  os_unfair_lock_lock(v12 + 4);
  sub_100015670(v14);
  os_unfair_lock_unlock(v12 + 4);
}

unint64_t sub_1003FDBE8()
{
  sub_10028088C(&qword_10097C2A0, &qword_100800F80);
  result = Optional.tryUnwrap(_:file:line:)();
  if (!v0)
  {
    v2 = aks_remote_session_token();
    return sub_10031205C(v2, 0, 0, 0xD00000000000001ELL, 0x800000010078F900);
  }

  return result;
}

uint64_t sub_1003FDD00()
{
  v2 = *(v0 + OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication10LTKSession_remoteDeviceID);
  v3 = *(v0 + OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication10LTKSession_remoteDeviceID + 8);
  v4 = sub_10031D924();
  if (v5 >> 60 == 15)
  {
    _StringGuts.grow(_:)(32);

    v6._countAndFlagsBits = v2;
    v6._object = v3;
    String.append(_:)(v6);
    v7 = sub_100010F88(10, 0xD00000000000001ELL, 0x800000010078F6C0);
    v9 = v8;
    sub_1000115C8();
    swift_allocError();
    *v10 = v7;
    *(v10 + 8) = v9;
    return swift_willThrow();
  }

  v12 = v4;
  v13 = v5;
  isa = Data._bridgeToObjectiveC()().super.isa;
  sub_10005CB84(isa);

  v15 = v13 >> 62;
  if ((v13 >> 62) > 1)
  {
    if (v15 != 2)
    {
      if (qword_1009735C8 == -1)
      {
LABEL_30:
        TaskLocal.get()();
        if ((v31 & 1) != 0 || !v30 || (v30 & 0x80000000) == 0)
        {
          goto LABEL_33;
        }

        goto LABEL_70;
      }

LABEL_64:
      swift_once();
      goto LABEL_30;
    }

    v16 = *(v12 + 16);
    v17 = *(v12 + 24);
    if (__DataStorage._bytes.getter() && __OFSUB__(v16, __DataStorage._offset.getter()))
    {
      __break(1u);
LABEL_68:
      __break(1u);
LABEL_69:
      __break(1u);
LABEL_70:
      __break(1u);
      goto LABEL_71;
    }

    if (__OFSUB__(v17, v16))
    {
      __break(1u);
    }

    else
    {
      __DataStorage._length.getter();
      if (qword_1009735C8 == -1)
      {
        goto LABEL_16;
      }
    }

    swift_once();
LABEL_16:
    TaskLocal.get()();
    if ((v33 & 1) != 0 || !v32 || (v32 & 0x80000000) == 0)
    {
      goto LABEL_33;
    }

    __break(1u);
    goto LABEL_20;
  }

  if (!v15)
  {
    if (qword_1009735C8 != -1)
    {
      swift_once();
    }

    TaskLocal.get()();
    if ((v31 & 1) != 0 || !v30 || (v30 & 0x80000000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_69;
  }

LABEL_20:
  if (v12 >> 32 < v12)
  {
    __break(1u);
    goto LABEL_64;
  }

  if (__DataStorage._bytes.getter() && __OFSUB__(v12, __DataStorage._offset.getter()))
  {
    goto LABEL_68;
  }

  __DataStorage._length.getter();
  if (qword_1009735C8 != -1)
  {
    swift_once();
  }

  TaskLocal.get()();
  if ((v33 & 1) == 0 && v32 && v32 < 0)
  {
LABEL_71:
    __break(1u);
  }

LABEL_33:
  state = aks_remote_peer_get_state();
  sub_100311810(state, 0xD000000000000023, 0x800000010078B750);
  if (v1)
  {
    return sub_10028BCC0(v12, v13);
  }

  v35 = 0;
  memset(v34, 0, sizeof(v34));
  v19 = sub_10040080C(v34);
  if (v19 > 4)
  {
    if (v19 <= 7)
    {
      if (v19 != 5)
      {
        if (v19 == 6)
        {
          v20 = 0x800000010078F770;
          v21 = 27;
        }

        else
        {
          v20 = 0x800000010078F740;
          v21 = 5;
        }

        goto LABEL_52;
      }

      v24 = "teTooManyFailedPasscodeEntries";
      v22 = 0xD00000000000002CLL;
LABEL_59:
      v20 = v24 | 0x8000000000000000;
      v21 = 27;
      goto LABEL_61;
    }

    switch(v19)
    {
      case 8:
        v24 = "ogs for more details";
        v22 = 0xD00000000000001CLL;
        goto LABEL_59;
      case 9:
        v22 = 0x64656D72616E55;
        v21 = 36;
        v20 = 0xE700000000000000;
        goto LABEL_61;
      case 10:
        v22 = 0x6967657220746F4ELL;
        v20 = 0xEE00646572657473;
LABEL_56:
        v21 = 11;
        goto LABEL_61;
    }

LABEL_60:
    v25 = Data._bridgeToObjectiveC()().super.isa;
    sub_10005CB84(v25);

    v22 = 0xD000000000000034;
    v20 = 0x800000010078F6E0;
    v21 = 10;
    goto LABEL_61;
  }

  if (v19 <= 1)
  {
    if (!v19)
    {
      v22 = 0xD00000000000001ALL;
      v20 = 0x800000010078F820;
      v21 = 33;
LABEL_61:
      v26 = sub_100010F88(v21, v22, v20);
      v28 = v27;
      sub_1000115C8();
      swift_allocError();
      *v29 = v26;
      *(v29 + 8) = v28;
      swift_willThrow();
      return sub_10028BCC0(v12, v13);
    }

    if (v19 != 1)
    {
      goto LABEL_60;
    }

    v23 = "teOnlyEscrowAvailable";
    v22 = 0xD00000000000001ELL;
LABEL_55:
    v20 = v23 | 0x8000000000000000;
    goto LABEL_56;
  }

  if (v19 == 2)
  {
    v23 = "teNoRemoteUnlockWithinWindow";
    v22 = 0xD000000000000025;
    goto LABEL_55;
  }

  if (v19 != 3)
  {
    v20 = 0x800000010078F740;
    v21 = 8;
LABEL_52:
    v22 = 0xD00000000000002ELL;
    goto LABEL_61;
  }

  return sub_10028BCC0(v12, v13);
}

uint64_t sub_1003FE39C(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = v4 + OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication10LTKSession_aksSession;
  if (*(v4 + OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication10LTKSession_aksSession + 8) != 1)
  {
    v15 = 0xD000000000000038;
    v16 = 0x800000010078F880;
    v17 = 1;
    goto LABEL_6;
  }

  v7 = v4;
  v8 = *(v4 + OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication10LTKSession_remoteDeviceID);
  v9 = *(v4 + OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication10LTKSession_remoteDeviceID + 8);
  result = sub_1003FE9C0(a1, a2, v8, v9);
  if (v5)
  {
    return result;
  }

  v11 = *(v4 + OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication10LTKSession_localLTK);
  v12 = sub_10031D924();
  if (v13 >> 60 == 15)
  {
    _StringGuts.grow(_:)(32);

    v14._countAndFlagsBits = v8;
    v14._object = v9;
    String.append(_:)(v14);
    v15 = 0xD00000000000001ELL;
    v16 = 0x800000010078F6C0;
    v17 = 10;
LABEL_6:
    v18 = sub_100010F88(v17, v15, v16);
    v20 = v19;
    sub_1000115C8();
    swift_allocError();
    *v21 = v18;
    *(v21 + 8) = v20;
    return swift_willThrow();
  }

  v22 = v13;
  v50 = v12;
  v23 = *(v7 + OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication10LTKSession_role);
  v24 = *(v11 + 112);
  __chkstk_darwin(v12);
  os_unfair_lock_lock(v24 + 4);
  sub_1003206A8(v25);
  os_unfair_lock_unlock(v24 + 4);
  v26 = *(&v56 + 1);
  v27 = v56;
  if ((*(v7 + OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication10LTKSession_type) - 3) >= 2)
  {
    v28 = 4;
  }

  else
  {
    v28 = 6;
  }

  v49 = sub_100311EC0(v28, v23, 0);
  if (qword_1009735C0 != -1)
  {
    swift_once();
  }

  v29 = type metadata accessor for Logger();
  sub_10000C4AC(v29, qword_100977C58);
  sub_100294008(v56, *(&v56 + 1));
  v30 = v50;
  sub_1002A9924(v50, v22);
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.default.getter();
  sub_100026AC0(v56, *(&v56 + 1));
  sub_10028BCC0(v50, v22);
  if (os_log_type_enabled(v31, v32))
  {
    v48 = v56;
    v33 = swift_slowAlloc();
    v46 = v32;
    v34 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    *&v56 = v47;
    *v33 = 136315650;
    v35 = sub_1003112B8(v49);
    v37 = sub_10000C4E4(v35, v36, &v56);

    *(v33 + 4) = v37;
    *(v33 + 12) = 2112;
    v38.super.isa = Data._bridgeToObjectiveC()().super.isa;
    *(v33 + 14) = v38;
    v34->super.isa = v38.super.isa;
    *(v33 + 22) = 2112;
    v30 = v50;
    v39.super.isa = Data._bridgeToObjectiveC()().super.isa;
    *(v33 + 24) = v39;
    v34[1].super.isa = v39.super.isa;
    _os_log_impl(&_mh_execute_header, v31, v46, "Creating AKSSession with flags: %s localLTK: %@ remoteLTK: %@", v33, 0x20u);
    sub_10028088C(&qword_100975400, &qword_1007F65D0);
    swift_arrayDestroy();

    sub_10000C60C(v47);

    v27 = v48;
  }

  else
  {
  }

  LODWORD(v54) = 0;
  *(&v56 + 6) = 0;
  *&v56 = 0;
  sub_100294008(v27, v26);
  sub_1002A9924(v30, v22);
  sub_10030DF94(v27, v26, v30, v22, &v53);
  sub_100026AC0(v27, v26);
  sub_10028BCC0(v30, v22);
  sub_100311810(v53, 0xD00000000000001CLL, 0x800000010078F840);
  v40 = v26;
  v41 = v54;
  if (qword_1009735C8 != -1)
  {
    swift_once();
  }

  TaskLocal.get()();
  v42 = 0;
  if (BYTE4(v56))
  {
    v44 = a4;
    v43 = a3;
  }

  else
  {
    v44 = a4;
    v43 = a3;
    if (v56)
    {
      if ((v56 & 0x80000000) != 0)
      {
        __break(1u);
      }

      v42 = -v56 << 32;
    }
  }

  *v6 = v42 | v41;
  *(v6 + 8) = 0;
  v54 = sub_1004BD0BC(v43, v44, v42 | v41);
  v55 = v45;
  sub_10028088C(&qword_100974E10, &qword_1007FC4C0);
  Optional.tryUnwrap(_:file:line:)();
  sub_10028BCC0(v54, v55);
  sub_100026AC0(v27, v40);
  sub_10028BCC0(v30, v22);
  return v56;
}

uint64_t sub_1003FE9C0(uint64_t a1, unint64_t a2, uint64_t a3, void *a4)
{
  if (a2 >> 60 == 15)
  {
    v6 = sub_100010F88(1, 0xD000000000000011, 0x800000010078F970);
    v8 = v7;
    sub_1000115C8();
    swift_allocError();
    *v9 = v6;
    *(v9 + 8) = v8;
    return swift_willThrow();
  }

  v71._countAndFlagsBits = a3;
  v71._object = a4;
  v13 = *(v4 + OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication10LTKSession_localLTK);
  v14 = v13[14];
  v15 = __chkstk_darwin(a1);
  sub_100294008(v15, v16);
  os_unfair_lock_lock(v14 + 4);
  sub_1003206A8(v17);
  os_unfair_lock_unlock(v14 + 4);
  if (!v5)
  {
    v18 = *(&v75 + 1);
    v70 = v75;
    v19 = sub_10031A1D0();
    v20 = sub_10031A200();
    v21 = v20;
    v73 = 0;
    v74 = 0;
    v22 = *(&v75 + 1) >> 62;
    if ((*(&v75 + 1) >> 62) > 1)
    {
      if (v22 != 2)
      {
        *(&v75 + 6) = 0;
        *&v75 = 0;
        sub_1002A9924(a1, a2);
        v23 = &v75;
        goto LABEL_32;
      }

      v63 = v20;
      v66 = v19;
      v24 = *(v75 + 16);
      v25 = *(v75 + 24);
      sub_1002A9924(a1, a2);
      v26 = __DataStorage._bytes.getter();
      v68 = *(&v75 + 1);
      if (v26)
      {
        v27 = __DataStorage._offset.getter();
        if (__OFSUB__(v24, v27))
        {
LABEL_37:
          __break(1u);
          goto LABEL_38;
        }

        v26 += v24 - v27;
      }

      v28 = __OFSUB__(v25, v24);
      v29 = v25 - v24;
      if (!v28)
      {
        v30 = __DataStorage._length.getter();
        if (v30 >= v29)
        {
          v31 = v29;
        }

        else
        {
          v31 = v30;
        }

        v32 = v31 + v26;
        if (v26)
        {
          v33 = v32;
        }

        else
        {
          v33 = 0;
        }

        v34 = v26;
        v35 = a1;
        v36 = a2;
        v37 = v66;
        v38 = v63;
        goto LABEL_30;
      }
    }

    else
    {
      if (!v22)
      {
        sub_1002A9924(a1, a2);
        v23 = &v75 + BYTE14(v75);
LABEL_32:
        sub_100310518(&v75, v23, a1, a2, v19, v21, &v74, &v73, &v72);
        sub_10028BCC0(a1, a2);
        v44 = v72;
        goto LABEL_33;
      }

      v64 = v20;
      if (v75 >> 32 >= v75)
      {
        sub_1002A9924(a1, a2);
        v39 = __DataStorage._bytes.getter();
        v68 = *(&v75 + 1);
        if (!v39)
        {
LABEL_23:
          v41 = __DataStorage._length.getter();
          if (v41 >= (v75 >> 32) - v75)
          {
            v42 = (v75 >> 32) - v75;
          }

          else
          {
            v42 = v41;
          }

          v43 = v42 + v39;
          if (v39)
          {
            v33 = v43;
          }

          else
          {
            v33 = 0;
          }

          v34 = v39;
          v35 = a1;
          v36 = a2;
          v37 = v19;
          v38 = v64;
LABEL_30:
          sub_100310518(v34, v33, v35, v36, v37, v38, &v74, &v73, &v75);
          sub_10028BCC0(a1, a2);
          v44 = v75;
          v18 = v68;
LABEL_33:
          v45 = sub_10031205C(v44, v74, v73, 0xD000000000000019, 0x800000010078F990);
          v65 = v13[3];
          v67 = v13[2];
          v61 = v45;
          v62 = v46;
          sub_10031A1D0();
          v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v59 = v48;
          v60 = v47;
          _s9RemoteLTKCMa(0);
          v69 = v18;
          v49 = swift_allocObject();
          *(v49 + 80) = xmmword_1007F8A80;
          *(v49 + 96) = xmmword_1007F8A80;
          *(v49 + 112) = 0;
          *(v49 + 120) = 0;
          v50 = OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication9RemoteLTK_activeSessionID;
          v51 = type metadata accessor for UUID();
          v58 = *(*(v51 - 8) + 56);
          v58(v49 + v50, 1, 1, v51);
          v52 = OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication9RemoteLTK_activeSessionStartDate;
          v53 = type metadata accessor for Date();
          v54 = *(*(v53 - 8) + 56);
          v54(v49 + v52, 1, 1, v53);
          v58(v49 + OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication9RemoteLTK_registrationSessionID, 1, 1, v51);
          v54(v49 + OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication9RemoteLTK_registrationStartDate, 1, 1, v53);
          v55 = (v49 + OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication9RemoteLTK_invalidRegistrationID);
          *v55 = 0;
          v55[1] = 0;
          *(v49 + OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication9RemoteLTK_sessionKey) = xmmword_1007F8A80;
          *(v49 + 32) = v71;
          *(v49 + 48) = v60;
          *(v49 + 56) = v59;
          *(v49 + 64) = v61;
          *(v49 + 72) = v62;
          *&v75 = v67;
          *(&v75 + 1) = v65;

          sub_100294008(v61, v62);

          v56._countAndFlagsBits = 95;
          v56._object = 0xE100000000000000;
          String.append(_:)(v56);
          String.append(_:)(v71);
          v57 = *(&v75 + 1);
          *(v49 + 16) = v75;
          *(v49 + 24) = v57;
          sub_10031A704(v49);

          sub_100026AC0(v61, v62);
          sub_100026AC0(v70, v69);
          return sub_10028BCC0(a1, a2);
        }

        v40 = __DataStorage._offset.getter();
        if (!__OFSUB__(v75, v40))
        {
          v39 += v75 - v40;
          goto LABEL_23;
        }

LABEL_38:
        __break(1u);
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_37;
  }

  return sub_10028BCC0(a1, a2);
}

_BYTE *sub_1003FF018(uint64_t a1, _BYTE *a2)
{
  v4 = v2;
  v7 = *(v2 + OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication10LTKSession_aksSession + 8);
  v46 = *(v2 + OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication10LTKSession_aksSession);
  LOBYTE(v47) = v7;
  sub_10028088C(&qword_10097C2A0, &qword_100800F80);
  Optional.tryUnwrap(_:file:line:)();
  if (!v3)
  {
    v44 = sub_1004BD0BC(a1, a2, v44);
    v45 = v9;
    sub_10028088C(&qword_100974E10, &qword_1007FC4C0);
    Optional.tryUnwrap(_:file:line:)();
    sub_10028BCC0(v44, v45);
    a2 = v46;
    if (qword_1009737F0 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_10000C4AC(v10, qword_10097C2F8);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "Started createAndStoreRangingKey", v13, 2u);
    }

    sub_1003FF5C4();
    if ((*(v4 + OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication10LTKSession_type) - 3) >= 2)
    {
      v15 = 0x800000010078F920;
    }

    else
    {
      v46 = 0;
      v44 = 0;
      v14 = aks_remote_peer_confirm();
      v15 = 0x800000010078F920;
      v16 = sub_1004BD8E4(v14, 0, 0, 0xD000000000000021, 0x800000010078F920);
      if (v17 >> 60 == 15)
      {
        v18 = Logger.logObject.getter();
        v19 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v18, v19))
        {
          v20 = swift_slowAlloc();
          *v20 = 0;
          _os_log_impl(&_mh_execute_header, v18, v19, "Failed to generate escrow", v20, 2u);
        }
      }

      else
      {
        v40 = 0x800000010078F920;
        v24 = v16;
        v25 = v17;
        sub_100294008(v16, v17);
        v26 = Logger.logObject.getter();
        v27 = static os_log_type_t.default.getter();
        v42 = v25;
        v43 = v24;
        sub_10028BCC0(v24, v25);
        if (os_log_type_enabled(v26, v27))
        {
          v28 = swift_slowAlloc();
          v29 = swift_slowAlloc();
          *v28 = 138412290;
          v30.super.isa = Data._bridgeToObjectiveC()().super.isa;
          *(v28 + 4) = v30;
          v29->super.isa = v30.super.isa;
          _os_log_impl(&_mh_execute_header, v26, v27, "Generated escrow: %@", v28, 0xCu);
          sub_10028924C(v29);
        }

        v41 = &v39;
        v32 = __chkstk_darwin(v31);
        v34 = v42;
        v33 = v43;
        v36 = *(v35 + 112);
        v37 = __chkstk_darwin(v32);
        __chkstk_darwin(v37);
        os_unfair_lock_lock(v36 + 4);
        sub_1002F5418(v38);
        os_unfair_lock_unlock(v36 + 4);
        sub_10028BCC0(v33, v34);
        v15 = v40;
      }
    }

    v46 = 0;
    v44 = 0;
    v21 = aks_remote_peer_confirm();
    v22 = sub_1004BD8E4(v21, v46, v44, 0xD000000000000021, v15);
    sub_10028BCC0(v22, v23);
    sub_1003FD950();
  }

  return a2;
}

uint64_t sub_1003FF5C4()
{
  sub_10028088C(&qword_10097C2A0, &qword_100800F80);
  result = Optional.tryUnwrap(_:file:line:)();
  if (!v1)
  {
    v3 = aks_remote_session_token();
    v4 = sub_10031205C(v3, 0, 0, 0xD00000000000001ELL, 0x800000010078F900);
    v6 = v4;
    v7 = v5;
    sub_10031C68C(v4, v5, *(v0 + OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication10LTKSession_remoteDeviceID), *(v0 + OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication10LTKSession_remoteDeviceID + 8));
    return sub_100026AC0(v6, v7);
  }

  return result;
}

uint64_t sub_1003FF724(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  sub_10028088C(&qword_10097C2A0, &qword_100800F80);
  result = Optional.tryUnwrap(_:file:line:)();
  if (!v4)
  {
    v10 = sub_1004BD0BC(a1, a2, v16);
    sub_10028BCC0(v10, v11);
    sub_1004BD438(a3, a4, v16);
    sub_1003FD950();
    if (qword_1009737F0 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_10000C4AC(v12, qword_10097C2F8);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "Started createAndStoreRangingKey", v15, 2u);
    }

    return sub_1003FF5C4();
  }

  return result;
}

uint64_t sub_1003FF8FC(uint64_t a1, unint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication10LTKSession_aksSession;
  if (*(v2 + OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication10LTKSession_aksSession + 8) != 1)
  {
    v12 = 0xD000000000000038;
    v13 = 0x800000010078F880;
    v14 = 1;
    goto LABEL_5;
  }

  v5 = v2;
  v6 = *(v2 + OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication10LTKSession_localLTK);
  v7 = *(v5 + OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication10LTKSession_remoteDeviceID);
  v8 = *(v5 + OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication10LTKSession_remoteDeviceID + 8);
  v9 = sub_10031D924();
  if (v10 >> 60 == 15)
  {
    _StringGuts.grow(_:)(32);

    v11._countAndFlagsBits = v7;
    v11._object = v8;
    String.append(_:)(v11);
    v12 = 0xD00000000000001ELL;
    v13 = 0x800000010078F6C0;
    v14 = 10;
LABEL_5:
    v15 = sub_100010F88(v14, v12, v13);
    v17 = v16;
    sub_1000115C8();
    swift_allocError();
    *v18 = v15;
    *(v18 + 8) = v17;
    return swift_willThrow();
  }

  v20 = v9;
  v21 = v10;
  v22 = *(v5 + OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication10LTKSession_role);
  v23 = *(v6 + 112);
  __chkstk_darwin(v9);
  os_unfair_lock_lock(v23 + 4);
  sub_1003206A8(v24);
  v25 = v23 + 4;
  if (v3)
  {
    os_unfair_lock_unlock(v25);
    return sub_10028BCC0(v20, v21);
  }

  else
  {
    os_unfair_lock_unlock(v25);
    v27 = *(&v52 + 1);
    v26 = v52;
    if (v22)
    {
      v28 = 129;
    }

    else
    {
      v28 = 1;
    }

    if (qword_1009735C0 != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    sub_10000C4AC(v29, qword_100977C58);
    sub_100294008(v52, *(&v52 + 1));
    sub_1002A9924(v20, v21);
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.default.getter();
    sub_100026AC0(v52, *(&v52 + 1));
    sub_10028BCC0(v20, v21);
    if (os_log_type_enabled(v30, v31))
    {
      v46 = *(&v52 + 1);
      v32 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      *&v52 = v45;
      *v32 = 136315650;
      v33 = sub_1003112B8(v28);
      v35 = sub_10000C4E4(v33, v34, &v52);

      *(v32 + 4) = v35;
      *(v32 + 12) = 2112;
      v36.super.isa = Data._bridgeToObjectiveC()().super.isa;
      *(v32 + 14) = v36;
      v44->super.isa = v36.super.isa;
      *(v32 + 22) = 2112;
      v37.super.isa = Data._bridgeToObjectiveC()().super.isa;
      *(v32 + 24) = v37;
      v44[1].super.isa = v37.super.isa;
      _os_log_impl(&_mh_execute_header, v30, v31, "Creating AKSSession with flags: %s localLTK: %@ remoteLTK: %@", v32, 0x20u);
      sub_10028088C(&qword_100975400, &qword_1007F65D0);
      swift_arrayDestroy();

      sub_10000C60C(v45);

      v27 = v46;
    }

    LODWORD(v50) = 0;
    *(&v52 + 6) = 0;
    *&v52 = 0;
    sub_100294008(v26, v27);
    sub_1002A9924(v20, v21);
    sub_10030DF94(v26, v27, v20, v21, &v49);
    sub_100026AC0(v26, v27);
    sub_10028BCC0(v20, v21);
    sub_100311810(v49, 0xD00000000000001CLL, 0x800000010078F840);
    v38 = v26;
    v39 = v50;
    if (qword_1009735C8 != -1)
    {
      swift_once();
    }

    TaskLocal.get()();
    v40 = 0;
    if (BYTE4(v52))
    {
      v42 = a2;
      v41 = a1;
    }

    else
    {
      v42 = a2;
      v41 = a1;
      if (v52)
      {
        if ((v52 & 0x80000000) != 0)
        {
          __break(1u);
        }

        v40 = -v52 << 32;
      }
    }

    *v4 = v40 | v39;
    *(v4 + 8) = 0;
    v50 = sub_1004BD0BC(v41, v42, v40 | v39);
    v51 = v43;
    sub_10028088C(&qword_100974E10, &qword_1007FC4C0);
    Optional.tryUnwrap(_:file:line:)();
    sub_10028BCC0(v50, v51);
    sub_100026AC0(v38, v27);
    sub_10028BCC0(v20, v21);
    return v52;
  }
}

unint64_t sub_1003FFEE0(uint64_t a1, unint64_t a2)
{
  v14 = *(v2 + OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication10LTKSession_aksSession);
  sub_10028088C(&qword_10097C2A0, &qword_100800F80);
  Optional.tryUnwrap(_:file:line:)();
  if (!v3)
  {
    Optional.tryUnwrap(_:file:line:)();
    v12 = sub_1004BD0BC(a1, a2, v11);
    v13 = v6;
    sub_10028088C(&qword_100974E10, &qword_1007FC4C0);
    Optional.tryUnwrap(_:file:line:)();
    sub_10028BCC0(v12, v13);
    a2 = v14;
    v8 = aks_remote_peer_confirm();
    v9 = sub_1004BD8E4(v8, 0, 0, 0xD000000000000021, 0x800000010078F920);
    sub_10028BCC0(v9, v10);
    sub_100400128();
    sub_1003FD950();
  }

  return a2;
}

uint64_t sub_100400128()
{
  v1 = *(*(v0 + OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication10LTKSession_localLTK) + 112);
  os_unfair_lock_lock(v1 + 4);
  sub_10040090C(&v16);
  os_unfair_lock_unlock(v1 + 4);
  v2 = *(&v16 + 1);
  v3 = v16;
  if (qword_1009737F0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000C4AC(v4, qword_10097C2F8);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *&v16 = v8;
    *v7 = 136315138;
    if (v2)
    {
      v9 = v3;
    }

    else
    {
      v9 = 0x3E6C696E3CLL;
    }

    if (!v2)
    {
      v2 = 0xE500000000000000;
    }

    v10 = sub_10000C4E4(v9, v2, &v16);

    *(v7 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v5, v6, "RegistrationID %s", v7, 0xCu);
    sub_10000C60C(v8);
  }

  else
  {
  }

  result = sub_10031D924();
  if (v12 >> 60 != 15)
  {
    v13 = result;
    v14 = v12;
    isa = Data._bridgeToObjectiveC()().super.isa;
    sub_10005CB84(isa);

    return sub_10028BCC0(v13, v14);
  }

  return result;
}

void sub_10040035C(uint64_t a1, unint64_t a2)
{
  sub_10028088C(&qword_10097C2A0, &qword_100800F80);
  Optional.tryUnwrap(_:file:line:)();
  if (!v2)
  {
    Optional.tryUnwrap(_:file:line:)();
    v5 = sub_1004BD0BC(a1, a2, v14);
    sub_10028BCC0(v5, v6);
    v7 = aks_remote_peer_setup();
    v8 = sub_1004BD8E4(v7, 0, 0, 0xD00000000000001FLL, 0x800000010078F950);
    sub_10028BCC0(v8, v9);
    if (qword_1009737F0 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_10000C4AC(v10, qword_10097C2F8);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "Finalized Registration", v13, 2u);
    }

    sub_100400128();
    sub_1003FD950();
  }
}

uint64_t sub_1004005A8()
{
  v1 = OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication10LTKSession_sessionID;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t _s10LTKSessionCMa(uint64_t a1)
{
  result = qword_10097C338;
  if (!qword_10097C338)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1004006BC(uint64_t a1)
{
  result = type metadata accessor for UUID();
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

uint64_t sub_100400790@<X0>(_BYTE *a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = 0;
  return result;
}

uint64_t sub_1004007D0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_100694464(*(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40));
  if (!v2)
  {
    *a1 = result & 1;
  }

  return result;
}

uint64_t sub_10040080C(int *a1)
{
  v1 = a1[3];
  if ((v1 & 2) == 0 && a1[2])
  {
    return 0;
  }

  if ((v1 & 1) != 0 && (v1 & 6) != 0)
  {
    return 3;
  }

  v3 = *a1;
  if (*a1 > 2)
  {
    if (v3 > 4)
    {
      if (v3 != 5)
      {
        if (v3 == 6)
        {
          v4 = 0;
          v5 = 8;
          goto LABEL_30;
        }

        goto LABEL_26;
      }

      v4 = 1;
      v5 = 1;
    }

    else
    {
      if (v3 != 3)
      {
        if (v3 == 4)
        {
          v4 = 0;
          v5 = 7;
          goto LABEL_30;
        }

LABEL_26:
        v4 = 0;
        v5 = 100;
        goto LABEL_30;
      }

      v4 = 0;
      v5 = 9;
    }

    goto LABEL_30;
  }

  if (v3)
  {
    if (v3 != 1)
    {
      if (v3 == 2)
      {
        v4 = 0;
        v5 = 5;
        goto LABEL_30;
      }

      goto LABEL_26;
    }

    v4 = 0;
    v5 = 4;
LABEL_30:
    if ((v4 & (v1 >> 1)) != 0)
    {
      return 10;
    }

    else
    {
      return v5;
    }
  }

  v6 = 100;
  if ((v1 & 6) == 0)
  {
    v6 = 9;
  }

  v7 = 2;
  if ((v1 & 2) != 0)
  {
    v7 = 10;
  }

  if (v1)
  {
    return v6;
  }

  else
  {
    return v7;
  }
}

uint64_t sub_100400944()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_10097C3E8);
  v1 = sub_10000C4AC(v0, qword_10097C3E8);
  if (qword_1009736D0 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C4AC(v0, qword_1009A08B8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100400A0C(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = type metadata accessor for URL();
  v2[7] = v3;
  v2[8] = *(v3 - 8);
  v2[9] = swift_task_alloc();
  sub_10028088C(&unk_100974E00, &qword_1007F8940);
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v4 = static AirDropActor.shared;

  return _swift_task_switch(sub_100400B48, v4, 0);
}

uint64_t sub_100400B48(uint64_t a1)
{
  v2 = *(SFAirDropReceive.AskRequest.files.getter() + 16);

  if (v2)
  {
    v3 = *(SFAirDropReceive.AskRequest.urlItems.getter() + 16);

    if (v3)
    {
LABEL_3:
      LOBYTE(v2) = 0;
      goto LABEL_23;
    }

    v4 = [objc_opt_self() defaultManager];
    v5 = [v4 URLForUbiquityContainerIdentifier:BRUbiquitousDefaultContainerID];

    if (v5)
    {
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v6 = 0;
    }

    else
    {
      v6 = 1;
    }

    v7 = v1[11];
    v8 = v1[6];
    LOBYTE(v2) = 1;
    (*(v1[8] + 56))(v7, v6, 1, v1[7]);
    v9 = OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropContentHandleriCloudDrive_iCloudDriveFolder;
    swift_beginAccess();
    sub_100401AF0(v7, v8 + v9);
    swift_endAccess();
    if (SFFilesAppAvailable())
    {
      goto LABEL_23;
    }

    if (qword_1009737F8 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_10000C4AC(v10, qword_10097C3E8);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "Files App not available", v13, 2u);
    }

    v14 = v1[10];
    v15 = v1[7];
    v16 = v1[8];

    sub_100333278(v8 + v9, v14);
    if ((*(v16 + 48))(v14, 1, v15) == 1)
    {
      sub_100005508(v1[10], &unk_100974E00, &qword_1007F8940);
      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        *v19 = 0;
        _os_log_impl(&_mh_execute_header, v17, v18, "iCloud drive not enabled or accessible.", v19, 2u);
      }

      goto LABEL_3;
    }

    (*(v1[8] + 32))(v1[9], v1[10], v1[7]);
    v20 = URL.checkResourceIsReachable()();
    if (v21)
    {
      swift_errorRetain();
      v22 = Logger.logObject.getter();
      v23 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        *v24 = 138412290;
        swift_errorRetain();
        v26 = _swift_stdlib_bridgeErrorToNSError();
        *(v24 + 4) = v26;
        *v25 = v26;
        _os_log_impl(&_mh_execute_header, v22, v23, "iCloud drive not enabled or accessible. Error: %@", v24, 0xCu);
        sub_100005508(v25, &qword_100975400, &qword_1007F65D0);
      }

      else
      {
      }

      LOBYTE(v2) = 0;
    }

    else
    {
      LOBYTE(v2) = v20;
    }

    (*(v1[8] + 8))(v1[9], v1[7]);
  }

LABEL_23:

  v27 = v1[1];

  return v27(v2 & 1);
}

uint64_t sub_100400F94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v23 = a1;
  v24 = a3;
  v4 = sub_10028088C(&unk_100974E00, &qword_1007F8940);
  v22 = *(v4 - 8);
  v5 = *(v22 + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v7 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = &v22 - v8;
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for SFAirDropReceive.ItemDestination();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v17, a2, v14);
  if ((*(v15 + 88))(v17, v14) == enum case for SFAirDropReceive.ItemDestination.customURL(_:))
  {
    (*(v15 + 96))(v17, v14);
    (*(v11 + 32))(v13, v17, v10);
    (*(v11 + 16))(v9, v13, v10);
    (*(v11 + 56))(v9, 0, 1, v10);
    v25 = 0;
    sub_100333278(v9, v7);
    v18 = (*(v22 + 80) + 16) & ~*(v22 + 80);
    v19 = swift_allocObject();
    sub_1003332E8(v7, v19 + v18);
    *(v19 + ((v5 + v18 + 7) & 0xFFFFFFFFFFFFFFF8)) = v23;

    sub_10028088C(&qword_100975610, &qword_1007F89B0);
    SFProgressTask.init(_:initialProgress:operation:file:line:)();
    sub_100005508(v9, &unk_100974E00, &qword_1007F8940);
    return (*(v11 + 8))(v13, v10);
  }

  else
  {
    v25 = 0;
    v21 = swift_allocObject();
    *(v21 + 16) = v23;
    *(v21 + 24) = 1;

    sub_10028088C(&qword_100975610, &qword_1007F89B0);
    SFProgressTask.init(_:initialProgress:operation:file:line:)();
    return (*(v15 + 8))(v17, v14);
  }
}

uint64_t sub_10040140C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v31 - v8;
  v10 = *(a1 + 16);
  v31 = a1;
  v32 = v10;
  if (v10)
  {
    v13 = *(v4 + 16);
    v11 = v4 + 16;
    v12 = v13;
    v36 = (*(v11 + 64) + 32) & ~*(v11 + 64);
    v14 = a1 + v36;
    v15 = *(v11 + 56);
    v39 = (v11 + 16);
    v34 = (v11 - 8);
    v16 = _swiftEmptyArrayStorage;
    v37 = v13;
    v38 = v7;
    v35 = v15;
    v13(v9, v14, v3);
    while (1)
    {
      if (URL.isFileURL.getter())
      {
        (*v34)(v9, v3);
      }

      else
      {
        v17 = v11;
        v18 = *v39;
        (*v39)(v7, v9, v3);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v40 = v16;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_10028FAB4(0, v16[2] + 1, 1);
          v16 = v40;
        }

        v21 = v16[2];
        v20 = v16[3];
        if (v21 >= v20 >> 1)
        {
          sub_10028FAB4((v20 > 1), v21 + 1, 1);
          v16 = v40;
        }

        v16[2] = v21 + 1;
        v22 = v16 + v36 + v21 * v35;
        v15 = v35;
        v7 = v38;
        v18(v22, v38, v3);
        v11 = v17;
        v12 = v37;
      }

      v14 += v15;
      if (!--v10)
      {
        break;
      }

      v12(v9, v14, v3);
    }
  }

  else
  {
    v16 = _swiftEmptyArrayStorage;
  }

  v23 = v16[2];
  if (v23)
  {
    if (v23 != v32)
    {
      if (qword_1009737B0 != -1)
      {
        swift_once();
      }

      v24 = type metadata accessor for Logger();
      sub_10000C4AC(v24, qword_10097B528);
      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        *v27 = 0;
        _os_log_impl(&_mh_execute_header, v25, v26, "Asked to view mixed files and links, only viewing links", v27, 2u);
      }
    }

    v40 = 0;
    v28 = swift_allocObject();
    *(v28 + 16) = v16;
    *(v28 + 24) = 0;
  }

  else
  {

    v40 = 0;
    v29 = swift_allocObject();
    *(v29 + 16) = 0;
    *(v29 + 24) = 0;
    *(v29 + 32) = v31;
  }

  return SFProgressTask.init(_:initialProgress:operation:file:line:)();
}

uint64_t sub_100401844()
{
  sub_100005508(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropContentHandleriCloudDrive_iCloudDriveFolder, &unk_100974E00, &qword_1007F8940);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SDAirDropContentHandleriCloudDrive(uint64_t a1)
{
  result = qword_10097C430;
  if (!qword_10097C430)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10040190C(uint64_t a1)
{
  sub_1002A512C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_10040199C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for SDAirDropContentHandleriCloudDrive(0);
  v2 = swift_allocObject();
  v3 = OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropContentHandleriCloudDrive_iCloudDriveFolder;
  v4 = type metadata accessor for URL();
  result = (*(*(v4 - 8) + 56))(v2 + v3, 1, 1, v4);
  *a1 = v2;
  return result;
}

uint64_t sub_100401A28(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100289000;

  return sub_100400A0C(a1);
}

uint64_t sub_100401AF0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10028088C(&unk_100974E00, &qword_1007F8940);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100401B60()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_10097C4F8);
  v1 = sub_10000C4AC(v0, qword_10097C4F8);
  if (qword_1009736D0 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C4AC(v0, qword_1009A08B8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100401C28(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  sub_10028088C(&unk_100974E00, &qword_1007F8940);
  v2[4] = swift_task_alloc();
  v3 = type metadata accessor for URL();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v4 = type metadata accessor for SFAirDrop.TransferType();
  v2[9] = v4;
  v2[10] = *(v4 - 8);
  v2[11] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v5 = static AirDropActor.shared;
  v2[12] = static AirDropActor.shared;

  return _swift_task_switch(sub_100401DC4, v5, 0);
}

void sub_100401DC4(uint64_t a1)
{
  v3 = v1[10];
  v2 = v1[11];
  v4 = v1[9];
  SFAirDropReceive.AskRequest.type.getter();
  v5 = SFAirDrop.TransferType.isLinks.getter();
  (*(v3 + 8))(v2, v4);
  if ((v5 & 1) == 0)
  {
LABEL_4:
    v10 = 0;
LABEL_5:

    v11 = v1[1];

    v11(v10);
    return;
  }

  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[4];
  v9 = SFAirDropReceive.AskRequest.urlItems.getter();
  sub_1002FB398(v9, v8);

  if ((*(v7 + 48))(v8, 1, v6) == 1)
  {
    sub_100005508(v1[4], &unk_100974E00, &qword_1007F8940);
    goto LABEL_4;
  }

  v12 = v1[3];
  (*(v1[6] + 32))(v1[8], v1[4], v1[5]);
  sub_100402EB4(v13);
  v14 = *(v12 + 16);
  *(v12 + 16) = v15;

  if (*(v12 + 16))
  {
    v16 = v1[6];
    v17 = SFAirDropReceive.AskRequest.urlItems.getter();
    v18 = 0;
    v19 = v17 + 56;
    v20 = -1;
    v21 = -1 << *(v17 + 32);
    if (-v21 < 64)
    {
      v20 = ~(-1 << -v21);
    }

    v22 = v20 & *(v17 + 56);
    v23 = (63 - v21) >> 6;
    v40 = v17;
    while (v22)
    {
      v24 = v18;
LABEL_18:
      v25 = v1[7];
      v26 = v1[5];
      v27 = __clz(__rbit64(v22));
      v22 &= v22 - 1;
      (*(v16 + 16))(v25, *(v40 + 48) + *(v16 + 72) * (v27 | (v24 << 6)), v26);
      URL._bridgeToObjectiveC()(v28);
      v30 = v29;
      v31 = *(v16 + 8);
      v31(v25, v26);
      LOBYTE(v25) = [v30 isiWorkURL];

      if ((v25 & 1) == 0)
      {
        v32 = v1[8];
        v33 = v1[5];

        v31(v32, v33);
        goto LABEL_4;
      }
    }

    while (1)
    {
      v24 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v24 >= v23)
      {
        v34 = v1[8];
        v35 = v1[5];

        (*(v16 + 8))(v34, v35);
        v10 = 1;
        goto LABEL_5;
      }

      v22 = *(v19 + 8 * v24);
      ++v18;
      if (v22)
      {
        v18 = v24;
        goto LABEL_18;
      }
    }

    __break(1u);
  }

  else
  {
    v36 = v1[3];
    type metadata accessor for SDAirDropContentHandlerWebLinks();
    v37 = swift_allocObject();
    v1[13] = v37;
    *(v36 + 24) = v37;

    v38 = swift_task_alloc();
    v1[14] = v38;
    *v38 = v1;
    v38[1] = sub_100402170;
    v39 = v1[2];

    sub_1002FC674(v39);
  }
}

uint64_t sub_100402170(char a1)
{
  v2 = *(*v1 + 96);
  *(*v1 + 120) = a1;

  return _swift_task_switch(sub_100402288, v2, 0);
}

void sub_100402288()
{
  v1 = *(v0 + 120);

  if (v1)
  {
    v2 = *(v0 + 48);
    v3 = SFAirDropReceive.AskRequest.urlItems.getter();
    v4 = 0;
    v5 = v3 + 56;
    v6 = -1;
    v7 = -1 << *(v3 + 32);
    if (-v7 < 64)
    {
      v6 = ~(-1 << -v7);
    }

    v8 = v6 & *(v3 + 56);
    v9 = (63 - v7) >> 6;
    v24 = v3;
    while (v8)
    {
      v10 = v4;
LABEL_11:
      v11 = *(v0 + 56);
      v12 = *(v0 + 40);
      v13 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
      (*(v2 + 16))(v11, *(v24 + 48) + *(v2 + 72) * (v13 | (v10 << 6)), v12);
      URL._bridgeToObjectiveC()(v14);
      v16 = v15;
      v17 = *(v2 + 8);
      v17(v11, v12);
      LOBYTE(v11) = [v16 isiWorkURL];

      if ((v11 & 1) == 0)
      {
        v18 = *(v0 + 64);
        v19 = *(v0 + 40);

        v17(v18, v19);
        goto LABEL_14;
      }
    }

    while (1)
    {
      v10 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      if (v10 >= v9)
      {
        v21 = *(v0 + 64);
        v22 = *(v0 + 40);

        (*(v2 + 8))(v21, v22);
        v20 = 1;
        goto LABEL_16;
      }

      v8 = *(v5 + 8 * v10);
      ++v4;
      if (v8)
      {
        v4 = v10;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
    (*(*(v0 + 48) + 8))(*(v0 + 64), *(v0 + 40));
LABEL_14:
    v20 = 0;
LABEL_16:

    v23 = *(v0 + 8);

    v23(v20);
  }
}

void sub_1004024C4(uint64_t a1, char a2)
{
  v4 = sub_10028088C(&unk_100974E00, &qword_1007F8940);
  __chkstk_darwin(v4 - 8);
  v6 = &v35 - v5;
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v2 + 40);
  if (v11)
  {
    v12 = *(v2 + 32);

    v13 = *(SFAirDropReceive.AskRequest.urlItems.getter() + 16);

    v14 = SFAirDropReceive.AskRequest.urlItems.getter();
    sub_1002FB398(v14, v6);

    if ((*(v8 + 48))(v6, 1, v7) == 1)
    {
      sub_100005508(v6, &unk_100974E00, &qword_1007F8940);
    }

    else
    {
      (*(v8 + 32))(v10, v6, v7);
      URL._bridgeToObjectiveC()(v19);
      v21 = v20;
      v22 = [v20 iWorkDocumentName];

      if (v22)
      {
        v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v25 = v24;

        (*(v8 + 8))(v10, v7);
        if (v13 == 1)
        {
          sub_1003D8D18(&off_1008D6B10, a2 & 1);
          sub_100005508(&unk_1008D6B30, &qword_100981D40, &unk_1007FA6C0);
          v26 = String._bridgeToObjectiveC()();
          v27 = SFLocalizedStringForKey();

          if (v27)
          {

            static String._unconditionallyBridgeFromObjectiveC(_:)();

            sub_10028088C(&unk_100978CC0, &qword_1007FAD20);
            v28 = swift_allocObject();
            *(v28 + 16) = xmmword_1007F8A70;
            *(v28 + 56) = &type metadata for String;
            v29 = sub_100026764();
            *(v28 + 32) = v12;
            *(v28 + 40) = v11;
            *(v28 + 96) = &type metadata for String;
            *(v28 + 104) = v29;
            *(v28 + 64) = v29;
            *(v28 + 72) = v23;
            *(v28 + 80) = v25;
            static String.localizedStringWithFormat(_:_:)();

LABEL_17:

            return;
          }

          goto LABEL_19;
        }
      }

      else
      {
        (*(v8 + 8))(v10, v7);
      }
    }

    sub_10028088C(&qword_1009775E0, &unk_1007FAD10);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1007F5670;
    *(inited + 32) = 0x494C5F4B524F5749;
    v31 = inited + 32;
    *(inited + 40) = 0xEA00000000004B4ELL;
    *(inited + 48) = v13;
    sub_1003D8D18(inited, a2 & 1);
    swift_setDeallocating();
    sub_100005508(v31, &qword_100981D40, &unk_1007FA6C0);
    v32 = String._bridgeToObjectiveC()();
    v33 = SFLocalizedStringForKey();

    if (v33)
    {

      static String._unconditionallyBridgeFromObjectiveC(_:)();

      sub_10028088C(&unk_100978CC0, &qword_1007FAD20);
      v34 = swift_allocObject();
      *(v34 + 16) = xmmword_1007F8A70;
      *(v34 + 56) = &type metadata for Int;
      *(v34 + 64) = &protocol witness table for Int;
      *(v34 + 32) = v13;
      *(v34 + 96) = &type metadata for String;
      *(v34 + 104) = sub_100026764();
      *(v34 + 72) = v12;
      *(v34 + 80) = v11;
      static String.localizedStringWithFormat(_:_:)();

      goto LABEL_17;
    }

    __break(1u);
LABEL_19:
    __break(1u);
    return;
  }

  if (qword_100973800 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_10000C4AC(v15, qword_10097C4F8);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&_mh_execute_header, v16, v17, "Called localizedDescription on SDAirDropContentHandleriWorkLinks without an appName", v18, 2u);
  }
}

uint64_t sub_100402A04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  __chkstk_darwin(v7);
  v10 = &v35 - v9;
  if (*(v2 + 24))
  {

    sub_1002FB6E8(a1, a2);
  }

  else
  {
    v44 = v8;
    v12 = *(a1 + 16);
    v38 = *(v2 + 16);
    v39 = a2;
    v13 = v38;
    v36 = a1;
    v37 = v12;
    if (v12)
    {
      v16 = *(v6 + 16);
      v15 = v6 + 16;
      v14 = v16;
      v42 = (*(v15 + 64) + 32) & ~*(v15 + 64);
      v17 = a1 + v42;
      v18 = *(v15 + 56);
      v45 = (v15 + 16);
      v40 = (v15 - 8);
      v19 = _swiftEmptyArrayStorage;
      v43 = v15;
      v20 = v44;
      v41 = v18;
      v16(v10, v17, v5);
      while (1)
      {
        if (URL.isFileURL.getter())
        {
          (*v40)(v10, v5);
        }

        else
        {
          v21 = *v45;
          (*v45)(v20, v10, v5);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v46 = v19;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_10028FAB4(0, v19[2] + 1, 1);
            v19 = v46;
          }

          v24 = v19[2];
          v23 = v19[3];
          if (v24 >= v23 >> 1)
          {
            sub_10028FAB4((v23 > 1), v24 + 1, 1);
            v19 = v46;
          }

          v19[2] = v24 + 1;
          v25 = v41;
          v26 = v19 + v42 + v24 * v41;
          v20 = v44;
          v21(v26, v44, v5);
          v18 = v25;
        }

        v17 += v18;
        if (!--v12)
        {
          break;
        }

        v14(v10, v17, v5);
      }
    }

    else
    {
      v19 = _swiftEmptyArrayStorage;
    }

    v27 = v19[2];
    if (v27)
    {
      if (v27 != v37)
      {
        if (qword_1009737B0 != -1)
        {
          swift_once();
        }

        v28 = type metadata accessor for Logger();
        sub_10000C4AC(v28, qword_10097B528);
        v29 = Logger.logObject.getter();
        v30 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v29, v30))
        {
          v31 = swift_slowAlloc();
          *v31 = 0;
          _os_log_impl(&_mh_execute_header, v29, v30, "Asked to view mixed files and links, only viewing links", v31, 2u);
        }
      }

      v46 = 0;
      v32 = swift_allocObject();
      v33 = v38;
      *(v32 + 16) = v19;
      *(v32 + 24) = v33;
    }

    else
    {

      v46 = 0;
      v34 = swift_allocObject();
      *(v34 + 16) = v38;
      *(v34 + 24) = 1;
      *(v34 + 32) = v36;
    }

    return SFProgressTask.init(_:initialProgress:operation:file:line:)();
  }
}

void sub_100402EB4(NSURL *a1@<X8>)
{
  v2 = v1;
  URL._bridgeToObjectiveC()(a1);
  v4 = v3;
  v5 = [v3 isiWorkURL];

  if (v5)
  {
    URL._bridgeToObjectiveC()(v6);
    v8 = v7;
    v9 = [v7 iWorkApplicationName];

    if (!v9)
    {
      __break(1u);
      return;
    }

    static String._unconditionallyBridgeFromObjectiveC(_:)();

    sub_10001229C();
    v10 = StringProtocol.capitalized.getter();
    v12 = v11;

    if (v10 == 0x7365676150 && v12 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v13 = objc_allocWithZone(LSApplicationRecord);
      v14 = 0x6C7070612E6D6F63;
      v15 = 0xEF73656761502E65;
    }

    else
    {
      if (v10 == 0x737265626D754ELL && v12 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v16 = "com.apple.Numbers";
      }

      else
      {
        if ((v10 != 0x65746F6E79654BLL || v12 != 0xE700000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
LABEL_17:
          *(v2 + 32) = v10;
          *(v2 + 40) = v12;

          return;
        }

        v16 = "com.apple.Keynote";
      }

      v17 = v16 - 32;
      v18 = objc_allocWithZone(LSApplicationRecord);
      v15 = v17 | 0x8000000000000000;
      v14 = 0xD000000000000011;
    }

    v19 = sub_10066F3F8(v14, v15, 1);
    if (v19)
    {
      v20 = v19;
      v21 = [v20 applicationState];
      v22 = [v21 isInstalled];

      if (v22)
      {

        v23 = [v20 localizedName];
        v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v12 = v24;
      }

      else
      {
      }
    }

    goto LABEL_17;
  }
}

uint64_t sub_1004032E0()
{

  return swift_deallocClassInstance();
}

double sub_10040334C@<D0>(uint64_t *a1@<X8>)
{
  type metadata accessor for SDAirDropContentHandleriWorkLinks();
  v2 = swift_allocObject();
  result = 0.0;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *a1 = v2;
  return result;
}

uint64_t sub_100403388(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100289000;

  return sub_100401C28(a1);
}

uint64_t sub_100403468(uint64_t result)
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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_10028E5A4(result, v11, 1, v3);
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
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + 16 * v7 + 32), (v6 + 32), 16 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_100403584(unint64_t a1, void (*a2)(uint64_t, void, uint64_t))
{
  if (a1 >> 62)
  {
    v5 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v2 >> 62))
  {
    v6 = *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v7 = __OFADD__(v6, v5);
    result = v6 + v5;
    if (!v7)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = _CocoaArrayWrapper.endIndex.getter();
  v7 = __OFADD__(v15, v5);
  result = v15 + v5;
  if (v7)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_100027A84(result, 1);
  v9 = *v2;
  v10 = *v2 & 0xFFFFFFFFFFFFFF8;
  a2(v10 + 8 * *(v10 + 0x10) + 32, (*(v10 + 0x18) >> 1) - *(v10 + 0x10), a1);
  v12 = v11;

  if (v12 < v5)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v12 < 1)
  {
LABEL_9:
    *v2 = v9;
    return result;
  }

  v13 = *(v10 + 16);
  v7 = __OFADD__(v13, v12);
  v14 = v13 + v12;
  if (!v7)
  {
    *(v10 + 16) = v14;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_10040367C(uint64_t result)
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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_10028E4A4(result, v11, 1, v3);
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
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1004037BC(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v1 >> 62))
  {
    v4 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v5 = __OFADD__(v4, v3);
    result = v4 + v3;
    if (!v5)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = _CocoaArrayWrapper.endIndex.getter();
  v5 = __OFADD__(v13, v3);
  result = v13 + v3;
  if (v5)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_100027A84(result, 1);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_10040641C(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v10 < 1)
  {
LABEL_9:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_1004038D8(uint64_t result, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  v4 = *(result + 16);
  v5 = *v3;
  v6 = *(*v3 + 16);
  if (__OFADD__(v6, v4))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v9 = result;
  if (swift_isUniquelyReferenced_nonNull_native() && v6 + v4 <= *(v5 + 24) >> 1)
  {
    if (*(v9 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  v5 = a2();
  if (!*(v9 + 16))
  {
LABEL_10:

    if (!v4)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  v10 = (*(v5 + 24) >> 1) - *(v5 + 16);
  result = a3(0);
  if (v10 < v4)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  swift_arrayInitWithCopy();

  if (!v4)
  {
LABEL_11:
    *v3 = v5;
    return result;
  }

  v11 = *(v5 + 16);
  v12 = __OFADD__(v11, v4);
  v13 = v11 + v4;
  if (!v12)
  {
    *(v5 + 16) = v13;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_100403A1C(uint64_t result)
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

  result = sub_10028E1C8(result, v10, 1, v3);
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

uint64_t sub_100403B10(uint64_t result)
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

  result = sub_10028EFE0(result, v10, 1, v3);
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

uint64_t sub_100403C08(uint64_t a1, unint64_t a2)
{
  v5 = type metadata accessor for Data.Iterator();
  v6 = *(v5 - 8);
  result = __chkstk_darwin(v5);
  v9 = &v30[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    v11 = 0;
    if (v10 != 2)
    {
      goto LABEL_10;
    }

    v13 = *(a1 + 16);
    v12 = *(a1 + 24);
    v11 = v12 - v13;
    if (!__OFSUB__(v12, v13))
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  else if (!v10)
  {
    v11 = BYTE6(a2);
    goto LABEL_10;
  }

  if (__OFSUB__(HIDWORD(a1), a1))
  {
    goto LABEL_36;
  }

  v11 = HIDWORD(a1) - a1;
LABEL_10:
  v14 = *v2;
  v15 = *(*v2 + 2);
  v16 = v15 + v11;
  if (__OFADD__(v15, v11))
  {
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    v25 = v2;
    v26 = *(v14 + 2);
    sub_1004068BC(&unk_100975020, &type metadata accessor for Data.Iterator, &protocol conformance descriptor for Data.Iterator);
    dispatch thunk of IteratorProtocol.next()();
    if (v31)
    {
      goto LABEL_22;
    }

    while (1)
    {
      v27 = *(v14 + 3);
      v28 = v27 >> 1;
      if ((v27 >> 1) >= v26 + 1)
      {
        break;
      }

      v14 = sub_10028E4A4((v27 > 1), v26 + 1, 1, v14);
      v29 = v31;
      v28 = *(v14 + 3) >> 1;
      if ((v31 & 1) == 0)
      {
        goto LABEL_30;
      }

LABEL_27:
      *(v14 + 2) = v26;
      v2 = v25;
      if (v29)
      {
        goto LABEL_22;
      }
    }

    v29 = 0;
    do
    {
LABEL_30:
      if (v26 >= v28)
      {
        break;
      }

      v14[v26++ + 32] = v30[14];
      dispatch thunk of IteratorProtocol.next()();
      v29 = v31;
    }

    while ((v31 & 1) == 0);
    goto LABEL_27;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v18 = *(v14 + 3) >> 1, v18 < v16))
  {
    if (v15 <= v16)
    {
      v19 = v15 + v11;
    }

    else
    {
      v19 = v15;
    }

    v14 = sub_10028E4A4(isUniquelyReferenced_nonNull_native, v19, 1, v14);
    v18 = *(v14 + 3) >> 1;
  }

  v20 = v18 - *(v14 + 2);
  v21 = Data._copyContents(initializing:)();
  result = sub_100026AC0(a1, a2);
  if (v21 < v11)
  {
    goto LABEL_24;
  }

  if (v21 < 1)
  {
    goto LABEL_21;
  }

  v22 = *(v14 + 2);
  v23 = __OFADD__(v22, v21);
  v24 = v22 + v21;
  if (!v23)
  {
    *(v14 + 2) = v24;
LABEL_21:
    if (v21 != v20)
    {
LABEL_22:
      result = (*(v6 + 8))(v9, v5);
      *v2 = v14;
      return result;
    }

    goto LABEL_25;
  }

  __break(1u);
LABEL_36:
  __break(1u);
  return result;
}

id SFAirDropTransfer.init(incomingTransfer:)(uint64_t a1)
{
  v2 = type metadata accessor for SFAirDropReceive.AskRequest();
  v189 = *(v2 - 8);
  v190 = v2;
  __chkstk_darwin(v2);
  v188 = &v168 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for SFAirDrop.TransferIdentifier();
  v186 = *(v4 - 8);
  v187 = v4;
  __chkstk_darwin(v4);
  v185 = &v168 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v173 = type metadata accessor for CodableError();
  v172 = *(v173 - 8);
  __chkstk_darwin(v173);
  v171 = &v168 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SFAirDropReceive.Failure();
  v182 = *(v7 - 8);
  v183 = v7;
  v8 = __chkstk_darwin(v7);
  v174 = &v168 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v175 = &v168 - v10;
  v184 = type metadata accessor for SFAirDropReceive.ItemDestination();
  v181 = *(v184 - 8);
  v11 = __chkstk_darwin(v184);
  v13 = &v168 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v176 = &v168 - v14;
  v15 = type metadata accessor for SFAirDropReceive.Transfer.State();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = (&v168 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = sub_10028088C(&unk_100974E00, &qword_1007F8940);
  v20 = __chkstk_darwin(v19 - 8);
  v191 = &v168 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v177 = &v168 - v23;
  __chkstk_darwin(v22);
  v25 = &v168 - v24;
  v26 = type metadata accessor for SFAirDropReceive.Transfer();
  v27 = *(v26 - 8);
  __chkstk_darwin(v26);
  v29 = &v168 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000276B4(0, &qword_10097C638, SFAirDropTransferMetaData_ptr);
  v179 = v27;
  v30 = *(v27 + 16);
  v180 = v26;
  v30(v29, a1, v26);
  v178 = SFAirDropTransferMetaData.init(transfer:)(v29);
  v31 = type metadata accessor for URL();
  v192 = *(v31 - 8);
  v193 = v25;
  v32 = *(v192 + 56);
  v33 = v25;
  v34 = v18;
  v32(v33, 1, 1, v31);
  v194 = a1;
  SFAirDropReceive.Transfer.state.getter();
  v35 = (*(v16 + 88))(v18, v15);
  if (v35 == enum case for SFAirDropReceive.Transfer.State.waitingForAskResponse(_:))
  {
    (*(v16 + 96))(v18, v15);
    v36 = sub_10028088C(&qword_100974E70, &qword_1007FE3F0);
    (*(*(v36 - 8) + 8))(v18, v36);
    v183 = 0;
    v184 = 0;
    v37 = 0;
    v38 = 0;
    v181 = 1;
    v182 = _swiftEmptyArrayStorage;
LABEL_8:
    v42 = v191;
    goto LABEL_9;
  }

  if (v35 == enum case for SFAirDropReceive.Transfer.State.waitingForShareContactPermissionResponse(_:))
  {
    (*(v16 + 96))(v18, v15);
    v39 = *(sub_10028088C(&qword_10097C688, &unk_1008042A0) + 48);
    v40 = sub_10028088C(&unk_10097C660, &unk_10080D3E0);
    (*(*(v40 - 8) + 8))(v18 + v39, v40);
    v41 = type metadata accessor for SFAirDrop.ContactInfo();
LABEL_7:
    (*(*(v41 - 8) + 8))(v18, v41);
    v184 = 0;
    v37 = 0;
    v38 = 0;
    v181 = 1;
    v182 = _swiftEmptyArrayStorage;
    v183 = 1;
    goto LABEL_8;
  }

  if (v35 == enum case for SFAirDropReceive.Transfer.State.waitingForSensitivePreviewIntervention(_:))
  {
    (*(v16 + 96))(v18, v15);
    v41 = sub_10028088C(&qword_100974E70, &qword_1007FE3F0);
    goto LABEL_7;
  }

  if (v35 == enum case for SFAirDropReceive.Transfer.State.transferring(_:))
  {
    (*(v16 + 96))(v18, v15);
    v63 = v32;
    v64 = sub_10028088C(&qword_10097C680, &unk_100808F80);
    v182 = *(v64 + 48);

    v65 = *(v64 + 80);
    v66 = v181;
    v67 = v176;
    v68 = v184;
    (*(v181 + 32))(v176, v34, v184);
    v69 = v177;
    SFAirDropReceive.ItemDestination.url.getter();
    v70 = v193;
    sub_100406854(v193);
    v183 = 1;
    v63(v69, 0, 1, v31);
    sub_1003332E8(v69, v70);
    (*(v66 + 8))(v67, v68);
    v71 = type metadata accessor for SFAirDrop.DeclineAction();
    (*(*(v71 - 8) + 8))(v34 + v65, v71);
    v72 = type metadata accessor for SFAirDrop.Progress();
    (*(*(v72 - 8) + 8))(v34 + v182, v72);
    v184 = 0;
    v37 = 0;
    v38 = 0;
    v181 = 2;
    v182 = _swiftEmptyArrayStorage;
    goto LABEL_8;
  }

  if (v35 == enum case for SFAirDropReceive.Transfer.State.analyzingFullContent(_:))
  {
    (*(v16 + 96))(v18, v15);
    v73 = sub_10028088C(&qword_100974E88, &unk_100808F30);
    v182 = *(v18 + *(v73 + 48));
    v74 = v32;
    v75 = *(v73 + 80);
    v76 = v181;
    v77 = v176;
    v78 = v184;
    (*(v181 + 32))(v176, v18, v184);
    v79 = v177;
    SFAirDropReceive.ItemDestination.url.getter();
    v80 = v193;
    sub_100406854(v193);
    v183 = 1;
    v74(v79, 0, 1, v31);
    sub_1003332E8(v79, v80);
    (*(v76 + 8))(v77, v78);
    v81 = type metadata accessor for SFAirDrop.DeclineAction();
LABEL_30:
    (*(*(v81 - 8) + 8))(v34 + v75, v81);
    v184 = 0;
    v37 = 0;
    v38 = 0;
    v181 = 5;
    goto LABEL_8;
  }

  if (v35 == enum case for SFAirDropReceive.Transfer.State.waitingForSensitiveContentResponse(_:) || v35 == enum case for SFAirDropReceive.Transfer.State.waitingForSensitiveContentIntervention(_:))
  {
    (*(v16 + 96))(v18, v15);
    v82 = sub_10028088C(&qword_100974E80, &qword_100808F40);
    v182 = *(v18 + *(v82 + 48));
    v83 = v32;
    v75 = *(v82 + 64);
    v84 = v181;
    v85 = v176;
    v86 = v184;
    (*(v181 + 32))(v176, v18, v184);
    v87 = v177;
    SFAirDropReceive.ItemDestination.url.getter();
    v88 = v193;
    sub_100406854(v193);
    v183 = 1;
    v83(v87, 0, 1, v31);
    sub_1003332E8(v87, v88);
    (*(v84 + 8))(v85, v86);
    v81 = sub_10028088C(&qword_100974E70, &qword_1007FE3F0);
    goto LABEL_30;
  }

  if (v35 == enum case for SFAirDropReceive.Transfer.State.importing(_:))
  {
    (*(v16 + 96))(v18, v15);
    v182 = *(v18 + *(sub_10028088C(&qword_100974E78, &qword_1007F82D8) + 48));
    v89 = v181;
    v90 = v176;
    v91 = v184;
    (*(v181 + 32))(v176, v18, v184);
    v92 = v177;
    SFAirDropReceive.ItemDestination.url.getter();
    v93 = v32;
    v94 = v193;
    sub_100406854(v193);
    v183 = 1;
    v93(v92, 0, 1, v31);
    sub_1003332E8(v92, v94);
    (*(v89 + 8))(v90, v91);
    v184 = 0;
    v37 = 0;
    v38 = 0;
    v181 = 6;
    goto LABEL_8;
  }

  if (v35 == enum case for SFAirDropReceive.Transfer.State.waitingForOpenResponse(_:))
  {
    (*(v16 + 96))(v18, v15);
    v95 = v32;
    v96 = sub_10028088C(&unk_10097C670, &qword_100805110);

    v182 = *(v18 + *(v96 + 64));
    v97 = *(v96 + 80);
    v98 = v181;
    v99 = v176;
    v100 = v184;
    (*(v181 + 32))(v176, v18, v184);
    v101 = v177;
    SFAirDropReceive.ItemDestination.url.getter();
    v102 = v193;
    sub_100406854(v193);
    v183 = 1;
    v95(v101, 0, 1, v31);
    sub_1003332E8(v101, v102);
    (*(v98 + 8))(v99, v100);
    v103 = sub_10028088C(&qword_100974E70, &qword_1007FE3F0);
    (*(*(v103 - 8) + 8))(v34 + v97, v103);
    v184 = 0;
    v37 = 0;
    v38 = 0;
    v181 = 7;
    goto LABEL_8;
  }

  if (v35 == enum case for SFAirDropReceive.Transfer.State.waitingForOpenDestinationResponse(_:))
  {
    (*(v16 + 96))(v18, v15);
    v104 = v32;
    v105 = sub_10028088C(&unk_10097C670, &qword_100805110);

    v182 = *(v18 + *(v105 + 64));
    v106 = v181;
    (*(v181 + 32))(v13, v18, v184);
    v107 = v177;
    SFAirDropReceive.ItemDestination.url.getter();
    v108 = v193;
    sub_100406854(v193);
    v104(v107, 0, 1, v31);
    sub_1003332E8(v107, v108);
    v109 = String._bridgeToObjectiveC()();
    v110 = SFLocalizedStringForKey();

    if (v110)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v37 = v111;
    }

    else
    {
      v37 = 0;
    }

    v42 = v191;
    v126 = *(v105 + 80);
    (*(v106 + 8))(v13, v184);
    v127 = sub_10028088C(&qword_100974E70, &qword_1007FE3F0);
    (*(*(v127 - 8) + 8))(v34 + v126, v127);
    v38 = 0;
    v183 = 1;
    v184 = 0;
    v181 = 7;
LABEL_9:
    v43 = v185;
    SFAirDropReceive.Transfer.id.getter();
    SFAirDrop.TransferIdentifier.stringValue.getter();
    (*(v186 + 8))(v43, v187);
    v44 = String._bridgeToObjectiveC()();

    if (v38)
    {
      v45 = _convertErrorToNSError(_:)();
    }

    else
    {
      v45 = 0;
    }

    v46 = v192;
    sub_100333278(v193, v42);
    v48 = v31;
    if ((*(v46 + 48))(v42, 1, v31) == 1)
    {
      v49 = 0;
    }

    else
    {
      URL._bridgeToObjectiveC()(v47);
      v49 = v50;
      (*(v46 + 8))(v42, v48);
    }

    v51 = String._bridgeToObjectiveC()();

    if (v37)
    {
      v52 = String._bridgeToObjectiveC()();
    }

    else
    {
      v52 = 0;
    }

    v53 = v188;
    SFAirDropReceive.Transfer.askRequest.getter();
    v54 = SFAirDropReceive.AskRequest.urlItems.getter();
    (*(v189 + 8))(v53, v190);
    v55 = *(v54 + 16);
    if (v55)
    {
      v56 = sub_10028F660(*(v54 + 16), 0);
      v57 = sub_100291948(&v197, &v56[(*(v192 + 80) + 32) & ~*(v192 + 80)], v55, v54);
      sub_100027D64(v197);
      if (v57 == v55)
      {
LABEL_22:
        v58 = objc_allocWithZone(swift_getObjCClassFromMetadata());
        v197 = v182;
        sub_1004038D8(v56, sub_10028E2D4, &type metadata accessor for URL);
        isa = Array._bridgeToObjectiveC()().super.isa;

        v60 = v178;
        v61 = [v58 initWithIdentifier:v44 metaData:v178 userResponse:v183 transferState:v181 failureReason:v184 error:v45 customDestinationURL:v49 contentsTitle:v51 contentsDescription:v52 selectedAction:0 possibleActions:0 cancelAction:0 completedURLs:isa];

        (*(v179 + 8))(v194, v180);
        sub_100406854(v193);
        return v61;
      }

      __break(1u);
    }

    v56 = _swiftEmptyArrayStorage;
    goto LABEL_22;
  }

  if (v35 == enum case for SFAirDropReceive.Transfer.State.opening(_:))
  {
    (*(v16 + 96))(v18, v15);
    v112 = v32;
    v113 = sub_10028088C(&unk_100974E60, &qword_100808EC0);

    v182 = *(v18 + *(v113 + 64));
    v114 = v181;
    v115 = v176;
    v116 = v184;
    (*(v181 + 32))(v176, v18, v184);
    v117 = v177;
    SFAirDropReceive.ItemDestination.url.getter();
    v118 = v193;
    sub_100406854(v193);
    v183 = 1;
    v112(v117, 0, 1, v31);
    sub_1003332E8(v117, v118);
    (*(v114 + 8))(v115, v116);
LABEL_40:
    v184 = 0;
    v37 = 0;
    v38 = 0;
LABEL_50:
    v181 = 8;
    goto LABEL_8;
  }

  if (v35 == enum case for SFAirDropReceive.Transfer.State.waitingForShouldImportContactResponse(_:))
  {
    v119 = v193;
    sub_100406854(v193);
    (*(v16 + 96))(v18, v15);
    v120 = sub_10028088C(&unk_10097E9C0, &unk_100808DC0);
    v121 = v32;
    v122 = *(v120 + 48);
    v183 = 1;
    v121(v119, 1, 1, v31);
    v123 = &qword_100974E70;
    v124 = &qword_1007FE3F0;
LABEL_43:
    v125 = sub_10028088C(v123, v124);
    (*(*(v125 - 8) + 8))(v18 + v122, v125);
LABEL_48:
    v130 = type metadata accessor for SFAirDrop.ContactInfo();
    (*(*(v130 - 8) + 8))(v18, v130);
LABEL_49:
    v184 = 0;
    v37 = 0;
    v38 = 0;
    v182 = _swiftEmptyArrayStorage;
    goto LABEL_50;
  }

  if (v35 == enum case for SFAirDropReceive.Transfer.State.importingReceivedContact(_:))
  {
    v128 = v32;
    v129 = v193;
    sub_100406854(v193);
    (*(v16 + 96))(v18, v15);
    v183 = 1;
    v128(v129, 1, 1, v31);
    goto LABEL_48;
  }

  v170 = v32;
  if (v35 == enum case for SFAirDropReceive.Transfer.State.waitingForContactShareBackResponse(_:))
  {
    v131 = v193;
    sub_100406854(v193);
    (*(v16 + 96))(v18, v15);
    v122 = *(sub_10028088C(&qword_10097C658, &unk_1008042B0) + 48);
    v183 = 1;
    v170(v131, 1, 1, v31);
    v123 = &unk_10097C660;
    v124 = &unk_10080D3E0;
    goto LABEL_43;
  }

  v169 = v31;
  if (v35 == enum case for SFAirDropReceive.Transfer.State.sharingContactBack(_:))
  {
    v132 = v193;
    sub_100406854(v193);
    (*(v16 + 96))(v18, v15);
    v133 = *(sub_10028088C(&qword_10097C650, &unk_100808DE0) + 48);
    v183 = 1;
    v31 = v169;
    v170(v132, 1, 1, v169);
    v134 = type metadata accessor for SFAirDrop.ContactRequest();
    v135 = *(*(v134 - 8) + 8);
    v135(v18 + v133, v134);
    v135(v18, v134);
    goto LABEL_49;
  }

  if (v35 == enum case for SFAirDropReceive.Transfer.State.completedSuccessfully(_:))
  {
    (*(v16 + 96))(v18, v15);
    v136 = sub_10028088C(&unk_10097E9B0, &unk_100808D90);
    v137 = *(v136 + 48);

    v182 = *(v18 + *(v136 + 96));

    v138 = v181;
    v139 = v18 + v137;
    v140 = v176;
    v141 = v184;
    (*(v181 + 32))(v176, v139, v184);
    v142 = v177;
    SFAirDropReceive.ItemDestination.url.getter();
    v143 = v193;
    sub_100406854(v193);
    v183 = 1;
    v31 = v169;
    v170(v142, 0, 1, v169);
    sub_1003332E8(v142, v143);
    (*(v138 + 8))(v140, v141);
    v144 = type metadata accessor for SFAirDropReceive.Transfer.Metrics();
    (*(*(v144 - 8) + 8))(v18, v144);
    goto LABEL_40;
  }

  if (v35 == enum case for SFAirDropReceive.Transfer.State.transferFailed(_:))
  {
    (*(v16 + 96))(v18, v15);
    v145 = sub_10028088C(&qword_10097A670, &unk_100804290);
    v147 = v182;
    v146 = v183;
    v148 = v175;
    (*(v182 + 32))(v175, v18 + *(v145 + 48), v183);
    sub_1004068BC(&unk_10097A660, &type metadata accessor for SFAirDropReceive.Failure, &protocol conformance descriptor for SFAirDropReceive.Failure);
    v38 = swift_allocError();
    v149 = *(v147 + 16);
    v149(v150, v148, v146);
    v184 = SFAirDropReceive.Failure.legacyFailureReason.getter();
    v151 = v174;
    v149(v174, v148, v146);
    v152 = (*(v147 + 88))(v151, v146);
    if (v152 == enum case for SFAirDropReceive.Failure.unsupportedType(_:))
    {
      v153 = v182;
      v154 = v183;
      v155 = v174;
      (*(v182 + 96))(v174, v183);

      v156 = *(sub_10028088C(&unk_10097C640, &unk_1008012A8) + 48);
      v37 = 0x800000010078FB40;
      (*(v153 + 8))(v175, v154);
      (*(v192 + 8))(&v155[v156], v169);
LABEL_60:
      v183 = 2;
      v157 = 9;
LABEL_76:
      v181 = v157;
LABEL_77:
      v167 = type metadata accessor for SFAirDropReceive.Transfer.Metrics();
      (*(*(v167 - 8) + 8))(v34, v167);
      goto LABEL_78;
    }

    if (v152 == enum case for SFAirDropReceive.Failure.unexpected(_:))
    {
      v158 = v182;
      v159 = v174;
      (*(v182 + 96))(v174, v183);
      v160 = v172;
      v161 = v171;
      v162 = v173;
      (*(v172 + 32))(v171, v159, v173);
      v197 = 0;
      v198 = 0xE000000000000000;
      v163._countAndFlagsBits = 0x203A64656C696146;
      v163._object = 0xE800000000000000;
      String.append(_:)(v163);
      v195 = CodableError.localizedDescription.getter();
      v196 = v164;
      DefaultStringInterpolation.appendInterpolation<A>(_:)();

      v37 = v198;
      (*(v160 + 8))(v161, v162);
      (*(v158 + 8))(v175, v183);
      v183 = 0;
      v157 = 9;
      goto LABEL_76;
    }

    if (v152 == enum case for SFAirDropReceive.Failure.declined(_:))
    {
      goto LABEL_71;
    }

    if (v152 == enum case for SFAirDropReceive.Failure.askDismissed(_:))
    {
      (*(v182 + 8))(v175, v183);
      v37 = 0xED00006465737369;
      v166 = 3;
      goto LABEL_74;
    }

    if (v152 == enum case for SFAirDropReceive.Failure.senderCancelled(_:))
    {
      (*(v182 + 8))(v175, v183);
      v183 = 0;
      v37 = 0xEF64656C65636E61;
      v157 = 3;
      goto LABEL_76;
    }

    if (v152 == enum case for SFAirDropReceive.Failure.receiverCancelled(_:))
    {
LABEL_71:
      (*(v182 + 8))(v175, v183);
      v37 = 0xE800000000000000;
      v166 = 2;
LABEL_74:
      v183 = v166;
LABEL_75:
      v157 = 8;
      goto LABEL_76;
    }

    if (v152 == enum case for SFAirDropReceive.Failure.mixedTypes(_:))
    {
      (*(v182 + 8))(v175, v183);
      v37 = 0xEB00000000736570;
      goto LABEL_60;
    }

    if (v152 == enum case for SFAirDropReceive.Failure.missingDownloadDirectory(_:))
    {
      v37 = 0x800000010078FB20;
      (*(v182 + 8))(v175, v183);
      v183 = 0;
      v181 = 9;
      goto LABEL_77;
    }

    if (v152 == enum case for SFAirDropReceive.Failure.missingOwnContact(_:))
    {
      v37 = 0x800000010078FB00;
      (*(v182 + 8))(v175, v183);
      v183 = 0;
      v157 = 9;
      goto LABEL_76;
    }

    if (v152 == enum case for SFAirDropReceive.Failure.streamError(_:))
    {
      (*(v182 + 8))(v175, v183);
      v183 = 0;
      v37 = 0xEC000000726F7272;
      v157 = 9;
      goto LABEL_76;
    }

    if (v152 == enum case for SFAirDropReceive.Failure.askNotHandled(_:))
    {
      (*(v182 + 8))(v175, v183);
      v37 = 0xEF64656C646E6168;
      goto LABEL_60;
    }

    if (v152 == enum case for SFAirDropReceive.Failure.incompleteTransfer(_:))
    {
      v37 = 0x800000010078FB60;
      (*(v182 + 8))(v175, v183);
      goto LABEL_60;
    }

    if (v152 == enum case for SFAirDropReceive.Failure.badRequest(_:))
    {
      (*(v182 + 8))(v175, v183);
      v183 = 0;
      v37 = 0xEB00000000747365;
      v157 = 9;
      goto LABEL_76;
    }

    if (v152 == enum case for SFAirDropReceive.Failure.moveToAppFailed(_:))
    {
      v37 = 0x800000010078FAD0;
      (*(v182 + 8))(v175, v183);
      v183 = 0;
      goto LABEL_75;
    }

    if (v152 == enum case for SFAirDropReceive.Failure.insufficientStorage(_:))
    {
      v37 = 0x800000010078FAB0;
      (*(v182 + 8))(v175, v183);
      v183 = 0;
      goto LABEL_75;
    }
  }

  else
  {
    if (v35 == enum case for SFAirDropReceive.Transfer.State.legacyTransferState(_:))
    {
      (*(v16 + 96))(v18, v15);
      v183 = 0;
      v184 = 0;
      v37 = 0;
      v38 = 0;
      v181 = *v18;
LABEL_78:
      v182 = _swiftEmptyArrayStorage;
LABEL_79:
      v31 = v169;
      goto LABEL_8;
    }

    v184 = 0;
    v181 = 1;
    v182 = _swiftEmptyArrayStorage;
    if (v35 == enum case for SFAirDropReceive.Transfer.State.created(_:) || v35 == enum case for SFAirDropReceive.Transfer.State.autoAccepted(_:))
    {
      v38 = v184;
      v183 = v184;
      v37 = v184;
      goto LABEL_79;
    }

    v38 = v184;
    v183 = v184;
    v37 = v184;
    v31 = v169;
    v42 = v191;
    if (v35 == enum case for SFAirDropReceive.Transfer.State.analyizingPreview(_:))
    {
      goto LABEL_9;
    }

    if (v35 == enum case for SFAirDropReceive.Transfer.State.waitingForContactExchangeRequest(_:))
    {
      v165 = v193;
      sub_100406854(v193);
      v183 = 1;
      v31 = v169;
      v170(v165, 1, 1, v169);
      goto LABEL_49;
    }

    _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t sub_100405F44(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_100406904(&unk_10097C6A0, &qword_10097C698, &qword_1008012C0);
          for (i = 0; i != v6; ++i)
          {
            sub_10028088C(&qword_10097C698, &qword_1008012C0);
            v9 = sub_1004065BC(v13, i, a3);
            v11 = *v10;
            swift_unknownObjectRetain();
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_10028088C(&qword_10097C690, &qword_1008012B8);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1004060E0(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_100406904(&qword_10097C6F8, &qword_10097C6F0, &qword_1008012D8);
          for (i = 0; i != v6; ++i)
          {
            sub_10028088C(&qword_10097C6F0, &qword_1008012D8);
            v9 = sub_100406644(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_1000276B4(0, &unk_100977380, SFDevice_ptr);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100406280(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_100406904(&unk_10097C6C0, &qword_10097C6B8, &qword_1008012C8);
          for (i = 0; i != v6; ++i)
          {
            sub_10028088C(&qword_10097C6B8, &qword_1008012C8);
            v9 = sub_1004066C4(v13, i, a3);
            v11 = *v10;
            swift_unknownObjectRetain();
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_10028088C(&unk_10097A940, &unk_100807F40);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10040641C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_100406904(&unk_10097C6E0, &qword_10097C6D8, &qword_1008012D0);
          for (i = 0; i != v6; ++i)
          {
            sub_10028088C(&qword_10097C6D8, &qword_1008012D0);
            v9 = sub_100406744(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_1000276B4(0, &qword_10097C6D0, PHMediaFormatConversionDestination_ptr);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t (*sub_1004065BC(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = swift_unknownObjectRetain();
LABEL_5:
    *v3 = v4;
    return sub_10040663C;
  }

  __break(1u);
  return result;
}

void (*sub_100406644(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_10040695C;
  }

  __break(1u);
  return result;
}

uint64_t *sub_1004066C4(uint64_t *result, unint64_t a2, uint64_t a3)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = swift_unknownObjectRetain();
LABEL_5:
    *v3 = v4;
    return sub_100406958;
  }

  __break(1u);
  return result;
}

void (*sub_100406744(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_1004067C4;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_1004067CC(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {

LABEL_5:
    *v3 = v4;
    return sub_10040684C;
  }

  __break(1u);
  return result;
}

uint64_t sub_100406854(uint64_t a1)
{
  v2 = sub_10028088C(&unk_100974E00, &qword_1007F8940);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1004068BC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100406904(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100280938(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100406964()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_10097C700);
  v1 = sub_10000C4AC(v0, qword_10097C700);
  if (qword_1009736E0 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C4AC(v0, qword_1009A08E8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100406A2C(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for NWEndpoint();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = (&v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_10028088C(&unk_100976120, &qword_1007F9260);
  __chkstk_darwin(v10 - 8);
  v12 = &v33 - v11;
  v13 = type metadata accessor for UUID();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v3 + OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropDiscoveredPerson_allEndpoints) = _swiftEmptySetSingleton;
  *(v3 + OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropDiscoveredPerson_bonjourEndpoints) = _swiftEmptySetSingleton;
  *(v3 + OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropDiscoveredPerson_applicationServiceEndpoints) = _swiftEmptySetSingleton;
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  (*(v14 + 56))(v12, 1, 1, v13);

  sub_10062E9D8(v12, a1, a2, v16);
  v17 = v12;
  v18 = v13;
  sub_100005508(v17, &unk_100976120, &qword_1007F9260);
  (*(v14 + 16))(v3 + OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropDiscoveredPerson_connectableUUID, v16, v13);
  *v9 = nw_endpoint_create_application_service();
  (*(v7 + 104))(v9, enum case for NWEndpoint.opaque(_:), v6);
  (*(v7 + 32))(v3 + OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropDiscoveredPerson_displayEndpoint, v9, v6);
  v19 = (v3 + OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropDiscoveredPerson_contactID);
  *v19 = a1;
  v19[1] = a2;

  sub_10054141C(8, a1, a2);

  v20 = static String._fromSubstring(_:)();
  v22 = v21;

  v23 = (v3 + OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropDiscoveredPerson_debugIdentifier);
  *v23 = v20;
  v23[1] = v22;
  if (qword_100973808 != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for Logger();
  sub_10000C4AC(v24, qword_10097C700);

  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v33 = v28;
    *v27 = 136315138;
    v29 = *(v3 + 16);
    v30 = *(v3 + 24);

    v31 = sub_10000C4E4(v29, v30, &v33);

    *(v27 + 4) = v31;
    _os_log_impl(&_mh_execute_header, v25, v26, "Creating Person %s", v27, 0xCu);
    sub_10000C60C(v28);
  }

  (*(v14 + 8))(v16, v18);
  return v3;
}

uint64_t sub_100406EAC()
{
  _StringGuts.grow(_:)(48);

  v1 = *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropDiscoveredPerson_debugIdentifier);
  v2 = *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropDiscoveredPerson_debugIdentifier + 8);

  v3._countAndFlagsBits = v1;
  v3._object = v2;
  String.append(_:)(v3);

  v4._countAndFlagsBits = 0x6F6A6E6F42202D20;
  v4._object = 0xEC000000203A7275;
  String.append(_:)(v4);
  swift_beginAccess();
  v5._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v5);

  v6._object = 0x800000010078FC60;
  v6._countAndFlagsBits = 0xD000000000000016;
  String.append(_:)(v6);
  swift_beginAccess();
  v7._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v7);

  v8._countAndFlagsBits = 41;
  v8._object = 0xE100000000000000;
  String.append(_:)(v8);
  return 0x286E6F73726550;
}

uint64_t sub_100407048()
{
  v1 = v0;
  v2 = type metadata accessor for SFAirDrop.DeviceRelationship();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SFAirDrop.TXTRecord();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10028088C(&qword_1009763E0, &qword_1007F95D0);
  __chkstk_darwin(v10 - 8);
  v12 = &v44 - v11;
  v44 = sub_100406EAC();
  v14 = v13;
  result = NWEndpoint.nw.getter();
  v47 = result;
  if (result)
  {
    v46 = v6;
    swift_beginAccess();

    sub_1002FB3B4(v16, v12);

    v17 = type metadata accessor for SDAirDropDiscoveredEndpoint(0);
    if ((*(*(v17 - 8) + 48))(v12, 1, v17) == 1)
    {
      sub_100005508(v12, &qword_1009763E0, &qword_1007F95D0);
    }

    else
    {
      sub_10032EA74();
      v19 = v18;
      sub_1002F96B0(v12, type metadata accessor for SDAirDropDiscoveredEndpoint);
      if (v19)
      {
        String.utf8CString.getter();

        nw_endpoint_set_contact_id();
      }
    }

    (*(v3 + 104))(v5, enum case for SFAirDrop.DeviceRelationship.contact(_:), v2);
    SFAirDrop.TXTRecord.init(deviceRelationship:)();
    SFAirDrop.TXTRecord.addToEndpoint(_:)();
    v20 = *(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropDiscoveredPerson_contactID);
    v21 = *(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropDiscoveredPerson_contactID + 8);

    sub_10054141C(8, v20, v21);

    v22 = static String._fromSubstring(_:)();
    v24 = v23;

    v49 = v22;
    v50 = v24;
    v25._countAndFlagsBits = 58;
    v25._object = 0xE100000000000000;
    String.append(_:)(v25);
    v51 = v49;
    v52 = v50;
    v26 = OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropDiscoveredPerson_applicationServiceEndpoints;
    swift_beginAccess();
    if (*(*(v1 + v26) + 16))
    {
      v27._countAndFlagsBits = 97;
      v27._object = 0xE100000000000000;
      String.append(_:)(v27);
    }

    v45 = v7;
    v28 = OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropDiscoveredPerson_bonjourEndpoints;
    swift_beginAccess();
    if (*(*(v1 + v28) + 16))
    {
      v29._countAndFlagsBits = 98;
      v29._object = 0xE100000000000000;
      String.append(_:)(v29);
    }

    v30._countAndFlagsBits = 99;
    v30._object = 0xE100000000000000;
    String.append(_:)(v30);
    v32 = v51;
    v31 = v52;
    v33 = (v1 + OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropDiscoveredPerson_debugIdentifier);
    *v33 = v51;
    v33[1] = v31;

    v34 = sub_100406EAC();
    v36 = v35;
    if (qword_100973808 != -1)
    {
      swift_once();
    }

    v37 = type metadata accessor for Logger();
    sub_10000C4AC(v37, qword_10097C700);

    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      *v40 = 136315651;
      v41 = sub_10000C4E4(v32, v31, &v48);

      *(v40 + 4) = v41;
      *(v40 + 12) = 2081;
      v42 = sub_10000C4E4(v44, v14, &v48);

      *(v40 + 14) = v42;
      *(v40 + 22) = 2081;
      v43 = sub_10000C4E4(v34, v36, &v48);

      *(v40 + 24) = v43;
      _os_log_impl(&_mh_execute_header, v38, v39, "DiscoveredPerson Updated %s [%{private}s] -> [%{private}s]", v40, 0x20u);
      swift_arrayDestroy();

      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
    }

    return (*(v45 + 8))(v9, v46);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100407640()
{

  v1 = OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropDiscoveredPerson_connectableUUID;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropDiscoveredPerson_displayEndpoint;
  v4 = type metadata accessor for NWEndpoint();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return v0;
}

uint64_t sub_100407740()
{
  sub_100407640();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SDAirDropDiscoveredPerson(uint64_t a1)
{
  result = qword_10097C760;
  if (!qword_10097C760)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1004077EC(uint64_t a1)
{
  result = type metadata accessor for UUID();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for NWEndpoint();
    if (v3 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

double sub_1004078D8@<D0>(void *a1@<X8>)
{
  v2 = *(*v1 + 24);
  *a1 = *(*v1 + 16);
  a1[1] = v2;

  return result;
}

uint64_t sub_10040792C()
{
  v1 = v0;
  v37 = type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint(0);
  __chkstk_darwin(v37);
  v36 = &v34 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint(0);
  __chkstk_darwin(v3 - 8);
  v35 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SDAirDropDiscoveredEndpoint(0);
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v34 - v10;
  v12 = OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropDiscoveredPerson_allEndpoints;
  swift_beginAccess();
  v13 = *(v1 + v12);
  v14 = 1 << *(v13 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & *(v13 + 56);
  v17 = (v14 + 63) >> 6;
  result = swift_bridgeObjectRetain_n();
  v19 = 0;
  LOBYTE(v20) = 0;
  v38 = v9;
  while (v16)
  {
    v23 = v19;
LABEL_11:
    v24 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
    sub_1004096A8(*(v13 + 48) + *(v6 + 72) * (v24 | (v23 << 6)), v11, type metadata accessor for SDAirDropDiscoveredEndpoint);
    if (v20)
    {
      v21 = type metadata accessor for SDAirDropDiscoveredEndpoint;
      v22 = v11;
      goto LABEL_5;
    }

    sub_1004096A8(v11, v9, type metadata accessor for SDAirDropDiscoveredEndpoint);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        sub_1002F96B0(v11, type metadata accessor for SDAirDropDiscoveredEndpoint);
        v21 = type metadata accessor for SDAirDropDiscoveredEndpoint.NearFieldEndpoint;
        v22 = v9;
      }

      else
      {
        sub_1002F96B0(v11, type metadata accessor for SDAirDropDiscoveredEndpoint);
        v22 = v9;
        v21 = type metadata accessor for SDAirDropDiscoveredEndpoint;
      }

LABEL_5:
      result = sub_1002F96B0(v22, v21);
      LOBYTE(v20) = 1;
      v19 = v23;
    }

    else if (EnumCaseMultiPayload)
    {
      sub_1002F96B0(v11, type metadata accessor for SDAirDropDiscoveredEndpoint);
      v29 = v9;
      v30 = v6;
      v31 = v5;
      v32 = v36;
      sub_100409620(v29, v36, type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint);
      LOBYTE(v20) = *(v32 + *(v37 + 60));
      v33 = v32;
      v5 = v31;
      v6 = v30;
      v9 = v38;
      result = sub_1002F96B0(v33, type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint);
      v19 = v23;
    }

    else
    {
      v26 = v9;
      v27 = v35;
      sub_100409620(v26, v35, type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint);
      if ((sub_10032C7CC() & 0x4000000000) != 0)
      {
        sub_1002F96B0(v27, type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint);
        result = sub_1002F96B0(v11, type metadata accessor for SDAirDropDiscoveredEndpoint);
        LOBYTE(v20) = 1;
      }

      else
      {
        v28 = sub_10032C7CC();
        sub_1002F96B0(v27, type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint);
        result = sub_1002F96B0(v11, type metadata accessor for SDAirDropDiscoveredEndpoint);
        v20 = (v28 >> 39) & 1;
      }

      v19 = v23;
      v9 = v38;
    }
  }

  while (1)
  {
    v23 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v23 >= v17)
    {

      return v20 & 1;
    }

    v16 = *(v13 + 56 + 8 * v23);
    ++v19;
    if (v16)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100407D98(uint64_t a1)
{
  v2[17] = a1;
  v2[18] = v1;
  type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint(0);
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v3 = type metadata accessor for UUID();
  v2[22] = v3;
  v2[23] = *(v3 - 8);
  v2[24] = swift_task_alloc();
  sub_10028088C(&qword_10097C830, &qword_1008013F8);
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  v4 = type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint(0);
  v2[27] = v4;
  v2[28] = *(v4 - 8);
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();
  v2[32] = swift_task_alloc();
  v2[33] = swift_task_alloc();
  v2[34] = type metadata accessor for SDAirDropDiscoveredEndpoint(0);
  v2[35] = swift_task_alloc();
  v2[36] = swift_task_alloc();
  v2[37] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v5 = static AirDropActor.shared;

  return _swift_task_switch(sub_100407FEC, v5, 0);
}

uint64_t sub_100407FEC()
{
  v62 = v0;
  sub_1004096A8(v0[17], v0[37], type metadata accessor for SDAirDropDiscoveredEndpoint);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      sub_100409620(v0[37], v0[21], type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint);
      if (qword_100973808 != -1)
      {
        swift_once();
      }

      v16 = type metadata accessor for Logger();
      sub_10000C4AC(v16, qword_10097C700);

      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v17, v18))
      {
        v19 = v0[18];
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        v61[0] = v21;
        *v20 = 136315138;
        *(v20 + 4) = sub_10000C4E4(*(v19 + 16), *(v19 + 24), v61);
        _os_log_impl(&_mh_execute_header, v17, v18, "Person: %s adding bonjour endpoint", v20, 0xCu);
        sub_10000C60C(v21);
      }

      v23 = v0[20];
      v22 = v0[21];
      v24 = v0[19];
      sub_1004096A8(v22, v24, type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint);
      swift_beginAccess();
      sub_10046F45C(v23, v24);
      swift_endAccess();
      v25 = type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint;
    }

    else
    {
      v2 = v0[33];
      v3 = v0[27];
      v4 = v0[28];
      v5 = v0[26];
      v6 = v0[18];
      sub_100409620(v0[37], v2, type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint);
      v7 = OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropDiscoveredPerson_applicationServiceEndpoints;
      swift_beginAccess();
      v8 = *(v6 + v7);
      *(swift_task_alloc() + 16) = v2;

      sub_1002CC86C(sub_100409688, v8, v5);

      if ((*(v4 + 48))(v5, 1, v3) == 1)
      {
        sub_100005508(v0[26], &qword_10097C830, &qword_1008013F8);
      }

      else
      {
        sub_100409620(v0[26], v0[32], type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint);
        if (qword_100973808 != -1)
        {
          swift_once();
        }

        v30 = v0[31];
        v31 = v0[32];
        v32 = type metadata accessor for Logger();
        sub_10000C4AC(v32, qword_10097C700);
        sub_1004096A8(v31, v30, type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint);
        v33 = Logger.logObject.getter();
        v34 = static os_log_type_t.default.getter();
        v35 = os_log_type_enabled(v33, v34);
        v36 = v0[31];
        if (v35)
        {
          v37 = v0[23];
          v38 = v0[24];
          v39 = v0[22];
          v40 = swift_slowAlloc();
          v60 = swift_slowAlloc();
          v61[0] = v60;
          *v40 = 136315138;
          v59 = v34;
          sub_10032C0AC(v60);
          sub_100409710(&qword_100978CE0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          v41 = dispatch thunk of CustomStringConvertible.description.getter();
          v43 = v42;
          (*(v37 + 8))(v38, v39);
          sub_1002F96B0(v36, type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint);
          v44 = sub_10000C4E4(v41, v43, v61);

          *(v40 + 4) = v44;
          _os_log_impl(&_mh_execute_header, v33, v59, "Removing duplicate/stale endpoint %s", v40, 0xCu);
          sub_10000C60C(v60);
        }

        else
        {

          sub_1002F96B0(v36, type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint);
        }

        v45 = v0[32];
        v46 = v0[25];
        swift_beginAccess();
        sub_10036E504(v46);
        swift_endAccess();
        sub_100005508(v46, &qword_10097C830, &qword_1008013F8);
        sub_1002F96B0(v45, type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint);
      }

      if (qword_100973808 != -1)
      {
        swift_once();
      }

      v47 = type metadata accessor for Logger();
      sub_10000C4AC(v47, qword_10097C700);

      v48 = Logger.logObject.getter();
      v49 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v48, v49))
      {
        v50 = v0[18];
        v51 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        v61[0] = v52;
        *v51 = 136315138;
        *(v51 + 4) = sub_10000C4E4(*(v50 + 16), *(v50 + 24), v61);
        _os_log_impl(&_mh_execute_header, v48, v49, "Person: %s adding application service endpoint", v51, 0xCu);
        sub_10000C60C(v52);
      }

      v22 = v0[33];
      v53 = v0[29];
      v23 = v0[30];
      sub_1004096A8(v22, v53, type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint);
      swift_beginAccess();
      sub_10046F69C(v23, v53);
      swift_endAccess();
      v25 = type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint;
    }

    v54 = v25;
    sub_1002F96B0(v23, v25);
    v15 = v22;
    v14 = v54;
LABEL_33:
    sub_1002F96B0(v15, v14);
    goto LABEL_34;
  }

  if (EnumCaseMultiPayload == 2)
  {
    if (qword_100973808 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_10000C4AC(v9, qword_10097C700);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "NearField endpoints not applicable for SDAirDropDiscoveredPerson", v12, 2u);
    }

    v13 = v0[37];

    v14 = type metadata accessor for SDAirDropDiscoveredEndpoint.NearFieldEndpoint;
    v15 = v13;
    goto LABEL_33;
  }

  sub_1002F96B0(v0[37], type metadata accessor for SDAirDropDiscoveredEndpoint);
  if (qword_100973808 != -1)
  {
    swift_once();
  }

  v26 = type metadata accessor for Logger();
  sub_10000C4AC(v26, qword_10097C700);
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&_mh_execute_header, v27, v28, "Classroom endpoints not applicable for SDAirDropDiscoveredPerson", v29, 2u);
  }

LABEL_34:
  v55 = v0[36];
  v56 = v0[35];
  sub_1004096A8(v0[17], v56, type metadata accessor for SDAirDropDiscoveredEndpoint);
  swift_beginAccess();
  sub_10046DE64(v55, v56);
  swift_endAccess();
  sub_1002F96B0(v55, type metadata accessor for SDAirDropDiscoveredEndpoint);
  sub_100407048();

  v57 = v0[1];

  return v57();
}

uint64_t sub_100408A08(uint64_t a1)
{
  result = NWEndpoint.nw.getter();
  if (result)
  {
    device_id = nw_endpoint_get_device_id();
    swift_unknownObjectRelease();
    if (device_id)
    {
      v3 = String.init(cString:)();
      device_id = v4;
    }

    else
    {
      v3 = 0;
    }

    result = NWEndpoint.nw.getter();
    if (result)
    {
      v5 = nw_endpoint_get_device_id();
      swift_unknownObjectRelease();
      if (v5)
      {
        v6 = String.init(cString:)();
        if (device_id)
        {
          if (v7)
          {
            if (v3 == v6 && device_id == v7)
            {

              v8 = 1;
            }

            else
            {
              v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
            }

            goto LABEL_18;
          }

          goto LABEL_13;
        }

        if (v7)
        {
          v8 = 0;
          goto LABEL_18;
        }
      }

      else if (device_id)
      {
LABEL_13:
        v8 = 0;
LABEL_18:

        return v8 & 1;
      }

      v8 = 1;
      return v8 & 1;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100408B30(uint64_t a1)
{
  v2[11] = a1;
  v2[12] = v1;
  sub_10028088C(&qword_1009763E0, &qword_1007F95D0);
  v2[13] = swift_task_alloc();
  sub_10028088C(&qword_10097C828, &qword_1008013F0);
  v2[14] = swift_task_alloc();
  type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint(0);
  v2[15] = swift_task_alloc();
  sub_10028088C(&qword_10097C830, &qword_1008013F8);
  v2[16] = swift_task_alloc();
  type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint(0);
  v2[17] = swift_task_alloc();
  v2[18] = type metadata accessor for SDAirDropDiscoveredEndpoint(0);
  v2[19] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v3 = static AirDropActor.shared;

  return _swift_task_switch(sub_100408CFC, v3, 0);
}

uint64_t sub_100408CFC()
{
  sub_1004096A8(v0[11], v0[19], type metadata accessor for SDAirDropDiscoveredEndpoint);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      sub_100409620(v0[19], v0[15], type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint);
      if (qword_100973808 != -1)
      {
        swift_once();
      }

      v13 = type metadata accessor for Logger();
      sub_10000C4AC(v13, qword_10097C700);
      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 0;
        _os_log_impl(&_mh_execute_header, v14, v15, "Person: Removing bonjour endpoint", v16, 2u);
      }

      v17 = v0[14];
      v6 = v0[15];

      swift_beginAccess();
      sub_10036E9BC(v6, v17);
      swift_endAccess();
      sub_100005508(v17, &qword_10097C828, &qword_1008013F0);
      v8 = type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint;
    }

    else
    {
      sub_100409620(v0[19], v0[17], type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint);
      if (qword_100973808 != -1)
      {
        swift_once();
      }

      v2 = type metadata accessor for Logger();
      sub_10000C4AC(v2, qword_10097C700);
      v3 = Logger.logObject.getter();
      v4 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v3, v4))
      {
        v5 = swift_slowAlloc();
        *v5 = 0;
        _os_log_impl(&_mh_execute_header, v3, v4, "Person: Removing application service endpoint", v5, 2u);
      }

      v7 = v0[16];
      v6 = v0[17];

      swift_beginAccess();
      sub_10036E504(v7);
      swift_endAccess();
      sub_100005508(v7, &qword_10097C830, &qword_1008013F8);
      v8 = type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint;
    }

LABEL_19:
    sub_1002F96B0(v6, v8);
    goto LABEL_25;
  }

  if (EnumCaseMultiPayload == 2)
  {
    if (qword_100973808 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_10000C4AC(v9, qword_10097C700);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "NearField endpoints not applicable for SDAirDropDiscoveredPerson", v12, 2u);
    }

    v6 = v0[19];

    v8 = type metadata accessor for SDAirDropDiscoveredEndpoint.NearFieldEndpoint;
    goto LABEL_19;
  }

  sub_1002F96B0(v0[19], type metadata accessor for SDAirDropDiscoveredEndpoint);
  if (qword_100973808 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  sub_10000C4AC(v18, qword_10097C700);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&_mh_execute_header, v19, v20, "Classroom endpoints not applicable for SDAirDropDiscoveredPerson", v21, 2u);
  }

LABEL_25:
  v22 = v0[13];
  v23 = v0[11];
  swift_beginAccess();
  sub_10036E788(v23, v22);
  swift_endAccess();
  sub_100005508(v22, &qword_1009763E0, &qword_1007F95D0);
  sub_100407048();

  v24 = v0[1];

  return v24();
}

uint64_t sub_100409270()
{
  v1 = *(*v0 + 16);

  return v1;
}

uint64_t sub_1004092EC@<X0>(uint64_t *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X8>)
{
  v5 = *v3;
  v6 = *a1;
  v7 = a2(0);
  v8 = *(*(v7 - 8) + 16);

  return v8(a3, v5 + v6, v7);
}

uint64_t sub_100409368()
{
  *(v1 + 40) = v0;
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v2 = static AirDropActor.shared;

  return _swift_task_switch(sub_100409404, v2, 0);
}

uint64_t sub_100409404()
{
  swift_beginAccess();
  v3 = *(v0 + 8);

  return v3(v1);
}

uint64_t sub_100409498(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100005C04;

  return sub_100407D98(a1);
}

uint64_t sub_100409530(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100005C00;

  return sub_100408B30(a1);
}

uint64_t sub_1004095C8(uint64_t a1)
{
  result = sub_100409710(&qword_10097C820, type metadata accessor for SDAirDropDiscoveredPerson, &unk_1008013A4);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100409620(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1004096A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100409710(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_100409758()
{
  v1 = OBJC_IVAR____TtC16DaemoniOSLibrary33SDAirDropApplicationServiceServer_listener;
  if (!*&v0[OBJC_IVAR____TtC16DaemoniOSLibrary33SDAirDropApplicationServiceServer_listener])
  {
    v2 = v0;
    if (qword_100973810 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_10000C4AC(v3, qword_10097C838);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "Starting AirDrop Application Service Server", v6, 2u);
    }

    type metadata accessor for NWListener();
    sub_100636164(0);
    v7 = NWListener.__allocating_init(applicationService:using:)();
    *&v2[v1] = v7;

    v8 = swift_allocObject();
    *(v8 + 16) = v2;
    *(v8 + 24) = v7;

    v9 = v2;
    NWListener.stateUpdateHandler.setter();
    *(swift_allocObject() + 16) = v9;
    v10 = v9;
    NWListener.newConnectionHandler.setter();
    NWListener.start(queue:)();
  }
}

uint64_t sub_1004099C4()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_10097C838);
  v1 = sub_10000C4AC(v0, qword_10097C838);
  if (qword_1009736D0 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C4AC(v0, qword_1009A08B8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100409A8C(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for NWListener.State();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v6 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  __chkstk_darwin(v6 - 8);
  v8 = &v15 - v7;
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = swift_allocObject();
  swift_weakInit();
  (*(v4 + 16))(&v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  v12 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v13 = swift_allocObject();
  *(v13 + 2) = 0;
  *(v13 + 3) = 0;
  *(v13 + 4) = v10;
  (*(v4 + 32))(&v13[v12], &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  *&v13[(v5 + v12 + 7) & 0xFFFFFFFFFFFFFFF8] = v11;
  sub_1002B3398(0, 0, v8, &unk_100801478, v13);
}

uint64_t sub_100409CC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[10] = a5;
  v6[11] = a6;
  v6[8] = a1;
  v6[9] = a4;
  return _swift_task_switch(sub_100409CEC, 0, 0);
}

uint64_t sub_100409CEC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 96) = Strong;
  if (Strong)
  {
    swift_beginAccess();
    v2 = swift_weakLoadStrong();
    *(v0 + 104) = v2;
    v3 = swift_task_alloc();
    *(v0 + 112) = v3;
    *v3 = v0;
    v3[1] = sub_1003731E0;
    v4 = *(v0 + 80);

    return sub_100409E14(v4, v2);
  }

  else
  {
    **(v0 + 64) = 1;
    v6 = *(v0 + 8);

    return v6();
  }
}

uint64_t sub_100409E14(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  v4 = type metadata accessor for NWError();
  v3[8] = v4;
  v3[9] = *(v4 - 8);
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v5 = type metadata accessor for NWListener.State();
  v3[14] = v5;
  v3[15] = *(v5 - 8);
  v3[16] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v6 = static AirDropActor.shared;
  v3[17] = static AirDropActor.shared;

  return _swift_task_switch(sub_100409F94, v6, 0);
}

uint64_t sub_100409F94()
{
  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[14];
  (*(v2 + 16))(v1, v0[5], v3);
  v4 = (*(v2 + 88))(v1, v3);
  if (v4 == enum case for NWListener.State.waiting(_:))
  {
    v5 = v0[16];
    v6 = v0[13];
    v7 = v0[8];
    v8 = v0[9];
    (*(v0[15] + 96))(v5, v0[14]);
    (*(v8 + 32))(v6, v5, v7);
    if (qword_100973810 != -1)
    {
      swift_once();
    }

    v9 = v0[12];
    v10 = v0[13];
    v11 = v0[8];
    v12 = v0[9];
    v13 = type metadata accessor for Logger();
    sub_10000C4AC(v13, qword_10097C838);
    v14 = *(v12 + 16);
    v14(v9, v10, v11);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    v17 = os_log_type_enabled(v15, v16);
    v19 = v0[12];
    v18 = v0[13];
    v20 = v0[8];
    v21 = v0[9];
    if (v17)
    {
      v75 = v14;
      v22 = swift_slowAlloc();
      v76 = v18;
      v23 = swift_slowAlloc();
      *v22 = 138412290;
      sub_10040BC64(&qword_100977BF8, &type metadata accessor for NWError, &protocol conformance descriptor for NWError);
      swift_allocError();
      v75(v24, v19, v20);
      v25 = _swift_stdlib_bridgeErrorToNSError();
      v26 = *(v21 + 8);
      v26(v19, v20);
      *(v22 + 4) = v25;
      *v23 = v25;
      _os_log_impl(&_mh_execute_header, v15, v16, "AirDrop Application Service server waiting with error %@", v22, 0xCu);
      sub_10028924C(v23);

      v26(v76, v20);
    }

    else
    {

      v47 = *(v21 + 8);
      v47(v19, v20);
      v47(v18, v20);
    }

    goto LABEL_44;
  }

  if (v4 != enum case for NWListener.State.failed(_:))
  {
    if (v4 == enum case for NWListener.State.setup(_:))
    {
      if (qword_100973810 != -1)
      {
        swift_once();
      }

      v48 = type metadata accessor for Logger();
      sub_10000C4AC(v48, qword_10097C838);
      v49 = Logger.logObject.getter();
      v50 = static os_log_type_t.default.getter();
      if (!os_log_type_enabled(v49, v50))
      {
        goto LABEL_18;
      }

      v51 = swift_slowAlloc();
      *v51 = 0;
      v52 = "AirDrop Application Service server setting up";
    }

    else
    {
      if (v4 == enum case for NWListener.State.ready(_:))
      {
        if (qword_100973810 != -1)
        {
          swift_once();
        }

        v57 = type metadata accessor for Logger();
        sub_10000C4AC(v57, qword_10097C838);
        v58 = Logger.logObject.getter();
        v59 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v58, v59))
        {
          v60 = swift_slowAlloc();
          *v60 = 0;
          _os_log_impl(&_mh_execute_header, v58, v59, "AirDrop Application Service server ready", v60, 2u);
        }

        v61 = String._bridgeToObjectiveC()();
        v62 = getpid();
        sub_100086D20(@"ApplicationServiceAdvertise", @"Start", v61, v62);

        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v64 = OBJC_IVAR____TtC16DaemoniOSLibrary33SDAirDropReceiveConnectionManager_applicationServiceServerErrors;
          v65 = Strong;
          swift_beginAccess();
          *(v65 + v64) = &_swiftEmptySetSingleton;

          swift_unknownObjectRelease();
        }

        goto LABEL_44;
      }

      if (v4 != enum case for NWListener.State.cancelled(_:))
      {
        if (qword_100973810 != -1)
        {
          swift_once();
        }

        v67 = type metadata accessor for Logger();
        sub_10000C4AC(v67, qword_10097C838);
        v68 = Logger.logObject.getter();
        v69 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v68, v69))
        {
          v70 = swift_slowAlloc();
          *v70 = 0;
          _os_log_impl(&_mh_execute_header, v68, v69, "Unknown AirDrop server state", v70, 2u);
        }

        v72 = v0[15];
        v71 = v0[16];
        v73 = v0[14];

        (*(v72 + 8))(v71, v73);
        goto LABEL_44;
      }

      if (qword_100973810 != -1)
      {
        swift_once();
      }

      v66 = type metadata accessor for Logger();
      sub_10000C4AC(v66, qword_10097C838);
      v49 = Logger.logObject.getter();
      v50 = static os_log_type_t.default.getter();
      if (!os_log_type_enabled(v49, v50))
      {
        goto LABEL_18;
      }

      v51 = swift_slowAlloc();
      *v51 = 0;
      v52 = "AirDrop Application Service server stopped";
    }

    _os_log_impl(&_mh_execute_header, v49, v50, v52, v51, 2u);

LABEL_18:

LABEL_44:

    v74 = v0[1];

    return v74();
  }

  v27 = v0[16];
  v28 = v0[11];
  v29 = v0[8];
  v30 = v0[9];
  (*(v0[15] + 96))(v27, v0[14]);
  (*(v30 + 32))(v28, v27, v29);
  if (qword_100973810 != -1)
  {
    swift_once();
  }

  v31 = v0[10];
  v32 = v0[11];
  v33 = v0[8];
  v34 = v0[9];
  v35 = type metadata accessor for Logger();
  sub_10000C4AC(v35, qword_10097C838);
  v36 = *(v34 + 16);
  v36(v31, v32, v33);
  v37 = Logger.logObject.getter();
  v38 = static os_log_type_t.error.getter();
  v39 = os_log_type_enabled(v37, v38);
  v41 = v0[9];
  v40 = v0[10];
  v42 = v0[8];
  if (v39)
  {
    v43 = swift_slowAlloc();
    v77 = swift_slowAlloc();
    *v43 = 138412290;
    sub_10040BC64(&qword_100977BF8, &type metadata accessor for NWError, &protocol conformance descriptor for NWError);
    swift_allocError();
    v36(v44, v40, v42);
    v45 = _swift_stdlib_bridgeErrorToNSError();
    v46 = *(v41 + 8);
    v46(v40, v42);
    *(v43 + 4) = v45;
    *v77 = v45;
    _os_log_impl(&_mh_execute_header, v37, v38, "AirDrop Application Service server failed with error %@", v43, 0xCu);
    sub_10028924C(v77);
  }

  else
  {

    v46 = *(v41 + 8);
    v46(v40, v42);
  }

  v0[18] = v46;
  if (v0[6])
  {
    NWListener.cancel()();
  }

  v53 = swift_unknownObjectWeakLoadStrong();
  v0[19] = v53;
  if (!v53)
  {
    (v0[18])(v0[11], v0[8]);
    goto LABEL_44;
  }

  v54 = swift_task_alloc();
  v0[20] = v54;
  *v54 = v0;
  v54[1] = sub_10040A960;
  v55 = v0[11];

  return sub_10035E6D4(0, v55);
}

uint64_t sub_10040A960()
{
  v1 = *(*v0 + 136);

  swift_unknownObjectRelease();

  return _swift_task_switch(sub_10040AA8C, v1, 0);
}

uint64_t sub_10040AA8C()
{
  (*(v0 + 144))(*(v0 + 88), *(v0 + 64));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10040AB38(uint64_t a1, uint64_t a2)
{
  v3 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  __chkstk_darwin(v3 - 8);
  v5 = &v10 - v4;
  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v7;
  v8[5] = a1;

  sub_1002B3398(0, 0, v5, &unk_100801458, v8);
}

uint64_t sub_10040AC6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[5] = a1;
  return _swift_task_switch(sub_10040AC90, 0, 0);
}

uint64_t sub_10040AC90()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 64) = Strong;
  if (Strong)
  {
    if (qword_1009735E0 != -1)
    {
      swift_once();
    }

    v2 = static AirDropActor.shared;

    return _swift_task_switch(sub_10040AD8C, v2, 0);
  }

  else
  {
    **(v0 + 40) = 1;
    v3 = *(v0 + 8);

    return v3();
  }
}

uint64_t sub_10040AD8C()
{
  v1 = *(v0 + 64);
  sub_10040ADF8(*(v0 + 56));

  return _swift_task_switch(sub_1002F7F9C, 0, 0);
}

uint64_t sub_10040ADF8(uint64_t a1)
{
  v3 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  __chkstk_darwin(v3 - 8);
  v5 = &v14 - v4;
  sub_100501820();
  v6 = OBJC_IVAR____TtC16DaemoniOSLibrary33SDAirDropApplicationServiceServer_connections;
  swift_beginAccess();

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(v1 + v6) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + v6) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9 = qword_1009735E0;

  if (v9 != -1)
  {
    swift_once();
  }

  v10 = static AirDropActor.shared;
  v11 = sub_10040BC64(&qword_100977C00, type metadata accessor for AirDropActor, &protocol conformance descriptor for AirDropActor);
  v12 = swift_allocObject();
  v12[2] = v10;
  v12[3] = v11;
  v12[4] = v8;
  v12[5] = a1;

  sub_1002B3398(0, 0, v5, &unk_100801468, v12);
}

void sub_10040B044()
{
  v1 = OBJC_IVAR____TtC16DaemoniOSLibrary33SDAirDropApplicationServiceServer_listener;
  if (*(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary33SDAirDropApplicationServiceServer_listener))
  {
    v2 = v0;
    v3 = qword_100973810;

    if (v3 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_10000C4AC(v4, qword_10097C838);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "Stopping AirDrop Application Service Server", v7, 2u);
    }

    NWListener.cancel()();
    v8 = String._bridgeToObjectiveC()();
    v9 = getpid();
    sub_100086D20(@"ApplicationServiceAdvertise", @"Stop", v8, v9);

    sub_100374AB4();

    *(v2 + v1) = 0;
  }
}

uint64_t sub_10040B1D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[5] = a1;
  v5[8] = type metadata accessor for SDAirDropServerConnection(0);
  v5[9] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v6 = static AirDropActor.shared;
  v5[10] = static AirDropActor.shared;

  return _swift_task_switch(sub_10040B2AC, v6, 0);
}

uint64_t sub_10040B2AC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v2 = Strong, v3 = swift_unknownObjectWeakLoadStrong(), *(v0 + 88) = v3, v2, v3))
  {
    **(v0 + 72) = *(v0 + 56);
    swift_storeEnumTagMultiPayload();

    v4 = swift_task_alloc();
    *(v0 + 96) = v4;
    *v4 = v0;
    v4[1] = sub_10040B3F8;
    v5 = *(v0 + 72);

    return sub_100359E00(v5);
  }

  else
  {
    **(v0 + 40) = 1;

    v7 = *(v0 + 8);

    return v7();
  }
}

uint64_t sub_10040B3F8()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 72);

  swift_unknownObjectRelease();
  sub_100375730(v2);

  return _swift_task_switch(sub_10040B548, v1, 0);
}

uint64_t sub_10040B548()
{
  **(v0 + 40) = 0;

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10040B6C4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100005C00;

  return sub_10040AC6C(a1, v4, v5, v7, v6);
}

uint64_t sub_10040B784(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100005C04;

  return sub_10040B1D8(a1, v4, v5, v7, v6);
}

uint64_t sub_10040B844(uint64_t a1)
{
  v4 = *(type metadata accessor for NWListener.State() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_100005C00;

  return sub_100409CC8(a1, v6, v7, v8, v1 + v5, v9);
}

id sub_10040B974(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v22 = a4;
  v23 = a3;
  v19 = a1;
  v20 = a2;
  ObjectType = swift_getObjectType();
  v18 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v6 = *(v18 - 8);
  __chkstk_darwin(v18);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v9);
  v10 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v10 - 8);
  *&v4[OBJC_IVAR____TtC16DaemoniOSLibrary33SDAirDropApplicationServiceServer_listener] = 0;
  v4[OBJC_IVAR____TtC16DaemoniOSLibrary33SDAirDropApplicationServiceServer_serverType] = 0;
  *&v4[OBJC_IVAR____TtC16DaemoniOSLibrary33SDAirDropApplicationServiceServer_connections] = _swiftEmptyArrayStorage;
  v11 = &v4[OBJC_IVAR____TtC16DaemoniOSLibrary33SDAirDropApplicationServiceServer_delegate];
  *(v11 + 1) = 0;
  swift_unknownObjectWeakInit();
  v17 = OBJC_IVAR____TtC16DaemoniOSLibrary33SDAirDropApplicationServiceServer_queue;
  v16[1] = sub_1002DDC10();
  static DispatchQoS.default.getter();
  v25 = _swiftEmptyArrayStorage;
  sub_10040BC64(&qword_100973C60, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_10028088C(&unk_10097A630, &unk_1007F5680);
  sub_1002808D4();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v6 + 104))(v8, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v18);
  *&v4[v17] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v13 = v19;
  v12 = v20;
  *&v5[OBJC_IVAR____TtC16DaemoniOSLibrary33SDAirDropApplicationServiceServer_deviceStatus] = v19;
  *&v5[OBJC_IVAR____TtC16DaemoniOSLibrary33SDAirDropApplicationServiceServer_sessionLogger] = v12;
  *(v11 + 1) = v22;
  swift_unknownObjectWeakAssign();
  v24.receiver = v5;
  v24.super_class = ObjectType;
  v14 = v13;

  return objc_msgSendSuper2(&v24, "init");
}

uint64_t sub_10040BC64(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_10040BCAC()
{
  v1 = v0;
  v2 = type metadata accessor for SDAirDropDiscoveredEndpoint.NearFieldEndpoint(0);
  __chkstk_darwin(v2);
  v4 = &v58 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint(0);
  v5 = __chkstk_darwin(v60);
  v7 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v58 - v8;
  v10 = type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint(0);
  v11 = __chkstk_darwin(v10 - 8);
  v59 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v58 - v13;
  v15 = type metadata accessor for SDAirDropDiscoveredEndpoint(0);
  v16 = __chkstk_darwin(v15);
  v18 = (&v58 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = __chkstk_darwin(v16);
  v21 = &v58 - v20;
  __chkstk_darwin(v19);
  v23 = &v58 - v22;
  sub_1002940CC(v1, &v58 - v22);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      v35 = type metadata accessor for SDAirDropDiscoveredEndpoint;
      v36 = v23;
LABEL_19:
      sub_10040C3C0(v36, v35);
      goto LABEL_20;
    }

    sub_10040C358(v23, v4, type metadata accessor for SDAirDropDiscoveredEndpoint.NearFieldEndpoint);
    v30 = &v4[*(v2 + 28)];
    v27 = *v30;
    v29 = v30[1];

    sub_10040C3C0(v4, type metadata accessor for SDAirDropDiscoveredEndpoint.NearFieldEndpoint);
    if (!v29)
    {
      goto LABEL_20;
    }

LABEL_10:
    sub_1002940CC(v1, v21);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_10040C358(v21, v7, type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint);
      v32 = &v7[v60[12]];
      v33 = *v32;
      v34 = v32[1];

      sub_10040C3C0(v7, type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint);
      if (v34)
      {

        return v33;
      }
    }

    else
    {
      sub_10040C3C0(v21, type metadata accessor for SDAirDropDiscoveredEndpoint);
    }

    type metadata accessor for SDContactStore();
    inited = swift_initStackObject();
    v38 = CNContactStoreMeContactDidChangeNotification;
    v39 = objc_allocWithZone(CNContactStore);
    v58 = v15;
    v40 = v18;
    v41 = v9;
    v42 = v1;
    v43 = v27;
    v44 = v39;
    v45 = CNContactStoreDidChangeNotification;
    v46 = v38;
    v47 = [v44 init];
    *(inited + 32) = v47;
    v48 = v43;
    v1 = v42;
    v9 = v41;
    v18 = v40;
    v49 = sub_1005A09A0(v48, v29);

    if (v49)
    {
      v50 = [v49 displayName];
      if (v50)
      {
        v51 = v50;
        v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();

        return v33;
      }

      v56 = [objc_allocWithZone(CNContactFormatter) init];
      v57 = [v56 stringFromContact:v49];

      if (v57)
      {
        v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();

        return v33;
      }

      return 0;
    }

    goto LABEL_20;
  }

  if (!EnumCaseMultiPayload)
  {
    sub_10040C358(v23, v14, type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint);
    result = NWEndpoint.nw.getter();
    if (!result)
    {
      __break(1u);
      goto LABEL_34;
    }

    contact_id = nw_endpoint_get_contact_id();
    swift_unknownObjectRelease();
    if (contact_id)
    {
      v27 = String.init(cString:)();
      v29 = v28;
      sub_10040C3C0(v14, type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint);
      goto LABEL_10;
    }

    v35 = type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint;
    v36 = v14;
    goto LABEL_19;
  }

  sub_10040C358(v23, v9, type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint);
  v31 = &v9[v60[11]];
  v27 = *v31;
  v29 = v31[1];

  sub_10040C3C0(v9, type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint);
  if (v29)
  {
    goto LABEL_10;
  }

LABEL_20:
  sub_1002940CC(v1, v18);
  v52 = swift_getEnumCaseMultiPayload();
  if (v52 <= 1)
  {
    if (v52)
    {
      sub_10040C358(v18, v9, type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint);
      v33 = *&v9[v60[9]];

      sub_10040C3C0(v9, type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint);
    }

    else
    {
      v53 = v59;
      sub_10040C358(v18, v59, type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint);
      v33 = sub_10032C610();
      sub_10040C3C0(v53, type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint);
    }

    return v33;
  }

  if (v52 == 2)
  {
    sub_10040C3C0(v18, type metadata accessor for SDAirDropDiscoveredEndpoint.NearFieldEndpoint);
    return 0;
  }

  v54 = *v18;
  result = [*v18 displayName];
  if (result)
  {
    v55 = result;
    v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();

    return v33;
  }

LABEL_34:
  __break(1u);
  return result;
}

uint64_t sub_10040C358(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10040C3C0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10040C420()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_10097C8B0);
  v1 = sub_10000C4AC(v0, qword_10097C8B0);
  if (qword_1009736C0 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C4AC(v0, qword_1009A0888);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void *sub_10040C4E8()
{
  v49 = type metadata accessor for SDTempPairingEndpoint(0);
  v1 = *(v49 - 8);
  v2 = __chkstk_darwin(v49);
  v53 = &v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __chkstk_darwin(v2);
  v6 = &v49 - v5;
  __chkstk_darwin(v4);
  v8 = &v49 - v7;
  v9 = [objc_opt_self() sharedNearbyAgent];
  v10 = [v9 adHocPairedDeviceIdentities];

  if (v10)
  {
    sub_1000276B4(0, &unk_10097CA10, RPIdentity_ptr);
    v54 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v54 = _swiftEmptyArrayStorage;
  }

  v11 = *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary19SDTempPairingClient_availableEndpoints);
  v12 = *(v11 + 16);

  v13 = _swiftEmptyArrayStorage;
  v52 = v12;
  if (v12)
  {
    v14 = 0;
    v15 = 0;
    v50 = v6;
    v51 = v1;
    do
    {
      if (v14 >= *(v11 + 16))
      {
        __break(1u);
        goto LABEL_41;
      }

      v16 = (*(v1 + 80) + 32) & ~*(v1 + 80);
      v17 = *(v1 + 72);
      v18 = sub_100413394(v11 + v16 + v17 * v14, v8);
      __chkstk_darwin(v18);
      *(&v49 - 2) = v8;
      if (sub_100391384(sub_1004133F8, (&v49 - 4), v54))
      {
        sub_10041347C(v8);
      }

      else
      {
        sub_100413418(v8, v6);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v55 = v13;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_10028FE4C(0, v13[2] + 1, 1);
          v13 = v55;
        }

        v21 = v13[2];
        v20 = v13[3];
        if (v21 >= v20 >> 1)
        {
          sub_10028FE4C((v20 > 1), v21 + 1, 1);
          v13 = v55;
        }

        v13[2] = v21 + 1;
        v6 = v50;
        sub_100413418(v50, v13 + v16 + v21 * v17);
        v1 = v51;
      }

      ++v14;
    }

    while (v52 != v14);
  }

  v51 = 0;

  v22 = v13[2];
  if (v22)
  {
    v55 = _swiftEmptyArrayStorage;
    sub_10028FBDC(0, v22, 0);
    v6 = v55;
    v23 = v13 + ((*(v1 + 80) + 32) & ~*(v1 + 80));
    v24 = *(v1 + 72);
    v25 = v49;
    do
    {
      v26 = v53;
      sub_100413394(v23, v53);
      v27 = (v26 + *(v25 + 20));
      v28 = *v27;
      v29 = v27[1];

      sub_10041347C(v26);
      v55 = v6;
      v31 = *(v6 + 2);
      v30 = *(v6 + 3);
      if (v31 >= v30 >> 1)
      {
        sub_10028FBDC((v30 > 1), v31 + 1, 1);
        v25 = v49;
        v6 = v55;
      }

      *(v6 + 2) = v31 + 1;
      v32 = &v6[16 * v31];
      *(v32 + 4) = v28;
      *(v32 + 5) = v29;
      v23 += v24;
      --v22;
    }

    while (v22);
  }

  else
  {

    v6 = _swiftEmptyArrayStorage;
  }

  v15 = v54;
  v11 = v54 & 0xFFFFFFFFFFFFFF8;
  if (v54 >> 62)
  {
    goto LABEL_43;
  }

  for (i = *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v34 = 0;
    v35 = v15 & 0xC000000000000001;
    v53 = _swiftEmptyArrayStorage;
LABEL_25:
    v36 = v34;
    while (1)
    {
      if (v35)
      {
        v37 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v36 >= *(v11 + 16))
        {
          goto LABEL_42;
        }

        v37 = *(v15 + 8 * v36 + 32);
      }

      v38 = v37;
      v34 = v36 + 1;
      if (__OFADD__(v36, 1))
      {
        break;
      }

      v39 = [v37 name];
      if (v39)
      {
        v40 = v39;
        v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v52 = v42;

        v43 = v53;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v43 = sub_10028E1C8(0, *(v43 + 2) + 1, 1, v43);
        }

        v45 = *(v43 + 2);
        v44 = *(v43 + 3);
        if (v45 >= v44 >> 1)
        {
          v43 = sub_10028E1C8((v44 > 1), v45 + 1, 1, v43);
        }

        *(v43 + 2) = v45 + 1;
        v53 = v43;
        v46 = &v43[16 * v45];
        v47 = v52;
        *(v46 + 4) = v41;
        *(v46 + 5) = v47;
        v15 = v54;
        if (v34 != i)
        {
          goto LABEL_25;
        }

        goto LABEL_45;
      }

      ++v36;
      if (v34 == i)
      {
        goto LABEL_45;
      }
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    ;
  }

  v53 = _swiftEmptyArrayStorage;
LABEL_45:

  v55 = v6;
  sub_100403A1C(v53);
  return v55;
}

BOOL sub_10040CA24(id *a1, uint64_t a2)
{
  v3 = [*a1 edPKData];
  if (v3)
  {
    v4 = v3;
    v5 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0xF000000000000000;
  }

  v8 = a2 + *(type metadata accessor for SDTempPairingEndpoint(0) + 20);
  v10 = *(v8 + 16);
  v9 = *(v8 + 24);
  if (v7 >> 60 == 15)
  {
    if (v9 >> 60 == 15)
    {
      sub_100294008(v10, v9);
      sub_10028BCC0(v5, v7);
      return 1;
    }

    goto LABEL_8;
  }

  if (v9 >> 60 == 15)
  {
LABEL_8:
    sub_100294008(v10, v9);
    sub_10028BCC0(v5, v7);
    sub_10028BCC0(v10, v9);
    return 0;
  }

  sub_100294008(v10, v9);
  sub_100294008(v10, v9);
  sub_1002A9924(v5, v7);
  v12 = sub_100331508(v5, v7, v10, v9);
  sub_10028BCC0(v10, v9);
  sub_100026AC0(v10, v9);
  sub_10028BCC0(v5, v7);
  sub_10028BCC0(v5, v7);
  return v12;
}

void sub_10040CB8C()
{
  v1 = type metadata accessor for SDTempPairingEndpoint(0);
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1 - 8);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v33 - v6;
  v8 = [objc_opt_self() sharedNearbyAgent];
  v9 = [v8 adHocPairedDeviceIdentities];

  if (v9)
  {
    sub_1000276B4(0, &unk_10097CA10, RPIdentity_ptr);
    v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (!(v10 >> 62))
    {
      goto LABEL_3;
    }

LABEL_16:
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_4;
    }

LABEL_17:

    *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary19SDTempPairingClient_connectionState) = 0;
    v23 = *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary19SDTempPairingClient_objectChanged);
    if (v23)
    {
      v24 = *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary19SDTempPairingClient_objectChanged + 8);

      v23(v25);

      sub_100015D04(v23, v24);
    }

    return;
  }

  v10 = _swiftEmptyArrayStorage;
  if (_swiftEmptyArrayStorage >> 62)
  {
    goto LABEL_16;
  }

LABEL_3:
  if (!*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_17;
  }

LABEL_4:
  v36 = v10;
  v33 = v0;
  v11 = *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary19SDTempPairingClient_availableEndpoints);
  v12 = *(v11 + 16);

  v35 = v12;
  if (!v12)
  {
    v14 = _swiftEmptyArrayStorage;
LABEL_22:

    v26 = v14[2];

    if (v26)
    {
      v27 = v33;
      *(v33 + OBJC_IVAR____TtC16DaemoniOSLibrary19SDTempPairingClient_connectionState) = 0;
      v28 = v27 + OBJC_IVAR____TtC16DaemoniOSLibrary19SDTempPairingClient_objectChanged;
      v29 = *(v27 + OBJC_IVAR____TtC16DaemoniOSLibrary19SDTempPairingClient_objectChanged);
      if (!v29)
      {
        return;
      }
    }

    else
    {
      v32 = v33;
      *(v33 + OBJC_IVAR____TtC16DaemoniOSLibrary19SDTempPairingClient_connectionState) = 2;
      v28 = v32 + OBJC_IVAR____TtC16DaemoniOSLibrary19SDTempPairingClient_objectChanged;
      v29 = *(v32 + OBJC_IVAR____TtC16DaemoniOSLibrary19SDTempPairingClient_objectChanged);
      if (!v29)
      {
        return;
      }
    }

    v30 = *(v28 + 8);

    v29(v31);
    sub_100015D04(v29, v30);
    return;
  }

  v13 = 0;
  v14 = _swiftEmptyArrayStorage;
  v34 = v5;
  while (v13 < *(v11 + 16))
  {
    v15 = (*(v2 + 80) + 32) & ~*(v2 + 80);
    v16 = *(v2 + 72);
    v17 = sub_100413394(v11 + v15 + v16 * v13, v7);
    __chkstk_darwin(v17);
    *(&v33 - 2) = v7;
    v18 = sub_1002CCB1C(sub_10041359C, (&v33 - 4), v36);
    if (v18)
    {

      sub_10041347C(v7);
    }

    else
    {
      sub_100413418(v7, v5);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v37 = v14;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_10028FE4C(0, v14[2] + 1, 1);
        v14 = v37;
      }

      v21 = v14[2];
      v20 = v14[3];
      if (v21 >= v20 >> 1)
      {
        sub_10028FE4C((v20 > 1), v21 + 1, 1);
        v14 = v37;
      }

      v14[2] = v21 + 1;
      v22 = v14 + v15 + v21 * v16;
      v5 = v34;
      sub_100413418(v34, v22);
    }

    if (v35 == ++v13)
    {
      goto LABEL_22;
    }
  }

  __break(1u);
}

id sub_10040CF68(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for NWBrowser.Descriptor();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = (&v26.receiver - v10);
  v12 = &v2[OBJC_IVAR____TtC16DaemoniOSLibrary19SDTempPairingClient_objectChanged];
  *v12 = 0;
  v12[1] = 0;
  *&v2[OBJC_IVAR____TtC16DaemoniOSLibrary19SDTempPairingClient_connectionState] = 0;
  v13 = OBJC_IVAR____TtC16DaemoniOSLibrary19SDTempPairingClient_bluetoothController;
  if (qword_100973AF8 != -1)
  {
    swift_once();
  }

  v14 = qword_1009A0CA0;
  *&v2[v13] = qword_1009A0CA0;
  *&v2[OBJC_IVAR____TtC16DaemoniOSLibrary19SDTempPairingClient_foundDevices] = &_swiftEmptySetSingleton;
  *&v2[OBJC_IVAR____TtC16DaemoniOSLibrary19SDTempPairingClient_currentResults] = &_swiftEmptySetSingleton;
  v15 = v14;
  UUID.init()();
  *&v2[OBJC_IVAR____TtC16DaemoniOSLibrary19SDTempPairingClient_availableEndpoints] = _swiftEmptyArrayStorage;
  *&v2[OBJC_IVAR____TtC16DaemoniOSLibrary19SDTempPairingClient_activeConnections] = _swiftEmptyArrayStorage;
  *&v2[OBJC_IVAR____TtC16DaemoniOSLibrary19SDTempPairingClient_nearbyDevicesByIdentifier] = &_swiftEmptyDictionarySingleton;
  v2[OBJC_IVAR____TtC16DaemoniOSLibrary19SDTempPairingClient_hasStartedBonjourBrowsing] = 0;
  v16 = [objc_allocWithZone(RPClient) init];
  *&v2[OBJC_IVAR____TtC16DaemoniOSLibrary19SDTempPairingClient_rpClient] = v16;
  *&v2[OBJC_IVAR____TtC16DaemoniOSLibrary19SDTempPairingClient_queue] = a1;
  *v11 = 0xD000000000000019;
  v11[1] = 0x800000010078FF90;
  (*(v6 + 104))(v11, enum case for NWBrowser.Descriptor.applicationService(_:), v5);
  type metadata accessor for NWParameters();
  v17 = a1;
  static NWParameters.applicationService.getter();
  NWParameters.requiredNetworkAgents.setter();
  (*(v6 + 16))(v9, v11, v5);
  type metadata accessor for NWBrowser();
  swift_allocObject();
  v18 = NWBrowser.init(for:using:)();
  (*(v6 + 8))(v11, v5);
  *&v2[OBJC_IVAR____TtC16DaemoniOSLibrary19SDTempPairingClient_browser] = v18;
  type metadata accessor for SDTempPairingStatusItemController();
  v19 = swift_allocObject();
  *(v19 + 16) = [objc_allocWithZone(STStatusItemsStatusDomainPublisher) init];
  *(v19 + 24) = 0;
  *&v2[OBJC_IVAR____TtC16DaemoniOSLibrary19SDTempPairingClient_statusItemController] = v19;
  v26.receiver = v2;
  v26.super_class = ObjectType;
  v20 = objc_msgSendSuper2(&v26, "init");
  v21 = objc_opt_self();
  v22 = v20;
  v23 = [v21 defaultCenter];
  [v23 addObserver:v22 selector:"handleRapportIdentitiesChanged" name:off_1009731D0 object:0];

  v24 = [v21 defaultCenter];
  [v24 addObserver:v22 selector:"handleDiscoverableModeChanged" name:@"com.apple.sharingd.DiscoverableModeChanged" object:0];

  return v22;
}

void sub_10040D338()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100973818 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_10000C4AC(v6, qword_10097C8B0);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Starting to scan over bluetooth", v9, 2u);
  }

  (*(v3 + 16))(v5, v1 + OBJC_IVAR____TtC16DaemoniOSLibrary19SDTempPairingClient_scanningIdentifier, v2);
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_1005C1F1C(v5, sub_1004135BC, v10);

  (*(v3 + 8))(v5, v2);

  sub_10040CB8C();
}

void sub_10040D550(void *a1, char a2, uint64_t a3)
{
  if (a2)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      return;
    }

    v5 = Strong;
    sub_10040D5DC(a1);
  }

  else
  {
    swift_beginAccess();
    v6 = swift_unknownObjectWeakLoadStrong();
    if (!v6)
    {
      return;
    }

    v5 = v6;
    sub_10040E9A4(a1);
  }
}

void sub_10040D5DC(id a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v152 = &v141[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v153 = type metadata accessor for DispatchQoS();
  v151 = *(v153 - 8);
  __chkstk_darwin(v153);
  v8 = &v141[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for DispatchTimeInterval();
  v150 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v141[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = type metadata accessor for DispatchTime();
  v154 = *(v12 - 8);
  v13 = __chkstk_darwin(v12);
  v15 = &v141[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v13);
  v17 = &v141[-v16];
  if ([a1 airdropConfigData])
  {
    v18 = [a1 identifier];
    if (!v18)
    {
      return;
    }

    v144 = v8;
    v147 = v5;
    v148 = v4;
    v155 = a1;
    v19 = v18;
    v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = v21;

    v23 = OBJC_IVAR____TtC16DaemoniOSLibrary19SDTempPairingClient_foundDevices;
    swift_beginAccess();
    v149 = v2;
    v24 = *(v2 + v23);

    v145 = v20;
    v25 = sub_100569230(v20, v22, v24);

    if (v25)
    {
      goto LABEL_4;
    }

    v143 = v22;
    if (qword_100973818 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    sub_10000C4AC(v26, qword_10097C8B0);
    v27 = v155;
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();

    v30 = os_log_type_enabled(v28, v29);
    v146 = v12;
    if (v30)
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      aBlock[0] = v32;
      *v31 = 136315138;
      v158[0] = v27;
      sub_1000276B4(0, &unk_10097CA20, CBDevice_ptr);
      v142 = v29;
      v33 = v27;
      v34 = String.init<A>(describing:)();
      v36 = sub_10000C4E4(v34, v35, aBlock);

      *(v31 + 4) = v36;
      _os_log_impl(&_mh_execute_header, v28, v142, "Found new PIN pairing device %s", v31, 0xCu);
      sub_10000C60C(v32);
    }

    v37 = v143;
    v2 = v149;
    swift_beginAccess();

    v38 = v145;
    sub_10046DAAC(v158, v145, v37);
    swift_endAccess();

    sub_10040FDA4();
    sub_1004EA84C(1);
    v143 = *(v2 + OBJC_IVAR____TtC16DaemoniOSLibrary19SDTempPairingClient_queue);
    static DispatchTime.now()();
    *v11 = 30;
    v39 = v150;
    (*(v150 + 104))(v11, enum case for DispatchTimeInterval.seconds(_:), v9);
    + infix(_:_:)();
    (*(v39 + 8))(v11, v9);
    v40 = *(v154 + 8);
    v154 += 8;
    v40(v15, v146);
    v41 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v42 = swift_allocObject();
    v42[2] = v41;
    v42[3] = v38;
    v42[4] = v37;
    aBlock[4] = sub_1004135C4;
    aBlock[5] = v42;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100011678;
    aBlock[3] = &unk_1008DFED0;
    v43 = _Block_copy(aBlock);

    v44 = v144;
    static DispatchQoS.unspecified.getter();
    v158[0] = _swiftEmptyArrayStorage;
    sub_100014374(&qword_100976140, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_10028088C(&unk_1009765A0, &qword_1007F97B0);
    sub_100011630(&qword_100976150, &unk_1009765A0, &qword_1007F97B0, &protocol conformance descriptor for [A]);
    v45 = v152;
    v46 = v148;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
    _Block_release(v43);
    (*(v147 + 8))(v45, v46);
    (*(v151 + 8))(v44, v153);
    v40(v17, v146);

    a1 = v155;
  }

  sub_1000276B4(0, &qword_100974730, NSUserDefaults_ptr);
  v47 = static NSUserDefaults.airdrop.getter();
  v48 = SFAirDropUserDefaults.askToAirDropEnabled.getter();

  if ((v48 & 1) == 0)
  {
    if (qword_100973818 != -1)
    {
      swift_once();
    }

    v60 = type metadata accessor for Logger();
    sub_10000C4AC(v60, qword_10097C8B0);
    v61 = Logger.logObject.getter();
    v62 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v61, v62))
    {
      goto LABEL_42;
    }

    v63 = swift_slowAlloc();
    *v63 = 0;
    v64 = "Ask to AirDrop not enabled";
    goto LABEL_41;
  }

  v49 = [a1 identifier];
  if (!v49)
  {
    return;
  }

  v155 = a1;
  v50 = v49;
  v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v53 = v52;

  v54 = OBJC_IVAR____TtC16DaemoniOSLibrary19SDTempPairingClient_nearbyDevicesByIdentifier;
  swift_beginAccess();
  v55 = *(*(v2 + v54) + 16);
  v154 = v54;
  if (v55)
  {
    if (qword_100973818 != -1)
    {
      swift_once();
    }

    v56 = type metadata accessor for Logger();
    sub_10000C4AC(v56, qword_10097C8B0);
    v57 = v155;
    v58 = Logger.logObject.getter();
    v59 = static os_log_type_t.debug.getter();
  }

  else
  {
    if (qword_100973818 != -1)
    {
      swift_once();
    }

    v65 = type metadata accessor for Logger();
    sub_10000C4AC(v65, qword_10097C8B0);
    v57 = v155;
    v58 = Logger.logObject.getter();
    v59 = static os_log_type_t.default.getter();
  }

  v66 = v59;

  if (os_log_type_enabled(v58, v66))
  {
    v67 = swift_slowAlloc();
    v68 = swift_slowAlloc();
    v157 = v57;
    v158[0] = v68;
    *v67 = 136315138;
    sub_1000276B4(0, &unk_10097CA20, CBDevice_ptr);
    v69 = v57;
    v70 = String.init<A>(describing:)();
    v72 = sub_10000C4E4(v70, v71, v158);

    *(v67 + 4) = v72;
    _os_log_impl(&_mh_execute_header, v58, v66, "Found AirDrop device: %s", v67, 0xCu);
    sub_10000C60C(v68);
  }

  v73 = [v155 airdropTempAuthTagData];
  if (v73)
  {
    v74 = v53;
    v75 = v73;
    v76 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v78 = v77;

    v79 = [v155 btAddressData];
    if (v79)
    {
      v152 = v51;
      v80 = v74;
      v149 = v2;
      v81 = v79;
      v82 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v84 = v83;

      v85 = [objc_opt_self() sharedNearbyAgent];
      v86 = v76;
      v153 = v78;
      isa = Data._bridgeToObjectiveC()().super.isa;
      v88 = Data._bridgeToObjectiveC()().super.isa;
      v89 = [v85 isTempAuthTagKnown:isa bluetoothAddressData:v88];

      if (v89)
      {
        v155 = v82;

        if (qword_100973818 != -1)
        {
          swift_once();
        }

        v90 = type metadata accessor for Logger();
        sub_10000C4AC(v90, qword_10097C8B0);
        v91 = v153;
        sub_100294008(v86, v153);
        v92 = Logger.logObject.getter();
        v93 = static os_log_type_t.default.getter();
        sub_100026AC0(v86, v91);
        if (os_log_type_enabled(v92, v93))
        {
          v94 = swift_slowAlloc();
          v95 = swift_slowAlloc();
          v157 = v95;
          *v94 = 136315138;
          v158[0] = sub_100467BE4(v86, v91);
          sub_10028088C(&unk_100976C20, &unk_1007F9D80);
          sub_100011630(&qword_10097F070, &unk_100976C20, &unk_1007F9D80, &protocol conformance descriptor for [A]);
          v96 = BidirectionalCollection<>.joined(separator:)();
          v98 = v97;

          v158[0] = v96;
          v158[1] = v98;
          v99 = String.init<A>(describing:)();
          v101 = sub_10000C4E4(v99, v100, &v157);

          *(v94 + 4) = v101;
          v91 = v153;
          _os_log_impl(&_mh_execute_header, v92, v93, "Recognized temp auth tag: %s", v94, 0xCu);
          sub_10000C60C(v95);
        }

        v102 = v155;
        sub_1005C2354();
        sub_100026AC0(v102, v84);
        sub_100026AC0(v86, v91);
        return;
      }

      sub_100026AC0(v82, v84);
      v2 = v149;
      v74 = v80;
      v51 = v152;
      v78 = v153;
      v76 = v86;
    }

    sub_100026AC0(v76, v78);
    v53 = v74;
  }

  v103 = [objc_opt_self() sharedMonitor];
  if (!v103)
  {
    __break(1u);
    return;
  }

  v104 = v103;
  v105 = [objc_opt_self() sharedNearbyAgent];
  v106 = v155;
  v107 = sub_100549664(v104, v105);

  if (v107)
  {

    if (qword_100973818 != -1)
    {
      swift_once();
    }

    v108 = type metadata accessor for Logger();
    sub_10000C4AC(v108, qword_10097C8B0);
    v61 = Logger.logObject.getter();
    v62 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v61, v62))
    {
      goto LABEL_42;
    }

    v63 = swift_slowAlloc();
    *v63 = 0;
    v64 = "Device is already known";
LABEL_41:
    _os_log_impl(&_mh_execute_header, v61, v62, v64, v63, 2u);

LABEL_42:

    return;
  }

  if ([v106 airdropConfigData])
  {
    v118 = v154;
    swift_beginAccess();
    if (*(*(v2 + v118) + 16) && (sub_100012854(v51, v53), (v119 & 1) != 0))
    {
      swift_endAccess();
    }

    else
    {
      swift_endAccess();
      v120 = [objc_opt_self() sharedController];
      v121 = [v120 checkDeviceRegion:v155];

      if (v121 != 4)
      {
        v122 = static NSUserDefaults.airdrop.getter();
        v123 = SFAirDropUserDefaults.a2aRangingAssumeClose.getter();

        if (v123)
        {
          v124 = v51;
          if (qword_100973818 != -1)
          {
            swift_once();
          }

          v125 = type metadata accessor for Logger();
          sub_10000C4AC(v125, qword_10097C8B0);
          v126 = Logger.logObject.getter();
          v127 = static os_log_type_t.default.getter();
          v128 = os_log_type_enabled(v126, v127);
          v129 = v155;
          if (v128)
          {
            v130 = swift_slowAlloc();
            *v130 = 0;
            _os_log_impl(&_mh_execute_header, v126, v127, "Assuming device is in range", v130, 2u);
          }

          sub_1004112A4(v124, v53);

          goto LABEL_73;
        }

        if (qword_100973818 != -1)
        {
          swift_once();
        }

        v131 = type metadata accessor for Logger();
        sub_10000C4AC(v131, qword_10097C8B0);

        v132 = Logger.logObject.getter();
        v133 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v132, v133))
        {
          v134 = swift_slowAlloc();
          v135 = v2;
          v136 = swift_slowAlloc();
          v158[0] = v136;
          *v134 = 136315138;
          *(v134 + 4) = sub_10000C4E4(v51, v53, v158);
          _os_log_impl(&_mh_execute_header, v132, v133, "Starting to measure RSSI for Ask to AirDrop for %s", v134, 0xCu);
          sub_10000C60C(v136);
          v2 = v135;
        }

        swift_beginAccess();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v157 = *(v2 + v118);
        *(v2 + v118) = 0x8000000000000000;
        sub_10057B284(0, v51, v53, isUniquelyReferenced_nonNull_native);

        *(v2 + v118) = v157;
        swift_endAccess();
        v138 = *(v2 + OBJC_IVAR____TtC16DaemoniOSLibrary19SDTempPairingClient_objectChanged);
        if (v138)
        {
          v139 = *(v2 + OBJC_IVAR____TtC16DaemoniOSLibrary19SDTempPairingClient_objectChanged + 8);

          v138(v140);
          sub_100015D04(v138, v139);
        }

        sub_1005C2674();
LABEL_72:
        v129 = v155;
LABEL_73:
        if ((*(v2 + OBJC_IVAR____TtC16DaemoniOSLibrary19SDTempPairingClient_hasStartedBonjourBrowsing) & 1) == 0)
        {
          sub_10040FDA4();
        }

        v61 = [objc_opt_self() sharedController];
        [v61 sender:v2 notifyBluetoothSample:v129 forType:3];
        goto LABEL_42;
      }

      sub_1004112A4(v51, v53);
    }

    goto LABEL_72;
  }

  v109 = v154;
  swift_beginAccess();
  if (!*(*(v2 + v109) + 16))
  {
    swift_endAccess();
    goto LABEL_4;
  }

  sub_100012854(v51, v53);
  v111 = v110;
  swift_endAccess();
  if ((v111 & 1) == 0)
  {
LABEL_4:

    return;
  }

  if (qword_100973818 != -1)
  {
    swift_once();
  }

  v112 = type metadata accessor for Logger();
  sub_10000C4AC(v112, qword_10097C8B0);

  v113 = Logger.logObject.getter();
  v114 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v113, v114))
  {
    v115 = swift_slowAlloc();
    v116 = swift_slowAlloc();
    v158[0] = v116;
    *v115 = 136315138;
    v117 = sub_10000C4E4(v51, v53, v158);

    *(v115 + 4) = v117;
    _os_log_impl(&_mh_execute_header, v113, v114, "Device (%s) no longer advertising Ask to AirDrop", v115, 0xCu);
    sub_10000C60C(v116);
  }

  else
  {
  }

  sub_100411934(v155, 0);
}

id sub_10040E9A4(void *a1)
{
  if (qword_100973818 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000C4AC(v2, qword_10097C8B0);
  v3 = a1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v17[0] = v7;
    *v6 = 136315138;
    sub_1000276B4(0, &unk_10097CA20, CBDevice_ptr);
    v8 = v3;
    v9 = String.init<A>(describing:)();
    v11 = sub_10000C4E4(v9, v10, v17);

    *(v6 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v4, v5, "Lost AirDrop device: %s", v6, 0xCu);
    sub_10000C60C(v7);
  }

  sub_100411934(v3, 1);
  result = [v3 identifier];
  if (result)
  {
    v13 = result;
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;

    swift_beginAccess();
    sub_10036DB18(v14, v16);
    swift_endAccess();
  }

  return result;
}

uint64_t sub_10040EBB0()
{
  v1 = v0;
  v2 = type metadata accessor for NWBrowser.Descriptor();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = (&v32 - v7);
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100973818 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_10000C4AC(v13, qword_10097C8B0);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v32 = v3;
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "Stopping browsing over Bonjour for available endpoints", v16, 2u);
    v3 = v32;
  }

  (*(v10 + 16))(v12, v1 + OBJC_IVAR____TtC16DaemoniOSLibrary19SDTempPairingClient_scanningIdentifier, v9);
  sub_1005C1F6C(v12);
  (*(v10 + 8))(v12, v9);
  *(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary19SDTempPairingClient_hasStartedBonjourBrowsing) = 0;
  v17 = OBJC_IVAR____TtC16DaemoniOSLibrary19SDTempPairingClient_browser;

  NWBrowser.cancel()();

  *(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary19SDTempPairingClient_currentResults) = &_swiftEmptySetSingleton;

  *v8 = 0xD000000000000019;
  v8[1] = 0x800000010078FF90;
  (*(v3 + 104))(v8, enum case for NWBrowser.Descriptor.applicationService(_:), v2);
  type metadata accessor for NWParameters();
  static NWParameters.applicationService.getter();
  NWParameters.requiredNetworkAgents.setter();
  (*(v3 + 16))(v6, v8, v2);
  type metadata accessor for NWBrowser();
  swift_allocObject();
  v18 = NWBrowser.init(for:using:)();
  (*(v3 + 8))(v8, v2);
  *(v1 + v17) = v18;

  *(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary19SDTempPairingClient_connectionState) = 0;
  v19 = v1 + OBJC_IVAR____TtC16DaemoniOSLibrary19SDTempPairingClient_objectChanged;
  v20 = *(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary19SDTempPairingClient_objectChanged);
  if (v20)
  {
    v21 = *(v19 + 8);

    v20(v22);
    sub_100015D04(v20, v21);
  }

  *(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary19SDTempPairingClient_availableEndpoints) = _swiftEmptyArrayStorage;

  sub_10040CB8C();
  v23 = *v19;
  if (*v19)
  {
    v24 = *(v19 + 8);

    v23(v25);
    sub_100015D04(v23, v24);
  }

  v26 = sub_1002820C0(_swiftEmptyArrayStorage);
  v27 = OBJC_IVAR____TtC16DaemoniOSLibrary19SDTempPairingClient_nearbyDevicesByIdentifier;
  swift_beginAccess();
  *(v1 + v27) = v26;

  v29 = *v19;
  if (*v19)
  {
    v30 = *(v19 + 8);

    v29(v31);
    return sub_100015D04(v29, v30);
  }

  return result;
}

void sub_10040F030(uint64_t a1, uint64_t a2)
{
  v37 = a1;
  v38 = a2;
  v36 = type metadata accessor for SDTempPairingConnection.Role(0);
  __chkstk_darwin(v36);
  v4 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_opt_self() sharedNearbyAgent];
  v39 = [v5 temporarySelfIdentity];

  if (v39)
  {
    if (qword_100973818 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_10000C4AC(v6, qword_10097C8B0);
    v7 = v2;
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 134217984;
      *(v10 + 4) = (*(&v7->isa + OBJC_IVAR____TtC16DaemoniOSLibrary19SDTempPairingClient_availableEndpoints))[2];

      _os_log_impl(&_mh_execute_header, v8, v9, "Pairing to %ld available endpoints", v10, 0xCu);
    }

    else
    {

      v8 = v7;
    }

    *(&v7->isa + OBJC_IVAR____TtC16DaemoniOSLibrary19SDTempPairingClient_connectionState) = 1;
    v14 = *(&v7->isa + OBJC_IVAR____TtC16DaemoniOSLibrary19SDTempPairingClient_objectChanged);
    if (v14)
    {
      v15 = *(&v7[1].isa + OBJC_IVAR____TtC16DaemoniOSLibrary19SDTempPairingClient_objectChanged);

      v14(v16);
      sub_100015D04(v14, v15);
    }

    v17 = *(&v7->isa + OBJC_IVAR____TtC16DaemoniOSLibrary19SDTempPairingClient_availableEndpoints);
    v18 = *(v17 + 16);
    if (v18)
    {
      v19 = OBJC_IVAR____TtC16DaemoniOSLibrary19SDTempPairingClient_activeConnections;
      v35 = *(&v7->isa + OBJC_IVAR____TtC16DaemoniOSLibrary19SDTempPairingClient_queue);
      v20 = *(type metadata accessor for SDTempPairingEndpoint(0) - 8);
      v21 = v17 + ((*(v20 + 80) + 32) & ~*(v20 + 80));
      v22 = *(v20 + 72);
      v33 = v17;
      v34 = v22;

      do
      {
        v23 = &v4[*(sub_10028088C(&unk_10097CA30, &unk_100801610) + 48)];
        sub_100413394(v21, v4);
        v24 = v38;
        *v23 = v37;
        v23[1] = v24;
        swift_storeEnumTagMultiPayload();
        type metadata accessor for SDTempPairingConnection(0);
        swift_allocObject();

        v25 = v39;
        v26 = v35;
        v27 = sub_1004C21D4(v4, v25, v26);

        v28 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v29 = swift_allocObject();
        *(v29 + 16) = v28;
        *(v29 + 24) = v27;
        v31 = v27[3];
        v30 = v27[4];
        v27[3] = sub_10041403C;
        v27[4] = v29;

        sub_100015D04(v31, v30);

        swift_beginAccess();

        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((*(&v7->isa + v19) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(&v7->isa + v19) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        swift_endAccess();

        v21 += v34;
        --v18;
      }

      while (v18);

      return;
    }
  }

  else
  {
    if (qword_100973818 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_10000C4AC(v11, qword_10097C8B0);
    v39 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v39, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v39, v12, "No temporary identity", v13, 2u);
    }
  }

  v32 = v39;
}

void sub_10040F548(void *a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    sub_10040F5B8(a1, a3);
  }
}

uint64_t sub_10040F5B8(void *a1, uint64_t a2)
{
  v3 = v2;
  if (qword_100973818 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_10000C4AC(v6, qword_10097C8B0);
  v7 = a1;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v26[0] = v11;
    *v10 = 136315138;
    sub_1000276B4(0, &unk_10097CA10, RPIdentity_ptr);
    v12 = v7;
    v13 = String.init<A>(describing:)();
    v15 = sub_10000C4E4(v13, v14, v26);

    *(v10 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v8, v9, "Adding remote identity: %s", v10, 0xCu);
    sub_10000C60C(v11);
  }

  v16 = *(v3 + OBJC_IVAR____TtC16DaemoniOSLibrary19SDTempPairingClient_rpClient);
  [v16 addOrUpdateIdentity:v7 completion:0];
  NWConnection.cancel()();
  v17 = OBJC_IVAR____TtC16DaemoniOSLibrary19SDTempPairingClient_activeConnections;
  swift_beginAccess();

  v18 = sub_100413768((v3 + v17), a2);

  v19 = *(v3 + v17);
  if (!(v19 >> 62))
  {
    v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v20 >= v18)
    {
      goto LABEL_7;
    }

LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v20 = _CocoaArrayWrapper.endIndex.getter();
  if (v20 < v18)
  {
    goto LABEL_14;
  }

LABEL_7:
  sub_10057EFC0(v18, v20);
  swift_endAccess();
  v21 = *(v3 + v17);
  if (!(v21 >> 62))
  {
    if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_15:
  if (!_CocoaArrayWrapper.endIndex.getter())
  {
LABEL_9:
    [v16 invalidate];
  }

LABEL_10:
  *(v3 + OBJC_IVAR____TtC16DaemoniOSLibrary19SDTempPairingClient_connectionState) = 2;
  v22 = *(v3 + OBJC_IVAR____TtC16DaemoniOSLibrary19SDTempPairingClient_objectChanged);
  if (v22)
  {
    v23 = *(v3 + OBJC_IVAR____TtC16DaemoniOSLibrary19SDTempPairingClient_objectChanged + 8);

    v22(v24);
    sub_100015D04(v22, v23);
  }

  return sub_1005C2354();
}

void sub_10040F8B4()
{
  *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary19SDTempPairingClient_connectionState) = 3;
  v1 = *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary19SDTempPairingClient_objectChanged);
  if (v1)
  {
    v2 = *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary19SDTempPairingClient_objectChanged + 8);

    v1(v3);
    sub_100015D04(v1, v2);
  }

  if (qword_100973818 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000C4AC(v4, qword_10097C8B0);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Unpairing and regenerating temporary self identity", v7, 2u);
  }

  v8 = [objc_allocWithZone(RPClient) init];
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10 = swift_allocObject();
  *(v10 + 16) = v8;
  *(v10 + 24) = v9;
  v13[4] = sub_100413594;
  v13[5] = v10;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 1107296256;
  v13[2] = sub_1005CC610;
  v13[3] = &unk_1008DFE80;
  v11 = _Block_copy(v13);
  v12 = v8;

  sub_1001BC7E4(v12, v11);
  _Block_release(v11);
}

void sub_10040FAC4(uint64_t a1, void *a2, uint64_t a3)
{
  if (!a1)
  {
    if (qword_100973818 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_10000C4AC(v13, qword_10097C8B0);
    v6 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v6, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v6, v14, "Successfully regenerated temporary self identity", v15, 2u);
    }

    goto LABEL_10;
  }

  swift_errorRetain();
  if (qword_100973818 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_10000C4AC(v5, qword_10097C8B0);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v21 = a1;
    v22[0] = v9;
    *v8 = 136315138;
    swift_errorRetain();
    sub_10028088C(&unk_10097A930, &unk_1007F9050);
    v10 = String.init<A>(describing:)();
    v12 = sub_10000C4E4(v10, v11, v22);

    *(v8 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v6, v7, "Failed to regenerate temporary self identity: %s", v8, 0xCu);
    sub_10000C60C(v9);

LABEL_10:

    goto LABEL_12;
  }

LABEL_12:
  [a2 invalidate];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v17 = Strong;
    *&Strong[OBJC_IVAR____TtC16DaemoniOSLibrary19SDTempPairingClient_connectionState] = 0;
    v18 = *&Strong[OBJC_IVAR____TtC16DaemoniOSLibrary19SDTempPairingClient_objectChanged];
    if (v18)
    {
      v19 = *&Strong[OBJC_IVAR____TtC16DaemoniOSLibrary19SDTempPairingClient_objectChanged + 8];

      v18(v20);

      sub_100015D04(v18, v19);
    }

    else
    {
    }
  }
}

void sub_10040FDA4()
{
  v1 = OBJC_IVAR____TtC16DaemoniOSLibrary19SDTempPairingClient_hasStartedBonjourBrowsing;
  if (*(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary19SDTempPairingClient_hasStartedBonjourBrowsing))
  {
    if (qword_100973818 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_10000C4AC(v2, qword_10097C8B0);
    oslog = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v3, "Already browsing over Bonjour for temp pairing", v4, 2u);
    }
  }

  else
  {
    v5 = v0;

    NWBrowser.stateUpdateHandler.setter();

    swift_allocObject();
    swift_unknownObjectWeakInit();

    NWBrowser.browseResultsChangedHandler.setter();

    if (qword_100973818 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_10000C4AC(v6, qword_10097C8B0);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "Starting to browse over Bonjour for available endpoints", v9, 2u);
    }

    *(v5 + v1) = 1;
    sub_1000276B4(0, &qword_10097A620, OS_dispatch_queue_ptr);

    oslog = static OS_dispatch_queue.main.getter();
    NWBrowser.start(queue:)();
  }
}

void sub_10041004C(uint64_t a1)
{
  v2 = type metadata accessor for NWBrowser.State();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v19 - v7;
  if (qword_100973818 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_10000C4AC(v9, qword_10097C8B0);
  v10 = *(v3 + 16);
  v10(v8, a1, v2);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v20 = v14;
    *v13 = 136315138;
    v10(v6, v8, v2);
    v15 = String.init<A>(describing:)();
    v17 = v16;
    (*(v3 + 8))(v8, v2);
    v18 = sub_10000C4E4(v15, v17, &v20);

    *(v13 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v11, v12, "Pairing client state changed to %s", v13, 0xCu);
    sub_10000C60C(v14);
  }

  else
  {

    (*(v3 + 8))(v8, v2);
  }
}

void sub_1004102BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  __chkstk_darwin(v4 - 8);
  v6 = &v19 - v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    if (qword_100973818 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_10000C4AC(v9, qword_10097C8B0);

    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 134217984;
      *(v12 + 4) = *(a1 + 16);

      _os_log_impl(&_mh_execute_header, v10, v11, "Pairing client found %ld devices", v12, 0xCu);
    }

    else
    {
    }

    v13 = type metadata accessor for TaskPriority();
    (*(*(v13 - 8) + 56))(v6, 1, 1, v13);
    v14 = qword_1009735E0;

    v15 = v8;
    if (v14 != -1)
    {
      swift_once();
    }

    v16 = static AirDropActor.shared;
    v17 = sub_100014374(&qword_100977C00, type metadata accessor for AirDropActor, &protocol conformance descriptor for AirDropActor);
    v18 = swift_allocObject();
    v18[2] = v16;
    v18[3] = v17;
    v18[4] = v15;
    v18[5] = a1;

    sub_1002B3098(0, 0, v6, &unk_1008015E8, v18);
  }
}