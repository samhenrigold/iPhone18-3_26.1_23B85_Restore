uint64_t sub_1004BEAC0(uint64_t a1)
{
  v2 = v1[32];
  v4 = v1[25];
  v3 = v1[26];
  v5 = v1[24];
  swift_willThrow();
  _StringGuts.grow(_:)(47);
  v1[18] = 0;
  v1[19] = 0xE000000000000000;
  v6._countAndFlagsBits = 0xD00000000000002DLL;
  v6._object = 0x800000010071B1B0;
  String.append(_:)(v6);
  v1[21] = v2;
  sub_100007224(&qword_100833B90, &qword_1006D95C0);
  _print_unlocked<A, B>(_:_:)();
  (*(v4 + 104))(v3, enum case for DIPError.Code.unableToGenerateNonceOnWatch(_:), v5);
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_1004CF2E4(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v7 = v1[1];

  return v7();
}

uint64_t sub_1004BECE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[21] = a3;
  v4[22] = a4;
  v4[19] = a1;
  v4[20] = a2;
  v5 = type metadata accessor for DIPError.Code();
  v4[23] = v5;
  v4[24] = *(v5 - 8);
  v4[25] = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  v4[26] = v6;
  v4[27] = *(v6 - 8);
  v4[28] = swift_task_alloc();
  v4[29] = swift_task_alloc();

  return _swift_task_switch(sub_1004BEE10, 0, 0);
}

uint64_t sub_1004BEE10(uint64_t a1)
{
  v34 = v1;
  v2 = &v1[18];
  isa = v1[20].super.isa;
  defaultLogger()();
  v4 = isa;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v1[29].super.isa;
  v9 = &selRef_setSupportedEncoding_;
  v11 = v1[26].super.isa;
  v10 = v1[27].super.isa;
  if (v7)
  {
    v12 = v1[20].super.isa;
    v32 = v1[29].super.isa;
    v13 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v14 = v33;
    *v13 = 136315138;
    v15 = [(objc_class *)v12 deviceID];
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;

    v19 = v16;
    v9 = &selRef_setSupportedEncoding_;
    v20 = sub_100141FE4(v19, v18, &v33);

    *(v13 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v5, v6, "Trying to generate prearm trust key and certificate on phone for watch with pairingID: %s", v13, 0xCu);
    sub_10000BB78(v14);
    v2 = &v1[18];

    v21 = *(v10 + 1);
    (v21)(v32, v11);
  }

  else
  {

    v21 = *(v10 + 1);
    (v21)(v8, v11);
  }

  v1[30].super.isa = v21;
  v22 = v1[20].super.isa;
  v23 = [(objc_class *)v1[22].super.isa credentialNonce];
  v24 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v26 = v25;

  v27.super.isa = Data._bridgeToObjectiveC()().super.isa;
  v1[31].super.isa = v27.super.isa;
  sub_10000B90C(v24, v26);
  v28 = [v22 v9[152]];
  if (!v28)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v28 = String._bridgeToObjectiveC()();
  }

  v1[32].super.isa = v28;
  v29 = v1[21].super.isa;
  v1[2].super.isa = v1;
  v1[7].super.isa = v2;
  v1[3].super.isa = sub_1004BF11C;
  v30 = swift_continuation_init();
  v1[17].super.isa = sub_100007224(&unk_100845E60, &qword_1006E63D8);
  v1[10].super.isa = _NSConcreteStackBlock;
  v1[11].super.isa = 1107296256;
  v1[12].super.isa = sub_1004CF424;
  v1[13].super.isa = &unk_1008141C0;
  v1[14].super.isa = v30;
  [(objc_class *)v29 generatePrearmTrustCertificateWithNonce:v27.super.isa pairingID:v28 completion:&v1[10]];

  return _swift_continuation_await(&v1[2]);
}

uint64_t sub_1004BF11C()
{
  v1 = *(*v0 + 48);
  *(*v0 + 264) = v1;
  if (v1)
  {
    v2 = sub_1004BF54C;
  }

  else
  {
    v2 = sub_1004BF22C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1004BF22C()
{
  v37 = v0;
  v1 = *(v0 + 248);
  v2 = *(v0 + 160);
  v3 = *(v0 + 144);

  defaultLogger()();
  v4 = v2;
  v5 = v3;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();

  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 240);
  v10 = *(v0 + 224);
  v11 = *(v0 + 208);
  if (v8)
  {
    v32 = *(v0 + 160);
    v35 = *(v0 + 208);
    v12 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    *v12 = 136315650;
    v13 = [v5 credentialKeyBlob];
    v14 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v34 = v9;
    v16 = v15;

    v17 = Data.base64EncodedString(options:)(0);
    v33 = v10;
    sub_10000B90C(v14, v16);
    v18 = sub_100141FE4(v17._countAndFlagsBits, v17._object, &v36);

    *(v12 + 4) = v18;
    *(v12 + 12) = 2080;
    v19 = [v5 credentialBAACertificate];
    v20 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = v21;

    v23 = Data.base64EncodedString(options:)(0);
    sub_10000B90C(v20, v22);
    v24 = sub_100141FE4(v23._countAndFlagsBits, v23._object, &v36);

    *(v12 + 14) = v24;
    *(v12 + 22) = 2080;
    v25 = [v32 deviceID];
    v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v28 = v27;

    v29 = sub_100141FE4(v26, v28, &v36);

    *(v12 + 24) = v29;
    _os_log_impl(&_mh_execute_header, v6, v7, "Successfully generated prearm trust key: %s and certificate: %s on phone for watch with pairingID: %s", v12, 0x20u);
    swift_arrayDestroy();

    v34(v33, v35);
  }

  else
  {

    v9(v10, v11);
  }

  **(v0 + 152) = v5;

  v30 = *(v0 + 8);

  return v30();
}

uint64_t sub_1004BF54C(uint64_t a1)
{
  v2 = v1[32];
  v3 = v1[31];
  v5 = v1[24];
  v4 = v1[25];
  v6 = v1[23];
  swift_willThrow();

  (*(v5 + 104))(v4, enum case for DIPError.Code.unableToGeneratePrearmTrustKeyOnPhone(_:), v6);
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_1004CF2E4(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v7 = v1[1];

  return v7();
}

uint64_t sub_1004BF704(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[20] = a2;
  v3[21] = a3;
  v3[19] = a1;
  return _swift_task_switch(sub_1004BF728, 0, 0);
}

uint64_t sub_1004BF728()
{
  v2 = v0[20];
  v1 = v0[21];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1004BF850;
  v3 = swift_continuation_init();
  v0[17] = sub_100007224(&qword_100845E58, &qword_1006E63D0);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_1004CF424;
  v0[13] = &unk_100814198;
  v0[14] = v3;
  [v2 establishPrearmTrustV2:v1 completion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1004BF850()
{
  v1 = *(*v0 + 48);
  *(*v0 + 176) = v1;
  if (v1)
  {
    v2 = sub_1004CF428;
  }

  else
  {
    v2 = sub_1004CF3B4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1004BF960(uint64_t a1, uint64_t a2)
{
  v2[20] = a1;
  v2[21] = a2;
  v3 = type metadata accessor for DIPError.Code();
  v2[22] = v3;
  v2[23] = *(v3 - 8);
  v2[24] = swift_task_alloc();

  return _swift_task_switch(sub_1004BFA20, 0, 0);
}

uint64_t sub_1004BFA20()
{
  v1 = v0[21];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1004BFB3C;
  v2 = swift_continuation_init();
  v0[17] = sub_100007224(&unk_100845E00, &qword_1006DAB10);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_1004B1218;
  v0[13] = &unk_100814170;
  v0[14] = v2;
  [v1 getCASDCertificateWithCompletion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1004BFB3C()
{
  v1 = *(*v0 + 48);
  *(*v0 + 200) = v1;
  if (v1)
  {
    v2 = sub_1004BFCBC;
  }

  else
  {
    v2 = sub_1004BFC4C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1004BFC4C()
{
  **(v0 + 160) = *(v0 + 144);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1004BFCBC(uint64_t a1)
{
  v2 = v1[24];
  v3 = v1[22];
  v4 = v1[23];
  swift_willThrow();
  (*(v4 + 104))(v2, enum case for DIPError.Code.unableToGetCASDCertificateWithWatch(_:), v3);
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_1004CF2E4(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v5 = v1[1];

  return v5();
}

uint64_t sub_1004BFE48(uint64_t a1, uint64_t a2)
{
  v2[20] = a1;
  v2[21] = a2;
  v3 = type metadata accessor for DIPError.Code();
  v2[22] = v3;
  v2[23] = *(v3 - 8);
  v2[24] = swift_task_alloc();

  return _swift_task_switch(sub_1004BFF08, 0, 0);
}

uint64_t sub_1004BFF08()
{
  v1 = v0[21];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1004C0024;
  v2 = swift_continuation_init();
  v0[17] = sub_100007224(&unk_100845DF0, &unk_1006BFA20);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_100672A4C;
  v0[13] = &unk_100814148;
  v0[14] = v2;
  [v1 pairedWatchSEIDWithCompletion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1004C0024()
{
  v1 = *(*v0 + 48);
  *(*v0 + 200) = v1;
  if (v1)
  {
    v2 = sub_1004C01A4;
  }

  else
  {
    v2 = sub_1004C0134;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1004C0134()
{
  v2 = v0[19];
  v1 = v0[20];
  *v1 = v0[18];
  v1[1] = v2;

  v3 = v0[1];

  return v3();
}

uint64_t sub_1004C01A4(uint64_t a1)
{
  v2 = v1[24];
  v3 = v1[22];
  v4 = v1[23];
  swift_willThrow();
  (*(v4 + 104))(v2, enum case for DIPError.Code.unableToGetSEIDWithWatch(_:), v3);
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_1004CF2E4(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v5 = v1[1];

  return v5();
}

uint64_t sub_1004C0330(uint64_t a1, uint64_t a2)
{
  v3[90] = v2;
  v3[89] = a2;
  v3[88] = a1;
  v4 = type metadata accessor for DIPError.Code();
  v3[91] = v4;
  v3[92] = *(v4 - 8);
  v3[93] = swift_task_alloc();
  v5 = type metadata accessor for Logger();
  v3[94] = v5;
  v3[95] = *(v5 - 8);
  v3[96] = swift_task_alloc();
  v3[97] = swift_task_alloc();
  v3[98] = swift_task_alloc();
  v3[99] = swift_task_alloc();

  return _swift_task_switch(sub_1004C0478, 0, 0);
}

uint64_t sub_1004C0478()
{
  v1 = swift_task_alloc();
  *(v0 + 800) = v1;
  *v1 = v0;
  v1[1] = sub_1004C0514;

  return sub_1006738C8();
}

uint64_t sub_1004C0514(uint64_t a1)
{
  *(*v1 + 808) = a1;

  return _swift_task_switch(sub_1004C0614, 0, 0);
}

uint64_t sub_1004C0614(uint64_t a1)
{
  v25 = v1;
  v2 = v1[101];
  if (v2)
  {
    v1[102] = *(v1[90] + OBJC_IVAR____TtC8coreidvd38IdentityWatchSessionManagementListener_biometricStore);
    defaultLogger()();
    v3 = v2;
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();

    v6 = os_log_type_enabled(v4, v5);
    v7 = v1[99];
    v8 = v1[95];
    v9 = v1[94];
    if (v6)
    {
      v23 = v1[99];
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v24 = v11;
      *v10 = 136315138;
      v12 = [v3 deviceID];
      v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v15 = v14;

      v16 = sub_100141FE4(v13, v15, &v24);

      *(v10 + 4) = v16;
      _os_log_impl(&_mh_execute_header, v4, v5, "Trying to prearm the watch with pairingID: %s", v10, 0xCu);
      sub_10000BB78(v11);

      v17 = *(v8 + 8);
      v17(v23, v9);
    }

    else
    {

      v17 = *(v8 + 8);
      v17(v7, v9);
    }

    v1[103] = v17;
    v20 = swift_task_alloc();
    v1[104] = v20;
    *v20 = v1;
    v20[1] = sub_1004C09BC;
    v21 = v1[89];
    v22 = v1[88];

    return sub_1004C9820((v1 + 23), v22, v21);
  }

  else
  {
    (*(v1[92] + 104))(v1[93], enum case for DIPError.Code.unableToEstablishSessionWithWatch(_:), v1[91]);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1004CF2E4(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v18 = v1[1];

    return v18();
  }
}

uint64_t sub_1004C09BC()
{
  v1 = *v0;

  *(v1 + 840) = *(v1 + 184);
  *(v1 + 856) = *(v1 + 200);
  *(v1 + 872) = *(v1 + 216);
  v2 = *(v1 + 232);
  *(v1 + 70) = *(v1 + 234);
  *(v1 + 68) = v2;

  return _swift_task_switch(sub_1004C0AEC, 0, 0);
}

uint64_t sub_1004C0AEC(uint64_t a1)
{
  v2 = *(v1 + 224);
  if (v2)
  {
    v3 = *(v1 + 68);
    v4 = v1 + 72;
    v5 = *(v1 + 70);
    v6 = *(v1 + 880);
    v7 = *(v1 + 872);
    v8 = *(v1 + 200);
    *(v1 + 72) = *(v1 + 184);
    *(v1 + 88) = v8;
    *(v1 + 104) = *(v1 + 216);
    *(v1 + 112) = v2;
    *(v1 + 122) = *(v1 + 234);
    *(v1 + 120) = *(v1 + 232);
    v59 = *(v1 + 840);
    v61 = *(v1 + 856);
    defaultLogger()();
    *(v1 + 240) = v59;
    *(v1 + 256) = v61;
    *(v1 + 272) = v7;
    *(v1 + 280) = v6;
    *(v1 + 290) = v5;
    *(v1 + 288) = v3;
    sub_1004CDE10(v1 + 240, v1 + 296);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 33554688;
      *(v11 + 4) = *(v1 + 120);
      sub_10000BE18(v1 + 184, &qword_100845E10, &qword_1006DCDA8);
      _os_log_impl(&_mh_execute_header, v9, v10, "existing prearmtrust version = %hd", v11, 6u);
    }

    else
    {
      sub_10000BE18(v1 + 184, &qword_100845E10, &qword_1006DCDA8);
    }

    v22 = *(v1 + 824);
    v23 = *(v1 + 784);
    v24 = *(v1 + 760);
    v25 = *(v1 + 752);

    *(v1 + 888) = (v24 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v22(v23, v25);
    v26 = *(v1 + 120);
    if (v26 == 1)
    {
      v27 = *(v1 + 824);
      v28 = *(v1 + 776);
      v29 = *(v1 + 752);
      defaultLogger()();
      *(swift_task_alloc() + 16) = v4;
      Logger.sensitive(_:)();

      v27(v28, v29);
      v30 = swift_task_alloc();
      *(v1 + 896) = v30;
      *v30 = v1;
      v30[1] = sub_1004C11E0;

      return sub_1004C404C(v1 + 128, v4);
    }

    else
    {
      v31 = *(v1 + 68);
      v32 = *(v1 + 70);
      v33 = *(v1 + 880);
      v34 = *(v1 + 872);
      v62 = *(v1 + 840);
      v54 = *(v1 + 856);
      defaultLogger()();
      *(v1 + 352) = v62;
      *(v1 + 368) = v54;
      *(v1 + 384) = v34;
      *(v1 + 392) = v33;
      *(v1 + 402) = v32;
      *(v1 + 400) = v31;
      sub_1004CDE10(v1 + 352, v1 + 408);
      v35 = Logger.logObject.getter();
      v36 = static os_log_type_t.debug.getter();
      v60 = v26;
      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        *v37 = 33554688;
        *(v37 + 4) = v26;
        sub_10000BE18(v1 + 184, &qword_100845E10, &qword_1006DCDA8);
        _os_log_impl(&_mh_execute_header, v35, v36, "using existing prearmtrust version = %hd", v37, 6u);
      }

      else
      {
        sub_10000BE18(v1 + 184, &qword_100845E10, &qword_1006DCDA8);
      }

      v38 = v35;
      v39 = *(v1 + 68);
      v40 = *(v1 + 70);
      v41 = *(v1 + 880);
      v42 = *(v1 + 872);
      v43 = *(v1 + 824);
      v44 = *(v1 + 768);
      v45 = *(v1 + 752);
      v55 = *(v1 + 856);
      v57 = *(v1 + 840);

      v43(v44, v45);
      LOBYTE(v44) = *(v1 + 122);
      v46 = *(v1 + 104);
      v47 = *(v1 + 112);
      *(v1 + 464) = v57;
      *(v1 + 480) = v55;
      *(v1 + 496) = v42;
      *(v1 + 504) = v41;
      *(v1 + 514) = v40;
      *(v1 + 512) = v39;
      v56 = *(v1 + 72);
      v58 = *(v1 + 88);
      sub_1004CDE10(v1 + 464, v1 + 520);
      v48 = *(v1 + 808);
      *(v1 + 576) = v56;
      *(v1 + 592) = v58;
      *(v1 + 608) = v46;
      *(v1 + 616) = v47;
      *(v1 + 624) = v60;
      *(v1 + 626) = v44;
      v49 = *(v1 + 592);
      *(v1 + 16) = *(v1 + 576);
      *(v1 + 32) = v49;
      *(v1 + 48) = *(v1 + 608);
      *(v1 + 63) = *(v1 + 623);
      v50 = swift_allocObject();
      *(v1 + 912) = v50;
      *(v50 + 16) = v48;
      v51 = v48;
      v52 = swift_task_alloc();
      *(v1 + 920) = v52;
      sub_10001F8D4(0, &qword_100845E18, DCCredentialNonce_ptr);
      *v52 = v1;
      v52[1] = sub_1004C14A4;
      v53.n128_u64[0] = 30.0;

      return withTaskTimeoutHandler<A>(timeout:operation:)(v53);
    }
  }

  else
  {
    v12 = *(v1 + 808);
    v13 = *(v1 + 744);
    v14 = *(v1 + 736);
    v15 = *(v1 + 728);
    v16 = *(v1 + 712);
    v17 = *(v1 + 704);
    _StringGuts.grow(_:)(88);
    v18._countAndFlagsBits = 0xD000000000000056;
    v18._object = 0x800000010071AE60;
    String.append(_:)(v18);
    v19._countAndFlagsBits = v17;
    v19._object = v16;
    String.append(_:)(v19);
    (*(v14 + 104))(v13, enum case for DIPError.Code.missingWatchPrearmTrustWhenPhonePrearming(_:), v15);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1004CF2E4(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v20 = *(v1 + 8);

    return v20();
  }
}

uint64_t sub_1004C11E0()
{
  *(*v1 + 904) = v0;

  if (v0)
  {
    v2 = sub_1004C1B80;
  }

  else
  {
    v2 = sub_1004C12F4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1004C12F4(uint64_t a1)
{
  v2 = *(v1 + 824);
  v3 = *(v1 + 776);
  v4 = *(v1 + 752);
  defaultLogger()();
  *(swift_task_alloc() + 16) = v1 + 128;
  Logger.sensitive(_:)();

  v2(v3, v4);
  v5 = *(v1 + 178);
  v6 = *(v1 + 176);
  v7 = *(v1 + 160);
  v8 = *(v1 + 168);
  v9 = *(v1 + 808);
  v10 = *(v1 + 144);
  *(v1 + 576) = *(v1 + 128);
  *(v1 + 592) = v10;
  *(v1 + 608) = v7;
  *(v1 + 616) = v8;
  *(v1 + 624) = v6;
  *(v1 + 626) = v5;
  v11 = *(v1 + 592);
  *(v1 + 16) = *(v1 + 576);
  *(v1 + 32) = v11;
  *(v1 + 48) = *(v1 + 608);
  *(v1 + 63) = *(v1 + 623);
  v12 = swift_allocObject();
  *(v1 + 912) = v12;
  *(v12 + 16) = v9;
  v13 = v9;
  v14 = swift_task_alloc();
  *(v1 + 920) = v14;
  sub_10001F8D4(0, &qword_100845E18, DCCredentialNonce_ptr);
  *v14 = v1;
  v14[1] = sub_1004C14A4;
  v15.n128_u64[0] = 30.0;

  return withTaskTimeoutHandler<A>(timeout:operation:)(v15);
}

uint64_t sub_1004C14A4()
{
  *(*v1 + 928) = v0;

  if (v0)
  {
    v2 = sub_1004C1D68;
  }

  else
  {
    v2 = sub_1004C15D8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1004C15D8()
{
  v1 = *(v0 + 816);
  v2 = *(v0 + 808);
  v3 = *(v0 + 712);
  v4 = *(v0 + 704);
  v5 = *(v0 + 688);
  *(v0 + 936) = v5;
  v6 = swift_allocObject();
  v7 = *(v0 + 32);
  *(v6 + 40) = *(v0 + 16);
  *(v0 + 944) = v6;
  *(v6 + 16) = v2;
  *(v6 + 24) = v1;
  *(v6 + 32) = v5;
  *(v6 + 56) = v7;
  *(v6 + 72) = *(v0 + 48);
  *(v6 + 87) = *(v0 + 63);
  *(v6 + 96) = v4;
  *(v6 + 104) = v3;
  v8 = v2;
  v9 = v1;
  v10 = v5;
  sub_1004CDE10(v0 + 576, v0 + 632);

  v11 = swift_task_alloc();
  *(v0 + 952) = v11;
  sub_10001F8D4(0, &qword_100845E20, DCCredentialAuthorizationToken_ptr);
  *v11 = v0;
  v11[1] = sub_1004C1738;
  v12.n128_u64[0] = 30.0;

  return withTaskTimeoutHandler<A>(timeout:operation:)(v12);
}

uint64_t sub_1004C1738()
{
  *(*v1 + 960) = v0;

  if (v0)
  {
    v2 = sub_1004C1E34;
  }

  else
  {
    v2 = sub_1004C186C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1004C186C()
{
  v1 = v0[101];
  v2 = v0[87];
  v0[121] = v2;
  v3 = swift_allocObject();
  v0[122] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = v1;
  v5 = v2;
  v6 = swift_task_alloc();
  v0[123] = v6;
  *v6 = v0;
  v6[1] = sub_1004C1964;
  v7.n128_u64[0] = 30.0;

  return withTaskTimeoutHandler<A>(timeout:operation:)(v7);
}

uint64_t sub_1004C1964()
{
  *(*v1 + 992) = v0;

  if (v0)
  {
    v2 = sub_1004C1F08;
  }

  else
  {
    v2 = sub_1004C1A98;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1004C1A98()
{
  v1 = *(v0 + 968);
  v2 = *(v0 + 808);

  sub_10000BE18(v0 + 184, &qword_100845E10, &qword_1006DCDA8);
  sub_1004CDFC0(v0 + 576);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1004C1B80()
{
  v1 = v0[101];
  (*(v0[92] + 104))(v0[93], enum case for DIPError.Code.watchPrearmTrustMigrationError(_:), v0[91]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_1004CF2E4(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  sub_10000BE18((v0 + 23), &qword_100845E10, &qword_1006DCDA8);

  v2 = v0[1];

  return v2();
}

uint64_t sub_1004C1D68()
{
  sub_10000BE18(v0 + 184, &qword_100845E10, &qword_1006DCDA8);
  sub_1004CDFC0(v0 + 576);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1004C1E34()
{
  v1 = *(v0 + 808);

  sub_10000BE18(v0 + 184, &qword_100845E10, &qword_1006DCDA8);
  sub_1004CDFC0(v0 + 576);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1004C1F08()
{
  v1 = *(v0 + 968);
  v2 = *(v0 + 808);

  sub_10000BE18(v0 + 184, &qword_100845E10, &qword_1006DCDA8);
  sub_1004CDFC0(v0 + 576);

  v3 = *(v0 + 8);

  return v3();
}

unint64_t sub_1004C1FE4()
{
  _StringGuts.grow(_:)(26);

  v0 = Data.base16EncodedString()();
  String.append(_:)(v0);

  return 0xD000000000000018;
}

uint64_t sub_1004C2064(uint64_t a1)
{
  v4[7] = 0;
  v4[8] = 0xE000000000000000;
  sub_1004CDE10(a1, v4);
  _StringGuts.grow(_:)(25);

  v4[0] = 0xD000000000000017;
  v4[1] = 0x800000010071AEF0;
  v2 = Data.base16EncodedString()();
  String.append(_:)(v2);

  sub_1004CDFC0(a1);
  return v4[0];
}

uint64_t sub_1004C20FC(uint64_t a1, uint64_t a2)
{
  v2[19] = a1;
  v2[20] = a2;
  v3 = type metadata accessor for DIPError.Code();
  v2[21] = v3;
  v2[22] = *(v3 - 8);
  v2[23] = swift_task_alloc();
  v4 = type metadata accessor for Logger();
  v2[24] = v4;
  v2[25] = *(v4 - 8);
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();

  return _swift_task_switch(sub_1004C2224, 0, 0);
}

uint64_t sub_1004C2224(uint64_t a1)
{
  v24 = v1;
  v2 = v1[20];
  defaultLogger()();
  v3 = v2;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v1[27];
  v9 = v1[24];
  v8 = v1[25];
  if (v6)
  {
    v10 = v1[20];
    v22 = v1[27];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v23 = v12;
    *v11 = 136315138;
    v13 = [v10 deviceID];
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;

    v17 = sub_100141FE4(v14, v16, &v23);

    *(v11 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v4, v5, "Trying to generate nonce in watch with pairingID: %s", v11, 0xCu);
    sub_10000BB78(v12);

    v18 = *(v8 + 8);
    v18(v22, v9);
  }

  else
  {

    v18 = *(v8 + 8);
    v18(v7, v9);
  }

  v1[28] = v18;
  v19 = v1[20];
  v1[2] = v1;
  v1[7] = v1 + 18;
  v1[3] = sub_1004C2498;
  v20 = swift_continuation_init();
  v1[17] = sub_100007224(&qword_100845E30, &qword_1006E6358);
  v1[10] = _NSConcreteStackBlock;
  v1[11] = 1107296256;
  v1[12] = sub_1004CF424;
  v1[13] = &unk_100813FE0;
  v1[14] = v20;
  [v19 nonceForAuthorizationTokenWithCompletion:v1 + 10];

  return _swift_continuation_await(v1 + 2);
}

uint64_t sub_1004C2498()
{
  v1 = *(*v0 + 48);
  *(*v0 + 232) = v1;
  if (v1)
  {
    v2 = sub_1004C2840;
  }

  else
  {
    v2 = sub_1004C25A8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1004C25A8(uint64_t a1)
{
  v33 = v1;
  v2 = *(v1 + 160);
  v3 = *(v1 + 144);
  defaultLogger()();
  v4 = v2;
  v5 = v3;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();

  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v1 + 224);
  v10 = *(v1 + 208);
  v11 = *(v1 + 192);
  if (v8)
  {
    v28 = *(v1 + 160);
    v31 = *(v1 + 192);
    v12 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    *v12 = 136315394;
    v13 = [v5 credentialNonce];
    v14 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v30 = v9;
    v16 = v15;

    v17 = Data.description.getter();
    v29 = v10;
    v19 = v18;
    sub_10000B90C(v14, v16);
    v20 = sub_100141FE4(v17, v19, &v32);

    *(v12 + 4) = v20;
    *(v12 + 12) = 2080;
    v21 = [v28 deviceID];
    v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v23;

    v25 = sub_100141FE4(v22, v24, &v32);

    *(v12 + 14) = v25;
    _os_log_impl(&_mh_execute_header, v6, v7, "Successfully generated nonce in watch: %s with pairingID: %s", v12, 0x16u);
    swift_arrayDestroy();

    v30(v29, v31);
  }

  else
  {

    v9(v10, v11);
  }

  **(v1 + 152) = v5;

  v26 = *(v1 + 8);

  return v26();
}

uint64_t sub_1004C2840(uint64_t a1)
{
  v3 = v1[22];
  v2 = v1[23];
  v4 = v1[21];
  swift_willThrow();
  (*(v3 + 104))(v2, enum case for DIPError.Code.unableToGenerateNonceOnWatch(_:), v4);
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_1004CF2E4(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v5 = v1[1];

  return v5();
}

uint64_t sub_1004C29EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[31] = a6;
  v7[32] = a7;
  v7[29] = a4;
  v7[30] = a5;
  v7[27] = a2;
  v7[28] = a3;
  v7[26] = a1;
  v9 = type metadata accessor for DIPError.Code();
  v7[33] = v9;
  v7[34] = *(v9 - 8);
  v7[35] = swift_task_alloc();
  v10 = type metadata accessor for Logger();
  v7[36] = v10;
  v7[37] = *(v10 - 8);
  v7[38] = swift_task_alloc();
  v7[39] = swift_task_alloc();
  sub_1004CDE10(a5, (v7 + 18));

  return _swift_task_switch(sub_1004C2B30, 0, 0);
}

uint64_t sub_1004C2B30(uint64_t a1)
{
  v27 = v1;
  v2 = v1[27];
  defaultLogger()();
  v3 = v2;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v1[39];
  v9 = v1[36];
  v8 = v1[37];
  if (v6)
  {
    v10 = v1[27];
    v25 = v1[39];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v26 = v12;
    *v11 = 136315138;
    v13 = [v10 deviceID];
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;

    v17 = sub_100141FE4(v14, v16, &v26);

    *(v11 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v4, v5, "Trying to generate credential authorization token in phone for watch with pairingID: %s", v11, 0xCu);
    sub_10000BB78(v12);

    v18 = *(v8 + 8);
    v18(v25, v9);
  }

  else
  {

    v18 = *(v8 + 8);
    v18(v7, v9);
  }

  v1[40] = v18;
  v19 = v1[29];
  v20 = v1[28];
  isa = Data._bridgeToObjectiveC()().super.isa;
  v1[41] = isa;
  v22 = String._bridgeToObjectiveC()();
  v1[42] = v22;
  v1[2] = v1;
  v1[7] = v1 + 25;
  v1[3] = sub_1004C2DDC;
  v23 = swift_continuation_init();
  v1[17] = sub_100007224(&qword_100845E28, &qword_1006E6350);
  v1[10] = _NSConcreteStackBlock;
  v1[11] = 1107296256;
  v1[12] = sub_1004CF424;
  v1[13] = &unk_100813FB8;
  v1[14] = v23;
  [v20 generatePhoneTokenWithNonce:v19 keyBlob:isa pairingID:v22 completion:v1 + 10];

  return _swift_continuation_await(v1 + 2);
}

uint64_t sub_1004C2DDC()
{
  v1 = *(*v0 + 48);
  *(*v0 + 344) = v1;
  if (v1)
  {
    v2 = sub_1004C31A0;
  }

  else
  {
    v2 = sub_1004C2EEC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1004C2EEC()
{
  v36 = v0;
  v1 = *(v0 + 328);
  v2 = *(v0 + 216);
  v3 = *(v0 + 200);

  defaultLogger()();
  v4 = v2;
  v5 = v3;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();

  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 320);
  v10 = *(v0 + 304);
  v11 = *(v0 + 288);
  v12 = *(v0 + 240);
  if (v8)
  {
    v30 = *(v0 + 216);
    v34 = *(v0 + 288);
    v13 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    *v13 = 136315394;
    v14 = [v5 credentialAuthorizationToken];
    v32 = v9;
    v33 = v12;
    v15 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;

    v18 = Data.description.getter();
    v31 = v10;
    v20 = v19;
    sub_10000B90C(v15, v17);
    v21 = sub_100141FE4(v18, v20, &v35);

    *(v13 + 4) = v21;
    *(v13 + 12) = 2080;
    v22 = [v30 deviceID];
    v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v24;

    v26 = sub_100141FE4(v23, v25, &v35);

    *(v13 + 14) = v26;
    _os_log_impl(&_mh_execute_header, v6, v7, "Successfully generated credential authorization token in phone: %s for watch with pairingID: %s", v13, 0x16u);
    swift_arrayDestroy();

    v32(v31, v34);
    v27 = v33;
  }

  else
  {

    v9(v10, v11);
    v27 = v12;
  }

  sub_1004CDFC0(v27);
  **(v0 + 208) = v5;

  v28 = *(v0 + 8);

  return v28();
}

uint64_t sub_1004C31A0(uint64_t a1)
{
  v2 = v1[42];
  v3 = v1[41];
  v4 = v1[34];
  v5 = v1[35];
  v6 = v1[33];
  v7 = v1[30];
  swift_willThrow();

  (*(v4 + 104))(v5, enum case for DIPError.Code.unableToGenerateAuthorizationTokenOnPhone(_:), v6);
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_1004CF2E4(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  sub_1004CDFC0(v7);

  v8 = v1[1];

  return v8();
}

uint64_t sub_1004C3368(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[18] = a2;
  v3[19] = a3;
  v4 = type metadata accessor for Logger();
  v3[20] = v4;
  v3[21] = *(v4 - 8);
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();

  return _swift_task_switch(sub_1004C3434, 0, 0);
}

uint64_t sub_1004C3434(uint64_t a1)
{
  v31 = v1;
  v2 = v1[18];
  v3 = v1[19];
  defaultLogger()();
  v4 = v2;
  v5 = v3;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v1[23];
  v11 = v1[20];
  v10 = v1[21];
  if (v8)
  {
    v29 = v1[23];
    v12 = v1[18];
    v13 = v1[19];
    v28 = v1[20];
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v30 = v16;
    *v14 = 138412546;
    *(v14 + 4) = v12;
    *v15 = v12;
    *(v14 + 12) = 2080;
    v17 = v12;
    v18 = [v13 deviceID];
    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;

    v22 = sub_100141FE4(v19, v21, &v30);

    *(v14 + 14) = v22;
    _os_log_impl(&_mh_execute_header, v6, v7, "Trying to prearm watch with authorization token: %@ with pairingID: %s", v14, 0x16u);
    sub_10000BE18(v15, &unk_100833B50, &unk_1006D8FB0);

    sub_10000BB78(v16);

    v23 = *(v10 + 8);
    v23(v29, v28);
  }

  else
  {

    v23 = *(v10 + 8);
    v23(v9, v11);
  }

  v1[24] = v23;
  v25 = v1[18];
  v24 = v1[19];
  v1[2] = v1;
  v1[3] = sub_1004C3700;
  v26 = swift_continuation_init();
  v1[17] = sub_100007224(&unk_100843590, &qword_1006D8B10);
  v1[10] = _NSConcreteStackBlock;
  v1[11] = 1107296256;
  v1[12] = sub_100429100;
  v1[13] = &unk_100813F90;
  v1[14] = v26;
  [v24 prearmCredentialWithAuthorizationToken:v25 completion:v1 + 10];

  return _swift_continuation_await(v1 + 2);
}

uint64_t sub_1004C3700()
{
  v1 = *(*v0 + 48);
  *(*v0 + 200) = v1;
  if (v1)
  {
    v2 = sub_1004C3A50;
  }

  else
  {
    v2 = sub_1004C3810;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1004C3810(uint64_t a1)
{
  v29 = v1;
  v2 = v1[18];
  v3 = v1[19];
  defaultLogger()();
  v4 = v2;
  v5 = v3;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v1[24];
  v10 = v1[22];
  v11 = v1[20];
  if (v8)
  {
    v27 = v1[24];
    v12 = v1[18];
    v13 = v1[19];
    v26 = v1[22];
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v25 = v11;
    v16 = swift_slowAlloc();
    v28 = v16;
    *v14 = 138412546;
    *(v14 + 4) = v12;
    *v15 = v12;
    *(v14 + 12) = 2080;
    v17 = v12;
    v18 = [v13 deviceID];
    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;

    v22 = sub_100141FE4(v19, v21, &v28);

    *(v14 + 14) = v22;
    _os_log_impl(&_mh_execute_header, v6, v7, "Successfully prearmed watch with token: %@ with pairingID: %s", v14, 0x16u);
    sub_10000BE18(v15, &unk_100833B50, &unk_1006D8FB0);

    sub_10000BB78(v16);

    v27(v26, v25);
  }

  else
  {

    v9(v10, v11);
  }

  v23 = v1[1];

  return v23();
}

uint64_t sub_1004C3A50(uint64_t a1)
{
  swift_willThrow();

  v2 = *(v1 + 8);

  return v2();
}

void sub_1004C3AD0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = sub_10057DC18(a2, a3);
  if (!v4)
  {
    v7 = v6;
    if (v6)
    {
      v8 = [v6 keyBlob];
      if (v8)
      {
        v9 = v8;
        v10 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v12 = v11;

        v13 = [v7 baaCertificate];
        if (v13)
        {
          v14 = v13;
          v15 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v17 = v16;

          v18 = [v7 pairingID];
          if (v18)
          {
            v19 = v18;
            v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v29 = v20;

            LOWORD(v19) = [v7 version];
            v21 = [v7 requiresDeletion];

            swift_beginAccess();
            v22 = a4 + 64;
            v23 = *(v22 - 48);
            v24 = *(v22 - 40);
            v25 = *(v22 - 32);
            v26 = *(v22 - 24);
            v27 = *(v22 - 16);
            v28 = *(v22 - 8);
            *(v22 - 48) = v10;
            *(v22 - 40) = v12;
            *(v22 - 32) = v15;
            *(v22 - 24) = v17;
            *(v22 - 16) = v30;
            *(v22 - 8) = v29;
            *v22 = v19;
            *(v22 + 2) = v21 != 0;
            sub_1004CE398(v23, v24, v25, v26, v27, v28);
            return;
          }

          sub_10000B90C(v15, v17);
        }

        sub_10000B90C(v10, v12);
      }
    }
  }
}

uint64_t sub_1004C3C74()
{
  v1[2] = v0;
  v2 = type metadata accessor for Logger();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();

  return _swift_task_switch(sub_1004C3D34, 0, 0);
}

uint64_t sub_1004C3D34(uint64_t a1)
{
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Trying to delete global auth acl in watch", v4, 2u);
  }

  v6 = v1[4];
  v5 = v1[5];
  v8 = v1[2];
  v7 = v1[3];

  (*(v6 + 8))(v5, v7);
  v1[6] = *(*(v8 + OBJC_IVAR____TtC8coreidvd38IdentityWatchSessionManagementListener_remoteSessionService) + OBJC_IVAR____TtC8coreidvd8DIPWatch_currentSession);

  v9 = swift_task_alloc();
  v1[7] = v9;
  *v9 = v1;
  v9[1] = sub_1004C3E98;

  return sub_100672D6C(30.0);
}

uint64_t sub_1004C3E98()
{
  v2 = *v1;
  *(v2 + 64) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1004C3FE0, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1004C3FE0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1004C404C(uint64_t a1, uint64_t a2)
{
  v3[17] = a2;
  v3[18] = v2;
  v3[16] = a1;
  v4 = type metadata accessor for Logger();
  v3[19] = v4;
  v3[20] = *(v4 - 8);
  v3[21] = swift_task_alloc();

  return _swift_task_switch(sub_1004C4110, 0, 0);
}

uint64_t sub_1004C4110(uint64_t a1)
{
  v21 = v1;
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  v4 = os_log_type_enabled(v2, v3);
  v6 = v1[20];
  v5 = v1[21];
  v7 = v1[19];
  if (v4)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v20 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_100141FE4(0xD00000000000001CLL, 0x800000010071AE00, &v20);
    _os_log_impl(&_mh_execute_header, v2, v3, "%s called", v8, 0xCu);
    sub_10000BB78(v9);
  }

  (*(v6 + 8))(v5, v7);
  v10 = v1[17];
  v11 = *(v1[18] + OBJC_IVAR____TtC8coreidvd38IdentityWatchSessionManagementListener_biometricStore);
  v12 = swift_allocObject();
  v1[22] = v12;
  *(v12 + 16) = v11;
  v13 = *v10;
  v14 = *(v10 + 16);
  v15 = *(v10 + 32);
  *(v12 + 71) = *(v10 + 47);
  *(v12 + 56) = v15;
  *(v12 + 40) = v14;
  *(v12 + 24) = v13;
  v16 = v11;
  sub_1004CDE10(v10, (v1 + 9));
  v17 = swift_task_alloc();
  v1[23] = v17;
  *v17 = v1;
  v17[1] = sub_1004C4330;
  v18.n128_u64[0] = 30.0;

  return withTaskTimeoutHandler<A>(timeout:operation:)(v18);
}

uint64_t sub_1004C4330()
{
  *(*v1 + 192) = v0;

  if (v0)
  {
    v2 = sub_1004C44CC;
  }

  else
  {

    v2 = sub_1004C444C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1004C444C()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 16);
  v3 = *(v0 + 32);
  v4 = *(v0 + 48);
  *(v1 + 47) = *(v0 + 63);
  *(v1 + 16) = v3;
  *(v1 + 32) = v4;
  *v1 = v2;

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1004C44CC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1004C4538(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[28] = a2;
  v3[29] = a3;
  v3[27] = a1;
  v4 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  v3[30] = v4;
  v3[31] = *(v4 - 8);
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_1004C45FC, 0, 0);
}

uint64_t sub_1004C45FC()
{
  v1 = v0[28];
  isa = Data._bridgeToObjectiveC()().super.isa;
  v0[33] = isa;
  v0[2] = v0;
  v0[7] = v0 + 25;
  v0[3] = sub_1004C4734;
  v3 = swift_continuation_init();
  v0[17] = sub_100007224(&unk_100845E00, &qword_1006DAB10);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_1004B1218;
  v0[13] = &unk_100813EA0;
  v0[14] = v3;
  [v1 migratePrearmTrustBlob:isa completion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1004C4734()
{
  v1 = *(*v0 + 48);
  *(*v0 + 272) = v1;
  if (v1)
  {
    v2 = sub_1004C4D5C;
  }

  else
  {
    v2 = sub_1004C4844;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1004C4844()
{
  v1 = v0[33];
  v2 = v0[25];
  v3 = v0[26];
  v0[35] = v2;
  v0[36] = v3;

  type metadata accessor for IdentityProofingDataContext();
  swift_allocObject();
  sub_10057E28C();
  v0[37] = v4;
  v5 = v4;
  v7 = v0[31];
  v6 = v0[32];
  v9 = v0[29];
  v8 = v0[30];
  v10 = swift_allocObject();
  v0[38] = v10;
  *(v10 + 16) = v5;
  v11 = *v9;
  v12 = *(v9 + 16);
  v13 = *(v9 + 32);
  *(v10 + 71) = *(v9 + 47);
  *(v10 + 56) = v13;
  *(v10 + 40) = v12;
  *(v10 + 24) = v11;
  *(v10 + 80) = v2;
  *(v10 + 88) = v3;

  sub_1004CDE10(v9, (v0 + 18));
  sub_10000B8B8(v2, v3);
  v14 = swift_allocObject();
  v0[39] = v14;
  *(v14 + 16) = sub_1004CDEC4;
  *(v14 + 24) = v10;
  (*(v7 + 104))(v6, enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:), v8);

  v15 = swift_task_alloc();
  v0[40] = v15;
  *v15 = v0;
  v15[1] = sub_1004C4A7C;
  v16 = v0[32];

  return NSManagedObjectContext.perform<A>(schedule:_:)(v15, v16, sub_100306A5C, v14, &type metadata for () + 8);
}

uint64_t sub_1004C4A7C()
{
  v2 = *v1;
  *(*v1 + 328) = v0;

  if (v0)
  {
    (*(v2[31] + 8))(v2[32], v2[30]);

    v3 = sub_1004C4CD0;
  }

  else
  {
    v5 = v2[31];
    v4 = v2[32];
    v6 = v2[30];

    (*(v5 + 8))(v4, v6);
    v3 = sub_1004C4C08;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1004C4C08()
{
  v1 = v0[36];
  v2 = v0[35];
  v3 = v0[29];
  v4 = v0[27];

  v5 = *(v3 + 16);
  v6 = *(v3 + 40);
  v7 = *(v3 + 50);
  v8 = *(v3 + 24);
  *v4 = v2;
  *(v4 + 8) = v1;
  *(v4 + 16) = v5;
  *(v4 + 24) = v8;
  *(v4 + 40) = v6;
  *(v4 + 48) = 2;
  *(v4 + 50) = v7;
  sub_10000B8B8(v5, v8);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1004C4CD0()
{
  v2 = v0[35];
  v1 = v0[36];

  sub_10000B90C(v2, v1);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1004C4D5C(uint64_t a1)
{
  v2 = *(v1 + 264);
  swift_willThrow();

  v3 = *(v1 + 8);

  return v3();
}

void sub_1004C4DD4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v45 = a3;
  v46 = a4;
  v6 = type metadata accessor for Logger();
  v44 = *(v6 - 8);
  v7 = __chkstk_darwin(v6);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v39 - v10;
  v12 = type metadata accessor for DIPError.Code();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10057DC18(*(a2 + 32), *(a2 + 40));
  if (v4)
  {
    return;
  }

  v43 = v11;
  v17 = v45;
  v18 = v46;
  v40 = v9;
  if (!v16)
  {
    (*(v13 + 104))(v15, enum case for DIPError.Code.migrationMissingWatchPrearmTrust(_:), v12);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1004CF2E4(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    return;
  }

  v41 = 0;
  v42 = v16;
  v19 = v43;
  defaultLogger()();
  v20 = v17;
  sub_10000B8B8(v17, v18);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.debug.getter();
  if (!os_log_type_enabled(v21, v22))
  {
    sub_10000B90C(v20, v18);

    v27 = *(v44 + 8);
    v28 = v19;
    goto LABEL_17;
  }

  v23 = swift_slowAlloc();
  v39 = swift_slowAlloc();
  v47 = v39;
  *v23 = 136315394;
  *(v23 + 4) = sub_100141FE4(0xD00000000000001CLL, 0x800000010071AE00, &v47);
  *(v23 + 12) = 2048;
  v24 = v18 >> 62;
  v25 = v44;
  if ((v18 >> 62) > 1)
  {
    if (v24 != 2)
    {
      v26 = 0;
      goto LABEL_16;
    }

    v30 = *(v20 + 16);
    v29 = *(v20 + 24);
    v31 = __OFSUB__(v29, v30);
    v26 = v29 - v30;
    if (!v31)
    {
      goto LABEL_16;
    }

    __break(1u);
LABEL_13:
    LODWORD(v26) = HIDWORD(v20) - v20;
    if (__OFSUB__(HIDWORD(v20), v20))
    {
      __break(1u);
      return;
    }

    v26 = v26;
    goto LABEL_16;
  }

  if (v24)
  {
    goto LABEL_13;
  }

  v26 = BYTE6(v18);
LABEL_16:
  *(v23 + 14) = v26;
  sub_10000B90C(v20, v18);
  _os_log_impl(&_mh_execute_header, v21, v22, "%s updated blob size = %ld", v23, 0x16u);
  sub_10000BB78(v39);

  v27 = *(v25 + 8);
  v28 = v43;
LABEL_17:
  v27(v28, v6);
  v32 = v42;
  sub_1005806A0(v20, v18, 2);
  v33 = v41;
  sub_10057BA64();
  if (v33)
  {
  }

  else
  {
    v34 = v40;
    defaultLogger()();
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v47 = v38;
      *v37 = 136315138;
      *(v37 + 4) = sub_100141FE4(0xD00000000000001CLL, 0x800000010071AE00, &v47);
      _os_log_impl(&_mh_execute_header, v35, v36, "%s updated blob saved", v37, 0xCu);
      sub_10000BB78(v38);
    }

    v27(v34, v6);
  }
}

uint64_t sub_1004C532C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[21] = a4;
  v5[22] = v4;
  v5[19] = a2;
  v5[20] = a3;
  v5[18] = a1;
  v6 = type metadata accessor for DIPError.Code();
  v5[23] = v6;
  v5[24] = *(v6 - 8);
  v5[25] = swift_task_alloc();

  return _swift_task_switch(sub_1004C53F4, 0, 0);
}

uint64_t sub_1004C53F4()
{
  v1 = swift_task_alloc();
  *(v0 + 208) = v1;
  *v1 = v0;
  v1[1] = sub_1004C5490;

  return sub_1006738C8();
}

uint64_t sub_1004C5490(uint64_t a1)
{
  *(*v1 + 216) = a1;

  return _swift_task_switch(sub_1004C5590, 0, 0);
}

uint64_t sub_1004C5590()
{
  v1 = v0[27];
  if (v1)
  {
    v3 = v0[18];
    v2 = v0[19];
    v4 = String._bridgeToObjectiveC()();
    v0[28] = v4;
    v0[2] = v0;
    v0[3] = sub_1004C5820;
    v5 = swift_continuation_init();
    v0[17] = sub_100007224(&unk_100843590, &qword_1006D8B10);
    v0[10] = _NSConcreteStackBlock;
    v0[11] = 1107296256;
    v0[12] = sub_100429100;
    v0[13] = &unk_100813E50;
    v0[14] = v5;
    [v1 addNotificationWithType:v3 documentType:v2 issuerName:v4 completion:v0 + 10];

    return _swift_continuation_await(v0 + 2);
  }

  else
  {
    (*(v0[24] + 104))(v0[25], enum case for DIPError.Code.unableToEstablishSessionWithWatch(_:), v0[23]);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1004CF2E4(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_1004C5820()
{
  v1 = *(*v0 + 48);
  *(*v0 + 232) = v1;
  if (v1)
  {
    v2 = sub_1004C59A4;
  }

  else
  {
    v2 = sub_1004C5930;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1004C5930()
{
  v1 = *(v0 + 216);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1004C59A4(uint64_t a1)
{
  v2 = v1[28];
  v3 = v1[27];
  swift_willThrow();

  v4 = v1[1];

  return v4();
}

uint64_t sub_1004C5A24()
{
  v1[4] = v0;
  v2 = type metadata accessor for DIPError.Code();
  v1[5] = v2;
  v1[6] = *(v2 - 8);
  v1[7] = swift_task_alloc();

  return _swift_task_switch(sub_1004C5AE4, 0, 0);
}

uint64_t sub_1004C5AE4()
{
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  v1[1] = sub_1004C5B80;

  return sub_1006738C8();
}

uint64_t sub_1004C5B80(uint64_t a1)
{
  *(*v1 + 72) = a1;

  return _swift_task_switch(sub_1004C5C80, 0, 0);
}

uint64_t sub_1004C5C80()
{
  v1 = v0[9];
  if (v1)
  {
    v2 = swift_allocObject();
    v0[10] = v2;
    *(v2 + 16) = v1;
    v3 = v1;
    v4 = swift_task_alloc();
    v0[11] = v4;
    *v4 = v0;
    v4[1] = sub_1004C5ECC;
    v5.n128_u64[0] = 30.0;

    return withTaskTimeoutHandler<A>(timeout:operation:)(v5);
  }

  else
  {
    (*(v0[6] + 104))(v0[7], enum case for DIPError.Code.unableToEstablishSessionWithWatch(_:), v0[5]);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1004CF2E4(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_1004C5ECC()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_1004C606C;
  }

  else
  {

    v2 = sub_1004C5FE8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1004C5FE8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  v3 = *(v0 + 8);

  return v3(v1, v2);
}

uint64_t sub_1004C606C()
{
  v1 = *(v0 + 72);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1004C60DC(uint64_t a1, uint64_t a2)
{
  *(v2 + 160) = a1;
  *(v2 + 168) = a2;
  return _swift_task_switch(sub_1004C60FC, 0, 0);
}

uint64_t sub_1004C60FC()
{
  v1 = v0[21];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1004C6218;
  v2 = swift_continuation_init();
  v0[17] = sub_100007224(&unk_100845DF0, &unk_1006BFA20);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_100672A4C;
  v0[13] = &unk_100813E28;
  v0[14] = v2;
  [v1 pairedWatchSEIDWithCompletion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1004C6218()
{
  v1 = *(*v0 + 48);
  *(*v0 + 176) = v1;
  if (v1)
  {
    v2 = sub_1001799D4;
  }

  else
  {
    v2 = sub_1004C6328;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1004C6328()
{
  v2 = *(v0 + 152);
  v1 = *(v0 + 160);
  *v1 = *(v0 + 144);
  v1[1] = v2;
  return (*(v0 + 8))();
}

uint64_t sub_1004C6444(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = sub_100041F04;

  return sub_1004C6718(a5);
}

uint64_t sub_1004C6718(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = type metadata accessor for DIPError.Code();
  v2[7] = v3;
  v2[8] = *(v3 - 8);
  v2[9] = swift_task_alloc();
  v4 = type metadata accessor for DIPError();
  v2[10] = v4;
  v2[11] = *(v4 - 8);
  v2[12] = swift_task_alloc();
  sub_100007224(&unk_100845860, &unk_1006BF9D0);
  v2[13] = swift_task_alloc();
  v5 = type metadata accessor for Logger();
  v2[14] = v5;
  v2[15] = *(v5 - 8);
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v6 = type metadata accessor for UUID();
  v2[18] = v6;
  v2[19] = *(v6 - 8);
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v2[22] = sub_100007224(&unk_100845DD0, &unk_1006E62C8);
  v2[23] = swift_task_alloc();
  sub_100007224(&unk_100849F90, &qword_1006DEAA0);
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();

  return _swift_task_switch(sub_1004C69C8, 0, 0);
}

uint64_t sub_1004C69C8()
{
  v1 = v0[26];
  v3 = v0[22];
  v2 = v0[23];
  v4 = v0[18];
  v5 = v0[19];
  v6 = v0[5];
  v7 = v0[6];
  v8 = *(v5 + 16);
  v0[27] = v8;
  v0[28] = (v5 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v8(v1, v6, v4);
  (*(v5 + 56))(v1, 0, 1, v4);
  v9 = OBJC_IVAR____TtC8coreidvd38IdentityWatchSessionManagementListener_rangingSessionID;
  v0[29] = OBJC_IVAR____TtC8coreidvd38IdentityWatchSessionManagementListener_rangingSessionID;
  swift_beginAccess();
  v10 = *(v3 + 48);
  sub_10000BBC4(v1, v2, &unk_100849F90, &qword_1006DEAA0);
  sub_10000BBC4(v7 + v9, v2 + v10, &unk_100849F90, &qword_1006DEAA0);
  v11 = *(v5 + 48);
  v0[30] = v11;
  v0[31] = (v5 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v11(v2, 1, v4) == 1)
  {
    v12 = v0[18];
    sub_10000BE18(v0[26], &unk_100849F90, &qword_1006DEAA0);
    if (v11(v2 + v10, 1, v12) == 1)
    {
      sub_10000BE18(v0[23], &unk_100849F90, &qword_1006DEAA0);
LABEL_10:
      v33 = swift_task_alloc();
      v0[32] = v33;
      *v33 = v0;
      v33[1] = sub_1004C70F4;

      return sub_1006738C8();
    }

    goto LABEL_6;
  }

  v13 = v0[18];
  sub_10000BBC4(v0[23], v0[25], &unk_100849F90, &qword_1006DEAA0);
  v14 = v11(v2 + v10, 1, v13);
  v15 = v0[25];
  v16 = v0[26];
  if (v14 == 1)
  {
    v17 = v0[18];
    v18 = v0[19];
    sub_10000BE18(v0[26], &unk_100849F90, &qword_1006DEAA0);
    (*(v18 + 8))(v15, v17);
LABEL_6:
    sub_10000BE18(v0[23], &unk_100845DD0, &unk_1006E62C8);
    goto LABEL_7;
  }

  v27 = v0[23];
  v28 = v0[21];
  v29 = v0[18];
  v30 = v0[19];
  (*(v30 + 32))(v28, v2 + v10, v29);
  sub_1004CF2E4(&qword_100845DE8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v31 = dispatch thunk of static Equatable.== infix(_:_:)();
  v32 = *(v30 + 8);
  v32(v28, v29);
  sub_10000BE18(v16, &unk_100849F90, &qword_1006DEAA0);
  v32(v15, v29);
  sub_10000BE18(v27, &unk_100849F90, &qword_1006DEAA0);
  if (v31)
  {
    goto LABEL_10;
  }

LABEL_7:
  v19 = v0[30];
  v20 = v0[29];
  v21 = v0[24];
  v22 = v0[18];
  v23 = v0[6];
  _StringGuts.grow(_:)(77);
  v24._countAndFlagsBits = 0xD000000000000034;
  v24._object = 0x800000010071AB10;
  String.append(_:)(v24);
  sub_10000BBC4(v23 + v20, v21, &unk_100849F90, &qword_1006DEAA0);
  if (v19(v21, 1, v22))
  {
    sub_10000BE18(v0[24], &unk_100849F90, &qword_1006DEAA0);
    v25 = 0;
    v26 = 0xE000000000000000;
  }

  else
  {
    v35 = v0[24];
    v36 = v0[21];
    v37 = v0[18];
    v38 = v0[19];
    (v0[27])(v36, v35, v37);
    sub_10000BE18(v35, &unk_100849F90, &qword_1006DEAA0);
    v39 = UUID.uuidString.getter();
    v26 = v40;
    (*(v38 + 8))(v36, v37);
    v25 = v39;
  }

  v41 = v0[16];
  v53 = v0[15];
  v54 = v0[14];
  v42 = v0[11];
  v43 = v0[9];
  v51 = v0[12];
  v52 = v0[10];
  v45 = v0[7];
  v44 = v0[8];
  v46 = v26;
  String.append(_:)(*&v25);

  v47._object = 0x800000010071AB50;
  v47._countAndFlagsBits = 0xD000000000000015;
  String.append(_:)(v47);
  sub_1004CF2E4(&qword_100845DE0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v48._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v48);

  (*(v44 + 104))(v43, enum case for DIPError.Code.rangingSessionIDMismatchOnDidComplete(_:), v45);
  sub_1000402AC(_swiftEmptyArrayStorage);
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  sub_1004CF2E4(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  (*(v42 + 16))(v49, v51, v52);
  defaultLogger()();
  DIPRecordError(_:message:log:)();
  (*(v53 + 8))(v41, v54);
  (*(v42 + 8))(v51, v52);

  v50 = v0[1];

  return v50();
}

uint64_t sub_1004C70F4(uint64_t a1)
{
  *(*v1 + 264) = a1;

  return _swift_task_switch(sub_1004C71F4, 0, 0);
}

uint64_t sub_1004C71F4()
{
  v64 = v0;
  v1 = *(v0 + 264);
  if (v1)
  {
    v2 = *(v0 + 216);
    v3 = *(v0 + 160);
    v4 = *(v0 + 144);
    v5 = *(v0 + 40);
    v6 = [*(v0 + 264) deviceID];

    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v59 = v8;
    v61 = v7;

    defaultLogger()();
    v2(v3, v5, v4);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.debug.getter();
    v11 = os_log_type_enabled(v9, v10);
    v13 = *(v0 + 152);
    v12 = *(v0 + 160);
    v14 = *(v0 + 136);
    v15 = *(v0 + 144);
    v16 = *(v0 + 112);
    v17 = *(v0 + 120);
    if (v11)
    {
      v18 = swift_slowAlloc();
      v57 = v14;
      v19 = swift_slowAlloc();
      v63[0] = v19;
      *v18 = 136315138;
      v55 = v16;
      v20 = UUID.uuidString.getter();
      v54 = v10;
      v22 = v21;
      (*(v13 + 8))(v12, v15);
      v23 = sub_100141FE4(v20, v22, v63);

      *(v18 + 4) = v23;
      _os_log_impl(&_mh_execute_header, v9, v54, "Completed secure ranging with watch with sessionID: %s", v18, 0xCu);
      sub_10000BB78(v19);

      (*(v17 + 8))(v57, v55);
    }

    else
    {

      (*(v13 + 8))(v12, v15);
      (*(v17 + 8))(v14, v16);
    }

    v32 = *(v0 + 104);
    v33 = *(v0 + 48);
    v34 = type metadata accessor for TaskPriority();
    (*(*(v34 - 8) + 56))(v32, 1, 1, v34);
    v35 = swift_allocObject();
    v35[2] = 0;
    v35[3] = 0;
    v35[4] = v33;
    v35[5] = v61;
    v35[6] = v59;
    v36 = v33;
    sub_1003E653C(0, 0, v32, &unk_1006E62E8, v35);
  }

  else
  {
    v24 = *(v0 + 240);
    v25 = *(v0 + 232);
    v26 = *(v0 + 192);
    v27 = *(v0 + 144);
    v28 = *(v0 + 48);
    v63[0] = 0;
    v63[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(77);
    v29._countAndFlagsBits = 0xD000000000000034;
    v29._object = 0x800000010071AB10;
    String.append(_:)(v29);
    sub_10000BBC4(v28 + v25, v26, &unk_100849F90, &qword_1006DEAA0);
    if (v24(v26, 1, v27))
    {
      sub_10000BE18(*(v0 + 192), &unk_100849F90, &qword_1006DEAA0);
      v30 = 0;
      v31 = 0xE000000000000000;
    }

    else
    {
      v37 = *(v0 + 192);
      v38 = *(v0 + 168);
      v39 = *(v0 + 144);
      v40 = *(v0 + 152);
      (*(v0 + 216))(v38, v37, v39);
      sub_10000BE18(v37, &unk_100849F90, &qword_1006DEAA0);
      v41 = UUID.uuidString.getter();
      v31 = v42;
      (*(v40 + 8))(v38, v39);
      v30 = v41;
    }

    v43 = *(v0 + 128);
    v60 = *(v0 + 120);
    v62 = *(v0 + 112);
    v44 = *(v0 + 88);
    v45 = *(v0 + 72);
    v56 = *(v0 + 96);
    v58 = *(v0 + 80);
    v47 = *(v0 + 56);
    v46 = *(v0 + 64);
    v48 = v31;
    String.append(_:)(*&v30);

    v49._object = 0x800000010071AB50;
    v49._countAndFlagsBits = 0xD000000000000015;
    String.append(_:)(v49);
    sub_1004CF2E4(&qword_100845DE0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v50._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v50);

    (*(v46 + 104))(v45, enum case for DIPError.Code.rangingSessionIDMismatchOnDidComplete(_:), v47);
    sub_1000402AC(_swiftEmptyArrayStorage);
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    sub_1004CF2E4(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    (*(v44 + 16))(v51, v56, v58);
    defaultLogger()();
    DIPRecordError(_:message:log:)();
    (*(v60 + 8))(v43, v62);
    (*(v44 + 8))(v56, v58);
  }

  v52 = *(v0 + 8);

  return v52();
}

uint64_t sub_1004C7838(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = swift_task_alloc();
  *(v6 + 16) = v9;
  *v9 = v6;
  v9[1] = sub_100027B9C;

  return sub_1004C7B4C(a5, a6);
}

uint64_t sub_1004C7B4C(uint64_t a1, uint64_t a2)
{
  v3[14] = a2;
  v3[15] = v2;
  v3[13] = a1;
  sub_100007224(&unk_100845860, &unk_1006BF9D0);
  v3[16] = swift_task_alloc();
  v4 = type metadata accessor for DIPError.Code();
  v3[17] = v4;
  v3[18] = *(v4 - 8);
  v3[19] = swift_task_alloc();
  v5 = type metadata accessor for DIPError();
  v3[20] = v5;
  v3[21] = *(v5 - 8);
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  v3[25] = v6;
  v3[26] = *(v6 - 8);
  v3[27] = swift_task_alloc();
  v3[28] = swift_task_alloc();
  v7 = type metadata accessor for UUID();
  v3[29] = v7;
  v3[30] = *(v7 - 8);
  v3[31] = swift_task_alloc();
  v3[32] = sub_100007224(&unk_100845DD0, &unk_1006E62C8);
  v3[33] = swift_task_alloc();
  sub_100007224(&unk_100849F90, &qword_1006DEAA0);
  v3[34] = swift_task_alloc();
  v3[35] = swift_task_alloc();
  v3[36] = swift_task_alloc();

  return _swift_task_switch(sub_1004C7E0C, 0, 0);
}

uint64_t sub_1004C7E0C()
{
  v1 = v0[36];
  v3 = v0[32];
  v2 = v0[33];
  v4 = v0[29];
  v5 = v0[30];
  v6 = v0[15];
  v7 = v0[13];
  v8 = *(v5 + 16);
  v0[37] = v8;
  v0[38] = (v5 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v8(v1, v7, v4);
  (*(v5 + 56))(v1, 0, 1, v4);
  v9 = OBJC_IVAR____TtC8coreidvd38IdentityWatchSessionManagementListener_rangingSessionID;
  v0[39] = OBJC_IVAR____TtC8coreidvd38IdentityWatchSessionManagementListener_rangingSessionID;
  swift_beginAccess();
  v10 = *(v3 + 48);
  sub_10000BBC4(v1, v2, &unk_100849F90, &qword_1006DEAA0);
  sub_10000BBC4(v6 + v9, v2 + v10, &unk_100849F90, &qword_1006DEAA0);
  v11 = *(v5 + 48);
  v0[40] = v11;
  v0[41] = (v5 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v11(v2, 1, v4) == 1)
  {
    v12 = v0[29];
    sub_10000BE18(v0[36], &unk_100849F90, &qword_1006DEAA0);
    if (v11(v2 + v10, 1, v12) == 1)
    {
      sub_10000BE18(v0[33], &unk_100849F90, &qword_1006DEAA0);
LABEL_10:
      v33 = swift_task_alloc();
      v0[42] = v33;
      *v33 = v0;
      v33[1] = sub_1004C854C;

      return sub_1006738C8();
    }

    goto LABEL_6;
  }

  v13 = v0[29];
  sub_10000BBC4(v0[33], v0[35], &unk_100849F90, &qword_1006DEAA0);
  v14 = v11(v2 + v10, 1, v13);
  v15 = v0[35];
  v16 = v0[36];
  if (v14 == 1)
  {
    v17 = v0[29];
    v18 = v0[30];
    sub_10000BE18(v0[36], &unk_100849F90, &qword_1006DEAA0);
    (*(v18 + 8))(v15, v17);
LABEL_6:
    sub_10000BE18(v0[33], &unk_100845DD0, &unk_1006E62C8);
    goto LABEL_7;
  }

  v27 = v0[33];
  v29 = v0[30];
  v28 = v0[31];
  v30 = v0[29];
  (*(v29 + 32))(v28, v2 + v10, v30);
  sub_1004CF2E4(&qword_100845DE8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v31 = dispatch thunk of static Equatable.== infix(_:_:)();
  v32 = *(v29 + 8);
  v32(v28, v30);
  sub_10000BE18(v16, &unk_100849F90, &qword_1006DEAA0);
  v32(v15, v30);
  sub_10000BE18(v27, &unk_100849F90, &qword_1006DEAA0);
  if (v31)
  {
    goto LABEL_10;
  }

LABEL_7:
  v19 = v0[40];
  v20 = v0[39];
  v21 = v0[34];
  v22 = v0[29];
  v23 = v0[15];
  _StringGuts.grow(_:)(77);
  v24._countAndFlagsBits = 0xD000000000000034;
  v24._object = 0x800000010071AB10;
  String.append(_:)(v24);
  sub_10000BBC4(v23 + v20, v21, &unk_100849F90, &qword_1006DEAA0);
  if (v19(v21, 1, v22))
  {
    sub_10000BE18(v0[34], &unk_100849F90, &qword_1006DEAA0);
    v25 = 0;
    v26 = 0xE000000000000000;
  }

  else
  {
    v35 = v0[34];
    v37 = v0[30];
    v36 = v0[31];
    v38 = v0[29];
    (v0[37])(v36, v35, v38);
    sub_10000BE18(v35, &unk_100849F90, &qword_1006DEAA0);
    v39 = UUID.uuidString.getter();
    v26 = v40;
    (*(v37 + 8))(v36, v38);
    v25 = v39;
  }

  v41 = v0[27];
  v53 = v0[26];
  v54 = v0[25];
  v42 = v0[21];
  v43 = v0[19];
  v51 = v0[22];
  v52 = v0[20];
  v45 = v0[17];
  v44 = v0[18];
  v46 = v26;
  String.append(_:)(*&v25);

  v47._object = 0x800000010071AB50;
  v47._countAndFlagsBits = 0xD000000000000015;
  String.append(_:)(v47);
  sub_1004CF2E4(&qword_100845DE0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v48._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v48);

  (*(v44 + 104))(v43, enum case for DIPError.Code.rangingSessionIDMismatchOnDidFail(_:), v45);
  sub_1000402AC(_swiftEmptyArrayStorage);
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  sub_1004CF2E4(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  (*(v42 + 16))(v49, v51, v52);
  defaultLogger()();
  DIPRecordError(_:message:log:)();
  (*(v53 + 8))(v41, v54);
  (*(v42 + 8))(v51, v52);

  v50 = v0[1];

  return v50();
}

uint64_t sub_1004C854C(uint64_t a1)
{
  *(*v1 + 344) = a1;

  return _swift_task_switch(sub_1004C864C, 0, 0);
}

void sub_1004C864C()
{
  v1 = *(v0 + 344);
  if (!v1)
  {
    v42 = *(v0 + 320);
    v43 = *(v0 + 312);
    v44 = *(v0 + 272);
    v45 = *(v0 + 232);
    v46 = *(v0 + 120);
    _StringGuts.grow(_:)(77);
    v47._countAndFlagsBits = 0xD000000000000034;
    v47._object = 0x800000010071AB10;
    String.append(_:)(v47);
    sub_10000BBC4(v46 + v43, v44, &unk_100849F90, &qword_1006DEAA0);
    if (v42(v44, 1, v45))
    {
      sub_10000BE18(*(v0 + 272), &unk_100849F90, &qword_1006DEAA0);
      v48 = 0;
      v49 = 0xE000000000000000;
    }

    else
    {
      v75 = *(v0 + 272);
      v77 = *(v0 + 240);
      v76 = *(v0 + 248);
      v78 = *(v0 + 232);
      (*(v0 + 296))(v76, v75, v78);
      sub_10000BE18(v75, &unk_100849F90, &qword_1006DEAA0);
      v79 = UUID.uuidString.getter();
      v49 = v80;
      (*(v77 + 8))(v76, v78);
      v48 = v79;
    }

    v81 = *(v0 + 216);
    v106 = *(v0 + 208);
    v108 = *(v0 + 200);
    v82 = *(v0 + 168);
    v83 = *(v0 + 152);
    v102 = *(v0 + 176);
    v104 = *(v0 + 160);
    v85 = *(v0 + 136);
    v84 = *(v0 + 144);
    v86 = v49;
    String.append(_:)(*&v48);

    v87._countAndFlagsBits = 0xD000000000000015;
    v87._object = 0x800000010071AB50;
    String.append(_:)(v87);
    sub_1004CF2E4(&qword_100845DE0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v35 = v0;
    v88._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v88);

    (*(v84 + 104))(v83, enum case for DIPError.Code.rangingSessionIDMismatchOnDidFail(_:), v85);
    sub_1000402AC(_swiftEmptyArrayStorage);
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    sub_1004CF2E4(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    (*(v82 + 16))(v89, v102, v104);
    defaultLogger()();
    DIPRecordError(_:message:log:)();
    (*(v106 + 8))(v81, v108);
    (*(v82 + 8))(v102, v104);
LABEL_17:

    goto LABEL_18;
  }

  v2 = [*(v0 + 344) deviceID];

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  v6 = _convertErrorToNSError(_:)();
  v7 = [v6 code];

  if ((v7 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_22;
  }

  if (HIDWORD(v7))
  {
LABEL_22:
    __break(1u);
    return;
  }

  v105 = v5;
  defaultLogger()();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 67109120;
    *(v10 + 4) = v7;
    _os_log_impl(&_mh_execute_header, v8, v9, " SFError : %u", v10, 8u);
  }

  v11 = *(v0 + 224);
  v12 = *(v0 + 200);
  v13 = *(v0 + 208);

  v14 = *(v13 + 8);
  v14(v11, v12);
  v107 = *(v0 + 216);
  if (v7 != 15)
  {
    v101 = v14;
    v99 = *(v0 + 168);
    v96 = *(v0 + 184);
    v97 = *(v0 + 160);
    v50 = *(v0 + 144);
    v51 = *(v0 + 152);
    v52 = *(v0 + 136);

    _StringGuts.grow(_:)(136);
    v53._countAndFlagsBits = 0xD000000000000073;
    v53._object = 0x800000010071ABB0;
    String.append(_:)(v53);
    swift_getErrorValue();
    v54._countAndFlagsBits = Error.localizedDescription.getter();
    String.append(_:)(v54);

    v55._countAndFlagsBits = 0xD000000000000011;
    v55._object = 0x800000010071AC30;
    String.append(_:)(v55);
    v56 = SFAuthenticationErrorCodeToString();
    v57 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v59 = v58;

    v60._countAndFlagsBits = v57;
    v60._object = v59;
    String.append(_:)(v60);

    (*(v50 + 104))(v51, enum case for DIPError.Code.failedToCompleteSecureRangingWithWatch(_:), v52);
    sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
    v61 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
    v62 = (*(*v61 + 80) + 32) & ~*(*v61 + 80);
    v63 = swift_allocObject();
    *(v63 + 16) = xmmword_1006BF520;
    v64 = v63 + v62;
    v65 = (v64 + v61[14]);
    v66 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
    v67 = type metadata accessor for DIPError.PropertyKey();
    (*(*(v67 - 8) + 104))(v64, v66, v67);
    v68 = _convertErrorToNSError(_:)();
    v69 = [v68 code];

    v65[3] = &type metadata for Int;
    v65[4] = &protocol witness table for Int;
    *v65 = v69;
    sub_10003C9C0(v63);
    swift_setDeallocating();
    v35 = v0;
    sub_10000BE18(v64, &qword_1008341D0, &unk_1006BF8D0);
    swift_deallocClassInstance();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    sub_1004CF2E4(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    (*(v99 + 16))(v70, v96, v97);
    defaultLogger()();
    v71 = *(v0 + 216);
    v72 = *(v0 + 200);
    v73 = *(v0 + 184);
    v74 = *(v0 + 160);
    if (v7 == 12 || v7 == 24)
    {
      DIPLogError(_:message:log:)();
    }

    else
    {
      DIPRecordError(_:message:log:)();
    }

    v101(v71, v72);
    (*(v99 + 8))(v73, v74);
    goto LABEL_17;
  }

  v93 = *(v0 + 168);
  v94 = *(v0 + 200);
  v91 = *(v0 + 192);
  v92 = *(v0 + 160);
  v15 = *(v0 + 144);
  v16 = *(v0 + 152);
  v17 = *(v0 + 136);
  v98 = *(v0 + 128);
  v100 = v3;
  v95 = *(v0 + 120);
  _StringGuts.grow(_:)(119);
  v18._countAndFlagsBits = 0xD000000000000062;
  v18._object = 0x800000010071AC50;
  String.append(_:)(v18);
  swift_getErrorValue();
  v19._countAndFlagsBits = Error.localizedDescription.getter();
  String.append(_:)(v19);

  v20._countAndFlagsBits = 0xD000000000000011;
  v20._object = 0x800000010071AC30;
  String.append(_:)(v20);
  v21 = SFAuthenticationErrorCodeToString();
  v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v24 = v23;

  v25._countAndFlagsBits = v22;
  v25._object = v24;
  String.append(_:)(v25);

  v103 = v0;
  (*(v15 + 104))(v16, enum case for DIPError.Code.watchSecureRangeErrorAndStillPrearming(_:), v17);
  sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
  v26 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
  v27 = (*(*v26 + 80) + 32) & ~*(*v26 + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1006BF520;
  v29 = v28 + v27;
  v30 = (v28 + v27 + v26[14]);
  v31 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
  v32 = type metadata accessor for DIPError.PropertyKey();
  (*(*(v32 - 8) + 104))(v29, v31, v32);
  v33 = _convertErrorToNSError(_:)();
  v34 = [v33 code];

  v30[3] = &type metadata for Int;
  v30[4] = &protocol witness table for Int;
  *v30 = v34;
  sub_10003C9C0(v28);
  swift_setDeallocating();
  sub_10000BE18(v29, &qword_1008341D0, &unk_1006BF8D0);
  swift_deallocClassInstance();
  v35 = v103;
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  sub_1004CF2E4(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  (*(v93 + 16))(v36, v91, v92);
  defaultLogger()();
  DIPRecordError(_:message:log:)();
  v14(v107, v94);

  v37 = *&v95[OBJC_IVAR____TtC8coreidvd38IdentityWatchSessionManagementListener_rangingManager];
  isa = UUID._bridgeToObjectiveC()().super.isa;
  [v37 cancelAuthenticationSessionWithID:{isa, 0xD000000000000033, 0x800000010071AB70, 709}];

  v39 = type metadata accessor for TaskPriority();
  (*(*(v39 - 8) + 56))(v98, 1, 1, v39);
  v40 = swift_allocObject();
  v40[2] = 0;
  v40[3] = 0;
  v40[4] = v95;
  v40[5] = v100;
  v40[6] = v105;
  v41 = v95;
  sub_1003E653C(0, 0, v98, &unk_1006E62E0, v40);

  (*(v93 + 8))(v91, v92);
LABEL_18:

  v90 = *(v35 + 8);

  v90();
}

void sub_1004C93DC(uint64_t a1, uint64_t a2, void *a3)
{
  sub_10057B404(a2, a3);
  if (!v3)
  {
    sub_1005783D4();
  }
}

id sub_1004C9440()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IdentityWatchSessionManagementListener(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for IdentityWatchSessionManagementListener(uint64_t a1)
{
  result = qword_100845DB8;
  if (!qword_100845DB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1004C9588(uint64_t a1)
{
  sub_1004C9654(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1004C9654(uint64_t a1)
{
  if (!qword_100845DC8)
  {
    type metadata accessor for UUID();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_100845DC8);
    }
  }
}

void *sub_1004C96D4@<X0>(void *a1@<X0>, void *(*a2)(uint64_t *__return_ptr, void)@<X1>, void *a3@<X8>)
{
  result = a2(&v6, *a1);
  if (!v3)
  {
    *a3 = v6;
  }

  return result;
}

uint64_t sub_1004C971C(uint64_t a1, uint64_t *a2, int *a3)
{
  v5 = *a2;
  v8 = (a3 + *a3);
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_100027B9C;

  return v8(a1, v5);
}

uint64_t sub_1004C9820(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  v4 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  v3[8] = v4;
  v3[9] = *(v4 - 8);
  v3[10] = swift_task_alloc();
  v5 = type metadata accessor for Logger();
  v3[11] = v5;
  v3[12] = *(v5 - 8);
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();

  return _swift_task_switch(sub_1004C994C, 0, 0);
}

uint64_t sub_1004C994C(uint64_t a1)
{
  v29 = v1;
  defaultLogger()();

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();

  v4 = os_log_type_enabled(v2, v3);
  v5 = v1[14];
  v6 = v1[11];
  v7 = v1[12];
  if (v4)
  {
    v9 = v1[6];
    v8 = v1[7];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v28 = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_100141FE4(v9, v8, &v28);
    _os_log_impl(&_mh_execute_header, v2, v3, "Trying to retrieve prearm trust key for watch with pairingID: %s", v10, 0xCu);
    sub_10000BB78(v11);
  }

  v12 = *(v7 + 8);
  v12(v5, v6);
  v1[15] = v12;
  v13 = swift_allocObject();
  v1[16] = v13;
  type metadata accessor for IdentityProofingDataContext();
  *(v13 + 16) = 0u;
  *(v13 + 32) = 0u;
  *(v13 + 48) = 0u;
  *(v13 + 63) = 0;
  swift_allocObject();
  sub_10057E28C();
  v1[17] = v14;
  v15 = v1[9];
  v27 = v1[10];
  v17 = v1[7];
  v16 = v1[8];
  v18 = v1[6];
  v19 = v14;
  v20 = swift_allocObject();
  v1[18] = v20;
  v20[2] = v19;
  v20[3] = v18;
  v20[4] = v17;
  v20[5] = v13;
  v21 = swift_allocObject();
  v1[19] = v21;
  *(v21 + 16) = sub_1004CE340;
  *(v21 + 24) = v20;
  v22 = enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:);
  v23 = *(v15 + 104);

  v23(v27, v22, v16);

  v24 = swift_task_alloc();
  v1[20] = v24;
  *v24 = v1;
  v24[1] = sub_1004C9D5C;
  v25 = v1[10];

  return NSManagedObjectContext.perform<A>(schedule:_:)(v24, v25, sub_1004CF3BC, v21, &type metadata for () + 8);
}

uint64_t sub_1004C9D5C()
{
  v2 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {
    (*(v2[9] + 8))(v2[10], v2[8]);

    v3 = sub_1004CA004;
  }

  else
  {
    v5 = v2[9];
    v4 = v2[10];
    v6 = v2[8];

    (*(v5 + 8))(v4, v6);
    v3 = sub_1004C9EE8;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1004C9EE8()
{

  v1 = v0[16];
  v2 = v0[5];
  swift_beginAccess();
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  v8 = *(v1 + 48);
  v7 = *(v1 + 56);
  v9 = *(v1 + 66);
  v12 = *(v1 + 64);
  sub_1004CE29C(v3, v4, v5, v6, v8, v7);

  *v2 = v3;
  *(v2 + 8) = v4;
  *(v2 + 16) = v5;
  *(v2 + 24) = v6;
  *(v2 + 32) = v8;
  *(v2 + 40) = v7;
  *(v2 + 50) = v9;
  *(v2 + 48) = v12;
  v10 = v0[1];

  return v10();
}

uint64_t sub_1004CA004()
{

  v1 = v0[15];
  v2 = v0[13];
  v3 = v0[11];
  defaultLogger()();
  DIPRecordError(_:message:log:)();

  v1(v2, v3);
  v4 = v0[16];
  v5 = v0[5];
  swift_beginAccess();
  v6 = *(v4 + 16);
  v7 = *(v4 + 24);
  v8 = *(v4 + 32);
  v9 = *(v4 + 40);
  v11 = *(v4 + 48);
  v10 = *(v4 + 56);
  LOBYTE(v2) = *(v4 + 66);
  v14 = *(v4 + 64);
  sub_1004CE29C(v6, v7, v8, v9, v11, v10);

  *v5 = v6;
  *(v5 + 8) = v7;
  *(v5 + 16) = v8;
  *(v5 + 24) = v9;
  *(v5 + 32) = v11;
  *(v5 + 40) = v10;
  *(v5 + 50) = v2;
  *(v5 + 48) = v14;
  v12 = v0[1];

  return v12();
}

uint64_t sub_1004CA194()
{
  v1 = v0[6];
  v2 = swift_allocObject();
  v0[7] = v2;
  *(v2 + 16) = v1;
  v3 = v1;
  v4 = swift_task_alloc();
  v0[8] = v4;
  *v4 = v0;
  v4[1] = sub_1004CA284;
  v5.n128_u64[0] = 30.0;

  return withTaskTimeoutHandler<A>(timeout:operation:)(v5);
}

uint64_t sub_1004CA284()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_1004CA658;
  }

  else
  {

    v2 = sub_1004CA3A0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1004CA3A0()
{
  v1 = *(v0 + 48);
  *(v0 + 80) = *(v0 + 16);
  v2 = swift_allocObject();
  *(v0 + 96) = v2;
  *(v2 + 16) = v1;
  v3 = v1;
  v4 = swift_task_alloc();
  *(v0 + 104) = v4;
  *v4 = v0;
  v4[1] = sub_1004CA498;
  v5.n128_u64[0] = 30.0;

  return withTaskTimeoutHandler<A>(timeout:operation:)(v5);
}

uint64_t sub_1004CA498()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_1004CA6BC;
  }

  else
  {

    v2 = sub_1004CA5B4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1004CA5B4()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[4];
  v4 = v0[5];
  v5 = Data.base16EncodedString()();
  sub_10000B90C(v1, v2);
  v6 = v0[1];

  return v6(v5._countAndFlagsBits, v5._object, v3, v4);
}

uint64_t sub_1004CA658()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1004CA6BC()
{
  sub_10000B90C(v0[10], v0[11]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1004CA72C(uint64_t a1, uint64_t a2)
{
  v2[27] = a1;
  v2[28] = a2;
  v3 = type metadata accessor for Logger();
  v2[29] = v3;
  v2[30] = *(v3 - 8);
  v2[31] = swift_task_alloc();
  v2[32] = swift_task_alloc();

  return _swift_task_switch(sub_1004CA7F8, 0, 0);
}

uint64_t sub_1004CA7F8(uint64_t a1)
{
  v21 = v1;
  defaultLogger()();

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  v4 = os_log_type_enabled(v2, v3);
  v5 = v1[32];
  v6 = v1[29];
  v7 = v1[30];
  if (v4)
  {
    v9 = v1[27];
    v8 = v1[28];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v20 = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_100141FE4(v9, v8, &v20);
    _os_log_impl(&_mh_execute_header, v2, v3, "Trying to remove proofing session for watch with pairingID: %s", v10, 0xCu);
    sub_10000BB78(v11);
  }

  v12 = *(v7 + 8);
  v12(v5, v6);
  v1[33] = v12;
  if (qword_100832B60 != -1)
  {
    swift_once();
  }

  v13 = *(qword_100881E78 + 16);
  os_unfair_lock_lock(v13 + 54);
  sub_100031B5C(&v13[4], (v1 + 2));
  os_unfair_lock_unlock(v13 + 54);
  v14 = v1[27];
  v15 = v1[28];
  v1[34] = v1[9];

  sub_100031918((v1 + 2));
  v16 = swift_allocObject();
  v1[35] = v16;
  *(v16 + 16) = v14;
  *(v16 + 24) = v15;
  v17 = swift_allocObject();
  v1[36] = v17;
  *(v17 + 16) = sub_1004CDB48;
  *(v17 + 24) = v16;

  v18 = swift_task_alloc();
  v1[37] = v18;
  *v18 = v1;
  v18[1] = sub_1004CAACC;

  return AsyncCoreDataContainer.performWrite<A>(_:)(v18, sub_10021F3D0, v17, &type metadata for () + 8);
}

uint64_t sub_1004CAACC()
{
  *(*v1 + 304) = v0;

  if (v0)
  {
    v2 = sub_1004CAC68;
  }

  else
  {

    v2 = sub_1004CABFC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1004CABFC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1004CAC68()
{
  v1 = v0[33];
  v2 = v0[31];
  v3 = v0[29];

  defaultLogger()();
  DIPRecordError(_:message:log:)();

  v1(v2, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1004CAD60(uint64_t a1, uint64_t a2)
{
  v3[29] = a2;
  v3[30] = v2;
  v3[28] = a1;
  v6 = type metadata accessor for Logger();
  v3[31] = v6;
  v3[32] = *(v6 - 8);
  v3[33] = swift_task_alloc();
  v3[34] = swift_task_alloc();
  v7 = swift_task_alloc();
  v3[35] = v7;
  *v7 = v3;
  v7[1] = sub_1004CAE74;

  return sub_1004B2600(a1, a2);
}

uint64_t sub_1004CAE74()
{
  *(*v1 + 288) = v0;

  if (v0)
  {
    v2 = sub_1004CB754;
  }

  else
  {
    v2 = sub_1004CAF88;
  }

  return _swift_task_switch(v2, 0, 0);
}

void sub_1004CAF88()
{
  v1 = v0[36];
  if (qword_100832B60 != -1)
  {
    swift_once();
  }

  v2 = *(qword_100881E78 + 16);
  os_unfair_lock_lock(v2 + 54);
  sub_100031B5C(&v2[4], (v0 + 2));
  os_unfair_lock_unlock(v2 + 54);
  if (!v1)
  {
    v4 = v0[28];
    v3 = v0[29];
    v0[37] = v0[9];

    sub_100031918((v0 + 2));
    v5 = swift_allocObject();
    v0[38] = v5;
    *(v5 + 16) = v4;
    *(v5 + 24) = v3;
    v6 = swift_allocObject();
    v0[39] = v6;
    *(v6 + 16) = sub_1004CDB64;
    *(v6 + 24) = v5;

    v7 = swift_task_alloc();
    v0[40] = v7;
    v8 = sub_100007224(&qword_10083E3E0, &qword_1006DBCE0);
    *v7 = v0;
    v7[1] = sub_1004CB15C;

    AsyncCoreDataContainer.performRead<A>(_:)(v0 + 27, sub_10017F748, v6, v8);
  }
}

uint64_t sub_1004CB15C()
{
  v2 = *v1;
  v2[41] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1004CB5A4, 0, 0);
  }

  else
  {

    v3 = v2[27];
    v2[42] = v3;
    v4 = swift_task_alloc();
    v2[43] = v4;
    *v4 = v2;
    v4[1] = sub_1004CB2FC;

    return sub_1004B4398(v3);
  }
}

uint64_t sub_1004CB2FC()
{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  *(v1 + 352) = v3;
  *v3 = v2;
  v3[1] = sub_1004CB454;
  v4 = *(v1 + 336);

  return sub_1004B68C0(v4);
}

uint64_t sub_1004CB454()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1004CB5A4()
{

  defaultLogger()();
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
    _os_log_impl(&_mh_execute_header, v1, v2, "IdentityWatchSessionManagementListener failed to fetch proofing sessions: %@", v3, 0xCu);
    sub_10000BE18(v4, &unk_100833B50, &unk_1006D8FB0);
  }

  else
  {
  }

  (*(v0[32] + 8))(v0[34], v0[31]);

  v6 = v0[1];

  return v6();
}

uint64_t sub_1004CB754(uint64_t a1)
{
  defaultLogger()();
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
    _os_log_impl(&_mh_execute_header, v2, v3, "IdentityWatchSessionManagementListener failed to validate stored prearm trust: %@", v4, 0xCu);
    sub_10000BE18(v5, &unk_100833B50, &unk_1006D8FB0);
  }

  else
  {
  }

  (*(v1[32] + 8))(v1[33], v1[31]);
  if (qword_100832B60 != -1)
  {
    swift_once();
  }

  v7 = *(qword_100881E78 + 16);
  os_unfair_lock_lock(v7 + 54);
  sub_100031B5C(&v7[4], (v1 + 2));
  os_unfair_lock_unlock(v7 + 54);
  v9 = v1[28];
  v8 = v1[29];
  v1[37] = v1[9];

  sub_100031918((v1 + 2));
  v10 = swift_allocObject();
  v1[38] = v10;
  *(v10 + 16) = v9;
  *(v10 + 24) = v8;
  v11 = swift_allocObject();
  v1[39] = v11;
  *(v11 + 16) = sub_1004CDB64;
  *(v11 + 24) = v10;

  v12 = swift_task_alloc();
  v1[40] = v12;
  v13 = sub_100007224(&qword_10083E3E0, &qword_1006DBCE0);
  *v12 = v1;
  v12[1] = sub_1004CB15C;

  return AsyncCoreDataContainer.performRead<A>(_:)(v1 + 27, sub_10017F748, v11, v13);
}

uint64_t sub_1004CBA40(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for Logger();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();

  return _swift_task_switch(sub_1004CBB10, 0, 0);
}

uint64_t sub_1004CBB10(uint64_t a1)
{
  v16 = v1;
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v1[8];
  v6 = v1[5];
  v7 = v1[6];
  if (v4)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_100141FE4(0xD000000000000042, 0x800000010071AA00, &v15);
    _os_log_impl(&_mh_execute_header, v2, v3, "%s called", v8, 0xCu);
    sub_10000BB78(v9);
  }

  v10 = *(v7 + 8);
  v10(v5, v6);
  v1[9] = v10;
  v11 = swift_task_alloc();
  v1[10] = v11;
  *v11 = v1;
  v11[1] = sub_1004CBCB4;
  v12 = v1[3];
  v13 = v1[2];

  return sub_1004B2600(v13, v12);
}

uint64_t sub_1004CBCB4()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_1004CBF24;
  }

  else
  {
    v2 = sub_1004CBDC8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1004CBDC8()
{
  v1 = v0[11];
  type metadata accessor for IdentityProofingDataContext();
  swift_allocObject();
  sub_10057E28C();
  if (v1)
  {
    v9 = v0[9];
    v10 = v0[7];
    v11 = v0[5];
    defaultLogger()();
    DIPRecordError(_:message:log:)();

    v9(v10, v11);
  }

  else
  {
    v3 = v2;
    v4 = v0[3];
    v5 = v0[4];
    v6 = v0[2];
    v7 = swift_allocObject();
    v7[2] = v6;
    v7[3] = v4;
    v7[4] = v3;
    v7[5] = v5;

    v8 = v5;
    sub_10057C18C(sub_1004CC030, v7);
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_1004CBF24(uint64_t a1)
{
  v2 = v1[9];
  v3 = v1[7];
  v4 = v1[5];
  defaultLogger()();
  DIPRecordError(_:message:log:)();

  v2(v3, v4);

  v5 = v1[1];

  return v5();
}

uint64_t sub_1004CBFE8()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1004CC050(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v38 = a1;
  v7 = type metadata accessor for DIPError.Code();
  v33 = *(v7 - 8);
  v34 = v7;
  __chkstk_darwin(v7);
  v35 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DIPError();
  v37 = *(v9 - 8);
  __chkstk_darwin(v9);
  v36 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100007224(&unk_100849F90, &qword_1006DEAA0);
  __chkstk_darwin(v11 - 8);
  v13 = &v32 - v12;
  v14 = type metadata accessor for Logger();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  defaultLogger()();
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v32 = v13;
    *v20 = 0;
    _os_log_impl(&_mh_execute_header, v18, v19, "Trying to check if secure ranging is supported for watch", v20, 2u);
    v13 = v32;
  }

  (*(v15 + 8))(v17, v14);
  v21 = v38;
  v22 = *(v38 + OBJC_IVAR____TtC8coreidvd38IdentityWatchSessionManagementListener_rangingManager);
  if ([v22 isSupportedForType:2] && objc_msgSend(v22, "isEnabledForType:", 2))
  {
    v23 = [v22 authenticateForType:2];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v24 = type metadata accessor for UUID();
    (*(*(v24 - 8) + 56))(v13, 0, 1, v24);
    v25 = OBJC_IVAR____TtC8coreidvd38IdentityWatchSessionManagementListener_rangingSessionID;
    swift_beginAccess();
    sub_1000B2764(v13, v21 + v25, &unk_100849F90, &qword_1006DEAA0);
    swift_endAccess();
    sub_10000BBC4(v21 + v25, v13, &unk_100849F90, &qword_1006DEAA0);
    sub_1004B9158(v13, 0, a2, a3, a4);
    return sub_10000BE18(v13, &unk_100849F90, &qword_1006DEAA0);
  }

  else
  {
    (*(v33 + 104))(v35, enum case for DIPError.Code.rangingNotSupported(_:), v34);
    sub_1000402AC(_swiftEmptyArrayStorage);
    v27 = v36;
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    v28 = type metadata accessor for UUID();
    (*(*(v28 - 8) + 56))(v13, 1, 1, v28);
    sub_1004CF2E4(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    v29 = swift_allocError();
    v30 = v37;
    (*(v37 + 16))(v31, v27, v9);
    sub_1004B9158(v13, v29, a2, a3, a4);

    sub_10000BE18(v13, &unk_100849F90, &qword_1006DEAA0);
    return (*(v30 + 8))(v27, v9);
  }
}

void sub_1004CC5E8(uint64_t a1, unint64_t a2)
{
  v4 = sub_100007224(&unk_100845860, &unk_1006BF9D0);
  __chkstk_darwin(v4 - 8);
  v32 = &v32 - v5;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v32 - v11;
  defaultLogger()();

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.debug.getter();

  v15 = os_log_type_enabled(v13, v14);
  v33 = a1;
  if (v15)
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v35 = v17;
    *v16 = 136315138;
    *(v16 + 4) = sub_100141FE4(a1, a2, &v35);
    _os_log_impl(&_mh_execute_header, v13, v14, "Received unlock event from phone, trying to prearm watch with pairingID: %s", v16, 0xCu);
    sub_10000BB78(v17);
  }

  v18 = *(v7 + 8);
  v18(v12, v6);
  v19 = [objc_opt_self() standardUserDefaults];
  v20._countAndFlagsBits = static DaemonInternalDefaultsKeys.disableSecureRangingWithWatch.getter();
  v21 = NSUserDefaults.internalBool(forKey:)(v20);

  if (v21)
  {
    defaultLogger()();
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "Secure ranging with watch is not enabled through IDV internal settings, will continue to prearm the watch without it", v24, 2u);
    }

    v18(v10, v6);
    v25 = type metadata accessor for TaskPriority();
    v26 = v32;
    (*(*(v25 - 8) + 56))(v32, 1, 1, v25);
    v27 = swift_allocObject();
    v27[2] = 0;
    v27[3] = 0;
    v28 = v33;
    v29 = v34;
    v27[4] = v34;
    v27[5] = v28;
    v27[6] = a2;

    v30 = v29;
    sub_1003E653C(0, 0, v26, &unk_1006E6490, v27);
  }

  else
  {

    v31 = v34;
    sub_1004CC050(v31, v33, a2, v31);
  }
}

uint64_t sub_1004CC9B8(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DIPError.Code();
  v74 = *(v4 - 8);
  v75 = v4;
  __chkstk_darwin(v4);
  v76 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DIPError();
  v79 = *(v6 - 8);
  v80 = v6;
  __chkstk_darwin(v6);
  v78 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Logger();
  v82 = *(v8 - 8);
  v83 = v8;
  v9 = __chkstk_darwin(v8);
  v77 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v68 = &v65 - v11;
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v67 = &v65 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v69 = &v65 - v16;
  v17 = sub_100007224(&unk_100845DD0, &unk_1006E62C8);
  v18 = v17 - 8;
  __chkstk_darwin(v17);
  v20 = &v65 - v19;
  v21 = sub_100007224(&unk_100849F90, &qword_1006DEAA0);
  v22 = __chkstk_darwin(v21 - 8);
  v72 = &v65 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v22);
  v26 = &v65 - v25;
  __chkstk_darwin(v24);
  v28 = &v65 - v27;
  v29 = *(v13 + 16);
  v81 = a1;
  v70 = v13 + 16;
  v71 = v29;
  v29(&v65 - v27, a1, v12);
  (*(v13 + 56))(v28, 0, 1, v12);
  v30 = OBJC_IVAR____TtC8coreidvd38IdentityWatchSessionManagementListener_rangingSessionID;
  swift_beginAccess();
  v31 = *(v18 + 56);
  sub_10000BBC4(v28, v20, &unk_100849F90, &qword_1006DEAA0);
  v73 = v2;
  sub_10000BBC4(v2 + v30, &v20[v31], &unk_100849F90, &qword_1006DEAA0);
  v84 = v13;
  v32 = *(v13 + 48);
  if (v32(v20, 1, v12) == 1)
  {
    sub_10000BE18(v28, &unk_100849F90, &qword_1006DEAA0);
    if (v32(&v20[v31], 1, v12) == 1)
    {
      sub_10000BE18(v20, &unk_100849F90, &qword_1006DEAA0);
LABEL_10:
      v43 = v68;
      defaultLogger()();
      v44 = v67;
      v71(v67, v81, v12);
      v45 = Logger.logObject.getter();
      v46 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        v48 = swift_slowAlloc();
        v85[0] = v48;
        *v47 = 136315138;
        v49 = UUID.uuidString.getter();
        v51 = v50;
        (*(v84 + 8))(v44, v12);
        v52 = sub_100141FE4(v49, v51, v85);

        *(v47 + 4) = v52;
        _os_log_impl(&_mh_execute_header, v45, v46, "Initiated secure ranging with watch with sessionID: %s", v47, 0xCu);
        sub_10000BB78(v48);
      }

      else
      {

        (*(v84 + 8))(v44, v12);
      }

      return (*(v82 + 8))(v43, v83);
    }

    goto LABEL_6;
  }

  sub_10000BBC4(v20, v26, &unk_100849F90, &qword_1006DEAA0);
  if (v32(&v20[v31], 1, v12) == 1)
  {
    sub_10000BE18(v28, &unk_100849F90, &qword_1006DEAA0);
    (*(v84 + 8))(v26, v12);
LABEL_6:
    sub_10000BE18(v20, &unk_100845DD0, &unk_1006E62C8);
    goto LABEL_7;
  }

  v37 = v84;
  v38 = *(v84 + 32);
  v66 = v30;
  v39 = v69;
  v38(v69, &v20[v31], v12);
  sub_1004CF2E4(&qword_100845DE8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v40 = dispatch thunk of static Equatable.== infix(_:_:)();
  v41 = *(v37 + 8);
  v42 = v39;
  v30 = v66;
  v41(v42, v12);
  sub_10000BE18(v28, &unk_100849F90, &qword_1006DEAA0);
  v41(v26, v12);
  sub_10000BE18(v20, &unk_100849F90, &qword_1006DEAA0);
  if (v40)
  {
    goto LABEL_10;
  }

LABEL_7:
  v85[0] = 0;
  v85[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(77);
  v33._countAndFlagsBits = 0xD000000000000034;
  v33._object = 0x800000010071AB10;
  String.append(_:)(v33);
  v34 = v72;
  sub_10000BBC4(v73 + v30, v72, &unk_100849F90, &qword_1006DEAA0);
  if (v32(v34, 1, v12))
  {
    sub_10000BE18(v34, &unk_100849F90, &qword_1006DEAA0);
    v35 = 0;
    v36 = 0xE000000000000000;
  }

  else
  {
    v53 = v69;
    v71(v69, v34, v12);
    sub_10000BE18(v34, &unk_100849F90, &qword_1006DEAA0);
    v54 = UUID.uuidString.getter();
    v36 = v55;
    (*(v84 + 8))(v53, v12);
    v35 = v54;
  }

  v56 = v36;
  String.append(_:)(*&v35);

  v57._object = 0x800000010071AB50;
  v57._countAndFlagsBits = 0xD000000000000015;
  String.append(_:)(v57);
  sub_1004CF2E4(&qword_100845DE0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v58._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v58);

  (*(v74 + 104))(v76, enum case for DIPError.Code.rangingSessionIDMismatch(_:), v75);
  sub_1000402AC(_swiftEmptyArrayStorage);
  v59 = v78;
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  sub_1004CF2E4(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  v60 = v80;
  swift_allocError();
  v61 = v79;
  (*(v79 + 16))(v62, v59, v60);
  v63 = v77;
  defaultLogger()();
  DIPRecordError(_:message:log:)();
  (*(v82 + 8))(v63, v83);
  (*(v61 + 8))(v59, v60);
}

uint64_t sub_1004CD400(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  defaultLogger()();

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v14 = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_100141FE4(a1, a2, &v14);
    _os_log_impl(&_mh_execute_header, v8, v9, "Trying to unregister for phone lock notifications for watch with pairingID: %s", v10, 0xCu);
    sub_10000BB78(v11);
  }

  (*(v5 + 8))(v7, v4);
  return sub_1004857EC(a1, a2);
}

uint64_t sub_1004CD5C4(uint64_t a1, uint64_t a2)
{
  v2[27] = a1;
  v2[28] = a2;
  v3 = type metadata accessor for Logger();
  v2[29] = v3;
  v2[30] = *(v3 - 8);
  v2[31] = swift_task_alloc();

  return _swift_task_switch(sub_1004CD684, 0, 0);
}

uint64_t sub_1004CD684(uint64_t a1)
{
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "deletePrearmTrustKey called", v4, 2u);
  }

  v6 = v1[30];
  v5 = v1[31];
  v7 = v1[29];

  (*(v6 + 8))(v5, v7);
  if (qword_100832B60 != -1)
  {
    swift_once();
  }

  v8 = *(qword_100881E78 + 16);
  os_unfair_lock_lock(v8 + 54);
  sub_1000318FC(&v8[4], (v1 + 2));
  os_unfair_lock_unlock(v8 + 54);
  v9 = v1[27];
  v10 = v1[28];
  v1[32] = v1[9];

  sub_100031918((v1 + 2));
  v11 = swift_allocObject();
  v1[33] = v11;
  *(v11 + 16) = v9;
  *(v11 + 24) = v10;
  v12 = swift_allocObject();
  v1[34] = v12;
  *(v12 + 16) = sub_1004CDB2C;
  *(v12 + 24) = v11;

  v13 = swift_task_alloc();
  v1[35] = v13;
  *v13 = v1;
  v13[1] = sub_1004CD8DC;

  return AsyncCoreDataContainer.performWrite<A>(_:)(v13, sub_10017F710, v12, &type metadata for () + 8);
}

uint64_t sub_1004CD8DC()
{
  *(*v1 + 288) = v0;

  if (v0)
  {
    v2 = sub_1004CDA6C;
  }

  else
  {

    v2 = sub_1004CDA00;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1004CDA00()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1004CDA6C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1004CDAF4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1004CDB80(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100041F04;

  return sub_1004B97D0(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1004CDC48(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100041F04;

  return sub_1004C60DC(a1, v4);
}

uint64_t sub_1004CDD14()
{
  sub_10000B90C(*(v0 + 24), *(v0 + 32));
  sub_10000B90C(*(v0 + 40), *(v0 + 48));

  return _swift_deallocObject(v0, 75, 7);
}

uint64_t sub_1004CDD64(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100041F04;

  return sub_1004C4538(a1, v4, v1 + 24);
}

uint64_t sub_1004CDE6C()
{

  sub_10000B90C(*(v0 + 24), *(v0 + 32));
  sub_10000B90C(*(v0 + 40), *(v0 + 48));

  sub_10000B90C(*(v0 + 80), *(v0 + 88));

  return _swift_deallocObject(v0, 96, 7);
}

uint64_t sub_1004CDEE8()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1004CDF20(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100041F04;

  return sub_1004C20FC(a1, v4);
}

uint64_t sub_1004CE014()
{
  sub_10000B90C(*(v0 + 40), *(v0 + 48));
  sub_10000B90C(*(v0 + 56), *(v0 + 64));

  return _swift_deallocObject(v0, 112, 7);
}

uint64_t sub_1004CE07C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[12];
  v8 = v1[13];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100041F04;

  return sub_1004C29EC(a1, v4, v5, v6, (v1 + 5), v7, v8);
}

uint64_t sub_1004CE150()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1004CE190(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100041F04;

  return sub_1004C3368(a1, v5, v4);
}

uint64_t sub_1004CE24C()
{
  if (v0[7])
  {
    sub_10000B90C(v0[2], v0[3]);
    sub_10000B90C(v0[4], v0[5]);
  }

  return _swift_deallocObject(v0, 67, 7);
}

double sub_1004CE29C(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a6)
  {
    sub_10000B8B8(a1, a2);
    sub_10000B8B8(a3, a4);
  }

  return result;
}

uint64_t sub_1004CE2F8()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1004CE360()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1004CE398(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a6)
  {
    sub_10000B90C(result, a2);
    sub_10000B90C(a3, a4);
  }

  return result;
}

uint64_t sub_1004CE3F4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100041F04;

  return sub_1004BE37C(a1, v4);
}

uint64_t sub_1004CE494()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1004CE4DC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100041F04;

  return sub_1004BECE4(a1, v4, v5, v6);
}

uint64_t sub_1004CE590(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100041F04;

  return sub_1004BF704(a1, v5, v4);
}

uint64_t sub_1004CE63C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100041F04;

  return sub_1004BF960(a1, v4);
}

uint64_t sub_1004CE6DC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100041F04;

  return sub_1004BFE48(a1, v4);
}

uint64_t sub_1004CE77C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100041F04;

  return sub_1004BB664(a1, v4);
}

uint64_t sub_1004CE81C()
{
  sub_10000B90C(*(v0 + 32), *(v0 + 40));
  sub_10000B90C(*(v0 + 48), *(v0 + 56));

  return _swift_deallocObject(v0, 96, 7);
}

uint64_t sub_1004CE87C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[11];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100041F04;

  return sub_1004BC040(a1, v4, v5, (v1 + 4), v6);
}

uint64_t sub_1004CE93C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100041F04;

  return sub_1004BCB04(a1, v5, v4);
}

uint64_t sub_1004CE9EC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100041F04;

  return sub_1004B8978(a1, v4, v5, v6);
}

uint64_t sub_1004CEAA0()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1004CEAE8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100041F04;

  return sub_1004B7CD4(a1, v4, v5, v6);
}

uint64_t sub_1004CEB9C()
{

  if (v0[9])
  {
    sub_10000B90C(v0[4], v0[5]);
    sub_10000B90C(v0[6], v0[7]);
  }

  return _swift_deallocObject(v0, 104, 7);
}

uint64_t sub_1004CEBFC(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 2);
  v7 = *(v2 + 3);
  v8 = *(v2 + 11);
  v9 = v2[12];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_100041F04;

  return sub_1004B2D6C(v9, a1, a2, v6, v7, (v2 + 4), v8);
}

uint64_t sub_1004CECD4(uint64_t a1, uint64_t *a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100027B9C;

  return sub_1004C971C(a1, a2, v6);
}

uint64_t sub_1004CED9C()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1004CEDFC()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_1004CEEDC(uint64_t a1)
{
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_100041F04;

  return sub_1004C7838(a1, v6, v7, v8, v1 + v5, v9);
}

uint64_t sub_1004CF00C()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1004CF0D8(uint64_t a1)
{
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100041F04;

  return sub_1004C6444(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_1004CF1D4(uint64_t a1)
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

  return sub_1004B97D0(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1004CF29C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1004CF2E4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

NSObject *sub_1004CF42C()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = objc_allocWithZone(NSXPCListener);
  v6 = String._bridgeToObjectiveC()();
  v7 = [v5 initWithMachServiceName:v6];

  *&v0[OBJC_IVAR____TtC8coreidvd18IDVServiceListener_listener] = v7;
  v8 = type metadata accessor for IDVServiceListener();
  v18.receiver = v0;
  v18.super_class = v8;
  v9 = objc_msgSendSuper2(&v18, "init");
  v10 = OBJC_IVAR____TtC8coreidvd18IDVServiceListener_listener;
  v11 = *&v9[OBJC_IVAR____TtC8coreidvd18IDVServiceListener_listener];
  v12 = v9;
  [v11 setDelegate:v12];
  [*&v9[v10] resume];
  defaultLogger()();
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "IDV service listener is started", v15, 2u);

    v16 = v12;
  }

  else
  {
    v16 = v13;
    v13 = v12;
  }

  (*(v2 + 8))(v4, v1);
  return v12;
}

id sub_1004CF654()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  defaultLogger()();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "IDV service listener is tearing down", v8, 2u);
  }

  (*(v3 + 8))(v5, v2);
  [*&v1[OBJC_IVAR____TtC8coreidvd18IDVServiceListener_listener] invalidate];
  v9 = type metadata accessor for IDVServiceListener();
  v11.receiver = v1;
  v11.super_class = v9;
  return objc_msgSendSuper2(&v11, "dealloc");
}

uint64_t sub_1004CF800(uint64_t a1, const char *a2, const char *a3)
{
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v32 - v10;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    defaultLogger()();
    v14 = v13;
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v33 = v5;
      v34 = v18;
      v19 = v18;
      *v17 = 136446466;
      v20 = v14;
      v21 = [v20 description];
      v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v32 = a2;
      v24 = v23;

      v25 = sub_100141FE4(v22, v24, &v34);

      *(v17 + 4) = v25;
      *(v17 + 12) = 1026;
      LODWORD(v24) = [v20 processIdentifier];

      *(v17 + 14) = v24;
      _os_log_impl(&_mh_execute_header, v15, v16, v32, v17, 0x12u);
      sub_10000BB78(v19);

      return (*(v6 + 8))(v9, v33);
    }

    v30 = *(v6 + 8);
    v31 = v9;
  }

  else
  {
    defaultLogger()();
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, v27, v28, a3, v29, 2u);
    }

    v30 = *(v6 + 8);
    v31 = v11;
  }

  return v30(v31, v5);
}

uint64_t sub_1004CFBA8(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100007224(a1, a2);
  if (swift_isClassType() && v6)
  {
    v7 = &unk_100845FD0;
    v8 = &qword_1006DB190;
  }

  else
  {
    v7 = a3;
    v8 = a4;
  }

  return sub_100007224(v7, v8);
}

uint64_t sub_1004CFC14(void *a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v48 - v7;
  v9 = String._bridgeToObjectiveC()();
  v10 = [a1 valueForEntitlement:v9];

  if (v10)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v56 = 0u;
    v57 = 0u;
  }

  aBlock = v56;
  v53 = v57;
  if (*(&v57 + 1))
  {
    if (swift_dynamicCast())
    {
      v12 = v50;
      v11 = v51;
      goto LABEL_12;
    }
  }

  else
  {
    sub_1004D05E0(&aBlock);
  }

  defaultLogger()();
  v13 = a1;
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 67240192;
    *(v16 + 4) = [v13 processIdentifier];

    _os_log_impl(&_mh_execute_header, v14, v15, "coreidvd: could not find caller's application identifier, pid %{public}d", v16, 8u);
  }

  else
  {

    v14 = v13;
  }

  (*(v3 + 8))(v8, v2);
  v12 = 0;
  v11 = 0;
LABEL_12:
  defaultLogger()();

  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *&aBlock = v20;
    *v19 = 136446210;
    v49 = v2;
    v21 = a1;
    v22 = v12;
    if (!v11)
    {
      v12 = 0;
    }

    v48 = v6;
    v23 = v3;
    if (v11)
    {
      v24 = v11;
    }

    else
    {
      v24 = 0xE000000000000000;
    }

    v25 = sub_100141FE4(v12, v24, &aBlock);

    *(v19 + 4) = v25;
    v12 = v22;
    a1 = v21;
    _os_log_impl(&_mh_execute_header, v17, v18, "IDV service listener received connection from application id = [%{public}s]", v19, 0xCu);
    sub_10000BB78(v20);

    (*(v23 + 8))(v48, v49);
  }

  else
  {

    (*(v3 + 8))(v6, v2);
  }

  sub_1004CFBA8(qword_100842CC8, &qword_1006E02D0, &unk_100845FE0, &unk_1006E6510);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_1006E64D0;
  v27 = sub_10001F8D4(0, &qword_100845408, NSArray_ptr);
  *(v26 + 32) = v27;
  v28 = sub_10001F8D4(0, &qword_100845EE0, NSString_ptr);
  *(v26 + 40) = v28;
  *(v26 + 48) = sub_10001F8D4(0, &unk_100845EE8, NSData_ptr);
  *(v26 + 56) = sub_10001F8D4(0, &unk_1008399D0, DIAttribute_ptr);
  *(v26 + 64) = sub_10001F8D4(0, &qword_100845EF8, DIAttributeText_ptr);
  *(v26 + 72) = sub_10001F8D4(0, &qword_100845F00, DIAttributeDate_ptr);
  *(v26 + 80) = sub_10001F8D4(0, &unk_100845F08, DIAttributeImage_ptr);
  *(v26 + 88) = sub_10001F8D4(0, &qword_100839BE0, DIAttributeDocument_ptr);
  *(v26 + 96) = sub_10001F8D4(0, &qword_10084A2B0, DIAttributeDocumentScanRequirements_ptr);
  *(v26 + 104) = sub_10001F8D4(0, &qword_100839C30, DIAttributePickerItem_ptr);
  *(v26 + 112) = sub_10001F8D4(0, &qword_100845F18, DIAttributePicker_ptr);
  *(v26 + 120) = sub_10001F8D4(0, &qword_100845F20, DIAttributeCamera_ptr);
  *(v26 + 128) = sub_10001F8D4(0, &qword_100845F28, DIAttributeSMSOTP_ptr);
  *(v26 + 136) = sub_10001F8D4(0, &unk_100845F30, DIAttributeImageCaptureRequirements_ptr);
  *(v26 + 144) = sub_10001F8D4(0, &qword_100839BC8, DIPage_ptr);
  *(v26 + 152) = sub_10001F8D4(0, &qword_100845F40, DIAttributeCustom_ptr);
  v29 = [objc_opt_self() interfaceWithProtocol:&OBJC_PROTOCOL___DIVerificationServerSideProtocol];
  [a1 setExportedInterface:v29];

  v30 = [a1 exportedInterface];
  if (v30)
  {
    v31 = v30;
    NSXPCInterface.setClasses(_:for:argumentIndex:ofReply:)();
  }

  sub_1004CFBA8(qword_100842CC8, &qword_1006E02D0, &unk_100845FE0, &unk_1006E6510);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_1006BFE10;
  *(v32 + 32) = v28;
  *(v32 + 40) = sub_10001F8D4(0, &qword_100833A58, NSDictionary_ptr);
  *(v32 + 48) = v27;
  *(v32 + 56) = sub_10001F8D4(0, &qword_100845FB0, DIVerificationSessionContext_ptr);
  v33 = [a1 exportedInterface];
  if (v33)
  {
    v34 = v33;
    NSXPCInterface.setClasses(_:for:argumentIndex:ofReply:)();
  }

  sub_1004CFBA8(&qword_100845FC0, &qword_1006E6500, &qword_100845FC8, &qword_1006E6508);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1006BF520;
  *(inited + 32) = sub_10001F8D4(0, &qword_100845FB8, DIExecutionFeedback_ptr);
  v36 = [a1 exportedInterface];
  if (v36)
  {
    v37 = v36;
    sub_1003D6E8C(inited);
    swift_setDeallocating();
    NSXPCInterface.setClasses(_:for:argumentIndex:ofReply:)();
  }

  else
  {
    swift_setDeallocating();
  }

  if (v11)
  {
    v38 = v12;
  }

  else
  {
    v38 = 0x414C494156414E55;
  }

  if (v11)
  {
    v39 = v11;
  }

  else
  {
    v39 = 0xEB00000000454C42;
  }

  type metadata accessor for DIPAccountManager();
  static DIPAccountManager.sharedInstance.getter();
  v40 = objc_allocWithZone(type metadata accessor for IDVSessionProxy(0));
  v41 = a1;
  v42 = sub_10065BC60(a1, v38, v39, &aBlock);

  [v41 setExportedObject:v42];
  v43 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v54 = sub_1004D0680;
  v55 = v43;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v53 = sub_100503A7C;
  *(&v53 + 1) = &unk_100814558;
  v44 = _Block_copy(&aBlock);

  [v41 setInvalidationHandler:v44];
  _Block_release(v44);
  v45 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v54 = sub_1004D06C4;
  v55 = v45;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v53 = sub_100503A7C;
  *(&v53 + 1) = &unk_100814580;
  v46 = _Block_copy(&aBlock);

  [v41 setInterruptionHandler:v46];
  _Block_release(v46);
  [v41 resume];
  return 1;
}

uint64_t sub_1004D05E0(uint64_t a1)
{
  v2 = sub_100007224(&unk_100845ED0, &qword_1006DA1D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1004D0648()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1004D06AC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

char *sub_1004D06F8()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC8coreidvd42MobileDocumentProviderRegistrationListener_listener;
  type metadata accessor for MobileDocumentProviderRegistrationSession();
  static MobileDocumentProviderRegistrationSession.machServiceName.getter();
  v8 = objc_allocWithZone(NSXPCListener);
  v9 = String._bridgeToObjectiveC()();

  v10 = [v8 initWithMachServiceName:v9];

  *&v1[v7] = v10;
  v19.receiver = v1;
  v19.super_class = ObjectType;
  v11 = objc_msgSendSuper2(&v19, "init");
  defaultLogger()();
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v18 = v15;
    *v14 = 136315138;
    *(v14 + 4) = sub_100141FE4(0x292874696E69, 0xE600000000000000, &v18);
    _os_log_impl(&_mh_execute_header, v12, v13, "MobileDocumentProviderRegistrationListener %s", v14, 0xCu);
    sub_10000BB78(v15);
  }

  (*(v4 + 8))(v6, v3);
  [*&v11[OBJC_IVAR____TtC8coreidvd42MobileDocumentProviderRegistrationListener_listener] setDelegate:v11];

  return v11;
}

id sub_1004D0970()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  defaultLogger()();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v13 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_100141FE4(0x74696E696564, 0xE600000000000000, &v13);
    _os_log_impl(&_mh_execute_header, v7, v8, "MobileDocumentProviderRegistrationListener %s", v9, 0xCu);
    sub_10000BB78(v10);
  }

  (*(v4 + 8))(v6, v3);
  [*&v1[OBJC_IVAR____TtC8coreidvd42MobileDocumentProviderRegistrationListener_listener] invalidate];
  v14.receiver = v1;
  v14.super_class = ObjectType;
  return objc_msgSendSuper2(&v14, "dealloc");
}

id sub_1004D0B7C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for DIPError.Code();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for Logger();
  v25 = *(v28 - 8);
  v9 = __chkstk_darwin(v28);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v24 - v12;
  if (sub_1004D1F24(a1))
  {
    [a1 auditToken];
    result = sub_1004D1290(v26, *(&v26 + 1), v27, *(&v27 + 1), a2);
    if (!v2)
    {
      return result;
    }

    if (sub_1004D26A4(a1))
    {
      defaultLogger()();
      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        *&v26 = v18;
        *v17 = 136315138;
        *(v17 + 4) = sub_100141FE4(0xD000000000000023, 0x800000010071B6F0, &v26);
        _os_log_impl(&_mh_execute_header, v15, v16, "MobileDocumentProviderRegistrationListener %s unable to retrieve calling app's configuration, but privileged testing entitlement present. Proceeding with connection.", v17, 0xCu);
        sub_10000BB78(v18);
      }

      result = (*(v25 + 8))(v11, v28);
      *a2 = 1;
      *(a2 + 104) = 2;
      return result;
    }
  }

  else if (sub_1004D22E4(a1))
  {
    result = [a1 auditToken];
    v19 = v27;
    *a2 = v26;
    *(a2 + 16) = v19;
    *(a2 + 104) = 1;
    return result;
  }

  defaultLogger()();
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *&v26 = v23;
    *v22 = 136315138;
    *(v22 + 4) = sub_100141FE4(0xD000000000000023, 0x800000010071B6F0, &v26);
    _os_log_impl(&_mh_execute_header, v20, v21, "MobileDocumentProviderRegistrationListener %s could not initialize an applicationConfiguration and privileged testing entitlement not present. Rejecting connection.", v22, 0xCu);
    sub_10000BB78(v23);
  }

  (*(v25 + 8))(v13, v28);
  (*(v6 + 104))(v8, enum case for DIPError.Code.webPresentmentRegistrationEntitlementMissing(_:), v5);
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100037214();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  return swift_willThrow();
}

uint64_t sub_1004D1074(const char *a1, ...)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  defaultLogger()();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v12 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_100141FE4(0xD000000000000026, 0x8000000100715680, &v12);
    _os_log_impl(&_mh_execute_header, v6, v7, a1, v8, 0xCu);
    sub_10000BB78(v9);
  }

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1004D1290@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _OWORD *a5@<X8>)
{
  v75 = a5;
  v87 = type metadata accessor for DIPError.Code();
  v82 = *(v87 - 8);
  __chkstk_darwin(v87);
  v84 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100007224(&qword_10083ACF8, &qword_1006D8FC0);
  __chkstk_darwin(v10 - 8);
  v72 = &v62 - v11;
  v12 = type metadata accessor for BundleRecord.RecordType();
  v78 = *(v12 - 8);
  v79 = v12;
  v13 = __chkstk_darwin(v12);
  v71 = &v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v70 = &v62 - v16;
  __chkstk_darwin(v15);
  v77 = &v62 - v17;
  v18 = type metadata accessor for BundleRecord();
  v80 = *(v18 - 8);
  v81 = v18;
  v19 = __chkstk_darwin(v18);
  v74 = &v62 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v73 = &v62 - v22;
  v23 = __chkstk_darwin(v21);
  v76 = &v62 - v24;
  __chkstk_darwin(v23);
  v26 = &v62 - v25;
  v27 = type metadata accessor for BundleRecordFetcher();
  v28 = *(v27 - 8);
  __chkstk_darwin(v27);
  v30 = &v62 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  BundleRecordFetcher.init()();
  v31 = v83;
  BundleRecordFetcher.record(withAuditToken:)();
  if (!v31)
  {
    v62 = 0;
    v64 = a1;
    v65 = a2;
    v66 = a3;
    v63 = a4;
    v68 = v30;
    v83 = v28;
    v69 = v27;
    v32 = v77;
    BundleRecord.recordType.getter();
    v34 = v78;
    v33 = v79;
    v35 = (*(v78 + 88))(v32, v79);
    v36 = enum case for BundleRecord.RecordType.application(_:);
    v67 = v26;
    if (v35 == enum case for BundleRecord.RecordType.application(_:))
    {
      v38 = v80;
      v37 = v81;
      v39 = *(v80 + 16);
      v40 = v76;
      v39();
LABEL_5:
      v41 = v84;
      v42 = v69;
      v43 = v74;
      (v39)(v74, v40, v37);
      v44 = sub_100330E58(v64, v65, v66, v63, v43, v85);
      v45 = v75;
      if (v86[24] != 255)
      {
        v46 = *(v38 + 8);
        v46(v40, v37, v44);
        (v46)(v67, v37);
        result = (*(v83 + 8))(v68, v42);
        v48 = *v86;
        v45[4] = v85[4];
        v45[5] = v48;
        *(v45 + 89) = *&v86[9];
        v49 = v85[1];
        *v45 = v85[0];
        v45[1] = v49;
        v50 = v85[3];
        v45[2] = v85[2];
        v45[3] = v50;
        return result;
      }

      sub_10000BE18(v85, &unk_100846020, &qword_1006E6568);
      v81 = " not application";
      v84 = *(v82 + 104);
      (v84)(v41, enum case for DIPError.Code.webPresentmentRegistrationIdentifiersMissing(_:), v87);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_100037214();
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
      v56 = *(v38 + 8);
      v56(v76, v37);
      v53 = v84;
      v56(v67, v37);
      goto LABEL_13;
    }

    v51 = v32;
    v52 = v82;
    if (v35 != enum case for BundleRecord.RecordType.appClip(_:))
    {
      if (v35 == enum case for BundleRecord.RecordType.applicationExtension(_:))
      {
        v54 = v72;
        BundleRecord.containingBundleRecord.getter();
        v55 = v80;
        if ((*(v80 + 48))(v54, 1, v81) == 1)
        {
          sub_10000BE18(v54, &qword_10083ACF8, &qword_1006D8FC0);
          v79 = "ine bundle record type";
          v53 = *(v52 + 104);
          v41 = v84;
          (v53)(v84, enum case for DIPError.Code.webPresentmentRegistrationUnsupportedBundleType(_:), v87);
          sub_1000402AC(_swiftEmptyArrayStorage);
          type metadata accessor for DIPError();
          sub_100037214();
          swift_allocError();
          DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
          swift_willThrow();
          (*(v55 + 8))(v67, v81);
        }

        else
        {
          v77 = *(v55 + 32);
          (v77)(v73, v54, v81);
          v57 = v70;
          BundleRecord.recordType.getter();
          v58 = v71;
          (*(v34 + 104))(v71, v36, v33);
          v59 = static BundleRecord.RecordType.== infix(_:_:)();
          v60 = *(v34 + 8);
          v60(v58, v33);
          v60(v57, v33);
          if (v59)
          {
            v40 = v76;
            v37 = v81;
            (v77)(v76, v73, v81);
            v38 = v80;
            v39 = *(v80 + 16);
            goto LABEL_5;
          }

          v53 = *(v52 + 104);
          v41 = v84;
          (v53)(v84, enum case for DIPError.Code.unexpectedDeviceState(_:), v87);
          sub_1000402AC(_swiftEmptyArrayStorage);
          type metadata accessor for DIPError();
          sub_100037214();
          swift_allocError();
          DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
          swift_willThrow();
          v61 = v81;
          v82 = *(v80 + 8);
          (v82)(v73, v81);
          (v82)(v67, v61);
        }

LABEL_13:
        (*(v83 + 8))(v68, v69);
        (v53)(v41, enum case for DIPError.Code.internalError(_:), v87);
        goto LABEL_14;
      }

      if (v35 != enum case for BundleRecord.RecordType.unknown(_:))
      {
        (*(v34 + 8))(v51, v33);
      }
    }

    v53 = *(v52 + 104);
    v41 = v84;
    (v53)(v84, enum case for DIPError.Code.webPresentmentRegistrationUnsupportedBundleType(_:), v87);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100037214();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    (*(v80 + 8))(v67, v81);
    goto LABEL_13;
  }

  (*(v28 + 8))(v30, v27);
  (*(v82 + 104))(v84, enum case for DIPError.Code.internalError(_:), v87);
LABEL_14:
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100037214();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();
}

uint64_t sub_1004D1F24(uint64_t a1)
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v3);
  v8 = &v27 - v7;
  __chkstk_darwin(v6);
  v10 = &v27 - v9;
  defaultLogger()();
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v28 = v14;
    *v13 = 136315138;
    *(v13 + 4) = sub_100141FE4(0xD000000000000017, 0x800000010071B7B0, &v28);
    _os_log_impl(&_mh_execute_header, v11, v12, "MobileDocumentProviderRegistrationListener %s", v13, 0xCu);
    sub_10000BB78(v14);
  }

  v15 = *(v2 + 8);
  v15(v10, v1);
  v16 = static MobileDocumentProviderRegistrationEntitlementChecker.checkEntitlement(connection:)();
  if (v16)
  {
    defaultLogger()();
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v28 = v20;
      *v19 = 136315138;
      *(v19 + 4) = sub_100141FE4(0xD000000000000017, 0x800000010071B7B0, &v28);
      _os_log_impl(&_mh_execute_header, v17, v18, "MobileDocumentProviderRegistrationListener %s mobile document provider registration entitlement present", v19, 0xCu);
      sub_10000BB78(v20);
    }

    v21 = v8;
  }

  else
  {
    defaultLogger()();
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v28 = v25;
      *v24 = 136315138;
      *(v24 + 4) = sub_100141FE4(0xD000000000000017, 0x800000010071B7B0, &v28);
      _os_log_impl(&_mh_execute_header, v22, v23, "MobileDocumentProviderRegistrationListener %s No valid entitlements present", v24, 0xCu);
      sub_10000BB78(v25);
    }

    v21 = v5;
  }

  v15(v21, v1);
  return v16 & 1;
}

uint64_t sub_1004D22E4(uint64_t a1)
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v3);
  v8 = &v27 - v7;
  __chkstk_darwin(v6);
  v10 = &v27 - v9;
  defaultLogger()();
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v28 = v14;
    *v13 = 136315138;
    *(v13 + 4) = sub_100141FE4(0xD00000000000001FLL, 0x800000010071B790, &v28);
    _os_log_impl(&_mh_execute_header, v11, v12, "MobileDocumentProviderRegistrationListener %s", v13, 0xCu);
    sub_10000BB78(v14);
  }

  v15 = *(v2 + 8);
  v15(v10, v1);
  v16 = static MobileDocumentProviderRegistrationEntitlementChecker.checkSettingsEntitlement(connection:)();
  if (v16)
  {
    defaultLogger()();
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v28 = v20;
      *v19 = 136315138;
      *(v19 + 4) = sub_100141FE4(0xD00000000000001FLL, 0x800000010071B790, &v28);
      _os_log_impl(&_mh_execute_header, v17, v18, "MobileDocumentProviderRegistrationListener %s mobile document provider registration settings entitlement present", v19, 0xCu);
      sub_10000BB78(v20);
    }

    v21 = v8;
  }

  else
  {
    defaultLogger()();
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v28 = v25;
      *v24 = 136315138;
      *(v24 + 4) = sub_100141FE4(0xD00000000000001FLL, 0x800000010071B790, &v28);
      _os_log_impl(&_mh_execute_header, v22, v23, "MobileDocumentProviderRegistrationListener %s No valid settings entitlements present", v24, 0xCu);
      sub_10000BB78(v25);
    }

    v21 = v5;
  }

  v15(v21, v1);
  return v16 & 1;
}

uint64_t sub_1004D26A4(uint64_t a1)
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v3);
  v8 = &v27 - v7;
  __chkstk_darwin(v6);
  v10 = &v27 - v9;
  defaultLogger()();
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v28 = v14;
    *v13 = 136315138;
    *(v13 + 4) = sub_100141FE4(0xD000000000000028, 0x800000010071B720, &v28);
    _os_log_impl(&_mh_execute_header, v11, v12, "MobileDocumentProviderRegistrationListener %s", v13, 0xCu);
    sub_10000BB78(v14);
  }

  v15 = *(v2 + 8);
  v15(v10, v1);
  v16 = static MobileDocumentProviderRegistrationEntitlementChecker.checkPrivilegedTestingRegistrationEntitlement(connection:)();
  if (v16)
  {
    defaultLogger()();
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v28 = v20;
      *v19 = 136315138;
      *(v19 + 4) = sub_100141FE4(0xD000000000000028, 0x800000010071B720, &v28);
      _os_log_impl(&_mh_execute_header, v17, v18, "MobileDocumentProviderRegistrationListener %s mobile document provider registration privileged testing entitlement present", v19, 0xCu);
      sub_10000BB78(v20);
    }

    v21 = v8;
  }

  else
  {
    defaultLogger()();
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v28 = v25;
      *v24 = 136315138;
      *(v24 + 4) = sub_100141FE4(0xD000000000000028, 0x800000010071B720, &v28);
      _os_log_impl(&_mh_execute_header, v22, v23, "MobileDocumentProviderRegistrationListener %s No valid privileged testing entitlements present", v24, 0xCu);
      sub_10000BB78(v25);
    }

    v21 = v5;
  }

  v15(v21, v1);
  return v16 & 1;
}

uint64_t sub_1004D2A64(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v7 = __chkstk_darwin(v6);
  v9 = v31 - v8;
  __chkstk_darwin(v7);
  v11 = v31 - v10;
  defaultLogger()();
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v31[0] = v2;
    v15 = a1;
    v16 = v9;
    v17 = v4;
    v18 = v5;
    v19 = v14;
    v20 = swift_slowAlloc();
    *&v38[0] = v20;
    *v19 = 136315138;
    *(v19 + 4) = sub_100141FE4(0xD000000000000026, 0x8000000100715680, v38);
    _os_log_impl(&_mh_execute_header, v12, v13, "MobileDocumentProviderRegistrationListener %s", v19, 0xCu);
    sub_10000BB78(v20);

    v5 = v18;
    v4 = v17;
    v9 = v16;
    a1 = v15;
  }

  v21 = *(v5 + 8);
  v21(v11, v4);
  sub_1004D0B7C(a1, &aBlock);
  v38[3] = v35;
  v38[4] = v36;
  v39[0] = v37[0];
  *(v39 + 9) = *(v37 + 9);
  v38[0] = aBlock;
  v38[1] = v33;
  v38[2] = v34;
  sub_1003311DC(v38, &aBlock);
  type metadata accessor for MobileDocumentProviderRegistrationSessionProxy();
  swift_allocObject();
  v22 = sub_1004D30CC(&aBlock);
  v23 = [objc_opt_self() interfaceWithProtocol:&OBJC_PROTOCOL____TtP7CoreIDV43MobileDocumentProviderRegistrationInterface_];
  [a1 setExportedInterface:v23];

  [a1 setExportedObject:v22];
  *&v34 = sub_1004D105C;
  *(&v34 + 1) = 0;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v33 = sub_100503A7C;
  *(&v33 + 1) = &unk_1008145B8;
  v24 = _Block_copy(&aBlock);
  [a1 setInterruptionHandler:v24];
  _Block_release(v24);
  *&v34 = sub_1004D1068;
  *(&v34 + 1) = 0;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v33 = sub_100503A7C;
  *(&v33 + 1) = &unk_1008145E0;
  v25 = _Block_copy(&aBlock);
  [a1 setInvalidationHandler:v25];
  _Block_release(v25);
  [a1 activate];
  defaultLogger()();
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    *&aBlock = v29;
    *v28 = 136315138;
    *(v28 + 4) = sub_100141FE4(0xD000000000000026, 0x8000000100715680, &aBlock);
    _os_log_impl(&_mh_execute_header, v26, v27, "MobileDocumentProviderRegistrationListener %s Activating new connection", v28, 0xCu);
    sub_10000BB78(v29);
  }

  v21(v9, v4);
  sub_10033A9D0(v38);
  return 1;
}

uint64_t sub_1004D30AC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_1004D30CC(uint64_t a1)
{
  v2 = v1;
  swift_defaultActor_initialize();
  v31 = v2;
  sub_1003311DC(a1, (v2 + 14));
  v32 = a1;
  sub_1003311DC(a1, v57);
  if (qword_100832B60 != -1)
  {
    swift_once();
  }

  v4 = *(qword_100881E78 + 16);
  os_unfair_lock_lock(v4 + 54);
  sub_1000318FC(&v4[4], &v50);
  os_unfair_lock_unlock(v4 + 54);
  v5 = v53;

  sub_100031918(&v50);
  v55 = type metadata accessor for MobileDocumentRegistrationDataContainer();
  v56 = sub_1004DB36C(&qword_100843228, type metadata accessor for MobileDocumentRegistrationDataContainer, &unk_1006E8818);
  *&v54 = v5;
  v51 = type metadata accessor for MobileDocumentProviderRegistrationValidator();
  v52 = &protocol witness table for MobileDocumentProviderRegistrationValidator;
  sub_100032DBC(&v50);
  MobileDocumentProviderRegistrationValidator.init()();
  v6 = type metadata accessor for MobileDocumentProviderRegistrationStorage();
  v7 = swift_allocObject();
  sub_10001F358(&v54, v7 + 16);
  sub_10001F358(&v50, v7 + 56);
  static MobileDocumentProvider.extensionPointIdentifier.getter();
  v8 = type metadata accessor for ExtensionPointManager();
  swift_allocObject();
  v9 = ExtensionPointManager.init(extensionPointIdentifier:)();
  v51 = v8;
  v52 = &protocol witness table for ExtensionPointManager;
  *&v50 = v9;
  v55 = type metadata accessor for BundleRecordFetcher();
  v56 = &protocol witness table for BundleRecordFetcher;
  sub_100032DBC(&v54);
  BundleRecordFetcher.init()();
  static MobileDocumentProvider.extensionPointIdentifier.getter();
  swift_allocObject();
  v48 = v8;
  v49 = &protocol witness table for ExtensionPointManager;
  *&v47 = ExtensionPointManager.init(extensionPointIdentifier:)();
  v10 = type metadata accessor for IdentityDocumentProviderExtensionConnectionManager();
  v11 = swift_allocObject();
  sub_10001F358(&v47, v11 + 16);
  v48 = type metadata accessor for DeviceInformationProvider();
  v49 = &protocol witness table for DeviceInformationProvider;
  sub_100032DBC(&v47);
  DeviceInformationProvider.init()();
  v45 = type metadata accessor for ProcessVisibilityMonitor();
  v46 = &protocol witness table for ProcessVisibilityMonitor;
  sub_100032DBC(&v44);
  ProcessVisibilityMonitor.init()();
  v43[3] = v6;
  v43[4] = &off_10080DE08;
  v43[0] = v7;
  v41 = v10;
  v42 = &off_10080DBC0;
  v40[0] = v11;
  type metadata accessor for MobileDocumentProviderRegistrationFlow();
  v12 = swift_allocObject();
  v13 = sub_10001F370(v43, v6);
  v30[1] = v30;
  __chkstk_darwin(v13);
  v15 = (v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v16 + 16))(v15);
  v17 = sub_10001F370(v40, v41);
  __chkstk_darwin(v17);
  v19 = (v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v20 + 16))(v19);
  v21 = *v15;
  v22 = *v19;
  v38 = v6;
  v39 = &off_10080DE08;
  v36 = &off_10080DBC0;
  *&v37 = v21;
  v35 = v10;
  *&v34 = v22;
  swift_defaultActor_initialize();
  v23 = v58[0];
  *(v12 + 176) = v57[4];
  *(v12 + 192) = v23;
  *(v12 + 201) = *(v58 + 9);
  v24 = v57[1];
  *(v12 + 112) = v57[0];
  *(v12 + 128) = v24;
  v25 = v57[3];
  *(v12 + 144) = v57[2];
  *(v12 + 160) = v25;
  sub_10001F358(&v37, v12 + 224);
  sub_10001F358(&v50, v12 + 264);
  sub_10001F358(&v54, v12 + 304);
  *(v12 + 344) = &type metadata for WebPresentmentProviderOptInAlertPresenter;
  *(v12 + 352) = &off_100811C28;
  sub_10001F358(&v34, v12 + 360);
  sub_10001F358(&v47, v12 + 400);
  sub_10001F358(&v44, v12 + 440);
  *(v12 + 480) = sub_1003336A8;
  *(v12 + 488) = 0;
  sub_10000BB78(v40);
  sub_10000BB78(v43);
  v26 = v31;
  v31[28] = v12;
  v27 = type metadata accessor for MobileDocumentProviderRegistrationSessionProxy();
  v33.receiver = v26;
  v33.super_class = v27;
  v28 = objc_msgSendSuper2(&v33, "init");
  sub_10033A9D0(v32);
  return v28;
}

uint64_t sub_1004D35D4()
{
  v1[2] = v0;
  v2 = type metadata accessor for MobileDocumentProviderRegistrationSession.Status();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();
  v3 = type metadata accessor for Logger();
  v1[7] = v3;
  v1[8] = *(v3 - 8);
  v1[9] = swift_task_alloc();

  return _swift_task_switch(sub_1004D36FC, v0, 0);
}

uint64_t sub_1004D36FC(uint64_t a1)
{
  v14 = v1;
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  v4 = os_log_type_enabled(v2, v3);
  v6 = v1[8];
  v5 = v1[9];
  v7 = v1[7];
  if (v4)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v13 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_100141FE4(0xD000000000000015, 0x800000010071BD00, &v13);
    _os_log_impl(&_mh_execute_header, v2, v3, "MobileDocumentProviderRegistrationSessionProxy %s", v8, 0xCu);
    sub_10000BB78(v9);
  }

  (*(v6 + 8))(v5, v7);
  v10 = swift_task_alloc();
  v1[10] = v10;
  *v10 = v1;
  v10[1] = sub_1004D38A0;
  v11 = v1[6];

  return sub_100332768(v11);
}

uint64_t sub_1004D38A0()
{
  v1 = *(*v0 + 16);

  return _swift_task_switch(sub_1004D39B0, v1, 0);
}

uint64_t sub_1004D39B0()
{
  v1 = v0[6];
  v2 = v0[3];
  v3 = v0[4];
  (*(v3 + 16))(v0[5], v1, v2);
  v4 = objc_allocWithZone(type metadata accessor for XPCMobileDocumentProviderStatusResponse());
  v5 = XPCMobileDocumentProviderStatusResponse.init(value:)();
  (*(v3 + 8))(v1, v2);

  v6 = v0[1];

  return v6(v5);
}

uint64_t sub_1004D3C0C(const void *a1, uint64_t a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);

  v3 = swift_task_alloc();
  v2[4] = v3;
  *v3 = v2;
  v3[1] = sub_1004D3CB4;

  return sub_1004D35D4();
}

uint64_t sub_1004D3CB4(void *a1)
{
  v3 = *(*v1 + 24);
  v6 = *v1;

  (v3)[2](v3, a1);
  _Block_release(v3);

  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_1004D3E04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = type metadata accessor for DIPError.Code();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  type metadata accessor for DIPError();
  v4[9] = swift_task_alloc();
  v6 = type metadata accessor for MobileDocumentProviderRegistrationSession.Error();
  v4[10] = v6;
  v4[11] = *(v6 - 8);
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();
  v7 = type metadata accessor for MobileDocumentRegistration();
  v4[15] = v7;
  v4[16] = *(v7 - 8);
  v4[17] = swift_task_alloc();
  v8 = type metadata accessor for MobileDocumentProviderRegistrationRequest();
  v4[18] = v8;
  v4[19] = *(v8 - 8);
  v4[20] = swift_task_alloc();
  v4[21] = swift_task_alloc();
  v9 = type metadata accessor for Logger();
  v4[22] = v9;
  v4[23] = *(v9 - 8);
  v4[24] = swift_task_alloc();
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();

  return _swift_task_switch(sub_1004D40A0, v3, 0);
}

uint64_t sub_1004D40A0()
{
  v32 = v0;
  v1 = sub_1004D931C(*(v0 + 24), *(v0 + 32));
  *(v0 + 216) = v2;
  v3 = v1;
  v4 = v2;
  v5 = *(v0 + 16);
  defaultLogger()();
  v6 = v5;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();

  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v0 + 208);
  v11 = *(v0 + 176);
  v12 = *(v0 + 184);
  if (v9)
  {
    v29 = *(v0 + 176);
    v30 = v3;
    v13 = *(v0 + 168);
    v27 = v8;
    v14 = *(v0 + 152);
    v16 = *(v0 + 128);
    v15 = *(v0 + 136);
    v25 = *(v0 + 144);
    v26 = *(v0 + 120);
    v28 = *(v0 + 208);
    v17 = swift_slowAlloc();
    v31[0] = swift_slowAlloc();
    *v17 = 136315394;
    *(v17 + 4) = sub_100141FE4(0xD000000000000030, 0x800000010071BCC0, v31);
    *(v17 + 12) = 2080;
    XPCMobileDocumentProviderRegistrationRequest.value.getter();
    MobileDocumentProviderRegistrationRequest.registration.getter();
    (*(v14 + 8))(v13, v25);
    v18 = MobileDocumentRegistration.documentIdentifier.getter();
    v20 = v19;
    (*(v16 + 8))(v15, v26);
    v21 = sub_100141FE4(v18, v20, v31);
    v3 = v30;

    *(v17 + 14) = v21;
    _os_log_impl(&_mh_execute_header, v7, v27, "MobileDocumentProviderRegistrationSessionProxy %s document identifier %s", v17, 0x16u);
    swift_arrayDestroy();

    (*(v12 + 8))(v28, v29);
  }

  else
  {

    (*(v12 + 8))(v10, v11);
  }

  XPCMobileDocumentProviderRegistrationRequest.value.getter();
  v22 = swift_task_alloc();
  *(v0 + 224) = v22;
  *v22 = v0;
  v22[1] = sub_1004D48C0;
  v23 = *(v0 + 160);

  return sub_100333700(v23, v3, v4);
}

uint64_t sub_1004D48C0()
{
  v2 = *v1;
  v3 = *v1;
  *(*v1 + 232) = v0;

  if (v0)
  {
    v4 = v2[5];
    (*(v2[19] + 8))(v2[20], v2[18]);

    return _swift_task_switch(sub_1004D4B00, v4, 0);
  }

  else
  {
    (*(v2[19] + 8))(v2[20], v2[18]);

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_1004D4B00()
{
  v52 = v0;
  v1 = v0[25];
  v2 = v0[23];
  v3 = v0[14];
  v45 = v0[13];
  v4 = v0[11];
  v48 = v0[22];
  v49 = v0[12];
  v43 = v0[10];
  v5 = v0[7];
  v40 = v0[8];
  v42 = v0[9];
  v50 = v0[6];
  v51[0] = 0;
  v51[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(70);
  v6._countAndFlagsBits = 0xD00000000000002FLL;
  v6._object = 0x800000010071BB40;
  String.append(_:)(v6);
  v7._countAndFlagsBits = 0xD000000000000030;
  v7._object = 0x800000010071BCC0;
  String.append(_:)(v7);
  v8._countAndFlagsBits = 0xD000000000000015;
  v8._object = 0x800000010071BB70;
  String.append(_:)(v8);
  defaultLogger()();
  DIPRecordError(_:message:log:)();

  v47 = *(v2 + 8);
  v47(v1, v48);
  (*(v5 + 104))(v40, enum case for DIPError.Code.internalError(_:), v50);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  sub_100343124(v42);
  defaultLogger()();
  v9 = *(v4 + 16);
  v9(v45, v3, v43);
  v46 = v9;
  v9(v49, v3, v43);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();
  v12 = os_log_type_enabled(v10, v11);
  v13 = v0[24];
  v14 = v0[22];
  v16 = v0[12];
  v15 = v0[13];
  v18 = v0[10];
  v17 = v0[11];
  if (v12)
  {
    v41 = v11;
    v19 = swift_slowAlloc();
    v51[0] = swift_slowAlloc();
    *v19 = 136315650;
    *(v19 + 4) = sub_100141FE4(0xD000000000000030, 0x800000010071BCC0, v51);
    *(v19 + 12) = 2080;
    sub_1004DB36C(&qword_100846058, &type metadata accessor for MobileDocumentProviderRegistrationSession.Error, &protocol conformance descriptor for MobileDocumentProviderRegistrationSession.Error);
    v38 = v13;
    v39 = v14;
    v20 = Error.localizedDescription.getter();
    v22 = v21;
    v23 = *(v17 + 8);
    v23(v15, v18);
    v24 = sub_100141FE4(v20, v22, v51);

    *(v19 + 14) = v24;
    *(v19 + 22) = 2080;
    v25 = MobileDocumentProviderRegistrationSession.Error.debugDescription.getter();
    if (v26)
    {
      v27 = v25;
    }

    else
    {
      v27 = 7104878;
    }

    if (v26)
    {
      v28 = v26;
    }

    else
    {
      v28 = 0xE300000000000000;
    }

    v44 = v23;
    v23(v16, v18);
    v29 = sub_100141FE4(v27, v28, v51);

    *(v19 + 24) = v29;
    _os_log_impl(&_mh_execute_header, v10, v41, "MobileDocumentProviderRegistrationSessionProxy %s finished with error: %s. Debug description: %s", v19, 0x20u);
    swift_arrayDestroy();

    v30 = v38;
    v31 = v39;
  }

  else
  {

    v32 = *(v17 + 8);
    v32(v16, v18);
    v44 = v32;
    v32(v15, v18);
    v30 = v13;
    v31 = v14;
  }

  v47(v30, v31);
  v33 = v0[14];
  v34 = v0[10];
  sub_1004DB36C(&qword_100846058, &type metadata accessor for MobileDocumentProviderRegistrationSession.Error, &protocol conformance descriptor for MobileDocumentProviderRegistrationSession.Error);
  swift_allocError();
  v46(v35, v33, v34);
  swift_willThrow();

  v44(v33, v34);

  v36 = v0[1];

  return v36();
}

uint64_t sub_1004D5234(void *a1, uint64_t a2, void *aBlock, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  v4[4] = _Block_copy(aBlock);
  if (a2)
  {
    a2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v4[5] = v8;
  v9 = a1;

  v10 = swift_task_alloc();
  v4[6] = v10;
  *v10 = v4;
  v10[1] = sub_1004DB3B4;

  return sub_1004D3E04(v9, a2, v8);
}

uint64_t sub_1004D532C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = type metadata accessor for DIPError.Code();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  type metadata accessor for DIPError();
  v4[9] = swift_task_alloc();
  v6 = type metadata accessor for MobileDocumentProviderRegistrationSession.Error();
  v4[10] = v6;
  v4[11] = *(v6 - 8);
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();
  v7 = type metadata accessor for MobileDocumentProviderUnregisterRequest();
  v4[15] = v7;
  v4[16] = *(v7 - 8);
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();
  v8 = type metadata accessor for Logger();
  v4[19] = v8;
  v4[20] = *(v8 - 8);
  v4[21] = swift_task_alloc();
  v4[22] = swift_task_alloc();
  v4[23] = swift_task_alloc();

  return _swift_task_switch(sub_1004D556C, v3, 0);
}

uint64_t sub_1004D556C()
{
  v29 = v0;
  v1 = sub_1004D931C(*(v0 + 24), *(v0 + 32));
  *(v0 + 192) = v2;
  v3 = v1;
  v4 = v2;
  v5 = *(v0 + 16);
  defaultLogger()();
  v6 = v5;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();

  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v0 + 184);
  v11 = *(v0 + 152);
  v12 = *(v0 + 160);
  if (v9)
  {
    v26 = *(v0 + 184);
    v27 = *(v0 + 152);
    v13 = *(v0 + 144);
    v14 = *(v0 + 128);
    v25 = *(v0 + 120);
    v15 = swift_slowAlloc();
    v28[0] = swift_slowAlloc();
    *v15 = 136315394;
    *(v15 + 4) = sub_100141FE4(0xD000000000000032, 0x800000010071BC80, v28);
    *(v15 + 12) = 2080;
    XPCMobileDocumentProviderUnregisterRequest.value.getter();
    v16 = MobileDocumentProviderUnregisterRequest.documentIdentifier.getter();
    v24 = v8;
    v17 = v3;
    v19 = v18;
    (*(v14 + 8))(v13, v25);
    v20 = sub_100141FE4(v16, v19, v28);
    v3 = v17;

    *(v15 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v7, v24, "MobileDocumentProviderRegistrationSessionProxy %s document with identifier %s", v15, 0x16u);
    swift_arrayDestroy();

    (*(v12 + 8))(v26, v27);
  }

  else
  {

    (*(v12 + 8))(v10, v11);
  }

  XPCMobileDocumentProviderUnregisterRequest.value.getter();
  v21 = swift_task_alloc();
  *(v0 + 200) = v21;
  *v21 = v0;
  v21[1] = sub_1004D5D4C;
  v22 = *(v0 + 136);

  return sub_10033493C(v22, v3, v4);
}

uint64_t sub_1004D5D4C()
{
  v2 = *v1;
  v3 = *v1;
  *(*v1 + 208) = v0;

  if (v0)
  {
    v4 = v2[5];
    (*(v2[16] + 8))(v2[17], v2[15]);

    return _swift_task_switch(sub_1004D5F7C, v4, 0);
  }

  else
  {
    (*(v2[16] + 8))(v2[17], v2[15]);

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_1004D5F7C()
{
  v52 = v0;
  v1 = v0[22];
  v2 = v0[20];
  v3 = v0[14];
  v45 = v0[13];
  v4 = v0[11];
  v48 = v0[19];
  v49 = v0[12];
  v43 = v0[10];
  v5 = v0[7];
  v40 = v0[8];
  v42 = v0[9];
  v50 = v0[6];
  v51[0] = 0;
  v51[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(70);
  v6._countAndFlagsBits = 0xD00000000000002FLL;
  v6._object = 0x800000010071BB40;
  String.append(_:)(v6);
  v7._countAndFlagsBits = 0xD000000000000032;
  v7._object = 0x800000010071BC80;
  String.append(_:)(v7);
  v8._countAndFlagsBits = 0xD000000000000015;
  v8._object = 0x800000010071BB70;
  String.append(_:)(v8);
  defaultLogger()();
  DIPRecordError(_:message:log:)();

  v47 = *(v2 + 8);
  v47(v1, v48);
  (*(v5 + 104))(v40, enum case for DIPError.Code.internalError(_:), v50);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  sub_100343124(v42);
  defaultLogger()();
  v9 = *(v4 + 16);
  v9(v45, v3, v43);
  v46 = v9;
  v9(v49, v3, v43);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();
  v12 = os_log_type_enabled(v10, v11);
  v13 = v0[21];
  v14 = v0[19];
  v15 = v0[12];
  v16 = v0[13];
  v17 = v0[10];
  v18 = v0[11];
  if (v12)
  {
    v41 = v11;
    v19 = swift_slowAlloc();
    v51[0] = swift_slowAlloc();
    *v19 = 136315650;
    *(v19 + 4) = sub_100141FE4(0xD000000000000032, 0x800000010071BC80, v51);
    *(v19 + 12) = 2080;
    sub_1004DB36C(&qword_100846058, &type metadata accessor for MobileDocumentProviderRegistrationSession.Error, &protocol conformance descriptor for MobileDocumentProviderRegistrationSession.Error);
    v38 = v13;
    v39 = v14;
    v20 = Error.localizedDescription.getter();
    v22 = v21;
    v23 = *(v18 + 8);
    v23(v16, v17);
    v24 = sub_100141FE4(v20, v22, v51);

    *(v19 + 14) = v24;
    *(v19 + 22) = 2080;
    v25 = MobileDocumentProviderRegistrationSession.Error.debugDescription.getter();
    if (v26)
    {
      v27 = v25;
    }

    else
    {
      v27 = 7104878;
    }

    if (v26)
    {
      v28 = v26;
    }

    else
    {
      v28 = 0xE300000000000000;
    }

    v44 = v23;
    v23(v15, v17);
    v29 = sub_100141FE4(v27, v28, v51);

    *(v19 + 24) = v29;
    _os_log_impl(&_mh_execute_header, v10, v41, "MobileDocumentProviderRegistrationSessionProxy %s finished with error: %s. Debug description: %s", v19, 0x20u);
    swift_arrayDestroy();

    v30 = v38;
    v31 = v39;
  }

  else
  {

    v32 = *(v18 + 8);
    v32(v15, v17);
    v44 = v32;
    v32(v16, v17);
    v30 = v13;
    v31 = v14;
  }

  v47(v30, v31);
  v33 = v0[14];
  v34 = v0[10];
  sub_1004DB36C(&qword_100846058, &type metadata accessor for MobileDocumentProviderRegistrationSession.Error, &protocol conformance descriptor for MobileDocumentProviderRegistrationSession.Error);
  swift_allocError();
  v46(v35, v33, v34);
  swift_willThrow();

  v44(v33, v34);

  v36 = v0[1];

  return v36();
}

uint64_t sub_1004D669C(void *a1, uint64_t a2, void *aBlock, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  v4[4] = _Block_copy(aBlock);
  if (a2)
  {
    a2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v4[5] = v8;
  v9 = a1;

  v10 = swift_task_alloc();
  v4[6] = v10;
  *v10 = v4;
  v10[1] = sub_10048F500;

  return sub_1004D532C(v9, a2, v8);
}

uint64_t sub_1004D6794(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for DIPError.Code();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  type metadata accessor for DIPError();
  v3[8] = swift_task_alloc();
  v5 = type metadata accessor for MobileDocumentProviderRegistrationSession.Error();
  v3[9] = v5;
  v3[10] = *(v5 - 8);
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  RegistrationsResponse = type metadata accessor for MobileDocumentProviderQueryRegistrationsResponse();
  v3[14] = RegistrationsResponse;
  v3[15] = *(RegistrationsResponse - 8);
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  v7 = type metadata accessor for Logger();
  v3[18] = v7;
  v3[19] = *(v7 - 8);
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();

  return _swift_task_switch(sub_1004D69D4, v2, 0);
}

uint64_t sub_1004D69D4()
{
  v17 = v0;
  v1 = sub_1004D931C(*(v0 + 16), *(v0 + 24));
  *(v0 + 184) = v2;
  v3 = v1;
  v4 = v2;
  defaultLogger()();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();
  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 176);
  v9 = *(v0 + 144);
  v10 = *(v0 + 152);
  if (v7)
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v16[0] = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_100141FE4(0xD00000000000002DLL, 0x800000010071BC50, v16);
    _os_log_impl(&_mh_execute_header, v5, v6, "MobileDocumentProviderRegistrationSessionProxy %s", v11, 0xCu);
    sub_10000BB78(v12);
  }

  (*(v10 + 8))(v8, v9);
  v13 = swift_task_alloc();
  *(v0 + 192) = v13;
  *v13 = v0;
  v13[1] = sub_1004D7110;
  v14 = *(v0 + 136);

  return sub_100335794(v14, v3, v4);
}

uint64_t sub_1004D7110()
{
  v2 = *v1;
  *(*v1 + 200) = v0;

  v3 = *(v2 + 32);

  if (v0)
  {
    v4 = sub_1004D73A0;
  }

  else
  {
    v4 = sub_1004D7258;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1004D7258()
{
  v1 = v0[17];
  v2 = v0[14];
  v3 = v0[15];
  (*(v3 + 16))(v0[16], v1, v2);
  v4 = objc_allocWithZone(type metadata accessor for XPCMobileDocumentProviderQueryRegistrationsResponse());
  v5 = XPCMobileDocumentProviderQueryRegistrationsResponse.init(value:)();
  (*(v3 + 8))(v1, v2);

  v6 = v0[1];

  return v6(v5);
}

uint64_t sub_1004D73A0()
{
  v50 = v0;
  v1 = v0[21];
  v2 = v0[19];
  v3 = v0[13];
  v44 = v0[12];
  v46 = v0[18];
  v4 = v0[10];
  v42 = v0[9];
  v40 = v0[8];
  v5 = v0[6];
  v38 = v0[7];
  v47 = v0[11];
  v48 = v0[5];
  v49[0] = 0;
  v49[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(70);
  v6._countAndFlagsBits = 0xD00000000000002FLL;
  v6._object = 0x800000010071BB40;
  String.append(_:)(v6);
  v7._countAndFlagsBits = 0xD00000000000002DLL;
  v7._object = 0x800000010071BC50;
  String.append(_:)(v7);
  v8._countAndFlagsBits = 0xD000000000000015;
  v8._object = 0x800000010071BB70;
  String.append(_:)(v8);
  defaultLogger()();
  DIPRecordError(_:message:log:)();

  v9 = *(v2 + 8);
  v9(v1, v46);
  (*(v5 + 104))(v38, enum case for DIPError.Code.internalError(_:), v48);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  sub_100343124(v40);
  defaultLogger()();
  v10 = *(v4 + 16);
  v10(v44, v3, v42);
  v45 = v10;
  v10(v47, v3, v42);
  v11 = Logger.logObject.getter();
  v41 = static os_log_type_t.error.getter();
  v12 = os_log_type_enabled(v11, v41);
  v13 = v0[20];
  v14 = v0[18];
  v15 = v0[11];
  v16 = v0[12];
  v17 = v0[9];
  v18 = v0[10];
  if (v12)
  {
    v39 = v0[18];
    v19 = swift_slowAlloc();
    v49[0] = swift_slowAlloc();
    *v19 = 136315650;
    *(v19 + 4) = sub_100141FE4(0xD00000000000002DLL, 0x800000010071BC50, v49);
    *(v19 + 12) = 2080;
    sub_1004DB36C(&qword_100846058, &type metadata accessor for MobileDocumentProviderRegistrationSession.Error, &protocol conformance descriptor for MobileDocumentProviderRegistrationSession.Error);
    v36 = v13;
    v37 = v9;
    v20 = Error.localizedDescription.getter();
    v22 = v21;
    v23 = *(v18 + 8);
    v23(v16, v17);
    v24 = sub_100141FE4(v20, v22, v49);

    *(v19 + 14) = v24;
    *(v19 + 22) = 2080;
    v25 = MobileDocumentProviderRegistrationSession.Error.debugDescription.getter();
    if (v26)
    {
      v27 = v25;
    }

    else
    {
      v27 = 7104878;
    }

    if (v26)
    {
      v28 = v26;
    }

    else
    {
      v28 = 0xE300000000000000;
    }

    v43 = v23;
    v23(v15, v17);
    v29 = sub_100141FE4(v27, v28, v49);

    *(v19 + 24) = v29;
    _os_log_impl(&_mh_execute_header, v11, v41, "MobileDocumentProviderRegistrationSessionProxy %s finished with error: %s. Debug description: %s", v19, 0x20u);
    swift_arrayDestroy();

    v37(v36, v39);
  }

  else
  {

    v30 = *(v18 + 8);
    v30(v15, v17);
    v43 = v30;
    v30(v16, v17);
    v9(v13, v14);
  }

  v31 = v0[13];
  v32 = v0[9];
  sub_1004DB36C(&qword_100846058, &type metadata accessor for MobileDocumentProviderRegistrationSession.Error, &protocol conformance descriptor for MobileDocumentProviderRegistrationSession.Error);
  swift_allocError();
  v45(v33, v31, v32);
  swift_willThrow();

  v43(v31, v32);

  v34 = v0[1];

  return v34();
}

uint64_t sub_1004D7ACC(uint64_t a1, void *aBlock, uint64_t a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  if (a1)
  {
    a1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v3[4] = v6;

  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_1004D7BAC;

  return sub_1004D6794(a1, v6);
}

uint64_t sub_1004D7BAC(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *v2;

  v7 = *(v5 + 24);

  if (v3)
  {
    v8 = _convertErrorToNSError(_:)();

    (v7)[2](v7, 0, v8);

    _Block_release(v7);
  }

  else
  {
    (v7)[2](v7, a1, 0);
    _Block_release(v7);
  }

  v9 = *(v6 + 8);

  return v9();
}

uint64_t sub_1004D7D68()
{
  v1[16] = v0;
  v1[17] = type metadata accessor for DIPError();
  v1[18] = swift_task_alloc();
  v2 = type metadata accessor for MobileDocumentProviderRegistrationSession.Error();
  v1[19] = v2;
  v1[20] = *(v2 - 8);
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  v3 = type metadata accessor for DIPError.Code();
  v1[24] = v3;
  v1[25] = *(v3 - 8);
  v1[26] = swift_task_alloc();
  AllApplicationsResponse = type metadata accessor for MobileDocumentProviderQueryAllApplicationsResponse();
  v1[27] = AllApplicationsResponse;
  v1[28] = *(AllApplicationsResponse - 8);
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();
  v5 = type metadata accessor for Logger();
  v1[31] = v5;
  v1[32] = *(v5 - 8);
  v1[33] = swift_task_alloc();
  v1[34] = swift_task_alloc();
  v1[35] = swift_task_alloc();
  v1[36] = swift_task_alloc();

  return _swift_task_switch(sub_1004D7FB4, v0, 0);
}

uint64_t sub_1004D7FB4(uint64_t a1)
{
  v70 = v1;
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v1 + 288);
  v6 = *(v1 + 248);
  v7 = *(v1 + 256);
  if (v4)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v69[0] = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_100141FE4(0xD000000000000011, 0x800000010070EAD0, v69);
    _os_log_impl(&_mh_execute_header, v2, v3, "MobileDocumentProviderRegistrationSessionProxy %s", v8, 0xCu);
    sub_10000BB78(v9);
  }

  v10 = *(v7 + 8);
  v10(v5, v6);
  *(v1 + 296) = v10;
  if (isInternalBuild()())
  {
    sub_1003311DC(*(v1 + 128) + 112, v1 + 16);
    if (*(v1 + 120))
    {
      if (*(v1 + 120) != 1 && (*(v1 + 16) & 1) != 0)
      {
        v11 = swift_task_alloc();
        *(v1 + 304) = v11;
        *v11 = v1;
        v11[1] = sub_1004D8898;

        return sub_100336554();
      }
    }

    else
    {

      sub_10000BB78((v1 + 80));
    }
  }

  defaultLogger()();
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "Privileged testing entitlement is missing.", v15, 2u);
  }

  v16 = *(v1 + 280);
  v17 = *(v1 + 248);
  v19 = *(v1 + 200);
  v18 = *(v1 + 208);
  v20 = *(v1 + 192);

  v10(v16, v17);
  (*(v19 + 104))(v18, enum case for DIPError.Code.webPresentmentRegistrationEntitlementMissing(_:), v20);
  sub_1000402AC(_swiftEmptyArrayStorage);
  sub_1004DB36C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();
  v21 = *(v1 + 272);
  v56 = *(v1 + 296);
  v67 = *(v1 + 248);
  v22 = *(v1 + 200);
  v23 = *(v1 + 184);
  v58 = *(v1 + 208);
  v59 = *(v1 + 192);
  v65 = *(v1 + 176);
  v68 = *(v1 + 168);
  v24 = *(v1 + 160);
  v61 = *(v1 + 144);
  v63 = *(v1 + 152);
  v69[0] = 0;
  v69[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(70);
  v25._countAndFlagsBits = 0xD00000000000002FLL;
  v25._object = 0x800000010071BB40;
  String.append(_:)(v25);
  v26._countAndFlagsBits = 0xD000000000000011;
  v26._object = 0x800000010070EAD0;
  String.append(_:)(v26);
  v27._countAndFlagsBits = 0xD000000000000015;
  v27._object = 0x800000010071BB70;
  String.append(_:)(v27);
  defaultLogger()();
  DIPRecordError(_:message:log:)();

  v56(v21, v67);
  (*(v22 + 104))(v58, enum case for DIPError.Code.internalError(_:), v59);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  sub_100343124(v61);
  defaultLogger()();
  v28 = *(v24 + 16);
  v28(v65, v23, v63);
  v66 = v28;
  v28(v68, v23, v63);
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.error.getter();
  v31 = os_log_type_enabled(v29, v30);
  v32 = *(v1 + 296);
  v33 = *(v1 + 264);
  v34 = *(v1 + 248);
  v36 = *(v1 + 168);
  v35 = *(v1 + 176);
  v37 = *(v1 + 152);
  v38 = *(v1 + 160);
  if (v31)
  {
    v62 = *(v1 + 248);
    v39 = swift_slowAlloc();
    v69[0] = swift_slowAlloc();
    *v39 = 136315650;
    *(v39 + 4) = sub_100141FE4(0xD000000000000011, 0x800000010070EAD0, v69);
    *(v39 + 12) = 2080;
    sub_1004DB36C(&qword_100846058, &type metadata accessor for MobileDocumentProviderRegistrationSession.Error, &protocol conformance descriptor for MobileDocumentProviderRegistrationSession.Error);
    v60 = v32;
    v40 = Error.localizedDescription.getter();
    v57 = v33;
    v42 = v41;
    v55 = v30;
    v43 = *(v38 + 8);
    v43(v35, v37);
    v44 = sub_100141FE4(v40, v42, v69);

    *(v39 + 14) = v44;
    *(v39 + 22) = 2080;
    v45 = MobileDocumentProviderRegistrationSession.Error.debugDescription.getter();
    if (v46)
    {
      v47 = v45;
    }

    else
    {
      v47 = 7104878;
    }

    if (v46)
    {
      v48 = v46;
    }

    else
    {
      v48 = 0xE300000000000000;
    }

    v64 = v43;
    v43(v36, v37);
    v49 = sub_100141FE4(v47, v48, v69);

    *(v39 + 24) = v49;
    _os_log_impl(&_mh_execute_header, v29, v55, "MobileDocumentProviderRegistrationSessionProxy %s finished with error: %s. Debug description: %s", v39, 0x20u);
    swift_arrayDestroy();

    v60(v57, v62);
  }

  else
  {

    v50 = *(v38 + 8);
    v50(v36, v37);
    v64 = v50;
    v50(v35, v37);
    v32(v33, v34);
  }

  v51 = *(v1 + 184);
  v52 = *(v1 + 152);
  sub_1004DB36C(&qword_100846058, &type metadata accessor for MobileDocumentProviderRegistrationSession.Error, &protocol conformance descriptor for MobileDocumentProviderRegistrationSession.Error);
  swift_allocError();
  v66(v53, v51, v52);
  swift_willThrow();

  v64(v51, v52);

  v54 = *(v1 + 8);

  return v54();
}

uint64_t sub_1004D8898(uint64_t a1)
{
  v4 = *v2;
  v4[39] = v1;

  v5 = v4[16];
  if (v1)
  {
    v6 = sub_1004D8B38;
  }

  else
  {
    v4[40] = a1;
    v6 = sub_1004D89D4;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1004D89D4()
{
  v1 = v0[29];
  v2 = v0[30];
  v3 = v0[27];
  v4 = v0[28];
  MobileDocumentProviderQueryAllApplicationsResponse.init(providerApplications:)();
  (*(v4 + 16))(v1, v2, v3);
  v5 = objc_allocWithZone(type metadata accessor for XPCMobileDocumentProviderQueryAllApplicationsResponse());
  v6 = XPCMobileDocumentProviderQueryAllApplicationsResponse.init(value:)();
  (*(v4 + 8))(v2, v3);

  v7 = v0[1];

  return v7(v6);
}

uint64_t sub_1004D8B38()
{
  v50 = v0;
  v1 = v0[34];
  v47 = v0[31];
  v2 = v0[25];
  v38 = v0[26];
  v3 = v0[23];
  v39 = v0[24];
  v41 = v0[37];
  v48 = v0[21];
  v4 = v0[20];
  v43 = v0[19];
  v44 = v0[22];
  v5 = v0[18];
  v49[0] = 0;
  v49[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(70);
  v6._countAndFlagsBits = 0xD00000000000002FLL;
  v6._object = 0x800000010071BB40;
  String.append(_:)(v6);
  v7._countAndFlagsBits = 0xD000000000000011;
  v7._object = 0x800000010070EAD0;
  String.append(_:)(v7);
  v8._countAndFlagsBits = 0xD000000000000015;
  v8._object = 0x800000010071BB70;
  String.append(_:)(v8);
  defaultLogger()();
  DIPRecordError(_:message:log:)();

  v41(v1, v47);
  (*(v2 + 104))(v38, enum case for DIPError.Code.internalError(_:), v39);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  sub_100343124(v5);
  defaultLogger()();
  v9 = *(v4 + 16);
  v9(v44, v3, v43);
  v9(v48, v3, v43);
  v10 = Logger.logObject.getter();
  v42 = static os_log_type_t.error.getter();
  v11 = os_log_type_enabled(v10, v42);
  v12 = v0[37];
  v13 = v0[33];
  v46 = v0[31];
  v15 = v0[21];
  v14 = v0[22];
  v16 = v0[19];
  v17 = v0[20];
  if (v11)
  {
    v40 = v0[33];
    v18 = swift_slowAlloc();
    v49[0] = swift_slowAlloc();
    *v18 = 136315650;
    *(v18 + 4) = sub_100141FE4(0xD000000000000011, 0x800000010070EAD0, v49);
    *(v18 + 12) = 2080;
    sub_1004DB36C(&qword_100846058, &type metadata accessor for MobileDocumentProviderRegistrationSession.Error, &protocol conformance descriptor for MobileDocumentProviderRegistrationSession.Error);
    log = v10;
    v37 = v12;
    v19 = Error.localizedDescription.getter();
    v20 = v9;
    v22 = v21;
    v23 = *(v17 + 8);
    v23(v14, v16);
    v24 = sub_100141FE4(v19, v22, v49);
    v9 = v20;

    *(v18 + 14) = v24;
    *(v18 + 22) = 2080;
    v25 = MobileDocumentProviderRegistrationSession.Error.debugDescription.getter();
    if (v26)
    {
      v27 = v25;
    }

    else
    {
      v27 = 7104878;
    }

    if (v26)
    {
      v28 = v26;
    }

    else
    {
      v28 = 0xE300000000000000;
    }

    v45 = v23;
    v23(v15, v16);
    v29 = sub_100141FE4(v27, v28, v49);

    *(v18 + 24) = v29;
    _os_log_impl(&_mh_execute_header, log, v42, "MobileDocumentProviderRegistrationSessionProxy %s finished with error: %s. Debug description: %s", v18, 0x20u);
    swift_arrayDestroy();

    v37(v40, v46);
  }

  else
  {

    v30 = *(v17 + 8);
    v30(v15, v16);
    v45 = v30;
    v30(v14, v16);
    v12(v13, v46);
  }

  v31 = v0[23];
  v32 = v0[19];
  sub_1004DB36C(&qword_100846058, &type metadata accessor for MobileDocumentProviderRegistrationSession.Error, &protocol conformance descriptor for MobileDocumentProviderRegistrationSession.Error);
  swift_allocError();
  v9(v33, v31, v32);
  swift_willThrow();

  v45(v31, v32);

  v34 = v0[1];

  return v34();
}

uint64_t sub_1004D9274(const void *a1, uint64_t a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);

  v3 = swift_task_alloc();
  v2[4] = v3;
  *v3 = v2;
  v3[1] = sub_1003F8F88;

  return sub_1004D7D68();
}

uint64_t *sub_1004D931C(uint64_t *a1, unint64_t a2)
{
  v27 = a1;
  v4 = type metadata accessor for DIPError.Code();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v28 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for Logger();
  v7 = *(v32 - 8);
  v8 = __chkstk_darwin(v32);
  v10 = (&v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = __chkstk_darwin(v8);
  v13 = &v27 - v12;
  __chkstk_darwin(v11);
  v15 = &v27 - v14;
  if (!a2)
  {
    sub_1003311DC(v2 + 112, v29);
    if (!v31)
    {
      v10 = v29[4];

      sub_10000BB78(v30);
      return v10;
    }

    defaultLogger()();
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v23, v24, "Application identifier is undefined. Neither override nor appConfig provided.", v25, 2u);
    }

    (*(v7 + 8))(v10, v32);
    (*(v5 + 104))(v28, enum case for DIPError.Code.webPresentmentUnexpectedDaemonState(_:), v4);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1004DB36C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    goto LABEL_16;
  }

  if (!isInternalBuild()())
  {
    goto LABEL_8;
  }

  v10 = v29;
  sub_1003311DC(v2 + 112, v29);
  if (!v31)
  {

    sub_10000BB78(v30);
    goto LABEL_9;
  }

  if (v31 == 1 || (v29[0] & 1) == 0)
  {
LABEL_8:

LABEL_9:
    defaultLogger()();
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v20, v21, "Failed to override application identifier: privileged testing entitlement is missing.", v22, 2u);
    }

    (*(v7 + 8))(v13, v32);
    (*(v5 + 104))(v28, enum case for DIPError.Code.webPresentmentRegistrationEntitlementMissing(_:), v4);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1004DB36C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
LABEL_16:
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    return v10;
  }

  defaultLogger()();

  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v29[0] = v19;
    *v18 = 136315138;
    v10 = v27;
    *(v18 + 4) = sub_100141FE4(v27, a2, v29);
    _os_log_impl(&_mh_execute_header, v16, v17, "Overriding application identifier with passed parameter: %s", v18, 0xCu);
    sub_10000BB78(v19);

    (*(v7 + 8))(v15, v32);
  }

  else
  {

    (*(v7 + 8))(v15, v32);
    return v27;
  }

  return v10;
}

uint64_t sub_1004D9968(char a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 136) = a3;
  *(v4 + 144) = v3;
  *(v4 + 128) = a2;
  *(v4 + 121) = a1;
  *(v4 + 152) = type metadata accessor for DIPError();
  *(v4 + 160) = swift_task_alloc();
  v5 = type metadata accessor for MobileDocumentProviderRegistrationSession.Error();
  *(v4 + 168) = v5;
  *(v4 + 176) = *(v5 - 8);
  *(v4 + 184) = swift_task_alloc();
  *(v4 + 192) = swift_task_alloc();
  *(v4 + 200) = swift_task_alloc();
  v6 = type metadata accessor for DIPError.Code();
  *(v4 + 208) = v6;
  *(v4 + 216) = *(v6 - 8);
  *(v4 + 224) = swift_task_alloc();
  v7 = type metadata accessor for Logger();
  *(v4 + 232) = v7;
  *(v4 + 240) = *(v7 - 8);
  *(v4 + 248) = swift_task_alloc();
  *(v4 + 256) = swift_task_alloc();
  *(v4 + 264) = swift_task_alloc();
  *(v4 + 272) = swift_task_alloc();

  return _swift_task_switch(sub_1004D9B54, v3, 0);
}

uint64_t sub_1004D9B54(uint64_t a1)
{
  v73 = v1;
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v1 + 272);
  v6 = *(v1 + 232);
  v7 = *(v1 + 240);
  if (v4)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v72[0] = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_100141FE4(0xD00000000000001FLL, 0x800000010070EA60, v72);
    _os_log_impl(&_mh_execute_header, v2, v3, "MobileDocumentProviderRegistrationSessionProxy %s", v8, 0xCu);
    sub_10000BB78(v9);
  }

  v10 = *(v7 + 8);
  v10(v5, v6);
  *(v1 + 280) = v10;
  sub_1003311DC(*(v1 + 144) + 112, v1 + 16);
  if (*(v1 + 120) == 1)
  {
    v11 = swift_task_alloc();
    *(v1 + 288) = v11;
    *v11 = v1;
    v11[1] = sub_1004DA408;
    v12 = *(v1 + 128);
    v13 = *(v1 + 136);
    v14 = *(v1 + 121);

    return sub_100336C7C(v14, v12, v13);
  }

  else
  {
    sub_10033A9D0(v1 + 16);
    defaultLogger()();
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "MobileDocumentProviderRegistrationSessionProxy privileged setting entitlement is missing.", v18, 2u);
    }

    v19 = *(v1 + 264);
    v20 = *(v1 + 232);
    v22 = *(v1 + 216);
    v21 = *(v1 + 224);
    v23 = *(v1 + 208);

    v10(v19, v20);
    (*(v22 + 104))(v21, enum case for DIPError.Code.webPresentmentRegistrationEntitlementMissing(_:), v23);
    sub_1000402AC(_swiftEmptyArrayStorage);
    sub_1004DB36C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v24 = *(v1 + 256);
    v59 = *(v1 + 280);
    v70 = *(v1 + 232);
    v25 = *(v1 + 216);
    v26 = *(v1 + 200);
    v61 = *(v1 + 224);
    v62 = *(v1 + 208);
    v68 = *(v1 + 192);
    v71 = *(v1 + 184);
    v27 = *(v1 + 176);
    v64 = *(v1 + 160);
    v66 = *(v1 + 168);
    v72[0] = 0;
    v72[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(70);
    v28._countAndFlagsBits = 0xD00000000000002FLL;
    v28._object = 0x800000010071BB40;
    String.append(_:)(v28);
    v29._countAndFlagsBits = 0xD00000000000001FLL;
    v29._object = 0x800000010070EA60;
    String.append(_:)(v29);
    v30._countAndFlagsBits = 0xD000000000000015;
    v30._object = 0x800000010071BB70;
    String.append(_:)(v30);
    defaultLogger()();
    DIPRecordError(_:message:log:)();

    v59(v24, v70);
    (*(v25 + 104))(v61, enum case for DIPError.Code.internalError(_:), v62);
    swift_errorRetain();
    sub_1000402AC(_swiftEmptyArrayStorage);
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    sub_100343124(v64);
    defaultLogger()();
    v31 = *(v27 + 16);
    v31(v68, v26, v66);
    v69 = v31;
    v31(v71, v26, v66);
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.error.getter();
    v34 = os_log_type_enabled(v32, v33);
    v35 = *(v1 + 280);
    v36 = *(v1 + 248);
    v37 = *(v1 + 232);
    v39 = *(v1 + 184);
    v38 = *(v1 + 192);
    v40 = *(v1 + 168);
    v41 = *(v1 + 176);
    if (v34)
    {
      v65 = *(v1 + 232);
      v42 = swift_slowAlloc();
      v72[0] = swift_slowAlloc();
      *v42 = 136315650;
      *(v42 + 4) = sub_100141FE4(0xD00000000000001FLL, 0x800000010070EA60, v72);
      *(v42 + 12) = 2080;
      sub_1004DB36C(&qword_100846058, &type metadata accessor for MobileDocumentProviderRegistrationSession.Error, &protocol conformance descriptor for MobileDocumentProviderRegistrationSession.Error);
      v63 = v35;
      v43 = Error.localizedDescription.getter();
      v60 = v36;
      v45 = v44;
      v58 = v33;
      v46 = *(v41 + 8);
      v46(v38, v40);
      v47 = sub_100141FE4(v43, v45, v72);

      *(v42 + 14) = v47;
      *(v42 + 22) = 2080;
      v48 = MobileDocumentProviderRegistrationSession.Error.debugDescription.getter();
      if (v49)
      {
        v50 = v48;
      }

      else
      {
        v50 = 7104878;
      }

      if (v49)
      {
        v51 = v49;
      }

      else
      {
        v51 = 0xE300000000000000;
      }

      v67 = v46;
      v46(v39, v40);
      v52 = sub_100141FE4(v50, v51, v72);

      *(v42 + 24) = v52;
      _os_log_impl(&_mh_execute_header, v32, v58, "MobileDocumentProviderRegistrationSessionProxy %s finished with error: %s. Debug description: %s", v42, 0x20u);
      swift_arrayDestroy();

      v63(v60, v65);
    }

    else
    {

      v53 = *(v41 + 8);
      v53(v39, v40);
      v67 = v53;
      v53(v38, v40);
      v35(v36, v37);
    }

    v54 = *(v1 + 200);
    v55 = *(v1 + 168);
    sub_1004DB36C(&qword_100846058, &type metadata accessor for MobileDocumentProviderRegistrationSession.Error, &protocol conformance descriptor for MobileDocumentProviderRegistrationSession.Error);
    swift_allocError();
    v69(v56, v54, v55);
    swift_willThrow();

    v67(v54, v55);

    v57 = *(v1 + 8);

    return v57();
  }
}

uint64_t sub_1004DA408()
{
  v2 = *v1;
  v2[37] = v0;

  if (v0)
  {
    v3 = v2[18];

    return _swift_task_switch(sub_1004DA5C0, v3, 0);
  }

  else
  {

    v4 = v2[1];

    return v4();
  }
}

uint64_t sub_1004DA5C0()
{
  v50 = v0;
  v1 = v0[32];
  v47 = v0[29];
  v2 = v0[27];
  v38 = v0[28];
  v3 = v0[25];
  v39 = v0[26];
  v41 = v0[35];
  v45 = v0[24];
  v48 = v0[23];
  v4 = v0[22];
  v43 = v0[21];
  v5 = v0[20];
  v49[0] = 0;
  v49[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(70);
  v6._countAndFlagsBits = 0xD00000000000002FLL;
  v6._object = 0x800000010071BB40;
  String.append(_:)(v6);
  v7._countAndFlagsBits = 0xD00000000000001FLL;
  v7._object = 0x800000010070EA60;
  String.append(_:)(v7);
  v8._countAndFlagsBits = 0xD000000000000015;
  v8._object = 0x800000010071BB70;
  String.append(_:)(v8);
  defaultLogger()();
  DIPRecordError(_:message:log:)();

  v41(v1, v47);
  (*(v2 + 104))(v38, enum case for DIPError.Code.internalError(_:), v39);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  sub_100343124(v5);
  defaultLogger()();
  v9 = *(v4 + 16);
  v9(v45, v3, v43);
  v9(v48, v3, v43);
  v10 = Logger.logObject.getter();
  v42 = static os_log_type_t.error.getter();
  v11 = os_log_type_enabled(v10, v42);
  v12 = v0[35];
  v13 = v0[31];
  v46 = v0[29];
  v15 = v0[23];
  v14 = v0[24];
  v16 = v0[21];
  v17 = v0[22];
  if (v11)
  {
    v40 = v0[31];
    v18 = swift_slowAlloc();
    v49[0] = swift_slowAlloc();
    *v18 = 136315650;
    *(v18 + 4) = sub_100141FE4(0xD00000000000001FLL, 0x800000010070EA60, v49);
    *(v18 + 12) = 2080;
    sub_1004DB36C(&qword_100846058, &type metadata accessor for MobileDocumentProviderRegistrationSession.Error, &protocol conformance descriptor for MobileDocumentProviderRegistrationSession.Error);
    log = v10;
    v37 = v12;
    v19 = Error.localizedDescription.getter();
    v20 = v9;
    v22 = v21;
    v23 = *(v17 + 8);
    v23(v14, v16);
    v24 = sub_100141FE4(v19, v22, v49);
    v9 = v20;

    *(v18 + 14) = v24;
    *(v18 + 22) = 2080;
    v25 = MobileDocumentProviderRegistrationSession.Error.debugDescription.getter();
    if (v26)
    {
      v27 = v25;
    }

    else
    {
      v27 = 7104878;
    }

    if (v26)
    {
      v28 = v26;
    }

    else
    {
      v28 = 0xE300000000000000;
    }

    v44 = v23;
    v23(v15, v16);
    v29 = sub_100141FE4(v27, v28, v49);

    *(v18 + 24) = v29;
    _os_log_impl(&_mh_execute_header, log, v42, "MobileDocumentProviderRegistrationSessionProxy %s finished with error: %s. Debug description: %s", v18, 0x20u);
    swift_arrayDestroy();

    v37(v40, v46);
  }

  else
  {

    v30 = *(v17 + 8);
    v30(v15, v16);
    v44 = v30;
    v30(v14, v16);
    v12(v13, v46);
  }

  v31 = v0[25];
  v32 = v0[21];
  sub_1004DB36C(&qword_100846058, &type metadata accessor for MobileDocumentProviderRegistrationSession.Error, &protocol conformance descriptor for MobileDocumentProviderRegistrationSession.Error);
  swift_allocError();
  v9(v33, v31, v32);
  swift_willThrow();

  v44(v31, v32);

  v34 = v0[1];

  return v34();
}

uint64_t sub_1004DAD04(char a1, uint64_t a2, void *aBlock, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = _Block_copy(aBlock);
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  v4[4] = v7;

  v9 = swift_task_alloc();
  v4[5] = v9;
  *v9 = v4;
  v9[1] = sub_10049F7E8;

  return sub_1004D9968(a1, v6, v8);
}

uint64_t sub_1004DAE1C()
{
  sub_10033A9D0(v0 + 112);

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_1004DAE80()
{
  _Block_release(*(v0 + 32));

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1004DAEC8()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100041F04;

  return sub_1004DAD04(v2, v3, v4, v5);
}

uint64_t sub_1004DAF94()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100041F04;

  return sub_1004D9274(v2, v3);
}

uint64_t sub_1004DB040()
{
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1004DB088()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100041F04;

  return sub_1004D7ACC(v2, v3, v4);
}

uint64_t sub_1004DB140()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100027B9C;

  return sub_1004D669C(v2, v3, v5, v4);
}

uint64_t sub_1004DB200()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100041F04;

  return sub_1004D5234(v2, v3, v5, v4);
}

uint64_t sub_1004DB2C0()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100041F04;

  return sub_1004D3C0C(v2, v3);
}

uint64_t sub_1004DB36C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1004DB3EC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

char *sub_1004DB454()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC8coreidvd28MobileDocumentReaderListener_listener;
  type metadata accessor for MobileDocumentReaderSession();
  static MobileDocumentReaderSession.machServiceName.getter();
  v8 = objc_allocWithZone(NSXPCListener);
  v9 = String._bridgeToObjectiveC()();

  v10 = [v8 initWithMachServiceName:v9];

  *&v1[v7] = v10;
  v20.receiver = v1;
  v20.super_class = ObjectType;
  v11 = objc_msgSendSuper2(&v20, "init");
  defaultLogger()();
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v19 = v15;
    *v14 = 136315138;
    *(v14 + 4) = sub_100141FE4(0x292874696E69, 0xE600000000000000, &v19);
    _os_log_impl(&_mh_execute_header, v12, v13, "MobileDocumentReaderListener %s", v14, 0xCu);
    sub_10000BB78(v15);
  }

  (*(v4 + 8))(v6, v3);
  v16 = OBJC_IVAR____TtC8coreidvd28MobileDocumentReaderListener_listener;
  [*&v11[OBJC_IVAR____TtC8coreidvd28MobileDocumentReaderListener_listener] setDelegate:v11];
  [*&v11[v16] activate];

  return v11;
}

id sub_1004DB6DC()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  defaultLogger()();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v13 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_100141FE4(0x74696E696564, 0xE600000000000000, &v13);
    _os_log_impl(&_mh_execute_header, v7, v8, "MobileDocumentReaderListener %s", v9, 0xCu);
    sub_10000BB78(v10);
  }

  (*(v4 + 8))(v6, v3);
  [*&v1[OBJC_IVAR____TtC8coreidvd28MobileDocumentReaderListener_listener] invalidate];
  v14.receiver = v1;
  v14.super_class = ObjectType;
  return objc_msgSendSuper2(&v14, "dealloc");
}

uint64_t sub_1004DB8E8(uint64_t a1)
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  defaultLogger()();
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v14 = v8;
    *v7 = 136315138;
    swift_getErrorValue();
    v9 = Error.localizedDescription.getter();
    v11 = sub_100141FE4(v9, v10, &v14);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v5, v6, "MobileDocumentReaderListener Remote proxy delegate did fail with error: %s", v7, 0xCu);
    sub_10000BB78(v8);
  }

  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_1004DBAB4()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  defaultLogger()();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v10 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_100141FE4(0xD000000000000026, 0x8000000100715680, &v10);
    _os_log_impl(&_mh_execute_header, v4, v5, "MobileDocumentReaderListener %s Connection interrupted", v6, 0xCu);
    sub_10000BB78(v7);
  }

  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_1004DBC4C(uint64_t a1)
{
  v2 = sub_100007224(&unk_100845860, &unk_1006BF9D0);
  __chkstk_darwin(v2 - 8);
  v4 = &v16 - v3;
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  defaultLogger()();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v17 = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_100141FE4(0xD000000000000026, 0x8000000100715680, &v17);
    _os_log_impl(&_mh_execute_header, v9, v10, "MobileDocumentReaderListener %s Connection invalidated", v11, 0xCu);
    sub_10000BB78(v12);
  }

  (*(v6 + 8))(v8, v5);
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v4, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = a1;

  sub_1003E653C(0, 0, v4, &unk_1006E6708, v14);
}

uint64_t sub_1004DBED0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100027B9C;

  return sub_1004E780C();
}

BOOL sub_1004DBFE4(objc_class *a1)
{
  v2 = type metadata accessor for MobileDocumentReaderEntitlementChecker();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v41 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v12 = &v39 - v11;
  __chkstk_darwin(v10);
  v14 = &v39 - v13;
  defaultLogger()();
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v39 = v12;
    v40 = v2;
    v18 = v7;
    v19 = v6;
    v20 = v17;
    v21 = a1;
    v22 = swift_slowAlloc();
    v42[0] = v22;
    *v20 = 136315138;
    *(v20 + 4) = sub_100141FE4(0xD000000000000017, 0x800000010071B7B0, v42);
    _os_log_impl(&_mh_execute_header, v15, v16, "MobileDocumentReaderListener %s", v20, 0xCu);
    sub_10000BB78(v22);
    a1 = v21;

    v6 = v19;
    v7 = v18;
    v12 = v39;
    v2 = v40;
  }

  v23 = *(v7 + 8);
  v23(v14, v6);
  v42[3] = type metadata accessor for BundleRecordFetcher();
  v42[4] = &protocol witness table for BundleRecordFetcher;
  sub_100032DBC(v42);
  BundleRecordFetcher.init()();
  MobileDocumentReaderEntitlementChecker.init(bundleRecordFetcher:)();
  v43.value.super.isa = a1;
  v24 = MobileDocumentReaderEntitlementChecker.checkInternalEntitlement(connection:)(v43);
  (*(v3 + 8))(v5, v2);
  if (!v24)
  {
    v32 = v41;
    defaultLogger()();
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = v6;
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v42[0] = v37;
      *v36 = 136315138;
      *(v36 + 4) = sub_100141FE4(0xD000000000000017, 0x800000010071B7B0, v42);
      _os_log_impl(&_mh_execute_header, v33, v34, "MobileDocumentReaderListener %s No valid entitlements present", v36, 0xCu);
      sub_10000BB78(v37);

      v30 = v32;
      v31 = v35;
      goto LABEL_11;
    }

    v30 = v32;
LABEL_10:
    v31 = v6;
    goto LABEL_11;
  }

  defaultLogger()();
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.info.getter();
  if (!os_log_type_enabled(v25, v26))
  {

    v30 = v12;
    goto LABEL_10;
  }

  v27 = v6;
  v28 = swift_slowAlloc();
  v29 = swift_slowAlloc();
  v42[0] = v29;
  *v28 = 136315138;
  *(v28 + 4) = sub_100141FE4(0xD000000000000017, 0x800000010071B7B0, v42);
  _os_log_impl(&_mh_execute_header, v25, v26, "MobileDocumentReaderListener %s Internal entitlement present", v28, 0xCu);
  sub_10000BB78(v29);

  v30 = v12;
  v31 = v27;
LABEL_11:
  v23(v30, v31);
  return v24;
}

uint64_t sub_1004DC4C4(objc_class *a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v9 = &v59 - v8;
  v10 = __chkstk_darwin(v7);
  v12 = &v59 - v11;
  __chkstk_darwin(v10);
  v14 = &v59 - v13;
  defaultLogger()();
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v59 = v6;
    v19 = a1;
    v20 = v9;
    v21 = v2;
    v22 = v12;
    v23 = v3;
    v24 = v18;
    aBlock = v18;
    *v17 = 136315138;
    *(v17 + 4) = sub_100141FE4(0xD000000000000026, 0x8000000100715680, &aBlock);
    _os_log_impl(&_mh_execute_header, v15, v16, "MobileDocumentReaderListener %s", v17, 0xCu);
    sub_10000BB78(v24);
    v3 = v23;
    v12 = v22;
    v2 = v21;
    v9 = v20;
    a1 = v19;
    v6 = v59;
  }

  v25 = *(v3 + 8);
  v25(v14, v2);
  if (!sub_1004DBFE4(a1))
  {
    defaultLogger()();
    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      aBlock = v49;
      *v48 = 136315138;
      *(v48 + 4) = sub_100141FE4(0xD000000000000026, 0x8000000100715680, &aBlock);
      _os_log_impl(&_mh_execute_header, v46, v47, "MobileDocumentReaderListener %s Insufficient entitlements, rejecting new connection", v48, 0xCu);
      sub_10000BB78(v49);
    }

    v50 = v6;
    goto LABEL_13;
  }

  v26 = objc_opt_self();
  v27 = [v26 interfaceWithProtocol:&OBJC_PROTOCOL____TtP7CoreIDV29MobileDocumentReaderInterface_];
  [(objc_class *)a1 setExportedInterface:v27];

  v28 = [v26 interfaceWithProtocol:&OBJC_PROTOCOL____TtP7CoreIDV37MobileDocumentReaderDelegateInterface_];
  [(objc_class *)a1 setRemoteObjectInterface:v28];

  v66 = sub_1004DB8E8;
  v67 = 0;
  aBlock = _NSConcreteStackBlock;
  v63 = 1107296256;
  v64 = sub_1004DB3EC;
  v65 = &unk_1008148D8;
  v29 = _Block_copy(&aBlock);
  v30 = [(objc_class *)a1 remoteObjectProxyWithErrorHandler:v29];
  _Block_release(v29);
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  v31 = sub_100007224(&qword_100846090, &qword_1006E66E8);
  if (!swift_dynamicCast())
  {
    defaultLogger()();
    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      aBlock = v54;
      *v53 = 136315138;
      v61[0] = v31;
      sub_100007224(&qword_100846098, &unk_1006E66F0);
      v55 = String.init<A>(describing:)();
      v57 = sub_100141FE4(v55, v56, &aBlock);

      *(v53 + 4) = v57;
      _os_log_impl(&_mh_execute_header, v51, v52, "MobileDocumentReaderListener Remote proxy could not be cast to %s", v53, 0xCu);
      sub_10000BB78(v54);
    }

    v50 = v9;
LABEL_13:
    v25(v50, v2);
    return 0;
  }

  v32 = v61[0];
  swift_unknownObjectRetain();
  v33._countAndFlagsBits = 0xD00000000000003ALL;
  v33._object = 0x800000010071BD90;
  v34 = NSXPCConnection.isEntitled(_:)(v33);
  v61[3] = type metadata accessor for BundleRecordFetcher();
  v61[4] = &protocol witness table for BundleRecordFetcher;
  sub_100032DBC(v61);
  BundleRecordFetcher.init()();
  v65 = type metadata accessor for MobileDocumentReaderEntitlementChecker();
  v66 = &protocol witness table for MobileDocumentReaderEntitlementChecker;
  sub_100032DBC(&aBlock);
  MobileDocumentReaderEntitlementChecker.init(bundleRecordFetcher:)();
  v35 = type metadata accessor for MobileDocumentReaderFlow();
  v36 = type metadata accessor for MobileDocumentReaderSessionProxy();
  v37 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v37 + 160) = 0u;
  *(v37 + 176) = 0u;
  *(v37 + 128) = 0u;
  *(v37 + 144) = 0u;
  *(v37 + 112) = 0u;
  *(v37 + 192) = v32;
  sub_100020260(&aBlock, v37 + 200);
  *(v37 + 240) = v35;
  *(v37 + 248) = &off_10080E610;
  *(v37 + 256) = v34;
  v60.receiver = v37;
  v60.super_class = v36;
  v38 = [(objc_class *)&v60 init];
  sub_10000BB78(&aBlock);
  [(objc_class *)a1 setExportedObject:v38];
  v66 = sub_1004DBAB4;
  v67 = 0;
  aBlock = _NSConcreteStackBlock;
  v63 = 1107296256;
  v64 = sub_100503A7C;
  v65 = &unk_100814900;
  v39 = _Block_copy(&aBlock);
  [(objc_class *)a1 setInterruptionHandler:v39];
  _Block_release(v39);
  v66 = sub_1004DCD9C;
  v67 = v38;
  aBlock = _NSConcreteStackBlock;
  v63 = 1107296256;
  v64 = sub_100503A7C;
  v65 = &unk_100814928;
  v40 = _Block_copy(&aBlock);
  v41 = v38;

  [(objc_class *)a1 setInvalidationHandler:v40];
  _Block_release(v40);
  [(objc_class *)a1 activate];
  defaultLogger()();
  v42 = Logger.logObject.getter();
  v43 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    aBlock = v45;
    *v44 = 136315138;
    *(v44 + 4) = sub_100141FE4(0xD000000000000026, 0x8000000100715680, &aBlock);
    _os_log_impl(&_mh_execute_header, v42, v43, "MobileDocumentReaderListener %s Activating new connection", v44, 0xCu);
    sub_10000BB78(v45);

    swift_unknownObjectRelease();
  }

  else
  {

    swift_unknownObjectRelease();
  }

  (*(v3 + 8))(v12, v2);
  return 1;
}

uint64_t sub_1004DCD84(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1004DCDA4()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1004DCDE4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100027B9C;

  return sub_1004DBED0();
}

void sub_1004DCEA8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = a1;
    sub_10017314C(0, v1, 0);
    v3 = v2 + 56;
    v4 = _HashTable.startBucket.getter();
    v5 = 0;
    v29 = v2;
    v26 = v2 + 64;
    v27 = v1;
    v28 = v2 + 56;
    while ((v4 & 0x8000000000000000) == 0 && v4 < 1 << *(v2 + 32))
    {
      v8 = v4 >> 6;
      if ((*(v3 + 8 * (v4 >> 6)) & (1 << v4)) == 0)
      {
        goto LABEL_23;
      }

      v30 = v5;
      v31 = *(v2 + 36);
      v9 = (*(v2 + 48) + 24 * v4);
      v10 = *v9;
      v11 = v9[1];
      sub_10000B8B8(*v9, v11);

      sub_10000B8B8(v10, v11);

      isa = Data._bridgeToObjectiveC()().super.isa;
      v13 = SecCertificateCreateWithData(kCFAllocatorDefault, isa);

      if (!v13)
      {
        goto LABEL_27;
      }

      v32 = SecCertificateRef.derRepresentation.getter();
      v15 = v14;

      sub_10000B90C(v10, v11);

      sub_10000B90C(v10, v11);

      v17 = _swiftEmptyArrayStorage[2];
      v16 = _swiftEmptyArrayStorage[3];
      if (v17 >= v16 >> 1)
      {
        sub_10017314C((v16 > 1), v17 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v17 + 1;
      v18 = &_swiftEmptyArrayStorage[2 * v17];
      v18[4] = v32;
      v18[5] = v15;
      v3 = v28;
      v2 = v29;
      v6 = 1 << *(v29 + 32);
      if (v4 >= v6)
      {
        goto LABEL_24;
      }

      v19 = *(v28 + 8 * v8);
      if ((v19 & (1 << v4)) == 0)
      {
        goto LABEL_25;
      }

      if (v31 != *(v29 + 36))
      {
        goto LABEL_26;
      }

      v20 = v19 & (-2 << (v4 & 0x3F));
      if (v20)
      {
        v6 = __clz(__rbit64(v20)) | v4 & 0x7FFFFFFFFFFFFFC0;
        v7 = v30;
      }

      else
      {
        v21 = v8 << 6;
        v22 = v8 + 1;
        v23 = (v26 + 8 * v8);
        while (v22 < (v6 + 63) >> 6)
        {
          v25 = *v23++;
          v24 = v25;
          v21 += 64;
          ++v22;
          if (v25)
          {
            sub_100316220(v4, v31, 0);
            v6 = __clz(__rbit64(v24)) + v21;
            goto LABEL_20;
          }
        }

        sub_100316220(v4, v31, 0);
LABEL_20:
        v7 = v30;
      }

      v5 = v7 + 1;
      v4 = v6;
      if (v5 == v27)
      {
        return;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }
}

uint64_t sub_1004DD174@<X0>(void *a1@<X8>)
{
  v3 = type metadata accessor for DIPError.Code();
  __chkstk_darwin(v3);
  if (*(v1 + 256) == 1)
  {
    swift_beginAccess();
    sub_10000BBC4(v1 + 152, &v11, &unk_1008460F0, &unk_1006E6848);
    if (v12)
    {
      sub_10001F358(&v11, &v13);
      return sub_10001F358(&v13, a1);
    }

    else
    {
      sub_10000BE18(&v11, &unk_1008460F0, &unk_1006E6848);
      v7 = type metadata accessor for MobileDocumentReaderStorageFlow();
      swift_allocObject();
      v8 = v1;
      v9 = sub_10035C568();
      v14 = v7;
      v15 = &off_10080E2C0;
      *&v13 = v9;
      swift_beginAccess();

      sub_1000B2764(&v13, v8 + 152, &unk_1008460F0, &unk_1006E6848);
      result = swift_endAccess();
      a1[3] = v7;
      a1[4] = &off_10080E2C0;
      *a1 = v9;
    }
  }

  else
  {
    (*(v5 + 104))(&v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for DIPError.Code.missingEntitlement(_:));
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1004F4084(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1004DD43C(uint64_t a1)
{
  v2[23] = a1;
  v2[24] = v1;
  v2[25] = type metadata accessor for DIPError();
  v2[26] = swift_task_alloc();
  v3 = type metadata accessor for MobileDocumentReaderSession.Error();
  v2[27] = v3;
  v2[28] = *(v3 - 8);
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();
  v4 = type metadata accessor for DIPError.Code();
  v2[31] = v4;
  v2[32] = *(v4 - 8);
  v2[33] = swift_task_alloc();
  v5 = type metadata accessor for Logger();
  v2[34] = v5;
  v2[35] = *(v5 - 8);
  v2[36] = swift_task_alloc();
  v2[37] = swift_task_alloc();
  v2[38] = swift_task_alloc();
  v2[39] = swift_task_alloc();

  return _swift_task_switch(sub_1004DD614, v1, 0);
}

uint64_t sub_1004DD614(uint64_t a1)
{
  v78 = v1;
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v1 + 312);
  v6 = *(v1 + 272);
  v7 = *(v1 + 280);
  if (v4)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v76 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_100141FE4(0xD000000000000016, 0x800000010071C630, &v76);
    _os_log_impl(&_mh_execute_header, v2, v3, "MobileDocumentReaderSessionProxy %s", v8, 0xCu);
    sub_10000BB78(v9);
  }

  v10 = *(v7 + 8);
  v10(v5, v6);
  v74 = v10;
  *(v1 + 320) = v10;
  v11 = *(v1 + 192);
  swift_beginAccess();
  sub_10000BBC4(v11 + 112, v1 + 16, &qword_1008460D8, &qword_1006E6838);
  v12 = *(v1 + 40);
  sub_10000BE18(v1 + 16, &qword_1008460D8, &qword_1006E6838);
  if (v12)
  {
    v14 = *(v1 + 256);
    v13 = *(v1 + 264);
    v15 = *(v1 + 248);
    v76 = 0;
    v77 = 0xE000000000000000;
    _StringGuts.grow(_:)(59);
    v16._countAndFlagsBits = 0xD00000000000001ELL;
    v16._object = 0x800000010071C650;
    String.append(_:)(v16);
    v17._countAndFlagsBits = 0xD000000000000016;
    v17._object = 0x800000010071C630;
    String.append(_:)(v17);
    v18._countAndFlagsBits = 0xD00000000000001BLL;
    v18._object = 0x800000010071C670;
    String.append(_:)(v18);
    (*(v14 + 104))(v13, enum case for DIPError.Code.unexpectedDaemonState(_:), v15);
    sub_1000402AC(_swiftEmptyArrayStorage);
    sub_1004F4084(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
LABEL_8:
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v26 = *(v1 + 296);
    v63 = *(v1 + 272);
    v27 = *(v1 + 256);
    v28 = *(v1 + 264);
    v65 = *(v1 + 240);
    v29 = *(v1 + 224);
    v68 = *(v1 + 248);
    v69 = *(v1 + 232);
    v67 = *(v1 + 216);
    v64 = *(v1 + 208);
    v76 = 0;
    v77 = 0xE000000000000000;
    _StringGuts.grow(_:)(56);
    v30._countAndFlagsBits = 0xD000000000000021;
    v30._object = 0x800000010071C470;
    String.append(_:)(v30);
    v31._countAndFlagsBits = 0xD000000000000016;
    v31._object = 0x800000010071C630;
    String.append(_:)(v31);
    v32._countAndFlagsBits = 0xD000000000000015;
    v32._object = 0x800000010071BB70;
    String.append(_:)(v32);
    defaultLogger()();
    DIPRecordError(_:message:log:)();

    v10(v26, v63);
    (*(v27 + 104))(v28, enum case for DIPError.Code.internalError(_:), v68);
    swift_errorRetain();
    sub_1000402AC(_swiftEmptyArrayStorage);
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    v33 = v65;
    sub_1003C94CC(v64, v65);
    defaultLogger()();
    v66 = *(v29 + 16);
    v66(v69, v33, v67);
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();
    v36 = os_log_type_enabled(v34, v35);
    v70 = *(v1 + 272);
    v71 = *(v1 + 288);
    v38 = *(v1 + 224);
    v37 = *(v1 + 232);
    v39 = *(v1 + 216);
    if (v36)
    {
      v40 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      *v40 = 136315394;
      *(v40 + 4) = sub_100141FE4(0xD000000000000016, 0x800000010071C630, &v76);
      *(v40 + 12) = 2080;
      sub_1004F4084(&qword_1008460E0, &type metadata accessor for MobileDocumentReaderSession.Error, &protocol conformance descriptor for MobileDocumentReaderSession.Error);
      v41 = Error.localizedDescription.getter();
      v43 = v42;
      v73 = *(v38 + 8);
      v73(v37, v39);
      v44 = sub_100141FE4(v41, v43, &v76);

      *(v40 + 14) = v44;
      _os_log_impl(&_mh_execute_header, v34, v35, "MobileDocumentReaderSessionProxy %s finished with error: %s", v40, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      v73 = *(v38 + 8);
      v73(v37, v39);
    }

    v74(v71, v70);
    v45 = *(v1 + 240);
    v46 = *(v1 + 216);
    sub_1004F4084(&qword_1008460E0, &type metadata accessor for MobileDocumentReaderSession.Error, &protocol conformance descriptor for MobileDocumentReaderSession.Error);
    swift_allocError();
    v66(v47, v45, v46);
    swift_willThrow();

    v73(v45, v46);

    v48 = *(v1 + 8);

    return v48();
  }

  sub_10000BA08((*(v1 + 192) + 200), *(*(v1 + 192) + 224));
  *(v1 + 344) = XPCAuditToken.value.getter();
  *(v1 + 352) = v19;
  *(v1 + 360) = v20;
  *(v1 + 368) = v21;
  *(v1 + 376) = 0;
  if ((dispatch thunk of MobileDocumentReaderEntitlementChecking.checkPublicEntitlements(auditToken:)() & 1) == 0)
  {
    (*(*(v1 + 256) + 104))(*(v1 + 264), enum case for DIPError.Code.missingEntitlement(_:), *(v1 + 248));
    sub_1000402AC(_swiftEmptyArrayStorage);
    sub_1004F4084(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    goto LABEL_8;
  }

  v22 = XPCAuditToken.value.getter();
  sub_1004F3BE8(v22, v23, v24, v25);
  v75 = *(v1 + 192);
  v51 = *(v75 + 240);
  v50 = *(v75 + 248);
  v52 = XPCAuditToken.value.getter();
  v54 = v53;
  v56 = v55;
  v58 = v57;
  v59 = *(v50 + 8);
  *(v1 + 80) = v51;
  *(v1 + 88) = v50;
  sub_100032DBC((v1 + 56));
  v59(v52, v54, v56, v58, v51, v50);
  sub_100020260(v1 + 56, v1 + 96);
  swift_beginAccess();
  sub_1000B2764(v1 + 96, v11 + 112, &qword_1008460D8, &qword_1006E6838);
  swift_endAccess();
  v60 = swift_allocObject();
  *(v1 + 328) = v60;
  swift_unknownObjectWeakInit();
  v61 = *(v50 + 16);

  v72 = (v61 + *v61);
  v62 = swift_task_alloc();
  *(v1 + 336) = v62;
  *v62 = v1;
  v62[1] = sub_1004DE0B4;

  return v72(sub_1004F4104, v60, v51, v50);
}

uint64_t sub_1004DE0B4()
{
  v1 = *(*v0 + 192);

  return _swift_task_switch(sub_1004DE1E4, v1, 0);
}

uint64_t sub_1004DE1E4(uint64_t a1)
{
  v13 = v1;
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v1[40];
  v6 = v1[38];
  v7 = v1[34];
  if (v4)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v12 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_100141FE4(0xD000000000000016, 0x800000010071C630, &v12);
    _os_log_impl(&_mh_execute_header, v2, v3, "MobileDocumentReaderSessionProxy %s returning successfully", v8, 0xCu);
    sub_10000BB78(v9);
  }

  v5(v6, v7);
  sub_10000BB78(v1 + 7);

  v10 = v1[1];

  return v10();
}

void *sub_1004DE3B0(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for MobileDocumentReaderSession.State();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = result;
    (*(v4 + 16))(v6, a1, v3);
    v9 = objc_allocWithZone(type metadata accessor for XPCMobileDocumentReaderSessionState());
    v10 = XPCMobileDocumentReaderSessionState.init(value:)();
    [v8 mobileDocumentReaderStateDidChange:v10];

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1004DE66C(void *a1, void *aBlock, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v5 = a1;

  v6 = swift_task_alloc();
  v3[5] = v6;
  *v6 = v3;
  v6[1] = sub_1004A857C;

  return sub_1004DD43C(v5);
}

uint64_t sub_1004DE730()
{
  v1[19] = v0;
  v1[20] = type metadata accessor for DIPError();
  v1[21] = swift_task_alloc();
  v2 = type metadata accessor for MobileDocumentReaderSession.Error();
  v1[22] = v2;
  v1[23] = *(v2 - 8);
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v3 = type metadata accessor for DIPError.Code();
  v1[27] = v3;
  v1[28] = *(v3 - 8);
  v1[29] = swift_task_alloc();
  v4 = type metadata accessor for Logger();
  v1[30] = v4;
  v1[31] = *(v4 - 8);
  v1[32] = swift_task_alloc();
  v1[33] = swift_task_alloc();
  v1[34] = swift_task_alloc();
  v1[35] = swift_task_alloc();

  return _swift_task_switch(sub_1004DE914, v0, 0);
}

uint64_t sub_1004DE914(uint64_t a1)
{
  v65 = v1;
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v1 + 280);
  v6 = *(v1 + 240);
  v7 = *(v1 + 248);
  if (v4)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v64[0] = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_100141FE4(0xD00000000000001ALL, 0x8000000100711E70, v64);
    _os_log_impl(&_mh_execute_header, v2, v3, "MobileDocumentReaderSessionProxy %s", v8, 0xCu);
    sub_10000BB78(v9);
  }

  v10 = *(v7 + 8);
  v10(v5, v6);
  *(v1 + 288) = v10;
  v11 = *(v1 + 152);
  swift_beginAccess();
  sub_10000BBC4(v11 + 112, v1 + 56, &qword_1008460D8, &qword_1006E6838);
  if (*(v1 + 80))
  {
    sub_10001F358((v1 + 56), v1 + 16);
    sub_10000BA08((v1 + 16), *(v1 + 40));
    v12 = swift_task_alloc();
    *(v1 + 296) = v12;
    *v12 = v1;
    v12[1] = sub_1004DF180;

    return sub_100398600();
  }

  else
  {
    v15 = *(v1 + 224);
    v14 = *(v1 + 232);
    v16 = *(v1 + 216);
    sub_10000BE18(v1 + 56, &qword_1008460D8, &qword_1006E6838);
    (*(v15 + 104))(v14, enum case for DIPError.Code.unexpectedDaemonState(_:), v16);
    sub_1000402AC(_swiftEmptyArrayStorage);
    sub_1004F4084(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v17 = *(v1 + 264);
    v52 = *(v1 + 240);
    v54 = *(v1 + 288);
    v18 = *(v1 + 224);
    v19 = *(v1 + 208);
    v55 = *(v1 + 232);
    v57 = *(v1 + 216);
    v61 = *(v1 + 200);
    v63 = *(v1 + 192);
    v20 = *(v1 + 184);
    v58 = *(v1 + 176);
    v21 = *(v1 + 168);
    v64[0] = 0;
    v64[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(56);
    v22._countAndFlagsBits = 0xD000000000000021;
    v22._object = 0x800000010071C470;
    String.append(_:)(v22);
    v23._countAndFlagsBits = 0xD00000000000001ALL;
    v23._object = 0x8000000100711E70;
    String.append(_:)(v23);
    v24._countAndFlagsBits = 0xD000000000000015;
    v24._object = 0x800000010071BB70;
    String.append(_:)(v24);
    defaultLogger()();
    DIPRecordError(_:message:log:)();

    v54(v17, v52);
    (*(v18 + 104))(v55, enum case for DIPError.Code.internalError(_:), v57);
    swift_errorRetain();
    sub_1000402AC(_swiftEmptyArrayStorage);
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    sub_1003C94CC(v21, v19);
    defaultLogger()();
    v25 = *(v20 + 16);
    v25(v61, v19, v58);
    v62 = v25;
    v25(v63, v19, v58);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();
    v28 = os_log_type_enabled(v26, v27);
    v29 = *(v1 + 288);
    v30 = *(v1 + 256);
    v60 = *(v1 + 240);
    v32 = *(v1 + 192);
    v31 = *(v1 + 200);
    v33 = *(v1 + 176);
    v34 = *(v1 + 184);
    if (v28)
    {
      v56 = *(v1 + 256);
      v35 = swift_slowAlloc();
      v64[0] = swift_slowAlloc();
      *v35 = 136315650;
      *(v35 + 4) = sub_100141FE4(0xD00000000000001ALL, 0x8000000100711E70, v64);
      *(v35 + 12) = 2080;
      sub_1004F4084(&qword_1008460E0, &type metadata accessor for MobileDocumentReaderSession.Error, &protocol conformance descriptor for MobileDocumentReaderSession.Error);
      v53 = v29;
      v36 = Error.localizedDescription.getter();
      v38 = v37;
      v51 = v27;
      v39 = *(v34 + 8);
      v39(v31, v33);
      v40 = sub_100141FE4(v36, v38, v64);

      *(v35 + 14) = v40;
      *(v35 + 22) = 2080;
      v41 = MobileDocumentReaderSession.Error.debugDescription.getter();
      if (v42)
      {
        v43 = v41;
      }

      else
      {
        v43 = 7104878;
      }

      if (v42)
      {
        v44 = v42;
      }

      else
      {
        v44 = 0xE300000000000000;
      }

      v59 = v39;
      v39(v32, v33);
      v45 = sub_100141FE4(v43, v44, v64);

      *(v35 + 24) = v45;
      _os_log_impl(&_mh_execute_header, v26, v51, "MobileDocumentReaderSessionProxy %s finished with error: %s. Debug description: %s", v35, 0x20u);
      swift_arrayDestroy();

      v53(v56, v60);
    }

    else
    {

      v46 = *(v34 + 8);
      v46(v32, v33);
      v59 = v46;
      v46(v31, v33);
      v29(v30, v60);
    }

    v47 = *(v1 + 208);
    v48 = *(v1 + 176);
    sub_1004F4084(&qword_1008460E0, &type metadata accessor for MobileDocumentReaderSession.Error, &protocol conformance descriptor for MobileDocumentReaderSession.Error);
    swift_allocError();
    v62(v49, v47, v48);
    swift_willThrow();

    v59(v47, v48);

    v50 = *(v1 + 8);

    return v50();
  }
}

uint64_t sub_1004DF180(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  v5[12] = v3;
  v5[13] = a1;
  v5[14] = a2;
  v5[15] = v2;
  v5[38] = v2;

  v6 = v4[19];
  if (v2)
  {
    v7 = sub_1004DF498;
  }

  else
  {
    v7 = sub_1004DF2B4;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_1004DF2B4()
{
  v14 = v0;
  sub_10000BB78(v0 + 2);
  defaultLogger()();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.info.getter();
  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[36];
  v5 = v0[34];
  v6 = v0[30];
  if (v3)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v13 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_100141FE4(0xD00000000000001ALL, 0x8000000100711E70, &v13);
    _os_log_impl(&_mh_execute_header, v1, v2, "MobileDocumentReaderSessionProxy %s returning successfully", v7, 0xCu);
    sub_10000BB78(v8);
  }

  v4(v5, v6);
  v9 = v0[14];
  v12 = v0[13];

  v10 = v0[1];

  return v10(v12, v9);
}

uint64_t sub_1004DF498()
{
  v49 = v0;
  sub_10000BB78(v0 + 2);
  v1 = v0[33];
  v36 = v0[30];
  v37 = v0[36];
  v2 = v0[28];
  v3 = v0[26];
  v39 = v0[29];
  v41 = v0[27];
  v45 = v0[25];
  v47 = v0[24];
  v4 = v0[23];
  v42 = v0[22];
  v5 = v0[21];
  v48[0] = 0;
  v48[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(56);
  v6._countAndFlagsBits = 0xD000000000000021;
  v6._object = 0x800000010071C470;
  String.append(_:)(v6);
  v7._countAndFlagsBits = 0xD00000000000001ALL;
  v7._object = 0x8000000100711E70;
  String.append(_:)(v7);
  v8._countAndFlagsBits = 0xD000000000000015;
  v8._object = 0x800000010071BB70;
  String.append(_:)(v8);
  defaultLogger()();
  DIPRecordError(_:message:log:)();

  v37(v1, v36);
  (*(v2 + 104))(v39, enum case for DIPError.Code.internalError(_:), v41);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  sub_1003C94CC(v5, v3);
  defaultLogger()();
  v9 = *(v4 + 16);
  v9(v45, v3, v42);
  v46 = v9;
  v9(v47, v3, v42);
  v10 = Logger.logObject.getter();
  v40 = static os_log_type_t.error.getter();
  v11 = os_log_type_enabled(v10, v40);
  v12 = v0[36];
  v13 = v0[32];
  v44 = v0[30];
  v14 = v0[24];
  v15 = v0[25];
  v16 = v0[22];
  v17 = v0[23];
  if (v11)
  {
    v38 = v0[32];
    v18 = swift_slowAlloc();
    v48[0] = swift_slowAlloc();
    *v18 = 136315650;
    *(v18 + 4) = sub_100141FE4(0xD00000000000001ALL, 0x8000000100711E70, v48);
    *(v18 + 12) = 2080;
    sub_1004F4084(&qword_1008460E0, &type metadata accessor for MobileDocumentReaderSession.Error, &protocol conformance descriptor for MobileDocumentReaderSession.Error);
    v35 = v12;
    v19 = Error.localizedDescription.getter();
    v21 = v20;
    v22 = *(v17 + 8);
    v22(v15, v16);
    v23 = sub_100141FE4(v19, v21, v48);

    *(v18 + 14) = v23;
    *(v18 + 22) = 2080;
    v24 = MobileDocumentReaderSession.Error.debugDescription.getter();
    if (v25)
    {
      v26 = v24;
    }

    else
    {
      v26 = 7104878;
    }

    if (v25)
    {
      v27 = v25;
    }

    else
    {
      v27 = 0xE300000000000000;
    }

    v43 = v22;
    v22(v14, v16);
    v28 = sub_100141FE4(v26, v27, v48);

    *(v18 + 24) = v28;
    _os_log_impl(&_mh_execute_header, v10, v40, "MobileDocumentReaderSessionProxy %s finished with error: %s. Debug description: %s", v18, 0x20u);
    swift_arrayDestroy();

    v35(v38, v44);
  }

  else
  {

    v29 = *(v17 + 8);
    v29(v14, v16);
    v43 = v29;
    v29(v15, v16);
    v12(v13, v44);
  }

  v30 = v0[26];
  v31 = v0[22];
  sub_1004F4084(&qword_1008460E0, &type metadata accessor for MobileDocumentReaderSession.Error, &protocol conformance descriptor for MobileDocumentReaderSession.Error);
  swift_allocError();
  v46(v32, v30, v31);
  swift_willThrow();

  v43(v30, v31);

  v33 = v0[1];

  return v33();
}

uint64_t sub_1004DFBB0(const void *a1, uint64_t a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);

  v3 = swift_task_alloc();
  v2[4] = v3;
  *v3 = v2;
  v3[1] = sub_1004938F4;

  return sub_1004DE730();
}

uint64_t sub_1004DFC58(uint64_t a1)
{
  v2[15] = a1;
  v2[16] = v1;
  v2[17] = type metadata accessor for DIPError();
  v2[18] = swift_task_alloc();
  v3 = type metadata accessor for MobileDocumentReaderSession.Error();
  v2[19] = v3;
  v2[20] = *(v3 - 8);
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v4 = type metadata accessor for DIPError.Code();
  v2[24] = v4;
  v2[25] = *(v4 - 8);
  v2[26] = swift_task_alloc();
  v5 = type metadata accessor for MobileDocumentReaderConfiguration();
  v2[27] = v5;
  v2[28] = *(v5 - 8);
  v2[29] = swift_task_alloc();
  v6 = type metadata accessor for MobileDocumentReaderConfigurationResponse();
  v2[30] = v6;
  v2[31] = *(v6 - 8);
  v2[32] = swift_task_alloc();
  v2[33] = swift_task_alloc();
  v2[34] = swift_task_alloc();
  v7 = type metadata accessor for Logger();
  v2[35] = v7;
  v2[36] = *(v7 - 8);
  v2[37] = swift_task_alloc();
  v2[38] = swift_task_alloc();
  v2[39] = swift_task_alloc();
  v2[40] = swift_task_alloc();

  return _swift_task_switch(sub_1004DFF0C, v1, 0);
}

uint64_t sub_1004DFF0C(uint64_t a1)
{
  v67 = v1;
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v1 + 320);
  v6 = *(v1 + 280);
  v7 = *(v1 + 288);
  if (v4)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v66[0] = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_100141FE4(0x2865726170657270, 0xEE00293A68746977, v66);
    _os_log_impl(&_mh_execute_header, v2, v3, "MobileDocumentReaderSessionProxy %s", v8, 0xCu);
    sub_10000BB78(v9);
  }

  v10 = *(v7 + 8);
  v10(v5, v6);
  *(v1 + 328) = v10;
  v11 = *(v1 + 128);
  swift_beginAccess();
  sub_10000BBC4(v11 + 112, v1 + 56, &qword_1008460D8, &qword_1006E6838);
  if (*(v1 + 80))
  {
    sub_10001F358((v1 + 56), v1 + 16);
    sub_10000BA08((v1 + 16), *(v1 + 40));
    XPCMobileDocumentReaderConfiguration.value.getter();
    v12 = swift_task_alloc();
    *(v1 + 336) = v12;
    *v12 = v1;
    v12[1] = sub_1004E0800;
    v13 = *(v1 + 272);
    v14 = *(v1 + 232);

    return sub_100398EF0(v13, v14);
  }

  else
  {
    v17 = *(v1 + 200);
    v16 = *(v1 + 208);
    v18 = *(v1 + 192);
    sub_10000BE18(v1 + 56, &qword_1008460D8, &qword_1006E6838);
    (*(v17 + 104))(v16, enum case for DIPError.Code.unexpectedDaemonState(_:), v18);
    sub_1000402AC(_swiftEmptyArrayStorage);
    sub_1004F4084(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v19 = *(v1 + 304);
    v53 = *(v1 + 328);
    v64 = *(v1 + 280);
    v20 = *(v1 + 200);
    v21 = *(v1 + 184);
    v55 = *(v1 + 208);
    v56 = *(v1 + 192);
    v62 = *(v1 + 176);
    v65 = *(v1 + 168);
    v22 = *(v1 + 160);
    v58 = *(v1 + 144);
    v59 = *(v1 + 152);
    v66[0] = 0;
    v66[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(56);
    v23._countAndFlagsBits = 0xD000000000000021;
    v23._object = 0x800000010071C470;
    String.append(_:)(v23);
    v24._countAndFlagsBits = 0x2865726170657270;
    v24._object = 0xEE00293A68746977;
    String.append(_:)(v24);
    v25._countAndFlagsBits = 0xD000000000000015;
    v25._object = 0x800000010071BB70;
    String.append(_:)(v25);
    defaultLogger()();
    DIPRecordError(_:message:log:)();

    v53(v19, v64);
    (*(v20 + 104))(v55, enum case for DIPError.Code.internalError(_:), v56);
    swift_errorRetain();
    sub_1000402AC(_swiftEmptyArrayStorage);
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    sub_1003C94CC(v58, v21);
    defaultLogger()();
    v26 = *(v22 + 16);
    v26(v62, v21, v59);
    v63 = v26;
    v26(v65, v21, v59);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();
    v29 = os_log_type_enabled(v27, v28);
    v30 = *(v1 + 328);
    v31 = *(v1 + 296);
    v61 = *(v1 + 280);
    v33 = *(v1 + 168);
    v32 = *(v1 + 176);
    v35 = *(v1 + 152);
    v34 = *(v1 + 160);
    if (v29)
    {
      v57 = *(v1 + 296);
      v36 = swift_slowAlloc();
      v66[0] = swift_slowAlloc();
      *v36 = 136315650;
      *(v36 + 4) = sub_100141FE4(0x2865726170657270, 0xEE00293A68746977, v66);
      *(v36 + 12) = 2080;
      sub_1004F4084(&qword_1008460E0, &type metadata accessor for MobileDocumentReaderSession.Error, &protocol conformance descriptor for MobileDocumentReaderSession.Error);
      v37 = Error.localizedDescription.getter();
      v54 = v30;
      v39 = v38;
      v52 = v28;
      v40 = *(v34 + 8);
      v40(v32, v35);
      v41 = sub_100141FE4(v37, v39, v66);

      *(v36 + 14) = v41;
      *(v36 + 22) = 2080;
      v42 = MobileDocumentReaderSession.Error.debugDescription.getter();
      if (v43)
      {
        v44 = v42;
      }

      else
      {
        v44 = 7104878;
      }

      if (v43)
      {
        v45 = v43;
      }

      else
      {
        v45 = 0xE300000000000000;
      }

      v60 = v40;
      v40(v33, v35);
      v46 = sub_100141FE4(v44, v45, v66);

      *(v36 + 24) = v46;
      _os_log_impl(&_mh_execute_header, v27, v52, "MobileDocumentReaderSessionProxy %s finished with error: %s. Debug description: %s", v36, 0x20u);
      swift_arrayDestroy();

      v54(v57, v61);
    }

    else
    {

      v47 = *(v34 + 8);
      v47(v33, v35);
      v60 = v47;
      v47(v32, v35);
      v30(v31, v61);
    }

    v48 = *(v1 + 184);
    v49 = *(v1 + 152);
    sub_1004F4084(&qword_1008460E0, &type metadata accessor for MobileDocumentReaderSession.Error, &protocol conformance descriptor for MobileDocumentReaderSession.Error);
    swift_allocError();
    v63(v50, v48, v49);
    swift_willThrow();

    v60(v48, v49);

    v51 = *(v1 + 8);

    return v51();
  }
}

uint64_t sub_1004E0800()
{
  v2 = *v1;
  *(*v1 + 344) = v0;

  v3 = v2[29];
  v4 = v2[28];
  v5 = v2[27];
  v6 = v2[16];
  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v7 = sub_1004E0D0C;
  }

  else
  {
    v7 = sub_1004E097C;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_1004E097C()
{
  v34 = v0;
  v2 = v0[33];
  v1 = v0[34];
  v3 = v0[30];
  v4 = v0[31];
  sub_10000BB78(v0 + 2);
  defaultLogger()();
  v32 = *(v4 + 16);
  v32(v2, v1, v3);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.info.getter();
  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[41];
  v9 = v0[39];
  v10 = v0[35];
  v11 = v0[33];
  if (v7)
  {
    v30 = v0[35];
    v12 = v0[31];
    v13 = v0[32];
    v29 = v0[39];
    v14 = v0[30];
    v28 = v0[41];
    v15 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    *v15 = 136315394;
    *(v15 + 4) = sub_100141FE4(0x2865726170657270, 0xEE00293A68746977, &v33);
    *(v15 + 12) = 2080;
    v32(v13, v11, v14);
    v16 = String.init<A>(describing:)();
    v18 = v17;
    v31 = *(v12 + 8);
    v31(v11, v14);
    v19 = sub_100141FE4(v16, v18, &v33);

    *(v15 + 14) = v19;
    _os_log_impl(&_mh_execute_header, v5, v6, "MobileDocumentReaderSessionProxy %s returning successfully with response: %s", v15, 0x16u);
    swift_arrayDestroy();

    v28(v29, v30);
  }

  else
  {
    v21 = v0[30];
    v20 = v0[31];

    v31 = *(v20 + 8);
    v31(v11, v21);
    v8(v9, v10);
  }

  v22 = v0[34];
  v23 = v0[30];
  v32(v0[32], v22, v23);
  v24 = objc_allocWithZone(type metadata accessor for XPCMobileDocumentReaderConfigurationResponse());
  v25 = XPCMobileDocumentReaderConfigurationResponse.init(value:)();
  v31(v22, v23);

  v26 = v0[1];

  return v26(v25);
}

uint64_t sub_1004E0D0C()
{
  v51 = v0;
  sub_10000BB78(v0 + 2);
  v1 = v0[38];
  v41 = v0[41];
  v48 = v0[35];
  v3 = v0[25];
  v2 = v0[26];
  v4 = v0[23];
  v46 = v0[22];
  v49 = v0[21];
  v5 = v0[20];
  v42 = v0[24];
  v44 = v0[19];
  v6 = v0[18];
  v50[0] = 0;
  v50[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(56);
  v7._countAndFlagsBits = 0xD000000000000021;
  v7._object = 0x800000010071C470;
  String.append(_:)(v7);
  v8._countAndFlagsBits = 0x2865726170657270;
  v8._object = 0xEE00293A68746977;
  String.append(_:)(v8);
  v9._object = 0x800000010071BB70;
  v9._countAndFlagsBits = 0xD000000000000015;
  String.append(_:)(v9);
  defaultLogger()();
  DIPRecordError(_:message:log:)();

  v41(v1, v48);
  (*(v3 + 104))(v2, enum case for DIPError.Code.internalError(_:), v42);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  sub_1003C94CC(v6, v4);
  defaultLogger()();
  v10 = *(v5 + 16);
  v10(v46, v4, v44);
  v47 = v10;
  v10(v49, v4, v44);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.error.getter();
  v13 = os_log_type_enabled(v11, v12);
  v14 = v0[41];
  v15 = v0[37];
  v16 = v0[35];
  v18 = v0[21];
  v17 = v0[22];
  v20 = v0[19];
  v19 = v0[20];
  if (v13)
  {
    v43 = v0[35];
    v21 = swift_slowAlloc();
    v50[0] = swift_slowAlloc();
    *v21 = 136315650;
    *(v21 + 4) = sub_100141FE4(0x2865726170657270, 0xEE00293A68746977, v50);
    *(v21 + 12) = 2080;
    sub_1004F4084(&qword_1008460E0, &type metadata accessor for MobileDocumentReaderSession.Error, &protocol conformance descriptor for MobileDocumentReaderSession.Error);
    v39 = v15;
    v40 = v14;
    v22 = Error.localizedDescription.getter();
    v24 = v23;
    v38 = v12;
    v25 = *(v19 + 8);
    v25(v17, v20);
    v26 = sub_100141FE4(v22, v24, v50);

    *(v21 + 14) = v26;
    *(v21 + 22) = 2080;
    v27 = MobileDocumentReaderSession.Error.debugDescription.getter();
    if (v28)
    {
      v29 = v27;
    }

    else
    {
      v29 = 7104878;
    }

    if (v28)
    {
      v30 = v28;
    }

    else
    {
      v30 = 0xE300000000000000;
    }

    v45 = v25;
    v25(v18, v20);
    v31 = sub_100141FE4(v29, v30, v50);

    *(v21 + 24) = v31;
    _os_log_impl(&_mh_execute_header, v11, v38, "MobileDocumentReaderSessionProxy %s finished with error: %s. Debug description: %s", v21, 0x20u);
    swift_arrayDestroy();

    v40(v39, v43);
  }

  else
  {

    v32 = *(v19 + 8);
    v32(v18, v20);
    v45 = v32;
    v32(v17, v20);
    v14(v15, v16);
  }

  v33 = v0[23];
  v34 = v0[19];
  sub_1004F4084(&qword_1008460E0, &type metadata accessor for MobileDocumentReaderSession.Error, &protocol conformance descriptor for MobileDocumentReaderSession.Error);
  swift_allocError();
  v47(v35, v33, v34);
  swift_willThrow();

  v45(v33, v34);

  v36 = v0[1];

  return v36();
}

uint64_t sub_1004E14BC(void *a1, void *aBlock, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v5 = a1;

  v6 = swift_task_alloc();
  v3[5] = v6;
  *v6 = v3;
  v6[1] = sub_100481C58;

  return sub_1004DFC58(v5);
}

uint64_t sub_1004E1580(uint64_t a1, uint64_t a2)
{
  v3[16] = a2;
  v3[17] = v2;
  v3[15] = a1;
  v3[18] = type metadata accessor for DIPError();
  v3[19] = swift_task_alloc();
  v4 = type metadata accessor for MobileDocumentReaderSession.Error();
  v3[20] = v4;
  v3[21] = *(v4 - 8);
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();
  v5 = type metadata accessor for MobileDocumentReaderMerchant();
  v3[25] = v5;
  v3[26] = *(v5 - 8);
  v3[27] = swift_task_alloc();
  v3[28] = swift_task_alloc();
  v6 = type metadata accessor for DIPError.Code();
  v3[29] = v6;
  v3[30] = *(v6 - 8);
  v3[31] = swift_task_alloc();
  v3[32] = sub_100007224(&qword_1008460E8, &qword_1006E6840);
  v3[33] = swift_task_alloc();
  v3[34] = swift_task_alloc();
  v3[35] = swift_task_alloc();
  v3[36] = swift_task_alloc();
  v7 = type metadata accessor for Logger();
  v3[37] = v7;
  v3[38] = *(v7 - 8);
  v3[39] = swift_task_alloc();
  v3[40] = swift_task_alloc();
  v3[41] = swift_task_alloc();
  v3[42] = swift_task_alloc();

  return _swift_task_switch(sub_1004E1830, v2, 0);
}

uint64_t sub_1004E1830(uint64_t a1)
{
  v69 = v1;
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v1 + 336);
  v6 = *(v1 + 296);
  v7 = *(v1 + 304);
  if (v4)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v68[0] = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_100141FE4(0x746E61686372656DLL, 0xEE00293A726F6628, v68);
    _os_log_impl(&_mh_execute_header, v2, v3, "MobileDocumentReaderSessionProxy %s", v8, 0xCu);
    sub_10000BB78(v9);
  }

  v10 = *(v7 + 8);
  v10(v5, v6);
  *(v1 + 344) = v10;
  v11 = *(v1 + 136);
  swift_beginAccess();
  sub_10000BBC4(v11 + 112, v1 + 56, &qword_1008460D8, &qword_1006E6838);
  if (*(v1 + 80))
  {
    sub_10001F358((v1 + 56), v1 + 16);
    sub_10000BA08((v1 + 16), *(v1 + 40));
    v12 = swift_task_alloc();
    *(v1 + 352) = v12;
    *v12 = v1;
    v12[1] = sub_1004E2134;
    v13 = *(v1 + 288);
    v14 = *(v1 + 120);
    v15 = *(v1 + 128);

    return sub_100399E00(v13, v14, v15);
  }

  else
  {
    v18 = *(v1 + 240);
    v17 = *(v1 + 248);
    v19 = *(v1 + 232);
    sub_10000BE18(v1 + 56, &qword_1008460D8, &qword_1006E6838);
    (*(v18 + 104))(v17, enum case for DIPError.Code.unexpectedDaemonState(_:), v19);
    sub_1000402AC(_swiftEmptyArrayStorage);
    sub_1004F4084(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v20 = *(v1 + 320);
    v59 = *(v1 + 344);
    v66 = *(v1 + 296);
    v22 = *(v1 + 240);
    v21 = *(v1 + 248);
    v60 = *(v1 + 232);
    v23 = *(v1 + 192);
    v64 = *(v1 + 184);
    v24 = *(v1 + 168);
    v67 = *(v1 + 176);
    v25 = *(v1 + 152);
    v62 = *(v1 + 160);
    v68[0] = 0;
    v68[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(56);
    v26._countAndFlagsBits = 0xD000000000000021;
    v26._object = 0x800000010071C470;
    String.append(_:)(v26);
    v27._countAndFlagsBits = 0x746E61686372656DLL;
    v27._object = 0xEE00293A726F6628;
    String.append(_:)(v27);
    v28._countAndFlagsBits = 0xD000000000000015;
    v28._object = 0x800000010071BB70;
    String.append(_:)(v28);
    defaultLogger()();
    DIPRecordError(_:message:log:)();

    v59(v20, v66);
    (*(v22 + 104))(v21, enum case for DIPError.Code.internalError(_:), v60);
    swift_errorRetain();
    sub_1000402AC(_swiftEmptyArrayStorage);
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    sub_1003C94CC(v25, v23);
    defaultLogger()();
    v29 = *(v24 + 16);
    v29(v64, v23, v62);
    v65 = v29;
    v29(v67, v23, v62);
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();
    v32 = os_log_type_enabled(v30, v31);
    v33 = *(v1 + 344);
    v34 = *(v1 + 312);
    v35 = *(v1 + 296);
    v37 = *(v1 + 176);
    v36 = *(v1 + 184);
    v39 = *(v1 + 160);
    v38 = *(v1 + 168);
    if (v32)
    {
      v61 = *(v1 + 296);
      v40 = swift_slowAlloc();
      v68[0] = swift_slowAlloc();
      *v40 = 136315650;
      *(v40 + 4) = sub_100141FE4(0x746E61686372656DLL, 0xEE00293A726F6628, v68);
      *(v40 + 12) = 2080;
      sub_1004F4084(&qword_1008460E0, &type metadata accessor for MobileDocumentReaderSession.Error, &protocol conformance descriptor for MobileDocumentReaderSession.Error);
      v57 = v34;
      v58 = v33;
      v41 = Error.localizedDescription.getter();
      v43 = v42;
      v56 = v31;
      v44 = *(v38 + 8);
      v44(v36, v39);
      v45 = sub_100141FE4(v41, v43, v68);

      *(v40 + 14) = v45;
      *(v40 + 22) = 2080;
      v46 = MobileDocumentReaderSession.Error.debugDescription.getter();
      if (v47)
      {
        v48 = v46;
      }

      else
      {
        v48 = 7104878;
      }

      if (v47)
      {
        v49 = v47;
      }

      else
      {
        v49 = 0xE300000000000000;
      }

      v63 = v44;
      v44(v37, v39);
      v50 = sub_100141FE4(v48, v49, v68);

      *(v40 + 24) = v50;
      _os_log_impl(&_mh_execute_header, v30, v56, "MobileDocumentReaderSessionProxy %s finished with error: %s. Debug description: %s", v40, 0x20u);
      swift_arrayDestroy();

      v58(v57, v61);
    }

    else
    {

      v51 = *(v38 + 8);
      v51(v37, v39);
      v63 = v51;
      v51(v36, v39);
      v33(v34, v35);
    }

    v52 = *(v1 + 192);
    v53 = *(v1 + 160);
    sub_1004F4084(&qword_1008460E0, &type metadata accessor for MobileDocumentReaderSession.Error, &protocol conformance descriptor for MobileDocumentReaderSession.Error);
    swift_allocError();
    v65(v54, v52, v53);
    swift_willThrow();

    v63(v52, v53);

    v55 = *(v1 + 8);

    return v55();
  }
}