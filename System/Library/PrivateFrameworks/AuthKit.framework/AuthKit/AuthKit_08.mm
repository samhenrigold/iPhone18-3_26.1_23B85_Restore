uint64_t sub_100213D78()
{
  if (qword_100371BE8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (static RemoteViewServiceController.shouldUseFrontBoardServicesForAuthorization == 1)
  {
    v1 = swift_task_alloc();
    *(v0 + 104) = v1;
    *v1 = v0;
    v1[1] = sub_100213EC8;

    return sub_1002148AC();
  }

  else
  {
    v3 = swift_task_alloc();
    *(v0 + 120) = v3;
    *v3 = v0;
    v3[1] = sub_100213FE4;

    return sub_100215D8C();
  }
}

uint64_t sub_100213EC8(uint64_t a1)
{
  v3 = *v2;
  v3[5] = v2;
  v3[6] = a1;
  v3[7] = v1;
  v3[14] = v1;

  if (v1)
  {
    v4 = sub_10021418C;
  }

  else
  {
    v4 = sub_100214100;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100213FE4(uint64_t a1)
{
  v3 = *v2;
  v3[8] = v2;
  v3[9] = a1;
  v3[10] = v1;
  v3[16] = v1;

  if (v1)
  {
    v4 = sub_1002142BC;
  }

  else
  {
    v4 = sub_100214230;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100214100()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 96);

  v2[2](v2, v1, 0);
  _Block_release(v2);
  swift_unknownObjectRelease();
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10021418C()
{
  v1 = *(v0 + 96);

  v2 = _convertErrorToNSError(_:)();

  (v1)[2](v1, 0, v2);

  _Block_release(v1);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100214230()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 96);

  v2[2](v2, v1, 0);
  _Block_release(v2);
  swift_unknownObjectRelease();
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1002142BC()
{
  v1 = *(v0 + 96);

  v2 = _convertErrorToNSError(_:)();

  (v1)[2](v1, 0, v2);

  _Block_release(v1);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t RemoteViewServiceController.launchViewService()()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1002143EC;

  return sub_100215D8C();
}

uint64_t sub_1002143EC(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t sub_100214660(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_100214708;

  return sub_100215D8C();
}

uint64_t sub_100214708(uint64_t a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 16);
  v7 = *v2;

  v8 = *(v5 + 24);
  if (v3)
  {
    v9 = _convertErrorToNSError(_:)();

    (v8)[2](v8, 0, v9);

    _Block_release(v8);
  }

  else
  {
    v8[2](v8, a1, 0);
    _Block_release(v8);
    swift_unknownObjectRelease();
  }

  v10 = *(v7 + 8);

  return v10();
}

uint64_t sub_1002148AC()
{
  *(v1 + 312) = v0;

  return _swift_task_switch(sub_10021493C, 0, 0);
}

uint64_t sub_10021493C()
{
  v36 = v0;
  if (qword_100371BB0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[40] = sub_1001AD2E4(v1, static Logger.akd);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Launching view service", v4, 2u);
  }

  v5 = [objc_opt_self() serviceWithDefaultShellEndpoint];
  v0[41] = v5;
  if (v5)
  {
    v6 = v5;
    v7 = v0[39];
    v0[36] = 0;
    v8 = *(v7 + OBJC_IVAR___AKRemoteViewServiceController_configuration);
    v0[42] = v8;
    v9 = [v8 remoteBundleID];
    if (!v9)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v9 = String._bridgeToObjectiveC()();
    }

    v10 = [v6 canOpenApplication:v9 reason:v0 + 36];

    if (v10)
    {
      v11 = [v8 hostSceneID];
      if (v11)
      {
        v12 = v11;
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v14 = v13;
      }

      else
      {
        v14 = 0;
      }

      v0[43] = v14;
      v24 = swift_task_alloc();
      v0[44] = v24;
      *v24 = v0;
      v24[1] = sub_100214DFC;

      return sub_100221C30();
    }

    v19 = FBSOpenApplicationErrorCodeToString();
    if (v19)
    {
      v20 = v19;
      v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v23 = v22;
    }

    else
    {
      v21 = 0;
      v23 = 0;
    }

    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v35 = v29;
      *v28 = 136315138;
      v0[34] = v21;
      v0[35] = v23;
      sub_1001AD17C(&qword_100373FA0, &qword_10029F090);
      v30 = String.init<A>(describing:)();
      v32 = sub_10024B050(v30, v31, &v35);

      *(v28 + 4) = v32;
      _os_log_impl(&_mh_execute_header, v26, v27, "Cannot launch view service with error: %s", v28, 0xCu);
      sub_1001AD48C(v29);
    }

    else
    {
    }

    sub_100222380();
    swift_allocError();
    *v33 = 3;
    swift_willThrow();
  }

  else
  {
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "Cannot launch view service with nil launch service", v17, 2u);
    }

    sub_100222380();
    swift_allocError();
    *v18 = 2;
    swift_willThrow();
  }

  v34 = v0[1];

  return v34();
}

uint64_t sub_100214DFC(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 360) = a1;
  *(v3 + 368) = v1;

  if (v1)
  {
    v4 = sub_100215424;
  }

  else
  {

    v4 = sub_100214F4C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100214F4C()
{
  v1 = v0[42];
  type metadata accessor for RemoteViewSession();
  swift_allocObject();
  v2 = v1;
  sub_100222060(v2);
  v4 = v3;
  v0[47] = v3;

  sub_100216EFC(0x8AC7230489E80000, 0);
  v5 = *(v4 + 32);
  if (!v5)
  {
    __break(1u);
  }

  v6 = v0[45];
  v7 = [v5 listenerEndpoint];
  v8 = [objc_allocWithZone(BSMutableSettings) init];
  [v8 setObject:objc_msgSend(v7 forSetting:{"_endpoint"), 1}];
  swift_unknownObjectRelease();
  v9 = [objc_allocWithZone(BSAction) initWithInfo:v8 responder:0];
  v0[48] = v9;

  sub_1001AD17C(&qword_100373FA8, &unk_10029F0A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10029E6F0;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v11;
  sub_1001AD17C(&qword_100373FB0, qword_10029FA60);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_10029EA80;
  *(v12 + 32) = v9;
  *(v12 + 40) = v6;
  *(inited + 72) = sub_1001AD17C(&unk_100373FB8, &unk_10029F0B0);
  *(inited + 48) = v12;
  *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 88) = v13;
  *(inited + 120) = &type metadata for Bool;
  *(inited + 96) = 1;
  v14 = v9;
  v15 = v6;
  v16 = sub_100012190(inited);
  swift_setDeallocating();
  sub_1001AD17C(&unk_100372FD0, &qword_10029F6F0);
  swift_arrayDestroy();
  sub_1001CCD28(v16);

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v18 = [objc_opt_self() optionsWithDictionary:isa];
  v0[49] = v18;

  v19 = v18;
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *v22 = 138412290;
    *(v22 + 4) = v19;
    *v23 = v19;
    v24 = v19;
    _os_log_impl(&_mh_execute_header, v20, v21, "Attempting to open UI view service with options: %@", v22, 0xCu);
    sub_1002255FC(v23, &unk_1003726A0, &unk_10029CFA0);
  }

  v25 = v0[42];

  v26 = [v25 remoteBundleID];
  if (!v26)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = String._bridgeToObjectiveC()();
  }

  v0[50] = v26;
  v27 = v0[41];
  v0[2] = v0;
  v0[7] = v0 + 37;
  v0[3] = sub_1002154C0;
  v28 = swift_continuation_init();
  v0[33] = sub_1001AD17C(&qword_100373FC8, &qword_10029F0C0);
  v0[26] = _NSConcreteStackBlock;
  v0[27] = 1107296256;
  v0[28] = sub_100215CB4;
  v0[29] = &unk_100328FC0;
  v0[30] = v28;
  [v27 openApplication:v26 withOptions:v19 completion:v0 + 26];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_100215424()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002154C0()
{
  v1 = *(*v0 + 48);
  *(*v0 + 408) = v1;
  if (v1)
  {
    v2 = sub_100215B18;
  }

  else
  {
    v2 = sub_1002155FC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1002155FC()
{
  v1 = v0[50];
  v2 = v0[37];
  v0[52] = v2;

  v3 = v2;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    *(v6 + 4) = v3;
    *v7 = v3;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v4, v5, "Opened UI view service with handle: %@", v6, 0xCu);
    sub_1002255FC(v7, &unk_1003726A0, &unk_10029CFA0);
  }

  v9 = v0[47];
  v10 = *(v9 + 48);
  *(v9 + 48) = v3;
  v11 = v3;

  v12 = swift_task_alloc();
  v0[53] = v12;
  *v12 = v0;
  v12[1] = sub_1002157B4;

  return sub_100217E44();
}

uint64_t sub_1002157B4(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 432) = a1;
  *(v3 + 440) = v1;

  if (v1)
  {
    v4 = sub_100215BEC;
  }

  else
  {
    v4 = sub_1002158F4;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1002158F4()
{
  v22 = v0;
  swift_unknownObjectRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 432);
    v4 = *(v0 + 384);
    v5 = *(v0 + 392);
    v20 = *(v0 + 416);
    v6 = *(v0 + 360);
    v19 = *(v0 + 328);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v21 = v8;
    *v7 = 136315138;
    *(v0 + 304) = v3;
    swift_unknownObjectRetain();
    sub_1001AD17C(&qword_100373EC0, &qword_10029ED68);
    v9 = String.init<A>(describing:)();
    v11 = sub_10024B050(v9, v10, &v21);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v1, v2, "Finished waiting for activation of view service: %s", v7, 0xCu);
    sub_1001AD48C(v8);
  }

  else
  {
    v12 = *(v0 + 416);
    v13 = *(v0 + 392);
    v14 = *(v0 + 360);
    v15 = *(v0 + 328);
  }

  v16 = *(v0 + 8);
  v17 = *(v0 + 432);

  return v16(v17);
}

uint64_t sub_100215B18(uint64_t a1)
{
  v2 = v1[50];
  v4 = v1[48];
  v3 = v1[49];
  v5 = v1[45];
  v6 = v1[41];
  swift_willThrow();

  v7 = v1[1];

  return v7();
}

uint64_t sub_100215BEC()
{
  v1 = *(v0 + 416);
  v3 = *(v0 + 384);
  v2 = *(v0 + 392);
  v4 = *(v0 + 360);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_100215CB4(uint64_t a1, void *a2, void *a3)
{
  v5 = sub_1001B1078((a1 + 32), *(a1 + 56));
  v7 = *v5;
  if (a3)
  {
    sub_1001AD17C(&qword_100373250, qword_10029D0B0);
    v8 = swift_allocError();
    *v9 = a3;
    v10 = a3;
    v5 = v7;
    v6 = v8;

    return _swift_continuation_throwingResumeWithError(v5, v6);
  }

  if (!a2)
  {
    __break(1u);
    return _swift_continuation_throwingResumeWithError(v5, v6);
  }

  **(v7[8] + 40) = a2;
  v11 = a2;

  return swift_continuation_throwingResume();
}

uint64_t sub_100215DAC()
{
  if (qword_100371BB0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[25] = sub_1001AD2E4(v1, static Logger.akd);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Launching view service", v4, 2u);
  }

  v5 = v0[24];

  v6 = *(v5 + OBJC_IVAR___AKRemoteViewServiceController_configuration);
  v7 = [v6 remoteClassName];
  v8 = [v6 remoteBundleID];
  v9 = v8;
  if (v7)
  {
    if (!v8)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v9 = String._bridgeToObjectiveC()();
    }

    v10 = [objc_allocWithZone(SBSRemoteAlertDefinition) initWithServiceName:v9 viewControllerClassName:v7];
  }

  else
  {
    if (!v8)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v9 = String._bridgeToObjectiveC()();
    }

    v11 = [objc_opt_self() identityForAngelJobLabel:v9];

    v10 = [objc_allocWithZone(SBSRemoteAlertDefinition) initWithSceneProvidingProcess:v11 configurationIdentifier:0];
    v9 = v11;
  }

  v0[26] = v10;
  type metadata accessor for RemoteViewSession();
  swift_allocObject();
  v12 = v6;
  sub_100222060(v12);
  v0[27] = v13;

  v14 = [v12 hostSceneID];
  if (v14)
  {
    v15 = v14;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  v0[28] = v17;
  v18 = swift_task_alloc();
  v0[29] = v18;
  *v18 = v0;
  v18[1] = sub_100216078;

  return sub_100221C30();
}

uint64_t sub_100216078(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 240) = a1;
  *(v3 + 248) = v1;

  if (v1)
  {
    v4 = sub_1002166B0;
  }

  else
  {
    v4 = sub_1002161AC;
  }

  return _swift_task_switch(v4, 0, 0);
}

void *sub_1002161AC()
{
  result = *(v0[27] + 32);
  if (result)
  {
    v2 = [result listenerEndpoint];
    v3 = [objc_allocWithZone(BSMutableSettings) init];
    [v3 setObject:objc_msgSend(v2 forSetting:{"_endpoint"), 1}];
    swift_unknownObjectRelease();
    v4 = [objc_allocWithZone(BSAction) initWithInfo:v3 responder:0];
    v0[32] = v4;

    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "Attempting to open UI view service", v7, 2u);
    }

    v8 = v0[30];
    v9 = v0[26];

    v10 = [objc_allocWithZone(SBSRemoteAlertConfigurationContext) init];
    v0[33] = v10;
    v11 = [objc_opt_self() newHandleWithDefinition:v9 configurationContext:v10];
    v0[34] = v11;
    v12 = [objc_allocWithZone(SBSRemoteAlertActivationContext) init];
    v0[35] = v12;
    sub_1001AD17C(&qword_100373FB0, qword_10029FA60);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10029EA80;
    *(inited + 32) = v4;
    *(inited + 40) = v8;
    v14 = v4;
    v15 = v8;
    sub_1001DE690(inited);
    swift_setDeallocating();
    swift_arrayDestroy();
    sub_100225568();
    sub_1002255B4(&qword_100373FE8, sub_100225568, &protocol conformance descriptor for NSObject);
    isa = Set._bridgeToObjectiveC()().super.isa;

    [v12 setActions:isa];

    sub_1001AD17C(&unk_100373FF0, &qword_10029E208);
    v17 = swift_initStackObject();
    *(v17 + 16) = xmmword_10029BEB0;
    v0[21] = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v0[22] = v18;
    AnyHashable.init<A>(_:)();
    *(v17 + 96) = &type metadata for Bool;
    *(v17 + 72) = 1;
    sub_10023A660(v17);
    swift_setDeallocating();
    sub_1002255FC(v17 + 32, &qword_100373320, qword_10029E210);
    v19 = Dictionary._bridgeToObjectiveC()().super.isa;

    [v12 setUserInfo:v19];

    sub_100216EFC(0x8AC7230489E80000, 0);
    [v11 activateWithContext:v12];
    v20 = v11;
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *v23 = 138412290;
      *(v23 + 4) = v20;
      *v24 = v20;
      v25 = v20;
      _os_log_impl(&_mh_execute_header, v21, v22, "Opened UI view service with handle: %@", v23, 0xCu);
      sub_1002255FC(v24, &unk_1003726A0, &unk_10029CFA0);
    }

    v26 = v0[27];
    v27 = *(v26 + 56);
    *(v26 + 56) = v20;
    v28 = v20;

    v29 = swift_task_alloc();
    v0[36] = v29;
    *v29 = v0;
    v29[1] = sub_100216718;

    return sub_100217E44();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1002166B0()
{
  v1 = *(v0 + 208);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100216718(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 296) = a1;
  *(v3 + 304) = v1;

  if (v1)
  {
    v4 = sub_100216A2C;
  }

  else
  {
    v4 = sub_10021682C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10021682C()
{
  v24 = v0;
  swift_unknownObjectRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 296);
    v4 = *(v0 + 256);
    v5 = *(v0 + 264);
    v20 = *(v0 + 240);
    v21 = *(v0 + 280);
    v6 = *(v0 + 208);
    v22 = *(v0 + 272);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v23 = v8;
    *v7 = 136315138;
    *(v0 + 184) = v3;
    swift_unknownObjectRetain();
    sub_1001AD17C(&qword_100373EC0, &qword_10029ED68);
    v9 = String.init<A>(describing:)();
    v11 = sub_10024B050(v9, v10, &v23);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v1, v2, "Finished waiting for activation of view service: %s", v7, 0xCu);
    sub_1001AD48C(v8);
  }

  else
  {
    v13 = *(v0 + 272);
    v12 = *(v0 + 280);
    v15 = *(v0 + 256);
    v14 = *(v0 + 264);
    v16 = *(v0 + 240);
  }

  v17 = *(v0 + 8);
  v18 = *(v0 + 296);

  return v17(v18);
}

uint64_t sub_100216A2C()
{
  v2 = *(v0 + 272);
  v1 = *(v0 + 280);
  v3 = *(v0 + 256);
  v4 = *(v0 + 240);
  v5 = *(v0 + 208);

  v6 = *(v0 + 8);

  return v6();
}

id RemoteViewServiceController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id RemoteViewServiceController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RemoteViewServiceController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

Swift::Int sub_100216BF0(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100216C54(uint64_t a1, uint64_t a2)
{
  v4 = sub_100225514();

  return _BridgedNSError.hash(into:)(a1, a2, v4);
}

Swift::Int sub_100216CA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100216D00@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_100222208(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_100216D40(uint64_t a1)
{
  v2 = sub_100225514();

  return _BridgedNSError._domain.getter(a1, v2);
}

uint64_t sub_100216D7C(uint64_t a1)
{
  v2 = sub_100225514();

  return _BridgedNSError._code.getter(a1, v2);
}

uint64_t sub_100216DDC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100225514();

  return _BridgedNSError.init(_bridgedNSError:)(a1, a2, v4);
}

Swift::Int sub_100216E44()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_100216EB8(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

void *sub_100216EFC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1001AD17C(&unk_100372310, &qword_10029CEC0);
  __chkstk_darwin(v6 - 8);
  v8 = &v16 - v7;
  if (qword_100371BB0 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_1001AD2E4(v9, static Logger.akd);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "Starting to wait for activation of view session", v12, 2u);
  }

  result = *(v3 + 32);
  if (result)
  {
    [result activate];
    if (*(v3 + 40))
    {

      Task.cancel()();
    }

    v14 = type metadata accessor for TaskPriority();
    (*(*(v14 - 8) + 56))(v8, 1, 1, v14);
    v15 = swift_allocObject();
    v15[2] = 0;
    v15[3] = 0;
    v15[4] = a1;
    v15[5] = a2;
    v15[6] = v3;

    *(v3 + 40) = sub_100248D54(0, 0, v8, &unk_10029F028, v15);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100217134(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[8] = a5;
  v6[9] = a6;
  v6[7] = a4;
  v7 = type metadata accessor for CancellationError();
  v6[10] = v7;
  v6[11] = *(v7 - 8);
  v6[12] = swift_task_alloc();
  v8 = type metadata accessor for ContinuousClock();
  v6[13] = v8;
  v6[14] = *(v8 - 8);
  v6[15] = swift_task_alloc();

  return _swift_task_switch(sub_100217254, 0, 0);
}

uint64_t sub_100217254()
{
  v14 = v0;
  if (qword_100371BB0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[16] = sub_1001AD2E4(v1, static Logger.akd);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v13 = v5;
    *v4 = 136315138;
    v6 = Duration.description.getter();
    v8 = sub_10024B050(v6, v7, &v13);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "Beginning watchdog sleep for duration: %s", v4, 0xCu);
    sub_1001AD48C(v5);
  }

  static Clock<>.continuous.getter();
  v9 = swift_task_alloc();
  v0[17] = v9;
  *v9 = v0;
  v9[1] = sub_100217444;
  v11 = v0[7];
  v10 = v0[8];

  return sub_1002209F8(v11, v10, 0, 0, 1);
}

uint64_t sub_100217444()
{
  v2 = *(*v1 + 120);
  v3 = *(*v1 + 112);
  v4 = *(*v1 + 104);
  *(*v1 + 144) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_1002176C8;
  }

  else
  {
    v5 = sub_1002175B4;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1002175B4(uint64_t a1)
{
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Watchdog expired and sending expiration failure", v4, 2u);
  }

  v5 = *(v1 + 72);

  v6 = *(v5 + 16);
  *(v1 + 152) = v6;
  sub_100224A40();
  v7 = swift_allocError();
  *(v1 + 160) = v7;
  *v8 = 1;
  *(v1 + 32) = v7;
  *(v1 + 40) = 1;

  return _swift_task_switch(sub_100217974, v6, 0);
}

uint64_t sub_1002176C8()
{
  *(v0 + 48) = *(v0 + 144);
  swift_errorRetain();
  sub_1001AD17C(&qword_100373250, qword_10029D0B0);
  if (swift_dynamicCast())
  {

    v1 = Logger.logObject.getter();
    v2 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v1, v2))
    {
      v3 = swift_slowAlloc();
      *v3 = 0;
      _os_log_impl(&_mh_execute_header, v1, v2, "Watchdog was cancelled", v3, 2u);
    }

    v5 = *(v0 + 88);
    v4 = *(v0 + 96);
    v6 = *(v0 + 80);

    (*(v5 + 8))(v4, v6);

    v7 = *(v0 + 8);

    return v7();
  }

  else
  {

    swift_errorRetain();
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 138412290;
      swift_errorRetain();
      v13 = _swift_stdlib_bridgeErrorToNSError();
      *(v11 + 4) = v13;
      *v12 = v13;
      _os_log_impl(&_mh_execute_header, v9, v10, "Failed to sleep watchdog with error: %@", v11, 0xCu);
      sub_1002255FC(v12, &unk_1003726A0, &unk_10029CFA0);
    }

    v14 = *(v0 + 144);
    v15 = *(v0 + 72);

    v16 = *(v15 + 16);
    *(v0 + 184) = v16;
    *(v0 + 16) = v14;
    *(v0 + 24) = 1;
    swift_errorRetain();

    return _swift_task_switch(sub_100217BA4, v16, 0);
  }
}

uint64_t sub_100217974()
{
  v1 = swift_task_alloc();
  *(v0 + 168) = v1;
  *(v1 + 16) = v0 + 32;
  v2 = swift_task_alloc();
  *(v0 + 176) = v2;
  *v2 = v0;
  v2[1] = sub_100217A34;

  return sub_100210DE4(&unk_10029F048, v1);
}

uint64_t sub_100217A34(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  v6 = *v3;

  if (v2)
  {
  }

  else
  {
    sub_100224C24(a1, v4);

    v8 = *(v6 + 8);

    return v8();
  }
}

uint64_t sub_100217BA4()
{
  v1 = swift_task_alloc();
  *(v0 + 192) = v1;
  *(v1 + 16) = v0 + 16;
  v2 = swift_task_alloc();
  *(v0 + 200) = v2;
  *v2 = v0;
  v2[1] = sub_100217C64;

  return sub_100210DE4(&unk_10029F038, v1);
}

uint64_t sub_100217C64(uint64_t a1, uint64_t a2)
{
  v3 = a2;

  if (v2)
  {
  }

  else
  {
    sub_100224C24(a1, v3);

    return _swift_task_switch(sub_100217DD0, 0, 0);
  }
}

uint64_t sub_100217DD0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100217E64()
{
  if (qword_100371BB0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[10] = sub_1001AD2E4(v1, static Logger.akd);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Waiting for activation of view service", v4, 2u);
  }

  v5 = v0[9];

  v0[11] = *(v5 + 24);
  v6 = swift_task_alloc();
  v0[12] = v6;
  *v6 = v0;
  v6[1] = sub_100217FBC;

  return sub_100211EEC();
}

uint64_t sub_100217FBC(uint64_t a1, char a2)
{
  v3 = *v2;
  *(v3 + 32) = a2;
  *(v3 + 16) = v2;
  *(v3 + 24) = a1;
  *(v3 + 120) = a2;

  return _swift_task_switch(sub_1002180C4, 0, 0);
}

uint64_t sub_1002180C4()
{
  v1 = *(v0 + 120);
  if (v1 == 255)
  {
    v4 = swift_task_alloc();
    *(v0 + 104) = v4;
    *v4 = v0;
    v4[1] = sub_100218248;

    return withCheckedContinuation<A>(isolation:function:_:)();
  }

  else if (v1)
  {
    *(v0 + 64) = *(v0 + 24);
    sub_1001AD17C(&qword_100373250, qword_10029D0B0);
    swift_willThrowTypedImpl();
    v2 = *(v0 + 8);

    return v2();
  }

  else
  {
    v5 = *(v0 + 8);
    v6 = *(v0 + 24);

    return v5(v6);
  }
}

uint64_t sub_100218248()
{

  return _swift_task_switch(sub_100218344, 0, 0);
}

uint64_t sub_100218344()
{
  v1 = swift_task_alloc();
  *(v0 + 112) = v1;
  *v1 = v0;
  v1[1] = sub_1002183D4;

  return sub_100211EEC();
}

uint64_t sub_1002183D4(uint64_t a1, char a2)
{
  v3 = *v2;
  *(v3 + 56) = a2;
  *(v3 + 40) = v2;
  *(v3 + 48) = a1;
  *(v3 + 121) = a2;

  return _swift_task_switch(sub_1002184DC, 0, 0);
}

uint64_t sub_1002184DC(uint64_t a1)
{
  v2 = *(v1 + 121);
  if (v2 == 255)
  {
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Failed to wait & take with receiver", v5, 2u);
    }

    sub_100224A40();
    swift_allocError();
    *v6 = 3;
    swift_willThrow();
    goto LABEL_7;
  }

  if (v2)
  {
    *(v1 + 64) = *(v1 + 48);
    sub_1001AD17C(&qword_100373250, qword_10029D0B0);
    swift_willThrowTypedImpl();
LABEL_7:
    v7 = *(v1 + 8);

    return v7();
  }

  v9 = *(v1 + 8);
  v10 = *(v1 + 48);

  return v9(v10);
}

uint64_t sub_10021865C()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1002186CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[6] = a6;
  v7[7] = a7;
  v7[4] = a4;
  v7[5] = a5;
  return _swift_task_switch(sub_1002186F0, 0, 0);
}

uint64_t sub_1002186F0()
{
  v1 = *(v0 + 40);
  v2 = *(*(v0 + 32) + 16);
  *(v0 + 64) = v2;
  *(v0 + 16) = v1;
  *(v0 + 24) = 0;
  return _swift_task_switch(sub_10021871C, v2, 0);
}

uint64_t sub_10021871C()
{
  v1 = swift_task_alloc();
  *(v0 + 72) = v1;
  *(v1 + 16) = v0 + 16;
  v2 = swift_task_alloc();
  *(v0 + 80) = v2;
  *v2 = v0;
  v2[1] = sub_1002187DC;

  return sub_100210DE4(&unk_10029EFF8, v1);
}

uint64_t sub_1002187DC(uint64_t a1, uint64_t a2)
{
  v3 = a2;

  if (v2)
  {
  }

  else
  {
    sub_100224C24(a1, v3);

    return _swift_task_switch(sub_10021893C, 0, 0);
  }
}

uint64_t sub_10021893C()
{
  (*(v0 + 48))(*(*(v0 + 32) + 64), 0);
  v1 = *(v0 + 8);

  return v1();
}

void sub_100218A10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = _convertErrorToNSError(_:)();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

id sub_100218A80()
{
  v1 = v0;
  if (qword_100371BB0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1001AD2E4(v2, static Logger.akd);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Remote view session has received invalidation message", v5, 2u);
  }

  v6 = [objc_opt_self() currentConnection];
  [v6 invalidate];

  result = *(v1 + 32);
  if (result)
  {

    return [result invalidate];
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_100218BEC()
{
  [*&v0[OBJC_IVAR____TtC3akdP33_9379F446E6714602564EEF4A6C6F7D5717RemoteViewService_connection] invalidate];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RemoteViewService();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100218CEC(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for UUID();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v2[6] = *(v4 + 64);
  v2[7] = swift_task_alloc();

  return _swift_task_switch(sub_100218DB4, 0, 0);
}

uint64_t sub_100218DB4()
{
  v1 = v0[7];
  v2 = v0[4];
  v3 = v0[5];
  (*(v3 + 16))(v1, v0[2], v2);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = swift_allocObject();
  v0[8] = v5;
  (*(v3 + 32))(v5 + v4, v1, v2);
  v6 = swift_allocObject();
  v0[9] = v6;
  *(v6 + 16) = &unk_10029ECC8;
  *(v6 + 24) = v5;

  v7 = swift_task_alloc();
  v0[10] = v7;
  *v7 = v0;
  v7[1] = sub_100218F1C;

  return sub_10021B520(v7, &unk_10029ECD8, v6);
}

uint64_t sub_100218F1C()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_1002190A4;
  }

  else
  {

    v2 = sub_100219040;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100219040()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002190A4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10021911C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a2;
  *(v3 + 144) = a3;
  *(v3 + 152) = v4;
  return _swift_task_switch(sub_100219140, 0, 0);
}

uint64_t sub_100219140()
{
  v1 = v0[19];
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v0[20] = isa;
  v0[2] = v0;
  v0[3] = sub_10021926C;
  v3 = swift_continuation_init();
  v0[17] = sub_1001AD17C(&qword_1003723E8, &qword_10029ED70);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_100219450;
  v0[13] = &unk_1003288E0;
  v0[14] = v3;
  [v1 continueAuthenticationWithSurrogateID:isa completionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10021926C()
{
  v1 = *(*v0 + 48);
  *(*v0 + 168) = v1;
  if (v1)
  {
    v2 = sub_1002193E0;
  }

  else
  {
    v2 = sub_10021937C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10021937C()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002193E0(uint64_t a1)
{
  v2 = *(v1 + 160);
  swift_willThrow();

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_100219450(uint64_t a1, void *a2)
{
  v3 = *sub_1001B1078((a1 + 32), *(a1 + 56));
  if (a2)
  {
    sub_1001AD17C(&qword_100373250, qword_10029D0B0);
    v4 = swift_allocError();
    *v5 = a2;
    v6 = a2;

    return _swift_continuation_throwingResumeWithError(v3, v4);
  }

  else
  {

    return swift_continuation_throwingResume();
  }
}

uint64_t sub_100219684(uint64_t a1, const void *a2, void *a3)
{
  v3[2] = a3;
  v6 = type metadata accessor for UUID();
  v3[3] = v6;
  v3[4] = *(v6 - 8);
  v7 = swift_task_alloc();
  v3[5] = v7;
  v3[6] = _Block_copy(a2);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  a3;
  v8 = swift_task_alloc();
  v3[7] = v8;
  *v8 = v3;
  v8[1] = sub_1002197B0;

  return sub_100218CEC(v7);
}

uint64_t sub_1002197B0()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 40);
  v6 = *(*v1 + 32);
  v7 = *(*v1 + 24);
  v8 = *(*v1 + 16);
  v9 = *v1;

  (*(v6 + 8))(v5, v7);

  v10 = *(v3 + 48);
  if (v2)
  {
    v11 = _convertErrorToNSError(_:)();

    (*(v10 + 16))(v10, v11);
  }

  else
  {
    (*(v10 + 16))(*(v3 + 48), 0);
  }

  _Block_release(*(v4 + 48));

  v12 = *(v9 + 8);

  return v12();
}

uint64_t sub_100219998(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v4[19] = a1;
  v4[20] = a3;
  v5 = *a2;
  v4[21] = a4;
  v4[22] = v5;
  return _swift_task_switch(sub_1002199C0, 0, 0);
}

uint64_t sub_1002199C0()
{
  v2 = v0[21];
  v1 = v0[22];
  v3 = v0[20];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_100219AF0;
  v4 = swift_continuation_init();
  v0[17] = sub_1001AD17C(&qword_100373F50, &qword_10029EFB8);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_100225B48;
  v0[13] = &unk_100328D90;
  v0[14] = v4;
  [v1 presentAuthorizationWithContext:v3 usingHost:v2 completionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_100219AF0()
{
  v1 = *(*v0 + 48);
  *(*v0 + 184) = v1;
  if (v1)
  {
    v2 = sub_100225AB0;
  }

  else
  {
    v2 = sub_100225AC4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100219D94(void *a1, uint64_t a2, void *aBlock, void *a4)
{
  v4[3] = a2;
  v4[4] = a4;
  v4[2] = a1;
  v4[5] = _Block_copy(aBlock);
  v7 = a1;
  swift_unknownObjectRetain();
  v8 = a4;

  return _swift_task_switch(sub_100219E30, 0, 0);
}

uint64_t sub_100219E30()
{
  v1 = v0[3];
  v2 = v0[2];
  v3 = swift_allocObject();
  v0[6] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = swift_allocObject();
  v0[7] = v4;
  *(v4 + 16) = &unk_10029EF28;
  *(v4 + 24) = v3;
  v5 = v2;
  swift_unknownObjectRetain();

  v6 = swift_task_alloc();
  v0[8] = v6;
  *v6 = v0;
  v6[1] = sub_100219F60;

  return sub_10021BF18(&unk_10029EF38, v4);
}

uint64_t sub_100219F60(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v5 = sub_100225B30;
  }

  else
  {

    *(v4 + 80) = a1;
    v5 = sub_100225AA4;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10021A098(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v4[19] = a1;
  v4[20] = a3;
  v5 = *a2;
  v4[21] = a4;
  v4[22] = v5;
  return _swift_task_switch(sub_10021A0C0, 0, 0);
}

uint64_t sub_10021A0C0()
{
  v2 = v0[21];
  v1 = v0[22];
  v3 = v0[20];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_10021A1F0;
  v4 = swift_continuation_init();
  v0[17] = sub_1001AD17C(&qword_100373F20, &qword_10029EEF0);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_100225B4C;
  v0[13] = &unk_100328C00;
  v0[14] = v4;
  [v1 presentPrivateEmailWithContext:v3 usingHost:v2 completionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10021A1F0()
{
  v1 = *(*v0 + 48);
  *(*v0 + 184) = v1;
  if (v1)
  {
    v2 = sub_10021A300;
  }

  else
  {
    v2 = sub_100225AC8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10021A300(uint64_t a1)
{
  swift_willThrow();
  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_10021A36C(uint64_t a1, void *a2, void *a3)
{
  v5 = *sub_1001B1078((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_1001AD17C(&qword_100373250, qword_10029D0B0);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return _swift_continuation_throwingResumeWithError(v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;
    v9 = a2;

    return swift_continuation_throwingResume();
  }
}

uint64_t sub_10021A5D0(void *a1, uint64_t a2, void *aBlock, void *a4)
{
  v4[3] = a2;
  v4[4] = a4;
  v4[2] = a1;
  v4[5] = _Block_copy(aBlock);
  v7 = a1;
  swift_unknownObjectRetain();
  v8 = a4;

  return _swift_task_switch(sub_10021A66C, 0, 0);
}

uint64_t sub_10021A66C()
{
  v1 = v0[3];
  v2 = v0[2];
  v3 = swift_allocObject();
  v0[6] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = swift_allocObject();
  v0[7] = v4;
  *(v4 + 16) = &unk_10029EE60;
  *(v4 + 24) = v3;
  v5 = v2;
  swift_unknownObjectRetain();

  v6 = swift_task_alloc();
  v0[8] = v6;
  *v6 = v0;
  v6[1] = sub_10021A79C;

  return sub_10021C7EC(&unk_10029EE70, v4);
}

uint64_t sub_10021A79C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v5 = sub_10021A974;
  }

  else
  {

    *(v4 + 80) = a1;
    v5 = sub_10021A8D4;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10021A8D4()
{
  v1 = *(v0 + 80);
  v3 = *(v0 + 32);
  v2 = *(v0 + 40);

  swift_unknownObjectRelease();
  (v2)[2](v2, v1, 0);
  _Block_release(v2);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_10021A974()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[2];

  swift_unknownObjectRelease();
  v4 = _convertErrorToNSError(_:)();

  (v1)[2](v1, 0, v4);

  _Block_release(v1);
  v5 = v0[1];

  return v5();
}

uint64_t sub_10021AA40(uint64_t a1, void *a2, uint64_t a3)
{
  v3[19] = a1;
  v3[20] = a3;
  v3[21] = *a2;
  return _swift_task_switch(sub_10021AA68, 0, 0);
}

uint64_t sub_10021AA68()
{
  v2 = v0[20];
  v1 = v0[21];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_10021AB90;
  v3 = swift_continuation_init();
  v0[17] = sub_1001AD17C(&unk_100373240, qword_10029E0E0);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_10021AD2C;
  v0[13] = &unk_100328A70;
  v0[14] = v3;
  [v1 presentShieldWithContext:v2 completionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10021AB90()
{
  v1 = *(*v0 + 48);
  *(*v0 + 176) = v1;
  if (v1)
  {
    v2 = sub_10021ACC0;
  }

  else
  {
    v2 = sub_10021ACA0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10021ACC0(uint64_t a1)
{
  swift_willThrow();
  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_10021AD2C(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *sub_1001B1078((a1 + 32), *(a1 + 56));
  if (a2)
  {
    sub_1001AD17C(&qword_100373250, qword_10029D0B0);
    v5 = swift_allocError();
    *v6 = a2;
    v7 = a2;

    return _swift_continuation_throwingResumeWithError(v4, v5);
  }

  else
  {
    sub_1001AD17C(&qword_1003728B0, &qword_10029D460);
    **(*(v4 + 64) + 40) = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    return swift_continuation_throwingResume();
  }
}

uint64_t sub_10021AFB0(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  v7 = a3;

  return _swift_task_switch(sub_10021B03C, 0, 0);
}

uint64_t sub_10021B03C()
{
  v1 = v0[2];
  v2 = swift_allocObject();
  v0[5] = v2;
  *(v2 + 16) = v1;
  v3 = swift_allocObject();
  v0[6] = v3;
  *(v3 + 16) = &unk_10029ED90;
  *(v3 + 24) = v2;
  v4 = v1;

  v5 = swift_task_alloc();
  v0[7] = v5;
  *v5 = v0;
  v5[1] = sub_10021B160;

  return sub_10021D238(&unk_10029EDA0, v3);
}

uint64_t sub_10021B160(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 64) = v1;

  if (v1)
  {
    v5 = sub_10021B364;
  }

  else
  {

    *(v4 + 72) = a1;
    v5 = sub_10021B298;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10021B298()
{
  v1 = *(v0 + 24);

  sub_1001AD17C(&qword_1003728B0, &qword_10029D460);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v3 = *(v0 + 32);
  (v3)[2](v3, 0, isa);

  _Block_release(v3);
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_10021B364()
{
  v2 = v0[2];
  v1 = v0[3];

  v3 = _convertErrorToNSError(_:)();

  v4 = v0[4];
  (v4)[2](v4, v3, 0);

  _Block_release(v4);
  v5 = v0[1];

  return v5();
}

Swift::Int sub_10021B468()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_10021B4DC(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

uint64_t sub_10021B520(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[26] = a3;
  v4[27] = v3;
  v4[25] = a2;
  sub_1001AD17C(&unk_100372310, &qword_10029CEC0);
  v4[28] = swift_task_alloc();

  return _swift_task_switch(sub_10021B5C0, 0, 0);
}

uint64_t sub_10021B5C0()
{
  v2 = *(v0 + 216);
  v1 = *(v0 + 224);
  v4 = *(v0 + 200);
  v3 = *(v0 + 208);
  sub_1001AD17C(&qword_100373E80, &qword_10029ECF0);
  v5 = swift_allocObject();
  *(v0 + 232) = v5;
  swift_defaultActor_initialize();
  *(v5 + 112) = 0;
  *(v5 + 120) = -1;
  *(v0 + 176) = 0;
  *(v0 + 184) = -1;
  sub_1001AD17C(&qword_100373E88, &qword_10029ECF8);
  swift_allocObject();
  *(v5 + 128) = CurrentValueSubject.init(_:)();
  v6 = *(v5 + 112);
  *(v5 + 112) = 0;
  v7 = *(v5 + 120);
  *(v5 + 120) = -1;
  sub_1002225C4(v6, v7);
  *(v0 + 48) = sub_1002225E8;
  *(v0 + 56) = v5;
  *(v0 + 16) = _NSConcreteStackBlock;
  *(v0 + 24) = 1107296256;
  *(v0 + 32) = sub_10021DDC8;
  *(v0 + 40) = &unk_100328818;
  v8 = _Block_copy((v0 + 16));
  swift_retain_n();

  v9 = [v2 remoteObjectProxyWithErrorHandler:v8];
  _Block_release(v8);
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v1, 1, 1, v10);
  sub_1000087A8(v0 + 64, v0 + 96);
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *(v11 + 24) = 0;
  *(v11 + 32) = v4;
  *(v11 + 40) = v3;
  sub_1000122C0((v0 + 96), (v11 + 48));
  *(v11 + 80) = v5;

  sub_100248D54(0, 0, v1, &unk_10029ED08, v11);

  v12 = swift_task_alloc();
  *(v0 + 240) = v12;
  *v12 = v0;
  v12[1] = sub_10021B86C;

  return sub_100212060();
}

uint64_t sub_10021B86C(uint64_t a1, char a2)
{
  v3 = *v2;
  *(v3 + 144) = a2;
  *(v3 + 128) = v2;
  *(v3 + 136) = a1;
  *(v3 + 185) = a2;

  return _swift_task_switch(sub_10021B974, 0, 0);
}

uint64_t sub_10021B974()
{
  v1 = *(v0 + 185);
  if (v1 == 255)
  {
    v4 = swift_task_alloc();
    *(v0 + 248) = v4;
    *v4 = v0;
    v4[1] = sub_10021BB38;

    return withCheckedContinuation<A>(isolation:function:_:)();
  }

  else
  {
    if (v1)
    {
      v2 = *(v0 + 136);
      *(v0 + 192) = v2;
      sub_100222764(v2, 1);
      sub_1001AD17C(&qword_100373250, qword_10029D0B0);
      swift_willThrowTypedImpl();

      sub_1002225C4(v2, v1);
    }

    else
    {
    }

    sub_1001AD48C((v0 + 64));

    v3 = *(v0 + 8);

    return v3();
  }
}

uint64_t sub_10021BB38()
{

  return _swift_task_switch(sub_10021BC34, 0, 0);
}

uint64_t sub_10021BC34()
{
  v1 = swift_task_alloc();
  *(v0 + 256) = v1;
  *v1 = v0;
  v1[1] = sub_10021BCC4;

  return sub_100212060();
}

uint64_t sub_10021BCC4(uint64_t a1, char a2)
{
  v3 = *v2;
  *(v3 + 168) = a2;
  *(v3 + 152) = v2;
  *(v3 + 160) = a1;
  *(v3 + 186) = a2;

  return _swift_task_switch(sub_10021BDCC, 0, 0);
}

uint64_t sub_10021BDCC()
{
  v1 = *(v0 + 186);
  if (v1 == 255)
  {
    sub_100222710();
    swift_allocError();
    *v3 = 1;
    swift_willThrow();

    goto LABEL_5;
  }

  if (v1)
  {
    v2 = *(v0 + 160);
    *(v0 + 192) = v2;
    sub_100222764(v2, 1);
    sub_1001AD17C(&qword_100373250, qword_10029D0B0);
    swift_willThrowTypedImpl();

    sub_1002225C4(v2, v1);
LABEL_5:
    sub_1001AD48C((v0 + 64));

    v4 = *(v0 + 8);
    goto LABEL_7;
  }

  sub_1001AD48C((v0 + 64));

  v4 = *(v0 + 8);
LABEL_7:

  return v4();
}

uint64_t sub_10021BF18(uint64_t a1, uint64_t a2)
{
  v3[26] = a2;
  v3[27] = v2;
  v3[25] = a1;
  sub_1001AD17C(&unk_100372310, &qword_10029CEC0);
  v3[28] = swift_task_alloc();

  return _swift_task_switch(sub_10021BFB8, 0, 0);
}

uint64_t sub_10021BFB8()
{
  v2 = *(v0 + 216);
  v1 = *(v0 + 224);
  v4 = *(v0 + 200);
  v3 = *(v0 + 208);
  sub_1001AD17C(&qword_100373F28, &qword_10029EF48);
  v5 = swift_allocObject();
  *(v0 + 232) = v5;
  swift_defaultActor_initialize();
  *(v5 + 112) = 0;
  *(v5 + 120) = -1;
  *(v0 + 176) = 0;
  *(v0 + 184) = -1;
  sub_1001AD17C(&qword_100373F30, &qword_10029EF50);
  swift_allocObject();
  *(v5 + 128) = CurrentValueSubject.init(_:)();
  v6 = *(v5 + 112);
  *(v5 + 112) = 0;
  v7 = *(v5 + 120);
  *(v5 + 120) = -1;
  sub_100018150(v6, v7);
  *(v0 + 48) = sub_10022401C;
  *(v0 + 56) = v5;
  *(v0 + 16) = _NSConcreteStackBlock;
  *(v0 + 24) = 1107296256;
  *(v0 + 32) = sub_10021DDC8;
  *(v0 + 40) = &unk_100328CF0;
  v8 = _Block_copy((v0 + 16));
  swift_retain_n();

  v9 = [v2 remoteObjectProxyWithErrorHandler:v8];
  _Block_release(v8);
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v1, 1, 1, v10);
  sub_1000087A8(v0 + 64, v0 + 96);
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *(v11 + 24) = 0;
  *(v11 + 32) = v4;
  *(v11 + 40) = v3;
  sub_1000122C0((v0 + 96), (v11 + 48));
  *(v11 + 80) = v5;

  sub_100248D54(0, 0, v1, &unk_10029EF60, v11);

  v12 = swift_task_alloc();
  *(v0 + 240) = v12;
  *v12 = v0;
  v12[1] = sub_10021C264;

  return sub_1002121D4();
}

uint64_t sub_10021C264(uint64_t a1, char a2)
{
  v3 = *v2;
  *(v3 + 144) = a2;
  *(v3 + 128) = v2;
  *(v3 + 136) = a1;
  *(v3 + 185) = a2;

  return _swift_task_switch(sub_10021C36C, 0, 0);
}

uint64_t sub_10021C36C()
{
  v1 = *(v0 + 185);
  if (v1 == 255)
  {
    v5 = swift_task_alloc();
    *(v0 + 248) = v5;
    *v5 = v0;
    v5[1] = sub_10021C558;

    return withCheckedContinuation<A>(isolation:function:_:)();
  }

  else
  {
    v2 = *(v0 + 136);
    if (v1)
    {
      *(v0 + 192) = v2;
      sub_100018174(v2, 1);
      sub_1001AD17C(&qword_100373250, qword_10029D0B0);
      swift_willThrowTypedImpl();

      sub_100018150(v2, v1);
      sub_1001AD48C((v0 + 64));

      v3 = *(v0 + 8);

      return v3();
    }

    else
    {

      sub_1001AD48C((v0 + 64));

      v6 = *(v0 + 8);

      return v6(v2);
    }
  }
}

uint64_t sub_10021C558()
{

  return _swift_task_switch(sub_10021C654, 0, 0);
}

uint64_t sub_10021C654()
{
  v1 = swift_task_alloc();
  *(v0 + 256) = v1;
  *v1 = v0;
  v1[1] = sub_10021C6E4;

  return sub_1002121D4();
}

uint64_t sub_10021C6E4(uint64_t a1, char a2)
{
  v3 = *v2;
  *(v3 + 168) = a2;
  *(v3 + 152) = v2;
  *(v3 + 160) = a1;
  *(v3 + 186) = a2;

  return _swift_task_switch(sub_100225B74, 0, 0);
}

uint64_t sub_10021C7EC(uint64_t a1, uint64_t a2)
{
  v3[26] = a2;
  v3[27] = v2;
  v3[25] = a1;
  sub_1001AD17C(&unk_100372310, &qword_10029CEC0);
  v3[28] = swift_task_alloc();

  return _swift_task_switch(sub_10021C88C, 0, 0);
}

uint64_t sub_10021C88C()
{
  v2 = *(v0 + 216);
  v1 = *(v0 + 224);
  v4 = *(v0 + 200);
  v3 = *(v0 + 208);
  sub_1001AD17C(&qword_100373EF8, &qword_10029EE80);
  v5 = swift_allocObject();
  *(v0 + 232) = v5;
  swift_defaultActor_initialize();
  *(v5 + 112) = 0;
  *(v5 + 120) = -1;
  *(v0 + 176) = 0;
  *(v0 + 184) = -1;
  sub_1001AD17C(&qword_100373F00, &qword_10029EE88);
  swift_allocObject();
  *(v5 + 128) = CurrentValueSubject.init(_:)();
  v6 = *(v5 + 112);
  *(v5 + 112) = 0;
  v7 = *(v5 + 120);
  *(v5 + 120) = -1;
  sub_100018150(v6, v7);
  *(v0 + 48) = sub_10022379C;
  *(v0 + 56) = v5;
  *(v0 + 16) = _NSConcreteStackBlock;
  *(v0 + 24) = 1107296256;
  *(v0 + 32) = sub_10021DDC8;
  *(v0 + 40) = &unk_100328B60;
  v8 = _Block_copy((v0 + 16));
  swift_retain_n();

  v9 = [v2 remoteObjectProxyWithErrorHandler:v8];
  _Block_release(v8);
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v1, 1, 1, v10);
  sub_1000087A8(v0 + 64, v0 + 96);
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *(v11 + 24) = 0;
  *(v11 + 32) = v4;
  *(v11 + 40) = v3;
  sub_1000122C0((v0 + 96), (v11 + 48));
  *(v11 + 80) = v5;

  sub_100248D54(0, 0, v1, &unk_10029EE98, v11);

  v12 = swift_task_alloc();
  *(v0 + 240) = v12;
  *v12 = v0;
  v12[1] = sub_10021CB38;

  return sub_10021226C();
}

uint64_t sub_10021CB38(uint64_t a1, char a2)
{
  v3 = *v2;
  *(v3 + 144) = a2;
  *(v3 + 128) = v2;
  *(v3 + 136) = a1;
  *(v3 + 185) = a2;

  return _swift_task_switch(sub_10021CC40, 0, 0);
}

uint64_t sub_10021CC40()
{
  v1 = *(v0 + 185);
  if (v1 == 255)
  {
    v5 = swift_task_alloc();
    *(v0 + 248) = v5;
    *v5 = v0;
    v5[1] = sub_10021CE2C;

    return withCheckedContinuation<A>(isolation:function:_:)();
  }

  else
  {
    v2 = *(v0 + 136);
    if (v1)
    {
      *(v0 + 192) = v2;
      sub_100018174(v2, 1);
      sub_1001AD17C(&qword_100373250, qword_10029D0B0);
      swift_willThrowTypedImpl();

      sub_100018150(v2, v1);
      sub_1001AD48C((v0 + 64));

      v3 = *(v0 + 8);

      return v3();
    }

    else
    {

      sub_1001AD48C((v0 + 64));

      v6 = *(v0 + 8);

      return v6(v2);
    }
  }
}

uint64_t sub_10021CE2C()
{

  return _swift_task_switch(sub_10021CF28, 0, 0);
}

uint64_t sub_10021CF28()
{
  v1 = swift_task_alloc();
  *(v0 + 256) = v1;
  *v1 = v0;
  v1[1] = sub_10021CFB8;

  return sub_10021226C();
}

uint64_t sub_10021CFB8(uint64_t a1, char a2)
{
  v3 = *v2;
  *(v3 + 168) = a2;
  *(v3 + 152) = v2;
  *(v3 + 160) = a1;
  *(v3 + 186) = a2;

  return _swift_task_switch(sub_10021D0C0, 0, 0);
}

uint64_t sub_10021D0C0()
{
  v1 = *(v0 + 186);
  if (v1 == 255)
  {
    sub_100222710();
    swift_allocError();
    *v3 = 1;
    swift_willThrow();

    goto LABEL_5;
  }

  v2 = *(v0 + 160);
  if (v1)
  {
    *(v0 + 192) = v2;
    sub_100018174(v2, 1);
    sub_1001AD17C(&qword_100373250, qword_10029D0B0);
    swift_willThrowTypedImpl();

    sub_100018150(v2, v1);
LABEL_5:
    sub_1001AD48C((v0 + 64));

    v4 = *(v0 + 8);

    return v4();
  }

  sub_1001AD48C((v0 + 64));

  v6 = *(v0 + 8);

  return v6(v2);
}

uint64_t sub_10021D238(uint64_t a1, uint64_t a2)
{
  v3[26] = a2;
  v3[27] = v2;
  v3[25] = a1;
  sub_1001AD17C(&unk_100372310, &qword_10029CEC0);
  v3[28] = swift_task_alloc();

  return _swift_task_switch(sub_10021D2D8, 0, 0);
}

uint64_t sub_10021D2D8()
{
  v2 = *(v0 + 216);
  v1 = *(v0 + 224);
  v4 = *(v0 + 200);
  v3 = *(v0 + 208);
  sub_1001AD17C(&qword_100373EC8, &qword_10029EDB8);
  v5 = swift_allocObject();
  *(v0 + 232) = v5;
  swift_defaultActor_initialize();
  *(v5 + 112) = 0;
  *(v5 + 120) = -1;
  *(v0 + 176) = 0;
  *(v0 + 184) = -1;
  sub_1001AD17C(&qword_100373ED0, &qword_10029EDC0);
  swift_allocObject();
  *(v5 + 128) = CurrentValueSubject.init(_:)();
  v6 = *(v5 + 112);
  *(v5 + 112) = 0;
  v7 = *(v5 + 120);
  *(v5 + 120) = -1;
  sub_100222E9C(v6, v7);
  *(v0 + 48) = sub_100222EDC;
  *(v0 + 56) = v5;
  *(v0 + 16) = _NSConcreteStackBlock;
  *(v0 + 24) = 1107296256;
  *(v0 + 32) = sub_10021DDC8;
  *(v0 + 40) = &unk_1003289D0;
  v8 = _Block_copy((v0 + 16));
  swift_retain_n();

  v9 = [v2 remoteObjectProxyWithErrorHandler:v8];
  _Block_release(v8);
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v1, 1, 1, v10);
  sub_1000087A8(v0 + 64, v0 + 96);
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *(v11 + 24) = 0;
  *(v11 + 32) = v4;
  *(v11 + 40) = v3;
  sub_1000122C0((v0 + 96), (v11 + 48));
  *(v11 + 80) = v5;

  sub_100248D54(0, 0, v1, &unk_10029EDD0, v11);

  v12 = swift_task_alloc();
  *(v0 + 240) = v12;
  *v12 = v0;
  v12[1] = sub_10021D584;

  return sub_1002123E0();
}

uint64_t sub_10021D584(uint64_t a1, char a2)
{
  v3 = *v2;
  *(v3 + 144) = a2;
  *(v3 + 128) = v2;
  *(v3 + 136) = a1;
  *(v3 + 185) = a2;

  return _swift_task_switch(sub_10021D68C, 0, 0);
}

uint64_t sub_10021D68C()
{
  v1 = *(v0 + 185);
  if (v1 == 255)
  {
    v5 = swift_task_alloc();
    *(v0 + 248) = v5;
    *v5 = v0;
    v5[1] = sub_10021D88C;

    return withCheckedContinuation<A>(isolation:function:_:)();
  }

  else
  {
    v2 = *(v0 + 136);
    if (v1)
    {
      *(v0 + 192) = v2;
      sub_100224CB4(v2, 1, &_swift_bridgeObjectRetain);
      sub_1001AD17C(&qword_100373250, qword_10029D0B0);
      swift_willThrowTypedImpl();

      sub_100222E9C(v2, v1);
      sub_1001AD48C((v0 + 64));

      v3 = *(v0 + 8);

      return v3();
    }

    else
    {

      sub_1001AD48C((v0 + 64));

      v6 = *(v0 + 8);

      return v6(v2);
    }
  }
}

uint64_t sub_10021D88C()
{

  return _swift_task_switch(sub_10021D988, 0, 0);
}

uint64_t sub_10021D988()
{
  v1 = swift_task_alloc();
  *(v0 + 256) = v1;
  *v1 = v0;
  v1[1] = sub_10021DA18;

  return sub_1002123E0();
}

uint64_t sub_10021DA18(uint64_t a1, char a2)
{
  v3 = *v2;
  *(v3 + 168) = a2;
  *(v3 + 152) = v2;
  *(v3 + 160) = a1;
  *(v3 + 186) = a2;

  return _swift_task_switch(sub_10021DB20, 0, 0);
}

uint64_t sub_10021DB20()
{
  v1 = *(v0 + 186);
  if (v1 == 255)
  {
    sub_100222710();
    swift_allocError();
    *v3 = 1;
    swift_willThrow();

    goto LABEL_5;
  }

  v2 = *(v0 + 160);
  if (v1)
  {
    *(v0 + 192) = v2;
    sub_100224CB4(v2, 1, &_swift_bridgeObjectRetain);
    sub_1001AD17C(&qword_100373250, qword_10029D0B0);
    swift_willThrowTypedImpl();

    sub_100222E9C(v2, v1);
LABEL_5:
    sub_1001AD48C((v0 + 64));

    v4 = *(v0 + 8);

    return v4();
  }

  sub_1001AD48C((v0 + 64));

  v6 = *(v0 + 8);

  return v6(v2);
}

uint64_t sub_10021DCAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, void, char *, uint64_t, void *))
{
  v9 = sub_1001AD17C(&unk_100372310, &qword_10029CEC0);
  __chkstk_darwin(v9 - 8);
  v11 = &v15 - v10;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = a2;
  v13[5] = a1;

  swift_errorRetain();
  a5(0, 0, v11, a4, v13);
}

void sub_10021DDC8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_10021DE30(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 48) = a7;
  v10 = (a4 + *a4);
  v8 = swift_task_alloc();
  *(v7 + 56) = v8;
  *v8 = v7;
  v8[1] = sub_10021DF2C;

  return v10();
}

uint64_t sub_10021DF2C()
{
  v2 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v3 = sub_10021E284;
    v4 = 0;
  }

  else
  {
    v4 = *(v2 + 48);
    *(v2 + 32) = 0;
    *(v2 + 40) = 0;
    v3 = sub_10021E050;
  }

  return _swift_task_switch(v3, v4, 0);
}

uint64_t sub_10021E050()
{
  v1 = swift_task_alloc();
  *(v0 + 72) = v1;
  *(v1 + 16) = v0 + 32;
  v2 = swift_task_alloc();
  *(v0 + 80) = v2;
  *v2 = v0;
  v2[1] = sub_10021E110;

  return sub_10021118C(&unk_10029ED48, v1);
}

uint64_t sub_10021E110(uint64_t a1, uint64_t a2)
{
  v3 = a2;

  if (v2)
  {
  }

  else
  {
    sub_1002225C4(a1, v3);

    return _swift_task_switch(sub_10021E270, 0, 0);
  }
}

uint64_t sub_10021E284()
{
  v1 = *(v0 + 48);
  *(v0 + 16) = *(v0 + 64);
  *(v0 + 24) = 1;
  swift_errorRetain();

  return _swift_task_switch(sub_10021E2FC, v1, 0);
}

uint64_t sub_10021E2FC()
{
  v1 = swift_task_alloc();
  *(v0 + 88) = v1;
  *(v1 + 16) = v0 + 16;
  v2 = swift_task_alloc();
  *(v0 + 96) = v2;
  *v2 = v0;
  v2[1] = sub_10021E3BC;

  return sub_10021118C(&unk_10029ED40, v1);
}

uint64_t sub_10021E3BC(uint64_t a1, uint64_t a2)
{
  v3 = a2;

  if (v2)
  {
  }

  else
  {
    sub_1002225C4(a1, v3);

    return _swift_task_switch(sub_10021E528, 0, 0);
  }
}

uint64_t sub_10021E528()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10021E588(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 56) = a7;
  v11 = (a4 + *a4);
  v9 = swift_task_alloc();
  *(v7 + 64) = v9;
  *v9 = v7;
  v9[1] = sub_10021E68C;

  return v11(v7 + 48, a6);
}

uint64_t sub_10021E68C()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_10021EA3C;
  }

  else
  {
    v2 = sub_10021E7A0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10021E7A0()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  *(v0 + 80) = v1;
  *(v0 + 32) = v1;
  *(v0 + 40) = 0;
  v3 = v1;

  return _swift_task_switch(sub_10021E818, v2, 0);
}

uint64_t sub_10021E818()
{
  v1 = swift_task_alloc();
  *(v0 + 88) = v1;
  *(v1 + 16) = v0 + 32;
  v2 = swift_task_alloc();
  *(v0 + 96) = v2;
  *v2 = v0;
  v2[1] = sub_10021E8D8;

  return sub_100211534(&unk_10029EF90, v1);
}

uint64_t sub_10021E8D8(void *a1, char a2)
{
  v6 = *v3;

  if (v2)
  {
  }

  else
  {
    v8 = *(v6 + 80);
    sub_100018150(a1, a2);

    return _swift_task_switch(sub_100225A0C, 0, 0);
  }
}

uint64_t sub_10021EA3C()
{
  v1 = *(v0 + 56);
  *(v0 + 16) = *(v0 + 72);
  *(v0 + 24) = 1;
  swift_errorRetain();

  return _swift_task_switch(sub_10021EAB4, v1, 0);
}

uint64_t sub_10021EAB4()
{
  v1 = swift_task_alloc();
  *(v0 + 104) = v1;
  *(v1 + 16) = v0 + 16;
  v2 = swift_task_alloc();
  *(v0 + 112) = v2;
  *v2 = v0;
  v2[1] = sub_10021EB74;

  return sub_100211534(&unk_10029EF88, v1);
}

uint64_t sub_10021EB74(void *a1, char a2)
{

  if (v2)
  {
  }

  else
  {
    sub_100018150(a1, a2);

    return _swift_task_switch(sub_100225B78, 0, 0);
  }
}

uint64_t sub_10021ECE0(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 56) = a7;
  v11 = (a4 + *a4);
  v9 = swift_task_alloc();
  *(v7 + 64) = v9;
  *v9 = v7;
  v9[1] = sub_10021EDE4;

  return v11(v7 + 48, a6);
}

uint64_t sub_10021EDE4()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_10021F1F4;
  }

  else
  {
    v2 = sub_10021EEF8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10021EEF8()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  *(v0 + 80) = v1;
  *(v0 + 32) = v1;
  *(v0 + 40) = 0;
  v3 = v1;

  return _swift_task_switch(sub_10021EF70, v2, 0);
}

uint64_t sub_10021EF70()
{
  v1 = swift_task_alloc();
  *(v0 + 88) = v1;
  *(v1 + 16) = v0 + 32;
  v2 = swift_task_alloc();
  *(v0 + 96) = v2;
  *v2 = v0;
  v2[1] = sub_10021F030;

  return sub_10021179C(&unk_10029EEC8, v1);
}

uint64_t sub_10021F030(void *a1, char a2)
{
  v6 = *v3;

  if (v2)
  {
  }

  else
  {
    v8 = *(v6 + 80);
    sub_100018150(a1, a2);

    return _swift_task_switch(sub_10021F194, 0, 0);
  }
}

uint64_t sub_10021F194()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10021F1F4()
{
  v1 = *(v0 + 56);
  *(v0 + 16) = *(v0 + 72);
  *(v0 + 24) = 1;
  swift_errorRetain();

  return _swift_task_switch(sub_10021F26C, v1, 0);
}

uint64_t sub_10021F26C()
{
  v1 = swift_task_alloc();
  *(v0 + 104) = v1;
  *(v1 + 16) = v0 + 16;
  v2 = swift_task_alloc();
  *(v0 + 112) = v2;
  *v2 = v0;
  v2[1] = sub_10021F32C;

  return sub_10021179C(&unk_10029EEC0, v1);
}

uint64_t sub_10021F32C(void *a1, char a2)
{

  if (v2)
  {
  }

  else
  {
    sub_100018150(a1, a2);

    return _swift_task_switch(sub_100225B7C, 0, 0);
  }
}

uint64_t sub_10021F498(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 56) = a7;
  v11 = (a4 + *a4);
  v9 = swift_task_alloc();
  *(v7 + 64) = v9;
  *v9 = v7;
  v9[1] = sub_10021F59C;

  return v11(v7 + 48, a6);
}

uint64_t sub_10021F59C()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_10021F9B0;
  }

  else
  {
    v2 = sub_10021F6B0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10021F6B0()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  *(v0 + 80) = v1;
  *(v0 + 32) = v1;
  *(v0 + 40) = 0;

  return _swift_task_switch(sub_10021F728, v2, 0);
}

uint64_t sub_10021F728()
{
  v1 = swift_task_alloc();
  *(v0 + 88) = v1;
  *(v1 + 16) = v0 + 32;
  v2 = swift_task_alloc();
  *(v0 + 96) = v2;
  *v2 = v0;
  v2[1] = sub_10021F7E8;

  return sub_100211B44(&unk_10029EE00, v1);
}

uint64_t sub_10021F7E8(uint64_t a1, uint64_t a2)
{
  v3 = a2;

  if (v2)
  {
  }

  else
  {
    sub_100222E9C(a1, v3);

    return _swift_task_switch(sub_10021F950, 0, 0);
  }
}

uint64_t sub_10021F950()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10021F9B0()
{
  v1 = *(v0 + 56);
  *(v0 + 16) = *(v0 + 72);
  *(v0 + 24) = 1;
  swift_errorRetain();

  return _swift_task_switch(sub_10021FA28, v1, 0);
}

uint64_t sub_10021FA28()
{
  v1 = swift_task_alloc();
  *(v0 + 104) = v1;
  *(v1 + 16) = v0 + 16;
  v2 = swift_task_alloc();
  *(v0 + 112) = v2;
  *v2 = v0;
  v2[1] = sub_10021FAE8;

  return sub_100211B44(&unk_10029EDF8, v1);
}

uint64_t sub_10021FAE8(uint64_t a1, uint64_t a2)
{
  v3 = a2;

  if (v2)
  {
  }

  else
  {
    sub_100222E9C(a1, v3);

    return _swift_task_switch(sub_10021FC54, 0, 0);
  }
}

uint64_t sub_10021FC54()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10021FCB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[10] = a3;
  v4[11] = a4;
  v4[8] = a1;
  v4[9] = a2;
  return _swift_task_switch(sub_10021FCD8, 0, 0);
}

uint64_t sub_10021FCD8()
{
  sub_1000087A8(v0[9], (v0 + 2));
  sub_1001AD17C(&qword_100373EC0, &qword_10029ED68);
  if (swift_dynamicCast() && (v1 = v0[7], (v0[12] = v1) != 0))
  {
    v2 = v0[10];
    v0[6] = v1;
    v8 = (v2 + *v2);
    v3 = swift_task_alloc();
    v0[13] = v3;
    *v3 = v0;
    v3[1] = sub_10021FE8C;
    v4 = v0[8];

    return (v8)(v4, v0 + 6);
  }

  else
  {
    sub_100222710();
    swift_allocError();
    *v6 = 0;
    swift_willThrow();
    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_10021FE8C()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_100220004;
  }

  else
  {
    v2 = sub_10021FFA0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10021FFA0()
{
  swift_unknownObjectRelease();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100220004()
{
  swift_unknownObjectRelease();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100220068(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[10] = a2;
  v3[11] = a3;
  v3[9] = a1;
  return _swift_task_switch(sub_10022008C, 0, 0);
}

uint64_t sub_10022008C()
{
  sub_1000087A8(v0[9], (v0 + 2));
  sub_1001AD17C(&qword_100373EC0, &qword_10029ED68);
  if (swift_dynamicCast() && (v1 = v0[8], (v0[12] = v1) != 0))
  {
    v2 = v0[10];
    v0[7] = v1;
    v7 = (v2 + *v2);
    v3 = swift_task_alloc();
    v0[13] = v3;
    *v3 = v0;
    v3[1] = sub_100220240;

    return (v7)(v0 + 6, v0 + 7);
  }

  else
  {
    sub_100222710();
    swift_allocError();
    *v5 = 0;
    swift_willThrow();
    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_100220240()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_100225A80;
  }

  else
  {
    v2 = sub_100225AA8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100220354(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[10] = a2;
  v3[11] = a3;
  v3[9] = a1;
  return _swift_task_switch(sub_100220378, 0, 0);
}

uint64_t sub_100220378()
{
  sub_1000087A8(v0[9], (v0 + 2));
  sub_1001AD17C(&qword_100373EC0, &qword_10029ED68);
  if (swift_dynamicCast() && (v1 = v0[8], (v0[12] = v1) != 0))
  {
    v2 = v0[10];
    v0[7] = v1;
    v7 = (v2 + *v2);
    v3 = swift_task_alloc();
    v0[13] = v3;
    *v3 = v0;
    v3[1] = sub_10022052C;

    return (v7)(v0 + 6, v0 + 7);
  }

  else
  {
    sub_100222710();
    swift_allocError();
    *v5 = 0;
    swift_willThrow();
    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_10022052C()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_100225A84;
  }

  else
  {
    v2 = sub_100225AAC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100220640(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[10] = a2;
  v3[11] = a3;
  v3[9] = a1;
  return _swift_task_switch(sub_100220664, 0, 0);
}

uint64_t sub_100220664()
{
  sub_1000087A8(v0[9], (v0 + 2));
  sub_1001AD17C(&qword_100373EC0, &qword_10029ED68);
  if (swift_dynamicCast() && (v1 = v0[8], (v0[12] = v1) != 0))
  {
    v2 = v0[10];
    v0[7] = v1;
    v7 = (v2 + *v2);
    v3 = swift_task_alloc();
    v0[13] = v3;
    *v3 = v0;
    v3[1] = sub_100220818;

    return (v7)(v0 + 6, v0 + 7);
  }

  else
  {
    sub_100222710();
    swift_allocError();
    *v5 = 0;
    swift_willThrow();
    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_100220818()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_100220994;
  }

  else
  {
    v2 = sub_10022092C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10022092C()
{
  swift_unknownObjectRelease();
  v1 = *(v0 + 48);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_100220994()
{
  swift_unknownObjectRelease();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002209F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = type metadata accessor for ContinuousClock.Instant();
  *(v6 + 64) = v12;
  *(v6 + 72) = *(v12 - 8);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return _swift_task_switch(sub_100220AF8, 0, 0);
}

uint64_t sub_100220AF8()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = type metadata accessor for ContinuousClock();
  v5 = sub_1002255B4(&qword_100373F88, &type metadata accessor for ContinuousClock, &protocol conformance descriptor for ContinuousClock);
  dispatch thunk of Clock.now.getter();
  sub_1002255B4(&qword_100373F90, &type metadata accessor for ContinuousClock.Instant, &protocol conformance descriptor for ContinuousClock.Instant);
  dispatch thunk of InstantProtocol.advanced(by:)();
  v6 = *(v3 + 8);
  v0[12] = v6;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_100220C88;
  v8 = v0[11];

  return dispatch thunk of Clock.sleep(until:tolerance:)(v8, v0 + 2, v4, v5);
}

uint64_t sub_100220C88()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 64);
  v5 = *v1;
  *(v5 + 120) = v0;

  v2(v3, v4);
  if (v0)
  {

    return _swift_task_switch(sub_100220E44, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_100220E44()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100220EB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  *(v3 + 32) = *a3;
  *(v3 + 40) = *(a3 + 8);
  return _swift_task_switch(sub_100220EE0, 0, 0);
}

uint64_t sub_100220EE0()
{
  v1 = *(v0 + 40);
  v3 = *(v0 + 24);
  v2 = *(v0 + 32);
  v4 = *(v0 + 16);
  v5 = *v3;
  v6 = *(v3 + 8);
  *v3 = v2;
  *(v3 + 8) = v1;
  *v4 = v5;
  *(v4 + 8) = v6;
  sub_100224CB4(v2, v1, &_swift_unknownObjectRetain);
  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_100220F78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  *(v3 + 32) = *a3;
  *(v3 + 40) = *(a3 + 8);
  return _swift_task_switch(sub_100220FA8, 0, 0);
}

uint64_t sub_100220FA8()
{
  v1 = *(v0 + 40);
  v3 = *(v0 + 24);
  v2 = *(v0 + 32);
  v4 = *(v0 + 16);
  v5 = *v3;
  v6 = *(v3 + 8);
  *v3 = v2;
  *(v3 + 8) = v1;
  *v4 = v5;
  *(v4 + 8) = v6;
  sub_100222764(v2, v1);
  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_10022102C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[4] = a1;
  return _swift_task_switch(sub_100221050, 0, 0);
}

uint64_t sub_100221050()
{
  v1 = *(v0 + 40);
  *(v0 + 16) = *(v0 + 48);
  *(v0 + 24) = 1;
  swift_errorRetain();

  return _swift_task_switch(sub_1002210C4, v1, 0);
}

uint64_t sub_1002210C4()
{
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *(v1 + 16) = v0 + 16;
  v2 = swift_task_alloc();
  *(v0 + 64) = v2;
  *v2 = v0;
  v2[1] = sub_100225A88;

  return sub_10021118C(&unk_10029ED60, v1);
}

uint64_t sub_100221184(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  *v8 = v4;
  v8[1] = sub_100225A78;

  return sub_100220068(a2, a3, a4);
}

uint64_t sub_100221234(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  *(v3 + 32) = *a3;
  *(v3 + 40) = *(a3 + 8);
  return _swift_task_switch(sub_100225B80, 0, 0);
}

uint64_t sub_100221264(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[4] = a1;
  return _swift_task_switch(sub_100221288, 0, 0);
}

uint64_t sub_100221288()
{
  v1 = *(v0 + 40);
  *(v0 + 16) = *(v0 + 48);
  *(v0 + 24) = 1;
  swift_errorRetain();

  return _swift_task_switch(sub_1002212FC, v1, 0);
}

uint64_t sub_1002212FC()
{
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *(v1 + 16) = v0 + 16;
  v2 = swift_task_alloc();
  *(v0 + 64) = v2;
  *v2 = v0;
  v2[1] = sub_100225A8C;

  return sub_100211534(&unk_10029EFA8, v1);
}

uint64_t sub_1002213BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  *v8 = v4;
  v8[1] = sub_100225A7C;

  return sub_100220354(a2, a3, a4);
}

uint64_t sub_10022146C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  *(v3 + 32) = *a3;
  *(v3 + 40) = *(a3 + 8);
  return _swift_task_switch(sub_10022149C, 0, 0);
}

uint64_t sub_10022149C()
{
  v1 = *(v0 + 40);
  v3 = *(v0 + 24);
  v2 = *(v0 + 32);
  v4 = *(v0 + 16);
  v5 = *v3;
  v6 = *(v3 + 8);
  *v3 = v2;
  *(v3 + 8) = v1;
  *v4 = v5;
  *(v4 + 8) = v6;
  sub_100018174(v2, v1);
  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_100221520(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[4] = a1;
  return _swift_task_switch(sub_100221544, 0, 0);
}

uint64_t sub_100221544()
{
  v1 = *(v0 + 40);
  *(v0 + 16) = *(v0 + 48);
  *(v0 + 24) = 1;
  swift_errorRetain();

  return _swift_task_switch(sub_1002215B8, v1, 0);
}

uint64_t sub_1002215B8()
{
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *(v1 + 16) = v0 + 16;
  v2 = swift_task_alloc();
  *(v0 + 64) = v2;
  *v2 = v0;
  v2[1] = sub_100225A90;

  return sub_10021179C(&unk_10029EEE0, v1);
}

uint64_t sub_100221678(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  *v8 = v4;
  v8[1] = sub_100221728;

  return sub_100220640(a2, a3, a4);
}

uint64_t sub_100221728(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (!v1)
  {
    **(v4 + 16) = a1;
  }

  v6 = *(v5 + 8);

  return v6();
}

uint64_t sub_100221838(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (*(a2 + 16))
  {

    AnyCancellable.cancel()();
  }

  sub_1001AD17C(&qword_100373EA0, &qword_10029ED20);
  return CheckedContinuation.resume(returning:)();
}

uint64_t sub_1002218B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  *(v3 + 32) = *a3;
  *(v3 + 40) = *(a3 + 8);
  return _swift_task_switch(sub_1002218E4, 0, 0);
}

uint64_t sub_1002218E4()
{
  v1 = *(v0 + 40);
  v3 = *(v0 + 24);
  v2 = *(v0 + 32);
  v4 = *(v0 + 16);
  v5 = *v3;
  v6 = *(v3 + 8);
  *v3 = v2;
  *(v3 + 8) = v1;
  *v4 = v5;
  *(v4 + 8) = v6;
  sub_100224CB4(v2, v1, &_swift_bridgeObjectRetain);
  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_10022197C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[4] = a1;
  return _swift_task_switch(sub_1002219A0, 0, 0);
}

uint64_t sub_1002219A0()
{
  v1 = *(v0 + 40);
  *(v0 + 16) = *(v0 + 48);
  *(v0 + 24) = 1;
  swift_errorRetain();

  return _swift_task_switch(sub_100221A14, v1, 0);
}

uint64_t sub_100221A14()
{
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *(v1 + 16) = v0 + 16;
  v2 = swift_task_alloc();
  *(v0 + 64) = v2;
  *v2 = v0;
  v2[1] = sub_100221AD4;

  return sub_100211B44(&unk_10029EE18, v1);
}

uint64_t sub_100221AD4(uint64_t a1, char a2)
{
  v6 = *v3;
  v7 = *v3;

  if (v2)
  {
  }

  else
  {
    v9 = *(v6 + 32);

    *v9 = a1;
    *(v9 + 8) = a2;
    v10 = *(v7 + 8);

    return v10();
  }
}

uint64_t sub_100221C50()
{
  v1 = [*(v0[19] + OBJC_IVAR___AKRemoteViewServiceController_configuration) remoteBundleID];
  if (!v1)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v1 = String._bridgeToObjectiveC()();
  }

  v2 = [objc_allocWithZone(NSUserActivity) initWithActivityType:v1];
  v0[20] = v2;

  v3 = objc_opt_self();
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_100221DF0;
  v4 = swift_continuation_init();
  v0[17] = sub_1001AD17C(&qword_100373FD8, &qword_10029F0D0);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_100225B44;
  v0[13] = &unk_100328FE8;
  v0[14] = v4;
  [v3 buildWithUserActivity:v2 completion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_100221DF0()
{
  v1 = *(*v0 + 48);
  *(*v0 + 168) = v1;
  if (v1)
  {
    v2 = sub_100221FEC;
  }

  else
  {
    v2 = sub_100221F00;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100221F00()
{
  v1 = *(v0 + 144);

  v2 = *(v0 + 160);
  if (v1)
  {

    v3 = *(v0 + 8);

    return v3(v1);
  }

  else
  {
    sub_100222380();
    swift_allocError();
    *v5 = 5;
    swift_willThrow();

    v6 = *(v0 + 8);

    return v6();
  }
}

uint64_t sub_100221FEC(uint64_t a1)
{
  v2 = *(v1 + 160);
  swift_willThrow();

  v3 = *(v1 + 8);

  return v3();
}

void sub_100222060(void *a1)
{
  v2 = v1;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0u;
  *(v2 + 64) = a1;
  sub_1001AD17C(&qword_100373FD0, &qword_10029F0C8);
  v4 = swift_allocObject();
  v5 = a1;
  swift_defaultActor_initialize();
  *(v4 + 112) = 0;
  *(v4 + 120) = -1;
  LOBYTE(v15) = -1;
  sub_1001AD17C(&qword_100373F68, &qword_10029F018);
  swift_allocObject();
  *(v4 + 128) = CurrentValueSubject.init(_:)();
  v6 = *(v4 + 112);
  *(v4 + 112) = 0;
  v7 = *(v4 + 120);
  *(v4 + 120) = -1;
  sub_100224C24(v6, v7);
  *(v2 + 16) = v4;
  *(v2 + 24) = v4;
  v8 = objc_opt_self();

  v9 = [v8 remoteViewSessionInterface];
  v10 = objc_allocWithZone(AKAdaptiveService);
  swift_retain_n();
  v11 = [v10 initWithInterface:v9 strongObject:v2];

  v12 = *(v2 + 32);
  *(v2 + 32) = v11;
  v13 = v11;

  if (v13)
  {
    v14 = [v8 remoteViewServiceInterface];
    [v13 setRemoteObjectInterface:v14];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100222208(uint64_t result)
{
  if ((result - 6) < 0xFFFFFFFFFFFFFFFBLL)
  {
    return 0;
  }

  return result;
}

unint64_t sub_100222220()
{
  result = qword_100373C28;
  if (!qword_100373C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100373C28);
  }

  return result;
}

unint64_t sub_100222278()
{
  result = qword_100373C30;
  if (!qword_100373C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100373C30);
  }

  return result;
}

unint64_t sub_1002222D0()
{
  result = qword_100373C38;
  if (!qword_100373C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100373C38);
  }

  return result;
}

unint64_t sub_100222328()
{
  result = qword_100373C40;
  if (!qword_100373C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100373C40);
  }

  return result;
}

unint64_t sub_100222380()
{
  result = qword_100373C50;
  if (!qword_100373C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100373C50);
  }

  return result;
}

uint64_t sub_10022242C(uint64_t a1, uint64_t *a2)
{
  v6 = *(type metadata accessor for UUID() - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_100225ADC;

  return sub_10021911C(a1, a2, v2 + v7);
}

uint64_t sub_100222510(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_100225ACC;

  return sub_10021FCB4(a1, a2, v7, v6);
}

uint64_t sub_1002225C4(uint64_t result, char a2)
{
  if (a2 != -1)
  {
    return sub_1002225DC(result, a2 & 1);
  }

  return result;
}

uint64_t sub_1002225DC(uint64_t result, char a2)
{
  if (a2)
  {
  }

  return v2;
}

uint64_t sub_100222634(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[10];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100225A10;

  return sub_10021DE30(a1, v4, v5, v6, v7, (v1 + 6), v8);
}

unint64_t sub_100222710()
{
  result = qword_100373E90;
  if (!qword_100373E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100373E90);
  }

  return result;
}

uint64_t sub_100222764(uint64_t result, char a2)
{
  if (a2)
  {
    return swift_errorRetain();
  }

  return v2;
}

uint64_t sub_100222770(uint64_t result, char a2)
{
  if (a2 != -1)
  {
    return sub_100222764(result, a2 & 1);
  }

  return result;
}

uint64_t sub_100222788(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100225AD0;

  return sub_100220F78(a1, a2, v6);
}

uint64_t sub_100222844(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100225AD4;

  return sub_100220F78(a1, a2, v6);
}

uint64_t sub_100222900(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100225A14;

  return sub_10022102C(a1, v4, v5, v7, v6);
}

uint64_t sub_1002229CC(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100225AD8;

  return sub_100220F78(a1, a2, v6);
}

uint64_t sub_100222A88()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100222B3C;

  return sub_10021AFB0(v2, v3, v4);
}

uint64_t sub_100222B3C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100222C30(uint64_t a1, void *a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100222CE0;

  return sub_10021AA40(a1, a2, v6);
}

uint64_t sub_100222CE0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100222DD4(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_100225AE0;

  return sub_100221678(a1, a2, v7, v6);
}

uint64_t sub_100222E9C(uint64_t result, char a2)
{
  if (a2 != -1)
  {
    return sub_100224C64(result, a2 & 1, &_swift_bridgeObjectRelease);
  }

  return result;
}

uint64_t sub_100222F28(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[10];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100225A1C;

  return sub_10021F498(a1, v4, v5, v6, v7, (v1 + 6), v8);
}

uint64_t sub_10022307C(uint64_t result, char a2)
{
  if (a2 != -1)
  {
    return sub_100224CB4(result, a2 & 1, &_swift_bridgeObjectRetain);
  }

  return result;
}

uint64_t sub_1002230BC(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100225AE4;

  return sub_1002218B4(a1, a2, v6);
}

uint64_t sub_100223178(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100225AE8;

  return sub_1002218B4(a1, a2, v6);
}

uint64_t sub_100223234(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100225A20;

  return sub_10022197C(a1, v4, v5, v7, v6);
}

uint64_t sub_100223300(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100225AEC;

  return sub_1002218B4(a1, a2, v6);
}

uint64_t sub_1002233D4()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100225A24;

  return sub_10021A5D0(v2, v3, v5, v4);
}

uint64_t sub_100223494()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100225A28;

  return sub_10000A98C(v2, v3, v4);
}

uint64_t sub_100223554(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100225A2C;

  return sub_1000099A4(a1, v4, v5, v6);
}

uint64_t sub_100223620(uint64_t a1, uint64_t *a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_100225AF0;

  return sub_10021A098(a1, a2, v7, v6);
}

uint64_t sub_1002236D4(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_100225AF4;

  return sub_1002213BC(a1, a2, v7, v6);
}

uint64_t sub_1002237E8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[10];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100225A30;

  return sub_10021ECE0(a1, v4, v5, v6, v7, (v1 + 6), v8);
}

uint64_t sub_1002238C4(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100225AF8;

  return sub_10022146C(a1, a2, v6);
}

uint64_t sub_100223980(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100225AFC;

  return sub_10022146C(a1, a2, v6);
}

uint64_t sub_100223A3C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100225A34;

  return sub_100221520(a1, v4, v5, v7, v6);
}

uint64_t sub_100223B08(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100225B00;

  return sub_10022146C(a1, a2, v6);
}

uint64_t sub_100223BC4()
{
  swift_unknownObjectRelease();
  _Block_release(*(v0 + 32));

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100223C14()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100225A38;

  return sub_100219D94(v2, v3, v5, v4);
}

uint64_t sub_100223CD4()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100225A3C;

  return sub_10000A98C(v2, v3, v4);
}

uint64_t sub_100223D94(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100225A40;

  return sub_1000099A4(a1, v4, v5, v6);
}

uint64_t sub_100223E60()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100223EA0(uint64_t a1, uint64_t *a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_100225B04;

  return sub_100219998(a1, a2, v7, v6);
}

uint64_t sub_100223F54(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_100225B08;

  return sub_100221184(a1, a2, v7, v6);
}

uint64_t sub_100224068()
{
  swift_unknownObjectRelease();

  sub_1001AD48C((v0 + 48));

  return _swift_deallocObject(v0, 88, 7);
}

uint64_t sub_1002240B8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[10];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100225A44;

  return sub_10021E588(a1, v4, v5, v6, v7, (v1 + 6), v8);
}

uint64_t sub_100224194(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100225B0C;

  return sub_100221234(a1, a2, v6);
}

uint64_t sub_100224250(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100225B10;

  return sub_100221234(a1, a2, v6);
}

uint64_t sub_10022430C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100224354(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100225A48;

  return sub_100221264(a1, v4, v5, v7, v6);
}

uint64_t sub_100224420(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100225B14;

  return sub_100221234(a1, a2, v6);
}

uint64_t sub_1002244DC()
{
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100224524()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100225A4C;

  return sub_100219684(v2, v3, v4);
}

uint64_t sub_1002245D8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100225A50;

  return sub_10000A98C(v2, v3, v4);
}

uint64_t sub_100224698(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100225A54;

  return sub_1000099A4(a1, v4, v5, v6);
}

void sub_100224764(uint64_t a1, void (**a2)(void, void, void))
{
  v4 = sub_1001AD17C(&unk_100372310, &qword_10029CEC0);
  __chkstk_darwin(v4 - 8);
  v6 = &v22 - v5;
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  v8 = objc_opt_self();
  _Block_copy(a2);
  v9 = [v8 currentConnection];
  if (v9)
  {
    v10 = v9;
    if (*(a1 + 40))
    {

      Task.cancel()();
    }

    v11 = *(a1 + 32);
    if (v11)
    {
      v12 = type metadata accessor for RemoteViewService();
      v13 = objc_allocWithZone(v12);
      *&v13[OBJC_IVAR____TtC3akdP33_9379F446E6714602564EEF4A6C6F7D5717RemoteViewService_connection] = v10;
      *&v13[OBJC_IVAR____TtC3akdP33_9379F446E6714602564EEF4A6C6F7D5717RemoteViewService_adapter] = v11;
      v22.receiver = v13;
      v22.super_class = v12;
      v14 = v11;
      v15 = v10;
      v16 = objc_msgSendSuper2(&v22, "init");
      v17 = type metadata accessor for TaskPriority();
      (*(*(v17 - 8) + 56))(v6, 1, 1, v17);
      v18 = swift_allocObject();
      v18[2] = 0;
      v18[3] = 0;
      v18[4] = a1;
      v18[5] = v16;
      v18[6] = sub_100224A38;
      v18[7] = v7;

      v19 = v16;

      sub_100248D54(0, 0, v6, &unk_10029EFE8, v18);
    }

    else
    {
      _Block_release(a2);
      __break(1u);
    }
  }

  else
  {
    sub_100224A40();
    swift_allocError();
    *v20 = 2;
    v21 = _convertErrorToNSError(_:)();
    (a2)[2](a2, 0, v21);
  }
}

unint64_t sub_100224A40()
{
  result = qword_100373F58;
  if (!qword_100373F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100373F58);
  }

  return result;
}

uint64_t sub_100224A94(uint64_t a1)
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
  v10[1] = sub_100225A58;

  return sub_1002186CC(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_100224B68(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100225B18;

  return sub_100220EB0(a1, a2, v6);
}

uint64_t sub_100224C24(uint64_t result, char a2)
{
  if (a2 != -1)
  {
    return sub_100224C64(result, a2 & 1, &_swift_unknownObjectRelease);
  }

  return result;
}

uint64_t sub_100224C64(uint64_t a1, char a2, uint64_t (*a3)(uint64_t))
{
  if (a2)
  {
  }

  else
  {
    return a3(a1);
  }
}

uint64_t sub_100224C74(uint64_t result, char a2)
{
  if (a2 != -1)
  {
    return sub_100224CB4(result, a2 & 1, &_swift_unknownObjectRetain);
  }

  return result;
}

uint64_t sub_100224CB4(uint64_t a1, char a2, uint64_t (*a3)(uint64_t))
{
  if (a2)
  {
    return swift_errorRetain();
  }

  else
  {
    return a3(a1);
  }
}

uint64_t sub_100224CCC()
{
  v1 = sub_1001AD17C(&qword_100373EA0, &qword_10029ED20);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100224D9C(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1001C5270(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100224DE4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100225A5C;

  return sub_100217134(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_100224EAC(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100225B1C;

  return sub_100220EB0(a1, a2, v6);
}

uint64_t sub_100224F68(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100225B20;

  return sub_100220EB0(a1, a2, v6);
}

uint64_t sub_100225024()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100225A60;

  return sub_100214660(v2, v3);
}

uint64_t sub_1002250D0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100225A64;

  return sub_10000A98C(v2, v3, v4);
}

uint64_t sub_100225190(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100225A68;

  return sub_1000099A4(a1, v4, v5, v6);
}

uint64_t sub_10022525C()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10022529C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100225A6C;

  return sub_100213D00(v2, v3);
}

uint64_t sub_100225348()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100225A70;

  return sub_10000A98C(v2, v3, v4);
}

uint64_t sub_100225408()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100225448(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100225A74;

  return sub_1000099A4(a1, v4, v5, v6);
}

unint64_t sub_100225514()
{
  result = qword_100373F98;
  if (!qword_100373F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100373F98);
  }

  return result;
}

unint64_t sub_100225568()
{
  result = qword_100373FE0;
  if (!qword_100373FE0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100373FE0);
  }

  return result;
}

uint64_t sub_1002255B4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1002255FC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_1001AD17C(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t getEnumTagSinglePayload for RemoteViewSession.Failure(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for RemoteViewSession.Failure(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t _s7FailureOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s7FailureOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10022592C()
{
  result = qword_100374000;
  if (!qword_100374000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100374000);
  }

  return result;
}

unint64_t sub_100225984()
{
  result = qword_100374008;
  if (!qword_100374008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100374008);
  }

  return result;
}

void sub_100225B8C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001AD17C(&qword_100372300, &unk_10029CF90);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = aBlock - v6;
  v8 = *(a2 + OBJC_IVAR___AKAppleIDPasskeyUnenrollProvider_serviceController);
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v5 + 16))(v7, a1, v4);
  v10 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = v9;
  (*(v5 + 32))(v11 + v10, v7, v4);
  aBlock[4] = sub_100226DF0;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100234B90;
  aBlock[3] = &unk_1003291F8;
  v12 = _Block_copy(aBlock);

  [v8 executeRequestWithCompletion:v12];
  _Block_release(v12);
}

uint64_t sub_100225EE4(const void *a1, void *a2)
{
  *(v2 + 16) = a2;
  *(v2 + 24) = _Block_copy(a1);
  v4 = a2;

  return _swift_task_switch(sub_100225F5C, 0, 0);
}

uint64_t sub_100225F5C()
{
  v1 = v0[2];
  v2 = swift_task_alloc();
  v0[4] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[5] = v3;
  *v3 = v0;
  v3[1] = sub_100226054;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 7, 0, 0, 0xD000000000000018, 0x80000001002AC850, sub_100226DE8, v2, &type metadata for Bool);
}

uint64_t sub_100226054()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = sub_1002261F0;
  }

  else
  {

    v2 = sub_100226170;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100226170()
{
  v1 = *(v0 + 24);

  (*(v1 + 16))(v1, *(v0 + 56), 0);
  _Block_release(*(v0 + 24));
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1002261F0()
{
  v1 = *(v0 + 24);

  v2 = _convertErrorToNSError(_:)();

  (*(v1 + 16))(v1, 0, v2);

  _Block_release(*(v0 + 24));
  v3 = *(v0 + 8);

  return v3();
}

id sub_1002262D0(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_100226378()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100226424;

  return sub_100225EE4(v2, v3);
}

uint64_t sub_100226424()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void sub_100226518(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    if (a3 >> 60 == 15)
    {
      isa = 0;
    }

    else
    {
      isa = Data._bridgeToObjectiveC()().super.isa;
    }

    v13 = [objc_opt_self() dictionaryFromObject:isa ofType:@"application/json"];
    swift_unknownObjectRelease();
    if (v13)
    {
      v14 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      *&v24[0] = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(&v24[0] + 1) = v15;
      AnyHashable.init<A>(_:)();
      if (!*(v14 + 16) || (v16 = sub_10023A30C(v25), (v17 & 1) == 0))
      {

        sub_1001AD3EC(v25);
        memset(v24, 0, sizeof(v24));
        sub_1000120B4(v24, &qword_100372080, &qword_10029C6E0);
        sub_1002269D0();
        LOBYTE(v25[0]) = 1;
        sub_1001AD17C(&qword_100372300, &unk_10029CF90);
        CheckedContinuation.resume(returning:)();
LABEL_24:

        return;
      }

      sub_1000087A8(*(v14 + 56) + 32 * v16, v24);
      sub_1001AD3EC(v25);

      sub_1000120B4(v24, &qword_100372080, &qword_10029C6E0);
      if (qword_100371BE0 != -1)
      {
        swift_once();
      }

      v18 = type metadata accessor for Logger();
      sub_1001AD2E4(v18, qword_1003776B0);
      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.debug.getter();
      if (!os_log_type_enabled(v19, v20))
      {
LABEL_23:

        type metadata accessor for AppleIDPasskeyError(0);
        *&v24[0] = -120015;
        sub_1001E4150(_swiftEmptyArrayStorage);
        sub_1001B1020();
        _BridgedStoredNSError.init(_:userInfo:)();
        *&v24[0] = v25[0];
        sub_1001AD17C(&qword_100372300, &unk_10029CF90);
        CheckedContinuation.resume(throwing:)();
        goto LABEL_24;
      }

      v21 = swift_slowAlloc();
      *v21 = 0;
      v22 = "Failed to unenroll passkey.";
    }

    else
    {
      if (qword_100371BE0 != -1)
      {
        swift_once();
      }

      v23 = type metadata accessor for Logger();
      sub_1001AD2E4(v23, qword_1003776B0);
      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.debug.getter();
      if (!os_log_type_enabled(v19, v20))
      {
        goto LABEL_23;
      }

      v21 = swift_slowAlloc();
      *v21 = 0;
      v22 = "Failed to unenroll passkey. Missing response.";
    }

    _os_log_impl(&_mh_execute_header, v19, v20, v22, v21, 2u);

    goto LABEL_23;
  }

  if (qword_100371BE0 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_1001AD2E4(v9, qword_1003776B0);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "Failed to unenroll passkey. AppleIDPasskeyUnenrollProvider instance is nil.", v12, 2u);
  }

  type metadata accessor for AppleIDPasskeyError(0);
  sub_1001E4150(_swiftEmptyArrayStorage);
  sub_1001B1020();
  _BridgedStoredNSError.init(_:userInfo:)();
  *&v24[0] = v25[0];
  sub_1001AD17C(&qword_100372300, &unk_10029CF90);
  CheckedContinuation.resume(throwing:)();
}

void sub_1002269D0()
{
  v1 = *(v0 + OBJC_IVAR___AKAppleIDPasskeyUnenrollProvider_accountManager);
  v2 = [v1 primaryAuthKitAccount];
  if (v2)
  {
    v3 = v2;
    [v1 setPasskeyPresent:0 forAccount:v2];
    v21 = 0;
    if ([v1 saveAccount:v3 error:&v21])
    {
      v4 = qword_100371BE0;
      v5 = v21;
      if (v4 != -1)
      {
        swift_once();
      }

      v6 = type metadata accessor for Logger();
      sub_1001AD2E4(v6, qword_1003776B0);
      v7 = Logger.logObject.getter();
      v8 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        *v9 = 0;
        _os_log_impl(&_mh_execute_header, v7, v8, "AppleIDPasskeyUnenrollProvider: passkeyPresent saved successfully.", v9, 2u);
      }
    }

    else
    {
      v13 = v21;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      if (qword_100371BE0 != -1)
      {
        swift_once();
      }

      v14 = type metadata accessor for Logger();
      sub_1001AD2E4(v14, qword_1003776B0);
      swift_errorRetain();
      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        *v17 = 138412290;
        swift_errorRetain();
        v19 = _swift_stdlib_bridgeErrorToNSError();
        *(v17 + 4) = v19;
        *v18 = v19;
        _os_log_impl(&_mh_execute_header, v15, v16, "AppleIDPasskeyUnenrollProvider: Failed to save passkeyPresent with error %@.", v17, 0xCu);
        sub_1000120B4(v18, &unk_1003726A0, &unk_10029CFA0);
      }

      else
      {
      }
    }
  }

  else
  {
    if (qword_100371BE0 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_1001AD2E4(v10, qword_1003776B0);
    oslog = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v11, "AppleIDPasskeyUnenrollProvider: Missing primary account.", v12, 2u);
    }
  }
}

uint64_t sub_100226DA8()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

void sub_100226DF0(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  sub_1001AD17C(&qword_100372300, &unk_10029CF90);
  v9 = *(v4 + 16);

  sub_100226518(a1, a2, a3, a4, v9);
}

id sub_100226EC4(uint64_t a1, uint64_t a2, void *a3)
{

  v3 = String._bridgeToObjectiveC()();

  return v3;
}

id sub_100227180(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

id sub_1002271DC(void *a1)
{
  v2 = type metadata accessor for Locale();
  __chkstk_darwin(v2 - 8);
  v3 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v3 - 8);
  String.LocalizationValue.init(_:)();
  v4 = String._bridgeToObjectiveC()();
  v5 = objc_opt_self();
  v6 = [v5 bundleWithIdentifier:v4];

  static Locale.current.getter();
  v7 = String.init(localized:table:bundle:locale:comment:)();
  v9 = v8;
  String.LocalizationValue.init(_:)();
  v10 = String._bridgeToObjectiveC()();
  v11 = [v5 bundleWithIdentifier:v10];

  static Locale.current.getter();
  v12 = String.init(localized:table:bundle:locale:comment:)();
  v14 = v13;
  v15 = type metadata accessor for AuthenticationErrorAlertDetails();
  v16 = objc_allocWithZone(v15);
  *&v16[OBJC_IVAR___AKAuthenticationErrorAlertDetails_error] = a1;
  v17 = &v16[OBJC_IVAR___AKAuthenticationErrorAlertDetails_title];
  *v17 = v7;
  v17[1] = v9;
  v18 = &v16[OBJC_IVAR___AKAuthenticationErrorAlertDetails_message];
  *v18 = v12;
  v18[1] = v14;
  v21.receiver = v16;
  v21.super_class = v15;
  v19 = a1;
  return objc_msgSendSuper2(&v21, "init");
}

id sub_10022742C(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v12 = type metadata accessor for Locale();
  __chkstk_darwin(v12 - 8);
  v13 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v13 - 8);
  if (a7)
  {
    v14.value._countAndFlagsBits = a6;
    v14.value._object = a7;
    v15 = String.localized(withName:)(v14);

    String.LocalizationValue.init(_:)();
    v16 = String._bridgeToObjectiveC()();
    v17 = [objc_opt_self() bundleWithIdentifier:v16];

    static Locale.current.getter();
    v18 = String.init(localized:table:bundle:locale:comment:)();
    v20 = v19;
    v21 = type metadata accessor for AuthenticationErrorAlertDetails();
    v22 = objc_allocWithZone(v21);
    *&v22[OBJC_IVAR___AKAuthenticationErrorAlertDetails_error] = a1;
    *&v22[OBJC_IVAR___AKAuthenticationErrorAlertDetails_title] = v15;
    v23 = &v22[OBJC_IVAR___AKAuthenticationErrorAlertDetails_message];
    *v23 = v18;
    v23[1] = v20;
    v31.receiver = v22;
    v31.super_class = v21;
    v24 = a1;
    return objc_msgSendSuper2(&v31, "init");
  }

  else
  {
    if (qword_100371BC8 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    sub_1001AD2E4(v26, qword_100377668);

    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v32 = v30;
      *v29 = 136315138;
      *(v29 + 4) = sub_10024B050(a2, a3, &v32);
      _os_log_impl(&_mh_execute_header, v27, v28, "Missing username for alert localization %s.", v29, 0xCu);
      sub_1001AD48C(v30);
    }

    return 0;
  }
}

id sub_100227734(void *a1)
{
  v2 = type metadata accessor for Locale();
  __chkstk_darwin(v2 - 8);
  v3 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v3 - 8);
  String.LocalizationValue.init(_:)();
  v4 = String._bridgeToObjectiveC()();
  v5 = objc_opt_self();
  v6 = [v5 bundleWithIdentifier:v4];

  static Locale.current.getter();
  v7 = String.init(localized:table:bundle:locale:comment:)();
  v34 = v8;
  v35 = v7;
  String.LocalizationValue.init(_:)();
  v9 = String._bridgeToObjectiveC()();
  v10 = [v5 bundleWithIdentifier:v9];

  static Locale.current.getter();
  v11 = String.init(localized:table:bundle:locale:comment:)();
  v13 = v12;
  v14 = [a1 userInfo];
  v15 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (*(v15 + 16))
  {
    v33 = a1;
    v18 = sub_10023A350(v16, v17);
    v20 = v19;

    if (v20)
    {
      sub_1000087A8(*(v15 + 56) + 32 * v18, v38);

      v21 = sub_1001AD440();
      if ((swift_dynamicCast() & 1) == 0)
      {
LABEL_7:
        a1 = v33;
        goto LABEL_8;
      }

      sub_1001AD17C(&qword_100373840, &qword_10029E780);
      v22 = swift_allocObject();
      *(v22 + 16) = xmmword_10029BEB0;
      *(v22 + 56) = v21;
      *(v22 + 64) = sub_100228BAC();
      *(v22 + 32) = v36;
      v23 = v36;
      String.LocalizationValue.init(_:)();
      v24 = String._bridgeToObjectiveC()();
      v25 = [v5 bundleWithIdentifier:v24];

      static Locale.current.getter();
      String.init(localized:table:bundle:locale:comment:)();
      v11 = String.init(format:_:)();
      v13 = v26;
    }

    goto LABEL_7;
  }

LABEL_8:
  v27 = type metadata accessor for AuthenticationErrorAlertDetails();
  v28 = objc_allocWithZone(v27);
  *&v28[OBJC_IVAR___AKAuthenticationErrorAlertDetails_error] = a1;
  v29 = &v28[OBJC_IVAR___AKAuthenticationErrorAlertDetails_title];
  *v29 = v35;
  *(v29 + 1) = v34;
  v30 = &v28[OBJC_IVAR___AKAuthenticationErrorAlertDetails_message];
  *v30 = v11;
  v30[1] = v13;
  v37.receiver = v28;
  v37.super_class = v27;
  v31 = a1;
  return objc_msgSendSuper2(&v37, "init");
}

id sub_100227B68(void *a1, uint64_t a2, void *a3)
{
  v6 = type metadata accessor for Locale();
  __chkstk_darwin(v6 - 8);
  v7 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v7 - 8);
  v8 = [a1 code];
  if (v8 > -7037)
  {
    if (v8 > -7013)
    {
      if (v8 == -7012)
      {
        String.LocalizationValue.init(_:)();
        v46 = String._bridgeToObjectiveC()();
        v47 = objc_opt_self();
        v48 = [v47 bundleWithIdentifier:v46];

        static Locale.current.getter();
        v49 = String.init(localized:table:bundle:locale:comment:)();
        v51 = v50;
        String.LocalizationValue.init(_:)();
        v52 = String._bridgeToObjectiveC()();
        v53 = [v47 bundleWithIdentifier:v52];

        static Locale.current.getter();
        v54 = String.init(localized:table:bundle:locale:comment:)();
        v56 = v55;
        v57 = type metadata accessor for AuthenticationErrorAlertDetails();
        v58 = objc_allocWithZone(v57);
        *&v58[OBJC_IVAR___AKAuthenticationErrorAlertDetails_error] = a1;
        v59 = &v58[OBJC_IVAR___AKAuthenticationErrorAlertDetails_title];
        *v59 = v49;
        v59[1] = v51;
        v60 = &v58[OBJC_IVAR___AKAuthenticationErrorAlertDetails_message];
        *v60 = v54;
        v60[1] = v56;
        v98.receiver = v58;
        v98.super_class = v57;
        v61 = a1;
        return objc_msgSendSuper2(&v98, "init");
      }

      if (v8 != -7005)
      {
        if (v8 == -7006)
        {
          String.LocalizationValue.init(_:)();
          v9 = String._bridgeToObjectiveC()();
          v10 = objc_opt_self();
          v11 = [v10 bundleWithIdentifier:v9];

          static Locale.current.getter();
          v12 = String.init(localized:table:bundle:locale:comment:)();
          v14 = v13;
          String.LocalizationValue.init(_:)();
          v15 = String._bridgeToObjectiveC()();
          v16 = [v10 bundleWithIdentifier:v15];

          static Locale.current.getter();
          v17 = String.init(localized:table:bundle:locale:comment:)();
          v19 = v18;
          v20 = type metadata accessor for AuthenticationErrorAlertDetails();
          v21 = objc_allocWithZone(v20);
          *&v21[OBJC_IVAR___AKAuthenticationErrorAlertDetails_error] = a1;
          v22 = &v21[OBJC_IVAR___AKAuthenticationErrorAlertDetails_title];
          *v22 = v12;
          v22[1] = v14;
          v23 = &v21[OBJC_IVAR___AKAuthenticationErrorAlertDetails_message];
          *v23 = v17;
          v23[1] = v19;
          v97.receiver = v21;
          v97.super_class = v20;
          v24 = a1;
          return objc_msgSendSuper2(&v97, "init");
        }

        goto LABEL_24;
      }

      return sub_1002271DC(a1);
    }

    if (v8 == -7036)
    {
      String.LocalizationValue.init(_:)();
      v62 = String._bridgeToObjectiveC()();
      v63 = objc_opt_self();
      v64 = [v63 bundleWithIdentifier:v62];

      static Locale.current.getter();
      v65 = String.init(localized:table:bundle:locale:comment:)();
      v67 = v66;
      String.LocalizationValue.init(_:)();
      v68 = String._bridgeToObjectiveC()();
      v69 = [v63 bundleWithIdentifier:v68];

      static Locale.current.getter();
      v70 = String.init(localized:table:bundle:locale:comment:)();
      v72 = v71;
      v73 = type metadata accessor for AuthenticationErrorAlertDetails();
      v74 = objc_allocWithZone(v73);
      *&v74[OBJC_IVAR___AKAuthenticationErrorAlertDetails_error] = a1;
      v75 = &v74[OBJC_IVAR___AKAuthenticationErrorAlertDetails_title];
      *v75 = v65;
      v75[1] = v67;
      v76 = &v74[OBJC_IVAR___AKAuthenticationErrorAlertDetails_message];
      *v76 = v70;
      v76[1] = v72;
      v99.receiver = v74;
      v99.super_class = v73;
      v77 = a1;
      return objc_msgSendSuper2(&v99, "init");
    }

    if (v8 == -7029)
    {
      return sub_1002271DC(a1);
    }

LABEL_24:
    v78 = [a1 userInfo];
    v79 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v80 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    if (*(v79 + 16))
    {
      v82 = sub_10023A350(v80, v81);
      v84 = v83;

      if (v84)
      {
        sub_1000087A8(*(v79 + 56) + 32 * v82, v104);

        if (swift_dynamicCast())
        {
          v85 = v102;
          v86 = v103;
          String.LocalizationValue.init(_:)();
          v87 = String._bridgeToObjectiveC()();
          v88 = [objc_opt_self() bundleWithIdentifier:v87];

          static Locale.current.getter();
          v89 = String.init(localized:table:bundle:locale:comment:)();
          v91 = v90;
          v92 = type metadata accessor for AuthenticationErrorAlertDetails();
          v93 = objc_allocWithZone(v92);
          *&v93[OBJC_IVAR___AKAuthenticationErrorAlertDetails_error] = a1;
          v94 = &v93[OBJC_IVAR___AKAuthenticationErrorAlertDetails_title];
          *v94 = v89;
          v94[1] = v91;
          v95 = &v93[OBJC_IVAR___AKAuthenticationErrorAlertDetails_message];
          *v95 = v85;
          *(v95 + 1) = v86;
          v101.receiver = v93;
          v101.super_class = v92;
          v96 = a1;
          return objc_msgSendSuper2(&v101, "init");
        }

        return 0;
      }
    }

    else
    {
    }

    return 0;
  }

  if (v8 > -7094)
  {
    if (v8 != -7093)
    {
      if (v8 == -7043)
      {
        String.LocalizationValue.init(_:)();
        v30 = String._bridgeToObjectiveC()();
        v31 = objc_opt_self();
        v32 = [v31 bundleWithIdentifier:v30];

        static Locale.current.getter();
        v33 = String.init(localized:table:bundle:locale:comment:)();
        v35 = v34;
        String.LocalizationValue.init(_:)();
        v36 = String._bridgeToObjectiveC()();
        v37 = [v31 bundleWithIdentifier:v36];

        static Locale.current.getter();
        v38 = String.init(localized:table:bundle:locale:comment:)();
        v40 = v39;
        v41 = type metadata accessor for AuthenticationErrorAlertDetails();
        v42 = objc_allocWithZone(v41);
        *&v42[OBJC_IVAR___AKAuthenticationErrorAlertDetails_error] = a1;
        v43 = &v42[OBJC_IVAR___AKAuthenticationErrorAlertDetails_title];
        *v43 = v33;
        v43[1] = v35;
        v44 = &v42[OBJC_IVAR___AKAuthenticationErrorAlertDetails_message];
        *v44 = v38;
        v44[1] = v40;
        v100.receiver = v42;
        v100.super_class = v41;
        v45 = a1;
        return objc_msgSendSuper2(&v100, "init");
      }

      goto LABEL_24;
    }

    v26 = "OHIBITED_TITLE_REBRAND";
    v27 = 0xD000000000000036;
    v28 = 0x80000001002AC9D0;
    v29 = 0xD000000000000030;
  }

  else
  {
    if (v8 == -7100)
    {
      return sub_100227734(a1);
    }

    if (v8 != -7094)
    {
      goto LABEL_24;
    }

    v26 = "INGS_REDIRECT_TITLE";
    v27 = 0xD000000000000033;
    v28 = 0x80000001002AC950;
    v29 = 0xD000000000000035;
  }

  return sub_10022742C(a1, v27, v28, v29, v26 | 0x8000000000000000, a2, a3);
}

id sub_100228560(void *a1)
{
  v2 = [a1 userInfo];
  v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v3 + 16))
  {
LABEL_8:

    goto LABEL_9;
  }

  v6 = sub_10023A350(v4, v5);
  v8 = v7;

  if ((v8 & 1) == 0)
  {
LABEL_9:

    return 0;
  }

  sub_1000087A8(*(v3 + 56) + 32 * v6, v29);

  if (swift_dynamicCast())
  {
    v10 = v27;
    v9 = v28;
    v11 = [a1 userInfo];
    v12 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    if (*(v12 + 16))
    {
      v15 = sub_10023A350(v13, v14);
      v17 = v16;

      if (v17)
      {
        sub_1000087A8(*(v12 + 56) + 32 * v15, v29);

        if (swift_dynamicCast())
        {
          v18 = v27;
          v19 = v28;
          v20 = type metadata accessor for AuthenticationErrorAlertDetails();
          v21 = objc_allocWithZone(v20);
          *&v21[OBJC_IVAR___AKAuthenticationErrorAlertDetails_error] = a1;
          v22 = &v21[OBJC_IVAR___AKAuthenticationErrorAlertDetails_title];
          *v22 = v10;
          *(v22 + 1) = v9;
          v23 = &v21[OBJC_IVAR___AKAuthenticationErrorAlertDetails_message];
          *v23 = v18;
          *(v23 + 1) = v19;
          v26.receiver = v21;
          v26.super_class = v20;
          v24 = a1;
          return objc_msgSendSuper2(&v26, "init");
        }

        goto LABEL_9;
      }
    }

    else
    {
    }

    goto LABEL_8;
  }

  return 0;
}

id sub_10022878C(void *a1)
{
  v2 = type metadata accessor for Locale();
  __chkstk_darwin(v2 - 8);
  v3 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v3 - 8);
  String.LocalizationValue.init(_:)();
  v4 = String._bridgeToObjectiveC()();
  v5 = objc_opt_self();
  v6 = [v5 bundleWithIdentifier:v4];

  static Locale.current.getter();
  v7 = String.init(localized:table:bundle:locale:comment:)();
  v9 = v8;
  String.LocalizationValue.init(_:)();
  v10 = String._bridgeToObjectiveC()();
  v11 = [v5 bundleWithIdentifier:v10];

  static Locale.current.getter();
  v12 = String.init(localized:table:bundle:locale:comment:)();
  v14 = v13;
  v15 = type metadata accessor for AuthenticationErrorAlertDetails();
  v16 = objc_allocWithZone(v15);
  *&v16[OBJC_IVAR___AKAuthenticationErrorAlertDetails_error] = a1;
  v17 = &v16[OBJC_IVAR___AKAuthenticationErrorAlertDetails_title];
  *v17 = v7;
  v17[1] = v9;
  v18 = &v16[OBJC_IVAR___AKAuthenticationErrorAlertDetails_message];
  *v18 = v12;
  v18[1] = v14;
  v21.receiver = v16;
  v21.super_class = v15;
  v19 = a1;
  return objc_msgSendSuper2(&v21, "init");
}

id sub_1002289E0(void *a1, uint64_t a2, void *a3)
{
  v6 = [a1 domain];
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  if (v7 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v9 == v10)
  {
  }

  else
  {
    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v12 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  result = sub_100227B68(a1, a2, a3);
  if (result)
  {
    return result;
  }

LABEL_10:
  v14 = [a1 domain];
  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;

  if (v15 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v17 == v18)
  {
  }

  else
  {
    v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v20 & 1) == 0)
    {
      result = sub_100228560(a1);
      if (!result)
      {

        return sub_10022878C(a1);
      }

      return result;
    }
  }

  return sub_1002271DC(a1);
}

unint64_t sub_100228BAC()
{
  result = qword_100374110;
  if (!qword_100374110)
  {
    sub_1001AD440();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100374110);
  }

  return result;
}

id URLBagFeatureFlag.__allocating_init(urlBagKey:urlBagProvider:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_allocObject();
  swift_defaultActor_initialize();
  v8 = OBJC_IVAR____TtC3akd17URLBagFeatureFlag_cachedURL;
  v9 = type metadata accessor for URL();
  (*(*(v9 - 8) + 56))(&v7[v8], 1, 1, v9);
  *&v7[OBJC_IVAR____TtC3akd17URLBagFeatureFlag_cachedStatus] = 0;
  *&v7[OBJC_IVAR____TtC3akd17URLBagFeatureFlag_urlBagFetchTask] = 0;
  *&v7[OBJC_IVAR____TtC3akd17URLBagFeatureFlag_urlBagKey] = a1;
  v10 = &v7[OBJC_IVAR____TtC3akd17URLBagFeatureFlag_urlBagProvider];
  *v10 = a2;
  *(v10 + 1) = a3;
  v12.receiver = v7;
  v12.super_class = v3;
  return objc_msgSendSuper2(&v12, "init");
}

unint64_t URLBagFeatureStatus.init(rawValue:)(unint64_t result)
{
  if (result > 2)
  {
    return 0;
  }

  return result;
}

Swift::Int sub_100228D20()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_100228D94(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

unint64_t *sub_100228DD8@<X0>(unint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result > 2;
  if (*result > 2)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  return result;
}

id sub_100228E10()
{
  result = [objc_opt_self() sharedBag];
  if (!result)
  {
    __break(1u);
  }

  return result;
}

id URLBagFeatureFlag.init(urlBagKey:urlBagProvider:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_defaultActor_initialize();
  v7 = OBJC_IVAR____TtC3akd17URLBagFeatureFlag_cachedURL;
  v8 = type metadata accessor for URL();
  (*(*(v8 - 8) + 56))(&v3[v7], 1, 1, v8);
  *&v3[OBJC_IVAR____TtC3akd17URLBagFeatureFlag_cachedStatus] = 0;
  *&v3[OBJC_IVAR____TtC3akd17URLBagFeatureFlag_urlBagFetchTask] = 0;
  *&v3[OBJC_IVAR____TtC3akd17URLBagFeatureFlag_urlBagKey] = a1;
  v9 = &v3[OBJC_IVAR____TtC3akd17URLBagFeatureFlag_urlBagProvider];
  *v9 = a2;
  *(v9 + 1) = a3;
  v11.receiver = v3;
  v11.super_class = type metadata accessor for URLBagFeatureFlag(0);
  return objc_msgSendSuper2(&v11, "init");
}

uint64_t type metadata accessor for URLBagFeatureFlag(uint64_t a1)
{
  result = qword_100374180;
  if (!qword_100374180)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t URLBagFeatureFlag.fetchURL()(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100229124;

  return sub_100229218(a1);
}

uint64_t sub_100229124()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100229218(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  sub_1001AD17C(&unk_100372310, &qword_10029CEC0);
  v2[7] = swift_task_alloc();

  return _swift_task_switch(sub_1002292B4, v1, 0);
}

uint64_t sub_1002292B4()
{
  v1 = v0[6];
  if (*(v1 + OBJC_IVAR____TtC3akd17URLBagFeatureFlag_cachedStatus))
  {
    v2 = v0[5];
    v3 = OBJC_IVAR____TtC3akd17URLBagFeatureFlag_cachedURL;
    swift_beginAccess();
    sub_10022B9AC(v1 + v3, v2);

    v4 = v0[1];

    return v4();
  }

  else
  {
    v6 = OBJC_IVAR____TtC3akd17URLBagFeatureFlag_urlBagFetchTask;
    v7 = *(v1 + OBJC_IVAR____TtC3akd17URLBagFeatureFlag_urlBagFetchTask);
    v0[8] = v7;
    if (v7)
    {

      v8 = swift_task_alloc();
      v0[9] = v8;
      v9 = sub_1001AD17C(&qword_100372298, &qword_10029CF30);
      v10 = sub_1001AD17C(&qword_100373250, qword_10029D0B0);
      *v8 = v0;
      v11 = sub_100229574;
    }

    else
    {
      v12 = v0[7];
      v13 = type metadata accessor for TaskPriority();
      (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
      v14 = sub_10022BA1C();
      v15 = swift_allocObject();
      v15[2] = v1;
      v15[3] = v14;
      v15[4] = v1;
      swift_retain_n();
      v7 = sub_1001FD624(0, 0, v12, &unk_10029F500, v15);
      v0[11] = v7;
      *(v1 + v6) = v7;

      v8 = swift_task_alloc();
      v0[12] = v8;
      v9 = sub_1001AD17C(&qword_100372298, &qword_10029CF30);
      v10 = sub_1001AD17C(&qword_100373250, qword_10029D0B0);
      *v8 = v0;
      v11 = sub_10022970C;
    }

    v8[1] = v11;
    v16 = v0[5];

    return Task.value.getter(v16, v7, v9, v10, &protocol self-conformance witness table for Error);
  }
}

uint64_t sub_100229574()
{
  v2 = *v1;
  *(*v1 + 80) = v0;

  v3 = *(v2 + 48);
  if (v0)
  {
    v4 = sub_1002298A4;
  }

  else
  {
    v4 = sub_1002296A0;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1002296A0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10022970C()
{
  v2 = *v1;
  *(*v1 + 104) = v0;

  v3 = *(v2 + 48);
  if (v0)
  {
    v4 = sub_100229910;
  }

  else
  {
    v4 = sub_100229838;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100229838()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002298A4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100229910()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100229AF4(const void *a1, uint64_t a2)
{
  v2[2] = a2;
  sub_1001AD17C(&qword_100372298, &qword_10029CF30);
  v2[3] = swift_task_alloc();
  v4 = swift_task_alloc();
  v2[4] = v4;
  v2[5] = _Block_copy(a1);

  v5 = swift_task_alloc();
  v2[6] = v5;
  *v5 = v2;
  v5[1] = sub_100229BFC;

  return sub_100229218(v4);
}

uint64_t sub_100229BFC()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {
    v4 = v2[5];
    v5 = _convertErrorToNSError(_:)();

    (v4)[2](v4, 0, v5);

    _Block_release(v4);
  }

  else
  {
    v6 = v2[3];
    sub_1001FFB70(v2[4], v6);
    v7 = type metadata accessor for URL();
    v8 = *(v7 - 8);
    v9 = (*(v8 + 48))(v6, 1, v7);
    v11 = 0;
    if (v9 != 1)
    {
      v12 = v2[3];
      URL._bridgeToObjectiveC()(v10);
      v11 = v13;
      (*(v8 + 8))(v12, v7);
    }

    v14 = v2[5];
    (v14)[2](v14, v11, 0);
    _Block_release(v14);
  }

  v15 = v3[1];

  return v15();
}

uint64_t URLBagFeatureFlag.featureStatus()()
{
  *(v1 + 16) = v0;
  sub_1001AD17C(&qword_100372298, &qword_10029CF30);
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_100229ECC, v0, 0);
}

uint64_t sub_100229ECC()
{
  v1 = v0[2];
  v2 = OBJC_IVAR____TtC3akd17URLBagFeatureFlag_cachedStatus;
  v0[4] = OBJC_IVAR____TtC3akd17URLBagFeatureFlag_cachedStatus;
  v3 = *(v1 + v2);
  if (v3)
  {

    v4 = v0[1];

    return v4(v3);
  }

  else
  {
    v6 = swift_task_alloc();
    v0[5] = v6;
    *v6 = v0;
    v6[1] = sub_100229FB8;
    v7 = v0[3];

    return sub_100229218(v7);
  }
}

uint64_t sub_100229FB8()
{
  v2 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v3 = *(v2 + 16);
    v4 = sub_10022A14C;
  }

  else
  {
    v5 = *(v2 + 16);
    sub_1001F2EFC(*(v2 + 24));
    v4 = sub_10022A0DC;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10022A0DC()
{
  v1 = *(v0[2] + v0[4]);

  v2 = v0[1];

  return v2(v1);
}

uint64_t sub_10022A14C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10022A328(const void *a1, uint64_t a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);

  v3 = swift_task_alloc();
  v2[4] = v3;
  *v3 = v2;
  v3[1] = sub_10022A3D0;

  return URLBagFeatureFlag.featureStatus()();
}

uint64_t sub_10022A3D0(uint64_t a1)
{
  v3 = v1;
  v6 = *v2;
  v5 = *v2;
  v7 = *v2;

  v8 = *(v5 + 24);
  if (v3)
  {
    v9 = _convertErrorToNSError(_:)();

    (*(v8 + 16))(v8, 0, v9);
  }

  else
  {
    (*(v8 + 16))(v8, a1, 0);
  }

  _Block_release(*(v6 + 24));
  v10 = *(v7 + 8);

  return v10();
}

void URLBagFeatureFlag.__allocating_init()()
{
  swift_allocObject();
  swift_defaultActor_initialize();
  _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
}

void URLBagFeatureFlag.init()()
{
  swift_defaultActor_initialize();
  _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
}

uint64_t URLBagFeatureFlag.deinit()
{
  sub_1001F2EFC(v0 + OBJC_IVAR____TtC3akd17URLBagFeatureFlag_cachedURL);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t URLBagFeatureFlag.__deallocating_deinit()
{
  sub_1001F2EFC(v0 + OBJC_IVAR____TtC3akd17URLBagFeatureFlag_cachedURL);

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

unint64_t sub_10022A6FC()
{
  result = qword_100374140;
  if (!qword_100374140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100374140);
  }

  return result;
}

unint64_t sub_10022A754()
{
  result = qword_100374148;
  if (!qword_100374148)
  {
    sub_1001C5270(&qword_100374150, &qword_10029F3D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100374148);
  }

  return result;
}

void sub_10022A7DC(uint64_t a1)
{
  sub_10022A8A8(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_10022A8A8(uint64_t a1)
{
  if (!qword_100374190)
  {
    type metadata accessor for URL();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_100374190);
    }
  }
}

uint64_t sub_10022A900()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10022A9AC;

  return sub_10022A328(v2, v3);
}

uint64_t sub_10022A9AC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10022AAA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[21] = a1;
  v4[22] = a4;
  sub_1001AD17C(&qword_100372298, &qword_10029CF30);
  v4[23] = swift_task_alloc();
  v4[24] = swift_task_alloc();
  v4[25] = swift_task_alloc();
  v6 = type metadata accessor for URL();
  v4[26] = v6;
  v4[27] = *(v6 - 8);
  v4[28] = swift_task_alloc();

  return _swift_task_switch(sub_10022ABB4, a4, 0);
}

uint64_t sub_10022ABB4()
{
  v17 = v0;
  if (qword_100371BB0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[29] = sub_1001AD2E4(v1, static Logger.akd);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v16 = v5;
    *v4 = 136315138;
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = sub_10024B050(v6, v7, &v16);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "Fetching feature flag URL from URL bag for key: %s. Feature is disabled", v4, 0xCu);
    sub_1001AD48C(v5);
  }

  v9 = v0[25];
  v10 = v0[22];
  v12 = (*(v10 + OBJC_IVAR____TtC3akd17URLBagFeatureFlag_urlBagProvider))(v11);
  v0[30] = v12;
  v13 = *(v10 + OBJC_IVAR____TtC3akd17URLBagFeatureFlag_urlBagKey);
  v0[31] = v13;
  v0[2] = v0;
  v0[7] = v9;
  v0[3] = sub_10022AE40;
  v14 = swift_continuation_init();
  v0[17] = sub_1001AD17C(&unk_1003734D0, &qword_10029F510);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_100011570;
  v0[13] = &unk_100329390;
  v0[14] = v14;
  [v12 urlForKey:v13 fromCache:1 completion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10022AE40()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 256) = v2;
  v3 = *(v1 + 176);
  if (v2)
  {
    v4 = sub_10022B450;
  }

  else
  {
    v4 = sub_10022AF60;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10022AF60()
{
  v40 = v0;
  v1 = v0[26];
  v2 = v0[27];
  v3 = v0[24];
  sub_1001FFB70(v0[25], v3);
  v4 = (*(v2 + 48))(v3, 1, v1);
  v5 = v0[30];
  if (v4 != 1)
  {
    v38 = *(v0[27] + 32);
    v38(v0[28], v0[24], v0[26]);

    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v39[0] = v23;
      *v22 = 136315138;
      v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v26 = sub_10024B050(v24, v25, v39);

      *(v22 + 4) = v26;
      _os_log_impl(&_mh_execute_header, v20, v21, "URL Found for key: %s. Feature is Enabled.", v22, 0xCu);
      sub_1001AD48C(v23);
    }

    v28 = v0[27];
    v27 = v0[28];
    v29 = v0[26];
    v31 = v0[22];
    v30 = v0[23];
    v32 = v0[21];
    (*(v28 + 16))(v30, v27, v29);
    v18 = *(v28 + 56);
    v18(v30, 0, 1, v29);
    v33 = OBJC_IVAR____TtC3akd17URLBagFeatureFlag_cachedURL;
    swift_beginAccess();
    sub_10022BC1C(v30, v31 + v33);
    swift_endAccess();
    *(v31 + OBJC_IVAR____TtC3akd17URLBagFeatureFlag_cachedStatus) = 1;
    v38(v32, v27, v29);
    v19 = 0;
    goto LABEL_11;
  }

  sub_1001F2EFC(v0[24]);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "Fetch succeeded but there was no URL in the bag.", v8, 2u);
  }

  [objc_opt_self() ak_errorWithCode:-7122];
  swift_willThrow();
  v9 = _convertErrorToNSError(_:)();
  if ([v9 ak_isAuthenticationErrorWithCode:-7097])
  {

    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v39[0] = v13;
      *v12 = 136315138;
      v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v16 = sub_10024B050(v14, v15, v39);

      *(v12 + 4) = v16;
      _os_log_impl(&_mh_execute_header, v10, v11, "No URL Found for key: %s. Feature is Disabled.", v12, 0xCu);
      sub_1001AD48C(v13);
    }

    v17 = v0[27];
    *(v0[22] + OBJC_IVAR____TtC3akd17URLBagFeatureFlag_cachedStatus) = 2;
    v18 = *(v17 + 56);
    v19 = 1;
LABEL_11:
    v34 = v0[22];
    v18(v0[21], v19, 1, v0[26]);
    *(v34 + OBJC_IVAR____TtC3akd17URLBagFeatureFlag_urlBagFetchTask) = 0;

    v35 = v0[1];
    goto LABEL_13;
  }

  v36 = v0[22];
  swift_willThrow();

  *(v36 + OBJC_IVAR____TtC3akd17URLBagFeatureFlag_urlBagFetchTask) = 0;

  v35 = v0[1];
LABEL_13:

  return v35();
}

uint64_t sub_10022B450(uint64_t a1)
{
  v17 = v1;
  v2 = v1[30];
  swift_willThrow();

  v3 = _convertErrorToNSError(_:)();
  if ([v3 ak_isAuthenticationErrorWithCode:-7097])
  {

    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v16 = v7;
      *v6 = 136315138;
      v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v10 = sub_10024B050(v8, v9, &v16);

      *(v6 + 4) = v10;
      _os_log_impl(&_mh_execute_header, v4, v5, "No URL Found for key: %s. Feature is Disabled.", v6, 0xCu);
      sub_1001AD48C(v7);
    }

    v11 = v1[27];
    *(v1[22] + OBJC_IVAR____TtC3akd17URLBagFeatureFlag_cachedStatus) = 2;
    v12 = v1[22];
    (*(v11 + 56))(v1[21], 1, 1, v1[26]);
    *(v12 + OBJC_IVAR____TtC3akd17URLBagFeatureFlag_urlBagFetchTask) = 0;

    v13 = v1[1];
  }

  else
  {
    v14 = v1[22];
    swift_willThrow();

    *(v14 + OBJC_IVAR____TtC3akd17URLBagFeatureFlag_urlBagFetchTask) = 0;

    v13 = v1[1];
  }

  return v13();
}

uint64_t sub_10022B6BC()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10022B6FC()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10022BC90;

  return sub_100229AF4(v2, v3);
}

uint64_t sub_10022B7A8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10022BC94;

  return sub_10000A98C(v2, v3, v4);
}

uint64_t sub_10022B868()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10022B8A8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10022BC98;

  return sub_1000099A4(a1, v4, v5, v6);
}

id sub_10022B974()
{
  v1 = (*(*(v0 + 16) + 16))();

  return v1;
}

uint64_t sub_10022B9AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001AD17C(&qword_100372298, &qword_10029CF30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_10022BA1C()
{
  result = qword_100374198;
  if (!qword_100374198)
  {
    type metadata accessor for URLBagFeatureFlag(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100374198);
  }

  return result;
}

uint64_t sub_10022BA74(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10022BB28;

  return sub_10022AAA0(a1, v4, v5, v6);
}

uint64_t sub_10022BB28()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10022BC1C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001AD17C(&qword_100372298, &qword_10029CF30);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

Swift::String __swiftcall String.localized(withName:)(Swift::String_optional withName)
{
  object = withName.value._object;
  countAndFlagsBits = withName.value._countAndFlagsBits;
  v3 = type metadata accessor for Locale();
  __chkstk_darwin(v3 - 8);
  v4 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v4 - 8);

  if (object)
  {

    String.LocalizationValue.init(_:)();
    v5 = String._bridgeToObjectiveC()();
    v6 = [objc_opt_self() bundleWithIdentifier:v5];

    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
    sub_1001AD17C(&qword_100373840, &qword_10029E780);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_10029BEB0;
    *(v7 + 56) = &type metadata for String;
    *(v7 + 64) = sub_10022C084();
    *(v7 + 32) = countAndFlagsBits;
    *(v7 + 40) = object;
  }

  else
  {
    v8._countAndFlagsBits = 0x454D414E4F4E5FLL;
    v8._object = 0xE700000000000000;
    String.append(_:)(v8);
    String.LocalizationValue.init(_:)();
    v9 = String._bridgeToObjectiveC()();
    v10 = [objc_opt_self() bundleWithIdentifier:v9];

    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
  }

  v11 = String.init(format:_:)();
  v13 = v12;

  v14 = v11;
  v15 = v13;
  result._object = v15;
  result._countAndFlagsBits = v14;
  return result;
}

uint64_t String.localized.getter(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for Locale();
  __chkstk_darwin(v2 - 8);
  v3 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v3 - 8);

  String.LocalizationValue.init(_:)();
  v4 = String._bridgeToObjectiveC()();
  v5 = [objc_opt_self() bundleWithIdentifier:v4];

  static Locale.current.getter();
  return String.init(localized:table:bundle:locale:comment:)();
}

unint64_t sub_10022C084()
{
  result = qword_1003741A0;
  if (!qword_1003741A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003741A0);
  }

  return result;
}

uint64_t String.localized(with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = type metadata accessor for Locale();
  __chkstk_darwin(v3 - 8);
  v4 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v4 - 8);

  String.LocalizationValue.init(_:)();
  v5 = String._bridgeToObjectiveC()();
  v6 = [objc_opt_self() bundleWithIdentifier:v5];

  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();

  v7 = String.init(format:_:)();

  return v7;
}

void sub_10022C26C(uint64_t a1)
{
  v2 = 0;
  v13 = Set.init(minimumCapacity:)();
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  while (v5)
  {
    v7 = v2;
LABEL_9:
    v8 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v9 = (*(a1 + 48) + ((v7 << 10) | (16 * v8)));
    v10 = *v9;
    v11 = v9[1];

    sub_100232370(v12, v10, v11);
  }

  while (1)
  {
    v7 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      break;
    }

    if (v7 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v7);
    ++v2;
    if (v5)
    {
      v2 = v7;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_10022C388(uint64_t a1, char a2, void *a3)
{
  v5 = *sub_1001B1078((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_1001AD17C(&qword_100373250, qword_10029D0B0);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return _swift_continuation_throwingResumeWithError(v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;

    return swift_continuation_throwingResume();
  }
}

uint64_t sub_10022C454(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_10022C5F0(uint64_t a1, uint64_t a2)
{
  v3[20] = a2;
  v3[21] = v2;
  v3[19] = a1;
  return _swift_task_switch(sub_10022C614, 0, 0);
}

uint64_t sub_10022C614()
{
  v16 = v0;
  if (qword_100371BD8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[22] = sub_1001AD2E4(v1, qword_100377698);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[19];
    v4 = v0[20];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v15 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_10024B050(v5, v4, &v15);
    _os_log_impl(&_mh_execute_header, v2, v3, "Fetching EULA for clientID: %s", v6, 0xCu);
    sub_1001AD48C(v7);
  }

  v8 = v0[20];
  v9 = v0[19];
  v10 = *(v0[21] + OBJC_IVAR___AKAccountsMetadataController_mediaServicesController);
  sub_1001AD17C(&qword_1003725B0, &qword_10029D9C0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_10029BEB0;
  *(v11 + 32) = v9;
  *(v11 + 40) = v8;

  isa = Array._bridgeToObjectiveC()().super.isa;
  v0[23] = isa;

  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_10022C8C4;
  v13 = swift_continuation_init();
  v0[17] = sub_1001AD17C(&qword_100374208, &unk_10029F5B0);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_10022CCF4;
  v0[13] = &unk_1003294A8;
  v0[14] = v13;
  [v10 appMetadataForBundleIDs:isa completion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10022C8C4()
{
  v1 = *(*v0 + 48);
  *(*v0 + 192) = v1;
  if (v1)
  {
    v2 = sub_10022CBA4;
  }

  else
  {
    v2 = sub_10022C9D4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10022C9D4()
{
  v20 = v0;
  v1 = *(v0 + 144);

  if (*(v1 + 16) && (v2 = sub_10023A350(*(v0 + 152), *(v0 + 160)), (v3 & 1) != 0))
  {
    v4 = *(*(v1 + 56) + 8 * v2);

    v5 = [v4 eula];

    if (v5)
    {
      v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v8 = v7;

      v9 = v8;
      v10 = v6;
      goto LABEL_9;
    }
  }

  else
  {
  }

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v14 = *(v0 + 152);
    v13 = *(v0 + 160);
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v19 = v16;
    *v15 = 136315138;
    *(v15 + 4) = sub_10024B050(v14, v13, &v19);
    _os_log_impl(&_mh_execute_header, v11, v12, "EULA not available for clientID: %s", v15, 0xCu);
    sub_1001AD48C(v16);
  }

  v10 = 0;
  v9 = 0xE000000000000000;
LABEL_9:
  v17 = *(v0 + 8);

  return v17(v10, v9);
}

uint64_t sub_10022CBA4(uint64_t a1)
{
  v2 = *(v1 + 184);
  swift_willThrow();

  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&_mh_execute_header, v3, v4, "Fetch EULA failed with error: %@", v5, 0xCu);
    sub_1001B4EB8(v6);
  }

  swift_willThrow();
  v8 = *(v1 + 8);

  return v8();
}

uint64_t sub_10022CCF4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *sub_1001B1078((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_1001AD17C(&qword_100373250, qword_10029D0B0);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return _swift_continuation_throwingResumeWithError(v4, v5);
  }

  else
  {
    sub_100234470(0, &unk_100374210, AKAppiTunesMetadata_ptr);
    **(*(v4 + 64) + 40) = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    return swift_continuation_throwingResume();
  }
}

uint64_t sub_10022CDF4(uint64_t a1, uint64_t a2, double a3, double a4)
{
  *(v5 + 184) = v4;
  *(v5 + 168) = a3;
  *(v5 + 176) = a4;
  *(v5 + 152) = a1;
  *(v5 + 160) = a2;
  return _swift_task_switch(sub_10022CE1C, 0, 0);
}

uint64_t sub_10022CE1C()
{
  v14 = v0;
  v0[24] = [objc_allocWithZone(AKIconContext) init];
  if (qword_100371BD8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[25] = sub_1001AD2E4(v1, qword_100377698);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[19];
    v4 = v0[20];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_10024B050(v5, v4, &v13);
    _os_log_impl(&_mh_execute_header, v2, v3, "Fetching app icon from AMS for clientID: %s", v6, 0xCu);
    sub_1001AD48C(v7);
  }

  v8 = *(v0[23] + OBJC_IVAR___AKAccountsMetadataController_mediaServicesController);
  v9 = String._bridgeToObjectiveC()();
  v0[26] = v9;
  isa = CGSize._bridgeToObjectiveC()().super.isa;
  v0[27] = isa;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_10022D0BC;
  v11 = swift_continuation_init();
  v0[17] = sub_1001AD17C(&unk_100374230, &unk_10029F5D0);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_10022D3A4;
  v0[13] = &unk_100329480;
  v0[14] = v11;
  [v8 appIconForBundleID:v9 size:isa completion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10022D0BC()
{
  v1 = *(*v0 + 48);
  *(*v0 + 224) = v1;
  if (v1)
  {
    v2 = sub_10022D248;
  }

  else
  {
    v2 = sub_10022D1CC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10022D1CC()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 144);

  v3 = *(v0 + 192);
  if (v2)
  {

    v3 = v2;
  }

  v4 = *(v0 + 8);

  return v4(v3);
}

uint64_t sub_10022D248(uint64_t a1)
{
  v2 = v1[27];
  v3 = v1[26];
  swift_willThrow();

  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v4, v5, "Fetch app icon failed with error: %@", v6, 0xCu);
    sub_1001B4EB8(v7);
  }

  v9 = v1[24];

  swift_willThrow();
  v10 = v1[1];

  return v10();
}

uint64_t sub_10022D3A4(uint64_t a1, void *a2, void *a3)
{
  v5 = *sub_1001B1078((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_1001AD17C(&qword_100373250, qword_10029D0B0);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return _swift_continuation_throwingResumeWithError(v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;
    v9 = a2;

    return swift_continuation_throwingResume();
  }
}

uint64_t sub_10022D610(uint64_t a1, void *aBlock, void *a3, double a4, double a5)
{
  v5[2] = a3;
  v5[3] = _Block_copy(aBlock);
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;
  v5[4] = v10;
  a3;
  v12 = swift_task_alloc();
  v5[5] = v12;
  *v12 = v5;
  v12[1] = sub_10022D6FC;

  return sub_10022CDF4(v9, v11, a4, a5);
}

uint64_t sub_10022D6FC(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 16);
  v7 = *v2;

  v8 = *(v5 + 24);
  if (v3)
  {
    v9 = _convertErrorToNSError(_:)();

    (v8)[2](v8, 0, v9);

    _Block_release(v8);
  }

  else
  {
    (v8)[2](*(v5 + 24), a1, 0);
    _Block_release(v8);
  }

  v10 = *(v7 + 8);

  return v10();
}

uint64_t sub_10022D8B8(uint64_t a1, uint64_t a2)
{
  v3[19] = a2;
  v3[20] = v2;
  v3[18] = a1;
  return _swift_task_switch(sub_10022D8DC, 0, 0);
}

uint64_t sub_10022D8DC()
{
  v1 = *(v0[20] + OBJC_IVAR___AKAccountsMetadataController_mediaServicesController);
  v2 = String._bridgeToObjectiveC()();
  v0[21] = v2;
  v0[2] = v0;
  v0[7] = v0 + 23;
  v0[3] = sub_10022DA20;
  v3 = swift_continuation_init();
  v0[17] = sub_1001AD17C(&qword_100372280, &qword_10029CEF0);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_10022C388;
  v0[13] = &unk_100329458;
  v0[14] = v3;
  [v1 cancelAppIconRequestForBundleID:v2 completion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10022DA20()
{
  v1 = *(*v0 + 48);
  *(*v0 + 176) = v1;
  if (v1)
  {
    v2 = sub_10022DB94;
  }

  else
  {
    v2 = sub_10022DB30;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10022DB30()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10022DB94(uint64_t a1)
{
  v2 = *(v1 + 168);
  swift_willThrow();

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_10022DD8C(uint64_t a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  v3[4] = v6;
  a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_10022DE60;

  return sub_10022D8B8(v5, v7);
}

uint64_t sub_10022DE60()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 16);
  v6 = *v1;

  v7 = *(v3 + 24);
  if (v2)
  {
    v8 = _convertErrorToNSError(_:)();

    (*(v7 + 16))(v7, v8);
  }

  else
  {
    (*(v7 + 16))(*(v3 + 24), 0);
  }

  _Block_release(*(v4 + 24));
  v9 = *(v6 + 8);

  return v9();
}

uint64_t sub_10022E000(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[20] = a3;
  v4[21] = v3;
  v4[18] = a1;
  v4[19] = a2;
  return _swift_task_switch(sub_10022E024, 0, 0);
}

uint64_t sub_10022E024()
{
  v1 = sub_100233EC4(v0[18]);
  v0[22] = v1;
  if (v1[2])
  {
    v2 = swift_task_alloc();
    v0[23] = v2;
    *v2 = v0;
    v2[1] = sub_10022E1C8;
    v3 = v0[20];
    v4 = v0[19];

    return sub_10022EEFC(v4, v3);
  }

  else
  {

    if (qword_100371BD8 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_1001AD2E4(v6, qword_100377698);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "No primary applications found, unable to update primary apps metadata.", v9, 2u);
    }

    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_10022E1C8(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 192) = a1;
  *(v3 + 200) = v1;

  if (v1)
  {
    v4 = sub_10022E898;
  }

  else
  {
    v4 = sub_10022E2DC;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10022E2DC()
{
  v1 = v0[24];
  v2 = v0[22];
  if (*(v1 + 16) <= v2[2] >> 3)
  {
    v9 = v0[22];
    sub_100232C34(v1);

    v3 = v9;
  }

  else
  {
    v3 = sub_100232D60(v0[24], v2);
  }

  v0[26] = v3;
  if (v3[2])
  {
    v4 = swift_task_alloc();
    v0[27] = v4;
    *v4 = v0;
    v4[1] = sub_10022E414;
    v5 = v0[20];
    v6 = v0[19];

    return sub_10022F650(v3, v6, v5);
  }

  else
  {

    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_10022E414(uint64_t a1)
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
    *(v4 + 224) = a1;

    return _swift_task_switch(sub_10022E580, 0, 0);
  }
}

uint64_t sub_10022E580()
{
  v1 = *(v0[21] + OBJC_IVAR___AKAccountsMetadataController_localStorageController);
  sub_100234470(0, &unk_100374210, AKAppiTunesMetadata_ptr);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v0[29] = isa;

  v3 = String._bridgeToObjectiveC()();
  v0[30] = v3;
  v0[2] = v0;
  v0[7] = v0 + 32;
  v0[3] = sub_10022E720;
  v4 = swift_continuation_init();
  v0[17] = sub_1001AD17C(&qword_100372280, &qword_10029CEF0);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_10022C388;
  v0[13] = &unk_100329430;
  v0[14] = v4;
  [v1 updatePrimaryAppsWithAMSAppMetadata:isa withAltDSID:v3 withCompletion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10022E720()
{
  v1 = *(*v0 + 48);
  *(*v0 + 248) = v1;
  if (v1)
  {
    v2 = sub_10022E8FC;
  }

  else
  {
    v2 = sub_10022E830;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10022E830()
{
  v1 = *(v0 + 232);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10022E898()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10022E8FC(uint64_t a1)
{
  v2 = v1[30];
  v3 = v1[29];
  swift_willThrow();

  if (qword_100371BD8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1001AD2E4(v4, qword_100377698);
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
    _os_log_impl(&_mh_execute_header, v5, v6, "Storing primary apps metadata failed with error: %@", v7, 0xCu);
    sub_1001B4EB8(v8);
  }

  swift_willThrow();
  v10 = v1[1];

  return v10();
}

uint64_t sub_10022EC28(uint64_t a1, uint64_t a2, void *aBlock, void *a4)
{
  v4[2] = a4;
  v4[3] = _Block_copy(aBlock);
  sub_100234470(0, &unk_1003741F8, AKDeveloperTeam_ptr);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v4[4] = v6;
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;
  v4[5] = v8;
  a4;
  v10 = swift_task_alloc();
  v4[6] = v10;
  *v10 = v4;
  v10[1] = sub_10022ED38;

  return sub_10022E000(v6, v7, v9);
}

uint64_t sub_10022ED38()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 16);
  v6 = *v1;

  v7 = *(v3 + 24);
  if (v2)
  {
    v8 = _convertErrorToNSError(_:)();

    (*(v7 + 16))(v7, v8);
  }

  else
  {
    (*(v7 + 16))(*(v3 + 24), 0);
  }

  _Block_release(*(v4 + 24));
  v9 = *(v6 + 8);

  return v9();
}

uint64_t sub_10022EEFC(uint64_t a1, uint64_t a2)
{
  v3[20] = a2;
  v3[21] = v2;
  v3[19] = a1;
  return _swift_task_switch(sub_10022EF20, 0, 0);
}

uint64_t sub_10022EF20()
{
  v1 = *(v0[21] + OBJC_IVAR___AKAccountsMetadataController_localStorageController);
  v2 = String._bridgeToObjectiveC()();
  v0[22] = v2;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_10022F064;
  v3 = swift_continuation_init();
  v0[17] = sub_1001AD17C(&unk_100374220, &unk_10029F5C0);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_10022F540;
  v0[13] = &unk_100329408;
  v0[14] = v3;
  [v1 fetchAllPrimaryApplicationMetadataForAltDSID:v2 withCompletion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10022F064()
{
  v1 = *(*v0 + 48);
  *(*v0 + 184) = v1;
  if (v1)
  {
    v2 = sub_10022F4D0;
  }

  else
  {
    v2 = sub_10022F174;
  }

  return _swift_task_switch(v2, 0, 0);
}

char *sub_10022F174()
{
  v1 = *(v0 + 144);

  if (v1 >> 62)
  {
    goto LABEL_36;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v32 = v0;
    v3 = 0;
    while (1)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_35;
        }

        v4 = *(v1 + 8 * v3 + 32);
      }

      v5 = v4;
      v0 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      v6 = [v4 bundleId];
      v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v9 = v8;

      v10 = HIBYTE(v9) & 0xF;
      if ((v9 & 0x2000000000000000) == 0)
      {
        v10 = v7 & 0xFFFFFFFFFFFFLL;
      }

      if (!v10)
      {
        goto LABEL_5;
      }

      v11 = [v5 appName];
      v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v14 = v13;

      v15 = HIBYTE(v14) & 0xF;
      if ((v14 & 0x2000000000000000) == 0)
      {
        v15 = v12 & 0xFFFFFFFFFFFFLL;
      }

      if (v15 && (v16 = [v5 appDeveloperName]) != 0 && (v16, (v17 = objc_msgSend(v5, "adamID")) != 0))
      {

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      else
      {
LABEL_5:
      }

      ++v3;
      if (v0 == i)
      {
        v0 = v32;
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    ;
  }

LABEL_22:

  if ((_swiftEmptyArrayStorage & 0x8000000000000000) != 0 || (_swiftEmptyArrayStorage & 0x4000000000000000) != 0)
  {
    v18 = _CocoaArrayWrapper.endIndex.getter();
    if (!v18)
    {
      goto LABEL_38;
    }
  }

  else
  {
    v18 = _swiftEmptyArrayStorage[2];
    if (!v18)
    {
      goto LABEL_38;
    }
  }

  result = sub_100233A2C(0, v18 & ~(v18 >> 63), 0);
  if (v18 < 0)
  {
    __break(1u);
    return result;
  }

  v20 = 0;
  do
  {
    if ((_swiftEmptyArrayStorage & 0xC000000000000001) != 0)
    {
      v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v21 = _swiftEmptyArrayStorage[v20 + 4];
    }

    v22 = v21;
    v23 = [v21 bundleId];
    v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = v25;

    v28 = _swiftEmptyArrayStorage[2];
    v27 = _swiftEmptyArrayStorage[3];
    if (v28 >= v27 >> 1)
    {
      sub_100233A2C((v27 > 1), v28 + 1, 1);
    }

    ++v20;
    _swiftEmptyArrayStorage[2] = v28 + 1;
    v29 = &_swiftEmptyArrayStorage[2 * v28];
    v29[4] = v24;
    v29[5] = v26;
  }

  while (v18 != v20);
LABEL_38:

  v30 = sub_100233E2C(_swiftEmptyArrayStorage);

  v31 = *(v0 + 8);

  return v31(v30);
}

uint64_t sub_10022F4D0(uint64_t a1)
{
  v2 = *(v1 + 176);
  swift_willThrow();

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_10022F554(uint64_t a1, uint64_t a2, void *a3, unint64_t *a4, void *a5)
{
  v8 = *sub_1001B1078((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_1001AD17C(&qword_100373250, qword_10029D0B0);
    v9 = swift_allocError();
    *v10 = a3;
    v11 = a3;

    return _swift_continuation_throwingResumeWithError(v8, v9);
  }

  else
  {
    sub_100234470(0, a4, a5);
    **(*(v8 + 64) + 40) = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    return swift_continuation_throwingResume();
  }
}

uint64_t sub_10022F650(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[21] = a3;
  v4[22] = v3;
  v4[19] = a1;
  v4[20] = a2;
  return _swift_task_switch(sub_10022F674, 0, 0);
}

uint64_t sub_10022F674()
{
  v11 = v0;
  v1 = v0[19];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = sub_100230ACC(*(v1 + 16), 0);
    v4 = sub_100233C88(&v10, v3 + 4, v2, v1);
    v5 = v10;

    sub_1000184B8(v5);
    if (v4 != v2)
    {
      __break(1u);
    }
  }

  v6 = *(v0[22] + OBJC_IVAR___AKAccountsMetadataController_mediaServicesController);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v0[23] = isa;

  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_10022F848;
  v8 = swift_continuation_init();
  v0[17] = sub_1001AD17C(&qword_100374208, &unk_10029F5B0);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_10022CCF4;
  v0[13] = &unk_1003293E0;
  v0[14] = v8;
  [v6 appMetadataForBundleIDs:isa completion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10022F848()
{
  v1 = *(*v0 + 48);
  *(*v0 + 192) = v1;
  if (v1)
  {
    v2 = sub_10022FD40;
  }

  else
  {
    v2 = sub_10022F958;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10022F958()
{
  v1 = *(v0 + 144);

  *(v0 + 200) = v1;
  v2 = *(v0 + 152);

  sub_10022C26C(v3);
  v5 = v4;
  v6 = *(v2 + 16);
  v7 = *(v0 + 152);
  if (*(v4 + 16) <= v6 >> 3)
  {
    v14 = *(v0 + 152);

    sub_100232C34(v5);

    v8 = v14;
  }

  else
  {

    v8 = sub_100232D60(v5, v7);
  }

  *(v0 + 208) = v8;
  if (v8[2])
  {
    v9 = swift_task_alloc();
    *(v0 + 216) = v9;
    *v9 = v0;
    v9[1] = sub_10022FAD4;
    v10 = *(v0 + 168);
    v11 = *(v0 + 160);

    return sub_10022FFF0(v8, v11, v10);
  }

  else
  {

    v13 = *(v0 + 8);

    return v13(v1);
  }
}

uint64_t sub_10022FAD4(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v3[28] = a1;
  v3[29] = v1;

  if (v1)
  {

    v5 = v3[25];
    v6 = v4[1];

    return v6(v5);
  }

  else
  {

    return _swift_task_switch(sub_10022FC54, 0, 0);
  }
}

uint64_t sub_10022FC54()
{
  v9 = v0;
  v1 = v0[28];
  if (*(v1 + 16))
  {
    v2 = v0[29];
    v3 = v0[25];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = v3;
    sub_1002341B4(v1, sub_100233DE0, 0, isUniquelyReferenced_nonNull_native, &v8);

    v5 = v8;
    if (v2)
    {
    }
  }

  else
  {

    v5 = v0[25];
  }

  v7 = v0[1];

  return v7(v5);
}

uint64_t sub_10022FD40(uint64_t a1)
{
  v2 = v1[23];
  swift_willThrow();

  if (qword_100371BD8 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_1001AD2E4(v3, qword_100377698);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v4, v5, "Fetching app metadata from AMS failed with error: %@", v6, 0xCu);
    sub_1001B4EB8(v7);
  }

  else
  {
  }

  v1[25] = &_swiftEmptyDictionarySingleton;
  v9 = v1[19];

  sub_10022C26C(v10);
  v12 = v11;
  v13 = *(v9 + 16);
  v14 = v1[19];
  if (*(v11 + 16) <= v13 >> 3)
  {
    v21 = v1[19];

    sub_100232C34(v12);

    v15 = v21;
  }

  else
  {

    v15 = sub_100232D60(v12, v14);
  }

  v1[26] = v15;
  if (v15[2])
  {
    v16 = swift_task_alloc();
    v1[27] = v16;
    *v16 = v1;
    v16[1] = sub_10022FAD4;
    v17 = v1[21];
    v18 = v1[20];

    return sub_10022FFF0(v15, v18, v17);
  }

  else
  {

    v20 = v1[1];

    return v20(&_swiftEmptyDictionarySingleton);
  }
}

uint64_t sub_10022FFF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[21] = a3;
  v4[22] = v3;
  v4[19] = a1;
  v4[20] = a2;
  return _swift_task_switch(sub_100230014, 0, 0);
}

uint64_t sub_100230014()
{
  v14 = v0;
  if (qword_100371BD8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1001AD2E4(v1, qword_100377698);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v13 = v5;
    *v4 = 136315138;
    v6 = Set.description.getter();
    v8 = sub_10024B050(v6, v7, &v13);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "Using WWDR client names for bundleIDs : %s", v4, 0xCu);
    sub_1001AD48C(v5);
  }

  v9 = *(v0[22] + OBJC_IVAR___AKAccountsMetadataController_localStorageController);
  v10 = String._bridgeToObjectiveC()();
  v0[23] = v10;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_100230290;
  v11 = swift_continuation_init();
  v0[17] = sub_1001AD17C(&qword_100373620, &qword_10029E4B0);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_10022C54C;
  v0[13] = &unk_1003293B8;
  v0[14] = v11;
  [v9 fetchAllDeveloperTeamsAndApplicationsForAltDSID:v10 withCompletion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_100230290()
{
  v1 = *(*v0 + 48);
  *(*v0 + 192) = v1;
  if (v1)
  {
    v2 = sub_100230538;
  }

  else
  {
    v2 = sub_1002303A0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1002303A0()
{
  v13 = v0;
  v1 = *(v0 + 144);

  v11 = &_swiftEmptyDictionarySingleton;
  if (v1 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v3 = 0;
    while (1)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v4 = *(v1 + 8 * v3 + 32);
      }

      v5 = v4;
      v6 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      v7 = *(v0 + 152);
      v12[0] = v4;
      sub_1002305A8(&v11, v12, v7);

      ++v3;
      if (v6 == i)
      {
        v8 = v11;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

  v8 = &_swiftEmptyDictionarySingleton;
LABEL_15:

  v9 = *(v0 + 8);

  return v9(v8);
}

uint64_t sub_100230538(uint64_t a1)
{
  v2 = *(v1 + 184);
  swift_willThrow();

  v3 = *(v1 + 8);

  return v3();
}

void sub_1002305A8(uint64_t *a1, id *a2, void *a3)
{
  v4 = [*a2 apps];
  sub_100234470(0, &qword_100373630, AKConsentedApplication_ptr);
  v5 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v6 = a3;
  v43 = a3;
  v7 = 0;
  v8 = v5 + 64;
  v9 = 1 << *(v5 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v5 + 64);
  v12 = (v9 + 63) >> 6;
  v40 = v5;
  v41 = v6 + 7;
  while (v11)
  {
LABEL_11:
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v15 = *(*(v5 + 56) + ((v7 << 9) | (8 * v14)));
    v16 = [v15 clientID];
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;

    if (v43[2])
    {
      Hasher.init(_seed:)();
      String.hash(into:)();
      v20 = Hasher._finalize()();
      v21 = -1 << *(v43 + 32);
      v22 = v20 & ~v21;
      if ((*(v41 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22))
      {
        v23 = ~v21;
        while (1)
        {
          v24 = (v43[6] + 16 * v22);
          v25 = *v24 == v17 && v24[1] == v19;
          if (v25 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            break;
          }

          v22 = (v22 + 1) & v23;
          if (((*(v41 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
          {
            goto LABEL_20;
          }
        }

        v26 = [objc_allocWithZone(AKAppiTunesMetadata) init];
        v27 = v15;
        v28 = [v15 clientID];
        if (!v28)
        {
          static String._unconditionallyBridgeFromObjectiveC(_:)();
          v28 = String._bridgeToObjectiveC()();
        }

        [v26 setBundleId:v28];

        v29 = [v15 clientName];
        if (v29)
        {
          v30 = v29;
          if (static String._unconditionallyBridgeFromObjectiveC(_:)() == 1280070990 && v31 == 0xE400000000000000)
          {
          }

          else
          {
            v32 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if ((v32 & 1) == 0)
            {
              [v26 setAppName:v30];
              v27 = v15;
              goto LABEL_32;
            }

            v27 = v15;
          }
        }

        v30 = [v27 clientID];
        if (!v30)
        {
          static String._unconditionallyBridgeFromObjectiveC(_:)();
          v30 = String._bridgeToObjectiveC()();
          v27 = v15;
        }

        [v26 setAppName:v30];
LABEL_32:

        v33 = [v27 clientID];
        v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v35 = v34;

        v36 = v26;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v42 = *a1;
        sub_100231848(v36, v39, v35, isUniquelyReferenced_nonNull_native, &qword_1003741F0, &unk_10029F5A0);

        *a1 = v42;
        v5 = v40;
      }

      else
      {
LABEL_20:

        v5 = v40;
      }
    }

    else
    {
    }
  }

  while (1)
  {
    v13 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v13 >= v12)
    {

      return;
    }

    v11 = *(v8 + 8 * v13);
    ++v7;
    if (v11)
    {
      v7 = v13;
      goto LABEL_11;
    }
  }

  __break(1u);
}

id sub_100230A18()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AccountsMetadataController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void *sub_100230ACC(uint64_t a1, uint64_t a2)
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

  sub_1001AD17C(&qword_1003725B0, &qword_10029D9C0);
  v4 = swift_allocObject();
  v5 = j__malloc_size_1(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

void *sub_100230B50(uint64_t a1, uint64_t a2)
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

  sub_1001AD17C(&qword_100373FB0, qword_10029FA60);
  v4 = swift_allocObject();
  v5 = j__malloc_size_1(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

Swift::Int sub_100230BD8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1001AD17C(&qword_100372838, &qword_10029D400);
  v37 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v5;
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
      v22 = 16 * (v19 | (v8 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = (*(v5 + 56) + v22);
      v27 = v26[1];
      v38 = *v26;
      if ((v37 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = (*(v7 + 56) + v16);
      *v18 = v38;
      v18[1] = v27;
      ++*(v7 + 16);
      v5 = v36;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
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

    if ((v37 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v2;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

Swift::Int sub_100230EAC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1001AD17C(&unk_100372C30, &unk_10029D990);
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

        swift_unknownObjectRetain();
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

Swift::Int sub_100231154(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1001AD17C(&unk_100374240, &unk_10029F630);
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

Swift::Int sub_1002313FC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  sub_1001AD17C(a3, a4);
  v37 = v6;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v9 = result;
  if (*(v7 + 16))
  {
    v36 = v7;
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
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = (*(v7 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(*(v7 + 56) + 8 * v22);
      if ((v37 & 1) == 0)
      {

        v27 = v26;
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v28 = -1 << *(v9 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v16 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v16 + 8 * v30);
          if (v34 != -1)
          {
            v17 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v29) & ~*(v16 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v24;
      v18[1] = v25;
      *(*(v9 + 56) + 8 * v17) = v26;
      ++*(v9 + 16);
      v7 = v36;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v5 = v4;
      goto LABEL_33;
    }

    v35 = 1 << *(v7 + 32);
    v5 = v4;
    if (v35 >= 64)
    {
      bzero(v11, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v35;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v5 = v9;
  return result;
}

void sub_1002316AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_10023A350(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_100230BD8(v18, a5 & 1);
      v13 = sub_10023A350(a3, a4);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_18:
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return;
      }
    }

    else
    {
      v21 = v13;
      sub_100231DA8();
      v13 = v21;
    }
  }

  v23 = *v6;
  if (v19)
  {
    v24 = (v23[7] + 16 * v13);
    *v24 = a1;
    v24[1] = a2;

    return;
  }

  v23[(v13 >> 6) + 8] |= 1 << v13;
  v25 = (v23[6] + 16 * v13);
  *v25 = a3;
  v25[1] = a4;
  v26 = (v23[7] + 16 * v13);
  *v26 = a1;
  v26[1] = a2;
  v27 = v23[2];
  v17 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v23[2] = v28;
}

void sub_100231848(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5, uint64_t *a6)
{
  v9 = v6;
  v14 = *v6;
  v15 = sub_10023A350(a2, a3);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_17;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a4 & 1) == 0)
  {
    if (v22 < v20 || (a4 & 1) != 0)
    {
      sub_1002313FC(v20, a4 & 1, a5, a6);
      v15 = sub_10023A350(a2, a3);
      if ((v21 & 1) != (v24 & 1))
      {
LABEL_18:
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
_objc_release_x1:
        _objc_release_x1();
        return;
      }
    }

    else
    {
      v23 = v15;
      sub_100232214(a5, a6);
      v15 = v23;
    }
  }

  v25 = *v9;
  if (v21)
  {
    *(v25[7] + 8 * v15) = a1;

    goto _objc_release_x1;
  }

  v25[(v15 >> 6) + 8] |= 1 << v15;
  v26 = (v25[6] + 16 * v15);
  *v26 = a2;
  v26[1] = a3;
  *(v25[7] + 8 * v15) = a1;
  v27 = v25[2];
  v19 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v19)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v25[2] = v28;
}