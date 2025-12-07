uint64_t sub_1002D4684(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 448) = a1;
  *(v3 + 456) = v1;

  if (v1)
  {
    v4 = sub_1002D4B14;
  }

  else
  {
    v4 = sub_1002D47C0;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1002D47C0(uint64_t a1)
{
  v22 = v1;
  defaultLogger()();

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();

  v4 = os_log_type_enabled(v2, v3);
  v5 = v1[51];
  v6 = v1[49];
  v7 = v1[35];
  v8 = v1[32];
  if (v4)
  {
    v19 = v1[49];
    v9 = swift_slowAlloc();
    v18 = v7;
    v10 = swift_slowAlloc();
    v21 = v10;
    *v9 = 136315138;
    v17 = v8;
    v11 = Array.description.getter();
    v13 = v12;

    v14 = sub_100141FE4(v11, v13, &v21);

    *(v9 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v2, v3, "Successfully unregistered for watch prearm event, current registered events: %s", v9, 0xCu);
    sub_10000BB78(v10);

    v19(v18, v17);
  }

  else
  {

    v6(v7, v8);
  }

  v20 = v1[52];

  v15 = v1[1];

  return v15(v20);
}

uint64_t sub_1002D4A14()
{
  sub_10000BE18(v0 + 72, &qword_100845E10, &qword_1006DCDA8);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002D4B14()
{
  v15 = v0[49];
  v1 = v0[38];
  v13 = v0[51];
  v14 = v0[32];
  v2 = v0[30];
  v3 = v0[31];
  v4 = v0[28];
  v5 = v0[29];
  v6 = v0[26];
  v7 = v0[27];
  _StringGuts.grow(_:)(58);
  v8._countAndFlagsBits = 0xD000000000000038;
  v8._object = 0x800000010070B280;
  String.append(_:)(v8);
  swift_getErrorValue();
  v9._countAndFlagsBits = Error.localizedDescription.getter();
  String.append(_:)(v9);

  (*(v2 + 104))(v3, enum case for DIPError.Code.watchEventUnregistrationError(_:), v5);
  sub_1000402AC(_swiftEmptyArrayStorage);
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  sub_100037214();
  swift_allocError();
  (*(v7 + 16))(v10, v4, v6);
  defaultLogger()();
  DIPRecordError(_:message:log:)();

  v15(v1, v14);
  (*(v7 + 8))(v4, v6);

  v16 = v0[52];

  v11 = v0[1];

  return v11(v16);
}

void sub_1002D4DCC(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10057C8F0(a2, a3);
  if (!v4)
  {
    v34 = v10;
    v35 = v9;
    v37 = 0;
    v13 = objc_opt_self();
    v14 = String._bridgeToObjectiveC()();
    v15 = [v13 insertNewObjectForEntityForName:v14 inManagedObjectContext:*(a1 + 16)];

    type metadata accessor for StoredPrearmTrust();
    v36 = v15;
    v16 = swift_dynamicCastClassUnconditional();
    v17 = String._bridgeToObjectiveC()();
    [v16 setPairingID:v17];

    v18 = [a4 credentialKeyBlob];
    v19 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;

    isa = Data._bridgeToObjectiveC()().super.isa;
    sub_10000B90C(v19, v21);
    [v16 setKeyBlob:isa];

    v23 = [a4 credentialBAACertificate];
    v24 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = v25;

    v27 = Data._bridgeToObjectiveC()().super.isa;
    sub_10000B90C(v24, v26);
    [v16 setBaaCertificate:v27];

    [v16 setRequiresDeletion:0];
    [v16 setVersion:2];
    v28 = v37;
    sub_10057BA64();
    if (v28)
    {
    }

    else
    {
      v29 = v36;
      defaultLogger()();

      v30 = Logger.logObject.getter();
      v31 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        v38 = v33;
        *v32 = 136315138;
        *(v32 + 4) = sub_100141FE4(a2, a3, &v38);
        _os_log_impl(&_mh_execute_header, v30, v31, "Successfully persisted prearm trust key and certificate for watch with pairingID: %s", v32, 0xCu);
        sub_10000BB78(v33);
      }

      (*(v34 + 8))(v12, v35);
    }
  }
}

uint64_t sub_1002D515C()
{
  v1[2] = v0;
  v2 = type metadata accessor for Logger();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();

  return _swift_task_switch(sub_1002D521C, 0, 0);
}

uint64_t sub_1002D521C()
{
  v18 = v0;
  v1 = stringsArrayFromNPKIDVRemoteDeviceServiceEvents();
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v0[6] = v2;

  defaultLogger()();

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[4];
  v7 = v0[5];
  v8 = v0[3];
  if (v5)
  {
    v16 = v0[5];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v17 = v10;
    *v9 = 136446210;
    v11 = Array.description.getter();
    v13 = sub_100141FE4(v11, v12, &v17);

    *(v9 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v3, v4, "IdentityProofingWatchProvider registering events: %{public}s", v9, 0xCu);
    sub_10000BB78(v10);

    (*(v6 + 8))(v16, v8);
  }

  else
  {

    (*(v6 + 8))(v7, v8);
  }

  v14 = swift_task_alloc();
  v0[7] = v14;
  *v14 = v0;
  v14[1] = sub_1002D541C;

  return sub_1004B74D8(v2);
}

uint64_t sub_1002D541C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 64) = v1;

  if (v1)
  {

    return _swift_task_switch(sub_1002D559C, 0, 0);
  }

  else
  {

    v5 = *(v4 + 8);

    return v5(a1);
  }
}

uint64_t sub_1002D559C(uint64_t a1)
{
  swift_willThrow();

  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_1002D5638()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1002D56A0()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1002D56E8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100027B9C;

  return sub_1002D2BB4(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1002D57B0(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_1002D57D0, 0, 0);
}

uint64_t sub_1002D57D0(uint64_t a1)
{
  IdentityProofingConfiguration.targetDevice.getter();
  if ((v2 & 1) == 0)
  {
    v3 = IdentityTarget.rawValue.getter();
    if (v3 == IdentityTarget.rawValue.getter())
    {
      v4 = 0xEA00000000004543;
      v5 = 0x495645445F444441;
LABEL_9:
      v14 = v1[1];

      return v14(v5, v4);
    }
  }

  v6 = IdentityProofingConfiguration.accountKeyIdentifier.getter();
  if (!v7)
  {
    v4 = 0xE400000000000000;
    v5 = 1280070982;
    goto LABEL_9;
  }

  v8 = v6;
  v9 = v7;

  v10 = sub_100189C68(v8, v9);

  v1[4] = v10;

  v11 = type metadata accessor for IdentityProofingDeviceMigrationManager();
  v12 = swift_task_alloc();
  v1[5] = v12;
  *v12 = v1;
  v12[1] = sub_1002D59D4;

  return (sub_1001897BC)(v11, &off_10080A320);
}

uint64_t sub_1002D59D4(char a1)
{
  v4 = *v2;
  *(*v2 + 48) = v1;

  if (v1)
  {
    v5 = sub_1002D5B98;
  }

  else
  {
    *(v4 + 56) = a1 & 1;
    v5 = sub_1002D5B00;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1002D5B00()
{
  v1 = *(v0 + 56);
  swift_unknownObjectRelease();
  if (v1)
  {
    v2 = 0xD000000000000010;
  }

  else
  {
    v2 = 1280070982;
  }

  if (v1)
  {
    v3 = 0x80000001007063E0;
  }

  else
  {
    v3 = 0xE400000000000000;
  }

  v4 = *(v0 + 8);

  return v4(v2, v3);
}

uint64_t sub_1002D5B98()
{
  swift_unknownObjectRelease();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002D5BFC(uint64_t a1, uint64_t a2)
{
  v3[24] = a2;
  v3[25] = v2;
  v3[23] = a1;
  v4 = type metadata accessor for DIPError.Code();
  v3[26] = v4;
  v3[27] = *(v4 - 8);
  v3[28] = swift_task_alloc();

  return _swift_task_switch(sub_1002D5CC0, 0, 0);
}

uint64_t sub_1002D5CC0(uint64_t a1)
{
  v2 = IdentityProofingConfiguration.state.getter();
  if (v3)
  {
    v4 = v2;
    v5 = v3;
    v6 = IdentityProofingConfiguration.country.getter();
    if (v7)
    {
      v8 = v6;
      v9 = v7;
      v1[29] = IdentityProofingConfiguration.productIdentifier.getter();
      v1[30] = v10;
      if (v10)
      {
        sub_100007224(&qword_100838818, &unk_1006D0F90);
        inited = swift_initStackObject();
        v1[31] = inited;
        *(inited + 16) = xmmword_1006BFF90;
        strcpy((inited + 32), "resident_state");
        *(inited + 47) = -18;
        *(inited + 48) = v4;
        *(inited + 56) = v5;
        *(inited + 64) = 0xD000000000000010;
        *(inited + 72) = 0x800000010070B400;
        *(inited + 80) = v8;
        *(inited + 88) = v9;
        strcpy((inited + 96), "proofing_type");
        *(inited + 110) = -4864;
        v12 = swift_task_alloc();
        v1[32] = v12;
        *v12 = v1;
        v12[1] = sub_1002D60AC;
        v13 = v1[24];

        return sub_1002D57B0(v13);
      }

      v19 = v1[27];
      v18 = v1[28];
      v20 = v1[26];

      (*(v19 + 104))(v18, enum case for DIPError.Code.productIdentifierUnavailable(_:), v20);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_100037214();
      swift_allocError();
    }

    else
    {
      v16 = v1[27];
      v15 = v1[28];
      v17 = v1[26];

      (*(v16 + 104))(v15, enum case for DIPError.Code.idCountryUnavailable(_:), v17);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_100037214();
      swift_allocError();
    }
  }

  else
  {
    (*(v1[27] + 104))(v1[28], enum case for DIPError.Code.idStateUnavailable(_:), v1[26]);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100037214();
    swift_allocError();
  }

  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v21 = v1[1];

  return v21();
}

uint64_t sub_1002D60AC(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 264) = v2;

  if (v2)
  {

    v7 = sub_1002D69E4;
  }

  else
  {
    *(v6 + 272) = a2;
    *(v6 + 280) = a1;
    v7 = sub_1002D61E8;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1002D61E8()
{
  v1 = v0[34];
  v2 = v0[31];
  *(v2 + 112) = v0[35];
  *(v2 + 120) = v1;
  v0[36] = sub_10003D21C(v2);
  swift_setDeallocating();
  sub_100007224(&qword_100838820, &unk_1006DB6B0);
  swift_arrayDestroy();
  v3 = swift_task_alloc();
  v0[37] = v3;
  *v3 = v0;
  v3[1] = sub_1002D62B8;

  return sub_1002D6B30();
}

uint64_t sub_1002D62B8()
{
  *(*v1 + 304) = v0;

  if (v0)
  {
    v2 = sub_1002D67E4;
  }

  else
  {
    v2 = sub_1002D63CC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1002D63CC(uint64_t a1)
{
  *(v1 + 312) = sub_1006146AC();
  v2 = swift_task_alloc();
  *(v1 + 320) = v2;
  *v2 = v1;
  v2[1] = sub_1002D6474;

  return sub_1002D706C();
}

uint64_t sub_1002D6474(uint64_t a1)
{
  *(*v1 + 328) = a1;

  return _swift_task_switch(sub_1002D6574, 0, 0);
}

uint64_t sub_1002D6574(uint64_t a1)
{
  v2 = v1[30];
  v3 = IdentityProofingConfiguration.documentType.getter();
  v4 = swift_task_alloc();
  v1[42] = v4;
  *v4 = v1;
  v4[1] = sub_1002D6638;
  v5 = v1[41];
  v6 = v1[36];
  v7 = v1[29];

  return sub_100612114((v1 + 18), v5, v6, v7, v2, v3);
}

uint64_t sub_1002D6638()
{
  v2 = *v1;
  *(*v1 + 344) = v0;

  v3 = *(v2 + 328);
  if (v0)
  {

    v4 = sub_1002D6AA8;
  }

  else
  {

    v4 = sub_1002D685C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1002D67E4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002D685C()
{
  v1 = *(v0 + 224);
  if (*(v0 + 168))
  {
    sub_10012D290((v0 + 144), *(v0 + 184));
  }

  else
  {
    v3 = *(v0 + 208);
    v4 = *(v0 + 216);
    sub_10022074C(v0 + 144);
    (*(v4 + 104))(v1, enum case for DIPError.Code.missingIdentityWorkFlow(_:), v3);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100037214();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
  }

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1002D69E4()
{

  swift_setDeallocating();
  sub_100007224(&qword_100838820, &unk_1006DB6B0);
  swift_arrayDestroy();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002D6AA8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002D6B30()
{
  v1 = type metadata accessor for ContinuousClock();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();
  v2 = type metadata accessor for Logger();
  v0[5] = v2;
  v0[6] = *(v2 - 8);
  v0[7] = swift_task_alloc();

  return _swift_task_switch(sub_1002D6C48, 0, 0);
}

uint64_t sub_1002D6C48()
{
  v1 = sub_1003159F4();
  if (v2)
  {

    v3 = v0[1];

    return v3();
  }

  else
  {
    v5 = v1;
    defaultLogger()();
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 134217984;
      *(v8 + 4) = v5;
      _os_log_impl(&_mh_execute_header, v6, v7, "IdentityProofingWorkflowProvider enabled simulated delay (of %ld s) for fetching dynamic workflow", v8, 0xCu);
    }

    v10 = v0[6];
    v9 = v0[7];
    v11 = v0[5];

    (*(v10 + 8))(v9, v11);
    static Clock<>.continuous.getter();
    v12 = swift_task_alloc();
    v0[8] = v12;
    *v12 = v0;
    v12[1] = sub_1002D6E44;

    return sub_1003DA1A4(1000000000000000000 * v5, ((v5 >> 63) & 0xF21F494C589C0000) + ((v5 * 0xDE0B6B3A7640000uLL) >> 64), 0, 0, 1);
  }
}

uint64_t sub_1002D6E44()
{
  v2 = *(*v1 + 32);
  v3 = *(*v1 + 24);
  v4 = *(*v1 + 16);
  v5 = *v1;
  *(v5 + 72) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {

    return _swift_task_switch(sub_1002D6FFC, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_1002D6FFC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002D706C()
{
  v1 = type metadata accessor for UUID();
  v0[9] = v1;
  v0[10] = *(v1 - 8);
  v0[11] = swift_task_alloc();

  return _swift_task_switch(sub_1002D7128, 0, 0);
}

uint64_t sub_1002D7128()
{
  v2 = *(v0 + 80);
  v1 = *(v0 + 88);
  v3 = *(v0 + 72);
  type metadata accessor for IdentityProofingDatabaseProvider();
  v4 = swift_allocObject();
  v5 = type metadata accessor for IdentitySelfHealer();
  v6 = objc_allocWithZone(v5);
  v7 = &v6[OBJC_IVAR____TtC8coreidvd18IdentitySelfHealer_proofingSessionID];
  *v7 = 0;
  *(v7 + 1) = 0;
  *&v6[OBJC_IVAR____TtC8coreidvd18IdentitySelfHealer_databaseProvider] = v4;
  *(v0 + 56) = v6;
  *(v0 + 64) = v5;
  v8 = objc_msgSendSuper2((v0 + 56), "init");
  *(v0 + 96) = v8;
  UUID.init()();
  UUID.uuidString.getter();
  *(v0 + 104) = v9;
  (*(v2 + 8))(v1, v3);
  type metadata accessor for DIPAccountManager();
  static DIPAccountManager.sharedInstance.getter();
  v10 = swift_task_alloc();
  *(v0 + 112) = v10;
  *v10 = v0;
  v10[1] = sub_1002D72A8;

  return sub_1005FB45C(v0 + 16, v8, &off_10080DB50, 0, 0);
}

uint64_t sub_1002D72A8(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 96);
  v7 = *v1;

  sub_10000BB78((v3 + 16));

  v5 = *(v7 + 8);

  return v5(a1);
}

uint64_t sub_1002D740C(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1002D7444()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_1002D7474()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t sub_1002D74A4()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t sub_1002D74D4()
{
  v1 = *(v0 + 96);
  sub_1000363B4(v1, *(v0 + 104));
  return v1;
}

uint64_t sub_1002D7508(uint64_t a1, uint64_t a2)
{
  v2[27] = a1;
  v2[28] = a2;
  v3 = type metadata accessor for Logger();
  v2[29] = v3;
  v2[30] = *(v3 - 8);
  v2[31] = swift_task_alloc();

  return _swift_task_switch(sub_1002D75C8, 0, 0);
}

uint64_t sub_1002D75C8()
{
  if (qword_100832B60 != -1)
  {
    swift_once();
  }

  v1 = *(qword_100881E78 + 16);
  os_unfair_lock_lock(v1 + 54);
  sub_100031B5C(&v1[4], (v0 + 2));
  os_unfair_lock_unlock(v1 + 54);
  v2 = v0[28];
  v0[32] = v0[9];

  sub_100031918((v0 + 2));
  v3 = swift_allocObject();
  v0[33] = v3;
  *(v3 + 16) = v2;
  v4 = swift_allocObject();
  v0[34] = v4;
  *(v4 + 16) = sub_1002E3F6C;
  *(v4 + 24) = v3;

  v5 = swift_task_alloc();
  v0[35] = v5;
  v6 = sub_100007224(&qword_10083DC18, &unk_1006DB720);
  *v5 = v0;
  v5[1] = sub_1002D7794;
  v7 = v0[27];

  return AsyncCoreDataContainer.performRead<A>(_:)(v7, sub_1000280B4, v4, v6);
}

uint64_t sub_1002D7794()
{
  v2 = *v1;
  *(v2 + 288) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1002D78F8, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1002D78F8()
{
  v18 = v0;

  defaultLogger()();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();
  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[30];
  v5 = v0[31];
  v6 = v0[29];
  if (v3)
  {
    v16 = v0[31];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v17 = v8;
    *v7 = 136315138;
    v9 = IdentityDocumentType.description.getter();
    v11 = sub_100141FE4(v9, v10, &v17);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v1, v2, "Unable to retreieve a proofing session for %s", v7, 0xCu);
    sub_10000BB78(v8);

    (*(v4 + 8))(v16, v6);
  }

  else
  {

    (*(v4 + 8))(v5, v6);
  }

  v12 = v0[27];
  v13 = type metadata accessor for ProofingSession();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);

  v14 = v0[1];

  return v14();
}

void sub_1002D7AF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, unsigned __int8 a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, unsigned __int8 a28, uint64_t a29, char *a30, uint64_t a31, uint64_t a32, uint64_t a33, unint64_t a34)
{
  v127 = a6;
  v128 = a8;
  v136 = a5;
  v137 = a7;
  v125 = a2;
  v126 = a4;
  v135 = a3;
  v140 = a17;
  v35 = sub_100007224(&unk_100849400, &unk_1006BFBB0);
  v124 = *(v35 - 8);
  v36 = *(v124 + 64);
  v37 = __chkstk_darwin(v35 - 8);
  v134 = &v90 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = __chkstk_darwin(v37);
  v133 = &v90 - v39;
  v40 = __chkstk_darwin(v38);
  v42 = &v90 - v41;
  __chkstk_darwin(v40);
  v44 = &v90 - v43;
  type metadata accessor for StoredProofingSession();
  v45 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext:*(a1 + 16)];
  v46 = type metadata accessor for Date();
  v47 = *(v46 - 8);
  (*(v47 + 16))(v44, a16, v46);
  v48 = *(v47 + 56);
  v48(v44, 0, 1, v46);
  v49 = IdentityProofingActionStatus.rawValue.getter();
  v48(v42, 1, 1, v46);
  v140 = v45;
  v50 = [v45 managedObjectContext];
  if (!v50)
  {
    goto LABEL_4;
  }

  v120 = a34;
  v119 = a33;
  v118 = a32;
  v117 = a31;
  v116 = a30;
  v115 = a29;
  v113 = a28;
  v114 = a27;
  v112 = a26;
  v105 = a25;
  v111 = a24;
  v110 = a23;
  v109 = a22;
  v132 = a21;
  v108 = a20;
  v107 = a19;
  v106 = a18;
  v104 = a15;
  v131 = a14;
  v103 = a13;
  v130 = a12;
  v100 = a11;
  v129 = a10;
  v97 = a9;
  v123 = v50;
  sub_10000BBC4(v44, v133, &unk_100849400, &unk_1006BFBB0);
  sub_10000BBC4(v42, v134, &unk_100849400, &unk_1006BFBB0);
  v51 = *(v124 + 80);
  v52 = (v51 + 136) & ~v51;
  v53 = (v36 + 7 + v52) & 0xFFFFFFFFFFFFFFF8;
  v124 = a1;
  v54 = (v51 + v53 + 16) & ~v51;
  v55 = (v36 + 7 + v54) & 0xFFFFFFFFFFFFFFF8;
  v121 = v42;
  v56 = (v55 + 15) & 0xFFFFFFFFFFFFFFF8;
  v122 = v44;
  v57 = (v56 + 23) & 0xFFFFFFFFFFFFFFF8;
  v92 = (v57 + 23) & 0xFFFFFFFFFFFFFFF8;
  v93 = (v57 + 39) & 0xFFFFFFFFFFFFFFF8;
  v95 = (v93 + 23) & 0xFFFFFFFFFFFFFFF8;
  v94 = (v95 + 15) & 0xFFFFFFFFFFFFFFF8;
  v58 = (v94 + 15) & 0xFFFFFFFFFFFFFFF8;
  v91 = (v58 + 15) & 0xFFFFFFFFFFFFFFF8;
  v96 = (v58 + 39) & 0xFFFFFFFFFFFFFFF8;
  v90 = v49;
  v59 = (v96 + 19) & 0xFFFFFFFFFFFFFFF8;
  v98 = (v59 + 17) & 0xFFFFFFFFFFFFFFF8;
  v101 = (v59 + 41) & 0xFFFFFFFFFFFFFFF8;
  v102 = (v101 + 23) & 0xFFFFFFFFFFFFFFF8;
  v99 = (v102 + 23) & 0xFFFFFFFFFFFFFFF8;
  v60 = swift_allocObject();
  v61 = v125;
  v60[2] = v140;
  v60[3] = v61;
  v62 = v126;
  v60[4] = v135;
  v60[5] = v62;
  v63 = v127;
  v60[6] = v136;
  v60[7] = v63;
  v64 = v128;
  v60[8] = v137;
  v60[9] = v64;
  v65 = v129;
  v60[10] = v97;
  v60[11] = v65;
  v66 = v130;
  v60[12] = v100;
  v60[13] = v66;
  v67 = v131;
  v60[14] = v103;
  v60[15] = v67;
  v60[16] = v104;
  sub_1002E4D54(v133, v60 + v52);
  v68 = (v60 + v53);
  *v68 = 0;
  v68[1] = 0;
  sub_1002E4D54(v134, v60 + v54);
  *(v60 + v55) = v105;
  v69 = (v60 + v56);
  *v69 = 0;
  v69[1] = 0;
  v70 = (v60 + v57);
  *v70 = 0;
  v70[1] = 0;
  v71 = v60 + v92;
  *v71 = v90;
  v71[8] = 0;
  v72 = (v60 + v93);
  *v72 = 0;
  v72[1] = 0;
  *(v60 + v95) = 0;
  *(v60 + v94) = v106;
  *(v60 + v58) = v107;
  v73 = v60 + v91;
  v73[16] = v109 & 1;
  v74 = v132;
  *v73 = v108;
  *(v73 + 1) = v74;
  v75 = v60 + v96;
  *v75 = v110;
  *(v75 + 2) = 0;
  v76 = v60 + v59;
  *v76 = v111;
  *(v76 + 4) = 0;
  v77 = v60 + v98;
  v77[16] = v113 & 1;
  v78 = v114;
  *v77 = v112;
  *(v77 + 1) = v78;
  v79 = (v60 + v101);
  v80 = v115;
  v44 = v116;
  *v79 = v115;
  v79[1] = v44;
  v81 = (v60 + v102);
  v82 = v118;
  *v81 = v117;
  v81[1] = v82;
  v83 = (v60 + v99);
  v84 = v119;
  v85 = v120;
  *v83 = v119;
  v83[1] = v85;
  v86 = swift_allocObject();
  *(v86 + 16) = sub_1002E4DC4;
  *(v86 + 24) = v60;
  aBlock[4] = sub_10026CBB8;
  v139 = v86;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10057E264;
  aBlock[3] = &unk_10080CC08;
  v87 = _Block_copy(aBlock);
  v134 = v139;

  v88 = v140;

  sub_1000363B4(v80, v44);

  sub_1000363B4(v84, v85);

  v89 = v123;
  [v123 performBlockAndWait:v87];

  _Block_release(v87);
  v42 = &unk_1006BFBB0;
  sub_10000BE18(v121, &unk_100849400, &unk_1006BFBB0);
  sub_10000BE18(v122, &unk_100849400, &unk_1006BFBB0);
  LOBYTE(v89) = swift_isEscapingClosureAtFileLocation();

  if (v89)
  {
    __break(1u);
LABEL_4:
    sub_10000BE18(v42, &unk_100849400, &unk_1006BFBB0);
    sub_10000BE18(v44, &unk_100849400, &unk_1006BFBB0);
  }

  sub_1005783D4();
}

void sub_1002D836C(uint64_t a1, unint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v44 = a3;
  v17 = type metadata accessor for DIPError.Code();
  v40 = *(v17 - 8);
  v41 = v17;
  __chkstk_darwin(v17);
  v42 = &v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for Logger();
  v20 = __chkstk_darwin(v19);
  v23 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a2 || (a4 & 1) != 0)
  {
    goto LABEL_3;
  }

  v38 = v21;
  v39 = v20;
  sub_10057BE48(a1, a2, v44);
  if (v10)
  {
    return;
  }

  v25 = v26;
  if (v26)
  {
    defaultLogger()();

    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v43[0] = v37;
      *v29 = 136315394;
      *(v29 + 4) = sub_100141FE4(a1, a2, v43);
      *(v29 + 12) = 2080;
      v30 = IdentityTarget.debugDescription.getter();
      v32 = v25;
      v33 = sub_100141FE4(v30, v31, v43);

      *(v29 + 14) = v33;
      v25 = v32;
      _os_log_impl(&_mh_execute_header, v27, v28, "fetchProofingActionsStatus called for proofingSessionID: %s and target: %s", v29, 0x16u);
      swift_arrayDestroy();
    }

    (*(v38 + 8))(v23, v39);
  }

  else
  {
LABEL_3:
    sub_10057C320(a6, a7, a8, 0, 1, 0);
    if (v10)
    {
      return;
    }

    v25 = v24;
    if (!v24)
    {
      (*(v40 + 104))(v42, enum case for DIPError.Code.proofingSessionDoesntExist(_:), v41);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_100037214();
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
      return;
    }
  }

  swift_beginAccess();
  *(a9 + 16) = 1;
  [v25 proofingActionStatus];
  v34 = IdentityProofingActionStatus.init(rawValue:)();
  if (v35)
  {
    (*(v40 + 104))(v42, enum case for DIPError.Code.storedProofingActionStatusDoesntExist(_:), v41);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100037214();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
  }

  else
  {
    v36 = v34;

    swift_beginAccess();
    *(a10 + 16) = v36;
  }
}

void sub_1002D887C(char *a1, void *a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v49 = a7;
  v47 = a6;
  v52 = a1;
  v11 = type metadata accessor for DIPError.Code();
  v50 = *(v11 - 8);
  v51 = v11;
  __chkstk_darwin(v11);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Logger();
  v46 = *(v14 - 8);
  __chkstk_darwin(v14);
  v16 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = a2;
  v17 = IdentityProofingConfiguration.documentType.getter();
  v18 = a4;
  v19 = String.lowercased()();
  v20 = v54;
  sub_10057C320(v17, v19._countAndFlagsBits, v19._object, a5, 0, 0);
  v54 = v20;
  if (v20)
  {
  }

  else
  {
    v22 = v21;
    v43 = a3;
    v44 = a5;
    v45 = v14;
    v23 = v48;
    v24 = v49;
    v52 = v13;

    if (v22)
    {
      v42 = v22;
      v25 = v16;
      defaultLogger()();
      v26 = v23;

      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v53[0] = swift_slowAlloc();
        *v29 = 136315650;
        IdentityProofingConfiguration.documentType.getter();
        v30 = IdentityDocumentType.description.getter();
        v32 = sub_100141FE4(v30, v31, v53);

        *(v29 + 4) = v32;
        *(v29 + 12) = 2080;
        *(v29 + 14) = sub_100141FE4(v43, v18, v53);
        *(v29 + 22) = 2080;
        v33 = IdentityTarget.debugDescription.getter();
        v35 = sub_100141FE4(v33, v34, v53);

        *(v29 + 24) = v35;
        _os_log_impl(&_mh_execute_header, v27, v28, "fetchProofingActionsStatus called for documentType: %s identifier: %s and target: %s", v29, 0x20u);
        swift_arrayDestroy();
      }

      (*(v46 + 8))(v25, v45);
      v36 = v47;
      swift_beginAccess();
      *(v36 + 16) = 1;
      v37 = v42;
      [v42 proofingActionStatus];
      v38 = IdentityProofingActionStatus.init(rawValue:)();
      if (v39)
      {
        (*(v50 + 104))(v52, enum case for DIPError.Code.storedProofingActionStatusDoesntExist(_:), v51);
        sub_1000402AC(_swiftEmptyArrayStorage);
        type metadata accessor for DIPError();
        sub_100037214();
        swift_allocError();
        DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
        swift_willThrow();
      }

      else
      {
        v40 = v38;

        swift_beginAccess();
        *(v24 + 16) = v40;
      }
    }

    else
    {
      (*(v50 + 104))(v52, enum case for DIPError.Code.proofingSessionDoesntExist(_:), v51);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_100037214();
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
    }
  }
}

void sub_1002D8DE4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v87 = a6;
  v88 = a8;
  v90 = a7;
  v91 = a5;
  v11 = type metadata accessor for Logger();
  v89 = *(v11 - 8);
  v12 = __chkstk_darwin(v11);
  v14 = &v83 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v12);
  v17 = &v83 - v16;
  v18 = __chkstk_darwin(v15);
  v20 = &v83 - v19;
  __chkstk_darwin(v18);
  v22 = &v83 - v21;
  v23 = v93;
  sub_10057C320(a2, a3, a4, v91, 0, 0);
  if (!v23)
  {
    v85 = a2;
    v86 = v11;
    v25 = v90;
    v91 = a3;
    v93 = 0;
    if (!v24)
    {
      v47 = v14;
      defaultLogger()();
      v48 = a4;

      v49 = Logger.logObject.getter();
      v50 = static os_log_type_t.info.getter();

      v51 = os_log_type_enabled(v49, v50);
      v52 = v91;
      if (v51)
      {
        v53 = swift_slowAlloc();
        v92[0] = swift_slowAlloc();
        *v53 = 136446466;
        v54 = IdentityDocumentType.description.getter();
        v56 = sub_100141FE4(v54, v55, v92);

        *(v53 + 4) = v56;
        *(v53 + 12) = 2082;
        *(v53 + 14) = sub_100141FE4(v52, v48, v92);
        _os_log_impl(&_mh_execute_header, v49, v50, "Proofing Session for documentType %{public}s identifier %{public}s doesn't exist", v53, 0x16u);
        swift_arrayDestroy();
      }

      v45 = *(v89 + 8);
      v46 = v47;
      goto LABEL_14;
    }

    v26 = v20;
    v27 = v24;
    v28 = [v24 proofingSessionID];
    v29 = a4;
    if (!v28)
    {
      defaultLogger()();

      v57 = Logger.logObject.getter();
      v58 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v57, v58))
      {
        v59 = swift_slowAlloc();
        v92[0] = swift_slowAlloc();
        *v59 = 136446466;
        v60 = IdentityDocumentType.description.getter();
        v62 = sub_100141FE4(v60, v61, v92);

        *(v59 + 4) = v62;
        *(v59 + 12) = 2082;
        *(v59 + 14) = sub_100141FE4(v91, v29, v92);
        _os_log_impl(&_mh_execute_header, v57, v58, "ProofingSessionID for documentType %{public}s identifier %{public}s doesn't exist", v59, 0x16u);
        swift_arrayDestroy();
      }

      v45 = *(v89 + 8);
      v46 = v17;
      goto LABEL_14;
    }

    v30 = v28;
    v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v33 = v32;

    [v27 target];
    v34 = IdentityTarget.init(rawValue:)();
    v35 = v86;
    if (v36)
    {

      v37 = v26;
      defaultLogger()();

      v38 = Logger.logObject.getter();
      v39 = static os_log_type_t.info.getter();

      if (!os_log_type_enabled(v38, v39))
      {

        (*(v89 + 8))(v26, v35);
        return;
      }

      v40 = swift_slowAlloc();
      v41 = v37;
      v92[0] = swift_slowAlloc();
      *v40 = 136446466;
      v42 = IdentityDocumentType.description.getter();
      v44 = sub_100141FE4(v42, v43, v92);

      *(v40 + 4) = v44;
      *(v40 + 12) = 2082;
      *(v40 + 14) = sub_100141FE4(v91, v29, v92);
      _os_log_impl(&_mh_execute_header, v38, v39, "Target for documentType %{public}s identifier %{public}s doesn't exist", v40, 0x16u);
      swift_arrayDestroy();

      goto LABEL_7;
    }

    v91 = v34;
    v63 = [v27 credentialIdentifier];
    v83 = v31;
    v84 = v27;
    if (v63)
    {
      v64 = v63;
      v65 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v67 = v66;

      if (!v25)
      {
        goto LABEL_26;
      }
    }

    else
    {
      v65 = 0;
      v67 = 0;
      if (!v25)
      {
        goto LABEL_26;
      }
    }

    v68 = v25;
    v69 = [v84 pairingID];
    if (v69)
    {
      v70 = v69;
      v71 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v73 = v72;

      v74 = v87;
      if ((v71 != v87 || v73 != v68) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {

        v41 = v22;
        defaultLogger()();

        v76 = v68;
        v77 = Logger.logObject.getter();
        v78 = static os_log_type_t.info.getter();

        if (os_log_type_enabled(v77, v78))
        {
          v79 = swift_slowAlloc();
          v92[0] = swift_slowAlloc();
          *v79 = 136446466;
          v80 = sub_100141FE4(v71, v73, v92);
          v81 = v74;
          v82 = v80;

          *(v79 + 4) = v82;
          *(v79 + 12) = 2082;
          *(v79 + 14) = sub_100141FE4(v81, v76, v92);
          _os_log_impl(&_mh_execute_header, v77, v78, "PairingID mismatch, storedPairingID: %{public}s, passedPairingID: %{public}s", v79, 0x16u);
          swift_arrayDestroy();
        }

        else
        {
        }

LABEL_7:
        v45 = *(v89 + 8);
        v46 = v41;
LABEL_14:
        v45(v46, v86);
        return;
      }
    }

LABEL_26:

    v75 = v88;
    swift_beginAccess();
    v75[2] = v83;
    v75[3] = v33;
    v75[4] = v91;
    v75[5] = v65;
    v75[6] = v67;
  }
}

void sub_1002D95A0(BOOL *a1@<X8>)
{
  type metadata accessor for StoredProofingSession();
  v3 = static StoredProofingSession.fetchRequest()();
  v4 = NSManagedObjectContext.fetch<A>(_:)();

  if (!v1)
  {
    if (v4 >> 62)
    {
      v5 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *a1 = v5 != 0;
  }
}

unint64_t sub_1002D964C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v22 = a2;
  v4 = type metadata accessor for DIPError.Code();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ProofingSession();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_10057A980(a1);
  if (v2)
  {
    return result;
  }

  v19 = v5;
  v13 = v22;
  if (!result)
  {
LABEL_11:
    v20 = 0;
    v21 = 0xE000000000000000;
    _StringGuts.grow(_:)(40);

    v20 = 0xD000000000000026;
    v21 = 0x800000010070B540;
    v17._countAndFlagsBits = IdentityDocumentType.description.getter();
    String.append(_:)(v17);

    (*(v19 + 104))(v7, enum case for DIPError.Code.internalError(_:), v4);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100037214();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    return swift_willThrow();
  }

  v14 = result & 0xFFFFFFFFFFFFFF8;
  if (result >> 62)
  {
    v18 = result;
    v16 = _CocoaArrayWrapper.endIndex.getter();
    result = v18;
    if (v16)
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_10:

    goto LABEL_11;
  }

LABEL_5:
  if ((result & 0xC000000000000001) != 0)
  {
    specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_8;
  }

  if (*(v14 + 16))
  {
    v15 = *(result + 32);
LABEL_8:

    ProofingSession.init(_:)();
    (*(v9 + 32))(v13, v11, v8);
    return (*(v9 + 56))(v13, 0, 1, v8);
  }

  __break(1u);
  return result;
}

void sub_1002D9A2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, SEL *a6, const char *a7, const char *a8, const char *a9, ...)
{
  v68 = a8;
  v69 = a7;
  v70 = a5;
  v71 = a6;
  v12 = type metadata accessor for Logger();
  v72 = *(v12 - 1);
  v13 = __chkstk_darwin(v12);
  v15 = &v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v13);
  v18 = &v62 - v17;
  v19 = __chkstk_darwin(v16);
  v21 = &v62 - v20;
  __chkstk_darwin(v19);
  v23 = &v62 - v22;
  v24 = v74;
  sub_10057C320(a2, a3, a4, 0, 1, 1);
  if (!v24)
  {
    v26 = v25;
    v67 = a3;
    v74 = 0;
    if (v25)
    {
      v27 = a4;
      v28 = v15;
      v29 = [v25 *v71];
      if (v29)
      {
        v30 = v29;
        v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v33 = v32;

        v34 = [v26 proofingSessionID];
        v35 = v72;
        if (v34)
        {
          v66 = v31;
          v68 = v12;
          v36 = v34;
          v71 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v38 = v37;

          v39 = v28;
          defaultLogger()();

          v40 = v27;

          v41 = Logger.logObject.getter();
          v42 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v41, v42))
          {
            v43 = v39;
            v44 = swift_slowAlloc();
            v45 = swift_slowAlloc();
            v65 = v38;
            v46 = v35;
            v63 = v40;
            v73[0] = v45;
            *v44 = 136446722;
            *(v44 + 4) = sub_100141FE4(v71, v65, v73);
            v64 = v26;
            *(v44 + 12) = 2082;
            v47 = v66;
            *(v44 + 14) = sub_100141FE4(v66, v33, v73);
            *(v44 + 22) = 2082;
            *(v44 + 24) = sub_100141FE4(v67, v63, v73);
            _os_log_impl(&_mh_execute_header, v41, v42, v69, v44, 0x20u);
            swift_arrayDestroy();

            (*(v46 + 8))(v43, v68);
            v38 = v65;
            v48 = v70;
          }

          else
          {

            (*(v35 + 8))(v39, v68);
            v48 = v70;
            v47 = v66;
          }

          swift_beginAccess();
          v58 = v48[2];
          v59 = v48[3];
          v60 = v48[4];
          v61 = v48[5];
          v48[2] = v71;
          v48[3] = v38;
          v48[4] = v47;
          v48[5] = v33;
          sub_1000B00AC(v58, v59, v60, v61);
        }

        else
        {

          defaultLogger()();
          v55 = Logger.logObject.getter();
          v56 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v55, v56))
          {
            v57 = swift_slowAlloc();
            *v57 = 0;
            _os_log_impl(&_mh_execute_header, v55, v56, v68, v57, 2u);
          }

          (*(v35 + 8))(v18, v12);
        }
      }

      else
      {
        defaultLogger()();
        v52 = Logger.logObject.getter();
        v53 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v52, v53))
        {
          v54 = swift_slowAlloc();
          *v54 = 0;
          _os_log_impl(&_mh_execute_header, v52, v53, a9, v54, 2u);
        }

        (*(v72 + 8))(v21, v12);
      }
    }

    else
    {
      defaultLogger()();
      v49 = Logger.logObject.getter();
      v50 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        *v51 = 0;
        _os_log_impl(&_mh_execute_header, v49, v50, "Proofing Session doesn't exist for the given country and document type", v51, 2u);
      }

      (*(v72 + 8))(v23, v12);
    }
  }
}

void *sub_1002D9FB8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v8 = type metadata accessor for DIPError.Code();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_10057C738(a2, a3);
  if (!v4)
  {
    if (result)
    {
      v13 = result;
      v14 = [result proofingSessionID];
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

      swift_beginAccess();
      *(a4 + 16) = v16;
      *(a4 + 24) = v18;
    }

    else
    {
      v21[1] = 0;
      v21[2] = 0xE000000000000000;
      _StringGuts.grow(_:)(62);
      v19._countAndFlagsBits = 0xD00000000000003CLL;
      v19._object = 0x800000010070B760;
      String.append(_:)(v19);
      v20._countAndFlagsBits = a2;
      v20._object = a3;
      String.append(_:)(v20);
      (*(v9 + 104))(v11, enum case for DIPError.Code.internalError(_:), v8);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_100037214();
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      return swift_willThrow();
    }
  }

  return result;
}

void sub_1002DA21C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for DIPError.Code();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10057CCBC(a2, a3);
  if (v4)
  {
    return;
  }

  if (!v12)
  {
LABEL_14:
    (*(v9 + 104))(v11, enum case for DIPError.Code.proofingSessionDoesntExist(_:), v8);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100037214();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    return;
  }

  v13 = v12 & 0xFFFFFFFFFFFFFF8;
  if (v12 >> 62)
  {
    v21 = v12;
    v22 = _CocoaArrayWrapper.endIndex.getter();
    v12 = v21;
    if (v22)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (!*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_13:

    goto LABEL_14;
  }

LABEL_5:
  if ((v12 & 0xC000000000000001) != 0)
  {
    v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*(v13 + 16))
    {
      __break(1u);
      return;
    }

    v14 = *(v12 + 32);
  }

  v15 = v14;

  v16 = [v15 learnMoreURLString];
  if (v16)
  {
    v17 = v16;
    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;
  }

  else
  {

    v18 = 0;
    v20 = 0;
  }

  swift_beginAccess();
  *(a4 + 16) = v18;
  *(a4 + 24) = v20;
}

void sub_1002DA4D0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v55 = a4;
  v62 = type metadata accessor for Logger();
  v9 = *(v62 - 8);
  v10 = __chkstk_darwin(v62);
  v12 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  isEscapingClosureAtFileLocation = &v50 - v14;
  __chkstk_darwin(v13);
  v17 = &v50 - v16;
  if (a2)
  {
    sub_10057CCBC(a1, a2);
    if (!v4)
    {
      v20 = v18;
      if (v18)
      {
        v21 = (v18 & 0xFFFFFFFFFFFFFF8);
        if (v18 >> 62)
        {
          goto LABEL_33;
        }

        for (i = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
        {
          v51 = v21;
          v23 = 0;
          v60 = v20 & 0xC000000000000001;
          v61 = isEscapingClosureAtFileLocation;
          v53 = (v9 + 8);
          v54 = v65;
          v56 = "Proofing State Unavailable";
          *&v19 = 136446466;
          v50 = v19;
          v9 = v55;
          v58 = v20;
          v59 = a3;
          v57 = i;
          while (v60)
          {
            v24 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            isEscapingClosureAtFileLocation = v61;
            v25 = v23 + 1;
            if (__OFADD__(v23, 1))
            {
              goto LABEL_30;
            }

LABEL_13:
            v63 = v25;
            [v24 target];
            IdentityTarget.init(rawValue:)();
            if ((v26 & 1) == 0)
            {
              defaultLogger()();
              v27 = Logger.logObject.getter();
              v28 = static os_log_type_t.debug.getter();
              if (os_log_type_enabled(v27, v28))
              {
                v29 = swift_slowAlloc();
                v30 = swift_slowAlloc();
                v52 = v5;
                aBlock[0] = v30;
                *v29 = v50;
                v31 = IdentityProofingActionStatus.debugDescription.getter();
                v33 = sub_100141FE4(v31, v32, aBlock);
                v9 = v55;

                *(v29 + 4) = v33;
                *(v29 + 12) = 2080;
                v34 = IdentityTarget.debugDescription.getter();
                v36 = sub_100141FE4(v34, v35, aBlock);

                *(v29 + 14) = v36;
                _os_log_impl(&_mh_execute_header, v27, v28, "Storing the current proofing action status to: %{public}s on target: %s", v29, 0x16u);
                swift_arrayDestroy();
                v5 = v52;

                (*v53)(v61, v62);
              }

              else
              {

                (*v53)(isEscapingClosureAtFileLocation, v62);
              }
            }

            v37 = IdentityProofingActionStatus.rawValue.getter();
            v38 = [v24 managedObjectContext];
            if (v38)
            {
              v21 = v38;
              a3 = swift_allocObject();
              *(a3 + 16) = v24;
              *(a3 + 24) = v37;
              *(a3 + 32) = 0;
              v20 = swift_allocObject();
              *(v20 + 16) = sub_100267984;
              *(v20 + 24) = a3;
              v65[2] = sub_10021E8E8;
              v65[3] = v20;
              aBlock[0] = _NSConcreteStackBlock;
              aBlock[1] = 1107296256;
              v65[0] = sub_10057E264;
              v65[1] = &unk_10080CAA0;
              v39 = _Block_copy(aBlock);
              v40 = v24;

              [v21 performBlockAndWait:v39];

              _Block_release(v39);
              isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

              if (isEscapingClosureAtFileLocation)
              {
                goto LABEL_31;
              }
            }

            a3 = v59;
            sub_10057BA64();
            if (v5)
            {

              return;
            }

            v41 = type metadata accessor for IdentityManagementSessionDelegate();
            v42 = [objc_opt_self() defaultCenter];
            v21 = String._bridgeToObjectiveC()();
            aBlock[0] = v41;
            sub_100007224(&qword_10083D698, &unk_1006DB6F0);
            [v42 postNotificationName:v21 object:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];

            swift_unknownObjectRelease();
            ++v23;
            v20 = v58;
            if (v63 == v57)
            {
              goto LABEL_21;
            }
          }

          isEscapingClosureAtFileLocation = v61;
          if (v23 >= v51[2])
          {
            goto LABEL_32;
          }

          v24 = *(v20 + 8 * v23 + 32);
          v25 = v23 + 1;
          if (!__OFADD__(v23, 1))
          {
            goto LABEL_13;
          }

LABEL_30:
          __break(1u);
LABEL_31:
          __break(1u);
LABEL_32:
          __break(1u);
LABEL_33:
          ;
        }

LABEL_21:
      }

      else
      {
        defaultLogger()();

        v46 = Logger.logObject.getter();
        v47 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v46, v47))
        {
          v48 = swift_slowAlloc();
          v49 = swift_slowAlloc();
          aBlock[0] = v49;
          *v48 = 136315138;
          *(v48 + 4) = sub_100141FE4(a1, a2, aBlock);
          _os_log_impl(&_mh_execute_header, v46, v47, "Proofing session with %s doesn't exist", v48, 0xCu);
          sub_10000BB78(v49);
        }

        (*(v9 + 8))(v12, v62);
      }
    }
  }

  else
  {
    defaultLogger()();
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&_mh_execute_header, v43, v44, "ProofingSessionID doesn't exist. Cannot look for proofing session.", v45, 2u);
    }

    (*(v9 + 8))(v17, v62);
  }
}

void sub_1002DABE0(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 1);
  __chkstk_darwin(v7);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10057CCBC(a2, a3);
  if (!v3)
  {
    v31 = 0;
    if (v11)
    {
      v12 = v11 & 0xFFFFFFFFFFFFFF8;
      if (v11 >> 62)
      {
        v23 = v11;
        v24 = _CocoaArrayWrapper.endIndex.getter();
        v11 = v23;
        if (v24)
        {
LABEL_5:
          if ((v11 & 0xC000000000000001) != 0)
          {
            v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (!*(v12 + 16))
            {
              __break(1u);
              goto LABEL_29;
            }

            v13 = *(v11 + 32);
          }

          v7 = v13;

          v14 = [v7 uploadAssets];
          if (v14)
          {
            v10 = v14;
            v15 = sub_10031F088(v10);

            v16 = sub_10057A09C(v15);

            if (v16)
            {
              if (!(v16 >> 62))
              {
                if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {

                  dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
                  sub_1002E4980();
                  v17 = v16;
                  goto LABEL_13;
                }

LABEL_31:

                goto LABEL_32;
              }

LABEL_29:
              if (_CocoaArrayWrapper.endIndex.getter() >= 1)
              {
                sub_1002E4980();

                v17 = _bridgeCocoaArray<A>(_:)();

LABEL_13:

                v30 = a1;
                if (v17 >> 62)
                {
                  v18 = _CocoaArrayWrapper.endIndex.getter();
                  if (v18)
                  {
                    goto LABEL_15;
                  }
                }

                else
                {
                  v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
                  if (v18)
                  {
LABEL_15:
                    if (v18 < 1)
                    {
                      __break(1u);
                      return;
                    }

                    v19 = 0;
                    v20 = *(v30 + 16);
                    do
                    {
                      if ((v17 & 0xC000000000000001) != 0)
                      {
                        v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                      }

                      else
                      {
                        v21 = *(v17 + 8 * v19 + 32);
                      }

                      v22 = v21;
                      ++v19;
                      [v20 deleteObject:{v21, v30}];
                    }

                    while (v18 != v19);
                  }
                }

                v29 = v31;
                sub_10057BA64();
                if (v29)
                {
                }

                else
                {
                }

                return;
              }

              goto LABEL_31;
            }
          }

LABEL_32:

          return;
        }
      }

      else if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_5;
      }
    }

    defaultLogger()();

    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v32 = v28;
      *v27 = 136315138;
      *(v27 + 4) = sub_100141FE4(a2, a3, &v32);
      _os_log_impl(&_mh_execute_header, v25, v26, "Unable to delete the uploaded assets for proofingSession with proofingSessionID %s", v27, 0xCu);
      sub_10000BB78(v28);
    }

    (*(v8 + 8))(v10, v7);
  }
}

void sub_1002DAFE0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v8 = type metadata accessor for DIPError.Code();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10057C738(a2, a3);
  if (!v4)
  {
    if (v12)
    {
      v13 = v12;
      [v12 target];
      IdentityTarget.init(rawValue:)();
      if (v14)
      {
        (*(v9 + 104))(v11, enum case for DIPError.Code.targetUnavailable(_:), v8);
        sub_1000402AC(_swiftEmptyArrayStorage);
        type metadata accessor for DIPError();
        sub_100037214();
        swift_allocError();
        DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
        swift_willThrow();
      }

      else
      {
        v17 = IdentityTarget.rawValue.getter();
        if (v17 == IdentityTarget.rawValue.getter())
        {
          v18 = [v13 didAttemptComboProofing];

          swift_beginAccess();
          *(a4 + 16) = v18 ^ 1;
        }

        else
        {
        }
      }
    }

    else
    {
      v19[1] = 0;
      v19[2] = 0xE000000000000000;
      _StringGuts.grow(_:)(62);
      v15._countAndFlagsBits = 0xD00000000000003CLL;
      v15._object = 0x800000010070B760;
      String.append(_:)(v15);
      v16._countAndFlagsBits = a2;
      v16._object = a3;
      String.append(_:)(v16);
      (*(v9 + 104))(v11, enum case for DIPError.Code.internalError(_:), v8);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_100037214();
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
    }
  }
}

void sub_1002DB330(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v135 = a5;
  v138 = a4;
  v136 = a3;
  v130 = type metadata accessor for DIPError.Code();
  v129 = *(v130 - 8);
  __chkstk_darwin(v130);
  v131 = &v119 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v151 = type metadata accessor for Logger();
  v8 = *(v151 - 8);
  v9 = __chkstk_darwin(v151);
  v133 = &v119 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v13 = &v119 - v12;
  v14 = __chkstk_darwin(v11);
  v132 = &v119 - v15;
  __chkstk_darwin(v14);
  v17 = &v119 - v16;
  v18 = sub_100007224(&unk_100844540, &unk_1006BFBC0);
  __chkstk_darwin(v18 - 8);
  v20 = &v119 - v19;
  v149 = type metadata accessor for URL();
  v21 = __chkstk_darwin(v149);
  v127 = &v119 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v142 = &v119 - v24;
  v26 = a1 + 64;
  v25 = *(a1 + 64);
  v27 = 1 << *(a1 + 32);
  v28 = -1;
  v137 = _swiftEmptyArrayStorage;
  v159 = _swiftEmptyArrayStorage;
  if (v27 < 64)
  {
    v28 = ~(-1 << v27);
  }

  v29 = v28 & v25;
  v30 = (v27 + 63) >> 6;
  v147 = (v23 + 48);
  v139 = (v23 + 32);
  v140 = (v23 + 8);
  v31 = (v8 + 8);
  v126 = (v23 + 16);
  v124 = v158;
  v152 = a1;

  v32 = 0;
  *&v33 = 136315138;
  v141 = v33;
  *&v33 = 136315394;
  v125 = v33;
  v150 = a2;
  v143 = v31;
  v144 = v13;
  v128 = v17;
  v148 = v20;
  v146 = a1 + 64;
  v145 = v30;
  if (v29)
  {
    while (1)
    {
      while (1)
      {
LABEL_8:
        v35 = __clz(__rbit64(v29)) | (v32 << 6);
        v36 = *(*(v152 + 48) + 16 * v35 + 8);
        v37 = *(*(v152 + 56) + 8 * v35);
        v38 = objc_opt_self();

        v155 = v37;

        v39 = String._bridgeToObjectiveC()();
        v40 = [v38 insertNewObjectForEntityForName:v39 inManagedObjectContext:*(a2 + 16)];

        type metadata accessor for StoredUploadAsset();
        v41 = swift_dynamicCastClass();
        v153 = v36;
        if (v41)
        {
          v154 = v41;
        }

        else
        {

          v154 = 0;
        }

        v29 &= v29 - 1;
        v42 = OBJC_IVAR____TtC8coreidvd11UploadAsset_assetFileURL;
        v43 = v155;
        swift_beginAccess();
        sub_10000BBC4(v43 + v42, v20, &unk_100844540, &unk_1006BFBC0);
        v44 = v149;
        if ((*v147)(v20, 1, v149) == 1)
        {
          sub_10000BE18(v20, &unk_100844540, &unk_1006BFBC0);
          goto LABEL_15;
        }

        v45 = v142;
        (*v139)(v142, v20, v44);
        v46 = *(v43 + 48);
        if (v46 != 5)
        {
          break;
        }

        (*v140)(v45, v44);
        v13 = v144;
LABEL_15:
        defaultLogger()();

        v47 = v155;

        v48 = Logger.logObject.getter();
        v49 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v48, v49))
        {
          v50 = swift_slowAlloc();
          v51 = swift_slowAlloc();
          aBlock[0] = v51;
          *v50 = v141;
          v52 = *(v47 + 48);
          if (v52 > 2)
          {
            if (v52 == 3)
            {
              v53 = 0x7373656E6576696CLL;
              v54 = 0xED00006F65646956;
            }

            else if (v52 == 4)
            {
              v53 = 0x7261696C69787561;
              v54 = 0xEE006F6564695679;
            }

            else
            {
              v53 = 0;
              v54 = 0xE000000000000000;
            }
          }

          else if (*(v47 + 48))
          {
            if (v52 == 1)
            {
              v53 = 0x656D75636F446469;
              v54 = 0xEE006B636142746ELL;
            }

            else
            {
              v54 = 0xE600000000000000;
              v53 = 0x6569666C6573;
            }
          }

          else
          {
            v53 = 0x656D75636F446469;
            v54 = 0xEF746E6F7246746ELL;
          }

          v55 = sub_100141FE4(v53, v54, aBlock);

          *(v50 + 4) = v55;
          _os_log_impl(&_mh_execute_header, v48, v49, "Error occurred in retrieving asset path for assetType: %s", v50, 0xCu);
          sub_10000BB78(v51);

          v31 = v143;
          v13 = v144;
          (*v143)(v144, v151);
          a2 = v150;
          v20 = v148;
          goto LABEL_30;
        }

        (*v31)(v13, v151);
        v20 = v148;
        v26 = v146;
        v30 = v145;
        a2 = v150;
        if (!v29)
        {
          goto LABEL_4;
        }
      }

      v56 = v128;
      defaultLogger()();
      v57 = v127;
      (*v126)(v127, v45, v44);
      v58 = Logger.logObject.getter();
      LODWORD(v122) = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v58, v122))
      {
        break;
      }

      v123 = *v140;
      v123(v57, v44);
      v122 = *v31;
      v122(v56, v151);
      a2 = v150;
LABEL_44:
      v72 = v138;
      if (v154)
      {
        v137 = v154;
        v73 = URL.absoluteString.getter();
        v75 = 0x7373656E6576696CLL;
        if (v46 != 3)
        {
          v75 = 0x7261696C69787561;
        }

        v76 = 0xED00006F65646956;
        if (v46 != 3)
        {
          v76 = 0xEE006F6564695679;
        }

        if (v46 == 2)
        {
          v75 = 0x6569666C6573;
          v76 = 0xE600000000000000;
        }

        v77 = 0xEF746E6F7246746ELL;
        if (v46)
        {
          v77 = 0xEE006B636142746ELL;
        }

        v78 = v46 <= 1;
        if (v46 <= 1)
        {
          v79 = 0x656D75636F446469;
        }

        else
        {
          v79 = v75;
        }

        if (v78)
        {
          v80 = v77;
        }

        else
        {
          v80 = v76;
        }

        v81 = v73;
        v82 = v74;
        v83 = *(v155 + 16);
        v84 = *(v155 + 24);

        v85 = [v137 managedObjectContext];
        if (v85)
        {
          v86 = v85;
          v87 = swift_allocObject();
          v88 = v82;
          v89 = v87;
          v90 = v81;
          v91 = v137;
          v87[2] = v137;
          v87[3] = v90;
          v87[4] = v88;
          v87[5] = v79;
          v87[6] = v80;
          v87[7] = v83;
          v87[8] = v84;
          v92 = swift_allocObject();
          *(v92 + 16) = sub_1002E5148;
          *(v92 + 24) = v89;
          v158[2] = sub_10026CBB8;
          v158[3] = v92;
          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 1107296256;
          v158[0] = sub_10057E264;
          v158[1] = &unk_10080CCA8;
          v93 = _Block_copy(aBlock);
          v94 = v91;

          [v86 performBlockAndWait:v93];

          _Block_release(v93);
          LOBYTE(v86) = swift_isEscapingClosureAtFileLocation();

          if (v86)
          {
LABEL_79:
            __break(1u);
            return;
          }
        }

        else
        {
        }

        v95 = v137;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        a2 = v150;
        v20 = v148;
        if (*((v159 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v159 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v137 = v159;
        v72 = v138;
      }

      defaultLogger()();

      v96 = v155;

      v97 = Logger.logObject.getter();
      v98 = v72;
      v99 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v97, v99))
      {
        v100 = swift_slowAlloc();
        v121 = swift_slowAlloc();
        aBlock[0] = v121;
        *v100 = v125;
        v101 = *(v96 + 16);
        v102 = *(v96 + 24);

        v103 = sub_100141FE4(v101, v102, aBlock);
        v120 = v97;
        v104 = v103;

        *(v100 + 4) = v104;
        *(v100 + 12) = 2080;
        *(v100 + 14) = sub_100141FE4(v136, v98, aBlock);
        v97 = v120;
        _os_log_impl(&_mh_execute_header, v120, v99, "Creating an StoredUploadAsset with recordUUID %s and proofingSessionID: %s", v100, 0x16u);
        swift_arrayDestroy();

        v20 = v148;
        a2 = v150;
      }

      v31 = v143;
      v122(v132, v151);
      v123(v142, v149);
      v13 = v144;
LABEL_30:
      v26 = v146;
      v30 = v145;
      if (!v29)
      {
        goto LABEL_4;
      }
    }

    v59 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    aBlock[0] = v60;
    *v59 = v125;
    v121 = v58;
    v120 = v60;
    if (v46 <= 1)
    {
      v61 = 0x656D75636F446469;
      v62 = 0xEF746E6F7246746ELL;
      a2 = v150;
      if (!v46)
      {
        goto LABEL_43;
      }

      v63 = 0x6B636142746ELL;
    }

    else
    {
      a2 = v150;
      if (v46 == 2)
      {
        v62 = 0xE600000000000000;
        v61 = 0x6569666C6573;
        goto LABEL_43;
      }

      if (v46 == 3)
      {
        v61 = 0x7373656E6576696CLL;
        v62 = 0xED00006F65646956;
LABEL_43:
        v64 = sub_100141FE4(v61, v62, aBlock);

        *(v59 + 4) = v64;
        *(v59 + 12) = 2080;
        v65 = v59;
        v66 = v127;
        v67 = URL.absoluteString.getter();
        v69 = v68;
        v123 = *v140;
        v123(v66, v149);
        v70 = sub_100141FE4(v67, v69, aBlock);

        *(v65 + 14) = v70;
        v71 = v121;
        _os_log_impl(&_mh_execute_header, v121, v122, "Persisted assetType: %s with path: %s to database", v65, 0x16u);
        swift_arrayDestroy();

        v122 = *v143;
        v122(v128, v151);
        goto LABEL_44;
      }

      v61 = 0x7261696C69787561;
      v63 = 0x6F6564695679;
    }

    v62 = v63 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
    goto LABEL_43;
  }

  while (1)
  {
LABEL_4:
    v34 = v32 + 1;
    if (__OFADD__(v32, 1))
    {
      __break(1u);
      goto LABEL_79;
    }

    if (v34 >= v30)
    {
      break;
    }

    v29 = *(v26 + 8 * v34);
    ++v32;
    if (v29)
    {
      v32 = v34;
      goto LABEL_8;
    }
  }

  v105 = v135;
  swift_beginAccess();
  v106 = v134;
  sub_10057BE48(v136, v138, *(v105 + 16));
  if (v106)
  {
  }

  else
  {
    v108 = v107;
    if (v107)
    {
      v109 = [v107 managedObjectContext];
      if (v109)
      {
        v110 = v109;
        __chkstk_darwin(v109);
        sub_100007224(&qword_1008402E8, &qword_1006E0E10);
        NSManagedObjectContext.performAndWait<A>(_:)();
      }

      v111 = v133;
      defaultLogger()();

      v112 = Logger.logObject.getter();
      v113 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v112, v113))
      {
        v114 = swift_slowAlloc();
        v115 = swift_slowAlloc();
        v156 = v115;
        *v114 = v141;
        swift_beginAccess();
        v116 = IdentityTarget.debugDescription.getter();
        v118 = sub_100141FE4(v116, v117, &v156);

        *(v114 + 4) = v118;
        _os_log_impl(&_mh_execute_header, v112, v113, "Saved upload assets to %s proofingSession", v114, 0xCu);
        sub_10000BB78(v115);
      }

      (*v143)(v111, v151);
      sub_10057BA64();
    }

    else
    {

      (*(v129 + 104))(v131, enum case for DIPError.Code.proofingSessionDoesntExist(_:), v130);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_100037214();
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
    }
  }
}

unint64_t sub_1002DC694(unint64_t a1, uint64_t a2, unint64_t a3, int a4)
{
  v8 = type metadata accessor for Logger();
  v54 = *(v8 - 8);
  v9 = __chkstk_darwin(v8);
  v11 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = &v48 - v13;
  __chkstk_darwin(v12);
  v16 = &v48 - v15;
  v17 = a4;
  v18 = v57;
  result = sub_10057A388(a2, a3, a4 & 1);
  if (!v18)
  {
    v20 = result;
    v50 = v14;
    v51 = a1;
    v52 = v8;
    v53 = v11;
    v55 = a3;
    LODWORD(v57) = v17;
    v21 = v54;
    if (result)
    {
      v22 = result >> 62;
      if (result >> 62)
      {
        goto LABEL_47;
      }

      for (i = *((result & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
      {
        v24 = v16;
        v56 = i;
        if (!i)
        {
          break;
        }

        defaultLogger()();

        v25 = Logger.logObject.getter();
        v26 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v25, v26))
        {
          v16 = swift_slowAlloc();
          *v16 = 134217984;
          if (v22)
          {
            v27 = _CocoaArrayWrapper.endIndex.getter();
          }

          else
          {
            v27 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v22 = v52;
          *(v16 + 4) = v27;

          _os_log_impl(&_mh_execute_header, v25, v26, "IdentityDatabaseProvider fetched %ld eligible sessions for deletion", v16, 0xCu);
        }

        else
        {

          v22 = v52;
        }

        v32 = *(v21 + 8);
        v21 += 8;
        v54 = v21;
        v49 = v32;
        v32(v24, v22);
        v33 = 0;
        v58 = _swiftEmptyArrayStorage;
        v34 = v20 & 0xC000000000000001;
        v35 = v20 & 0xFFFFFFFFFFFFFF8;
        v53 = v20;
        do
        {
          if (v34)
          {
            v36 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v33 >= *(v35 + 16))
            {
              goto LABEL_44;
            }

            v36 = *(v20 + 8 * v33 + 32);
          }

          v16 = v36;
          v21 = v33 + 1;
          if (__OFADD__(v33, 1))
          {
            __break(1u);
LABEL_44:
            __break(1u);
            goto LABEL_45;
          }

          if ((v57 & 1) != 0 || (v37 = [v36 documentType]) == 0 || (v38 = v37, static String._unconditionallyBridgeFromObjectiveC(_:)(), v38, v20 = v53, IdentityDocumentType.init(documentTypeString:)(), v22 = IdentityDocumentType.rawValue.getter(), v22 == IdentityDocumentType.rawValue.getter()))
          {
            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            v22 = v58[2];
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            specialized ContiguousArray._endMutation()();
          }

          else
          {
          }

          ++v33;
        }

        while (v21 != v56);
        v39 = v58;
        v40 = v50;
        defaultLogger()();

        v41 = v40;
        v42 = Logger.logObject.getter();
        v43 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v42, v43))
        {
          v22 = swift_slowAlloc();
          *v22 = 134217984;
          if ((v39 & 0x8000000000000000) != 0 || (v39 & 0x4000000000000000) != 0)
          {
            v44 = _CocoaArrayWrapper.endIndex.getter();
          }

          else
          {
            v44 = *(v39 + 16);
          }

          *(v22 + 4) = v44;

          _os_log_impl(&_mh_execute_header, v42, v43, "IdentityDatabaseProvider fetched %ld eligible sessions for deletion", v22, 0xCu);

          v20 = v53;
        }

        else
        {
        }

        v49(v41, v52);
        v45 = 0;
        v21 = v51;
        v16 = v56;
        while (1)
        {
          if (v34)
          {
            v46 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v45 >= *(v35 + 16))
            {
              goto LABEL_46;
            }

            v46 = *(v20 + 8 * v45 + 32);
          }

          v47 = v46;
          v22 = v45 + 1;
          if (__OFADD__(v45, 1))
          {
            break;
          }

          v58 = v46;
          sub_1002DCC28(&v58, v21);

          ++v45;
          if (v22 == v16)
          {

            return sub_1005783D4();
          }
        }

LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:
        ;
      }
    }

    v28 = v53;
    defaultLogger()();
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&_mh_execute_header, v29, v30, "IdentityDatabaseProvider no proofing sessions to delete", v31, 2u);
    }

    return (*(v21 + 8))(v28, v52);
  }

  return result;
}

id sub_1002DCC28(id *a1, uint64_t a2)
{
  v5 = type metadata accessor for Logger();
  v30 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  [*a1 target];
  IdentityTarget.init(rawValue:)();
  if (v9)
  {
    v31 = 0;
    v32 = 0xE000000000000000;
    _StringGuts.grow(_:)(25);

    v31 = 0xD000000000000016;
    v32 = 0x800000010070B490;
    v33 = [v8 target];
    v10._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v10);

    v11._countAndFlagsBits = 41;
    v11._object = 0xE100000000000000;
    String.append(_:)(v11);
    v13 = v31;
    v12 = v32;
  }

  else
  {
    v13 = IdentityTarget.debugDescription.getter();
    v12 = v14;
  }

  defaultLogger()();

  v15 = v8;
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v27 = v5;
    v28 = a2;
    v29 = v2;
    v18 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    *v18 = 136446466;
    v19 = sub_100141FE4(v13, v12, &v31);

    *(v18 + 4) = v19;
    *(v18 + 12) = 2082;
    v20 = [v15 pairingID];
    if (v20)
    {
      v21 = v20;
      v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v24 = v23;
    }

    else
    {
      v24 = 0xE300000000000000;
      v22 = 7104878;
    }

    v25 = sub_100141FE4(v22, v24, &v31);

    *(v18 + 14) = v25;
    _os_log_impl(&_mh_execute_header, v16, v17, "IdentityDatabaseProvider trying to delete proofing session for target : %{public}s with pairingID : %{public}s", v18, 0x16u);
    swift_arrayDestroy();

    (*(v30 + 8))(v7, v27);
    a2 = v28;
  }

  else
  {

    (*(v30 + 8))(v7, v5);
  }

  return [*(a2 + 16) deleteObject:v15];
}

uint64_t sub_1002DCF70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[31] = a4;
  v5[32] = v4;
  v5[29] = a2;
  v5[30] = a3;
  v5[28] = a1;
  v6 = type metadata accessor for DIPError.Code();
  v5[33] = v6;
  v5[34] = *(v6 - 8);
  v5[35] = swift_task_alloc();

  return _swift_task_switch(sub_1002DD038, 0, 0);
}

uint64_t sub_1002DD038()
{
  if (qword_100832B60 != -1)
  {
    swift_once();
  }

  v1 = *(qword_100881E78 + 16);
  os_unfair_lock_lock(v1 + 54);
  sub_100031B5C(&v1[4], (v0 + 2));
  os_unfair_lock_unlock(v1 + 54);
  v3 = v0[31];
  v2 = v0[32];
  v5 = v0[29];
  v4 = v0[30];
  v6 = v0[28];
  v0[36] = v0[9];

  sub_100031918((v0 + 2));
  v7 = swift_allocObject();
  v0[37] = v7;
  v7[2] = v6;
  v7[3] = v5;
  v7[4] = v4;
  v7[5] = v3;
  v7[6] = v2;
  v8 = swift_allocObject();
  v0[38] = v8;
  *(v8 + 16) = sub_1002E0D78;
  *(v8 + 24) = v7;

  v9 = swift_task_alloc();
  v0[39] = v9;
  v10 = type metadata accessor for IdentityProofingConfiguration();
  *v9 = v0;
  v9[1] = sub_1002DD22C;

  return AsyncCoreDataContainer.performWrite<A>(_:)(v0 + 27, sub_1002A6FB8, v8, v10);
}

uint64_t sub_1002DD22C()
{
  v2 = *v1;
  v2[40] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1002DD39C, 0, 0);
  }

  else
  {

    v3 = v2[27];

    v4 = v2[1];

    return v4(v3);
  }
}

uint64_t sub_1002DD39C()
{
  v1 = v0[35];
  v2 = v0[33];
  v3 = v0[34];

  (*(v3 + 104))(v1, enum case for DIPError.Code.internalError(_:), v2);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100037214();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v4 = v0[1];

  return v4();
}

void sub_1002DD510(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t *a6@<X8>)
{
  v84 = a5;
  v82 = a3;
  v83 = a4;
  v80 = a6;
  v8 = type metadata accessor for Logger();
  v81 = *(v8 - 8);
  v9 = __chkstk_darwin(v8);
  v11 = &v76 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = &v76 - v13;
  __chkstk_darwin(v12);
  v16 = &v76 - v15;
  v17 = type metadata accessor for DIPError.Code();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v76 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v85;
  v22 = sub_1005796D0(a2, v82, v83, v84);
  if (v21)
  {
    return;
  }

  v78 = a1;
  v79 = v11;
  v83 = v18;
  v84 = v20;
  v85 = v8;
  if (v22 >> 62)
  {
    v74 = v22;
    v75 = _CocoaArrayWrapper.endIndex.getter();
    v22 = v74;
    v23 = v17;
    if (v75)
    {
      goto LABEL_4;
    }

LABEL_31:

    (*(v83 + 104))(v84, enum case for DIPError.Code.proofingSessionDoesntExist(_:), v23);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100037214();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    return;
  }

  v23 = v17;
  if (!*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_31;
  }

LABEL_4:
  v82 = 0;
  if ((v22 & 0xC000000000000001) != 0)
  {
    v24 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v24 = *(v22 + 32);
  }

  v25 = v24;

  v26 = [v25 documentType];
  if (v26)
  {

    defaultLogger()();
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, v27, v28, "IdentityProofingDatabaseProvider proofing data exists, returning mapped proofing configuration", v29, 2u);
    }

    (*(v81 + 8))(v16, v85);
    v30 = v82;
    v31 = sub_1002E371C(v25);

    if (!v30)
    {
      *v80 = v31;
    }
  }

  else
  {
    v77 = v23;
    [v25 target];
    IdentityTarget.init(rawValue:)();
    if (v32)
    {
      v86 = 0;
      v87 = 0xE000000000000000;
      _StringGuts.grow(_:)(25);

      v86 = 0xD000000000000016;
      v87 = 0x800000010070B490;
      v88 = [v25 target];
      v33._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v33);

      v34._countAndFlagsBits = 41;
      v34._object = 0xE100000000000000;
      String.append(_:)(v34);
      v36 = v86;
      v35 = v87;
    }

    else
    {
      v36 = IdentityTarget.debugDescription.getter();
      v35 = v37;
    }

    v38 = 0x3E6C696E3CLL;
    v86 = 0;
    v87 = 0xE000000000000000;
    _StringGuts.grow(_:)(32);

    v86 = 0x6E6F69737365535BLL;
    v87 = 0xEA00000000002820;
    v39 = [v25 state];
    if (v39)
    {
      v40 = v39;
      v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v43 = v42;
    }

    else
    {
      v43 = 0xE500000000000000;
      v41 = 0x3E6C696E3CLL;
    }

    v44._countAndFlagsBits = v41;
    v44._object = v43;
    String.append(_:)(v44);

    v45._countAndFlagsBits = 8236;
    v45._object = 0xE200000000000000;
    String.append(_:)(v45);
    v46 = [v25 country];
    if (v46)
    {
      v47 = v46;
      v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v49 = v48;
    }

    else
    {
      v49 = 0xE500000000000000;
    }

    v50 = v14;
    v80 = v25;
    v51._countAndFlagsBits = v38;
    v51._object = v49;
    String.append(_:)(v51);

    v52._countAndFlagsBits = 0x7465677261742029;
    v52._object = 0xED0000203A676E69;
    String.append(_:)(v52);
    v53._countAndFlagsBits = v36;
    v53._object = v35;
    String.append(_:)(v53);

    v54._countAndFlagsBits = 93;
    v54._object = 0xE100000000000000;
    String.append(_:)(v54);
    v55 = v86;
    v56 = v87;
    defaultLogger()();

    v57 = Logger.logObject.getter();
    v58 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v57, v58))
    {
      v59 = v14;
      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v86 = v61;
      *v60 = 136446210;
      *(v60 + 4) = sub_100141FE4(v55, v56, &v86);
      _os_log_impl(&_mh_execute_header, v57, v58, "IdentityProofingDatabaseProvider %{public}s does not have a valid document type. This is likely a legacy proofing session and should be deleted.", v60, 0xCu);
      sub_10000BB78(v61);

      v62 = *(v81 + 8);
      v63 = v59;
    }

    else
    {

      v62 = *(v81 + 8);
      v63 = v50;
    }

    v64 = v85;
    v62(v63, v85);
    v65 = v79;
    defaultLogger()();

    v66 = Logger.logObject.getter();
    v67 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      v86 = v69;
      *v68 = 136446210;
      v70 = sub_100141FE4(v55, v56, &v86);

      *(v68 + 4) = v70;
      _os_log_impl(&_mh_execute_header, v66, v67, "IdentityProofingDatabaseProvider trying to delete legacy proofing session %{public}s", v68, 0xCu);
      sub_10000BB78(v69);

      v62(v79, v64);
    }

    else
    {

      v62(v65, v64);
      v17 = v77;
    }

    v71 = v83;
    v72 = v80;
    [*(v78 + 16) deleteObject:v80];
    v73 = v82;
    sub_1005783D4();
    if (!v73)
    {
      (*(v71 + 104))(v84, enum case for DIPError.Code.proofingSessionDoesntExist(_:), v17);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_100037214();
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
    }
  }
}

uint64_t sub_1002DDE50()
{
  v1[28] = v0;
  v2 = type metadata accessor for DIPError.Code();
  v1[29] = v2;
  v1[30] = *(v2 - 8);
  v1[31] = swift_task_alloc();

  return _swift_task_switch(sub_1002DDF10, 0, 0);
}

uint64_t sub_1002DDF10()
{
  v1 = [objc_opt_self() standardUserDefaults];
  v2._countAndFlagsBits = static DaemonInternalDefaultsKeys.clearIdentityProofingData.getter();
  v3 = NSUserDefaults.internalBool(forKey:)(v2);

  if (v3)
  {
    v4 = swift_task_alloc();
    v0[32] = v4;
    *v4 = v0;
    v4[1] = sub_1002DE184;

    return sub_1002E0570(1, 0, 1);
  }

  else
  {
    if (qword_100832B60 != -1)
    {
      swift_once();
    }

    v6 = *(qword_100881E78 + 16);
    os_unfair_lock_lock(v6 + 54);
    sub_100031B5C(&v6[4], (v0 + 2));
    os_unfair_lock_unlock(v6 + 54);
    v7 = v0[28];
    v0[36] = v0[9];

    sub_100031918((v0 + 2));
    v8 = swift_allocObject();
    v0[37] = v8;
    *(v8 + 16) = sub_1002E3F88;
    *(v8 + 24) = v7;
    swift_retain_n();
    v9 = swift_task_alloc();
    v0[38] = v9;
    v10 = type metadata accessor for IdentityProofingStatus();
    *v9 = v0;
    v9[1] = sub_1002DE754;

    return AsyncCoreDataContainer.performWrite<A>(_:)(v0 + 27, sub_1002A7770, v8, v10);
  }
}

uint64_t sub_1002DE184()
{
  v2 = *v1;
  *(v2 + 264) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1002DE428, 0, 0);
  }

  else
  {
    v3 = swift_task_alloc();
    *(v2 + 272) = v3;
    *v3 = v2;
    v3[1] = sub_1002DE314;

    return sub_1002E0570(2, 0, 1);
  }
}

uint64_t sub_1002DE314()
{
  *(*v1 + 280) = v0;

  if (v0)
  {
    v2 = sub_1002DE604;
  }

  else
  {
    v2 = sub_1002DE578;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1002DE428()
{
  (*(v0[30] + 104))(v0[31], enum case for DIPError.Code.internalError(_:), v0[29]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100037214();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v1 = v0[1];

  return v1();
}

uint64_t sub_1002DE578()
{
  v1 = objc_allocWithZone(type metadata accessor for IdentityProofingStatus());
  v2 = IdentityProofingStatus.init(activeConfigurations:availability:)();

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_1002DE604()
{
  (*(v0[30] + 104))(v0[31], enum case for DIPError.Code.internalError(_:), v0[29]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100037214();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v1 = v0[1];

  return v1();
}

uint64_t sub_1002DE754()
{
  v2 = *v1;
  v2[39] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1002DE8C4, 0, 0);
  }

  else
  {

    v3 = v2[27];

    v4 = v2[1];

    return v4(v3);
  }
}

uint64_t sub_1002DE8C4()
{

  (*(v0[30] + 104))(v0[31], enum case for DIPError.Code.internalError(_:), v0[29]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100037214();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v1 = v0[1];

  return v1();
}

void sub_1002DEA30(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v58 = a3;
  v59 = a2;
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v57 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v60 = &v55 - v10;
  __chkstk_darwin(v9);
  v12 = &v55 - v11;
  defaultLogger()();
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "IdentityProofingDatabaseProvider fetching all the proofing sessions to derive the proofing status", v15, 2u);
  }

  v18 = *(v6 + 8);
  v16 = v6 + 8;
  v17 = v18;
  v18(v12, v5);
  type metadata accessor for StoredProofingSession();
  v19 = static StoredProofingSession.fetchRequest()();
  v20 = NSManagedObjectContext.fetch<A>(_:)();

  if (v3)
  {
    return;
  }

  v62 = a1;
  v63 = v17;
  v55 = v16;
  v65 = _swiftEmptyArrayStorage;
  if (v20 >> 62)
  {
    goto LABEL_34;
  }

  for (i = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v22 = v63;
    v23 = _swiftEmptyArrayStorage;
    v64 = i;
    if (i)
    {
      v56 = v5;
      v24 = 0;
      v5 = v20 & 0xFFFFFFFFFFFFFF8;
      v61 = v20 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if ((v20 & 0xC000000000000001) != 0)
        {
          v25 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v24 >= *(v5 + 16))
          {
            goto LABEL_31;
          }

          v25 = *(v20 + 8 * v24 + 32);
        }

        v26 = v25;
        v27 = v24 + 1;
        if (__OFADD__(v24, 1))
        {
          break;
        }

        v28 = [v25 documentType];
        if (v28)
        {
          v29 = v28;
        }

        else
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          v5 = v61;
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
        }

        ++v24;
        if (v27 == v64)
        {
          v23 = v65;
          v5 = v56;
          v22 = v63;
          goto LABEL_18;
        }
      }

      __break(1u);
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

LABEL_18:
    if ((v23 & 0x8000000000000000) == 0 && (v23 & 0x4000000000000000) == 0)
    {
      v30 = *(v23 + 16);
      if (!v30)
      {
        break;
      }

      goto LABEL_21;
    }

    v30 = _CocoaArrayWrapper.endIndex.getter();
    if (!v30)
    {
      break;
    }

LABEL_21:
    v31 = 0;
    while (1)
    {
      if ((v23 & 0xC000000000000001) != 0)
      {
        v32 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v31 >= *(v23 + 16))
        {
          goto LABEL_33;
        }

        v32 = *(v23 + 8 * v31 + 32);
      }

      v33 = v32;
      v34 = v31 + 1;
      if (__OFADD__(v31, 1))
      {
        break;
      }

      v65 = v32;
      sub_1002DF16C(&v65, v62);

      ++v31;
      v35 = v34 == v30;
      v22 = v63;
      if (v35)
      {
        goto LABEL_36;
      }
    }

LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    ;
  }

LABEL_36:

  sub_1005783D4();
  v36 = _swiftEmptyArrayStorage;
  v65 = _swiftEmptyArrayStorage;
  v37 = v64;
  if (v64)
  {
    v56 = v5;
    v38 = 0;
    v22 = (v20 & 0xC000000000000001);
    v5 = v20 & 0xFFFFFFFFFFFFFF8;
    do
    {
      if (v22)
      {
        v39 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v38 >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_63;
        }

        v39 = *(v20 + 8 * v38 + 32);
      }

      v40 = v39;
      v36 = v38 + 1;
      if (__OFADD__(v38, 1))
      {
        __break(1u);
LABEL_63:
        __break(1u);
        goto LABEL_64;
      }

      v41 = [v39 documentType];
      if (v41)
      {

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v37 = v64;
      }

      else
      {
      }

      ++v38;
    }

    while (v36 != v37);
    v36 = v65;
    v5 = v56;
    v22 = v63;
  }

  if ((v36 & 0x8000000000000000) != 0 || (v36 & 0x4000000000000000) != 0)
  {
    goto LABEL_67;
  }

  for (j = *(v36 + 16); j > 0; j = _CocoaArrayWrapper.endIndex.getter())
  {
    defaultLogger()();
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&_mh_execute_header, v43, v44, "IdentityProofingDatabaseProvider proofing data exists, send .activeSession as availability with the fetched proofing data", v45, 2u);
    }

    v22(v60, v5);
    v65 = _swiftEmptyArrayStorage;

    specialized ContiguousArray.reserveCapacity(_:)();
    v46 = 0;
    while (v46 < j)
    {
      v5 = v46 + 1;
      if (__OFADD__(v46, 1))
      {
        goto LABEL_65;
      }

      if ((v36 & 0xC000000000000001) != 0)
      {
        v47 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v46 >= *(v36 + 16))
        {
          goto LABEL_66;
        }

        v47 = *(v36 + 8 * v46 + 32);
      }

      v48 = v47;
      v22 = sub_1002E371C(v47);

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      ++v46;
      if (v5 == j)
      {

        v49 = objc_allocWithZone(type metadata accessor for IdentityProofingStatus());
        goto LABEL_71;
      }
    }

LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    ;
  }

  v50 = v57;
  defaultLogger()();
  v51 = Logger.logObject.getter();
  v52 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    *v53 = 0;
    _os_log_impl(&_mh_execute_header, v51, v52, "IdentityProofingDatabaseProvider no proofing sessions exist, mark proofingAvailability as available ", v53, 2u);
  }

  v63(v50, v5);
  v54 = objc_allocWithZone(type metadata accessor for IdentityProofingStatus());
LABEL_71:
  *v58 = IdentityProofingStatus.init(activeConfigurations:availability:)();
}

id sub_1002DF16C(id *a1, uint64_t a2)
{
  v53 = a2;
  v52 = type metadata accessor for Logger();
  v3 = *(v52 - 8);
  v4 = __chkstk_darwin(v52);
  v6 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v50 - v7;
  v9 = *a1;
  [*a1 target];
  IdentityTarget.init(rawValue:)();
  v54 = v6;
  if (v10)
  {
    v55 = 0;
    v56 = 0xE000000000000000;
    _StringGuts.grow(_:)(25);

    v55 = 0xD000000000000016;
    v56 = 0x800000010070B490;
    v57 = [v9 target];
    v11._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v11);

    v12._countAndFlagsBits = 41;
    v12._object = 0xE100000000000000;
    String.append(_:)(v12);
    v14 = v55;
    v13 = v56;
  }

  else
  {
    v14 = IdentityTarget.debugDescription.getter();
    v13 = v15;
  }

  v16 = 0x3E6C696E3CLL;
  v55 = 0;
  v56 = 0xE000000000000000;
  _StringGuts.grow(_:)(32);

  v55 = 0x6E6F69737365535BLL;
  v56 = 0xEA00000000002820;
  v17 = [v9 state];
  if (v17)
  {
    v18 = v17;
    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;
  }

  else
  {
    v21 = 0xE500000000000000;
    v19 = 0x3E6C696E3CLL;
  }

  v22._countAndFlagsBits = v19;
  v22._object = v21;
  String.append(_:)(v22);

  v23._countAndFlagsBits = 8236;
  v23._object = 0xE200000000000000;
  String.append(_:)(v23);
  v24 = [v9 country];
  if (v24)
  {
    v25 = v24;
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v27 = v26;
  }

  else
  {
    v27 = 0xE500000000000000;
  }

  v51 = v9;
  v28._countAndFlagsBits = v16;
  v28._object = v27;
  String.append(_:)(v28);

  v29._countAndFlagsBits = 0x7465677261742029;
  v29._object = 0xED0000203A676E69;
  String.append(_:)(v29);
  v30._countAndFlagsBits = v14;
  v30._object = v13;
  String.append(_:)(v30);

  v31._countAndFlagsBits = 93;
  v31._object = 0xE100000000000000;
  String.append(_:)(v31);
  v32 = v55;
  v33 = v56;
  defaultLogger()();

  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.default.getter();

  v36 = os_log_type_enabled(v34, v35);
  v50 = v32;
  if (v36)
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v55 = v38;
    *v37 = 136446210;
    *(v37 + 4) = sub_100141FE4(v32, v33, &v55);
    _os_log_impl(&_mh_execute_header, v34, v35, "IdentityProofingDatabaseProvider %{public}s does not have a valid document type. This is likely a legacy proofing session and should be deleted.", v37, 0xCu);
    sub_10000BB78(v38);
  }

  v39 = *(v3 + 8);
  v40 = v8;
  v41 = v52;
  v39(v40, v52);
  v42 = v54;
  defaultLogger()();

  v43 = Logger.logObject.getter();
  v44 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v55 = v46;
    *v45 = 136446210;
    v47 = sub_100141FE4(v50, v33, &v55);

    *(v45 + 4) = v47;
    _os_log_impl(&_mh_execute_header, v43, v44, "IdentityProofingDatabaseProvider trying to delete legacy proofing session %{public}s", v45, 0xCu);
    sub_10000BB78(v46);

    v48 = v54;
  }

  else
  {

    v48 = v42;
  }

  v39(v48, v41);
  return [*(v53 + 16) deleteObject:v51];
}

uint64_t sub_1002DF674(void *a1)
{
  v2 = type metadata accessor for DIPError.Code();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a1 proofingActionStatus];
  v6 = IdentityProofingActionStatus.init(rawValue:)();
  if (v7)
  {
    (*(v3 + 104))(v5, enum case for DIPError.Code.storedProofingActionStatusDoesntExist(_:), v2);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100037214();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    return swift_willThrow();
  }

  else
  {
    v9 = v6;
    v10 = IdentityProofingActionStatus.rawValue.getter();
    if (v10 == IdentityProofingActionStatus.rawValue.getter())
    {
      return 1;
    }

    else
    {
      return v9;
    }
  }
}

uint64_t sub_1002DF830@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = [*a1 actions];
  if (!v4 || (v5 = v4, v6 = [v4 array], v5, v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)(), v6, v8 = sub_10057A0E4(v7), , !v8))
  {

    v8 = _swiftEmptyArrayStorage;
  }

  v23 = _swiftEmptyArrayStorage;
  if (v8 >> 62)
  {
    goto LABEL_19;
  }

  v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v19 = v3;
  for (i = a2; v9; i = a2)
  {
    v10 = 0;
    a2 = (v8 & 0xFFFFFFFFFFFFFF8);
    while (1)
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v10 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v11 = *(v8 + 8 * v10 + 32);
      }

      v12 = v11;
      v3 = (v10 + 1);
      if (__OFADD__(v10, 1))
      {
        break;
      }

      v22 = v11;
      sub_1002DFAE0(&v22, &v21);

      if (v21)
      {
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      }

      ++v10;
      if (v3 == v9)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    v9 = _CocoaArrayWrapper.endIndex.getter();
    v19 = v3;
  }

LABEL_20:

  v13 = [v19 title];
  if (v13)
  {
    v14 = v13;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v15 = [v19 message];
  if (v15)
  {
    v16 = v15;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v17 = objc_allocWithZone(type metadata accessor for IdentityProofingPrecursorPassMessage());
  result = IdentityProofingPrecursorPassMessage.init(title:message:actions:)();
  *i = result;
  return result;
}

uint64_t sub_1002DFAE0@<X0>(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100007224(&unk_100844540, &unk_1006BFBC0);
  __chkstk_darwin(v8 - 8);
  v10 = v24 - v9;
  v11 = *a1;
  v12 = [*a1 title];
  if (v12)
  {
    v13 = v12;
    v24[1] = static String._unconditionallyBridgeFromObjectiveC(_:)();

    [v11 actionType];
    IdentityProofingPrecursorPassMessageActionType.init(rawValue:)();
    if ((v14 & 1) == 0)
    {
      v19 = [v11 actionURL];
      if (v19)
      {
        v20 = v19;
        static URL._unconditionallyBridgeFromObjectiveC(_:)();

        v21 = type metadata accessor for URL();
        (*(*(v21 - 8) + 56))(v10, 0, 1, v21);
      }

      else
      {
        v22 = type metadata accessor for URL();
        (*(*(v22 - 8) + 56))(v10, 1, 1, v22);
      }

      v23 = objc_allocWithZone(type metadata accessor for IdentityProofingPrecursorPassMessageAction());
      result = IdentityProofingPrecursorPassMessageAction.init(title:actionType:actionURL:)();
      goto LABEL_11;
    }
  }

  defaultLogger()();
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v15, v16, "IdentityProofingDatabaseProvider failed to map precursor pass message action from stored proofing session", v17, 2u);
  }

  (*(v5 + 8))(v7, v4);
  result = 0;
LABEL_11:
  *a2 = result;
  return result;
}

void sub_1002DFDBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for DIPError.Code();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10057CCBC(a2, a3);
  if (v4)
  {
    return;
  }

  if (!v12)
  {
LABEL_14:
    (*(v9 + 104))(v11, enum case for DIPError.Code.proofingSessionDoesntExist(_:), v8);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100037214();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    return;
  }

  v13 = v12 & 0xFFFFFFFFFFFFFF8;
  if (v12 >> 62)
  {
    v21 = v12;
    v22 = _CocoaArrayWrapper.endIndex.getter();
    v12 = v21;
    if (v22)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (!*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_13:

    goto LABEL_14;
  }

LABEL_5:
  if ((v12 & 0xC000000000000001) != 0)
  {
    v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*(v13 + 16))
    {
      __break(1u);
      return;
    }

    v14 = *(v12 + 32);
  }

  v15 = v14;

  v16 = [v15 piiTokenIdentifier];
  if (v16)
  {
    v17 = v16;
    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;
  }

  else
  {

    v18 = 0;
    v20 = 0;
  }

  swift_beginAccess();
  *(a4 + 16) = v18;
  *(a4 + 24) = v20;
}

void sub_1002E0070(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v7 = type metadata accessor for DIPError.Code();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1005791C8(a1, a2);
  if (v3)
  {
    return;
  }

  if (v11 >> 62)
  {
    v17 = v11;
    v18 = _CocoaArrayWrapper.endIndex.getter();
    v11 = v17;
    if (v18)
    {
      goto LABEL_4;
    }

LABEL_11:

    (*(v8 + 104))(v10, enum case for DIPError.Code.proofingSessionDoesntExist(_:), v7);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100037214();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    return;
  }

  if (!*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_11;
  }

LABEL_4:
  if ((v11 & 0xC000000000000001) != 0)
  {
    v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v12 = *(v11 + 32);
  }

  v13 = v12;

  v14 = [v13 documentType];
  if (v14)
  {
    v15 = v14;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v16 = IdentityDocumentType.init(documentTypeString:)();
    *a3 = v16;
  }

  else
  {
    (*(v8 + 104))(v10, enum case for DIPError.Code.idTypeUnavailable(_:), v7);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100037214();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
  }
}

void (*sub_1002E0404(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
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
    return sub_1002E0484;
  }

  __break(1u);
  return result;
}

void (*sub_1002E048C(void (*result)(id *), unint64_t a2, uint64_t a3))(id *)
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
    return sub_1002E52A8;
  }

  __break(1u);
  return result;
}

void sub_1002E0538(_BYTE *a1@<X8>)
{
  sub_1002D95A0(&v3);
  if (!v1)
  {
    *a1 = v3;
  }
}

uint64_t sub_1002E0570(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 320) = a3;
  *(v3 + 216) = a1;
  *(v3 + 224) = a2;
  v4 = type metadata accessor for DIPError.Code();
  *(v3 + 232) = v4;
  *(v3 + 240) = *(v4 - 8);
  *(v3 + 248) = swift_task_alloc();
  v5 = type metadata accessor for Logger();
  *(v3 + 256) = v5;
  *(v3 + 264) = *(v5 - 8);
  *(v3 + 272) = swift_task_alloc();

  return _swift_task_switch(sub_1002E0690, 0, 0);
}

uint64_t sub_1002E0690(uint64_t a1)
{
  v28 = v1;
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v1 + 320);
    v5 = swift_slowAlloc();
    v27[0] = swift_slowAlloc();
    *v5 = 136315394;
    v6 = IdentityTarget.debugDescription.getter();
    v8 = sub_100141FE4(v6, v7, v27);

    *(v5 + 4) = v8;
    *(v5 + 12) = 2080;
    if (v4)
    {
      v9 = 0xE300000000000000;
      v10 = 4999502;
    }

    else
    {
      v10 = IdentityDocumentType.description.getter();
      v9 = v14;
    }

    v16 = *(v1 + 264);
    v15 = *(v1 + 272);
    v17 = *(v1 + 256);
    v18 = sub_100141FE4(v10, v9, v27);

    *(v5 + 14) = v18;
    _os_log_impl(&_mh_execute_header, v2, v3, "IdentityDatabaseProvider attempting to delete all proofing sessions for %s of type %s", v5, 0x16u);
    swift_arrayDestroy();

    (*(v16 + 8))(v15, v17);
  }

  else
  {
    v12 = *(v1 + 264);
    v11 = *(v1 + 272);
    v13 = *(v1 + 256);

    (*(v12 + 8))(v11, v13);
  }

  if (qword_100832B60 != -1)
  {
    swift_once();
  }

  v19 = *(qword_100881E78 + 16);
  os_unfair_lock_lock(v19 + 54);
  sub_1000318FC(&v19[4], v1 + 16);
  os_unfair_lock_unlock(v19 + 54);
  v20 = *(v1 + 320);
  v22 = *(v1 + 216);
  v21 = *(v1 + 224);
  *(v1 + 280) = *(v1 + 72);

  sub_100031918(v1 + 16);
  v23 = swift_allocObject();
  *(v1 + 288) = v23;
  *(v23 + 16) = v22;
  *(v23 + 24) = v21;
  *(v23 + 32) = v20 & 1;
  v24 = swift_allocObject();
  *(v1 + 296) = v24;
  *(v24 + 16) = sub_1002E0D10;
  *(v24 + 24) = v23;

  v25 = swift_task_alloc();
  *(v1 + 304) = v25;
  *v25 = v1;
  v25[1] = sub_1002E09E0;

  return AsyncCoreDataContainer.performWrite<A>(_:)(v25, sub_1000280B4, v24, &type metadata for () + 8);
}

uint64_t sub_1002E09E0()
{
  *(*v1 + 312) = v0;

  if (v0)
  {
    v2 = sub_1002E0B80;
  }

  else
  {

    v2 = sub_1002E0B10;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1002E0B10()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002E0B80()
{
  v2 = v0[30];
  v1 = v0[31];
  v3 = v0[29];

  (*(v2 + 104))(v1, enum case for DIPError.Code.internalError(_:), v3);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100037214();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v4 = v0[1];

  return v4();
}

uint64_t sub_1002E0D30()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1002E0D9C()
{

  return _swift_deallocObject(v0, 32, 7);
}

double sub_1002E0DD4@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X5>, _OWORD *a7@<X8>)
{
  v53 = a6;
  v44 = a7;
  *&v50 = type metadata accessor for Logger();
  v12 = *(v50 - 8);
  __chkstk_darwin(v50);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  defaultLogger()();

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.debug.getter();

  v49 = v16;
  v17 = os_log_type_enabled(v15, v16);
  v47 = a4;
  v48 = a2;
  v45 = a1;
  v46 = a3;
  if (v17)
  {
    v18 = a4;
    v19 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v52[0] = v43;
    *v19 = 136315906;
    *(v19 + 4) = sub_100141FE4(a1, a2, v52);
    *(v19 + 12) = 2080;
    v20 = IdentityTarget.debugDescription.getter();
    v22 = sub_100141FE4(v20, v21, v52);

    *(v19 + 14) = v22;
    *(v19 + 22) = 2080;
    if (a5)
    {
      v23 = v18;
    }

    else
    {
      v23 = 7104878;
    }

    if (a5)
    {
      v24 = a5;
    }

    else
    {
      v24 = 0xE300000000000000;
    }

    v25 = sub_100141FE4(v23, v24, v52);

    *(v19 + 24) = v25;
    *(v19 + 32) = 2080;
    v26 = IdentityDocumentType.description.getter();
    v28 = sub_100141FE4(v26, v27, v52);

    *(v19 + 34) = v28;
    _os_log_impl(&_mh_execute_header, v15, v49, "hasUserAttemptedToProof called with parameters sessionLookupIdentifier: %s, target: %s, pairingID: %s, documentType:%s", v19, 0x2Au);
    swift_arrayDestroy();
  }

  (*(v12 + 8))(v14, v50);
  v29 = a5;
  type metadata accessor for IdentityProofingDataContext();
  swift_allocObject();
  v30 = v51;
  sub_10057E28C();
  if (!v30)
  {
    v33 = v31;
    v34 = swift_allocObject();
    *(v34 + 16) = 0u;
    *(v34 + 32) = 0u;
    *(v34 + 48) = 0;
    v35 = swift_allocObject();
    v36 = v53;
    v35[2] = v33;
    v35[3] = v36;
    v37 = v46;
    v35[4] = v45;
    v35[5] = v48;
    v35[6] = v37;
    v35[7] = v47;
    v35[8] = v29;
    v35[9] = v34;

    sub_10057C18C(sub_1002E42F4, v35);

    swift_beginAccess();
    v38 = *(v34 + 48);

    v39 = *(v34 + 32);
    v50 = *(v34 + 16);
    v51 = v39;

    v40 = v44;
    result = *&v50;
    v41 = v51;
    *v44 = v50;
    v40[1] = v41;
    *(v40 + 4) = v38;
  }

  return result;
}

uint64_t sub_1002E11E0(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v55 = a6;
  v54 = a5;
  v53 = a4;
  v52 = a3;
  v51 = a1;
  v9 = type metadata accessor for DIPError.Code();
  __chkstk_darwin(v9);
  v57 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = type metadata accessor for DIPError();
  v59 = *(v60 - 8);
  __chkstk_darwin(v60);
  v58 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100007224(&qword_10083B020, &unk_1006D8ED0);
  __chkstk_darwin(v12 - 8);
  v13 = type metadata accessor for Logger();
  v64 = *(v13 - 8);
  v65 = v13;
  v14 = __chkstk_darwin(v13);
  v56 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v49 = &v49 - v17;
  v18 = __chkstk_darwin(v16);
  v61 = &v49 - v19;
  __chkstk_darwin(v18);
  v50 = &v49 - v20;
  v21 = swift_allocObject();
  *(v21 + 16) = 3;
  v66 = (v21 + 16);
  v22 = swift_allocObject();
  *(v22 + 16) = 0;
  type metadata accessor for IdentityProofingDataContext();
  swift_allocObject();
  sub_10057E28C();
  v63 = v21;
  v62 = v22;
  v24 = v23;
  v25 = swift_allocObject();
  v26 = a2;
  v27 = a7;
  v28 = v25;
  *(v25 + 16) = v51;
  *(v25 + 24) = v26;
  *(v25 + 32) = v52;
  *(v25 + 40) = v53 & 1;
  v29 = v54;
  *(v25 + 48) = v24;
  *(v25 + 56) = v29;
  *(v25 + 64) = v55;
  *(v25 + 72) = v27;
  *(v25 + 80) = v22;
  *(v25 + 88) = v21;

  sub_10057C18C(sub_1002E51D0, v28);

  v30 = v64;
  v31 = v65;
  v32 = v61;
  v33 = v66;
  swift_beginAccess();
  if (*(v22 + 16) == 1 && (swift_beginAccess(), v34 = IdentityProofingActionStatus.rawValue.getter(), v34 == IdentityProofingActionStatus.rawValue.getter()))
  {
    v35 = v50;
    defaultLogger()();
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&_mh_execute_header, v36, v37, "The action status is statusPending as the user is looking for an update too early", v38, 2u);
    }

    (*(v30 + 8))(v35, v31);
    v39 = 1;
  }

  else
  {
    defaultLogger()();

    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = v30;
      v44 = swift_slowAlloc();
      v67[0] = v44;
      *v42 = 136315138;
      swift_beginAccess();
      v45 = IdentityProofingActionStatus.debugDescription.getter();
      v47 = sub_100141FE4(v45, v46, v67);
      v33 = v66;

      *(v42 + 4) = v47;
      _os_log_impl(&_mh_execute_header, v40, v41, "The action status is %s", v42, 0xCu);
      sub_10000BB78(v44);

      (*(v43 + 8))(v32, v31);
    }

    else
    {

      (*(v30 + 8))(v32, v31);
    }

    swift_beginAccess();
    v39 = *v33;
  }

  return v39;
}

uint64_t sub_1002E1B4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for DIPError.Code();
  __chkstk_darwin(v5);
  v6 = type metadata accessor for DIPError();
  __chkstk_darwin(v6);
  v15 = type metadata accessor for Logger();
  v7 = __chkstk_darwin(v15);
  __chkstk_darwin(v7);
  type metadata accessor for IdentityProofingDataContext();
  swift_allocObject();
  sub_10057E28C();
  v9 = v8;
  v10 = swift_allocObject();
  v11 = a3;
  v12 = v10;
  v10[2] = a1;
  v10[3] = a2;
  v10[4] = v9;
  v10[5] = v11;

  sub_10057C18C(sub_1002E435C, v12);
}

uint64_t sub_1002E1FD4()
{
  if (qword_100832B60 != -1)
  {
    swift_once();
  }

  v1 = *(qword_100881E78 + 16);
  os_unfair_lock_lock(v1 + 54);
  sub_100031B5C(&v1[4], (v0 + 2));
  os_unfair_lock_unlock(v1 + 54);
  v0[27] = v0[9];

  sub_100031918((v0 + 2));
  v2 = swift_task_alloc();
  v0[28] = v2;
  *v2 = v0;
  v2[1] = sub_1002E2124;

  return AsyncCoreDataContainer.performRead<A>(_:)(v0 + 30, sub_1002E0538, 0, &type metadata for Bool);
}

uint64_t sub_1002E2124()
{
  v2 = *v1;
  *(v2 + 232) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1002E2264, 0, 0);
  }

  else
  {

    v3 = *(v2 + 240);
    v4 = *(v2 + 8);

    return v4(v3);
  }
}

uint64_t sub_1002E2264()
{

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_1002E22CC(uint64_t a1, char *a2)
{
  v84 = a1;
  v97 = type metadata accessor for DIPError();
  v91 = *(v97 - 8);
  __chkstk_darwin(v97);
  v90 = &v83 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100007224(&qword_10083B020, &unk_1006D8ED0);
  __chkstk_darwin(v4 - 8);
  v92 = &v83 - v5;
  v93 = type metadata accessor for DIPError.Code();
  v6 = *(v93 - 8);
  __chkstk_darwin(v93);
  v8 = &v83 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Logger();
  v99 = *(v9 - 8);
  v100 = v9;
  v10 = __chkstk_darwin(v9);
  v89 = &v83 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v85 = &v83 - v13;
  v14 = __chkstk_darwin(v12);
  v95 = &v83 - v15;
  v16 = __chkstk_darwin(v14);
  v87 = &v83 - v17;
  v18 = __chkstk_darwin(v16);
  v20 = &v83 - v19;
  __chkstk_darwin(v18);
  v22 = &v83 - v21;
  v23 = type metadata accessor for IdentityDocumentType.Category();
  v24 = *(v23 - 8);
  __chkstk_darwin(v23);
  v26 = &v83 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = swift_allocObject();
  v98 = v27;
  *(v27 + 16) = 3;
  v28 = (v27 + 16);
  v29 = swift_allocObject();
  v96 = v29;
  *(v29 + 16) = 0;
  v94 = (v29 + 16);
  IdentityProofingConfiguration.documentType.getter();
  IdentityDocumentType.category.getter();
  v30 = (*(v24 + 88))(v26, v23);
  if (v30 == enum case for IdentityDocumentType.Category.mDL(_:))
  {
    v31 = IdentityProofingConfiguration.state.getter();
    if (v32)
    {
      v33 = v32;
      v83 = v31;
      v86 = a2;
      v88 = v6;
      defaultLogger()();

      v34 = Logger.logObject.getter();
      v35 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        v102[0] = v37;
        *v36 = 136315138;
        *(v36 + 4) = sub_100141FE4(v83, v33, v102);
        _os_log_impl(&_mh_execute_header, v34, v35, "The document type is mDL setting sessionLookupIdentifier as state: %s", v36, 0xCu);
        sub_10000BB78(v37);
      }

      v38 = *(v99 + 8);
      v38(v22, v100);
LABEL_11:
      type metadata accessor for IdentityProofingDataContext();
      swift_allocObject();
      sub_10057E28C();
      v50 = v49;
      v51 = swift_allocObject();
      v52 = v86;
      v51[2] = v50;
      v51[3] = v52;
      v51[4] = v83;
      v51[5] = v33;
      v53 = v96;
      v51[6] = v84;
      v51[7] = v53;
      v51[8] = v98;

      v54 = v52;

      sub_10057C18C(sub_1002E4A34, v51);

      goto LABEL_24;
    }

    v48 = v93;
    (*(v6 + 104))(v8, enum case for DIPError.Code.idStateUnavailable(_:), v93);
    sub_1000402AC(_swiftEmptyArrayStorage);
    sub_100037214();
    swift_allocError();
  }

  else
  {
    v86 = a2;
    if (v30 != enum case for IdentityDocumentType.Category.passport(_:))
    {
      v86 = "it is watch proofing attempt";
      v45 = *(v6 + 104);
      v88 = v6;
      v46 = v93;
      v45(v8, enum case for DIPError.Code.idTypeUnavailable(_:), v93);
      sub_1000402AC(_swiftEmptyArrayStorage);
      sub_100037214();
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
      v47 = v23;
      v48 = v46;
      v6 = v88;
      (*(v24 + 8))(v26, v47);
      goto LABEL_16;
    }

    v39 = IdentityProofingConfiguration.country.getter();
    if (v40)
    {
      v33 = v40;
      v83 = v39;
      v88 = v6;
      defaultLogger()();

      v41 = Logger.logObject.getter();
      v42 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        v102[0] = v44;
        *v43 = 136315138;
        *(v43 + 4) = sub_100141FE4(v83, v33, v102);
        _os_log_impl(&_mh_execute_header, v41, v42, "The document type is passport setting sessionLookupIdentifier as country: %s", v43, 0xCu);
        sub_10000BB78(v44);
      }

      v38 = *(v99 + 8);
      v38(v20, v100);
      goto LABEL_11;
    }

    v48 = v93;
    (*(v6 + 104))(v8, enum case for DIPError.Code.idCountryUnavailable(_:), v93);
    sub_1000402AC(_swiftEmptyArrayStorage);
    sub_100037214();
    swift_allocError();
  }

  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();
LABEL_16:
  swift_getErrorValue();
  v55 = v92;
  Error.dipErrorCode.getter();
  if ((*(v6 + 48))(v55, 1, v48) == 1)
  {
    sub_10000BE18(v55, &qword_10083B020, &unk_1006D8ED0);
LABEL_21:
    (*(v6 + 104))(v8, enum case for DIPError.Code.internalError(_:), v48);
    swift_errorRetain();
    sub_1000402AC(_swiftEmptyArrayStorage);
    v62 = v90;
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    sub_100037214();
    v63 = v97;
    swift_allocError();
    v64 = v91;
    (*(v91 + 16))(v65, v62, v63);
    v66 = v89;
    defaultLogger()();
    DIPRecordError(_:message:log:)();

    v38 = *(v99 + 8);
    v38(v66, v100);
    (*(v64 + 8))(v62, v63);

    goto LABEL_24;
  }

  v56 = (*(v6 + 88))(v55, v48);
  v57 = enum case for DIPError.Code.proofingSessionDoesntExist(_:);
  (*(v6 + 8))(v55, v48);
  if (v56 != v57)
  {
    goto LABEL_21;
  }

  v58 = v85;
  defaultLogger()();
  v59 = Logger.logObject.getter();
  v60 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v59, v60))
  {
    v61 = swift_slowAlloc();
    *v61 = 0;
    _os_log_impl(&_mh_execute_header, v59, v60, "No proofing session exists", v61, 2u);
  }

  else
  {
  }

  v38 = *(v99 + 8);
  v38(v58, v100);
LABEL_24:
  v67 = v94;
  swift_beginAccess();
  v68 = v95;
  if (*v67 == 1 && (swift_beginAccess(), v69 = IdentityProofingActionStatus.rawValue.getter(), v69 == IdentityProofingActionStatus.rawValue.getter()))
  {
    v70 = v87;
    defaultLogger()();
    v71 = Logger.logObject.getter();
    v72 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v71, v72))
    {
      v73 = swift_slowAlloc();
      *v73 = 0;
      _os_log_impl(&_mh_execute_header, v71, v72, "The action status is statusPending as the user is looking for an update too early", v73, 2u);
    }

    v38(v70, v100);
    v74 = 1;
  }

  else
  {
    defaultLogger()();

    v75 = Logger.logObject.getter();
    v76 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v75, v76))
    {
      v77 = swift_slowAlloc();
      v78 = swift_slowAlloc();
      v101[0] = v78;
      *v77 = 136315138;
      swift_beginAccess();
      v79 = IdentityProofingActionStatus.debugDescription.getter();
      v81 = sub_100141FE4(v79, v80, v101);

      *(v77 + 4) = v81;
      _os_log_impl(&_mh_execute_header, v75, v76, "The action status is %s", v77, 0xCu);
      sub_10000BB78(v78);
    }

    v38(v68, v100);
    swift_beginAccess();
    v74 = *v28;
  }

  return v74;
}

uint64_t sub_1002E31A0(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = type metadata accessor for DIPError.Code();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for IdentityProofingDataContext();
  swift_allocObject();
  sub_10057E28C();
  if (v4)
  {
    (*(v10 + 104))(v12, enum case for DIPError.Code.internalError(_:), v9);
    swift_errorRetain();
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100037214();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
  }

  else
  {
    v14 = v13;
    v15 = swift_allocObject();
    v21 = a2;
    v16 = v15;
    v17 = 1;
    if ((a1 & 3) == 2)
    {
      v17 = 2;
    }

    *(v15 + 16) = v17;
    v18 = swift_allocObject();
    v18[2] = a4;
    v18[3] = v14;
    v18[4] = v21;
    v18[5] = a3;
    v18[6] = v16;

    sub_10057C18C(sub_1002E50D4, v18);
  }
}

char *sub_1002E344C(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for DIPError.Code();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = swift_allocObject();
  type metadata accessor for IdentityProofingDataContext();
  *(v9 + 16) = 0;
  *(v9 + 24) = 0;
  swift_allocObject();
  sub_10057E28C();
  if (!v2)
  {
    v11 = v10;
    v15 = v6;
    v12 = swift_allocObject();
    v12[2] = v11;
    v12[3] = a1;
    v12[4] = a2;
    v12[5] = v9;

    sub_10057C18C(sub_1002E4960, v12);

    swift_beginAccess();
    if (*(v9 + 24))
    {
      v8 = *(v9 + 16);

      return v8;
    }

    (*(v15 + 104))(v8, enum case for DIPError.Code.proofingSessionIDUnavailable(_:), v5);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100037214();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
  }

  return v8;
}

char *sub_1002E371C(void *a1)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v97 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v97 - v8;
  v10 = sub_1002DF674(a1);
  if (!v1)
  {
    v109 = v10;
    v114 = 0;
    v11 = [a1 proofingErrorMessage];
    if (v11)
    {
      v117 = v11;
      v12 = v11;
      v13 = v114;
      sub_1002DF830(&v117, &v115);
      v114 = v13;

      v110 = v115;
    }

    else
    {
      v110 = 0;
    }

    v14 = [a1 state];
    if (v14)
    {
      v15 = v14;
      v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v107 = v17;
      v108 = v16;
    }

    else
    {
      v107 = 0;
      v108 = 0;
    }

    v18 = [a1 country];
    if (v18)
    {
      v19 = v18;
      v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v105 = v21;
      v106 = v20;
    }

    else
    {
      v105 = 0;
      v106 = 0;
    }

    [a1 target];
    v104 = IdentityTarget.init(rawValue:)();
    v103 = v22;
    v23 = [a1 productIdentifier];
    if (v23)
    {
      v24 = v23;
      v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v101 = v26;
      v102 = v25;
    }

    else
    {
      v101 = 0;
      v102 = 0;
    }

    v111 = v7;
    v27 = [a1 extendedReviewURLString];
    if (v27)
    {
      v28 = v27;
      v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v98 = v30;
      v99 = v29;
    }

    else
    {
      v98 = 0;
      v99 = 0;
    }

    v112 = v4;
    v113 = v3;
    v31 = [a1 learnMoreURLString];
    if (v31)
    {
      v32 = v31;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    v33 = [a1 supplementalProvisioningData];
    if (v33)
    {
      v34 = v33;
      static Data._unconditionallyBridgeFromObjectiveC(_:)();
    }

    v35 = [a1 documentType];
    if (v35)
    {
      v36 = v35;
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      IdentityDocumentType.init(documentTypeString:)();
    }

    v37 = objc_allocWithZone(type metadata accessor for IdentityProofingConfiguration());
    v100 = v110;
    v38 = IdentityProofingConfiguration.init(state:country:targetDevice:actionStatus:credentialIdentifier:productIdentifier:axSettings:accountKeyIdentifier:extendedReviewURLString:learnMoreURLString:supplementalProvisioningData:documentType:isPairedWatchUnsupported:proofingErrorMessage:piiTokenIdentifier:)();
    defaultLogger()();
    v39 = a1;
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v115 = v43;
      *v42 = 136315138;
      v44 = [v39 proofingSessionID];
      if (v44)
      {
        v45 = v44;
        v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v48 = v47;
      }

      else
      {
        v48 = 0xE500000000000000;
        v46 = 0x3E6C696E3CLL;
      }

      v49 = sub_100141FE4(v46, v48, &v115);

      *(v42 + 4) = v49;
      _os_log_impl(&_mh_execute_header, v40, v41, "IdentityProofingDatabaseProvider mapping configuration for the proofing session with ID -> %s", v42, 0xCu);
      sub_10000BB78(v43);
    }

    v50 = v113;
    v51 = *(v112 + 8);
    v51(v9, v113);
    v52 = v111;
    defaultLogger()();
    v53 = v100;
    v9 = v38;
    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v54, v55))
    {
      LODWORD(v107) = v55;
      v56 = swift_slowAlloc();
      v108 = swift_slowAlloc();
      v117 = v108;
      *v56 = 136317442;
      v57 = IdentityProofingConfiguration.state.getter();
      if (!v58)
      {
        v57 = 0x3E6C696E3CLL;
      }

      v59 = 0xE500000000000000;
      if (v58)
      {
        v60 = v58;
      }

      else
      {
        v60 = 0xE500000000000000;
      }

      v61 = sub_100141FE4(v57, v60, &v117);

      *(v56 + 4) = v61;
      *(v56 + 12) = 2080;
      v62 = IdentityProofingConfiguration.country.getter();
      if (v63)
      {
        v64 = v63;
      }

      else
      {
        v62 = 0x3E6C696E3CLL;
        v64 = 0xE500000000000000;
      }

      v65 = sub_100141FE4(v62, v64, &v117);

      *(v56 + 14) = v65;
      *(v56 + 22) = 2080;
      v115 = IdentityProofingConfiguration.targetDevice.getter();
      v116 = v66 & 1;
      sub_100007224(&qword_10083EF70, &unk_1006DC4F0);
      v67 = Optional.debugDescription.getter();
      v69 = sub_100141FE4(v67, v68, &v117);

      *(v56 + 24) = v69;
      *(v56 + 32) = 2080;
      v70 = IdentityProofingActionStatus.debugDescription.getter();
      v72 = sub_100141FE4(v70, v71, &v117);

      *(v56 + 34) = v72;
      *(v56 + 42) = 2080;
      v115 = IdentityProofingConfiguration.actionStatus.getter();
      v116 = v73 & 1;
      sub_100007224(&qword_1008402E0, &unk_1006DD000);
      v74 = Optional.debugDescription.getter();
      v76 = sub_100141FE4(v74, v75, &v117);

      *(v56 + 44) = v76;
      *(v56 + 52) = 2080;
      IdentityProofingConfiguration.documentType.getter();
      v77 = IdentityDocumentType.description.getter();
      v79 = sub_100141FE4(v77, v78, &v117);

      *(v56 + 54) = v79;
      *(v56 + 62) = 2080;
      v80 = IdentityProofingConfiguration.productIdentifier.getter();
      if (v81)
      {
        v82 = v81;
      }

      else
      {
        v80 = 0x3E6C696E3CLL;
        v82 = 0xE500000000000000;
      }

      v83 = sub_100141FE4(v80, v82, &v117);

      *(v56 + 64) = v83;
      *(v56 + 72) = 2080;
      v84 = IdentityProofingConfiguration.extendedReviewURLString.getter();
      if (v85)
      {
        v86 = v85;
      }

      else
      {
        v84 = 0x3E6C696E3CLL;
        v86 = 0xE500000000000000;
      }

      v87 = sub_100141FE4(v84, v86, &v117);

      *(v56 + 74) = v87;
      *(v56 + 82) = 2080;
      v88 = IdentityProofingConfiguration.learnMoreURLString.getter();
      if (v89)
      {
        v90 = v89;
      }

      else
      {
        v88 = 0x3E6C696E3CLL;
        v90 = 0xE500000000000000;
      }

      v91 = sub_100141FE4(v88, v90, &v117);

      *(v56 + 84) = v91;
      *(v56 + 92) = 2080;
      if (v110)
      {
        v92 = IdentityProofingPrecursorPassMessage.description.getter();
        v59 = v93;
        v94 = v112;
      }

      else
      {
        v94 = v112;
        v92 = 0x3E6C696E3CLL;
      }

      v95 = sub_100141FE4(v92, v59, &v117);

      *(v56 + 94) = v95;
      _os_log_impl(&_mh_execute_header, v54, v107, "\n--- start logging proofing configuration ---\n  state: %s\n  country: %s\n  target: %s\n  status: %s\n  action status: %s\n  documentType: %s\n  product identifier: %s\n  extended review URL: %s\n  learn more URL: %s\n  proofing error message: %s\n--- end logging proofing status ---", v56, 0x66u);
      swift_arrayDestroy();

      (*(v94 + 8))(v111, v113);
    }

    else
    {

      v51(v52, v50);
    }
  }

  return v9;
}

uint64_t sub_1002E3FCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for Logger();
  __chkstk_darwin(v6);
  v7 = swift_allocObject();
  type metadata accessor for IdentityProofingDataContext();
  *(v7 + 16) = 0;
  *(v7 + 24) = 0;
  swift_allocObject();
  sub_10057E28C();
  v9 = v8;
  v10 = swift_allocObject();
  v10[2] = v9;
  v10[3] = a1;
  v10[4] = a2;
  v10[5] = v7;

  sub_10057C18C(a4, v10);

  swift_beginAccess();
  v11 = *(v7 + 16);

  return v11;
}

uint64_t sub_1002E420C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1002E4264()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1002E42A4()
{

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_1002E431C()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1002E437C()
{

  return _swift_deallocObject(v0, 33, 7);
}

uint64_t sub_1002E43C4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1002E43DC(uint64_t a1, uint64_t a2)
{
  v2[28] = a1;
  v2[29] = a2;
  v3 = type metadata accessor for DIPError.Code();
  v2[30] = v3;
  v2[31] = *(v3 - 8);
  v2[32] = swift_task_alloc();

  return _swift_task_switch(sub_1002E449C, 0, 0);
}

uint64_t sub_1002E449C()
{
  if (qword_100832B60 != -1)
  {
    swift_once();
  }

  v1 = *(qword_100881E78 + 16);
  os_unfair_lock_lock(v1 + 54);
  sub_100031B5C(&v1[4], (v0 + 2));
  os_unfair_lock_unlock(v1 + 54);
  v2 = v0[28];
  v3 = v0[29];
  v0[33] = v0[9];

  sub_100031918((v0 + 2));
  v4 = swift_allocObject();
  v0[34] = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v3;
  v5 = swift_allocObject();
  v0[35] = v5;
  *(v5 + 16) = sub_1002E4944;
  *(v5 + 24) = v4;

  v6 = swift_task_alloc();
  v0[36] = v6;
  *v6 = v0;
  v6[1] = sub_1002E4660;

  return AsyncCoreDataContainer.performRead<A>(_:)(v0 + 27, sub_100267820, v5, &type metadata for IdentityDocumentType);
}

uint64_t sub_1002E4660()
{
  v2 = *v1;
  v2[37] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1002E47D0, 0, 0);
  }

  else
  {

    v3 = v2[27];

    v4 = v2[1];

    return v4(v3);
  }
}

uint64_t sub_1002E47D0()
{
  v1 = v0[32];
  v2 = v0[30];
  v3 = v0[31];

  (*(v3 + 104))(v1, enum case for DIPError.Code.internalError(_:), v2);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100037214();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v4 = v0[1];

  return v4();
}

unint64_t sub_1002E4980()
{
  result = qword_10083EF78;
  if (!qword_10083EF78)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10083EF78);
  }

  return result;
}

uint64_t sub_1002E49DC()
{

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_1002E4A5C()
{
  v1 = *(sub_100007224(&unk_100849400, &unk_1006BFBB0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 136) & ~v2;
  v4 = *(v1 + 64) + 7;
  v5 = (v2 + ((v4 + v3) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v2;
  v13 = (((((((((((((((((((v4 + v5) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 19) & 0xFFFFFFFFFFFFFFF8) + 41) & 0xFFFFFFFFFFFFFFF8;

  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  if (!v8(v0 + v3, 1, v6))
  {
    (*(v7 + 8))(v0 + v3, v6);
  }

  if (!v8(v0 + v5, 1, v6))
  {
    (*(v7 + 8))(v0 + v5, v6);
  }

  v9 = (((v13 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;

  v10 = *(v0 + v13 + 8);
  if (v10 >> 60 != 15)
  {
    sub_10000B90C(*(v0 + v13), v10);
  }

  v11 = *(v0 + v9 + 8);
  if (v11 >> 60 != 15)
  {
    sub_10000B90C(*(v0 + v9), v11);
  }

  return _swift_deallocObject(v0, v9 + 16, v2 | 7);
}

uint64_t sub_1002E4D54(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007224(&unk_100849400, &unk_1006BFBB0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1002E4DC4()
{
  v1 = *(sub_100007224(&unk_100849400, &unk_1006BFBB0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 136) & ~v2;
  v4 = *(v1 + 64) + 7;
  v5 = (v4 + v3) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v2 + v5 + 16) & ~v2;
  v7 = (v4 + v6) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 23) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 39) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 23) & 0xFFFFFFFFFFFFFFF8;
  v30 = *(v0 + v7);
  v12 = *(v0 + v11);
  v13 = (v11 + 15) & 0xFFFFFFFFFFFFFFF8;
  v14 = (v13 + 15) & 0xFFFFFFFFFFFFFFF8;
  v15 = (v14 + 39) & 0xFFFFFFFFFFFFFFF8;
  v16 = (v15 + 19) & 0xFFFFFFFFFFFFFFF8;
  v17 = (v16 + 17) & 0xFFFFFFFFFFFFFFF8;
  v18 = (v16 + 41) & 0xFFFFFFFFFFFFFFF8;
  v19 = (v18 + 23) & 0xFFFFFFFFFFFFFFF8;
  v20 = (v19 + 23) & 0xFFFFFFFFFFFFFFF8;
  v21 = v0 + ((v9 + 23) & 0xFFFFFFFFFFFFFFF8);
  v22 = v0 + v10;
  v23 = v0 + ((v14 + 15) & 0xFFFFFFFFFFFFFFF8);
  v24 = v0 + v15;
  v25 = v0 + v16;
  v26 = v0 + v17;
  v27 = v0 + v18;
  v28 = v0 + v19;
  v29 = v0 + v20;
  sub_100580840(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128), v0 + v3, *(v0 + v5), *(v0 + v5 + 8), v0 + v6, v30, *(v0 + v8), *(v0 + v8 + 8), *(v0 + v9), *(v0 + v9 + 8), *v21, *(v21 + 8), *v22, *(v22 + 8), v12, *(v0 + v13), *(v0 + v14), *v23, *(v23 + 8), *(v23 + 16), *v24, *(v24 + 8), *(v24 + 9), *(v24 + 10), *(v24 + 11), *v25, *(v25 + 8), *(v25 + 9), *v26, *(v26 + 8), *(v26 + 16), *v27, *(v27 + 8), *v28, *(v28 + 8), *v29, *(v29 + 8));
}

uint64_t sub_1002E5084()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1002E50F8()
{

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_1002E5178()
{

  return _swift_deallocObject(v0, 96, 7);
}

uint64_t sub_1002E5210()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1002E52B4(uint64_t a1, uint64_t a2)
{
  v3[17] = a2;
  v3[18] = v2;
  v3[16] = a1;
  v4 = type metadata accessor for Logger();
  v3[19] = v4;
  v3[20] = *(v4 - 8);
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();
  v3[25] = swift_task_alloc();
  v3[26] = swift_task_alloc();
  v3[27] = swift_task_alloc();
  v3[28] = swift_task_alloc();
  v3[29] = swift_task_alloc();
  v3[30] = swift_task_alloc();
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();
  v3[33] = swift_task_alloc();
  v3[34] = swift_task_alloc();
  v3[35] = swift_task_alloc();
  v3[36] = swift_task_alloc();
  v3[37] = swift_task_alloc();
  v3[38] = swift_task_alloc();

  return _swift_task_switch(sub_1002E5444, 0, 0);
}

uint64_t sub_1002E5444(uint64_t a1)
{
  v85 = v1;
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Starting handleProvisioningCompletion", v4, 2u);
  }

  v5 = v1[38];
  v6 = v1[19];
  v7 = v1[20];

  v8 = *(v7 + 8);
  v1[39] = v8;
  v8(v5, v6);
  defaultLogger()();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "Unarchiving Provisioning Receipt Data", v11, 2u);
  }

  v12 = v1[37];
  v13 = v1[19];

  v8(v12, v13);
  sub_10001F8D4(0, &qword_100833A30, NSKeyedUnarchiver_ptr);
  sub_10001F8D4(0, &qword_1008403D8, PKPendingProvisioningReceipt_ptr);
  v14 = static NSKeyedUnarchiver.unarchivedObject<A>(ofClass:from:)();
  v1[40] = v14;
  v1[41] = 0;
  v15 = v14;
  if (!v14)
  {
    defaultLogger()();
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.debug.getter();
    v44 = os_log_type_enabled(v42, v43);
    v45 = v1[22];
    v46 = v1[19];
    if (v44)
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&_mh_execute_header, v42, v43, "the unarchived data object is not of type PKPendingProvisioningReceipt", v47, 2u);
    }

    goto LABEL_24;
  }

  defaultLogger()();
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&_mh_execute_header, v16, v17, "Did receive the provisioning receipt. Checking for the receipt type to perform necessary actions", v18, 2u);
  }

  v19 = v1[36];
  v20 = v1[19];

  v8(v19, v20);
  v21 = [v15 pendingProvisioning];
  v1[42] = v21;
  objc_opt_self();
  v22 = swift_dynamicCastObjCClass();
  if (!v22)
  {

    defaultLogger()();
    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.debug.getter();
    v50 = os_log_type_enabled(v48, v49);
    v45 = v1[23];
    v46 = v1[19];
    if (v50)
    {
      v51 = swift_slowAlloc();
      *v51 = 0;
      _os_log_impl(&_mh_execute_header, v48, v49, "Receipt's pendingProvisioning is not of type PKPendingIdentityCredential. Cannot perform Post Provisioning Cleanup", v51, 2u);
    }

    else
    {
    }

LABEL_24:
    v59 = v45;
    v60 = v46;
LABEL_36:
    v8(v59, v60);

    v71 = v1[1];

    return v71();
  }

  v23 = [v22 credentialIdentifier];
  if (!v23)
  {
    defaultLogger()();
    v52 = Logger.logObject.getter();
    v53 = static os_log_type_t.debug.getter();
    v54 = os_log_type_enabled(v52, v53);
    v55 = v1[24];
    v56 = v1[19];
    if (v54)
    {
      v57 = swift_slowAlloc();
      *v57 = 0;
      v58 = "Credential Identifier doesn't exist in the pending provisioning Cannot perform Post Provisioning Cleanup";
LABEL_33:
      _os_log_impl(&_mh_execute_header, v52, v53, v58, v57, 2u);

LABEL_35:
      v59 = v55;
      v60 = v56;
      goto LABEL_36;
    }

LABEL_34:

    goto LABEL_35;
  }

  v24 = v23;
  v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v27 = v26;

  v1[43] = v25;
  v1[44] = v27;
  v28 = [v15 type];
  if (v28 == 2)
  {
LABEL_13:
    defaultLogger()();
    v29 = v15;
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v30, v31))
    {
      v82 = v31;
      v83 = v25;
      v32 = swift_slowAlloc();
      v80 = swift_slowAlloc();
      v84 = v80;
      buf = v32;
      *v32 = 136315138;
      v33 = [v29 error];
      if (v33)
      {
        v34 = v33;
        swift_getErrorValue();
        v35 = v1[11];
        v36 = v1[12];
        v37 = *(v36 - 8);
        v38 = swift_task_alloc();
        (*(v37 + 16))(v38, v35, v36);

        v39 = Error.localizedDescription.getter();
        v41 = v40;
        (*(v37 + 8))(v38, v36);
      }

      else
      {
        v41 = 0xE500000000000000;
        v39 = 0x3E6C696E3CLL;
      }

      v72 = v1[35];
      v73 = v1[19];
      v74 = sub_100141FE4(v39, v41, &v84);

      *(buf + 4) = v74;
      _os_log_impl(&_mh_execute_header, v30, v82, "Provisioning has failed with error: %s", buf, 0xCu);
      sub_10000BB78(v80);

      v8(v72, v73);
      v25 = v83;
    }

    else
    {
      v68 = v1[35];
      v69 = v1[19];

      v8(v68, v69);
    }

    v75 = sub_1002E344C(v25, v27);
    v1[45] = v75;
    v1[46] = v76;
    v77 = v75;
    v78 = v76;
    v79 = swift_task_alloc();
    v1[47] = v79;
    *v79 = v1;
    v79[1] = sub_1002E5FDC;

    return sub_1002E43DC(v77, v78);
  }

  if (v28 != 1)
  {
    if (!v28)
    {
      goto LABEL_13;
    }

    defaultLogger()();
    v52 = Logger.logObject.getter();
    v53 = static os_log_type_t.debug.getter();
    v70 = os_log_type_enabled(v52, v53);
    v55 = v1[25];
    v56 = v1[19];
    if (v70)
    {
      v57 = swift_slowAlloc();
      *v57 = 0;
      v58 = "Unhandled type of receipt data";
      goto LABEL_33;
    }

    goto LABEL_34;
  }

  defaultLogger()();
  v61 = Logger.logObject.getter();
  v62 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v61, v62))
  {
    v63 = swift_slowAlloc();
    *v63 = 0;
    _os_log_impl(&_mh_execute_header, v61, v62, "Provisioning success", v63, 2u);
  }

  v64 = v1[28];
  v65 = v1[19];

  v8(v64, v65);
  v66 = swift_task_alloc();
  v1[54] = v66;
  *v66 = v1;
  v66[1] = sub_1002E7478;

  return sub_1002E8E30(v25, v27);
}

uint64_t sub_1002E5FDC(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 384) = a1;
  *(v3 + 392) = v1;

  if (v1)
  {
    v4 = sub_1002E6AD4;
  }

  else
  {
    v4 = sub_1002E60F0;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1002E60F0()
{
  v76 = v0;
  v1 = *(v0 + 392);
  v2 = swift_allocObject();
  *(v2 + 16) = 2;
  type metadata accessor for IdentityProofingDataContext();
  swift_allocObject();
  sub_10057E28C();
  if (v1)
  {
    v4 = *(v0 + 320);

    defaultLogger()();
    swift_errorRetain();
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.debug.getter();

    v11 = os_log_type_enabled(v9, v10);
    v12 = *(v0 + 312);
    v13 = *(v0 + 168);
    v14 = *(v0 + 152);
    if (v11)
    {
      v74 = *(v0 + 168);
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v75 = v16;
      *v15 = 136315138;
      swift_getErrorValue();
      v17 = Error.localizedDescription.getter();
      v19 = sub_100141FE4(v17, v18, &v75);

      *(v15 + 4) = v19;
      _os_log_impl(&_mh_execute_header, v9, v10, "Unable to retrieve the receipt data %s", v15, 0xCu);
      sub_10000BB78(v16);

      v12(v74, v14);
    }

    else
    {

      v12(v13, v14);
    }

    v20 = *(v0 + 8);

    return v20();
  }

  v5 = v3;
  v7 = *(v0 + 344);
  v6 = *(v0 + 352);
  v8 = swift_allocObject();
  v8[2] = v5;
  v8[3] = v7;
  v8[4] = v6;
  v8[5] = v2;

  sub_10057C18C(sub_1002EA378, v8);

  swift_beginAccess();
  v22 = *(v2 + 16);

  if (v22 == 2)
  {

    defaultLogger()();
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v23, v24, "Not a watch provisioning failure. Phone provisioning has failed. Will update status and show a notification", v25, 2u);
    }

    v27 = *(v0 + 360);
    v26 = *(v0 + 368);
    v28 = *(v0 + 312);
    v29 = *(v0 + 240);
    v30 = *(v0 + 152);

    v28(v29, v30);

    sub_1002E1B4C(v27, v26, 2);

    defaultLogger()();
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&_mh_execute_header, v31, v32, "Updated the proofing status to readyToAddID as provisioning as failed", v33, 2u);
    }

    v34 = *(v0 + 312);
    v35 = *(v0 + 232);
    v36 = *(v0 + 152);

    v34(v35, v36);
    v37 = swift_task_alloc();
    *(v0 + 424) = v37;
    *v37 = v0;
    v38 = sub_1002E7218;
LABEL_16:
    v37[1] = v38;
    v39 = *(v0 + 384);
    v41 = *(v0 + 360);
    v40 = *(v0 + 368);

    return sub_1002E9DDC(v41, v40, v39);
  }

  defaultLogger()();
  v42 = Logger.logObject.getter();
  v43 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    *v44 = 0;
    _os_log_impl(&_mh_execute_header, v42, v43, "This is a watch provisioning failure scenario. Checking for combo or watch only attempt...", v44, 2u);
  }

  v45 = *(v0 + 312);
  v46 = *(v0 + 272);
  v47 = *(v0 + 152);

  v45(v46, v47);
  if (v22)
  {

    defaultLogger()();
    v57 = Logger.logObject.getter();
    v58 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      *v59 = 0;
      _os_log_impl(&_mh_execute_header, v57, v58, "Watch provisioning has failed in watch only provisioning scenario, setting the proofing status to terminal state", v59, 2u);
    }

    v61 = *(v0 + 360);
    v60 = *(v0 + 368);
    v62 = *(v0 + 312);
    v63 = *(v0 + 256);
    v64 = *(v0 + 152);

    v62(v63, v64);

    sub_1002E1B4C(v61, v60, 7);

    v65 = IdentityDocumentType.rawValue.getter();
    if (v65 != IdentityDocumentType.rawValue.getter())
    {
      defaultLogger()();
      v68 = Logger.logObject.getter();
      v69 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v68, v69))
      {
        v70 = swift_slowAlloc();
        *v70 = 0;
        _os_log_impl(&_mh_execute_header, v68, v69, "Will attempt to show the provisioning failure notification on the watch", v70, 2u);
      }

      v71 = *(v0 + 312);
      v72 = *(v0 + 248);
      v73 = *(v0 + 152);

      v71(v72, v73);
      v37 = swift_task_alloc();
      *(v0 + 416) = v37;
      *v37 = v0;
      v38 = sub_1002E7100;
      goto LABEL_16;
    }

    v66 = swift_task_alloc();
    *(v0 + 408) = v66;
    *v66 = v0;
    v66[1] = sub_1002E6EA4;
    v67 = *(v0 + 360);

    return sub_1002A2920(v67, v60, 2, 128);
  }

  else
  {

    defaultLogger()();
    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      *v50 = 0;
      _os_log_impl(&_mh_execute_header, v48, v49, "Watch provisioning has failed in combo provisioning scenario, deleting the watch proofing session", v50, 2u);
    }

    v51 = *(v0 + 312);
    v52 = *(v0 + 264);
    v53 = *(v0 + 152);

    v51(v52, v53);
    v54 = swift_task_alloc();
    *(v0 + 400) = v54;
    *v54 = v0;
    v54[1] = sub_1002E6D8C;
    v56 = *(v0 + 344);
    v55 = *(v0 + 352);

    return sub_1002E7E08(v56, v55);
  }
}

uint64_t sub_1002E6AD4()
{
  v19 = v0;
  v1 = v0[42];
  v2 = v0[40];

  defaultLogger()();
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v16 = v0[21];
    v17 = v0[39];
    v5 = v0[19];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v18 = v7;
    *v6 = 136315138;
    swift_getErrorValue();
    v8 = Error.localizedDescription.getter();
    v10 = sub_100141FE4(v8, v9, &v18);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v3, v4, "Unable to retrieve the receipt data %s", v6, 0xCu);
    sub_10000BB78(v7);

    v17(v16, v5);
  }

  else
  {
    v11 = v0[39];
    v12 = v0[21];
    v13 = v0[19];

    v11(v12, v13);
  }

  v14 = v0[1];

  return v14();
}

uint64_t sub_1002E6D8C()
{

  return _swift_task_switch(sub_1002EA398, 0, 0);
}

uint64_t sub_1002E6EA4()
{

  return _swift_task_switch(sub_1002E6FBC, 0, 0);
}

uint64_t sub_1002E6FBC(uint64_t a1)
{
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Will attempt to show the provisioning failure notification on the watch", v4, 2u);
  }

  v5 = v1[39];
  v6 = v1[31];
  v7 = v1[19];

  v5(v6, v7);
  v8 = swift_task_alloc();
  v1[52] = v8;
  *v8 = v1;
  v8[1] = sub_1002E7100;
  v9 = v1[48];
  v11 = v1[45];
  v10 = v1[46];

  return sub_1002E9DDC(v11, v10, v9);
}

uint64_t sub_1002E7100()
{

  return _swift_task_switch(sub_1002EA398, 0, 0);
}

uint64_t sub_1002E7218()
{

  return _swift_task_switch(sub_1002E7330, 0, 0);
}

uint64_t sub_1002E7330()
{
  v1 = *(v0 + 320);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1002E7478()
{

  return _swift_task_switch(sub_1002E7574, 0, 0);
}

uint64_t sub_1002E7574(uint64_t a1)
{
  v48 = v1;
  defaultLogger()();

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = *(v1 + 344);
    v4 = *(v1 + 352);
    v45 = *(v1 + 312);
    v6 = *(v1 + 216);
    v7 = *(v1 + 152);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v47[0] = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_100141FE4(v5, v4, v47);
    _os_log_impl(&_mh_execute_header, v2, v3, "Will attempt to delete the proofing session for the credential identifier %s", v8, 0xCu);
    sub_10000BB78(v9);

    v45(v6, v7);
  }

  else
  {
    v10 = *(v1 + 312);
    v11 = *(v1 + 216);
    v12 = *(v1 + 152);

    v10(v11, v12);
  }

  v13 = *(v1 + 328);
  v14 = swift_allocObject();
  *(v14 + 16) = 2;
  type metadata accessor for IdentityProofingDataContext();
  swift_allocObject();
  sub_10057E28C();
  v16 = *(v1 + 352);
  if (v13)
  {
    v17 = *(v1 + 320);

    defaultLogger()();
    swift_errorRetain();
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.debug.getter();

    v23 = os_log_type_enabled(v21, v22);
    v24 = *(v1 + 312);
    v25 = *(v1 + 168);
    v26 = *(v1 + 152);
    if (v23)
    {
      v46 = *(v1 + 168);
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v47[0] = v28;
      *v27 = 136315138;
      swift_getErrorValue();
      v29 = Error.localizedDescription.getter();
      v31 = sub_100141FE4(v29, v30, v47);

      *(v27 + 4) = v31;
      _os_log_impl(&_mh_execute_header, v21, v22, "Unable to retrieve the receipt data %s", v27, 0xCu);
      sub_10000BB78(v28);

      v24(v46, v26);
    }

    else
    {

      v24(v25, v26);
    }

    v32 = *(v1 + 8);

    return v32();
  }

  else
  {
    v18 = v15;
    v19 = *(v1 + 344);
    v20 = swift_allocObject();
    v20[2] = v18;
    v20[3] = v19;
    v20[4] = v16;
    v20[5] = v14;

    sub_10057C18C(sub_1002E9DBC, v20);

    swift_beginAccess();
    v34 = *(v14 + 16);
    *(v1 + 448) = v34;

    defaultLogger()();
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&_mh_execute_header, v35, v36, "Attempting to notify provisioning complete to the server", v37, 2u);
    }

    if (v34 == 2)
    {
      v38 = 1;
    }

    else
    {
      v38 = 2;
    }

    v39 = *(v1 + 312);
    v40 = *(v1 + 208);
    v41 = *(v1 + 152);

    v39(v40, v41);
    v42 = swift_task_alloc();
    *(v1 + 440) = v42;
    *v42 = v1;
    v42[1] = sub_1002E7B94;
    v44 = *(v1 + 344);
    v43 = *(v1 + 352);

    return sub_10029AFAC(v44, v43, 0, v38);
  }
}

uint64_t sub_1002E7B94()
{

  return _swift_task_switch(sub_1002E7C90, 0, 0);
}

uint64_t sub_1002E7C90()
{
  v1 = *(v0 + 336);
  v2 = *(v0 + 320);
  if (*(v0 + 448) == 2)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  sub_1002A3AF8(*(v0 + 344), *(v0 + 352), 0, 0, v3, 0);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1002E7E08(uint64_t a1, uint64_t a2)
{
  v3[32] = a2;
  v3[33] = v2;
  v3[31] = a1;
  v4 = type metadata accessor for DIPError.Code();
  v3[34] = v4;
  v3[35] = *(v4 - 8);
  v3[36] = swift_task_alloc();
  v5 = type metadata accessor for Logger();
  v3[37] = v5;
  v3[38] = *(v5 - 8);
  v3[39] = swift_task_alloc();
  v3[40] = swift_task_alloc();
  v3[41] = swift_task_alloc();
  v3[42] = swift_task_alloc();
  v3[43] = swift_task_alloc();

  return _swift_task_switch(sub_1002E7F58, 0, 0);
}

uint64_t sub_1002E7F58()
{
  if (qword_100832B60 != -1)
  {
    swift_once();
  }

  v1 = *(qword_100881E78 + 16);
  os_unfair_lock_lock(v1 + 54);
  sub_1000318FC(&v1[4], (v0 + 2));
  os_unfair_lock_unlock(v1 + 54);
  v3 = v0[31];
  v2 = v0[32];
  v0[44] = v0[9];

  sub_100031918((v0 + 2));
  v4 = swift_allocObject();
  v0[45] = v4;
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  v5 = swift_allocObject();
  v0[46] = v5;
  *(v5 + 16) = sub_1002E9D0C;
  *(v5 + 24) = v4;

  v6 = swift_task_alloc();
  v0[47] = v6;
  v7 = sub_100007224(&qword_1008403D0, &qword_1006DD0E0);
  *v6 = v0;
  v6[1] = sub_1002E812C;

  return AsyncCoreDataContainer.performRead<A>(_:)(v0 + 27, sub_1002E9D60, v5, v7);
}

uint64_t sub_1002E812C()
{
  v2 = *v1;
  *(*v1 + 384) = v0;

  if (v0)
  {
    v3 = sub_1002E885C;
  }

  else
  {

    *(v2 + 392) = *(v2 + 216);
    *(v2 + 408) = *(v2 + 232);
    *(v2 + 241) = *(v2 + 240);
    v3 = sub_1002E8280;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1002E8280(uint64_t a1)
{
  v39 = v1;
  if (!*(v1 + 400))
  {
    defaultLogger()();

    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.debug.getter();

    v14 = os_log_type_enabled(v12, v13);
    v15 = *(v1 + 320);
    v16 = *(v1 + 296);
    v17 = *(v1 + 304);
    if (v14)
    {
      v19 = *(v1 + 248);
      v18 = *(v1 + 256);
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v38[0] = v21;
      *v20 = 136315138;
      *(v20 + 4) = sub_100141FE4(v19, v18, v38);
      _os_log_impl(&_mh_execute_header, v12, v13, "Unable to delete the proofing data for watch with credential identifier %s", v20, 0xCu);
      sub_10000BB78(v21);
    }

    (*(v17 + 8))(v15, v16);
    (*(*(v1 + 280) + 104))(*(v1 + 288), enum case for DIPError.Code.failedToDeleteProofingDataProofingSessionUnavailable(_:), *(v1 + 272));
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100037214();
    swift_allocError();
    goto LABEL_9;
  }

  if (*(v1 + 241))
  {

    defaultLogger()();

    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.debug.getter();

    v4 = os_log_type_enabled(v2, v3);
    v5 = *(v1 + 328);
    v6 = *(v1 + 296);
    v7 = *(v1 + 304);
    if (v4)
    {
      v9 = *(v1 + 248);
      v8 = *(v1 + 256);
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v38[0] = v11;
      *v10 = 136315138;
      *(v10 + 4) = sub_100141FE4(v9, v8, v38);
      _os_log_impl(&_mh_execute_header, v2, v3, "Unable to retrieve the target from the proofing session for %s", v10, 0xCu);
      sub_10000BB78(v11);
    }

    (*(v7 + 8))(v5, v6);
    (*(*(v1 + 280) + 104))(*(v1 + 288), enum case for DIPError.Code.failedToDeleteProofingDataTargetUnavailable(_:), *(v1 + 272));
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100037214();
    swift_allocError();
LABEL_9:
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v23 = *(v1 + 304);
    v22 = *(v1 + 312);
    v24 = *(v1 + 296);
    defaultLogger()();
    DIPRecordError(_:message:log:)();

    (*(v23 + 8))(v22, v24);
LABEL_10:

    v25 = *(v1 + 8);

    return v25();
  }

  v27 = IdentityTarget.rawValue.getter();
  if (v27 != IdentityTarget.rawValue.getter())
  {

    goto LABEL_10;
  }

  defaultLogger()();
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&_mh_execute_header, v28, v29, "This is watch provisioning, will attempt to delete the proofing session.", v30, 2u);
  }

  v31 = *(v1 + 344);
  v32 = *(v1 + 296);
  v33 = *(v1 + 304);

  v34 = *(v33 + 8);
  *(v1 + 416) = v34;
  v34(v31, v32);
  v35 = swift_task_alloc();
  *(v1 + 424) = v35;
  *v35 = v1;
  v35[1] = sub_1002E8964;
  v36 = *(v1 + 392);
  v37 = *(v1 + 400);

  return sub_10029E160(0, 0, v36, v37, 2, 0);
}

uint64_t sub_1002E885C()
{

  v2 = v0[38];
  v1 = v0[39];
  v3 = v0[37];
  defaultLogger()();
  DIPRecordError(_:message:log:)();

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1002E8964()
{

  return _swift_task_switch(sub_1002E8A7C, 0, 0);
}

uint64_t sub_1002E8A7C(uint64_t a1)
{
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v1[52];
  v6 = v1[42];
  v7 = v1[37];
  if (v4)
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Deletion of watch proofing session and the credential successful", v8, 2u);
  }

  v5(v6, v7);

  v9 = v1[1];

  return v9();
}

void sub_1002E8BC4(uint64_t a1@<X1>, unint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100579D9C(a1, a2);
  if (!v3)
  {
    v29[1] = 0;
    if (v11)
    {
      v12 = v11;
      [v11 target];
      v13 = IdentityTarget.init(rawValue:)();
      v15 = v14;
      v16 = v12;
      v17 = [v12 proofingSessionID];
      if (v17)
      {
        v18 = v17;
        v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v21 = v20;
      }

      else
      {

        v19 = 0;
        v21 = 0;
      }

      *a3 = v19;
      *(a3 + 8) = v21;
      *(a3 + 16) = v13;
      v28 = v15 & 1;
    }

    else
    {
      defaultLogger()();

      v22 = Logger.logObject.getter();
      v23 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v29[0] = v22;
        v26 = v25;
        v30 = v25;
        *v24 = 136315138;
        *(v24 + 4) = sub_100141FE4(a1, a2, &v30);
        v27 = v29[0];
        _os_log_impl(&_mh_execute_header, v29[0], v23, "Proofing Session doesn't exist for Credential ID %s", v24, 0xCu);
        sub_10000BB78(v26);
      }

      else
      {
      }

      (*(v8 + 8))(v10, v7);
      *a3 = 0;
      *(a3 + 8) = 0;
      *(a3 + 16) = 0;
      v28 = 1;
    }

    *(a3 + 24) = v28;
  }
}

uint64_t sub_1002E8E30(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  v4 = type metadata accessor for Logger();
  v3[8] = v4;
  v3[9] = *(v4 - 8);
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();

  return _swift_task_switch(sub_1002E8F0C, 0, 0);
}

uint64_t sub_1002E8F0C(uint64_t a1)
{
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Checking if provisioning on watch is necessary after initial provisioning completion.", v4, 2u);
  }

  v5 = v1[12];
  v6 = v1[8];
  v7 = v1[9];

  v8 = *(v7 + 8);
  v1[13] = v8;
  v8(v5, v6);
  type metadata accessor for IdentityProofingDataContext();
  swift_allocObject();
  sub_10057E28C();
  v1[14] = v9;
  v10 = v9;
  v12 = v1[5];
  v11 = v1[6];
  v13 = swift_allocObject();
  v1[15] = v13;
  *(v13 + 16) = 0;
  v14 = swift_allocObject();
  v14[2] = v10;
  v14[3] = v12;
  v14[4] = v11;
  v14[5] = v13;

  sub_10057C18C(sub_1002E9CB4, v14);

  swift_beginAccess();
  if (*(v13 + 16) == 1)
  {
    v1[16] = sub_1002F87D0();
    v15 = swift_task_alloc();
    v1[17] = v15;
    *v15 = v1;
    v15[1] = sub_1002E9254;
    v17 = v1[5];
    v16 = v1[6];

    return sub_1002F5264(v17, v16);
  }

  else
  {

    v19 = v1[1];

    return v19();
  }
}

uint64_t sub_1002E9254()
{

  return _swift_task_switch(sub_1002E9350, 0, 0);
}

uint64_t sub_1002E9350()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002E93E0()
{

  return _swift_task_switch(sub_1002E94DC, 0, 0);
}

uint64_t sub_1002E94DC(uint64_t a1)
{
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Attempting to notify provisioning complete to the server", v4, 2u);
  }

  v5 = v1[13];
  v6 = v1[11];
  v7 = v1[8];

  v5(v6, v7);
  v8 = swift_task_alloc();
  v1[21] = v8;
  *v8 = v1;
  v8[1] = sub_1002E9628;
  v10 = v1[5];
  v9 = v1[6];

  return sub_10029AFAC(v10, v9, 1, 2);
}

uint64_t sub_1002E9628()
{

  return _swift_task_switch(sub_1002E9724, 0, 0);
}

uint64_t sub_1002E9724()
{
  v1 = v0[13];
  v2 = v0[10];
  v3 = v0[8];
  sub_1002A3AF8(v0[5], v0[6], 0, 0, 2, 0);
  defaultLogger()();
  DIPRecordError(_:message:log:)();

  v1(v2, v3);

  v4 = v0[1];

  return v4();
}

void sub_1002E980C(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v44 = a4;
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = &v40 - v13;
  __chkstk_darwin(v12);
  v16 = &v40 - v15;
  v17 = sub_10057C738(a2, a3);
  if (!v4)
  {
    v18 = v11;
    v19 = v44;
    v41 = v8;
    v42 = 0;
    if (v17)
    {
      v20 = v17;
      [v17 target];
      IdentityTarget.init(rawValue:)();
      if (v21)
      {
        defaultLogger()();
        v22 = a3;

        v23 = Logger.logObject.getter();
        v24 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v23, v24))
        {
          v25 = swift_slowAlloc();
          v26 = v14;
          v27 = v7;
          v28 = swift_slowAlloc();
          v43[0] = v28;
          *v25 = 136315138;
          *(v25 + 4) = sub_100141FE4(a2, v22, v43);
          _os_log_impl(&_mh_execute_header, v23, v24, "Unable to retrieve the target from the proofing session for %s", v25, 0xCu);
          sub_10000BB78(v28);

          (*(v41 + 8))(v26, v27);
        }

        else
        {

          (*(v41 + 8))(v14, v7);
        }
      }

      else
      {
        v36 = IdentityTarget.rawValue.getter();
        if (v36 == IdentityTarget.rawValue.getter())
        {
          defaultLogger()();
          v37 = Logger.logObject.getter();
          v38 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v37, v38))
          {
            v39 = swift_slowAlloc();
            *v39 = 0;
            _os_log_impl(&_mh_execute_header, v37, v38, "Provisioning on watch is complete, do not attempt to reprovision", v39, 2u);
          }

          (*(v41 + 8))(v16, v7);
        }

        else
        {

          swift_beginAccess();
          *(v19 + 16) = 1;
        }
      }
    }

    else
    {
      v29 = v18;
      defaultLogger()();
      v30 = a3;

      v31 = Logger.logObject.getter();
      v32 = static os_log_type_t.debug.getter();

      v33 = v7;
      if (os_log_type_enabled(v31, v32))
      {
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        v43[0] = v35;
        *v34 = 136315138;
        *(v34 + 4) = sub_100141FE4(a2, v30, v43);
        _os_log_impl(&_mh_execute_header, v31, v32, "Proofing Session doesn't exist for Credential ID %s", v34, 0xCu);
        sub_10000BB78(v35);
      }

      (*(v41 + 8))(v29, v33);
    }
  }
}

uint64_t sub_1002E9C28()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1002E9CD4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1002E9D28()
{

  return _swift_deallocObject(v0, 32, 7);
}

double sub_1002E9D60@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  (*(v2 + 16))(&v8, *a1);
  if (!v3)
  {
    v6 = v9;
    v7 = v10;
    result = *&v8;
    *a2 = v8;
    *(a2 + 16) = v6;
    *(a2 + 24) = v7;
  }

  return result;
}

uint64_t sub_1002E9DDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = type metadata accessor for Logger();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v5 = type metadata accessor for IdentityDocumentType.Category();
  v3[8] = v5;
  v3[9] = *(v5 - 8);
  v3[10] = swift_task_alloc();

  return _swift_task_switch(sub_1002E9EFC, 0, 0);
}

uint64_t sub_1002E9EFC()
{
  v26 = v0;
  v1 = 0xD00000000000002CLL;
  v3 = v0[9];
  v2 = v0[10];
  v4 = v0[8];
  IdentityDocumentType.category.getter();
  v5 = (*(v3 + 88))(v2, v4);
  if (v5 == enum case for IdentityDocumentType.Category.mDL(_:))
  {
    v6 = "ication.message.expired";
    v7 = "y.notification.title.expired";
    v8 = 0xD00000000000002ELL;
LABEL_5:
    v0[11] = v7;
    v0[12] = v6;
    v0[13] = sub_1002D11F0();
    v9 = swift_task_alloc();
    v0[14] = v9;
    *v9 = v0;
    v9[1] = sub_1002EA1D0;
    v10 = v0[2];
    v11 = v0[3];

    return sub_1002CD7D4(v1, v6 | 0x8000000000000000, v8, v7 | 0x8000000000000000, v10, v11, 0);
  }

  if (v5 == enum case for IdentityDocumentType.Category.passport(_:))
  {
    v8 = 0xD000000000000037;
    v1 = 0xD000000000000035;
    v6 = "ta target unavailable";
    v7 = "ication.title.expired";
    goto LABEL_5;
  }

  defaultLogger()();
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.error.getter();
  v15 = os_log_type_enabled(v13, v14);
  v17 = v0[6];
  v16 = v0[7];
  v18 = v0[5];
  if (v15)
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v25 = v20;
    *v19 = 136315138;
    v21 = IdentityDocumentType.description.getter();
    v23 = sub_100141FE4(v21, v22, &v25);

    *(v19 + 4) = v23;
    _os_log_impl(&_mh_execute_header, v13, v14, "ProvisioningCompletionManager documentType %s not supported for notifying provisioning failure", v19, 0xCu);
    sub_10000BB78(v20);
  }

  (*(v17 + 8))(v16, v18);
  (*(v0[9] + 8))(v0[10], v0[8]);

  v24 = v0[1];

  return v24();
}

uint64_t sub_1002EA1D0()
{

  return _swift_task_switch(sub_1002EA304, 0, 0);
}

uint64_t sub_1002EA304()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_1002EA39C(unint64_t a1, void *a2)
{
  if (a1 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v6 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v6 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_13;
        }

        v7 = *(a1 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v10 = v7;
      sub_1002EE090(&v10, a2);

      if (!v2)
      {
        ++v6;
        if (v9 != i)
        {
          continue;
        }
      }

      return;
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }
}

uint64_t sub_1002EA490(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v25 = type metadata accessor for Logger();
  v10 = *(v25 - 8);
  __chkstk_darwin(v25);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v5 + 56) = 0u;
  *(v5 + 88) = 0;
  *(v5 + 72) = 0u;
  sub_10000BBC4(a1, &v26, &unk_100833B60, &qword_1006BF9E0);
  if (v27)
  {
    sub_10001F358(&v26, &v29);
  }

  else
  {
    v13 = [objc_allocWithZone(PKPaymentService) init];
    v30 = sub_10001F8D4(0, &unk_1008458A0, PKPaymentService_ptr);
    v31 = &off_10080C410;
    *&v29 = v13;
    if (v27)
    {
      sub_10000BE18(&v26, &unk_100833B60, &qword_1006BF9E0);
    }
  }

  sub_10001F358(&v29, v5 + 16);
  swift_beginAccess();
  sub_1002F2F08(a2, v5 + 56);
  swift_endAccess();
  *(v5 + 96) = a3;
  *(v5 + 104) = a4;
  defaultLogger()();
  sub_10000BBC4(a2, &v29, &qword_1008404E8, &qword_1006DD168);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v24 = a1;
    v16 = swift_slowAlloc();
    *v16 = 67109120;
    sub_10000BBC4(&v29, &v26, &qword_1008404E8, &qword_1006DD168);
    v17 = v27;
    if (v27)
    {
      v18 = v28;
      sub_10000BA08(&v26, v27);
      v19 = (*(v18 + 88))(v17, v18);
      v21 = v20;
      sub_10000BB78(&v26);
      if (v21 >> 60 == 15)
      {
        v22 = 0;
      }

      else
      {
        sub_10000BD94(v19, v21);
        v22 = 1;
      }
    }

    else
    {
      sub_10000BE18(&v26, &qword_1008404E8, &qword_1006DD168);
      v22 = 0;
    }

    sub_10000BE18(&v29, &qword_1008404E8, &qword_1006DD168);
    *(v16 + 4) = v22;
    _os_log_impl(&_mh_execute_header, v14, v15, "supplementalProvisioningData for exists at provisioning manager init ->%{BOOL}d", v16, 8u);

    a1 = v24;
  }

  else
  {
    sub_10000BE18(&v29, &qword_1008404E8, &qword_1006DD168);
  }

  sub_10000BE18(a2, &qword_1008404E8, &qword_1006DD168);
  sub_10000BE18(a1, &unk_100833B60, &qword_1006BF9E0);
  (*(v10 + 8))(v12, v25);
  return v5;
}

uint64_t sub_1002EA818()
{
  v1[33] = v0;
  v2 = type metadata accessor for Logger();
  v1[34] = v2;
  v1[35] = *(v2 - 8);
  v1[36] = swift_task_alloc();
  v1[37] = swift_task_alloc();
  v3 = type metadata accessor for DIPError.Code();
  v1[38] = v3;
  v1[39] = *(v3 - 8);
  v1[40] = swift_task_alloc();

  return _swift_task_switch(sub_1002EA940, 0, 0);
}

uint64_t sub_1002EA940()
{
  v1 = *(v0 + 264);
  swift_beginAccess();
  sub_10000BBC4(v1 + 56, v0 + 56, &qword_1008404E8, &qword_1006DD168);
  if (!*(v0 + 80))
  {
    v14 = *(v0 + 312);
    v13 = *(v0 + 320);
    v15 = *(v0 + 304);
    sub_10000BE18(v0 + 56, &qword_1008404E8, &qword_1006DD168);
    (*(v14 + 104))(v13, enum case for DIPError.Code.targetUnavailable(_:), v15);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100037214();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    goto LABEL_5;
  }

  sub_10001F358((v0 + 56), v0 + 16);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  sub_10000BA08((v0 + 16), v2);
  (*(v3 + 8))(v2, v3);
  sub_1002EFBE8(v0 + 16);

  v4 = objc_opt_self();
  v5 = [v4 standardUserDefaults];
  v6._countAndFlagsBits = static DaemonInternalDefaultsKeys.forceProvisioningFailure.getter();
  v7 = NSUserDefaults.internalBool(forKey:)(v6);

  if (v7)
  {
LABEL_3:
    v8 = enum case for DIPError.Code.provisioningIdentityFailed(_:);
    (*(*(v0 + 312) + 104))(*(v0 + 320), enum case for DIPError.Code.provisioningIdentityFailed(_:), *(v0 + 304));
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100037214();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v9 = *(v0 + 312);
    v10 = *(v0 + 320);
    v11 = *(v0 + 304);
    _StringGuts.grow(_:)(41);

    swift_getErrorValue();
    v12._countAndFlagsBits = Error.localizedDescription.getter();
    String.append(_:)(v12);

    (*(v9 + 104))(v10, v8, v11);
    swift_errorRetain();
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100037214();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    sub_10000BB78((v0 + 16));
LABEL_5:

    v16 = *(v0 + 8);

    return v16();
  }

  v18 = [v4 standardUserDefaults];
  v19._countAndFlagsBits = static DaemonInternalDefaultsKeys.forceWatchProvisioningFailure.getter();
  v20 = NSUserDefaults.internalBool(forKey:)(v19);

  if (v20)
  {
    v21 = *(v0 + 40);
    v22 = *(v0 + 48);
    sub_10000BA08((v0 + 16), v21);
    (*(v22 + 64))(v21, v22);
    v23 = IdentityTarget.rawValue.getter();
    if (v23 == IdentityTarget.rawValue.getter())
    {
      goto LABEL_3;
    }

    defaultLogger()();
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v24, v25, "Internal setting for forceWatchProvisioningFailure is enabled but this is phone provisioning. Will continue provisioning", v26, 2u);
    }

    v27 = *(v0 + 296);
    v28 = *(v0 + 272);
    v29 = *(v0 + 280);

    (*(v29 + 8))(v27, v28);
  }

  v30 = swift_task_alloc();
  *(v0 + 328) = v30;
  *v30 = v0;
  v30[1] = sub_1002EAFC8;

  return sub_1002ECC18();
}

uint64_t sub_1002EAFC8()
{
  *(*v1 + 336) = v0;

  if (v0)
  {
    v2 = sub_1002EC3B0;
  }

  else
  {
    v2 = sub_1002EB0DC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1002EB0DC()
{
  v1 = v0[5];
  v2 = v0[6];
  sub_10000BA08(v0 + 2, v1);
  (*(v2 + 16))(v1, v2);
  v3 = v0[5];
  v4 = v0[6];
  sub_10000BA08(v0 + 2, v3);
  (*(v4 + 24))(v3, v4);
  v5 = v0[5];
  v6 = v0[6];
  sub_10000BA08(v0 + 2, v5);
  (*(v6 + 32))(v5, v6);
  v7 = objc_allocWithZone(PKShareablePassMetadata);
  v8 = String._bridgeToObjectiveC()();

  v9 = String._bridgeToObjectiveC()();

  v10 = String._bridgeToObjectiveC()();

  v11 = [v7 initWithProvisioningCredentialIdentifier:v8 cardConfigurationIdentifier:v9 sharingInstanceIdentifier:v10];
  v0[43] = v11;

  if (!v11)
  {
    v26 = enum case for DIPError.Code.provisioningIdentityFailed(_:);
    (*(v0[39] + 104))(v0[40], enum case for DIPError.Code.provisioningIdentityFailed(_:), v0[38]);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100037214();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    goto LABEL_8;
  }

  defaultLogger()();
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "PKShareablePassMetadata created, invoking Wallet's provisionIdentityPass", v14, 2u);
  }

  v16 = v0[35];
  v15 = v0[36];
  v17 = v0[34];

  (*(v16 + 8))(v15, v17);
  v18 = v0[5];
  v19 = v0[6];
  sub_10000BA08(v0 + 2, v18);
  (*(v19 + 64))(v18, v19);
  v20 = IdentityTarget.rawValue.getter();
  v21 = IdentityTarget.rawValue.getter();
  v22 = v0[5];
  v23 = v0[6];
  sub_10000BA08(v0 + 2, v22);
  if (v20 != v21)
  {
    (*(v23 + 64))(v22, v23);
    v36 = IdentityTarget.rawValue.getter();
    v37 = IdentityTarget.rawValue.getter();
    v38 = v0[33];
    if (v36 != v37)
    {
      sub_10000BBC4((v38 + 7), (v0 + 12), &qword_1008404E8, &qword_1006DD168);
      if (v0[15])
      {
        sub_100020260((v0 + 12), (v0 + 17));
        sub_10000BE18((v0 + 12), &qword_1008404E8, &qword_1006DD168);
        v60 = v0[21];
        sub_10000BA08(v0 + 17, v0[20]);
        v61 = v0[5];
        v62 = v0[6];
        sub_10000BA08(v0 + 2, v61);
        v63 = (*(v62 + 8))(v61, v62);
        (*(v60 + 96))(v63);

        sub_10000BB78(v0 + 17);
      }

      else
      {
        sub_10000BE18((v0 + 12), &qword_1008404E8, &qword_1006DD168);
      }

      v64 = v0[43];
      _StringGuts.grow(_:)(104);
      v65._countAndFlagsBits = 0xD000000000000066;
      v65._object = 0x800000010070C230;
      String.append(_:)(v65);
      v66 = v0[5];
      v67 = v0[6];
      sub_10000BA08(v0 + 2, v66);
      v68._countAndFlagsBits = (*(v67 + 8))(v66, v67);
      String.append(_:)(v68);

      v69._countAndFlagsBits = 0;
      v70._countAndFlagsBits = 0x3162343038396564;
      v70._object = 0xE800000000000000;
      v69._object = 0xE000000000000000;
      logMilestone(tag:description:)(v70, v69);

      sub_10000BB78(v0 + 2);

      v35 = v0[1];
      goto LABEL_19;
    }

    v39 = v38[6];
    sub_10000BA08(v38 + 2, v38[5]);
    v40 = v0[5];
    v41 = v0[6];
    sub_10000BA08(v0 + 2, v40);
    (*(v41 + 40))(v40, v41);
    v0[50] = v42;
    v43 = v0[5];
    v44 = v0[6];
    sub_10000BA08(v0 + 2, v43);
    (*(v44 + 8))(v43, v44);
    v0[51] = v45;
    v75 = (*(v39 + 16) + **(v39 + 16));
    v46 = swift_task_alloc();
    v0[52] = v46;
    *v46 = v0;
    v46[1] = sub_1002EC058;
    v47 = v75;
LABEL_12:

    __asm { BRAA            X8, X16 }
  }

  v24 = (*(v23 + 88))(v22, v23);
  v0[44] = v24;
  v0[45] = v25;
  if (v25 >> 60 != 15)
  {
    v48 = v24;
    v49 = v25;
    v50 = v0[33];
    v51 = v50[6];
    sub_10000BA08(v50 + 2, v50[5]);
    v52 = v0[5];
    v53 = v0[6];
    sub_10000BA08(v0 + 2, v52);
    (*(v53 + 40))(v52, v53);
    v0[46] = v54;
    v56 = v0[5];
    v55 = v0[6];
    sub_10000BA08(v0 + 2, v56);
    (*(v55 + 8))(v56, v55);
    v0[47] = v57;
    v58 = *(v51 + 16);
    sub_10000B8B8(v48, v49);
    v73 = v58 + *v58;
    v59 = swift_task_alloc();
    v0[48] = v59;
    *v59 = v0;
    v59[1] = sub_1002EBCE4;
    v47 = v73;
    goto LABEL_12;
  }

  v26 = enum case for DIPError.Code.provisioningIdentityFailed(_:);
  (*(v0[39] + 104))(v0[40], enum case for DIPError.Code.provisioningIdentityFailed(_:), v0[38]);
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100037214();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();
  v28 = v0[39];
  v27 = v0[40];
  v72 = v0[43];
  v74 = v0[38];
  _StringGuts.grow(_:)(66);
  v29._countAndFlagsBits = 0xD000000000000040;
  v29._object = 0x800000010070C2A0;
  String.append(_:)(v29);
  swift_getErrorValue();
  v30._countAndFlagsBits = Error.localizedDescription.getter();
  String.append(_:)(v30);

  (*(v28 + 104))(v27, v26, v74);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

LABEL_8:
  v31 = v0[39];
  v32 = v0[40];
  v33 = v0[38];
  _StringGuts.grow(_:)(41);

  swift_getErrorValue();
  v34._countAndFlagsBits = Error.localizedDescription.getter();
  String.append(_:)(v34);

  (*(v31 + 104))(v32, v26, v33);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100037214();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  sub_10000BB78(v0 + 2);

  v35 = v0[1];
LABEL_19:

  return v35();
}

uint64_t sub_1002EBCE4()
{
  v2 = *v1;
  *(*v1 + 392) = v0;

  if (v0)
  {
    v3 = sub_1002EC598;
  }

  else
  {
    sub_10000BD94(*(v2 + 352), *(v2 + 360));

    v3 = sub_1002EBE1C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1002EBE1C()
{
  sub_10000BD94(v0[44], v0[45]);
  sub_10000BBC4(v0[33] + 56, (v0 + 12), &qword_1008404E8, &qword_1006DD168);
  if (v0[15])
  {
    sub_100020260((v0 + 12), (v0 + 17));
    sub_10000BE18((v0 + 12), &qword_1008404E8, &qword_1006DD168);
    v1 = v0[21];
    sub_10000BA08(v0 + 17, v0[20]);
    v2 = v0[5];
    v3 = v0[6];
    sub_10000BA08(v0 + 2, v2);
    v4 = (*(v3 + 8))(v2, v3);
    (*(v1 + 96))(v4);

    sub_10000BB78(v0 + 17);
  }

  else
  {
    sub_10000BE18((v0 + 12), &qword_1008404E8, &qword_1006DD168);
  }

  v5 = v0[43];
  _StringGuts.grow(_:)(104);
  v6._object = 0x800000010070C230;
  v6._countAndFlagsBits = 0xD000000000000066;
  String.append(_:)(v6);
  v7 = v0[5];
  v8 = v0[6];
  sub_10000BA08(v0 + 2, v7);
  v9._countAndFlagsBits = (*(v8 + 8))(v7, v8);
  String.append(_:)(v9);

  v10._countAndFlagsBits = 0;
  v11._countAndFlagsBits = 0x3162343038396564;
  v11._object = 0xE800000000000000;
  v10._object = 0xE000000000000000;
  logMilestone(tag:description:)(v11, v10);

  sub_10000BB78(v0 + 2);

  v12 = v0[1];

  return v12();
}

uint64_t sub_1002EC058()
{
  *(*v1 + 424) = v0;

  if (v0)
  {
    v2 = sub_1002EC8E8;
  }

  else
  {

    v2 = sub_1002EC17C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1002EC17C()
{
  sub_10000BBC4(v0[33] + 56, (v0 + 12), &qword_1008404E8, &qword_1006DD168);
  if (v0[15])
  {
    sub_100020260((v0 + 12), (v0 + 17));
    sub_10000BE18((v0 + 12), &qword_1008404E8, &qword_1006DD168);
    v1 = v0[21];
    sub_10000BA08(v0 + 17, v0[20]);
    v2 = v0[5];
    v3 = v0[6];
    sub_10000BA08(v0 + 2, v2);
    v4 = (*(v3 + 8))(v2, v3);
    (*(v1 + 96))(v4);

    sub_10000BB78(v0 + 17);
  }

  else
  {
    sub_10000BE18((v0 + 12), &qword_1008404E8, &qword_1006DD168);
  }

  v5 = v0[43];
  _StringGuts.grow(_:)(104);
  v6._object = 0x800000010070C230;
  v6._countAndFlagsBits = 0xD000000000000066;
  String.append(_:)(v6);
  v7 = v0[5];
  v8 = v0[6];
  sub_10000BA08(v0 + 2, v7);
  v9._countAndFlagsBits = (*(v8 + 8))(v7, v8);
  String.append(_:)(v9);

  v10._countAndFlagsBits = 0;
  v11._countAndFlagsBits = 0x3162343038396564;
  v11._object = 0xE800000000000000;
  v10._object = 0xE000000000000000;
  logMilestone(tag:description:)(v11, v10);

  sub_10000BB78(v0 + 2);

  v12 = v0[1];

  return v12();
}

uint64_t sub_1002EC3B0()
{
  v1 = enum case for DIPError.Code.provisioningIdentityFailed(_:);
  v3 = v0[39];
  v2 = v0[40];
  v4 = v0[38];
  _StringGuts.grow(_:)(41);

  swift_getErrorValue();
  v5._countAndFlagsBits = Error.localizedDescription.getter();
  String.append(_:)(v5);

  (*(v3 + 104))(v2, v1, v4);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100037214();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  sub_10000BB78(v0 + 2);

  v6 = v0[1];

  return v6();
}

uint64_t sub_1002EC598()
{
  v2 = v0[44];
  v1 = v0[45];
  sub_10000BD94(v2, v1);

  sub_10000BD94(v2, v1);
  v14 = v0[43];
  v4 = v0[39];
  v3 = v0[40];
  _StringGuts.grow(_:)(66);
  v5._countAndFlagsBits = 0xD000000000000040;
  v5._object = 0x800000010070C2A0;
  String.append(_:)(v5);
  swift_getErrorValue();
  v6._countAndFlagsBits = Error.localizedDescription.getter();
  String.append(_:)(v6);

  v13 = enum case for DIPError.Code.provisioningIdentityFailed(_:);
  (*(v4 + 104))(v3);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100037214();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v8 = v0[39];
  v7 = v0[40];
  v9 = v0[38];
  _StringGuts.grow(_:)(41);

  swift_getErrorValue();
  v10._countAndFlagsBits = Error.localizedDescription.getter();
  String.append(_:)(v10);

  (*(v8 + 104))(v7, v13, v9);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  sub_10000BB78(v0 + 2);

  v11 = v0[1];

  return v11();
}

uint64_t sub_1002EC8E8()
{

  v12 = v0[43];
  v2 = v0[39];
  v1 = v0[40];
  _StringGuts.grow(_:)(66);
  v3._countAndFlagsBits = 0xD000000000000040;
  v3._object = 0x800000010070C2A0;
  String.append(_:)(v3);
  swift_getErrorValue();
  v4._countAndFlagsBits = Error.localizedDescription.getter();
  String.append(_:)(v4);

  v11 = enum case for DIPError.Code.provisioningIdentityFailed(_:);
  (*(v2 + 104))(v1);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100037214();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v6 = v0[39];
  v5 = v0[40];
  v7 = v0[38];
  _StringGuts.grow(_:)(41);

  swift_getErrorValue();
  v8._countAndFlagsBits = Error.localizedDescription.getter();
  String.append(_:)(v8);

  (*(v6 + 104))(v5, v11, v7);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  sub_10000BB78(v0 + 2);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1002ECC18()
{
  v1[15] = v0;
  v2 = type metadata accessor for DIPError.Code();
  v1[16] = v2;
  v1[17] = *(v2 - 8);
  v1[18] = swift_task_alloc();
  v3 = type metadata accessor for Logger();
  v1[19] = v3;
  v1[20] = *(v3 - 8);
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();

  return _swift_task_switch(sub_1002ECD4C, 0, 0);
}

uint64_t sub_1002ECD4C(uint64_t a1)
{
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Preparing secure enclave for provisioning", v4, 2u);
  }

  v5 = *(v1 + 184);
  v6 = *(v1 + 152);
  v7 = *(v1 + 160);
  v8 = *(v1 + 120);

  v9 = *(v7 + 8);
  *(v1 + 192) = v9;
  v9(v5, v6);
  swift_beginAccess();
  sub_10000BBC4(v8 + 56, v1 + 56, &qword_1008404E8, &qword_1006DD168);
  if (*(v1 + 80))
  {
    v10 = *(v1 + 120);
    sub_10001F358((v1 + 56), v1 + 16);
    v11 = v10[5];
    v12 = v10[6];
    sub_10000BA08(v10 + 2, v11);
    v13 = *(v1 + 40);
    v14 = *(v1 + 48);
    sub_10000BA08((v1 + 16), v13);
    v15 = (*(v14 + 40))(v13, v14);
    v17 = v16;
    *(v1 + 200) = v16;
    v24 = (*(v12 + 24) + **(v12 + 24));
    v18 = swift_task_alloc();
    *(v1 + 208) = v18;
    *v18 = v1;
    v18[1] = sub_1002ED100;

    return v24(v15, v17, v11, v12);
  }

  else
  {
    v21 = *(v1 + 136);
    v20 = *(v1 + 144);
    v22 = *(v1 + 128);
    sub_10000BE18(v1 + 56, &qword_1008404E8, &qword_1006DD168);
    (*(v21 + 104))(v20, enum case for DIPError.Code.targetUnavailable(_:), v22);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100037214();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v23 = *(v1 + 8);

    return v23();
  }
}

uint64_t sub_1002ED100()
{
  *(*v1 + 216) = v0;

  if (v0)
  {
    v2 = sub_1002ED388;
  }

  else
  {

    v2 = sub_1002ED21C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1002ED21C()
{
  v1._countAndFlagsBits = 0x6136343930366139;
  v2._object = 0x800000010070C140;
  v1._object = 0xE800000000000000;
  v2._countAndFlagsBits = 0xD000000000000060;
  logMilestone(tag:description:)(v1, v2);
  defaultLogger()();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "PassKit responded to secure enclave preparation with success", v5, 2u);
  }

  v6 = v0[24];
  v7 = v0[22];
  v8 = v0[19];

  v6(v7, v8);
  sub_10000BB78(v0 + 2);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1002ED388()
{

  defaultLogger()();
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138412290;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v1, v2, "PassKit responded to secure enclave preparation with error: %@", v3, 0xCu);
    sub_10000BE18(v4, &unk_100833B50, &unk_1006D8FB0);
  }

  v6 = v0[24];
  v7 = v0[21];
  v8 = v0[18];
  v9 = v0[19];
  v10 = v0[16];
  v11 = v0[17];

  v6(v7, v9);
  (*(v11 + 104))(v8, enum case for DIPError.Code.failureToPrepareForProvisioning(_:), v10);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100037214();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  sub_10000BB78(v0 + 2);

  v12 = v0[1];

  return v12();
}

void sub_1002ED618(uint64_t a1, void *a2)
{
  v83 = a1;
  v3 = type metadata accessor for Date();
  v78 = *(v3 - 8);
  v79 = v3;
  v4 = *(v78 + 64);
  v5 = __chkstk_darwin(v3);
  v77 = v64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v81 = v64 - v6;
  v7 = sub_100007224(&unk_100849400, &unk_1006BFBB0);
  __chkstk_darwin(v7 - 8);
  v9 = v64 - v8;
  v10 = type metadata accessor for Logger();
  v76 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = v64 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DIPError.Code();
  v80 = *(v13 - 8);
  __chkstk_darwin(v13);
  v15 = v64 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a2[3];
  v17 = a2[4];
  sub_10000BA08(a2, v16);
  v18 = (*(v17 + 8))(v16, v17);
  v19 = v82;
  v82 = sub_10057C738(v18, v20);
  if (v19)
  {

    return;
  }

  v73 = v10;
  v74 = v12;
  v75 = v9;
  v69 = v4;

  if (!v82)
  {
    (*(v80 + 104))(v15, enum case for DIPError.Code.proofingSessionDoesntExist(_:), v13);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100037214();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    return;
  }

  v21 = [v82 proofingSessionID];
  if (v21)
  {
    v22 = v21;
    v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v24;

    sub_10057CCBC(v23, v25);
    isEscapingClosureAtFileLocation = 0;
    v28 = v80;
    v29 = v26;

    if (v29)
    {
      v31 = v29 & 0xFFFFFFFFFFFFFF8;
      if (v29 >> 62)
      {
        goto LABEL_36;
      }

      for (i = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
      {
        v33 = v79;
        v35 = v74;
        v34 = v75;
        v36 = v76;
        if (!i)
        {
          break;
        }

        v37 = 0;
        v76 = v29 & 0xC000000000000001;
        v67 = (v36 + 8);
        v72 = (v78 + 56);
        v64[3] = v78 + 16;
        v64[2] = v78 + 32;
        v64[1] = v85;
        v66 = (v78 + 8);
        *&v30 = 136315138;
        v65 = v30;
        v68 = v29;
        v70 = i;
        v71 = v31;
        while (1)
        {
          if (v76)
          {
            v40 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v37 >= *(v31 + 16))
            {
              goto LABEL_34;
            }

            v40 = *(v29 + 8 * v37 + 32);
          }

          v41 = v40;
          if (__OFADD__(v37, 1))
          {
            break;
          }

          v80 = v37 + 1;
          v31 = isEscapingClosureAtFileLocation;
          [v40 target];
          IdentityTarget.init(rawValue:)();
          v42 = v33;
          if ((v43 & 1) == 0)
          {
            defaultLogger()();
            v44 = Logger.logObject.getter();
            v45 = static os_log_type_t.debug.getter();
            if (os_log_type_enabled(v44, v45))
            {
              v46 = swift_slowAlloc();
              v47 = swift_slowAlloc();
              aBlock[0] = v47;
              *v46 = v65;
              v48 = IdentityTarget.debugDescription.getter();
              v50 = sub_100141FE4(v48, v49, aBlock);

              *(v46 + 4) = v50;
              v35 = v74;
              _os_log_impl(&_mh_execute_header, v44, v45, "Setting proofing attempt date for target %s", v46, 0xCu);
              sub_10000BB78(v47);
              v42 = v79;
            }

            (*v67)(v35, v73);
            v34 = v75;
            v29 = v68;
          }

          v38 = [v41 provisioningAttemptDate];
          if (v38)
          {
            v39 = v38;
            static Date._unconditionallyBridgeFromObjectiveC(_:)();

            v33 = v42;
            (*v72)(v34, 0, 1, v42);
            sub_10000BE18(v34, &unk_100849400, &unk_1006BFBB0);
            isEscapingClosureAtFileLocation = v31;
          }

          else
          {
            (*v72)(v34, 1, 1, v42);
            sub_10000BE18(v34, &unk_100849400, &unk_1006BFBB0);
            v51 = v81;
            Date.init()();
            v52 = [v41 managedObjectContext];
            if (v52)
            {
              v53 = v52;
              v55 = v77;
              v54 = v78;
              (*(v78 + 16))(v77, v81, v42);
              v56 = (*(v54 + 80) + 24) & ~*(v54 + 80);
              v57 = swift_allocObject();
              *(v57 + 16) = v41;
              v58 = v55;
              v51 = v81;
              (*(v54 + 32))(v57 + v56, v58, v42);
              v59 = swift_allocObject();
              *(v59 + 16) = sub_1002F31FC;
              *(v59 + 24) = v57;
              v85[2] = sub_10021E8E8;
              v85[3] = v59;
              aBlock[0] = _NSConcreteStackBlock;
              aBlock[1] = 1107296256;
              v85[0] = sub_10057E264;
              v85[1] = &unk_10080CF28;
              v60 = _Block_copy(aBlock);
              v61 = v41;

              v35 = v74;

              [v53 performBlockAndWait:v60];

              v62 = v60;
              v42 = v79;
              _Block_release(v62);
              isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();
              v29 = v68;

              v34 = v75;

              if (isEscapingClosureAtFileLocation)
              {
                goto LABEL_35;
              }
            }

            v63 = v51;
            v33 = v42;
            (*v66)(v63, v42);
            sub_10057BA64();
            isEscapingClosureAtFileLocation = v31;
            if (v31)
            {

              goto LABEL_31;
            }
          }

          ++v37;
          v31 = v71;
          if (v80 == v70)
          {
            goto LABEL_31;
          }
        }

        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        ;
      }

LABEL_31:

      goto LABEL_32;
    }

    (*(v28 + 104))(v15, enum case for DIPError.Code.proofingSessionDoesntExist(_:), v13);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100037214();
    swift_allocError();
  }

  else
  {
    (*(v80 + 104))(v15, enum case for DIPError.Code.proofingSessionDoesntExist(_:), v13);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100037214();
    swift_allocError();
  }

  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();
LABEL_32:
}

void sub_1002EE090(id *a1, void *a2)
{
  v78 = a2;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v79 = &v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = &v68 - v8;
  v10 = type metadata accessor for DIPError.Code();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;
  v15 = [*a1 casdAttestation];
  if (v15)
  {
    v76 = v5;
    v77 = v4;
    v16 = v15;
    v17 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;

    v20 = [v14 keyAuthorization];
    if (v20)
    {
      v74 = v2;
      v21 = v20;
      v22 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v24 = v23;

      v25 = objc_allocWithZone(DIIdentityProvisioningTransactionKey);
      sub_10000B8B8(v17, v19);
      sub_10000B8B8(v22, v24);
      isa = Data._bridgeToObjectiveC()().super.isa;
      v27.super.isa = Data._bridgeToObjectiveC()().super.isa;
      v75 = v17;
      v28 = v27.super.isa;
      v71 = [v25 initWithCASDAttestation:isa authorization:v27.super.isa];

      v29 = v75;
      v72 = v24;
      v73 = v22;
      sub_10000B90C(v22, v24);

      sub_10000B90C(v29, v19);
      defaultLogger()();
      v30 = v14;
      v31 = Logger.logObject.getter();
      v32 = static os_log_type_t.debug.getter();

      v33 = v19;
      if (os_log_type_enabled(v31, v32))
      {
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        v80 = v35;
        *v34 = 136315138;
        v70 = v30;
        v36 = [v30 casdAttestation];
        if (v36)
        {
          v37 = v36;
          v38 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v69 = v19;
          v39 = v38;
          v41 = v40;

          v42 = Data.base64EncodedString(options:)(0);
          countAndFlagsBits = v42._countAndFlagsBits;
          object = v42._object;
          v45 = v39;
          v33 = v69;
          sub_10000B90C(v45, v41);
        }

        else
        {
          countAndFlagsBits = 0;
          object = 0xE000000000000000;
        }

        v48 = sub_100141FE4(countAndFlagsBits, object, &v80);

        *(v34 + 4) = v48;
        _os_log_impl(&_mh_execute_header, v31, v32, " Transaction Key CASD Attestation ->  %s", v34, 0xCu);
        sub_10000BB78(v35);

        v46 = v77;
        v47 = *(v76 + 8);
        v47(v9, v77);
        v29 = v75;
        v30 = v70;
      }

      else
      {

        v46 = v77;
        v47 = *(v76 + 8);
        v47(v9, v77);
      }

      v49 = v79;
      defaultLogger()();
      v50 = v30;
      v51 = Logger.logObject.getter();
      v52 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v51, v52))
      {
        v70 = v47;
        v53 = swift_slowAlloc();
        v54 = swift_slowAlloc();
        v80 = v54;
        *v53 = 136315138;
        v55 = [v50 keyAuthorization];
        if (v55)
        {
          v56 = v55;
          v57 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v58 = v33;
          v60 = v59;

          v61 = Data.base64EncodedString(options:)(0);
          v62 = v61._countAndFlagsBits;
          v63 = v61._object;
          v64 = v60;
          v33 = v58;
          v49 = v79;
          sub_10000B90C(v57, v64);
        }

        else
        {
          v62 = 0;
          v63 = 0xE000000000000000;
        }

        v65 = sub_100141FE4(v62, v63, &v80);

        *(v53 + 4) = v65;
        _os_log_impl(&_mh_execute_header, v51, v52, " Transaction Key authorization ->  %s", v53, 0xCu);
        sub_10000BB78(v54);

        v70(v49, v77);
        v29 = v75;
      }

      else
      {

        v47(v49, v46);
      }

      v66 = v71;
      v67 = v78;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((*v67 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v67 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      sub_10000B90C(v73, v72);
      sub_10000B90C(v29, v33);
    }

    else
    {
      (*(v11 + 104))(v13, enum case for DIPError.Code.transactionKeyCASDAuthorizationUnavailable(_:), v10);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_100037214();
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
      sub_10000B90C(v17, v19);
    }
  }

  else
  {
    (*(v11 + 104))(v13, enum case for DIPError.Code.transactionKeyCASDAttestationUnavailable(_:), v10);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100037214();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
  }
}

void sub_1002EE850(uint64_t a1@<X1>, void *a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  v9 = type metadata accessor for DIPError.Code();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10057CE48(a1, a2, a3);
  if (!v4)
  {
    v14 = v13;
    if (v13)
    {
      v15 = [v13 serverAttestedProvisioningData];
      if (v15)
      {
        v16 = v15;
        v17 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v19 = v18;

        if ([v14 issuerCurrentCredentialCapacity] <= 0)
        {
          (*(v10 + 104))(v12, enum case for DIPError.Code.issuerCurrentCredentialCapacityUnavailable(_:), v9);
          sub_1000402AC(_swiftEmptyArrayStorage);
          type metadata accessor for DIPError();
          sub_100037214();
          swift_allocError();
          DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
          swift_willThrow();
          sub_10000B90C(v17, v19);
        }

        else
        {
          *a4 = v17;
          a4[1] = v19;
          sub_10000B8B8(v17, v19);
          v20 = [v14 issuerCurrentCredentialCapacity];

          sub_10000B90C(v17, v19);
          a4[2] = v20;
        }
      }

      else
      {
        (*(v10 + 104))(v12, enum case for DIPError.Code.serverAttestedProvisioningDataUnavailable(_:), v9);
        sub_1000402AC(_swiftEmptyArrayStorage);
        type metadata accessor for DIPError();
        sub_100037214();
        swift_allocError();
        DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
        swift_willThrow();
      }
    }

    else
    {
      v25[0] = 0;
      v25[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(51);
      v21._countAndFlagsBits = 0xD000000000000015;
      v21._object = 0x80000001007088D0;
      String.append(_:)(v21);
      v22._countAndFlagsBits = a1;
      v22._object = a2;
      String.append(_:)(v22);
      v23._countAndFlagsBits = 0xD00000000000001ALL;
      v23._object = 0x800000010070BFE0;
      String.append(_:)(v23);
      v24._countAndFlagsBits = IdentityTarget.debugDescription.getter();
      String.append(_:)(v24);

      (*(v10 + 104))(v12, enum case for DIPError.Code.proofingSessionDoesntExist(_:), v9);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_100037214();
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
    }
  }
}

uint64_t sub_1002EECD4()
{
  sub_10000BB78((v0 + 16));
  sub_10000BE18(v0 + 56, &qword_1008404E8, &qword_1006DD168);

  return swift_deallocClassInstance();
}

uint64_t sub_1002EED50(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for Logger();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();

  return _swift_task_switch(sub_1002EEE14, 0, 0);
}

uint64_t sub_1002EEE14(uint64_t a1)
{
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Attempting to provision on phone", v4, 2u);
  }

  v6 = v1[6];
  v5 = v1[7];
  v7 = v1[5];

  (*(v6 + 8))(v5, v7);
  type metadata accessor for IdentityProofingDataContext();
  swift_allocObject();
  sub_10057E28C();
  v1[8] = v8;
  v9 = v8;
  v11 = v1[3];
  v10 = v1[4];
  v12 = v1[2];
  v13 = swift_allocObject();
  v13[2] = v9;
  v13[3] = v12;
  v13[4] = v11;
  v13[5] = v10;

  sub_10057C18C(sub_1002F2FC0, v13);

  v14 = swift_task_alloc();
  v1[9] = v14;
  *v14 = v1;
  v14[1] = sub_1002EF038;

  return sub_1002EA818();
}

uint64_t sub_1002EF038()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_1002EF1B8;
  }

  else
  {
    v2 = sub_1002EF14C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1002EF14C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002EF1B8()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_1002EF224(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v85 = a4;
  v90 = a1;
  v89 = type metadata accessor for Logger();
  v88 = *(v89 - 8);
  v6 = __chkstk_darwin(v89);
  v86 = &v79 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v10 = &v79 - v9;
  v11 = __chkstk_darwin(v8);
  v13 = &v79 - v12;
  v14 = __chkstk_darwin(v11);
  v16 = &v79 - v15;
  __chkstk_darwin(v14);
  v18 = &v79 - v17;
  v19 = type metadata accessor for DIPError.Code();
  v87 = *(v19 - 1);
  __chkstk_darwin(v19);
  v21 = &v79 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v109;
  sub_10057BE48(a2, a3, 1);
  if (v22)
  {
    return;
  }

  v90 = v19;
  v109 = v21;
  v84 = v10;
  if (!v23)
  {
    v92 = 0;
    v93 = 0xE000000000000000;
    _StringGuts.grow(_:)(59);
    v47._countAndFlagsBits = 0xD000000000000039;
    v47._object = 0x800000010070C080;
    String.append(_:)(v47);
    v48._countAndFlagsBits = a2;
    v48._object = a3;
    String.append(_:)(v48);
    (*(v87 + 104))(v109, enum case for DIPError.Code.internalError(_:), v90);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100037214();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    return;
  }

  v109 = 0;
  v24 = v23;
  v25 = [v23 credentialIdentifier];
  if (!v25)
  {
    v16 = v18;
    defaultLogger()();
    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.debug.getter();
    v51 = os_log_type_enabled(v49, v50);
    v31 = v89;
    if (!v51)
    {
      goto LABEL_19;
    }

    v52 = swift_slowAlloc();
    *v52 = 0;
    v53 = "The phone credentialIdentifier doesn't exist, will not be able to provision on the phone";
LABEL_18:
    _os_log_impl(&_mh_execute_header, v49, v50, v53, v52, 2u);

LABEL_20:
    (*(v88 + 8))(v16, v31);
    return;
  }

  v26 = v25;
  v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v29 = v28;

  v30 = [v24 provisioningCredentialID];
  v31 = v89;
  if (!v30)
  {

    defaultLogger()();
    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v49, v50))
    {
      goto LABEL_19;
    }

    v52 = swift_slowAlloc();
    *v52 = 0;
    v53 = "The phone provisioningCredentialID doesn't exist, will not be able to provision on the phone";
    goto LABEL_18;
  }

  v32 = v30;
  v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v35 = v34;

  v36 = [v24 partnerSchemeID];
  if (!v36)
  {

    defaultLogger()();
    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      *v56 = 0;
      _os_log_impl(&_mh_execute_header, v54, v55, "The phone partnerSchemeID doesn't exist, will not be able to provision on the phone", v56, 2u);
    }

    else
    {
    }

    (*(v88 + 8))(v13, v31);
    return;
  }

  v37 = v36;
  v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v40 = v39;

  v41 = [v24 provisioningTargetInstanceID];
  if (!v41)
  {

    v16 = v84;
    defaultLogger()();
    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v49, v50))
    {
      v52 = swift_slowAlloc();
      *v52 = 0;
      v53 = "The phone provisioningTargetInstanceID doesn't exist, will not be able to provision on the phone";
      goto LABEL_18;
    }

LABEL_19:

    goto LABEL_20;
  }

  v42 = v41;
  v84 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v83 = v43;

  v82 = [v24 issuerCurrentCredentialCapacity];
  v44 = [v24 serverAttestedProvisioningData];
  v87 = v38;
  if (v44)
  {
    v45 = v44;
    v81 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v80 = v46;
  }

  else
  {
    v81 = 0;
    v80 = 0xF000000000000000;
  }

  v57 = v33;
  v90 = v24;
  v58 = [v24 supplementalProvisioningData];
  if (v58)
  {
    v59 = v58;
    v60 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v62 = v61;
  }

  else
  {
    v60 = 0;
    v62 = 0xF000000000000000;
  }

  if (qword_100832C20 != -1)
  {
    swift_once();
  }

  v63 = *(qword_100882228 + 16);
  v107 = sub_10001F8D4(0, &qword_10083E400, DCCredentialStore_ptr);
  v108 = &off_10080D7B0;
  v106 = v63;
  v92 = v27;
  v93 = v29;
  v94 = v57;
  v95 = v35;
  v96 = v87;
  v97 = v40;
  v98 = v84;
  v99 = v83;
  v100 = v82;
  v101 = 0;
  v102 = v81;
  v103 = v80;
  v104 = v60;
  v105 = v62;
  v91[3] = &type metadata for IdentityPhoneProvisioningProvider;
  v91[4] = &off_10080C800;
  v91[0] = swift_allocObject();
  sub_10026C350(&v92, v91[0] + 16);
  v64 = v85;
  swift_beginAccess();
  v65 = v63;
  sub_1002F3068(v91, v64 + 56);
  swift_endAccess();
  v66 = v86;
  defaultLogger()();
  v67 = v90;
  v68 = Logger.logObject.getter();
  v69 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v68, v69))
  {
    v70 = swift_slowAlloc();
    v71 = swift_slowAlloc();
    v91[0] = v71;
    *v70 = 136446210;
    v72 = [v67 proofingSessionID];
    v73 = v88;
    if (v72)
    {
      v74 = v72;
      v75 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v77 = v76;

      v66 = v86;
    }

    else
    {
      v75 = 0;
      v77 = 0xE000000000000000;
    }

    v78 = sub_100141FE4(v75, v77, v91);

    *(v70 + 4) = v78;
    _os_log_impl(&_mh_execute_header, v68, v69, "Trying to provision phone with proofingSessionID: %{public}s", v70, 0xCu);
    sub_10000BB78(v71);

    (*(v73 + 8))(v66, v89);
  }

  else
  {

    (*(v88 + 8))(v66, v89);
  }

  sub_10026C3C8(&v92);
}

uint64_t sub_1002EFBE8(uint64_t a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  __chkstk_darwin(v4);
  v6 = v15 - v5;
  defaultLogger()();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Will save provisioning attempt locally", v9, 2u);
  }

  (*(v3 + 8))(v6, v2);
  type metadata accessor for IdentityProofingDataContext();
  swift_allocObject();
  sub_10057E28C();
  v11 = v10;
  sub_100020260(a1, v15);
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  sub_10001F358(v15, v12 + 24);

  sub_10057C18C(sub_1002F3118, v12);
}

uint64_t sub_1002EFF34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  v4 = type metadata accessor for DIPError.Code();
  v3[8] = v4;
  v3[9] = *(v4 - 8);
  v3[10] = swift_task_alloc();
  v5 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  v3[11] = v5;
  v3[12] = *(v5 - 8);
  v3[13] = swift_task_alloc();

  return _swift_task_switch(sub_1002F0054, 0, 0);
}

uint64_t sub_1002F0054()
{
  type metadata accessor for IdentityProofingDataContext();
  swift_allocObject();
  sub_10057E28C();
  v0[14] = v1;
  v2 = v0[12];
  v16 = v0[13];
  v3 = v0[11];
  v5 = v0[6];
  v4 = v0[7];
  v6 = v0[5];
  v7 = v1;
  v8 = swift_allocObject();
  v0[15] = v8;
  v8[2] = v7;
  v8[3] = v6;
  v8[4] = v5;
  v8[5] = v4;
  v9 = swift_allocObject();
  v0[16] = v9;
  *(v9 + 16) = sub_1002F2E94;
  *(v9 + 24) = v8;
  v10 = enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:);
  v11 = *(v2 + 104);

  v11(v16, v10, v3);

  v12 = swift_task_alloc();
  v0[17] = v12;
  v13 = sub_100007224(&qword_1008404E0, &unk_1006DD158);
  *v12 = v0;
  v12[1] = sub_1002F0278;
  v14 = v0[13];

  return NSManagedObjectContext.perform<A>(schedule:_:)(v0 + 2, v14, sub_1002F2EEC, v9, v13);
}

uint64_t sub_1002F0278()
{
  v2 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    (*(v2[12] + 8))(v2[13], v2[11]);

    v3 = sub_1002F04A0;
  }

  else
  {
    v5 = v2[12];
    v4 = v2[13];
    v6 = v2[11];

    (*(v5 + 8))(v4, v6);
    v3 = sub_1002F0404;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1002F0404()
{

  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];

  v4 = v0[1];

  return v4(v1, v2, v3);
}

uint64_t sub_1002F04A0()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];

  (*(v2 + 104))(v1, enum case for DIPError.Code.internalError(_:), v3);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100037214();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v4 = v0[1];

  return v4();
}

uint64_t sub_1002F0610(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = type metadata accessor for DIPError.Code();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  v4[9] = v6;
  v4[10] = *(v6 - 8);
  v4[11] = swift_task_alloc();
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();

  return _swift_task_switch(sub_1002F0790, 0, 0);
}

uint64_t sub_1002F0790(uint64_t a1)
{
  v22 = v1;
  defaultLogger()();

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();

  v4 = os_log_type_enabled(v2, v3);
  v5 = v1[19];
  v6 = v1[9];
  v7 = v1[10];
  if (v4)
  {
    v9 = v1[2];
    v8 = v1[3];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v21 = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_100141FE4(v9, v8, &v21);
    _os_log_impl(&_mh_execute_header, v2, v3, "Building provisioning attestations starting for credential identifier: %s", v10, 0xCu);
    sub_10000BB78(v11);
  }

  v12 = *(v7 + 8);
  v12(v5, v6);
  v1[20] = v12;
  v13 = v1[4];
  v14 = v13[3];
  v15 = v13[4];
  sub_10000BA08(v13, v14);
  v20 = (*(v15 + 32) + **(v15 + 32));
  v16 = swift_task_alloc();
  v1[21] = v16;
  *v16 = v1;
  v16[1] = sub_1002F09D0;
  v18 = v1[2];
  v17 = v1[3];

  return v20(v18, v17, v14, v15);
}

uint64_t sub_1002F09D0(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 176) = a1;

  if (v1)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return _swift_task_switch(sub_1002F0BA0, 0, 0);
  }
}

uint64_t sub_1002F0BA0()
{
  v36 = v0;
  v1 = [*(v0 + 176) attestation];
  *(v0 + 184) = v1;
  v2 = *(v0 + 176);
  if (!v1)
  {
    (*(*(v0 + 56) + 104))(*(v0 + 64), enum case for DIPError.Code.deviceEncryptionKeyAttestationUnavailable(_:), *(v0 + 48));
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100037214();
    swift_allocError();
LABEL_7:
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    goto LABEL_8;
  }

  v3 = v1;
  *(v0 + 192) = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = [v2 keyAuthorization];
  if (!v4)
  {
    v2 = *(v0 + 176);
    v20 = *(v0 + 56);
    v19 = *(v0 + 64);
    v21 = *(v0 + 48);

    (*(v20 + 104))(v19, enum case for DIPError.Code.deviceEncryptionKeyAuthorizationUnavailable(_:), v21);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100037214();
    swift_allocError();
    goto LABEL_7;
  }

  v5 = v4;
  v6 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  *(v0 + 200) = v6;
  *(v0 + 208) = v8;
  defaultLogger()();
  sub_10000B8B8(v6, v8);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();
  sub_10000B90C(v6, v8);
  v11 = os_log_type_enabled(v9, v10);
  v12 = *(v0 + 160);
  v13 = *(v0 + 144);
  v14 = *(v0 + 72);
  v34 = v6;
  if (v11)
  {
    v33 = *(v0 + 72);
    v15 = swift_slowAlloc();
    v32 = v12;
    v16 = swift_slowAlloc();
    v35 = v16;
    *v15 = 136315138;
    v17 = Data.base64EncodedString(options:)(0);
    v18 = sub_100141FE4(v17._countAndFlagsBits, v17._object, &v35);

    *(v15 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v9, v10, "deviceEncryptionKeyAuthorization: %s", v15, 0xCu);
    sub_10000BB78(v16);

    v32(v13, v33);
  }

  else
  {

    v12(v13, v14);
  }

  v24 = [*(v0 + 176) kskAttestation];
  *(v0 + 216) = v24;
  if (v24)
  {
    *(v0 + 224) = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = swift_task_alloc();
    *(v0 + 232) = v25;
    *v25 = v0;
    v25[1] = sub_1002F1184;
    v26 = *(v0 + 40);
    v28 = *(v0 + 16);
    v27 = *(v0 + 24);

    return sub_1002EFF34(v28, v27, v26);
  }

  v2 = *(v0 + 176);
  v30 = *(v0 + 56);
  v29 = *(v0 + 64);
  v31 = *(v0 + 48);

  (*(v30 + 104))(v29, enum case for DIPError.Code.keySigningKeyAttestationUnavailable(_:), v31);
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100037214();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();
  sub_10000B90C(v34, v8);
LABEL_8:

  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_1002F1184(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v5[30] = a1;
  v5[31] = a2;
  v5[32] = a3;
  v5[33] = v3;

  if (v3)
  {
    v6 = v5[27];
    v7 = v5[23];

    v8 = sub_1002F1558;
  }

  else
  {
    v8 = sub_1002F12C0;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_1002F12C0(uint64_t a1)
{
  v26 = v1;
  v3 = v1[30];
  v2 = v1[31];
  defaultLogger()();
  sub_10000B8B8(v3, v2);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();
  sub_10000B90C(v3, v2);
  if (os_log_type_enabled(v4, v5))
  {
    v23 = v1[20];
    v6 = v1[17];
    v7 = v1[9];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v25 = v9;
    *v8 = 136315138;
    v10 = Data.base64EncodedString(options:)(0);
    v11 = sub_100141FE4(v10._countAndFlagsBits, v10._object, &v25);

    *(v8 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v4, v5, "serverAttestedProvisioningData during provisioning is %s", v8, 0xCu);
    sub_10000BB78(v9);

    v23(v6, v7);
  }

  else
  {
    v12 = v1[20];
    v13 = v1[17];
    v14 = v1[9];

    v12(v13, v14);
  }

  v15 = v1[4];
  v16 = v15[3];
  v17 = v15[4];
  sub_10000BA08(v15, v16);
  v24 = (*(v17 + 48) + **(v17 + 48));
  v18 = swift_task_alloc();
  v1[34] = v18;
  *v18 = v1;
  v18[1] = sub_1002F1650;
  v19 = v1[32];
  v21 = v1[2];
  v20 = v1[3];

  return v24(v21, v20, v19, v16, v17);
}