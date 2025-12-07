uint64_t sub_1005D0A98()
{
  *(*v1 + 392) = v0;

  if (v0)
  {
    v2 = sub_1005D1430;
  }

  else
  {
    v2 = sub_1005D0BCC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1005D0BCC()
{
  v1 = *(v0 + 360);
  v2 = *(v0 + 240);
  v3 = *(v0 + 216);
  v4 = *(v0 + 224);

  v53 = *(v4 + 8);
  v53(v2, v3);
  v5 = *(v0 + 16);
  v54 = *(v0 + 32);
  v56 = *(v0 + 24);
  v6 = *(v0 + 40);
  v7 = *(v0 + 392);
  v8 = *(v0 + 320);
  v9 = *(v0 + 328);
  v10 = *(v0 + 208);
  if ((*(v9 + 48))(v10, 1, v8))
  {
    if (*(v0 + 41))
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v16 = *(v0 + 336);
  (*(v9 + 16))(v16, v10, v8);
  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  (*(v9 + 8))(v16, v8);
  if ((*(v0 + 41) & 1) == 0)
  {
LABEL_3:
    type metadata accessor for DaemonAnalytics();
    static DaemonAnalytics.sendStaticWorkflowFetchedEvent(workflowID:wasLoadedFromCache:)();
  }

LABEL_4:
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  sub_1005BE470(&qword_1008495C8, &qword_1008495C0, &unk_1006E94C0);
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  if (v7)
  {

    if (v6)
    {
      if (qword_100832D20 != -1)
      {
        swift_once();
      }

      v11 = qword_100882498;
      isa = URLRequest._bridgeToObjectiveC()().super.isa;
      [v11 removeCachedResponseForRequest:isa];
    }

    v51 = enum case for DIPError.Code.internalError(_:);
    v50 = *(*(v0 + 128) + 104);
    v50(*(v0 + 136));
    type metadata accessor for DIPError();
    sub_1002A7708(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    swift_errorRetain();

    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    sub_10000B90C(v5, v56);
    v55 = *(v0 + 344);
    v13 = *(v0 + 328);
    v52 = *(v0 + 320);
    v14 = *(v0 + 264);
    v47 = *(v0 + 256);
    v48 = *(v0 + 280);
    v43 = *(v0 + 216);
    v45 = *(v0 + 248);
    v49 = *(v0 + 208);
    (v50)(*(v0 + 136), v51, *(v0 + 120));
    swift_allocError();
    swift_errorRetain();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v53(v45, v43);
    (*(v14 + 8))(v48, v47);
    (*(v13 + 8))(v55, v52);
    sub_10000BE18(v49, &qword_10083B038, &unk_1006D9160);

    v15 = *(v0 + 8);
  }

  else
  {

    if ((v6 & 1) == 0)
    {
      if (qword_100832D20 != -1)
      {
        swift_once();
      }

      v17 = qword_100882498;
      v18 = objc_allocWithZone(NSCachedURLResponse);
      v19 = Data._bridgeToObjectiveC()().super.isa;
      v20 = [v18 initWithResponse:v54 data:v19];

      v21 = sub_100600EC4(v20, 0, 1);
      if (v21)
      {
        v22 = v21;
        v23 = URLRequest._bridgeToObjectiveC()().super.isa;
        v24 = type metadata accessor for DIPURLCache();
        *(v0 + 48) = v17;
        *(v0 + 56) = v24;
        objc_msgSendSuper2((v0 + 48), "storeCachedResponse:forRequest:", v22, v23);

        v20 = v23;
      }

      defaultLogger()();
      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        *v27 = 0;
        _os_log_impl(&_mh_execute_header, v25, v26, "Identity Proofing Static workflow response stored in the cache", v27, 2u);
      }

      v29 = *(v0 + 152);
      v28 = *(v0 + 160);
      v30 = *(v0 + 144);

      (*(v29 + 8))(v28, v30);
      DIPSignpost.end(workflowID:isBackground:)(0, 2);
    }

    v46 = *(v0 + 344);
    v31 = *(v0 + 328);
    v32 = *(v0 + 264);
    v40 = *(v0 + 256);
    v41 = *(v0 + 280);
    v33 = *(v0 + 248);
    v34 = *(v0 + 216);
    v42 = *(v0 + 208);
    v44 = *(v0 + 320);
    v35 = v5;
    v37 = *(v0 + 176);
    v36 = *(v0 + 184);
    v38 = *(v0 + 168);
    JWSSignedJSON.payload.getter();

    sub_10000B90C(v35, v56);
    (*(v37 + 8))(v36, v38);
    v53(v33, v34);
    (*(v32 + 8))(v41, v40);
    (*(v31 + 8))(v46, v44);
    sub_10000BE18(v42, &qword_10083B038, &unk_1006D9160);

    v15 = *(v0 + 8);
  }

  return v15();
}

uint64_t sub_1005D1430()
{
  v1 = v0[45];
  v2 = v0[30];
  v3 = v0[27];
  v4 = v0[28];
  v5 = v0[16];

  v6 = *(v4 + 8);
  v6(v2, v3);
  v17 = v0[43];
  v7 = v0[41];
  v8 = v0[33];
  v13 = v0[32];
  v14 = v0[35];
  v11 = v0[27];
  v12 = v0[31];
  v15 = v0[26];
  v16 = v0[40];
  (*(v5 + 104))(v0[17], enum case for DIPError.Code.internalError(_:), v0[15]);
  type metadata accessor for DIPError();
  sub_1002A7708(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  swift_errorRetain();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v6(v12, v11);
  (*(v8 + 8))(v14, v13);
  (*(v7 + 8))(v17, v16);
  sub_10000BE18(v15, &qword_10083B038, &unk_1006D9160);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1005D1720(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = type metadata accessor for Logger();
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();
  v7 = type metadata accessor for DIPError.Code();
  v5[10] = v7;
  v5[11] = *(v7 - 8);
  v5[12] = swift_task_alloc();
  v8 = type metadata accessor for DIPError();
  v5[13] = v8;
  v5[14] = *(v8 - 8);
  v5[15] = swift_task_alloc();
  sub_100007224(&unk_100849400, &unk_1006BFBB0);
  v5[16] = swift_task_alloc();
  v5[17] = swift_task_alloc();
  v9 = type metadata accessor for URL();
  v5[18] = v9;
  v5[19] = *(v9 - 8);
  v5[20] = swift_task_alloc();
  v5[21] = swift_task_alloc();
  v10 = type metadata accessor for Date();
  v5[22] = v10;
  v5[23] = *(v10 - 8);
  v5[24] = swift_task_alloc();
  v5[25] = swift_task_alloc();
  v5[26] = swift_task_alloc();

  return _swift_task_switch(sub_1005D19C0, 0, 0);
}

void sub_1005D19C0(uint64_t a1)
{
  v2 = v1[25];
  v3 = v1[23];
  v4 = v1[22];
  v18 = v1[20];
  v5 = v1[6];
  v19 = v1[5];
  v7 = v1[3];
  v6 = v1[4];
  v8 = v1[2];
  Date.init()();
  static Date.- infix(_:_:)();
  v9 = *(v3 + 8);
  v1[27] = v9;
  v1[28] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v9(v2, v4);
  Date.init()();
  static Date.+ infix(_:_:)();
  v9(v2, v4);
  sub_1005CE9C0(v5 + OBJC_IVAR____TtC8coreidvd25DIPTopekaStaticWebService_baseURL, v8, v7, v6, v19, v18);
  (*(v1[19] + 32))(v1[21], v1[20], v1[18]);
  if (qword_100832D20 != -1)
  {
    swift_once();
  }

  v11 = v1[23];
  v10 = v1[24];
  v12 = v1[22];
  v14 = v1[16];
  v13 = v1[17];
  v15 = *(v11 + 16);
  v15(v13, v1[26], v12);
  v16 = *(v11 + 56);
  v16(v13, 0, 1, v12);
  v15(v14, v10, v12);
  v16(v14, 0, 1, v12);

  v17 = swift_task_alloc();
  v1[29] = v17;
  *v17 = v1;
  v17[1] = sub_1005D2034;

  JUMPOUT(0x1006015BCLL);
}

uint64_t sub_1005D2034()
{
  v1 = *(*v0 + 136);
  v2 = *(*v0 + 128);

  sub_10000BE18(v2, &unk_100849400, &unk_1006BFBB0);
  sub_10000BE18(v1, &unk_100849400, &unk_1006BFBB0);

  return _swift_task_switch(sub_1005D7BCC, 0, 0);
}

uint64_t sub_1005D21EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = type metadata accessor for DIPError.Code();
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();
  v7 = type metadata accessor for DIPError();
  v5[10] = v7;
  v5[11] = *(v7 - 8);
  v5[12] = swift_task_alloc();
  sub_100007224(&unk_10084A260, &qword_1006EA050);
  v5[13] = swift_task_alloc();
  type metadata accessor for IdentityProofingStaticWorkflow(0);
  v5[14] = swift_task_alloc();
  v8 = type metadata accessor for Logger();
  v5[15] = v8;
  v5[16] = *(v8 - 8);
  v5[17] = swift_task_alloc();
  v5[18] = swift_task_alloc();
  v5[19] = swift_task_alloc();

  return _swift_task_switch(sub_1005D23E8, 0, 0);
}

uint64_t sub_1005D23E8(uint64_t a1)
{
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Refreshing static workflow cache", v4, 2u);
  }

  v5 = v1[19];
  v6 = v1[15];
  v7 = v1[16];
  v8 = v1[13];

  v9 = *(v7 + 8);
  v1[20] = v9;
  v9(v5, v6);
  v10 = type metadata accessor for DIPSignpost.Config();
  (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
  v11 = swift_task_alloc();
  v1[21] = v11;
  *v11 = v1;
  v11[1] = sub_1005D257C;
  v13 = v1[13];
  v12 = v1[14];
  v14 = v1[5];
  v15 = v1[6];
  v16 = v1[3];
  v17 = v1[4];

  return sub_1005CFA28(v12, v16, v17, v14, v15, 1, v13);
}

uint64_t sub_1005D257C()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  *(*v1 + 176) = v0;

  sub_10000BE18(v3, &unk_10084A260, &qword_1006EA050);
  if (v0)
  {
    v4 = sub_1005D2834;
  }

  else
  {
    sub_1005D7B6C(*(v2 + 112), type metadata accessor for IdentityProofingStaticWorkflow);
    v4 = sub_1005D26E0;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1005D26E0(uint64_t a1)
{
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v1[20];
  v6 = v1[18];
  v7 = v1[15];
  if (v4)
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Done refreshing static workflow cache", v8, 2u);
  }

  v5(v6, v7);

  v9 = v1[1];

  return v9();
}

uint64_t sub_1005D2834()
{
  v1 = v0[17];
  v18 = v0[15];
  v19 = v0[20];
  v2 = v0[11];
  v3 = v0[9];
  v17 = v0[10];
  v16 = v0[12];
  v4 = v0[8];
  v15 = v0[7];
  sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
  v5 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
  v6 = (*(*v5 + 80) + 32) & ~*(*v5 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1006BF520;
  v8 = v7 + v6;
  v9 = v8 + v5[14];
  v10 = enum case for DIPError.PropertyKey.daemonSessionState(_:);
  v11 = type metadata accessor for DIPError.PropertyKey();
  (*(*(v11 - 8) + 104))(v8, v10, v11);
  *(v9 + 24) = &type metadata for DIPState;
  *(v9 + 32) = sub_10053B8D4();
  *v9 = 9;
  swift_errorRetain();
  sub_10003C9C0(v7);
  swift_setDeallocating();
  sub_10000BE18(v8, &qword_1008341D0, &unk_1006BF8D0);
  swift_deallocClassInstance();
  (*(v4 + 104))(v3, enum case for DIPError.Code.internalError(_:), v15);
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  sub_1002A7708(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  (*(v2 + 16))(v12, v16, v17);
  defaultLogger()();
  DIPRecordError(_:message:log:)();

  v19(v1, v18);
  (*(v2 + 8))(v16, v17);

  v13 = v0[1];

  return v13();
}

uint64_t sub_1005D2BCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = type metadata accessor for DIPError.Code();
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();
  v7 = type metadata accessor for DIPError();
  v5[10] = v7;
  v5[11] = *(v7 - 8);
  v5[12] = swift_task_alloc();
  sub_100007224(&unk_10084A260, &qword_1006EA050);
  v5[13] = swift_task_alloc();
  v8 = type metadata accessor for Logger();
  v5[14] = v8;
  v5[15] = *(v8 - 8);
  v5[16] = swift_task_alloc();
  v5[17] = swift_task_alloc();
  v5[18] = swift_task_alloc();
  v5[19] = swift_task_alloc();

  return _swift_task_switch(sub_1005D2DA8, 0, 0);
}

uint64_t sub_1005D2DA8(uint64_t a1)
{
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Refreshing static asset cache", v4, 2u);
  }

  v5 = v1[19];
  v6 = v1[14];
  v7 = v1[15];
  v8 = v1[13];

  v9 = *(v7 + 8);
  v1[20] = v9;
  v9(v5, v6);
  v10 = type metadata accessor for DIPSignpost.Config();
  (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
  v11 = swift_task_alloc();
  v1[21] = v11;
  *v11 = v1;
  v11[1] = sub_1005D2F3C;
  v12 = v1[13];
  v13 = v1[5];
  v14 = v1[6];
  v16 = v1[3];
  v15 = v1[4];

  return sub_1005CC204(v16, v15, v13, v14, 1, v12);
}

uint64_t sub_1005D2F3C(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 104);
  v4[22] = a1;
  v4[23] = a2;
  v4[24] = v2;

  sub_10000BE18(v5, &unk_10084A260, &qword_1006EA050);
  if (v2)
  {
    v6 = sub_1005D344C;
  }

  else
  {
    v6 = sub_1005D3084;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1005D3084(uint64_t a1)
{
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Done refreshing static asset cache", v4, 2u);
  }

  v5 = v1[20];
  v6 = v1[18];
  v7 = v1[14];

  v5(v6, v7);
  v8 = swift_task_alloc();
  v1[25] = v8;
  *v8 = v1;
  v8[1] = sub_1005D31C8;
  v10 = v1[22];
  v9 = v1[23];

  return sub_1005D37E0(v10, v9);
}

uint64_t sub_1005D31C8()
{

  return _swift_task_switch(sub_1005D32FC, 0, 0);
}

uint64_t sub_1005D32FC(uint64_t a1)
{
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v1[20];
  v6 = v1[17];
  v7 = v1[14];
  if (v4)
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Done refreshing precache config data", v8, 2u);
  }

  v5(v6, v7);

  v9 = v1[1];

  return v9();
}

uint64_t sub_1005D344C()
{
  v1 = v0[16];
  v18 = v0[14];
  v19 = v0[20];
  v2 = v0[11];
  v3 = v0[9];
  v17 = v0[10];
  v16 = v0[12];
  v4 = v0[8];
  v15 = v0[7];
  sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
  v5 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
  v6 = (*(*v5 + 80) + 32) & ~*(*v5 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1006BF520;
  v8 = v7 + v6;
  v9 = v8 + v5[14];
  v10 = enum case for DIPError.PropertyKey.daemonSessionState(_:);
  v11 = type metadata accessor for DIPError.PropertyKey();
  (*(*(v11 - 8) + 104))(v8, v10, v11);
  *(v9 + 24) = &type metadata for DIPState;
  *(v9 + 32) = sub_10053B8D4();
  *v9 = 9;
  swift_errorRetain();
  sub_10003C9C0(v7);
  swift_setDeallocating();
  sub_10000BE18(v8, &qword_1008341D0, &unk_1006BF8D0);
  swift_deallocClassInstance();
  (*(v4 + 104))(v3, enum case for DIPError.Code.internalError(_:), v15);
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  sub_1002A7708(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  (*(v2 + 16))(v12, v16, v17);
  defaultLogger()();
  DIPRecordError(_:message:log:)();

  v19(v1, v18);
  (*(v2 + 8))(v16, v17);

  v13 = v0[1];

  return v13();
}

uint64_t sub_1005D37E0(uint64_t a1, uint64_t a2)
{
  v3[7] = a2;
  v3[8] = v2;
  v3[6] = a1;
  v4 = type metadata accessor for Logger();
  v3[9] = v4;
  v3[10] = *(v4 - 8);
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v5 = type metadata accessor for DIPError.Code();
  v3[13] = v5;
  v3[14] = *(v5 - 8);
  v3[15] = swift_task_alloc();

  return _swift_task_switch(sub_1005D390C, 0, 0);
}

uint64_t sub_1005D390C(uint64_t a1)
{
  v42 = v1;
  v2 = v1[6];
  if (v2)
  {
    v3 = v1[7];
    if (v3)
    {
      v4 = v2[2];
      v1[16] = v4;
      if (!v4)
      {
        defaultLogger()();
        v34 = Logger.logObject.getter();
        v35 = static os_log_type_t.debug.getter();
        v36 = os_log_type_enabled(v34, v35);
        v37 = v1[12];
        v38 = v1[9];
        v39 = v1[10];
        if (v36)
        {
          v40 = swift_slowAlloc();
          *v40 = 0;
          _os_log_impl(&_mh_execute_header, v34, v35, "Downloading precached config data complete", v40, 2u);
        }

        (*(v39 + 8))(v37, v38);
        goto LABEL_15;
      }

      v1[17] = 0;
      v6 = v2[4];
      v5 = v2[5];
      v7 = *(v3 + 16);

      if (v7)
      {
        v8 = sub_10003ADCC(v6, v5);
        if (v9)
        {
          v10 = v8;
          v11 = v1[7];

          v12 = (*(v11 + 56) + 32 * v10);
          v14 = *v12;
          v13 = v12[1];
          v1[18] = v13;
          v1[19] = v12[2];
          v1[20] = v12[3];

          v15 = swift_task_alloc();
          v1[21] = v15;
          *v15 = v1;
          v15[1] = sub_1005D3FA4;

          return sub_1005CE0D4(v14, v13);
        }
      }

      v18 = v1[14];
      v17 = v1[15];
      v19 = v1[13];
      _StringGuts.grow(_:)(49);

      v41[0] = 0x3E2D207465737361;
      v41[1] = 0xE900000000000020;
      v20._countAndFlagsBits = v6;
      v20._object = v5;
      String.append(_:)(v20);

      v21._countAndFlagsBits = 0xD000000000000026;
      v21._object = 0x80000001007245A0;
      String.append(_:)(v21);
      (*(v18 + 104))(v17, enum case for DIPError.Code.internalError(_:), v19);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_1002A7708(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      swift_allocError();
    }

    else
    {
      (*(v1[14] + 104))(v1[15], enum case for DIPError.Code.imageAssetsUnavailable(_:), v1[13]);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_1002A7708(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      swift_allocError();
    }
  }

  else
  {
    (*(v1[14] + 104))(v1[15], enum case for DIPError.Code.precachedConfigDoesntExist(_:), v1[13]);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1002A7708(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
  }

  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();
  defaultLogger()();
  swift_errorRetain();
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.debug.getter();

  v24 = os_log_type_enabled(v22, v23);
  v26 = v1[10];
  v25 = v1[11];
  v27 = v1[9];
  if (v24)
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v41[0] = v29;
    *v28 = 136315138;
    swift_getErrorValue();
    v30 = Error.localizedDescription.getter();
    v32 = sub_100141FE4(v30, v31, v41);

    *(v28 + 4) = v32;
    _os_log_impl(&_mh_execute_header, v22, v23, "Unable to download the precached config %s", v28, 0xCu);
    sub_10000BB78(v29);

    (*(v26 + 8))(v25, v27);
  }

  else
  {

    (*(v26 + 8))(v25, v27);
  }

LABEL_15:

  v33 = v1[1];

  return v33();
}

uint64_t sub_1005D3FA4(uint64_t a1, unint64_t a2)
{
  v6 = *v3;
  v6[22] = v2;

  if (v2)
  {

    return _swift_task_switch(sub_1005D4784, 0, 0);
  }

  else
  {
    sub_10000B90C(a1, a2);

    v7 = swift_task_alloc();
    v6[23] = v7;
    *v7 = v6;
    v7[1] = sub_1005D4158;
    v8 = v6[20];
    v9 = v6[19];

    return sub_1005CE0D4(v9, v8);
  }
}

uint64_t sub_1005D4158(uint64_t a1, unint64_t a2)
{
  *(*v3 + 192) = v2;

  if (v2)
  {

    v6 = sub_1005D496C;
  }

  else
  {
    sub_10000B90C(a1, a2);

    v6 = sub_1005D42B4;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1005D42B4(uint64_t a1)
{
  v41 = v1;
  v2 = v1[17] + 1;
  if (v2 == v1[16])
  {
    defaultLogger()();
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.debug.getter();
    v5 = os_log_type_enabled(v3, v4);
    v6 = v1[12];
    v7 = v1[9];
    v8 = v1[10];
    if (v5)
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Downloading precached config data complete", v9, 2u);
    }

    (*(v8 + 8))(v6, v7);
    goto LABEL_13;
  }

  v1[17] = v2;
  v10 = v1[6] + 16 * v2;
  v12 = *(v10 + 32);
  v11 = *(v10 + 40);
  v13 = *(v1[7] + 16);

  if (!v13 || (v14 = sub_10003ADCC(v12, v11), (v15 & 1) == 0))
  {
    v24 = v1[14];
    v23 = v1[15];
    v25 = v1[13];
    _StringGuts.grow(_:)(49);

    v40[0] = 0x3E2D207465737361;
    v40[1] = 0xE900000000000020;
    v26._countAndFlagsBits = v12;
    v26._object = v11;
    String.append(_:)(v26);

    v27._countAndFlagsBits = 0xD000000000000026;
    v27._object = 0x80000001007245A0;
    String.append(_:)(v27);
    (*(v24 + 104))(v23, enum case for DIPError.Code.internalError(_:), v25);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1002A7708(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    defaultLogger()();
    swift_errorRetain();
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.debug.getter();

    v30 = os_log_type_enabled(v28, v29);
    v32 = v1[10];
    v31 = v1[11];
    v33 = v1[9];
    if (v30)
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v40[0] = v35;
      *v34 = 136315138;
      swift_getErrorValue();
      v36 = Error.localizedDescription.getter();
      v38 = sub_100141FE4(v36, v37, v40);

      *(v34 + 4) = v38;
      _os_log_impl(&_mh_execute_header, v28, v29, "Unable to download the precached config %s", v34, 0xCu);
      sub_10000BB78(v35);

      (*(v32 + 8))(v31, v33);
    }

    else
    {

      (*(v32 + 8))(v31, v33);
    }

LABEL_13:

    v39 = v1[1];

    return v39();
  }

  v16 = v14;
  v17 = v1[7];

  v18 = (*(v17 + 56) + 32 * v16);
  v20 = *v18;
  v19 = v18[1];
  v1[18] = v19;
  v1[19] = v18[2];
  v1[20] = v18[3];

  v21 = swift_task_alloc();
  v1[21] = v21;
  *v21 = v1;
  v21[1] = sub_1005D3FA4;

  return sub_1005CE0D4(v20, v19);
}

uint64_t sub_1005D4784(uint64_t a1)
{
  v18 = v1;
  defaultLogger()();
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v1[10];
    v16 = v1[11];
    v5 = v1[9];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v17 = v7;
    *v6 = 136315138;
    swift_getErrorValue();
    v8 = Error.localizedDescription.getter();
    v10 = sub_100141FE4(v8, v9, &v17);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v2, v3, "Unable to download the precached config %s", v6, 0xCu);
    sub_10000BB78(v7);

    (*(v4 + 8))(v16, v5);
  }

  else
  {
    v12 = v1[10];
    v11 = v1[11];
    v13 = v1[9];

    (*(v12 + 8))(v11, v13);
  }

  v14 = v1[1];

  return v14();
}

uint64_t sub_1005D496C(uint64_t a1)
{
  v18 = v1;
  defaultLogger()();
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v1[10];
    v16 = v1[11];
    v5 = v1[9];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v17 = v7;
    *v6 = 136315138;
    swift_getErrorValue();
    v8 = Error.localizedDescription.getter();
    v10 = sub_100141FE4(v8, v9, &v17);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v2, v3, "Unable to download the precached config %s", v6, 0xCu);
    sub_10000BB78(v7);

    (*(v4 + 8))(v16, v5);
  }

  else
  {
    v12 = v1[10];
    v11 = v1[11];
    v13 = v1[9];

    (*(v12 + 8))(v11, v13);
  }

  v14 = v1[1];

  return v14();
}

uint64_t sub_1005D4B54(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v3 = type metadata accessor for DIPError.Code();
  v2[10] = v3;
  v2[11] = *(v3 - 8);
  v2[12] = swift_task_alloc();
  v4 = type metadata accessor for URLRequest();
  v2[13] = v4;
  v2[14] = *(v4 - 8);
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v5 = type metadata accessor for URL();
  v2[18] = v5;
  v2[19] = *(v5 - 8);
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  v2[23] = v6;
  v2[24] = *(v6 - 8);
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();

  return _swift_task_switch(sub_1005D4D64, 0, 0);
}

uint64_t sub_1005D4D64(uint64_t a1)
{
  v66 = v1;
  v2 = v1[22];
  v3 = v1[18];
  v4 = v1[19];
  v5 = v1[8];
  defaultLogger()();
  v6 = *(v4 + 16);
  v1[27] = v6;
  v1[28] = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v63 = v6;
  v6(v2, v5, v3);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v1[26];
  v12 = v1[23];
  v11 = v1[24];
  v13 = v1[22];
  v14 = v1[18];
  v15 = v1[19];
  if (v9)
  {
    v62 = v1[23];
    v16 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    v65 = v60;
    *v16 = 136315138;
    v58 = URL.absoluteString.getter();
    v61 = v10;
    v18 = v17;
    v59 = v8;
    v19 = *(v15 + 8);
    v19(v13, v14);
    v20 = sub_100141FE4(v58, v18, &v65);

    *(v16 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v7, v59, "Will attempt to download and cache the asset data for url %s", v16, 0xCu);
    sub_10000BB78(v60);

    v21 = *(v11 + 8);
    v21(v61, v62);
  }

  else
  {

    v19 = *(v15 + 8);
    v19(v13, v14);
    v21 = *(v11 + 8);
    v21(v10, v12);
  }

  v1[29] = v21;
  v1[30] = v19;
  v22 = v1[17];
  v23 = v1[16];
  v24 = v1[13];
  v25 = v1[14];
  v26 = v1[9];
  v63(v1[21], v1[8], v1[18]);
  URLRequest.init(url:cachePolicy:timeoutInterval:)();
  URLRequest.cachePolicy.setter();
  URLRequest.httpMethod.setter();
  v27 = *(v26 + OBJC_IVAR____TtC8coreidvd25DIPTopekaStaticWebService_httpSession);
  v28 = *(v25 + 16);
  v28(v23, v22, v24);
  v29 = sub_1005BEE18(v23);
  v30 = v29;
  v1[31] = v29;
  if ((v31 & 1) != 0 && v29)
  {
    v33 = v1[16];
    v32 = v1[17];
    v35 = v1[13];
    v34 = v1[14];
    v36 = [v29 data];
    v64 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v38 = v37;

    v39 = [v30 response];
    v40 = *(v34 + 8);
    v40(v33, v35);
    v40(v32, v35);

    v41 = v1[1];

    return v41(v64, v38);
  }

  else
  {
    v43 = [objc_opt_self() standardUserDefaults];
    v44._countAndFlagsBits = static DaemonInternalDefaultsKeys.disableIfModifiedSinceHeader.getter();
    v45 = NSUserDefaults.internalBool(forKey:)(v44);

    if (!v45 && v30)
    {
      v46 = qword_100832D20;
      v47 = v30;
      if (v46 != -1)
      {
        swift_once();
      }

      v48 = sub_1005FFF28(v47);
      if (v49)
      {
        v50._object = 0x8000000100723320;
        v50._countAndFlagsBits = 0xD000000000000011;
        URLRequest.addValue(_:forHTTPHeaderField:)(*&v48, v50);
      }
    }

    v51 = v1[15];
    v52 = v1[13];
    v53 = v1[14];
    v28(v51, v1[16], v52);
    type metadata accessor for DIPHTTPSession.RequestContainer(0);
    v54 = swift_allocObject();
    v1[32] = v54;
    swift_defaultActor_initialize();
    (*(v53 + 32))(v54 + OBJC_IVAR____TtCFC8coreidvd14DIPHTTPSession14performRequestFzZTV10Foundation10URLRequest21acceptableStatusCodesGSaSi_11ignoreCacheSb11isAnonymousSb17overridingAltDSIDGSqSS__TVS1_4DataCSo13NSURLResponseSb_L_16RequestContainer_request, v51, v52);
    v55 = swift_task_alloc();
    v1[33] = v55;
    *(v55 + 16) = v54;
    *(v55 + 24) = v27;
    *(v55 + 32) = 0;
    *(v55 + 40) = _swiftEmptyArrayStorage;
    *(v55 + 48) = v30;
    v56 = swift_task_alloc();
    v1[34] = v56;
    v57 = sub_100007224(&qword_100848F80, &qword_1006E91B0);
    *v56 = v1;
    v56[1] = sub_1005D52F0;

    return DIPRetrier.retry<A>(operation:)(v1 + 2, &unk_1006E9528, v55, v57);
  }
}

uint64_t sub_1005D52F0()
{
  *(*v1 + 280) = v0;

  if (v0)
  {
    v2 = sub_1005D5804;
  }

  else
  {
    v2 = sub_1005D5424;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1005D5424()
{
  v48 = v0;
  v1 = *(v0 + 248);
  v2 = *(v0 + 128);
  v3 = *(v0 + 104);
  v4 = *(v0 + 112);

  v5 = *(v4 + 8);
  v5(v2, v3);
  v6 = *(v0 + 16);
  v7 = *(v0 + 32);
  v46 = *(v0 + 24);
  if (*(v0 + 40))
  {
    v5(*(v0 + 136), *(v0 + 104));
  }

  else
  {
    v45 = v5;
    if (qword_100832D20 != -1)
    {
      swift_once();
    }

    v8 = qword_100882498;
    v9 = objc_allocWithZone(NSCachedURLResponse);
    isa = Data._bridgeToObjectiveC()().super.isa;
    v11 = [v9 initWithResponse:v7 data:isa];

    v12 = sub_100600EC4(v11, 0, 1);
    v44 = v7;
    if (v12)
    {
      v13 = v12;
      v14 = URLRequest._bridgeToObjectiveC()().super.isa;
      v15 = type metadata accessor for DIPURLCache();
      *(v0 + 48) = v8;
      *(v0 + 56) = v15;
      objc_msgSendSuper2((v0 + 48), "storeCachedResponse:forRequest:", v13, v14);

      v11 = v14;
    }

    v16 = *(v0 + 216);
    v17 = *(v0 + 160);
    v18 = *(v0 + 144);
    v19 = *(v0 + 64);

    defaultLogger()();
    v16(v17, v19, v18);
    v20 = Logger.logObject.getter();
    v40 = static os_log_type_t.debug.getter();
    v21 = os_log_type_enabled(v20, v40);
    v22 = *(v0 + 232);
    v23 = *(v0 + 200);
    v41 = *(v0 + 240);
    v24 = *(v0 + 160);
    v26 = *(v0 + 136);
    v25 = *(v0 + 144);
    v42 = *(v0 + 184);
    v43 = *(v0 + 104);
    if (v21)
    {
      v38 = *(v0 + 232);
      v27 = swift_slowAlloc();
      v37 = v23;
      v28 = swift_slowAlloc();
      v47 = v28;
      *v27 = 136315138;
      v36 = v26;
      v29 = URL.absoluteString.getter();
      v39 = v6;
      v31 = v30;
      v41(v24, v25);
      v32 = sub_100141FE4(v29, v31, &v47);
      v6 = v39;

      *(v27 + 4) = v32;
      _os_log_impl(&_mh_execute_header, v20, v40, "Image data successully cached for URL %s", v27, 0xCu);
      sub_10000BB78(v28);

      v38(v37, v42);
      v33 = v36;
    }

    else
    {

      v41(v24, v25);
      v22(v23, v42);
      v33 = v26;
    }

    v45(v33, v43);
  }

  v34 = *(v0 + 8);

  return v34(v6, v46);
}

uint64_t sub_1005D5804()
{
  v1 = v0[31];
  v2 = v0[16];
  v12 = v0[17];
  v3 = v0[14];
  v4 = v0[12];
  v5 = v0[13];
  v6 = v0[10];
  v7 = v0[11];

  v8 = *(v3 + 8);
  v8(v2, v5);
  _StringGuts.grow(_:)(46);

  v9._countAndFlagsBits = URL.absoluteString.getter();
  String.append(_:)(v9);

  (*(v7 + 104))(v4, enum case for DIPError.Code.internalError(_:), v6);
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_1002A7708(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v8(v12, v5);

  v10 = v0[1];

  return v10();
}

uint64_t sub_1005D5A90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[12] = a5;
  v6[13] = v5;
  v6[10] = a3;
  v6[11] = a4;
  v6[8] = a1;
  v6[9] = a2;
  v7 = type metadata accessor for DIPError.Code();
  v6[14] = v7;
  v6[15] = *(v7 - 8);
  v6[16] = swift_task_alloc();
  v8 = sub_100007224(&qword_1008495E0, &qword_1006E9558);
  v6[17] = v8;
  v6[18] = *(v8 - 8);
  v6[19] = swift_task_alloc();
  sub_100007224(&unk_10084A260, &qword_1006EA050);
  v6[20] = swift_task_alloc();
  sub_100007224(&qword_10083B038, &unk_1006D9160);
  v6[21] = swift_task_alloc();
  v6[22] = swift_task_alloc();
  v9 = type metadata accessor for URLRequest();
  v6[23] = v9;
  v6[24] = *(v9 - 8);
  v6[25] = swift_task_alloc();
  v6[26] = swift_task_alloc();
  v6[27] = swift_task_alloc();
  v10 = type metadata accessor for URL();
  v6[28] = v10;
  v6[29] = *(v10 - 8);
  v6[30] = swift_task_alloc();
  v6[31] = swift_task_alloc();
  v11 = type metadata accessor for DIPSignpost.Config();
  v6[32] = v11;
  v6[33] = *(v11 - 8);
  v6[34] = swift_task_alloc();
  v6[35] = swift_task_alloc();
  v12 = type metadata accessor for DIPSignpost();
  v6[36] = v12;
  v6[37] = *(v12 - 8);
  v6[38] = swift_task_alloc();
  v6[39] = swift_task_alloc();

  return _swift_task_switch(sub_1005D5DE8, 0, 0);
}

uint64_t sub_1005D5DE8()
{
  v1 = v0[13];
  v46 = v0[31];
  v47 = v0[11];
  v45 = v0[10];
  v3 = v0[8];
  v2 = v0[9];
  static DaemonSignposts.getStaticTCRequest.getter();
  DIPSignpost.init(_:)();
  sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
  v4 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
  v5 = (*(*v4 + 80) + 32) & ~*(*v4 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1006BF520;
  v7 = v6 + v5;
  v8 = (v7 + v4[14]);
  v9 = enum case for DIPError.PropertyKey.spProviderID(_:);
  v10 = type metadata accessor for DIPError.PropertyKey();
  (*(*(v10 - 8) + 104))(v7, v9, v10);
  v8[3] = &type metadata for String;
  v8[4] = &protocol witness table for String;
  *v8 = 0x61746E6567616DLL;
  v8[1] = 0xE700000000000000;
  v0[40] = sub_10003C9C0(v6);
  swift_setDeallocating();
  sub_10000BE18(v7, &qword_1008341D0, &unk_1006BF8D0);
  swift_deallocClassInstance();
  sub_1005CF338(v1 + OBJC_IVAR____TtC8coreidvd25DIPTopekaStaticWebService_baseURL, v3, v2, v45, v47, v46);
  v11 = v0[36];
  v12 = v0[37];
  v13 = v0[33];
  v48 = v0[32];
  v14 = v0[22];
  v15 = v0[20];
  v16 = v0[12];
  (*(v0[29] + 16))(v0[30], v0[31], v0[28]);
  URLRequest.init(url:cachePolicy:timeoutInterval:)();
  URLRequest.cachePolicy.setter();
  URLRequest.httpMethod.setter();
  v17 = *(v12 + 56);
  v17(v14, 1, 1, v11);
  sub_1005D7000(v16, v15);
  if ((*(v13 + 48))(v15, 1, v48) == 1)
  {
    sub_10000BE18(v0[20], &unk_10084A260, &qword_1006EA050);
  }

  else
  {
    v18 = v0[35];
    v19 = v0[36];
    v21 = v0[33];
    v20 = v0[34];
    v22 = v0[32];
    v24 = v0[21];
    v23 = v0[22];
    (*(v21 + 32))(v20, v0[20], v22);
    (*(v21 + 16))(v18, v20, v22);
    DIPSignpost.init(_:)();
    (*(v21 + 8))(v20, v22);
    v17(v24, 0, 1, v19);
    sub_1005D7AFC(v24, v23);
  }

  v25 = v0[26];
  v26 = *(v0[13] + OBJC_IVAR____TtC8coreidvd25DIPTopekaStaticWebService_httpSession);
  v27 = *(v0[24] + 16);
  v27(v25, v0[27], v0[23]);
  v28 = sub_1005BEE18(v25);
  v0[41] = v28;
  v29 = [objc_opt_self() standardUserDefaults];
  v30._countAndFlagsBits = static DaemonInternalDefaultsKeys.disableIfModifiedSinceHeader.getter();
  v31 = NSUserDefaults.internalBool(forKey:)(v30);

  if (!v31 && v28)
  {
    v32 = qword_100832D20;
    v33 = v28;
    if (v32 != -1)
    {
      swift_once();
    }

    v34 = sub_1005FFF28(v33);
    if (v35)
    {
      v36._object = 0x8000000100723320;
      v36._countAndFlagsBits = 0xD000000000000011;
      URLRequest.addValue(_:forHTTPHeaderField:)(*&v34, v36);
    }
  }

  v37 = v0[25];
  v38 = v0[23];
  v39 = v0[24];
  v27(v37, v0[26], v38);
  type metadata accessor for DIPHTTPSession.RequestContainer(0);
  v40 = swift_allocObject();
  v0[42] = v40;
  swift_defaultActor_initialize();
  (*(v39 + 32))(v40 + OBJC_IVAR____TtCFC8coreidvd14DIPHTTPSession14performRequestFzZTV10Foundation10URLRequest21acceptableStatusCodesGSaSi_11ignoreCacheSb11isAnonymousSb17overridingAltDSIDGSqSS__TVS1_4DataCSo13NSURLResponseSb_L_16RequestContainer_request, v37, v38);
  v41 = swift_task_alloc();
  v0[43] = v41;
  *(v41 + 16) = v40;
  *(v41 + 24) = v26;
  *(v41 + 32) = 0;
  *(v41 + 40) = _swiftEmptyArrayStorage;
  *(v41 + 48) = v28;
  v42 = swift_task_alloc();
  v0[44] = v42;
  v43 = sub_100007224(&qword_100848F80, &qword_1006E91B0);
  *v42 = v0;
  v42[1] = sub_1005D6480;

  return DIPRetrier.retry<A>(operation:)(v0 + 2, &unk_1006E9560, v41, v43);
}

uint64_t sub_1005D6480()
{
  *(*v1 + 360) = v0;

  if (v0)
  {
    v2 = sub_1005D65B4;
  }

  else
  {
    v2 = sub_1005D6894;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1005D65B4()
{
  v1 = v0[41];
  v2 = v0[26];
  v3 = v0[23];
  v4 = v0[24];

  v13 = *(v4 + 8);
  v13(v2, v3);
  v16 = v0[39];
  v5 = v0[37];
  v6 = v0[29];
  v11 = v0[28];
  v12 = v0[31];
  v9 = v0[23];
  v10 = v0[27];
  v14 = v0[22];
  v15 = v0[36];
  (*(v0[15] + 104))(v0[16], enum case for DIPError.Code.internalError(_:), v0[14]);
  type metadata accessor for DIPError();
  sub_1002A7708(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  swift_errorRetain();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v13(v10, v9);
  (*(v6 + 8))(v12, v11);
  (*(v5 + 8))(v16, v15);
  sub_10000BE18(v14, &qword_10083B038, &unk_1006D9160);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1005D6894()
{
  v1 = *(v0 + 328);
  v2 = *(v0 + 288);
  v3 = *(v0 + 296);
  v4 = *(v0 + 208);
  v5 = *(v0 + 184);
  v6 = *(v0 + 192);
  v7 = *(v0 + 176);

  v40 = *(v6 + 8);
  v40(v4, v5);
  v8 = *(v0 + 16);
  v9 = *(v0 + 24);

  if (!(*(v3 + 48))(v7, 1, v2))
  {
    v11 = *(v0 + 296);
    v10 = *(v0 + 304);
    v12 = *(v0 + 288);
    (*(v11 + 16))(v10, *(v0 + 176), v12);
    DIPSignpost.end(workflowID:isBackground:)(0, 2);
    (*(v11 + 8))(v10, v12);
  }

  v13 = *(v0 + 360);
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  sub_1005BE470(&qword_1008495E8, &qword_1008495E0, &qword_1006E9558);
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  if (v13)
  {
    sub_10000B90C(v8, v9);

    v14 = *(v0 + 296);
    v38 = *(v0 + 288);
    v39 = *(v0 + 312);
    v15 = *(v0 + 232);
    v35 = *(v0 + 224);
    v36 = *(v0 + 248);
    v33 = *(v0 + 184);
    v34 = *(v0 + 216);
    v37 = *(v0 + 176);
    (*(*(v0 + 120) + 104))(*(v0 + 128), enum case for DIPError.Code.internalError(_:), *(v0 + 112));
    type metadata accessor for DIPError();
    sub_1002A7708(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    swift_errorRetain();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v40(v34, v33);
    (*(v15 + 8))(v36, v35);
    (*(v14 + 8))(v39, v38);
    sub_10000BE18(v37, &qword_10083B038, &unk_1006D9160);

    v16 = *(v0 + 8);

    return v16();
  }

  else
  {
    v18 = *(v0 + 312);
    v19 = *(v0 + 296);
    v32 = *(v0 + 288);
    v20 = *(v0 + 232);
    v29 = *(v0 + 224);
    v30 = *(v0 + 248);
    v27 = *(v0 + 184);
    v28 = *(v0 + 216);
    v31 = *(v0 + 176);
    v22 = *(v0 + 144);
    v21 = *(v0 + 152);
    v23 = *(v0 + 136);

    DIPSignpost.end(workflowID:isBackground:)(0, 2);
    JWSSignedJSON.payload.getter();
    sub_10000B90C(v8, v9);
    (*(v22 + 8))(v21, v23);
    v40(v28, v27);
    (*(v20 + 8))(v30, v29);
    (*(v19 + 8))(v18, v32);
    v25 = *(v0 + 48);
    v24 = *(v0 + 56);
    sub_10000BE18(v31, &qword_10083B038, &unk_1006D9160);

    v26 = *(v0 + 8);

    return v26(v25, v24);
  }
}

uint64_t sub_1005D6E44()
{
  v1 = OBJC_IVAR____TtC8coreidvd25DIPTopekaStaticWebService_baseURL;
  v2 = type metadata accessor for URL();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for DIPTopekaStaticWebService(uint64_t a1)
{
  result = qword_100849528;
  if (!qword_100849528)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1005D6F58(uint64_t a1)
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

uint64_t sub_1005D7000(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007224(&unk_10084A260, &qword_1006EA050);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1005D7070(char a1)
{
  *(v1 + 880) = a1;
  v2 = type metadata accessor for Logger();
  *(v1 + 744) = v2;
  *(v1 + 752) = *(v2 - 8);
  *(v1 + 760) = swift_task_alloc();
  *(v1 + 768) = swift_task_alloc();
  *(v1 + 776) = swift_task_alloc();
  sub_100007224(&unk_100844540, &unk_1006BFBC0);
  *(v1 + 784) = swift_task_alloc();
  *(v1 + 792) = swift_task_alloc();
  v3 = type metadata accessor for URL();
  *(v1 + 800) = v3;
  *(v1 + 808) = *(v3 - 8);
  *(v1 + 816) = swift_task_alloc();
  *(v1 + 824) = swift_task_alloc();
  *(v1 + 832) = type metadata accessor for DIPHTTPSession.Configuration(0);
  *(v1 + 840) = swift_task_alloc();
  *(v1 + 848) = swift_task_alloc();

  return _swift_task_switch(sub_1005D7230, 0, 0);
}

uint64_t sub_1005D7230()
{
  if (qword_100832B60 != -1)
  {
    swift_once();
  }

  v1 = *(qword_100881E78 + 16);
  os_unfair_lock_lock(v1 + 54);
  sub_1000318FC(&v1[4], (v0 + 63));
  os_unfair_lock_unlock(v1 + 54);
  sub_100020260((v0 + 63), (v0 + 88));
  sub_100031918((v0 + 63));
  v0[107] = *sub_10000BA08(v0 + 88, v0[91]);
  v2 = swift_task_alloc();
  v0[108] = v2;
  *v2 = v0;
  v2[1] = sub_1005D7368;

  return sub_10050886C((v0 + 2));
}

uint64_t sub_1005D7368()
{
  v2 = *v1;
  *(*v1 + 872) = v0;

  if (v0)
  {
    v3 = *(v2 + 856);
    v4 = sub_1005D7914;
  }

  else
  {
    v4 = sub_1005D7484;
    v3 = 0;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1005D7484()
{
  v1 = *(v0 + 848);
  v2 = *(v0 + 832);
  v3 = *(v0 + 880);
  sub_10000BB78((v0 + 704));
  v4 = *(v0 + 56);
  v5 = *(v0 + 64);
  v6 = *(v0 + 312);
  v7 = *(v0 + 328);
  v8 = v2[6];
  *&v1[v8] = *(v0 + 72);
  v9 = enum case for DIPBackoffStrategy.exponential(_:);
  v10 = type metadata accessor for DIPBackoffStrategy();
  (*(*(v10 - 8) + 104))(&v1[v8], v9, v10);
  *v1 = v4;
  *(v1 + 1) = v5;
  v1[v2[7]] = 0;
  v1[v2[8]] = 0;
  v1[v2[9]] = 1;
  v11 = &v1[v2[10]];
  *v11 = 0;
  *(v11 + 1) = 0;
  if (v3)
  {
    if (v7)
    {
    }

    v12 = *(v0 + 808);
    v13 = *(v0 + 800);
    v14 = *(v0 + 784);
    sub_1000F2758(v0 + 16);
    URL.init(string:)();

    if ((*(v12 + 48))(v14, 1, v13) == 1)
    {
      sub_10000BE18(*(v0 + 784), &unk_100844540, &unk_1006BFBC0);
      defaultLogger()();
      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.debug.getter();
      v17 = os_log_type_enabled(v15, v16);
      v18 = *(v0 + 848);
      v19 = *(v0 + 768);
      v20 = *(v0 + 752);
      v21 = *(v0 + 744);
      if (v17)
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        v23 = "EnvironmentManager: topeka server resourcesBaseURL url is not a valid url";
LABEL_13:
        _os_log_impl(&_mh_execute_header, v15, v16, v23, v22, 2u);

        goto LABEL_14;
      }

      goto LABEL_14;
    }

    v24 = (v0 + 784);
  }

  else
  {
    if (v6)
    {
    }

    v25 = *(v0 + 808);
    v26 = *(v0 + 800);
    v27 = *(v0 + 792);
    sub_1000F2758(v0 + 16);
    URL.init(string:)();

    if ((*(v25 + 48))(v27, 1, v26) == 1)
    {
      sub_10000BE18(*(v0 + 792), &unk_100844540, &unk_1006BFBC0);
      defaultLogger()();
      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.debug.getter();
      v28 = os_log_type_enabled(v15, v16);
      v18 = *(v0 + 848);
      v19 = *(v0 + 776);
      v20 = *(v0 + 752);
      v21 = *(v0 + 744);
      if (v28)
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        v23 = "EnvironmentManager: topeka server getWorkflow url is not a valid url";
        goto LABEL_13;
      }

LABEL_14:

      (*(v20 + 8))(v19, v21);
      sub_1005D7B6C(v18, type metadata accessor for DIPHTTPSession.Configuration);
      v29 = 0;
      goto LABEL_17;
    }

    v24 = (v0 + 792);
  }

  v30 = *(v0 + 848);
  v31 = *(v0 + 840);
  v32 = *(v0 + 824);
  v33 = *(v0 + 816);
  v34 = *(v0 + 808);
  v35 = *(v0 + 800);
  (*(v34 + 32))(v32, *v24, v35);
  (*(v34 + 16))(v33, v32, v35);
  sub_1002BEB48(v30, v31);
  type metadata accessor for DIPTopekaStaticWebService(0);
  v29 = swift_allocObject();
  sub_1005CF7F4(v33, v31);
  (*(v34 + 8))(v32, v35);
  sub_1005D7B6C(v30, type metadata accessor for DIPHTTPSession.Configuration);
LABEL_17:

  v36 = *(v0 + 8);

  return v36(v29);
}

uint64_t sub_1005D7914()
{

  return _swift_task_switch(sub_1005D797C, 0, 0);
}

uint64_t sub_1005D797C()
{
  sub_10000BB78(v0 + 88);
  defaultLogger()();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.debug.getter();
  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[95];
  v5 = v0[94];
  v6 = v0[93];
  if (v3)
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "unable to fetch the baseURL from the config", v7, 2u);
  }

  (*(v5 + 8))(v4, v6);

  v8 = v0[1];

  return v8(0);
}

uint64_t sub_1005D7AFC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007224(&qword_10083B038, &unk_1006D9160);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1005D7B6C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1005D7BD0(uint64_t result, void *a2)
{
  v2 = *(result + 16);
  if (!v2)
  {
    return result;
  }

  for (i = (result + 40); ; i += 2)
  {
    v7 = *(i - 1);
    v6 = *i;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *a2;
    v24 = *a2;
    *a2 = 0x8000000000000000;
    v10 = sub_10003ADCC(v7, v6);
    v12 = v9[2];
    v13 = (v11 & 1) == 0;
    v14 = __OFADD__(v12, v13);
    v15 = v12 + v13;
    if (v14)
    {
      break;
    }

    v16 = v11;
    if (v9[3] < v15)
    {
      sub_100165FC0(v15, isUniquelyReferenced_nonNull_native);
      v10 = sub_10003ADCC(v7, v6);
      if ((v16 & 1) != (v17 & 1))
      {
        goto LABEL_18;
      }

LABEL_10:
      v18 = v24;
      if (v16)
      {
        goto LABEL_3;
      }

      goto LABEL_11;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_10;
    }

    v23 = v10;
    sub_10016F53C();
    v10 = v23;
    v18 = v24;
    if (v16)
    {
LABEL_3:
      v5 = (v18[7] + 16 * v10);
      *v5 = 1702195828;
      v5[1] = 0xE400000000000000;

      goto LABEL_4;
    }

LABEL_11:
    v18[(v10 >> 6) + 8] |= 1 << v10;
    v19 = (v18[6] + 16 * v10);
    *v19 = v7;
    v19[1] = v6;
    v20 = (v18[7] + 16 * v10);
    *v20 = 1702195828;
    v20[1] = 0xE400000000000000;
    v21 = v18[2];
    v14 = __OFADD__(v21, 1);
    v22 = v21 + 1;
    if (v14)
    {
      goto LABEL_17;
    }

    v18[2] = v22;

LABEL_4:
    *a2 = v18;

    if (!--v2)
    {
      return result;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

id sub_1005D7D88(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v48 = a4;
  v46 = a3;
  v42 = a1;
  v43 = a2;
  v5 = type metadata accessor for DIPHTTPSession.Configuration(0);
  v6 = v5 - 8;
  v7 = __chkstk_darwin(v5);
  v44 = (v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v7);
  v45 = v37 - v9;
  v10 = type metadata accessor for DIPBackoffStrategy();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DIPRetrier();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v4[OBJC_IVAR____TtC8coreidvd19DIPTopekaWebService_selfHealer + 8] = 0;
  swift_unknownObjectWeakInit();
  v18 = *(v6 + 32);
  v39 = v11;
  v19 = *(v11 + 16);
  v41 = v10;
  v19(v13, v48 + v18, v10);
  DIPRetrier.init(maxRetries:backoffStrategy:)();
  v20 = *(v15 + 32);
  v47 = v4;
  v40 = v14;
  v37[1] = v15 + 32;
  v38 = v20;
  v20(&v4[OBJC_IVAR____TtC8coreidvd19DIPTopekaWebService_retrier], v17, v14);
  if (qword_100832CF8 != -1)
  {
    swift_once();
  }

  v21 = *(qword_100882440 + 56);
  os_unfair_lock_lock(v21 + 126);
  memcpy(v52, &v21[4], sizeof(v52));
  sub_10000BBC4(v52, v53, &qword_100839998, &qword_1006DCAA0);
  os_unfair_lock_unlock(v21 + 126);
  memcpy(v53, v52, 0x1E8uLL);
  if (sub_1000A257C(v53) != 1)
  {
    sub_10000BE18(v52, &qword_100839998, &qword_1006DCAA0);
  }

  v22 = enum case for DIPBackoffStrategy.noBackoff(_:);
  v23 = *(v39 + 104);
  v24 = v41;
  v23(v13, enum case for DIPBackoffStrategy.noBackoff(_:), v41);
  DIPRetrier.init(maxRetries:backoffStrategy:)();
  v25 = v40;
  v26 = v38;
  v38(&v47[OBJC_IVAR____TtC8coreidvd19DIPTopekaWebService_redirectRetrier], v17, v40);
  v23(v13, v22, v24);
  DIPRetrier.init(maxRetries:backoffStrategy:)();
  v27 = v47;
  v26(&v47[OBJC_IVAR____TtC8coreidvd19DIPTopekaWebService_authRetrier], v17, v25);
  v28 = v46;
  sub_100020260(v46, v51);
  v29 = v48;
  v30 = v45;
  sub_1005FEB1C(v48, v45, type metadata accessor for DIPHTTPSession.Configuration);
  v31 = &v27[OBJC_IVAR____TtC8coreidvd13DIPWebService_conversation];
  v32 = v43;
  *v31 = v42;
  v31[1] = v32;
  sub_100020260(v51, v50);
  v33 = v44;
  sub_1005FEB1C(v30, v44, type metadata accessor for DIPHTTPSession.Configuration);
  type metadata accessor for DIPHTTPSession(0);
  swift_allocObject();
  *&v27[OBJC_IVAR____TtC8coreidvd13DIPWebService_httpSession] = sub_1005BE690(v50, v33);
  v34 = type metadata accessor for DIPWebService();
  v49.receiver = v27;
  v49.super_class = v34;
  v35 = objc_msgSendSuper2(&v49, "init");
  sub_1005FEB84(v29, type metadata accessor for DIPHTTPSession.Configuration);
  sub_10000BB78(v28);
  sub_1005FEB84(v30, type metadata accessor for DIPHTTPSession.Configuration);
  sub_10000BB78(v51);
  return v35;
}

void sub_1005D8250(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = type metadata accessor for DeviceInformationProvider();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v19[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v11 = a2;
  }

  else
  {
    sub_100020260(*(v3 + OBJC_IVAR____TtC8coreidvd13DIPWebService_httpSession) + OBJC_IVAR____TtC8coreidvd14DIPHTTPSession_accountManager, v19);
    sub_10000BA08(v19, v19[3]);
    a1 = dispatch thunk of DIPAccountManagerProtocol.appleAuthHeader(_:)();
    v11 = v12;
    sub_10000BB78(v19);
  }

  DeviceInformationProvider.init()();
  v13 = DeviceInformationProvider.uniqueDeviceID.getter();
  v15 = v14;
  (*(v8 + 8))(v10, v7);
  if (qword_100832D18 != -1)
  {
    swift_once();
  }

  v16 = xmmword_100882478;

  *a3 = a1;
  a3[1] = v11;
  a3[2] = v13;
  a3[3] = v15;
  a3[4] = v16;
  a3[5] = v17;
}

uint64_t sub_1005D8408(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5)
{
  *(v6 + 632) = v5;
  *(v6 + 857) = a5;
  *(v6 + 624) = a4;
  *(v6 + 856) = a3;
  *(v6 + 616) = a2;
  *(v6 + 608) = a1;
  v7 = type metadata accessor for DIPError.Code();
  *(v6 + 640) = v7;
  *(v6 + 648) = *(v7 - 8);
  *(v6 + 656) = swift_task_alloc();
  sub_100007224(&unk_100844540, &unk_1006BFBC0);
  *(v6 + 664) = swift_task_alloc();
  sub_100007224(&unk_10084A260, &qword_1006EA050);
  *(v6 + 672) = swift_task_alloc();
  sub_100007224(&qword_10083B038, &unk_1006D9160);
  *(v6 + 680) = swift_task_alloc();
  *(v6 + 688) = swift_task_alloc();
  v8 = type metadata accessor for DIPSignpost.Config();
  *(v6 + 696) = v8;
  *(v6 + 704) = *(v8 - 8);
  *(v6 + 712) = swift_task_alloc();
  *(v6 + 720) = swift_task_alloc();
  v9 = type metadata accessor for DIPSignpost();
  *(v6 + 728) = v9;
  *(v6 + 736) = *(v9 - 8);
  *(v6 + 744) = swift_task_alloc();
  *(v6 + 752) = swift_task_alloc();

  return _swift_task_switch(sub_1005D8660, 0, 0);
}

uint64_t sub_1005D8660()
{
  v1 = *(v0 + 856);
  static DaemonSignposts.workflowRecommendationRequest.getter();
  DIPSignpost.init(_:)();
  if (!v1)
  {
    v3 = 0x726F772F312F312FLL;

    goto LABEL_5;
  }

  v2 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v2)
  {
    v3 = 0x726F772F312F312FLL;
LABEL_5:
    v4 = 0xED0000776F6C666BLL;
    goto LABEL_7;
  }

  v4 = 0x8000000100725760;
  v3 = 0xD000000000000016;
LABEL_7:
  *(v0 + 768) = v4;
  *(v0 + 760) = v3;
  *(v0 + 600) = &_swiftEmptyDictionarySingleton;
  v5 = objc_opt_self();
  v6 = [v5 standardUserDefaults];
  v7._countAndFlagsBits = static DaemonInternalDefaultsKeys.userAgent.getter();
  v8 = NSUserDefaults.internalString(forKey:)(v7);

  if (v8.value._object)
  {
    sub_10014BC18(v8.value._countAndFlagsBits, v8.value._object, 0x6567412D72657355, 0xEA0000000000746ELL);
  }

  v9 = [v5 standardUserDefaults];
  v10._countAndFlagsBits = static DaemonInternalDefaultsKeys.iqCriteriaEnvOverride.getter();
  v11 = NSUserDefaults.internalString(forKey:)(v10);

  if (v11.value._object)
  {
    sub_10014BC18(v11.value._countAndFlagsBits, v11.value._object, 0x564F2D564E452D58, 0xEE00454449525245);
  }

  v12 = *(v0 + 704);
  v13 = *(v0 + 696);
  v14 = *(v0 + 672);
  v15 = *(v0 + 624);
  v16 = *(*(v0 + 736) + 56);
  v16(*(v0 + 688), 1, 1, *(v0 + 728));
  sub_10000BBC4(v15, v14, &unk_10084A260, &qword_1006EA050);
  if ((*(v12 + 48))(v14, 1, v13) == 1)
  {
    sub_10000BE18(*(v0 + 672), &unk_10084A260, &qword_1006EA050);
  }

  else
  {
    v17 = *(v0 + 720);
    v18 = *(v0 + 712);
    v19 = v3;
    v20 = *(v0 + 704);
    v21 = *(v0 + 696);
    v43 = *(v0 + 688);
    v44 = *(v0 + 728);
    v22 = v4;
    v23 = *(v0 + 680);
    (*(v20 + 32))(v18, *(v0 + 672), v21);
    (*(v20 + 16))(v17, v18, v21);
    DIPSignpost.init(_:)();
    (*(v20 + 8))(v18, v21);
    v3 = v19;
    v16(v23, 0, 1, v44);
    v24 = v23;
    v4 = v22;
    sub_1005D7AFC(v24, v43);
  }

  v25 = *(v0 + 664);
  v26 = *(v0 + 608);
  *(v0 + 560) = &type metadata for WorkflowRecommendationRequest;
  v27 = swift_allocObject();
  *(v0 + 536) = v27;
  v28 = *v26;
  v29 = *(v26 + 16);
  v30 = *(v26 + 48);
  *(v27 + 48) = *(v26 + 32);
  *(v27 + 64) = v30;
  *(v27 + 16) = v28;
  *(v27 + 32) = v29;
  v31 = *(v26 + 64);
  v32 = *(v26 + 80);
  v33 = *(v26 + 112);
  *(v27 + 112) = *(v26 + 96);
  *(v27 + 128) = v33;
  *(v27 + 80) = v31;
  *(v27 + 96) = v32;
  v34 = *(v26 + 128);
  v35 = *(v26 + 144);
  v36 = *(v26 + 160);
  *(v27 + 192) = *(v26 + 176);
  *(v27 + 160) = v35;
  *(v27 + 176) = v36;
  *(v27 + 144) = v34;
  v37 = *(v0 + 600);
  *(v0 + 776) = v37;
  v38 = type metadata accessor for URL();
  (*(*(v38 - 8) + 56))(v25, 1, 1, v38);
  sub_1000B2030(v26, v0 + 16);
  v39 = swift_task_alloc();
  *(v0 + 784) = v39;
  *v39 = v0;
  v39[1] = sub_1005D8AF8;
  v40 = *(v0 + 664);
  v41 = *(v0 + 857);

  return sub_1005F4FEC(v0 + 536, v3, v4, v37, v41, v40);
}

uint64_t sub_1005D8AF8(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *v4;
  v6[99] = a1;
  v6[100] = a2;
  v6[101] = v3;

  sub_10000BE18(v6[83], &unk_100844540, &unk_1006BFBC0);

  if (v3)
  {
    v7 = sub_1005DA43C;
  }

  else
  {
    sub_10000BB78(v6 + 67);

    v7 = sub_1005D8C74;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1005D8C74()
{
  v1 = (v0 + 200);
  v2 = *(v0 + 736);
  v3 = *(v0 + 728);
  v4 = *(v0 + 688);
  if (!(*(v2 + 48))(v4, 1, v3))
  {
    v5 = *(v0 + 744);
    (*(v2 + 16))(v5, v4, v3);
    DIPSignpost.end(workflowID:isBackground:)(0, 2);
    (*(v2 + 8))(v5, v3);
  }

  v6 = *(v0 + 808);
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  sub_1000A7CAC();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  if (v6)
  {

    v7 = *(v0 + 800);
    v8 = *(v0 + 792);
    (*(*(v0 + 648) + 104))(*(v0 + 656), enum case for DIPError.Code.serverResponseInconsistent(_:), *(v0 + 640));
    swift_errorRetain();
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1005FEAD4(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    sub_10000B90C(v8, v7);
    v43 = *(v0 + 760);
    v44 = *(v0 + 768);
    v50 = *(v0 + 752);
    v48 = *(v0 + 736);
    v49 = *(v0 + 728);
    v51 = *(v0 + 688);
    v45 = *(v0 + 648);
    v46 = *(v0 + 656);
    v47 = *(v0 + 640);
    v41 = *(v0 + 632);
    v42 = *(v0 + 608);
    sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
    v9 = sub_100007224(&qword_1008341D0, &unk_1006BF8D0);
    v10 = *(*(v9 - 8) + 72);
    v11 = (*(*(v9 - 8) + 80) + 32) & ~*(*(v9 - 8) + 80);
    v40 = 2 * v10;
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1006BFF90;
    v13 = v12 + v11;
    v14 = (v13 + *(v9 + 48));
    v15 = enum case for DIPError.PropertyKey.conversationID(_:);
    v16 = type metadata accessor for DIPError.PropertyKey();
    v17 = *(*(v16 - 8) + 104);
    v17(v13, v15, v16);
    v18 = *(v41 + OBJC_IVAR____TtC8coreidvd13DIPWebService_conversation);
    v19 = *(v41 + OBJC_IVAR____TtC8coreidvd13DIPWebService_conversation + 8);
    v14[3] = &type metadata for String;
    v14[4] = &protocol witness table for String;
    *v14 = v18;
    v14[1] = v19;
    v20 = v13 + v10;
    v21 = v13 + v10 + *(v9 + 48);
    v17(v20, enum case for DIPError.PropertyKey.requestID(_:), v16);
    *(v0 + 568) = *(v42 + 16);
    *(v21 + 24) = &type metadata for String;
    *(v21 + 32) = &protocol witness table for String;
    *v21 = *(v42 + 16);
    v22 = (v13 + v40 + *(v9 + 48));
    v17(v13 + v40, enum case for DIPError.PropertyKey.serverURL(_:), v16);
    v22[3] = &type metadata for String;
    v22[4] = &protocol witness table for String;
    *v22 = v43;
    v22[1] = v44;
    swift_errorRetain();

    sub_10004D7A0(v0 + 568, v0 + 584);
    sub_10003C9C0(v12);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    (*(v45 + 104))(v46, enum case for DIPError.Code.internalError(_:), v47);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    (*(v48 + 8))(v50, v49);
    sub_10000BE18(v51, &qword_10083B038, &unk_1006D9160);

    v23 = *(v0 + 8);

    return v23();
  }

  else
  {
    v25 = *(v0 + 608);

    v27 = *(v0 + 264);
    v26 = *(v0 + 280);
    v28 = *(v0 + 248);
    *(v0 + 384) = v27;
    *(v0 + 400) = v26;
    v29 = *(v0 + 280);
    *(v0 + 416) = *(v0 + 296);
    v30 = *(v0 + 216);
    v31 = *v1;
    v32 = v30;
    *(v0 + 320) = *v1;
    *(v0 + 336) = v30;
    v34 = *(v0 + 232);
    v33 = *(v0 + 248);
    *(v0 + 352) = v34;
    *(v0 + 368) = v33;
    *(v0 + 432) = *(v0 + 312);
    v35 = *v25;
    v36 = v25[1];
    v37 = v25[2];
    v38 = v25[3];
    *(v0 + 504) = v27;
    *(v0 + 520) = v29;
    *(v0 + 472) = v34;
    *(v0 + 488) = v28;
    *(v0 + 440) = v31;
    *(v0 + 456) = v32;
    v39 = swift_task_alloc();
    *(v0 + 816) = v39;
    *v39 = v0;
    v39[1] = sub_1005D93DC;

    return sub_1005F7D7C(v35, v36, v37, v38, v0 + 440, 0x61746E6567616DLL, 0xE700000000000000);
  }
}

uint64_t sub_1005D93DC(uint64_t a1)
{
  *(*v1 + 824) = a1;

  return _swift_task_switch(sub_1005D94DC, 0, 0);
}

uint64_t sub_1005D94DC()
{
  if (*(v0 + 824))
  {
    v34 = enum case for DIPError.Code.internalError(_:);
    (*(*(v0 + 648) + 104))(*(v0 + 656));
    swift_errorRetain();
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1005FEAD4(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    sub_1000AD164(v0 + 320);
    v33 = *(v0 + 800);
    v1 = *(v0 + 792);
    (*(*(v0 + 648) + 104))(*(v0 + 656), enum case for DIPError.Code.serverResponseInconsistent(_:), *(v0 + 640));
    swift_errorRetain();
    sub_1000402AC(_swiftEmptyArrayStorage);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    sub_10000B90C(v1, v33);
    v24 = *(v0 + 760);
    v25 = *(v0 + 768);
    v31 = *(v0 + 752);
    v29 = *(v0 + 736);
    v30 = *(v0 + 728);
    v32 = *(v0 + 688);
    v26 = *(v0 + 648);
    v27 = *(v0 + 656);
    v28 = *(v0 + 640);
    v22 = *(v0 + 632);
    v23 = *(v0 + 608);
    sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
    v2 = sub_100007224(&qword_1008341D0, &unk_1006BF8D0);
    v3 = *(*(v2 - 8) + 72);
    v4 = (*(*(v2 - 8) + 80) + 32) & ~*(*(v2 - 8) + 80);
    v21 = 2 * v3;
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1006BFF90;
    v6 = v5 + v4;
    v7 = (v5 + v4 + *(v2 + 48));
    v8 = enum case for DIPError.PropertyKey.conversationID(_:);
    v9 = type metadata accessor for DIPError.PropertyKey();
    v10 = *(*(v9 - 8) + 104);
    v10(v6, v8, v9);
    v11 = *(v22 + OBJC_IVAR____TtC8coreidvd13DIPWebService_conversation);
    v12 = *(v22 + OBJC_IVAR____TtC8coreidvd13DIPWebService_conversation + 8);
    v7[3] = &type metadata for String;
    v7[4] = &protocol witness table for String;
    *v7 = v11;
    v7[1] = v12;
    v13 = v6 + v3;
    v14 = v6 + v3 + *(v2 + 48);
    v10(v13, enum case for DIPError.PropertyKey.requestID(_:), v9);
    *(v0 + 568) = *(v23 + 16);
    *(v14 + 24) = &type metadata for String;
    *(v14 + 32) = &protocol witness table for String;
    *v14 = *(v23 + 16);
    v15 = (v6 + v21 + *(v2 + 48));
    v10(v6 + v21, enum case for DIPError.PropertyKey.serverURL(_:), v9);
    v15[3] = &type metadata for String;
    v15[4] = &protocol witness table for String;
    *v15 = v24;
    v15[1] = v25;
    swift_errorRetain();

    sub_10004D7A0(v0 + 568, v0 + 584);
    sub_10003C9C0(v5);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    (*(v26 + 104))(v27, v34, v28);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    (*(v29 + 8))(v31, v30);
    sub_10000BE18(v32, &qword_10083B038, &unk_1006D9160);

    v16 = *(v0 + 8);

    return v16();
  }

  else
  {
    v18 = *(v0 + 432);
    type metadata accessor for LegacySynthesizedWorkflows();
    swift_allocObject();

    v19 = swift_task_alloc();
    *(v0 + 832) = v19;
    *v19 = v0;
    v19[1] = sub_1005D9BDC;
    v20 = *(v0 + 616);

    return sub_1000C6188(v18, v20);
  }
}

uint64_t sub_1005D9BDC(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 840) = v1;

  if (v1)
  {
    v5 = sub_1005D9EA8;
  }

  else
  {

    *(v4 + 848) = a1;
    v5 = sub_1005D9D0C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1005D9D0C()
{
  v1 = v0[100];
  v2 = v0[99];
  v3 = v0[94];
  v4 = v0[92];
  v5 = v0[91];
  v6 = v0[86];
  v7.value._countAndFlagsBits = sub_1000CB118();
  DIPSignpost.end(workflowID:isBackground:)(v7, 2);

  v8._countAndFlagsBits = 0x3462386632356263;
  v9._object = 0x8000000100725740;
  v8._object = 0xE800000000000000;
  v9._countAndFlagsBits = 0xD000000000000019;
  logMilestone(tag:description:)(v8, v9);
  sub_10000B90C(v2, v1);
  sub_1000AD164((v0 + 40));
  (*(v4 + 8))(v3, v5);
  sub_10000BE18(v6, &qword_10083B038, &unk_1006D9160);

  v10 = v0[1];
  v11 = v0[106];

  return v10(v11);
}

uint64_t sub_1005D9EA8()
{
  sub_1000AD164(v0 + 320);
  v1 = *(v0 + 800);
  v2 = *(v0 + 792);
  (*(*(v0 + 648) + 104))(*(v0 + 656), enum case for DIPError.Code.serverResponseInconsistent(_:), *(v0 + 640));
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_1005FEAD4(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  sub_10000B90C(v2, v1);
  v22 = *(v0 + 760);
  v23 = *(v0 + 768);
  v29 = *(v0 + 752);
  v27 = *(v0 + 736);
  v28 = *(v0 + 728);
  v30 = *(v0 + 688);
  v24 = *(v0 + 648);
  v25 = *(v0 + 656);
  v26 = *(v0 + 640);
  v20 = *(v0 + 632);
  v21 = *(v0 + 608);
  sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
  v3 = sub_100007224(&qword_1008341D0, &unk_1006BF8D0);
  v4 = *(*(v3 - 8) + 72);
  v5 = (*(*(v3 - 8) + 80) + 32) & ~*(*(v3 - 8) + 80);
  v19 = 2 * v4;
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1006BFF90;
  v7 = v6 + v5;
  v8 = (v7 + *(v3 + 48));
  v9 = enum case for DIPError.PropertyKey.conversationID(_:);
  v10 = type metadata accessor for DIPError.PropertyKey();
  v11 = *(*(v10 - 8) + 104);
  v11(v7, v9, v10);
  v12 = *(v20 + OBJC_IVAR____TtC8coreidvd13DIPWebService_conversation);
  v13 = *(v20 + OBJC_IVAR____TtC8coreidvd13DIPWebService_conversation + 8);
  v8[3] = &type metadata for String;
  v8[4] = &protocol witness table for String;
  *v8 = v12;
  v8[1] = v13;
  v14 = v7 + v4;
  v15 = v7 + v4 + *(v3 + 48);
  v11(v14, enum case for DIPError.PropertyKey.requestID(_:), v10);
  *(v0 + 568) = *(v21 + 16);
  *(v15 + 24) = &type metadata for String;
  *(v15 + 32) = &protocol witness table for String;
  *v15 = *(v21 + 16);
  v16 = (v7 + v19 + *(v3 + 48));
  v11(v7 + v19, enum case for DIPError.PropertyKey.serverURL(_:), v10);
  v16[3] = &type metadata for String;
  v16[4] = &protocol witness table for String;
  *v16 = v22;
  v16[1] = v23;
  swift_errorRetain();

  sub_10004D7A0(v0 + 568, v0 + 584);
  sub_10003C9C0(v6);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  (*(v24 + 104))(v25, enum case for DIPError.Code.internalError(_:), v26);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  (*(v27 + 8))(v29, v28);
  sub_10000BE18(v30, &qword_10083B038, &unk_1006D9160);

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_1005DA43C()
{
  v1 = *(v0 + 656);
  v2 = *(v0 + 648);
  sub_10000BB78((v0 + 536));
  v31 = enum case for DIPError.Code.internalError(_:);
  (*(v2 + 104))(v1);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_1005FEAD4(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v22 = *(v0 + 760);
  v23 = *(v0 + 768);
  v29 = *(v0 + 752);
  v27 = *(v0 + 736);
  v28 = *(v0 + 728);
  v30 = *(v0 + 688);
  v24 = *(v0 + 648);
  v25 = *(v0 + 656);
  v26 = *(v0 + 640);
  v20 = *(v0 + 632);
  v21 = *(v0 + 608);
  sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
  v3 = sub_100007224(&qword_1008341D0, &unk_1006BF8D0);
  v4 = *(*(v3 - 8) + 72);
  v5 = (*(*(v3 - 8) + 80) + 32) & ~*(*(v3 - 8) + 80);
  v19 = 2 * v4;
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1006BFF90;
  v7 = v6 + v5;
  v8 = (v6 + v5 + *(v3 + 48));
  v9 = enum case for DIPError.PropertyKey.conversationID(_:);
  v10 = type metadata accessor for DIPError.PropertyKey();
  v11 = *(*(v10 - 8) + 104);
  v11(v7, v9, v10);
  v12 = *(v20 + OBJC_IVAR____TtC8coreidvd13DIPWebService_conversation);
  v13 = *(v20 + OBJC_IVAR____TtC8coreidvd13DIPWebService_conversation + 8);
  v8[3] = &type metadata for String;
  v8[4] = &protocol witness table for String;
  *v8 = v12;
  v8[1] = v13;
  v14 = v7 + v4;
  v15 = v7 + v4 + *(v3 + 48);
  v11(v14, enum case for DIPError.PropertyKey.requestID(_:), v10);
  *(v0 + 568) = *(v21 + 16);
  *(v15 + 24) = &type metadata for String;
  *(v15 + 32) = &protocol witness table for String;
  *v15 = *(v21 + 16);
  v16 = (v7 + v19 + *(v3 + 48));
  v11(v7 + v19, enum case for DIPError.PropertyKey.serverURL(_:), v10);
  v16[3] = &type metadata for String;
  v16[4] = &protocol witness table for String;
  *v16 = v22;
  v16[1] = v23;
  swift_errorRetain();

  sub_10004D7A0(v0 + 568, v0 + 584);
  sub_10003C9C0(v6);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  (*(v24 + 104))(v25, v31, v26);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  (*(v27 + 8))(v29, v28);
  sub_10000BE18(v30, &qword_10083B038, &unk_1006D9160);

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_1005DA9C4(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5)
{
  *(v6 + 608) = v5;
  *(v6 + 841) = a5;
  *(v6 + 600) = a4;
  *(v6 + 840) = a3;
  *(v6 + 592) = a2;
  *(v6 + 584) = a1;
  *(v6 + 616) = type metadata accessor for WorkflowRecommendationResponse(0);
  *(v6 + 624) = swift_task_alloc();
  v7 = type metadata accessor for DIPError.Code();
  *(v6 + 632) = v7;
  *(v6 + 640) = *(v7 - 8);
  *(v6 + 648) = swift_task_alloc();
  sub_100007224(&unk_100844540, &unk_1006BFBC0);
  *(v6 + 656) = swift_task_alloc();
  sub_100007224(&unk_10084A260, &qword_1006EA050);
  *(v6 + 664) = swift_task_alloc();
  sub_100007224(&qword_10083B038, &unk_1006D9160);
  *(v6 + 672) = swift_task_alloc();
  *(v6 + 680) = swift_task_alloc();
  v8 = type metadata accessor for DIPSignpost.Config();
  *(v6 + 688) = v8;
  *(v6 + 696) = *(v8 - 8);
  *(v6 + 704) = swift_task_alloc();
  *(v6 + 712) = swift_task_alloc();
  v9 = type metadata accessor for DIPSignpost();
  *(v6 + 720) = v9;
  *(v6 + 728) = *(v9 - 8);
  *(v6 + 736) = swift_task_alloc();
  *(v6 + 744) = swift_task_alloc();

  return _swift_task_switch(sub_1005DAC4C, 0, 0);
}

uint64_t sub_1005DAC4C()
{
  v1 = 0xED0000776F6C666BLL;
  v2 = *(v0 + 840);
  static DaemonSignposts.workflowRecommendationRequest.getter();
  DIPSignpost.init(_:)();
  if (v2)
  {
    if (v2 == 1)
    {
      v1 = 0x8000000100725760;
      v3 = 0xD000000000000016;
      goto LABEL_7;
    }

    v4 = 808399663;
  }

  else
  {
    v4 = 825176367;
  }

  v3 = v4 | 0x726F772F00000000;
LABEL_7:
  v53 = v3;
  v54 = v1;
  *(v0 + 760) = v1;
  *(v0 + 752) = v3;
  v5 = *(v0 + 728);
  v50 = *(v0 + 696);
  v51 = *(v0 + 688);
  v46 = *(v0 + 680);
  v47 = *(v0 + 720);
  v48 = *(v0 + 600);
  v49 = *(v0 + 664);
  sub_100007224(&qword_100849720, &qword_1006E9748);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1006BFF90;
  *(inited + 32) = 0x6567412D72657355;
  *(inited + 40) = 0xEA0000000000746ELL;
  v7 = objc_opt_self();
  v8 = [v7 standardUserDefaults];
  v9._countAndFlagsBits = static DaemonInternalDefaultsKeys.userAgent.getter();
  v10 = NSUserDefaults.internalString(forKey:)(v9);

  *(inited + 48) = v10;
  strcpy((inited + 64), "X-ENV-OVERRIDE");
  *(inited + 79) = -18;
  v11 = [v7 standardUserDefaults];
  v12._countAndFlagsBits = static DaemonInternalDefaultsKeys.iqCriteriaEnvOverride.getter();
  v13 = NSUserDefaults.internalString(forKey:)(v12);

  *(inited + 80) = v13;
  *(inited + 96) = 0xD000000000000024;
  *(inited + 104) = 0x8000000100725600;
  v14 = [v7 standardUserDefaults];
  v15._countAndFlagsBits = static DaemonInternalDefaultsKeys.forceDynamicWorkflowResponseStatus.getter();
  v16 = NSUserDefaults.internalString(forKey:)(v15);

  *(inited + 112) = v16;
  v17 = sub_10003EF28(inited);
  swift_setDeallocating();
  sub_100007224(&qword_100849728, &qword_1006E9750);
  swift_arrayDestroy();
  sub_1005DCAC0(v17);
  v19 = v18;
  *(v0 + 768) = v18;

  v20 = *(v5 + 56);
  v20(v46, 1, 1, v47);
  sub_10000BBC4(v48, v49, &unk_10084A260, &qword_1006EA050);
  if ((*(v50 + 48))(v49, 1, v51) == 1)
  {
    sub_10000BE18(*(v0 + 664), &unk_10084A260, &qword_1006EA050);
  }

  else
  {
    v52 = *(v0 + 720);
    v21 = *(v0 + 712);
    v22 = v19;
    v23 = *(v0 + 704);
    v24 = *(v0 + 696);
    v25 = *(v0 + 688);
    v26 = *(v0 + 680);
    v27 = *(v0 + 672);
    (*(v24 + 32))(v23, *(v0 + 664), v25);
    (*(v24 + 16))(v21, v23, v25);
    DIPSignpost.init(_:)();
    v28 = v23;
    v19 = v22;
    (*(v24 + 8))(v28, v25);
    v20(v27, 0, 1, v52);
    sub_1005D7AFC(v27, v26);
  }

  v29 = *(v0 + 656);
  v30 = *(v0 + 592);
  *(v0 + 544) = &type metadata for WorkflowRecommendationRequest;
  v31 = swift_allocObject();
  *(v0 + 520) = v31;
  v32 = *(v30 + 48);
  v34 = *v30;
  v33 = *(v30 + 16);
  *(v31 + 48) = *(v30 + 32);
  *(v31 + 64) = v32;
  *(v31 + 16) = v34;
  *(v31 + 32) = v33;
  v35 = *(v30 + 112);
  v37 = *(v30 + 64);
  v36 = *(v30 + 80);
  *(v31 + 112) = *(v30 + 96);
  *(v31 + 128) = v35;
  *(v31 + 80) = v37;
  *(v31 + 96) = v36;
  v39 = *(v30 + 144);
  v38 = *(v30 + 160);
  v40 = *(v30 + 128);
  *(v31 + 192) = *(v30 + 176);
  *(v31 + 160) = v39;
  *(v31 + 176) = v38;
  *(v31 + 144) = v40;
  v41 = type metadata accessor for URL();
  (*(*(v41 - 8) + 56))(v29, 1, 1, v41);
  sub_1000B2030(v30, v0 + 16);
  v42 = swift_task_alloc();
  *(v0 + 776) = v42;
  *v42 = v0;
  v42[1] = sub_1005DB148;
  v43 = *(v0 + 656);
  v44 = *(v0 + 841);

  return sub_1005F4FEC(v0 + 520, v53, v54, v19, v44, v43);
}

uint64_t sub_1005DB148(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *v4;
  v6[98] = a1;
  v6[99] = a2;
  v6[100] = v3;

  sub_10000BE18(v6[82], &unk_100844540, &unk_1006BFBC0);

  if (v3)
  {
    v7 = sub_1005DC524;
  }

  else
  {
    sub_10000BB78(v6 + 65);

    v7 = sub_1005DB2DC;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1005DB2DC()
{
  v1 = *(v0 + 728);
  v2 = *(v0 + 720);
  v3 = *(v0 + 680);
  if (!(*(v1 + 48))(v3, 1, v2))
  {
    v4 = *(v0 + 736);
    (*(v1 + 16))(v4, v3, v2);
    DIPSignpost.end(workflowID:isBackground:)(0, 2);
    (*(v1 + 8))(v4, v2);
  }

  v5 = *(v0 + 800);
  *(v0 + 808) = type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  sub_1005FEA80();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  *(v0 + 816) = v5;
  if (v5)
  {
    v6 = *(v0 + 640);

    v7 = *(v6 + 104);
    v8 = *(v0 + 792);
    v9 = *(v0 + 784);
    v7(*(v0 + 648), enum case for DIPError.Code.dynamicWorkflowResponseHeaderMissing(_:), *(v0 + 632));
    swift_errorRetain();
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1005FEAD4(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    sub_10000B90C(v9, v8);
    v40 = *(v0 + 752);
    v41 = *(v0 + 760);
    v47 = *(v0 + 744);
    v45 = *(v0 + 728);
    v46 = *(v0 + 720);
    v48 = *(v0 + 680);
    v42 = *(v0 + 640);
    v43 = *(v0 + 648);
    v44 = *(v0 + 632);
    v38 = *(v0 + 608);
    v39 = *(v0 + 592);
    sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
    v10 = sub_100007224(&qword_1008341D0, &unk_1006BF8D0);
    v11 = *(*(v10 - 8) + 72);
    v12 = (*(*(v10 - 8) + 80) + 32) & ~*(*(v10 - 8) + 80);
    v37 = 2 * v11;
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1006BFF90;
    v14 = v13 + v12;
    v15 = (v14 + *(v10 + 48));
    v16 = enum case for DIPError.PropertyKey.conversationID(_:);
    v17 = type metadata accessor for DIPError.PropertyKey();
    v18 = *(*(v17 - 8) + 104);
    v18(v14, v16, v17);
    v19 = *(v38 + OBJC_IVAR____TtC8coreidvd13DIPWebService_conversation);
    v20 = *(v38 + OBJC_IVAR____TtC8coreidvd13DIPWebService_conversation + 8);
    v15[3] = &type metadata for String;
    v15[4] = &protocol witness table for String;
    *v15 = v19;
    v15[1] = v20;
    v21 = v14 + v11;
    v22 = v14 + v11 + *(v10 + 48);
    v18(v21, enum case for DIPError.PropertyKey.requestID(_:), v17);
    *(v0 + 552) = *(v39 + 16);
    *(v22 + 24) = &type metadata for String;
    *(v22 + 32) = &protocol witness table for String;
    *v22 = *(v39 + 16);
    v23 = (v14 + v37 + *(v10 + 48));
    v18(v14 + v37, enum case for DIPError.PropertyKey.serverURL(_:), v17);
    v23[3] = &type metadata for String;
    v23[4] = &protocol witness table for String;
    *v23 = v40;
    v23[1] = v41;
    swift_errorRetain();

    sub_10004D7A0(v0 + 552, v0 + 568);
    sub_10003C9C0(v13);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    (*(v42 + 104))(v43, enum case for DIPError.Code.internalError(_:), v44);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    (*(v45 + 8))(v47, v46);
    sub_10000BE18(v48, &qword_10083B038, &unk_1006D9160);

    v24 = *(v0 + 8);

    return v24();
  }

  else
  {
    v26 = *(v0 + 592);

    v27 = *(v0 + 472);
    *(v0 + 360) = *(v0 + 456);
    *(v0 + 376) = v27;
    v28 = *(v0 + 504);
    *(v0 + 392) = *(v0 + 488);
    *(v0 + 408) = v28;
    v29 = *(v0 + 440);
    *(v0 + 328) = *(v0 + 424);
    *(v0 + 344) = v29;
    v31 = *v26;
    v30 = v26[1];
    v32 = v26[2];
    v33 = v26[3];
    v34 = v26[10];
    v35 = v26[11];
    v36 = swift_task_alloc();
    *(v0 + 824) = v36;
    *v36 = v0;
    v36[1] = sub_1005DBA38;

    return sub_1005F7D7C(v31, v30, v32, v33, v0 + 328, v34, v35);
  }
}

uint64_t sub_1005DBA38(uint64_t a1)
{
  v2 = *v1;
  *(v2 + 832) = a1;

  sub_1000ACC70(v2 + 328);

  return _swift_task_switch(sub_1005DBB40, 0, 0);
}

uint64_t sub_1005DBB40()
{
  if (*(v0 + 832))
  {
    v45 = *(*(v0 + 640) + 104);
    v45(*(v0 + 648), enum case for DIPError.Code.internalError(_:), *(v0 + 632));
    swift_errorRetain();
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1005FEAD4(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v44 = *(v0 + 792);
    v1 = *(v0 + 784);
    v45(*(v0 + 648), enum case for DIPError.Code.dynamicWorkflowResponseHeaderMissing(_:), *(v0 + 632));
    swift_errorRetain();
    sub_1000402AC(_swiftEmptyArrayStorage);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v2 = v1;
    v3 = v44;
LABEL_5:
    sub_10000B90C(v2, v3);
    v36 = *(v0 + 760);
    v35 = *(v0 + 752);
    v40 = *(v0 + 728);
    v41 = *(v0 + 720);
    v42 = *(v0 + 744);
    v43 = *(v0 + 680);
    v37 = *(v0 + 640);
    v38 = *(v0 + 648);
    v39 = *(v0 + 632);
    v33 = *(v0 + 608);
    v34 = *(v0 + 592);
    sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
    v10 = sub_100007224(&qword_1008341D0, &unk_1006BF8D0);
    v11 = *(*(v10 - 8) + 72);
    v12 = (*(*(v10 - 8) + 80) + 32) & ~*(*(v10 - 8) + 80);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1006BFF90;
    v14 = v13 + v12;
    v15 = (v13 + v12 + *(v10 + 48));
    v16 = enum case for DIPError.PropertyKey.conversationID(_:);
    v17 = type metadata accessor for DIPError.PropertyKey();
    v18 = *(*(v17 - 8) + 104);
    v18(v14, v16, v17);
    v19 = *(v33 + OBJC_IVAR____TtC8coreidvd13DIPWebService_conversation);
    v20 = *(v33 + OBJC_IVAR____TtC8coreidvd13DIPWebService_conversation + 8);
    v15[3] = &type metadata for String;
    v15[4] = &protocol witness table for String;
    *v15 = v19;
    v15[1] = v20;
    v21 = v14 + v11 + *(v10 + 48);
    v18(v14 + v11, enum case for DIPError.PropertyKey.requestID(_:), v17);
    *(v0 + 552) = *(v34 + 16);
    *(v21 + 24) = &type metadata for String;
    *(v21 + 32) = &protocol witness table for String;
    *v21 = *(v34 + 16);
    v22 = (v14 + 2 * v11 + *(v10 + 48));
    v18(v14 + 2 * v11, enum case for DIPError.PropertyKey.serverURL(_:), v17);
    v22[3] = &type metadata for String;
    v22[4] = &protocol witness table for String;
    *v22 = v35;
    v22[1] = v36;
    swift_errorRetain();

    sub_10004D7A0(v0 + 552, v0 + 568);
    sub_10003C9C0(v13);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    (*(v37 + 104))(v38, enum case for DIPError.Code.internalError(_:), v39);
    type metadata accessor for DIPError();
    sub_1005FEAD4(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    (*(v40 + 8))(v42, v41);
    sub_10000BE18(v43, &qword_10083B038, &unk_1006D9160);

    v23 = *(v0 + 8);
    goto LABEL_6;
  }

  v4 = *(v0 + 816);
  swift_allocObject();
  JSONDecoder.init()();
  sub_1005FEAD4(&qword_100837430, type metadata accessor for WorkflowRecommendationResponse, &unk_1006D86F8);
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  v5 = *(v0 + 792);
  v6 = *(v0 + 784);
  if (v4)
  {
    v7 = *(v0 + 648);
    v8 = *(v0 + 640);
    v9 = *(v0 + 632);

    (*(v8 + 104))(v7, enum case for DIPError.Code.dynamicWorkflowResponseMismatchedFormat(_:), v9);
    swift_errorRetain();
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1005FEAD4(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v2 = v6;
    v3 = v5;
    goto LABEL_5;
  }

  v25 = *(v0 + 744);
  v26 = *(v0 + 728);
  v27 = *(v0 + 720);
  v28 = *(v0 + 680);
  v29 = *(v0 + 624);
  v30 = *(v0 + 584);

  sub_1005FEB1C(v29, v30, type metadata accessor for Workflow);
  DIPSignpost.end(workflowID:isBackground:)(*v30, 2);
  v31._countAndFlagsBits = 0xD000000000000019;
  v32._countAndFlagsBits = 0x3462386632356263;
  v31._object = 0x8000000100725740;
  v32._object = 0xE800000000000000;
  logMilestone(tag:description:)(v32, v31);
  sub_10000B90C(v6, v5);
  sub_1005FEB84(v29, type metadata accessor for WorkflowRecommendationResponse);
  (*(v26 + 8))(v25, v27);
  sub_10000BE18(v28, &qword_10083B038, &unk_1006D9160);

  v23 = *(v0 + 8);
LABEL_6:

  return v23();
}

uint64_t sub_1005DC524()
{
  v1 = *(v0 + 648);
  v2 = *(v0 + 640);
  sub_10000BB78((v0 + 520));
  v31 = enum case for DIPError.Code.internalError(_:);
  (*(v2 + 104))(v1);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_1005FEAD4(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v22 = *(v0 + 752);
  v23 = *(v0 + 760);
  v29 = *(v0 + 744);
  v27 = *(v0 + 728);
  v28 = *(v0 + 720);
  v30 = *(v0 + 680);
  v24 = *(v0 + 640);
  v25 = *(v0 + 648);
  v26 = *(v0 + 632);
  v20 = *(v0 + 608);
  v21 = *(v0 + 592);
  sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
  v3 = sub_100007224(&qword_1008341D0, &unk_1006BF8D0);
  v4 = *(*(v3 - 8) + 72);
  v5 = (*(*(v3 - 8) + 80) + 32) & ~*(*(v3 - 8) + 80);
  v19 = 2 * v4;
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1006BFF90;
  v7 = v6 + v5;
  v8 = (v6 + v5 + *(v3 + 48));
  v9 = enum case for DIPError.PropertyKey.conversationID(_:);
  v10 = type metadata accessor for DIPError.PropertyKey();
  v11 = *(*(v10 - 8) + 104);
  v11(v7, v9, v10);
  v12 = *(v20 + OBJC_IVAR____TtC8coreidvd13DIPWebService_conversation);
  v13 = *(v20 + OBJC_IVAR____TtC8coreidvd13DIPWebService_conversation + 8);
  v8[3] = &type metadata for String;
  v8[4] = &protocol witness table for String;
  *v8 = v12;
  v8[1] = v13;
  v14 = v7 + v4;
  v15 = v7 + v4 + *(v3 + 48);
  v11(v14, enum case for DIPError.PropertyKey.requestID(_:), v10);
  *(v0 + 552) = *(v21 + 16);
  *(v15 + 24) = &type metadata for String;
  *(v15 + 32) = &protocol witness table for String;
  *v15 = *(v21 + 16);
  v16 = (v7 + v19 + *(v3 + 48));
  v11(v7 + v19, enum case for DIPError.PropertyKey.serverURL(_:), v10);
  v16[3] = &type metadata for String;
  v16[4] = &protocol witness table for String;
  *v16 = v22;
  v16[1] = v23;
  swift_errorRetain();

  sub_10004D7A0(v0 + 552, v0 + 568);
  sub_10003C9C0(v6);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  (*(v24 + 104))(v25, v31, v26);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  (*(v27 + 8))(v29, v28);
  sub_10000BE18(v30, &qword_10083B038, &unk_1006D9160);

  v17 = *(v0 + 8);

  return v17();
}

void sub_1005DCAC0(uint64_t a1)
{
  v2 = v1;
  v4 = a1 + 64;
  v5 = 1 << *(a1 + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(a1 + 64);
  v8 = (v5 + 63) >> 6;

  v9 = 0;
  while (v7)
  {
LABEL_10:
    v11 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v12 = v11 | (v9 << 6);
    v13 = (*(a1 + 56) + 16 * v12);
    v14 = v13[1];
    if (v14)
    {
      v15 = *v13;
      v16 = HIBYTE(v14) & 0xF;
      if ((v14 & 0x2000000000000000) == 0)
      {
        v16 = v15 & 0xFFFFFFFFFFFFLL;
      }

      if (v16)
      {
        v34 = v2;
        v17 = (*(a1 + 48) + 16 * v12);
        v18 = *v17;
        v19 = *(&_swiftEmptyDictionarySingleton + 2);
        v35 = v17[1];
        if (*(&_swiftEmptyDictionarySingleton + 3) <= v19)
        {

          sub_100165FC0(v19 + 1, 1);
        }

        else
        {
        }

        Hasher.init(_seed:)();
        v33 = v18;
        String.hash(into:)();
        v20 = Hasher._finalize()();
        v21 = &_swiftEmptyDictionarySingleton + 64;
        v22 = -1 << *(&_swiftEmptyDictionarySingleton + 32);
        v23 = v20 & ~v22;
        v24 = v23 >> 6;
        if (((-1 << v23) & ~*(&_swiftEmptyDictionarySingleton + (v23 >> 6) + 8)) == 0)
        {
          v26 = 0;
          v27 = (63 - v22) >> 6;
          v2 = v34;
          while (++v24 != v27 || (v26 & 1) == 0)
          {
            v28 = v24 == v27;
            if (v24 == v27)
            {
              v24 = 0;
            }

            v26 |= v28;
            v29 = *&v21[8 * v24];
            if (v29 != -1)
            {
              v25 = __clz(__rbit64(~v29)) + (v24 << 6);
              goto LABEL_27;
            }
          }

          goto LABEL_30;
        }

        v25 = __clz(__rbit64((-1 << v23) & ~*(&_swiftEmptyDictionarySingleton + (v23 >> 6) + 8))) | v23 & 0x7FFFFFFFFFFFFFC0;
        v2 = v34;
LABEL_27:
        *&v21[(v25 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v25;
        v30 = 16 * v25;
        v31 = (*(&_swiftEmptyDictionarySingleton + 6) + v30);
        *v31 = v33;
        v31[1] = v35;
        v32 = (*(&_swiftEmptyDictionarySingleton + 7) + v30);
        *v32 = v15;
        v32[1] = v14;
        ++*(&_swiftEmptyDictionarySingleton + 2);
      }
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
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
}

uint64_t sub_1005DCD34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[36] = a5;
  v6[37] = v5;
  v6[34] = a3;
  v6[35] = a4;
  v6[32] = a1;
  v6[33] = a2;
  v7 = type metadata accessor for DIPError.Code();
  v6[38] = v7;
  v6[39] = *(v7 - 8);
  v6[40] = swift_task_alloc();
  type metadata accessor for DIPSignpost.Config();
  v6[41] = swift_task_alloc();
  v8 = type metadata accessor for DIPSignpost();
  v6[42] = v8;
  v6[43] = *(v8 - 8);
  v6[44] = swift_task_alloc();

  return _swift_task_switch(sub_1005DCE84, 0, 0);
}

uint64_t sub_1005DCE84()
{
  v1 = *(v0 + 296);
  v7 = *(v0 + 280);
  v3 = *(v0 + 264);
  v2 = *(v0 + 272);
  static DaemonSignposts.topekaNonceRequest.getter();
  DIPSignpost.init(_:)();
  v4 = swift_task_alloc();
  *(v0 + 360) = v4;
  *(v4 + 16) = v3;
  *(v4 + 24) = v1;
  *(v4 + 32) = v7;
  *(v4 + 48) = v2;
  v5 = swift_task_alloc();
  *(v0 + 368) = v5;
  *v5 = v0;
  v5[1] = sub_1005DCFA8;

  return DIPRetrier.retry<A>(operation:)(v0 + 16, &unk_1006E9730, v4, &type metadata for NonceResponse);
}

uint64_t sub_1005DCFA8()
{
  *(*v1 + 376) = v0;

  if (v0)
  {
    v2 = sub_1005DD1F0;
  }

  else
  {
    v2 = sub_1005DD0BC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1005DD0BC()
{
  v1 = *(v0 + 96);
  *(v0 + 200) = *(v0 + 80);
  *(v0 + 216) = v1;
  *(v0 + 232) = *(v0 + 112);
  v2 = *(v0 + 32);
  *(v0 + 136) = *(v0 + 16);
  *(v0 + 152) = v2;
  v3 = *(v0 + 64);
  *(v0 + 168) = *(v0 + 48);
  v4 = *(v0 + 352);
  v5 = *(v0 + 336);
  v6 = *(v0 + 344);
  v7 = *(v0 + 256);
  *(v0 + 248) = *(v0 + 128);
  *(v0 + 184) = v3;
  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  (*(v6 + 8))(v4, v5);
  v8 = *(v0 + 136);
  v9 = *(v0 + 152);
  v10 = *(v0 + 184);
  *(v7 + 32) = *(v0 + 168);
  *(v7 + 48) = v10;
  *v7 = v8;
  *(v7 + 16) = v9;
  v11 = *(v0 + 200);
  v12 = *(v0 + 216);
  v13 = *(v0 + 232);
  *(v7 + 112) = *(v0 + 248);
  *(v7 + 80) = v12;
  *(v7 + 96) = v13;
  *(v7 + 64) = v11;

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_1005DD1F0()
{
  v1 = v0[44];
  v2 = v0[42];
  v3 = v0[43];
  v4 = v0[40];
  v5 = v0[38];
  v6 = v0[39];

  (*(v6 + 104))(v4, enum case for DIPError.Code.internalError(_:), v5);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_1005FEAD4(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  (*(v3 + 8))(v1, v2);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1005DD3D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[128] = a6;
  v6[127] = a5;
  v6[126] = a4;
  v6[125] = a3;
  v6[124] = a2;
  v6[123] = a1;
  v7 = type metadata accessor for DIPError();
  v6[129] = v7;
  v6[130] = *(v7 - 8);
  v6[131] = swift_task_alloc();
  sub_100007224(&qword_10083B020, &unk_1006D8ED0);
  v6[132] = swift_task_alloc();
  v6[133] = swift_task_alloc();
  v8 = type metadata accessor for DIPError.Code();
  v6[134] = v8;
  v6[135] = *(v8 - 8);
  v6[136] = swift_task_alloc();
  sub_100007224(&unk_100844540, &unk_1006BFBC0);
  v6[137] = swift_task_alloc();

  return _swift_task_switch(sub_1005DD580, 0, 0);
}

uint64_t sub_1005DD580()
{
  v1 = *(v0 + 1096);
  v28 = *(v0 + 1024);
  v2 = *(v0 + 1016);
  v3 = *(v0 + 1008);
  v4 = *(v0 + 1000);
  v5 = *(v0 + 992);
  v6 = *(v5 + 88);
  v7 = *(v5 + 72);
  *(v0 + 768) = *(v5 + 56);
  *(v0 + 784) = v7;
  *(v0 + 800) = v6;
  *(v0 + 960) = *v5;
  v9 = *(v5 + 16);
  v8 = *(v5 + 32);
  *(v0 + 896) = *(v5 + 48);
  *(v0 + 864) = v9;
  *(v0 + 880) = v8;
  v10 = v4 + OBJC_IVAR____TtC8coreidvd13DIPWebService_conversation;
  v11 = *(v4 + OBJC_IVAR____TtC8coreidvd13DIPWebService_conversation);
  *(v0 + 1104) = v11;
  v12 = *(v10 + 8);
  *(v0 + 1112) = v12;
  sub_1000B2140(v5, v0 + 360);

  sub_10004D860(v0 + 960);
  sub_1005D8250(v3, v2, (v0 + 816));
  v13 = *(v0 + 816);
  *(v0 + 1120) = v13;
  v14 = *(v0 + 824);
  *(v0 + 1128) = v14;
  v15 = *(v0 + 832);
  *(v0 + 1136) = v15;
  v16 = *(v0 + 840);
  *(v0 + 1144) = v16;
  v17 = *(v0 + 848);
  *(v0 + 1152) = v17;
  v18 = *(v0 + 856);
  *(v0 + 1160) = v18;
  sub_10000BE18(v0 + 768, &qword_100849710, &qword_1006E9738);
  *(v0 + 256) = v11;
  *(v0 + 264) = v12;
  v19 = *(v0 + 880);
  *(v0 + 272) = *(v0 + 864);
  *(v0 + 288) = v19;
  *(v0 + 304) = *(v0 + 896);
  *(v0 + 312) = v13;
  *(v0 + 320) = v14;
  *(v0 + 328) = v15;
  *(v0 + 336) = v16;
  *(v0 + 344) = v17;
  *(v0 + 352) = v18;
  *(v0 + 928) = &type metadata for NonceRequest;
  v20 = swift_allocObject();
  *(v0 + 904) = v20;
  v21 = *(v0 + 336);
  *(v20 + 80) = *(v0 + 320);
  *(v20 + 96) = v21;
  *(v20 + 112) = *(v0 + 352);
  v22 = *(v0 + 272);
  *(v20 + 16) = *(v0 + 256);
  *(v20 + 32) = v22;
  v23 = *(v0 + 304);
  *(v20 + 48) = *(v0 + 288);
  *(v20 + 64) = v23;
  v24 = type metadata accessor for URL();
  (*(*(v24 - 8) + 56))(v1, 1, 1, v24);
  sub_1000B2140(v0 + 256, v0 + 464);
  v25 = swift_task_alloc();
  *(v0 + 1168) = v25;
  *v25 = v0;
  v25[1] = sub_1005DD7E4;
  v26 = *(v0 + 1096);

  return sub_1005F4FEC(v0 + 904, 0x6E6F6E2F312F312FLL, 0xEA00000000006563, v28, 0, v26);
}

uint64_t sub_1005DD7E4(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *v4;
  v6[147] = a1;
  v6[148] = a2;
  v6[149] = v3;

  sub_10000BE18(v6[137], &unk_100844540, &unk_1006BFBC0);
  if (v3)
  {
    v7 = sub_1005DE454;
  }

  else
  {
    sub_10000BB78(v6 + 113);

    v7 = sub_1005DD948;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1005DD948()
{
  v1 = *(v0 + 1192);
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  sub_1000A780C();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  if (v1)
  {
    v41 = *(v0 + 1176);
    v42 = *(v0 + 1184);
    v2 = *(v0 + 1088);
    v3 = *(v0 + 1080);
    v38 = *(v0 + 1072);
    v4 = *(v0 + 1040);
    v5 = *(v0 + 1032);
    v39 = *(v0 + 1048);
    v40 = *(v0 + 984);

    sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
    v6 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
    v7 = (*(*v6 + 80) + 32) & ~*(*v6 + 80);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1006BF520;
    v9 = v8 + v7;
    v10 = (v9 + v6[14]);
    v11 = enum case for DIPError.PropertyKey.serverURL(_:);
    v12 = type metadata accessor for DIPError.PropertyKey();
    (*(*(v12 - 8) + 104))(v9, v11, v12);
    v10[3] = &type metadata for String;
    v10[4] = &protocol witness table for String;
    *v10 = 0x6E6F6E2F312F312FLL;
    v10[1] = 0xEA00000000006563;
    swift_errorRetain();
    sub_10003C9C0(v8);
    swift_setDeallocating();
    sub_10000BE18(v9, &qword_1008341D0, &unk_1006BF8D0);
    swift_deallocClassInstance();
    (*(v3 + 104))(v2, enum case for DIPError.Code.internalError(_:), v38);
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    sub_1005FEAD4(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    v13 = swift_allocError();
    (*(v4 + 32))(v14, v39, v5);

    sub_10000B90C(v41, v42);
    *v40 = v13;
    v15 = enum case for DIPRetrier.RetryResult.failure<A>(_:);
    v16 = sub_100007224(&qword_100849718, &qword_1006E9740);
    (*(*(v16 - 8) + 104))(v40, v15, v16);
    v17 = *(v0 + 1160);
    v18 = *(v0 + 1152);
    v19 = *(v0 + 1136);
    v20 = *(v0 + 1120);
    v21 = *(v0 + 1112);
    *(v0 + 568) = *(v0 + 1104);
    *(v0 + 576) = v21;
    v22 = *(v0 + 880);
    *(v0 + 584) = *(v0 + 864);
    *(v0 + 600) = v22;
    *(v0 + 616) = *(v0 + 896);
    *(v0 + 624) = v20;
    *(v0 + 640) = v19;
    *(v0 + 656) = v18;
    *(v0 + 664) = v17;
    sub_1000B2178(v0 + 568);

    v23 = *(v0 + 8);

    return v23();
  }

  else
  {

    v25 = *(v0 + 64);
    *(v0 + 200) = *(v0 + 80);
    v26 = *(v0 + 80);
    *(v0 + 216) = *(v0 + 96);
    v27 = *(v0 + 96);
    *(v0 + 232) = *(v0 + 112);
    v28 = *(v0 + 32);
    *(v0 + 136) = *(v0 + 16);
    v29 = *(v0 + 16);
    v30 = *(v0 + 32);
    *(v0 + 152) = v28;
    v31 = *(v0 + 64);
    *(v0 + 168) = *(v0 + 48);
    v32 = *(v0 + 48);
    *(v0 + 184) = v31;
    *(v0 + 672) = v29;
    *(v0 + 688) = v30;
    *(v0 + 736) = v26;
    *(v0 + 752) = v27;
    v34 = *(v0 + 256);
    v33 = *(v0 + 264);
    v35 = *(v0 + 272);
    v36 = *(v0 + 280);
    *(v0 + 248) = *(v0 + 128);
    *(v0 + 704) = v32;
    *(v0 + 720) = v25;
    v37 = swift_task_alloc();
    *(v0 + 1200) = v37;
    *v37 = v0;
    v37[1] = sub_1005DDEB0;

    return sub_1005F7D7C(v34, v33, v35, v36, v0 + 672, 0x61746E6567616DLL, 0xE700000000000000);
  }
}

uint64_t sub_1005DDEB0(uint64_t a1)
{
  *(*v1 + 1208) = a1;

  return _swift_task_switch(sub_1005DDFB0, 0, 0);
}

uint64_t sub_1005DDFB0()
{
  v1 = *(v0 + 1184);
  v2 = *(v0 + 1176);
  if (*(v0 + 1208))
  {
    v3 = *(v0 + 1088);
    v4 = *(v0 + 1080);
    v34 = *(v0 + 1072);
    v37 = *(v0 + 984);
    sub_1000AD0A8(v0 + 136);
    sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
    v5 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
    v36 = v1;
    v6 = (*(*v5 + 80) + 32) & ~*(*v5 + 80);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1006BF520;
    v8 = v7 + v6;
    v35 = v2;
    v9 = (v8 + v5[14]);
    v10 = enum case for DIPError.PropertyKey.serverURL(_:);
    v11 = type metadata accessor for DIPError.PropertyKey();
    (*(*(v11 - 8) + 104))(v8, v10, v11);
    v9[3] = &type metadata for String;
    v9[4] = &protocol witness table for String;
    *v9 = 0x6E6F6E2F312F312FLL;
    v9[1] = 0xEA00000000006563;
    swift_errorRetain();
    sub_10003C9C0(v7);
    swift_setDeallocating();
    sub_10000BE18(v8, &qword_1008341D0, &unk_1006BF8D0);
    swift_deallocClassInstance();
    (*(v4 + 104))(v3, enum case for DIPError.Code.internalError(_:), v34);
    sub_1005FEAD4(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    v12 = swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();

    sub_10000B90C(v35, v36);
    *v37 = v12;
    v13 = enum case for DIPRetrier.RetryResult.failure<A>(_:);
    v14 = sub_100007224(&qword_100849718, &qword_1006E9740);
    (*(*(v14 - 8) + 104))(v37, v13, v14);
  }

  else
  {
    v15 = *(v0 + 984);
    v16._countAndFlagsBits = 0x3063363334336237;
    v17._object = 0x80000001007255E0;
    v16._object = 0xE800000000000000;
    v17._countAndFlagsBits = 0xD000000000000016;
    logMilestone(tag:description:)(v16, v17);
    sub_10000B90C(v2, v1);
    v18 = *(v0 + 136);
    v19 = *(v0 + 152);
    v20 = *(v0 + 184);
    *(v15 + 32) = *(v0 + 168);
    *(v15 + 48) = v20;
    *v15 = v18;
    *(v15 + 16) = v19;
    v21 = *(v0 + 200);
    v22 = *(v0 + 216);
    v23 = *(v0 + 232);
    *(v15 + 112) = *(v0 + 248);
    *(v15 + 80) = v22;
    *(v15 + 96) = v23;
    *(v15 + 64) = v21;
    v24 = enum case for DIPRetrier.RetryResult.success<A>(_:);
    v25 = sub_100007224(&qword_100849718, &qword_1006E9740);
    (*(*(v25 - 8) + 104))(v15, v24, v25);
  }

  v26 = *(v0 + 1160);
  v27 = *(v0 + 1152);
  v28 = *(v0 + 1136);
  v29 = *(v0 + 1120);
  v30 = *(v0 + 1112);
  *(v0 + 568) = *(v0 + 1104);
  *(v0 + 576) = v30;
  v31 = *(v0 + 880);
  *(v0 + 584) = *(v0 + 864);
  *(v0 + 600) = v31;
  *(v0 + 616) = *(v0 + 896);
  *(v0 + 624) = v29;
  *(v0 + 640) = v28;
  *(v0 + 656) = v27;
  *(v0 + 664) = v26;
  sub_1000B2178(v0 + 568);

  v32 = *(v0 + 8);

  return v32();
}

uint64_t sub_1005DE454()
{
  v1 = *(v0 + 1080);
  v2 = *(v0 + 1072);
  v3 = *(v0 + 1056);
  sub_10000BB78((v0 + 904));
  swift_getErrorValue();
  Error.dipErrorCode.getter();
  if ((*(v1 + 48))(v3, 1, v2) != 1)
  {
    v4 = *(v0 + 1080);
    v5 = *(v0 + 1072);
    v6 = *(v0 + 1064);
    sub_10000BBC4(*(v0 + 1056), v6, &qword_10083B020, &unk_1006D8ED0);
    v7 = (*(v4 + 88))(v6, v5);
    if (v7 == enum case for DIPError.Code.httpUnauthorized(_:) || v7 == enum case for DIPError.Code.httpAuthKitReprovision(_:) || v7 == enum case for DIPError.Code.httpAuthKitResync(_:))
    {
      v10 = *(v0 + 1192);
      v11 = *(v0 + 984);
      sub_10000BE18(*(v0 + 1056), &qword_10083B020, &unk_1006D8ED0);
      *v11 = v10;
      *(v11 + 8) = 0;
      *(v11 + 16) = 1;
      v12 = enum case for DIPRetrier.RetryResult.retry<A>(_:);
      v13 = sub_100007224(&qword_100849718, &qword_1006E9740);
      (*(*(v13 - 8) + 104))(v11, v12, v13);
      goto LABEL_12;
    }

    (*(*(v0 + 1080) + 8))(*(v0 + 1064), *(v0 + 1072));
  }

  v14 = *(v0 + 1056);
  v15 = *(v0 + 984);
  *v15 = *(v0 + 1192);
  v16 = enum case for DIPRetrier.RetryResult.failure<A>(_:);
  v17 = sub_100007224(&qword_100849718, &qword_1006E9740);
  (*(*(v17 - 8) + 104))(v15, v16, v17);
  sub_10000BE18(v14, &qword_10083B020, &unk_1006D8ED0);
LABEL_12:
  v18 = *(v0 + 1160);
  v19 = *(v0 + 1152);
  v20 = *(v0 + 1136);
  v21 = *(v0 + 1120);
  v22 = *(v0 + 1112);
  *(v0 + 568) = *(v0 + 1104);
  *(v0 + 576) = v22;
  v23 = *(v0 + 880);
  *(v0 + 584) = *(v0 + 864);
  *(v0 + 600) = v23;
  *(v0 + 616) = *(v0 + 896);
  *(v0 + 624) = v21;
  *(v0 + 640) = v20;
  *(v0 + 656) = v19;
  *(v0 + 664) = v18;
  sub_1000B2178(v0 + 568);

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_1005DE730(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[32] = a3;
  v4[33] = v3;
  v4[30] = a1;
  v4[31] = a2;
  v5 = type metadata accessor for DIPError.Code();
  v4[34] = v5;
  v4[35] = *(v5 - 8);
  v4[36] = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  v4[37] = v6;
  v4[38] = *(v6 - 8);
  v4[39] = swift_task_alloc();
  type metadata accessor for IdentityProofingResponse(0);
  v4[40] = swift_task_alloc();
  v4[41] = swift_task_alloc();
  type metadata accessor for IdentityProofingRequest(0);
  v4[42] = swift_task_alloc();
  sub_100007224(&unk_100844540, &unk_1006BFBC0);
  v4[43] = swift_task_alloc();
  type metadata accessor for DIPSignpost.Config();
  v4[44] = swift_task_alloc();
  v7 = type metadata accessor for DIPSignpost();
  v4[45] = v7;
  v4[46] = *(v7 - 8);
  v4[47] = swift_task_alloc();

  return _swift_task_switch(sub_1005DE974, 0, 0);
}

uint64_t sub_1005DE974()
{
  v1 = v0[43];
  v2 = v0[31];
  static DaemonSignposts.identityProofingRequest.getter();
  DIPSignpost.init(_:)();
  v3 = sub_100007224(&qword_100849640, &qword_1006E9670);
  v0[48] = v3;
  v0[29] = v3;
  v4 = sub_100032DBC(v0 + 26);
  (*(*(v3 - 8) + 16))(v4, v2, v3);
  v5 = type metadata accessor for URL();
  (*(*(v5 - 8) + 56))(v1, 1, 1, v5);
  v6 = swift_task_alloc();
  v0[49] = v6;
  *v6 = v0;
  v6[1] = sub_1005DEAF0;
  v7 = v0[43];

  return sub_1005F4FEC((v0 + 26), 0xD000000000000016, 0x8000000100725530, 0, 0, v7);
}

uint64_t sub_1005DEAF0(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *v4;
  v6[50] = a1;
  v6[51] = a2;
  v6[52] = v3;

  sub_10000BE18(v6[43], &unk_100844540, &unk_1006BFBC0);
  if (v3)
  {
    v7 = sub_1005DFD90;
  }

  else
  {
    sub_10000BB78(v6 + 26);

    v7 = sub_1005DEC50;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1005DEC50()
{
  v1 = *(v0 + 416);
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  *(v0 + 424) = sub_100007224(&unk_10084A210, &qword_1006E9720);
  sub_1000BA30C(&qword_100849708, &unk_10084A210, &qword_1006E9720, &protocol conformance descriptor for JWSSignedJSON<A>);
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  if (v1)
  {
    v2 = *(v0 + 280);

    v41 = enum case for DIPError.Code.internalError(_:);
    v4 = *(v0 + 400);
    v3 = *(v0 + 408);
    (*(v2 + 104))(*(v0 + 288));
    swift_errorRetain();
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1005FEAD4(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    sub_10000B90C(v4, v3);
    v38 = *(v0 + 368);
    v39 = *(v0 + 360);
    v40 = *(v0 + 376);
    v42 = *(v0 + 336);
    v36 = *(v0 + 280);
    v37 = *(v0 + 288);
    v35 = *(v0 + 272);
    v33 = *(v0 + 264);
    sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
    v5 = sub_100007224(&qword_1008341D0, &unk_1006BF8D0);
    v6 = *(*(v5 - 8) + 72);
    v7 = (*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80);
    v34 = 2 * v6;
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1006BFF90;
    v9 = v8 + v7;
    v10 = (v8 + v7 + *(v5 + 48));
    v11 = enum case for DIPError.PropertyKey.conversationID(_:);
    v12 = type metadata accessor for DIPError.PropertyKey();
    v13 = *(*(v12 - 8) + 104);
    v13(v9, v11, v12);
    v14 = *(v33 + OBJC_IVAR____TtC8coreidvd13DIPWebService_conversation);
    v15 = *(v33 + OBJC_IVAR____TtC8coreidvd13DIPWebService_conversation + 8);
    v10[3] = &type metadata for String;
    v10[4] = &protocol witness table for String;
    *v10 = v14;
    v10[1] = v15;
    v16 = (v9 + v6 + *(v5 + 48));
    v13(v9 + v6, enum case for DIPError.PropertyKey.requestID(_:), v12);
    swift_errorRetain();

    JWSSignedJSON.payload.getter();
    v18 = *(v42 + 16);
    v17 = *(v42 + 24);

    sub_1005FEB84(v42, type metadata accessor for IdentityProofingRequest);
    v16[3] = &type metadata for String;
    v16[4] = &protocol witness table for String;
    *v16 = v18;
    v16[1] = v17;
    v19 = (v9 + v34 + *(v5 + 48));
    v13(v9 + v34, enum case for DIPError.PropertyKey.serverURL(_:), v12);
    v19[3] = &type metadata for String;
    v19[4] = &protocol witness table for String;
    *v19 = 0xD000000000000016;
    v19[1] = 0x8000000100725530;
    sub_10003C9C0(v8);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    (*(v36 + 104))(v37, v41, v35);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    (*(v38 + 8))(v40, v39);

    v20 = *(v0 + 8);

    return v20();
  }

  else
  {
    v22 = *(v0 + 328);
    v23 = *(v0 + 336);

    JWSSignedJSON.payload.getter();
    v24 = *v23;
    v25 = v23[1];
    *(v0 + 432) = v25;
    v26 = v23[2];
    v27 = v23[3];
    *(v0 + 440) = v27;

    sub_1005FEB84(v23, type metadata accessor for IdentityProofingRequest);
    JWSSignedJSON.payload.getter();
    v28 = v22[1];
    *(v0 + 16) = *v22;
    *(v0 + 32) = v28;
    v29 = v22[2];
    v30 = v22[3];
    v31 = v22[5];
    *(v0 + 80) = v22[4];
    *(v0 + 96) = v31;
    *(v0 + 48) = v29;
    *(v0 + 64) = v30;
    sub_1000B1478(v0 + 16, v0 + 112);
    sub_1005FEB84(v22, type metadata accessor for IdentityProofingResponse);
    v32 = swift_task_alloc();
    *(v0 + 448) = v32;
    *v32 = v0;
    v32[1] = sub_1005DF3A8;

    return sub_1005F7D7C(v24, v25, v26, v27, v0 + 16, 0x61746E6567616DLL, 0xE700000000000000);
  }
}

uint64_t sub_1005DF3A8(uint64_t a1)
{
  v2 = *v1;
  *(v2 + 456) = a1;

  sub_1000ACC70(v2 + 16);

  return _swift_task_switch(sub_1005DF4F4, 0, 0);
}

uint64_t sub_1005DF4F4()
{
  v54 = v0;
  if (v0[57])
  {
    v1 = v0[40];
    JWSSignedJSON.payload.getter();
    v3 = *(v1 + 96);
    v2 = *(v1 + 104);

    sub_1005FEB84(v1, type metadata accessor for IdentityProofingResponse);
    if (v2)
    {
      defaultLogger()();

      v4 = Logger.logObject.getter();
      v5 = static os_log_type_t.error.getter();

      v6 = os_log_type_enabled(v4, v5);
      v7 = v0[38];
      v8 = v0[39];
      v9 = v0[37];
      if (v6)
      {
        v10 = swift_slowAlloc();
        v53[0] = swift_slowAlloc();
        v11 = v53[0];
        *v10 = 136315138;
        v12 = sub_100141FE4(v3, v2, v53);

        *(v10 + 4) = v12;
        _os_log_impl(&_mh_execute_header, v4, v5, "Server runtime error: %s", v10, 0xCu);
        sub_10000BB78(v11);

        (*(v7 + 8))(v8, v9);
      }

      else
      {

        (*(v7 + 8))(v8, v9);
      }
    }

    v22 = v0[53];
    v51 = v0[30];
    v52 = enum case for DIPError.Code.internalError(_:);
    v49 = *(v0[35] + 104);
    v49(v0[36]);
    swift_errorRetain();
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1005FEAD4(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    (*(*(v22 - 8) + 8))(v51, v22);
    v23 = v0[50];
    v48 = v0[51];
    (v49)(v0[36], v52, v0[34]);
    swift_errorRetain();
    sub_1000402AC(_swiftEmptyArrayStorage);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    sub_10000B90C(v23, v48);
    v45 = v0[46];
    v46 = v0[45];
    v47 = v0[47];
    v50 = v0[42];
    v43 = v0[35];
    v44 = v0[36];
    v42 = v0[34];
    v40 = v0[33];
    sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
    v24 = sub_100007224(&qword_1008341D0, &unk_1006BF8D0);
    v25 = *(*(v24 - 8) + 72);
    v26 = (*(*(v24 - 8) + 80) + 32) & ~*(*(v24 - 8) + 80);
    v41 = 2 * v25;
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_1006BFF90;
    v28 = v27 + v26;
    v29 = (v28 + *(v24 + 48));
    v30 = enum case for DIPError.PropertyKey.conversationID(_:);
    v31 = type metadata accessor for DIPError.PropertyKey();
    v32 = *(*(v31 - 8) + 104);
    v32(v28, v30, v31);
    v33 = *(v40 + OBJC_IVAR____TtC8coreidvd13DIPWebService_conversation);
    v34 = *(v40 + OBJC_IVAR____TtC8coreidvd13DIPWebService_conversation + 8);
    v29[3] = &type metadata for String;
    v29[4] = &protocol witness table for String;
    *v29 = v33;
    v29[1] = v34;
    v35 = (v28 + v25 + *(v24 + 48));
    v32(v28 + v25, enum case for DIPError.PropertyKey.requestID(_:), v31);
    swift_errorRetain();

    JWSSignedJSON.payload.getter();
    v37 = *(v50 + 16);
    v36 = *(v50 + 24);

    sub_1005FEB84(v50, type metadata accessor for IdentityProofingRequest);
    v35[3] = &type metadata for String;
    v35[4] = &protocol witness table for String;
    *v35 = v37;
    v35[1] = v36;
    v38 = (v28 + v41 + *(v24 + 48));
    v32(v28 + v41, enum case for DIPError.PropertyKey.serverURL(_:), v31);
    v38[3] = &type metadata for String;
    v38[4] = &protocol witness table for String;
    *v38 = 0xD000000000000016;
    v38[1] = 0x8000000100725530;
    sub_10003C9C0(v27);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    (*(v43 + 104))(v44, v52, v42);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    (*(v45 + 8))(v47, v46);

    v21 = v0[1];
  }

  else
  {
    v14 = v0[50];
    v13 = v0[51];
    v15 = v0[46];
    v16 = v0[47];
    v17 = v0[45];
    v18.value._countAndFlagsBits = sub_1000CB118();
    DIPSignpost.end(workflowID:isBackground:)(v18, 2);

    v19._countAndFlagsBits = 0x3566376339346663;
    v20._countAndFlagsBits = 0xD000000000000019;
    v20._object = 0x8000000100725590;
    v19._object = 0xE800000000000000;
    logMilestone(tag:description:)(v19, v20);
    sub_10000B90C(v14, v13);
    (*(v15 + 8))(v16, v17);

    v21 = v0[1];
  }

  return v21();
}

uint64_t sub_1005DFD90()
{
  v2 = v0[35];
  v1 = v0[36];
  sub_10000BB78(v0 + 26);
  v28 = enum case for DIPError.Code.internalError(_:);
  (*(v2 + 104))(v1);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_1005FEAD4(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v25 = v0[46];
  v26 = v0[45];
  v27 = v0[47];
  v29 = v0[42];
  v23 = v0[35];
  v24 = v0[36];
  v22 = v0[34];
  v20 = v0[33];
  sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
  v3 = sub_100007224(&qword_1008341D0, &unk_1006BF8D0);
  v4 = *(*(v3 - 8) + 72);
  v5 = (*(*(v3 - 8) + 80) + 32) & ~*(*(v3 - 8) + 80);
  v21 = 2 * v4;
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1006BFF90;
  v7 = v6 + v5;
  v8 = (v6 + v5 + *(v3 + 48));
  v9 = enum case for DIPError.PropertyKey.conversationID(_:);
  v10 = type metadata accessor for DIPError.PropertyKey();
  v11 = *(*(v10 - 8) + 104);
  v11(v7, v9, v10);
  v12 = *(v20 + OBJC_IVAR____TtC8coreidvd13DIPWebService_conversation);
  v13 = *(v20 + OBJC_IVAR____TtC8coreidvd13DIPWebService_conversation + 8);
  v8[3] = &type metadata for String;
  v8[4] = &protocol witness table for String;
  *v8 = v12;
  v8[1] = v13;
  v14 = (v7 + v4 + *(v3 + 48));
  v11(v7 + v4, enum case for DIPError.PropertyKey.requestID(_:), v10);
  swift_errorRetain();

  JWSSignedJSON.payload.getter();
  v16 = *(v29 + 16);
  v15 = *(v29 + 24);

  sub_1005FEB84(v29, type metadata accessor for IdentityProofingRequest);
  v14[3] = &type metadata for String;
  v14[4] = &protocol witness table for String;
  *v14 = v16;
  v14[1] = v15;
  v17 = (v7 + v21 + *(v3 + 48));
  v11(v7 + v21, enum case for DIPError.PropertyKey.serverURL(_:), v10);
  v17[3] = &type metadata for String;
  v17[4] = &protocol witness table for String;
  *v17 = 0xD000000000000016;
  v17[1] = 0x8000000100725530;
  sub_10003C9C0(v6);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  (*(v23 + 104))(v24, v28, v22);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  (*(v25 + 8))(v27, v26);

  v18 = v0[1];

  return v18();
}

uint64_t sub_1005E02E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[32] = a3;
  v4[33] = v3;
  v4[30] = a1;
  v4[31] = a2;
  v5 = type metadata accessor for DIPError.Code();
  v4[34] = v5;
  v4[35] = *(v5 - 8);
  v4[36] = swift_task_alloc();
  type metadata accessor for SharingRegistrationResponse(0);
  v4[37] = swift_task_alloc();
  type metadata accessor for SharingRegistrationRequest(0);
  v4[38] = swift_task_alloc();
  sub_100007224(&unk_100844540, &unk_1006BFBC0);
  v4[39] = swift_task_alloc();
  type metadata accessor for DIPSignpost.Config();
  v4[40] = swift_task_alloc();
  v6 = type metadata accessor for DIPSignpost();
  v4[41] = v6;
  v4[42] = *(v6 - 8);
  v4[43] = swift_task_alloc();

  return _swift_task_switch(sub_1005E04BC, 0, 0);
}

uint64_t sub_1005E04BC()
{
  v1 = v0[39];
  v2 = v0[31];
  static DaemonSignposts.sharingRegistrationRequest.getter();
  DIPSignpost.init(_:)();
  v3 = sub_100007224(&unk_10084A100, &qword_1006E9EA0);
  v0[44] = v3;
  v0[29] = v3;
  v4 = sub_100032DBC(v0 + 26);
  (*(*(v3 - 8) + 16))(v4, v2, v3);
  v5 = type metadata accessor for URL();
  (*(*(v5 - 8) + 56))(v1, 1, 1, v5);
  v6 = swift_task_alloc();
  v0[45] = v6;
  *v6 = v0;
  v6[1] = sub_1005E0638;
  v7 = v0[39];

  return sub_1005F4FEC((v0 + 26), 0xD000000000000019, 0x8000000100725450, 0, 0, v7);
}

uint64_t sub_1005E0638(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *v4;
  v6[46] = a1;
  v6[47] = a2;
  v6[48] = v3;

  sub_10000BE18(v6[39], &unk_100844540, &unk_1006BFBC0);
  if (v3)
  {
    v7 = sub_1005E1730;
  }

  else
  {
    sub_10000BB78(v6 + 26);

    v7 = sub_1005E0798;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1005E0798()
{
  v1 = *(v0 + 384);
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  *(v0 + 392) = sub_100007224(&qword_10084A0D0, &qword_1006E9E60);
  sub_1000BA30C(&qword_100849700, &qword_10084A0D0, &qword_1006E9E60, &protocol conformance descriptor for JWSSignedJSON<A>);
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  if (v1)
  {
    v2 = *(v0 + 280);

    v41 = enum case for DIPError.Code.internalError(_:);
    v4 = *(v0 + 368);
    v3 = *(v0 + 376);
    (*(v2 + 104))(*(v0 + 288));
    swift_errorRetain();
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1005FEAD4(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    sub_10000B90C(v4, v3);
    v38 = *(v0 + 336);
    v39 = *(v0 + 328);
    v40 = *(v0 + 344);
    v42 = *(v0 + 304);
    v36 = *(v0 + 280);
    v37 = *(v0 + 288);
    v35 = *(v0 + 272);
    v33 = *(v0 + 264);
    sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
    v5 = sub_100007224(&qword_1008341D0, &unk_1006BF8D0);
    v6 = *(*(v5 - 8) + 72);
    v7 = (*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80);
    v34 = 2 * v6;
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1006BFF90;
    v9 = v8 + v7;
    v10 = (v9 + *(v5 + 48));
    v11 = enum case for DIPError.PropertyKey.conversationID(_:);
    v12 = type metadata accessor for DIPError.PropertyKey();
    v13 = *(*(v12 - 8) + 104);
    v13(v9, v11, v12);
    v14 = *(v33 + OBJC_IVAR____TtC8coreidvd13DIPWebService_conversation);
    v15 = *(v33 + OBJC_IVAR____TtC8coreidvd13DIPWebService_conversation + 8);
    v10[3] = &type metadata for String;
    v10[4] = &protocol witness table for String;
    *v10 = v14;
    v10[1] = v15;
    v16 = (v9 + v6 + *(v5 + 48));
    v13(v9 + v6, enum case for DIPError.PropertyKey.requestID(_:), v12);
    swift_errorRetain();

    JWSSignedJSON.payload.getter();
    v18 = *(v42 + 16);
    v17 = *(v42 + 24);

    sub_1005FEB84(v42, type metadata accessor for SharingRegistrationRequest);
    v16[3] = &type metadata for String;
    v16[4] = &protocol witness table for String;
    *v16 = v18;
    v16[1] = v17;
    v19 = (v9 + v34 + *(v5 + 48));
    v13(v9 + v34, enum case for DIPError.PropertyKey.serverURL(_:), v12);
    v19[3] = &type metadata for String;
    v19[4] = &protocol witness table for String;
    *v19 = 0xD000000000000019;
    v19[1] = 0x8000000100725450;
    sub_10003C9C0(v8);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    (*(v36 + 104))(v37, v41, v35);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    (*(v38 + 8))(v40, v39);

    v20 = *(v0 + 8);

    return v20();
  }

  else
  {
    v22 = *(v0 + 296);
    v23 = *(v0 + 304);

    JWSSignedJSON.payload.getter();
    v24 = *v23;
    v25 = v23[1];
    *(v0 + 400) = v25;
    v26 = v23[2];
    v27 = v23[3];
    *(v0 + 408) = v27;

    sub_1005FEB84(v23, type metadata accessor for SharingRegistrationRequest);
    JWSSignedJSON.payload.getter();
    v28 = v22[1];
    *(v0 + 16) = *v22;
    *(v0 + 32) = v28;
    v29 = v22[2];
    v30 = v22[3];
    v31 = v22[5];
    *(v0 + 80) = v22[4];
    *(v0 + 96) = v31;
    *(v0 + 48) = v29;
    *(v0 + 64) = v30;
    sub_1000B1478(v0 + 16, v0 + 112);
    sub_1005FEB84(v22, type metadata accessor for SharingRegistrationResponse);
    v32 = swift_task_alloc();
    *(v0 + 416) = v32;
    *v32 = v0;
    v32[1] = sub_1005E0EDC;

    return sub_1005F7D7C(v24, v25, v26, v27, v0 + 16, 0x61746E6567616DLL, 0xE700000000000000);
  }
}

uint64_t sub_1005E0EDC(uint64_t a1)
{
  v2 = *v1;
  *(v2 + 424) = a1;

  sub_1000ACC70(v2 + 16);

  return _swift_task_switch(sub_1005E1028, 0, 0);
}

uint64_t sub_1005E1028()
{
  if (v0[53])
  {
    v35 = v0[49];
    v39 = v0[30];
    v40 = enum case for DIPError.Code.internalError(_:);
    v37 = *(v0[35] + 104);
    v37(v0[36]);
    swift_errorRetain();
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1005FEAD4(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    (*(*(v35 - 8) + 8))(v39);
    v1 = v0[46];
    v36 = v0[47];
    (v37)(v0[36], v40, v0[34]);
    swift_errorRetain();
    sub_1000402AC(_swiftEmptyArrayStorage);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    sub_10000B90C(v1, v36);
    v32 = v0[42];
    v33 = v0[41];
    v34 = v0[43];
    v38 = v0[38];
    v30 = v0[35];
    v31 = v0[36];
    v29 = v0[34];
    v27 = v0[33];
    sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
    v2 = sub_100007224(&qword_1008341D0, &unk_1006BF8D0);
    v3 = *(*(v2 - 8) + 72);
    v4 = (*(*(v2 - 8) + 80) + 32) & ~*(*(v2 - 8) + 80);
    v28 = 2 * v3;
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1006BFF90;
    v6 = v5 + v4;
    v7 = (v6 + *(v2 + 48));
    v8 = enum case for DIPError.PropertyKey.conversationID(_:);
    v9 = type metadata accessor for DIPError.PropertyKey();
    v10 = *(*(v9 - 8) + 104);
    v10(v6, v8, v9);
    v11 = *(v27 + OBJC_IVAR____TtC8coreidvd13DIPWebService_conversation);
    v12 = *(v27 + OBJC_IVAR____TtC8coreidvd13DIPWebService_conversation + 8);
    v7[3] = &type metadata for String;
    v7[4] = &protocol witness table for String;
    *v7 = v11;
    v7[1] = v12;
    v13 = (v6 + v3 + *(v2 + 48));
    v10(v6 + v3, enum case for DIPError.PropertyKey.requestID(_:), v9);
    swift_errorRetain();

    JWSSignedJSON.payload.getter();
    v15 = *(v38 + 16);
    v14 = *(v38 + 24);

    sub_1005FEB84(v38, type metadata accessor for SharingRegistrationRequest);
    v13[3] = &type metadata for String;
    v13[4] = &protocol witness table for String;
    *v13 = v15;
    v13[1] = v14;
    v16 = (v6 + v28 + *(v2 + 48));
    v10(v6 + v28, enum case for DIPError.PropertyKey.serverURL(_:), v9);
    v16[3] = &type metadata for String;
    v16[4] = &protocol witness table for String;
    *v16 = 0xD000000000000019;
    v16[1] = 0x8000000100725450;
    sub_10003C9C0(v5);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    (*(v30 + 104))(v31, v40, v29);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    (*(v32 + 8))(v34, v33);
  }

  else
  {
    v19 = v0[46];
    v18 = v0[47];
    v20 = v0[42];
    v21 = v0[43];
    v22 = v0[41];
    v23.value._countAndFlagsBits = sub_1000CB118();
    DIPSignpost.end(workflowID:isBackground:)(v23, 2);

    v24._countAndFlagsBits = 0x3634363065363139;
    v25._countAndFlagsBits = 0xD000000000000025;
    v25._object = 0x8000000100725500;
    v24._object = 0xE800000000000000;
    logMilestone(tag:description:)(v24, v25);
    sub_10000B90C(v19, v18);
    (*(v20 + 8))(v21, v22);
  }

  v17 = v0[1];

  return v17();
}

uint64_t sub_1005E1730()
{
  sub_10000BB78(v0 + 26);
  v25 = v0[43];
  v23 = v0[42];
  v24 = v0[41];
  v26 = v0[38];
  v21 = v0[35];
  v22 = v0[36];
  v20 = v0[34];
  v18 = v0[33];
  sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
  v1 = sub_100007224(&qword_1008341D0, &unk_1006BF8D0);
  v2 = *(*(v1 - 8) + 72);
  v3 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v19 = 2 * v2;
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1006BFF90;
  v5 = v4 + v3;
  v6 = (v4 + v3 + *(v1 + 48));
  v7 = enum case for DIPError.PropertyKey.conversationID(_:);
  v8 = type metadata accessor for DIPError.PropertyKey();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v5, v7, v8);
  v10 = *(v18 + OBJC_IVAR____TtC8coreidvd13DIPWebService_conversation);
  v11 = *(v18 + OBJC_IVAR____TtC8coreidvd13DIPWebService_conversation + 8);
  v6[3] = &type metadata for String;
  v6[4] = &protocol witness table for String;
  *v6 = v10;
  v6[1] = v11;
  v12 = (v5 + v2 + *(v1 + 48));
  v9();
  swift_errorRetain();

  JWSSignedJSON.payload.getter();
  v13 = *(v26 + 16);
  v14 = *(v26 + 24);

  sub_1005FEB84(v26, type metadata accessor for SharingRegistrationRequest);
  v12[3] = &type metadata for String;
  v12[4] = &protocol witness table for String;
  *v12 = v13;
  v12[1] = v14;
  v15 = (v5 + v19 + *(v1 + 48));
  v9();
  v15[3] = &type metadata for String;
  v15[4] = &protocol witness table for String;
  *v15 = 0xD000000000000019;
  v15[1] = 0x8000000100725450;
  sub_10003C9C0(v4);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  (*(v21 + 104))(v22, enum case for DIPError.Code.internalError(_:), v20);
  type metadata accessor for DIPError();
  sub_1005FEAD4(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  (*(v23 + 8))(v25, v24);

  v16 = v0[1];

  return v16();
}

uint64_t sub_1005E1BAC(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 1472) = v3;
  *(v4 + 1640) = a3;
  *(v4 + 1464) = a2;
  *(v4 + 1456) = a1;
  v5 = type metadata accessor for DIPError.Code();
  *(v4 + 1480) = v5;
  *(v4 + 1488) = *(v5 - 8);
  *(v4 + 1496) = swift_task_alloc();
  sub_100007224(&unk_100844540, &unk_1006BFBC0);
  *(v4 + 1504) = swift_task_alloc();
  type metadata accessor for DIPSignpost.Config();
  *(v4 + 1512) = swift_task_alloc();
  v6 = type metadata accessor for DIPSignpost();
  *(v4 + 1520) = v6;
  *(v4 + 1528) = *(v6 - 8);
  *(v4 + 1536) = swift_task_alloc();

  return _swift_task_switch(sub_1005E1D38, 0, 0);
}

uint64_t sub_1005E1D38()
{
  v1 = *(v0 + 1504);
  v2 = *(v0 + 1640);
  v3 = *(v0 + 1464);
  static DaemonSignposts.identityPendingActionRequest.getter();
  DIPSignpost.init(_:)();
  if (v2 == 2)
  {
    v4 = "pending actions response";
  }

  else
  {
    v4 = "erver runtime error ";
  }

  v5 = sub_1005FBCE8();
  *(v0 + 1544) = v5;
  v6 = sub_100007224(&qword_10083E4B8, &unk_1006DBF30);
  *(v0 + 1552) = v6;
  *(v0 + 1448) = v6;
  v7 = sub_100032DBC((v0 + 1424));
  (*(*(v6 - 8) + 16))(v7, v3, v6);
  v8 = type metadata accessor for URL();
  (*(*(v8 - 8) + 56))(v1, 1, 1, v8);
  v9 = swift_task_alloc();
  *(v0 + 1560) = v9;
  *v9 = v0;
  v9[1] = sub_1005E1EE4;
  v10 = *(v0 + 1504);

  return sub_1005F4FEC(v0 + 1424, 0xD000000000000014, v4 | 0x8000000000000000, v5, 0, v10);
}

uint64_t sub_1005E1EE4(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *v4;
  v6[196] = a1;
  v6[197] = a2;
  v6[198] = v3;

  sub_10000BE18(v6[188], &unk_100844540, &unk_1006BFBC0);

  if (v3)
  {
    v7 = sub_1005E31A0;
  }

  else
  {
    sub_10000BB78(v6 + 178);

    v7 = sub_1005E20C8;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1005E20C8()
{
  v1 = *(v0 + 1584);
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  *(v0 + 1592) = sub_100007224(&qword_10083E4B0, &unk_1006E9710);
  sub_1000BA30C(&qword_1008496F8, &qword_10083E4B0, &unk_1006E9710, &protocol conformance descriptor for JWSSignedJSON<A>);
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  if (v1)
  {
    v2 = *(v0 + 1488);

    v69 = enum case for DIPError.Code.internalError(_:);
    v3 = *(v0 + 1576);
    v4 = *(v0 + 1568);
    (*(v2 + 104))(*(v0 + 1496));
    swift_errorRetain();
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1005FEAD4(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    sub_10000B90C(v4, v3);
    v66 = *(v0 + 1528);
    v67 = *(v0 + 1520);
    v68 = *(v0 + 1536);
    v63 = *(v0 + 1488);
    v64 = *(v0 + 1496);
    v60 = *(v0 + 1472);
    if (*(v0 + 1640) == 2)
    {
      v5 = "pending actions response";
    }

    else
    {
      v5 = "erver runtime error ";
    }

    v62 = v5 | 0x8000000000000000;
    v65 = *(v0 + 1480);
    sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
    v6 = sub_100007224(&qword_1008341D0, &unk_1006BF8D0);
    v7 = *(*(v6 - 8) + 72);
    v8 = (*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80);
    v61 = 2 * v7;
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1006BFF90;
    v10 = v9 + v8;
    v11 = v6;
    v59 = v6;
    v12 = (v9 + v8 + *(v6 + 48));
    v13 = enum case for DIPError.PropertyKey.conversationID(_:);
    v14 = type metadata accessor for DIPError.PropertyKey();
    v15 = *(*(v14 - 8) + 104);
    v15(v10, v13, v14);
    v16 = *(v60 + OBJC_IVAR____TtC8coreidvd13DIPWebService_conversation);
    v17 = *(v60 + OBJC_IVAR____TtC8coreidvd13DIPWebService_conversation + 8);
    v12[3] = &type metadata for String;
    v12[4] = &protocol witness table for String;
    *v12 = v16;
    v12[1] = v17;
    v18 = v10 + v7;
    v19 = (v10 + v7 + *(v11 + 48));
    v15(v18, enum case for DIPError.PropertyKey.requestID(_:), v14);
    swift_errorRetain();

    JWSSignedJSON.payload.getter();
    v20 = *(v0 + 912);
    *(v0 + 752) = *(v0 + 896);
    *(v0 + 768) = v20;
    *(v0 + 784) = *(v0 + 928);
    v21 = *(v0 + 848);
    *(v0 + 688) = *(v0 + 832);
    *(v0 + 704) = v21;
    v22 = *(v0 + 880);
    *(v0 + 720) = *(v0 + 864);
    *(v0 + 736) = v22;
    v23 = *(v0 + 816);
    *(v0 + 656) = *(v0 + 800);
    *(v0 + 672) = v23;
    v24 = *(v0 + 672);
    v25 = *(v0 + 680);

    sub_1000AE518(v0 + 656);
    v19[3] = &type metadata for String;
    v19[4] = &protocol witness table for String;
    *v19 = v24;
    v19[1] = v25;
    v26 = (v10 + v61 + *(v59 + 48));
    v15(v10 + v61, enum case for DIPError.PropertyKey.serverURL(_:), v14);
    v26[3] = &type metadata for String;
    v26[4] = &protocol witness table for String;
    *v26 = 0xD000000000000014;
    v26[1] = v62;
    sub_10003C9C0(v9);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    (*(v63 + 104))(v64, v69, v65);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    (*(v66 + 8))(v68, v67);

    v27 = *(v0 + 8);

    return v27();
  }

  else
  {
    v29 = (v0 + 1232);

    JWSSignedJSON.payload.getter();
    v30 = *(v0 + 288);
    *(v0 + 112) = *(v0 + 272);
    *(v0 + 128) = v30;
    v31 = *(v0 + 320);
    *(v0 + 144) = *(v0 + 304);
    *(v0 + 160) = v31;
    v32 = *(v0 + 224);
    *(v0 + 48) = *(v0 + 208);
    *(v0 + 64) = v32;
    v33 = *(v0 + 256);
    *(v0 + 80) = *(v0 + 240);
    *(v0 + 96) = v33;
    v34 = *(v0 + 192);
    *(v0 + 16) = *(v0 + 176);
    *(v0 + 32) = v34;
    v35 = *(v0 + 152);
    v36 = *(v0 + 160);
    v37 = *(v0 + 168);
    sub_1005FE898(v35, v36, v37);
    sub_1000B1D80(v0 + 16);
    if (v37 == 1)
    {
      v70 = 0;
      v38 = 0;
    }

    else
    {
      sub_1005FE8AC(v35, v36, v37);
      v70 = *&aMagenta[8 * v35];
      v38 = qword_1006E9788[v35];
    }

    *(v0 + 1600) = v38;
    JWSSignedJSON.payload.getter();
    v39 = *(v0 + 1104);
    v40 = *(v0 + 1168);
    *(v0 + 1040) = *(v0 + 1184);
    *(v0 + 1056) = *(v0 + 1200);
    *(v0 + 1072) = *(v0 + 1216);
    v41 = *(v0 + 1136);
    *(v0 + 976) = *(v0 + 1120);
    *(v0 + 992) = v41;
    *(v0 + 1008) = *(v0 + 1152);
    *(v0 + 1024) = v40;
    *(v0 + 944) = *(v0 + 1088);
    *(v0 + 960) = v39;
    v42 = *(v0 + 944);
    v43 = *(v0 + 952);
    *(v0 + 1608) = v43;
    v44 = *(v0 + 960);
    v45 = *(v0 + 968);
    *(v0 + 1616) = v45;

    sub_1000AE518(v0 + 944);
    JWSSignedJSON.payload.getter();
    v46 = *(v0 + 608);
    v47 = *(v0 + 624);
    v48 = *(v0 + 576);
    *(v0 + 432) = *(v0 + 592);
    *(v0 + 448) = v46;
    v49 = *(v0 + 640);
    *(v0 + 464) = v47;
    *(v0 + 480) = v49;
    v51 = *(v0 + 528);
    v50 = *(v0 + 544);
    v52 = *(v0 + 512);
    *(v0 + 368) = v51;
    *(v0 + 384) = v50;
    v53 = *(v0 + 544);
    v55 = *(v0 + 560);
    v54 = *(v0 + 576);
    *(v0 + 400) = v55;
    *(v0 + 416) = v54;
    v56 = *(v0 + 512);
    v57 = *(v0 + 496);
    *(v0 + 336) = v57;
    *(v0 + 352) = v56;
    *(v0 + 1264) = v51;
    *(v0 + 1280) = v53;
    *(v0 + 1296) = v55;
    *(v0 + 1312) = v48;
    *v29 = v57;
    *(v0 + 1248) = v52;
    sub_1000B1478(v0 + 336, v0 + 1328);
    sub_1000B1D80(v0 + 336);
    v58 = swift_task_alloc();
    *(v0 + 1624) = v58;
    *v58 = v0;
    v58[1] = sub_1005E2914;

    return sub_1005F7D7C(v42, v43, v44, v45, v29, v70, v38);
  }
}

uint64_t sub_1005E2914(uint64_t a1)
{
  v2 = *v1;
  *(v2 + 1632) = a1;

  sub_1000ACC70(v2 + 336);

  return _swift_task_switch(sub_1005E2A7C, 0, 0);
}

uint64_t sub_1005E2A7C()
{
  if (*(v0 + 1632))
  {
    v42 = *(v0 + 1592);
    v44 = *(v0 + 1456);
    v45 = enum case for DIPError.Code.internalError(_:);
    v1 = *(*(v0 + 1488) + 104);
    v1(*(v0 + 1496));
    swift_errorRetain();
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1005FEAD4(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    (*(*(v42 - 8) + 8))(v44);
    v43 = *(v0 + 1576);
    v2 = *(v0 + 1568);
    (v1)(*(v0 + 1496), v45, *(v0 + 1480));
    swift_errorRetain();
    sub_1000402AC(_swiftEmptyArrayStorage);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    sub_10000B90C(v2, v43);
    v39 = *(v0 + 1528);
    v40 = *(v0 + 1520);
    v41 = *(v0 + 1536);
    v36 = *(v0 + 1488);
    v37 = *(v0 + 1496);
    v33 = *(v0 + 1472);
    if (*(v0 + 1640) == 2)
    {
      v3 = "pending actions response";
    }

    else
    {
      v3 = "erver runtime error ";
    }

    v35 = v3 | 0x8000000000000000;
    v38 = *(v0 + 1480);
    sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
    v4 = sub_100007224(&qword_1008341D0, &unk_1006BF8D0);
    v5 = *(*(v4 - 8) + 72);
    v6 = (*(*(v4 - 8) + 80) + 32) & ~*(*(v4 - 8) + 80);
    v34 = 2 * v5;
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1006BFF90;
    v8 = v7 + v6;
    v9 = v4;
    v32 = v4;
    v10 = (v7 + v6 + *(v4 + 48));
    v11 = enum case for DIPError.PropertyKey.conversationID(_:);
    v12 = type metadata accessor for DIPError.PropertyKey();
    v13 = *(*(v12 - 8) + 104);
    v13(v8, v11, v12);
    v14 = *(v33 + OBJC_IVAR____TtC8coreidvd13DIPWebService_conversation);
    v15 = *(v33 + OBJC_IVAR____TtC8coreidvd13DIPWebService_conversation + 8);
    v10[3] = &type metadata for String;
    v10[4] = &protocol witness table for String;
    *v10 = v14;
    v10[1] = v15;
    v16 = v8 + v5;
    v17 = (v8 + v5 + *(v9 + 48));
    v13(v16, enum case for DIPError.PropertyKey.requestID(_:), v12);
    swift_errorRetain();

    JWSSignedJSON.payload.getter();
    v18 = *(v0 + 912);
    *(v0 + 752) = *(v0 + 896);
    *(v0 + 768) = v18;
    *(v0 + 784) = *(v0 + 928);
    v19 = *(v0 + 848);
    *(v0 + 688) = *(v0 + 832);
    *(v0 + 704) = v19;
    v20 = *(v0 + 880);
    *(v0 + 720) = *(v0 + 864);
    *(v0 + 736) = v20;
    v21 = *(v0 + 816);
    *(v0 + 656) = *(v0 + 800);
    *(v0 + 672) = v21;
    v22 = *(v0 + 672);
    v23 = *(v0 + 680);

    sub_1000AE518(v0 + 656);
    v17[3] = &type metadata for String;
    v17[4] = &protocol witness table for String;
    *v17 = v22;
    v17[1] = v23;
    v24 = (v8 + v34 + *(v32 + 48));
    v13(v8 + v34, enum case for DIPError.PropertyKey.serverURL(_:), v12);
    v24[3] = &type metadata for String;
    v24[4] = &protocol witness table for String;
    *v24 = 0xD000000000000014;
    v24[1] = v35;
    sub_10003C9C0(v7);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    (*(v36 + 104))(v37, v45, v38);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    (*(v39 + 8))(v41, v40);

    v25 = *(v0 + 8);
  }

  else
  {
    v26 = *(v0 + 1576);
    v27 = *(v0 + 1568);
    v28 = *(v0 + 1536);
    v29 = *(v0 + 1528);
    v30 = *(v0 + 1520);

    DIPSignpost.end(workflowID:isBackground:)(0, 2);
    sub_10000B90C(v27, v26);
    (*(v29 + 8))(v28, v30);

    v25 = *(v0 + 8);
  }

  return v25();
}

uint64_t sub_1005E31A0()
{
  sub_10000BB78((v0 + 1424));
  v32 = *(v0 + 1536);
  v30 = *(v0 + 1528);
  v31 = *(v0 + 1520);
  v27 = *(v0 + 1488);
  v28 = *(v0 + 1496);
  v29 = *(v0 + 1480);
  v24 = *(v0 + 1472);
  v1 = "erver runtime error ";
  if (*(v0 + 1640) == 2)
  {
    v1 = "pending actions response";
  }

  v26 = v1 | 0x8000000000000000;
  sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
  v2 = sub_100007224(&qword_1008341D0, &unk_1006BF8D0);
  v3 = *(*(v2 - 8) + 72);
  v4 = (*(*(v2 - 8) + 80) + 32) & ~*(*(v2 - 8) + 80);
  v25 = 2 * v3;
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1006BFF90;
  v6 = v2;
  v23 = v2;
  v7 = (v5 + v4 + *(v2 + 48));
  v8 = enum case for DIPError.PropertyKey.conversationID(_:);
  v9 = type metadata accessor for DIPError.PropertyKey();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v5 + v4, v8, v9);
  v11 = *(v24 + OBJC_IVAR____TtC8coreidvd13DIPWebService_conversation);
  v12 = *(v24 + OBJC_IVAR____TtC8coreidvd13DIPWebService_conversation + 8);
  v7[3] = &type metadata for String;
  v7[4] = &protocol witness table for String;
  *v7 = v11;
  v7[1] = v12;
  v13 = (v5 + v4 + v3 + *(v6 + 48));
  v10();
  swift_errorRetain();

  JWSSignedJSON.payload.getter();
  v14 = *(v0 + 912);
  *(v0 + 752) = *(v0 + 896);
  *(v0 + 768) = v14;
  *(v0 + 784) = *(v0 + 928);
  v15 = *(v0 + 848);
  *(v0 + 688) = *(v0 + 832);
  *(v0 + 704) = v15;
  v16 = *(v0 + 880);
  *(v0 + 720) = *(v0 + 864);
  *(v0 + 736) = v16;
  v17 = *(v0 + 816);
  *(v0 + 656) = *(v0 + 800);
  *(v0 + 672) = v17;
  v18 = *(v0 + 672);
  v19 = *(v0 + 680);

  sub_1000AE518(v0 + 656);
  v13[3] = &type metadata for String;
  v13[4] = &protocol witness table for String;
  *v13 = v18;
  v13[1] = v19;
  v20 = (v5 + v4 + v25 + *(v23 + 48));
  v10();
  v20[3] = &type metadata for String;
  v20[4] = &protocol witness table for String;
  *v20 = 0xD000000000000014;
  v20[1] = v26;
  sub_10003C9C0(v5);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  (*(v27 + 104))(v28, enum case for DIPError.Code.internalError(_:), v29);
  type metadata accessor for DIPError();
  sub_1005FEAD4(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  (*(v30 + 8))(v32, v31);

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_1005E364C(uint64_t a1)
{
  v2[60] = a1;
  v2[61] = v1;
  v3 = type metadata accessor for DIPError.Code();
  v2[62] = v3;
  v2[63] = *(v3 - 8);
  v2[64] = swift_task_alloc();
  v4 = sub_100007224(&qword_1008496E8, &qword_1006E9708);
  v2[65] = v4;
  v2[66] = *(v4 - 8);
  v2[67] = swift_task_alloc();
  sub_100007224(&unk_100844540, &unk_1006BFBC0);
  v2[68] = swift_task_alloc();
  type metadata accessor for DIPSignpost.Config();
  v2[69] = swift_task_alloc();
  v5 = type metadata accessor for DIPSignpost();
  v2[70] = v5;
  v2[71] = *(v5 - 8);
  v2[72] = swift_task_alloc();

  return _swift_task_switch(sub_1005E3834, 0, 0);
}

uint64_t sub_1005E3834()
{
  v1 = v0[68];
  v2 = v0[60];
  static DaemonSignposts.identityProofingUserConsent.getter();
  DIPSignpost.init(_:)();
  v3 = sub_100007224(&qword_100841070, &unk_1006DDAB0);
  v0[73] = v3;
  v0[59] = v3;
  v4 = sub_100032DBC(v0 + 56);
  (*(*(v3 - 8) + 16))(v4, v2, v3);
  v5 = type metadata accessor for URL();
  (*(*(v5 - 8) + 56))(v1, 1, 1, v5);
  v6 = swift_task_alloc();
  v0[74] = v6;
  *v6 = v0;
  v6[1] = sub_1005E39BC;
  v7 = v0[68];

  return sub_1005F4FEC((v0 + 56), 0x6E6F632F302F312FLL, 0xED00002F746E6573, 0, 0, v7);
}

uint64_t sub_1005E39BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v5[75] = a1;
  v5[76] = a2;
  v5[77] = a3;
  v5[78] = v3;

  sub_10000BE18(v5[68], &unk_100844540, &unk_1006BFBC0);
  if (v3)
  {
    v6 = sub_1005E4450;
  }

  else
  {
    sub_10000BB78(v5 + 56);
    v6 = sub_1005E3B14;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1005E3B14()
{
  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {
    v4 = *(v0 + 616);
    v55 = *(v0 + 608);
    v5 = *(v0 + 600);
    (*(*(v0 + 504) + 104))(*(v0 + 512), enum case for DIPError.Code.identityProofingUserConsentRequestInvalid(_:), *(v0 + 496));
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1005FEAD4(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    sub_10000B90C(v5, v55);
    goto LABEL_7;
  }

  v1 = *(v0 + 624);
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  sub_1000BA30C(&qword_1008496F0, &qword_1008496E8, &qword_1006E9708, &protocol conformance descriptor for JWSSignedJSON<A>);
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  if (v1)
  {
    v2 = *(v0 + 608);
    v3 = *(v0 + 600);

    sub_10000B90C(v3, v2);

LABEL_7:
    v49 = *(v0 + 568);
    v50 = *(v0 + 560);
    v52 = *(v0 + 576);
    v46 = *(v0 + 504);
    v47 = *(v0 + 512);
    v48 = *(v0 + 496);
    v43 = *(v0 + 488);
    sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
    v18 = sub_100007224(&qword_1008341D0, &unk_1006BF8D0);
    v19 = *(*(v18 - 8) + 72);
    v20 = (*(*(v18 - 8) + 80) + 32) & ~*(*(v18 - 8) + 80);
    v45 = 2 * v19;
    v44 = swift_allocObject();
    *(v44 + 16) = xmmword_1006BFF90;
    v21 = v44 + v20;
    v22 = (v44 + v20 + *(v18 + 48));
    v23 = enum case for DIPError.PropertyKey.conversationID(_:);
    v24 = type metadata accessor for DIPError.PropertyKey();
    v25 = *(*(v24 - 8) + 104);
    v25(v21, v23, v24);
    v26 = *(v43 + OBJC_IVAR____TtC8coreidvd13DIPWebService_conversation);
    v27 = *(v43 + OBJC_IVAR____TtC8coreidvd13DIPWebService_conversation + 8);
    v22[3] = &type metadata for String;
    v22[4] = &protocol witness table for String;
    *v22 = v26;
    v22[1] = v27;
    v28 = (v21 + v19 + *(v18 + 48));
    v25(v21 + v19, enum case for DIPError.PropertyKey.requestID(_:), v24);
    swift_errorRetain();

    JWSSignedJSON.payload.getter();
    v29 = *(v0 + 424);
    *(v0 + 304) = *(v0 + 408);
    *(v0 + 320) = v29;
    *(v0 + 336) = *(v0 + 440);
    v30 = *(v0 + 360);
    *(v0 + 240) = *(v0 + 344);
    *(v0 + 256) = v30;
    v31 = *(v0 + 392);
    *(v0 + 272) = *(v0 + 376);
    *(v0 + 288) = v31;
    v33 = *(v0 + 256);
    v32 = *(v0 + 264);

    sub_1000F978C(v0 + 240);
    v28[3] = &type metadata for String;
    v28[4] = &protocol witness table for String;
    *v28 = v33;
    v28[1] = v32;
    v34 = v21 + v45 + *(v18 + 48);
    v25(v21 + v45, enum case for DIPError.PropertyKey.serverURL(_:), v24);
    *(v34 + 24) = &type metadata for String;
    *(v34 + 32) = &protocol witness table for String;
    strcpy(v34, "/1/0/consent/");
    *(v34 + 14) = -4864;
    sub_10003C9C0(v44);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    (*(v46 + 104))(v47, enum case for DIPError.Code.internalError(_:), v48);
    type metadata accessor for DIPError();
    sub_1005FEAD4(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    (*(v49 + 8))(v52, v50);

    v35 = *(v0 + 8);
    goto LABEL_8;
  }

  JWSSignedJSON.payload.getter();
  v6 = *(v0 + 208);
  *(v0 + 80) = *(v0 + 192);
  *(v0 + 96) = v6;
  *(v0 + 112) = *(v0 + 224);
  v7 = *(v0 + 144);
  *(v0 + 16) = *(v0 + 128);
  *(v0 + 32) = v7;
  v8 = *(v0 + 176);
  *(v0 + 48) = *(v0 + 160);
  *(v0 + 64) = v8;
  v9 = *(v0 + 16);
  v10 = *(v0 + 24);

  sub_1000F9D58(v0 + 16);
  v56 = *(v0 + 616);
  v54 = *(v0 + 608);
  v11 = *(v0 + 600);
  if (v10)
  {
    v12 = *(v0 + 528);
    v51 = *(v0 + 520);
    v53 = *(v0 + 536);
    v14 = *(v0 + 504);
    v13 = *(v0 + 512);
    v15 = *(v0 + 496);
    _StringGuts.grow(_:)(70);
    v16._countAndFlagsBits = 0xD000000000000044;
    v16._object = 0x8000000100725310;
    String.append(_:)(v16);
    v17._countAndFlagsBits = v9;
    v17._object = v10;
    String.append(_:)(v17);

    (*(v14 + 104))(v13, enum case for DIPError.Code.identityProofingUserConsentServerRuntimeError(_:), v15);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1005FEAD4(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    sub_10000B90C(v11, v54);

    (*(v12 + 8))(v53, v51);
    goto LABEL_7;
  }

  v37 = *(v0 + 576);
  v38 = *(v0 + 568);
  v39 = *(v0 + 560);
  v40 = *(v0 + 536);
  v41 = *(v0 + 528);
  v42 = *(v0 + 520);
  DIPSignpost.end(workflowID:isBackground:)(v9, 2);
  sub_10000B90C(v11, v54);

  (*(v41 + 8))(v40, v42);
  (*(v38 + 8))(v37, v39);

  v35 = *(v0 + 8);
LABEL_8:

  return v35();
}

uint64_t sub_1005E4450()
{
  sub_10000BB78((v0 + 448));
  v26 = *(v0 + 568);
  v27 = *(v0 + 560);
  v28 = *(v0 + 576);
  v23 = *(v0 + 504);
  v24 = *(v0 + 512);
  v25 = *(v0 + 496);
  v20 = *(v0 + 488);
  sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
  v1 = sub_100007224(&qword_1008341D0, &unk_1006BF8D0);
  v2 = *(*(v1 - 8) + 72);
  v3 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v22 = 2 * v2;
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1006BFF90;
  v4 = v21 + v3;
  v5 = (v21 + v3 + *(v1 + 48));
  v6 = enum case for DIPError.PropertyKey.conversationID(_:);
  v7 = type metadata accessor for DIPError.PropertyKey();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v4, v6, v7);
  v9 = *(v20 + OBJC_IVAR____TtC8coreidvd13DIPWebService_conversation);
  v10 = *(v20 + OBJC_IVAR____TtC8coreidvd13DIPWebService_conversation + 8);
  v5[3] = &type metadata for String;
  v5[4] = &protocol witness table for String;
  *v5 = v9;
  v5[1] = v10;
  v11 = (v4 + v2 + *(v1 + 48));
  v8();
  swift_errorRetain();

  JWSSignedJSON.payload.getter();
  v12 = *(v0 + 424);
  *(v0 + 304) = *(v0 + 408);
  *(v0 + 320) = v12;
  *(v0 + 336) = *(v0 + 440);
  v13 = *(v0 + 360);
  *(v0 + 240) = *(v0 + 344);
  *(v0 + 256) = v13;
  v14 = *(v0 + 392);
  *(v0 + 272) = *(v0 + 376);
  *(v0 + 288) = v14;
  v15 = *(v0 + 256);
  v16 = *(v0 + 264);

  sub_1000F978C(v0 + 240);
  v11[3] = &type metadata for String;
  v11[4] = &protocol witness table for String;
  *v11 = v15;
  v11[1] = v16;
  v17 = v4 + v22 + *(v1 + 48);
  v8();
  *(v17 + 24) = &type metadata for String;
  *(v17 + 32) = &protocol witness table for String;
  strcpy(v17, "/1/0/consent/");
  *(v17 + 14) = -4864;
  sub_10003C9C0(v21);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  (*(v23 + 104))(v24, enum case for DIPError.Code.internalError(_:), v25);
  type metadata accessor for DIPError();
  sub_1005FEAD4(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  (*(v26 + 8))(v28, v27);

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_1005E48D4(uint64_t a1, char a2)
{
  *(v3 + 432) = a2;
  *(v3 + 320) = a1;
  *(v3 + 328) = v2;
  v4 = type metadata accessor for DIPError.Code();
  *(v3 + 336) = v4;
  *(v3 + 344) = *(v4 - 8);
  *(v3 + 352) = swift_task_alloc();
  sub_100007224(&unk_100844540, &unk_1006BFBC0);
  *(v3 + 360) = swift_task_alloc();
  type metadata accessor for DIPSignpost.Config();
  *(v3 + 368) = swift_task_alloc();
  v5 = type metadata accessor for DIPSignpost();
  *(v3 + 376) = v5;
  *(v3 + 384) = *(v5 - 8);
  *(v3 + 392) = swift_task_alloc();

  return _swift_task_switch(sub_1005E4A58, 0, 0);
}

uint64_t sub_1005E4A58()
{
  v1 = *(v0 + 360);
  v2 = *(v0 + 432);
  v3 = *(v0 + 320);
  static DaemonSignposts.identityPendingActionRequest.getter();
  DIPSignpost.init(_:)();
  if (v2 == 2)
  {
    v4 = "nNotificationRequest";
  }

  else
  {
    v4 = "config-overrides";
  }

  v5 = sub_100007224(&qword_10083DE08, qword_1006DBA50);
  *(v0 + 400) = v5;
  *(v0 + 312) = v5;
  v6 = sub_100032DBC((v0 + 288));
  (*(*(v5 - 8) + 16))(v6, v3, v5);
  v7 = type metadata accessor for URL();
  (*(*(v7 - 8) + 56))(v1, 1, 1, v7);
  v8 = swift_task_alloc();
  *(v0 + 408) = v8;
  *v8 = v0;
  v8[1] = sub_1005E4BF4;
  v9 = *(v0 + 360);

  return sub_1005F4FEC(v0 + 288, 0xD000000000000018, v4 | 0x8000000000000000, 0, 0, v9);
}

uint64_t sub_1005E4BF4(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v7 = *v4;
  v7[52] = a3;
  v7[53] = v3;

  sub_10000BE18(v7[45], &unk_100844540, &unk_1006BFBC0);

  if (v3)
  {
    v8 = sub_1005E53C0;
  }

  else
  {
    sub_10000BB78(v7 + 36);
    sub_10000B90C(a1, a2);
    v8 = sub_1005E4DB4;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_1005E4DB4()
{
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    v1 = *(v0 + 416);
    v3 = *(v0 + 384);
    v2 = *(v0 + 392);
    v4 = *(v0 + 376);

    DIPSignpost.end(workflowID:isBackground:)(0, 2);

    (*(v3 + 8))(v2, v4);

    v5 = *(v0 + 8);
  }

  else
  {
    v6 = *(v0 + 416);
    (*(*(v0 + 344) + 104))(*(v0 + 352), enum case for DIPError.Code.actionNotificationRequestFailure(_:), *(v0 + 336));
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1005FEAD4(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v38 = *(v0 + 392);
    v36 = *(v0 + 384);
    v37 = *(v0 + 376);
    v33 = *(v0 + 344);
    v34 = *(v0 + 352);
    v30 = *(v0 + 328);
    if (*(v0 + 432) == 2)
    {
      v7 = "nNotificationRequest";
    }

    else
    {
      v7 = "config-overrides";
    }

    v32 = v7 | 0x8000000000000000;
    v35 = *(v0 + 336);
    sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
    v8 = sub_100007224(&qword_1008341D0, &unk_1006BF8D0);
    v9 = *(*(v8 - 8) + 72);
    v10 = (*(*(v8 - 8) + 80) + 32) & ~*(*(v8 - 8) + 80);
    v31 = 2 * v9;
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1006BFF90;
    v12 = v11 + v10;
    v13 = v8;
    v29 = v8;
    v14 = (v11 + v10 + *(v8 + 48));
    v15 = enum case for DIPError.PropertyKey.conversationID(_:);
    v16 = type metadata accessor for DIPError.PropertyKey();
    v17 = *(*(v16 - 8) + 104);
    v17(v12, v15, v16);
    v18 = *(v30 + OBJC_IVAR____TtC8coreidvd13DIPWebService_conversation);
    v19 = *(v30 + OBJC_IVAR____TtC8coreidvd13DIPWebService_conversation + 8);
    v14[3] = &type metadata for String;
    v14[4] = &protocol witness table for String;
    *v14 = v18;
    v14[1] = v19;
    v20 = (v12 + v9 + *(v13 + 48));
    v17(v12 + v9, enum case for DIPError.PropertyKey.requestID(_:), v16);
    swift_errorRetain();

    JWSSignedJSON.payload.getter();
    v21 = *(v0 + 168);
    v22 = *(v0 + 232);
    v23 = *(v0 + 264);
    *(v0 + 112) = *(v0 + 248);
    *(v0 + 128) = v23;
    *(v0 + 144) = *(v0 + 280);
    v24 = *(v0 + 200);
    *(v0 + 48) = *(v0 + 184);
    *(v0 + 64) = v24;
    *(v0 + 80) = *(v0 + 216);
    *(v0 + 96) = v22;
    *(v0 + 16) = *(v0 + 152);
    *(v0 + 32) = v21;
    v26 = *(v0 + 32);
    v25 = *(v0 + 40);

    sub_1000AE6AC(v0 + 16);
    v20[3] = &type metadata for String;
    v20[4] = &protocol witness table for String;
    *v20 = v26;
    v20[1] = v25;
    v27 = (v12 + v31 + *(v29 + 48));
    v17(v12 + v31, enum case for DIPError.PropertyKey.serverURL(_:), v16);
    v27[3] = &type metadata for String;
    v27[4] = &protocol witness table for String;
    *v27 = 0xD000000000000018;
    v27[1] = v32;
    sub_10003C9C0(v11);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    (*(v33 + 104))(v34, enum case for DIPError.Code.internalError(_:), v35);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    (*(v36 + 8))(v38, v37);

    v5 = *(v0 + 8);
  }

  return v5();
}

uint64_t sub_1005E53C0()
{
  sub_10000BB78((v0 + 288));
  v31 = *(v0 + 384);
  v32 = *(v0 + 376);
  v33 = *(v0 + 392);
  v28 = *(v0 + 344);
  v29 = *(v0 + 352);
  v30 = *(v0 + 336);
  v1 = "config-overrides";
  v25 = *(v0 + 328);
  if (*(v0 + 432) == 2)
  {
    v1 = "nNotificationRequest";
  }

  v27 = v1 | 0x8000000000000000;
  sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
  v2 = sub_100007224(&qword_1008341D0, &unk_1006BF8D0);
  v3 = *(*(v2 - 8) + 72);
  v4 = (*(*(v2 - 8) + 80) + 32) & ~*(*(v2 - 8) + 80);
  v26 = 2 * v3;
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1006BFF90;
  v6 = v5 + v4;
  v7 = v2;
  v24 = v2;
  v8 = (v5 + v4 + *(v2 + 48));
  v9 = enum case for DIPError.PropertyKey.conversationID(_:);
  v10 = type metadata accessor for DIPError.PropertyKey();
  v11 = *(*(v10 - 8) + 104);
  (v11)(v6, v9, v10);
  v12 = *(v25 + OBJC_IVAR____TtC8coreidvd13DIPWebService_conversation);
  v13 = *(v25 + OBJC_IVAR____TtC8coreidvd13DIPWebService_conversation + 8);
  v8[3] = &type metadata for String;
  v8[4] = &protocol witness table for String;
  *v8 = v12;
  v8[1] = v13;
  v14 = (v6 + v3 + *(v7 + 48));
  v11();
  swift_errorRetain();

  JWSSignedJSON.payload.getter();
  v15 = *(v0 + 168);
  v16 = *(v0 + 232);
  v17 = *(v0 + 264);
  *(v0 + 112) = *(v0 + 248);
  *(v0 + 128) = v17;
  *(v0 + 144) = *(v0 + 280);
  v18 = *(v0 + 200);
  *(v0 + 48) = *(v0 + 184);
  *(v0 + 64) = v18;
  *(v0 + 80) = *(v0 + 216);
  *(v0 + 96) = v16;
  *(v0 + 16) = *(v0 + 152);
  *(v0 + 32) = v15;
  v19 = *(v0 + 32);
  v20 = *(v0 + 40);

  sub_1000AE6AC(v0 + 16);
  v14[3] = &type metadata for String;
  v14[4] = &protocol witness table for String;
  *v14 = v19;
  v14[1] = v20;
  v21 = (v6 + v26 + *(v24 + 48));
  v11();
  v21[3] = &type metadata for String;
  v21[4] = &protocol witness table for String;
  *v21 = 0xD000000000000018;
  v21[1] = v27;
  sub_10003C9C0(v5);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  (*(v28 + 104))(v29, enum case for DIPError.Code.internalError(_:), v30);
  type metadata accessor for DIPError();
  sub_1005FEAD4(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  (*(v31 + 8))(v33, v32);

  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_1005E5868(uint64_t a1, uint64_t a2)
{
  v3[43] = a2;
  v3[44] = v2;
  v3[42] = a1;
  v4 = type metadata accessor for ContinuousClock();
  v3[45] = v4;
  v3[46] = *(v4 - 8);
  v3[47] = swift_task_alloc();
  v5 = type metadata accessor for Logger();
  v3[48] = v5;
  v3[49] = *(v5 - 8);
  v3[50] = swift_task_alloc();
  v3[51] = swift_task_alloc();
  v6 = type metadata accessor for DIPError.Code();
  v3[52] = v6;
  v3[53] = *(v6 - 8);
  v3[54] = swift_task_alloc();
  sub_100007224(&unk_100844540, &unk_1006BFBC0);
  v3[55] = swift_task_alloc();
  type metadata accessor for DIPSignpost.Config();
  v3[56] = swift_task_alloc();
  v7 = type metadata accessor for DIPSignpost();
  v3[57] = v7;
  v3[58] = *(v7 - 8);
  v3[59] = swift_task_alloc();

  return _swift_task_switch(sub_1005E5AB0, 0, 0);
}

uint64_t sub_1005E5AB0()
{
  v1 = v0[55];
  v2 = v0[43];
  static DaemonSignposts.identityLivenessConfigRequest.getter();
  DIPSignpost.init(_:)();
  v3 = sub_1005FBCE8();
  v0[60] = v3;
  v0[37] = &type metadata for IdentityProofingLivenessConfigRequest;
  v4 = swift_allocObject();
  v0[34] = v4;
  v5 = v2[1];
  v4[1] = *v2;
  v4[2] = v5;
  v6 = v2[5];
  v8 = v2[2];
  v7 = v2[3];
  v4[5] = v2[4];
  v4[6] = v6;
  v4[3] = v8;
  v4[4] = v7;
  v9 = v2[9];
  v11 = v2[6];
  v10 = v2[7];
  v4[9] = v2[8];
  v4[10] = v9;
  v4[7] = v11;
  v4[8] = v10;
  v12 = type metadata accessor for URL();
  (*(*(v12 - 8) + 56))(v1, 1, 1, v12);
  sub_1000B16B4(v2, (v0 + 2));
  v13 = swift_task_alloc();
  v0[61] = v13;
  *v13 = v0;
  v13[1] = sub_1005E5C40;
  v14 = v0[55];

  return sub_1005F4FEC((v0 + 34), 0xD000000000000014, 0x8000000100725080, v3, 0, v14);
}

uint64_t sub_1005E5C40(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *v4;
  v6[62] = a1;
  v6[63] = a2;
  v6[64] = v3;

  sub_10000BE18(v6[55], &unk_100844540, &unk_1006BFBC0);

  if (v3)
  {
    v7 = sub_1005E7700;
  }

  else
  {
    sub_10000BB78(v6 + 34);

    v7 = sub_1005E5DC8;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1005E5DC8()
{
  v1 = *(v0 + 512);
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  type metadata accessor for IdentityProofingLivenessConfigResponseV2(0);
  sub_1005FEAD4(&qword_1008369C0, type metadata accessor for IdentityProofingLivenessConfigResponseV2, &unk_1006C86B8);
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  if (v1)
  {

    v3 = *(v0 + 496);
    v2 = *(v0 + 504);
    v40 = enum case for DIPError.Code.internalError(_:);
    (*(*(v0 + 424) + 104))(*(v0 + 432));
    swift_errorRetain();
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1005FEAD4(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    sub_10000B90C(v3, v2);
    v37 = *(v0 + 464);
    v38 = *(v0 + 456);
    v39 = *(v0 + 472);
    v34 = *(v0 + 424);
    v35 = *(v0 + 432);
    v36 = *(v0 + 416);
    v32 = *(v0 + 352);
    v33 = *(v0 + 344);
    sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
    v4 = sub_100007224(&qword_1008341D0, &unk_1006BF8D0);
    v5 = *(*(v4 - 8) + 72);
    v6 = (*(*(v4 - 8) + 80) + 32) & ~*(*(v4 - 8) + 80);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1006BFF90;
    v8 = v7 + v6;
    v9 = (v7 + v6 + *(v4 + 48));
    v10 = enum case for DIPError.PropertyKey.conversationID(_:);
    v11 = type metadata accessor for DIPError.PropertyKey();
    v12 = *(*(v11 - 8) + 104);
    v12(v8, v10, v11);
    v13 = *(v32 + OBJC_IVAR____TtC8coreidvd13DIPWebService_conversation);
    v14 = *(v32 + OBJC_IVAR____TtC8coreidvd13DIPWebService_conversation + 8);
    v9[3] = &type metadata for String;
    v9[4] = &protocol witness table for String;
    *v9 = v13;
    v9[1] = v14;
    v15 = v8 + v5 + *(v4 + 48);
    v12(v8 + v5, enum case for DIPError.PropertyKey.requestID(_:), v11);
    *(v0 + 304) = *(v33 + 16);
    *(v15 + 24) = &type metadata for String;
    *(v15 + 32) = &protocol witness table for String;
    *v15 = *(v33 + 16);
    v16 = (v8 + 2 * v5 + *(v4 + 48));
    v12(v8 + 2 * v5, enum case for DIPError.PropertyKey.serverURL(_:), v11);
    v16[3] = &type metadata for String;
    v16[4] = &protocol witness table for String;
    *v16 = 0xD000000000000014;
    v16[1] = 0x8000000100725080;
    swift_errorRetain();

    sub_10004D7A0(v0 + 304, v0 + 320);
    sub_10003C9C0(v7);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    (*(v34 + 104))(v35, v40, v36);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    (*(v37 + 8))(v39, v38);

    v17 = *(v0 + 8);

    return v17();
  }

  else
  {
    v19 = *(v0 + 336);
    v20 = *(v0 + 344);

    v22 = *v20;
    v21 = v20[1];
    v23 = v20[2];
    v24 = v20[3];
    v25 = v19[1];
    *(v0 + 176) = *v19;
    *(v0 + 192) = v25;
    v26 = v19[2];
    v27 = v19[3];
    v28 = v19[5];
    *(v0 + 240) = v19[4];
    *(v0 + 256) = v28;
    *(v0 + 208) = v26;
    *(v0 + 224) = v27;
    v29 = v20[10];
    v30 = v20[11];
    v31 = swift_task_alloc();
    *(v0 + 520) = v31;
    *v31 = v0;
    v31[1] = sub_1005E6460;

    return sub_1005F7D7C(v22, v21, v23, v24, v0 + 176, v29, v30);
  }
}

uint64_t sub_1005E6460(uint64_t a1)
{
  *(*v1 + 528) = a1;

  return _swift_task_switch(sub_1005E6560, 0, 0);
}

uint64_t sub_1005E6560()
{
  v51 = v0;
  if (*(v0 + 528))
  {
    v47 = *(v0 + 336);
    v49 = enum case for DIPError.Code.internalError(_:);
    (*(*(v0 + 424) + 104))(*(v0 + 432));
    swift_errorRetain();
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1005FEAD4(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    sub_1005FEB84(v47, type metadata accessor for IdentityProofingLivenessConfigResponseV2);
    v1 = *(v0 + 496);
    v48 = *(v0 + 504);
    (*(*(v0 + 424) + 104))(*(v0 + 432), v49, *(v0 + 416));
    swift_errorRetain();
    sub_1000402AC(_swiftEmptyArrayStorage);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    sub_10000B90C(v1, v48);
    v44 = *(v0 + 464);
    v45 = *(v0 + 456);
    v46 = *(v0 + 472);
    v41 = *(v0 + 424);
    v42 = *(v0 + 432);
    v43 = *(v0 + 416);
    v39 = *(v0 + 352);
    v40 = *(v0 + 344);
    sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
    v2 = sub_100007224(&qword_1008341D0, &unk_1006BF8D0);
    v3 = *(*(v2 - 8) + 72);
    v4 = (*(*(v2 - 8) + 80) + 32) & ~*(*(v2 - 8) + 80);
    v38 = 2 * v3;
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1006BFF90;
    v6 = v5 + v4;
    v7 = (v5 + v4 + *(v2 + 48));
    v8 = enum case for DIPError.PropertyKey.conversationID(_:);
    v9 = type metadata accessor for DIPError.PropertyKey();
    v10 = *(*(v9 - 8) + 104);
    v10(v6, v8, v9);
    v11 = *(v39 + OBJC_IVAR____TtC8coreidvd13DIPWebService_conversation);
    v12 = *(v39 + OBJC_IVAR____TtC8coreidvd13DIPWebService_conversation + 8);
    v7[3] = &type metadata for String;
    v7[4] = &protocol witness table for String;
    *v7 = v11;
    v7[1] = v12;
    v13 = v6 + v3;
    v14 = v6 + v3 + *(v2 + 48);
    v10(v13, enum case for DIPError.PropertyKey.requestID(_:), v9);
    *(v0 + 304) = *(v40 + 16);
    *(v14 + 24) = &type metadata for String;
    *(v14 + 32) = &protocol witness table for String;
    *v14 = *(v40 + 16);
    v15 = (v6 + v38 + *(v2 + 48));
    v10(v6 + v38, enum case for DIPError.PropertyKey.serverURL(_:), v9);
    v15[3] = &type metadata for String;
    v15[4] = &protocol witness table for String;
    *v15 = 0xD000000000000014;
    v15[1] = 0x8000000100725080;
    swift_errorRetain();

    sub_10004D7A0(v0 + 304, v0 + 320);
    sub_10003C9C0(v5);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    (*(v41 + 104))(v42, v49, v43);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    (*(v44 + 8))(v46, v45);

    v16 = *(v0 + 8);
LABEL_5:

    return v16();
  }

  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  v17 = [objc_opt_self() standardUserDefaults];
  v18._countAndFlagsBits = static DaemonInternalDefaultsKeys.livenssConfigFetchDelay.getter();
  v53 = NSUserDefaults.internalDouble(forKey:)(v18);
  v19 = *&v53.is_nil;
  v21 = v20;

  if (v21)
  {
    v22 = *(v0 + 496);
    v23 = *(v0 + 504);
    (*(*(v0 + 464) + 8))(*(v0 + 472), *(v0 + 456));
    sub_10000B90C(v22, v23);

    v16 = *(v0 + 8);
    goto LABEL_5;
  }

  *(v0 + 536) = v19;
  defaultLogger()();
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.debug.getter();
  v27 = os_log_type_enabled(v25, v26);
  v28 = *(v0 + 408);
  v29 = *(v0 + 384);
  v30 = *(v0 + 392);
  if (v27)
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v50[0] = v32;
    *v31 = 136315394;
    *(v31 + 4) = sub_100141FE4(0xD000000000000026, 0x80000001007250D0, v50);
    *(v31 + 12) = 2048;
    *(v31 + 14) = v19;
    _os_log_impl(&_mh_execute_header, v25, v26, "%s force delay %fs - start", v31, 0x16u);
    sub_10000BB78(v32);
  }

  v33 = *(v30 + 8);
  v33(v28, v29);
  *(v0 + 544) = v33;
  v34 = static Duration.seconds(_:)();
  v36 = v35;
  static Clock<>.continuous.getter();
  v37 = swift_task_alloc();
  *(v0 + 552) = v37;
  *v37 = v0;
  v37[1] = sub_1005E6DEC;

  return sub_1003DA1A4(v34, v36, 0, 0, 1);
}

uint64_t sub_1005E6DEC()
{
  v2 = *v1;
  *(*v1 + 560) = v0;

  (*(v2[46] + 8))(v2[47], v2[45]);
  if (v0)
  {
    v3 = sub_1005E71A4;
  }

  else
  {
    v3 = sub_1005E6F54;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1005E6F54(uint64_t a1)
{
  v24 = v1;
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v1[68];
  if (v4)
  {
    v6 = v1[67];
    v8 = v1[62];
    v7 = v1[63];
    v9 = v1[58];
    v21 = v1[57];
    v22 = v1[59];
    v19 = v1[48];
    v20 = v1[50];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v23 = v11;
    *v10 = 136315394;
    *(v10 + 4) = sub_100141FE4(0xD000000000000026, 0x80000001007250D0, &v23);
    *(v10 + 12) = 2048;
    *(v10 + 14) = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "%s force delay %fs - end", v10, 0x16u);
    sub_10000BB78(v11);

    sub_10000B90C(v8, v7);

    v5(v20, v19);
    (*(v9 + 8))(v22, v21);
  }

  else
  {
    v13 = v1[58];
    v12 = v1[59];
    v14 = v1[57];
    v15 = v1[50];
    v16 = v1[48];
    sub_10000B90C(v1[62], v1[63]);

    v5(v15, v16);
    (*(v13 + 8))(v12, v14);
  }

  v17 = v1[1];

  return v17();
}

uint64_t sub_1005E71A4()
{
  sub_1005FEB84(*(v0 + 336), type metadata accessor for IdentityProofingLivenessConfigResponseV2);
  v2 = *(v0 + 496);
  v1 = *(v0 + 504);
  v26 = enum case for DIPError.Code.internalError(_:);
  (*(*(v0 + 424) + 104))(*(v0 + 432));
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_1005FEAD4(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  sub_10000B90C(v2, v1);
  v23 = *(v0 + 464);
  v24 = *(v0 + 456);
  v25 = *(v0 + 472);
  v20 = *(v0 + 424);
  v21 = *(v0 + 432);
  v22 = *(v0 + 416);
  v18 = *(v0 + 352);
  v19 = *(v0 + 344);
  sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
  v3 = sub_100007224(&qword_1008341D0, &unk_1006BF8D0);
  v4 = *(*(v3 - 8) + 72);
  v5 = (*(*(v3 - 8) + 80) + 32) & ~*(*(v3 - 8) + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1006BFF90;
  v7 = v6 + v5;
  v8 = (v6 + v5 + *(v3 + 48));
  v9 = enum case for DIPError.PropertyKey.conversationID(_:);
  v10 = type metadata accessor for DIPError.PropertyKey();
  v11 = *(*(v10 - 8) + 104);
  v11(v7, v9, v10);
  v12 = *(v18 + OBJC_IVAR____TtC8coreidvd13DIPWebService_conversation);
  v13 = *(v18 + OBJC_IVAR____TtC8coreidvd13DIPWebService_conversation + 8);
  v8[3] = &type metadata for String;
  v8[4] = &protocol witness table for String;
  *v8 = v12;
  v8[1] = v13;
  v14 = v7 + v4 + *(v3 + 48);
  v11(v7 + v4, enum case for DIPError.PropertyKey.requestID(_:), v10);
  *(v0 + 304) = *(v19 + 16);
  *(v14 + 24) = &type metadata for String;
  *(v14 + 32) = &protocol witness table for String;
  *v14 = *(v19 + 16);
  v15 = (v7 + 2 * v4 + *(v3 + 48));
  v11(v7 + 2 * v4, enum case for DIPError.PropertyKey.serverURL(_:), v10);
  v15[3] = &type metadata for String;
  v15[4] = &protocol witness table for String;
  *v15 = 0xD000000000000014;
  v15[1] = 0x8000000100725080;
  swift_errorRetain();

  sub_10004D7A0(v0 + 304, v0 + 320);
  sub_10003C9C0(v6);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  (*(v20 + 104))(v21, v26, v22);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  (*(v23 + 8))(v25, v24);

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_1005E7700()
{
  sub_10000BB78((v0 + 272));
  v21 = *(v0 + 464);
  v22 = *(v0 + 456);
  v23 = *(v0 + 472);
  v18 = *(v0 + 424);
  v19 = *(v0 + 432);
  v20 = *(v0 + 416);
  v16 = *(v0 + 352);
  v17 = *(v0 + 344);
  sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
  v1 = sub_100007224(&qword_1008341D0, &unk_1006BF8D0);
  v2 = *(*(v1 - 8) + 72);
  v3 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v15 = 2 * v2;
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1006BFF90;
  v5 = (v4 + v3 + *(v1 + 48));
  v6 = enum case for DIPError.PropertyKey.conversationID(_:);
  v7 = type metadata accessor for DIPError.PropertyKey();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v4 + v3, v6, v7);
  v9 = *(v16 + OBJC_IVAR____TtC8coreidvd13DIPWebService_conversation);
  v10 = *(v16 + OBJC_IVAR____TtC8coreidvd13DIPWebService_conversation + 8);
  v5[3] = &type metadata for String;
  v5[4] = &protocol witness table for String;
  *v5 = v9;
  v5[1] = v10;
  v11 = v4 + v3 + v2 + *(v1 + 48);
  v8();
  *(v0 + 304) = *(v17 + 16);
  *(v11 + 24) = &type metadata for String;
  *(v11 + 32) = &protocol witness table for String;
  *v11 = *(v17 + 16);
  v12 = (v4 + v3 + v15 + *(v1 + 48));
  v8();
  v12[3] = &type metadata for String;
  v12[4] = &protocol witness table for String;
  *v12 = 0xD000000000000014;
  v12[1] = 0x8000000100725080;
  swift_errorRetain();

  sub_10004D7A0(v0 + 304, v0 + 320);
  sub_10003C9C0(v4);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  (*(v18 + 104))(v19, enum case for DIPError.Code.internalError(_:), v20);
  type metadata accessor for DIPError();
  sub_1005FEAD4(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  (*(v21 + 8))(v23, v22);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_1005E7B5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 872) = v8;
  *(v9 + 864) = a8;
  *(v9 + 856) = a7;
  *(v9 + 1056) = a6;
  *(v9 + 848) = a5;
  *(v9 + 840) = a4;
  *(v9 + 832) = a3;
  *(v9 + 824) = a2;
  *(v9 + 816) = a1;
  v10 = type metadata accessor for DIPError.Code();
  *(v9 + 880) = v10;
  *(v9 + 888) = *(v10 - 8);
  *(v9 + 896) = swift_task_alloc();
  v11 = type metadata accessor for Logger();
  *(v9 + 904) = v11;
  *(v9 + 912) = *(v11 - 8);
  *(v9 + 920) = swift_task_alloc();
  type metadata accessor for IdentityProofingRequestV2(0);
  *(v9 + 928) = swift_task_alloc();
  sub_100007224(&unk_100844540, &unk_1006BFBC0);
  *(v9 + 936) = swift_task_alloc();
  type metadata accessor for DIPSignpost.Config();
  *(v9 + 944) = swift_task_alloc();
  v12 = type metadata accessor for DIPSignpost();
  *(v9 + 952) = v12;
  *(v9 + 960) = *(v12 - 8);
  *(v9 + 968) = swift_task_alloc();

  return _swift_task_switch(sub_1005E7D84, 0, 0);
}

uint64_t sub_1005E7D84()
{
  v1 = *(v0 + 936);
  v2 = *(v0 + 1056);
  v3 = *(v0 + 824);
  static DaemonSignposts.identityProofingRequestV2.getter();
  DIPSignpost.init(_:)();
  if (v2 == 2)
  {
    v4 = "entity proofing response";
  }

  else
  {
    v4 = "/1/getPendingCommands/ready";
  }

  v5 = sub_100007224(&qword_10083DC00, &qword_1006DB6E0);
  *(v0 + 976) = v5;
  *(v0 + 808) = v5;
  v6 = sub_100032DBC((v0 + 784));
  (*(*(v5 - 8) + 16))(v6, v3, v5);
  v7 = type metadata accessor for URL();
  (*(*(v7 - 8) + 56))(v1, 1, 1, v7);
  v8 = swift_task_alloc();
  *(v0 + 984) = v8;
  *v8 = v0;
  v8[1] = sub_1005E7F24;
  v9 = *(v0 + 936);
  v10 = *(v0 + 848);

  return sub_1005F4FEC(v0 + 784, 0xD000000000000016, v4 | 0x8000000000000000, v10, 0, v9);
}

uint64_t sub_1005E7F24(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *v4;
  v6[124] = a1;
  v6[125] = a2;
  v6[126] = v3;

  sub_10000BE18(v6[117], &unk_100844540, &unk_1006BFBC0);

  if (v3)
  {
    v7 = sub_1005E9290;
  }

  else
  {
    sub_10000BB78(v6 + 98);

    v7 = sub_1005E80E0;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1005E80E0()
{
  v1 = *(v0 + 1008);
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  *(v0 + 1016) = sub_100007224(&qword_10083DBF8, &unk_1006DB6A0);
  sub_1000BA30C(&qword_1008496E0, &qword_10083DBF8, &unk_1006DB6A0, &protocol conformance descriptor for JWSSignedJSON<A>);
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  if (v1)
  {
    v2 = *(v0 + 888);

    v51 = enum case for DIPError.Code.internalError(_:);
    v3 = *(v0 + 1000);
    v4 = *(v0 + 992);
    (*(v2 + 104))(*(v0 + 896));
    swift_errorRetain();
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1005FEAD4(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    sub_10000B90C(v4, v3);
    v48 = *(v0 + 960);
    v49 = *(v0 + 952);
    v50 = *(v0 + 968);
    v52 = *(v0 + 928);
    v46 = *(v0 + 888);
    v47 = *(v0 + 896);
    v45 = *(v0 + 880);
    v42 = *(v0 + 872);
    v5 = "/1/getPendingCommands/ready";
    if (*(v0 + 1056) == 2)
    {
      v5 = "entity proofing response";
    }

    v44 = v5 | 0x8000000000000000;
    sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
    v6 = sub_100007224(&qword_1008341D0, &unk_1006BF8D0);
    v7 = *(*(v6 - 8) + 72);
    v8 = (*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80);
    v43 = 2 * v7;
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1006BFF90;
    v10 = v9 + v8;
    v11 = (v10 + *(v6 + 48));
    v12 = enum case for DIPError.PropertyKey.conversationID(_:);
    v13 = type metadata accessor for DIPError.PropertyKey();
    v14 = *(*(v13 - 8) + 104);
    v14(v10, v12, v13);
    v15 = *(v42 + OBJC_IVAR____TtC8coreidvd13DIPWebService_conversation);
    v16 = *(v42 + OBJC_IVAR____TtC8coreidvd13DIPWebService_conversation + 8);
    v11[3] = &type metadata for String;
    v11[4] = &protocol witness table for String;
    *v11 = v15;
    v11[1] = v16;
    v17 = (v10 + v7 + *(v6 + 48));
    v14(v10 + v7, enum case for DIPError.PropertyKey.requestID(_:), v13);
    swift_errorRetain();

    JWSSignedJSON.payload.getter();
    v19 = *(v52 + 16);
    v18 = *(v52 + 24);

    sub_1005FEB84(v52, type metadata accessor for IdentityProofingRequestV2);
    v17[3] = &type metadata for String;
    v17[4] = &protocol witness table for String;
    *v17 = v19;
    v17[1] = v18;
    v20 = (v10 + v43 + *(v6 + 48));
    v14(v10 + v43, enum case for DIPError.PropertyKey.serverURL(_:), v13);
    v20[3] = &type metadata for String;
    v20[4] = &protocol witness table for String;
    *v20 = 0xD000000000000016;
    v20[1] = v44;
    sub_10003C9C0(v9);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    (*(v46 + 104))(v47, v51, v45);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    (*(v48 + 8))(v50, v49);

    v21 = *(v0 + 8);

    return v21();
  }

  else
  {
    v23 = *(v0 + 928);
    v24 = *(v0 + 864);

    JWSSignedJSON.payload.getter();
    v25 = *v23;
    v26 = v23[1];
    *(v0 + 1024) = v26;
    v27 = v23[2];
    v28 = v23[3];
    *(v0 + 1032) = v28;

    sub_1005FEB84(v23, type metadata accessor for IdentityProofingRequestV2);
    JWSSignedJSON.payload.getter();
    v29 = *(v0 + 272);
    v30 = *(v0 + 288);
    v31 = *(v0 + 240);
    *(v0 + 112) = *(v0 + 256);
    *(v0 + 128) = v29;
    *(v0 + 144) = v30;
    v33 = *(v0 + 192);
    v32 = *(v0 + 208);
    v34 = *(v0 + 176);
    *(v0 + 48) = v33;
    *(v0 + 64) = v32;
    v35 = *(v0 + 208);
    v37 = *(v0 + 224);
    v36 = *(v0 + 240);
    *(v0 + 80) = v37;
    *(v0 + 96) = v36;
    v38 = *(v0 + 176);
    v39 = *(v0 + 160);
    *(v0 + 16) = v39;
    *(v0 + 32) = v38;
    *(v0 + 624) = v33;
    *(v0 + 640) = v35;
    *(v0 + 656) = v37;
    *(v0 + 672) = v31;
    *(v0 + 592) = v39;
    *(v0 + 608) = v34;
    sub_1000B1478(v0 + 16, v0 + 688);
    sub_1000B1F44(v0 + 16);
    v40 = swift_task_alloc();
    *(v0 + 1040) = v40;
    *v40 = v0;
    v40[1] = sub_1005E8870;
    v41 = *(v0 + 856);

    return sub_1005F7D7C(v25, v26, v27, v28, v0 + 592, v41, v24);
  }
}

uint64_t sub_1005E8870(uint64_t a1)
{
  v2 = *v1;
  *(v2 + 1048) = a1;

  sub_1000ACC70(v2 + 16);

  return _swift_task_switch(sub_1005E89BC, 0, 0);
}

uint64_t sub_1005E89BC()
{
  v60 = v0;
  if (*(v0 + 1048))
  {
    JWSSignedJSON.payload.getter();
    v1 = *(v0 + 560);
    *(v0 + 400) = *(v0 + 544);
    *(v0 + 416) = v1;
    *(v0 + 432) = *(v0 + 576);
    v2 = *(v0 + 496);
    *(v0 + 336) = *(v0 + 480);
    *(v0 + 352) = v2;
    v3 = *(v0 + 528);
    *(v0 + 368) = *(v0 + 512);
    *(v0 + 384) = v3;
    v4 = *(v0 + 464);
    *(v0 + 304) = *(v0 + 448);
    *(v0 + 320) = v4;
    v6 = *(v0 + 400);
    v5 = *(v0 + 408);

    sub_1000B1F44(v0 + 304);
    if (v5)
    {
      defaultLogger()();

      v7 = Logger.logObject.getter();
      v8 = static os_log_type_t.debug.getter();

      v9 = os_log_type_enabled(v7, v8);
      v10 = *(v0 + 920);
      v11 = *(v0 + 912);
      v12 = *(v0 + 904);
      if (v9)
      {
        v57 = *(v0 + 920);
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        v59[0] = v14;
        *v13 = 136315138;
        v15 = sub_100141FE4(v6, v5, v59);

        *(v13 + 4) = v15;
        _os_log_impl(&_mh_execute_header, v7, v8, "server runtime error : %s", v13, 0xCu);
        sub_10000BB78(v14);

        (*(v11 + 8))(v57, v12);
      }

      else
      {

        (*(v11 + 8))(v10, v12);
      }
    }

    v53 = *(v0 + 1016);
    v56 = *(v0 + 816);
    v58 = enum case for DIPError.Code.internalError(_:);
    v25 = *(*(v0 + 888) + 104);
    v25(*(v0 + 896));
    swift_errorRetain();
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1005FEAD4(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    (*(*(v53 - 8) + 8))(v56);
    v26 = *(v0 + 1000);
    v54 = *(v0 + 992);
    (v25)(*(v0 + 896), v58, *(v0 + 880));
    swift_errorRetain();
    sub_1000402AC(_swiftEmptyArrayStorage);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    sub_10000B90C(v54, v26);
    v50 = *(v0 + 960);
    v51 = *(v0 + 952);
    v52 = *(v0 + 968);
    v55 = *(v0 + 928);
    v48 = *(v0 + 888);
    v49 = *(v0 + 896);
    v47 = *(v0 + 880);
    v44 = *(v0 + 872);
    v27 = "/1/getPendingCommands/ready";
    if (*(v0 + 1056) == 2)
    {
      v27 = "entity proofing response";
    }

    v46 = v27 | 0x8000000000000000;
    sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
    v28 = sub_100007224(&qword_1008341D0, &unk_1006BF8D0);
    v29 = *(*(v28 - 8) + 72);
    v30 = (*(*(v28 - 8) + 80) + 32) & ~*(*(v28 - 8) + 80);
    v45 = 2 * v29;
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_1006BFF90;
    v32 = v31 + v30;
    v33 = (v32 + *(v28 + 48));
    v34 = enum case for DIPError.PropertyKey.conversationID(_:);
    v35 = type metadata accessor for DIPError.PropertyKey();
    v36 = *(*(v35 - 8) + 104);
    v36(v32, v34, v35);
    v37 = *(v44 + OBJC_IVAR____TtC8coreidvd13DIPWebService_conversation);
    v38 = *(v44 + OBJC_IVAR____TtC8coreidvd13DIPWebService_conversation + 8);
    v33[3] = &type metadata for String;
    v33[4] = &protocol witness table for String;
    *v33 = v37;
    v33[1] = v38;
    v39 = (v32 + v29 + *(v28 + 48));
    v36(v32 + v29, enum case for DIPError.PropertyKey.requestID(_:), v35);
    swift_errorRetain();

    JWSSignedJSON.payload.getter();
    v41 = *(v55 + 16);
    v40 = *(v55 + 24);

    sub_1005FEB84(v55, type metadata accessor for IdentityProofingRequestV2);
    v39[3] = &type metadata for String;
    v39[4] = &protocol witness table for String;
    *v39 = v41;
    v39[1] = v40;
    v42 = (v32 + v45 + *(v28 + 48));
    v36(v32 + v45, enum case for DIPError.PropertyKey.serverURL(_:), v35);
    v42[3] = &type metadata for String;
    v42[4] = &protocol witness table for String;
    *v42 = 0xD000000000000016;
    v42[1] = v46;
    sub_10003C9C0(v31);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    (*(v48 + 104))(v49, v58, v47);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    (*(v50 + 8))(v52, v51);

    v24 = *(v0 + 8);
  }

  else
  {
    v16 = *(v0 + 1000);
    v17 = *(v0 + 992);
    v18 = *(v0 + 968);
    v19 = *(v0 + 960);
    v20 = *(v0 + 952);
    v21 = *(v0 + 840);
    v22 = *(v0 + 832);

    v23.value._countAndFlagsBits = v22;
    v23.value._object = v21;
    DIPSignpost.end(workflowID:isBackground:)(v23, 2);
    sub_10000B90C(v17, v16);
    (*(v19 + 8))(v18, v20);

    v24 = *(v0 + 8);
  }

  return v24();
}

uint64_t sub_1005E9290()
{
  sub_10000BB78((v0 + 784));
  v27 = *(v0 + 968);
  v25 = *(v0 + 960);
  v26 = *(v0 + 952);
  v28 = *(v0 + 928);
  v1 = "/1/getPendingCommands/ready";
  v23 = *(v0 + 888);
  v24 = *(v0 + 896);
  v19 = *(v0 + 872);
  if (*(v0 + 1056) == 2)
  {
    v1 = "entity proofing response";
  }

  v21 = v1 | 0x8000000000000000;
  v22 = *(v0 + 880);
  sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
  v2 = sub_100007224(&qword_1008341D0, &unk_1006BF8D0);
  v3 = *(*(v2 - 8) + 72);
  v4 = (*(*(v2 - 8) + 80) + 32) & ~*(*(v2 - 8) + 80);
  v20 = 2 * v3;
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1006BFF90;
  v6 = v5 + v4;
  v7 = (v5 + v4 + *(v2 + 48));
  v8 = enum case for DIPError.PropertyKey.conversationID(_:);
  v9 = type metadata accessor for DIPError.PropertyKey();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v6, v8, v9);
  v11 = *(v19 + OBJC_IVAR____TtC8coreidvd13DIPWebService_conversation);
  v12 = *(v19 + OBJC_IVAR____TtC8coreidvd13DIPWebService_conversation + 8);
  v7[3] = &type metadata for String;
  v7[4] = &protocol witness table for String;
  *v7 = v11;
  v7[1] = v12;
  v13 = (v6 + v3 + *(v2 + 48));
  v10();
  swift_errorRetain();

  JWSSignedJSON.payload.getter();
  v14 = *(v28 + 16);
  v15 = *(v28 + 24);

  sub_1005FEB84(v28, type metadata accessor for IdentityProofingRequestV2);
  v13[3] = &type metadata for String;
  v13[4] = &protocol witness table for String;
  *v13 = v14;
  v13[1] = v15;
  v16 = (v6 + v20 + *(v2 + 48));
  v10();
  v16[3] = &type metadata for String;
  v16[4] = &protocol witness table for String;
  *v16 = 0xD000000000000016;
  v16[1] = v21;
  sub_10003C9C0(v5);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  (*(v23 + 104))(v24, enum case for DIPError.Code.internalError(_:), v22);
  type metadata accessor for DIPError();
  sub_1005FEAD4(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  (*(v25 + 8))(v27, v26);

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_1005E9738(uint64_t a1, uint64_t a2)
{
  v3[18] = a2;
  v3[19] = v2;
  v3[17] = a1;
  v4 = type metadata accessor for DIPError.Code();
  v3[20] = v4;
  v3[21] = *(v4 - 8);
  v3[22] = swift_task_alloc();
  v5 = type metadata accessor for URLRequest();
  v3[23] = v5;
  v3[24] = *(v5 - 8);
  v3[25] = swift_task_alloc();
  v3[26] = swift_task_alloc();
  v3[27] = swift_task_alloc();
  v3[28] = swift_task_alloc();
  sub_100007224(&unk_100844540, &unk_1006BFBC0);
  v3[29] = swift_task_alloc();
  v6 = type metadata accessor for URL();
  v3[30] = v6;
  v3[31] = *(v6 - 8);
  v3[32] = swift_task_alloc();
  v3[33] = swift_task_alloc();
  v3[34] = swift_task_alloc();
  v3[35] = swift_task_alloc();
  type metadata accessor for DIPSignpost.Config();
  v3[36] = swift_task_alloc();
  v7 = type metadata accessor for DIPSignpost();
  v3[37] = v7;
  v3[38] = *(v7 - 8);
  v3[39] = swift_task_alloc();

  return _swift_task_switch(sub_1005E99BC, 0, 0);
}

uint64_t sub_1005E99BC()
{
  static DaemonSignposts.getPendingCommandsReadyRequest.getter();
  DIPSignpost.init(_:)();
  v1 = swift_task_alloc();
  *(v0 + 320) = v1;
  *v1 = v0;
  v1[1] = sub_1005E9A70;
  v2 = *(v0 + 232);

  return sub_1005F8A6C(v2, 3);
}

uint64_t sub_1005E9A70()
{

  return _swift_task_switch(sub_1005E9B6C, 0, 0);
}

uint64_t sub_1005E9B6C()
{
  v2 = v0[30];
  v1 = v0[31];
  v3 = v0[29];
  v107 = v0;
  if ((*(v1 + 48))(v3, 1, v2) == 1)
  {
    v5 = v0[21];
    v4 = v0[22];
    v6 = v0[20];
    sub_10000BE18(v3, &unk_100844540, &unk_1006BFBC0);
    (*(v5 + 104))(v4, enum case for DIPError.Code.passportFailedToGetTSMBaseURL(_:), v6);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1005FEAD4(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v92 = v0[38];
    v94 = v0[37];
    v96 = v0[39];
    v87 = v0[21];
    v88 = v0[22];
    v52 = v0[19];
    v89 = v0[20];
    v86 = v0[18];
    sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
    v53 = sub_100007224(&qword_1008341D0, &unk_1006BF8D0);
    v54 = *(*(v53 - 8) + 72);
    v55 = (*(*(v53 - 8) + 80) + 32) & ~*(*(v53 - 8) + 80);
    v56 = swift_allocObject();
    *(v56 + 16) = xmmword_1006BFF90;
    v57 = v56 + v55;
    v58 = (v56 + v55 + *(v53 + 48));
    v59 = enum case for DIPError.PropertyKey.conversationID(_:);
    v60 = type metadata accessor for DIPError.PropertyKey();
    v61 = *(*(v60 - 8) + 104);
    v61(v57, v59, v60);
    v62 = *(v52 + OBJC_IVAR____TtC8coreidvd13DIPWebService_conversation);
    v63 = *(v52 + OBJC_IVAR____TtC8coreidvd13DIPWebService_conversation + 8);
    v58[3] = &type metadata for String;
    v58[4] = &protocol witness table for String;
    *v58 = v62;
    v58[1] = v63;
    v64 = v57 + v54 + *(v53 + 48);
    v61(v57 + v54, enum case for DIPError.PropertyKey.requestID(_:), v60);
    *(v107 + 13) = *(v86 + 16);
    *(v64 + 24) = &type metadata for String;
    *(v64 + 32) = &protocol witness table for String;
    *v64 = *(v86 + 16);
    v65 = (v57 + 2 * v54 + *(v53 + 48));
    v61(v57 + 2 * v54, enum case for DIPError.PropertyKey.serverURL(_:), v60);
    v65[3] = &type metadata for String;
    v65[4] = &protocol witness table for String;
    *v65 = 0xD00000000000001BLL;
    v65[1] = 0x8000000100724F80;
    swift_errorRetain();

    sub_10004D7A0((v107 + 13), (v107 + 15));
    sub_10003C9C0(v56);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    (*(v87 + 104))(v88, enum case for DIPError.Code.internalError(_:), v89);
    type metadata accessor for DIPError();
    sub_1005FEAD4(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    (*(v92 + 8))(v96, v94);

    v66 = v107[1];
LABEL_16:

    return v66();
  }

  else
  {
    v7 = v0[32];
    v8 = v0[33];
    v102 = v0[34];
    v104 = v0[27];
    v9 = v0[18];
    v105 = v0[19];
    (*(v1 + 32))(v0[35], v3, v2);
    URL.appendingPathComponent(_:)();
    URL.appendingPathComponent(_:)();
    v10 = *(v1 + 8);
    v0[41] = v10;
    v0[42] = (v1 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v10(v7, v2);
    URL.appendingPathComponent(_:)();
    v10(v8, v2);
    v12 = *v9;
    v11 = v9[1];
    v13 = v9[2];
    v14 = v9[3];
    v15 = sub_10003D21C(&off_1007FB738);
    sub_10000BE18(&unk_1007FB758, &qword_100838820, &unk_1006DB6B0);
    v16 = sub_1005FC224(v12, v11, v13, v14, v15);

    v17 = *(v105 + OBJC_IVAR____TtC8coreidvd13DIPWebService_httpSession);
    v19 = *(v1 + 16);
    v18 = (v1 + 16);
    v19(v8, v102, v2);
    URLRequest.init(url:cachePolicy:timeoutInterval:)();
    v106 = v17;
    sub_1005C3550(v104, 1);
    URLRequest.cachePolicy.setter();
    v20 = 0;
    v21 = v16 + 8;
    v22 = -1;
    v23 = -1 << *(v16 + 32);
    if (-v23 < 64)
    {
      v22 = ~(-1 << -v23);
    }

    v24 = v22 & v16[8];
    v25 = (63 - v23) >> 6;
    if (v24)
    {
      while (1)
      {
        v26 = v20;
LABEL_11:
        v27 = __clz(__rbit64(v24));
        v24 &= v24 - 1;
        v28 = (v26 << 10) | (16 * v27);
        v29 = v16[6] + v28;
        v18 = *v29;
        v30 = *(v29 + 8);
        v31 = v16[7] + v28;
        v8 = *v31;
        v32 = *(v31 + 8);

        v33.value._countAndFlagsBits = v8;
        v33.value._object = v32;
        v34._countAndFlagsBits = v18;
        v34._object = v30;
        URLRequest.setValue(_:forHTTPHeaderField:)(v33, v34);

        if (!v24)
        {
          goto LABEL_7;
        }
      }
    }

    while (1)
    {
LABEL_7:
      v26 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v26 >= v25)
      {
        break;
      }

      v24 = v21[v26];
      ++v20;
      if (v24)
      {
        v20 = v26;
        goto LABEL_11;
      }
    }

    v36 = v107[27];
    v35 = v107[28];
    v37 = v107[26];
    v38 = v107[23];
    v39 = v107[24];

    v40 = *(v39 + 32);
    v40(v35, v36, v38);
    URLRequest.httpMethod.setter();
    v21 = *(v39 + 16);
    (v21)(v37, v35, v38);
    v41 = sub_1005BEE18(v37);
    v24 = v41;
    v107[43] = v41;
    if ((v42 & 1) != 0 && v41)
    {
      v43 = v107[26];
      v44 = v107[23];
      v45 = v107[24];
      v46 = [v41 data];
      v47 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v49 = v48;

      v103 = *(v45 + 8);
      v103(v43, v44);
      v50 = v49;
      type metadata accessor for JSONDecoder();
      swift_allocObject();
      JSONDecoder.init()();
      sub_1005FE7C0();
      dispatch thunk of JSONDecoder.decode<A>(_:from:)();
      v51 = v107[41];
      v82 = v107[38];
      v81 = v107[39];
      v95 = v107[37];
      v91 = v107[34];
      v93 = v107[35];
      v83 = v107[30];
      v90 = v107[28];
      v84 = v107[23];
      v85 = v107[17];

      v97 = *(v107 + 16);
      v101 = v107[3];
      v100 = *(v107 + 32);
      v99 = *(v107 + 5);
      v98 = *(v107 + 7);
      DIPSignpost.end(workflowID:isBackground:)(0, 2);
      sub_10000B90C(v47, v50);
      v103(v90, v84);
      v51(v91, v83);
      v51(v93, v83);
      (*(v82 + 8))(v81, v95);

      *v85 = v97;
      *(v85 + 8) = v101;
      *(v85 + 16) = v100;
      *(v85 + 40) = v98;
      *(v85 + 24) = v99;
      v66 = v107[1];
      goto LABEL_16;
    }

    v8 = v40;
    v68 = [objc_opt_self() standardUserDefaults];
    v69._countAndFlagsBits = static DaemonInternalDefaultsKeys.disableIfModifiedSinceHeader.getter();
    v70 = NSUserDefaults.internalBool(forKey:)(v69);

    if (!v70 && v24)
    {
      v71 = qword_100832D20;
      v18 = v24;
      if (v71 == -1)
      {
LABEL_22:
        v72 = sub_1005FFF28(v18);
        if (v73)
        {
          v74._countAndFlagsBits = 0xD000000000000011;
          v74._object = 0x8000000100723320;
          URLRequest.addValue(_:forHTTPHeaderField:)(*&v72, v74);
        }

        goto LABEL_25;
      }

LABEL_29:
      swift_once();
      goto LABEL_22;
    }

LABEL_25:
    v75 = v107[25];
    v76 = v107[23];
    (v21)(v75, v107[26], v76);
    type metadata accessor for DIPHTTPSession.RequestContainer(0);
    v77 = swift_allocObject();
    v107[44] = v77;
    swift_defaultActor_initialize();
    v8(v77 + OBJC_IVAR____TtCFC8coreidvd14DIPHTTPSession14performRequestFzZTV10Foundation10URLRequest21acceptableStatusCodesGSaSi_11ignoreCacheSb11isAnonymousSb17overridingAltDSIDGSqSS__TVS1_4DataCSo13NSURLResponseSb_L_16RequestContainer_request, v75, v76);
    v78 = swift_task_alloc();
    v107[45] = v78;
    *(v78 + 16) = v77;
    *(v78 + 24) = v106;
    *(v78 + 32) = 0;
    *(v78 + 40) = _swiftEmptyArrayStorage;
    *(v78 + 48) = v24;
    v79 = swift_task_alloc();
    v107[46] = v79;
    v80 = sub_100007224(&qword_100848F80, &qword_1006E91B0);
    *v79 = v107;
    v79[1] = sub_1005EA914;

    return DIPRetrier.retry<A>(operation:)(v107 + 9, &unk_1006E9700, v78, v80);
  }
}

uint64_t sub_1005EA914()
{
  *(*v1 + 376) = v0;

  if (v0)
  {
    v2 = sub_1005EB144;
  }

  else
  {
    v2 = sub_1005EAA48;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1005EAA48()
{
  v1 = *(v0 + 344);
  v2 = *(v0 + 208);
  v3 = *(v0 + 184);
  v4 = *(v0 + 192);

  v5 = *(v4 + 8);
  v5(v2, v3);
  v6 = *(v0 + 72);
  v7 = *(v0 + 80);

  v8 = *(v0 + 376);
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  sub_1005FE7C0();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  if (v8)
  {
    v9 = v6;
    v10 = *(v0 + 328);
    v53 = *(v0 + 280);
    v11 = *(v0 + 240);
    v49 = *(v0 + 224);
    v51 = *(v0 + 272);
    v12 = *(v0 + 184);

    sub_10000B90C(v9, v7);
    v5(v49, v12);
    v10(v51, v11);
    v10(v53, v11);
    v43 = *(v0 + 304);
    v44 = *(v0 + 296);
    v45 = *(v0 + 312);
    v37 = *(v0 + 168);
    v39 = *(v0 + 176);
    v41 = *(v0 + 160);
    v32 = *(v0 + 152);
    v33 = *(v0 + 144);
    sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
    v13 = sub_100007224(&qword_1008341D0, &unk_1006BF8D0);
    v14 = *(*(v13 - 8) + 72);
    v15 = (*(*(v13 - 8) + 80) + 32) & ~*(*(v13 - 8) + 80);
    v31 = 2 * v14;
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1006BFF90;
    v17 = (v16 + v15 + *(v13 + 48));
    v18 = enum case for DIPError.PropertyKey.conversationID(_:);
    v19 = type metadata accessor for DIPError.PropertyKey();
    v20 = *(*(v19 - 8) + 104);
    (v20)(v16 + v15, v18, v19);
    v21 = *(v32 + OBJC_IVAR____TtC8coreidvd13DIPWebService_conversation);
    v22 = *(v32 + OBJC_IVAR____TtC8coreidvd13DIPWebService_conversation + 8);
    v17[3] = &type metadata for String;
    v17[4] = &protocol witness table for String;
    *v17 = v21;
    v17[1] = v22;
    v23 = v16 + v15 + v14 + *(v13 + 48);
    v20();
    *(v0 + 104) = *(v33 + 16);
    *(v23 + 24) = &type metadata for String;
    *(v23 + 32) = &protocol witness table for String;
    *v23 = *(v33 + 16);
    v24 = (v16 + v15 + v31 + *(v13 + 48));
    v20();
    v24[3] = &type metadata for String;
    v24[4] = &protocol witness table for String;
    *v24 = 0xD00000000000001BLL;
    v24[1] = 0x8000000100724F80;
    swift_errorRetain();

    sub_10004D7A0(v0 + 104, v0 + 120);
    sub_10003C9C0(v16);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    (*(v37 + 104))(v39, enum case for DIPError.Code.internalError(_:), v41);
    type metadata accessor for DIPError();
    sub_1005FEAD4(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    (*(v43 + 8))(v45, v44);
  }

  else
  {
    v40 = *(v0 + 328);
    v27 = *(v0 + 304);
    v26 = *(v0 + 312);
    v42 = *(v0 + 296);
    v36 = *(v0 + 272);
    v38 = *(v0 + 280);
    v28 = *(v0 + 240);
    v35 = *(v0 + 224);
    v34 = *(v0 + 184);
    v29 = *(v0 + 136);

    v52 = *(v0 + 16);
    v50 = *(v0 + 24);
    v48 = *(v0 + 32);
    v47 = *(v0 + 40);
    v46 = *(v0 + 56);
    DIPSignpost.end(workflowID:isBackground:)(0, 2);
    sub_10000B90C(v6, v7);
    v5(v35, v34);
    v40(v36, v28);
    v40(v38, v28);
    (*(v27 + 8))(v26, v42);

    *v29 = v52;
    *(v29 + 8) = v50;
    *(v29 + 16) = v48;
    *(v29 + 40) = v46;
    *(v29 + 24) = v47;
  }

  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_1005EB144()
{
  v1 = *(v0 + 344);
  v2 = *(v0 + 328);
  v3 = *(v0 + 272);
  v34 = *(v0 + 280);
  v4 = *(v0 + 240);
  v5 = *(v0 + 224);
  v6 = *(v0 + 208);
  v8 = *(v0 + 184);
  v7 = *(v0 + 192);

  v9 = *(v7 + 8);
  v9(v6, v8);
  v9(v5, v8);
  v2(v3, v4);
  v2(v34, v4);
  v31 = *(v0 + 304);
  v32 = *(v0 + 296);
  v33 = *(v0 + 312);
  v28 = *(v0 + 168);
  v29 = *(v0 + 176);
  v30 = *(v0 + 160);
  v26 = *(v0 + 152);
  v27 = *(v0 + 144);
  sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
  v10 = sub_100007224(&qword_1008341D0, &unk_1006BF8D0);
  v11 = *(*(v10 - 8) + 72);
  v12 = (*(*(v10 - 8) + 80) + 32) & ~*(*(v10 - 8) + 80);
  v25 = 2 * v11;
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1006BFF90;
  v14 = v13 + v12;
  v15 = (v14 + *(v10 + 48));
  v16 = enum case for DIPError.PropertyKey.conversationID(_:);
  v17 = type metadata accessor for DIPError.PropertyKey();
  v18 = *(*(v17 - 8) + 104);
  (v18)(v14, v16, v17);
  v19 = *(v26 + OBJC_IVAR____TtC8coreidvd13DIPWebService_conversation);
  v20 = *(v26 + OBJC_IVAR____TtC8coreidvd13DIPWebService_conversation + 8);
  v15[3] = &type metadata for String;
  v15[4] = &protocol witness table for String;
  *v15 = v19;
  v15[1] = v20;
  v21 = v14 + v11 + *(v10 + 48);
  v18();
  *(v0 + 104) = *(v27 + 16);
  *(v21 + 24) = &type metadata for String;
  *(v21 + 32) = &protocol witness table for String;
  *v21 = *(v27 + 16);
  v22 = (v14 + v25 + *(v10 + 48));
  v18();
  v22[3] = &type metadata for String;
  v22[4] = &protocol witness table for String;
  *v22 = 0xD00000000000001BLL;
  v22[1] = 0x8000000100724F80;
  swift_errorRetain();

  sub_10004D7A0(v0 + 104, v0 + 120);
  sub_10003C9C0(v13);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  (*(v28 + 104))(v29, enum case for DIPError.Code.internalError(_:), v30);
  type metadata accessor for DIPError();
  sub_1005FEAD4(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  (*(v31 + 8))(v33, v32);

  v23 = *(v0 + 8);

  return v23();
}

uint64_t sub_1005EB62C(uint64_t a1, uint64_t a2)
{
  v3[32] = a2;
  v3[33] = v2;
  v3[31] = a1;
  v4 = type metadata accessor for DIPError.Code();
  v3[34] = v4;
  v3[35] = *(v4 - 8);
  v3[36] = swift_task_alloc();
  sub_100007224(&unk_100844540, &unk_1006BFBC0);
  v3[37] = swift_task_alloc();
  v3[38] = swift_task_alloc();
  v5 = type metadata accessor for URL();
  v3[39] = v5;
  v3[40] = *(v5 - 8);
  v3[41] = swift_task_alloc();
  type metadata accessor for DIPSignpost.Config();
  v3[42] = swift_task_alloc();
  v6 = type metadata accessor for DIPSignpost();
  v3[43] = v6;
  v3[44] = *(v6 - 8);
  v3[45] = swift_task_alloc();

  return _swift_task_switch(sub_1005EB818, 0, 0);
}

uint64_t sub_1005EB818()
{
  static DaemonSignposts.getPendingCommandsRequest.getter();
  DIPSignpost.init(_:)();
  v1 = swift_task_alloc();
  *(v0 + 368) = v1;
  *v1 = v0;
  v1[1] = sub_1005EB8CC;
  v2 = *(v0 + 304);

  return sub_1005F8A6C(v2, 3);
}

uint64_t sub_1005EB8CC()
{

  return _swift_task_switch(sub_1005EB9C8, 0, 0);
}

uint64_t sub_1005EB9C8()
{
  v1 = *(v0 + 312);
  v2 = *(v0 + 320);
  v3 = *(v0 + 304);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v5 = *(v0 + 280);
    v4 = *(v0 + 288);
    v6 = *(v0 + 272);
    sub_10000BE18(v3, &unk_100844540, &unk_1006BFBC0);
    (*(v5 + 104))(v4, enum case for DIPError.Code.passportFailedToGetPendingCommands(_:), v6);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1005FEAD4(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v40 = *(v0 + 360);
    v38 = *(v0 + 352);
    v39 = *(v0 + 344);
    v35 = *(v0 + 280);
    v36 = *(v0 + 288);
    v37 = *(v0 + 272);
    v33 = *(v0 + 264);
    v34 = *(v0 + 256);
    sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
    v7 = sub_100007224(&qword_1008341D0, &unk_1006BF8D0);
    v8 = *(*(v7 - 8) + 72);
    v9 = (*(*(v7 - 8) + 80) + 32) & ~*(*(v7 - 8) + 80);
    v32 = 2 * v8;
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1006BFF90;
    v11 = v10 + v9;
    v12 = (v10 + v9 + *(v7 + 48));
    v13 = enum case for DIPError.PropertyKey.conversationID(_:);
    v14 = type metadata accessor for DIPError.PropertyKey();
    v15 = *(*(v14 - 8) + 104);
    v15(v11, v13, v14);
    v16 = *(v33 + OBJC_IVAR____TtC8coreidvd13DIPWebService_conversation);
    v17 = *(v33 + OBJC_IVAR____TtC8coreidvd13DIPWebService_conversation + 8);
    v12[3] = &type metadata for String;
    v12[4] = &protocol witness table for String;
    *v12 = v16;
    v12[1] = v17;
    v18 = v11 + v8;
    v19 = v11 + v8 + *(v7 + 48);
    v15(v18, enum case for DIPError.PropertyKey.requestID(_:), v14);
    *(v0 + 216) = *(v34 + 16);
    *(v19 + 24) = &type metadata for String;
    *(v19 + 32) = &protocol witness table for String;
    *v19 = *(v34 + 16);
    v20 = (v11 + v32 + *(v7 + 48));
    v15(v11 + v32, enum case for DIPError.PropertyKey.serverURL(_:), v14);
    v20[3] = &type metadata for String;
    v20[4] = &protocol witness table for String;
    *v20 = 0xD000000000000015;
    v20[1] = 0x8000000100724EB0;
    swift_errorRetain();

    sub_10004D7A0(v0 + 216, v0 + 232);
    sub_10003C9C0(v10);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    (*(v35 + 104))(v36, enum case for DIPError.Code.internalError(_:), v37);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    (*(v38 + 8))(v40, v39);

    v21 = *(v0 + 8);

    return v21();
  }

  else
  {
    v23 = *(v0 + 328);
    v24 = *(v0 + 296);
    v25 = *(v0 + 256);
    (*(v2 + 32))(v23, v3, v1);
    *(v0 + 208) = &type metadata for GetPendingCommandsRequest;
    v26 = swift_allocObject();
    *(v0 + 184) = v26;
    v26[1] = *v25;
    v27 = v25[4];
    v29 = v25[1];
    v28 = v25[2];
    v26[4] = v25[3];
    v26[5] = v27;
    v26[2] = v29;
    v26[3] = v28;
    (*(v2 + 16))(v24, v23, v1);
    (*(v2 + 56))(v24, 0, 1, v1);
    sub_1000B164C(v25, v0 + 104);
    v30 = swift_task_alloc();
    *(v0 + 376) = v30;
    *v30 = v0;
    v30[1] = sub_1005EC068;
    v31 = *(v0 + 296);

    return sub_1005F4FEC(v0 + 184, 0xD000000000000015, 0x8000000100724EB0, 0, 0, v31);
  }
}

uint64_t sub_1005EC068(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v5[48] = a1;
  v5[49] = a2;
  v5[50] = a3;
  v5[51] = v3;

  sub_10000BE18(v5[37], &unk_100844540, &unk_1006BFBC0);
  if (v3)
  {
    v6 = sub_1005EC908;
  }

  else
  {
    sub_10000BB78(v5 + 23);
    v6 = sub_1005EC1B8;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1005EC1B8()
{
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  if (v1 && [v1 statusCode] == 204)
  {
    v2 = *(v0 + 392);
    v3 = *(v0 + 384);

    sub_10000B90C(v3, v2);
    v54 = 0;
    v55 = 0;
    v53 = 0;
    v49 = 0;
    v52 = 0u;
    v51 = _swiftEmptyArrayStorage;
    v4 = 1;
    v47 = 0u;
    v5 = 1;
  }

  else
  {
    v6 = *(v0 + 408);
    type metadata accessor for JSONDecoder();
    swift_allocObject();
    JSONDecoder.init()();
    sub_1005FE76C();
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    if (v6)
    {
      v45 = *(v0 + 392);
      v46 = *(v0 + 400);
      v7 = *(v0 + 384);
      v8 = *(v0 + 320);
      v50 = *(v0 + 328);
      v48 = *(v0 + 312);
      v10 = *(v0 + 280);
      v9 = *(v0 + 288);

      v56 = enum case for DIPError.Code.internalError(_:);
      (*(v10 + 104))(v9);
      swift_errorRetain();
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_1005FEAD4(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
      sub_10000B90C(v7, v45);

      (*(v8 + 8))(v50, v48);
      v43 = *(v0 + 344);
      v44 = *(v0 + 360);
      v39 = *(v0 + 280);
      v40 = *(v0 + 288);
      v41 = *(v0 + 272);
      v42 = *(v0 + 352);
      v37 = *(v0 + 264);
      v38 = *(v0 + 256);
      sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
      v11 = sub_100007224(&qword_1008341D0, &unk_1006BF8D0);
      v12 = *(*(v11 - 8) + 72);
      v13 = (*(*(v11 - 8) + 80) + 32) & ~*(*(v11 - 8) + 80);
      v36 = 2 * v12;
      v14 = swift_allocObject();
      *(v14 + 16) = xmmword_1006BFF90;
      v15 = v14 + v13;
      v16 = (v14 + v13 + *(v11 + 48));
      v17 = enum case for DIPError.PropertyKey.conversationID(_:);
      v18 = type metadata accessor for DIPError.PropertyKey();
      v19 = *(*(v18 - 8) + 104);
      v19(v15, v17, v18);
      v20 = *(v37 + OBJC_IVAR____TtC8coreidvd13DIPWebService_conversation);
      v21 = *(v37 + OBJC_IVAR____TtC8coreidvd13DIPWebService_conversation + 8);
      v16[3] = &type metadata for String;
      v16[4] = &protocol witness table for String;
      *v16 = v20;
      v16[1] = v21;
      v22 = v15 + v12;
      v23 = v15 + v12 + *(v11 + 48);
      v19(v22, enum case for DIPError.PropertyKey.requestID(_:), v18);
      *(v0 + 216) = *(v38 + 16);
      *(v23 + 24) = &type metadata for String;
      *(v23 + 32) = &protocol witness table for String;
      *v23 = *(v38 + 16);
      v24 = (v15 + v36 + *(v11 + 48));
      v19(v15 + v36, enum case for DIPError.PropertyKey.serverURL(_:), v18);
      v24[3] = &type metadata for String;
      v24[4] = &protocol witness table for String;
      *v24 = 0xD000000000000015;
      v24[1] = 0x8000000100724EB0;
      swift_errorRetain();

      sub_10004D7A0(v0 + 216, v0 + 232);
      sub_10003C9C0(v14);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      (*(v39 + 104))(v40, v56, v41);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();

      (*(v42 + 8))(v44, v43);

      v25 = *(v0 + 8);
      goto LABEL_8;
    }

    v26 = *(v0 + 392);
    v27 = *(v0 + 400);
    v28 = *(v0 + 384);

    v55 = *(v0 + 16);
    v29 = *(v0 + 24);
    v47 = *(v0 + 48);
    v52 = *(v0 + 32);
    v51 = *(v0 + 64);
    v53 = *(v0 + 80);
    v54 = *(v0 + 72);
    v49 = *(v0 + 88);
    v30 = *(v0 + 96);
    DIPSignpost.end(workflowID:isBackground:)(0, 2);
    sub_10000B90C(v28, v26);

    v5 = v30;
    v4 = v29;
  }

  v32 = *(v0 + 352);
  v31 = *(v0 + 360);
  v33 = *(v0 + 344);
  v34 = *(v0 + 248);
  v57 = v4;
  v58 = v5;
  (*(*(v0 + 320) + 8))(*(v0 + 328), *(v0 + 312));
  (*(v32 + 8))(v31, v33);
  *v34 = v55;
  *(v34 + 8) = v57;
  *(v34 + 16) = v52;
  *(v34 + 32) = v47;
  *(v34 + 48) = v51;
  *(v34 + 56) = v54;
  *(v34 + 64) = v53;
  *(v34 + 72) = v49;
  *(v34 + 80) = v58;

  v25 = *(v0 + 8);
LABEL_8:

  return v25();
}

uint64_t sub_1005EC908()
{
  (*(*(v0 + 320) + 8))(*(v0 + 328), *(v0 + 312));
  sub_10000BB78((v0 + 184));
  v24 = *(v0 + 360);
  v22 = *(v0 + 352);
  v23 = *(v0 + 344);
  v19 = *(v0 + 280);
  v20 = *(v0 + 288);
  v21 = *(v0 + 272);
  v17 = *(v0 + 264);
  v18 = *(v0 + 256);
  sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
  v1 = sub_100007224(&qword_1008341D0, &unk_1006BF8D0);
  v2 = *(*(v1 - 8) + 72);
  v3 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v16 = 2 * v2;
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1006BFF90;
  v5 = v4 + v3;
  v6 = (v5 + *(v1 + 48));
  v7 = enum case for DIPError.PropertyKey.conversationID(_:);
  v8 = type metadata accessor for DIPError.PropertyKey();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v5, v7, v8);
  v10 = *(v17 + OBJC_IVAR____TtC8coreidvd13DIPWebService_conversation);
  v11 = *(v17 + OBJC_IVAR____TtC8coreidvd13DIPWebService_conversation + 8);
  v6[3] = &type metadata for String;
  v6[4] = &protocol witness table for String;
  *v6 = v10;
  v6[1] = v11;
  v12 = v5 + v2 + *(v1 + 48);
  v9();
  *(v0 + 216) = *(v18 + 16);
  *(v12 + 24) = &type metadata for String;
  *(v12 + 32) = &protocol witness table for String;
  *v12 = *(v18 + 16);
  v13 = (v5 + v16 + *(v1 + 48));
  v9();
  v13[3] = &type metadata for String;
  v13[4] = &protocol witness table for String;
  *v13 = 0xD000000000000015;
  v13[1] = 0x8000000100724EB0;
  swift_errorRetain();

  sub_10004D7A0(v0 + 216, v0 + 232);
  sub_10003C9C0(v4);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  (*(v19 + 104))(v20, enum case for DIPError.Code.internalError(_:), v21);
  type metadata accessor for DIPError();
  sub_1005FEAD4(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  (*(v22 + 8))(v24, v23);

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_1005ECD74(uint64_t a1, uint64_t a2)
{
  v3[1081] = v2;
  v3[1080] = a2;
  v3[1079] = a1;
  v4 = type metadata accessor for DIPError.Code();
  v3[1082] = v4;
  v3[1083] = *(v4 - 8);
  v3[1084] = swift_task_alloc();
  v5 = type metadata accessor for URLRequest();
  v3[1085] = v5;
  v3[1086] = *(v5 - 8);
  v3[1087] = swift_task_alloc();
  v3[1088] = swift_task_alloc();
  v3[1089] = swift_task_alloc();
  sub_100007224(&qword_100848FA0, &qword_1006E94D0);
  v3[1090] = swift_task_alloc();
  v6 = type metadata accessor for URLComponents();
  v3[1091] = v6;
  v3[1092] = *(v6 - 8);
  v3[1093] = swift_task_alloc();
  sub_100007224(&unk_100844540, &unk_1006BFBC0);
  v3[1094] = swift_task_alloc();
  v3[1095] = swift_task_alloc();
  v7 = type metadata accessor for URL();
  v3[1096] = v7;
  v3[1097] = *(v7 - 8);
  v3[1098] = swift_task_alloc();
  v3[1099] = swift_task_alloc();
  v3[1100] = swift_task_alloc();
  v3[1101] = swift_task_alloc();
  type metadata accessor for DIPSignpost.Config();
  v3[1102] = swift_task_alloc();
  v8 = type metadata accessor for DIPSignpost();
  v3[1103] = v8;
  v3[1104] = *(v8 - 8);
  v3[1105] = swift_task_alloc();

  return _swift_task_switch(sub_1005ED090, 0, 0);
}

uint64_t sub_1005ED090()
{
  static DaemonSignposts.getPassportIMQModelRequest.getter();
  DIPSignpost.init(_:)();
  v1 = swift_task_alloc();
  *(v0 + 8848) = v1;
  *v1 = v0;
  v1[1] = sub_1005ED144;
  v2 = *(v0 + 8760);

  return sub_1005F8A6C(v2, 4);
}

uint64_t sub_1005ED144()
{

  return _swift_task_switch(sub_1005ED240, 0, 0);
}

uint64_t sub_1005ED240(uint64_t a1)
{
  v101 = v1;
  __chkstk_darwin(a1);
  v2 = v1[1097];
  v3 = v1[1096];
  v4 = v1[1095];
  v5 = *(v2 + 48);
  if (v5(v4, 1, v3) == 1)
  {
    v6 = v1[1105];
    v7 = v1[1104];
    v8 = v1[1103];
    v9 = v1[1084];
    v10 = v1[1083];
    v11 = v1[1082];
    sub_10000BE18(v4, &unk_100844540, &unk_1006BFBC0);
    (*(v10 + 104))(v9, enum case for DIPError.Code.missingPassportIMQBaseURL(_:), v11);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1005FEAD4(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    (*(v7 + 8))(v6, v8);
LABEL_10:

    v75 = v1[1];
    goto LABEL_11;
  }

  v12 = v1[1092];
  v13 = v1[1090];
  v96 = *(v2 + 32);
  v99 = v1[1091];
  v96(v1[1101], v4, v3);
  URL.appendingPathComponent(_:)();
  URLComponents.init(url:resolvingAgainstBaseURL:)();
  if ((*(v12 + 48))(v13, 1, v99) == 1)
  {
    v14 = v1[1104];
    v93 = v1[1103];
    v97 = v1[1105];
    v89 = v1[1100];
    v91 = v1[1101];
    v15 = v1[1097];
    v16 = v1[1096];
    v17 = v1[1084];
    v18 = v1[1083];
    v19 = v1[1082];
    sub_10000BE18(v1[1090], &qword_100848FA0, &qword_1006E94D0);
    (*(v18 + 104))(v17, enum case for DIPError.Code.malformedPassportIMQURL(_:), v19);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1005FEAD4(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v20 = *(v15 + 8);
    v20(v89, v16);
    v20(v91, v16);
    (*(v14 + 8))(v97, v93);
    goto LABEL_10;
  }

  v21 = v1[1096];
  v22 = v1[1094];
  (*(v1[1092] + 32))(v1[1093], v1[1090], v1[1091]);
  sub_100062930();
  URLComponents.queryItems.setter();
  URLComponents.url.getter();
  v23 = v1;
  if (v5(v22, 1, v21) == 1)
  {
    v24 = v1[1104];
    v94 = v1[1103];
    v98 = v1[1105];
    v90 = v1[1100];
    v92 = v1[1101];
    v25 = v1[1097];
    v87 = v1[1093];
    v88 = v1[1096];
    v26 = v1[1092];
    v86 = v1[1091];
    v27 = v1[1084];
    v28 = v1[1083];
    v29 = v1[1082];
    sub_10000BE18(v1[1094], &unk_100844540, &unk_1006BFBC0);
    (*(v28 + 104))(v27, enum case for DIPError.Code.invalidPassportIMQQueryComponents(_:), v29);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1005FEAD4(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    (*(v26 + 8))(v87, v86);
    v30 = *(v25 + 8);
    v30(v90, v88);
    v30(v92, v88);
    (*(v24 + 8))(v98, v94);
    goto LABEL_10;
  }

  v31 = v1[1099];
  v32 = v1[1098];
  v33 = v1[1097];
  v34 = v1[1096];
  v35 = v1[1094];
  v36 = v1[1089];
  v37 = v1[1088];
  v38 = v1[1086];
  v39 = v23[1085];
  v95 = v23;
  v40 = v23[1081];
  v96(v31, v35, v34);
  (*(v33 + 16))(v32, v31, v34);
  URLRequest.init(url:cachePolicy:timeoutInterval:)();
  URLRequest.cachePolicy.setter();
  URLRequest.httpMethod.setter();
  v41 = *(v40 + OBJC_IVAR____TtC8coreidvd13DIPWebService_httpSession);
  v42 = *(v38 + 16);
  v42(v37, v36, v39);
  v43 = sub_1005BEE18(v37);
  v44 = v43;
  v95[1107] = v43;
  if ((v45 & 1) != 0 && v43)
  {
    v46 = v95[1088];
    v47 = v95[1086];
    v48 = v95[1085];
    v49 = [v43 data];
    v50 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v52 = v51;

    v53 = *(v47 + 8);
    v53(v46, v48);
    type metadata accessor for JSONDecoder();
    swift_allocObject();
    JSONDecoder.init()();
    sub_1005FE6C0();
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    v70 = v95[1105];
    v84 = v95[1104];
    v85 = v95[1103];
    v83 = v95[1101];
    v71 = v95[1097];
    v72 = v95[1096];
    v80 = v95[1093];
    v81 = v95[1100];
    v73 = v95[1092];
    v78 = v95[1099];
    v79 = v95[1091];
    v76 = v95[1085];
    v77 = v95[1089];
    v82 = v95[1079];

    memcpy(__dst, v95 + 2, sizeof(__dst));
    DIPSignpost.end(workflowID:isBackground:)(0, 2);
    sub_10000B90C(v50, v52);
    v53(v77, v76);
    v74 = *(v71 + 8);
    v74(v78, v72);
    (*(v73 + 8))(v80, v79);
    v74(v81, v72);
    v74(v83, v72);
    (*(v84 + 8))(v70, v85);
    memcpy(v82, __dst, 0x2181uLL);

    v75 = v95[1];
LABEL_11:

    return v75();
  }

  v55 = [objc_opt_self() standardUserDefaults];
  v56._countAndFlagsBits = static DaemonInternalDefaultsKeys.disableIfModifiedSinceHeader.getter();
  v57 = NSUserDefaults.internalBool(forKey:)(v56);

  if (!v57 && v44)
  {
    v58 = qword_100832D20;
    v59 = v44;
    if (v58 != -1)
    {
      swift_once();
    }

    v60 = sub_1005FFF28(v59);
    if (v61)
    {
      v62._countAndFlagsBits = 0xD000000000000011;
      v62._object = 0x8000000100723320;
      URLRequest.addValue(_:forHTTPHeaderField:)(*&v60, v62);
    }
  }

  v63 = v95[1087];
  v64 = v95[1086];
  v65 = v95[1085];
  v42(v63, v95[1088], v65);
  type metadata accessor for DIPHTTPSession.RequestContainer(0);
  v66 = swift_allocObject();
  v95[1108] = v66;
  swift_defaultActor_initialize();
  (*(v64 + 32))(v66 + OBJC_IVAR____TtCFC8coreidvd14DIPHTTPSession14performRequestFzZTV10Foundation10URLRequest21acceptableStatusCodesGSaSi_11ignoreCacheSb11isAnonymousSb17overridingAltDSIDGSqSS__TVS1_4DataCSo13NSURLResponseSb_L_16RequestContainer_request, v63, v65);
  v67 = swift_task_alloc();
  v95[1109] = v67;
  *(v67 + 16) = v66;
  *(v67 + 24) = v41;
  *(v67 + 32) = 0;
  *(v67 + 40) = _swiftEmptyArrayStorage;
  *(v67 + 48) = v44;
  v68 = swift_task_alloc();
  v95[1110] = v68;
  v69 = sub_100007224(&qword_100848F80, &qword_1006E91B0);
  *v68 = v95;
  v68[1] = sub_1005EE2C4;

  return DIPRetrier.retry<A>(operation:)(v95 + 1075, &unk_1006E96F0, v67, v69);
}

uint64_t sub_1005EE2C4()
{
  *(*v1 + 8888) = v0;

  if (v0)
  {
    v2 = sub_1005EEB98;
  }

  else
  {
    v2 = sub_1005EE3F8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1005EE3F8(uint64_t a1)
{
  v58 = v1;
  __chkstk_darwin(a1);
  v2 = *(v1 + 8856);
  v3 = *(v1 + 8704);
  v4 = *(v1 + 8688);
  v5 = *(v1 + 8680);

  v6 = *(v4 + 8);
  v6(v3, v5);
  v7 = *(v1 + 8600);
  v8 = *(v1 + 8608);

  v9 = *(v1 + 8888);
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  sub_1005FE6C0();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  if (v9)
  {
    sub_10000B90C(v7, v8);

    v54 = *(v1 + 8824);
    v55 = *(v1 + 8840);
    v52 = *(v1 + 8808);
    v53 = *(v1 + 8832);
    v45 = *(v1 + 8768);
    v47 = *(v1 + 8792);
    v50 = *(v1 + 8744);
    v51 = *(v1 + 8800);
    v48 = *(v1 + 8736);
    v49 = *(v1 + 8728);
    v41 = *(v1 + 8712);
    v43 = *(v1 + 8776);
    v37 = *(v1 + 8688);
    v39 = *(v1 + 8680);
    v31 = *(v1 + 8664);
    v32 = *(v1 + 8672);
    v34 = *(v1 + 8656);
    v30 = *(v1 + 8648);
    sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
    v10 = sub_100007224(&qword_1008341D0, &unk_1006BF8D0);
    v11 = *(*(v10 - 8) + 72);
    v12 = (*(*(v10 - 8) + 80) + 32) & ~*(*(v10 - 8) + 80);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1006BF740;
    v14 = (v13 + v12 + *(v10 + 48));
    v15 = enum case for DIPError.PropertyKey.conversationID(_:);
    v16 = type metadata accessor for DIPError.PropertyKey();
    v17 = *(*(v16 - 8) + 104);
    (v17)(v13 + v12, v15, v16);
    v18 = *(v30 + OBJC_IVAR____TtC8coreidvd13DIPWebService_conversation);
    v19 = *(v30 + OBJC_IVAR____TtC8coreidvd13DIPWebService_conversation + 8);
    v14[3] = &type metadata for String;
    v14[4] = &protocol witness table for String;
    *v14 = v18;
    v14[1] = v19;
    v20 = (v13 + v12 + v11 + *(v10 + 48));
    v17();
    v20[3] = &type metadata for String;
    v20[4] = &protocol witness table for String;
    *v20 = 0x7269612F716D692FLL;
    v20[1] = 0xE800000000000000;
    swift_errorRetain();

    sub_10003C9C0(v13);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    (*(v31 + 104))(v32, enum case for DIPError.Code.internalError(_:), v34);
    type metadata accessor for DIPError();
    sub_1005FEAD4(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    (*(v37 + 8))(v41, v39);
    v21 = *(v43 + 8);
    v21(v47, v45);
    (*(v48 + 8))(v50, v49);
    v21(v51, v45);
    v21(v52, v45);
    (*(v53 + 8))(v55, v54);
  }

  else
  {
    v23 = *(v1 + 8840);
    v24 = *(v1 + 8832);
    v46 = *(v1 + 8824);
    v44 = *(v1 + 8808);
    v25 = *(v1 + 8776);
    v26 = *(v1 + 8768);
    v38 = *(v1 + 8744);
    v40 = *(v1 + 8800);
    v27 = *(v1 + 8736);
    v35 = *(v1 + 8792);
    v36 = *(v1 + 8728);
    v33 = *(v1 + 8680);
    v56 = *(v1 + 8712);
    v42 = *(v1 + 8632);

    memcpy(__dst, (v1 + 16), sizeof(__dst));
    DIPSignpost.end(workflowID:isBackground:)(0, 2);
    sub_10000B90C(v7, v8);
    v6(v56, v33);
    v28 = *(v25 + 8);
    v28(v35, v26);
    (*(v27 + 8))(v38, v36);
    v28(v40, v26);
    v28(v44, v26);
    (*(v24 + 8))(v23, v46);
    memcpy(v42, __dst, 0x2181uLL);
  }

  v22 = *(v1 + 8);

  return v22();
}

uint64_t sub_1005EEB98()
{
  v1 = v0[1107];
  v2 = v0[1088];
  v3 = v0[1086];
  v4 = v0[1085];

  (*(v3 + 8))(v2, v4);
  v35 = v0[1103];
  v36 = v0[1105];
  v33 = v0[1101];
  v34 = v0[1104];
  v32 = v0[1100];
  v26 = v0[1097];
  v27 = v0[1096];
  v28 = v0[1099];
  v31 = v0[1093];
  v29 = v0[1092];
  v30 = v0[1091];
  v24 = v0[1085];
  v25 = v0[1089];
  v20 = v0[1083];
  v21 = v0[1084];
  v22 = v0[1082];
  v23 = v0[1086];
  v19 = v0[1081];
  sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
  v5 = sub_100007224(&qword_1008341D0, &unk_1006BF8D0);
  v6 = *(*(v5 - 8) + 72);
  v7 = (*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1006BF740;
  v9 = (v8 + v7 + *(v5 + 48));
  v10 = enum case for DIPError.PropertyKey.conversationID(_:);
  v11 = type metadata accessor for DIPError.PropertyKey();
  v12 = *(*(v11 - 8) + 104);
  (v12)(v8 + v7, v10, v11);
  v13 = *(v19 + OBJC_IVAR____TtC8coreidvd13DIPWebService_conversation);
  v14 = *(v19 + OBJC_IVAR____TtC8coreidvd13DIPWebService_conversation + 8);
  v9[3] = &type metadata for String;
  v9[4] = &protocol witness table for String;
  *v9 = v13;
  v9[1] = v14;
  v15 = (v8 + v7 + v6 + *(v5 + 48));
  v12();
  v15[3] = &type metadata for String;
  v15[4] = &protocol witness table for String;
  *v15 = 0x7269612F716D692FLL;
  v15[1] = 0xE800000000000000;
  swift_errorRetain();

  sub_10003C9C0(v8);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  (*(v20 + 104))(v21, enum case for DIPError.Code.internalError(_:), v22);
  type metadata accessor for DIPError();
  sub_1005FEAD4(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  (*(v23 + 8))(v25, v24);
  v16 = *(v26 + 8);
  v16(v28, v27);
  (*(v29 + 8))(v31, v30);
  v16(v32, v27);
  v16(v33, v27);
  (*(v34 + 8))(v36, v35);

  v17 = v0[1];

  return v17();
}

uint64_t sub_1005EF0D0(uint64_t a1, uint64_t a2)
{
  v3[49] = a2;
  v3[50] = v2;
  v3[48] = a1;
  v4 = type metadata accessor for DIPError.Code();
  v3[51] = v4;
  v3[52] = *(v4 - 8);
  v3[53] = swift_task_alloc();
  sub_100007224(&unk_100844540, &unk_1006BFBC0);
  v3[54] = swift_task_alloc();
  v5 = type metadata accessor for UUID();
  v3[55] = v5;
  v3[56] = *(v5 - 8);
  v3[57] = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  v3[58] = v6;
  v3[59] = *(v6 - 8);
  v3[60] = swift_task_alloc();
  v3[61] = swift_task_alloc();
  type metadata accessor for DIPSignpost.Config();
  v3[62] = swift_task_alloc();
  v7 = type metadata accessor for DIPSignpost();
  v3[63] = v7;
  v3[64] = *(v7 - 8);
  v3[65] = swift_task_alloc();

  return _swift_task_switch(sub_1005EF318, 0, 0);
}

uint64_t sub_1005EF318()
{
  static DaemonSignposts.getRPEncryptionCertificateRequest.getter();
  DIPSignpost.init(_:)();
  v1 = [objc_opt_self() standardUserDefaults];
  v2._countAndFlagsBits = static DaemonInternalDefaultsKeys.forceHardcodedRPEncryptionCert.getter();
  v3 = NSUserDefaults.internalBool(forKey:)(v2);

  if (v3)
  {
    defaultLogger()();
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.info.getter();
    v6 = os_log_type_enabled(v4, v5);
    v7 = v0[61];
    v8 = v0[58];
    v9 = v0[59];
    if (v6)
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "Internal Settings returning hardcoded test encryption certificate", v10, 2u);
    }

    (*(v9 + 8))(v7, v8);
    (*(v0[64] + 8))(v0[65], v0[63]);

    v11 = v0[1];

    return v11(&off_1007FB1C0);
  }

  else
  {
    v14 = v0[56];
    v13 = v0[57];
    v15 = v0[54];
    v16 = v0[55];
    v18 = v0[48];
    v17 = v0[49];

    UUID.init()();
    v19 = UUID.uuidString.getter();
    v21 = v20;
    v0[66] = v19;
    v0[67] = v20;
    (*(v14 + 8))(v13, v16);
    v0[47] = &type metadata for GetRPEncryptionCertificateRequest;
    v22 = swift_allocObject();
    v0[44] = v22;
    v22[2] = 0;
    v22[3] = 0xE000000000000000;
    v22[4] = v19;
    v22[5] = v21;
    v22[6] = v18;
    v22[7] = v17;
    v22[8] = 0x61746E6567616DLL;
    v22[9] = 0xE700000000000000;
    v23 = type metadata accessor for URL();
    (*(*(v23 - 8) + 56))(v15, 1, 1, v23);

    v24 = swift_task_alloc();
    v0[68] = v24;
    *v24 = v0;
    v24[1] = sub_1005EF674;
    v25 = v0[54];

    return sub_1005F4FEC((v0 + 44), 0xD000000000000019, 0x8000000100724C80, 0, 1, v25);
  }
}

uint64_t sub_1005EF674(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *v4;
  v6[69] = a1;
  v6[70] = a2;
  v6[71] = v3;

  sub_10000BE18(v6[54], &unk_100844540, &unk_1006BFBC0);
  if (v3)
  {

    v7 = sub_1005F0598;
  }

  else
  {
    sub_10000BB78(v6 + 44);

    v7 = sub_1005EF7E4;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1005EF7E4()
{
  v1 = *(v0 + 568);
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  sub_1000A86D8();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  if (v1)
  {

    v2 = enum case for DIPError.PropertyKey.serverURL(_:);
    v26 = enum case for DIPError.Code.internalError(_:);
    v27 = *(v0 + 552);
    v28 = *(v0 + 560);
    v4 = *(v0 + 416);
    v3 = *(v0 + 424);
    v25 = *(v0 + 408);
    sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
    v5 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
    v6 = (*(*v5 + 80) + 32) & ~*(*v5 + 80);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1006BF520;
    v8 = v7 + v6;
    v9 = (v8 + v5[14]);
    v10 = type metadata accessor for DIPError.PropertyKey();
    (*(*(v10 - 8) + 104))(v8, v2, v10);
    v9[3] = &type metadata for String;
    v9[4] = &protocol witness table for String;
    *v9 = 0xD000000000000019;
    v9[1] = 0x8000000100724C80;
    swift_errorRetain();
    sub_10003C9C0(v7);
    swift_setDeallocating();
    sub_10000BE18(v8, &qword_1008341D0, &unk_1006BF8D0);
    swift_deallocClassInstance();
    (*(v4 + 104))(v3, v26, v25);
    type metadata accessor for DIPError();
    sub_1005FEAD4(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    sub_10000B90C(v27, v28);
    v11 = *(v0 + 520);
    v12 = *(v0 + 504);
    v13 = *(v0 + 512);
    DIPSignpost.end(workflowID:isBackground:)(0, 2);
    (*(v13 + 8))(v11, v12);

    v14 = *(v0 + 8);

    return v14();
  }

  else
  {

    v16 = *(v0 + 80);
    v17 = *(v0 + 96);
    *(v0 + 200) = v16;
    *(v0 + 216) = v17;
    *(v0 + 232) = *(v0 + 112);
    *(v0 + 248) = *(v0 + 128);
    v18 = *(v0 + 16);
    v19 = *(v0 + 32);
    *(v0 + 136) = v18;
    *(v0 + 152) = v19;
    v20 = *(v0 + 48);
    v21 = *(v0 + 64);
    *(v0 + 168) = v20;
    *(v0 + 184) = v21;
    *(v0 + 256) = v18;
    *(v0 + 272) = v19;
    *(v0 + 288) = v20;
    *(v0 + 304) = v21;
    *(v0 + 320) = v16;
    *(v0 + 336) = v17;
    v22 = swift_task_alloc();
    *(v0 + 576) = v22;
    *v22 = v0;
    v22[1] = sub_1005EFCBC;
    v23 = *(v0 + 536);
    v24 = *(v0 + 528);

    return sub_1005F7D7C(0, 0xE000000000000000, v24, v23, v0 + 256, 0x61746E6567616DLL, 0xE700000000000000);
  }
}

uint64_t sub_1005EFCBC(uint64_t a1)
{
  *(*v1 + 584) = a1;

  return _swift_task_switch(sub_1005EFDDC, 0, 0);
}

uint64_t sub_1005EFDDC()
{
  v42 = v0;
  if (v0[73])
  {
    v1 = v0[30];
    if (v1)
    {
      v2 = v0[29];

      sub_1000ACD80((v0 + 17));
      defaultLogger()();

      v3 = Logger.logObject.getter();
      v4 = static os_log_type_t.debug.getter();

      v5 = os_log_type_enabled(v3, v4);
      v7 = v0[59];
      v6 = v0[60];
      v8 = v0[58];
      if (v5)
      {
        v9 = swift_slowAlloc();
        v10 = swift_slowAlloc();
        v41 = v10;
        *v9 = 136315138;
        v11 = sub_100141FE4(v2, v1, &v41);

        *(v9 + 4) = v11;
        _os_log_impl(&_mh_execute_header, v3, v4, "Server runtime error : %s", v9, 0xCu);
        sub_10000BB78(v10);
      }

      else
      {
      }

      (*(v7 + 8))(v6, v8);
    }

    else
    {
      sub_1000ACD80((v0 + 17));
    }

    v15 = v0[52];
    v35 = v0[53];
    sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
    v16 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
    v17 = (*(*v16 + 80) + 32) & ~*(*v16 + 80);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_1006BF520;
    v19 = v18 + v17;
    v20 = (v19 + v16[14]);
    v21 = enum case for DIPError.PropertyKey.serverURL(_:);
    v38 = enum case for DIPError.PropertyKey.serverURL(_:);
    v22 = type metadata accessor for DIPError.PropertyKey();
    v37 = *(*(v22 - 8) + 104);
    v37(v19, v21, v22);
    v20[3] = &type metadata for String;
    v20[4] = &protocol witness table for String;
    *v20 = 0xD000000000000019;
    v20[1] = 0x8000000100724C80;
    swift_errorRetain();
    sub_10003C9C0(v18);
    swift_setDeallocating();
    sub_10000BE18(v19, &qword_1008341D0, &unk_1006BF8D0);
    swift_deallocClassInstance();
    v36 = enum case for DIPError.Code.internalError(_:);
    (*(v15 + 104))(v35);
    type metadata accessor for DIPError();
    sub_1005FEAD4(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v40 = v0[70];
    v39 = v0[69];
    v23 = v0[52];
    v24 = v0[53];
    v25 = v0[51];
    sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
    v26 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
    v27 = (*(*v26 + 80) + 32) & ~*(*v26 + 80);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_1006BF520;
    v29 = v28 + v27;
    v30 = (v29 + v26[14]);
    v37(v29, v38, v22);
    v30[3] = &type metadata for String;
    v30[4] = &protocol witness table for String;
    *v30 = 0xD000000000000019;
    v30[1] = 0x8000000100724C80;
    swift_errorRetain();
    sub_10003C9C0(v28);
    swift_setDeallocating();
    sub_10000BE18(v29, &qword_1008341D0, &unk_1006BF8D0);
    swift_deallocClassInstance();
    (*(v23 + 104))(v24, v36, v25);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    sub_10000B90C(v39, v40);
    v31 = v0[65];
    v32 = v0[63];
    v33 = v0[64];
    DIPSignpost.end(workflowID:isBackground:)(0, 2);
    (*(v33 + 8))(v31, v32);

    v34 = v0[1];

    return v34();
  }

  else
  {
    sub_10000B90C(v0[69], v0[70]);
    v12 = v0[31];

    sub_1000ACD80((v0 + 17));
    DIPSignpost.end(workflowID:isBackground:)(0, 2);
    (*(v0[64] + 8))(v0[65], v0[63]);

    v13 = v0[1];

    return v13(v12);
  }
}

uint64_t sub_1005F0598()
{
  v2 = v0[52];
  v1 = v0[53];
  v15 = v0[51];
  sub_10000BB78(v0 + 44);
  sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
  v3 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
  v4 = (*(*v3 + 80) + 32) & ~*(*v3 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1006BF520;
  v6 = v5 + v4;
  v7 = (v6 + v3[14]);
  v8 = enum case for DIPError.PropertyKey.serverURL(_:);
  v9 = type metadata accessor for DIPError.PropertyKey();
  (*(*(v9 - 8) + 104))(v6, v8, v9);
  v7[3] = &type metadata for String;
  v7[4] = &protocol witness table for String;
  *v7 = 0xD000000000000019;
  v7[1] = 0x8000000100724C80;
  swift_errorRetain();
  sub_10003C9C0(v5);
  swift_setDeallocating();
  sub_10000BE18(v6, &qword_1008341D0, &unk_1006BF8D0);
  swift_deallocClassInstance();
  (*(v2 + 104))(v1, enum case for DIPError.Code.internalError(_:), v15);
  type metadata accessor for DIPError();
  sub_1005FEAD4(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v10 = v0[65];
  v11 = v0[63];
  v12 = v0[64];
  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  (*(v12 + 8))(v10, v11);

  v13 = v0[1];

  return v13();
}

uint64_t sub_1005F08FC(uint64_t a1, uint64_t a2)
{
  v3[85] = v2;
  v3[84] = a2;
  v3[83] = a1;
  v4 = type metadata accessor for DIPError.Code();
  v3[86] = v4;
  v3[87] = *(v4 - 8);
  v3[88] = swift_task_alloc();
  v5 = type metadata accessor for DIPError();
  v3[89] = v5;
  v3[90] = *(v5 - 8);
  v3[91] = swift_task_alloc();
  v3[92] = type metadata accessor for RegisterTerminalResponse(0);
  v3[93] = swift_task_alloc();
  sub_100007224(&unk_100844540, &unk_1006BFBC0);
  v3[94] = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  v3[95] = v6;
  v3[96] = *(v6 - 8);
  v3[97] = swift_task_alloc();
  v3[98] = swift_task_alloc();
  v3[99] = swift_task_alloc();

  return _swift_task_switch(sub_1005F0AFC, 0, 0);
}

uint64_t sub_1005F0AFC()
{
  v36 = v0;
  v1 = sub_10003D21C(_swiftEmptyArrayStorage);
  v0[82] = v1;
  v2 = [objc_opt_self() standardUserDefaults];
  v3._countAndFlagsBits = static DaemonInternalDefaultsKeys.MobileDocumentReader.terminalRegistrationTestHeaders.getter();
  v4 = NSUserDefaults.internalString(forKey:)(v3);

  if (v4.value._object)
  {
    v5 = v0 + 80;
    defaultLogger()();

    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.debug.getter();

    v8 = os_log_type_enabled(v6, v7);
    v9 = v0[99];
    v10 = v0[96];
    v11 = v0[95];
    if (v8)
    {
      v12 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v13 = v35;
      *v12 = 136315138;
      *(v12 + 4) = sub_100141FE4(v4.value._countAndFlagsBits, v4.value._object, &v35);
      _os_log_impl(&_mh_execute_header, v6, v7, "DIPTopekaWebService registerTerminal using the following test headers: %s", v12, 0xCu);
      sub_10000BB78(v13);
      v5 = v0 + 80;
    }

    (*(v10 + 8))(v9, v11);
    v14 = (v0 + 82);
    v0[80] = 44;
    v0[81] = 0xE100000000000000;
    v15 = swift_task_alloc();
    *(v15 + 16) = v5;
    v17 = sub_1005FFB68(0x7FFFFFFFFFFFFFFFLL, 1, sub_1000307C0, v15, v4.value._countAndFlagsBits, v4.value._object, v16);

    v18 = v17[2];
    if (v18)
    {
      v35 = _swiftEmptyArrayStorage;
      sub_100172D4C(0, v18, 0);
      v19 = v35;
      v20 = v17 + 7;
      do
      {

        v21 = static String._fromSubstring(_:)();
        v23 = v22;

        v35 = v19;
        v25 = v19[2];
        v24 = v19[3];
        if (v25 >= v24 >> 1)
        {
          sub_100172D4C((v24 > 1), v25 + 1, 1);
          v19 = v35;
        }

        v19[2] = v25 + 1;
        v26 = &v19[2 * v25];
        v26[4] = v21;
        v26[5] = v23;
        v20 += 4;
        --v18;
      }

      while (v18);

      v14 = (v0 + 82);
    }

    else
    {

      v19 = _swiftEmptyArrayStorage;
    }

    sub_1005D7BD0(v19, v14);

    v1 = *v14;
  }

  v0[100] = v1;
  v27 = v0[94];
  v28 = v0[84];
  v29 = sub_100007224(&qword_100842078, &unk_1006E9660);
  v0[101] = v29;
  v0[75] = v29;
  v30 = sub_100032DBC(v0 + 72);
  (*(*(v29 - 8) + 16))(v30, v28, v29);
  v31 = type metadata accessor for URL();
  (*(*(v31 - 8) + 56))(v27, 1, 1, v31);
  v32 = swift_task_alloc();
  v0[102] = v32;
  *v32 = v0;
  v32[1] = sub_1005F0F24;
  v33 = v0[94];

  return sub_1005F4FEC((v0 + 72), 0xD00000000000001ALL, 0x8000000100724B70, v1, 0, v33);
}

uint64_t sub_1005F0F24(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *v4;
  v6[103] = a1;
  v6[104] = a2;
  v6[105] = v3;

  sub_10000BE18(v6[94], &unk_100844540, &unk_1006BFBC0);
  if (v3)
  {
    v7 = sub_1005F2114;
  }

  else
  {
    sub_10000BB78(v6 + 72);

    v7 = sub_1005F1088;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1005F1088()
{
  v45 = v0;
  v1 = *(v0 + 840);
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  sub_1005FEAD4(&qword_1008369A0, type metadata accessor for RegisterTerminalResponse, &unk_1006C8780);
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  if (v1)
  {

    v2 = *(v0 + 832);
    v3 = *(v0 + 824);
    defaultLogger()();
    sub_10000B8B8(v3, v2);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();
    sub_10000B90C(v3, v2);
    if (!os_log_type_enabled(v4, v5))
    {
      v30 = *(v0 + 776);
      v31 = *(v0 + 768);
      v32 = *(v0 + 760);

      (*(v31 + 8))(v30, v32);
LABEL_16:
      v40 = *(v0 + 832);
      v41 = *(v0 + 824);
      (*(*(v0 + 696) + 104))(*(v0 + 704), enum case for DIPError.Code.jsonDecodingFailed(_:), *(v0 + 688));
      swift_errorRetain();
      sub_1000402AC(_swiftEmptyArrayStorage);
      sub_1005FEAD4(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();

      sub_10000B90C(v41, v40);

      v42 = *(v0 + 8);

      return v42();
    }

    v6 = *(v0 + 832);
    v7 = *(v0 + 824);
    v8 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v44 = v43;
    *v8 = 136315138;
    sub_10000B8B8(v7, v6);
    v9 = sub_1005FB2B0(v7, v6);
    v11 = v10;
    v12 = *(v0 + 832);
    v13 = *(v0 + 824);
    if (!v11)
    {
      *(v0 + 608) = v13;
      *(v0 + 616) = v12;
      sub_10000B8B8(v13, v12);
      sub_100007224(&qword_1008496B8, &qword_1006E96D8);
      if (swift_dynamicCast())
      {
        sub_10001F358((v0 + 536), v0 + 496);
        sub_10000BA08((v0 + 496), *(v0 + 520));
        if (dispatch thunk of _HasContiguousBytes._providesContiguousBytesNoCopy.getter())
        {
          sub_10000B90C(*(v0 + 824), *(v0 + 832));
          sub_10000BA08((v0 + 496), *(v0 + 520));
          dispatch thunk of _HasContiguousBytes.withUnsafeBytes<A>(_:)();
          v9 = *(v0 + 624);
          v11 = *(v0 + 632);
          sub_10000BB78((v0 + 496));
LABEL_15:
          v36 = *(v0 + 776);
          v37 = *(v0 + 768);
          v38 = *(v0 + 760);
          v39 = sub_100141FE4(v9, v11, &v44);

          *(v8 + 4) = v39;
          _os_log_impl(&_mh_execute_header, v4, v5, "There was an error while parsing the response from registerTerminal. Response: %s", v8, 0xCu);
          sub_10000BB78(v43);

          (*(v37 + 8))(v36, v38);
          goto LABEL_16;
        }

        sub_10000BB78((v0 + 496));
      }

      else
      {
        *(v0 + 568) = 0;
        *(v0 + 536) = 0u;
        *(v0 + 552) = 0u;
        sub_10000BE18(v0 + 536, &qword_1008496C0, &unk_1006E96E0);
      }

      v33 = *(v0 + 832);
      v34 = *(v0 + 824);
      v9 = sub_1005FB1C0(v34, v33);
      v11 = v35;
      v13 = v34;
      v12 = v33;
    }

    sub_10000B90C(v13, v12);
    goto LABEL_15;
  }

  v14 = *(v0 + 744);

  JWSSignedJSON.payload.getter();
  v15 = *(v0 + 352);
  *(v0 + 144) = *(v0 + 336);
  *(v0 + 160) = v15;
  *(v0 + 176) = *(v0 + 368);
  *(v0 + 185) = *(v0 + 377);
  v16 = *(v0 + 288);
  *(v0 + 80) = *(v0 + 272);
  *(v0 + 96) = v16;
  v17 = *(v0 + 320);
  *(v0 + 112) = *(v0 + 304);
  *(v0 + 128) = v17;
  v18 = *(v0 + 224);
  *(v0 + 16) = *(v0 + 208);
  *(v0 + 32) = v18;
  v19 = *(v0 + 256);
  *(v0 + 48) = *(v0 + 240);
  *(v0 + 64) = v19;
  v21 = *(v0 + 16);
  v20 = *(v0 + 24);
  *(v0 + 848) = v20;
  v22 = *(v0 + 32);
  v23 = *(v0 + 40);
  *(v0 + 856) = v23;

  sub_1000AE408(v0 + 16);
  v24 = v14[1];
  *(v0 + 400) = *v14;
  *(v0 + 416) = v24;
  v25 = v14[5];
  v27 = v14[2];
  v26 = v14[3];
  *(v0 + 464) = v14[4];
  *(v0 + 480) = v25;
  *(v0 + 432) = v27;
  *(v0 + 448) = v26;
  v28 = swift_task_alloc();
  *(v0 + 864) = v28;
  *v28 = v0;
  v28[1] = sub_1005F16FC;

  return sub_1005F7D7C(v21, v20, v22, v23, v0 + 400, 0x61746E6567616DLL, 0xE700000000000000);
}

uint64_t sub_1005F16FC(uint64_t a1)
{
  *(*v1 + 872) = a1;

  return _swift_task_switch(sub_1005F1838, 0, 0);
}

uint64_t sub_1005F1838(uint64_t a1)
{
  v58 = v1;
  if (!*(v1 + 872))
  {
    v37 = *(v1 + 744);
    v38 = *(v1 + 664);
    sub_10000B90C(*(v1 + 824), *(v1 + 832));
    sub_1005FE60C(v37, v38);

    v39 = *(v1 + 8);
    goto LABEL_19;
  }

  v2 = *(v1 + 744);
  v3 = *(v2 + 104);
  if (v3)
  {
    v4 = *(v2 + 96);
    defaultLogger()();

    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.debug.getter();

    v7 = os_log_type_enabled(v5, v6);
    v8 = *(v1 + 784);
    v9 = *(v1 + 768);
    v10 = *(v1 + 760);
    if (v7)
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v57[0] = v12;
      *v11 = 136315138;
      *(v11 + 4) = sub_100141FE4(v4, v3, v57);
      _os_log_impl(&_mh_execute_header, v5, v6, "Server runtime error : %s", v11, 0xCu);
      sub_10000BB78(v12);
    }

    (*(v9 + 8))(v8, v10);
  }

  v54 = *(v1 + 744);
  v13 = *(v1 + 728);
  v14 = *(v1 + 720);
  v15 = *(v1 + 712);
  v16 = *(v1 + 696);
  v56 = *(v1 + 688);
  v53 = *(v1 + 704);
  sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
  v17 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
  v18 = (*(*v17 + 80) + 32) & ~*(*v17 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1006BF520;
  v20 = v19 + v18;
  v21 = (v20 + v17[14]);
  v22 = enum case for DIPError.PropertyKey.serverURL(_:);
  v23 = type metadata accessor for DIPError.PropertyKey();
  (*(*(v23 - 8) + 104))(v20, v22, v23);
  v21[3] = &type metadata for String;
  v21[4] = &protocol witness table for String;
  *v21 = 0xD00000000000001ALL;
  v21[1] = 0x8000000100724B70;
  swift_errorRetain();
  sub_10003C9C0(v19);
  swift_setDeallocating();
  sub_10000BE18(v20, &qword_1008341D0, &unk_1006BF8D0);
  swift_deallocClassInstance();
  (*(v16 + 104))(v53, enum case for DIPError.Code.internalError(_:), v56);
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  sub_1005FEAD4(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  (*(v14 + 16))(v24, v13, v15);
  swift_willThrow();

  (*(v14 + 8))(v13, v15);
  sub_1005FEB84(v54, type metadata accessor for RegisterTerminalResponse);
  v25 = *(v1 + 832);
  v26 = *(v1 + 824);
  defaultLogger()();
  sub_10000B8B8(v26, v25);
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.error.getter();
  sub_10000B90C(v26, v25);
  if (os_log_type_enabled(v27, v28))
  {
    v29 = *(v1 + 832);
    v30 = *(v1 + 824);
    v31 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v57[0] = v55;
    *v31 = 136315138;
    sub_10000B8B8(v30, v29);
    v32 = sub_1005FB2B0(v30, v29);
    v34 = v33;
    v35 = *(v1 + 832);
    v36 = *(v1 + 824);
    if (!v34)
    {
      *(v1 + 608) = v36;
      *(v1 + 616) = v35;
      sub_10000B8B8(v36, v35);
      sub_100007224(&qword_1008496B8, &qword_1006E96D8);
      if (swift_dynamicCast())
      {
        sub_10001F358((v1 + 536), v1 + 496);
        sub_10000BA08((v1 + 496), *(v1 + 520));
        if (dispatch thunk of _HasContiguousBytes._providesContiguousBytesNoCopy.getter())
        {
          sub_10000B90C(*(v1 + 824), *(v1 + 832));
          sub_10000BA08((v1 + 496), *(v1 + 520));
          dispatch thunk of _HasContiguousBytes.withUnsafeBytes<A>(_:)();
          v32 = *(v1 + 624);
          v34 = *(v1 + 632);
          sub_10000BB78((v1 + 496));
LABEL_17:
          v46 = *(v1 + 776);
          v47 = *(v1 + 768);
          v48 = *(v1 + 760);
          v49 = sub_100141FE4(v32, v34, v57);

          *(v31 + 4) = v49;
          _os_log_impl(&_mh_execute_header, v27, v28, "There was an error while parsing the response from registerTerminal. Response: %s", v31, 0xCu);
          sub_10000BB78(v55);

          (*(v47 + 8))(v46, v48);
          goto LABEL_18;
        }

        sub_10000BB78((v1 + 496));
      }

      else
      {
        *(v1 + 568) = 0;
        *(v1 + 536) = 0u;
        *(v1 + 552) = 0u;
        sub_10000BE18(v1 + 536, &qword_1008496C0, &unk_1006E96E0);
      }

      v43 = *(v1 + 832);
      v44 = *(v1 + 824);
      v32 = sub_1005FB1C0(v44, v43);
      v34 = v45;
      v36 = v44;
      v35 = v43;
    }

    sub_10000B90C(v36, v35);
    goto LABEL_17;
  }

  v40 = *(v1 + 776);
  v41 = *(v1 + 768);
  v42 = *(v1 + 760);

  (*(v41 + 8))(v40, v42);
LABEL_18:
  v50 = *(v1 + 832);
  v51 = *(v1 + 824);
  (*(*(v1 + 696) + 104))(*(v1 + 704), enum case for DIPError.Code.jsonDecodingFailed(_:), *(v1 + 688));
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  sub_10000B90C(v51, v50);

  v39 = *(v1 + 8);
LABEL_19:

  return v39();
}

uint64_t sub_1005F2114()
{
  v1 = v0[88];
  v2 = v0[87];
  v12 = v0[86];
  sub_10000BB78(v0 + 72);
  sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
  v3 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
  v4 = (*(*v3 + 80) + 32) & ~*(*v3 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1006BF520;
  v6 = v5 + v4;
  v7 = (v6 + v3[14]);
  v8 = enum case for DIPError.PropertyKey.serverURL(_:);
  v9 = type metadata accessor for DIPError.PropertyKey();
  (*(*(v9 - 8) + 104))(v6, v8, v9);
  v7[3] = &type metadata for String;
  v7[4] = &protocol witness table for String;
  *v7 = 0xD00000000000001ALL;
  v7[1] = 0x8000000100724B70;
  swift_errorRetain();
  sub_10003C9C0(v5);
  swift_setDeallocating();
  sub_10000BE18(v6, &qword_1008341D0, &unk_1006BF8D0);
  swift_deallocClassInstance();
  (*(v2 + 104))(v1, enum case for DIPError.Code.internalError(_:), v12);
  sub_1005FEAD4(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v10 = v0[1];

  return v10();
}

uint64_t sub_1005F2458(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v7 + 4264) = v6;
  *(v7 + 4256) = a5;
  *(v7 + 4248) = a4;
  *(v7 + 4209) = a6;
  *(v7 + 4240) = a3;
  *(v7 + 4232) = a2;
  *(v7 + 4224) = a1;
  v8 = type metadata accessor for URLRequest();
  *(v7 + 4272) = v8;
  *(v7 + 4280) = *(v8 - 8);
  *(v7 + 4288) = swift_task_alloc();
  *(v7 + 4296) = swift_task_alloc();
  *(v7 + 4304) = swift_task_alloc();
  *(v7 + 4312) = swift_task_alloc();
  *(v7 + 4320) = swift_task_alloc();
  sub_100007224(&unk_100844540, &unk_1006BFBC0);
  *(v7 + 4328) = swift_task_alloc();
  v9 = type metadata accessor for URL();
  *(v7 + 4336) = v9;
  *(v7 + 4344) = *(v9 - 8);
  *(v7 + 4352) = swift_task_alloc();
  *(v7 + 4360) = swift_task_alloc();
  v10 = type metadata accessor for DIPError.Code();
  *(v7 + 4368) = v10;
  *(v7 + 4376) = *(v10 - 8);
  *(v7 + 4384) = swift_task_alloc();
  v11 = sub_100007224(&qword_100842078, &unk_1006E9660);
  *(v7 + 4392) = v11;
  *(v7 + 4400) = *(v11 - 8);
  *(v7 + 4408) = swift_task_alloc();
  *(v7 + 4416) = swift_task_alloc();
  v12 = sub_100007224(&qword_100841070, &unk_1006DDAB0);
  *(v7 + 4424) = v12;
  *(v7 + 4432) = *(v12 - 8);
  *(v7 + 4440) = swift_task_alloc();
  *(v7 + 4448) = swift_task_alloc();
  v13 = sub_100007224(&qword_10083DC00, &qword_1006DB6E0);
  *(v7 + 4456) = v13;
  *(v7 + 4464) = *(v13 - 8);
  *(v7 + 4472) = swift_task_alloc();
  *(v7 + 4480) = swift_task_alloc();
  v14 = sub_100007224(&qword_10083DE08, qword_1006DBA50);
  *(v7 + 4488) = v14;
  *(v7 + 4496) = *(v14 - 8);
  *(v7 + 4504) = swift_task_alloc();
  *(v7 + 4512) = swift_task_alloc();
  v15 = sub_100007224(&qword_10083E4B8, &unk_1006DBF30);
  *(v7 + 4520) = v15;
  *(v7 + 4528) = *(v15 - 8);
  *(v7 + 4536) = swift_task_alloc();
  *(v7 + 4544) = swift_task_alloc();
  v16 = sub_100007224(&unk_10084A100, &qword_1006E9EA0);
  *(v7 + 4552) = v16;
  *(v7 + 4560) = *(v16 - 8);
  *(v7 + 4568) = swift_task_alloc();
  *(v7 + 4576) = swift_task_alloc();
  v17 = sub_100007224(&qword_100849640, &qword_1006E9670);
  *(v7 + 4584) = v17;
  *(v7 + 4592) = *(v17 - 8);
  *(v7 + 4600) = swift_task_alloc();
  *(v7 + 4608) = swift_task_alloc();
  v18 = type metadata accessor for Logger();
  *(v7 + 4616) = v18;
  *(v7 + 4624) = *(v18 - 8);
  *(v7 + 4632) = swift_task_alloc();

  return _swift_task_switch(sub_1005F29E8, 0, 0);
}

uint64_t sub_1005F29E8(uint64_t a1)
{
  v237 = v1;
  v2 = v1;
  v228 = v1 + 457;
  v3 = v1 + 48;
  v4 = 4152;
  v5 = v1[528];
  defaultLogger()();
  sub_10001F2EC(v5, (v1 + 467));
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v233 = v1[579];
    v8 = v1[578];
    v9 = *(v2 + 4616);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v235 = v11;
    *v10 = 136446210;
    sub_10000BA08((v2 + 3736), *(v2 + 3760));
    *(v2 + 4216) = swift_getDynamicType();
    sub_100007224(&qword_100848F90, &qword_1006E96D0);
    v12 = String.init<A>(describing:)();
    v14 = v13;
    sub_10000BB78((v2 + 3736));
    v15 = sub_100141FE4(v12, v14, &v235);
    v4 = 4152;

    *(v10 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v6, v7, "coreidvd: sendPostRequest of type %{public}s", v10, 0xCu);
    sub_10000BB78(v11);

    (*(v8 + 8))(v233, v9);
  }

  else
  {
    v16 = v1[579];
    v17 = v1[578];
    v18 = *(v2 + 4616);

    sub_10000BB78((v2 + 3736));
    (*(v17 + 8))(v16, v18);
  }

  sub_10001F2EC(*(v2 + 4224), v2 + 4152);
  if (!swift_dynamicCast())
  {
    if (swift_dynamicCast())
    {
      v30 = *(v2 + 4224);
      type metadata accessor for JSONEncoder();
      swift_allocObject();
      JSONEncoder.init()();
      sub_10001F2EC(v30, v2 + 3992);
      swift_dynamicCast();
      sub_1000BA30C(&qword_1008496B0, &qword_100849640, &qword_1006E9670, &protocol conformance descriptor for JWSSignedJSON<A>);
      v50 = dispatch thunk of JSONEncoder.encode<A>(_:)();
      v52 = v31;
      v32 = *(v2 + 4608);
      v33 = *(v2 + 4600);
      v34 = *(v2 + 4592);
      v35 = *(v2 + 4584);
    }

    else if (swift_dynamicCast())
    {
      v36 = *(v2 + 4224);
      type metadata accessor for JSONEncoder();
      swift_allocObject();
      JSONEncoder.init()();
      sub_10001F2EC(v36, v2 + 3960);
      swift_dynamicCast();
      sub_1000BA30C(&qword_1008496A8, &unk_10084A100, &qword_1006E9EA0, &protocol conformance descriptor for JWSSignedJSON<A>);
      v50 = dispatch thunk of JSONEncoder.encode<A>(_:)();
      v52 = v37;
      v32 = *(v2 + 4576);
      v33 = *(v2 + 4568);
      v34 = *(v2 + 4560);
      v35 = *(v2 + 4552);
    }

    else
    {
      if (swift_dynamicCast())
      {
        v107 = *(v2 + 4224);
        v108 = *(v2 + 2472);
        *(v2 + 2248) = *(v2 + 2456);
        *(v2 + 2264) = v108;
        *(v2 + 2280) = *(v2 + 2488);
        v109 = *(v2 + 2408);
        *(v2 + 2184) = *(v2 + 2392);
        *(v2 + 2200) = v109;
        v110 = *(v2 + 2440);
        *(v2 + 2216) = *(v2 + 2424);
        *(v2 + 2232) = v110;
        sub_1000B2178(v2 + 2184);
        type metadata accessor for JSONEncoder();
        swift_allocObject();
        JSONEncoder.init()();
        sub_10001F2EC(v107, v2 + 3800);
        swift_dynamicCast();
        v111 = *(v2 + 2160);
        *(v2 + 2664) = *(v2 + 2144);
        *(v2 + 2680) = v111;
        *(v2 + 2696) = *(v2 + 2176);
        v112 = *(v2 + 2096);
        *(v2 + 2600) = *(v2 + 2080);
        *(v2 + 2616) = v112;
        v113 = *(v2 + 2128);
        *(v2 + 2632) = *(v2 + 2112);
        *(v2 + 2648) = v113;
        sub_1000A7934();
        v50 = dispatch thunk of JSONEncoder.encode<A>(_:)();
        v52 = v160;
        v161 = *(v2 + 2680);
        *(v2 + 2352) = *(v2 + 2664);
        *(v2 + 2368) = v161;
        *(v2 + 2384) = *(v2 + 2696);
        v162 = *(v2 + 2616);
        *(v2 + 2288) = *(v2 + 2600);
        *(v2 + 2304) = v162;
        v163 = *(v2 + 2648);
        *(v2 + 2320) = *(v2 + 2632);
        *(v2 + 2336) = v163;
        sub_1000B2178(v2 + 2288);
        goto LABEL_11;
      }

      if (swift_dynamicCast())
      {
        v156 = *(v2 + 4224);
        type metadata accessor for JSONEncoder();
        swift_allocObject();
        JSONEncoder.init()();
        sub_10001F2EC(v156, v2 + 3768);
        swift_dynamicCast();
        sub_1000BA30C(&qword_1008496A0, &qword_10083E4B8, &unk_1006DBF30, &protocol conformance descriptor for JWSSignedJSON<A>);
        v50 = dispatch thunk of JSONEncoder.encode<A>(_:)();
        v52 = v157;
        v32 = *(v2 + 4544);
        v33 = *(v2 + 4536);
        v34 = *(v2 + 4528);
        v35 = *(v2 + 4520);
      }

      else if (swift_dynamicCast())
      {
        v158 = *(v2 + 4224);
        type metadata accessor for JSONEncoder();
        swift_allocObject();
        JSONEncoder.init()();
        sub_10001F2EC(v158, v2 + 3832);
        swift_dynamicCast();
        sub_1000BA30C(&qword_100849698, &qword_10083DE08, qword_1006DBA50, &protocol conformance descriptor for JWSSignedJSON<A>);
        v50 = dispatch thunk of JSONEncoder.encode<A>(_:)();
        v52 = v159;
        v32 = *(v2 + 4512);
        v33 = *(v2 + 4504);
        v34 = *(v2 + 4496);
        v35 = *(v2 + 4488);
      }

      else if (swift_dynamicCast())
      {
        v164 = *(v2 + 4224);
        type metadata accessor for JSONEncoder();
        swift_allocObject();
        JSONEncoder.init()();
        sub_10001F2EC(v164, v2 + 3864);
        swift_dynamicCast();
        sub_1000BA30C(&qword_100849690, &qword_10083DC00, &qword_1006DB6E0, &protocol conformance descriptor for JWSSignedJSON<A>);
        v50 = dispatch thunk of JSONEncoder.encode<A>(_:)();
        v52 = v165;
        v32 = *(v2 + 4480);
        v33 = *(v2 + 4472);
        v34 = *(v2 + 4464);
        v35 = *(v2 + 4456);
      }

      else
      {
        if (!swift_dynamicCast())
        {
          if (swift_dynamicCast())
          {
            v168 = *(v2 + 4224);
            v169 = *(v2 + 1392);
            *(v2 + 2016) = *(v2 + 1376);
            *(v2 + 2032) = v169;
            v170 = *(v2 + 1424);
            *(v2 + 2048) = *(v2 + 1408);
            *(v2 + 2064) = v170;
            v171 = *(v2 + 1328);
            *(v2 + 1952) = *(v2 + 1312);
            *(v2 + 1968) = v171;
            v172 = *(v2 + 1360);
            *(v2 + 1984) = *(v2 + 1344);
            *(v2 + 2000) = v172;
            v173 = *(v2 + 1296);
            *(v2 + 1920) = *(v2 + 1280);
            *(v2 + 1936) = v173;
            sub_1000B16EC(v2 + 1920);
            type metadata accessor for JSONEncoder();
            swift_allocObject();
            JSONEncoder.init()();
            sub_10001F2EC(v168, v2 + 3928);
            swift_dynamicCast();
            v174 = *(v2 + 1872);
            *(v2 + 1696) = *(v2 + 1856);
            *(v2 + 1712) = v174;
            v175 = *(v2 + 1904);
            *(v2 + 1728) = *(v2 + 1888);
            *(v2 + 1744) = v175;
            v176 = *(v2 + 1808);
            *(v2 + 1632) = *(v2 + 1792);
            *(v2 + 1648) = v176;
            v177 = *(v2 + 1840);
            *(v2 + 1664) = *(v2 + 1824);
            *(v2 + 1680) = v177;
            v178 = *(v2 + 1776);
            *(v2 + 1600) = *(v2 + 1760);
            *(v2 + 1616) = v178;
            sub_1000A82A0();
            v50 = dispatch thunk of JSONEncoder.encode<A>(_:)();
            v52 = v185;
            v186 = *(v2 + 1712);
            *(v2 + 1216) = *(v2 + 1696);
            *(v2 + 1232) = v186;
            v187 = *(v2 + 1744);
            *(v2 + 1248) = *(v2 + 1728);
            *(v2 + 1264) = v187;
            v188 = *(v2 + 1648);
            *(v2 + 1152) = *(v2 + 1632);
            *(v2 + 1168) = v188;
            v189 = *(v2 + 1680);
            *(v2 + 1184) = *(v2 + 1664);
            *(v2 + 1200) = v189;
            v190 = *(v2 + 1616);
            *(v2 + 1120) = *(v2 + 1600);
            *(v2 + 1136) = v190;
            sub_1000B16EC(v2 + 1120);
          }

          else
          {
            if (!swift_dynamicCast())
            {
              goto LABEL_60;
            }

            v179 = *(v2 + 4224);
            v180 = *(v2 + 3520);
            *(v2 + 3184) = *(v2 + 3504);
            *(v2 + 3200) = v180;
            v181 = *(v2 + 3552);
            *(v2 + 3216) = *(v2 + 3536);
            *(v2 + 3232) = v181;
            sub_1000B161C(v2 + 3184);
            type metadata accessor for JSONEncoder();
            swift_allocObject();
            JSONEncoder.init()();
            sub_10001F2EC(v179, v2 + 4024);
            swift_dynamicCast();
            v182 = *(v2 + 3264);
            *(v2 + 3312) = *(v2 + 3248);
            *(v2 + 3328) = v182;
            v183 = *(v2 + 3296);
            *(v2 + 3344) = *(v2 + 3280);
            *(v2 + 3360) = v183;
            sub_1000A84C4();
            v50 = dispatch thunk of JSONEncoder.encode<A>(_:)();
            v52 = v196;
            v197 = *(v2 + 3328);
            *(v2 + 3440) = *(v2 + 3312);
            *(v2 + 3456) = v197;
            v198 = *(v2 + 3360);
            *(v2 + 3472) = *(v2 + 3344);
            *(v2 + 3488) = v198;
            sub_1000B161C(v2 + 3440);
          }

          goto LABEL_11;
        }

        v166 = *(v2 + 4224);
        type metadata accessor for JSONEncoder();
        swift_allocObject();
        JSONEncoder.init()();
        sub_10001F2EC(v166, v2 + 3896);
        swift_dynamicCast();
        sub_1000BA30C(&qword_100849688, &qword_100841070, &unk_1006DDAB0, &protocol conformance descriptor for JWSSignedJSON<A>);
        v50 = dispatch thunk of JSONEncoder.encode<A>(_:)();
        v52 = v167;
        v32 = *(v2 + 4448);
        v33 = *(v2 + 4440);
        v34 = *(v2 + 4432);
        v35 = *(v2 + 4424);
      }
    }

    v38 = *(v34 + 8);
    v38(v33, v35);
    v38(v32, v35);
    goto LABEL_12;
  }

  v19 = *(v2 + 4224);
  v20 = *(v3 + 9);
  *(v2 + 880) = *(v3 + 8);
  *(v2 + 896) = v20;
  *(v2 + 912) = *(v3 + 10);
  *(v2 + 928) = v3[22];
  v21 = *(v3 + 5);
  *(v2 + 816) = *(v3 + 4);
  *(v2 + 832) = v21;
  v22 = *(v3 + 7);
  *(v2 + 848) = *(v3 + 6);
  *(v2 + 864) = v22;
  v23 = *(v3 + 1);
  *(v2 + 752) = *v3;
  *(v2 + 768) = v23;
  v24 = *(v3 + 3);
  *(v2 + 784) = *(v3 + 2);
  *(v2 + 800) = v24;
  sub_1000B2068(v2 + 752);
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  sub_10001F2EC(v19, v2 + 4056);
  swift_dynamicCast();
  v25 = *(v2 + 160);
  *(v2 + 1064) = *(v2 + 144);
  *(v2 + 1080) = v25;
  *(v2 + 1096) = *(v2 + 176);
  *(v2 + 1112) = *(v2 + 192);
  v26 = *(v2 + 96);
  *(v2 + 1000) = *(v2 + 80);
  *(v2 + 1016) = v26;
  v27 = *(v2 + 128);
  *(v2 + 1032) = *(v2 + 112);
  *(v2 + 1048) = v27;
  v28 = *(v2 + 32);
  *(v2 + 936) = *(v2 + 16);
  *(v2 + 952) = v28;
  v29 = *(v2 + 64);
  *(v2 + 968) = *(v2 + 48);
  *(v2 + 984) = v29;
  sub_1000A7A08();
  v50 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v52 = v51;
  v53 = *(v2 + 1080);
  *(v2 + 328) = *(v2 + 1064);
  *(v2 + 344) = v53;
  *(v2 + 360) = *(v2 + 1096);
  *(v2 + 376) = *(v2 + 1112);
  v54 = *(v2 + 1016);
  *(v2 + 264) = *(v2 + 1000);
  *(v2 + 280) = v54;
  v55 = *(v2 + 1048);
  *(v2 + 296) = *(v2 + 1032);
  *(v2 + 312) = v55;
  v56 = *(v2 + 952);
  *(v2 + 200) = *(v2 + 936);
  *(v2 + 216) = v56;
  v57 = *(v2 + 984);
  *(v2 + 232) = *(v2 + 968);
  *(v2 + 248) = v57;
  sub_1000B2068(v2 + 200);
  while (1)
  {
LABEL_11:

LABEL_12:
    v58 = *(v2 + 4344);
    v59 = *(v2 + 4336);
    v60 = *(v2 + 4328);
    *(v2 + 4640) = v52;
    *(v2 + 4648) = v50;
    sub_10000BB78((v2 + v4));
    URL.init(string:)();
    v61 = (*(v58 + 48))(v60, 1, v59);
    v62 = *(v2 + 4328);
    v63 = v52;
    if (v61 == 1)
    {
      v64 = *(v2 + 4384);
      v65 = *(v2 + 4376);
      v66 = *(v2 + 4368);
      v67 = *(v2 + 4240);
      v68 = *(v2 + 4232);
      sub_10000BE18(v62, &unk_100844540, &unk_1006BFBC0);
      (*(v65 + 104))(v64, enum case for DIPError.Code.badLogic(_:), v66);
      sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
      v69 = v2;
      v70 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
      v71 = (*(*v70 + 80) + 32) & ~*(*v70 + 80);
      v72 = swift_allocObject();
      *(v72 + 16) = xmmword_1006BF520;
      v73 = v72 + v71;
      v74 = v70[14];
      v75 = v50;
      v76 = (v73 + v74);
      v77 = enum case for DIPError.PropertyKey.serverURL(_:);
      v78 = type metadata accessor for DIPError.PropertyKey();
      (*(*(v78 - 8) + 104))(v73, v77, v78);
      v76[3] = &type metadata for String;
      v76[4] = &protocol witness table for String;
      *v76 = v68;
      v76[1] = v67;

      sub_10003C9C0(v72);
      swift_setDeallocating();
      sub_10000BE18(v73, &qword_1008341D0, &unk_1006BF8D0);
      swift_deallocClassInstance();
      type metadata accessor for DIPError();
      sub_1005FEAD4(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
      sub_10000B90C(v75, v63);
LABEL_14:

      v79 = v69[1];

      return v79();
    }

    v234 = v2;
    v225 = v52;
    v81 = v50;
    v82 = *(v2 + 4360);
    v83 = *(v2 + 4352);
    v84 = *(v2 + 4344);
    v85 = *(v2 + 4336);
    v2 = *(v2 + 4304);
    v86 = v234[533];
    v4 = *(v228 + 553);
    v87 = v234[531];
    (*(v84 + 32))(v82, v62, v85);
    v88 = *(v86 + OBJC_IVAR____TtC8coreidvd13DIPWebService_httpSession);
    v89 = v82;
    v90 = v81;
    (*(v84 + 16))(v83, v89, v85);
    URLRequest.init(url:cachePolicy:timeoutInterval:)();
    v226 = v88;
    sub_1005C3550(v2, v4);
    v91 = v234;
    URLRequest.cachePolicy.setter();
    if (!v87)
    {
      break;
    }

    v224 = v81;
    v92 = v234[531];
    v93 = -1;
    v94 = -1 << *(v92 + 32);
    if (-v94 < 64)
    {
      v93 = ~(-1 << -v94);
    }

    v95 = v93 & *(v92 + 64);
    v96 = (63 - v94) >> 6;

    v97 = 0;
    while (v95)
    {
      v98 = v97;
LABEL_27:
      v99 = __clz(__rbit64(v95));
      v95 &= v95 - 1;
      v100 = (v98 << 10) | (16 * v99);
      v101 = (*(v92 + 48) + v100);
      v102 = *v101;
      v2 = v101[1];
      v103 = (*(v92 + 56) + v100);
      v4 = *v103;
      v104 = v103[1];

      v105.value._countAndFlagsBits = v4;
      v105.value._object = v104;
      v106._countAndFlagsBits = v102;
      v106._object = v2;
      URLRequest.setValue(_:forHTTPHeaderField:)(v105, v106);
    }

    v91 = v234;
    while (1)
    {
      v98 = v97 + 1;
      if (__OFADD__(v97, 1))
      {
        break;
      }

      if (v98 >= v96)
      {

        v90 = v224;
        goto LABEL_32;
      }

      v95 = *(v92 + 64 + 8 * v98);
      ++v97;
      if (v95)
      {
        v97 = v98;
        goto LABEL_27;
      }
    }

    __break(1u);
LABEL_60:
    if (swift_dynamicCast())
    {
      (*(*(v2 + 4400) + 32))(*(v2 + 4408), *(v2 + 4416), *(v2 + 4392));
      type metadata accessor for JSONEncoder();
      swift_allocObject();
      JSONEncoder.init()();
      sub_1000BA30C(&qword_100849680, &qword_100842078, &unk_1006E9660, &protocol conformance descriptor for JWSSignedJSON<A>);
      v50 = dispatch thunk of JSONEncoder.encode<A>(_:)();
      v52 = v184;
      (*(*(v2 + 4400) + 8))(*(v2 + 4408), *(v2 + 4392));
    }

    else if (swift_dynamicCast())
    {
      v191 = *(v2 + 4224);
      v192 = *(v2 + 3072);
      *(v2 + 2736) = *(v2 + 3056);
      *(v2 + 2752) = v192;
      *(v2 + 2768) = *(v2 + 3088);
      v193 = *(v2 + 3040);
      *(v2 + 2704) = *(v2 + 3024);
      *(v2 + 2720) = v193;
      sub_1000B1684(v2 + 2704);
      type metadata accessor for JSONEncoder();
      swift_allocObject();
      JSONEncoder.init()();
      sub_10001F2EC(v191, v2 + 4088);
      swift_dynamicCast();
      v194 = *(v2 + 2832);
      *(v2 + 2896) = *(v2 + 2816);
      *(v2 + 2912) = v194;
      *(v2 + 2928) = *(v2 + 2848);
      v195 = *(v2 + 2800);
      *(v2 + 2864) = *(v2 + 2784);
      *(v2 + 2880) = v195;
      sub_1000A83F0();
      v50 = dispatch thunk of JSONEncoder.encode<A>(_:)();
      v52 = v221;
      v222 = *(v2 + 2912);
      *(v2 + 2976) = *(v2 + 2896);
      *(v2 + 2992) = v222;
      *(v2 + 3008) = *(v2 + 2928);
      v223 = *(v2 + 2880);
      *(v2 + 2944) = *(v2 + 2864);
      *(v2 + 2960) = v223;
      sub_1000B1684(v2 + 2944);
    }

    else
    {
      if (!swift_dynamicCast())
      {
        v204 = *(v2 + 4384);
        v205 = *(v2 + 4376);
        v206 = *(v2 + 4368);
        v207 = *(v2 + 4240);
        v208 = *(v2 + 4232);
        v209 = *(v2 + 4224);
        v235 = 0;
        v236 = 0xE000000000000000;
        _StringGuts.grow(_:)(23);

        v235 = 0xD000000000000015;
        v236 = 0x8000000100723270;
        sub_10000BA08(v209, v209[3]);
        swift_getDynamicType();
        v210._countAndFlagsBits = _typeName(_:qualified:)();
        String.append(_:)(v210);

        (*(v205 + 104))(v204, enum case for DIPError.Code.badLogic(_:), v206);
        sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
        v211 = v2;
        v212 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
        v213 = (*(*v212 + 80) + 32) & ~*(*v212 + 80);
        v214 = swift_allocObject();
        *(v214 + 16) = xmmword_1006BF520;
        v215 = v214 + v213;
        v216 = v212[14];
        v217 = v211;
        v218 = (v215 + v216);
        v219 = enum case for DIPError.PropertyKey.serverURL(_:);
        v220 = type metadata accessor for DIPError.PropertyKey();
        (*(*(v220 - 8) + 104))(v215, v219, v220);
        v218[3] = &type metadata for String;
        v218[4] = &protocol witness table for String;
        *v218 = v208;
        v218[1] = v207;

        sub_10003C9C0(v214);
        swift_setDeallocating();
        sub_10000BE18(v215, &qword_1008341D0, &unk_1006BF8D0);
        swift_deallocClassInstance();
        type metadata accessor for DIPError();
        sub_1005FEAD4(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
        swift_allocError();
        DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
        swift_willThrow();
        v39 = v217[548];
        v40 = v217[547];
        v229 = v217[546];
        v41 = v217[530];
        v42 = v217[529];
        sub_10000BB78(v217 + 519);
        sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
        v69 = v217;
        v43 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
        v44 = (*(*v43 + 80) + 32) & ~*(*v43 + 80);
        v45 = swift_allocObject();
        *(v45 + 16) = xmmword_1006BF520;
        v46 = v45 + v44;
        v47 = (v46 + v43[14]);
        v48 = enum case for DIPError.PropertyKey.serverURL(_:);
        v49 = type metadata accessor for DIPError.PropertyKey();
        (*(*(v49 - 8) + 104))(v46, v48, v49);
        v47[3] = &type metadata for String;
        v47[4] = &protocol witness table for String;
        *v47 = v42;
        v47[1] = v41;

        swift_errorRetain();
        sub_10003C9C0(v45);
        swift_setDeallocating();
        sub_10000BE18(v46, &qword_1008341D0, &unk_1006BF8D0);
        swift_deallocClassInstance();
        (*(v40 + 104))(v39, enum case for DIPError.Code.internalError(_:), v229);
        type metadata accessor for DIPError();
        sub_1005FEAD4(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
        swift_allocError();
        DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
        swift_willThrow();

        goto LABEL_14;
      }

      v199 = *(v2 + 4224);

      type metadata accessor for JSONEncoder();
      swift_allocObject();
      JSONEncoder.init()();
      sub_10001F2EC(v199, v2 + 4120);
      swift_dynamicCast();
      v200 = *(v2 + 3640);
      v201 = *(v2 + 3648);
      v202 = *(v2 + 3672);
      *(v2 + 3568) = *(v2 + 3624);
      *(v2 + 3584) = v200;
      *(v2 + 3592) = v201;
      *(v2 + 3600) = *v228;
      *(v2 + 3616) = v202;
      sub_1000A8598();
      v50 = dispatch thunk of JSONEncoder.encode<A>(_:)();
      v52 = v203;
    }
  }

LABEL_32:
  v114 = v91[540];
  v115 = v91[539];
  v116 = v91[538];
  v117 = v91[537];
  v118 = v91;
  v119 = v91[535];
  v120 = v91[534];
  v121 = *(v119 + 32);
  v121(v115, v116, v120);
  URLRequest.httpMethod.setter();
  v122.value._countAndFlagsBits = 0xD000000000000010;
  v123._countAndFlagsBits = 0x2D746E65746E6F43;
  v123._object = 0xEC00000065707954;
  v122.value._object = 0x80000001006FA390;
  URLRequest.setValue(_:forHTTPHeaderField:)(v122, v123);
  sub_10000B8B8(v90, v225);
  URLRequest.httpBody.setter();
  v121(v114, v115, v120);
  v124 = *(v119 + 16);
  v124(v117, v114, v120);
  v125 = sub_1005BEE18(v117);
  v126 = v125;
  v118[582] = v125;
  if ((v127 & 1) != 0 && v125)
  {
    v128 = v234[537];
    v129 = v234[535];
    v130 = v234[534];
    v131 = [v125 data];
    v132 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v230 = v133;
    v231 = v132;

    v227 = [v126 response];
    v134 = *(v129 + 8);
    v134(v128, v130);
    v135 = v234[545];
    v136 = v234[543];
    v137 = v234[542];
    v138 = v234[540];
    v139 = v234[534];
    sub_10000B90C(v234[581], v234[580]);
    v134(v138, v139);
    (*(v136 + 8))(v135, v137);

    v140 = v234[1];

    return v140(v231, v230, v227, 1);
  }

  else
  {
    v141 = [objc_opt_self() standardUserDefaults];
    v142._countAndFlagsBits = static DaemonInternalDefaultsKeys.disableIfModifiedSinceHeader.getter();
    v143 = NSUserDefaults.internalBool(forKey:)(v142);

    if (!v143 && v126)
    {
      v144 = qword_100832D20;
      v145 = v126;
      if (v144 != -1)
      {
        swift_once();
      }

      v146 = sub_1005FFF28(v145);
      if (v147)
      {
        v148._countAndFlagsBits = 0xD000000000000011;
        v148._object = 0x8000000100723320;
        URLRequest.addValue(_:forHTTPHeaderField:)(*&v146, v148);
      }
    }

    v149 = v234[536];
    v150 = v234[534];
    v151 = *(v228 + 553);
    v232 = v234[532];
    v124(v149, v234[537], v150);
    type metadata accessor for DIPHTTPSession.RequestContainer(0);
    v152 = swift_allocObject();
    v234[583] = v152;
    swift_defaultActor_initialize();
    v121(v152 + OBJC_IVAR____TtCFC8coreidvd14DIPHTTPSession14performRequestFzZTV10Foundation10URLRequest21acceptableStatusCodesGSaSi_11ignoreCacheSb11isAnonymousSb17overridingAltDSIDGSqSS__TVS1_4DataCSo13NSURLResponseSb_L_16RequestContainer_request, v149, v150);
    v153 = swift_task_alloc();
    v234[584] = v153;
    *(v153 + 16) = v152;
    *(v153 + 24) = v226;
    *(v153 + 32) = v151;
    *(v153 + 40) = v232;
    *(v153 + 48) = v126;
    v154 = swift_task_alloc();
    v234[585] = v154;
    v155 = sub_100007224(&qword_100848F80, &qword_1006E91B0);
    *v154 = v234;
    v154[1] = sub_1005F4A00;

    return DIPRetrier.retry<A>(operation:)(v234 + 523, &unk_1006E96C0, v153, v155);
  }
}