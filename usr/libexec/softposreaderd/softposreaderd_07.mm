uint64_t sub_1000A2DBC()
{
  v0 = type metadata accessor for Logger();
  sub_100003FD8(v0, qword_1003A1128);
  sub_10000403C(v0, qword_1003A1128);
  sub_100023B24();
  return static SPRLogger.secureElement.getter();
}

uint8_t *SecureElementTransceiver.getData(tag:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v53 = a3;
  v45 = a2;
  v7 = type metadata accessor for TLVTag();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = TLVTag.rawValue.getter() >> 8;
  v12 = TLVTag.rawValue.getter();
  LOWORD(v49) = -13696;
  BYTE2(v49) = v11;
  HIBYTE(v49) = v12;
  v50 = 0;
  v51 = xmmword_1002BDC30;
  v52 = 0;
  if (qword_10039D4A0 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  v14 = sub_10000403C(v13, qword_1003A1128);
  (*(v8 + 16))(v10, a1, v7);
  sub_10000BC94(&v49, v46);
  v44[3] = v14;
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  sub_10000BCF0(&v49);
  v17 = os_log_type_enabled(v15, v16);
  v44[2] = v4;
  if (v17)
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v44[1] = v5;
    v46[0] = v19;
    *v18 = 136315394;
    sub_100004074(&qword_10039E268, &unk_1002C16F0);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_1002C1660;
    v21 = TLVTag.rawValue.getter();
    *(v20 + 56) = &type metadata for UInt;
    *(v20 + 64) = &protocol witness table for UInt;
    *(v20 + 32) = v21;
    v22 = String.init(format:_:)();
    v24 = v23;
    (*(v8 + 8))(v10, v7);
    v25 = sub_100008F6C(v22, v24, v46);

    *(v18 + 4) = v25;
    *(v18 + 12) = 2080;
    v26 = sub_100170F04(v49 | (v50 << 32), v51, *(&v51 + 1), v52);
    v28 = v27;
    v29 = Data.hexString()();
    sub_100009548(v26, v28);
    v30 = sub_100008F6C(v29._countAndFlagsBits, v29._object, v46);

    *(v18 + 14) = v30;
    _os_log_impl(&_mh_execute_header, v15, v16, "CAPDU (GET DATA for tag %s): %s", v18, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    (*(v8 + 8))(v10, v7);
  }

  sub_1000A1EB0(v49 | (v50 << 32), v51, *(&v51 + 1), v52, 1, v45, v53, v47);
  v31 = v47[0];
  v32 = v47[1];
  v33 = v48;
  v34 = Logger.logObject.getter();
  if (v32 >> 60 == 15)
  {
    v35 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&_mh_execute_header, v34, v35, "Error from transceive", v31, 2u);
    }

    sub_10001A3FC();
    swift_allocError();
    *v36 = 0;
    swift_willThrow();
    goto LABEL_15;
  }

  v37 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v34, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v46[0] = v39;
    *v38 = 136315138;
    v40 = Data.hexString()();
    v41 = sub_100008F6C(v40._countAndFlagsBits, v40._object, v46);

    *(v38 + 4) = v41;
    _os_log_impl(&_mh_execute_header, v34, v37, "RAPDU: %s", v38, 0xCu);
    sub_10000959C(v39);
  }

  if (v33 != 36864)
  {
    sub_10001A3FC();
    swift_allocError();
    *v42 = v33;
    swift_willThrow();
    sub_10000BD44(v47, &qword_10039E2C0, &unk_1002BFEB0);
LABEL_15:
    sub_10000BCF0(&v49);
    return v31;
  }

  sub_10000BCF0(&v49);
  sub_1000094F4(v31, v32);
  sub_10000BD44(v47, &qword_10039E2C0, &unk_1002BFEB0);
  return v31;
}

uint64_t sub_1000A33BC()
{
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1002C3C70;
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  v3 = v2 + 16;
  v4 = *(v0 + 16);
  isa = Data._bridgeToObjectiveC()().super.isa;
  v6 = swift_allocObject();
  *(v6 + 16) = v1;
  *(v6 + 24) = v2;
  aBlock[4] = sub_1000A38FC;
  aBlock[5] = v6;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100159FB0;
  aBlock[3] = &unk_100382398;
  v7 = _Block_copy(aBlock);

  [v4 transceiveWithCapdu:isa reply:v7];
  _Block_release(v7);

  swift_beginAccess();
  if (*(v2 + 16))
  {
    swift_willThrow();
    swift_errorRetain();

    return v3;
  }

  swift_beginAccess();
  if (*(v1 + 24) >> 60 != 15)
  {
    v3 = *(v1 + 16);
    sub_1000094F4(v3, *(v1 + 24));

    return v3;
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_1000A3604(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  v10 = *(a4 + 16);
  v11 = *(a4 + 24);
  *(a4 + 16) = a1;
  *(a4 + 24) = a2;
  sub_10001A3E8(a1, a2);
  sub_10001A074(v10, v11);
  swift_beginAccess();
  *(a5 + 16) = a3;
  swift_errorRetain();
}

uint64_t sub_1000A36B4()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_1000A3710()
{
  v0._countAndFlagsBits = 0x203A79786F7270;
  v0._object = 0xE700000000000000;
  String.append(_:)(v0);
  sub_100004074(&qword_1003A1208, &unk_1002C53D0);
  _print_unlocked<A, B>(_:_:)();
  return 0;
}

unint64_t sub_1000A37C0(uint64_t a1)
{
  result = sub_1000A37E8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000A37E8()
{
  result = qword_1003A1200;
  if (!qword_1003A1200)
  {
    type metadata accessor for SecureElementTransceiverAdaptor();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A1200);
  }

  return result;
}

uint64_t sub_1000A383C()
{
  v1 = *(v0 + 24);
  if (v1 >> 60 != 15)
  {
    sub_100009548(*(v0 + 16), v1);
  }

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000A3884()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000A38BC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000A3904(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000A391C()
{
  v0 = type metadata accessor for Logger();
  sub_100003FD8(v0, qword_1003A1210);
  sub_10000403C(v0, qword_1003A1210);
  sub_100023B24();
  return static SPRLogger.secureElement.getter();
}

uint64_t sub_1000A3978()
{
  v0 = type metadata accessor for Logger();
  sub_100003FD8(v0, qword_1003A1228);
  sub_10000403C(v0, qword_1003A1228);
  sub_100023B24();
  return static SPRLogger.secureElement.getter();
}

Swift::Void __swiftcall SecureElementTransceiver.cancelPIN()()
{
  v2 = v1;
  v3 = v0;
  v35 = 62592;
  v36 = 0;
  v37 = xmmword_1002BDC30;
  v38 = 0;
  if (qword_10039D4B8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000403C(v4, qword_1003A1240);
  sub_10000BC94(&v35, v33);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.info.getter();
  sub_10000BCF0(&v35);
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v33[0] = v31;
    *v7 = 136315138;
    v8 = sub_100170F04(v35 | (v36 << 32), v37, *(&v37 + 1), v38);
    v10 = v9;
    v11 = Data.hexString()();
    sub_100009548(v8, v10);
    v12 = sub_100008F6C(v11._countAndFlagsBits, v11._object, v33);

    *(v7 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v5, v6, "C-APDU (CANCEL): %s", v7, 0xCu);
    sub_10000959C(v31);
  }

  sub_1000A1EB0(v35 | (v36 << 32), v37, *(&v37 + 1), v38, 1, v3, v2, v33);
  if (v33[1] >> 60 == 15)
  {
    sub_10000BCF0(&v35);
    return;
  }

  v13 = v34;
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v32 = v17;
    *v16 = 136315138;
    v18 = Data.hexString()();
    v19 = sub_100008F6C(v18._countAndFlagsBits, v18._object, &v32);

    *(v16 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v14, v15, "R-APDU: %s", v16, 0xCu);
    sub_10000959C(v17);
  }

  v20 = Logger.logObject.getter();
  if (v13 != 36864)
  {
    v29 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v20, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&_mh_execute_header, v20, v29, "failed to cleared persistent storage in SE", v30, 2u);
    }

    sub_10000BCF0(&v35);

    goto LABEL_24;
  }

  v21 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&_mh_execute_header, v20, v21, "cleared persistent storage in SE", v22, 2u);
  }

  if (qword_10039D708 != -1)
  {
    swift_once();
  }

  v23 = static GlobalState.shared;
  [*(static GlobalState.shared + 88) lock];
  v24 = *(v23 + 104);
  v25 = __OFADD__(v24, 1);
  v26 = v24 + 1;
  if (v25)
  {
    __break(1u);
  }

  else
  {
    *(v23 + 104) = v26;
    while (*(v23 + 96) > 0 || *(v23 + 112) == 1)
    {
      [*(v23 + 88) wait];
    }

    v27 = *(v23 + 104);
    v25 = __OFSUB__(v27, 1);
    v28 = v27 - 1;
    if (!v25)
    {
      *(v23 + 104) = v28;
      *(v23 + 112) = 1;
      [*(v23 + 88) unlock];
      *(v23 + 57) = 0;
      sub_100173040();
      [*(v23 + 88) lock];
      *(v23 + 112) = 0;
      [*(v23 + 88) broadcast];
      [*(v23 + 88) unlock];
      sub_10000BCF0(&v35);
LABEL_24:
      sub_1000A3F14(v33);
      return;
    }
  }

  __break(1u);
}

uint64_t sub_1000A3EB8()
{
  v0 = type metadata accessor for Logger();
  sub_100003FD8(v0, qword_1003A1240);
  sub_10000403C(v0, qword_1003A1240);
  sub_100023B24();
  return static SPRLogger.secureElement.getter();
}

uint64_t sub_1000A3F14(uint64_t a1)
{
  v2 = sub_100004074(&qword_10039E2C0, &unk_1002BFEB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000A3F7C()
{
  v0 = type metadata accessor for Logger();
  sub_100003FD8(v0, qword_1003A1258);
  sub_10000403C(v0, qword_1003A1258);
  sub_100023B24();
  return static SPRLogger.secureElement.getter();
}

uint64_t sub_1000A3FD8()
{
  v0 = type metadata accessor for Logger();
  sub_100003FD8(v0, qword_1003A1270);
  sub_10000403C(v0, qword_1003A1270);
  sub_100023B24();
  return static SPRLogger.feedbackFramework.getter();
}

uint64_t sub_1000A4034(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[17] = a6;
  v7[18] = a7;
  v7[15] = a4;
  v7[16] = a5;
  return _swift_task_switch(sub_1000A4058, 0, 0);
}

uint64_t sub_1000A4058()
{
  v33 = v0;
  if (qword_10039D4C8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 120);
  v2 = type metadata accessor for Logger();
  *(v0 + 152) = sub_10000403C(v2, qword_1003A1270);
  sub_10000CCE4(v1, v0 + 16);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v32 = v6;
    *v5 = 136315138;
    v7 = *(v0 + 40);
    v8 = *(v0 + 48);
    sub_10000BE18((v0 + 16), v7);
    v9 = (*(v8 + 8))(v7, v8);
    v11 = v10;
    sub_10000959C((v0 + 16));
    v12 = sub_100008F6C(v9, v11, &v32);

    *(v5 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v3, v4, "Attempting to launch NFC/SE Tap-To-Pay Feedback Form for %s", v5, 0xCu);
    sub_10000959C(v6);
  }

  else
  {

    sub_10000959C((v0 + 16));
  }

  v31 = *(v0 + 144);
  v13 = *(v0 + 120);
  v14 = type metadata accessor for FBKSForm.Question();
  v15 = *(v14 - 8);
  v16 = swift_task_alloc();
  *v16 = 0x656C7469743ALL;
  v16[1] = 0xE600000000000000;
  v30 = *(v15 + 104);
  v30();
  v17 = v13[3];
  v18 = v13[4];
  sub_10000BE18(v13, v17);
  (*(v18 + 16))(v17, v18);
  dispatch thunk of FBKSForm.prefill(question:answer:)();

  v19 = *(v15 + 8);
  v19(v16, v14);

  v20 = swift_task_alloc();
  *v20 = 0x745F65757373693ALL;
  v20[1] = 0xEB00000000657079;
  v30();
  v21 = v13[3];
  v22 = v13[4];
  sub_10000BE18(v13, v21);
  (*(v22 + 8))(v21, v22);
  dispatch thunk of FBKSForm.prefill(question:answer:)();

  v19(v20, v14);

  dispatch thunk of FBKSForm.authenticationMethod.setter();
  dispatch thunk of FBKSLaunchConfiguration.promptStyle.setter();
  type metadata accessor for FeedbackFrameworkString();
  static FeedbackFrameworkString.promptTitle.getter();
  dispatch thunk of FBKSLaunchConfiguration.localizedPromptTitle.setter();
  static FeedbackFrameworkString.promptMessage.getter();
  dispatch thunk of FBKSLaunchConfiguration.localizedPromptMessage.setter();
  dispatch thunk of FBKSLaunchConfiguration.notifyImmediately.setter();
  v23 = *(v31 + 72);
  if (v23)
  {
    v24 = *(v31 + 80);
    sub_10000BE18((*(v0 + 144) + 16), *(*(v0 + 144) + 40));
    type metadata accessor for DefaultManagedDictionary();

    sub_10017A944(3);
    if (*(v0 + 112))
    {
      sub_100019D3C((v0 + 88), (v0 + 56));
    }

    else
    {
      *(v0 + 80) = &type metadata for Bool;
      *(v0 + 56) = 0;
    }

    v23(*(v0 + 128), *(v0 + 136), v0 + 56);
    sub_1000048A0(v23, v24);
    sub_10000959C((v0 + 56));
  }

  v25 = *(v0 + 144);
  type metadata accessor for FBKSFeedbackCount();
  v26 = *(v25 + 56);
  *(v0 + 160) = v26;
  v27 = *(v25 + 64);
  *(v0 + 168) = v27;
  v28 = swift_task_alloc();
  *(v0 + 176) = v28;
  *v28 = v0;
  v28[1] = sub_1000A4580;

  return static FBKSFeedbackCount.fetchCountsForForm(identifier:)(v26, v27);
}

uint64_t sub_1000A4580(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 184) = a1;
  *(v3 + 192) = v1;

  if (v1)
  {
    v4 = sub_1000A4AB0;
  }

  else
  {
    v4 = sub_1000A4694;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1000A4694()
{
  v25 = v0;
  v1 = *(v0 + 184);

  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 184);
    v7 = *(v0 + 160);
    v6 = *(v0 + 168);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v24 = v10;
    *v8 = 136315394;
    *(v8 + 4) = sub_100008F6C(v7, v6, &v24);
    *(v8 + 12) = 2112;
    *(v8 + 14) = v5;
    *v9 = v5;
    v11 = v5;
    _os_log_impl(&_mh_execute_header, v3, v4, "Current Feedback Count for %s: %@\n", v8, 0x16u);
    sub_100041D90(v9);

    sub_10000959C(v10);
  }

  v12 = *(v0 + 184);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = *(v0 + 184);
    v16 = swift_slowAlloc();
    *v16 = 134217984;
    *(v16 + 4) = FBKSFeedbackCount.declineCount.getter();

    _os_log_impl(&_mh_execute_header, v13, v14, "User has declined this form %ld times", v16, 0xCu);
  }

  else
  {

    v13 = *(v0 + 184);
  }

  v18 = *(v0 + 128);
  v17 = *(v0 + 136);

  v19 = objc_allocWithZone(type metadata accessor for FBKSDraftLauncher());
  v20 = v18;
  *(v0 + 200) = FBKSDraftLauncher.init(feedbackForm:)();
  v23 = (&async function pointer to dispatch thunk of FBKSDraftLauncher.collectFeedback(launchConfiguration:) + async function pointer to dispatch thunk of FBKSDraftLauncher.collectFeedback(launchConfiguration:));
  v21 = swift_task_alloc();
  *(v0 + 208) = v21;
  *v21 = v0;
  v21[1] = sub_1000A4934;

  return v23(v17);
}

uint64_t sub_1000A4934()
{
  *(*v1 + 216) = v0;

  if (v0)
  {
    v2 = sub_1000A4BFC;
  }

  else
  {
    v2 = sub_1000A4A48;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000A4A48()
{
  v1 = *(v0 + 184);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1000A4AB0()
{
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
    _os_log_impl(&_mh_execute_header, v1, v2, "Encountered error while creating and launching Feedback Form: %@", v3, 0xCu);
    sub_100041D90(v4);
  }

  else
  {
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1000A4BFC()
{
  v1 = *(v0 + 184);

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
    _os_log_impl(&_mh_execute_header, v2, v3, "Encountered error while creating and launching Feedback Form: %@", v4, 0xCu);
    sub_100041D90(v5);
  }

  else
  {
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1000A4D58()
{
  sub_10000959C(v0 + 2);

  sub_1000048A0(v0[9], v0[10]);

  return swift_deallocClassInstance();
}

uint64_t *sub_1000A4DC4(uint64_t a1, uint64_t *a2)
{
  v24 = type metadata accessor for DefaultManagedDictionary();
  v25 = &off_100386190;
  *&v23 = a1;
  a2[7] = 0xD000000000000014;
  a2[8] = 0x800000010034A640;
  a2[9] = 0;
  a2[10] = 0;
  if (qword_10039D4C8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000403C(v4, qword_1003A1270);
  sub_10000CCE4(&v23, v21);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *v7 = 136315394;
    v8 = _typeName(_:qualified:)();
    v10 = sub_100008F6C(v8, v9, &v20);

    *(v7 + 4) = v10;
    *(v7 + 12) = 2080;
    sub_100004074(&qword_1003A6740, &unk_1002C2930);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1002C1660;
    v12 = v22;
    v13 = sub_10000BE18(v21, v22);
    *(v11 + 56) = v12;
    v14 = sub_10000BE5C((v11 + 32));
    (*(*(v12 - 8) + 16))(v14, v13, v12);
    v15 = showFunction(signature:_:)(0xD000000000000012, 0x800000010034A660, v11);
    v17 = v16;

    sub_10000959C(v21);
    v18 = sub_100008F6C(v15, v17, &v20);

    *(v7 + 14) = v18;
    _os_log_impl(&_mh_execute_header, v5, v6, "%s.%s", v7, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    sub_10000959C(v21);
  }

  sub_100029790(&v23, (a2 + 2));
  return a2;
}

uint64_t *sub_1000A50A0(uint64_t a1)
{
  sub_1000E972C(v18);
  if (!v2)
  {
    sub_10000CCE4(v18, v17);
    v3 = sub_100022438(v17, v17[3]);
    __chkstk_darwin(v3);
    v5 = (&v16[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v6 + 16))(v5);
    v7 = *v5;
    v8 = type metadata accessor for DefaultManagedDictionary();
    v16[3] = v8;
    v16[4] = &off_100386190;
    v16[0] = v7;
    type metadata accessor for LaunchFeedbackFramework();
    v9 = swift_allocObject();
    v10 = sub_100022438(v16, v8);
    __chkstk_darwin(v10);
    v12 = (&v16[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v13 + 16))(v12);
    v1 = sub_1000A4DC4(*v12, v9);
    sub_10000959C(v18);
    sub_10000959C(v16);
    sub_10000959C(v17);
  }

  return v1;
}

uint64_t sub_1000A5298(uint64_t a1)
{
  type metadata accessor for ConfigurationError(0);
  sub_1000A5CD0(&qword_10039DC00, type metadata accessor for ConfigurationError, &unk_1002BFB80);
  _BridgedStoredNSError.code.getter();
  if (v2 > 2022)
  {
    if (v2 > 2028)
    {
      switch(v2)
      {
        case 2029:
          return 0x206E776F6E6B6E55;
        case 2030:
          return 0xD000000000000014;
        case 2033:
          return 0xD000000000000016;
      }
    }

    else
    {
      switch(v2)
      {
        case 2023:
          return 0xD000000000000014;
        case 2024:
          return 0xD000000000000019;
        case 2027:
          return 0x2064696C61766E49;
      }
    }
  }

  else if (v2 > 2014)
  {
    switch(v2)
    {
      case 2015:
        return 0xD00000000000001CLL;
      case 2016:
        return 0xD000000000000014;
      case 2017:
        return 0xD000000000000018;
    }
  }

  else if (v2 != 2000 && (v2 == 2009 || v2 == 2010))
  {
    return 0xD000000000000015;
  }

  return 0xD000000000000012;
}

unint64_t sub_1000A54EC(uint64_t a1)
{
  type metadata accessor for ConfigurationError(0);
  sub_1000A5CD0(&qword_10039DC00, type metadata accessor for ConfigurationError, &unk_1002BFB80);
  _BridgedStoredNSError.code.getter();
  v1 = 0x206E776F6E6B6E55;
  if (v4 <= 2022)
  {
    if (v4 <= 2014)
    {
      if (v4 == 2010)
      {
        v1 = 0xD000000000000034;
      }

      if (v4 == 2009)
      {
        v1 = 0xD000000000000034;
      }

      if (v4 == 2000)
      {
        return 0xD00000000000002CLL;
      }

      else
      {
        return v1;
      }
    }

    if (v4 == 2017)
    {
      v1 = 0xD000000000000032;
    }

    if (v4 == 2016)
    {
      v1 = 0xD00000000000002ELL;
    }

    v3 = v4 == 2015;
LABEL_21:
    if (v3)
    {
      return 0xD000000000000033;
    }

    else
    {
      return v1;
    }
  }

  if (v4 <= 2028)
  {
    if (v4 == 2027)
    {
      v1 = 0xD000000000000026;
    }

    if (v4 == 2024)
    {
      v1 = 0xD000000000000033;
    }

    v3 = v4 == 2023;
    goto LABEL_21;
  }

  if (v4 == 2033)
  {
    v1 = 0xD000000000000030;
  }

  if (v4 == 2030)
  {
    v1 = 0xD00000000000002CLL;
  }

  if (v4 == 2029)
  {
    return 0xD000000000000027;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1000A5748(uint64_t a1)
{
  sub_1000A5CD0(&qword_10039DC00, type metadata accessor for ConfigurationError, &unk_1002BFB80);
  _BridgedStoredNSError.code.getter();
  return ((v2 - 2000) < 0x22) & (0x269838601uLL >> (v2 + 48));
}

uint64_t sub_1000A57E4(uint64_t a1)
{
  sub_1000A5CD0(&qword_10039DA08, type metadata accessor for ReadError, &unk_1002BF1F0);
  _BridgedStoredNSError.code.getter();
  v1 = 0x6873617243;
  v2 = 0xD000000000000012;
  if (v4 == 4013)
  {
    v2 = 0xD000000000000014;
  }

  if (v4 != 4024)
  {
    v1 = v2;
  }

  if (v4 == 4005)
  {
    return 0xD000000000000014;
  }

  else
  {
    return v1;
  }
}

unint64_t sub_1000A58D8(uint64_t a1)
{
  sub_1000A5CD0(&qword_10039DA08, type metadata accessor for ReadError, &unk_1002BF1F0);
  _BridgedStoredNSError.code.getter();
  v1 = 0x206E776F6E6B6E55;
  if (v3 == 4013)
  {
    v1 = 0xD000000000000015;
  }

  if (v3 == 4024)
  {
    v1 = 0xD000000000000022;
  }

  if (v3 == 4005)
  {
    return 0xD00000000000001DLL;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1000A59E0(uint64_t a1)
{
  sub_1000A5CD0(&qword_10039DA08, type metadata accessor for ReadError, &unk_1002BF1F0);
  _BridgedStoredNSError.code.getter();
  return ((v2 - 4005) < 0x14) & (0x80101u >> (v2 + 91));
}

unint64_t sub_1000A5A78(uint64_t a1)
{
  sub_1000A5CD0(&qword_10039D9D0, type metadata accessor for SecureChannelError, &unk_1002BF0E0);
  _BridgedStoredNSError.code.getter();
  if (v3 == 5010)
  {
    v1 = 0xD000000000000019;
  }

  else
  {
    v1 = 0xD000000000000012;
  }

  if (v3 == 5009)
  {
    return 0xD00000000000001BLL;
  }

  else
  {
    return v1;
  }
}

unint64_t sub_1000A5B58(uint64_t a1)
{
  sub_1000A5CD0(&qword_10039D9D0, type metadata accessor for SecureChannelError, &unk_1002BF0E0);
  _BridgedStoredNSError.code.getter();
  v1 = 0x206E776F6E6B6E55;
  if (v3 == 5009)
  {
    v1 = 0xD000000000000035;
  }

  if (v3 == 5010)
  {
    return 0xD000000000000030;
  }

  else
  {
    return v1;
  }
}

BOOL sub_1000A5C44(uint64_t a1)
{
  sub_1000A5CD0(&qword_10039D9D0, type metadata accessor for SecureChannelError, &unk_1002BF0E0);
  _BridgedStoredNSError.code.getter();
  return (v2 - 5009) < 2;
}

uint64_t sub_1000A5CD0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *sub_1000A5D28(void *a1, uint64_t a2)
{
  sub_10000CCE4(a2, v19);
  sub_100004074(&qword_1003A1378, &unk_1002C5510);
  if (!swift_dynamicCast())
  {
    a1[3] = &type metadata for AttemptedSendBatchState;
    v6 = sub_1000A62C8();
LABEL_9:
    a1[4] = v6;
    return _swiftEmptyArrayStorage;
  }

  if (v18 != 1)
  {
    a1[3] = &type metadata for AttemptedSendBatchState;
    a1[4] = sub_1000A62C8();
    sub_100004074(&qword_10039FE70, &qword_1002C3738);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1002C1670;
    *(v7 + 56) = &type metadata for MPOCMonitorManagerAction;
    v8 = sub_1000A63C4();
    result = v7;
    *(v7 + 32) = v17;
    *(v7 + 40) = 0;
    *(v7 + 96) = &type metadata for MPOCMonitorManagerAction;
    *(v7 + 104) = v8;
    *(v7 + 64) = v8;
    *(v7 + 72) = 0;
    *(v7 + 80) = 1;
    return result;
  }

  if (v17 > 4)
  {
    if (v17 <= 7)
    {
      if (v17 == 5)
      {
        a1[3] = &type metadata for AttemptedSendBatchState;
        a1[4] = sub_1000A62C8();
        sub_100004074(&qword_10039FE70, &qword_1002C3738);
        v13 = swift_allocObject();
        *(v13 + 16) = xmmword_1002C1660;
        *(v13 + 56) = &type metadata for MPOCMonitorManagerAction;
        v14 = sub_1000A63C4();
        result = v13;
        *(v13 + 64) = v14;
        *(v13 + 32) = 0;
        *(v13 + 40) = 1;
        return result;
      }

      if (v17 != 6)
      {
        a1[3] = &type metadata for AttemptedSendBatchState;
        a1[4] = sub_1000A62C8();
        sub_100004074(&qword_10039FE70, &qword_1002C3738);
        v3 = swift_allocObject();
        *(v3 + 16) = xmmword_1002C1670;
        *(v3 + 56) = &type metadata for MPOCMonitorManagerAction;
        v4 = sub_1000A63C4();
        result = v3;
        *(v3 + 32) = 4;
        *(v3 + 40) = 1;
        *(v3 + 96) = &type metadata for MPOCMonitorManagerAction;
LABEL_26:
        *(v3 + 104) = v4;
        *(v3 + 64) = v4;
        *(v3 + 72) = 0;
        goto LABEL_27;
      }

      goto LABEL_15;
    }

    if (v17 != 9)
    {
      a1[3] = &type metadata for StoredCompleteAttestationAttemptedSendBatchState;
      a1[4] = sub_1000A6370();
      sub_100004074(&qword_10039FE70, &qword_1002C3738);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_1002C1790;
      *(v9 + 56) = &type metadata for MPOCMonitorManagerAction;
      v10 = sub_1000A63C4();
      result = v9;
      *(v9 + 32) = 0;
      *(v9 + 40) = 1;
      *(v9 + 96) = &type metadata for MPOCMonitorManagerAction;
      *(v9 + 104) = v10;
      v11 = 4;
      goto LABEL_19;
    }

    a1[3] = &type metadata for RetriedSameBatchState;
    a1[4] = sub_1000A631C();
    *a1 = 1;
    return _swiftEmptyArrayStorage;
  }

  if (v17 <= 1)
  {
    if (v17)
    {
      a1[3] = &type metadata for AttemptedSendBatchState;
      a1[4] = sub_1000A62C8();
      sub_100004074(&qword_10039FE70, &qword_1002C3738);
      v3 = swift_allocObject();
      *(v3 + 16) = xmmword_1002C1670;
      *(v3 + 56) = &type metadata for MPOCMonitorManagerAction;
      v4 = sub_1000A63C4();
      result = v3;
      *(v3 + 32) = 7;
      *(v3 + 40) = 1;
      *(v3 + 96) = &type metadata for MPOCMonitorManagerAction;
      goto LABEL_26;
    }

    a1[3] = &type metadata for FinalState;
    v6 = sub_1000A6418();
    goto LABEL_9;
  }

  if (v17 != 2)
  {
    if (v17 != 3)
    {
      a1[3] = &type metadata for StoredCompleteAttestationAttemptedSendBatchState;
      a1[4] = sub_1000A6370();
      sub_100004074(&qword_10039FE70, &qword_1002C3738);
      v15 = swift_allocObject();
      *(v15 + 16) = xmmword_1002C1790;
      *(v15 + 56) = &type metadata for MPOCMonitorManagerAction;
      v16 = sub_1000A63C4();
      result = v15;
      *(v15 + 32) = 3;
      *(v15 + 40) = 1;
      *(v15 + 96) = &type metadata for MPOCMonitorManagerAction;
      *(v15 + 104) = v16;
      *(v15 + 64) = v16;
      *(v15 + 72) = 5;
      *(v15 + 80) = 1;
      *(v15 + 136) = &type metadata for MPOCMonitorManagerAction;
      *(v15 + 144) = v16;
      *(v15 + 112) = 0;
      *(v15 + 120) = 1;
      return result;
    }

LABEL_15:
    a1[3] = &type metadata for StoredCompleteAttestationAttemptedSendBatchState;
    a1[4] = sub_1000A6370();
    sub_100004074(&qword_10039FE70, &qword_1002C3738);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1002C1790;
    *(v9 + 56) = &type metadata for MPOCMonitorManagerAction;
    v10 = sub_1000A63C4();
    result = v9;
    *(v9 + 32) = 0;
    *(v9 + 40) = 1;
    *(v9 + 96) = &type metadata for MPOCMonitorManagerAction;
    *(v9 + 104) = v10;
    v11 = 6;
LABEL_19:
    *(v9 + 64) = v10;
    *(v9 + 72) = v11;
    *(v9 + 80) = 1;
    *(v9 + 136) = &type metadata for MPOCMonitorManagerAction;
    *(v9 + 144) = v10;
    *(v9 + 112) = 5;
    *(v9 + 120) = 1;
    return result;
  }

  a1[3] = &type metadata for StoredCompleteAttestationAttemptedSendBatchState;
  a1[4] = sub_1000A6370();
  sub_100004074(&qword_10039FE70, &qword_1002C3738);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1002C1670;
  *(v3 + 56) = &type metadata for MPOCMonitorManagerAction;
  v12 = sub_1000A63C4();
  result = v3;
  *(v3 + 32) = 0;
  *(v3 + 40) = 1;
  *(v3 + 96) = &type metadata for MPOCMonitorManagerAction;
  *(v3 + 104) = v12;
  *(v3 + 64) = v12;
  *(v3 + 72) = 5;
LABEL_27:
  *(v3 + 80) = 1;
  return result;
}

unint64_t sub_1000A624C(uint64_t a1)
{
  result = sub_1000A6274();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000A6274()
{
  result = qword_1003A1370;
  if (!qword_1003A1370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A1370);
  }

  return result;
}

unint64_t sub_1000A62C8()
{
  result = qword_1003A1380;
  if (!qword_1003A1380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A1380);
  }

  return result;
}

unint64_t sub_1000A631C()
{
  result = qword_1003A1388;
  if (!qword_1003A1388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A1388);
  }

  return result;
}

unint64_t sub_1000A6370()
{
  result = qword_1003A1390;
  if (!qword_1003A1390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A1390);
  }

  return result;
}

unint64_t sub_1000A63C4()
{
  result = qword_1003A1398;
  if (!qword_1003A1398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A1398);
  }

  return result;
}

unint64_t sub_1000A6418()
{
  result = qword_1003A13A0;
  if (!qword_1003A13A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A13A0);
  }

  return result;
}

void *sub_1000A648C(void *a1, uint64_t a2)
{
  sub_10000CCE4(a2, v15);
  sub_100004074(&qword_1003A1378, &unk_1002C5510);
  if (!swift_dynamicCast())
  {
    a1[3] = &type metadata for StoredCompleteAttestationAttemptedSendBatchState;
    v7 = sub_1000A6370();
LABEL_9:
    a1[4] = v7;
    return _swiftEmptyArrayStorage;
  }

  if (v14 != 1)
  {
    a1[3] = &type metadata for AttemptedSendBatchState;
    a1[4] = sub_1000A62C8();
    sub_100004074(&qword_10039FE70, &qword_1002C3738);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1002C1670;
    *(v8 + 56) = &type metadata for MPOCMonitorManagerAction;
    v9 = sub_1000A63C4();
    result = v8;
    *(v8 + 32) = v13;
    *(v8 + 40) = 0;
    *(v8 + 96) = &type metadata for MPOCMonitorManagerAction;
    *(v8 + 104) = v9;
    *(v8 + 64) = v9;
    *(v8 + 72) = 0;
    *(v8 + 80) = 1;
    return result;
  }

  if (v13 > 5)
  {
    if (v13 <= 7)
    {
      if (v13 != 6)
      {
        a1[3] = &type metadata for AttemptedSendBatchState;
        a1[4] = sub_1000A62C8();
        sub_100004074(&qword_10039FE70, &qword_1002C3738);
        v3 = swift_allocObject();
        *(v3 + 16) = xmmword_1002C1670;
        *(v3 + 56) = &type metadata for MPOCMonitorManagerAction;
        v4 = sub_1000A63C4();
        result = v3;
        v6 = 4;
        goto LABEL_22;
      }

      goto LABEL_18;
    }

    if (v13 != 9)
    {
LABEL_18:
      a1[3] = &type metadata for StoredCompleteAttestationAttemptedSendBatchState;
      v10 = sub_1000A6370();
      goto LABEL_19;
    }

    a1[3] = &type metadata for RetriedSameBatchState;
    a1[4] = sub_1000A631C();
    *a1 = 1;
    return _swiftEmptyArrayStorage;
  }

  if (v13 > 1)
  {
    if ((v13 - 2) >= 2)
    {
      if (v13 == 4)
      {
        a1[3] = &type metadata for StoredCompleteAttestationAttemptedSendBatchState;
        a1[4] = sub_1000A6370();
        sub_100004074(&qword_10039FE70, &qword_1002C3738);
        v3 = swift_allocObject();
        *(v3 + 16) = xmmword_1002C1670;
        *(v3 + 56) = &type metadata for MPOCMonitorManagerAction;
        v4 = sub_1000A63C4();
        result = v3;
        v6 = 3;
LABEL_22:
        *(v3 + 32) = v6;
        *(v3 + 40) = 1;
        *(v3 + 96) = &type metadata for MPOCMonitorManagerAction;
        goto LABEL_23;
      }

      a1[3] = &type metadata for AttemptedSendBatchState;
      v10 = sub_1000A62C8();
LABEL_19:
      a1[4] = v10;
      sub_100004074(&qword_10039FE70, &qword_1002C3738);
      v11 = swift_allocObject();
      *(v11 + 16) = xmmword_1002C1660;
      *(v11 + 56) = &type metadata for MPOCMonitorManagerAction;
      v12 = sub_1000A63C4();
      result = v11;
      *(v11 + 64) = v12;
      *(v11 + 32) = 0;
      *(v11 + 40) = 1;
      return result;
    }

    goto LABEL_18;
  }

  if (!v13)
  {
    a1[3] = &type metadata for FinalState;
    v7 = sub_1000A6418();
    goto LABEL_9;
  }

  a1[3] = &type metadata for AttemptedSendBatchState;
  a1[4] = sub_1000A62C8();
  sub_100004074(&qword_10039FE70, &qword_1002C3738);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1002C1670;
  *(v3 + 56) = &type metadata for MPOCMonitorManagerAction;
  v4 = sub_1000A63C4();
  result = v3;
  *(v3 + 32) = 7;
  *(v3 + 40) = 1;
  *(v3 + 96) = &type metadata for MPOCMonitorManagerAction;
LABEL_23:
  *(v3 + 104) = v4;
  *(v3 + 64) = v4;
  *(v3 + 72) = 0;
  *(v3 + 80) = 1;
  return result;
}

uint64_t sub_1000A67FC()
{
  sub_100004074(&qword_10039FE70, &qword_1002C3738);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1002C1670;
  *(v0 + 56) = &type metadata for MPOCMonitorManagerAction;
  v1 = sub_1000A63C4();
  *(v0 + 32) = 1;
  *(v0 + 40) = 1;
  *(v0 + 96) = &type metadata for MPOCMonitorManagerAction;
  *(v0 + 104) = v1;
  *(v0 + 64) = v1;
  *(v0 + 72) = 2;
  *(v0 + 80) = 1;
  return v0;
}

void *sub_1000A6898(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  sub_10000CCE4(a2, v21);
  sub_100004074(&qword_1003A1378, &unk_1002C5510);
  if (!swift_dynamicCast())
  {
    goto LABEL_16;
  }

  if (v20 != 1)
  {
    a1[3] = &type metadata for AttemptedSendBatchState;
    a1[4] = sub_1000A62C8();
    sub_100004074(&qword_10039FE70, &qword_1002C3738);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1002C1670;
    *(v8 + 56) = &type metadata for MPOCMonitorManagerAction;
    v9 = sub_1000A63C4();
    result = v8;
    *(v8 + 32) = v19;
    *(v8 + 40) = 0;
    *(v8 + 96) = &type metadata for MPOCMonitorManagerAction;
    *(v8 + 104) = v9;
    *(v8 + 64) = v9;
    *(v8 + 72) = 0;
    *(v8 + 80) = 1;
    return result;
  }

  if (v19 <= 4)
  {
    if (v19 > 1)
    {
      if (v19 == 2)
      {
        a1[3] = &type metadata for StoredCompleteAttestationAttemptedSendBatchState;
        a1[4] = sub_1000A6370();
        sub_100004074(&qword_10039FE70, &qword_1002C3738);
        v13 = swift_allocObject();
        *(v13 + 16) = xmmword_1002C1670;
        *(v13 + 56) = &type metadata for MPOCMonitorManagerAction;
        v14 = sub_1000A63C4();
        result = v13;
        *(v13 + 32) = 0;
        *(v13 + 40) = 1;
        *(v13 + 96) = &type metadata for MPOCMonitorManagerAction;
        *(v13 + 104) = v14;
        *(v13 + 64) = v14;
        *(v13 + 72) = 5;
        *(v13 + 80) = 1;
        return result;
      }

      if (v19 != 3)
      {
        a1[3] = &type metadata for StoredCompleteAttestationAttemptedSendBatchState;
        a1[4] = sub_1000A6370();
        sub_100004074(&qword_10039FE70, &qword_1002C3738);
        v17 = swift_allocObject();
        *(v17 + 16) = xmmword_1002C1790;
        *(v17 + 56) = &type metadata for MPOCMonitorManagerAction;
        v18 = sub_1000A63C4();
        result = v17;
        *(v17 + 32) = 3;
        *(v17 + 40) = 1;
        *(v17 + 96) = &type metadata for MPOCMonitorManagerAction;
        *(v17 + 104) = v18;
        *(v17 + 64) = v18;
        *(v17 + 72) = 5;
        *(v17 + 80) = 1;
        *(v17 + 136) = &type metadata for MPOCMonitorManagerAction;
        *(v17 + 144) = v18;
        *(v17 + 112) = 0;
        *(v17 + 120) = 1;
        return result;
      }

      goto LABEL_12;
    }

    if (v19)
    {
      a1[3] = &type metadata for AttemptedSendBatchState;
      a1[4] = sub_1000A62C8();
      sub_100004074(&qword_10039FE70, &qword_1002C3738);
      v5 = swift_allocObject();
      *(v5 + 16) = xmmword_1002C1670;
      *(v5 + 56) = &type metadata for MPOCMonitorManagerAction;
      v6 = sub_1000A63C4();
      result = v5;
      *(v5 + 32) = 7;
      *(v5 + 40) = 1;
      *(v5 + 96) = &type metadata for MPOCMonitorManagerAction;
      goto LABEL_26;
    }

    goto LABEL_21;
  }

  if (v19 > 7)
  {
    if (v19 != 9)
    {
      a1[3] = &type metadata for StoredCompleteAttestationAttemptedSendBatchState;
      a1[4] = sub_1000A6370();
      sub_100004074(&qword_10039FE70, &qword_1002C3738);
      v10 = swift_allocObject();
      *(v10 + 16) = xmmword_1002C1790;
      *(v10 + 56) = &type metadata for MPOCMonitorManagerAction;
      v11 = sub_1000A63C4();
      result = v10;
      *(v10 + 32) = 0;
      *(v10 + 40) = 1;
      *(v10 + 96) = &type metadata for MPOCMonitorManagerAction;
      *(v10 + 104) = v11;
      v12 = 4;
      goto LABEL_19;
    }

    if (a3 <= 0)
    {
      ++a3;
LABEL_16:
      a1[3] = &type metadata for RetriedSameBatchState;
      a1[4] = sub_1000A631C();
      *a1 = a3;
      return _swiftEmptyArrayStorage;
    }

LABEL_21:
    a1[3] = &type metadata for FinalState;
    a1[4] = sub_1000A6418();
    return _swiftEmptyArrayStorage;
  }

  if (v19 == 5)
  {
    a1[3] = &type metadata for AttemptedSendBatchState;
    a1[4] = sub_1000A62C8();
    sub_100004074(&qword_10039FE70, &qword_1002C3738);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1002C1660;
    *(v15 + 56) = &type metadata for MPOCMonitorManagerAction;
    v16 = sub_1000A63C4();
    result = v15;
    *(v15 + 64) = v16;
    *(v15 + 32) = 0;
    *(v15 + 40) = 1;
    return result;
  }

  if (v19 == 6)
  {
LABEL_12:
    a1[3] = &type metadata for StoredCompleteAttestationAttemptedSendBatchState;
    a1[4] = sub_1000A6370();
    sub_100004074(&qword_10039FE70, &qword_1002C3738);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1002C1790;
    *(v10 + 56) = &type metadata for MPOCMonitorManagerAction;
    v11 = sub_1000A63C4();
    result = v10;
    *(v10 + 32) = 0;
    *(v10 + 40) = 1;
    *(v10 + 96) = &type metadata for MPOCMonitorManagerAction;
    *(v10 + 104) = v11;
    v12 = 6;
LABEL_19:
    *(v10 + 64) = v11;
    *(v10 + 72) = v12;
    *(v10 + 80) = 1;
    *(v10 + 136) = &type metadata for MPOCMonitorManagerAction;
    *(v10 + 144) = v11;
    *(v10 + 112) = 5;
    *(v10 + 120) = 1;
    return result;
  }

  a1[3] = &type metadata for AttemptedSendBatchState;
  a1[4] = sub_1000A62C8();
  sub_100004074(&qword_10039FE70, &qword_1002C3738);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1002C1670;
  *(v5 + 56) = &type metadata for MPOCMonitorManagerAction;
  v6 = sub_1000A63C4();
  result = v5;
  *(v5 + 32) = 4;
  *(v5 + 40) = 1;
  *(v5 + 96) = &type metadata for MPOCMonitorManagerAction;
LABEL_26:
  *(v5 + 104) = v6;
  *(v5 + 64) = v6;
  *(v5 + 72) = 0;
  *(v5 + 80) = 1;
  return result;
}

uint64_t sub_1000A6D94()
{
  sub_100004074(&qword_10039FE70, &qword_1002C3738);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1002C1660;
  *(v0 + 56) = &type metadata for MPOCMonitorManagerAction;
  *(v0 + 64) = sub_1000A63C4();
  *(v0 + 32) = 2;
  *(v0 + 40) = 1;
  return v0;
}

unint64_t sub_1000A6E2C(uint64_t a1)
{
  result = sub_1000A6E54();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000A6E54()
{
  result = qword_1003A13A8;
  if (!qword_1003A13A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A13A8);
  }

  return result;
}

unint64_t sub_1000A6EA8(uint64_t a1)
{
  result = sub_1000A6ED0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000A6ED0()
{
  result = qword_1003A13B0;
  if (!qword_1003A13B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A13B0);
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for MPOCMonitorManagerAction(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for MPOCMonitorManagerAction(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for MPOCMonitorManagerAction(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 9) = v3;
  return result;
}

uint64_t sub_1000A6F8C(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000A6FA8(uint64_t result, int a2)
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

unint64_t sub_1000A6FF4(uint64_t a1)
{
  result = sub_1000A701C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000A701C()
{
  result = qword_1003A13B8;
  if (!qword_1003A13B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A13B8);
  }

  return result;
}

BOOL sub_1000A7070(uint64_t a1, char a2, unint64_t a3, char a4)
{
  if ((a2 & 1) == 0)
  {
    if ((a4 & 1) == 0)
    {
      return *&a1 == *&a3;
    }

    return 0;
  }

  if (a1 > 3)
  {
    if (a1 > 5)
    {
      if (a1 == 6)
      {
        return (a4 & 1) != 0 && a3 == 6;
      }

      return (a4 & 1) != 0 && a3 > 6;
    }

    else
    {
      if (a1 == 4)
      {
        return (a4 & 1) != 0 && a3 == 4;
      }

      return (a4 & 1) != 0 && a3 == 5;
    }
  }

  else
  {
    if (a1 <= 1)
    {
      if (*&a1 == 0.0)
      {
        return (a4 & 1) != 0 && *&a3 == 0.0;
      }

      return (a4 & 1) != 0 && a3 == 1;
    }

    if (a1 == 2)
    {
      return (a4 & 1) != 0 && a3 == 2;
    }

    return (a4 & 1) != 0 && a3 == 3;
  }
}

uint64_t sub_1000A7168(uint64_t a1, char a2)
{
  if (a2)
  {
    if (a1 <= 4)
    {
      v9 = 0x48435441425F4F4ELL;
      v10 = 0xD000000000000015;
      v11 = 0x5F44494C41564E49;
      if (a1 == 3)
      {
        v11 = 0xD000000000000012;
      }

      if (a1 != 2)
      {
        v10 = v11;
      }

      if (a1)
      {
        v9 = 0xD000000000000012;
      }

      if (a1 <= 1)
      {
        return v9;
      }

      else
      {
        return v10;
      }
    }

    else
    {
      v2 = 0xD000000000000010;
      v3 = 0x455F524556524553;
      if (a1 != 9)
      {
        v3 = 0x555145525F444142;
      }

      if (a1 != 8)
      {
        v2 = v3;
      }

      v4 = 0x455F544E45494C43;
      v5 = 0xD000000000000010;
      if (a1 != 6)
      {
        v5 = 0x455F454349564544;
      }

      if (a1 != 5)
      {
        v4 = v5;
      }

      if (a1 <= 7)
      {
        return v4;
      }

      else
      {
        return v2;
      }
    }
  }

  else
  {
    _StringGuts.grow(_:)(23);
    v7._countAndFlagsBits = 0xD000000000000013;
    v7._object = 0x800000010034AC60;
    String.append(_:)(v7);
    Double.write<A>(to:)();
    v8._countAndFlagsBits = 29481;
    v8._object = 0xE200000000000000;
    String.append(_:)(v8);
    return 0;
  }
}

unint64_t sub_1000A73D0(uint64_t a1)
{
  result = sub_1000A73F8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000A73F8()
{
  result = qword_1003A13C0;
  if (!qword_1003A13C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A13C0);
  }

  return result;
}

BOOL sub_1000A744C(uint64_t a1, char a2, unint64_t a3, char a4)
{
  if ((a2 & 1) == 0)
  {
    if ((a4 & 1) == 0)
    {
      return *&a1 == *&a3;
    }

    return 0;
  }

  if (a1 <= 4)
  {
    if (a1 <= 1)
    {
      if (*&a1 == 0.0)
      {
        if ((a4 & 1) != 0 && *&a3 == 0.0)
        {
          return 1;
        }
      }

      else if ((a4 & 1) != 0 && a3 == 1)
      {
        return 1;
      }
    }

    else if (a1 == 2)
    {
      if ((a4 & 1) != 0 && a3 == 2)
      {
        return 1;
      }
    }

    else if (a1 == 3)
    {
      if ((a4 & 1) != 0 && a3 == 3)
      {
        return 1;
      }
    }

    else if ((a4 & 1) != 0 && a3 == 4)
    {
      return 1;
    }

    return 0;
  }

  if (a1 <= 7)
  {
    if (a1 == 5)
    {
      if ((a4 & 1) != 0 && a3 == 5)
      {
        return 1;
      }
    }

    else
    {
      if (a1 == 6)
      {
        return (a4 & 1) != 0 && a3 == 6;
      }

      if ((a4 & 1) != 0 && a3 == 7)
      {
        return 1;
      }
    }

    return 0;
  }

  if (a1 == 8)
  {
    return (a4 & 1) != 0 && a3 == 8;
  }

  if (a1 == 9)
  {
    return (a4 & 1) != 0 && a3 == 9;
  }

  return (a4 & 1) != 0 && a3 > 9;
}

unint64_t sub_1000A7598(uint64_t a1, char a2)
{
  if (a2)
  {
    result = 0x4D52455020544F4ELL;
    switch(a1)
    {
      case 1:
      case 2:
        result = 0xD000000000000014;
        break;
      case 3:
      case 10:
        result = 0xD000000000000013;
        break;
      case 4:
        result = 0x4520524556524553;
        break;
      case 5:
        result = 0xD000000000000018;
        break;
      case 6:
        result = 0x5551455220444142;
        break;
      case 7:
        result = 0x4554544120544F4ELL;
        break;
      case 8:
        result = 0xD000000000000010;
        break;
      case 9:
        result = 0xD000000000000010;
        break;
      case 11:
        result = 0xD000000000000012;
        break;
      case 12:
      case 14:
        result = 0xD000000000000011;
        break;
      case 13:
        result = 0x204C4147454C4C49;
        break;
      default:
        return result;
    }
  }

  else
  {
    _StringGuts.grow(_:)(16);
    v4._countAndFlagsBits = 0x4220454349564544;
    v4._object = 0xEE002044454E4E41;
    String.append(_:)(v4);
    Double.write<A>(to:)();
    return 0;
  }

  return result;
}

BOOL sub_1000A7848(uint64_t a1, char a2, unint64_t a3, char a4)
{
  if (a2)
  {
    switch(a1)
    {
      case 1:
        if ((a4 & 1) == 0 || a3 != 1)
        {
          return 0;
        }

        result = 1;
        break;
      case 2:
        if ((a4 & 1) == 0 || a3 != 2)
        {
          return 0;
        }

        result = 1;
        break;
      case 3:
        if ((a4 & 1) == 0 || a3 != 3)
        {
          return 0;
        }

        result = 1;
        break;
      case 4:
        if ((a4 & 1) == 0 || a3 != 4)
        {
          return 0;
        }

        result = 1;
        break;
      case 5:
        if ((a4 & 1) == 0 || a3 != 5)
        {
          return 0;
        }

        result = 1;
        break;
      case 6:
        if ((a4 & 1) == 0 || a3 != 6)
        {
          return 0;
        }

        result = 1;
        break;
      case 7:
        if ((a4 & 1) == 0 || a3 != 7)
        {
          return 0;
        }

        result = 1;
        break;
      case 8:
        if ((a4 & 1) == 0 || a3 != 8)
        {
          return 0;
        }

        result = 1;
        break;
      case 9:
        if ((a4 & 1) == 0 || a3 != 9)
        {
          return 0;
        }

        result = 1;
        break;
      case 10:
        if ((a4 & 1) == 0 || a3 != 10)
        {
          return 0;
        }

        result = 1;
        break;
      case 11:
        if ((a4 & 1) == 0 || a3 != 11)
        {
          return 0;
        }

        result = 1;
        break;
      case 12:
        if ((a4 & 1) == 0 || a3 != 12)
        {
          return 0;
        }

        result = 1;
        break;
      case 13:
        if ((a4 & 1) == 0 || a3 != 13)
        {
          return 0;
        }

        result = 1;
        break;
      case 14:
        if ((a4 & 1) == 0 || a3 <= 0xD)
        {
          return 0;
        }

        result = 1;
        break;
      default:
        if ((a4 & 1) == 0 || *&a3 != 0.0)
        {
          return 0;
        }

        result = 1;
        break;
    }
  }

  else
  {
    return (a4 & 1) == 0 && *&a1 == *&a3;
  }

  return result;
}

uint64_t sub_1000A79F8(uint64_t result, char a2)
{
  if (a2)
  {
    return qword_1002C57C0[result];
  }

  return result;
}

uint64_t sub_1000A7A20()
{
  v0 = type metadata accessor for Logger();
  sub_100003FD8(v0, qword_1003A13C8);
  sub_10000403C(v0, qword_1003A13C8);
  sub_10000411C(0, &qword_1003A26E0, SPRLogger_ptr);
  return static SPRLogger.monitor.getter();
}

uint64_t sub_1000A7A8C()
{
  v0 = type metadata accessor for OSSignposter();
  sub_100003FD8(v0, qword_1003A13E0);
  v1 = sub_10000403C(v0, qword_1003A13E0);
  if (qword_10039D748 != -1)
  {
    swift_once();
  }

  v2 = sub_10000403C(v0, qword_1003A6EF0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1000A7B54()
{
  v0 = type metadata accessor for String.Encoding();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  static String.Encoding.utf8.getter();
  v4 = String.data(using:allowLossyConversion:)();
  v6 = v5;
  result = (*(v1 + 8))(v3, v0);
  if (v6 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    qword_1003A6B88 = v4;
    unk_1003A6B90 = v6;
  }

  return result;
}

uint64_t sub_1000A7C64()
{
  v0 = type metadata accessor for String.Encoding();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  static String.Encoding.utf8.getter();
  v4 = String.data(using:allowLossyConversion:)();
  v6 = v5;
  result = (*(v1 + 8))(v3, v0);
  if (v6 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    qword_1003A6B98 = v4;
    unk_1003A6BA0 = v6;
  }

  return result;
}

unint64_t sub_1000A7D74()
{
  _StringGuts.grow(_:)(48);

  if (*(v0 + 48))
  {
    v1 = 0x656E696C66666FLL;
  }

  else
  {
    v1 = 0x656E696C6E6FLL;
  }

  if (*(v0 + 48))
  {
    v2 = 0xE700000000000000;
  }

  else
  {
    v2 = 0xE600000000000000;
  }

  v3 = v2;
  String.append(_:)(*&v1);

  v4._countAndFlagsBits = 0x657472617473202CLL;
  v4._object = 0xEB00000000203A64;
  String.append(_:)(v4);
  if (*(v0 + 16))
  {
    v5 = 1702195828;
  }

  else
  {
    v5 = 0x65736C6166;
  }

  if (*(v0 + 16))
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  v7 = v6;
  String.append(_:)(*&v5);

  v8._countAndFlagsBits = 93;
  v8._object = 0xE100000000000000;
  String.append(_:)(v8);
  return 0xD000000000000020;
}

void *sub_1000A7E9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for DispatchQoS();
  v9 = *(v32 - 8);
  __chkstk_darwin(v32);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10039D4D0 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_10000403C(v12, qword_1003A13C8);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v31 = v5;
    v16 = v15;
    v17 = swift_slowAlloc();
    v30 = v6;
    aBlock[0] = v17;
    *v16 = 136315394;
    v18 = _typeName(_:qualified:)();
    v20 = sub_100008F6C(v18, v19, aBlock);

    *(v16 + 4) = v20;
    *(v16 + 12) = 2080;
    v21 = showFunction(signature:_:)(0x74696E696564, 0xE600000000000000, _swiftEmptyArrayStorage);
    v23 = sub_100008F6C(v21, v22, aBlock);

    *(v16 + 14) = v23;
    _os_log_impl(&_mh_execute_header, v13, v14, "%s.%s", v16, 0x16u);
    swift_arrayDestroy();
    v6 = v30;

    v5 = v31;
  }

  ObjectType = swift_getObjectType();
  aBlock[4] = nullsub_1;
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100003974;
  aBlock[3] = &unk_100382840;
  v25 = _Block_copy(aBlock);
  swift_unknownObjectRetain();
  j___s8Dispatch0A3QoSV11unspecifiedACvgZ(ObjectType);
  sub_1000039BC(ObjectType, v26, v27);
  OS_dispatch_source.setEventHandler(qos:flags:handler:)();
  _Block_release(v25);
  swift_unknownObjectRelease();
  (*(v6 + 8))(v8, v5);
  (*(v9 + 8))(v11, v32);
  swift_getObjectType();
  swift_unknownObjectRetain();
  OS_dispatch_source.cancel()();
  swift_unknownObjectRelease();
  if ((*(v4 + 16) & 1) == 0)
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    OS_dispatch_source.resume()();
    swift_unknownObjectRelease();
  }

  swift_unknownObjectRelease();

  sub_10000959C((v4 + 72));
  sub_10000959C((v4 + 112));
  sub_10000959C((v4 + 152));
  swift_unknownObjectRelease();
  sub_10000959C((v4 + 208));
  sub_10000959C((v4 + 248));
  sub_10000959C((v4 + 288));

  sub_10000959C((v4 + 336));
  swift_unknownObjectRelease();
  return v4;
}

uint64_t sub_1000A8318(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1000A7E9C(a1, a2, a3);

  return swift_deallocClassInstance();
}

void sub_1000A83EC(uint64_t a1, uint64_t a2)
{
  if (qword_10039D4D0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000403C(v2, qword_1003A13C8);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v5 = 136315394;
    v6 = _typeName(_:qualified:)();
    v8 = sub_100008F6C(v6, v7, &v12);

    *(v5 + 4) = v8;
    *(v5 + 12) = 2080;
    v9 = showFunction(signature:_:)(0x73676F4C646E6573, 0xEA00000000002928, _swiftEmptyArrayStorage);
    v11 = sub_100008F6C(v9, v10, &v12);

    *(v5 + 14) = v11;
    _os_log_impl(&_mh_execute_header, v3, v4, "%s.%s", v5, 0x16u);
    swift_arrayDestroy();
  }

  sub_1000A8878();
}

uint64_t sub_1000A85A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DispatchQoS();
  v11 = *(v18 - 8);
  __chkstk_darwin(v18);
  v13 = v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17[1] = *(v4 + 24);
  v14 = swift_allocObject();
  v14[2] = v4;
  v14[3] = a1;
  v14[4] = a2;
  aBlock[4] = sub_1000B42DC;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100003974;
  aBlock[3] = &unk_100382818;
  v15 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v19 = _swiftEmptyArrayStorage;
  sub_1000B4F88(&qword_10039E2A0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100004074(&qword_10039DD40, &qword_1002BFEC0);
  sub_10000BEC0(&qword_10039E2B0, &qword_10039DD40, &qword_1002BFEC0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v15);
  (*(v8 + 8))(v10, v7);
  (*(v11 + 8))(v13, v18);
}

void sub_1000A8878()
{
  v2 = v0;
  v3 = type metadata accessor for DispatchTimeInterval();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v33 - v8;
  v10 = type metadata accessor for DispatchTime();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v12);
  v17 = &v33 - v16;
  if (*(v2 + 48))
  {
    if (qword_10039D4D0 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_10000403C(v18, qword_1003A13C8);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v19, v20, "Cannot send logs when device is not online.", v21, 2u);
    }

    sub_1000B3E4C();
    swift_allocError();
    *v22 = 0;
    *(v22 + 8) = 1;
    swift_willThrow();
    return;
  }

  v36 = v4;
  v37 = v15;
  sub_1000A8D1C(v15);
  if (v1)
  {
    v40 = v1;
    swift_errorRetain();
    sub_100004074(&unk_1003A3C00, &unk_1002C16C0);
    if (swift_dynamicCast())
    {

      v23 = v38;
      v24 = v39;
      sub_100025A34(&off_10037E690);
      sub_1000B3E4C();
      swift_allocError();
      *v25 = v23;
      *(v25 + 8) = v24;
    }

    else
    {

      v40 = v1;
      swift_errorRetain();
      if (!swift_dynamicCast())
      {
LABEL_16:

        return;
      }

      v27 = v38;
      v28 = v39;
      sub_100025A34(&off_10037E6B8);
      v29 = sub_1000A79F8(v27, v28);
      v31 = v30;
      sub_1000B3E4C();
      swift_allocError();
      *v32 = v29;
      *(v32 + 8) = v31 & 1;
    }

    swift_willThrow();
    goto LABEL_16;
  }

  if (*(v2 + 16) == 1)
  {
    v35 = *(v2 + 32);
    swift_getObjectType();
    static DispatchTime.now()();
    + infix(_:_:)();
    v34 = *(v11 + 8);
    v34(v14, v37);
    sub_100146FDC(v9);
    sub_100147050(v7);
    OS_dispatch_source_timer.schedule(deadline:repeating:leeway:)();
    v26 = *(v36 + 8);
    v26(v7, v3);
    v26(v9, v3);
    v34(v17, v37);
  }

  sub_100025A34(&off_10037E668);
}

void sub_1000A8D1C(uint64_t a1)
{
  __chkstk_darwin(a1);
  v372 = v2;
  v3 = v1;
  v323 = *v1;
  v332 = type metadata accessor for OSSignpostError();
  v366 = *(v332 - 8);
  __chkstk_darwin(v332);
  v331 = &v320 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v352 = type metadata accessor for OSSignpostID();
  v365 = *(v352 - 8);
  v5 = __chkstk_darwin(v352);
  v343 = &v320 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v337 = &v320 - v8;
  __chkstk_darwin(v7);
  v351 = &v320 - v9;
  v10 = type metadata accessor for TLV();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v354 = &v320 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for MPOCMonitorBatch(0);
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v346 = &v320 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v350 = &v320 - v18;
  __chkstk_darwin(v17);
  v329 = &v320 - v19;
  v20 = sub_100004074(&unk_10039E210, &unk_1002C65B0);
  v21 = __chkstk_darwin(v20 - 8);
  v349 = &v320 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v21);
  v328 = &v320 - v24;
  __chkstk_darwin(v23);
  v26 = &v320 - v25;
  v27 = sub_100004074(&qword_1003A1640, &qword_1002C5980);
  v28 = __chkstk_darwin(v27 - 8);
  v348 = &v320 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __chkstk_darwin(v28);
  v347 = &v320 - v31;
  v32 = __chkstk_darwin(v30);
  v335 = &v320 - v33;
  v34 = __chkstk_darwin(v32);
  v373 = &v320 - v35;
  __chkstk_darwin(v34);
  v37 = (&v320 - v36);
  v358 = v14;
  v38 = *(v14 + 56);
  v360 = v13;
  v38(&v320 - v36, 1, 1, v13);
  v361 = v11;
  isa = v11[7].isa;
  v359 = v26;
  v369 = v10;
  v344 = isa;
  v345 = v11 + 7;
  isa(v26, 1, 1, v10);
  sub_1000B4034(v408);
  sub_1000B3E14(v409);
  memcpy(v401, v409, sizeof(v401));
  countAndFlagsBits = v410;
  v41 = v411;
  v363 = v412;
  v400 = v413;
  v370 = v3;
  object = v3[5];
  v43 = *(object + 56);
  os_unfair_lock_lock((v43 + 56));
  v44 = v372;
  sub_1000B406C((v43 + 16), v399);
  if (v44)
  {
    os_unfair_lock_unlock((v43 + 56));
    __break(1u);
    return;
  }

  v367 = v41;
  v368 = 0;
  os_unfair_lock_unlock((v43 + 56));
  v372 = v399[0];
  if (qword_10039D4D0 != -1)
  {
LABEL_228:
    swift_once();
  }

  v45 = type metadata accessor for Logger();
  v46 = sub_10000403C(v45, qword_1003A13C8);

  v371 = v46;
  v47 = Logger.logObject.getter();
  v48 = static os_log_type_t.default.getter();

  v49 = os_log_type_enabled(v47, v48);
  v362 = v37;
  v336 = object;
  v364 = countAndFlagsBits;
  if (v49)
  {
    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v398[0] = v51;
    *v50 = 136315138;
    v52 = *(object + 56);
    os_unfair_lock_lock(v52 + 14);
    sub_10000CCE4(&v52[4], v399);
    os_unfair_lock_unlock(v52 + 14);
    v53 = v399[3];
    v54 = v399[4];
    sub_10000BE18(v399, v399[3]);
    v55 = (*(v54 + 32))(v53, v54);
    v57 = v56;
    sub_10000959C(v399);
    v58 = sub_100008F6C(v55, v57, v398);

    *(v50 + 4) = v58;
    _os_log_impl(&_mh_execute_header, v47, v48, "MonitorManager is at the %s state", v50, 0xCu);
    sub_10000959C(v51);

    v37 = v362;
  }

  v59 = v370[29];
  v60 = v370[30];
  sub_10000BE18(v370 + 26, v59);
  v61 = v368;
  v62 = (*(v60 + 24))(v59, v60);
  if (v61)
  {

    swift_errorRetain();
    v63 = Logger.logObject.getter();
    v64 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      *v65 = 138412290;
      swift_errorRetain();
      v67 = _swift_stdlib_bridgeErrorToNSError();
      *(v65 + 4) = v67;
      *v66 = v67;
      _os_log_impl(&_mh_execute_header, v63, v64, "Could not read the monitoring file %@.\nAttempting to remove the stored files.", v65, 0xCu);
      sub_10000BD44(v66, &unk_10039E220, &qword_1002C3D60);
    }

    v68 = v370;
    v69 = v370[29];
    v70 = v370[30];
    sub_10000BE18(v370 + 26, v69);
    (*(v70 + 40))(v69, v70);
    v71 = v367;
    v72 = sub_100183EFC(_swiftEmptyArrayStorage);
    sub_10000BE18(v68 + 36, v68[39]);
    sub_100033A6C(206);
    v74 = v73;
    v75 = v68[29];
    v76 = v68[30];
    sub_10000BE18(v68 + 26, v75);
    (*(v76 + 8))(4326145, v74, v72, v75, v76);

    sub_1000B3E4C();
    swift_allocError();
    *v276 = 11;
    *(v276 + 8) = 1;
    swift_willThrow();

    sub_10000BD44(v359, &unk_10039E210, &unk_1002C65B0);
    sub_10000BD44(v362, &qword_1003A1640, &qword_1002C5980);
    v277 = v71;
LABEL_191:
    memcpy(v399, v401, 0x110uLL);
    v399[34] = v364;
    v399[35] = v277;
    LOBYTE(v399[36]) = v363;
    BYTE1(v399[36]) = v400;
    sub_10000BD44(v399, &qword_1003A1620, &unk_1002C5960);
    return;
  }

  v77 = v62;
  v368 = 0;
  v78 = Logger.logObject.getter();
  v79 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v78, v79))
  {
    v80 = swift_slowAlloc();
    *v80 = 134217984;
    *(v80 + 4) = v77;
    _os_log_impl(&_mh_execute_header, v78, v79, "There are %ld batch(s) in the monitoring file.", v80, 0xCu);
  }

  v81 = v372;
  if (!*(v372 + 16))
  {

    memcpy(v399, v408, sizeof(v399));
    v260 = v367;
LABEL_188:
    v278 = Logger.logObject.getter();
    v279 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v278, v279))
    {
      v280 = swift_slowAlloc();
      *v280 = 0;
      _os_log_impl(&_mh_execute_header, v278, v279, "No monitoring events to send.", v280, 2u);
    }

    sub_1000B3E4C();
    swift_allocError();
    *v281 = 1;
    *(v281 + 8) = 1;
    swift_willThrow();
    sub_10000BD44(v399, &qword_1003A1648, &qword_1002C5988);
    sub_10000BD44(v359, &unk_10039E210, &unk_1002C65B0);
    sub_10000BD44(v37, &qword_1003A1640, &qword_1002C5980);
    v277 = v260;
    goto LABEL_191;
  }

  memcpy(v398, v408, sizeof(v398));
  v353 = 0;
  v358 += 6;
  v327 = v361 + 4;
  v326 = (v365 + 16);
  v341 = (v365 + 8);
  v342 = v361 + 6;
  v322 = (v366 + 11);
  v321 = enum case for OSSignpostError.doubleEnd(_:);
  v320 = (v366 + 1);
  v325 = v361 + 1;
  v339 = v77 + 5;
  v83 = __OFADD__(v77, 5);
  v340 = v83;
  countAndFlagsBits = *(v372 + 16);
  *&v82 = 138412290;
  v330 = v82;
  *&v82 = 136315138;
  v333 = v82;
  v334 = _swiftEmptyArrayStorage;
  v37 = v367;
  v84 = v369;
  v85 = v373;
  if (!countAndFlagsBits)
  {

    memcpy(v397, v398, sizeof(v397));
    v81 = _swiftEmptyArrayStorage;
    countAndFlagsBits = _swiftEmptyArrayStorage[2];
    if (!countAndFlagsBits)
    {
      goto LABEL_178;
    }

LABEL_176:
    memcpy(v398, v397, sizeof(v398));
  }

  memcpy(v396, v398, sizeof(v396));
  if (!v81[2])
  {
LABEL_186:
    __break(1u);
LABEL_187:
    v260 = v37;

    memcpy(v399, v397, sizeof(v399));
    v37 = v362;
    goto LABEL_188;
  }

  v86 = 0;
  v356 = 0;
  v357 = 0;
  object = (v81 + 4);
  LODWORD(v361) = 1;
  v372 = v81;
  v365 = countAndFlagsBits;
  v366 = v81 + 4;
  while (1)
  {
    sub_10000CCE4(object + 40 * v86, &v394);
    sub_100004074(&qword_10039FE68, &qword_1002C3730);
    if (!swift_dynamicCast())
    {
      v88 = Logger.logObject.getter();
      v89 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v88, v89))
      {
        v90 = swift_slowAlloc();
        *v90 = 0;
        v91 = v89;
        v92 = v88;
        v93 = "Invalid action";
        goto LABEL_27;
      }

LABEL_28:

      memcpy(v395, v396, sizeof(v395));
      v81 = v372;
      goto LABEL_31;
    }

    if (LOBYTE(v393[1]) != 1)
    {
      sub_1000B2B84(*v393);
LABEL_30:
      memcpy(v395, v396, sizeof(v395));
      goto LABEL_31;
    }

    if (v393[0] <= 3)
    {
      if (v393[0] <= 1)
      {
        if (v393[0])
        {
          if (v340)
          {
            __break(1u);
LABEL_226:
            __break(1u);
LABEL_227:
            __break(1u);
            goto LABEL_228;
          }

          if (v353 >= v339)
          {
            v180 = v359;
            sub_10000BD44(v359, &unk_10039E210, &unk_1002C65B0);
            v344(v180, 1, 1, v84);
            goto LABEL_30;
          }

          v367 = v37;
          v98 = v362;
          v99 = v370[29];
          v100 = v370[30];
          sub_10000BE18(v370 + 26, v99);
          v101 = v368;
          (*(v100 + 16))(v99, v100);
          v368 = v101;
          if (v101)
          {

            swift_errorRetain();
            v282 = Logger.logObject.getter();
            v283 = static os_log_type_t.info.getter();

            if (os_log_type_enabled(v282, v283))
            {
              v284 = swift_slowAlloc();
              v285 = swift_slowAlloc();
              *v284 = v330;
              swift_errorRetain();
              v286 = _swift_stdlib_bridgeErrorToNSError();
              *(v284 + 4) = v286;
              *v285 = v286;
              _os_log_impl(&_mh_execute_header, v282, v283, "Could not readBatch from store: %@.\nAttempting to remove the stored files.", v284, 0xCu);
              sub_10000BD44(v285, &unk_10039E220, &qword_1002C3D60);
            }

            v287 = v370;
            v288 = v370[29];
            v289 = v370[30];
            sub_10000BE18(v370 + 26, v288);
            (*(v289 + 40))(v288, v289);
            v290 = sub_100183EFC(_swiftEmptyArrayStorage);
            sub_10000BE18(v287 + 36, v287[39]);
            sub_100033A6C(206);
            v292 = v291;
            v293 = v287[29];
            v294 = v287[30];
            sub_10000BE18(v287 + 26, v293);
            (*(v294 + 8))(4326145, v292, v290, v293, v294);

            sub_1000B3E4C();
            swift_allocError();
            *v319 = 11;
            *(v319 + 8) = 1;
            swift_willThrow();

            sub_10000BD44(v396, &qword_1003A1648, &qword_1002C5988);
            sub_10000BD44(v359, &unk_10039E210, &unk_1002C65B0);
            sub_10000BD44(v362, &qword_1003A1640, &qword_1002C5980);
            goto LABEL_223;
          }

          sub_10000BD44(v98, &qword_1003A1640, &qword_1002C5980);
          sub_1000829AC(v85, v98, &qword_1003A1640, &qword_1002C5980);
          v102 = v335;
          sub_100065074(v98, v335, &qword_1003A1640, &qword_1002C5980);
          if ((*v358)(v102, 1, v360) == 1)
          {
            v103 = v359;
            sub_10000BD44(v359, &unk_10039E210, &unk_1002C65B0);
            sub_10000BD44(v102, &qword_1003A1640, &qword_1002C5980);
            v84 = v369;
            v344(v103, 1, 1, v369);
          }

          else
          {
            v188 = v102;
            v189 = v329;
            sub_1000B4088(v188, v329);
            v190 = v328;
            v191 = v368;
            sub_1000ACE38(v189, v328);
            v368 = v191;
            v84 = v369;
            if (v191)
            {

              swift_errorRetain();
              v305 = Logger.logObject.getter();
              v306 = static os_log_type_t.error.getter();

              if (os_log_type_enabled(v305, v306))
              {
                v307 = swift_slowAlloc();
                v308 = swift_slowAlloc();
                v373 = swift_slowAlloc();
                v393[0] = v373;
                *v307 = 136315650;
                v309 = _typeName(_:qualified:)();
                v311 = sub_100008F6C(v309, v310, v393);
                v98 = v362;

                *(v307 + 4) = v311;
                v277 = v367;
                *(v307 + 12) = 2080;
                *(v307 + 14) = sub_100008F6C(0xD000000000000014, 0x800000010034B120, v393);
                *(v307 + 22) = 2112;
                swift_errorRetain();
                v312 = _swift_stdlib_bridgeErrorToNSError();
                *(v307 + 24) = v312;
                *v308 = v312;
                _os_log_impl(&_mh_execute_header, v305, v306, "%s.%s: Could not create request payload: %@", v307, 0x20u);
                sub_10000BD44(v308, &unk_10039E220, &qword_1002C3D60);

                swift_arrayDestroy();

                v313 = v329;
              }

              else
              {

                v313 = v329;
                v277 = v367;
              }

              sub_1000B3E4C();
              swift_allocError();
              *v314 = 3;
              *(v314 + 8) = 1;
              swift_willThrow();

              sub_10000BD44(v396, &qword_1003A1648, &qword_1002C5988);
              sub_1000B40EC(v313);
              sub_10000BD44(v359, &unk_10039E210, &unk_1002C65B0);
              sub_10000BD44(v98, &qword_1003A1640, &qword_1002C5980);
              goto LABEL_191;
            }

            ++v353;
            sub_1000B40EC(v189);
            v192 = v359;
            sub_10000BD44(v359, &unk_10039E210, &unk_1002C65B0);
            v344(v190, 0, 1, v84);
            sub_1000829AC(v190, v192, &unk_10039E210, &unk_1002C65B0);
          }

LABEL_98:
          memcpy(v395, v396, sizeof(v395));
          v81 = v372;
          countAndFlagsBits = v365;
          object = v366;
          goto LABEL_99;
        }

        v87 = v347;
        sub_100065074(v362, v347, &qword_1003A1640, &qword_1002C5980);
        if ((*v358)(v87, 1, v360) == 1)
        {
          sub_10000BD44(v87, &qword_1003A1640, &qword_1002C5980);
          object = v366;
        }

        else
        {
          v118 = v350;
          sub_1000B4088(v87, v350);
          v119 = v370[29];
          v120 = v370[30];
          sub_10000BE18(v370 + 26, v119);
          v121 = v368;
          (*(v120 + 32))(v118, v119, v120);
          if (v121)
          {
            v368 = 0;
            swift_errorRetain();
            v122 = Logger.logObject.getter();
            v123 = static os_log_type_t.default.getter();

            if (os_log_type_enabled(v122, v123))
            {
              v124 = swift_slowAlloc();
              v125 = swift_slowAlloc();
              *v124 = v330;
              swift_errorRetain();
              v126 = _swift_stdlib_bridgeErrorToNSError();
              *(v124 + 4) = v126;
              *v125 = v126;
              _os_log_impl(&_mh_execute_header, v122, v123, "Could not remove batch: %@", v124, 0xCu);
              sub_10000BD44(v125, &unk_10039E220, &qword_1002C3D60);
            }

            else
            {
            }
          }

          else
          {
            v368 = 0;
          }

          v84 = v369;
          object = v366;
          sub_1000B40EC(v350);
          v81 = v372;
        }

        memcpy(v395, v396, sizeof(v395));
        countAndFlagsBits = v365;
        goto LABEL_31;
      }

      v95 = v84;
      if (v393[0] != 2)
      {
        v115 = v348;
        sub_100065074(v362, v348, &qword_1003A1640, &qword_1002C5980);
        if ((*v358)(v115, 1, v360) == 1)
        {
          sub_10000BD44(v115, &qword_1003A1640, &qword_1002C5980);
          object = v366;
          v84 = v95;
        }

        else
        {
          v367 = v37;
          sub_1000B4088(v115, v346);
          sub_100004074(&unk_1003A3C10, &unk_1002C3760);
          v150 = swift_allocObject();
          v150[2]._countAndFlagsBits = 1635017060;
          v37 = v150 + 2;
          v150[2]._object = 0xE400000000000000;
          v151 = TLV.dataRepresentation.getter();
          v153 = v152;
          v154 = Data.hexString()();
          sub_100009548(v151, v153);
          v150[3] = v154;
          sub_100004074(&qword_1003A0FD8, &qword_1002C4F60);
          v155 = static _DictionaryStorage.allocate(capacity:)();

          countAndFlagsBits = v150[2]._countAndFlagsBits;
          object = v150[2]._object;
          v355 = v150[3]._countAndFlagsBits;
          v156 = v150[3]._object;

          v157 = sub_1000F5A28(countAndFlagsBits, object);
          if (v158)
          {
            goto LABEL_226;
          }

          v155[(v157 >> 6) + 8] |= 1 << v157;
          v159 = (v155[6] + 16 * v157);
          *v159 = countAndFlagsBits;
          v159[1] = object;
          v160 = (v155[7] + 16 * v157);
          *v160 = v355;
          v160[1] = v156;
          v161 = v155[2];
          v162 = __OFADD__(v161, 1);
          v163 = v161 + 1;
          if (v162)
          {
            goto LABEL_227;
          }

          v155[2] = v163;

          swift_setDeallocating();
          sub_10000BD44(v37, &qword_10039FE90, &unk_1002C5970);
          swift_deallocClassInstance();
          v164 = v370;
          sub_10000BE18(v370 + 36, v370[39]);
          sub_100033A6C(0);
          v166 = v165;
          v167 = v164[29];
          v168 = v164[30];
          sub_10000BE18(v164 + 26, v167);
          v169 = v368;
          (*(v168 + 8))(2753281, v166, v155, v167, v168);
          v368 = v169;
          if (v169)
          {

            v170 = sub_100183EFC(&off_10037E628);
            sub_10000BD44(&unk_10037E648, &qword_10039FE90, &unk_1002C5970);
            sub_10000BE18(v164 + 36, v164[39]);
            sub_100033A6C(0);
            v172 = v171;
            v173 = v164[29];
            v174 = v164[30];
            sub_10000BE18(v164 + 26, v173);
            (*(v174 + 8))(2753281, v172, v170, v173, v174);
            v37 = v367;

            swift_errorRetain();
            v175 = Logger.logObject.getter();
            v176 = static os_log_type_t.default.getter();

            if (os_log_type_enabled(v175, v176))
            {
              v177 = swift_slowAlloc();
              v178 = swift_slowAlloc();
              *v177 = v330;
              swift_errorRetain();
              v179 = _swift_stdlib_bridgeErrorToNSError();
              *(v177 + 4) = v179;
              *v178 = v179;
              _os_log_impl(&_mh_execute_header, v175, v176, "Failed to store rewrap logs in log flush event: %@", v177, 0xCu);
              sub_10000BD44(v178, &unk_10039E220, &qword_1002C3D60);
            }

            else
            {
            }

            sub_1000B40EC(v346);
            v368 = 0;
          }

          else
          {
            sub_1000B40EC(v346);

            v37 = v367;
          }

          v84 = v369;
          v81 = v372;
          countAndFlagsBits = v365;
          object = v366;
        }

        goto LABEL_30;
      }

      v367 = v37;
      v96 = v349;
      sub_100065074(v359, v349, &unk_10039E210, &unk_1002C65B0);
      if ((v342->isa)(v96, 1, v84) == 1)
      {
        sub_10000BD44(v96, &unk_10039E210, &unk_1002C65B0);
        memcpy(v395, v396, sizeof(v395));
        v357 = 0;
        LODWORD(v361) = 0;
        v356 = 1;
        object = v366;
        v37 = v367;
        goto LABEL_31;
      }

      (v327->isa)(v354, v96, v84);
      if (qword_10039D4D8 != -1)
      {
        swift_once();
      }

      v127 = type metadata accessor for OSSignposter();
      sub_10000403C(v127, qword_1003A13E0);
      v128 = v351;
      static OSSignpostID.exclusive.getter();
      v129 = OSSignposter.logHandle.getter();
      v130 = static os_signpost_type_t.begin.getter();
      if (OS_os_log.signpostsEnabled.getter())
      {
        v131 = swift_slowAlloc();
        *v131 = 0;
        v132 = OSSignpostID.rawValue.getter();
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v129, v130, v132, "monitor-send-logs", "begin send monitoring logs", v131, 2u);
        countAndFlagsBits = v365;
        v128 = v351;
      }

      v133 = v352;
      (*v326)(v337, v128, v352);
      type metadata accessor for OSSignpostIntervalState();
      swift_allocObject();
      v134 = OSSignpostIntervalState.init(id:isOpen:)();
      v135 = v128;
      v136 = *v341;
      (*v341)(v135, v133);
      sub_1000ACACC(v354, v402);
      v137 = OSSignposter.logHandle.getter();
      v138 = v343;
      OSSignpostIntervalState.signpostID.getter();
      v139 = static os_signpost_type_t.end.getter();
      if (OS_os_log.signpostsEnabled.getter())
      {

        v140 = v331;
        checkForErrorAndConsumeState(state:)();

        v141 = (*v322)(v140, v332);
        v142 = "[Error] Interval already ended";
        if (v141 != v321)
        {
          (*v320)(v331, v332);
          v142 = "end send monitoring logs";
        }

        v143 = swift_slowAlloc();
        *v143 = 0;
        v144 = v343;
        v145 = OSSignpostID.rawValue.getter();
        v146 = v142;
        v138 = v144;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v137, v139, v145, "monitor-send-logs", v146, v143, 2u);

        countAndFlagsBits = v365;
      }

      v338 = v134;

      v136(v138, v352);
      v357 = v404;
      v356 = v405;
      memcpy(v392, v402, sizeof(v392));
      memcpy(v393, v402, sizeof(v393));
      if (sub_1000B4148(v393) == 1)
      {
        memcpy(v389, v396, sizeof(v389));
        object = v366;
        v37 = v367;
        v84 = v369;
        v81 = v372;
        v147 = v403;
        if (v403)
        {
LABEL_76:
          *v387 = v147;
          swift_errorRetain();
          swift_errorRetain();
          sub_100004074(&unk_1003A3C00, &unk_1002C16C0);
          v148 = v147;
          if (swift_dynamicCast())
          {
            v355 = v147;
            if (BYTE8(v388[0]) == 1)
            {
              if (*&v388[0] > 7)
              {
                if (*&v388[0] > 10)
                {
                  LODWORD(v361) = 1;
                  if ((*&v388[0] - 12) >= 4)
                  {
                    v149 = 6;
                  }

                  else
                  {
                    v149 = 4;
                  }
                }

                else if (*&v388[0] == 8)
                {
                  LODWORD(v361) = 1;
                  v149 = 10;
                }

                else
                {
                  LODWORD(v361) = 1;
                  if (*&v388[0] == 9)
                  {
                    v149 = 13;
                  }

                  else
                  {
                    v149 = 14;
                  }
                }

                goto LABEL_156;
              }

              if (*&v388[0] <= 2)
              {
                if (*&v388[0] >= 2uLL)
                {
                  LODWORD(v361) = 1;
                  v149 = 12;
                  goto LABEL_156;
                }
              }

              else if ((*&v388[0] - 3) >= 3)
              {
                LODWORD(v361) = 1;
                if (*&v388[0] == 6)
                {
                  v149 = 8;
                }

                else
                {
                  v149 = 9;
                }

                goto LABEL_156;
              }

              LODWORD(v361) = 1;
              v149 = 5;
LABEL_156:
              v367 = v149;
              goto LABEL_157;
            }

            v367 = *&v388[0];
            LODWORD(v361) = 0;
LABEL_157:
            v224 = Logger.logObject.getter();
            v225 = static os_log_type_t.error.getter();
            if (os_log_type_enabled(v224, v225))
            {
              v226 = swift_slowAlloc();
              v227 = swift_slowAlloc();
              *&v388[0] = v227;
              *v226 = v333;
              v228 = sub_1000A7598(v367, v361);
              v229 = v37;
              v231 = sub_100008F6C(v228, v230, v388);

              *(v226 + 4) = v231;
              v37 = v229;
              _os_log_impl(&_mh_execute_header, v224, v225, "Monitor Manager got an error during sendLogs: %s", v226, 0xCu);
              sub_10000959C(v227);
              countAndFlagsBits = v365;

              object = v366;
            }

            v232 = v334;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v232 = sub_10004E0BC(0, *(v232 + 2) + 1, 1, v232);
            }

            v234 = *(v232 + 2);
            v233 = *(v232 + 3);
            v334 = v232;
            if (v234 >= v233 >> 1)
            {
              v334 = sub_10004E0BC((v233 > 1), v234 + 1, 1, v334);
            }

            sub_1000B416C(v402);

            v235 = v369;
            (v325->isa)(v354, v369);
            v236 = v334;
            *(v334 + 2) = v234 + 1;
            v237 = &v236[16 * v234];
            v84 = v235;
            *(v237 + 4) = v367;
            v237[40] = v361;
            v81 = v372;
            goto LABEL_164;
          }

          *v387 = v147;
          swift_errorRetain();
          if (swift_dynamicCast())
          {
            v355 = v147;
            v367 = *&v388[0];
            LODWORD(v361) = BYTE8(v388[0]);
            goto LABEL_157;
          }

          swift_errorRetain();
          v361 = Logger.logObject.getter();
          v195 = static os_log_type_t.error.getter();

          LODWORD(v324) = v195;
          v196 = v195;
          v197 = v361;
          if (os_log_type_enabled(v361, v196))
          {
            v198 = swift_slowAlloc();
            v367 = v37;
            v199 = v198;
            v200 = swift_slowAlloc();
            *&v388[0] = v200;
            *v199 = v333;
            swift_getErrorValue();
            v355 = v148;
            v201 = Error.localizedDescription.getter();
            v203 = sub_100008F6C(v201, v202, v388);

            *(v199 + 4) = v203;
            countAndFlagsBits = v365;
            v81 = v372;
            _os_log_impl(&_mh_execute_header, v197, v324, "Faild to map the underlying error: %s", v199, 0xCu);
            sub_10000959C(v200);
            object = v366;

            v37 = v367;

            sub_1000B416C(v402);
          }

          else
          {

            sub_1000B416C(v402);
          }

          v84 = v369;
          (v325->isa)(v354, v369);
LABEL_164:
          memcpy(v395, v389, sizeof(v395));
          LODWORD(v361) = 0;
          goto LABEL_31;
        }

LABEL_135:

        sub_1000B416C(v402);
        (v325->isa)(v354, v84);
        goto LABEL_164;
      }

      memcpy(v407, v393, sizeof(v407));
      memcpy(v388, v392, 0x128uLL);
      sub_100065074(v392, v387, &qword_1003A1648, &qword_1002C5988);
      sub_1000B419C(v388, v387);
      v181 = Logger.logObject.getter();
      v182 = static os_log_type_t.default.getter();
      sub_10000BD44(v392, &qword_1003A1648, &qword_1002C5988);
      if (os_log_type_enabled(v181, v182))
      {
        v183 = swift_slowAlloc();
        v184 = swift_slowAlloc();
        *v387 = v184;
        *v183 = v333;
        v185 = sub_1000B51FC();
        v187 = sub_100008F6C(v185, v186, v387);

        *(v183 + 4) = v187;
        _os_log_impl(&_mh_execute_header, v181, v182, "A&M Backend Response: %s", v183, 0xCu);
        sub_10000959C(v184);
        countAndFlagsBits = v365;
      }

      sub_10000BD44(v396, &qword_1003A1648, &qword_1002C5988);

      object = v366;
      v37 = v367;
      memcpy(v387, v393, sizeof(v387));
      nullsub_1();
      v324 = v393[36];
      v81 = v372;
      if (v393[36])
      {
        memcpy(v391, v401, 0x110uLL);
        v193 = v400;
        v391[34] = v364;
        v391[35] = v37;
        LOBYTE(v391[36]) = v363;
        BYTE1(v391[36]) = v400;
        if (sub_1000B4148(v391) == 1)
        {
          sub_100031B14(v374);
          memcpy(v390, v374, sizeof(v390));
          v194 = v324;

          sub_10000BD44(v390, &qword_10039F268, &qword_1002C2730);
          LOBYTE(v381[0]) = 1;
          memcpy(v375, v374, 0x110uLL);
          *&v375[272] = v194;
          *&v375[280] = 0;
          v375[288] = 0;
          v375[289] = 1;
          memcpy(v376, v374, sizeof(v376));
          v377 = v194;
          v378 = 0;
          v379 = 0;
          v380 = 1;
          v81 = v372;
          sub_100031B40(v375, v382);
          sub_100031B78(v376);
          memcpy(v381, v375, 0x122uLL);
          nullsub_1();
          memcpy(v382, v401, sizeof(v382));
          v383 = v364;
          v384 = v37;
          v385 = v363;
          v386 = v193;
          sub_10000BD44(v382, &qword_1003A1620, &unk_1002C5960);
          memcpy(v401, v381, sizeof(v401));
          v364 = v381[34];
          v37 = v381[35];
          v363 = LOBYTE(v381[36]);
          v400 = BYTE1(v381[36]);
        }

        else
        {
          memcpy(v382, v401, sizeof(v382));
          v383 = v364;
          v384 = v37;
          v385 = v363;
          v386 = v193;
          v204 = _swiftEmptyArrayStorage;
          if (sub_1000B4148(v382) != 1 && v364)
          {
            v204 = v364;
          }

          v205 = *(v324 + 16);
          if (v205)
          {

            v207 = (isUniquelyReferenced_nonNull_native + 64);
            v208 = v204;
            do
            {
              v209 = *(v207 - 3);
              v210 = *(v207 - 2);
              v211 = *(v207 - 1);
              v212 = *v207;
              v361 = *(v207 - 4);
              v381[0] = v361;
              v381[1] = v209;
              v355 = v210;
              v381[2] = v210;
              v381[3] = v211;
              v381[4] = v212;
              __chkstk_darwin(isUniquelyReferenced_nonNull_native);
              *(&v320 - 2) = v381;

              v213 = v368;
              v214 = sub_10011DADC(sub_1000B41F8, (&v320 - 4), v208);
              v368 = v213;
              if (v214)
              {
              }

              else
              {
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                {
                  isUniquelyReferenced_nonNull_native = sub_10004E1BC(0, *(v208 + 16) + 1, 1, v208);
                  v208 = isUniquelyReferenced_nonNull_native;
                }

                v216 = *(v208 + 16);
                v215 = *(v208 + 24);
                v217 = v208;
                if (v216 >= v215 >> 1)
                {
                  isUniquelyReferenced_nonNull_native = sub_10004E1BC((v215 > 1), v216 + 1, 1, v208);
                  v217 = isUniquelyReferenced_nonNull_native;
                }

                *(v217 + 16) = v216 + 1;
                v208 = v217;
                v218 = (v217 + 40 * v216);
                v218[4] = v361;
                v218[5] = v209;
                v218[6] = v355;
                v218[7] = v211;
                v218[8] = v212;
              }

              v207 += 5;
              --v205;
            }

            while (v205);
            v204 = v208;

            v193 = v400;
            v37 = v367;
            v81 = v372;
            countAndFlagsBits = v365;
          }

          memcpy(v381, v401, 0x110uLL);
          v381[34] = v364;
          v381[35] = v37;
          LOBYTE(v381[36]) = v363;
          BYTE1(v381[36]) = v193;
          v221 = sub_1000B4148(v381);
          object = v366;
          if (v221 != 1)
          {

            memcpy(v389, v387, sizeof(v389));
            v364 = v204;
LABEL_134:
            v84 = v369;
            v147 = v403;
            if (v403)
            {
              goto LABEL_76;
            }

            goto LABEL_135;
          }
        }
      }

      memcpy(v389, v387, sizeof(v389));
      goto LABEL_134;
    }

    if (v393[0] > 5)
    {
      if (v393[0] == 6)
      {
        v88 = Logger.logObject.getter();
        v97 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v88, v97))
        {
          v90 = swift_slowAlloc();
          *v90 = 0;
          v91 = v97;
          v92 = v88;
          v93 = "Time sync failed";
LABEL_27:
          _os_log_impl(&_mh_execute_header, v92, v91, v93, v90, 2u);
          v84 = v369;
        }

        goto LABEL_28;
      }

      memcpy(v393, v396, sizeof(v393));
      if (sub_1000B4148(v393) == 1)
      {
        goto LABEL_30;
      }

      memcpy(v382, v393, sizeof(v382));
      if (sub_100031A30(v382) == 1 || LOBYTE(v393[35]) == 1)
      {
        goto LABEL_30;
      }

      v367 = v37;
      v116 = v393[34] + -300.0;
      sub_100065074(v396, v392, &qword_1003A1648, &qword_1002C5988);
      sub_100065074(v393, v392, &qword_10039F268, &qword_1002C2730);
      sub_1000B2B84(v116);
      if (v117)
      {
        sub_10000BD44(v393, &qword_10039F268, &qword_1002C2730);
        sub_10000BD44(v396, &qword_1003A1648, &qword_1002C5988);
        goto LABEL_98;
      }

      memcpy(v392, v401, 0x110uLL);
      v219 = v400;
      *&v392[272] = v364;
      v220 = v367;
      *&v392[280] = v367;
      v392[288] = v363;
      v392[289] = v400;
      if (sub_1000B4148(v392) == 1)
      {
        memcpy(v390, v382, sizeof(v390));
        nullsub_1();
        sub_100031B14(v375);
        memcpy(v376, v375, sizeof(v376));
        memcpy(v381, v393, 0x110uLL);
        sub_100034958(v381, v389);
        sub_10000BD44(v376, &qword_10039F268, &qword_1002C2730);
        LOBYTE(v388[0]) = 1;
        memcpy(v391, v390, 0x110uLL);
        v391[34] = 0;
        v391[35] = 0;
        LOWORD(v391[36]) = 256;
        memcpy(v387, v390, 0x110uLL);
        memset(&v387[272], 0, 17);
        v387[289] = 1;
        v84 = v369;
        sub_100031B40(v391, v389);
        sub_100031B78(v387);
        memcpy(v388, v391, 0x122uLL);
        nullsub_1();
        memcpy(v389, v401, 0x110uLL);
        v389[34] = v364;
        v389[35] = v220;
        LOBYTE(v389[36]) = v363;
        BYTE1(v389[36]) = v219;
        sub_10000BD44(v389, &qword_1003A1620, &unk_1002C5960);
        memcpy(v401, v388, sizeof(v401));
        v367 = *(&v388[17] + 1);
        v364 = *&v388[17];
        v363 = LOBYTE(v388[18]);
        v400 = BYTE1(v388[18]);
        countAndFlagsBits = v365;
        object = v366;
      }

      else
      {
        memcpy(v389, v401, 0x110uLL);
        v389[34] = v364;
        v389[35] = v220;
        LOBYTE(v389[36]) = v363;
        BYTE1(v389[36]) = v219;
        v222 = sub_1000B4148(v389);
        countAndFlagsBits = v365;
        object = v366;
        if (v222 != 1)
        {
          memcpy(v391, v382, 0x110uLL);
          nullsub_1();
          memcpy(v387, v401, 0x110uLL);
          memcpy(v388, v393, 0x110uLL);
          sub_100034958(v388, v381);
          sub_10000BD44(v387, &qword_10039F268, &qword_1002C2730);
          memcpy(v401, v391, sizeof(v401));
        }
      }

      v223 = v368;
      sub_1000B2850();
      v368 = v223;
      if (v223)
      {

        sub_10000BD44(v396, &qword_1003A1648, &qword_1002C5988);
        sub_10000BD44(v396, &qword_1003A1648, &qword_1002C5988);
        sub_10000BD44(v393, &qword_10039F268, &qword_1002C2730);
        sub_10000BD44(v359, &unk_10039E210, &unk_1002C65B0);
        sub_10000BD44(v362, &qword_1003A1640, &qword_1002C5980);

LABEL_223:
        v277 = v367;
        goto LABEL_191;
      }

      sub_10000BD44(v393, &qword_10039F268, &qword_1002C2730);
      sub_10000BD44(v396, &qword_1003A1648, &qword_1002C5988);
      memcpy(v395, v396, sizeof(v395));
      v81 = v372;
LABEL_99:
      v37 = v367;
      goto LABEL_31;
    }

    if (v393[0] == 4)
    {
      memcpy(v393, v401, 0x110uLL);
      v94 = v400;
      v393[34] = v364;
      v393[35] = v37;
      LOBYTE(v393[36]) = v363;
      BYTE1(v393[36]) = v400;
      if (sub_1000B4148(v393) != 1)
      {
        memcpy(v392, v401, 0x110uLL);
        *&v392[272] = v364;
        *&v392[280] = v37;
        v392[288] = v363;
        v392[289] = v94;
        if (sub_1000B4148(v392) != 1)
        {
          sub_100031B14(v388);
          memcpy(v389, v401, 0x110uLL);
          sub_10000BD44(v389, &qword_10039F268, &qword_1002C2730);
          memcpy(v401, v388, sizeof(v401));
        }

        goto LABEL_30;
      }

      if (qword_10039D340 != -1)
      {
        swift_once();
      }

      memcpy(v388, &unk_1003A6940, 0x122uLL);
      memcpy(v389, &unk_1003A6940, 0x122uLL);
      nullsub_1();
      memcpy(v392, v401, 0x110uLL);
      *&v392[272] = v364;
      *&v392[280] = v37;
      v392[288] = v363;
      v392[289] = v94;
      sub_100031B40(v388, v387);
      sub_10000BD44(v392, &qword_1003A1620, &unk_1002C5960);
      memcpy(v401, v389, sizeof(v401));
      v364 = v389[34];
      v37 = v389[35];
      v363 = LOBYTE(v389[36]);
      v400 = BYTE1(v389[36]);
      memcpy(v395, v396, sizeof(v395));
      object = v366;
    }

    else
    {
      v367 = v37;
      v104 = v370;
      sub_10000BE18(v370 + 36, v370[39]);
      sub_100033A6C(222);
      v106 = v105;
      v107 = v104[29];
      v108 = v104[30];
      sub_10000BE18(v104 + 26, v107);
      v109 = v368;
      (*(v108 + 8))(3736321, v106, &_swiftEmptyDictionarySingleton, v107, v108);
      if (v109)
      {
        swift_errorRetain();
        v110 = Logger.logObject.getter();
        v111 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v110, v111))
        {
          v112 = swift_slowAlloc();
          v113 = swift_slowAlloc();
          *v112 = v330;
          swift_errorRetain();
          v114 = _swift_stdlib_bridgeErrorToNSError();
          *(v112 + 4) = v114;
          *v113 = v114;
          _os_log_impl(&_mh_execute_header, v110, v111, "Failed to store complete attestation event: %@", v112, 0xCu);
          sub_10000BD44(v113, &unk_10039E220, &qword_1002C3D60);
          object = v366;
        }

        else
        {
        }

        memcpy(v395, v396, sizeof(v395));
        v368 = 0;
      }

      else
      {
        v368 = 0;
        memcpy(v395, v396, sizeof(v395));
      }

      v84 = v369;
      v37 = v367;
      v81 = v372;
      countAndFlagsBits = v365;
    }

LABEL_31:
    if (++v86 == countAndFlagsBits)
    {
      break;
    }

    memcpy(v396, v395, sizeof(v396));
    v85 = v373;
    if (v86 >= v81[2])
    {
      goto LABEL_186;
    }
  }

  if (v361)
  {
    memcpy(v397, v395, sizeof(v397));
    v81 = _swiftEmptyArrayStorage;
    v85 = v373;
    countAndFlagsBits = _swiftEmptyArrayStorage[2];
    if (countAndFlagsBits)
    {
      goto LABEL_176;
    }
  }

  else
  {
    v238 = Logger.logObject.getter();
    v239 = static os_log_type_t.default.getter();
    v240 = os_log_type_enabled(v238, v239);
    v367 = v37;
    if (v240)
    {
      v241 = swift_slowAlloc();
      v242 = swift_slowAlloc();
      v393[0] = v242;
      *v241 = v333;
      v243 = v356 & 1;
      v244 = v357;
      v245 = sub_1000A7168(v357, v356 & 1);
      v247 = sub_100008F6C(v245, v246, v393);

      *(v241 + 4) = v247;
      _os_log_impl(&_mh_execute_header, v238, v239, "MonitorManager got a %s event", v241, 0xCu);
      sub_10000959C(v242);

      v248 = v336;
    }

    else
    {

      v243 = v356 & 1;
      v248 = v336;
      v244 = v357;
    }

    v372 = sub_1000B3C54(v244, v243, v248);

    v249 = Logger.logObject.getter();
    v250 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v249, v250))
    {
      v251 = swift_slowAlloc();
      v252 = swift_slowAlloc();
      *v392 = v252;
      *v251 = v333;
      v253 = *(v248 + 56);
      os_unfair_lock_lock(v253 + 14);
      sub_10000CCE4(&v253[4], v393);
      os_unfair_lock_unlock(v253 + 14);
      v254 = v393[3];
      v255 = v393[4];
      sub_10000BE18(v393, v393[3]);
      v256 = (*(v255 + 32))(v254, v255);
      v258 = v257;
      sub_10000959C(v393);
      v259 = sub_100008F6C(v256, v258, v392);

      *(v251 + 4) = v259;
      _os_log_impl(&_mh_execute_header, v249, v250, "MonitorManager is at the %s state", v251, 0xCu);
      sub_10000959C(v252);
    }

    memcpy(v397, v395, sizeof(v397));
    v37 = v367;
    v84 = v369;
    v81 = v372;
    v85 = v373;
    countAndFlagsBits = *(v372 + 16);
    if (countAndFlagsBits)
    {
      goto LABEL_176;
    }
  }

LABEL_178:

  if (v353 <= 0)
  {
    goto LABEL_187;
  }

  v367 = v37;
  v261 = v362;
  v262 = sub_100183EFC(_swiftEmptyArrayStorage);
  v263 = v370;
  sub_10000BE18(v370 + 36, v370[39]);
  sub_100033A6C(222);
  v265 = v264;
  v266 = v263[29];
  v267 = v263[30];
  sub_10000BE18(v263 + 26, v266);
  v268 = v368;
  (*(v267 + 8))(3736321, v265, v262, v266, v267);
  if (v268)
  {

    swift_errorRetain();
    v269 = Logger.logObject.getter();
    v270 = static os_log_type_t.default.getter();
    v373 = v268;

    if (os_log_type_enabled(v269, v270))
    {
      v271 = swift_slowAlloc();
      v272 = swift_slowAlloc();
      *v271 = v330;
      swift_errorRetain();
      v273 = _swift_stdlib_bridgeErrorToNSError();
      *(v271 + 4) = v273;
      *v272 = v273;
      _os_log_impl(&_mh_execute_header, v269, v270, "Could not store complete attestation event: %@", v271, 0xCu);
      sub_10000BD44(v272, &unk_10039E220, &qword_1002C3D60);
    }

    memcpy(v396, v401, 0x110uLL);
    v274 = v400;
    v396[34] = v364;
    v277 = v367;
    v396[35] = v367;
    LOBYTE(v396[36]) = v363;
    BYTE1(v396[36]) = v400;
    v275 = v261;
    if (sub_1000B4148(v396) == 1)
    {
      if (qword_10039D340 != -1)
      {
        swift_once();
      }

      memcpy(v392, &unk_1003A6940, 0x122uLL);
      memcpy(v393, &unk_1003A6940, 0x122uLL);
      nullsub_1();
      memcpy(v395, v401, 0x110uLL);
      v395[34] = v364;
      v395[35] = v367;
      LOBYTE(v395[36]) = v363;
      BYTE1(v395[36]) = v274;
      sub_100031B40(v392, v389);
      sub_10000BD44(v395, &qword_1003A1620, &unk_1002C5960);
      memcpy(v401, v393, sizeof(v401));
      v364 = v393[34];
      v277 = v393[35];
      v363 = LOBYTE(v393[36]);
      v400 = BYTE1(v393[36]);
    }

    else
    {
      memcpy(v395, v401, 0x110uLL);
      v395[34] = v364;
      v395[35] = v277;
      LOBYTE(v395[36]) = v363;
      BYTE1(v395[36]) = v274;
      if (sub_1000B4148(v395) != 1)
      {
        sub_100031B14(v392);
        memcpy(v393, v401, 0x110uLL);
        sub_10000BD44(v393, &qword_10039F268, &qword_1002C2730);
        memcpy(v401, v392, sizeof(v401));
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v334 = sub_10004E0BC(0, *(v334 + 2) + 1, 1, v334);
    }

    v297 = *(v334 + 2);
    v296 = *(v334 + 3);
    if (v297 >= v296 >> 1)
    {
      v334 = sub_10004E0BC((v296 > 1), v297 + 1, 1, v334);
    }

    v295 = v334;
    *(v334 + 2) = v297 + 1;
    v298 = &v295[16 * v297];
    *(v298 + 4) = 7;
    v298[40] = 1;
  }

  else
  {

    v275 = v261;
    v277 = v367;
    v295 = v334;
  }

  v299 = v295 + 16;
  v300 = *(v295 + 2);
  if (!v300)
  {
    goto LABEL_210;
  }

  memcpy(v396, v401, 0x110uLL);
  v301 = v400;
  v396[34] = v364;
  v396[35] = v277;
  LOBYTE(v396[36]) = v363;
  BYTE1(v396[36]) = v400;
  if (sub_1000B4148(v396) == 1)
  {
    v302 = &v299[16 * v300];
    v303 = *v302;
    v304 = v302[8];

    sub_100031B14(v387);
    memcpy(v388, v387, 0x110uLL);
    sub_10000BD44(v388, &qword_10039F268, &qword_1002C2730);
    LOBYTE(v393[0]) = 0;
    memcpy(v389, v387, 0x110uLL);
    v389[34] = 0;
    v389[35] = v303;
    LOWORD(v389[36]) = v304;
    memcpy(v392, v387, 0x110uLL);
    *&v392[272] = 0;
    *&v392[280] = v303;
    v392[288] = v304;
    v392[289] = 0;
    sub_100031B40(v389, v395);
    sub_100031B78(v392);
    memcpy(v393, v389, 0x122uLL);
    nullsub_1();
    memcpy(v395, v401, 0x110uLL);
    v395[34] = v364;
    v395[35] = v277;
    LOBYTE(v395[36]) = v363;
    BYTE1(v395[36]) = v400;
    sub_10000BD44(v395, &qword_1003A1620, &unk_1002C5960);
    memcpy(v401, v393, sizeof(v401));
    v364 = v393[34];
    v277 = v393[35];
    v363 = LOBYTE(v393[36]);
    v400 = BYTE1(v393[36]);
    goto LABEL_216;
  }

  if (((memcpy(v395, v401, 0x110uLL), v395[34] = v364, v395[35] = v277, LOBYTE(v395[36]) = v363, BYTE1(v395[36]) = v301, sub_1000B4148(v395) == 1) || (memcpy(v393, v401, 0x110uLL), sub_100031A30(v393) == 1)) && (memcpy(v393, v401, 0x110uLL), v393[34] = v364, v393[35] = v277, LOBYTE(v393[36]) = v363, BYTE1(v393[36]) = v301, sub_1000B4148(v393) != 1))
  {
    v315 = &v299[16 * v300];
    v316 = *v315;
    v363 = v315[8];
    v277 = v316;

    v400 = 0;
  }

  else
  {
LABEL_210:
  }

LABEL_216:
  memcpy(v395, v401, 0x110uLL);
  v395[34] = v364;
  v395[35] = v277;
  LOBYTE(v395[36]) = v363;
  v317 = v400;
  BYTE1(v395[36]) = v400;
  memcpy(v396, v395, 0x122uLL);
  if (sub_1000B4148(v396) != 1)
  {
    memcpy(v406, v396, 0x122uLL);
    sub_10000BE18(v370 + 36, v370[39]);
    memcpy(v393, v395, 0x122uLL);
    sub_100031B40(v393, v392);
    sub_10003385C(v406);
    sub_10000BD44(v395, &qword_1003A1620, &unk_1002C5960);
  }

  memcpy(v393, v401, 0x110uLL);
  v393[34] = v364;
  v393[35] = v277;
  LOBYTE(v393[36]) = v363;
  BYTE1(v393[36]) = v317;
  if (sub_1000B4148(v393) != 1 && (v317 & 1) == 0)
  {
    sub_1000B3E4C();
    swift_allocError();
    *v318 = v277;
    *(v318 + 8) = v363 & 1;
    swift_willThrow();
    sub_10000BD44(v397, &qword_1003A1648, &qword_1002C5988);
    sub_10000BD44(v359, &unk_10039E210, &unk_1002C65B0);
    sub_10000BD44(v275, &qword_1003A1640, &qword_1002C5980);
    goto LABEL_191;
  }

  sub_10000BD44(v397, &qword_1003A1648, &qword_1002C5988);
  sub_10000BD44(v359, &unk_10039E210, &unk_1002C65B0);
  sub_10000BD44(v275, &qword_1003A1640, &qword_1002C5980);
  memcpy(v392, v401, 0x110uLL);
  *&v392[272] = v364;
  *&v392[280] = v277;
  v392[288] = v363;
  v392[289] = v317;
  sub_10000BD44(v392, &qword_1003A1620, &unk_1002C5960);
}

void *sub_1000ACACC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = v3[34];
  v7 = v3[35];
  sub_10000BE18(v3 + 31, v6);
  (*(v7 + 8))(__src, a1, v6, v7);
  memcpy(__dst, __src, sizeof(__dst));
  if (sub_100031A30(__dst) == 1 || (__src[35] & 1) != 0 || (sub_1000B2B84(__src[34] + -300.0), (v8 & 1) != 0))
  {
    memcpy(v13, __src, sizeof(v13));
    nullsub_1();
    sub_1000B3E4C();
    v9 = swift_allocError();
    *v10 = 7;
    *(v10 + 8) = 1;
    memcpy(v16, v13, sizeof(v16));
    v11 = 2;
  }

  else
  {
    memcpy(v13, __src, sizeof(v13));
    nullsub_1();
    memcpy(v16, v13, sizeof(v16));
    v9 = 0;
    v11 = 1;
  }

  v13[0] = 1;
  result = memcpy(a2, v16, 0x128uLL);
  *(a2 + 296) = v9;
  *(a2 + 304) = v11;
  *(a2 + 312) = v13[0];
  return result;
}

id sub_1000ACE38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v96 = a1;
  v3 = v2;
  v93 = a2;
  v4 = type metadata accessor for TLVTag();
  v5 = __chkstk_darwin(v4 - 8);
  v94 = v82 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v95 = v82 - v8;
  v9 = __chkstk_darwin(v7);
  v103 = v82 - v10;
  v11 = __chkstk_darwin(v9);
  v104 = v82 - v12;
  __chkstk_darwin(v11);
  AssociatedTypeWitness = v82 - v13;
  v105 = type metadata accessor for TLV();
  v101 = *(v105 - 8);
  v14 = __chkstk_darwin(v105);
  v16 = v82 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v100 = v82 - v17;
  v18 = type metadata accessor for OSSignpostID();
  v19 = *(v18 - 8);
  v20 = __chkstk_darwin(v18);
  v22 = v82 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v24 = v82 - v23;
  if (qword_10039D4D8 != -1)
  {
    swift_once();
  }

  v92 = v16;
  v25 = type metadata accessor for OSSignposter();
  sub_10000403C(v25, qword_1003A13E0);
  static OSSignpostID.exclusive.getter();
  v26 = OSSignposter.logHandle.getter();
  v27 = static os_signpost_type_t.begin.getter();
  v28 = OS_os_log.signpostsEnabled.getter();
  v99 = v3;
  if (v28)
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    v30 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v26, v27, v30, "monitor-sign-logs", "begin signing monitoring logs", v29, 2u);
    v3 = v99;
  }

  (*(v19 + 16))(v22, v24, v18);
  type metadata accessor for OSSignpostIntervalState();
  swift_allocObject();
  v31 = OSSignpostIntervalState.init(id:isOpen:)();
  (*(v19 + 8))(v24, v18);
  result = [*(*sub_10000BE18(v3 + 19 v3[22]) + 16)];
  if (result)
  {
    v33 = result;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v34 = Data.init(hexString:)();
    if (v35 >> 60 == 15)
    {
      if (qword_10039D4D0 != -1)
      {
        swift_once();
      }

      v36 = type metadata accessor for Logger();
      sub_10000403C(v36, qword_1003A13C8);
      v37 = Logger.logObject.getter();
      v38 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        *v39 = 0;
        _os_log_impl(&_mh_execute_header, v37, v38, "Could not get secure element serial number", v39, 2u);
      }

      sub_1000B3E4C();
      swift_allocError();
      *v40 = 2;
      *(v40 + 8) = 1;
      swift_willThrow();
      goto LABEL_16;
    }

    v41 = v34;
    v42 = v35;
    static TLVTag.asn1Sequence.getter();
    v43 = sub_100004074(&qword_10039E2D8, &qword_1002C3720);
    v44 = v101;
    v45 = *(v101 + 72);
    v46 = *(v101 + 80);
    v47 = (v46 + 32) & ~v46;
    v88 = 3 * v45;
    v85 = v46;
    v86 = v43;
    v48 = swift_allocObject();
    *(v48 + 16) = xmmword_1002C1790;
    v102 = v47;
    v49 = v48 + v47;
    sub_1000094F4(v41, v42);
    static TLVTag.asn1OctetString.getter();
    TLV.init(tag:octetString:)();
    v50 = *(v44 + 16);
    v51 = v96;
    v96 = v44 + 16;
    v87 = v50;
    v50(&v45[v49], v51, v105);
    static TLVTag.asn1IA5String.getter();
    v52 = v99;
    sub_10000BE18(v99 + 36, v99[39]);
    sub_100034704(v107);
    memcpy(v108, v107, 0x110uLL);
    v53 = sub_100031A30(v108);
    v90 = v42;
    v91 = v31;
    v89 = v41;
    if (v53 != 1)
    {
    }

    v84 = 2 * v45;
    TLV.init(tag:string:)();
    TLV.init(tag:children:)();
    v103 = v45;
    v54 = v52[25];
    ObjectType = swift_getObjectType();
    v56 = TLV.dataRepresentation.getter();
    v58 = v57;
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v99 = v82;
    v59 = *(AssociatedTypeWitness - 1);
    __chkstk_darwin(AssociatedTypeWitness);
    v61 = v97;
    v62 = sub_100155D44(v82 - v60, v56, v58, 1u, ObjectType, v54);
    if (v61)
    {
      (*(v101 + 8))(v100, v105);
      sub_10001A074(v89, v90);
      sub_100009548(v56, v58);
      v31 = v91;
LABEL_16:
      sub_1000AD8D0(v31);
    }

    v82[1] = 0;
    v83 = v62;
    v97 = v63;
    sub_100009548(v56, v58);
    v64 = AssociatedTypeWitness;
    v106[3] = AssociatedTypeWitness;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v106[4] = AssociatedConformanceWitness;
    sub_10000BE5C(v106);
    v66 = v64;
    (*(v59 + 32))();
    static TLVTag.asn1Sequence.getter();
    v67 = v102;
    v68 = v103;
    v69 = swift_allocObject();
    *(v69 + 16) = xmmword_1002C1680;
    v99 = v69;
    v70 = v69 + v67;
    v109 = 1;
    static TLVTag.asn1Integer.getter();
    sub_10000A114();
    sub_1000B3FE0();
    TLV.init<A>(tag:integer:)();
    v71 = v100;
    v87(&v68[v70], v100, v105);
    (*(AssociatedConformanceWitness + 48))(v66, AssociatedConformanceWitness);
    static TLVTag.asn1OctetString.getter();
    v96 = v70;
    TLV.init(tag:octetString:)();
    static TLVTag.asn1Sequence.getter();
    v72 = (*(AssociatedConformanceWitness + 56))(v66, AssociatedConformanceWitness);
    v73 = *(v72 + 16);
    if (v73)
    {
      v109 = _swiftEmptyArrayStorage;
      sub_10004E380(0, v73, 0);
      v74 = v109;
      v75 = (v101 + 32);
      AssociatedTypeWitness = v72;
      v76 = (v72 + 40);
      v77 = v92;
      do
      {
        sub_1000094F4(*(v76 - 1), *v76);
        static TLVTag.asn1OctetString.getter();
        TLV.init(tag:octetString:)();
        v109 = v74;
        v79 = *(v74 + 16);
        v78 = *(v74 + 24);
        if (v79 >= v78 >> 1)
        {
          sub_10004E380((v78 > 1), v79 + 1, 1);
          v74 = v109;
        }

        v76 += 2;
        *(v74 + 16) = v79 + 1;
        (*v75)(v74 + v102 + v79 * v103, v77, v105);
        --v73;
      }

      while (v73);

      v71 = v100;
    }

    else
    {
    }

    TLV.init(tag:children:)();
    v80 = v83;
    v81 = v97;
    sub_1000094F4(v83, v97);
    static TLVTag.asn1OctetString.getter();
    TLV.init(tag:octetString:)();
    TLV.init(tag:children:)();
    sub_100009548(v80, v81);
    sub_10001A074(v89, v90);
    (*(v101 + 8))(v71, v105);
    sub_10000959C(v106);
    sub_1000AD8D0(v91);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000AD8D0(uint64_t a1)
{
  v1 = type metadata accessor for OSSignpostError();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OSSignpostID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10039D4D8 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for OSSignposter();
  sub_10000403C(v9, qword_1003A13E0);
  v10 = OSSignposter.logHandle.getter();
  OSSignpostIntervalState.signpostID.getter();
  v11 = static os_signpost_type_t.end.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {

    checkForErrorAndConsumeState(state:)();

    if ((*(v2 + 88))(v4, v1) == enum case for OSSignpostError.doubleEnd(_:))
    {
      v12 = "[Error] Interval already ended";
    }

    else
    {
      (*(v2 + 8))(v4, v1);
      v12 = "end signing monitoring logs";
    }

    v13 = swift_slowAlloc();
    *v13 = 0;
    v14 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v10, v11, v14, "monitor-sign-logs", v12, v13, 2u);
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1000ADB5C(char a1)
{
  if (qword_10039D4D0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000403C(v2, qword_1003A13C8);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v5 = 136315394;
    v6 = sub_1000A7D74();
    v8 = sub_100008F6C(v6, v7, &v16);

    *(v5 + 4) = v8;
    *(v5 + 12) = 2080;
    sub_100004074(&qword_1003A6740, &unk_1002C2930);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1002C1660;
    *(v9 + 56) = &type metadata for MPOCOperationMode;
    *(v9 + 32) = a1 & 1;
    v10 = showFunction(signature:_:)(0x6F4D686374697773, 0xEF293A6F74286564, v9);
    v12 = v11;

    v13 = sub_100008F6C(v10, v12, &v16);

    *(v5 + 14) = v13;
    _os_log_impl(&_mh_execute_header, v3, v4, "%s.%s", v5, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  __chkstk_darwin(v14);
  return OS_dispatch_queue.sync<A>(execute:)();
}

void sub_1000ADE18(uint64_t a1, char a2, uint64_t a3)
{
  v4 = a2 & 1;
  if (*(a1 + 48) == (a2 & 1))
  {
    if (qword_10039D4D0 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_10000403C(v22, qword_1003A13C8);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      *v25 = 136315394;
      v26 = _typeName(_:qualified:)();
      v28 = sub_100008F6C(v26, v27, &v33);

      *(v25 + 4) = v28;
      *(v25 + 12) = 2080;
      if (a2)
      {
        v29 = 0x656E696C66666FLL;
      }

      else
      {
        v29 = 0x656E696C6E6FLL;
      }

      if (a2)
      {
        v30 = 0xE700000000000000;
      }

      else
      {
        v30 = 0xE600000000000000;
      }

      v31 = sub_100008F6C(v29, v30, &v33);

      *(v25 + 14) = v31;
      _os_log_impl(&_mh_execute_header, v23, v24, "%s: Already in %s mode.", v25, 0x16u);
      swift_arrayDestroy();
    }
  }

  else
  {
    *(a1 + 48) = v4;
    v6 = *(a1 + 96);
    v7 = *(a1 + 104);
    sub_10000BE18((a1 + 72), v6);
    if (qword_10039D4E0 != -1)
    {
      swift_once();
    }

    v8 = qword_1003A6B88;
    v9 = unk_1003A6B90;
    sub_100004074(&qword_10039E2E0, &qword_1002C1720);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1002C1660;
    *(v10 + 32) = v4;
    v11 = sub_10014B8C8(v10);
    v32 = v4;
    v13 = v12;

    (*(v7 + 40))(v8, v9, v11, v13, v6, v7);
    sub_100009548(v11, v13);
    if (!v3)
    {
      sub_100004074(&unk_1003A3C10, &unk_1002C3760);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1002C1660;
      *(inited + 32) = 1701080941;
      *(inited + 40) = 0xE400000000000000;
      LOBYTE(v33) = *(a1 + 48);
      sub_1000B3F8C();
      *(inited + 48) = BinaryInteger.description.getter();
      *(inited + 56) = v15;
      v16 = sub_100183EFC(inited);
      swift_setDeallocating();
      sub_10000BD44(inited + 32, &qword_10039FE90, &unk_1002C5970);
      sub_10000BE18((a1 + 288), *(a1 + 312));
      sub_100033A6C(206);
      v18 = v17;
      v19 = *(a1 + 232);
      v20 = *(a1 + 240);
      sub_10000BE18((a1 + 208), v19);
      (*(v20 + 8))(3801857, v18, v16, v19, v20);

      *(*(a1 + 328) + 64) = v32;
    }
  }
}

void sub_1000AE1FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v68 = type metadata accessor for DispatchWorkItemFlags();
  v70 = *(v68 - 8);
  __chkstk_darwin(v68);
  v67 = v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = type metadata accessor for DispatchQoS();
  v66 = *(v69 - 8);
  __chkstk_darwin(v69);
  v65 = v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for OSSignpostID();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v59 - v12;
  if (qword_10039D4D0 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  v15 = sub_10000403C(v14, qword_1003A13C8);

  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v63 = v8;
    v19 = v18;
    aBlock = swift_slowAlloc();
    *v19 = 136315394;
    v20 = sub_1000A7D74();
    v22 = sub_100008F6C(v20, v21, &aBlock);
    v62 = v3;
    v23 = v13;
    v24 = v11;
    v25 = v7;
    v26 = v15;
    v27 = v22;

    *(v19 + 4) = v27;
    *(v19 + 12) = 2080;
    v28 = showFunction(signature:_:)(0x29287472617473, 0xE700000000000000, _swiftEmptyArrayStorage);
    v30 = sub_100008F6C(v28, v29, &aBlock);

    *(v19 + 14) = v30;
    v15 = v26;
    v7 = v25;
    v11 = v24;
    v13 = v23;
    v4 = v62;
    _os_log_impl(&_mh_execute_header, v16, v17, "%s.%s", v19, 0x16u);
    swift_arrayDestroy();

    v8 = v63;
  }

  if (*(v4 + 16))
  {
    v70 = Logger.logObject.getter();
    v31 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v70, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&_mh_execute_header, v70, v31, "Background process already started", v32, 2u);
    }

    v33 = v70;
  }

  else
  {
    *(v4 + 16) = 1;
    if (qword_10039D4D8 != -1)
    {
      swift_once();
    }

    v34 = type metadata accessor for OSSignposter();
    sub_10000403C(v34, qword_1003A13E0);
    static OSSignpostID.exclusive.getter();
    v35 = OSSignposter.logHandle.getter();
    v36 = static os_signpost_type_t.begin.getter();
    if (OS_os_log.signpostsEnabled.getter())
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      v38 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v35, v36, v38, "start-monitoring", "begin start monitoring", v37, 2u);
    }

    (*(v8 + 16))(v11, v13, v7);
    type metadata accessor for OSSignpostIntervalState();
    swift_allocObject();
    v63 = OSSignpostIntervalState.init(id:isOpen:)();
    (*(v8 + 8))(v13, v7);
    v39 = sub_100183EFC(_swiftEmptyArrayStorage);
    sub_10000BE18((v4 + 288), *(v4 + 312));
    sub_100033A6C(222);
    v41 = v40;
    v42 = *(v4 + 232);
    v43 = *(v4 + 240);
    sub_10000BE18((v4 + 208), v42);
    (*(v43 + 8))(3736321, v41, v39, v42, v43);
    v64 = v15;

    v44 = *(v4 + 32);
    ObjectType = swift_getObjectType();
    v46 = swift_allocObject();
    swift_weakInit();
    v76 = sub_1000B5120;
    v77 = v46;
    aBlock = _NSConcreteStackBlock;
    v73 = 1107296256;
    v74 = sub_100003974;
    v75 = &unk_1003827A0;
    v47 = _Block_copy(&aBlock);

    v48 = v65;
    j___s8Dispatch0A3QoSV11unspecifiedACvgZ(ObjectType);
    v49 = v67;
    sub_1000039BC(ObjectType, v50, v51);
    v61 = ObjectType;
    v62 = v44;
    OS_dispatch_source.setEventHandler(qos:flags:handler:)();
    _Block_release(v47);
    isa = v70[1].isa;
    ++v70;
    v60 = isa;
    v53 = v68;
    (isa)(v49, v68);
    v66 = *(v66 + 8);
    (v66)(v48, v69);

    v59[1] = *(v4 + 24);
    v54 = swift_allocObject();
    swift_weakInit();
    v76 = sub_1000B3F4C;
    v77 = v54;
    aBlock = _NSConcreteStackBlock;
    v73 = 1107296256;
    v74 = sub_100003974;
    v75 = &unk_1003827C8;
    v55 = _Block_copy(&aBlock);

    static DispatchQoS.unspecified.getter();
    v71 = _swiftEmptyArrayStorage;
    sub_1000B4F88(&qword_10039E2A0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_100004074(&qword_10039DD40, &qword_1002BFEC0);
    sub_10000BEC0(&qword_10039E2B0, &qword_10039DD40, &qword_1002BFEC0);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v55);
    v60(v49, v53);
    (v66)(v48, v69);

    v56 = Logger.logObject.getter();
    v57 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      *v58 = 0;
      _os_log_impl(&_mh_execute_header, v56, v57, "Background process started", v58, 2u);
    }

    OS_dispatch_source.resume()();
    sub_1000AEC40(v63);
  }
}

uint64_t sub_1000AEC40(uint64_t a1)
{
  v1 = type metadata accessor for OSSignpostError();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OSSignpostID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10039D4D8 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for OSSignposter();
  sub_10000403C(v9, qword_1003A13E0);
  v10 = OSSignposter.logHandle.getter();
  OSSignpostIntervalState.signpostID.getter();
  v11 = static os_signpost_type_t.end.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {

    checkForErrorAndConsumeState(state:)();

    if ((*(v2 + 88))(v4, v1) == enum case for OSSignpostError.doubleEnd(_:))
    {
      v12 = "[Error] Interval already ended";
    }

    else
    {
      (*(v2 + 8))(v4, v1);
      v12 = "end start monitoring";
    }

    v13 = swift_slowAlloc();
    *v13 = 0;
    v14 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v10, v11, v14, "start-monitoring", v12, v13, 2u);
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1000AEECC(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1000AFA74();
  }

  return result;
}

void sub_1000AEF24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v59 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v58 = *(v8 - 8);
  __chkstk_darwin(v8);
  v57 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for OSSignpostID();
  v55 = *(v10 - 8);
  v56 = v10;
  v11 = __chkstk_darwin(v10);
  v13 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v53 - v14;
  if (qword_10039D4D0 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  v17 = sub_10000403C(v16, qword_1003A13C8);

  v60 = v17;
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v54 = v6;
    aBlock[0] = v21;
    *v20 = 136315394;
    v22 = sub_1000A7D74();
    v24 = sub_100008F6C(v22, v23, aBlock);
    v53 = v4;
    v25 = v15;
    v26 = v13;
    v27 = v8;
    v28 = v5;
    v29 = v24;

    *(v20 + 4) = v29;
    *(v20 + 12) = 2080;
    v30 = showFunction(signature:_:)(0x2928706F7473, 0xE600000000000000, _swiftEmptyArrayStorage);
    v32 = sub_100008F6C(v30, v31, aBlock);

    *(v20 + 14) = v32;
    v5 = v28;
    v8 = v27;
    v13 = v26;
    v15 = v25;
    v4 = v53;
    _os_log_impl(&_mh_execute_header, v18, v19, "%s.%s", v20, 0x16u);
    swift_arrayDestroy();
    v6 = v54;
  }

  if (*(v4 + 16) == 1)
  {
    *(v4 + 16) = 0;
    if (qword_10039D4D8 != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for OSSignposter();
    sub_10000403C(v33, qword_1003A13E0);
    static OSSignpostID.exclusive.getter();
    v34 = OSSignposter.logHandle.getter();
    v35 = static os_signpost_type_t.begin.getter();
    if (OS_os_log.signpostsEnabled.getter())
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      v37 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v34, v35, v37, "stop-monitoring", "begin stop monitoring", v36, 2u);
    }

    v39 = v55;
    v38 = v56;
    (*(v55 + 16))(v13, v15, v56);
    type metadata accessor for OSSignpostIntervalState();
    swift_allocObject();
    v40 = OSSignpostIntervalState.init(id:isOpen:)();
    (*(v39 + 8))(v15, v38);
    ObjectType = swift_getObjectType();
    aBlock[4] = nullsub_1;
    aBlock[5] = 0;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100003974;
    aBlock[3] = &unk_100382750;
    v42 = _Block_copy(aBlock);
    v43 = v57;
    j___s8Dispatch0A3QoSV11unspecifiedACvgZ(ObjectType);
    v44 = v59;
    sub_1000039BC(ObjectType, v45, v46);
    OS_dispatch_source.setEventHandler(qos:flags:handler:)();
    _Block_release(v42);
    (*(v6 + 8))(v44, v5);
    (*(v58 + 8))(v43, v8);
    OS_dispatch_source.suspend()();
    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      *v49 = 0;
      _os_log_impl(&_mh_execute_header, v47, v48, "Background process stopped", v49, 2u);
    }

    sub_1000AF5E4(v40);
  }

  else
  {
    v60 = Logger.logObject.getter();
    v50 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v60, v50))
    {
      v51 = swift_slowAlloc();
      *v51 = 0;
      _os_log_impl(&_mh_execute_header, v60, v50, "Background process already stopped", v51, 2u);
    }

    v52 = v60;
  }
}

uint64_t sub_1000AF5E4(uint64_t a1)
{
  v1 = type metadata accessor for OSSignpostError();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OSSignpostID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10039D4D8 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for OSSignposter();
  sub_10000403C(v9, qword_1003A13E0);
  v10 = OSSignposter.logHandle.getter();
  OSSignpostIntervalState.signpostID.getter();
  v11 = static os_signpost_type_t.end.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {

    checkForErrorAndConsumeState(state:)();

    if ((*(v2 + 88))(v4, v1) == enum case for OSSignpostError.doubleEnd(_:))
    {
      v12 = "[Error] Interval already ended";
    }

    else
    {
      (*(v2 + 8))(v4, v1);
      v12 = "end stop monitoring";
    }

    v13 = swift_slowAlloc();
    *v13 = 0;
    v14 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v10, v11, v14, "stop-monitoring", v12, v13, 2u);
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1000AF870()
{
  if (qword_10039D4D0 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10000403C(v0, qword_1003A13C8);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v3 = 136315394;
    v4 = _typeName(_:qualified:)();
    v6 = sub_100008F6C(v4, v5, &v11);

    *(v3 + 4) = v6;
    *(v3 + 12) = 2080;
    v7 = showFunction(signature:_:)(0xD000000000000010, 0x800000010034B070, _swiftEmptyArrayStorage);
    v9 = sub_100008F6C(v7, v8, &v11);

    *(v3 + 14) = v9;
    _os_log_impl(&_mh_execute_header, v1, v2, "%s.%s", v3, 0x16u);
    swift_arrayDestroy();
  }

  return OS_dispatch_queue.sync<A>(execute:)();
}

void sub_1000AFA74()
{
  v1 = v0;
  if (qword_10039D768 != -1)
  {
    swift_once();
  }

  if ((*(static Terminator.shared + 16) & 1) == 0)
  {
    v5 = sub_100183EFC(_swiftEmptyArrayStorage);
    sub_10000BE18((v0 + 288), *(v0 + 312));
    sub_100033A6C(206);
    v7 = v6;
    v8 = *(v1 + 232);
    v9 = *(v1 + 240);
    sub_10000BE18((v1 + 208), v8);
    (*(v9 + 8))(1311489, v7, v5, v8, v9);

    if (*(v1 + 48) == 1)
    {
      if ((sub_1000B04D8() & 1) == 0)
      {
        return;
      }
    }

    else if ((sub_1000AFEF8() & 1) == 0)
    {
      return;
    }

    v10 = sub_100183EFC(_swiftEmptyArrayStorage);
    sub_10000BE18((v1 + 288), *(v1 + 312));
    sub_100033A6C(206);
    v12 = v11;
    v13 = *(v1 + 232);
    v14 = *(v1 + 240);
    sub_10000BE18((v1 + 208), v13);
    (*(v14 + 8))(1377025, v12, v10, v13, v14);

    return;
  }

  if (qword_10039D4D0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000403C(v2, qword_1003A13C8);
  oslog = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v3, "Attestation cancelled: shutdown in progress", v4, 2u);
  }
}

uint64_t sub_1000AFEF8()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchTimeInterval();
  v42 = *(v2 - 8);
  v43 = v2;
  v3 = __chkstk_darwin(v2);
  v41 = (&v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v3);
  v40 = &v38 - v5;
  v6 = type metadata accessor for DispatchTime();
  v38 = *(v6 - 8);
  v39 = v6;
  v7 = __chkstk_darwin(v6);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v38 - v10;
  if (qword_10039D4D0 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_10000403C(v12, qword_1003A13C8);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v44[0] = swift_slowAlloc();
    *v15 = 136315394;
    v16 = _typeName(_:qualified:)();
    v18 = sub_100008F6C(v16, v17, v44);

    *(v15 + 4) = v18;
    *(v15 + 12) = 2080;
    v19 = showFunction(signature:_:)(0xD00000000000001ALL, 0x800000010034B050, _swiftEmptyArrayStorage);
    v21 = sub_100008F6C(v19, v20, v44);

    *(v15 + 14) = v21;
    _os_log_impl(&_mh_execute_header, v13, v14, "%s.%s", v15, 0x16u);
    swift_arrayDestroy();
  }

  v22 = sub_100183EFC(_swiftEmptyArrayStorage);
  sub_10000BE18(v1 + 36, v1[39]);
  sub_100033A6C(222);
  v24 = v23;
  v25 = v1[29];
  v26 = v1[30];
  sub_10000BE18(v1 + 26, v25);
  (*(v26 + 8))(3736321, v24, v22, v25, v26);

  sub_1000A8D1C(v27);
  if (v1[47])
  {
    v36 = v1[48];
    ObjectType = swift_getObjectType();
    (*(v36 + 8))(0, ObjectType, v36);
  }

  swift_getObjectType();
  static DispatchTime.now()();
  + infix(_:_:)();
  v28 = *(v38 + 8);
  v29 = v9;
  v30 = v39;
  v28(v29, v39);
  v31 = v40;
  sub_100146FDC(v40);
  v32 = v41;
  sub_100147050(v41);
  OS_dispatch_source_timer.schedule(deadline:repeating:leeway:)();
  v33 = v43;
  v34 = *(v42 + 8);
  v34(v32, v43);
  v34(v31, v33);
  v28(v11, v30);
  return 1;
}

uint64_t sub_1000B04D8()
{
  v0 = type metadata accessor for DispatchTimeInterval();
  v54 = *(v0 - 8);
  v55 = v0;
  v1 = __chkstk_darwin(v0);
  v53 = (&v48 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v1);
  v52 = &v48 - v3;
  v4 = type metadata accessor for DispatchTime();
  v50 = *(v4 - 8);
  v51 = v4;
  v5 = __chkstk_darwin(v4);
  v7 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v49 = &v48 - v8;
  if (qword_10039D4D0 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_10000403C(v9, qword_1003A13C8);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v64[0] = swift_slowAlloc();
    *v12 = 136315394;
    v13 = _typeName(_:qualified:)();
    v15 = sub_100008F6C(v13, v14, v64);

    *(v12 + 4) = v15;
    *(v12 + 12) = 2080;
    v16 = showFunction(signature:_:)(0xD00000000000001BLL, 0x800000010034B030, _swiftEmptyArrayStorage);
    v18 = sub_100008F6C(v16, v17, v64);

    *(v12 + 14) = v18;
    _os_log_impl(&_mh_execute_header, v10, v11, "%s.%s", v12, 0x16u);
    swift_arrayDestroy();
  }

  sub_1000B3E14(v63);
  v19 = v57;
  sub_10000BE18(v57 + 36, v57[39]);
  sub_100033A6C(222);
  v21 = v20;
  v22 = v19[29];
  v23 = v19[30];
  sub_10000BE18(v19 + 26, v22);
  v24 = sub_100183EFC(_swiftEmptyArrayStorage);
  (*(v23 + 8))(3736321, v21, v24, v22, v23);
  v56 = 1;

  memcpy(v62, v63, 0x122uLL);
  v25 = v57;
  sub_10000BE18(v25 + 36, v25[39]);
  if (sub_100032BAC(v21, v25[8]))
  {
    v48 = 0;
    memcpy(v64, v62, 0x122uLL);
    if (sub_1000B4148(v64) == 1)
    {
      v26 = v62;
      goto LABEL_15;
    }

    v32 = v64[36];
    v33 = BYTE1(v64[36]);
    v34 = v64[35];
    v35 = v64[34];
    memcpy(v61, v62, 0x122uLL);
    sub_100031B40(v61, v59);
    memcpy(v59, v62, 0x122uLL);
    memcpy(v60, v64, sizeof(v60));
  }

  else
  {
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, v27, v28, "Offline attestation failed to validate complete attestation data, clearing attestation token", v29, 2u);
    }

    if (qword_10039D340 != -1)
    {
      swift_once();
    }

    memcpy(v61, &unk_1003A6940, 0x122uLL);
    sub_100031B40(v61, v64);
    sub_10000BD44(v62, &qword_1003A1620, &unk_1002C5960);
    memcpy(v64, v61, 0x122uLL);
    nullsub_1();
    sub_1000B3E4C();
    v30 = swift_allocError();
    *v31 = 7;
    *(v31 + 8) = 1;

    v32 = v61[36];
    v33 = BYTE1(v61[36]);
    v34 = v61[35];
    v35 = v61[34];
    sub_100031B40(v61, v59);
    memcpy(v59, v64, 0x122uLL);
    memcpy(v60, v61, sizeof(v60));
    v56 = 0;
    v48 = v30;
  }

  memcpy(v58, v60, 0x110uLL);
  v58[34] = v35;
  v58[35] = v34;
  LOBYTE(v58[36]) = v32;
  BYTE1(v58[36]) = v33;
  memcpy(v64, v58, 0x122uLL);
  sub_10000BE18(v25 + 36, v25[39]);
  sub_10003385C(v64);
  sub_100031B78(v58);
  v26 = v59;
LABEL_15:
  memcpy(v61, v26, 0x122uLL);
  swift_getObjectType();
  static DispatchTime.now()();
  v36 = v49;
  + infix(_:_:)();
  v37 = *(v50 + 8);
  v38 = v7;
  v39 = v51;
  v37(v38, v51);
  v40 = v52;
  sub_100146FDC(v52);
  v41 = v53;
  sub_100147050(v53);
  OS_dispatch_source_timer.schedule(deadline:repeating:leeway:)();
  v42 = v55;
  v43 = *(v54 + 8);
  v43(v41, v55);
  v43(v40, v42);
  v37(v36, v39);
  v44 = v48;
  if (v57[47])
  {
    v45 = v57[48];
    ObjectType = swift_getObjectType();
    (*(v45 + 8))(v44, ObjectType, v45);
  }

  sub_10000BD44(v61, &qword_1003A1620, &unk_1002C5960);

  return v56;
}

uint64_t sub_1000B0D18(double a1)
{
  if (qword_10039D4D0 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000403C(v3, qword_1003A13C8);

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *v6 = 136315394;
    v7 = sub_1000A7D74();
    v9 = sub_100008F6C(v7, v8, &v22);

    *(v6 + 4) = v9;
    *(v6 + 12) = 2080;
    v10 = showFunction(signature:_:)(0xD00000000000002ELL, 0x800000010034B000, _swiftEmptyArrayStorage);
    v12 = sub_100008F6C(v10, v11, &v22);

    *(v6 + 14) = v12;
    _os_log_impl(&_mh_execute_header, v4, v5, "%s.%s", v6, 0x16u);
    swift_arrayDestroy();
  }

  v13 = *(v1 + 48);
  sub_10000BE18((v1 + 288), *(v1 + 312));
  if (v13)
  {
    sub_100033A6C(222);
    v15 = v14;
    sub_10000BE18((v1 + 288), *(v1 + 312));
    v16 = sub_100032BAC(v15, *(v1 + 64));
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 67109120;
      *(v19 + 4) = v16 & 1;
      v20 = "isOfflineAttested(): %{BOOL}d";
LABEL_10:
      _os_log_impl(&_mh_execute_header, v17, v18, v20, v19, 8u);
    }
  }

  else
  {
    v16 = sub_100032448(a1);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 67109120;
      *(v19 + 4) = v16 & 1;
      v20 = "isOnlineAttested(): %{BOOL}d";
      goto LABEL_10;
    }
  }

  return v16 & 1;
}

uint64_t sub_1000B100C(uint64_t a1, double a2)
{
  v5 = *v2;
  v6 = type metadata accessor for OSSignpostID();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v24 - v11;
  if (qword_10039D4D8 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for OSSignposter();
  sub_10000403C(v13, qword_1003A13E0);
  static OSSignpostID.exclusive.getter();
  v14 = OSSignposter.logHandle.getter();
  v15 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v16 = swift_slowAlloc();
    v25 = v5;
    v17 = a1;
    v18 = v16;
    *v16 = 0;
    v19 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v14, v15, v19, "attestation-checkpoint", "begin attestation checkpoint", v18, 2u);
    a1 = v17;
    v5 = v25;
  }

  (*(v7 + 16))(v10, v12, v6);
  type metadata accessor for OSSignpostIntervalState();
  swift_allocObject();
  v20 = OSSignpostIntervalState.init(id:isOpen:)();
  v21 = (*(v7 + 8))(v12, v6);
  __chkstk_darwin(v21);
  *(&v24 - 4) = v2;
  *(&v24 - 3) = a2;
  *(&v24 - 2) = a1;
  *(&v24 - 1) = v5;
  OS_dispatch_queue.sync<A>(execute:)();
  v22 = v26;
  sub_1000B12D8(v20);

  return v22;
}

uint64_t sub_1000B12D8(uint64_t a1)
{
  v1 = type metadata accessor for OSSignpostError();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OSSignpostID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10039D4D8 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for OSSignposter();
  sub_10000403C(v9, qword_1003A13E0);
  v10 = OSSignposter.logHandle.getter();
  OSSignpostIntervalState.signpostID.getter();
  v11 = static os_signpost_type_t.end.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {

    checkForErrorAndConsumeState(state:)();

    if ((*(v2 + 88))(v4, v1) == enum case for OSSignpostError.doubleEnd(_:))
    {
      v12 = "[Error] Interval already ended";
    }

    else
    {
      (*(v2 + 8))(v4, v1);
      v12 = "end attestation checkpoint";
    }

    v13 = swift_slowAlloc();
    *v13 = 0;
    v14 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v10, v11, v14, "attestation-checkpoint", v12, v13, 2u);
  }

  return (*(v6 + 8))(v8, v5);
}

void sub_1000B1564(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a4@<X8>, double a5@<D0>)
{
  v47 = a4;
  v8 = sub_100004074(&qword_1003A0178, &unk_1002C3BB0);
  __chkstk_darwin(v8 - 8);
  v10 = &v43 - v9;
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((sub_1000B0D18(a5) & 1) == 0)
  {
    sub_100065074(a2, v10, &qword_1003A0178, &unk_1002C3BB0);
    if ((*(v12 + 48))(v10, 1, v11) == 1)
    {
      sub_10000BD44(v10, &qword_1003A0178, &unk_1002C3BB0);
    }

    else
    {
      (*(v12 + 32))(v14, v10, v11);
      sub_10000BE18((a1 + 288), *(a1 + 312));
      sub_100034704(v54);
      v19 = &unk_10039D000;
      if (*(a1 + 48) == 1 && (memcpy(v61, v54, sizeof(v61)), sub_100031A30(v61) == 1))
      {
        sub_100031B40(v54, v60);
        if ((sub_1000B2448() & 1) == 0)
        {
          if (qword_10039D4D0 != -1)
          {
            swift_once();
          }

          v20 = type metadata accessor for Logger();
          v21 = sub_10000403C(v20, qword_1003A13C8);
          v22 = Logger.logObject.getter();
          v46 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v22, v46))
          {
            v23 = swift_slowAlloc();
            v44 = v21;
            v24 = v23;
            v43 = swift_slowAlloc();
            v60[0] = v43;
            *v24 = 136315394;
            v25 = _typeName(_:qualified:)();
            v27 = sub_100008F6C(v25, v26, v60);
            v45 = v22;
            v28 = v27;
            v19 = &unk_10039D000;

            *(v24 + 4) = v28;
            *(v24 + 12) = 2080;
            *(v24 + 14) = sub_100008F6C(0xD000000000000035, 0x800000010034AFC0, v60);
            _os_log_impl(&_mh_execute_header, v45, v46, "%s.%s: MPOCOperationMode: offline, Attestation Token: nil, No reboot. Attempt recovery...", v24, 0x16u);
            swift_arrayDestroy();

            v21 = v44;
          }

          else
          {
          }

          sub_10000BE18((a1 + 336), *(a1 + 360));
          sub_10003D678(v14, v55);
          v58[0] = v55[0];
          v58[1] = v55[1];
          *v59 = v55[2];
          *&v59[16] = v56;
          sub_100065074(v58, v60, &qword_1003A1618, &unk_1002C5950);
          sub_100041D1C(v55);
          if (*(&v58[0] + 1))
          {
            v62 = *&v59[8];
            sub_100065074(&v62, v60, &qword_1003A0410, &unk_1002C3DA0);
            sub_10000BD44(v58, &qword_1003A1618, &unk_1002C5950);
            if (*(&v62 + 1))
            {
              v33 = v48;
              sub_100176DD8(v62, *(&v62 + 1), v57);
              if (v33)
              {

                v48 = 0;
              }

              else
              {
                v48 = 0;
                memcpy(v53, v57, sizeof(v53));
                v34 = Logger.logObject.getter();
                v46 = static os_log_type_t.default.getter();
                if (os_log_type_enabled(v34, v46))
                {
                  v35 = swift_slowAlloc();
                  v44 = v21;
                  v36 = v35;
                  v45 = swift_slowAlloc();
                  v60[0] = v45;
                  *v36 = 136315394;
                  v37 = _typeName(_:qualified:)();
                  v43 = v34;
                  v39 = sub_100008F6C(v37, v38, v60);

                  *(v36 + 4) = v39;
                  *(v36 + 12) = 2080;
                  *(v36 + 14) = sub_100008F6C(0xD000000000000035, 0x800000010034AFC0, v60);
                  v34 = v43;
                  _os_log_impl(&_mh_execute_header, v43, v46, "%s.%s: Found persisted attestation token, checkAttestationState again...", v36, 0x16u);
                  swift_arrayDestroy();
                }

                memcpy(v50, v54, sizeof(v50));
                memcpy(v51, v53, sizeof(v51));
                nullsub_1();
                memcpy(v52, v50, sizeof(v52));
                sub_100031B40(v54, v60);
                sub_10000BD44(v52, &qword_10039F268, &qword_1002C2730);
                memcpy(v50, v51, 0x110uLL);
                sub_10000BE18((a1 + 288), *(a1 + 312));
                memcpy(v60, v50, 0x122uLL);
                sub_10003385C(v60);
                if (sub_1000B0D18(a5))
                {
                  v40 = Logger.logObject.getter();
                  v41 = static os_log_type_t.debug.getter();
                  if (os_log_type_enabled(v40, v41))
                  {
                    v42 = swift_slowAlloc();
                    *v42 = 0;
                    _os_log_impl(&_mh_execute_header, v40, v41, "checkAttestationState: persisted attestation token is valid", v42, 2u);

                    sub_100031B78(v54);
                  }

                  else
                  {
                    sub_100031B78(v54);
                  }

                  (*(v12 + 8))(v14, v11);
                  *v47 = 1;
                  memcpy(v49, v50, 0x122uLL);
                  sub_100031B78(v49);
                  return;
                }

                memcpy(v49, v50, 0x122uLL);
                sub_100031B78(v49);
              }
            }
          }
        }
      }

      else
      {
        sub_100031B40(v54, v60);
      }

      if (v19[154] != -1)
      {
        swift_once();
      }

      v29 = type metadata accessor for Logger();
      sub_10000403C(v29, qword_1003A13C8);
      v30 = Logger.logObject.getter();
      v31 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        *v32 = 0;
        _os_log_impl(&_mh_execute_header, v30, v31, "checkAttestationState: false (not attested)", v32, 2u);

        sub_100031B78(v54);
      }

      else
      {
        sub_100031B78(v54);
      }

      (*(v12 + 8))(v14, v11);
    }

    *v47 = 0;
    return;
  }

  if (qword_10039D4D0 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_10000403C(v15, qword_1003A13C8);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&_mh_execute_header, v16, v17, "checkAttestationState: true (attested)", v18, 2u);
  }

  *v47 = 1;
}

uint64_t sub_1000B1E44()
{
  if (qword_10039D4D0 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10000403C(v0, qword_1003A13C8);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v30[0] = swift_slowAlloc();
    *v3 = 136315394;
    v4 = _typeName(_:qualified:)();
    v6 = sub_100008F6C(v4, v5, v30);

    *(v3 + 4) = v6;
    *(v3 + 12) = 2080;
    v7 = showFunction(signature:_:)(0x55746F6F42746567, 0xED00002928444955, _swiftEmptyArrayStorage);
    v9 = sub_100008F6C(v7, v8, v30);

    *(v3 + 14) = v9;
    _os_log_impl(&_mh_execute_header, v1, v2, "%s.%s", v3, 0x16u);
    swift_arrayDestroy();
  }

  v31 = xmmword_1002C3C70;
  v28 = 37;
  v10 = swift_slowAlloc();
  if (!sysctlbyname("kern.bootsessionuuid", v10, &v28, 0, 0))
  {
    if (__OFSUB__(v28, 1))
    {
      __break(1u);
    }

    v11 = sub_100146EDC(v10, v10 + v28 - 1);
    v13 = v12;
    sub_10001A074(v31, *(&v31 + 1));
    *&v31 = v11;
    *(&v31 + 1) = v13;
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v29 = v17;
      *v16 = 136315138;
      swift_beginAccess();
      countAndFlagsBits = 0;
      object = 0;
      v20 = *(&v31 + 1);
      if (*(&v31 + 1) >> 60 != 15)
      {
        v21 = v31;
        sub_1000094F4(v31, *(&v31 + 1));
        v22 = Data.hexString()();
        countAndFlagsBits = v22._countAndFlagsBits;
        object = v22._object;
        sub_10001A074(v21, v20);
      }

      v30[0] = countAndFlagsBits;
      v30[1] = object;
      sub_100004074(&qword_1003A0410, &unk_1002C3DA0);
      v23 = String.init<A>(describing:)();
      v25 = sub_100008F6C(v23, v24, &v29);

      *(v16 + 4) = v25;
      _os_log_impl(&_mh_execute_header, v14, v15, "bootUUID data: %s", v16, 0xCu);
      sub_10000959C(v17);
    }
  }

  swift_beginAccess();
  v26 = v31;
  sub_10001A3E8(v31, *(&v31 + 1));
  sub_10001A074(v26, *(&v26 + 1));
  return v26;
}

uint64_t sub_1000B2244()
{
  if (qword_10039D4D0 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10000403C(v0, qword_1003A13C8);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v11[0] = swift_slowAlloc();
    *v3 = 136315394;
    v4 = _typeName(_:qualified:)();
    v6 = sub_100008F6C(v4, v5, v11);

    *(v3 + 4) = v6;
    *(v3 + 12) = 2080;
    v7 = showFunction(signature:_:)(0xD00000000000001BLL, 0x800000010034AF60, _swiftEmptyArrayStorage);
    v9 = sub_100008F6C(v7, v8, v11);

    *(v3 + 14) = v9;
    _os_log_impl(&_mh_execute_header, v1, v2, "%s.%s", v3, 0x16u);
    swift_arrayDestroy();
  }

  OS_dispatch_queue.sync<A>(execute:)();
  return LOBYTE(v11[0]);
}

uint64_t sub_1000B2448()
{
  v1 = sub_1000B1E44();
  if (v2 >> 60 == 15)
  {
    if (qword_10039D4D0 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_10000403C(v3, qword_1003A13C8);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "Need boot UUID", v6, 2u);
    }

LABEL_19:
    v17 = 1;
    goto LABEL_20;
  }

  v7 = v1;
  v8 = v2;
  v9 = v0[12];
  v10 = v0[13];
  sub_10000BE18(v0 + 9, v9);
  if (qword_10039D4E8 != -1)
  {
    swift_once();
  }

  v11 = (*(v10 + 32))(qword_1003A6B98, unk_1003A6BA0, v9, v10);
  v13 = v12;
  if (!sub_10017688C(v7, v8, v11, v12))
  {
    if (qword_10039D4D0 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_10000403C(v18, qword_1003A13C8);
    v4 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v4, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v4, v19, "Device reboot detected", v20, 2u);
    }

    sub_100009548(v11, v13);
    sub_10001A074(v7, v8);
    goto LABEL_19;
  }

  sub_100009548(v11, v13);
  if (qword_10039D4D0 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_10000403C(v14, qword_1003A13C8);
  v4 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v4, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v4, v15, "Got previousBootUUID, no reboot detected", v16, 2u);
  }

  sub_10001A074(v7, v8);
  v17 = 0;
LABEL_20:

  return v17;
}

uint64_t sub_1000B2850()
{
  v1 = v0;
  if (qword_10039D4D0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000403C(v2, qword_1003A13C8);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *v5 = 136315394;
    v6 = _typeName(_:qualified:)();
    v8 = sub_100008F6C(v6, v7, &v22);

    *(v5 + 4) = v8;
    *(v5 + 12) = 2080;
    v9 = showFunction(signature:_:)(0x6F6F4265726F7473, 0xEF29284449555574, _swiftEmptyArrayStorage);
    v11 = sub_100008F6C(v9, v10, &v22);

    *(v5 + 14) = v11;
    _os_log_impl(&_mh_execute_header, v3, v4, "%s.%s", v5, 0x16u);
    swift_arrayDestroy();
  }

  v12 = sub_1000B1E44();
  if (v13 >> 60 == 15)
  {
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "Could not getBootUUID to storeBootUUID", v16, 2u);
    }

    sub_100020148(2035, 0x6F6F62206465654ELL, 0xEE00444955552074, 0);
    return swift_willThrow();
  }

  else
  {
    v18 = v13;
    v19 = v12;
    v20 = v1[12];
    v21 = v1[13];
    sub_10000BE18(v1 + 9, v20);
    if (qword_10039D4E8 != -1)
    {
      swift_once();
    }

    (*(v21 + 40))(qword_1003A6B98, unk_1003A6BA0, v19, v18, v20, v21);
    return sub_10001A074(v19, v18);
  }
}

uint64_t sub_1000B2B84(double a1)
{
  v2 = v1;
  v4 = sub_100004074(&unk_1003A3BE0, &qword_1002C36F0);
  __chkstk_darwin(v4 - 8);
  v6 = v38 - v5;
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10039D4D0 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  v12 = sub_10000403C(v11, qword_1003A13C8);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v39 = v10;
    v16 = v15;
    v17 = swift_slowAlloc();
    v38[1] = v12;
    v40 = v17;
    *v16 = 136315394;
    v18 = _typeName(_:qualified:)();
    v20 = sub_100008F6C(v18, v19, &v40);

    *(v16 + 4) = v20;
    *(v16 + 12) = 2080;
    v21 = showFunction(signature:_:)(0xD000000000000012, 0x800000010034AF40, _swiftEmptyArrayStorage);
    v23 = sub_100008F6C(v21, v22, &v40);

    *(v16 + 14) = v23;
    _os_log_impl(&_mh_execute_header, v13, v14, "%s.%s", v16, 0x16u);
    swift_arrayDestroy();

    v10 = v39;
  }

  sub_10000BE18((v2 + 112), *(v2 + 136));
  sub_100043268(v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_10000BD44(v6, &unk_1003A3BE0, &qword_1002C36F0);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v24, v25, "Could not calculate secure now, using default send rate", v26, 2u);
    }

    v27 = *(v2 + 56);
LABEL_9:
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 134217984;
      *(v30 + 4) = v27;
      _os_log_impl(&_mh_execute_header, v28, v29, "Using send rate: %f", v30, 0xCu);
    }

    return *&v27;
  }

  (*(v8 + 32))(v10, v6, v7);
  Date.timeIntervalSince1970.getter();
  v27 = a1 - v32;
  if (v27 > 0.0)
  {
    (*(v8 + 8))(v10, v7);
    v33 = *(v2 + 56);
    if (v27 > v33)
    {
      if ((*&v33 & 0xFFFFFFFFFFFFFLL) != 0)
      {
        v34 = v27;
      }

      else
      {
        v34 = *(v2 + 56);
      }

      if ((~*&v33 & 0x7FF0000000000000) != 0)
      {
        v27 = *(v2 + 56);
      }

      else
      {
        v27 = v34;
      }
    }

    goto LABEL_9;
  }

  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    *v37 = 0;
    _os_log_impl(&_mh_execute_header, v35, v36, "Deadline already passed", v37, 2u);
  }

  (*(v8 + 8))(v10, v7);
  return 0;
}

BOOL sub_1000B3194(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (a1[2] == a2[2] ? (v5 = a1[3] == a2[3]) : (v5 = 0), v5 || (_stringCompareWithSmolCheck(_:_:expecting:)()))
  {
    return a1[4] == a2[4];
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_1000B3224(char a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t *a16)
{
  v79 = a6;
  v81 = a3;
  v80 = a10;
  v67 = *a16;
  v75 = type metadata accessor for OS_dispatch_source.TimerFlags();
  v74 = *(v75 - 8);
  __chkstk_darwin(v75);
  v73 = &v63 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v72);
  v71 = &v63 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v68 = *(v25 - 8);
  __chkstk_darwin(v25);
  v70 = &v63 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v27 - 8);
  v69 = &v63 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88[3] = type metadata accessor for DefaultSecureTimeKeeper();
  v88[4] = &off_100384E70;
  v88[0] = a4;
  v87[3] = type metadata accessor for SecureElement();
  v87[4] = &off_1003849A0;
  v87[0] = a5;
  v86[3] = type metadata accessor for MPOCDefaultAttestationManager();
  v86[4] = &off_100380AA8;
  v86[0] = a11;
  v85[3] = type metadata accessor for ProfileManager();
  v85[4] = &off_100380E88;
  v85[0] = a13;
  *(a16 + 16) = 0;
  type metadata accessor for DefaultStateMachine();
  v29 = swift_allocObject();
  v83 = &type metadata for AttemptedSendBatchState;
  v84 = sub_1000A62C8();
  sub_10000CCE4(&v82, v29 + 16);
  sub_100004074(&qword_1003A1660, &unk_1002C5998);
  v30 = swift_allocObject();
  *(v30 + 56) = 0;
  sub_100029790(&v82, v30 + 16);
  *(v29 + 56) = v30;
  a16[5] = v29;
  if (qword_10039D4D0 != -1)
  {
    swift_once();
  }

  v31 = a15;
  v78 = a14;
  v77 = a12;
  v32 = type metadata accessor for Logger();
  v66 = sub_10000403C(v32, qword_1003A13C8);
  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.default.getter();
  v35 = os_log_type_enabled(v33, v34);
  v76 = a8;
  if (v35)
  {
    v36 = swift_slowAlloc();
    v64 = a15;
    v37 = v36;
    v38 = swift_slowAlloc();
    v65 = a2;
    v63 = a7;
    *&v82 = v38;
    *v37 = 136315394;
    v39 = _typeName(_:qualified:)();
    v40 = a1;
    v41 = v25;
    v43 = sub_100008F6C(v39, v42, &v82);

    *(v37 + 4) = v43;
    *(v37 + 12) = 2080;
    v44 = showFunction(signature:_:)(0xD0000000000000BBLL, 0x800000010034B1A0, _swiftEmptyArrayStorage);
    v46 = sub_100008F6C(v44, v45, &v82);

    *(v37 + 14) = v46;
    v25 = v41;
    a1 = v40;
    _os_log_impl(&_mh_execute_header, v33, v34, "%s.%s", v37, 0x16u);
    swift_arrayDestroy();
    a7 = v63;
    a2 = v65;
    a8 = v76;

    v31 = v64;
  }

  LODWORD(v67) = a1 & 1;
  *(a16 + 48) = a1 & 1;
  *(a16 + 7) = a9;
  a16[8] = a2;
  v47 = v81;
  sub_10000CCE4(v81, (a16 + 9));
  sub_10000CCE4(v88, (a16 + 14));
  sub_10000CCE4(v87, (a16 + 19));
  a16[24] = v79;
  a16[25] = a7;
  sub_10000CCE4(a8, (a16 + 26));
  sub_10000CCE4(v80, (a16 + 31));
  sub_10000CCE4(v86, (a16 + 36));
  a16[41] = v77;
  sub_10000CCE4(v85, (a16 + 42));
  a16[47] = v78;
  a16[48] = v31;
  sub_10000411C(0, &qword_10039D7D8, OS_dispatch_queue_ptr);
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();

  static DispatchQoS.background.getter();
  (*(v68 + 104))(v70, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v25);
  *&v82 = _swiftEmptyArrayStorage;
  sub_1000B4F88(&unk_10039E310, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_100004074(&qword_10039D7E0, &unk_1002BDC40);
  sub_10000BEC0(&qword_10039E320, &qword_10039D7E0, &unk_1002BDC40);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v48 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  a16[3] = v48;
  sub_10000411C(0, &qword_10039D7E8, OS_dispatch_source_ptr);
  *&v82 = _swiftEmptyArrayStorage;
  sub_1000B4F88(&qword_1003A1668, &type metadata accessor for OS_dispatch_source.TimerFlags, &protocol conformance descriptor for OS_dispatch_source.TimerFlags);
  v49 = v48;
  sub_100004074(&qword_1003A1670, &qword_1002C59A8);
  sub_10000BEC0(&qword_1003A1678, &qword_1003A1670, &qword_1002C59A8);
  v50 = v73;
  v51 = v75;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v52 = static OS_dispatch_source.makeTimerSource(flags:queue:)();

  (*(v74 + 8))(v50, v51);
  a16[4] = v52;
  v53 = v47[3];
  v54 = v47[4];
  sub_10000BE18(v47, v53);
  if (qword_10039D4E0 != -1)
  {
    swift_once();
  }

  v55 = qword_1003A6B88;
  v56 = unk_1003A6B90;
  sub_100004074(&qword_10039E2E0, &qword_1002C1720);
  v57 = swift_allocObject();
  *(v57 + 16) = xmmword_1002C1660;
  *(v57 + 32) = v67;
  v58 = sub_10014B8C8(v57);
  v60 = v59;

  (*(v54 + 40))(v55, v56, v58, v60, v53, v54);
  sub_100009548(v58, v60);
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  v61 = v76;
  sub_10000959C(v80);
  sub_10000959C(v61);
  sub_10000959C(v85);
  sub_10000959C(v86);
  sub_10000959C(v87);
  sub_10000959C(v88);
  sub_10000959C(v81);
  return a16;
}

uint64_t sub_1000B3C54(uint64_t a1, char a2, uint64_t a3)
{
  v20 = &type metadata for MPOCMonitorManagerEvent;
  v21 = sub_1000B4248();
  v18 = a1;
  v19 = a2 & 1;
  v6 = *(a3 + 56);
  os_unfair_lock_lock((v6 + 56));
  v7 = *(v6 + 40);
  v8 = *(v6 + 48);
  sub_10000BE18((v6 + 16), v7);
  v9 = (*(v8 + 24))(v16, &v18, v7, v8);
  sub_10000959C((v6 + 16));
  v17 = v9;
  sub_100065074(v16, v15, &qword_1003A1658, &qword_1002C5990);

  sub_100029790(v15, v6 + 16);
  v10 = *(v6 + 40);
  v11 = *(v6 + 48);
  sub_10000BE18((v6 + 16), v10);
  v12 = (*(v11 + 16))(v10, v11);
  *&v15[0] = v9;

  sub_100043754(v12);
  v13 = *&v15[0];
  sub_10000BD44(v16, &qword_1003A1658, &qword_1002C5990);
  os_unfair_lock_unlock((v6 + 56));
  sub_10000959C(&v18);
  return v13;
}

uint64_t sub_1000B3DBC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1000B2448();
  *a1 = result & 1;
  return result;
}

double sub_1000B3E14(uint64_t a1)
{
  result = 0.0;
  *a1 = xmmword_1002C4E30;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0;
  return result;
}

unint64_t sub_1000B3E4C()
{
  result = qword_1003A1628;
  if (!qword_1003A1628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A1628);
  }

  return result;
}

uint64_t sub_1000B3EA0()
{
  v1 = v0[29];
  v2 = v0[30];
  sub_10000BE18(v0 + 26, v1);
  return (*(v2 + 48))(v1, v2);
}

uint64_t sub_1000B3EFC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000B3F14()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_1000B3F8C()
{
  result = qword_1003A1630;
  if (!qword_1003A1630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A1630);
  }

  return result;
}

unint64_t sub_1000B3FE0()
{
  result = qword_1003A1638;
  if (!qword_1003A1638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A1638);
  }

  return result;
}

double sub_1000B4034(uint64_t a1)
{
  result = 0.0;
  *a1 = xmmword_1002C4E30;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0;
  return result;
}

uint64_t sub_1000B4088(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MPOCMonitorBatch(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000B40EC(uint64_t a1)
{
  v2 = type metadata accessor for MPOCMonitorBatch(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000B4148(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

BOOL sub_1000B41F8(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(a1 + 16);
  v6[0] = *a1;
  v6[1] = v3;
  v7 = *(a1 + 32);
  v4 = *(v2 + 16);
  v8[0] = *v2;
  v8[1] = v4;
  v9 = *(v2 + 32);
  return sub_1000B3194(v6, v8);
}

unint64_t sub_1000B4248()
{
  result = qword_1003A1650;
  if (!qword_1003A1650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A1650);
  }

  return result;
}

uint64_t sub_1000B429C()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000B42DC()
{
  v1 = *(v0 + 24);
  sub_1000A8878();
  v1(0);
}

void sub_1000B435C(uint64_t a1)
{
  sub_1000E9D90(v92);
  if (v1)
  {

    return;
  }

  sub_1000E5EA8(v89);
  v3 = v90;
  v4 = v91;
  sub_10000BE18(v89, v90);
  sub_1000C7DD8(v3, v4);
  v5 = v87;
  v6 = v88;
  sub_10000BE18(v86, v87);
  if (qword_10039D4E0 != -1)
  {
    swift_once();
  }

  v7 = (*(v6 + 32))(qword_1003A6B88, unk_1003A6B90, v5, v6);
  v9 = v7;
  v10 = v8;
  v11 = v8 >> 62;
  if ((v8 >> 62) > 1)
  {
    if (v11 != 2)
    {
      goto LABEL_16;
    }

    v12 = *(v7 + 16);
    v13 = *(v7 + 24);
LABEL_12:
    if (v12 != v13)
    {
      goto LABEL_13;
    }

LABEL_16:
    if (qword_10039D4D0 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_10000403C(v15, qword_1003A13C8);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "Could not load MPOCOperation mode from persistence. Using .online", v18, 2u);
    }

    sub_100009548(v9, v10);

    goto LABEL_21;
  }

  if (v11)
  {
    v12 = v7;
    v13 = v7 >> 32;
    goto LABEL_12;
  }

  if ((v8 & 0xFF000000000000) == 0)
  {
    goto LABEL_16;
  }

LABEL_13:
  v14 = Data._Representation.subscript.getter();
  if (v14 == 1)
  {
    sub_100009548(v9, v10);
    v19 = 1;
    goto LABEL_22;
  }

  if (v14)
  {
    goto LABEL_16;
  }

  sub_100009548(v9, v10);
LABEL_21:
  v19 = 0;
LABEL_22:
  v20 = a1 + OBJC_IVAR____TtC14softposreaderd5Depot_settings;
  v21 = type metadata accessor for Settings(0);
  v22 = *(v20 + *(v21 + 28));
  v23 = *(v20 + *(v21 + 32));
  sub_10000CCE4(v86, v85);
  sub_1000E4518(v84);
  sub_1000E5844(v83);
  v24 = *(*sub_10000BE18(v92, v92[3]) + 296);
  os_unfair_lock_lock((v24 + 24));
  sub_1000B4F6C((v24 + 16), v82);
  os_unfair_lock_unlock((v24 + 24));
  v25 = v82[0];
  v26 = v82[1];
  sub_1000EC3E8(v82);
  sub_1000ECA4C(v81);
  sub_1000E8A64(v80);
  sub_1000ED0B0();
  v68 = v27;
  sub_1000E8400(v79);
  v28 = sub_100022438(v84, v84[3]);
  v67 = v57;
  __chkstk_darwin(v28);
  v63 = (v57 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v30 + 16))();
  v31 = sub_100022438(v83, v83[3]);
  v66 = v57;
  __chkstk_darwin(v31);
  v62 = (v57 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v33 + 16))();
  v34 = sub_100022438(v80, v80[3]);
  v65 = v57;
  __chkstk_darwin(v34);
  v61 = (v57 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v36 + 16))();
  v37 = sub_100022438(v79, v79[3]);
  v64 = v57;
  __chkstk_darwin(v37);
  v39 = (v57 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v40 + 16))(v39);
  v41 = *v63;
  v60 = *v62;
  v42 = *v39;
  v62 = *v61;
  v63 = v42;
  v43 = type metadata accessor for DefaultSecureTimeKeeper();
  v78[3] = v43;
  v78[4] = &off_100384E70;
  v78[0] = v41;
  v76 = type metadata accessor for SecureElement();
  v77 = &off_1003849A0;
  v75[0] = v60;
  v73 = type metadata accessor for MPOCDefaultAttestationManager();
  v74 = &off_100380AA8;
  v72[0] = v62;
  v70 = type metadata accessor for ProfileManager();
  v71 = &off_100380E88;
  v69[0] = v63;
  type metadata accessor for MPOCDefaultMonitorManager();
  v61 = swift_allocObject();
  v44 = sub_100022438(v78, v43);
  v63 = v57;
  __chkstk_darwin(v44);
  v59 = (v57 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v46 + 16))();
  v47 = sub_100022438(v75, v76);
  v62 = v57;
  __chkstk_darwin(v47);
  v58 = (v57 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v49 + 16))();
  v50 = sub_100022438(v72, v73);
  v60 = v57;
  __chkstk_darwin(v50);
  v57[0] = v57 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v52 + 16))();
  v53 = sub_100022438(v69, v70);
  v57[1] = v57;
  __chkstk_darwin(v53);
  v55 = (v57 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v56 + 16))(v55);
  sub_1000B3224(v19, v23, v85, *v59, *v58, v25, v26, v82, v22, v81, *v57[0], v68, *v55, 0, 0, v61);

  sub_10000959C(v69);
  sub_10000959C(v72);
  sub_10000959C(v75);
  sub_10000959C(v78);
  sub_10000959C(v79);
  sub_10000959C(v80);
  sub_10000959C(v83);
  sub_10000959C(v84);
  sub_10000959C(v86);
  sub_10000959C(v89);
  sub_10000959C(v92);
}

uint64_t sub_1000B4F88(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000B4FD0(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000B4FFC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 313))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 296);
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

uint64_t sub_1000B5058(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 312) = 0;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 313) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 313) = 0;
    }

    if (a2)
    {
      *(result + 296) = a2;
    }
  }

  return result;
}

void sub_1000B5158(uint64_t a1@<X8>)
{
  sub_100176DD8(0xD0000000000001CALL, 0x800000010034B290, __src);
  if (!v1)
  {
    memcpy(__dst, __src, sizeof(__dst));
    nullsub_1();
    v3 = __src[13];
    if ((__src[13] & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v5 = 0;
      memcpy(a1, __dst, 0x110uLL);
      *(a1 + 272) = v3;
      *(a1 + 280) = v5;
      *(a1 + 288) = 0;
    }
  }
}

uint64_t sub_1000B51FC()
{
  v1 = 7104878;
  __dst[0] = 0;
  __dst[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(69);
  v2._object = 0x80000001002C5BA0;
  v2._countAndFlagsBits = 0xD000000000000013;
  String.append(_:)(v2);
  v3._object = 0x800000010034B460;
  v3._countAndFlagsBits = 0xD000000000000013;
  String.append(_:)(v3);
  memcpy(__dst, v0, sizeof(__dst));
  if (sub_100031A30(__dst) == 1)
  {
    object = 0xE300000000000000;
    countAndFlagsBits = 7104878;
  }

  else
  {
    v6 = String.redactedTokenFromBase64()();
    countAndFlagsBits = v6._countAndFlagsBits;
    object = v6._object;
  }

  v7 = object;
  String.append(_:)(*&countAndFlagsBits);

  v8._object = 0x800000010034B480;
  v8._countAndFlagsBits = 0xD000000000000013;
  String.append(_:)(v8);
  if (*(v0 + 280))
  {
    v9 = 0xE300000000000000;
    v10 = 7104878;
  }

  else
  {
    sub_1000B6978();
    v10 = BinaryInteger.description.getter();
    v9 = v11;
  }

  v12 = v9;
  String.append(_:)(*&v10);

  v13._countAndFlagsBits = 0xD000000000000017;
  v13._object = 0x80000001003476B0;
  String.append(_:)(v13);
  if (*(v0 + 288))
  {
    v1 = Array.description.getter();
    v15 = v14;
  }

  else
  {
    v15 = 0xE300000000000000;
  }

  v16._countAndFlagsBits = v1;
  v16._object = v15;
  String.append(_:)(v16);

  return 0;
}

uint64_t sub_1000B53BC(void *a1)
{
  v3 = v1;
  v5 = sub_100004074(&qword_1003A1798, &qword_1002C5FB8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11[-v7 - 8];
  sub_10000BE18(a1, a1[3]);
  sub_1000B7454();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  memcpy(v13, v3, 0x110uLL);
  memcpy(v12, v3, sizeof(v12));
  v13[295] = 0;
  sub_10003237C(v13, v11);
  sub_1000B752C();
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (v2)
  {
    memcpy(v11, v12, sizeof(v11));
    sub_10000BD44(v11, &qword_10039F268, &qword_1002C2730);
  }

  else
  {
    memcpy(v11, v12, sizeof(v11));
    sub_10000BD44(v11, &qword_10039F268, &qword_1002C2730);
    LOBYTE(v10) = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v10 = v3[36];
    v13[294] = 2;
    sub_100004074(&qword_1003A1758, &qword_1002C5F98);
    sub_1000B7580(&qword_1003A17A8, sub_100065230, &protocol conformance descriptor for <A> [A]);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_1000B5638()
{
  v1 = 0x7078456E656B6F74;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000013;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_1000B56A4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1000B6FD0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1000B56D8(uint64_t a1)
{
  v2 = sub_1000B7454();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000B5714(uint64_t a1)
{
  v2 = sub_1000B7454();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_1000B5754@<X0>(void *a1@<X8>, void *a2@<X0>)
{
  result = sub_1000B6C6C(a2, __src);
  if (!v2)
  {
    return memcpy(a1, __src, 0x128uLL);
  }

  return result;
}

BOOL sub_1000B57B8(void *__src, const void *a2)
{
  memcpy(v4, __src, sizeof(v4));
  memcpy(__dst, a2, sizeof(__dst));
  return sub_1000B5FE8(v4, __dst);
}

uint64_t sub_1000B5810(void *a1)
{
  v3 = v1;
  v5 = sub_100004074(&qword_1003A17B0, &qword_1002C5FC8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10[-v7];
  sub_10000BE18(a1, a1[3]);
  sub_1000B7358();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v13 = 0;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (!v2)
  {
    v12 = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v11 = *(v3 + 32);
    v10[15] = 2;
    sub_100004074(&qword_1003A1758, &qword_1002C5F98);
    sub_1000B7580(&qword_1003A17A8, sub_100065230, &protocol conformance descriptor for <A> [A]);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1000B5A38(uint64_t a1)
{
  v2 = sub_1000B7358();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000B5A74(uint64_t a1)
{
  v2 = sub_1000B7358();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_1000B5AB0@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_1000B7100(a2, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v5;
    *(a1 + 32) = v7;
  }

  return result;
}

uint64_t sub_1000B5B10()
{
  _StringGuts.grow(_:)(54);
  v1._countAndFlagsBits = 0xD000000000000016;
  v1._object = 0x80000001002C5D60;
  String.append(_:)(v1);
  v2._object = 0x800000010034B4A0;
  v2._countAndFlagsBits = 0xD000000000000012;
  String.append(_:)(v2);
  String.append(_:)(*v0);
  v3._countAndFlagsBits = 0x3A65756C6176202CLL;
  v3._object = 0xE900000000000020;
  String.append(_:)(v3);
  String.append(_:)(v0[1]);
  v4._countAndFlagsBits = 0xD000000000000013;
  v4._object = 0x800000010034B4C0;
  String.append(_:)(v4);
  v5._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v5);

  return 0;
}

uint64_t sub_1000B5C2C(void *a1)
{
  v3 = sub_100004074(&qword_1003A1770, &qword_1002C5FA0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_10000BE18(a1, a1[3]);
  sub_1000B7400();
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
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1000B5DCC()
{
  v1 = 0x65756C6176;
  if (*v0 != 1)
  {
    v1 = 0x7461636572706564;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7461636572706564;
  }
}

uint64_t sub_1000B5E2C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1000B75F8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1000B5E54(uint64_t a1)
{
  v2 = sub_1000B7400();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000B5E90(uint64_t a1)
{
  v2 = sub_1000B7400();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_1000B5ED0@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_1000B771C(a2, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v5;
    *(a1 + 32) = v7;
  }

  return result;
}

BOOL sub_1000B5F30(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a2[2];
  v6 = a2[3];
  v7 = a2[4];
  v8 = *a1 == *a2 && a1[1] == a2[1];
  if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (v2 == v5 ? (v9 = v3 == v6) : (v9 = 0), v9 || (_stringCompareWithSmolCheck(_:_:expecting:)()))
  {
    return v4 == v7;
  }

  else
  {
    return 0;
  }
}

BOOL sub_1000B5FE8(uint64_t *__src, uint64_t a2)
{
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v104, a2, sizeof(v104));
  v4 = *(__src + 12);
  v5 = *(__src + 10);
  v100 = *(__src + 11);
  v101 = v4;
  v6 = *(__src + 12);
  v7 = *(__src + 14);
  v102 = *(__src + 13);
  v103 = v7;
  v8 = *(__src + 8);
  v9 = *(__src + 6);
  v96 = *(__src + 7);
  v97 = v8;
  v10 = *(__src + 8);
  v11 = *(__src + 10);
  v98 = *(__src + 9);
  v99 = v11;
  v12 = *(__src + 4);
  v92 = *(__src + 3);
  v93 = v12;
  v13 = *(__src + 6);
  v15 = *(__src + 3);
  v14 = *(__src + 4);
  v94 = *(__src + 5);
  v95 = v13;
  v91 = *(__src + 16);
  v117 = v100;
  v118 = v6;
  v16 = *(__src + 14);
  v119 = v102;
  v120 = v16;
  v113 = v96;
  v114 = v10;
  v115 = v98;
  v116 = v5;
  v109 = v15;
  v110 = v14;
  v17 = __dst[0];
  v18 = __dst[1];
  v19 = __dst[2];
  v20 = __dst[3];
  v21 = __dst[4];
  v22 = __dst[5];
  v23 = __dst[30];
  v24 = __dst[31];
  v111 = v94;
  v112 = v9;
  v123 = *(__src + 16);
  v108[0] = __dst[0];
  v108[1] = __dst[1];
  v108[2] = __dst[2];
  v108[3] = __dst[3];
  v108[4] = __dst[4];
  v108[5] = __dst[5];
  v121 = __dst[30];
  v122 = __dst[31];
  if (sub_100031A30(v108) == 1)
  {
    memcpy(v89, a2, sizeof(v89));
    if (sub_100031A30(v89) == 1)
    {
      *&v88[0] = v17;
      *(&v88[0] + 1) = v18;
      *&v88[1] = v19;
      *(&v88[1] + 1) = v20;
      *&v88[2] = v21;
      *(&v88[2] + 1) = v22;
      v25 = *(__src + 12);
      v88[11] = *(__src + 11);
      v88[12] = v25;
      v26 = *(__src + 14);
      v88[13] = *(__src + 13);
      v88[14] = v26;
      v27 = *(__src + 8);
      v88[7] = *(__src + 7);
      v88[8] = v27;
      v28 = *(__src + 10);
      v88[9] = *(__src + 9);
      v88[10] = v28;
      v29 = *(__src + 4);
      v88[3] = *(__src + 3);
      v88[4] = v29;
      v30 = *(__src + 6);
      v88[5] = *(__src + 5);
      v88[6] = v30;
      *&v88[15] = v23;
      *(&v88[15] + 1) = v24;
      v88[16] = *(__src + 16);
      sub_10003237C(__dst, &v67);
      sub_10003237C(v104, &v67);
      sub_10000BD44(v88, &qword_10039F268, &qword_1002C2730);
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  memcpy(v89, a2, sizeof(v89));
  if (sub_100031A30(v89) == 1)
  {
LABEL_8:
    *&v89[0] = v17;
    *(&v89[0] + 1) = v18;
    *&v89[1] = v19;
    *(&v89[1] + 1) = v20;
    *&v89[2] = v21;
    *(&v89[2] + 1) = v22;
    v32 = *(__src + 12);
    v89[11] = *(__src + 11);
    v89[12] = v32;
    v33 = *(__src + 14);
    v89[13] = *(__src + 13);
    v89[14] = v33;
    v34 = *(__src + 8);
    v89[7] = *(__src + 7);
    v89[8] = v34;
    v35 = *(__src + 10);
    v89[9] = *(__src + 9);
    v89[10] = v35;
    v36 = *(__src + 4);
    v89[3] = *(__src + 3);
    v89[4] = v36;
    v37 = *(__src + 6);
    v89[5] = *(__src + 5);
    v89[6] = v37;
    *&v89[15] = v23;
    *(&v89[15] + 1) = v24;
    v89[16] = *(__src + 16);
    memcpy(v90, a2, sizeof(v90));
    sub_10003237C(__dst, v88);
    sub_10003237C(v104, v88);
    v38 = &unk_10039F270;
    v39 = &unk_1002C5FC0;
    v40 = v89;
LABEL_31:
    sub_10000BD44(v40, v38, v39);
    return 0;
  }

  memcpy(v88, a2, sizeof(v88));
  v41 = v88[1];
  v65 = v88[2];
  v63 = *(&v88[15] + 1);
  v64 = *&v88[15];
  if (__PAIR128__(v18, v17) != v88[0] && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || __PAIR128__(v20, v19) != v41 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_30;
  }

  if (!v22)
  {
    if (!*(&v65 + 1))
    {
      goto LABEL_27;
    }

LABEL_30:
    sub_10003237C(__dst, &v67);
    sub_10003237C(v104, &v67);
    sub_10000BD44(v88, &qword_10039F268, &qword_1002C2730);
    v67 = v17;
    v68 = v18;
    v69 = v19;
    v70 = v20;
    v71 = v21;
    v72 = v22;
    v81 = v100;
    v82 = v101;
    v83 = v102;
    v84 = v103;
    v77 = v96;
    v78 = v97;
    v79 = v98;
    v80 = v99;
    v73 = v92;
    v74 = v93;
    v75 = v94;
    v76 = v95;
    v85 = v23;
    v86 = v24;
    v87 = v91;
    v40 = &v67;
    v38 = &qword_10039F268;
    v39 = &qword_1002C2730;
    goto LABEL_31;
  }

  if (!*(&v65 + 1) || __PAIR128__(v22, v21) != v65 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_30;
  }

LABEL_27:
  v44 = *(__src + 12);
  v106[8] = *(__src + 11);
  v106[9] = v44;
  v45 = *(__src + 14);
  v106[10] = *(__src + 13);
  v106[11] = v45;
  v46 = *(__src + 8);
  v106[4] = *(__src + 7);
  v106[5] = v46;
  v47 = *(__src + 10);
  v106[6] = *(__src + 9);
  v106[7] = v47;
  v48 = *(__src + 4);
  v106[0] = *(__src + 3);
  v106[1] = v48;
  v49 = *(__src + 6);
  v106[2] = *(__src + 5);
  v106[3] = v49;
  v50 = *(a2 + 192);
  v107[8] = *(a2 + 176);
  v107[9] = v50;
  v51 = *(a2 + 224);
  v107[10] = *(a2 + 208);
  v107[11] = v51;
  v52 = *(a2 + 128);
  v107[4] = *(a2 + 112);
  v107[5] = v52;
  v53 = *(a2 + 160);
  v107[6] = *(a2 + 144);
  v107[7] = v53;
  v54 = *(a2 + 64);
  v107[0] = *(a2 + 48);
  v107[1] = v54;
  v55 = *(a2 + 96);
  v107[2] = *(a2 + 80);
  v107[3] = v55;
  if (!sub_1001769F4(v106, v107))
  {
    goto LABEL_30;
  }

  sub_10003237C(__dst, &v67);
  sub_10003237C(v104, &v67);
  v66 = sub_10017688C(v23, v24, v64, v63);
  sub_10000BD44(v88, &qword_10039F268, &qword_1002C2730);
  v67 = v17;
  v68 = v18;
  v69 = v19;
  v70 = v20;
  v71 = v21;
  v72 = v22;
  v56 = *(__src + 12);
  v81 = *(__src + 11);
  v82 = v56;
  v57 = *(__src + 14);
  v83 = *(__src + 13);
  v84 = v57;
  v58 = *(__src + 8);
  v77 = *(__src + 7);
  v78 = v58;
  v59 = *(__src + 10);
  v79 = *(__src + 9);
  v80 = v59;
  v60 = *(__src + 4);
  v73 = *(__src + 3);
  v74 = v60;
  v61 = *(__src + 6);
  v75 = *(__src + 5);
  v76 = v61;
  v85 = v23;
  v86 = v24;
  v87 = *(__src + 16);
  sub_10000BD44(&v67, &qword_10039F268, &qword_1002C2730);
  if (!v66)
  {
    return 0;
  }

LABEL_4:
  v31 = *(a2 + 280);
  if (__src[35])
  {
    if (!*(a2 + 280))
    {
      return 0;
    }
  }

  else
  {
    if (__src[34] != *(a2 + 272))
    {
      v31 = 1;
    }

    if (v31)
    {
      return 0;
    }
  }

  v42 = __src[36];
  v43 = *(a2 + 288);
  if (!v42)
  {
    return !v43;
  }

  return v43 && (sub_10015149C(v42, v43) & 1) != 0;
}

BOOL sub_1000B6608(uint64_t a1, char a2, unint64_t a3, char a4)
{
  if (a2)
  {
    switch(a1)
    {
      case 1:
        if ((a4 & 1) == 0 || a3 != 1)
        {
          return 0;
        }

        result = 1;
        break;
      case 2:
        if ((a4 & 1) == 0 || a3 != 2)
        {
          return 0;
        }

        result = 1;
        break;
      case 3:
        if ((a4 & 1) == 0 || a3 != 3)
        {
          return 0;
        }

        result = 1;
        break;
      case 4:
        if ((a4 & 1) == 0 || a3 != 4)
        {
          return 0;
        }

        result = 1;
        break;
      case 5:
        if ((a4 & 1) == 0 || a3 != 5)
        {
          return 0;
        }

        result = 1;
        break;
      case 6:
        if ((a4 & 1) == 0 || a3 != 6)
        {
          return 0;
        }

        result = 1;
        break;
      case 7:
        if ((a4 & 1) == 0 || a3 != 7)
        {
          return 0;
        }

        result = 1;
        break;
      case 8:
        if ((a4 & 1) == 0 || a3 != 8)
        {
          return 0;
        }

        result = 1;
        break;
      case 9:
        if ((a4 & 1) == 0 || a3 != 9)
        {
          return 0;
        }

        result = 1;
        break;
      case 10:
        if ((a4 & 1) == 0 || a3 != 10)
        {
          return 0;
        }

        result = 1;
        break;
      case 11:
        if ((a4 & 1) == 0 || a3 != 11)
        {
          return 0;
        }

        result = 1;
        break;
      case 12:
        if ((a4 & 1) == 0 || a3 != 12)
        {
          return 0;
        }

        result = 1;
        break;
      case 13:
        if ((a4 & 1) == 0 || a3 != 13)
        {
          return 0;
        }

        result = 1;
        break;
      case 14:
        if ((a4 & 1) == 0 || a3 != 14)
        {
          return 0;
        }

        result = 1;
        break;
      case 15:
        if ((a4 & 1) == 0 || a3 <= 0xE)
        {
          return 0;
        }

        result = 1;
        break;
      default:
        if ((a4 & 1) == 0 || *&a3 != 0.0)
        {
          return 0;
        }

        result = 1;
        break;
    }
  }

  else
  {
    return (a4 & 1) == 0 && *&a1 == *&a3;
  }

  return result;
}

void *sub_1000B67D0@<X0>(uint64_t a3@<X8>)
{
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  sub_1000B6924();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  if (v3)
  {
  }

  v6 = v15;
  v7 = v16;
  v8 = v17;
  v9 = v18;
  v10 = v19;
  sub_100031B14(v14);
  if (v7)
  {
    sub_100176DD8(v6, v7, __src);
    memcpy(__dst, __src, sizeof(__dst));
    nullsub_1();
    v11 = __dst;
  }

  else
  {
    v11 = v14;
  }

  memcpy(v13, v11, sizeof(v13));
  __dst[0] = v9;
  result = memcpy(a3, v13, 0x110uLL);
  *(a3 + 272) = v8;
  *(a3 + 280) = __dst[0];
  *(a3 + 288) = v10;
  return result;
}

unint64_t sub_1000B6924()
{
  result = qword_1003A1738;
  if (!qword_1003A1738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A1738);
  }

  return result;
}

unint64_t sub_1000B6978()
{
  result = qword_1003A1740;
  if (!qword_1003A1740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A1740);
  }

  return result;
}

uint64_t sub_1000B69D4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 296))
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

uint64_t sub_1000B6A30(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 264) = 0u;
    *(result + 280) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 296) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 296) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

__n128 sub_1000B6AE0(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1000B6AF4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
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

uint64_t sub_1000B6B50(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_1000B6BCC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1000B6C14(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *sub_1000B6C6C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v15 = sub_100004074(&qword_1003A1780, &unk_1002C5FA8);
  v5 = *(v15 - 8);
  __chkstk_darwin(v15);
  v7 = &v14 - v6;
  sub_100031B14(v26);
  memcpy(v25, v26, sizeof(v25));
  v27 = 1;
  sub_10000BE18(a1, a1[3]);
  sub_1000B7454();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    sub_10000959C(a1);
    memcpy(v21, v25, sizeof(v21));
    v22 = 0;
    v23 = v27;
    v24 = 0;
    return sub_1000B74A8(v21);
  }

  else
  {
    v8 = v5;
    v29 = 0;
    sub_1000B74D8();
    v9 = v15;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    memcpy(v18, v20, sizeof(v18));
    memcpy(v19, v25, sizeof(v19));
    sub_10000BD44(v19, &qword_10039F268, &qword_1002C2730);
    memcpy(v25, v18, sizeof(v25));
    v21[0] = 1;
    v10 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v27 = v11 & 1;
    sub_100004074(&qword_1003A1758, &qword_1002C5F98);
    v28 = 2;
    sub_1000B7580(&qword_1003A1760, sub_1000B73AC, &protocol conformance descriptor for <A> [A]);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    (*(v8 + 8))(v7, v9);
    v12 = v17;
    memcpy(v16, v18, 0x110uLL);
    v16[34] = v10;
    LOBYTE(v9) = v27;
    LOBYTE(v16[35]) = v27;
    v16[36] = v17;
    sub_1000B419C(v16, v21);
    sub_10000959C(a1);
    memcpy(v21, v18, sizeof(v21));
    v22 = v10;
    v23 = v9;
    v24 = v12;
    sub_1000B74A8(v21);
    return memcpy(a2, v16, 0x128uLL);
  }
}

uint64_t sub_1000B6FD0(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x8000000100347C00 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7078456E656B6F74 && a2 == 0xEF6E6F6974617269 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000013 && 0x800000010034B4E0 == a2)
  {

    return 2;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1000B7100@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_100004074(&qword_1003A1748, &qword_1002C5F90);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v17 - v7;
  sub_10000BE18(a1, a1[3]);
  sub_1000B7358();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000959C(a1);
  }

  v21 = 0;
  v9 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v11 = v10;
  v12 = v9;
  v20 = 1;
  v13 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v18 = v14;
  v17[0] = v13;
  sub_100004074(&qword_1003A1758, &qword_1002C5F98);
  v19 = 2;
  sub_1000B7580(&qword_1003A1760, sub_1000B73AC, &protocol conformance descriptor for <A> [A]);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v6 + 8))(v8, v5);
  v15 = v17[1];
  result = sub_10000959C(a1);
  *a2 = v12;
  *(a2 + 8) = v11;
  *(a2 + 16) = v17[0];
  *(a2 + 24) = v18 & 1;
  *(a2 + 32) = v15;
  return result;
}

unint64_t sub_1000B7358()
{
  result = qword_1003A1750;
  if (!qword_1003A1750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A1750);
  }

  return result;
}

unint64_t sub_1000B73AC()
{
  result = qword_1003A1768;
  if (!qword_1003A1768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A1768);
  }

  return result;
}

unint64_t sub_1000B7400()
{
  result = qword_1003A1778;
  if (!qword_1003A1778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A1778);
  }

  return result;
}

unint64_t sub_1000B7454()
{
  result = qword_1003A1788;
  if (!qword_1003A1788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A1788);
  }

  return result;
}

unint64_t sub_1000B74D8()
{
  result = qword_1003A1790;
  if (!qword_1003A1790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A1790);
  }

  return result;
}

unint64_t sub_1000B752C()
{
  result = qword_1003A17A0;
  if (!qword_1003A17A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A17A0);
  }

  return result;
}

uint64_t sub_1000B7580(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1000040BC(&qword_1003A1758, &qword_1002C5F98);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000B75F8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0x7461636572706564 && a2 == 0xEF657079546E6F69;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7461636572706564 && a2 == 0xEF656D69546E6F69)
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

uint64_t sub_1000B771C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_100004074(&qword_1003A17B8, &qword_1002C5FD0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v18 - v7;
  sub_10000BE18(a1, a1[3]);
  sub_1000B7400();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000959C(a1);
  }

  v24 = 0;
  v9 = KeyedDecodingContainer.decode(_:forKey:)();
  v11 = v10;
  v20 = a2;
  v21 = v9;
  v23 = 1;
  v12 = KeyedDecodingContainer.decode(_:forKey:)();
  v19 = v13;
  v22 = 2;
  v14 = KeyedDecodingContainer.decode(_:forKey:)();
  (*(v6 + 8))(v8, v5);
  result = sub_10000959C(a1);
  v16 = v20;
  *v20 = v21;
  v16[1] = v11;
  v17 = v19;
  v16[2] = v12;
  v16[3] = v17;
  v16[4] = v14;
  return result;
}

uint64_t getEnumTagSinglePayload for SecureElementError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SecureElementError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1000B7AE4()
{
  result = qword_1003A17C0;
  if (!qword_1003A17C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A17C0);
  }

  return result;
}

unint64_t sub_1000B7B3C()
{
  result = qword_1003A17C8;
  if (!qword_1003A17C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A17C8);
  }

  return result;
}

unint64_t sub_1000B7B94()
{
  result = qword_1003A17D0;
  if (!qword_1003A17D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A17D0);
  }

  return result;
}

unint64_t sub_1000B7BEC()
{
  result = qword_1003A17D8;
  if (!qword_1003A17D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A17D8);
  }

  return result;
}

unint64_t sub_1000B7C44()
{
  result = qword_1003A17E0;
  if (!qword_1003A17E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A17E0);
  }

  return result;
}

unint64_t sub_1000B7C9C()
{
  result = qword_1003A17E8;
  if (!qword_1003A17E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A17E8);
  }

  return result;
}

unint64_t sub_1000B7CF4()
{
  result = qword_1003A17F0;
  if (!qword_1003A17F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A17F0);
  }

  return result;
}

unint64_t sub_1000B7D4C()
{
  result = qword_1003A17F8;
  if (!qword_1003A17F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A17F8);
  }

  return result;
}

unint64_t sub_1000B7DA4()
{
  result = qword_1003A1800;
  if (!qword_1003A1800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A1800);
  }

  return result;
}

uint64_t sub_1000B7E0C()
{
  v0 = type metadata accessor for Logger();
  sub_100003FD8(v0, qword_1003A1808);
  sub_10000403C(v0, qword_1003A1808);
  sub_100023B24();
  return static SPRLogger.monitor.getter();
}

uint64_t *sub_1000B7E68(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v4 = v3;
  v33 = *v3;
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3[2] = 0xD000000000000011;
  v3[3] = 0x800000010034B550;
  if (qword_10039D4F0 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_10000403C(v12, qword_1003A1808);
  v13 = *(v9 + 16);
  v34 = a1;
  v13(v11, a1, v8);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v32 = a2;
    v17 = v16;
    v31 = swift_slowAlloc();
    v35 = v31;
    *v17 = 136315394;
    v18 = _typeName(_:qualified:)();
    HIDWORD(v30) = v15;
    v20 = sub_100008F6C(v18, v19, &v35);
    v33 = a3;
    v21 = v20;

    *(v17 + 4) = v21;
    *(v17 + 12) = 2080;
    sub_100004074(&qword_1003A6740, &unk_1002C2930);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_1002C1660;
    *(v22 + 56) = v8;
    v23 = sub_10000BE5C((v22 + 32));
    v13(v23, v11, v8);
    v24 = showFunction(signature:_:)(0xD000000000000029, 0x800000010034B570, v22);
    v26 = v25;

    (*(v9 + 8))(v11, v8);
    v27 = v24;
    a3 = v33;
    v28 = sub_100008F6C(v27, v26, &v35);

    *(v17 + 14) = v28;
    _os_log_impl(&_mh_execute_header, v14, BYTE4(v30), "%s.%s", v17, 0x16u);
    swift_arrayDestroy();

    a2 = v32;
  }

  else
  {

    (*(v9 + 8))(v11, v8);
  }

  (*(v9 + 32))(v4 + OBJC_IVAR____TtC14softposreaderd25MPOCDefaultMonitorBackend_url, v34, v8);
  sub_1000833F8(a2, v4 + OBJC_IVAR____TtC14softposreaderd25MPOCDefaultMonitorBackend_secureChannel);
  *(v4 + OBJC_IVAR____TtC14softposreaderd25MPOCDefaultMonitorBackend_monitorAnalytics) = a3;
  return v4;
}

void *sub_1000B820C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = v3;
  v5 = v2;
  v126 = a1;
  v118 = a2;
  v6 = type metadata accessor for URL.DirectoryHint();
  v123 = *(v6 - 8);
  __chkstk_darwin(v6);
  v122 = &v116 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for URL();
  __chkstk_darwin(v8 - 8);
  v121 = &v116 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for URLRequest();
  v119 = *(v10 - 8);
  v120 = v10;
  __chkstk_darwin(v10);
  v125 = &v116 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10039D4F0 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  v124 = sub_10000403C(v12, qword_1003A1808);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *&v129 = swift_slowAlloc();
    *v15 = 136315394;
    v16 = _typeName(_:qualified:)();
    v18 = sub_100008F6C(v16, v17, &v129);
    v117 = v6;
    v19 = v18;

    *(v15 + 4) = v19;
    *(v15 + 12) = 2080;
    v20 = showFunction(signature:_:)(0x293A5F28646E6573, 0xE800000000000000, _swiftEmptyArrayStorage);
    v22 = sub_100008F6C(v20, v21, &v129);

    *(v15 + 14) = v22;
    v4 = v3;
    v6 = v117;
    _os_log_impl(&_mh_execute_header, v13, v14, "%s.%s", v15, 0x16u);
    swift_arrayDestroy();
  }

  v23 = *(v5 + 24);
  *&v129 = *(v5 + 16);
  *(&v129 + 1) = v23;
  v25 = v122;
  v24 = v123;
  (*(v123 + 104))(v122, enum case for URL.DirectoryHint.inferFromPath(_:), v6);
  sub_10008AB88();

  URL.appending<A>(path:directoryHint:)();
  (*(v24 + 8))(v25, v6);

  v26 = v125;
  URLRequest.init(url:cachePolicy:timeoutInterval:)();
  URLRequest.httpMethod.setter();
  TLV.dataRepresentation.getter();
  URLRequest.httpBody.setter();
  v129 = xmmword_1002C3C70;
  v27 = *(v5 + OBJC_IVAR____TtC14softposreaderd25MPOCDefaultMonitorBackend_monitorAnalytics);

  sub_10002F74C(v27, &v129, v5, v26);
  if (!v4)
  {

    v61 = *(&v129 + 1);
    if (*(&v129 + 1) >> 60 != 15)
    {
      v73 = v129;
      sub_10001A3E8(v129, *(&v129 + 1));
      sub_1000B67D0(v130);
      sub_10001A074(v73, v61);
      v77 = TLV.length.getter();
      sub_100025910(v77, 0);
      sub_10001A074(v73, v61);
      (*(v119 + 8))(v26, v120);
      return memcpy(v118, v130, 0x128uLL);
    }

    v62 = Logger.logObject.getter();
    v63 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      *v64 = 0;
      _os_log_impl(&_mh_execute_header, v62, v63, "Empty MPOC monitor backend returned response", v64, 2u);
    }

    sub_1000B9788();
    swift_allocError();
    *v65 = 15;
    *(v65 + 8) = 1;
    swift_willThrow();
    v66 = 0;
    goto LABEL_50;
  }

  v127[0] = v4;
  swift_errorRetain();
  sub_100004074(&unk_1003A3C00, &unk_1002C16C0);
  type metadata accessor for SPRHTTPError(0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    swift_errorRetain();
    v67 = Logger.logObject.getter();
    v68 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      *v69 = 138412290;
      swift_errorRetain();
      v71 = _swift_stdlib_bridgeErrorToNSError();
      *(v69 + 4) = v71;
      *v70 = v71;
      _os_log_impl(&_mh_execute_header, v67, v68, "MPOC monitor backend returned error: %@", v69, 0xCu);
      sub_100041D90(v70);
    }

    sub_1000B9788();
    swift_allocError();
    *v72 = 14;
    *(v72 + 8) = 1;
    swift_willThrow();
    goto LABEL_33;
  }

  v28 = v128;
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.error.getter();

  v31 = os_log_type_enabled(v29, v30);
  v122 = v4;
  v123 = v27;
  if (v31)
  {
    v32 = swift_slowAlloc();
    v127[0] = swift_slowAlloc();
    *v32 = 136315650;
    v128 = v28;
    sub_1000B97DC(&qword_10039DE98, &unk_1002C1388);
    LODWORD(v121) = v30;
    v33 = Error.localizedDescription.getter();
    v35 = sub_100008F6C(v33, v34, v127);

    *(v32 + 4) = v35;
    *(v32 + 12) = 2080;
    v36 = related decl 'e' for SPRHTTPErrorCode.serverCode.getter();
    if (v37)
    {
      v38 = v37;
    }

    else
    {
      v36 = 0;
      v38 = 0xE000000000000000;
    }

    v39 = sub_100008F6C(v36, v38, v127);

    *(v32 + 14) = v39;
    *(v32 + 22) = 2080;
    v128 = v28;
    sub_1000B97DC(&qword_10039DF50, &unk_1002C13CC);
    _BridgedStoredNSError.userInfo.getter();
    v40 = Dictionary.description.getter();
    v42 = v41;

    v43 = sub_100008F6C(v40, v42, v127);

    *(v32 + 24) = v43;
    _os_log_impl(&_mh_execute_header, v29, v121, "MPOC monitor backend returned http error: %s, server code: %s, user info: %s", v32, 0x20u);
    swift_arrayDestroy();
  }

  v44 = v28;
  if ((related decl 'e' for SPRHTTPErrorCode.isClientError.getter() & 1) == 0)
  {
    v74 = related decl 'e' for SPRHTTPErrorCode.isServerError.getter();
    sub_1000B9788();
    swift_allocError();
    v26 = v125;
    if (v74)
    {
      v76 = 12;
    }

    else
    {
      v76 = 13;
    }

    *v75 = v76;
    *(v75 + 8) = 1;
    swift_willThrow();

LABEL_33:

    v66 = 0;
LABEL_50:
    v96 = TLV.length.getter();
    sub_100025910(v96, v66);
    sub_10001A074(v129, *(&v129 + 1));
    return (*(v119 + 8))(v26, v120);
  }

  v45 = related decl 'e' for SPRHTTPErrorCode.serverCode.getter();
  if (!v46)
  {
    goto LABEL_44;
  }

  v127[0] = 45;
  v127[1] = 0xE100000000000000;
  __chkstk_darwin(v45);
  v115 = v127;
  v49 = sub_100187D7C(0x7FFFFFFFFFFFFFFFLL, 1, sub_10002956C, (&v116 - 4), v47, v48, &v116);
  if (v49[2] != 2)
  {
LABEL_43:

    goto LABEL_44;
  }

  v50 = v28;
  v121 = 0;
  v51 = v49[4];
  v52 = v49[5];
  v54 = v49[6];
  v53 = v49[7];
  v55 = v49;

  v56 = Substring.init(_:)();
  if (!v53)
  {

    goto LABEL_41;
  }

  if (v54 == v58 && v53 == v59 && v51 >> 16 == v56 >> 16 && v52 >> 16 == v57 >> 16)
  {

    goto LABEL_35;
  }

  LOBYTE(v115) = 0;
  v78 = _stringCompareInternal(_:_:_:_:expecting:)();

  if ((v78 & 1) == 0)
  {
    v44 = v50;
    goto LABEL_43;
  }

LABEL_35:
  if (v55[2] >= 2uLL)
  {
    v79 = v55[8];
    v80 = v55[9];
    v82 = v55[10];
    v81 = v55[11];

    if ((v80 ^ v79) >> 14)
    {
      v83 = sub_1000B96BC(v79, v80, v82, v81, 10);
      if ((v84 & 0x100) != 0)
      {
        v66 = sub_1001882E8(v79, v80, v82, v81, 10);
        v98 = v97;

        v44 = v50;
        if ((v98 & 1) == 0)
        {
          goto LABEL_52;
        }
      }

      else
      {
        v66 = v83;
        v85 = v84;

        v44 = v50;
        if ((v85 & 1) == 0)
        {
LABEL_52:
          if (v66 <= 4549)
          {
            v26 = v125;
            if (v66 > 4129)
            {
              switch(v66)
              {
                case 4130:
                  sub_1000B9788();
                  swift_allocError();
                  *v112 = 2;
                  *(v112 + 8) = 1;
                  swift_willThrow();

                  v66 = 4130;
                  goto LABEL_50;
                case 4444:
                  sub_1000B9788();
                  swift_allocError();
                  *v113 = 3;
                  *(v113 + 8) = 1;
                  swift_willThrow();

                  v66 = 4444;
                  goto LABEL_50;
                case 4500:
                  v102 = related decl 'e' for SPRHTTPErrorCode.atsBanExpirationTime.getter();
                  if (v103 && (v127[0] = 0, v104 = sub_10004F190(v102, v103, v127), , v104))
                  {
                    v105 = *v127 / 1000.0;
                    sub_1000B9788();
                    swift_allocError();
                    *v106 = v105;
                  }

                  else
                  {
                    sub_1000B9788();
                    swift_allocError();
                    *v106 = 0x4014000000000000;
                  }

                  *(v106 + 8) = 0;
                  swift_willThrow();

                  v66 = 4500;
                  goto LABEL_50;
              }
            }

            else if ((v66 - 4000) < 3)
            {
              sub_1000B9788();
              swift_allocError();
              *v100 = 1;
              *(v100 + 8) = 1;
LABEL_81:
              swift_willThrow();

              goto LABEL_50;
            }
          }

          else
          {
            v26 = v125;
            if (v66 <= 4601)
            {
              switch(v66)
              {
                case 4550:
                  sub_1000B9788();
                  swift_allocError();
                  *v110 = 4;
                  *(v110 + 8) = 1;
                  swift_willThrow();

                  v66 = 4550;
                  goto LABEL_50;
                case 4600:
                  sub_1000B9788();
                  swift_allocError();
                  *v111 = 5;
                  *(v111 + 8) = 1;
                  swift_willThrow();

                  v66 = 4600;
                  goto LABEL_50;
                case 4601:
                  sub_1000B9788();
                  swift_allocError();
                  *v101 = 6;
                  *(v101 + 8) = 1;
                  swift_willThrow();

                  v66 = 4601;
                  goto LABEL_50;
              }
            }

            else if (v66 > 4699)
            {
              if (v66 == 4700)
              {
                sub_1000B9788();
                swift_allocError();
                *v109 = 9;
                *(v109 + 8) = 1;
                swift_willThrow();

                v66 = 4700;
                goto LABEL_50;
              }

              if (v66 == 4701)
              {
                sub_1000B9788();
                swift_allocError();
                *v107 = 10;
                *(v107 + 8) = 1;
                swift_willThrow();

                v66 = 4701;
                goto LABEL_50;
              }
            }

            else
            {
              if (v66 == 4602)
              {
                sub_1000B9788();
                swift_allocError();
                *v108 = 7;
                *(v108 + 8) = 1;
                swift_willThrow();

                v66 = 4602;
                goto LABEL_50;
              }

              if (v66 == 4603)
              {
                sub_1000B9788();
                swift_allocError();
                *v99 = 8;
                *(v99 + 8) = 1;
                swift_willThrow();

                v66 = 4603;
                goto LABEL_50;
              }
            }
          }

          sub_1000B9788();
          swift_allocError();
          *v114 = 11;
          *(v114 + 8) = 1;
          goto LABEL_81;
        }
      }

LABEL_44:
      v86 = v44;
      v87 = Logger.logObject.getter();
      v88 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v87, v88))
      {
        v89 = swift_slowAlloc();
        v90 = swift_slowAlloc();
        v127[0] = v90;
        *v89 = 136315138;
        v91 = related decl 'e' for SPRHTTPErrorCode.serverCode.getter();
        if (v92)
        {
          v93 = v92;
        }

        else
        {
          v91 = 7104878;
          v93 = 0xE300000000000000;
        }

        v94 = sub_100008F6C(v91, v93, v127);

        *(v89 + 4) = v94;
        _os_log_impl(&_mh_execute_header, v87, v88, "Invalid server code format: %s", v89, 0xCu);
        sub_10000959C(v90);
      }

      sub_1000B9788();
      swift_allocError();
      *v95 = 0;
      *(v95 + 8) = 1;
      swift_willThrow();

      v66 = 0;
      v26 = v125;
      goto LABEL_50;
    }

LABEL_41:

    v44 = v50;
    goto LABEL_44;
  }

  __break(1u);
  return result;
}

uint64_t sub_1000B9498()
{

  v1 = OBJC_IVAR____TtC14softposreaderd25MPOCDefaultMonitorBackend_url;
  v2 = type metadata accessor for URL();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_10000959C((v0 + OBJC_IVAR____TtC14softposreaderd25MPOCDefaultMonitorBackend_secureChannel));

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for MPOCDefaultMonitorBackend(uint64_t a1)
{
  result = qword_1003A1848;
  if (!qword_1003A1848)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000B95B0(uint64_t a1)
{
  result = type metadata accessor for URL();
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

void *sub_1000B9664@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = sub_1000B820C(a1, __src);
  if (!v2)
  {
    return memcpy(a2, __src, 0x128uLL);
  }

  return result;
}

uint64_t sub_1000B96BC(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    result = 0;
    goto LABEL_8;
  }

  if ((a4 & 0x2000000000000000) != 0)
  {
    v14[0] = a3;
    v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
    v11 = v14;
  }

  else if ((a3 & 0x1000000000000000) != 0)
  {
    v11 = ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    v11 = _StringObject.sharedUTF8.getter();
  }

  result = sub_100188CF4(v11, a1, a2, a3, a4, a5);
  if (!v5)
  {
    v15 = v13 & 1;
LABEL_8:
    v16 = (a4 & 0x1000000000000000) != 0;
  }

  return result;
}

unint64_t sub_1000B9788()
{
  result = qword_1003A1908;
  if (!qword_1003A1908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A1908);
  }

  return result;
}

uint64_t sub_1000B97DC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SPRHTTPError(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000B9820(uint64_t a1)
{
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a1;
  sub_1000E3850(v15);
  if (v1)
  {
  }

  else
  {
    sub_1000EBD84(v14);
    v8 = sub_10000BE18(v15, v15[3]);
    (*(v4 + 16))(v6, *v8 + OBJC_IVAR____TtC14softposreaderd11Environment_backendURL, v3);
    sub_10000BE18(v14, v14[3]);
    sub_100139628(v13);
    sub_1000ED0B0();
    v11 = v10;
    type metadata accessor for MPOCDefaultMonitorBackend(0);
    v7 = swift_allocObject();
    sub_1000B7E68(v6, v13, v11);

    sub_10000959C(v14);
    sub_10000959C(v15);
  }

  return v7;
}

__n128 sub_1000B9A20(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_1000B9A34(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1000B9A7C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

uint64_t sub_1000B9AF0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TLV();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1000B9B70(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TLV();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for MPOCMonitorBatch(uint64_t a1)
{
  result = qword_1003A1968;
  if (!qword_1003A1968)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000B9C2C(uint64_t a1)
{
  result = type metadata accessor for TLV();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void *sub_1000B9CA0(uint64_t a1)
{
  v3 = type metadata accessor for TLVTag();
  v4 = __chkstk_darwin(v3 - 8);
  v45 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v44 = &v33 - v6;
  v43 = type metadata accessor for TLV();
  v7 = *(v43 - 8);
  __chkstk_darwin(v43);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 16);
  v11 = _swiftEmptyArrayStorage;
  if (!v10)
  {
    return v11;
  }

  v33 = v1;
  v52 = _swiftEmptyArrayStorage;
  v42 = v9;
  sub_10004E380(0, v10, 0);
  v11 = v52;
  v12 = a1 + 64;
  result = _HashTable.startBucket.getter();
  v14 = result;
  v15 = 0;
  v16 = *(a1 + 36);
  v40 = (v7 + 32);
  v34 = a1 + 72;
  v39 = xmmword_1002C1670;
  v35 = v10;
  v36 = v7;
  v41 = a1 + 64;
  v37 = v16;
  v38 = a1;
  while ((v14 & 0x8000000000000000) == 0 && v14 < 1 << *(a1 + 32))
  {
    if ((*(v12 + 8 * (v14 >> 6)) & (1 << v14)) == 0)
    {
      goto LABEL_22;
    }

    if (v16 != *(a1 + 36))
    {
      goto LABEL_23;
    }

    v47 = 1 << v14;
    v48 = v14 >> 6;
    v46 = v15;
    v19 = *(*(a1 + 56) + 16 * v14);
    v49 = *(*(a1 + 48) + 16 * v14);
    v50 = v19;

    static TLVTag.asn1Sequence.getter();
    sub_100004074(&qword_10039E2D8, &qword_1002C3720);
    v20 = *(v7 + 72);
    v21 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v22 = swift_allocObject();
    v51 = v11;
    *(v22 + 16) = v39;
    static TLVTag.asn1IA5String.getter();

    TLV.init(tag:string:)();
    static TLVTag.asn1IA5String.getter();

    v23 = v42;
    TLV.init(tag:string:)();
    v11 = v51;
    TLV.init(tag:children:)();

    v52 = v11;
    v25 = v11[2];
    v24 = v11[3];
    if (v25 >= v24 >> 1)
    {
      sub_10004E380((v24 > 1), v25 + 1, 1);
      v23 = v42;
      v11 = v52;
    }

    v11[2] = v25 + 1;
    result = (*v40)(v11 + v21 + v25 * v20, v23, v43);
    a1 = v38;
    v17 = 1 << *(v38 + 32);
    v12 = v41;
    if (v14 >= v17)
    {
      goto LABEL_24;
    }

    v26 = *(v41 + 8 * v48);
    if ((v26 & v47) == 0)
    {
      goto LABEL_25;
    }

    LODWORD(v16) = v37;
    if (v37 != *(v38 + 36))
    {
      goto LABEL_26;
    }

    v27 = v26 & (-2 << (v14 & 0x3F));
    if (v27)
    {
      v17 = __clz(__rbit64(v27)) | v14 & 0x7FFFFFFFFFFFFFC0;
      v18 = v35;
    }

    else
    {
      v28 = v48 << 6;
      v29 = v48 + 1;
      v18 = v35;
      v30 = (v34 + 8 * v48);
      while (v29 < (v17 + 63) >> 6)
      {
        v32 = *v30++;
        v31 = v32;
        v28 += 64;
        ++v29;
        if (v32)
        {
          result = sub_100064AB0(v14, v37, 0);
          v17 = __clz(__rbit64(v31)) + v28;
          goto LABEL_4;
        }
      }

      result = sub_100064AB0(v14, v37, 0);
    }

LABEL_4:
    v15 = v46 + 1;
    v14 = v17;
    v7 = v36;
    if (v46 + 1 == v18)
    {
      return v11;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_1000BA0F4()
{
  v0 = type metadata accessor for Logger();
  sub_100003FD8(v0, qword_1003A19A0);
  sub_10000403C(v0, qword_1003A19A0);
  sub_10000411C(0, &qword_1003A26E0, SPRLogger_ptr);
  return static SPRLogger.monitor.getter();
}

uint64_t sub_1000BA160(int a1, uint64_t a2, uint64_t a3)
{
  if (qword_10039D4F8 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000403C(v3, qword_1003A19A0);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v6 = 136315394;
    v7 = _typeName(_:qualified:)();
    v9 = sub_100008F6C(v7, v8, &v15);

    *(v6 + 4) = v9;
    *(v6 + 12) = 2080;
    v10 = showFunction(signature:_:)(0xD000000000000028, 0x800000010034B6C0, _swiftEmptyArrayStorage);
    v12 = sub_100008F6C(v10, v11, &v15);

    *(v6 + 14) = v12;
    _os_log_impl(&_mh_execute_header, v4, v5, "%s.%s", v6, 0x16u);
    swift_arrayDestroy();
  }

  __chkstk_darwin(v13);
  return OS_dispatch_queue.sync<A>(execute:)();
}

void sub_1000BA3C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  v8 = type metadata accessor for TLV();
  v46 = *(v8 - 8);
  v9 = __chkstk_darwin(v8);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = &v39 - v13;
  __chkstk_darwin(v12);
  v16 = &v39 - v15;
  sub_1000BC438(v7, a3, a4);
  if (!v4)
  {
    v43 = v11;
    v44 = v14;
    v45 = v8;
    v17 = v46;
    if (TLV.derSize.getter() <= 75000)
    {
      sub_1000BBD6C();
      v24 = v45;
      sub_1000C0454(v16);
      v42 = 0;
      if (qword_10039D4F8 != -1)
      {
        swift_once();
      }

      v25 = type metadata accessor for Logger();
      sub_10000403C(v25, qword_1003A19A0);
      v26 = *(v17 + 16);
      v27 = v44;
      v26(v44, v16, v24);
      v28 = Logger.logObject.getter();
      v41 = static os_log_type_t.default.getter();
      v29 = os_log_type_enabled(v28, v41);
      v30 = v43;
      if (v29)
      {
        v31 = swift_slowAlloc();
        v39 = v31;
        v40 = swift_slowAlloc();
        v47 = v40;
        *v31 = 136315138;
        v26(v30, v27, v24);
        v32 = String.init<A>(describing:)();
        v34 = v33;
        v35 = *(v46 + 8);
        v35(v27, v24);
        v36 = sub_100008F6C(v32, v34, &v47);

        v37 = v39;
        *(v39 + 1) = v36;
        _os_log_impl(&_mh_execute_header, v28, v41, ".appendEvent(%s", v37, 0xCu);
        sub_10000959C(v40);

        v35(v16, v24);
      }

      else
      {

        v38 = *(v17 + 8);
        v38(v27, v24);
        v38(v16, v24);
      }
    }

    else
    {
      v47 = 0;
      v48 = 0xE000000000000000;
      _StringGuts.grow(_:)(47);

      v47 = 0xD000000000000016;
      v48 = 0x800000010034B6F0;
      v49 = TLV.derSize.getter();
      v18._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v18);

      v19._object = 0x800000010034B710;
      v19._countAndFlagsBits = 0xD000000000000015;
      String.append(_:)(v19);
      v49 = 75000;
      v20._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v20);

      v21 = v47;
      v22 = v48;
      sub_1000BC910();
      swift_allocError();
      *v23 = v21;
      *(v23 + 8) = v22;
      *(v23 + 16) = 1;
      swift_willThrow();
      (*(v17 + 8))(v16, v45);
    }
  }
}