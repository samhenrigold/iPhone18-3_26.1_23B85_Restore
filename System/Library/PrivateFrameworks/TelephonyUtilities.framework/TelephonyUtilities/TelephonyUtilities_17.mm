id sub_100321140(void *a1, id a2, char a3)
{
  v5 = [a2 session];
  [a1 setSmartHoldingSession:v5];

  return [a1 setScreening:a3 & 1];
}

uint64_t sub_1003211C4(void *a1, void *a2, void *a3)
{
  v39 = a3;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1006A0B60 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_10000AF9C(v13, qword_1006BA6A0);
  swift_errorRetain();
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v38 = v12;
    v17 = v16;
    v36 = v16;
    v37 = swift_slowAlloc();
    v40 = a1;
    aBlock[0] = v37;
    *v17 = 136446210;
    swift_errorRetain();
    sub_10026D814(&unk_1006A2610, &qword_10057D4A0);
    v18 = String.init<A>(reflecting:)();
    LOBYTE(v17) = v15;
    v20 = a2;
    v21 = v10;
    v22 = v8;
    v23 = v5;
    v24 = v9;
    v25 = v6;
    v26 = sub_10002741C(v18, v19, aBlock);

    v27 = v36;
    *(v36 + 4) = v26;
    v6 = v25;
    v9 = v24;
    v5 = v23;
    v8 = v22;
    v10 = v21;
    a2 = v20;
    _os_log_impl(&_mh_execute_header, v14, v17, "XPC connection terminated with error %{public}s", v27, 0xCu);
    sub_100009B7C(v37);

    v12 = v38;
  }

  v28 = [a2 queue];
  v29 = swift_allocObject();
  v30 = v39;
  *(v29 + 16) = v39;
  *(v29 + 24) = a2;
  aBlock[4] = sub_100323AA4;
  aBlock[5] = v29;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004CEC;
  aBlock[3] = &unk_1006270F0;
  v31 = _Block_copy(aBlock);
  v32 = v30;
  v33 = a2;
  static DispatchQoS.unspecified.getter();
  v40 = _swiftEmptyArrayStorage;
  sub_10000EE40(&qword_1006A2CC0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
  sub_1000057D0();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v31);

  (*(v6 + 8))(v8, v5);
  (*(v10 + 8))(v12, v9);
}

uint64_t sub_100321610(void *a1, void *a2)
{
  v4 = type metadata accessor for UUID();
  __chkstk_darwin(v4 - 8);
  v6 = aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [a1 uuid];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v8 = [a1 events];
  sub_100006AF0(0, &qword_1006A5708, TUSmartHoldingEvent_ptr);
  v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  LOBYTE(a1) = [a1 isHostedOnCurrentDevice];
  v10 = objc_allocWithZone(TUSmartHoldingSession);
  v11 = sub_100323748(v6, 3, v9, 4, a1);
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = v11;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_100323AAC;
  *(v13 + 24) = v12;
  aBlock[4] = sub_100323ACC;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10002007C;
  aBlock[3] = &unk_100627168;
  v14 = _Block_copy(aBlock);
  v15 = a2;
  v16 = v11;

  [v15 handleUpdatedPropertiesAfterChangesInBlock:v14];

  _Block_release(v14);
  LOBYTE(v15) = swift_isEscapingClosureAtFileLocation();

  if (v15)
  {
    __break(1u);
  }

  return result;
}

uint64_t SmartHoldingController.performRequest(_:for:)()
{
  sub_100006810();
  v1[5] = v2;
  v1[6] = v0;
  v1[4] = v3;
  v4 = type metadata accessor for UUID();
  v1[7] = v4;
  sub_100005EB4(v4);
  v1[8] = v5;
  v1[9] = swift_task_alloc();
  sub_100007BBC();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_1003219D0()
{
  v52 = v0;
  if (qword_1006A0B60 != -1)
  {
    sub_100008464();
    swift_once();
  }

  v1 = *(v0 + 32);
  v2 = type metadata accessor for Logger();
  sub_10000AF9C(v2, qword_1006BA6A0);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 32);
    sub_100007BFC();
    v7 = swift_slowAlloc();
    sub_100015070();
    v8 = swift_slowAlloc();
    v51 = v8;
    *v7 = 136315138;
    *(v0 + 24) = v6;
    sub_100006AF0(0, &qword_1006A5718, TUSmartHoldingRequest_ptr);
    v9 = v6;
    v10 = String.init<A>(reflecting:)();
    v12 = sub_10002741C(v10, v11, &v51);

    *(v7 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v4, v5, "Performing TUSmartHoldingRequest %s", v7, 0xCu);
    sub_100009B7C(v8);
    sub_100009ED0();

    sub_100009ED0();
  }

  v13 = *(v0 + 32);
  v14 = [v13 callUUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  switch([v13 requestType])
  {
    case 1uLL:
      v15 = swift_task_alloc();
      *(v0 + 80) = v15;
      *v15 = v0;
      sub_10001138C(v15);
      sub_100005F24();

      return WaitOnHoldController.startHoldDetection(callUUID:)();
    case 2uLL:
      v26 = swift_task_alloc();
      *(v0 + 96) = v26;
      *v26 = v0;
      sub_10001138C(v26);
      sub_100005F24();

      return WaitOnHoldController.stopHoldDetection(callUUID:)();
    case 3uLL:
      v17 = [*(v0 + 40) handle];
      if (!v17)
      {
        v41 = Logger.logObject.getter();
        v42 = static os_log_type_t.fault.getter();
        v43 = os_log_type_enabled(v41, v42);
        v45 = *(v0 + 64);
        v44 = *(v0 + 72);
        v46 = *(v0 + 56);
        if (v43)
        {
          v47 = swift_slowAlloc();
          *v47 = 0;
          _os_log_impl(&_mh_execute_header, v41, v42, "Failed to start call screening: remote handle is nil", v47, 2u);
          sub_100009ED0();
        }

        (*(v45 + 8))(v44, v46);
LABEL_25:

        sub_100009EF4();
        sub_100005F24();

        __asm { BRAA            X1, X16 }
      }

      v18 = v17;
      v19 = sub_1003722B8();
      v21 = v20;

      *(v0 + 112) = v19;
      *(v0 + 120) = v21;
      v22 = swift_task_alloc();
      *(v0 + 128) = v22;
      *v22 = v0;
      sub_10001138C(v22);
      sub_100005F24();

      return WaitOnHoldController.startScreening(callUUID:)();
    case 4uLL:
      v24 = swift_task_alloc();
      *(v0 + 144) = v24;
      *v24 = v0;
      v24[1] = sub_1003223DC;
      sub_100005F24();

      return sub_100322A04();
    default:
      v28 = *(v0 + 32);
      v29 = Logger.logObject.getter();
      v30 = static os_log_type_t.default.getter();

      v31 = os_log_type_enabled(v29, v30);
      v33 = *(v0 + 64);
      v32 = *(v0 + 72);
      v34 = *(v0 + 56);
      if (v31)
      {
        v35 = *(v0 + 32);
        sub_100007BFC();
        v36 = swift_slowAlloc();
        sub_100015070();
        v37 = swift_slowAlloc();
        v51 = v37;
        *v36 = 136315138;
        *(v0 + 16) = [v35 requestType];
        type metadata accessor for TUSmartHoldingRequestType(0);
        v38 = String.init<A>(reflecting:)();
        v40 = sub_10002741C(v38, v39, &v51);

        *(v36 + 4) = v40;
        _os_log_impl(&_mh_execute_header, v29, v30, "Unknown TUSmartHoldingRequestType %s", v36, 0xCu);
        sub_100009B7C(v37);
        sub_100009ED0();

        sub_100009ED0();
      }

      (*(v33 + 8))(v32, v34);
      goto LABEL_25;
  }
}

uint64_t sub_100321F7C()
{
  sub_100006810();
  sub_100005F18();
  sub_100007BC8();
  *v3 = v2;
  v4 = *v1;
  sub_100008060();
  *v5 = v4;
  *(v6 + 88) = v0;

  sub_100007BBC();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_100322078()
{
  sub_100006810();
  (*(v0[8] + 8))(v0[9], v0[7]);

  sub_100009EF4();

  return v1();
}

uint64_t sub_1003220EC()
{
  sub_100006810();
  sub_100005F18();
  sub_100007BC8();
  *v3 = v2;
  v4 = *v1;
  sub_100008060();
  *v5 = v4;
  *(v6 + 104) = v0;

  sub_100007BBC();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_1003221E8()
{
  sub_100006810();
  sub_100005F18();
  v3 = v2;
  sub_100007BC8();
  *v4 = v3;
  v5 = *v1;
  sub_100008060();
  *v6 = v5;
  *(v3 + 136) = v0;

  if (v0)
  {
  }

  sub_100007BBC();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_1003222EC()
{
  v1 = [*(v0 + 40) handle];
  if (v1)
  {
    v2 = sub_100323940(v1);
    v4 = v3;
  }

  else
  {
    v2 = 0;
    v4 = 0;
  }

  v6 = *(v0 + 64);
  v5 = *(v0 + 72);
  v7 = *(v0 + 56);
  sub_1003B13B8(*(v0 + 112), *(v0 + 120), v2, v4);

  (*(v6 + 8))(v5, v7);

  sub_100009EF4();

  return v8();
}

uint64_t sub_1003223DC()
{
  sub_100006810();
  sub_100005F18();
  sub_100007BC8();
  *v3 = v2;
  v4 = *v1;
  sub_100008060();
  *v5 = v4;
  *(v6 + 152) = v0;

  sub_100007BBC();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_1003224D8()
{
  sub_100006810();
  v0 = sub_10000A800();
  v1(v0);

  sub_100009EF4();

  return v2();
}

uint64_t sub_100322544()
{
  sub_100006810();
  v0 = sub_10000A800();
  v1(v0);

  sub_100009EF4();

  return v2();
}

uint64_t sub_1003225B0()
{
  sub_100006810();
  v0 = sub_10000A800();
  v1(v0);

  sub_100009EF4();

  return v2();
}

uint64_t sub_10032261C()
{
  sub_100006810();
  v0 = sub_10000A800();
  v1(v0);

  sub_100009EF4();

  return v2();
}

uint64_t sub_100322720(void *a1, void *a2, void *aBlock, void *a4)
{
  v4[3] = a2;
  v4[4] = a4;
  v4[2] = a1;
  v4[5] = _Block_copy(aBlock);
  v8 = a1;
  v9 = a2;
  a4;
  v10 = swift_task_alloc();
  v4[6] = v10;
  *v10 = v4;
  v10[1] = sub_1003227F8;

  return SmartHoldingController.performRequest(_:for:)();
}

uint64_t sub_1003227F8()
{
  v2 = v0;
  v3 = *v1;
  v4 = *v1;
  sub_100008060();
  *v5 = v4;
  v6 = v3[4];
  v7 = v3[3];
  v8 = v3[2];
  v9 = *v1;
  *v5 = *v1;

  v10 = v3[5];
  if (v2)
  {
    v11 = _convertErrorToNSError(_:)();

    (*(v10 + 16))(v10, v11);
  }

  else
  {
    (*(v10 + 16))(v3[5], 0);
  }

  _Block_release(v4[5]);
  v12 = v9[1];

  return v12();
}

id sub_1003229AC(void *a1)
{
  result = [a1 session];
  if (result)
  {
    v2 = result;
    v3 = [result state];

    return (!v3 || v3 == 3);
  }

  return result;
}

uint64_t sub_100322A04()
{
  sub_100006810();
  v1[9] = v2;
  v1[10] = v0;
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v1[11] = v3;
  sub_100005EB4(v3);
  v1[12] = v4;
  v1[13] = swift_task_alloc();
  v5 = type metadata accessor for DispatchQoS();
  v1[14] = v5;
  sub_100005EB4(v5);
  v1[15] = v6;
  v1[16] = swift_task_alloc();
  v7 = type metadata accessor for UUID();
  v1[17] = v7;
  sub_100005EB4(v7);
  v1[18] = v8;
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  sub_100007BBC();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_100322B74()
{
  v1 = [*(v0 + 72) uniqueProxyIdentifierUUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v2 = swift_task_alloc();
  *(v0 + 176) = v2;
  *v2 = v0;
  v2[1] = sub_100322C4C;
  v3 = *(v0 + 168);

  return WaitOnHoldController.endScreening(callUUID:)(v3);
}

uint64_t sub_100322C4C()
{
  sub_100006810();
  sub_100005F18();
  sub_100007BC8();
  *v3 = v2;
  v4 = *v1;
  sub_100008060();
  *v5 = v4;
  *(v6 + 184) = v0;

  sub_100007BBC();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_100322D48()
{
  v1 = v0[21];
  v2 = v0[18];
  v3 = v0[17];
  sub_1003B1B7C();
  (*(v2 + 8))(v1, v3);

  sub_100009EF4();

  return v4();
}

uint64_t sub_100322E1C()
{
  v57 = v0;
  if (qword_1006A0B60 != -1)
  {
    sub_100008464();
    swift_once();
  }

  v1 = *(v0 + 160);
  v2 = *(v0 + 168);
  v3 = *(v0 + 136);
  v4 = *(v0 + 144);
  v5 = type metadata accessor for Logger();
  sub_10000AF9C(v5, qword_1006BA6A0);
  v54 = *(v4 + 16);
  v54(v1, v2, v3);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();
  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 160);
  v11 = *(v0 + 136);
  v10 = *(v0 + 144);
  if (v8)
  {
    sub_100007BFC();
    v12 = swift_slowAlloc();
    sub_100015070();
    v50 = swift_slowAlloc();
    v56[0] = v50;
    *v12 = 136446210;
    sub_1000181A8();
    sub_10000EE40(v13, v14, &protocol conformance descriptor for UUID);
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v17 = v16;
    v18 = *(v10 + 8);
    v18(v9, v11);
    v19 = sub_10002741C(v15, v17, v56);

    *(v12 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v6, v7, "Error stopping smart holding for call %{public}s", v12, 0xCu);
    sub_100009B7C(v50);
    sub_100009ED0();

    sub_100009ED0();
  }

  else
  {

    v18 = *(v10 + 8);
    v18(v9, v11);
  }

  v20 = [*(v0 + 72) smartHoldingSession];
  if (v20)
  {
    v21 = v20;
    if ([v20 isHostedOnCurrentDevice])
    {
      v22 = (v0 + 16);
      v54(*(v0 + 152), *(v0 + 168), *(v0 + 136));
      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.default.getter();
      v25 = os_log_type_enabled(v23, v24);
      v26 = *(v0 + 152);
      v27 = *(v0 + 136);
      v53 = v18;
      if (v25)
      {
        sub_100007BFC();
        v28 = swift_slowAlloc();
        sub_100015070();
        v51 = swift_slowAlloc();
        v56[0] = v51;
        *v28 = 136446210;
        sub_1000181A8();
        sub_10000EE40(v29, v30, &protocol conformance descriptor for UUID);
        v31 = dispatch thunk of CustomStringConvertible.description.getter();
        v32 = v18;
        v33 = v31;
        v35 = v34;
        v32(v26, v27);
        v36 = sub_10002741C(v33, v35, v56);
        v22 = (v0 + 16);

        *(v28 + 4) = v36;
        _os_log_impl(&_mh_execute_header, v23, v24, "Resetting hosted TUSmartHoldingSession for call %{public}s", v28, 0xCu);
        sub_100009B7C(v51);
        sub_100009ED0();

        sub_100009ED0();
      }

      else
      {

        v18(v26, v27);
      }

      v38 = *(v0 + 120);
      v37 = *(v0 + 128);
      v39 = *(v0 + 104);
      v55 = *(v0 + 112);
      v40 = *(v0 + 88);
      v41 = *(v0 + 96);
      v42 = *(v0 + 72);
      v52 = [v42 queue];
      v43 = swift_allocObject();
      *(v43 + 16) = v42;
      *(v0 + 48) = sub_100323A94;
      *(v0 + 56) = v43;
      *(v0 + 16) = _NSConcreteStackBlock;
      *(v0 + 24) = 1107296256;
      *(v0 + 32) = sub_100004CEC;
      *(v0 + 40) = &unk_100627028;
      v44 = _Block_copy(v22);
      v45 = v42;
      static DispatchQoS.unspecified.getter();
      *(v0 + 64) = _swiftEmptyArrayStorage;
      sub_10000EE40(&qword_1006A2CC0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
      sub_1000057D0();
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v44);

      (*(v41 + 8))(v39, v40);
      (*(v38 + 8))(v37, v55);

      v18 = v53;
    }

    else
    {
    }
  }

  v46 = *(v0 + 168);
  v47 = *(v0 + 136);
  swift_willThrow();
  v18(v46, v47);

  sub_100009EF4();

  return v48();
}

uint64_t sub_1003233C8(void *a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_100323A9C;
  *(v3 + 24) = v2;
  v7[4] = sub_100323ACC;
  v7[5] = v3;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 1107296256;
  v7[2] = sub_10002007C;
  v7[3] = &unk_1006270A0;
  v4 = _Block_copy(v7);
  v5 = a1;

  [v5 handleUpdatedPropertiesAfterChangesInBlock:v4];
  _Block_release(v4);
  LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

  if (v5)
  {
    __break(1u);
  }

  return result;
}

id sub_100323520(void *a1)
{
  [a1 setSmartHoldingSession:0];

  return [a1 setScreening:0];
}

id SmartHoldingController.init()()
{
  v1 = v0;
  v2 = OBJC_IVAR___CSDSmartHoldingController_controller;
  type metadata accessor for WaitOnHoldController();
  *&v0[v2] = WaitOnHoldController.__allocating_init()();
  v3 = OBJC_IVAR___CSDSmartHoldingController_analyticsHelper;
  *&v1[v3] = [objc_allocWithZone(type metadata accessor for SmartHoldingAnalyticsHelper(0)) init];
  v5.receiver = v1;
  v5.super_class = type metadata accessor for SmartHoldingController();
  return objc_msgSendSuper2(&v5, "init");
}

id SmartHoldingController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SmartHoldingController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_100323698(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = String._bridgeToObjectiveC()();

  if (a4)
  {
    v8.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v8.super.isa = 0;
  }

  v9 = [v4 initWithDomain:v7 code:a3 userInfo:v8.super.isa];

  return v9;
}

id sub_100323748(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  isa = UUID._bridgeToObjectiveC()().super.isa;
  sub_100006AF0(0, &qword_1006A5708, TUSmartHoldingEvent_ptr);
  v12 = Array._bridgeToObjectiveC()().super.isa;

  v13 = [v6 initWithUUID:isa state:a2 events:v12 requiresUserAttentionReason:a4 hostedOnCurrentDevice:a5 & 1];

  v14 = type metadata accessor for UUID();
  (*(*(v14 - 8) + 8))(a1, v14);
  return v13;
}

char *sub_100323838(char *result, int64_t a2, char a3, char *a4)
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
    sub_10026D814(&qword_1006A5748, &qword_100580558);
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
    if (v10 != a4 || &v13[v8] <= v12)
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

uint64_t sub_100323940(void *a1)
{
  v2 = [a1 isoCountryCode];

  if (!v2)
  {
    return 0;
  }

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_1003239D4()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100035FE4;

  return sub_100322720(v2, v3, v5, v4);
}

uint64_t sub_100323AE4()
{
  type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  sub_100007FEC();
  v31 = v2;
  v32 = v1;
  __chkstk_darwin(v1);
  sub_100007FDC();
  v30 = v4 - v3;
  v5 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v5);
  sub_100007FDC();
  v6 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v6 - 8);
  sub_100007FDC();
  v7 = [BiomeLibrary() CommApps];
  swift_unknownObjectRelease();
  v8 = [v7 CallIntelligence];
  swift_unknownObjectRelease();
  v9 = [v8 HoldAssistFedStats];
  swift_unknownObjectRelease();
  *(v0 + 16) = v9;
  sub_100006AF0(0, &qword_1006A31A0, OS_dispatch_queue_ptr);
  static DispatchQoS.unspecified.getter();
  aBlock = _swiftEmptyArrayStorage;
  sub_10000EE88(&qword_1006A0CB0, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_10026D814(&qword_1006A31B0, &unk_10057E920);
  sub_100018040(&qword_1006A0CC0, &qword_1006A31B0, &unk_10057E920);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v31 + 104))(v30, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v32);
  v10 = v29;
  v11 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(v29 + 24) = v11;
  *(v29 + 32) = -1;
  v12 = swift_allocObject();
  swift_weakInit();
  v37 = sub_100324CAC;
  v38 = v12;
  aBlock = _NSConcreteStackBlock;
  v34 = 1107296256;
  v35 = sub_100272204;
  v36 = &unk_100627208;
  v13 = _Block_copy(&aBlock);
  v14 = v11;

  v15 = String.utf8CString.getter();
  swift_beginAccess();
  v16 = notify_register_dispatch((v15 + 32), (v29 + 32), v14, v13);
  swift_endAccess();

  _Block_release(v13);

  if (v16 || *(v29 + 32) == -1 || (v22 = *(v29 + 24), v23 = swift_allocObject(), swift_weakInit(), v37 = sub_100324CD0, v38 = v23, aBlock = _NSConcreteStackBlock, v34 = 1107296256, v35 = sub_100272204, v36 = &unk_100627230, v24 = _Block_copy(&aBlock), v25 = v22, , v26 = String.utf8CString.getter(), swift_beginAccess(), v27 = notify_register_dispatch((v26 + 32), (v29 + 36), v25, v24), swift_endAccess(), , _Block_release(v24), v25, v27))
  {
  }

  else
  {
    v28 = *(v29 + 36);

    if (v28 != -1)
    {
      return v10;
    }
  }

  if (qword_1006A0B60 != -1)
  {
    sub_100008478(&qword_1006A0B60);
  }

  v17 = type metadata accessor for Logger();
  sub_10000AF9C(v17, qword_1006BA6A0);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&_mh_execute_header, v18, v19, "BiomeStream: Failed to initialize stream: Failed to register for darwin notification", v20, 2u);
  }

  return 0;
}

uint64_t sub_1003240B4()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  sub_100007FEC();
  v3 = v2;
  __chkstk_darwin(v4);
  sub_100007FDC();
  v7 = v6 - v5;
  v19 = type metadata accessor for DispatchQoS();
  sub_100007FEC();
  v9 = v8;
  __chkstk_darwin(v10);
  sub_100007FDC();
  v13 = v12 - v11;
  v23 = sub_100324CF4;
  v24 = v0;
  sub_100009FE4();
  sub_1000081D4(COERCE_DOUBLE(1107296256));
  v21 = v14;
  v22 = &unk_100627258;
  v15 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  sub_10000A814();
  sub_10000EE88(v16, v17, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
  sub_100018040(&qword_1006A2CD0, &unk_1006A2960, &unk_10057D6E0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v15);
  (*(v3 + 8))(v7, v1);
  (*(v9 + 8))(v13, v19);
}

uint64_t sub_1003242F4(uint64_t a1, uint64_t a2, const char *a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (qword_1006A0B60 != -1)
    {
      sub_100008478(&qword_1006A0B60);
    }

    v5 = type metadata accessor for Logger();
    sub_10000AF9C(v5, qword_1006BA6A0);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, a3, v8, 2u);
    }

    sub_1003240B4();
  }

  return result;
}

uint64_t sub_100324404(uint64_t a1)
{
  if (qword_1006A0B60 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000AF9C(v2, qword_1006BA6A0);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "BiomeStream: Deleting all events...", v5, 2u);
  }

  v6 = [*(a1 + 16) pruner];
  v7 = String._bridgeToObjectiveC()();
  v10[4] = sub_1002DBF48;
  v10[5] = 0;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_1003245E0;
  v10[3] = &unk_100627280;
  v8 = _Block_copy(v10);

  [v6 deleteWithPolicy:v7 eventsPassingTest:v8];

  _Block_release(v8);
  result = swift_isEscapingClosureAtFileLocation();
  if (result)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1003245E0(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  LOBYTE(a3) = v5(a2, a3);

  return a3 & 1;
}

uint64_t sub_10032463C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, unint64_t a7, unint64_t a8)
{
  v40 = type metadata accessor for DispatchWorkItemFlags();
  sub_100007FEC();
  v43 = v13;
  __chkstk_darwin(v14);
  sub_100007FDC();
  v17 = v16 - v15;
  type metadata accessor for DispatchQoS();
  sub_100007FEC();
  v41 = v19;
  v42 = v18;
  __chkstk_darwin(v18);
  sub_100007FDC();
  v22 = v21 - v20;
  sub_100006AF0(0, &qword_1006A3480, NSNumber_ptr);
  isa = NSNumber.init(integerLiteral:)(1).super.super.isa;
  v24 = Int._bridgeToObjectiveC()().super.super.isa;
  v25 = sub_100324978(a8);
  v26 = sub_100324984(a7);
  v27 = sub_1003249A4(a6);
  v28 = objc_allocWithZone(BMCommAppsHoldAssistFedStats);

  v29 = sub_100324BB0(isa, a1, a2, v24, v25, v26, v27, a3, a4);
  v30 = swift_allocObject();
  *(v30 + 16) = v39;
  *(v30 + 24) = v29;
  v47 = sub_100324CA4;
  v48 = v30;
  sub_100009FE4();
  sub_1000081D4(COERCE_DOUBLE(1107296256));
  v45 = v31;
  v46 = &unk_1006271B8;
  v32 = _Block_copy(aBlock);

  v33 = v29;
  static DispatchQoS.unspecified.getter();
  sub_10000A814();
  sub_10000EE88(v34, v35, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
  sub_100018040(&qword_1006A2CD0, &unk_1006A2960, &unk_10057D6E0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v32);

  (*(v43 + 8))(v17, v40);
  (*(v41 + 8))(v22, v42);
}

uint64_t sub_100324978(unint64_t a1)
{
  if (a1 < 5)
  {
    return (a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100324984(unint64_t a1)
{
  if (a1 > 3)
  {
    return 0;
  }

  else
  {
    return dword_1005805A0[a1];
  }
}

uint64_t sub_1003249A4(unint64_t a1)
{
  if (a1 < 6)
  {
    return (a1 + 1);
  }

  else
  {
    return 0;
  }
}

void sub_1003249B0(uint64_t a1, uint64_t a2)
{
  if (qword_1006A0B60 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000AF9C(v4, qword_1006BA6A0);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "BiomeStream: Donating event...", v7, 2u);
  }

  v8 = [*(a1 + 16) source];
  [v8 sendEvent:a2];
}

uint64_t sub_100324AE0()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
  if (v1 != -1)
  {
    notify_cancel(v1);
  }

  swift_beginAccess();
  v2 = *(v0 + 36);
  if (v2 != -1)
  {
    notify_cancel(v2);
  }

  return v0;
}

uint64_t sub_100324B58()
{
  sub_100324AE0();

  return _swift_deallocClassInstance(v0, 40, 7);
}

id sub_100324BB0(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = v9;
  if (!a3)
  {
    v16 = 0;
    if (a9)
    {
      goto LABEL_3;
    }

LABEL_5:
    v17 = 0;
    goto LABEL_6;
  }

  v16 = String._bridgeToObjectiveC()();

  if (!a9)
  {
    goto LABEL_5;
  }

LABEL_3:
  v17 = String._bridgeToObjectiveC()();

LABEL_6:
  v18 = [v10 initWithProtoVersion:a1 remotePhoneNumber:v16 holdDuration:a4 holdAssistMLClassification:a5 holdAssistRecommendation:a6 holdAssistObservation:a7 remotePhoneNumberCountryCode:v17];

  return v18;
}

id sub_100324D04()
{
  v0 = objc_opt_self();
  result = [v0 sharedInstance];
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  v2 = result;
  v3 = [result faceTimeBlocked];

  result = [v0 sharedInstance];
  if (!result)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v4 = result;
  v5 = [result faceTimeSupported];

  if (qword_1006A0AF8 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_10000AF9C(v6, qword_1006BA568);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 67109376;
    *(v9 + 4) = v3;
    *(v9 + 8) = 1024;
    *(v9 + 10) = v5;
    _os_log_impl(&_mh_execute_header, v7, v8, "isBlocked: %{BOOL}d, isSupported: %{BOOL}d", v9, 0xEu);
  }

  return (v3 & 1 | ((v5 & 1) == 0));
}

id sub_100324E7C()
{
  result = [objc_opt_self() sharedConnection];
  if (result)
  {
    v1 = result;
    v2 = [result isVideoConferencingAllowed];

    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_100324EF8()
{
  v0 = objc_allocWithZone(LSApplicationRecord);
  v1 = sub_100428E24(0xD000000000000012, 0x80000001005610A0, 1);
  v2 = [v1 applicationState];
  v3 = [v2 isInstalled];

  if (qword_1006A0AF8 != -1)
  {
    sub_1000083DC(&qword_1006A0AF8);
  }

  v4 = type metadata accessor for Logger();
  sub_10000AF9C(v4, qword_1006BA568);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (sub_10000D654(v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 67109120;
    v7[1] = v3;
    sub_1000079AC();
    _os_log_impl(v8, v9, v10, v11, v12, 8u);
    sub_100006868();
  }

  return v3;
}

char *sub_10032503C(void *a1)
{
  v2 = objc_allocWithZone(type metadata accessor for ProcessObserver());
  v3 = a1;
  v4 = sub_1002F344C(&off_1006209B0, v3);
  v5 = objc_allocWithZone(type metadata accessor for FaceTimeInstallationNotifier());
  v6 = sub_100326798(v3, sub_1003250F0, 0, 0, v4, v5);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v6;
}

void sub_10032515C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a1)
  {
    v13 = a1;
  }

  else
  {
    v13 = [objc_allocWithZone(CSDDeviceLockStateObserver) initWithQueue:a2];
  }

  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v15 = swift_allocObject();
  v15[2] = v14;
  v15[3] = a4;
  v15[4] = a5;
  v15[5] = a6;
  v15[6] = a7;
  v19[4] = sub_100326C18;
  v19[5] = v15;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 1107296256;
  v19[2] = sub_100004CEC;
  v19[3] = &unk_100627410;
  v16 = _Block_copy(v19);
  v17 = a1;

  swift_unknownObjectRetain();

  [v13 performBlockAfterFirstUnlock:v16];
  _Block_release(v16);
  v18 = *(a3 + OBJC_IVAR___CSDFaceTimeInstallationNotifier_lockStateObserver);
  *(a3 + OBJC_IVAR___CSDFaceTimeInstallationNotifier_lockStateObserver) = v13;
}

void sub_1003252D8(uint64_t a1, void (*a2)(__int128 *__return_ptr), uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = OBJC_IVAR___CSDFaceTimeInstallationNotifier_storage;
    swift_beginAccess();
    sub_100009934(v8 + v9, &aBlock);

    if (*(&v47 + 1))
    {
      sub_1000099A4(&aBlock, &qword_1006A5868, &unk_1005805F0);
      goto LABEL_7;
    }
  }

  else
  {
    v48 = 0;
    aBlock = 0u;
    v47 = 0u;
  }

  sub_1000099A4(&aBlock, &qword_1006A5868, &unk_1005805F0);
  swift_beginAccess();
  v10 = swift_unknownObjectWeakLoadStrong();
  if (v10)
  {
    v11 = v10;
    a2(&aBlock);
    v12 = OBJC_IVAR___CSDFaceTimeInstallationNotifier_storage;
    swift_beginAccess();
    sub_100326B84(&aBlock, v11 + v12);
    swift_endAccess();
  }

LABEL_7:
  if (qword_1006A0AF8 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_10000AF9C(v13, qword_1006BA568);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 67109120;
    *(v16 + 4) = sub_100324EF8() & 1;
    _os_log_impl(&_mh_execute_header, v14, v15, "isFaceTimeInstalled: %{BOOL}d", v16, 8u);
  }

  swift_beginAccess();
  v17 = swift_unknownObjectWeakLoadStrong();
  if (v17)
  {
    v18 = v17;
    v19 = OBJC_IVAR___CSDFaceTimeInstallationNotifier_storage;
    swift_beginAccess();
    sub_100009934(v18 + v19, &aBlock);

    if (*(&v47 + 1))
    {
      sub_100009AB0(&aBlock, v43);
      sub_1000099A4(&aBlock, &qword_1006A5868, &unk_1005805F0);
      v20 = v44;
      v21 = v45;
      sub_100009B14(v43, v44);
      (*(v21 + 16))(v50, &type metadata for Bool, 0xD00000000000001ELL, 0x800000010056B530, &type metadata for Bool, v20, v21);
      v22 = LOBYTE(v50[0]);
      sub_100009B7C(v43);
      if (v22 != 2 && (v22 & 1) != 0)
      {
        return;
      }
    }

    else
    {
      sub_1000099A4(&aBlock, &qword_1006A5868, &unk_1005805F0);
    }
  }

  swift_beginAccess();
  v23 = swift_unknownObjectWeakLoadStrong();
  if (!v23 || (v24 = v23, v25 = sub_100009BC8(), v24, (v25 & 1) != 0))
  {
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&_mh_execute_header, v26, v27, "Skipping to setup xpc activity since FaceTime is blocked on this device", v28, 2u);
    }

    goto LABEL_31;
  }

  swift_beginAccess();
  v29 = swift_unknownObjectWeakLoadStrong();
  if (v29)
  {
    v30 = v29;
    sub_100325FA0();
  }

  swift_beginAccess();
  v31 = swift_unknownObjectWeakLoadStrong();
  if (v31)
  {
    v32 = v31;
    *(v31 + OBJC_IVAR___CSDFaceTimeInstallationNotifier_phoneProcessObserver) = a4;
    swift_unknownObjectRetain();

    swift_unknownObjectRelease();
  }

  swift_beginAccess();
  v33 = swift_unknownObjectWeakLoadStrong();
  if (v33)
  {
    v34 = v33;
    v35 = *(v33 + OBJC_IVAR___CSDFaceTimeInstallationNotifier_phoneProcessObserver);
    swift_unknownObjectRetain();

    if (v35)
    {
      v36 = swift_allocObject();
      swift_beginAccess();
      v37 = swift_unknownObjectWeakLoadStrong();
      swift_unknownObjectWeakInit();

      v48 = sub_100007168;
      v49 = v36;
      *&aBlock = _NSConcreteStackBlock;
      *(&aBlock + 1) = 1107296256;
      *&v47 = sub_100008E3C;
      *(&v47 + 1) = &unk_100627438;
      v38 = _Block_copy(&aBlock);

      [v35 setProcessStateChanged:v38];
      _Block_release(v38);
      swift_unknownObjectRelease();
    }
  }

  swift_beginAccess();
  v39 = swift_unknownObjectWeakLoadStrong();
  if (v39)
  {
    v40 = v39;
    v41 = *(v39 + OBJC_IVAR___CSDFaceTimeInstallationNotifier_phoneProcessObserver);
    swift_unknownObjectRetain();

    if (v41)
    {
      v26 = String._bridgeToObjectiveC()();
      v48 = sub_100326C28;
      v49 = a1;
      *&aBlock = _NSConcreteStackBlock;
      *(&aBlock + 1) = 1107296256;
      *&v47 = sub_10032597C;
      *(&v47 + 1) = &unk_100627460;
      v42 = _Block_copy(&aBlock);

      [v41 fetchCurrentProcessStatesForBundleIdentifier:v26 completion:v42];
      swift_unknownObjectRelease();
      _Block_release(v42);
LABEL_31:
    }
  }
}

void sub_100325918(uint64_t a1, uint64_t a2)
{
  v2 = sub_1002E8C5C(a1);
  if ((v3 & 1) == 0 && v2 == 4)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v5 = Strong;
      sub_100008EB4();
    }
  }
}

uint64_t sub_10032597C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v2(v3);
}

void sub_1003259FC(uint64_t a1)
{
  v21 = a1;
  v20 = type metadata accessor for UUID();
  v1 = *(v20 - 8);
  __chkstk_darwin(v20);
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = Dictionary.init(dictionaryLiteral:)();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_10031E958(0xD00000000000001BLL, 0x800000010056B5C0);
  v5 = String.init(format:_:)();
  v7 = v6;

  v25 = &type metadata for String;
  *&v24 = v5;
  *(&v24 + 1) = v7;
  sub_10003EBF0(&v24, v23);
  swift_isUniquelyReferenced_nonNull_native();
  v22 = v4;
  sub_100040430();

  v8 = v22;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_10031E958(0xD00000000000001DLL, 0x800000010056B5E0);
  v9 = String.init(format:_:)();
  v11 = v10;

  v25 = &type metadata for String;
  *&v24 = v9;
  *(&v24 + 1) = v11;
  sub_10003EBF0(&v24, v23);
  swift_isUniquelyReferenced_nonNull_native();
  v22 = v8;
  sub_100040430();

  v12 = v22;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = sub_10031E958(0xD000000000000025, 0x800000010056B600);
  v25 = &type metadata for String;
  *&v24 = v13;
  *(&v24 + 1) = v14;
  sub_10003EBF0(&v24, v23);
  swift_isUniquelyReferenced_nonNull_native();
  v22 = v12;
  sub_100040430();

  v15 = v22;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = sub_10031E958(0xD000000000000023, 0x800000010056B630);
  v25 = &type metadata for String;
  *&v24 = v16;
  *(&v24 + 1) = v17;
  sub_10003EBF0(&v24, v23);
  swift_isUniquelyReferenced_nonNull_native();
  v22 = v15;
  sub_100040430();

  sub_100006AF0(0, &qword_1006A6750, IMUserNotificationCenter_ptr);
  v18 = static IMUserNotificationCenter.shared.getter();
  UUID.init()();
  UUID.uuidString.getter();
  (*(v1 + 8))(v3, v20);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(swift_allocObject() + 16) = v21;
  IMUserNotificationCenter.postNotification(withIdentifier:bundleIdentifier:displayInformation:showsIcon:completionHandler:)();
}

void sub_100325DEC(uint64_t a1)
{
  if (a1)
  {
    if (qword_1006A0AF8 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_10000AF9C(v1, qword_1006BA568);
    oslog = Logger.logObject.getter();
    v2 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v2))
    {
      v3 = swift_slowAlloc();
      *v3 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v2, "Not ending ScreenSharing because user didn't choose to end", v3, 2u);
    }
  }

  else
  {
    if (qword_1006A0AF8 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_10000AF9C(v4, qword_1006BA568);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "User tapped on App store button.", v7, 2u);
    }

    sub_1003262AC();
  }
}

uint64_t sub_100325FA0()
{
  empty = xpc_dictionary_create_empty();
  xpc_dictionary_set_string(empty, XPC_ACTIVITY_PRIORITY, XPC_ACTIVITY_PRIORITY_UTILITY);
  xpc_dictionary_set_BOOL(empty, XPC_ACTIVITY_ALLOW_BATTERY, 1);
  xpc_dictionary_set_int64(empty, XPC_ACTIVITY_INTERVAL, XPC_ACTIVITY_INTERVAL_1_DAY);
  if (qword_1006A0AF8 != -1)
  {
    sub_1000083DC(&qword_1006A0AF8);
  }

  v1 = type metadata accessor for Logger();
  sub_10000AF9C(v1, qword_1006BA568);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (sub_10000D654(v3))
  {
    *swift_slowAlloc() = 0;
    sub_1000079AC();
    _os_log_impl(v4, v5, v6, v7, v8, 2u);
    sub_100006868();
  }

  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v13[4] = sub_100326790;
  v13[5] = v9;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 1107296256;
  v13[2] = sub_1003EF338;
  v13[3] = &unk_100627320;
  v10 = _Block_copy(v13);

  v11 = String.utf8CString.getter();
  xpc_activity_register((v11 + 32), empty, v10);

  _Block_release(v10);
  return swift_unknownObjectRelease();
}

void sub_100326190(_xpc_activity_s *a1, uint64_t a2)
{
  if (xpc_activity_get_state(a1) == 2)
  {
    if (qword_1006A0AF8 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_10000AF9C(v2, qword_1006BA568);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "FaceTimeAppInstallAlertActivity: run activity fired", v5, 2u);
    }

    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v7 = Strong;
      sub_100008EB4();
    }
  }
}

id sub_1003262AC()
{
  v0 = sub_10026D814(&unk_1006A52C0, &unk_10057D930);
  __chkstk_darwin(v0 - 8);
  v2 = &v30 - v1;
  v3 = type metadata accessor for URL();
  sub_100007FEC();
  v5 = v4;
  __chkstk_darwin(v6);
  sub_100007FDC();
  v9 = v8 - v7;
  v10 = type metadata accessor for URLComponents();
  sub_100007FEC();
  v12 = v11;
  __chkstk_darwin(v13);
  sub_100007FDC();
  v16 = v15 - v14;
  URLComponents.init()();
  URLComponents.scheme.setter();
  sub_10026D814(&unk_1006A47B0, &unk_1005805E0);
  type metadata accessor for URLQueryItem();
  *(swift_allocObject() + 16) = xmmword_10057D690;
  URLQueryItem.init(name:value:)();
  URLComponents.queryItems.setter();
  URLComponents.url.getter();
  if (sub_100015468(v2, 1, v3) == 1)
  {
    sub_1000099A4(v2, &unk_1006A52C0, &unk_10057D930);
    if (qword_1006A0AF8 != -1)
    {
      sub_1000083DC(&qword_1006A0AF8);
    }

    v17 = type metadata accessor for Logger();
    sub_10000AF9C(v17, qword_1006BA568);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();
    if (sub_10000D654(v19))
    {
      *swift_slowAlloc() = 0;
      sub_1000079AC();
      _os_log_impl(v20, v21, v22, v23, v24, 2u);
      sub_100006868();
    }

    return (*(v12 + 8))(v16, v10);
  }

  (*(v5 + 32))(v9, v2, v3);
  result = [objc_opt_self() defaultWorkspace];
  if (result)
  {
    v27 = result;
    URL._bridgeToObjectiveC()(v26);
    v29 = v28;
    [v27 openURL:v28 configuration:0 completionHandler:0];

    (*(v5 + 8))(v9, v3);
    return (*(v12 + 8))(v16, v10);
  }

  __break(1u);
  return result;
}

id sub_1003266A8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FaceTimeInstallationNotifier();
  return objc_msgSendSuper2(&v2, "dealloc");
}

char *sub_100326798(void *a1, void (*a2)(void *__return_ptr), uint64_t a3, void *a4, uint64_t a5, _BYTE *a6)
{
  v38 = a4;
  v39 = a5;
  ObjectType = swift_getObjectType();
  v37 = ObjectType;
  v11 = type metadata accessor for DispatchWorkItemFlags();
  v42 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DispatchQoS();
  v40 = *(v14 - 8);
  v41 = v14;
  __chkstk_darwin(v14);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = &a6[OBJC_IVAR___CSDFaceTimeInstallationNotifier_storage];
  *v17 = 0u;
  *(v17 + 1) = 0u;
  *(v17 + 4) = 0;
  *&a6[OBJC_IVAR___CSDFaceTimeInstallationNotifier_lockStateObserver] = 0;
  *&a6[OBJC_IVAR___CSDFaceTimeInstallationNotifier_phoneProcessObserver] = 0;
  v18 = &a6[OBJC_IVAR___CSDFaceTimeInstallationNotifier_postFaceTimeUninstallAlertClosure];
  *v18 = 0;
  v18[1] = 0;
  v19 = &a6[OBJC_IVAR___CSDFaceTimeInstallationNotifier____lazy_storage___idsRegistrationRestriction];
  *v19 = 0;
  v19[8] = 1;
  a6[OBJC_IVAR___CSDFaceTimeInstallationNotifier____lazy_storage___facetimeRestrictedOnDevice] = 2;
  *&a6[OBJC_IVAR___CSDFaceTimeInstallationNotifier_queue] = a1;
  v20 = a1;
  a2(aBlock);
  swift_beginAccess();
  sub_100326B84(aBlock, v17);
  swift_endAccess();
  v21 = type metadata accessor for FaceTimeInstallationNotifier();
  v44.receiver = a6;
  v44.super_class = v21;
  v22 = objc_msgSendSuper2(&v44, "init");
  v23 = swift_allocObject();
  v25 = v38;
  v24 = v39;
  v23[2] = v38;
  v23[3] = v20;
  v23[4] = v22;
  v23[5] = a2;
  v23[6] = a3;
  v23[7] = v24;
  v23[8] = ObjectType;
  aBlock[4] = sub_100326BF4;
  aBlock[5] = v23;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004CEC;
  aBlock[3] = &unk_100627370;
  v26 = _Block_copy(aBlock);
  v27 = v25;

  v28 = v22;
  v29 = v20;
  v30 = v28;
  static DispatchQoS.unspecified.getter();
  v45 = _swiftEmptyArrayStorage;
  sub_10000AC00();
  sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
  sub_1000057D0();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v26);

  (*(v42 + 8))(v13, v11);
  (*(v40 + 8))(v16, v41);

  v31 = swift_allocObject();
  *(v31 + 16) = v37;
  v32 = &v30[OBJC_IVAR___CSDFaceTimeInstallationNotifier_postFaceTimeUninstallAlertClosure];
  v34 = *&v30[OBJC_IVAR___CSDFaceTimeInstallationNotifier_postFaceTimeUninstallAlertClosure];
  v33 = *&v30[OBJC_IVAR___CSDFaceTimeInstallationNotifier_postFaceTimeUninstallAlertClosure + 8];
  *v32 = sub_100326C08;
  v32[1] = v31;
  sub_1000051F8(v34, v33);

  return v30;
}

uint64_t sub_100326B84(uint64_t a1, uint64_t a2)
{
  v4 = sub_10026D814(&qword_1006A5868, &unk_1005805F0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_100326D24(void *a1)
{
  swift_unknownObjectWeakAssign();
}

uint64_t sub_100326E14()
{
  v1 = *(v0 + OBJC_IVAR___CSDCallController_callChanged);
  sub_1000115CC(v1, *(v0 + OBJC_IVAR___CSDCallController_callChanged + 8));
  return v1;
}

uint64_t sub_100326EFC(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR___CSDCallController_callChanged);
  v4 = *(v2 + OBJC_IVAR___CSDCallController_callChanged);
  v5 = *(v2 + OBJC_IVAR___CSDCallController_callChanged + 8);
  *v3 = a1;
  v3[1] = a2;
  return sub_1000051F8(v4, v5);
}

char *sub_100326F1C(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for DeviceRestrictionController();
  __chkstk_darwin(v4 - 8);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  objc_allocWithZone(type metadata accessor for DirtyCallManager());
  v7 = a2;
  v8 = sub_100317744(v7);
  result = [objc_opt_self() sharedConnection];
  if (result)
  {
    DeviceRestrictionController.init(profileConnection:)();
    v10 = objc_allocWithZone(type metadata accessor for CallController());
    v11 = sub_1003271A8(a1, v8, v6, v10);

    swift_getObjectType();
    swift_deallocPartialClassInstance();
    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1003270E0(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for CallController();
  return objc_msgSendSuper2(&v3, "dealloc");
}

char *sub_1003271A8(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  swift_unknownObjectWeakInit();
  v8 = &a4[OBJC_IVAR___CSDCallController_callChanged];
  *v8 = 0;
  *(v8 + 1) = 0;
  *&a4[OBJC_IVAR___CSDCallController_dataSources] = a1;
  *&a4[OBJC_IVAR___CSDCallController_dirtyCallManager] = a2;
  v16.receiver = a4;
  v16.super_class = type metadata accessor for CallController();
  v9 = objc_msgSendSuper2(&v16, "init");
  DeviceRestrictionController.resetRestrictions()();
  v10 = *&v9[OBJC_IVAR___CSDCallController_dirtyCallManager];
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v15[4] = sub_100023328;
  v15[5] = v11;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 1107296256;
  v15[2] = sub_100024F0C;
  v15[3] = &unk_1006274D0;
  v12 = _Block_copy(v15);
  swift_unknownObjectRetain();

  [v10 setCallChanged:v12];
  _Block_release(v12);

  swift_unknownObjectRelease();
  v13 = type metadata accessor for DeviceRestrictionController();
  (*(*(v13 - 8) + 8))(a3, v13);
  return v9;
}

uint64_t sub_1003273B0(uint64_t a1, uint64_t a2, uint64_t a3, NSString a4, uint64_t a5, uint64_t a6)
{
  v10 = String._bridgeToObjectiveC()();
  if (a4)
  {
    a4 = String._bridgeToObjectiveC()();
  }

  v13[4] = a5;
  v13[5] = a6;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 1107296256;
  v13[2] = sub_1003274A0;
  v13[3] = &unk_100627588;
  v11 = _Block_copy(v13);

  [v6 getPickableRoutesForCategory:v10 mode:a4 completion:v11];
  _Block_release(v11);
}

uint64_t sub_1003274A0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  sub_10026D814(&unk_1006A2A00, &unk_10057D710);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v2(v3);
}

id sub_100327544(uint64_t a1)
{
  v4 = 0;
  if ([v1 pickRoute:a1 error:&v4])
  {
    return v4;
  }

  v3 = v4;
  _convertNSErrorToError(_:)();

  return swift_willThrow();
}

id sub_100327640()
{
  v0 = String._bridgeToObjectiveC()();
  v1 = [swift_getObjCClassFromMetadata() isPhoneCallAudioCategory:v0];

  return v1;
}

__n128 sub_100327688(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 10) = *(a2 + 10);
  *a1 = result;
  return result;
}

uint64_t sub_10032769C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 26) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 26) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

unint64_t sub_100327704(void *a1)
{
  v1 = a1;
  v2 = [v1 isOutgoing];
  v3 = _AXSDefaultRouteForCall();
  v4 = v1;
  sub_10032817C(v4);
  sub_10000FA2C();
  [v4 ignoresBluetoothDeviceUID];
  [v4 isEmergency];

  return v2 | (v3 << 32);
}

uint64_t sub_1003277B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  result = 0;
  v9 = a1 ^ a5;
  if (!HIDWORD(v9) && (v9 & 1) == 0)
  {
    result = (a3 | a7) == 0;
    if (a3)
    {
      if (a7)
      {
        if (a2 == a6 && a3 == a7)
        {
          return 1;
        }

        else
        {
          return _stringCompareWithSmolCheck(_:_:expecting:)();
        }
      }
    }
  }

  return result;
}

void sub_10032783C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_10000A164(a1, a2, a3, a4);
  v9 = sub_100015F80(v5, v6, v7, v8);
  sub_10003EBF0(v11, (v10 + 32 * v9));
  sub_100017180();
  if (v13)
  {
    __break(1u);
  }

  else
  {
    *(a4 + 16) = v12;
  }
}

void sub_100327880(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_10000A164(a1, a2, a3, a4);
  *(*(v8 + 48) + 8 * v7) = v9;
  v10 = *(v8 + 56);
  v11 = type metadata accessor for CSDConversationSpatialPersonaResolver.SpatialPersonaCounter(0);
  sub_100007BF0(v11);
  sub_100328370(a3, v10 + *(v12 + 72) * a1, type metadata accessor for CSDConversationSpatialPersonaResolver.SpatialPersonaCounter);
  sub_100017180();
  if (v14)
  {
    __break(1u);
  }

  else
  {
    *(a4 + 16) = v13;
  }
}

void sub_100327908(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_10000A164(a1, a2, a3, a4);
  sub_100015A48(v4, v5, v6, v7);
  *(v11 + v9) = v10;
  v12 = *(v8 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    sub_1000113A0(v8, v14);
  }
}

void sub_100327948()
{
  sub_10000FDC4();
  v3 = v2;
  sub_10000A82C(v2, v4, v5, v6, v7);
  v9 = *(v8 + 56);
  v10 = sub_10026D814(&qword_1006A3BF0, &qword_10057DE60);
  sub_100007BF0(v10);
  sub_1003281EC(v1, v9 + *(v11 + 72) * v3);
  sub_100017180();
  if (v13)
  {
    __break(1u);
  }

  else
  {
    *(v0 + 16) = v12;
  }
}

void sub_1003279D4(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = sub_10000F690(a1, a2, a3, a4, a5);
  v7 = (*(v6 + 56) + 24 * v5);
  *v7 = v8;
  v7[1] = v9;
  v7[2] = v10;
  v11 = *(v6 + 16);
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    sub_10000E710(v6, v13);
  }
}

void sub_100327A10(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_100008498(a1, a2, a3, a4);
  sub_10001629C();
  type metadata accessor for UUID();
  sub_100010300();
  v7 = sub_100015D68();
  v8(v7);
  *(*(v4 + 56) + 8 * v6) = v5;
  sub_100017180();
  if (v10)
  {
    __break(1u);
  }

  else
  {
    *(v4 + 16) = v9;
  }
}

void sub_100327A88(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_100008498(a1, a2, a3, a4);
  v9 = *(v8 + 48);
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = *(v11 + 32);
  v13 = *(v11 + 72) * v7;
  v12(v9 + v13, v6, v10);
  v12(*(v4 + 56) + v13, v5, v10);
  sub_100017180();
  if (v15)
  {
    __break(1u);
  }

  else
  {
    *(v4 + 16) = v14;
  }
}

void sub_100327B38(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = sub_1000151C4(a1, a6 + 8 * (a1 >> 6));
  sub_100035AA0(v6, v7, v8, v9, v10, v11);
  if (v14)
  {
    __break(1u);
  }

  else
  {
    sub_100008B80(v12, v13);
  }
}

void sub_100327B74(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_10000A164(a1, a2, a3, a4);
  v8 = sub_100015F80(v4, v5, v6, v7);
  *(v11 + 8 * v8) = v10;
  v12 = *(v9 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    sub_1000113A0(v9, v14);
  }
}

void sub_100327BB4(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_10000A164(a1, a2, a3, a4);
  sub_100015A48(v5, v6, v7, v8);
  sub_10003EBF0(v11, (v10 + 32 * v9));
  sub_100017180();
  if (v13)
  {
    __break(1u);
  }

  else
  {
    *(a4 + 16) = v12;
  }
}

void sub_100327BF8()
{
  sub_10000FDC4();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  sub_10000F690(v7, v5, v3, v9, v10);
  sub_100017D3C();
  type metadata accessor for UUID();
  sub_100010300();
  (*(v11 + 32))(v2 + *(v11 + 72) * v8, v6);
  sub_10000C728();
  *v12 = v4;
  v12[1] = v1;
  sub_100017180();
  if (v14)
  {
    __break(1u);
  }

  else
  {
    *(v0 + 16) = v13;
  }
}

uint64_t sub_100327C84(unint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000151C4(a1, a3 + 8 * (a1 >> 6));
  *(*(v4 + 56) + 8 * result) = v5;
  v6 = *(v4 + 16);
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    *(v4 + 16) = v8;
  }

  return result;
}

void sub_100327CC0(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_10000A164(a1, a2, a3, a4);
  v9 = sub_100015F80(v5, v6, v7, v8);
  sub_100328314(v11, v10 + 16 * v9);
  sub_100017180();
  if (v13)
  {
    __break(1u);
  }

  else
  {
    *(a4 + 16) = v12;
  }
}

void sub_100327D1C()
{
  sub_10000FDC4();
  v3 = v2;
  sub_10000A82C(v2, v4, v5, v6, v7);
  v9 = *(v8 + 56);
  v10 = type metadata accessor for PendingMembershipInfo(0);
  sub_100007BF0(v10);
  sub_100328370(v1, v9 + *(v11 + 72) * v3, type metadata accessor for PendingMembershipInfo);
  sub_100017180();
  if (v13)
  {
    __break(1u);
  }

  else
  {
    *(v0 + 16) = v12;
  }
}

void sub_100327D98(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = sub_1000151C4(a1, a6 + 8 * (a1 >> 6));
  *(v7[6] + 8 * v6) = v8;
  v9 = v7[7] + 24 * v6;
  *v9 = v10;
  *(v9 + 8) = v11;
  *(v9 + 16) = v12 & 1;
  *(v9 + 17) = v13 & 1;
  v14 = v7[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    sub_100008B80(v7, v16);
  }
}

void sub_100327DF0(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_100008498(a1, a2, a3, a4);
  sub_10001629C();
  type metadata accessor for UUID();
  sub_100010300();
  v7 = sub_100015D68();
  v8(v7);
  v9 = *(v4 + 56);
  v10 = type metadata accessor for SimulatedConversationManager.SimulatedGroupSession(0);
  sub_100007BF0(v10);
  sub_100328370(v5, v9 + *(v11 + 72) * v6, type metadata accessor for SimulatedConversationManager.SimulatedGroupSession);
  sub_100017180();
  if (v13)
  {
    __break(1u);
  }

  else
  {
    *(v4 + 16) = v12;
  }
}

void sub_100327E9C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_10000A164(a1, a2, a3, a4);
  v9 = sub_100015F80(v5, v6, v7, v8);
  sub_1003282B8(v11, v10 + 8 * v9);
  sub_100017180();
  if (v13)
  {
    __break(1u);
  }

  else
  {
    *(a4 + 16) = v12;
  }
}

void sub_100327EE0(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_10000A164(a1, a2, a3, a4);
  *(v5[6] + 4 * v4) = v6;
  *(v5[7] + 8 * v4) = v7;
  v8 = v5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    sub_1000113A0(v5, v10);
  }
}

void sub_100327F18()
{
  sub_10000FDC4();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  sub_10000F690(v7, v5, v3, v9, v10);
  v11 = sub_100017D3C();
  v12 = type metadata accessor for SharePlayAvailabilityManager.CallAndHandle(v11);
  sub_100007BF0(v12);
  sub_100328370(v6, v2 + *(v13 + 72) * v8, type metadata accessor for SharePlayAvailabilityManager.CallAndHandle);
  sub_10000C728();
  *v14 = v4;
  v14[1] = v1;
  sub_100017180();
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v0 + 16) = v15;
  }
}

void sub_100327FA8(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_10000A164(a1, a2, a3, a4);
  *(v5[6] + v4) = v6 & 1;
  *(v5[7] + 8 * v4) = v7;
  v8 = v5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    sub_1000113A0(v5, v10);
  }
}

void sub_100327FE4()
{
  sub_10000FDC4();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  sub_10000F690(v7, v5, v3, v9, v10);
  sub_100017D3C();
  type metadata accessor for UUID();
  sub_100010300();
  (*(v11 + 32))(v2 + *(v11 + 72) * v8, v6);
  sub_10000C728();
  *v12 = v4;
  *(v12 + 8) = v1;
  sub_100017180();
  if (v14)
  {
    __break(1u);
  }

  else
  {
    *(v0 + 16) = v13;
  }
}

void sub_10032808C()
{
  sub_10000FDC4();
  v3 = v2;
  sub_10000A82C(v2, v4, v5, v6, v7);
  v9 = *(v8 + 56);
  v10(0);
  sub_100010300();
  (*(v11 + 32))(v9 + *(v11 + 72) * v3, v1);
  sub_100017180();
  if (v13)
  {
    __break(1u);
  }

  else
  {
    *(v0 + 16) = v12;
  }
}

void sub_100328108(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = sub_10000A82C(a1, a2, a3, a4, a5);
  *(*(v6 + 56) + v5) = v7;
  v8 = *(v6 + 16);
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    sub_10000E710(v6, v10);
  }
}

void sub_100328138(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_10000A164(a1, a2, a3, a4);
  v9 = sub_100015F80(v5, v6, v7, v8);
  sub_10032825C(v11, v10 + 8 * v9);
  sub_100017180();
  if (v13)
  {
    __break(1u);
  }

  else
  {
    *(a4 + 16) = v12;
  }
}

uint64_t sub_10032817C(void *a1)
{
  v2 = [a1 sourceIdentifier];

  if (!v2)
  {
    return 0;
  }

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_1003281EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10026D814(&qword_1006A3BF0, &qword_10057DE60);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100328370(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_100010300();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1003283D0(uint64_t result)
{
  v1 = *(result + 16);
  for (i = (result + 40); v1; --v1)
  {
    v3 = *i;
    i += 3;
    result = sub_100429184(v3);
  }

  return result;
}

void sub_10032841C(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a1 + 56;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 56);
  v8 = (v5 + 63) >> 6;
  v9 = 0;

  while (v7)
  {
LABEL_9:
    v11 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v12 = *(*(v3 + 48) + ((v9 << 9) | (8 * v11)));
    v13 = *(type metadata accessor for SimulatedConversationManager.SimulatedGroupSession(0) + 24);
    v14 = sub_1002DA664(v12);
    if (v15)
    {
      v16 = v14;
      isUnique = swift_isUniquelyReferenced_nonNull_native();
      v23 = *(a2 + v13);
      *(a2 + v13) = 0x8000000000000000;
      v17 = a2;
      v18 = *(v23 + 24);
      sub_10026D814(&unk_1006A6FC0, &qword_100580940);
      v19 = v18;
      a2 = v17;
      _NativeDictionary.ensureUnique(isUnique:capacity:)(isUnique, v19);
      v20 = *(*(v23 + 56) + 24 * v16);
      _NativeDictionary._delete(at:)();
      *(a2 + v13) = v23;

      v3 = v21;
    }
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v8)
    {

      return;
    }

    v7 = *(v4 + 8 * v10);
    ++v9;
    if (v7)
    {
      v9 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_1003285B4()
{
  sub_10026D814(&qword_1006A5AA8, &qword_100580840);
  OS_dispatch_queue.sync<A>(execute:)();
  return v1;
}

uint64_t sub_100328634(uint64_t a1)
{
  v3 = *&v1[OBJC_IVAR___CSDSimulatedConversationManager_queue];
  sub_100007C2C();
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = a1;
  sub_100007C2C();
  v5 = swift_allocObject();
  *(v5 + 16) = sub_10032E18C;
  *(v5 + 24) = v4;
  v11[4] = sub_1002C7C44;
  v11[5] = v5;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  sub_10001718C();
  v11[2] = v6;
  v11[3] = &unk_1006279D0;
  v7 = _Block_copy(v11);
  v8 = v1;

  dispatch_sync(v3, v7);
  _Block_release(v7);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t (*sub_1003287AC(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = sub_1003285B4();
  return sub_1003287F4;
}

uint64_t sub_1003287F4(uint64_t *a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    return sub_100328634(*a1);
  }

  sub_100328634(v2);
}

void sub_10032884C()
{
  sub_100005EF4();
  v0 = sub_10026D814(&qword_1006A5C88, &qword_100580950);
  sub_100007FEC();
  v2 = v1;
  __chkstk_darwin(v3);
  v5 = &v12[-v4];
  v6 = sub_10026D814(&qword_1006A5C90, &qword_100580958);
  sub_100007FEC();
  v8 = v7;
  __chkstk_darwin(v9);
  v11 = &v12[-v10];
  swift_beginAccess();
  sub_10026D814(&qword_1006A5C98, &qword_100580960);
  Published.projectedValue.getter();
  swift_endAccess();
  sub_100006890();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_10026D814(&qword_1006A5CA0, &unk_100580968);
  sub_10001000C(&qword_1006A5CA8, &qword_1006A5C88, &qword_100580950, &protocol conformance descriptor for Published<A>.Publisher);
  Publisher.map<A>(_:)();

  (*(v2 + 8))(v5, v0);
  sub_10001000C(&unk_1006A5CB0, &qword_1006A5C90, &qword_100580958, &protocol conformance descriptor for Publishers.Map<A, B>);
  Publisher.eraseToAnyPublisher()();
  (*(v8 + 8))(v11, v6);
  sub_100005EDC();
}

uint64_t sub_100328AC8@<X0>(uint64_t *a1@<X0>, uint64_t *a3@<X8>)
{
  v4 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = sub_100328BA4();
  }

  else
  {
    type metadata accessor for UUID();
    type metadata accessor for SimulatedConversationManager.SimulatedGroupSession(0);
    sub_10000EED0(&qword_1006A3BE0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v7 = Dictionary.init(dictionaryLiteral:)();
  }

  *a3 = v7;
  a3[1] = v4;
}

uint64_t sub_100328BA4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_100328C18(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v1;
  return static Published.subscript.setter();
}

uint64_t (*sub_100328C84(void *a1))()
{
  v2 = sub_1002FDF84(0x38uLL);
  *a1 = v2;
  v2[4] = swift_getKeyPath();
  v2[5] = swift_getKeyPath();
  sub_10000D310();
  v2[6] = static Published.subscript.modify();
  return sub_100328D10;
}

void sub_100328D10(void *a1)
{
  v1 = *a1;
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

char *sub_100328D78()
{
  v1 = v0;
  type metadata accessor for DispatchWorkItemFlags();
  sub_100007FEC();
  v53 = v3;
  v54 = v2;
  __chkstk_darwin(v2);
  sub_1000151DC();
  v52 = v4;
  sub_10026D814(&qword_1006A5C98, &qword_100580960);
  sub_100007FEC();
  v60 = v6;
  v61 = v5;
  __chkstk_darwin(v5);
  v59 = &v50 - v7;
  sub_10000D414();
  v58 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  sub_100007FEC();
  v9 = v8;
  __chkstk_darwin(v10);
  sub_100007FDC();
  v13 = v12 - v11;
  v14 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v14);
  sub_100007FDC();
  v51 = type metadata accessor for DispatchQoS();
  sub_100007FEC();
  v50 = v15;
  __chkstk_darwin(v16);
  sub_100007FDC();
  v19 = v18 - v17;
  v57 = OBJC_IVAR___CSDSimulatedConversationManager_queue;
  v20 = sub_100006AF0(0, &qword_1006A31A0, OS_dispatch_queue_ptr);
  v55 = " conversation %@";
  v56 = v20;
  static DispatchQoS.unspecified.getter();
  aBlock = _swiftEmptyArrayStorage;
  sub_10000EED0(&qword_1006A0CB0, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_10026D814(&qword_1006A31B0, &unk_10057E920);
  sub_100008434();
  sub_10001000C(v21, &qword_1006A31B0, &unk_10057E920, v22);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v9 + 104))(v13, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v58);
  v58 = v19;
  v23 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v24 = v57;
  *&v0[v57] = v23;
  v25 = OBJC_IVAR___CSDSimulatedConversationManager___activeGroupSessionsByGroupUUID;
  aBlock = _swiftEmptyDictionarySingleton;
  sub_10026D814(&qword_1006A5AA8, &qword_100580840);
  v26 = v59;
  Published.init(initialValue:)();
  (*(v60 + 32))(&v1[v25], v26, v61);
  v27 = &v1[OBJC_IVAR___CSDSimulatedConversationManager_localCallerID];
  *v27 = 0xD000000000000016;
  *(v27 + 1) = 0x800000010056BA80;
  v28 = [objc_allocWithZone(CSDClientManager) initWithSerialQueue:*&v1[v24]];
  *&v1[OBJC_IVAR___CSDSimulatedConversationManager_clientManager] = v28;
  v29 = type metadata accessor for SimulatedConversationManager(0);
  v69.receiver = v1;
  v69.super_class = v29;
  v30 = objc_msgSendSuper2(&v69, "init");
  v31 = OBJC_IVAR___CSDSimulatedConversationManager_queue;
  v32 = *&v30[OBJC_IVAR___CSDSimulatedConversationManager_queue];
  sub_100006890();
  v33 = swift_allocObject();
  *(v33 + 16) = v30;
  sub_100007C2C();
  v34 = swift_allocObject();
  *(v34 + 16) = sub_10032E1D0;
  *(v34 + 24) = v33;
  v67 = sub_1002C7C44;
  v68 = v34;
  aBlock = _NSConcreteStackBlock;
  v64 = 1107296256;
  v65 = sub_10002007C;
  v66 = &unk_100627A48;
  v35 = _Block_copy(&aBlock);
  v36 = v30;
  v37 = v32;

  dispatch_sync(v37, v35);

  _Block_release(v35);
  LOBYTE(v35) = swift_isEscapingClosureAtFileLocation();

  if (v35)
  {
    __break(1u);
  }

  else
  {
    v39 = *&v30[v31];
    sub_100006890();
    v40 = swift_allocObject();
    *(v40 + 16) = v36;
    v67 = sub_10032E1D8;
    v68 = v40;
    aBlock = _NSConcreteStackBlock;
    v64 = 1107296256;
    v65 = sub_100004CEC;
    v66 = &unk_100627A98;
    v41 = _Block_copy(&aBlock);
    v42 = v39;
    v43 = v58;
    static DispatchQoS.unspecified.getter();
    v62 = _swiftEmptyArrayStorage;
    sub_10000A184();
    sub_10000EED0(v44, v45, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
    sub_100008434();
    sub_10001000C(v46, &unk_1006A2960, &unk_10057D6E0, v47);
    v48 = v52;
    v49 = v54;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v41);

    (*(v53 + 8))(v48, v49);
    (*(v50 + 8))(v43, v51);

    return v36;
  }

  return result;
}

void sub_100329458(uint64_t a1)
{
  v2 = *(a1 + OBJC_IVAR___CSDSimulatedConversationManager_clientManager);
  v3 = objc_opt_self();
  v4 = [v3 simulatedConversationControllerClientXPCInterface];
  [v2 setRemoteObjectInterface:v4];

  v5 = [v3 simulatedConversationControllerServerXPCInterface];
  [v2 setExportedInterface:v5];

  [v2 setExportedObject:a1];
  [v2 setRequiredConnectionCapability:@"modify-simulated-conversations"];
  v12 = sub_100329630;
  v13 = 0;
  v8 = _NSConcreteStackBlock;
  v9 = 1107296256;
  v10 = sub_100024F0C;
  v11 = &unk_100627AC0;
  v6 = _Block_copy(&v8);
  [v2 setInterruptionHandler:v6];
  _Block_release(v6);
  v12 = sub_10032963C;
  v13 = 0;
  v8 = _NSConcreteStackBlock;
  v9 = 1107296256;
  v10 = sub_100024F0C;
  v11 = &unk_100627AE8;
  v7 = _Block_copy(&v8);
  [v2 setInvalidationHandler:v7];
  _Block_release(v7);
}

uint64_t sub_100329648(void *a1, const char *a2, ...)
{
  v4 = sub_10022AE64(a1);
  sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_10057D690;
  *(v5 + 56) = sub_10026D814(&qword_1006A5CC0, &qword_100580978);
  *(v5 + 64) = sub_10001000C(&qword_1006A5CC8, &qword_1006A5CC0, &qword_100580978, &protocol conformance descriptor for NSObject);
  *(v5 + 32) = a1;
  v6 = a1;
  v7 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)(a2, 41, 2, &_mh_execute_header, v4, v7, v5);
}

void sub_100329750(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR___CSDSimulatedConversationManager_clientManager);
  v2 = String._bridgeToObjectiveC()();
  [v1 startListeningOnMachServiceWithName:v2];
}

void sub_1003297EC()
{
  sub_100005EF4();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = type metadata accessor for UUID();
  sub_100007FEC();
  v9 = v8;
  v11 = *(v10 + 64);
  __chkstk_darwin(v12);
  v13 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *&v0[OBJC_IVAR___CSDSimulatedConversationManager_queue];
  (*(v9 + 16))(v13, v6, v7);
  v14 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v15 = (v11 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = swift_allocObject();
  *(v16 + 16) = v0;
  (*(v9 + 32))(v16 + v14, v13, v7);
  *(v16 + v15) = v4;
  *(v16 + ((v15 + 15) & 0xFFFFFFFFFFFFFFF8)) = v2;
  sub_100007C2C();
  v17 = swift_allocObject();
  *(v17 + 16) = sub_10032E090;
  *(v17 + 24) = v16;
  v24[4] = sub_1002C7C44;
  v24[5] = v17;
  sub_100009FE4();
  v24[1] = 1107296256;
  sub_10001718C();
  v24[2] = v18;
  v24[3] = &unk_100627958;
  v19 = _Block_copy(v24);
  v20 = v0;

  v21 = v2;

  dispatch_sync(v23, v19);
  _Block_release(v19);
  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    __break(1u);
  }

  else
  {
    sub_100005EDC();
  }
}

uint64_t sub_100329A04(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v30[1] = a3;
  v31 = a4;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = v30 - v11;
  v13 = sub_10026D814(&unk_1006A7600, &unk_100584E50);
  v14 = __chkstk_darwin(v13 - 8);
  v16 = v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = v30 - v17;
  v32 = a1;
  sub_100328BA4();
  sub_1002CB8B4();

  v19 = type metadata accessor for SimulatedConversationManager.SimulatedGroupSession(0);
  v20 = sub_100015468(v18, 1, v19);
  result = sub_10032DE1C(v18);
  if (v20 == 1)
  {
    v22 = *(v7 + 16);
    v22(v12, a2, v6);
    v22(v10, a2, v6);

    v24 = sub_100329CF0(v23);
    *&v16[v19[6]] = _swiftEmptyDictionarySingleton;
    v25 = v19[8];
    *&v16[v25] = sub_1003A7258(-1);
    v22(v16, v10, v6);
    *&v16[v19[5]] = v24;
    v26 = v31;
    *&v16[v19[7]] = v31;
    v16[v19[9]] = 1;
    v27 = *(v7 + 8);
    v28 = v26;
    v27(v10, v6);
    sub_10000AF74(v16, 0, 1, v19);
    swift_getKeyPath();
    swift_getKeyPath();
    v29 = static Published.subscript.modify();
    sub_100381EB8(v16, v12);
    v29(v33, 0);
  }

  return result;
}

void *sub_100329CF0(void *result)
{
  v1 = result;
  v25 = _swiftEmptyArrayStorage;
  v2 = result[2];
  if (!v2)
  {

    return _swiftEmptyArrayStorage;
  }

  v3 = 0;
  v4 = _swiftEmptyArrayStorage;
  v5 = result + 4;
  while (v3 < v1[2])
  {
    sub_100006A94(v5, v24);
    sub_100006A94(v24, v23);
    v6 = sub_10026D814(&qword_1006A5BE0, &qword_100580880);
    if (sub_100015A6C(v6, v7, v8, v9, v10, v11, v12, v13, v22, v23[0]))
    {
      goto LABEL_8;
    }

    sub_100006A94(v24, v23);
    v14 = sub_100006AF0(0, &qword_1006A9E70, NSString_ptr);
    if (sub_100015A6C(v14, v15, v16, v17, v18, v19, v20, v21, v22, v23[0]))
    {
      result = [v22 _stripPotentialTokenURIWithToken:0];
      if (!result)
      {
        goto LABEL_17;
      }

LABEL_8:
      sub_100009B7C(v24);
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      result = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v4 = v25;
      goto LABEL_12;
    }

    result = sub_100009B7C(v24);
LABEL_12:
    ++v3;
    v5 += 4;
    if (v2 == v3)
    {

      return v4;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_100329EA8(uint64_t a1)
{
  v3 = type metadata accessor for UUID();
  sub_100007FEC();
  v5 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v8);
  v9 = *&v1[OBJC_IVAR___CSDSimulatedConversationManager_queue];
  (*(v5 + 16))(aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  v10 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = v1;
  (*(v5 + 32))(v11 + v10, aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  sub_100007C2C();
  v12 = swift_allocObject();
  *(v12 + 16) = sub_10032E000;
  *(v12 + 24) = v11;
  aBlock[4] = sub_1000200A4;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  sub_10001718C();
  aBlock[2] = v13;
  aBlock[3] = &unk_1006278E0;
  v14 = _Block_copy(aBlock);
  v15 = v1;

  dispatch_sync(v9, v14);
  _Block_release(v14);
  LOBYTE(v9) = swift_isEscapingClosureAtFileLocation();

  if (v9)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10032A0AC(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v17[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_10026D814(&unk_1006A7600, &unk_100584E50);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = &v17[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v12 = &v17[-v11];
  sub_100328BA4();
  sub_1002CB8B4();

  v13 = type metadata accessor for SimulatedConversationManager.SimulatedGroupSession(0);
  v14 = sub_100015468(v12, 1, v13);
  result = sub_10032DE1C(v12);
  if (v14 != 1)
  {
    (*(v4 + 16))(v6, a2, v3);
    sub_10000AF74(v10, 1, 1, v13);
    swift_getKeyPath();
    swift_getKeyPath();
    v16 = static Published.subscript.modify();
    sub_100381EB8(v10, v6);
    v16(v17, 0);
  }

  return result;
}

void sub_10032A2D0()
{
  sub_100005EF4();
  v49 = v1;
  v53 = type metadata accessor for DispatchWorkItemFlags();
  sub_100007FEC();
  v55 = v2;
  __chkstk_darwin(v3);
  sub_1000151DC();
  v51 = v4;
  sub_10000D414();
  v54 = type metadata accessor for DispatchQoS();
  sub_100007FEC();
  v52 = v5;
  __chkstk_darwin(v6);
  sub_1000151DC();
  v50 = v7;
  sub_10000D414();
  v43 = type metadata accessor for UUID();
  sub_100007FEC();
  v9 = v8;
  v11 = *(v10 + 64);
  __chkstk_darwin(v12);
  v42 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000D414();
  v13 = type metadata accessor for DispatchTimeInterval();
  sub_100007FEC();
  v15 = v14;
  __chkstk_darwin(v16);
  sub_100007FDC();
  v19 = (v18 - v17);
  v20 = type metadata accessor for DispatchTime();
  v46 = v20;
  v21 = *(v20 - 8);
  v22 = __chkstk_darwin(v20);
  v24 = &v42 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v44 = &v42 - v25;
  v48 = *(v0 + OBJC_IVAR___CSDSimulatedConversationManager_queue);
  static DispatchTime.now()();
  *v19 = 2;
  (*(v15 + 104))(v19, enum case for DispatchTimeInterval.seconds(_:), v13);
  + infix(_:_:)();
  (*(v15 + 8))(v19, v13);
  v26 = *(v21 + 8);
  v45 = v21 + 8;
  v47 = v26;
  v26(v24, v20);
  sub_100006890();
  v27 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v29 = v42;
  v28 = v43;
  (*(v9 + 16))(v42, v49, v43);
  v30 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v31 = swift_allocObject();
  *(v31 + 16) = v27;
  (*(v9 + 32))(v31 + v30, v29, v28);
  v57[4] = sub_10032DFE8;
  v57[5] = v31;
  v57[0] = _NSConcreteStackBlock;
  v57[1] = 1107296256;
  sub_10000A600();
  v57[2] = v32;
  v57[3] = &unk_100627868;
  v33 = _Block_copy(v57);

  v34 = v50;
  static DispatchQoS.unspecified.getter();
  v56 = _swiftEmptyArrayStorage;
  sub_10000A184();
  sub_10000EED0(v35, v36, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
  sub_100008434();
  sub_10001000C(v37, &unk_1006A2960, &unk_10057D6E0, v38);
  v39 = v51;
  v40 = v53;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v41 = v44;
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v33);
  (*(v55 + 8))(v39, v40);
  (*(v52 + 8))(v34, v54);
  v47(v41, v46);

  sub_100005EDC();
}

void sub_10032A7DC(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v15[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    (*(v4 + 16))(v6, a2, v3);
    v9 = sub_100328C84(v16);
    v10 = sub_10040BF00(v15);
    v12 = v11;
    v13 = type metadata accessor for SimulatedConversationManager.SimulatedGroupSession(0);
    if (!sub_100015468(v12, 1, v13))
    {
      sub_10032A978();
    }

    (v10)(v15, 0);
    (*(v4 + 8))(v6, v3);
    (v9)(v16, 0);
  }
}

void sub_10032A978()
{
  v1 = v0;
  v2 = type metadata accessor for SimulatedConversationManager.SimulatedGroupSession(0);
  v65 = v2[6];

  v4 = sub_1002F2270(v3);
  v78 = v4;
  v5 = *(v1 + v2[5]);
  v67 = sub_10000B6F4(v5);
  if (!v67)
  {
LABEL_61:
    sub_10032841C(v4, v1);
    v59 = sub_10022AE64(v58);
    sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
    v60 = swift_allocObject();
    *(v60 + 16) = xmmword_10057D690;

    sub_10026D814(&qword_1006A5C48, &qword_100580938);
    v61 = String.init<A>(reflecting:)();
    v63 = v62;
    *(v60 + 56) = &type metadata for String;
    *(v60 + 64) = sub_100009D88();
    *(v60 + 32) = v61;
    *(v60 + 40) = v63;
    v64 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("Updated active remote participants %@", 37, 2, &_mh_execute_header, v59, v64, v60);

    return;
  }

  v6 = 0;
  v73 = *(v1 + v2[7]);
  v74 = v5 & 0xC000000000000001;
  v68 = v5 & 0xFFFFFFFFFFFFFF8;
  v7 = &selRef_conversationManager_conversationScreenSharingChanged_forParticipant_;
  v8 = v67;
  v66 = v1;
LABEL_3:
  if (v74)
  {
    v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (v6 >= *(v68 + 16))
    {
      goto LABEL_64;
    }

    v9 = swift_unknownObjectRetain();
  }

  if (!__OFADD__(v6++, 1))
  {
    v76 = v9;
    v11 = [v9 v7[248]];
    v12 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    v13 = 0;
    v14 = 1 << *(v12 + 32);
    v15 = (v14 + 63) >> 6;
    v16 = 56;
    if (!v15)
    {
      goto LABEL_13;
    }

    while (1)
    {
      v17 = *(v12 + v16);
      if (v17)
      {
        break;
      }

      v13 -= 64;
      --v15;
      v16 += 8;
      if (!v15)
      {
        goto LABEL_13;
      }
    }

    v18 = __clz(__rbit64(v17));
    if (v18 - v14 != v13)
    {
      v19 = sub_1002E9474(v18 - v13, *(v12 + 36), 0, v12);
      v20 = v21;
    }

    else
    {
LABEL_13:

      v19 = 0;
      v20 = 0;
    }

    v22 = [v73 idsDestination];
    if (v22)
    {
      v23 = v22;
      v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v26 = v25;

      if (v20)
      {
        if (v26)
        {
          if (v19 == v24 && v20 == v26)
          {
            swift_unknownObjectRelease();

            goto LABEL_59;
          }

          v28 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v28)
          {
            goto LABEL_56;
          }

          goto LABEL_28;
        }
      }

      else if (!v26)
      {
        goto LABEL_56;
      }
    }

    else if (!v20)
    {
      goto LABEL_56;
    }

LABEL_28:
    v29 = [v76 v7[248]];
    v30 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    v31 = _HashTable.startBucket.getter();
    if (v31 == 1 << *(v30 + 32) || (v32 = sub_1002E9474(v31, *(v30 + 36), 0, v30), v34 = v33, , v35 = objc_opt_self(), v69 = v32, v36 = String._bridgeToObjectiveC()(), v37 = [v35 normalizedHandleWithDestinationID:v36], v36, !v37))
    {

LABEL_56:
      swift_unknownObjectRelease();
      goto LABEL_59;
    }

    v38 = 1 << *(v75 + 32);
    if (v38 < 64)
    {
      v39 = ~(-1 << v38);
    }

    else
    {
      v39 = -1;
    }

    v40 = v39 & *(v75 + 64);
    v41 = (v38 + 63) >> 6;

    v42 = 0;
    while (1)
    {
      while (1)
      {
        if (!v40)
        {
          while (1)
          {
            v43 = v42 + 1;
            if (__OFADD__(v42, 1))
            {
              __break(1u);
              goto LABEL_63;
            }

            if (v43 >= v41)
            {
              break;
            }

            v40 = *(v75 + 64 + 8 * v43);
            ++v42;
            if (v40)
            {
              v42 = v43;
              goto LABEL_39;
            }
          }

          if (_swiftEmptyArrayStorage[2])
          {
            sub_1003283D0(_swiftEmptyArrayStorage);

            swift_unknownObjectRelease();

            v1 = v66;
          }

          else
          {

            sub_1003A7258(-1);
            v57 = v37;
            v1 = v66;
            swift_isUniquelyReferenced_nonNull_native();
            v77 = *(v66 + v65);
            sub_100379510();

            swift_unknownObjectRelease();
            v75 = v77;
            *(v66 + v65) = v77;
          }

          v8 = v67;
LABEL_59:
          if (v6 == v8)
          {
            v4 = v78;
            goto LABEL_61;
          }

          goto LABEL_3;
        }

LABEL_39:
        v44 = __clz(__rbit64(v40));
        v40 &= v40 - 1;
        v45 = *(v75 + 56) + 24 * (v44 | (v42 << 6));
        v72 = *(v45 + 8);
        v70 = *(v45 + 17);
        v71 = *(v45 + 16);
        v46 = *v45;
        v47 = TUCopyIDSCanonicalAddressForHandle();
        if (v47)
        {
          break;
        }

LABEL_45:

        v7 = &selRef_conversationManager_conversationScreenSharingChanged_forParticipant_;
      }

      v48 = v47;
      v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v51 = v50;

      if (v49 == v69 && v51 == v34)
      {
      }

      else
      {
        v53 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v53 & 1) == 0)
        {
          goto LABEL_45;
        }
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_10039A360(0, _swiftEmptyArrayStorage[2] + 1, 1);
      }

      v55 = _swiftEmptyArrayStorage[2];
      v54 = _swiftEmptyArrayStorage[3];
      v7 = &selRef_conversationManager_conversationScreenSharingChanged_forParticipant_;
      if (v55 >= v54 >> 1)
      {
        sub_10039A360((v54 > 1), v55 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v55 + 1;
      v56 = &_swiftEmptyArrayStorage[3 * v55];
      v56[4] = v46;
      v56[5] = v72;
      *(v56 + 48) = v71;
      *(v56 + 49) = v70;
    }
  }

LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
}

id sub_10032B024()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SimulatedConversationManager(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_10032B130(uint64_t a1)
{
  sub_10032DB40(319, &qword_1006A5AA0, &qword_1006A5AA8, &qword_100580840, &type metadata accessor for Published);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

id sub_10032B208(char a1)
{
  v2 = [objc_allocWithZone(TUMutableConversationParticipantCapabilities) init];
  v3 = sub_10000D458([v2 setScreenSharingAvailable:1], "setGondolaCallingAvailable:");
  v4 = sub_10000D458(v3, "setSupportsLeaveContext:");
  v5 = sub_10000D458(v4, "setGftDowngradeToOneToOneAvailable:");
  v6 = sub_10000D458(v5, "setUPlusOneScreenShareAvailable:");
  sub_10000D458(v6, "setUPlusNDowngradeAvailable:");
  [v2 setSharePlayProtocolVersion:TUSharePlayProtocolVersion()];
  [v2 setPersonaAvailable:a1 & 1];
  v7 = v2;
  [v7 setVisionCallEstablishmentVersion:TUVisionCallEstablishmentVersion()];
  [v7 setVisionFeatureVersion:TUVisionFeatureVersion()];
  [v7 setUPlusOneAVLessAvailable:1];
  v8 = [objc_msgSend(objc_opt_self() "localCapabilities")];
  swift_unknownObjectRelease();
  [v7 setMomentsAvailable:v8];

  return v7;
}

BOOL sub_10032B3F8(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 17))
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  if (*(a2 + 17))
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  return sub_10032B368(*a1, *(a1 + 8), v2 | *(a1 + 16), *a2, *(a2 + 8), v3 | *(a2 + 16));
}

void sub_10032B438()
{
  sub_100005EF4();
  v54 = v1;
  v55 = v0;
  v3 = v2;
  v5 = v4;
  v51 = v4;
  v59 = type metadata accessor for DispatchWorkItemFlags();
  sub_100007FEC();
  v61 = v6;
  __chkstk_darwin(v7);
  sub_1000151DC();
  v57 = v8;
  sub_10000D414();
  v60 = type metadata accessor for DispatchQoS();
  sub_100007FEC();
  v58 = v9;
  __chkstk_darwin(v10);
  sub_1000151DC();
  v56 = v11;
  sub_10000D414();
  v12 = type metadata accessor for UUID();
  sub_100007FEC();
  v14 = v13;
  v16 = *(v15 + 64);
  v18 = __chkstk_darwin(v17);
  v19 = sub_10022AE64(v18);
  sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_10057E830;
  *(v20 + 56) = sub_100006AF0(0, &qword_1006A5C68, TUSimulatedParticipantUpdate_ptr);
  *(v20 + 64) = sub_100290B1C(&qword_1006A5C70, &qword_1006A5C68, TUSimulatedParticipantUpdate_ptr);
  *(v20 + 32) = v3;
  v52 = v3;
  v21 = [v5 identifier];
  *(v20 + 96) = &type metadata for UInt64;
  *(v20 + 104) = &protocol witness table for UInt64;
  *(v20 + 72) = v21;
  v22 = v54;
  isa = UUID._bridgeToObjectiveC()().super.isa;
  sub_10000D310();
  *(v20 + 136) = sub_100006AF0(v24, v25, v26);
  sub_10000D310();
  *(v20 + 144) = sub_100290B1C(v27, v28, v29);
  *(v20 + 112) = isa;
  v30 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("Received simulated participant update %@ for participant %llu on conversation %@", 80, 2, &_mh_execute_header, v19, v30, v20);

  v31 = v55;
  v53 = *&v55[OBJC_IVAR___CSDSimulatedConversationManager_queue];
  (*(v14 + 16))(&v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v22, v12);
  v32 = (*(v14 + 80) + 24) & ~*(v14 + 80);
  v33 = (v16 + v32 + 7) & 0xFFFFFFFFFFFFFFF8;
  v34 = swift_allocObject();
  *(v34 + 16) = v31;
  (*(v14 + 32))(v34 + v32, &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v12);
  v35 = v51;
  v36 = v52;
  *(v34 + v33) = v51;
  *(v34 + ((v33 + 15) & 0xFFFFFFFFFFFFFFF8)) = v36;
  v63[4] = sub_10032DFD0;
  v63[5] = v34;
  sub_100009FE4();
  v63[1] = 1107296256;
  sub_10000A600();
  v63[2] = v37;
  v63[3] = &unk_1006277F0;
  v38 = _Block_copy(v63);
  v39 = v36;
  v40 = v31;
  v41 = v35;
  static DispatchQoS.unspecified.getter();
  v62 = _swiftEmptyArrayStorage;
  sub_10000A184();
  sub_10000EED0(v42, v43, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
  sub_100008434();
  sub_10001000C(v44, &unk_1006A2960, &unk_10057D6E0, v45);
  sub_10000FA38();
  v46 = v57;
  v47 = v59;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v38);
  sub_10000C734();
  v48(v46, v47);
  v49 = sub_100017D48();
  v50(v49);

  sub_100005EDC();
}

uint64_t sub_10032B8A8(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v36 = a4;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10026D814(&unk_1006A7600, &unk_100584E50);
  v12 = __chkstk_darwin(v11 - 8);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v32 - v15;
  v17 = type metadata accessor for SimulatedConversationManager.SimulatedGroupSession(0);
  __chkstk_darwin(v17);
  v19 = &v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = a1;
  sub_100328BA4();
  sub_1002CB8B4();

  if (sub_100015468(v16, 1, v17) == 1)
  {
    return sub_10032DE1C(v16);
  }

  sub_10032DE84(v16, v19);
  v21 = [a3 identifier];
  v22 = *(v17 + 24);
  v23 = *&v19[v22];
  if (*(v23 + 16))
  {
    v24 = v21;
    v25 = sub_1002DA664(v21);
    if (v26)
    {
      v27 = *(v23 + 56) + 24 * v25;
      v28 = *v27;
      v34 = *(v27 + 8);
      v35 = v24;
      v33 = *(v27 + 16);
      v32 = v28;
      v29 = v36;
      if (sub_1002B7B44([v36 hasSet]))
      {
        [v29 isSpatialPersonaEnabled];
      }

      v30 = v32;
      swift_isUniquelyReferenced_nonNull_native();
      v38[0] = *&v19[v22];
      sub_100379510();

      *&v19[v22] = v38[0];
    }
  }

  (*(v8 + 16))(v10, a2, v7);
  sub_10032DCDC(v19, v14);
  sub_10000AF74(v14, 0, 1, v17);
  swift_getKeyPath();
  swift_getKeyPath();
  v31 = static Published.subscript.modify();
  sub_100381EB8(v14, v10);
  v31(v38, 0);

  return sub_10032DD40(v19);
}

void sub_10032BC28()
{
  sub_100005EF4();
  v62 = v0;
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v66 = type metadata accessor for DispatchWorkItemFlags();
  sub_100007FEC();
  v68 = v7;
  __chkstk_darwin(v8);
  sub_1000151DC();
  v64 = v9;
  sub_10000D414();
  v67 = type metadata accessor for DispatchQoS();
  sub_100007FEC();
  v65 = v10;
  __chkstk_darwin(v11);
  sub_1000151DC();
  v63 = v12;
  sub_10000D414();
  v61 = type metadata accessor for UUID();
  sub_100007FEC();
  v14 = v13;
  v16 = *(v15 + 64);
  v18 = __chkstk_darwin(v17);
  v19 = sub_10022AE64(v18);
  sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_10057E830;
  sub_10000D310();
  *(v20 + 56) = sub_100006AF0(v21, v22, v23);
  sub_10000D310();
  *(v20 + 64) = sub_100290B1C(v24, v25, v26);
  *(v20 + 32) = v6;
  sub_10000D310();
  *(v20 + 96) = sub_100006AF0(v27, v28, v29);
  sub_10000D310();
  *(v20 + 104) = sub_100290B1C(v30, v31, v32);
  *(v20 + 72) = v4;
  v59 = v6;
  v33 = v4;
  isa = UUID._bridgeToObjectiveC()().super.isa;
  *(v20 + 136) = sub_100006AF0(0, &qword_1006A5C50, NSUUID_ptr);
  *(v20 + 144) = sub_100290B1C(&unk_1006A4AB0, &qword_1006A5C50, NSUUID_ptr);
  *(v20 + 112) = isa;
  v35 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("Received add remote participant with handle %@ update %@ on conversation %@", 75, 2, &_mh_execute_header, v19, v35, v20);

  v36 = v62;
  v60 = *&v62[OBJC_IVAR___CSDSimulatedConversationManager_queue];
  v37 = v61;
  (*(v14 + 16))(&v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v2, v61);
  v38 = (*(v14 + 80) + 24) & ~*(v14 + 80);
  v39 = (v16 + v38 + 7) & 0xFFFFFFFFFFFFFFF8;
  v40 = swift_allocObject();
  *(v40 + 16) = v36;
  (*(v14 + 32))(v40 + v38, &v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v37);
  v41 = v59;
  *(v40 + v39) = v59;
  *(v40 + ((v39 + 15) & 0xFFFFFFFFFFFFFFF8)) = v33;
  v70[4] = sub_10032DEE8;
  v70[5] = v40;
  sub_100009FE4();
  v70[1] = 1107296256;
  sub_10000A600();
  v70[2] = v42;
  v70[3] = &unk_1006277A0;
  v43 = _Block_copy(v70);
  v44 = v41;
  v45 = v33;
  v46 = v36;
  static DispatchQoS.unspecified.getter();
  v69 = _swiftEmptyArrayStorage;
  sub_10000A184();
  sub_10000EED0(v47, v48, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
  sub_100008434();
  sub_10000D310();
  sub_10001000C(v49, v50, v51, v52);
  sub_10000FA38();
  v53 = v64;
  v54 = v66;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v43);
  sub_10000C734();
  v55(v53, v54);
  v56 = sub_100017D48();
  v57(v56);

  sub_100005EDC();
}

void sub_10032C0B0(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v68 = a4;
  v71 = type metadata accessor for UUID();
  v69 = *(v71 - 8);
  __chkstk_darwin(v71);
  v8 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10026D814(&unk_1006A7600, &unk_100584E50);
  v10 = __chkstk_darwin(v9 - 8);
  v70 = &v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v63 - v12;
  v14 = type metadata accessor for SimulatedConversationManager.SimulatedGroupSession(0);
  __chkstk_darwin(v14);
  v16 = &v63 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100328BA4();
  sub_1002CB8B4();

  v73 = v14;
  if (sub_100015468(v13, 1, v14) == 1)
  {
    sub_10032DE1C(v13);
    return;
  }

  sub_10032DE84(v13, v16);
  v17 = TUCopyIDSCanonicalAddressForHandle();
  if (v17)
  {
    v18 = v17;
    v72 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;
  }

  else
  {
    v72 = 0;
    v20 = 0;
  }

  v21 = *&v16[*(v73 + 20)];
  if (sub_10000B6F4(v21) < 3)
  {
    sub_10032DD40(v16);

    return;
  }

  v63 = a3;
  v64 = a2;
  v65 = v8;
  v66 = a1;
  v67 = v16;
  v22 = sub_10000B6F4(v21);
  v23 = v22;
  v24 = 0;
  v25 = v21 & 0xC000000000000001;
  v26 = v21 & 0xFFFFFFFFFFFFFF8;
  v76 = v21 + 32;
  v27 = &type metadata for String;
  v74 = v21 & 0xFFFFFFFFFFFFFF8;
  v75 = v21 & 0xC000000000000001;
  while (1)
  {
    if (v24 == v23)
    {
      v48 = sub_10022AE64(v22);
      sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
      v49 = swift_allocObject();
      *(v49 + 16) = xmmword_10057D6A0;
      *(v49 + 56) = sub_10026D814(&qword_1006A5C78, &qword_100580948);
      *(v49 + 64) = sub_10001000C(&qword_1006A5C80, &qword_1006A5C78, &qword_100580948, &protocol conformance descriptor for [A]);
      *(v49 + 32) = v21;

      v50 = sub_10001E478(v72, v20);
      v52 = v51;

      *(v49 + 96) = v27;
      *(v49 + 104) = sub_100009D88();
      *(v49 + 72) = v50;
      *(v49 + 80) = v52;
      v53 = static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)("participantDestinationIDs=%@, handleDestination=%@", 50, 2, &_mh_execute_header, v48, v53, v49);

      v54 = v67;
      goto LABEL_41;
    }

    if (v25)
    {
      v28 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v24 >= *(v26 + 16))
      {
        goto LABEL_43;
      }

      v28 = *(v76 + 8 * v24);
      swift_unknownObjectRetain();
    }

    if (__OFADD__(v24++, 1))
    {
      break;
    }

    v30 = [v28 destinationURIs];
    v31 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    v32 = 0;
    v33 = 1 << *(v31 + 32);
    v34 = (v33 + 63) >> 6;
    v35 = 56;
    if (!v34)
    {
      goto LABEL_18;
    }

    while (1)
    {
      v36 = *(v31 + v35);
      if (v36)
      {
        break;
      }

      v35 += 8;
      v32 -= 64;
      if (!--v34)
      {
        goto LABEL_18;
      }
    }

    v37 = __clz(__rbit64(v36));
    if (v37 - v33 != v32)
    {
      if (-v32 < 0 || (v37 - v32) >= v33)
      {
        goto LABEL_44;
      }

      if (((*(v31 + v35) >> v37) & 1) == 0)
      {
        goto LABEL_45;
      }

      v38 = v27;
      v39 = v21;
      v40 = v20;
      swift_bridgeObjectRetain_n();

      v41 = String._bridgeToObjectiveC()();
      v42 = TUCopyIDSCanonicalAddressForDestinationID();

      if (v42)
      {
        v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v45 = v44;
        swift_bridgeObjectRelease_n();

        v20 = v40;
        if (v40)
        {
          if (v43 == v72 && v40 == v45)
          {

            swift_unknownObjectRelease();
LABEL_37:

LABEL_38:
            sub_1003A7258(-1);
            v55 = v68;
            if (sub_1002B7B44([v68 hasSet]))
            {
              [v55 isSpatialPersonaEnabled];
            }

            v56 = v73;
            v57 = *(v73 + 24);
            v58 = v63;
            v59 = v67;
            swift_isUniquelyReferenced_nonNull_native();
            v77[0] = *(v59 + v57);
            sub_100379510();
            *(v59 + v57) = v77[0];
            v60 = v65;
            (*(v69 + 16))(v65, v64, v71);
            v61 = v70;
            sub_10032DCDC(v59, v70);
            sub_10000AF74(v61, 0, 1, v56);
            swift_getKeyPath();
            swift_getKeyPath();
            v62 = static Published.subscript.modify();
            sub_100381EB8(v61, v60);
            v62(v77, 0);

            v54 = v59;
LABEL_41:
            sub_10032DD40(v54);
            return;
          }

          v47 = _stringCompareWithSmolCheck(_:_:expecting:)();
          swift_unknownObjectRelease();

          v21 = v39;
          v27 = v38;
          v26 = v74;
          v25 = v75;
          if (v47)
          {
            goto LABEL_37;
          }
        }

        else
        {
          swift_unknownObjectRelease();

          v21 = v39;
          v27 = v38;
          v26 = v74;
          v25 = v75;
        }
      }

      else
      {
        swift_bridgeObjectRelease_n();
        v22 = swift_unknownObjectRelease();
        v20 = v40;
        v21 = v39;
        v27 = v38;
        v26 = v74;
        v25 = v75;
        if (!v20)
        {
          goto LABEL_38;
        }
      }
    }

    else
    {
LABEL_18:
      swift_unknownObjectRelease();
    }
  }

  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
}

uint64_t sub_10032C7E0(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, void (*a6)(id, id, uint64_t))
{
  v10 = type metadata accessor for UUID();
  sub_100007FEC();
  v12 = v11;
  __chkstk_darwin(v13);
  sub_100007FDC();
  v16 = v15 - v14;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = a3;
  v18 = a4;
  v19 = a1;
  a6(v17, v18, v16);

  return (*(v12 + 8))(v16, v10);
}

void sub_10032C8EC()
{
  sub_100005EF4();
  v42 = v1;
  v43 = v0;
  v3 = v2;
  v4 = v1;
  v47 = type metadata accessor for DispatchWorkItemFlags();
  sub_100007FEC();
  v49 = v5;
  __chkstk_darwin(v6);
  sub_1000151DC();
  v45 = v7;
  sub_10000D414();
  v48 = type metadata accessor for DispatchQoS();
  sub_100007FEC();
  v46 = v8;
  __chkstk_darwin(v9);
  sub_1000151DC();
  v44 = v10;
  sub_10000D414();
  v11 = type metadata accessor for UUID();
  sub_100007FEC();
  v13 = v12;
  v15 = *(v14 + 64);
  v17 = __chkstk_darwin(v16);
  v18 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_10022AE64(v17);
  sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_10057D6A0;
  v21 = [v4 identifier];
  *(v20 + 56) = &type metadata for UInt64;
  *(v20 + 64) = &protocol witness table for UInt64;
  *(v20 + 32) = v21;
  isa = UUID._bridgeToObjectiveC()().super.isa;
  *(v20 + 96) = sub_100006AF0(0, &qword_1006A5C50, NSUUID_ptr);
  *(v20 + 104) = sub_100290B1C(&unk_1006A4AB0, &qword_1006A5C50, NSUUID_ptr);
  *(v20 + 72) = isa;
  v23 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("Received remove remote participant with identifier %llu on conversation %@", 74, 2, &_mh_execute_header, v19, v23, v20);

  v24 = v43;
  (*(v13 + 16))(v18, v3, v11);
  v25 = (*(v13 + 80) + 24) & ~*(v13 + 80);
  v26 = (v15 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
  v27 = swift_allocObject();
  *(v27 + 16) = v24;
  (*(v13 + 32))(v27 + v25, v18, v11);
  v28 = v42;
  *(v27 + v26) = v42;
  v51[4] = sub_10032DD9C;
  v51[5] = v27;
  sub_100009FE4();
  v51[1] = 1107296256;
  sub_10000A600();
  v51[2] = v29;
  v51[3] = &unk_100627750;
  v30 = _Block_copy(v51);
  v31 = v24;
  v32 = v28;
  v33 = v44;
  static DispatchQoS.unspecified.getter();
  v50 = _swiftEmptyArrayStorage;
  sub_10000A184();
  sub_10000EED0(v34, v35, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
  sub_100008434();
  sub_10001000C(v36, &unk_1006A2960, &unk_10057D6E0, v37);
  sub_10000FA38();
  v38 = v45;
  v39 = v47;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v30);
  sub_10000C734();
  v40(v38, v39);
  (*(v46 + 8))(v33, v48);

  sub_100005EDC();
}

uint64_t sub_10032CD0C(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = type metadata accessor for UUID();
  v32 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10026D814(&unk_1006A7600, &unk_100584E50);
  v10 = __chkstk_darwin(v9 - 8);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v29 - v13;
  v15 = type metadata accessor for SimulatedConversationManager.SimulatedGroupSession(0);
  __chkstk_darwin(v15);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100328BA4();
  sub_1002CB8B4();

  if (sub_100015468(v14, 1, v15) == 1)
  {
    return sub_10032DE1C(v14);
  }

  v31 = a1;
  sub_10032DE84(v14, v17);
  v19 = [a3 identifier];
  v20 = *(v15 + 24);
  v21 = sub_1002CB950(v19, *&v17[v20]);
  if (v21)
  {

    v22 = sub_1002DA664([a3 identifier]);
    if (v23)
    {
      v24 = v22;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v33[0] = *&v17[v20];
      v30 = *(v33[0] + 24);
      sub_10026D814(&unk_1006A6FC0, &qword_100580940);
      _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v30);
      v26 = v33[0];
      v27 = *(*(v33[0] + 56) + 24 * v24);
      _NativeDictionary._delete(at:)();

      *&v17[v20] = v26;
    }

    (*(v32 + 16))(v8, a2, v6);
    sub_10032DCDC(v17, v12);
    sub_10000AF74(v12, 0, 1, v15);
    swift_getKeyPath();
    swift_getKeyPath();
    v28 = static Published.subscript.modify();
    sub_100381EB8(v12, v8);
    v28(v33, 0);
  }

  return sub_10032DD40(v17);
}

void sub_10032D160()
{
  sub_100005EF4();
  v2 = v1;
  v3 = type metadata accessor for DispatchWorkItemFlags();
  sub_100007FEC();
  __chkstk_darwin(v4);
  sub_100007FDC();
  v7 = v6 - v5;
  v27 = type metadata accessor for DispatchQoS();
  sub_100007FEC();
  v9 = v8;
  __chkstk_darwin(v10);
  sub_100007FDC();
  v13 = v12 - v11;
  v15 = sub_10022AE64(v14);
  sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_10057D690;
  *(v16 + 56) = sub_10026D814(&qword_1006A5C30, &unk_1005859A0);
  *(v16 + 64) = sub_10001000C(&qword_1006A5C38, &qword_1006A5C30, &unk_1005859A0, &protocol conformance descriptor for [A]);
  *(v16 + 32) = v2;

  v17 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("Received create simulated conversation with handles %@", 54, 2, &_mh_execute_header, v15, v17, v16);

  sub_100007C2C();
  v18 = swift_allocObject();
  *(v18 + 16) = v0;
  *(v18 + 24) = v2;
  v28[4] = sub_10032DCA8;
  v28[5] = v18;
  sub_100009FE4();
  v28[1] = 1107296256;
  sub_10000A600();
  v28[2] = v19;
  v28[3] = &unk_100627700;
  v20 = _Block_copy(v28);

  v21 = v0;
  static DispatchQoS.unspecified.getter();
  sub_10000A184();
  sub_10000EED0(v22, v23, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
  sub_100008434();
  sub_10001000C(v24, &unk_1006A2960, &unk_10057D6E0, v25);
  sub_10000FA38();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v20);
  sub_10000C734();
  v26(v7, v3);
  (*(v9 + 8))(v13, v27);

  sub_100005EDC();
}

void sub_10032D484(uint64_t a1, uint64_t a2)
{
  v4 = sub_10026D814(&unk_1006A7600, &unk_100584E50);
  __chkstk_darwin(v4 - 8);
  v6 = &v34 - v5;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for SimulatedConversationManager.SimulatedGroupSession(0);
  __chkstk_darwin(v11);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = objc_opt_self();
  v39 = a1;
  v15 = String._bridgeToObjectiveC()();
  v16 = [v14 normalizedHandleWithDestinationID:v15];

  if (!v16)
  {
    return;
  }

  v35 = v8;
  v36 = v7;
  v37 = v10;
  v38 = v6;
  v17 = [objc_allocWithZone(TUConversationMember) initWithHandle:v16];
  v18 = sub_10000B6F4(a2);
  v19 = _swiftEmptyArrayStorage;
  v40 = v16;
  v34 = v17;
  if (v18)
  {
    v20 = v18;
    v41 = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    if (v20 < 0)
    {
      __break(1u);
      goto LABEL_18;
    }

    v21 = 0;
    do
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        v22 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v22 = *(a2 + 8 * v21 + 32);
      }

      v23 = v22;
      if (![v22 value])
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        String._bridgeToObjectiveC()();
      }

      ++v21;
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    while (v20 != v21);
    v19 = v41;
  }

  v42 = v19;
  v24 = TUCopyIDSCanonicalAddressForHandle();
  v25 = v38;
  if (!v24)
  {
LABEL_18:
    __break(1u);
    return;
  }

  v26 = v24;
  sub_100006AF0(0, &qword_1006A5C40, IDSDestination_ptr);
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  sub_10032D918();
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((v42 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v42 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v27 = v42;
  v28 = v37;
  UUID.init()();
  *&v13[v11[6]] = _swiftEmptyDictionarySingleton;
  v29 = v11[8];
  *&v13[v29] = sub_1003A7258(-1);
  v30 = v35;
  v31 = v36;
  v32 = *(v35 + 16);
  v32(v13, v28, v36);
  *&v13[v11[5]] = v27;
  *&v13[v11[7]] = v34;
  v13[v11[9]] = 0;
  sub_10032A978();
  (*(v30 + 8))(v28, v31);
  v32(v28, v13, v31);
  sub_10032DCDC(v13, v25);
  sub_10000AF74(v25, 0, 1, v11);
  swift_getKeyPath();
  swift_getKeyPath();
  v33 = static Published.subscript.modify();
  sub_100381EB8(v25, v28);
  v33(&v41, 0);

  sub_10032DD40(v13);
}

id sub_10032D918()
{
  v0 = String._bridgeToObjectiveC()();

  v1 = [swift_getObjCClassFromMetadata() destinationWithURI:v0];

  return v1;
}

void sub_10032DA38(uint64_t a1)
{
  type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    sub_10032DB40(319, &qword_1006A5B78, &qword_1006A5BE0, &qword_100580880, &type metadata accessor for Array);
    if (v2 <= 0x3F)
    {
      sub_10032DBA4();
      if (v3 <= 0x3F)
      {
        sub_100006AF0(319, &qword_1006A3DE0, TUConversationMember_ptr);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_10032DB40(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_10026DCB4(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_10032DBA4()
{
  if (!qword_1006A5BE8)
  {
    v0 = type metadata accessor for Dictionary();
    if (!v1)
    {
      atomic_store(v0, &qword_1006A5BE8);
    }
  }
}

__n128 sub_10032DC04(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  return result;
}

uint64_t sub_10032DC18(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 18))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10032DC58(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 18) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 18) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10032DCDC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SimulatedConversationManager.SimulatedGroupSession(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10032DD40(uint64_t a1)
{
  v2 = type metadata accessor for SimulatedConversationManager.SimulatedGroupSession(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10032DD9C()
{
  type metadata accessor for UUID();
  sub_100007D00();
  v2 = *(v0 + 16);
  v4 = *(v0 + v3);

  return sub_10032CD0C(v2, v0 + v1, v4);
}

uint64_t sub_10032DE1C(uint64_t a1)
{
  v2 = sub_10026D814(&unk_1006A7600, &unk_100584E50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10032DE84(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SimulatedConversationManager.SimulatedGroupSession(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10032DF00()
{
  type metadata accessor for UUID();
  sub_100007FEC();
  sub_100035AC4();

  v2 = sub_100007728();
  v3(v2);

  v4 = sub_100015D74();

  return _swift_deallocObject(v4);
}

uint64_t sub_10032E018(uint64_t (*a1)(uint64_t, uint64_t))
{
  v2 = *(type metadata accessor for UUID() - 8);
  v3 = *(v1 + 16);
  v4 = v1 + ((*(v2 + 80) + 24) & ~*(v2 + 80));

  return a1(v3, v4);
}

uint64_t sub_10032E0A8(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  type metadata accessor for UUID();
  sub_100007D00();
  v3 = *(v1 + 16);
  v5 = *(v1 + v4);
  v6 = *(v1 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8));

  return a1(v3, v1 + v2, v5, v6);
}

uint64_t sub_10032E150()
{

  sub_100007C2C();

  return _swift_deallocObject(v1);
}

uint64_t sub_10032E194@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100328BA4();
  *a1 = result;
  return result;
}

void sub_10032E228(uint64_t a1)
{
  v1 = a1;
  v34 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = __CocoaSet.count.getter();
  }

  else
  {
    v2 = *(a1 + 16);
  }

  if (v2)
  {
    v41 = _swiftEmptyArrayStorage;
    sub_10039A2E0(0, v2 & ~(v2 >> 63), 0);
    v36 = _swiftEmptyArrayStorage;
    v38 = sub_10001E578();
    v39 = v3;
    v40 = v4 & 1;
    if ((v2 & 0x8000000000000000) == 0)
    {
      v5 = 0;
      v32 = v1 + 56;
      v31 = v1 + 64;
      v33 = v2;
      while (!__OFADD__(v5++, 1))
      {
        v7 = v38;
        v8 = v40;
        v35 = v39;
        v9 = v1;
        sub_1002E9694(v38, v39, v40, v1);
        v11 = v10;
        v12 = sub_100334D28();
        v14 = v13;

        v15 = v36;
        v41 = v36;
        v17 = v36[2];
        v16 = v36[3];
        if (v17 >= v16 >> 1)
        {
          sub_10039A2E0(v16 > 1, v17 + 1, 1);
          v15 = v41;
        }

        v15[2] = v17 + 1;
        v18 = &v15[2 * v17];
        v18[4] = v12;
        v18[5] = v14;
        v36 = v15;
        if (v34)
        {
          if (!v8)
          {
            goto LABEL_36;
          }

          v1 = v9;
          if (__CocoaSet.Index.handleBitPattern.getter())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v23 = v33;
          sub_10026D814(&qword_1006A5E38, &unk_100580B98);
          v24 = Set.Index._asCocoa.modify();
          __CocoaSet.formIndex(after:isUnique:)();
          v24(v37, 0);
        }

        else
        {
          if (v8)
          {
            goto LABEL_37;
          }

          if ((v7 & 0x8000000000000000) != 0)
          {
            goto LABEL_32;
          }

          v1 = v9;
          v19 = 1 << *(v9 + 32);
          if (v7 >= v19)
          {
            goto LABEL_32;
          }

          v20 = v7 >> 6;
          v21 = *(v32 + 8 * (v7 >> 6));
          if (((v21 >> v7) & 1) == 0)
          {
            goto LABEL_33;
          }

          if (*(v9 + 36) != v35)
          {
            goto LABEL_34;
          }

          v22 = v21 & (-2 << (v7 & 0x3F));
          if (v22)
          {
            v19 = __clz(__rbit64(v22)) | v7 & 0x7FFFFFFFFFFFFFC0;
            v23 = v33;
          }

          else
          {
            v25 = v20 << 6;
            v26 = v20 + 1;
            v27 = (v31 + 8 * v20);
            v23 = v33;
            while (v26 < (v19 + 63) >> 6)
            {
              v29 = *v27++;
              v28 = v29;
              v25 += 64;
              ++v26;
              if (v29)
              {
                sub_100010000(v7, v35, 0);
                v19 = __clz(__rbit64(v28)) + v25;
                goto LABEL_27;
              }
            }

            sub_100010000(v7, v35, 0);
          }

LABEL_27:
          v30 = *(v9 + 36);
          v38 = v19;
          v39 = v30;
          v40 = 0;
        }

        if (v5 == v23)
        {
          sub_100010000(v38, v39, v40);
          return;
        }
      }

      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
    }

    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
  }
}

uint64_t sub_10032E554()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    type metadata accessor for CompositeActivitySessionContainerProviderError(0);
    sub_10000A858();
    sub_100335040(v1, 255, v2, &unk_100580CF8);
    sub_10000BA40();
    swift_allocError();
    v4 = v3;
    v5 = type metadata accessor for UUID();
    sub_10000AF74(v4, 3, 4, v5);
    swift_willThrow();
  }

  return Strong;
}

uint64_t sub_10032E5F8()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    type metadata accessor for CompositeActivitySessionContainerProviderError(0);
    sub_10000A858();
    sub_100335040(v1, 255, v2, &unk_100580CF8);
    sub_10000BA40();
    swift_allocError();
    v4 = v3;
    v5 = type metadata accessor for UUID();
    sub_10000AF74(v4, 2, 4, v5);
    swift_willThrow();
  }

  return Strong;
}

uint64_t sub_10032E69C(uint64_t a1, char a2)
{
  if (a2)
  {
    return 0x726576726573626FLL;
  }

  _StringGuts.grow(_:)(19);

  v4._countAndFlagsBits = sub_1002F1B8C(a1);
  String.append(_:)(v4);

  v5._object = 0x800000010056BDA0;
  v5._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v5);
  return 39;
}

BOOL sub_10032E74C(uint64_t a1, char a2, uint64_t a3, char a4)
{
  if (a2)
  {
    return (a4 & 1) != 0;
  }

  if (a4)
  {
    return 0;
  }

  return a1 == a3;
}

unint64_t sub_10032E79C(uint64_t a1, char a2)
{
  _StringGuts.grow(_:)(25);

  v4._countAndFlagsBits = sub_10032E69C(a1, a2 & 1);
  String.append(_:)(v4);

  v5._countAndFlagsBits = 41;
  v5._object = 0xE100000000000000;
  String.append(_:)(v5);
  return 0xD000000000000016;
}

BOOL sub_10032E83C(uint64_t a1, char a2, uint64_t a3, char a4)
{
  if ((a2 & 1) == 0)
  {
    return (a4 & 1) == 0 && a1 == a3;
  }

  return (a4 & 1) != 0;
}

void sub_10032E864(uint64_t a1, Swift::UInt a2, char a3)
{
  if (a3)
  {
    v3 = 0;
  }

  else
  {
    v3 = a2;
    Hasher._combine(_:)(1uLL);
  }

  Hasher._combine(_:)(v3);
}

Swift::Int sub_10032E8A4(Swift::UInt a1, char a2)
{
  Hasher.init(_seed:)();
  v4 = 0;
  if ((a2 & 1) == 0)
  {
    Hasher._combine(_:)(1uLL);
    v4 = a1;
  }

  Hasher._combine(_:)(v4);
  return Hasher._finalize()();
}

Swift::Int sub_10032E910(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  Hasher.init(_seed:)();
  if (v3)
  {
    v2 = 0;
  }

  else
  {
    Hasher._combine(_:)(1uLL);
  }

  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

id sub_10032E98C(void *a1, uint64_t a2, uint64_t a3)
{
  swift_defaultActor_initialize();
  *(v3 + 112) = 0;
  type metadata accessor for CompositeActivitySessionContainerProvider.ProviderStorage();
  swift_allocObject();
  *(v3 + 120) = sub_100334CE4();
  *(v3 + 136) = "conversationManager:activitySessionContainersChanged:";
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *(v3 + 160) = 0;
  *(v3 + 176) = 0;
  *(v3 + 184) = 0;
  *(v3 + 168) = &_swiftEmptySetSingleton;
  *(v3 + 192) = 0;
  *(v3 + 128) = a1;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectWeakAssign();
  v8.receiver = v3;
  v8.super_class = type metadata accessor for CompositeActivitySessionContainerProvider();
  v5 = a1;
  v6 = objc_msgSendSuper2(&v8, "init");

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v6;
}

uint64_t sub_10032EAF0(void *a1)
{
  if (qword_1006A0A98 != -1)
  {
    sub_10000A19C(&qword_1006A0A98);
  }

  v2 = type metadata accessor for Logger();
  sub_10000AF9C(v2, qword_1006A5CD0);
  sub_10000667C();
  swift_unknownObjectRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = sub_100005274();
    v6 = sub_100005E84();
    v11 = v6;
    *v5 = 136315138;
    v7 = sub_1002F1B8C([a1 providerType]);
    v9 = sub_10002741C(v7, v8, &v11);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "Registering '%s' child provider on composite placeholder provider", v5, 0xCu);
    sub_100009B7C(v6);
    sub_100005F40(v6);
    sub_100006868();
  }

  return sub_10032EC30(a1);
}

uint64_t sub_10032EC30(void *a1)
{
  v2 = v1;
  swift_unknownObjectWeakInit();
  os_unfair_lock_lock(v2 + 4);
  [a1 providerType];
  sub_1002DB5DC(v6, v5);
  v5[8] = 0;
  sub_100382074();
  os_unfair_lock_unlock(v2 + 4);
  return sub_100335010(v6);
}

uint64_t sub_10032ECD4()
{
  sub_100006810();
  v1[4] = v2;
  v1[5] = v0;
  v1[2] = v3;
  v1[3] = v4;
  v5 = type metadata accessor for UUID();
  v1[6] = v5;
  sub_100005EB4(v5);
  v1[7] = v6;
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v7 = sub_10002F644();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_10032ED90()
{
  v27 = v0;
  if (qword_1006A0A98 != -1)
  {
    sub_10000A19C(&qword_1006A0A98);
  }

  v1 = v0[7];
  v2 = v0[2];
  v3 = type metadata accessor for Logger();
  v0[10] = sub_10000AF9C(v3, qword_1006A5CD0);
  v0[11] = *(v1 + 16);
  v0[12] = (v1 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v4 = sub_10000B8D0();
  v5(v4);
  v6 = v2;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[9];
  v12 = v0[6];
  v11 = v0[7];
  if (v9)
  {
    v13 = v0[2];
    sub_10000895C();
    swift_slowAlloc();
    v24 = sub_10000D670();
    v25 = sub_100005E84();
    v26 = v25;
    *v6 = 138412546;
    *(v6 + 1) = v13;
    *v24 = v13;
    *(v6 + 6) = 2080;
    sub_1000084C8();
    sub_100335040(v14, 255, v15, &protocol conformance descriptor for UUID);
    v16 = v13;
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v19 = v18;
    v20 = *(v11 + 8);
    v20(v10, v12);
    v21 = sub_10002741C(v17, v19, &v26);

    *(v6 + 14) = v21;
    _os_log_impl(&_mh_execute_header, v7, v8, "handleActivitySessionCreationRequest %@ onContainerWithID: %s", v6, 0x16u);
    sub_1000099A4(v24, &unk_1006A2630, &qword_10057CB40);
    sub_100007CBC();
    sub_100009B7C(v25);
    sub_100007CBC();
    sub_10000E668();
  }

  else
  {

    v20 = *(v11 + 8);
    v20(v10, v12);
  }

  v0[13] = v20;
  v22 = swift_task_alloc();
  v0[14] = v22;
  *v22 = v0;
  v22[1] = sub_10032F028;

  return sub_10032F744();
}

uint64_t sub_10032F028()
{
  sub_10000C698();
  v3 = v2;
  sub_100005F18();
  v5 = v4;
  sub_100007BC8();
  *v6 = v5;
  v7 = *v1;
  sub_100008060();
  *v8 = v7;
  *(v5 + 120) = v0;

  if (v0)
  {
    v9 = *(v5 + 40);

    return _swift_task_switch(sub_10032F174, v9, 0);
  }

  else
  {

    v10 = *(v7 + 8);

    return v10(v3);
  }
}

void sub_10032F174()
{
  (*(v0 + 88))(*(v0 + 64), *(v0 + 32), *(v0 + 48));
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 104);
  v5 = *(v0 + 64);
  v6 = *(v0 + 48);
  if (v3)
  {
    sub_10000895C();
    v7 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v19 = sub_100005E84();
    v20 = v19;
    *v7 = 136315394;
    sub_1000084C8();
    sub_100335040(v8, 255, v9, &protocol conformance descriptor for UUID);
    v10 = dispatch thunk of CustomStringConvertible.description.getter();
    v12 = v11;
    v4(v5, v6);
    v13 = sub_10002741C(v10, v12, &v20);

    *(v7 + 4) = v13;
    *(v7 + 12) = 2112;
    swift_errorRetain();
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v14;
    *v18 = v14;
    sub_10033561C(&_mh_execute_header, v15, v2, "Failed to handle activity creation request on %s: %@");
    sub_1000099A4(v18, &unk_1006A2630, &qword_10057CB40);
    sub_10000E668();
    sub_100009B7C(v19);
    sub_10000E668();
    sub_100006868();
  }

  else
  {

    v4(v5, v6);
  }

  sub_1000276C4();
  sub_100011274();

  __asm { BRAA            X2, X16 }
}

uint64_t sub_10032F43C(void *a1, uint64_t a2, uint64_t a3, const void *a4, uint64_t a5)
{
  v5[2] = a1;
  v5[3] = a5;
  v8 = type metadata accessor for UUID();
  v5[4] = v8;
  v5[5] = *(v8 - 8);
  v5[6] = swift_task_alloc();
  v5[7] = _Block_copy(a4);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = a1;

  v10 = swift_task_alloc();
  v5[8] = v10;
  *v10 = v5;
  v10[1] = sub_10032F588;

  return sub_10032ECD4();
}

uint64_t sub_10032F588()
{
  sub_100007648();
  v2 = v1;
  sub_100005F18();
  v4 = *(v3 + 56);
  v5 = *(v3 + 16);
  v6 = *v0;
  sub_100008060();
  *v7 = v6;

  v8 = sub_100008B88();
  v9(v8);
  (v4)[2](v4, v2);
  _Block_release(v4);

  sub_100009EF4();

  return v10();
}

uint64_t sub_10032F744()
{
  sub_100006810();
  v1[70] = v0;
  v1[69] = v2;
  v1[68] = v3;
  v1[67] = v4;
  sub_10026D814(&unk_1006A3DD0, &unk_10057C9D0);
  v1[71] = sub_100005E9C();
  v5 = type metadata accessor for UUID();
  v1[72] = v5;
  sub_100005EB4(v5);
  v1[73] = v6;
  v1[74] = swift_task_alloc();
  v1[75] = swift_task_alloc();
  v1[76] = swift_task_alloc();
  v1[77] = swift_task_alloc();
  v1[78] = swift_task_alloc();
  v7 = sub_10002F644();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_10032F85C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_10000C620();
  sub_100007648();
  if (qword_1006A0A98 != -1)
  {
    sub_10000A19C(&qword_1006A0A98);
  }

  v13 = v12[67];
  v14 = type metadata accessor for Logger();
  v12[79] = sub_10000AF9C(v14, qword_1006A5CD0);
  v15 = v13;
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = v12[67];
    sub_100005274();
    v19 = sub_10000D670();
    *v15 = 138412290;
    *(v15 + 1) = v18;
    *v19 = v18;
    v20 = v18;
    _os_log_impl(&_mh_execute_header, v16, v17, "Requesting authorization for %@", v15, 0xCu);
    sub_1000099A4(v19, &unk_1006A2630, &qword_10057CB40);
    sub_100006868();
    sub_10000E668();
  }

  v21 = sub_10032E5F8();
  v12[80] = v21;
  v12[81] = 0;
  v22 = v21;
  v23 = v12[68];
  v24 = v12[67];
  v12[2] = v12;
  v12[7] = v12 + 95;
  v12[3] = sub_10032FAE4;
  v25 = swift_continuation_init();
  v12[33] = sub_10026D814(&qword_1006A5E40, &qword_100580BC0);
  v12[26] = _NSConcreteStackBlock;
  v12[27] = 1107296256;
  v12[28] = sub_100331448;
  v12[29] = &unk_100627C60;
  v12[30] = v25;
  [v22 requestAuthorizationForActivity:v24 withOptions:v23 completionHandler:v12 + 26];
  sub_1000066F4();

  return _swift_continuation_await(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10, a11, a12);
}

uint64_t sub_10032FAE4()
{
  sub_100006810();
  sub_100005F18();
  sub_100007BC8();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 656) = v4;
  v5 = *(v3 + 560);
  if (v4)
  {
    v6 = sub_100331240;
  }

  else
  {
    v6 = sub_10032FBF8;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10032FBF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v14 = *(v12 + 760);
  swift_unknownObjectRelease();
  if (v14 != 1)
  {
    v32 = *(v12 + 536);
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = *(v12 + 536);
      sub_100005274();
      v36 = sub_10000D670();
      *v32 = 138412290;
      *(v32 + 1) = v35;
      *v36 = v35;
      v37 = v35;
      sub_10000B940(&_mh_execute_header, v38, v39, "%@ was not authorized by the user");
      sub_1000099A4(v36, &unk_1006A2630, &qword_10057CB40);
      sub_100006868();
      sub_10000E668();
    }

    sub_10033560C();

    sub_1000276C4();
    sub_100011274();

    __asm { BRAA            X2, X16 }
  }

  *(v12 + 664) = *(*(v12 + 560) + 120);
  sub_1003314CC((v12 + 440));
  sub_100009B14((v12 + 440), *(v12 + 464));
  sub_1000083C0();
  sub_100005E9C();
  sub_100335638();
  v15();
  *(v12 + 424) = sub_10000B960();
  *(v12 + 432) = swift_getAssociatedConformanceWitness();
  sub_1002A1D5C((v12 + 400));
  sub_100007624();
  dispatch thunk of Sequence.makeIterator()();

  sub_100009B7C((v12 + 440));
  sub_10001BDB8(v12 + 400, *(v12 + 424));
  sub_100007624();
  dispatch thunk of IteratorProtocol.next()();
  v16 = *(v12 + 480);
  *(v12 + 672) = v16;
  if (!v16)
  {
    v42 = *(v12 + 584);
    v43 = *(v12 + 576);
    v44 = *(v12 + 552);
    sub_100009B7C((v12 + 400));
    type metadata accessor for CompositeActivitySessionContainerProviderError(0);
    sub_10000A858();
    sub_100335040(v45, 255, v46, &unk_100580CF8);
    swift_allocError();
    v48 = v47;
    (*(v42 + 16))(v47, v44, v43);
    sub_10000AF74(v48, 0, 4, v43);
    swift_willThrow();
    sub_10033560C();

    sub_100009EF4();
    sub_100011274();

    __asm { BRAA            X1, X16 }
  }

  v17 = sub_100005FFC();
  v18(v17);
  swift_unknownObjectRetain();
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v19, v20))
  {
    v67 = v20;
    sub_10000895C();
    v21 = swift_slowAlloc();
    *(v12 + 520) = sub_100007630();
    *v21 = 136315394;
    sub_1000084C8();
    sub_100335040(v22, 255, v23, &protocol conformance descriptor for UUID);
    v24 = dispatch thunk of CustomStringConvertible.description.getter();
    v26 = v25;
    v27 = sub_10000FC14();
    v13(v27);
    v28 = sub_10002741C(v24, v26, (v12 + 520));

    *(v21 + 4) = v28;
    *(v21 + 12) = 2080;
    v29 = [v16 providerType];
    v30 = 0xE900000000000065;
    v31 = 0x7469736F706D6F63;
    switch(v29)
    {
      case 0uLL:
        goto LABEL_17;
      case 1uLL:
        sub_10000BB94();
        v31 = sub_1000171A0();
        goto LABEL_17;
      case 2uLL:
        v30 = 0xE400000000000000;
        v31 = sub_10002F750();
        goto LABEL_17;
      case 3uLL:
        v30 = 0xE600000000000000;
        v31 = sub_1000113A8();
LABEL_17:
        v52 = sub_10002741C(v31, v30, (v12 + 520));

        *(v21 + 14) = v52;
        _os_log_impl(&_mh_execute_header, v19, v67, "Delegating activity session creation request for %s to '%s' provider", v21, 0x16u);
        swift_arrayDestroy();
        sub_100007CBC();
        sub_100005F40(v21);

        goto LABEL_18;
      default:
        *(v12 + 528) = v29;
        sub_100011274();

        return _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
    }
  }

  v51 = sub_10000FC14();
  v13(v51);
LABEL_18:
  *(v12 + 696) = v13;
  v53 = *(v12 + 536);
  isa = UUID._bridgeToObjectiveC()().super.isa;
  *(v12 + 704) = isa;
  *(v12 + 80) = v12;
  *(v12 + 120) = v12 + 488;
  *(v12 + 88) = sub_10033027C;
  v55 = swift_continuation_init();
  v56 = sub_10026D814(&qword_1006A5E50, &qword_100580BC8);
  sub_100035AD4(v56);
  *(v12 + 280) = 1107296256;
  *(v12 + 288) = sub_100331818;
  *(v12 + 296) = &unk_100627C88;
  *(v12 + 304) = v55;
  [v16 handleActivitySessionCreationRequestWithActivity:v53 onContainerWithID:isa completionHandler:v12 + 272];
  sub_100011274();

  return _swift_continuation_await(v57, v58, v59, v60, v61, v62, v63, v64, a9, a10, a11, a12);
}

uint64_t sub_10033027C()
{
  sub_100006810();
  sub_100005F18();
  sub_100007BC8();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 112);
  *(v1 + 720) = v4;
  v5 = *(v3 + 560);
  if (v4)
  {
    v6 = sub_1003312DC;
  }

  else
  {
    v6 = sub_100330390;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10033104C()
{
  sub_100006810();
  sub_100005F18();
  sub_100007BC8();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 176);
  *(v1 + 752) = v4;
  v5 = *(v3 + 560);
  if (v4)
  {
    v6 = sub_100331388;
  }

  else
  {
    v6 = sub_100331160;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100331160()
{
  sub_1000066BC();
  v1 = *(v0 + 744);

  swift_unknownObjectRelease();
  v2 = *(v0 + 496);
  v3 = *&v2[OBJC_IVAR___CSDActivitySessionCreationRequestResult_activitySession];
  v4 = v3;

  swift_unknownObjectRelease();
  sub_100009B7C((v0 + 400));
  sub_10000E718();

  sub_1000276C4();

  return v5(v3);
}

uint64_t sub_100331240(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10000C620();
  sub_100007648();
  swift_willThrow();
  swift_unknownObjectRelease();
  sub_10000E718();

  sub_100009EF4();
  sub_1000066F4();

  return v11(v10, v11, v12, v13, v14, v15, v16, v17, a9, a10);
}

uint64_t sub_1003312DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10000C620();
  sub_100007648();
  v11 = *(v10 + 704);
  swift_willThrow();
  swift_unknownObjectRelease();

  sub_100009B7C((v10 + 400));
  sub_10000E718();

  sub_100009EF4();
  sub_1000066F4();

  return v13(v12, v13, v14, v15, v16, v17, v18, v19, a9, a10);
}

uint64_t sub_100331388(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10000C620();
  sub_100007648();
  v11 = v10[93];
  v12 = v10[91];
  swift_willThrow();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  sub_100009B7C(v10 + 50);
  sub_10000E718();

  sub_100009EF4();
  sub_1000066F4();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t sub_100331448(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = sub_100009B14((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v6 = a3;

    return sub_10046A8DC();
  }

  else
  {
    v8 = *v5;

    return sub_1004630A0(v8, v4);
  }
}

uint64_t sub_1003314CC@<X0>(void *a1@<X8>)
{
  v3 = sub_10026D814(&qword_1006A5DD8, &qword_100580B40);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - v5;
  os_unfair_lock_lock((v1 + 16));
  v7 = *(v1 + 24);

  os_unfair_lock_unlock((v1 + 16));
  v21[0] = v7;
  swift_getKeyPath();
  sub_100334FBC();
  KeyPathComparator.init<A>(_:order:)();
  sub_10026D814(&qword_1006A5DE8, &qword_100580B68);
  sub_10001000C(&qword_1006A5DF0, &qword_1006A5DE8, &qword_100580B68, &protocol conformance descriptor for LazySequence<A>);
  sub_10001000C(&qword_1006A5DF8, &qword_1006A5DD8, &qword_100580B40, &protocol conformance descriptor for KeyPathComparator<A>);
  v8 = Sequence.sorted<A>(using:)();
  (*(v4 + 8))(v6, v3);

  v22 = _swiftEmptyArrayStorage;
  v9 = *(v8 + 16);
  if (v9)
  {
    v15 = a1;
    v10 = v8 + 32;
    v11 = _swiftEmptyArrayStorage;
    do
    {
      sub_100335188(v10, v21, &qword_1006A5E00, &qword_100580B70);
      sub_100335188(v21, &v19, &qword_1006A5E00, &qword_100580B70);
      v17 = v19;
      sub_1003282B8(&v20, &v18);
      sub_1002DB5DC(&v18, v16);
      Strong = swift_unknownObjectWeakLoadStrong();
      sub_100335010(v16);
      sub_1000099A4(&v17, &qword_1006A5E00, &qword_100580B70);
      sub_1000099A4(v21, &qword_1006A5E00, &qword_100580B70);
      if (Strong)
      {
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v11 = v22;
      }

      v10 += 16;
      --v9;
    }

    while (v9);

    a1 = v15;
  }

  else
  {

    v11 = _swiftEmptyArrayStorage;
  }

  a1[3] = sub_10026D814(&qword_1006A5E08, &unk_100580B78);
  result = sub_10001000C(&qword_1006A5E10, &qword_1006A5E08, &unk_100580B78, &protocol conformance descriptor for [A]);
  a1[4] = result;
  *a1 = v11;
  return result;
}

uint64_t *sub_100331818(uint64_t a1, void *a2, void *a3)
{
  result = sub_100009B14((a1 + 32), *(a1 + 56));
  v6 = *result;
  if (a3)
  {
    v7 = a3;

    return sub_10046A8DC();
  }

  else if (a2)
  {
    v8 = a2;

    return sub_10046A8E0(v6, v8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1003318A8()
{
  os_unfair_lock_lock(v0 + 4);
  sub_1002CB9BC();
  if (v6[8])
  {
    Strong = 0;
  }

  else
  {
    Strong = swift_unknownObjectWeakLoadStrong();
  }

  sub_1000099A4(v6, &qword_1006A5E58, &qword_100580BD0);
  os_unfair_lock_unlock(v0 + 4);
  if (!Strong)
  {
    type metadata accessor for CompositeActivitySessionContainerProviderError(0);
    sub_100335040(&qword_1006A5E48, 255, type metadata accessor for CompositeActivitySessionContainerProviderError, &unk_100580CF8);
    swift_allocError();
    v3 = v2;
    v4 = type metadata accessor for UUID();
    sub_10000AF74(v3, 4, 4, v4);
    swift_willThrow();
  }

  return Strong;
}

uint64_t sub_1003319BC(void *a1)
{
  v1 = [a1 providerType];

  return sub_100331A70(v1, 0);
}

uint64_t sub_100331A08(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  swift_unknownObjectRetain();

  a4(a3);
  swift_unknownObjectRelease();
}

uint64_t sub_100331A70(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = type metadata accessor for TaskPriority();
  sub_1000083C0();
  v8 = v7;
  __chkstk_darwin(v9);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10026D814(&qword_1006A5310, &qword_10057D580);
  __chkstk_darwin(v12 - 8);
  v45 = &v41 - v13;
  v14 = type metadata accessor for SharePlayLatencyLogger.Event();
  sub_1000083C0();
  v16 = v15;
  __chkstk_darwin(v17);
  v46 = &v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1006A0A98 != -1)
  {
    sub_10000A19C(&qword_1006A0A98);
  }

  v19 = type metadata accessor for Logger();
  sub_10000AF9C(v19, qword_1006A5CD0);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = sub_100005274();
    v42 = v16;
    v23 = v22;
    v24 = sub_100005E84();
    v44 = v11;
    v41 = v24;
    v47[0] = v24;
    *v23 = 136315138;
    v25 = sub_10032E69C(a1, a2 & 1);
    v43 = v3;
    v27 = v14;
    v28 = a2;
    v29 = a1;
    v30 = v8;
    v31 = v6;
    v32 = sub_10002741C(v25, v26, v47);
    v3 = v43;

    *(v23 + 4) = v32;
    v6 = v31;
    v8 = v30;
    a1 = v29;
    a2 = v28;
    v14 = v27;
    _os_log_impl(&_mh_execute_header, v20, v21, "Adding observer update request from: %s", v23, 0xCu);
    v33 = v41;
    sub_100009B7C(v41);
    v11 = v44;
    sub_100005F40(v33);
    v34 = v23;
    v16 = v42;
    sub_100005F40(v34);
  }

  v35 = &enum case for SharePlayLatencyLogger.Event.observerRequestedContainerUpdate(_:);
  if ((a2 & 1) == 0)
  {
    v35 = &enum case for SharePlayLatencyLogger.Event.containerProviderRequestedContainerUpdate(_:);
  }

  v36 = v46;
  (*(v16 + 104))(v46, *v35, v14);
  static SharePlayLatencyLogger.emitEvent(_:)();
  (*(v16 + 8))(v36, v14);
  os_unfair_lock_lock((v3 + 160));
  sub_1003963F8(v47, a1, a2 & 1);
  if (!*(v3 + 176))
  {
    v37 = v45;
    static TaskPriority.userInitiated.getter();
    sub_10000AF74(v37, 0, 1, v6);
    v38 = swift_allocObject();
    v38[2] = 0;
    v38[3] = 0;
    v38[4] = v3;

    sub_1002762F0();
    *(v3 + 176) = v39;
  }

  os_unfair_lock_unlock((v3 + 160));
  static Task<>.currentPriority.getter();
  Task.escalatePriority(to:)();

  return (*(v8 + 8))(v11, v6);
}

uint64_t sub_100331E88()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100035FE4;

  return sub_100331F18();
}

uint64_t sub_100331F18()
{
  sub_100006810();
  v1[20] = v0;
  v2 = type metadata accessor for SharePlayLatencyLogger.Event();
  v1[21] = v2;
  sub_100005EB4(v2);
  v1[22] = v3;
  v1[23] = sub_100005E9C();
  v4 = type metadata accessor for SharePlayLatencyLogger.Interval();
  v1[24] = v4;
  sub_100005EB4(v4);
  v1[25] = v5;
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  v6 = sub_10002F644();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_1003324F8()
{
  sub_100006810();
  sub_100005F18();
  sub_100007BC8();
  *v2 = v1;
  v3 = *v0;
  sub_100008060();
  *v4 = v3;
  *(v7 + 296) = v5;
  *(v7 + 304) = v6;

  v8 = sub_10002F644();

  return _swift_task_switch(v8, v9, v10);
}

void sub_1003325F4()
{
  v185 = v0;
  v2 = 0;
  v3 = *(v0 + 232);
  v174 = v0 + 16;
  v4 = -1;
  v5 = -1 << *(v3 + 32);
  if (-v5 < 64)
  {
    v4 = ~(-1 << -v5);
  }

  v6 = v4 & *(v3 + 56);
  v7 = (63 - v5) >> 6;
  while (v6)
  {
    v8 = v2;
LABEL_10:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    if (*(*(v3 + 48) + ((v8 << 10) | (16 * v9)) + 8) == 1)
    {

      goto LABEL_16;
    }
  }

  while (1)
  {
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
LABEL_98:
      __break(1u);
      goto LABEL_99;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 56 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_10;
    }
  }

  v10 = *(v0 + 160);

  v11 = *(v10 + 184);
  if (v11)
  {
    v12 = *(v0 + 304);

    v13 = sub_1002F55C8(v12, v11);

    if (v13)
    {

      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = *(v0 + 296);
        v17 = sub_100005274();
        v18 = sub_100005E84();
        v184 = v18;
        *v17 = 136315138;
        v19 = sub_1002F1B8C(v16);
        v21 = sub_10002741C(v19, v20, &v184);

        *(v17 + 4) = v21;
        v0 = v183;
        _os_log_impl(&_mh_execute_header, v14, v15, "Child provider '%s' containers have not changed, skipping delegate update", v17, 0xCu);
        sub_100009B7C(v18);
        sub_100005F40(v18);
        sub_100005F40(v17);

        v22 = sub_100007624();
        v23(v22);
      }

      else
      {

        v103 = sub_100007624();
        v104(v103);
      }

      v102 = *(v0 + 224);
LABEL_55:
      *(v0 + 224) = v102;
      v105 = sub_100333A24(*(v0 + 160));
      *(v0 + 232) = v105;
      v106 = *(v0 + 184);
      if (!v105)
      {

        sub_100009EF4();
        sub_100035CCC();

        __asm { BRAA            X1, X16 }
      }

      v1 = v105;
      v107 = *(v0 + 176);
      sub_10000C210(v107);
      v108(v106);
      sub_1000181D4();
      static SharePlayLatencyLogger.beginInterval(for:activityIdentifier:)();
      *(v0 + 256) = *(v107 + 8);
      *(v0 + 264) = (v107 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v109 = sub_10000B8D0();
      v110(v109);
      if (qword_1006A0A98 != -1)
      {
        goto LABEL_108;
      }

      while (1)
      {
        v111 = type metadata accessor for Logger();
        *(v0 + 272) = sub_10000AF9C(v111, qword_1006A5CD0);

        v112 = Logger.logObject.getter();
        v113 = static os_log_type_t.default.getter();

        if (!os_log_type_enabled(v112, v113))
        {
          break;
        }

        v114 = sub_100005274();
        v115 = sub_100005E84();
        v116 = v115;
        *(v0 + 128) = v115;
        *v114 = 136315138;
        v117 = _swiftEmptyArrayStorage;
        if (!*(v1 + 16))
        {
LABEL_90:
          *(v0 + 152) = v117;
          v151 = sub_100005ED0();
          sub_10026D814(v151, v152);
          v153 = sub_10000F6B0(&qword_1006A2C20);
          sub_10003DBAC(v153);
          sub_10003A598();

          v154 = sub_100005ED0();
          sub_10002741C(v154, v155, v156);
          sub_10000667C();

          *(v114 + 4) = &unk_1006A3C60;
          _os_log_impl(&_mh_execute_header, v112, v113, "Handling update request from: %s", v114, 0xCu);
          sub_100009B7C(v116);
          sub_100005F40(v116);
          sub_100005F40(v114);
          break;
        }

        v163 = v115;
        v165 = v114;
        bufa = v113;
        v118 = sub_100021F24();
        v175 = v119;
        sub_10039A2E0(v118, v119, 0);
        v120 = *(v0 + 136);
        v123 = sub_100308264(v1);
        v117 = v120;
        v124 = 0;
        v125 = v1 + 56;
        v126 = 1;
        v172 = v1;
        v173 = v1 + 56;
        if ((v123 & 0x8000000000000000) == 0)
        {
          while (v123 < v126 << *(v1 + 32))
          {
            v127 = v126 << v123;
            if ((*(v125 + 8 * (v123 >> 6)) & (v126 << v123)) == 0)
            {
              goto LABEL_100;
            }

            if (*(v1 + 36) != v121)
            {
              goto LABEL_101;
            }

            v128 = *(v1 + 48) + 16 * v123;
            if ((*(v128 + 8) & 1) == 0)
            {
              v177 = v122;
              v181 = v121;
              v131 = v117;
              v132 = *v128;
              *(v0 + 88) = 0;
              *(v0 + 96) = 0xE000000000000000;
              _StringGuts.grow(_:)(19);

              *(v0 + 72) = 39;
              *(v0 + 80) = 0xE100000000000000;
              v133 = 0xE900000000000065;
              v134 = sub_100035E10();
              switch(v132)
              {
                case 0:
                  goto LABEL_69;
                case 1:
                  v134 = sub_1000171A0();
                  v133 = 0xEC0000006E6F6974;
                  goto LABEL_69;
                case 2:
                  v133 = 0xE400000000000000;
                  v134 = sub_10002F750();
                  goto LABEL_69;
                case 3:
                  v133 = 0xE600000000000000;
                  v134 = sub_1000113A8();
LABEL_69:
                  v135 = v133;
                  String.append(_:)(*&v134);

                  v136._object = 0x800000010056BDA0;
                  v136._countAndFlagsBits = 0xD000000000000010;
                  String.append(_:)(v136);
                  v130 = *(v0 + 72);
                  v129 = *(v0 + 80);
                  v117 = v131;
                  v1 = v172;
                  v125 = v173;
                  v126 = 1;
                  v121 = v181;
                  v122 = v177;
                  goto LABEL_70;
                default:
                  *(v0 + 144) = v132;
                  sub_100035CCC();

                  _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
                  return;
              }
            }

            v129 = 0xE800000000000000;
            v130 = 0x726576726573626FLL;
LABEL_70:
            *(v0 + 136) = v117;
            v138 = v117[2];
            v137 = v117[3];
            if (v138 >= v137 >> 1)
            {
              v182 = v121;
              v178 = v122;
              sub_10039A2E0(v137 > 1, v138 + 1, 1);
              v122 = v178;
              v121 = v182;
              v126 = 1;
              v125 = v173;
              v117 = *(v183 + 136);
            }

            v117[2] = v138 + 1;
            v139 = &v117[2 * v138];
            v139[4] = v130;
            v139[5] = v129;
            if (v122)
            {
              goto LABEL_111;
            }

            v140 = v126 << *(v1 + 32);
            v0 = v183;
            if (v123 >= v140)
            {
              goto LABEL_102;
            }

            if ((*(v125 + 8 * (v123 >> 6)) & v127) == 0)
            {
              goto LABEL_103;
            }

            if (*(v1 + 36) != v121)
            {
              goto LABEL_104;
            }

            sub_10000F36C();
            if (v141)
            {
              sub_10000FDD0();
              while (v146 < v145)
              {
                sub_100006DF4();
                if (v129)
                {
                  v140 = v147;
                  sub_100015F90(v143, v144);
                  sub_10003DDCC();
                  goto LABEL_83;
                }
              }

              v148 = v147;
              sub_100015F90(v143, v144);
              v125 = v173;
              v142 = v175;
              v117 = v148;
            }

            else
            {
              sub_1000079C8();
            }

LABEL_83:
            if (++v124 == v142)
            {
              v113 = bufa;
              v116 = v163;
              v114 = v165;
              goto LABEL_90;
            }

            v122 = 0;
            v121 = *(v1 + 36);
            v123 = v140;
            if (v140 < 0)
            {
              break;
            }
          }
        }

LABEL_99:
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
        sub_10000A19C(&qword_1006A0A98);
      }

      sub_1000151F0();
      *(v0 + 280) = sub_100335040(v157, v158, v159, &unk_100580B08);
      v160 = swift_task_alloc();
      *(v0 + 288) = v160;
      *v160 = v0;
      sub_100010314(v160);
      sub_100035CCC();

      sub_100334440();
      return;
    }
  }

LABEL_16:
  v24 = *(v0 + 304);
  *(*(v0 + 160) + 184) = v24;
  swift_bridgeObjectRetain_n();

  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.default.getter();

  if (!os_log_type_enabled(v25, v26))
  {
LABEL_45:

    v76 = *(v0 + 256);
    v77 = *(v183 + 240);
    v180 = *(v183 + 224);
    v78 = *(v183 + 344);
    v79 = *(v183 + 184);
    v80 = *(v183 + 168);
    static SharePlayLatencyLogger.endInterval(_:)();
    v77(v79, v78, v80);
    v0 = v183;
    static SharePlayLatencyLogger.beginInterval(for:activityIdentifier:)();
    v76(v79, v80);
    v81 = sub_10032E554();
    *(v183 + 312) = v81;
    *(v183 + 320) = v180;
    v82 = *(v183 + 304);
    if (!v180)
    {
      v89 = v81;
      v90 = swift_task_alloc();
      *(v183 + 328) = v90;
      *(v90 + 16) = v89;
      *(v90 + 24) = v82;
      v91 = swift_task_alloc();
      *(v183 + 336) = v91;
      *v91 = v183;
      v91[1] = sub_1003333E8;
      sub_100035CCC();

      sub_1002ECF18(v92, v93, v94, v95, v96);
      return;
    }

    swift_errorRetain();
    v83 = Logger.logObject.getter();
    v84 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v83, v84))
    {
      sub_100005274();
      v85 = sub_10000D670();
      *v180 = 138412290;
      swift_errorRetain();
      v86 = _swift_stdlib_bridgeErrorToNSError();
      *(v180 + 4) = v86;
      *v85 = v86;
      sub_10000B940(&_mh_execute_header, v87, v88, "Composite provider encountered error: %@");
      sub_1000099A4(v85, &unk_1006A2630, &qword_10057CB40);
      sub_100006868();
      sub_10000E668();
    }

    else
    {
    }

    v98 = *(v183 + 200);
    static SharePlayLatencyLogger.endInterval(_:)();
    v99 = *(v98 + 8);
    v100 = sub_100007624();
    v99(v100);
    v101 = sub_10000B8D0();
    v99(v101);
    v102 = 0;
    goto LABEL_55;
  }

  v164 = v26;
  log = v25;
  v27 = *(v0 + 296);
  sub_10000895C();
  v28 = swift_slowAlloc();
  *(v0 + 104) = sub_100007630();
  *v28 = 136315394;
  v29 = sub_1002F1B8C(v27);
  v31 = sub_10002741C(v29, v30, (v0 + 104));

  *(v28 + 4) = v31;
  buf = v28;
  *(v28 + 12) = 2080;
  v32 = sub_10001E550();
  v33 = _swiftEmptyArrayStorage;
  if (!v32)
  {
LABEL_44:
    *(v0 + 120) = v33;
    v71 = sub_100005ED0();
    sub_10026D814(v71, v72);
    sub_10000F6B0(&qword_1006A2C20);
    BidirectionalCollection<>.joined(separator:)();
    sub_10003A598();

    v73 = sub_100005ED0();
    sub_10002741C(v73, v74, v75);
    sub_10000667C();

    *(buf + 14) = v0 + 120;
    v25 = log;
    _os_log_impl(&_mh_execute_header, log, v164, "Sending latest activity session containers from child provider '%s' to observers: %s", buf, 0x16u);
    swift_arrayDestroy();
    sub_10000E668();
    sub_100005F40(buf);
    goto LABEL_45;
  }

  v34 = v32;
  v1 = *(v0 + 304);
  *(v0 + 112) = _swiftEmptyArrayStorage;
  sub_10039A2E0(0, v32 & ~(v32 >> 63), 0);
  v33 = *(v0 + 112);
  *(v0 + 48) = sub_10001E578();
  *(v0 + 56) = v35;
  *(v0 + 64) = v36 & 1;
  if ((v34 & 0x8000000000000000) == 0)
  {
    v37 = 0;
    v176 = v34;
    v179 = v24 & 0xC000000000000001;
    v38 = *(v0 + 304);
    v171 = v38;
    v169 = v38 + 64;
    v170 = v38 + 56;
    do
    {
      if (__OFADD__(v37++, 1))
      {
        goto LABEL_98;
      }

      v40 = *(v0 + 48);
      v1 = *(v0 + 56);
      v41 = *(v0 + 64);
      v42 = sub_100008B88();
      sub_1002E9680(v42, v43, v41, v44);
      v46 = v45;
      v47 = sub_100333A84();
      v49 = v48;

      *(v0 + 112) = v33;
      v51 = v33[2];
      v50 = v33[3];
      v52 = v33;
      if (v51 >= v50 >> 1)
      {
        sub_10039A2E0(v50 > 1, v51 + 1, 1);
        v52 = *(v183 + 112);
      }

      v52[2] = v51 + 1;
      v53 = &v52[2 * v51];
      v53[4] = v47;
      v53[5] = v49;
      v33 = v52;
      if (v179)
      {
        v0 = v183;
        if (!v41)
        {
          goto LABEL_110;
        }

        sub_100008B88();
        if (__CocoaSet.Index.handleBitPattern.getter())
        {
          swift_isUniquelyReferenced_nonNull_native();
        }

        v59 = v176;
        sub_10026D814(&unk_1006A5E28, &unk_100580B88);
        v1 = v174;
        v60 = Set.Index._asCocoa.modify();
        __CocoaSet.formIndex(after:isUnique:)();
        v60(v174, 0);
      }

      else
      {
        v0 = v183;
        v54 = v171;
        if (v41)
        {
          goto LABEL_112;
        }

        if ((v40 & 0x8000000000000000) != 0)
        {
          goto LABEL_105;
        }

        v55 = 1 << *(v171 + 32);
        if (v40 >= v55)
        {
          goto LABEL_105;
        }

        v56 = v40 >> 6;
        v57 = *(v170 + 8 * (v40 >> 6));
        if (((v57 >> v40) & 1) == 0)
        {
          goto LABEL_106;
        }

        if (*(v171 + 36) != v1)
        {
          goto LABEL_107;
        }

        v58 = v57 & (-2 << (v40 & 0x3F));
        if (v58)
        {
          v55 = __clz(__rbit64(v58)) | v40 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v61 = v56 << 6;
          v62 = (v169 + 8 * v56);
          v63 = v56 + 1;
          while (v63 < (v55 + 63) >> 6)
          {
            v65 = *v62++;
            v64 = v65;
            v61 += 64;
            ++v63;
            if (v65)
            {
              v66 = sub_100008B88();
              sub_100010000(v66, v67, 0);
              v55 = __clz(__rbit64(v64)) + v61;
              goto LABEL_40;
            }
          }

          v68 = sub_100008B88();
          sub_100010000(v68, v69, 0);
LABEL_40:
          v54 = v171;
        }

        v70 = *(v54 + 36);
        *(v183 + 48) = v55;
        *(v183 + 56) = v70;
        *(v183 + 64) = 0;
        v59 = v176;
      }
    }

    while (v37 != v59);
    sub_100010000(*(v0 + 48), *(v0 + 56), *(v0 + 64));
    goto LABEL_44;
  }

  __break(1u);
LABEL_110:
  __break(1u);
LABEL_111:
  __break(1u);
LABEL_112:
  __break(1u);
}

uint64_t sub_1003333E8()
{
  sub_10000C698();
  sub_100005F18();
  v2 = *(v1 + 160);
  v3 = *v0;
  sub_100008060();
  *v4 = v3;

  return _swift_task_switch(sub_100333528, v2, 0);
}

uint64_t sub_100333A24(uint64_t a1)
{
  os_unfair_lock_lock((a1 + 160));
  v2 = *(a1 + 168);
  if (*(v2 + 16))
  {
    *(a1 + 168) = &_swiftEmptySetSingleton;
  }

  else
  {
    *(a1 + 176) = 0;

    v2 = 0;
  }

  os_unfair_lock_unlock((a1 + 160));
  return v2;
}

uint64_t sub_100333A84()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = 0;
  v30 = 0xE000000000000000;
  _StringGuts.grow(_:)(79);
  v6._object = 0x800000010056BDC0;
  v6._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v6);
  v7 = [v0 UUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  sub_100335040(&qword_1006A25E0, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v8._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v8);

  v9 = *(v3 + 8);
  v9(v5, v2);
  v10._countAndFlagsBits = 0x555570756F726720;
  v10._object = 0xEB000000003D4449;
  String.append(_:)(v10);
  v11 = [v1 groupUUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v12._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v12);

  v9(v5, v2);
  v13._countAndFlagsBits = 0x3D657461747320;
  v13._object = 0xE700000000000000;
  String.append(_:)(v13);
  v28 = [v1 state];
  type metadata accessor for TUConversationState(0);
  _print_unlocked<A, B>(_:_:)();
  v14._countAndFlagsBits = 0xD000000000000013;
  v14._object = 0x800000010056BDE0;
  String.append(_:)(v14);
  v15 = [v1 activitySessions];
  sub_100006AF0(0, &unk_1006A4820, TUConversationActivitySession_ptr);
  sub_10000CE3C(&unk_1006A2600, &unk_1006A4820, TUConversationActivitySession_ptr);
  v16 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  sub_10032E228(v16);
  v18 = v17;

  v28 = v18;
  sub_10026D814(&unk_1006A3C60, &unk_10057D910);
  sub_10001000C(&qword_1006A2C20, &unk_1006A3C60, &unk_10057D910, &protocol conformance descriptor for [A]);
  v19 = BidirectionalCollection<>.joined(separator:)();
  v21 = v20;

  v22._countAndFlagsBits = v19;
  v22._object = v21;
  String.append(_:)(v22);

  v23._countAndFlagsBits = 0x696261706163205DLL;
  v23._object = 0xEF3D73656974696CLL;
  String.append(_:)(v23);
  [v1 capabilities];
  v24._countAndFlagsBits = TUConversationActivitySessionContainerCapabilities.description.getter();
  String.append(_:)(v24);

  v25._countAndFlagsBits = 62;
  v25._object = 0xE100000000000000;
  String.append(_:)(v25);
  return v29;
}

void sub_100333E70(void *a1, uint64_t a2)
{
  if ([a1 respondsToSelector:"conversationManager:activitySessionContainersChanged:"])
  {
    sub_100006AF0(0, &unk_1006A6310, TUConversationActivitySessionContainer_ptr);
    sub_10000CE3C(&qword_1006A4800, &unk_1006A6310, TUConversationActivitySessionContainer_ptr);
    swift_unknownObjectRetain();
    isa = Set._bridgeToObjectiveC()().super.isa;
    [a1 conversationManager:a2 activitySessionContainersChanged:isa];
    swift_unknownObjectRelease();
  }
}

uint64_t sub_100333FBC()
{
  sub_100006810();
  v0 = swift_task_alloc();
  v1 = sub_100008A48(v0);
  *v1 = v2;
  v1[1] = sub_100334048;

  return sub_100334440();
}

uint64_t sub_100334048()
{
  sub_100006810();
  v2 = v1;
  sub_100005F18();
  v3 = *v0;
  sub_100008060();
  *v4 = v3;

  sub_1000276C4();

  return v5(v2);
}

uint64_t sub_1003341B0(const void *a1, uint64_t a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);

  v3 = swift_task_alloc();
  v2[4] = v3;
  *v3 = v2;
  v3[1] = sub_100334258;

  return sub_100333FBC();
}

uint64_t sub_100334258()
{
  sub_1000066BC();
  sub_100005F18();
  v2 = *(v1 + 24);
  v3 = *v0;
  sub_100008060();
  *v4 = v3;

  sub_100006AF0(0, &unk_1006A6310, TUConversationActivitySessionContainer_ptr);
  sub_10000CE3C(&qword_1006A4800, &unk_1006A6310, TUConversationActivitySessionContainer_ptr);
  isa = Set._bridgeToObjectiveC()().super.isa;

  (v2)[2](v2, isa);

  _Block_release(v2);
  v6 = *(v3 + 8);

  return v6();
}

uint64_t sub_100334440()
{
  sub_10000C698();
  v1[30] = v0;
  if (v2)
  {
    swift_getObjectType();
    v3 = dispatch thunk of Actor.unownedExecutor.getter();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0;
  }

  v1[31] = v3;
  v1[32] = v5;

  return _swift_task_switch(sub_1003344D8, v3, v5);
}

uint64_t sub_1003344D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_1000066BC();
  sub_1003314CC(v12 + 23);
  sub_100009B14(v12 + 23, v12[26]);
  sub_1000083C0();
  sub_100005E9C();
  sub_100335638();
  v13();
  v12[21] = sub_10000B960();
  v12[22] = swift_getAssociatedConformanceWitness();
  sub_1002A1D5C(v12 + 18);
  sub_100007624();
  dispatch thunk of Sequence.makeIterator()();

  sub_100009B7C(v12 + 23);
  sub_10001BDB8((v12 + 18), v12[21]);
  sub_100007624();
  dispatch thunk of IteratorProtocol.next()();
  v14 = v12[28];
  v12[33] = v14;
  if (v14)
  {
    v12[2] = v12;
    v12[7] = v12 + 29;
    sub_10000FA44();
    v15 = sub_10026D814(&qword_1006A5DD0, &qword_100580B38);
    sub_100015A90(v15);
    v12[11] = 1107296256;
    sub_1000162A8(&unk_100627C10);
    [v14 activeActivitySessionContainersWithCompletionHandler:v12 + 10];

    return _swift_continuation_await(v12 + 2, v16, v17, v18, v19, v20, v21, v22, a9, a10, a11, a12);
  }

  else
  {
    v23 = v12[30];
    sub_100009B7C(v12 + 18);
    atomic_store(0, (v23 + 192));
    if (sub_10000B6F4(_swiftEmptyArrayStorage))
    {
      sub_10039B7F8(_swiftEmptyArrayStorage);
      v25 = v24;
    }

    else
    {
      v25 = &_swiftEmptySetSingleton;
    }

    v26 = v12[1];

    return v26(0, v25);
  }
}

uint64_t sub_100334724()
{
  sub_100006810();
  sub_100005F18();
  sub_100007BC8();
  *v1 = v0;
  v3 = *(v2 + 256);
  v4 = *(v2 + 248);

  return _swift_task_switch(sub_100334820, v4, v3);
}

uint64_t sub_100334820(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_1000066BC();
  v13 = v12[29];
  if ((v13 & 0xC000000000000001) != 0)
  {
    v14 = __CocoaSet.count.getter();
  }

  else
  {
    v14 = *(v13 + 16);
  }

  v15 = v12[33];
  if (v14)
  {
    atomic_store(1u, (v12[30] + 192));
    v16 = [v15 providerType];
    swift_unknownObjectRelease();
    sub_100009B7C(v12 + 18);
    goto LABEL_6;
  }

  swift_unknownObjectRelease();
  sub_10001BDB8((v12 + 18), v12[21]);
  dispatch thunk of IteratorProtocol.next()();
  v19 = v12[28];
  v12[33] = v19;
  if (!v19)
  {
    v28 = v12[30];
    sub_100009B7C(v12 + 18);
    atomic_store(0, (v28 + 192));
    if (sub_10000B6F4(_swiftEmptyArrayStorage))
    {
      sub_10039B7F8(_swiftEmptyArrayStorage);
      v13 = v29;
      v16 = 0;
    }

    else
    {
      v16 = 0;
      v13 = &_swiftEmptySetSingleton;
    }

LABEL_6:
    v17 = v12[1];

    return v17(v16, v13);
  }

  v12[2] = v12;
  v12[7] = v12 + 29;
  sub_10000FA44();
  v20 = sub_10026D814(&qword_1006A5DD0, &qword_100580B38);
  sub_100015A90(v20);
  v12[11] = 1107296256;
  sub_1000162A8(&unk_100627C10);
  [v19 activeActivitySessionContainersWithCompletionHandler:v12 + 10];

  return _swift_continuation_await(v12 + 2, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12);
}

uint64_t sub_100334A24(uint64_t a1, uint64_t a2)
{
  v2 = *sub_100009B14((a1 + 32), *(a1 + 56));
  sub_100006AF0(0, &unk_1006A6310, TUConversationActivitySessionContainer_ptr);
  sub_10000CE3C(&qword_1006A4800, &unk_1006A6310, TUConversationActivitySessionContainer_ptr);
  v3 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  return sub_100060550(v2, v3);
}

void sub_100334AC4()
{
  swift_defaultActor_initialize();
  _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
}

uint64_t sub_100334B14()
{

  sub_100060500(v0 + 144);
  sub_100060500(v0 + 152);
  sub_1003353A4(v0 + 168);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_100334B64()
{
  sub_100334B14();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_100334BDC()
{
  sub_1000099A4(v0 + 24, &qword_1006A5DC8, &qword_100580B30);

  return _swift_deallocClassInstance(v0, 32, 7);
}

uint64_t sub_100334C58(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100334C98(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100334CE4()
{
  sub_100335350();
  v1 = Dictionary.init(dictionaryLiteral:)();
  *(v0 + 16) = 0;
  *(v0 + 24) = v1;
  return v0;
}

unint64_t sub_100334D28()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = 0;
  v18 = 0xE000000000000000;
  _StringGuts.grow(_:)(39);

  v17 = 0xD00000000000001CLL;
  v18 = 0x800000010056BE00;
  v6 = [v0 activity];
  v7 = [v6 activityIdentifier];

  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  v11._countAndFlagsBits = v8;
  v11._object = v10;
  String.append(_:)(v11);

  v12._countAndFlagsBits = 0x3D4449555520;
  v12._object = 0xE600000000000000;
  String.append(_:)(v12);
  v13 = [v1 UUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  sub_100335040(&qword_1006A25E0, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v14._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v14);

  (*(v3 + 8))(v5, v2);
  v15._countAndFlagsBits = 62;
  v15._object = 0xE100000000000000;
  String.append(_:)(v15);
  return v17;
}

uint64_t sub_100334F3C()
{
  v0 = type metadata accessor for Logger();
  sub_1002861B8(v0, qword_1006A5CD0);
  sub_10000AF9C(v0, qword_1006A5CD0);
  return Logger.init(subsystem:category:)();
}

unint64_t sub_100334FBC()
{
  result = qword_1006A5DE0;
  if (!qword_1006A5DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A5DE0);
  }

  return result;
}

uint64_t sub_100335040(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_100335090()
{
  sub_10000C698();
  v0 = swift_task_alloc();
  v1 = sub_100008A48(v0);
  *v1 = v2;
  v1[1] = sub_100035FE0;

  return sub_100331E88();
}

uint64_t type metadata accessor for CompositeActivitySessionContainerProviderError(uint64_t a1)
{
  result = qword_1006A5ED8;
  if (!qword_1006A5ED8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100335188(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_10026D814(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1003351F0()
{
  sub_10000C698();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = sub_100008A48(v3);
  *v4 = v5;
  v4[1] = sub_100035FE4;

  return sub_1003341B0(v1, v2);
}

uint64_t sub_100335294()
{
  sub_1000066BC();
  v0 = swift_task_alloc();
  v1 = sub_100008A48(v0);
  *v1 = v2;
  v1[1] = sub_100035FE0;
  v3 = sub_100007624();

  return v4(v3);
}

unint64_t sub_100335350()
{
  result = qword_1006A5E60;
  if (!qword_1006A5E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A5E60);
  }

  return result;
}

uint64_t sub_1003353FC(uint64_t a1)
{
  v1 = type metadata accessor for UUID();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

uint64_t initializeBufferWithCopyOfBuffer for CompositeActivitySessionContainerProvider.ObserverUpdateRequest.Source(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for CompositeActivitySessionContainerProvider.ObserverUpdateRequest.Source(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for CompositeActivitySessionContainerProvider.ObserverUpdateRequest(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *result = (a2 - 1);
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

unint64_t sub_1003354C8()
{
  result = qword_1006A5F08;
  if (!qword_1006A5F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A5F08);
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for CompositeActivitySessionContainerProvider.ObserverUpdateRequest.Source(uint64_t result, int a2, int a3)
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

uint64_t sub_10033554C(uint64_t a1)
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

uint64_t sub_100335568(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  *(result + 8) = v2;
  return result;
}

unint64_t sub_10033559C()
{
  result = qword_1006A5F10;
  if (!qword_1006A5F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A5F10);
  }

  return result;
}

void sub_10033561C(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 0x16u);
}

uint64_t sub_10033567C(void x0_0, void x1_0, void x2_0, void x3_0, void x4_0, void x5_0, void x6_0, void x7_0, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{

  return swift_arrayDestroy();
}

void sub_10033569C()
{
  sub_100005EF4();
  v16 = v1;
  ObjectType = swift_getObjectType();
  v14 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  sub_100007FEC();
  v3 = v2;
  __chkstk_darwin(v4);
  sub_100007FDC();
  v7 = v6 - v5;
  v8 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v8);
  sub_100007FDC();
  v9 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v9 - 8);
  sub_100007FDC();
  *&v0[OBJC_IVAR___CSDPodcastRecordingActivityManager_subscriptions] = &_swiftEmptySetSingleton;
  *&v0[OBJC_IVAR___CSDPodcastRecordingActivityManager_messenger] = 0;
  *&v0[OBJC_IVAR___CSDPodcastRecordingActivityManager_observer] = 0;
  *&v0[OBJC_IVAR___CSDPodcastRecordingActivityManager_session] = 0;
  *&v0[OBJC_IVAR___CSDPodcastRecordingActivityManager_eligibleObserver] = 0;
  v0[OBJC_IVAR___CSDPodcastRecordingActivityManager_acceptedPodcastRecordingActivity] = 0;
  *&v0[OBJC_IVAR___CSDPodcastRecordingActivityManager_participantsAcceptedRecording] = &_swiftEmptySetSingleton;
  sub_1002A8914();
  static DispatchQoS.userInitiated.getter();
  v18 = _swiftEmptyArrayStorage;
  sub_10000EF18(&qword_1006A0CB0, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_10026D814(&qword_1006A31B0, &unk_10057E920);
  sub_100008434();
  sub_10001000C(v10, &qword_1006A31B0, &unk_10057E920, v11);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v3 + 104))(v7, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v14);
  *&v0[OBJC_IVAR___CSDPodcastRecordingActivityManager_queue] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *&v0[OBJC_IVAR___CSDPodcastRecordingActivityManager_featureFlags] = v16;
  v17.receiver = v0;
  v17.super_class = ObjectType;
  v12 = v16;
  v13 = objc_msgSendSuper2(&v17, "init");
  PodcastRecordingActivityManager.startObservingSessions()();

  sub_100005EDC();
}

Swift::Void __swiftcall PodcastRecordingActivityManager.startObservingSessions()()
{
  sub_100005EF4();
  v1 = type metadata accessor for DispatchWorkItemFlags();
  sub_100007FEC();
  v3 = v2;
  __chkstk_darwin(v4);
  sub_100007FDC();
  v7 = v6 - v5;
  v8 = type metadata accessor for DispatchQoS();
  sub_100007FEC();
  v10 = v9;
  __chkstk_darwin(v11);
  sub_100007FDC();
  v14 = v13 - v12;
  if ([*(v0 + OBJC_IVAR___CSDPodcastRecordingActivityManager_featureFlags) enhancedCallRecordingEnabled])
  {
    v22 = v3;
    v23 = v8;
    v15 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v24[4] = sub_100335C3C;
    v24[5] = v15;
    sub_100009FE4();
    sub_1000081D4(COERCE_DOUBLE(1107296256));
    v24[2] = v16;
    v24[3] = &unk_100627E60;
    v17 = _Block_copy(v24);

    static DispatchQoS.unspecified.getter();
    sub_100015208();
    sub_10000EF18(v18, v19, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
    sub_100008434();
    sub_10001000C(v20, &unk_1006A2960, &unk_10057D6E0, v21);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v17);
    (*(v22 + 8))(v7, v1);
    (*(v10 + 8))(v14, v23);
  }

  sub_100005EDC();
}

void sub_100335C6C()
{
  v1 = v0;
  v2 = sub_10026D814(&qword_1006A5FA0, &qword_100580F10);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - v4;
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = (&v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(v1 + OBJC_IVAR___CSDPodcastRecordingActivityManager_queue);
  *v9 = v10;
  (*(v7 + 104))(v9, enum case for DispatchPredicate.onQueue(_:), v6);
  v11 = v10;
  v12 = _dispatchPreconditionTest(_:)();
  (*(v7 + 8))(v9, v6);
  if (v12)
  {
    v13 = OBJC_IVAR___CSDPodcastRecordingActivityManager_observer;
    if (!*(v1 + OBJC_IVAR___CSDPodcastRecordingActivityManager_observer))
    {
      if ([*(v1 + OBJC_IVAR___CSDPodcastRecordingActivityManager_featureFlags) enhancedCallRecordingEnabled])
      {
        sub_10033A858();
        v14 = v11;
        GroupSessionObserver.init(for:queue:)();
        swift_allocObject();
        swift_unknownObjectWeakInit();
        sub_10001000C(&qword_1006A5FB0, &qword_1006A5FA0, &qword_100580F10, &protocol conformance descriptor for GroupSessionObserver<A>);
        v15 = Publisher<>.sink(receiveValue:)();

        (*(v3 + 8))(v5, v2);
        *(v1 + v13) = v15;

        v17 = sub_100004778(v16);
        v18 = static os_log_type_t.default.getter();
        os_log(_:dso:log:type:_:)("Started observer for podcastactivity sessions", 45, 2, &_mh_execute_header, v17, v18, _swiftEmptyArrayStorage);
      }
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100335FB8()
{
  sub_10033603C();
  swift_allocError();
  swift_willThrow();
  sub_100009EF4();

  return v0();
}

unint64_t sub_10033603C()
{
  result = qword_1006A5F28;
  if (!qword_1006A5F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A5F28);
  }

  return result;
}

void sub_1003360B0(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    if (*&Strong[OBJC_IVAR___CSDPodcastRecordingActivityManager_session])
    {

      sub_100336134();
    }

    else
    {
    }
  }
}

void sub_100336134()
{
  sub_100005EF4();
  v1 = v0;
  v2 = type metadata accessor for UUID();
  sub_100007FEC();
  v4 = v3;
  v6 = __chkstk_darwin(v5);
  v8 = &v32[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v10 = &v32[-v9];
  v11 = type metadata accessor for DispatchPredicate();
  sub_100007FEC();
  v13 = v12;
  __chkstk_darwin(v14);
  sub_100007FDC();
  v17 = v16 - v15;
  v18 = *(v0 + OBJC_IVAR___CSDPodcastRecordingActivityManager_queue);
  *(v16 - v15) = v18;
  (*(v13 + 104))(v16 - v15, enum case for DispatchPredicate.onQueue(_:), v11);
  v19 = v18;
  LOBYTE(v18) = _dispatchPreconditionTest(_:)();
  (*(v13 + 8))(v17, v11);
  if (v18)
  {
    v20 = [*(v0 + OBJC_IVAR___CSDPodcastRecordingActivityManager_featureFlags) enhancedCallRecordingEnabled];
    if (v20)
    {
      v21 = sub_100004778(v20);
      v22 = sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
      v23 = sub_100009F00(v22);
      *(v23 + 16) = xmmword_10057D690;
      GroupSession.id.getter();
      (*(v4 + 16))(v8, v10, v2);
      v24 = String.init<A>(reflecting:)();
      v26 = v25;
      (*(v4 + 8))(v10, v2);
      *(v23 + 56) = &type metadata for String;
      *(v23 + 64) = sub_100009D88();
      *(v23 + 32) = v24;
      *(v23 + 40) = v26;
      v27 = static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)("End podcastactivity session (id: %@)", 36, 2, &_mh_execute_header, v21, v27, v23);

      v28 = [objc_opt_self() defaultCenter];
      v29 = String._bridgeToObjectiveC()();
      [v28 postNotificationName:v29 object:0];

      GroupSession.end()();
      v30 = OBJC_IVAR___CSDPodcastRecordingActivityManager_subscriptions;
      swift_beginAccess();
      *(v1 + v30) = &_swiftEmptySetSingleton;

      v31 = OBJC_IVAR___CSDPodcastRecordingActivityManager_participantsAcceptedRecording;
      swift_beginAccess();
      *(v1 + v31) = &_swiftEmptySetSingleton;

      *(v1 + OBJC_IVAR___CSDPodcastRecordingActivityManager_acceptedPodcastRecordingActivity) = 0;
      *(v1 + OBJC_IVAR___CSDPodcastRecordingActivityManager_session) = 0;

      *(v1 + OBJC_IVAR___CSDPodcastRecordingActivityManager_messenger) = 0;
    }

    sub_100005EDC();
  }

  else
  {
    __break(1u);
  }
}

void sub_1003364B4()
{
  sub_100005EF4();
  v1 = v0;
  v3 = v2;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  sub_100007FEC();
  v24 = v5;
  __chkstk_darwin(v6);
  sub_100007FDC();
  v9 = v8 - v7;
  v23 = type metadata accessor for DispatchQoS();
  sub_100007FEC();
  v11 = v10;
  __chkstk_darwin(v12);
  sub_100007FDC();
  v15 = v14 - v13;
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v25[4] = v3;
  v25[5] = v16;
  sub_100009FE4();
  sub_1000081D4(COERCE_DOUBLE(1107296256));
  v25[2] = v17;
  v25[3] = v1;
  v18 = _Block_copy(v25);

  static DispatchQoS.unspecified.getter();
  sub_100015208();
  sub_10000EF18(v19, v20, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
  sub_100008434();
  sub_10001000C(v21, &unk_1006A2960, &unk_10057D6E0, v22);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v18);
  (*(v24 + 8))(v9, v4);
  (*(v11 + 8))(v15, v23);

  sub_100005EDC();
}

void sub_100336714(uint64_t a1)
{
  v1 = sub_10026D814(&qword_1006A5310, &qword_10057D580);
  __chkstk_darwin(v1 - 8);
  v3 = v51 - v2;
  v4 = type metadata accessor for UUID();
  v57 = *(v4 - 8);
  v5 = __chkstk_darwin(v4);
  v7 = v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = v51 - v8;
  v10 = type metadata accessor for Participant();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v58 = v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v16 = v51 - v15;
  __chkstk_darwin(v14);
  v18 = v51 - v17;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v20 = Strong;
    Strong[OBJC_IVAR___CSDPodcastRecordingActivityManager_acceptedPodcastRecordingActivity] = 1;
    if (*&Strong[OBJC_IVAR___CSDPodcastRecordingActivityManager_session])
    {
      v51[0] = v3;

      v21 = GroupSession.localParticipant.getter();
      v53 = sub_100004778(v21);
      sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
      v22 = swift_allocObject();
      v56 = v11;
      v59 = v10;
      v23 = v22;
      *(v22 + 16) = xmmword_10057D6A0;
      v24 = *(v56 + 16);
      v51[1] = v56 + 16;
      v52 = v24;
      v24(v16, v18, v10);
      v25 = String.init<A>(reflecting:)();
      v27 = v26;
      v23[7] = &type metadata for String;
      v28 = sub_100009D88();
      v23[8] = v28;
      v23[4] = v25;
      v23[5] = v27;
      GroupSession.id.getter();
      v29 = v57;
      (*(v57 + 16))(v7, v9, v4);
      v30 = String.init<A>(reflecting:)();
      v32 = v31;
      v33 = *(v29 + 8);
      v34 = v4;
      v35 = v18;
      v54 = v18;
      v33(v9, v34);
      v23[12] = &type metadata for String;
      v23[13] = v28;
      v23[9] = v30;
      v23[10] = v32;
      v36 = static os_log_type_t.default.getter();
      v37 = v53;
      os_log(_:dso:log:type:_:)("Local participant=%@ accepted recording for podcastactivity session (id: %@)", 76, 2, &_mh_execute_header, v53, v36, v23);

      v38 = v59;
      v39 = v56;

      v40 = v52;
      v52(v58, v35, v38);
      swift_beginAccess();
      sub_1003966D8();
      swift_endAccess();
      v41 = *(v39 + 8);
      v41(v16, v38);
      v42 = v55;
      v43 = GroupSession.activeParticipants.getter();
      sub_10026D814(&qword_1006A6000, &qword_100580F40);
      v44 = (*(v39 + 80) + 32) & ~*(v39 + 80);
      v45 = swift_allocObject();
      *(v45 + 16) = xmmword_10057D690;
      v40(v45 + v44, v54, v38);
      sub_1002F2494();
      v47 = sub_1003BEE88(v46, v43);

      if (*(v47 + 16))
      {
        v48 = type metadata accessor for TaskPriority();
        sub_10000AF74(v51[0], 1, 1, v48);
        v49 = swift_allocObject();
        v49[2] = 0;
        v49[3] = 0;
        v49[4] = v20;
        v49[5] = v47;
        v49[6] = v42;

        v50 = v20;
        sub_1002762F0();

        sub_1003373D0();

        v41(v54, v38);
      }

      else
      {
        v41(v54, v38);
      }
    }

    else
    {
    }
  }
}

uint64_t sub_100336C84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = type metadata accessor for UUID();
  v6[5] = v7;
  v6[6] = *(v7 - 8);
  v6[7] = swift_task_alloc();
  v6[8] = swift_task_alloc();
  v8 = type metadata accessor for Participants();
  v6[9] = v8;
  v6[10] = *(v8 - 8);
  v6[11] = swift_task_alloc();
  v6[12] = type metadata accessor for RecordResponseMessage(0);
  v6[13] = swift_task_alloc();
  v6[14] = swift_task_alloc();

  return _swift_task_switch(sub_100336DEC, 0, 0);
}

uint64_t sub_100336DEC()
{
  sub_1000066BC();
  v2 = *(v0 + 104);
  v1 = *(v0 + 112);
  v3 = *(v0 + 96);
  v4 = *(v0 + 16);
  v5 = UUID.init()();
  *(v1 + *(v3 + 20)) = 1;
  v6 = sub_100004778(v5);
  v7 = sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
  *(v0 + 120) = v7;
  v8 = sub_100009F00(v7);
  *(v8 + 16) = xmmword_10057D690;
  sub_10033AA94(v1, v2);
  sub_100008B88();
  v9 = String.init<A>(reflecting:)();
  v11 = v10;
  *(v8 + 56) = &type metadata for String;
  v12 = sub_100009D88();
  *(v0 + 128) = v12;
  *(v8 + 64) = v12;
  *(v8 + 32) = v9;
  *(v8 + 40) = v11;
  v13 = static os_log_type_t.default.getter();
  sub_100015D80("podcastactivity sending response message ", v14, v15, &_mh_execute_header, v16, v13);

  v17 = *(v4 + OBJC_IVAR___CSDPodcastRecordingActivityManager_messenger);
  *(v0 + 136) = v17;
  if (!v17)
  {
    sub_10033AAF8(*(v0 + 112));
    sub_100035AF8();

    sub_100009EF4();
    sub_100017D5C();

    __asm { BRAA            X1, X16 }
  }

  v18 = *(v0 + 80);
  **(v0 + 88) = *(v0 + 24);
  (*(v18 + 104))();
  v19 = async function pointer to GroupSessionMessenger.send<A>(_:to:)[1];

  v20 = swift_task_alloc();
  *(v0 + 144) = v20;
  sub_1000181EC();
  sub_10000EF18(v21, v19, &unk_100582F7C);
  sub_1000171B4(&qword_1006A5FF0);
  *v20 = v0;
  v20[1] = sub_10033703C;
  sub_100017D5C();

  return GroupSessionMessenger.send<A>(_:to:)();
}

uint64_t sub_10033703C()
{
  sub_1000066BC();
  v2 = *v1;
  sub_100008060();
  *v3 = v2;
  *(v4 + 152) = v0;

  v5 = sub_100008B88();
  v6(v5);

  if (v0)
  {
    v7 = sub_100337248;
  }

  else
  {
    v7 = sub_1003371C0;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1003371C0()
{
  sub_10033AAF8(*(v0 + 112));
  sub_100035AF8();

  sub_100009EF4();

  return v1();
}

uint64_t sub_100337248()
{
  v1 = v0[15];
  v2 = v0[16];
  v4 = v0[7];
  v3 = v0[8];
  v6 = v0[5];
  v5 = v0[6];
  v7 = sub_10033AAF8(v0[14]);
  v8 = sub_100004778(v7);
  v9 = static os_log_type_t.fault.getter();
  v10 = sub_100009F00(v1);
  *(v10 + 16) = xmmword_10057D690;
  GroupSession.id.getter();
  (*(v5 + 16))(v4, v3, v6);
  v11 = String.init<A>(reflecting:)();
  v13 = v12;
  (*(v5 + 8))(v3, v6);
  *(v10 + 56) = &type metadata for String;
  *(v10 + 64) = v2;
  *(v10 + 32) = v11;
  *(v10 + 40) = v13;
  os_log(_:dso:log:type:_:)("Failed to send accept response for podcastactivity session (id: %@)", 67, 2, &_mh_execute_header, v8, v9, v10);

  sub_100035AF8();

  sub_100009EF4();

  return v14();
}

void sub_1003373D0()
{
  v1 = v0;
  v95 = type metadata accessor for UUID();
  v2 = *(v95 - 8);
  v3 = __chkstk_darwin(v95);
  v86 = &v79 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v7 = &v79 - v6;
  v8 = __chkstk_darwin(v5);
  v92 = &v79 - v9;
  __chkstk_darwin(v8);
  v94 = &v79 - v10;
  v93 = type metadata accessor for Participant();
  v11 = *(v93 - 8);
  v12 = __chkstk_darwin(v93);
  v87 = &v79 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v88 = &v79 - v14;
  v15 = type metadata accessor for DispatchPredicate();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = (&v79 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = *(v1 + OBJC_IVAR___CSDPodcastRecordingActivityManager_queue);
  *v18 = v19;
  (*(v16 + 104))(v18, enum case for DispatchPredicate.onQueue(_:), v15);
  v20 = v19;
  v21 = _dispatchPreconditionTest(_:)();
  (*(v16 + 8))(v18, v15);
  if ((v21 & 1) == 0)
  {
LABEL_35:
    __break(1u);
    return;
  }

  v22 = *(v1 + OBJC_IVAR___CSDPodcastRecordingActivityManager_session);
  if (v22)
  {
    v82 = v7;

    v91 = sub_100004778(v23);
    v81 = sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_10057D6A0;
    v97 = GroupSession.activeParticipants.getter();
    sub_10026D814(&qword_1006A6008, &qword_100580F58);
    v25 = String.init<A>(reflecting:)();
    v27 = v26;
    *(v24 + 56) = &type metadata for String;
    v28 = sub_100009D88();
    *(v24 + 64) = v28;
    *(v24 + 32) = v25;
    *(v24 + 40) = v27;
    v29 = OBJC_IVAR___CSDPodcastRecordingActivityManager_participantsAcceptedRecording;
    swift_beginAccess();
    v84 = v29;
    v85 = v1;
    v96 = *(v1 + v29);

    v30 = String.init<A>(reflecting:)();
    *(v24 + 96) = &type metadata for String;
    *(v24 + 104) = v28;
    v80 = v28;
    *(v24 + 72) = v30;
    *(v24 + 80) = v31;
    v32 = static os_log_type_t.default.getter();
    v33 = v91;
    os_log(_:dso:log:type:_:)("All participants for podcastactivity %@ vs participantsAcceptedRecording %@", 75, 2, &_mh_execute_header, v91, v32, v24);

    v83 = v22;
    v34 = GroupSession.activeParticipants.getter();
    v35 = v34;
    v36 = v34 + 56;
    v37 = 1 << *(v34 + 32);
    v38 = -1;
    if (v37 < 64)
    {
      v38 = ~(-1 << v37);
    }

    v39 = v38 & *(v34 + 56);
    v40 = (v37 + 63) >> 6;
    v90 = v11 + 8;
    v91 = (v11 + 16);
    v89 = v2 + 32;

    v41 = 0;
    v42 = _swiftEmptyArrayStorage;
    if (v39)
    {
      goto LABEL_10;
    }

    while (1)
    {
      v43 = v41 + 1;
      if (__OFADD__(v41, 1))
      {
        __break(1u);
        goto LABEL_34;
      }

      if (v43 >= v40)
      {
        break;
      }

      v39 = *(v36 + 8 * v43);
      ++v41;
      if (v39)
      {
        v41 = v43;
        do
        {
LABEL_10:
          v44 = v88;
          v45 = v93;
          (*(v11 + 16))(v88, *(v35 + 48) + *(v11 + 72) * (__clz(__rbit64(v39)) | (v41 << 6)), v93);
          Participant.id.getter();
          (*(v11 + 8))(v44, v45);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_100470054(0, v42[2] + 1, 1, v42);
            v42 = v48;
          }

          v47 = v42[2];
          v46 = v42[3];
          if (v47 >= v46 >> 1)
          {
            sub_100470054(v46 > 1, v47 + 1, 1, v42);
            v42 = v49;
          }

          v39 &= v39 - 1;
          v42[2] = v47 + 1;
          (*(v2 + 32))(v42 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v47, v94, v95);
        }

        while (v39);
      }
    }

    sub_1002F2348();
    v94 = v50;
    v51 = *(v85 + v84);
    v52 = 1 << *(v51 + 32);
    v53 = -1;
    if (v52 < 64)
    {
      v53 = ~(-1 << v52);
    }

    v54 = v53 & *(v51 + 56);
    v55 = (v52 + 63) >> 6;
    swift_bridgeObjectRetain_n();
    v56 = 0;
    v57 = _swiftEmptyArrayStorage;
    if (v54)
    {
      goto LABEL_23;
    }

    while (1)
    {
      v58 = v56 + 1;
      if (__OFADD__(v56, 1))
      {
        break;
      }

      if (v58 >= v55)
      {

        sub_1002F2348();
        sub_1002F55DC();
        v66 = v65;

        if (v66)
        {
          v68 = sub_100004778(v67);
          v69 = swift_allocObject();
          *(v69 + 16) = xmmword_10057D690;
          v70 = v82;
          GroupSession.id.getter();
          v71 = v95;
          (*(v2 + 16))(v86, v70, v95);
          v72 = String.init<A>(reflecting:)();
          v74 = v73;
          (*(v2 + 8))(v70, v71);
          v75 = v80;
          *(v69 + 56) = &type metadata for String;
          *(v69 + 64) = v75;
          *(v69 + 32) = v72;
          *(v69 + 40) = v74;
          v76 = static os_log_type_t.default.getter();
          os_log(_:dso:log:type:_:)("Received accepted response from all participants for podcastactivity (id: %@)", 77, 2, &_mh_execute_header, v68, v76, v69);

          v77 = [objc_opt_self() defaultCenter];
          v78 = String._bridgeToObjectiveC()();
          [v77 postNotificationName:v78 object:0];
        }

        else
        {
        }

        return;
      }

      v54 = *(v51 + 56 + 8 * v58);
      ++v56;
      if (v54)
      {
        v56 = v58;
        do
        {
LABEL_23:
          v59 = v87;
          v60 = v93;
          (*(v11 + 16))(v87, *(v51 + 48) + *(v11 + 72) * (__clz(__rbit64(v54)) | (v56 << 6)), v93);
          Participant.id.getter();
          (*(v11 + 8))(v59, v60);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_100470054(0, v57[2] + 1, 1, v57);
            v57 = v63;
          }

          v62 = v57[2];
          v61 = v57[3];
          if (v62 >= v61 >> 1)
          {
            sub_100470054(v61 > 1, v62 + 1, 1, v57);
            v57 = v64;
          }

          v54 &= v54 - 1;
          v57[2] = v62 + 1;
          (*(v2 + 32))(v57 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v62, v92, v95);
        }

        while (v54);
      }
    }

LABEL_34:
    __break(1u);
    goto LABEL_35;
  }
}

void sub_100337C68(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_100337CC4(v2);
  }
}

uint64_t sub_100337CC4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10026D814(&qword_1006A5FB8, &qword_100580F18);
  v47 = *(v4 - 8);
  __chkstk_darwin(v4);
  v46 = &v41 - v5;
  v6 = sub_10026D814(&qword_1006A5FC0, &qword_100580F20);
  v44 = *(v6 - 8);
  v45 = v6;
  __chkstk_darwin(v6);
  v43 = &v41 - v7;
  v42 = sub_10026D814(&qword_1006A5FC8, &qword_100580F28);
  v8 = *(v42 - 8);
  __chkstk_darwin(v42);
  v10 = &v41 - v9;
  v11 = type metadata accessor for DispatchPredicate();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = (&v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = *&v2[OBJC_IVAR___CSDPodcastRecordingActivityManager_queue];
  *v14 = v15;
  (*(v12 + 104))(v14, enum case for DispatchPredicate.onQueue(_:), v11);
  v16 = v15;
  v17 = _dispatchPreconditionTest(_:)();
  result = (*(v12 + 8))(v14, v11);
  if (v17)
  {
    v19 = sub_100004778(result);
    sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_10057D6A0;
    v48 = a1;

    sub_10026D814(&qword_1006A5FD0, &unk_100580F30);
    v21 = String.init<A>(reflecting:)();
    v23 = v22;
    v41 = v4;
    *(v20 + 56) = &type metadata for String;
    v24 = sub_100009D88();
    *(v20 + 64) = v24;
    *(v20 + 32) = v21;
    *(v20 + 40) = v23;
    GroupSession.activity.getter();
    v25 = String.init<A>(reflecting:)();
    *(v20 + 96) = &type metadata for String;
    *(v20 + 104) = v24;
    *(v20 + 72) = v25;
    *(v20 + 80) = v26;
    v27 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("Received new podcastactivity session %@ with activity %@", 56, 2, &_mh_execute_header, v19, v27, v20);

    GroupSession.$state.getter();
    v28 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v29 = swift_allocObject();
    *(v29 + 16) = v28;
    *(v29 + 24) = a1;
    sub_10001000C(&qword_1006A5FD8, &qword_1006A5FC8, &qword_100580F28, &protocol conformance descriptor for Published<A>.Publisher);

    v30 = v42;
    Publisher<>.sink(receiveValue:)();

    (*(v8 + 8))(v10, v30);
    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();

    v31 = v43;
    GroupSession.$activeParticipants.getter();
    v32 = swift_allocObject();
    *(v32 + 16) = v2;
    *(v32 + 24) = a1;
    sub_10001000C(&qword_1006A5FE0, &qword_1006A5FC0, &qword_100580F20, &protocol conformance descriptor for Published<A>.Publisher);

    v33 = v2;
    v34 = v45;
    Publisher<>.sink(receiveValue:)();

    (*(v44 + 8))(v31, v34);
    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();

    type metadata accessor for GroupSessionMessenger();
    swift_allocObject();

    v35 = GroupSessionMessenger.init<A>(session:)();
    type metadata accessor for RecordResponseMessage(0);
    sub_10000EF18(&qword_1006A5FE8, type metadata accessor for RecordResponseMessage, &unk_100582F7C);
    sub_10000EF18(&qword_1006A5FF0, type metadata accessor for RecordResponseMessage, &unk_100582F54);
    v36 = v46;
    GroupSessionMessenger.receive<A>(_:)();
    v37 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v38 = swift_allocObject();
    *(v38 + 16) = v37;
    *(v38 + 24) = a1;
    v39 = swift_allocObject();
    *(v39 + 16) = sub_10033A8FC;
    *(v39 + 24) = v38;
    sub_10001000C(&qword_1006A5FF8, &qword_1006A5FB8, &qword_100580F18, &protocol conformance descriptor for GroupSessionMessenger.MessageStream<A>);

    v40 = v41;
    Publisher<>.sink(receiveValue:)();

    (*(v47 + 8))(v36, v40);
    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();

    GroupSession.join()();
    *&v33[OBJC_IVAR___CSDPodcastRecordingActivityManager_session] = a1;

    *&v33[OBJC_IVAR___CSDPodcastRecordingActivityManager_messenger] = v35;

    if (v33[OBJC_IVAR___CSDPodcastRecordingActivityManager_acceptedPodcastRecordingActivity] == 1)
    {
      sub_1003364B4();
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1003384A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    sub_100338518(a1, a3);
  }
}

uint64_t sub_100338518(uint64_t a1, uint64_t a2)
{
  v73 = a2;
  v4 = type metadata accessor for UUID();
  v70 = *(v4 - 8);
  v71 = v4;
  v5 = __chkstk_darwin(v4);
  v72 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = &v65 - v7;
  v9 = sub_10026D814(&qword_1006A6020, &qword_100580F78);
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v68 = &v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = (&v65 - v13);
  v15 = type metadata accessor for DispatchPredicate();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = (&v65 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v69 = v2;
  v19 = *(v2 + OBJC_IVAR___CSDPodcastRecordingActivityManager_queue);
  *v18 = v19;
  (*(v16 + 104))(v18, enum case for DispatchPredicate.onQueue(_:), v15);
  v20 = v19;
  LOBYTE(v19) = _dispatchPreconditionTest(_:)();
  result = (*(v16 + 8))(v18, v15);
  if (v19)
  {
    v22 = *(v10 + 16);
    v22(v14, a1, v9);
    v23 = (*(v10 + 88))(v14, v9);
    if (v23 == enum case for GroupSession.State.invalidated<A>(_:))
    {
      v24 = (*(v10 + 96))(v14, v9);
      v25 = *v14;
      v26 = sub_100004778(v24);
      sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_10057D6A0;
      GroupSession.id.getter();
      v29 = v70;
      v28 = v71;
      (*(v70 + 16))(v72, v8, v71);
      v30 = String.init<A>(reflecting:)();
      v32 = v31;
      (*(v29 + 8))(v8, v28);
      *(v27 + 56) = &type metadata for String;
      v33 = sub_100009D88();
      *(v27 + 64) = v33;
      *(v27 + 32) = v30;
      *(v27 + 40) = v32;
      v74 = v25;
      swift_errorRetain();
      sub_10026D814(&unk_1006A2610, &qword_10057D4A0);
      v34 = String.init<A>(reflecting:)();
      *(v27 + 96) = &type metadata for String;
      *(v27 + 104) = v33;
      *(v27 + 72) = v34;
      *(v27 + 80) = v35;
      v36 = static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)("podcastactivity session (id: %@) invalidated with reason: %@", 60, 2, &_mh_execute_header, v26, v36, v27);

      sub_10033A394();
    }

    v37 = v23;
    if (v23 == enum case for GroupSession.State.waiting<A>(_:))
    {
      v38 = sub_100004778(v23);
      sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
      v39 = swift_allocObject();
      *(v39 + 16) = xmmword_10057D690;
      GroupSession.id.getter();
      v41 = v70;
      v40 = v71;
      (*(v70 + 16))(v72, v8, v71);
      v42 = String.init<A>(reflecting:)();
      v44 = v43;
      (*(v41 + 8))(v8, v40);
      *(v39 + 56) = &type metadata for String;
      *(v39 + 64) = sub_100009D88();
      *(v39 + 32) = v42;
      *(v39 + 40) = v44;
      v45 = static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)("podcastactivity session (id: %@) waiting", 40, 2, &_mh_execute_header, v38, v45, v39);
    }

    v46 = enum case for GroupSession.State.joined<A>(_:);
    v67 = sub_100004778(v23);
    if (v37 == v46)
    {
      sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
      v47 = swift_allocObject();
      *(v47 + 16) = xmmword_10057D690;
      GroupSession.id.getter();
      v49 = v70;
      v48 = v71;
      (*(v70 + 16))(v72, v8, v71);
      v50 = String.init<A>(reflecting:)();
      v52 = v51;
      (*(v49 + 8))(v8, v48);
      *(v47 + 56) = &type metadata for String;
      *(v47 + 64) = sub_100009D88();
      *(v47 + 32) = v50;
      *(v47 + 40) = v52;
      v53 = static os_log_type_t.default.getter();
      v54 = v67;
      os_log(_:dso:log:type:_:)("podcastactivity session (id: %@) joined", 39, 2, &_mh_execute_header, v67, v53, v47);
    }

    v66 = static os_log_type_t.fault.getter();
    sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
    v55 = swift_allocObject();
    *(v55 + 16) = xmmword_10057D6A0;
    GroupSession.id.getter();
    v56 = v70;
    v57 = v71;
    v58 = *(v70 + 16);
    v65 = a1;
    v58(v72, v8, v71);
    v72 = String.init<A>(reflecting:)();
    v60 = v59;
    (*(v56 + 8))(v8, v57);
    *(v55 + 56) = &type metadata for String;
    v61 = sub_100009D88();
    *(v55 + 64) = v61;
    *(v55 + 32) = v72;
    *(v55 + 40) = v60;
    v22(v68, v65, v9);
    v62 = String.init<A>(reflecting:)();
    *(v55 + 96) = &type metadata for String;
    *(v55 + 104) = v61;
    *(v55 + 72) = v62;
    *(v55 + 80) = v63;
    v64 = v67;
    os_log(_:dso:log:type:_:)("podcastactivity session (id: %@) reached unknown state %@", 57, 2, &_mh_execute_header, v67, v66, v55);

    sub_10033A394();
    return (*(v10 + 8))(v14, v9);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100338CBC(uint64_t a1, uint64_t a2)
{
  v3 = sub_10026D814(&qword_1006A5310, &qword_10057D580);
  __chkstk_darwin(v3 - 8);
  v5 = &v29 - v4;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v29 - v11;

  v14 = sub_10033AC94(v13, a2);
  v15 = sub_100004778(v14);
  sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_10057D6A0;
  GroupSession.id.getter();
  (*(v7 + 16))(v10, v12, v6);
  v17 = String.init<A>(reflecting:)();
  v19 = v18;
  (*(v7 + 8))(v12, v6);
  *(v16 + 56) = &type metadata for String;
  v20 = sub_100009D88();
  *(v16 + 64) = v20;
  *(v16 + 32) = v17;
  *(v16 + 40) = v19;
  v31 = v14;

  sub_10026D814(&qword_1006A6008, &qword_100580F58);
  v21 = String.init<A>(reflecting:)();
  *(v16 + 96) = &type metadata for String;
  *(v16 + 104) = v20;
  *(v16 + 72) = v21;
  *(v16 + 80) = v22;
  v23 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("podcastactivity session (id: %@) newParticipants: %@", 52, 2, &_mh_execute_header, v15, v23, v16);

  if (!v14[2])
  {
  }

  v24 = type metadata accessor for TaskPriority();
  sub_10000AF74(v5, 1, 1, v24);
  v25 = swift_allocObject();
  v25[2] = 0;
  v25[3] = 0;
  v26 = v30;
  v25[4] = v30;
  v25[5] = a2;
  v25[6] = v14;

  v27 = v26;
  sub_1002762F0();

  return GroupSession.isLocallyInitiated.getter();
}

void *sub_100338FC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_10026D814(&qword_1006A6018, &qword_100582860);
  __chkstk_darwin(v7 - 8);
  v9 = &v13 - v8;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v11 = result;
    v12 = type metadata accessor for GroupSessionMessenger.MessageContext();
    (*(*(v12 - 8) + 16))(v9, a2, v12);
    sub_10000AF74(v9, 0, 1, v12);
    sub_1003390F8(a1, v9, a4);

    return sub_1000099A4(v9, &qword_1006A6018, &qword_100582860);
  }

  return result;
}

uint64_t sub_1003390F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v115 = a3;
  v100 = type metadata accessor for DispatchWorkItemFlags();
  v99 = *(v100 - 8);
  __chkstk_darwin(v100);
  v97 = &v89 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = type metadata accessor for DispatchQoS();
  v96 = *(v98 - 8);
  __chkstk_darwin(v98);
  v95 = &v89 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for UUID();
  v109 = *(v7 - 8);
  v8 = __chkstk_darwin(v7);
  v113 = &v89 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v114 = &v89 - v10;
  v11 = type metadata accessor for Participant();
  v107 = *(v11 - 8);
  v12 = __chkstk_darwin(v11);
  v92 = &v89 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v90 = &v89 - v15;
  v16 = __chkstk_darwin(v14);
  v93 = &v89 - v17;
  __chkstk_darwin(v16);
  v19 = &v89 - v18;
  v20 = sub_10026D814(&qword_1006A6018, &qword_100582860);
  v21 = __chkstk_darwin(v20 - 8);
  v102 = &v89 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v24 = &v89 - v23;
  v25 = sub_10026D814(&unk_1006A3DD0, &unk_10057C9D0);
  __chkstk_darwin(v25 - 8);
  v27 = &v89 - v26;
  v28 = type metadata accessor for RecordResponseMessage(0);
  v29 = __chkstk_darwin(v28);
  v31 = &v89 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = sub_100004778(v29);
  v105 = sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_10057E830;
  v111 = a1;
  sub_10033AA94(a1, v31);
  v106 = v31;
  v110 = v28;
  v33 = String.init<A>(reflecting:)();
  v35 = v34;
  *(v32 + 56) = &type metadata for String;
  v112 = sub_100009D88();
  *(v32 + 64) = v112;
  *(v32 + 32) = v33;
  *(v32 + 40) = v35;
  v103 = a2;
  sub_10033AB54(a2, v24);
  v36 = type metadata accessor for GroupSessionMessenger.MessageContext();
  v37 = sub_100015468(v24, 1, v36);
  v94 = v11;
  v91 = v19;
  v101 = v36;
  v38 = v109;
  if (v37 == 1)
  {
    sub_1000099A4(v24, &qword_1006A6018, &qword_100582860);
    v39 = 1;
  }

  else
  {
    GroupSessionMessenger.MessageContext.source.getter();
    (*(*(v36 - 8) + 8))(v24, v36);
    Participant.id.getter();
    (*(v107 + 8))(v19, v11);
    v39 = 0;
  }

  sub_10000AF74(v27, v39, 1, v7);
  v40 = sub_1002910A0();
  v42 = v41;
  sub_1000099A4(v27, &unk_1006A3DD0, &unk_10057C9D0);
  v43 = v112;
  *(v32 + 96) = &type metadata for String;
  *(v32 + 104) = v43;
  *(v32 + 72) = v40;
  *(v32 + 80) = v42;
  v44 = v114;
  GroupSession.id.getter();
  v45 = v38;
  v46 = v38[2];
  v47 = v113;
  v109 = v46;
  (v46)(v113, v44, v7);
  v48 = String.init<A>(reflecting:)();
  v50 = v49;
  v104 = v45[1];
  v104(v44, v7);
  *(v32 + 136) = &type metadata for String;
  *(v32 + 144) = v43;
  *(v32 + 112) = v48;
  *(v32 + 120) = v50;
  v51 = static os_log_type_t.default.getter();
  v52 = v108;
  os_log(_:dso:log:type:_:)("Received record response %@ from sender %@ for podcastactivity (id: %@)", 71, 2, &_mh_execute_header, v108, v51, v32);

  v54 = v111;
  if (*(v111 + *(v110 + 20)) != 1)
  {
    v108 = sub_100004778(v53);
    v69 = swift_allocObject();
    *(v69 + 16) = xmmword_10057D6A0;
    sub_10033AA94(v54, v106);
    v70 = String.init<A>(reflecting:)();
    *(v69 + 56) = &type metadata for String;
    *(v69 + 64) = v43;
    *(v69 + 32) = v70;
    *(v69 + 40) = v71;
    GroupSession.id.getter();
    (v109)(v47, v44, v7);
    v72 = String.init<A>(reflecting:)();
    v74 = v73;
    v104(v44, v7);
    *(v69 + 96) = &type metadata for String;
    *(v69 + 104) = v43;
    *(v69 + 72) = v72;
    *(v69 + 80) = v74;
    v75 = static os_log_type_t.default.getter();
    v76 = v108;
    os_log(_:dso:log:type:_:)("Ignoring received record response %@ with not allowed, for podcastactivity (id: %@)", 83, 2, &_mh_execute_header, v108, v75, v69);
  }

  v55 = v109;
  v56 = v7;
  v57 = v102;
  sub_10033AB54(v103, v102);
  v58 = v101;
  if (sub_100015468(v57, 1, v101) == 1)
  {
    v59 = sub_1000099A4(v57, &qword_1006A6018, &qword_100582860);
    v60 = sub_100004778(v59);
    LODWORD(v108) = static os_log_type_t.fault.getter();
    v61 = swift_allocObject();
    *(v61 + 16) = xmmword_10057D6A0;
    sub_10033AA94(v54, v106);
    v62 = String.init<A>(reflecting:)();
    v63 = v112;
    *(v61 + 56) = &type metadata for String;
    *(v61 + 64) = v63;
    *(v61 + 32) = v62;
    *(v61 + 40) = v64;
    v65 = v114;
    GroupSession.id.getter();
    v55(v113, v65, v56);
    v66 = String.init<A>(reflecting:)();
    v68 = v67;
    v104(v65, v56);
    *(v61 + 96) = &type metadata for String;
    *(v61 + 104) = v63;
    *(v61 + 72) = v66;
    *(v61 + 80) = v68;
    os_log(_:dso:log:type:_:)("Received record response %@ with missing sender for podcastactivity (id: %@)", 76, 2, &_mh_execute_header, v60, v108, v61);
  }

  v78 = v90;
  GroupSessionMessenger.MessageContext.source.getter();
  (*(*(v58 - 8) + 8))(v57, v58);
  v79 = v107;
  v80 = v93;
  v81 = v94;
  (*(v107 + 32))(v93, v78, v94);
  (*(v79 + 16))(v92, v80, v81);
  swift_beginAccess();
  v82 = v91;
  sub_1003966D8();
  swift_endAccess();
  v83 = *(v79 + 8);
  v83(v82, v81);
  v83(v80, v81);
  v84 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_10033ABC4;
  aBlock[5] = v84;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004CEC;
  aBlock[3] = &unk_100628050;
  v85 = _Block_copy(aBlock);

  v86 = v95;
  static DispatchQoS.unspecified.getter();
  v116 = _swiftEmptyArrayStorage;
  sub_10000EF18(&qword_1006A2CC0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
  sub_10001000C(&qword_1006A2CD0, &unk_1006A2960, &unk_10057D6E0, &protocol conformance descriptor for [A]);
  v87 = v97;
  v88 = v100;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v85);
  (*(v99 + 8))(v87, v88);
  (*(v96 + 8))(v86, v98);
}

void sub_100339CF4(uint64_t a1, void (*a2)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    a2();
  }
}

uint64_t sub_100339D50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  v7 = type metadata accessor for Participants();
  v6[8] = v7;
  v6[9] = *(v7 - 8);
  v6[10] = swift_task_alloc();
  v6[11] = type metadata accessor for RecordResponseMessage(0);
  v6[12] = swift_task_alloc();
  v6[13] = swift_task_alloc();
  v8 = type metadata accessor for Participant();
  v6[14] = v8;
  v6[15] = *(v8 - 8);
  v6[16] = swift_task_alloc();

  return _swift_task_switch(sub_100339EAC, 0, 0);
}

uint64_t sub_100339EAC()
{
  sub_1000066BC();
  v2 = *(v0 + 120);
  v1 = *(v0 + 128);
  v3 = *(v0 + 112);
  swift_beginAccess();

  GroupSession.localParticipant.getter();
  sub_10042282C();
  v5 = v4;

  (*(v2 + 8))(v1, v3);
  if ((v5 & 1) == 0)
  {
LABEL_7:

    sub_100009EF4();
    sub_100017D5C();

    __asm { BRAA            X1, X16 }
  }

  v7 = *(v0 + 96);
  v6 = *(v0 + 104);
  v8 = *(v0 + 88);
  v9 = *(v0 + 40);
  v10 = UUID.init()();
  *(v6 + *(v8 + 20)) = 1;
  v11 = sub_100004778(v10);
  v12 = sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
  v13 = sub_100009F00(v12);
  *(v13 + 16) = xmmword_10057D690;
  sub_10033AA94(v6, v7);
  sub_100008B88();
  v14 = String.init<A>(reflecting:)();
  v16 = v15;
  *(v13 + 56) = &type metadata for String;
  *(v13 + 64) = sub_100009D88();
  *(v13 + 32) = v14;
  *(v13 + 40) = v16;
  v17 = static os_log_type_t.default.getter();
  sub_100015D80("podcastactivity sending response message ", v18, v19, &_mh_execute_header, v20, v17);

  v21 = *(v9 + OBJC_IVAR___CSDPodcastRecordingActivityManager_messenger);
  *(v0 + 136) = v21;
  if (!v21)
  {
    sub_10033AAF8(*(v0 + 104));
    goto LABEL_7;
  }

  v22 = *(v0 + 72);
  **(v0 + 80) = *(v0 + 56);
  (*(v22 + 104))();
  v23 = async function pointer to GroupSessionMessenger.send<A>(_:to:)[1];

  v24 = swift_task_alloc();
  *(v0 + 144) = v24;
  sub_1000181EC();
  sub_10000EF18(v25, v23, &unk_100582F7C);
  sub_1000171B4(&qword_1006A5FF0);
  *v24 = v0;
  v24[1] = sub_10033A164;
  sub_100017D5C();

  return GroupSessionMessenger.send<A>(_:to:)();
}

uint64_t sub_10033A164()
{
  sub_1000066BC();
  v2 = *v1;
  sub_100008060();
  *v3 = v2;

  if (v0)
  {

    v4 = sub_100008B88();
    v5(v4);
  }

  else
  {
    v6 = sub_100008B88();
    v7(v6);
  }

  sub_100017D5C();

  return _swift_task_switch(v8, v9, v10);
}

uint64_t sub_10033A308()
{
  sub_10033AAF8(*(v0 + 104));

  sub_100009EF4();

  return v1();
}

void sub_10033A394()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v21 - v6;
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = (&v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *(v0 + OBJC_IVAR___CSDPodcastRecordingActivityManager_queue);
  *v11 = v12;
  (*(v9 + 104))(v11, enum case for DispatchPredicate.onQueue(_:), v8);
  v13 = v12;
  LOBYTE(v12) = _dispatchPreconditionTest(_:)();
  v14 = (*(v9 + 8))(v11, v8);
  if (v12)
  {
    v15 = sub_100004778(v14);
    sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_10057D690;
    GroupSession.id.getter();
    (*(v2 + 16))(v5, v7, v1);
    v17 = String.init<A>(reflecting:)();
    v19 = v18;
    (*(v2 + 8))(v7, v1);
    *(v16 + 56) = &type metadata for String;
    *(v16 + 64) = sub_100009D88();
    *(v16 + 32) = v17;
    *(v16 + 40) = v19;
    v20 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("Transitioned to non-joined from joined state for podcastactivity, ending (id: %@)", 81, 2, &_mh_execute_header, v15, v20, v16);

    sub_100336134();
  }

  else
  {
    __break(1u);
  }
}

_BYTE *storeEnumTagSinglePayload for PodcastRecordingActivityManagerErrors(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_10033A804()
{
  result = qword_1006A5F98;
  if (!qword_1006A5F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A5F98);
  }

  return result;
}

unint64_t sub_10033A858()
{
  result = qword_1006A5FA8;
  if (!qword_1006A5FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A5FA8);
  }

  return result;
}

uint64_t sub_10033A8C4()
{

  v0 = sub_1000081EC();

  return _swift_deallocObject(v0);
}

uint64_t sub_10033A914()
{
  sub_1000066BC();
  sub_100007D34();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  sub_10000E740(v1);
  sub_100017D5C();

  return sub_100336C84(v2, v3, v4, v5, v6, v7);
}

uint64_t sub_10033A9AC()
{
  v1 = *v0;
  sub_100008060();
  *v2 = v1;

  sub_100009EF4();

  return v3();
}

uint64_t sub_10033AA94(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RecordResponseMessage(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10033AAF8(uint64_t a1)
{
  v2 = type metadata accessor for RecordResponseMessage(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10033AB54(uint64_t a1, uint64_t a2)
{
  v4 = sub_10026D814(&qword_1006A6018, &qword_100582860);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t *sub_10033ABF4(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
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

    swift_retain_n();
    v8 = sub_10033B2C4(v7, a2, a3, a4);

    return v8;
  }

  return result;
}

unint64_t *sub_10033AC94(char *a1, uint64_t a2)
{
  v3 = v2;
  v54 = type metadata accessor for UUID();
  v6 = *(v54 - 8);
  v7 = __chkstk_darwin(v54);
  v53 = v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v52 = v38 - v9;
  v51 = type metadata accessor for Participant();
  v10 = *(v51 - 8);
  v11 = __chkstk_darwin(v51);
  v50 = v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v49 = v38 - v13;
  v14 = a1[32];
  v15 = v14 & 0x3F;
  v16 = ((1 << v14) + 63) >> 6;
  v17 = 8 * v16;
  v56 = a2;

  if (v15 > 0xD)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v40 = v3;
    v38[1] = v38;
    __chkstk_darwin(v18);
    v39 = v16;
    v41 = (v38 - ((v17 + 15) & 0x3FFFFFFFFFFFFFF0));
    sub_100396044(0, v16, v41);
    v16 = 0;
    v55 = a1;
    v20 = *(a1 + 7);
    a1 += 56;
    v19 = v20;
    v44 = a1;
    v21 = 1 << *(a1 - 24);
    v22 = -1;
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    v23 = v22 & v19;
    v42 = 0;
    v43 = (v21 + 63) >> 6;
    v57 = v10;
    v47 = v10 + 8;
    v48 = v10 + 16;
    v46 = (v6 + 8);
    while (v23)
    {
      v60 = (v23 - 1) & v23;
      v24 = __clz(__rbit64(v23)) | (v16 << 6);
      v25 = v57;
LABEL_12:
      v28 = *(v55 + 6);
      v29 = *(v25 + 72);
      v45 = v24;
      v6 = v49;
      v10 = v51;
      (*(v25 + 16))(v49, v28 + v29 * v24, v51);
      v3 = v52;
      Participant.id.getter();
      v30 = v50;
      GroupSession.localParticipant.getter();
      v31 = v53;
      Participant.id.getter();
      v59 = *(v25 + 8);
      v59(v30, v10);
      sub_10000EF18(&qword_1006A2620, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v17 = v54;
      v58 = dispatch thunk of static Equatable.== infix(_:_:)();
      a1 = *v46;
      (*v46)(v31, v17);
      (a1)(v3, v17);
      v59(v6, v10);
      v23 = v60;
      if ((v58 & 1) == 0)
      {
        *(v41 + ((v45 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v45;
        if (__OFADD__(v42++, 1))
        {
          __break(1u);
LABEL_16:
          sub_1003EB370(v41, v39, v42, v55);
          v34 = v33;

          return v34;
        }
      }
    }

    v26 = v16;
    v25 = v57;
    while (1)
    {
      v16 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        break;
      }

      if (v16 >= v43)
      {
        goto LABEL_16;
      }

      v27 = *&v44[8 * v16];
      ++v26;
      if (v27)
      {
        v60 = (v27 - 1) & v27;
        v24 = __clz(__rbit64(v27)) | (v16 << 6);
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_19:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v36 = swift_slowAlloc();
  v37 = v56;

  v34 = sub_10033ABF4(v36, v16, a1, v37);

  return v34;
}

uint64_t sub_10033B1BC(void (*a1)(void), void (*a2)(void))
{
  swift_unknownObjectRelease();

  a1(*(v2 + 40));
  a2(*(v2 + 48));

  return _swift_deallocObject(v2);
}

uint64_t sub_10033B22C()
{
  sub_1000066BC();
  sub_100007D34();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  sub_10000E740(v1);
  sub_100017D5C();

  return sub_100339D50(v2, v3, v4, v5, v6, v7);
}

uint64_t sub_10033B2C4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = a2;
  v54 = a4;
  v38 = a1;
  v52 = type metadata accessor for UUID();
  v5 = *(v52 - 8);
  v6 = __chkstk_darwin(v52);
  v51 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v50 = &v37 - v8;
  v49 = type metadata accessor for Participant();
  v9 = __chkstk_darwin(v49);
  v47 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v9);
  v46 = &v37 - v13;
  v14 = 0;
  v53 = a3;
  v15 = *(a3 + 56);
  v41 = a3 + 56;
  v16 = 1 << *(a3 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & v15;
  v39 = 0;
  v40 = (v16 + 63) >> 6;
  v48 = v12;
  v44 = v12 + 8;
  v45 = v12 + 16;
  v43 = (v5 + 8);
  v19 = v46;
  while (v18)
  {
    v20 = __clz(__rbit64(v18));
    v57 = (v18 - 1) & v18;
LABEL_11:
    v23 = v20 | (v14 << 6);
    v24 = *(v53 + 48);
    v25 = v48;
    v26 = v49;
    v27 = *(v48 + 72);
    v42 = v23;
    (*(v48 + 16))(v19, v24 + v27 * v23, v49);
    v28 = v50;
    Participant.id.getter();
    v29 = v47;
    GroupSession.localParticipant.getter();
    v30 = v51;
    Participant.id.getter();
    v56 = *(v25 + 8);
    v56(v29, v26);
    sub_10000EF18(&qword_1006A2620, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v31 = v52;
    v55 = dispatch thunk of static Equatable.== infix(_:_:)();
    v32 = *v43;
    (*v43)(v30, v31);
    v32(v28, v31);
    result = (v56)(v19, v26);
    v18 = v57;
    if ((v55 & 1) == 0)
    {
      *(v38 + ((v42 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v42;
      if (__OFADD__(v39++, 1))
      {
        __break(1u);
LABEL_15:
        v34 = v53;

        sub_1003EB370(v38, v37, v39, v34);
        v36 = v35;

        return v36;
      }
    }
  }

  v21 = v14;
  while (1)
  {
    v14 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v14 >= v40)
    {
      goto LABEL_15;
    }

    v22 = *(v41 + 8 * v14);
    ++v21;
    if (v22)
    {
      v20 = __clz(__rbit64(v22));
      v57 = (v22 - 1) & v22;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10033B6B8(uint64_t a1)
{
  sub_10033B710();
  v2 = v1;
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v2;
}

void sub_10033B710()
{
  if (!qword_1006A60A8)
  {
    v0 = type metadata accessor for SoundDescriptor(0);
    if (!v1)
    {
      atomic_store(v0, &qword_1006A60A8);
    }
  }
}

unint64_t sub_10033B75C()
{
  result = qword_1006A60D0;
  if (!qword_1006A60D0)
  {
    type metadata accessor for SoundDescriptorAction(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A60D0);
  }

  return result;
}

BOOL sub_10033B7B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SoundDescriptorAction(0);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v16 - v8;
  sub_100049EF4(a2, &v16 - v8);
  v10 = sub_10026D814(&unk_1006A3DC0, &qword_10057EC00);
  v11 = sub_100015468(v9, 2, v10);
  if (v11)
  {
    if (v11 == 1)
    {
      v12 = 1;
    }

    else
    {
      v12 = 2;
    }
  }

  else
  {
    sub_10033BF00(v9, type metadata accessor for SoundDescriptor);
    v12 = 3;
  }

  sub_100049EF4(a1, v7);
  v13 = sub_100015468(v7, 2, v10);
  if (v13)
  {
    v14 = v13;
    if (v13 != 1)
    {
      v14 = 2;
    }
  }

  else
  {
    sub_10033BF00(v7, type metadata accessor for SoundDescriptor);
    v14 = 3;
  }

  return v12 >= v14;
}

uint64_t sub_10033B91C(void *a1, void *a2)
{
  v2 = a2[1];
  v3 = a1[1];
  if (v2 < v3)
  {
    return _s13callservicesd31PodcastRecordingActivityManagerC08acceptedbcD033_E2355C229D2CBB4525EFAE2B0DCFFBF0LLSbvpfi_0();
  }

  if (v2 == v3)
  {
    return *a2 >= *a1;
  }

  return sub_10000F4A8();
}

uint64_t sub_10033B94C(void *a1, void *a2)
{
  v2 = a2[1];
  v3 = a1[1];
  if (v2 < v3)
  {
    return sub_10000F4A8();
  }

  if (v2 == v3)
  {
    return *a2 < *a1;
  }

  return _s13callservicesd31PodcastRecordingActivityManagerC08acceptedbcD033_E2355C229D2CBB4525EFAE2B0DCFFBF0LLSbvpfi_0();
}

BOOL sub_10033B97C(uint64_t a1, uint64_t a2)
{
  v6 = type metadata accessor for SoundDescriptorAction(0);
  v7 = sub_100007BF0(v6);
  __chkstk_darwin(v7);
  sub_10000A1BC();
  v9 = __chkstk_darwin(v8);
  sub_100010344(v9, v10, v11, v12, v13, v14, v15, v16, v26);
  v17 = sub_10026D814(&unk_1006A3DC0, &qword_10057EC00);
  if (sub_1000171DC(v17))
  {
    sub_10000A870();
    if (v20)
    {
      v21 = v18;
    }

    else
    {
      v21 = v19;
    }
  }

  else
  {
    sub_10033BF00(v3, type metadata accessor for SoundDescriptor);
    v21 = 3;
  }

  sub_100049EF4(a1, v2);
  if (sub_100015468(v2, 2, a2))
  {
    sub_10000A870();
    if (!v20)
    {
      v22 = v23;
    }
  }

  else
  {
    sub_1000084E0();
    sub_10033BF00(v2, v24);
    v22 = 3;
  }

  return v21 < v22;
}

uint64_t sub_10033BA88(void *a1, void *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if (v2 < v3)
  {
    return _s13callservicesd31PodcastRecordingActivityManagerC08acceptedbcD033_E2355C229D2CBB4525EFAE2B0DCFFBF0LLSbvpfi_0();
  }

  if (v2 == v3)
  {
    return *a1 >= *a2;
  }

  return sub_10000F4A8();
}

BOOL sub_10033BAB8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SoundDescriptorAction(0);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v16 - v8;
  sub_100049EF4(a1, &v16 - v8);
  v10 = sub_10026D814(&unk_1006A3DC0, &qword_10057EC00);
  v11 = sub_100015468(v9, 2, v10);
  if (v11)
  {
    if (v11 == 1)
    {
      v12 = 1;
    }

    else
    {
      v12 = 2;
    }
  }

  else
  {
    sub_10033BF00(v9, type metadata accessor for SoundDescriptor);
    v12 = 3;
  }

  sub_100049EF4(a2, v7);
  v13 = sub_100015468(v7, 2, v10);
  if (v13)
  {
    v14 = v13;
    if (v13 != 1)
    {
      v14 = 2;
    }
  }

  else
  {
    sub_10033BF00(v7, type metadata accessor for SoundDescriptor);
    v14 = 3;
  }

  return v12 >= v14;
}