uint64_t sub_10002D650(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v5[6] = a2;
  v5[7] = a3;
  return _swift_task_switch(sub_10002D674, 0, 0);
}

uint64_t sub_10002D674()
{
  sub_100024EA8(&qword_10009B310, &qword_10006E0E0);
  CUSendableWrapper.value.getter();
  v1 = *(v0 + 32);
  *(v0 + 80) = v1;
  sub_100024EA8(&qword_10009B308, &qword_10006E0D8);
  CUSendableWrapper.value.getter();
  *(v0 + 88) = *(v0 + 40);
  sub_100024EA8(&qword_10009B300, &qword_10006E0D0);
  CUSendableWrapper.value.getter();
  *(v0 + 96) = *(v0 + 16);
  v2 = swift_task_alloc();
  *(v0 + 112) = v2;
  *v2 = v0;
  v2[1] = sub_10002D78C;
  v3 = *(v0 + 64);

  return sub_10003286C(v1, v3);
}

uint64_t sub_10002D78C()
{
  v2 = *v1;
  *(v2 + 120) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_10002D8F8, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_10002D8F8()
{
  v14 = v0;
  if (qword_10009AD38 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10002AF48(v1, qword_10009B1C0);
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
    _os_log_impl(&_mh_execute_header, v2, v3, "### rapport handle request failed: error=%@", v4, 0xCu);
    sub_10002556C(v5, &unk_10009B2F0, &unk_10006E0C0);
  }

  v7 = v0[15];
  v8 = v0[12];

  v11 = 0;
  v12 = 0;
  v13 = v7;
  swift_errorRetain();
  v8(&v11, &v12, &v13);

  v9 = v0[1];

  return v9();
}

uint64_t sub_10002DACC(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4)
{
  v6 = *(a1 + 32);
  v7 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  if (a3)
  {
    a3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v8 = _Block_copy(a4);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;

  v6(v7, a3, sub_100030C70, v9);
}

void sub_10002DBD8(uint64_t a1, objc_class *a2, uint64_t a3, uint64_t a4)
{
  isa = a2;
  if (a1)
  {
    v7.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
    if (!isa)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v7.super.isa = 0;
  if (a2)
  {
LABEL_3:
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

LABEL_4:
  if (a3)
  {
    v8 = _convertErrorToNSError(_:)();
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  (*(a4 + 16))(a4, v7.super.isa, isa);
}

void sub_10002DCC0(uint64_t a1, void *a2)
{
  sub_10002AFE4((a1 + 32), *(a1 + 56));
  if (a2)
  {
    v3 = a2;
    sub_100024EA8(&qword_10009B2E0, &qword_10006E0B0);
    CheckedContinuation.resume(throwing:)();
  }

  else
  {
    sub_100024EA8(&qword_10009B2E0, &qword_10006E0B0);
    CheckedContinuation.resume(returning:)();
  }
}

uint64_t sub_10002DD50(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_100030568(&unk_10009B2D0, type metadata accessor for CPSRemoteLLMServer, &unk_10006E034);
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10002DE24, v3, v2);
}

uint64_t sub_10002DE24()
{
  if (qword_10009AD38 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10002AF48(v1, qword_10009B1C0);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "rapport info request", v4, 2u);
  }

  sub_100024EA8(&qword_10009B368, &qword_10006E140);
  v5 = type metadata accessor for CPSRemoteLLMFeature();
  v6 = *(v5 - 8);
  v7 = *(v6 + 72);
  v8 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_10006DF40;
  v10 = v9 + v8;
  v11 = *(v6 + 104);
  v11(v10, enum case for CPSRemoteLLMFeature.appleConnectToken(_:), v5);
  v11(v10 + v7, enum case for CPSRemoteLLMFeature.customURLExecution(_:), v5);
  v11(v10 + 2 * v7, enum case for CPSRemoteLLMFeature.foundationModelsLLM(_:), v5);
  v11(v10 + 3 * v7, enum case for CPSRemoteLLMFeature.interlinkedLLM(_:), v5);
  CPSRemoteLLMInfoResponse.init(supportedFeatures:)();
  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_10002E080(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_100030568(&unk_10009B2D0, type metadata accessor for CPSRemoteLLMServer, &unk_10006E034);
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10002E154, v3, v2);
}

uint64_t sub_10002E154()
{
  if (qword_10009AD38 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10002AF48(v1, qword_10009B1C0);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "rapport perform request", v4, 2u);
  }

  CPSRemoteLLMPerformResponse.init(response:)();
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_10002E294(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  sub_100030568(&unk_10009B2D0, type metadata accessor for CPSRemoteLLMServer, &unk_10006E034);
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[4] = v4;
  v2[5] = v3;

  return _swift_task_switch(sub_10002E368, v4, v3);
}

uint64_t sub_10002E368()
{
  if (qword_10009AD38 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10002AF48(v1, qword_10009B1C0);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "rapport get apple connect token", v4, 2u);
  }

  v5 = swift_task_alloc();
  *(v0 + 48) = v5;
  *v5 = v0;
  v5[1] = sub_10002E4B4;

  return sub_10002F290();
}

uint64_t sub_10002E4B4(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *v3;

  if (v2)
  {
    v8 = v7[1];

    return v8();
  }

  else
  {
    v6[7] = a2;
    v6[8] = a1;
    v10 = v6[4];
    v11 = v6[5];

    return _swift_task_switch(sub_10002E60C, v10, v11);
  }
}

uint64_t sub_10002E60C()
{
  CPSRemoteLLMAppleConnectTokenResponse.init(token:)();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10002E674(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  sub_100024EA8(&qword_10009B398, &qword_10006E168);
  v2[4] = swift_task_alloc();
  v3 = type metadata accessor for URLRequest();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v4 = type metadata accessor for CPSRemoteLLMExecuteURLRequest();
  v2[9] = v4;
  v2[10] = *(v4 - 8);
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  sub_100030568(&unk_10009B2D0, type metadata accessor for CPSRemoteLLMServer, &unk_10006E034);
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[13] = v6;
  v2[14] = v5;

  return _swift_task_switch(sub_10002E858, v6, v5);
}

uint64_t sub_10002E858()
{
  v45 = v0;
  if (qword_10009AD38 != -1)
  {
    swift_once();
  }

  v1 = v0[12];
  v2 = v0[9];
  v3 = v0[10];
  v4 = v0[3];
  v5 = type metadata accessor for Logger();
  v0[15] = sub_10002AF48(v5, qword_10009B1C0);
  v6 = *(v3 + 16);
  v6(v1, v4, v2);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[12];
  v12 = v0[9];
  v11 = v0[10];
  if (v9)
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v44[0] = v14;
    *v13 = 136315138;
    v42 = v6;
    v15 = CPSRemoteLLMExecuteURLRequest.url.getter();
    v17 = v16;
    v43 = *(v11 + 8);
    v43(v10, v12);
    v18 = v15;
    v6 = v42;
    v19 = sub_100030690(v18, v17, v44);

    *(v13 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v7, v8, "rapport execute url request: %s", v13, 0xCu);
    sub_100024EF0(v14);
  }

  else
  {

    v43 = *(v11 + 8);
    v43(v10, v12);
  }

  v21 = v0[5];
  v20 = v0[6];
  v22 = v0[4];
  CPSRemoteLLMExecuteURLRequest.urlRequest.getter();
  if ((*(v20 + 48))(v22, 1, v21) == 1)
  {
    v23 = v0[11];
    v24 = v0[9];
    v25 = v0[3];
    sub_10002556C(v0[4], &qword_10009B398, &qword_10006E168);
    v6(v23, v25, v24);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();
    v28 = os_log_type_enabled(v26, v27);
    v29 = v0[11];
    v30 = v0[9];
    if (v28)
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v44[0] = v32;
      *v31 = 136315138;
      v33 = CPSRemoteLLMExecuteURLRequest.url.getter();
      v35 = v34;
      v43(v29, v30);
      v36 = sub_100030690(v33, v35, v44);

      *(v31 + 4) = v36;
      _os_log_impl(&_mh_execute_header, v26, v27, "Invalid url request to %s", v31, 0xCu);
      sub_100024EF0(v32);
    }

    else
    {

      v43(v29, v30);
    }

    v39 = objc_allocWithZone(type metadata accessor for CUError());
    CUError.init(_:_:_:)();
    swift_willThrow();

    v40 = v0[1];

    return v40();
  }

  else
  {
    (*(v0[6] + 32))(v0[8], v0[4], v0[5]);
    v0[16] = [objc_opt_self() sharedSession];
    v37 = swift_task_alloc();
    v0[17] = v37;
    *v37 = v0;
    v37[1] = sub_10002ED30;
    v38 = v0[8];

    return NSURLSession.data(for:delegate:)(v38, 0);
  }
}

uint64_t sub_10002ED30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v6 = *v4;
  v7 = *(*v4 + 128);
  v6[18] = a1;
  v6[19] = a2;
  v6[20] = a3;
  v6[21] = v3;

  v8 = v5[14];
  v9 = v5[13];
  if (v3)
  {
    v10 = sub_10002F1DC;
  }

  else
  {
    v10 = sub_10002EE90;
  }

  return _swift_task_switch(v10, v9, v8);
}

uint64_t sub_10002EE90()
{
  v31 = v0;
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  if (v1)
  {
    v2 = v0[20];
    v3 = v0[8];
    v5 = v0[5];
    v4 = v0[6];
    [v1 statusCode];
    CPSRemoteLLMExecuteURLResponse.init(data:statusCode:)();

    (*(v4 + 8))(v3, v5);

    v6 = v0[1];
  }

  else
  {
    (*(v0[6] + 16))(v0[7], v0[8], v0[5]);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    v9 = os_log_type_enabled(v7, v8);
    v11 = v0[6];
    v10 = v0[7];
    v12 = v0[5];
    if (v9)
    {
      v13 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v30 = v29;
      *v13 = 136315138;
      sub_100030568(&qword_10009B3A0, &type metadata accessor for URLRequest, &protocol conformance descriptor for URLRequest);
      v14 = dispatch thunk of CustomStringConvertible.description.getter();
      v16 = v15;
      v28 = v8;
      v17 = *(v11 + 8);
      v17(v10, v12);
      v18 = v17;
      v19 = sub_100030690(v14, v16, &v30);

      *(v13 + 4) = v19;
      _os_log_impl(&_mh_execute_header, v7, v28, "Received non-HTTPURLResponse from URLRequest %s", v13, 0xCu);
      sub_100024EF0(v29);
    }

    else
    {

      v20 = *(v11 + 8);
      v20(v10, v12);
      v18 = v20;
    }

    v21 = v0[19];
    v22 = v0[20];
    v23 = v0[18];
    v24 = v0[8];
    v25 = v0[5];
    v26 = objc_allocWithZone(type metadata accessor for CUError());
    CUError.init(_:_:_:)();
    swift_willThrow();
    sub_100025410(v23, v21);

    v18(v24, v25);

    v6 = v0[1];
  }

  return v6();
}

uint64_t sub_10002F1DC()
{
  (*(v0[6] + 8))(v0[8], v0[5]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_10002F290()
{
  sub_100030568(&unk_10009B2D0, type metadata accessor for CPSRemoteLLMServer, &unk_10006E034);
  v2 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v0 + 248) = v2;
  *(v0 + 256) = v1;

  return _swift_task_switch(sub_10002F360, v2, v1);
}

uint64_t sub_10002F360(uint64_t a1)
{
  if (ACMobileAuthenticationContext && IsAppleInternalBuild())
  {
    if (qword_10009AD38 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    v1[33] = sub_10002AF48(v2, qword_10009B1C0);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "getAppleConnectToken start", v5, 2u);
    }

    v6 = [objc_allocWithZone(ACAuthenticationRequest) init];
    v1[34] = v6;
    [v6 setAuthType:3];
    [v6 setInteractivityType:0];
    v7 = String._bridgeToObjectiveC()();
    [v6 setOauthClientID:v7];

    [v6 setOauthGrantType:2];
    isa = Array._bridgeToObjectiveC()().super.isa;
    [v6 setOauthScopes:isa];

    v9 = [objc_allocWithZone(ACMobileAuthenticationContext) init];
    v1[35] = v9;
    [v9 setEnvironment:0];
    v1[2] = v1;
    v1[7] = v1 + 30;
    v1[3] = sub_10002F8E8;
    swift_continuation_init();
    v10 = sub_100024EA8(&qword_10009B370, &qword_10006E150);
    v1[17] = v10;
    v11 = sub_100034710(v1 + 14);
    v12 = *(v10 - 8);
    v13 = swift_task_alloc();
    sub_1000254BC(0, &qword_10009B378, ACAuthenticationResponse_ptr);
    CheckedContinuation.init(continuation:function:)();
    (*(v12 + 32))(v11, v13, v10);
    v1[10] = _NSConcreteStackBlock;
    v1[11] = 1107296256;
    v1[12] = sub_10002FEEC;
    v1[13] = &unk_10008B110;
    [v9 authenticateWithRequest:v6 completion:?];
    (*(v12 + 8))(v11, v10);

    return _swift_continuation_await(v1 + 2);
  }

  else
  {
    v14 = objc_allocWithZone(type metadata accessor for CUError());
    CUError.init(_:_:_:)();
    swift_willThrow();
    if (qword_10009AD38 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_10002AF48(v15, qword_10009B1C0);
    swift_errorRetain();
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v18 = 138412290;
      swift_errorRetain();
      v20 = _swift_stdlib_bridgeErrorToNSError();
      *(v18 + 4) = v20;
      *v19 = v20;
      _os_log_impl(&_mh_execute_header, v16, v17, "### getAppleConnectToken failed: error=%@", v18, 0xCu);
      sub_10002556C(v19, &unk_10009B2F0, &unk_10006E0C0);
    }

    swift_willThrow();
    v21 = v1[1];

    return v21();
  }
}

uint64_t sub_10002F8E8()
{
  v1 = *(*v0 + 256);
  v2 = *(*v0 + 248);

  return _swift_task_switch(sub_10002F9F0, v2, v1);
}

uint64_t sub_10002F9F0()
{
  v40 = v0;
  v1 = v0[30];
  v2 = [v1 serviceTicket];
  if (v2)
  {
    v3 = v2;
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;

    v0[18] = v4;
    v0[19] = v6;
    v0[20] = 44;
    v0[21] = 0xE100000000000000;
    sub_1000347D4();
    v7 = StringProtocol.components<A>(separatedBy:)();

    if (v7[2])
    {
      v9 = v7[4];
      v8 = v7[5];

      v0[22] = v9;
      v0[23] = v8;
      v0[24] = 0x64692D687475616FLL;
      v0[25] = 0xEF3A6E656B6F742DLL;
      v0[26] = 0;
      v0[27] = 0xE000000000000000;
      v10 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
      v12 = v11;

      v0[28] = v10;
      v0[29] = v12;
      v13 = type metadata accessor for CharacterSet();
      v14 = *(v13 - 8);
      v15 = swift_task_alloc();
      static CharacterSet.whitespacesAndNewlines.getter();
      v16 = StringProtocol.trimmingCharacters(in:)();
      v18 = v17;
      (*(v14 + 8))(v15, v13);

      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.default.getter();

      v21 = os_log_type_enabled(v19, v20);
      v23 = v0[34];
      v22 = v0[35];
      if (v21)
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v39 = v25;
        *v24 = 136315138;
        *(v24 + 4) = sub_100030690(v16, v18, &v39);
        _os_log_impl(&_mh_execute_header, v19, v20, "getAppleConnectToken success: token=%s", v24, 0xCu);
        sub_100024EF0(v25);
      }

      v26 = v0[1];

      return v26(v16, v18);
    }

    __break(1u);
    goto LABEL_15;
  }

  v28 = v0[34];
  v29 = v0[35];
  v30 = [v1 error];
  v31 = objc_allocWithZone(type metadata accessor for CUError());
  CUError.init(_:_:_:)();
  swift_willThrow();

  if (qword_10009AD38 != -1)
  {
LABEL_15:
    swift_once();
  }

  v32 = type metadata accessor for Logger();
  sub_10002AF48(v32, qword_10009B1C0);
  swift_errorRetain();
  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    *v35 = 138412290;
    swift_errorRetain();
    v37 = _swift_stdlib_bridgeErrorToNSError();
    *(v35 + 4) = v37;
    *v36 = v37;
    _os_log_impl(&_mh_execute_header, v33, v34, "### getAppleConnectToken failed: error=%@", v35, 0xCu);
    sub_10002556C(v36, &unk_10009B2F0, &unk_10006E0C0);
  }

  swift_willThrow();
  v38 = v0[1];

  return v38();
}

uint64_t sub_10002FEEC(uint64_t a1, void *a2)
{
  sub_10002AFE4((a1 + 32), *(a1 + 56));
  v3 = a2;
  sub_100024EA8(&qword_10009B370, &qword_10006E150);
  return CheckedContinuation.resume(returning:)();
}

uint64_t sub_10002FF4C(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = sub_100030568(&qword_10009B2C8, type metadata accessor for CPSRemoteLLMServer, &unk_10006DFDC);

  return CUEnvironmental<>.unownedExecutor.getter(v4, v5, a2);
}

uint64_t sub_10002FFEC(uint64_t a1)
{
  *(v2 + 16) = *v1;
  sub_100030568(&unk_10009B2D0, type metadata accessor for CPSRemoteLLMServer, &unk_10006E034);
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000300A0, v4, v3);
}

uint64_t sub_1000300A0()
{
  v1 = sub_10002BEBC();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_100030100(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100030198;

  return sub_10002C94C(a1);
}

uint64_t sub_100030198(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_100030294@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC10companiond18CPSRemoteLLMServer_environment;
  v5 = type metadata accessor for CUEnvironmentValues();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t (*CUEnvironmentValues.cpsRemoteLLMServerEnabled.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = sub_10002B304();
  CUEnvironmentValues.subscript.getter();
  *(a1 + 16) = *(a1 + 17);
  return sub_1000303C0;
}

uint64_t type metadata accessor for CPSRemoteLLMServer(uint64_t a1)
{
  result = qword_10009B220;
  if (!qword_10009B220)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10003044C(uint64_t a1)
{
  result = type metadata accessor for CUEnvironmentValues();
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

uint64_t sub_100030510(uint64_t a1)
{
  result = sub_100030568(&qword_10009B2C8, type metadata accessor for CPSRemoteLLMServer, &unk_10006DFDC);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100030568(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000305B0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000305C8()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100030618(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_100030690(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_10003075C(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_100030618(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100024EF0(v11);
  return v7;
}

unint64_t sub_10003075C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_100030868(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = _StringObject.sharedUTF8.getter();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void *sub_100030868(uint64_t a1, unint64_t a2)
{
  v3 = sub_1000308B4(a1, a2);
  sub_1000309E4(&off_10008A9F0);
  return v3;
}

void *sub_1000308B4(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return _swiftEmptyArrayStorage;
  }

  v6 = sub_100030AD0(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = _StringObject.sharedUTF8.getter();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return _swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100030AD0(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1000309E4(uint64_t result)
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

  result = sub_100030B44(result, v11, 1, v3);
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

void *sub_100030AD0(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_100024EA8(&qword_10009B388, &qword_10006E158);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100030B44(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100024EA8(&qword_10009B388, &qword_10006E158);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_100030C38()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100030C78()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100030CE4()
{
  v1 = sub_100024EA8(&qword_10009B310, &qword_10006E0E0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v17 = (v3 + 16) & ~v3;
  v18 = v1;
  v4 = *(v2 + 64);
  v5 = sub_100024EA8(&qword_10009B308, &qword_10006E0D8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = (v17 + v4 + v7) & ~v7;
  v9 = *(v6 + 64);
  v10 = sub_100024EA8(&qword_10009B300, &qword_10006E0D0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 80);
  v13 = (v8 + v9 + v12) & ~v12;
  v14 = v3 | v7 | v12;
  v15 = (*(v11 + 64) + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v17, v18);
  (*(v6 + 8))(v0 + v8, v5);
  (*(v11 + 8))(v0 + v13, v10);

  return _swift_deallocObject(v0, v15 + 8, v14 | 7);
}

uint64_t sub_100030EE8(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_100024EA8(&qword_10009B310, &qword_10006E0E0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_100024EA8(&qword_10009B308, &qword_10006E0D8) - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(sub_100024EA8(&qword_10009B300, &qword_10006E0D0) - 8);
  v12 = (v9 + v10 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = *(v1 + ((*(v11 + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8));
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_1000240AC;

  return sub_10002D650(a1, v1 + v6, v1 + v9, v1 + v12, v13);
}

unint64_t sub_1000310DC()
{
  result = qword_10009B330;
  if (!qword_10009B330)
  {
    sub_1000254BC(255, &qword_10009B1B0, OS_dispatch_queue_serial_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009B330);
  }

  return result;
}

uint64_t sub_100031144(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000240AC;

  return sub_10002448C(a1, v4);
}

unint64_t sub_1000311FC(uint64_t a1)
{
  v2 = static Hasher._hash(seed:_:)();

  return sub_100032038(a1, v2);
}

unint64_t sub_100031240(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return sub_1000320A4(a1, v4);
}

unint64_t sub_100031284(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return sub_10003216C(a1, a2, v4);
}

unint64_t sub_1000312FC(uint64_t a1)
{
  type metadata accessor for CPSRequesterUseCaseConfiguration.UseCase();
  sub_100030568(&qword_10009B3B8, &type metadata accessor for CPSRequesterUseCaseConfiguration.UseCase, &protocol conformance descriptor for CPSRequesterUseCaseConfiguration.UseCase);
  v2 = dispatch thunk of Hashable._rawHashValue(seed:)();

  return sub_100032224(a1, v2);
}

Swift::Int sub_100031394(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100024EA8(&qword_10009B390, &qword_10006E160);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = v19 | (v8 << 6);
      v23 = *(v5 + 48) + 40 * v22;
      if (v4)
      {
        v24 = *v23;
        v25 = *(v23 + 16);
        v38 = *(v23 + 32);
        v36 = v24;
        v37 = v25;
        sub_1000347C4((*(v5 + 56) + 32 * v22), v35);
      }

      else
      {
        sub_10003482C(v23, &v36);
        sub_100030618(*(v5 + 56) + 32 * v22, v35);
      }

      result = AnyHashable._rawHashValue(seed:)(*(v7 + 40));
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 40 * v15;
      v17 = v36;
      v18 = v37;
      *(v16 + 32) = v38;
      *v16 = v17;
      *(v16 + 16) = v18;
      result = sub_1000347C4(v35, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if (v4)
    {
      v33 = 1 << *(v5 + 32);
      if (v33 >= 64)
      {
        bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v33;
      }

      *(v5 + 16) = 0;
    }

    v3 = v34;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_10003164C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  sub_100024EA8(a3, a4);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v9 = result;
  if (*(v7 + 16))
  {
    v32 = v5;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v21 = v18 | (v10 << 6);
      v22 = *(*(v7 + 48) + 8 * v21);
      v23 = *(*(v7 + 56) + 8 * v21);
      if ((v6 & 1) == 0)
      {
      }

      result = static Hasher._hash(seed:_:)();
      v24 = -1 << *(v9 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v16 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v16 + 8 * v26);
          if (v30 != -1)
          {
            v17 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v25) & ~*(v16 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v9 + 48) + 8 * v17) = v22;
      *(*(v9 + 56) + 8 * v17) = v23;
      ++*(v9 + 16);
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v10 >= v15)
      {
        break;
      }

      v20 = v11[v10];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v6 & 1) == 0)
    {

      v5 = v32;
      goto LABEL_33;
    }

    v31 = 1 << *(v7 + 32);
    v5 = v32;
    if (v31 >= 64)
    {
      bzero((v7 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v31;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v5 = v9;
  return result;
}

Swift::Int sub_1000318B4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100024EA8(&qword_10009B3A8, &qword_10006E178);
  v34 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

_OWORD *sub_100031B70(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_100031240(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_1000323F8();
      goto LABEL_7;
    }

    sub_100031394(v13, a3 & 1);
    v19 = sub_100031240(a2);
    if ((v14 & 1) == (v20 & 1))
    {
      v10 = v19;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_10003482C(a2, v21);
      return sub_100031FBC(v10, v21, a1, v16);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if ((v14 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v17 = (v16[7] + 32 * v10);
  sub_100024EF0(v17);

  return sub_1000347C4(a1, v17);
}

unint64_t sub_100031CD0(uint64_t a1, uint64_t a2, char a3, uint64_t *a4, uint64_t *a5)
{
  v8 = v5;
  v12 = *v5;
  result = sub_1000311FC(a2);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 < v18 || (a3 & 1) != 0)
    {
      sub_10003164C(v18, a3 & 1, a4, a5);
      result = sub_1000311FC(a2);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_16:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = result;
      sub_1000325B0(a4, a5);
      result = v21;
    }
  }

  v23 = *v8;
  if ((v19 & 1) == 0)
  {
    v23[(result >> 6) + 8] |= 1 << result;
    *(v23[6] + 8 * result) = a2;
    *(v23[7] + 8 * result) = a1;
    v24 = v23[2];
    v17 = __OFADD__(v24, 1);
    v25 = v24 + 1;
    if (!v17)
    {
      v23[2] = v25;
      return result;
    }

    goto LABEL_15;
  }

  *(v23[7] + 8 * result) = a1;
}

uint64_t sub_100031E40(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_100031284(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1000318B4(v16, a4 & 1);
      v11 = sub_100031284(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_1000326FC();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v23 = (v21[6] + 16 * v11);
  *v23 = a2;
  v23[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v24 = v21[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v25;
}

_OWORD *sub_100031FBC(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = sub_1000347C4(a3, (a4[7] + 32 * a1));
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

unint64_t sub_100032038(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1000320A4(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_10003482C(*(v2 + 48) + 40 * v4, v8);
      v6 = static AnyHashable.== infix(_:_:)();
      sub_1000346BC(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_10003216C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_100032224(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v4 = type metadata accessor for CPSRequesterUseCaseConfiguration.UseCase();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v2;
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  v18 = v2 + 64;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v13 = *(v5 + 16);
    v12 = v5 + 16;
    v11 = v13;
    v14 = *(v12 + 56);
    do
    {
      v11(v7, *(v20 + 48) + v14 * v9, v4);
      sub_100030568(&qword_10009B3C0, &type metadata accessor for CPSRequesterUseCaseConfiguration.UseCase, &protocol conformance descriptor for CPSRequesterUseCaseConfiguration.UseCase);
      v15 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v12 - 8))(v7, v4);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

void *sub_1000323F8()
{
  v1 = v0;
  sub_100024EA8(&qword_10009B390, &qword_10006E160);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 40 * v17;
        sub_10003482C(*(v2 + 48) + 40 * v17, v23);
        v17 *= 32;
        sub_100030618(*(v2 + 56) + v17, v22);
        v19 = *(v4 + 48) + v18;
        v20 = v23[0];
        v21 = v23[1];
        *(v19 + 32) = v24;
        *v19 = v20;
        *(v19 + 16) = v21;
        result = sub_1000347C4(v22, (*(v4 + 56) + v17));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1000325B0(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_100024EA8(a1, a2);
  v4 = *v2;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = *(*(v4 + 56) + 8 * v19);
        *(*(v6 + 48) + 8 * v19) = *(*(v4 + 48) + 8 * v19);
        *(*(v6 + 56) + 8 * v19) = v20;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

void *sub_1000326FC()
{
  v1 = v0;
  sub_100024EA8(&qword_10009B3A8, &qword_10006E178);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_10003286C(uint64_t a1, uint64_t a2)
{
  v3[58] = a2;
  v3[59] = v2;
  v3[57] = a1;
  v4 = type metadata accessor for CPSRemoteLLMExecuteURLRequest();
  v3[60] = v4;
  v3[61] = *(v4 - 8);
  v3[62] = swift_task_alloc();
  v5 = type metadata accessor for CPSRemoteLLMAppleConnectTokenRequest();
  v3[63] = v5;
  v3[64] = *(v5 - 8);
  v3[65] = swift_task_alloc();
  v6 = type metadata accessor for CPSRemoteLLMPerformRequest();
  v3[66] = v6;
  v3[67] = *(v6 - 8);
  v3[68] = swift_task_alloc();
  v7 = type metadata accessor for CPSRemoteLLMInfoRequest();
  v3[69] = v7;
  v3[70] = *(v7 - 8);
  v3[71] = swift_task_alloc();
  v8 = type metadata accessor for CPSRemoteLLMRequestMessage();
  v3[72] = v8;
  v3[73] = *(v8 - 8);
  v3[74] = swift_task_alloc();
  v3[75] = swift_task_alloc();
  sub_100030568(&unk_10009B2D0, type metadata accessor for CPSRemoteLLMServer, &unk_10006E034);
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[76] = v10;
  v3[77] = v9;

  return _swift_task_switch(sub_100032B28, v10, v9);
}

uint64_t sub_100032B28()
{
  v1 = v0[57];
  v0[49] = static CPSRemoteLLMConstants.rapportKeyMessageData.getter();
  v0[50] = v2;
  AnyHashable.init<A>(_:)();
  if (!*(v1 + 16) || (v3 = sub_100031240((v0 + 2)), (v4 & 1) == 0))
  {
    sub_1000346BC((v0 + 2));
    goto LABEL_7;
  }

  sub_100030618(*(v0[57] + 56) + 32 * v3, (v0 + 37));
  sub_1000346BC((v0 + 2));
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_7:
    v7 = objc_allocWithZone(type metadata accessor for CUError());
    CUError.init(_:_:_:)();
    swift_willThrow();
    goto LABEL_8;
  }

  v5 = v0[51];
  v6 = v0[52];
  v0[78] = v5;
  v0[79] = v6;
  if (IsAppleInternalBuild())
  {
    sub_100030568(&qword_10009B340, &type metadata accessor for CPSRemoteLLMRequestMessage, &protocol conformance descriptor for CPSRemoteLLMRequestMessage);
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    v11 = v0[74];
    v12 = v0[73];
    v13 = v0[72];
    (*(v12 + 16))(v11, v0[75], v13);
    v14 = (*(v12 + 88))(v11, v13);
    if (v14 == enum case for CPSRemoteLLMRequestMessage.info(_:))
    {
      v15 = v0[74];
      v16 = v0[71];
      v17 = v0[70];
      v18 = v0[69];
      (*(v0[73] + 96))(v15, v0[72]);
      (*(v17 + 32))(v16, v15, v18);
      v0[35] = type metadata accessor for CPSRemoteLLMInfoResponse();
      v0[36] = sub_100030568(&qword_10009B360, &type metadata accessor for CPSRemoteLLMInfoResponse, &protocol conformance descriptor for CPSRemoteLLMInfoResponse);
      v19 = sub_100034710(v0 + 32);
      v20 = swift_task_alloc();
      v0[80] = v20;
      *v20 = v0;
      v20[1] = sub_1000332AC;

      return sub_10002DD50(v19);
    }

    else if (v14 == enum case for CPSRemoteLLMRequestMessage.perform(_:))
    {
      v21 = v0[74];
      v22 = v0[68];
      v23 = v0[67];
      v24 = v0[66];
      (*(v0[73] + 96))(v21, v0[72]);
      (*(v23 + 32))(v22, v21, v24);
      v0[30] = type metadata accessor for CPSRemoteLLMPerformResponse();
      v0[31] = sub_100030568(&qword_10009B358, &type metadata accessor for CPSRemoteLLMPerformResponse, &protocol conformance descriptor for CPSRemoteLLMPerformResponse);
      v25 = sub_100034710(v0 + 27);
      v26 = swift_task_alloc();
      v0[82] = v26;
      *v26 = v0;
      v26[1] = sub_1000336A8;

      return sub_10002E080(v25);
    }

    else if (v14 == enum case for CPSRemoteLLMRequestMessage.getAppleConnectToken(_:))
    {
      v27 = v0[74];
      v28 = v0[65];
      v29 = v0[63];
      v30 = v0[64];
      (*(v0[73] + 96))(v27, v0[72]);
      (*(v30 + 32))(v28, v27, v29);
      v0[25] = type metadata accessor for CPSRemoteLLMAppleConnectTokenResponse();
      v0[26] = sub_100030568(&qword_10009B350, &type metadata accessor for CPSRemoteLLMAppleConnectTokenResponse, &protocol conformance descriptor for CPSRemoteLLMAppleConnectTokenResponse);
      v31 = sub_100034710(v0 + 22);
      v32 = swift_task_alloc();
      v0[84] = v32;
      *v32 = v0;
      v32[1] = sub_100033AA4;

      return sub_10002E294(v31);
    }

    else if (v14 == enum case for CPSRemoteLLMRequestMessage.executeURL(_:))
    {
      v33 = v0[74];
      v35 = v0[61];
      v34 = v0[62];
      v36 = v0[60];
      (*(v0[73] + 96))(v33, v0[72]);
      (*(v35 + 32))(v34, v33, v36);
      v0[15] = type metadata accessor for CPSRemoteLLMExecuteURLResponse();
      v0[16] = sub_100030568(&qword_10009B348, &type metadata accessor for CPSRemoteLLMExecuteURLResponse, &protocol conformance descriptor for CPSRemoteLLMExecuteURLResponse);
      v37 = sub_100034710(v0 + 12);
      v38 = swift_task_alloc();
      v0[86] = v38;
      *v38 = v0;
      v38[1] = sub_100033E9C;
      v39 = v0[62];

      return sub_10002E674(v37, v39);
    }

    else
    {

      return _diagnoseUnexpectedEnumCase<A>(type:)();
    }
  }

  v10 = objc_allocWithZone(type metadata accessor for CUError());
  CUError.init(_:_:_:)();
  swift_willThrow();
  sub_100025410(v5, v6);
LABEL_8:

  v8 = v0[1];

  return v8();
}

uint64_t sub_1000332AC()
{
  v2 = *v1;
  *(*v1 + 648) = v0;

  v3 = *(v2 + 616);
  v4 = *(v2 + 608);
  if (v0)
  {
    v5 = sub_100034294;
  }

  else
  {
    v5 = sub_1000333E8;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1000333E8()
{
  v20 = v0;
  (*(*(v0 + 560) + 8))(*(v0 + 568), *(v0 + 552));
  sub_10002B454((v0 + 256), v0 + 56);
  v1 = *(v0 + 648);
  *(v0 + 424) = static CPSRemoteLLMConstants.rapportKeyMessageData.getter();
  *(v0 + 432) = v2;
  AnyHashable.init<A>(_:)();
  sub_10002AFE4((v0 + 56), *(v0 + 80));
  v3 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  if (v1)
  {
    v5 = *(v0 + 600);
    v6 = *(v0 + 584);
    v7 = *(v0 + 576);
    sub_100025410(*(v0 + 624), *(v0 + 632));
    sub_1000346BC(v0 + 136);
    (*(v6 + 8))(v5, v7);
    sub_100024EF0((v0 + 56));
  }

  else
  {
    v9 = *(v0 + 632);
    v10 = *(v0 + 624);
    v11 = *(v0 + 600);
    v12 = *(v0 + 584);
    v13 = *(v0 + 576);
    *(v0 + 352) = &type metadata for Data;
    *(v0 + 328) = v3;
    *(v0 + 336) = v4;
    sub_1000347C4((v0 + 328), (v0 + 360));
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = &_swiftEmptyDictionarySingleton;
    sub_100031B70((v0 + 360), v0 + 136, isUniquelyReferenced_nonNull_native);
    sub_1000346BC(v0 + 136);
    sub_100024EA8(&qword_10009B300, &qword_10006E0D0);
    CUSendableWrapper.value.getter();
    v15 = *(v0 + 440);
    v17 = &_swiftEmptyDictionarySingleton;
    v18 = 0;
    v19 = 0;
    v15(&v17, &v18, &v19);
    sub_100025410(v10, v9);

    (*(v12 + 8))(v11, v13);

    sub_100024EF0((v0 + 56));
  }

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1000336A8()
{
  v2 = *v1;
  *(*v1 + 664) = v0;

  v3 = *(v2 + 616);
  v4 = *(v2 + 608);
  if (v0)
  {
    v5 = sub_1000343A0;
  }

  else
  {
    v5 = sub_1000337E4;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1000337E4()
{
  v20 = v0;
  (*(*(v0 + 536) + 8))(*(v0 + 544), *(v0 + 528));
  sub_10002B454((v0 + 216), v0 + 56);
  v1 = *(v0 + 664);
  *(v0 + 424) = static CPSRemoteLLMConstants.rapportKeyMessageData.getter();
  *(v0 + 432) = v2;
  AnyHashable.init<A>(_:)();
  sub_10002AFE4((v0 + 56), *(v0 + 80));
  v3 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  if (v1)
  {
    v5 = *(v0 + 600);
    v6 = *(v0 + 584);
    v7 = *(v0 + 576);
    sub_100025410(*(v0 + 624), *(v0 + 632));
    sub_1000346BC(v0 + 136);
    (*(v6 + 8))(v5, v7);
    sub_100024EF0((v0 + 56));
  }

  else
  {
    v9 = *(v0 + 632);
    v10 = *(v0 + 624);
    v11 = *(v0 + 600);
    v12 = *(v0 + 584);
    v13 = *(v0 + 576);
    *(v0 + 352) = &type metadata for Data;
    *(v0 + 328) = v3;
    *(v0 + 336) = v4;
    sub_1000347C4((v0 + 328), (v0 + 360));
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = &_swiftEmptyDictionarySingleton;
    sub_100031B70((v0 + 360), v0 + 136, isUniquelyReferenced_nonNull_native);
    sub_1000346BC(v0 + 136);
    sub_100024EA8(&qword_10009B300, &qword_10006E0D0);
    CUSendableWrapper.value.getter();
    v15 = *(v0 + 440);
    v17 = &_swiftEmptyDictionarySingleton;
    v18 = 0;
    v19 = 0;
    v15(&v17, &v18, &v19);
    sub_100025410(v10, v9);

    (*(v12 + 8))(v11, v13);

    sub_100024EF0((v0 + 56));
  }

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_100033AA4()
{
  v2 = *v1;
  *(*v1 + 680) = v0;

  v3 = *(v2 + 616);
  v4 = *(v2 + 608);
  if (v0)
  {
    v5 = sub_1000344AC;
  }

  else
  {
    v5 = sub_100033BE0;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100033BE0()
{
  v20 = v0;
  (*(*(v0 + 512) + 8))(*(v0 + 520), *(v0 + 504));
  sub_10002B454((v0 + 176), v0 + 56);
  v1 = *(v0 + 680);
  *(v0 + 424) = static CPSRemoteLLMConstants.rapportKeyMessageData.getter();
  *(v0 + 432) = v2;
  AnyHashable.init<A>(_:)();
  sub_10002AFE4((v0 + 56), *(v0 + 80));
  v3 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  if (v1)
  {
    v5 = *(v0 + 600);
    v6 = *(v0 + 584);
    v7 = *(v0 + 576);
    sub_100025410(*(v0 + 624), *(v0 + 632));
    sub_1000346BC(v0 + 136);
    (*(v6 + 8))(v5, v7);
    sub_100024EF0((v0 + 56));
  }

  else
  {
    v9 = *(v0 + 632);
    v10 = *(v0 + 624);
    v11 = *(v0 + 600);
    v12 = *(v0 + 584);
    v13 = *(v0 + 576);
    *(v0 + 352) = &type metadata for Data;
    *(v0 + 328) = v3;
    *(v0 + 336) = v4;
    sub_1000347C4((v0 + 328), (v0 + 360));
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = &_swiftEmptyDictionarySingleton;
    sub_100031B70((v0 + 360), v0 + 136, isUniquelyReferenced_nonNull_native);
    sub_1000346BC(v0 + 136);
    sub_100024EA8(&qword_10009B300, &qword_10006E0D0);
    CUSendableWrapper.value.getter();
    v15 = *(v0 + 440);
    v17 = &_swiftEmptyDictionarySingleton;
    v18 = 0;
    v19 = 0;
    v15(&v17, &v18, &v19);
    sub_100025410(v10, v9);

    (*(v12 + 8))(v11, v13);

    sub_100024EF0((v0 + 56));
  }

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_100033E9C()
{
  v2 = *v1;
  *(*v1 + 696) = v0;

  v3 = *(v2 + 616);
  v4 = *(v2 + 608);
  if (v0)
  {
    v5 = sub_1000345B4;
  }

  else
  {
    v5 = sub_100033FD8;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100033FD8()
{
  v20 = v0;
  (*(*(v0 + 488) + 8))(*(v0 + 496), *(v0 + 480));
  sub_10002B454((v0 + 96), v0 + 56);
  v1 = *(v0 + 696);
  *(v0 + 424) = static CPSRemoteLLMConstants.rapportKeyMessageData.getter();
  *(v0 + 432) = v2;
  AnyHashable.init<A>(_:)();
  sub_10002AFE4((v0 + 56), *(v0 + 80));
  v3 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  if (v1)
  {
    v5 = *(v0 + 600);
    v6 = *(v0 + 584);
    v7 = *(v0 + 576);
    sub_100025410(*(v0 + 624), *(v0 + 632));
    sub_1000346BC(v0 + 136);
    (*(v6 + 8))(v5, v7);
    sub_100024EF0((v0 + 56));
  }

  else
  {
    v9 = *(v0 + 632);
    v10 = *(v0 + 624);
    v11 = *(v0 + 600);
    v12 = *(v0 + 584);
    v13 = *(v0 + 576);
    *(v0 + 352) = &type metadata for Data;
    *(v0 + 328) = v3;
    *(v0 + 336) = v4;
    sub_1000347C4((v0 + 328), (v0 + 360));
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = &_swiftEmptyDictionarySingleton;
    sub_100031B70((v0 + 360), v0 + 136, isUniquelyReferenced_nonNull_native);
    sub_1000346BC(v0 + 136);
    sub_100024EA8(&qword_10009B300, &qword_10006E0D0);
    CUSendableWrapper.value.getter();
    v15 = *(v0 + 440);
    v17 = &_swiftEmptyDictionarySingleton;
    v18 = 0;
    v19 = 0;
    v15(&v17, &v18, &v19);
    sub_100025410(v10, v9);

    (*(v12 + 8))(v11, v13);

    sub_100024EF0((v0 + 56));
  }

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_100034294()
{
  v1 = v0[75];
  v2 = v0[73];
  v3 = v0[72];
  v4 = v0[71];
  v5 = v0[70];
  v6 = v0[69];
  sub_100025410(v0[78], v0[79]);
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);
  sub_100034774(v0 + 32);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1000343A0()
{
  v1 = v0[75];
  v2 = v0[73];
  v3 = v0[72];
  v4 = v0[68];
  v5 = v0[67];
  v6 = v0[66];
  sub_100025410(v0[78], v0[79]);
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);
  sub_100034774(v0 + 27);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1000344AC()
{
  v1 = v0[75];
  v2 = v0[73];
  v3 = v0[72];
  v4 = v0[65];
  v5 = v0[63];
  v6 = v0[64];
  sub_100025410(v0[78], v0[79]);
  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);
  sub_100034774(v0 + 22);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1000345B4()
{
  v1 = v0[75];
  v2 = v0[73];
  v3 = v0[72];
  v5 = v0[61];
  v4 = v0[62];
  v6 = v0[60];
  sub_100025410(v0[78], v0[79]);
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);
  sub_100034774(v0 + 12);

  v7 = v0[1];

  return v7();
}

uint64_t *sub_100034710(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

void *sub_100034774(void *result)
{
  if ((*(*(result[3] - 8) + 80) & 0x20000) != 0)
  {
  }

  return result;
}

_OWORD *sub_1000347C4(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_1000347D4()
{
  result = qword_10009B380;
  if (!qword_10009B380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009B380);
  }

  return result;
}

uint64_t CUEnvironmentValues.cpsRequesterDaemonEnabled.getter()
{
  sub_10002B358();
  CUEnvironmentValues.subscript.getter();
  return v1;
}

uint64_t sub_1000348E8()
{
  v0 = type metadata accessor for Logger();
  sub_10002B76C(v0, qword_10009B3D0);
  sub_10002AF48(v0, qword_10009B3D0);
  static CPSConstants.logSubsystem.getter();
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100034954()
{
  v1[8] = v0;
  sub_100038BCC(&qword_10009B560, type metadata accessor for CPSRequesterDaemon, &unk_10006E28C);
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[9] = v3;
  v1[10] = v2;

  return _swift_task_switch(sub_100034A28, v3, v2);
}

uint64_t sub_100034A28()
{
  v26 = v0;
  v1 = *(v0 + 64);
  _StringGuts.grow(_:)(26);

  v24 = 0xD000000000000017;
  v25 = 0x8000000100073200;
  v2 = OBJC_IVAR____TtC10companiond18CPSRequesterDaemon__sessions;
  swift_beginAccess();
  *(v0 + 56) = *(*(v1 + v2) + 16);
  v3._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v3);

  v4._countAndFlagsBits = 10;
  v4._object = 0xE100000000000000;
  String.append(_:)(v4);
  v5 = v25;
  *(v0 + 40) = v24;
  *(v0 + 48) = v5;
  v6 = *(v1 + v2);
  *(v0 + 88) = v6;
  v7 = *(v6 + 32);
  *(v0 + 152) = v7;
  v8 = -1;
  v9 = -1 << v7;
  if (-(-1 << v7) < 64)
  {
    v8 = ~(-1 << -v9);
  }

  v10 = v8 & *(v6 + 64);
  *(v0 + 96) = _swiftEmptyArrayStorage;

  if (v10)
  {
    v12 = 0;
LABEL_8:
    *(v0 + 104) = v10;
    *(v0 + 112) = v12;
    *(v0 + 120) = *(*(v11 + 56) + ((v12 << 9) | (8 * __clz(__rbit64(v10)))));

    v14 = swift_task_alloc();
    *(v0 + 128) = v14;
    *v14 = v0;
    v14[1] = sub_100034D08;

    return sub_10004059C();
  }

  else
  {
    v13 = 0;
    while (((63 - v9) >> 6) - 1 != v13)
    {
      v12 = v13 + 1;
      v10 = *(v11 + 8 * v13++ + 72);
      if (v10)
      {
        goto LABEL_8;
      }
    }

    v24 = _swiftEmptyArrayStorage;

    sub_100037BC8(&v24);

    v16 = *(v24 + 2);
    if (v16)
    {
      v17 = (v24 + 40);
      do
      {
        v18 = *(v17 - 1);
        v19 = *v17;

        v20._countAndFlagsBits = v18;
        v20._object = v19;
        String.append(_:)(v20);

        v17 += 2;
        --v16;
      }

      while (v16);
    }

    v21 = *(v0 + 40);
    v22 = *(v0 + 48);
    v23 = *(v0 + 8);

    return v23(v21, v22);
  }
}

uint64_t sub_100034D08(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 136) = a1;
  *(v4 + 144) = a2;

  v5 = *(v3 + 80);
  v6 = *(v3 + 72);

  return _swift_task_switch(sub_100034E30, v6, v5);
}

uint64_t sub_100034E30()
{
  v24 = v0;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v2 = *(v0 + 96);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_20:
    v2 = sub_100037778(0, *(v2 + 2) + 1, 1, v2);
  }

  v4 = *(v2 + 2);
  v3 = *(v2 + 3);
  if (v4 >= v3 >> 1)
  {
    v2 = sub_100037778((v3 > 1), v4 + 1, 1, v2);
  }

  v6 = *(v0 + 136);
  v5 = *(v0 + 144);

  *(v2 + 2) = v4 + 1;
  v7 = &v2[16 * v4];
  *(v7 + 4) = v6;
  *(v7 + 5) = v5;
  v9 = *(v0 + 104);
  v8 = *(v0 + 112);
  *(v0 + 96) = v2;
  v10 = (v9 - 1) & v9;
  if (v10)
  {
    v11 = *(v0 + 88);
LABEL_10:
    *(v0 + 104) = v10;
    *(v0 + 112) = v8;
    *(v0 + 120) = *(*(v11 + 56) + ((v8 << 9) | (8 * __clz(__rbit64(v10)))));

    v13 = swift_task_alloc();
    *(v0 + 128) = v13;
    *v13 = v0;
    v13[1] = sub_100034D08;

    return sub_10004059C();
  }

  else
  {
    while (1)
    {
      v12 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        goto LABEL_20;
      }

      v11 = *(v0 + 88);
      if (v12 >= (((1 << *(v0 + 152)) + 63) >> 6))
      {
        break;
      }

      v10 = *(v11 + 8 * v12 + 64);
      ++v8;
      if (v10)
      {
        v8 = v12;
        goto LABEL_10;
      }
    }

    v23 = v2;

    sub_100037BC8(&v23);

    v15 = *(v23 + 2);
    if (v15)
    {
      v16 = (v23 + 40);
      do
      {
        v17 = *(v16 - 1);
        v18 = *v16;

        v19._countAndFlagsBits = v17;
        v19._object = v18;
        String.append(_:)(v19);

        v16 += 2;
        --v15;
      }

      while (v15);
    }

    v20 = *(v0 + 40);
    v21 = *(v0 + 48);
    v22 = *(v0 + 8);

    return v22(v20, v21);
  }
}

uint64_t sub_1000350B8(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  sub_100038BCC(&qword_10009B560, type metadata accessor for CPSRequesterDaemon, &unk_10006E28C);
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[7] = v4;
  v2[8] = v3;

  return _swift_task_switch(sub_10003518C, v4, v3);
}

uint64_t sub_10003518C()
{
  v25 = v0;
  if (qword_10009AD40 != -1)
  {
LABEL_23:
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10002AF48(v1, qword_10009B3D0);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 40);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v24 = v6;
    *v5 = 136446210;
    *(v5 + 4) = sub_100030690(*(v4 + 64), *(v4 + 72), &v24);
    _os_log_impl(&_mh_execute_header, v2, v3, "client ended: client=%{public}s", v5, 0xCu);
    sub_100024EF0(v6);
  }

  v7 = *(v0 + 48);
  v8 = OBJC_IVAR____TtC10companiond18CPSRequesterDaemon__sessions;
  swift_beginAccess();
  v9 = *(v7 + v8);
  *(v0 + 72) = v9;
  v10 = *(v9 + 32);
  *(v0 + 112) = v10;
  v11 = 1 << v10;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  else
  {
    v12 = -1;
  }

  v13 = v12 & *(v9 + 64);

  v14 = 0;
  if (v13)
  {
    while (1)
    {
      v15 = *(v0 + 72);
LABEL_13:
      *(v0 + 80) = v13;
      *(v0 + 88) = v14;
      v17 = (v14 << 9) | (8 * __clz(__rbit64(v13)));
      v18 = *(*(v15 + 48) + v17);
      *(v0 + 96) = *(*(v15 + 56) + v17);
      type metadata accessor for CPSXPCConnection(0);
      sub_100038BCC(&qword_10009B5A8, type metadata accessor for CPSXPCConnection, &unk_10006E9F8);

      v19 = Identifiable<>.id.getter();
      if (v19 == Identifiable<>.id.getter())
      {
        break;
      }

      v13 &= v13 - 1;
      if (!v13)
      {
        goto LABEL_9;
      }
    }

    v22 = swift_task_alloc();
    *(v0 + 104) = v22;
    *v22 = v0;
    v22[1] = sub_1000354EC;
    v23 = *(v0 + 40);

    return sub_10003581C(v18, v23);
  }

  else
  {
    while (1)
    {
LABEL_9:
      v16 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_23;
      }

      v15 = *(v0 + 72);
      if (v16 >= (((1 << *(v0 + 112)) + 63) >> 6))
      {
        break;
      }

      v13 = *(v15 + 8 * v16 + 64);
      ++v14;
      if (v13)
      {
        v14 = v16;
        goto LABEL_13;
      }
    }

    v20 = *(v0 + 8);

    return v20();
  }
}

uint64_t sub_1000354EC()
{
  v1 = *v0;

  v2 = *(v1 + 64);
  v3 = *(v1 + 56);

  return _swift_task_switch(sub_10003560C, v3, v2);
}

uint64_t sub_10003560C()
{

  v2 = *(v0 + 88);
  v3 = (*(v0 + 80) - 1) & *(v0 + 80);
  if (v3)
  {
    while (1)
    {
      result = *(v0 + 72);
LABEL_7:
      *(v0 + 80) = v3;
      *(v0 + 88) = v2;
      v5 = (v2 << 9) | (8 * __clz(__rbit64(v3)));
      v6 = *(*(result + 48) + v5);
      *(v0 + 96) = *(*(result + 56) + v5);
      type metadata accessor for CPSXPCConnection(0);
      sub_100038BCC(&qword_10009B5A8, type metadata accessor for CPSXPCConnection, &unk_10006E9F8);

      v7 = Identifiable<>.id.getter();
      if (v7 == Identifiable<>.id.getter())
      {
        break;
      }

      v3 &= v3 - 1;
      if (!v3)
      {
        goto LABEL_3;
      }
    }

    v9 = swift_task_alloc();
    *(v0 + 104) = v9;
    *v9 = v0;
    v9[1] = sub_1000354EC;
    v10 = *(v0 + 40);

    return sub_10003581C(v6, v10);
  }

  else
  {
    while (1)
    {
LABEL_3:
      v4 = v2 + 1;
      if (__OFADD__(v2, 1))
      {
        __break(1u);
        return result;
      }

      result = *(v0 + 72);
      if (v4 >= (((1 << *(v0 + 112)) + 63) >> 6))
      {
        break;
      }

      v3 = *(result + 8 * v4 + 64);
      ++v2;
      if (v3)
      {
        v2 = v4;
        goto LABEL_7;
      }
    }

    v8 = *(v0 + 8);

    return v8();
  }
}

uint64_t sub_10003581C(uint64_t a1, uint64_t a2)
{
  v3[7] = a2;
  v3[8] = v2;
  v3[6] = a1;
  v4 = type metadata accessor for DefaultStringInterpolation.PrintUtilsTimeDuration();
  v3[9] = v4;
  v3[10] = *(v4 - 8);
  v3[11] = swift_task_alloc();
  sub_100038BCC(&qword_10009B560, type metadata accessor for CPSRequesterDaemon, &unk_10006E28C);
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[12] = v6;
  v3[13] = v5;

  return _swift_task_switch(sub_100035950, v6, v5);
}

uint64_t sub_100035950()
{
  v27 = v0;
  v2 = v0[6];
  v3 = OBJC_IVAR____TtC10companiond18CPSRequesterDaemon__sessions;
  swift_beginAccess();
  v4 = sub_1000379CC(v2);
  v0[14] = v4;
  swift_endAccess();
  if (v4)
  {
    v25 = 0;
    v26 = 0xE000000000000000;
    if (mach_absolute_time() >= *(*(v4 + 16) + OBJC_IVAR____TtC10companiond25CPSRequesterDaemonSession_startTicks))
    {
      v6 = v0[10];
      v5 = v0[11];
      v7 = v0[9];
      v0[5] = UpTicksToSeconds();
      (*(v6 + 104))(v5, enum case for DefaultStringInterpolation.PrintUtilsTimeDuration.duration(_:), v7);
      sub_10002B46C();
      DefaultStringInterpolation.appendInterpolation<A>(_:_:)();
      (*(v6 + 8))(v5, v7);
      v1 = v25;
      v3 = v26;
      if (qword_10009AD40 == -1)
      {
LABEL_5:
        v8 = type metadata accessor for Logger();
        sub_10002AF48(v8, qword_10009B3D0);

        v9 = Logger.logObject.getter();
        v10 = static os_log_type_t.info.getter();

        if (os_log_type_enabled(v9, v10))
        {
          v12 = v0[6];
          v11 = v0[7];
          v13 = swift_slowAlloc();
          v25 = swift_slowAlloc();
          *v13 = 134218498;
          *(v13 + 4) = v12;
          *(v13 + 12) = 2082;
          *(v13 + 14) = sub_100030690(*(v11 + 64), *(v11 + 72), &v25);
          *(v13 + 22) = 2080;
          v14 = sub_100030690(v1, v3, &v25);

          *(v13 + 24) = v14;
          _os_log_impl(&_mh_execute_header, v9, v10, "session ended: sid=%llu, client=%{public}s, up=%s", v13, 0x20u);
          swift_arrayDestroy();
        }

        else
        {
        }

        v0[15] = *(v4 + 16);

        v24 = swift_task_alloc();
        v0[16] = v24;
        *v24 = v0;
        v24[1] = sub_100035DCC;

        return sub_100041150();
      }
    }

    else
    {
      __break(1u);
    }

    swift_once();
    goto LABEL_5;
  }

  if (qword_10009AD40 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_10002AF48(v15, qword_10009B3D0);

  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v19 = v0[6];
    v18 = v0[7];
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v25 = v21;
    *v20 = 134218242;
    *(v20 + 4) = v19;
    *(v20 + 12) = 2082;
    *(v20 + 14) = sub_100030690(*(v18 + 64), *(v18 + 72), &v25);
    _os_log_impl(&_mh_execute_header, v16, v17, "### session ended: sid=%llu, client=%{public}s, session not found", v20, 0x16u);
    sub_100024EF0(v21);
  }

  v22 = v0[1];

  return v22();
}

uint64_t sub_100035DCC()
{
  v1 = *v0;

  v2 = *(v1 + 104);
  v3 = *(v1 + 96);

  return _swift_task_switch(sub_100035F10, v3, v2);
}

uint64_t sub_100035F10()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100035F78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = type metadata accessor for CPSXPCRequesterStopInfo();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  started = type metadata accessor for CPSXPCRequesterStartInfo();
  v4[9] = started;
  v4[10] = *(started - 8);
  v4[11] = swift_task_alloc();
  v7 = type metadata accessor for CPSXPCClientRequesterRequest();
  v4[12] = v7;
  v4[13] = *(v7 - 8);
  v4[14] = swift_task_alloc();
  sub_100038BCC(&qword_10009B560, type metadata accessor for CPSRequesterDaemon, &unk_10006E28C);
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[15] = v9;
  v4[16] = v8;

  return _swift_task_switch(sub_100036164, v9, v8);
}

uint64_t sub_100036164()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];
  (*(v2 + 16))(v1, v0[3], v3);
  v4 = (*(v2 + 88))(v1, v3);
  if (v4 == enum case for CPSXPCClientRequesterRequest.start(_:))
  {
    v5 = v0[14];
    v6 = v0[11];
    v7 = v0[9];
    v8 = v0[10];
    v9 = v0[2];
    (*(v0[13] + 96))(v5, v0[12]);
    (*(v8 + 32))(v6, v5, v7);
    v9[3] = type metadata accessor for CPSXPCAckReply();
    v9[4] = sub_100038BCC(&qword_10009B588, &type metadata accessor for CPSXPCAckReply, &protocol conformance descriptor for CPSXPCAckReply);
    v9[5] = sub_100038BCC(&qword_10009B590, &type metadata accessor for CPSXPCAckReply, &protocol conformance descriptor for CPSXPCAckReply);
    v10 = sub_100034710(v9);
    v11 = swift_task_alloc();
    v0[17] = v11;
    *v11 = v0;
    v11[1] = sub_1000364B4;
    v12 = v0[11];
    v13 = v0[4];

    return sub_100036978(v10, v12, v13);
  }

  else
  {
    v16 = v0[13];
    v15 = v0[14];
    v17 = v0[12];
    if (v4 == enum case for CPSXPCClientRequesterRequest.stop(_:))
    {
      v19 = v0[7];
      v18 = v0[8];
      v20 = v0[6];
      (*(v16 + 96))(v0[14], v0[12]);
      (*(v19 + 32))(v18, v15, v20);
      v21 = CPSXPCRequesterStopInfo.sessionID.getter();
      v22 = swift_task_alloc();
      v0[19] = v22;
      *v22 = v0;
      v22[1] = sub_10003668C;
      v23 = v0[4];

      return sub_10003581C(v21, v23);
    }

    else
    {
      v24 = objc_allocWithZone(type metadata accessor for CUError());
      CUError.init(_:_:_:)();
      swift_willThrow();
      (*(v16 + 8))(v15, v17);

      v25 = v0[1];

      return v25();
    }
  }
}

uint64_t sub_1000364B4()
{
  v2 = *v1;
  *(*v1 + 144) = v0;

  v3 = *(v2 + 128);
  v4 = *(v2 + 120);
  if (v0)
  {
    v5 = sub_1000368D0;
  }

  else
  {
    v5 = sub_1000365F0;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1000365F0()
{
  (*(v0[10] + 8))(v0[11], v0[9]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_10003668C()
{
  v1 = *v0;

  v2 = *(v1 + 128);
  v3 = *(v1 + 120);

  return _swift_task_switch(sub_1000367AC, v3, v2);
}

uint64_t sub_1000367AC()
{
  v1 = v0[2];
  v1[3] = type metadata accessor for CPSXPCAckReply();
  v1[4] = sub_100038BCC(&qword_10009B588, &type metadata accessor for CPSXPCAckReply, &protocol conformance descriptor for CPSXPCAckReply);
  v1[5] = sub_100038BCC(&qword_10009B590, &type metadata accessor for CPSXPCAckReply, &protocol conformance descriptor for CPSXPCAckReply);
  sub_100034710(v1);
  CPSXPCAckReply.init()();
  (*(v0[7] + 8))(v0[8], v0[6]);

  v2 = v0[1];

  return v2();
}

uint64_t sub_1000368D0()
{
  v1 = v0[2];
  (*(v0[10] + 8))(v0[11], v0[9]);
  sub_100034774(v1);

  v2 = v0[1];

  return v2();
}

uint64_t sub_100036978(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[8] = a3;
  v4[9] = v3;
  v4[6] = a1;
  v4[7] = a2;
  v5 = type metadata accessor for CUEnvironmentValues();
  v4[10] = v5;
  v4[11] = *(v5 - 8);
  v4[12] = swift_task_alloc();
  v6 = type metadata accessor for CPSRequesterUseCaseConfiguration();
  v4[13] = v6;
  v4[14] = *(v6 - 8);
  v4[15] = swift_task_alloc();
  started = type metadata accessor for CPSXPCRequesterStartInfo();
  v4[16] = started;
  v4[17] = *(started - 8);
  v4[18] = swift_task_alloc();
  sub_100038BCC(&qword_10009B560, type metadata accessor for CPSRequesterDaemon, &unk_10006E28C);
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[19] = v9;
  v4[20] = v8;

  return _swift_task_switch(sub_100036B64, v9, v8);
}

uint64_t sub_100036B64()
{
  v45 = v0;
  if (qword_10009AD40 != -1)
  {
    swift_once();
  }

  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[16];
  v4 = v0[7];
  v5 = type metadata accessor for Logger();
  sub_10002AF48(v5, qword_10009B3D0);
  (*(v2 + 16))(v1, v4, v3);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();

  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[17];
  v9 = v0[18];
  v11 = v0[16];
  if (v8)
  {
    v43 = v0[8];
    v12 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    *v12 = 136315394;
    sub_100038BCC(&qword_10009B5A0, &type metadata accessor for CPSXPCRequesterStartInfo, &protocol conformance descriptor for CPSXPCRequesterStartInfo);
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = v14;
    (*(v10 + 8))(v9, v11);
    v16 = sub_100030690(v13, v15, &v44);

    *(v12 + 4) = v16;
    *(v12 + 12) = 2082;
    *(v12 + 14) = sub_100030690(*(v43 + 64), *(v43 + 72), &v44);
    _os_log_impl(&_mh_execute_header, v6, v7, "session start: %s, client=%{public}s", v12, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v17 = v0[14];
  v18 = v0[15];
  v19 = v0[12];
  v21 = v0[10];
  v20 = v0[11];
  v22 = v0[9];
  v40 = v0[13];
  v41 = v22;
  v42 = v0[8];
  CPSXPCRequesterStartInfo.configuration.getter();
  started = CPSXPCRequesterStartInfo.sessionID.getter();
  v23 = *(v20 + 16);
  v24 = v22 + OBJC_IVAR____TtC10companiond18CPSRequesterDaemon_environment;
  v25 = v21;
  v23(v19, v24, v21);
  type metadata accessor for CPSRequesterDaemonSession(0);
  v26 = swift_allocObject();
  v0[21] = v26;
  *(v26 + 16) = 0;
  *(v26 + 24) = 0;
  *(v26 + OBJC_IVAR____TtC10companiond25CPSRequesterDaemonSession__deviceSessions) = &_swiftEmptyDictionarySingleton;
  *(v26 + OBJC_IVAR____TtC10companiond25CPSRequesterDaemonSession__invalidateCalled) = 0;
  v27 = OBJC_IVAR____TtC10companiond25CPSRequesterDaemonSession_startTicks;
  *(v26 + v27) = mach_absolute_time();
  (*(v17 + 16))(v26 + OBJC_IVAR____TtC10companiond25CPSRequesterDaemonSession_configuration, v18, v40);
  v23(v26 + OBJC_IVAR____TtC10companiond25CPSRequesterDaemonSession_environment, v19, v25);
  v0[5] = started;
  v28 = dispatch thunk of CustomStringConvertible.description.getter();
  v30 = v29;
  (*(v20 + 8))(v19, v25);
  (*(v17 + 8))(v18, v40);
  v31 = (v26 + OBJC_IVAR____TtC10companiond25CPSRequesterDaemonSession_label);
  *v31 = v28;
  v31[1] = v30;
  *(v26 + OBJC_IVAR____TtC10companiond25CPSRequesterDaemonSession_sessionID) = started;
  *(v26 + OBJC_IVAR____TtC10companiond25CPSRequesterDaemonSession__xpcConnection) = v42;

  v32 = CPSXPCRequesterStartInfo.sessionID.getter();
  type metadata accessor for CPSRequesterDaemon.SessionInfo();
  v33 = swift_allocObject();
  *(v33 + 16) = v26;
  *(v33 + 24) = v42;
  v34 = OBJC_IVAR____TtC10companiond18CPSRequesterDaemon__sessions;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v44 = *(v41 + v34);
  *(v41 + v34) = 0x8000000000000000;
  sub_100031CBC(v33, v32, isUniquelyReferenced_nonNull_native);
  *(v41 + v34) = v44;
  swift_endAccess();
  sub_100038BCC(&qword_10009B598, type metadata accessor for CPSRequesterDaemonSession, &unk_10006E580);
  v37 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100037068, v37, v36);
}

uint64_t sub_100037068()
{
  sub_100040FC4();
  v1 = *(v0 + 152);
  v2 = *(v0 + 160);

  return _swift_task_switch(sub_1000370CC, v1, v2);
}

uint64_t sub_1000370CC()
{
  CPSXPCAckReply.init()();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100037168()
{

  return _swift_deallocClassInstance(v0, 32, 7);
}

uint64_t sub_1000371A8()
{
  swift_weakDestroy();
  v1 = OBJC_IVAR____TtC10companiond18CPSRequesterDaemon_environment;
  v2 = type metadata accessor for CUEnvironmentValues();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v3, v4);
}

uint64_t sub_10003725C(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = sub_100038BCC(&qword_10009B558, type metadata accessor for CPSRequesterDaemon, &unk_10006E23C);

  return CUEnvironmental<>.unownedExecutor.getter(v4, v5, a2);
}

uint64_t sub_1000372FC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10002B200;

  return sub_100034954();
}

uint64_t sub_10003738C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC10companiond18CPSRequesterDaemon_environment;
  v5 = type metadata accessor for CUEnvironmentValues();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t (*CUEnvironmentValues.cpsRequesterDaemonEnabled.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = sub_10002B358();
  CUEnvironmentValues.subscript.getter();
  *(a1 + 16) = *(a1 + 17);
  return sub_1000374B4;
}

uint64_t type metadata accessor for CPSRequesterDaemon(uint64_t a1)
{
  result = qword_10009B418;
  if (!qword_10009B418)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100037540(uint64_t a1)
{
  result = type metadata accessor for CUEnvironmentValues();
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

uint64_t sub_10003761C(uint64_t a1)
{
  result = sub_100038BCC(&qword_10009B558, type metadata accessor for CPSRequesterDaemon, &unk_10006E23C);
  *(a1 + 8) = result;
  return result;
}

char *sub_100037674(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100024EA8(&qword_10009B568, &qword_10006E2F0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_100037778(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100024EA8(&qword_10009B570, &qword_10006E2F8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_100037884(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100024EA8(&qword_10009B578, &qword_10006E300);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100024EA8(&qword_10009B580, &qword_10006E308);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1000379CC(uint64_t a1)
{
  v2 = v1;
  v3 = sub_1000311FC(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v1;
  v11 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_10003259C();
    v7 = v11;
  }

  v8 = v5;
  v9 = *(*(v7 + 56) + 8 * v5);
  sub_100037A58(v8, v7);
  *v2 = v7;
  return v9;
}

uint64_t sub_100037A58(uint64_t result, uint64_t a2)
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
      v9 = *(a2 + 48);
      v10 = (v9 + 8 * v6);
      result = static Hasher._hash(seed:_:)();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = (v9 + 8 * v3);
          if (v3 != v6 || v14 >= v10 + 1)
          {
            *v14 = *v10;
          }

          v15 = *(a2 + 56);
          v16 = (v15 + 8 * v3);
          v17 = (v15 + 8 * v6);
          if (v3 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

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

Swift::Int sub_100037BC8(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100038BB8(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_100037C34(v5);
  *a1 = v2;
  return result;
}

Swift::Int sub_100037C34(uint64_t *a1)
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
      sub_100037E30(v7, v8, a1, v4);
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
    return sub_100037D2C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_100037D2C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = result;
    v6 = *a4;
    sub_1000347D4();
    v7 = v5 - v4;
    v8 = (v6 + 16 * v4);
LABEL_5:
    v14 = v7;
    v9 = v8;
    while (1)
    {
      result = StringProtocol.localizedStandardCompare<A>(_:)();
      if (result != -1)
      {
LABEL_4:
        ++v4;
        v8 += 2;
        v7 = v14 - 1;
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

      v10 = *v9;
      v11 = v9[1];
      *v9 = *(v9 - 1);
      *(v9 - 1) = v11;
      *(v9 - 2) = v10;
      v9 -= 2;
      if (__CFADD__(v7++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_100037E30(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = v4;
  v7 = a3;
  v90 = result;
  v8 = a3[1];
  if (v8 >= 1)
  {
    v9 = 0;
    v10 = _swiftEmptyArrayStorage;
    while (1)
    {
      v11 = v9;
      v12 = v9 + 1;
      if (v12 >= v8)
      {
        v8 = v12;
      }

      else
      {
        v87 = v10;
        v13 = 16 * v11;
        v14 = v11;
        v15 = *v7 + 16 * v11 + 40;
        v5 = sub_1000347D4();
        result = StringProtocol.localizedStandardCompare<A>(_:)();
        v16 = result;
        v89 = v14;
        v17 = v14 + 2;
        while (v8 != v17)
        {
          result = StringProtocol.localizedStandardCompare<A>(_:)();
          ++v17;
          v15 += 16;
          if ((v16 == -1) == (result != -1))
          {
            v8 = v17 - 1;
            break;
          }
        }

        v11 = v89;
        if (v16 == -1)
        {
          if (v8 < v89)
          {
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
            return result;
          }

          if (v89 < v8)
          {
            v18 = 0;
            v19 = 16 * v8;
            v20 = v89;
            do
            {
              if (v20 != v8 + v18 - 1)
              {
                v25 = *a3;
                if (!*a3)
                {
                  goto LABEL_124;
                }

                v21 = (v25 + v13);
                v22 = v25 + v19;
                v23 = *v21;
                v24 = v21[1];
                *v21 = *(v22 - 16);
                *(v22 - 16) = v23;
                *(v22 - 8) = v24;
              }

              ++v20;
              --v18;
              v19 -= 16;
              v13 += 16;
            }

            while (v20 < v8 + v18);
          }
        }

        v7 = a3;
        v10 = v87;
      }

      v26 = v7[1];
      if (v8 < v26)
      {
        if (__OFSUB__(v8, v11))
        {
          goto LABEL_116;
        }

        if (v8 - v11 < a4)
        {
          if (__OFADD__(v11, a4))
          {
            goto LABEL_117;
          }

          if (v11 + a4 < v26)
          {
            v26 = v11 + a4;
          }

          if (v26 < v11)
          {
LABEL_118:
            __break(1u);
            goto LABEL_119;
          }

          if (v8 != v26)
          {
            v92 = v26;
            v88 = v10;
            v85 = v6;
            v27 = *v7;
            v5 = sub_1000347D4();
            v28 = (v27 + 16 * v8);
            v29 = v11 - v8;
            do
            {
              v30 = v29;
              v31 = v28;
              do
              {
                result = StringProtocol.localizedStandardCompare<A>(_:)();
                if (result != -1)
                {
                  break;
                }

                if (!v27)
                {
                  goto LABEL_121;
                }

                v32 = *v31;
                v33 = v31[1];
                *v31 = *(v31 - 1);
                *(v31 - 1) = v33;
                *(v31 - 2) = v32;
                v31 -= 2;
              }

              while (!__CFADD__(v30++, 1));
              ++v8;
              v28 += 2;
              --v29;
            }

            while (v8 != v92);
            v6 = v85;
            v7 = a3;
            v8 = v92;
            v10 = v88;
          }
        }
      }

      if (v8 < v11)
      {
        goto LABEL_115;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_100037674(0, *(v10 + 2) + 1, 1, v10);
        v10 = result;
      }

      v36 = *(v10 + 2);
      v35 = *(v10 + 3);
      v37 = v36 + 1;
      if (v36 >= v35 >> 1)
      {
        result = sub_100037674((v35 > 1), v36 + 1, 1, v10);
        v10 = result;
      }

      *(v10 + 2) = v37;
      v38 = &v10[16 * v36];
      *(v38 + 4) = v11;
      *(v38 + 5) = v8;
      v5 = *v90;
      if (!*v90)
      {
        goto LABEL_125;
      }

      v93 = v8;
      if (v36)
      {
        while (1)
        {
          v39 = v37 - 1;
          if (v37 >= 4)
          {
            break;
          }

          if (v37 == 3)
          {
            v40 = *(v10 + 4);
            v41 = *(v10 + 5);
            v50 = __OFSUB__(v41, v40);
            v42 = v41 - v40;
            v43 = v50;
LABEL_57:
            if (v43)
            {
              goto LABEL_104;
            }

            v56 = &v10[16 * v37];
            v58 = *v56;
            v57 = *(v56 + 1);
            v59 = __OFSUB__(v57, v58);
            v60 = v57 - v58;
            v61 = v59;
            if (v59)
            {
              goto LABEL_107;
            }

            v62 = &v10[16 * v39 + 32];
            v64 = *v62;
            v63 = *(v62 + 1);
            v50 = __OFSUB__(v63, v64);
            v65 = v63 - v64;
            if (v50)
            {
              goto LABEL_110;
            }

            if (__OFADD__(v60, v65))
            {
              goto LABEL_111;
            }

            if (v60 + v65 >= v42)
            {
              if (v42 < v65)
              {
                v39 = v37 - 2;
              }

              goto LABEL_78;
            }

            goto LABEL_71;
          }

          v66 = &v10[16 * v37];
          v68 = *v66;
          v67 = *(v66 + 1);
          v50 = __OFSUB__(v67, v68);
          v60 = v67 - v68;
          v61 = v50;
LABEL_71:
          if (v61)
          {
            goto LABEL_106;
          }

          v69 = &v10[16 * v39];
          v71 = *(v69 + 4);
          v70 = *(v69 + 5);
          v50 = __OFSUB__(v70, v71);
          v72 = v70 - v71;
          if (v50)
          {
            goto LABEL_109;
          }

          if (v72 < v60)
          {
            goto LABEL_3;
          }

LABEL_78:
          v77 = v39 - 1;
          if (v39 - 1 >= v37)
          {
            __break(1u);
LABEL_100:
            __break(1u);
LABEL_101:
            __break(1u);
LABEL_102:
            __break(1u);
LABEL_103:
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
            goto LABEL_118;
          }

          if (!*v7)
          {
            goto LABEL_122;
          }

          v78 = *&v10[16 * v77 + 32];
          v79 = *&v10[16 * v39 + 40];
          sub_100038494((*v7 + 16 * v78), (*v7 + 16 * *&v10[16 * v39 + 32]), (*v7 + 16 * v79), v5);
          if (v6)
          {
          }

          if (v79 < v78)
          {
            goto LABEL_100;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v10 = sub_1000387B0(v10);
          }

          if (v77 >= *(v10 + 2))
          {
            goto LABEL_101;
          }

          v80 = &v10[16 * v77];
          *(v80 + 4) = v78;
          *(v80 + 5) = v79;
          result = sub_100038724(v39);
          v37 = *(v10 + 2);
          if (v37 <= 1)
          {
            goto LABEL_3;
          }
        }

        v44 = &v10[16 * v37 + 32];
        v45 = *(v44 - 64);
        v46 = *(v44 - 56);
        v50 = __OFSUB__(v46, v45);
        v47 = v46 - v45;
        if (v50)
        {
          goto LABEL_102;
        }

        v49 = *(v44 - 48);
        v48 = *(v44 - 40);
        v50 = __OFSUB__(v48, v49);
        v42 = v48 - v49;
        v43 = v50;
        if (v50)
        {
          goto LABEL_103;
        }

        v51 = &v10[16 * v37];
        v53 = *v51;
        v52 = *(v51 + 1);
        v50 = __OFSUB__(v52, v53);
        v54 = v52 - v53;
        if (v50)
        {
          goto LABEL_105;
        }

        v50 = __OFADD__(v42, v54);
        v55 = v42 + v54;
        if (v50)
        {
          goto LABEL_108;
        }

        if (v55 >= v47)
        {
          v73 = &v10[16 * v39 + 32];
          v75 = *v73;
          v74 = *(v73 + 1);
          v50 = __OFSUB__(v74, v75);
          v76 = v74 - v75;
          if (v50)
          {
            goto LABEL_112;
          }

          if (v42 < v76)
          {
            v39 = v37 - 2;
          }

          goto LABEL_78;
        }

        goto LABEL_57;
      }

LABEL_3:
      v8 = v7[1];
      v9 = v93;
      if (v93 >= v8)
      {
        goto LABEL_88;
      }
    }
  }

  v10 = _swiftEmptyArrayStorage;
LABEL_88:
  v5 = v10;
  v10 = *v90;
  if (!*v90)
  {
    goto LABEL_126;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_119:
    result = sub_1000387B0(v5);
    v5 = result;
  }

  v81 = *(v5 + 16);
  if (v81 >= 2)
  {
    while (*v7)
    {
      v82 = *(v5 + 16 * v81);
      v83 = *(v5 + 16 * (v81 - 1) + 40);
      sub_100038494((*v7 + 16 * v82), (*v7 + 16 * *(v5 + 16 * (v81 - 1) + 32)), (*v7 + 16 * v83), v10);
      if (v6)
      {
      }

      if (v83 < v82)
      {
        goto LABEL_113;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_1000387B0(v5);
      }

      if (v81 - 2 >= *(v5 + 16))
      {
        goto LABEL_114;
      }

      v84 = (v5 + 16 * v81);
      *v84 = v82;
      v84[1] = v83;
      result = sub_100038724(v81 - 1);
      v81 = *(v5 + 16);
      if (v81 <= 1)
      {
      }
    }

    goto LABEL_123;
  }
}

uint64_t sub_100038494(char *__src, char *__dst, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __dst;
  v7 = __src;
  v8 = __dst - __src;
  v9 = __dst - __src + 15;
  if (__dst - __src >= 0)
  {
    v9 = __dst - __src;
  }

  v10 = v9 >> 4;
  v11 = a3 - __dst;
  v12 = a3 - __dst + 15;
  if (a3 - __dst >= 0)
  {
    v12 = a3 - __dst;
  }

  v13 = v12 >> 4;
  if (v10 >= v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v13] <= a4)
    {
      memmove(a4, __dst, 16 * v13);
    }

    v14 = &v4[16 * v13];
    if (v11 >= 16 && v6 > v7)
    {
      sub_1000347D4();
LABEL_27:
      v20 = v6 - 16;
      v5 -= 16;
      v17 = v14;
      do
      {
        v18 = v5 + 16;
        v17 -= 16;
        if (StringProtocol.localizedStandardCompare<A>(_:)() == -1)
        {
          if (v18 != v6)
          {
            *v5 = *v20;
          }

          if (v14 <= v4 || (v6 -= 16, v20 <= v7))
          {
            v6 = v20;
            goto LABEL_39;
          }

          goto LABEL_27;
        }

        if (v18 != v14)
        {
          *v5 = *v17;
        }

        v5 -= 16;
        v14 = v17;
      }

      while (v17 > v4);
      v14 = v17;
    }
  }

  else
  {
    if (a4 != __src || &__src[16 * v10] <= a4)
    {
      memmove(a4, __src, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 >= 16 && v6 < v5)
    {
      sub_1000347D4();
      while (StringProtocol.localizedStandardCompare<A>(_:)() == -1)
      {
        v15 = v6;
        v16 = v7 == v6;
        v6 += 16;
        if (!v16)
        {
          goto LABEL_14;
        }

LABEL_15:
        v7 += 16;
        if (v4 >= v14 || v6 >= v5)
        {
          goto LABEL_37;
        }
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (v16)
      {
        goto LABEL_15;
      }

LABEL_14:
      *v7 = *v15;
      goto LABEL_15;
    }

LABEL_37:
    v6 = v7;
  }

LABEL_39:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

uint64_t sub_100038724(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1000387B0(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

char *sub_1000387C4(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100024EA8(&qword_10009B570, &qword_10006E2F8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1000388D0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100024EA8(&qword_10009B5B0, &qword_10006E330);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1000389E0(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100024EA8(&qword_10009B5B8, &qword_10006E338);
  v10 = *(type metadata accessor for NWEndpoint() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for NWEndpoint() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_100038BCC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100038C14()
{
  v0 = type metadata accessor for Logger();
  sub_10002B76C(v0, qword_10009B5C0);
  sub_10002AF48(v0, qword_10009B5C0);
  static CPSConstants.logSubsystem.getter();
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100038C80()
{
  v1 = v0;
  v2 = sub_100024EA8(&qword_10009B730, &unk_10006E430);
  __chkstk_darwin(v2 - 8);
  v4 = &v25[-1] - v3;
  v6 = *(v0 + OBJC_IVAR____TtC10companiond31CPSRequesterDaemonDeviceSession__label);
  v5 = *(v0 + OBJC_IVAR____TtC10companiond31CPSRequesterDaemonDeviceSession__label + 8);
  v7 = qword_10009AD48;

  if (v7 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_10002AF48(v8, qword_10009B5C0);

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v25[0] = v12;
    *v11 = 136315138;
    v13 = sub_100030690(v6, v5, v25);

    *(v11 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v9, v10, "[%s] deinit", v11, 0xCu);
    sub_100024EF0(v12);
  }

  else
  {
  }

  v14 = *(v1 + OBJC_IVAR____TtC10companiond31CPSRequesterDaemonDeviceSession__runTask);
  *(v1 + OBJC_IVAR____TtC10companiond31CPSRequesterDaemonDeviceSession__runTask) = 0;
  if (v14)
  {
    Task.cancel()();
  }

  v15 = OBJC_IVAR____TtC10companiond31CPSRequesterDaemonDeviceSession__responseContinuation;
  swift_beginAccess();
  sub_10003FE90(v1 + v15, v4);
  v16 = sub_100024EA8(&unk_10009B650, &qword_10006E3B8);
  v17 = *(v16 - 8);
  (*(v17 + 56))(v1 + v15, 1, 1, v16);
  if ((*(v17 + 48))(v4, 1, v16) == 1)
  {
    sub_10002556C(v4, &qword_10009B730, &unk_10006E430);
  }

  else
  {
    v18 = objc_allocWithZone(type metadata accessor for CUError());
    v24 = CUError.init(_:_:_:)();
    CheckedContinuation.resume(throwing:)();
    (*(v17 + 8))(v4, v16);
  }

  v19 = OBJC_IVAR____TtC10companiond31CPSRequesterDaemonDeviceSession__configuration;
  v20 = type metadata accessor for CPSRequesterUseCaseConfiguration();
  (*(*(v20 - 8) + 8))(v1 + v19, v20);
  swift_weakDestroy();
  v21 = OBJC_IVAR____TtC10companiond31CPSRequesterDaemonDeviceSession_environment;
  v22 = type metadata accessor for CUEnvironmentValues();
  (*(*(v22 - 8) + 8))(v1 + v21, v22);

  sub_10002556C(v1 + v15, &qword_10009B730, &unk_10006E430);

  return v1;
}

uint64_t sub_1000390A4()
{
  sub_100038C80();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for CPSRequesterDaemonDeviceSession(uint64_t a1)
{
  result = qword_10009B638;
  if (!qword_10009B638)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100039150(uint64_t a1)
{
  type metadata accessor for CPSRequesterUseCaseConfiguration();
  if (v1 <= 0x3F)
  {
    type metadata accessor for CUEnvironmentValues();
    if (v2 <= 0x3F)
    {
      sub_100039298(319);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_100039298(uint64_t a1)
{
  if (!qword_10009B648)
  {
    sub_100026080(&unk_10009B650, &qword_10006E3B8);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_10009B648);
    }
  }
}

uint64_t sub_1000392FC()
{
  v1[9] = v0;
  v2 = type metadata accessor for DefaultStringInterpolation.PrintUtilsTimeDuration();
  v1[10] = v2;
  v1[11] = *(v2 - 8);
  v1[12] = swift_task_alloc();
  sub_10004027C(&qword_10009B720, type metadata accessor for CPSRequesterDaemonDeviceSession, &unk_10006E400);
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10003942C, v4, v3);
}

uint64_t sub_10003942C()
{
  v1 = v0[9];
  v2 = mach_absolute_time();
  v3 = *(v1 + OBJC_IVAR____TtC10companiond31CPSRequesterDaemonDeviceSession_startTicks);
  v4 = v2 >= v3;
  result = v2 - v3;
  if (v4)
  {
    v7 = v0[11];
    v6 = v0[12];
    v9 = v0[9];
    v8 = v0[10];
    v0[8] = UpTicksToSeconds();
    (*(v7 + 104))(v6, enum case for DefaultStringInterpolation.PrintUtilsTimeDuration.duration(_:), v8);
    sub_10002B46C();
    DefaultStringInterpolation.appendInterpolation<A>(_:_:)();
    (*(v7 + 8))(v6, v8);
    _StringGuts.grow(_:)(26);
    v10._countAndFlagsBits = 0x203A656369766544;
    v10._object = 0xE800000000000000;
    String.append(_:)(v10);
    v11 = *(v9 + 16);
    v12 = [v11 name];
    if (v12)
    {
      v13 = v12;
      v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v16 = v15;
    }

    else
    {
      v14 = 0;
      v16 = 0;
    }

    v0[6] = v14;
    v0[7] = v16;
    DefaultStringInterpolation.appendInterpolation<A>(_:)();

    v17._countAndFlagsBits = 0x3D736469202CLL;
    v17._object = 0xE600000000000000;
    String.append(_:)(v17);
    v18 = [v11 idsDeviceID];
    if (v18)
    {
      v19 = v18;
      v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v22 = v21;

      v23 = sub_10003FDF4(8, v20, v22);
      v25 = v24;
      v27 = v26;
      v29 = v28;
    }

    else
    {
      v23 = 0;
      v25 = 0;
      v27 = 0;
      v29 = 0;
    }

    v0[2] = v23;
    v0[3] = v25;
    v0[4] = v27;
    v0[5] = v29;
    DefaultStringInterpolation.appendInterpolation<A>(_:)();

    v30._countAndFlagsBits = 0x3D7075202CLL;
    v30._object = 0xE500000000000000;
    String.append(_:)(v30);
    v31._countAndFlagsBits = 0;
    v31._object = 0xE000000000000000;
    String.append(_:)(v31);

    v32._countAndFlagsBits = 10;
    v32._object = 0xE100000000000000;
    String.append(_:)(v32);

    v33 = v0[1];

    return v33(0, 0xE000000000000000);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1000396E4()
{
  v1 = v0;
  v2 = sub_100024EA8(&qword_10009B150, &qword_10006DC50);
  __chkstk_darwin(v2 - 8);
  v4 = &v14 - v3;
  if (qword_10009AD48 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_10002AF48(v5, qword_10009B5C0);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_100030690(*(v1 + OBJC_IVAR____TtC10companiond31CPSRequesterDaemonDeviceSession__label), *(v1 + OBJC_IVAR____TtC10companiond31CPSRequesterDaemonDeviceSession__label + 8), &v15);
    _os_log_impl(&_mh_execute_header, v6, v7, "[%s] activate", v8, 0xCu);
    sub_100024EF0(v9);
  }

  v10 = OBJC_IVAR____TtC10companiond31CPSRequesterDaemonDeviceSession__runTask;
  if (!*(v1 + OBJC_IVAR____TtC10companiond31CPSRequesterDaemonDeviceSession__runTask))
  {
    v11 = type metadata accessor for TaskPriority();
    (*(*(v11 - 8) + 56))(v4, 1, 1, v11);
    v12 = sub_10004027C(&qword_10009B720, type metadata accessor for CPSRequesterDaemonDeviceSession, &unk_10006E400);
    v13 = swift_allocObject();
    v13[2] = v1;
    v13[3] = v12;
    v13[4] = v1;
    swift_retain_n();
    *(v1 + v10) = sub_100057714(0, 0, v4, &unk_10006E448, v13);
  }
}

uint64_t sub_100039968()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000240AC;

  return sub_1000399F8();
}

uint64_t sub_1000399F8()
{
  v1[2] = v0;
  v1[3] = *v0;
  v2 = type metadata accessor for CPSRequesterSession.Event();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();
  v3 = swift_task_alloc();
  v1[7] = v3;
  *v3 = v1;
  v3[1] = sub_100039B0C;

  return sub_10003C1F8();
}

uint64_t sub_100039B0C()
{
  v2 = *v1;
  *(v2 + 64) = v0;

  if (v0)
  {
    sub_10004027C(&qword_10009B720, type metadata accessor for CPSRequesterDaemonDeviceSession, &unk_10006E400);
    v4 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_10003A538, v4, v3);
  }

  else
  {
    v5 = swift_task_alloc();
    *(v2 + 72) = v5;
    *v5 = v2;
    v5[1] = sub_100039CD0;

    return sub_10003CF28();
  }
}

uint64_t sub_100039CD0()
{
  v2 = *v1;
  *(v2 + 80) = v0;

  if (v0)
  {
    sub_10004027C(&qword_10009B720, type metadata accessor for CPSRequesterDaemonDeviceSession, &unk_10006E400);
    v4 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_10003A8C8, v4, v3);
  }

  else
  {
    v5 = swift_task_alloc();
    *(v2 + 88) = v5;
    *v5 = v2;
    v5[1] = sub_100039E94;

    return sub_10003D984();
  }
}

uint64_t sub_100039E94()
{
  v2 = *v1;
  *(v2 + 96) = v0;

  if (v0)
  {
    sub_10004027C(&qword_10009B720, type metadata accessor for CPSRequesterDaemonDeviceSession, &unk_10006E400);
    v4 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_10003AC58, v4, v3);
  }

  else
  {
    v5 = swift_task_alloc();
    *(v2 + 104) = v5;
    *v5 = v2;
    v5[1] = sub_10003A05C;

    return sub_10003E02C(0);
  }
}

uint64_t sub_10003A05C()
{
  v2 = *v1;
  *(v2 + 112) = v0;

  if (v0)
  {
    sub_10004027C(&qword_10009B720, type metadata accessor for CPSRequesterDaemonDeviceSession, &unk_10006E400);
    v4 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_10003AFE8, v4, v3);
  }

  else
  {
    v5 = swift_task_alloc();
    *(v2 + 120) = v5;
    *v5 = v2;
    v5[1] = sub_10003A220;

    return sub_10003E864();
  }
}

uint64_t sub_10003A220()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10003A330()
{
  v2 = *v1;

  v3 = *(v2 + 136);
  if (v0)
  {

    sub_10004027C(&qword_10009B720, type metadata accessor for CPSRequesterDaemonDeviceSession, &unk_10006E400);
    v4 = dispatch thunk of Actor.unownedExecutor.getter();
    v6 = v5;
    v7 = sub_10003B378;
  }

  else
  {

    sub_10004027C(&qword_10009B720, type metadata accessor for CPSRequesterDaemonDeviceSession, &unk_10006E400);
    v4 = dispatch thunk of Actor.unownedExecutor.getter();
    v6 = v8;
    v7 = sub_100040598;
  }

  return _swift_task_switch(v7, v4, v6);
}

uint64_t sub_10003A538()
{
  v21 = v0;
  v0[16] = v0[8];
  if (qword_10009AD48 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10002AF48(v1, qword_10009B5C0);

  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[2];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v20 = v7;
    *v5 = 136315394;
    *(v5 + 4) = sub_100030690(*(v4 + OBJC_IVAR____TtC10companiond31CPSRequesterDaemonDeviceSession__label), *(v4 + OBJC_IVAR____TtC10companiond31CPSRequesterDaemonDeviceSession__label + 8), &v20);
    *(v5 + 12) = 2112;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 14) = v8;
    *v6 = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "[%s] ### run failed: error=%@", v5, 0x16u);
    sub_10002556C(v6, &unk_10009B2F0, &unk_10006E0C0);

    sub_100024EF0(v7);
  }

  v10 = v0[5];
  v9 = v0[6];
  v11 = v0[4];
  v12 = v0[2];
  v13 = type metadata accessor for CUError();
  v14 = objc_allocWithZone(v13);
  swift_errorRetain();
  *v9 = CUError.init(_:)();
  (*(v10 + 104))(v9, enum case for CPSRequesterSession.Event.error(_:), v11);
  sub_10003BBE8(v9);
  (*(v10 + 8))(v9, v11);
  if (*(v12 + OBJC_IVAR____TtC10companiond31CPSRequesterDaemonDeviceSession__sentStart) == 1)
  {
    v15 = objc_allocWithZone(v13);
    swift_errorRetain();
    v16 = CUError.init(_:_:_:)();
    v0[17] = v16;
    v17 = swift_task_alloc();
    v0[18] = v17;
    *v17 = v0;
    v17[1] = sub_10003A330;

    return sub_10003E02C(v16);
  }

  else
  {

    v19 = swift_task_alloc();
    v0[15] = v19;
    *v19 = v0;
    v19[1] = sub_10003A220;

    return sub_10003E864();
  }
}

uint64_t sub_10003A8C8()
{
  v21 = v0;
  v0[16] = v0[10];
  if (qword_10009AD48 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10002AF48(v1, qword_10009B5C0);

  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[2];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v20 = v7;
    *v5 = 136315394;
    *(v5 + 4) = sub_100030690(*(v4 + OBJC_IVAR____TtC10companiond31CPSRequesterDaemonDeviceSession__label), *(v4 + OBJC_IVAR____TtC10companiond31CPSRequesterDaemonDeviceSession__label + 8), &v20);
    *(v5 + 12) = 2112;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 14) = v8;
    *v6 = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "[%s] ### run failed: error=%@", v5, 0x16u);
    sub_10002556C(v6, &unk_10009B2F0, &unk_10006E0C0);

    sub_100024EF0(v7);
  }

  v10 = v0[5];
  v9 = v0[6];
  v11 = v0[4];
  v12 = v0[2];
  v13 = type metadata accessor for CUError();
  v14 = objc_allocWithZone(v13);
  swift_errorRetain();
  *v9 = CUError.init(_:)();
  (*(v10 + 104))(v9, enum case for CPSRequesterSession.Event.error(_:), v11);
  sub_10003BBE8(v9);
  (*(v10 + 8))(v9, v11);
  if (*(v12 + OBJC_IVAR____TtC10companiond31CPSRequesterDaemonDeviceSession__sentStart) == 1)
  {
    v15 = objc_allocWithZone(v13);
    swift_errorRetain();
    v16 = CUError.init(_:_:_:)();
    v0[17] = v16;
    v17 = swift_task_alloc();
    v0[18] = v17;
    *v17 = v0;
    v17[1] = sub_10003A330;

    return sub_10003E02C(v16);
  }

  else
  {

    v19 = swift_task_alloc();
    v0[15] = v19;
    *v19 = v0;
    v19[1] = sub_10003A220;

    return sub_10003E864();
  }
}

uint64_t sub_10003AC58()
{
  v21 = v0;
  v0[16] = v0[12];
  if (qword_10009AD48 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10002AF48(v1, qword_10009B5C0);

  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[2];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v20 = v7;
    *v5 = 136315394;
    *(v5 + 4) = sub_100030690(*(v4 + OBJC_IVAR____TtC10companiond31CPSRequesterDaemonDeviceSession__label), *(v4 + OBJC_IVAR____TtC10companiond31CPSRequesterDaemonDeviceSession__label + 8), &v20);
    *(v5 + 12) = 2112;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 14) = v8;
    *v6 = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "[%s] ### run failed: error=%@", v5, 0x16u);
    sub_10002556C(v6, &unk_10009B2F0, &unk_10006E0C0);

    sub_100024EF0(v7);
  }

  v10 = v0[5];
  v9 = v0[6];
  v11 = v0[4];
  v12 = v0[2];
  v13 = type metadata accessor for CUError();
  v14 = objc_allocWithZone(v13);
  swift_errorRetain();
  *v9 = CUError.init(_:)();
  (*(v10 + 104))(v9, enum case for CPSRequesterSession.Event.error(_:), v11);
  sub_10003BBE8(v9);
  (*(v10 + 8))(v9, v11);
  if (*(v12 + OBJC_IVAR____TtC10companiond31CPSRequesterDaemonDeviceSession__sentStart) == 1)
  {
    v15 = objc_allocWithZone(v13);
    swift_errorRetain();
    v16 = CUError.init(_:_:_:)();
    v0[17] = v16;
    v17 = swift_task_alloc();
    v0[18] = v17;
    *v17 = v0;
    v17[1] = sub_10003A330;

    return sub_10003E02C(v16);
  }

  else
  {

    v19 = swift_task_alloc();
    v0[15] = v19;
    *v19 = v0;
    v19[1] = sub_10003A220;

    return sub_10003E864();
  }
}

uint64_t sub_10003AFE8()
{
  v21 = v0;
  v0[16] = v0[14];
  if (qword_10009AD48 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10002AF48(v1, qword_10009B5C0);

  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[2];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v20 = v7;
    *v5 = 136315394;
    *(v5 + 4) = sub_100030690(*(v4 + OBJC_IVAR____TtC10companiond31CPSRequesterDaemonDeviceSession__label), *(v4 + OBJC_IVAR____TtC10companiond31CPSRequesterDaemonDeviceSession__label + 8), &v20);
    *(v5 + 12) = 2112;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 14) = v8;
    *v6 = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "[%s] ### run failed: error=%@", v5, 0x16u);
    sub_10002556C(v6, &unk_10009B2F0, &unk_10006E0C0);

    sub_100024EF0(v7);
  }

  v10 = v0[5];
  v9 = v0[6];
  v11 = v0[4];
  v12 = v0[2];
  v13 = type metadata accessor for CUError();
  v14 = objc_allocWithZone(v13);
  swift_errorRetain();
  *v9 = CUError.init(_:)();
  (*(v10 + 104))(v9, enum case for CPSRequesterSession.Event.error(_:), v11);
  sub_10003BBE8(v9);
  (*(v10 + 8))(v9, v11);
  if (*(v12 + OBJC_IVAR____TtC10companiond31CPSRequesterDaemonDeviceSession__sentStart) == 1)
  {
    v15 = objc_allocWithZone(v13);
    swift_errorRetain();
    v16 = CUError.init(_:_:_:)();
    v0[17] = v16;
    v17 = swift_task_alloc();
    v0[18] = v17;
    *v17 = v0;
    v17[1] = sub_10003A330;

    return sub_10003E02C(v16);
  }

  else
  {

    v19 = swift_task_alloc();
    v0[15] = v19;
    *v19 = v0;
    v19[1] = sub_10003A220;

    return sub_10003E864();
  }
}

uint64_t sub_10003B378()
{

  v1 = swift_task_alloc();
  *(v0 + 120) = v1;
  *v1 = v0;
  v1[1] = sub_10003A220;

  return sub_10003E864();
}

uint64_t sub_10003B410()
{
  v1[6] = v0;
  sub_100024EA8(&qword_10009B730, &unk_10006E430);
  v1[7] = swift_task_alloc();
  sub_10004027C(&qword_10009B720, type metadata accessor for CPSRequesterDaemonDeviceSession, &unk_10006E400);
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[8] = v3;
  v1[9] = v2;

  return _swift_task_switch(sub_10003B51C, v3, v2);
}

uint64_t sub_10003B51C()
{
  v24 = v0;
  if (qword_10009AD48 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10002AF48(v1, qword_10009B5C0);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[6];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v23 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_100030690(*(v4 + OBJC_IVAR____TtC10companiond31CPSRequesterDaemonDeviceSession__label), *(v4 + OBJC_IVAR____TtC10companiond31CPSRequesterDaemonDeviceSession__label + 8), &v23);
    _os_log_impl(&_mh_execute_header, v2, v3, "[%s] invalidate", v5, 0xCu);
    sub_100024EF0(v6);
  }

  v7 = v0[6];
  v8 = OBJC_IVAR____TtC10companiond31CPSRequesterDaemonDeviceSession__nexusSession;
  v9 = *(v7 + OBJC_IVAR____TtC10companiond31CPSRequesterDaemonDeviceSession__nexusSession);
  v0[10] = v9;
  *(v7 + v8) = 0;
  if (v9)
  {
    v10 = swift_task_alloc();
    v0[11] = v10;
    *v10 = v0;
    v10[1] = sub_10003B8B4;

    return NXSession.cancel()();
  }

  else
  {
    v11 = v0[6];
    v12 = *(v11 + OBJC_IVAR____TtC10companiond31CPSRequesterDaemonDeviceSession__runTask);
    *(v11 + OBJC_IVAR____TtC10companiond31CPSRequesterDaemonDeviceSession__runTask) = 0;
    if (v12)
    {
      Task.cancel()();
    }

    v14 = v0[6];
    v13 = v0[7];
    v15 = OBJC_IVAR____TtC10companiond31CPSRequesterDaemonDeviceSession__responseContinuation;
    swift_beginAccess();
    sub_10003FE90(v14 + v15, v13);
    v16 = sub_100024EA8(&unk_10009B650, &qword_10006E3B8);
    v17 = *(v16 - 8);
    (*(v17 + 56))(v14 + v15, 1, 1, v16);
    v18 = (*(v17 + 48))(v13, 1, v16);
    v19 = v0[7];
    if (v18 == 1)
    {
      sub_10002556C(v0[7], &qword_10009B730, &unk_10006E430);
    }

    else
    {
      v20 = objc_allocWithZone(type metadata accessor for CUError());
      v0[5] = CUError.init(_:_:_:)();
      CheckedContinuation.resume(throwing:)();
      (*(v17 + 8))(v19, v16);
    }

    v21 = v0[1];

    return v21();
  }
}

uint64_t sub_10003B8B4()
{
  v1 = *v0;

  v2 = *(v1 + 72);
  v3 = *(v1 + 64);

  return _swift_task_switch(sub_10003B9F8, v3, v2);
}

uint64_t sub_10003B9F8()
{
  v1 = v0[6];
  v2 = *(v1 + OBJC_IVAR____TtC10companiond31CPSRequesterDaemonDeviceSession__runTask);
  *(v1 + OBJC_IVAR____TtC10companiond31CPSRequesterDaemonDeviceSession__runTask) = 0;
  if (v2)
  {
    Task.cancel()();
  }

  v4 = v0[6];
  v3 = v0[7];
  v5 = OBJC_IVAR____TtC10companiond31CPSRequesterDaemonDeviceSession__responseContinuation;
  swift_beginAccess();
  sub_10003FE90(v4 + v5, v3);
  v6 = sub_100024EA8(&unk_10009B650, &qword_10006E3B8);
  v7 = *(v6 - 8);
  (*(v7 + 56))(v4 + v5, 1, 1, v6);
  v8 = (*(v7 + 48))(v3, 1, v6);
  v9 = v0[7];
  if (v8 == 1)
  {
    sub_10002556C(v0[7], &qword_10009B730, &unk_10006E430);
  }

  else
  {
    v10 = objc_allocWithZone(type metadata accessor for CUError());
    v0[5] = CUError.init(_:_:_:)();
    CheckedContinuation.resume(throwing:)();
    (*(v7 + 8))(v9, v6);
  }

  v11 = v0[1];

  return v11();
}

uint64_t sub_10003BBE8(uint64_t a1)
{
  v3 = type metadata accessor for CPSRequesterSession.Event();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10009AD48 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_10002AF48(v7, qword_10009B5C0);
  (*(v4 + 16))(v6, a1, v3);

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v26 = a1;
    v11 = v10;
    v28[0] = swift_slowAlloc();
    *v11 = 136315394;
    *(v11 + 4) = sub_100030690(*(v1 + OBJC_IVAR____TtC10companiond31CPSRequesterDaemonDeviceSession__label), *(v1 + OBJC_IVAR____TtC10companiond31CPSRequesterDaemonDeviceSession__label + 8), v28);
    *(v11 + 12) = 2080;
    sub_10004027C(&qword_10009B750, &type metadata accessor for CPSRequesterSession.Event, &protocol conformance descriptor for CPSRequesterSession.Event);
    v12 = dispatch thunk of CustomStringConvertible.description.getter();
    v14 = v13;
    (*(v4 + 8))(v6, v3);
    v15 = sub_100030690(v12, v14, v28);

    *(v11 + 14) = v15;
    _os_log_impl(&_mh_execute_header, v8, v9, "[%s] report event: %s", v11, 0x16u);
    swift_arrayDestroy();

    a1 = v26;
  }

  else
  {

    (*(v4 + 8))(v6, v3);
  }

  result = swift_weakLoadStrong();
  if (result)
  {
    v17 = result;
    __chkstk_darwin(result);
    v23 = a1;
    type metadata accessor for CPSRequesterDaemonSession(0);
    sub_10004027C(&qword_10009B598, type metadata accessor for CPSRequesterDaemonSession, &unk_10006E580);
    dispatch thunk of Actor.unownedExecutor.getter();
    if (swift_task_isCurrentExecutor())
    {
      v18 = swift_allocObject();
      *(v18 + 16) = sub_10004006C;
      *(v18 + 24) = &v25 - 4;
      v19 = swift_allocObject();
      *(v19 + 16) = sub_100040098;
      *(v19 + 24) = v18;

      v28[0] = v17;
      sub_1000400EC(v28);

      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        return result;
      }

      __break(1u);

      swift_isEscapingClosureAtFileLocation();

      __break(1u);
    }

    v28[0] = 0;
    v28[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(66);
    v21._object = 0x8000000100073410;
    v21._countAndFlagsBits = 0xD00000000000003FLL;
    String.append(_:)(v21);
    v27 = v17;
    _print_unlocked<A, B>(_:_:)();
    v22._countAndFlagsBits = 46;
    v22._object = 0xE100000000000000;
    String.append(_:)(v22);
    v24 = 0;
    v23 = 72;
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_10003C0DC(uint64_t a1, uint64_t a2)
{
  type metadata accessor for CPSRequesterDaemonSession(0);
  sub_10004027C(&qword_10009B598, type metadata accessor for CPSRequesterDaemonSession, &unk_10006E580);
  dispatch thunk of Actor.unownedExecutor.getter();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  __chkstk_darwin(isCurrentExecutor);
  v6[2] = a1;
  v6[3] = a2;
  return sub_100041780(sub_100040108, v6, "companiond/CPSRequesterDaemonSession.swift", 42, 2u, 88);
}

uint64_t sub_10003C1F8()
{
  v1[7] = v0;
  v2 = type metadata accessor for CUEnvironmentValues();
  v1[8] = v2;
  v1[9] = *(v2 - 8);
  v1[10] = swift_task_alloc();
  type metadata accessor for NXSession.Configuration();
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  sub_100024EA8(&qword_10009B758, &qword_10006E488);
  v1[13] = swift_task_alloc();
  v3 = type metadata accessor for NXEndpoint();
  v1[14] = v3;
  v1[15] = *(v3 - 8);
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  sub_10004027C(&qword_10009B720, type metadata accessor for CPSRequesterDaemonDeviceSession, &unk_10006E400);
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[18] = v5;
  v1[19] = v4;

  return _swift_task_switch(sub_10003C408, v5, v4);
}

uint64_t sub_10003C408()
{
  v34 = v0;
  if (static Task<>.isCancelled.getter())
  {
LABEL_4:
    v5 = objc_allocWithZone(type metadata accessor for CUError());
    CUError.init(_:_:_:)();
    swift_willThrow();

    v6 = *(v0 + 8);

    return v6();
  }

  v1 = *(v0 + 112);
  v2 = *(v0 + 120);
  v3 = *(v0 + 104);
  v4 = *(*(v0 + 56) + 16);
  NXEndpoint.init(bluetoothDevice:)();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_10002556C(*(v0 + 104), &qword_10009B758, &qword_10006E488);
    goto LABEL_4;
  }

  (*(*(v0 + 120) + 32))(*(v0 + 136), *(v0 + 104), *(v0 + 112));
  if (qword_10009AD48 != -1)
  {
    swift_once();
  }

  v8 = *(v0 + 128);
  v9 = *(v0 + 136);
  v10 = *(v0 + 112);
  v11 = *(v0 + 120);
  v12 = type metadata accessor for Logger();
  sub_10002AF48(v12, qword_10009B5C0);
  (*(v11 + 16))(v8, v9, v10);

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();

  v15 = os_log_type_enabled(v13, v14);
  v17 = *(v0 + 120);
  v16 = *(v0 + 128);
  v18 = *(v0 + 112);
  if (v15)
  {
    v19 = *(v0 + 56);
    v20 = swift_slowAlloc();
    v33[0] = swift_slowAlloc();
    *v20 = 136315394;
    *(v20 + 4) = sub_100030690(*(v19 + OBJC_IVAR____TtC10companiond31CPSRequesterDaemonDeviceSession__label), *(v19 + OBJC_IVAR____TtC10companiond31CPSRequesterDaemonDeviceSession__label + 8), v33);
    *(v20 + 12) = 2080;
    sub_10004027C(&qword_10009B778, &type metadata accessor for NXEndpoint, &protocol conformance descriptor for NXEndpoint);
    v21 = dispatch thunk of CustomStringConvertible.description.getter();
    v23 = v22;
    v24 = *(v17 + 8);
    v24(v16, v18);
    v25 = sub_100030690(v21, v23, v33);

    *(v20 + 14) = v25;
    _os_log_impl(&_mh_execute_header, v13, v14, "[%s] set up: endpoint=%s", v20, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v24 = *(v17 + 8);
    v24(v16, v18);
  }

  *(v0 + 160) = v24;
  v27 = *(v0 + 72);
  v26 = *(v0 + 80);
  v28 = *(v0 + 56);
  v29 = *(v0 + 64);
  type metadata accessor for NXSession();
  static NXSession.Configuration.default.getter();
  swift_getKeyPath();
  *(v0 + 200) = CBAssignedL2CAPPSMForCompanionServices;
  *(v0 + 202) = 0;
  sub_10004027C(&qword_10009B760, &type metadata accessor for NXSession.Configuration, &protocol conformance descriptor for NXSession.Configuration);
  CUKeyPathModifiable.set<A>(_:_:)();

  (*(v27 + 16))(v26, v28 + OBJC_IVAR____TtC10companiond31CPSRequesterDaemonDeviceSession_environment, v29);
  v30 = NXSession.__allocating_init(configuration:environment:)();
  *(v0 + 168) = v30;
  *(v28 + OBJC_IVAR____TtC10companiond31CPSRequesterDaemonDeviceSession__nexusSession) = v30;

  swift_allocObject();
  swift_weakInit();
  *(v0 + 40) = type metadata accessor for CPSResponderEventHandler();
  *(v0 + 48) = sub_10004027C(&qword_10009B768, &type metadata accessor for CPSResponderEventHandler, &protocol conformance descriptor for CPSResponderEventHandler);
  sub_100034710((v0 + 16));
  CPSResponderEventHandler.init(handler:)();
  sub_10004027C(&qword_10009B770, &type metadata accessor for NXSession, &protocol conformance descriptor for NXSession);
  v32 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10003C9CC, v32, v31);
}

uint64_t sub_10003C9CC()
{
  v0[22] = NXSession.register(requestHandler:)();
  sub_100024EF0(v0 + 2);
  v1 = v0[18];
  v2 = v0[19];

  return _swift_task_switch(sub_10003CA6C, v1, v2);
}

uint64_t sub_10003CA6C()
{
  *(v0[7] + OBJC_IVAR____TtC10companiond31CPSRequesterDaemonDeviceSession__nexusResponderEventHandler) = v0[22];

  v1 = swift_task_alloc();
  v0[23] = v1;
  *v1 = v0;
  v1[1] = sub_10003CB28;
  v2 = v0[17];

  return NXSession.add(endpoint:update:)(v2, 0);
}

uint64_t sub_10003CB28()
{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  *(v1 + 192) = v3;
  *v3 = v2;
  v3[1] = sub_10003CC6C;

  return NXSession.start()();
}

uint64_t sub_10003CC6C()
{
  v1 = *v0;

  v2 = *(v1 + 152);
  v3 = *(v1 + 144);

  return _swift_task_switch(sub_10003CD8C, v3, v2);
}

uint64_t sub_10003CD8C()
{
  v1 = v0[20];
  v2 = v0[17];
  v3 = v0[14];

  v1(v2, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_10003CE68()
{
  sub_100024EF0(v0 + 2);
  *(v0[7] + OBJC_IVAR____TtC10companiond31CPSRequesterDaemonDeviceSession__nexusResponderEventHandler) = 0;

  v1 = swift_task_alloc();
  v0[23] = v1;
  *v1 = v0;
  v1[1] = sub_10003CB28;
  v2 = v0[17];

  return NXSession.add(endpoint:update:)(v2, 0);
}

uint64_t sub_10003CF28()
{
  v1[2] = v0;
  v2 = type metadata accessor for CPSRequesterSession.Event();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v3 = type metadata accessor for NXRequestMetadata();
  v1[6] = v3;
  v1[7] = *(v3 - 8);
  v1[8] = swift_task_alloc();
  v4 = type metadata accessor for CPSRequesterUseCaseConfiguration();
  v1[9] = v4;
  v1[10] = *(v4 - 8);
  v1[11] = swift_task_alloc();
  started = type metadata accessor for CPSRequesterStartMessage();
  v1[12] = started;
  v1[13] = *(started - 8);
  v1[14] = swift_task_alloc();
  v6 = type metadata accessor for NXNoResponseMessage();
  v1[15] = v6;
  v1[16] = *(v6 - 8);
  v1[17] = swift_task_alloc();
  sub_10004027C(&qword_10009B720, type metadata accessor for CPSRequesterDaemonDeviceSession, &unk_10006E400);
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[18] = v8;
  v1[19] = v7;

  return _swift_task_switch(sub_10003D1C8, v8, v7);
}

uint64_t sub_10003D1C8()
{
  v25 = v0;
  if ((static Task<>.isCancelled.getter() & 1) != 0 || (v1 = *(v0[2] + OBJC_IVAR____TtC10companiond31CPSRequesterDaemonDeviceSession__nexusSession), (v0[20] = v1) == 0))
  {
    v21 = objc_allocWithZone(type metadata accessor for CUError());
    CUError.init(_:_:_:)();
    swift_willThrow();

    v22 = v0[1];

    return v22();
  }

  else
  {
    v2 = qword_10009AD48;

    if (v2 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_10002AF48(v3, qword_10009B5C0);

    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = v0[2];
      v7 = swift_slowAlloc();
      v24[0] = swift_slowAlloc();
      *v7 = 136315394;
      *(v7 + 4) = sub_100030690(*(v6 + OBJC_IVAR____TtC10companiond31CPSRequesterDaemonDeviceSession__label), *(v6 + OBJC_IVAR____TtC10companiond31CPSRequesterDaemonDeviceSession__label + 8), v24);
      *(v7 + 12) = 2080;
      sub_10004027C(&qword_10009B740, &type metadata accessor for CPSRequesterUseCaseConfiguration, &protocol conformance descriptor for CPSRequesterUseCaseConfiguration);
      v8 = dispatch thunk of CustomStringConvertible.description.getter();
      v10 = sub_100030690(v8, v9, v24);

      *(v7 + 14) = v10;
      _os_log_impl(&_mh_execute_header, v4, v5, "[%s] send start: configuration={%s}", v7, 0x16u);
      swift_arrayDestroy();
    }

    v11 = v0[10];
    v12 = v0[11];
    v13 = v0[9];
    v14 = v0[2];
    *(v14 + OBJC_IVAR____TtC10companiond31CPSRequesterDaemonDeviceSession__sentStart) = 1;
    (*(v11 + 16))(v12, v14 + OBJC_IVAR____TtC10companiond31CPSRequesterDaemonDeviceSession__configuration, v13);
    CPSRequesterStartMessage.init(configuration:)();
    static NXRequestMetadata.default.getter();
    v15 = swift_task_alloc();
    v0[21] = v15;
    v16 = sub_10004027C(&qword_10009B738, &type metadata accessor for CPSRequesterStartMessage, &protocol conformance descriptor for CPSRequesterStartMessage);
    *v15 = v0;
    v15[1] = sub_10003D5D0;
    v17 = v0[17];
    v18 = v0[14];
    v19 = v0[12];
    v20 = v0[8];

    return NXSession.send<A>(request:metadata:)(v17, v18, v20, v19, v16);
  }
}

uint64_t sub_10003D5D0()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v4 = *(*v1 + 104);
  v5 = *(*v1 + 96);
  v6 = *(*v1 + 64);
  v7 = *(*v1 + 56);
  v8 = *(*v1 + 48);
  *(*v1 + 176) = v0;

  (*(v7 + 8))(v6, v8);
  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v9 = v2[18];
    v10 = v2[19];
    v11 = sub_10003D8D8;
  }

  else
  {
    (*(v2[16] + 8))(v2[17], v2[15]);
    v9 = v2[18];
    v10 = v2[19];
    v11 = sub_10003D7C8;
  }

  return _swift_task_switch(v11, v9, v10);
}

uint64_t sub_10003D7C8()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  (*(v2 + 104))(v1, enum case for CPSRequesterSession.Event.deviceCommunicationStarted(_:), v3);
  sub_10003BBE8(v1);

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_10003D8D8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10003D984()
{
  v1[2] = v0;
  v2 = type metadata accessor for CPSRequesterSession.Event();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v1[6] = sub_10004027C(&qword_10009B720, type metadata accessor for CPSRequesterDaemonDeviceSession, &unk_10006E400);
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[7] = v4;
  v1[8] = v3;

  return _swift_task_switch(sub_10003DAB8, v4, v3);
}

uint64_t sub_10003DAB8()
{
  v13 = v0;
  if (qword_10009AD48 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[9] = sub_10002AF48(v1, qword_10009B5C0);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[2];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_100030690(*(v4 + OBJC_IVAR____TtC10companiond31CPSRequesterDaemonDeviceSession__label), *(v4 + OBJC_IVAR____TtC10companiond31CPSRequesterDaemonDeviceSession__label + 8), &v12);
    _os_log_impl(&_mh_execute_header, v2, v3, "[%s] wait for response", v5, 0xCu);
    sub_100024EF0(v6);
  }

  v7 = v0[6];
  v8 = v0[2];
  v9 = swift_task_alloc();
  v0[10] = v9;
  *v9 = v0;
  v9[1] = sub_10003DCC8;
  v10 = v0[2];

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 12, v8, v7, 0xD000000000000015, 0x8000000100073360, sub_10003FFF4, v10, &type metadata for Bool);
}

uint64_t sub_10003DCC8()
{
  v2 = *v1;
  *(*v1 + 88) = v0;

  v3 = *(v2 + 64);
  v4 = *(v2 + 56);
  if (v0)
  {
    v5 = sub_10003DFC8;
  }

  else
  {
    v5 = sub_10003DE04;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_10003DE04()
{
  v14 = v0;
  v1 = *(v0 + 96);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 16);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v13 = v6;
    *v5 = 136315394;
    *(v5 + 4) = sub_100030690(*(v4 + OBJC_IVAR____TtC10companiond31CPSRequesterDaemonDeviceSession__label), *(v4 + OBJC_IVAR____TtC10companiond31CPSRequesterDaemonDeviceSession__label + 8), &v13);
    *(v5 + 12) = 1024;
    *(v5 + 14) = v1;
    _os_log_impl(&_mh_execute_header, v2, v3, "[%s] received response: accepted=%{BOOL}d", v5, 0x12u);
    sub_100024EF0(v6);
  }

  v8 = *(v0 + 32);
  v7 = *(v0 + 40);
  v9 = &enum case for CPSRequesterSession.Event.userAccepted(_:);
  v10 = *(v0 + 24);
  if (!v1)
  {
    v9 = &enum case for CPSRequesterSession.Event.userDenied(_:);
  }

  (*(*(v0 + 32) + 104))(*(v0 + 40), *v9, *(v0 + 24));
  sub_10003BBE8(v7);
  (*(v8 + 8))(v7, v10);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_10003DFC8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10003E02C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for NXRequestMetadata();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = type metadata accessor for CPSRequesterEndMessage();
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();
  v5 = type metadata accessor for NXNoResponseMessage();
  v2[10] = v5;
  v2[11] = *(v5 - 8);
  v2[12] = swift_task_alloc();
  sub_10004027C(&qword_10009B720, type metadata accessor for CPSRequesterDaemonDeviceSession, &unk_10006E400);
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[13] = v7;
  v2[14] = v6;

  return _swift_task_switch(sub_10003E214, v7, v6);
}

uint64_t sub_10003E214()
{
  v21 = v0;
  if ((static Task<>.isCancelled.getter() & 1) != 0 || (v1 = *(v0[3] + OBJC_IVAR____TtC10companiond31CPSRequesterDaemonDeviceSession__nexusSession), (v0[15] = v1) == 0))
  {
    v17 = objc_allocWithZone(type metadata accessor for CUError());
    CUError.init(_:_:_:)();
    swift_willThrow();

    v18 = v0[1];

    return v18();
  }

  else
  {
    v2 = qword_10009AD48;

    if (v2 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_10002AF48(v3, qword_10009B5C0);

    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = v0[3];
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v20 = v8;
      *v7 = 136315138;
      *(v7 + 4) = sub_100030690(*(v6 + OBJC_IVAR____TtC10companiond31CPSRequesterDaemonDeviceSession__label), *(v6 + OBJC_IVAR____TtC10companiond31CPSRequesterDaemonDeviceSession__label + 8), &v20);
      _os_log_impl(&_mh_execute_header, v4, v5, "[%s] send end", v7, 0xCu);
      sub_100024EF0(v8);
    }

    v9 = v0[2];
    *(v0[3] + OBJC_IVAR____TtC10companiond31CPSRequesterDaemonDeviceSession__sentStart) = 0;
    v10 = v9;
    CPSRequesterEndMessage.init(error:)();
    static NXRequestMetadata.default.getter();
    v11 = swift_task_alloc();
    v0[16] = v11;
    v12 = sub_10004027C(&qword_10009B748, &type metadata accessor for CPSRequesterEndMessage, &protocol conformance descriptor for CPSRequesterEndMessage);
    *v11 = v0;
    v11[1] = sub_10003E550;
    v13 = v0[12];
    v14 = v0[9];
    v15 = v0[6];
    v16 = v0[7];

    return NXSession.send<A>(request:metadata:)(v13, v14, v15, v16, v12);
  }
}

uint64_t sub_10003E550()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 64);
  v5 = *(*v1 + 56);
  v6 = *(*v1 + 48);
  v7 = *(*v1 + 40);
  v8 = *(*v1 + 32);
  *(*v1 + 136) = v0;

  (*(v7 + 8))(v6, v8);
  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v9 = v2[13];
    v10 = v2[14];
    v11 = sub_10003E7D8;
  }

  else
  {
    (*(v2[11] + 8))(v2[12], v2[10]);
    v9 = v2[13];
    v10 = v2[14];
    v11 = sub_10003E748;
  }

  return _swift_task_switch(v11, v9, v10);
}

uint64_t sub_10003E748()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10003E7D8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10003E864()
{
  v1[6] = v0;
  sub_100024EA8(&qword_10009B730, &unk_10006E430);
  v1[7] = swift_task_alloc();
  sub_10004027C(&qword_10009B720, type metadata accessor for CPSRequesterDaemonDeviceSession, &unk_10006E400);
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[8] = v3;
  v1[9] = v2;

  return _swift_task_switch(sub_10003E970, v3, v2);
}

uint64_t sub_10003E970()
{
  v24 = v0;
  if (qword_10009AD48 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10002AF48(v1, qword_10009B5C0);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[6];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v23 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_100030690(*(v4 + OBJC_IVAR____TtC10companiond31CPSRequesterDaemonDeviceSession__label), *(v4 + OBJC_IVAR____TtC10companiond31CPSRequesterDaemonDeviceSession__label + 8), &v23);
    _os_log_impl(&_mh_execute_header, v2, v3, "[%s] tear down", v5, 0xCu);
    sub_100024EF0(v6);
  }

  v7 = v0[6];
  *(v7 + OBJC_IVAR____TtC10companiond31CPSRequesterDaemonDeviceSession__nexusResponderEventHandler) = 0;

  v8 = OBJC_IVAR____TtC10companiond31CPSRequesterDaemonDeviceSession__nexusSession;
  v9 = *(v7 + OBJC_IVAR____TtC10companiond31CPSRequesterDaemonDeviceSession__nexusSession);
  v0[10] = v9;
  *(v7 + v8) = 0;
  if (v9)
  {
    v10 = swift_task_alloc();
    v0[11] = v10;
    *v10 = v0;
    v10[1] = sub_10003ED20;

    return NXSession.cancel()();
  }

  else
  {
    v11 = v0[6];
    v12 = *(v11 + OBJC_IVAR____TtC10companiond31CPSRequesterDaemonDeviceSession__runTask);
    *(v11 + OBJC_IVAR____TtC10companiond31CPSRequesterDaemonDeviceSession__runTask) = 0;
    if (v12)
    {
      Task.cancel()();
    }

    v14 = v0[6];
    v13 = v0[7];
    v15 = OBJC_IVAR____TtC10companiond31CPSRequesterDaemonDeviceSession__responseContinuation;
    swift_beginAccess();
    sub_10003FE90(v14 + v15, v13);
    v16 = sub_100024EA8(&unk_10009B650, &qword_10006E3B8);
    v17 = *(v16 - 8);
    (*(v17 + 56))(v14 + v15, 1, 1, v16);
    v18 = (*(v17 + 48))(v13, 1, v16);
    v19 = v0[7];
    if (v18 == 1)
    {
      sub_10002556C(v0[7], &qword_10009B730, &unk_10006E430);
    }

    else
    {
      v20 = objc_allocWithZone(type metadata accessor for CUError());
      v0[5] = CUError.init(_:_:_:)();
      CheckedContinuation.resume(throwing:)();
      (*(v17 + 8))(v19, v16);
    }

    v21 = v0[1];

    return v21();
  }
}

uint64_t sub_10003ED20()
{
  v1 = *v0;

  v2 = *(v1 + 72);
  v3 = *(v1 + 64);

  return _swift_task_switch(sub_10003EE64, v3, v2);
}

uint64_t sub_10003EE64()
{
  v1 = v0[6];
  v2 = *(v1 + OBJC_IVAR____TtC10companiond31CPSRequesterDaemonDeviceSession__runTask);
  *(v1 + OBJC_IVAR____TtC10companiond31CPSRequesterDaemonDeviceSession__runTask) = 0;
  if (v2)
  {
    Task.cancel()();
  }

  v4 = v0[6];
  v3 = v0[7];
  v5 = OBJC_IVAR____TtC10companiond31CPSRequesterDaemonDeviceSession__responseContinuation;
  swift_beginAccess();
  sub_10003FE90(v4 + v5, v3);
  v6 = sub_100024EA8(&unk_10009B650, &qword_10006E3B8);
  v7 = *(v6 - 8);
  (*(v7 + 56))(v4 + v5, 1, 1, v6);
  v8 = (*(v7 + 48))(v3, 1, v6);
  v9 = v0[7];
  if (v8 == 1)
  {
    sub_10002556C(v0[7], &qword_10009B730, &unk_10006E430);
  }

  else
  {
    v10 = objc_allocWithZone(type metadata accessor for CUError());
    v0[5] = CUError.init(_:_:_:)();
    CheckedContinuation.resume(throwing:)();
    (*(v7 + 8))(v9, v6);
  }

  v11 = v0[1];

  return v11();
}

uint64_t sub_10003F058(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a2;
  v4[7] = a4;
  v4[5] = a1;
  return _swift_task_switch(sub_10003F07C, 0, 0);
}

uint64_t sub_10003F07C()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[8] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[9] = v2;
    *v2 = v0;
    v2[1] = sub_10003F1BC;
    v3 = v0[6];

    return sub_10003F3A4(v3);
  }

  else
  {
    v5 = objc_allocWithZone(type metadata accessor for CUError());
    CUError.init(_:_:_:)();
    swift_willThrow();
    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_10003F1BC()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_10003F340;
  }

  else
  {
    v2 = sub_10003F2D0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10003F2D0()
{
  NXNoResponseMessage.init()();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10003F340()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10003F3A4(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  sub_100024EA8(&qword_10009B730, &unk_10006E430);
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v3 = type metadata accessor for CPSResponderEvent();
  v2[12] = v3;
  v2[13] = *(v3 - 8);
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v4 = type metadata accessor for CPSResponderEventMessage();
  v2[16] = v4;
  v2[17] = *(v4 - 8);
  v2[18] = swift_task_alloc();
  sub_10004027C(&qword_10009B720, type metadata accessor for CPSRequesterDaemonDeviceSession, &unk_10006E400);
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10003F588, v6, v5);
}

uint64_t sub_10003F588()
{
  v43 = v0;
  if (qword_10009AD48 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 136);
  v1 = *(v0 + 144);
  v3 = *(v0 + 128);
  v4 = *(v0 + 64);
  v5 = type metadata accessor for Logger();
  sub_10002AF48(v5, qword_10009B5C0);
  (*(v2 + 16))(v1, v4, v3);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 136);
  v10 = *(v0 + 144);
  v11 = *(v0 + 128);
  if (v8)
  {
    v12 = *(v0 + 120);
    v40 = v7;
    v13 = *(v0 + 96);
    v14 = *(v0 + 104);
    v41 = *(v0 + 128);
    v15 = *(v0 + 72);
    v16 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    *v16 = 136315394;
    *(v16 + 4) = sub_100030690(*(v15 + OBJC_IVAR____TtC10companiond31CPSRequesterDaemonDeviceSession__label), *(v15 + OBJC_IVAR____TtC10companiond31CPSRequesterDaemonDeviceSession__label + 8), &v42);
    *(v16 + 12) = 2080;
    CPSResponderEventMessage.event.getter();
    sub_10004027C(&qword_10009B780, &type metadata accessor for CPSResponderEvent, &protocol conformance descriptor for CPSResponderEvent);
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v19 = v18;
    (*(v14 + 8))(v12, v13);
    (*(v9 + 8))(v10, v41);
    v20 = sub_100030690(v17, v19, &v42);

    *(v16 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v6, v40, "[%s] responder message: event=%s", v16, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    (*(v9 + 8))(v10, v11);
  }

  v22 = *(v0 + 104);
  v21 = *(v0 + 112);
  v23 = *(v0 + 96);
  CPSResponderEventMessage.event.getter();
  v24 = (*(v22 + 88))(v21, v23);
  if (v24 == enum case for CPSResponderEvent.userAccepted(_:))
  {
    v25 = *(v0 + 88);
    v26 = *(v0 + 72);
    v27 = OBJC_IVAR____TtC10companiond31CPSRequesterDaemonDeviceSession__responseContinuation;
    swift_beginAccess();
    sub_10003FE90(v26 + v27, v25);
    v28 = sub_100024EA8(&unk_10009B650, &qword_10006E3B8);
    v29 = *(v28 - 8);
    (*(v29 + 56))(v26 + v27, 1, 1, v28);
    v30 = (*(v29 + 48))(v25, 1, v28);
    v31 = *(v0 + 88);
    if (v30 != 1)
    {
      *(v0 + 153) = 1;
      CheckedContinuation.resume(returning:)();
      (*(v29 + 8))(v31, v28);
LABEL_16:

      v39 = *(v0 + 8);

      return v39();
    }

LABEL_11:
    sub_10002556C(v31, &qword_10009B730, &unk_10006E430);
    goto LABEL_16;
  }

  if (v24 == enum case for CPSResponderEvent.userDenied(_:))
  {
    v33 = *(v0 + 72);
    v32 = *(v0 + 80);
    v34 = OBJC_IVAR____TtC10companiond31CPSRequesterDaemonDeviceSession__responseContinuation;
    swift_beginAccess();
    sub_10003FE90(v33 + v34, v32);
    v35 = sub_100024EA8(&unk_10009B650, &qword_10006E3B8);
    v36 = *(v35 - 8);
    (*(v36 + 56))(v33 + v34, 1, 1, v35);
    v37 = (*(v36 + 48))(v32, 1, v35);
    v31 = *(v0 + 80);
    if (v37 != 1)
    {
      *(v0 + 152) = 0;
      CheckedContinuation.resume(returning:)();
      (*(v36 + 8))(v31, v35);
      goto LABEL_16;
    }

    goto LABEL_11;
  }

  return _diagnoseUnexpectedEnumCase<A>(type:)();
}

uint64_t sub_10003FAF0(uint64_t a1, uint64_t *a2)
{
  v4 = sub_100024EA8(&qword_10009B730, &unk_10006E430);
  __chkstk_darwin(v4 - 8);
  v6 = &v11 - v5;
  sub_10004027C(&qword_10009B720, type metadata accessor for CPSRequesterDaemonDeviceSession, &unk_10006E400);
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v7 = sub_100024EA8(&unk_10009B650, &qword_10006E3B8);
  v8 = *(v7 - 8);
  (*(v8 + 16))(v6, a1, v7);
  (*(v8 + 56))(v6, 0, 1, v7);
  v9 = OBJC_IVAR____TtC10companiond31CPSRequesterDaemonDeviceSession__responseContinuation;
  swift_beginAccess();
  sub_10003FFFC(v6, a2 + v9);
  return swift_endAccess();
}

uint64_t sub_10003FCD8(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = sub_10004027C(&qword_10009B728, type metadata accessor for CPSRequesterDaemonDeviceSession, &unk_10006E3D8);

  return CUEnvironmental<>.unownedExecutor.getter(v4, v5, a2);
}

uint64_t sub_10003FD78@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC10companiond31CPSRequesterDaemonDeviceSession_environment;
  v5 = type metadata accessor for CUEnvironmentValues();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_10003FDF4(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    String.index(_:offsetBy:limitedBy:)();

    return String.subscript.getter();
  }

  return result;
}

uint64_t sub_10003FE90(uint64_t a1, uint64_t a2)
{
  v4 = sub_100024EA8(&qword_10009B730, &unk_10006E430);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10003FF00()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10003FF40()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000240AC;

  return sub_100039968();
}

uint64_t sub_10003FFFC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100024EA8(&qword_10009B730, &unk_10006E430);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000400B4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100040124@<X0>(uint64_t a1@<X8>)
{
  result = NXSession.Configuration.bluetoothPSM.getter();
  *a1 = result;
  *(a1 + 2) = BYTE2(result) & 1;
  return result;
}

uint64_t sub_100040190()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000401C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_1000240AC;

  return sub_10003F058(a1, a2, a3, v3);
}

uint64_t sub_10004027C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000402C4(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = v3;
  swift_weakInit();
  *(v4 + OBJC_IVAR____TtC10companiond31CPSRequesterDaemonDeviceSession__nexusResponderEventHandler) = 0;
  *(v4 + OBJC_IVAR____TtC10companiond31CPSRequesterDaemonDeviceSession__nexusSession) = 0;
  v8 = OBJC_IVAR____TtC10companiond31CPSRequesterDaemonDeviceSession__responseContinuation;
  v9 = sub_100024EA8(&unk_10009B650, &qword_10006E3B8);
  (*(*(v9 - 8) + 56))(v4 + v8, 1, 1, v9);
  *(v4 + OBJC_IVAR____TtC10companiond31CPSRequesterDaemonDeviceSession__runTask) = 0;
  *(v4 + OBJC_IVAR____TtC10companiond31CPSRequesterDaemonDeviceSession__sentStart) = 0;
  v10 = OBJC_IVAR____TtC10companiond31CPSRequesterDaemonDeviceSession_startTicks;
  *(v4 + v10) = mach_absolute_time();
  *(v4 + 16) = a2;
  v11 = OBJC_IVAR____TtC10companiond31CPSRequesterDaemonDeviceSession__configuration;
  v12 = type metadata accessor for CPSRequesterUseCaseConfiguration();
  v13 = *(v12 - 8);
  (*(v13 + 16))(v4 + v11, a1, v12);
  swift_weakAssign();
  v14 = OBJC_IVAR____TtC10companiond25CPSRequesterDaemonSession_environment;
  v15 = OBJC_IVAR____TtC10companiond31CPSRequesterDaemonDeviceSession_environment;
  v16 = type metadata accessor for CUEnvironmentValues();
  (*(*(v16 - 8) + 16))(v4 + v15, a3 + v14, v16);
  v17 = a3 + OBJC_IVAR____TtC10companiond25CPSRequesterDaemonSession_label;
  v18 = *(a3 + OBJC_IVAR____TtC10companiond25CPSRequesterDaemonSession_label);
  v19 = *(v17 + 8);
  v20 = a2;

  v21._countAndFlagsBits = v18;
  v21._object = v19;
  String.append(_:)(v21);

  v22._countAndFlagsBits = 45;
  v22._object = 0xE100000000000000;
  String.append(_:)(v22);
  v23 = [v20 idsDeviceID];
  if (v23)
  {
    v24 = v23;
    v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v27 = v26;

    sub_10003FDF4(8, v25, v27);
  }

  DefaultStringInterpolation.appendInterpolation<A>(_:)();

  (*(v13 + 8))(a1, v12);
  v28 = (v4 + OBJC_IVAR____TtC10companiond31CPSRequesterDaemonDeviceSession__label);
  *v28 = 0;
  v28[1] = 0xE000000000000000;
  return v4;
}

uint64_t sub_10004059C()
{
  v1[12] = v0;
  v2 = type metadata accessor for DefaultStringInterpolation.PrintUtilsTimeDuration();
  v1[13] = v2;
  v1[14] = *(v2 - 8);
  v1[15] = swift_task_alloc();
  sub_100045C88(&qword_10009B598, type metadata accessor for CPSRequesterDaemonSession, &unk_10006E580);
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[16] = v4;
  v1[17] = v3;

  return _swift_task_switch(sub_1000406CC, v4, v3);
}

uint64_t sub_1000406CC()
{
  v45 = v0;
  v1 = *(v0 + 96);
  v44[0] = 0;
  v44[1] = 0xE000000000000000;
  v2 = mach_absolute_time();
  v3 = *(v1 + OBJC_IVAR____TtC10companiond25CPSRequesterDaemonSession_startTicks);
  v4 = v2 >= v3;
  result = v2 - v3;
  if (v4)
  {
    v7 = *(v0 + 112);
    v6 = *(v0 + 120);
    v9 = *(v0 + 96);
    v8 = *(v0 + 104);
    *(v0 + 72) = UpTicksToSeconds();
    (*(v7 + 104))(v6, enum case for DefaultStringInterpolation.PrintUtilsTimeDuration.duration(_:), v8);
    sub_10002B46C();
    DefaultStringInterpolation.appendInterpolation<A>(_:_:)();
    (*(v7 + 8))(v6, v8);
    v11 = v44[0];
    v10 = v44[1];
    _StringGuts.grow(_:)(50);

    strcpy(v44, "Session: sid=");
    HIWORD(v44[1]) = -4864;
    *(v0 + 80) = *(v9 + OBJC_IVAR____TtC10companiond25CPSRequesterDaemonSession_sessionID);
    v12._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v12);

    v13._countAndFlagsBits = 8236;
    v13._object = 0xE200000000000000;
    String.append(_:)(v13);
    type metadata accessor for CPSRequesterUseCaseConfiguration();
    sub_100045C88(&qword_10009B740, &type metadata accessor for CPSRequesterUseCaseConfiguration, &protocol conformance descriptor for CPSRequesterUseCaseConfiguration);
    v14._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v14);

    v15._countAndFlagsBits = 0x746E65696C63202CLL;
    v15._object = 0xE90000000000003DLL;
    String.append(_:)(v15);
    v16 = *(v9 + OBJC_IVAR____TtC10companiond25CPSRequesterDaemonSession__xpcConnection);
    v17 = *(v16 + 64);
    v18 = *(v16 + 72);

    v19._countAndFlagsBits = v17;
    v19._object = v18;
    String.append(_:)(v19);

    v20._countAndFlagsBits = 0x656369766564202CLL;
    v20._object = 0xEA00000000003D73;
    String.append(_:)(v20);
    v21 = OBJC_IVAR____TtC10companiond25CPSRequesterDaemonSession__deviceSessions;
    swift_beginAccess();
    *(v0 + 88) = *(*(v9 + v21) + 16);
    v22._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v22);

    v23._countAndFlagsBits = 0x3D7075202CLL;
    v23._object = 0xE500000000000000;
    String.append(_:)(v23);
    v24._countAndFlagsBits = v11;
    v24._object = v10;
    String.append(_:)(v24);

    v25._countAndFlagsBits = 10;
    v25._object = 0xE100000000000000;
    String.append(_:)(v25);
    v26 = v44[1];
    *(v0 + 40) = v44[0];
    *(v0 + 48) = v26;
    v27 = *(v9 + v21);
    *(v0 + 144) = v27;
    v28 = *(v27 + 32);
    *(v0 + 208) = v28;
    v29 = -1;
    v30 = -1 << v28;
    if (-(-1 << v28) < 64)
    {
      v29 = ~(-1 << -v30);
    }

    v31 = v29 & *(v27 + 64);
    *(v0 + 152) = _swiftEmptyArrayStorage;

    if (v31)
    {
      v33 = 0;
LABEL_10:
      *(v0 + 160) = v31;
      *(v0 + 168) = v33;
      *(v0 + 176) = *(*(v32 + 56) + ((v33 << 9) | (8 * __clz(__rbit64(v31)))));
      *(v0 + 56) = 8237;
      *(v0 + 64) = 0xE200000000000000;

      v35 = swift_task_alloc();
      *(v0 + 184) = v35;
      *v35 = v0;
      v35[1] = sub_100040BD8;

      return sub_1000392FC();
    }

    else
    {
      v34 = 0;
      while (((63 - v30) >> 6) - 1 != v34)
      {
        v33 = v34 + 1;
        v31 = *(v32 + 8 * v34++ + 72);
        if (v31)
        {
          goto LABEL_10;
        }
      }

      v44[0] = _swiftEmptyArrayStorage;

      sub_100044D8C(v44);

      v36 = *(v44[0] + 2);
      if (v36)
      {
        v37 = (v44[0] + 40);
        do
        {
          v38 = *(v37 - 1);
          v39 = *v37;

          v40._countAndFlagsBits = v38;
          v40._object = v39;
          String.append(_:)(v40);

          v37 += 2;
          --v36;
        }

        while (v36);
      }

      v41 = *(v0 + 40);
      v42 = *(v0 + 48);

      v43 = *(v0 + 8);

      return v43(v41, v42);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100040BD8(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 192) = a1;
  *(v4 + 200) = a2;

  v5 = *(v3 + 136);
  v6 = *(v3 + 128);

  return _swift_task_switch(sub_100040D00, v6, v5);
}

uint64_t sub_100040D00()
{
  v24 = v0;
  String.append(_:)(*(v0 + 192));

  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + 152);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_20:
    v4 = sub_100037778(0, *(v4 + 2) + 1, 1, v4);
  }

  v6 = *(v4 + 2);
  v5 = *(v4 + 3);
  if (v6 >= v5 >> 1)
  {
    v4 = sub_100037778((v5 > 1), v6 + 1, 1, v4);
  }

  *(v4 + 2) = v6 + 1;
  v7 = &v4[16 * v6];
  *(v7 + 4) = v1;
  *(v7 + 5) = v2;
  v9 = *(v0 + 160);
  v8 = *(v0 + 168);
  *(v0 + 152) = v4;
  v10 = (v9 - 1) & v9;
  if (v10)
  {
    v11 = *(v0 + 144);
LABEL_10:
    *(v0 + 160) = v10;
    *(v0 + 168) = v8;
    *(v0 + 176) = *(*(v11 + 56) + ((v8 << 9) | (8 * __clz(__rbit64(v10)))));
    *(v0 + 56) = 8237;
    *(v0 + 64) = 0xE200000000000000;

    v13 = swift_task_alloc();
    *(v0 + 184) = v13;
    *v13 = v0;
    v13[1] = sub_100040BD8;

    return sub_1000392FC();
  }

  else
  {
    while (1)
    {
      v12 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        goto LABEL_20;
      }

      v11 = *(v0 + 144);
      if (v12 >= (((1 << *(v0 + 208)) + 63) >> 6))
      {
        break;
      }

      v10 = *(v11 + 8 * v12 + 64);
      ++v8;
      if (v10)
      {
        v8 = v12;
        goto LABEL_10;
      }
    }

    v23 = v4;

    sub_100044D8C(&v23);

    v15 = *(v23 + 2);
    if (v15)
    {
      v16 = (v23 + 40);
      do
      {
        v17 = *(v16 - 1);
        v18 = *v16;

        v19._countAndFlagsBits = v17;
        v19._object = v18;
        String.append(_:)(v19);

        v16 += 2;
        --v15;
      }

      while (v15);
    }

    v20 = *(v0 + 40);
    v21 = *(v0 + 48);

    v22 = *(v0 + 8);

    return v22(v20, v21);
  }
}

void sub_100040FC4()
{
  v1 = v0;
  if (qword_10009AD50 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10002AF48(v2, qword_10009B788);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v7 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_100030690(*(v1 + OBJC_IVAR____TtC10companiond25CPSRequesterDaemonSession_label), *(v1 + OBJC_IVAR____TtC10companiond25CPSRequesterDaemonSession_label + 8), &v7);
    _os_log_impl(&_mh_execute_header, v3, v4, "[%s] activate", v5, 0xCu);
    sub_100024EF0(v6);
  }

  *(v1 + 16) = 1;
  if ((*(v1 + OBJC_IVAR____TtC10companiond25CPSRequesterDaemonSession__invalidateCalled) & 1) == 0)
  {

    sub_100042364();
  }
}

uint64_t sub_100041150()
{
  v1[5] = v0;
  sub_100045C88(&qword_10009B598, type metadata accessor for CPSRequesterDaemonSession, &unk_10006E580);
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[6] = v3;
  v1[7] = v2;

  return _swift_task_switch(sub_100041224, v3, v2);
}

uint64_t sub_100041224()
{
  v20 = v0;
  if (qword_10009AD50 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10002AF48(v1, qword_10009B788);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 40);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v19 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_100030690(*(v4 + OBJC_IVAR____TtC10companiond25CPSRequesterDaemonSession_label), *(v4 + OBJC_IVAR____TtC10companiond25CPSRequesterDaemonSession_label + 8), &v19);
    _os_log_impl(&_mh_execute_header, v2, v3, "[%s] invalidate", v5, 0xCu);
    sub_100024EF0(v6);
  }

  *(*(v0 + 40) + OBJC_IVAR____TtC10companiond25CPSRequesterDaemonSession__invalidateCalled) = 1;
  sub_100041D1C();
  swift_beginAccess();
  sub_100024EA8(&qword_10009B8C0, &unk_10006E5F0);
  v7 = Dictionary.cuRemoveAll(keepingCapacity:)();
  *(v0 + 64) = v7;
  swift_endAccess();
  v8 = *(v7 + 32);
  *(v0 + 104) = v8;
  v9 = -1;
  v10 = -1 << v8;
  if (-v10 < 64)
  {
    v9 = ~(-1 << -v10);
  }

  v11 = v9 & *(v7 + 64);
  if (v11)
  {
    v12 = 0;
    v13 = *(v0 + 64);
LABEL_12:
    *(v0 + 72) = v11;
    *(v0 + 80) = v12;
    *(v0 + 88) = *(*(v13 + 56) + ((v12 << 9) | (8 * __clz(__rbit64(v11)))));

    v16 = swift_task_alloc();
    *(v0 + 96) = v16;
    *v16 = v0;
    v16[1] = sub_100041518;

    return sub_10003B410();
  }

  else
  {
    v14 = 0;
    v15 = ((63 - v10) >> 6) - 1;
    v13 = *(v0 + 64);
    while (v15 != v14)
    {
      v12 = v14 + 1;
      v11 = *(v13 + 8 * v14++ + 72);
      if (v11)
      {
        goto LABEL_12;
      }
    }

    v18 = *(v0 + 8);

    return v18();
  }
}

uint64_t sub_100041518()
{
  v1 = *v0;

  v2 = *(v1 + 56);
  v3 = *(v1 + 48);

  return _swift_task_switch(sub_100041638, v3, v2);
}

uint64_t sub_100041638()
{

  v2 = *(v0 + 80);
  v3 = (*(v0 + 72) - 1) & *(v0 + 72);
  if (v3)
  {
    result = *(v0 + 64);
LABEL_7:
    *(v0 + 72) = v3;
    *(v0 + 80) = v2;
    *(v0 + 88) = *(*(result + 56) + ((v2 << 9) | (8 * __clz(__rbit64(v3)))));

    v5 = swift_task_alloc();
    *(v0 + 96) = v5;
    *v5 = v0;
    v5[1] = sub_100041518;

    return sub_10003B410();
  }

  else
  {
    while (1)
    {
      v4 = v2 + 1;
      if (__OFADD__(v2, 1))
      {
        __break(1u);
        return result;
      }

      result = *(v0 + 64);
      if (v4 >= (((1 << *(v0 + 104)) + 63) >> 6))
      {
        break;
      }

      v3 = *(result + 8 * v4 + 64);
      ++v2;
      if (v3)
      {
        v2 = v4;
        goto LABEL_7;
      }
    }

    v6 = *(v0 + 8);

    return v6();
  }
}

uint64_t sub_100041780(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6)
{
  v8 = v6;
  sub_100045C88(&unk_10009BE70, type metadata accessor for CPSXPCConnection, &unk_10006EA98);
  dispatch thunk of Actor.unownedExecutor.getter();
  if (swift_task_isCurrentExecutor())
  {
    v11 = swift_allocObject();
    *(v11 + 16) = a1;
    *(v11 + 24) = a2;
    v12 = swift_allocObject();
    *(v12 + 16) = sub_100045AD8;
    *(v12 + 24) = v11;

    v17[0] = v6;
    sub_100045B1C(v17, &v18);

    if (v7)
    {
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        return v12;
      }

      __break(1u);
    }

    v12 = v18;
    v8 = swift_isEscapingClosureAtFileLocation();

    if ((v8 & 1) == 0)
    {
      return v12;
    }

    __break(1u);
  }

  v17[0] = 0;
  v17[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(66);
  v15._object = 0x8000000100073410;
  v15._countAndFlagsBits = 0xD00000000000003FLL;
  String.append(_:)(v15);
  v18 = v8;
  _print_unlocked<A, B>(_:_:)();
  v16._countAndFlagsBits = 46;
  v16._object = 0xE100000000000000;
  String.append(_:)(v16);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_1000419E0()
{
  v0 = type metadata accessor for Logger();
  sub_10002B76C(v0, qword_10009B788);
  sub_10002AF48(v0, qword_10009B788);
  static CPSConstants.logSubsystem.getter();
  return Logger.init(subsystem:category:)();
}

void *sub_100041A4C()
{
  v1 = v0;
  sub_100045C88(&qword_10009B598, type metadata accessor for CPSRequesterDaemonSession, &unk_10006E580);
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = *(v0 + OBJC_IVAR____TtC10companiond25CPSRequesterDaemonSession_label);
  v2 = *(v0 + OBJC_IVAR____TtC10companiond25CPSRequesterDaemonSession_label + 8);
  v4 = qword_10009AD50;

  if (v4 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_10002AF48(v5, qword_10009B788);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v8 = 136315138;
    v10 = sub_100030690(v3, v2, &v16);

    *(v8 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v6, v7, "[%s] deinit", v8, 0xCu);
    sub_100024EF0(v9);
  }

  else
  {
  }

  sub_100041D1C();
  v11 = OBJC_IVAR____TtC10companiond25CPSRequesterDaemonSession_configuration;
  v12 = type metadata accessor for CPSRequesterUseCaseConfiguration();
  (*(*(v12 - 8) + 8))(v1 + v11, v12);

  v13 = OBJC_IVAR____TtC10companiond25CPSRequesterDaemonSession_environment;
  v14 = type metadata accessor for CUEnvironmentValues();
  (*(*(v14 - 8) + 8))(v1 + v13, v14);

  return v1;
}

void sub_100041D1C()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = v0;
    v3 = qword_10009AD50;
    v10 = v1;
    if (v3 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_10002AF48(v4, qword_10009B788);

    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v11 = v8;
      *v7 = 136315138;
      *(v7 + 4) = sub_100030690(*(v2 + OBJC_IVAR____TtC10companiond25CPSRequesterDaemonSession_label), *(v2 + OBJC_IVAR____TtC10companiond25CPSRequesterDaemonSession_label + 8), &v11);
      _os_log_impl(&_mh_execute_header, v5, v6, "[%s] bluetooth scanner stop", v7, 0xCu);
      sub_100024EF0(v8);
    }

    v9 = *(v2 + 24);
    *(v2 + 24) = 0;

    [v10 invalidate];
  }
}

uint64_t sub_100041EC0(uint64_t a1)
{
  sub_100041A4C();
  v2 = *(*a1 + 48);
  v3 = *(*a1 + 52);

  return _swift_deallocClassInstance(a1, v2, v3);
}

uint64_t sub_100041F24()
{
  sub_100045C88(&qword_10009B598, type metadata accessor for CPSRequesterDaemonSession, &unk_10006E580);
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_deinitOnExecutor(v0, sub_100041EC0, v2, v1, 0);
}

uint64_t type metadata accessor for CPSRequesterDaemonSession(uint64_t a1)
{
  result = qword_10009B7E0;
  if (!qword_10009B7E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100042030(uint64_t a1)
{
  result = type metadata accessor for CPSRequesterUseCaseConfiguration();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for CUEnvironmentValues();
    if (v3 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_100042140@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, BOOL *a3@<X8>)
{
  v14 = a3;
  v6 = type metadata accessor for CPSXPCServerRequest();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for CPSXPCConnection(0);
  sub_100045C88(&unk_10009BE70, type metadata accessor for CPSXPCConnection, &unk_10006EA98);
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v10 = *(sub_100024EA8(&qword_10009B8B8, &unk_10006E5B8) + 48);
  *v9 = *(a1 + OBJC_IVAR____TtC10companiond25CPSRequesterDaemonSession_sessionID);
  v11 = type metadata accessor for CPSRequesterSession.Event();
  (*(*(v11 - 8) + 16))(&v9[v10], a2, v11);
  (*(v7 + 104))(v9, enum case for CPSXPCServerRequest.requesterEvent(_:), v6);
  sub_10004F52C(v9);
  if (v3)
  {
  }

  result = (*(v7 + 8))(v9, v6);
  *v14 = v3 != 0;
  return result;
}

void sub_100042364()
{
  if (!*(v0 + 24))
  {
    v1 = v0;
    v3 = *(v0 + OBJC_IVAR____TtC10companiond25CPSRequesterDaemonSession_label);
    v2 = *(v0 + OBJC_IVAR____TtC10companiond25CPSRequesterDaemonSession_label + 8);
    v4 = qword_10009AD50;

    if (v4 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_10002AF48(v5, qword_10009B788);

    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v28 = v9;
      *v8 = 136315138;
      *(v8 + 4) = sub_100030690(v3, v2, &v28);
      _os_log_impl(&_mh_execute_header, v6, v7, "[%s] bluetooth scanner start", v8, 0xCu);
      sub_100024EF0(v9);
    }

    v10 = [objc_allocWithZone(CBDiscovery) init];
    v11 = *(v1 + 24);
    *(v1 + 24) = v10;
    v12 = v10;

    [v12 setBleRSSIThresholdHint:4294967226];
    [v12 setBleScanRate:50];
    v13 = CUEnvironmentValues.dispatchQueue.getter();
    [v12 setDispatchQueue:v13];

    [v12 setDiscoveryFlags:64];
    CUEnvironmentValues.bluetoothMockID.getter();
    if (v14)
    {
      v15 = String._bridgeToObjectiveC()();
    }

    else
    {
      v15 = 0;
    }

    [v12 setMockID:v15];

    v16 = swift_allocObject();
    swift_weakInit();
    v17 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v18 = swift_allocObject();
    *(v18 + 16) = v16;
    *(v18 + 24) = v17;
    v32 = sub_100045958;
    v33 = v18;
    v28 = _NSConcreteStackBlock;
    v29 = 1107296256;
    v30 = sub_100043B44;
    v31 = &unk_10008B2A0;
    v19 = _Block_copy(&v28);

    [v12 setDeviceFoundHandler:v19];
    _Block_release(v19);
    v20 = swift_allocObject();
    swift_weakInit();
    v21 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v22 = swift_allocObject();
    *(v22 + 16) = v20;
    *(v22 + 24) = v21;
    v32 = sub_1000459BC;
    v33 = v22;
    v28 = _NSConcreteStackBlock;
    v29 = 1107296256;
    v30 = sub_100043B44;
    v31 = &unk_10008B2F0;
    v23 = _Block_copy(&v28);

    [v12 setDeviceLostHandler:v23];
    _Block_release(v23);
    v24 = swift_allocObject();
    swift_weakInit();
    v25 = swift_allocObject();
    swift_unknownObjectWeakInit();

    v26 = swift_allocObject();
    v26[2] = v24;
    v26[3] = v25;
    v26[4] = v3;
    v26[5] = v2;
    v32 = sub_100045A0C;
    v33 = v26;
    v28 = _NSConcreteStackBlock;
    v29 = 1107296256;
    v30 = sub_100044C04;
    v31 = &unk_10008B340;
    v27 = _Block_copy(&v28);

    [v12 activateWithCompletion:v27];
    _Block_release(v27);
  }
}

uint64_t sub_100042854(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    isEscapingClosureAtFileLocation = result;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v7 = Strong;
      v12[2] = __chkstk_darwin(Strong);
      v12[3] = a1;
      type metadata accessor for CPSRequesterDaemonSession(0);
      sub_100045C88(&qword_10009B598, type metadata accessor for CPSRequesterDaemonSession, &unk_10006E580);
      dispatch thunk of Actor.unownedExecutor.getter();
      if (swift_task_isCurrentExecutor())
      {
        v8 = swift_allocObject();
        *(v8 + 16) = sub_100045B80;
        *(v8 + 24) = v12;
        v9 = swift_allocObject();
        *(v9 + 16) = sub_100045D18;
        *(v9 + 24) = v8;

        v13[0] = isEscapingClosureAtFileLocation;
        sub_100045CD8(v13);

        isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

        if ((isEscapingClosureAtFileLocation & 1) == 0)
        {
          return result;
        }

        __break(1u);

        swift_isEscapingClosureAtFileLocation();

        __break(1u);
      }

      v13[0] = 0;
      v13[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(66);
      v10._object = 0x8000000100073410;
      v10._countAndFlagsBits = 0xD00000000000003FLL;
      String.append(_:)(v10);
      v12[5] = isEscapingClosureAtFileLocation;
      _print_unlocked<A, B>(_:_:)();
      v11._countAndFlagsBits = 46;
      v11._object = 0xE100000000000000;
      String.append(_:)(v11);
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return result;
    }
  }

  return result;
}

uint64_t sub_100042B14(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = sub_100024EA8(&qword_10009B150, &qword_10006DC50);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = v24 - v11;
  type metadata accessor for CPSRequesterDaemonSession(0);
  sub_100045C88(&qword_10009B598, type metadata accessor for CPSRequesterDaemonSession, &unk_10006E580);
  dispatch thunk of Actor.unownedExecutor.getter();
  result = swift_task_isCurrentExecutor();
  if ((result & 1) == 0)
  {
    result = swift_task_reportUnexpectedExecutor();
  }

  v14 = *(a1 + 24);
  if (v14 && v14 == a2)
  {
    v24[5] = v3;
    v15 = CUEnvironmentValues.dispatchQueue.getter();
    v16 = type metadata accessor for TaskPriority();
    v17 = *(v16 - 8);
    (*(v17 + 56))(v12, 1, 1, v16);
    v18 = swift_allocObject();
    *(v18 + 16) = a1;
    *(v18 + 24) = a3;
    sub_1000251F8(v12, v10);
    v19 = (*(v17 + 48))(v10, 1, v16);

    v20 = a3;
    if (v19 == 1)
    {
      sub_10002556C(v10, &qword_10009B150, &qword_10006DC50);
    }

    else
    {
      TaskPriority.rawValue.getter();
      (*(v17 + 8))(v10, v16);
    }

    v21 = sub_100045C88(&qword_10009B330, sub_10002B6E8, &_sSo17OS_dispatch_queueCSch8DispatchMc);
    v22 = swift_allocObject();
    *(v22 + 16) = &unk_10006E5D0;
    *(v22 + 24) = v18;
    v24[0] = 6;
    v24[1] = 0;
    v24[2] = v15;
    v24[3] = v21;

    v23 = v15;
    swift_task_create();
    sub_10002556C(v12, &qword_10009B150, &qword_10006DC50);
  }

  return result;
}

uint64_t sub_100042E6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_1000240AC;

  return sub_100042F08(a3);
}

uint64_t sub_100042F08(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v3 = type metadata accessor for CPSRequesterUseCaseConfiguration();
  v2[10] = v3;
  v2[11] = *(v3 - 8);
  v2[12] = swift_task_alloc();
  sub_100045C88(&qword_10009B598, type metadata accessor for CPSRequesterDaemonSession, &unk_10006E580);
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[13] = v5;
  v2[14] = v4;

  return _swift_task_switch(sub_100043038, v5, v4);
}

uint64_t sub_100043038()
{
  v77 = v0;
  v1 = (*(v0 + 72) + OBJC_IVAR____TtC10companiond25CPSRequesterDaemonSession_label);
  v3 = *v1;
  v2 = v1[1];
  if (([*(v0 + 64) deviceFlags] & 0x80) == 0)
  {
    if (qword_10009AD50 != -1)
    {
      swift_once();
    }

    v4 = *(v0 + 64);
    v5 = type metadata accessor for Logger();
    sub_10002AF48(v5, qword_10009B788);

    v6 = v4;
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = *(v0 + 64);
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v76 = v12;
      *v10 = 136315394;
      v13 = sub_100030690(v3, v2, &v76);

      *(v10 + 4) = v13;
      *(v10 + 12) = 2112;
      *(v10 + 14) = v9;
      *v11 = v9;
      v14 = v9;
      v15 = "[%s] bluetooth scanner device found: ignored, not sameAccount, %@";
LABEL_38:
      _os_log_impl(&_mh_execute_header, v7, v8, v15, v10, 0x16u);
      sub_10002556C(v11, &unk_10009B2F0, &unk_10006E0C0);

      sub_100024EF0(v12);

LABEL_40:

      v71 = *(v0 + 8);

      return v71();
    }

    goto LABEL_39;
  }

  v16 = [*(v0 + 64) idsDeviceID];
  if (!v16)
  {
    if (qword_10009AD50 != -1)
    {
      swift_once();
    }

    v35 = *(v0 + 64);
    v36 = type metadata accessor for Logger();
    sub_10002AF48(v36, qword_10009B788);

    v37 = v35;
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v38 = *(v0 + 64);
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v76 = v12;
      *v10 = 136315394;
      v39 = sub_100030690(v3, v2, &v76);

      *(v10 + 4) = v39;
      *(v10 + 12) = 2112;
      *(v10 + 14) = v38;
      *v11 = v38;
      v40 = v38;
      v15 = "[%s] bluetooth scanner device found: ignored, no idsDeviceID, %@";
      goto LABEL_38;
    }

    goto LABEL_39;
  }

  v17 = *(v0 + 64);
  v18 = v16;
  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;

  v22 = [v17 model];
  if (!v22)
  {

    if (qword_10009AD50 != -1)
    {
      swift_once();
    }

    v41 = *(v0 + 64);
    v42 = type metadata accessor for Logger();
    sub_10002AF48(v42, qword_10009B788);

    v43 = v41;
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v44 = *(v0 + 64);
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v76 = v12;
      *v10 = 136315394;
      v45 = sub_100030690(v3, v2, &v76);

      *(v10 + 4) = v45;
      *(v10 + 12) = 2112;
      *(v10 + 14) = v44;
      *v11 = v44;
      v46 = v44;
      v15 = "[%s] bluetooth scanner device found: ignored, no model, %@";
      goto LABEL_38;
    }

    goto LABEL_39;
  }

  v23 = v22;
  v24 = GestaltProductTypeStringToDeviceClass();

  if (v24 > 9 || ((1 << v24) & 0x24A) == 0)
  {

    if (qword_10009AD50 != -1)
    {
      swift_once();
    }

    v65 = *(v0 + 64);
    v66 = type metadata accessor for Logger();
    sub_10002AF48(v66, qword_10009B788);

    v67 = v65;
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v68 = *(v0 + 64);
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v76 = v12;
      *v10 = 136315394;
      v69 = sub_100030690(v3, v2, &v76);

      *(v10 + 4) = v69;
      *(v10 + 12) = 2112;
      *(v10 + 14) = v68;
      *v11 = v68;
      v70 = v68;
      v15 = "[%s] bluetooth scanner device found: ignored, unsupported device class, %@";
      goto LABEL_38;
    }

    goto LABEL_39;
  }

  v26 = *(v0 + 72);
  v27 = OBJC_IVAR____TtC10companiond25CPSRequesterDaemonSession__deviceSessions;
  swift_beginAccess();
  if (*(*(v26 + v27) + 16))
  {
    sub_100031284(v19, v21);
    if (v28)
    {
      swift_endAccess();

      if (qword_10009AD50 != -1)
      {
        swift_once();
      }

      v29 = *(v0 + 64);
      v30 = type metadata accessor for Logger();
      sub_10002AF48(v30, qword_10009B788);

      v31 = v29;
      v7 = Logger.logObject.getter();
      v8 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v7, v8))
      {
        v32 = *(v0 + 64);
        v10 = swift_slowAlloc();
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        v76 = v12;
        *v10 = 136315394;
        v33 = sub_100030690(v3, v2, &v76);

        *(v10 + 4) = v33;
        *(v10 + 12) = 2112;
        *(v10 + 14) = v32;
        *v11 = v32;
        v34 = v32;
        v15 = "[%s] bluetooth scanner device found: ignored, already started, %@";
        goto LABEL_38;
      }

LABEL_39:

      goto LABEL_40;
    }
  }

  swift_endAccess();
  if (qword_10009AD50 != -1)
  {
    swift_once();
  }

  v47 = *(v0 + 64);
  v48 = type metadata accessor for Logger();
  sub_10002AF48(v48, qword_10009B788);

  v49 = v47;
  v50 = Logger.logObject.getter();
  v51 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v50, v51))
  {
    v75 = v21;
    v52 = *(v0 + 64);
    v53 = swift_slowAlloc();
    v74 = v19;
    v54 = swift_slowAlloc();
    v73 = swift_slowAlloc();
    v76 = v73;
    *v53 = 136315394;
    v55 = sub_100030690(v3, v2, &v76);

    *(v53 + 4) = v55;
    *(v53 + 12) = 2112;
    *(v53 + 14) = v52;
    *v54 = v52;
    v56 = v52;
    v21 = v75;
    _os_log_impl(&_mh_execute_header, v50, v51, "[%s] bluetooth scanner device found: device session start, %@", v53, 0x16u);
    sub_10002556C(v54, &unk_10009B2F0, &unk_10006E0C0);
    v19 = v74;

    sub_100024EF0(v73);
  }

  else
  {
  }

  v57 = *(v0 + 96);
  v58 = *(v0 + 72);
  v59 = *(v0 + 64);
  (*(*(v0 + 88) + 16))(v57, v58 + OBJC_IVAR____TtC10companiond25CPSRequesterDaemonSession_configuration, *(v0 + 80));
  type metadata accessor for CPSRequesterDaemonDeviceSession(0);
  swift_allocObject();
  v60 = v59;

  v61 = sub_1000402C4(v57, v60, v58);
  *(v0 + 120) = v61;

  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v76 = *(v26 + v27);
  *(v26 + v27) = 0x8000000000000000;
  sub_100031E40(v61, v19, v21, isUniquelyReferenced_nonNull_native);

  *(v26 + v27) = v76;
  swift_endAccess();
  sub_100045C88(&qword_10009B720, type metadata accessor for CPSRequesterDaemonDeviceSession, &unk_10006E400);
  v64 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100043A78, v64, v63);
}

uint64_t sub_100043A78()
{
  sub_1000396E4();
  v1 = *(v0 + 104);
  v2 = *(v0 + 112);

  return _swift_task_switch(sub_100043ADC, v1, v2);
}

uint64_t sub_100043ADC()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_100043B44(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_100043BAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    isEscapingClosureAtFileLocation = result;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v7 = Strong;
      v12[2] = __chkstk_darwin(Strong);
      v12[3] = a1;
      type metadata accessor for CPSRequesterDaemonSession(0);
      sub_100045C88(&qword_10009B598, type metadata accessor for CPSRequesterDaemonSession, &unk_10006E580);
      dispatch thunk of Actor.unownedExecutor.getter();
      if (swift_task_isCurrentExecutor())
      {
        v8 = swift_allocObject();
        *(v8 + 16) = sub_100045B64;
        *(v8 + 24) = v12;
        v9 = swift_allocObject();
        *(v9 + 16) = sub_100045D18;
        *(v9 + 24) = v8;

        v13[0] = isEscapingClosureAtFileLocation;
        sub_100045CD8(v13);

        isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

        if ((isEscapingClosureAtFileLocation & 1) == 0)
        {
          return result;
        }

        __break(1u);

        swift_isEscapingClosureAtFileLocation();

        __break(1u);
      }

      v13[0] = 0;
      v13[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(66);
      v10._object = 0x8000000100073410;
      v10._countAndFlagsBits = 0xD00000000000003FLL;
      String.append(_:)(v10);
      v12[5] = isEscapingClosureAtFileLocation;
      _print_unlocked<A, B>(_:_:)();
      v11._countAndFlagsBits = 46;
      v11._object = 0xE100000000000000;
      String.append(_:)(v11);
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return result;
    }
  }

  return result;
}

void sub_100043E6C(uint64_t a1, uint64_t a2, void *a3)
{
  type metadata accessor for CPSRequesterDaemonSession(0);
  sub_100045C88(&qword_10009B598, type metadata accessor for CPSRequesterDaemonSession, &unk_10006E580);
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = *(a1 + 24);
  if (v6)
  {
    if (v6 == a2)
    {
      sub_100043F40(a3);
    }
  }
}

void sub_100043F40(void *a1)
{
  v4 = *(v1 + OBJC_IVAR____TtC10companiond25CPSRequesterDaemonSession_label);
  v3 = *(v1 + OBJC_IVAR____TtC10companiond25CPSRequesterDaemonSession_label + 8);
  v5 = [a1 idsDeviceID];
  if (v5)
  {
    v6 = v5;
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;

    v10 = OBJC_IVAR____TtC10companiond25CPSRequesterDaemonSession__deviceSessions;
    swift_beginAccess();
    if (*(*(v1 + v10) + 16) && (sub_100031284(v7, v9), (v11 & 1) != 0))
    {
      swift_endAccess();

      if (qword_10009AD50 != -1)
      {
        swift_once();
      }

      v12 = type metadata accessor for Logger();
      sub_10002AF48(v12, qword_10009B788);

      v13 = a1;
      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v35[0] = v18;
        *v16 = 136315394;
        v19 = sub_100030690(v4, v3, v35);

        *(v16 + 4) = v19;
        *(v16 + 12) = 2112;
        *(v16 + 14) = v13;
        *v17 = v13;
        v20 = v13;
        v21 = "[%s] bluetooth scanner device lost: %@";
LABEL_12:
        _os_log_impl(&_mh_execute_header, v14, v15, v21, v16, 0x16u);
        sub_10002556C(v17, &unk_10009B2F0, &unk_10006E0C0);

        sub_100024EF0(v18);

LABEL_18:

        return;
      }
    }

    else
    {
      swift_endAccess();

      if (qword_10009AD50 != -1)
      {
        swift_once();
      }

      v22 = type metadata accessor for Logger();
      sub_10002AF48(v22, qword_10009B788);

      v23 = a1;
      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v35[0] = v18;
        *v16 = 136315394;
        v24 = sub_100030690(v4, v3, v35);

        *(v16 + 4) = v24;
        *(v16 + 12) = 2112;
        *(v16 + 14) = v23;
        *v17 = v23;
        v25 = v23;
        v21 = "[%s] bluetooth scanner device lost: ignored, not started, %@";
        goto LABEL_12;
      }
    }

    goto LABEL_18;
  }

  if (qword_10009AD50 != -1)
  {
    swift_once();
  }

  v26 = type metadata accessor for Logger();
  sub_10002AF48(v26, qword_10009B788);

  v27 = a1;
  oslog = Logger.logObject.getter();
  v28 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(oslog, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v35[0] = v31;
    *v29 = 136315394;
    v32 = sub_100030690(v4, v3, v35);

    *(v29 + 4) = v32;
    *(v29 + 12) = 2112;
    *(v29 + 14) = v27;
    *v30 = v27;
    v33 = v27;
    _os_log_impl(&_mh_execute_header, oslog, v28, "[%s] bluetooth scanner device lost: ignored, no idsDeviceID, %@", v29, 0x16u);
    sub_10002556C(v30, &unk_10009B2F0, &unk_10006E0C0);

    sub_100024EF0(v31);
  }

  else
  {
  }
}

uint64_t sub_100044434(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    isEscapingClosureAtFileLocation = result;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v11 = Strong;
      v16[2] = __chkstk_darwin(Strong);
      v16[3] = a1;
      v16[4] = a4;
      v16[5] = a5;
      type metadata accessor for CPSRequesterDaemonSession(0);
      sub_100045C88(&qword_10009B598, type metadata accessor for CPSRequesterDaemonSession, &unk_10006E580);
      dispatch thunk of Actor.unownedExecutor.getter();
      if (swift_task_isCurrentExecutor())
      {
        v12 = swift_allocObject();
        *(v12 + 16) = sub_100045A18;
        *(v12 + 24) = v16;
        v13 = swift_allocObject();
        *(v13 + 16) = sub_100040098;
        *(v13 + 24) = v12;

        v17[0] = isEscapingClosureAtFileLocation;
        sub_100045AAC(v17);

        isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

        if ((isEscapingClosureAtFileLocation & 1) == 0)
        {
          return result;
        }

        __break(1u);

        swift_isEscapingClosureAtFileLocation();

        __break(1u);
      }

      v17[0] = 0;
      v17[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(66);
      v14._object = 0x8000000100073410;
      v14._countAndFlagsBits = 0xD00000000000003FLL;
      String.append(_:)(v14);
      v16[7] = isEscapingClosureAtFileLocation;
      _print_unlocked<A, B>(_:_:)();
      v15._countAndFlagsBits = 46;
      v15._object = 0xE100000000000000;
      String.append(_:)(v15);
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return result;
    }
  }

  return result;
}

void sub_100044700(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v35 = a4;
  v10 = type metadata accessor for CPSRequesterSession.Event();
  v36 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = (&v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for CPSRequesterDaemonSession(0);
  sub_100045C88(&qword_10009B598, type metadata accessor for CPSRequesterDaemonSession, &unk_10006E580);
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v13 = *(a1 + 24);
  if (v13 && v13 == a2)
  {
    if (a3)
    {
      swift_errorRetain();
      if (qword_10009AD50 != -1)
      {
        swift_once();
      }

      v14 = type metadata accessor for Logger();
      sub_10002AF48(v14, qword_10009B788);
      swift_errorRetain();

      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v33 = a2;
        v18 = v17;
        v19 = swift_slowAlloc();
        v34 = v5;
        v20 = v19;
        v32 = swift_slowAlloc();
        v37 = v32;
        *v18 = 136315394;
        *(v18 + 4) = sub_100030690(v35, a5, &v37);
        *(v18 + 12) = 2112;
        swift_errorRetain();
        v21 = _swift_stdlib_bridgeErrorToNSError();
        *(v18 + 14) = v21;
        *v20 = v21;
        _os_log_impl(&_mh_execute_header, v15, v16, "[%s] ### bluetooth scanner start failed: error=%@", v18, 0x16u);
        sub_10002556C(v20, &unk_10009B2F0, &unk_10006E0C0);

        sub_100024EF0(v32);

        a2 = v33;
      }

      v22 = objc_allocWithZone(type metadata accessor for CUError());
      swift_errorRetain();
      *v12 = CUError.init(_:)();
      v23 = v36;
      v24 = (*(v36 + 104))(v12, enum case for CPSRequesterSession.Event.error(_:), v10);
      __chkstk_darwin(v24);
      *(&v31 - 2) = a1;
      *(&v31 - 1) = v12;
      sub_100041780(sub_100040108, (&v31 - 4), "companiond/CPSRequesterDaemonSession.swift", 42, 2u, 88);
      (*(v23 + 8))(v12, v10);
      [a2 invalidate];

      v25 = *(a1 + 24);
      *(a1 + 24) = 0;
    }

    else
    {
      if (qword_10009AD50 != -1)
      {
        swift_once();
      }

      v26 = type metadata accessor for Logger();
      sub_10002AF48(v26, qword_10009B788);

      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v37 = v30;
        *v29 = 136315138;
        *(v29 + 4) = sub_100030690(v35, a5, &v37);
        _os_log_impl(&_mh_execute_header, v27, v28, "[%s] bluetooth scanner started", v29, 0xCu);
        sub_100024EF0(v30);
      }
    }
  }
}

void sub_100044C04(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t sub_100044C70(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = sub_100045C88(&qword_10009B8B0, type metadata accessor for CPSRequesterDaemonSession, &unk_10006E558);

  return CUEnvironmental<>.unownedExecutor.getter(v4, v5, a2);
}

uint64_t sub_100044D10@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC10companiond25CPSRequesterDaemonSession_environment;
  v5 = type metadata accessor for CUEnvironmentValues();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

Swift::Int sub_100044D8C(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100038BB8(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_100044DF8(v5);
  *a1 = v2;
  return result;
}

Swift::Int sub_100044DF8(uint64_t *a1)
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
      sub_100044FF4(v7, v8, a1, v4);
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
    return sub_100044EF0(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_100044EF0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = result;
    v6 = *a4;
    sub_1000347D4();
    v7 = v5 - v4;
    v8 = (v6 + 16 * v4);
LABEL_5:
    v14 = v7;
    v9 = v8;
    while (1)
    {
      result = StringProtocol.caseInsensitiveCompare<A>(_:)();
      if (result != -1)
      {
LABEL_4:
        ++v4;
        v8 += 2;
        v7 = v14 - 1;
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

      v10 = *v9;
      v11 = v9[1];
      *v9 = *(v9 - 1);
      *(v9 - 1) = v11;
      *(v9 - 2) = v10;
      v9 -= 2;
      if (__CFADD__(v7++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_100044FF4(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = v4;
  v7 = a3;
  v90 = result;
  v8 = a3[1];
  if (v8 >= 1)
  {
    v9 = 0;
    v10 = _swiftEmptyArrayStorage;
    while (1)
    {
      v11 = v9;
      v12 = v9 + 1;
      if (v12 >= v8)
      {
        v8 = v12;
      }

      else
      {
        v87 = v10;
        v13 = 16 * v11;
        v14 = v11;
        v15 = *v7 + 16 * v11 + 40;
        v5 = sub_1000347D4();
        result = StringProtocol.caseInsensitiveCompare<A>(_:)();
        v16 = result;
        v89 = v14;
        v17 = v14 + 2;
        while (v8 != v17)
        {
          result = StringProtocol.caseInsensitiveCompare<A>(_:)();
          ++v17;
          v15 += 16;
          if ((v16 == -1) == (result != -1))
          {
            v8 = v17 - 1;
            break;
          }
        }

        v11 = v89;
        if (v16 == -1)
        {
          if (v8 < v89)
          {
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
            return result;
          }

          if (v89 < v8)
          {
            v18 = 0;
            v19 = 16 * v8;
            v20 = v89;
            do
            {
              if (v20 != v8 + v18 - 1)
              {
                v25 = *a3;
                if (!*a3)
                {
                  goto LABEL_124;
                }

                v21 = (v25 + v13);
                v22 = v25 + v19;
                v23 = *v21;
                v24 = v21[1];
                *v21 = *(v22 - 16);
                *(v22 - 16) = v23;
                *(v22 - 8) = v24;
              }

              ++v20;
              --v18;
              v19 -= 16;
              v13 += 16;
            }

            while (v20 < v8 + v18);
          }
        }

        v7 = a3;
        v10 = v87;
      }

      v26 = v7[1];
      if (v8 < v26)
      {
        if (__OFSUB__(v8, v11))
        {
          goto LABEL_116;
        }

        if (v8 - v11 < a4)
        {
          if (__OFADD__(v11, a4))
          {
            goto LABEL_117;
          }

          if (v11 + a4 < v26)
          {
            v26 = v11 + a4;
          }

          if (v26 < v11)
          {
LABEL_118:
            __break(1u);
            goto LABEL_119;
          }

          if (v8 != v26)
          {
            v92 = v26;
            v88 = v10;
            v85 = v6;
            v27 = *v7;
            v5 = sub_1000347D4();
            v28 = (v27 + 16 * v8);
            v29 = v11 - v8;
            do
            {
              v30 = v29;
              v31 = v28;
              do
              {
                result = StringProtocol.caseInsensitiveCompare<A>(_:)();
                if (result != -1)
                {
                  break;
                }

                if (!v27)
                {
                  goto LABEL_121;
                }

                v32 = *v31;
                v33 = v31[1];
                *v31 = *(v31 - 1);
                *(v31 - 1) = v33;
                *(v31 - 2) = v32;
                v31 -= 2;
              }

              while (!__CFADD__(v30++, 1));
              ++v8;
              v28 += 2;
              --v29;
            }

            while (v8 != v92);
            v6 = v85;
            v7 = a3;
            v8 = v92;
            v10 = v88;
          }
        }
      }

      if (v8 < v11)
      {
        goto LABEL_115;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_100037674(0, *(v10 + 2) + 1, 1, v10);
        v10 = result;
      }

      v36 = *(v10 + 2);
      v35 = *(v10 + 3);
      v37 = v36 + 1;
      if (v36 >= v35 >> 1)
      {
        result = sub_100037674((v35 > 1), v36 + 1, 1, v10);
        v10 = result;
      }

      *(v10 + 2) = v37;
      v38 = &v10[16 * v36];
      *(v38 + 4) = v11;
      *(v38 + 5) = v8;
      v5 = *v90;
      if (!*v90)
      {
        goto LABEL_125;
      }

      v93 = v8;
      if (v36)
      {
        while (1)
        {
          v39 = v37 - 1;
          if (v37 >= 4)
          {
            break;
          }

          if (v37 == 3)
          {
            v40 = *(v10 + 4);
            v41 = *(v10 + 5);
            v50 = __OFSUB__(v41, v40);
            v42 = v41 - v40;
            v43 = v50;
LABEL_57:
            if (v43)
            {
              goto LABEL_104;
            }

            v56 = &v10[16 * v37];
            v58 = *v56;
            v57 = *(v56 + 1);
            v59 = __OFSUB__(v57, v58);
            v60 = v57 - v58;
            v61 = v59;
            if (v59)
            {
              goto LABEL_107;
            }

            v62 = &v10[16 * v39 + 32];
            v64 = *v62;
            v63 = *(v62 + 1);
            v50 = __OFSUB__(v63, v64);
            v65 = v63 - v64;
            if (v50)
            {
              goto LABEL_110;
            }

            if (__OFADD__(v60, v65))
            {
              goto LABEL_111;
            }

            if (v60 + v65 >= v42)
            {
              if (v42 < v65)
              {
                v39 = v37 - 2;
              }

              goto LABEL_78;
            }

            goto LABEL_71;
          }

          v66 = &v10[16 * v37];
          v68 = *v66;
          v67 = *(v66 + 1);
          v50 = __OFSUB__(v67, v68);
          v60 = v67 - v68;
          v61 = v50;
LABEL_71:
          if (v61)
          {
            goto LABEL_106;
          }

          v69 = &v10[16 * v39];
          v71 = *(v69 + 4);
          v70 = *(v69 + 5);
          v50 = __OFSUB__(v70, v71);
          v72 = v70 - v71;
          if (v50)
          {
            goto LABEL_109;
          }

          if (v72 < v60)
          {
            goto LABEL_3;
          }

LABEL_78:
          v77 = v39 - 1;
          if (v39 - 1 >= v37)
          {
            __break(1u);
LABEL_100:
            __break(1u);
LABEL_101:
            __break(1u);
LABEL_102:
            __break(1u);
LABEL_103:
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
            goto LABEL_118;
          }

          if (!*v7)
          {
            goto LABEL_122;
          }

          v78 = *&v10[16 * v77 + 32];
          v79 = *&v10[16 * v39 + 40];
          sub_100045658((*v7 + 16 * v78), (*v7 + 16 * *&v10[16 * v39 + 32]), (*v7 + 16 * v79), v5);
          if (v6)
          {
          }

          if (v79 < v78)
          {
            goto LABEL_100;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v10 = sub_1000387B0(v10);
          }

          if (v77 >= *(v10 + 2))
          {
            goto LABEL_101;
          }

          v80 = &v10[16 * v77];
          *(v80 + 4) = v78;
          *(v80 + 5) = v79;
          result = sub_100038724(v39);
          v37 = *(v10 + 2);
          if (v37 <= 1)
          {
            goto LABEL_3;
          }
        }

        v44 = &v10[16 * v37 + 32];
        v45 = *(v44 - 64);
        v46 = *(v44 - 56);
        v50 = __OFSUB__(v46, v45);
        v47 = v46 - v45;
        if (v50)
        {
          goto LABEL_102;
        }

        v49 = *(v44 - 48);
        v48 = *(v44 - 40);
        v50 = __OFSUB__(v48, v49);
        v42 = v48 - v49;
        v43 = v50;
        if (v50)
        {
          goto LABEL_103;
        }

        v51 = &v10[16 * v37];
        v53 = *v51;
        v52 = *(v51 + 1);
        v50 = __OFSUB__(v52, v53);
        v54 = v52 - v53;
        if (v50)
        {
          goto LABEL_105;
        }

        v50 = __OFADD__(v42, v54);
        v55 = v42 + v54;
        if (v50)
        {
          goto LABEL_108;
        }

        if (v55 >= v47)
        {
          v73 = &v10[16 * v39 + 32];
          v75 = *v73;
          v74 = *(v73 + 1);
          v50 = __OFSUB__(v74, v75);
          v76 = v74 - v75;
          if (v50)
          {
            goto LABEL_112;
          }

          if (v42 < v76)
          {
            v39 = v37 - 2;
          }

          goto LABEL_78;
        }

        goto LABEL_57;
      }

LABEL_3:
      v8 = v7[1];
      v9 = v93;
      if (v93 >= v8)
      {
        goto LABEL_88;
      }
    }
  }

  v10 = _swiftEmptyArrayStorage;
LABEL_88:
  v5 = v10;
  v10 = *v90;
  if (!*v90)
  {
    goto LABEL_126;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_119:
    result = sub_1000387B0(v5);
    v5 = result;
  }

  v81 = *(v5 + 16);
  if (v81 >= 2)
  {
    while (*v7)
    {
      v82 = *(v5 + 16 * v81);
      v83 = *(v5 + 16 * (v81 - 1) + 40);
      sub_100045658((*v7 + 16 * v82), (*v7 + 16 * *(v5 + 16 * (v81 - 1) + 32)), (*v7 + 16 * v83), v10);
      if (v6)
      {
      }

      if (v83 < v82)
      {
        goto LABEL_113;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_1000387B0(v5);
      }

      if (v81 - 2 >= *(v5 + 16))
      {
        goto LABEL_114;
      }

      v84 = (v5 + 16 * v81);
      *v84 = v82;
      v84[1] = v83;
      result = sub_100038724(v81 - 1);
      v81 = *(v5 + 16);
      if (v81 <= 1)
      {
      }
    }

    goto LABEL_123;
  }
}

uint64_t sub_100045658(char *__src, char *__dst, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __dst;
  v7 = __src;
  v8 = __dst - __src;
  v9 = __dst - __src + 15;
  if (__dst - __src >= 0)
  {
    v9 = __dst - __src;
  }

  v10 = v9 >> 4;
  v11 = a3 - __dst;
  v12 = a3 - __dst + 15;
  if (a3 - __dst >= 0)
  {
    v12 = a3 - __dst;
  }

  v13 = v12 >> 4;
  if (v10 >= v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v13] <= a4)
    {
      memmove(a4, __dst, 16 * v13);
    }

    v14 = &v4[16 * v13];
    if (v11 >= 16 && v6 > v7)
    {
      sub_1000347D4();
LABEL_27:
      v20 = v6 - 16;
      v5 -= 16;
      v17 = v14;
      do
      {
        v18 = v5 + 16;
        v17 -= 16;
        if (StringProtocol.caseInsensitiveCompare<A>(_:)() == -1)
        {
          if (v18 != v6)
          {
            *v5 = *v20;
          }

          if (v14 <= v4 || (v6 -= 16, v20 <= v7))
          {
            v6 = v20;
            goto LABEL_39;
          }

          goto LABEL_27;
        }

        if (v18 != v14)
        {
          *v5 = *v17;
        }

        v5 -= 16;
        v14 = v17;
      }

      while (v17 > v4);
      v14 = v17;
    }
  }

  else
  {
    if (a4 != __src || &__src[16 * v10] <= a4)
    {
      memmove(a4, __src, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 >= 16 && v6 < v5)
    {
      sub_1000347D4();
      while (StringProtocol.caseInsensitiveCompare<A>(_:)() == -1)
      {
        v15 = v6;
        v16 = v7 == v6;
        v6 += 16;
        if (!v16)
        {
          goto LABEL_14;
        }

LABEL_15:
        v7 += 16;
        if (v4 >= v14 || v6 >= v5)
        {
          goto LABEL_37;
        }
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (v16)
      {
        goto LABEL_15;
      }

LABEL_14:
      *v7 = *v15;
      goto LABEL_15;
    }

LABEL_37:
    v6 = v7;
  }

LABEL_39:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}