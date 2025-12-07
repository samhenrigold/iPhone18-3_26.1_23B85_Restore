uint64_t sub_10025B9E4()
{

  return _swift_task_switch(sub_10025BAE0, 0, 0);
}

uint64_t sub_10025BAE0()
{
  v36 = v0;
  v1 = *(v0 + 344);
  sub_10025E0C0(v1);
  v2 = sub_100259F8C();
  v3 = v2;
  if (v1)
  {
    v4 = *(v0 + 344);
    v5 = v3;
    isa = Bool._bridgeToObjectiveC()().super.super.isa;
    [v4 setObject:isa forKeyedSubscript:kAAFDidSucceed];
  }

  else
  {
    v7 = v2;
  }

  v8 = *(v0 + 360);
  v9 = *(v0 + 344);
  v10 = sub_10025BE9C();
  sub_10025F848(v9);

  v11 = sub_10025C154(v3, v8);
  v12 = v11;
  if (v9)
  {
    v13 = *(v0 + 344);
    if (v11)
    {
      v14 = v13;
      v15 = _convertErrorToNSError(_:)();
      v16 = *(v0 + 344);
    }

    else
    {
      v16 = v13;
      v15 = 0;
    }

    [v16 updateTaskResultWithError:v15];
  }

  v34 = v3;
  v17 = v12;
  if (qword_1003D7F48 != -1)
  {
    swift_once();
  }

  v18 = *(v0 + 344);
  v19 = type metadata accessor for Logger();
  sub_100008D04(v19, qword_1003FAAB8);
  v20 = v18;
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v35 = v25;
    *v23 = 136315394;
    if (qword_1003D7E58 != -1)
    {
      swift_once();
    }

    v26 = *(v0 + 344);
    *(v23 + 4) = sub_10021145C(qword_1003FA970, *algn_1003FA978, &v35);
    *(v23 + 12) = 2112;
    *(v23 + 14) = v26;
    *v24 = v26;
    v27 = v26;
    _os_log_impl(&_mh_execute_header, v21, v22, "%s - Reporting AppleID Availability Healthcheck event %@", v23, 0x16u);
    sub_100008D3C(v24, &unk_1003D9140, &qword_10033E640);

    sub_10000839C(v25);
  }

  v28 = *(v0 + 344);
  if (v28)
  {
    v29 = *(*(v0 + 200) + OBJC_IVAR____TtC13appleaccountd30AppleIDAvailabilityHealthCheck_reportEvent);
    v30 = v28;

    v29(v30);

    v31 = *(v0 + 344);
  }

  else
  {
    v31 = 0;
  }

  (*(v0 + 208))(v17);

  v32 = *(v0 + 8);

  return v32();
}

id sub_10025BE9C()
{
  v1 = v0;
  v2 = sub_100005814(&unk_1003E1260, &qword_10033FBA0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20[-1] - v4;
  v6 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v20[-1] - v8;
  (*(v7 + 16))(&v20[-1] - v8, v1 + OBJC_IVAR____TtC13appleaccountd30AppleIDAvailabilityHealthCheck__accountStore, v6);
  Dependency.wrappedValue.getter();
  (*(v7 + 8))(v9, v6);
  v10 = [*(*sub_1000080F8(v20 v20[3]) + 16)];
  if (v10 && (v11 = v10, v12 = [v10 aa_altDSID], v11, v12))
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  sub_10000839C(v20);
  (*(v3 + 16))(v5, v1 + OBJC_IVAR____TtC13appleaccountd30AppleIDAvailabilityHealthCheck__akAccountManager, v2);
  Dependency.wrappedValue.getter();
  (*(v3 + 8))(v5, v2);
  v15 = v20[0];
  if (v14)
  {

    v16 = String._bridgeToObjectiveC()();
    v17 = [v15 authKitAccountWithAltDSID:v16];

    swift_bridgeObjectRelease_n();
  }

  else
  {

    return 0;
  }

  return v17;
}

void *sub_10025C154(void *a1, void *a2)
{
  v2 = a2;
  if (a1)
  {
    if (a2)
    {
      swift_errorRetain();
      type metadata accessor for AAError(0);
      sub_1001530B4();
      v4 = a1;
      _BridgedStoredNSError.code.getter();
      sub_100005814(&unk_1003DB0A0, &qword_10033EC60);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10033EB30;
      *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(inited + 40) = v6;
      v7 = _convertErrorToNSError(_:)();
      *(inited + 72) = sub_100016034(0, &qword_1003DB5F0, NSError_ptr);
      *(inited + 48) = v7;
      sub_100308978(inited);
      swift_setDeallocating();
      sub_100008D3C(inited + 32, &qword_1003DB0B0, &unk_10033E710);
      _BridgedStoredNSError.init(_:userInfo:)();

      return v10;
    }

    else
    {
      v2 = a1;
      v8 = a1;
    }
  }

  else
  {
    swift_errorRetain();
  }

  return v2;
}

void sub_10025C2CC(void *a1, void *a2)
{
  v5 = sub_100005814(&unk_1003E1260, &qword_10033FBA0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v31 - v7;
  if (a1)
  {
    if (a2)
    {
      (*(v6 + 16))(v8, v2 + OBJC_IVAR____TtC13appleaccountd30AppleIDAvailabilityHealthCheck__akAccountManager, v5);
      v9 = a1;
      v10 = a2;
      Dependency.wrappedValue.getter();
      (*(v6 + 8))(v8, v5);
      v11 = v34;
      v12 = [v34 deviceRemovalReasonForAccount:v10];

      isa = Int._bridgeToObjectiveC()().super.super.isa;
      [v9 setObject:isa forKeyedSubscript:kAAAnalyticsDeviceRemovalReason];

      if (qword_1003D7F48 != -1)
      {
        swift_once();
      }

      v14 = type metadata accessor for Logger();
      sub_100008D04(v14, qword_1003FAAB8);
      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v33 = v12;
        v34 = v18;
        *v17 = 136315138;
        type metadata accessor for AKRemoteDeviceRemovalReason(0);
        v19 = String.init<A>(describing:)();
        v21 = sub_10021145C(v19, v20, &v34);

        *(v17 + 4) = v21;
        _os_log_impl(&_mh_execute_header, v15, v16, "AppleIDAvailabilityHealthCheck attachCKReason attached %s", v17, 0xCu);
        sub_10000839C(v18);
      }

      return;
    }

    v25 = qword_1003D7F48;
    v32 = a1;
    if (v25 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    sub_100008D04(v26, qword_1003FAAB8);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, v27, v28, "AppleIDAvailabilityHealthCheck attachCKReason account is nil", v29, 2u);
    }
  }

  else
  {
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_100008D04(v22, qword_1003FAAB8);
    v32 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v32, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v32, v23, "AppleIDAvailabilityHealthCheck attachCKReason event is nil", v24, 2u);
    }
  }

  v30 = v32;
}

void sub_10025C708(void *a1)
{
  v3 = sub_100005814(&qword_1003DB0C0, &unk_10033FC00);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v29 - v5;
  if (a1)
  {
    (*(v4 + 16))(v6, v1 + OBJC_IVAR____TtC13appleaccountd30AppleIDAvailabilityHealthCheck__followUpController, v3);
    v7 = a1;
    Dependency.wrappedValue.getter();
    (*(v4 + 8))(v6, v3);
    v8 = v32;
    v9 = v33;
    sub_1000080F8(v31, v32);
    v10 = (*(v9 + 104))(v8, v9);
    sub_100256EF4(v10);

    v15 = objc_allocWithZone(NSMutableArray);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v17 = [v15 initWithArray:isa];

    sub_10000839C(v31);
    v18 = [v17 aaf_arrayAsCommaSeperatedString];

    v19 = v18;
    if (!v18)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v19 = String._bridgeToObjectiveC()();
    }

    v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = v21;
    [v7 setObject:v19 forKeyedSubscript:kAAFPendingCFUTypes];

    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    sub_100008D04(v23, qword_1003FAAB8);

    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v31[0] = v27;
      *v26 = 136315138;
      v28 = sub_10021145C(v20, v22, v31);

      *(v26 + 4) = v28;
      _os_log_impl(&_mh_execute_header, v24, v25, "AppleIDAvailabilityHealthCheck attachPendingCFUTypes attached %s", v26, 0xCu);
      sub_10000839C(v27);
    }

    else
    {
    }
  }

  else
  {
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_100008D04(v11, qword_1003FAAB8);
    v30 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v30, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v30, v12, "AppleIDAvailabilityHealthCheck attachPendingCFUTypes event is nil", v13, 2u);
    }

    v14 = v30;
  }
}

BOOL sub_10025CC8C(SEL *a1)
{
  v3 = sub_100005814(&unk_1003E1260, &qword_10033FBA0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v15 - v5;
  v7 = sub_10025BE9C();
  (*(v4 + 16))(v6, v1 + OBJC_IVAR____TtC13appleaccountd30AppleIDAvailabilityHealthCheck__akAccountManager, v3);
  Dependency.wrappedValue.getter();
  (*(v4 + 8))(v6, v3);
  v8 = v16;
  if (!v7)
  {

LABEL_6:
    v13 = 0;
    goto LABEL_7;
  }

  v9 = v7;
  v10 = [v8 *a1];
  if (!v10)
  {

    goto LABEL_6;
  }

  v11 = v10;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

LABEL_7:

  return v13 != 0;
}

void sub_10025CE14(void *a1)
{
  v3 = sub_100005814(&unk_1003DF4D0, &unk_10033F290);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v20 - v5;
  if (a1)
  {
    (*(v4 + 16))(v6, v1 + OBJC_IVAR____TtC13appleaccountd30AppleIDAvailabilityHealthCheck__cdpController, v3);
    Dependency.wrappedValue.getter();
    (*(v4 + 8))(v6, v3);
    v7 = *(*sub_1000080F8(v22, v22[3]) + 16);
    v21 = 0;
    [v7 walrusStatus:&v21];
    v8 = v21;
    if (v21)
    {
      swift_willThrow();
      v9 = v8;
      sub_10000839C(v22);
      if (qword_1003D7F48 != -1)
      {
        swift_once();
      }

      v10 = type metadata accessor for Logger();
      sub_100008D04(v10, qword_1003FAAB8);
      v11 = v9;
      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        v22[0] = v16;
        *v14 = 136315394;
        if (qword_1003D7E58 != -1)
        {
          swift_once();
        }

        *(v14 + 4) = sub_10021145C(qword_1003FA970, *algn_1003FA978, v22);
        *(v14 + 12) = 2112;
        v17 = v11;
        v18 = _swift_stdlib_bridgeErrorToNSError();
        *(v14 + 14) = v18;
        *v15 = v18;
        _os_log_impl(&_mh_execute_header, v12, v13, "%s - Failed to attach Walrus Status: %@", v14, 0x16u);
        sub_100008D3C(v15, &unk_1003D9140, &qword_10033E640);

        sub_10000839C(v16);
      }

      else
      {
      }
    }

    else
    {
      isa = UInt._bridgeToObjectiveC()().super.super.isa;
      sub_10000839C(v22);
      [a1 setObject:isa forKeyedSubscript:kAAAnalyticsAdvancedDataProtectionState];
    }
  }
}

uint64_t sub_10025D16C(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = sub_100005814(&unk_1003DF4D0, &unk_10033F290);
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();

  return _swift_task_switch(sub_10025D238, 0, 0);
}

uint64_t sub_10025D238()
{
  v12 = v0;
  if (qword_1003D7F48 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100008D04(v1, qword_1003FAAB8);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136315138;
    if (qword_1003D7E58 != -1)
    {
      swift_once();
    }

    *(v4 + 4) = sub_10021145C(qword_1003FA970, *algn_1003FA978, &v11);
    _os_log_impl(&_mh_execute_header, v2, v3, "%s - Attaching Octagon Status", v4, 0xCu);
    sub_10000839C(v5);
  }

  v7 = v0[10];
  v6 = v0[11];
  v8 = v0[9];
  (*(v7 + 16))(v6, v0[8] + OBJC_IVAR____TtC13appleaccountd30AppleIDAvailabilityHealthCheck__cdpController, v8);
  Dependency.wrappedValue.getter();
  (*(v7 + 8))(v6, v8);
  sub_1000080F8(v0 + 2, v0[5]);
  v9 = swift_task_alloc();
  v0[12] = v9;
  *v9 = v0;
  v9[1] = sub_10025D47C;

  return sub_10013C9D8(0x86AC351052600000, 32);
}

uint64_t sub_10025D47C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 104) = a1;
  *(v3 + 112) = v1;

  if (v1)
  {
    v4 = sub_10025D638;
  }

  else
  {
    v4 = sub_10025D590;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10025D590()
{
  v1 = v0[7];
  sub_10000839C(v0 + 2);
  if (v1)
  {
    v2 = v0[7];
    isa = Int._bridgeToObjectiveC()().super.super.isa;
    [v2 setObject:isa forKeyedSubscript:kAAAnalyticsCliqueStatus];
  }

  v4 = v0[1];

  return v4(0);
}

uint64_t sub_10025D638()
{
  v1 = v0[14];
  sub_10000839C(v0 + 2);

  v2 = v0[1];

  return v2(v1);
}

uint64_t sub_10025D6A8(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = sub_100005814(&unk_1003DF4D0, &unk_10033F290);
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();

  return _swift_task_switch(sub_10025D774, 0, 0);
}

uint64_t sub_10025D774()
{
  if (v0[7])
  {
    v2 = v0[10];
    v1 = v0[11];
    v3 = v0[9];
    (*(v2 + 16))(v1, v0[8] + OBJC_IVAR____TtC13appleaccountd30AppleIDAvailabilityHealthCheck__cdpController, v3);
    Dependency.wrappedValue.getter();
    (*(v2 + 8))(v1, v3);
    v4 = swift_task_alloc();
    v0[12] = v4;
    *v4 = v0;
    v4[1] = sub_10025D8B4;

    return sub_10013E2C0();
  }

  else
  {

    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_10025D8B4(int a1)
{
  v4 = *v2;
  *(*v2 + 104) = v1;

  if (v1)
  {
    v5 = sub_10025DA78;
  }

  else
  {
    *(v4 + 112) = a1;
    v5 = sub_10025D9DC;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10025D9DC()
{
  v1 = v0[7];
  isa = Int32._bridgeToObjectiveC()().super.super.isa;
  sub_10000839C(v0 + 2);
  [v1 setObject:isa forKeyedSubscript:kAAAnalyticsCircleSyncingStatus];

  v3 = v0[1];

  return v3();
}

uint64_t sub_10025DA78()
{
  v11 = v0;
  sub_10000839C((v0 + 16));
  if (qword_1003D7F48 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100008D04(v1, qword_1003FAAB8);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v10 = v6;
    *v4 = 136315394;
    if (qword_1003D7E58 != -1)
    {
      swift_once();
    }

    *(v4 + 4) = sub_10021145C(qword_1003FA970, *algn_1003FA978, &v10);
    *(v4 + 12) = 2112;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 14) = v7;
    *v5 = v7;
    _os_log_impl(&_mh_execute_header, v2, v3, "%s - Failed to attach SOS Status: %@", v4, 0x16u);
    sub_100008D3C(v5, &unk_1003D9140, &qword_10033E640);

    sub_10000839C(v6);
  }

  else
  {
  }

  v8 = *(v0 + 8);

  return v8();
}

void sub_10025DCB4(void *a1)
{
  v3 = sub_100005814(&unk_1003E1260, &qword_10033FBA0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v20 - v5;
  v7 = sub_10025BE9C();
  if (v7)
  {
    v8 = v7;
    (*(v4 + 16))(v6, v1 + OBJC_IVAR____TtC13appleaccountd30AppleIDAvailabilityHealthCheck__akAccountManager, v3);
    Dependency.wrappedValue.getter();
    (*(v4 + 8))(v6, v3);
    v9 = v21;
    v10 = [v21 adpCohortForAccount:v8];

    if (!v10)
    {
      if (qword_1003D7F48 != -1)
      {
        swift_once();
      }

      v15 = type metadata accessor for Logger();
      sub_100008D04(v15, qword_1003FAAB8);
      v10 = Logger.logObject.getter();
      v16 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v10, v16))
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v21 = v18;
        *v17 = 136315138;
        if (qword_1003D7E58 != -1)
        {
          swift_once();
        }

        *(v17 + 4) = sub_10021145C(qword_1003FA970, *algn_1003FA978, &v21);
        _os_log_impl(&_mh_execute_header, v10, v16, "%s - Failed to attach ADP cohort type, cohort nil", v17, 0xCu);
        sub_10000839C(v18);
      }

      goto LABEL_17;
    }

    if (a1)
    {
      [a1 setObject:v10 forKeyedSubscript:kAAAnalyticsADPCohortType];
LABEL_17:

      return;
    }
  }

  else
  {
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_100008D04(v11, qword_1003FAAB8);
    v20 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v20, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v21 = v14;
      *v13 = 136315138;
      if (qword_1003D7E58 != -1)
      {
        swift_once();
      }

      *(v13 + 4) = sub_10021145C(qword_1003FA970, *algn_1003FA978, &v21);
      _os_log_impl(&_mh_execute_header, v20, v12, "%s - Failed to attach ADP cohort type, account nil", v13, 0xCu);
      sub_10000839C(v14);
    }

    else
    {
      v19 = v20;
    }
  }
}

void sub_10025E0C0(void *a1)
{
  v3 = sub_100005814(&unk_1003DF4D0, &unk_10033F290);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v22 - v5;
  (*(v4 + 16))(&v22 - v5, v1 + OBJC_IVAR____TtC13appleaccountd30AppleIDAvailabilityHealthCheck__cdpController, v3);
  Dependency.wrappedValue.getter();
  (*(v4 + 8))(v6, v3);
  v7 = *(*sub_1000080F8(v24, v24[3]) + 16);
  v23 = 0;
  v8 = [v7 combinedWalrusStatus:&v23];
  if (v23)
  {
    v9 = v23;

    swift_willThrow();
    sub_10000839C(v24);
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_100008D04(v10, qword_1003FAAB8);
    v11 = v9;
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v24[0] = v16;
      *v14 = 136315394;
      if (qword_1003D7E58 != -1)
      {
        swift_once();
      }

      *(v14 + 4) = sub_10021145C(qword_1003FA970, *algn_1003FA978, v24);
      *(v14 + 12) = 2112;
      v17 = v11;
      v18 = _swift_stdlib_bridgeErrorToNSError();
      *(v14 + 14) = v18;
      *v15 = v18;
      _os_log_impl(&_mh_execute_header, v12, v13, "%s - Failed to attach Walrus Status: %@", v14, 0x16u);
      sub_100008D3C(v15, &unk_1003D9140, &qword_10033E640);

      sub_10000839C(v16);
    }

    else
    {
    }
  }

  else
  {
    sub_10000839C(v24);
    if (a1)
    {
      [v8 octagonWalrusStatus];
      isa = UInt._bridgeToObjectiveC()().super.super.isa;
      [a1 setObject:isa forKeyedSubscript:kCDPAnalyticsOctagonWalrusStatus];

      [v8 escrowWalrusStatus];
      v20 = UInt._bridgeToObjectiveC()().super.super.isa;
      [a1 setObject:v20 forKeyedSubscript:kCDPAnalyticsEscrowWalrusStatus];

      [v8 pcsWalrusStatus];
      v21 = UInt._bridgeToObjectiveC()().super.super.isa;
      [a1 setObject:v21 forKeyedSubscript:kCDPAnalyticsPCSWalrusStatus];
    }
  }
}

uint64_t sub_10025E4AC()
{
  v1 = OBJC_IVAR____TtC13appleaccountd30AppleIDAvailabilityHealthCheck__followUpController;
  v2 = sub_100005814(&qword_1003DB0C0, &unk_10033FC00);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC13appleaccountd30AppleIDAvailabilityHealthCheck__cdpController;
  v4 = sub_100005814(&unk_1003DF4D0, &unk_10033F290);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC13appleaccountd30AppleIDAvailabilityHealthCheck__accountStore;
  v6 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = OBJC_IVAR____TtC13appleaccountd30AppleIDAvailabilityHealthCheck__akAccountManager;
  v8 = sub_100005814(&unk_1003E1260, &qword_10033FBA0);
  (*(*(v8 - 8) + 8))(v0 + v7, v8);
  v9 = OBJC_IVAR____TtC13appleaccountd30AppleIDAvailabilityHealthCheck__deviceInfo;
  v10 = sub_100005814(&qword_1003E4950, &qword_100347B58);
  (*(*(v10 - 8) + 8))(v0 + v9, v10);
  v11 = OBJC_IVAR____TtC13appleaccountd30AppleIDAvailabilityHealthCheck__escrowRecordViabilityProvider;
  v12 = sub_100005814(&qword_1003E4960, qword_100347B68);
  (*(*(v12 - 8) + 8))(v0 + v11, v12);
  v13 = OBJC_IVAR____TtC13appleaccountd30AppleIDAvailabilityHealthCheck__featureFlagStateProvider;
  v14 = sub_100005814(&qword_1003E4948, &qword_100347B50);
  (*(*(v14 - 8) + 8))(v0 + v13, v14);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AppleIDAvailabilityHealthCheck(uint64_t a1)
{
  result = qword_1003E4688;
  if (!qword_1003E4688)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10025E784(uint64_t a1)
{
  sub_10000DAB8(319, &qword_1003DB700, &unk_1003DACE0, &unk_10033F920);
  if (v1 <= 0x3F)
  {
    sub_10000DAB8(319, qword_1003DB720, &unk_1003DACD0, &unk_10033F020);
    if (v2 <= 0x3F)
    {
      sub_10000DAB8(319, qword_1003DA6C0, &unk_1003DA2A0, &unk_10033BDA0);
      if (v3 <= 0x3F)
      {
        sub_10025EA2C(319, &qword_1003DB710, &qword_1003DF5C0, AKAccountManager_ptr);
        if (v4 <= 0x3F)
        {
          sub_10025EA2C(319, &qword_1003E4698, &unk_1003DF5C8, AADeviceInfo_ptr);
          if (v5 <= 0x3F)
          {
            sub_10000DAB8(319, &qword_1003E46A0, &qword_1003E03E8, &qword_100343DC8);
            if (v6 <= 0x3F)
            {
              sub_10000DAB8(319, &unk_1003E46A8, &qword_1003E03E0, &qword_100343DC0);
              if (v7 <= 0x3F)
              {
                swift_updateClassMetadata2();
              }
            }
          }
        }
      }
    }
  }
}

void sub_10025EA2C(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4)
{
  if (!*a2)
  {
    sub_100016034(255, a3, a4);
    v5 = type metadata accessor for Dependency();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_10025EAA8()
{
  v1 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v9 - v3;
  (*(v2 + 16))(&v9 - v3, v0 + OBJC_IVAR____TtC13appleaccountd30AppleIDAvailabilityHealthCheck__accountStore, v1);
  Dependency.wrappedValue.getter();
  (*(v2 + 8))(v4, v1);
  v5 = [*(*sub_1000080F8(&v11 *(&v12 + 1)) + 16)];
  sub_10000839C(&v11);
  if (!v5)
  {
    v11 = 0u;
    v12 = 0u;
LABEL_10:
    sub_100008D3C(&v11, &qword_1003D87C8, qword_100344800);
    return 0;
  }

  v6 = String._bridgeToObjectiveC()();
  v7 = [v5 accountPropertyForKey:v6];

  if (v7)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
  }

  v11 = v9;
  v12 = v10;
  if (!*(&v10 + 1))
  {
    goto LABEL_10;
  }

  sub_100016034(0, &qword_1003D8D68, NSNumber_ptr);
  if (swift_dynamicCast())
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10025ECC8()
{
  v1 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v9 - v3;
  (*(v2 + 16))(&v9 - v3, v0 + OBJC_IVAR____TtC13appleaccountd30AppleIDAvailabilityHealthCheck__accountStore, v1);
  Dependency.wrappedValue.getter();
  (*(v2 + 8))(v4, v1);
  v5 = [*(*sub_1000080F8(&v11 *(&v12 + 1)) + 16)];
  sub_10000839C(&v11);
  if (!v5)
  {
    v11 = 0u;
    v12 = 0u;
LABEL_10:
    sub_100008D3C(&v11, &qword_1003D87C8, qword_100344800);
    return 0;
  }

  v6 = String._bridgeToObjectiveC()();
  v7 = [v5 accountPropertyForKey:v6];

  if (v7)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
  }

  v11 = v9;
  v12 = v10;
  if (!*(&v10 + 1))
  {
    goto LABEL_10;
  }

  sub_100016034(0, &qword_1003D8D68, NSNumber_ptr);
  if (swift_dynamicCast())
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10025EEE8()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 80);
}

uint64_t sub_10025EF38(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1000082A8;

  return sub_10025A928(a1, v4, v5, v6, v7, v8, v9, v10);
}

void sub_10025F024(void *a1, unint64_t a2)
{
  if (a1)
  {
    v5[3] = &type metadata for Int;
    v5[0] = a2 < 2;
    sub_1000080F8(v5, &type metadata for Int);
    v3 = _bridgeAnythingToObjectiveC<A>(_:)();
    sub_10000839C(v5);
    v4 = String._bridgeToObjectiveC()();
    [a1 setObject:v3 forKeyedSubscript:v4];
    swift_unknownObjectRelease();
  }
}

uint64_t sub_10025F0D8(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = sub_100005814(&qword_1003E4960, qword_100347B68);
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();

  return _swift_task_switch(sub_10025F1A4, 0, 0);
}

uint64_t sub_10025F1A4()
{
  v15 = v0;
  v1 = sub_10025BE9C();
  v0[12] = v1;
  if (v1)
  {
    v2 = v1;
    v4 = v0[10];
    v3 = v0[11];
    v5 = v0[9];
    (*(v4 + 16))(v3, v0[8] + OBJC_IVAR____TtC13appleaccountd30AppleIDAvailabilityHealthCheck__escrowRecordViabilityProvider, v5);
    Dependency.wrappedValue.getter();
    (*(v4 + 8))(v3, v5);
    sub_1000080F8(v0 + 2, v0[5]);
    v6 = swift_task_alloc();
    v0[13] = v6;
    *v6 = v0;
    v6[1] = sub_10025F440;

    return sub_100287260(v2);
  }

  else
  {
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_100008D04(v8, qword_1003FAAB8);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v14 = v12;
      *v11 = 136315138;
      if (qword_1003D7E58 != -1)
      {
        swift_once();
      }

      *(v11 + 4) = sub_10021145C(qword_1003FA970, *algn_1003FA978, &v14);
      _os_log_impl(&_mh_execute_header, v9, v10, "%s - Failed to attach Escrow Record Viability State, account nil", v11, 0xCu);
      sub_10000839C(v12);
    }

    v13 = v0[1];

    return v13();
  }
}

uint64_t sub_10025F440(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 112) = v1;

  if (v1)
  {
    v5 = sub_10025F634;
  }

  else
  {
    *(v4 + 120) = a1;
    v5 = sub_10025F568;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10025F568()
{
  sub_10000839C((v0 + 16));
  v1 = *(v0 + 56);
  sub_10025F024(v1, *(v0 + 120));
  v2 = *(v0 + 96);
  if (v1)
  {
    v3 = *(v0 + 56);
    v4.super.super.isa = UInt._bridgeToObjectiveC()().super.super.isa;
    [v3 setObject:v4.super.super.isa forKeyedSubscript:kAAAnalyticsRecordViabilityState];
  }

  else
  {
    v4.super.super.isa = *(v0 + 96);
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_10025F634()
{
  v13 = v0;
  sub_10000839C((v0 + 16));
  if (qword_1003D7F48 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100008D04(v1, qword_1003FAAB8);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v12 = v5;
    *v4 = 136315138;
    if (qword_1003D7E58 != -1)
    {
      swift_once();
    }

    *(v4 + 4) = sub_10021145C(qword_1003FA970, *algn_1003FA978, &v12);
    _os_log_impl(&_mh_execute_header, v2, v3, "%s - Failed to perform escrow check and dont know last state, setting viability state to unknown", v4, 0xCu);
    sub_10000839C(v5);
  }

  v6 = *(v0 + 56);
  sub_10025F024(v6, 0);
  v7 = *(v0 + 96);
  if (v6)
  {
    v8 = *(v0 + 56);
    v9.super.super.isa = UInt._bridgeToObjectiveC()().super.super.isa;
    [v8 setObject:v9.super.super.isa forKeyedSubscript:kAAAnalyticsRecordViabilityState];
  }

  else
  {
    v9.super.super.isa = *(v0 + 96);
  }

  v10 = *(v0 + 8);

  return v10();
}

void sub_10025F848(void *a1)
{
  if (a1)
  {
    v14 = a1;
    v1 = sub_10025CC8C(&selRef_passwordResetTokenForAccount_);
    sub_100016034(0, &qword_1003D8D68, NSNumber_ptr);
    v2.super.super.isa = NSNumber.init(integerLiteral:)(v1).super.super.isa;
    [v14 setObject:v2.super.super.isa forKeyedSubscript:kAAAnalyticsPRKPresence];
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_100008D04(v3, qword_1003FAAB8);
    v4 = v2.super.super.isa;
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *v7 = 138412290;
      *(v7 + 4) = v4;
      v8->super.super.isa = v2.super.super.isa;
      v9 = v4;
      _os_log_impl(&_mh_execute_header, v5, v6, "AppleIDAvailabilityHealthCheck attachPRKPresence attached %@", v7, 0xCu);
      sub_100008D3C(v8, &unk_1003D9140, &qword_10033E640);

      v10 = v9;
      goto LABEL_12;
    }
  }

  else
  {
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_100008D04(v11, qword_1003FAAB8);
    v14 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v14, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v14, v12, "AppleIDAvailabilityHealthCheck prkPresence event is nil", v13, 2u);
    }
  }

  v10 = v14;
LABEL_12:
}

uint64_t sub_10025FAD0(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  sub_100005814(&qword_1003DF5A0, &qword_100343680);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&qword_1003E4A70, qword_100347BC8);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_10033EB30;
  v9 = type metadata accessor for AppleIDAvailabilityHealthCheck(0);
  v10 = swift_allocObject();

  sub_100005814(&unk_1003DACE0, &unk_10033F920);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&unk_1003DACD0, &unk_10033F020);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&unk_1003DA2A0, &unk_10033BDA0);
  Dependency.init(dependencyId:config:)();
  sub_100016034(0, &qword_1003DF5C0, AKAccountManager_ptr);
  Dependency.init(dependencyId:config:)();
  sub_100016034(0, &unk_1003DF5C8, AADeviceInfo_ptr);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&qword_1003E03E8, &qword_100343DC8);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&qword_1003E03E0, &qword_100343DC0);
  Dependency.init(dependencyId:config:)();
  v11 = (v10 + OBJC_IVAR____TtC13appleaccountd30AppleIDAvailabilityHealthCheck_reportEvent);
  *v11 = a1;
  v11[1] = a2;
  *(v8 + 56) = v9;
  *(v8 + 64) = &off_1003B1770;
  *(v8 + 32) = v10;
  if (qword_1003D7F48 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_100008D04(v12, qword_1003FAAB8);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v16 = v4;
    v17 = a3;
    v18 = v25;
    *v15 = 136315138;

    sub_100005814(&unk_1003E55C0, &qword_100348180);
    v19 = Array.description.getter();
    v21 = v20;

    v22 = sub_10021145C(v19, v21, &v25);

    *(v15 + 4) = v22;
    _os_log_impl(&_mh_execute_header, v13, v14, "activities: %s", v15, 0xCu);
    sub_10000839C(v18);
    a3 = v17;
    v4 = v16;
  }

  type metadata accessor for AppleIDAvailabilityActivityProvider(0);
  v23 = swift_allocObject();

  Dependency.init(dependencyId:config:)();

  *(v23 + 16) = v8;
  *(v23 + 24) = a3 & 1;
  *(v4 + OBJC_IVAR____TtC13appleaccountd28AppleIDAvailabilityScheduler_activityProvider) = v23;

  return v4;
}

uint64_t sub_10025FF0C()
{
  v1 = v0;
  v2 = sub_100005814(&qword_1003E63F0, &qword_100347BC0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v25 - v4;
  if (qword_1003D7F48 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100008D04(v6, qword_1003FAAB8);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Scheduling Apple ID Availability activity", v9, 2u);
  }

  (*(v3 + 16))(v5, v1 + OBJC_IVAR____TtC13appleaccountd28AppleIDAvailabilityScheduler__xpcActivityScheduler, v2);
  Dependency.wrappedValue.getter();
  (*(v3 + 8))(v5, v2);
  v10 = sub_1000080F8(v25, v25[3]);
  v11 = *(v1 + OBJC_IVAR____TtC13appleaccountd28AppleIDAvailabilityScheduler_activityProvider);
  v12 = *v10;
  v13 = static String._fromUTF8Repairing(_:)();
  v15 = v14;
  if (*(v11 + 24) == 1)
  {
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "Time interval for AppleID Availability activity is being overridden.", v18, 2u);
    }

    v19 = 60;
  }

  else
  {
    v19 = 86400;
  }

  v26 = 257;
  v27 = v19 >> 1;
  v28 = v19 >> 1;
  v29 = v19;
  v30 = 8;
  v20 = swift_allocObject();
  swift_weakInit();
  v21 = sub_100313A50(&v26, v13, v15, sub_100260D34, v20);

  *(v12 + 16) = v21;

  v22 = swift_allocObject();
  swift_weakInit();
  type metadata accessor for OSTransaction();
  swift_allocObject();
  v23 = sub_10030F0FC("com.apple.appleaccountd.appleid.availability", 44, 2);
  sub_10031352C(v23, v22);

  return sub_10000839C(v25);
}

uint64_t sub_10026028C(void (*a1)(id), uint64_t a2)
{
  v3 = v2;
  v6 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v26 - v8;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  UUID.init()();
  v26[0] = UUID.uuidString.getter();
  v15 = v14;
  (*(v11 + 8))(v13, v10);
  if (qword_1003D7F48 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_100008D04(v16, qword_1003FAAB8);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&_mh_execute_header, v17, v18, "Starting on-demand Apple ID Availability activity", v19, 2u);
  }

  v20 = *(v3 + OBJC_IVAR____TtC13appleaccountd28AppleIDAvailabilityScheduler_activityProvider);
  v21 = swift_allocObject();
  *(v21 + 16) = a1;
  *(v21 + 24) = a2;
  (*(v7 + 16))(v9, v20 + OBJC_IVAR____TtC13appleaccountd35AppleIDAvailabilityActivityProvider__accountStore, v6);

  Dependency.wrappedValue.getter();
  (*(v7 + 8))(v9, v6);
  v22 = [*(*sub_1000080F8(v27 v27[3]) + 16)];
  if (v22)
  {

    sub_10000839C(v27);
    sub_100257F84(0, v26[0], v15, sub_100260964, v21);
  }

  else
  {

    sub_10000839C(v27);
    sub_100005814(&qword_1003E4610, &qword_100347AD0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10033EB30;
    *(inited + 32) = 0x72456E496E676953;
    *(inited + 40) = 0xEB00000000726F72;
    type metadata accessor for AASignInError(0);
    v26[1] = -8014;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_100260CB4(&qword_1003D8338, type metadata accessor for AASignInError, &unk_10033DC64);
    _BridgedStoredNSError.init(_:userInfo:)();
    *(inited + 48) = v27[0];
    v25 = sub_100308AA8(inited);
    swift_setDeallocating();
    sub_100008D3C(inited + 32, &qword_1003E4618, qword_100349CF0);
    sub_100260970(v25, a1);
  }
}

uint64_t sub_1002606D8()
{
  v1 = OBJC_IVAR____TtC13appleaccountd28AppleIDAvailabilityScheduler__xpcActivityScheduler;
  v2 = sub_100005814(&qword_1003E63F0, &qword_100347BC0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AppleIDAvailabilityScheduler(uint64_t a1)
{
  result = qword_1003E49A0;
  if (!qword_1003E49A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1002607E4(uint64_t a1)
{
  sub_100260880(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100260880(uint64_t a1)
{
  if (!qword_1003E54E0[0])
  {
    sub_100008CBC(&qword_1003DF5A0, &qword_100343680);
    v1 = type metadata accessor for Dependency();
    if (!v2)
    {
      atomic_store(v1, qword_1003E54E0);
    }
  }
}

uint64_t sub_10026092C()
{

  return _swift_deallocObject(v0, 32);
}

void sub_100260970(uint64_t a1, void (*a2)(id))
{
  if (*(a1 + 16))
  {
    type metadata accessor for AAError(0);
    sub_100005814(&unk_1003DB0A0, &qword_10033EC60);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10033EB30;
    *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 40) = v5;
    *(inited + 72) = sub_100005814(&unk_1003D91D0, &unk_10033F9C0);
    *(inited + 48) = a1;

    sub_100308978(inited);
    swift_setDeallocating();
    sub_100008D3C(inited + 32, &qword_1003DB0B0, &unk_10033E710);
    sub_100260CB4(&qword_1003D8370, type metadata accessor for AAError, &unk_10033DD74);
    _BridgedStoredNSError.init(_:userInfo:)();
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_100008D04(v6, qword_1003FAAB8);
    v7 = v18;
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v10 = 138412290;
      v12 = _convertErrorToNSError(_:)();
      *(v10 + 4) = v12;
      *v11 = v12;
      _os_log_impl(&_mh_execute_header, v8, v9, "Overall on-demand Apple ID Availability activity failed: %@", v10, 0xCu);
      sub_100008D3C(v11, &unk_1003D9140, &qword_10033E640);
    }

    v13 = v7;
    a2(v7);
  }

  else
  {
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_100008D04(v14, qword_1003FAAB8);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "Overall on-demand Apple ID Availability activity completed.", v17, 2u);
    }

    a2(0);
  }
}

uint64_t sub_100260CB4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100260CFC()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24);
}

void sub_100260DB8()
{
  v0 = [objc_allocWithZone(CDPFollowUpController) init];
  v1 = objc_opt_self();
  v2 = [v1 contextForConfirmExistingSecret];
  v10 = 0;
  v3 = [v0 clearFollowUpWithContext:v2 error:&v10];

  v4 = v10;
  if (v3 && (v5 = v10, v6 = [v1 contextForOfflinePasscodeChange], v10 = 0, v7 = objc_msgSend(v0, "clearFollowUpWithContext:error:", v6, &v10), v6, v4 = v10, (v7 & 1) != 0))
  {
    v8 = v10;
  }

  else
  {
    v9 = v4;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }
}

void sub_100260F04(unsigned __int8 a1, uint64_t a2)
{
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v2 = [objc_opt_self() contextForConfirmExistingSecret];
    }

    else if (a1 == 3)
    {
      v2 = [objc_opt_self() contextForOfflinePasscodeChange];
    }

    else
    {
      v2 = [objc_opt_self() contextForADPStateHealing];
    }

LABEL_11:
    v3 = v2;
    if (v3)
    {
      v4 = v3;
      v5 = objc_allocWithZone(CDPFollowUpController);
      v6 = v4;
      v7 = [v5 init];
      v15 = 0;
      if ([v7 postFollowUpWithContext:v6 error:&v15])
      {
        v8 = v15;
      }

      else
      {
        v13 = v15;
        _convertNSErrorToError(_:)();

        swift_willThrow();
      }

      goto LABEL_21;
    }

    if (qword_1003D7F20 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_100008D04(v9, qword_1003FAA40);
    v6 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v6, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      v12 = "WalrusVerifyPasscode context nil, can't post followup!";
LABEL_18:
      _os_log_impl(&_mh_execute_header, v6, v10, v12, v11, 2u);

      goto LABEL_21;
    }

    goto LABEL_21;
  }

  if (a1)
  {
    v2 = [objc_opt_self() contextForStateRepair];
    goto LABEL_11;
  }

  if (a2)
  {
    v2 = [objc_opt_self() contextForWalrusCreatePasscodeWithCDPContext:a2];
    goto LABEL_11;
  }

  if (qword_1003D7F20 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_100008D04(v14, qword_1003FAA40);
  v6 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v6, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    v12 = "CDPContext nil, can't create followup context for create passcode.";
    goto LABEL_18;
  }

LABEL_21:
}

void sub_1002611E8()
{
  v0 = [objc_allocWithZone(CDPFollowUpController) init];
  v1 = [objc_allocWithZone(CDPContext) init];
  v2 = [objc_opt_self() contextForWalrusCreatePasscodeWithCDPContext:v1];

  v6 = 0;
  v3 = [v0 clearFollowUpWithContext:v2 error:&v6];

  if (v3)
  {
    v4 = v6;
  }

  else
  {
    v5 = v6;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }
}

void sub_10026135C(SEL *a1)
{
  v2 = [objc_allocWithZone(CDPFollowUpController) init];
  v3 = [objc_opt_self() *a1];
  v7 = 0;
  v4 = [v2 clearFollowUpWithContext:v3 error:&v7];

  if (v4)
  {
    v5 = v7;
  }

  else
  {
    v6 = v7;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }
}

unint64_t sub_100261468()
{
  result = qword_1003E4B38;
  if (!qword_1003E4B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003E4B38);
  }

  return result;
}

uint64_t sub_1002614BC()
{
  type metadata accessor for CloudDataProtectionHealthCheck(0);
  sub_100005814(&qword_1003E4CD8, qword_100347D18);
  result = String.init<A>(describing:)();
  qword_1003E4B40 = result;
  *algn_1003E4B48 = v1;
  return result;
}

void sub_100261510(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4)
{
  v5 = v4;
  v33 = a2;
  v34 = a3;
  v31 = *v4;
  v32 = a1;
  v7 = sub_100005814(&qword_1003DABF0, &qword_10033F8A0);
  __chkstk_darwin(v7 - 8);
  v9 = &v29 - v8;
  v10 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v29 - v12;
  if (qword_1003D7F48 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_100008D04(v14, qword_1003FAAB8);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v30 = a4;
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v36[0] = v18;
    *v17 = 136315138;
    if (qword_1003D7E60 != -1)
    {
      swift_once();
    }

    *(v17 + 4) = sub_10021145C(qword_1003E4B40, *algn_1003E4B48, v36);
    _os_log_impl(&_mh_execute_header, v15, v16, "%s - started.", v17, 0xCu);
    sub_10000839C(v18);

    a4 = v30;
  }

  else
  {
  }

  (*(v11 + 16))(v13, v5 + OBJC_IVAR____TtC13appleaccountd30CloudDataProtectionHealthCheck__accountStore, v10);
  Dependency.wrappedValue.getter();
  (*(v11 + 8))(v13, v10);
  v19 = [*(*sub_1000080F8(v36 v36[3]) + 16)];
  sub_10000839C(v36);
  if (v19)
  {
    v20 = type metadata accessor for TaskPriority();
    (*(*(v20 - 8) + 56))(v9, 1, 1, v20);
    v21 = swift_allocObject();
    v21[2] = 0;
    v21[3] = 0;
    v22 = v32;
    v23 = v33;
    v21[4] = v5;
    v21[5] = v22;
    v21[6] = v23;
    v21[7] = v19;
    v21[8] = v34;
    v21[9] = a4;
    v21[10] = v31;

    sub_1000BCD5C(0, 0, v9, &unk_100347D00, v21);
  }

  else
  {
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v36[0] = v27;
      *v26 = 136315138;
      if (qword_1003D7E60 != -1)
      {
        swift_once();
      }

      *(v26 + 4) = sub_10021145C(qword_1003E4B40, *algn_1003E4B48, v36);
      _os_log_impl(&_mh_execute_header, v24, v25, "%s - Primary account is not available, bailing from health check...", v26, 0xCu);
      sub_10000839C(v27);
    }

    type metadata accessor for AAError(0);
    v35 = -4404;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_1001530B4();
    _BridgedStoredNSError.init(_:userInfo:)();
    v28 = v36[0];
    v34(v36[0]);
  }
}

uint64_t sub_100261A28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[16] = a8;
  v8[17] = v13;
  v8[14] = a6;
  v8[15] = a7;
  v8[12] = a4;
  v8[13] = a5;
  v9 = sub_100005814(&unk_1003DF4D0, &unk_10033F290);
  v8[18] = v9;
  v8[19] = *(v9 - 8);
  v8[20] = swift_task_alloc();
  v10 = sub_100005814(&qword_1003E4CD0, &qword_100347D10);
  v8[21] = v10;
  v8[22] = *(v10 - 8);
  v8[23] = swift_task_alloc();

  return _swift_task_switch(sub_100261B6C, 0, 0);
}

uint64_t sub_100261B6C()
{
  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[21];
  (*(v2 + 16))(v1, v0[12] + OBJC_IVAR____TtC13appleaccountd30CloudDataProtectionHealthCheck__pdpAdpHealthChecks, v3);
  Dependency.wrappedValue.getter();
  (*(v2 + 8))(v1, v3);
  v4 = v0[5];
  v5 = v0[6];
  sub_1000080F8(v0 + 2, v4);
  v11 = (*(v5 + 16) + **(v5 + 16));
  v6 = swift_task_alloc();
  v0[24] = v6;
  *v6 = v0;
  v6[1] = sub_100261CF4;
  v7 = v0[14];
  v8 = v0[15];
  v9 = v0[13];

  return v11(v9, v7, v8, v4, v5);
}

uint64_t sub_100261CF4(uint64_t a1)
{
  *(*v1 + 200) = a1;

  return _swift_task_switch(sub_100261DF4, 0, 0);
}

uint64_t sub_100261DF4()
{
  v15 = v0;
  v2 = v0[19];
  v1 = v0[20];
  v3 = v0[18];
  v4 = v0[12];
  sub_10000839C(v0 + 2);
  (*(v2 + 16))(v1, v4 + OBJC_IVAR____TtC13appleaccountd30CloudDataProtectionHealthCheck__cdpController, v3);
  Dependency.wrappedValue.getter();
  (*(v2 + 8))(v1, v3);
  sub_10000839C(v0 + 7);
  if (qword_1003D7F48 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100008D04(v5, qword_1003FAAB8);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v14 = v9;
    *v8 = 136315138;
    if (qword_1003D7E60 != -1)
    {
      swift_once();
    }

    *(v8 + 4) = sub_10021145C(qword_1003E4B40, *algn_1003E4B48, &v14);
    _os_log_impl(&_mh_execute_header, v6, v7, "%s - PDP was never enabled on this account.", v8, 0xCu);
    sub_10000839C(v9);
  }

  v10 = v0[25];
  v11 = v0[16];
  if (v10)
  {
    swift_errorRetain();
    v11(v10);
  }

  else
  {
    v11(0);
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_100262048()
{
  v1 = OBJC_IVAR____TtC13appleaccountd30CloudDataProtectionHealthCheck__accountStore;
  v2 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC13appleaccountd30CloudDataProtectionHealthCheck__pdpAdpHealthChecks;
  v4 = sub_100005814(&qword_1003E4CD0, &qword_100347D10);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC13appleaccountd30CloudDataProtectionHealthCheck__cdpController;
  v6 = sub_100005814(&unk_1003DF4D0, &unk_10033F290);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CloudDataProtectionHealthCheck(uint64_t a1)
{
  result = qword_1003E4B90;
  if (!qword_1003E4B90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1002621DC(uint64_t a1)
{
  sub_10000DAB8(319, qword_1003DA6C0, &unk_1003DA2A0, &unk_10033BDA0);
  if (v1 <= 0x3F)
  {
    sub_10000DAB8(319, &unk_1003E4BA0, &qword_1003DF670, &qword_1003436C8);
    if (v2 <= 0x3F)
    {
      sub_10000DAB8(319, qword_1003DB720, &unk_1003DACD0, &unk_10033F020);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t sub_10026234C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 88);
}

uint64_t sub_1002623A4(uint64_t a1)
{
  v4 = v1[3];
  v12 = v1[2];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v9 = v1[8];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1000082A8;

  return sub_100261A28(a1, v12, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_100262498(uint64_t a1, uint64_t a2)
{
  v26 = a2;
  v27 = sub_100005814(&qword_1003D9110, &qword_10033EC10);
  v3 = *(v27 - 8);
  __chkstk_darwin(v27);
  v5 = &v23 - v4;
  v6 = type metadata accessor for URL();
  v24 = *(v6 - 8);
  v25 = v6;
  v7 = __chkstk_darwin(v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v23 - v10;
  v12 = sub_100005814(&qword_1003D9168, &qword_10033EC38);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v23 - v14;
  (*(v13 + 16))(&v23 - v14, a1, v12);
  v16 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v17 = swift_allocObject();
  (*(v13 + 32))(v17 + v16, v15, v12);
  v18 = sub_1000080F8((v26 + 16), *(v26 + 40));
  type metadata accessor for LocalCache();
  sub_100307F40();
  URL.appendingPathComponent(_:isDirectory:)();
  v19 = v25;
  v20 = *(v24 + 8);
  v20(v9, v25);
  v21 = v27;
  (*(v3 + 16))(v5, *v18 + OBJC_IVAR____TtC13appleaccountd17StorageController__localStorage, v27);
  Dependency.wrappedValue.getter();
  (*(v3 + 8))(v5, v21);
  sub_1000080F8(v28, v28[3]);
  sub_1000328BC(v11, sub_100266940, v17);

  v20(v11, v19);
  return sub_10000839C(v28);
}

uint64_t sub_1002627F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 40) = a4;
  *(v6 + 48) = v5;
  *(v6 + 80) = a5;
  *(v6 + 24) = a2;
  *(v6 + 32) = a3;
  *(v6 + 16) = a1;
  v7 = type metadata accessor for UUID();
  *(v6 + 56) = v7;
  *(v6 + 64) = *(v7 - 8);
  *(v6 + 72) = swift_task_alloc();

  return _swift_task_switch(sub_1002628C4, 0, 0);
}

uint64_t sub_1002628C4()
{
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);
  v3 = *(v0 + 56);
  v19 = *(v0 + 80);
  v4 = *(v0 + 40);
  v5 = *(v0 + 16);
  v20 = *(v0 + 24);
  v21 = *(v0 + 32);
  v6 = [v5 custodianID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  LOBYTE(v6) = [v5 isAccepted];
  type metadata accessor for CustodianInvitationResponseMessage(0);
  v7 = swift_allocObject();
  *(v7 + OBJC_IVAR____TtC13appleaccountd34CustodianInvitationResponseMessage_reason) = 11;
  v8 = v7 + OBJC_IVAR____TtC13appleaccountd34CustodianInvitationResponseMessage_flow;
  *v8 = 0;
  *(v8 + 8) = 1;
  *(v7 + 16) = 1;
  (*(v2 + 32))(v7 + OBJC_IVAR____TtC13appleaccountd34CustodianInvitationResponseMessage_custodianID, v1, v3);
  *(v7 + OBJC_IVAR____TtC13appleaccountd34CustodianInvitationResponseMessage_accepted) = v6;
  *(v7 + OBJC_IVAR____TtC13appleaccountd34CustodianInvitationResponseMessage_reason) = 11;
  v9 = v7 + OBJC_IVAR____TtC13appleaccountd34CustodianInvitationResponseMessage_flow;
  *v9 = v4;
  *(v9 + 8) = v19 & 1;
  v10 = sub_1000E9D30(v20, v21);
  v11 = *(v0 + 16);
  _StringGuts.grow(_:)(35);

  v12 = [v11 isAccepted];
  v13 = v12 == 0;
  if (v12)
  {
    v14 = 1702195828;
  }

  else
  {
    v14 = 0x65736C6166;
  }

  if (v13)
  {
    v15 = 0xE500000000000000;
  }

  else
  {
    v15 = 0xE400000000000000;
  }

  v16 = v15;
  String.append(_:)(*&v14);

  sub_100262C0C(v7, v10, 0xD000000000000021, 0x8000000100332920, sub_1002B3EB4);

  v18 = *(v0 + 8);

  return v18();
}

void sub_100262C0C(uint64_t a1, void *a2, uint64_t a3, unint64_t a4, uint64_t (*a5)(void))
{
  v7 = v5;
  v57 = a3;
  v11 = type metadata accessor for UUID();
  v54 = *(v11 - 8);
  v55 = v11;
  __chkstk_darwin(v11);
  v53 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  v14 = sub_100008D04(v13, qword_1003FAA88);

  v15 = a2;
  v56 = v14;
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v52 = a5;
    v19 = v18;
    v20 = swift_slowAlloc();
    v21 = a1;
    v22 = swift_slowAlloc();
    v58 = v22;
    *v19 = 136315394;
    *(v19 + 4) = sub_10021145C(v57, a4, &v58);
    *(v19 + 12) = 2112;
    *(v19 + 14) = v15;
    *v20 = v15;
    v23 = v15;
    _os_log_impl(&_mh_execute_header, v16, v17, "Sending message with description: %s, to: %@", v19, 0x16u);
    sub_100083380(v20);

    sub_10000839C(v22);
    a1 = v21;

    a5 = v52;
  }

  v24 = a5(a1);
  if (v25 >> 60 == 15)
  {

    v26 = v15;
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v58 = v31;
      *v29 = 136315394;
      *(v29 + 4) = sub_10021145C(v57, a4, &v58);
      *(v29 + 12) = 2112;
      *(v29 + 14) = v26;
      *v30 = v26;
      v32 = v26;
      _os_log_impl(&_mh_execute_header, v27, v28, "Fail to send message with description %s to %@.", v29, 0x16u);
      sub_100083380(v30);

      sub_10000839C(v31);
    }

    [objc_allocWithZone(NSError) initWithDomain:AAMessagingErrorDomain code:4 userInfo:0];
    swift_willThrow();
  }

  else
  {
    v33 = *(v7 + 16);
    v34 = v24;
    v52 = v25;
    isa = Data._bridgeToObjectiveC()().super.isa;
    sub_100005814(&unk_1003E4DE0, &qword_1003432F0);
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_1003431D0;
    *(v36 + 32) = v15;
    sub_100016034(0, &unk_1003E6930, AAMessagingDestination_ptr);
    v37 = v15;
    v38 = Array._bridgeToObjectiveC()().super.isa;

    v58 = 0;
    v39 = [v33 sendMessage:isa destinations:v38 sendFromHandleUri:0 responseIdentifier:0 fireAndForget:0 requiredCapabilities:0 lackingCapabilities:0 error:&v58];

    v40 = v58;
    if (v39)
    {
      v41 = v53;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();
      v42 = v40;

      (*(v54 + 8))(v41, v55);

      v43 = v37;
      v44 = Logger.logObject.getter();
      v45 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        v48 = swift_slowAlloc();
        v58 = v48;
        *v46 = 136315394;
        *(v46 + 4) = sub_10021145C(v57, a4, &v58);
        *(v46 + 12) = 2112;
        *(v46 + 14) = v43;
        *v47 = v43;
        v49 = v43;
        _os_log_impl(&_mh_execute_header, v44, v45, "Message with description %s sent successfully to %@!", v46, 0x16u);
        sub_100083380(v47);

        sub_10000839C(v48);
      }

      sub_100015D58(v34, v52);
    }

    else
    {
      v50 = v58;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      sub_100015D58(v34, v52);
    }
  }
}

uint64_t sub_10026335C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[2] = a7;
  v8[3] = a8;
  v11 = swift_task_alloc();
  v8[4] = v11;
  *v11 = v8;
  v11[1] = sub_1001F7F4C;

  return sub_10026340C(a5, a6);
}

uint64_t sub_10026340C(uint64_t a1, uint64_t a2)
{
  v3[15] = a2;
  v3[16] = v2;
  v3[14] = a1;
  v4 = type metadata accessor for CustodianshipInfoRecord(0);
  v3[17] = v4;
  v3[18] = *(v4 - 8);
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();
  v5 = sub_100005814(&unk_1003DA530, &qword_10033F460);
  v3[25] = v5;
  v3[26] = *(v5 - 8);
  v3[27] = swift_task_alloc();
  v6 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  v3[28] = v6;
  v3[29] = *(v6 - 8);
  v3[30] = swift_task_alloc();

  return _swift_task_switch(sub_1002635DC, 0, 0);
}

uint64_t sub_1002635DC()
{
  v2 = v0[29];
  v1 = v0[30];
  v3 = v0[28];
  (*(v2 + 16))(v1, v0[16] + OBJC_IVAR____TtC13appleaccountd40CustodianIncompleteInvitationHealthCheck__accountStore, v3);
  Dependency.wrappedValue.getter();
  (*(v2 + 8))(v1, v3);
  v4 = [*(*sub_1000080F8(v0 + 2 v0[5]) + 16)];
  if (v4 && (v5 = v4, v6 = [v4 aa_altDSID], v5, v6))
  {
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  v0[31] = v7;
  v0[32] = v9;
  v11 = v0[26];
  v10 = v0[27];
  v12 = v0[25];
  v13 = v0[16];
  sub_10000839C(v0 + 2);
  (*(v11 + 16))(v10, v13 + OBJC_IVAR____TtC13appleaccountd40CustodianIncompleteInvitationHealthCheck__custodianStorage, v12);
  Dependency.wrappedValue.getter();
  (*(v11 + 8))(v10, v12);
  v0[12] = *sub_1000080F8(v0 + 7, v0[10]);
  v14 = swift_task_alloc();
  v0[33] = v14;
  *(v14 + 16) = v0 + 12;
  v15 = swift_task_alloc();
  v0[34] = v15;
  v16 = sub_100005814(&unk_1003E4DD0, &qword_10033F468);
  *v15 = v0;
  v15[1] = sub_100263824;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 13, 0, 0, 0xD000000000000018, 0x800000010032D5E0, sub_100266840, v14, v16);
}

uint64_t sub_100263824()
{
  *(*v1 + 280) = v0;

  if (v0)
  {

    v2 = sub_100263C74;
  }

  else
  {

    v2 = sub_10026396C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10026396C()
{
  v1 = v0[13];
  sub_10000839C(v0 + 7);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = v0[17];
    v5 = v0[18];
    v25 = v4;
    v26 = *(v1 + 16);
    while (v3 < *(v1 + 16))
    {
      v6 = v0[24];
      v7 = (*(v5 + 80) + 32) & ~*(v5 + 80);
      v8 = *(v5 + 72);
      sub_1000C522C(v1 + v7 + v8 * v3, v6);
      v9 = v0[24];
      if (*(v6 + *(v4 + 28)) == 2)
      {
        sub_1000C5368(v9, v0[23]);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1002E0244(0, _swiftEmptyArrayStorage[2] + 1, 1);
        }

        v11 = _swiftEmptyArrayStorage[2];
        v10 = _swiftEmptyArrayStorage[3];
        if (v11 >= v10 >> 1)
        {
          sub_1002E0244((v10 > 1), v11 + 1, 1);
        }

        v12 = v0[23];
        _swiftEmptyArrayStorage[2] = v11 + 1;
        sub_1000C5368(v12, _swiftEmptyArrayStorage + v7 + v11 * v8);
        v4 = v25;
        v2 = v26;
      }

      else
      {
        sub_10026684C(v9, type metadata accessor for CustodianshipInfoRecord);
      }

      if (v2 == ++v3)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_12:
    v0[36] = _swiftEmptyArrayStorage;
    if (qword_1003D7F38 == -1)
    {
      goto LABEL_13;
    }
  }

  swift_once();
LABEL_13:
  v13 = type metadata accessor for Logger();
  v0[37] = sub_100008D04(v13, qword_1003FAA88);
  swift_retain_n();

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 134218240;
    v17 = *(v1 + 16);

    *(v16 + 4) = v17;

    *(v16 + 12) = 2048;
    v18 = _swiftEmptyArrayStorage[2];

    *(v16 + 14) = v18;

    _os_log_impl(&_mh_execute_header, v14, v15, "Out of %ld custodianship records, %ld are accepted", v16, 0x16u);
  }

  else
  {

    swift_bridgeObjectRelease_n();
  }

  v19 = swift_task_alloc();
  v0[38] = v19;
  *v19 = v0;
  v19[1] = sub_100263D40;
  v20 = v0[31];
  v21 = v0[32];
  v22 = v0[15];
  v23 = v0[14];

  return sub_100264C64(_swiftEmptyArrayStorage, v23, v22, v20, v21);
}

uint64_t sub_100263C74()
{
  sub_10000839C((v0 + 56));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100263D40(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 312) = a1;
  *(v3 + 320) = v1;

  if (v1)
  {
    v4 = sub_100264AAC;
  }

  else
  {
    v4 = sub_100263E54;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100263E54()
{
  v48 = v0;

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 312);
  v5 = *(v0 + 288);
  if (v3)
  {
    v6 = swift_slowAlloc();
    *v6 = 134218240;
    v7 = *(v5 + 16);

    *(v6 + 4) = v7;

    *(v6 + 12) = 2048;
    *(v6 + 14) = *(v4 + 16);

    _os_log_impl(&_mh_execute_header, v1, v2, "Out of %ld accepted custodianship records, %ld doesn't have recovery info record", v6, 0x16u);
  }

  else
  {
  }

  result = *(v0 + 312);
  v9 = *(result + 16);
  *(v0 + 328) = v9;
  if (v9)
  {
    v10 = *(*(v0 + 144) + 80);
    *(v0 + 360) = v10;
    *(v0 + 336) = 0;
    if (*(result + 16))
    {
      v12 = *(v0 + 168);
      v11 = *(v0 + 176);
      sub_1000C522C(result + ((v10 + 32) & ~v10), v11);
      sub_1000C522C(v11, v12);
      v13 = Logger.logObject.getter();
      v14 = static os_log_type_t.default.getter();
      v15 = os_log_type_enabled(v13, v14);
      v16 = *(v0 + 168);
      if (v15)
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v47 = v18;
        *v17 = 136315138;
        type metadata accessor for UUID();
        sub_1000D8278(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v19 = dispatch thunk of CustomStringConvertible.description.getter();
        v21 = v20;
        sub_10026684C(v16, type metadata accessor for CustodianshipInfoRecord);
        v22 = sub_10021145C(v19, v21, &v47);

        *(v17 + 4) = v22;
        _os_log_impl(&_mh_execute_header, v13, v14, "Resending accept message for %s", v17, 0xCu);
        sub_10000839C(v18);
      }

      else
      {

        sub_10026684C(v16, type metadata accessor for CustodianshipInfoRecord);
      }

      v24 = *(v0 + 176);
      v25 = *(v0 + 152);
      sub_1000C522C(v24, *(v0 + 160));
      sub_1000C522C(v24, v25);
      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.debug.getter();
      v28 = os_log_type_enabled(v26, v27);
      v29 = *(v0 + 152);
      v30 = *(v0 + 160);
      if (v28)
      {
        v31 = *(v0 + 136);
        v32 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        *v32 = 136315394;
        type metadata accessor for UUID();
        sub_1000D8278(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v33 = dispatch thunk of CustomStringConvertible.description.getter();
        v35 = v34;
        sub_10026684C(v30, type metadata accessor for CustodianshipInfoRecord);
        v36 = sub_10021145C(v33, v35, &v47);

        *(v32 + 4) = v36;
        *(v32 + 12) = 2080;
        v37 = (v29 + *(v31 + 24));
        v38 = *v37;
        v39 = v37[1];

        sub_10026684C(v29, type metadata accessor for CustodianshipInfoRecord);
        v40 = sub_10021145C(v38, v39, &v47);

        *(v32 + 14) = v40;
        _os_log_impl(&_mh_execute_header, v26, v27, "Resending accept message for %s, handle: %s", v32, 0x16u);
        swift_arrayDestroy();
      }

      else
      {

        sub_10026684C(v29, type metadata accessor for CustodianshipInfoRecord);
        sub_10026684C(v30, type metadata accessor for CustodianshipInfoRecord);
      }

      v41 = swift_task_alloc();
      *(v0 + 344) = v41;
      *v41 = v0;
      v41[1] = sub_100264440;
      v42 = *(v0 + 248);
      v43 = *(v0 + 256);
      v44 = *(v0 + 176);
      v45 = *(v0 + 120);
      v46 = *(v0 + 112);

      return sub_100265978(v44, v46, v45, v42, v43);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {

    v23 = *(v0 + 8);

    return v23();
  }

  return result;
}

uint64_t sub_100264440()
{
  *(*v1 + 352) = v0;

  if (v0)
  {

    v2 = sub_100264B84;
  }

  else
  {
    v2 = sub_100264568;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100264568()
{
  v43 = v0;
  v1 = *(v0 + 328);
  v2 = *(v0 + 336) + 1;
  result = sub_10026684C(*(v0 + 176), type metadata accessor for CustodianshipInfoRecord);
  if (v2 == v1)
  {

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    v5 = *(v0 + 336) + 1;
    *(v0 + 336) = v5;
    v6 = *(v0 + 312);
    if (v5 >= *(v6 + 16))
    {
      __break(1u);
    }

    else
    {
      v8 = *(v0 + 168);
      v7 = *(v0 + 176);
      sub_1000C522C(v6 + ((*(v0 + 360) + 32) & ~*(v0 + 360)) + *(*(v0 + 144) + 72) * v5, v7);
      sub_1000C522C(v7, v8);
      v9 = Logger.logObject.getter();
      v10 = static os_log_type_t.default.getter();
      v11 = os_log_type_enabled(v9, v10);
      v12 = *(v0 + 168);
      if (v11)
      {
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        v42 = v14;
        *v13 = 136315138;
        type metadata accessor for UUID();
        sub_1000D8278(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v15 = dispatch thunk of CustomStringConvertible.description.getter();
        v17 = v16;
        sub_10026684C(v12, type metadata accessor for CustodianshipInfoRecord);
        v18 = sub_10021145C(v15, v17, &v42);

        *(v13 + 4) = v18;
        _os_log_impl(&_mh_execute_header, v9, v10, "Resending accept message for %s", v13, 0xCu);
        sub_10000839C(v14);
      }

      else
      {

        sub_10026684C(v12, type metadata accessor for CustodianshipInfoRecord);
      }

      v19 = *(v0 + 176);
      v20 = *(v0 + 152);
      sub_1000C522C(v19, *(v0 + 160));
      sub_1000C522C(v19, v20);
      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.debug.getter();
      v23 = os_log_type_enabled(v21, v22);
      v24 = *(v0 + 152);
      v25 = *(v0 + 160);
      if (v23)
      {
        v26 = *(v0 + 136);
        v27 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        *v27 = 136315394;
        type metadata accessor for UUID();
        sub_1000D8278(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v28 = dispatch thunk of CustomStringConvertible.description.getter();
        v30 = v29;
        sub_10026684C(v25, type metadata accessor for CustodianshipInfoRecord);
        v31 = sub_10021145C(v28, v30, &v42);

        *(v27 + 4) = v31;
        *(v27 + 12) = 2080;
        v32 = (v24 + *(v26 + 24));
        v33 = *v32;
        v34 = v32[1];

        sub_10026684C(v24, type metadata accessor for CustodianshipInfoRecord);
        v35 = sub_10021145C(v33, v34, &v42);

        *(v27 + 14) = v35;
        _os_log_impl(&_mh_execute_header, v21, v22, "Resending accept message for %s, handle: %s", v27, 0x16u);
        swift_arrayDestroy();
      }

      else
      {

        sub_10026684C(v24, type metadata accessor for CustodianshipInfoRecord);
        sub_10026684C(v25, type metadata accessor for CustodianshipInfoRecord);
      }

      v36 = swift_task_alloc();
      *(v0 + 344) = v36;
      *v36 = v0;
      v36[1] = sub_100264440;
      v37 = *(v0 + 248);
      v38 = *(v0 + 256);
      v39 = *(v0 + 176);
      v40 = *(v0 + 120);
      v41 = *(v0 + 112);

      return sub_100265978(v39, v41, v40, v37, v38);
    }
  }

  return result;
}

uint64_t sub_100264AAC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100264B84()
{
  sub_10026684C(*(v0 + 176), type metadata accessor for CustodianshipInfoRecord);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100264C64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[15] = a5;
  v6[16] = v5;
  v6[13] = a3;
  v6[14] = a4;
  v6[11] = a1;
  v6[12] = a2;
  type metadata accessor for CustodianRecoveryInfoRecord(0);
  v6[17] = swift_task_alloc();
  v7 = sub_100005814(&unk_1003DA530, &qword_10033F460);
  v6[18] = v7;
  v6[19] = *(v7 - 8);
  v6[20] = swift_task_alloc();
  v6[21] = type metadata accessor for FetchRecoveryRecordsRequest(0);
  v6[22] = swift_task_alloc();
  v8 = type metadata accessor for CustodianshipInfoRecord(0);
  v6[23] = v8;
  v6[24] = *(v8 - 8);
  v6[25] = swift_task_alloc();
  v6[26] = swift_task_alloc();

  return _swift_task_switch(sub_100264DFC, 0, 0);
}

uint64_t sub_100264DFC()
{
  v1 = *(v0 + 88);
  v2 = *(v1 + 16);
  *(v0 + 216) = v2;
  if (v2)
  {
    v4 = *(v0 + 184);
    v3 = *(v0 + 192);
    v27 = OBJC_IVAR____TtC13appleaccountd40CustodianIncompleteInvitationHealthCheck__custodianStorage;
    v28 = *(v0 + 128);
    *(v0 + 224) = OBJC_IVAR____TtC13appleaccountd40CustodianIncompleteInvitationHealthCheck__custodianStorage;
    v5 = *(v3 + 80);
    *(v0 + 272) = v5;
    v6 = *(v3 + 72);
    *(v0 + 240) = 0;
    *(v0 + 248) = _swiftEmptyArrayStorage;
    *(v0 + 232) = v6;
    v7 = *(v0 + 208);
    v9 = *(v0 + 168);
    v8 = *(v0 + 176);
    v11 = *(v0 + 152);
    v10 = *(v0 + 160);
    v12 = *(v0 + 144);
    v13 = *(v0 + 120);
    v14 = *(v0 + 104);
    v25 = *(v0 + 112);
    v26 = *(v0 + 96);
    sub_1000C522C(v1 + ((v5 + 32) & ~v5), v7);
    v15 = *(v4 + 20);
    v16 = type metadata accessor for UUID();
    (*(*(v16 - 8) + 16))(v8, v7 + v15, v16);
    *(v8 + v9[5]) = 0;
    v17 = v8 + v9[6];
    *v17 = 0;
    *(v17 + 8) = 1;
    *(v8 + v9[7]) = 1;
    v18 = (v8 + v9[8]);
    *v18 = v25;
    v18[1] = v13;
    v19 = (v8 + v9[9]);
    *v19 = v26;
    v19[1] = v14;
    (*(v11 + 16))(v10, v28 + v27, v12);

    Dependency.wrappedValue.getter();
    (*(v11 + 8))(v10, v12);
    sub_1000080F8((v0 + 16), *(v0 + 40));
    v20 = swift_task_alloc();
    *(v0 + 256) = v20;
    *v20 = v0;
    v20[1] = sub_10026509C;
    v21 = *(v0 + 176);
    v22 = *(v0 + 136);

    return sub_100021548(v22, v21, 0, 0);
  }

  else
  {

    v24 = *(v0 + 8);

    return v24(_swiftEmptyArrayStorage);
  }
}

uint64_t sub_10026509C()
{
  v2 = *v1;
  *(*v1 + 264) = v0;

  if (v0)
  {
    v3 = sub_1002654A0;
  }

  else
  {
    sub_10026684C(*(v2 + 136), type metadata accessor for CustodianRecoveryInfoRecord);
    v3 = sub_1002651CC;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1002651CC()
{
  v1 = *(v0 + 208);
  sub_10026684C(*(v0 + 176), type metadata accessor for FetchRecoveryRecordsRequest);
  sub_10026684C(v1, type metadata accessor for CustodianshipInfoRecord);
  sub_10000839C((v0 + 16));
  v2 = *(v0 + 240) + 1;
  if (v2 == *(v0 + 216))
  {
    v3 = *(v0 + 248);

    v4 = *(v0 + 8);

    return v4(v3);
  }

  else
  {
    *(v0 + 240) = v2;
    v26 = *(v0 + 224);
    v6 = *(v0 + 208);
    v7 = *(v0 + 176);
    v8 = *(v0 + 184);
    v9 = *(v0 + 160);
    v10 = *(v0 + 168);
    v11 = *(v0 + 144);
    v12 = *(v0 + 152);
    v13 = *(v0 + 120);
    v25 = *(v0 + 128);
    v14 = *(v0 + 104);
    v24 = *(v0 + 96);
    v23 = *(v0 + 112);
    sub_1000C522C(*(v0 + 88) + ((*(v0 + 272) + 32) & ~*(v0 + 272)) + *(v0 + 232) * v2, v6);
    v15 = *(v8 + 20);
    v16 = type metadata accessor for UUID();
    (*(*(v16 - 8) + 16))(v7, v6 + v15, v16);
    *(v7 + v10[5]) = 0;
    v17 = v7 + v10[6];
    *v17 = 0;
    *(v17 + 8) = 1;
    *(v7 + v10[7]) = 1;
    v18 = (v7 + v10[8]);
    *v18 = v23;
    v18[1] = v13;
    v19 = (v7 + v10[9]);
    *v19 = v24;
    v19[1] = v14;
    (*(v12 + 16))(v9, v25 + v26, v11);

    Dependency.wrappedValue.getter();
    (*(v12 + 8))(v9, v11);
    sub_1000080F8((v0 + 16), *(v0 + 40));
    v20 = swift_task_alloc();
    *(v0 + 256) = v20;
    *v20 = v0;
    v20[1] = sub_10026509C;
    v21 = *(v0 + 176);
    v22 = *(v0 + 136);

    return sub_100021548(v22, v21, 0, 0);
  }
}

uint64_t sub_1002654A0()
{
  v1 = *(v0 + 264);
  sub_10026684C(*(v0 + 176), type metadata accessor for FetchRecoveryRecordsRequest);
  sub_10000839C((v0 + 16));
  *(v0 + 56) = v1;
  swift_errorRetain();
  sub_100005814(&unk_1003DBB60, &unk_10033E740);
  type metadata accessor for AACustodianError(0);
  if (swift_dynamicCast())
  {
    v2 = *(v0 + 64);
    *(v0 + 72) = v2;
    sub_1000D8278(&qword_1003D8140, type metadata accessor for AACustodianError, &unk_10033DF94);
    _BridgedStoredNSError.code.getter();
    if (*(v0 + 80) == -7062)
    {
      sub_1000C522C(*(v0 + 208), *(v0 + 200));
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v4 = *(v0 + 248);
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v4 = sub_1003060B4(0, v4[2] + 1, 1, *(v0 + 248));
      }

      v6 = v4[2];
      v5 = v4[3];
      if (v6 >= v5 >> 1)
      {
        v4 = sub_1003060B4((v5 > 1), v6 + 1, 1, v4);
      }

      v7 = *(v0 + 232);
      v8 = *(v0 + 272);
      v10 = *(v0 + 200);
      v9 = *(v0 + 208);

      sub_10026684C(v9, type metadata accessor for CustodianshipInfoRecord);
      v4[2] = v6 + 1;
      sub_1000C5368(v10, v4 + ((v8 + 32) & ~v8) + v7 * v6);
      v11 = *(v0 + 240) + 1;
      if (v11 == *(v0 + 216))
      {

        v12 = *(v0 + 8);

        return v12(v4);
      }

      else
      {
        *(v0 + 240) = v11;
        *(v0 + 248) = v4;
        v36 = *(v0 + 224);
        v16 = *(v0 + 208);
        v17 = *(v0 + 176);
        v18 = *(v0 + 184);
        v19 = *(v0 + 160);
        v20 = *(v0 + 168);
        v21 = *(v0 + 144);
        v22 = *(v0 + 152);
        v23 = *(v0 + 120);
        v35 = *(v0 + 128);
        v24 = *(v0 + 104);
        v34 = *(v0 + 96);
        v33 = *(v0 + 112);
        sub_1000C522C(*(v0 + 88) + ((*(v0 + 272) + 32) & ~*(v0 + 272)) + *(v0 + 232) * v11, v16);
        v25 = *(v18 + 20);
        v26 = type metadata accessor for UUID();
        (*(*(v26 - 8) + 16))(v17, v16 + v25, v26);
        *(v17 + v20[5]) = 0;
        v27 = v17 + v20[6];
        *v27 = 0;
        *(v27 + 8) = 1;
        *(v17 + v20[7]) = 1;
        v28 = (v17 + v20[8]);
        *v28 = v33;
        v28[1] = v23;
        v29 = (v17 + v20[9]);
        *v29 = v34;
        v29[1] = v24;
        (*(v22 + 16))(v19, v35 + v36, v21);

        Dependency.wrappedValue.getter();
        (*(v22 + 8))(v19, v21);
        sub_1000080F8((v0 + 16), *(v0 + 40));
        v30 = swift_task_alloc();
        *(v0 + 256) = v30;
        *v30 = v0;
        v30[1] = sub_10026509C;
        v31 = *(v0 + 176);
        v32 = *(v0 + 136);

        return sub_100021548(v32, v31, 0, 0);
      }
    }
  }

  v14 = *(v0 + 208);
  swift_willThrow();
  sub_10026684C(v14, type metadata accessor for CustodianshipInfoRecord);

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_100265978(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[16] = a5;
  v6[17] = v5;
  v6[14] = a3;
  v6[15] = a4;
  v6[12] = a1;
  v6[13] = a2;
  v7 = sub_100005814(&qword_1003DB060, &qword_10033F990);
  v6[18] = v7;
  v6[19] = *(v7 - 8);
  v6[20] = swift_task_alloc();
  v8 = sub_100005814(&unk_1003D8B50, &unk_10033F600);
  v6[21] = v8;
  v6[22] = *(v8 - 8);
  v6[23] = swift_task_alloc();

  return _swift_task_switch(sub_100265AB4, 0, 0);
}

uint64_t sub_100265AB4()
{
  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[21];
  (*(v2 + 16))(v1, v0[17] + OBJC_IVAR____TtC13appleaccountd40CustodianIncompleteInvitationHealthCheck__reporter, v3);
  Dependency.wrappedValue.getter();
  (*(v2 + 8))(v1, v3);
  v0[24] = v0[10];
  v4 = kAAAnalyticsEventCustodianHealthCheckIncompleteInvitationResendInvitationAcceptanceMessage;
  v5 = objc_opt_self();
  v6 = v4;
  v7 = [v5 analyticsEventWithName:v6 altDSID:0 flowID:0];
  v0[25] = v7;
  v8 = v7;

  if (v8)
  {

    sub_100016034(0, &qword_1003D9250, NSString_ptr);
    v9 = v8;
    v10 = NSString.init(stringLiteral:)();
    [v9 setObject:0 forKeyedSubscript:v10];
  }

  sub_100257274(v6);
  v11 = v0[16];
  v12 = type metadata accessor for CustodianshipInfoRecord(0);
  v13 = objc_allocWithZone(AACustodianInvitationResponseContext);
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v15 = [v13 initWithCustodianID:isa didAccept:1];
  v0[26] = v15;

  v16 = String._bridgeToObjectiveC()();
  [v15 setTelemetryFlowID:v16];

  if (v11)
  {
    v17 = String._bridgeToObjectiveC()();
  }

  else
  {
    v17 = 0;
  }

  v19 = v0[19];
  v18 = v0[20];
  v21 = v0[17];
  v20 = v0[18];
  v22 = v0[12];
  [v15 setAltDSID:v17];

  (*(v19 + 16))(v18, v21 + OBJC_IVAR____TtC13appleaccountd40CustodianIncompleteInvitationHealthCheck__messager, v20);
  Dependency.wrappedValue.getter();
  (*(v19 + 8))(v18, v20);
  sub_1000080F8(v0 + 2, v0[5]);
  v23 = (v22 + *(v12 + 24));
  v25 = *v23;
  v24 = v23[1];
  v26 = swift_task_alloc();
  v0[27] = v26;
  *v26 = v0;
  v26[1] = sub_100265EF8;

  return sub_1002627F8(v15, v25, v24, 2, 0);
}

uint64_t sub_100265EF8()
{
  *(*v1 + 224) = v0;

  if (v0)
  {
    v2 = sub_1002660EC;
  }

  else
  {
    v2 = sub_10026600C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10026600C()
{
  v1 = *(v0 + 200);

  sub_10000839C((v0 + 16));
  if (v1)
  {
    v2 = *(v0 + 200);
    [v2 updateTaskResultWithError:0];
    swift_getObjectType();
    v3 = v2;
    sub_100246FA8(v2);
  }

  swift_unknownObjectRelease();

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1002660EC()
{
  sub_10000839C((v0 + 16));
  v1 = *(v0 + 200);
  swift_getErrorValue();
  sub_1002DEA80(*(v0 + 64), *(v0 + 72));
  if (v1)
  {
    v2 = *(v0 + 200);
    v3 = v2;
    swift_errorRetain();
    v4 = _convertErrorToNSError(_:)();
    [v3 updateTaskResultWithError:v4];

    swift_getObjectType();
    v5 = v3;
    sub_100246FA8(v2);
  }

  else
  {
    swift_errorRetain();
  }

  v6 = *(v0 + 200);
  swift_willThrow();
  swift_unknownObjectRelease();

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_100266248()
{
  v1 = OBJC_IVAR____TtC13appleaccountd40CustodianIncompleteInvitationHealthCheck__custodianStorage;
  v2 = sub_100005814(&unk_1003DA530, &qword_10033F460);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC13appleaccountd40CustodianIncompleteInvitationHealthCheck__messager;
  v4 = sub_100005814(&qword_1003DB060, &qword_10033F990);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC13appleaccountd40CustodianIncompleteInvitationHealthCheck__reporter;
  v6 = sub_100005814(&unk_1003D8B50, &unk_10033F600);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = OBJC_IVAR____TtC13appleaccountd40CustodianIncompleteInvitationHealthCheck__accountStore;
  v8 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  (*(*(v8 - 8) + 8))(v0 + v7, v8);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CustodianIncompleteInvitationHealthCheck(uint64_t a1)
{
  result = qword_1003E4D28;
  if (!qword_1003E4D28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100266428(uint64_t a1)
{
  sub_10000DAB8(319, &unk_1003DA690, &unk_1003D9840, &unk_10033EFE0);
  if (v1 <= 0x3F)
  {
    sub_10000DAB8(319, qword_1003E5670, &unk_1003DACC0, &unk_10033EFF0);
    if (v2 <= 0x3F)
    {
      sub_10000DAB8(319, qword_1003D8A50, &qword_1003D9AE0, &qword_10033E8A0);
      if (v3 <= 0x3F)
      {
        sub_10000DAB8(319, qword_1003DA6C0, &unk_1003DA2A0, &unk_10033BDA0);
        if (v4 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

uint64_t sub_1002665C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_100005814(&qword_1003DABF0, &qword_10033F8A0);
  __chkstk_darwin(v9 - 8);
  v11 = &v16 - v10;
  v12 = *v4;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v11, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = v12;
  v14[5] = a1;
  v14[6] = a2;
  v14[7] = a3;
  v14[8] = a4;

  sub_1000BCD5C(0, 0, v11, &unk_100347D88, v14);
}

uint64_t sub_10026670C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 72);
}

uint64_t sub_10026675C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1000082A8;

  return sub_10026335C(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_10026684C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1002668AC()
{
  v1 = sub_100005814(&qword_1003D9168, &qword_10033EC38);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_100266940(uint64_t a1, char a2)
{
  v5 = *(sub_100005814(&qword_1003D9168, &qword_10033EC38) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_10001D294(a1, a2 & 1, v6);
}

uint64_t sub_1002669CC()
{
  v1 = OBJC_IVAR____TtC13appleaccountd34CustodianSetupReadinessHealthCheck____lazy_storage___metadataController;
  if (*(v0 + OBJC_IVAR____TtC13appleaccountd34CustodianSetupReadinessHealthCheck____lazy_storage___metadataController))
  {
    v2 = *(v0 + OBJC_IVAR____TtC13appleaccountd34CustodianSetupReadinessHealthCheck____lazy_storage___metadataController);
  }

  else
  {
    type metadata accessor for CustodianMetadataController(0);
    v2 = swift_allocObject();
    sub_100005814(&unk_1003D98F0, &qword_10033E9C0);
    Dependency.init(dependencyId:config:)();
    v3 = OBJC_IVAR____TtC13appleaccountd27CustodianMetadataController_encoder;
    type metadata accessor for JSONEncoder();
    swift_allocObject();
    *(v2 + v3) = JSONEncoder.init()();
    v4 = OBJC_IVAR____TtC13appleaccountd27CustodianMetadataController_decoder;
    type metadata accessor for JSONDecoder();
    swift_allocObject();
    *(v2 + v4) = JSONDecoder.init()();
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t sub_100266AD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  return _swift_task_switch(sub_100266AF8, 0, 0);
}

uint64_t sub_100266AF8()
{

  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  v1[1] = sub_100266BCC;

  return (sub_100315244)();
}

uint64_t sub_100266BCC()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_100266D48;
  }

  else
  {
    v2 = sub_100266CE0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100266CE0()
{
  (*(v0 + 40))(0);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100266D48()
{
  v1 = v0[8];
  v2 = v0[5];
  swift_errorRetain();
  v2(v1);

  v3 = v0[1];

  return v3();
}

uint64_t sub_100266DD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[13] = a3;
  v4[14] = a4;
  v4[12] = a2;
  v5 = sub_100005814(&unk_1003D8B50, &unk_10033F600);
  v4[15] = v5;
  v4[16] = *(v5 - 8);
  v4[17] = swift_task_alloc();
  v6 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  v4[18] = v6;
  v4[19] = *(v6 - 8);
  v4[20] = swift_task_alloc();

  return _swift_task_switch(sub_100266F0C, 0, 0);
}

uint64_t sub_100266F0C()
{
  v49 = v0;
  v1 = *(v0[12] + OBJC_IVAR____TtC13appleaccountd34CustodianSetupReadinessHealthCheck_gracePeriodEvaluator);
  if (*(v1 + OBJC_IVAR____TtC13appleaccountd34ReadinessCheckGracePeriodEvaluator_user))
  {
    v2 = 0xD000000000000022;
  }

  else
  {
    v2 = 0xD00000000000001ELL;
  }

  if (*(v1 + OBJC_IVAR____TtC13appleaccountd34ReadinessCheckGracePeriodEvaluator_user))
  {
    v3 = "ownerSetupGracePeriodInSeconds";
  }

  else
  {
    v3 = "ck";
  }

  sub_1002A25A0(v2, v3 | 0x8000000000000000);
  v5 = v4;

  if (v5)
  {
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_100008D04(v6, qword_1003FAAB8);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "🔔 Custodian setup readiness health check feature is not enabled", v9, 2u);
    }

    v10 = v0[1];

    return v10();
  }

  else
  {
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_100008D04(v11, qword_1003FAAB8);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "🔔 Custodian setup readiness health check feature is enabled. Continuing to custodian setup readiness check", v14, 2u);
    }

    v16 = v0[19];
    v15 = v0[20];
    v17 = v0[18];
    v18 = v0[12];

    (*(v16 + 16))(v15, v18 + OBJC_IVAR____TtC13appleaccountd34CustodianSetupReadinessHealthCheck__accountStore, v17);
    Dependency.wrappedValue.getter();
    (*(v16 + 8))(v15, v17);
    v19 = [*(*sub_1000080F8(v0 + 2 v0[5]) + 16)];
    if (v19 && (v20 = v19, v21 = [v19 aa_altDSID], v20, v21))
    {
      v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v24 = v23;
    }

    else
    {
      v22 = 0;
      v24 = 0;
    }

    v0[21] = v24;
    v26 = v0[16];
    v25 = v0[17];
    v27 = v0[15];
    v28 = v0[12];
    sub_10000839C(v0 + 2);
    (*(v26 + 16))(v25, v28 + OBJC_IVAR____TtC13appleaccountd34CustodianSetupReadinessHealthCheck__reporter, v27);
    Dependency.wrappedValue.getter();
    (*(v26 + 8))(v25, v27);
    v0[22] = v0[10];
    v29 = kAAAnalyticsEventSetupFailSafeHealthCheckRun;
    v30 = kAAAnalyticsEventSetupFailSafeHealthCheckRun;

    if (v24)
    {

      v31 = String._bridgeToObjectiveC()();
    }

    else
    {
      v31 = 0;
    }

    v32 = objc_opt_self();
    v33 = String._bridgeToObjectiveC()();

    v34 = [v32 analyticsEventWithName:v29 altDSID:v31 flowID:v33];
    v0[23] = v34;

    if (v34)
    {
      v35 = objc_allocWithZone(NSNumber);
      v36 = v34;
      v37 = [v35 initWithInteger:13];
      sub_100016034(0, &qword_1003D9250, NSString_ptr);
      v38 = NSString.init(stringLiteral:)();
      [v36 setObject:v37 forKeyedSubscript:v38];
    }

    if (qword_1003D7F20 != -1)
    {
      swift_once();
    }

    v0[24] = sub_100008D04(v11, qword_1003FAA40);
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v48 = v42;
      *v41 = 136315138;
      *(v41 + 4) = sub_10021145C(0xD000000000000025, 0x80000001003329E0, &v48);
      _os_log_impl(&_mh_execute_header, v39, v40, "Performing: %s...", v41, 0xCu);
      sub_10000839C(v42);
    }

    sub_100257274(v29);
    v43 = swift_task_alloc();
    v0[25] = v43;
    *v43 = v0;
    v43[1] = sub_10026778C;
    v44 = v0[13];
    v45 = v0[14];
    v46 = v0[12];

    return sub_100267CC0(v43, v46, v44, v45, v22, v24);
  }
}

uint64_t sub_10026778C()
{
  *(*v1 + 208) = v0;

  if (v0)
  {
    v2 = sub_1002678A0;
  }

  else
  {
    v2 = sub_100267B20;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1002678A0()
{
  v15 = v0;
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v14 = v5;
    *v3 = 136315394;
    *(v3 + 4) = sub_10021145C(0xD000000000000025, 0x80000001003329E0, &v14);
    *(v3 + 12) = 2112;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 14) = v6;
    *v4 = v6;
    _os_log_impl(&_mh_execute_header, v1, v2, "❌ %s - failed with error: %@", v3, 0x16u);
    sub_100008D3C(v4, &unk_1003D9140, &qword_10033E640);

    sub_10000839C(v5);
  }

  v7 = v0[23];
  swift_getErrorValue();
  sub_1002DEA80(v0[8], v0[9]);
  if (v7)
  {
    v8 = v0[23];
    v9 = v8;
    swift_errorRetain();
    v10 = _convertErrorToNSError(_:)();
    [v9 updateTaskResultWithError:v10];

    swift_getObjectType();
    sub_100246FA8(v8);
  }

  else
  {
    swift_errorRetain();
  }

  v11 = v0[23];
  swift_willThrow();

  swift_unknownObjectRelease();

  v12 = v0[1];

  return v12();
}

uint64_t sub_100267B20(uint64_t a1)
{
  v11 = v1;
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v10 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_10021145C(0xD000000000000025, 0x80000001003329E0, &v10);
    _os_log_impl(&_mh_execute_header, v2, v3, "✅ %s - successfully completed!", v4, 0xCu);
    sub_10000839C(v5);
  }

  v6 = *(v1 + 184);
  if (v6)
  {
    [*(v1 + 184) updateTaskResultWithError:0];
    swift_getObjectType();
    v7 = v6;
    sub_100246FA8(v6);
  }

  swift_unknownObjectRelease();

  v8 = *(v1 + 8);

  return v8();
}

uint64_t sub_100267CC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[12] = a5;
  v6[13] = a6;
  v6[10] = a3;
  v6[11] = a4;
  v6[9] = a2;
  v6[14] = *(type metadata accessor for CustodianshipInfoRecord(0) - 8);
  v6[15] = swift_task_alloc();
  v7 = sub_100005814(&unk_1003DA530, &qword_10033F460);
  v6[16] = v7;
  v6[17] = *(v7 - 8);
  v6[18] = swift_task_alloc();

  return _swift_task_switch(sub_100267DEC, 0, 0);
}

uint64_t sub_100267DEC()
{
  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[16];
  (*(v2 + 16))(v1, v0[9] + OBJC_IVAR____TtC13appleaccountd34CustodianSetupReadinessHealthCheck__custodianStorage, v3);
  Dependency.wrappedValue.getter();
  (*(v2 + 8))(v1, v3);
  v0[7] = *sub_1000080F8(v0 + 2, v0[5]);
  v4 = swift_task_alloc();
  v0[19] = v4;
  *(v4 + 16) = v0 + 7;
  v5 = swift_task_alloc();
  v0[20] = v5;
  v6 = sub_100005814(&unk_1003E4DD0, &qword_10033F468);
  *v5 = v0;
  v5[1] = sub_100267F60;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 8, 0, 0, 0xD000000000000018, 0x800000010032D5E0, sub_1000709F4, v4, v6);
}

uint64_t sub_100267F60()
{
  *(*v1 + 168) = v0;

  if (v0)
  {
    v2 = sub_1002681D0;
  }

  else
  {

    v2 = sub_10026807C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10026807C()
{
  v1 = v0[8];
  v0[22] = v1;
  result = sub_10000839C(v0 + 2);
  v3 = *(v1 + 16);
  v0[23] = v3;
  if (v3)
  {
    v4 = v0[14];
    v0[24] = 0;
    v5 = v0[22];
    if (*(v5 + 16))
    {
      sub_10028338C(v5 + ((*(v4 + 80) + 32) & ~*(v4 + 80)), v0[15], type metadata accessor for CustodianshipInfoRecord);
      v6 = swift_task_alloc();
      v0[25] = v6;
      *v6 = v0;
      v6[1] = sub_100268250;
      v7 = v0[15];
      v8 = v0[12];
      v9 = v0[13];
      v10 = v0[10];
      v11 = v0[11];

      return sub_100268568(v7, v10, v11, v8, v9);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {

    v12 = v0[1];

    return v12();
  }

  return result;
}

uint64_t sub_1002681D0()
{

  sub_10000839C((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100268250()
{
  v2 = *v1;
  *(*v1 + 208) = v0;

  sub_1002833F4(*(v2 + 120), type metadata accessor for CustodianshipInfoRecord);
  if (v0)
  {

    v3 = sub_1002684F8;
  }

  else
  {
    v3 = sub_1002683A8;
  }

  return _swift_task_switch(v3, 0, 0);
}

void sub_1002683A8()
{
  v1 = v0[24] + 1;
  if (v1 == v0[23])
  {

    v2 = v0[1];

    v2();
  }

  else
  {
    v0[24] = v1;
    v3 = v0[22];
    if (v1 >= *(v3 + 16))
    {
      __break(1u);
    }

    else
    {
      sub_10028338C(v3 + ((*(v0[14] + 80) + 32) & ~*(v0[14] + 80)) + *(v0[14] + 72) * v1, v0[15], type metadata accessor for CustodianshipInfoRecord);
      v4 = swift_task_alloc();
      v0[25] = v4;
      *v4 = v0;
      v4[1] = sub_100268250;
      v5 = v0[15];
      v6 = v0[12];
      v7 = v0[13];
      v8 = v0[10];
      v9 = v0[11];

      sub_100268568(v5, v8, v9, v6, v7);
    }
  }
}

uint64_t sub_1002684F8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100268568(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[21] = a5;
  v6[22] = v5;
  v6[19] = a3;
  v6[20] = a4;
  v6[17] = a1;
  v6[18] = a2;
  v7 = sub_100005814(&unk_1003D8B50, &unk_10033F600);
  v6[23] = v7;
  v6[24] = *(v7 - 8);
  v6[25] = swift_task_alloc();
  v6[26] = type metadata accessor for CustodianshipInfoRecord(0);
  v6[27] = swift_task_alloc();
  v8 = sub_100005814(&qword_1003D8D40, &qword_10033E9E0);
  v6[28] = v8;
  v6[29] = *(v8 - 8);
  v6[30] = swift_task_alloc();

  return _swift_task_switch(sub_1002686D4, 0, 0);
}

uint64_t sub_1002686D4()
{
  v2 = *(v0 + 232);
  v1 = *(v0 + 240);
  v3 = *(v0 + 224);
  v4 = *(v0 + 208);
  v5 = *(v0 + 136);
  v6 = sub_1002669CC();
  *(v0 + 248) = v6;
  v7 = *(v4 + 20);
  *(v0 + 336) = v7;
  v8 = sub_100015A98(1, v5 + v7, 0x6465527075746573, 0xEF6574617453736ELL, 0);
  v10 = v9;
  *(v0 + 256) = v9;
  (*(v2 + 16))(v1, v6 + OBJC_IVAR____TtC13appleaccountd27CustodianMetadataController__store, v3);
  Dependency.wrappedValue.getter();
  (*(v2 + 8))(v1, v3);
  sub_1000080F8((v0 + 16), *(v0 + 40));
  v11 = swift_task_alloc();
  *(v0 + 264) = v11;
  *v11 = v0;
  v11[1] = sub_100268844;

  return sub_100013C50(v0 + 56, v8, v10);
}

uint64_t sub_100268844()
{
  *(*v1 + 272) = v0;

  if (v0)
  {
    v2 = sub_10026933C;
  }

  else
  {
    v2 = sub_100268978;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100268978()
{
  v63 = v0;
  sub_100005814(&qword_1003D87C8, qword_100344800);
  sub_100016034(0, &qword_1003E4F00, NSData_ptr);
  if ((swift_dynamicCast() & 1) == 0)
  {
    *(v0 + 112) = 0;
  }

  sub_10000839C((v0 + 16));
  v1 = *(v0 + 112);
  v2 = *(v0 + 272);
  if (v1)
  {
    v3 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v4;
    sub_100015D6C(v3, v4);
    sub_100282280();
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    if (v2)
    {

      sub_100012324(v3, v5);

      sub_100012324(v3, v5);
      v6 = 240;
    }

    else
    {
      sub_100012324(v3, v5);

      sub_100012324(v3, v5);
      v6 = *(v0 + 340);
    }

    v2 = 0;
    if (v6 <= 0xEF && (v6 & 0xC0) != 0x40)
    {
      if (qword_1003D7F48 != -1)
      {
        swift_once();
      }

      v7 = *(v0 + 216);
      v8 = *(v0 + 136);
      v9 = type metadata accessor for Logger();
      sub_100008D04(v9, qword_1003FAAB8);
      sub_10028338C(v8, v7, type metadata accessor for CustodianshipInfoRecord);
      v10 = Logger.logObject.getter();
      v11 = static os_log_type_t.default.getter();
      v12 = os_log_type_enabled(v10, v11);
      v13 = *(v0 + 216);
      if (v12)
      {
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        v62[0] = v15;
        *v14 = 136315138;
        type metadata accessor for UUID();
        sub_100282F14(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v16 = dispatch thunk of CustomStringConvertible.description.getter();
        v18 = v17;
        sub_1002833F4(v13, type metadata accessor for CustodianshipInfoRecord);
        v19 = sub_10021145C(v16, v18, v62);

        *(v14 + 4) = v19;
        _os_log_impl(&_mh_execute_header, v10, v11, "Custodian setup readiness check was performed previously for custodianID: %s", v14, 0xCu);
        sub_10000839C(v15);
      }

      else
      {

        sub_1002833F4(v13, type metadata accessor for CustodianshipInfoRecord);
      }

      v61 = *(v0 + 8);
LABEL_35:

      return v61();
    }
  }

  else
  {
  }

  v21 = *(v0 + 192);
  v20 = *(v0 + 200);
  v22 = *(v0 + 184);
  v23 = *(v0 + 168);
  (*(v21 + 16))(v20, *(v0 + 176) + OBJC_IVAR____TtC13appleaccountd34CustodianSetupReadinessHealthCheck__reporter, v22);
  Dependency.wrappedValue.getter();
  (*(v21 + 8))(v20, v22);
  *(v0 + 280) = *(v0 + 120);
  v24 = kAAAnalyticsEventSetupFailSafe;
  _StringGuts.grow(_:)(21);

  v62[0] = 0xD000000000000013;
  v62[1] = 0x8000000100332A20;
  type metadata accessor for UUID();
  sub_100282F14(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v25._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v25);

  *(v0 + 288) = 0xD000000000000013;
  *(v0 + 296) = 0x8000000100332A20;
  v26 = v24;

  if (v23)
  {

    v27 = String._bridgeToObjectiveC()();
  }

  else
  {
    v27 = 0;
  }

  v28 = objc_opt_self();
  v29 = String._bridgeToObjectiveC()();

  v30 = [v28 analyticsEventWithName:v24 altDSID:v27 flowID:v29];
  *(v0 + 304) = v30;

  if (v30)
  {
    v31 = objc_allocWithZone(NSNumber);
    v32 = v30;
    v33 = [v31 initWithInteger:13];
    sub_100016034(0, &qword_1003D9250, NSString_ptr);
    v34 = NSString.init(stringLiteral:)();
    [v32 setObject:v33 forKeyedSubscript:v34];
  }

  if (qword_1003D7F20 != -1)
  {
    swift_once();
  }

  v35 = type metadata accessor for Logger();
  *(v0 + 312) = sub_100008D04(v35, qword_1003FAA40);

  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v62[0] = v39;
    *v38 = 136315138;
    *(v38 + 4) = sub_10021145C(0xD000000000000013, 0x8000000100332A20, v62);
    _os_log_impl(&_mh_execute_header, v36, v37, "Performing: %s...", v38, 0xCu);
    sub_10000839C(v39);
  }

  sub_100257274(v24);
  if (v2)
  {

    swift_errorRetain();
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v40, v41))
    {
      v43 = *(v0 + 288);
      v42 = *(v0 + 296);
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v62[0] = v46;
      *v44 = 136315394;
      *(v44 + 4) = sub_10021145C(v43, v42, v62);
      *(v44 + 12) = 2112;
      swift_errorRetain();
      v47 = _swift_stdlib_bridgeErrorToNSError();
      *(v44 + 14) = v47;
      *v45 = v47;
      _os_log_impl(&_mh_execute_header, v40, v41, "❌ %s - failed with error: %@", v44, 0x16u);
      sub_100008D3C(v45, &unk_1003D9140, &qword_10033E640);

      sub_10000839C(v46);
    }

    v48 = *(v0 + 304);
    swift_getErrorValue();
    sub_1002DEA80(*(v0 + 96), *(v0 + 104));
    if (v48)
    {
      v49 = *(v0 + 304);
      v50 = v49;
      swift_errorRetain();
      v51 = _convertErrorToNSError(_:)();
      [v50 updateTaskResultWithError:v51];

      swift_getObjectType();
      sub_100246FA8(v49);
    }

    else
    {
      swift_errorRetain();
    }

    v60 = *(v0 + 304);
    swift_willThrow();

    swift_unknownObjectRelease();

    v61 = *(v0 + 8);
    goto LABEL_35;
  }

  v52 = swift_task_alloc();
  *(v0 + 320) = v52;
  *v52 = v0;
  v52[1] = sub_1002699F0;
  v54 = *(v0 + 168);
  v53 = *(v0 + 176);
  v55 = *(v0 + 152);
  v56 = *(v0 + 160);
  v57 = *(v0 + 136);
  v58 = *(v0 + 144);

  return sub_10026AE80(v52, v57, v53, v58, v55, v56, v54);
}

uint64_t sub_10026933C()
{
  v30 = v0;
  sub_10000839C(v0 + 2);

  v2 = v0[24];
  v1 = v0[25];
  v3 = v0[23];
  v4 = v0[21];
  (*(v2 + 16))(v1, v0[22] + OBJC_IVAR____TtC13appleaccountd34CustodianSetupReadinessHealthCheck__reporter, v3);
  Dependency.wrappedValue.getter();
  (*(v2 + 8))(v1, v3);
  v0[35] = v0[15];
  v5 = kAAAnalyticsEventSetupFailSafe;
  _StringGuts.grow(_:)(21);

  v29[0] = 0xD000000000000013;
  v29[1] = 0x8000000100332A20;
  type metadata accessor for UUID();
  sub_100282F14(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v6._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v6);

  v0[36] = 0xD000000000000013;
  v0[37] = 0x8000000100332A20;
  v7 = v5;

  if (v4)
  {

    v8 = String._bridgeToObjectiveC()();
  }

  else
  {
    v8 = 0;
  }

  v9 = objc_opt_self();
  v10 = String._bridgeToObjectiveC()();

  v11 = [v9 analyticsEventWithName:v5 altDSID:v8 flowID:v10];
  v0[38] = v11;

  if (v11)
  {
    v12 = objc_allocWithZone(NSNumber);
    v13 = v11;
    v14 = [v12 initWithInteger:13];
    sub_100016034(0, &qword_1003D9250, NSString_ptr);
    v15 = NSString.init(stringLiteral:)();
    [v13 setObject:v14 forKeyedSubscript:v15];
  }

  if (qword_1003D7F20 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  v0[39] = sub_100008D04(v16, qword_1003FAA40);

  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v29[0] = v20;
    *v19 = 136315138;
    *(v19 + 4) = sub_10021145C(0xD000000000000013, 0x8000000100332A20, v29);
    _os_log_impl(&_mh_execute_header, v17, v18, "Performing: %s...", v19, 0xCu);
    sub_10000839C(v20);
  }

  sub_100257274(v5);
  v21 = swift_task_alloc();
  v0[40] = v21;
  *v21 = v0;
  v21[1] = sub_1002699F0;
  v23 = v0[21];
  v22 = v0[22];
  v24 = v0[19];
  v25 = v0[20];
  v26 = v0[17];
  v27 = v0[18];

  return sub_10026AE80(v21, v26, v22, v27, v24, v25, v23);
}

uint64_t sub_1002699F0()
{
  *(*v1 + 328) = v0;

  if (v0)
  {
    v2 = sub_100269B04;
  }

  else
  {
    v2 = sub_100269DA0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100269B04()
{
  v17 = v0;

  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v4 = v0[36];
    v3 = v0[37];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v16 = v7;
    *v5 = 136315394;
    *(v5 + 4) = sub_10021145C(v4, v3, &v16);
    *(v5 + 12) = 2112;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 14) = v8;
    *v6 = v8;
    _os_log_impl(&_mh_execute_header, v1, v2, "❌ %s - failed with error: %@", v5, 0x16u);
    sub_100008D3C(v6, &unk_1003D9140, &qword_10033E640);

    sub_10000839C(v7);
  }

  v9 = v0[38];
  swift_getErrorValue();
  sub_1002DEA80(v0[12], v0[13]);
  if (v9)
  {
    v10 = v0[38];
    v11 = v10;
    swift_errorRetain();
    v12 = _convertErrorToNSError(_:)();
    [v11 updateTaskResultWithError:v12];

    swift_getObjectType();
    sub_100246FA8(v10);
  }

  else
  {
    swift_errorRetain();
  }

  v13 = v0[38];
  swift_willThrow();

  swift_unknownObjectRelease();

  v14 = v0[1];

  return v14();
}

uint64_t sub_100269DA0()
{
  v12 = v0;

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v4 = *(v0 + 288);
    v3 = *(v0 + 296);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_10021145C(v4, v3, &v11);
    _os_log_impl(&_mh_execute_header, v1, v2, "✅ %s - successfully completed!", v5, 0xCu);
    sub_10000839C(v6);
  }

  v7 = *(v0 + 304);
  if (v7)
  {
    [*(v0 + 304) updateTaskResultWithError:0];
    swift_getObjectType();
    v8 = v7;
    sub_100246FA8(v7);
  }

  swift_unknownObjectRelease();

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_100269F5C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 40) = a5;
  *(v6 + 48) = a6;
  *(v6 + 120) = a4;
  *(v6 + 24) = a2;
  *(v6 + 32) = a3;
  *(v6 + 16) = a1;
  type metadata accessor for CustodianshipInfoRecord(0);
  *(v6 + 56) = swift_task_alloc();
  v7 = type metadata accessor for OSSignpostID();
  *(v6 + 64) = v7;
  *(v6 + 72) = *(v7 - 8);
  *(v6 + 80) = swift_task_alloc();

  return _swift_task_switch(sub_10026A054, 0, 0);
}

uint64_t sub_10026A054()
{
  v15 = v0;
  type metadata accessor for OSTransaction();
  swift_allocObject();
  v0[11] = OSTransaction.init(name:)();
  sub_100016034(0, &qword_1003E9000, OS_os_log_ptr);

  v1 = OS_os_log.init(subsystem:category:)();
  v0[12] = v1;
  v2 = v1;
  OSSignpostID.init(log:)();
  static os_signpost_type_t.begin.getter();
  v3 = static OS_os_log.default.getter();
  os_signpost(_:dso:log:name:signpostID:)();

  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v14 = v6;
    *v5 = 136315138;
    v7 = StaticString.description.getter();
    v9 = sub_10021145C(v7, v8, &v14);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v2, v4, "🏁 [BEGIN] %s", v5, 0xCu);
    sub_10000839C(v6);
  }

  v13 = (v0[5] + *v0[5]);
  v10 = swift_task_alloc();
  v0[13] = v10;
  *v10 = v0;
  v10[1] = sub_10026A2F8;
  v11 = v0[7];

  return v13(v11);
}

uint64_t sub_10026A2F8()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_100283AF4;
  }

  else
  {
    v2 = sub_10026A40C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10026A40C()
{
  v16 = v0;
  v1 = v0[12];
  static os_signpost_type_t.end.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  v2 = static os_log_type_t.default.getter();
  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[12];
  v5 = v0[9];
  v6 = v0[8];
  if (v3)
  {
    v14 = v0[10];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v15 = v8;
    *v7 = 136315138;
    v9 = StaticString.description.getter();
    v11 = sub_10021145C(v9, v10, &v15);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v4, v2, "✅ [END] %s", v7, 0xCu);
    sub_10000839C(v8);

    (*(v5 + 8))(v14, v6);
  }

  else
  {
    (*(v5 + 8))(v0[10], v0[8]);
  }

  sub_100283458(v0[7], v0[2], type metadata accessor for CustodianshipInfoRecord);
  OSTransaction.complete()();

  v12 = v0[1];

  return v12();
}

uint64_t sub_10026A614(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 40) = a5;
  *(v6 + 48) = a6;
  *(v6 + 120) = a4;
  *(v6 + 24) = a2;
  *(v6 + 32) = a3;
  *(v6 + 16) = a1;
  type metadata accessor for CustodianRecord(0);
  *(v6 + 56) = swift_task_alloc();
  v7 = type metadata accessor for OSSignpostID();
  *(v6 + 64) = v7;
  *(v6 + 72) = *(v7 - 8);
  *(v6 + 80) = swift_task_alloc();

  return _swift_task_switch(sub_10026A70C, 0, 0);
}

uint64_t sub_10026A70C()
{
  v15 = v0;
  type metadata accessor for OSTransaction();
  swift_allocObject();
  v0[11] = OSTransaction.init(name:)();
  sub_100016034(0, &qword_1003E9000, OS_os_log_ptr);

  v1 = OS_os_log.init(subsystem:category:)();
  v0[12] = v1;
  v2 = v1;
  OSSignpostID.init(log:)();
  static os_signpost_type_t.begin.getter();
  v3 = static OS_os_log.default.getter();
  os_signpost(_:dso:log:name:signpostID:)();

  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v14 = v6;
    *v5 = 136315138;
    v7 = StaticString.description.getter();
    v9 = sub_10021145C(v7, v8, &v14);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v2, v4, "🏁 [BEGIN] %s", v5, 0xCu);
    sub_10000839C(v6);
  }

  v13 = (v0[5] + *v0[5]);
  v10 = swift_task_alloc();
  v0[13] = v10;
  *v10 = v0;
  v10[1] = sub_10026A9B0;
  v11 = v0[7];

  return v13(v11);
}

uint64_t sub_10026A9B0()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_10026ACCC;
  }

  else
  {
    v2 = sub_10026AAC4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10026AAC4()
{
  v16 = v0;
  v1 = v0[12];
  static os_signpost_type_t.end.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  v2 = static os_log_type_t.default.getter();
  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[12];
  v5 = v0[9];
  v6 = v0[8];
  if (v3)
  {
    v14 = v0[10];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v15 = v8;
    *v7 = 136315138;
    v9 = StaticString.description.getter();
    v11 = sub_10021145C(v9, v10, &v15);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v4, v2, "✅ [END] %s", v7, 0xCu);
    sub_10000839C(v8);

    (*(v5 + 8))(v14, v6);
  }

  else
  {
    (*(v5 + 8))(v0[10], v0[8]);
  }

  sub_100283458(v0[7], v0[2], type metadata accessor for CustodianRecord);
  OSTransaction.complete()();

  v12 = v0[1];

  return v12();
}

uint64_t sub_10026ACCC()
{
  v1 = v0[12];
  static os_signpost_type_t.end.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  v2 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[12];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v3, v2, "❌ [END] %@", v4, 0xCu);
    sub_100008D3C(v5, &unk_1003D9140, &qword_10033E640);
  }

  v7 = v0[12];
  v9 = v0[9];
  v8 = v0[10];
  v10 = v0[8];
  swift_willThrow();

  (*(v9 + 8))(v8, v10);
  OSTransaction.complete()();

  v11 = v0[1];

  return v11();
}

uint64_t sub_10026AE80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[9] = a6;
  v7[10] = a7;
  v7[7] = a4;
  v7[8] = a5;
  v7[5] = a2;
  v7[6] = a3;
  v8 = sub_100005814(&unk_1003D8B50, &unk_10033F600);
  v7[11] = v8;
  v7[12] = *(v8 - 8);
  v7[13] = swift_task_alloc();
  v7[14] = type metadata accessor for CustodianshipInfoRecord(0);
  v7[15] = swift_task_alloc();
  v7[16] = swift_task_alloc();
  v7[17] = swift_task_alloc();
  v7[18] = swift_task_alloc();
  v7[19] = swift_task_alloc();
  v7[20] = swift_task_alloc();

  return _swift_task_switch(sub_10026AFC0, 0, 0);
}

uint64_t sub_10026AFC0()
{
  v22 = v0;
  if (qword_1003D7F48 != -1)
  {
    swift_once();
  }

  v1 = v0[20];
  v2 = v0[5];
  v3 = type metadata accessor for Logger();
  v0[21] = sub_100008D04(v3, qword_1003FAAB8);
  sub_10028338C(v2, v1, type metadata accessor for CustodianshipInfoRecord);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[20];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v21 = v9;
    *v8 = 136315138;
    type metadata accessor for UUID();
    sub_100282F14(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v10 = dispatch thunk of CustomStringConvertible.description.getter();
    v12 = v11;
    sub_1002833F4(v7, type metadata accessor for CustodianshipInfoRecord);
    v13 = sub_10021145C(v10, v12, &v21);

    *(v8 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v4, v5, "Custodian determining readiness state for custodianID: %s", v8, 0xCu);
    sub_10000839C(v9);
  }

  else
  {

    sub_1002833F4(v7, type metadata accessor for CustodianshipInfoRecord);
  }

  v14 = swift_task_alloc();
  v0[22] = v14;
  *v14 = v0;
  v14[1] = sub_10026B250;
  v15 = v0[9];
  v16 = v0[10];
  v17 = v0[7];
  v18 = v0[8];
  v19 = v0[5];

  return sub_10026CBB4(v19, v17, v18, v15, v16);
}

uint64_t sub_10026B250(char a1)
{
  v3 = *v2;
  *(v3 + 240) = a1;
  *(v3 + 184) = v1;

  if (v1)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return _swift_task_switch(sub_10026B3F0, 0, 0);
  }
}

uint64_t sub_10026B3F0()
{
  v128 = v0;
  v1 = *(v0 + 240);
  v2 = v1 >> 6;
  v3 = *(v0 + 40);
  if (v1 >> 6 <= 1)
  {
    if (!v2)
    {
      sub_10028338C(v3, *(v0 + 152), type metadata accessor for CustodianshipInfoRecord);

      v4 = Logger.logObject.getter();
      v5 = static os_log_type_t.default.getter();

      v6 = os_log_type_enabled(v4, v5);
      v7 = *(v0 + 152);
      if (v6)
      {
        if (v1)
        {
          v8 = 0x6465747065636361;
        }

        else
        {
          v8 = 0x64656E696C636564;
        }

        v9 = swift_slowAlloc();
        v127[0] = swift_slowAlloc();
        *v9 = 136315394;
        v10 = sub_10021145C(v8, 0xE800000000000000, v127);

        *(v9 + 4) = v10;
        *(v9 + 12) = 2080;
        type metadata accessor for UUID();
        sub_100282F14(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v11 = dispatch thunk of CustomStringConvertible.description.getter();
        v13 = v12;
        sub_1002833F4(v7, type metadata accessor for CustodianshipInfoRecord);
        v14 = sub_10021145C(v11, v13, v127);

        *(v9 + 14) = v14;
        _os_log_impl(&_mh_execute_header, v4, v5, "✅ Custodian setup is in completed state: %s for custodianID: %s", v9, 0x16u);
        swift_arrayDestroy();

        if ((v1 & 1) == 0)
        {
          goto LABEL_43;
        }

        goto LABEL_17;
      }

      sub_1002833F4(v7, type metadata accessor for CustodianshipInfoRecord);
      if (v1)
      {
LABEL_17:
        v46 = kAAAnalyticsEventSetupFailSafeReady;
        if (*(v0 + 80))
        {
          v47 = kAAAnalyticsEventSetupFailSafeReady;
          v48 = String._bridgeToObjectiveC()();
        }

        else
        {
          v79 = kAAAnalyticsEventSetupFailSafeReady;
          v48 = 0;
        }

        v80 = objc_opt_self();
        v81 = String._bridgeToObjectiveC()();
        v82 = [v80 analyticsEventWithName:v46 altDSID:v48 flowID:v81];
        v15 = v82;

        if (v15)
        {

          v83 = objc_allocWithZone(NSNumber);
          v84 = v15;
          v85 = [v83 initWithInteger:13];
          sub_100016034(0, &qword_1003D9250, NSString_ptr);
          v86 = NSString.init(stringLiteral:)();
          [v84 setObject:v85 forKeyedSubscript:v86];

          [v84 updateTaskResultWithError:0];
        }

        v88 = *(v0 + 96);
        v87 = *(v0 + 104);
        v89 = *(v0 + 88);
        (*(v88 + 16))(v87, *(v0 + 48) + OBJC_IVAR____TtC13appleaccountd34CustodianSetupReadinessHealthCheck__reporter, v89);
        Dependency.wrappedValue.getter();
        (*(v88 + 8))(v87, v89);
        swift_getObjectType();
        sub_100246FA8(v82);
        swift_unknownObjectRelease();
        goto LABEL_42;
      }

LABEL_43:
      sub_10028338C(*(v0 + 40), *(v0 + 120), type metadata accessor for CustodianshipInfoRecord);
      v90 = Logger.logObject.getter();
      v91 = static os_log_type_t.default.getter();
      v92 = os_log_type_enabled(v90, v91);
      v93 = *(v0 + 120);
      if (v92)
      {
        v94 = swift_slowAlloc();
        v95 = swift_slowAlloc();
        v127[0] = v95;
        *v94 = 136315138;
        type metadata accessor for UUID();
        sub_100282F14(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v96 = dispatch thunk of CustomStringConvertible.description.getter();
        v98 = v97;
        sub_1002833F4(v93, type metadata accessor for CustodianshipInfoRecord);
        v99 = sub_10021145C(v96, v98, v127);

        *(v94 + 4) = v99;
        _os_log_impl(&_mh_execute_header, v90, v91, "Custodian storing that setup readiness check was performed for custodianID: %s", v94, 0xCu);
        sub_10000839C(v95);
      }

      else
      {

        sub_1002833F4(v93, type metadata accessor for CustodianshipInfoRecord);
      }

      v100 = *(v0 + 112);
      v101 = *(v0 + 40);
      *(v0 + 216) = sub_1002669CC();
      v102 = *(v100 + 20);
      v103 = swift_task_alloc();
      *(v0 + 224) = v103;
      *v103 = v0;
      v103[1] = sub_10026C898;
      v104 = *(v0 + 240);

      return sub_100014ED8(v104, 1, v101 + v102);
    }

    sub_10028338C(v3, *(v0 + 144), type metadata accessor for CustodianshipInfoRecord);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = *(v0 + 144);
      v28 = *(v0 + 240) & 0x3F;
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v127[0] = v30;
      *v29 = 134218242;
      *(v29 + 4) = v28;
      *(v29 + 12) = 2080;
      type metadata accessor for UUID();
      sub_100282F14(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v31 = dispatch thunk of CustomStringConvertible.description.getter();
      v33 = v32;
      sub_1002833F4(v27, type metadata accessor for CustodianshipInfoRecord);
      v34 = sub_10021145C(v31, v33, v127);

      *(v29 + 14) = v34;
      _os_log_impl(&_mh_execute_header, v25, v26, "🟡 Custodian setup is in pending state: %ld for custodianID: %s", v29, 0x16u);
      sub_10000839C(v30);
    }

    else
    {
      v50 = *(v0 + 144);

      sub_1002833F4(v50, type metadata accessor for CustodianshipInfoRecord);
    }

    v51 = kAAAnalyticsEventSetupFailSafePending;
    if (*(v0 + 80))
    {
      v52 = kAAAnalyticsEventSetupFailSafePending;
      v53 = String._bridgeToObjectiveC()();
    }

    else
    {
      v60 = kAAAnalyticsEventSetupFailSafePending;
      v53 = 0;
    }

    v61 = objc_opt_self();
    v62 = String._bridgeToObjectiveC()();
    v63 = [v61 analyticsEventWithName:v51 altDSID:v53 flowID:v62];

    if (v63)
    {
      v64 = *(v0 + 240);

      v65 = objc_allocWithZone(NSNumber);
      v66 = v63;
      v67 = [v65 initWithInteger:13];
      sub_100016034(0, &qword_1003D9250, NSString_ptr);
      v68 = NSString.init(stringLiteral:)();
      [v66 setObject:v67 forKeyedSubscript:v68];

      v69 = v66;
      if (sub_1000C00B4(1, 3, v64))
      {
        v70 = _convertErrorToNSError(_:)();
      }

      else
      {
        v70 = 0;
      }

      [v69 updateTaskResultWithError:{v70, v127[0]}];
    }

    v76 = *(v0 + 96);
    v75 = *(v0 + 104);
    v77 = *(v0 + 88);
    (*(v76 + 16))(v75, *(v0 + 48) + OBJC_IVAR____TtC13appleaccountd34CustodianSetupReadinessHealthCheck__reporter, v77);
    Dependency.wrappedValue.getter();
    (*(v76 + 8))(v75, v77);
    swift_getObjectType();
    sub_100246FA8(v63);
    swift_unknownObjectRelease();

    v59 = *(v0 + 8);
    goto LABEL_35;
  }

  if (v2 == 2)
  {
    sub_10028338C(v3, *(v0 + 136), type metadata accessor for CustodianshipInfoRecord);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = *(v0 + 136);
      v18 = *(v0 + 240) & 0x3F;
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v127[0] = v20;
      *v19 = 134218242;
      *(v19 + 4) = v18;
      *(v19 + 12) = 2080;
      type metadata accessor for UUID();
      sub_100282F14(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v21 = dispatch thunk of CustomStringConvertible.description.getter();
      v23 = v22;
      sub_1002833F4(v17, type metadata accessor for CustodianshipInfoRecord);
      v24 = sub_10021145C(v21, v23, v127);

      *(v19 + 14) = v24;
      _os_log_impl(&_mh_execute_header, v15, v16, "❌ Custodian setup is in torn-down-by-other state: %ld for custodianID: %s", v19, 0x16u);
      sub_10000839C(v20);

LABEL_42:

      goto LABEL_43;
    }

    v49 = *(v0 + 136);

    sub_1002833F4(v49, type metadata accessor for CustodianshipInfoRecord);
    goto LABEL_43;
  }

  v35 = v1 & 0x3F;
  sub_10028338C(v3, *(v0 + 128), type metadata accessor for CustodianshipInfoRecord);
  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.default.getter();
  v38 = os_log_type_enabled(v36, v37);
  v39 = *(v0 + 128);
  if (v38)
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v127[0] = v41;
    *v40 = 134218242;
    *(v40 + 4) = v35;
    *(v40 + 12) = 2080;
    type metadata accessor for UUID();
    sub_100282F14(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v42 = dispatch thunk of CustomStringConvertible.description.getter();
    v44 = v43;
    sub_1002833F4(v39, type metadata accessor for CustodianshipInfoRecord);
    v45 = sub_10021145C(v42, v44, v127);

    *(v40 + 14) = v45;
    _os_log_impl(&_mh_execute_header, v36, v37, "❌ Custodian setup is in failed state: %ld for custodianID: %s", v40, 0x16u);
    sub_10000839C(v41);
  }

  else
  {

    sub_1002833F4(v39, type metadata accessor for CustodianshipInfoRecord);
  }

  v54 = *(v0 + 184);
  v55 = *(v0 + 40);
  v56 = sub_100282854();
  v57 = v56;
  v58 = sub_100276B54(v55, v56);
  if (v54)
  {

    v59 = *(v0 + 8);
LABEL_35:

    return v59();
  }

  v71 = v58;
  v72 = kAAAnalyticsEventSetupFailSafeGracePeriodExpired;
  if (*(v0 + 80))
  {
    v73 = kAAAnalyticsEventSetupFailSafeGracePeriodExpired;
    v74 = String._bridgeToObjectiveC()();
  }

  else
  {
    v105 = kAAAnalyticsEventSetupFailSafeGracePeriodExpired;
    v74 = 0;
  }

  v106 = objc_opt_self();
  v107 = String._bridgeToObjectiveC()();
  v108 = [v106 analyticsEventWithName:v72 altDSID:v74 flowID:v107];
  *(v0 + 192) = v108;
  v109 = v108;

  if (v109)
  {
    v110 = *(v0 + 240);

    v111 = objc_allocWithZone(NSNumber);
    v112 = v109;
    v113 = [v111 initWithInteger:13];
    sub_100016034(0, &qword_1003D9250, NSString_ptr);
    v114 = NSString.init(stringLiteral:)();
    [v112 setObject:v113 forKeyedSubscript:v114];

    v115 = v57 | (v71 << 8);
    v116 = v112;
    if (sub_1000C00B4(1, v115, v110))
    {
      v117 = _convertErrorToNSError(_:)();
    }

    else
    {
      v117 = 0;
    }

    [v116 updateTaskResultWithError:{v117, v127[0]}];
  }

  else
  {
    v115 = v57 | (v71 << 8);
  }

  v119 = *(v0 + 96);
  v118 = *(v0 + 104);
  v120 = *(v0 + 88);
  (*(v119 + 16))(v118, *(v0 + 48) + OBJC_IVAR____TtC13appleaccountd34CustodianSetupReadinessHealthCheck__reporter, v120);
  Dependency.wrappedValue.getter();
  (*(v119 + 8))(v118, v120);
  swift_getObjectType();
  sub_100246FA8(v109);
  swift_unknownObjectRelease();
  v121 = swift_task_alloc();
  *(v0 + 200) = v121;
  *v121 = v0;
  v121[1] = sub_10026C480;
  v122 = *(v0 + 72);
  v123 = *(v0 + 80);
  v124 = *(v0 + 56);
  v125 = *(v0 + 64);
  v126 = *(v0 + 40);

  return sub_10026D9CC(v126, v35, v115, v124, v125, v122, v123);
}

uint64_t sub_10026C480(char a1)
{
  v4 = *v2;
  *(*v2 + 208) = v1;

  if (v1)
  {
    v5 = sub_10026CA34;
  }

  else
  {
    *(v4 + 241) = a1 & 1;
    v5 = sub_10026C5AC;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10026C5AC()
{
  v20 = v0;
  v1 = *(v0 + 241);

  if (v1 == 1)
  {
    sub_10028338C(*(v0 + 40), *(v0 + 120), type metadata accessor for CustodianshipInfoRecord);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    v4 = os_log_type_enabled(v2, v3);
    v5 = *(v0 + 120);
    if (v4)
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v19 = v7;
      *v6 = 136315138;
      type metadata accessor for UUID();
      sub_100282F14(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v8 = dispatch thunk of CustomStringConvertible.description.getter();
      v10 = v9;
      sub_1002833F4(v5, type metadata accessor for CustodianshipInfoRecord);
      v11 = sub_10021145C(v8, v10, &v19);

      *(v6 + 4) = v11;
      _os_log_impl(&_mh_execute_header, v2, v3, "Custodian storing that setup readiness check was performed for custodianID: %s", v6, 0xCu);
      sub_10000839C(v7);
    }

    else
    {

      sub_1002833F4(v5, type metadata accessor for CustodianshipInfoRecord);
    }

    v14 = *(v0 + 112);
    v15 = *(v0 + 40);
    *(v0 + 216) = sub_1002669CC();
    v16 = *(v14 + 20);
    v17 = swift_task_alloc();
    *(v0 + 224) = v17;
    *v17 = v0;
    v17[1] = sub_10026C898;
    v18 = *(v0 + 240);

    return sub_100014ED8(v18, 1, v15 + v16);
  }

  else
  {

    v12 = *(v0 + 8);

    return v12();
  }
}

uint64_t sub_10026C898()
{
  v2 = *v1;
  *(v2 + 232) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_10026CAF4, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_10026CA34()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10026CAF4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10026CBB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[10] = a5;
  v6[11] = v5;
  v6[8] = a3;
  v6[9] = a4;
  v6[6] = a1;
  v6[7] = a2;
  v6[12] = type metadata accessor for CustodianshipInfoRecord(0);
  v6[13] = swift_task_alloc();

  return _swift_task_switch(sub_10026CC50, 0, 0);
}

uint64_t sub_10026CC50()
{
  v1 = sub_10026E668(v0[6]);
  v2 = *(v0[6] + *(v0[12] + 28));
  if (v2 == 1)
  {
    v18 = sub_1002822D4(v0[6], v1 & 1);
LABEL_12:
    v19 = v18;

    v20 = v0[1];

    return v20(v19);
  }

  if (v2 != 4)
  {
    if (v2 == 2)
    {
      v3 = v1;
      v4 = swift_task_alloc();
      v0[14] = v4;
      *v4 = v0;
      v4[1] = sub_10026D124;
      v5 = v0[10];
      v6 = v0[8];
      v7 = v0[9];
      v9 = v0[6];
      v8 = v0[7];

      return sub_10026F370(v9, v3 & 1, v8, v6, v7, v5);
    }

    v18 = sub_10028253C(v0[6], v1 & 1);
    goto LABEL_12;
  }

  v11 = v1;
  v12 = swift_task_alloc();
  v0[16] = v12;
  *v12 = v0;
  v12[1] = sub_10026D27C;
  v13 = v0[10];
  v14 = v0[8];
  v15 = v0[9];
  v17 = v0[6];
  v16 = v0[7];

  return sub_100270448(v17, v11 & 1, v16, v14, v15, v13);
}

uint64_t sub_10026D124(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 120) = v1;

  if (v1)
  {

    return _swift_task_switch(sub_10026D3D4, 0, 0);
  }

  else
  {

    v5 = *(v4 + 8);

    return v5(a1);
  }
}

uint64_t sub_10026D27C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 136) = v1;

  if (v1)
  {

    return _swift_task_switch(sub_10026D6D0, 0, 0);
  }

  else
  {

    v5 = *(v4 + 8);

    return v5(a1);
  }
}

uint64_t sub_10026D3D4()
{
  v19 = v0;
  if (qword_1003D7F48 != -1)
  {
    swift_once();
  }

  v1 = v0[13];
  v2 = v0[6];
  v3 = type metadata accessor for Logger();
  sub_100008D04(v3, qword_1003FAAB8);
  sub_10028338C(v2, v1, type metadata accessor for CustodianshipInfoRecord);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[13];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v18 = v10;
    *v8 = 136315394;
    type metadata accessor for UUID();
    sub_100282F14(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v11 = dispatch thunk of CustomStringConvertible.description.getter();
    v13 = v12;
    sub_1002833F4(v7, type metadata accessor for CustodianshipInfoRecord);
    v14 = sub_10021145C(v11, v13, &v18);

    *(v8 + 4) = v14;
    *(v8 + 12) = 2112;
    swift_errorRetain();
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v15;
    *v9 = v15;
    _os_log_impl(&_mh_execute_header, v4, v5, "Error occured when custodian was checking readiness state for custodianID: %s, error: %@", v8, 0x16u);
    sub_100008D3C(v9, &unk_1003D9140, &qword_10033E640);

    sub_10000839C(v10);
  }

  else
  {

    sub_1002833F4(v7, type metadata accessor for CustodianshipInfoRecord);
  }

  swift_getErrorValue();
  sub_100255F6C(-7355, v0[3], v0[4]);
  swift_willThrow();

  v16 = v0[1];

  return v16();
}

uint64_t sub_10026D6D0()
{
  v19 = v0;
  if (qword_1003D7F48 != -1)
  {
    swift_once();
  }

  v1 = v0[13];
  v2 = v0[6];
  v3 = type metadata accessor for Logger();
  sub_100008D04(v3, qword_1003FAAB8);
  sub_10028338C(v2, v1, type metadata accessor for CustodianshipInfoRecord);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[13];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v18 = v10;
    *v8 = 136315394;
    type metadata accessor for UUID();
    sub_100282F14(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v11 = dispatch thunk of CustomStringConvertible.description.getter();
    v13 = v12;
    sub_1002833F4(v7, type metadata accessor for CustodianshipInfoRecord);
    v14 = sub_10021145C(v11, v13, &v18);

    *(v8 + 4) = v14;
    *(v8 + 12) = 2112;
    swift_errorRetain();
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v15;
    *v9 = v15;
    _os_log_impl(&_mh_execute_header, v4, v5, "Error occured when custodian was checking readiness state for custodianID: %s, error: %@", v8, 0x16u);
    sub_100008D3C(v9, &unk_1003D9140, &qword_10033E640);

    sub_10000839C(v10);
  }

  else
  {

    sub_1002833F4(v7, type metadata accessor for CustodianshipInfoRecord);
  }

  swift_getErrorValue();
  sub_100255F6C(-7355, v0[3], v0[4]);
  swift_willThrow();

  v16 = v0[1];

  return v16();
}

uint64_t sub_10026D9CC(uint64_t a1, char a2, __int16 a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v8 + 48) = a7;
  *(v8 + 56) = v7;
  *(v8 + 32) = a5;
  *(v8 + 40) = a6;
  *(v8 + 152) = a3;
  *(v8 + 154) = a2;
  *(v8 + 16) = a1;
  *(v8 + 24) = a4;
  *(v8 + 64) = type metadata accessor for CustodianshipInfoRecord(0);
  *(v8 + 72) = swift_task_alloc();
  *(v8 + 80) = swift_task_alloc();
  *(v8 + 88) = swift_task_alloc();
  *(v8 + 96) = swift_task_alloc();

  return _swift_task_switch(sub_10026DA94, 0, 0);
}

uint64_t sub_10026DA94()
{
  v26 = v0;
  v1 = *(v0 + 152);
  if (v1 >> 8 == 2 || (v1 & 0x100) != 0)
  {
    v3 = *(v0 + 48);
    v2 = *(v0 + 56);
    v4 = *(v0 + 40);
    v24 = *(v0 + 24);
    v5 = *(v0 + 16);
    v6 = swift_task_alloc();
    *(v0 + 104) = v6;
    *(v6 + 16) = v2;
    *(v6 + 24) = v4;
    *(v6 + 32) = v3;
    *(v6 + 40) = v24;
    *(v6 + 56) = v5;
    v7 = swift_task_alloc();
    *(v0 + 112) = v7;
    *v7 = v0;
    v7[1] = sub_10026DE08;
    v8 = *(v0 + 96);

    return sub_100269F5C(v8, "CustodianTearDownSetup", 22, 2, &unk_100347E88, v6);
  }

  else
  {
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v10 = *(v0 + 72);
    v11 = *(v0 + 16);
    v12 = type metadata accessor for Logger();
    sub_100008D04(v12, qword_1003FAAB8);
    sub_10028338C(v11, v10, type metadata accessor for CustodianshipInfoRecord);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();
    v15 = os_log_type_enabled(v13, v14);
    v16 = *(v0 + 72);
    if (v15)
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v25 = v18;
      *v17 = 136315138;
      type metadata accessor for UUID();
      sub_100282F14(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v19 = dispatch thunk of CustomStringConvertible.description.getter();
      v21 = v20;
      sub_1002833F4(v16, type metadata accessor for CustodianshipInfoRecord);
      v22 = sub_10021145C(v19, v21, &v25);

      *(v17 + 4) = v22;
      _os_log_impl(&_mh_execute_header, v13, v14, "Custodian not tearing down stale setup for custodianID: %s", v17, 0xCu);
      sub_10000839C(v18);
    }

    else
    {

      sub_1002833F4(v16, type metadata accessor for CustodianshipInfoRecord);
    }

    v23 = *(v0 + 8);

    return v23(0);
  }
}

uint64_t sub_10026DE08()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_10026E1D8;
  }

  else
  {

    v2 = sub_10026DF24;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10026DF24()
{
  v25 = v0;
  if (qword_1003D7F48 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 88);
  v2 = *(v0 + 16);
  v3 = type metadata accessor for Logger();
  *(v0 + 128) = sub_100008D04(v3, qword_1003FAAB8);
  sub_10028338C(v2, v1, type metadata accessor for CustodianshipInfoRecord);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 88);
  if (v6)
  {
    v8 = *(v0 + 154);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v24 = v10;
    *v9 = 134218242;
    *(v9 + 4) = v8;
    *(v9 + 12) = 2080;
    type metadata accessor for UUID();
    sub_100282F14(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v11 = dispatch thunk of CustomStringConvertible.description.getter();
    v13 = v12;
    sub_1002833F4(v7, type metadata accessor for CustodianshipInfoRecord);
    v14 = sub_10021145C(v11, v13, &v24);

    *(v9 + 14) = v14;
    _os_log_impl(&_mh_execute_header, v4, v5, "Custodian notifying owner of tear down with reason: %ld for custodianID: %s", v9, 0x16u);
    sub_10000839C(v10);
  }

  else
  {

    sub_1002833F4(v7, type metadata accessor for CustodianshipInfoRecord);
  }

  OSTransaction.complete()();
  v16 = v15;
  v17 = swift_task_alloc();
  *(v0 + 136) = v17;
  *v17 = v0;
  v17[1] = sub_10026E26C;
  v18 = *(v0 + 96);
  v19 = *(v0 + 48);
  v20 = *(v0 + 32);
  v21 = *(v0 + 40);
  v22 = *(v0 + 24);

  return sub_100271E74(v18, v16, v22, v20, v21, v19);
}

uint64_t sub_10026E1D8()
{

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_10026E26C()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_10026E5C0;
  }

  else
  {
    v2 = sub_10026E380;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10026E380()
{
  v14 = v0;
  sub_10028338C(v0[12], v0[10], type metadata accessor for CustodianshipInfoRecord);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[10];
  if (v3)
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v13 = v6;
    *v5 = 136315138;
    type metadata accessor for UUID();
    sub_100282F14(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v7 = dispatch thunk of CustomStringConvertible.description.getter();
    v9 = v8;
    sub_1002833F4(v4, type metadata accessor for CustodianshipInfoRecord);
    v10 = sub_10021145C(v7, v9, &v13);

    *(v5 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v1, v2, "Custodian posting tear down CFU for custodianID: %s", v5, 0xCu);
    sub_10000839C(v6);
  }

  else
  {

    sub_1002833F4(v4, type metadata accessor for CustodianshipInfoRecord);
  }

  sub_1002833F4(v0[12], type metadata accessor for CustodianshipInfoRecord);

  v11 = v0[1];

  return v11(1);
}

uint64_t sub_10026E5C0()
{
  sub_1002833F4(*(v0 + 96), type metadata accessor for CustodianshipInfoRecord);

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_10026E668(uint64_t a1)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v63 = v4;
  v64 = v5;
  v6 = __chkstk_darwin(v4);
  v65 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v66 = &v54 - v9;
  v10 = __chkstk_darwin(v8);
  v67 = &v54 - v11;
  v12 = __chkstk_darwin(v10);
  v14 = &v54 - v13;
  __chkstk_darwin(v12);
  v16 = &v54 - v15;
  v17 = *(v1 + OBJC_IVAR____TtC13appleaccountd34ReadinessCheckGracePeriodEvaluator_user);
  if (*(v1 + OBJC_IVAR____TtC13appleaccountd34ReadinessCheckGracePeriodEvaluator_user))
  {
    v18 = 0xD000000000000022;
  }

  else
  {
    v18 = 0xD00000000000001ELL;
  }

  if (*(v1 + OBJC_IVAR____TtC13appleaccountd34ReadinessCheckGracePeriodEvaluator_user))
  {
    v19 = "ownerSetupGracePeriodInSeconds";
  }

  else
  {
    v19 = "ck";
  }

  v20 = sub_1002A25A0(v18, v19 | 0x8000000000000000);
  v22 = v21;

  if (v22)
  {
    type metadata accessor for AACustodianError(0);
    if (v17)
    {
      v23 = -7350;
    }

    else
    {
      v23 = -7300;
    }

    v68 = v23;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_100282F14(&qword_1003D8140, type metadata accessor for AACustodianError, &unk_10033DF94);
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();
  }

  else
  {
    if (v17)
    {
      type metadata accessor for CustodianshipInfoRecord(0);
      v62 = UUID.uuidString.getter();
      v25 = v24;
    }

    else
    {
      v25 = 0xE100000000000000;
      v62 = 45;
    }

    v26 = v16;
    sub_100274924(a1, v16);
    if (v2)
    {
    }

    else
    {
      v60 = v25;
      v27 = v20;
      v28 = v14;
      static Date.now.getter();
      Date.addingTimeInterval(_:)();
      sub_100282F14(&qword_1003DA8D8, &type metadata accessor for Date, &protocol conformance descriptor for Date);
      v29 = v63;
      v61 = dispatch thunk of static Comparable.< infix(_:_:)() ^ 1;
      if (qword_1003D7F48 != -1)
      {
        swift_once();
      }

      v30 = type metadata accessor for Logger();
      sub_100008D04(v30, qword_1003FAAB8);
      v31 = v64;
      v32 = *(v64 + 16);
      v32(v66, v28, v29);
      v33 = v65;
      v32(v65, v26, v29);
      v34 = v60;

      v35 = Logger.logObject.getter();
      v36 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        v59 = v28;
        v38 = v37;
        v57 = swift_slowAlloc();
        v69 = v57;
        *v38 = 136316162;
        sub_100282F14(&qword_1003DB608, &type metadata accessor for Date, &protocol conformance descriptor for Date);
        v56 = v36;
        v55 = v35;
        v39 = v66;
        v40 = dispatch thunk of CustomStringConvertible.description.getter();
        v58 = v26;
        v41 = v31;
        v43 = v42;
        v64 = *(v41 + 8);
        (v64)(v39, v29);
        v44 = sub_10021145C(v40, v43, &v69);

        *(v38 + 4) = v44;
        *(v38 + 12) = 2080;
        v45 = v65;
        v46 = dispatch thunk of CustomStringConvertible.description.getter();
        v20 = v47;
        (v64)(v45, v29);
        v48 = sub_10021145C(v46, v20, &v69);

        *(v38 + 14) = v48;
        *(v38 + 22) = 2048;
        *(v38 + 24) = v27;
        *(v38 + 32) = 1024;
        LOBYTE(v20) = v61;
        *(v38 + 34) = v61 & 1;
        *(v38 + 38) = 2080;
        v49 = sub_10021145C(v62, v34, &v69);

        *(v38 + 40) = v49;
        v50 = v55;
        _os_log_impl(&_mh_execute_header, v55, v56, "Date.now: %s, record created on: %s, grace period: %f, is past grace period: %{BOOL}d, custodianID: %s", v38, 0x30u);
        swift_arrayDestroy();

        v51 = v64;
        (v64)(v67, v29);
        v51(v59, v29);
        v51(v58, v29);
      }

      else
      {

        v52 = *(v31 + 8);
        v52(v33, v29);
        v52(v66, v29);
        v52(v67, v29);
        v52(v28, v29);
        v52(v26, v29);
        LOBYTE(v20) = v61;
      }
    }
  }

  return v20 & 1;
}

uint64_t sub_10026ECEC(uint64_t a1)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v63 = v4;
  v64 = v5;
  v6 = __chkstk_darwin(v4);
  v65 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v66 = &v54 - v9;
  v10 = __chkstk_darwin(v8);
  v67 = &v54 - v11;
  v12 = __chkstk_darwin(v10);
  v14 = &v54 - v13;
  __chkstk_darwin(v12);
  v16 = &v54 - v15;
  v17 = *(v1 + OBJC_IVAR____TtC13appleaccountd34ReadinessCheckGracePeriodEvaluator_user);
  if (v17)
  {
    v18 = 0xD000000000000022;
  }

  else
  {
    v18 = 0xD00000000000001ELL;
  }

  if (*(v1 + OBJC_IVAR____TtC13appleaccountd34ReadinessCheckGracePeriodEvaluator_user))
  {
    v19 = "ownerSetupGracePeriodInSeconds";
  }

  else
  {
    v19 = "ck";
  }

  v20 = sub_1002A25A0(v18, v19 | 0x8000000000000000);
  v22 = v21;

  if (v22)
  {
    type metadata accessor for AACustodianError(0);
    if (v17)
    {
      v23 = -7350;
    }

    else
    {
      v23 = -7300;
    }

    v68 = v23;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_100282F14(&qword_1003D8140, type metadata accessor for AACustodianError, &unk_10033DF94);
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();
  }

  else
  {
    if (v17)
    {
      v24 = 0xE100000000000000;
      v62 = 45;
    }

    else
    {
      type metadata accessor for CustodianRecord(0);
      v62 = UUID.uuidString.getter();
      v24 = v25;
    }

    v26 = v16;
    sub_1002756D4(a1, v16);
    if (v2)
    {
    }

    else
    {
      v60 = v24;
      v27 = v20;
      v28 = v14;
      static Date.now.getter();
      Date.addingTimeInterval(_:)();
      sub_100282F14(&qword_1003DA8D8, &type metadata accessor for Date, &protocol conformance descriptor for Date);
      v29 = v63;
      v61 = dispatch thunk of static Comparable.< infix(_:_:)() ^ 1;
      if (qword_1003D7F48 != -1)
      {
        swift_once();
      }

      v30 = type metadata accessor for Logger();
      sub_100008D04(v30, qword_1003FAAB8);
      v31 = v64;
      v32 = *(v64 + 16);
      v32(v66, v28, v29);
      v33 = v65;
      v32(v65, v26, v29);
      v34 = v60;

      v35 = Logger.logObject.getter();
      v36 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        v59 = v28;
        v38 = v37;
        v57 = swift_slowAlloc();
        v69 = v57;
        *v38 = 136316162;
        sub_100282F14(&qword_1003DB608, &type metadata accessor for Date, &protocol conformance descriptor for Date);
        v56 = v36;
        v55 = v35;
        v39 = v66;
        v40 = dispatch thunk of CustomStringConvertible.description.getter();
        v58 = v26;
        v41 = v31;
        v43 = v42;
        v64 = *(v41 + 8);
        (v64)(v39, v29);
        v44 = sub_10021145C(v40, v43, &v69);

        *(v38 + 4) = v44;
        *(v38 + 12) = 2080;
        v45 = v65;
        v46 = dispatch thunk of CustomStringConvertible.description.getter();
        v20 = v47;
        (v64)(v45, v29);
        v48 = sub_10021145C(v46, v20, &v69);

        *(v38 + 14) = v48;
        *(v38 + 22) = 2048;
        *(v38 + 24) = v27;
        *(v38 + 32) = 1024;
        LOBYTE(v20) = v61;
        *(v38 + 34) = v61 & 1;
        *(v38 + 38) = 2080;
        v49 = sub_10021145C(v62, v34, &v69);

        *(v38 + 40) = v49;
        v50 = v55;
        _os_log_impl(&_mh_execute_header, v55, v56, "Date.now: %s, record created on: %s, grace period: %f, is past grace period: %{BOOL}d, custodianID: %s", v38, 0x30u);
        swift_arrayDestroy();

        v51 = v64;
        (v64)(v67, v29);
        v51(v59, v29);
        v51(v58, v29);
      }

      else
      {

        v52 = *(v31 + 8);
        v52(v33, v29);
        v52(v66, v29);
        v52(v67, v29);
        v52(v28, v29);
        v52(v26, v29);
        LOBYTE(v20) = v61;
      }
    }
  }

  return v20 & 1;
}

uint64_t sub_10026F370(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 120) = a6;
  *(v7 + 128) = v6;
  *(v7 + 104) = a4;
  *(v7 + 112) = a5;
  *(v7 + 248) = a2;
  *(v7 + 88) = a1;
  *(v7 + 96) = a3;
  v8 = sub_100005814(&unk_1003DA530, &qword_10033F460);
  *(v7 + 136) = v8;
  *(v7 + 144) = *(v8 - 8);
  *(v7 + 152) = swift_task_alloc();
  *(v7 + 160) = type metadata accessor for FetchRecoveryRecordsRequest(0);
  *(v7 + 168) = swift_task_alloc();
  sub_100005814(&unk_1003D91B0, qword_1003444F0);
  *(v7 + 176) = swift_task_alloc();
  *(v7 + 184) = type metadata accessor for CustodianshipInfoRecord(0);
  *(v7 + 192) = swift_task_alloc();
  *(v7 + 200) = swift_task_alloc();
  *(v7 + 208) = swift_task_alloc();

  return _swift_task_switch(sub_10026F4F8, 0, 0);
}

uint64_t sub_10026F4F8()
{
  v35 = v0;
  if (qword_1003D7F48 != -1)
  {
    swift_once();
  }

  v1 = v0[26];
  v2 = v0[11];
  v3 = type metadata accessor for Logger();
  v0[27] = sub_100008D04(v3, qword_1003FAAB8);
  sub_10028338C(v2, v1, type metadata accessor for CustodianshipInfoRecord);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[26];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v34 = v9;
    *v8 = 136315138;
    type metadata accessor for UUID();
    sub_100282F14(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v10 = dispatch thunk of CustomStringConvertible.description.getter();
    v12 = v11;
    sub_1002833F4(v7, type metadata accessor for CustodianshipInfoRecord);
    v13 = sub_10021145C(v10, v12, &v34);

    *(v8 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v4, v5, "Custodian invitation is accepted, checking if RecoveryInfoRecord share is accepted, custodianID: %s", v8, 0xCu);
    sub_10000839C(v9);
  }

  else
  {

    sub_1002833F4(v7, type metadata accessor for CustodianshipInfoRecord);
  }

  v15 = v0[20];
  v14 = v0[21];
  v17 = v0[18];
  v16 = v0[19];
  v18 = v0[17];
  v19 = v0[15];
  v31 = v0[14];
  v20 = v0[13];
  v32 = v0[12];
  v33 = v0[16];
  v21 = v0[11];
  v22 = *(v0[23] + 20);
  v23 = type metadata accessor for UUID();
  v0[28] = v23;
  (*(*(v23 - 8) + 16))(v14, v21 + v22, v23);
  *(v14 + v15[5]) = 0;
  v24 = v14 + v15[6];
  *v24 = 0;
  *(v24 + 8) = 1;
  *(v14 + v15[7]) = 1;
  v25 = (v14 + v15[8]);
  *v25 = v31;
  v25[1] = v19;
  v26 = (v14 + v15[9]);
  *v26 = v32;
  v26[1] = v20;
  (*(v17 + 16))(v16, v33 + OBJC_IVAR____TtC13appleaccountd34CustodianSetupReadinessHealthCheck__custodianStorage, v18);

  Dependency.wrappedValue.getter();
  (*(v17 + 8))(v16, v18);
  sub_1000080F8(v0 + 2, v0[5]);
  v27 = swift_task_alloc();
  v0[29] = v27;
  *v27 = v0;
  v27[1] = sub_10026F8A8;
  v29 = v0[21];
  v28 = v0[22];

  return sub_100021548(v28, v29, 0, 0);
}

uint64_t sub_10026F8A8()
{
  *(*v1 + 240) = v0;

  if (v0)
  {
    v2 = sub_10026FE48;
  }

  else
  {
    v2 = sub_10026F9BC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10026F9BC()
{
  v30 = v0;
  v1 = *(v0 + 176);
  sub_1002833F4(*(v0 + 168), type metadata accessor for FetchRecoveryRecordsRequest);
  v2 = type metadata accessor for CustodianRecoveryInfoRecord(0);
  v3 = *(v2 - 8);
  (*(v3 + 56))(v1, 0, 1, v2);
  sub_10000839C((v0 + 16));
  v4 = (*(v3 + 48))(*(v0 + 176), 1, v2);
  v5 = *(v0 + 88);
  if (v4 == 1)
  {
    sub_10028338C(v5, *(v0 + 192), type metadata accessor for CustodianshipInfoRecord);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = *(v0 + 192);
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v29 = v10;
      *v9 = 136315138;
      sub_100282F14(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v11 = dispatch thunk of CustomStringConvertible.description.getter();
      v13 = v12;
      sub_1002833F4(v8, type metadata accessor for CustodianshipInfoRecord);
      v14 = sub_10021145C(v11, v13, &v29);

      *(v9 + 4) = v14;
      _os_log_impl(&_mh_execute_header, v6, v7, "Custodian RecoveryInfoRecord share is not accepted, incomplete setup, custodianID: %s", v9, 0xCu);
      sub_10000839C(v10);
    }

    else
    {
      v24 = *(v0 + 192);

      sub_1002833F4(v24, type metadata accessor for CustodianshipInfoRecord);
    }

    if (*(v0 + 248))
    {
      v25 = 4294967235;
    }

    else
    {
      v25 = 67;
    }
  }

  else
  {
    sub_10028338C(v5, *(v0 + 200), type metadata accessor for CustodianshipInfoRecord);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = *(v0 + 200);
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v29 = v19;
      *v18 = 136315138;
      sub_100282F14(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v20 = dispatch thunk of CustomStringConvertible.description.getter();
      v22 = v21;
      sub_1002833F4(v17, type metadata accessor for CustodianshipInfoRecord);
      v23 = sub_10021145C(v20, v22, &v29);

      *(v18 + 4) = v23;
      _os_log_impl(&_mh_execute_header, v15, v16, "Custodian setup is accepted and completed, custodianID: %s", v18, 0xCu);
      sub_10000839C(v19);
    }

    else
    {
      v26 = *(v0 + 200);

      sub_1002833F4(v26, type metadata accessor for CustodianshipInfoRecord);
    }

    v25 = 1;
  }

  sub_100008D3C(*(v0 + 176), &unk_1003D91B0, qword_1003444F0);

  v27 = *(v0 + 8);

  return v27(v25);
}

uint64_t sub_10026FE48()
{
  v34 = v0;
  v1 = *(v0 + 240);
  sub_10000839C((v0 + 16));
  *(v0 + 56) = v1;
  swift_errorRetain();
  sub_100005814(&unk_1003DBB60, &unk_10033E740);
  type metadata accessor for AACustodianError(0);
  if (swift_dynamicCast())
  {
    v2 = *(v0 + 64);
    *(v0 + 72) = v2;
    v3 = *(v0 + 168);
    sub_100282F14(&qword_1003D8140, type metadata accessor for AACustodianError, &unk_10033DF94);
    _BridgedStoredNSError.code.getter();
    sub_1002833F4(v3, type metadata accessor for FetchRecoveryRecordsRequest);

    if (*(v0 + 80) == -7062)
    {
      v4 = *(v0 + 176);

      v5 = type metadata accessor for CustodianRecoveryInfoRecord(0);
      v6 = *(v5 - 8);
      (*(v6 + 56))(v4, 1, 1, v5);

      v7 = (*(v6 + 48))(*(v0 + 176), 1, v5);
      v8 = *(v0 + 88);
      if (v7 == 1)
      {
        sub_10028338C(v8, *(v0 + 192), type metadata accessor for CustodianshipInfoRecord);
        v9 = Logger.logObject.getter();
        v10 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v9, v10))
        {
          v11 = *(v0 + 192);
          v12 = swift_slowAlloc();
          v13 = swift_slowAlloc();
          v33 = v13;
          *v12 = 136315138;
          sub_100282F14(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          v14 = dispatch thunk of CustomStringConvertible.description.getter();
          v16 = v15;
          sub_1002833F4(v11, type metadata accessor for CustodianshipInfoRecord);
          v17 = sub_10021145C(v14, v16, &v33);

          *(v12 + 4) = v17;
          _os_log_impl(&_mh_execute_header, v9, v10, "Custodian RecoveryInfoRecord share is not accepted, incomplete setup, custodianID: %s", v12, 0xCu);
          sub_10000839C(v13);
        }

        else
        {
          v29 = *(v0 + 192);

          sub_1002833F4(v29, type metadata accessor for CustodianshipInfoRecord);
        }

        if (*(v0 + 248))
        {
          v30 = 4294967235;
        }

        else
        {
          v30 = 67;
        }
      }

      else
      {
        sub_10028338C(v8, *(v0 + 200), type metadata accessor for CustodianshipInfoRecord);
        v20 = Logger.logObject.getter();
        v21 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v20, v21))
        {
          v22 = *(v0 + 200);
          v23 = swift_slowAlloc();
          v24 = swift_slowAlloc();
          v33 = v24;
          *v23 = 136315138;
          sub_100282F14(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          v25 = dispatch thunk of CustomStringConvertible.description.getter();
          v27 = v26;
          sub_1002833F4(v22, type metadata accessor for CustodianshipInfoRecord);
          v28 = sub_10021145C(v25, v27, &v33);

          *(v23 + 4) = v28;
          _os_log_impl(&_mh_execute_header, v20, v21, "Custodian setup is accepted and completed, custodianID: %s", v23, 0xCu);
          sub_10000839C(v24);
        }

        else
        {
          v31 = *(v0 + 200);

          sub_1002833F4(v31, type metadata accessor for CustodianshipInfoRecord);
        }

        v30 = 1;
      }

      sub_100008D3C(*(v0 + 176), &unk_1003D91B0, qword_1003444F0);

      v32 = *(v0 + 8);

      return v32(v30);
    }
  }

  else
  {
    sub_1002833F4(*(v0 + 168), type metadata accessor for FetchRecoveryRecordsRequest);
  }

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_100270448(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 120) = a6;
  *(v7 + 128) = v6;
  *(v7 + 104) = a4;
  *(v7 + 112) = a5;
  *(v7 + 284) = a2;
  *(v7 + 88) = a1;
  *(v7 + 96) = a3;
  v8 = sub_100005814(&unk_1003DA530, &qword_10033F460);
  *(v7 + 136) = v8;
  *(v7 + 144) = *(v8 - 8);
  *(v7 + 152) = swift_task_alloc();
  *(v7 + 160) = type metadata accessor for FetchRecoveryRecordsRequest(0);
  *(v7 + 168) = swift_task_alloc();
  sub_100005814(&unk_1003D91B0, qword_1003444F0);
  *(v7 + 176) = swift_task_alloc();
  *(v7 + 184) = type metadata accessor for CustodianshipInfoRecord(0);
  *(v7 + 192) = swift_task_alloc();
  *(v7 + 200) = swift_task_alloc();
  *(v7 + 208) = swift_task_alloc();
  *(v7 + 216) = swift_task_alloc();
  *(v7 + 224) = swift_task_alloc();

  return _swift_task_switch(sub_1002705E8, 0, 0);
}

uint64_t sub_1002705E8()
{
  v35 = v0;
  if (qword_1003D7F48 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 224);
  v2 = *(v0 + 88);
  v3 = type metadata accessor for Logger();
  *(v0 + 232) = sub_100008D04(v3, qword_1003FAAB8);
  sub_10028338C(v2, v1, type metadata accessor for CustodianshipInfoRecord);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 224);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v34 = v9;
    *v8 = 136315138;
    type metadata accessor for UUID();
    sub_100282F14(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v10 = dispatch thunk of CustomStringConvertible.description.getter();
    v12 = v11;
    sub_1002833F4(v7, type metadata accessor for CustodianshipInfoRecord);
    v13 = sub_10021145C(v10, v12, &v34);

    *(v8 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v4, v5, "Custodian invitation is declined, checking if RecoveryInfoRecord share is cancelled, custodianID: %s", v8, 0xCu);
    sub_10000839C(v9);
  }

  else
  {

    sub_1002833F4(v7, type metadata accessor for CustodianshipInfoRecord);
  }

  v15 = *(v0 + 160);
  v14 = *(v0 + 168);
  v17 = *(v0 + 144);
  v16 = *(v0 + 152);
  v18 = *(v0 + 136);
  v19 = *(v0 + 120);
  v31 = *(v0 + 112);
  v20 = *(v0 + 104);
  v32 = *(v0 + 96);
  v33 = *(v0 + 128);
  v21 = *(v0 + 88);
  v22 = *(*(v0 + 184) + 20);
  *(v0 + 280) = v22;
  v23 = type metadata accessor for UUID();
  *(v0 + 240) = v23;
  (*(*(v23 - 8) + 16))(v14, v21 + v22, v23);
  *(v14 + v15[5]) = 0;
  v24 = v14 + v15[6];
  *v24 = 0;
  *(v24 + 8) = 1;
  *(v14 + v15[7]) = 1;
  v25 = (v14 + v15[8]);
  *v25 = v31;
  v25[1] = v19;
  v26 = (v14 + v15[9]);
  *v26 = v32;
  v26[1] = v20;
  (*(v17 + 16))(v16, v33 + OBJC_IVAR____TtC13appleaccountd34CustodianSetupReadinessHealthCheck__custodianStorage, v18);

  Dependency.wrappedValue.getter();
  (*(v17 + 8))(v16, v18);
  sub_1000080F8((v0 + 16), *(v0 + 40));
  v27 = swift_task_alloc();
  *(v0 + 248) = v27;
  *v27 = v0;
  v27[1] = sub_10027099C;
  v29 = *(v0 + 168);
  v28 = *(v0 + 176);

  return sub_100021548(v28, v29, 0, 0);
}

uint64_t sub_10027099C()
{
  *(*v1 + 256) = v0;

  if (v0)
  {
    v2 = sub_100270FE0;
  }

  else
  {
    v2 = sub_100270AB0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100270AB0()
{
  v34 = v0;
  v1 = *(v0 + 176);
  sub_1002833F4(*(v0 + 168), type metadata accessor for FetchRecoveryRecordsRequest);
  v2 = type metadata accessor for CustodianRecoveryInfoRecord(0);
  v3 = *(v2 - 8);
  (*(v3 + 56))(v1, 0, 1, v2);
  sub_10000839C((v0 + 16));
  v4 = (*(v3 + 48))(*(v0 + 176), 1, v2);
  v5 = *(v0 + 88);
  if (v4 == 1)
  {
    sub_10028338C(v5, *(v0 + 216), type metadata accessor for CustodianshipInfoRecord);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = *(v0 + 216);
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v33 = v10;
      *v9 = 136315138;
      sub_100282F14(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v11 = dispatch thunk of CustomStringConvertible.description.getter();
      v13 = v12;
      sub_1002833F4(v8, type metadata accessor for CustodianshipInfoRecord);
      v14 = sub_10021145C(v11, v13, &v33);

      *(v9 + 4) = v14;
      _os_log_impl(&_mh_execute_header, v6, v7, "Custodian RecoveryInfoRecord share is cancelled, checking if setup was torn down by owner, custodianID: %s", v9, 0xCu);
      sub_10000839C(v10);
    }

    else
    {
      v24 = *(v0 + 216);

      sub_1002833F4(v24, type metadata accessor for CustodianshipInfoRecord);
    }

    v25 = *(v0 + 280);
    v26 = *(v0 + 88);
    *(v0 + 264) = sub_1002669CC();
    v27 = swift_task_alloc();
    *(v0 + 272) = v27;
    *v27 = v0;
    v27[1] = sub_10027169C;

    return sub_100014A24(1, v26 + v25);
  }

  else
  {
    sub_10028338C(v5, *(v0 + 192), type metadata accessor for CustodianshipInfoRecord);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = *(v0 + 192);
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v33 = v19;
      *v18 = 136315138;
      sub_100282F14(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v20 = dispatch thunk of CustomStringConvertible.description.getter();
      v22 = v21;
      sub_1002833F4(v17, type metadata accessor for CustodianshipInfoRecord);
      v23 = sub_10021145C(v20, v22, &v33);

      *(v18 + 4) = v23;
      _os_log_impl(&_mh_execute_header, v15, v16, "Custodian RecoveryInfoRecord share is not cancelled, incomplete setup, custodianID: %s", v18, 0xCu);
      sub_10000839C(v19);
    }

    else
    {
      v29 = *(v0 + 192);

      sub_1002833F4(v29, type metadata accessor for CustodianshipInfoRecord);
    }

    v30 = *(v0 + 284);
    sub_100008D3C(*(v0 + 176), &unk_1003D91B0, qword_1003444F0);

    v31 = *(v0 + 8);
    if (v30)
    {
      v32 = 4294967238;
    }

    else
    {
      v32 = 70;
    }

    return v31(v32);
  }
}

uint64_t sub_100270FE0()
{
  v38 = v0;
  v1 = *(v0 + 256);
  sub_10000839C((v0 + 16));
  *(v0 + 56) = v1;
  swift_errorRetain();
  sub_100005814(&unk_1003DBB60, &unk_10033E740);
  type metadata accessor for AACustodianError(0);
  if (swift_dynamicCast())
  {
    v2 = *(v0 + 64);
    *(v0 + 72) = v2;
    v3 = *(v0 + 168);
    sub_100282F14(&qword_1003D8140, type metadata accessor for AACustodianError, &unk_10033DF94);
    _BridgedStoredNSError.code.getter();
    sub_1002833F4(v3, type metadata accessor for FetchRecoveryRecordsRequest);

    if (*(v0 + 80) == -7062)
    {
      v4 = *(v0 + 176);

      v5 = type metadata accessor for CustodianRecoveryInfoRecord(0);
      v6 = *(v5 - 8);
      (*(v6 + 56))(v4, 1, 1, v5);

      v7 = (*(v6 + 48))(*(v0 + 176), 1, v5);
      v8 = *(v0 + 88);
      if (v7 == 1)
      {
        sub_10028338C(v8, *(v0 + 216), type metadata accessor for CustodianshipInfoRecord);
        v9 = Logger.logObject.getter();
        v10 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v9, v10))
        {
          v11 = *(v0 + 216);
          v12 = swift_slowAlloc();
          v13 = swift_slowAlloc();
          v37 = v13;
          *v12 = 136315138;
          sub_100282F14(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          v14 = dispatch thunk of CustomStringConvertible.description.getter();
          v16 = v15;
          sub_1002833F4(v11, type metadata accessor for CustodianshipInfoRecord);
          v17 = sub_10021145C(v14, v16, &v37);

          *(v12 + 4) = v17;
          _os_log_impl(&_mh_execute_header, v9, v10, "Custodian RecoveryInfoRecord share is cancelled, checking if setup was torn down by owner, custodianID: %s", v12, 0xCu);
          sub_10000839C(v13);
        }

        else
        {
          v29 = *(v0 + 216);

          sub_1002833F4(v29, type metadata accessor for CustodianshipInfoRecord);
        }

        v30 = *(v0 + 280);
        v31 = *(v0 + 88);
        *(v0 + 264) = sub_1002669CC();
        v32 = swift_task_alloc();
        *(v0 + 272) = v32;
        *v32 = v0;
        v32[1] = sub_10027169C;

        return sub_100014A24(1, v31 + v30);
      }

      else
      {
        sub_10028338C(v8, *(v0 + 192), type metadata accessor for CustodianshipInfoRecord);
        v20 = Logger.logObject.getter();
        v21 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v20, v21))
        {
          v22 = *(v0 + 192);
          v23 = swift_slowAlloc();
          v24 = swift_slowAlloc();
          v37 = v24;
          *v23 = 136315138;
          sub_100282F14(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          v25 = dispatch thunk of CustomStringConvertible.description.getter();
          v27 = v26;
          sub_1002833F4(v22, type metadata accessor for CustodianshipInfoRecord);
          v28 = sub_10021145C(v25, v27, &v37);

          *(v23 + 4) = v28;
          _os_log_impl(&_mh_execute_header, v20, v21, "Custodian RecoveryInfoRecord share is not cancelled, incomplete setup, custodianID: %s", v23, 0xCu);
          sub_10000839C(v24);
        }

        else
        {
          v33 = *(v0 + 192);

          sub_1002833F4(v33, type metadata accessor for CustodianshipInfoRecord);
        }

        v34 = *(v0 + 284);
        sub_100008D3C(*(v0 + 176), &unk_1003D91B0, qword_1003444F0);

        v35 = *(v0 + 8);
        if (v34)
        {
          v36 = 4294967238;
        }

        else
        {
          v36 = 70;
        }

        return v35(v36);
      }
    }
  }

  else
  {
    sub_1002833F4(*(v0 + 168), type metadata accessor for FetchRecoveryRecordsRequest);
  }

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_10027169C(char a1)
{
  *(*v2 + 285) = a1;

  if (v1)
  {

    v3 = sub_100271C04;
  }

  else
  {

    v3 = sub_1002717EC;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1002717EC()
{
  v27 = v0;
  v1 = *(v0 + 88);
  if (*(v0 + 285) == 11)
  {
    sub_10028338C(v1, *(v0 + 200), type metadata accessor for CustodianshipInfoRecord);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = *(v0 + 200);
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v26 = v6;
      *v5 = 136315138;
      sub_100282F14(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v7 = dispatch thunk of CustomStringConvertible.description.getter();
      v9 = v8;
      sub_1002833F4(v4, type metadata accessor for CustodianshipInfoRecord);
      v10 = sub_10021145C(v7, v9, &v26);

      *(v5 + 4) = v10;
      _os_log_impl(&_mh_execute_header, v2, v3, "Custodian setup is declined and completed, custodianID: %s", v5, 0xCu);
      sub_10000839C(v6);
    }

    else
    {
      v21 = *(v0 + 200);

      sub_1002833F4(v21, type metadata accessor for CustodianshipInfoRecord);
    }

    v22 = 0;
  }

  else
  {
    sub_10028338C(v1, *(v0 + 208), type metadata accessor for CustodianshipInfoRecord);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = *(v0 + 285);
      v14 = *(v0 + 208);
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v26 = v16;
      *v15 = 134218242;
      *(v15 + 4) = v13;
      *(v15 + 12) = 2080;
      sub_100282F14(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v17 = dispatch thunk of CustomStringConvertible.description.getter();
      v19 = v18;
      sub_1002833F4(v14, type metadata accessor for CustodianshipInfoRecord);
      v20 = sub_10021145C(v17, v19, &v26);

      *(v15 + 14) = v20;
      _os_log_impl(&_mh_execute_header, v11, v12, "Custodian setup was torn down by owner, reason: %ld, custodianID: %s", v15, 0x16u);
      sub_10000839C(v16);
    }

    else
    {
      v23 = *(v0 + 208);

      sub_1002833F4(v23, type metadata accessor for CustodianshipInfoRecord);
    }

    v22 = *(v0 + 285) | 0xFFFFFF80;
  }

  sub_100008D3C(*(v0 + 176), &unk_1003D91B0, qword_1003444F0);

  v24 = *(v0 + 8);

  return v24(v22);
}

uint64_t sub_100271C04()
{
  v14 = v0;
  sub_10028338C(v0[11], v0[25], type metadata accessor for CustodianshipInfoRecord);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[25];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v13 = v5;
    *v4 = 136315138;
    sub_100282F14(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v6 = dispatch thunk of CustomStringConvertible.description.getter();
    v8 = v7;
    sub_1002833F4(v3, type metadata accessor for CustodianshipInfoRecord);
    v9 = sub_10021145C(v6, v8, &v13);

    *(v4 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v1, v2, "Custodian setup is declined and completed, custodianID: %s", v4, 0xCu);
    sub_10000839C(v5);
  }

  else
  {
    v10 = v0[25];

    sub_1002833F4(v10, type metadata accessor for CustodianshipInfoRecord);
  }

  sub_100008D3C(v0[22], &unk_1003D91B0, qword_1003444F0);

  v11 = v0[1];

  return v11(0);
}

uint64_t sub_100271E74(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 88) = a6;
  *(v7 + 96) = v6;
  *(v7 + 72) = a4;
  *(v7 + 80) = a5;
  *(v7 + 160) = a2;
  *(v7 + 56) = a1;
  *(v7 + 64) = a3;
  v8 = sub_100005814(&unk_1003D8B50, &unk_10033F600);
  *(v7 + 104) = v8;
  *(v7 + 112) = *(v8 - 8);
  *(v7 + 120) = swift_task_alloc();

  return _swift_task_switch(sub_100271F4C, 0, 0);
}

uint64_t sub_100271F4C()
{
  v2 = *(v0 + 112);
  v1 = *(v0 + 120);
  v3 = *(v0 + 104);
  v4 = *(v0 + 88);
  (*(v2 + 16))(v1, *(v0 + 96) + OBJC_IVAR____TtC13appleaccountd34CustodianSetupReadinessHealthCheck__reporter, v3);
  Dependency.wrappedValue.getter();
  (*(v2 + 8))(v1, v3);
  *(v0 + 128) = *(v0 + 40);
  v5 = kAAAnalyticsEventCustodianSetupSendInvitationDeclineMessage;
  v6 = kAAAnalyticsEventCustodianSetupSendInvitationDeclineMessage;

  if (v4)
  {

    v7 = String._bridgeToObjectiveC()();
  }

  else
  {
    v7 = 0;
  }

  v8 = objc_opt_self();
  v9 = String._bridgeToObjectiveC()();

  v10 = [v8 analyticsEventWithName:v5 altDSID:v7 flowID:v9];
  *(v0 + 136) = v10;

  if (v10)
  {
    v11 = objc_allocWithZone(NSNumber);
    v12 = v10;
    v13 = [v11 initWithInteger:13];
    sub_100016034(0, &qword_1003D9250, NSString_ptr);
    v14 = NSString.init(stringLiteral:)();
    [v12 setObject:v13 forKeyedSubscript:v14];
  }

  sub_100257274(v5);
  v15 = swift_task_alloc();
  *(v0 + 144) = v15;
  *v15 = v0;
  v15[1] = sub_1002722C0;
  v16 = *(v0 + 96);
  v17 = *(v0 + 56);
  v18 = *(v0 + 160);

  return sub_100273DC0(v15, v17, v16, v18);
}

uint64_t sub_1002722C0()
{
  *(*v1 + 152) = v0;

  if (v0)
  {
    v2 = sub_1002723D4;
  }

  else
  {
    v2 = sub_100272514;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1002723D4()
{
  v1 = v0[17];
  swift_getErrorValue();
  sub_1002DEA80(v0[3], v0[4]);
  if (v1)
  {
    v2 = v0[17];
    v3 = v2;
    swift_errorRetain();
    v4 = _convertErrorToNSError(_:)();
    [v3 updateTaskResultWithError:v4];

    swift_getObjectType();
    v5 = v3;
    sub_100246FA8(v2);
  }

  else
  {
    swift_errorRetain();
  }

  v6 = v0[17];
  swift_willThrow();
  swift_unknownObjectRelease();

  v7 = v0[1];

  return v7();
}

uint64_t sub_100272514()
{
  v1 = *(v0 + 136);
  if (v1)
  {
    [*(v0 + 136) updateTaskResultWithError:0];
    swift_getObjectType();
    v2 = v1;
    sub_100246FA8(v1);
  }

  swift_unknownObjectRelease();

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1002725DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[16] = a6;
  v7[17] = a7;
  v7[14] = a4;
  v7[15] = a5;
  v7[12] = a2;
  v7[13] = a3;
  v7[11] = a1;
  v7[18] = type metadata accessor for CustodianshipInfoRecord(0);
  v7[19] = swift_task_alloc();
  v8 = sub_100005814(&unk_1003D8B50, &unk_10033F600);
  v7[20] = v8;
  v7[21] = *(v8 - 8);
  v7[22] = swift_task_alloc();

  return _swift_task_switch(sub_1002726E4, 0, 0);
}

uint64_t sub_1002726E4()
{
  v27 = v0;
  v2 = v0[21];
  v1 = v0[22];
  v3 = v0[20];
  v4 = v0[14];
  (*(v2 + 16))(v1, v0[12] + OBJC_IVAR____TtC13appleaccountd34CustodianSetupReadinessHealthCheck__reporter, v3);
  Dependency.wrappedValue.getter();
  (*(v2 + 8))(v1, v3);
  v0[23] = v0[8];
  v5 = kAAAnalyticsEventSetupFailSafeTearDown;
  v26[0] = 0x776F642D72616574;
  v26[1] = 0xEA00000000002D6ELL;
  type metadata accessor for UUID();
  sub_100282F14(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v6._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v6);

  v0[24] = 0x776F642D72616574;
  v0[25] = 0xEA00000000002D6ELL;
  v7 = v5;

  if (v4)
  {

    v8 = String._bridgeToObjectiveC()();
  }

  else
  {
    v8 = 0;
  }

  v9 = objc_opt_self();
  v10 = String._bridgeToObjectiveC()();

  v11 = [v9 analyticsEventWithName:v5 altDSID:v8 flowID:v10];
  v0[26] = v11;

  if (v11)
  {
    v12 = objc_allocWithZone(NSNumber);
    v13 = v11;
    v14 = [v12 initWithInteger:13];
    sub_100016034(0, &qword_1003D9250, NSString_ptr);
    v15 = NSString.init(stringLiteral:)();
    [v13 setObject:v14 forKeyedSubscript:v15];
  }

  if (qword_1003D7F20 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  v0[27] = sub_100008D04(v16, qword_1003FAA40);

  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v26[0] = v20;
    *v19 = 136315138;
    *(v19 + 4) = sub_10021145C(0x776F642D72616574, 0xEA00000000002D6ELL, v26);
    _os_log_impl(&_mh_execute_header, v17, v18, "Performing: %s...", v19, 0xCu);
    sub_10000839C(v20);
  }

  sub_100257274(v5);
  v21 = swift_task_alloc();
  v0[28] = v21;
  *v21 = v0;
  v21[1] = sub_100272D64;
  v22 = v0[19];
  v23 = v0[17];
  v24 = v0[12];

  return sub_1002732EC(v22, v23, v24);
}

uint64_t sub_100272D64()
{
  *(*v1 + 232) = v0;

  if (v0)
  {
    v2 = sub_100272E78;
  }

  else
  {
    v2 = sub_100273110;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100272E78()
{
  v17 = v0;

  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v4 = v0[24];
    v3 = v0[25];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v16 = v7;
    *v5 = 136315394;
    *(v5 + 4) = sub_10021145C(v4, v3, &v16);
    *(v5 + 12) = 2112;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 14) = v8;
    *v6 = v8;
    _os_log_impl(&_mh_execute_header, v1, v2, "❌ %s - failed with error: %@", v5, 0x16u);
    sub_100008D3C(v6, &unk_1003D9140, &qword_10033E640);

    sub_10000839C(v7);
  }

  v9 = v0[26];
  swift_getErrorValue();
  sub_1002DEA80(v0[3], v0[4]);
  swift_getErrorValue();
  sub_100255F6C(-7354, v0[6], v0[7]);
  if (v9)
  {
    v10 = v0[26];
    v11 = v10;
    v12 = _convertErrorToNSError(_:)();
    [v11 updateTaskResultWithError:v12];

    swift_getObjectType();
    sub_100246FA8(v10);
  }

  v13 = v0[26];
  swift_willThrow();

  swift_unknownObjectRelease();

  v14 = v0[1];

  return v14();
}

uint64_t sub_100273110()
{
  v12 = v0;

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v4 = *(v0 + 192);
    v3 = *(v0 + 200);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_10021145C(v4, v3, &v11);
    _os_log_impl(&_mh_execute_header, v1, v2, "✅ %s - successfully completed!", v5, 0xCu);
    sub_10000839C(v6);
  }

  v7 = *(v0 + 208);
  if (v7)
  {
    [*(v0 + 208) updateTaskResultWithError:0];
    swift_getObjectType();
    v8 = v7;
    sub_100246FA8(v7);
  }

  sub_100283458(*(v0 + 152), *(v0 + 88), type metadata accessor for CustodianshipInfoRecord);

  swift_unknownObjectRelease();

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1002732EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[9] = a2;
  v3[10] = a3;
  v3[8] = a1;
  v4 = sub_100005814(&unk_1003DA550, &qword_10033F620);
  v3[11] = v4;
  v3[12] = *(v4 - 8);
  v3[13] = swift_task_alloc();
  v5 = type metadata accessor for CustodianshipInfoRecord(0);
  v3[14] = v5;
  v6 = *(v5 - 8);
  v3[15] = v6;
  v3[16] = *(v6 + 64);
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();

  return _swift_task_switch(sub_100273438, 0, 0);
}

uint64_t sub_100273438()
{
  v29 = v0;
  if (qword_1003D7F48 != -1)
  {
    swift_once();
  }

  v1 = v0[19];
  v2 = v0[9];
  v3 = type metadata accessor for Logger();
  v0[20] = sub_100008D04(v3, qword_1003FAAB8);
  sub_10028338C(v2, v1, type metadata accessor for CustodianshipInfoRecord);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[19];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v28 = v9;
    *v8 = 136315138;
    type metadata accessor for UUID();
    sub_100282F14(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v10 = dispatch thunk of CustomStringConvertible.description.getter();
    v12 = v11;
    sub_1002833F4(v7, type metadata accessor for CustodianshipInfoRecord);
    v13 = sub_10021145C(v10, v12, &v28);

    *(v8 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v4, v5, "Custodian declining CustodianshipInfoRecord as a part for teardown, custodianID: %s", v8, 0xCu);
    sub_10000839C(v9);
  }

  else
  {

    sub_1002833F4(v7, type metadata accessor for CustodianshipInfoRecord);
  }

  v14 = v0[18];
  v15 = v0[15];
  v17 = v0[12];
  v16 = v0[13];
  v19 = v0[10];
  v18 = v0[11];
  v20 = v0[9];
  sub_10028338C(v20, v14, type metadata accessor for CustodianshipInfoRecord);
  v21 = (*(v15 + 80) + 16) & ~*(v15 + 80);
  v22 = swift_allocObject();
  v0[21] = v22;
  sub_100283458(v14, v22 + v21, type metadata accessor for CustodianshipInfoRecord);
  (*(v17 + 16))(v16, v19 + OBJC_IVAR____TtC13appleaccountd34CustodianSetupReadinessHealthCheck__storageController, v18);
  Dependency.wrappedValue.getter();
  (*(v17 + 8))(v16, v18);
  v0[7] = *sub_1000080F8(v0 + 2, v0[5]);

  v23 = swift_task_alloc();
  v0[22] = v23;
  v23[2] = v0 + 7;
  v23[3] = v20;
  v23[4] = sub_100282B98;
  v23[5] = v22;
  v24 = swift_task_alloc();
  v0[23] = v24;
  *v24 = v0;
  v24[1] = sub_100273810;
  v25 = v0[14];
  v26 = v0[8];

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v26, 0, 0, 0xD000000000000014, 0x800000010032F130, sub_100282C18, v23, v25);
}

uint64_t sub_100273810()
{
  *(*v1 + 192) = v0;

  if (v0)
  {
    v2 = sub_100273B84;
  }

  else
  {

    v2 = sub_100273934;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100273934()
{
  v16 = v0;
  v1 = v0[17];
  v2 = v0[9];
  sub_10000839C(v0 + 2);
  sub_10028338C(v2, v1, type metadata accessor for CustodianshipInfoRecord);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[17];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v15 = v8;
    *v7 = 136315138;
    type metadata accessor for UUID();
    sub_100282F14(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v9 = dispatch thunk of CustomStringConvertible.description.getter();
    v11 = v10;
    sub_1002833F4(v6, type metadata accessor for CustodianshipInfoRecord);
    v12 = sub_10021145C(v9, v11, &v15);

    *(v7 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v3, v4, "Custodian successfully declined CustodianshipInfoRecord as a part for teardown, custodianID: %s", v7, 0xCu);
    sub_10000839C(v8);
  }

  else
  {

    sub_1002833F4(v6, type metadata accessor for CustodianshipInfoRecord);
  }

  v13 = v0[1];

  return v13();
}

uint64_t sub_100273B84()
{

  sub_10000839C((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100273C40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for CustodianshipInfoRecord(0);
  v7 = (v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10028338C(a1, v9, type metadata accessor for CustodianshipInfoRecord);
  v10 = (a2 + v7[8]);
  v12 = *v10;
  v11 = v10[1];
  v13 = type metadata accessor for UUID();
  v14 = *(*(v13 - 8) + 16);
  v14(a3, v9, v13);
  v14(a3 + v7[7], &v9[v7[7]], v13);
  v15 = v7[10];
  v16 = *&v9[v15];
  v17 = *&v9[v15 + 8];
  v18 = (a3 + v15);
  *v18 = v16;
  v18[1] = v17;
  v19 = (a3 + v7[8]);
  *v19 = v12;
  v19[1] = v11;
  *(a3 + v7[9]) = 4;
  LOBYTE(v12) = v9[v7[11]];

  sub_100015D6C(v16, v17);
  result = sub_1002833F4(v9, type metadata accessor for CustodianshipInfoRecord);
  *(a3 + v7[11]) = v12;
  return result;
}

uint64_t sub_100273DC0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v4 + 120) = a4;
  *(v4 + 56) = a2;
  *(v4 + 64) = a3;
  v5 = type metadata accessor for UUID();
  *(v4 + 72) = v5;
  *(v4 + 80) = *(v5 - 8);
  *(v4 + 88) = swift_task_alloc();
  v6 = sub_100005814(&qword_1003DB060, &qword_10033F990);
  *(v4 + 96) = v6;
  *(v4 + 104) = *(v6 - 8);
  *(v4 + 112) = swift_task_alloc();

  return _swift_task_switch(sub_100273EEC, 0, 0);
}

uint64_t sub_100273EEC()
{
  v2 = *(v0 + 104);
  v1 = *(v0 + 112);
  v3 = *(v0 + 96);
  v4 = *(v0 + 80);
  v26 = *(v0 + 88);
  v27 = *(v0 + 72);
  v28 = *(v0 + 120);
  v6 = *(v0 + 56);
  v5 = *(v0 + 64);
  v7 = type metadata accessor for CustodianshipInfoRecord(0);
  v8 = objc_allocWithZone(AACustodianInvitationResponseContext);
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v10 = [v8 initWithCustodianID:isa didAccept:0];

  (*(v2 + 16))(v1, v5 + OBJC_IVAR____TtC13appleaccountd34CustodianSetupReadinessHealthCheck__messenger, v3);
  Dependency.wrappedValue.getter();
  (*(v2 + 8))(v1, v3);
  sub_1000080F8((v0 + 16), *(v0 + 40));
  v11 = (v6 + *(v7 + 24));
  v12 = *v11;
  v13 = v11[1];
  v14 = [v10 custodianID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  LOBYTE(v6) = [v10 isAccepted];
  type metadata accessor for CustodianInvitationResponseMessage(0);
  v15 = swift_allocObject();
  *(v15 + OBJC_IVAR____TtC13appleaccountd34CustodianInvitationResponseMessage_reason) = 11;
  v16 = v15 + OBJC_IVAR____TtC13appleaccountd34CustodianInvitationResponseMessage_flow;
  *v16 = 0;
  *(v16 + 8) = 1;
  *(v15 + 16) = 1;
  (*(v4 + 32))(v15 + OBJC_IVAR____TtC13appleaccountd34CustodianInvitationResponseMessage_custodianID, v26, v27);
  *(v15 + OBJC_IVAR____TtC13appleaccountd34CustodianInvitationResponseMessage_accepted) = v6;
  *(v15 + OBJC_IVAR____TtC13appleaccountd34CustodianInvitationResponseMessage_reason) = v28;
  v17 = v15 + OBJC_IVAR____TtC13appleaccountd34CustodianInvitationResponseMessage_flow;
  *v17 = 13;
  *(v17 + 8) = 0;
  v18 = sub_1000E9D30(v12, v13);
  _StringGuts.grow(_:)(35);

  v19 = [v10 isAccepted];
  v20 = v19 == 0;
  if (v19)
  {
    v21 = 1702195828;
  }

  else
  {
    v21 = 0x65736C6166;
  }

  if (v20)
  {
    v22 = 0xE500000000000000;
  }

  else
  {
    v22 = 0xE400000000000000;
  }

  v23 = v22;
  String.append(_:)(*&v21);

  sub_10026323C(v15, v18, 0xD000000000000021, 0x8000000100332920);

  sub_10000839C((v0 + 16));

  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_10027425C()
{
  v1 = OBJC_IVAR____TtC13appleaccountd34CustodianSetupReadinessHealthCheck__accountStore;
  v2 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC13appleaccountd34CustodianSetupReadinessHealthCheck__custodianStorage;
  v4 = sub_100005814(&unk_1003DA530, &qword_10033F460);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC13appleaccountd34CustodianSetupReadinessHealthCheck__storageController;
  v6 = sub_100005814(&unk_1003DA550, &qword_10033F620);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = OBJC_IVAR____TtC13appleaccountd34CustodianSetupReadinessHealthCheck__messenger;
  v8 = sub_100005814(&qword_1003DB060, &qword_10033F990);
  (*(*(v8 - 8) + 8))(v0 + v7, v8);
  v9 = OBJC_IVAR____TtC13appleaccountd34CustodianSetupReadinessHealthCheck__reporter;
  v10 = sub_100005814(&unk_1003D8B50, &unk_10033F600);
  (*(*(v10 - 8) + 8))(v0 + v9, v10);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CustodianSetupReadinessHealthCheck(uint64_t a1)
{
  result = qword_1003E4E48;
  if (!qword_1003E4E48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1002744A8(uint64_t a1)
{
  sub_10000DAB8(319, qword_1003DA6C0, &unk_1003DA2A0, &unk_10033BDA0);
  if (v1 <= 0x3F)
  {
    sub_10000DAB8(319, &unk_1003DA690, &unk_1003D9840, &unk_10033EFE0);
    if (v2 <= 0x3F)
    {
      sub_10000DAB8(319, &unk_1003DA6A0, &unk_1003DA2B0, &unk_10033F430);
      if (v3 <= 0x3F)
      {
        sub_10000DAB8(319, qword_1003E5670, &unk_1003DACC0, &unk_10033EFF0);
        if (v4 <= 0x3F)
        {
          sub_10000DAB8(319, qword_1003D8A50, &qword_1003D9AE0, &qword_10033E8A0);
          if (v5 <= 0x3F)
          {
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

uint64_t sub_1002746B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_100005814(&qword_1003DABF0, &qword_10033F8A0);
  __chkstk_darwin(v9 - 8);
  v11 = &v16 - v10;
  v12 = *v4;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v11, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = v12;
  v14[5] = a1;
  v14[6] = a2;
  v14[7] = a3;
  v14[8] = a4;

  sub_1000BCD5C(0, 0, v11, &unk_100347E30, v14);
}

uint64_t sub_1002747F8()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 72);
}

uint64_t sub_100274848(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1000082A8;

  return sub_100266AD0(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_100274924@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100005814(&qword_1003D9270, &qword_10033ECF0);
  v5 = __chkstk_darwin(v4 - 8);
  v88 = &v85 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v97 = (&v85 - v8);
  __chkstk_darwin(v7);
  v92 = &v85 - v9;
  v94 = type metadata accessor for UUID();
  v10 = *(v94 - 8);
  __chkstk_darwin(v94);
  v93 = &v85 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CustodianshipInfoRecord(0);
  v90 = *(v12 - 8);
  v13 = __chkstk_darwin(v12);
  v15 = &v85 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v85 - v16;
  v18 = sub_100005814(&unk_1003DF000, &unk_10033EC50);
  v19 = __chkstk_darwin(v18 - 8);
  v87 = &v85 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v96 = &v85 - v22;
  __chkstk_darwin(v21);
  v91 = &v85 - v23;
  v24 = sub_100005814(&qword_1003DA110, &qword_10033F230);
  v25 = __chkstk_darwin(v24 - 8);
  v27 = &v85 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v29 = &v85 - v28;
  v30 = sub_1002E1D08(*(a1 + *(v12 + 32)), *(a1 + *(v12 + 32) + 8));
  if (v30)
  {
    v86 = a2;
    v89 = v12;
    v31 = v17;
    v32 = v15;
    v33 = a1;
    v34 = v10;
    v35 = v30;
    v36 = [v30 creationDate];

    if (v36)
    {
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v37 = type metadata accessor for Date();
      (*(*(v37 - 8) + 56))(v27, 0, 1, v37);
    }

    else
    {
      v37 = type metadata accessor for Date();
      (*(*(v37 - 8) + 56))(v27, 1, 1, v37);
    }

    sub_1000C52F8(v27, v29);
    type metadata accessor for Date();
    v39 = *(v37 - 8);
    v40 = (*(v39 + 48))(v29, 1, v37);
    v10 = v34;
    a1 = v33;
    v15 = v32;
    v17 = v31;
    v12 = v89;
    if (v40 != 1)
    {
      return (*(v39 + 32))(v86, v29, v37);
    }
  }

  else
  {
    v38 = type metadata accessor for Date();
    (*(*(v38 - 8) + 56))(v29, 1, 1, v38);
  }

  sub_100008D3C(v29, &qword_1003DA110, &qword_10033F230);
  if (*(v95 + OBJC_IVAR____TtC13appleaccountd34ReadinessCheckGracePeriodEvaluator_user))
  {
    v41 = v92;
    sub_10028338C(a1, v92, type metadata accessor for CustodianshipInfoRecord);
    (*(v90 + 56))(v41, 0, 1, v12);
    v42 = v94;
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v43 = type metadata accessor for Logger();
    sub_100008D04(v43, qword_1003FAAB8);
    sub_10028338C(a1, v15, type metadata accessor for CustodianshipInfoRecord);
    v44 = v97;
    sub_100012D04(v41, v97, &qword_1003D9270, &qword_10033ECF0);
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v45, v46))
    {
      LODWORD(v96) = v46;
      v47 = swift_slowAlloc();
      v95 = swift_slowAlloc();
      v99 = v95;
      *v47 = 136315394;
      v48 = v93;
      v91 = *(v10 + 16);
      (v91)(v93, v15, v42);
      sub_1002833F4(v15, type metadata accessor for CustodianshipInfoRecord);
      sub_100282F14(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v49 = dispatch thunk of CustomStringConvertible.description.getter();
      v51 = v50;
      v89 = *(v10 + 8);
      v89(v48, v42);
      v52 = sub_10021145C(v49, v51, &v99);

      *(v47 + 4) = v52;
      *(v47 + 12) = 2080;
      v53 = v88;
      sub_100012D04(v97, v88, &qword_1003D9270, &qword_10033ECF0);
      if ((*(v90 + 48))(v53, 1, v12) == 1)
      {
        sub_100008D3C(v53, &qword_1003D9270, &qword_10033ECF0);
        v54 = 0xE100000000000000;
        v55 = 45;
      }

      else
      {
        (v91)(v48, &v53[*(v12 + 20)], v42);
        sub_1002833F4(v53, type metadata accessor for CustodianshipInfoRecord);
        v55 = UUID.uuidString.getter();
        v54 = v77;
        v89(v48, v42);
      }

      sub_100008D3C(v97, &qword_1003D9270, &qword_10033ECF0);
      v78 = sub_10021145C(v55, v54, &v99);

      *(v47 + 14) = v78;
      _os_log_impl(&_mh_execute_header, v45, v96, "No creation date found in CustodianshipInfoRecord, recordID: %s, custodianID: %s", v47, 0x16u);
      swift_arrayDestroy();

      v41 = v92;
    }

    else
    {
      sub_1002833F4(v15, type metadata accessor for CustodianshipInfoRecord);

      sub_100008D3C(v44, &qword_1003D9270, &qword_10033ECF0);
    }

    type metadata accessor for AACustodianError(0);
    v98 = -7103;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_100282F14(&qword_1003D8140, type metadata accessor for AACustodianError, &unk_10033DF94);
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();
    v79 = &qword_1003D9270;
    v80 = &qword_10033ECF0;
  }

  else
  {
    v56 = type metadata accessor for CustodianRecord(0);
    v57 = *(v56 - 8);
    v41 = v91;
    (*(v57 + 56))(v91, 1, 1, v56);
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v58 = type metadata accessor for Logger();
    sub_100008D04(v58, qword_1003FAAB8);
    sub_10028338C(a1, v17, type metadata accessor for CustodianshipInfoRecord);
    v59 = v96;
    sub_100012D04(v41, v96, &unk_1003DF000, &unk_10033EC50);
    v60 = Logger.logObject.getter();
    v61 = static os_log_type_t.default.getter();
    v62 = os_log_type_enabled(v60, v61);
    v63 = v93;
    if (v62)
    {
      LODWORD(v95) = v61;
      v97 = v60;
      v64 = swift_slowAlloc();
      v89 = v56;
      v65 = v64;
      v92 = swift_slowAlloc();
      v99 = v92;
      *v65 = 136315394;
      v66 = v94;
      v88 = *(v10 + 16);
      (v88)(v63, v17, v94);
      sub_1002833F4(v17, type metadata accessor for CustodianshipInfoRecord);
      sub_100282F14(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v67 = dispatch thunk of CustomStringConvertible.description.getter();
      v69 = v68;
      v70 = *(v10 + 8);
      v70(v63, v66);
      v71 = sub_10021145C(v67, v69, &v99);

      *(v65 + 4) = v71;
      v90 = v65;
      *(v65 + 12) = 2080;
      v72 = v89;
      v73 = v87;
      sub_100012D04(v96, v87, &unk_1003DF000, &unk_10033EC50);
      if ((*(v57 + 48))(v73, 1, v72) == 1)
      {
        sub_100008D3C(v73, &unk_1003DF000, &unk_10033EC50);
        v74 = 0xE100000000000000;
        v75 = 45;
      }

      else
      {
        (v88)(v63, v73 + v72[5], v66);
        sub_1002833F4(v73, type metadata accessor for CustodianRecord);
        v75 = UUID.uuidString.getter();
        v74 = v81;
        v70(v63, v66);
      }

      sub_100008D3C(v96, &unk_1003DF000, &unk_10033EC50);
      v82 = sub_10021145C(v75, v74, &v99);

      v83 = v90;
      *(v90 + 14) = v82;
      v84 = v97;
      _os_log_impl(&_mh_execute_header, v97, v95, "No creation date found in CustodianRecord, recordID: %s, custodianID: %s", v83, 0x16u);
      swift_arrayDestroy();

      v41 = v91;
    }

    else
    {
      sub_1002833F4(v17, type metadata accessor for CustodianshipInfoRecord);

      sub_100008D3C(v59, &unk_1003DF000, &unk_10033EC50);
    }

    type metadata accessor for AACustodianError(0);
    v98 = -7098;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_100282F14(&qword_1003D8140, type metadata accessor for AACustodianError, &unk_10033DF94);
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();
    v79 = &unk_1003DF000;
    v80 = &unk_10033EC50;
  }

  return sub_100008D3C(v41, v79, v80);
}

uint64_t sub_1002756D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100005814(&qword_1003D9270, &qword_10033ECF0);
  v5 = __chkstk_darwin(v4 - 8);
  v91 = &v88 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v100 = (&v88 - v8);
  __chkstk_darwin(v7);
  v10 = &v88 - v9;
  v11 = type metadata accessor for UUID();
  v96 = *(v11 - 8);
  v97 = v11;
  __chkstk_darwin(v11);
  v95 = &v88 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for CustodianRecord(0);
  v93 = *(v13 - 8);
  v14 = __chkstk_darwin(v13);
  v16 = &v88 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v88 - v17;
  v19 = sub_100005814(&unk_1003DF000, &unk_10033EC50);
  v20 = __chkstk_darwin(v19 - 8);
  v90 = &v88 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v99 = &v88 - v23;
  __chkstk_darwin(v22);
  v94 = (&v88 - v24);
  v25 = sub_100005814(&qword_1003DA110, &qword_10033F230);
  v26 = __chkstk_darwin(v25 - 8);
  v28 = &v88 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v30 = &v88 - v29;
  v31 = sub_1002E1D08(*(a1 + *(v13 + 44)), *(a1 + *(v13 + 44) + 8));
  if (v31)
  {
    v89 = a2;
    v92 = v13;
    v32 = v18;
    v33 = v16;
    v34 = a1;
    v35 = v10;
    v36 = v31;
    v37 = [v31 creationDate];

    if (v37)
    {
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v38 = type metadata accessor for Date();
      (*(*(v38 - 8) + 56))(v28, 0, 1, v38);
    }

    else
    {
      v38 = type metadata accessor for Date();
      (*(*(v38 - 8) + 56))(v28, 1, 1, v38);
    }

    sub_1000C52F8(v28, v30);
    type metadata accessor for Date();
    v40 = *(v38 - 8);
    v41 = (*(v40 + 48))(v30, 1, v38);
    v10 = v35;
    a1 = v34;
    v16 = v33;
    v18 = v32;
    v13 = v92;
    if (v41 != 1)
    {
      return (*(v40 + 32))(v89, v30, v38);
    }
  }

  else
  {
    v39 = type metadata accessor for Date();
    (*(*(v39 - 8) + 56))(v30, 1, 1, v39);
  }

  sub_100008D3C(v30, &qword_1003DA110, &qword_10033F230);
  if (*(v98 + OBJC_IVAR____TtC13appleaccountd34ReadinessCheckGracePeriodEvaluator_user))
  {
    v42 = type metadata accessor for CustodianshipInfoRecord(0);
    v43 = *(v42 - 8);
    (*(v43 + 56))(v10, 1, 1, v42);
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v44 = type metadata accessor for Logger();
    sub_100008D04(v44, qword_1003FAAB8);
    sub_10028338C(a1, v16, type metadata accessor for CustodianRecord);
    v45 = v100;
    sub_100012D04(v10, v100, &qword_1003D9270, &qword_10033ECF0);
    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.default.getter();
    v48 = os_log_type_enabled(v46, v47);
    v49 = v97;
    v50 = v95;
    if (v48)
    {
      v93 = v46;
      LODWORD(v98) = v47;
      v99 = v10;
      v51 = swift_slowAlloc();
      v94 = swift_slowAlloc();
      v102 = v94;
      *v51 = 136315394;
      v52 = v43;
      v53 = v96;
      v92 = *(v96 + 16);
      v92(v50, v16, v49);
      sub_1002833F4(v16, type metadata accessor for CustodianRecord);
      sub_100282F14(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v54 = dispatch thunk of CustomStringConvertible.description.getter();
      v56 = v55;
      v96 = *(v53 + 8);
      (v96)(v50, v49);
      v57 = sub_10021145C(v54, v56, &v102);

      *(v51 + 4) = v57;
      *(v51 + 12) = 2080;
      v58 = v91;
      sub_100012D04(v100, v91, &qword_1003D9270, &qword_10033ECF0);
      if ((*(v52 + 48))(v58, 1, v42) == 1)
      {
        sub_100008D3C(v58, &qword_1003D9270, &qword_10033ECF0);
        v59 = 0xE100000000000000;
        v60 = 45;
      }

      else
      {
        v92(v50, &v58[*(v42 + 20)], v49);
        sub_1002833F4(v58, type metadata accessor for CustodianshipInfoRecord);
        v60 = UUID.uuidString.getter();
        v59 = v79;
        (v96)(v50, v49);
      }

      v80 = v93;
      sub_100008D3C(v100, &qword_1003D9270, &qword_10033ECF0);
      v81 = sub_10021145C(v60, v59, &v102);

      *(v51 + 14) = v81;
      _os_log_impl(&_mh_execute_header, v80, v98, "No creation date found in CustodianshipInfoRecord, recordID: %s, custodianID: %s", v51, 0x16u);
      swift_arrayDestroy();

      v10 = v99;
    }

    else
    {
      sub_1002833F4(v16, type metadata accessor for CustodianRecord);

      sub_100008D3C(v45, &qword_1003D9270, &qword_10033ECF0);
    }

    type metadata accessor for AACustodianError(0);
    v101 = -7103;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_100282F14(&qword_1003D8140, type metadata accessor for AACustodianError, &unk_10033DF94);
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();
    v82 = &qword_1003D9270;
    v83 = &qword_10033ECF0;
    v84 = v10;
  }

  else
  {
    v61 = v94;
    sub_10028338C(a1, v94, type metadata accessor for CustodianRecord);
    (v93[7].isa)(v61, 0, 1, v13);
    v62 = v96;
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v63 = type metadata accessor for Logger();
    sub_100008D04(v63, qword_1003FAAB8);
    sub_10028338C(a1, v18, type metadata accessor for CustodianRecord);
    v64 = v99;
    sub_100012D04(v61, v99, &unk_1003DF000, &unk_10033EC50);
    v65 = Logger.logObject.getter();
    v66 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v65, v66))
    {
      LODWORD(v98) = v66;
      v100 = v65;
      v67 = swift_slowAlloc();
      v92 = swift_slowAlloc();
      v102 = v92;
      *v67 = 136315394;
      v68 = v95;
      v69 = v97;
      v91 = *(v62 + 16);
      (v91)(v95, v18, v97);
      sub_1002833F4(v18, type metadata accessor for CustodianRecord);
      sub_100282F14(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v70 = dispatch thunk of CustomStringConvertible.description.getter();
      v72 = v71;
      v73 = *(v62 + 8);
      v73(v68, v69);
      v74 = sub_10021145C(v70, v72, &v102);

      *(v67 + 4) = v74;
      *(v67 + 12) = 2080;
      v75 = v90;
      sub_100012D04(v99, v90, &unk_1003DF000, &unk_10033EC50);
      if ((v93[6].isa)(v75, 1, v13) == 1)
      {
        sub_100008D3C(v75, &unk_1003DF000, &unk_10033EC50);
        v76 = 0xE100000000000000;
        v77 = 45;
      }

      else
      {
        (v91)(v68, v75 + *(v13 + 20), v69);
        sub_1002833F4(v75, type metadata accessor for CustodianRecord);
        v77 = UUID.uuidString.getter();
        v76 = v85;
        v73(v68, v69);
      }

      sub_100008D3C(v99, &unk_1003DF000, &unk_10033EC50);
      v86 = sub_10021145C(v77, v76, &v102);

      *(v67 + 14) = v86;
      v87 = v100;
      _os_log_impl(&_mh_execute_header, v100, v98, "No creation date found in CustodianRecord, recordID: %s, custodianID: %s", v67, 0x16u);
      swift_arrayDestroy();

      v61 = v94;
    }

    else
    {
      sub_1002833F4(v18, type metadata accessor for CustodianRecord);

      sub_100008D3C(v64, &unk_1003DF000, &unk_10033EC50);
    }

    type metadata accessor for AACustodianError(0);
    v101 = -7098;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_100282F14(&qword_1003D8140, type metadata accessor for AACustodianError, &unk_10033DF94);
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();
    v82 = &unk_1003DF000;
    v83 = &unk_10033EC50;
    v84 = v61;
  }

  return sub_100008D3C(v84, v82, v83);
}

uint64_t sub_100276484(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100005814(&qword_1003E4F18, &qword_100347EE0);
  __chkstk_darwin(v4 - 8);
  v6 = &v37 - v5;
  v7 = sub_100005814(&qword_1003E4F20, &qword_100347EE8);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v37 - v9;
  if (qword_1003D7F48 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_100008D04(v11, qword_1003FAAB8);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "Inferring record setup version...", v14, 2u);
  }

  if (*(v2 + OBJC_IVAR____TtC13appleaccountd34ReadinessCheckGracePeriodEvaluator_user))
  {
    v15 = 0xE100000000000000;
    v16 = 45;
  }

  else
  {
    type metadata accessor for CustodianRecord(0);
    v16 = UUID.uuidString.getter();
    v15 = v17;
  }

  v18 = (a1 + *(type metadata accessor for CustodianRecord(0) + 52));
  v19 = v18[1];
  if (v19)
  {
    v38 = v8;
    v20 = *v18;
    Regex.init(_regexString:version:)();
    Regex.firstMatch(in:)();
    v26 = sub_100005814(&qword_1003E4F28, qword_100347EF0);
    if ((*(*(v26 - 8) + 48))(v6, 1, v26) == 1)
    {
      sub_100008D3C(v6, &qword_1003E4F18, &qword_100347EE0);

      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        *v29 = 136315394;
        *(v29 + 4) = sub_10021145C(v20, v19, &v39);
        *(v29 + 12) = 2080;
        v30 = sub_10021145C(v16, v15, &v39);

        *(v29 + 14) = v30;
        _os_log_impl(&_mh_execute_header, v27, v28, "CustodianRecord.keyCreatedOnBuild %s has old format, confirmed pre-LuckCheer, custodianID: %s", v29, 0x16u);
        swift_arrayDestroy();
      }

      else
      {
      }

      (*(v38 + 8))(v10, v7);
      return 1;
    }

    else
    {
      sub_100008D3C(v6, &qword_1003E4F18, &qword_100347EE0);

      v33 = Logger.logObject.getter();
      v34 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        *v35 = 136315394;
        *(v35 + 4) = sub_10021145C(v20, v19, &v39);
        *(v35 + 12) = 2080;
        v36 = sub_10021145C(v16, v15, &v39);

        *(v35 + 14) = v36;
        _os_log_impl(&_mh_execute_header, v33, v34, "CustodianRecord.keyCreatedOnBuild %s has new format, confirmed LuckCheer+, custodianID: %s", v35, 0x16u);
        v31 = 2;
        swift_arrayDestroy();

        (*(v38 + 8))(v10, v7);
      }

      else
      {

        (*(v38 + 8))(v10, v7);
        return 2;
      }
    }
  }

  else
  {
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v39 = v24;
      *v23 = 136315138;
      v25 = sub_10021145C(v16, v15, &v39);

      *(v23 + 4) = v25;
      _os_log_impl(&_mh_execute_header, v21, v22, "CustodianRecord has no keyCreatedOnBuild, defaulting to unknown setup version, custodianID: %s", v23, 0xCu);
      sub_10000839C(v24);
    }

    else
    {
    }

    return 0;
  }

  return v31;
}

uint64_t sub_100276B54(uint64_t a1, unsigned int a2)
{
  v4 = v3;
  v5 = v2;
  v74 = a2;
  v79 = a1;
  v6 = type metadata accessor for Date();
  v80 = *(v6 - 8);
  v7 = __chkstk_darwin(v6);
  v76 = (v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __chkstk_darwin(v7);
  v75 = (v66 - v10);
  v11 = __chkstk_darwin(v9);
  v77 = v66 - v12;
  v13 = __chkstk_darwin(v11);
  v15 = v66 - v14;
  __chkstk_darwin(v13);
  v17 = v66 - v16;
  if (qword_1003D7F48 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  v19 = sub_100008D04(v18, qword_1003FAAB8);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v78 = v19;
    *v22 = 0;
    _os_log_impl(&_mh_execute_header, v20, v21, "Determining record setup age...", v22, 2u);
    v4 = v3;
    v19 = v78;
  }

  v23 = sub_1002A217C();
  if (v24)
  {
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v5 = 2;
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&_mh_execute_header, v25, v26, "No recent period configured, assuming setup is recent", v27, 2u);
    }

    else
    {

      return 2;
    }

    return v5;
  }

  v28 = v23;
  if (*(v5 + OBJC_IVAR____TtC13appleaccountd34ReadinessCheckGracePeriodEvaluator_user) == 1)
  {
    type metadata accessor for CustodianshipInfoRecord(0);
    v29 = v79;
    v30 = UUID.uuidString.getter();
    v31 = v29;
    v73 = v30;
    v33 = v32;
  }

  else
  {
    v33 = 0xE100000000000000;
    v73 = 45;
    v31 = v79;
  }

  sub_100274924(v31, v17);
  if (v4)
  {

    return v5;
  }

  static Date.now.getter();
  v70 = v28;
  v34 = v33;
  Date.addingTimeInterval(_:)();
  v71 = static Date.< infix(_:_:)();
  v78 = v19;
  v35 = *(v80 + 16);
  v35(v75, v15, v6);
  v35(v76, v17, v6);

  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.default.getter();
  v72 = v34;

  v69 = v37;
  v38 = os_log_type_enabled(v36, v37);
  v79 = 0;
  if (v38)
  {
    v39 = swift_slowAlloc();
    v68 = swift_slowAlloc();
    v82 = v68;
    *v39 = 136316162;
    v66[1] = sub_100282F14(&qword_1003DB608, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    v67 = v36;
    v40 = v75;
    v66[0] = dispatch thunk of CustomStringConvertible.description.getter();
    v42 = v41;
    v43 = *(v80 + 8);
    v43(v40, v6);
    v44 = sub_10021145C(v66[0], v42, &v82);

    *(v39 + 4) = v44;
    v75 = v5;
    *(v39 + 12) = 2080;
    v45 = v76;
    v46 = dispatch thunk of CustomStringConvertible.description.getter();
    v48 = v47;
    v76 = v43;
    v43(v45, v6);
    v49 = sub_10021145C(v46, v48, &v82);

    *(v39 + 14) = v49;
    *(v39 + 22) = 2048;
    *(v39 + 24) = v70;
    *(v39 + 32) = 1024;
    LOBYTE(v49) = v71;
    *(v39 + 34) = v71 & 1;
    *(v39 + 38) = 2080;
    v50 = v72;
    *(v39 + 40) = sub_10021145C(v73, v72, &v82);
    v51 = v67;
    _os_log_impl(&_mh_execute_header, v67, v69, "Date.now: %s, record created on: %s, recent period: %f, is in recent period: %{BOOL}d, custodianID: %s", v39, 0x30u);
    swift_arrayDestroy();

    if ((v49 & 1) == 0)
    {
LABEL_16:
      v5 = sub_1002A2248(v74) & 1;
      goto LABEL_19;
    }
  }

  else
  {

    v52 = *(v80 + 8);
    v52(v76, v6);
    v76 = v52;
    v52(v75, v6);
    v50 = v72;
    if ((v71 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  v5 = 2;
LABEL_19:

  v53 = Logger.logObject.getter();
  v54 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v53, v54))
  {
    v55 = swift_slowAlloc();
    v75 = v53;
    v56 = v55;
    v57 = swift_slowAlloc();
    v78 = v17;
    v82 = v57;
    *v56 = 136315394;
    v81 = v5;
    v58 = String.init<A>(describing:)();
    v60 = sub_10021145C(v58, v59, &v82);

    *(v56 + 4) = v60;
    *(v56 + 12) = 2080;
    v61 = sub_10021145C(v73, v50, &v82);

    *(v56 + 14) = v61;
    v62 = v75;
    _os_log_impl(&_mh_execute_header, v75, v54, "Record setup age: %s, custodianID: %s", v56, 0x16u);
    swift_arrayDestroy();

    v63 = v76;
    (v76)(v77, v6);
    v63(v15, v6);
    v63(v78, v6);
  }

  else
  {

    v64 = v76;
    (v76)(v77, v6);
    v64(v15, v6);
    v64(v17, v6);
  }

  return v5;
}

uint64_t sub_100277330(uint64_t a1, unsigned int a2)
{
  v4 = v3;
  v5 = v2;
  v73 = a2;
  v7 = type metadata accessor for Date();
  v78 = *(v7 - 8);
  v8 = __chkstk_darwin(v7);
  v75 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v74 = &v64 - v11;
  v12 = __chkstk_darwin(v10);
  v76 = &v64 - v13;
  v14 = __chkstk_darwin(v12);
  v77 = &v64 - v15;
  __chkstk_darwin(v14);
  v17 = &v64 - v16;
  if (qword_1003D7F48 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  v79 = sub_100008D04(v18, qword_1003FAAB8);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&_mh_execute_header, v19, v20, "Determining record setup age...", v21, 2u);
    v4 = v3;
  }

  v22 = sub_1002A217C();
  if (v23)
  {
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = 2;
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&_mh_execute_header, v24, v25, "No recent period configured, assuming setup is recent", v27, 2u);
    }

    else
    {

      return 2;
    }

    return v26;
  }

  v28 = v22;
  if (*(v5 + OBJC_IVAR____TtC13appleaccountd34ReadinessCheckGracePeriodEvaluator_user))
  {
    v26 = 0xE100000000000000;
    v29 = 45;
  }

  else
  {
    type metadata accessor for CustodianRecord(0);
    v29 = UUID.uuidString.getter();
    v26 = v30;
  }

  sub_1002756D4(a1, v17);
  if (v4)
  {

    return v26;
  }

  v69 = v29;
  v70 = v5;
  v71 = 0;
  v67 = v28;
  v31 = v77;
  static Date.now.getter();
  Date.addingTimeInterval(_:)();
  v68 = static Date.< infix(_:_:)();
  v32 = *(v78 + 16);
  v33 = v74;
  v32(v74, v31, v7);
  v34 = v75;
  v32(v75, v17, v7);

  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.default.getter();

  v37 = os_log_type_enabled(v35, v36);
  v72 = v26;
  if (v37)
  {
    v38 = v33;
    v39 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    v81 = v66;
    *v39 = 136316162;
    v64 = sub_100282F14(&qword_1003DB608, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    v40 = dispatch thunk of CustomStringConvertible.description.getter();
    v42 = v41;
    v65 = v36;
    v43 = *(v78 + 8);
    v43(v38, v7);
    v44 = sub_10021145C(v40, v42, &v81);

    *(v39 + 4) = v44;
    *(v39 + 12) = 2080;
    v45 = v75;
    v46 = dispatch thunk of CustomStringConvertible.description.getter();
    v48 = v47;
    v75 = v43;
    v43(v45, v7);
    v49 = sub_10021145C(v46, v48, &v81);

    *(v39 + 14) = v49;
    *(v39 + 22) = 2048;
    *(v39 + 24) = v67;
    *(v39 + 32) = 1024;
    v50 = v68;
    *(v39 + 34) = v68 & 1;
    *(v39 + 38) = 2080;
    *(v39 + 40) = sub_10021145C(v69, v72, &v81);
    _os_log_impl(&_mh_execute_header, v35, v65, "Date.now: %s, record created on: %s, recent period: %f, is in recent period: %{BOOL}d, custodianID: %s", v39, 0x30u);
    swift_arrayDestroy();

    if ((v50 & 1) == 0)
    {
LABEL_16:
      v26 = sub_1002A2248(v73) & 1;
      goto LABEL_19;
    }
  }

  else
  {

    v51 = *(v78 + 8);
    v51(v34, v7);
    v75 = v51;
    v51(v33, v7);
    if ((v68 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  v26 = 2;
LABEL_19:
  v52 = v72;

  v53 = Logger.logObject.getter();
  v54 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v53, v54))
  {
    v55 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    v79 = v17;
    v81 = v56;
    *v55 = 136315394;
    v80 = v26;
    v57 = String.init<A>(describing:)();
    v59 = sub_10021145C(v57, v58, &v81);

    *(v55 + 4) = v59;
    *(v55 + 12) = 2080;
    v60 = sub_10021145C(v69, v52, &v81);

    *(v55 + 14) = v60;
    _os_log_impl(&_mh_execute_header, v53, v54, "Record setup age: %s, custodianID: %s", v55, 0x16u);
    swift_arrayDestroy();

    v61 = v75;
    (v75)(v76, v7);
    v61(v77, v7);
    v61(v79, v7);
  }

  else
  {

    v62 = v75;
    (v75)(v76, v7);
    v62(v77, v7);
    v62(v17, v7);
  }

  return v26;
}

uint64_t sub_100277AEC(uint64_t a1)
{
  v2 = type metadata accessor for CustodianRecord(0);
  __chkstk_darwin(v2 - 8);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100005814(&unk_1003DA200, &unk_10033FA80);
  __chkstk_darwin(v5);
  v7 = (v9 - v6);
  sub_100012D04(a1, v9 - v6, &unk_1003DA200, &unk_10033FA80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9[1] = *v7;
    sub_100005814(&unk_1003D9200, &unk_10033EC90);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    sub_100283458(v7, v4, type metadata accessor for CustodianRecord);
    sub_100005814(&unk_1003D9200, &unk_10033EC90);
    return CheckedContinuation.resume(returning:)();
  }
}

uint64_t sub_100277C64(uint64_t a1)
{
  v2 = type metadata accessor for CustodianshipInfoRecord(0);
  __chkstk_darwin(v2 - 8);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100005814(&unk_1003DA0E0, &unk_10033F1D0);
  __chkstk_darwin(v5);
  v7 = (v9 - v6);
  sub_100012D04(a1, v9 - v6, &unk_1003DA0E0, &unk_10033F1D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9[1] = *v7;
    sub_100005814(&unk_1003D9260, &unk_10033ECE0);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    sub_100283458(v7, v4, type metadata accessor for CustodianshipInfoRecord);
    sub_100005814(&unk_1003D9260, &unk_10033ECE0);
    return CheckedContinuation.resume(returning:)();
  }
}

uint64_t sub_100277DDC(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v62 = a3;
  v60 = a2;
  v61 = a6;
  v58 = a5;
  v59 = a4;
  v7 = sub_100005814(&unk_1003DA210, qword_10033EE50);
  v55 = *(v7 - 8);
  v56 = v7;
  __chkstk_darwin(v7);
  v9 = &v51 - v8;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = type metadata accessor for CustodianshipInfoRecord(0);
  v53 = *(v57 - 8);
  v14 = *(v53 + 64);
  v15 = __chkstk_darwin(v57);
  v54 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v15);
  v64 = &v51 - v17;
  __chkstk_darwin(v16);
  v19 = &v51 - v18;
  if (qword_1003D7F58 != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  sub_100008D04(v20, qword_1003FAAE8);
  sub_10028338C(a1, v19, type metadata accessor for CustodianshipInfoRecord);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v51 = v9;
    v24 = v23;
    v25 = swift_slowAlloc();
    v52 = a1;
    v65[0] = v25;
    *v24 = 136315394;
    (*(v11 + 16))(v13, v19, v10);
    sub_1002833F4(v19, type metadata accessor for CustodianshipInfoRecord);
    sub_100282F14(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v26 = dispatch thunk of CustomStringConvertible.description.getter();
    v28 = v27;
    (*(v11 + 8))(v13, v10);
    v29 = sub_10021145C(v26, v28, v65);

    *(v24 + 4) = v29;
    *(v24 + 12) = 2080;
    *(v24 + 14) = sub_10021145C(0xD000000000000017, 0x800000010032CE50, v65);
    _os_log_impl(&_mh_execute_header, v21, v22, "Storage Controller: Saving record with modify block recordID: %s, type: %s...", v24, 0x16u);
    swift_arrayDestroy();
    a1 = v52;

    v9 = v51;
  }

  else
  {
    sub_1002833F4(v19, type metadata accessor for CustodianshipInfoRecord);
  }

  v31 = v55;
  v30 = v56;
  (*(v55 + 16))(v9, v63 + OBJC_IVAR____TtC13appleaccountd17StorageController__cloudStorage, v56);
  Dependency.wrappedValue.getter();
  (*(v31 + 8))(v9, v30);
  v56 = sub_1000080F8(v65, v65[3]);
  v32 = v62;
  v33 = v60;
  v60(a1);
  v34 = v54;
  sub_10028338C(a1, v54, type metadata accessor for CustodianshipInfoRecord);
  v35 = (*(v53 + 80) + 16) & ~*(v53 + 80);
  v36 = (v14 + v35 + 7) & 0xFFFFFFFFFFFFFFF8;
  v37 = (v36 + 15) & 0xFFFFFFFFFFFFFFF8;
  v38 = (v37 + 23) & 0xFFFFFFFFFFFFFFF8;
  v39 = swift_allocObject();
  sub_100283458(v34, v39 + v35, type metadata accessor for CustodianshipInfoRecord);
  *(v39 + v36) = v63;
  v40 = (v39 + v37);
  v41 = v61;
  *v40 = v58;
  v40[1] = v41;
  *(v39 + v38) = v59;
  v42 = (v39 + ((v38 + 15) & 0xFFFFFFFFFFFFFFF8));
  *v42 = v33;
  v42[1] = v32;
  v43 = qword_1003D7EB0;

  if (v43 != -1)
  {
    swift_once();
  }

  if (*(v64 + *(v57 + 36)) == 1)
  {
    if (qword_1003D7EC0 != -1)
    {
      swift_once();
    }

    v44 = &qword_1003FA9D0;
  }

  else
  {
    if (qword_1003D7EB8 != -1)
    {
      swift_once();
    }

    v44 = &qword_1003FA9C0;
  }

  v45 = *v44;
  v46 = v44[1];

  v47 = sub_1002E2BC4(v45, v46);

  v48 = [v47 privateCloudDatabase];

  v49 = v64;
  sub_100175368(v64, v48, sub_100282D38, v39);

  sub_1002833F4(v49, type metadata accessor for CustodianshipInfoRecord);
  return sub_10000839C(v65);
}

uint64_t sub_1002784C8(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v62 = a3;
  v60 = a2;
  v61 = a6;
  v58 = a5;
  v59 = a4;
  v7 = sub_100005814(&unk_1003DA210, qword_10033EE50);
  v55 = *(v7 - 8);
  v56 = v7;
  __chkstk_darwin(v7);
  v9 = &v51 - v8;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = type metadata accessor for CustodianRecord(0);
  v53 = *(v57 - 8);
  v14 = *(v53 + 64);
  v15 = __chkstk_darwin(v57);
  v54 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v15);
  v64 = &v51 - v17;
  __chkstk_darwin(v16);
  v19 = &v51 - v18;
  if (qword_1003D7F58 != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  sub_100008D04(v20, qword_1003FAAE8);
  sub_10028338C(a1, v19, type metadata accessor for CustodianRecord);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v51 = v9;
    v24 = v23;
    v25 = swift_slowAlloc();
    v52 = a1;
    v65[0] = v25;
    *v24 = 136315394;
    (*(v11 + 16))(v13, v19, v10);
    sub_1002833F4(v19, type metadata accessor for CustodianRecord);
    sub_100282F14(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v26 = dispatch thunk of CustomStringConvertible.description.getter();
    v28 = v27;
    (*(v11 + 8))(v13, v10);
    v29 = sub_10021145C(v26, v28, v65);

    *(v24 + 4) = v29;
    *(v24 + 12) = 2080;
    *(v24 + 14) = sub_10021145C(0x6169646F74737543, 0xEF64726F6365526ELL, v65);
    _os_log_impl(&_mh_execute_header, v21, v22, "Storage Controller: Saving record with modify block recordID: %s, type: %s...", v24, 0x16u);
    swift_arrayDestroy();
    a1 = v52;

    v9 = v51;
  }

  else
  {
    sub_1002833F4(v19, type metadata accessor for CustodianRecord);
  }

  v31 = v55;
  v30 = v56;
  (*(v55 + 16))(v9, v63 + OBJC_IVAR____TtC13appleaccountd17StorageController__cloudStorage, v56);
  Dependency.wrappedValue.getter();
  (*(v31 + 8))(v9, v30);
  v56 = sub_1000080F8(v65, v65[3]);
  v32 = v62;
  v33 = v60;
  v60(a1);
  v34 = v54;
  sub_10028338C(a1, v54, type metadata accessor for CustodianRecord);
  v35 = (*(v53 + 80) + 16) & ~*(v53 + 80);
  v36 = (v14 + v35 + 7) & 0xFFFFFFFFFFFFFFF8;
  v37 = (v36 + 15) & 0xFFFFFFFFFFFFFFF8;
  v38 = (v37 + 23) & 0xFFFFFFFFFFFFFFF8;
  v39 = swift_allocObject();
  sub_100283458(v34, v39 + v35, type metadata accessor for CustodianRecord);
  *(v39 + v36) = v63;
  v40 = (v39 + v37);
  v41 = v61;
  *v40 = v58;
  v40[1] = v41;
  *(v39 + v38) = v59;
  v42 = (v39 + ((v38 + 15) & 0xFFFFFFFFFFFFFFF8));
  *v42 = v33;
  v42[1] = v32;
  v43 = qword_1003D7EB0;

  if (v43 != -1)
  {
    swift_once();
  }

  if (*(v64 + *(v57 + 48)) == 1)
  {
    if (qword_1003D7EC0 != -1)
    {
      swift_once();
    }

    v44 = &qword_1003FA9D0;
  }

  else
  {
    if (qword_1003D7EB8 != -1)
    {
      swift_once();
    }

    v44 = &qword_1003FA9C0;
  }

  v45 = *v44;
  v46 = v44[1];

  v47 = sub_1002E2BC4(v45, v46);

  v48 = [v47 privateCloudDatabase];

  v49 = v64;
  sub_100174A80(v64, v48, sub_1002836A8, v39);

  sub_1002833F4(v49, type metadata accessor for CustodianRecord);
  return sub_10000839C(v65);
}

uint64_t sub_100278BBC(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v60 = a6;
  v61 = a3;
  v57 = a5;
  v58 = a4;
  v59 = a2;
  v7 = sub_100005814(&unk_1003DA210, qword_10033EE50);
  v55 = *(v7 - 8);
  v56 = v7;
  __chkstk_darwin(v7);
  v9 = &v51 - v8;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = type metadata accessor for BeneficiaryInfoRecord(0);
  v53 = *(v62 - 8);
  v14 = *(v53 + 64);
  v15 = __chkstk_darwin(v62);
  v54 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v15);
  v64 = &v51 - v17;
  __chkstk_darwin(v16);
  v19 = &v51 - v18;
  if (qword_1003D7F58 != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  sub_100008D04(v20, qword_1003FAAE8);
  sub_10028338C(a1, v19, type metadata accessor for BeneficiaryInfoRecord);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v51 = v9;
    v24 = v23;
    v25 = swift_slowAlloc();
    v52 = a1;
    v65[0] = v25;
    *v24 = 136315394;
    (*(v11 + 16))(v13, &v19[*(v62 + 32)], v10);
    sub_1002833F4(v19, type metadata accessor for BeneficiaryInfoRecord);
    sub_100282F14(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v26 = dispatch thunk of CustomStringConvertible.description.getter();
    v28 = v27;
    (*(v11 + 8))(v13, v10);
    v29 = sub_10021145C(v26, v28, v65);

    *(v24 + 4) = v29;
    *(v24 + 12) = 2080;
    *(v24 + 14) = sub_10021145C(0xD000000000000015, 0x8000000100330410, v65);
    _os_log_impl(&_mh_execute_header, v21, v22, "Storage Controller: Saving record with modify block recordID: %s, type: %s...", v24, 0x16u);
    swift_arrayDestroy();
    a1 = v52;

    v9 = v51;
  }

  else
  {
    sub_1002833F4(v19, type metadata accessor for BeneficiaryInfoRecord);
  }

  v31 = v55;
  v30 = v56;
  (*(v55 + 16))(v9, v63 + OBJC_IVAR____TtC13appleaccountd17StorageController__cloudStorage, v56);
  Dependency.wrappedValue.getter();
  (*(v31 + 8))(v9, v30);
  v56 = sub_1000080F8(v65, v65[3]);
  v32 = v61;
  v33 = v59;
  v59(a1);
  v34 = v54;
  sub_10028338C(a1, v54, type metadata accessor for BeneficiaryInfoRecord);
  v35 = (*(v53 + 80) + 16) & ~*(v53 + 80);
  v36 = (v14 + v35 + 7) & 0xFFFFFFFFFFFFFFF8;
  v37 = (v36 + 15) & 0xFFFFFFFFFFFFFFF8;
  v38 = (v37 + 23) & 0xFFFFFFFFFFFFFFF8;
  v39 = swift_allocObject();
  sub_100283458(v34, v39 + v35, type metadata accessor for BeneficiaryInfoRecord);
  *(v39 + v36) = v63;
  v40 = (v39 + v37);
  v41 = v60;
  *v40 = v57;
  v40[1] = v41;
  *(v39 + v38) = v58;
  v42 = (v39 + ((v38 + 15) & 0xFFFFFFFFFFFFFFF8));
  *v42 = v33;
  v42[1] = v32;
  v43 = qword_1003D7EB0;

  if (v43 != -1)
  {
    swift_once();
  }

  if (*(v64 + *(v62 + 40)) == 1)
  {
    if (qword_1003D7ED8 != -1)
    {
      swift_once();
    }

    v44 = &qword_1003FAA00;
  }

  else
  {
    if (qword_1003D7ED0 != -1)
    {
      swift_once();
    }

    v44 = &qword_1003FA9F0;
  }

  v45 = *v44;
  v46 = v44[1];

  v47 = sub_1002E2BC4(v45, v46);

  v48 = [v47 privateCloudDatabase];

  v49 = v64;
  sub_100175958(v64, v48, sub_100282F60, v39);

  sub_1002833F4(v49, type metadata accessor for BeneficiaryInfoRecord);
  return sub_10000839C(v65);
}

uint64_t sub_1002792B4(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v60 = a6;
  v61 = a3;
  v57 = a5;
  v58 = a4;
  v59 = a2;
  v7 = sub_100005814(&unk_1003DA210, qword_10033EE50);
  v55 = *(v7 - 8);
  v56 = v7;
  __chkstk_darwin(v7);
  v9 = &v51 - v8;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = type metadata accessor for InheritanceInvitationRecord(0);
  v53 = *(v62 - 8);
  v14 = *(v53 + 64);
  v15 = __chkstk_darwin(v62);
  v54 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v15);
  v64 = &v51 - v17;
  __chkstk_darwin(v16);
  v19 = &v51 - v18;
  if (qword_1003D7F58 != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  sub_100008D04(v20, qword_1003FAAE8);
  sub_10028338C(a1, v19, type metadata accessor for InheritanceInvitationRecord);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v51 = v9;
    v24 = v23;
    v25 = swift_slowAlloc();
    v52 = a1;
    v65[0] = v25;
    *v24 = 136315394;
    (*(v11 + 16))(v13, &v19[*(v62 + 36)], v10);
    sub_1002833F4(v19, type metadata accessor for InheritanceInvitationRecord);
    sub_100282F14(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v26 = dispatch thunk of CustomStringConvertible.description.getter();
    v28 = v27;
    (*(v11 + 8))(v13, v10);
    v29 = sub_10021145C(v26, v28, v65);

    *(v24 + 4) = v29;
    *(v24 + 12) = 2080;
    *(v24 + 14) = sub_10021145C(0xD00000000000001BLL, 0x8000000100330380, v65);
    _os_log_impl(&_mh_execute_header, v21, v22, "Storage Controller: Saving record with modify block recordID: %s, type: %s...", v24, 0x16u);
    swift_arrayDestroy();
    a1 = v52;

    v9 = v51;
  }

  else
  {
    sub_1002833F4(v19, type metadata accessor for InheritanceInvitationRecord);
  }

  v31 = v55;
  v30 = v56;
  (*(v55 + 16))(v9, v63 + OBJC_IVAR____TtC13appleaccountd17StorageController__cloudStorage, v56);
  Dependency.wrappedValue.getter();
  (*(v31 + 8))(v9, v30);
  v56 = sub_1000080F8(v65, v65[3]);
  v32 = v61;
  v33 = v59;
  v59(a1);
  v34 = v54;
  sub_10028338C(a1, v54, type metadata accessor for InheritanceInvitationRecord);
  v35 = (*(v53 + 80) + 16) & ~*(v53 + 80);
  v36 = (v14 + v35 + 7) & 0xFFFFFFFFFFFFFFF8;
  v37 = (v36 + 15) & 0xFFFFFFFFFFFFFFF8;
  v38 = (v37 + 23) & 0xFFFFFFFFFFFFFFF8;
  v39 = swift_allocObject();
  sub_100283458(v34, v39 + v35, type metadata accessor for InheritanceInvitationRecord);
  *(v39 + v36) = v63;
  v40 = (v39 + v37);
  v41 = v60;
  *v40 = v57;
  v40[1] = v41;
  *(v39 + v38) = v58;
  v42 = (v39 + ((v38 + 15) & 0xFFFFFFFFFFFFFFF8));
  *v42 = v33;
  v42[1] = v32;
  v43 = qword_1003D7EB0;

  if (v43 != -1)
  {
    swift_once();
  }

  if (*(v64 + *(v62 + 44)) == 1)
  {
    if (qword_1003D7ED8 != -1)
    {
      swift_once();
    }

    v44 = &qword_1003FAA00;
  }

  else
  {
    if (qword_1003D7ED0 != -1)
    {
      swift_once();
    }

    v44 = &qword_1003FA9F0;
  }

  v45 = *v44;
  v46 = v44[1];

  v47 = sub_1002E2BC4(v45, v46);

  v48 = [v47 privateCloudDatabase];

  v49 = v64;
  sub_100175C50(v64, v48, sub_1002834C0, v39);

  sub_1002833F4(v49, type metadata accessor for InheritanceInvitationRecord);
  return sub_10000839C(v65);
}

uint64_t sub_1002799AC(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v60 = a6;
  v61 = a3;
  v57 = a5;
  v58 = a4;
  v59 = a2;
  v7 = sub_100005814(&unk_1003DA210, qword_10033EE50);
  v55 = *(v7 - 8);
  v56 = v7;
  __chkstk_darwin(v7);
  v9 = &v51 - v8;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = type metadata accessor for BenefactorInfoRecord(0);
  v53 = *(v62 - 8);
  v14 = *(v53 + 64);
  v15 = __chkstk_darwin(v62);
  v54 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v15);
  v64 = &v51 - v17;
  __chkstk_darwin(v16);
  v19 = &v51 - v18;
  if (qword_1003D7F58 != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  sub_100008D04(v20, qword_1003FAAE8);
  sub_10028338C(a1, v19, type metadata accessor for BenefactorInfoRecord);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v51 = v9;
    v24 = v23;
    v25 = swift_slowAlloc();
    v52 = a1;
    v65[0] = v25;
    *v24 = 136315394;
    (*(v11 + 16))(v13, &v19[*(v62 + 28)], v10);
    sub_1002833F4(v19, type metadata accessor for BenefactorInfoRecord);
    sub_100282F14(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v26 = dispatch thunk of CustomStringConvertible.description.getter();
    v28 = v27;
    (*(v11 + 8))(v13, v10);
    v29 = sub_10021145C(v26, v28, v65);

    *(v24 + 4) = v29;
    *(v24 + 12) = 2080;
    *(v24 + 14) = sub_10021145C(0xD000000000000014, 0x80000001003303F0, v65);
    _os_log_impl(&_mh_execute_header, v21, v22, "Storage Controller: Saving record with modify block recordID: %s, type: %s...", v24, 0x16u);
    swift_arrayDestroy();
    a1 = v52;

    v9 = v51;
  }

  else
  {
    sub_1002833F4(v19, type metadata accessor for BenefactorInfoRecord);
  }

  v31 = v55;
  v30 = v56;
  (*(v55 + 16))(v9, v63 + OBJC_IVAR____TtC13appleaccountd17StorageController__cloudStorage, v56);
  Dependency.wrappedValue.getter();
  (*(v31 + 8))(v9, v30);
  v56 = sub_1000080F8(v65, v65[3]);
  v32 = v61;
  v33 = v59;
  v59(a1);
  v34 = v54;
  sub_10028338C(a1, v54, type metadata accessor for BenefactorInfoRecord);
  v35 = (*(v53 + 80) + 16) & ~*(v53 + 80);
  v36 = (v14 + v35 + 7) & 0xFFFFFFFFFFFFFFF8;
  v37 = (v36 + 15) & 0xFFFFFFFFFFFFFFF8;
  v38 = (v37 + 23) & 0xFFFFFFFFFFFFFFF8;
  v39 = swift_allocObject();
  sub_100283458(v34, v39 + v35, type metadata accessor for BenefactorInfoRecord);
  *(v39 + v36) = v63;
  v40 = (v39 + v37);
  v41 = v60;
  *v40 = v57;
  v40[1] = v41;
  *(v39 + v38) = v58;
  v42 = (v39 + ((v38 + 15) & 0xFFFFFFFFFFFFFFF8));
  *v42 = v33;
  v42[1] = v32;
  v43 = qword_1003D7EB0;

  if (v43 != -1)
  {
    swift_once();
  }

  if (*(v64 + *(v62 + 36)) == 1)
  {
    if (qword_1003D7ED8 != -1)
    {
      swift_once();
    }

    v44 = &qword_1003FAA00;
  }

  else
  {
    if (qword_1003D7ED0 != -1)
    {
      swift_once();
    }

    v44 = &qword_1003FA9F0;
  }

  v45 = *v44;
  v46 = v44[1];

  v47 = sub_1002E2BC4(v45, v46);

  v48 = [v47 privateCloudDatabase];

  v49 = v64;
  sub_100175F48(v64, v48, sub_1002831C8, v39);

  sub_1002833F4(v49, type metadata accessor for BenefactorInfoRecord);
  return sub_10000839C(v65);
}

uint64_t sub_10027A0A4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t), uint64_t a5, uint64_t a6, void (*a7)(void), uint64_t a8)
{
  v143 = a8;
  v142 = a7;
  v155 = a6;
  v156 = a3;
  v158 = a4;
  v159 = a5;
  v160 = a2;
  v141 = type metadata accessor for DispatchWorkItemFlags();
  v140 = *(v141 - 8);
  __chkstk_darwin(v141);
  v138 = &v125 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v139 = type metadata accessor for DispatchQoS();
  v137 = *(v139 - 8);
  __chkstk_darwin(v139);
  v136 = &v125 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v146 = type metadata accessor for DispatchTime();
  v135 = *(v146 - 8);
  v11 = __chkstk_darwin(v146);
  v133 = &v125 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v134 = &v125 - v13;
  v132 = type metadata accessor for DispatchQoS.QoSClass();
  v131 = *(v132 - 8);
  __chkstk_darwin(v132);
  v130 = &v125 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100005814(&qword_1003D9270, &qword_10033ECF0);
  __chkstk_darwin(v15 - 8);
  v151 = &v125 - v16;
  v157 = sub_100005814(&qword_1003D9110, &qword_10033EC10);
  v149 = *(v157 - 8);
  __chkstk_darwin(v157);
  v18 = &v125 - v17;
  v154 = type metadata accessor for UUID();
  v153 = *(v154 - 1);
  __chkstk_darwin(v154);
  v152 = &v125 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v150 = type metadata accessor for CustodianshipInfoRecord(0);
  v145 = *(v150 - 8);
  v20 = *(v145 + 64);
  v21 = __chkstk_darwin(v150);
  v144 = &v125 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v21);
  v129 = &v125 - v23;
  v24 = __chkstk_darwin(v22);
  v127 = &v125 - v25;
  v26 = __chkstk_darwin(v24);
  v128 = &v125 - v27;
  v28 = __chkstk_darwin(v26);
  v30 = &v125 - v29;
  v31 = __chkstk_darwin(v28);
  v33 = &v125 - v32;
  __chkstk_darwin(v31);
  v35 = &v125 - v34;
  v36 = sub_100005814(&unk_1003DA0E0, &unk_10033F1D0);
  v37 = __chkstk_darwin(v36);
  v148 = (&v125 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v37);
  v40 = (&v125 - v39);
  sub_100012D04(a1, &v125 - v39, &unk_1003DA0E0, &unk_10033F1D0);
  v147 = v36;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v157 = *v40;
    if (qword_1003D7F58 != -1)
    {
      swift_once();
    }

    v41 = type metadata accessor for Logger();
    sub_100008D04(v41, qword_1003FAAE8);
    sub_10028338C(v160, v30, type metadata accessor for CustodianshipInfoRecord);
    swift_errorRetain();
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v126 = swift_slowAlloc();
      v149 = swift_slowAlloc();
      aBlock[0] = v149;
      *v44 = 136315650;
      v45 = v153;
      v46 = v152;
      v47 = v154;
      (*(v153 + 16))(v152, v30, v154);
      sub_1002833F4(v30, type metadata accessor for CustodianshipInfoRecord);
      sub_100282F14(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v48 = dispatch thunk of CustomStringConvertible.description.getter();
      v50 = v49;
      (*(v45 + 8))(v46, v47);
      v51 = sub_10021145C(v48, v50, aBlock);

      *(v44 + 4) = v51;
      *(v44 + 12) = 2080;
      *(v44 + 14) = sub_10021145C(0xD000000000000017, 0x800000010032CE50, aBlock);
      *(v44 + 22) = 2112;
      swift_errorRetain();
      v52 = _swift_stdlib_bridgeErrorToNSError();
      *(v44 + 24) = v52;
      v53 = v126;
      *v126 = v52;
      _os_log_impl(&_mh_execute_header, v42, v43, "Storage Controller: Failed to save record with modification to cloud, recordID: %s, type: %s, error: %@", v44, 0x20u);
      sub_100008D3C(v53, &unk_1003D9140, &qword_10033E640);

      swift_arrayDestroy();
    }

    else
    {
      sub_1002833F4(v30, type metadata accessor for CustodianshipInfoRecord);
    }

    v65 = v151;
    v66 = v150;
    if (v155 <= 2 && (swift_getErrorValue(), (v67 = sub_1002DE99C(v167)) != 0))
    {
      v68 = v67;
      type metadata accessor for CKError(0);
      v166 = 14;
      sub_100212324(_swiftEmptyArrayStorage);
      sub_100282F14(&qword_1003DA8D0, type metadata accessor for CKError, &unk_10033DE84);
      _BridgedStoredNSError.init(_:userInfo:)();
      v69 = aBlock[0];
      v166 = aBlock[0];
      _BridgedStoredNSError.code.getter();

      v70 = sub_1002DF114(v165, v68);
      if (v70)
      {

        v71 = sub_1002DEE74(v68);
        v72 = v144;
        if (v71)
        {
          v73 = *(v160 + *(v66 + 36));
          v74 = v71;
          sub_1000F80E0(v74, v73, v65);
          (*(v145 + 56))(v65, 0, 1, v66);
          v99 = v128;
          sub_100283458(v65, v128, type metadata accessor for CustodianshipInfoRecord);
          v100 = v127;
          sub_10028338C(v99, v127, type metadata accessor for CustodianshipInfoRecord);
          v101 = Logger.logObject.getter();
          v102 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v101, v102))
          {
            v103 = v100;
            v104 = swift_slowAlloc();
            v160 = swift_slowAlloc();
            aBlock[0] = v160;
            *v104 = 136315394;
            v105 = v153;
            v106 = v68;
            v107 = v152;
            v108 = v154;
            (*(v153 + 16))(v152, v103, v154);
            sub_1002833F4(v103, type metadata accessor for CustodianshipInfoRecord);
            sub_100282F14(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
            v109 = dispatch thunk of CustomStringConvertible.description.getter();
            v111 = v110;
            v112 = v107;
            v68 = v106;
            (*(v105 + 8))(v112, v108);
            v113 = sub_10021145C(v109, v111, aBlock);

            *(v104 + 4) = v113;
            *(v104 + 12) = 2080;
            *(v104 + 14) = sub_10021145C(0xD000000000000017, 0x800000010032CE50, aBlock);
            _os_log_impl(&_mh_execute_header, v101, v102, "Storage Controller: Trying to resave after conflict resolution serverRecordID: %s, type: %s", v104, 0x16u);
            swift_arrayDestroy();
          }

          else
          {
            sub_1002833F4(v100, type metadata accessor for CustodianshipInfoRecord);
          }

          v114 = v128;
          sub_100277DDC(v128, v142, v143, v155 + 1, v158, v159);

          return sub_1002833F4(v114, type metadata accessor for CustodianshipInfoRecord);
        }
      }

      else
      {
        v72 = v144;
      }

      if (sub_1002DF0EC(v68) || sub_1002DF0F4(v68) || sub_1002DF0FC(v68) || sub_1002DF104(v68) || sub_1002DF10C(v68))
      {
        sub_1002DEFEC(v68);
        sub_100016034(0, &qword_1003DC2B0, OS_dispatch_queue_ptr);
        v79 = v131;
        v80 = v130;
        v81 = v132;
        (*(v131 + 104))(v130, enum case for DispatchQoS.QoSClass.default(_:), v132);
        v153 = static OS_dispatch_queue.global(qos:)();
        (*(v79 + 8))(v80, v81);
        v82 = v133;
        static DispatchTime.now()();
        v152 = v68;
        v83 = v134;
        + infix(_:_:)();
        v154 = *(v135 + 8);
        (v154)(v82, v146);
        v84 = v129;
        sub_10028338C(v160, v129, type metadata accessor for CustodianshipInfoRecord);
        v85 = (*(v145 + 80) + 16) & ~*(v145 + 80);
        v86 = (v20 + v85 + 7) & 0xFFFFFFFFFFFFFFF8;
        v87 = (v86 + 15) & 0xFFFFFFFFFFFFFFF8;
        v88 = (v87 + 23) & 0xFFFFFFFFFFFFFFF8;
        v89 = swift_allocObject();
        sub_100283458(v84, v89 + v85, type metadata accessor for CustodianshipInfoRecord);
        *(v89 + v86) = v156;
        v90 = (v89 + v87);
        v91 = v143;
        *v90 = v142;
        v90[1] = v91;
        *(v89 + v88) = v155;
        v92 = (v89 + ((v88 + 15) & 0xFFFFFFFFFFFFFFF8));
        v93 = v159;
        *v92 = v158;
        v92[1] = v93;
        v163 = sub_100282ED0;
        v164 = v89;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_100031EF0;
        v162 = &unk_1003B1AB8;
        v94 = _Block_copy(aBlock);

        v95 = v136;
        static DispatchQoS.unspecified.getter();
        v166 = _swiftEmptyArrayStorage;
        sub_100282F14(&qword_1003D9120, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
        sub_100005814(&unk_1003DABE0, &unk_10033EC20);
        sub_1000383E4();
        v96 = v138;
        v97 = v141;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        v98 = v153;
        OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();

        _Block_release(v94);

        (*(v140 + 8))(v96, v97);
        (*(v137 + 8))(v95, v139);
        (v154)(v83, v146);
      }

      sub_10028338C(v160, v72, type metadata accessor for CustodianshipInfoRecord);
      v115 = Logger.logObject.getter();
      v116 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v115, v116))
      {
        v117 = swift_slowAlloc();
        aBlock[0] = swift_slowAlloc();
        *v117 = 136315394;
        v118 = v153;
        v119 = v152;
        v120 = v154;
        (*(v153 + 16))(v152, v72, v154);
        sub_1002833F4(v72, type metadata accessor for CustodianshipInfoRecord);
        sub_100282F14(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v121 = dispatch thunk of CustomStringConvertible.description.getter();
        v123 = v122;
        (*(v118 + 8))(v119, v120);
        v124 = sub_10021145C(v121, v123, aBlock);

        *(v117 + 4) = v124;
        *(v117 + 12) = 2080;
        *(v117 + 14) = sub_10021145C(0xD000000000000017, 0x800000010032CE50, aBlock);
        _os_log_impl(&_mh_execute_header, v115, v116, "Storage Controller: No resolution so return error recordID: %s, type: %s", v117, 0x16u);
        swift_arrayDestroy();
      }

      else
      {
        sub_1002833F4(v72, type metadata accessor for CustodianshipInfoRecord);
      }

      v75 = v148;
      *v148 = v157;
      swift_storeEnumTagMultiPayload();
      swift_errorRetain();
      v158(v75);
    }

    else
    {
      v75 = v148;
      *v148 = v157;
      swift_storeEnumTagMultiPayload();
      swift_errorRetain();
      v158(v75);
    }

    return sub_100008D3C(v75, &unk_1003DA0E0, &unk_10033F1D0);
  }

  sub_100283458(v40, v35, type metadata accessor for CustodianshipInfoRecord);
  if (qword_1003D7F58 != -1)
  {
    swift_once();
  }

  v54 = type metadata accessor for Logger();
  sub_100008D04(v54, qword_1003FAAE8);
  sub_10028338C(v160, v33, type metadata accessor for CustodianshipInfoRecord);
  v55 = Logger.logObject.getter();
  v56 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v55, v56))
  {
    v57 = swift_slowAlloc();
    v160 = swift_slowAlloc();
    aBlock[0] = v160;
    *v57 = 136315394;
    v58 = v153;
    v59 = v152;
    v60 = v154;
    (*(v153 + 16))(v152, v33, v154);
    sub_1002833F4(v33, type metadata accessor for CustodianshipInfoRecord);
    sub_100282F14(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v61 = dispatch thunk of CustomStringConvertible.description.getter();
    v63 = v62;
    (*(v58 + 8))(v59, v60);
    v64 = sub_10021145C(v61, v63, aBlock);

    *(v57 + 4) = v64;
    *(v57 + 12) = 2080;
    *(v57 + 14) = sub_10021145C(0xD000000000000017, 0x800000010032CE50, aBlock);
    _os_log_impl(&_mh_execute_header, v55, v56, "Storage Controller: Successfully saved record with modification to cloud, recordID: %s, type: %s", v57, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    sub_1002833F4(v33, type metadata accessor for CustodianshipInfoRecord);
  }

  v77 = v149;
  v78 = v157;
  (*(v149 + 16))(v18, v156 + OBJC_IVAR____TtC13appleaccountd17StorageController__localStorage, v157);
  Dependency.wrappedValue.getter();
  (*(v77 + 8))(v18, v78);
  sub_1000080F8(aBlock, v162);
  sub_10017EB20(v35, 0, 2, v158, v159);
  sub_1002833F4(v35, type metadata accessor for CustodianshipInfoRecord);
  return sub_10000839C(aBlock);
}