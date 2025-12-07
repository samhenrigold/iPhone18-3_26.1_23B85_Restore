uint64_t sub_1000235A4(uint64_t a1, char a2, uint64_t a3, void (*a4)(void *), uint64_t a5)
{
  v41 = a5;
  v42 = a4;
  v40 = sub_100005814(&unk_1003DA200, &unk_10033FA80);
  __chkstk_darwin(v40);
  v9 = (&v38 - v8);
  v10 = type metadata accessor for UUID();
  v39 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100005814(&unk_1003DF000, &unk_10033EC50);
  __chkstk_darwin(v13 - 8);
  v15 = &v38 - v14;
  v16 = type metadata accessor for CustodianRecord(0);
  v17 = *(v16 - 8);
  v18 = __chkstk_darwin(v16);
  v20 = &v38 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_100008D04(v21, qword_1003FAA88);
    swift_errorRetain();
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    sub_1000399DC(a1, 1);
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *v24 = 138412290;
      v26 = _convertErrorToNSError(_:)();
      *(v24 + 4) = v26;
      *v25 = v26;
      _os_log_impl(&_mh_execute_header, v22, v23, "Error fetching custodian records: %@", v24, 0xCu);
      sub_100008D3C(v25, &unk_1003D9140, &qword_10033E640);
    }

    *v9 = a1;
    swift_storeEnumTagMultiPayload();
    swift_errorRetain();
  }

  else
  {
    __chkstk_darwin(v18);
    *(&v38 - 2) = a3;
    sub_100213F34(sub_1000394D0, a1, v15);
    if ((*(v17 + 48))(v15, 1, v16) != 1)
    {
      sub_100039200(v15, v20, type metadata accessor for CustodianRecord);
      sub_100038554(v20, v9, type metadata accessor for CustodianRecord);
      swift_storeEnumTagMultiPayload();
      v42(v9);
      sub_100008D3C(v9, &unk_1003DA200, &unk_10033FA80);
      return sub_1000385BC(v20, type metadata accessor for CustodianRecord);
    }

    sub_100008D3C(v15, &unk_1003DF000, &unk_10033EC50);
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    sub_100008D04(v27, qword_1003FAA88);
    v28 = v39;
    (*(v39 + 16))(v12, a3, v10);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v44 = v32;
      *v31 = 136315138;
      sub_100039268(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v33 = dispatch thunk of CustomStringConvertible.description.getter();
      v35 = v34;
      (*(v28 + 8))(v12, v10);
      v36 = sub_10021145C(v33, v35, &v44);

      *(v31 + 4) = v36;
      _os_log_impl(&_mh_execute_header, v29, v30, "No custodian with id %s found.", v31, 0xCu);
      sub_10000839C(v32);
    }

    else
    {

      (*(v28 + 8))(v12, v10);
    }

    type metadata accessor for AACustodianError(0);
    v43 = -7063;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_100039268(&qword_1003D8140, type metadata accessor for AACustodianError, &unk_10033DF94);
    _BridgedStoredNSError.init(_:userInfo:)();
    *v9 = v44;
    swift_storeEnumTagMultiPayload();
  }

  v42(v9);
  return sub_100008D3C(v9, &unk_1003DA200, &unk_10033FA80);
}

uint64_t sub_100023C4C(uint64_t a1, uint64_t a2)
{
  v3[19] = a2;
  v3[20] = v2;
  v3[18] = a1;
  v3[21] = type metadata accessor for CustodianRecord(0);
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();

  return _swift_task_switch(sub_100023CFC, 0, 0);
}

uint64_t sub_100023CFC()
{
  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 200) = v1;
  *(v0 + 208) = sub_100008D04(v1, qword_1003FAA88);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Fetching CustodianRecord from local disk", v4, 2u);
  }

  v10 = *(v0 + 152);

  v5 = swift_task_alloc();
  *(v0 + 216) = v5;
  v5[1] = vextq_s8(v10, v10, 8uLL);
  v6 = swift_task_alloc();
  *(v0 + 224) = v6;
  *v6 = v0;
  v6[1] = sub_100023EB8;
  v7 = *(v0 + 184);
  v8 = *(v0 + 168);

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v7, 0, 0, 0xD000000000000019, 0x800000010032CE70, sub_100039388, v5, v8);
}

uint64_t sub_100023EB8()
{
  *(*v1 + 232) = v0;

  if (v0)
  {
    v2 = sub_100024110;
  }

  else
  {

    v2 = sub_100023FD4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100023FD4()
{
  sub_100039200(v0[23], v0[24], type metadata accessor for CustodianRecord);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "CustodianRecord found on the local disk, no need to fetch from cloud", v3, 2u);
  }

  v4 = v0[29];
  v5 = swift_task_alloc();
  v0[32] = v5;
  *v5 = v0;
  v5[1] = sub_100024778;
  v6 = v0[24];
  v7 = v0[19];
  v8 = v0[20];
  v9 = v0[18];

  return sub_10002A020(v9, v6, v7, v4 == 0, v8);
}

uint64_t sub_100024110()
{
  v23 = v0;
  v1 = v0[29];

  v0[5] = v1;
  swift_errorRetain();
  v0[30] = sub_100005814(&unk_1003DBB60, &unk_10033E740);
  type metadata accessor for AACustodianError(0);
  v0[31] = v2;
  if (swift_dynamicCast())
  {
    v3 = v0[6];
    v0[7] = v3;
    v0[34] = v3;
    v0[35] = sub_100039268(&qword_1003D8140, type metadata accessor for AACustodianError, &unk_10033DF94);
    _BridgedStoredNSError.code.getter();
    if (v0[8] == -7063)
    {
      v4 = v0[19];
      RecoveryRecordsRequest = type metadata accessor for FetchRecoveryRecordsRequest(0);
      v0[36] = RecoveryRecordsRequest;
      if (*(v4 + *(RecoveryRecordsRequest + 20)))
      {
        v6 = Logger.logObject.getter();
        v7 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v6, v7))
        {
          v8 = swift_slowAlloc();
          *v8 = 0;
          _os_log_impl(&_mh_execute_header, v6, v7, "CustodianRecord not found on the local disk, Fetching the record from cloud", v8, 2u);
        }

        v9 = v0[20];

        v0[37] = *(v9 + 56);
        v10 = kAAAnalyticsEventCustodianRecoveryExperimentalCustodianRecordNotFoundFetchFromCloud;
        v11 = [objc_opt_self() analyticsEventWithName:kAAAnalyticsEventCustodianRecoveryExperimentalCustodianRecordNotFoundFetchFromCloud altDSID:0 flowID:0];
        v0[38] = v11;
        if (v11)
        {
          v12 = v11;
          sub_100016034(0, &qword_1003D9250, NSString_ptr);
          v13 = v12;
          v14 = NSString.init(stringLiteral:)();
          [v13 setObject:0 forKeyedSubscript:v14];
        }

        if (qword_1003D7F20 != -1)
        {
          swift_once();
        }

        v0[39] = sub_100008D04(v0[25], qword_1003FAA40);
        v15 = Logger.logObject.getter();
        v16 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v15, v16))
        {
          v17 = swift_slowAlloc();
          v18 = swift_slowAlloc();
          v22 = v18;
          *v17 = 136315138;
          *(v17 + 4) = sub_10021145C(0xD000000000000024, 0x800000010032CE90, &v22);
          _os_log_impl(&_mh_execute_header, v15, v16, "Performing: %s...", v17, 0xCu);
          sub_10000839C(v18);
        }

        sub_100257274(v10);
        sub_1000080F8((v0[20] + 16), *(v0[20] + 40));
        v21 = swift_task_alloc();
        v0[40] = v21;
        *v21 = v0;
        v21[1] = sub_10002492C;

        return sub_10030DB58();
      }
    }
  }

  swift_willThrow();

  v19 = v0[1];

  return v19();
}

uint64_t sub_100024778()
{
  *(*v1 + 264) = v0;

  if (v0)
  {
    v2 = sub_100025680;
  }

  else
  {
    v2 = sub_10002488C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10002488C()
{
  sub_1000385BC(*(v0 + 192), type metadata accessor for CustodianRecord);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10002492C()
{
  *(*v1 + 328) = v0;

  if (v0)
  {
    v2 = sub_100024CD4;
  }

  else
  {
    v2 = sub_100024A40;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100024A40(uint64_t a1)
{
  v18 = v1;
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v17 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_10021145C(0xD000000000000024, 0x800000010032CE90, &v17);
    _os_log_impl(&_mh_execute_header, v2, v3, "✅ %s - successfully completed!", v4, 0xCu);
    sub_10000839C(v5);
  }

  v6 = *(v1 + 304);
  if (v6)
  {
    [*(v1 + 304) updateTaskResultWithError:0];
    swift_getObjectType();
    v7 = v6;
    sub_100246FA8(v6);
  }

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "Fetching CustodianRecord from local disk after fetching from cloud", v10, 2u);
  }

  v16 = *(v1 + 152);

  v11 = swift_task_alloc();
  *(v1 + 336) = v11;
  v11[1] = vextq_s8(v16, v16, 8uLL);
  v12 = swift_task_alloc();
  *(v1 + 344) = v12;
  *v12 = v1;
  v12[1] = sub_100024F68;
  v14 = *(v1 + 168);
  v13 = *(v1 + 176);

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v13, 0, 0, 0xD000000000000019, 0x800000010032CE70, sub_10003A54C, v11, v14);
}

uint64_t sub_100024CD4()
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
    *(v3 + 4) = sub_10021145C(0xD000000000000024, 0x800000010032CE90, &v14);
    *(v3 + 12) = 2112;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 14) = v6;
    *v4 = v6;
    _os_log_impl(&_mh_execute_header, v1, v2, "❌ %s - failed with error: %@", v3, 0x16u);
    sub_100008D3C(v4, &unk_1003D9140, &qword_10033E640);

    sub_10000839C(v5);
  }

  v7 = v0[38];
  swift_getErrorValue();
  sub_1002DEA80(v0[3], v0[4]);
  if (v7)
  {
    v8 = v0[38];
    v9 = v0[34];
    v10 = v8;
    swift_errorRetain();
    v11 = _convertErrorToNSError(_:)();
    [v10 updateTaskResultWithError:v11];

    swift_getObjectType();
    sub_100246FA8(v8);
    swift_willThrow();
  }

  else
  {
    v9 = v0[34];
    swift_willThrow();
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_100024F68()
{
  *(*v1 + 352) = v0;

  if (v0)
  {
    v2 = sub_1000252F4;
  }

  else
  {

    v2 = sub_100025084;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100025084()
{
  sub_100039200(v0[22], v0[24], type metadata accessor for CustodianRecord);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "CustodianRecord found on the local disk, after fetching from cloud", v3, 2u);
  }

  v4 = v0[36];
  v5 = v0[19];

  sub_100016034(0, &qword_1003D8B40, AAFAnalyticsEvent_ptr);
  v6 = kAAAnalyticsEventCustodianSystemSync;
  v7 = *(v4 + 36);
  v8 = (v5 + *(v4 + 32));
  v9 = *v8;
  v10 = v8[1];
  v11 = v5 + v7;
  v12 = *(v5 + v7);
  v13 = *(v11 + 8);

  v14 = v6;

  v15 = sub_100245D38(v14, v9, v10, v12, v13);
  v0[17] = -7751;
  sub_100212324(_swiftEmptyArrayStorage);
  _BridgedStoredNSError.init(_:userInfo:)();
  v16 = v0[16];
  if (v15)
  {
    v17 = v15;
    v18 = v16;
    v19 = _convertErrorToNSError(_:)();

    [v17 updateTaskResultWithError:v19];
  }

  v20 = v0[34];
  swift_getObjectType();
  sub_100246FA8(v15);

  v21 = v0[29];
  v22 = swift_task_alloc();
  v0[32] = v22;
  *v22 = v0;
  v22[1] = sub_100024778;
  v23 = v0[24];
  v24 = v0[19];
  v25 = v0[20];
  v26 = v0[18];

  return sub_10002A020(v26, v23, v24, v21 == 0, v25);
}

uint64_t sub_1000252F4()
{
  v1 = v0[44];

  v0[10] = v1;
  swift_errorRetain();
  if (swift_dynamicCast())
  {
    v2 = v0[11];
    v0[12] = v2;
    _BridgedStoredNSError.code.getter();
    if (v0[13] == -7063)
    {
      v30 = v2;
      v3 = Logger.logObject.getter();
      v4 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v3, v4))
      {
        v5 = swift_slowAlloc();
        *v5 = 0;
        _os_log_impl(&_mh_execute_header, v3, v4, "🚨 CustodianRecord still not found on the local disk, even after fetching from cloud", v5, 2u);
      }

      v6 = v0[36];
      v7 = v0[19];

      sub_100016034(0, &qword_1003D8B40, AAFAnalyticsEvent_ptr);
      v8 = kAAAnalyticsEventCustodianSystemSync;
      v9 = *(v6 + 36);
      v10 = (v7 + *(v6 + 32));
      v11 = *v10;
      v12 = v10[1];
      v13 = v7 + v9;
      v14 = *(v7 + v9);
      v15 = *(v13 + 8);

      v16 = v8;

      v17 = sub_100245D38(v16, v11, v12, v14, v15);
      v0[15] = -7750;
      sub_100212324(_swiftEmptyArrayStorage);
      _BridgedStoredNSError.init(_:userInfo:)();
      v18 = v0[14];
      if (v17)
      {
        v19 = v17;
        v20 = v18;
        v21 = _convertErrorToNSError(_:)();

        [v19 updateTaskResultWithError:v21];
      }

      swift_getObjectType();
      sub_100246FA8(v17);
    }

    else
    {
    }
  }

  swift_errorRetain();
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    *v24 = 138412290;
    swift_errorRetain();
    v26 = _swift_stdlib_bridgeErrorToNSError();
    *(v24 + 4) = v26;
    *v25 = v26;
    _os_log_impl(&_mh_execute_header, v22, v23, "Error fetching CustodianRecord from the local disk, after fetching from cloud: %@", v24, 0xCu);
    sub_100008D3C(v25, &unk_1003D9140, &qword_10033E640);
  }

  v27 = v0[34];

  swift_willThrow();

  v28 = v0[1];

  return v28();
}

uint64_t sub_100025680()
{
  sub_1000385BC(*(v0 + 192), type metadata accessor for CustodianRecord);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10002571C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_100005814(&unk_1003D9200, &unk_10033EC90);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v12 - v7;
  (*(v6 + 16))(&v12 - v7, a1, v5);
  v9 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v10 = swift_allocObject();
  (*(v6 + 32))(v10 + v9, v8, v5);
  sub_100022FF4(a3, sub_100039490, v10);
}

uint64_t sub_10002586C(uint64_t a1)
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
    sub_100039200(v7, v4, type metadata accessor for CustodianRecord);
    sub_100005814(&unk_1003D9200, &unk_10033EC90);
    return CheckedContinuation.resume(returning:)();
  }
}

uint64_t sub_1000259E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v51 = a3;
  v49 = a2;
  v4 = sub_100005814(&qword_1003D9110, &qword_10033EC10);
  v54 = *(v4 - 8);
  v55 = v4;
  __chkstk_darwin(v4);
  v52 = &v42 - v5;
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v48 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v53 = &v42 - v10;
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v46 = v14;
  v47 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v42 - v15;
  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_100008D04(v17, qword_1003FAA88);
  v45 = *(v12 + 16);
  v45(v16, a1, v11);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v43 = a1;
    v21 = v20;
    v42 = swift_slowAlloc();
    v56[0] = v42;
    *v21 = 136315138;
    sub_100039268(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v22 = dispatch thunk of CustomStringConvertible.description.getter();
    v44 = v7;
    v23 = v6;
    v25 = v24;
    (*(v12 + 8))(v16, v11);
    v26 = sub_10021145C(v22, v25, v56);
    v6 = v23;
    v7 = v44;

    *(v21 + 4) = v26;
    _os_log_impl(&_mh_execute_header, v18, v19, "Fetching custodianship info with ID: %s", v21, 0xCu);
    sub_10000839C(v42);

    a1 = v43;
  }

  else
  {

    (*(v12 + 8))(v16, v11);
  }

  v27 = v47;
  v45(v47, a1, v11);
  v28 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v29 = (v46 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
  v30 = swift_allocObject();
  (*(v12 + 32))(v30 + v28, v27, v11);
  v31 = (v30 + v29);
  v32 = v51;
  *v31 = v49;
  v31[1] = v32;
  v33 = sub_1000080F8((v50 + 16), *(v50 + 40));
  type metadata accessor for LocalCache();

  v34 = v48;
  sub_100307F40();
  v35 = v53;
  URL.appendingPathComponent(_:isDirectory:)();
  v36 = *(v7 + 8);
  v36(v34, v6);
  v37 = *v33;
  v39 = v54;
  v38 = v55;
  v40 = v52;
  (*(v54 + 16))(v52, v37 + OBJC_IVAR____TtC13appleaccountd17StorageController__localStorage, v55);
  Dependency.wrappedValue.getter();
  (*(v39 + 8))(v40, v38);
  sub_1000080F8(v56, v56[3]);
  sub_100032500(v35, sub_100039340, v30, &unk_1003A4DA8, sub_100038510, &unk_1003A4DC0);

  v36(v35, v6);
  return sub_10000839C(v56);
}

uint64_t sub_100025F8C(uint64_t a1, char a2, uint64_t a3, void (*a4)(uint64_t), uint64_t a5)
{
  v67 = a5;
  v68 = a4;
  v65 = sub_100005814(&unk_1003DA0E0, &unk_10033F1D0);
  __chkstk_darwin(v65);
  v66 = &v60[-v8];
  v9 = type metadata accessor for UUID();
  v63 = *(v9 - 8);
  v64 = v9;
  v10 = __chkstk_darwin(v9);
  v12 = &v60[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v14 = &v60[-v13];
  v15 = sub_100005814(&qword_1003D9270, &qword_10033ECF0);
  __chkstk_darwin(v15 - 8);
  v17 = &v60[-v16];
  v18 = type metadata accessor for CustodianshipInfoRecord(0);
  v19 = *(v18 - 8);
  v20 = __chkstk_darwin(v18);
  v22 = &v60[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v23 = __chkstk_darwin(v20);
  if (a2)
  {
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    sub_100008D04(v25, qword_1003FAA88);
    swift_errorRetain();
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();
    sub_1000399DC(a1, 1);
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      *v28 = 138412290;
      v30 = _convertErrorToNSError(_:)();
      *(v28 + 4) = v30;
      *v29 = v30;
      _os_log_impl(&_mh_execute_header, v26, v27, "Error fetching custodianship info records: %@", v28, 0xCu);
      sub_100008D3C(v29, &unk_1003D9140, &qword_10033E640);
    }

    v31 = v66;
    *v66 = a1;
    swift_storeEnumTagMultiPayload();
    swift_errorRetain();
LABEL_18:
    v68(v31);
    return sub_100008D3C(v31, &unk_1003DA0E0, &unk_10033F1D0);
  }

  v32 = &v60[-v24];
  __chkstk_darwin(v23);
  v62 = a3;
  *&v60[-16] = a3;
  sub_10021410C(sub_100039358, a1, v17);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    sub_100008D3C(v17, &qword_1003D9270, &qword_10033ECF0);
    v33 = v63;
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v34 = type metadata accessor for Logger();
    sub_100008D04(v34, qword_1003FAA88);
    v35 = v64;
    (*(v33 + 16))(v14, v62, v64);
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v70[0] = v39;
      *v38 = 136315138;
      sub_100039268(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v40 = dispatch thunk of CustomStringConvertible.description.getter();
      v42 = v41;
      (*(v33 + 8))(v14, v35);
      v43 = sub_10021145C(v40, v42, v70);

      *(v38 + 4) = v43;
      _os_log_impl(&_mh_execute_header, v36, v37, "No custodian with id %s found.", v38, 0xCu);
      sub_10000839C(v39);
    }

    else
    {

      (*(v33 + 8))(v14, v35);
    }

    type metadata accessor for AACustodianError(0);
    v69 = -7059;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_100039268(&qword_1003D8140, type metadata accessor for AACustodianError, &unk_10033DF94);
    _BridgedStoredNSError.init(_:userInfo:)();
    v31 = v66;
    *v66 = v70[0];
    swift_storeEnumTagMultiPayload();
    goto LABEL_18;
  }

  sub_100039200(v17, v32, type metadata accessor for CustodianshipInfoRecord);
  v44 = v63;
  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v45 = type metadata accessor for Logger();
  sub_100008D04(v45, qword_1003FAA88);
  v46 = v64;
  (*(v44 + 16))(v12, v62, v64);
  sub_100038554(v32, v22, type metadata accessor for CustodianshipInfoRecord);
  v47 = Logger.logObject.getter();
  v48 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    v62 = swift_slowAlloc();
    v70[0] = v62;
    *v49 = 136315394;
    sub_100039268(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v61 = v48;
    v50 = dispatch thunk of CustomStringConvertible.description.getter();
    v52 = v51;
    (*(v44 + 8))(v12, v46);
    v53 = sub_10021145C(v50, v52, v70);

    *(v49 + 4) = v53;
    *(v49 + 12) = 2080;
    v54 = dispatch thunk of CustomStringConvertible.description.getter();
    v56 = v55;
    sub_1000385BC(v22, type metadata accessor for CustodianshipInfoRecord);
    v57 = sub_10021145C(v54, v56, v70);

    *(v49 + 14) = v57;
    _os_log_impl(&_mh_execute_header, v47, v61, "Found custodian for id %s: %s", v49, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    sub_1000385BC(v22, type metadata accessor for CustodianshipInfoRecord);
    (*(v44 + 8))(v12, v46);
  }

  v59 = v66;
  sub_100038554(v32, v66, type metadata accessor for CustodianshipInfoRecord);
  swift_storeEnumTagMultiPayload();
  v68(v59);
  sub_100008D3C(v59, &unk_1003DA0E0, &unk_10033F1D0);
  return sub_1000385BC(v32, type metadata accessor for CustodianshipInfoRecord);
}

uint64_t sub_1000268EC(uint64_t a1, uint64_t a2)
{
  v3[19] = a2;
  v3[20] = v2;
  v3[18] = a1;
  v3[21] = type metadata accessor for CustodianshipInfoRecord(0);
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();

  return _swift_task_switch(sub_10002699C, 0, 0);
}

uint64_t sub_10002699C()
{
  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 200) = v1;
  *(v0 + 208) = sub_100008D04(v1, qword_1003FAA88);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Fetching CustodianshipInfoRecord from local disk", v4, 2u);
  }

  v10 = *(v0 + 152);

  v5 = swift_task_alloc();
  *(v0 + 216) = v5;
  v5[1] = vextq_s8(v10, v10, 8uLL);
  v6 = swift_task_alloc();
  *(v0 + 224) = v6;
  *v6 = v0;
  v6[1] = sub_100026B58;
  v7 = *(v0 + 184);
  v8 = *(v0 + 168);

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v7, 0, 0, 0xD000000000000022, 0x800000010032CDF0, sub_1000392FC, v5, v8);
}

uint64_t sub_100026B58()
{
  *(*v1 + 232) = v0;

  if (v0)
  {
    v2 = sub_100026DB0;
  }

  else
  {

    v2 = sub_100026C74;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100026C74()
{
  sub_100039200(v0[23], v0[24], type metadata accessor for CustodianshipInfoRecord);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "CustodianshipInfoRecord found on the local disk, no need to fetch from cloud", v3, 2u);
  }

  v4 = v0[29];
  v5 = swift_task_alloc();
  v0[32] = v5;
  *v5 = v0;
  v5[1] = sub_100027418;
  v6 = v0[24];
  v7 = v0[19];
  v8 = v0[20];
  v9 = v0[18];

  return sub_10002877C(v9, v6, v7, v4 == 0, v8);
}

uint64_t sub_100026DB0()
{
  v23 = v0;
  v1 = v0[29];

  v0[5] = v1;
  swift_errorRetain();
  v0[30] = sub_100005814(&unk_1003DBB60, &unk_10033E740);
  type metadata accessor for AACustodianError(0);
  v0[31] = v2;
  if (swift_dynamicCast())
  {
    v3 = v0[6];
    v0[7] = v3;
    v0[34] = v3;
    v0[35] = sub_100039268(&qword_1003D8140, type metadata accessor for AACustodianError, &unk_10033DF94);
    _BridgedStoredNSError.code.getter();
    if (v0[8] == -7059)
    {
      v4 = v0[19];
      RecoveryRecordsRequest = type metadata accessor for FetchRecoveryRecordsRequest(0);
      v0[36] = RecoveryRecordsRequest;
      if (*(v4 + *(RecoveryRecordsRequest + 20)))
      {
        v6 = Logger.logObject.getter();
        v7 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v6, v7))
        {
          v8 = swift_slowAlloc();
          *v8 = 0;
          _os_log_impl(&_mh_execute_header, v6, v7, "CustodianshipInfoRecord not found on the local disk, Fetching the record from cloud", v8, 2u);
        }

        v9 = v0[20];

        v0[37] = *(v9 + 56);
        v10 = kAAAnalyticsEventCustodianRecoveryExperimentalCustodianshipInfoRecordNotFoundFetchFromCloud;
        v11 = [objc_opt_self() analyticsEventWithName:kAAAnalyticsEventCustodianRecoveryExperimentalCustodianshipInfoRecordNotFoundFetchFromCloud altDSID:0 flowID:0];
        v0[38] = v11;
        if (v11)
        {
          v12 = v11;
          sub_100016034(0, &qword_1003D9250, NSString_ptr);
          v13 = v12;
          v14 = NSString.init(stringLiteral:)();
          [v13 setObject:0 forKeyedSubscript:v14];
        }

        if (qword_1003D7F20 != -1)
        {
          swift_once();
        }

        v0[39] = sub_100008D04(v0[25], qword_1003FAA40);
        v15 = Logger.logObject.getter();
        v16 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v15, v16))
        {
          v17 = swift_slowAlloc();
          v18 = swift_slowAlloc();
          v22 = v18;
          *v17 = 136315138;
          *(v17 + 4) = sub_10021145C(0xD00000000000002CLL, 0x800000010032CE20, &v22);
          _os_log_impl(&_mh_execute_header, v15, v16, "Performing: %s...", v17, 0xCu);
          sub_10000839C(v18);
        }

        sub_100257274(v10);
        sub_1000080F8((v0[20] + 16), *(v0[20] + 40));
        v21 = swift_task_alloc();
        v0[40] = v21;
        *v21 = v0;
        v21[1] = sub_1000275CC;

        return sub_10030DB58();
      }
    }
  }

  swift_willThrow();

  v19 = v0[1];

  return v19();
}

uint64_t sub_100027418()
{
  *(*v1 + 264) = v0;

  if (v0)
  {
    v2 = sub_100028320;
  }

  else
  {
    v2 = sub_10002752C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10002752C()
{
  sub_1000385BC(*(v0 + 192), type metadata accessor for CustodianshipInfoRecord);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000275CC()
{
  *(*v1 + 328) = v0;

  if (v0)
  {
    v2 = sub_100027974;
  }

  else
  {
    v2 = sub_1000276E0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000276E0(uint64_t a1)
{
  v18 = v1;
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v17 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_10021145C(0xD00000000000002CLL, 0x800000010032CE20, &v17);
    _os_log_impl(&_mh_execute_header, v2, v3, "✅ %s - successfully completed!", v4, 0xCu);
    sub_10000839C(v5);
  }

  v6 = *(v1 + 304);
  if (v6)
  {
    [*(v1 + 304) updateTaskResultWithError:0];
    swift_getObjectType();
    v7 = v6;
    sub_100246FA8(v6);
  }

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "Fetching CustodianshipInfoRecord from local disk after fetching from cloud", v10, 2u);
  }

  v16 = *(v1 + 152);

  v11 = swift_task_alloc();
  *(v1 + 336) = v11;
  v11[1] = vextq_s8(v16, v16, 8uLL);
  v12 = swift_task_alloc();
  *(v1 + 344) = v12;
  *v12 = v1;
  v12[1] = sub_100027C08;
  v14 = *(v1 + 168);
  v13 = *(v1 + 176);

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v13, 0, 0, 0xD000000000000022, 0x800000010032CDF0, sub_10003A548, v11, v14);
}

uint64_t sub_100027974()
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
    *(v3 + 4) = sub_10021145C(0xD00000000000002CLL, 0x800000010032CE20, &v14);
    *(v3 + 12) = 2112;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 14) = v6;
    *v4 = v6;
    _os_log_impl(&_mh_execute_header, v1, v2, "❌ %s - failed with error: %@", v3, 0x16u);
    sub_100008D3C(v4, &unk_1003D9140, &qword_10033E640);

    sub_10000839C(v5);
  }

  v7 = v0[38];
  swift_getErrorValue();
  sub_1002DEA80(v0[3], v0[4]);
  if (v7)
  {
    v8 = v0[38];
    v9 = v0[34];
    v10 = v8;
    swift_errorRetain();
    v11 = _convertErrorToNSError(_:)();
    [v10 updateTaskResultWithError:v11];

    swift_getObjectType();
    sub_100246FA8(v8);
    swift_willThrow();
  }

  else
  {
    v9 = v0[34];
    swift_willThrow();
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_100027C08()
{
  *(*v1 + 352) = v0;

  if (v0)
  {
    v2 = sub_100027F94;
  }

  else
  {

    v2 = sub_100027D24;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100027D24()
{
  sub_100039200(v0[22], v0[24], type metadata accessor for CustodianshipInfoRecord);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "CustodianshipInfoRecord found on the local disk, after fetching from cloud", v3, 2u);
  }

  v4 = v0[36];
  v5 = v0[19];

  sub_100016034(0, &qword_1003D8B40, AAFAnalyticsEvent_ptr);
  v6 = kAAAnalyticsEventCustodianSystemSync;
  v7 = *(v4 + 36);
  v8 = (v5 + *(v4 + 32));
  v9 = *v8;
  v10 = v8[1];
  v11 = v5 + v7;
  v12 = *(v5 + v7);
  v13 = *(v11 + 8);

  v14 = v6;

  v15 = sub_100245D38(v14, v9, v10, v12, v13);
  v0[17] = -7753;
  sub_100212324(_swiftEmptyArrayStorage);
  _BridgedStoredNSError.init(_:userInfo:)();
  v16 = v0[16];
  if (v15)
  {
    v17 = v15;
    v18 = v16;
    v19 = _convertErrorToNSError(_:)();

    [v17 updateTaskResultWithError:v19];
  }

  v20 = v0[34];
  swift_getObjectType();
  sub_100246FA8(v15);

  v21 = v0[29];
  v22 = swift_task_alloc();
  v0[32] = v22;
  *v22 = v0;
  v22[1] = sub_100027418;
  v23 = v0[24];
  v24 = v0[19];
  v25 = v0[20];
  v26 = v0[18];

  return sub_10002877C(v26, v23, v24, v21 == 0, v25);
}

uint64_t sub_100027F94()
{
  v1 = v0[44];

  v0[10] = v1;
  swift_errorRetain();
  if (swift_dynamicCast())
  {
    v2 = v0[11];
    v0[12] = v2;
    _BridgedStoredNSError.code.getter();
    if (v0[13] == -7059)
    {
      v30 = v2;
      v3 = Logger.logObject.getter();
      v4 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v3, v4))
      {
        v5 = swift_slowAlloc();
        *v5 = 0;
        _os_log_impl(&_mh_execute_header, v3, v4, "🚨 CustodianshipInfoRecord found on the local disk, even after fetching from cloud", v5, 2u);
      }

      v6 = v0[36];
      v7 = v0[19];

      sub_100016034(0, &qword_1003D8B40, AAFAnalyticsEvent_ptr);
      v8 = kAAAnalyticsEventCustodianSystemSync;
      v9 = *(v6 + 36);
      v10 = (v7 + *(v6 + 32));
      v11 = *v10;
      v12 = v10[1];
      v13 = v7 + v9;
      v14 = *(v7 + v9);
      v15 = *(v13 + 8);

      v16 = v8;

      v17 = sub_100245D38(v16, v11, v12, v14, v15);
      v0[15] = -7752;
      sub_100212324(_swiftEmptyArrayStorage);
      _BridgedStoredNSError.init(_:userInfo:)();
      v18 = v0[14];
      if (v17)
      {
        v19 = v17;
        v20 = v18;
        v21 = _convertErrorToNSError(_:)();

        [v19 updateTaskResultWithError:v21];
      }

      swift_getObjectType();
      sub_100246FA8(v17);
    }

    else
    {
    }
  }

  swift_errorRetain();
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    *v24 = 138412290;
    swift_errorRetain();
    v26 = _swift_stdlib_bridgeErrorToNSError();
    *(v24 + 4) = v26;
    *v25 = v26;
    _os_log_impl(&_mh_execute_header, v22, v23, "Error fetching CustodianshipInfoRecord from the local disk, after fetching from cloud: %@", v24, 0xCu);
    sub_100008D3C(v25, &unk_1003D9140, &qword_10033E640);
  }

  v27 = v0[34];

  swift_willThrow();

  v28 = v0[1];

  return v28();
}

uint64_t sub_100028320()
{
  sub_1000385BC(*(v0 + 192), type metadata accessor for CustodianshipInfoRecord);

  v1 = *(v0 + 8);

  return v1();
}

void sub_1000283BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100005814(&unk_1003D9260, &unk_10033ECE0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v25 - v8;
  RecoveryRecordsRequest = type metadata accessor for FetchRecoveryRecordsRequest(0);
  v11 = 0;
  if (*(a3 + *(RecoveryRecordsRequest + 28)) == 1)
  {
    v12 = RecoveryRecordsRequest;
    v13 = kAAAnalyticsEventFetchCustodianshipInfo;
    v14 = sub_100016034(0, &qword_1003D8B40, AAFAnalyticsEvent_ptr);
    v15 = *(v12 + 36);
    v16 = (a3 + *(v12 + 32));
    v17 = v16[1];
    v26 = *v16;
    v27 = v14;
    v28 = a1;
    v19 = *(a3 + v15);
    v18 = *(a3 + v15 + 8);

    v20 = v13;

    v21 = v18;
    a1 = v28;
    v11 = sub_100245D38(v20, v26, v17, v19, v21);
  }

  (*(v7 + 16))(v9, a1, v6);
  v22 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = v11;
  *(v23 + 24) = a2;
  (*(v7 + 32))(v23 + v22, v9, v6);
  v24 = v11;

  sub_1000259E4(a3, sub_100039318, v23);
}

uint64_t sub_1000285CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for CustodianshipInfoRecord(0);
  __chkstk_darwin(v5 - 8);
  v7 = v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100005814(&unk_1003DA0E0, &unk_10033F1D0);
  __chkstk_darwin(v8);
  v10 = (v12 - v9);
  if (a2)
  {
    sub_1000D2720(a1);
  }

  swift_getObjectType();
  sub_100246FA8(a2);
  sub_100012D04(a1, v10, &unk_1003DA0E0, &unk_10033F1D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12[1] = *v10;
    sub_100005814(&unk_1003D9260, &unk_10033ECE0);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    sub_100039200(v10, v7, type metadata accessor for CustodianshipInfoRecord);
    sub_100005814(&unk_1003D9260, &unk_10033ECE0);
    return CheckedContinuation.resume(returning:)();
  }
}

uint64_t sub_10002877C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  *(v5 + 145) = a4;
  *(v5 + 280) = a3;
  *(v5 + 288) = a5;
  *(v5 + 264) = a1;
  *(v5 + 272) = a2;
  v6 = type metadata accessor for UUID();
  *(v5 + 296) = v6;
  *(v5 + 304) = *(v6 - 8);
  *(v5 + 312) = swift_task_alloc();
  *(v5 + 320) = type metadata accessor for FetchRecoveryRecordsRequest(0);
  *(v5 + 328) = swift_task_alloc();
  *(v5 + 336) = type metadata accessor for CustodianshipInfoRecord(0);
  *(v5 + 344) = swift_task_alloc();
  *(v5 + 352) = swift_task_alloc();
  *(v5 + 360) = swift_task_alloc();

  return _swift_task_switch(sub_1000288BC, 0, 0);
}

uint64_t sub_1000288BC()
{
  v71 = v0;
  v1 = *(v0 + 272);
  v2 = *(v1 + *(*(v0 + 336) + 28));
  sub_100038554(v1, *(v0 + 360), type metadata accessor for CustodianshipInfoRecord);
  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v3 = *(v0 + 328);
  v4 = *(v0 + 280);
  v5 = type metadata accessor for Logger();
  *(v0 + 368) = sub_100008D04(v5, qword_1003FAA88);
  sub_100038554(v4, v3, type metadata accessor for FetchRecoveryRecordsRequest);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v0 + 352);
    v9 = *(v0 + 360);
    v10 = v2;
    v66 = v7;
    v11 = *(v0 + 320);
    v12 = *(v0 + 328);
    v13 = *(v0 + 304);
    v63 = *(v0 + 296);
    v64 = *(v0 + 312);
    v14 = swift_slowAlloc();
    v70[0] = swift_slowAlloc();
    *v14 = 136315650;
    v15 = v12 + *(v11 + 24);
    v16 = *v15;
    LOBYTE(v15) = *(v15 + 8);
    *(v0 + 136) = v16;
    *(v0 + 144) = v15;
    sub_100005814(&qword_1003D9258, &qword_10033ECD8);
    v17 = String.init<A>(describing:)();
    v19 = v18;
    v20 = v12;
    v2 = v10;
    sub_1000385BC(v20, type metadata accessor for FetchRecoveryRecordsRequest);
    v21 = sub_10021145C(v17, v19, v70);

    *(v14 + 4) = v21;
    *(v14 + 12) = 2048;
    *(v14 + 14) = v10;
    *(v14 + 22) = 2080;
    swift_beginAccess();
    sub_100038554(v9, v8, type metadata accessor for CustodianshipInfoRecord);
    (*(v13 + 16))(v64, v8, v63);
    sub_1000385BC(v8, type metadata accessor for CustodianshipInfoRecord);
    sub_100039268(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v22 = dispatch thunk of CustomStringConvertible.description.getter();
    v24 = v23;
    (*(v13 + 8))(v64, v63);
    v25 = sub_10021145C(v22, v24, v70);

    *(v14 + 24) = v25;
    _os_log_impl(&_mh_execute_header, v6, v66, "Check if expected state: %s == local record state: %ld for recordID: %s", v14, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
    v26 = *(v0 + 328);

    sub_1000385BC(v26, type metadata accessor for FetchRecoveryRecordsRequest);
  }

  v27 = (*(v0 + 280) + *(*(v0 + 320) + 24));
  v28 = *v27;
  *(v0 + 376) = *v27;
  if ((v27[1] & 1) == 0 && v2 != v28)
  {
    v69 = v2;
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = *(v0 + 352);
      v32 = *(v0 + 360);
      v34 = *(v0 + 304);
      v33 = *(v0 + 312);
      v35 = *(v0 + 296);
      v67 = *(v0 + 145);
      v36 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      v70[0] = v65;
      *v36 = 134218754;
      *(v36 + 4) = v28;
      *(v36 + 12) = 2048;
      *(v36 + 14) = v69;
      *(v36 + 22) = 2080;
      swift_beginAccess();
      sub_100038554(v32, v31, type metadata accessor for CustodianshipInfoRecord);
      (*(v34 + 16))(v33, v31, v35);
      sub_1000385BC(v31, type metadata accessor for CustodianshipInfoRecord);
      sub_100039268(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v37 = dispatch thunk of CustomStringConvertible.description.getter();
      v39 = v38;
      (*(v34 + 8))(v33, v35);
      v40 = sub_10021145C(v37, v39, v70);

      *(v36 + 24) = v40;
      *(v36 + 32) = 1024;
      *(v36 + 34) = v67;
      _os_log_impl(&_mh_execute_header, v29, v30, "Expected state: %ld, but local record state: %ld for recordID: %s, shouldRefresh: %{BOOL}d", v36, 0x26u);
      sub_10000839C(v65);
    }

    if (*(v0 + 145) == 1)
    {
      sub_1000080F8((*(v0 + 288) + 16), *(*(v0 + 288) + 40));
      v41 = swift_task_alloc();
      *(v0 + 384) = v41;
      *v41 = v0;
      v41[1] = sub_100029568;
      v42 = *(v0 + 344);
      v43 = *(v0 + 272);

      return sub_10022C868(v42, v43);
    }

    v45 = v69;
    if (v69 != *(v0 + 376))
    {
      v49 = Logger.logObject.getter();
      v50 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v49, v50))
      {
        v51 = *(v0 + 376);
        v52 = *(v0 + 352);
        v53 = *(v0 + 360);
        v55 = *(v0 + 304);
        v54 = *(v0 + 312);
        v56 = *(v0 + 296);
        v57 = swift_slowAlloc();
        v68 = swift_slowAlloc();
        v70[0] = v68;
        *v57 = 134218498;
        *(v57 + 4) = v69;
        *(v57 + 12) = 2048;
        *(v57 + 14) = v51;
        *(v57 + 22) = 2080;
        swift_beginAccess();
        sub_100038554(v53, v52, type metadata accessor for CustodianshipInfoRecord);
        (*(v55 + 16))(v54, v52, v56);
        sub_1000385BC(v52, type metadata accessor for CustodianshipInfoRecord);
        sub_100039268(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v58 = dispatch thunk of CustomStringConvertible.description.getter();
        v60 = v59;
        v45 = v69;
        (*(v55 + 8))(v54, v56);
        v61 = sub_10021145C(v58, v60, v70);

        *(v57 + 24) = v61;
        _os_log_impl(&_mh_execute_header, v49, v50, "Record state(%ld) does not matches expected state(%ld) after refreshing for recordID: %s", v57, 0x20u);
        sub_10000839C(v68);
      }

      v62 = *(v0 + 360);
      if (v45 > 2)
      {
        switch(v45)
        {
          case 3:
            type metadata accessor for AACustodianError(0);
            *(v0 + 192) = -7078;
            sub_100212324(_swiftEmptyArrayStorage);
            sub_100039268(&qword_1003D8140, type metadata accessor for AACustodianError, &unk_10033DF94);
            _BridgedStoredNSError.init(_:userInfo:)();
            goto LABEL_35;
          case 4:
            type metadata accessor for AACustodianError(0);
            *(v0 + 240) = -7077;
            sub_100212324(_swiftEmptyArrayStorage);
            sub_100039268(&qword_1003D8140, type metadata accessor for AACustodianError, &unk_10033DF94);
            _BridgedStoredNSError.init(_:userInfo:)();
            goto LABEL_35;
          case 5:
            type metadata accessor for AACustodianError(0);
            *(v0 + 224) = -7079;
            sub_100212324(_swiftEmptyArrayStorage);
            sub_100039268(&qword_1003D8140, type metadata accessor for AACustodianError, &unk_10033DF94);
            _BridgedStoredNSError.init(_:userInfo:)();
            goto LABEL_35;
        }
      }

      else
      {
        switch(v45)
        {
          case -1:
            type metadata accessor for AACustodianError(0);
            *(v0 + 176) = -7081;
            sub_100212324(_swiftEmptyArrayStorage);
            sub_100039268(&qword_1003D8140, type metadata accessor for AACustodianError, &unk_10033DF94);
            _BridgedStoredNSError.init(_:userInfo:)();
            goto LABEL_35;
          case 1:
            type metadata accessor for AACustodianError(0);
            *(v0 + 256) = -7076;
            sub_100212324(_swiftEmptyArrayStorage);
            sub_100039268(&qword_1003D8140, type metadata accessor for AACustodianError, &unk_10033DF94);
            _BridgedStoredNSError.init(_:userInfo:)();
            goto LABEL_35;
          case 2:
            type metadata accessor for AACustodianError(0);
            *(v0 + 208) = -7080;
            sub_100212324(_swiftEmptyArrayStorage);
            sub_100039268(&qword_1003D8140, type metadata accessor for AACustodianError, &unk_10033DF94);
            _BridgedStoredNSError.init(_:userInfo:)();
LABEL_35:
            swift_willThrow();
            sub_1000385BC(v62, type metadata accessor for CustodianshipInfoRecord);

            v48 = *(v0 + 8);
            goto LABEL_16;
        }
      }

      type metadata accessor for AACustodianError(0);
      *(v0 + 160) = -7081;
      sub_100212324(_swiftEmptyArrayStorage);
      sub_100039268(&qword_1003D8140, type metadata accessor for AACustodianError, &unk_10033DF94);
      _BridgedStoredNSError.init(_:userInfo:)();
      goto LABEL_35;
    }
  }

  v46 = *(v0 + 360);
  v47 = *(v0 + 264);
  swift_beginAccess();
  sub_100038554(v46, v47, type metadata accessor for CustodianshipInfoRecord);
  sub_1000385BC(v46, type metadata accessor for CustodianshipInfoRecord);

  v48 = *(v0 + 8);
LABEL_16:

  return v48();
}

uint64_t sub_100029568()
{
  *(*v1 + 392) = v0;

  if (v0)
  {
    v2 = sub_100029F64;
  }

  else
  {
    v2 = sub_10002967C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10002967C()
{
  v41 = v0;
  v1 = v0[45];
  v3 = v0[43];
  v2 = v0[44];
  v4 = v0[42];
  swift_beginAccess();
  sub_100039390(v3, v1, type metadata accessor for CustodianshipInfoRecord);
  sub_100038554(v1, v2, type metadata accessor for CustodianshipInfoRecord);
  v5 = *(v2 + *(v4 + 28));
  sub_1000385BC(v2, type metadata accessor for CustodianshipInfoRecord);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v9 = v0[44];
    v8 = v0[45];
    v11 = v0[38];
    v10 = v0[39];
    v12 = v0[37];
    v38 = v5;
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v40[0] = v14;
    *v13 = 134218242;
    *(v13 + 4) = v38;
    *(v13 + 12) = 2080;
    sub_100038554(v8, v9, type metadata accessor for CustodianshipInfoRecord);
    (*(v11 + 16))(v10, v9, v12);
    sub_1000385BC(v9, type metadata accessor for CustodianshipInfoRecord);
    sub_100039268(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v17 = v16;
    (*(v11 + 8))(v10, v12);
    v18 = sub_10021145C(v15, v17, v40);

    *(v13 + 14) = v18;
    _os_log_impl(&_mh_execute_header, v6, v7, "Record state after refresh: %ld, recordID %s", v13, 0x16u);
    sub_10000839C(v14);

    v5 = v38;
  }

  if (v5 == v0[47])
  {
    v19 = v0[45];
    v20 = v0[33];
    swift_beginAccess();
    sub_100038554(v19, v20, type metadata accessor for CustodianshipInfoRecord);
    sub_1000385BC(v19, type metadata accessor for CustodianshipInfoRecord);

    v21 = v0[1];
    goto LABEL_22;
  }

  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = v0[47];
    v25 = v0[44];
    v26 = v0[45];
    v28 = v0[38];
    v27 = v0[39];
    v29 = v0[37];
    v39 = v5;
    v30 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v40[0] = v37;
    *v30 = 134218498;
    *(v30 + 4) = v39;
    *(v30 + 12) = 2048;
    *(v30 + 14) = v24;
    *(v30 + 22) = 2080;
    swift_beginAccess();
    sub_100038554(v26, v25, type metadata accessor for CustodianshipInfoRecord);
    (*(v28 + 16))(v27, v25, v29);
    sub_1000385BC(v25, type metadata accessor for CustodianshipInfoRecord);
    sub_100039268(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v31 = dispatch thunk of CustomStringConvertible.description.getter();
    v33 = v32;
    (*(v28 + 8))(v27, v29);
    v34 = sub_10021145C(v31, v33, v40);

    *(v30 + 24) = v34;
    _os_log_impl(&_mh_execute_header, v22, v23, "Record state(%ld) does not matches expected state(%ld) after refreshing for recordID: %s", v30, 0x20u);
    sub_10000839C(v37);

    v5 = v39;
  }

  v35 = v0[45];
  if (v5 > 2)
  {
    switch(v5)
    {
      case 3:
        type metadata accessor for AACustodianError(0);
        v0[24] = -7078;
        sub_100212324(_swiftEmptyArrayStorage);
        sub_100039268(&qword_1003D8140, type metadata accessor for AACustodianError, &unk_10033DF94);
        _BridgedStoredNSError.init(_:userInfo:)();
        goto LABEL_21;
      case 4:
        type metadata accessor for AACustodianError(0);
        v0[30] = -7077;
        sub_100212324(_swiftEmptyArrayStorage);
        sub_100039268(&qword_1003D8140, type metadata accessor for AACustodianError, &unk_10033DF94);
        _BridgedStoredNSError.init(_:userInfo:)();
        goto LABEL_21;
      case 5:
        type metadata accessor for AACustodianError(0);
        v0[28] = -7079;
        sub_100212324(_swiftEmptyArrayStorage);
        sub_100039268(&qword_1003D8140, type metadata accessor for AACustodianError, &unk_10033DF94);
        _BridgedStoredNSError.init(_:userInfo:)();
        goto LABEL_21;
    }

LABEL_18:
    type metadata accessor for AACustodianError(0);
    v0[20] = -7081;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_100039268(&qword_1003D8140, type metadata accessor for AACustodianError, &unk_10033DF94);
    _BridgedStoredNSError.init(_:userInfo:)();
    goto LABEL_21;
  }

  if (v5 == -1)
  {
    type metadata accessor for AACustodianError(0);
    v0[22] = -7081;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_100039268(&qword_1003D8140, type metadata accessor for AACustodianError, &unk_10033DF94);
    _BridgedStoredNSError.init(_:userInfo:)();
    goto LABEL_21;
  }

  if (v5 == 1)
  {
    type metadata accessor for AACustodianError(0);
    v0[32] = -7076;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_100039268(&qword_1003D8140, type metadata accessor for AACustodianError, &unk_10033DF94);
    _BridgedStoredNSError.init(_:userInfo:)();
    goto LABEL_21;
  }

  if (v5 != 2)
  {
    goto LABEL_18;
  }

  type metadata accessor for AACustodianError(0);
  v0[26] = -7080;
  sub_100212324(_swiftEmptyArrayStorage);
  sub_100039268(&qword_1003D8140, type metadata accessor for AACustodianError, &unk_10033DF94);
  _BridgedStoredNSError.init(_:userInfo:)();
LABEL_21:
  swift_willThrow();
  sub_1000385BC(v35, type metadata accessor for CustodianshipInfoRecord);

  v21 = v0[1];
LABEL_22:

  return v21();
}

uint64_t sub_100029F64()
{
  sub_1000385BC(*(v0 + 360), type metadata accessor for CustodianshipInfoRecord);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10002A020(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  *(v5 + 145) = a4;
  *(v5 + 280) = a3;
  *(v5 + 288) = a5;
  *(v5 + 264) = a1;
  *(v5 + 272) = a2;
  v6 = type metadata accessor for UUID();
  *(v5 + 296) = v6;
  *(v5 + 304) = *(v6 - 8);
  *(v5 + 312) = swift_task_alloc();
  *(v5 + 320) = type metadata accessor for FetchRecoveryRecordsRequest(0);
  *(v5 + 328) = swift_task_alloc();
  *(v5 + 336) = type metadata accessor for CustodianRecord(0);
  *(v5 + 344) = swift_task_alloc();
  *(v5 + 352) = swift_task_alloc();
  *(v5 + 360) = swift_task_alloc();

  return _swift_task_switch(sub_10002A160, 0, 0);
}

uint64_t sub_10002A160()
{
  v71 = v0;
  v1 = *(v0 + 272);
  v2 = *(v1 + *(*(v0 + 336) + 36));
  sub_100038554(v1, *(v0 + 360), type metadata accessor for CustodianRecord);
  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v3 = *(v0 + 328);
  v4 = *(v0 + 280);
  v5 = type metadata accessor for Logger();
  *(v0 + 368) = sub_100008D04(v5, qword_1003FAA88);
  sub_100038554(v4, v3, type metadata accessor for FetchRecoveryRecordsRequest);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v0 + 352);
    v9 = *(v0 + 360);
    v10 = v2;
    v66 = v7;
    v11 = *(v0 + 320);
    v12 = *(v0 + 328);
    v13 = *(v0 + 304);
    v63 = *(v0 + 296);
    v64 = *(v0 + 312);
    v14 = swift_slowAlloc();
    v70[0] = swift_slowAlloc();
    *v14 = 136315650;
    v15 = v12 + *(v11 + 24);
    v16 = *v15;
    LOBYTE(v15) = *(v15 + 8);
    *(v0 + 136) = v16;
    *(v0 + 144) = v15;
    sub_100005814(&qword_1003D9258, &qword_10033ECD8);
    v17 = String.init<A>(describing:)();
    v19 = v18;
    v20 = v12;
    v2 = v10;
    sub_1000385BC(v20, type metadata accessor for FetchRecoveryRecordsRequest);
    v21 = sub_10021145C(v17, v19, v70);

    *(v14 + 4) = v21;
    *(v14 + 12) = 2048;
    *(v14 + 14) = v10;
    *(v14 + 22) = 2080;
    swift_beginAccess();
    sub_100038554(v9, v8, type metadata accessor for CustodianRecord);
    (*(v13 + 16))(v64, v8, v63);
    sub_1000385BC(v8, type metadata accessor for CustodianRecord);
    sub_100039268(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v22 = dispatch thunk of CustomStringConvertible.description.getter();
    v24 = v23;
    (*(v13 + 8))(v64, v63);
    v25 = sub_10021145C(v22, v24, v70);

    *(v14 + 24) = v25;
    _os_log_impl(&_mh_execute_header, v6, v66, "Check if expected state: %s == local record state: %ld for recordID: %s", v14, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
    v26 = *(v0 + 328);

    sub_1000385BC(v26, type metadata accessor for FetchRecoveryRecordsRequest);
  }

  v27 = (*(v0 + 280) + *(*(v0 + 320) + 24));
  v28 = *v27;
  *(v0 + 376) = *v27;
  if ((v27[1] & 1) == 0 && v2 != v28)
  {
    v69 = v2;
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = *(v0 + 352);
      v32 = *(v0 + 360);
      v34 = *(v0 + 304);
      v33 = *(v0 + 312);
      v35 = *(v0 + 296);
      v67 = *(v0 + 145);
      v36 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      v70[0] = v65;
      *v36 = 134218754;
      *(v36 + 4) = v28;
      *(v36 + 12) = 2048;
      *(v36 + 14) = v69;
      *(v36 + 22) = 2080;
      swift_beginAccess();
      sub_100038554(v32, v31, type metadata accessor for CustodianRecord);
      (*(v34 + 16))(v33, v31, v35);
      sub_1000385BC(v31, type metadata accessor for CustodianRecord);
      sub_100039268(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v37 = dispatch thunk of CustomStringConvertible.description.getter();
      v39 = v38;
      (*(v34 + 8))(v33, v35);
      v40 = sub_10021145C(v37, v39, v70);

      *(v36 + 24) = v40;
      *(v36 + 32) = 1024;
      *(v36 + 34) = v67;
      _os_log_impl(&_mh_execute_header, v29, v30, "Expected state: %ld, but local record state: %ld for recordID: %s, shouldRefresh: %{BOOL}d", v36, 0x26u);
      sub_10000839C(v65);
    }

    if (*(v0 + 145) == 1)
    {
      sub_1000080F8((*(v0 + 288) + 16), *(*(v0 + 288) + 40));
      v41 = swift_task_alloc();
      *(v0 + 384) = v41;
      *v41 = v0;
      v41[1] = sub_10002AE0C;
      v42 = *(v0 + 344);
      v43 = *(v0 + 272);

      return sub_10022DA0C(v42, v43);
    }

    v45 = v69;
    if (v69 != *(v0 + 376))
    {
      v49 = Logger.logObject.getter();
      v50 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v49, v50))
      {
        v51 = *(v0 + 376);
        v52 = *(v0 + 352);
        v53 = *(v0 + 360);
        v55 = *(v0 + 304);
        v54 = *(v0 + 312);
        v56 = *(v0 + 296);
        v57 = swift_slowAlloc();
        v68 = swift_slowAlloc();
        v70[0] = v68;
        *v57 = 134218498;
        *(v57 + 4) = v69;
        *(v57 + 12) = 2048;
        *(v57 + 14) = v51;
        *(v57 + 22) = 2080;
        swift_beginAccess();
        sub_100038554(v53, v52, type metadata accessor for CustodianRecord);
        (*(v55 + 16))(v54, v52, v56);
        sub_1000385BC(v52, type metadata accessor for CustodianRecord);
        sub_100039268(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v58 = dispatch thunk of CustomStringConvertible.description.getter();
        v60 = v59;
        v45 = v69;
        (*(v55 + 8))(v54, v56);
        v61 = sub_10021145C(v58, v60, v70);

        *(v57 + 24) = v61;
        _os_log_impl(&_mh_execute_header, v49, v50, "Record state(%ld) does not matches expected state(%ld) after refreshing for recordID: %s", v57, 0x20u);
        sub_10000839C(v68);
      }

      v62 = *(v0 + 360);
      if (v45 > 2)
      {
        switch(v45)
        {
          case 3:
            type metadata accessor for AACustodianError(0);
            *(v0 + 192) = -7078;
            sub_100212324(_swiftEmptyArrayStorage);
            sub_100039268(&qword_1003D8140, type metadata accessor for AACustodianError, &unk_10033DF94);
            _BridgedStoredNSError.init(_:userInfo:)();
            goto LABEL_35;
          case 4:
            type metadata accessor for AACustodianError(0);
            *(v0 + 240) = -7077;
            sub_100212324(_swiftEmptyArrayStorage);
            sub_100039268(&qword_1003D8140, type metadata accessor for AACustodianError, &unk_10033DF94);
            _BridgedStoredNSError.init(_:userInfo:)();
            goto LABEL_35;
          case 5:
            type metadata accessor for AACustodianError(0);
            *(v0 + 224) = -7079;
            sub_100212324(_swiftEmptyArrayStorage);
            sub_100039268(&qword_1003D8140, type metadata accessor for AACustodianError, &unk_10033DF94);
            _BridgedStoredNSError.init(_:userInfo:)();
            goto LABEL_35;
        }
      }

      else
      {
        switch(v45)
        {
          case -1:
            type metadata accessor for AACustodianError(0);
            *(v0 + 176) = -7081;
            sub_100212324(_swiftEmptyArrayStorage);
            sub_100039268(&qword_1003D8140, type metadata accessor for AACustodianError, &unk_10033DF94);
            _BridgedStoredNSError.init(_:userInfo:)();
            goto LABEL_35;
          case 1:
            type metadata accessor for AACustodianError(0);
            *(v0 + 256) = -7076;
            sub_100212324(_swiftEmptyArrayStorage);
            sub_100039268(&qword_1003D8140, type metadata accessor for AACustodianError, &unk_10033DF94);
            _BridgedStoredNSError.init(_:userInfo:)();
            goto LABEL_35;
          case 2:
            type metadata accessor for AACustodianError(0);
            *(v0 + 208) = -7080;
            sub_100212324(_swiftEmptyArrayStorage);
            sub_100039268(&qword_1003D8140, type metadata accessor for AACustodianError, &unk_10033DF94);
            _BridgedStoredNSError.init(_:userInfo:)();
LABEL_35:
            swift_willThrow();
            sub_1000385BC(v62, type metadata accessor for CustodianRecord);

            v48 = *(v0 + 8);
            goto LABEL_16;
        }
      }

      type metadata accessor for AACustodianError(0);
      *(v0 + 160) = -7081;
      sub_100212324(_swiftEmptyArrayStorage);
      sub_100039268(&qword_1003D8140, type metadata accessor for AACustodianError, &unk_10033DF94);
      _BridgedStoredNSError.init(_:userInfo:)();
      goto LABEL_35;
    }
  }

  v46 = *(v0 + 360);
  v47 = *(v0 + 264);
  swift_beginAccess();
  sub_100038554(v46, v47, type metadata accessor for CustodianRecord);
  sub_1000385BC(v46, type metadata accessor for CustodianRecord);

  v48 = *(v0 + 8);
LABEL_16:

  return v48();
}

uint64_t sub_10002AE0C()
{
  *(*v1 + 392) = v0;

  if (v0)
  {
    v2 = sub_10002B808;
  }

  else
  {
    v2 = sub_10002AF20;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10002AF20()
{
  v41 = v0;
  v1 = v0[45];
  v3 = v0[43];
  v2 = v0[44];
  v4 = v0[42];
  swift_beginAccess();
  sub_100039390(v3, v1, type metadata accessor for CustodianRecord);
  sub_100038554(v1, v2, type metadata accessor for CustodianRecord);
  v5 = *(v2 + *(v4 + 36));
  sub_1000385BC(v2, type metadata accessor for CustodianRecord);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v9 = v0[44];
    v8 = v0[45];
    v11 = v0[38];
    v10 = v0[39];
    v12 = v0[37];
    v38 = v5;
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v40[0] = v14;
    *v13 = 134218242;
    *(v13 + 4) = v38;
    *(v13 + 12) = 2080;
    sub_100038554(v8, v9, type metadata accessor for CustodianRecord);
    (*(v11 + 16))(v10, v9, v12);
    sub_1000385BC(v9, type metadata accessor for CustodianRecord);
    sub_100039268(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v17 = v16;
    (*(v11 + 8))(v10, v12);
    v18 = sub_10021145C(v15, v17, v40);

    *(v13 + 14) = v18;
    _os_log_impl(&_mh_execute_header, v6, v7, "Record state after refresh: %ld, recordID %s", v13, 0x16u);
    sub_10000839C(v14);

    v5 = v38;
  }

  if (v5 == v0[47])
  {
    v19 = v0[45];
    v20 = v0[33];
    swift_beginAccess();
    sub_100038554(v19, v20, type metadata accessor for CustodianRecord);
    sub_1000385BC(v19, type metadata accessor for CustodianRecord);

    v21 = v0[1];
    goto LABEL_22;
  }

  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = v0[47];
    v25 = v0[44];
    v26 = v0[45];
    v28 = v0[38];
    v27 = v0[39];
    v29 = v0[37];
    v39 = v5;
    v30 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v40[0] = v37;
    *v30 = 134218498;
    *(v30 + 4) = v39;
    *(v30 + 12) = 2048;
    *(v30 + 14) = v24;
    *(v30 + 22) = 2080;
    swift_beginAccess();
    sub_100038554(v26, v25, type metadata accessor for CustodianRecord);
    (*(v28 + 16))(v27, v25, v29);
    sub_1000385BC(v25, type metadata accessor for CustodianRecord);
    sub_100039268(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v31 = dispatch thunk of CustomStringConvertible.description.getter();
    v33 = v32;
    (*(v28 + 8))(v27, v29);
    v34 = sub_10021145C(v31, v33, v40);

    *(v30 + 24) = v34;
    _os_log_impl(&_mh_execute_header, v22, v23, "Record state(%ld) does not matches expected state(%ld) after refreshing for recordID: %s", v30, 0x20u);
    sub_10000839C(v37);

    v5 = v39;
  }

  v35 = v0[45];
  if (v5 > 2)
  {
    switch(v5)
    {
      case 3:
        type metadata accessor for AACustodianError(0);
        v0[24] = -7078;
        sub_100212324(_swiftEmptyArrayStorage);
        sub_100039268(&qword_1003D8140, type metadata accessor for AACustodianError, &unk_10033DF94);
        _BridgedStoredNSError.init(_:userInfo:)();
        goto LABEL_21;
      case 4:
        type metadata accessor for AACustodianError(0);
        v0[30] = -7077;
        sub_100212324(_swiftEmptyArrayStorage);
        sub_100039268(&qword_1003D8140, type metadata accessor for AACustodianError, &unk_10033DF94);
        _BridgedStoredNSError.init(_:userInfo:)();
        goto LABEL_21;
      case 5:
        type metadata accessor for AACustodianError(0);
        v0[28] = -7079;
        sub_100212324(_swiftEmptyArrayStorage);
        sub_100039268(&qword_1003D8140, type metadata accessor for AACustodianError, &unk_10033DF94);
        _BridgedStoredNSError.init(_:userInfo:)();
        goto LABEL_21;
    }

LABEL_18:
    type metadata accessor for AACustodianError(0);
    v0[20] = -7081;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_100039268(&qword_1003D8140, type metadata accessor for AACustodianError, &unk_10033DF94);
    _BridgedStoredNSError.init(_:userInfo:)();
    goto LABEL_21;
  }

  if (v5 == -1)
  {
    type metadata accessor for AACustodianError(0);
    v0[22] = -7081;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_100039268(&qword_1003D8140, type metadata accessor for AACustodianError, &unk_10033DF94);
    _BridgedStoredNSError.init(_:userInfo:)();
    goto LABEL_21;
  }

  if (v5 == 1)
  {
    type metadata accessor for AACustodianError(0);
    v0[32] = -7076;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_100039268(&qword_1003D8140, type metadata accessor for AACustodianError, &unk_10033DF94);
    _BridgedStoredNSError.init(_:userInfo:)();
    goto LABEL_21;
  }

  if (v5 != 2)
  {
    goto LABEL_18;
  }

  type metadata accessor for AACustodianError(0);
  v0[26] = -7080;
  sub_100212324(_swiftEmptyArrayStorage);
  sub_100039268(&qword_1003D8140, type metadata accessor for AACustodianError, &unk_10033DF94);
  _BridgedStoredNSError.init(_:userInfo:)();
LABEL_21:
  swift_willThrow();
  sub_1000385BC(v35, type metadata accessor for CustodianRecord);

  v21 = v0[1];
LABEL_22:

  return v21();
}

uint64_t sub_10002B808()
{
  sub_1000385BC(*(v0 + 360), type metadata accessor for CustodianRecord);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10002B8C4(uint64_t a1, uint64_t a2)
{
  v27 = a2;
  v28 = sub_100005814(&qword_1003D9110, &qword_10033EC10);
  v3 = *(v28 - 8);
  __chkstk_darwin(v28);
  v5 = &v24 - v4;
  v6 = type metadata accessor for URL();
  v25 = *(v6 - 8);
  v26 = v6;
  v7 = __chkstk_darwin(v6);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v24 - v10;
  v12 = sub_100005814(&qword_1003D9118, &qword_10033EC18);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v24 - v14;
  (*(v13 + 16))(&v24 - v14, a1, v12);
  v16 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v17 = swift_allocObject();
  (*(v13 + 32))(v17 + v16, v15, v12);
  v18 = sub_1000080F8((v27 + 16), *(v27 + 40));
  type metadata accessor for LocalCache();
  sub_100307F40();
  URL.appendingPathComponent(_:isDirectory:)();
  v19 = v26;
  v20 = *(v25 + 8);
  v20(v9, v26);
  v21 = *v18 + OBJC_IVAR____TtC13appleaccountd17StorageController__localStorage;
  v22 = v28;
  (*(v3 + 16))(v5, v21, v28);
  Dependency.wrappedValue.getter();
  (*(v3 + 8))(v5, v22);
  sub_1000080F8(v29, v29[3]);
  sub_100032500(v11, sub_100030B24, v17, &unk_1003A4D58, sub_1000383B4, &unk_1003A4D70);

  v20(v11, v19);
  return sub_10000839C(v29);
}

uint64_t sub_10002BC50(uint64_t a1, char a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  if (a2)
  {
    swift_errorRetain();
    sub_100005814(a4, a5);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {

    sub_100005814(a4, a5);
    return CheckedContinuation.resume(returning:)();
  }
}

uint64_t sub_10002BCD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v29 = a2;
  v30 = a3;
  v5 = sub_100005814(&qword_1003D9110, &qword_10033EC10);
  v32 = *(v5 - 8);
  v33 = v5;
  __chkstk_darwin(v5);
  v7 = &v27 - v6;
  v31 = type metadata accessor for URL();
  v28 = *(v31 - 8);
  v8 = __chkstk_darwin(v31);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v27 - v11;
  v13 = type metadata accessor for UUID();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  (*(v14 + 16))(&v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v13);
  v16 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v17 = swift_allocObject();
  (*(v14 + 32))(v17 + v16, &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v13);
  v18 = (v17 + ((v15 + v16 + 7) & 0xFFFFFFFFFFFFFFF8));
  v19 = v30;
  *v18 = v29;
  v18[1] = v19;
  v20 = sub_1000080F8((v3 + 16), *(v3 + 40));
  type metadata accessor for LocalCache();

  sub_100307F40();
  URL.appendingPathComponent(_:isDirectory:)();
  v21 = *(v28 + 8);
  v22 = v31;
  v21(v10, v31);
  v23 = *v20;
  v25 = v32;
  v24 = v33;
  (*(v32 + 16))(v7, v23 + OBJC_IVAR____TtC13appleaccountd17StorageController__localStorage, v33);
  Dependency.wrappedValue.getter();
  (*(v25 + 8))(v7, v24);
  sub_1000080F8(v34, v34[3]);
  sub_100032500(v12, sub_1000392B4, v17, &unk_1003A4FD8, sub_1000389A8, &unk_1003A4FF0);

  v21(v12, v22);
  return sub_10000839C(v34);
}

uint64_t sub_10002C068(uint64_t a1, char a2, uint64_t a3, void (*a4)(void *), uint64_t a5)
{
  v78 = a5;
  v79 = a4;
  v76 = sub_100005814(&qword_1003D91E8, &qword_100346AC0);
  __chkstk_darwin(v76);
  v77 = (&v71 - v8);
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v74 = &v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v71 - v13;
  v15 = type metadata accessor for CustodianHealthRecord(0);
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin(v15);
  v19 = &v71 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v75 = &v71 - v20;
  v21 = sub_100005814(&qword_1003D91A8, &unk_10033EC40);
  v22 = __chkstk_darwin(v21 - 8);
  v24 = &v71 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v22);
  if (a2)
  {
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    sub_100008D04(v26, qword_1003FAA88);
    swift_errorRetain();
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();
    sub_1000399DC(a1, 1);
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      *v29 = 138412290;
      v31 = _convertErrorToNSError(_:)();
      *(v29 + 4) = v31;
      *v30 = v31;
      _os_log_impl(&_mh_execute_header, v27, v28, "Error fetching health records: %@", v29, 0xCu);
      sub_100008D3C(v30, &unk_1003D9140, &qword_10033E640);
    }

    v32 = v77;
    *v77 = a1;
    swift_storeEnumTagMultiPayload();
    swift_errorRetain();
    v79(v32);
    v33 = &qword_1003D91E8;
    v34 = &qword_100346AC0;
    v35 = v32;
  }

  else
  {
    v72 = v10;
    v36 = v9;
    __chkstk_darwin(v25);
    v71 = a3;
    *(&v71 - 2) = a3;
    v38 = v37;
    sub_10021414C(sub_1000392CC, a1, v37);
    v73 = v38;
    sub_100012D04(v38, v24, &qword_1003D91A8, &unk_10033EC40);
    if ((*(v16 + 48))(v24, 1, v15) == 1)
    {
      sub_100008D3C(v24, &qword_1003D91A8, &unk_10033EC40);
      v39 = v36;
      if (qword_1003D7F38 != -1)
      {
        swift_once();
      }

      v40 = type metadata accessor for Logger();
      sub_100008D04(v40, qword_1003FAA88);
      v41 = v72;
      (*(v72 + 16))(v14, v71, v36);
      v42 = Logger.logObject.getter();
      v43 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        v81[0] = v45;
        *v44 = 136315138;
        sub_100039268(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v46 = dispatch thunk of CustomStringConvertible.description.getter();
        v48 = v47;
        (*(v41 + 8))(v14, v39);
        v49 = sub_10021145C(v46, v48, v81);

        *(v44 + 4) = v49;
        _os_log_impl(&_mh_execute_header, v42, v43, "Couldn't find health check record for %s", v44, 0xCu);
        sub_10000839C(v45);
      }

      else
      {

        (*(v41 + 8))(v14, v36);
      }

      type metadata accessor for AACustodianError(0);
      v80 = -7060;
      sub_100212324(_swiftEmptyArrayStorage);
      sub_100039268(&qword_1003D8140, type metadata accessor for AACustodianError, &unk_10033DF94);
      _BridgedStoredNSError.init(_:userInfo:)();
      v66 = v81[0];
      v67 = v77;
      *v77 = v81[0];
      swift_storeEnumTagMultiPayload();
      v68 = v66;
      v79(v67);

      sub_100008D3C(v67, &qword_1003D91E8, &qword_100346AC0);
    }

    else
    {
      v50 = v75;
      sub_100039200(v24, v75, type metadata accessor for CustodianHealthRecord);
      v51 = v36;
      if (qword_1003D7F38 != -1)
      {
        swift_once();
      }

      v52 = type metadata accessor for Logger();
      sub_100008D04(v52, qword_1003FAA88);
      v53 = v72;
      v54 = v74;
      (*(v72 + 16))(v74, v71, v51);
      sub_100038554(v50, v19, type metadata accessor for CustodianHealthRecord);
      v55 = Logger.logObject.getter();
      v56 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v55, v56))
      {
        v57 = swift_slowAlloc();
        v71 = swift_slowAlloc();
        v81[0] = v71;
        *v57 = 136315394;
        sub_100039268(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v58 = dispatch thunk of CustomStringConvertible.description.getter();
        v60 = v59;
        (*(v53 + 8))(v54, v51);
        v61 = sub_10021145C(v58, v60, v81);

        *(v57 + 4) = v61;
        *(v57 + 12) = 2080;
        v62 = dispatch thunk of CustomStringConvertible.description.getter();
        v64 = v63;
        sub_1000385BC(v19, type metadata accessor for CustodianHealthRecord);
        v65 = sub_10021145C(v62, v64, v81);

        *(v57 + 14) = v65;
        _os_log_impl(&_mh_execute_header, v55, v56, "Found health check record for %s: %s", v57, 0x16u);
        swift_arrayDestroy();

        v50 = v75;
      }

      else
      {

        sub_1000385BC(v19, type metadata accessor for CustodianHealthRecord);
        (*(v53 + 8))(v54, v51);
      }

      v69 = v77;
      sub_100038554(v50, v77, type metadata accessor for CustodianHealthRecord);
      swift_storeEnumTagMultiPayload();
      v79(v69);
      sub_100008D3C(v69, &qword_1003D91E8, &qword_100346AC0);
      sub_1000385BC(v50, type metadata accessor for CustodianHealthRecord);
    }

    v33 = &qword_1003D91A8;
    v34 = &unk_10033EC40;
    v35 = v73;
  }

  return sub_100008D3C(v35, v33, v34);
}

uint64_t sub_10002CA60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_100005814(&qword_1003D91E0, &unk_10033EC70);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v12 - v7;
  (*(v6 + 16))(&v12 - v7, a1, v5);
  v9 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v10 = swift_allocObject();
  (*(v6 + 32))(v10 + v9, v8, v5);
  sub_10002BCD0(a3, sub_100038980, v10);
}

uint64_t sub_10002CBB0(uint64_t a1)
{
  v2 = type metadata accessor for CustodianHealthRecord(0);
  __chkstk_darwin(v2 - 8);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100005814(&qword_1003D91E8, &qword_100346AC0);
  __chkstk_darwin(v5);
  v7 = (v9 - v6);
  sub_100012D04(a1, v9 - v6, &qword_1003D91E8, &qword_100346AC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9[1] = *v7;
    sub_100005814(&qword_1003D91E0, &unk_10033EC70);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    sub_100039200(v7, v4, type metadata accessor for CustodianHealthRecord);
    sub_100005814(&qword_1003D91E0, &unk_10033EC70);
    return CheckedContinuation.resume(returning:)();
  }
}

uint64_t sub_10002CD28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24 = a3;
  v8 = sub_100005814(&qword_1003D9110, &qword_10033EC10);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v23 - v10;
  v25 = type metadata accessor for URL();
  v23 = *(v25 - 8);
  v12 = __chkstk_darwin(v25);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v23 - v15;
  v17 = swift_allocObject();
  v17[2] = a1;
  v17[3] = a2;
  v17[4] = v24;
  v17[5] = a4;
  v18 = sub_1000080F8((v4 + 16), *(v4 + 40));
  type metadata accessor for LocalCache();

  sub_100307F40();
  URL.appendingPathComponent(_:isDirectory:)();
  v19 = *(v23 + 8);
  v20 = v14;
  v21 = v25;
  v19(v20, v25);
  (*(v9 + 16))(v11, *v18 + OBJC_IVAR____TtC13appleaccountd17StorageController__localStorage, v8);
  Dependency.wrappedValue.getter();
  (*(v9 + 8))(v11, v8);
  sub_1000080F8(v26, v26[3]);
  sub_100032500(v16, sub_1000391A8, v17, &unk_1003A5140, sub_1000391BC, &unk_1003A5158);

  v19(v16, v21);
  return sub_10000839C(v26);
}

uint64_t sub_10002D000(uint64_t a1, char a2, uint64_t a3, unint64_t a4, void (*a5)(uint64_t), uint64_t a6)
{
  v56 = a6;
  v54 = sub_100005814(&qword_1003DA0F0, qword_100342AC0);
  __chkstk_darwin(v54);
  v55 = (&v51 - v11);
  v12 = type metadata accessor for CustodianRecoverySessionRecord(0);
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v53 = &v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v51 - v16;
  v18 = sub_100005814(&unk_1003D9240, &unk_10033ECC0);
  v19 = __chkstk_darwin(v18 - 8);
  v21 = &v51 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  if (a2)
  {
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    sub_100008D04(v23, qword_1003FAA88);
    swift_errorRetain();
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();
    sub_1000399DC(a1, 1);
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *v26 = 138412290;
      v28 = _convertErrorToNSError(_:)();
      *(v26 + 4) = v28;
      *v27 = v28;
      _os_log_impl(&_mh_execute_header, v24, v25, "Error fetching recovery session records: %@", v26, 0xCu);
      sub_100008D3C(v27, &unk_1003D9140, &qword_10033E640);
    }

    v29 = v55;
    *v55 = a1;
    swift_storeEnumTagMultiPayload();
    swift_errorRetain();
    a5(v29);
    v30 = &qword_1003DA0F0;
    v31 = qword_100342AC0;
    v32 = v29;
  }

  else
  {
    v33 = &v51 - v22;
    v52 = a5;
    v34 = *(a1 + 16);
    if (v34)
    {
      v35 = a1 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
      v36 = *(v13 + 72);
      while (1)
      {
        sub_100038554(v35, v17, type metadata accessor for CustodianRecoverySessionRecord);
        v37 = &v17[*(v12 + 28)];
        v38 = *v37 == a3 && *(v37 + 1) == a4;
        if (v38 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          break;
        }

        sub_1000385BC(v17, type metadata accessor for CustodianRecoverySessionRecord);
        v35 += v36;
        if (!--v34)
        {
          goto LABEL_15;
        }
      }

      sub_100039200(v17, v33, type metadata accessor for CustodianRecoverySessionRecord);
      v39 = 0;
    }

    else
    {
LABEL_15:
      v39 = 1;
    }

    (*(v13 + 56))(v33, v39, 1, v12);
    sub_100012D04(v33, v21, &unk_1003D9240, &unk_10033ECC0);
    v40 = (*(v13 + 48))(v21, 1, v12);
    v41 = v52;
    if (v40 == 1)
    {
      sub_100008D3C(v21, &unk_1003D9240, &unk_10033ECC0);
      if (qword_1003D7F38 != -1)
      {
        swift_once();
      }

      v42 = type metadata accessor for Logger();
      sub_100008D04(v42, qword_1003FAA88);

      v43 = Logger.logObject.getter();
      v44 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        v58 = v46;
        *v45 = 136315138;
        *(v45 + 4) = sub_10021145C(a3, a4, &v58);
        _os_log_impl(&_mh_execute_header, v43, v44, "Couldn't find recovery session record for %s", v45, 0xCu);
        sub_10000839C(v46);
      }

      type metadata accessor for AACustodianError(0);
      v57 = -7061;
      sub_100212324(_swiftEmptyArrayStorage);
      sub_100039268(&qword_1003D8140, type metadata accessor for AACustodianError, &unk_10033DF94);
      _BridgedStoredNSError.init(_:userInfo:)();
      v47 = v55;
      *v55 = v58;
      swift_storeEnumTagMultiPayload();
      v41(v47);
      sub_100008D3C(v47, &qword_1003DA0F0, qword_100342AC0);
    }

    else
    {
      v48 = v53;
      sub_100039200(v21, v53, type metadata accessor for CustodianRecoverySessionRecord);
      v49 = v55;
      sub_100038554(v48, v55, type metadata accessor for CustodianRecoverySessionRecord);
      swift_storeEnumTagMultiPayload();
      v41(v49);
      sub_100008D3C(v49, &qword_1003DA0F0, qword_100342AC0);
      sub_1000385BC(v48, type metadata accessor for CustodianRecoverySessionRecord);
    }

    v30 = &unk_1003D9240;
    v31 = &unk_10033ECC0;
    v32 = v33;
  }

  return sub_100008D3C(v32, v30, v31);
}

uint64_t sub_10002D6D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  v7[6] = sub_100005814(&unk_1003D91C0, &unk_10033FA50);
  v7[7] = swift_task_alloc();
  v7[8] = type metadata accessor for CustodianHealthRecord(0);
  v7[9] = swift_task_alloc();
  v7[10] = type metadata accessor for CustodianRecoveryInfoRecord(0);
  v7[11] = swift_task_alloc();
  v7[12] = type metadata accessor for CustodianRecord(0);
  v7[13] = swift_task_alloc();

  return _swift_task_switch(sub_10002D808, 0, 0);
}

uint64_t sub_10002D808()
{
  v1 = swift_task_alloc();
  *(v0 + 112) = v1;
  *(v1 + 16) = *(v0 + 16);
  v2 = swift_task_alloc();
  *(v0 + 120) = v2;
  *v2 = v0;
  v2[1] = sub_10002D8F0;
  v4 = *(v0 + 96);
  v3 = *(v0 + 104);

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v3, 0, 0, 0xD000000000000013, 0x800000010032CD60, sub_10003874C, v1, v4);
}

uint64_t sub_10002D8F0()
{
  v2 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v3 = sub_10002E030;
  }

  else
  {
    sub_1000385BC(*(v2 + 104), type metadata accessor for CustodianRecord);

    v3 = sub_10002DA28;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10002DA28()
{
  v1 = swift_task_alloc();
  *(v0 + 136) = v1;
  *(v1 + 16) = *(v0 + 16);
  v2 = swift_task_alloc();
  *(v0 + 144) = v2;
  *v2 = v0;
  v2[1] = sub_10002DB10;
  v4 = *(v0 + 80);
  v3 = *(v0 + 88);

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v3, 0, 0, 0xD000000000000013, 0x800000010032CD60, sub_100038754, v1, v4);
}

uint64_t sub_10002DB10()
{
  v2 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v3 = sub_10002E234;
  }

  else
  {
    sub_1000385BC(*(v2 + 88), type metadata accessor for CustodianRecoveryInfoRecord);

    v3 = sub_10002DC4C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10002DC4C()
{
  v1 = swift_task_alloc();
  *(v0 + 160) = v1;
  *(v1 + 16) = *(v0 + 16);
  v2 = swift_task_alloc();
  *(v0 + 168) = v2;
  *v2 = v0;
  v2[1] = sub_10002DD34;
  v4 = *(v0 + 64);
  v3 = *(v0 + 72);

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v3, 0, 0, 0xD000000000000013, 0x800000010032CD60, sub_10003875C, v1, v4);
}

uint64_t sub_10002DD34()
{
  v2 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {
    v3 = sub_10002E438;
  }

  else
  {
    sub_1000385BC(*(v2 + 72), type metadata accessor for CustodianHealthRecord);

    v3 = sub_10002DE70;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10002DE70()
{
  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100008D04(v1, qword_1003FAA88);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Custodianship records saved successfully.", v4, 2u);
  }

  v5 = v0[7];
  v6 = v0[4];
  v7 = v0[3];

  [objc_opt_self() postRecoveryContactChangedNotification];
  sub_100038554(v7, v5, type metadata accessor for CustodianshipRecords);
  swift_storeEnumTagMultiPayload();
  v6(v5);
  sub_100008D3C(v5, &unk_1003D91C0, &unk_10033FA50);

  v8 = v0[1];

  return v8();
}

uint64_t sub_10002E030()
{
  v1 = v0[16];

  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100008D04(v2, qword_1003FAA88);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = _convertErrorToNSError(_:)();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&_mh_execute_header, v3, v4, "Failed to save CustodianshipRecords: %@", v5, 0xCu);
    sub_100008D3C(v6, &unk_1003D9140, &qword_10033E640);
  }

  v8 = v0[7];
  v9 = v0[4];

  *v8 = v1;
  swift_storeEnumTagMultiPayload();
  swift_errorRetain();
  v9(v8);

  sub_100008D3C(v8, &unk_1003D91C0, &unk_10033FA50);

  v10 = v0[1];

  return v10();
}

uint64_t sub_10002E234()
{
  v1 = v0[19];

  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100008D04(v2, qword_1003FAA88);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = _convertErrorToNSError(_:)();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&_mh_execute_header, v3, v4, "Failed to save CustodianshipRecords: %@", v5, 0xCu);
    sub_100008D3C(v6, &unk_1003D9140, &qword_10033E640);
  }

  v8 = v0[7];
  v9 = v0[4];

  *v8 = v1;
  swift_storeEnumTagMultiPayload();
  swift_errorRetain();
  v9(v8);

  sub_100008D3C(v8, &unk_1003D91C0, &unk_10033FA50);

  v10 = v0[1];

  return v10();
}

uint64_t sub_10002E438()
{
  v1 = v0[22];

  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100008D04(v2, qword_1003FAA88);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = _convertErrorToNSError(_:)();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&_mh_execute_header, v3, v4, "Failed to save CustodianshipRecords: %@", v5, 0xCu);
    sub_100008D3C(v6, &unk_1003D9140, &qword_10033E640);
  }

  v8 = v0[7];
  v9 = v0[4];

  *v8 = v1;
  swift_storeEnumTagMultiPayload();
  swift_errorRetain();
  v9(v8);

  sub_100008D3C(v8, &unk_1003D91C0, &unk_10033FA50);

  v10 = v0[1];

  return v10();
}

uint64_t sub_10002E63C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100005814(&unk_1003D9200, &unk_10033EC90);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v13 - v8;
  sub_1000080F8((a2 + 16), *(a2 + 40));
  (*(v7 + 16))(v9, a1, v6);
  v10 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v11 = swift_allocObject();
  (*(v7 + 32))(v11 + v10, v9, v6);
  sub_10022FCA0(a3, sub_100038864, v11);
}

uint64_t sub_10002E7A0(uint64_t a1)
{
  v2 = type metadata accessor for CustodianRecord(0);
  __chkstk_darwin(v2 - 8);
  v4 = v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100005814(&unk_1003DA200, &unk_10033FA80);
  v6 = __chkstk_darwin(v5);
  v8 = (v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v6);
  v10 = v18 - v9;
  sub_100012D04(a1, v18 - v9, &unk_1003DA200, &unk_10033FA80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_100008D04(v11, qword_1003FAA88);
    swift_errorRetain();
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v14 = 138412290;
      v16 = _convertErrorToNSError(_:)();
      *(v14 + 4) = v16;
      *v15 = v16;
      _os_log_impl(&_mh_execute_header, v12, v13, "Failed to save custodian record: %@", v14, 0xCu);
      sub_100008D3C(v15, &unk_1003D9140, &qword_10033E640);
    }

    else
    {
    }
  }

  else
  {
    sub_100008D3C(v10, &unk_1003DA200, &unk_10033FA80);
  }

  sub_100012D04(a1, v8, &unk_1003DA200, &unk_10033FA80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18[1] = *v8;
    sub_100005814(&unk_1003D9200, &unk_10033EC90);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    sub_100039200(v8, v4, type metadata accessor for CustodianRecord);
    sub_100005814(&unk_1003D9200, &unk_10033EC90);
    return CheckedContinuation.resume(returning:)();
  }
}

uint64_t sub_10002EAC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100005814(&unk_1003D91F0, &unk_10033EC80);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v14 - v8;
  sub_1000080F8((a2 + 16), *(a2 + 40));
  v10 = *(type metadata accessor for CustodianshipRecords(0) + 20);
  (*(v7 + 16))(v9, a1, v6);
  v11 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v12 = swift_allocObject();
  (*(v7 + 32))(v12 + v11, v9, v6);
  sub_10023030C(a3 + v10, sub_1000387B4, v12);
}

uint64_t sub_10002EC40(uint64_t a1)
{
  v2 = type metadata accessor for CustodianRecoveryInfoRecord(0);
  __chkstk_darwin(v2 - 8);
  v4 = v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100005814(&unk_1003DB610, &unk_10033FA90);
  v6 = __chkstk_darwin(v5);
  v8 = (v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v6);
  v10 = v18 - v9;
  sub_100012D04(a1, v18 - v9, &unk_1003DB610, &unk_10033FA90);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_100008D04(v11, qword_1003FAA88);
    swift_errorRetain();
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v14 = 138412290;
      v16 = _convertErrorToNSError(_:)();
      *(v14 + 4) = v16;
      *v15 = v16;
      _os_log_impl(&_mh_execute_header, v12, v13, "Failed to save custodianship record: %@", v14, 0xCu);
      sub_100008D3C(v15, &unk_1003D9140, &qword_10033E640);
    }

    else
    {
    }
  }

  else
  {
    sub_100008D3C(v10, &unk_1003DB610, &unk_10033FA90);
  }

  sub_100012D04(a1, v8, &unk_1003DB610, &unk_10033FA90);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18[1] = *v8;
    sub_100005814(&unk_1003D91F0, &unk_10033EC80);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    sub_100039200(v8, v4, type metadata accessor for CustodianRecoveryInfoRecord);
    sub_100005814(&unk_1003D91F0, &unk_10033EC80);
    return CheckedContinuation.resume(returning:)();
  }
}

uint64_t sub_10002EF68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100005814(&qword_1003D91E0, &unk_10033EC70);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v14 - v8;
  sub_1000080F8((a2 + 16), *(a2 + 40));
  v10 = *(type metadata accessor for CustodianshipRecords(0) + 24);
  (*(v7 + 16))(v9, a1, v6);
  v11 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v12 = swift_allocObject();
  (*(v7 + 32))(v12 + v11, v9, v6);
  sub_100230970(a3 + v10, sub_100038778, v12);
}

uint64_t sub_10002F0E0(uint64_t a1)
{
  v2 = type metadata accessor for CustodianHealthRecord(0);
  __chkstk_darwin(v2 - 8);
  v4 = v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100005814(&qword_1003D91E8, &qword_100346AC0);
  v6 = __chkstk_darwin(v5);
  v8 = (v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v6);
  v10 = v18 - v9;
  sub_100012D04(a1, v18 - v9, &qword_1003D91E8, &qword_100346AC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_100008D04(v11, qword_1003FAA88);
    swift_errorRetain();
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v14 = 138412290;
      v16 = _convertErrorToNSError(_:)();
      *(v14 + 4) = v16;
      *v15 = v16;
      _os_log_impl(&_mh_execute_header, v12, v13, "Failed to save health record: %@", v14, 0xCu);
      sub_100008D3C(v15, &unk_1003D9140, &qword_10033E640);
    }

    else
    {
    }
  }

  else
  {
    sub_100008D3C(v10, &qword_1003D91E8, &qword_100346AC0);
  }

  sub_100012D04(a1, v8, &qword_1003D91E8, &qword_100346AC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18[1] = *v8;
    sub_100005814(&qword_1003D91E0, &unk_10033EC70);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    sub_100039200(v8, v4, type metadata accessor for CustodianHealthRecord);
    sub_100005814(&qword_1003D91E0, &unk_10033EC70);
    return CheckedContinuation.resume(returning:)();
  }
}

uint64_t sub_10002F408(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100008D04(v8, qword_1003FAA88);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "Owner attempting to delete all records", v11, 2u);
  }

  if ([objc_opt_self() isInternalBuild])
  {
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v26 = v15;
      *v14 = 136315138;
      v25 = a2;
      v16 = a1;
      v17 = [objc_opt_self() callStackSymbols];
      static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v18 = Array.description.getter();
      v20 = v19;

      v21 = v18;
      a1 = v16;
      a2 = v25;
      v22 = sub_10021145C(v21, v20, &v26);

      *(v14 + 4) = v22;
      _os_log_impl(&_mh_execute_header, v12, v13, "Owner attempting to delete all records, call stack: %s", v14, 0xCu);
      sub_10000839C(v15);
    }
  }

  v23 = swift_allocObject();
  v23[2] = a2;
  v23[3] = a3;
  v23[4] = v4;

  sub_10001DDA4(a1, sub_100038A2C, v23);
}

uint64_t sub_10002F6BC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *), uint64_t a6, uint64_t a7)
{
  v43 = a7;
  v44 = a5;
  v45 = a6;
  v41 = a2;
  v42 = a3;
  v40 = sub_100005814(&unk_1003D9220, &unk_10033E8C0);
  __chkstk_darwin(v40);
  v9 = (&v40 - v8);
  v10 = sub_100005814(&qword_1003D91A8, &unk_10033EC40);
  __chkstk_darwin(v10 - 8);
  v12 = &v40 - v11;
  v13 = sub_100005814(&unk_1003D91B0, qword_1003444F0);
  __chkstk_darwin(v13 - 8);
  v15 = &v40 - v14;
  v16 = sub_100005814(&unk_1003DF000, &unk_10033EC50);
  __chkstk_darwin(v16 - 8);
  v18 = &v40 - v17;
  v19 = type metadata accessor for CustodianRecord(0);
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v40 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100012D04(a1, v18, &unk_1003DF000, &unk_10033EC50);
  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    sub_100008D3C(v18, &unk_1003DF000, &unk_10033EC50);
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    sub_100008D04(v23, qword_1003FAA88);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v24, v25, "CustodianRecord not found. Aborting Delete.", v26, 2u);
    }

    type metadata accessor for AACustodianError(0);
    v46 = -7063;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_100039268(&qword_1003D8140, type metadata accessor for AACustodianError, &unk_10033DF94);
    _BridgedStoredNSError.init(_:userInfo:)();
    v27 = v47;
    v28 = sub_10002FCF0(-7074, v47);

    *v9 = v28;
    swift_storeEnumTagMultiPayload();
    swift_errorRetain();
    v44(v9);

    return sub_100008D3C(v9, &unk_1003D9220, &unk_10033E8C0);
  }

  else
  {
    sub_100039200(v18, v22, type metadata accessor for CustodianRecord);
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    sub_100008D04(v30, qword_1003FAA88);
    v31 = v41;
    sub_100012D04(v41, v15, &unk_1003D91B0, qword_1003444F0);
    v32 = v42;
    sub_100012D04(v42, v12, &qword_1003D91A8, &unk_10033EC40);
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 67109376;
      v36 = type metadata accessor for CustodianRecoveryInfoRecord(0);
      v37 = (*(*(v36 - 8) + 48))(v15, 1, v36) != 1;
      sub_100008D3C(v15, &unk_1003D91B0, qword_1003444F0);
      *(v35 + 4) = v37;
      *(v35 + 8) = 1024;
      v38 = type metadata accessor for CustodianHealthRecord(0);
      v39 = (*(*(v38 - 8) + 48))(v12, 1, v38) != 1;
      sub_100008D3C(v12, &qword_1003D91A8, &unk_10033EC40);
      *(v35 + 10) = v39;
      _os_log_impl(&_mh_execute_header, v33, v34, "RecoveryInfoRecord found?: %{BOOL}d. HealthRecord found? %{BOOL}d. Continuing to delete", v35, 0xEu);
    }

    else
    {
      sub_100008D3C(v12, &qword_1003D91A8, &unk_10033EC40);
      sub_100008D3C(v15, &unk_1003D91B0, qword_1003444F0);
    }

    sub_10002FE34(v22, v31, v32, v44, v45);
    return sub_1000385BC(v22, type metadata accessor for CustodianRecord);
  }
}

id sub_10002FCF0(uint64_t a1, void *a2)
{
  v4 = AACustodianErrorDomain;
  sub_100005814(&unk_1003DB0A0, &qword_10033EC60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10033EB30;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v6;
  type metadata accessor for AACustodianError(0);
  *(inited + 72) = v7;
  *(inited + 48) = a2;
  v8 = v4;
  v9 = a2;
  sub_100308978(inited);
  swift_setDeallocating();
  sub_100008D3C(inited + 32, &qword_1003DB0B0, &unk_10033E710);
  v10 = objc_allocWithZone(NSError);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v12 = [v10 initWithDomain:v8 code:a1 userInfo:isa];

  return v12;
}

uint64_t sub_10002FE34(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v78 = a4;
  v79 = a5;
  v69 = a3;
  v65 = a2;
  v77 = a1;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v84 = *(v5 - 8);
  v85 = v5;
  __chkstk_darwin(v5);
  v82 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = type metadata accessor for DispatchQoS();
  v81 = *(v83 - 8);
  __chkstk_darwin(v83);
  v80 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CustodianRecord(0);
  v74 = *(v8 - 8);
  __chkstk_darwin(v8 - 8);
  v75 = v9;
  v76 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS.QoSClass();
  v72 = *(v10 - 8);
  v73 = v10;
  __chkstk_darwin(v10);
  v71 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100005814(&qword_1003D91A8, &unk_10033EC40);
  __chkstk_darwin(v12 - 8);
  v67 = &v62 - v13;
  v66 = type metadata accessor for CustodianHealthRecord(0);
  v68 = *(v66 - 8);
  v14 = __chkstk_darwin(v66);
  v63 = &v62 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = v15;
  __chkstk_darwin(v14);
  v64 = &v62 - v16;
  v17 = sub_100005814(&unk_1003D91B0, qword_1003444F0);
  __chkstk_darwin(v17 - 8);
  v19 = &v62 - v18;
  v20 = type metadata accessor for CustodianRecoveryInfoRecord(0);
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v23 = __chkstk_darwin(v20);
  v24 = &v62 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v26 = &v62 - v25;
  v27 = dispatch_group_create();
  v28 = swift_allocObject();
  *(v28 + 16) = 0;
  v29 = swift_allocObject();
  *(v29 + 16) = 0;
  sub_100012D04(v65, v19, &unk_1003D91B0, qword_1003444F0);
  if ((*(v21 + 48))(v19, 1, v20) == 1)
  {
    v30 = v27;
    sub_100008D3C(v19, &unk_1003D91B0, qword_1003444F0);
  }

  else
  {
    sub_100039200(v19, v26, type metadata accessor for CustodianRecoveryInfoRecord);
    dispatch_group_enter(v27);
    v65 = sub_1000080F8(v70 + 2, v70[5]);
    sub_100038554(v26, v24, type metadata accessor for CustodianRecoveryInfoRecord);
    v31 = v29;
    v32 = (*(v21 + 80) + 16) & ~*(v21 + 80);
    v33 = (v22 + v32 + 7) & 0xFFFFFFFFFFFFFFF8;
    v34 = swift_allocObject();
    v35 = v34 + v32;
    v29 = v31;
    sub_100039200(v24, v35, type metadata accessor for CustodianRecoveryInfoRecord);
    *(v34 + v33) = v28;
    *(v34 + ((v33 + 15) & 0xFFFFFFFFFFFFFFF8)) = v27;

    v30 = v27;
    v36 = v27;
    sub_1002377F0(v26, sub_10003907C, v34);

    sub_1000385BC(v26, type metadata accessor for CustodianRecoveryInfoRecord);
  }

  v37 = v28;
  v38 = v67;
  sub_100012D04(v69, v67, &qword_1003D91A8, &unk_10033EC40);
  v39 = v68;
  if ((*(v68 + 48))(v38, 1, v66) == 1)
  {
    sub_100008D3C(v38, &qword_1003D91A8, &unk_10033EC40);
    v40 = v30;
  }

  else
  {
    v41 = v64;
    sub_100039200(v38, v64, type metadata accessor for CustodianHealthRecord);
    v40 = v30;
    dispatch_group_enter(v30);
    v70 = sub_1000080F8(v70 + 2, v70[5]);
    v42 = v37;
    v43 = v63;
    sub_100038554(v41, v63, type metadata accessor for CustodianHealthRecord);
    v44 = (*(v39 + 80) + 16) & ~*(v39 + 80);
    v45 = (v62 + v44 + 7) & 0xFFFFFFFFFFFFFFF8;
    v46 = swift_allocObject();
    v47 = v43;
    v37 = v42;
    sub_100039200(v47, v46 + v44, type metadata accessor for CustodianHealthRecord);
    *(v46 + v45) = v29;
    *(v46 + ((v45 + 15) & 0xFFFFFFFFFFFFFFF8)) = v40;
    v48 = v40;

    sub_1002372B8(v41, sub_100038E64, v46);

    sub_1000385BC(v41, type metadata accessor for CustodianHealthRecord);
  }

  sub_100016034(0, &qword_1003DC2B0, OS_dispatch_queue_ptr);
  v50 = v72;
  v49 = v73;
  v51 = v71;
  (*(v72 + 104))(v71, enum case for DispatchQoS.QoSClass.default(_:), v73);
  v52 = static OS_dispatch_queue.global(qos:)();
  (*(v50 + 8))(v51, v49);
  v53 = v76;
  sub_100038554(v77, v76, type metadata accessor for CustodianRecord);
  v54 = (*(v74 + 80) + 48) & ~*(v74 + 80);
  v55 = swift_allocObject();
  v55[2] = v37;
  v55[3] = v29;
  v56 = v79;
  v55[4] = v78;
  v55[5] = v56;
  sub_100039200(v53, v55 + v54, type metadata accessor for CustodianRecord);
  aBlock[4] = sub_100038C60;
  aBlock[5] = v55;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100031EF0;
  aBlock[3] = &unk_1003A5090;
  v57 = _Block_copy(aBlock);

  v58 = v80;
  static DispatchQoS.unspecified.getter();
  v86 = _swiftEmptyArrayStorage;
  sub_100039268(&qword_1003D9120, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100005814(&unk_1003DABE0, &unk_10033EC20);
  sub_1000383E4();
  v59 = v82;
  v60 = v85;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_group.notify(qos:flags:queue:execute:)();
  _Block_release(v57);

  (*(v84 + 8))(v59, v60);
  (*(v81 + 8))(v58, v83);
}

uint64_t sub_100030868()
{
  sub_10000839C((v0 + 16));
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_1000308F0()
{
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  v2 = sub_100005814(&qword_1003D9108, &qword_10033EC08);
  *v1 = v0;
  v1[1] = sub_1000309D8;
  v3 = *(v0 + 24);

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 16, 0, 0, 0xD000000000000011, 0x800000010032CD40, sub_100030B08, v3, v2);
}

uint64_t sub_1000309D8()
{
  *(*v1 + 40) = v0;

  if (v0)
  {
    v2 = sub_1000131B8;
  }

  else
  {
    v2 = sub_100030AEC;
  }

  return _swift_task_switch(v2, 0, 0);
}

void sub_100030BBC(uint64_t a1, uint64_t a2, uint64_t a3, NSObject *a4)
{
  v60 = a4;
  v58 = a3;
  v59 = type metadata accessor for CustodianRecoveryInfoRecord(0);
  v6 = __chkstk_darwin(v59);
  v8 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v54 - v10;
  v12 = __chkstk_darwin(v9);
  v14 = &v54 - v13;
  __chkstk_darwin(v12);
  v16 = &v54 - v15;
  v17 = sub_100005814(&unk_1003D9220, &unk_10033E8C0);
  __chkstk_darwin(v17);
  v19 = (&v54 - v18);
  sub_100012D04(a1, &v54 - v18, &unk_1003D9220, &unk_10033E8C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v20 = *v19;
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    v22 = sub_100008D04(v21, qword_1003FAA88);
    sub_100038554(a2, v11, type metadata accessor for CustodianRecoveryInfoRecord);
    sub_100038554(a2, v8, type metadata accessor for CustodianRecoveryInfoRecord);
    swift_errorRetain();
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v61[0] = v55;
      *v25 = 136315650;
      type metadata accessor for UUID();
      v57 = v20;
      sub_100039268(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v26 = dispatch thunk of CustomStringConvertible.description.getter();
      v56 = v22;
      v28 = v27;
      sub_1000385BC(v11, type metadata accessor for CustodianRecoveryInfoRecord);
      v29 = sub_10021145C(v26, v28, v61);

      *(v25 + 4) = v29;
      *(v25 + 12) = 2080;
      v20 = v57;
      v30 = dispatch thunk of CustomStringConvertible.description.getter();
      v32 = v31;
      sub_1000385BC(v8, type metadata accessor for CustodianRecoveryInfoRecord);
      v33 = sub_10021145C(v30, v32, v61);

      *(v25 + 14) = v33;
      *(v25 + 22) = 2112;
      v34 = _convertErrorToNSError(_:)();
      *(v25 + 24) = v34;
      v35 = v54;
      *v54 = v34;
      _os_log_impl(&_mh_execute_header, v23, v24, "Recovery info record delete failed, recordID: %s, custodianID: %s, error: %@", v25, 0x20u);
      sub_100008D3C(v35, &unk_1003D9140, &qword_10033E640);

      swift_arrayDestroy();
    }

    else
    {

      sub_1000385BC(v8, type metadata accessor for CustodianRecoveryInfoRecord);
      sub_1000385BC(v11, type metadata accessor for CustodianRecoveryInfoRecord);
    }

    swift_getErrorValue();
    v48 = sub_1002DE99C(v61[4]);
    if (v48)
    {
      v49 = v48;
      if (sub_1002DEA78(v48))
      {
        v50 = Logger.logObject.getter();
        v51 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v50, v51))
        {
          v52 = swift_slowAlloc();
          *v52 = 0;
          _os_log_impl(&_mh_execute_header, v50, v51, "Recovery info record failed delete due to unknown item, this is not an actual error", v52, 2u);
        }

        goto LABEL_19;
      }
    }

    v53 = v58;
    swift_beginAccess();
    *(v53 + 16) = v20;
LABEL_19:

    goto LABEL_20;
  }

  sub_100008D3C(v19, &unk_1003D9220, &unk_10033E8C0);
  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v36 = type metadata accessor for Logger();
  sub_100008D04(v36, qword_1003FAA88);
  sub_100038554(a2, v16, type metadata accessor for CustodianRecoveryInfoRecord);
  sub_100038554(a2, v14, type metadata accessor for CustodianRecoveryInfoRecord);
  v37 = Logger.logObject.getter();
  v38 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    v61[0] = v58;
    *v39 = 136315394;
    type metadata accessor for UUID();
    sub_100039268(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v40 = dispatch thunk of CustomStringConvertible.description.getter();
    v42 = v41;
    sub_1000385BC(v16, type metadata accessor for CustodianRecoveryInfoRecord);
    v43 = sub_10021145C(v40, v42, v61);

    *(v39 + 4) = v43;
    *(v39 + 12) = 2080;
    v44 = dispatch thunk of CustomStringConvertible.description.getter();
    v46 = v45;
    sub_1000385BC(v14, type metadata accessor for CustodianRecoveryInfoRecord);
    v47 = sub_10021145C(v44, v46, v61);

    *(v39 + 14) = v47;
    _os_log_impl(&_mh_execute_header, v37, v38, "Recovery info record deleted sucessfully, recordID: %s, custodianID: %s", v39, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    sub_1000385BC(v14, type metadata accessor for CustodianRecoveryInfoRecord);
    sub_1000385BC(v16, type metadata accessor for CustodianRecoveryInfoRecord);
  }

LABEL_20:
  dispatch_group_leave(v60);
}

void sub_10003135C(uint64_t a1, uint64_t a2, uint64_t a3, NSObject *a4)
{
  v60 = a4;
  v58 = a3;
  v59 = type metadata accessor for CustodianHealthRecord(0);
  v6 = __chkstk_darwin(v59);
  v8 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v54 - v10;
  v12 = __chkstk_darwin(v9);
  v14 = &v54 - v13;
  __chkstk_darwin(v12);
  v16 = &v54 - v15;
  v17 = sub_100005814(&unk_1003D9220, &unk_10033E8C0);
  __chkstk_darwin(v17);
  v19 = (&v54 - v18);
  sub_100012D04(a1, &v54 - v18, &unk_1003D9220, &unk_10033E8C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v20 = *v19;
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    v22 = sub_100008D04(v21, qword_1003FAA88);
    sub_100038554(a2, v11, type metadata accessor for CustodianHealthRecord);
    sub_100038554(a2, v8, type metadata accessor for CustodianHealthRecord);
    swift_errorRetain();
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v61[0] = v55;
      *v25 = 136315650;
      type metadata accessor for UUID();
      v57 = v20;
      sub_100039268(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v26 = dispatch thunk of CustomStringConvertible.description.getter();
      v56 = v22;
      v28 = v27;
      sub_1000385BC(v11, type metadata accessor for CustodianHealthRecord);
      v29 = sub_10021145C(v26, v28, v61);

      *(v25 + 4) = v29;
      *(v25 + 12) = 2080;
      v20 = v57;
      v30 = dispatch thunk of CustomStringConvertible.description.getter();
      v32 = v31;
      sub_1000385BC(v8, type metadata accessor for CustodianHealthRecord);
      v33 = sub_10021145C(v30, v32, v61);

      *(v25 + 14) = v33;
      *(v25 + 22) = 2112;
      v34 = _convertErrorToNSError(_:)();
      *(v25 + 24) = v34;
      v35 = v54;
      *v54 = v34;
      _os_log_impl(&_mh_execute_header, v23, v24, "Health record delete failed, recordID: %s, custodianID: %s, error: %@", v25, 0x20u);
      sub_100008D3C(v35, &unk_1003D9140, &qword_10033E640);

      swift_arrayDestroy();
    }

    else
    {

      sub_1000385BC(v8, type metadata accessor for CustodianHealthRecord);
      sub_1000385BC(v11, type metadata accessor for CustodianHealthRecord);
    }

    swift_getErrorValue();
    v48 = sub_1002DE99C(v61[4]);
    if (v48)
    {
      v49 = v48;
      if (sub_1002DEA78(v48))
      {
        v50 = Logger.logObject.getter();
        v51 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v50, v51))
        {
          v52 = swift_slowAlloc();
          *v52 = 0;
          _os_log_impl(&_mh_execute_header, v50, v51, "Health record record failed delete due to unknown item, this is not an actual error", v52, 2u);
        }

        goto LABEL_19;
      }
    }

    v53 = v58;
    swift_beginAccess();
    *(v53 + 16) = v20;
LABEL_19:

    goto LABEL_20;
  }

  sub_100008D3C(v19, &unk_1003D9220, &unk_10033E8C0);
  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v36 = type metadata accessor for Logger();
  sub_100008D04(v36, qword_1003FAA88);
  sub_100038554(a2, v16, type metadata accessor for CustodianHealthRecord);
  sub_100038554(a2, v14, type metadata accessor for CustodianHealthRecord);
  v37 = Logger.logObject.getter();
  v38 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    v61[0] = v58;
    *v39 = 136315394;
    type metadata accessor for UUID();
    sub_100039268(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v40 = dispatch thunk of CustomStringConvertible.description.getter();
    v42 = v41;
    sub_1000385BC(v16, type metadata accessor for CustodianHealthRecord);
    v43 = sub_10021145C(v40, v42, v61);

    *(v39 + 4) = v43;
    *(v39 + 12) = 2080;
    v44 = dispatch thunk of CustomStringConvertible.description.getter();
    v46 = v45;
    sub_1000385BC(v14, type metadata accessor for CustodianHealthRecord);
    v47 = sub_10021145C(v44, v46, v61);

    *(v39 + 14) = v47;
    _os_log_impl(&_mh_execute_header, v37, v38, "Health record deletes successfully, recordID: %s, custodianID: %s", v39, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    sub_1000385BC(v14, type metadata accessor for CustodianHealthRecord);
    sub_1000385BC(v16, type metadata accessor for CustodianHealthRecord);
  }

LABEL_20:
  dispatch_group_leave(v60);
}

uint64_t sub_100031AFC(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4, uint64_t a5)
{
  v9 = sub_100005814(&unk_1003D9220, &unk_10033E8C0);
  __chkstk_darwin(v9);
  v11 = &v28 - v10;
  swift_beginAccess();
  if (*(a1 + 16) || (swift_beginAccess(), *(a2 + 16)))
  {
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_100008D04(v12, qword_1003FAA88);

    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v29 = a5;
      v15 = a3;
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v16 = 138412546;
      swift_beginAccess();
      if (*(a1 + 16))
      {
        swift_errorRetain();
        v18 = _swift_stdlib_bridgeErrorToNSError();
        v19 = v18;
      }

      else
      {
        v18 = 0;
        v19 = 0;
      }

      *(v16 + 4) = v18;
      *v17 = v19;
      *(v16 + 12) = 2112;
      swift_beginAccess();
      if (*(a2 + 16))
      {
        swift_errorRetain();
        v20 = _swift_stdlib_bridgeErrorToNSError();
        v21 = v20;
      }

      else
      {
        v20 = 0;
        v21 = 0;
      }

      *(v16 + 14) = v20;
      v17[1] = v21;
      _os_log_impl(&_mh_execute_header, v13, v14, "Custodianship records deleted with recovery info record error: %@, health check record error: %@", v16, 0x16u);
      sub_100005814(&unk_1003D9140, &qword_10033E640);
      swift_arrayDestroy();

      goto LABEL_13;
    }
  }

  else
  {
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    sub_100008D04(v25, qword_1003FAA88);
    v13 = Logger.logObject.getter();
    v26 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v13, v26))
    {
      v29 = a5;
      v15 = a3;
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&_mh_execute_header, v13, v26, "Custodianship records deleted successfully", v27, 2u);
LABEL_13:

      a3 = v15;
      a5 = v29;
    }
  }

  [objc_opt_self() postRecoveryContactChangedNotification];
  v22 = *(type metadata accessor for CustodianRecord(0) + 20);
  v23 = type metadata accessor for UUID();
  (*(*(v23 - 8) + 16))(v11, a5 + v22, v23);
  swift_storeEnumTagMultiPayload();
  a3(v11);
  return sub_100008D3C(v11, &unk_1003D9220, &unk_10033E8C0);
}

uint64_t sub_100031EF0(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_100031FEC(uint64_t a1, uint64_t (*a2)(void), unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t a5)
{
  result = Data.init(contentsOf:options:)();
  if (!v5)
  {
    v12 = result;
    v25 = a5;
    v13 = v11;

    v14 = objc_autoreleasePoolPush();
    sub_10030390C(&v27, v26);
    v24 = v13;
    objc_autoreleasePoolPop(v14);

    v15 = v26[0];
    v23 = v26[1];
    if (qword_1003D7F58 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_100008D04(v16, qword_1003FAAE8);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "Local Cache: Successfully decrypted data", v19, 2u);
    }

    a2(0);
    sub_100039268(a3, a4, v25);

    dispatch thunk of JSONDecoder.decode<A>(_:from:)();

    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v20, v21, "Local Cache: Successfully decoded data to record object", v22, 2u);
    }

    sub_100012324(v15, v23);

    return sub_100012324(v12, v24);
  }

  return result;
}

uint64_t sub_100032500(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v29 = a5;
  v30 = a6;
  v25[1] = a4;
  v26 = a2;
  v27 = a3;
  v32 = type metadata accessor for DispatchWorkItemFlags();
  v34 = *(v32 - 8);
  __chkstk_darwin(v32);
  v9 = v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for DispatchQoS();
  v31 = *(v33 - 8);
  __chkstk_darwin(v33);
  v11 = v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for URL();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v15 = v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = *(v6 + 32);
  (*(v13 + 16))(v15, a1, v12);
  v16 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v17 = (v14 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = (v17 + 23) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  (*(v13 + 32))(v19 + v16, v15, v12);
  v20 = (v19 + v17);
  v21 = v27;
  *v20 = v26;
  v20[1] = v21;
  *(v19 + v18) = v6;
  aBlock[4] = v29;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100031EF0;
  aBlock[3] = v30;
  v22 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v35 = _swiftEmptyArrayStorage;
  sub_100039268(&qword_1003D9120, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100005814(&unk_1003DABE0, &unk_10033EC20);
  sub_1000383E4();
  v23 = v32;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v22);
  (*(v34 + 8))(v9, v23);
  (*(v31 + 8))(v11, v33);
}

uint64_t sub_100032984(uint64_t a1, void (*a2)(void, void), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v66 = a4;
  v67 = a5;
  v75 = a3;
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v69 = &v66 - v13;
  __chkstk_darwin(v12);
  v15 = &v66 - v14;
  if (qword_1003D7F58 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  v17 = sub_100008D04(v16, qword_1003FAAE8);
  v71 = *(v8 + 2);
  v72 = v8 + 16;
  v71(v15, a1, v7);
  v73 = v17;
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  v20 = os_log_type_enabled(v18, v19);
  v70 = v11;
  if (v20)
  {
    v21 = swift_slowAlloc();
    v68 = a2;
    v22 = v21;
    v23 = swift_slowAlloc();
    v77 = v23;
    *v22 = 136315138;
    sub_100039268(&qword_1003DD590, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v24 = dispatch thunk of CustomStringConvertible.description.getter();
    v26 = v25;
    v74 = *(v8 + 1);
    v74(v15, v7);
    v27 = sub_10021145C(v24, v26, &v77);

    *(v22 + 4) = v27;
    _os_log_impl(&_mh_execute_header, v18, v19, "Local Cache: Fetching containts of the base URL: %s", v22, 0xCu);
    sub_10000839C(v23);

    a2 = v68;
  }

  else
  {

    v74 = *(v8 + 1);
    v74(v15, v7);
  }

  v28 = objc_opt_self();
  v29 = [v28 defaultManager];
  URL.path.getter();
  v30 = String._bridgeToObjectiveC()();

  v31 = [v29 fileExistsAtPath:v30];

  if (v31)
  {
    v69 = v8;
    v77 = _swiftEmptyArrayStorage;
    v32 = [v28 defaultManager];
    URL.path.getter();
    v33 = String._bridgeToObjectiveC()();

    v76 = 0;
    v34 = [v32 contentsOfDirectoryAtPath:v33 error:&v76];

    v35 = v76;
    if (v34)
    {
      v36 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
      v37 = v35;

      __chkstk_darwin(v38);
      v40 = v66;
      v39 = v67;
      *(&v66 - 4) = a1;
      *(&v66 - 3) = v40;
      *(&v66 - 2) = &v77;
      sub_10001CD84(v39, (&v66 - 6), v36);

      a2(v77, 0);
    }

    else
    {
      v50 = v76;
      v51 = _convertNSErrorToError(_:)();

      swift_willThrow();
      v52 = v70;

      v71(v52, a1, v7);
      swift_errorRetain();
      v53 = Logger.logObject.getter();
      v54 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v53, v54))
      {
        v55 = swift_slowAlloc();
        v56 = swift_slowAlloc();
        v57 = swift_slowAlloc();
        v68 = a2;
        v58 = v57;
        v77 = v57;
        *v55 = 136315394;
        sub_100039268(&qword_1003DD590, &type metadata accessor for URL, &protocol conformance descriptor for URL);
        v59 = dispatch thunk of CustomStringConvertible.description.getter();
        v60 = v52;
        v62 = v61;
        v74(v60, v7);
        v63 = sub_10021145C(v59, v62, &v77);

        *(v55 + 4) = v63;
        *(v55 + 12) = 2112;
        v64 = _convertErrorToNSError(_:)();
        *(v55 + 14) = v64;
        *v56 = v64;
        _os_log_impl(&_mh_execute_header, v53, v54, "Local Cache: Error fetching records from %s: %@", v55, 0x16u);
        sub_100008D3C(v56, &unk_1003D9140, &qword_10033E640);

        sub_10000839C(v58);
        a2 = v68;
      }

      else
      {

        v74(v52, v7);
      }

      sub_10030AF38(v51);
      swift_errorRetain();
      a2(v51, 1);
    }
  }

  else
  {
    v41 = v69;
    v71(v69, a1, v7);
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v77 = v45;
      *v44 = 136315138;
      sub_100039268(&qword_1003DD590, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v46 = dispatch thunk of CustomStringConvertible.description.getter();
      v48 = v47;
      v74(v41, v7);
      v49 = sub_10021145C(v46, v48, &v77);

      *(v44 + 4) = v49;
      _os_log_impl(&_mh_execute_header, v42, v43, "Local Cache: No records found at path %s.", v44, 0xCu);
      sub_10000839C(v45);
    }

    else
    {

      v74(v41, v7);
    }

    return (a2)(_swiftEmptyArrayStorage, 0);
  }
}

uint64_t sub_1000331E4(void (*a1)(char *, uint64_t), char *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v82 = a4;
  v80 = a5;
  v88 = a2;
  v85 = a1;
  v6 = type metadata accessor for UUID();
  v75 = *(v6 - 8);
  v76 = v6;
  __chkstk_darwin(v6);
  v74 = &v74 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CustodianRecord(0);
  v79 = *(v8 - 8);
  v9 = __chkstk_darwin(v8 - 8);
  v78 = &v74 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v84 = (&v74 - v12);
  __chkstk_darwin(v11);
  v86 = &v74 - v13;
  v14 = sub_100005814(&qword_1003E7500, &qword_10033EC30);
  __chkstk_darwin(v14 - 8);
  v16 = &v74 - v15;
  v17 = type metadata accessor for URL();
  v18 = *(v17 - 8);
  v19 = __chkstk_darwin(v17);
  v87 = &v74 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v23 = &v74 - v22;
  __chkstk_darwin(v21);
  v24 = *(v18 + 16);
  v25 = a3;
  v27 = &v74 - v26;
  v24(v16, v25, v17);
  v89 = v18;
  v28 = v18;
  v29 = v17;
  (*(v28 + 56))(v16, 0, 1, v17);
  URL.init(fileURLWithPath:relativeTo:)();
  sub_100008D3C(v16, &qword_1003E7500, &qword_10033EC30);
  if (qword_1003D7F58 != -1)
  {
    swift_once();
  }

  v30 = type metadata accessor for Logger();
  v31 = sub_100008D04(v30, qword_1003FAAE8);
  v88 = v27;
  v81 = v24;
  v24(v23, v27, v29);
  v77 = v31;
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v90 = v35;
    *v34 = 136315138;
    sub_100039268(&qword_1003DD590, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v36 = dispatch thunk of CustomStringConvertible.description.getter();
    v38 = v37;
    v85 = *(v89 + 8);
    v85(v23, v29);
    v39 = sub_10021145C(v36, v38, &v90);

    *(v34 + 4) = v39;
    _os_log_impl(&_mh_execute_header, v32, v33, "Local Cache: Decoding file at path %s", v34, 0xCu);
    sub_10000839C(v35);
  }

  else
  {

    v85 = *(v89 + 8);
    v85(v23, v29);
  }

  v41 = v86;
  v40 = v87;
  v42 = v83;
  v43 = v84;
  v44 = v88;
  sub_100031FEC(v88, type metadata accessor for CustodianRecord, &qword_1003DD6F0, type metadata accessor for CustodianRecord, &unk_100341CC0);
  v45 = v81;
  if (v42)
  {
    return (v85)(v44, v29);
  }

  sub_100038554(v41, v43, type metadata accessor for CustodianRecord);
  v45(v40, v44, v29);
  v47 = Logger.logObject.getter();
  v48 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    v86 = swift_slowAlloc();
    v90 = v86;
    *v49 = 136315394;
    v51 = v74;
    v50 = v75;
    v52 = *(v75 + 16);
    v53 = v43;
    v84 = v47;
    v54 = v43;
    v55 = v76;
    v52(v74, v53, v76);
    sub_1000385BC(v54, type metadata accessor for CustodianRecord);
    sub_100039268(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    LODWORD(v83) = v48;
    v56 = dispatch thunk of CustomStringConvertible.description.getter();
    v58 = v57;
    (*(v50 + 8))(v51, v55);
    v59 = sub_10021145C(v56, v58, &v90);

    *(v49 + 4) = v59;
    *(v49 + 12) = 2080;
    sub_100039268(&qword_1003DD590, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v60 = v87;
    v61 = dispatch thunk of CustomStringConvertible.description.getter();
    v63 = v62;
    v64 = v85;
    v85(v60, v29);
    v65 = sub_10021145C(v61, v63, &v90);

    *(v49 + 14) = v65;
    v66 = v84;
    _os_log_impl(&_mh_execute_header, v84, v83, "Local Cache: Decoding record successfully: %s, path: %s", v49, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    sub_1000385BC(v43, type metadata accessor for CustodianRecord);

    v64 = v85;
    v85(v40, v29);
  }

  v67 = v80;
  v68 = v78;
  sub_100038554(v41, v78, type metadata accessor for CustodianRecord);
  v69 = *v67;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v67 = v69;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v69 = sub_10030603C(0, v69[2] + 1, 1, v69);
    *v67 = v69;
  }

  v72 = v69[2];
  v71 = v69[3];
  if (v72 >= v71 >> 1)
  {
    *v67 = sub_10030603C((v71 > 1), v72 + 1, 1, v69);
  }

  sub_1000385BC(v41, type metadata accessor for CustodianRecord);
  v64(v88, v29);
  v73 = *v67;
  v73[2] = v72 + 1;
  return sub_100039200(v68, v73 + ((*(v79 + 80) + 32) & ~*(v79 + 80)) + *(v79 + 72) * v72, type metadata accessor for CustodianRecord);
}

uint64_t sub_100033AF4(void (*a1)(char *, uint64_t), char *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v82 = a4;
  v80 = a5;
  v88 = a2;
  v85 = a1;
  v6 = type metadata accessor for UUID();
  v75 = *(v6 - 8);
  v76 = v6;
  __chkstk_darwin(v6);
  v74 = &v74 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CustodianRecoveryInfoRecord(0);
  v79 = *(v8 - 8);
  v9 = __chkstk_darwin(v8 - 8);
  v78 = &v74 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v84 = (&v74 - v12);
  __chkstk_darwin(v11);
  v86 = &v74 - v13;
  v14 = sub_100005814(&qword_1003E7500, &qword_10033EC30);
  __chkstk_darwin(v14 - 8);
  v16 = &v74 - v15;
  v17 = type metadata accessor for URL();
  v18 = *(v17 - 8);
  v19 = __chkstk_darwin(v17);
  v87 = &v74 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v23 = &v74 - v22;
  __chkstk_darwin(v21);
  v24 = *(v18 + 16);
  v25 = a3;
  v27 = &v74 - v26;
  v24(v16, v25, v17);
  v89 = v18;
  v28 = v18;
  v29 = v17;
  (*(v28 + 56))(v16, 0, 1, v17);
  URL.init(fileURLWithPath:relativeTo:)();
  sub_100008D3C(v16, &qword_1003E7500, &qword_10033EC30);
  if (qword_1003D7F58 != -1)
  {
    swift_once();
  }

  v30 = type metadata accessor for Logger();
  v31 = sub_100008D04(v30, qword_1003FAAE8);
  v88 = v27;
  v81 = v24;
  v24(v23, v27, v29);
  v77 = v31;
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v90 = v35;
    *v34 = 136315138;
    sub_100039268(&qword_1003DD590, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v36 = dispatch thunk of CustomStringConvertible.description.getter();
    v38 = v37;
    v85 = *(v89 + 8);
    v85(v23, v29);
    v39 = sub_10021145C(v36, v38, &v90);

    *(v34 + 4) = v39;
    _os_log_impl(&_mh_execute_header, v32, v33, "Local Cache: Decoding file at path %s", v34, 0xCu);
    sub_10000839C(v35);
  }

  else
  {

    v85 = *(v89 + 8);
    v85(v23, v29);
  }

  v41 = v86;
  v40 = v87;
  v42 = v83;
  v43 = v84;
  v44 = v88;
  sub_100031FEC(v88, type metadata accessor for CustodianRecoveryInfoRecord, &unk_1003D9170, type metadata accessor for CustodianRecoveryInfoRecord, &unk_100341EA8);
  v45 = v81;
  if (v42)
  {
    return (v85)(v44, v29);
  }

  sub_100038554(v41, v43, type metadata accessor for CustodianRecoveryInfoRecord);
  v45(v40, v44, v29);
  v47 = Logger.logObject.getter();
  v48 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    v86 = swift_slowAlloc();
    v90 = v86;
    *v49 = 136315394;
    v51 = v74;
    v50 = v75;
    v52 = *(v75 + 16);
    v53 = v43;
    v84 = v47;
    v54 = v43;
    v55 = v76;
    v52(v74, v53, v76);
    sub_1000385BC(v54, type metadata accessor for CustodianRecoveryInfoRecord);
    sub_100039268(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    LODWORD(v83) = v48;
    v56 = dispatch thunk of CustomStringConvertible.description.getter();
    v58 = v57;
    (*(v50 + 8))(v51, v55);
    v59 = sub_10021145C(v56, v58, &v90);

    *(v49 + 4) = v59;
    *(v49 + 12) = 2080;
    sub_100039268(&qword_1003DD590, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v60 = v87;
    v61 = dispatch thunk of CustomStringConvertible.description.getter();
    v63 = v62;
    v64 = v85;
    v85(v60, v29);
    v65 = sub_10021145C(v61, v63, &v90);

    *(v49 + 14) = v65;
    v66 = v84;
    _os_log_impl(&_mh_execute_header, v84, v83, "Local Cache: Decoding record successfully: %s, path: %s", v49, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    sub_1000385BC(v43, type metadata accessor for CustodianRecoveryInfoRecord);

    v64 = v85;
    v85(v40, v29);
  }

  v67 = v80;
  v68 = v78;
  sub_100038554(v41, v78, type metadata accessor for CustodianRecoveryInfoRecord);
  v69 = *v67;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v67 = v69;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v69 = sub_100306064(0, v69[2] + 1, 1, v69);
    *v67 = v69;
  }

  v72 = v69[2];
  v71 = v69[3];
  if (v72 >= v71 >> 1)
  {
    *v67 = sub_100306064((v71 > 1), v72 + 1, 1, v69);
  }

  sub_1000385BC(v41, type metadata accessor for CustodianRecoveryInfoRecord);
  v64(v88, v29);
  v73 = *v67;
  v73[2] = v72 + 1;
  return sub_100039200(v68, v73 + ((*(v79 + 80) + 32) & ~*(v79 + 80)) + *(v79 + 72) * v72, type metadata accessor for CustodianRecoveryInfoRecord);
}

uint64_t sub_100034404(void (*a1)(char *, uint64_t), char *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v82 = a4;
  v80 = a5;
  v88 = a2;
  v85 = a1;
  v6 = type metadata accessor for UUID();
  v75 = *(v6 - 8);
  v76 = v6;
  __chkstk_darwin(v6);
  v74 = &v74 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CustodianHealthRecord(0);
  v79 = *(v8 - 8);
  v9 = __chkstk_darwin(v8 - 8);
  v78 = &v74 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v84 = (&v74 - v12);
  __chkstk_darwin(v11);
  v86 = &v74 - v13;
  v14 = sub_100005814(&qword_1003E7500, &qword_10033EC30);
  __chkstk_darwin(v14 - 8);
  v16 = &v74 - v15;
  v17 = type metadata accessor for URL();
  v18 = *(v17 - 8);
  v19 = __chkstk_darwin(v17);
  v87 = &v74 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v23 = &v74 - v22;
  __chkstk_darwin(v21);
  v24 = *(v18 + 16);
  v25 = a3;
  v27 = &v74 - v26;
  v24(v16, v25, v17);
  v89 = v18;
  v28 = v18;
  v29 = v17;
  (*(v28 + 56))(v16, 0, 1, v17);
  URL.init(fileURLWithPath:relativeTo:)();
  sub_100008D3C(v16, &qword_1003E7500, &qword_10033EC30);
  if (qword_1003D7F58 != -1)
  {
    swift_once();
  }

  v30 = type metadata accessor for Logger();
  v31 = sub_100008D04(v30, qword_1003FAAE8);
  v88 = v27;
  v81 = v24;
  v24(v23, v27, v29);
  v77 = v31;
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v90 = v35;
    *v34 = 136315138;
    sub_100039268(&qword_1003DD590, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v36 = dispatch thunk of CustomStringConvertible.description.getter();
    v38 = v37;
    v85 = *(v89 + 8);
    v85(v23, v29);
    v39 = sub_10021145C(v36, v38, &v90);

    *(v34 + 4) = v39;
    _os_log_impl(&_mh_execute_header, v32, v33, "Local Cache: Decoding file at path %s", v34, 0xCu);
    sub_10000839C(v35);
  }

  else
  {

    v85 = *(v89 + 8);
    v85(v23, v29);
  }

  v41 = v86;
  v40 = v87;
  v42 = v83;
  v43 = v84;
  v44 = v88;
  sub_100031FEC(v88, type metadata accessor for CustodianHealthRecord, &qword_1003DD5A0, type metadata accessor for CustodianHealthRecord, &unk_100341A98);
  v45 = v81;
  if (v42)
  {
    return (v85)(v44, v29);
  }

  sub_100038554(v41, v43, type metadata accessor for CustodianHealthRecord);
  v45(v40, v44, v29);
  v47 = Logger.logObject.getter();
  v48 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    v86 = swift_slowAlloc();
    v90 = v86;
    *v49 = 136315394;
    v51 = v74;
    v50 = v75;
    v52 = *(v75 + 16);
    v53 = v43;
    v84 = v47;
    v54 = v43;
    v55 = v76;
    v52(v74, v53, v76);
    sub_1000385BC(v54, type metadata accessor for CustodianHealthRecord);
    sub_100039268(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    LODWORD(v83) = v48;
    v56 = dispatch thunk of CustomStringConvertible.description.getter();
    v58 = v57;
    (*(v50 + 8))(v51, v55);
    v59 = sub_10021145C(v56, v58, &v90);

    *(v49 + 4) = v59;
    *(v49 + 12) = 2080;
    sub_100039268(&qword_1003DD590, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v60 = v87;
    v61 = dispatch thunk of CustomStringConvertible.description.getter();
    v63 = v62;
    v64 = v85;
    v85(v60, v29);
    v65 = sub_10021145C(v61, v63, &v90);

    *(v49 + 14) = v65;
    v66 = v84;
    _os_log_impl(&_mh_execute_header, v84, v83, "Local Cache: Decoding record successfully: %s, path: %s", v49, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    sub_1000385BC(v43, type metadata accessor for CustodianHealthRecord);

    v64 = v85;
    v85(v40, v29);
  }

  v67 = v80;
  v68 = v78;
  sub_100038554(v41, v78, type metadata accessor for CustodianHealthRecord);
  v69 = *v67;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v67 = v69;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v69 = sub_10030608C(0, v69[2] + 1, 1, v69);
    *v67 = v69;
  }

  v72 = v69[2];
  v71 = v69[3];
  if (v72 >= v71 >> 1)
  {
    *v67 = sub_10030608C((v71 > 1), v72 + 1, 1, v69);
  }

  sub_1000385BC(v41, type metadata accessor for CustodianHealthRecord);
  v64(v88, v29);
  v73 = *v67;
  v73[2] = v72 + 1;
  return sub_100039200(v68, v73 + ((*(v79 + 80) + 32) & ~*(v79 + 80)) + *(v79 + 72) * v72, type metadata accessor for CustodianHealthRecord);
}

uint64_t sub_100034D14(void (*a1)(char *, uint64_t), char *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v82 = a4;
  v80 = a5;
  v88 = a2;
  v85 = a1;
  v6 = type metadata accessor for UUID();
  v75 = *(v6 - 8);
  v76 = v6;
  __chkstk_darwin(v6);
  v74 = &v74 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CustodianshipInfoRecord(0);
  v79 = *(v8 - 8);
  v9 = __chkstk_darwin(v8 - 8);
  v78 = &v74 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v84 = (&v74 - v12);
  __chkstk_darwin(v11);
  v86 = &v74 - v13;
  v14 = sub_100005814(&qword_1003E7500, &qword_10033EC30);
  __chkstk_darwin(v14 - 8);
  v16 = &v74 - v15;
  v17 = type metadata accessor for URL();
  v18 = *(v17 - 8);
  v19 = __chkstk_darwin(v17);
  v87 = &v74 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v23 = &v74 - v22;
  __chkstk_darwin(v21);
  v24 = *(v18 + 16);
  v25 = a3;
  v27 = &v74 - v26;
  v24(v16, v25, v17);
  v89 = v18;
  v28 = v18;
  v29 = v17;
  (*(v28 + 56))(v16, 0, 1, v17);
  URL.init(fileURLWithPath:relativeTo:)();
  sub_100008D3C(v16, &qword_1003E7500, &qword_10033EC30);
  if (qword_1003D7F58 != -1)
  {
    swift_once();
  }

  v30 = type metadata accessor for Logger();
  v31 = sub_100008D04(v30, qword_1003FAAE8);
  v88 = v27;
  v81 = v24;
  v24(v23, v27, v29);
  v77 = v31;
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v90 = v35;
    *v34 = 136315138;
    sub_100039268(&qword_1003DD590, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v36 = dispatch thunk of CustomStringConvertible.description.getter();
    v38 = v37;
    v85 = *(v89 + 8);
    v85(v23, v29);
    v39 = sub_10021145C(v36, v38, &v90);

    *(v34 + 4) = v39;
    _os_log_impl(&_mh_execute_header, v32, v33, "Local Cache: Decoding file at path %s", v34, 0xCu);
    sub_10000839C(v35);
  }

  else
  {

    v85 = *(v89 + 8);
    v85(v23, v29);
  }

  v41 = v86;
  v40 = v87;
  v42 = v83;
  v43 = v84;
  v44 = v88;
  sub_100031FEC(v88, type metadata accessor for CustodianshipInfoRecord, &qword_1003D9160, type metadata accessor for CustodianshipInfoRecord, &unk_100342298);
  v45 = v81;
  if (v42)
  {
    return (v85)(v44, v29);
  }

  sub_100038554(v41, v43, type metadata accessor for CustodianshipInfoRecord);
  v45(v40, v44, v29);
  v47 = Logger.logObject.getter();
  v48 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    v86 = swift_slowAlloc();
    v90 = v86;
    *v49 = 136315394;
    v51 = v74;
    v50 = v75;
    v52 = *(v75 + 16);
    v53 = v43;
    v84 = v47;
    v54 = v43;
    v55 = v76;
    v52(v74, v53, v76);
    sub_1000385BC(v54, type metadata accessor for CustodianshipInfoRecord);
    sub_100039268(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    LODWORD(v83) = v48;
    v56 = dispatch thunk of CustomStringConvertible.description.getter();
    v58 = v57;
    (*(v50 + 8))(v51, v55);
    v59 = sub_10021145C(v56, v58, &v90);

    *(v49 + 4) = v59;
    *(v49 + 12) = 2080;
    sub_100039268(&qword_1003DD590, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v60 = v87;
    v61 = dispatch thunk of CustomStringConvertible.description.getter();
    v63 = v62;
    v64 = v85;
    v85(v60, v29);
    v65 = sub_10021145C(v61, v63, &v90);

    *(v49 + 14) = v65;
    v66 = v84;
    _os_log_impl(&_mh_execute_header, v84, v83, "Local Cache: Decoding record successfully: %s, path: %s", v49, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    sub_1000385BC(v43, type metadata accessor for CustodianshipInfoRecord);

    v64 = v85;
    v85(v40, v29);
  }

  v67 = v80;
  v68 = v78;
  sub_100038554(v41, v78, type metadata accessor for CustodianshipInfoRecord);
  v69 = *v67;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v67 = v69;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v69 = sub_1003060B4(0, v69[2] + 1, 1, v69);
    *v67 = v69;
  }

  v72 = v69[2];
  v71 = v69[3];
  if (v72 >= v71 >> 1)
  {
    *v67 = sub_1003060B4((v71 > 1), v72 + 1, 1, v69);
  }

  sub_1000385BC(v41, type metadata accessor for CustodianshipInfoRecord);
  v64(v88, v29);
  v73 = *v67;
  v73[2] = v72 + 1;
  return sub_100039200(v68, v73 + ((*(v79 + 80) + 32) & ~*(v79 + 80)) + *(v79 + 72) * v72, type metadata accessor for CustodianshipInfoRecord);
}

uint64_t sub_100035624(void (*a1)(char *, uint64_t), char *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v82 = a4;
  v80 = a5;
  v88 = a2;
  v85 = a1;
  v6 = type metadata accessor for UUID();
  v75 = *(v6 - 8);
  v76 = v6;
  __chkstk_darwin(v6);
  v74 = &v74 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CustodianRecoverySessionRecord(0);
  v79 = *(v8 - 8);
  v9 = __chkstk_darwin(v8 - 8);
  v78 = &v74 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v84 = (&v74 - v12);
  __chkstk_darwin(v11);
  v86 = &v74 - v13;
  v14 = sub_100005814(&qword_1003E7500, &qword_10033EC30);
  __chkstk_darwin(v14 - 8);
  v16 = &v74 - v15;
  v17 = type metadata accessor for URL();
  v18 = *(v17 - 8);
  v19 = __chkstk_darwin(v17);
  v87 = &v74 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v23 = &v74 - v22;
  __chkstk_darwin(v21);
  v24 = *(v18 + 16);
  v25 = a3;
  v27 = &v74 - v26;
  v24(v16, v25, v17);
  v89 = v18;
  v28 = v18;
  v29 = v17;
  (*(v28 + 56))(v16, 0, 1, v17);
  URL.init(fileURLWithPath:relativeTo:)();
  sub_100008D3C(v16, &qword_1003E7500, &qword_10033EC30);
  if (qword_1003D7F58 != -1)
  {
    swift_once();
  }

  v30 = type metadata accessor for Logger();
  v31 = sub_100008D04(v30, qword_1003FAAE8);
  v88 = v27;
  v81 = v24;
  v24(v23, v27, v29);
  v77 = v31;
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v90 = v35;
    *v34 = 136315138;
    sub_100039268(&qword_1003DD590, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v36 = dispatch thunk of CustomStringConvertible.description.getter();
    v38 = v37;
    v85 = *(v89 + 8);
    v85(v23, v29);
    v39 = sub_10021145C(v36, v38, &v90);

    *(v34 + 4) = v39;
    _os_log_impl(&_mh_execute_header, v32, v33, "Local Cache: Decoding file at path %s", v34, 0xCu);
    sub_10000839C(v35);
  }

  else
  {

    v85 = *(v89 + 8);
    v85(v23, v29);
  }

  v41 = v86;
  v40 = v87;
  v42 = v83;
  v43 = v84;
  v44 = v88;
  sub_100031FEC(v88, type metadata accessor for CustodianRecoverySessionRecord, &unk_1003D9230, type metadata accessor for CustodianRecoverySessionRecord, &unk_1003420A8);
  v45 = v81;
  if (v42)
  {
    return (v85)(v44, v29);
  }

  sub_100038554(v41, v43, type metadata accessor for CustodianRecoverySessionRecord);
  v45(v40, v44, v29);
  v47 = Logger.logObject.getter();
  v48 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    v86 = swift_slowAlloc();
    v90 = v86;
    *v49 = 136315394;
    v51 = v74;
    v50 = v75;
    v52 = *(v75 + 16);
    v53 = v43;
    v84 = v47;
    v54 = v43;
    v55 = v76;
    v52(v74, v53, v76);
    sub_1000385BC(v54, type metadata accessor for CustodianRecoverySessionRecord);
    sub_100039268(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    LODWORD(v83) = v48;
    v56 = dispatch thunk of CustomStringConvertible.description.getter();
    v58 = v57;
    (*(v50 + 8))(v51, v55);
    v59 = sub_10021145C(v56, v58, &v90);

    *(v49 + 4) = v59;
    *(v49 + 12) = 2080;
    sub_100039268(&qword_1003DD590, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v60 = v87;
    v61 = dispatch thunk of CustomStringConvertible.description.getter();
    v63 = v62;
    v64 = v85;
    v85(v60, v29);
    v65 = sub_10021145C(v61, v63, &v90);

    *(v49 + 14) = v65;
    v66 = v84;
    _os_log_impl(&_mh_execute_header, v84, v83, "Local Cache: Decoding record successfully: %s, path: %s", v49, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    sub_1000385BC(v43, type metadata accessor for CustodianRecoverySessionRecord);

    v64 = v85;
    v85(v40, v29);
  }

  v67 = v80;
  v68 = v78;
  sub_100038554(v41, v78, type metadata accessor for CustodianRecoverySessionRecord);
  v69 = *v67;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v67 = v69;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v69 = sub_1003060DC(0, v69[2] + 1, 1, v69);
    *v67 = v69;
  }

  v72 = v69[2];
  v71 = v69[3];
  if (v72 >= v71 >> 1)
  {
    *v67 = sub_1003060DC((v71 > 1), v72 + 1, 1, v69);
  }

  sub_1000385BC(v41, type metadata accessor for CustodianRecoverySessionRecord);
  v64(v88, v29);
  v73 = *v67;
  v73[2] = v72 + 1;
  return sub_100039200(v68, v73 + ((*(v79 + 80) + 32) & ~*(v79 + 80)) + *(v79 + 72) * v72, type metadata accessor for CustodianRecoverySessionRecord);
}

uint64_t sub_100035F34(void (*a1)(char *, uint64_t), char *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v83 = a4;
  v81 = a5;
  v89 = a2;
  v86 = a1;
  v6 = type metadata accessor for UUID();
  v76 = *(v6 - 8);
  v77 = v6;
  __chkstk_darwin(v6);
  v75 = &v73 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = type metadata accessor for BenefactorInfoRecord(0);
  v80 = *(v74 - 8);
  v8 = __chkstk_darwin(v74);
  v79 = &v73 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v85 = (&v73 - v11);
  __chkstk_darwin(v10);
  v87 = &v73 - v12;
  v13 = sub_100005814(&qword_1003E7500, &qword_10033EC30);
  __chkstk_darwin(v13 - 8);
  v15 = &v73 - v14;
  v16 = type metadata accessor for URL();
  v17 = *(v16 - 8);
  v18 = __chkstk_darwin(v16);
  v88 = &v73 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v22 = &v73 - v21;
  __chkstk_darwin(v20);
  v23 = *(v17 + 16);
  v24 = a3;
  v26 = &v73 - v25;
  v23(v15, v24, v16);
  v90 = v17;
  v27 = v17;
  v28 = v16;
  (*(v27 + 56))(v15, 0, 1, v16);
  URL.init(fileURLWithPath:relativeTo:)();
  sub_100008D3C(v15, &qword_1003E7500, &qword_10033EC30);
  if (qword_1003D7F58 != -1)
  {
    swift_once();
  }

  v29 = type metadata accessor for Logger();
  v30 = sub_100008D04(v29, qword_1003FAAE8);
  v89 = v26;
  v82 = v23;
  v23(v22, v26, v28);
  v78 = v30;
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v91 = v34;
    *v33 = 136315138;
    sub_100039268(&qword_1003DD590, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v35 = dispatch thunk of CustomStringConvertible.description.getter();
    v37 = v36;
    v86 = *(v90 + 8);
    v86(v22, v28);
    v38 = sub_10021145C(v35, v37, &v91);

    *(v33 + 4) = v38;
    _os_log_impl(&_mh_execute_header, v31, v32, "Local Cache: Decoding file at path %s", v33, 0xCu);
    sub_10000839C(v34);
  }

  else
  {

    v86 = *(v90 + 8);
    v86(v22, v28);
  }

  v40 = v87;
  v39 = v88;
  v41 = v84;
  v42 = v85;
  v43 = v89;
  sub_100031FEC(v89, type metadata accessor for BenefactorInfoRecord, &unk_1003E25B0, type metadata accessor for BenefactorInfoRecord, &unk_1003459E0);
  v44 = v82;
  if (v41)
  {
    return (v86)(v43, v28);
  }

  sub_100038554(v40, v42, type metadata accessor for BenefactorInfoRecord);
  v44(v39, v43, v28);
  v46 = Logger.logObject.getter();
  v47 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    v87 = swift_slowAlloc();
    v91 = v87;
    *v48 = 136315394;
    v49 = v75;
    v50 = v76;
    v51 = *(v76 + 16);
    v52 = v42 + *(v74 + 28);
    v85 = v46;
    v53 = v42;
    v54 = v77;
    v51(v75, v52, v77);
    sub_1000385BC(v53, type metadata accessor for BenefactorInfoRecord);
    sub_100039268(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    LODWORD(v84) = v47;
    v55 = dispatch thunk of CustomStringConvertible.description.getter();
    v57 = v56;
    (*(v50 + 8))(v49, v54);
    v58 = sub_10021145C(v55, v57, &v91);

    *(v48 + 4) = v58;
    *(v48 + 12) = 2080;
    sub_100039268(&qword_1003DD590, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v59 = v88;
    v60 = dispatch thunk of CustomStringConvertible.description.getter();
    v62 = v61;
    v63 = v86;
    v86(v59, v28);
    v64 = sub_10021145C(v60, v62, &v91);

    *(v48 + 14) = v64;
    v65 = v85;
    _os_log_impl(&_mh_execute_header, v85, v84, "Local Cache: Decoding record successfully: %s, path: %s", v48, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    sub_1000385BC(v42, type metadata accessor for BenefactorInfoRecord);

    v63 = v86;
    v86(v39, v28);
  }

  v66 = v81;
  v67 = v79;
  sub_100038554(v40, v79, type metadata accessor for BenefactorInfoRecord);
  v68 = *v66;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v66 = v68;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v68 = sub_100306208(0, v68[2] + 1, 1, v68);
    *v66 = v68;
  }

  v71 = v68[2];
  v70 = v68[3];
  if (v71 >= v70 >> 1)
  {
    *v66 = sub_100306208((v70 > 1), v71 + 1, 1, v68);
  }

  sub_1000385BC(v40, type metadata accessor for BenefactorInfoRecord);
  v63(v89, v28);
  v72 = *v66;
  v72[2] = v71 + 1;
  return sub_100039200(v67, v72 + ((*(v80 + 80) + 32) & ~*(v80 + 80)) + *(v80 + 72) * v71, type metadata accessor for BenefactorInfoRecord);
}

uint64_t sub_100036854(void (*a1)(char *, uint64_t), char *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v83 = a4;
  v81 = a5;
  v89 = a2;
  v86 = a1;
  v6 = type metadata accessor for UUID();
  v76 = *(v6 - 8);
  v77 = v6;
  __chkstk_darwin(v6);
  v75 = &v73 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = type metadata accessor for BeneficiaryInfoRecord(0);
  v80 = *(v74 - 8);
  v8 = __chkstk_darwin(v74);
  v79 = &v73 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v85 = (&v73 - v11);
  __chkstk_darwin(v10);
  v87 = &v73 - v12;
  v13 = sub_100005814(&qword_1003E7500, &qword_10033EC30);
  __chkstk_darwin(v13 - 8);
  v15 = &v73 - v14;
  v16 = type metadata accessor for URL();
  v17 = *(v16 - 8);
  v18 = __chkstk_darwin(v16);
  v88 = &v73 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v22 = &v73 - v21;
  __chkstk_darwin(v20);
  v23 = *(v17 + 16);
  v24 = a3;
  v26 = &v73 - v25;
  v23(v15, v24, v16);
  v90 = v17;
  v27 = v17;
  v28 = v16;
  (*(v27 + 56))(v15, 0, 1, v16);
  URL.init(fileURLWithPath:relativeTo:)();
  sub_100008D3C(v15, &qword_1003E7500, &qword_10033EC30);
  if (qword_1003D7F58 != -1)
  {
    swift_once();
  }

  v29 = type metadata accessor for Logger();
  v30 = sub_100008D04(v29, qword_1003FAAE8);
  v89 = v26;
  v82 = v23;
  v23(v22, v26, v28);
  v78 = v30;
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v91 = v34;
    *v33 = 136315138;
    sub_100039268(&qword_1003DD590, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v35 = dispatch thunk of CustomStringConvertible.description.getter();
    v37 = v36;
    v86 = *(v90 + 8);
    v86(v22, v28);
    v38 = sub_10021145C(v35, v37, &v91);

    *(v33 + 4) = v38;
    _os_log_impl(&_mh_execute_header, v31, v32, "Local Cache: Decoding file at path %s", v33, 0xCu);
    sub_10000839C(v34);
  }

  else
  {

    v86 = *(v90 + 8);
    v86(v22, v28);
  }

  v40 = v87;
  v39 = v88;
  v41 = v84;
  v42 = v85;
  v43 = v89;
  sub_100031FEC(v89, type metadata accessor for BeneficiaryInfoRecord, &unk_1003E26B0, type metadata accessor for BeneficiaryInfoRecord, &unk_100345BF0);
  v44 = v82;
  if (v41)
  {
    return (v86)(v43, v28);
  }

  sub_100038554(v40, v42, type metadata accessor for BeneficiaryInfoRecord);
  v44(v39, v43, v28);
  v46 = Logger.logObject.getter();
  v47 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    v87 = swift_slowAlloc();
    v91 = v87;
    *v48 = 136315394;
    v49 = v75;
    v50 = v76;
    v51 = *(v76 + 16);
    v52 = v42 + *(v74 + 32);
    v85 = v46;
    v53 = v42;
    v54 = v77;
    v51(v75, v52, v77);
    sub_1000385BC(v53, type metadata accessor for BeneficiaryInfoRecord);
    sub_100039268(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    LODWORD(v84) = v47;
    v55 = dispatch thunk of CustomStringConvertible.description.getter();
    v57 = v56;
    (*(v50 + 8))(v49, v54);
    v58 = sub_10021145C(v55, v57, &v91);

    *(v48 + 4) = v58;
    *(v48 + 12) = 2080;
    sub_100039268(&qword_1003DD590, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v59 = v88;
    v60 = dispatch thunk of CustomStringConvertible.description.getter();
    v62 = v61;
    v63 = v86;
    v86(v59, v28);
    v64 = sub_10021145C(v60, v62, &v91);

    *(v48 + 14) = v64;
    v65 = v85;
    _os_log_impl(&_mh_execute_header, v85, v84, "Local Cache: Decoding record successfully: %s, path: %s", v48, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    sub_1000385BC(v42, type metadata accessor for BeneficiaryInfoRecord);

    v63 = v86;
    v86(v39, v28);
  }

  v66 = v81;
  v67 = v79;
  sub_100038554(v40, v79, type metadata accessor for BeneficiaryInfoRecord);
  v68 = *v66;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v66 = v68;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v68 = sub_100306230(0, v68[2] + 1, 1, v68);
    *v66 = v68;
  }

  v71 = v68[2];
  v70 = v68[3];
  if (v71 >= v70 >> 1)
  {
    *v66 = sub_100306230((v70 > 1), v71 + 1, 1, v68);
  }

  sub_1000385BC(v40, type metadata accessor for BeneficiaryInfoRecord);
  v63(v89, v28);
  v72 = *v66;
  v72[2] = v71 + 1;
  return sub_100039200(v67, v72 + ((*(v80 + 80) + 32) & ~*(v80 + 80)) + *(v80 + 72) * v71, type metadata accessor for BeneficiaryInfoRecord);
}

uint64_t sub_100037174(void (*a1)(char *, uint64_t), char *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v83 = a4;
  v81 = a5;
  v89 = a2;
  v86 = a1;
  v6 = type metadata accessor for UUID();
  v76 = *(v6 - 8);
  v77 = v6;
  __chkstk_darwin(v6);
  v75 = &v73 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = type metadata accessor for InheritanceInvitationRecord(0);
  v80 = *(v74 - 8);
  v8 = __chkstk_darwin(v74);
  v79 = &v73 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v85 = (&v73 - v11);
  __chkstk_darwin(v10);
  v87 = &v73 - v12;
  v13 = sub_100005814(&qword_1003E7500, &qword_10033EC30);
  __chkstk_darwin(v13 - 8);
  v15 = &v73 - v14;
  v16 = type metadata accessor for URL();
  v17 = *(v16 - 8);
  v18 = __chkstk_darwin(v16);
  v88 = &v73 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v22 = &v73 - v21;
  __chkstk_darwin(v20);
  v23 = *(v17 + 16);
  v24 = a3;
  v26 = &v73 - v25;
  v23(v15, v24, v16);
  v90 = v17;
  v27 = v17;
  v28 = v16;
  (*(v27 + 56))(v15, 0, 1, v16);
  URL.init(fileURLWithPath:relativeTo:)();
  sub_100008D3C(v15, &qword_1003E7500, &qword_10033EC30);
  if (qword_1003D7F58 != -1)
  {
    swift_once();
  }

  v29 = type metadata accessor for Logger();
  v30 = sub_100008D04(v29, qword_1003FAAE8);
  v89 = v26;
  v82 = v23;
  v23(v22, v26, v28);
  v78 = v30;
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v91 = v34;
    *v33 = 136315138;
    sub_100039268(&qword_1003DD590, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v35 = dispatch thunk of CustomStringConvertible.description.getter();
    v37 = v36;
    v86 = *(v90 + 8);
    v86(v22, v28);
    v38 = sub_10021145C(v35, v37, &v91);

    *(v33 + 4) = v38;
    _os_log_impl(&_mh_execute_header, v31, v32, "Local Cache: Decoding file at path %s", v33, 0xCu);
    sub_10000839C(v34);
  }

  else
  {

    v86 = *(v90 + 8);
    v86(v22, v28);
  }

  v40 = v87;
  v39 = v88;
  v41 = v84;
  v42 = v85;
  v43 = v89;
  sub_100031FEC(v89, type metadata accessor for InheritanceInvitationRecord, &unk_1003D9180, type metadata accessor for InheritanceInvitationRecord, &unk_10034649C);
  v44 = v82;
  if (v41)
  {
    return (v86)(v43, v28);
  }

  sub_100038554(v40, v42, type metadata accessor for InheritanceInvitationRecord);
  v44(v39, v43, v28);
  v46 = Logger.logObject.getter();
  v47 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    v87 = swift_slowAlloc();
    v91 = v87;
    *v48 = 136315394;
    v49 = v75;
    v50 = v76;
    v51 = *(v76 + 16);
    v52 = v42 + *(v74 + 36);
    v85 = v46;
    v53 = v42;
    v54 = v77;
    v51(v75, v52, v77);
    sub_1000385BC(v53, type metadata accessor for InheritanceInvitationRecord);
    sub_100039268(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    LODWORD(v84) = v47;
    v55 = dispatch thunk of CustomStringConvertible.description.getter();
    v57 = v56;
    (*(v50 + 8))(v49, v54);
    v58 = sub_10021145C(v55, v57, &v91);

    *(v48 + 4) = v58;
    *(v48 + 12) = 2080;
    sub_100039268(&qword_1003DD590, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v59 = v88;
    v60 = dispatch thunk of CustomStringConvertible.description.getter();
    v62 = v61;
    v63 = v86;
    v86(v59, v28);
    v64 = sub_10021145C(v60, v62, &v91);

    *(v48 + 14) = v64;
    v65 = v85;
    _os_log_impl(&_mh_execute_header, v85, v84, "Local Cache: Decoding record successfully: %s, path: %s", v48, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    sub_1000385BC(v42, type metadata accessor for InheritanceInvitationRecord);

    v63 = v86;
    v86(v39, v28);
  }

  v66 = v81;
  v67 = v79;
  sub_100038554(v40, v79, type metadata accessor for InheritanceInvitationRecord);
  v68 = *v66;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v66 = v68;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v68 = sub_100306258(0, v68[2] + 1, 1, v68);
    *v66 = v68;
  }

  v71 = v68[2];
  v70 = v68[3];
  if (v71 >= v70 >> 1)
  {
    *v66 = sub_100306258((v70 > 1), v71 + 1, 1, v68);
  }

  sub_1000385BC(v40, type metadata accessor for InheritanceInvitationRecord);
  v63(v89, v28);
  v72 = *v66;
  v72[2] = v71 + 1;
  return sub_100039200(v67, v72 + ((*(v80 + 80) + 32) & ~*(v80 + 80)) + *(v80 + 72) * v71, type metadata accessor for InheritanceInvitationRecord);
}

uint64_t sub_100037A94(void (*a1)(char *, uint64_t), char *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v83 = a4;
  v81 = a5;
  v89 = a2;
  v86 = a1;
  v6 = type metadata accessor for UUID();
  v76 = *(v6 - 8);
  v77 = v6;
  __chkstk_darwin(v6);
  v75 = &v73 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = type metadata accessor for InheritanceHealthRecord(0);
  v80 = *(v74 - 8);
  v8 = __chkstk_darwin(v74);
  v79 = &v73 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v85 = (&v73 - v11);
  __chkstk_darwin(v10);
  v87 = &v73 - v12;
  v13 = sub_100005814(&qword_1003E7500, &qword_10033EC30);
  __chkstk_darwin(v13 - 8);
  v15 = &v73 - v14;
  v16 = type metadata accessor for URL();
  v17 = *(v16 - 8);
  v18 = __chkstk_darwin(v16);
  v88 = &v73 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v22 = &v73 - v21;
  __chkstk_darwin(v20);
  v23 = *(v17 + 16);
  v24 = a3;
  v26 = &v73 - v25;
  v23(v15, v24, v16);
  v90 = v17;
  v27 = v17;
  v28 = v16;
  (*(v27 + 56))(v15, 0, 1, v16);
  URL.init(fileURLWithPath:relativeTo:)();
  sub_100008D3C(v15, &qword_1003E7500, &qword_10033EC30);
  if (qword_1003D7F58 != -1)
  {
    swift_once();
  }

  v29 = type metadata accessor for Logger();
  v30 = sub_100008D04(v29, qword_1003FAAE8);
  v89 = v26;
  v82 = v23;
  v23(v22, v26, v28);
  v78 = v30;
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v91 = v34;
    *v33 = 136315138;
    sub_100039268(&qword_1003DD590, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v35 = dispatch thunk of CustomStringConvertible.description.getter();
    v37 = v36;
    v86 = *(v90 + 8);
    v86(v22, v28);
    v38 = sub_10021145C(v35, v37, &v91);

    *(v33 + 4) = v38;
    _os_log_impl(&_mh_execute_header, v31, v32, "Local Cache: Decoding file at path %s", v33, 0xCu);
    sub_10000839C(v34);
  }

  else
  {

    v86 = *(v90 + 8);
    v86(v22, v28);
  }

  v40 = v87;
  v39 = v88;
  v41 = v84;
  v42 = v85;
  v43 = v89;
  sub_100031FEC(v89, type metadata accessor for InheritanceHealthRecord, &qword_1003D91A0, type metadata accessor for InheritanceHealthRecord, &unk_100346270);
  v44 = v82;
  if (v41)
  {
    return (v86)(v43, v28);
  }

  sub_100038554(v40, v42, type metadata accessor for InheritanceHealthRecord);
  v44(v39, v43, v28);
  v46 = Logger.logObject.getter();
  v47 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    v87 = swift_slowAlloc();
    v91 = v87;
    *v48 = 136315394;
    v49 = v75;
    v50 = v76;
    v51 = *(v76 + 16);
    v52 = v42 + *(v74 + 28);
    v85 = v46;
    v53 = v42;
    v54 = v77;
    v51(v75, v52, v77);
    sub_1000385BC(v53, type metadata accessor for InheritanceHealthRecord);
    sub_100039268(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    LODWORD(v84) = v47;
    v55 = dispatch thunk of CustomStringConvertible.description.getter();
    v57 = v56;
    (*(v50 + 8))(v49, v54);
    v58 = sub_10021145C(v55, v57, &v91);

    *(v48 + 4) = v58;
    *(v48 + 12) = 2080;
    sub_100039268(&qword_1003DD590, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v59 = v88;
    v60 = dispatch thunk of CustomStringConvertible.description.getter();
    v62 = v61;
    v63 = v86;
    v86(v59, v28);
    v64 = sub_10021145C(v60, v62, &v91);

    *(v48 + 14) = v64;
    v65 = v85;
    _os_log_impl(&_mh_execute_header, v85, v84, "Local Cache: Decoding record successfully: %s, path: %s", v48, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    sub_1000385BC(v42, type metadata accessor for InheritanceHealthRecord);

    v63 = v86;
    v86(v39, v28);
  }

  v66 = v81;
  v67 = v79;
  sub_100038554(v40, v79, type metadata accessor for InheritanceHealthRecord);
  v68 = *v66;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v66 = v68;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v68 = sub_10030650C(0, v68[2] + 1, 1, v68);
    *v66 = v68;
  }

  v71 = v68[2];
  v70 = v68[3];
  if (v71 >= v70 >> 1)
  {
    *v66 = sub_10030650C((v70 > 1), v71 + 1, 1, v68);
  }

  sub_1000385BC(v40, type metadata accessor for InheritanceHealthRecord);
  v63(v89, v28);
  v72 = *v66;
  v72[2] = v71 + 1;
  return sub_100039200(v67, v72 + ((*(v80 + 80) + 32) & ~*(v80 + 80)) + *(v80 + 72) * v71, type metadata accessor for InheritanceHealthRecord);
}

uint64_t sub_1000383CC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1000383E4()
{
  result = qword_1003D9130;
  if (!qword_1003D9130)
  {
    sub_100008CBC(&unk_1003DABE0, &unk_10033EC20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D9130);
  }

  return result;
}

void sub_100038470(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = (a4)(a1, a2, a3);
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

uint64_t sub_100038554(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000385BC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1000387DC(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v6 = *(sub_100005814(a2, a3) - 8);
  v7 = v4 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return a4(a1, v7);
}

uint64_t sub_1000388CC(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1000082A8;

  return sub_100020340(a1, v5, v4);
}

uint64_t sub_1000389EC()
{

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_100038A38()
{

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_100038A70()
{
  v1 = type metadata accessor for CustodianRecord(0);
  v2 = (*(*(v1 - 1) + 80) + 48) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);

  v4 = v0 + v2;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 8);
  v7(v0 + v2, v5);
  v7(v0 + v2 + v1[5], v5);

  v8 = (v0 + v2 + v1[10]);
  v9 = v8[1];
  if (v9 >> 60 != 15)
  {
    sub_100012324(*v8, v9);
  }

  sub_100012324(*(v4 + v1[11]), *(v4 + v1[11] + 8));

  v10 = v1[16];
  if (!(*(v6 + 48))(v4 + v10, 1, v5))
  {
    v7(v4 + v10, v5);
  }

  return _swift_deallocObject(v0, v2 + v3);
}

uint64_t sub_100038C60()
{
  v1 = *(type metadata accessor for CustodianRecord(0) - 8);
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0 + ((*(v1 + 80) + 48) & ~*(v1 + 80));

  return sub_100031AFC(v2, v3, v4, v5, v6);
}

uint64_t sub_100038CC8()
{
  v1 = type metadata accessor for CustodianHealthRecord(0);
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = v0 + v2;
  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 8);
  v6(v0 + v2, v5);
  v6(v0 + v2 + v1[5], v5);
  v7 = v1[6];
  v8 = type metadata accessor for Date();
  (*(*(v8 - 8) + 8))(v0 + v2 + v7, v8);
  v9 = (v0 + v2 + v1[7]);
  v10 = v9[1];
  if (v10 >> 60 != 15)
  {
    sub_100012324(*v9, v10);
  }

  v11 = (((v3 + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  sub_100012324(*(v4 + v1[8]), *(v4 + v1[8] + 8));

  return _swift_deallocObject(v0, v11 + 8);
}

uint64_t sub_100038E90()
{
  v1 = type metadata accessor for CustodianRecoveryInfoRecord(0);
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v12 = *(*(v1 - 1) + 64);
  v3 = v0 + v2;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 8);
  v6(v0 + v2, v4);
  v6(v0 + v2 + v1[5], v4);

  sub_100012324(*(v3 + v1[7]), *(v3 + v1[7] + 8));
  v7 = (v0 + v2 + v1[8]);
  v8 = v7[1];
  if (v8 >> 60 != 15)
  {
    sub_100012324(*v7, v8);
  }

  sub_100012324(*(v3 + v1[9]), *(v3 + v1[9] + 8));
  v9 = v1[11];
  if (!(*(v5 + 48))(v3 + v9, 1, v4))
  {
    v6(v3 + v9, v4);
  }

  v10 = (((v12 + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  return _swift_deallocObject(v0, v10 + 8);
}

uint64_t sub_1000390A8(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, unint64_t, uint64_t, uint64_t))
{
  v5 = *(a2(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v3 + v7);
  v9 = *(v3 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));

  return a3(a1, v3 + v6, v8, v9);
}

uint64_t sub_100039168()
{

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_100039200(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100039268(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100039390(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t sub_10003940C(uint64_t *a1, uint64_t *a2)
{
  v3 = sub_100005814(a1, a2);
  v4 = *(v3 - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = *(v4 + 64);
  (*(v4 + 8))(v2 + v5, v3);

  return _swift_deallocObject(v2, v5 + v6);
}

uint64_t sub_100039520(uint64_t *a1, uint64_t *a2)
{
  v3 = sub_100005814(a1, a2);
  v4 = *(v3 - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v4 + 64);

  (*(v4 + 8))(v2 + v5, v3);

  return _swift_deallocObject(v2, v5 + v6);
}

uint64_t sub_100039610(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v6 = *(sub_100005814(a2, a3) - 8);
  v7 = *(v4 + 16);
  v8 = *(v4 + 24);
  v9 = v4 + ((*(v6 + 80) + 32) & ~*(v6 + 80));

  return a4(a1, v7, v8, v9);
}

uint64_t sub_10003969C()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v4 + 16);
}

uint64_t sub_100039754(uint64_t a1, char a2, uint64_t (*a3)(uint64_t, void, unint64_t, uint64_t, uint64_t))
{
  v6 = *(type metadata accessor for UUID() - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = (v3 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];

  return a3(a1, a2 & 1, v3 + v7, v9, v10);
}

uint64_t sub_100039818()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v4 + 8);
}

uint64_t sub_1000398E0(uint64_t a1)
{
  v3 = *(type metadata accessor for URL() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_100032984(v1 + v4, *(v1 + v5), *(v1 + v5 + 8), *(v1 + ((v5 + 23) & 0xFFFFFFFFFFFFFFF8)), a1);
}

uint64_t sub_1000399DC(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_100039A88()
{

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_100039ADC()
{

  return _swift_deallocObject(v0, 80);
}

uint64_t sub_100039B58(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100005814(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_100039C5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v7 = a4(0);
  v8 = *(v7 - 8);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = *(v8 + 48);
    v11 = a1;
LABEL_5:

    return v10(v11, a2, v9);
  }

  v12 = type metadata accessor for CustodianRecoveryInfoRecord(0);
  v13 = *(v12 - 8);
  if (*(v13 + 84) == a2)
  {
    v9 = v12;
    v10 = *(v13 + 48);
    v11 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v15 = type metadata accessor for CustodianHealthRecord(0);
  v16 = *(*(v15 - 8) + 48);
  v17 = a1 + *(a3 + 24);

  return v16(v17, a2, v15);
}

uint64_t sub_100039DCC(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t (*a5)(void))
{
  v9 = a5(0);
  v10 = *(v9 - 8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = *(v10 + 56);
    v13 = a1;
LABEL_5:

    return v12(v13, a2, a2, v11);
  }

  v14 = type metadata accessor for CustodianRecoveryInfoRecord(0);
  v15 = *(v14 - 8);
  if (*(v15 + 84) == a3)
  {
    v11 = v14;
    v12 = *(v15 + 56);
    v13 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v17 = type metadata accessor for CustodianHealthRecord(0);
  v18 = *(*(v17 - 8) + 56);
  v19 = a1 + *(a4 + 24);

  return v18(v19, a2, a2, v17);
}

uint64_t sub_100039F34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  result = a4(319, a2, a3);
  if (v5 <= 0x3F)
  {
    result = type metadata accessor for CustodianRecoveryInfoRecord(319);
    if (v6 <= 0x3F)
    {
      result = type metadata accessor for CustodianHealthRecord(319);
      if (v7 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_100039FE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 32) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_10003A0C8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UUID();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 32) + 8) = a2;
  }

  return result;
}

void sub_10003A184(uint64_t a1)
{
  type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    sub_10003A230(319);
    if (v2 <= 0x3F)
    {
      sub_10003A288();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_10003A230(uint64_t a1)
{
  if (!qword_1003D9410[0])
  {
    type metadata accessor for Status(255);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, qword_1003D9410);
    }
  }
}

void sub_10003A288()
{
  if (!qword_1003DB130)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1003DB130);
    }
  }
}

uint64_t getEnumTagSinglePayload for FetchRecoveryRecordsRequest.CachePolicy(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for FetchRecoveryRecordsRequest.CachePolicy(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_10003A450()
{
  result = qword_1003D9458;
  if (!qword_1003D9458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D9458);
  }

  return result;
}

void sub_10003A550(void (*a1)(void, uint64_t), uint64_t a2)
{
  v5 = sub_100005814(&unk_1003DA210, qword_10033EE50);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &aBlock[-1] - v7;
  v9 = sub_1000080F8(v2 + 7, v2[10]);
  v10 = *v9;
  v11 = [*(*v9 + 16) aa_primaryAppleAccount];
  if (v11 && (v12 = *(v10 + 16), v13 = v11, v14 = [v11 aa_altDSID], v15 = objc_msgSend(v12, "aa_authKitAccountForAltDSID:", v14), v13, v14, v15) && (v16 = objc_msgSend(*(v10 + 24), "canBeCustodianForAccount:", v15), v15, v16))
  {
    v17 = sub_1000080F8(v2 + 2, v2[5]);
    (*(v6 + 16))(v8, *v17 + OBJC_IVAR____TtC13appleaccountd17StorageController__cloudStorage, v5);
    Dependency.wrappedValue.getter();
    (*(v6 + 8))(v8, v5);
    if (qword_1003D7EB0 != -1)
    {
      swift_once();
    }

    if (qword_1003D7EC0 != -1)
    {
      swift_once();
    }

    v18 = sub_1002E2BC4(qword_1003FA9D0, qword_1003FA9D8);
    v19 = swift_allocObject();
    *(v19 + 16) = a1;
    *(v19 + 24) = a2;
    aBlock[4] = sub_100016014;
    aBlock[5] = v19;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100015858;
    aBlock[3] = &unk_1003A5478;
    v20 = _Block_copy(aBlock);

    [v18 accountInfoWithCompletionHandler:v20];
    _Block_release(v20);

    sub_10000839C(v28);
  }

  else
  {
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_100008D04(v21, qword_1003FAA88);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "Account is ineligible to be a custodian", v24, 2u);
    }

    type metadata accessor for AACustodianError(0);
    v28[0] = -7012;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_10003A9C0();
    _BridgedStoredNSError.init(_:userInfo:)();
    v25 = aBlock[0];
    a1(aBlock[0], 1);
  }
}

uint64_t sub_10003A95C()
{
  sub_10000839C((v0 + 16));
  sub_10000839C((v0 + 56));

  return swift_deallocClassInstance();
}

unint64_t sub_10003A9C0()
{
  result = qword_1003D8140;
  if (!qword_1003D8140)
  {
    type metadata accessor for AACustodianError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D8140);
  }

  return result;
}

uint64_t sub_10003AA18()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_10003AA50(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void *sub_10003AA68(uint64_t a1)
{
  v2 = v1;
  v382 = a1;
  v383 = sub_100005814(&unk_1003D97D0, &qword_10033FBB0);
  v368 = *(v383 - 8);
  __chkstk_darwin(v383);
  v381 = v344 - v3;
  v380 = sub_100005814(&unk_1003D8B50, &unk_10033F600);
  v367 = *(v380 - 8);
  __chkstk_darwin(v380);
  v379 = v344 - v4;
  v407 = type metadata accessor for DependencyRegistry.Entry();
  v406 = *(v407 - 8);
  __chkstk_darwin(v407);
  v6 = (v344 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v392 = sub_100005814(&unk_1003D97E0, &unk_10033EF90);
  v366 = *(v392 - 8);
  __chkstk_darwin(v392);
  v8 = v344 - v7;
  v389 = sub_100005814(&unk_1003DB090, &qword_100340B80);
  v365 = *(v389 - 8);
  __chkstk_darwin(v389);
  v10 = v344 - v9;
  v11 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  v364 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = v344 - v12;
  v393 = sub_100005814(&unk_1003DA2A0, &unk_10033BDA0);
  Dependency.init(dependencyId:config:)();
  v395 = v13;
  v396 = v11;
  Dependency.wrappedValue.getter();
  sub_10003E950(&v441, (v2 + 18));
  sub_100005814(&unk_1003D9800, &unk_10033EFB0);
  v388 = v10;
  Dependency.init(dependencyId:config:)();
  Dependency.wrappedValue.getter();
  sub_10003E950(&v441, (v2 + 13));
  sub_100005814(&unk_1003E03A0, &unk_1003436D0);
  v391 = v8;
  Dependency.init(dependencyId:config:)();
  Dependency.wrappedValue.getter();
  v2[28] = v441;
  v404 = type metadata accessor for DependencyRegistry();
  v14 = sub_100005814(&unk_1003D9810, &unk_10033EFC0);
  v15 = type metadata accessor for AnalyticsEventFactory();
  v16 = swift_allocObject();
  v17 = v6;
  v6[3] = v15;
  *v6 = v16;
  v18 = enum case for DependencyRegistry.Entry.exact(_:);
  v19 = v406;
  v402 = *(v406 + 104);
  v403 = v406 + 104;
  v20 = v6;
  v401 = enum case for DependencyRegistry.Entry.exact(_:);
  v21 = v407;
  (v402)(v20, enum case for DependencyRegistry.Entry.exact(_:), v407);
  v363 = v14;
  static DependencyRegistry.register<A>(_:entry:dependencyId:)();
  v405 = *(v19 + 8);
  v406 = v19 + 8;
  v405(v17, v21);
  v394 = sub_100005814(&qword_1003D9AE0, &qword_10033E8A0);
  Dependency.init(dependencyId:config:)();
  v361 = sub_100005814(&unk_1003D9820, &unk_10033EFD0);
  Dependency.init(dependencyId:config:)();
  Dependency.wrappedValue.getter();
  v2[2] = v441;
  v22 = type metadata accessor for StorageController(0);
  v23 = swift_allocObject();
  sub_100005814(&unk_1003DF610, &unk_1003437A0);
  Dependency.init(dependencyId:config:)();
  v360 = sub_100005814(&unk_1003D9830, &qword_10033E970);
  Dependency.init(dependencyId:config:)();
  v398 = v2;
  v2[3] = v23;
  v24 = v2 + 3;
  v2[6] = v22;
  v2[7] = &off_1003B49F0;
  v25 = sub_100005814(&unk_1003DA2B0, &unk_10033F430);
  v399 = v24;
  v26 = sub_1000080F8(v24, v22);
  v17[3] = v22;
  v27 = sub_10000DBEC(v17);
  v28 = *(*(v22 - 8) + 16);
  (v28)(v27, v26, v22);
  v29 = v18;
  v30 = v407;
  (v402)(v17, v29, v407);
  v359 = v25;
  static DependencyRegistry.register<A>(_:entry:dependencyId:)();
  v405(v17, v30);
  sub_100040738(v24, &v441);
  Dependency.wrappedValue.getter();
  v31 = v437;
  v32 = sub_10003E968(&v441, v442);
  __chkstk_darwin(v32);
  v34 = (v344 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v35 + 16))(v34);
  v36 = *v34;
  v439 = &off_1003B49F0;
  v438 = v22;
  *&v437 = v36;
  v37 = type metadata accessor for CustodianStorageController();
  v38 = swift_allocObject();
  v39 = sub_10003E968(&v437, v22);
  __chkstk_darwin(v39);
  v41 = (v344 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28(v41);
  v42 = *v41;
  v385 = v22;
  v38[5] = v22;
  v38[6] = &off_1003B49F0;
  v38[2] = v42;
  v38[7] = v31;
  sub_10000839C(&v437);
  sub_10000839C(&v441);
  v43 = v398;
  v44 = v398;
  v398[8] = v38;
  v44 += 8;
  v400 = v44;
  v43[11] = v37;
  v43[12] = &off_1003A4C78;
  v45 = sub_100005814(&unk_1003D9840, &unk_10033EFE0);
  v46 = sub_1000080F8(v44, v37);
  v17[3] = v37;
  v47 = sub_10000DBEC(v17);
  v372 = *(v37 - 8);
  v48 = v372[2];
  v376 = v372 + 2;
  v377 = v37;
  v375 = v48;
  (v48)(v47, v46, v37);
  v49 = v407;
  v50 = v402;
  (v402)(v17, v401, v407);
  v362 = v38;

  v378 = v45;
  static DependencyRegistry.register<A>(_:entry:dependencyId:)();
  v51 = v49;
  v52 = v405;
  v405(v17, v49);
  v387 = sub_100005814(&unk_1003E55D0, &unk_100340CC0);
  v53 = type metadata accessor for CustodianHealthCheckVersionProviderFactory();
  v54 = swift_allocObject();
  v17[3] = v53;
  v17[4] = sub_1000405B8(&unk_1003D9850, type metadata accessor for CustodianHealthCheckVersionProviderFactory, &unk_100343B54);
  *v17 = v54;
  v397 = v17;
  v390 = enum case for DependencyRegistry.Entry.factory(_:);
  v50(v17);
  static DependencyRegistry.register<A>(_:entry:dependencyId:)();
  v52(v17, v51);
  v55 = type metadata accessor for DaemonDestinationBuilder();
  v56 = swift_allocObject();
  v57 = v398;
  v398[32] = v55;
  v57[33] = &off_1003A9008;
  v57[29] = v56;
  Dependency.wrappedValue.getter();
  v58 = v441;
  sub_100040738((v57 + 29), &v441);
  v59 = sub_10003E968(&v441, v442);
  __chkstk_darwin(v59);
  v61 = (v344 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v62 + 16))(v61);
  v63 = *v61;
  v439 = &off_1003A9008;
  v438 = v55;
  *&v437 = v63;
  v64 = type metadata accessor for DaemonCustodianMessenger();
  v65 = swift_allocObject();
  v66 = sub_10003E968(&v437, v55);
  __chkstk_darwin(v66);
  v68 = (v344 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v69 + 16))(v68);
  v70 = *v68;
  v65[6] = v55;
  v65[7] = &off_1003A9008;
  v65[2] = v58;
  v65[3] = v70;
  v71 = v400;
  sub_10000839C(&v437);
  sub_10000839C(&v441);
  v72 = v57;
  v57[23] = v65;
  v57 += 23;
  v57[3] = v64;
  v57[4] = &off_1003A8FD8;
  sub_100005814(&unk_1003DACC0, &unk_10033EFF0);
  v384 = v57;
  v73 = sub_1000080F8(v57, v64);
  v74 = v397;
  v397[3] = v64;
  v75 = sub_10000DBEC(v74);
  (*(*(v64 - 8) + 16))(v75, v73, v64);
  v76 = v407;
  (v402)(v74, v401, v407);
  static DependencyRegistry.register<A>(_:entry:dependencyId:)();
  v405(v74, v76);
  Dependency.wrappedValue.getter();
  sub_100040738(v399, &v443);
  sub_100040738(v71, v444);
  if (qword_1003D7DE8 != -1)
  {
    swift_once();
  }

  v444[5] = qword_1003FA820;
  v444[6] = &off_1003AA010;
  sub_10003E9B8(&v441, &v437);
  v77 = type metadata accessor for CustodianRecoveryController(0);
  swift_allocObject();

  v78 = sub_1000FACE4(&v437);
  v72[37] = v77;
  v72[38] = &off_1003A9790;
  v72[34] = v78;
  v79 = [objc_allocWithZone(AAFollowUpController) init];
  sub_100040738(v71, &v437);
  Dependency.wrappedValue.getter();
  v80 = sub_10003E968(&v437, v438);
  __chkstk_darwin(v80);
  v82 = (v344 - ((v81 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v83 + 16))(v82);
  v84 = sub_10003E968(&v434, v435);
  __chkstk_darwin(v84);
  v86 = v344 - ((v85 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v87 + 16))(v86);
  v88 = *v82;
  v358 = v79;
  v89 = sub_10003F044(v88, v86, v358);
  sub_10000839C(&v434);
  sub_10000839C(&v437);
  v90 = type metadata accessor for CustodianRecoveryFollowUpController();
  v72[42] = v90;
  v72[43] = &off_1003A9DE8;
  v72[39] = v89;
  sub_100040738((v72 + 34), &v437);
  v91 = sub_10003E968(&v437, v438);
  __chkstk_darwin(v91);
  v93 = (v344 - ((v92 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v94 + 16))(v93);
  v95 = *v93;
  v436 = &off_1003A9790;
  v435 = v77;
  *&v434 = v95;
  type metadata accessor for CustodianPushServiceDelegate();
  v96 = swift_allocObject();
  v97 = sub_10003E968(&v434, v77);
  __chkstk_darwin(v97);
  v99 = (v344 - ((v98 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v100 + 16))(v99);
  v101 = *v99;
  v433 = &off_1003A9790;
  v432 = v77;
  *&v431 = v101;
  sub_100040738(&v431, v96 + 16);
  type metadata accessor for SerialQueue();
  v102 = swift_allocObject();
  swift_defaultActor_initialize();
  sub_10000839C(&v431);
  *(v102 + 112) = _swiftEmptyArrayStorage;
  *(v102 + 120) = 0;
  *(v102 + 128) = 0;
  *(v96 + 56) = v102;
  sub_10000839C(&v434);
  sub_10000839C(&v437);
  v72[44] = v96;
  v72[45] = &off_1003B30C8;
  sub_100040738((v72 + 39), &v437);
  v103 = sub_10003E968(&v437, v438);
  __chkstk_darwin(v103);
  v105 = (v344 - ((v104 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v106 + 16))(v105);
  v107 = *v105;
  v436 = &off_1003A9DE8;
  v435 = v90;
  *&v434 = v107;
  type metadata accessor for EmbargoPushServiceDelegate();
  v108 = swift_allocObject();
  v109 = sub_10003E968(&v434, v90);
  __chkstk_darwin(v109);
  v111 = (v344 - ((v110 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v112 + 16))(v111);
  v113 = *v111;
  v108[5] = v90;
  v108[6] = &off_1003A9DE8;
  v108[2] = v113;
  sub_10000839C(&v434);
  sub_10000839C(&v437);
  v72[46] = v108;
  v72[47] = &off_1003B3130;
  sub_100040738(v400, &v437);
  type metadata accessor for DaemonFamilyRequester();
  v114 = swift_allocObject();
  v115 = sub_10003E968(&v437, v438);
  __chkstk_darwin(v115);
  v117 = (v344 - ((v116 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v118 + 16))(v117);
  v119 = sub_10003F284(*v117, v114);
  sub_10000839C(&v437);
  v72[56] = type metadata accessor for CustodianFamilyManager(0);
  v72[57] = &off_1003B3860;
  v72[53] = v119;
  sub_100040738(v399, &v437);
  sub_100040738((v72 + 18), &v434);
  v120 = sub_10003E968(&v437, v438);
  __chkstk_darwin(v120);
  v122 = (v344 - ((v121 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v123 + 16))(v122);
  v124 = sub_10003E968(&v434, v435);
  __chkstk_darwin(v124);
  v126 = (v344 - ((v125 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v127 + 16))(v126);
  v128 = sub_10003F458(*v122, *v126);
  sub_10000839C(&v434);
  sub_10000839C(&v437);
  v72[72] = type metadata accessor for CustodianAutoAcceptValidator();
  v72[73] = &off_1003A5440;
  v72[69] = v128;
  v129 = sub_100005814(&unk_1003D9860, &qword_10033F440);
  Dependency.wrappedValue.getter();
  v130 = sub_10003E968(&v437, v438);
  __chkstk_darwin(v130);
  v132 = (v344 - ((v131 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v133 + 16))(v132);
  v134 = *v132;
  v135 = type metadata accessor for DaemonAccountStore();
  v436 = &off_1003AB0B8;
  v435 = v135;
  *&v434 = v134;
  v136 = type metadata accessor for DaemonSecurityController(0);
  v137 = swift_allocObject();
  v138 = sub_10003E968(&v434, v135);
  v386 = v135;
  v373 = *(*(v135 - 8) + 64);
  __chkstk_darwin(v138);
  v374 = (v139 + 15) & 0xFFFFFFFFFFFFFFF0;
  v140 = (v344 - v374);
  v142 = *(v141 + 16);
  v370 = (v141 + 16);
  v371 = v142;
  v142(v344 - v374);
  v143 = *v140;
  v137[5] = v135;
  v137[6] = &off_1003AB0B8;
  v137[2] = v143;
  v369 = sub_100016034(0, &qword_1003DF680, CDPCustodianRecoveryKeyController_ptr);
  Dependency.init(dependencyId:config:)();
  v356 = sub_100005814(&qword_1003D9870, &qword_10033F000);
  Dependency.init(dependencyId:config:)();
  sub_10000839C(&v434);
  sub_10000839C(&v437);
  v144 = v397;
  v397[3] = v136;
  *v144 = v137;
  v145 = v407;
  (v402)(v144, v401, v407);
  v357 = v129;
  static DependencyRegistry.register<A>(_:entry:dependencyId:)();
  v405(v144, v145);
  sub_100040738(v384, &v437);
  v146 = v400;
  sub_100040738(v400, &v434);
  sub_100040738(v399, &v431);
  v147 = sub_10003E968(&v437, v438);
  v355 = v344;
  __chkstk_darwin(v147);
  v149 = (v344 - ((v148 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v150 + 16))(v149);
  v151 = sub_10003E968(&v434, v435);
  __chkstk_darwin(v151);
  v153 = (v344 - ((v152 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v154 + 16))(v153);
  v155 = sub_10003E968(&v431, v432);
  __chkstk_darwin(v155);
  v157 = (v344 - ((v156 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v158 + 16))(v157);
  v387 = sub_10003F65C(*v149, *v153, *v157);
  sub_10000839C(&v431);
  sub_10000839C(&v434);
  sub_10000839C(&v437);
  Dependency.wrappedValue.getter();
  sub_100040738(v146, &v434);
  Dependency.wrappedValue.getter();
  Dependency.wrappedValue.getter();
  v159 = sub_10003E968(v428, v429);
  __chkstk_darwin(v159);
  v161 = (v344 - ((v160 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v162 + 16))(v161);
  v163 = *v161;
  v427 = &off_1003AB0B8;
  v164 = v386;
  v426 = v386;
  *&v425 = v163;
  v165 = swift_allocObject();
  v166 = sub_10003E968(&v425, v164);
  __chkstk_darwin(v166);
  v167 = (v344 - v374);
  v371(v344 - v374);
  v168 = *v167;
  v165[5] = v164;
  v165[6] = &off_1003AB0B8;
  v165[2] = v168;
  Dependency.init(dependencyId:config:)();
  Dependency.init(dependencyId:config:)();
  sub_10000839C(&v425);
  sub_10000839C(v428);
  v169 = sub_10003E968(&v437, v438);
  __chkstk_darwin(v169);
  v171 = (v344 - ((v170 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v172 + 16))(v171);
  v173 = sub_10003E968(&v434, v435);
  __chkstk_darwin(v173);
  v175 = (v344 - ((v174 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v176 + 16))(v175);
  v177 = sub_10003E968(&v431, v432);
  __chkstk_darwin(v177);
  v179 = v344 - ((v178 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v180 + 16))(v179);
  v181 = sub_10003F8F8(*v171, *v175, v179, v165);
  v374 = v181;
  sub_10000839C(&v431);
  sub_10000839C(&v434);
  sub_10000839C(&v437);
  sub_100005814(&qword_1003D9878, &qword_10033F008);
  v370 = type metadata accessor for CustodianCleanupController(0);
  v144[3] = v370;
  *v144 = v181;
  v182 = v407;
  v183 = v402;
  (v402)(v144, v401, v407);

  static DependencyRegistry.register<A>(_:entry:dependencyId:)();
  v184 = v182;
  v185 = v405;
  v405(v144, v184);
  sub_100005814(&qword_1003D9880, &unk_10033F010);
  v186 = type metadata accessor for RecoveryFactorsControllerFactory();
  v187 = swift_allocObject();
  v144[3] = v186;
  v144[4] = sub_1000405B8(&qword_1003D9888, type metadata accessor for RecoveryFactorsControllerFactory, &unk_100343BA4);
  *v144 = v187;
  v188 = v407;
  v183(v144, v390, v407);
  static DependencyRegistry.register<A>(_:entry:dependencyId:)();
  v185(v144, v188);
  v439 = &off_1003A4830;
  v189 = v370;
  v438 = v370;
  *&v437 = v374;
  v371 = type metadata accessor for DeclinedStatusHandler(0);
  v190 = swift_allocObject();
  v191 = sub_10003E968(&v437, v189);
  __chkstk_darwin(v191);
  v193 = (v344 - ((v192 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v194 + 16))(v193);
  v195 = *v193;
  v436 = &off_1003A4830;
  v435 = v189;
  *&v434 = v195;

  Dependency.init(dependencyId:config:)();
  v356 = sub_100005814(&unk_1003D9890, &unk_1003405D0);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&unk_1003DACD0, &unk_10033F020);
  Dependency.init(dependencyId:config:)();
  Dependency.init(dependencyId:config:)();
  Dependency.init(dependencyId:config:)();
  v373 = v190;
  sub_10003E950(&v434, v190 + 16);
  sub_10000839C(&v437);
  sub_100040738(v400, &v437);
  sub_100040738(v399, &v434);
  v196 = type metadata accessor for NotReachableStatusHandler(0);
  v197 = swift_allocObject();

  Dependency.init(dependencyId:config:)();
  Dependency.init(dependencyId:config:)();
  Dependency.init(dependencyId:config:)();
  Dependency.init(dependencyId:config:)();
  Dependency.init(dependencyId:config:)();
  v198 = sub_10003E968(&v437, v438);
  v370 = v344;
  __chkstk_darwin(v198);
  v200 = (v344 - ((v199 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v201 + 16))(v200);
  v202 = sub_10003E968(&v434, v435);
  v369 = v344;
  __chkstk_darwin(v202);
  v204 = (v344 - ((v203 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v205 + 16))(v204);
  v206 = *v200;
  v207 = *v204;
  v433 = &off_1003A4C78;
  v208 = v377;
  v432 = v377;
  *&v431 = v206;
  v430 = &off_1003B49F0;
  v209 = v385;
  v429 = v385;
  v428[0] = v207;
  v210 = type metadata accessor for AcceptedStatusHandler(0);
  v427 = &off_1003AA600;
  v426 = v210;
  *&v425 = v387;
  v424 = &off_1003AABB0;
  v423 = v371;
  *&v422 = v373;
  v421 = &off_1003AAC38;
  v420 = v196;
  *&v419 = v197;
  v211 = type metadata accessor for CustodianStatusUpdater(0);
  v212 = swift_allocObject();
  v213 = sub_10003E968(&v431, v208);
  v371 = v344;
  v354 = v372[8];
  __chkstk_darwin(v213);
  v355 = ((v214 + 15) & 0xFFFFFFFFFFFFFFF0);
  v215 = (v344 - v355);
  v375(v344 - v355);
  v216 = sub_10003E968(v428, v429);
  v372 = v344;
  __chkstk_darwin(v216);
  v218 = (v344 - ((v217 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v219 + 16))(v218);
  v220 = *v215;
  v221 = *v218;
  v418 = &off_1003A4C78;
  v417 = v208;
  *&v416 = v220;
  v415 = &off_1003B49F0;
  v414 = v209;
  *&v413 = v221;

  Dependency.init(dependencyId:config:)();
  Dependency.init(dependencyId:config:)();

  sub_10003E950(&v416, v212 + 16);
  sub_10003E950(&v413, v212 + 56);
  sub_10003E950(&v425, v212 + 96);
  sub_10003E950(&v422, v212 + 136);
  sub_10003E950(&v419, v212 + 176);
  sub_10000839C(v428);
  sub_10000839C(&v431);
  sub_10000839C(&v434);
  sub_10000839C(&v437);
  v222 = v398;
  v398[61] = v211;
  v222[62] = &off_1003AAAB0;
  v222[58] = v212;
  v223 = v222;
  sub_100005814(&unk_1003D98A0, &unk_10033FA20);
  v224 = sub_1000080F8(v223 + 58, v211);
  v225 = v397;
  v397[3] = v211;
  v226 = sub_10000DBEC(v225);
  (*(*(v211 - 8) + 16))(v226, v224, v211);
  v227 = v407;
  (v402)(v225, v401, v407);
  static DependencyRegistry.register<A>(_:entry:dependencyId:)();
  v405(v225, v227);
  v228 = v384;
  sub_100040738(v384, &v437);
  sub_100040738((v223 + 53), &v434);
  v229 = v399;
  sub_100040738(v399, &v431);
  sub_100040738((v223 + 69), v428);
  v230 = sub_10003E968(&v437, v438);
  __chkstk_darwin(v230);
  v232 = (v344 - ((v231 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v233 + 16))(v232);
  v234 = sub_10003E968(&v431, v432);
  __chkstk_darwin(v234);
  v236 = (v344 - ((v235 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v237 + 16))(v236);
  v238 = sub_10003E968(v428, v429);
  __chkstk_darwin(v238);
  v240 = (v344 - ((v239 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v241 + 16))(v240);
  v370 = sub_10003FD04(*v232, &v434, *v236, *v240);
  sub_10000839C(v428);
  sub_10000839C(&v431);
  sub_10000839C(&v437);
  v369 = type metadata accessor for DaemonInvitationResponseHandler(0);
  swift_allocObject();
  v385 = sub_1000DA9C4();
  sub_100040738(v228, &v437);
  sub_100040738(v229, &v434);
  v242 = sub_10003E968(&v437, v438);
  __chkstk_darwin(v242);
  v244 = (v344 - ((v243 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v245 + 16))(v244);
  v246 = sub_10003E968(&v434, v435);
  __chkstk_darwin(v246);
  v248 = (v344 - ((v247 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v249 + 16))(v248);
  v384 = sub_1000400BC(*v244, *v248);
  sub_10000839C(&v434);
  sub_10000839C(&v437);
  sub_10004035C(v382, &v437);
  v250 = type metadata accessor for DaemonSetupFinalizationHandler(0);
  swift_allocObject();
  v251 = sub_1000DCDD0(&v437);
  sub_100005814(&unk_1003D98B0, &unk_10033F790);
  v252 = v397;
  v397[3] = v250;
  v346 = v250;
  *v252 = v251;
  v253 = v252;
  v254 = v407;
  (v402)();
  v372 = v251;

  static DependencyRegistry.register<A>(_:entry:dependencyId:)();
  v405(v253, v254);
  sub_100040738(v229, &v437);
  sub_100040738(v400, &v434);
  v255 = sub_10003E968(&v437, v438);
  __chkstk_darwin(v255);
  v257 = (v344 - ((v256 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v258 + 16))(v257);
  v259 = sub_10003E968(&v434, v435);
  __chkstk_darwin(v259);
  v261 = (v344 - ((v260 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v262 + 16))(v261);
  v263 = sub_1000403CC(*v257, *v261, type metadata accessor for DaemonCustodianRemovedHandler, sub_10003ED24);
  v371 = v263;
  sub_10000839C(&v434);
  sub_10000839C(&v437);
  Dependency.wrappedValue.getter();
  v264 = sub_10003E968(&v437, v438);
  v353 = v344;
  __chkstk_darwin(v264);
  v266 = (v344 - ((v265 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v267 + 16))(v266);
  v268 = *v266;
  v436 = &off_1003AB0B8;
  v435 = v386;
  *&v434 = v268;
  v348 = type metadata accessor for DaemonInvitationHandler(0);
  v433 = &off_1003A8760;
  v432 = v348;
  *&v431 = v370;
  v430 = &off_1003A8950;
  v429 = v369;
  v428[0] = v385;
  v347 = type metadata accessor for DaemonShareHandler(0);
  v427 = &off_1003A8AE8;
  v426 = v347;
  *&v425 = v384;
  v424 = &off_1003A8A88;
  v423 = v250;
  *&v422 = v251;
  v345 = type metadata accessor for DaemonCustodianRemovedHandler(0);
  v421 = &off_1003A89D8;
  v420 = v345;
  *&v419 = v263;
  v350 = type metadata accessor for CustodianMessageProcessor(0);
  v269 = objc_allocWithZone(v350);
  v270 = sub_10003E968(&v434, v435);
  v352 = v344;
  __chkstk_darwin(v270);
  v272 = (v344 - ((v271 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v273 + 16))(v272);
  v274 = sub_10003E968(&v431, v432);
  v351 = v344;
  __chkstk_darwin(v274);
  v276 = (v344 - ((v275 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v277 + 16))(v276);
  v278 = sub_10003E968(v428, v429);
  v349 = v344;
  __chkstk_darwin(v278);
  v280 = (v344 - ((v279 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v281 + 16))(v280);
  v282 = sub_10003E968(&v425, v426);
  v344[3] = v344;
  __chkstk_darwin(v282);
  v284 = (v344 - ((v283 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v285 + 16))(v284);
  v286 = sub_10003E968(&v422, v423);
  v344[2] = v344;
  __chkstk_darwin(v286);
  v288 = (v344 - ((v287 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v289 + 16))(v288);
  v290 = sub_10003E968(&v419, v420);
  v344[1] = v344;
  __chkstk_darwin(v290);
  v292 = (v344 - ((v291 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v293 + 16))(v292);
  v294 = *v272;
  v295 = *v276;
  v296 = *v280;
  v297 = *v284;
  v298 = *v288;
  v299 = *v292;
  v418 = &off_1003AB0B8;
  v417 = v386;
  *&v416 = v294;
  v415 = &off_1003A8760;
  v414 = v348;
  *&v413 = v295;
  v412[4] = &off_1003A8950;
  v412[3] = v369;
  v412[0] = v296;
  v411[4] = &off_1003A8AE8;
  v411[3] = v347;
  v411[0] = v297;
  v410[4] = &off_1003A8A88;
  v410[3] = v346;
  v410[0] = v298;
  v409[4] = &off_1003A89D8;
  v409[3] = v345;
  v409[0] = v299;

  Dependency.init(dependencyId:config:)();
  sub_100040738(&v416, v269 + OBJC_IVAR____TtC13appleaccountd25CustodianMessageProcessor_accountStore);
  sub_100040738(&v413, v269 + OBJC_IVAR____TtC13appleaccountd25CustodianMessageProcessor_invitationHandler);
  sub_100040738(v412, v269 + OBJC_IVAR____TtC13appleaccountd25CustodianMessageProcessor_invitationResponseHandler);
  sub_100040738(v411, v269 + OBJC_IVAR____TtC13appleaccountd25CustodianMessageProcessor_shareHandler);
  sub_100040738(v410, v269 + OBJC_IVAR____TtC13appleaccountd25CustodianMessageProcessor_setupFinalizationHandler);
  sub_100040738(v409, v269 + OBJC_IVAR____TtC13appleaccountd25CustodianMessageProcessor_custodianRemovedHandler);
  v408.receiver = v269;
  v408.super_class = v350;
  v300 = objc_msgSendSuper2(&v408, "init");
  sub_10000839C(v409);
  sub_10000839C(v410);
  sub_10000839C(v411);
  sub_10000839C(v412);
  sub_10000839C(&v413);
  sub_10000839C(&v416);
  sub_10000839C(&v419);
  sub_10000839C(&v422);
  sub_10000839C(&v425);
  sub_10000839C(v428);
  sub_10000839C(&v431);
  sub_10000839C(&v434);
  sub_10000839C(&v437);
  v301 = v398;
  v398[63] = v300;
  Dependency.wrappedValue.getter();
  [v437 setCustodianDelegate:v301[63]];
  swift_unknownObjectRelease();
  sub_100040738(v400, &v437);
  v302 = sub_10003E968(&v437, v438);
  __chkstk_darwin(v302);
  v304 = (v344 - ((v303 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v305 + 16))(v304);
  v306 = *v304;
  v436 = &off_1003A4C78;
  v307 = v377;
  v435 = v377;
  *&v434 = v306;
  v308 = type metadata accessor for CustodianInvitationStatusChecker(0);
  v309 = swift_allocObject();
  v310 = sub_10003E968(&v434, v307);
  __chkstk_darwin(v310);
  v311 = (v344 - v355);
  v375(v344 - v355);
  v312 = *v311;
  v433 = &off_1003A4C78;
  v432 = v307;
  *&v431 = v312;
  Dependency.init(dependencyId:config:)();
  Dependency.init(dependencyId:config:)();
  sub_10003E950(&v431, v309 + 16);
  sub_10000839C(&v434);
  sub_10000839C(&v437);
  v301[67] = v308;
  v301[68] = &off_1003A8090;
  v301[64] = v309;
  sub_1000080F8(v301 + 64, v308);
  v313 = sub_1000C23E4();
  type metadata accessor for OSTransaction();
  swift_allocObject();
  v314 = sub_10030F0FC("com.apple.appleaccountd.custodian.invitationStatusCheck", 55, 2);
  sub_1000C28D0(v314, v313);

  sub_100005814(&qword_1003D9A30, &unk_10033F040);
  v315 = type metadata accessor for CustodianIdMSConfirmationHandlerFactory();
  v316 = swift_allocObject();
  v317 = v397;
  v397[3] = v315;
  v317[4] = sub_1000405B8(&unk_1003D98C0, type metadata accessor for CustodianIdMSConfirmationHandlerFactory, &unk_100343B04);
  *v317 = v316;
  v318 = v407;
  (v402)(v317, v390, v407);
  static DependencyRegistry.register<A>(_:entry:dependencyId:)();
  v405(v317, v318);
  sub_100005814(&unk_1003D9A50, qword_100343CC0);
  v319 = type metadata accessor for DaemonCustodianFetcher(0);
  v320 = swift_allocObject();
  Dependency.init(dependencyId:config:)();
  Dependency.init(dependencyId:config:)();
  Dependency.init(dependencyId:config:)();
  Dependency.init(dependencyId:config:)();
  Dependency.init(dependencyId:config:)();
  Dependency.init(dependencyId:config:)();
  sub_100005814(&unk_1003D98D0, &unk_10033F050);
  Dependency.init(dependencyId:config:)();
  Dependency.init(dependencyId:config:)();
  v317[3] = v319;
  *v317 = v320;
  v321 = v407;
  v322 = v402;
  (v402)(v317, v401, v407);
  static DependencyRegistry.register<A>(_:entry:dependencyId:)();
  v323 = v405;
  v405(v317, v321);
  sub_100005814(&qword_1003D9A60, &qword_10033F190);
  v324 = type metadata accessor for CustodianKeyRepairFactory();
  v325 = swift_allocObject();
  v317[3] = v324;
  v317[4] = sub_1000405B8(&unk_1003D98E0, type metadata accessor for CustodianKeyRepairFactory, &unk_100343C1C);
  *v317 = v325;
  v326 = v407;
  v322(v317, v390, v407);
  static DependencyRegistry.register<A>(_:entry:dependencyId:)();
  v327 = v326;
  v323(v317, v326);
  sub_100040738(v399, &v437);
  sub_100040738(v400, &v434);
  v328 = sub_10003E968(&v437, v438);
  __chkstk_darwin(v328);
  v330 = (v344 - ((v329 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v331 + 16))(v330);
  v332 = sub_10003E968(&v434, v435);
  __chkstk_darwin(v332);
  v334 = (v344 - ((v333 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v335 + 16))(v334);
  v336 = sub_1000403CC(*v330, *v334, type metadata accessor for CustodianManateeMigrator, sub_10003EEB0);
  sub_10000839C(&v434);
  sub_10000839C(&v437);
  v337 = type metadata accessor for CustodianManateeMigrator(0);
  v338 = v398;
  v398[51] = v337;
  v338[52] = &off_1003A82B8;
  v338[48] = v336;
  v339 = type metadata accessor for CustodianPreflightHealthCheck(0);
  swift_allocObject();
  v340 = sub_1000A9560();
  v439 = &off_1003A7598;
  v440 = &off_1003A7510;
  v438 = v339;
  *&v437 = v340;
  v341 = type metadata accessor for CustodianPreflightHealthCheckSequoiaB(0);
  v342 = swift_allocObject();

  Dependency.init(dependencyId:config:)();
  Dependency.init(dependencyId:config:)();
  sub_100040600(&v437, (v342 + 16));
  sub_100005814(&unk_1003D9A70, &unk_10033F060);
  v317[3] = v341;
  *v317 = v342;
  v322(v317, v401, v327);

  static DependencyRegistry.register<A>(_:entry:dependencyId:)();

  sub_100040618(v382);
  sub_100040680(&v441);
  (*(v368 + 8))(v381, v383);
  (*(v367 + 8))(v379, v380);
  (*(v366 + 8))(v391, v392);
  (*(v365 + 8))(v388, v389);
  (*(v364 + 8))(v395, v396);
  v405(v317, v327);
  return v338;
}

void *sub_10003E850()
{
  swift_unknownObjectRelease();
  sub_10000839C(v0 + 3);
  sub_10000839C(v0 + 8);
  sub_10000839C(v0 + 13);
  sub_10000839C(v0 + 18);
  sub_10000839C(v0 + 23);
  swift_unknownObjectRelease();
  sub_10000839C(v0 + 29);
  sub_10000839C(v0 + 34);
  sub_10000839C(v0 + 39);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  sub_10000839C(v0 + 48);
  sub_10000839C(v0 + 53);
  sub_10000839C(v0 + 58);
  swift_unknownObjectRelease();
  sub_10000839C(v0 + 64);
  sub_10000839C(v0 + 69);
  return v0;
}

uint64_t sub_10003E8F8()
{
  sub_10003E850();

  return swift_deallocClassInstance();
}

uint64_t sub_10003E950(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_10003E968(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

uint64_t sub_10003EA14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18[3] = type metadata accessor for CustodianStorageController();
  v18[4] = &off_1003A4C78;
  v18[0] = a1;
  v6 = type metadata accessor for DaemonFamilyRequester();
  v17[3] = v6;
  v17[4] = &off_1003B3A18;
  v17[0] = a2;
  sub_100040738(v18, a3 + OBJC_IVAR____TtC13appleaccountd22CustodianFamilyManager_custodianStorage);
  sub_100040738(v17, v16);
  v7 = sub_10003E968(v16, v16[3]);
  __chkstk_darwin(v7);
  v9 = (&v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v10 + 16))(v9);
  v11 = *v9;
  v14 = v6;
  v15 = &off_1003B3A18;
  *&v13 = v11;
  sub_100005814(&qword_1003D9AE0, &qword_10033E8A0);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&unk_1003DA2A0, &unk_10033BDA0);
  Dependency.init(dependencyId:config:)();
  sub_10000839C(v17);
  sub_10000839C(v18);
  sub_10003E950(&v13, a3 + 16);
  sub_10000839C(v16);
  return a3;
}

uint64_t sub_10003EBDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16 = type metadata accessor for DaemonCustodianMessenger();
  v17 = &off_1003A8FD8;
  *&v15 = a1;
  v13 = type metadata accessor for CustodianStorageController();
  v14 = &off_1003A4C78;
  *&v12 = a2;
  v10 = type metadata accessor for StorageController(0);
  v11 = &off_1003B49F0;
  *&v9 = a3;
  sub_100005814(&unk_1003DA2A0, &unk_10033BDA0);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&unk_1003D9890, &unk_1003405D0);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&qword_1003D9AE0, &qword_10033E8A0);
  Dependency.init(dependencyId:config:)();
  sub_10003E950(&v15, a4 + 16);
  sub_10003E950(&v12, a4 + 56);
  sub_10003E950(&v9, a4 + 96);
  return a4;
}

uint64_t sub_10003ED24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14 = type metadata accessor for StorageController(0);
  v15 = &off_1003B49F0;
  *&v13 = a1;
  v11 = type metadata accessor for CustodianStorageController();
  v12 = &off_1003A4C78;
  *&v10 = a2;
  type metadata accessor for CustodianMetadataController(0);
  v6 = swift_allocObject();
  sub_100005814(&unk_1003D98F0, &qword_10033E9C0);
  Dependency.init(dependencyId:config:)();
  v7 = OBJC_IVAR____TtC13appleaccountd27CustodianMetadataController_encoder;
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  *(v6 + v7) = JSONEncoder.init()();
  v8 = OBJC_IVAR____TtC13appleaccountd27CustodianMetadataController_decoder;
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  *(v6 + v8) = JSONDecoder.init()();
  *(a3 + 96) = v6;
  sub_100005814(&unk_1003DA2A0, &unk_10033BDA0);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&qword_1003D9AE0, &qword_10033E8A0);
  Dependency.init(dependencyId:config:)();
  sub_10003E950(&v13, a3 + 16);
  sub_10003E950(&v10, a3 + 56);
  return a3;
}

uint64_t sub_10003EEB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11[3] = type metadata accessor for StorageController(0);
  v11[4] = &off_1003B49F0;
  v11[0] = a1;
  v10[3] = type metadata accessor for CustodianStorageController();
  v10[4] = &off_1003A4C78;
  v10[0] = a2;
  sub_100005814(&unk_1003DA2A0, &unk_10033BDA0);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&qword_1003D9A60, &qword_10033F190);
  Dependency.init(dependencyId:config:)();
  v6 = OBJC_IVAR____TtC13appleaccountd24CustodianManateeMigrator_dispatchGroup;
  *(a3 + v6) = dispatch_group_create();
  v7 = OBJC_IVAR____TtC13appleaccountd24CustodianManateeMigrator_reportResultLock;
  v8 = swift_slowAlloc();
  *v8 = 0;
  *(a3 + v7) = v8;
  *(a3 + OBJC_IVAR____TtC13appleaccountd24CustodianManateeMigrator_numOfRecordsMigrated) = 0;
  sub_100040738(v11, a3 + 16);
  sub_100040738(v10, a3 + 56);
  *(a3 + OBJC_IVAR____TtC13appleaccountd24CustodianManateeMigrator_migrateErrors) = _swiftEmptyArrayStorage;
  sub_1000C55A8();
  if (qword_1003D7DE0 != -1)
  {
    swift_once();
  }

  [qword_1003DBF18 setMaxConcurrentOperationCount:{1, v10[0]}];
  sub_10000839C(v10);
  sub_10000839C(v11);
  return a3;
}

void *sub_10003F044(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for CustodianStorageController();
  v28[3] = v6;
  v28[4] = &off_1003A4C78;
  v28[0] = a1;
  v7 = type metadata accessor for CustodianIDMSRequestManager(0);
  v26 = v7;
  v27 = &off_1003AA430;
  v8 = sub_10000DBEC(v25);
  sub_1000406D4(a2, v8);
  v23 = sub_100016034(0, &qword_1003E0360, AAFollowUpController_ptr);
  v24 = &off_1003B1488;
  *&v22 = a3;
  type metadata accessor for CustodianRecoveryFollowUpController();
  v9 = swift_allocObject();
  v10 = sub_10003E968(v28, v6);
  __chkstk_darwin(v10);
  v12 = (&v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v13 + 16))(v12);
  v14 = sub_10003E968(v25, v26);
  __chkstk_darwin(v14);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v16);
  v18 = *v12;
  v9[5] = v6;
  v9[6] = &off_1003A4C78;
  v9[2] = v18;
  v9[10] = v7;
  v9[11] = &off_1003AA430;
  v19 = sub_10000DBEC(v9 + 7);
  sub_1000406D4(v16, v19);
  sub_10003E950(&v22, (v9 + 12));
  sub_10000839C(v25);
  sub_10000839C(v28);
  return v9;
}

uint64_t sub_10003F284(uint64_t a1, uint64_t a2)
{
  v19 = type metadata accessor for CustodianStorageController();
  v20 = &off_1003A4C78;
  v18[0] = a1;
  v16 = type metadata accessor for DaemonFamilyRequester();
  v17 = &off_1003B3A18;
  v15[0] = a2;
  type metadata accessor for CustodianFamilyManager(0);
  v4 = swift_allocObject();
  v5 = sub_10003E968(v18, v19);
  __chkstk_darwin(v5);
  v7 = (v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v8 + 16))(v7);
  v9 = sub_10003E968(v15, v16);
  __chkstk_darwin(v9);
  v11 = (v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v12 + 16))(v11);
  v13 = sub_10003EA14(*v7, *v11, v4);
  sub_10000839C(v15);
  sub_10000839C(v18);
  return v13;
}

uint64_t sub_10003F458(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StorageController(0);
  v27[3] = v4;
  v27[4] = &off_1003B49F0;
  v27[0] = a1;
  v5 = type metadata accessor for DaemonAccountStore();
  v25 = v5;
  v26 = &off_1003AB0B8;
  v24[0] = a2;
  type metadata accessor for CustodianAutoAcceptValidator();
  v6 = swift_allocObject();
  v7 = sub_10003E968(v27, v4);
  __chkstk_darwin(v7);
  v9 = (&v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v10 + 16))(v9);
  v11 = sub_10003E968(v24, v25);
  __chkstk_darwin(v11);
  v13 = (&v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v14 + 16))(v13);
  v15 = *v9;
  v16 = *v13;
  v22 = v4;
  v23 = &off_1003B49F0;
  v20 = &off_1003AB0B8;
  *&v21 = v15;
  v19 = v5;
  *&v18 = v16;
  sub_10003E950(&v21, v6 + 16);
  sub_10003E950(&v18, v6 + 56);
  sub_10000839C(v24);
  sub_10000839C(v27);
  return v6;
}

uint64_t sub_10003F65C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v29 = type metadata accessor for DaemonCustodianMessenger();
  v30 = &off_1003A8FD8;
  v28[0] = a1;
  v26 = type metadata accessor for CustodianStorageController();
  v27 = &off_1003A4C78;
  v25[0] = a2;
  v23 = type metadata accessor for StorageController(0);
  v24 = &off_1003B49F0;
  v22[0] = a3;
  type metadata accessor for AcceptedStatusHandler(0);
  v6 = swift_allocObject();
  v7 = sub_10003E968(v28, v29);
  __chkstk_darwin(v7);
  v9 = (&v22[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v10 + 16))(v9);
  v11 = sub_10003E968(v25, v26);
  __chkstk_darwin(v11);
  v13 = (&v22[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v14 + 16))(v13);
  v15 = sub_10003E968(v22, v23);
  __chkstk_darwin(v15);
  v17 = (&v22[-1] - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v18 + 16))(v17);
  v19 = sub_10003EBDC(*v9, *v13, *v17, v6);
  sub_10000839C(v22);
  sub_10000839C(v25);
  sub_10000839C(v28);
  return v19;
}

void *sub_10003F8F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for DaemonAccountStore();
  v45[3] = v8;
  v45[4] = &off_1003AB0B8;
  v45[0] = a1;
  v9 = type metadata accessor for CustodianStorageController();
  v43 = v9;
  v44 = &off_1003A4C78;
  v42[0] = a2;
  v10 = type metadata accessor for CustodianIDMSRequestManager(0);
  v40 = v10;
  v41 = &off_1003AA430;
  v11 = sub_10000DBEC(v39);
  sub_1000406D4(a3, v11);
  v12 = type metadata accessor for DaemonSecurityController(0);
  v37 = v12;
  v38 = &off_1003A49D8;
  v36[0] = a4;
  type metadata accessor for CustodianCleanupController(0);
  v13 = swift_allocObject();
  v14 = sub_10003E968(v45, v8);
  __chkstk_darwin(v14);
  v16 = (&v36[-1] - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v17 + 16))(v16);
  v18 = sub_10003E968(v42, v43);
  __chkstk_darwin(v18);
  v20 = (&v36[-1] - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v21 + 16))(v20);
  v22 = sub_10003E968(v39, v40);
  __chkstk_darwin(v22);
  v24 = &v36[-1] - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v25 + 16))(v24);
  v26 = sub_10003E968(v36, v37);
  __chkstk_darwin(v26);
  v28 = (&v36[-1] - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v29 + 16))(v28);
  v30 = *v16;
  v31 = *v20;
  v32 = *v28;
  v13[5] = v8;
  v13[6] = &off_1003AB0B8;
  v13[2] = v30;
  v13[10] = v9;
  v13[11] = &off_1003A4C78;
  v13[7] = v31;
  v13[15] = v10;
  v13[16] = &off_1003AA430;
  v33 = sub_10000DBEC(v13 + 12);
  sub_1000406D4(v24, v33);
  v13[20] = v12;
  v13[21] = &off_1003A49D8;
  v13[17] = v32;
  sub_100005814(&qword_1003D9AE0, &qword_10033E8A0);
  Dependency.init(dependencyId:config:)();
  sub_10000839C(v36);
  sub_10000839C(v39);
  sub_10000839C(v42);
  sub_10000839C(v45);
  return v13;
}

uint64_t sub_10003FD04(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v27 = a2;
  v7 = type metadata accessor for DaemonCustodianMessenger();
  v43[3] = v7;
  v43[4] = &off_1003A8FD8;
  v43[0] = a1;
  v8 = type metadata accessor for StorageController(0);
  v41 = v8;
  v42 = &off_1003B49F0;
  v40[0] = a3;
  v9 = type metadata accessor for CustodianAutoAcceptValidator();
  v38 = v9;
  v39 = &off_1003A5440;
  v37[0] = a4;
  type metadata accessor for DaemonInvitationHandler(0);
  v10 = swift_allocObject();
  v11 = sub_10003E968(v43, v7);
  __chkstk_darwin(v11);
  v13 = (&v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v14 + 16))(v13);
  v15 = sub_10003E968(v40, v41);
  __chkstk_darwin(v15);
  v17 = (&v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v18 + 16))(v17);
  v19 = sub_10003E968(v37, v38);
  __chkstk_darwin(v19);
  v21 = (&v27 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v22 + 16))(v21);
  v23 = *v13;
  v24 = *v17;
  v25 = *v21;
  v35 = v7;
  v36 = &off_1003A8FD8;
  v33 = &off_1003B49F0;
  *&v34 = v23;
  v32 = v8;
  *&v31 = v24;
  v30 = &off_1003A5440;
  v29 = v9;
  *&v28 = v25;
  sub_100005814(&unk_1003D9810, &unk_10033EFC0);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&qword_1003D9AE0, &qword_10033E8A0);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&unk_1003DA2A0, &unk_10033BDA0);
  Dependency.init(dependencyId:config:)();
  sub_10003E950(&v34, v10 + 16);
  sub_10003E950(v27, v10 + 56);
  sub_10003E950(&v31, v10 + 96);
  sub_10003E950(&v28, v10 + 136);
  sub_10000839C(v37);
  sub_10000839C(v40);
  sub_10000839C(v43);
  return v10;
}

uint64_t sub_1000400BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DaemonCustodianMessenger();
  v27[3] = v4;
  v27[4] = &off_1003A8FD8;
  v27[0] = a1;
  v5 = type metadata accessor for StorageController(0);
  v25 = v5;
  v26 = &off_1003B49F0;
  v24[0] = a2;
  type metadata accessor for DaemonShareHandler(0);
  v6 = swift_allocObject();
  v7 = sub_10003E968(v27, v4);
  __chkstk_darwin(v7);
  v9 = (&v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v10 + 16))(v9);
  v11 = sub_10003E968(v24, v25);
  __chkstk_darwin(v11);
  v13 = (&v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v14 + 16))(v13);
  v15 = *v9;
  v16 = *v13;
  v22 = v4;
  v23 = &off_1003A8FD8;
  v20 = &off_1003B49F0;
  *&v21 = v15;
  v19 = v5;
  *&v18 = v16;
  sub_100005814(&unk_1003D9840, &unk_10033EFE0);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&unk_1003DA2A0, &unk_10033BDA0);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&qword_1003D9AE0, &qword_10033E8A0);
  Dependency.init(dependencyId:config:)();
  sub_10003E950(&v21, v6 + 16);
  sub_10003E950(&v18, v6 + 56);
  sub_10000839C(v24);
  sub_10000839C(v27);
  return v6;
}

uint64_t sub_10004035C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005814(&qword_1003DCB30, &unk_10033F030);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000403CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void, void, uint64_t))
{
  v23 = type metadata accessor for StorageController(0);
  v24 = &off_1003B49F0;
  v22[0] = a1;
  v20 = type metadata accessor for CustodianStorageController();
  v21 = &off_1003A4C78;
  v19[0] = a2;
  a3(0);
  v8 = swift_allocObject();
  v9 = sub_10003E968(v22, v23);
  __chkstk_darwin(v9);
  v11 = (v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v12 + 16))(v11);
  v13 = sub_10003E968(v19, v20);
  __chkstk_darwin(v13);
  v15 = (v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v16 + 16))(v15);
  v17 = a4(*v11, *v15, v8);
  sub_10000839C(v19);
  sub_10000839C(v22);
  return v17;
}

uint64_t sub_1000405B8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

_OWORD *sub_100040600(__int128 *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a1[2];
  a2[1] = a1[1];
  a2[2] = v3;
  *a2 = v2;
  return a2;
}

uint64_t sub_100040618(uint64_t a1)
{
  v2 = sub_100005814(&qword_1003DCB30, &unk_10033F030);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000406D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CustodianIDMSRequestManager(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100040738(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1000407A0(uint64_t a1, void *a2, void *a3, void (*a4)(char *, void *), uint64_t a5, uint64_t a6)
{
  v10 = sub_100005814(&qword_1003D8B60, &unk_10033F210);
  __chkstk_darwin(v10 - 8);
  v12 = &v31 - v11;
  if (a2)
  {
    v36[0] = a2;
    swift_errorRetain();
    swift_errorRetain();
    sub_100005814(&unk_1003DBB60, &unk_10033E740);
    type metadata accessor for AACustodianError(0);
    if (swift_dynamicCast())
    {
      v13 = v35;
      v36[0] = v35;
      v34 = -7014;
      sub_100212324(_swiftEmptyArrayStorage);
      sub_1000527BC(&qword_1003D8140, type metadata accessor for AACustodianError, &unk_10033DF94);
      _BridgedStoredNSError.init(_:userInfo:)();
      v14 = v35;
      v34 = v35;
      v15 = static _BridgedStoredNSError.== infix(_:_:)();

      if (v15)
      {
        if (qword_1003D7F38 != -1)
        {
          swift_once();
        }

        v16 = type metadata accessor for Logger();
        sub_100008D04(v16, qword_1003FAA88);
        v17 = a3;
        v18 = Logger.logObject.getter();
        v19 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v18, v19))
        {
          v20 = swift_slowAlloc();
          v33 = swift_slowAlloc();
          v36[0] = v33;
          *v20 = 136315138;
          v21 = [v17 handle];
          v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v32 = v13;
          v23 = v22;
          v25 = v24;

          v26 = sub_10021145C(v23, v25, v36);

          *(v20 + 4) = v26;
          _os_log_impl(&_mh_execute_header, v18, v19, "Custodianship already exists with handle %s. Abandoning custodian setup.", v20, 0xCu);
          sub_10000839C(v33);

          goto LABEL_13;
        }
      }
    }

LABEL_13:
    v30 = type metadata accessor for UUID();
    (*(*(v30 - 8) + 56))(v12, 1, 1, v30);
    swift_errorRetain();
    a4(v12, a2);

    return sub_100008D3C(v12, &qword_1003D8B60, &unk_10033F210);
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1000415AC(a3, a4, a5);
  }

  v28 = type metadata accessor for UUID();
  (*(*(v28 - 8) + 56))(v12, 1, 1, v28);
  type metadata accessor for AACustodianError(0);
  v34 = -7022;
  sub_100212324(_swiftEmptyArrayStorage);
  sub_1000527BC(&qword_1003D8140, type metadata accessor for AACustodianError, &unk_10033DF94);
  _BridgedStoredNSError.init(_:userInfo:)();
  v29 = v35;
  a4(v12, v35);

  return sub_100008D3C(v12, &qword_1003D8B60, &unk_10033F210);
}

void sub_100040C38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100005814(&qword_1003D8B60, &unk_10033F210);
  __chkstk_darwin(v6 - 8);
  v8 = &v13 - v7;
  sub_100012D04(a1, &v13 - v7, &qword_1003D8B60, &unk_10033F210);
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  isa = 0;
  if ((*(v10 + 48))(v8, 1, v9) != 1)
  {
    isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(v10 + 8))(v8, v9);
  }

  if (a2)
  {
    v12 = _convertErrorToNSError(_:)();
  }

  else
  {
    v12 = 0;
  }

  (*(a3 + 16))(a3, isa, v12);
}

uint64_t sub_100040D94(void *a1, uint64_t a2, uint64_t a3)
{
  v25 = a2;
  v27 = sub_100005814(&qword_1003D9110, &qword_10033EC10);
  v6 = *(v27 - 8);
  __chkstk_darwin(v27);
  v8 = &v25 - v7;
  v26 = type metadata accessor for URL();
  v9 = *(v26 - 8);
  v10 = __chkstk_darwin(v26);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v25 - v13;
  sub_100005814(&qword_1003DA128, &unk_10033F280);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_10033F070;
  *(v15 + 32) = xmmword_10033F080;
  *(v15 + 48) = 3;
  v16 = sub_1000080F8((v3 + 144), *(v3 + 168));
  v17 = swift_allocObject();
  v17[2] = a1;
  v17[3] = v15;
  v17[4] = v25;
  v17[5] = a3;
  v18 = sub_1000080F8((*v16 + 16), *(*v16 + 40));
  type metadata accessor for LocalCache();
  v19 = a1;

  sub_100307F40();
  URL.appendingPathComponent(_:isDirectory:)();
  v20 = *(v9 + 8);
  v21 = v12;
  v22 = v26;
  v20(v21, v26);
  v23 = v27;
  (*(v6 + 16))(v8, *v18 + OBJC_IVAR____TtC13appleaccountd17StorageController__localStorage, v27);
  Dependency.wrappedValue.getter();
  (*(v6 + 8))(v8, v23);
  sub_1000080F8(v28, v28[3]);
  sub_1000324D8(v14, sub_100054144, v17);

  v20(v14, v22);
  return sub_10000839C(v28);
}

uint64_t sub_10004109C(uint64_t a1, char a2, void *a3, uint64_t a4, void (*a5)(char *, uint64_t))
{
  v52 = a3;
  v9 = sub_100005814(&qword_1003D8B60, &unk_10033F210);
  v10 = __chkstk_darwin(v9 - 8);
  v12 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v51 = &v45 - v13;
  v14 = type metadata accessor for CustodianRecord(0);
  __chkstk_darwin(v14);
  v17 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_100008D04(v18, qword_1003FAA88);
    swift_errorRetain();
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();
    sub_1000399DC(a1, 1);
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *v21 = 138412290;
      v23 = _convertErrorToNSError(_:)();
      *(v21 + 4) = v23;
      *v22 = v23;
      _os_log_impl(&_mh_execute_header, v19, v20, "Failed to fetch custodians with error %@.", v21, 0xCu);
      sub_100008D3C(v22, &unk_1003D9140, &qword_10033E640);
    }

    v24 = type metadata accessor for UUID();
    (*(*(v24 - 8) + 56))(v12, 1, 1, v24);
    a5(v12, a1);
    return sub_100008D3C(v12, &qword_1003D8B60, &unk_10033F210);
  }

  v50 = *(a1 + 16);
  if (!v50)
  {
    v41 = 0;
    goto LABEL_23;
  }

  v45 = a5;
  v25 = 0;
  v26 = &v17[*(v14 + 24)];
  v27 = a1 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
  v28 = *(v15 + 72);
  v48 = v26;
  v49 = (a4 + 32);
  v29 = &unk_1003D3000;
  v46 = v28;
  v47 = v27;
  do
  {
    sub_10005AA4C(v27 + v28 * v25, v17, type metadata accessor for CustodianRecord);
    v30 = *v26;
    v31 = *(v26 + 1);
    v32 = [v52 v29[311]];
    v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v35 = v34;

    if (v30 == v33 && v31 == v35)
    {
    }

    else
    {
      v37 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v37 & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v38 = *(a4 + 16);
    v39 = v49;
    while (v38)
    {
      v40 = *v39++;
      --v38;
      if (v40 == *&v17[*(v14 + 36)])
      {
        sub_10005AD7C(v17, type metadata accessor for CustodianRecord);
        v41 = 1;
        goto LABEL_21;
      }
    }

LABEL_9:
    ++v25;
    sub_10005AD7C(v17, type metadata accessor for CustodianRecord);
    v27 = v47;
    v26 = v48;
    v28 = v46;
    v29 = &unk_1003D3000;
  }

  while (v25 != v50);
  v41 = 0;
LABEL_21:
  a5 = v45;
LABEL_23:
  v42 = type metadata accessor for UUID();
  v12 = v51;
  (*(*(v42 - 8) + 56))(v51, 1, 1, v42);
  v43 = 0;
  if (v41)
  {
    type metadata accessor for AACustodianError(0);
    v53 = -7014;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_1000527BC(&qword_1003D8140, type metadata accessor for AACustodianError, &unk_10033DF94);
    _BridgedStoredNSError.init(_:userInfo:)();
    v43 = v54;
  }

  a5(v12, v43);

  return sub_100008D3C(v12, &qword_1003D8B60, &unk_10033F210);
}

uint64_t sub_1000415AC(void *a1, void (*a2)(char *, void *), uint64_t a3)
{
  v4 = v3;
  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100008D04(v8, qword_1003FAA88);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "[CustodianDaemonService buildRecords] was called.", v11, 2u);
  }

  v12 = *sub_1000080F8((v4 + 16), *(v4 + 40));
  v29 = type metadata accessor for CustodianDaemonContainer();
  v30 = &off_1003A54A0;
  v28[0] = v12;
  v13 = type metadata accessor for CustodianshipRecordBuilder(0);
  v14 = swift_allocObject();
  v15 = sub_10003E968(v28, v29);
  __chkstk_darwin(v15);
  v17 = (&v28[-1] - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v18 + 16))(v17);
  v19 = *v17;

  v20 = a1;
  v21 = sub_100053E08(v20, v19, v14);

  sub_10000839C(v28);
  v29 = v13;
  v30 = &off_1003AA488;
  v28[0] = v21;
  v22 = sub_1000080F8(v28, v13);
  v23 = swift_allocObject();
  swift_weakInit();
  v24 = *v22;
  v25 = v20;

  sub_10011FDD0(v24, v23, a2, a3, v25);

  return sub_10000839C(v28);
}

uint64_t sub_100041854(uint64_t a1, uint64_t a2, void (*a3)(char *, void *), uint64_t a4, void *a5)
{
  v9 = sub_100005814(&qword_1003D8B60, &unk_10033F210);
  __chkstk_darwin(v9 - 8);
  v11 = v31 - v10;
  v12 = type metadata accessor for CustodianshipRecords(0);
  __chkstk_darwin(v12 - 8);
  v14 = v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100005814(&unk_1003D91C0, &unk_10033FA50);
  __chkstk_darwin(v15);
  v17 = (v31 - v16);
  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    sub_100008D04(v24, qword_1003FAA88);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&_mh_execute_header, v25, v26, "Self is nil. Failed to build custodianship record. Abandoning custodian setup.", v27, 2u);
    }

    v28 = type metadata accessor for UUID();
    (*(*(v28 - 8) + 56))(v11, 1, 1, v28);
    type metadata accessor for AACustodianError(0);
    v31[1] = -7022;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_1000527BC(&qword_1003D8140, type metadata accessor for AACustodianError, &unk_10033DF94);
    _BridgedStoredNSError.init(_:userInfo:)();
    v29 = v32;
    a3(v11, v32);

    return sub_100008D3C(v11, &qword_1003D8B60, &unk_10033F210);
  }

  sub_100012D04(a1, v17, &unk_1003D91C0, &unk_10033FA50);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = *v17;
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_100008D04(v19, qword_1003FAA88);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v20, v21, "Failed to build custodianship record. Abandoning custodian setup.", v22, 2u);
    }

    v23 = type metadata accessor for UUID();
    (*(*(v23 - 8) + 56))(v11, 1, 1, v23);
    swift_errorRetain();
    a3(v11, v18);

    return sub_100008D3C(v11, &qword_1003D8B60, &unk_10033F210);
  }

  sub_10005ABD0(v17, v14, type metadata accessor for CustodianshipRecords);
  sub_100041D0C(a5, v14, a3, a4);

  return sub_10005AD7C(v14, type metadata accessor for CustodianshipRecords);
}

uint64_t sub_100041D0C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v56 = a4;
  v53 = a3;
  v49 = a2;
  v7 = sub_100005814(&qword_1003DABF0, &qword_10033F8A0);
  __chkstk_darwin(v7 - 8);
  v55 = &v46 - v8;
  v9 = type metadata accessor for CustodianshipRecords(0);
  v51 = *(v9 - 8);
  v10 = *(v51 + 64);
  v11 = __chkstk_darwin(v9 - 8);
  v54 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v52 = &v46 - v12;
  v13 = kAAAnalyticsEventCustodianSetupOwnerStoredCustodianRecordToCloud;
  v14 = [a1 altDSID];
  if (v14)
  {
    v15 = v14;
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;
  }

  else
  {
    v16 = 0;
    v18 = 0;
  }

  v19 = [a1 telemetryFlowID];
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

  sub_100016034(0, &qword_1003D8B40, AAFAnalyticsEvent_ptr);
  v50 = sub_100245D38(v13, v16, v18, v21, v23);
  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v57 = a1;
  v24 = type metadata accessor for Logger();
  sub_100008D04(v24, qword_1003FAA88);
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&_mh_execute_header, v25, v26, "Saving freshly built records.", v27, 2u);
  }

  v47 = sub_1000080F8((v5 + 144), *(v5 + 168));
  v28 = swift_allocObject();
  v48 = v28;
  swift_weakInit();
  v29 = v49;
  v30 = v52;
  sub_10005AA4C(v49, v52, type metadata accessor for CustodianshipRecords);
  v31 = *(v51 + 80);
  v32 = (v31 + 32) & ~v31;
  v33 = v10 + 7;
  v34 = (v10 + 7 + v32) & 0xFFFFFFFFFFFFFFF8;
  v35 = swift_allocObject();
  *(v35 + 16) = v50;
  *(v35 + 24) = v28;
  sub_10005ABD0(v30, v35 + v32, type metadata accessor for CustodianshipRecords);
  *(v35 + v34) = v57;
  v36 = (v35 + ((v34 + 15) & 0xFFFFFFFFFFFFFFF8));
  v37 = v56;
  *v36 = v53;
  v36[1] = v37;
  v53 = *v47;
  v38 = type metadata accessor for TaskPriority();
  v39 = v55;
  (*(*(v38 - 8) + 56))(v55, 1, 1, v38);
  v40 = v54;
  sub_10005AA4C(v29, v54, type metadata accessor for CustodianshipRecords);
  v41 = (v31 + 40) & ~v31;
  v42 = swift_allocObject();
  v42[2] = 0;
  v42[3] = 0;
  v42[4] = v53;
  sub_10005ABD0(v40, v42 + v41, type metadata accessor for CustodianshipRecords);
  v43 = (v42 + ((v33 + v41) & 0xFFFFFFFFFFFFFFF8));
  *v43 = sub_100052C60;
  v43[1] = v35;

  v44 = v57;

  sub_1000BCD5C(0, 0, v39, &unk_10033F240, v42);
}

uint64_t sub_1000421D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void (*a6)(char *, uint64_t), void (*a7)(char *, uint64_t))
{
  v65 = a6;
  v66 = a7;
  v58 = a4;
  v59 = a5;
  v9 = sub_100005814(&qword_1003D8B60, &unk_10033F210);
  __chkstk_darwin(v9 - 8);
  v63 = &v57 - v10;
  v11 = sub_100005814(&qword_1003DABF0, &qword_10033F8A0);
  __chkstk_darwin(v11 - 8);
  v62 = &v57 - v12;
  v13 = type metadata accessor for CustodianRecord(0);
  v60 = *(v13 - 8);
  v14 = __chkstk_darwin(v13 - 8);
  v61 = &v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = v15;
  __chkstk_darwin(v14);
  v64 = &v57 - v16;
  v17 = sub_100005814(&unk_1003D91C0, &unk_10033FA50);
  __chkstk_darwin(v17);
  v19 = (&v57 - v18);
  v20 = sub_100005814(&unk_1003D8B50, &unk_10033F600);
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = &v57 - v22;
  if (a2)
  {
    sub_1000D2734(a1);
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    (*(v21 + 16))(v23, Strong + OBJC_IVAR____TtC13appleaccountd22CustodianDaemonService__analyticsRTCReporter, v20);
    Dependency.wrappedValue.getter();

    (*(v21 + 8))(v23, v20);
    swift_getObjectType();
    sub_100246FA8(a2);
    swift_unknownObjectRelease();
  }

  sub_100012D04(a1, v19, &unk_1003D91C0, &unk_10033FA50);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v25 = *v19;
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    sub_100008D04(v26, qword_1003FAA88);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, v27, v28, "Failed to save custodianship records. Abandoning custodian setup.", v29, 2u);
    }

    v30 = type metadata accessor for UUID();
    v31 = v63;
    (*(*(v30 - 8) + 56))(v63, 1, 1, v30);
    swift_errorRetain();
    v65(v31, v25);

    v32 = &qword_1003D8B60;
    v33 = &unk_10033F210;
    v34 = v31;
  }

  else
  {
    swift_beginAccess();
    v35 = swift_weakLoadStrong();
    if (v35)
    {
      v36 = v35;
      sub_10005AA4C(v58, v64, type metadata accessor for CustodianRecord);
      v37 = v59;
      v38 = [v59 altDSID];
      if (v38)
      {
        v39 = v38;
        v63 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v58 = v40;
      }

      else
      {
        v63 = 0;
        v58 = 0;
      }

      v41 = [v37 telemetryFlowID];
      if (v41)
      {
        v42 = v41;
        v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v45 = v44;
      }

      else
      {
        v43 = 0;
        v45 = 0;
      }

      v46 = type metadata accessor for TaskPriority();
      v47 = v62;
      (*(*(v46 - 8) + 56))(v62, 1, 1, v46);
      v48 = v64;
      v49 = v61;
      sub_10005AA4C(v64, v61, type metadata accessor for CustodianRecord);
      v50 = (*(v60 + 80) + 80) & ~*(v60 + 80);
      v51 = (v57 + v50 + 7) & 0xFFFFFFFFFFFFFFF8;
      v52 = swift_allocObject();
      *(v52 + 16) = 0;
      *(v52 + 24) = 0;
      *(v52 + 32) = v36;
      *(v52 + 40) = 1;
      v53 = v58;
      *(v52 + 48) = v63;
      *(v52 + 56) = v53;
      *(v52 + 64) = v43;
      *(v52 + 72) = v45;
      sub_10005ABD0(v49, v52 + v50, type metadata accessor for CustodianRecord);
      v54 = (v52 + v51);
      v55 = v66;
      *v54 = v65;
      v54[1] = v55;

      sub_1000BCD5C(0, 0, v47, &unk_10033F258, v52);

      sub_10005AD7C(v48, type metadata accessor for CustodianRecord);
    }

    v32 = &unk_1003D91C0;
    v33 = &unk_10033FA50;
    v34 = v19;
  }

  return sub_100008D3C(v34, v32, v33);
}

uint64_t sub_100042884(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 80) = v13;
  *(v8 + 88) = v14;
  *(v8 + 64) = v12;
  *(v8 + 48) = a7;
  *(v8 + 56) = a8;
  *(v8 + 200) = a5;
  *(v8 + 32) = a4;
  *(v8 + 40) = a6;
  sub_100005814(&qword_1003D8B60, &unk_10033F210);
  *(v8 + 96) = swift_task_alloc();
  v9 = sub_100005814(&unk_1003D8B50, &unk_10033F600);
  *(v8 + 104) = v9;
  *(v8 + 112) = *(v9 - 8);
  *(v8 + 120) = swift_task_alloc();

  return _swift_task_switch(sub_1000429A4, 0, 0);
}

uint64_t sub_1000429A4()
{
  v2 = *(v0 + 112);
  v1 = *(v0 + 120);
  v3 = *(v0 + 104);
  v4 = *(v0 + 64);
  v20 = *(v0 + 72);
  v5 = *(v0 + 48);
  v6 = *(v0 + 56);
  v7 = *(v0 + 200);
  v8 = *(v0 + 32);
  v9 = *(v0 + 40);
  (*(v2 + 16))(v1, v8 + OBJC_IVAR____TtC13appleaccountd22CustodianDaemonService__analyticsRTCReporter, v3);
  Dependency.wrappedValue.getter();
  (*(v2 + 8))(v1, v3);
  v10 = *(v0 + 16);
  *(v0 + 128) = v10;
  v11 = swift_allocObject();
  *(v0 + 136) = v11;
  *(v11 + 16) = v7;
  *(v11 + 24) = v9;
  *(v11 + 32) = v5;
  *(v11 + 40) = v6;
  *(v11 + 48) = v4;
  v12 = swift_task_alloc();
  *(v0 + 144) = v12;
  *(v12 + 16) = v8;
  *(v12 + 24) = v20;
  v13 = type metadata accessor for ExponentialRetryScheduler();

  v14 = ExponentialRetryScheduler.__allocating_init(maxRetries:)();
  *(v0 + 152) = v14;
  v15 = swift_allocObject();
  *(v0 + 160) = v15;
  *(v15 + 16) = 0;
  *(v0 + 24) = v14;
  v16 = swift_task_alloc();
  *(v0 + 168) = v16;
  v16[2] = v15;
  v16[3] = sub_1000533A4;
  v16[4] = v11;
  v16[5] = 0;
  v16[6] = 0;
  v16[7] = &unk_10033F268;
  v16[8] = v12;
  v16[9] = v10;
  v16[10] = 1;
  v17 = swift_allocObject();
  *(v0 + 176) = v17;
  *(v17 + 16) = 0;
  *(v17 + 24) = 0;
  v18 = swift_task_alloc();
  *(v0 + 184) = v18;
  *v18 = v0;
  v18[1] = sub_100042C0C;

  return RetryScheduler.schedule<A>(_:shouldRetry:)(v18, &unk_10033F270, v16, sub_10005B8F4, v17, v13, &type metadata for () + 8, &protocol witness table for ExponentialRetryScheduler);
}

uint64_t sub_100042C0C()
{
  *(*v1 + 192) = v0;

  if (v0)
  {
    v2 = sub_100042E8C;
  }

  else
  {

    v2 = sub_100042D30;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100042D30()
{
  v1 = v0[19];
  v2 = v0[12];
  v4 = v0[9];
  v3 = v0[10];

  v5 = *(type metadata accessor for CustodianRecord(0) + 20);
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  (*(v7 + 16))(v2, v4 + v5, v6);
  (*(v7 + 56))(v2, 0, 1, v6);
  v3(v2, 0);
  v8 = v0[12];

  swift_unknownObjectRelease();
  sub_100008D3C(v8, &qword_1003D8B60, &unk_10033F210);

  v9 = v0[1];

  return v9();
}

uint64_t sub_100042E8C()
{
  v1 = v0[24];
  v2 = v0[19];
  v3 = v0[12];
  v4 = v0[10];

  v5 = type metadata accessor for UUID();
  (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
  v4(v3, v1);

  v6 = v0[12];

  swift_unknownObjectRelease();
  sub_100008D3C(v6, &qword_1003D8B60, &unk_10033F210);

  v7 = v0[1];

  return v7();
}

id sub_100042FC8(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if ((a1 & 1) == 0)
  {
    return 0;
  }

  sub_100016034(0, &qword_1003D8B40, AAFAnalyticsEvent_ptr);
  v9 = kAAAnalyticsEventCustodianSetupSendInvitation;

  v10 = v9;

  return sub_100245D38(v10, a2, a3, a4, a5);
}

uint64_t sub_100043074(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = a3;
  return _swift_task_switch(sub_100043094, 0, 0);
}

uint64_t sub_100043094()
{
  sub_1000080F8((v0[2] + 104), *(v0[2] + 128));
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_100043144;
  v2 = v0[3];

  return sub_1000E9388(v2, 1, 0);
}

uint64_t sub_100043144()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void sub_100043238(uint64_t a1, char a2, uint64_t a3, void (*a4)(uint64_t), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v56 = a7;
  v57 = a8;
  v58 = a6;
  v61 = a5;
  v62 = a4;
  v11 = sub_100005814(&qword_1003DABF0, &qword_10033F8A0);
  __chkstk_darwin(v11 - 8);
  v55 = &v54 - v12;
  v13 = type metadata accessor for UUID();
  v14 = *(v13 - 8);
  v59 = v13;
  v60 = v14;
  __chkstk_darwin(v13);
  v16 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100005814(&unk_1003DF000, &unk_10033EC50);
  __chkstk_darwin(v17 - 8);
  v19 = &v54 - v18;
  v20 = type metadata accessor for CustodianRecord(0);
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v23 = __chkstk_darwin(v20);
  v24 = &v54 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v23);
  v27 = &v54 - v26;
  if (a2)
  {
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    sub_100008D04(v28, qword_1003FAA88);
    swift_errorRetain();
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();
    sub_1000399DC(a1, 1);
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      *v31 = 138412290;
      v33 = _convertErrorToNSError(_:)();
      *(v31 + 4) = v33;
      *v32 = v33;
      _os_log_impl(&_mh_execute_header, v29, v30, "Error fetching custodian record for resending invitation: %@", v31, 0xCu);
      sub_100008D3C(v32, &unk_1003D9140, &qword_10033E640);
    }

    v62(a1);
  }

  else
  {
    __chkstk_darwin(v25);
    v54 = a3;
    *(&v54 - 2) = a3;
    sub_100213F34(sub_10005B3E4, a1, v19);
    if ((*(v21 + 48))(v19, 1, v20) == 1)
    {
      sub_100008D3C(v19, &unk_1003DF000, &unk_10033EC50);
      if (qword_1003D7F38 != -1)
      {
        swift_once();
      }

      v34 = type metadata accessor for Logger();
      sub_100008D04(v34, qword_1003FAA88);
      v35 = v59;
      v36 = v60;
      (*(v60 + 16))(v16, v54, v59);
      v37 = Logger.logObject.getter();
      v38 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        v63[0] = v40;
        *v39 = 136315138;
        sub_1000527BC(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v41 = dispatch thunk of CustomStringConvertible.description.getter();
        v43 = v42;
        (*(v36 + 8))(v16, v35);
        v44 = sub_10021145C(v41, v43, v63);

        *(v39 + 4) = v44;
        _os_log_impl(&_mh_execute_header, v37, v38, "Unable to find custodian with id: %s", v39, 0xCu);
        sub_10000839C(v40);
      }

      else
      {

        (*(v36 + 8))(v16, v35);
      }

      type metadata accessor for AACustodianError(0);
      v63[3] = -7003;
      sub_100212324(_swiftEmptyArrayStorage);
      sub_1000527BC(&qword_1003D8140, type metadata accessor for AACustodianError, &unk_10033DF94);
      _BridgedStoredNSError.init(_:userInfo:)();
      v53 = v63[0];
      v62(v63[0]);
    }

    else
    {
      sub_10005ABD0(v19, v27, type metadata accessor for CustodianRecord);
      swift_beginAccess();
      Strong = swift_weakLoadStrong();
      if (Strong)
      {
        v46 = Strong;
        v47 = type metadata accessor for TaskPriority();
        v48 = v55;
        (*(*(v47 - 8) + 56))(v55, 1, 1, v47);
        sub_10005AA4C(v27, v24, type metadata accessor for CustodianRecord);
        v49 = (*(v21 + 80) + 80) & ~*(v21 + 80);
        v50 = swift_allocObject();
        *(v50 + 16) = 0;
        *(v50 + 24) = 0;
        *(v50 + 32) = v46;
        *(v50 + 40) = 0;
        *(v50 + 48) = 0u;
        *(v50 + 64) = 0u;
        sub_10005ABD0(v24, v50 + v49, type metadata accessor for CustodianRecord);
        v51 = (v50 + ((v22 + v49 + 7) & 0xFFFFFFFFFFFFFFF8));
        v52 = v57;
        *v51 = v56;
        v51[1] = v52;

        sub_1000BCD5C(0, 0, v48, &unk_10033F3A8, v50);
      }

      sub_10005AD7C(v27, type metadata accessor for CustodianRecord);
    }
  }
}

uint64_t sub_100043ADC(uint64_t a1, id a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  [a2 unlock];
  swift_beginAccess();
  if (*(a3 + 16))
  {
    swift_beginAccess();
    *(a3 + 16) = 0;
    swift_unknownObjectRelease();
  }

  return a4(a1);
}

uint64_t sub_100043B7C(uint64_t a1, void *a2, uint64_t a3, void *a4, void (*a5)(uint64_t), void (*a6)(uint64_t))
{
  v64 = a5;
  v65 = a6;
  v62 = a4;
  v63 = a3;
  v66 = a2;
  v7 = sub_100005814(&qword_1003DABF0, &qword_10033F8A0);
  __chkstk_darwin(v7 - 8);
  v61 = &v59 - v8;
  v67 = type metadata accessor for UUID();
  v9 = *(v67 - 8);
  v10 = __chkstk_darwin(v67);
  v12 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v59 - v13;
  v15 = type metadata accessor for CustodianRecord(0);
  v59 = *(v15 - 8);
  v16 = *(v59 + 64);
  v17 = __chkstk_darwin(v15 - 8);
  v60 = &v59 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v59 - v18;
  v20 = sub_100005814(&unk_1003DA200, &unk_10033FA80);
  __chkstk_darwin(v20);
  v22 = (&v59 - v21);
  sub_100012D04(a1, &v59 - v21, &unk_1003DA200, &unk_10033FA80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v23 = *v22;
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    sub_100008D04(v24, qword_1003FAA88);
    v25 = v67;
    (*(v9 + 16))(v12, v66, v67);
    swift_errorRetain();
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      v68[0] = v66;
      *v28 = 136315394;
      v30 = UUID.uuidString.getter();
      v32 = v31;
      (*(v9 + 8))(v12, v25);
      v33 = sub_10021145C(v30, v32, v68);

      *(v28 + 4) = v33;
      *(v28 + 12) = 2112;
      v34 = _convertErrorToNSError(_:)();
      *(v28 + 14) = v34;
      *v29 = v34;
      _os_log_impl(&_mh_execute_header, v26, v27, "Error removing custodian %s: %@", v28, 0x16u);
      sub_100008D3C(v29, &unk_1003D9140, &qword_10033E640);

      sub_10000839C(v66);
    }

    else
    {

      (*(v9 + 8))(v12, v25);
    }

    swift_errorRetain();
    v64(v23);
  }

  else
  {
    sub_10005ABD0(v22, v19, type metadata accessor for CustodianRecord);
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v35 = type metadata accessor for Logger();
    sub_100008D04(v35, qword_1003FAA88);
    v36 = v67;
    (*(v9 + 16))(v14, v66, v67);
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v68[0] = v40;
      *v39 = 136315138;
      v41 = UUID.uuidString.getter();
      v42 = v36;
      v43 = v19;
      v45 = v44;
      (*(v9 + 8))(v14, v42);
      v46 = sub_10021145C(v41, v45, v68);
      v19 = v43;

      *(v39 + 4) = v46;
      _os_log_impl(&_mh_execute_header, v37, v38, "Custodian %s successfully removed.", v39, 0xCu);
      sub_10000839C(v40);
    }

    else
    {

      (*(v9 + 8))(v14, v36);
    }

    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v49 = Strong;
      v50 = type metadata accessor for TaskPriority();
      v51 = v61;
      (*(*(v50 - 8) + 56))(v61, 1, 1, v50);
      v52 = v60;
      sub_10005AA4C(v19, v60, type metadata accessor for CustodianRecord);
      v53 = (*(v59 + 80) + 48) & ~*(v59 + 80);
      v54 = swift_allocObject();
      v54[2] = 0;
      v54[3] = 0;
      v55 = v62;
      v54[4] = v49;
      v54[5] = v55;
      sub_10005ABD0(v52, v54 + v53, type metadata accessor for CustodianRecord);
      v56 = (v54 + ((v16 + v53 + 7) & 0xFFFFFFFFFFFFFFF8));
      v57 = v65;
      *v56 = v64;
      v56[1] = v57;

      v58 = v55;

      sub_1000BCD5C(0, 0, v51, &unk_10033F378, v54);
    }

    return sub_10005AD7C(v19, type metadata accessor for CustodianRecord);
  }
}

uint64_t sub_1000442F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[7] = a7;
  v8[8] = a8;
  v8[5] = a5;
  v8[6] = a6;
  v8[4] = a4;
  v9 = sub_100005814(&unk_1003D8B50, &unk_10033F600);
  v8[9] = v9;
  v8[10] = *(v9 - 8);
  v8[11] = swift_task_alloc();

  return _swift_task_switch(sub_1000443C4, 0, 0);
}

uint64_t sub_1000443C4()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[4];
  (*(v2 + 16))(v1, v6 + OBJC_IVAR____TtC13appleaccountd22CustodianDaemonService__analyticsRTCReporter, v3);
  Dependency.wrappedValue.getter();
  (*(v2 + 8))(v1, v3);
  v7 = v0[2];
  v0[12] = v7;
  v8 = swift_allocObject();
  v0[13] = v8;
  *(v8 + 16) = v4;
  v9 = swift_task_alloc();
  v0[14] = v9;
  *(v9 + 16) = v6;
  *(v9 + 24) = v5;
  v10 = type metadata accessor for ExponentialRetryScheduler();
  v11 = v4;
  v12 = ExponentialRetryScheduler.__allocating_init(maxRetries:)();
  v0[15] = v12;
  v13 = swift_allocObject();
  v0[16] = v13;
  *(v13 + 16) = 0;
  v0[3] = v12;
  v14 = swift_task_alloc();
  v0[17] = v14;
  v14[2] = v13;
  v14[3] = sub_10005B12C;
  v14[4] = v8;
  v14[5] = 0;
  v14[6] = 0;
  v14[7] = &unk_10033F388;
  v14[8] = v9;
  v14[9] = v7;
  v14[10] = 1;
  v15 = swift_allocObject();
  v0[18] = v15;
  *(v15 + 16) = 0;
  *(v15 + 24) = 0;
  v16 = swift_task_alloc();
  v0[19] = v16;
  *v16 = v0;
  v16[1] = sub_100044600;

  return RetryScheduler.schedule<A>(_:shouldRetry:)(v16, &unk_10033F390, v14, sub_10005B8F4, v15, v10, &type metadata for () + 8, &protocol witness table for ExponentialRetryScheduler);
}

uint64_t sub_100044600()
{
  *(*v1 + 160) = v0;

  if (v0)
  {
    v2 = sub_1000447D0;
  }

  else
  {

    v2 = sub_100044724;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100044724()
{
  v1 = v0[15];
  v2 = v0[7];

  v2(0);

  swift_unknownObjectRelease();

  v3 = v0[1];

  return v3();
}

uint64_t sub_1000447D0()
{
  v1 = v0[20];
  v2 = v0[15];
  v3 = v0[7];

  v3(v1);

  swift_unknownObjectRelease();

  v4 = v0[1];

  return v4();
}

id sub_1000448A4(void *a1)
{
  v2 = kAAAnalyticsEventCustodianSetupSendRemovalMessageToCustodian;
  v3 = [a1 altDSID];
  if (v3)
  {
    v4 = v3;
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = [a1 telemetryFlowID];
  if (v8)
  {
    v9 = v8;
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;
  }

  else
  {
    v10 = 0;
    v12 = 0;
  }

  sub_100016034(0, &qword_1003D8B40, AAFAnalyticsEvent_ptr);
  return sub_100245D38(v2, v5, v7, v10, v12);
}

uint64_t sub_100044998(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = a3;
  return _swift_task_switch(sub_1000449B8, 0, 0);
}

uint64_t sub_1000449B8()
{
  v1 = v0[3];
  sub_1000080F8((v0[2] + 104), *(v0[2] + 128));
  v2 = type metadata accessor for CustodianRecord(0);
  v3 = *(v2 + 20);
  v4 = (v1 + *(v2 + 24));
  v5 = *v4;
  v6 = v4[1];
  v7 = swift_task_alloc();
  v0[4] = v7;
  *v7 = v0;
  v7[1] = sub_10005B810;

  return sub_100044AAC(v1 + v3, v5, v6, 1, 0);
}

uint64_t sub_100044AAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
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

  return _swift_task_switch(sub_100044B78, 0, 0);
}

uint64_t sub_100044B78()
{
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);
  v3 = *(v0 + 56);
  v4 = *(v0 + 80);
  v5 = *(v0 + 40);
  v12 = *(v0 + 24);
  v13 = *(v0 + 32);
  (*(v2 + 16))(v1, *(v0 + 16), v3);
  type metadata accessor for CustodianRemovedMessage(0);
  v6 = swift_allocObject();
  *(v6 + OBJC_IVAR____TtC13appleaccountd23CustodianRemovedMessage_reason) = 11;
  v7 = v6 + OBJC_IVAR____TtC13appleaccountd23CustodianRemovedMessage_flow;
  *v7 = 0;
  *(v7 + 8) = 1;
  *(v6 + 16) = 4;
  (*(v2 + 32))(v6 + OBJC_IVAR____TtC13appleaccountd23CustodianRemovedMessage_custodianID, v1, v3);
  *(v6 + OBJC_IVAR____TtC13appleaccountd23CustodianRemovedMessage_reason) = 11;
  v8 = v6 + OBJC_IVAR____TtC13appleaccountd23CustodianRemovedMessage_flow;
  *v8 = v5;
  *(v8 + 8) = v4 & 1;
  v9 = sub_1000E9D30(v12, v13);
  sub_100262BAC(v6, v9, 0xD00000000000001FLL, 0x800000010032D510);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_100044D4C(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = sub_100005814(&unk_1003DA118, &qword_10033F238);
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();

  return _swift_task_switch(sub_100044E18, 0, 0);
}

uint64_t sub_100044E18()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];
  (*(v2 + 16))(v1, v0[8] + OBJC_IVAR____TtC13appleaccountd22CustodianDaemonService__custodianFetcher, v3);
  Dependency.wrappedValue.getter();
  (*(v2 + 8))(v1, v3);
  sub_1000080F8(v0 + 2, v0[5]);
  v4 = swift_task_alloc();
  v0[12] = v4;
  *v4 = v0;
  v4[1] = sub_100044F18;
  v5 = v0[7];

  return sub_10005B8FC(v5);
}

uint64_t sub_100044F18(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 104) = v1;

  if (v1)
  {
    v5 = sub_1000450B4;
  }

  else
  {
    *(v4 + 112) = a1;
    v5 = sub_100045040;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100045040()
{
  sub_10000839C(v0 + 2);

  v1 = v0[1];
  v2 = v0[14];

  return v1(v2);
}

uint64_t sub_1000450B4()
{
  sub_10000839C((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000452B0(void *a1, void *aBlock, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v5 = a1;

  v6 = swift_task_alloc();
  v3[5] = v6;
  *v6 = v3;
  v6[1] = sub_100045374;

  return sub_100044D4C(v5);
}

uint64_t sub_100045374(uint64_t a1)
{
  v3 = v1;
  v4 = *v2;
  v5 = *(*v2 + 16);
  v6 = *v2;

  if (v3)
  {
    v7 = _convertErrorToNSError(_:)();

    v8 = v7;
    v9 = 0;
  }

  else
  {
    sub_100016034(0, &qword_1003DA1F8, AATrustedContact_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v9 = isa;
    v8 = 0;
    v7 = isa;
  }

  v11 = *(v4 + 32);
  (v11)[2](v11, v9, v8);

  _Block_release(v11);
  v12 = *(v6 + 8);

  return v12();
}

uint64_t sub_100045534(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4)
{
  v7 = type metadata accessor for CustodianshipInfoRecord(0);
  v8 = __chkstk_darwin(v7);
  v10 = v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v13 = v24 - v12;
  if (v14)
  {
    return a3(0);
  }

  v16 = _swiftEmptyArrayStorage;
  v26 = _swiftEmptyArrayStorage;
  v17 = *(a1 + 16);
  if (v17)
  {
    v24[1] = a4;
    v25 = a3;
    v18 = a1 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v19 = *(v11 + 72);
    do
    {
      sub_10005AA4C(v18, v13, type metadata accessor for CustodianshipInfoRecord);
      sub_10005AA4C(v13, v10, type metadata accessor for CustodianshipInfoRecord);
      v20 = objc_allocWithZone(AACustodianshipInfo);
      isa = UUID._bridgeToObjectiveC()().super.isa;
      v22 = *&v10[*(v7 + 28)];
      v23 = String._bridgeToObjectiveC()();
      [v20 initWithID:isa status:v22 ownerHandle:v23];

      sub_10005AD7C(v10, type metadata accessor for CustodianshipInfoRecord);
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      sub_10005AD7C(v13, type metadata accessor for CustodianshipInfoRecord);
      v18 += v19;
      --v17;
    }

    while (v17);
    a3 = v25;
    v16 = v26;
  }

  (a3)(v16, 0);
}

void sub_1000457C8(objc_class *a1, uint64_t a2, uint64_t a3)
{
  isa = a1;
  if (a1)
  {
    sub_100016034(0, &qword_1003DA1F0, AACustodianshipInfo_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;
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

uint64_t sub_100045874(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v23 = a2;
  v24 = a3;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_100008D04(v10, qword_1003FAA88);
  (*(v7 + 16))(v9, a1, v6);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v22 = a1;
    v14 = v13;
    v15 = swift_slowAlloc();
    v25 = v15;
    *v14 = 136315138;
    sub_1000527BC(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    v18 = v17;
    (*(v7 + 8))(v9, v6);
    v19 = sub_10021145C(v16, v18, &v25);

    *(v14 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v11, v12, "Fetching custodianship information with the following: %s", v14, 0xCu);
    sub_10000839C(v15);

    a1 = v22;
  }

  else
  {

    (*(v7 + 8))(v9, v6);
  }

  sub_1000080F8((v4 + 144), *(v4 + 168));
  v20 = swift_allocObject();
  *(v20 + 16) = v23;
  *(v20 + 24) = v24;

  sub_1000259E4(a1, sub_100052898, v20);
}

uint64_t sub_100045B58(uint64_t a1, void (*a2)(id, uint64_t), uint64_t a3)
{
  v41[1] = a3;
  v42 = a2;
  v4 = type metadata accessor for UUID();
  v41[0] = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for CustodianshipInfoRecord(0);
  v8 = __chkstk_darwin(v7);
  v10 = v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = v41 - v11;
  v13 = sub_100005814(&unk_1003DA0E0, &unk_10033F1D0);
  __chkstk_darwin(v13);
  v15 = (v41 - v14);
  sub_100012D04(a1, v41 - v14, &unk_1003DA0E0, &unk_10033F1D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16 = *v15;
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_100008D04(v17, qword_1003FAA88);
    swift_errorRetain();
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v20 = 138412290;
      v22 = _convertErrorToNSError(_:)();
      *(v20 + 4) = v22;
      *v21 = v22;
      _os_log_impl(&_mh_execute_header, v18, v19, "Failed to fetch custodianship info: %@", v20, 0xCu);
      sub_100008D3C(v21, &unk_1003D9140, &qword_10033E640);
    }

    swift_errorRetain();
    v42(0, v16);
  }

  else
  {
    sub_10005ABD0(v15, v12, type metadata accessor for CustodianshipInfoRecord);
    sub_10005AA4C(v12, v10, type metadata accessor for CustodianshipInfoRecord);
    v24 = objc_allocWithZone(AACustodianshipInfo);
    isa = UUID._bridgeToObjectiveC()().super.isa;
    v26 = *&v10[*(v7 + 28)];
    v27 = String._bridgeToObjectiveC()();
    v28 = [v24 initWithID:isa status:v26 ownerHandle:v27];

    sub_10005AD7C(v10, type metadata accessor for CustodianshipInfoRecord);
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    sub_100008D04(v29, qword_1003FAA88);
    v30 = v28;
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v43 = v34;
      *v33 = 136315138;
      v35 = [v30 custodianID];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      sub_1000527BC(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v36 = dispatch thunk of CustomStringConvertible.description.getter();
      v38 = v37;
      (*(v41[0] + 8))(v6, v4);
      v39 = sub_10021145C(v36, v38, &v43);

      *(v33 + 4) = v39;
      _os_log_impl(&_mh_execute_header, v31, v32, "Found custodianship info: %s", v33, 0xCu);
      sub_10000839C(v34);
    }

    v40 = v30;
    v42(v30, 0);

    return sub_10005AD7C(v12, type metadata accessor for CustodianshipInfoRecord);
  }
}