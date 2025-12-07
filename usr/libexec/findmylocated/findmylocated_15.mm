uint64_t sub_100199720@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v3 = type metadata accessor for ClientContext(0);
  __chkstk_darwin(v3);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10004B564(&qword_1005AE4B0, &qword_1004CEAA0);
  v27 = *(v6 - 8);
  v28 = v6;
  __chkstk_darwin(v6);
  v8 = &v25 - v7;
  v9 = type metadata accessor for SaveMeDevicePreferencesRequestContent(0);
  __chkstk_darwin(v9);
  v11 = (&v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = a1[3];
  v30 = a1;
  sub_100011AEC(a1, v12);
  sub_10019D5F4();
  v13 = v29;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v13)
  {
    return sub_100004984(v30);
  }

  v29 = v3;
  v42 = 0;
  sub_1001452AC();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v14 = v39;
  v11[6] = v38;
  v11[7] = v14;
  v15 = v41;
  v11[8] = v40;
  v11[9] = v15;
  v16 = v35;
  v11[2] = v34;
  v11[3] = v16;
  v17 = v37;
  v11[4] = v36;
  v11[5] = v17;
  v18 = v33;
  *v11 = v32;
  v11[1] = v18;
  v31 = 1;
  sub_100009320(&qword_1005AC580, type metadata accessor for ClientContext, &unk_1004C9A40);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  sub_100144E70(v5, v11 + *(v9 + 20));
  v31 = 2;
  v19 = KeyedDecodingContainer.decode(_:forKey:)();
  v29 = v20;
  v21 = v19;
  (*(v27 + 8))(v8, v28);
  v22 = (v11 + *(v9 + 24));
  v23 = v29;
  *v22 = v21;
  v22[1] = v23;
  sub_10019B748(v11, v26, type metadata accessor for SaveMeDevicePreferencesRequestContent);
  sub_100004984(v30);
  return sub_10019B7B0(v11, type metadata accessor for SaveMeDevicePreferencesRequestContent);
}

uint64_t sub_100199B4C(void *a1)
{
  v2 = v1;
  v4 = sub_10004B564(&qword_1005AE498, &unk_1004CEA88);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21[-v6];
  sub_100011AEC(a1, a1[3]);
  sub_10019D648();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8 = v2[7];
  v9 = v2[5];
  v49 = v2[6];
  v50 = v8;
  v10 = v2[7];
  v11 = v2[9];
  v51 = v2[8];
  v52 = v11;
  v12 = v2[3];
  v13 = v2[1];
  v45 = v2[2];
  v46 = v12;
  v14 = v2[3];
  v15 = v2[5];
  v47 = v2[4];
  v48 = v15;
  v16 = v2[1];
  v44[0] = *v2;
  v44[1] = v16;
  v40 = v49;
  v41 = v10;
  v17 = v2[9];
  v42 = v51;
  v43 = v17;
  v36 = v45;
  v37 = v14;
  v38 = v47;
  v39 = v9;
  v34 = v44[0];
  v35 = v13;
  v33 = 0;
  sub_100005F04(v44, &v23, &qword_1005A9328, &unk_1004C7F20);
  sub_100145258();
  v18 = v53;
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (v18)
  {
    v29 = v40;
    v30 = v41;
    v31 = v42;
    v32 = v43;
    v25 = v36;
    v26 = v37;
    v27 = v38;
    v28 = v39;
    v23 = v34;
    v24 = v35;
    sub_100002CE0(&v23, &qword_1005A9328, &unk_1004C7F20);
  }

  else
  {
    v29 = v40;
    v30 = v41;
    v31 = v42;
    v32 = v43;
    v25 = v36;
    v26 = v37;
    v27 = v38;
    v28 = v39;
    v23 = v34;
    v24 = v35;
    sub_100002CE0(&v23, &qword_1005A9328, &unk_1004C7F20);
    v19 = type metadata accessor for SavePreferencesRequestContent(0);
    LOBYTE(v22) = 1;
    type metadata accessor for ClientContext(0);
    sub_100009320(&qword_1005AC568, type metadata accessor for ClientContext, &unk_1004C9A18);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v22 = *(v2 + *(v19 + 24));
    v21[7] = 2;
    sub_10004B564(&qword_1005AC968, &qword_1004C7670);
    sub_10014D0DC(&qword_1005AC980, &protocol witness table for String, &protocol conformance descriptor for <> [A : B]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_100199EA4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v25 = type metadata accessor for ClientContext(0);
  __chkstk_darwin(v25);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10004B564(&qword_1005AE4A8, &qword_1004CEA98);
  v26 = *(v5 - 8);
  v27 = v5;
  __chkstk_darwin(v5);
  v7 = &v24 - v6;
  v8 = type metadata accessor for SavePreferencesRequestContent(0);
  __chkstk_darwin(v8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a1[3];
  v42 = a1;
  sub_100011AEC(a1, v11);
  sub_10019D648();
  v12 = v28;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v12)
  {
    return sub_100004984(v42);
  }

  v13 = v10;
  v14 = v4;
  v28 = v8;
  v31 = 0;
  sub_1001452AC();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v15 = v39;
  v16 = v13;
  v13[6] = v38;
  v13[7] = v15;
  v17 = v41;
  v13[8] = v40;
  v13[9] = v17;
  v18 = v35;
  v13[2] = v34;
  v13[3] = v18;
  v19 = v37;
  v13[4] = v36;
  v13[5] = v19;
  v20 = v33;
  *v13 = v32;
  v13[1] = v20;
  LOBYTE(v30[0]) = 1;
  sub_100009320(&qword_1005AC580, type metadata accessor for ClientContext, &unk_1004C9A40);
  v21 = v14;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v22 = v28;
  sub_100144E70(v21, v16 + *(v28 + 20));
  sub_10004B564(&qword_1005AC968, &qword_1004C7670);
  v29 = 2;
  sub_10014D0DC(&qword_1005AC970, &protocol witness table for String, &protocol conformance descriptor for <> [A : B]);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v26 + 8))(v7, v27);
  *(v16 + *(v22 + 24)) = v30[0];
  sub_10019B748(v16, v24, type metadata accessor for SavePreferencesRequestContent);
  sub_100004984(v42);
  return sub_10019B7B0(v16, type metadata accessor for SavePreferencesRequestContent);
}

uint64_t sub_10019A2EC(uint64_t a1)
{
  v2 = sub_10019D69C();

  return RequestContentRepresentable.description.getter(a1, v2);
}

uint64_t sub_10019A328()
{
  v1 = 0x6F43746E65696C63;
  if (*v0 != 1)
  {
    v1 = 0x656369766544656DLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6F43726576726573;
  }
}

uint64_t sub_10019A390@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_10019D920(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_10019A3B8(uint64_t a1)
{
  v2 = sub_10019D5F4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10019A3F4(uint64_t a1)
{
  v2 = sub_10019D5F4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10019A460()
{
  v1 = 0x6F43746E65696C63;
  if (*v0 != 1)
  {
    v1 = 0x7366657270;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6F43726576726573;
  }
}

uint64_t sub_10019A4C0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_10019DA50(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_10019A4E8(uint64_t a1)
{
  v2 = sub_10019D648();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10019A524(uint64_t a1)
{
  v2 = sub_10019D648();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10019A590(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[184] = a3;
  v3[183] = a2;
  v3[182] = a1;
  v4 = type metadata accessor for JSONEncoder.DateEncodingStrategy();
  v3[185] = v4;
  v3[186] = *(v4 - 8);
  v3[187] = swift_task_alloc();
  v3[188] = type metadata accessor for SaveMeDevicePreferencesRequestContent(0);
  v3[189] = swift_task_alloc();
  v3[190] = swift_task_alloc();
  v3[191] = swift_task_alloc();
  v5 = type metadata accessor for Account();
  v3[192] = v5;
  v3[193] = *(v5 - 8);
  v3[194] = swift_task_alloc();
  sub_10004B564(&qword_1005AC488, &unk_1004C8430);
  v3[195] = swift_task_alloc();
  v3[196] = swift_task_alloc();
  sub_10004B564(&qword_1005B3360, &unk_1004C6AA0);
  v3[197] = swift_task_alloc();
  v3[198] = swift_task_alloc();
  type metadata accessor for ClientContext(0);
  v3[199] = swift_task_alloc();
  v3[200] = swift_task_alloc();

  return _swift_task_switch(sub_10019A7BC, 0, 0);
}

uint64_t sub_10019A7BC()
{
  v1 = v0[198];
  v2 = v0[197];
  v3 = v0[196];
  v4 = v0[195];
  v5 = v0[194];
  v6 = v0[193];
  v7 = v0[192];
  v8 = v0[182];
  v0[201] = sub_10014ABCC();
  v9 = type metadata accessor for Handle();
  (*(*(v9 - 8) + 56))(v1, 1, 1, v9);
  v10 = type metadata accessor for RequestOrigin();
  (*(*(v10 - 8) + 56))(v3, 1, 1, v10);
  (*(v6 + 16))(v5, v8, v7);
  sub_100005F04(v3, v4, &qword_1005AC488, &unk_1004C8430);
  sub_100005F04(v1, v2, &qword_1005B3360, &unk_1004C6AA0);
  v11 = swift_task_alloc();
  v0[202] = v11;
  *v11 = v0;
  v11[1] = sub_10019A978;
  v12 = v0[200];
  v13 = v0[197];
  v14 = v0[195];
  v15 = v0[194];

  return sub_1001667E8(v12, v15, v14, v13, _swiftEmptyArrayStorage);
}

uint64_t sub_10019A978()
{
  v1 = *v0;
  v2 = *(*v0 + 1600);
  v3 = *(*v0 + 1592);
  v4 = *(*v0 + 1584);
  v5 = *(*v0 + 1568);
  v8 = *v0;

  sub_100002CE0(v5, &qword_1005AC488, &unk_1004C8430);
  sub_100002CE0(v4, &qword_1005B3360, &unk_1004C6AA0);
  sub_10019B748(v2, v3, type metadata accessor for ClientContext);
  v6 = swift_task_alloc();
  *(v1 + 1624) = v6;
  *v6 = v8;
  v6[1] = sub_10019AB54;

  return daemon.getter();
}

uint64_t sub_10019AB54(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 1632) = a1;

  v3 = swift_task_alloc();
  *(v2 + 1640) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for DataManager(0);
  v6 = sub_100009320(&unk_1005AFA50, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_100009320(&qword_1005A90D0, type metadata accessor for DataManager, &unk_1004D1410);
  *v3 = v9;
  v3[1] = sub_10019AD30;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_10019AD30(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v3[206] = a1;
  v3[207] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_10019B10C, 0, 0);
  }

  else
  {

    v5 = swift_task_alloc();
    v3[208] = v5;
    *v5 = v4;
    v5[1] = sub_10019AEC0;

    return sub_100245BB8((v3 + 62));
  }
}

uint64_t sub_10019AEC0()
{
  v1 = *(*v0 + 1648);

  return _swift_task_switch(sub_10019AFD0, v1, 0);
}

uint64_t sub_10019AFD0()
{
  memcpy(v0 + 1, v0 + 31, 0x1E0uLL);
  if (sub_100033B90((v0 + 1)) == 1)
  {
    sub_10003170C(v0 + 61);
  }

  else
  {
    v1 = v0[14];
    v0[77] = v0[13];
    v0[78] = v1;
    v2 = v0[16];
    v0[79] = v0[15];
    v0[80] = v2;
    v3 = v0[10];
    v0[73] = v0[9];
    v0[74] = v3;
    v4 = v0[12];
    v0[75] = v0[11];
    v0[76] = v4;
    v5 = v0[8];
    v0[71] = v0[7];
    v0[72] = v5;
    sub_100005F04((v0 + 71), (v0 + 81), &qword_1005A9328, &unk_1004C7F20);
    sub_100002CE0((v0 + 31), &qword_1005A90D8, &unk_1004C6AB0);
    v6 = v0[78];
    v0[67] = v0[77];
    v0[68] = v6;
    v7 = v0[80];
    v0[69] = v0[79];
    v0[70] = v7;
    v8 = v0[74];
    v0[63] = v0[73];
    v0[64] = v8;
    v9 = v0[76];
    v0[65] = v0[75];
    v0[66] = v9;
    v10 = v0[72];
    v0[61] = v0[71];
    v0[62] = v10;
  }

  return _swift_task_switch(sub_10019B28C, 0, 0);
}

uint64_t sub_10019B10C()
{
  v1 = v0[200];
  v2 = v0[199];
  v3 = v0[193];
  v4 = v0[192];
  v5 = v0[182];

  sub_10019B7B0(v2, type metadata accessor for ClientContext);
  (*(v3 + 8))(v5, v4);
  sub_10019B7B0(v1, type metadata accessor for ClientContext);

  v6 = v0[1];

  return v6();
}

uint64_t sub_10019B28C()
{
  v42 = v0;
  v1 = *(v0 + 1592);
  v2 = *(v0 + 1528);
  v3 = *(v0 + 1504);
  v4 = *(v0 + 1472);
  v5 = *(v0 + 1464);

  v6 = *(v0 + 992);
  *v2 = *(v0 + 976);
  v2[1] = v6;
  v7 = *(v0 + 1008);
  v8 = *(v0 + 1024);
  v9 = *(v0 + 1056);
  v2[4] = *(v0 + 1040);
  v2[5] = v9;
  v2[2] = v7;
  v2[3] = v8;
  v10 = *(v0 + 1072);
  v11 = *(v0 + 1088);
  v12 = *(v0 + 1120);
  v2[8] = *(v0 + 1104);
  v2[9] = v12;
  v2[6] = v10;
  v2[7] = v11;
  sub_100144E70(v1, v2 + *(v3 + 20));
  v13 = (v2 + *(v3 + 24));
  *v13 = v5;
  v13[1] = v4;
  if (qword_1005A7F88 != -1)
  {
    swift_once();
  }

  v14 = *(v0 + 1528);
  v15 = *(v0 + 1520);
  v16 = type metadata accessor for Logger();
  sub_10000A6F0(v16, qword_1005DFC28);
  sub_10019B748(v14, v15, type metadata accessor for SaveMeDevicePreferencesRequestContent);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.debug.getter();
  v19 = os_log_type_enabled(v17, v18);
  v20 = *(v0 + 1520);
  if (v19)
  {
    v21 = *(v0 + 1512);
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v41 = v23;
    *v22 = 136315138;
    sub_10019B748(v20, v21, type metadata accessor for SaveMeDevicePreferencesRequestContent);
    v24 = String.init<A>(describing:)();
    v26 = v25;
    sub_10019B7B0(v20, type metadata accessor for SaveMeDevicePreferencesRequestContent);
    v27 = sub_10000D01C(v24, v26, &v41);

    *(v22 + 4) = v27;
    _os_log_impl(&_mh_execute_header, v17, v18, "Request content: %s", v22, 0xCu);
    sub_100004984(v23);
  }

  else
  {

    sub_10019B7B0(v20, type metadata accessor for SaveMeDevicePreferencesRequestContent);
  }

  v28 = *(v0 + 1656);
  v29 = *(v0 + 1496);
  v30 = *(v0 + 1488);
  v31 = *(v0 + 1480);
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  *v29 = sub_10019E890;
  v29[1] = 0;
  (*(v30 + 104))(v29, enum case for JSONEncoder.DateEncodingStrategy.custom(_:), v31);
  dispatch thunk of JSONEncoder.dateEncodingStrategy.setter();
  sub_100009320(&qword_1005AE318, type metadata accessor for SaveMeDevicePreferencesRequestContent, &unk_1004CEA28);
  v32 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  if (v28)
  {

    v34 = 0;
    v35 = 0xF000000000000000;
  }

  else
  {
    v34 = v32;
    v35 = v33;
  }

  v36 = *(v0 + 1600);
  v37 = *(v0 + 1528);
  (*(*(v0 + 1544) + 8))(*(v0 + 1456), *(v0 + 1536));
  sub_10019B7B0(v37, type metadata accessor for SaveMeDevicePreferencesRequestContent);
  sub_10019B7B0(v36, type metadata accessor for ClientContext);

  sub_10002CF44(v34, v35);

  sub_10001A794(v34, v35);

  v38 = *(v0 + 8);
  v39 = *(v0 + 1608);

  return v38(v39, v34, v35);
}

uint64_t sub_10019B748(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10019B7B0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10019B810(uint64_t a1, char a2)
{
  *(v2 + 200) = a2;
  *(v2 + 32) = a1;
  v3 = type metadata accessor for JSONEncoder.DateEncodingStrategy();
  *(v2 + 40) = v3;
  *(v2 + 48) = *(v3 - 8);
  *(v2 + 56) = swift_task_alloc();
  *(v2 + 64) = type metadata accessor for SavePreferencesRequestContent(0);
  *(v2 + 72) = swift_task_alloc();
  *(v2 + 80) = swift_task_alloc();
  *(v2 + 88) = swift_task_alloc();
  v4 = type metadata accessor for Account();
  *(v2 + 96) = v4;
  *(v2 + 104) = *(v4 - 8);
  *(v2 + 112) = swift_task_alloc();
  sub_10004B564(&qword_1005AC488, &unk_1004C8430);
  *(v2 + 120) = swift_task_alloc();
  *(v2 + 128) = swift_task_alloc();
  sub_10004B564(&qword_1005B3360, &unk_1004C6AA0);
  *(v2 + 136) = swift_task_alloc();
  *(v2 + 144) = swift_task_alloc();
  type metadata accessor for ClientContext(0);
  *(v2 + 152) = swift_task_alloc();
  *(v2 + 160) = swift_task_alloc();

  return _swift_task_switch(sub_10019BA38, 0, 0);
}

uint64_t sub_10019BA38()
{
  v1 = v0[17];
  v2 = v0[18];
  v4 = v0[15];
  v3 = v0[16];
  v6 = v0[13];
  v5 = v0[14];
  v7 = v0[12];
  v8 = v0[4];
  v0[21] = sub_10014ABCC();
  v9 = type metadata accessor for Handle();
  (*(*(v9 - 8) + 56))(v2, 1, 1, v9);
  v10 = type metadata accessor for RequestOrigin();
  (*(*(v10 - 8) + 56))(v3, 1, 1, v10);
  (*(v6 + 16))(v5, v8, v7);
  sub_100005F04(v3, v4, &qword_1005AC488, &unk_1004C8430);
  sub_100005F04(v2, v1, &qword_1005B3360, &unk_1004C6AA0);
  v11 = swift_task_alloc();
  v0[22] = v11;
  *v11 = v0;
  v11[1] = sub_10019BBE4;
  v12 = v0[20];
  v13 = v0[17];
  v14 = v0[14];
  v15 = v0[15];

  return sub_1001667E8(v12, v14, v15, v13, _swiftEmptyArrayStorage);
}

uint64_t sub_10019BBE4()
{
  v1 = *v0;
  v2 = *(*v0 + 160);
  v3 = *(*v0 + 152);
  v4 = *(*v0 + 144);
  v5 = *(*v0 + 128);
  v6 = *v0;

  sub_100002CE0(v5, &qword_1005AC488, &unk_1004C8430);
  sub_100002CE0(v4, &qword_1005B3360, &unk_1004C6AA0);
  sub_10019B748(v2, v3, type metadata accessor for ClientContext);
  v7 = swift_task_alloc();
  *(v1 + 184) = v7;
  *v7 = v6;
  v7[1] = sub_10019BDE0;
  v8 = *(v1 + 152);
  v9 = *(v1 + 88);
  v10 = *(v1 + 200);

  return sub_10019837C(v9, v8, v10);
}

uint64_t sub_10019BDE0()
{
  *(*v1 + 192) = v0;

  if (v0)
  {
    v2 = sub_10019C4D0;
  }

  else
  {
    v2 = sub_10019BEF4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10019BEF4()
{
  v43 = v0;
  if (qword_1005A7F88 != -1)
  {
    swift_once();
  }

  v1 = v0[10];
  v2 = v0[11];
  v3 = type metadata accessor for Logger();
  sub_10000A6F0(v3, qword_1005DFC28);
  sub_10019B748(v2, v1, type metadata accessor for SavePreferencesRequestContent);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[10];
  if (v6)
  {
    v8 = v0[9];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v41 = v10;
    *v9 = 136315138;
    sub_10019B748(v7, v8, type metadata accessor for SavePreferencesRequestContent);
    v11 = String.init<A>(describing:)();
    v13 = v12;
    sub_10019B7B0(v7, type metadata accessor for SavePreferencesRequestContent);
    v14 = sub_10000D01C(v11, v13, &v41);

    *(v9 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v4, v5, "Request content: %s", v9, 0xCu);
    sub_100004984(v10);
  }

  else
  {

    sub_10019B7B0(v7, type metadata accessor for SavePreferencesRequestContent);
  }

  v40 = v0[24];
  v15 = v0[11];
  v16 = v0[9];
  v18 = v0[6];
  v17 = v0[7];
  v19 = v0[5];
  sub_10004B564(&qword_1005AE320, &qword_1004D38D0);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1004C1900;
  v41 = 0;
  v42 = 0xE000000000000000;
  _StringGuts.grow(_:)(31);

  v41 = 0xD00000000000001DLL;
  v42 = 0x80000001004E43D0;
  sub_10019B748(v15, v16, type metadata accessor for SavePreferencesRequestContent);
  v21._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v21);

  v22 = v41;
  v23 = v42;
  *(v20 + 56) = &type metadata for String;
  *(v20 + 32) = v22;
  *(v20 + 40) = v23;
  print(_:separator:terminator:)();

  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  *v17 = sub_10019E890;
  v17[1] = 0;
  (*(v18 + 104))(v17, enum case for JSONEncoder.DateEncodingStrategy.custom(_:), v19);
  dispatch thunk of JSONEncoder.dateEncodingStrategy.setter();
  sub_100009320(&qword_1005AE328, type metadata accessor for SavePreferencesRequestContent, &unk_1004CEA00);
  v24 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  if (v40)
  {

    v26 = 0;
    v27 = 0xF000000000000000;
  }

  else
  {
    v26 = v24;
    v27 = v25;
  }

  v28 = v0[20];
  v29 = v0[13];
  v38 = v0[12];
  v39 = v0[11];
  v37 = v0[4];
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_1004C1900;
  v41 = 0;
  v42 = 0xE000000000000000;
  _StringGuts.grow(_:)(21);

  v41 = 0xD000000000000013;
  v42 = 0x80000001004E4410;
  v0[2] = v26;
  v0[3] = v27;
  sub_10002CF44(v26, v27);
  sub_10004B564(&qword_1005AB500, &qword_1004C5470);
  v31._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v31);

  v32 = v41;
  v33 = v42;
  *(v30 + 56) = &type metadata for String;
  *(v30 + 32) = v32;
  *(v30 + 40) = v33;
  print(_:separator:terminator:)();

  (*(v29 + 8))(v37, v38);
  sub_10019B7B0(v39, type metadata accessor for SavePreferencesRequestContent);
  sub_10019B7B0(v28, type metadata accessor for ClientContext);

  sub_10002CF44(v26, v27);

  sub_10001A794(v26, v27);

  v34 = v0[1];
  v35 = v0[21];

  return v34(v35, v26, v27);
}

uint64_t sub_10019C4D0()
{
  v1 = v0[20];
  (*(v0[13] + 8))(v0[4], v0[12]);
  sub_10019B7B0(v1, type metadata accessor for ClientContext);

  v2 = v0[1];

  return v2();
}

uint64_t sub_10019C604(uint64_t a1, char a2)
{
  *(v2 + 200) = a2;
  *(v2 + 32) = a1;
  v3 = type metadata accessor for JSONEncoder.DateEncodingStrategy();
  *(v2 + 40) = v3;
  *(v2 + 48) = *(v3 - 8);
  *(v2 + 56) = swift_task_alloc();
  *(v2 + 64) = type metadata accessor for SavePreferencesRequestContent(0);
  *(v2 + 72) = swift_task_alloc();
  *(v2 + 80) = swift_task_alloc();
  *(v2 + 88) = swift_task_alloc();
  v4 = type metadata accessor for Account();
  *(v2 + 96) = v4;
  *(v2 + 104) = *(v4 - 8);
  *(v2 + 112) = swift_task_alloc();
  sub_10004B564(&qword_1005AC488, &unk_1004C8430);
  *(v2 + 120) = swift_task_alloc();
  *(v2 + 128) = swift_task_alloc();
  sub_10004B564(&qword_1005B3360, &unk_1004C6AA0);
  *(v2 + 136) = swift_task_alloc();
  *(v2 + 144) = swift_task_alloc();
  type metadata accessor for ClientContext(0);
  *(v2 + 152) = swift_task_alloc();
  *(v2 + 160) = swift_task_alloc();

  return _swift_task_switch(sub_10019C82C, 0, 0);
}

uint64_t sub_10019C82C()
{
  v1 = v0[17];
  v2 = v0[18];
  v4 = v0[15];
  v3 = v0[16];
  v6 = v0[13];
  v5 = v0[14];
  v7 = v0[12];
  v8 = v0[4];
  v0[21] = sub_10014ABCC();
  v9 = type metadata accessor for Handle();
  (*(*(v9 - 8) + 56))(v2, 1, 1, v9);
  v10 = type metadata accessor for RequestOrigin();
  (*(*(v10 - 8) + 56))(v3, 1, 1, v10);
  (*(v6 + 16))(v5, v8, v7);
  sub_100005F04(v3, v4, &qword_1005AC488, &unk_1004C8430);
  sub_100005F04(v2, v1, &qword_1005B3360, &unk_1004C6AA0);
  v11 = swift_task_alloc();
  v0[22] = v11;
  *v11 = v0;
  v11[1] = sub_10019C9D8;
  v12 = v0[20];
  v13 = v0[17];
  v14 = v0[14];
  v15 = v0[15];

  return sub_1001667E8(v12, v14, v15, v13, _swiftEmptyArrayStorage);
}

uint64_t sub_10019C9D8()
{
  v1 = *v0;
  v2 = *(*v0 + 160);
  v3 = *(*v0 + 152);
  v4 = *(*v0 + 144);
  v5 = *(*v0 + 128);
  v6 = *v0;

  sub_100002CE0(v5, &qword_1005AC488, &unk_1004C8430);
  sub_100002CE0(v4, &qword_1005B3360, &unk_1004C6AA0);
  sub_10019B748(v2, v3, type metadata accessor for ClientContext);
  v7 = swift_task_alloc();
  *(v1 + 184) = v7;
  *v7 = v6;
  v7[1] = sub_10019CBD4;
  v8 = *(v1 + 152);
  v9 = *(v1 + 88);
  v10 = *(v1 + 200);

  return sub_100198C0C(v9, v8, v10);
}

uint64_t sub_10019CBD4()
{
  *(*v1 + 192) = v0;

  if (v0)
  {
    v2 = sub_10019DB78;
  }

  else
  {
    v2 = sub_10019CCE8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10019CCE8()
{
  v43 = v0;
  if (qword_1005A7F88 != -1)
  {
    swift_once();
  }

  v1 = v0[10];
  v2 = v0[11];
  v3 = type metadata accessor for Logger();
  sub_10000A6F0(v3, qword_1005DFC28);
  sub_10019B748(v2, v1, type metadata accessor for SavePreferencesRequestContent);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[10];
  if (v6)
  {
    v8 = v0[9];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v41 = v10;
    *v9 = 136315138;
    sub_10019B748(v7, v8, type metadata accessor for SavePreferencesRequestContent);
    v11 = String.init<A>(describing:)();
    v13 = v12;
    sub_10019B7B0(v7, type metadata accessor for SavePreferencesRequestContent);
    v14 = sub_10000D01C(v11, v13, &v41);

    *(v9 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v4, v5, "Request content: %s", v9, 0xCu);
    sub_100004984(v10);
  }

  else
  {

    sub_10019B7B0(v7, type metadata accessor for SavePreferencesRequestContent);
  }

  v40 = v0[24];
  v15 = v0[11];
  v16 = v0[9];
  v18 = v0[6];
  v17 = v0[7];
  v19 = v0[5];
  sub_10004B564(&qword_1005AE320, &qword_1004D38D0);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1004C1900;
  v41 = 0;
  v42 = 0xE000000000000000;
  _StringGuts.grow(_:)(31);

  v41 = 0xD00000000000001DLL;
  v42 = 0x80000001004E43D0;
  sub_10019B748(v15, v16, type metadata accessor for SavePreferencesRequestContent);
  v21._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v21);

  v22 = v41;
  v23 = v42;
  *(v20 + 56) = &type metadata for String;
  *(v20 + 32) = v22;
  *(v20 + 40) = v23;
  print(_:separator:terminator:)();

  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  *v17 = sub_10019E890;
  v17[1] = 0;
  (*(v18 + 104))(v17, enum case for JSONEncoder.DateEncodingStrategy.custom(_:), v19);
  dispatch thunk of JSONEncoder.dateEncodingStrategy.setter();
  sub_100009320(&qword_1005AE328, type metadata accessor for SavePreferencesRequestContent, &unk_1004CEA00);
  v24 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  if (v40)
  {

    v26 = 0;
    v27 = 0xF000000000000000;
  }

  else
  {
    v26 = v24;
    v27 = v25;
  }

  v28 = v0[20];
  v29 = v0[13];
  v38 = v0[12];
  v39 = v0[11];
  v37 = v0[4];
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_1004C1900;
  v41 = 0;
  v42 = 0xE000000000000000;
  _StringGuts.grow(_:)(28);

  v41 = 0xD00000000000001ALL;
  v42 = 0x80000001004E43F0;
  v0[2] = v26;
  v0[3] = v27;
  sub_10002CF44(v26, v27);
  sub_10004B564(&qword_1005AB500, &qword_1004C5470);
  v31._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v31);

  v32 = v41;
  v33 = v42;
  *(v30 + 56) = &type metadata for String;
  *(v30 + 32) = v32;
  *(v30 + 40) = v33;
  print(_:separator:terminator:)();

  (*(v29 + 8))(v37, v38);
  sub_10019B7B0(v39, type metadata accessor for SavePreferencesRequestContent);
  sub_10019B7B0(v28, type metadata accessor for ClientContext);

  sub_10002CF44(v26, v27);

  sub_10001A794(v26, v27);

  v34 = v0[1];
  v35 = v0[21];

  return v34(v35, v26, v27);
}

void sub_10019D30C(uint64_t a1)
{
  sub_100144FE8();
  if (v1 <= 0x3F)
  {
    type metadata accessor for ClientContext(319);
    if (v2 <= 0x3F)
    {
      sub_10019D3A8();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_10019D3A8()
{
  if (!qword_1005AE398)
  {
    v0 = type metadata accessor for Dictionary();
    if (!v1)
    {
      atomic_store(v0, &qword_1005AE398);
    }
  }
}

unint64_t sub_10019D440()
{
  result = qword_1005AE468;
  if (!qword_1005AE468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AE468);
  }

  return result;
}

uint64_t sub_10019D494(uint64_t a1)
{
  *(a1 + 8) = sub_100009320(&qword_1005AE470, type metadata accessor for SaveMeDevicePreferencesRequestContent, &unk_1004CE978);
  result = sub_100009320(&qword_1005AE318, type metadata accessor for SaveMeDevicePreferencesRequestContent, &unk_1004CEA28);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_10019D518(uint64_t a1)
{
  *(a1 + 8) = sub_100009320(&qword_1005AE478, type metadata accessor for SavePreferencesRequestContent, &unk_1004CE9BC);
  result = sub_100009320(&qword_1005AE328, type metadata accessor for SavePreferencesRequestContent, &unk_1004CEA00);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_10019D5A0()
{
  result = qword_1005AE480;
  if (!qword_1005AE480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AE480);
  }

  return result;
}

unint64_t sub_10019D5F4()
{
  result = qword_1005AE490;
  if (!qword_1005AE490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AE490);
  }

  return result;
}

unint64_t sub_10019D648()
{
  result = qword_1005AE4A0;
  if (!qword_1005AE4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AE4A0);
  }

  return result;
}

unint64_t sub_10019D69C()
{
  result = qword_1005AE4B8;
  if (!qword_1005AE4B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AE4B8);
  }

  return result;
}

unint64_t sub_10019D714()
{
  result = qword_1005AE4C0;
  if (!qword_1005AE4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AE4C0);
  }

  return result;
}

unint64_t sub_10019D76C()
{
  result = qword_1005AE4C8;
  if (!qword_1005AE4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AE4C8);
  }

  return result;
}

unint64_t sub_10019D7C4()
{
  result = qword_1005AE4D0;
  if (!qword_1005AE4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AE4D0);
  }

  return result;
}

unint64_t sub_10019D81C()
{
  result = qword_1005AE4D8;
  if (!qword_1005AE4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AE4D8);
  }

  return result;
}

unint64_t sub_10019D874()
{
  result = qword_1005AE4E0;
  if (!qword_1005AE4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AE4E0);
  }

  return result;
}

unint64_t sub_10019D8CC()
{
  result = qword_1005AE4E8;
  if (!qword_1005AE4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AE4E8);
  }

  return result;
}

uint64_t sub_10019D920(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F43726576726573 && a2 == 0xED0000747865746ELL;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F43746E65696C63 && a2 == 0xED0000747865746ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656369766544656DLL && a2 == 0xEA00000000006449)
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

uint64_t sub_10019DA50(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F43726576726573 && a2 == 0xED0000747865746ELL;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F43746E65696C63 && a2 == 0xED0000747865746ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7366657270 && a2 == 0xE500000000000000)
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

uint64_t sub_10019DB88(uint64_t a1)
{
  v2 = v1 + *(a1 + 24);
  v3 = *v2;
  sub_10002CF44(*v2, *(v2 + 8));
  return v3;
}

uint64_t sub_10019DBC4@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for RequestMethod();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_10019DC38(uint64_t a1)
{
  v2 = sub_10019E7EC(&qword_1005AE4F0, type metadata accessor for AnyRequestContentRepresentable, &unk_1004CEDA4);

  return RequestContentRepresentable.description.getter(a1, v2);
}

void sub_10019DCA4(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v7 = a5;
  if (a5 <= 1u)
  {
    v53 = v6;
    if (a5)
    {
      *(&v57 + 1) = type metadata accessor for AnyEndpoint(0);
      *&v58 = sub_10019E7EC(&qword_1005ADDD8, type metadata accessor for AnyEndpoint, &unk_1004D0F3C);
      v22 = sub_10000331C(&v56);
      sub_10018BD14(v22);
      *&v60 = &type metadata for SecureLocationsPushAckRequest;
      v14 = sub_10018D34C();
    }

    else
    {
      *(&v57 + 1) = type metadata accessor for AnyEndpoint(0);
      *&v58 = sub_10019E7EC(&qword_1005ADDD8, type metadata accessor for AnyEndpoint, &unk_1004D0F3C);
      v15 = sub_10000331C(&v56);
      sub_100189490(v15);
      *&v60 = &type metadata for SecureLocationsFetchRequest;
      v14 = sub_10018B8A8();
    }

    goto LABEL_12;
  }

  if (a5 == 2)
  {
    v53 = v6;
    *(&v57 + 1) = type metadata accessor for AnyEndpoint(0);
    *&v58 = sub_10019E7EC(&qword_1005ADDD8, type metadata accessor for AnyEndpoint, &unk_1004D0F3C);
    v16 = sub_10000331C(&v56);
    sub_10018D504(v16);
    *&v60 = &type metadata for SecureLocationsSubmitRequest;
    v14 = sub_10018E6D8();
    goto LABEL_12;
  }

  if (a5 == 3)
  {
    v53 = v6;
    *(&v57 + 1) = type metadata accessor for AnyEndpoint(0);
    *&v58 = sub_10019E7EC(&qword_1005ADDD8, type metadata accessor for AnyEndpoint, &unk_1004D0F3C);
    v13 = sub_10000331C(&v56);
    sub_10018E95C(v13);
    *&v60 = &type metadata for SecureLocationsUnsubscribeRequest;
    v14 = sub_10018FB60();
LABEL_12:
    *(&v60 + 1) = v14;
    *(&v58 + 1) = a2;
    v23 = a3;
    v24 = a4;
LABEL_13:
    *&v59 = v23;
    *(&v59 + 1) = v24;
    v26 = *a1;
    v25 = a1[1];
    v27 = (a1 + *(type metadata accessor for Credentials(0) + 32));
    v28 = *v27;
    v29 = v27[1];
    *(&v62 + 1) = &type metadata for AnyRequestCredential;
    v63 = sub_1001889FC();
    v30 = swift_allocObject();
    *&v61 = v30;
    v30[2] = v26;
    v30[3] = v25;
    v30[4] = v28;
    v30[5] = v29;

    v17 = v53;
    goto LABEL_14;
  }

  if (!(a4 | a3 | a2))
  {
    v53 = v6;
    *(&v57 + 1) = type metadata accessor for AnyEndpoint(0);
    *&v58 = sub_10019E7EC(&qword_1005ADDD8, type metadata accessor for AnyEndpoint, &unk_1004D0F3C);
    v49 = sub_10000331C(&v56);
    sub_1001837C0(v49);
    v50 = sub_10018573C();
    v23 = v51;
    v24 = v52;
    *&v60 = &type metadata for SecureLocationsConfigRequest;
    *(&v60 + 1) = sub_100186F40();
    *(&v58 + 1) = v50;
    goto LABEL_13;
  }

  sub_1001879E8(a1, v54, &v56);
  v17 = v6;
  if (v6)
  {
    v18 = v54[0];
    v19 = v54[1];
    v20 = v55;
    sub_1000C7488();
    swift_allocError();
    *v21 = v18;
    *(v21 + 8) = v19;
    *(v21 + 16) = v20;
    return;
  }

LABEL_14:
  v31 = v61;
  *(a6 + 64) = v60;
  *(a6 + 80) = v31;
  *(a6 + 96) = v62;
  *(a6 + 112) = v63;
  v32 = v57;
  *a6 = v56;
  *(a6 + 16) = v32;
  v33 = v59;
  *(a6 + 32) = v58;
  *(a6 + 48) = v33;
  sub_10019E284(a2, a3, a4, v7);
  if (static SystemInfo.isInternalBuild.getter())
  {
    v34 = [objc_opt_self() standardUserDefaults];
    v35 = String._bridgeToObjectiveC()();
    v36 = [v34 BOOLForKey:v35];

    if (v36)
    {
      v37 = sub_100208D38(&off_10058AAD0);
      sub_1001939E4(&unk_10058AAF0);
      sub_100011004(a6, &v56);
      sub_100011AEC((a6 + 40), *(a6 + 64));
      v38 = type metadata accessor for AnyRequestContentRepresentable(0);
      *&v60 = v38;
      *(&v60 + 1) = sub_10019E7EC(&qword_1005AE4F0, type metadata accessor for AnyRequestContentRepresentable, &unk_1004CEDA4);
      v39 = sub_10000331C(&v58 + 1);
      dispatch thunk of ContentRepresentable.method.getter();
      sub_100011AEC((a6 + 40), *(a6 + 64));
      v40 = dispatch thunk of ContentRepresentable.headerDictionary.getter();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v64 = v40;
      sub_10019E368(v37, sub_10019E2D4, 0, isUniquelyReferenced_nonNull_native, &v64);
      if (v17)
      {

        __break(1u);
      }

      else
      {

        v42 = v64;
        sub_100011AEC((a6 + 40), *(a6 + 64));
        v43 = dispatch thunk of RequestContentRepresentable.body.getter();
        *(v39 + *(v38 + 20)) = v42;
        v44 = (v39 + *(v38 + 24));
        *v44 = v43;
        v44[1] = v45;
        sub_100011004(a6 + 80, &v61);
        sub_10019E608(a6);
        v46 = v61;
        *(a6 + 64) = v60;
        *(a6 + 80) = v46;
        *(a6 + 96) = v62;
        *(a6 + 112) = v63;
        v47 = v57;
        *a6 = v56;
        *(a6 + 16) = v47;
        v48 = v59;
        *(a6 + 32) = v58;
        *(a6 + 48) = v48;
      }
    }
  }
}

void sub_10019E284(uint64_t result, uint64_t a2, unint64_t a3, unsigned __int8 a4)
{
  if (a4 <= 3u)
  {

    sub_10002CF44(a2, a3);
  }
}

double sub_10019E2D4@<D0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  *a2 = *a1;
  a2[1] = v2;
  a2[2] = v3;
  a2[3] = v4;

  return result;
}

uint64_t type metadata accessor for AnyRequestContentRepresentable(uint64_t a1)
{
  result = qword_1005AE550;
  if (!qword_1005AE550)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10019E368(uint64_t a1, void (*a2)(uint64_t *__return_ptr, void *, __n128), uint64_t a3, char a4, void *a5)
{
  v52 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  v42 = v10;
  v43 = v6;
  while (v9)
  {
    v46 = a4;
    v13 = v11;
LABEL_14:
    v15 = (v13 << 10) | (16 * __clz(__rbit64(v9)));
    v16 = (*(a1 + 48) + v15);
    v17 = *v16;
    v18 = v16[1];
    v19 = (*(a1 + 56) + v15);
    v20 = *v19;
    v21 = v19[1];
    v51[0] = v17;
    v51[1] = v18;
    v51[2] = v20;
    v51[3] = v21;

    (a2)(&v47, v51);

    v22 = v47;
    v23 = v48;
    v24 = v49;
    v25 = v50;
    v26 = *v52;
    v28 = sub_1000110D8(v47, v48);
    v29 = v26[2];
    v30 = (v27 & 1) == 0;
    v31 = v29 + v30;
    if (__OFADD__(v29, v30))
    {
      goto LABEL_25;
    }

    v32 = v27;
    if (v26[3] >= v31)
    {
      if ((v46 & 1) == 0)
      {
        sub_100202A1C();
      }
    }

    else
    {
      sub_10022C6A4(v31, v46 & 1);
      v33 = sub_1000110D8(v22, v23);
      if ((v32 & 1) != (v34 & 1))
      {
        goto LABEL_27;
      }

      v28 = v33;
    }

    v9 &= v9 - 1;
    v35 = *v52;
    if (v32)
    {

      v12 = (v35[7] + 16 * v28);
      *v12 = v24;
      v12[1] = v25;
    }

    else
    {
      v35[(v28 >> 6) + 8] |= 1 << v28;
      v36 = (v35[6] + 16 * v28);
      *v36 = v22;
      v36[1] = v23;
      v37 = (v35[7] + 16 * v28);
      *v37 = v24;
      v37[1] = v25;
      v38 = v35[2];
      v39 = __OFADD__(v38, 1);
      v40 = v38 + 1;
      if (v39)
      {
        goto LABEL_26;
      }

      v35[2] = v40;
    }

    a4 = 1;
    v11 = v13;
    v10 = v42;
    v6 = v43;
  }

  v14 = v11;
  while (1)
  {
    v13 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v13 >= v10)
    {
      sub_10000E3F8(a1);
    }

    v9 = *(v6 + 8 * v13);
    ++v14;
    if (v9)
    {
      v46 = a4;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void sub_10019E660(uint64_t a1)
{
  type metadata accessor for RequestMethod();
  if (v1 <= 0x3F)
  {
    sub_10019D3A8();
    if (v2 <= 0x3F)
    {
      sub_10019E6FC();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_10019E6FC()
{
  if (!qword_1005AE560)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1005AE560);
    }
  }
}

uint64_t sub_10019E7EC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_10019E834()
{
  result = sub_1004B932C();
  if ((result & 0x1FFFFFFFFLL) == 7)
  {
    v1 = 0xD000000000000020;
  }

  else
  {
    v1 = 0xD00000000000001DLL;
  }

  if ((result & 0x1FFFFFFFFLL) == 7)
  {
    v2 = "/fmipservice/fmpeopleservice/";
  }

  else
  {
    v2 = "hideLocation body: ";
  }

  qword_1005DFCF8 = v1;
  unk_1005DFD00 = v2 | 0x8000000000000000;
  return result;
}

uint64_t sub_10019E890(uint64_t a1, void *a2)
{
  sub_100011AEC(a2, a2[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  Date.epoch.getter();
  sub_1000BAF2C(v3, v3[3]);
  dispatch thunk of SingleValueEncodingContainer.encode(_:)();
  return sub_100004984(v3);
}

uint64_t sub_10019E938()
{
  v0 = [objc_opt_self() processInfo];
  v1 = [v0 processName];

  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3._countAndFlagsBits = 47;
  v3._object = 0xE100000000000000;
  String.append(_:)(v3);
  v4._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v4);

  v5._countAndFlagsBits = 32;
  v5._object = 0xE100000000000000;
  String.append(_:)(v5);
  v6._countAndFlagsBits = static SystemInfo.productType.getter();
  String.append(_:)(v6);

  v7._countAndFlagsBits = 47;
  v7._object = 0xE100000000000000;
  String.append(_:)(v7);
  v8._countAndFlagsBits = static SystemInfo.osVersion.getter();
  String.append(_:)(v8);

  return v2;
}

uint64_t sub_10019EA54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_100003690;

  return ServerInteractionController.send(endpoint:content:credential:)(a1, a2, a3, a4);
}

uint64_t sub_10019EB1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_10000368C;

  return ServerInteractionController.upload(endpoint:content:credential:)(a1, a2, a3, a4);
}

uint64_t sub_10019EBE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  Hasher._finalize()();
  v4._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v4);

  v5._countAndFlagsBits = 0x203A617461640ALL;
  v5._object = 0xE700000000000000;
  String.append(_:)(v5);
  v6._countAndFlagsBits = Data.description.getter();
  String.append(_:)(v6);

  return 540697705;
}

uint64_t sub_10019ECD8(void (*a1)(uint64_t *__return_ptr, char *))
{
  v12 = a1;
  v3 = type metadata accessor for ContinuousClock.Instant();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10004B564(&qword_1005AE630, &qword_1004C3430);
  __chkstk_darwin(v7 - 8);
  v9 = &v11 - v8;
  sub_100005F04(v1, &v11 - v8, &qword_1005AE630, &qword_1004C3430);
  if ((*(v4 + 48))(v9, 1, v3) == 1)
  {
    return 2;
  }

  (*(v4 + 32))(v6, v9, v3);
  v12(&v13, v6);
  if (v2)
  {
    result = (*(v4 + 8))(v6, v3);
    __break(1u);
  }

  else
  {
    (*(v4 + 8))(v6, v3);
    return v13;
  }

  return result;
}

uint64_t sub_10019EEB8(void (*a1)(uint64_t *__return_ptr, char *))
{
  v12 = a1;
  v3 = type metadata accessor for SecureLocation(0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10004B564(&unk_1005AB3F0, &qword_1004C4BF0);
  __chkstk_darwin(v7 - 8);
  v9 = &v11 - v8;
  sub_100005F04(v1, &v11 - v8, &unk_1005AB3F0, &qword_1004C4BF0);
  if ((*(v4 + 48))(v9, 1, v3) == 1)
  {
    return 2;
  }

  sub_1001A5858(v9, v6, type metadata accessor for SecureLocation);
  v12(&v13, v6);
  if (v2)
  {
    result = sub_1001A58C0(v6, type metadata accessor for SecureLocation);
    __break(1u);
  }

  else
  {
    sub_1001A58C0(v6, type metadata accessor for SecureLocation);
    return v13;
  }

  return result;
}

uint64_t sub_10019F09C@<X0>(void (*a1)(char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = v3;
  v18[1] = a2;
  v19 = a1;
  v7 = type metadata accessor for PrivateKey();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10004B564(&unk_1005AE620, &qword_1004C4588);
  __chkstk_darwin(v11 - 8);
  v13 = v18 - v12;
  sub_100005F04(v5, v18 - v12, &unk_1005AE620, &qword_1004C4588);
  v14 = 1;
  if ((*(v8 + 48))(v13, 1, v7) == 1)
  {
    v15 = a3;
LABEL_5:
    v16 = sub_10004B564(&qword_1005AAC60, &qword_1004C46E8);
    return (*(*(v16 - 8) + 56))(v15, v14, 1, v16);
  }

  (*(v8 + 32))(v10, v13, v7);
  v15 = a3;
  v19(v10);
  if (!v4)
  {
    (*(v8 + 8))(v10, v7);
    v14 = 0;
    goto LABEL_5;
  }

  result = (*(v8 + 8))(v10, v7);
  __break(1u);
  return result;
}

uint64_t sub_10019F2D8@<X0>(void (*a1)(char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = v3;
  v18[1] = a2;
  v19 = a1;
  v7 = type metadata accessor for TimeZone();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10004B564(&unk_1005AE5E0, &qword_1004CEF40);
  __chkstk_darwin(v11 - 8);
  v13 = v18 - v12;
  sub_100005F04(v5, v18 - v12, &unk_1005AE5E0, &qword_1004CEF40);
  v14 = 1;
  if ((*(v8 + 48))(v13, 1, v7) == 1)
  {
    v15 = a3;
LABEL_5:
    v16 = type metadata accessor for Fence.Schedule();
    return (*(*(v16 - 8) + 56))(v15, v14, 1, v16);
  }

  (*(v8 + 32))(v10, v13, v7);
  v15 = a3;
  v19(v10);
  if (!v4)
  {
    (*(v8 + 8))(v10, v7);
    v14 = 0;
    goto LABEL_5;
  }

  result = (*(v8 + 8))(v10, v7);
  __break(1u);
  return result;
}

uint64_t sub_10019F508(id *a1)
{
  v2 = v1;
  v4 = type metadata accessor for TimeZone();
  v103 = *(v4 - 8);
  v104 = v4;
  __chkstk_darwin(v4);
  v102 = &v99 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Fence.DaysOfWeek();
  v100 = *(v6 - 8);
  v101 = v6;
  __chkstk_darwin(v6);
  v99 = &v99 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Fence.TimeOfDay();
  v112 = *(v8 - 8);
  v113 = v8;
  __chkstk_darwin(v8);
  v111 = &v99 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10004B564(&qword_1005AE5C0, &unk_1004D06D0);
  v11 = __chkstk_darwin(v10 - 8);
  v110 = &v99 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v109 = &v99 - v14;
  v15 = __chkstk_darwin(v13);
  v108 = &v99 - v16;
  v17 = __chkstk_darwin(v15);
  v107 = &v99 - v18;
  v19 = __chkstk_darwin(v17);
  v106 = &v99 - v20;
  __chkstk_darwin(v19);
  v105 = &v99 - v21;
  v22 = sub_10004B564(&unk_1005AE5B0, &qword_1004C32F0);
  __chkstk_darwin(v22 - 8);
  v24 = &v99 - v23;
  v25 = [*a1 encryptedValues];
  swift_getObjectType();
  v26 = type metadata accessor for FenceRecord(0);
  v27 = (v2 + v26[5]);
  v29 = *v27;
  v28 = v27[1];
  *(&v116 + 1) = &type metadata for String;
  v117 = &protocol witness table for String;
  *&v115 = v29;
  *(&v115 + 1) = v28;

  CKRecordKeyValueSetting.subscript.setter();
  v30 = *(v2 + v26[6]);
  v31 = String._bridgeToObjectiveC()();
  [v25 setObject:v30 forKeyedSubscript:v31];

  v32 = *(v2 + v26[7]);
  *(&v116 + 1) = &type metadata for Int;
  v117 = &protocol witness table for Int;
  *&v115 = v32;
  CKRecordKeyValueSetting.subscript.setter();
  v33 = v26[9];
  v114 = v2;
  sub_100005F04(v2 + v33, v24, &unk_1005AE5B0, &qword_1004C32F0);
  v34 = type metadata accessor for Date();
  v35 = *(v34 - 8);
  if ((*(v35 + 48))(v24, 1, v34) == 1)
  {
    sub_100002CE0(v24, &unk_1005AE5B0, &qword_1004C32F0);
    v115 = 0u;
    v116 = 0u;
    v117 = 0;
  }

  else
  {
    *(&v116 + 1) = v34;
    v117 = &protocol witness table for Date;
    v36 = sub_10000331C(&v115);
    (*(v35 + 32))(v36, v24, v34);
  }

  CKRecordKeyValueSetting.subscript.setter();
  v37 = (v114 + v26[10]);
  v38 = v37[1];
  if (v38)
  {
    v39 = *v37;
    v40 = &protocol witness table for String;
    v41 = &type metadata for String;
  }

  else
  {
    v39 = 0;
    v41 = 0;
    v40 = 0;
    *&v116 = 0;
  }

  *&v115 = v39;
  *(&v115 + 1) = v38;
  *(&v116 + 1) = v41;
  v117 = v40;

  CKRecordKeyValueSetting.subscript.setter();
  v42 = v37[3];
  if (v42)
  {
    v43 = v37[2];
    v44 = &protocol witness table for String;
    v45 = &type metadata for String;
  }

  else
  {
    v43 = 0;
    v45 = 0;
    v44 = 0;
    *&v116 = 0;
  }

  *&v115 = v43;
  *(&v115 + 1) = v42;
  *(&v116 + 1) = v45;
  v117 = v44;

  CKRecordKeyValueSetting.subscript.setter();
  v46 = v37[5];
  if (v46)
  {
    v47 = v37[4];
    v48 = &protocol witness table for String;
    v49 = &type metadata for String;
  }

  else
  {
    v47 = 0;
    v49 = 0;
    v48 = 0;
    *&v116 = 0;
  }

  *&v115 = v47;
  *(&v115 + 1) = v46;
  *(&v116 + 1) = v49;
  v117 = v48;

  CKRecordKeyValueSetting.subscript.setter();
  v50 = v37[7];
  if (v50)
  {
    v51 = v37[6];
    v52 = &protocol witness table for String;
    v53 = &type metadata for String;
  }

  else
  {
    v51 = 0;
    v53 = 0;
    v52 = 0;
    *&v116 = 0;
  }

  *&v115 = v51;
  *(&v115 + 1) = v50;
  *(&v116 + 1) = v53;
  v117 = v52;

  CKRecordKeyValueSetting.subscript.setter();
  v54 = v37[9];
  if (v54)
  {
    v55 = v37[8];
    v56 = &protocol witness table for String;
    v57 = &type metadata for String;
  }

  else
  {
    v55 = 0;
    v57 = 0;
    v56 = 0;
    *&v116 = 0;
  }

  *&v115 = v55;
  *(&v115 + 1) = v54;
  *(&v116 + 1) = v57;
  v117 = v56;

  CKRecordKeyValueSetting.subscript.setter();
  v58 = v37[11];
  if (v58)
  {
    v59 = v37[10];
    v60 = &protocol witness table for String;
    v61 = &type metadata for String;
  }

  else
  {
    v59 = 0;
    v61 = 0;
    v60 = 0;
    *&v116 = 0;
  }

  *&v115 = v59;
  *(&v115 + 1) = v58;
  *(&v116 + 1) = v61;
  v117 = v60;

  CKRecordKeyValueSetting.subscript.setter();
  v62 = v26[8];
  v63 = v105;
  sub_100005F04(v114 + v62, v105, &qword_1005AE5C0, &unk_1004D06D0);
  v64 = type metadata accessor for Fence.Schedule();
  v65 = *(v64 - 8);
  v66 = *(v65 + 48);
  if (v66(v63, 1, v64) == 1)
  {
    sub_100002CE0(v63, &qword_1005AE5C0, &unk_1004D06D0);
    v67 = 0;
    v68 = 0;
    v69 = 0;
    *(&v115 + 1) = 0;
    *&v116 = 0;
  }

  else
  {
    v70 = v111;
    Fence.Schedule.start.getter();
    (*(v65 + 8))(v63, v64);
    v67 = Fence.TimeOfDay.hour.getter();
    (*(v112 + 8))(v70, v113);
    v69 = &protocol witness table for UInt;
    v68 = &type metadata for UInt;
  }

  *&v115 = v67;
  *(&v116 + 1) = v68;
  v117 = v69;
  CKRecordKeyValueSetting.subscript.setter();
  v71 = v106;
  sub_100005F04(v114 + v62, v106, &qword_1005AE5C0, &unk_1004D06D0);
  if (v66(v71, 1, v64) == 1)
  {
    sub_100002CE0(v71, &qword_1005AE5C0, &unk_1004D06D0);
    v72 = 0;
    v73 = 0;
    v74 = 0;
    *(&v115 + 1) = 0;
    *&v116 = 0;
  }

  else
  {
    v75 = v111;
    Fence.Schedule.start.getter();
    (*(v65 + 8))(v71, v64);
    v72 = Fence.TimeOfDay.minute.getter();
    (*(v112 + 8))(v75, v113);
    v74 = &protocol witness table for UInt;
    v73 = &type metadata for UInt;
  }

  *&v115 = v72;
  *(&v116 + 1) = v73;
  v117 = v74;
  CKRecordKeyValueSetting.subscript.setter();
  v76 = v107;
  sub_100005F04(v114 + v62, v107, &qword_1005AE5C0, &unk_1004D06D0);
  if (v66(v76, 1, v64) == 1)
  {
    sub_100002CE0(v76, &qword_1005AE5C0, &unk_1004D06D0);
    v77 = 0;
    v78 = 0;
    v79 = 0;
    *(&v115 + 1) = 0;
    *&v116 = 0;
  }

  else
  {
    v80 = v111;
    Fence.Schedule.end.getter();
    (*(v65 + 8))(v76, v64);
    v77 = Fence.TimeOfDay.hour.getter();
    (*(v112 + 8))(v80, v113);
    v79 = &protocol witness table for UInt;
    v78 = &type metadata for UInt;
  }

  *&v115 = v77;
  *(&v116 + 1) = v78;
  v117 = v79;
  CKRecordKeyValueSetting.subscript.setter();
  v81 = v108;
  sub_100005F04(v114 + v62, v108, &qword_1005AE5C0, &unk_1004D06D0);
  if (v66(v81, 1, v64) == 1)
  {
    sub_100002CE0(v81, &qword_1005AE5C0, &unk_1004D06D0);
    v82 = 0;
    v83 = 0;
    v84 = 0;
    *(&v115 + 1) = 0;
    *&v116 = 0;
  }

  else
  {
    v85 = v111;
    Fence.Schedule.end.getter();
    (*(v65 + 8))(v81, v64);
    v82 = Fence.TimeOfDay.minute.getter();
    (*(v112 + 8))(v85, v113);
    v84 = &protocol witness table for UInt;
    v83 = &type metadata for UInt;
  }

  *&v115 = v82;
  *(&v116 + 1) = v83;
  v117 = v84;
  CKRecordKeyValueSetting.subscript.setter();
  v86 = v109;
  sub_100005F04(v114 + v62, v109, &qword_1005AE5C0, &unk_1004D06D0);
  if (v66(v86, 1, v64) == 1)
  {
    sub_100002CE0(v86, &qword_1005AE5C0, &unk_1004D06D0);
    v87 = 0;
    v88 = 0;
    *&v116 = 0;
    v115 = 0uLL;
  }

  else
  {
    v89 = v99;
    Fence.Schedule.daysOfWeek.getter();
    (*(v65 + 8))(v86, v64);
    v90 = Fence.DaysOfWeek.rawValue.getter();
    (*(v100 + 8))(v89, v101);
    LOBYTE(v115) = v90;
    v88 = &protocol witness table for UInt8;
    v87 = &type metadata for UInt8;
  }

  v91 = v110;
  *(&v116 + 1) = v87;
  v117 = v88;
  CKRecordKeyValueSetting.subscript.setter();
  sub_100005F04(v114 + v62, v91, &qword_1005AE5C0, &unk_1004D06D0);
  if (v66(v91, 1, v64) == 1)
  {
    sub_100002CE0(v91, &qword_1005AE5C0, &unk_1004D06D0);
    v92 = 0;
    v93 = 0;
    v94 = 0;
    v95 = 0;
    *&v116 = 0;
  }

  else
  {
    v96 = v102;
    Fence.Schedule.timeZone.getter();
    (*(v65 + 8))(v91, v64);
    v92 = TimeZone.identifier.getter();
    v93 = v97;
    (*(v103 + 8))(v96, v104);
    v95 = &protocol witness table for String;
    v94 = &type metadata for String;
  }

  *&v115 = v92;
  *(&v115 + 1) = v93;
  *(&v116 + 1) = v94;
  v117 = v95;
  CKRecordKeyValueSetting.subscript.setter();
  return swift_unknownObjectRelease();
}

unint64_t sub_1001A02B8(char a1)
{
  result = 0x6C6562616CLL;
  switch(a1)
  {
    case 1:
    case 2:
      result = 0x6E6F697461636F6CLL;
      break;
    case 3:
    case 10:
      result = 0xD000000000000012;
      break;
    case 4:
      result = 0xD00000000000001CLL;
      break;
    case 5:
      result = 0xD000000000000011;
      break;
    case 6:
      result = 0x72616D6563616C70;
      break;
    case 7:
      result = 0xD000000000000017;
      break;
    case 8:
      result = 0xD000000000000014;
      break;
    case 9:
      result = 0xD000000000000011;
      break;
    case 11:
      result = 0xD000000000000011;
      break;
    case 12:
      result = 0xD000000000000010;
      break;
    case 13:
      result = 0x656C756465686373;
      break;
    case 14:
      result = 0xD000000000000013;
      break;
    case 15:
      result = 0xD000000000000011;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1001A0484(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v263 = a2;
  v265 = a1;
  v250 = type metadata accessor for TimeZone();
  v249 = *(v250 - 8);
  __chkstk_darwin(v250);
  v248 = &v225 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v251 = type metadata accessor for Fence.DaysOfWeek();
  v255 = *(v251 - 8);
  __chkstk_darwin(v251);
  v231 = &v225 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v244 = sub_10004B564(&qword_1005AE710, &qword_1004CF050);
  __chkstk_darwin(v244);
  v254 = &v225 - v6;
  v7 = sub_10004B564(&qword_1005AE718, &qword_1004CF058);
  v8 = __chkstk_darwin(v7 - 8);
  v245 = &v225 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v252 = &v225 - v11;
  __chkstk_darwin(v10);
  v253 = &v225 - v12;
  v13 = type metadata accessor for Fence.TimeOfDay();
  v260 = *(v13 - 8);
  v261 = v13;
  __chkstk_darwin(v13);
  v259 = &v225 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10004B564(&qword_1005AE5C0, &unk_1004D06D0);
  v16 = __chkstk_darwin(v15 - 8);
  v232 = &v225 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v247 = &v225 - v19;
  v20 = __chkstk_darwin(v18);
  v246 = &v225 - v21;
  v22 = __chkstk_darwin(v20);
  v233 = &v225 - v23;
  v24 = __chkstk_darwin(v22);
  v243 = &v225 - v25;
  v26 = __chkstk_darwin(v24);
  v242 = &v225 - v27;
  v28 = __chkstk_darwin(v26);
  v230 = &v225 - v29;
  v30 = __chkstk_darwin(v28);
  v241 = &v225 - v31;
  v32 = __chkstk_darwin(v30);
  v240 = &v225 - v33;
  v34 = __chkstk_darwin(v32);
  v229 = &v225 - v35;
  v36 = __chkstk_darwin(v34);
  v239 = &v225 - v37;
  v38 = __chkstk_darwin(v36);
  v238 = &v225 - v39;
  v40 = __chkstk_darwin(v38);
  v228 = &v225 - v41;
  v42 = __chkstk_darwin(v40);
  v237 = &v225 - v43;
  v44 = __chkstk_darwin(v42);
  v236 = &v225 - v45;
  v46 = __chkstk_darwin(v44);
  v227 = &v225 - v47;
  v48 = __chkstk_darwin(v46);
  v235 = &v225 - v49;
  __chkstk_darwin(v48);
  v234 = &v225 - v50;
  v51 = type metadata accessor for Date();
  v266 = *(v51 - 8);
  __chkstk_darwin(v51);
  v225 = &v225 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_10004B564(&unk_1005AE5B0, &qword_1004C32F0);
  v54 = __chkstk_darwin(v53 - 8);
  v258 = &v225 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v54);
  v226 = &v225 - v56;
  v57 = sub_10004B564(&qword_1005AAE00, &qword_1004C4A18);
  __chkstk_darwin(v57);
  v59 = &v225 - v58;
  v60 = sub_10004B564(&qword_1005AE720, &qword_1004CA2F0);
  v61 = __chkstk_darwin(v60 - 8);
  v63 = &v225 - v62;
  v64 = *(a3 - 8);
  __chkstk_darwin(v61);
  v66 = &v225 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = type metadata accessor for FenceRecord(0);
  v68 = *(v67 - 8);
  __chkstk_darwin(v67);
  v70 = &v225 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v64 + 16))(v66, v263, a3);
  v71 = swift_dynamicCast();
  v72 = *(v68 + 56);
  if (v71)
  {
    v72(v63, 0, 1, v67);
    sub_1001A5858(v63, v70, type metadata accessor for FenceRecord);
    v256 = [*v265 encryptedValues];
    ObjectType = swift_getObjectType();
    v73 = *(v67 + 20);
    v74 = (v264 + v73);
    v75 = *(v264 + v73 + 8);
    v76 = &v70[v73];
    v78 = *v76;
    v77 = *(v76 + 1);
    if ((*v74 != *v76 || v75 != v77) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      *(&v268 + 1) = &type metadata for String;
      v269 = &protocol witness table for String;
      *&v267 = v78;
      *(&v267 + 1) = v77;

      CKRecordKeyValueSetting.subscript.setter();
    }

    v265 = v67;
    v79 = *(v67 + 24);
    v80 = *(v264 + v79);
    v262 = v70;
    v81 = *&v70[v79];
    sub_1000545A4(0, &unk_1005ABB70, CLLocation_ptr);
    v82 = v80;
    v83 = v81;
    v84 = static NSObject.== infix(_:_:)();

    v85 = v256;
    if ((v84 & 1) == 0)
    {
      v86 = String._bridgeToObjectiveC()();
      [v85 setObject:v83 forKeyedSubscript:v86];
    }

    v87 = v265;
    v88 = *(v265 + 28);
    v89 = *(v264 + v88);
    v90 = *&v262[v88];
    if (v89 != v90)
    {
      *(&v268 + 1) = &type metadata for Int;
      v269 = &protocol witness table for Int;
      *&v267 = v90;
      CKRecordKeyValueSetting.subscript.setter();
    }

    v91 = *(v87 + 36);
    v92 = *(v57 + 48);
    sub_100005F04(v264 + v91, v59, &unk_1005AE5B0, &qword_1004C32F0);
    sub_100005F04(&v262[v91], &v59[v92], &unk_1005AE5B0, &qword_1004C32F0);
    v93 = *(v266 + 48);
    if (v93(v59, 1, v51) == 1)
    {
      if (v93(&v59[v92], 1, v51) == 1)
      {
        sub_100002CE0(v59, &unk_1005AE5B0, &qword_1004C32F0);
        goto LABEL_20;
      }
    }

    else
    {
      v94 = v226;
      sub_100005F04(v59, v226, &unk_1005AE5B0, &qword_1004C32F0);
      if (v93(&v59[v92], 1, v51) != 1)
      {
        v104 = v266;
        v105 = v225;
        (*(v266 + 32))(v225, &v59[v92], v51);
        sub_1001A5810(&qword_1005AE5D0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
        v106 = dispatch thunk of static Equatable.== infix(_:_:)();
        v107 = *(v104 + 8);
        v107(v105, v51);
        v107(v94, v51);
        v87 = v265;
        sub_100002CE0(v59, &unk_1005AE5B0, &qword_1004C32F0);
        if (v106)
        {
          goto LABEL_20;
        }

        goto LABEL_16;
      }

      (*(v266 + 8))(v94, v51);
    }

    sub_100002CE0(v59, &qword_1005AAE00, &qword_1004C4A18);
LABEL_16:
    v95 = v258;
    sub_100005F04(&v262[v91], v258, &unk_1005AE5B0, &qword_1004C32F0);
    if (v93(v95, 1, v51) == 1)
    {
      sub_100002CE0(v95, &unk_1005AE5B0, &qword_1004C32F0);
      v267 = 0u;
      v268 = 0u;
      v269 = 0;
    }

    else
    {
      *(&v268 + 1) = v51;
      v269 = &protocol witness table for Date;
      v96 = sub_10000331C(&v267);
      (*(v266 + 32))(v96, v95, v51);
    }

    CKRecordKeyValueSetting.subscript.setter();
LABEL_20:
    v97 = *(v87 + 40);
    v98 = (v264 + v97);
    v99 = *(v264 + v97 + 8);
    v100 = v262;
    v101 = &v262[v97];
    v103 = *&v262[v97];
    v102 = *&v262[v97 + 8];
    if (v99)
    {
      if (!v102)
      {
        v269 = 0;
        v267 = 0u;
        v268 = 0u;
        goto LABEL_31;
      }

      if (*v98 == v103 && v99 == v102 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
LABEL_32:
        v108 = v98[3];
        v110 = *(v101 + 2);
        v109 = *(v101 + 3);
        if (v108)
        {
          if (!v109)
          {
            v269 = 0;
            v267 = 0u;
            v268 = 0u;
            goto LABEL_41;
          }

          if (v98[2] == v110 && v108 == v109 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
LABEL_42:
            v111 = v98[5];
            v113 = *(v101 + 4);
            v112 = *(v101 + 5);
            if (v111)
            {
              if (!v112)
              {
                v269 = 0;
                v267 = 0u;
                v268 = 0u;
                goto LABEL_51;
              }

              if (v98[4] == v113 && v111 == v112 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {
LABEL_52:
                v114 = v98[7];
                v116 = *(v101 + 6);
                v115 = *(v101 + 7);
                if (v114)
                {
                  if (!v115)
                  {
                    v269 = 0;
                    v267 = 0u;
                    v268 = 0u;
                    goto LABEL_61;
                  }

                  if (v98[6] == v116 && v114 == v115 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                  {
LABEL_62:
                    v117 = v98[9];
                    v119 = *(v101 + 8);
                    v118 = *(v101 + 9);
                    if (v117)
                    {
                      if (!v118)
                      {
                        v269 = 0;
                        v267 = 0u;
                        v268 = 0u;
                        goto LABEL_71;
                      }

                      if (v98[8] == v119 && v117 == v118 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                      {
LABEL_72:
                        v120 = v98[11];
                        v122 = *(v101 + 10);
                        v121 = *(v101 + 11);
                        if (v120)
                        {
                          v123 = v264;
                          if (!v121)
                          {
                            v269 = 0;
                            v267 = 0u;
                            v268 = 0u;
                            v124 = v265;
                            goto LABEL_81;
                          }

                          v124 = v265;
                          if (v98[10] == v122 && v120 == v121 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                          {
LABEL_82:
                            v258 = *(v124 + 32);
                            v125 = v234;
                            sub_100005F04(v123 + v258, v234, &qword_1005AE5C0, &unk_1004D06D0);
                            v126 = type metadata accessor for Fence.Schedule();
                            v127 = *(v126 - 8);
                            v128 = v127 + 48;
                            v266 = *(v127 + 48);
                            v129 = (v266)(v125, 1, v126);
                            v263 = v127;
                            if (v129 == 1)
                            {
                              sub_100002CE0(v125, &qword_1005AE5C0, &unk_1004D06D0);
                              v131 = 0;
                            }

                            else
                            {
                              v130 = v259;
                              Fence.Schedule.start.getter();
                              (*(v127 + 8))(v125, v126);
                              v131 = Fence.TimeOfDay.hour.getter();
                              (*(v260 + 8))(v130, v261);
                            }

                            v132 = v235;
                            v265 = *(v265 + 32);
                            sub_100005F04(&v100[v265], v235, &qword_1005AE5C0, &unk_1004D06D0);
                            if ((v266)(v132, 1, v126) == 1)
                            {
                              sub_100002CE0(v132, &qword_1005AE5C0, &unk_1004D06D0);
                              v133 = v263;
                              if (v129 == 1)
                              {
                                goto LABEL_94;
                              }
                            }

                            else
                            {
                              v134 = v259;
                              Fence.Schedule.start.getter();
                              v133 = v263;
                              (*(v263 + 8))(v132, v126);
                              v135 = Fence.TimeOfDay.hour.getter();
                              (*(v260 + 8))(v134, v261);
                              if (v129 != 1 && v131 == v135)
                              {
                                goto LABEL_94;
                              }
                            }

                            v136 = v227;
                            sub_100005F04(&v100[v265], v227, &qword_1005AE5C0, &unk_1004D06D0);
                            if ((v266)(v136, 1, v126) == 1)
                            {
                              sub_100002CE0(v136, &qword_1005AE5C0, &unk_1004D06D0);
                              v137 = 0;
                              v138 = 0;
                              v139 = 0;
                              *(&v267 + 1) = 0;
                              *&v268 = 0;
                            }

                            else
                            {
                              v140 = v259;
                              Fence.Schedule.start.getter();
                              (*(v133 + 8))(v136, v126);
                              v137 = Fence.TimeOfDay.hour.getter();
                              (*(v260 + 8))(v140, v261);
                              v139 = &protocol witness table for UInt;
                              v138 = &type metadata for UInt;
                            }

                            *&v267 = v137;
                            *(&v268 + 1) = v138;
                            v269 = v139;
                            CKRecordKeyValueSetting.subscript.setter();
LABEL_94:
                            v141 = v264;
                            v142 = v236;
                            sub_100005F04(v264 + v258, v236, &qword_1005AE5C0, &unk_1004D06D0);
                            v143 = (v266)(v142, 1, v126);
                            if (v143 == 1)
                            {
                              sub_100002CE0(v142, &qword_1005AE5C0, &unk_1004D06D0);
                              v146 = 0;
                            }

                            else
                            {
                              v144 = v133;
                              v145 = v259;
                              Fence.Schedule.start.getter();
                              (*(v144 + 8))(v142, v126);
                              v146 = Fence.TimeOfDay.minute.getter();
                              (*(v260 + 8))(v145, v261);
                            }

                            v147 = v237;
                            sub_100005F04(&v100[v265], v237, &qword_1005AE5C0, &unk_1004D06D0);
                            if ((v266)(v147, 1, v126) == 1)
                            {
                              sub_100002CE0(v147, &qword_1005AE5C0, &unk_1004D06D0);
                              if (v143 == 1)
                              {
                                goto LABEL_106;
                              }
                            }

                            else
                            {
                              v148 = v259;
                              Fence.Schedule.start.getter();
                              (*(v263 + 8))(v147, v126);
                              v149 = Fence.TimeOfDay.minute.getter();
                              (*(v260 + 8))(v148, v261);
                              if (v143 != 1 && v146 == v149)
                              {
                                goto LABEL_106;
                              }
                            }

                            v150 = v228;
                            sub_100005F04(&v100[v265], v228, &qword_1005AE5C0, &unk_1004D06D0);
                            if ((v266)(v150, 1, v126) == 1)
                            {
                              sub_100002CE0(v150, &qword_1005AE5C0, &unk_1004D06D0);
                              v151 = 0;
                              v152 = 0;
                              v153 = 0;
                              *(&v267 + 1) = 0;
                              *&v268 = 0;
                            }

                            else
                            {
                              v154 = v259;
                              Fence.Schedule.start.getter();
                              (*(v263 + 8))(v150, v126);
                              v151 = Fence.TimeOfDay.minute.getter();
                              (*(v260 + 8))(v154, v261);
                              v153 = &protocol witness table for UInt;
                              v152 = &type metadata for UInt;
                            }

                            *&v267 = v151;
                            *(&v268 + 1) = v152;
                            v269 = v153;
                            CKRecordKeyValueSetting.subscript.setter();
LABEL_106:
                            v155 = v238;
                            sub_100005F04(v141 + v258, v238, &qword_1005AE5C0, &unk_1004D06D0);
                            v156 = (v266)(v155, 1, v126);
                            if (v156 == 1)
                            {
                              sub_100002CE0(v155, &qword_1005AE5C0, &unk_1004D06D0);
                              v158 = 0;
                            }

                            else
                            {
                              v157 = v259;
                              Fence.Schedule.end.getter();
                              (*(v263 + 8))(v155, v126);
                              v158 = Fence.TimeOfDay.hour.getter();
                              (*(v260 + 8))(v157, v261);
                            }

                            v159 = v239;
                            sub_100005F04(&v100[v265], v239, &qword_1005AE5C0, &unk_1004D06D0);
                            if ((v266)(v159, 1, v126) == 1)
                            {
                              sub_100002CE0(v159, &qword_1005AE5C0, &unk_1004D06D0);
                              if (v156 == 1)
                              {
                                goto LABEL_118;
                              }
                            }

                            else
                            {
                              v160 = v259;
                              Fence.Schedule.end.getter();
                              (*(v263 + 8))(v159, v126);
                              v161 = Fence.TimeOfDay.hour.getter();
                              (*(v260 + 8))(v160, v261);
                              if (v156 != 1 && v158 == v161)
                              {
                                goto LABEL_118;
                              }
                            }

                            v162 = v229;
                            sub_100005F04(&v100[v265], v229, &qword_1005AE5C0, &unk_1004D06D0);
                            if ((v266)(v162, 1, v126) == 1)
                            {
                              sub_100002CE0(v162, &qword_1005AE5C0, &unk_1004D06D0);
                              v163 = 0;
                              v164 = 0;
                              v165 = 0;
                              *(&v267 + 1) = 0;
                              *&v268 = 0;
                            }

                            else
                            {
                              v166 = v259;
                              Fence.Schedule.end.getter();
                              (*(v263 + 8))(v162, v126);
                              v163 = Fence.TimeOfDay.hour.getter();
                              (*(v260 + 8))(v166, v261);
                              v165 = &protocol witness table for UInt;
                              v164 = &type metadata for UInt;
                            }

                            *&v267 = v163;
                            *(&v268 + 1) = v164;
                            v269 = v165;
                            CKRecordKeyValueSetting.subscript.setter();
LABEL_118:
                            v167 = v240;
                            sub_100005F04(v141 + v258, v240, &qword_1005AE5C0, &unk_1004D06D0);
                            v168 = (v266)(v167, 1, v126);
                            if (v168 == 1)
                            {
                              sub_100002CE0(v167, &qword_1005AE5C0, &unk_1004D06D0);
                              v170 = 0;
                            }

                            else
                            {
                              v169 = v259;
                              Fence.Schedule.end.getter();
                              (*(v263 + 8))(v167, v126);
                              v170 = Fence.TimeOfDay.minute.getter();
                              (*(v260 + 8))(v169, v261);
                            }

                            v171 = v241;
                            sub_100005F04(&v100[v265], v241, &qword_1005AE5C0, &unk_1004D06D0);
                            if ((v266)(v171, 1, v126) == 1)
                            {
                              sub_100002CE0(v171, &qword_1005AE5C0, &unk_1004D06D0);
                              v172 = v168 == 1;
                              v173 = v242;
                              v174 = v252;
                              if (v172)
                              {
                                goto LABEL_131;
                              }
                            }

                            else
                            {
                              v175 = v259;
                              Fence.Schedule.end.getter();
                              (*(v263 + 8))(v171, v126);
                              v176 = Fence.TimeOfDay.minute.getter();
                              (*(v260 + 8))(v175, v261);
                              v172 = v168 == 1;
                              v173 = v242;
                              v174 = v252;
                              if (!v172 && v170 == v176)
                              {
                                goto LABEL_131;
                              }
                            }

                            v177 = v230;
                            sub_100005F04(&v100[v265], v230, &qword_1005AE5C0, &unk_1004D06D0);
                            if ((v266)(v177, 1, v126) == 1)
                            {
                              sub_100002CE0(v177, &qword_1005AE5C0, &unk_1004D06D0);
                              v178 = 0;
                              v179 = 0;
                              v180 = 0;
                              *(&v267 + 1) = 0;
                              *&v268 = 0;
                            }

                            else
                            {
                              v181 = v259;
                              Fence.Schedule.end.getter();
                              (*(v263 + 8))(v177, v126);
                              v178 = Fence.TimeOfDay.minute.getter();
                              (*(v260 + 8))(v181, v261);
                              v180 = &protocol witness table for UInt;
                              v179 = &type metadata for UInt;
                            }

                            *&v267 = v178;
                            *(&v268 + 1) = v179;
                            v269 = v180;
                            CKRecordKeyValueSetting.subscript.setter();
LABEL_131:
                            sub_100005F04(v141 + v258, v173, &qword_1005AE5C0, &unk_1004D06D0);
                            v261 = v128;
                            if ((v266)(v173, 1, v126) == 1)
                            {
                              sub_100002CE0(v173, &qword_1005AE5C0, &unk_1004D06D0);
                              v182 = 1;
                              v183 = v251;
                              v184 = v245;
                              v185 = v253;
                            }

                            else
                            {
                              v185 = v253;
                              Fence.Schedule.daysOfWeek.getter();
                              (*(v263 + 8))(v173, v126);
                              v182 = 0;
                              v183 = v251;
                              v184 = v245;
                            }

                            v186 = *(v255 + 56);
                            v186(v185, v182, 1, v183);
                            v187 = v243;
                            sub_100005F04(&v100[v265], v243, &qword_1005AE5C0, &unk_1004D06D0);
                            if ((v266)(v187, 1, v126) == 1)
                            {
                              sub_100002CE0(v187, &qword_1005AE5C0, &unk_1004D06D0);
                              v188 = 1;
                            }

                            else
                            {
                              Fence.Schedule.daysOfWeek.getter();
                              (*(v263 + 8))(v187, v126);
                              v188 = 0;
                            }

                            v189 = v254;
                            v186(v174, v188, 1, v183);
                            v190 = *(v244 + 48);
                            sub_100005F04(v185, v189, &qword_1005AE718, &qword_1004CF058);
                            sub_100005F04(v174, v189 + v190, &qword_1005AE718, &qword_1004CF058);
                            v191 = v183;
                            v192 = *(v255 + 48);
                            if (v192(v189, 1, v183) == 1)
                            {
                              sub_100002CE0(v174, &qword_1005AE718, &qword_1004CF058);
                              v189 = v254;
                              sub_100002CE0(v185, &qword_1005AE718, &qword_1004CF058);
                              v193 = v192(v189 + v190, 1, v183);
                              v194 = v263;
                              if (v193 == 1)
                              {
                                sub_100002CE0(v189, &qword_1005AE718, &qword_1004CF058);
                                v195 = v264;
                                goto LABEL_147;
                              }
                            }

                            else
                            {
                              sub_100005F04(v189, v184, &qword_1005AE718, &qword_1004CF058);
                              v196 = v192(v189 + v190, 1, v183);
                              v194 = v263;
                              if (v196 != 1)
                              {
                                v213 = v255;
                                v214 = v231;
                                (*(v255 + 32))(v231, v189 + v190, v191);
                                sub_1001A5810(&qword_1005A8F28, &type metadata accessor for Fence.DaysOfWeek, &protocol conformance descriptor for Fence.DaysOfWeek);
                                LODWORD(v260) = dispatch thunk of static Equatable.== infix(_:_:)();
                                v215 = *(v213 + 8);
                                v215(v214, v191);
                                sub_100002CE0(v252, &qword_1005AE718, &qword_1004CF058);
                                sub_100002CE0(v253, &qword_1005AE718, &qword_1004CF058);
                                v215(v184, v191);
                                sub_100002CE0(v189, &qword_1005AE718, &qword_1004CF058);
                                v195 = v264;
                                if (v260)
                                {
                                  goto LABEL_147;
                                }

                                goto LABEL_143;
                              }

                              sub_100002CE0(v252, &qword_1005AE718, &qword_1004CF058);
                              sub_100002CE0(v253, &qword_1005AE718, &qword_1004CF058);
                              (*(v255 + 8))(v184, v183);
                            }

                            sub_100002CE0(v189, &qword_1005AE710, &qword_1004CF050);
                            v195 = v264;
LABEL_143:
                            v197 = v233;
                            sub_100005F04(&v262[v265], v233, &qword_1005AE5C0, &unk_1004D06D0);
                            if ((v266)(v197, 1, v126) == 1)
                            {
                              sub_100002CE0(v197, &qword_1005AE5C0, &unk_1004D06D0);
                              v198 = 0;
                              v199 = 0;
                              *&v268 = 0;
                              v267 = 0uLL;
                            }

                            else
                            {
                              v200 = v231;
                              Fence.Schedule.daysOfWeek.getter();
                              (*(v194 + 8))(v197, v126);
                              v201 = Fence.DaysOfWeek.rawValue.getter();
                              (*(v255 + 8))(v200, v251);
                              LOBYTE(v267) = v201;
                              v199 = &protocol witness table for UInt8;
                              v198 = &type metadata for UInt8;
                            }

                            *(&v268 + 1) = v198;
                            v269 = v199;
                            CKRecordKeyValueSetting.subscript.setter();
LABEL_147:
                            v202 = v246;
                            sub_100005F04(v195 + v258, v246, &qword_1005AE5C0, &unk_1004D06D0);
                            if ((v266)(v202, 1, v126) == 1)
                            {
                              sub_100002CE0(v202, &qword_1005AE5C0, &unk_1004D06D0);
                              v203 = 0;
                              v204 = 0;
                            }

                            else
                            {
                              v205 = v248;
                              Fence.Schedule.timeZone.getter();
                              (*(v194 + 8))(v202, v126);
                              v203 = TimeZone.identifier.getter();
                              v204 = v206;
                              (*(v249 + 8))(v205, v250);
                            }

                            v207 = v247;
                            v208 = v262;
                            sub_100005F04(&v262[v265], v247, &qword_1005AE5C0, &unk_1004D06D0);
                            if ((v266)(v207, 1, v126) == 1)
                            {
                              sub_100002CE0(v207, &qword_1005AE5C0, &unk_1004D06D0);
                              if (!v204)
                              {
                                goto LABEL_167;
                              }

                              goto LABEL_162;
                            }

                            v209 = v248;
                            Fence.Schedule.timeZone.getter();
                            (*(v194 + 8))(v207, v126);
                            v210 = TimeZone.identifier.getter();
                            v212 = v211;
                            (*(v249 + 8))(v209, v250);
                            if (v204)
                            {
                              if (v212)
                              {
                                if (v203 == v210 && v204 == v212)
                                {
                                  swift_unknownObjectRelease();

                                  return sub_1001A58C0(v208, type metadata accessor for FenceRecord);
                                }

                                v224 = _stringCompareWithSmolCheck(_:_:expecting:)();

                                if ((v224 & 1) == 0)
                                {
                                  goto LABEL_163;
                                }

LABEL_167:
                                swift_unknownObjectRelease();
                                return sub_1001A58C0(v208, type metadata accessor for FenceRecord);
                              }
                            }

                            else if (!v212)
                            {
                              goto LABEL_167;
                            }

LABEL_162:

LABEL_163:
                            v216 = v232;
                            sub_100005F04(v208 + v265, v232, &qword_1005AE5C0, &unk_1004D06D0);
                            if ((v266)(v216, 1, v126) == 1)
                            {
                              sub_100002CE0(v216, &qword_1005AE5C0, &unk_1004D06D0);
                              v217 = 0;
                              v218 = 0;
                              v219 = 0;
                              v220 = 0;
                              *&v268 = 0;
                            }

                            else
                            {
                              v221 = v248;
                              Fence.Schedule.timeZone.getter();
                              (*(v194 + 8))(v216, v126);
                              v217 = TimeZone.identifier.getter();
                              v218 = v222;
                              (*(v249 + 8))(v221, v250);
                              v220 = &protocol witness table for String;
                              v219 = &type metadata for String;
                            }

                            *&v267 = v217;
                            *(&v267 + 1) = v218;
                            *(&v268 + 1) = v219;
                            v269 = v220;
                            CKRecordKeyValueSetting.subscript.setter();
                            goto LABEL_167;
                          }
                        }

                        else
                        {
                          v123 = v264;
                          v124 = v265;
                          if (!v121)
                          {
                            goto LABEL_82;
                          }
                        }

                        *(&v268 + 1) = &type metadata for String;
                        v269 = &protocol witness table for String;
                        *&v267 = v122;
                        *(&v267 + 1) = v121;
LABEL_81:

                        CKRecordKeyValueSetting.subscript.setter();
                        goto LABEL_82;
                      }
                    }

                    else if (!v118)
                    {
                      goto LABEL_72;
                    }

                    *(&v268 + 1) = &type metadata for String;
                    v269 = &protocol witness table for String;
                    *&v267 = v119;
                    *(&v267 + 1) = v118;
LABEL_71:

                    CKRecordKeyValueSetting.subscript.setter();
                    goto LABEL_72;
                  }
                }

                else if (!v115)
                {
                  goto LABEL_62;
                }

                *(&v268 + 1) = &type metadata for String;
                v269 = &protocol witness table for String;
                *&v267 = v116;
                *(&v267 + 1) = v115;
LABEL_61:

                CKRecordKeyValueSetting.subscript.setter();
                goto LABEL_62;
              }
            }

            else if (!v112)
            {
              goto LABEL_52;
            }

            *(&v268 + 1) = &type metadata for String;
            v269 = &protocol witness table for String;
            *&v267 = v113;
            *(&v267 + 1) = v112;
LABEL_51:

            CKRecordKeyValueSetting.subscript.setter();
            goto LABEL_52;
          }
        }

        else if (!v109)
        {
          goto LABEL_42;
        }

        *(&v268 + 1) = &type metadata for String;
        v269 = &protocol witness table for String;
        *&v267 = v110;
        *(&v267 + 1) = v109;
LABEL_41:

        CKRecordKeyValueSetting.subscript.setter();
        goto LABEL_42;
      }
    }

    else if (!v102)
    {
      goto LABEL_32;
    }

    *(&v268 + 1) = &type metadata for String;
    v269 = &protocol witness table for String;
    *&v267 = v103;
    *(&v267 + 1) = v102;
LABEL_31:

    CKRecordKeyValueSetting.subscript.setter();
    goto LABEL_32;
  }

  v72(v63, 1, 1, v67);
  sub_100002CE0(v63, &qword_1005AE720, &qword_1004CA2F0);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

CKRecordZoneID sub_1001A2968()
{
  sub_1000545A4(0, &qword_1005AE728, CKRecordZoneID_ptr);
  v0._countAndFlagsBits = UUID.uuidString.getter();
  String.append(_:)(v0);

  v1._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v1._object = v2;
  v3._countAndFlagsBits = 0x2D65636E6546;
  v3._object = 0xE600000000000000;
  return CKRecordZoneID.init(zoneName:ownerName:)(v3, v1);
}

uint64_t sub_1001A2A08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_100003690;

  return CloudBacked.creationDate(store:)(a1, a2, a3, a4);
}

uint64_t sub_1001A2ACC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_10000368C;

  return CloudBacked.modificationDate(store:)(a1, a2, a3, a4);
}

uint64_t sub_1001A2B90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1001A2C40;

  return CloudBacked.recordChangeTag(store:)(a1, a2, a3);
}

uint64_t sub_1001A2C40(uint64_t a1, uint64_t a2)
{
  v10 = *v3;

  v8 = *(v10 + 8);
  if (!v2)
  {
    v6 = a1;
    v7 = a2;
  }

  return v8(v6, v7);
}

void sub_1001A2D68(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10004B564(&unk_1005AE5B0, &qword_1004C32F0);
  __chkstk_darwin(v4 - 8);
  v127 = &v113 - v5;
  v6 = sub_10004B564(&unk_1005AE5E0, &qword_1004CEF40);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v113 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v130 = &v113 - v10;
  v11 = type metadata accessor for Fence.DaysOfWeek();
  v128 = *(v11 - 8);
  v129 = v11;
  v12 = __chkstk_darwin(v11);
  v14 = &v113 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v131 = &v113 - v15;
  v16 = sub_10004B564(&qword_1005A96E0, &qword_1004C2A80);
  __chkstk_darwin(v16 - 8);
  v18 = &v113 - v17;
  v19 = type metadata accessor for UUID();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v132 = &v113 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (CKRecord.recordType.getter() == 0x65636E6546 && v22 == 0xE500000000000000)
  {
  }

  else
  {
    v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v23 & 1) == 0)
    {
      sub_1001A54BC();
      swift_allocError();
      *v51 = 0;
      goto LABEL_23;
    }
  }

  v125 = a2;
  v24 = [a1 recordID];
  v25 = [v24 recordName];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  UUID.init(uuidString:)();

  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    sub_100002CE0(v18, &qword_1005A96E0, &qword_1004C2A80);
    sub_1001A54BC();
    swift_allocError();
    *v26 = 1;
LABEL_23:
    swift_willThrow();

    return;
  }

  (*(v20 + 32))(v132, v18, v19);
  v27 = [a1 encryptedValues];
  swift_getObjectType();
  v28 = String._bridgeToObjectiveC()();
  v29 = [v27 objectForKeyedSubscript:v28];

  if (!v29 || (v135 = v29, v124 = sub_10004B564(&qword_1005AEC00, &qword_1004CEF48), (swift_dynamicCast() & 1) == 0))
  {
    sub_1001A54BC();
    swift_allocError();
    *v50 = 0;
    swift_willThrow();
    swift_unknownObjectRelease();

    (*(v20 + 8))(v132, v19);
    return;
  }

  v122 = v133;
  v123 = v20;
  v30 = v27;
  v31 = v134;
  v32 = String._bridgeToObjectiveC()();
  v33 = v30;
  v34 = [v30 objectForKeyedSubscript:v32];

  if (!v34)
  {

LABEL_26:
    sub_1001A54BC();
    swift_allocError();
    *v52 = 0;
    swift_willThrow();
    swift_unknownObjectRelease();

    (*(v123 + 8))(v132, v19);
    return;
  }

  v121 = v31;
  objc_opt_self();
  v35 = swift_dynamicCastObjCClass();
  if (!v35)
  {

    swift_unknownObjectRelease();
    goto LABEL_26;
  }

  v120 = v35;
  v36 = v33;
  v118 = sub_1001A464C(2, 0, v33);
  v119 = sub_1001A464C(10, 0, v33);
  v117 = sub_1001A464C(11, 0, v33);
  v116 = sub_1001A464C(12, 0, v33);
  v115 = sub_1001A464C(13, 0, v33);
  sub_1001A490C(14, 0, v33);
  Fence.DaysOfWeek.init(rawValue:)();
  v37 = String._bridgeToObjectiveC()();
  v38 = [v33 objectForKeyedSubscript:v37];

  if (!v38 || (v135 = v38, (swift_dynamicCast() & 1) == 0))
  {
LABEL_28:
    v53 = type metadata accessor for TimeZone();
    (*(*(v53 - 8) + 56))(v130, 1, 1, v53);
    sub_1001A5810(&unk_1005AE600, &type metadata accessor for Fence.DaysOfWeek, &protocol conformance descriptor for Fence.DaysOfWeek);
    v54 = v129;
    dispatch thunk of SetAlgebra.init()();
    sub_1001A5810(&qword_1005A8F28, &type metadata accessor for Fence.DaysOfWeek, &protocol conformance descriptor for Fence.DaysOfWeek);
    v55 = dispatch thunk of static Equatable.== infix(_:_:)();
    (*(v128 + 8))(v14, v54);
    v56 = v125;
    v43 = &selRef_initWithExtensionBundleIdentifier_kind_;
    if ((v55 & 1) == 0)
    {
      if (qword_1005A8090 != -1)
      {
        swift_once();
      }

      v57 = type metadata accessor for Logger();
      sub_10000A6F0(v57, qword_1005DFED0);
      swift_unknownObjectRetain();
      v58 = Logger.logObject.getter();
      v59 = static os_log_type_t.error.getter();
      swift_unknownObjectRelease();
      if (os_log_type_enabled(v58, v59))
      {
        v60 = swift_slowAlloc();
        v114 = swift_slowAlloc();
        v133 = v114;
        *v60 = 136446723;
        *(v60 + 4) = sub_10000D01C(0x526B632874696E69, 0xEF293A64726F6365, &v133);
        *(v60 + 12) = 2080;
        *(v60 + 14) = sub_10000D01C(0xD000000000000011, 0x80000001004E4480, &v133);
        *(v60 + 22) = 2081;
        v61 = String._bridgeToObjectiveC()();
        v62 = [v33 objectForKeyedSubscript:v61];

        v135 = v62;
        sub_10004B564(&unk_1005AE610, &qword_1004CEF50);
        v63 = String.init<A>(describing:)();
        v65 = sub_10000D01C(v63, v64, &v133);
        v56 = v125;

        *(v60 + 24) = v65;
        v43 = &selRef_initWithExtensionBundleIdentifier_kind_;
        _os_log_impl(&_mh_execute_header, v58, v59, "%{public}s unrecognized field %s: %{private}s", v60, 0x20u);
        swift_arrayDestroy();
      }
    }

    goto LABEL_34;
  }

  v39 = v134;
  v40 = HIBYTE(v134) & 0xF;
  if ((v134 & 0x2000000000000000) == 0)
  {
    v40 = v133 & 0xFFFFFFFFFFFFLL;
  }

  if (!v40)
  {

    goto LABEL_28;
  }

  v114 = v133;
  TimeZone.init(identifier:)();
  v41 = type metadata accessor for TimeZone();
  v42 = *(v41 - 8);
  if ((*(v42 + 48))(v9, 1, v41) == 1)
  {
    sub_100002CE0(v9, &unk_1005AE5E0, &qword_1004CEF40);
    (*(v42 + 56))(v130, 1, 1, v41);
    v43 = &selRef_initWithExtensionBundleIdentifier_kind_;
    if (qword_1005A8090 != -1)
    {
      swift_once();
    }

    v44 = type metadata accessor for Logger();
    sub_10000A6F0(v44, qword_1005DFED0);

    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v45, v46))
    {
      v47 = v39;
      v48 = swift_slowAlloc();
      v133 = swift_slowAlloc();
      *v48 = 136446466;
      *(v48 + 4) = sub_10000D01C(0x526B632874696E69, 0xEF293A64726F6365, &v133);
      *(v48 + 12) = 2082;
      v49 = sub_10000D01C(v114, v47, &v133);

      *(v48 + 14) = v49;
      _os_log_impl(&_mh_execute_header, v45, v46, "%{public}s unknown time zone: %{public}s", v48, 0x16u);
      swift_arrayDestroy();
      v43 = &selRef_initWithExtensionBundleIdentifier_kind_;
    }

    else
    {
    }

    v56 = v125;
  }

  else
  {

    v112 = v130;
    (*(v42 + 32))();
    (*(v42 + 56))(v112, 0, 1, v41);
    v56 = v125;
    v43 = &selRef_initWithExtensionBundleIdentifier_kind_;
  }

LABEL_34:
  (*(v123 + 16))(v56, v132, v19);
  v66 = type metadata accessor for FenceRecord(0);
  v67 = (v56 + v66[5]);
  v68 = v121;
  *v67 = v122;
  v67[1] = v68;
  *(v56 + v66[6]) = v120;
  *(v56 + v66[7]) = v118;
  v69 = __chkstk_darwin(v66);
  v70 = v116;
  v71 = v117;
  *(&v113 - 6) = v119;
  *(&v113 - 5) = v71;
  *(&v113 - 4) = v70;
  v72 = v131;
  *(&v113 - 3) = v115;
  *(&v113 - 2) = v72;
  v73 = v69;
  sub_10019F2D8(sub_1001A5510, (&v113 - 8), v74 + *(v69 + 32));
  v75 = String._bridgeToObjectiveC()();
  v76 = [v36 v43[86]];

  if (v76)
  {
    v133 = v76;
    v77 = type metadata accessor for Date();
    v78 = v127;
    v79 = swift_dynamicCast();
    (*(*(v77 - 8) + 56))(v78, v79 ^ 1u, 1, v77);
  }

  else
  {
    v80 = type metadata accessor for Date();
    v78 = v127;
    (*(*(v80 - 8) + 56))(v127, 1, 1, v80);
  }

  sub_1001A5538(v78, v125 + *(v73 + 36));
  v81 = String._bridgeToObjectiveC()();
  v82 = [v36 v43[86]];

  if (v82)
  {
    v135 = v82;
    v83 = swift_dynamicCast();
    if (v83)
    {
      v84 = v133;
    }

    else
    {
      v84 = 0;
    }

    if (v83)
    {
      v85 = v134;
    }

    else
    {
      v85 = 0;
    }

    v126 = v85;
    v127 = v84;
  }

  else
  {
    v126 = 0;
    v127 = 0;
  }

  v86 = String._bridgeToObjectiveC()();
  v87 = [v36 v43[86]];

  if (v87)
  {
    v135 = v87;
    v88 = swift_dynamicCast();
    if (v88)
    {
      v89 = v133;
    }

    else
    {
      v89 = 0;
    }

    if (v88)
    {
      v90 = v134;
    }

    else
    {
      v90 = 0;
    }

    v121 = v90;
    v122 = v89;
  }

  else
  {
    v121 = 0;
    v122 = 0;
  }

  v91 = String._bridgeToObjectiveC()();
  v92 = [v36 v43[86]];

  if (v92)
  {
    v135 = v92;
    v93 = swift_dynamicCast();
    if (v93)
    {
      v94 = v133;
    }

    else
    {
      v94 = 0;
    }

    if (v93)
    {
      v95 = v134;
    }

    else
    {
      v95 = 0;
    }

    v119 = v95;
    v120 = v94;
  }

  else
  {
    v119 = 0;
    v120 = 0;
  }

  v96 = String._bridgeToObjectiveC()();
  v97 = [v36 v43[86]];

  if (v97)
  {
    v135 = v97;
    v98 = swift_dynamicCast();
    if (v98)
    {
      v99 = v133;
    }

    else
    {
      v99 = 0;
    }

    if (v98)
    {
      v100 = v134;
    }

    else
    {
      v100 = 0;
    }

    v117 = v100;
    v118 = v99;
  }

  else
  {
    v117 = 0;
    v118 = 0;
  }

  v101 = String._bridgeToObjectiveC()();
  v102 = [v36 v43[86]];

  if (v102)
  {
    v135 = v102;
    v103 = swift_dynamicCast();
    if (v103)
    {
      v104 = v133;
    }

    else
    {
      v104 = 0;
    }

    if (v103)
    {
      v105 = v134;
    }

    else
    {
      v105 = 0;
    }
  }

  else
  {
    v104 = 0;
    v105 = 0;
  }

  v106 = String._bridgeToObjectiveC()();
  v107 = [v36 objectForKeyedSubscript:v106];
  swift_unknownObjectRelease();

  sub_100002CE0(v130, &unk_1005AE5E0, &qword_1004CEF40);
  (*(v123 + 8))(v132, v19);
  if (v107)
  {
    v135 = v107;
    v108 = swift_dynamicCast();
    v109 = v133;
    v110 = v134;
    if (!v108)
    {
      v109 = 0;
      v110 = 0;
    }
  }

  else
  {
    v109 = 0;
    v110 = 0;
  }

  v111 = (v125 + *(v73 + 40));
  *v111 = v127;
  v111[1] = v126;
  v111[2] = v122;
  v111[3] = v121;
  v111[4] = v120;
  v111[5] = v119;
  v111[6] = v118;
  v111[7] = v117;
  v111[8] = v104;
  v111[9] = v105;
  v111[10] = v109;
  v111[11] = v110;
  (*(v128 + 8))(v131, v129);
}

uint64_t sub_1001A3F58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100054E60;

  return CloudBacked.ckRecord(store:)(a1, a2, a3);
}

uint64_t sub_1001A4010@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for UUID();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_1001A4078@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v23 = a4;
  v20 = a6;
  v21 = a1;
  v24 = a5;
  v22 = a7;
  v19 = type metadata accessor for TimeZone();
  v9 = *(v19 - 8);
  __chkstk_darwin(v19);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Fence.DaysOfWeek();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Fence.TimeOfDay();
  v17 = __chkstk_darwin(v16 - 8);
  result = __chkstk_darwin(v17);
  if ((a3 | a2) < 0)
  {
    __break(1u);
  }

  else
  {
    Fence.TimeOfDay.init(hour:minute:)();
    result = v23;
    if (((v24 | v23) & 0x8000000000000000) == 0)
    {
      Fence.TimeOfDay.init(hour:minute:)();
      (*(v13 + 16))(v15, v20, v12);
      (*(v9 + 16))(v11, v21, v19);
      return Fence.Schedule.init(start:end:daysOfWeek:timeZone:)();
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1001A42B8()
{
  v1 = v0;
  v2 = sub_10004B564(&qword_1005AE5C0, &unk_1004D06D0);
  __chkstk_darwin(v2 - 8);
  v4 = v33 - v3;
  *&v33[0] = 0;
  *(&v33[0] + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(89);
  v34 = v33[0];
  v5._countAndFlagsBits = 540697705;
  v5._object = 0xE400000000000000;
  String.append(_:)(v5);
  v6._countAndFlagsBits = UUID.uuidString.getter();
  String.append(_:)(v6);

  v7._countAndFlagsBits = 0x203A6C6562616C0ALL;
  v7._object = 0xE800000000000000;
  String.append(_:)(v7);
  v8 = type metadata accessor for FenceRecord(0);
  String.append(_:)(*(v0 + v8[5]));
  v9._object = 0xEB00000000203A6ELL;
  v9._countAndFlagsBits = 0x6F697461636F6C0ALL;
  String.append(_:)(v9);
  v10 = [*(v0 + v8[6]) debugDescription];
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  v14._countAndFlagsBits = v11;
  v14._object = v13;
  String.append(_:)(v14);

  v15._object = 0xEF203A657079546ELL;
  v15._countAndFlagsBits = 0x6F697461636F6C0ALL;
  String.append(_:)(v15);
  *&v33[0] = *(v1 + v8[7]);
  v16._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v16);

  v17._countAndFlagsBits = 0x6C7564656863730ALL;
  v17._object = 0xEB00000000203A65;
  String.append(_:)(v17);
  sub_100005F04(v1 + v8[8], v4, &qword_1005AE5C0, &unk_1004D06D0);
  v18 = type metadata accessor for Fence.Schedule();
  v19 = *(v18 - 8);
  if ((*(v19 + 48))(v4, 1, v18) == 1)
  {
    sub_100002CE0(v4, &qword_1005AE5C0, &unk_1004D06D0);
    v20 = 0xE300000000000000;
    v21 = 7104878;
  }

  else
  {
    v22 = Fence.Schedule.description.getter();
    v20 = v23;
    (*(v19 + 8))(v4, v18);
    v21 = v22;
  }

  v24 = v20;
  String.append(_:)(*&v21);

  v25._countAndFlagsBits = 0x646E456574756D0ALL;
  v25._object = 0xEE00203A65746144;
  String.append(_:)(v25);
  sub_10004B564(&unk_1005AE5B0, &qword_1004C32F0);
  v26._countAndFlagsBits = Optional.debugDescription.getter();
  String.append(_:)(v26);

  v27._countAndFlagsBits = 0x616D6563616C700ALL;
  v27._object = 0xEC000000203A6B72;
  String.append(_:)(v27);
  v28 = (v1 + v8[10]);
  v29 = v28[3];
  v33[2] = v28[2];
  v33[3] = v29;
  v30 = v28[5];
  v33[4] = v28[4];
  v33[5] = v30;
  v31 = v28[1];
  v33[0] = *v28;
  v33[1] = v31;
  _print_unlocked<A, B>(_:_:)();
  return v34;
}

uint64_t sub_1001A464C(char a1, uint64_t a2, void *a3)
{
  sub_1001A02B8(a1);
  v6 = String._bridgeToObjectiveC()();

  v7 = [a3 objectForKeyedSubscript:v6];

  v23 = v7;
  swift_unknownObjectRetain();
  sub_10004B564(&unk_1005AE610, &qword_1004CEF50);
  if (swift_dynamicCast())
  {
    swift_unknownObjectRelease();
    return v22[0];
  }

  else if (v7)
  {
    if (qword_1005A8090 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_10000A6F0(v8, qword_1005DFED0);
    swift_unknownObjectRetain();
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v9, v10))
    {
      v21 = v10;
      v11 = swift_slowAlloc();
      v22[0] = swift_slowAlloc();
      *v11 = 136446723;
      *(v11 + 4) = sub_10000D01C(0xD000000000000029, 0x80000001004E4560, v22);
      *(v11 + 12) = 2082;
      v12 = sub_1001A02B8(a1);
      v14 = sub_10000D01C(v12, v13, v22);

      *(v11 + 14) = v14;
      *(v11 + 22) = 2081;
      sub_1001A02B8(a1);
      v15 = String._bridgeToObjectiveC()();

      v16 = [a3 objectForKeyedSubscript:v15];

      v23 = v16;
      v17 = String.init<A>(describing:)();
      v19 = sub_10000D01C(v17, v18, v22);

      *(v11 + 24) = v19;
      _os_log_impl(&_mh_execute_header, v9, v21, "%{public}s unrecognized field %{public}s: %{private}s", v11, 0x20u);
      swift_arrayDestroy();
    }

    swift_unknownObjectRelease();
  }

  return a2;
}

uint64_t sub_1001A490C(char a1, uint64_t a2, void *a3)
{
  sub_1001A02B8(a1);
  v6 = String._bridgeToObjectiveC()();

  v7 = [a3 objectForKeyedSubscript:v6];

  v22 = v7;
  swift_unknownObjectRetain();
  sub_10004B564(&unk_1005AE610, &qword_1004CEF50);
  if (swift_dynamicCast())
  {
    swift_unknownObjectRelease();
    return v21;
  }

  else if (v7)
  {
    if (qword_1005A8090 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_10000A6F0(v8, qword_1005DFED0);
    swift_unknownObjectRetain();
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v9, v10))
    {
      v20 = v10;
      v11 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *v11 = 136446723;
      *(v11 + 4) = sub_10000D01C(0xD000000000000029, 0x80000001004E4560, &v22);
      *(v11 + 12) = 2082;
      v12 = sub_1001A02B8(a1);
      v14 = sub_10000D01C(v12, v13, &v22);

      *(v11 + 14) = v14;
      *(v11 + 22) = 2081;
      sub_1001A02B8(a1);
      v15 = String._bridgeToObjectiveC()();

      [a3 objectForKeyedSubscript:v15];

      v16 = String.init<A>(describing:)();
      v18 = sub_10000D01C(v16, v17, &v22);

      *(v11 + 24) = v18;
      _os_log_impl(&_mh_execute_header, v9, v20, "%{public}s unrecognized field %{public}s: %{private}s", v11, 0x20u);
      swift_arrayDestroy();
    }

    swift_unknownObjectRelease();
  }

  return a2;
}

uint64_t sub_1001A4BD0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v83[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_10004B564(&unk_1005AE5B0, &qword_1004C32F0);
  __chkstk_darwin(v8 - 8);
  v10 = &v83[-v9];
  v93 = sub_10004B564(&qword_1005AAE00, &qword_1004C4A18);
  __chkstk_darwin(v93);
  v12 = &v83[-v11];
  v96 = type metadata accessor for Fence.Schedule();
  v95 = *(v96 - 8);
  __chkstk_darwin(v96);
  v92 = &v83[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = sub_10004B564(&qword_1005AE5C0, &unk_1004D06D0);
  __chkstk_darwin(v14 - 8);
  v16 = &v83[-v15];
  v17 = sub_10004B564(&qword_1005AE5C8, &qword_1004CEF38);
  __chkstk_darwin(v17);
  v19 = &v83[-v18];
  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_25;
  }

  v94 = type metadata accessor for FenceRecord(0);
  v20 = v94[5];
  v21 = *(a1 + v20);
  v22 = *(a1 + v20 + 8);
  v23 = (a2 + v20);
  if ((v21 != *v23 || v22 != v23[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_25;
  }

  v88 = v10;
  v89 = v12;
  v85 = v7;
  v87 = v5;
  v86 = v4;
  v24 = v94;
  v25 = v94[6];
  v90 = a1;
  v26 = *(a1 + v25);
  [v26 coordinate];
  *&v91 = v27;
  [v26 coordinate];
  v29 = v28;
  [v26 altitude];
  v31 = v30;
  [v26 horizontalAccuracy];
  v33 = v32;
  [v26 verticalAccuracy];
  v35 = v34;
  v36 = *(a2 + v24[6]);
  [v36 coordinate];
  v38 = v37;
  [v36 coordinate];
  v40 = v39;
  [v36 altitude];
  v42 = v41;
  [v36 horizontalAccuracy];
  v44 = v43;
  [v36 verticalAccuracy];
  v46 = 0;
  if (*&v91 == v38 && v29 == v40 && v31 == v42 && v33 == v44 && v35 == v45)
  {
    v47 = v94;
    v48 = v90;
    if (*(v90 + v94[7]) == *(a2 + v94[7]))
    {
      v49 = v94[8];
      v50 = *(v17 + 48);
      sub_100005F04(v90 + v49, v19, &qword_1005AE5C0, &unk_1004D06D0);
      sub_100005F04(a2 + v49, &v19[v50], &qword_1005AE5C0, &unk_1004D06D0);
      v51 = v95;
      v52 = *(v95 + 48);
      v53 = v96;
      if (v52(v19, 1, v96) == 1)
      {
        v54 = v52(&v19[v50], 1, v53);
        v55 = v89;
        v56 = v88;
        if (v54 == 1)
        {
          sub_100002CE0(v19, &qword_1005AE5C0, &unk_1004D06D0);
LABEL_18:
          v65 = v47[9];
          v66 = *(v93 + 48);
          sub_100005F04(v48 + v65, v55, &unk_1005AE5B0, &qword_1004C32F0);
          sub_100005F04(a2 + v65, v55 + v66, &unk_1005AE5B0, &qword_1004C32F0);
          v67 = *(v87 + 48);
          v68 = v86;
          if (v67(v55, 1, v86) == 1)
          {
            if (v67(v55 + v66, 1, v68) == 1)
            {
              sub_100002CE0(v55, &unk_1005AE5B0, &qword_1004C32F0);
LABEL_28:
              v75 = (v48 + v47[10]);
              v76 = v75[3];
              v97[2] = v75[2];
              v97[3] = v76;
              v77 = v75[5];
              v97[4] = v75[4];
              v97[5] = v77;
              v78 = v75[1];
              v97[0] = *v75;
              v97[1] = v78;
              v79 = (a2 + v47[10]);
              v80 = v79[1];
              v98[0] = *v79;
              v98[1] = v80;
              v81 = v79[5];
              v98[4] = v79[4];
              v98[5] = v81;
              v82 = v79[3];
              v98[2] = v79[2];
              v98[3] = v82;
              v46 = sub_1001A6020(v97, v98);
              return v46 & 1;
            }
          }

          else
          {
            sub_100005F04(v55, v56, &unk_1005AE5B0, &qword_1004C32F0);
            if (v67(v55 + v66, 1, v68) != 1)
            {
              v70 = v87;
              v71 = v55 + v66;
              v72 = v85;
              (*(v87 + 32))(v85, v71, v68);
              sub_1001A5810(&qword_1005AE5D0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
              v73 = dispatch thunk of static Equatable.== infix(_:_:)();
              v74 = *(v70 + 8);
              v74(v72, v68);
              v74(v56, v68);
              sub_100002CE0(v55, &unk_1005AE5B0, &qword_1004C32F0);
              if (v73)
              {
                goto LABEL_28;
              }

              goto LABEL_25;
            }

            (*(v87 + 8))(v56, v68);
          }

          v58 = &qword_1005AAE00;
          v59 = &qword_1004C4A18;
          v60 = v55;
          goto LABEL_24;
        }

LABEL_16:
        v58 = &qword_1005AE5C8;
        v59 = &qword_1004CEF38;
        v60 = v19;
LABEL_24:
        sub_100002CE0(v60, v58, v59);
        goto LABEL_25;
      }

      v91 = a2;
      sub_100005F04(v19, v16, &qword_1005AE5C0, &unk_1004D06D0);
      v57 = v52(&v19[v50], 1, v53);
      v55 = v89;
      if (v57 == 1)
      {
        (*(v51 + 8))(v16, v53);
        goto LABEL_16;
      }

      v61 = v92;
      (*(v51 + 32))(v92, &v19[v50], v53);
      sub_1001A5810(&qword_1005AE5D8, &type metadata accessor for Fence.Schedule, &protocol conformance descriptor for Fence.Schedule);
      v62 = v51;
      v63 = v53;
      v84 = dispatch thunk of static Equatable.== infix(_:_:)();
      v64 = *(v62 + 8);
      v64(v61, v63);
      v64(v16, v63);
      v56 = v88;
      sub_100002CE0(v19, &qword_1005AE5C0, &unk_1004D06D0);
      a2 = v91;
      if (v84)
      {
        goto LABEL_18;
      }
    }

LABEL_25:
    v46 = 0;
  }

  return v46 & 1;
}

unint64_t sub_1001A54BC()
{
  result = qword_1005AE5F0;
  if (!qword_1005AE5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AE5F0);
  }

  return result;
}

uint64_t sub_1001A5538(uint64_t a1, uint64_t a2)
{
  v4 = sub_10004B564(&unk_1005AE5B0, &qword_1004C32F0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1001A55D0(uint64_t a1)
{
  type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    sub_1000545A4(319, &unk_1005ABB70, CLLocation_ptr);
    if (v2 <= 0x3F)
    {
      sub_1001A56E4(319, &qword_1005AE6A8, &type metadata accessor for Fence.Schedule);
      if (v3 <= 0x3F)
      {
        sub_1001A56E4(319, &qword_1005AE6B0, &type metadata accessor for Date);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1001A56E4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1001A5810(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1001A5858(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1001A58C0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

double sub_1001A5924@<D0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v17 = v1[1];
  v18 = v3;
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[5];
  v14 = v1[4];
  v15 = v5;
  v16 = v4;
  v12 = v4;
  v13 = v6;
  v11 = v17;
  sub_10017FD08(&v18, v10);
  sub_10017FD08(&v17, v10);
  sub_10017FD08(&v16, v10);
  sub_10017FD08(&v15, v10);
  sub_10017FD08(&v14, v10);
  sub_10017FD08(&v13, v10);
  v7 = v12;
  *a1 = v11;
  *(a1 + 16) = v7;
  *(a1 + 72) = *v1;
  v8 = v1[4];
  *(a1 + 152) = v1[3];
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 168) = v8;
  *(a1 + 184) = v1[5];
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  return result;
}

uint64_t sub_1001A59FC(void *a1)
{
  v3 = sub_10004B564(&qword_1005AE748, &qword_1004CF178);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_100011AEC(a1, a1[3]);
  sub_1001A6A14();
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
  v8[12] = 3;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v8[11] = 4;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v8[10] = 5;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  return (*(v4 + 8))(v6, v3);
}

void sub_1001A5BFC(uint64_t a1)
{
  if (v1[1])
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
    if (v1[3])
    {
      goto LABEL_3;
    }
  }

  else
  {
    Hasher._combine(_:)(0);
    if (v1[3])
    {
LABEL_3:
      Hasher._combine(_:)(1u);
      String.hash(into:)();
      if (v1[5])
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  Hasher._combine(_:)(0);
  if (v1[5])
  {
LABEL_4:
    Hasher._combine(_:)(1u);
    String.hash(into:)();
    if (v1[7])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  Hasher._combine(_:)(0);
  if (v1[7])
  {
LABEL_5:
    Hasher._combine(_:)(1u);
    String.hash(into:)();
    if (v1[9])
    {
      goto LABEL_6;
    }

LABEL_14:
    Hasher._combine(_:)(0);
    if (v1[11])
    {
      goto LABEL_7;
    }

LABEL_15:
    Hasher._combine(_:)(0);
    return;
  }

LABEL_13:
  Hasher._combine(_:)(0);
  if (!v1[9])
  {
    goto LABEL_14;
  }

LABEL_6:
  Hasher._combine(_:)(1u);
  String.hash(into:)();
  if (!v1[11])
  {
    goto LABEL_15;
  }

LABEL_7:
  Hasher._combine(_:)(1u);

  String.hash(into:)();
}

uint64_t sub_1001A5D74()
{
  v1 = *v0;
  v2 = 0x7974696C61636F6CLL;
  v3 = 0x6574617473;
  v4 = 0x6441746565727473;
  if (v1 != 4)
  {
    v4 = 0x614E746565727473;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000012;
  if (v1 != 1)
  {
    v5 = 0x7972746E756F63;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1001A5E40@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1001A6368(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1001A5E68(uint64_t a1)
{
  v2 = sub_1001A6A14();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001A5EA4(uint64_t a1)
{
  v2 = sub_1001A6A14();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_1001A5EE0()
{
  Hasher.init(_seed:)();
  sub_1001A5BFC(v1);
  return Hasher._finalize()();
}

Swift::Int sub_1001A5F24()
{
  Hasher.init(_seed:)();
  sub_1001A5BFC(v1);
  return Hasher._finalize()();
}

double sub_1001A5F60@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_1001A6578(a2, v8);
  if (!v2)
  {
    v5 = v8[3];
    a1[2] = v8[2];
    a1[3] = v5;
    v6 = v8[5];
    a1[4] = v8[4];
    a1[5] = v6;
    result = *v8;
    v7 = v8[1];
    *a1 = v8[0];
    a1[1] = v7;
  }

  return result;
}

uint64_t sub_1001A5FC4(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[3];
  v9[2] = a1[2];
  v9[3] = v2;
  v3 = a1[5];
  v9[4] = a1[4];
  v9[5] = v3;
  v4 = a1[1];
  v9[0] = *a1;
  v9[1] = v4;
  v5 = a2[3];
  v10[2] = a2[2];
  v10[3] = v5;
  v6 = a2[5];
  v10[4] = a2[4];
  v10[5] = v6;
  v7 = a2[1];
  v10[0] = *a2;
  v10[1] = v7;
  return sub_1001A6020(v9, v10) & 1;
}

uint64_t sub_1001A6020(void *a1, void *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if (v2)
  {
    if (!v3)
    {
      return 0;
    }

    if (*a1 != *a2 || v2 != v3)
    {
      v5 = a1;
      v6 = a2;
      v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
      a2 = v6;
      v8 = v7;
      a1 = v5;
      if ((v8 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v3)
  {
    return 0;
  }

  v9 = a1[3];
  v10 = a2[3];
  if (v9)
  {
    if (!v10)
    {
      return 0;
    }

    if (a1[2] != a2[2] || v9 != v10)
    {
      v11 = a1;
      v12 = a2;
      v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
      a2 = v12;
      v14 = v13;
      a1 = v11;
      if ((v14 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v10)
  {
    return 0;
  }

  v15 = a1[5];
  v16 = a2[5];
  if (v15)
  {
    if (!v16)
    {
      return 0;
    }

    if (a1[4] != a2[4] || v15 != v16)
    {
      v17 = a1;
      v18 = a2;
      v19 = _stringCompareWithSmolCheck(_:_:expecting:)();
      a2 = v18;
      v20 = v19;
      a1 = v17;
      if ((v20 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v16)
  {
    return 0;
  }

  v21 = a1[7];
  v22 = a2[7];
  if (v21)
  {
    if (!v22)
    {
      return 0;
    }

    if (a1[6] != a2[6] || v21 != v22)
    {
      v23 = a1;
      v24 = a2;
      v25 = _stringCompareWithSmolCheck(_:_:expecting:)();
      a2 = v24;
      v26 = v25;
      a1 = v23;
      if ((v26 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v22)
  {
    return 0;
  }

  v27 = a1[9];
  v28 = a2[9];
  if (v27)
  {
    if (!v28)
    {
      return 0;
    }

    if (a1[8] != a2[8] || v27 != v28)
    {
      v29 = a1;
      v30 = a2;
      v31 = _stringCompareWithSmolCheck(_:_:expecting:)();
      a2 = v30;
      v32 = v31;
      a1 = v29;
      if ((v32 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v28)
  {
    return 0;
  }

  v33 = a1[11];
  v34 = a2[11];
  if (v33)
  {
    if (v34 && (a1[10] == a2[10] && v33 == v34 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
    {
      return 1;
    }
  }

  else if (!v34)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_1001A6238(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 96))
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

uint64_t sub_1001A6294(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 96) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 96) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_1001A6314()
{
  result = qword_1005AE730;
  if (!qword_1005AE730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AE730);
  }

  return result;
}

uint64_t sub_1001A6368(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7974696C61636F6CLL && a2 == 0xE800000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001004E2A10 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7972746E756F63 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6574617473 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6441746565727473 && a2 == 0xED00007373657264 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x614E746565727473 && a2 == 0xEA0000000000656DLL)
  {

    return 5;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

void sub_1001A6578(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_10004B564(&qword_1005AE738, &qword_1004CF170);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v27 - v7;
  sub_100011AEC(a1, a1[3]);
  sub_1001A6A14();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    sub_100004984(a1);
  }

  else
  {
    LOBYTE(v42[0]) = 0;
    v9 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v11 = v10;
    LOBYTE(v42[0]) = 1;
    v33 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v35 = v12;
    LOBYTE(v42[0]) = 2;
    v13 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v34 = v14;
    v30 = v13;
    LOBYTE(v42[0]) = 3;
    v29 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v32 = v15;
    LOBYTE(v42[0]) = 4;
    v28 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v31 = v16;
    v43 = 5;
    v17 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v18 = *(v6 + 8);
    v19 = v17;
    v27 = v20;
    v18(v8, v5);
    *&v36 = v9;
    *(&v36 + 1) = v11;
    *&v37 = v33;
    *(&v37 + 1) = v35;
    *&v38 = v30;
    *(&v38 + 1) = v34;
    *&v39 = v29;
    v21 = v32;
    *(&v39 + 1) = v32;
    *&v40 = v28;
    v22 = v31;
    *(&v40 + 1) = v31;
    *&v41 = v19;
    v23 = v27;
    *(&v41 + 1) = v27;
    sub_1001A6A68(&v36, v42);
    sub_100004984(a1);
    v42[0] = v9;
    v42[1] = v11;
    v42[2] = v33;
    v42[3] = v35;
    v42[4] = v30;
    v42[5] = v34;
    v42[6] = v29;
    v42[7] = v21;
    v42[8] = v28;
    v42[9] = v22;
    v42[10] = v19;
    v42[11] = v23;
    sub_1001A6AA0(v42);
    v24 = v39;
    a2[2] = v38;
    a2[3] = v24;
    v25 = v41;
    a2[4] = v40;
    a2[5] = v25;
    v26 = v37;
    *a2 = v36;
    a2[1] = v26;
  }
}

unint64_t sub_1001A6A14()
{
  result = qword_1005AE740;
  if (!qword_1005AE740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AE740);
  }

  return result;
}

unint64_t sub_1001A6AE4()
{
  result = qword_1005AE750;
  if (!qword_1005AE750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AE750);
  }

  return result;
}

unint64_t sub_1001A6B3C()
{
  result = qword_1005AE758;
  if (!qword_1005AE758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AE758);
  }

  return result;
}

unint64_t sub_1001A6B94()
{
  result = qword_1005AE760;
  if (!qword_1005AE760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AE760);
  }

  return result;
}

uint64_t sub_1001A6BE8()
{
  _StringGuts.grow(_:)(45);

  type metadata accessor for Fence.ID();
  sub_1001A7118(&qword_1005AE800, &type metadata accessor for Fence.ID, &protocol conformance descriptor for Fence.ID);
  v0._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v0);

  v1._countAndFlagsBits = 0x726567676972740ALL;
  v1._object = 0xEC000000203A4449;
  String.append(_:)(v1);
  type metadata accessor for FenceTriggerRecord(0);
  type metadata accessor for Fence.TriggerID();
  sub_1001A7118(&qword_1005AE808, &type metadata accessor for Fence.TriggerID, &protocol conformance descriptor for Fence.TriggerID);
  v2._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v2);

  v3._object = 0x80000001004E46B0;
  v3._countAndFlagsBits = 0xD000000000000012;
  String.append(_:)(v3);
  type metadata accessor for Fence.TriggerPosition();
  sub_1001A7118(&qword_1005AE810, &type metadata accessor for Fence.TriggerPosition, &protocol conformance descriptor for Fence.TriggerPosition);
  v4._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v4);

  return 0x3A444965636E6566;
}

void sub_1001A6DD8(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for Fence.TriggerPosition();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (&v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for FenceTriggerRecord(0);
  (*(v4 + 16))(v6, v1 + *(v7 + 24), v3);
  v8 = (*(v4 + 88))(v6, v3);
  if (v8 == enum case for Fence.TriggerPosition.inside(_:) || v8 == enum case for Fence.TriggerPosition.outside(_:))
  {
    (*(v4 + 96))(v6, v3);
    v10 = *v6;
    v11 = [*v6 timestamp];

    static Date._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else if (v8 == enum case for Fence.TriggerPosition.undetermined(_:))
  {
    (*(v4 + 96))(v6, v3);
    v12 = type metadata accessor for Date();
    (*(*(v12 - 8) + 32))(a1, v6, v12);
  }

  else
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }
}

uint64_t type metadata accessor for FenceTriggerRecord(uint64_t a1)
{
  result = qword_1005AE7C0;
  if (!qword_1005AE7C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1001A7078(uint64_t a1)
{
  result = type metadata accessor for Fence.ID();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Fence.TriggerID();
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for Fence.TriggerPosition();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1001A7118(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t FriendInfoOption.type.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for HandleType();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t FriendInfoOption.origin.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FriendInfoOption(0) + 20);
  v4 = type metadata accessor for ClientOrigin();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

double FriendInfoOption.expiresByGroupId.getter()
{
  type metadata accessor for FriendInfoOption(0);

  return result;
}

uint64_t FriendInfoOption.serverID.getter()
{
  v1 = *(v0 + *(type metadata accessor for FriendInfoOption(0) + 36));

  return v1;
}

uint64_t FriendInfoOption.favoriteOrder.getter()
{
  v1 = *(v0 + *(type metadata accessor for FriendInfoOption(0) + 40));

  return v1;
}

uint64_t FriendInfoOption.hash(into:)(uint64_t a1)
{
  type metadata accessor for HandleType();
  sub_10001C918(&qword_1005AE818, &type metadata accessor for HandleType, &protocol conformance descriptor for HandleType);

  return dispatch thunk of Hashable.hash(into:)();
}

uint64_t sub_1001A750C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1001ADBD8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1001A7534(uint64_t a1)
{
  v2 = sub_10001D604();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001A7570(uint64_t a1)
{
  v2 = sub_10001D604();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t FriendInfoOption.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_10004B564(&qword_1005AE820, &qword_1004CF2E0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11[-v7];
  sub_100011AEC(a1, a1[3]);
  sub_10001D604();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v12) = 0;
  type metadata accessor for HandleType();
  sub_10001C918(&qword_1005AE830, &type metadata accessor for HandleType, &protocol conformance descriptor for HandleType);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v9 = type metadata accessor for FriendInfoOption(0);
    LOBYTE(v12) = 1;
    type metadata accessor for ClientOrigin();
    sub_10001C918(&qword_1005AE838, &type metadata accessor for ClientOrigin, &protocol conformance descriptor for ClientOrigin);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v12 = *(v3 + *(v9 + 24));
    v11[15] = 2;
    sub_10004B564(&qword_1005AE840, &qword_1004CF2E8);
    sub_1001A7A6C();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v12) = 3;
    type metadata accessor for Date();
    sub_10001C918(&qword_1005A9848, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v12) = 4;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v12) = 5;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v12) = 6;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v12) = 7;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v12) = 8;
    type metadata accessor for Handle();
    sub_10001C918(&qword_1005AE858, &type metadata accessor for Handle, &protocol conformance descriptor for Handle);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v12) = 9;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v12) = 10;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v12) = 11;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v12) = 12;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_1001A7A6C()
{
  result = qword_1005AE848;
  if (!qword_1005AE848)
  {
    sub_10004B610(&qword_1005AE840, &qword_1004CF2E8);
    sub_10001C918(&qword_1005AE850, &type metadata accessor for GroupID, &protocol conformance descriptor for GroupID);
    sub_10001C918(&qword_1005A9848, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AE848);
  }

  return result;
}

Swift::Int FriendInfoOption.hashValue.getter()
{
  Hasher.init(_seed:)();
  type metadata accessor for HandleType();
  sub_10001C918(&qword_1005AE818, &type metadata accessor for HandleType, &protocol conformance descriptor for HandleType);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_1001A7BF8()
{
  Hasher.init(_seed:)();
  type metadata accessor for HandleType();
  sub_10001C918(&qword_1005AE818, &type metadata accessor for HandleType, &protocol conformance descriptor for HandleType);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

void sub_1001A7CC4(uint64_t a1)
{
  type metadata accessor for HandleType();
  if (v1 <= 0x3F)
  {
    type metadata accessor for ClientOrigin();
    if (v2 <= 0x3F)
    {
      sub_1001A7E28(319);
      if (v3 <= 0x3F)
      {
        sub_1001AE238(319, &qword_1005AE6B0, &type metadata accessor for Date);
        if (v4 <= 0x3F)
        {
          sub_10008B2BC(319, &qword_1005A9790, &type metadata for String);
          if (v5 <= 0x3F)
          {
            sub_10008B2BC(319, &qword_1005AC700, &type metadata for Bool);
            if (v6 <= 0x3F)
            {
              sub_1001AE238(319, &qword_1005AE910, &type metadata accessor for Handle);
              if (v7 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_1001A7E28(uint64_t a1)
{
  if (!qword_1005AE900)
  {
    type metadata accessor for GroupID();
    type metadata accessor for Date();
    sub_10001C918(&qword_1005AE908, &type metadata accessor for GroupID, &protocol conformance descriptor for GroupID);
    v1 = type metadata accessor for Dictionary();
    if (!v2)
    {
      atomic_store(v1, &qword_1005AE900);
    }
  }
}

unint64_t sub_1001A7EE8()
{
  result = qword_1005AE970;
  if (!qword_1005AE970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AE970);
  }

  return result;
}

unint64_t sub_1001A7F40()
{
  result = qword_1005AE978;
  if (!qword_1005AE978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AE978);
  }

  return result;
}

unint64_t sub_1001A7F98()
{
  result = qword_1005AE980;
  if (!qword_1005AE980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AE980);
  }

  return result;
}

void sub_1001A809C(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_1001ADBA0(a1);

  *a2 = v3;
}

uint64_t sub_1001A80DC@<X0>(uint64_t a1@<X0>, Swift::String *a2@<X8>)
{
  v4 = type metadata accessor for HandleType();
  v217 = *(v4 - 8);
  v218 = v4;
  v5 = __chkstk_darwin(v4);
  v215 = &v194 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v216 = &v194 - v7;
  v8 = type metadata accessor for FriendInfoOption(0);
  v9 = *(v8 - 8);
  v213 = v8;
  v214 = v9;
  __chkstk_darwin(v8);
  v220 = &v194 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10004B564(&qword_1005AE998, &unk_1004D6030);
  __chkstk_darwin(v11 - 8);
  v200 = &v194 - v12;
  v13 = sub_10004B564(&qword_1005B3360, &unk_1004C6AA0);
  v14 = __chkstk_darwin(v13 - 8);
  v212 = &v194 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v210 = &v194 - v17;
  v18 = __chkstk_darwin(v16);
  v208 = &v194 - v19;
  v20 = __chkstk_darwin(v18);
  v207 = &v194 - v21;
  v22 = __chkstk_darwin(v20);
  v206 = &v194 - v23;
  v24 = __chkstk_darwin(v22);
  v205 = &v194 - v25;
  v26 = __chkstk_darwin(v24);
  v204 = &v194 - v27;
  v28 = __chkstk_darwin(v26);
  v203 = &v194 - v29;
  v30 = __chkstk_darwin(v28);
  v202 = &v194 - v31;
  v32 = __chkstk_darwin(v30);
  v201 = &v194 - v33;
  v34 = __chkstk_darwin(v32);
  v199 = &v194 - v35;
  v36 = __chkstk_darwin(v34);
  v198 = &v194 - v37;
  v38 = __chkstk_darwin(v36);
  v197 = &v194 - v39;
  __chkstk_darwin(v38);
  v196 = &v194 - v40;
  v41 = type metadata accessor for Handle();
  v195 = *(v41 - 8);
  v42 = v195;
  v43 = __chkstk_darwin(v41);
  v211 = &v194 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = __chkstk_darwin(v43);
  v209 = &v194 - v46;
  __chkstk_darwin(v45);
  v48 = &v194 - v47;
  v49 = type metadata accessor for FriendRecord(0);
  v223 = (a2 + v49[16]);
  v50 = *(v42 + 56);
  v219 = v49[36];
  v50(a2 + v219, 1, 1, v41);
  Friend.handle.getter();
  Handle.identifier.getter();
  v51 = *(v42 + 8);
  v51(v48, v41);
  v52 = String.lowercased()();

  *a2 = v52;
  Friend.handle.getter();
  v53 = Handle.qualifiedIdentifier.getter();
  v55 = v54;
  v51(v48, v41);
  a2[1]._countAndFlagsBits = v53;
  a2[1]._object = v55;
  Friend.handle.getter();
  Handle.idsStatus.getter();
  v51(v48, v41);
  Friend.handle.getter();
  v56 = Handle.dsid.getter();
  v58 = v57;
  v51(v48, v41);
  v59 = (&a2->_countAndFlagsBits + v49[7]);
  *v59 = v56;
  v59[1] = v58;
  Friend.handle.getter();
  Handle.trackingTimestamp.getter();
  v61 = v60;
  v51(v48, v41);
  *(&a2->_countAndFlagsBits + v49[8]) = v61;
  Friend.handle.getter();
  v62 = Handle.hashedDSID.getter();
  v64 = v63;
  v51(v48, v41);
  v65 = (&a2->_countAndFlagsBits + v49[9]);
  *v65 = v62;
  v65[1] = v64;
  Friend.handle.getter();
  v66 = Handle.favoriteOrder.getter();
  v68 = v67;
  v51(v48, v41);
  v69 = (&a2->_countAndFlagsBits + v49[10]);
  *v69 = v66;
  v69[1] = v68;
  Friend.handle.getter();
  LOBYTE(v66) = Handle.reachable.getter();
  v51(v48, v41);
  *(&a2->_countAndFlagsBits + v49[11]) = v66;
  Friend.handle.getter();
  v70 = Handle.pushIdentifiers.getter();
  v51(v48, v41);
  *(&a2->_countAndFlagsBits + v49[12]) = v70;
  Friend.handle.getter();
  v71 = Handle.prettyName.getter();
  v73 = v72;
  v51(v48, v41);
  v74 = (&a2->_countAndFlagsBits + v49[13]);
  *v74 = v71;
  v74[1] = v73;
  Friend.handle.getter();
  v75 = Handle.contactIdentifier.getter();
  v77 = v76;
  v51(v48, v41);
  v78 = (&a2->_countAndFlagsBits + v49[14]);
  *v78 = v75;
  v78[1] = v77;
  Friend.handle.getter();
  v79 = Handle.serverID.getter();
  v81 = v80;
  v51(v48, v41);
  v82 = v223;
  *v223 = v79;
  *(v82 + 1) = v81;
  Friend.handle.getter();
  v83 = Handle.siblingIdentifiers.getter();
  v51(v48, v41);
  v224 = v83;
  sub_10004B564(&qword_1005A9630, &qword_1004C5680);
  sub_10001DF0C(&qword_1005ABF48, &qword_1005A9630, &qword_1004C5680, &protocol conformance descriptor for [A]);
  v84 = BidirectionalCollection<>.joined(separator:)();
  v86 = v85;

  v223 = v49;
  v87 = v49[15];
  v221 = a2;
  v88 = (&a2->_countAndFlagsBits + v87);
  v89 = v196;
  *v88 = v84;
  v88[1] = v86;
  Friend.ownerHandle.getter();
  v90 = *(v195 + 48);
  v91 = v90(v89, 1, v41);
  v222 = v42 + 8;
  if (v91 == 1)
  {
    sub_100002CE0(v89, &qword_1005B3360, &unk_1004C6AA0);
    v92 = 0;
    v93 = 0;
  }

  else
  {
    v92 = Handle.identifier.getter();
    v93 = v94;
    v51(v89, v41);
  }

  v95 = (&v221->_countAndFlagsBits + v223[17]);
  *v95 = v92;
  v95[1] = v93;
  v96 = v197;
  Friend.ownerHandle.getter();
  if (v90(v96, 1, v41) == 1)
  {
    sub_100002CE0(v96, &qword_1005B3360, &unk_1004C6AA0);
    v97 = 0;
    v98 = 0;
  }

  else
  {
    v97 = Handle.qualifiedIdentifier.getter();
    v98 = v99;
    v51(v96, v41);
  }

  v100 = v200;
  v101 = (&v221->_countAndFlagsBits + v223[18]);
  *v101 = v97;
  v101[1] = v98;
  v102 = v198;
  Friend.ownerHandle.getter();
  if (v90(v102, 1, v41) == 1)
  {
    sub_100002CE0(v102, &qword_1005B3360, &unk_1004C6AA0);
    v103 = type metadata accessor for IDSStatus();
    (*(*(v103 - 8) + 56))(v100, 1, 1, v103);
    v104 = v51;
  }

  else
  {
    Handle.idsStatus.getter();
    v105 = v102;
    v104 = v51;
    v51(v105, v41);
  }

  v106 = v203;
  v107 = v221;
  sub_1000176A8(v100, v221 + v223[19], &qword_1005AE998, &unk_1004D6030);
  v108 = v199;
  Friend.ownerHandle.getter();
  if (v90(v108, 1, v41) == 1)
  {
    sub_100002CE0(v108, &qword_1005B3360, &unk_1004C6AA0);
    v109 = 0;
    v110 = 0;
  }

  else
  {
    v109 = Handle.dsid.getter();
    v111 = v108;
    v110 = v112;
    v104(v111, v41);
  }

  v113 = (&v107->_countAndFlagsBits + v223[20]);
  *v113 = v109;
  v113[1] = v110;
  v114 = v201;
  Friend.ownerHandle.getter();
  v115 = v114;
  v116 = v90(v114, 1, v41);
  if (v116 == 1)
  {
    sub_100002CE0(v115, &qword_1005B3360, &unk_1004C6AA0);
    v117 = 0;
  }

  else
  {
    Handle.trackingTimestamp.getter();
    v117 = v118;
    v104(v115, v41);
  }

  v119 = v107 + v223[22];
  *v119 = v117;
  v119[8] = v116 == 1;
  v120 = v202;
  Friend.ownerHandle.getter();
  if (v90(v120, 1, v41) == 1)
  {
    sub_100002CE0(v120, &qword_1005B3360, &unk_1004C6AA0);
    v121 = 0;
    v122 = 0;
  }

  else
  {
    v121 = Handle.hashedDSID.getter();
    v123 = v120;
    v122 = v124;
    v104(v123, v41);
  }

  v125 = (&v107->_countAndFlagsBits + v223[23]);
  *v125 = v121;
  v125[1] = v122;
  Friend.ownerHandle.getter();
  if (v90(v106, 1, v41) == 1)
  {
    sub_100002CE0(v106, &qword_1005B3360, &unk_1004C6AA0);
    v126 = 0;
    v127 = 0;
    v128 = v104;
  }

  else
  {
    v126 = Handle.favoriteOrder.getter();
    v127 = v129;
    v130 = v106;
    v128 = v104;
    v104(v130, v41);
  }

  v131 = (&v107->_countAndFlagsBits + v223[24]);
  *v131 = v126;
  v131[1] = v127;
  v132 = v204;
  Friend.ownerHandle.getter();
  if (v90(v132, 1, v41) == 1)
  {
    sub_100002CE0(v132, &qword_1005B3360, &unk_1004C6AA0);
    v133 = 2;
  }

  else
  {
    v133 = Handle.reachable.getter();
    v128(v132, v41);
  }

  v134 = v206;
  *(&v107->_countAndFlagsBits + v223[25]) = v133;
  v135 = v205;
  Friend.ownerHandle.getter();
  if (v90(v135, 1, v41) == 1)
  {
    sub_100002CE0(v135, &qword_1005B3360, &unk_1004C6AA0);
    v136 = 0;
    v137 = v104;
  }

  else
  {
    v136 = Handle.pushIdentifiers.getter();
    v138 = v135;
    v137 = v104;
    v104(v138, v41);
  }

  *(&v107->_countAndFlagsBits + v223[26]) = v136;
  Friend.ownerHandle.getter();
  v139 = v90(v134, 1, v41);
  v140 = v208;
  if (v139 == 1)
  {
    sub_100002CE0(v134, &qword_1005B3360, &unk_1004C6AA0);
    v141 = 0;
    v142 = 0;
  }

  else
  {
    v141 = Handle.prettyName.getter();
    v143 = v134;
    v142 = v144;
    v137(v143, v41);
  }

  v145 = (&v107->_countAndFlagsBits + v223[27]);
  *v145 = v141;
  v145[1] = v142;
  v146 = v207;
  Friend.ownerHandle.getter();
  if (v90(v146, 1, v41) == 1)
  {
    sub_100002CE0(v146, &qword_1005B3360, &unk_1004C6AA0);
    v147 = 0;
    v148 = 0;
  }

  else
  {
    v147 = Handle.contactIdentifier.getter();
    v149 = v146;
    v148 = v150;
    v137(v149, v41);
  }

  v151 = (&v107->_countAndFlagsBits + v223[28]);
  *v151 = v147;
  v151[1] = v148;
  Friend.ownerHandle.getter();
  if (v90(v140, 1, v41) == 1)
  {
    sub_100002CE0(v140, &qword_1005B3360, &unk_1004C6AA0);
    v152 = 0;
    v153 = 0;
  }

  else
  {
    v152 = Handle.serverID.getter();
    v153 = v154;
    v137(v140, v41);
  }

  v155 = (&v107->_countAndFlagsBits + v223[29]);
  *v155 = v152;
  v155[1] = v153;
  v156 = v210;
  Friend.ownerHandle.getter();
  v157 = v90(v156, 1, v41);
  v158 = a1;
  if (v157 == 1)
  {
    sub_100002CE0(v156, &qword_1005B3360, &unk_1004C6AA0);
    v159 = 0;
  }

  else
  {
    v159 = Handle.expiresByGroupId.getter();
    v137(v156, v41);
  }

  v160 = v223;
  *(&v107->_countAndFlagsBits + v223[21]) = v159;
  v161 = v212;
  Friend.ownerHandle.getter();
  sub_1000228E0(v161, v107 + v219);
  *(&v107->_countAndFlagsBits + v160[30]) = Friend.secureLocationsCapable.getter() & 1;
  *(&v107->_countAndFlagsBits + v160[31]) = Friend.shallowOrLiveSecureLocationsCapable.getter() & 1;
  *(&v107->_countAndFlagsBits + v160[32]) = Friend.fallbackToLegacyAllowed.getter() & 1;
  v162 = Friend.fallbackToLegacy.getter();
  v163 = v160[33];
  v164 = v158;
  *(&v107->_countAndFlagsBits + v163) = v162 & 1;
  v165 = v220;
  Friend.type.getter();
  v166 = v213;
  Friend.friendshipOrigin.getter();
  Friend.handle.getter();
  v212 = Handle.expiresByGroupId.getter();
  v137(v48, v41);
  Friend.createdAt.getter();
  Friend.expiry.getter();
  v167 = v209;
  Friend.handle.getter();
  v210 = Handle.serverID.getter();
  v208 = v168;
  v137(v167, v41);
  v169 = v211;
  Friend.handle.getter();
  v170 = Handle.favoriteOrder.getter();
  v171 = v137;
  v173 = v172;
  v171(v169, v41);
  v174 = Friend.optedNotToShare.getter();
  sub_100005F04(v221 + v219, v165 + v166[12], &qword_1005B3360, &unk_1004C6AA0);
  LOBYTE(v161) = Friend.shallowOrLiveSecureLocationsCapable.getter() & 1;
  LOBYTE(v169) = Friend.secureLocationsCapable.getter() & 1;
  v175 = Friend.fallbackToLegacy.getter() & 1;
  v176 = Friend.fallbackToLegacyAllowed.getter();
  *(v165 + v166[6]) = v212;
  v177 = (v165 + v166[9]);
  v178 = v208;
  *v177 = v210;
  v177[1] = v178;
  v179 = (v165 + v166[10]);
  *v179 = v170;
  v179[1] = v173;
  *(v165 + v166[11]) = v174;
  *(v165 + v166[13]) = v161;
  *(v165 + v166[14]) = v169;
  *(v165 + v166[15]) = v175;
  v180 = v166[16];
  v181 = v221;
  *(v165 + v180) = v176 & 1;
  sub_10004B564(&qword_1005AE9A0, &qword_1004CF4F8);
  v182 = (*(v214 + 80) + 32) & ~*(v214 + 80);
  v183 = swift_allocObject();
  *(v183 + 16) = xmmword_1004C1900;
  v184 = v223;
  sub_1000181EC(v165, v183 + v182, type metadata accessor for FriendInfoOption);
  v185 = sub_100017710(v183);
  swift_setDeallocating();
  sub_100006E08(v183 + v182, type metadata accessor for FriendInfoOption);
  swift_deallocClassInstance();
  *(&v181->_countAndFlagsBits + v184[34]) = v185;
  v186 = v216;
  Friend.type.getter();
  v188 = v217;
  v187 = v218;
  v189 = v215;
  (*(v217 + 16))(v215, v186, v218);
  v190 = (*(v188 + 88))(v189, v187);
  if (v190 == enum case for HandleType.follower(_:))
  {
    v191 = 2;
LABEL_50:
    v192 = type metadata accessor for Friend();
    (*(*(v192 - 8) + 8))(v164, v192);
    (*(v188 + 8))(v186, v187);
    result = sub_100006E08(v220, type metadata accessor for FriendInfoOption);
    *(&v181->_countAndFlagsBits + v184[35]) = v191;
    return result;
  }

  if (v190 == enum case for HandleType.following(_:))
  {
    v191 = 4;
    goto LABEL_50;
  }

  if (v190 == enum case for HandleType.futureFollower(_:))
  {
    v191 = 8;
    goto LABEL_50;
  }

  if (v190 == enum case for HandleType.futureFollowing(_:))
  {
    v191 = 16;
    goto LABEL_50;
  }

  if (v190 == enum case for HandleType.pendingOffer(_:))
  {
    v191 = 32;
    goto LABEL_50;
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_1001A952C(uint64_t a1, uint64_t a2)
{
  v110 = a2;
  v3 = sub_10004B564(&qword_1005B3360, &unk_1004C6AA0);
  v4 = __chkstk_darwin(v3 - 8);
  v90 = &v89 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v104 = &v89 - v6;
  v7 = type metadata accessor for HandleType();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v100 = &v89 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v97 = &v89 - v12;
  __chkstk_darwin(v11);
  v96 = &v89 - v13;
  v14 = sub_10004B564(&qword_1005AE988, &qword_1004CF4E8);
  __chkstk_darwin(v14 - 8);
  v89 = &v89 - v15;
  v16 = type metadata accessor for Handle();
  v17 = *(v16 - 8);
  v18 = __chkstk_darwin(v16);
  v20 = &v89 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v18);
  v23 = &v89 - v22;
  __chkstk_darwin(v21);
  v25 = &v89 - v24;
  v26 = type metadata accessor for FriendInfoOption(0);
  v27 = (v26 - 8);
  v28 = __chkstk_darwin(v26);
  v99 = &v89 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __chkstk_darwin(v28);
  v98 = &v89 - v31;
  __chkstk_darwin(v30);
  v33 = &v89 - v32;
  v108 = v8;
  v109 = v7;
  v34 = *(v8 + 16);
  v95 = v8 + 16;
  v94 = v34;
  v34(&v89 - v32, v110, v7);
  Friend.friendshipOrigin.getter();
  Friend.handle.getter();
  v111 = Handle.expiresByGroupId.getter();
  v102 = v25;
  v103 = v17;
  v36 = v17 + 8;
  v35 = *(v17 + 8);
  v35(v25, v16);
  Friend.createdAt.getter();
  Friend.expiry.getter();
  Friend.handle.getter();
  v93 = Handle.serverID.getter();
  v92 = v37;
  v35(v23, v16);
  Friend.handle.getter();
  v38 = Handle.favoriteOrder.getter();
  v91 = v39;
  v105 = v35;
  v106 = v16;
  v101 = v36;
  v35(v20, v16);
  LOBYTE(v20) = Friend.optedNotToShare.getter();
  Friend.ownerHandle.getter();
  LOBYTE(v36) = Friend.shallowOrLiveSecureLocationsCapable.getter() & 1;
  LOBYTE(v16) = Friend.secureLocationsCapable.getter() & 1;
  LOBYTE(v25) = Friend.fallbackToLegacy.getter() & 1;
  v40 = Friend.fallbackToLegacyAllowed.getter();
  *&v33[v27[8]] = v111;
  v41 = &v33[v27[11]];
  v42 = v92;
  *v41 = v93;
  v41[1] = v42;
  v43 = &v33[v27[12]];
  v44 = v91;
  *v43 = v38;
  v43[1] = v44;
  v33[v27[13]] = v20;
  v33[v27[15]] = v36;
  v45 = v107;
  v33[v27[16]] = v16;
  v33[v27[17]] = v25;
  v33[v27[18]] = v40 & 1;
  v111 = type metadata accessor for FriendRecord(0);
  v46 = v111[34];
  if (sub_10021B3FC(v33, *(v45 + v46)))
  {
    v47 = v89;
    sub_1001AC5BC(v89);
    sub_100002CE0(v47, &qword_1005AE988, &qword_1004CF4E8);
  }

  v93 = v46;
  v48 = v96;
  Friend.type.getter();
  v49 = v108;
  v50 = *(v108 + 104);
  v51 = v97;
  LODWORD(v92) = enum case for HandleType.following(_:);
  v52 = v109;
  v50(v97);
  v53 = static HandleType.== infix(_:_:)();
  v54 = *(v49 + 8);
  v54(v51, v52);
  v54(v48, v52);
  if (v53)
  {
    v55 = enum case for HandleType.follower(_:);
    v56 = v102;
    v57 = v111;
    v58 = v107;
  }

  else
  {
    Friend.type.getter();
    v59 = enum case for HandleType.follower(_:);
    (v50)(v51, enum case for HandleType.follower(_:), v52);
    v60 = static HandleType.== infix(_:_:)();
    v54(v51, v52);
    v61 = v48;
    v55 = v59;
    v54(v61, v52);
    v56 = v102;
    v57 = v111;
    v58 = v107;
    if ((v60 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  Friend.handle.getter();
  v62 = Handle.serverID.getter();
  v64 = v63;
  v105(v56, v106);
  v65 = (v58 + v57[16]);

  *v65 = v62;
  v65[1] = v64;
LABEL_7:
  v66 = v57[35];
  v67 = *(v58 + v66);
  v68 = v100;
  v69 = v109;
  v94(v100, v110, v109);
  v70 = (*(v108 + 88))(v68, v69);
  if (v70 == v55)
  {
    v71 = 2;
  }

  else if (v70 == v92)
  {
    v71 = 4;
  }

  else if (v70 == enum case for HandleType.futureFollower(_:))
  {
    v71 = 8;
  }

  else if (v70 == enum case for HandleType.futureFollowing(_:))
  {
    v71 = 16;
  }

  else
  {
    if (v70 != enum case for HandleType.pendingOffer(_:))
    {
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return result;
    }

    v71 = 32;
  }

  *(v58 + v66) = v71 | v67;
  v72 = v99;
  sub_1000181EC(v33, v99, type metadata accessor for FriendInfoOption);
  v73 = v98;
  sub_100017F98(v98, v72);
  sub_100006E08(v73, type metadata accessor for FriendInfoOption);
  v74 = v58;
  v75 = (v58 + v111[15]);
  v76 = v75[1];
  v114 = *v75;
  v115 = v76;
  v112 = 44;
  v113 = 0xE100000000000000;
  sub_1000246F4();
  v77 = StringProtocol.components<A>(separatedBy:)();
  v78 = sub_10023F00C(v77);

  Friend.handle.getter();
  v79 = Handle.siblingIdentifiers.getter();
  v110 = a1;
  v80 = v106;
  v105(v56, v106);
  v81 = sub_10023FAC8(v79, v78);

  v114 = v81;
  sub_10004B564(&qword_1005ADCB0, &qword_1004CF4F0);
  sub_10001DF0C(&qword_1005AE990, &qword_1005ADCB0, &qword_1004CF4F0, &protocol conformance descriptor for Set<A>);
  v82 = Sequence<>.joined(separator:)();
  v84 = v83;

  *v75 = v82;
  v75[1] = v84;
  v85 = v111[36];
  v86 = v104;
  sub_100005F04(v74 + v85, v104, &qword_1005B3360, &unk_1004C6AA0);
  if ((*(v103 + 48))(v86, 1, v80) == 1)
  {
    sub_100002CE0(v86, &qword_1005B3360, &unk_1004C6AA0);
    v87 = v90;
    Friend.ownerHandle.getter();
    sub_100006E08(v33, type metadata accessor for FriendInfoOption);
    return sub_1000228E0(v87, v74 + v85);
  }

  else
  {
    sub_100006E08(v33, type metadata accessor for FriendInfoOption);
    return sub_100002CE0(v86, &qword_1005B3360, &unk_1004C6AA0);
  }
}

BOOL sub_1001A9F30(uint64_t a1)
{
  v1 = type metadata accessor for HandleType();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  Friend.type.getter();
  sub_10001C918(&qword_1005AE9A8, &type metadata accessor for HandleType, &protocol conformance descriptor for HandleType);
  v5 = dispatch thunk of static Equatable.== infix(_:_:)();
  (*(v2 + 8))(v4, v1);
  return (v5 & 1) == 0;
}

unint64_t sub_1001AA060(char a1)
{
  result = 0x6449656C646E6168;
  switch(a1)
  {
    case 1:
      v3 = 9;
      goto LABEL_20;
    case 2:
      return result;
    case 3:
      return 0x7344656C646E6168;
    case 4:
    case 10:
    case 28:
      return 0xD000000000000017;
    case 5:
      return 0xD000000000000010;
    case 6:
      return 0xD000000000000013;
    case 7:
      return 0x6552656C646E6168;
    case 8:
    case 13:
    case 19:
    case 23:
      v3 = 5;
      goto LABEL_20;
    case 9:
      return 0xD000000000000010;
    case 11:
    case 20:
      return 0xD000000000000018;
    case 12:
    case 26:
      return 0xD000000000000016;
    case 14:
      return 0xD00000000000001ELL;
    case 15:
    case 21:
      return 0xD000000000000014;
    case 16:
    case 32:
      return 0x6E614872656E776FLL;
    case 17:
    case 25:
      v3 = 11;
      goto LABEL_20;
    case 18:
    case 24:
      return 0xD00000000000001CLL;
    case 22:
      v3 = 10;
LABEL_20:
      result = v3 | 0xD000000000000010;
      break;
    case 27:
      result = 0xD000000000000023;
      break;
    case 29:
      result = 0xD000000000000010;
      break;
    case 30:
      result = 0x6E49646E65697266;
      break;
    case 31:
      result = 0x7365707974;
      break;
    default:
      result = 0xD000000000000010;
      break;
  }

  return result;
}

uint64_t sub_1001AA38C(void *a1)
{
  v3 = v1;
  v5 = sub_10004B564(&qword_1005AEB60, &qword_1004CF778);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v12 - v7;
  sub_100011AEC(a1, a1[3]);
  sub_1001AE4E4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v14) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    LOBYTE(v14) = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v9 = type metadata accessor for FriendRecord(0);
    LOBYTE(v14) = 2;
    type metadata accessor for IDSStatus();
    sub_10001C918(&qword_1005ACB90, &type metadata accessor for IDSStatus, &protocol conformance descriptor for IDSStatus);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v14) = 3;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v14) = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v14) = 5;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v14) = 6;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v14) = 7;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v14 = *(v3 + v9[12]);
    v13 = 8;
    v10 = sub_10004B564(&qword_1005A9630, &qword_1004C5680);
    v12[1] = sub_10001CCC4(&qword_1005A9EA8, &protocol witness table for String, &protocol conformance descriptor for <A> [A]);
    v12[2] = v10;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v14) = 9;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v14) = 10;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v14) = 11;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v14) = 12;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v14) = 13;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v14) = 14;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v14) = 15;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v14) = 16;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v14 = *(v3 + v9[21]);
    v13 = 17;
    sub_10004B564(&qword_1005AE840, &qword_1004CF2E8);
    sub_1001A7A6C();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v14) = 18;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v14) = 19;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v14) = 20;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v14) = 21;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v14 = *(v3 + v9[26]);
    v13 = 22;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v14) = 23;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v14) = 24;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v14) = 25;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v14) = 26;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v14) = 27;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v14) = 28;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v14) = 29;
    KeyedEncodingContainer.encode(_:forKey:)();
    v14 = *(v3 + v9[34]);
    v13 = 30;
    sub_10004B564(&qword_1005AEB40, &qword_1004CF770);
    sub_1001AE58C(&qword_1005AEB68, &qword_1005AEB70, &protocol conformance descriptor for FriendInfoOption, &protocol conformance descriptor for <> Set<A>);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v14 = *(v3 + v9[35]);
    v13 = 31;
    sub_1001AE628();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v14) = 32;
    type metadata accessor for Handle();
    sub_10001C918(&qword_1005AE858, &type metadata accessor for Handle, &protocol conformance descriptor for Handle);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1001AAC30@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v120 = a2;
  v3 = sub_10004B564(&qword_1005B3360, &unk_1004C6AA0);
  __chkstk_darwin(v3 - 8);
  v119 = &v111 - v4;
  v5 = sub_10004B564(&qword_1005AE998, &unk_1004D6030);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v111 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v111 - v9;
  v11 = sub_10004B564(&qword_1005AEB30, &qword_1004CF768);
  v121 = *(v11 - 8);
  v122 = v11;
  __chkstk_darwin(v11);
  v13 = &v111 - v12;
  v14 = type metadata accessor for FriendRecord(0);
  v15 = __chkstk_darwin(v14);
  v17 = (&v111 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = *(v15 + 144);
  v19 = type metadata accessor for Handle();
  v20 = *(*(v19 - 8) + 56);
  v126 = v17;
  v124 = v18;
  v20(v17 + v18, 1, 1, v19);
  v21 = a1[3];
  v123 = a1;
  sub_100011AEC(a1, v21);
  sub_1001AE4E4();
  v22 = v13;
  v23 = v125;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v23)
  {
    v125 = v23;
    sub_100004984(v123);
    v26 = v126;
    v27 = v124;
LABEL_4:

    return sub_100002CE0(v26 + v27, &qword_1005B3360, &unk_1004C6AA0);
  }

  v117 = v19;
  v118 = v14;
  LOBYTE(v128) = 0;
  v24 = v122;
  v25 = KeyedDecodingContainer.decode(_:forKey:)();
  v29 = v126;
  *v126 = v25;
  v29[1] = v30;
  LOBYTE(v128) = 1;
  v29[2] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v29[3] = v31;
  type metadata accessor for IDSStatus();
  LOBYTE(v128) = 2;
  v32 = sub_10001C918(&qword_1005ACB78, &type metadata accessor for IDSStatus, &protocol conformance descriptor for IDSStatus);
  v111 = 0;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v125 = 0;
  v115 = v32;
  v33 = v118;
  sub_1000176A8(v10, v29 + v118[6], &qword_1005AE998, &unk_1004D6030);
  LOBYTE(v128) = 3;
  v34 = v125;
  v35 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  if (v34)
  {
    v125 = v34;
    (*(v121 + 8))(v22, v24);
    v37 = 0;
    v38 = 0;
    v39 = 0;
    v40 = 0;
    v41 = 0;
    v112 = 0;
    v113 = 0;
    *v114 = 0;
    LODWORD(v115) = 0;
    LODWORD(v117) = 0;
    LODWORD(v119) = 0;
    LODWORD(v120) = 0;
    LODWORD(v121) = 0;
    LODWORD(v122) = 0;
    v116 = 0;
    goto LABEL_9;
  }

  v42 = (v29 + v33[7]);
  *v42 = v35;
  v42[1] = v36;
  LOBYTE(v128) = 4;
  KeyedDecodingContainer.decode(_:forKey:)();
  v43 = v121;
  *(v29 + v33[8]) = v44;
  LOBYTE(v128) = 5;
  v45 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v54 = (v29 + v33[9]);
  *v54 = v45;
  v54[1] = v55;
  LOBYTE(v128) = 6;
  v56 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v57 = (v29 + v33[10]);
  *v57 = v56;
  v57[1] = v58;
  LOBYTE(v128) = 7;
  v59 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v125 = 0;
  *(v126 + v118[11]) = v59;
  sub_10004B564(&qword_1005A9630, &qword_1004C5680);
  v127 = 8;
  sub_10001CCC4(&qword_1005A9E80, &protocol witness table for String, &protocol conformance descriptor for <A> [A]);
  v60 = v125;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v125 = v60;
  if (v60)
  {
    (*(v43 + 8))(v22, v24);
    v40 = 0;
    v41 = 0;
    v112 = 0;
    v113 = 0;
    *v114 = 0;
    LODWORD(v115) = 0;
    LODWORD(v117) = 0;
    LODWORD(v119) = 0;
    LODWORD(v120) = 0;
    LODWORD(v121) = 0;
    LODWORD(v122) = 0;
    v116 = 0;
    v37 = 1;
    v38 = 1;
    v39 = 1;
    goto LABEL_9;
  }

  *(v126 + v118[12]) = v128;
  LOBYTE(v128) = 9;
  *&v114[4] = v22;
  v61 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v125 = 0;
  v62 = (v126 + v118[13]);
  *v62 = v61;
  v62[1] = v63;
  LOBYTE(v128) = 10;
  v64 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v125 = 0;
  v65 = (v126 + v118[14]);
  *v65 = v64;
  v65[1] = v66;
  LOBYTE(v128) = 11;
  v67 = KeyedDecodingContainer.decode(_:forKey:)();
  v125 = 0;
  v68 = (v126 + v118[15]);
  *v68 = v67;
  v68[1] = v69;
  LOBYTE(v128) = 12;
  v70 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v116 = v71;
  v125 = 0;
  v72 = (v126 + v118[16]);
  *v72 = v70;
  v72[1] = v71;
  LOBYTE(v128) = 13;
  v73 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v125 = 0;
  v74 = (v126 + v118[17]);
  *v74 = v73;
  v74[1] = v75;
  LOBYTE(v128) = 14;
  v76 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v125 = 0;
  v77 = (v126 + v118[18]);
  *v77 = v76;
  v77[1] = v78;
  LOBYTE(v128) = 15;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v125 = 0;
  sub_1000176A8(v8, v126 + v118[19], &qword_1005AE998, &unk_1004D6030);
  LOBYTE(v128) = 16;
  v79 = v125;
  v80 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v125 = v79;
  if (v79)
  {
    (*(v121 + 8))(*&v114[4], v122);
    LODWORD(v115) = 0;
    LODWORD(v117) = 0;
    LODWORD(v119) = 0;
    LODWORD(v120) = 0;
    LODWORD(v121) = 0;
    LODWORD(v122) = 0;
    v37 = 1;
    v38 = 1;
    v39 = 1;
    v40 = 1;
    v41 = 1;
    v112 = 0x100000001;
    v113 = 0x100000001;
    *v114 = 1;
    goto LABEL_9;
  }

  v82 = (v126 + v118[20]);
  *v82 = v80;
  v82[1] = v81;
  sub_10004B564(&qword_1005AE840, &qword_1004CF2E8);
  v127 = 17;
  sub_10001C960();
  v83 = v125;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v125 = v83;
  if (v83)
  {
    (*(v121 + 8))(*&v114[4], v122);
    LODWORD(v115) = 0;
    LODWORD(v117) = 0;
    LODWORD(v119) = 0;
    LODWORD(v120) = 0;
    LODWORD(v121) = 0;
    LODWORD(v122) = 0;
    v37 = 1;
    v38 = 1;
    v39 = 1;
    v40 = 1;
    v41 = 1;
    v112 = 0x100000001;
    v113 = 0x100000001;
    *v114 = 1;
    *&v114[4] = 1;
LABEL_9:
    v46 = v111;
    sub_100004984(v123);

    if (!v46)
    {
    }

    v26 = v126;
    sub_100002CE0(v126 + v118[6], &qword_1005AE998, &unk_1004D6030);
    if (v37)
    {

      if (v38)
      {
LABEL_13:
        v47 = v118;

        if ((v39 & 1) == 0)
        {
          goto LABEL_14;
        }

        goto LABEL_33;
      }
    }

    else if (v38)
    {
      goto LABEL_13;
    }

    v47 = v118;
    if (!v39)
    {
LABEL_14:
      if (v40)
      {
        goto LABEL_15;
      }

      goto LABEL_34;
    }

LABEL_33:

    if (v40)
    {
LABEL_15:

      v48 = 0;
      if ((v41 & 1) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_35;
    }

LABEL_34:
    v48 = 0;
    if (!v41)
    {
LABEL_16:
      v49 = v119;
      if (v112)
      {
        goto LABEL_17;
      }

      goto LABEL_36;
    }

LABEL_35:

    v49 = v119;
    if (v112)
    {
LABEL_17:

      v50 = v120;
      if ((v112 & 0x100000000) == 0)
      {
        goto LABEL_18;
      }

LABEL_37:
      v51 = 0;
      v27 = v124;
      v52 = v122;
      v53 = v121;
      goto LABEL_38;
    }

LABEL_36:
    v50 = v120;
    if (!HIDWORD(v112))
    {
LABEL_18:

      v51 = 0;
      v27 = v124;
      v52 = v122;
      v53 = v121;
      if (!v113)
      {
        goto LABEL_19;
      }

      goto LABEL_39;
    }

    goto LABEL_37;
  }

  *(v126 + v118[21]) = v128;
  LOBYTE(v128) = 18;
  v84 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v125 = 0;
  v85 = v126 + v118[22];
  *v85 = v84;
  v85[8] = v86 & 1;
  LOBYTE(v128) = 19;
  v87 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v125 = 0;
  v88 = (v126 + v118[23]);
  *v88 = v87;
  v88[1] = v89;
  LOBYTE(v128) = 20;
  v90 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v125 = 0;
  v91 = (v126 + v118[24]);
  *v91 = v90;
  v91[1] = v92;
  LOBYTE(v128) = 21;
  v93 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v125 = 0;
  *(v126 + v118[25]) = v93;
  v127 = 22;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v125 = 0;
  *(v126 + v118[26]) = v128;
  LOBYTE(v128) = 23;
  v94 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v125 = 0;
  v95 = (v126 + v118[27]);
  *v95 = v94;
  v95[1] = v96;
  LOBYTE(v128) = 24;
  v97 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v125 = 0;
  v98 = (v126 + v118[28]);
  *v98 = v97;
  v98[1] = v99;
  LOBYTE(v128) = 25;
  v100 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v125 = 0;
  v101 = (v126 + v118[29]);
  *v101 = v100;
  v101[1] = v102;
  LOBYTE(v128) = 26;
  v103 = KeyedDecodingContainer.decode(_:forKey:)();
  v125 = 0;
  *(v126 + v118[30]) = v103 & 1;
  LOBYTE(v128) = 27;
  v104 = KeyedDecodingContainer.decode(_:forKey:)();
  v125 = 0;
  *(v126 + v118[31]) = v104 & 1;
  LOBYTE(v128) = 28;
  v105 = KeyedDecodingContainer.decode(_:forKey:)();
  v125 = 0;
  *(v126 + v118[32]) = v105 & 1;
  LOBYTE(v128) = 29;
  v106 = KeyedDecodingContainer.decode(_:forKey:)();
  v125 = 0;
  *(v126 + v118[33]) = v106 & 1;
  sub_10004B564(&qword_1005AEB40, &qword_1004CF770);
  v127 = 30;
  sub_1001AE58C(&qword_1005AEB48, &qword_1005AEB50, &protocol conformance descriptor for FriendInfoOption, &protocol conformance descriptor for <> Set<A>);
  v107 = v125;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v125 = v107;
  if (v107)
  {
    (*(v121 + 8))(*&v114[4], v122);
    v51 = 0;
LABEL_59:
    sub_100004984(v123);
    v26 = v126;

    v47 = v118;
    sub_100002CE0(v26 + v118[6], &qword_1005AE998, &unk_1004D6030);

    v52 = 1;
    v53 = 1;
    v50 = 1;
    v49 = 1;
    v48 = 1;
    LODWORD(v117) = 1;
    LODWORD(v115) = 1;
    *v114 = 1;
    *&v114[4] = 1;
    v113 = 0x100000001;
    v27 = v124;
LABEL_38:

    if ((v113 & 1) == 0)
    {
LABEL_19:
      if (HIDWORD(v113))
      {
        goto LABEL_20;
      }

      goto LABEL_40;
    }

LABEL_39:

    if ((v113 & 0x100000000) != 0)
    {
LABEL_20:

      if ((v114[0] & 1) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_41;
    }

LABEL_40:
    if (!*v114)
    {
LABEL_21:
      if (*&v114[4])
      {
        goto LABEL_22;
      }

      goto LABEL_42;
    }

LABEL_41:
    sub_100002CE0(v26 + v47[19], &qword_1005AE998, &unk_1004D6030);
    if (v114[4])
    {
LABEL_22:

      if ((v115 & 1) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_43;
    }

LABEL_42:
    if (!v115)
    {
LABEL_23:
      if (v117)
      {
        goto LABEL_24;
      }

      goto LABEL_44;
    }

LABEL_43:

    if (v117)
    {
LABEL_24:

      if ((v48 & 1) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_45;
    }

LABEL_44:
    if (!v48)
    {
LABEL_25:
      if (v49)
      {
        goto LABEL_26;
      }

      goto LABEL_46;
    }

LABEL_45:

    if (v49)
    {
LABEL_26:

      if ((v50 & 1) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_47;
    }

LABEL_46:
    if (!v50)
    {
LABEL_27:
      if (v53)
      {
        goto LABEL_28;
      }

      goto LABEL_48;
    }

LABEL_47:

    if (v53)
    {
LABEL_28:

      if ((v52 & 1) == 0)
      {
        goto LABEL_29;
      }

      goto LABEL_49;
    }

LABEL_48:
    if (!v52)
    {
LABEL_29:
      if (!v51)
      {
        return sub_100002CE0(v26 + v27, &qword_1005B3360, &unk_1004C6AA0);
      }

      goto LABEL_4;
    }

LABEL_49:

    if ((v51 & 1) == 0)
    {
      return sub_100002CE0(v26 + v27, &qword_1005B3360, &unk_1004C6AA0);
    }

    goto LABEL_4;
  }

  *(v126 + v118[34]) = v128;
  v127 = 31;
  sub_1001AE538();
  v108 = v125;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v125 = v108;
  if (v108 || (*(v126 + v118[35]) = v128, LOBYTE(v128) = 32, sub_10001C918(&qword_1005AE888, &type metadata accessor for Handle, &protocol conformance descriptor for Handle), v109 = v125, KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)(), (v125 = v109) != 0))
  {
    (*(v121 + 8))(*&v114[4], v122);
    v51 = 1;
    goto LABEL_59;
  }

  (*(v121 + 8))(*&v114[4], v122);
  v110 = v126;
  sub_1000228E0(v119, v126 + v124);
  sub_1000181EC(v110, v120, type metadata accessor for FriendRecord);
  sub_100004984(v123);
  return sub_100006E08(v110, type metadata accessor for FriendRecord);
}

uint64_t sub_1001AC3A4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1001AE8D4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1001AC3D8(uint64_t a1)
{
  v2 = sub_1001AE4E4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001AC414(uint64_t a1)
{
  v2 = sub_1001AE4E4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001AC480(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(v5 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v2;
  v16 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_100237784();
    v14 = v16;
  }

  v12 = *(*(v14 + 48) + 16 * v8);
  sub_1001AD3C8(v8);
  *v2 = v16;
  return v12;
}

uint64_t sub_1001AC5BC@<X0>(uint64_t a2@<X8>)
{
  v4 = type metadata accessor for FriendInfoOption(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  Hasher.init(_seed:)();
  type metadata accessor for HandleType();
  sub_10001C918(&qword_1005AE818, &type metadata accessor for HandleType, &protocol conformance descriptor for HandleType);
  dispatch thunk of Hashable.hash(into:)();
  v9 = Hasher._finalize()();
  v10 = -1 << *(v8 + 32);
  v11 = v9 & ~v10;
  if ((*(v8 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v21 = v2;
    v22 = v5;
    v23 = v4;
    v24 = a2;
    v12 = ~v10;
    v13 = *(v5 + 72);
    while (1)
    {
      sub_1000181EC(*(v8 + 48) + v13 * v11, v7, type metadata accessor for FriendInfoOption);
      v14 = static HandleType.== infix(_:_:)();
      sub_100006E08(v7, type metadata accessor for FriendInfoOption);
      if (v14)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v8 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        v15 = 1;
        a2 = v24;
        goto LABEL_10;
      }
    }

    v16 = v21;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v16;
    v25 = *v16;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_100237A68();
      v18 = v25;
    }

    a2 = v24;
    sub_100023DCC(*(v18 + 48) + v13 * v11, v24);
    sub_1001AD58C(v11);
    v15 = 0;
    *v16 = v25;
LABEL_10:
    v5 = v22;
    v4 = v23;
  }

  else
  {
    v15 = 1;
  }

  return (*(v5 + 56))(a2, v15, 1, v4);
}

uint64_t sub_1001AC818@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for Friend();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_10001C918(&qword_1005AE9B0, &type metadata accessor for Friend, &protocol conformance descriptor for Friend);
  v31 = a1;
  v10 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v11 = v9 + 56;
  v29 = v9 + 56;
  v30 = v9;
  v12 = -1 << *(v9 + 32);
  v13 = v10 & ~v12;
  if ((*(v11 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v26 = v2;
    v27 = v6;
    v28 = a2;
    v14 = ~v12;
    v17 = *(v6 + 16);
    v16 = v6 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    while (1)
    {
      v15(v8, *(v30 + 48) + v18 * v13, v5);
      sub_10001C918(&qword_1005AE9B8, &type metadata accessor for Friend, &protocol conformance descriptor for Friend);
      v19 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v16 - 8))(v8, v5);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
      if (((*(v29 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        v20 = 1;
        v6 = v27;
        a2 = v28;
        return (*(v6 + 56))(a2, v20, 1, v5);
      }
    }

    v21 = v26;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v21;
    v32 = *v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_100237CA8();
      v23 = v32;
    }

    v6 = v27;
    a2 = v28;
    (*(v27 + 32))(v28, *(v23 + 48) + v18 * v13, v5);
    sub_1001AD8A0(v13, &type metadata accessor for Friend, &qword_1005AE9B0, &type metadata accessor for Friend, &protocol conformance descriptor for Friend);
    v20 = 0;
    *v21 = v32;
  }

  else
  {
    v20 = 1;
  }

  return (*(v6 + 56))(a2, v20, 1, v5);
}

uint64_t sub_1001ACB04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_10001C918(&qword_1005AECC0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v31 = a1;
  v10 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v11 = v9 + 56;
  v29 = v9 + 56;
  v30 = v9;
  v12 = -1 << *(v9 + 32);
  v13 = v10 & ~v12;
  if ((*(v11 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v26 = v2;
    v27 = v6;
    v28 = a2;
    v14 = ~v12;
    v17 = *(v6 + 16);
    v16 = v6 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    while (1)
    {
      v15(v8, *(v30 + 48) + v18 * v13, v5);
      sub_10001C918(&qword_1005A9FC8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v19 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v16 - 8))(v8, v5);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
      if (((*(v29 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        v20 = 1;
        v6 = v27;
        a2 = v28;
        return (*(v6 + 56))(a2, v20, 1, v5);
      }
    }

    v21 = v26;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v21;
    v32 = *v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_100237C80();
      v23 = v32;
    }

    v6 = v27;
    a2 = v28;
    (*(v27 + 32))(v28, *(v23 + 48) + v18 * v13, v5);
    sub_1001AD8A0(v13, &type metadata accessor for UUID, &qword_1005AECC0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v20 = 0;
    *v21 = v32;
  }

  else
  {
    v20 = 1;
  }

  return (*(v6 + 56))(a2, v20, 1, v5);
}

uint64_t sub_1001ACDF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for Device();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_10001C918(&qword_1005AE9C0, &type metadata accessor for Device, &protocol conformance descriptor for Device);
  v31 = a1;
  v10 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v11 = v9 + 56;
  v29 = v9 + 56;
  v30 = v9;
  v12 = -1 << *(v9 + 32);
  v13 = v10 & ~v12;
  if ((*(v11 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v26 = v2;
    v27 = v6;
    v28 = a2;
    v14 = ~v12;
    v17 = *(v6 + 16);
    v16 = v6 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    while (1)
    {
      v15(v8, *(v30 + 48) + v18 * v13, v5);
      sub_10001C918(&qword_1005AE9C8, &type metadata accessor for Device, &protocol conformance descriptor for Device);
      v19 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v16 - 8))(v8, v5);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
      if (((*(v29 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        v20 = 1;
        v6 = v27;
        a2 = v28;
        return (*(v6 + 56))(a2, v20, 1, v5);
      }
    }

    v21 = v26;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v21;
    v32 = *v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_100237CD0();
      v23 = v32;
    }

    v6 = v27;
    a2 = v28;
    (*(v27 + 32))(v28, *(v23 + 48) + v18 * v13, v5);
    sub_1001AD8A0(v13, &type metadata accessor for Device, &qword_1005AE9C0, &type metadata accessor for Device, &protocol conformance descriptor for Device);
    v20 = 0;
    *v21 = v32;
  }

  else
  {
    v20 = 1;
  }

  return (*(v6 + 56))(a2, v20, 1, v5);
}

uint64_t sub_1001AD0DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for ClientID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_10001C918(&qword_1005AE9D0, &type metadata accessor for ClientID, &protocol conformance descriptor for ClientID);
  v31 = a1;
  v10 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v11 = v9 + 56;
  v29 = v9 + 56;
  v30 = v9;
  v12 = -1 << *(v9 + 32);
  v13 = v10 & ~v12;
  if ((*(v11 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v26 = v2;
    v27 = v6;
    v28 = a2;
    v14 = ~v12;
    v17 = *(v6 + 16);
    v16 = v6 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    while (1)
    {
      v15(v8, *(v30 + 48) + v18 * v13, v5);
      sub_10001C918(&qword_1005AE9D8, &type metadata accessor for ClientID, &protocol conformance descriptor for ClientID);
      v19 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v16 - 8))(v8, v5);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
      if (((*(v29 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        v20 = 1;
        v6 = v27;
        a2 = v28;
        return (*(v6 + 56))(a2, v20, 1, v5);
      }
    }

    v21 = v26;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v21;
    v32 = *v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_100237CF8();
      v23 = v32;
    }

    v6 = v27;
    a2 = v28;
    (*(v27 + 32))(v28, *(v23 + 48) + v18 * v13, v5);
    sub_1001AD8A0(v13, &type metadata accessor for ClientID, &qword_1005AE9D0, &type metadata accessor for ClientID, &protocol conformance descriptor for ClientID);
    v20 = 0;
    *v21 = v32;
  }

  else
  {
    v20 = 1;
  }

  return (*(v6 + 56))(a2, v20, 1, v5);
}

unint64_t sub_1001AD3C8(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        Hasher.init(_seed:)();

        String.hash(into:)();
        v10 = Hasher._finalize()();

        v11 = v10 & v7;
        if (v2 >= v9)
        {
          if (v11 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v11 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v11)
        {
LABEL_11:
          v12 = *(v3 + 48);
          v13 = (v12 + 16 * v2);
          v14 = (v12 + 16 * v6);
          if (v2 != v6 || v13 >= v14 + 1)
          {
            *v13 = *v14;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v15 = *(v3 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v17;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_1001AD58C(int64_t a1)
{
  v25 = type metadata accessor for FriendInfoOption(0);
  v3 = *(v25 - 8);
  result = __chkstk_darwin(v25);
  v28 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  v7 = *v1 + 56;
  v8 = -1 << *(*v1 + 32);
  v9 = (a1 + 1) & ~v8;
  if (((1 << v9) & *(v7 + 8 * (v9 >> 6))) != 0)
  {
    v10 = ~v8;

    v11 = _HashTable.previousHole(before:)();
    if ((*(v7 + 8 * (v9 >> 6)) & (1 << v9)) != 0)
    {
      v12 = (v11 + 1) & v10;
      v13 = *(v3 + 72);
      v26 = v13;
      v27 = v7;
      do
      {
        v14 = v13 * v9;
        v15 = v28;
        sub_1000181EC(*(v6 + 48) + v13 * v9, v28, type metadata accessor for FriendInfoOption);
        v16 = v6;
        Hasher.init(_seed:)();
        type metadata accessor for HandleType();
        sub_10001C918(&qword_1005AE818, &type metadata accessor for HandleType, &protocol conformance descriptor for HandleType);
        v17 = v12;
        dispatch thunk of Hashable.hash(into:)();
        v18 = Hasher._finalize()();
        sub_100006E08(v15, type metadata accessor for FriendInfoOption);
        v19 = v18 & v10;
        v12 = v17;
        if (a1 >= v17)
        {
          if (v19 < v17)
          {
            v6 = v16;
          }

          else
          {
            v6 = v16;
            if (a1 >= v19)
            {
              goto LABEL_13;
            }
          }
        }

        else
        {
          v6 = v16;
          if (v19 >= v12 || a1 >= v19)
          {
LABEL_13:
            v13 = v26;
            v20 = v26 * a1;
            if (v26 * a1 < v14 || *(v6 + 48) + v26 * a1 >= (*(v6 + 48) + v14 + v26))
            {
              swift_arrayInitWithTakeFrontToBack();
              a1 = v9;
            }

            else
            {
              a1 = v9;
              if (v20 != v14)
              {
                swift_arrayInitWithTakeBackToFront();
                a1 = v9;
              }
            }

            goto LABEL_6;
          }
        }

        v13 = v26;
LABEL_6:
        v9 = (v9 + 1) & v10;
        v7 = v27;
      }

      while (((*(v27 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
    }

    *(v7 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v7 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v21 = *(v6 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v23;
    ++*(v6 + 36);
  }

  return result;
}

uint64_t sub_1001AD8A0(int64_t a1, uint64_t (*a2)(void), unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t a5)
{
  v42 = a4;
  v43 = a5;
  v41 = a3;
  v7 = a2(0);
  v8 = *(v7 - 8);
  result = __chkstk_darwin(v7);
  v11 = &v37 - v10;
  v12 = *v5;
  v13 = *v5 + 56;
  v14 = -1 << *(*v5 + 32);
  v15 = (a1 + 1) & ~v14;
  if (((1 << v15) & *(v13 + 8 * (v15 >> 6))) != 0)
  {
    v16 = ~v14;

    v17 = _HashTable.previousHole(before:)();
    if ((*(v13 + 8 * (v15 >> 6)) & (1 << v15)) != 0)
    {
      v39 = (v17 + 1) & v16;
      v38 = *(v8 + 16);
      v44 = *(v8 + 72);
      v40 = v8 + 16;
      v18 = (v8 + 8);
      v19 = v12;
      v20 = v16;
      while (1)
      {
        v21 = v13;
        v22 = v44 * v15;
        v23 = v20;
        v38(v11, *(v19 + 48) + v44 * v15, v7);
        v24 = v19;
        sub_10001C918(v41, v42, v43);
        v25 = dispatch thunk of Hashable._rawHashValue(seed:)();
        (*v18)(v11, v7);
        v20 = v23;
        v26 = v25 & v23;
        if (a1 >= v39)
        {
          if (v26 < v39 || a1 < v26)
          {
LABEL_4:
            v19 = v24;
            goto LABEL_5;
          }
        }

        else if (v26 < v39 && a1 < v26)
        {
          goto LABEL_4;
        }

        v19 = v24;
        v29 = *(v24 + 48);
        v30 = v44 * a1;
        v31 = v29 + v44 * a1;
        v32 = v29 + v22 + v44;
        if (v44 * a1 < v22 || v31 >= v32)
        {
          swift_arrayInitWithTakeFrontToBack();
LABEL_24:
          v20 = v23;
          a1 = v15;
          goto LABEL_5;
        }

        a1 = v15;
        if (v30 != v22)
        {
          swift_arrayInitWithTakeBackToFront();
          goto LABEL_24;
        }

LABEL_5:
        v15 = (v15 + 1) & v20;
        v13 = v21;
        if (((*(v21 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
        {

          goto LABEL_28;
        }
      }
    }

    v19 = v12;
LABEL_28:
    *(v13 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v13 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
    v19 = v12;
  }

  v34 = *(v19 + 16);
  v35 = __OFSUB__(v34, 1);
  v36 = v34 - 1;
  if (v35)
  {
    __break(1u);
  }

  else
  {
    *(v19 + 16) = v36;
    ++*(v19 + 36);
  }

  return result;
}

uint64_t sub_1001ADBA0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t sub_1001ADBD8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E696769726FLL && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001004E2BA0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7441657461657263 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x797269707865 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x4449726576726573 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x657469726F766166 && a2 == 0xED0000726564724FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x746F4E646574706FLL && a2 == 0xEF65726168536F54 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6E614872656E776FLL && a2 == 0xEB00000000656C64 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000023 && 0x80000001004E2C20 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001004E2C00 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001004E2C70 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001004E2C50 == a2)
  {

    return 12;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 12;
    }

    else
    {
      return 13;
    }
  }
}

void sub_1001ADFF8(uint64_t a1)
{
  sub_10008B2BC(319, &qword_1005A9790, &type metadata for String);
  if (v1 <= 0x3F)
  {
    sub_1001AE238(319, &qword_1005AEA48, &type metadata accessor for IDSStatus);
    if (v2 <= 0x3F)
    {
      sub_10008B2BC(319, &qword_1005AC700, &type metadata for Bool);
      if (v3 <= 0x3F)
      {
        sub_1001AE28C(319, &qword_1005AC6F8, &qword_1005A9630, &qword_1004C5680);
        if (v4 <= 0x3F)
        {
          sub_1001AE28C(319, &qword_1005AEA50, &qword_1005AE840, &qword_1004CF2E8);
          if (v5 <= 0x3F)
          {
            sub_10008B2BC(319, &qword_1005AC708, &type metadata for Double);
            if (v6 <= 0x3F)
            {
              sub_1001AE2E0(319);
              if (v7 <= 0x3F)
              {
                sub_1001AE238(319, &qword_1005AE910, &type metadata accessor for Handle);
                if (v8 <= 0x3F)
                {
                  swift_cvw_initStructMetadataWithLayoutString();
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_1001AE238(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1001AE28C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_10004B610(a3, a4);
    v5 = type metadata accessor for Optional();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1001AE2E0(uint64_t a1)
{
  if (!qword_1005AEA58)
  {
    type metadata accessor for FriendInfoOption(255);
    sub_10001C918(&unk_1005AEA60, type metadata accessor for FriendInfoOption, &protocol conformance descriptor for FriendInfoOption);
    v1 = type metadata accessor for Set();
    if (!v2)
    {
      atomic_store(v1, &qword_1005AEA58);
    }
  }
}

unint64_t sub_1001AE388()
{
  result = qword_1005AEB10;
  if (!qword_1005AEB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AEB10);
  }

  return result;
}

unint64_t sub_1001AE3E0()
{
  result = qword_1005AEB18;
  if (!qword_1005AEB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AEB18);
  }

  return result;
}

unint64_t sub_1001AE438()
{
  result = qword_1005AEB20;
  if (!qword_1005AEB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AEB20);
  }

  return result;
}

unint64_t sub_1001AE490()
{
  result = qword_1005AEB28;
  if (!qword_1005AEB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AEB28);
  }

  return result;
}

unint64_t sub_1001AE4E4()
{
  result = qword_1005AEB38;
  if (!qword_1005AEB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AEB38);
  }

  return result;
}

unint64_t sub_1001AE538()
{
  result = qword_1005AEB58;
  if (!qword_1005AEB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AEB58);
  }

  return result;
}

uint64_t sub_1001AE58C(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_10004B610(&qword_1005AEB40, &qword_1004CF770);
    sub_10001C918(a2, type metadata accessor for FriendInfoOption, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1001AE628()
{
  result = qword_1005AEB78;
  if (!qword_1005AEB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AEB78);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FriendRecord.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE0)
  {
    goto LABEL_17;
  }

  if (a2 + 32 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 32) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 32;
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

      return (*a1 | (v4 << 8)) - 32;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 32;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x21;
  v8 = v6 - 33;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FriendRecord.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 32 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 32) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE0)
  {
    v4 = 0;
  }

  if (a2 > 0xDF)
  {
    v5 = ((a2 - 224) >> 8) + 1;
    *result = a2 + 32;
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
    *result = a2 + 32;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1001AE7D0()
{
  result = qword_1005AEB80;
  if (!qword_1005AEB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AEB80);
  }

  return result;
}

unint64_t sub_1001AE828()
{
  result = qword_1005AEB88;
  if (!qword_1005AEB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AEB88);
  }

  return result;
}

unint64_t sub_1001AE880()
{
  result = qword_1005AEB90;
  if (!qword_1005AEB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AEB90);
  }

  return result;
}

uint64_t sub_1001AE8D4(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x80000001004E4720 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001004E4740 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6449656C646E6168 && a2 == 0xEF73757461745373 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7344656C646E6168 && a2 == 0xEA00000000006469 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001004E4760 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001004E4780 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001004E47A0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6552656C646E6168 && a2 == 0xEF656C6261686361 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001004E47C0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001004E47E0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001004E4800 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001004E4820 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001004E4840 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001004E4860 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD00000000000001ELL && 0x80000001004E4880 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001004E48A0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0x6E614872656E776FLL && a2 == 0xEF64697344656C64 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0xD00000000000001BLL && 0x80000001004E48C0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0xD00000000000001CLL && 0x80000001004E48E0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001004E4900 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 19;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001004E4920 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 20;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001004E4940 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 21;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000001004E4960 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 22;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001004E4980 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 23;
  }

  else if (a1 == 0xD00000000000001CLL && 0x80000001004E49A0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 24;
  }

  else if (a1 == 0xD00000000000001BLL && 0x80000001004E49C0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 25;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001004E2C00 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 26;
  }

  else if (a1 == 0xD000000000000023 && 0x80000001004E2C20 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 27;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001004E2C50 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 28;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001004E2C70 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 29;
  }

  else if (a1 == 0x6E49646E65697266 && a2 == 0xEA00000000006F66 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 30;
  }

  else if (a1 == 0x7365707974 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 31;
  }

  else if (a1 == 0x6E614872656E776FLL && a2 == 0xEB00000000656C64)
  {

    return 32;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v5)
    {
      return 32;
    }

    else
    {
      return 33;
    }
  }
}

uint64_t sub_1001AF2F0(id *a1)
{
  v2 = v1;
  v4 = sub_10004B564(&unk_1005AE5B0, &qword_1004C32F0);
  v5 = __chkstk_darwin(v4 - 8);
  v55 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = &v48 - v7;
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  v58 = v9;
  v59 = v10;
  v11 = __chkstk_darwin(v9);
  v52 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v50 = &v48 - v13;
  v14 = sub_10004B564(&qword_1005AEB98, &unk_1004D07C0);
  v15 = __chkstk_darwin(v14 - 8);
  v54 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = &v48 - v17;
  v19 = type metadata accessor for SharedSecretKey();
  v20 = *(v19 - 8);
  v21 = __chkstk_darwin(v19);
  v51 = &v48 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v24 = &v48 - v23;
  v25 = [*a1 encryptedValues];
  ObjectType = swift_getObjectType();
  v27 = type metadata accessor for FriendSharedSecretsRecord(0);
  v28 = *(v2 + v27[5]);
  v63 = &type metadata for UInt8;
  v64 = &protocol witness table for UInt8;
  LOBYTE(v61) = v28;
  CKRecordKeyValueSetting.subscript.setter();
  v29 = v27[6];
  v60 = v2;
  sub_100005F04(v2 + v29, v18, &qword_1005AEB98, &unk_1004D07C0);
  v53 = *(v20 + 48);
  v30 = v53(v18, 1, v19);
  v56 = v25;
  v57 = ObjectType;
  v49 = v20;
  if (v30 == 1)
  {
    sub_100002CE0(v18, &qword_1005AEB98, &unk_1004D07C0);
  }

  else
  {
    (*(v20 + 32))(v24, v18, v19);
    v31 = SharedSecretKey.data.getter();
    v63 = &type metadata for Data;
    v64 = &protocol witness table for Data;
    v61 = v31;
    v62 = v32;
    CKRecordKeyValueSetting.subscript.setter();
    (*(v20 + 8))(v24, v19);
  }

  sub_100005F04(v60 + v27[7], v8, &unk_1005AE5B0, &qword_1004C32F0);
  v33 = v58;
  v34 = v59;
  v35 = *(v59 + 48);
  if (v35(v8, 1, v58) == 1)
  {
    sub_100002CE0(v8, &unk_1005AE5B0, &qword_1004C32F0);
  }

  else
  {
    v36 = v50;
    (*(v34 + 32))(v50, v8, v33);
    v63 = v33;
    v64 = &protocol witness table for Date;
    v37 = sub_10000331C(&v61);
    (*(v59 + 16))(v37, v36, v33);
    CKRecordKeyValueSetting.subscript.setter();
    v34 = v59;
    (*(v59 + 8))(v36, v33);
  }

  v38 = v54;
  sub_100005F04(v60 + v27[8], v54, &qword_1005AEB98, &unk_1004D07C0);
  if (v53(v38, 1, v19) == 1)
  {
    sub_100002CE0(v38, &qword_1005AEB98, &unk_1004D07C0);
  }

  else
  {
    v40 = v49;
    v41 = v51;
    (*(v49 + 32))(v51, v38, v19);
    v42 = SharedSecretKey.data.getter();
    v63 = &type metadata for Data;
    v64 = &protocol witness table for Data;
    v61 = v42;
    v62 = v43;
    CKRecordKeyValueSetting.subscript.setter();
    v34 = v59;
    (*(v40 + 8))(v41, v19);
  }

  v39 = v55;
  sub_100005F04(v60 + v27[9], v55, &unk_1005AE5B0, &qword_1004C32F0);
  v44 = v58;
  if (v35(v39, 1, v58) == 1)
  {
    swift_unknownObjectRelease();
    return sub_100002CE0(v39, &unk_1005AE5B0, &qword_1004C32F0);
  }

  else
  {
    v46 = v52;
    (*(v34 + 32))(v52, v39, v44);
    v63 = v44;
    v64 = &protocol witness table for Date;
    v47 = sub_10000331C(&v61);
    (*(v34 + 16))(v47, v46, v44);
    CKRecordKeyValueSetting.subscript.setter();
    swift_unknownObjectRelease();
    return (*(v34 + 8))(v46, v44);
  }
}

uint64_t sub_1001AF9DC(id *a1, _BYTE *a2, uint64_t a3)
{
  v130 = a2;
  v131 = a1;
  v118 = type metadata accessor for Date();
  v126 = *(v118 - 8);
  __chkstk_darwin(v118);
  v114 = &v107[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_10004B564(&unk_1005AE5B0, &qword_1004C32F0);
  v6 = __chkstk_darwin(v5 - 8);
  v117 = &v107[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __chkstk_darwin(v6);
  v113 = &v107[-v9];
  v10 = __chkstk_darwin(v8);
  v115 = &v107[-v11];
  __chkstk_darwin(v10);
  v110 = &v107[-v12];
  v123 = sub_10004B564(&qword_1005AAE00, &qword_1004C4A18);
  v13 = __chkstk_darwin(v123);
  v129 = &v107[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v13);
  v16 = &v107[-v15];
  v132 = type metadata accessor for SharedSecretKey();
  v125 = *(v132 - 8);
  __chkstk_darwin(v132);
  v112 = &v107[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = sub_10004B564(&qword_1005AEB98, &unk_1004D07C0);
  v19 = __chkstk_darwin(v18 - 8);
  v116 = &v107[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = __chkstk_darwin(v19);
  v111 = &v107[-v22];
  v23 = __chkstk_darwin(v21);
  v25 = &v107[-v24];
  __chkstk_darwin(v23);
  v121 = &v107[-v26];
  v122 = sub_10004B564(&qword_1005AECE0, qword_1004CF9D0);
  v27 = __chkstk_darwin(v122);
  v120 = &v107[-((v28 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v27);
  v30 = &v107[-v29];
  v31 = sub_10004B564(&unk_1005AECE8, &qword_1004D07A0);
  v32 = __chkstk_darwin(v31 - 8);
  v34 = &v107[-v33];
  v35 = *(a3 - 8);
  __chkstk_darwin(v32);
  v37 = &v107[-((v36 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v38 = type metadata accessor for FriendSharedSecretsRecord(0);
  v39 = *(v38 - 1);
  __chkstk_darwin(v38);
  v41 = &v107[-((v40 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v35 + 16))(v37, v130, a3);
  v42 = swift_dynamicCast();
  v43 = *(v39 + 56);
  if (v42)
  {
    v124 = v25;
    v43(v34, 0, 1, v38);
    sub_1001B1ABC(v34, v41);
    v131 = [*v131 encryptedValues];
    ObjectType = swift_getObjectType();
    v44 = v38[5];
    v45 = *(v128 + v44);
    v130 = v41;
    v46 = v41[v44];
    v47 = v128;
    if (v45 != v46)
    {
      *(&v134 + 1) = &type metadata for UInt8;
      v135 = &protocol witness table for UInt8;
      LOBYTE(v133) = v46;
      CKRecordKeyValueSetting.subscript.setter();
    }

    v48 = v38[6];
    v49 = *(v122 + 48);
    sub_100005F04(v47 + v48, v30, &qword_1005AEB98, &unk_1004D07C0);
    sub_100005F04(&v130[v48], &v30[v49], &qword_1005AEB98, &unk_1004D07C0);
    v50 = *(v125 + 48);
    v51 = v50(v30, 1, v132);
    v119 = v48;
    if (v51 == 1)
    {
      if (v50(&v30[v49], 1, v132) == 1)
      {
        sub_100002CE0(v30, &qword_1005AEB98, &unk_1004D07C0);
        goto LABEL_14;
      }
    }

    else
    {
      v52 = v121;
      sub_100005F04(v30, v121, &qword_1005AEB98, &unk_1004D07C0);
      if (v50(&v30[v49], 1, v132) != 1)
      {
        v109 = v50;
        v83 = v38;
        v84 = v125;
        v85 = &v30[v49];
        v86 = v112;
        v87 = v132;
        (*(v125 + 32))(v112, v85, v132);
        sub_1001B1B7C(&qword_1005AECF8, &type metadata accessor for SharedSecretKey, &protocol conformance descriptor for SharedSecretKey);
        v108 = dispatch thunk of static Equatable.== infix(_:_:)();
        v88 = *(v84 + 8);
        v88(v86, v87);
        v89 = v87;
        v48 = v119;
        v88(v52, v89);
        v38 = v83;
        v50 = v109;
        sub_100002CE0(v30, &qword_1005AEB98, &unk_1004D07C0);
        if (v108)
        {
          goto LABEL_14;
        }

        goto LABEL_10;
      }

      (*(v125 + 8))(v52, v132);
    }

    sub_100002CE0(v30, &qword_1005AECE0, qword_1004CF9D0);
LABEL_10:
    v53 = v124;
    sub_100005F04(&v130[v48], v124, &qword_1005AEB98, &unk_1004D07C0);
    if (v50(v53, 1, v132) == 1)
    {
      sub_100002CE0(v53, &qword_1005AEB98, &unk_1004D07C0);
      v133 = 0u;
      v134 = 0u;
      v135 = 0;
    }

    else
    {
      v54 = SharedSecretKey.data.getter();
      *(&v134 + 1) = &type metadata for Data;
      v135 = &protocol witness table for Data;
      *&v133 = v54;
      *(&v133 + 1) = v55;
      (*(v125 + 8))(v53, v132);
    }

    CKRecordKeyValueSetting.subscript.setter();
LABEL_14:
    v124 = v38;
    v56 = v38[7];
    v57 = *(v123 + 48);
    sub_100005F04(v47 + v56, v16, &unk_1005AE5B0, &qword_1004C32F0);
    v58 = v130;
    sub_100005F04(&v130[v56], &v16[v57], &unk_1005AE5B0, &qword_1004C32F0);
    v59 = *(v126 + 48);
    v60 = v118;
    v61 = (v59)(v16, 1, v118);
    v121 = v59;
    if (v61 == 1)
    {
      v62 = (v59)(&v16[v57], 1, v60);
      v63 = v60;
      v64 = v119;
      if (v62 == 1)
      {
        sub_100002CE0(v16, &unk_1005AE5B0, &qword_1004C32F0);
        v65 = v120;
        goto LABEL_24;
      }
    }

    else
    {
      v66 = v110;
      sub_100005F04(v16, v110, &unk_1005AE5B0, &qword_1004C32F0);
      if ((v59)(&v16[v57], 1, v60) != 1)
      {
        v109 = v50;
        v90 = v66;
        v91 = v126;
        v92 = v114;
        (*(v126 + 32))(v114, &v16[v57], v60);
        sub_1001B1B7C(&qword_1005AE5D0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
        v108 = dispatch thunk of static Equatable.== infix(_:_:)();
        v93 = *(v91 + 8);
        v94 = v92;
        v58 = v130;
        v93(v94, v60);
        v95 = v90;
        v50 = v109;
        v93(v95, v60);
        sub_100002CE0(v16, &unk_1005AE5B0, &qword_1004C32F0);
        v63 = v60;
        v64 = v119;
        v65 = v120;
        if (v108)
        {
          goto LABEL_24;
        }

        goto LABEL_20;
      }

      (*(v126 + 8))(v66, v60);
      v63 = v60;
      v64 = v119;
    }

    sub_100002CE0(v16, &qword_1005AAE00, &qword_1004C4A18);
    v65 = v120;
LABEL_20:
    v67 = v115;
    sub_100005F04(v58 + v56, v115, &unk_1005AE5B0, &qword_1004C32F0);
    if ((v121)(v67, 1, v63) == 1)
    {
      sub_100002CE0(v67, &unk_1005AE5B0, &qword_1004C32F0);
      v133 = 0u;
      v134 = 0u;
      v135 = 0;
    }

    else
    {
      *(&v134 + 1) = v63;
      v135 = &protocol witness table for Date;
      v68 = sub_10000331C(&v133);
      (*(v126 + 32))(v68, v67, v63);
    }

    CKRecordKeyValueSetting.subscript.setter();
LABEL_24:
    v69 = *(v122 + 48);
    sub_100005F04(v128 + v124[8], v65, &qword_1005AEB98, &unk_1004D07C0);
    sub_100005F04(v58 + v64, &v65[v69], &qword_1005AEB98, &unk_1004D07C0);
    if (v50(v65, 1, v132) == 1)
    {
      if (v50(&v65[v69], 1, v132) == 1)
      {
        sub_100002CE0(v65, &qword_1005AEB98, &unk_1004D07C0);
        goto LABEL_34;
      }
    }

    else
    {
      v70 = v111;
      sub_100005F04(v65, v111, &qword_1005AEB98, &unk_1004D07C0);
      if (v50(&v65[v69], 1, v132) != 1)
      {
        v96 = v65;
        v97 = v125;
        v98 = v112;
        v99 = v132;
        (*(v125 + 32))(v112, &v96[v69], v132);
        sub_1001B1B7C(&qword_1005AECF8, &type metadata accessor for SharedSecretKey, &protocol conformance descriptor for SharedSecretKey);
        v109 = v50;
        LODWORD(v122) = dispatch thunk of static Equatable.== infix(_:_:)();
        v100 = *(v97 + 8);
        v100(v98, v99);
        v50 = v109;
        v100(v70, v99);
        sub_100002CE0(v120, &qword_1005AEB98, &unk_1004D07C0);
        if (v122)
        {
          goto LABEL_34;
        }

        goto LABEL_30;
      }

      (*(v125 + 8))(v70, v132);
    }

    sub_100002CE0(v65, &qword_1005AECE0, qword_1004CF9D0);
LABEL_30:
    v71 = v116;
    sub_100005F04(v58 + v124[8], v116, &qword_1005AEB98, &unk_1004D07C0);
    if (v50(v71, 1, v132) == 1)
    {
      sub_100002CE0(v71, &qword_1005AEB98, &unk_1004D07C0);
      v133 = 0u;
      v134 = 0u;
      v135 = 0;
    }

    else
    {
      v72 = SharedSecretKey.data.getter();
      *(&v134 + 1) = &type metadata for Data;
      v135 = &protocol witness table for Data;
      *&v133 = v72;
      *(&v133 + 1) = v73;
      (*(v125 + 8))(v71, v132);
    }

    CKRecordKeyValueSetting.subscript.setter();
LABEL_34:
    v74 = v124[9];
    v75 = *(v123 + 48);
    v76 = v129;
    sub_100005F04(v128 + v74, v129, &unk_1005AE5B0, &qword_1004C32F0);
    sub_100005F04(v58 + v74, &v76[v75], &unk_1005AE5B0, &qword_1004C32F0);
    v77 = v121;
    if ((v121)(v76, 1, v63) == 1)
    {
      if ((v77)(&v129[v75], 1, v63) == 1)
      {
        swift_unknownObjectRelease();
        sub_100002CE0(v129, &unk_1005AE5B0, &qword_1004C32F0);
        return sub_1001B1B20(v58);
      }
    }

    else
    {
      v78 = v129;
      v79 = v113;
      sub_100005F04(v129, v113, &unk_1005AE5B0, &qword_1004C32F0);
      if ((v77)(&v78[v75], 1, v63) != 1)
      {
        v101 = v126;
        v102 = v129;
        v103 = v114;
        (*(v126 + 32))(v114, &v129[v75], v63);
        sub_1001B1B7C(&qword_1005AE5D0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
        v104 = dispatch thunk of static Equatable.== infix(_:_:)();
        v105 = *(v101 + 8);
        v105(v103, v63);
        v105(v79, v63);
        v77 = v121;
        v106 = v102;
        v58 = v130;
        sub_100002CE0(v106, &unk_1005AE5B0, &qword_1004C32F0);
        if (v104)
        {
LABEL_44:
          swift_unknownObjectRelease();
          return sub_1001B1B20(v58);
        }

LABEL_40:
        v80 = v117;
        sub_100005F04(v58 + v74, v117, &unk_1005AE5B0, &qword_1004C32F0);
        if ((v77)(v80, 1, v63) == 1)
        {
          sub_100002CE0(v80, &unk_1005AE5B0, &qword_1004C32F0);
          v133 = 0u;
          v134 = 0u;
          v135 = 0;
        }

        else
        {
          *(&v134 + 1) = v63;
          v135 = &protocol witness table for Date;
          v81 = sub_10000331C(&v133);
          (*(v126 + 32))(v81, v80, v63);
        }

        CKRecordKeyValueSetting.subscript.setter();
        goto LABEL_44;
      }

      (*(v126 + 8))(v79, v63);
    }

    sub_100002CE0(v129, &qword_1005AAE00, &qword_1004C4A18);
    goto LABEL_40;
  }

  v43(v34, 1, 1, v38);
  sub_100002CE0(v34, &unk_1005AECE8, &qword_1004D07A0);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_1001B0C60@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v101 = a1;
  v3 = sub_10004B564(&unk_1005AE5B0, &qword_1004C32F0);
  v4 = __chkstk_darwin(v3 - 8);
  v88 = &v78[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v87 = &v78[-v6];
  v7 = sub_10004B564(&qword_1005AEB98, &unk_1004D07C0);
  v8 = __chkstk_darwin(v7 - 8);
  v83 = &v78[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v82 = &v78[-v10];
  v11 = type metadata accessor for SharedSecretKey();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v81 = &v78[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v13);
  v80 = &v78[-v15];
  v16 = sub_10004B564(&qword_1005A96E0, &qword_1004C2A80);
  __chkstk_darwin(v16 - 8);
  v93 = &v78[-v17];
  v95 = type metadata accessor for UUID();
  v100 = *(v95 - 8);
  __chkstk_darwin(v95);
  v94 = &v78[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = type metadata accessor for FriendSharedSecretsRecord(0);
  v20 = v19[6];
  v84 = v12;
  v21 = *(v12 + 56);
  v96 = v20;
  v21(a2 + v20, 1, 1, v11);
  v22 = v19[7];
  v23 = type metadata accessor for Date();
  v24 = *(v23 - 8);
  v25 = *(v24 + 56);
  v26 = v24 + 56;
  v99 = v22;
  v25(a2 + v22, 1, 1, v23);
  v97 = v19[8];
  v85 = v11;
  v27 = v11;
  v28 = a2;
  v89 = v21;
  v90 = v12 + 56;
  v21(a2 + v97, 1, 1, v27);
  v98 = v19[9];
  v86 = v23;
  v91 = v26;
  v92 = v25;
  v25(a2 + v98, 1, 1, v23);
  if (CKRecord.recordType.getter() == 0xD000000000000019 && 0x80000001004CF870 == v29)
  {
  }

  else
  {
    v30 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v30 & 1) == 0)
    {
      sub_1001A54BC();
      swift_allocError();
      *v64 = 0;
      swift_willThrow();

      goto LABEL_23;
    }
  }

  v31 = v101;
  v32 = [v101 recordID];
  v33 = [v32 recordName];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v34 = v93;
  UUID.init(uuidString:)();

  v35 = v100;
  v36 = v95;
  if ((*(v100 + 48))(v34, 1, v95) == 1)
  {
    sub_100002CE0(v34, &qword_1005A96E0, &qword_1004C2A80);
    sub_1001A54BC();
    swift_allocError();
    *v37 = 1;
    swift_willThrow();

LABEL_23:
    sub_100002CE0(v28 + v96, &qword_1005AEB98, &unk_1004D07C0);
    sub_100002CE0(v28 + v99, &unk_1005AE5B0, &qword_1004C32F0);
    sub_100002CE0(v28 + v97, &qword_1005AEB98, &unk_1004D07C0);
    return sub_100002CE0(v28 + v98, &unk_1005AE5B0, &qword_1004C32F0);
  }

  (*(v35 + 32))(v94, v34, v36);
  v38 = [v31 encryptedValues];
  v39 = String._bridgeToObjectiveC()();
  v40 = v38;
  v41 = [v38 objectForKeyedSubscript:v39];

  if (!v41 || (v102 = v41, v93 = sub_10004B564(&qword_1005AEC00, &qword_1004CEF48), (swift_dynamicCast() & 1) == 0))
  {
    sub_1001A54BC();
    swift_allocError();
    *v63 = 0;
    swift_willThrow();
    swift_unknownObjectRelease();

    (*(v100 + 8))(v94, v36);
    goto LABEL_23;
  }

  v79 = v103;
  v42 = String._bridgeToObjectiveC()();
  v43 = [v40 objectForKeyedSubscript:v42];

  v44 = v88;
  v46 = v84;
  v45 = v85;
  if (v43)
  {
    v103 = v43;
    if (swift_dynamicCast())
    {
      sub_1001B1B7C(&qword_1005AEC08, &type metadata accessor for SharedSecretKey, &protocol conformance descriptor for SharedSecretKey);
      v47 = v82;
      KeyRepresenting.init(rawValue:)();
      if ((*(v46 + 48))(v47, 1, v45) != 1)
      {
        v71 = *(v46 + 32);
        v72 = v80;
        v71(v80, v47, v45);
        v48 = v96;
        sub_100002CE0(v28 + v96, &qword_1005AEB98, &unk_1004D07C0);
        v73 = v72;
        v44 = v88;
        v71((v28 + v48), v73, v45);
        v49 = 0;
        goto LABEL_14;
      }

      sub_100002CE0(v47, &qword_1005AEB98, &unk_1004D07C0);
    }
  }

  v48 = v96;
  sub_100002CE0(v28 + v96, &qword_1005AEB98, &unk_1004D07C0);
  v49 = 1;
LABEL_14:
  v89(v28 + v48, v49, 1, v45);
  v50 = String._bridgeToObjectiveC()();
  v51 = [v40 objectForKeyedSubscript:v50];

  v52 = v100;
  v53 = v28;
  if (v51)
  {
    v103 = v51;
    if (swift_dynamicCast())
    {
      sub_1001B1B7C(&qword_1005AEC08, &type metadata accessor for SharedSecretKey, &protocol conformance descriptor for SharedSecretKey);
      v54 = v83;
      KeyRepresenting.init(rawValue:)();
      if ((*(v46 + 48))(v54, 1, v45) != 1)
      {
        v74 = *(v46 + 32);
        v75 = v81;
        v74(v81, v54, v45);
        v76 = v97;
        sub_100002CE0(v53 + v97, &qword_1005AEB98, &unk_1004D07C0);
        v77 = v75;
        v28 = v53;
        v74((v53 + v76), v77, v45);
        v55 = v76;
        v56 = 0;
        v52 = v100;
        goto LABEL_19;
      }

      sub_100002CE0(v54, &qword_1005AEB98, &unk_1004D07C0);
      v52 = v100;
    }
  }

  v55 = v97;
  sub_100002CE0(v28 + v97, &qword_1005AEB98, &unk_1004D07C0);
  v56 = 1;
LABEL_19:
  v89(v28 + v55, v56, 1, v45);
  (*(v52 + 16))(v28, v94, v95);
  *(v28 + v19[5]) = v79 == 1;
  v57 = String._bridgeToObjectiveC()();
  v58 = [v40 objectForKeyedSubscript:v57];

  if (v58)
  {
    v102 = v58;
    v60 = v86;
    v59 = v87;
    v61 = swift_dynamicCast() ^ 1;
    v62 = v59;
  }

  else
  {
    v60 = v86;
    v59 = v87;
    v62 = v87;
    v61 = 1;
  }

  v92(v62, v61, 1, v60);
  v66 = v101;
  sub_1000CF904(v59, v53 + v98);
  v67 = String._bridgeToObjectiveC()();
  v68 = [v40 objectForKeyedSubscript:v67];
  swift_unknownObjectRelease();

  (*(v100 + 8))(v94, v95);
  if (v68)
  {
    v102 = v68;
    v69 = swift_dynamicCast() ^ 1;
    v70 = v44;
  }

  else
  {
    v70 = v44;
    v69 = 1;
  }

  v92(v70, v69, 1, v60);
  return sub_1000CF904(v44, v53 + v99);
}

uint64_t type metadata accessor for FriendSharedSecretsRecord(uint64_t a1)
{
  result = qword_1005AEC68;
  if (!qword_1005AEC68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1001B18A0(uint64_t a1)
{
  type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    sub_1001B1988(319, qword_1005AEC78, &type metadata accessor for SharedSecretKey);
    if (v2 <= 0x3F)
    {
      sub_1001B1988(319, &qword_1005AE6B0, &type metadata accessor for Date);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1001B1988(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1001B1ABC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FriendSharedSecretsRecord(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001B1B20(uint64_t a1)
{
  v2 = type metadata accessor for FriendSharedSecretsRecord(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1001B1B7C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

BOOL sub_1001B1BC4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v75 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10004B564(&unk_1005AE5B0, &qword_1004C32F0);
  v9 = __chkstk_darwin(v8 - 8);
  v85 = &v75 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v88 = &v75 - v11;
  v90 = sub_10004B564(&qword_1005AAE00, &qword_1004C4A18);
  v12 = __chkstk_darwin(v90);
  v14 = &v75 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v75 - v15;
  v17 = type metadata accessor for SharedSecretKey();
  v18 = *(v17 - 8);
  v91 = v17;
  v92 = v18;
  __chkstk_darwin(v17);
  v89 = &v75 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_10004B564(&qword_1005AEB98, &unk_1004D07C0);
  v21 = __chkstk_darwin(v20 - 8);
  v86 = &v75 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v24 = &v75 - v23;
  v25 = sub_10004B564(&qword_1005AECE0, qword_1004CF9D0);
  v26 = __chkstk_darwin(v25);
  v87 = &v75 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v29 = &v75 - v28;
  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v30 = type metadata accessor for FriendSharedSecretsRecord(0);
  if (*(a1 + *(v30 + 20)) != *(a2 + *(v30 + 20)))
  {
    return 0;
  }

  v78 = v7;
  v79 = v14;
  v84 = v5;
  v80 = v4;
  v81 = v30;
  v31 = *(v30 + 24);
  v32 = *(v25 + 48);
  v82 = a1;
  sub_100005F04(a1 + v31, v29, &qword_1005AEB98, &unk_1004D07C0);
  v83 = a2;
  sub_100005F04(a2 + v31, &v29[v32], &qword_1005AEB98, &unk_1004D07C0);
  v33 = v91;
  v34 = *(v92 + 48);
  if (v34(v29, 1, v91) == 1)
  {
    if (v34(&v29[v32], 1, v33) == 1)
    {
      v77 = v34;
      sub_100002CE0(v29, &qword_1005AEB98, &unk_1004D07C0);
      goto LABEL_10;
    }

LABEL_8:
    v35 = &qword_1005AECE0;
    v36 = qword_1004CF9D0;
    v37 = v29;
LABEL_30:
    sub_100002CE0(v37, v35, v36);
    return 0;
  }

  sub_100005F04(v29, v24, &qword_1005AEB98, &unk_1004D07C0);
  if (v34(&v29[v32], 1, v33) == 1)
  {
    (*(v92 + 8))(v24, v33);
    goto LABEL_8;
  }

  v77 = v34;
  v38 = v92;
  v39 = v89;
  (*(v92 + 32))(v89, &v29[v32], v33);
  sub_1001B1B7C(&qword_1005AECF8, &type metadata accessor for SharedSecretKey, &protocol conformance descriptor for SharedSecretKey);
  v40 = dispatch thunk of static Equatable.== infix(_:_:)();
  v41 = *(v38 + 8);
  v41(v39, v33);
  v41(v24, v33);
  sub_100002CE0(v29, &qword_1005AEB98, &unk_1004D07C0);
  if ((v40 & 1) == 0)
  {
    return 0;
  }

LABEL_10:
  v42 = v81[7];
  v43 = *(v90 + 48);
  sub_100005F04(v82 + v42, v16, &unk_1005AE5B0, &qword_1004C32F0);
  sub_100005F04(v83 + v42, &v16[v43], &unk_1005AE5B0, &qword_1004C32F0);
  v44 = *(v84 + 48);
  v45 = v80;
  if (v44(v16, 1, v80) == 1)
  {
    if (v44(&v16[v43], 1, v45) == 1)
    {
      v76 = v44;
      sub_100002CE0(v16, &unk_1005AE5B0, &qword_1004C32F0);
      goto LABEL_17;
    }

    goto LABEL_15;
  }

  v46 = v88;
  sub_100005F04(v16, v88, &unk_1005AE5B0, &qword_1004C32F0);
  if (v44(&v16[v43], 1, v45) == 1)
  {
    (*(v84 + 8))(v46, v45);
LABEL_15:
    v35 = &qword_1005AAE00;
    v36 = &qword_1004C4A18;
    v37 = v16;
    goto LABEL_30;
  }

  v76 = v44;
  v47 = v78;
  (*(v84 + 32))(v78, &v16[v43], v45);
  sub_1001B1B7C(&qword_1005AE5D0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v48 = dispatch thunk of static Equatable.== infix(_:_:)();
  v49 = *(v84 + 8);
  v49(v47, v45);
  v49(v46, v45);
  sub_100002CE0(v16, &unk_1005AE5B0, &qword_1004C32F0);
  if ((v48 & 1) == 0)
  {
    return 0;
  }

LABEL_17:
  v50 = v81[8];
  v51 = *(v25 + 48);
  v52 = v87;
  sub_100005F04(v82 + v50, v87, &qword_1005AEB98, &unk_1004D07C0);
  v53 = v91;
  sub_100005F04(v83 + v50, v52 + v51, &qword_1005AEB98, &unk_1004D07C0);
  v54 = v77;
  if (v77(v52, 1, v53) != 1)
  {
    v57 = v86;
    sub_100005F04(v52, v86, &qword_1005AEB98, &unk_1004D07C0);
    v58 = v54(v52 + v51, 1, v53);
    v56 = v79;
    if (v58 != 1)
    {
      v59 = v92;
      v60 = v52 + v51;
      v61 = v89;
      (*(v92 + 32))(v89, v60, v53);
      sub_1001B1B7C(&qword_1005AECF8, &type metadata accessor for SharedSecretKey, &protocol conformance descriptor for SharedSecretKey);
      v62 = dispatch thunk of static Equatable.== infix(_:_:)();
      v63 = *(v59 + 8);
      v63(v61, v53);
      v63(v57, v53);
      sub_100002CE0(v52, &qword_1005AEB98, &unk_1004D07C0);
      if ((v62 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_24;
    }

    (*(v92 + 8))(v57, v53);
    goto LABEL_22;
  }

  v55 = v54(v52 + v51, 1, v53);
  v56 = v79;
  if (v55 != 1)
  {
LABEL_22:
    v35 = &qword_1005AECE0;
    v36 = qword_1004CF9D0;
    v37 = v52;
    goto LABEL_30;
  }

  sub_100002CE0(v52, &qword_1005AEB98, &unk_1004D07C0);
LABEL_24:
  v64 = v81[9];
  v65 = *(v90 + 48);
  sub_100005F04(v82 + v64, v56, &unk_1005AE5B0, &qword_1004C32F0);
  sub_100005F04(v83 + v64, v56 + v65, &unk_1005AE5B0, &qword_1004C32F0);
  v66 = v80;
  v67 = v76;
  if (v76(v56, 1, v80) == 1)
  {
    if (v67(v56 + v65, 1, v66) == 1)
    {
      sub_100002CE0(v56, &unk_1005AE5B0, &qword_1004C32F0);
      return 1;
    }

    goto LABEL_29;
  }

  v68 = v85;
  sub_100005F04(v56, v85, &unk_1005AE5B0, &qword_1004C32F0);
  if (v67(v56 + v65, 1, v66) == 1)
  {
    (*(v84 + 8))(v68, v66);
LABEL_29:
    v35 = &qword_1005AAE00;
    v36 = &qword_1004C4A18;
    v37 = v56;
    goto LABEL_30;
  }

  v70 = v84;
  v71 = v56 + v65;
  v72 = v78;
  (*(v84 + 32))(v78, v71, v66);
  sub_1001B1B7C(&qword_1005AE5D0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v73 = dispatch thunk of static Equatable.== infix(_:_:)();
  v74 = *(v70 + 8);
  v74(v72, v66);
  v74(v68, v66);
  sub_100002CE0(v56, &unk_1005AE5B0, &qword_1004C32F0);
  return (v73 & 1) != 0;
}

uint64_t sub_1001B26D8()
{
  v1 = *v0;
  v2 = v0[1];
  _StringGuts.grow(_:)(16);

  v3._countAndFlagsBits = v1;
  v3._object = v2;
  String.append(_:)(v3);
  v4._countAndFlagsBits = 0x203A617461640ALL;
  v4._object = 0xE700000000000000;
  String.append(_:)(v4);
  v5._countAndFlagsBits = Data.description.getter();
  String.append(_:)(v5);

  return 0x203A79656BLL;
}

uint64_t type metadata accessor for OwnerSharedSecretsRecord(uint64_t a1)
{
  result = qword_1005AED58;
  if (!qword_1005AED58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1001B2818(uint64_t a1)
{
  result = type metadata accessor for UUID();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for SharedSecretKey();
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for Date();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

Swift::Int sub_1001B28CC()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_1001B2940()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

_BYTE *sub_1001B2984@<X0>(_BYTE *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

unint64_t sub_1001B2A64()
{
  result = qword_1005AED98;
  if (!qword_1005AED98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AED98);
  }

  return result;
}

uint64_t sub_1001B2AB8(void *a1)
{
  v3 = v1;
  v5 = sub_10004B564(&qword_1005AEDC8, &qword_1004CFC58);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10[-v7];
  sub_100011AEC(a1, a1[3]);
  sub_1001B3968();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v10[15] = 0;
  type metadata accessor for UUID();
  sub_1001B3B24(&qword_1005AAB60, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v10[14] = *(v3 + *(type metadata accessor for OwnerSharedSecretsRecord(0) + 20));
    v10[13] = 1;
    sub_1001B3AD0();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v10[12] = 2;
    type metadata accessor for SharedSecretKey();
    sub_1001B3B24(&qword_1005AEDD8, &type metadata accessor for SharedSecretKey, &protocol conformance descriptor for SharedSecretKey);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v10[11] = 3;
    type metadata accessor for Date();
    sub_1001B3B24(&qword_1005A9848, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1001B2D74@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v26 = type metadata accessor for Date();
  v24 = *(v26 - 8);
  __chkstk_darwin(v26);
  v27 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for SharedSecretKey();
  v29 = *(v4 - 8);
  v30 = v4;
  __chkstk_darwin(v4);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for UUID();
  v28 = *(v7 - 8);
  __chkstk_darwin(v7);
  v31 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_10004B564(&qword_1005AEDA8, &qword_1004CFC50);
  v32 = *(v34 - 8);
  __chkstk_darwin(v34);
  v10 = &v24 - v9;
  v11 = type metadata accessor for OwnerSharedSecretsRecord(0);
  __chkstk_darwin(v11);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100011AEC(a1, a1[3]);
  sub_1001B3968();
  v33 = v10;
  v14 = v35;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v14)
  {
    return sub_100004984(a1);
  }

  v15 = v6;
  v35 = v11;
  v16 = v13;
  v18 = v29;
  v17 = v30;
  v40 = 0;
  sub_1001B3B24(&qword_1005AAB30, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v19 = v31;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v20 = *(v28 + 32);
  v31 = v7;
  v20(v16, v19, v7);
  v38 = 1;
  sub_1001B39BC();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v21 = v35;
  *(v16 + *(v35 + 20)) = v39;
  v37 = 2;
  sub_1001B3B24(&qword_1005AEDC0, &type metadata accessor for SharedSecretKey, &protocol conformance descriptor for SharedSecretKey);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v18 + 32))(v16 + *(v21 + 24), v15, v17);
  v36 = 3;
  sub_1001B3B24(&qword_1005A9820, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v22 = v26;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v32 + 8))(v33, v34);
  (*(v24 + 32))(v16 + *(v21 + 28), v27, v22);
  sub_1001B3A10(v16, v25);
  sub_100004984(a1);
  return sub_1001B3A74(v16);
}

uint64_t sub_1001B3358()
{
  v1 = 25705;
  v2 = 0x6553646572616873;
  if (*v0 != 2)
  {
    v2 = 0x6574614465736162;
  }

  if (*v0)
  {
    v1 = 1701869940;
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

uint64_t sub_1001B33C8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1001B3CD8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1001B33F0(uint64_t a1)
{
  v2 = sub_1001B3968();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001B342C(uint64_t a1)
{
  v2 = sub_1001B3968();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001B349C(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v13[0] = a1;
      LOWORD(v13[1]) = a2;
      BYTE2(v13[1]) = BYTE2(a2);
      BYTE3(v13[1]) = BYTE3(a2);
      BYTE4(v13[1]) = BYTE4(a2);
      BYTE5(v13[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_1001B362C(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_1000049D0(a3, a4);
    return v10 & 1;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v13, 0, 14);
LABEL_9:
  sub_1001FC6D0(v13, a3, a4, &v12);
  v10 = v4;
  sub_1000049D0(a3, a4);
  if (!v4)
  {
    v10 = v12;
  }

  return v10 & 1;
}