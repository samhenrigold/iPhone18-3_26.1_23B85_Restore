uint64_t sub_10006FB2C()
{
  v36 = v0;
  *(v0 + 16) = *(v0 + 64);
  *(v0 + 24) = *(v0 + 72);
  strcpy((v0 + 32), "mappingPacket");
  *(v0 + 46) = -4864;
  *(v0 + 48) = 49;
  *(v0 + 56) = 0xE100000000000000;

  v1 = Handle.isPhoneNumber.getter();
  Handle.identifier.getter();
  if (v1)
  {
    Destination.init(phoneNumber:)();
  }

  else
  {
    Destination.init(email:)();
  }

  if (qword_1005A7EC8 != -1)
  {
    swift_once();
  }

  v3 = *(v0 + 176);
  v2 = *(v0 + 184);
  v4 = *(v0 + 160);
  v5 = *(v0 + 168);
  v6 = type metadata accessor for Logger();
  sub_10000A6F0(v6, qword_1005DFB18);
  v34 = *(v5 + 16);
  v34(v3, v2, v4);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v0 + 168);
  v11 = *(v0 + 176);
  v12 = *(v0 + 160);
  if (v9)
  {
    v13 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    *v13 = 136447235;
    *(v13 + 4) = sub_10000D01C(0xD00000000000002CLL, 0x80000001004DECD0, &v35);
    *(v13 + 12) = 2160;
    *(v13 + 14) = 1752392040;
    *(v13 + 22) = 2081;

    v32 = v8;
    v14 = sub_1002EB520();
    v16 = v15;

    v17 = sub_10000D01C(v14, v16, &v35);

    *(v13 + 24) = v17;
    *(v13 + 32) = 2160;
    *(v13 + 34) = 1752392040;
    *(v13 + 42) = 2081;
    sub_10007CBF4(&qword_1005A9260, &type metadata accessor for Destination, &protocol conformance descriptor for Destination);
    v18 = dispatch thunk of CustomStringConvertible.description.getter();
    v20 = v19;
    v21 = *(v10 + 8);
    v21(v11, v12);
    v22 = sub_10000D01C(v18, v20, &v35);

    *(v13 + 44) = v22;
    _os_log_impl(&_mh_execute_header, v7, v32, "CommandManager %{public}s with\npayload: %{private,mask.hash}s\nto destination: %{private,mask.hash}s", v13, 0x34u);
    swift_arrayDestroy();
  }

  else
  {

    v21 = *(v10 + 8);
    v21(v11, v12);
  }

  *(v0 + 232) = v21;
  v23 = *(v0 + 184);
  v25 = *(v0 + 160);
  v24 = *(v0 + 168);
  v26 = *(v0 + 128);
  v28 = *(v0 + 104);
  v27 = *(v0 + 112);
  v33 = *(v0 + 216);
  sub_10004B564(&qword_1005A9270, &qword_1004C5810);
  v29 = (*(v24 + 80) + 32) & ~*(v24 + 80);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_1004C1900;
  v34(v30 + v29, v23, v25);
  (*(v27 + 56))(v26, 1, 1, v28);
  sub_100293190(_swiftEmptyArrayStorage);
  sub_100293190(_swiftEmptyArrayStorage);
  MessagingOptions.init(destinations:expectsPeerResponse:responseIdentifier:timeToLive:fireAndForget:requiredCapabilities:lackingCapabilities:queueOneIdentifier:)();
  *(v0 + 240) = sub_1002EB3FC();

  return _swift_task_switch(sub_10006FFA8, v33, 0);
}

uint64_t sub_10006FFA8()
{
  v1 = swift_task_alloc();
  v0[31] = v1;
  *v1 = v0;
  v1[1] = sub_100070050;
  v2 = v0[30];
  v3 = v0[19];
  v4 = v0[15];

  return InternetMessaging.send(dictionary:messageOptions:)(v4, v2, v3);
}

uint64_t sub_100070050()
{
  v2 = *v1;
  *(*v1 + 256) = v0;

  if (v0)
  {
    v3 = v2[27];
    v4 = sub_100070288;
  }

  else
  {
    v6 = v2[14];
    v5 = v2[15];
    v8 = v2 + 12;
    v7 = v2[12];
    (*(v6 + 8))(v5, v8[1]);

    v4 = sub_100070190;
    v3 = v7;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100070190()
{
  v1 = v0[29];
  v2 = v0[23];
  v3 = v0[20];
  v5 = v0[18];
  v4 = v0[19];
  v6 = v0[17];

  (*(v5 + 8))(v4, v6);
  v1(v2, v3);

  v7 = v0[1];

  return v7();
}

uint64_t sub_100070288()
{
  v1 = *(v0 + 96);

  return _swift_task_switch(sub_1000702F4, v1, 0);
}

uint64_t sub_1000702F4()
{
  v1 = v0[29];
  v2 = v0[23];
  v3 = v0[20];
  v5 = v0[18];
  v4 = v0[19];
  v6 = v0[17];

  (*(v5 + 8))(v4, v6);
  v1(v2, v3);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1000703E4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100070488(uint64_t a1)
{
  *(v2 + 80) = a1;
  *(v2 + 88) = v1;
  return _swift_task_switch(sub_1000704A8, v1, 0);
}

uint64_t sub_1000704A8()
{
  v15 = v0;
  if (qword_1005A7EC8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 80);
  v2 = type metadata accessor for Logger();
  *(v0 + 96) = sub_10000A6F0(v2, qword_1005DFB18);
  v3 = *v1;
  v4 = *(v1 + 8);
  *(v0 + 16) = *(v1 + 16);
  *(v0 + 32) = *(v1 + 32);

  sub_10007C30C(v0 + 16, v0 + 48);
  sub_10007C30C(v0 + 32, v0 + 64);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  sub_10007C2B8(v0 + 16);
  sub_10007C2B8(v0 + 32);
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v14 = v8;
    *v7 = 141558275;
    *(v7 + 4) = 1752392040;
    *(v7 + 12) = 2081;
    v9 = sub_1002EB520();
    v11 = sub_10000D01C(v9, v10, &v14);

    *(v7 + 14) = v11;
    _os_log_impl(&_mh_execute_header, v5, v6, "CommandManager IDS messageReceived payload extract:%{private,mask.hash}s", v7, 0x16u);
    sub_100004984(v8);
  }

  v12 = swift_task_alloc();
  *(v0 + 104) = v12;
  *v12 = v0;
  v12[1] = sub_1000706D4;

  return sub_10006B438(v3, v4);
}

uint64_t sub_1000706D4(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  v4[14] = a1;
  v4[15] = a2;

  if (v2)
  {
    v6 = v5[1];

    return v6();
  }

  else
  {
    v8 = v4[11];

    return _swift_task_switch(sub_10007081C, v8, 0);
  }
}

uint64_t sub_10007081C()
{
  v11 = v0;
  v1 = v0[15];
  if (v1)
  {

    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v2, v3))
    {
      v4 = v0[14];
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v10 = v6;
      *v5 = 141558275;
      *(v5 + 4) = 1752392040;
      *(v5 + 12) = 2081;
      v7 = sub_10000D01C(v4, v1, &v10);

      *(v5 + 14) = v7;
      _os_log_impl(&_mh_execute_header, v2, v3, "CommandManager send import packet to server and get reponse ID: %{private,mask.hash}s", v5, 0x16u);
      sub_100004984(v6);
    }

    else
    {
    }
  }

  v8 = v0[1];

  return v8();
}

uint64_t sub_100070994(uint64_t a1, uint64_t a2, uint64_t a3)
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

  return _swift_task_switch(sub_100070B1C, v3, 0);
}

uint64_t sub_100070B1C()
{
  v55 = v0;
  if (qword_1005A7EC8 != -1)
  {
    swift_once();
  }

  v1 = v0[14];
  v2 = v0[11];
  v3 = v0[12];
  v4 = v0[9];
  v5 = v0[8];
  v6 = v0[6];
  v51 = v0[5];
  v53 = v0[7];
  v7 = v0[3];
  v47 = v0[10];
  v49 = v0[4];
  v8 = v0[2];
  v9 = type metadata accessor for Logger();
  sub_10000A6F0(v9, qword_1005DFB18);
  v10 = v1;
  v11 = *(v3 + 16);
  v11(v10, v8, v2);
  (*(v4 + 16))(v47, v7, v5);
  (*(v6 + 16))(v53, v49, v51);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  v14 = os_log_type_enabled(v12, v13);
  v15 = v0[14];
  if (v14)
  {
    v46 = v13;
    v16 = v0[12];
    v17 = v0[13];
    v18 = v0[11];
    v19 = v0[9];
    v44 = v0[8];
    v45 = v0[10];
    v50 = v0[7];
    v52 = v0[6];
    v48 = v0[5];
    v20 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    *v20 = 136447747;
    *(v20 + 4) = sub_10000D01C(0xD00000000000002CLL, 0x80000001004DECA0, &v54);
    *(v20 + 12) = 2160;
    *(v20 + 14) = 1752392040;
    *(v20 + 22) = 2081;
    v11(v17, v15, v18);
    v21 = String.init<A>(describing:)();
    v23 = v22;
    (*(v16 + 8))(v15, v18);
    v24 = sub_10000D01C(v21, v23, &v54);

    *(v20 + 24) = v24;
    *(v20 + 32) = 2160;
    *(v20 + 34) = 1752392040;
    *(v20 + 42) = 2081;
    sub_10007CBF4(&qword_1005A92C0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v25 = dispatch thunk of CustomStringConvertible.description.getter();
    v27 = v26;
    (*(v19 + 8))(v45, v44);
    v28 = sub_10000D01C(v25, v27, &v54);

    *(v20 + 44) = v28;
    *(v20 + 52) = 2160;
    *(v20 + 54) = 1752392040;
    *(v20 + 62) = 2081;
    sub_10007CBF4(&qword_1005A9260, &type metadata accessor for Destination, &protocol conformance descriptor for Destination);
    v29 = dispatch thunk of CustomStringConvertible.description.getter();
    v31 = v30;
    (*(v52 + 8))(v50, v48);
    v32 = sub_10000D01C(v29, v31, &v54);

    *(v20 + 64) = v32;
    _os_log_impl(&_mh_execute_header, v12, v46, "CommandManager IDS %{public}s with\naccount: %{private,mask.hash}s\nid: %{private,mask.hash}s\nfrom: %{private,mask.hash}s", v20, 0x48u);
    swift_arrayDestroy();
  }

  else
  {
    v33 = v0[11];
    v34 = v0[12];
    v36 = v0[9];
    v35 = v0[10];
    v38 = v0[7];
    v37 = v0[8];
    v39 = v12;
    v41 = v0[5];
    v40 = v0[6];

    (*(v40 + 8))(v38, v41);
    (*(v36 + 8))(v35, v37);
    (*(v34 + 8))(v15, v33);
  }

  v42 = v0[1];

  return v42();
}

uint64_t sub_100070FA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[30] = a4;
  v5[31] = v4;
  v5[28] = a2;
  v5[29] = a3;
  v5[27] = a1;
  type metadata accessor for FenceTriggerEnvelopeV1(0);
  v5[32] = swift_task_alloc();
  type metadata accessor for FenceShareInviteEnvelopeV1(0);
  v5[33] = swift_task_alloc();
  v6 = type metadata accessor for Destination();
  v5[34] = v6;
  v5[35] = *(v6 - 8);
  v5[36] = swift_task_alloc();
  v7 = type metadata accessor for Account();
  v5[37] = v7;
  v5[38] = *(v7 - 8);
  v5[39] = swift_task_alloc();
  v5[40] = swift_task_alloc();

  return _swift_task_switch(sub_100071130, v4, 0);
}

uint64_t sub_100071130()
{
  v69 = v0;
  if (qword_1005A7EC8 != -1)
  {
    swift_once();
  }

  v1 = v0[40];
  v3 = v0[37];
  v2 = v0[38];
  v4 = v0[35];
  v67 = v0[36];
  v5 = v0[34];
  v6 = v0[28];
  v7 = v0[27];
  v8 = type metadata accessor for Logger();
  v0[41] = sub_10000A6F0(v8, qword_1005DFB18);
  v9 = v1;
  v10 = *(v2 + 16);
  v10(v9, v7, v3);
  (*(v4 + 16))(v67, v6, v5);

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  v13 = os_log_type_enabled(v11, v12);
  v14 = v0[40];
  if (v13)
  {
    v66 = v12;
    v15 = v0[38];
    v16 = v0[39];
    v17 = v0[37];
    v18 = v0[35];
    v64 = v0[34];
    v65 = v0[36];
    v19 = swift_slowAlloc();
    v68[0] = swift_slowAlloc();
    *v19 = 136447747;
    *(v19 + 4) = sub_10000D01C(0xD00000000000003BLL, 0x80000001004DEB60, v68);
    *(v19 + 12) = 2160;
    *(v19 + 14) = 1752392040;
    *(v19 + 22) = 2081;
    v10(v16, v14, v17);
    v20 = String.init<A>(describing:)();
    v22 = v21;
    (*(v15 + 8))(v14, v17);
    v23 = sub_10000D01C(v20, v22, v68);

    *(v19 + 24) = v23;
    *(v19 + 32) = 2160;
    *(v19 + 34) = 1752392040;
    *(v19 + 42) = 2081;
    sub_10007CBF4(&qword_1005A9260, &type metadata accessor for Destination, &protocol conformance descriptor for Destination);
    v24 = dispatch thunk of CustomStringConvertible.description.getter();
    v26 = v25;
    (*(v18 + 8))(v65, v64);
    v27 = sub_10000D01C(v24, v26, v68);

    *(v19 + 44) = v27;
    *(v19 + 52) = 2160;
    *(v19 + 54) = 1752392040;
    *(v19 + 62) = 2081;
    sub_10004B564(&qword_1005A9268, &unk_1004D38E0);
    v28 = Dictionary.description.getter();
    v30 = sub_10000D01C(v28, v29, v68);

    *(v19 + 64) = v30;
    _os_log_impl(&_mh_execute_header, v11, v66, "CommandManager IDS %{public}s with\naccount: %{private,mask.hash}s\ndestination %{private,mask.hash}s\ndictionary: %{private,mask.hash}s", v19, 0x48u);
    swift_arrayDestroy();
  }

  else
  {
    v31 = v0[37];
    v32 = v0[38];
    v34 = v0[35];
    v33 = v0[36];
    v35 = v0[34];

    (*(v34 + 8))(v33, v35);
    (*(v32 + 8))(v14, v31);
  }

  v43 = sub_1002E2698(v36);
  v45 = v44;

  v46 = Logger.logObject.getter();
  v47 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v46, v47))
  {
    v49 = swift_slowAlloc();
    v68[0] = swift_slowAlloc();
    *v49 = 136446466;
    *(v49 + 4) = sub_10000D01C(0xD00000000000003BLL, 0x80000001004DEB60, v68);
    *(v49 + 12) = 2082;

    v50 = sub_10000D01C(v43, v45, v68);

    *(v49 + 14) = v50;
    _os_log_impl(&_mh_execute_header, v46, v47, "%{public}s received: %{public}s", v49, 0x16u);
    swift_arrayDestroy();
  }

  v71._countAndFlagsBits = v43;
  v71._object = v45;
  v51 = sub_10007C1B8(v71);
  if (v51 <= 1)
  {
    if (v51)
    {
      v63 = swift_task_alloc();
      v0[44] = v63;
      *v63 = v0;
      v63[1] = sub_100071BF8;
      v53 = v0[30];
      v54 = 1;
      v55 = 1;
      goto LABEL_26;
    }

    sub_1002EB5D0(v58, v0 + 8);
    v59 = swift_task_alloc();
    v0[42] = v59;
    *v59 = v0;
    v59[1] = sub_100071A0C;

    return sub_100070488((v0 + 8));
  }

  else
  {
    if (v51 == 2)
    {
      v60 = swift_task_alloc();
      v0[48] = v60;
      *v60 = v0;
      v60[1] = sub_100072184;
      v53 = v0[30];
      v54 = 2;
      v55 = 2;
      goto LABEL_26;
    }

    if (v51 == 3)
    {
      v52 = swift_task_alloc();
      v0[52] = v52;
      *v52 = v0;
      v52[1] = sub_100072710;
      v53 = v0[30];
      v54 = 2;
      v55 = 3;
LABEL_26:

      return sub_100073ABC(v53, v54, v55);
    }

    sub_10005A48C();
    v61 = swift_allocError();
    *v62 = 6;
    swift_willThrow();
    swift_errorRetain();
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v68[0] = swift_slowAlloc();
      *v39 = 136446466;
      *(v39 + 4) = sub_10000D01C(0xD00000000000003BLL, 0x80000001004DEB60, v68);
      *(v39 + 12) = 2082;
      v0[26] = v61;
      swift_errorRetain();
      sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
      v40 = String.init<A>(describing:)();
      v42 = sub_10000D01C(v40, v41, v68);

      *(v39 + 14) = v42;
      _os_log_impl(&_mh_execute_header, v37, v38, "%{public}s error: %{public}s", v39, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    v56 = v0[1];

    return v56();
  }
}

uint64_t sub_100071A0C()
{
  v2 = *v1;
  *(*v1 + 344) = v0;

  v3 = *(v2 + 248);
  if (v0)
  {
    v4 = sub_100072C84;
  }

  else
  {
    v4 = sub_100071B38;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100071B38()
{
  *(v0 + 160) = *(v0 + 64);
  sub_10007C2B8(v0 + 160);
  *(v0 + 176) = *(v0 + 80);
  sub_10007C2B8(v0 + 176);
  *(v0 + 192) = *(v0 + 96);
  sub_10007C2B8(v0 + 192);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100071BF8()
{
  v2 = *v1;
  *(*v1 + 360) = v0;

  v3 = *(v2 + 248);
  if (v0)
  {
    v4 = sub_100072EAC;
  }

  else
  {
    v4 = sub_100071D24;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100071D24()
{
  v15 = v0;
  v1 = v0[45];
  v2 = v0[33];

  sub_1002E48F4(v3, v2);
  if (v1)
  {
    swift_errorRetain();
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v14[0] = swift_slowAlloc();
      *v6 = 136446466;
      *(v6 + 4) = sub_10000D01C(0xD00000000000003BLL, 0x80000001004DEB60, v14);
      *(v6 + 12) = 2082;
      v0[26] = v1;
      swift_errorRetain();
      sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
      v7 = String.init<A>(describing:)();
      v9 = sub_10000D01C(v7, v8, v14);

      *(v6 + 14) = v9;
      _os_log_impl(&_mh_execute_header, v4, v5, "%{public}s error: %{public}s", v6, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    v13 = v0[1];

    return v13();
  }

  else
  {
    v10 = swift_task_alloc();
    v0[46] = v10;
    *v10 = v0;
    v10[1] = sub_100071FAC;
    v11 = v0[33];

    return sub_1000762D0(v11);
  }
}

uint64_t sub_100071FAC()
{
  v2 = *v1;
  *(*v1 + 376) = v0;

  v3 = *(v2 + 248);
  if (v0)
  {
    v4 = sub_1000730A4;
  }

  else
  {
    v4 = sub_1000720D8;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1000720D8()
{
  sub_10007C258(*(v0 + 264), type metadata accessor for FenceShareInviteEnvelopeV1);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100072184()
{
  v2 = *v1;
  *(*v1 + 392) = v0;

  v3 = *(v2 + 248);
  if (v0)
  {
    v4 = sub_1000732B8;
  }

  else
  {
    v4 = sub_1000722B0;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1000722B0()
{
  v15 = v0;
  v1 = v0[49];
  v2 = v0[32];

  sub_1002E5F88(v3, v2);
  if (v1)
  {
    swift_errorRetain();
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v14[0] = swift_slowAlloc();
      *v6 = 136446466;
      *(v6 + 4) = sub_10000D01C(0xD00000000000003BLL, 0x80000001004DEB60, v14);
      *(v6 + 12) = 2082;
      v0[26] = v1;
      swift_errorRetain();
      sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
      v7 = String.init<A>(describing:)();
      v9 = sub_10000D01C(v7, v8, v14);

      *(v6 + 14) = v9;
      _os_log_impl(&_mh_execute_header, v4, v5, "%{public}s error: %{public}s", v6, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    v13 = v0[1];

    return v13();
  }

  else
  {
    v10 = swift_task_alloc();
    v0[50] = v10;
    *v10 = v0;
    v10[1] = sub_100072538;
    v11 = v0[32];

    return sub_100076AD0(v11);
  }
}

uint64_t sub_100072538()
{
  v2 = *v1;
  *(*v1 + 408) = v0;

  v3 = *(v2 + 248);
  if (v0)
  {
    v4 = sub_1000734B0;
  }

  else
  {
    v4 = sub_100072664;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100072664()
{
  sub_10007C258(*(v0 + 256), type metadata accessor for FenceTriggerEnvelopeV1);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100072710()
{
  v2 = *v1;
  *(*v1 + 424) = v0;

  v3 = *(v2 + 248);
  if (v0)
  {
    v4 = sub_1000736C4;
  }

  else
  {
    v4 = sub_10007283C;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10007283C()
{
  v13 = v0;
  v1 = v0[53];

  sub_1002E4024(v2, (v0 + 2));
  if (v1)
  {
    swift_errorRetain();
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v12[0] = swift_slowAlloc();
      *v5 = 136446466;
      *(v5 + 4) = sub_10000D01C(0xD00000000000003BLL, 0x80000001004DEB60, v12);
      *(v5 + 12) = 2082;
      v0[26] = v1;
      swift_errorRetain();
      sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
      v6 = String.init<A>(describing:)();
      v8 = sub_10000D01C(v6, v7, v12);

      *(v5 + 14) = v8;
      _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s error: %{public}s", v5, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    v11 = v0[1];

    return v11();
  }

  else
  {
    v9 = swift_task_alloc();
    v0[54] = v9;
    *v9 = v0;
    v9[1] = sub_100072AC0;

    return sub_1000773E8((v0 + 2));
  }
}

uint64_t sub_100072AC0()
{
  v2 = *v1;
  *(*v1 + 440) = v0;

  v3 = *(v2 + 248);
  if (v0)
  {
    v4 = sub_1000738BC;
  }

  else
  {
    v4 = sub_100072BEC;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100072BEC()
{
  sub_10007C204(v0 + 16);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100072C84()
{
  v11 = v0;
  *(v0 + 112) = *(v0 + 64);
  sub_10007C2B8(v0 + 112);
  *(v0 + 128) = *(v0 + 80);
  sub_10007C2B8(v0 + 128);
  *(v0 + 144) = *(v0 + 96);
  sub_10007C2B8(v0 + 144);
  v1 = *(v0 + 344);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v4 = 136446466;
    *(v4 + 4) = sub_10000D01C(0xD00000000000003BLL, 0x80000001004DEB60, &v10);
    *(v4 + 12) = 2082;
    *(v0 + 208) = v1;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v5 = String.init<A>(describing:)();
    v7 = sub_10000D01C(v5, v6, &v10);

    *(v4 + 14) = v7;
    _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s error: %{public}s", v4, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_100072EAC()
{
  v11 = v0;
  v1 = v0[45];
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v4 = 136446466;
    *(v4 + 4) = sub_10000D01C(0xD00000000000003BLL, 0x80000001004DEB60, &v10);
    *(v4 + 12) = 2082;
    v0[26] = v1;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v5 = String.init<A>(describing:)();
    v7 = sub_10000D01C(v5, v6, &v10);

    *(v4 + 14) = v7;
    _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s error: %{public}s", v4, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v8 = v0[1];

  return v8();
}

uint64_t sub_1000730A4()
{
  v11 = v0;
  sub_10007C258(v0[33], type metadata accessor for FenceShareInviteEnvelopeV1);
  v1 = v0[47];
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v4 = 136446466;
    *(v4 + 4) = sub_10000D01C(0xD00000000000003BLL, 0x80000001004DEB60, &v10);
    *(v4 + 12) = 2082;
    v0[26] = v1;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v5 = String.init<A>(describing:)();
    v7 = sub_10000D01C(v5, v6, &v10);

    *(v4 + 14) = v7;
    _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s error: %{public}s", v4, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v8 = v0[1];

  return v8();
}

uint64_t sub_1000732B8()
{
  v11 = v0;
  v1 = v0[49];
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v4 = 136446466;
    *(v4 + 4) = sub_10000D01C(0xD00000000000003BLL, 0x80000001004DEB60, &v10);
    *(v4 + 12) = 2082;
    v0[26] = v1;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v5 = String.init<A>(describing:)();
    v7 = sub_10000D01C(v5, v6, &v10);

    *(v4 + 14) = v7;
    _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s error: %{public}s", v4, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v8 = v0[1];

  return v8();
}

uint64_t sub_1000734B0()
{
  v11 = v0;
  sub_10007C258(v0[32], type metadata accessor for FenceTriggerEnvelopeV1);
  v1 = v0[51];
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v4 = 136446466;
    *(v4 + 4) = sub_10000D01C(0xD00000000000003BLL, 0x80000001004DEB60, &v10);
    *(v4 + 12) = 2082;
    v0[26] = v1;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v5 = String.init<A>(describing:)();
    v7 = sub_10000D01C(v5, v6, &v10);

    *(v4 + 14) = v7;
    _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s error: %{public}s", v4, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v8 = v0[1];

  return v8();
}

uint64_t sub_1000736C4()
{
  v11 = v0;
  v1 = v0[53];
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v4 = 136446466;
    *(v4 + 4) = sub_10000D01C(0xD00000000000003BLL, 0x80000001004DEB60, &v10);
    *(v4 + 12) = 2082;
    v0[26] = v1;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v5 = String.init<A>(describing:)();
    v7 = sub_10000D01C(v5, v6, &v10);

    *(v4 + 14) = v7;
    _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s error: %{public}s", v4, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v8 = v0[1];

  return v8();
}

uint64_t sub_1000738BC()
{
  v11 = v0;
  sub_10007C204((v0 + 2));
  v1 = v0[55];
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v4 = 136446466;
    *(v4 + 4) = sub_10000D01C(0xD00000000000003BLL, 0x80000001004DEB60, &v10);
    *(v4 + 12) = 2082;
    v0[26] = v1;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v5 = String.init<A>(describing:)();
    v7 = sub_10000D01C(v5, v6, &v10);

    *(v4 + 14) = v7;
    _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s error: %{public}s", v4, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v8 = v0[1];

  return v8();
}

uint64_t sub_100073ABC(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 296) = a2;
  *(v4 + 304) = v3;
  *(v4 + 600) = a3;
  *(v4 + 288) = a1;
  *(v4 + 312) = *v3;
  sub_10004B564(&qword_1005A9280, &qword_1004C27F8);
  *(v4 + 320) = swift_task_alloc();
  *(v4 + 328) = swift_task_alloc();
  v5 = type metadata accessor for Destination();
  *(v4 + 336) = v5;
  *(v4 + 344) = *(v5 - 8);
  *(v4 + 352) = swift_task_alloc();
  v6 = type metadata accessor for Friend();
  *(v4 + 360) = v6;
  *(v4 + 368) = *(v6 - 8);
  *(v4 + 376) = swift_task_alloc();
  v7 = type metadata accessor for Handle();
  *(v4 + 384) = v7;
  *(v4 + 392) = *(v7 - 8);
  *(v4 + 400) = swift_task_alloc();
  *(v4 + 408) = swift_task_alloc();
  *(v4 + 416) = swift_task_alloc();
  v8 = swift_task_alloc();
  *(v4 + 424) = v8;
  *v8 = v4;
  v8[1] = sub_100073CF0;

  return daemon.getter();
}

uint64_t sub_100073CF0(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  v2[54] = a1;

  v3 = swift_task_alloc();
  v2[55] = v3;
  v4 = type metadata accessor for Daemon();
  v2[56] = v4;
  v5 = type metadata accessor for DataManager(0);
  v6 = sub_10007CBF4(&unk_1005AFA50, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v2[57] = v6;
  v7 = sub_10007CBF4(&qword_1005A90D0, type metadata accessor for DataManager, &unk_1004D1410);
  *v3 = v9;
  v3[1] = sub_100073ED0;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_100073ED0(uint64_t a1)
{
  v3 = *v2;
  v3[58] = a1;
  v3[59] = v1;

  if (v1)
  {
    v4 = v3[38];

    return _swift_task_switch(sub_10007613C, v4, 0);
  }

  else
  {

    v5 = swift_task_alloc();
    v3[60] = v5;
    *v5 = v3;
    v5[1] = sub_100074044;

    return daemon.getter();
  }
}

uint64_t sub_100074044(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v2[61] = a1;

  v4 = swift_task_alloc();
  v2[62] = v4;
  v5 = sub_10004B564(&qword_1005A90E0, &qword_1004C2490);
  v6 = sub_10001DF0C(&qword_1005A90E8, &qword_1005A90E0, &qword_1004C2490, &unk_1004D4FC0);
  *v4 = v3;
  v4[1] = sub_100074208;
  v7 = v2[57];
  v8 = v2[56];

  return ActorServiceDaemon.getService<A>()(v8, v5, v7, v6);
}

uint64_t sub_100074208(uint64_t a1)
{
  v3 = *v2;
  v3[63] = a1;
  v3[64] = v1;

  if (v1)
  {
    v4 = v3[38];
    v5 = sub_100076200;
  }

  else
  {
    v6 = v3[38];

    v5 = sub_100074330;
    v4 = v6;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_100074330()
{
  v1 = v0[37];
  v0[34] = _swiftEmptyArrayStorage;
  if (v1)
  {
    v14 = v0[58];
    v15 = sub_100074A00;
LABEL_11:

    return _swift_task_switch(v15, v14, 0);
  }

  if ((v1 & 2) != 0)
  {
    v14 = v0[58];
    v15 = sub_100075358;
    goto LABEL_11;
  }

  v0[71] = _swiftEmptyArrayStorage;
  v2 = _swiftEmptyArrayStorage[2];
  if (v2)
  {
    v3 = v0[49];
    v4 = v0[46];
    sub_10000E8E0(0, v2, 0);
    v5 = *(v4 + 16);
    v4 += 16;
    v6 = _swiftEmptyArrayStorage + ((*(v4 + 64) + 32) & ~*(v4 + 64));
    v69 = *(v4 + 56);
    v72 = v5;
    v7 = (v4 - 8);
    do
    {
      v8 = v0[47];
      v9 = v0[45];
      v72(v8, v6, v9);
      Friend.handle.getter();
      (*v7)(v8, v9);
      v11 = _swiftEmptyArrayStorage[2];
      v10 = _swiftEmptyArrayStorage[3];
      if (v11 >= v10 >> 1)
      {
        sub_10000E8E0((v10 > 1), v11 + 1, 1);
      }

      v12 = v0[52];
      v13 = v0[48];
      _swiftEmptyArrayStorage[2] = v11 + 1;
      (*(v3 + 32))(_swiftEmptyArrayStorage + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v11, v12, v13);
      v6 += v69;
      --v2;
    }

    while (v2);
    v16 = _swiftEmptyArrayStorage[2];
    if (v16)
    {
      v17 = v0[49];
      sub_10002B3C0(0, v16, 0);
      v73 = *(v17 + 16);
      v18 = _swiftEmptyArrayStorage + ((*(v17 + 80) + 32) & ~*(v17 + 80));
      v68 = *(v17 + 72);
      v70 = (v17 + 8);
      v66 = v18;
      do
      {
        v19 = v0[50];
        v20 = v0[48];
        v73(v19, v18, v20);
        v21 = Handle.identifier.getter();
        v23 = v22;
        v67 = *v70;
        (*v70)(v19, v20);
        v25 = _swiftEmptyArrayStorage[2];
        v24 = _swiftEmptyArrayStorage[3];
        if (v25 >= v24 >> 1)
        {
          sub_10002B3C0((v24 > 1), v25 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v25 + 1;
        v26 = &_swiftEmptyArrayStorage[2 * v25];
        v26[4] = v21;
        v26[5] = v23;
        v18 += v68;
        --v16;
      }

      while (v16);
      v27 = _swiftEmptyArrayStorage[2];
      if (v27)
      {
        v28 = _swiftEmptyArrayStorage;
        v29 = v66;
        while (1)
        {
          v35 = v0[51];
          v36 = v0[48];
          v37 = v29;
          (v73)(v35);
          v38 = Handle.siblingIdentifiers.getter();
          isUniquelyReferenced_nonNull_native = v67(v35, v36);
          v39 = *(v38 + 16);
          v40 = *(v28 + 2);
          v41 = v40 + v39;
          if (__OFADD__(v40, v39))
          {
            goto LABEL_54;
          }

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          if (isUniquelyReferenced_nonNull_native && v41 <= *(v28 + 3) >> 1)
          {
            if (*(v38 + 16))
            {
              goto LABEL_32;
            }
          }

          else
          {
            if (v40 <= v41)
            {
              v42 = v40 + v39;
            }

            else
            {
              v42 = v40;
            }

            isUniquelyReferenced_nonNull_native = sub_1001FC900(isUniquelyReferenced_nonNull_native, v42, 1, v28);
            v28 = isUniquelyReferenced_nonNull_native;
            if (*(v38 + 16))
            {
LABEL_32:
              if ((*(v28 + 3) >> 1) - *(v28 + 2) < v39)
              {
                goto LABEL_56;
              }

              swift_arrayInitWithCopy();

              if (v39)
              {
                v43 = *(v28 + 2);
                v44 = __OFADD__(v43, v39);
                v45 = v43 + v39;
                if (v44)
                {
                  goto LABEL_57;
                }

                *(v28 + 2) = v45;
              }

              goto LABEL_22;
            }
          }

          if (v39)
          {
            goto LABEL_55;
          }

LABEL_22:
          v29 = &v37[v68];
          if (!--v27)
          {

            goto LABEL_38;
          }
        }
      }
    }
  }

  v28 = _swiftEmptyArrayStorage;
LABEL_38:
  sub_1002492B0(v28);
  sub_10007AB40(_swiftEmptyArrayStorage);
  v46 = v31;
  v75 = v31[2];
  if (v75)
  {
    v47 = 0;
    v48 = v0[43];
    v49 = (v48 + 48);
    v71 = v48;
    v74 = (v48 + 32);
    v50 = (v31 + 5);
    v51 = _swiftEmptyArrayStorage;
    while (v47 < v46[2])
    {
      v53 = v0[41];
      v52 = v0[42];

      Destination.init(string:)();
      if ((*v49)(v53, 1, v52) == 1)
      {
        isUniquelyReferenced_nonNull_native = sub_100002CE0(v0[41], &qword_1005A9280, &qword_1004C27F8);
      }

      else
      {
        v54 = *v74;
        (*v74)(v0[44], v0[41], v0[42]);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v51 = sub_1001FCB58(0, *(v51 + 2) + 1, 1, v51);
        }

        v56 = *(v51 + 2);
        v55 = *(v51 + 3);
        if (v56 >= v55 >> 1)
        {
          v51 = sub_1001FCB58((v55 > 1), v56 + 1, 1, v51);
        }

        v57 = v0[44];
        v58 = v0[42];
        *(v51 + 2) = v56 + 1;
        isUniquelyReferenced_nonNull_native = v54(&v51[((*(v71 + 80) + 32) & ~*(v71 + 80)) + *(v71 + 72) * v56], v57, v58);
      }

      ++v47;
      v50 += 16;
      if (v75 == v47)
      {
        goto LABEL_50;
      }
    }

    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
  }

  else
  {
    v51 = _swiftEmptyArrayStorage;
LABEL_50:
    v0[72] = v51;
    v59 = v0[63];
    v60 = v0[39];
    v61 = v0[36];

    v0[35] = v51;
    v62 = swift_task_alloc();
    v0[73] = v62;
    v62[2] = v59;
    v62[3] = v61;
    v62[4] = v60;
    v63 = swift_task_alloc();
    v0[74] = v63;
    v64 = sub_10004B564(&qword_1005A9288, &qword_1004D9EB0);
    v34 = sub_10001DF0C(&qword_1005A9290, &qword_1005A9288, &qword_1004D9EB0, &protocol conformance descriptor for [A]);
    *v63 = v0;
    v63[1] = sub_100075C60;
    isUniquelyReferenced_nonNull_native = v0[40];
    v31 = &unk_1004C2808;
    v32 = v62;
    v33 = v64;
  }

  return Sequence.asyncFirst(where:)(isUniquelyReferenced_nonNull_native, v31, v32, v33, v34);
}

uint64_t sub_100074A00()
{
  sub_10004B564(&qword_1005A92A8, &qword_1004C4330);
  v1 = type metadata accessor for HandleType();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = swift_allocObject();
  *(v0 + 520) = v4;
  *(v4 + 16) = xmmword_1004C1900;
  (*(v2 + 104))(v4 + v3, enum case for HandleType.follower(_:), v1);
  v5 = swift_task_alloc();
  *(v0 + 528) = v5;
  *v5 = v0;
  v5[1] = sub_100074B64;

  return sub_10001C61C(v4, 1);
}

uint64_t sub_100074B64(uint64_t a1)
{
  v2 = *(*v1 + 304);
  *(*v1 + 536) = a1;

  return _swift_task_switch(sub_100074C98, v2, 0);
}

uint64_t sub_100074C98()
{
  sub_10024949C(*(v0 + 536));
  if ((*(v0 + 296) & 2) == 0)
  {
    v1 = *(v0 + 272);
    *(v0 + 568) = v1;
    v2 = *(v1 + 16);
    if (v2)
    {
      v3 = *(v0 + 392);
      v4 = *(v0 + 368);
      sub_10000E8E0(0, v2, 0);
      v5 = *(v4 + 16);
      v4 += 16;
      v6 = v1 + ((*(v4 + 64) + 32) & ~*(v4 + 64));
      v66 = *(v4 + 56);
      v69 = v5;
      v7 = (v4 - 8);
      do
      {
        v8 = *(v0 + 376);
        v9 = *(v0 + 360);
        v69(v8, v6, v9);
        Friend.handle.getter();
        (*v7)(v8, v9);
        v11 = _swiftEmptyArrayStorage[2];
        v10 = _swiftEmptyArrayStorage[3];
        if (v11 >= v10 >> 1)
        {
          sub_10000E8E0((v10 > 1), v11 + 1, 1);
        }

        v12 = *(v0 + 416);
        v13 = *(v0 + 384);
        _swiftEmptyArrayStorage[2] = v11 + 1;
        (*(v3 + 32))(_swiftEmptyArrayStorage + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v11, v12, v13);
        v6 += v66;
        --v2;
      }

      while (v2);
    }

    v15 = _swiftEmptyArrayStorage[2];
    if (!v15)
    {
      goto LABEL_32;
    }

    v16 = *(v0 + 392);
    sub_10002B3C0(0, v15, 0);
    v70 = *(v16 + 16);
    v17 = _swiftEmptyArrayStorage + ((*(v16 + 80) + 32) & ~*(v16 + 80));
    v65 = *(v16 + 72);
    v67 = (v16 + 8);
    v18 = v17;
    do
    {
      v19 = *(v0 + 400);
      v20 = *(v0 + 384);
      v70(v19, v18, v20);
      v21 = Handle.identifier.getter();
      v23 = v22;
      v64 = *v67;
      (*v67)(v19, v20);
      v25 = _swiftEmptyArrayStorage[2];
      v24 = _swiftEmptyArrayStorage[3];
      if (v25 >= v24 >> 1)
      {
        sub_10002B3C0((v24 > 1), v25 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v25 + 1;
      v26 = &_swiftEmptyArrayStorage[2 * v25];
      v26[4] = v21;
      v26[5] = v23;
      v18 += v65;
      --v15;
    }

    while (v15);
    v27 = _swiftEmptyArrayStorage[2];
    if (v27)
    {
      v28 = _swiftEmptyArrayStorage;
      while (1)
      {
        v34 = *(v0 + 408);
        v35 = *(v0 + 384);
        v70(v34, v17, v35);
        v36 = Handle.siblingIdentifiers.getter();
        isUniquelyReferenced_nonNull_native = v64(v34, v35);
        v37 = *(v36 + 16);
        v38 = *(v28 + 2);
        v39 = v38 + v37;
        if (__OFADD__(v38, v37))
        {
          break;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if (!isUniquelyReferenced_nonNull_native || v39 > *(v28 + 3) >> 1)
        {
          if (v38 <= v39)
          {
            v40 = v38 + v37;
          }

          else
          {
            v40 = v38;
          }

          isUniquelyReferenced_nonNull_native = sub_1001FC900(isUniquelyReferenced_nonNull_native, v40, 1, v28);
          v28 = isUniquelyReferenced_nonNull_native;
        }

        if (*(v36 + 16))
        {
          if ((*(v28 + 3) >> 1) - *(v28 + 2) < v37)
          {
            goto LABEL_52;
          }

          swift_arrayInitWithCopy();

          if (v37)
          {
            v41 = *(v28 + 2);
            v42 = __OFADD__(v41, v37);
            v43 = v41 + v37;
            if (v42)
            {
              goto LABEL_53;
            }

            *(v28 + 2) = v43;
          }
        }

        else
        {

          if (v37)
          {
            goto LABEL_51;
          }
        }

        v17 += v65;
        if (!--v27)
        {

          goto LABEL_34;
        }
      }
    }

    else
    {
LABEL_32:

      v28 = _swiftEmptyArrayStorage;
LABEL_34:
      sub_1002492B0(v28);
      sub_10007AB40(_swiftEmptyArrayStorage);
      v44 = v30;
      v72 = v30[2];
      if (!v72)
      {
        v49 = _swiftEmptyArrayStorage;
LABEL_46:
        *(v0 + 576) = v49;
        v57 = *(v0 + 504);
        v58 = *(v0 + 312);
        v59 = *(v0 + 288);

        *(v0 + 280) = v49;
        v60 = swift_task_alloc();
        *(v0 + 584) = v60;
        v60[2] = v57;
        v60[3] = v59;
        v60[4] = v58;
        v61 = swift_task_alloc();
        *(v0 + 592) = v61;
        v62 = sub_10004B564(&qword_1005A9288, &qword_1004D9EB0);
        v33 = sub_10001DF0C(&qword_1005A9290, &qword_1005A9288, &qword_1004D9EB0, &protocol conformance descriptor for [A]);
        *v61 = v0;
        v61[1] = sub_100075C60;
        isUniquelyReferenced_nonNull_native = *(v0 + 320);
        v30 = &unk_1004C2808;
        v31 = v60;
        v32 = v62;

        return Sequence.asyncFirst(where:)(isUniquelyReferenced_nonNull_native, v30, v31, v32, v33);
      }

      v45 = 0;
      v46 = *(v0 + 344);
      v47 = (v46 + 48);
      v68 = v46;
      v71 = (v46 + 32);
      v48 = (v30 + 5);
      v49 = _swiftEmptyArrayStorage;
      while (v45 < v44[2])
      {
        v51 = *(v0 + 328);
        v50 = *(v0 + 336);

        Destination.init(string:)();
        if ((*v47)(v51, 1, v50) == 1)
        {
          isUniquelyReferenced_nonNull_native = sub_100002CE0(*(v0 + 328), &qword_1005A9280, &qword_1004C27F8);
        }

        else
        {
          v52 = *v71;
          (*v71)(*(v0 + 352), *(v0 + 328), *(v0 + 336));
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v49 = sub_1001FCB58(0, *(v49 + 2) + 1, 1, v49);
          }

          v54 = *(v49 + 2);
          v53 = *(v49 + 3);
          if (v54 >= v53 >> 1)
          {
            v49 = sub_1001FCB58((v53 > 1), v54 + 1, 1, v49);
          }

          v55 = *(v0 + 352);
          v56 = *(v0 + 336);
          *(v49 + 2) = v54 + 1;
          isUniquelyReferenced_nonNull_native = v52(&v49[((*(v68 + 80) + 32) & ~*(v68 + 80)) + *(v68 + 72) * v54], v55, v56);
        }

        ++v45;
        v48 += 16;
        if (v72 == v45)
        {
          goto LABEL_46;
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
    return Sequence.asyncFirst(where:)(isUniquelyReferenced_nonNull_native, v30, v31, v32, v33);
  }

  v14 = *(v0 + 464);

  return _swift_task_switch(sub_100075358, v14, 0);
}

uint64_t sub_100075358()
{
  sub_10004B564(&qword_1005A92A8, &qword_1004C4330);
  v1 = type metadata accessor for HandleType();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = swift_allocObject();
  *(v0 + 544) = v4;
  *(v4 + 16) = xmmword_1004C1900;
  (*(v2 + 104))(v4 + v3, enum case for HandleType.following(_:), v1);
  v5 = swift_task_alloc();
  *(v0 + 552) = v5;
  *v5 = v0;
  v5[1] = sub_1000754BC;

  return sub_10001C61C(v4, 1);
}

uint64_t sub_1000754BC(uint64_t a1)
{
  v2 = *(*v1 + 304);
  *(*v1 + 560) = a1;

  return _swift_task_switch(sub_1000755F0, v2, 0);
}

uint64_t sub_1000755F0()
{
  sub_10024949C(v0[70]);
  v1 = v0[34];
  v0[71] = v1;
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[49];
    v4 = v0[46];
    sub_10000E8E0(0, v2, 0);
    v5 = *(v4 + 16);
    v4 += 16;
    v6 = v1 + ((*(v4 + 64) + 32) & ~*(v4 + 64));
    v65 = *(v4 + 56);
    v68 = v5;
    v7 = (v4 - 8);
    do
    {
      v8 = v0[47];
      v9 = v0[45];
      v68(v8, v6, v9);
      Friend.handle.getter();
      (*v7)(v8, v9);
      v11 = _swiftEmptyArrayStorage[2];
      v10 = _swiftEmptyArrayStorage[3];
      if (v11 >= v10 >> 1)
      {
        sub_10000E8E0((v10 > 1), v11 + 1, 1);
      }

      v12 = v0[52];
      v13 = v0[48];
      _swiftEmptyArrayStorage[2] = v11 + 1;
      (*(v3 + 32))(_swiftEmptyArrayStorage + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v11, v12, v13);
      v6 += v65;
      --v2;
    }

    while (v2);
  }

  v14 = _swiftEmptyArrayStorage[2];
  if (!v14)
  {
    goto LABEL_27;
  }

  v15 = v0[49];
  sub_10002B3C0(0, v14, 0);
  v69 = *(v15 + 16);
  v16 = _swiftEmptyArrayStorage + ((*(v15 + 80) + 32) & ~*(v15 + 80));
  v64 = *(v15 + 72);
  v66 = (v15 + 8);
  v17 = v16;
  do
  {
    v18 = v0[50];
    v19 = v0[48];
    v69(v18, v17, v19);
    v20 = Handle.identifier.getter();
    v22 = v21;
    v63 = *v66;
    (*v66)(v18, v19);
    v24 = _swiftEmptyArrayStorage[2];
    v23 = _swiftEmptyArrayStorage[3];
    if (v24 >= v23 >> 1)
    {
      sub_10002B3C0((v23 > 1), v24 + 1, 1);
    }

    _swiftEmptyArrayStorage[2] = v24 + 1;
    v25 = &_swiftEmptyArrayStorage[2 * v24];
    v25[4] = v20;
    v25[5] = v22;
    v17 += v64;
    --v14;
  }

  while (v14);
  v26 = _swiftEmptyArrayStorage[2];
  if (v26)
  {
    v27 = _swiftEmptyArrayStorage;
    while (1)
    {
      v33 = v0[51];
      v34 = v0[48];
      v69(v33, v16, v34);
      v35 = Handle.siblingIdentifiers.getter();
      isUniquelyReferenced_nonNull_native = v63(v33, v34);
      v36 = *(v35 + 16);
      v37 = *(v27 + 2);
      v38 = v37 + v36;
      if (__OFADD__(v37, v36))
      {
        break;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || v38 > *(v27 + 3) >> 1)
      {
        if (v37 <= v38)
        {
          v39 = v37 + v36;
        }

        else
        {
          v39 = v37;
        }

        isUniquelyReferenced_nonNull_native = sub_1001FC900(isUniquelyReferenced_nonNull_native, v39, 1, v27);
        v27 = isUniquelyReferenced_nonNull_native;
      }

      if (*(v35 + 16))
      {
        if ((*(v27 + 3) >> 1) - *(v27 + 2) < v36)
        {
          goto LABEL_47;
        }

        swift_arrayInitWithCopy();

        if (v36)
        {
          v40 = *(v27 + 2);
          v41 = __OFADD__(v40, v36);
          v42 = v40 + v36;
          if (v41)
          {
            goto LABEL_48;
          }

          *(v27 + 2) = v42;
        }
      }

      else
      {

        if (v36)
        {
          goto LABEL_46;
        }
      }

      v16 += v64;
      if (!--v26)
      {

        goto LABEL_29;
      }
    }
  }

  else
  {
LABEL_27:

    v27 = _swiftEmptyArrayStorage;
LABEL_29:
    sub_1002492B0(v27);
    sub_10007AB40(_swiftEmptyArrayStorage);
    v43 = v29;
    v71 = v29[2];
    if (!v71)
    {
      v48 = _swiftEmptyArrayStorage;
LABEL_41:
      v0[72] = v48;
      v56 = v0[63];
      v57 = v0[39];
      v58 = v0[36];

      v0[35] = v48;
      v59 = swift_task_alloc();
      v0[73] = v59;
      v59[2] = v56;
      v59[3] = v58;
      v59[4] = v57;
      v60 = swift_task_alloc();
      v0[74] = v60;
      v61 = sub_10004B564(&qword_1005A9288, &qword_1004D9EB0);
      v32 = sub_10001DF0C(&qword_1005A9290, &qword_1005A9288, &qword_1004D9EB0, &protocol conformance descriptor for [A]);
      *v60 = v0;
      v60[1] = sub_100075C60;
      isUniquelyReferenced_nonNull_native = v0[40];
      v29 = &unk_1004C2808;
      v30 = v59;
      v31 = v61;

      return Sequence.asyncFirst(where:)(isUniquelyReferenced_nonNull_native, v29, v30, v31, v32);
    }

    v44 = 0;
    v45 = v0[43];
    v46 = (v45 + 48);
    v67 = v45;
    v70 = (v45 + 32);
    v47 = (v29 + 5);
    v48 = _swiftEmptyArrayStorage;
    while (v44 < v43[2])
    {
      v50 = v0[41];
      v49 = v0[42];

      Destination.init(string:)();
      if ((*v46)(v50, 1, v49) == 1)
      {
        isUniquelyReferenced_nonNull_native = sub_100002CE0(v0[41], &qword_1005A9280, &qword_1004C27F8);
      }

      else
      {
        v51 = *v70;
        (*v70)(v0[44], v0[41], v0[42]);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v48 = sub_1001FCB58(0, *(v48 + 2) + 1, 1, v48);
        }

        v53 = *(v48 + 2);
        v52 = *(v48 + 3);
        if (v53 >= v52 >> 1)
        {
          v48 = sub_1001FCB58((v52 > 1), v53 + 1, 1, v48);
        }

        v54 = v0[44];
        v55 = v0[42];
        *(v48 + 2) = v53 + 1;
        isUniquelyReferenced_nonNull_native = v51(&v48[((*(v67 + 80) + 32) & ~*(v67 + 80)) + *(v67 + 72) * v53], v54, v55);
      }

      ++v44;
      v47 += 16;
      if (v71 == v44)
      {
        goto LABEL_41;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
  return Sequence.asyncFirst(where:)(isUniquelyReferenced_nonNull_native, v29, v30, v31, v32);
}

uint64_t sub_100075C60()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    v4 = *(v2 + 304);

    return _swift_task_switch(sub_100075DB8, v4, 0);
  }
}

uint64_t sub_100075DB8()
{
  v1 = *(v0 + 320);
  v2 = *(v0 + 600);
  v3 = (*(*(v0 + 344) + 48))(v1, 1, *(v0 + 336));
  sub_10004B564(&qword_1005A9298, &qword_1004C2810);
  v4 = v2 + 1;
  inited = swift_initStackObject();
  *(inited + 32) = 0;
  *(inited + 16) = xmmword_1004C2310;
  *(inited + 64) = &type metadata for Bool;
  *(inited + 72) = &off_10058C3C8;
  if (v3 == 1)
  {
    *(inited + 40) = 0;
    *(inited + 80) = 1;
    *(inited + 112) = &type metadata for Int;
    *(inited + 120) = &off_10058C3A8;
    *(inited + 88) = v4;
    v6 = sub_1002076DC(inited);
    swift_setDeallocating();
    sub_10004B564(&qword_1005A92A0, &qword_1004C2818);
    swift_arrayDestroy();
    v7 = sub_10004ECA4(v6);
    v9 = v8;
    v11 = v10;

    sub_100291DD0(v7, v9, v11);

    sub_10005A48C();
    swift_allocError();
    *v12 = 7;
    swift_willThrow();
  }

  else
  {
    *(inited + 40) = 1;
    *(inited + 80) = 1;
    *(inited + 112) = &type metadata for Int;
    *(inited + 120) = &off_10058C3A8;
    *(inited + 88) = v4;
    v14 = sub_1002076DC(inited);
    swift_setDeallocating();
    sub_10004B564(&qword_1005A92A0, &qword_1004C2818);
    swift_arrayDestroy();
    v15 = sub_10004ECA4(v14);
    v17 = v16;
    v19 = v18;

    sub_100291DD0(v15, v17, v19);
  }

  sub_100002CE0(v1, &qword_1005A9280, &qword_1004C27F8);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_10007613C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100076200()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000762D0(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = type metadata accessor for FenceShareInviteEnvelopeV1(0);
  v2[5] = swift_task_alloc();

  return _swift_task_switch(sub_100076364, v1, 0);
}

uint64_t sub_100076364()
{
  v16 = v0;
  if (qword_1005A7EC8 != -1)
  {
    swift_once();
  }

  v1 = v0[5];
  v2 = v0[2];
  v3 = type metadata accessor for Logger();
  sub_10000A6F0(v3, qword_1005DFB18);
  sub_10007C368(v2, v1, type metadata accessor for FenceShareInviteEnvelopeV1);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[5];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v8 = 136446723;
    *(v8 + 4) = sub_10000D01C(0xD000000000000031, 0x80000001004DEBF0, &v15);
    *(v8 + 12) = 2160;
    *(v8 + 14) = 1752392040;
    *(v8 + 22) = 2081;
    v9 = sub_1002E5ACC();
    v11 = v10;
    sub_10007C258(v7, type metadata accessor for FenceShareInviteEnvelopeV1);
    v12 = sub_10000D01C(v9, v11, &v15);

    *(v8 + 24) = v12;
    _os_log_impl(&_mh_execute_header, v4, v5, "%{public}s payload:%{private,mask.hash}s", v8, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    sub_10007C258(v7, type metadata accessor for FenceShareInviteEnvelopeV1);
  }

  v13 = swift_task_alloc();
  v0[6] = v13;
  *v13 = v0;
  v13[1] = sub_1000765E0;

  return daemon.getter();
}

uint64_t sub_1000765E0(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 56) = a1;

  v3 = swift_task_alloc();
  *(v2 + 64) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for FenceService(0);
  v6 = sub_10007CBF4(&unk_1005AFA50, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_10007CBF4(&qword_1005A9278, type metadata accessor for FenceService, &unk_1004D21A8);
  *v3 = v9;
  v3[1] = sub_1000767BC;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_1000767BC(uint64_t a1)
{
  v3 = *v2;
  v3[9] = a1;
  v3[10] = v1;

  if (v1)
  {
    v4 = v3[3];
    v5 = sub_10007CFC8;
  }

  else
  {
    v6 = v3[3];

    v5 = sub_1000768E4;
    v4 = v6;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_1000768E4()
{
  v1 = v0[2];
  v2 = *(v0[4] + 20);
  v4 = *v1;
  v3 = v1[1];
  v5 = swift_task_alloc();
  v0[11] = v5;
  *v5 = v0;
  v5[1] = sub_1000769A4;

  return sub_100252024(v1 + v2, v4, v3);
}

uint64_t sub_1000769A4()
{
  v2 = *v1;
  *(*v1 + 96) = v0;

  v3 = *(v2 + 24);
  if (v0)
  {
    v4 = sub_10007CFCC;
  }

  else
  {
    v4 = sub_10007CFC4;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100076AD0(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = type metadata accessor for FenceTriggerEnvelopeV1(0);
  v2[5] = swift_task_alloc();

  return _swift_task_switch(sub_100076B64, v1, 0);
}

uint64_t sub_100076B64()
{
  v16 = v0;
  if (qword_1005A7EC8 != -1)
  {
    swift_once();
  }

  v1 = v0[5];
  v2 = v0[2];
  v3 = type metadata accessor for Logger();
  sub_10000A6F0(v3, qword_1005DFB18);
  sub_10007C368(v2, v1, type metadata accessor for FenceTriggerEnvelopeV1);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[5];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v8 = 136446723;
    *(v8 + 4) = sub_10000D01C(0xD00000000000002ALL, 0x80000001004DEC30, &v15);
    *(v8 + 12) = 2160;
    *(v8 + 14) = 1752392040;
    *(v8 + 22) = 2081;
    v9 = sub_1002E7ABC();
    v11 = v10;
    sub_10007C258(v7, type metadata accessor for FenceTriggerEnvelopeV1);
    v12 = sub_10000D01C(v9, v11, &v15);

    *(v8 + 24) = v12;
    _os_log_impl(&_mh_execute_header, v4, v5, "%{public}s payload: %{private,mask.hash}s", v8, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    sub_10007C258(v7, type metadata accessor for FenceTriggerEnvelopeV1);
  }

  v13 = swift_task_alloc();
  v0[6] = v13;
  *v13 = v0;
  v13[1] = sub_100076DE0;

  return daemon.getter();
}

uint64_t sub_100076DE0(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 56) = a1;

  v3 = swift_task_alloc();
  *(v2 + 64) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for FenceService(0);
  v6 = sub_10007CBF4(&unk_1005AFA50, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_10007CBF4(&qword_1005A9278, type metadata accessor for FenceService, &unk_1004D21A8);
  *v3 = v9;
  v3[1] = sub_100076FBC;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_100076FBC(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v3[9] = a1;
  v3[10] = v1;

  if (v1)
  {
    v5 = v3[3];

    return _swift_task_switch(sub_100077308, v5, 0);
  }

  else
  {
    v6 = v3[4];
    v7 = v3[2];

    v9 = *(v6 + 20);
    v8 = *(v6 + 24);
    v10 = swift_task_alloc();
    v3[11] = v10;
    *v10 = v4;
    v10[1] = sub_10007716C;
    v11 = v3[2];

    return sub_100274D00(v11, v7 + v9, v7 + v8);
  }
}

uint64_t sub_10007716C()
{
  v2 = *v1;
  *(*v1 + 96) = v0;

  v3 = *(v2 + 24);
  if (v0)
  {
    v4 = sub_100077378;
  }

  else
  {
    v4 = sub_100077298;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100077298()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100077308()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100077378()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000773E8(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  sub_10004B564(&qword_1005A9150, &qword_1004C2608);
  v2[10] = swift_task_alloc();
  v3 = type metadata accessor for Fence.ID();
  v2[11] = v3;
  v2[12] = *(v3 - 8);
  v2[13] = swift_task_alloc();
  v4 = type metadata accessor for UUID();
  v2[14] = v4;
  v2[15] = *(v4 - 8);
  v2[16] = swift_task_alloc();

  return _swift_task_switch(sub_10007753C, v1, 0);
}

uint64_t sub_10007753C()
{
  v28 = v0;
  if (qword_1005A7EC8 != -1)
  {
    swift_once();
  }

  v1 = v0[8];
  v2 = type metadata accessor for Logger();
  sub_10000A6F0(v2, qword_1005DFB18);
  sub_10007C3D0(v1, (v0 + 2));
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  sub_10007C204(v1);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v27 = v6;
    *v5 = 141558275;
    *(v5 + 4) = 1752392040;
    *(v5 + 12) = 2081;
    v7 = sub_1002E3D74();
    v9 = sub_10000D01C(v7, v8, &v27);

    *(v5 + 14) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "CommandManager Fence delete IDS messageReceived:%{private,mask.hash}s", v5, 0x16u);
    sub_100004984(v6);
  }

  sub_1002E32DC(v0[16]);
  v10 = v0[11];
  v11 = v0[12];
  v12 = v0[10];
  v13 = v0[8];
  v14 = *v13;
  v15 = v13[1];
  swift_bridgeObjectRetain_n();
  Fence.ID.init(string:)();
  if ((*(v11 + 48))(v12, 1, v10) == 1)
  {
    v17 = v0[15];
    v16 = v0[16];
    v18 = v0[14];
    sub_100002CE0(v0[10], &qword_1005A9150, &qword_1004C2608);
    type metadata accessor for FenceServiceClient.Failure(0);
    sub_10007CBF4(&qword_1005A9140, type metadata accessor for FenceServiceClient.Failure, &unk_1004D25C8);
    swift_allocError();
    *v19 = v14;
    v19[1] = v15;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    (*(v17 + 8))(v16, v18);

    v20 = v0[1];

    return v20();
  }

  else
  {
    v23 = v0[12];
    v22 = v0[13];
    v25 = v0[10];
    v24 = v0[11];

    (*(v23 + 32))(v22, v25, v24);
    v26 = swift_task_alloc();
    v0[17] = v26;
    *v26 = v0;
    v26[1] = sub_1000778BC;

    return daemon.getter();
  }
}

uint64_t sub_1000778BC(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 144) = a1;

  v3 = swift_task_alloc();
  *(v2 + 152) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for FenceService(0);
  v6 = sub_10007CBF4(&unk_1005AFA50, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_10007CBF4(&qword_1005A9278, type metadata accessor for FenceService, &unk_1004D21A8);
  *v3 = v9;
  v3[1] = sub_100077A98;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_100077A98(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v3[20] = a1;
  v3[21] = v1;

  if (v1)
  {
    v5 = v3[9];

    return _swift_task_switch(sub_100077E4C, v5, 0);
  }

  else
  {

    v6 = swift_task_alloc();
    v3[22] = v6;
    *v6 = v4;
    v6[1] = sub_100077C4C;
    v7 = v3[16];
    v8 = v3[13];

    return sub_10026055C(v8, v7);
  }
}

uint64_t sub_100077C4C()
{
  v2 = *v1;
  *(*v1 + 184) = v0;

  v3 = *(v2 + 72);
  if (v0)
  {
    v4 = sub_100077F04;
  }

  else
  {
    v4 = sub_100077D78;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100077D78()
{
  v2 = v0[15];
  v1 = v0[16];
  v4 = v0[13];
  v3 = v0[14];
  v5 = v0[11];
  v6 = v0[12];

  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);

  v7 = v0[1];

  return v7();
}

uint64_t sub_100077E4C()
{
  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[14];
  (*(v0[12] + 8))(v0[13], v0[11]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_100077F04()
{
  v2 = v0[15];
  v1 = v0[16];
  v4 = v0[13];
  v3 = v0[14];
  v5 = v0[11];
  v6 = v0[12];

  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);

  v7 = v0[1];

  return v7();
}

uint64_t sub_100077FD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  sub_10004B564(&qword_1005A96E0, &qword_1004C2A80);
  v6[8] = swift_task_alloc();
  v7 = type metadata accessor for MessagingOptions();
  v6[9] = v7;
  v6[10] = *(v7 - 8);
  v6[11] = swift_task_alloc();
  v8 = type metadata accessor for Destination();
  v6[12] = v8;
  v6[13] = *(v8 - 8);
  v6[14] = swift_task_alloc();
  v6[15] = swift_task_alloc();
  v9 = type metadata accessor for UUID();
  v6[16] = v9;
  v6[17] = *(v9 - 8);
  v6[18] = swift_task_alloc();
  v6[19] = swift_task_alloc();
  v10 = type metadata accessor for URL();
  v6[20] = v10;
  v6[21] = *(v10 - 8);
  v6[22] = swift_task_alloc();
  v6[23] = type metadata accessor for FenceShareInviteEnvelopeV1(0);
  v6[24] = swift_task_alloc();
  v6[25] = swift_task_alloc();
  v11 = swift_task_alloc();
  v6[26] = v11;
  *v11 = v6;
  v11[1] = sub_10007826C;

  return daemon.getter();
}

uint64_t sub_10007826C(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 216) = a1;

  v3 = swift_task_alloc();
  *(v2 + 224) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = sub_10004B564(&qword_1005A90E0, &qword_1004C2490);
  v6 = sub_10007CBF4(&unk_1005AFA50, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_10001DF0C(&qword_1005A90E8, &qword_1005A90E0, &qword_1004C2490, &unk_1004D4FC0);
  *v3 = v9;
  v3[1] = sub_100078458;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_100078458(uint64_t a1)
{
  v3 = *v2;
  v3[29] = a1;
  v3[30] = v1;

  if (v1)
  {
    v4 = v3[7];
    v5 = sub_100078FDC;
  }

  else
  {
    v6 = v3[7];

    v5 = sub_100078580;
    v4 = v6;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_100078580()
{
  v58 = v0;
  v1 = v0[25];
  v2 = v0[22];
  v3 = v0[20];
  v4 = v0[21];
  v5 = v0[19];
  v52 = v0[23];
  v53 = v5;
  v7 = v0[16];
  v6 = v0[17];
  v55 = v7;
  v50 = v0[6];
  v51 = v0[3];
  v49 = v0[2];
  v8 = *(v4 + 16);
  v8(v2, v0[5], v3);
  (*(v6 + 16))(v5, v50, v7);
  *v1 = v49;
  v1[1] = v51;
  v8(v1 + v52[5], v2, v3);
  v9 = (v1 + v52[6]);
  *v9 = 0xD000000000000024;
  v9[1] = 0x80000001004DDBB0;
  v10 = (v1 + v52[7]);
  *v10 = 49;
  v10[1] = 0xE100000000000000;

  v11 = UUID.uuidString.getter();
  v13 = v12;
  v14 = *(v6 + 8);
  v0[31] = v14;
  v0[32] = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v14(v53, v55);
  (*(v4 + 8))(v2, v3);
  v15 = (v1 + v52[8]);
  *v15 = v11;
  v15[1] = v13;
  LOBYTE(v3) = Handle.isPhoneNumber.getter();
  Handle.identifier.getter();
  if (v3)
  {
    Destination.init(phoneNumber:)();
  }

  else
  {
    Destination.init(email:)();
  }

  if (qword_1005A7EC8 != -1)
  {
    swift_once();
  }

  v16 = v0[24];
  v17 = v0[25];
  v19 = v0[14];
  v18 = v0[15];
  v20 = v0[12];
  v21 = v0[13];
  v22 = type metadata accessor for Logger();
  sub_10000A6F0(v22, qword_1005DFB18);
  sub_10007C368(v17, v16, type metadata accessor for FenceShareInviteEnvelopeV1);
  v56 = *(v21 + 16);
  v56(v19, v18, v20);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();
  v25 = os_log_type_enabled(v23, v24);
  v26 = v0[24];
  v27 = v0[13];
  v28 = v0[14];
  v29 = v0[12];
  if (v25)
  {
    v30 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    *v30 = 136447235;
    *(v30 + 4) = sub_10000D01C(0xD000000000000040, 0x80000001004DEBA0, &v57);
    *(v30 + 12) = 2160;
    *(v30 + 14) = 1752392040;
    *(v30 + 22) = 2081;
    v31 = sub_1002E5ACC();
    v33 = v32;
    sub_10007C258(v26, type metadata accessor for FenceShareInviteEnvelopeV1);
    v34 = sub_10000D01C(v31, v33, &v57);

    *(v30 + 24) = v34;
    *(v30 + 32) = 2160;
    *(v30 + 34) = 1752392040;
    *(v30 + 42) = 2081;
    sub_10007CBF4(&qword_1005A9260, &type metadata accessor for Destination, &protocol conformance descriptor for Destination);
    v35 = dispatch thunk of CustomStringConvertible.description.getter();
    v37 = v36;
    v38 = *(v27 + 8);
    v38(v28, v29);
    v39 = sub_10000D01C(v35, v37, &v57);

    *(v30 + 44) = v39;
    _os_log_impl(&_mh_execute_header, v23, v24, "FenceService %{public}s with\npayload: %{private,mask.hash}s\nto destination: %{private,mask.hash}s", v30, 0x34u);
    swift_arrayDestroy();
  }

  else
  {

    v38 = *(v27 + 8);
    v38(v28, v29);
    sub_10007C258(v26, type metadata accessor for FenceShareInviteEnvelopeV1);
  }

  v0[33] = v38;
  v54 = v0[29];
  v40 = v0[16];
  v41 = v0[17];
  v42 = v0[15];
  v43 = v0[12];
  v44 = v0[13];
  v45 = v0[8];
  sub_10004B564(&qword_1005A9270, &qword_1004C5810);
  v46 = (*(v44 + 80) + 32) & ~*(v44 + 80);
  v47 = swift_allocObject();
  *(v47 + 16) = xmmword_1004C1900;
  v56(v47 + v46, v42, v43);
  (*(v41 + 56))(v45, 1, 1, v40);
  sub_100293190(_swiftEmptyArrayStorage);
  sub_100293190(_swiftEmptyArrayStorage);
  MessagingOptions.init(destinations:expectsPeerResponse:responseIdentifier:timeToLive:fireAndForget:requiredCapabilities:lackingCapabilities:queueOneIdentifier:)();
  v0[34] = sub_1002E4E34();

  return _swift_task_switch(sub_100078B04, v54, 0);
}

uint64_t sub_100078B04()
{
  v1 = swift_task_alloc();
  v0[35] = v1;
  *v1 = v0;
  v1[1] = sub_100078BAC;
  v2 = v0[34];
  v3 = v0[18];
  v4 = v0[11];

  return InternetMessaging.send(dictionary:messageOptions:)(v3, v2, v4);
}

uint64_t sub_100078BAC()
{
  v2 = *v1;
  *(*v1 + 288) = v0;

  if (v0)
  {
    v3 = v2[29];
    v4 = sub_100078E2C;
  }

  else
  {
    v5 = v2[31];
    v6 = v2[18];
    v7 = v2[16];
    v8 = v2[7];
    v5(v6, v7);

    v4 = sub_100078CE8;
    v3 = v8;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100078CE8()
{
  v1 = v0[33];
  v2 = v0[25];
  v3 = v0[15];
  v4 = v0[12];
  v6 = v0[10];
  v5 = v0[11];
  v7 = v0[9];

  (*(v6 + 8))(v5, v7);
  v1(v3, v4);
  sub_10007C258(v2, type metadata accessor for FenceShareInviteEnvelopeV1);

  v8 = v0[1];

  return v8();
}

uint64_t sub_100078E2C()
{
  v1 = *(v0 + 56);

  return _swift_task_switch(sub_100078E98, v1, 0);
}

uint64_t sub_100078E98()
{
  v1 = v0[33];
  v2 = v0[25];
  v3 = v0[15];
  v4 = v0[12];
  v6 = v0[10];
  v5 = v0[11];
  v7 = v0[9];

  (*(v6 + 8))(v5, v7);
  v1(v3, v4);
  sub_10007C258(v2, type metadata accessor for FenceShareInviteEnvelopeV1);

  v8 = v0[1];

  return v8();
}

uint64_t sub_100078FDC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000790BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[24] = a4;
  v5[25] = v4;
  v5[22] = a2;
  v5[23] = a3;
  v5[21] = a1;
  sub_10004B564(&qword_1005A96E0, &qword_1004C2A80);
  v5[26] = swift_task_alloc();
  v6 = type metadata accessor for MessagingOptions();
  v5[27] = v6;
  v5[28] = *(v6 - 8);
  v5[29] = swift_task_alloc();
  v7 = type metadata accessor for Handle();
  v5[30] = v7;
  v5[31] = *(v7 - 8);
  v5[32] = swift_task_alloc();
  v8 = type metadata accessor for Destination();
  v5[33] = v8;
  v5[34] = *(v8 - 8);
  v5[35] = swift_task_alloc();
  v5[36] = swift_task_alloc();
  v9 = type metadata accessor for UUID();
  v5[37] = v9;
  v5[38] = *(v9 - 8);
  v5[39] = swift_task_alloc();
  v5[40] = swift_task_alloc();
  v10 = swift_task_alloc();
  v5[41] = v10;
  *v10 = v5;
  v10[1] = sub_100079318;

  return daemon.getter();
}

uint64_t sub_100079318(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 336) = a1;

  v3 = swift_task_alloc();
  *(v2 + 344) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = sub_10004B564(&qword_1005A90E0, &qword_1004C2490);
  v6 = sub_10007CBF4(&unk_1005AFA50, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_10001DF0C(&qword_1005A90E8, &qword_1005A90E0, &qword_1004C2490, &unk_1004D4FC0);
  *v3 = v9;
  v3[1] = sub_100079504;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_100079504(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 200);
  *(v3 + 352) = a1;
  *(v3 + 360) = v1;

  if (v1)
  {
    v5 = sub_10007A490;
  }

  else
  {

    v5 = sub_100079644;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_100079644()
{
  v43 = v0;
  v1 = v0[45];
  v2 = v0[40];
  v3 = v0[22];
  v4 = v0[21];
  (*(v0[38] + 16))(v2, v0[23], v0[37]);

  sub_1002E41B8(v4, v3, v2, v0 + 2);
  if (v1)
  {

    v5 = v0[1];

    return v5();
  }

  else
  {
    v7 = v0[24];
    v8 = *(v7 + 16);
    v9 = _swiftEmptyArrayStorage;
    if (v8)
    {
      v10 = v0[34];
      v11 = v0[31];
      v42[0] = _swiftEmptyArrayStorage;
      sub_1002393FC(0, v8, 0);
      v9 = _swiftEmptyArrayStorage;
      v12 = *(v11 + 16);
      v11 += 16;
      v13 = v7 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
      v39 = *(v11 + 56);
      v40 = v12;
      v41 = v10;
      v14 = (v10 + 32);
      v15 = (v11 - 8);
      do
      {
        v40(v0[32], v13, v0[30]);
        v16 = Handle.isPhoneNumber.getter();
        Handle.identifier.getter();
        if (v16)
        {
          Destination.init(phoneNumber:)();
        }

        else
        {
          Destination.init(email:)();
        }

        v17 = v0[32];
        v18 = v0[30];
        v19 = *v14;
        (*v14)(v0[36], v0[35], v0[33]);
        (*v15)(v17, v18);
        v42[0] = v9;
        v21 = *(v9 + 2);
        v20 = *(v9 + 3);
        if (v21 >= v20 >> 1)
        {
          sub_1002393FC((v20 > 1), v21 + 1, 1);
          v9 = v42[0];
        }

        v22 = v0[36];
        v23 = v0[33];
        *(v9 + 2) = v21 + 1;
        v19(&v9[((*(v41 + 80) + 32) & ~*(v41 + 80)) + *(v41 + 72) * v21], v22, v23);
        v13 += v39;
        --v8;
      }

      while (v8);
    }

    v0[46] = v9;
    if (qword_1005A7EC8 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    v0[47] = sub_10000A6F0(v24, qword_1005DFB18);
    sub_10007C3D0((v0 + 2), (v0 + 8));

    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.default.getter();
    sub_10007C204((v0 + 2));

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v42[0] = swift_slowAlloc();
      *v27 = 136447235;
      *(v27 + 4) = sub_10000D01C(0xD00000000000003DLL, 0x80000001004DED00, v42);
      *(v27 + 12) = 2160;
      *(v27 + 14) = 1752392040;
      *(v27 + 22) = 2081;
      sub_10007C3D0((v0 + 2), (v0 + 14));
      v28 = sub_1002E3D74();
      v30 = v29;
      sub_10007C204((v0 + 2));
      v31 = sub_10000D01C(v28, v30, v42);

      *(v27 + 24) = v31;
      *(v27 + 32) = 2160;
      *(v27 + 34) = 1752392040;
      *(v27 + 42) = 2081;
      v32 = Array.description.getter();
      v34 = sub_10000D01C(v32, v33, v42);

      *(v27 + 44) = v34;
      _os_log_impl(&_mh_execute_header, v25, v26, "FenceService %{public}s with\npayload: %{private,mask.hash}s\nto destinations: %{private,mask.hash}s", v27, 0x34u);
      swift_arrayDestroy();
    }

    v0[20] = v9;
    v35 = swift_task_alloc();
    v0[48] = v35;
    v36 = sub_10004B564(&qword_1005A9288, &qword_1004D9EB0);
    v37 = sub_10001DF0C(&qword_1005A9290, &qword_1005A9288, &qword_1004D9EB0, &protocol conformance descriptor for [A]);
    *v35 = v0;
    v35[1] = sub_100079B7C;
    v38 = v0[44];

    return Sequence.asyncFilter(_:)(&unk_1004C2878, v38, v36, v37);
  }
}

uint64_t sub_100079B7C(uint64_t a1)
{
  v3 = *v2;
  *(*v2 + 392) = a1;

  if (v1)
  {
  }

  else
  {
    v5 = *(v3 + 200);

    return _swift_task_switch(sub_100079CB4, v5, 0);
  }
}

uint64_t sub_100079CB4()
{
  v21 = v0;
  v1 = v0[49];
  v2 = *(v0[46] + 16);

  v3 = *(v1 + 16);
  v4 = v2 - v3;
  if (v2 - v3 >= 1)
  {

    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v8 = v0[21];
      v7 = v0[22];
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v20[0] = v10;
      *v9 = 136315394;
      *(v9 + 4) = sub_10000D01C(v8, v7, v20);
      *(v9 + 12) = 2048;
      *(v9 + 14) = v4;
      _os_log_impl(&_mh_execute_header, v5, v6, "Sending IDS delete message for fenceID %s contains %ld invalid destinations", v9, 0x16u);
      sub_100004984(v10);
    }

    v3 = *(v1 + 16);
  }

  if (v3)
  {
    v11 = v0[44];
    (*(v0[38] + 56))(v0[26], 1, 1, v0[37]);
    sub_100293190(_swiftEmptyArrayStorage);
    sub_100293190(_swiftEmptyArrayStorage);
    MessagingOptions.init(destinations:expectsPeerResponse:responseIdentifier:timeToLive:fireAndForget:requiredCapabilities:lackingCapabilities:queueOneIdentifier:)();
    v0[50] = sub_1002E3190();

    return _swift_task_switch(sub_10007A05C, v11, 0);
  }

  else
  {

    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v15 = v0[21];
      v14 = v0[22];
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v20[0] = v17;
      *v16 = 136315138;
      *(v16 + 4) = sub_10000D01C(v15, v14, v20);
      _os_log_impl(&_mh_execute_header, v12, v13, "Sending IDS delete message for fenceID %s contains no valid destinations.", v16, 0xCu);
      sub_100004984(v17);
    }

    sub_10007CF70();
    swift_allocError();
    swift_willThrow();
    sub_10007C204((v0 + 2));

    v18 = v0[1];

    return v18();
  }
}

uint64_t sub_10007A05C()
{
  v1 = swift_task_alloc();
  v0[51] = v1;
  *v1 = v0;
  v1[1] = sub_10007A104;
  v2 = v0[50];
  v3 = v0[39];
  v4 = v0[29];

  return InternetMessaging.send(dictionary:messageOptions:)(v3, v2, v4);
}

uint64_t sub_10007A104()
{
  v2 = *v1;
  *(*v1 + 416) = v0;

  if (v0)
  {
    v3 = v2[44];
    v4 = sub_10007A338;
  }

  else
  {
    v6 = v2[38];
    v5 = v2[39];
    v7 = v2[37];
    v8 = v2[25];
    (*(v6 + 8))(v5, v7);

    v4 = sub_10007A248;
    v3 = v8;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10007A248()
{
  v2 = v0[28];
  v1 = v0[29];
  v3 = v0[27];

  sub_10007C204((v0 + 2));
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_10007A338()
{
  v1 = *(v0 + 200);

  return _swift_task_switch(sub_10007A3A4, v1, 0);
}

uint64_t sub_10007A3A4()
{
  v2 = v0[28];
  v1 = v0[29];
  v3 = v0[27];

  sub_10007C204((v0 + 2));
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_10007A490()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10007A554(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_10007A570, a2, 0);
}

uint64_t sub_10007A570()
{
  v4 = (&async function pointer to dispatch thunk of QueryController.isRegistered(destination:) + async function pointer to dispatch thunk of QueryController.isRegistered(destination:));
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_10007A620;
  v2 = *(v0 + 16);

  return v4(v2);
}

uint64_t sub_10007A620(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_10007A740()
{
  v12 = v0;
  if (qword_1005A7EC8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000A6F0(v1, qword_1005DFB18);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 141558275;
    *(v4 + 4) = 1752392040;
    *(v4 + 12) = 2081;
    type metadata accessor for Account();
    sub_10007CBF4(&qword_1005A9258, &type metadata accessor for Account, &protocol conformance descriptor for Account);
    v6 = Set.description.getter();
    v8 = sub_10000D01C(v6, v7, &v11);

    *(v4 + 14) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "Messaging accounts changed. Accounts: %{private,mask.hash}s", v4, 0x16u);
    sub_100004984(v5);
  }

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_10007A950()
{
  v12 = v0;
  if (qword_1005A7EC8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000A6F0(v1, qword_1005DFB18);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 141558275;
    *(v4 + 4) = 1752392040;
    *(v4 + 12) = 2081;
    type metadata accessor for Device();
    sub_10007CBF4(&qword_1005A9250, &type metadata accessor for Device, &protocol conformance descriptor for Device);
    v6 = Set.description.getter();
    v8 = sub_10000D01C(v6, v7, &v11);

    *(v4 + 14) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "Messaging devices changed. Devices: %{private,mask.hash}s", v4, 0x16u);
    sub_100004984(v5);
  }

  v9 = *(v0 + 8);

  return v9();
}

void sub_10007AB40(uint64_t a1)
{
  v2 = variable initialization expression of CurrentLocationMonitor.locationManager();
  v3 = sub_10007B860(&v19, a1, 0, 1, v2);
  v4 = *(a1 + 16);
  v5 = v19;
  if (v19 != v4)
  {
    if ((v19 & 0x8000000000000000) != 0)
    {
      goto LABEL_26;
    }

    if (v4 < v19)
    {
LABEL_27:
      __break(1u);
    }

    else
    {
      sub_10007B788(a1, a1 + 32, 0, (2 * v19) | 1);
      v20 = v3;
      v21 = v6;
      if (*(a1 + 16) >= v4)
      {

        while (1)
        {
          if (v5 >= v4)
          {
            __break(1u);
LABEL_26:
            __break(1u);
            goto LABEL_27;
          }

          v8 = (a1 + 32 + 16 * v5);
          v10 = *v8;
          v9 = v8[1];
          v11 = v20;
          v12 = v21;
          v13 = *(v21 + 16);
          if (v20)
          {

            sub_10007BEAC(v10, v9, v12 + 32, v13, (v11 + 16), v11 + 32);
            v15 = v14;
            v7 = v16;

            if ((v15 & 1) == 0)
            {
              goto LABEL_8;
            }
          }

          else
          {
            if (v13)
            {
              v17 = (v21 + 40);
              do
              {
                v18 = *(v17 - 1) == v10 && *v17 == v9;
                if (v18 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                {
                  goto LABEL_9;
                }

                v17 += 2;
              }

              while (--v13);
            }

            v7 = 0;
          }

          sub_10007BA94(v10, v9, v7);
LABEL_8:

LABEL_9:
          if (++v5 == v4)
          {

            return;
          }
        }
      }
    }

    __break(1u);
  }
}

uint64_t sub_10007AD00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v5 = type metadata accessor for Destination();
  v3[5] = v5;
  v3[6] = *(v5 - 8);
  v3[7] = swift_task_alloc();

  return _swift_task_switch(sub_10007ADC8, a2, 0);
}

uint64_t sub_10007ADC8()
{
  v4 = (&async function pointer to dispatch thunk of QueryController.correlationIdentifier(destination:) + async function pointer to dispatch thunk of QueryController.correlationIdentifier(destination:));
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  v1[1] = sub_10007AE78;
  v2 = *(v0 + 16);

  return v4(v2);
}

uint64_t sub_10007AE78(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[9] = a1;
  v4[10] = a2;
  v4[11] = v2;

  if (v2)
  {
    v5 = sub_10007B050;
  }

  else
  {
    v5 = sub_10007AF90;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10007AF90()
{
  v1 = v0[10];
  v2 = MessageContext.senderCorrelationIdentifier.getter();
  if (v1)
  {
    if (v2 == v0[9] && v0[10] == v3)
    {
      LOBYTE(v1) = 1;
    }

    else
    {
      LOBYTE(v1) = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  v5 = v0[1];

  return v5(v1 & 1);
}

uint64_t sub_10007B050()
{
  v23 = v0;
  if (qword_1005A7EC8 != -1)
  {
    swift_once();
  }

  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  v4 = v0[2];
  v5 = type metadata accessor for Logger();
  sub_10000A6F0(v5, qword_1005DFB18);
  (*(v2 + 16))(v1, v4, v3);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[6];
  v9 = v0[7];
  v11 = v0[5];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v22 = v21;
    *v12 = 138543875;
    swift_errorRetain();
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 4) = v13;
    *v20 = v13;
    *(v12 + 12) = 2160;
    *(v12 + 14) = 1752392040;
    *(v12 + 22) = 2081;
    sub_10007CBF4(&qword_1005A9260, &type metadata accessor for Destination, &protocol conformance descriptor for Destination);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    (*(v10 + 8))(v9, v11);
    v17 = sub_10000D01C(v14, v16, &v22);

    *(v12 + 24) = v17;
    _os_log_impl(&_mh_execute_header, v6, v7, "error in destinationCorrelationIdentifier: %{public}@ for destination: %{private,mask.hash}s", v12, 0x20u);
    sub_100002CE0(v20, &qword_1005A9670, &unk_1004C2480);

    sub_100004984(v21);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v18 = v0[1];

  return v18(0);
}

uint64_t sub_10007B330(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_10000368C;

  return sub_100070994(a1, a2, a3);
}

uint64_t sub_10007B3DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = swift_task_alloc();
  *(v5 + 16) = v9;
  *v9 = v5;
  v9[1] = sub_10000368C;

  return sub_10007C5D8(a1, a2, a3);
}

uint64_t sub_10007B4AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_10000368C;

  return sub_100070FA8(a1, a2, a3, a4);
}

uint64_t sub_10007B568(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10000368C;

  return sub_10007A720(a1);
}

uint64_t sub_10007B5FC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100003690;

  return sub_10007A930(a1);
}

uint64_t sub_10007B690(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100003788;

  return v6(a1);
}

void sub_10007B788(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      sub_10004B564(&qword_1005AFA60, &unk_1004CE390);
      v7 = swift_allocObject();
      v8 = j__malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 17;
      }

      v7[2] = v5;
      v7[3] = 2 * (v9 >> 4);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

uint64_t sub_10007B860(uint64_t *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v8 = *(a2 + 16);
  if (a4)
  {
    v9 = 0;
  }

  else
  {
    v9 = a3;
  }

  v10 = static _HashTable.scale(forCapacity:)();
  if (v10 <= v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  if (v11 <= a5)
  {
    v12 = a5;
  }

  else
  {
    v12 = v11;
  }

  if (v12 > 4)
  {
    v14 = _HashTable.init(scale:reservedScale:)();
    sub_10007BFF8(a2 + 32, v8, (v14 + 16), v14 + 32);
    *a1 = v15;
    return v14;
  }

  else if (v8 >= 2)
  {
    v16 = sub_10007B944(a2 + 32, v8);
    result = 0;
    *a1 = v16;
  }

  else
  {
    result = 0;
    *a1 = v8;
  }

  return result;
}

char *sub_10007B944(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  result = sub_10002B3C0(0, a2 & ~(a2 >> 63), 0);
  if (v2)
  {
    if (v2 < 0)
    {
      __break(1u);
      return result;
    }

    v5 = 0;
    v6 = _swiftEmptyArrayStorage[2];
    v17 = a1;
    do
    {
      v7 = v5++;
      v8 = (a1 + 16 * v7);
      v9 = *v8;
      v10 = v8[1];
      v11 = &_swiftEmptyArrayStorage[5];
      v12 = v6 + 1;
      while (--v12)
      {
        if (v9 != *(v11 - 1) || v10 != *v11)
        {
          v11 += 2;
          if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
          {
            continue;
          }
        }

        return v7;
      }

      v14 = _swiftEmptyArrayStorage[2];
      v15 = _swiftEmptyArrayStorage[3];
      v6 = v14 + 1;

      if (v14 >= v15 >> 1)
      {
        sub_10002B3C0((v15 > 1), v14 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v6;
      v16 = &_swiftEmptyArrayStorage[2 * v14];
      v16[4] = v9;
      v16[5] = v10;
      a1 = v17;
    }

    while (v5 != v2);
  }

  return v2;
}

uint64_t sub_10007BA94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v9 = v3[1];
  v7 = v3 + 1;
  v8 = v9;

  result = swift_isUniquelyReferenced_nonNull_native();
  *v7 = v9;
  if ((result & 1) == 0)
  {
    result = sub_10002B3C0(0, *(v8 + 16) + 1, 1);
    v8 = *v7;
  }

  v12 = *(v8 + 16);
  v11 = *(v8 + 24);
  if (v12 >= v11 >> 1)
  {
    result = sub_10002B3C0((v11 > 1), v12 + 1, 1);
    v8 = *v7;
  }

  *(v8 + 16) = v12 + 1;
  v13 = v8 + 16 * v12;
  *(v13 + 32) = a1;
  *(v13 + 40) = a2;
  v4[1] = v8;
  if (*v4)
  {
    swift_beginAccess();
    if (static _HashTable.maximumCapacity(forScale:)() > v12)
    {
      result = swift_isUniquelyReferenced_native();
      v14 = *v4;
      if ((result & 1) == 0)
      {
        if (!v14)
        {
LABEL_16:
          __break(1u);
          return result;
        }

        v15 = _HashTable.copy()();

        *v4 = v15;
        v14 = v15;
      }

      if (v14)
      {
        return _HashTable.UnsafeHandle.subscript.setter();
      }

      __break(1u);
      goto LABEL_16;
    }
  }

  else if (v12 < 0xF)
  {
    return result;
  }

  return sub_10007BC0C();
}

uint64_t sub_10007BC0C()
{
  v1 = *v0;
  if (*v0)
  {
    swift_beginAccess();
    v2 = *(v1 + 24) & 0x3FLL;
  }

  else
  {
    v2 = 0;
  }

  v3 = v0[1];
  if (v2 || *(v3 + 16) >= 0x10uLL)
  {
    v5 = static _HashTable.scale(forCapacity:)();
    if (v2 <= v5)
    {
      v6 = v5;
    }

    else
    {
      v6 = v2;
    }

    v4 = sub_10007BCAC(v3, v6, 0, v2);
  }

  else
  {
    v4 = 0;
  }

  *v0 = v4;
  return result;
}

uint64_t sub_10007BCAC(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if (a3)
  {
    v6 = 0;
  }

  else
  {
    v6 = a2;
  }

  v7 = static _HashTable.scale(forCapacity:)();
  result = 0;
  if (v7 <= v6)
  {
    v7 = v6;
  }

  if (v7 <= a4)
  {
    v7 = a4;
  }

  if (v7 >= 5)
  {
    v9 = _HashTable.init(scale:reservedScale:)();
    sub_10007BD2C(a1, (v9 + 16), v9 + 32);
    return v9;
  }

  return result;
}

Swift::Int sub_10007BD7C(Swift::Int result, uint64_t a2, void *a3, uint64_t a4)
{
  if (a2)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      v6 = 0;
      while (1)
      {
        Hasher.init(_seed:)();

        String.hash(into:)();
        v7 = Hasher._finalize()();
        if (__OFSUB__(1 << *a3, 1))
        {
          break;
        }

        v8 = _HashTable.UnsafeHandle._startIterator(bucket:)();

        if (v8)
        {
          while (1)
          {
            _HashTable.BucketIterator.advance()();
          }
        }

        v7 = _HashTable.BucketIterator.currentValue.setter();
        if (++v6 == a2)
        {
          return v7;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  return v7;
}

Swift::Int sub_10007BEAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  result = Hasher._finalize()();
  if (__OFSUB__(1 << *a5, 1))
  {
    __break(1u);
  }

  else
  {
    _HashTable.UnsafeHandle._startIterator(bucket:)();
    result = _HashTable.BucketIterator.currentValue.getter();
    if ((v11 & 1) == 0)
    {
      v12 = (a3 + 16 * result);
      if (*v12 != a1 || v12[1] != a2)
      {
        while (1)
        {
          v14 = result;
          if (_stringCompareWithSmolCheck(_:_:expecting:)())
          {
            break;
          }

          _HashTable.BucketIterator.advance()();
          result = _HashTable.BucketIterator.currentValue.getter();
          if ((v15 & 1) == 0)
          {
            v16 = (a3 + 16 * result);
            if (*v16 != a1 || v16[1] != a2)
            {
              continue;
            }
          }

          return result;
        }

        return v14;
      }
    }
  }

  return result;
}

Swift::Int sub_10007BFF8(Swift::Int result, uint64_t a2, void *a3, uint64_t a4)
{
  if (!a2)
  {
    return 1;
  }

  if (a2 < 0)
  {
    goto LABEL_20;
  }

  v4 = a3;
  v5 = result;
  v6 = 0;
  v14 = result;
  while (2)
  {
    if (__OFADD__(v6, 1))
    {
      __break(1u);
      goto LABEL_19;
    }

    v15 = v6 + 1;
    v7 = (v5 + 16 * v6);
    Hasher.init(_seed:)();

    String.hash(into:)();
    result = Hasher._finalize()();
    if (__OFSUB__(1 << *v4, 1))
    {
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      return result;
    }

    _HashTable.UnsafeHandle._startIterator(bucket:)();

    v5 = v14;
    while (1)
    {
      v8 = _HashTable.BucketIterator.currentValue.getter();
      if (v9)
      {
        break;
      }

      v10 = (v14 + 16 * v8);
      v11 = *v10 == *v7 && v10[1] == v7[1];
      if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        return 0;
      }

      _HashTable.BucketIterator.advance()();
    }

    result = _HashTable.BucketIterator.currentValue.setter();
    ++v6;
    v4 = a3;
    if (v15 != a2)
    {
      continue;
    }

    return 1;
  }
}

unint64_t sub_10007C1B8(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10058A798, v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10007C258(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10007C368(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10007C42C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10007C4DC;

  return sub_10007AD00(a1, v4, v5);
}

uint64_t sub_10007C4DC(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_10007C5D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[3] = a2;
  v4[4] = a3;
  v4[2] = a1;
  v5 = sub_10004B564(&qword_1005A92B0, &qword_1004D8050);
  v4[5] = v5;
  v4[6] = *(v5 - 8);
  v4[7] = swift_task_alloc();
  v6 = type metadata accessor for Destination();
  v4[8] = v6;
  v4[9] = *(v6 - 8);
  v4[10] = swift_task_alloc();
  v7 = type metadata accessor for Account();
  v4[11] = v7;
  v4[12] = *(v7 - 8);
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();

  return _swift_task_switch(sub_10007C76C, v3, 0);
}

uint64_t sub_10007C76C()
{
  v55 = v0;
  if (qword_1005A7EC8 != -1)
  {
    swift_once();
  }

  v1 = v0[14];
  v2 = v0[11];
  v3 = v0[12];
  v4 = v0[9];
  v5 = v0[8];
  v6 = v0[6];
  v51 = v0[5];
  v53 = v0[7];
  v7 = v0[3];
  v47 = v0[10];
  v49 = v0[4];
  v8 = v0[2];
  v9 = type metadata accessor for Logger();
  sub_10000A6F0(v9, qword_1005DFB18);
  v10 = v1;
  v11 = *(v3 + 16);
  v11(v10, v8, v2);
  (*(v4 + 16))(v47, v7, v5);
  (*(v6 + 16))(v53, v49, v51);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.info.getter();
  v14 = os_log_type_enabled(v12, v13);
  v15 = v0[14];
  if (v14)
  {
    v46 = v13;
    v16 = v0[12];
    v17 = v0[13];
    v18 = v0[11];
    v19 = v0[9];
    v44 = v0[8];
    v45 = v0[10];
    v50 = v0[7];
    v52 = v0[6];
    v48 = v0[5];
    v20 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    *v20 = 136447747;
    *(v20 + 4) = sub_10000D01C(0xD00000000000003ELL, 0x80000001004DEC60, &v54);
    *(v20 + 12) = 2160;
    *(v20 + 14) = 1752392040;
    *(v20 + 22) = 2081;
    v11(v17, v15, v18);
    v21 = String.init<A>(describing:)();
    v23 = v22;
    (*(v16 + 8))(v15, v18);
    v24 = sub_10000D01C(v21, v23, &v54);

    *(v20 + 24) = v24;
    *(v20 + 32) = 2160;
    *(v20 + 34) = 1752392040;
    *(v20 + 42) = 2081;
    sub_10007CBF4(&qword_1005A9260, &type metadata accessor for Destination, &protocol conformance descriptor for Destination);
    v25 = dispatch thunk of CustomStringConvertible.description.getter();
    v27 = v26;
    (*(v19 + 8))(v45, v44);
    v28 = sub_10000D01C(v25, v27, &v54);

    *(v20 + 44) = v28;
    *(v20 + 52) = 2160;
    *(v20 + 54) = 1752392040;
    *(v20 + 62) = 2081;
    sub_10001DF0C(&qword_1005A92B8, &qword_1005A92B0, &qword_1004D8050, &protocol conformance descriptor for Message<A>);
    v29 = dispatch thunk of CustomStringConvertible.description.getter();
    v31 = v30;
    (*(v52 + 8))(v50, v48);
    v32 = sub_10000D01C(v29, v31, &v54);

    *(v20 + 64) = v32;
    _os_log_impl(&_mh_execute_header, v12, v46, "CommandManager IDS %{public}s with\naccount: %{private,mask.hash}s\ndestination %{private,mask.hash}s\nmessage: %{private,mask.hash}s", v20, 0x48u);
    swift_arrayDestroy();
  }

  else
  {
    v33 = v0[11];
    v34 = v0[12];
    v36 = v0[9];
    v35 = v0[10];
    v38 = v0[7];
    v37 = v0[8];
    v39 = v12;
    v41 = v0[5];
    v40 = v0[6];

    (*(v40 + 8))(v38, v41);
    (*(v36 + 8))(v35, v37);
    (*(v34 + 8))(v15, v33);
  }

  v42 = v0[1];

  return v42();
}

uint64_t sub_10007CBF4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10007CC3C(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 2);
  v7 = *(v2 + 3);
  v8 = v2[4];
  v9 = *(v2 + 5);
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_100003690;

  return sub_10006E79C(v8, a1, a2, v6, v7, v9);
}

uint64_t sub_10007CD08(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for Handle() - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = v1[2];
  v9 = v1[3];
  v10 = v1[4];
  v11 = v1[5];
  v12 = *(v1 + v7);
  v13 = *(v1 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_10000368C;

  return sub_10006EF0C(v13, a1, v8, v9, v10, v11, v1 + v6, v12);
}

uint64_t sub_10007CE68(uint64_t a1, uint64_t a2)
{
  v4 = sub_10004B564(&qword_1005A9690, &qword_1004C2A00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10007CED8(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10007CFD0;

  return sub_10007A554(a1, v1);
}

unint64_t sub_10007CF70()
{
  result = qword_1005A92C8;
  if (!qword_1005A92C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005A92C8);
  }

  return result;
}

uint64_t sub_10007CFD4(uint64_t a1)
{
  v4 = *v2;

  v6 = *(v4 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

uint64_t sub_10007D140(char a1)
{
  v2 = *(*v1 + 1616);
  *(*v1 + 1988) = a1;

  return _swift_task_switch(sub_10007D258, v2, 0);
}

uint64_t sub_10007D258()
{
  v55 = v0;
  if (*(v0 + 1988) != 1)
  {
    if (qword_1005A7EC8 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_10000A6F0(v15, qword_1005DFB18);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v10, v11))
    {
      goto LABEL_12;
    }

    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v54 = v13;
    *v12 = 136446210;
    *(v12 + 4) = sub_10000D01C(0xD000000000000011, 0x80000001004DED70, &v54);
    v14 = "%{public}s Skipping since no need to schedule a refresh";
    goto LABEL_11;
  }

  v1 = *(v0 + 1744);
  v2 = *(v0 + 1736);
  v3 = *(v0 + 1704);
  v4 = *(v0 + 1696);
  v5 = *(v0 + 1616);
  v6 = OBJC_IVAR____TtC13findmylocated14CommandManager_refreshScheduled;
  *(v0 + 1856) = OBJC_IVAR____TtC13findmylocated14CommandManager_refreshScheduled;
  swift_beginAccess();
  v52 = v3[2];
  v53 = v5;
  v52(v1, v5 + v6, v4);
  *(v0 + 1984) = enum case for LegacyRefreshSchedule.highPriorityScheduled(_:);
  v7 = v3[13];
  *(v0 + 1864) = v7;
  *(v0 + 1872) = (v3 + 13) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v51 = v7;
  v7(v2);
  sub_100008FC0(&qword_1005A9310, &type metadata accessor for LegacyRefreshSchedule, &protocol conformance descriptor for LegacyRefreshSchedule);
  LOBYTE(v5) = dispatch thunk of static Equatable.== infix(_:_:)();
  v8 = v3[1];
  v8(v2, v4);
  v8(v1, v4);
  if (v5)
  {
    if (qword_1005A7EC8 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_10000A6F0(v9, qword_1005DFB18);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v10, v11))
    {
      goto LABEL_12;
    }

    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v54 = v13;
    *v12 = 136446210;
    *(v12 + 4) = sub_10000D01C(0xD000000000000011, 0x80000001004DED70, &v54);
    v14 = "%{public}s Skipping since we already have a high priority refresh queued";
LABEL_11:
    _os_log_impl(&_mh_execute_header, v10, v11, v14, v12, 0xCu);
    sub_100004984(v13);

LABEL_12:

    v16 = sub_1002087C4(_swiftEmptyArrayStorage);

LABEL_13:

    v17 = *(v0 + 8);

    return v17(v16);
  }

  v47 = v8;
  v19 = *(v0 + 1688);
  v50 = *(v0 + 1680);
  v20 = *(v0 + 1672);
  v21 = *(v0 + 1664);
  v22 = *(v0 + 1616);
  v23 = OBJC_IVAR____TtC13findmylocated14CommandManager_coleasedRefreshPriority;
  swift_beginAccess();
  (*(v20 + 16))(v19, v22 + v23, v21);
  v49 = enum case for LocatePriority.live(_:);
  v48 = *(v20 + 104);
  v48(v50);
  sub_100008FC0(&qword_1005A9318, &type metadata accessor for LocatePriority, &protocol conformance descriptor for LocatePriority);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v24 = *(v20 + 8);
  *(v0 + 1880) = v24;
  *(v0 + 1888) = (v20 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v24(v50, v21);
  v25 = v24;
  if (*(v0 + 1584) != *(v0 + 1592))
  {
    v26 = *(v0 + 1720);
    v27 = *(v0 + 1696);
    v52(*(v0 + 1728), v53 + v6, v27);
    v51(v26, enum case for LegacyRefreshSchedule.notScheduled(_:), v27);
    sub_100008FC0(&qword_1005A9320, &type metadata accessor for LegacyRefreshSchedule, &protocol conformance descriptor for LegacyRefreshSchedule);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    v28 = *(v0 + 1728);
    v29 = *(v0 + 1720);
    v30 = *(v0 + 1696);
    if (*(v0 + 1552) == *(v0 + 1568) && *(v0 + 1560) == *(v0 + 1576))
    {
      v47(*(v0 + 1720), *(v0 + 1696));
      v47(v28, v30);
    }

    else
    {
      v31 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v47(v29, v30);
      v47(v28, v30);

      if ((v31 & 1) == 0)
      {
        goto LABEL_29;
      }
    }

    v32 = *(v0 + 1616);
    v33 = OBJC_IVAR____TtC13findmylocated14CommandManager_coalescedCommands;
    swift_beginAccess();
    if (*(*(v32 + v33) + 16))
    {
      goto LABEL_22;
    }

LABEL_29:
    if (qword_1005A7EC8 != -1)
    {
      swift_once();
    }

    v40 = type metadata accessor for Logger();
    sub_10000A6F0(v40, qword_1005DFB18);
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v54 = v44;
      *v43 = 136446210;
      *(v43 + 4) = sub_10000D01C(0xD000000000000011, 0x80000001004DED70, &v54);
      _os_log_impl(&_mh_execute_header, v41, v42, "%{public}s Returning since there is no need to schedule a refresh", v43, 0xCu);
      sub_100004984(v44);
    }

    v45 = *(v0 + 1688);
    v46 = *(v0 + 1664);
    v16 = sub_1002087C4(_swiftEmptyArrayStorage);

    v25(v45, v46);
    goto LABEL_13;
  }

LABEL_22:
  v34 = *(v0 + 1680);
  v35 = *(v0 + 1664);
  (v48)(v34, v49, v35);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v25(v34, v35);
  v36 = *(v0 + 1600);
  *(v0 + 1896) = v36;
  v37 = *(v0 + 1608);
  *(v0 + 1904) = v37;
  if (v36 == v37)
  {
    v38 = swift_task_alloc();
    *(v0 + 1912) = v38;
    *v38 = v0;
    v38[1] = sub_10007DC0C;

    return sub_1000593C0();
  }

  else
  {
    v39 = swift_task_alloc();
    *(v0 + 1936) = v39;
    *v39 = v0;
    v39[1] = sub_100035E4C;

    return sub_100245BB8(v0 + 496);
  }
}

uint64_t sub_10007DC0C(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 1616);
  *(v3 + 1920) = a1;
  *(v3 + 1928) = a2;

  return _swift_task_switch(sub_10007DD28, v4, 0);
}

uint64_t sub_10007DD28()
{
  v36 = v0;
  v1 = *(v0 + 1928);
  v2 = *(v0 + 1920);
  if (qword_1005A7EC8 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000A6F0(v3, qword_1005DFB18);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v34 = *(v0 + 1896) == *(v0 + 1904);
    v6 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    *v6 = 136446722;
    *(v6 + 4) = sub_10000D01C(0xD000000000000011, 0x80000001004DED70, &v35);
    *(v6 + 12) = 2082;
    v7 = Duration.description.getter();
    v9 = v2;
    v10 = sub_10000D01C(v7, v8, &v35);

    *(v6 + 14) = v10;
    v2 = v9;
    *(v6 + 22) = 1024;
    *(v6 + 24) = v34;
    _os_log_impl(&_mh_execute_header, v4, v5, "%{public}s scheduleInterval: %{public}s isHighPriority: %{BOOL}d", v6, 0x1Cu);
    swift_arrayDestroy();
  }

  v11 = *(v0 + 1856);
  v12 = *(v0 + 1712);
  v13 = *(v0 + 1704);
  v14 = *(v0 + 1696);
  v15 = *(v0 + 1616);
  if (*(v0 + 1896) == *(v0 + 1904))
  {
    v16 = (v0 + 1984);
  }

  else
  {
    v16 = &enum case for LegacyRefreshSchedule.lowPriorityScheduled(_:);
  }

  (*(v0 + 1864))(*(v0 + 1712), *v16, *(v0 + 1696));
  swift_beginAccess();
  (*(v13 + 40))(v15 + v11, v12, v14);
  swift_endAccess();
  if (Duration.milliseconds.getter() < 1)
  {
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v35 = v29;
      *v28 = 136446210;
      *(v28 + 4) = sub_10000D01C(0xD000000000000011, 0x80000001004DED70, &v35);
      _os_log_impl(&_mh_execute_header, v26, v27, "%{public}s Refreshing legacy location now.", v28, 0xCu);
      sub_100004984(v29);
    }

    v30 = swift_task_alloc();
    *(v0 + 1960) = v30;
    *v30 = v0;
    v30[1] = sub_10007E2A0;

    return sub_100034580(0, v2, v1);
  }

  else
  {
    v33 = *(v0 + 1880);
    v17 = *(v0 + 1792);
    v32 = *(v0 + 1688);
    v31 = *(v0 + 1664);
    v18 = *(v0 + 1624);
    v19 = v2;
    v20 = *(v0 + 1616);
    v21 = *(v0 + 1896) == *(v0 + 1904);
    type metadata accessor for WorkItemQueue.WorkItem();
    v22 = swift_allocObject();
    *(v22 + 16) = v19;
    *(v22 + 24) = v1;
    *(v22 + 32) = v21;
    *(v22 + 40) = v17;
    *(v22 + 48) = v20;
    *(v22 + 56) = v18;

    UUID.init()();
    WorkItemQueue.WorkItem.__allocating_init(identifier:block:completion:)();
    dispatch thunk of WorkItemQueue.enqueue(_:)();

    v23 = sub_1002087C4(_swiftEmptyArrayStorage);

    v33(v32, v31);

    v24 = *(v0 + 8);

    return v24(v23);
  }
}

uint64_t sub_10007E2A0(uint64_t a1)
{
  v4 = *v2;
  v4[246] = v1;

  v5 = v4[202];
  if (v1)
  {
    v6 = sub_10007E6DC;
  }

  else
  {
    v4[247] = a1;
    v6 = sub_10007E3DC;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10007E3DC()
{
  v1 = v0[235];
  v2 = v0[211];
  v3 = v0[208];

  v1(v2, v3);
  v4 = v0[247];

  v5 = v0[1];

  return v5(v4);
}

uint64_t sub_10007E4F8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10007E5E4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10007E6DC()
{
  v1 = v0[235];
  v2 = v0[211];
  v3 = v0[208];

  v1(v2, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_10007E7F0(uint64_t a1)
{
  v2 = *(*v1 + 2696);
  *(*v1 + 3304) = a1;

  return _swift_task_switch(sub_10007E924, v2, 0);
}

uint64_t sub_10007E924()
{
  v73 = v0;
  v1 = v0[413];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = v0[398];
    v70 = (v4 + 32);
    v5 = _swiftEmptyArrayStorage;
    v64 = *(v1 + 16);
    v67 = v0[413];
    while (v3 < *(v1 + 16))
    {
      v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
      v7 = *(v4 + 72);
      (*(v4 + 16))(v0[402], v0[413] + v6 + v7 * v3, v0[397]);
      if (Friend.isLegacyLocationCapable.getter())
      {
        v8 = *v70;
        (*v70)(v0[401], v0[402], v0[397]);
        v72[0] = v5;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_100239354(0, *(v5 + 2) + 1, 1);
          v5 = v72[0];
        }

        v10 = *(v5 + 2);
        v9 = *(v5 + 3);
        if (v10 >= v9 >> 1)
        {
          sub_100239354((v9 > 1), v10 + 1, 1);
          v5 = v72[0];
        }

        v11 = v0[401];
        v12 = v0[397];
        *(v5 + 2) = v10 + 1;
        v8(&v5[v6 + v10 * v7], v11, v12);
        v2 = v64;
        v1 = v67;
      }

      else
      {
        (*(v4 + 8))(v0[402], v0[397]);
      }

      if (v2 == ++v3)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
    goto LABEL_41;
  }

  v5 = _swiftEmptyArrayStorage;
LABEL_14:

  v13 = *(v5 + 2);
  if (v13)
  {
    v14 = v0[398];
    v15 = v0[393];
    v72[0] = _swiftEmptyArrayStorage;
    sub_10000E8E0(0, v13, 0);
    v16 = _swiftEmptyArrayStorage;
    v17 = *(v14 + 16);
    v14 += 16;
    v18 = &v5[(*(v14 + 64) + 32) & ~*(v14 + 64)];
    v65 = *(v14 + 56);
    v68 = v17;
    v19 = (v14 - 8);
    do
    {
      v20 = v0[400];
      v21 = v0[397];
      v68(v20, v18, v21);
      Friend.handle.getter();
      (*v19)(v20, v21);
      v72[0] = v16;
      v23 = v16[2];
      v22 = v16[3];
      if (v23 >= v22 >> 1)
      {
        sub_10000E8E0((v22 > 1), v23 + 1, 1);
        v16 = v72[0];
      }

      v24 = v0[396];
      v25 = v0[392];
      v16[2] = v23 + 1;
      (*(v15 + 32))(v16 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v23, v24, v25);
      v18 += v65;
      --v13;
    }

    while (v13);
  }

  v26 = *(v0[337] + v0[410]);
  v62 = *(v26 + 16);
  if (v62)
  {
    v27 = v0[386];
    v60 = v26 + ((*(v27 + 80) + 32) & ~*(v27 + 80));
    v61 = v27;
    v59 = (v0[383] + 8);
    v55 = v0[393];
    v57 = (v27 + 8);
    v58 = (v0[380] + 8);

    v28 = 0;
    v29 = _swiftEmptyArrayStorage;
    v56 = v26;
    while (v28 < *(v26 + 16))
    {
      (*(v61 + 16))(v0[391], v60 + *(v61 + 72) * v28, v0[385]);
      v37 = *(LocationRequest.toHandles.getter() + 16);

      if (v37)
      {
        v38 = LocationRequest.toHandles.getter();
      }

      else
      {
      }

      v69 = v38;
      v39 = v0[384];
      v40 = v0[382];
      LocationRequest.refreshReason.getter();
      refreshed = LegacyRefreshCommandReason.reason.getter();
      v43 = v42;
      (*v59)(v39, v40);
      v66 = v28;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v29 = sub_1001FC900(0, *(v29 + 2) + 1, 1, v29);
      }

      v45 = *(v29 + 2);
      v44 = *(v29 + 3);
      if (v45 >= v44 >> 1)
      {
        v29 = sub_1001FC900((v44 > 1), v45 + 1, 1, v29);
      }

      *(v29 + 2) = v45 + 1;
      v46 = &v29[16 * v45];
      *(v46 + 4) = refreshed;
      *(v46 + 5) = v43;
      v47 = *(v69 + 16);
      if (v47)
      {
        v63 = v29;
        v48 = v69 + ((*(v55 + 80) + 32) & ~*(v55 + 80));
        v71 = *(v55 + 72);
        v49 = *(v55 + 16);
        do
        {
          v50 = v0[395];
          v51 = v0[394];
          v52 = v0[392];
          v49(v50, v48, v52);
          sub_10002BAF4(v51, v50);
          (*(v55 + 8))(v51, v52);
          v48 += v71;
          --v47;
        }

        while (v47);

        v26 = v56;
        v29 = v63;
      }

      else
      {
      }

      v28 = v66 + 1;
      v30 = v0[391];
      v31 = v0[385];
      v32 = v0[381];
      v33 = v0[379];
      LocationRequest.origin.getter();
      v34 = RequestOrigin.contextApp.getter();
      (*v58)(v32, v33);
      v0[334] = v34;
      v35 = dispatch thunk of CustomStringConvertible.description.getter();
      sub_1002345CC(v72, v35, v36);

      (*v57)(v30, v31);
      if (v66 + 1 == v62)
      {

        goto LABEL_37;
      }
    }

LABEL_41:
    __break(1u);
    return daemon.getter();
  }

  v29 = _swiftEmptyArrayStorage;
LABEL_37:
  v0[414] = v29;

  v53 = swift_task_alloc();
  v0[415] = v53;
  *v53 = v0;
  v53[1] = sub_10007EFB0;

  return daemon.getter();
}

uint64_t sub_10007EFB0(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v4 = *v1;
  *(v3 + 3328) = a1;

  v5 = swift_task_alloc();
  *(v3 + 3336) = v5;
  v6 = type metadata accessor for AccountService(0);
  v7 = sub_100008FC0(&qword_1005A9118, type metadata accessor for AccountService, &unk_1004DCC10);
  *v5 = v4;
  v5[1] = sub_10007F164;
  v8 = *(v2 + 3256);
  v9 = *(v2 + 3248);

  return ActorServiceDaemon.getService<A>()(v9, v6, v8, v7);
}

uint64_t sub_10007F164(uint64_t a1)
{
  v3 = *v2;
  v3[418] = a1;
  v3[419] = v1;

  if (v1)
  {
    v4 = v3[337];

    return _swift_task_switch(sub_100082230, v4, 0);
  }

  else
  {

    v5 = swift_task_alloc();
    v3[420] = v5;
    *v5 = v3;
    v5[1] = sub_10007F31C;
    v6 = v3[372];

    return sub_10000EB24(v6);
  }
}

uint64_t sub_10007F31C()
{
  v1 = *(*v0 + 2696);

  return _swift_task_switch(sub_10007F42C, v1, 0);
}

uint64_t sub_10007F42C()
{
  v66 = v0;
  v1 = v0[374];
  v2 = v0[373];
  v3 = v0[372];
  if ((*(v1 + 48))(v3, 1, v2) == 1)
  {

    sub_100002CE0(v3, &qword_1005A9110, &qword_1004C25F8);
    if (qword_1005A7EC8 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_10000A6F0(v4, qword_1005DFB18);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "Missing primary account to make Location Request!", v7, 2u);
    }

    sub_1000284BC();
    swift_allocError();
    *v8 = 1;
    swift_willThrow();

    v9 = v0[1];

    return v9();
  }

  v11 = v0[371];
  v12 = v0[369];
  v13 = v0[368];
  v14 = v0[337];
  (*(v1 + 32))(v0[378], v3, v2);
  v15 = OBJC_IVAR____TtC13findmylocated14CommandManager_coleasedRefreshPriority;
  v0[421] = OBJC_IVAR____TtC13findmylocated14CommandManager_coleasedRefreshPriority;
  swift_beginAccess();
  (*(v12 + 16))(v11, v14 + v15, v13);
  v16 = v0[333];
  v17 = *(v16 + 16);
  v64 = v16;
  if (v17)
  {
    v18 = v0[393];
    v19 = sub_10002C714(v17, 0);
    v20 = sub_10002C73C(v65, &v19[(*(v18 + 80) + 32) & ~*(v18 + 80)], v17, v16);
    v21 = v65[0];

    sub_10000E3F8(v21);
    if (v20 != v17)
    {
      __break(1u);
    }
  }

  v22 = v0[366];
  v23 = v0[365];
  v24 = v0[364];
  (*(v0[383] + 56))(v0[367], 1, 1, v0[382]);
  (*(v23 + 104))(v22, enum case for ClientOrigin.other(_:), v24);
  RequestOrigin.init(_:)();
  LocationRequest.init(priority:origin:toHandles:reason:startRefreshingLocation:isCached:)();
  if (qword_1005A7EC8 != -1)
  {
    swift_once();
  }

  v25 = v0[390];
  v26 = v0[389];
  v27 = v0[386];
  v28 = v0[385];
  v29 = type metadata accessor for Logger();
  v0[422] = v29;
  v0[423] = sub_10000A6F0(v29, qword_1005DFB18);
  v30 = *(v27 + 16);
  v0[424] = v30;
  v0[425] = (v27 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v63 = v30;
  v30(v26, v25, v28);
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.default.getter();
  v33 = os_log_type_enabled(v31, v32);
  v34 = v0[389];
  v35 = v0[386];
  v36 = v0[385];
  if (v33)
  {
    v37 = swift_slowAlloc();
    v65[0] = swift_slowAlloc();
    *v37 = 136446723;
    *(v37 + 4) = sub_10000D01C(0xD00000000000002FLL, 0x80000001004DED40, v65);
    *(v37 + 12) = 2160;
    *(v37 + 14) = 1752392040;
    *(v37 + 22) = 2081;
    sub_100008FC0(&qword_1005A9300, &type metadata accessor for LocationRequest, &protocol conformance descriptor for LocationRequest);
    v38 = dispatch thunk of CustomStringConvertible.description.getter();
    v40 = v39;
    v41 = *(v35 + 8);
    v41(v34, v36);
    v42 = sub_10000D01C(v38, v40, v65);

    *(v37 + 24) = v42;
    _os_log_impl(&_mh_execute_header, v31, v32, "CommandManager %{public}s request: %{private,mask.hash}s", v37, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    v41 = *(v35 + 8);
    v41(v34, v36);
  }

  v0[426] = v41;
  v43 = v0[390];
  v44 = v0[388];
  v62 = v0[385];
  v45 = v0[378];
  v46 = v0[377];
  v47 = v0[376];
  v48 = v0[374];
  v49 = v0[373];
  v50 = v0[363];
  v51 = *(v48 + 16);
  v0[427] = v51;
  v0[428] = (v48 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v51(v46, v45, v49);
  v52 = LocationRequest.shallowLocatesOnly.getter();
  sub_10015EC34(v46, (v52 & 1) == 0, v50);
  v51(v47, v45, v49);
  v63(v44, v43, v62);
  v53 = *(v64 + 16);
  if (v53)
  {
    v54 = v0[393];
    v55 = sub_10002C714(*(v64 + 16), 0);
    v56 = sub_10002C73C(v65, &v55[(*(v54 + 80) + 32) & ~*(v54 + 80)], v53, v64);
    v57 = v65[0];

    sub_10000E3F8(v57);

    if (v56 == v53)
    {
      goto LABEL_21;
    }

    __break(1u);
  }

LABEL_21:
  v58 = v0[332];
  v59 = *(v58 + 16);
  if (!v59)
  {
LABEL_24:

    v60 = _swiftEmptyArrayStorage;
    goto LABEL_25;
  }

  v60 = sub_10022BC70(*(v58 + 16), 0);
  v61 = sub_10023E504(v65, v60 + 4, v59, v58);
  sub_10000E3F8(v65[0]);
  if (v61 != v59)
  {
    __break(1u);
    goto LABEL_24;
  }

LABEL_25:
  v0[429] = v60;

  return _swift_task_switch(sub_10007FDA0, 0, 0);
}

uint64_t sub_10007FDA0()
{
  v1 = *(v0 + 3416);
  v2 = *(v0 + 3392);
  v3 = *(v0 + 3104);
  v4 = *(v0 + 3096);
  v5 = *(v0 + 3080);
  v6 = *(v0 + 3008);
  v7 = *(v0 + 3000);
  v8 = *(v0 + 2984);
  *(v0 + 3440) = sub_10014ABCC();
  v2(v4, v3, v5);
  v1(v7, v6, v8);
  v9 = swift_task_alloc();
  *(v0 + 3448) = v9;
  *v9 = v0;
  v9[1] = sub_10007FED8;
  v10 = *(v0 + 3312);
  v11 = *(v0 + 3096);
  v12 = *(v0 + 3000);
  v13 = *(v0 + 2888);
  v14 = *(v0 + 2688);
  v15 = *(v0 + 2680);
  v16 = *(v0 + 3620);

  return sub_10015EFCC(v13, v11, v12, v16, v15, v14, v10, _swiftEmptyArrayStorage);
}

uint64_t sub_10007FED8()
{
  *(*v1 + 3456) = v0;

  if (v0)
  {
    v2 = sub_1000803D8;
  }

  else
  {
    v2 = sub_10007FFEC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10007FFEC()
{
  v33 = v0;
  if (qword_1005A7F88 != -1)
  {
    swift_once();
  }

  v1 = v0[361];
  v2 = v0[360];
  sub_10000A6F0(v0[422], qword_1005DFC28);
  sub_1000845B8(v1, v2, type metadata accessor for LegacyLocationServerRequestContext);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[360];
  if (v5)
  {
    v7 = v0[359];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v32 = v9;
    *v8 = 136315138;
    sub_1000845B8(v6, v7, type metadata accessor for LegacyLocationServerRequestContext);
    v10 = String.init<A>(describing:)();
    v12 = v11;
    sub_1000846A4(v6, type metadata accessor for LegacyLocationServerRequestContext);
    v13 = sub_10000D01C(v10, v12, &v32);

    *(v8 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v3, v4, "Request content: %s", v8, 0xCu);
    sub_100004984(v9);
  }

  else
  {

    sub_1000846A4(v6, type metadata accessor for LegacyLocationServerRequestContext);
  }

  v14 = v0[432];
  v15 = v0[357];
  v16 = v0[356];
  v17 = v0[355];
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  *v15 = sub_10019E890;
  v15[1] = 0;
  (*(v16 + 104))(v15, enum case for JSONEncoder.DateEncodingStrategy.custom(_:), v17);
  dispatch thunk of JSONEncoder.dateEncodingStrategy.setter();
  sub_100008FC0(&qword_1005A92E8, type metadata accessor for LegacyLocationServerRequestContext, &unk_1004C90D8);
  v18 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  if (v14)
  {

    v20 = 0;
    v21 = 0xF000000000000000;
  }

  else
  {
    v20 = v18;
    v21 = v19;
  }

  v0[437] = v21;
  v0[436] = v20;
  v22 = v0[426];
  v23 = v0[388];
  v24 = v0[386];
  v25 = v0[385];
  v26 = v0[374];
  v27 = v0[373];
  v30 = v0[376];
  v31 = v0[337];
  sub_1000846A4(v0[361], type metadata accessor for LegacyLocationServerRequestContext);
  v0[438] = (v24 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v22(v23, v25);
  v28 = *(v26 + 8);
  v0[439] = v28;
  v0[440] = (v26 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v28(v30, v27);
  sub_10001A794(0, 0xF000000000000000);

  sub_10002CF44(v20, v21);

  sub_10001A794(v20, v21);

  return _swift_task_switch(sub_1000807B8, v31, 0);
}

uint64_t sub_1000803D8()
{
  v1 = v0[426];
  v2 = v0[388];
  v3 = v0[385];
  v4 = v0[376];
  v5 = v0[374];
  v6 = v0[373];
  v7 = v0[337];
  v0[433] = (v0[386] + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v1(v2, v3);
  v8 = *(v5 + 8);
  v0[434] = v8;
  v0[435] = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v4, v6);

  sub_10001A794(0, 0xF000000000000000);

  return _swift_task_switch(sub_1000804D0, v7, 0);
}

uint64_t sub_1000804D0()
{
  v1 = v0[434];
  v2 = v0[426];
  v3 = v0[390];
  v4 = v0[385];
  v5 = v0[378];
  v6 = v0[373];
  v7 = v0[363];

  sub_1000846A4(v7, type metadata accessor for LocationEndpoint);
  v2(v3, v4);
  v1(v5, v6);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1000807B8()
{
  v16 = v0[436];
  v17 = v0[437];
  v1 = v0[421];
  v2 = v0[370];
  v3 = v0[369];
  v4 = v0[368];
  v14 = v0[363];
  v15 = v0[430];
  v13 = v0[362];
  v5 = v0[354];
  v6 = v0[353];
  v7 = v0[352];
  v8 = v0[337];
  *(v8 + v0[410]) = _swiftEmptyArrayStorage;

  (*(v6 + 104))(v5, enum case for LegacyRefreshSchedule.notScheduled(_:), v7);
  v9 = OBJC_IVAR____TtC13findmylocated14CommandManager_refreshScheduled;
  swift_beginAccess();
  (*(v6 + 40))(v8 + v9, v5, v7);
  swift_endAccess();
  (*(v3 + 104))(v2, enum case for LocatePriority.shallow(_:), v4);
  swift_beginAccess();
  (*(v3 + 40))(v8 + v1, v2, v4);
  swift_endAccess();
  v0[305] = v13;
  v0[306] = sub_100008FC0(&qword_1005A92F0, type metadata accessor for LocationEndpoint, &unk_1004C8E74);
  v10 = sub_10000331C(v0 + 302);
  sub_1000845B8(v14, v10, type metadata accessor for LocationEndpoint);
  v0[310] = &type metadata for LocationServerRequest;
  v0[311] = sub_1000844B0();
  v0[307] = v15;
  v0[308] = v16;
  v0[309] = v17;

  sub_10002CF44(v16, v17);
  Account.dsid.getter();
  Account.appToken.getter();
  v0[315] = type metadata accessor for BasicCredential();
  v0[316] = &protocol witness table for BasicCredential;
  sub_10000331C(v0 + 312);
  BasicCredential.init(username:password:)();
  v11 = swift_task_alloc();
  v0[441] = v11;
  *v11 = v0;
  v11[1] = sub_100080A9C;

  return sub_1001D7B78((v0 + 2), (v0 + 302), (v0 + 307), (v0 + 312));
}

uint64_t sub_100080A9C()
{
  v2 = *v1;
  v2[442] = v0;

  v3 = v2[337];
  sub_100002CE0((v2 + 312), &qword_1005A9138, &qword_1004C2600);
  if (v0)
  {

    v4 = sub_1000824AC;
  }

  else
  {
    sub_100004984(v2 + 307);
    sub_100004984(v2 + 302);
    v4 = sub_100080C18;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100080C18()
{
  v73 = v0;
  sub_10006DAC8(v0 + 16, v0 + 816);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  sub_10005D06C(v0 + 16);
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v72[0] = swift_slowAlloc();
    *v3 = 136446466;
    *(v3 + 4) = sub_10000D01C(0xD00000000000002FLL, 0x80000001004DED40, v72);
    *(v3 + 12) = 2080;
    sub_10006DAC8(v0 + 16, v0 + 1616);
    v4 = sub_100176040();
    v6 = v5;
    sub_10005D06C(v0 + 16);
    v7 = sub_10000D01C(v4, v6, v72);

    *(v3 + 14) = v7;
    _os_log_impl(&_mh_execute_header, v1, v2, "CommandManager %{public}s response: %s", v3, 0x16u);
    swift_arrayDestroy();
  }

  v8 = *(v0 + 2808);
  v9 = *(v0 + 2696);
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
  v11 = sub_100008FC0(&qword_1005A90C0, type metadata accessor for CommandManager, &unk_1004C2458);
  v12 = swift_allocObject();
  v12[2] = v9;
  v12[3] = v11;
  v12[4] = v9;
  swift_retain_n();
  sub_10020D8CC(0, 0, v8, &unk_1004C28A8, v12);

  if (*(v0 + 296) == 1)
  {
    v13 = *(v0 + 288);
    *(v0 + 3544) = v13;
    if (v13)
    {

      sub_10005D06C(v0 + 16);

      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v71 = v17;
        *v16 = 134218242;
        *(v16 + 4) = *(v13 + 16);

        *(v16 + 12) = 2082;
        v18 = *(v13 + 16);
        if (v18)
        {
          v61 = v17;
          v64 = v15;
          v65 = v16;
          v68 = v14;
          v19 = *(v0 + 2800);
          v20 = *(v0 + 2784);
          v72[0] = _swiftEmptyArrayStorage;
          sub_10002B3C0(0, v18, 0);
          v21 = v72[0];
          v69 = v13;
          v22 = v13 + ((*(v20 + 80) + 32) & ~*(v20 + 80));
          v23 = *(v20 + 72);
          do
          {
            v24 = *(v0 + 2800);
            sub_1000845B8(v22, v24, type metadata accessor for ServerLocation);
            v25 = *v24;
            v26 = *(v19 + 8);

            sub_1000846A4(v24, type metadata accessor for ServerLocation);
            v72[0] = v21;
            v28 = *(v21 + 16);
            v27 = *(v21 + 24);
            if (v28 >= v27 >> 1)
            {
              sub_10002B3C0((v27 > 1), v28 + 1, 1);
              v21 = v72[0];
            }

            *(v21 + 16) = v28 + 1;
            v29 = v21 + 16 * v28;
            *(v29 + 32) = v25;
            *(v29 + 40) = v26;
            v22 += v23;
            --v18;
          }

          while (v18);
          v14 = v68;
          v13 = v69;
          v16 = v65;
          v15 = v64;
          v17 = v61;
        }

        v38 = Array.description.getter();
        v40 = v39;

        v41 = sub_10000D01C(v38, v40, &v71);

        *(v16 + 14) = v41;
        _os_log_impl(&_mh_execute_header, v14, v15, "Received legacy locations [%ld] for ids: %{public}s", v16, 0x16u);
        sub_100004984(v17);
      }

      else
      {
      }

      v42 = *(v13 + 16);
      *(v0 + 3552) = v42;
      if (v42)
      {
        v43 = *(v0 + 2784);
        v44 = *(v43 + 80);
        *(v0 + 3616) = v44;
        *(v0 + 3560) = *(v43 + 72);
        v45 = *(v0 + 3536);
        *(v0 + 3592) = _swiftEmptyDictionarySingleton;
        *(v0 + 3584) = 0;
        *(v0 + 3576) = _swiftEmptyDictionarySingleton;
        *(v0 + 3568) = v45;
        sub_1000845B8(*(v0 + 3544) + ((v44 + 32) & ~v44), *(v0 + 2792), type metadata accessor for ServerLocation);
        v46 = swift_task_alloc();
        *(v0 + 3600) = v46;
        *v46 = v0;
        v46[1] = sub_1000817FC;

        return sub_100008CC0();
      }
    }

    else
    {
      sub_10005D06C(v0 + 16);
    }

    v67 = *(v0 + 3512);
    v47 = *(v0 + 3496);
    v48 = *(v0 + 3488);
    v63 = *(v0 + 3408);
    v55 = *(v0 + 3080);
    v56 = *(v0 + 3120);
    v58 = *(v0 + 2984);
    v60 = *(v0 + 3024);
    v49 = *(v0 + 2904);
    v50 = *(v0 + 2720);
    v51 = *(v0 + 2712);
    v70 = *(v0 + 2704);
    v52 = *(v0 + 2696);
    static Date.now.getter();

    sub_10001A794(v48, v47);
    sub_1000846A4(v49, type metadata accessor for LocationEndpoint);
    v63(v56, v55);
    v67(v60, v58);
    v53 = OBJC_IVAR____TtC13findmylocated14CommandManager_lastRefreshDate;
    swift_beginAccess();
    (*(v51 + 40))(v52 + v53, v50, v70);
    swift_endAccess();

    v54 = *(v0 + 8);

    return v54(_swiftEmptyDictionarySingleton);
  }

  else
  {
    v66 = *(v0 + 3512);
    v30 = *(v0 + 3496);
    v31 = *(v0 + 3488);
    v62 = *(v0 + 3408);
    v32 = *(v0 + 3120);
    v33 = *(v0 + 3080);
    v57 = *(v0 + 2984);
    v59 = *(v0 + 3024);
    v34 = *(v0 + 2904);
    sub_10005D06C(v0 + 16);

    sub_1000284BC();
    swift_allocError();
    *v35 = 9;
    swift_willThrow();

    sub_10001A794(v31, v30);
    sub_1000846A4(v34, type metadata accessor for LocationEndpoint);
    v62(v32, v33);
    v66(v59, v57);

    v36 = *(v0 + 8);

    return v36();
  }
}

uint64_t sub_1000817FC(uint64_t a1)
{
  v2 = *(*v1 + 2696);
  *(*v1 + 3608) = a1;

  return _swift_task_switch(sub_100081914, v2, 0);
}

uint64_t sub_100081914()
{
  v1 = *(v0 + 3608);
  v2 = *(v0 + 3568);
  v3 = *(v0 + 3184);
  v4 = *(v0 + 3176);
  v5 = *(v0 + 2792);
  v6 = *(v0 + 2768);
  *(swift_task_alloc() + 16) = v5;
  sub_10044FE2C(sub_100084620, v1, v6);

  if ((*(v3 + 48))(v6, 1, v4) == 1)
  {
    v7 = *(v0 + 2768);
    v8 = &qword_1005A9188;
    v9 = &unk_1004D80D0;
LABEL_5:
    sub_100002CE0(v7, v8, v9);
    v16 = *(v0 + 3592);
    v17 = *(v0 + 3576);
    goto LABEL_7;
  }

  v10 = *(v0 + 2792);
  v11 = *(v0 + 2776);
  v12 = *(v0 + 2752);
  v13 = *(v0 + 2744);
  v14 = *(v0 + 2736);
  (*(*(v0 + 3184) + 32))(*(v0 + 3192), *(v0 + 2768), *(v0 + 3176));
  sub_100005F04(v10 + *(v11 + 20), v14, &qword_1005A92D0, &qword_1004C2890);
  if ((*(v12 + 48))(v14, 1, v13) == 1)
  {
    v15 = *(v0 + 2736);
    (*(*(v0 + 3184) + 8))(*(v0 + 3192), *(v0 + 3176));
    v8 = &qword_1005A92D0;
    v9 = &qword_1004C2890;
    v7 = v15;
    goto LABEL_5;
  }

  v16 = *(v0 + 3576);
  v18 = *(v0 + 3192);
  v19 = *(v0 + 3184);
  v45 = *(v0 + 3176);
  v47 = v2;
  v20 = *(v0 + 3152);
  v21 = *(v0 + 3144);
  v22 = *(v0 + 3136);
  v23 = *(v0 + 2760);
  v24 = *(v0 + 2728);
  sub_100084640(*(v0 + 2736), v23);
  Friend.handle.getter();
  sub_10016DAF0(v24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_100452B70(v24, v20, isUniquelyReferenced_nonNull_native);
  (*(v21 + 8))(v20, v22);
  v2 = v47;
  sub_1000846A4(v23, type metadata accessor for LegacyLocation);
  (*(v19 + 8))(v18, v45);
  v17 = v16;
LABEL_7:
  v26 = *(v0 + 3552);
  v27 = *(v0 + 3584) + 1;
  sub_1000846A4(*(v0 + 2792), type metadata accessor for ServerLocation);
  if (v27 == v26)
  {

    v44 = *(v0 + 3512);
    v28 = *(v0 + 3496);
    v29 = *(v0 + 3488);
    v43 = *(v0 + 3408);
    v39 = *(v0 + 3080);
    v40 = *(v0 + 3120);
    v42 = *(v0 + 3024);
    v41 = *(v0 + 2984);
    v30 = *(v0 + 2904);
    v31 = *(v0 + 2720);
    v32 = *(v0 + 2712);
    v46 = *(v0 + 2704);
    v33 = *(v0 + 2696);
    static Date.now.getter();

    sub_10001A794(v29, v28);
    sub_1000846A4(v30, type metadata accessor for LocationEndpoint);
    v43(v40, v39);
    v44(v42, v41);
    v34 = OBJC_IVAR____TtC13findmylocated14CommandManager_lastRefreshDate;
    swift_beginAccess();
    (*(v32 + 40))(v33 + v34, v31, v46);
    swift_endAccess();

    v35 = *(v0 + 8);

    return v35(v16);
  }

  else
  {
    v37 = *(v0 + 3584) + 1;
    *(v0 + 3592) = v16;
    *(v0 + 3584) = v37;
    *(v0 + 3576) = v17;
    *(v0 + 3568) = v2;
    sub_1000845B8(*(v0 + 3544) + ((*(v0 + 3616) + 32) & ~*(v0 + 3616)) + *(v0 + 3560) * v37, *(v0 + 2792), type metadata accessor for ServerLocation);
    v38 = swift_task_alloc();
    *(v0 + 3600) = v38;
    *v38 = v0;
    v38[1] = sub_1000817FC;

    return sub_100008CC0();
  }
}

uint64_t sub_100081FB4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100082230()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000824AC()
{
  v11 = v0[439];
  v1 = v0[437];
  v2 = v0[436];
  v10 = v0[426];
  v3 = v0[390];
  v4 = v0[385];
  v5 = v0[378];
  v6 = v0[373];
  v7 = v0[363];

  sub_10001A794(v2, v1);
  sub_1000846A4(v7, type metadata accessor for LocationEndpoint);
  v10(v3, v4);
  v11(v5, v6);
  sub_100004984(v0 + 307);
  sub_100004984(v0 + 302);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1000827CC(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 1584) = a5;
  *(v5 + 1576) = a4;
  *(v5 + 1804) = a3;
  *(v5 + 1568) = a2;
  *(v5 + 1560) = a1;
  refreshed = type metadata accessor for LegacyRefreshSchedule();
  *(v5 + 1592) = refreshed;
  *(v5 + 1600) = *(refreshed - 8);
  *(v5 + 1608) = swift_task_alloc();
  *(v5 + 1616) = swift_task_alloc();
  *(v5 + 1624) = swift_task_alloc();
  v7 = type metadata accessor for Date();
  *(v5 + 1632) = v7;
  *(v5 + 1640) = *(v7 - 8);
  *(v5 + 1648) = swift_task_alloc();
  v8 = type metadata accessor for ContinuousClock();
  *(v5 + 1656) = v8;
  *(v5 + 1664) = *(v8 - 8);
  *(v5 + 1672) = swift_task_alloc();

  return _swift_task_switch(sub_10008296C, 0, 0);
}

uint64_t sub_10008296C()
{
  static Clock<>.continuous.getter();
  v1 = swift_task_alloc();
  v0[210] = v1;
  *v1 = v0;
  v1[1] = sub_100082A30;
  v2 = v0[196];
  v3 = v0[195];

  return sub_100291918(v3, v2, 0, 0, 1);
}

uint64_t sub_100082A30()
{
  v2 = *(*v1 + 1672);
  v3 = *(*v1 + 1664);
  v4 = *(*v1 + 1656);
  v5 = *v1;
  *(v5 + 1688) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v6 = sub_100082C38;
    v7 = 0;
LABEL_5:

    return _swift_task_switch(v6, v7, 0);
  }

  if (*(v5 + 1804))
  {
    *(v5 + 1805) = 1;
    v7 = *(v5 + 1584);
    v6 = sub_1000831F8;
    goto LABEL_5;
  }

  v8 = swift_task_alloc();
  *(v5 + 1696) = v8;
  *v8 = v5;
  v8[1] = sub_100082E88;

  return sub_100245BB8(v5 + 496);
}

uint64_t sub_100082C38()
{
  v14 = v0;
  if (qword_1005A7EC8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000A6F0(v1, qword_1005DFB18);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v13 = v6;
    *v4 = 136446466;
    v7 = Duration.description.getter();
    v9 = sub_10000D01C(v7, v8, &v13);

    *(v4 + 4) = v9;
    *(v4 + 12) = 2114;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 14) = v10;
    *v5 = v10;
    _os_log_impl(&_mh_execute_header, v2, v3, "scheduleRefresh with scheduleInterval: %{public}s. Error: %{public}@", v4, 0x16u);
    sub_100002CE0(v5, &qword_1005A9670, &unk_1004C2480);

    sub_100004984(v6);
  }

  else
  {
  }

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_100082E88()
{
  v1 = *(*v0 + 1576);

  return _swift_task_switch(sub_100082F98, v1, 0);
}

uint64_t sub_100082F98()
{
  memcpy((v0 + 16), (v0 + 496), 0x1E0uLL);
  if (sub_100033B90(v0 + 16) != 1)
  {
    v1 = *(v0 + 224);
    *(v0 + 1232) = *(v0 + 208);
    *(v0 + 1248) = v1;
    v2 = *(v0 + 256);
    *(v0 + 1264) = *(v0 + 240);
    *(v0 + 1280) = v2;
    v3 = *(v0 + 160);
    *(v0 + 1168) = *(v0 + 144);
    *(v0 + 1184) = v3;
    v4 = *(v0 + 192);
    *(v0 + 1200) = *(v0 + 176);
    *(v0 + 1216) = v4;
    v5 = *(v0 + 128);
    *(v0 + 1136) = *(v0 + 112);
    *(v0 + 1152) = v5;
    sub_100005F04(v0 + 1136, v0 + 1296, &qword_1005A9328, &unk_1004C7F20);
    sub_100002CE0(v0 + 496, &qword_1005A90D8, &unk_1004C6AB0);
    v6 = *(v0 + 1248);
    *(v0 + 1072) = *(v0 + 1232);
    *(v0 + 1088) = v6;
    v7 = *(v0 + 1280);
    *(v0 + 1104) = *(v0 + 1264);
    *(v0 + 1120) = v7;
    v8 = *(v0 + 1184);
    *(v0 + 1008) = *(v0 + 1168);
    *(v0 + 1024) = v8;
    v9 = *(v0 + 1216);
    *(v0 + 1040) = *(v0 + 1200);
    *(v0 + 1056) = v9;
    v10 = *(v0 + 1152);
    *(v0 + 976) = *(v0 + 1136);
    *(v0 + 992) = v10;
    if (sub_10002D650(v0 + 976) != 1)
    {
      sub_100002CE0(v0 + 1136, &qword_1005A9328, &unk_1004C7F20);
    }
  }

  v11 = *(v0 + 1648);
  v12 = *(v0 + 1640);
  v13 = *(v0 + 1632);
  static Duration.seconds(_:)();
  static Date.now.getter();
  Date.timeIntervalSince1970.getter();
  (*(v12 + 8))(v11, v13);
  static Duration.seconds(_:)();
  *(v0 + 1704) = static Duration.- infix(_:_:)();
  *(v0 + 1712) = v14;

  return _swift_task_switch(sub_100083180, 0, 0);
}

uint64_t sub_100083180()
{
  *(v0 + 1805) = Duration.milliseconds.getter() > 0;
  v1 = *(v0 + 1584);

  return _swift_task_switch(sub_1000831F8, v1, 0);
}

uint64_t sub_1000831F8()
{
  v1 = v0[203];
  v2 = v0[200];
  v3 = v0[199];
  v4 = v0[198];
  v5 = OBJC_IVAR____TtC13findmylocated14CommandManager_refreshScheduled;
  v0[215] = OBJC_IVAR____TtC13findmylocated14CommandManager_refreshScheduled;
  swift_beginAccess();
  (*(v2 + 16))(v1, v4 + v5, v3);

  return _swift_task_switch(sub_1000832B8, 0, 0);
}

uint64_t sub_1000832B8()
{
  if (*(v0 + 1805) == 1)
  {
    v1 = swift_task_alloc();
    *(v0 + 1728) = v1;
    *v1 = v0;
    v1[1] = sub_100083564;
    v2 = *(v0 + 1568);
    v3 = *(v0 + 1560);

    return sub_100034580(1, v3, v2);
  }

  else
  {
    v5 = *(v0 + 1616);
    v6 = *(v0 + 1600);
    *(v0 + 1800) = enum case for LegacyRefreshSchedule.lowPriorityScheduled(_:);
    v7 = *(v6 + 104);
    *(v0 + 1744) = v7;
    *(v0 + 1752) = (v6 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
    v7(v5);
    sub_100008FC0(&qword_1005A9320, &type metadata accessor for LegacyRefreshSchedule, &protocol conformance descriptor for LegacyRefreshSchedule);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    if (*(v0 + 1528) == *(v0 + 1544) && *(v0 + 1536) == *(v0 + 1552))
    {
      v8 = 1;
    }

    else
    {
      v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    v9 = *(v0 + 1616);
    v10 = *(v0 + 1600);
    v11 = *(v0 + 1592);
    v12 = *(v10 + 8);
    *(v0 + 1760) = v12;
    *(v0 + 1768) = (v10 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v12(v9, v11);

    if (v8)
    {
      v13 = *(v0 + 1584);
      (v7)(*(v0 + 1608), enum case for LegacyRefreshSchedule.notScheduled(_:), *(v0 + 1592));

      return _swift_task_switch(sub_10008373C, v13, 0);
    }

    else
    {
      v14 = swift_task_alloc();
      *(v0 + 1784) = v14;
      *v14 = v0;
      v14[1] = sub_100083ACC;

      return sub_1000298AC();
    }
  }
}

uint64_t sub_100083564(uint64_t a1)
{
  *(*v2 + 1736) = v1;

  if (v1)
  {
    v3 = sub_100083CA8;
  }

  else
  {

    v3 = sub_100083684;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100083684()
{
  (*(v0[200] + 8))(v0[203], v0[199]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_10008373C()
{
  v1 = v0[220];
  v2 = v0[215];
  v3 = v0[201];
  v4 = v0[200];
  v5 = v0[199];
  v6 = v0[198];
  swift_beginAccess();
  (*(v4 + 24))(v6 + v2, v3, v5);
  swift_endAccess();
  v1(v3, v5);
  v7 = OBJC_IVAR____TtC13findmylocated14CommandManager_coalescedCommands;
  swift_beginAccess();
  v0[222] = *(v6 + v7);

  return _swift_task_switch(sub_100083844, 0, 0);
}

uint64_t sub_100083844()
{
  v19 = v0;
  v1 = *(v0 + 1760);
  v2 = *(v0 + 1744);
  v3 = (v0 + 1800);
  v4 = *(v0 + 1608);
  v5 = *(v0 + 1592);
  v6 = *(*(v0 + 1776) + 16);
  if (*(v0 + 1804))
  {
    v3 = &enum case for LegacyRefreshSchedule.highPriorityScheduled(_:);
  }

  v7 = *v3;

  v2(v4, v7, v5);
  refreshed = LegacyRefreshSchedule.rawValue.getter();
  v10 = v9;
  v1(v4, v5);
  if (qword_1005A7EC8 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_10000A6F0(v11, qword_1005DFB18);

  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v14 = 136446722;
    *(v14 + 4) = sub_10000D01C(0xD000000000000011, 0x80000001004DED70, &v18);
    *(v14 + 12) = 2080;
    v15 = sub_10000D01C(refreshed, v10, &v18);

    *(v14 + 14) = v15;
    *(v14 + 22) = 2048;
    *(v14 + 24) = v6;
    _os_log_impl(&_mh_execute_header, v12, v13, "%{public}s Discarding queued request priority: [%s],\ncurrent Tasks count: [%ld]", v14, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v16 = swift_task_alloc();
  *(v0 + 1784) = v16;
  *v16 = v0;
  v16[1] = sub_100083ACC;

  return sub_1000298AC();
}

uint64_t sub_100083ACC(uint64_t a1)
{
  *(*v2 + 1792) = v1;

  if (v1)
  {
    v3 = sub_100083F14;
  }

  else
  {

    v3 = sub_100083BEC;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100083BEC()
{
  (*(v0 + 1760))(*(v0 + 1624), *(v0 + 1592));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100083CA8()
{
  v14 = v0;
  (*(v0[200] + 8))(v0[203], v0[199]);
  if (qword_1005A7EC8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000A6F0(v1, qword_1005DFB18);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v13 = v6;
    *v4 = 136446466;
    v7 = Duration.description.getter();
    v9 = sub_10000D01C(v7, v8, &v13);

    *(v4 + 4) = v9;
    *(v4 + 12) = 2114;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 14) = v10;
    *v5 = v10;
    _os_log_impl(&_mh_execute_header, v2, v3, "scheduleRefresh with scheduleInterval: %{public}s. Error: %{public}@", v4, 0x16u);
    sub_100002CE0(v5, &qword_1005A9670, &unk_1004C2480);

    sub_100004984(v6);
  }

  else
  {
  }

  v11 = v0[1];

  return v11();
}

uint64_t sub_100083F14()
{
  v14 = v0;
  (*(v0 + 1760))(*(v0 + 1624), *(v0 + 1592));
  if (qword_1005A7EC8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000A6F0(v1, qword_1005DFB18);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v13 = v6;
    *v4 = 136446466;
    v7 = Duration.description.getter();
    v9 = sub_10000D01C(v7, v8, &v13);

    *(v4 + 4) = v9;
    *(v4 + 12) = 2114;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 14) = v10;
    *v5 = v10;
    _os_log_impl(&_mh_execute_header, v2, v3, "scheduleRefresh with scheduleInterval: %{public}s. Error: %{public}@", v4, 0x16u);
    sub_100002CE0(v5, &qword_1005A9670, &unk_1004C2480);

    sub_100004984(v6);
  }

  else
  {
  }

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_100084178(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  v5 = swift_task_alloc();
  v4[4] = v5;
  *v5 = v4;
  v5[1] = sub_10008420C;

  return sub_1000298AC();
}

uint64_t sub_10008420C(uint64_t a1)
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
    v8 = *(v4 + 24);
    *(v4 + 40) = a1;

    return _swift_task_switch(sub_100084358, v8, 0);
  }
}

uint64_t sub_10008437C(uint64_t a1, void *a2)
{
  v3 = type metadata accessor for Handle();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  Friend.handle.getter();
  v7 = Handle.serverID.getter();
  v9 = v8;
  (*(v4 + 8))(v6, v3);
  if (v9)
  {
    if (v7 == *a2 && v9 == a2[1])
    {
      v11 = 1;
    }

    else
    {
      v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  else
  {
    v11 = 0;
  }

  return v11 & 1;
}

unint64_t sub_1000844B0()
{
  result = qword_1005A92F8;
  if (!qword_1005A92F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005A92F8);
  }

  return result;
}

uint64_t sub_100084504(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000368C;

  return sub_100084178(a1, v4, v5, v6);
}

uint64_t sub_1000845B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100084640(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LegacyLocation(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000846A4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100084704()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_100003690;

  return sub_1000827CC(v2, v3, v4, v5, v6);
}

uint64_t sub_1000847C8()
{
  v1[14] = v0;
  v2 = type metadata accessor for ContinuousClock.Instant();
  v1[15] = v2;
  v1[16] = *(v2 - 8);
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  sub_10004B564(&qword_1005A9690, &qword_1004C2A00);
  v1[19] = swift_task_alloc();
  v1[20] = type metadata accessor for NearbyWatchObserver.State(0);
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();

  return _swift_task_switch(sub_100084908, v0, 0);
}

uint64_t sub_100084908()
{
  v1 = v0[22];
  v2 = v0[14];
  v3 = OBJC_IVAR____TtC13findmylocated19NearbyWatchObserver_state;
  swift_beginAccess();
  sub_100089B10(v2 + v3, v1, type metadata accessor for NearbyWatchObserver.State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v27 = *v0[22];
    v0[25] = v27;
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    sub_10000A6F0(v28, qword_1005DFB98);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&_mh_execute_header, v29, v30, "Nearby watch detection ongoing, awaiting result", v31, 2u);
    }

    v32 = swift_task_alloc();
    v0[26] = v32;
    v25 = sub_10004B564(&qword_1005A9630, &qword_1004C5680);
    *v32 = v0;
    v32[1] = sub_100085348;
    v26 = v0 + 12;
    v33 = v27;
    goto LABEL_20;
  }

  if (EnumCaseMultiPayload != 1)
  {
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v34 = type metadata accessor for Logger();
    sub_10000A6F0(v34, qword_1005DFB98);
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&_mh_execute_header, v35, v36, "Nearby watch detection started", v37, 2u);
    }

    v38 = v0[21];
    v39 = v0[19];
    v40 = v0[14];

    v41 = type metadata accessor for TaskPriority();
    (*(*(v41 - 8) + 56))(v39, 1, 1, v41);
    v42 = sub_10008AD20(&qword_1005A96A0, type metadata accessor for NearbyWatchObserver, &unk_1004C29B0);
    v43 = swift_allocObject();
    v43[2] = v40;
    v43[3] = v42;
    v43[4] = v40;
    swift_retain_n();
    v23 = sub_1001D8230(0, 0, v39, &unk_1004C2A20, v43);
    v0[23] = v23;
    *v38 = v23;
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();

    sub_100089C2C(v38, v2 + v3);
    swift_endAccess();
    v44 = swift_task_alloc();
    v0[24] = v44;
    v25 = sub_10004B564(&qword_1005A9630, &qword_1004C5680);
    *v44 = v0;
    v44[1] = sub_10008517C;
    v26 = v0 + 13;
    goto LABEL_19;
  }

  v5 = v0[22];
  v7 = v0[17];
  v6 = v0[18];
  v8 = v0[15];
  v9 = v0[16];
  v10 = *v5;
  v11 = sub_10004B564(&qword_1005A9698, &qword_1004C2A08);
  (*(v9 + 32))(v6, &v5[*(v11 + 48)], v8);
  static ContinuousClock.now.getter();
  ContinuousClock.Instant.duration(to:)();
  v12 = *(v9 + 8);
  v0[27] = v12;
  v0[28] = (v9 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v12(v7, v8);
  if (static Duration.< infix(_:_:)())
  {

    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_10000A6F0(v13, qword_1005DFB98);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "Nearby watch detection cache is expired - restarting detection", v16, 2u);
    }

    v17 = v0[21];
    v18 = v0[19];
    v19 = v0[14];

    v20 = type metadata accessor for TaskPriority();
    (*(*(v20 - 8) + 56))(v18, 1, 1, v20);
    v21 = sub_10008AD20(&qword_1005A96A0, type metadata accessor for NearbyWatchObserver, &unk_1004C29B0);
    v22 = swift_allocObject();
    v22[2] = v19;
    v22[3] = v21;
    v22[4] = v19;
    swift_retain_n();
    v23 = sub_1001D8230(0, 0, v18, &unk_1004C2A18, v22);
    v0[29] = v23;
    *v17 = v23;
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();

    sub_100089C2C(v17, v2 + v3);
    swift_endAccess();
    v24 = swift_task_alloc();
    v0[30] = v24;
    v25 = sub_10004B564(&qword_1005A9630, &qword_1004C5680);
    *v24 = v0;
    v24[1] = sub_100085500;
    v26 = v0 + 11;
LABEL_19:
    v33 = v23;
LABEL_20:

    return Task<>.value.getter(v26, v33, v25);
  }

  if (qword_1005A7EE8 != -1)
  {
    swift_once();
  }

  v45 = type metadata accessor for Logger();
  sub_10000A6F0(v45, qword_1005DFB98);
  v46 = Logger.logObject.getter();
  v47 = static os_log_type_t.debug.getter();
  v48 = os_log_type_enabled(v46, v47);
  v49 = v0[18];
  v50 = v0[15];
  if (v48)
  {
    v51 = swift_slowAlloc();
    *v51 = 0;
    _os_log_impl(&_mh_execute_header, v46, v47, "Nearby watch detection cache hit", v51, 2u);
  }

  v12(v49, v50);

  v52 = v0[1];

  return v52(v10);
}

uint64_t sub_10008517C()
{
  v1 = *(*v0 + 112);

  return _swift_task_switch(sub_1000852A8, v1, 0);
}

uint64_t sub_1000852A8()
{
  v1 = *(v0 + 104);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_100085348()
{
  v1 = *(*v0 + 112);

  return _swift_task_switch(sub_100085458, v1, 0);
}

uint64_t sub_100085458()
{

  v1 = *(v0 + 96);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_100085500()
{
  v1 = *(*v0 + 112);

  return _swift_task_switch(sub_10008562C, v1, 0);
}

uint64_t sub_10008562C()
{
  (*(v0 + 216))(*(v0 + 144), *(v0 + 120));
  v1 = *(v0 + 88);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1000856DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a1;
  v4[7] = a4;
  v4[8] = type metadata accessor for NearbyWatchObserver.State(0);
  v4[9] = swift_task_alloc();
  v5 = swift_task_alloc();
  v4[10] = v5;
  *v5 = v4;
  v5[1] = sub_1000857A0;

  return sub_100087BE8();
}

uint64_t sub_1000857A0(uint64_t a1)
{
  v2 = *(*v1 + 56);
  *(*v1 + 88) = a1;

  return _swift_task_switch(sub_1000858B8, v2, 0);
}

uint64_t sub_1000858B8()
{
  v1 = *(v0 + 88);
  if (v1 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_3;
    }
  }

  else if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    *(v0 + 96) = sub_10000A6F0(v2, qword_1005DFB98);

    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 134217984;
      if (v1 >> 62)
      {
        v6 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v6 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v5 + 4) = v6;

      _os_log_impl(&_mh_execute_header, v3, v4, "Nearby watch detection starting - looking for %ld devices", v5, 0xCu);
    }

    else
    {
    }

    v7 = *(v0 + 88);
    v8 = *(v0 + 56);
    v9 = sub_10004B564(&qword_1005A96A8, &qword_1004C3320);
    v10 = sub_10008AD20(&qword_1005A96A0, type metadata accessor for NearbyWatchObserver, &unk_1004C29B0);
    v11 = swift_task_alloc();
    *(v0 + 104) = v11;
    *(v11 + 16) = v7;
    v12 = sub_10004B564(&qword_1005A9630, &qword_1004C5680);
    v13 = swift_task_alloc();
    *(v0 + 112) = v13;
    *v13 = v0;
    v13[1] = sub_100085BA8;

    return withTaskGroup<A, B>(of:returning:isolation:body:)(v0 + 40, v9, v12, v8, v10, &unk_1004C2A38, v11, v9);
  }

  **(v0 + 48) = _swiftEmptyArrayStorage;

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_100085BA8()
{
  v1 = *(*v0 + 56);

  return _swift_task_switch(sub_100085CF8, v1, 0);
}

uint64_t sub_100085CF8()
{
  v11 = v0;
  v1 = *(v0 + 40);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 134217984;
    *(v4 + 4) = *(v1 + 16);

    _os_log_impl(&_mh_execute_header, v2, v3, "Nearby watch detection complete - caching %ld identifiers", v4, 0xCu);
  }

  else
  {
  }

  v10 = v1;

  sub_100089D80(&v10);
  v5 = *(v0 + 72);
  v6 = *(v0 + 56);
  sub_10004B564(&qword_1005A9698, &qword_1004C2A08);
  *v5 = v10;
  static ContinuousClock.now.getter();
  swift_storeEnumTagMultiPayload();
  v7 = OBJC_IVAR____TtC13findmylocated19NearbyWatchObserver_state;
  swift_beginAccess();
  sub_100089C2C(v5, v6 + v7);
  swift_endAccess();
  **(v0 + 48) = v1;

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_100085ED0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[13] = a2;
  v3[14] = a3;
  v3[12] = a1;
  v4 = sub_10004B564(&qword_1005A96B0, &qword_1004C2A40);
  v3[15] = v4;
  v3[16] = *(v4 - 8);
  v3[17] = swift_task_alloc();
  v5 = sub_10004B564(&qword_1005A96B8, &qword_1004C2A48);
  v3[18] = v5;
  v3[19] = *(v5 - 8);
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();
  sub_10004B564(&qword_1005A9690, &qword_1004C2A00);
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();

  return _swift_task_switch(sub_100086058, 0, 0);
}

uint64_t sub_100086058(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 112);
  if (v4 >> 62)
  {
    a1 = _CocoaArrayWrapper.endIndex.getter();
    v5 = a1;
    if (a1)
    {
      goto LABEL_3;
    }

LABEL_17:
    v23 = *(v3 + 160);
    v24 = *(v3 + 168);
    v25 = *(v3 + 144);
    v26 = *(v3 + 152);
    *(v3 + 88) = **(v3 + 104);
    sub_10004B564(&qword_1005A96C0, &qword_1004C2A78);
    sub_10001DF0C(&qword_1005A96C8, &qword_1005A96C0, &qword_1004C2A78, &protocol conformance descriptor for TaskGroup<A>);
    AsyncCompactMapSequence.init(_:transform:)();
    (*(v26 + 16))(v23, v24, v25);
    sub_10001DF0C(&qword_1005A96D0, &qword_1005A96B8, &qword_1004C2A48, &protocol conformance descriptor for AsyncCompactMapSequence<A, B>);
    dispatch thunk of AsyncSequence.makeAsyncIterator()();
    *(v3 + 192) = _swiftEmptyArrayStorage;
    v27 = sub_10001DF0C(&qword_1005A96D8, &qword_1005A96B0, &qword_1004C2A40, &protocol conformance descriptor for AsyncCompactMapSequence<A, B>.Iterator);
    v28 = swift_task_alloc();
    *(v3 + 200) = v28;
    *v28 = v3;
    v28[1] = sub_100086520;
    a2 = *(v3 + 120);
    a1 = v3 + 72;
    a3 = v27;

    return dispatch thunk of AsyncIteratorProtocol.next()(a1, a2, a3);
  }

  v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v5)
  {
    goto LABEL_17;
  }

LABEL_3:
  if (v5 >= 1)
  {
    v6 = 0;
    v30 = *(v3 + 112) + 32;
    v31 = **(v3 + 104);
    v32 = v4 & 0xC000000000000001;
    while (1)
    {
      if (v32)
      {
        v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v8 = *(v30 + 8 * v6);
      }

      v9 = v8;
      v11 = *(v3 + 176);
      v10 = *(v3 + 184);
      v12 = type metadata accessor for TaskPriority();
      v13 = *(v12 - 8);
      (*(v13 + 56))(v10, 1, 1, v12);
      v14 = swift_allocObject();
      v14[2] = 0;
      v15 = v14 + 2;
      v14[3] = 0;
      v14[4] = v9;
      sub_10007CE68(v10, v11);
      LODWORD(v10) = (*(v13 + 48))(v11, 1, v12);
      v16 = v9;
      v17 = *(v3 + 176);
      if (v10 == 1)
      {
        sub_100002CE0(*(v3 + 176), &qword_1005A9690, &qword_1004C2A00);
        if (!*v15)
        {
          goto LABEL_13;
        }
      }

      else
      {
        TaskPriority.rawValue.getter();
        (*(v13 + 8))(v17, v12);
        if (!*v15)
        {
LABEL_13:
          v18 = 0;
          v20 = 0;
          goto LABEL_14;
        }
      }

      swift_getObjectType();
      swift_unknownObjectRetain();
      v18 = dispatch thunk of Actor.unownedExecutor.getter();
      v20 = v19;
      swift_unknownObjectRelease();
LABEL_14:
      v21 = swift_allocObject();
      *(v21 + 16) = &unk_1004C2A60;
      *(v21 + 24) = v14;

      sub_10004B564(&qword_1005A96A8, &qword_1004C3320);
      v22 = v20 | v18;
      if (v20 | v18)
      {
        v22 = v3 + 16;
        *(v3 + 16) = 0;
        *(v3 + 24) = 0;
        *(v3 + 32) = v18;
        *(v3 + 40) = v20;
      }

      ++v6;
      v7 = *(v3 + 184);
      *(v3 + 48) = 1;
      *(v3 + 56) = v22;
      *(v3 + 64) = v31;
      swift_task_create();

      sub_100002CE0(v7, &qword_1005A9690, &qword_1004C2A00);
      if (v5 == v6)
      {
        goto LABEL_17;
      }
    }
  }

  __break(1u);
  return dispatch thunk of AsyncIteratorProtocol.next()(a1, a2, a3);
}

uint64_t sub_100086520()
{
  v2 = *v1;

  if (v0)
  {
    v4 = v2[16];
    v3 = v2[17];
    v5 = v2[15];

    (*(v4 + 8))(v3, v5);

    v6 = DarwinNotification.init(name:value:);
  }

  else
  {
    v6 = sub_100086674;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100086674()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[24];
  if (v1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v5 = v0[24];
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v5 = sub_1001FC900(0, *(v5 + 2) + 1, 1, v5);
    }

    v7 = *(v5 + 2);
    v6 = *(v5 + 3);
    if (v7 >= v6 >> 1)
    {
      v5 = sub_1001FC900((v6 > 1), v7 + 1, 1, v5);
    }

    *(v5 + 2) = v7 + 1;
    v8 = &v5[16 * v7];
    *(v8 + 4) = v2;
    *(v8 + 5) = v1;
    v0[24] = v5;
    v9 = sub_10001DF0C(&qword_1005A96D8, &qword_1005A96B0, &qword_1004C2A40, &protocol conformance descriptor for AsyncCompactMapSequence<A, B>.Iterator);
    v10 = swift_task_alloc();
    v0[25] = v10;
    *v10 = v0;
    v10[1] = sub_100086520;
    v11 = v0[15];

    return dispatch thunk of AsyncIteratorProtocol.next()(v0 + 9, v11, v9);
  }

  else
  {
    v12 = v0[21];
    v13 = v0[18];
    v14 = v0[19];
    v15 = v0[12];
    (*(v0[16] + 8))(v0[17], v0[15]);
    (*(v14 + 8))(v12, v13);
    *v15 = v3;

    v16 = v0[1];

    return v16();
  }
}

uint64_t sub_100086894(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a1;
  v4[5] = a4;
  type metadata accessor for NearbyWatchObserver.NearbyWatchDetector.State(0);
  v4[6] = swift_task_alloc();
  sub_10004B564(&qword_1005A96E0, &qword_1004C2A80);
  v4[7] = swift_task_alloc();
  v5 = type metadata accessor for UUID();
  v4[8] = v5;
  v4[9] = *(v5 - 8);
  v4[10] = swift_task_alloc();

  return _swift_task_switch(sub_1000869B8, 0, 0);
}

uint64_t sub_1000869B8()
{
  v39 = v0;
  v1 = sub_10008AB2C(v0[2].super_class);
  v0[5].super_class = v1;
  v0[6].receiver = v2;
  if (!v2)
  {
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_10000A6F0(v9, qword_1005DFB98);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v10, v11))
    {
      goto LABEL_22;
    }

    v12 = swift_slowAlloc();
    *v12 = 0;
    v13 = "Nearby watch detection - skipping device with no UDID";
    goto LABEL_21;
  }

  v3 = v2;
  v4 = v1;
  receiver = v0[4].receiver;
  super_class = v0[4].super_class;
  v7 = v0[3].super_class;
  sub_100089420(v0[2].super_class, v7);
  if ((*(super_class + 6))(v7, 1, receiver) == 1)
  {
    v8 = v0[3].super_class;

    sub_100002CE0(v8, &qword_1005A96E0, &qword_1004C2A80);
LABEL_17:
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v35 = type metadata accessor for Logger();
    sub_10000A6F0(v35, qword_1005DFB98);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v10, v11))
    {
      goto LABEL_22;
    }

    v12 = swift_slowAlloc();
    *v12 = 0;
    v13 = "Nearby watch detection - skipping device with no bluetooth device identifier";
LABEL_21:
    _os_log_impl(&_mh_execute_header, v10, v11, v13, v12, 2u);

LABEL_22:
    v36 = v0[2].receiver;

    *v36 = 0;
    v36[1] = 0;

    v37 = v0->super_class;

    return v37();
  }

  v15 = v0[4].super_class;
  v14 = v0[5].receiver;
  v16 = v0[4].receiver;
  (*(v15 + 4))(v14, v0[3].super_class, v16);
  v17 = objc_opt_self();
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v19 = [v17 newDeviceIdentifierWithBluetoothUUID:isa];
  v0[6].super_class = v19;

  (*(v15 + 1))(v14, v16);
  if (!v19)
  {

    goto LABEL_17;
  }

  v20 = v0[3].receiver;
  v21 = type metadata accessor for NearbyWatchObserver.NearbyWatchDetector(0);
  v22 = objc_allocWithZone(v21);
  v23 = &v22[OBJC_IVAR____TtCC13findmylocated19NearbyWatchObserverP33_D1058E42C246155F13E2C4F9907E5BB119NearbyWatchDetector_state];
  v24 = sub_10004B564(&qword_1005A94E0, &qword_1004C2990);
  (*(*(v24 - 8) + 56))(v20, 1, 2, v24);
  *v23 = 0;
  v25 = v19;
  v26 = *(sub_10004B564(&qword_1005A94D8, &qword_1004C2988) + 28);
  v27 = sub_10004B564(&qword_1005A96E8, &qword_1004C2A88);
  bzero(&v23[v26], *(*(v27 - 8) + 64));
  sub_10008ABFC(v20, &v23[v26]);
  *&v22[OBJC_IVAR____TtCC13findmylocated19NearbyWatchObserverP33_D1058E42C246155F13E2C4F9907E5BB119NearbyWatchDetector_deviceIdentifier] = v25;
  v0[1].receiver = v22;
  v0[1].super_class = v21;
  v0[7].receiver = objc_msgSendSuper2(v0 + 1, "init");
  if (qword_1005A7EE8 != -1)
  {
    swift_once();
  }

  v28 = type metadata accessor for Logger();
  v0[7].super_class = sub_10000A6F0(v28, qword_1005DFB98);

  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v38 = v32;
    *v31 = 141558275;
    *(v31 + 4) = 1752392040;
    *(v31 + 12) = 2081;
    *(v31 + 14) = sub_10000D01C(v4, v3, &v38);
    _os_log_impl(&_mh_execute_header, v29, v30, "Nearby watch detection - starting detection of device with UDID: %{private,mask.hash}s", v31, 0x16u);
    sub_100004984(v32);
  }

  v33 = swift_task_alloc();
  v0[8].receiver = v33;
  *v33 = v0;
  v33[1] = sub_100086F24;

  return sub_10008745C();
}

uint64_t sub_100086F24(char a1)
{
  v3 = *v2;
  *(v3 + 144) = a1;
  *(v3 + 136) = v1;

  if (v1)
  {
    v4 = sub_10008720C;
  }

  else
  {
    v4 = sub_10008703C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10008703C()
{
  v17 = v0;

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 144);
    v5 = *(v0 + 104);
    v4 = *(v0 + 112);
    v7 = *(v0 + 88);
    v6 = *(v0 + 96);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v8 = 141558531;
    *(v8 + 4) = 1752392040;
    *(v8 + 12) = 2081;
    *(v8 + 14) = sub_10000D01C(v7, v6, &v16);
    *(v8 + 22) = 1024;
    *(v8 + 24) = v3;
    _os_log_impl(&_mh_execute_header, v1, v2, "Nearby watch detection - device with UDID: %{private,mask.hash}s, is nearby: %{BOOL}d", v8, 0x1Cu);
    sub_100004984(v9);
  }

  else
  {
    v10 = *(v0 + 112);
  }

  v11 = *(v0 + 96);
  if (*(v0 + 144) == 1)
  {
    v12 = *(v0 + 32);
    *v12 = *(v0 + 88);
    v12[1] = v11;
  }

  else
  {
    v13 = *(v0 + 32);

    *v13 = 0;
    v13[1] = 0;
  }

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_10008720C()
{
  v18 = v0;

  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 112);
  v5 = *(v0 + 96);
  if (v3)
  {
    v6 = *(v0 + 88);
    v15 = *(v0 + 104);
    v16 = *(v0 + 112);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v17 = v9;
    *v7 = 141558787;
    *(v7 + 4) = 1752392040;
    *(v7 + 12) = 2081;
    v10 = sub_10000D01C(v6, v5, &v17);

    *(v7 + 14) = v10;
    *(v7 + 22) = 2160;
    *(v7 + 24) = 1752392040;
    *(v7 + 32) = 2113;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 34) = v11;
    *v8 = v11;
    _os_log_impl(&_mh_execute_header, v1, v2, "Nearby watch detection - device with UDID: %{private,mask.hash}s, failed to get nearby status with error: %{private,mask.hash}@", v7, 0x2Au);
    sub_100002CE0(v8, &qword_1005A9670, &unk_1004C2480);

    sub_100004984(v9);
  }

  else
  {
  }

  v12 = *(v0 + 32);
  *v12 = 0;
  v12[1] = 0;

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_10008745C()
{
  v1[9] = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v1[10] = v2;
  v1[11] = *(v2 - 8);
  v1[12] = swift_task_alloc();
  v3 = type metadata accessor for DispatchQoS();
  v1[13] = v3;
  v1[14] = *(v3 - 8);
  v1[15] = swift_task_alloc();
  v4 = type metadata accessor for DispatchQoS.QoSClass();
  v1[16] = v4;
  v1[17] = *(v4 - 8);
  v1[18] = swift_task_alloc();

  return _swift_task_switch(sub_1000875D4, 0, 0);
}

uint64_t sub_1000875D4()
{
  v1 = v0[9];
  v2 = swift_allocObject();
  v0[19] = v2;
  *(v2 + 16) = v1;
  v3 = v1;
  v4 = swift_task_alloc();
  v0[20] = v4;
  *v4 = v0;
  v4[1] = sub_1000876D0;

  return withTimeout<A>(_:block:)(v0 + 22, 5000000000000000000, 0, &unk_1004C2AA0, v2, &type metadata for Bool);
}

uint64_t sub_1000876D0()
{
  *(*v1 + 168) = v0;

  if (v0)
  {
    v2 = sub_100087878;
  }

  else
  {

    v2 = sub_1000877EC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000877EC()
{
  v1 = *(v0 + 176);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_100087878()
{
  v1 = v0[21];
  v2 = v0[18];
  v3 = v0[16];
  v4 = v0[17];
  v5 = v0[15];
  v6 = v0[12];
  v16 = v0[14];
  v17 = v0[13];
  v14 = v0[10];
  v15 = v0[11];
  v7 = v0[9];

  sub_1000545A4(0, &qword_1005A96F0, OS_dispatch_queue_ptr);
  (*(v4 + 104))(v2, enum case for DispatchQoS.QoSClass.default(_:), v3);
  v13 = static OS_dispatch_queue.global(qos:)();
  (*(v4 + 8))(v2, v3);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = v1;
  v0[6] = sub_10008AD00;
  v0[7] = v8;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_100020828;
  v0[5] = &unk_10058C8E0;
  v9 = _Block_copy(v0 + 2);
  v10 = v7;
  swift_errorRetain();
  static DispatchQoS.unspecified.getter();
  v0[8] = _swiftEmptyArrayStorage;
  sub_10008AD20(&unk_1005ABAC0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10004B564(&unk_1005A9700, &qword_1004C3820);
  sub_10001DF0C(&qword_1005ABAD0, &unk_1005A9700, &qword_1004C3820, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v9);

  (*(v15 + 8))(v6, v14);
  (*(v16 + 8))(v5, v17);

  swift_willThrow();

  v11 = v0[1];

  return v11(0);
}

uint64_t sub_100087B50(uint64_t a1, _OWORD *a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = *a2;
  return _swift_task_switch(sub_100087B78, 0, 0);
}

uint64_t sub_100087B78()
{
  v1 = v0[4];
  v2 = v0[2];
  *v2 = v0[3];
  v2[1] = v1;
  v4 = v0[1];

  return v4();
}

uint64_t sub_100087BE8()
{
  *(v1 + 24) = v0;
  v2 = swift_task_alloc();
  *(v1 + 32) = v2;
  v3 = sub_10004B564(&qword_1005A9668, &unk_1004C29E0);
  *v2 = v1;
  v2[1] = sub_100087CC4;

  return withTimeout<A>(_:block:)(v1 + 16, 5000000000000000000, 0, &unk_1004C29D8, 0, v3);
}

uint64_t sub_100087CC4()
{
  v2 = *(*v1 + 24);
  *(*v1 + 40) = v0;

  if (v0)
  {
    v3 = sub_100087E04;
  }

  else
  {
    v3 = sub_100087DEC;
  }

  return _swift_task_switch(v3, v2, 0);
}

uint64_t sub_100087E04()
{
  if (qword_1005A7EE8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000A6F0(v1, qword_1005DFB98);
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
    _os_log_impl(&_mh_execute_header, v2, v3, "Nearby watch detection - error getting paired devices: %@", v4, 0xCu);
    sub_100002CE0(v5, &qword_1005A9670, &unk_1004C2480);
  }

  v7 = *(v0 + 8);

  return v7(_swiftEmptyArrayStorage);
}

uint64_t sub_100087FC4()
{
  v1 = [objc_opt_self() sharedInstance];
  v0[20] = v1;
  if (v1)
  {
    v2 = v1;
    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = sub_100088108;
    v3 = swift_continuation_init();
    v0[17] = sub_10004B564(&qword_1005A9678, &unk_1004C29F0);
    v0[10] = _NSConcreteStackBlock;
    v0[11] = 1107296256;
    v0[12] = sub_1000886F8;
    v0[13] = &unk_10058C7C8;
    v0[14] = v3;
    [v2 getDevicesWithBlock:v0 + 10];
    v1 = v0 + 2;
  }

  else
  {
    __break(1u);
  }

  return _swift_continuation_await(v1);
}

uint64_t sub_100088108()
{

  return _swift_task_switch(sub_1000881E8, 0, 0);
}

uint64_t sub_1000881E8()
{
  v2 = (v0 + 144);
  v1 = *(v0 + 144);

  if (v1)
  {
    v3 = v1 >> 62;
    if (v1 >> 62)
    {
      goto LABEL_35;
    }

    v4 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    for (i = v1; v4; i = v1)
    {
      v23 = v3;
      v5 = 0;
      v6 = v2 - 64;
      v7 = v1 & 0xC000000000000001;
      v3 = v1 & 0xFFFFFFFFFFFFFF8;
      v8 = NRDevicePropertyIsPaired;
      v24 = NRDevicePropertyCellularEnabled;
      while (1)
      {
        if (v7)
        {
          v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v5 >= *(v3 + 16))
          {
            goto LABEL_34;
          }

          v9 = *(v1 + 8 * v5 + 32);
        }

        v10 = v9;
        v11 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        if ([v9 valueForProperty:v8])
        {
          _bridgeAnyObjectToAny(_:)();
          v1 = i;
          swift_unknownObjectRelease();
        }

        else
        {
          v27 = 0u;
          v28 = 0u;
        }

        *v6 = v27;
        *(v2 - 3) = v28;
        if (*(v26 + 104))
        {
          if ((swift_dynamicCast() & 1) == 0 || (*v2 & 1) == 0)
          {
            goto LABEL_5;
          }

          if ([v10 valueForProperty:v24])
          {
            _bridgeAnyObjectToAny(_:)();
            v1 = i;
            swift_unknownObjectRelease();
          }

          else
          {
            v27 = 0u;
            v28 = 0u;
          }

          *v6 = v27;
          *(v2 - 3) = v28;
          if (!*(v26 + 104))
          {
            sub_100002CE0((v2 - 64), &qword_1005A9680, &qword_1004C32A0);

            goto LABEL_6;
          }

          if (swift_dynamicCast() & 1) != 0 && (*v2)
          {
            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            specialized ContiguousArray._endMutation()();
            v1 = i;
          }

          else
          {
LABEL_5:
          }
        }

        else
        {

          sub_100002CE0((v2 - 64), &qword_1005A9680, &qword_1004C32A0);
        }

LABEL_6:
        ++v5;
        if (v11 == v4)
        {
          v3 = v23;
          goto LABEL_36;
        }
      }

      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      v4 = _CocoaArrayWrapper.endIndex.getter();
    }

LABEL_36:
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_10000A6F0(v16, qword_1005DFB98);

    v13 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v13, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 134218240;
      if ((_swiftEmptyArrayStorage & 0x8000000000000000) != 0 || (_swiftEmptyArrayStorage & 0x4000000000000000) != 0)
      {
        v19 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v19 = _swiftEmptyArrayStorage[2];
      }

      *(v18 + 4) = v19;

      *(v18 + 12) = 2048;
      if (v3)
      {
        v20 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v20 = *((i & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v18 + 14) = v20;

      _os_log_impl(&_mh_execute_header, v13, v17, "Nearby watch detection - %ld eligible out of %ld paired devices", v18, 0x16u);
    }

    else
    {
      swift_bridgeObjectRelease_n();
    }
  }

  else
  {
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_10000A6F0(v12, qword_1005DFB98);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "Nearby watch detection - no paired devices, skipping", v15, 2u);
    }
  }

  **(v26 + 152) = _swiftEmptyArrayStorage;
  v21 = *(v26 + 8);

  return v21();
}

uint64_t sub_1000886F8(uint64_t a1, uint64_t a2)
{
  v3 = *sub_100011AEC((a1 + 32), *(a1 + 56));
  if (a2)
  {
    sub_1000545A4(0, &qword_1005A9688, NRDevice_ptr);
    v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v4 = 0;
  }

  **(*(v3 + 64) + 40) = v4;

  return _swift_continuation_resume(v3);
}

uint64_t sub_100088788(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_1000887A8, 0, 0);
}

uint64_t sub_1000887A8()
{
  v1 = v0[3];
  v2 = swift_task_alloc();
  v0[4] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[5] = v3;
  *v3 = v0;
  v3[1] = sub_100088894;
  v4 = v0[2];

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v4, 0, 0, 0x79627261654E7369, 0xE800000000000000, sub_10008AD68, v2, &type metadata for Bool);
}

uint64_t sub_100088894()
{
  v2 = *v1;
  *(v2 + 48) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1000889D0, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1000889D0()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_100088A34(uint64_t a1)
{
  v3 = type metadata accessor for DispatchQoS.QoSClass();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for NearbyWatchObserver.NearbyWatchDetector.State(0);
  __chkstk_darwin(v7 - 8);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = (v1 + OBJC_IVAR____TtCC13findmylocated19NearbyWatchObserverP33_D1058E42C246155F13E2C4F9907E5BB119NearbyWatchDetector_state);
  os_unfair_lock_lock((v1 + OBJC_IVAR____TtCC13findmylocated19NearbyWatchObserverP33_D1058E42C246155F13E2C4F9907E5BB119NearbyWatchDetector_state));
  v11 = v10 + *(sub_10004B564(&qword_1005A94D8, &qword_1004C2988) + 28);
  sub_100089B10(v11, v9, type metadata accessor for NearbyWatchObserver.NearbyWatchDetector.State);
  v12 = sub_10004B564(&qword_1005A94E0, &qword_1004C2990);
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v9, 2, v12) == 1)
  {
    v24 = a1;
    sub_10008ADE0(v11, type metadata accessor for NearbyWatchObserver.NearbyWatchDetector.State);
    sub_10008ADE0(v9, type metadata accessor for NearbyWatchObserver.NearbyWatchDetector.State);
    v14 = *(v12 + 48);
    v22 = *(v1 + OBJC_IVAR____TtCC13findmylocated19NearbyWatchObserverP33_D1058E42C246155F13E2C4F9907E5BB119NearbyWatchDetector_deviceIdentifier);
    v23 = v14;
    sub_1000545A4(0, &qword_1005A96F0, OS_dispatch_queue_ptr);
    (*(v4 + 104))(v6, enum case for DispatchQoS.QoSClass.default(_:), v3);
    v15 = v10;
    v16 = v1;
    v17 = static OS_dispatch_queue.global(qos:)();
    (*(v4 + 8))(v6, v3);
    v18 = objc_allocWithZone(NRDeviceMonitor);
    v19 = v16;
    v10 = v15;
    v20 = [v18 initWithDeviceIdentifier:v22 delegate:v19 queue:v17];

    *v11 = v20;
    v21 = sub_10004B564(&unk_1005A9578, &unk_1004C29A0);
    (*(*(v21 - 8) + 16))(&v11[v23], v24, v21);
    (*(v13 + 56))(v11, 0, 2, v12);
  }

  else
  {
    sub_10008ADE0(v9, type metadata accessor for NearbyWatchObserver.NearbyWatchDetector.State);
    sub_10008AD8C();
    v25 = swift_allocError();
    sub_10004B564(&unk_1005A9578, &unk_1004C29A0);
    CheckedContinuation.resume(throwing:)();
  }

  os_unfair_lock_unlock(v10);
}

void sub_100088DB0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NearbyWatchObserver.NearbyWatchDetector.State(0);
  __chkstk_darwin(v4 - 8);
  v6 = (v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_10004B564(&unk_1005A9578, &unk_1004C29A0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v15 - v9;
  v11 = (a1 + OBJC_IVAR____TtCC13findmylocated19NearbyWatchObserverP33_D1058E42C246155F13E2C4F9907E5BB119NearbyWatchDetector_state);
  os_unfair_lock_lock(v11);
  v12 = *(sub_10004B564(&qword_1005A94D8, &qword_1004C2988) + 28);
  sub_100089B10(v11 + v12, v6, type metadata accessor for NearbyWatchObserver.NearbyWatchDetector.State);
  v13 = sub_10004B564(&qword_1005A94E0, &qword_1004C2990);
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v6, 2, v13))
  {
    sub_10008ADE0(v6, type metadata accessor for NearbyWatchObserver.NearbyWatchDetector.State);
  }

  else
  {
    sub_10008ADE0(v11 + v12, type metadata accessor for NearbyWatchObserver.NearbyWatchDetector.State);

    (*(v8 + 32))(v10, v6 + *(v13 + 48), v7);
    v15[1] = a2;
    swift_errorRetain();
    CheckedContinuation.resume(throwing:)();
    (*(v8 + 8))(v10, v7);
    (*(v14 + 56))(v11 + v12, 2, 2, v13);
  }

  os_unfair_lock_unlock(v11);
}

uint64_t sub_100089034(uint64_t a1, uint64_t a2, int a3)
{
  v17 = a3;
  v5 = type metadata accessor for NearbyWatchObserver.NearbyWatchDetector.State(0);
  __chkstk_darwin(v5 - 8);
  v7 = (&v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_10004B564(&unk_1005A9578, &unk_1004C29A0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v16 - v10;
  sub_100089B10(a1, v7, type metadata accessor for NearbyWatchObserver.NearbyWatchDetector.State);
  v12 = sub_10004B564(&qword_1005A94E0, &qword_1004C2990);
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v7, 2, v12))
  {
    return sub_10008ADE0(v7, type metadata accessor for NearbyWatchObserver.NearbyWatchDetector.State);
  }

  sub_10008ADE0(a1, type metadata accessor for NearbyWatchObserver.NearbyWatchDetector.State);

  (*(v9 + 32))(v11, v7 + *(v12 + 48), v8);
  v15 = (v9 + 8);
  if (v17)
  {
    v19 = a2;
    swift_errorRetain();
    CheckedContinuation.resume(throwing:)();
  }

  else
  {
    v18 = a2 & 1;
    CheckedContinuation.resume(returning:)();
  }

  (*v15)(v11, v8);
  return (*(v13 + 56))(a1, 2, 2, v12);
}

id sub_100089378()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100089420@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = String._bridgeToObjectiveC()();
  v5 = [a1 valueForProperty:v4];

  if (v5)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v10 = 0u;
    v11 = 0u;
  }

  v12[0] = v10;
  v12[1] = v11;
  if (*(&v11 + 1))
  {
    v6 = type metadata accessor for UUID();
    v7 = swift_dynamicCast();
    return (*(*(v6 - 8) + 56))(a2, v7 ^ 1u, 1, v6);
  }

  else
  {
    sub_100002CE0(v12, &qword_1005A9680, &qword_1004C32A0);
    v9 = type metadata accessor for UUID();
    return (*(*(v9 - 8) + 56))(a2, 1, 1, v9);
  }
}

uint64_t sub_100089580()
{
  sub_10008ADE0(v0 + OBJC_IVAR____TtC13findmylocated19NearbyWatchObserver_state, type metadata accessor for NearbyWatchObserver.State);
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_1000895FC(uint64_t a1)
{
  result = type metadata accessor for NearbyWatchObserver.State(319);
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

void sub_1000896E8(uint64_t a1)
{
  sub_100089788(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100089788(uint64_t a1)
{
  if (!qword_1005A94D0)
  {
    type metadata accessor for NearbyWatchObserver.NearbyWatchDetector.State(255);
    v1 = type metadata accessor for Mutex();
    if (!v2)
    {
      atomic_store(v1, &qword_1005A94D0);
    }
  }
}

uint64_t sub_100089828(uint64_t a1)
{
  sub_100089880(319);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v2;
}

void sub_100089880(uint64_t a1)
{
  if (!qword_1005A9568)
  {
    sub_1000545A4(255, &qword_1005A9570, NRDeviceMonitor_ptr);
    sub_10004B610(&unk_1005A9578, &unk_1004C29A0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1005A9568);
    }
  }
}

void sub_100089960(uint64_t a1)
{
  sub_1000899D4();
  if (v1 <= 0x3F)
  {
    sub_100089A90(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1000899D4()
{
  if (!qword_1005A9620)
  {
    sub_100089A1C(0);
    if (!v1)
    {
      atomic_store(v0, &qword_1005A9620);
    }
  }
}

void sub_100089A1C(uint64_t a1)
{
  if (!qword_1005A9628)
  {
    sub_10004B610(&qword_1005A9630, &qword_1004C5680);
    v1 = type metadata accessor for Task();
    if (!v2)
    {
      atomic_store(v1, &qword_1005A9628);
    }
  }
}

void sub_100089A90(uint64_t a1)
{
  if (!qword_1005A9638)
  {
    sub_10004B610(&qword_1005A9630, &qword_1004C5680);
    type metadata accessor for ContinuousClock.Instant();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1005A9638);
    }
  }
}

uint64_t sub_100089B10(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100089B78(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000368C;

  return sub_1000856DC(a1, v4, v5, v6);
}

uint64_t sub_100089C2C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NearbyWatchObserver.State(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100089C90()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100089CD0(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_10000368C;

  return sub_100085ED0(a1, a2, v6);
}

Swift::Int sub_100089D80(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_10023C9C8(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_100089DEC(v5);
  *a1 = v2;
  return result;
}

Swift::Int sub_100089DEC(uint64_t *a1)
{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = _swiftEmptyArrayStorage;
      }

      else
      {
        v5 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v5[2] = v2 / 2;
      }

      v7[0] = v5 + 4;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_100089FB4(v7, v8, a1, v4);
      v6[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_100089EE4(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_100089EE4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 16 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *(v12 - 2) && v10 == *(v12 - 1);
      if (v13 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 16;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      result = *v12;
      v10 = v12[1];
      *v12 = *(v12 - 1);
      *(v12 - 1) = v10;
      *(v12 - 2) = result;
      v12 -= 2;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_100089FB4(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v95 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = _swiftEmptyArrayStorage;
LABEL_106:
    v9 = *v95;
    if (!*v95)
    {
      goto LABEL_144;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_138:
      result = sub_10023C584(v8);
      v8 = result;
    }

    v85 = v8 + 16;
    v86 = *(v8 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v8[16 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_10008A590((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
        if (v5)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_130;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_131;
        }

        *v87 = v88;
        *(v87 + 1) = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_132;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_142;
    }
  }

  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = (*a3 + 16 * v7);
      result = *v10;
      v11 = (*a3 + 16 * v9);
      if (*v10 == *v11 && v10[1] == v11[1])
      {
        v13 = 0;
      }

      else
      {
        result = _stringCompareWithSmolCheck(_:_:expecting:)();
        v13 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v14 = v11 + 3;
        v15 = v11 + 3;
        do
        {
          result = v14[1];
          v17 = v15[2];
          v15 += 2;
          v16 = v17;
          if (result == *(v14 - 1) && v16 == *v14)
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = _stringCompareWithSmolCheck(_:_:expecting:)();
            if ((v13 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v7;
          v14 = v15;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v13)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_135;
        }

        if (v9 < v7)
        {
          v19 = 0;
          v20 = 16 * v7;
          v21 = 16 * v9;
          v22 = v9;
          do
          {
            if (v22 != v7 + v19 - 1)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_141;
              }

              v23 = (v27 + v21);
              v24 = v27 + v20;
              v25 = *v23;
              v26 = v23[1];
              *v23 = *(v24 - 16);
              *(v24 - 16) = v25;
              *(v24 - 8) = v26;
            }

            ++v22;
            --v19;
            v20 -= 16;
            v21 += 16;
          }

          while (v22 < v7 + v19);
        }
      }
    }

    v28 = a3[1];
    if (v7 < v28)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_134;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v7 < v9)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1001FCD18(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_1001FCD18((v39 > 1), v40 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v41;
    v42 = &v8[16 * v40];
    *(v42 + 4) = v9;
    *(v42 + 5) = v7;
    v43 = *v95;
    if (!*v95)
    {
      goto LABEL_143;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v8 + 4);
          v46 = *(v8 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_75:
          if (v48)
          {
            goto LABEL_121;
          }

          v61 = &v8[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_124;
          }

          v67 = &v8[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_128;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v71 = &v8[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_89:
        if (v66)
        {
          goto LABEL_123;
        }

        v74 = &v8[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_126;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_96:
        v9 = v44 - 1;
        if (v44 - 1 >= v41)
        {
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
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (!*a3)
        {
          goto LABEL_140;
        }

        v82 = *&v8[16 * v9 + 32];
        v83 = *&v8[16 * v44 + 40];
        sub_10008A590((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_10023C584(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = sub_10023C4F8(v44);
        v41 = *(v8 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v8[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_119;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_120;
      }

      v56 = &v8[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_122;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_125;
      }

      if (v60 >= v52)
      {
        v78 = &v8[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_129;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_136;
  }

  v93 = v5;
  if (v9 + a4 >= v28)
  {
    v5 = a3[1];
  }

  else
  {
    v5 = v9 + a4;
  }

  if (v5 < v9)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v7 == v5)
  {
LABEL_54:
    v5 = v93;
    goto LABEL_55;
  }

  v29 = *a3;
  v30 = *a3 + 16 * v7;
  v92 = v9;
  v31 = (v9 - v7);
LABEL_43:
  v32 = (v29 + 16 * v7);
  v33 = *v32;
  v34 = v32[1];
  v35 = v31;
  v36 = v30;
  while (1)
  {
    v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
    if (v37 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v30 += 16;
      --v31;
      if (v7 != v5)
      {
        goto LABEL_43;
      }

      v7 = v5;
      v9 = v92;
      goto LABEL_54;
    }

    if (!v29)
    {
      break;
    }

    v33 = *v36;
    v34 = v36[1];
    *v36 = *(v36 - 1);
    *(v36 - 1) = v34;
    *(v36 - 2) = v33;
    v36 -= 2;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
  return result;
}

uint64_t sub_10008A590(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v16 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_28:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = *(v18 - 2);
      v20 = *(v18 - 1);
      v18 -= 16;
      v21 = v19 == *(v6 - 2) && v20 == *(v6 - 1);
      if (!v21 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        if (v5 + 16 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 16 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

uint64_t sub_10008A7B8(uint64_t a1, int *a2)
{
  *(v2 + 32) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 40) = v3;
  *v3 = v2;
  v3[1] = sub_10008A8AC;

  return v5(v2 + 16);
}

uint64_t sub_10008A8AC()
{
  v1 = *v0;
  v2 = *(*v0 + 32);
  v5 = *v0;

  *v2 = *(v1 + 16);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_10008A9C0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100003690;

  return sub_100086894(a1, v4, v5, v6);
}

uint64_t sub_10008AA74(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000368C;

  return sub_10008A7B8(a1, v4);
}

uint64_t sub_10008AB2C(void *a1)
{
  if ([a1 valueForProperty:NRDevicePropertyUDID])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v3 = 0u;
    v4 = 0u;
  }

  v5[0] = v3;
  v5[1] = v4;
  if (*(&v4 + 1))
  {
    if (swift_dynamicCast())
    {
      return v2;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_100002CE0(v5, &qword_1005A9680, &qword_1004C32A0);
    return 0;
  }
}

uint64_t sub_10008ABFC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NearbyWatchObserver.NearbyWatchDetector.State(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10008AC60(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100003690;

  return sub_100088788(a1, v4);
}

uint64_t sub_10008AD08(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10008AD20(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_10008AD8C()
{
  result = qword_1005A9710;
  if (!qword_1005A9710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005A9710);
  }

  return result;
}

uint64_t sub_10008ADE0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_10008AE54()
{
  result = qword_1005A9718;
  if (!qword_1005A9718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005A9718);
  }

  return result;
}

unint64_t sub_10008AEA8(uint64_t a1)
{
  v1 = a1 - 1;
  result = 6515827;
  switch(v1)
  {
    case 0:
      return result;
    case 1:
      result = 0x6174537469736976;
      break;
    case 2:
      result = 0x6165627472616568;
      break;
    case 3:
      result = 0x65646E6174737962;
      break;
    case 4:
      result = 0x646E616D65646E6FLL;
      break;
    case 5:
      result = 0x776F6C6C616873;
      break;
    case 6:
      result = 1702259052;
      break;
    case 7:
      result = 0x656977657473;
      break;
    case 8:
      result = 0xD000000000000018;
      break;
    case 9:
      result = 0xD000000000000018;
      break;
    case 10:
    case 11:
      result = 0xD00000000000001DLL;
      break;
    case 99:
      result = 0x6F4C79636167656CLL;
      break;
    default:
      result = 0x6E776F6E6B6E75;
      break;
  }

  return result;
}

uint64_t type metadata accessor for SecureLocation(uint64_t a1)
{
  result = qword_1005A9778;
  if (!qword_1005A9778)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10008B1A8(uint64_t a1)
{
  sub_10008B2BC(319, &qword_1005A9788, &type metadata for Int);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Date();
    if (v2 <= 0x3F)
    {
      type metadata accessor for MotionActivityState();
      if (v3 <= 0x3F)
      {
        type metadata accessor for SPSecureLocationPublishReason(319);
        if (v4 <= 0x3F)
        {
          sub_10008B2BC(319, &qword_1005A9790, &type metadata for String);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_10008B2BC(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_10008B308(char a1)
{
  result = 0x6449794D646E6966;
  switch(a1)
  {
    case 1:
      result = 0x64757469676E6F6CLL;
      break;
    case 2:
      result = 0x656475746974616CLL;
      break;
    case 3:
      result = 0xD000000000000010;
      break;
    case 4:
      result = 0xD000000000000012;
      break;
    case 5:
      result = 0x6465657073;
      break;
    case 6:
      result = 0x657372756F63;
      break;
    case 7:
      result = 0x6564757469746C61;
      break;
    case 8:
      result = 0x726F6F6C66;
      break;
    case 9:
      result = 0x6D617473656D6974;
      break;
    case 10:
      result = 0xD000000000000013;
      break;
    case 11:
      result = 0x526873696C627570;
      break;
    case 12:
      result = 0x6E6F697461636F6CLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_10008B48C(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_10008B308(*a1);
  v5 = v4;
  if (v3 == sub_10008B308(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_10008B514()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_10008B308(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10008B578(uint64_t a1)
{
  sub_10008B308(*v1);
  String.hash(into:)();
}

Swift::Int sub_10008B5CC()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_10008B308(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_10008B62C@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10008DD44(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_10008B65C@<X0>(unint64_t *a1@<X8>)
{
  result = sub_10008B308(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_10008B6A4@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_10008DD44(a1);
  *a2 = result;
  return result;
}

uint64_t sub_10008B6E4(uint64_t a1)
{
  v2 = sub_10008D16C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10008B720(uint64_t a1)
{
  v2 = sub_10008D16C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10008B75C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10004B564(&qword_1005A9808, &qword_1004C2CD0);
  __chkstk_darwin(v4 - 8);
  v6 = &v51 - v5;
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v56 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10004B564(&unk_1005AE5B0, &qword_1004C32F0);
  v11 = __chkstk_darwin(v10 - 8);
  v13 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v51 - v14;
  v16 = [a1 timestamp];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  (*(v8 + 56))(v15, 0, 1, v7);
  v17 = [a1 findMyId];
  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v53 = v19;
  v54 = v18;
  [a1 longitude];
  v21 = v20;
  [a1 latitude];
  v23 = v22;
  [a1 verticalAccuracy];
  v25 = v24;
  [a1 horizontalAccuracy];
  v27 = v26;
  [a1 speed];
  v29 = v28;
  [a1 course];
  v31 = v30;
  [a1 altitude];
  v33 = v32;
  v34 = [a1 floor];
  if (v34)
  {

    v35 = [a1 floor];
    if (v35)
    {
      v36 = v35;
      v51 = [v35 integerValue];

      v52 = 0;
    }

    else
    {
      v51 = 0;
      v52 = 1;
    }
  }

  else
  {
    v52 = 1;
    v51 = 0;
  }

  sub_100005F04(v15, v13, &unk_1005AE5B0, &qword_1004C32F0);
  v37 = *(v8 + 48);
  if (v37(v13, 1, v7) == 1)
  {
    Date.init()();
    if (v37(v13, 1, v7) != 1)
    {
      sub_100002CE0(v13, &unk_1005AE5B0, &qword_1004C32F0);
    }
  }

  else
  {
    (*(v8 + 32))(v56, v13, v7);
  }

  v55 = v7;
  [a1 motionActivityState];
  MotionActivityState.init(rawValue:)();
  v38 = type metadata accessor for MotionActivityState();
  v39 = *(v38 - 8);
  result = (*(v39 + 48))(v6, 1, v38);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v41 = v6;

    v42 = [a1 publishReason];
    v43 = [a1 locationLabel];
    if (v43)
    {
      v44 = v43;
      v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v47 = v46;
    }

    else
    {
      v45 = 0;
      v47 = 0;
    }

    sub_100002CE0(v15, &unk_1005AE5B0, &qword_1004C32F0);
    v48 = v53;
    *a2 = v54;
    *(a2 + 8) = v48;
    *(a2 + 16) = v21;
    *(a2 + 24) = v23;
    *(a2 + 32) = v25;
    *(a2 + 40) = v27;
    *(a2 + 48) = v29;
    *(a2 + 56) = v31;
    *(a2 + 64) = v33;
    *(a2 + 72) = v51;
    *(a2 + 80) = v52;
    v49 = type metadata accessor for SecureLocation(0);
    (*(v8 + 32))(a2 + v49[13], v56, v55);
    result = (*(v39 + 32))(a2 + v49[14], v41, v38);
    *(a2 + v49[15]) = v42;
    v50 = (a2 + v49[16]);
    *v50 = v45;
    v50[1] = v47;
  }

  return result;
}

uint64_t sub_10008BC88()
{
  v1 = type metadata accessor for MotionActivityState();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = 0;
  v36 = 0xE000000000000000;
  _StringGuts.grow(_:)(100);
  v5._object = 0x80000001004DEFB0;
  v5._countAndFlagsBits = 0xD000000000000019;
  String.append(_:)(v5);
  String.append(_:)(*v0);
  v6._countAndFlagsBits = 15392;
  v6._object = 0xE200000000000000;
  String.append(_:)(v6);
  Double.write<A>(to:)();
  v7._countAndFlagsBits = 32;
  v7._object = 0xE100000000000000;
  String.append(_:)(v7);
  Double.write<A>(to:)();
  v8._countAndFlagsBits = 0x20617620203ELL;
  v8._object = 0xE600000000000000;
  String.append(_:)(v8);
  Double.write<A>(to:)();
  v9._countAndFlagsBits = 543254560;
  v9._object = 0xE400000000000000;
  String.append(_:)(v9);
  Double.write<A>(to:)();
  v10._countAndFlagsBits = 544240416;
  v10._object = 0xE400000000000000;
  String.append(_:)(v10);
  Double.write<A>(to:)();
  v11._countAndFlagsBits = 0x2073726320;
  v11._object = 0xE500000000000000;
  String.append(_:)(v11);
  Double.write<A>(to:)();
  v12._countAndFlagsBits = 0x20746C6120;
  v12._object = 0xE500000000000000;
  String.append(_:)(v12);
  Double.write<A>(to:)();
  v13._countAndFlagsBits = 543974944;
  v13._object = 0xE400000000000000;
  String.append(_:)(v13);
  v14 = *(v0 + 80);
  v33 = *(v0 + 72);
  v34 = v14;
  sub_10004B564(&qword_1005A97F8, &qword_1004C2CC8);
  _print_unlocked<A, B>(_:_:)();
  v15._countAndFlagsBits = 544437280;
  v15._object = 0xE400000000000000;
  String.append(_:)(v15);
  v16 = type metadata accessor for SecureLocation(0);
  type metadata accessor for Date();
  sub_10008DBE4(&qword_1005A9800, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v17._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v17);

  v18._countAndFlagsBits = 544435488;
  v18._object = 0xE400000000000000;
  String.append(_:)(v18);
  (*(v2 + 16))(v4, v0 + v16[14], v1);
  v19 = (*(v2 + 88))(v4, v1);
  if (v19 == enum case for MotionActivityState.stationary(_:))
  {
    v20 = 0xEA00000000007972;
    v21 = 0x616E6F6974617473;
  }

  else
  {
    if (v19 == enum case for MotionActivityState.walking(_:))
    {
      v20 = 0xE700000000000000;
      v22 = 1802264951;
    }

    else if (v19 == enum case for MotionActivityState.running(_:))
    {
      v20 = 0xE700000000000000;
      v22 = 1852732786;
    }

    else
    {
      if (v19 != enum case for MotionActivityState.cycling(_:))
      {
        if (v19 == enum case for MotionActivityState.automotive(_:))
        {
          v20 = 0xEA00000000006576;
          v21 = 0x69746F6D6F747561;
        }

        else
        {
          (*(v2 + 8))(v4, v1);
          v20 = 0xE700000000000000;
          v21 = 0x6E776F6E6B6E75;
        }

        goto LABEL_10;
      }

      v20 = 0xE700000000000000;
      v22 = 1818458467;
    }

    v21 = v22 | 0x676E6900000000;
  }

LABEL_10:
  v23 = v20;
  String.append(_:)(*&v21);

  v24._countAndFlagsBits = 544370720;
  v24._object = 0xE400000000000000;
  String.append(_:)(v24);
  v25._countAndFlagsBits = sub_10008AEA8(*(v0 + v16[15]));
  String.append(_:)(v25);

  v26._countAndFlagsBits = 0x206C626C20;
  v26._object = 0xE500000000000000;
  String.append(_:)(v26);
  v27 = (v0 + v16[16]);
  if (v27[1])
  {
    v28 = *v27;
    v29 = v27[1];
  }

  else
  {
    v29 = 0xE300000000000000;
    v28 = 7104878;
  }

  v30._countAndFlagsBits = v28;
  v30._object = v29;
  String.append(_:)(v30);

  v31._countAndFlagsBits = 62;
  v31._object = 0xE100000000000000;
  String.append(_:)(v31);
  return v35;
}