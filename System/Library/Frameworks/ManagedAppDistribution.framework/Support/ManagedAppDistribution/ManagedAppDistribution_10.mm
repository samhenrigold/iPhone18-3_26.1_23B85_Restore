uint64_t sub_1001F2E58()
{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  *(v1 + 1320) = v3;
  *v3 = v2;
  v3[1] = sub_1001F2F98;

  return sub_1001F3BC0();
}

uint64_t sub_1001F2F98()
{
  *(*v1 + 1328) = v0;

  if (v0)
  {
    v2 = sub_1001F3938;
  }

  else
  {
    v2 = sub_1001F30AC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001F30AC()
{
  v1 = *(v0 + 1104);

  static Logger.install.getter();
  sub_1001F5A04(v1, v0 + 224);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  sub_1001F5A3C(v1);
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    v6 = *(v0 + 1296);
    v13 = *(v0 + 1256);
    *(v4 + 4) = v6;
    *v5 = v6;
    v7 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "[%@] Finished background asset relay task", v4, 0xCu);
    sub_1000032A8(v5, &qword_10077F920, &qword_10069E6A0);
  }

  else
  {
    v13 = *(v0 + 1256);
  }

  v8 = v2;
  v9 = *(v0 + 1280);
  v10 = *(v0 + 1184);

  v9(v13, v10);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_1001F3324()
{
  *(*v1 + 1344) = v0;

  if (v0)
  {
    v2 = sub_1001F36B4;
  }

  else
  {
    v2 = sub_1001F3438;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001F3438(uint64_t a1)
{
  v2 = v1[138];
  static Logger.install.getter();
  sub_1001F5A04(v2, (v1 + 80));
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  sub_1001F5A3C(v2);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = v1[138];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = *(v5 + 96);
    v14 = v1[152];
    *(v6 + 4) = v8;
    *v7 = v8;
    v9 = v8;
    _os_log_impl(&_mh_execute_header, v3, v4, "[%@] Finished background asset relay task", v6, 0xCu);
    sub_1000032A8(v7, &qword_10077F920, &qword_10069E6A0);
  }

  else
  {
    v14 = v1[152];
  }

  v10 = v1[160];
  v11 = v1[148];

  v10(v14, v11);

  v12 = v1[1];

  return v12();
}

uint64_t sub_1001F36B4(uint64_t a1)
{
  v2 = v1[138];
  static Logger.install.getter();
  sub_1001F5A04(v2, (v1 + 67));
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  sub_1001F5A3C(v2);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = v1[138];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = *(v5 + 96);
    v15 = v1[151];
    *(v6 + 4) = v8;
    *v7 = v8;
    v9 = v8;
    _os_log_impl(&_mh_execute_header, v3, v4, "[%@] Finished background asset relay task", v6, 0xCu);
    sub_1000032A8(v7, &qword_10077F920, &qword_10069E6A0);
  }

  else
  {
    v15 = v1[151];
  }

  v10 = v3;
  v11 = v1[160];
  v12 = v1[148];

  v11(v15, v12);

  v13 = v1[1];

  return v13();
}

uint64_t sub_1001F3938()
{
  v1 = *(v0 + 1104);

  static Logger.install.getter();
  sub_1001F5A04(v1, v0 + 120);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  sub_1001F5A3C(v1);
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    v6 = *(v0 + 1296);
    v12 = *(v0 + 1200);
    *(v4 + 4) = v6;
    *v5 = v6;
    v7 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "[%@] Finished background asset relay task", v4, 0xCu);
    sub_1000032A8(v5, &qword_10077F920, &qword_10069E6A0);
  }

  else
  {
    v12 = *(v0 + 1200);
  }

  v8 = *(v0 + 1280);
  v9 = *(v0 + 1184);

  v8(v12, v9);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_1001F3BC0()
{
  v1[41] = v0;
  v2 = type metadata accessor for AppInstallRequestType();
  v1[42] = v2;
  v1[43] = *(v2 - 8);
  v1[44] = swift_task_alloc();
  v1[45] = swift_task_alloc();
  v1[46] = swift_task_alloc();
  v3 = type metadata accessor for Logger();
  v1[47] = v3;
  v1[48] = *(v3 - 8);
  v1[49] = swift_task_alloc();
  v1[50] = swift_task_alloc();
  v1[51] = swift_task_alloc();

  return _swift_task_switch(sub_1001F3D0C, 0, 0);
}

void sub_1001F3D0C(uint64_t result)
{
  v70 = v1;
  v2 = v1[41];
  if (*(v2 + 40))
  {
    static Logger.install.getter();
    sub_1001F5A04(v2, (v1 + 2));
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    sub_1001F5A3C(v2);
    if (os_log_type_enabled(v3, v4))
    {
      v5 = v1[41];
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      *v6 = 138412290;
      v8 = *(v5 + 96);
      *(v6 + 4) = v8;
      *v7 = v8;
      v9 = v8;
      _os_log_impl(&_mh_execute_header, v3, v4, "[%@] No essential max install size provided", v6, 0xCu);
      sub_1000032A8(v7, &qword_10077F920, &qword_10069E6A0);
    }

    v11 = v1[48];
    v10 = v1[49];
    v12 = v1[47];

    (*(v11 + 8))(v10, v12);
    goto LABEL_21;
  }

  v13 = *(v2 + 32);
  v14 = *(v2 + 80);
  v15 = v14 + v13;
  v1[52] = v14 + v13;
  if (__CFADD__(v14, v13))
  {
    __break(1u);
    return;
  }

  v16 = sub_1001F468C();
  v17 = v16;
  if ((v16 & 0x8000000000000000) == 0 && v16 >= v15)
  {
    goto LABEL_21;
  }

  v18 = v1[41];
  static Logger.install.getter();
  sub_1001F5A04(v18, (v1 + 15));
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.error.getter();
  sub_1001F5A3C(v18);
  if (os_log_type_enabled(v19, v20))
  {
    v21 = v1[41];
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *v22 = 138412802;
    v24 = *(v21 + 96);
    *(v22 + 4) = v24;
    *v23 = v24;
    *(v22 + 12) = 2050;
    *(v22 + 14) = v15;
    *(v22 + 22) = 2050;
    *(v22 + 24) = v17;
    v25 = v24;
    _os_log_impl(&_mh_execute_header, v19, v20, "[%@] Insufficient space. %{public}llu needed, %{public}lld available", v22, 0x20u);
    sub_1000032A8(v23, &qword_10077F920, &qword_10069E6A0);
  }

  v67 = v15;
  v26 = v1[51];
  v28 = v1[47];
  v27 = v1[48];
  v29 = v1[45];
  v30 = v1[46];
  v31 = v1[42];
  v32 = v1[43];
  v33 = v1[41];

  v34 = *(v27 + 8);
  v34(v26, v28);
  v35 = *(*(v33 + 88) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_lockedStorage);
  v36 = *(*v35 + class metadata base offset for ManagedBuffer + 16);
  v37 = (*(*v35 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v35 + v37));
  v65 = v35 + *(type metadata accessor for ADPInstallConfiguration.Storage(0) + 28);
  v66 = *(v32 + 16);
  v66(v30, v65 + v36, v31);
  os_unfair_lock_unlock((v35 + v37));
  (*(v32 + 32))(v29, v30, v31);
  v38 = (*(v32 + 88))(v29, v31);
  if (v38 == enum case for AppInstallRequestType.automaticUpdate(_:) || v38 == enum case for AppInstallRequestType.update(_:) || v38 == enum case for AppInstallRequestType.deviceVPPUpdate(_:) || v38 == enum case for AppInstallRequestType.userVPPUpdate(_:))
  {
    v64 = v36;
    v68 = v34;
    v40 = v1[41];
    static Logger.install.getter();
    sub_1001F5A04(v40, (v1 + 28));
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.default.getter();
    sub_1001F5A3C(v40);
    v43 = os_log_type_enabled(v41, v42);
    v44 = v1[50];
    v45 = v1[47];
    if (v43)
    {
      v63 = v1[50];
      v47 = v1[43];
      v46 = v1[44];
      v59 = v1[42];
      v62 = v42;
      v48 = v1[41];
      v49 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v69 = v61;
      *v49 = 138412546;
      v50 = *(v48 + 96);
      *(v49 + 4) = v50;
      *v60 = v50;
      *(v49 + 12) = 2082;
      v51 = v50;
      os_unfair_lock_lock((v35 + v37));
      v66(v46, v65 + v64, v59);
      os_unfair_lock_unlock((v35 + v37));
      v52 = AppInstallRequestType.rawValue.getter();
      v54 = v53;
      (*(v47 + 8))(v46, v59);
      v55 = sub_1002346CC(v52, v54, &v69);

      *(v49 + 14) = v55;
      _os_log_impl(&_mh_execute_header, v41, v62, "[%@] Not failing for insufficient space for update of type: %{public}s", v49, 0x16u);
      sub_1000032A8(v60, &qword_10077F920, &qword_10069E6A0);

      sub_10000710C(v61);

      v57 = v45;
      v56 = v63;
    }

    else
    {

      v56 = v44;
      v57 = v45;
    }

    v68(v56, v57);
LABEL_21:

    v58 = v1[1];

    v58();
    return;
  }

  (*(v1[43] + 8))(v1[45], v1[42]);
  v39 = swift_task_alloc();
  v1[53] = v39;
  *v39 = v1;
  v39[1] = sub_1001F43D0;

  sub_1001F4CB4(v67);
}

uint64_t sub_1001F43D0()
{

  return _swift_task_switch(sub_1001F44CC, 0, 0);
}

uint64_t sub_1001F44CC()
{
  v1 = type metadata accessor for MarketplaceKitError();
  sub_1001F6398(&qword_10077F950, &type metadata accessor for MarketplaceKitError, &protocol conformance descriptor for MarketplaceKitError);
  swift_allocError();
  v3 = v2;
  v4 = [objc_opt_self() bytes];
  sub_100006190(0, &qword_10077E900, NSUnitInformationStorage_ptr);
  Measurement.init(value:unit:)();
  (*(*(v1 - 8) + 104))(v3, enum case for MarketplaceKitError.insufficientStorageSpace(_:), v1);
  swift_willThrow();

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1001F468C()
{
  v1 = v0;
  v28 = type metadata accessor for Logger();
  v2 = *(v28 - 8);
  v3 = __chkstk_darwin(v28);
  v32 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v6 = &v27 - v5;
  v7 = type metadata accessor for URLResourceValues();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for URL();
  v30 = *(v31 - 8);
  __chkstk_darwin(v31);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = NSHomeDirectory();
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  URL.init(fileURLWithPath:)();

  sub_1001F0C48(&qword_10077E920, &qword_1006B7520);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10069E680;
  *(inited + 32) = NSURLVolumeAvailableCapacityForImportantUsageKey;
  v15 = NSURLVolumeAvailableCapacityForImportantUsageKey;
  sub_1001F5C78(inited);
  swift_setDeallocating();
  sub_1001F643C(inited + 32);
  v29 = v12;
  URL.resourceValues(forKeys:)();

  v16 = URLResourceValues.volumeAvailableCapacityForImportantUsage.getter();
  if (v17)
  {
    static Logger.install.getter();
    sub_1001F5A04(v1, v33);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();
    sub_1001F5A3C(v1);
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v27 = v2;
      v22 = v21;
      *v20 = 138412290;
      v23 = *(v1 + 96);
      *(v20 + 4) = v23;
      *v21 = v23;
      v24 = v23;
      _os_log_impl(&_mh_execute_header, v18, v19, "[%@] Failure to get available capacity", v20, 0xCu);
      sub_1000032A8(v22, &qword_10077F920, &qword_10069E6A0);
      v2 = v27;
    }

    (*(v2 + 8))(v6, v28);
    (*(v8 + 8))(v10, v7);
    (*(v30 + 8))(v29, v31);
    return 0;
  }

  else
  {
    v26 = v16;
    (*(v8 + 8))(v10, v7);
    (*(v30 + 8))(v29, v31);
    return v26;
  }
}

uint64_t sub_1001F4CB4(uint64_t a1)
{
  v2[15] = a1;
  v2[16] = v1;
  sub_1001F0C48(&qword_10077E908, &unk_10069E6B0);
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v3 = type metadata accessor for LocalizedStringResource();
  v2[19] = v3;
  v2[20] = *(v3 - 8);
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  v4 = type metadata accessor for Logger();
  v2[26] = v4;
  v2[27] = *(v4 - 8);
  v2[28] = swift_task_alloc();

  return _swift_task_switch(sub_1001F4E44, 0, 0);
}

uint64_t sub_1001F4E44(uint64_t a1)
{
  v2 = v1[16];
  static Logger.install.getter();
  sub_1001F5A04(v2, (v1 + 2));
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  sub_1001F5A3C(v2);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = v1[16];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = *(v5 + 96);
    *(v6 + 4) = v8;
    *v7 = v8;
    v9 = v8;
    _os_log_impl(&_mh_execute_header, v3, v4, "[%@] Displaying insufficient space for essential assets dialog", v6, 0xCu);
    sub_1000032A8(v7, &qword_10077F920, &qword_10069E6A0);
  }

  v10 = v1[27];
  v11 = v1[28];
  v12 = v1[25];
  v13 = v1[26];
  v51 = v1[24];
  v48 = v1[23];
  v14 = v1[22];
  v16 = v1[19];
  v15 = v1[20];
  v45 = v1[18];
  v46 = v1[17];
  v17 = v1[16];
  v18 = v1[15];

  (*(v10 + 8))(v11, v13);
  v19 = sub_1001F6204(v18);
  v21 = v20;
  sub_100631A5C(*v17, *(v17 + 8), v12);
  sub_100631DE0(v19, v21, v51);

  sub_100632164(v48);
  sub_10063217C(v45);
  (*(v15 + 56))(v45, 0, 1, v16);
  v22 = *(v15 + 16);
  v22(v14, v12, v16);
  v23 = sub_1005909DC(v14);
  v53 = v24;
  v54 = v23;
  v22(v14, v51, v16);
  v25 = sub_1005909DC(v14);
  v50 = v26;
  v52 = v25;
  v22(v14, v48, v16);
  v27 = sub_1005909DC(v14);
  v47 = v28;
  v49 = v27;
  sub_100005934(v45, v46, &qword_10077E908, &unk_10069E6B0);
  if ((*(v15 + 48))(v46, 1, v16) == 1)
  {
    v29 = 0;
    v30 = 0;
  }

  else
  {
    v31 = v1[21];
    v32 = v1[22];
    v34 = v1[19];
    v33 = v1[20];
    (*(v33 + 32))(v32, v1[17], v34);
    v22(v31, v32, v34);
    v29 = sub_1005909DC(v31);
    v30 = v35;
    (*(v33 + 8))(v32, v34);
  }

  v37 = v1[24];
  v36 = v1[25];
  v38 = v1[23];
  v39 = v1[19];
  v40 = v1[20];
  v41 = v1[18];
  type metadata accessor for SystemAlert();
  v42 = swift_allocObject();
  v1[29] = v42;
  swift_defaultActor_initialize();
  sub_1000032A8(v41, &qword_10077E908, &unk_10069E6B0);
  v43 = *(v40 + 8);
  v43(v38, v39);
  v43(v37, v39);
  v43(v36, v39);
  *(v42 + 112) = v54;
  *(v42 + 120) = v53;
  *(v42 + 128) = v52;
  *(v42 + 136) = v50;
  *(v42 + 144) = v49;
  *(v42 + 152) = v47;
  *(v42 + 160) = v29;
  *(v42 + 168) = v30;
  *(v42 + 176) = 0;

  return _swift_task_switch(sub_1001F523C, v42, 0);
}

uint64_t sub_1001F523C()
{
  if (qword_10077E540 != -1)
  {
    swift_once();
  }

  v1 = qword_100786178;
  *(v0 + 240) = qword_100786178;

  return _swift_task_switch(sub_1001F52D4, v1, 0);
}

uint64_t sub_1001F52D4()
{
  v2 = v0[29];
  v1 = v0[30];
  v3 = sub_1001F6398(&qword_1007843A0, type metadata accessor for SystemAlertCenter, aM_25);
  v4 = swift_task_alloc();
  v0[31] = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  v5 = swift_task_alloc();
  v0[32] = v5;
  *v5 = v0;
  v5[1] = sub_1001F540C;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 33, v1, v3, 0xD000000000000010, 0x80000001006C40F0, sub_1001F63E0, v4, &type metadata for SystemAlert.Response);
}

uint64_t sub_1001F540C()
{
  v1 = *(*v0 + 240);

  return _swift_task_switch(sub_1001F5538, v1, 0);
}

uint64_t sub_1001F5538()
{

  *(v0 + 265) = *(v0 + 264);

  return _swift_task_switch(sub_1001F55A8, 0, 0);
}

uint64_t sub_1001F55A8()
{
  if (!*(v0 + 265))
  {
    sub_1001F5678();
  }

  v1 = *(v0 + 8);

  return v1();
}

id sub_1001F5678()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v28[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v6 = sub_1001F0C48(&unk_1007809F0, &unk_10069E8F0);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v28[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  __chkstk_darwin(v7);
  v11 = &v28[-v10 - 8];
  URL.init(string:)();
  result = [objc_opt_self() defaultWorkspace];
  if (result)
  {
    v13 = result;
    sub_100005934(v11, v9, &unk_1007809F0, &unk_10069E8F0);
    v14 = type metadata accessor for URL();
    v15 = *(v14 - 8);
    v17 = 0;
    if ((*(v15 + 48))(v9, 1, v14) != 1)
    {
      URL._bridgeToObjectiveC()(v16);
      v17 = v18;
      (*(v15 + 8))(v9, v14);
    }

    sub_100528684(_swiftEmptyArrayStorage);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v20 = [v13 openSensitiveURL:v17 withOptions:isa];

    if ((v20 & 1) == 0)
    {
      static Logger.install.getter();
      sub_1001F5A04(v1, v28);
      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.error.getter();
      sub_1001F5A3C(v1);
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        *v23 = 138412290;
        v25 = *(v1 + 96);
        *(v23 + 4) = v25;
        *v24 = v25;
        v26 = v25;
        _os_log_impl(&_mh_execute_header, v21, v22, "[%@] Failed to open storage management", v23, 0xCu);
        sub_1000032A8(v24, &qword_10077F920, &qword_10069E6A0);
      }

      (*(v3 + 8))(v5, v2);
    }

    return sub_1000032A8(v11, &unk_1007809F0, &unk_10069E8F0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1001F5A6C()
{
  v7 = 0u;
  v8 = 0u;
  if (_stringCompareWithSmolCheck(_:_:expecting:)())
  {
    v0 = [objc_opt_self() standardUserDefaults];
    if (!v0)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v1 = objc_allocWithZone(NSUserDefaults);
    v2 = String._bridgeToObjectiveC()();
    v0 = [v1 initWithSuiteName:v2];

    if (!v0)
    {
      goto LABEL_11;
    }
  }

  v3 = String._bridgeToObjectiveC()();
  v4 = [v0 objectForKey:v3];

  if (v4)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
  }

  v6[0] = v9;
  v6[1] = v10;
  if (*(&v10 + 1))
  {
    sub_1000032A8(&v7, &qword_100783A30, &unk_10069E960);
    sub_1001F6498(v6, &v9);
    if (*(&v10 + 1))
    {
      goto LABEL_12;
    }

LABEL_10:
    sub_1000032A8(&v9, &qword_100783A30, &unk_10069E960);
    return 2;
  }

LABEL_11:
  v9 = v7;
  v10 = v8;
  if (!*(&v8 + 1))
  {
    goto LABEL_10;
  }

LABEL_12:
  if (swift_dynamicCast())
  {
    return v7;
  }

  else
  {
    return 2;
  }
}

void *sub_1001F5C78(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1001F0C48(&qword_10077E928, &unk_10069E6D0);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v25 = v1;
    v26 = a1 + 32;
    v6 = v1;
    while (1)
    {
      v7 = *(v26 + 8 * v4);
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      Hasher.init(_seed:)();
      v27 = v7;
      String.hash(into:)();
      v8 = Hasher._finalize()();

      v10 = -1 << *(v3 + 32);
      v11 = v8 & ~v10;
      v12 = v11 >> 6;
      v13 = *(v5 + 8 * (v11 >> 6));
      v14 = 1 << v11;
      if (((1 << v11) & v13) == 0)
      {
        goto LABEL_15;
      }

      v15 = ~v10;
      do
      {
        v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v18 = v17;
        if (v16 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v18 == v19)
        {

LABEL_4:
          v6 = v25;
          goto LABEL_5;
        }

        v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v21)
        {

          goto LABEL_4;
        }

        v11 = (v11 + 1) & v15;
        v12 = v11 >> 6;
        v13 = *(v5 + 8 * (v11 >> 6));
        v14 = 1 << v11;
      }

      while (((1 << v11) & v13) != 0);
      v6 = v25;
LABEL_15:
      *(v5 + 8 * v12) = v14 | v13;
      *(*(v3 + 48) + 8 * v11) = v27;
      v22 = *(v3 + 16);
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        __break(1u);
        return result;
      }

      *(v3 + 16) = v24;
LABEL_5:
      if (++v4 == v6)
      {
        return v3;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

uint64_t sub_1001F5E6C(uint64_t a1, uint64_t a2)
{
  v4 = [objc_allocWithZone(NSNumberFormatter) init];
  [v4 setNumberStyle:1];
  [v4 setFormatterBehavior:1040];
  [v4 setMinimumFractionDigits:a2];
  v5 = [v4 stringFromNumber:a1];
  if (v5)
  {
    v6 = v5;
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {

    return 0;
  }

  return v7;
}

uint64_t sub_1001F5F3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  isa = [objc_opt_self() preferredLanguages];
  if (!isa)
  {
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
    isa = Array._bridgeToObjectiveC()().super.isa;
  }

  v7 = objc_allocWithZone(NSBundle);
  v8 = String._bridgeToObjectiveC()();
  v9 = [v7 initWithPath:v8];

  if (v9)
  {
    v10 = [v9 localizations];
    if (!v10)
    {
      static Array._unconditionallyBridgeFromObjectiveC(_:)();
      v10 = Array._bridgeToObjectiveC()().super.isa;
    }

    v11 = [objc_opt_self() preferredLocalizationsFromArray:v10 forPreferences:isa];

    v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = String._bridgeToObjectiveC()();
    if (*(v12 + 16))
    {

      v14 = String._bridgeToObjectiveC()();
    }

    else
    {

      v14 = 0;
    }

    v17 = [v9 localizedStringForKey:v13 value:0 table:0 localization:v14];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_1001F0C48(&qword_10077E910, &unk_10069E6C0);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_10069E680;
    *(v18 + 56) = &type metadata for String;
    *(v18 + 64) = sub_1001F63E8();
    *(v18 + 32) = a3;
    *(v18 + 40) = a4;

    v16 = String.init(format:_:)();
  }

  else
  {

    v15._countAndFlagsBits = 0x736574796220;
    v15._object = 0xE600000000000000;
    String.append(_:)(v15);
    return a3;
  }

  return v16;
}

uint64_t sub_1001F6204(double a1)
{
  v1 = 1.0e12;
  if (a1 >= 1.0e12)
  {
    v7 = 0;
LABEL_10:
    v8 = &off_100756E90 + 2 * v7;
    v9 = v8[4];
    v10 = v8[5];
    v11 = round(a1 / v1 * 10.0) / 10.0;
    v12 = objc_allocWithZone(NSNumber);

    v13 = [v12 initWithDouble:v11];
    v14 = sub_1001F5E6C(v13, 0);
    v16 = v15;

    v6 = sub_1001F5F3C(v9, v10, v14, v16);

    goto LABEL_11;
  }

  v1 = 1000000000.0;
  if (a1 >= 1000000000.0)
  {
    v7 = 1;
    goto LABEL_10;
  }

  v1 = 1000000.0;
  if (a1 >= 1000000.0)
  {
    v7 = 2;
    goto LABEL_10;
  }

  v1 = 1000.0;
  if (a1 >= 1000.0)
  {
    v7 = 3;
    goto LABEL_10;
  }

  v2 = [objc_allocWithZone(NSNumber) initWithDouble:a1];
  v3 = sub_1001F5E6C(v2, 0);
  v5 = v4;

  v6 = sub_1001F5F3C(0xD000000000000012, 0x80000001006C4140, v3, v5);
LABEL_11:

  return v6;
}

uint64_t sub_1001F6398(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1001F63E8()
{
  result = qword_10077E918;
  if (!qword_10077E918)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for String, &type metadata for String, v0, v1);
    atomic_store(result, &qword_10077E918);
  }

  return result;
}

uint64_t sub_1001F643C(uint64_t a1)
{
  type metadata accessor for URLResourceKey(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_OWORD *sub_1001F6498(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

Swift::Int sub_1001F64A8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1001F0C48(&qword_100783A60, &qword_10069E6E0);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      result = Hasher._finalize()();
      v11 = ~(-1 << *(v3 + 32));
      for (i = result & v11; ; i = (i + 1) & v11)
      {
        v13 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v13) == 0)
        {
          break;
        }

        v14 = (*(v3 + 48) + 16 * i);
        if (*v14 != v9 || v14[1] != v8)
        {
          result = _stringCompareWithSmolCheck(_:_:expecting:)();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v13;
      v16 = (*(v3 + 48) + 16 * i);
      *v16 = v9;
      v16[1] = v8;
      v17 = *(v3 + 16);
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (!v18)
      {
        *(v3 + 16) = v19;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return &_swiftEmptySetSingleton;
  }

  return result;
}

Swift::Int sub_1001F6610(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1001F0C48(&unk_100783A70, &unk_10069E700);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v10 = *(v6 + v4);
      Hasher.init(_seed:)();
      ManagedAppDeclaration.ManagementScope.hash(into:)();
      result = Hasher._finalize()();
      v12 = ~(-1 << *(v3 + 32));
      for (i = result & v12; ; i = (i + 1) & v12)
      {
        v14 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v14) == 0)
        {
          break;
        }

        result = static ManagedAppDeclaration.ManagementScope.== infix(_:_:)();
        if (result)
        {
          goto LABEL_5;
        }
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v14;
      *(*(v3 + 48) + i) = v10;
      v7 = *(v3 + 16);
      v8 = __OFADD__(v7, 1);
      v9 = v7 + 1;
      if (!v8)
      {
        *(v3 + 16) = v9;
LABEL_5:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return &_swiftEmptySetSingleton;
  }

  return result;
}

Swift::Int sub_1001F6740(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1001F0C48(&qword_10077E940, &qword_1006AA0D0);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v29 = v3;
    v30 = a1 + 32;
    v28 = v1;
    while (1)
    {
      v6 = (v30 + 32 * v4);
      v8 = *v6;
      v7 = v6[1];
      v10 = v6[2];
      v9 = v6[3];
      Hasher.init(_seed:)();

      String.hash(into:)();
      v31 = v4;
      if (v9)
      {
        Hasher._combine(_:)(1u);
        String.hash(into:)();
      }

      else
      {
        Hasher._combine(_:)(0);
      }

      result = Hasher._finalize()();
      v12 = ~(-1 << *(v3 + 32));
      v13 = result & v12;
      v14 = (result & v12) >> 6;
      v15 = *(v5 + 8 * v14);
      v16 = 1 << (result & v12);
      v17 = *(v3 + 48);
      if ((v16 & v15) != 0)
      {
        do
        {
          v19 = (v17 + 32 * v13);
          result = *v19;
          v21 = v19[2];
          v20 = v19[3];
          v22 = *v19 == v8 && v19[1] == v7;
          if (v22 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) != 0))
          {
            if (v20)
            {
              if (v9)
              {
                v23 = v21 == v10 && v20 == v9;
                if (v23 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) != 0))
                {

LABEL_4:

                  v1 = v28;
                  v3 = v29;
                  goto LABEL_5;
                }
              }
            }

            else if (!v9)
            {
              goto LABEL_4;
            }
          }

          v13 = (v13 + 1) & v12;
          v14 = v13 >> 6;
          v15 = *(v5 + 8 * (v13 >> 6));
          v16 = 1 << v13;
        }

        while ((v15 & (1 << v13)) != 0);
        v1 = v28;
        v18 = v29;
        v17 = *(v29 + 48);
      }

      else
      {
        v18 = v29;
      }

      *(v5 + 8 * v14) = v15 | v16;
      v24 = (v17 + 32 * v13);
      *v24 = v8;
      v24[1] = v7;
      v24[2] = v10;
      v24[3] = v9;
      v25 = *(v18 + 16);
      v26 = __OFADD__(v25, 1);
      v27 = v25 + 1;
      if (v26)
      {
        break;
      }

      v3 = v18;
      *(v18 + 16) = v27;
LABEL_5:
      v4 = v31 + 1;
      if (v31 + 1 == v1)
      {
        return v3;
      }
    }

    __break(1u);
  }

  else
  {
    return &_swiftEmptySetSingleton;
  }

  return result;
}

Swift::Int sub_1001F6964(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1001F0C48(&qword_10077E948, &qword_10069E710);
    v45 = v1;
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v52 = v3 + 56;
    v43 = v3;
    v44 = a1 + 32;
    while (1)
    {
      v6 = (v44 + (v4 << 6));
      v7 = v6[1];
      v54 = *v6;
      v55 = v7;
      v8 = v6[3];
      v56 = v6[2];
      v57 = v8;
      v9 = BYTE8(v56);
      v11 = *(&v7 + 1);
      v10 = v56;
      v13 = *(&v54 + 1);
      v12 = v7;
      v14 = v54;
      Hasher.init(_seed:)();
      sub_1001F71F4(&v54, v53);
      v51 = v14;
      String.hash(into:)();
      v48 = v12;
      Hasher._combine(_:)(v12);
      v49 = v11;
      Hasher._combine(_:)(v11);
      v50 = v10;
      Hasher._combine(_:)(v10);
      v15 = v57;
      v47 = v9;
      Hasher._combine(_:)(v9);
      String.hash(into:)();
      result = Hasher._finalize()();
      v17 = -1 << *(v3 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      v20 = *(v52 + 8 * (v18 >> 6));
      v21 = 1 << v18;
      v22 = *(v3 + 48);
      if (((1 << v18) & v20) != 0)
      {
        v46 = v4;
        v23 = ~v17;
        v24 = v22;
        do
        {
          v25 = v22 + (v18 << 6);
          result = *v25;
          v27 = *(v25 + 16);
          v26 = *(v25 + 24);
          v28 = *(v25 + 32);
          v29 = *(v25 + 40);
          v30 = *(v25 + 48);
          v31 = *(v25 + 56);
          v32 = *v25 == v51 && *(v25 + 8) == v13;
          if (v32 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), v22 = v24, (result & 1) != 0))
          {
            v33 = v27 == v48 && v26 == v49;
            v34 = v33 && v28 == v50;
            if (v34 && ((v47 ^ v29) & 1) == 0)
            {
              v35 = v30 == v15 && v31 == *(&v15 + 1);
              if (v35 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), v22 = v24, (result & 1) != 0))
              {
                sub_1001F7250(&v54);
                v5 = v45;
                v4 = v46;
                v3 = v43;
                goto LABEL_4;
              }
            }
          }

          v18 = (v18 + 1) & v23;
          v19 = v18 >> 6;
          v20 = *(v52 + 8 * (v18 >> 6));
          v21 = 1 << v18;
        }

        while ((v20 & (1 << v18)) != 0);
        v3 = v43;
        v22 = *(v43 + 48);
        v5 = v45;
        v4 = v46;
      }

      else
      {
        v5 = v45;
      }

      *(v52 + 8 * v19) = v20 | v21;
      v36 = (v22 + (v18 << 6));
      v37 = v54;
      v38 = v55;
      v39 = v57;
      v36[2] = v56;
      v36[3] = v39;
      *v36 = v37;
      v36[1] = v38;
      v40 = *(v3 + 16);
      v41 = __OFADD__(v40, 1);
      v42 = v40 + 1;
      if (v41)
      {
        break;
      }

      *(v3 + 16) = v42;
LABEL_4:
      if (++v4 == v5)
      {
        return v3;
      }
    }

    __break(1u);
  }

  else
  {
    return &_swiftEmptySetSingleton;
  }

  return result;
}

void sub_1001F6C18(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
LABEL_3:
      sub_1001F0C48(&unk_100783A10, &qword_10069E6F0);
      v3 = static _SetStorage.allocate(capacity:)();
      v4 = a1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = _CocoaArrayWrapper.endIndex.getter();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = &_swiftEmptySetSingleton;
  v4 = a1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = (v3 + 7);
  v37 = v5;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    while (1)
    {
      v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = NSObject._rawHashValue(seed:)(v3[5]);
      v12 = -1 << *(v3 + 32);
      v13 = v11 & ~v12;
      v14 = v13 >> 6;
      v15 = *&v6[8 * (v13 >> 6)];
      v16 = 1 << v13;
      if (((1 << v13) & v15) != 0)
      {
        v17 = ~v12;
        type metadata accessor for InstallCoordinationInstallObserver.Observer(0);
        while (1)
        {
          v18 = *(v3[6] + 8 * v13);
          v19 = static NSObject.== infix(_:_:)();

          if (v19)
          {
            break;
          }

          v13 = (v13 + 1) & v17;
          v14 = v13 >> 6;
          v15 = *&v6[8 * (v13 >> 6)];
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            v5 = v37;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v5 = v37;
        if (v7 == v37)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *&v6[8 * v14] = v16 | v15;
        *(v3[6] + 8 * v13) = v10;
        v20 = v3[2];
        v9 = __OFADD__(v20, 1);
        v21 = v20 + 1;
        if (v9)
        {
          goto LABEL_32;
        }

        v3[2] = v21;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {
    v22 = 0;
    v36 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v22 != v36)
    {
      v23 = v3[5];
      v24 = *(a1 + 32 + 8 * v22);
      v25 = NSObject._rawHashValue(seed:)(v23);
      v26 = -1 << *(v3 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      v29 = *&v6[8 * (v27 >> 6)];
      v30 = 1 << v27;
      if (((1 << v27) & v29) != 0)
      {
        v31 = ~v26;
        type metadata accessor for InstallCoordinationInstallObserver.Observer(0);
        while (1)
        {
          v32 = *(v3[6] + 8 * v27);
          v33 = static NSObject.== infix(_:_:)();

          if (v33)
          {
            break;
          }

          v27 = (v27 + 1) & v31;
          v28 = v27 >> 6;
          v29 = *&v6[8 * (v27 >> 6)];
          v30 = 1 << v27;
          if (((1 << v27) & v29) == 0)
          {
            goto LABEL_29;
          }
        }
      }

      else
      {
LABEL_29:
        *&v6[8 * v28] = v30 | v29;
        *(v3[6] + 8 * v27) = v24;
        v34 = v3[2];
        v9 = __OFADD__(v34, 1);
        v35 = v34 + 1;
        if (v9)
        {
          goto LABEL_34;
        }

        v3[2] = v35;
      }

      if (++v22 == v37)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
}

void sub_1001F6F08(unint64_t a1, uint64_t *a2, uint64_t *a3, unint64_t *a4, void *a5)
{
  v6 = a1 >> 62;
  if (a1 >> 62)
  {
    v10 = a3;
    v11 = a2;
    v12 = _CocoaArrayWrapper.endIndex.getter();
    a2 = v11;
    a3 = v10;
    if (v12)
    {
LABEL_3:
      sub_1001F0C48(a2, a3);
      v7 = static _SetStorage.allocate(capacity:)();
      v8 = a1 & 0xFFFFFFFFFFFFFF8;
      if (!v6)
      {
        goto LABEL_4;
      }

LABEL_8:
      v9 = _CocoaArrayWrapper.endIndex.getter();
      if (!v9)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v7 = &_swiftEmptySetSingleton;
  v8 = a1 & 0xFFFFFFFFFFFFFF8;
  if (v6)
  {
    goto LABEL_8;
  }

LABEL_4:
  v9 = *(v8 + 16);
  if (!v9)
  {
    return;
  }

LABEL_9:
  v13 = (v7 + 7);
  v46 = v9;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v14 = 0;
    while (1)
    {
      v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v16 = __OFADD__(v14++, 1);
      if (v16)
      {
        break;
      }

      v17 = v15;
      v18 = NSObject._rawHashValue(seed:)(v7[5]);
      v19 = -1 << *(v7 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      v22 = *&v13[8 * (v20 >> 6)];
      v23 = 1 << v20;
      if (((1 << v20) & v22) != 0)
      {
        v24 = ~v19;
        sub_100006190(0, a4, a5);
        while (1)
        {
          v25 = *(v7[6] + 8 * v20);
          v26 = static NSObject.== infix(_:_:)();

          if (v26)
          {
            break;
          }

          v20 = (v20 + 1) & v24;
          v21 = v20 >> 6;
          v22 = *&v13[8 * (v20 >> 6)];
          v23 = 1 << v20;
          if (((1 << v20) & v22) == 0)
          {
            v9 = v46;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v9 = v46;
        if (v14 == v46)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *&v13[8 * v21] = v23 | v22;
        *(v7[6] + 8 * v20) = v17;
        v27 = v7[2];
        v16 = __OFADD__(v27, 1);
        v28 = v27 + 1;
        if (v16)
        {
          goto LABEL_32;
        }

        v7[2] = v28;
        if (v14 == v9)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {
    v29 = 0;
    v43 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v29 != v43)
    {
      v30 = v7[5];
      v31 = *(a1 + 32 + 8 * v29);
      v32 = NSObject._rawHashValue(seed:)(v30);
      v33 = -1 << *(v7 + 32);
      v34 = v32 & ~v33;
      v35 = v34 >> 6;
      v36 = *&v13[8 * (v34 >> 6)];
      v37 = 1 << v34;
      if (((1 << v34) & v36) != 0)
      {
        v38 = ~v33;
        sub_100006190(0, a4, a5);
        while (1)
        {
          v39 = *(v7[6] + 8 * v34);
          v40 = static NSObject.== infix(_:_:)();

          if (v40)
          {
            break;
          }

          v34 = (v34 + 1) & v38;
          v35 = v34 >> 6;
          v36 = *&v13[8 * (v34 >> 6)];
          v37 = 1 << v34;
          if (((1 << v34) & v36) == 0)
          {
            goto LABEL_29;
          }
        }
      }

      else
      {
LABEL_29:
        *&v13[8 * v35] = v37 | v36;
        *(v7[6] + 8 * v34) = v31;
        v41 = v7[2];
        v16 = __OFADD__(v41, 1);
        v42 = v41 + 1;
        if (v16)
        {
          goto LABEL_34;
        }

        v7[2] = v42;
      }

      if (++v29 == v46)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
}

__n128 sub_1001F72A4(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_1001F72D0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
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

uint64_t sub_1001F7318(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t *sub_1001F7380()
{
  v22[0] = type metadata accessor for Restore(0);
  v1 = *(v22[0] - 8);
  __chkstk_darwin(v22[0]);
  v3 = v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *(v0 + 120);
  v5 = *(v4 + 16);
  v6 = _swiftEmptyArrayStorage;
  if (v5)
  {
    v23 = _swiftEmptyArrayStorage;
    sub_100526304(0, v5, 0);
    v6 = v23;
    v7 = v4 + ((*(v1 + 80) + 32) & ~*(v1 + 80));
    v8 = *(v1 + 72);
    v9 = v22[0];
    do
    {
      sub_1001F75AC(v7, v3);
      v10 = &v3[*(v9 + 36)];
      v12 = *v10;
      v11 = *(v10 + 1);

      sub_1001F7610(v3);
      v23 = v6;
      v14 = v6[2];
      v13 = v6[3];
      if (v14 >= v13 >> 1)
      {
        sub_100526304((v13 > 1), v14 + 1, 1);
        v9 = v22[0];
        v6 = v23;
      }

      v6[2] = v14 + 1;
      v15 = &v6[2 * v14];
      v15[4] = v12;
      v15[5] = v11;
      v7 += v8;
      --v5;
    }

    while (v5);
  }

  v23 = 0;
  v24 = 0xE000000000000000;
  _StringGuts.grow(_:)(22);

  v23 = 0xD000000000000011;
  v24 = 0x80000001006C4210;
  v22[1] = v6;
  sub_1001F0C48(&unk_10077FB40, &qword_10069E770);
  sub_1001F766C();
  v16 = BidirectionalCollection<>.joined(separator:)();
  v18 = v17;

  v19._countAndFlagsBits = v16;
  v19._object = v18;
  String.append(_:)(v19);

  v20._countAndFlagsBits = 8200285;
  v20._object = 0xE300000000000000;
  String.append(_:)(v20);
  return v23;
}

uint64_t sub_1001F75AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Restore(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001F7610(uint64_t a1)
{
  v2 = type metadata accessor for Restore(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1001F766C()
{
  result = qword_1007803B0;
  if (!qword_1007803B0)
  {
    v3 = sub_1001F76D0(&unk_10077FB40, &qword_10069E770);
    result = swift_getWitnessTable(&protocol conformance descriptor for [A], v3, v0, v1);
    atomic_store(result, &qword_1007803B0);
  }

  return result;
}

uint64_t sub_1001F76D0(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

__n128 sub_1001F7718(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = result;
  *(a1 + 80) = v6;
  return result;
}

uint64_t sub_1001F773C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 128))
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

uint64_t sub_1001F7784(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 128) = 1;
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

    *(result + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_1001F77F4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1001F7808(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1001F7850(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1001F78B0()
{
  v1[22] = v0;
  v2 = type metadata accessor for Logger();
  v1[23] = v2;
  v1[24] = *(v2 - 8);
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();

  return _swift_task_switch(sub_1001F79A8, 0, 0);
}

uint64_t sub_1001F79A8()
{
  *(v0 + 216) = 0;
  v1 = String._bridgeToObjectiveC()();
  v2 = String._bridgeToObjectiveC()();
  AppBooleanValue = CFPreferencesGetAppBooleanValue(v1, v2, (v0 + 216));

  if (!*(v0 + 216) || !AppBooleanValue)
  {
    v4 = *(v0 + 176);
    sub_100006D8C(v4, v4[3]);

    v5 = sub_1000071AC();
    *(v0 + 144) = 0xD000000000000012;
    *(v0 + 152) = 0x80000001006C2DF0;
    v6 = swift_task_alloc();
    *(v6 + 16) = v0 + 144;
    v7 = sub_10020A1BC(sub_1001F7FFC, v6, v5);

    if ((v7 & 1) == 0)
    {
      v8 = *(v0 + 176);
      static Logger.daemon.getter();
      v27 = v0 + 16;
      sub_1001F801C(v8, v0 + 16);
      v9 = Logger.logObject.getter();
      v10 = static os_log_type_t.default.getter();
      v11 = os_log_type_enabled(v9, v10);
      v12 = *(v0 + 208);
      v14 = *(v0 + 184);
      v13 = *(v0 + 192);
      if (v11)
      {
        v15 = swift_slowAlloc();
        v26 = v12;
        v16 = swift_slowAlloc();
        *v15 = 138412290;
        v17 = *(v0 + 56);
        sub_1001F8054(v27);
        *(v15 + 4) = v17;
        *v16 = v17;
        _os_log_impl(&_mh_execute_header, v9, v10, "[%@] Install sheet is enabled for App Store but no other marketplace has ever been installed, disabling", v15, 0xCu);
        sub_1001F8084(v16);

        (*(v13 + 8))(v26, v14);
      }

      else
      {

        sub_1001F8054(v27);
        (*(v13 + 8))(v12, v14);
      }

      sub_100006D8C(*(v0 + 176), v4[3]);

      v18 = sub_1000071AC();
      *(v0 + 160) = 0xD000000000000012;
      *(v0 + 168) = 0x80000001006C2DF0;
      v19 = swift_task_alloc();
      *(v19 + 16) = v0 + 160;
      v20 = sub_10020A1BC(sub_1001F80EC, v19, v18);

      if ((v20 & 1) == 0)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v18 = sub_100009530(0, *(v18 + 16) + 1, 1, v18);
        }

        v22 = *(v18 + 16);
        v21 = *(v18 + 24);
        if (v22 >= v21 >> 1)
        {
          v18 = sub_100009530((v21 > 1), v22 + 1, 1, v18);
        }

        *(v18 + 16) = v22 + 1;
        v23 = v18 + 16 * v22;
        *(v23 + 32) = 0xD000000000000012;
        *(v23 + 40) = 0x80000001006C2DF0;
      }

      sub_100651160(v18);
    }
  }

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_1001F7F40()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t sub_1001F7F70()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1001F0E54;

  return sub_1001F78B0();
}

uint64_t sub_1001F8084(uint64_t a1)
{
  v2 = sub_1001F0C48(&qword_10077F920, &qword_10069E6A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_1001F8108(uint64_t a1, unint64_t a2, uint64_t a3, int a4, int a5)
{
  LODWORD(v75) = a5;
  LODWORD(v74) = a4;
  v76 = a3;
  v7 = type metadata accessor for Locale();
  __chkstk_darwin(v7 - 8);
  v72 = &v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1001F0C48(&qword_10077E950, &unk_1006AA3D0);
  v10 = __chkstk_darwin(v9 - 8);
  v73 = &v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v77 = &v65 - v12;
  v13 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  __chkstk_darwin(v13 - 8);
  v14 = type metadata accessor for String.LocalizationValue();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v68 = &v65 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v20 = &v65 - v19;
  v21 = __chkstk_darwin(v18);
  v22 = __chkstk_darwin(v21);
  v81 = &v65 - v23;
  v24 = __chkstk_darwin(v22);
  v80 = &v65 - v25;
  v26 = __chkstk_darwin(v24);
  v79 = &v65 - v27;
  v28 = __chkstk_darwin(v26);
  v30 = &v65 - v29;
  v31 = __chkstk_darwin(v28);
  v33 = &v65 - v32;
  __chkstk_darwin(v31);
  v78 = &v65 - v34;
  v35 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v35 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v35)
  {
    String.LocalizationValue.init(stringLiteral:)();
    v33 = v30;
  }

  else
  {
    if (v74)
    {
      v36 = "network.cellular.title.update";
    }

    else
    {
      v36 = ".title.update.roamingGeneric";
    }

    if (v74)
    {
      v37 = 0xD000000000000025;
    }

    else
    {
      v37 = 0xD00000000000001DLL;
    }

    String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v38._object = (v36 | 0x8000000000000000);
    v38._countAndFlagsBits = v37;
    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v38);
    v39._countAndFlagsBits = a1;
    v39._object = a2;
    String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v39);
    v40._countAndFlagsBits = 0;
    v40._object = 0xE000000000000000;
    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v40);
    String.LocalizationValue.init(stringInterpolation:)();
  }

  v41 = *(v15 + 32);
  v42 = v78;
  v41(v78, v33, v14);
  v43 = *(v15 + 16);
  v43(v79, v42, v14);
  sub_1001F8FEC(v76, v75 & 1);
  String.LocalizationValue.init(stringLiteral:)();
  result = MobileGestalt_get_current_device();
  if (result)
  {
    v45 = result;
    MobileGestalt_get_wapiCapability();

    String.LocalizationValue.init(stringLiteral:)();
    v46 = v77;
    v66 = v41;
    v67 = v15 + 32;
    (v41)();
    (*(v15 + 56))(v46, 0, 1, v14);
    if (qword_10077E558 != -1)
    {
      swift_once();
    }

    v47 = qword_1007B88B0;
    v43(v20, v79, v14);
    v48 = v47;
    static Locale.current.getter();
    v65 = v48;
    v49 = String.init(localized:table:bundle:locale:comment:)();
    v75 = v50;
    v76 = v49;
    v43(v20, v80, v14);
    static Locale.current.getter();
    v74 = String.init(localized:table:bundle:locale:comment:)();
    v71 = v51;
    v43(v20, v81, v14);
    static Locale.current.getter();
    v52 = String.init(localized:table:bundle:locale:comment:)();
    v69 = v53;
    v70 = v52;
    v54 = v73;
    sub_1001F9140(v46, v73);
    v55 = 0;
    v56 = 0;
    if ((*(v15 + 48))(v54, 1, v14) != 1)
    {
      v66(v20, v54, v14);
      v43(v68, v20, v14);
      static Locale.current.getter();
      v57 = v65;
      v55 = String.init(localized:table:bundle:locale:comment:)();
      v56 = v58;
      (*(v15 + 8))(v20, v14);
    }

    type metadata accessor for SystemAlert();
    v59 = swift_allocObject();
    swift_defaultActor_initialize();
    sub_1001F91B0(v77);
    v60 = *(v15 + 8);
    v60(v81, v14);
    v60(v80, v14);
    v60(v79, v14);
    v60(v78, v14);
    v61 = v75;
    *(v59 + 112) = v76;
    *(v59 + 120) = v61;
    v63 = v70;
    v62 = v71;
    *(v59 + 128) = v74;
    *(v59 + 136) = v62;
    v64 = v69;
    *(v59 + 144) = v63;
    *(v59 + 152) = v64;
    *(v59 + 160) = v55;
    *(v59 + 168) = v56;
    *(v59 + 176) = 0;
    return v59;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1001F887C(uint64_t a1, unint64_t a2, uint64_t a3, char a4, int a5)
{
  LODWORD(v79) = a5;
  v80 = a3;
  v8 = type metadata accessor for Locale();
  __chkstk_darwin(v8 - 8);
  v77 = &v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1001F0C48(&qword_10077E950, &unk_1006AA3D0);
  v11 = __chkstk_darwin(v10 - 8);
  v78 = &v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v81 = &v69 - v13;
  v14 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  __chkstk_darwin(v14 - 8);
  v15 = type metadata accessor for String.LocalizationValue();
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin(v15);
  v72 = &v69 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v21 = &v69 - v20;
  v22 = __chkstk_darwin(v19);
  v76 = &v69 - v23;
  v24 = __chkstk_darwin(v22);
  v85 = &v69 - v25;
  v26 = __chkstk_darwin(v24);
  v84 = &v69 - v27;
  v28 = __chkstk_darwin(v26);
  v83 = &v69 - v29;
  v30 = __chkstk_darwin(v28);
  v32 = &v69 - v31;
  v33 = __chkstk_darwin(v30);
  v35 = &v69 - v34;
  __chkstk_darwin(v33);
  v82 = &v69 - v36;
  v37 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v37 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v37)
  {
    String.LocalizationValue.init(stringLiteral:)();
    v35 = v32;
  }

  else
  {
    if (a4)
    {
      v38 = "network.cellular.title.download";
    }

    else
    {
      v38 = ".title.download.roamingGeneric";
    }

    if (a4)
    {
      v39 = 0xD000000000000027;
    }

    else
    {
      v39 = 0xD00000000000001FLL;
    }

    String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v40._object = (v38 | 0x8000000000000000);
    v40._countAndFlagsBits = v39;
    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v40);
    v41._countAndFlagsBits = a1;
    v41._object = a2;
    String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v41);
    v42._countAndFlagsBits = 0;
    v42._object = 0xE000000000000000;
    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v42);
    String.LocalizationValue.init(stringInterpolation:)();
  }

  v43 = *(v16 + 32);
  v44 = v82;
  v43(v82, v35, v15);
  v45 = *(v16 + 16);
  v45(v83, v44, v15);
  sub_1001F8FEC(v80, v79 & 1);
  String.LocalizationValue.init(stringLiteral:)();
  result = MobileGestalt_get_current_device();
  if (result)
  {
    v47 = result;
    MobileGestalt_get_wapiCapability();

    v48 = v76;
    String.LocalizationValue.init(stringLiteral:)();
    v49 = v81;
    v70 = v43;
    v71 = v16 + 32;
    v43(v81, v48, v15);
    (*(v16 + 56))(v49, 0, 1, v15);
    if (qword_10077E558 != -1)
    {
      swift_once();
    }

    v50 = qword_1007B88B0;
    v45(v21, v83, v15);
    v51 = v50;
    static Locale.current.getter();
    v69 = v51;
    v52 = String.init(localized:table:bundle:locale:comment:)();
    v79 = v53;
    v80 = v52;
    v45(v21, v84, v15);
    static Locale.current.getter();
    v54 = String.init(localized:table:bundle:locale:comment:)();
    v75 = v55;
    v76 = v54;
    v45(v21, v85, v15);
    static Locale.current.getter();
    v56 = String.init(localized:table:bundle:locale:comment:)();
    v73 = v57;
    v74 = v56;
    v58 = v49;
    v59 = v78;
    sub_1001F9140(v58, v78);
    v60 = 0;
    v61 = 0;
    if ((*(v16 + 48))(v59, 1, v15) != 1)
    {
      v70(v21, v59, v15);
      v45(v72, v21, v15);
      static Locale.current.getter();
      v62 = v69;
      v60 = String.init(localized:table:bundle:locale:comment:)();
      v61 = v63;
      (*(v16 + 8))(v21, v15);
    }

    type metadata accessor for SystemAlert();
    v64 = swift_allocObject();
    swift_defaultActor_initialize();
    sub_1001F91B0(v81);
    v65 = *(v16 + 8);
    v65(v85, v15);
    v65(v84, v15);
    v65(v83, v15);
    v65(v82, v15);
    v66 = v79;
    *(v64 + 112) = v80;
    *(v64 + 120) = v66;
    v67 = v75;
    *(v64 + 128) = v76;
    *(v64 + 136) = v67;
    v68 = v73;
    *(v64 + 144) = v74;
    *(v64 + 152) = v68;
    *(v64 + 160) = v60;
    *(v64 + 168) = v61;
    *(v64 + 176) = 0;
    return v64;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1001F8FEC(uint64_t a1, char a2)
{
  v4 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  __chkstk_darwin(v4 - 8);
  if (a1 < 1)
  {

    return String.LocalizationValue.init(stringLiteral:)();
  }

  else
  {
    String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
    if (a2)
    {
      v5 = 0xD000000000000022;
      v6 = 0x80000001006C43F0;
    }

    else
    {
      v6 = 0x80000001006C43C0;
      v5 = 0xD000000000000020;
    }

    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(*&v5);
    v8._countAndFlagsBits = sub_10051CB0C(a1);
    String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v8);

    v9._countAndFlagsBits = 0;
    v9._object = 0xE000000000000000;
    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v9);
    return String.LocalizationValue.init(stringInterpolation:)();
  }
}

uint64_t sub_1001F9140(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001F0C48(&qword_10077E950, &unk_1006AA3D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001F91B0(uint64_t a1)
{
  v2 = sub_1001F0C48(&qword_10077E950, &unk_1006AA3D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1001F9218(uint64_t a1, uint64_t a2)
{
  v3[359] = v2;
  v3[358] = a2;
  v3[357] = a1;
  sub_1001F0C48(&unk_100784390, &qword_1006AA370);
  v3[360] = swift_task_alloc();
  v4 = type metadata accessor for CellularIdentity();
  v3[361] = v4;
  v3[362] = *(v4 - 8);
  v3[363] = swift_task_alloc();
  v3[364] = type metadata accessor for EvaluatorDownload(0);
  v3[365] = swift_task_alloc();
  v5 = type metadata accessor for Platform();
  v3[366] = v5;
  v3[367] = *(v5 - 8);
  v3[368] = swift_task_alloc();
  v6 = type metadata accessor for UUID();
  v3[369] = v6;
  v3[370] = *(v6 - 8);
  v3[371] = swift_task_alloc();
  v3[372] = type metadata accessor for AppInstall(0);
  v3[373] = swift_task_alloc();
  sub_1001F0C48(&unk_100780A00, &unk_10069E8E0);
  v3[374] = swift_task_alloc();
  v3[375] = swift_task_alloc();
  v3[376] = swift_task_alloc();
  v7 = type metadata accessor for AppPackage(0);
  v3[377] = v7;
  v3[378] = *(v7 - 8);
  v3[379] = swift_task_alloc();
  v3[380] = swift_task_alloc();
  v8 = sub_1001F0C48(&unk_100784B60, &qword_1006ACE20);
  v3[381] = v8;
  v3[382] = *(v8 - 8);
  v3[383] = swift_task_alloc();
  v9 = type metadata accessor for URL();
  v3[384] = v9;
  v3[385] = *(v9 - 8);
  v3[386] = swift_task_alloc();
  v3[387] = swift_task_alloc();
  sub_1001F0C48(&unk_1007809F0, &unk_10069E8F0);
  v3[388] = swift_task_alloc();
  v3[389] = swift_task_alloc();
  v3[390] = swift_task_alloc();
  v3[391] = swift_task_alloc();
  v3[392] = swift_task_alloc();
  v3[393] = swift_task_alloc();
  v3[394] = type metadata accessor for PlaceholderPromiseBuilder(0);
  v3[395] = swift_task_alloc();
  v10 = type metadata accessor for AppInstallRequestType();
  v3[396] = v10;
  v3[397] = *(v10 - 8);
  v3[398] = swift_task_alloc();
  v3[399] = swift_task_alloc();
  v3[400] = swift_task_alloc();
  v3[401] = swift_task_alloc();
  v3[402] = swift_task_alloc();
  v3[403] = swift_task_alloc();
  v3[404] = swift_task_alloc();
  v3[405] = swift_task_alloc();
  v3[406] = swift_task_alloc();
  v3[407] = swift_task_alloc();
  v3[408] = swift_task_alloc();
  v3[409] = swift_task_alloc();
  v3[410] = swift_task_alloc();
  v3[411] = swift_task_alloc();
  v3[412] = swift_task_alloc();
  v3[413] = swift_task_alloc();
  sub_1001F0C48(&qword_10077E958, &qword_10069FC00);
  v3[414] = swift_task_alloc();
  v3[415] = swift_task_alloc();
  v3[416] = swift_task_alloc();
  v3[417] = type metadata accessor for CreateCoordinatorTask(0);
  v3[418] = swift_task_alloc();
  v3[419] = type metadata accessor for ADPPrepareInstallTask(0);
  v3[420] = swift_task_alloc();
  v3[421] = swift_task_alloc();
  v3[422] = swift_task_alloc();
  v3[423] = swift_task_alloc();
  v3[424] = swift_task_alloc();
  v3[425] = swift_task_alloc();
  v3[426] = swift_task_alloc();
  v3[427] = swift_task_alloc();
  v3[428] = swift_task_alloc();
  v3[429] = swift_task_alloc();
  v3[430] = swift_task_alloc();
  v11 = type metadata accessor for Logger();
  v3[431] = v11;
  v3[432] = *(v11 - 8);
  v3[433] = swift_task_alloc();
  v3[434] = swift_task_alloc();
  v3[435] = swift_task_alloc();
  v3[436] = swift_task_alloc();
  v3[437] = swift_task_alloc();
  v3[438] = swift_task_alloc();
  v3[439] = swift_task_alloc();

  return _swift_task_switch(sub_1001F9964, 0, 0);
}

uint64_t sub_1001F9964(uint64_t a1)
{
  v2 = *(v1 + 3440);
  v3 = *(v1 + 2872);
  static Logger.install.getter();
  sub_10020ADF8(v3, v2, type metadata accessor for ADPPrepareInstallTask);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v1 + 3440);
  if (v6)
  {
    v8 = *(v1 + 3352);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = *(v7 + *(v8 + 28));
    sub_10020AE60(v7, type metadata accessor for ADPPrepareInstallTask);
    *(v9 + 4) = v11;
    *v10 = v11;
    _os_log_impl(&_mh_execute_header, v4, v5, "[%@] Preparing install", v9, 0xCu);
    sub_1000032A8(v10, &qword_10077F920, &qword_10069E6A0);
  }

  else
  {

    sub_10020AE60(v7, type metadata accessor for ADPPrepareInstallTask);
  }

  (*(*(v1 + 3456) + 8))(*(v1 + 3512), *(v1 + 3448));
  sub_100204918();
  sub_10020687C();
  *(v1 + 3520) = v12;
  v94 = v12;
  v13 = *(v1 + 3328);
  v14 = *(v1 + 3304);
  v15 = *(v1 + 3176);
  v16 = *(v1 + 3168);
  v17 = *(v1 + 2872);
  v18 = *(*(v1 + 3352) + 20);
  *(v1 + 4236) = v18;
  v19 = type metadata accessor for ADP(0);
  *(v1 + 3528) = v19;
  v20 = *(v19 + 24);
  *(v1 + 4244) = v20;
  v21 = v17 + v20 + v18;
  v99 = *(v21 + 3);
  *(v1 + 3536) = v99;
  v93 = v21;
  v22 = *(v21 + 4);
  *(v1 + 3544) = v22;
  v23 = type metadata accessor for FilePath();
  *(v1 + 3552) = v23;
  v24 = *(v23 - 8);
  v25 = *(v24 + 56);
  *(v1 + 3560) = v25;
  *(v1 + 3568) = (v24 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v26 = 1;
  v89 = v25;
  v91 = v23;
  (v25)(v13, 1, 1);
  v27 = *v17;
  *(v1 + 3576) = v27;
  v28 = OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_lockedStorage;
  *(v1 + 3584) = OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_lockedStorage;
  v100 = v28;
  v29 = *(v27 + v28);
  v30 = *(*v29 + class metadata base offset for ManagedBuffer + 16);
  v31 = (*(*v29 + 48) + 3) & 0x1FFFFFFFCLL;
  v106 = v22;

  os_unfair_lock_lock((v29 + v31));
  v32 = type metadata accessor for ADPInstallConfiguration.Storage(0);
  *(v1 + 3592) = v32;
  v102 = v32;
  v33 = v29 + *(v32 + 28);
  v34 = *(v15 + 16);
  *(v1 + 3600) = v34;
  *(v1 + 3608) = (v15 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v103 = v34;
  v34(v14, v33 + v30, v16);
  os_unfair_lock_unlock((v29 + v31));
  v35 = *(v15 + 88);
  *(v1 + 3616) = v35;
  *(v1 + 3624) = (v15 + 88) & 0xFFFFFFFFFFFFLL | 0xA3B5000000000000;
  v88 = v35;
  v36 = v35(v14, v16);
  v37 = enum case for AppInstallRequestType.update(_:);
  *(v1 + 4248) = enum case for AppInstallRequestType.update(_:);
  v86 = v37;
  if (v36 != v37)
  {
    if (v36 == enum case for AppInstallRequestType.promotion(_:))
    {
      v26 = 3;
    }

    else if (v36 == enum case for AppInstallRequestType.restore(_:))
    {
      v26 = 2;
    }

    else
    {
      (*(*(v1 + 3176) + 8))(*(v1 + 3304), *(v1 + 3168));
      v26 = 0;
    }
  }

  v97 = v26;
  v38 = *(v1 + 3352);
  v39 = *(v1 + 3344);
  v40 = *(v1 + 3336);
  v95 = *(v1 + 3328);
  v41 = *(v1 + 3296);
  v42 = *(v1 + 3168);
  v43 = *(v27 + v100);
  v44 = *(v1 + 2872);
  v87 = v27;
  v45 = *(*v43 + class metadata base offset for ManagedBuffer + 16);
  v46 = (*(*v43 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v43 + v46));
  v103(v41, v43 + *(v102 + 28) + v45, v42);
  os_unfair_lock_unlock((v43 + v46));
  v47 = sub_1003720A4(v41);
  v48 = *(v44 + *(v38 + 28));
  *(v1 + 3632) = v48;
  *v39 = v99;
  v39[1] = v106;
  sub_10020A668(v95, v39 + v40[5], &qword_10077E958, &qword_10069FC00);
  *(v39 + v40[6]) = xmmword_10069E880;
  *(v39 + v40[7]) = v97;
  *(v39 + v40[8]) = v47;
  *(v39 + v40[9]) = v48;
  v49 = v48;
  *(v1 + 3640) = sub_10047541C();
  v50 = *(v1 + 3144);
  v51 = *(v1 + 2872);
  v52 = *(*(v1 + 3352) + 24);
  *(v1 + 4252) = v52;
  v53 = (v51 + v52);
  v54 = *(type metadata accessor for MediaAPIMetadata(0) + 28);
  *(v1 + 4256) = v54;
  sub_100005934(v53 + v54, v50, &unk_1007809F0, &unk_10069E8F0);
  v98 = v49;
  if (v53[3])
  {
    v107 = v53[2];
    v96 = v53[3];
  }

  else
  {
    v107 = *v53;
    v96 = v53[1];
  }

  v55 = *(v1 + 3288);
  v56 = *(v1 + 3280);
  v57 = *(v1 + 3272);
  v58 = *(v1 + 3168);
  v89(*(v1 + 3320), 1, 1, v91);
  v92 = *(v93 + 5);
  *(v1 + 3648) = v92;
  v59 = *(v93 + 6);
  *(v1 + 3656) = v59;
  v60 = *(v87 + v100);
  v90 = v93[186];
  v61 = *(*v60 + class metadata base offset for ManagedBuffer + 16);
  v62 = (*(*v60 + 48) + 3) & 0x1FFFFFFFCLL;

  v101 = v59;

  os_unfair_lock_lock((v60 + v62));
  v103(v55, v60 + *(v102 + 28) + v61, v58);
  os_unfair_lock_unlock((v60 + v62));
  v103(v56, v55, v58);
  v103(v57, v55, v58);
  v63 = v88(v57, v58);
  v64 = enum case for AppInstallRequestType.automaticInstall(_:);
  *(v1 + 4260) = enum case for AppInstallRequestType.automaticInstall(_:);
  if (v63 == v64)
  {
    goto LABEL_14;
  }

  if (v63 == enum case for AppInstallRequestType.install(_:))
  {
    v65 = 2;
    goto LABEL_17;
  }

  if (v63 == enum case for AppInstallRequestType.automaticUpdate(_:))
  {
LABEL_14:
    v65 = 0;
  }

  else
  {
    v65 = 2;
    if (v63 != v86 && v63 != enum case for AppInstallRequestType.promotion(_:))
    {
      v65 = 0;
      if (v63 != enum case for AppInstallRequestType.restore(_:) && v63 != enum case for AppInstallRequestType.deviceVPP(_:) && v63 != enum case for AppInstallRequestType.deviceVPPUpdate(_:) && v63 != enum case for AppInstallRequestType.userVPP(_:) && v63 != enum case for AppInstallRequestType.userVPPUpdate(_:) && v63 != enum case for AppInstallRequestType.upp(_:) && v63 != enum case for AppInstallRequestType.restoreUpdate(_:))
      {
        return _assertionFailure(_:_:file:line:flags:)();
      }
    }
  }

LABEL_17:
  v105 = *(v1 + 3320);
  v66 = *(v1 + 3288);
  v67 = *(v1 + 3176);
  v68 = *(v1 + 3168);
  v69 = *(v1 + 3160);
  v70 = *(v1 + 3152);
  v71 = *(v1 + 3144);
  v72 = *(v1 + 3136);
  v73 = *(v1 + 3080);
  v74 = *(v1 + 3072);
  v104 = sub_100372410(*(v1 + 3280), v65);
  v75 = *(v67 + 8);
  *(v1 + 3664) = v75;
  *(v1 + 3672) = (v67 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v75(v66, v68);
  LOBYTE(v68) = v93[185];
  *(v1 + 1277) = v68;
  v76 = v70[13];
  v77 = *(v73 + 56);
  *(v1 + 3680) = v77;
  *(v1 + 3688) = (v73 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v77(v69 + v76, 1, 1, v74);
  *(v69 + v70[11]) = 0;
  sub_10020A668(v71, v69, &unk_1007809F0, &unk_10069E8F0);
  v78 = (v69 + v70[5]);
  *v78 = v99;
  v78[1] = v106;
  v79 = (v69 + v70[6]);
  *v79 = v107;
  v79[1] = v96;
  sub_10020A668(v105, v69 + v70[7], &qword_10077E958, &qword_10069FC00);
  v80 = (v69 + v70[8]);
  *v80 = v92;
  v80[1] = v101;
  *(v69 + v70[9]) = v90 & 1;
  *(v69 + v70[10]) = v104;
  *(v69 + v70[12]) = v68 & 1;
  *(v69 + v70[14]) = v94;
  *(v69 + v70[15]) = v98;
  v77(v72, 1, 1, v74);
  v81 = v98;
  v82 = v94;
  v83 = swift_task_alloc();
  *(v1 + 3696) = v83;
  *v83 = v1;
  v83[1] = sub_1001FA788;
  v84 = *(v1 + 3136);

  return sub_10032FAF0(v84);
}

uint64_t sub_1001FA788(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  *(v4 + 3704) = a1;
  *(v4 + 3712) = v1;

  if (v1)
  {
    v6 = *(v4 + 3136);

    sub_1000032A8(v6, &unk_1007809F0, &unk_10069E8F0);

    return _swift_task_switch(sub_1001FAAF0, 0, 0);
  }

  else
  {
    sub_1000032A8(*(v4 + 3136), &unk_1007809F0, &unk_10069E8F0);
    v7 = swift_task_alloc();
    *(v4 + 3720) = v7;
    *v7 = v5;
    v7[1] = sub_1001FA9A0;
    v8 = *(v4 + 3640);

    return sub_100207814(v8, a1);
  }
}

uint64_t sub_1001FA9A0()
{
  v2 = *v1;
  *(*v1 + 3728) = v0;

  if (v0)
  {

    v3 = sub_1001FB9D4;
  }

  else
  {
    v3 = sub_1001FAF14;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1001FAAF0()
{
  v1 = *(v0 + 3344);
  v2 = *(v0 + 3160);

  sub_10020AE60(v2, type metadata accessor for PlaceholderPromiseBuilder);
  sub_10020AE60(v1, type metadata accessor for CreateCoordinatorTask);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1001FAF14()
{
  v63 = *(v0 + 3680);
  v1 = *(v0 + 4236);
  v2 = *(v0 + 3128);
  v3 = *(v0 + 3120);
  v4 = *(v0 + 3080);
  v5 = *(v0 + 3072);
  v6 = *(v0 + 2872);
  v7 = v6 + *(v0 + 4252);
  v8 = *(type metadata accessor for ADPPreflightResultingMetadata(0) + 20);
  *(v0 + 4264) = v8;
  v9 = v7 + v8;
  v10 = *(v4 + 16);
  *(v0 + 3736) = v10;
  *(v0 + 3744) = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v10(v3, v6 + v1, v5);
  v63(v3, 0, 1, v5);
  URL.init(string:relativeTo:)();
  sub_1000032A8(v3, &unk_1007809F0, &unk_10069E8F0);
  v11 = *(v4 + 48);
  *(v0 + 3752) = v11;
  *(v0 + 3760) = (v4 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  v12 = v11(v2, 1, v5);
  v13 = *(v0 + 3128);
  if (v12 == 1)
  {

    sub_1000032A8(v13, &unk_1007809F0, &unk_10069E8F0);
    v14 = type metadata accessor for MarketplaceKitError();
    sub_10020AF28(&qword_10077F950, &type metadata accessor for MarketplaceKitError, &protocol conformance descriptor for MarketplaceKitError);
    swift_allocError();
    v15 = enum case for MarketplaceKitError.invalidManifest(_:);
    v64 = *(v14 - 8);
    v16 = *(v64 + 104);
    v16(v17, enum case for MarketplaceKitError.invalidManifest(_:), v14);
    v18 = _convertErrorToNSError(_:)();

    v19 = IXCreateUserPresentableError();

    if (v19)
    {
      v20 = *(v0 + 3640);
      v21 = _convertErrorToNSError(_:)();
      *(v0 + 2848) = 0;
      v22 = [v20 cancelForReason:v21 client:28 error:v0 + 2848];

      v23 = *(v0 + 2848);
      if (!v22)
      {
        v40 = v23;
        v27 = _convertNSErrorToError(_:)();

        swift_willThrow();
LABEL_10:
        v41 = *(v0 + 3368);
        v42 = *(v0 + 2872);
        static Logger.install.getter();
        sub_10020ADF8(v42, v41, type metadata accessor for ADPPrepareInstallTask);
        swift_errorRetain();
        v43 = Logger.logObject.getter();
        v44 = static os_log_type_t.error.getter();

        v45 = os_log_type_enabled(v43, v44);
        v46 = *(v0 + 3368);
        if (v45)
        {
          v47 = *(v0 + 3352);
          v48 = swift_slowAlloc();
          v49 = swift_slowAlloc();
          *v48 = 138412546;
          v50 = *(v46 + *(v47 + 28));
          sub_10020AE60(v46, type metadata accessor for ADPPrepareInstallTask);
          *(v48 + 4) = v50;
          *v49 = v50;
          *(v48 + 12) = 2114;
          swift_errorRetain();
          v51 = _swift_stdlib_bridgeErrorToNSError();
          *(v48 + 14) = v51;
          v49[1] = v51;
          _os_log_impl(&_mh_execute_header, v43, v44, "[%@] Preparing install failed, cancelling coordinator: %{public}@", v48, 0x16u);
          sub_1001F0C48(&qword_10077F920, &qword_10069E6A0);
          swift_arrayDestroy();
        }

        else
        {

          sub_10020AE60(v46, type metadata accessor for ADPPrepareInstallTask);
        }

        (*(*(v0 + 3456) + 8))(*(v0 + 3472), *(v0 + 3448));
        *(v0 + 2840) = v27;
        swift_errorRetain();
        sub_1001F0C48(&unk_10077F940, &qword_10069D7E0);
        v52 = swift_dynamicCast();
        v53 = *(v64 + 56);
        v54 = *(v0 + 2880);
        if (v52)
        {
          v53(*(v0 + 2880), 0, 1, v14);
          v55 = (*(v64 + 88))(v54, v14);
          v56 = enum case for MarketplaceKitError.cancelled(_:);
          (*(v64 + 8))(v54, v14);
          if (v55 == v56)
          {
            v57 = 3;
LABEL_18:
            v58 = *(v0 + 3704);
            v59 = *(v0 + 3640);
            v60 = *(v0 + 3344);
            v61 = *(v0 + 3160);
            sub_1005F6C58(v57, *(*(v0 + 3576) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_allowAccountPrompt), 0);
            swift_willThrow();

            sub_10020AE60(v61, type metadata accessor for PlaceholderPromiseBuilder);
            sub_10020AE60(v60, type metadata accessor for CreateCoordinatorTask);

            v62 = *(v0 + 8);

            return v62();
          }
        }

        else
        {
          v53(*(v0 + 2880), 1, 1, v14);
          sub_1000032A8(v54, &unk_100784390, &qword_1006AA370);
        }

        v57 = 1;
        goto LABEL_18;
      }

      v24 = v23;
    }

    v25 = swift_allocError();
    v16(v26, v15, v14);
    v27 = v25;
    swift_willThrow();
    goto LABEL_10;
  }

  v28 = *(v0 + 3096);
  v29 = *(v0 + 3080);
  v30 = *(v0 + 3072);
  v31 = *(v0 + 2864);
  v32 = *(v29 + 32);
  *(v0 + 3784) = v32;
  *(v0 + 3792) = (v29 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v32(v28, v13, v30);
  v34 = *(v9 + 48);
  v33 = *(v9 + 56);
  v35 = *(v31 + 24);
  v65 = *(v31 + 40);
  v36 = sub_100006D8C(v31, v35);
  *(v0 + 2472) = v35;
  *(v0 + 2480) = v65;
  v37 = sub_10020A748((v0 + 2448));
  (*(*(v35 - 8) + 16))(v37, v36, v35);
  v38 = swift_task_alloc();
  *(v0 + 3800) = v38;
  *v38 = v0;
  v38[1] = sub_1001FC594;

  return sub_100208028(v0 + 640, v34, v33, v0 + 2448);
}

uint64_t sub_1001FB9D4()
{
  v1 = v0;
  v2 = v0 + 2;
  v3 = v0 + 239;
  v10 = v0[463];
  v4 = v0[383];
  v5 = v0[382];
  v6 = v0[381];
  v7 = _convertErrorToNSError(_:)();
  v1[471] = v7;
  v1[2] = v1;
  v1[3] = sub_1001FBBD4;
  swift_continuation_init();
  v1[246] = v6;
  v8 = sub_10020A748(v1 + 243);
  sub_1001F0C48(&unk_10077F940, &qword_10069D7E0);
  CheckedContinuation.init(continuation:function:)();
  (*(v5 + 32))(v8, v4, v6);
  v1[239] = _NSConcreteStackBlock;
  v1[240] = 1107296256;
  v1[241] = sub_10020A518;
  v1[242] = &unk_10075BE00;
  [v10 cancelForReason:v7 client:28 completion:v3];
  (*(v5 + 8))(v8, v6);

  return _swift_continuation_await(v2);
}

uint64_t sub_1001FBBD4()
{
  v1 = *(*v0 + 48);
  *(*v0 + 3776) = v1;
  if (v1)
  {
    v2 = sub_1001FC148;
  }

  else
  {
    v2 = sub_1001FBD10;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001FBD10()
{
  v1 = *(v0 + 3704);
  v2 = *(v0 + 3640);
  v3 = *(v0 + 3344);
  v4 = *(v0 + 3160);

  swift_willThrow();
  sub_10020AE60(v4, type metadata accessor for PlaceholderPromiseBuilder);
  sub_10020AE60(v3, type metadata accessor for CreateCoordinatorTask);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1001FC148(uint64_t a1)
{
  swift_willThrow();

  v2 = *(v1 + 3704);
  v3 = *(v1 + 3640);
  v4 = *(v1 + 3344);
  v5 = *(v1 + 3160);

  swift_willThrow();
  sub_10020AE60(v5, type metadata accessor for PlaceholderPromiseBuilder);
  sub_10020AE60(v4, type metadata accessor for CreateCoordinatorTask);

  v6 = *(v1 + 8);

  return v6();
}

uint64_t sub_1001FC594()
{
  v2 = *v1;
  v3 = *v1;
  v4 = *(*v1 + 656);
  *(v3 + 477) = *(v3 + 40);
  v3[476] = v0;
  *(v3 + 479) = v4;
  *(v3 + 1278) = *(v3 + 672);
  *(v3 + 481) = *(v3 + 85);
  v3[483] = v2[87];
  *(v3 + 242) = *(v3 + 44);
  v3[486] = v2[90];
  *(v3 + 1279) = *(v3 + 728);
  v3[487] = v2[92];
  v3[488] = v2[93];

  if (v0)
  {

    v5 = sub_100203270;
  }

  else
  {
    sub_10000710C(v3 + 306);
    v5 = sub_1001FC788;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1001FC788()
{
  v462 = v0;
  v1 = v0[488];
  v392 = v0 + 136;
  v2 = v0[487];
  v3 = *(v0 + 1279);
  v4 = v0[486];
  v5 = v0[485];
  v6 = v0[482];
  v7 = v0[481];
  v8 = *(v0 + 1278);
  v9 = v0[480];
  v10 = v0[479];
  v11 = (v0[359] + *(v0 + 1063) + *(v0 + 1066));
  *(v0 + 47) = *(v0 + 477);
  v0[96] = v10;
  v0[97] = v9;
  *(v0 + 784) = v8;
  v0[99] = v7;
  v0[100] = v6;
  *(v0 + 101) = *(v0 + 483);
  v0[103] = v5;
  v0[104] = v4;
  *(v0 + 840) = v3;
  v0[106] = v2;
  v0[107] = v1;
  sub_100005934((v0 + 94), (v0 + 108), &qword_10077E960, &unk_10069E910);
  sub_100007158(v5, v4);

  v396 = v0 + 94;
  sub_100005934((v0 + 94), (v0 + 122), &qword_10077E960, &unk_10069E910);
  sub_100007158(v10, v9);

  v375 = *(v0 + 48);
  v378 = *(v0 + 47);
  v370 = *(v0 + 50);
  v372 = *(v0 + 49);
  v366 = v0[103];
  v368 = v0[102];
  v348 = v0[104];
  v350 = v0[105];
  v362 = v0[107];
  v364 = v0[106];
  v360 = v11[3];
  v0[489] = v360;
  v381 = v11[5];
  v12 = sub_1003375D8(v11[4]);
  if (v15 == 1)
  {
    v344 = 0;
    v346 = 0;
    v352 = 0;
    v354 = 0;
    v356 = 0u;
    v358 = xmmword_10069E890;
    v339 = xmmword_10069E890;
    v342 = 0u;
  }

  else
  {
    v16 = v14;
    if (v12)
    {
      v17 = 2;
    }

    else
    {
      v17 = 0;
    }

    if (v14 && *(v14 + 16))
    {
      v18 = v13;

      sub_10033D260(v17, 0, 0, v18, v16, v0 + 294);
      v356 = *(v0 + 147);
      v358 = *(v0 + 148);
      v352 = v0[299];
      v354 = v0[298];
    }

    else
    {
      v356 = 0u;
      v358 = xmmword_10069E890;
      v352 = 0;
      v354 = 0;
    }

    sub_10033B2B8();
    v339 = *(v0 + 151);
    v342 = *(v0 + 150);
    v344 = v0[305];
    v346 = v0[304];
  }

  v19 = *(v0[359] + *(v0 + 1063) + *(v0 + 1066) + 16);
  v20 = (*sub_100006D8C(v0[358], *(v0[358] + 24)) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_device);
  v22 = v20[4];
  v21 = v20[5];
  v23 = v20[3];
  *(v0 + 1183) = *(v20 + 95);
  *(v0 + 72) = v22;
  *(v0 + 73) = v21;
  *(v0 + 71) = v23;
  v25 = v20[1];
  v24 = v20[2];
  *v392 = *v20;
  *(v0 + 69) = v25;
  *(v0 + 70) = v24;
  v387 = v0[136];
  v26 = v0[137];
  v27 = *(v19 + 16);
  sub_10020A7AC(v392, (v0 + 174));

  sub_10020A7AC(v392, (v0 + 160));
  v400 = v26;

  v389 = v19;

  v454 = v27;
  if (!v27)
  {
LABEL_23:

    sub_10020A92C(v392);

    sub_10020A92C(v392);
    v43 = 0;
    v44 = 0;
    goto LABEL_47;
  }

  v28 = 0;
  v416 = v0 + 343;
  v29 = (v0 + 262);
  v30 = v0[476];
  v31 = (v19 + 80);
  while (1)
  {
    v32 = *(v31 - 5);
    v449 = *(v31 - 4);
    v33 = *(v31 - 1);
    v432 = *(v31 - 2);
    v439 = *(v31 - 3);
    v34 = *v31;
    v35 = v0[138];
    v427 = *(v31 - 6);
    v0[345] = v427;
    v0[346] = v32;
    v36 = swift_task_alloc();
    *(v36 + 16) = v0 + 345;

    v443 = v35;
    LOBYTE(v35) = sub_10020A1BC(sub_10020A808, v36, v35);

    if ((v35 & 1) == 0)
    {
      goto LABEL_15;
    }

    if (!v34)
    {
      goto LABEL_21;
    }

    v37 = v0[143];
    v38 = v37 < v449;
    if (v37 == v449)
    {
      v39 = v0[144];
      v38 = v39 < v439;
      if (v39 == v439)
      {
        break;
      }
    }

    if (!v38)
    {
      goto LABEL_21;
    }

LABEL_15:

    ++v28;
    v31 += 7;

    if (v454 == v28)
    {
      goto LABEL_23;
    }
  }

  if (v0[145] < v432)
  {
    goto LABEL_15;
  }

LABEL_21:
  v40 = v427;
  v0[255] = v427;
  v0[256] = v32;
  v0[257] = v449;
  v0[258] = v439;
  v0[259] = v432;
  v41 = v33;
  v0[260] = v33;
  v412 = v0;
  v0[261] = v34;
  if (v454 - 1 != v28)
  {
    v45 = v28 + 1;
    v46 = v389 + 32;
LABEL_25:
    v337 = v41;
    v47 = (v46 + 56 * v45);
    for (i = v45; ; ++i)
    {
      v49 = v454;
      if (i >= v454)
      {
        __break(1u);
LABEL_157:
        __break(1u);
        goto LABEL_158;
      }

      v50 = *v47;
      v51 = v47[1];
      v52 = v47[2];
      *(v29 + 48) = *(v47 + 6);
      *(v29 + 16) = v51;
      *(v29 + 32) = v52;
      *v29 = v50;
      v49 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_157;
      }

      v422 = i + 1;
      v0 = v412;
      v402 = v412[262];
      v407 = v412[263];
      v412[343] = v402;
      v412[344] = v407;
      v53 = swift_task_alloc();
      *(v53 + 16) = v416;
      v33 = v29;
      sub_10020A87C(v29, (v412 + 269));
      v28 = sub_10020A1BC(sub_10020B0E4, v53, v443);

      if ((v28 & 1) == 0)
      {
        goto LABEL_26;
      }

      v54 = v412[264];
      v28 = v412[265];
      v384 = v412[267];
      v55 = v412[268];
      if (!v55)
      {
        goto LABEL_36;
      }

      v56 = v412[143];
      v57 = v56 < v54;
      if (v56 == v54)
      {
        v58 = v412[144];
        v57 = v58 < v28;
        if (v58 == v28)
        {
          v57 = v412[145] < v412[266];
        }
      }

      if (v57)
      {
LABEL_26:
        v29 = v33;
        sub_10020A8D8(v33);
        if (v422 == v454)
        {
          goto LABEL_41;
        }
      }

      else
      {
LABEL_36:
        v334 = v412[266];
        if (sub_10020A414(v33, v412 + 255, v387, v400))
        {

          v42 = v407;
          v412[255] = v402;
          v412[256] = v407;
          v412[257] = v54;
          v412[258] = v28;
          v59 = v55;
          v34 = v55;
          v432 = v334;
          v439 = v28;
          v412[259] = v334;
          v40 = v402;
          v449 = v54;
          v41 = v384;
          v412[260] = v384;
          v32 = v407;
          v427 = v402;
          v412[261] = v59;
          v45 = v422;
          v46 = v389 + 32;
          v29 = v33;
          if (v422 != v454)
          {
            goto LABEL_25;
          }

          goto LABEL_43;
        }

        sub_10020A8D8(v33);
        v412[255] = v427;
        v412[256] = v32;
        v412[257] = v449;
        v412[258] = v439;
        v412[259] = v432;
        v412[260] = v337;
        v412[261] = v34;
        v29 = v33;
        if (v422 == v454)
        {
LABEL_41:
          v40 = v427;
          v42 = v32;
          v41 = v337;
          goto LABEL_42;
        }
      }

      v47 = (v47 + 56);
    }
  }

  v42 = v32;
LABEL_42:
  v59 = v34;
LABEL_43:
  v60 = v59;

  sub_10020A92C(v392);

  sub_10020A92C(v392);
  if (v60)
  {
    v460 = 14897;
    v461 = 0xE200000000000000;
    v61._countAndFlagsBits = v40;
    v61._object = v42;
    String.append(_:)(v61);
    v62._countAndFlagsBits = 47;
    v62._object = 0xE100000000000000;
    String.append(_:)(v62);
    v63 = v41;
    v64 = v60;
  }

  else
  {
    v460 = 14896;
    v461 = 0xE200000000000000;
    v63 = v40;
    v64 = v42;
  }

  String.append(_:)(*&v63);

  v43 = v460;
  v44 = v461;
  v0 = v412;
LABEL_47:
  v417 = v44;
  v433 = v43;
  v449 = v0 + 223;
  v0[491] = v44;
  v0[490] = v43;
  v408 = v0[467];
  v65 = v0[460];
  v66 = v0[390];
  v403 = v0[387];
  v67 = v0[384];
  v68 = v0[380];
  v69 = v0[377];
  v423 = v0[376];
  v428 = v66;
  v70 = v0[370];
  v71 = v0[369];
  v72 = *(v70 + 56);
  v0[492] = v72;
  v0[493] = (v70 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v72();
  v65(v66, 1, 1, v67);
  v408(v68 + v69[19], v403, v67);
  *(v0 + 247) = 0u;
  *(v0 + 249) = 0u;
  *(v0 + 251) = 0u;
  *(v0 + 253) = 0u;
  v73 = v69[8];
  (v72)(v68 + v73, 1, 1, v71);
  v74 = v69[10];
  v75 = v68 + v69[9];
  v65(v68 + v74, 1, 1, v67);
  v76 = v68 + v69[18];
  v77 = (v68 + v69[20]);
  v78 = (v68 + v69[21]);
  v78[2] = 0u;
  v78[3] = 0u;
  *v78 = 0u;
  v78[1] = 0u;
  *v68 = 0;
  *(v68 + 8) = 0;
  *(v68 + 16) = v342;
  *(v68 + 32) = v339;
  *(v68 + 48) = v346;
  *(v68 + 56) = v344;
  *(v68 + 64) = v360;
  sub_100005934(v396, (v0 + 66), &qword_10077E960, &unk_10069E910);

  sub_10020AD90(v423, v68 + v73, &unk_100780A00, &unk_10069E8E0);
  *v75 = v356;
  *(v75 + 16) = v358;
  *(v75 + 32) = v354;
  *(v75 + 40) = v352;
  sub_10020AD90(v428, v68 + v74, &unk_1007809F0, &unk_10069E8F0);
  v79 = v68 + v69[11];
  *v79 = v378;
  *(v79 + 16) = v375;
  *(v79 + 32) = v372;
  *(v79 + 48) = v370;
  *(v79 + 64) = v368;
  *(v79 + 72) = v366;
  *(v79 + 80) = v348 & 0xCFFFFFFFFFFFFFFFLL;
  *(v79 + 88) = v350 & 1 | 0x4000000000000000;
  *(v79 + 96) = v364;
  *(v79 + 104) = v362;
  *(v68 + v69[12]) = 0;
  *(v68 + v69[13]) = 0;
  *(v68 + v69[14]) = 0;
  *(v68 + v69[15]) = 0;
  *(v68 + v69[16]) = 0;
  *(v68 + v69[17]) = 0;
  *v76 = v381;
  *(v76 + 8) = 0;
  *v77 = v433;
  v77[1] = v417;
  sub_10020AD90((v0 + 247), v78, &qword_10077E968, &unk_1006A30E0);
  v33 = sub_1003627C4(0, 1, 1, _swiftEmptyArrayStorage);
  v28 = v33[2];
  v49 = v33[3];
  v30 = v28 + 1;
  if (v28 >= v49 >> 1)
  {
LABEL_158:
    v33 = sub_1003627C4((v49 > 1), v30, 1, v33);
  }

  v0[494] = v33;
  v80 = v0[443];
  v81 = v0[442];
  v82 = v0[380];
  v83 = v0[378];
  v84 = v0[359];
  v85 = (v84 + *(v0 + 1063) + *(v0 + 1066));
  v86 = v84 + *(v0 + 1059) + *(v0 + 1061);
  v33[2] = v30;
  v87 = *(v83 + 80);
  *(v0 + 1067) = v87;
  v88 = *(v83 + 72);
  v0[495] = v88;
  sub_10020AEC0(v82, v33 + ((v87 + 32) & ~v87) + v88 * v28, type metadata accessor for AppPackage);
  v89 = *(v86 + 200);
  v91 = v85[2];
  v90 = v85[3];
  v92 = v85[1];
  *v449 = *v85;
  v449[1] = v92;
  v449[2] = v91;
  v449[3] = v90;
  sub_10033776C(v449, v81, v80, v89, (v0 + 201));
  if (!v0[202])
  {
LABEL_51:
    v0[514] = v33;
    v104 = v0[450];
    v105 = v0[449];
    v440 = v104;
    v445 = v0[448];
    v106 = v0[447];
    v434 = v0[408];
    v451 = v0[407];
    v455 = v0[406];
    v107 = v0[397];
    v108 = v0[396];
    v109 = *(v106 + v445);
    v110 = *(*v109 + class metadata base offset for ManagedBuffer + 16);
    v111 = (*(*v109 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((v109 + v111));
    v104(v434, v109 + *(v105 + 28) + v110, v108);
    os_unfair_lock_unlock((v109 + v111));
    v112 = *(v106 + v445);
    v113 = *(*v112 + class metadata base offset for ManagedBuffer + 16);
    v114 = (*(*v112 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((v112 + v114));
    v440(v451, v112 + *(v105 + 28) + v113, v108);
    os_unfair_lock_unlock((v112 + v114));
    v115 = enum case for AppInstallRequestType.restore(_:);
    *(v0 + 1068) = enum case for AppInstallRequestType.restore(_:);
    v116 = *(v107 + 104);
    v323 = v115;
    v116(v455);
    sub_10020AF28(&qword_10077E8F8, &type metadata accessor for AppInstallRequestType, &protocol conformance descriptor for AppInstallRequestType);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    v117 = v0[458];
    v118 = v0[407];
    v119 = v0[406];
    v120 = v0[396];
    if (v0[347] == v0[339] && v0[348] == v0[340])
    {
      v117(v0[406], v0[396]);
      v117(v118, v120);
    }

    else
    {
      v121 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v117(v119, v120);
      v117(v118, v120);

      if ((v121 & 1) == 0)
      {
        goto LABEL_69;
      }
    }

    v122 = v0[447] + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_originallyRequestedVersion;
    if (*(v122 + 8))
    {
      v123 = 0xE200000000000000;
      v124 = 16718;
    }

    else
    {
      v135 = *v122;
      v136 = v0[359];
      if (*v122 != *(v136 + *(v0 + 1059) + *(v0 + 1061) + 8))
      {
        v458 = v116;
        v166 = v0[429];
        v167 = v0[428];
        v168 = v0[427];
        static Logger.install.getter();
        sub_10020ADF8(v136, v166, type metadata accessor for ADPPrepareInstallTask);
        sub_10020ADF8(v136, v167, type metadata accessor for ADPPrepareInstallTask);
        sub_10020ADF8(v136, v168, type metadata accessor for ADPPrepareInstallTask);
        v169 = Logger.logObject.getter();
        v170 = static os_log_type_t.default.getter();
        v171 = os_log_type_enabled(v169, v170);
        v441 = v0[458];
        if (v171)
        {
          v172 = v0[441];
          v430 = v0[431];
          v436 = v0[438];
          v173 = v0[429];
          v409 = v170;
          v174 = v0[428];
          v397 = v0[427];
          v404 = v169;
          v175 = v0[419];
          v425 = v0[408];
          v414 = v0[432];
          v419 = v0[396];
          v176 = swift_slowAlloc();
          v393 = swift_slowAlloc();
          v460 = swift_slowAlloc();
          *v176 = 138413058;
          v177 = *(v173 + *(v175 + 28));
          sub_10020AE60(v173, type metadata accessor for ADPPrepareInstallTask);
          *(v176 + 4) = v177;
          *v393 = v177;
          *(v176 + 12) = 2082;
          v178 = v174 + *(v175 + 20) + *(v172 + 24);
          v179 = *(v178 + 24);
          v180 = *(v178 + 32);

          sub_10020AE60(v174, type metadata accessor for ADPPrepareInstallTask);
          v181 = sub_1002346CC(v179, v180, &v460);

          *(v176 + 14) = v181;
          *(v176 + 22) = 2080;
          v0[352] = v135;
          v182 = dispatch thunk of CustomStringConvertible.description.getter();
          v184 = sub_1002346CC(v182, v183, &v460);

          *(v176 + 24) = v184;
          *(v176 + 32) = 2080;
          v0[353] = *(v397 + *(v175 + 20) + *(v172 + 24) + 8);
          v185 = dispatch thunk of CustomStringConvertible.description.getter();
          v187 = v186;
          sub_10020AE60(v397, type metadata accessor for ADPPrepareInstallTask);
          v188 = sub_1002346CC(v185, v187, &v460);

          *(v176 + 34) = v188;
          _os_log_impl(&_mh_execute_header, v404, v409, "[%@][%{public}s] Moving installType to restoreUpdate requestVersion: %s newVersion: %s", v176, 0x2Au);
          sub_1000032A8(v393, &qword_10077F920, &qword_10069E6A0);

          swift_arrayDestroy();

          (*(v414 + 8))(v436, v430);
          v190 = v419;
          v189 = v425;
        }

        else
        {
          v191 = v0[438];
          v192 = v0[432];
          v193 = v0[431];
          v194 = v0[429];
          v195 = v0[428];
          v196 = v0[427];
          v197 = v0[408];
          v198 = v0[396];

          sub_10020AE60(v196, type metadata accessor for ADPPrepareInstallTask);
          sub_10020AE60(v195, type metadata accessor for ADPPrepareInstallTask);
          sub_10020AE60(v194, type metadata accessor for ADPPrepareInstallTask);
          (*(v192 + 8))(v191, v193);
          v189 = v197;
          v190 = v198;
        }

        v441(v189, v190);
        (v458)(v0[408], enum case for AppInstallRequestType.restoreUpdate(_:), v0[396]);
        goto LABEL_69;
      }

      v0[354] = v135;
      v124 = dispatch thunk of CustomStringConvertible.description.getter();
    }

    v137 = v0[426];
    v138 = v0[425];
    v139 = v0[424];
    v140 = v0[359];
    v0[341] = v124;
    v0[342] = v123;
    v141 = String.init<A>(_:)();
    v143 = v142;
    static Logger.install.getter();
    sub_10020ADF8(v140, v137, type metadata accessor for ADPPrepareInstallTask);
    sub_10020ADF8(v140, v138, type metadata accessor for ADPPrepareInstallTask);
    sub_10020ADF8(v140, v139, type metadata accessor for ADPPrepareInstallTask);

    v144 = Logger.logObject.getter();
    v145 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v144, v145))
    {
      v446 = v0[432];
      v452 = v0[431];
      v457 = v0[437];
      v146 = v0[426];
      v435 = v145;
      v147 = v0[425];
      v418 = v0[441];
      v424 = v0[424];
      v148 = v0[419];
      v149 = swift_slowAlloc();
      v429 = swift_slowAlloc();
      v460 = swift_slowAlloc();
      *v149 = 138413058;
      v413 = v141;
      v150 = *(v146 + *(v148 + 28));
      sub_10020AE60(v146, type metadata accessor for ADPPrepareInstallTask);
      *(v149 + 4) = v150;
      *v429 = v150;
      *(v149 + 12) = 2082;
      v151 = v147 + *(v148 + 20) + *(v418 + 24);
      v152 = *(v151 + 24);
      v153 = *(v151 + 32);

      sub_10020AE60(v147, type metadata accessor for ADPPrepareInstallTask);
      v154 = sub_1002346CC(v152, v153, &v460);

      *(v149 + 14) = v154;
      *(v149 + 22) = 2080;
      v155 = sub_1002346CC(v413, v143, &v460);

      *(v149 + 24) = v155;
      *(v149 + 32) = 2080;
      v0[351] = *(v424 + *(v148 + 20) + *(v418 + 24) + 8);
      v156 = dispatch thunk of CustomStringConvertible.description.getter();
      v158 = v157;
      sub_10020AE60(v424, type metadata accessor for ADPPrepareInstallTask);
      v159 = sub_1002346CC(v156, v158, &v460);

      *(v149 + 34) = v159;
      _os_log_impl(&_mh_execute_header, v144, v435, "[%@][%{public}s] Leaving installType as restore requestVersion: %s newVersion: %s", v149, 0x2Au);
      sub_1000032A8(v429, &qword_10077F920, &qword_10069E6A0);

      swift_arrayDestroy();

      (*(v446 + 8))(v457, v452);
    }

    else
    {
      v160 = v0[437];
      v161 = v0[432];
      v162 = v0[431];
      v163 = v0[426];
      v164 = v0[425];
      v165 = v0[424];

      sub_10020AE60(v165, type metadata accessor for ADPPrepareInstallTask);
      sub_10020AE60(v164, type metadata accessor for ADPPrepareInstallTask);
      sub_10020AE60(v163, type metadata accessor for ADPPrepareInstallTask);
      (*(v161 + 8))(v160, v162);
    }

LABEL_69:
    v385 = v0[492];
    v199 = v0[455];
    v447 = *(v0 + 1062);
    v437 = v0[452];
    v405 = v0[450];
    v426 = v0[449];
    v410 = v0[448];
    v379 = v0[447];
    v398 = v0[445];
    v394 = v0[444];
    v200 = *(v0 + 1061);
    v201 = *(v0 + 1059);
    v376 = v0[414];
    v390 = v0[408];
    v382 = v0[405];
    v420 = v0[404];
    v431 = v0[403];
    v202 = v0[397];
    v203 = v0[396];
    v204 = v0[374];
    v373 = v0[371];
    v205 = v0[359];
    v206 = (v205 + *(v0 + 1063));
    v207 = v0[370];
    v369 = *(v205 + v201 + v200 + 16);
    v371 = *(v205 + v201 + v200 + 8);
    v208 = v0[369];
    sub_100005934(v206 + *(v0 + 1064), v0[388], &unk_1007809F0, &unk_10069E8F0);
    v459 = *v206;
    v0[515] = *v206;
    v209 = v206[1];
    v0[516] = v209;

    v453 = v209;

    v210 = [v199 uniqueIdentifier];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v385(v204, 0, 1, v208);
    (*(v207 + 16))(v373, v379 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_id, v208);
    v398(v376, 1, 1, v394);
    v405(v382, v390, v203);
    v211 = *&v410[v379];
    v212 = *(*v211 + class metadata base offset for ManagedBuffer + 16);
    v213 = (*(*v211 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((v211 + v213));
    v405(v420, v211 + *(v426 + 28) + v212, v203);
    os_unfair_lock_unlock((v211 + v213));
    v214 = *(v202 + 32);
    v214(v431, v420, v203);
    v215 = v437(v431, v203);
    v216 = enum case for AppInstallRequestType.automaticUpdate(_:);
    *(v0 + 1069) = enum case for AppInstallRequestType.automaticUpdate(_:);
    v217 = v447;
    v448 = v216;
    v218 = v215 == v217 || v215 == v216;
    v219 = enum case for AppInstallRequestType.deviceVPPUpdate(_:);
    *(v0 + 1070) = enum case for AppInstallRequestType.deviceVPPUpdate(_:);
    v442 = v219;
    v220 = v218 || v215 == v219;
    v221 = enum case for AppInstallRequestType.userVPPUpdate(_:);
    *(v0 + 1071) = enum case for AppInstallRequestType.userVPPUpdate(_:);
    v324 = v221;
    v222 = v220 || v215 == v221;
    v223 = v222;
    if (!v222)
    {
      (v0[458])(v0[403], v0[396]);
    }

    v224 = *(v0 + 1065);
    v225 = v0[452];
    v226 = v0[402];
    v227 = v0[396];
    (v0[450])(v226, v0[408], v227);
    v228 = v225(v226, v227);
    if (v228 == v224)
    {
      goto LABEL_84;
    }

    if (v228 == enum case for AppInstallRequestType.install(_:))
    {
      goto LABEL_86;
    }

    if (v228 == v448)
    {
LABEL_84:
      v229 = 0;
      goto LABEL_87;
    }

    if (v228 == *(v0 + 1062))
    {
LABEL_86:
      v229 = 1;
    }

    else
    {
      v229 = 1;
      if (v228 != enum case for AppInstallRequestType.promotion(_:))
      {
        v229 = 0;
        if (v228 != v323 && v228 != enum case for AppInstallRequestType.deviceVPP(_:) && v228 != v442 && v228 != enum case for AppInstallRequestType.userVPP(_:) && v228 != v324 && v228 != enum case for AppInstallRequestType.upp(_:) && v228 != enum case for AppInstallRequestType.restoreUpdate(_:))
        {
          return _assertionFailure(_:_:file:line:flags:)();
        }
      }
    }

LABEL_87:
    v388 = v229;
    v386 = v214;
    v335 = v0[492];
    v230 = v0[460];
    v353 = v0[456];
    v355 = v0[457];
    v421 = v0[449];
    v391 = v0[447];
    v399 = v0[448];
    v333 = v0[444];
    v343 = v0[443];
    v338 = v0[442];
    v340 = v0[445];
    v411 = v0[441];
    v395 = v0[440];
    v365 = v0[414];
    v377 = v0[405];
    v374 = v0[396];
    v359 = v0[390];
    v329 = v0[388];
    v231 = v0[384];
    v349 = v0[374];
    v232 = v0[373];
    v233 = v0[372];
    v367 = *(v0 + 1277) & 1;
    v406 = v0[359] + *(v0 + 1059);
    v415 = (v406 + *(v0 + 1061));
    v234 = *(v391 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_logKey);
    v351 = v0[371];
    v347 = v0[370];
    v235 = v0[369];
    v327 = v235;
    v363 = v0[368];
    v380 = v0[367];
    v383 = v0[366];
    v230();
    v357 = v234;
    static Platform.current.getter();
    v236 = v233[9];
    (v230)(v232 + v236, 1, 1, v231);
    v237 = v233[13];
    *(v0 + 1072) = v237;
    v238 = (v232 + v237);
    v345 = v223;
    v239 = v233[14];
    v335(v232 + v239, 1, 1, v235);
    v240 = (v232 + v233[15]);
    v325 = v233[16];
    v326 = v233[20];
    v340(v232 + v326, 1, 1, v333);
    v401 = (v232 + v233[22]);
    v328 = v233[26];
    v330 = v233[30];
    v331 = v233[29];
    (v230)(v232 + v330, 1, 1, v231);
    v241 = v233[34];
    v332 = v233[33];
    static Platform.current.getter();
    v336 = v233[35];
    v242 = v232 + v233[36];
    *v242 = xmmword_10069E8A0;
    v243 = v233[39];
    v341 = v233[38];
    *(v0 + 1073) = v243;
    *(v232 + v243) = xmmword_10069E8A0;
    v244 = v233[40];
    *(v0 + 1074) = v244;
    v245 = (v232 + v244);
    *v245 = 0;
    v245[1] = 0;
    v246 = v232 + v233[41];
    v361 = (v232 + v233[42]);
    *v232 = 0;
    *(v232 + 8) = 0;
    *(v232 + 16) = 1;
    *(v232 + 24) = 0;
    *(v232 + 32) = 1;
    *(v232 + 40) = v369;
    *(v232 + 48) = 0;
    *(v232 + 56) = v371;
    *(v232 + 64) = 0;
    sub_10020AD90(v329, v232 + v236, &unk_1007809F0, &unk_10069E8F0);
    v247 = (v232 + v233[10]);
    *v247 = v338;
    v247[1] = v343;
    v248 = (v232 + v233[11]);
    *v248 = v459;
    v248[1] = v453;
    v249 = (v232 + v233[12]);
    *v249 = v353;
    v249[1] = v355;
    *v238 = 0;
    v238[1] = 0;

    sub_10020AD90(v349, v232 + v239, &unk_100780A00, &unk_10069E8E0);
    *v240 = 0;
    v240[1] = 0;
    *(v232 + v325) = 0;
    v250 = v233[17];
    *(v0 + 1075) = v250;
    *(v232 + v250) = 0;
    *(v232 + v233[18]) = 0;
    (*(v347 + 32))(v232 + v233[19], v351, v327);
    sub_10020AD90(v365, v232 + v326, &qword_10077E958, &qword_10069FC00);
    v386(v232 + v233[21], v377, v374);
    *(v232 + v233[23]) = 0;
    *(v232 + v233[24]) = 0;
    *(v232 + v233[25]) = v367;
    *(v232 + v328) = v345;
    *(v232 + v233[27]) = v388;
    *(v232 + v233[28]) = v357;
    *(v232 + v331) = 2;
    sub_10020AD90(v359, v232 + v330, &unk_1007809F0, &unk_10069E8F0);
    v251 = (v232 + v233[32]);
    *v251 = 0;
    v251[1] = 0;
    *(v232 + v332) = 0;
    (*(v380 + 40))(v232 + v241, v363, v383);
    *(v232 + v336) = 2;
    sub_1001CEE68(*v242, *(v242 + 8));
    *v242 = xmmword_10069E8A0;
    *(v232 + v233[37]) = 4;
    *(v232 + v341) = v395;
    v252 = *(v391 + v399);
    v253 = *(*v252 + class metadata base offset for ManagedBuffer + 16);
    v254 = (*(*v252 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((v252 + v254));
    sub_10020A980(v252 + v253, (v0 + 317));
    os_unfair_lock_unlock((v252 + v254));
    v255 = v0[320];
    sub_100006D8C(v0 + 317, v255);
    *v246 = sub_10056D600(v255);
    *(v246 + 8) = v257;
    *(v246 + 16) = v256 & 1;
    sub_10000710C(v0 + 317);
    v258 = (v406 + v411[5]);
    v259 = v258[1];
    *v361 = *v258;
    v361[1] = v259;
    v260 = *(v391 + v399);
    v261 = *(*v260 + class metadata base offset for ManagedBuffer + 16);
    v262 = (*(*v260 + 48) + 3) & 0x1FFFFFFFCLL;

    os_unfair_lock_lock((v260 + v262));
    v263 = (v260 + *(v421 + 32) + v261);
    v265 = *v263;
    v264 = v263[1];

    os_unfair_lock_unlock((v260 + v262));
    *v401 = v265;
    v401[1] = v264;
    v267 = v415[21];
    if (v267)
    {
      v266 = 0xEB00000000656361;
      if (v415[20] == 0x6C7074656B72616DLL && v267 == 0xEB00000000656361)
      {
        LOBYTE(v268) = 1;
      }

      else
      {
        LOBYTE(v268) = _stringCompareWithSmolCheck(_:_:expecting:)();
      }
    }

    else if (*(v0[359] + *(v0 + 1059) + *(v0 + 1061) + 184) == 1)
    {
      LOBYTE(v268) = 0;
    }

    else
    {
      v268 = v415[22] & 1;
    }

    v269 = v0[359] + *(v0 + 1059) + *(v0 + 1061);
    *(v0[373] + *(v0[372] + 172)) = v268 & 1;
    v270 = *(v269 + 72);
    v0[517] = v270;
    v271 = *(v269 + 80);
    v396[3449] = v271;
    v272 = *(v269 + 81);
    *(v0 + 1266) = *(v269 + 84);
    *(v0 + 1263) = v272;
    v273 = *(v269 + 88);
    v0[518] = v273;
    v274 = *(v269 + 96);
    v396[3450] = v274;
    v275 = *(v269 + 113);
    *(v0 + 1199) = *(v269 + 97);
    *(v0 + 1215) = v275;
    LOBYTE(v269) = *(v269 + 129);
    v396[3451] = v269;
    if (v269)
    {
      v276 = v0[489];
    }

    else
    {
      v276 = v0[489];
      if ((v274 & 1) == 0)
      {
        v277 = __CFADD__(v276, v273);
        v276 += v273;
        if (v277)
        {
LABEL_160:
          __break(1u);
          goto LABEL_161;
        }
      }

      if ((v271 & 1) == 0)
      {
        v277 = __CFADD__(v276, v270);
        v276 += v270;
        if (v277)
        {
LABEL_161:
          __break(1u);
        }
      }
    }

    v278 = *(v0 + 1062);
    v279 = v0[452];
    v280 = v0[401];
    v281 = v0[396];
    (v0[450])(v280, v0[408], v281, v266);
    v282 = v279(v280, v281);
    v283 = 2;
    if (v282 != v448 && v282 != v278 && v282 != v442 && v282 != v324)
    {
      (v0[458])(v0[401], v0[396]);
      v283 = 0;
    }

    v284 = *(v0 + 1065);
    v285 = v0[452];
    v286 = v0[400];
    v287 = v0[396];
    (v0[450])(v286, v0[408], v287);
    v288 = v285(v286, v287);
    if (v288 != v284)
    {
      if (v288 == enum case for AppInstallRequestType.install(_:))
      {
        goto LABEL_120;
      }

      if (v288 != v448)
      {
        if (v288 == *(v0 + 1062) || v288 == enum case for AppInstallRequestType.promotion(_:))
        {
          goto LABEL_120;
        }

        if (v288 != v323 && v288 != enum case for AppInstallRequestType.deviceVPP(_:) && v288 != v442 && v288 != enum case for AppInstallRequestType.userVPP(_:) && v288 != v324 && v288 != enum case for AppInstallRequestType.upp(_:) && v288 != enum case for AppInstallRequestType.restoreUpdate(_:))
        {
          return _assertionFailure(_:_:file:line:flags:)();
        }
      }
    }

    v283 |= 1u;
LABEL_120:
    v289 = v0[460];
    v290 = v0[384];
    v291 = v0[365];
    (v0[467])(v291, v0[387], v290);
    v289(v291, 0, 1, v290);
    if ((v276 & 0x8000000000000000) == 0)
    {
      v438 = *(v0 + 1065);
      v292 = v0[454];
      v293 = v0[452];
      v294 = v0[450];
      v295 = v0[448];
      v296 = v0[447];
      v297 = v0[408];
      v298 = v0[399];
      v299 = v0[396];
      v300 = v0[365];
      v301 = v0[364];
      v302 = v301[9];
      v303 = (v300 + v301[5]);
      *v303 = v459;
      v303[1] = v453;
      *(v300 + v301[6]) = v276;
      *(v300 + v301[7]) = 2;
      *(v300 + v302) = 3;
      *(v300 + v301[10]) = v283;
      *(v300 + v301[8]) = v292;
      v304 = *(v296 + v295);
      v305 = *(*v304 + class metadata base offset for ManagedBuffer + 16);
      v306 = (*(*v304 + 48) + 3) & 0x1FFFFFFFCLL;
      v307 = v292;
      os_unfair_lock_lock((v304 + v306));
      sub_10020A980(v304 + v305, (v0 + 312));
      os_unfair_lock_unlock((v304 + v306));
      v0[519] = sub_1001F0C48(&qword_10077E970, &qword_10069E920);
      v308 = swift_dynamicCast();
      v396[3489] = v308;
      v309 = v0[335];
      v310 = v0[336];
      v0[520] = v310;
      v294(v298, v297, v299);
      v311 = v293(v298, v299);
      if (v311 == v438)
      {
        goto LABEL_122;
      }

      if (v311 == enum case for AppInstallRequestType.install(_:))
      {
        v312 = 1;
        goto LABEL_125;
      }

      if (v311 == v448)
      {
LABEL_122:
        v312 = 0;
      }

      else
      {
        v312 = 1;
        if (v311 != *(v0 + 1062) && v311 != enum case for AppInstallRequestType.promotion(_:))
        {
          v312 = 0;
          if (v311 != v323 && v311 != enum case for AppInstallRequestType.deviceVPP(_:) && v311 != v442 && v311 != enum case for AppInstallRequestType.userVPP(_:) && v311 != v324 && v311 != enum case for AppInstallRequestType.upp(_:) && v311 != enum case for AppInstallRequestType.restoreUpdate(_:))
          {
            return _assertionFailure(_:_:file:line:flags:)();
          }
        }
      }

LABEL_125:
      v313 = v308 == 0;
      if (v308)
      {
        v314 = v310;
      }

      else
      {
        v314 = 0;
      }

      if (v313)
      {
        v315 = 0;
      }

      else
      {
        v315 = v309;
      }

      v316 = v0[447];
      *(v0 + 1076) = *(v0[372] + 124);
      sub_10020A980(v316 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_bag, (v0 + 327));
      v317 = v0[330];
      v318 = v0[331];
      v319 = sub_100006D8C(v0 + 327, v317);
      static CellularIdentity.current()();
      v320 = swift_task_alloc();
      v0[521] = v320;
      *v320 = v0;
      v320[1] = sub_100200FF0;
      v321 = v0[365];
      v322 = v0[363];

      return sub_1005C9BD8(v321, v315, v314, v322, v312, v319, v317, v318);
    }

    __break(1u);
    goto LABEL_160;
  }

  v444 = v0[204];
  v450 = v0[203];
  v93 = v0[469];
  v94 = v0[467];
  v95 = v0[460];
  v96 = *(v0 + 1059);
  v97 = v0[390];
  v98 = v0[389];
  v99 = v0[384];
  v100 = v0[359];
  v0[222] = v0[213];
  v101 = *(v0 + 211);
  *(v0 + 109) = *(v0 + 209);
  *(v0 + 110) = v101;
  v102 = *(v0 + 207);
  *(v0 + 107) = *(v0 + 205);
  *(v0 + 108) = v102;
  v94(v97, v100 + v96, v99);
  v95(v97, 0, 1, v99);
  URL.init(string:relativeTo:)();
  sub_1000032A8(v97, &unk_1007809F0, &unk_10069E8F0);
  if (v93(v98, 1, v99) == 1)
  {
    v103 = v0[389];
    sub_1000032A8((v0 + 201), &qword_10077E978, &qword_10069E928);
    sub_1000032A8(v103, &unk_1007809F0, &unk_10069E8F0);
    goto LABEL_51;
  }

  v125 = v0[358];
  (v0[473])(v0[386], v0[389], v0[384]);
  *(v0 + 166) = *(v0 + 110);
  v0[334] = v0[222];

  v0[496] = sub_1003375D8(v126);
  v0[497] = v127;
  v0[498] = v128;
  v0[499] = v129;
  v130 = *(v125 + 24);
  v456 = *(v125 + 40);
  v131 = sub_100006D8C(v125, v130);
  v0[291] = v130;
  *(v0 + 146) = v456;
  v132 = sub_10020A748(v0 + 288);
  (*(*(v130 - 8) + 16))(v132, v131, v130);
  v133 = swift_task_alloc();
  v0[500] = v133;
  *v133 = v0;
  v133[1] = sub_1001FEE7C;

  return sub_100208028((v0 + 52), v450, v444, (v0 + 288));
}

uint64_t sub_1001FEE7C()
{
  v2 = *v1;
  v3 = *v1;
  v4 = *(*v1 + 432);
  *(v3 + 251) = *(v3 + 26);
  v3[501] = v0;
  *(v3 + 252) = v4;
  *(v3 + 1391) = *(v3 + 448);
  v3[506] = v2[57];
  v3[507] = v2[58];
  *(v3 + 254) = *(v3 + 59);
  *(v3 + 255) = *(v3 + 61);
  *(v3 + 1503) = *(v3 + 504);
  v3[512] = v2[64];
  v3[513] = v2[65];

  if (v0)
  {
    v5 = v3[499];
    v6 = v3[498];
    v7 = v3[497];
    v8 = v3[496];

    sub_10020AA94(v8, v7, v6, v5);
    sub_10020AADC((v3 + 332));

    v9 = sub_1002039A8;
  }

  else
  {
    sub_1000032A8((v3 + 201), &qword_10077E978, &qword_10069E928);
    sub_10000710C(v3 + 288);
    v9 = sub_1001FF0D4;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_1001FF0D4()
{
  v365 = v0;
  v1 = *(v0 + 4104);
  v358 = (v0 + 1848);
  v2 = *(v0 + 4096);
  v3 = *(v0 + 1503);
  v4 = *(v0 + 4088);
  v5 = *(v0 + 4080);
  v6 = *(v0 + 4056);
  v7 = *(v0 + 4048);
  v8 = *(v0 + 1391);
  v9 = *(v0 + 4040);
  v10 = *(v0 + 4032);
  v363 = *(v0 + 3984);
  *(v0 + 304) = *(v0 + 4016);
  *(v0 + 320) = v10;
  *(v0 + 328) = v9;
  *(v0 + 336) = v8;
  *(v0 + 344) = v7;
  *(v0 + 352) = v6;
  *(v0 + 360) = *(v0 + 4064);
  *(v0 + 376) = v5;
  *(v0 + 384) = v4;
  *(v0 + 392) = v3;
  *(v0 + 400) = v2;
  *(v0 + 408) = v1;
  sub_100005934(v0 + 304, v0 + 192, &qword_10077E960, &unk_10069E910);
  sub_100007158(v5, v4);

  sub_100005934(v0 + 304, v0 + 80, &qword_10077E960, &unk_10069E910);
  sub_100007158(v10, v9);

  v349 = *(v0 + 320);
  v354 = *(v0 + 304);
  v339 = *(v0 + 352);
  v345 = *(v0 + 336);
  v331 = *(v0 + 376);
  v335 = *(v0 + 368);
  v322 = *(v0 + 408);
  v326 = *(v0 + 400);
  v314 = *(v0 + 392) & 1 | 0x4000000000000000;
  v318 = *(v0 + 384) & 0xCFFFFFFFFFFFFFFFLL;
  if (v363 == 1)
  {
    (*(v0 + 3936))(*(v0 + 3000), 1, 1, *(v0 + 2952));
    v308 = 0;
    v312 = 0;
    v301 = 0;
    v299 = 0;
    v290 = 0u;
    v293 = 0u;
    v296 = xmmword_10069E890;
    v287 = xmmword_10069E890;
  }

  else
  {
    v11 = *(v0 + 3936);
    v12 = *(v0 + 3000);
    v13 = *(v0 + 2952);
    sub_10020AB30(*(v0 + 3968), *(v0 + 3976), *(v0 + 3984), *(v0 + 3992));
    sub_10033B2B8();
    v287 = *(v0 + 2272);
    v290 = *(v0 + 2256);
    v308 = *(v0 + 2288);
    v312 = *(v0 + 2296);

    v11(v12, 1, 1, v13);
    sub_10033B2B8();
    v293 = *(v0 + 2208);
    v296 = *(v0 + 2224);
    v301 = *(v0 + 2240);
    v299 = *(v0 + 2248);
  }

  v304 = *(v0 + 3952);
  v278 = *(v0 + 3928);
  v284 = *(v0 + 3920);
  v14 = *(v0 + 3736);
  v270 = *(v0 + 3936);
  v15 = *(v0 + 3680);
  v280 = *(v0 + 3120);
  v16 = *(v0 + 3088);
  v17 = *(v0 + 3072);
  v18 = *(v0 + 3032);
  v19 = *(v0 + 3016);
  v276 = *(v0 + 3000);
  v20 = *(v0 + 2952);
  v272 = *(v0 + 2656);
  v15();
  sub_10020AADC(v0 + 2656);
  v282 = *(v0 + 2672);
  v14(v18 + v19[19], v16, v17);
  *v358 = 0u;
  *(v0 + 1864) = 0u;
  *(v0 + 1880) = 0u;
  *(v0 + 1896) = 0u;
  v21 = v19[8];
  v270(v18 + v21, 1, 1, v20);
  v22 = v19[10];
  v23 = v18 + v19[9];
  (v15)(v18 + v22, 1, 1, v17);
  v274 = v18 + v19[18];
  v24 = (v18 + v19[20]);
  v25 = (v18 + v19[21]);
  v25[2] = 0u;
  v25[3] = 0u;
  *v25 = 0u;
  v25[1] = 0u;
  *v18 = 0;
  *(v18 + 8) = 0;
  *(v18 + 16) = v290;
  *(v18 + 32) = v287;
  *(v18 + 48) = v308;
  *(v18 + 56) = v312;
  *(v18 + 64) = v272;

  sub_10020AD90(v276, v18 + v21, &unk_100780A00, &unk_10069E8E0);
  *v23 = v293;
  *(v23 + 16) = v296;
  *(v23 + 32) = v301;
  *(v23 + 40) = v299;
  sub_10020AD90(v280, v18 + v22, &unk_1007809F0, &unk_10069E8F0);
  v26 = v18 + v19[11];
  *v26 = v354;
  *(v26 + 16) = v349;
  *(v26 + 32) = v345;
  *(v26 + 48) = v339;
  *(v26 + 64) = v335;
  *(v26 + 72) = v331;
  *(v26 + 80) = v318;
  *(v26 + 88) = v314;
  *(v26 + 96) = v326;
  *(v26 + 104) = v322;
  *(v18 + v19[12]) = 0;
  *(v18 + v19[13]) = 0;
  *(v18 + v19[14]) = 0;
  *(v18 + v19[15]) = 0;
  *(v18 + v19[16]) = 0;
  *(v18 + v19[17]) = 1;
  *v274 = v282;
  *(v274 + 8) = 0;
  *v24 = v284;
  v24[1] = v278;
  sub_10020AD90(v358, v25, &qword_10077E968, &unk_1006A30E0);
  v28 = *(v304 + 16);
  v27 = *(v304 + 24);
  v29 = *(v0 + 3952);
  if (v28 >= v27 >> 1)
  {
    v29 = sub_1003627C4((v27 > 1), v28 + 1, 1, *(v0 + 3952));
  }

  v30 = *(v0 + 3960);
  v31 = *(v0 + 3088);
  v32 = *(v0 + 3080);
  v33 = *(v0 + 3072);
  v34 = *(v0 + 3032);
  v35 = (*(v0 + 4268) + 32) & ~*(v0 + 4268);
  sub_1000032A8(v0 + 304, &qword_10077E960, &unk_10069E910);
  (*(v32 + 8))(v31, v33);
  v29[2] = v28 + 1;
  sub_10020AEC0(v34, v29 + v35 + v30 * v28, type metadata accessor for AppPackage);
  *(v0 + 4112) = v29;
  v36 = *(v0 + 3600);
  v346 = v36;
  v37 = *(v0 + 3592);
  v350 = *(v0 + 3584);
  v38 = *(v0 + 3576);
  v340 = *(v0 + 3264);
  v355 = *(v0 + 3256);
  v359 = *(v0 + 3248);
  v39 = *(v0 + 3176);
  v40 = *(v0 + 3168);
  v41 = *(v38 + v350);
  v42 = *(*v41 + class metadata base offset for ManagedBuffer + 16);
  v43 = (*(*v41 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v41 + v43));
  v36(v340, v41 + *(v37 + 28) + v42, v40);
  os_unfair_lock_unlock((v41 + v43));
  v44 = *(v38 + v350);
  v45 = *(*v44 + class metadata base offset for ManagedBuffer + 16);
  v46 = (*(*v44 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v44 + v46));
  v346(v355, v44 + *(v37 + 28) + v45, v40);
  os_unfair_lock_unlock((v44 + v46));
  v47 = enum case for AppInstallRequestType.restore(_:);
  *(v0 + 4272) = enum case for AppInstallRequestType.restore(_:);
  v48 = *(v39 + 104);
  v247 = v47;
  v48(v359);
  sub_10020AF28(&qword_10077E8F8, &type metadata accessor for AppInstallRequestType, &protocol conformance descriptor for AppInstallRequestType);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v49 = *(v0 + 3664);
  v50 = *(v0 + 3256);
  v51 = *(v0 + 3248);
  v52 = *(v0 + 3168);
  if (*(v0 + 2776) == *(v0 + 2712) && *(v0 + 2784) == *(v0 + 2720))
  {
    v49(*(v0 + 3248), *(v0 + 3168));
    v49(v50, v52);
  }

  else
  {
    v53 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v49(v51, v52);
    v49(v50, v52);

    if ((v53 & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  v54 = *(v0 + 3576) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_originallyRequestedVersion;
  if (*(v54 + 8))
  {
    v55 = 0xE200000000000000;
    v56 = 16718;
  }

  else
  {
    v57 = *v54;
    v58 = *(v0 + 2872);
    if (*v54 != *(v58 + *(v0 + 4236) + *(v0 + 4244) + 8))
    {
      v361 = v48;
      v88 = *(v0 + 3432);
      v89 = *(v0 + 3424);
      v90 = *(v0 + 3416);
      static Logger.install.getter();
      sub_10020ADF8(v58, v88, type metadata accessor for ADPPrepareInstallTask);
      sub_10020ADF8(v58, v89, type metadata accessor for ADPPrepareInstallTask);
      sub_10020ADF8(v58, v90, type metadata accessor for ADPPrepareInstallTask);
      v91 = Logger.logObject.getter();
      v92 = static os_log_type_t.default.getter();
      v93 = os_log_type_enabled(v91, v92);
      v347 = *(v0 + 3664);
      if (v93)
      {
        v94 = *(v0 + 3528);
        v337 = *(v0 + 3448);
        v342 = *(v0 + 3504);
        v95 = *(v0 + 3432);
        v319 = v92;
        v96 = *(v0 + 3424);
        v309 = *(v0 + 3416);
        v315 = v91;
        v97 = *(v0 + 3352);
        v333 = *(v0 + 3264);
        v324 = *(v0 + 3456);
        v328 = *(v0 + 3168);
        v98 = swift_slowAlloc();
        v305 = swift_slowAlloc();
        v364[0] = swift_slowAlloc();
        *v98 = 138413058;
        v99 = *(v95 + *(v97 + 28));
        sub_10020AE60(v95, type metadata accessor for ADPPrepareInstallTask);
        *(v98 + 4) = v99;
        *v305 = v99;
        *(v98 + 12) = 2082;
        v100 = v96 + *(v97 + 20) + *(v94 + 24);
        v101 = *(v100 + 24);
        v102 = *(v100 + 32);

        sub_10020AE60(v96, type metadata accessor for ADPPrepareInstallTask);
        v103 = sub_1002346CC(v101, v102, v364);

        *(v98 + 14) = v103;
        *(v98 + 22) = 2080;
        *(v0 + 2816) = v57;
        v104 = dispatch thunk of CustomStringConvertible.description.getter();
        v106 = sub_1002346CC(v104, v105, v364);

        *(v98 + 24) = v106;
        *(v98 + 32) = 2080;
        *(v0 + 2824) = *(v309 + *(v97 + 20) + *(v94 + 24) + 8);
        v107 = dispatch thunk of CustomStringConvertible.description.getter();
        v109 = v108;
        sub_10020AE60(v309, type metadata accessor for ADPPrepareInstallTask);
        v110 = sub_1002346CC(v107, v109, v364);

        *(v98 + 34) = v110;
        _os_log_impl(&_mh_execute_header, v315, v319, "[%@][%{public}s] Moving installType to restoreUpdate requestVersion: %s newVersion: %s", v98, 0x2Au);
        sub_1000032A8(v305, &qword_10077F920, &qword_10069E6A0);

        swift_arrayDestroy();

        (*(v324 + 8))(v342, v337);
        v112 = v328;
        v111 = v333;
      }

      else
      {
        v113 = *(v0 + 3504);
        v114 = *(v0 + 3456);
        v115 = *(v0 + 3448);
        v116 = *(v0 + 3432);
        v117 = *(v0 + 3424);
        v118 = *(v0 + 3416);
        v119 = *(v0 + 3264);
        v120 = *(v0 + 3168);

        sub_10020AE60(v118, type metadata accessor for ADPPrepareInstallTask);
        sub_10020AE60(v117, type metadata accessor for ADPPrepareInstallTask);
        sub_10020AE60(v116, type metadata accessor for ADPPrepareInstallTask);
        (*(v114 + 8))(v113, v115);
        v111 = v119;
        v112 = v120;
      }

      v347(v111, v112);
      (v361)(*(v0 + 3264), enum case for AppInstallRequestType.restoreUpdate(_:), *(v0 + 3168));
      goto LABEL_21;
    }

    *(v0 + 2832) = v57;
    v56 = dispatch thunk of CustomStringConvertible.description.getter();
  }

  v59 = *(v0 + 3408);
  v60 = *(v0 + 3400);
  v61 = *(v0 + 3392);
  v62 = *(v0 + 2872);
  *(v0 + 2728) = v56;
  *(v0 + 2736) = v55;
  v63 = String.init<A>(_:)();
  v65 = v64;
  static Logger.install.getter();
  sub_10020ADF8(v62, v59, type metadata accessor for ADPPrepareInstallTask);
  sub_10020ADF8(v62, v60, type metadata accessor for ADPPrepareInstallTask);
  sub_10020ADF8(v62, v61, type metadata accessor for ADPPrepareInstallTask);

  v66 = Logger.logObject.getter();
  v67 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v66, v67))
  {
    v360 = *(v0 + 3496);
    v351 = *(v0 + 3456);
    v356 = *(v0 + 3448);
    v68 = *(v0 + 3408);
    v341 = v67;
    v69 = *(v0 + 3400);
    v327 = *(v0 + 3528);
    v332 = *(v0 + 3392);
    v70 = *(v0 + 3352);
    v71 = swift_slowAlloc();
    v336 = swift_slowAlloc();
    v364[0] = swift_slowAlloc();
    *v71 = 138413058;
    v323 = v63;
    v72 = *(v68 + *(v70 + 28));
    sub_10020AE60(v68, type metadata accessor for ADPPrepareInstallTask);
    *(v71 + 4) = v72;
    *v336 = v72;
    *(v71 + 12) = 2082;
    v73 = v69 + *(v70 + 20) + *(v327 + 24);
    v74 = *(v73 + 24);
    v75 = *(v73 + 32);

    sub_10020AE60(v69, type metadata accessor for ADPPrepareInstallTask);
    v76 = sub_1002346CC(v74, v75, v364);

    *(v71 + 14) = v76;
    *(v71 + 22) = 2080;
    v77 = sub_1002346CC(v323, v65, v364);

    *(v71 + 24) = v77;
    *(v71 + 32) = 2080;
    *(v0 + 2808) = *(v332 + *(v70 + 20) + *(v327 + 24) + 8);
    v78 = dispatch thunk of CustomStringConvertible.description.getter();
    v80 = v79;
    sub_10020AE60(v332, type metadata accessor for ADPPrepareInstallTask);
    v81 = sub_1002346CC(v78, v80, v364);

    *(v71 + 34) = v81;
    _os_log_impl(&_mh_execute_header, v66, v341, "[%@][%{public}s] Leaving installType as restore requestVersion: %s newVersion: %s", v71, 0x2Au);
    sub_1000032A8(v336, &qword_10077F920, &qword_10069E6A0);

    swift_arrayDestroy();

    (*(v351 + 8))(v360, v356);
  }

  else
  {
    v82 = *(v0 + 3496);
    v83 = *(v0 + 3456);
    v84 = *(v0 + 3448);
    v85 = *(v0 + 3408);
    v86 = *(v0 + 3400);
    v87 = *(v0 + 3392);

    sub_10020AE60(v87, type metadata accessor for ADPPrepareInstallTask);
    sub_10020AE60(v86, type metadata accessor for ADPPrepareInstallTask);
    sub_10020AE60(v85, type metadata accessor for ADPPrepareInstallTask);
    (*(v83 + 8))(v82, v84);
  }

LABEL_21:
  v297 = *(v0 + 3936);
  v121 = *(v0 + 3640);
  v352 = *(v0 + 4248);
  v343 = *(v0 + 3616);
  v316 = *(v0 + 3600);
  v334 = *(v0 + 3592);
  v320 = *(v0 + 3584);
  v291 = *(v0 + 3576);
  v310 = *(v0 + 3560);
  v306 = *(v0 + 3552);
  v122 = *(v0 + 4244);
  v123 = *(v0 + 4236);
  v288 = *(v0 + 3312);
  v302 = *(v0 + 3264);
  v294 = *(v0 + 3240);
  v329 = *(v0 + 3232);
  v338 = *(v0 + 3224);
  v124 = *(v0 + 3176);
  v125 = *(v0 + 3168);
  v126 = *(v0 + 2992);
  v127 = *(v0 + 2872);
  v128 = (v127 + *(v0 + 4252));
  v129 = *(v0 + 2960);
  v281 = *(v127 + v123 + v122 + 16);
  v283 = *(v127 + v123 + v122 + 8);
  v285 = *(v0 + 2968);
  v130 = *(v0 + 2952);
  sub_100005934(v128 + *(v0 + 4256), *(v0 + 3104), &unk_1007809F0, &unk_10069E8F0);
  v362 = *v128;
  *(v0 + 4120) = *v128;
  v131 = v128[1];
  *(v0 + 4128) = v131;

  v357 = v131;

  v132 = [v121 uniqueIdentifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v297(v126, 0, 1, v130);
  (*(v129 + 16))(v285, v291 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_id, v130);
  v310(v288, 1, 1, v306);
  v316(v294, v302, v125);
  v133 = *(v291 + v320);
  v134 = *(*v133 + class metadata base offset for ManagedBuffer + 16);
  v135 = (*(*v133 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v133 + v135));
  v316(v329, v133 + *(v334 + 28) + v134, v125);
  os_unfair_lock_unlock((v133 + v135));
  v136 = *(v124 + 32);
  v136(v338, v329, v125);
  v137 = v343(v338, v125);
  v138 = enum case for AppInstallRequestType.automaticUpdate(_:);
  *(v0 + 4276) = enum case for AppInstallRequestType.automaticUpdate(_:);
  v139 = v352;
  v353 = v138;
  v140 = v137 == v139 || v137 == v138;
  v141 = enum case for AppInstallRequestType.deviceVPPUpdate(_:);
  *(v0 + 4280) = enum case for AppInstallRequestType.deviceVPPUpdate(_:);
  v348 = v141;
  v142 = v140 || v137 == v141;
  v143 = enum case for AppInstallRequestType.userVPPUpdate(_:);
  *(v0 + 4284) = enum case for AppInstallRequestType.userVPPUpdate(_:);
  v248 = v143;
  v144 = v142 || v137 == v143;
  v145 = v144;
  if (!v144)
  {
    (*(v0 + 3664))(*(v0 + 3224), *(v0 + 3168));
  }

  v146 = *(v0 + 4260);
  v147 = *(v0 + 3616);
  v148 = *(v0 + 3216);
  v149 = *(v0 + 3168);
  (*(v0 + 3600))(v148, *(v0 + 3264), v149);
  v150 = v147(v148, v149);
  if (v150 == v146)
  {
    goto LABEL_36;
  }

  if (v150 == enum case for AppInstallRequestType.install(_:))
  {
    goto LABEL_38;
  }

  if (v150 == v353)
  {
LABEL_36:
    v151 = 0;
    goto LABEL_39;
  }

  if (v150 == *(v0 + 4248))
  {
LABEL_38:
    v151 = 1;
  }

  else
  {
    v151 = 1;
    if (v150 != enum case for AppInstallRequestType.promotion(_:))
    {
      v151 = 0;
      if (v150 != v247 && v150 != enum case for AppInstallRequestType.deviceVPP(_:) && v150 != v348 && v150 != enum case for AppInstallRequestType.userVPP(_:) && v150 != v248 && v150 != enum case for AppInstallRequestType.upp(_:) && v150 != enum case for AppInstallRequestType.restoreUpdate(_:))
      {
        return _assertionFailure(_:_:file:line:flags:)();
      }
    }
  }

LABEL_39:
  v300 = v151;
  v258 = *(v0 + 3936);
  v298 = v136;
  v152 = *(v0 + 3680);
  v266 = *(v0 + 3648);
  v267 = *(v0 + 3656);
  v330 = *(v0 + 3592);
  v303 = *(v0 + 3576);
  v311 = *(v0 + 3584);
  v153 = *(v0 + 3552);
  v262 = *(v0 + 3544);
  v259 = *(v0 + 3560);
  v261 = *(v0 + 3536);
  v321 = *(v0 + 3528);
  v307 = *(v0 + 3520);
  v275 = *(v0 + 3312);
  v286 = *(v0 + 3240);
  v279 = *(v0 + 3168);
  v269 = *(v0 + 3120);
  v254 = *(v0 + 3104);
  v154 = *(v0 + 3072);
  v264 = *(v0 + 2992);
  v155 = *(v0 + 2984);
  v289 = v145;
  v156 = *(v0 + 2976);
  v277 = *(v0 + 1277) & 1;
  v317 = *(v0 + 2872) + *(v0 + 4236);
  v325 = (v317 + *(v0 + 4244));
  v157 = *(v303 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_logKey);
  v265 = *(v0 + 2968);
  v263 = *(v0 + 2960);
  v158 = *(v0 + 2952);
  v252 = v158;
  v273 = *(v0 + 2944);
  v292 = *(v0 + 2936);
  v295 = *(v0 + 2928);
  v152();
  v268 = v157;
  static Platform.current.getter();
  v159 = v156[9];
  (v152)(v155 + v159, 1, 1, v154);
  v160 = v156[13];
  *(v0 + 4288) = v160;
  v161 = (v155 + v160);
  v249 = v156[14];
  v258(v155 + v249, 1, 1, v158);
  v162 = (v155 + v156[15]);
  v250 = v156[16];
  v251 = v156[20];
  v259(v155 + v251, 1, 1, v153);
  v313 = (v155 + v156[22]);
  v253 = v156[26];
  v255 = v156[30];
  v256 = v156[29];
  (v152)(v155 + v255, 1, 1, v154);
  v163 = v156[34];
  v257 = v156[33];
  static Platform.current.getter();
  v260 = v156[35];
  v164 = v155 + v156[36];
  *v164 = xmmword_10069E8A0;
  v166 = v156[38];
  v165 = v156[39];
  *(v0 + 4292) = v165;
  *(v155 + v165) = xmmword_10069E8A0;
  v167 = v156[40];
  *(v0 + 4296) = v167;
  v168 = (v155 + v167);
  *v168 = 0;
  v168[1] = 0;
  v169 = v155 + v156[41];
  v271 = (v155 + v156[42]);
  *v155 = 0;
  *(v155 + 8) = 0;
  *(v155 + 16) = 1;
  *(v155 + 24) = 0;
  *(v155 + 32) = 1;
  *(v155 + 40) = v281;
  *(v155 + 48) = 0;
  *(v155 + 56) = v283;
  *(v155 + 64) = 0;
  sub_10020AD90(v254, v155 + v159, &unk_1007809F0, &unk_10069E8F0);
  v170 = (v155 + v156[10]);
  *v170 = v261;
  v170[1] = v262;
  v171 = (v155 + v156[11]);
  *v171 = v362;
  v171[1] = v357;
  v172 = (v155 + v156[12]);
  *v172 = v266;
  v172[1] = v267;
  *v161 = 0;
  v161[1] = 0;

  sub_10020AD90(v264, v155 + v249, &unk_100780A00, &unk_10069E8E0);
  *v162 = 0;
  v162[1] = 0;
  *(v155 + v250) = 0;
  v173 = v156[17];
  *(v0 + 4300) = v173;
  *(v155 + v173) = 0;
  *(v155 + v156[18]) = 0;
  (*(v263 + 32))(v155 + v156[19], v265, v252);
  sub_10020AD90(v275, v155 + v251, &qword_10077E958, &qword_10069FC00);
  v298(v155 + v156[21], v286, v279);
  *(v155 + v156[23]) = 0;
  *(v155 + v156[24]) = 0;
  *(v155 + v156[25]) = v277;
  *(v155 + v253) = v289;
  *(v155 + v156[27]) = v300;
  *(v155 + v156[28]) = v268;
  *(v155 + v256) = 2;
  sub_10020AD90(v269, v155 + v255, &unk_1007809F0, &unk_10069E8F0);
  v174 = (v155 + v156[32]);
  *v174 = 0;
  v174[1] = 0;
  *(v155 + v257) = 0;
  (*(v292 + 40))(v155 + v163, v273, v295);
  *(v155 + v260) = 2;
  sub_1001CEE68(*v164, *(v164 + 8));
  *v164 = xmmword_10069E8A0;
  *(v155 + v156[37]) = 4;
  *(v155 + v166) = v307;
  v175 = *(v303 + v311);
  v176 = *(*v175 + class metadata base offset for ManagedBuffer + 16);
  v177 = (*(*v175 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v175 + v177));
  sub_10020A980(v175 + v176, v0 + 2536);
  os_unfair_lock_unlock((v175 + v177));
  v178 = *(v0 + 2560);
  sub_100006D8C((v0 + 2536), v178);
  *v169 = sub_10056D600(v178);
  *(v169 + 8) = v180;
  *(v169 + 16) = v179 & 1;
  sub_10000710C((v0 + 2536));
  v181 = (v317 + *(v321 + 20));
  v182 = v181[1];
  *v271 = *v181;
  v271[1] = v182;
  v183 = *(v303 + v311);
  v184 = *(*v183 + class metadata base offset for ManagedBuffer + 16);
  v185 = (*(*v183 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v183 + v185));
  v186 = (v183 + *(v330 + 32) + v184);
  v188 = *v186;
  v187 = v186[1];

  os_unfair_lock_unlock((v183 + v185));
  *v313 = v188;
  v313[1] = v187;
  v190 = v325[21];
  if (v190)
  {
    v189 = 0xEB00000000656361;
    if (v325[20] == 0x6C7074656B72616DLL && v190 == 0xEB00000000656361)
    {
      LOBYTE(v191) = 1;
    }

    else
    {
      LOBYTE(v191) = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  else if (*(*(v0 + 2872) + *(v0 + 4236) + *(v0 + 4244) + 184) == 1)
  {
    LOBYTE(v191) = 0;
  }

  else
  {
    v191 = v325[22] & 1;
  }

  v192 = *(v0 + 2872) + *(v0 + 4236) + *(v0 + 4244);
  *(*(v0 + 2984) + *(*(v0 + 2976) + 172)) = v191 & 1;
  v193 = *(v192 + 72);
  *(v0 + 4136) = v193;
  v194 = *(v192 + 80);
  *(v0 + 4201) = v194;
  v195 = *(v192 + 81);
  *(v0 + 1266) = *(v192 + 84);
  *(v0 + 1263) = v195;
  v196 = *(v192 + 88);
  *(v0 + 4144) = v196;
  v197 = *(v192 + 96);
  *(v0 + 4202) = v197;
  v198 = *(v192 + 113);
  *(v0 + 1199) = *(v192 + 97);
  *(v0 + 1215) = v198;
  LOBYTE(v192) = *(v192 + 129);
  *(v0 + 4203) = v192;
  if (v192)
  {
    v199 = *(v0 + 3912);
  }

  else
  {
    v199 = *(v0 + 3912);
    if ((v197 & 1) == 0)
    {
      v200 = __CFADD__(v199, v196);
      v199 += v196;
      if (v200)
      {
        goto LABEL_109;
      }
    }

    if ((v194 & 1) == 0)
    {
      v200 = __CFADD__(v199, v193);
      v199 += v193;
      if (v200)
      {
LABEL_110:
        __break(1u);
      }
    }
  }

  v201 = *(v0 + 4248);
  v202 = *(v0 + 3616);
  v203 = *(v0 + 3208);
  v204 = *(v0 + 3168);
  (*(v0 + 3600))(v203, *(v0 + 3264), v204, v189);
  v205 = v202(v203, v204);
  v206 = 2;
  if (v205 != v353 && v205 != v201 && v205 != v348 && v205 != v248)
  {
    (*(v0 + 3664))(*(v0 + 3208), *(v0 + 3168));
    v206 = 0;
  }

  v207 = *(v0 + 4260);
  v208 = *(v0 + 3616);
  v209 = *(v0 + 3200);
  v210 = *(v0 + 3168);
  (*(v0 + 3600))(v209, *(v0 + 3264), v210);
  v211 = v208(v209, v210);
  if (v211 == v207)
  {
    goto LABEL_70;
  }

  if (v211 != enum case for AppInstallRequestType.install(_:))
  {
    if (v211 != v353)
    {
      if (v211 == *(v0 + 4248) || v211 == enum case for AppInstallRequestType.promotion(_:))
      {
        goto LABEL_72;
      }

      if (v211 != v247 && v211 != enum case for AppInstallRequestType.deviceVPP(_:) && v211 != v348 && v211 != enum case for AppInstallRequestType.userVPP(_:) && v211 != v248 && v211 != enum case for AppInstallRequestType.upp(_:) && v211 != enum case for AppInstallRequestType.restoreUpdate(_:))
      {
        return _assertionFailure(_:_:file:line:flags:)();
      }
    }

LABEL_70:
    v206 |= 1u;
  }

LABEL_72:
  v212 = *(v0 + 3680);
  v213 = *(v0 + 3072);
  v214 = *(v0 + 2920);
  (*(v0 + 3736))(v214, *(v0 + 3096), v213);
  v212(v214, 0, 1, v213);
  if (v199 < 0)
  {
    __break(1u);
LABEL_109:
    __break(1u);
    goto LABEL_110;
  }

  v344 = *(v0 + 4260);
  v215 = *(v0 + 3632);
  v216 = *(v0 + 3616);
  v217 = *(v0 + 3600);
  v218 = *(v0 + 3584);
  v219 = *(v0 + 3576);
  v220 = *(v0 + 3264);
  v221 = *(v0 + 3192);
  v222 = *(v0 + 3168);
  v223 = *(v0 + 2920);
  v224 = *(v0 + 2912);
  v225 = v224[9];
  v226 = (v223 + v224[5]);
  *v226 = v362;
  v226[1] = v357;
  *(v223 + v224[6]) = v199;
  *(v223 + v224[7]) = 2;
  *(v223 + v225) = 3;
  *(v223 + v224[10]) = v206;
  *(v223 + v224[8]) = v215;
  v227 = *(v219 + v218);
  v228 = *(*v227 + class metadata base offset for ManagedBuffer + 16);
  v229 = (*(*v227 + 48) + 3) & 0x1FFFFFFFCLL;
  v230 = v215;
  os_unfair_lock_lock((v227 + v229));
  sub_10020A980(v227 + v228, v0 + 2496);
  os_unfair_lock_unlock((v227 + v229));
  *(v0 + 4152) = sub_1001F0C48(&qword_10077E970, &qword_10069E920);
  v231 = swift_dynamicCast();
  *(v0 + 4241) = v231;
  v232 = *(v0 + 2680);
  v233 = *(v0 + 2688);
  *(v0 + 4160) = v233;
  v217(v221, v220, v222);
  v234 = v216(v221, v222);
  if (v234 == v344)
  {
    goto LABEL_74;
  }

  if (v234 == enum case for AppInstallRequestType.install(_:))
  {
    v235 = 1;
    goto LABEL_77;
  }

  if (v234 == v353)
  {
LABEL_74:
    v235 = 0;
  }

  else
  {
    v235 = 1;
    if (v234 != *(v0 + 4248) && v234 != enum case for AppInstallRequestType.promotion(_:))
    {
      v235 = 0;
      if (v234 != v247 && v234 != enum case for AppInstallRequestType.deviceVPP(_:) && v234 != v348 && v234 != enum case for AppInstallRequestType.userVPP(_:) && v234 != v248 && v234 != enum case for AppInstallRequestType.upp(_:) && v234 != enum case for AppInstallRequestType.restoreUpdate(_:))
      {
        return _assertionFailure(_:_:file:line:flags:)();
      }
    }
  }

LABEL_77:
  v236 = v231 == 0;
  if (v231)
  {
    v237 = v233;
  }

  else
  {
    v237 = 0;
  }

  if (v236)
  {
    v238 = 0;
  }

  else
  {
    v238 = v232;
  }

  v239 = *(v0 + 3576);
  *(v0 + 4304) = *(*(v0 + 2976) + 124);
  sub_10020A980(v239 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_bag, v0 + 2616);
  v240 = *(v0 + 2640);
  v241 = *(v0 + 2648);
  v242 = sub_100006D8C((v0 + 2616), v240);
  static CellularIdentity.current()();
  v243 = swift_task_alloc();
  *(v0 + 4168) = v243;
  *v243 = v0;
  v243[1] = sub_100200FF0;
  v244 = *(v0 + 2920);
  v245 = *(v0 + 2904);

  return sub_1005C9BD8(v244, v238, v237, v245, v235, v242, v240, v241);
}

uint64_t sub_100200FF0(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 2904);
  v4 = *(*v1 + 2896);
  v5 = *(*v1 + 2888);
  *(v2 + 4176) = a1;

  (*(v4 + 8))(v3, v5);
  sub_10000710C((v2 + 2616));

  return _swift_task_switch(sub_10020118C, 0, 0);
}

uint64_t sub_10020118C()
{
  v1 = *(v0 + 2984) + *(v0 + 4304);
  v2 = *(v0 + 4176) & 0x1010101;
  *v1 = v2;
  if (HIBYTE(v2) == 1 && (*(v1 + 2) & 1) == 0)
  {
    v3 = *(v0 + 3264);
    v4 = *(v0 + 3168);
    v100 = *(v0 + 3096);
    v5 = *(v0 + 3080);
    v98 = *(v0 + 3664);
    v99 = *(v0 + 3072);
    v102 = *(v0 + 2984);
    v6 = *(v0 + 2920);

    v7 = type metadata accessor for MarketplaceKitError();
    sub_10020AF28(&qword_10077F950, &type metadata accessor for MarketplaceKitError, &protocol conformance descriptor for MarketplaceKitError);
    v8 = swift_allocError();
    v9 = *(v7 - 8);
    v97 = enum case for MarketplaceKitError.cancelled(_:);
    (*(v9 + 104))(v10);
    swift_willThrow();
    sub_1000032A8(v0 + 752, &qword_10077E960, &unk_10069E910);
    sub_1000032A8(v0 + 752, &qword_10077E960, &unk_10069E910);
    sub_10020AE60(v6, type metadata accessor for EvaluatorDownload);
    v98(v3, v4);
    (*(v5 + 8))(v100, v99);
    sub_10020AE60(v102, type metadata accessor for AppInstall);
    v11 = *(v0 + 3368);
    v12 = *(v0 + 2872);
    static Logger.install.getter();
    sub_10020ADF8(v12, v11, type metadata accessor for ADPPrepareInstallTask);
    swift_errorRetain();
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();

    v15 = os_log_type_enabled(v13, v14);
    v16 = *(v0 + 3368);
    if (v15)
    {
      v17 = *(v0 + 3352);
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v18 = 138412546;
      v20 = *(v16 + *(v17 + 28));
      sub_10020AE60(v16, type metadata accessor for ADPPrepareInstallTask);
      *(v18 + 4) = v20;
      *v19 = v20;
      *(v18 + 12) = 2114;
      swift_errorRetain();
      v21 = _swift_stdlib_bridgeErrorToNSError();
      *(v18 + 14) = v21;
      v19[1] = v21;
      _os_log_impl(&_mh_execute_header, v13, v14, "[%@] Preparing install failed, cancelling coordinator: %{public}@", v18, 0x16u);
      sub_1001F0C48(&qword_10077F920, &qword_10069E6A0);
      swift_arrayDestroy();
    }

    else
    {

      sub_10020AE60(v16, type metadata accessor for ADPPrepareInstallTask);
    }

    (*(*(v0 + 3456) + 8))(*(v0 + 3472), *(v0 + 3448));
    *(v0 + 2840) = v8;
    swift_errorRetain();
    sub_1001F0C48(&unk_10077F940, &qword_10069D7E0);
    v74 = swift_dynamicCast();
    v75 = *(v9 + 56);
    v76 = *(v0 + 2880);
    if (v74)
    {
      v75(*(v0 + 2880), 0, 1, v7);
      v77 = (*(v9 + 88))(v76, v7);
      (*(v9 + 8))(v76, v7);
      if (v77 == v97)
      {
        v78 = 3;
LABEL_22:
        v79 = *(v0 + 3704);
        v80 = *(v0 + 3640);
        v81 = *(v0 + 3344);
        v82 = *(v0 + 3160);
        sub_1005F6C58(v78, *(*(v0 + 3576) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_allowAccountPrompt), 0);
        swift_willThrow();

        sub_10020AE60(v82, type metadata accessor for PlaceholderPromiseBuilder);
        sub_10020AE60(v81, type metadata accessor for CreateCoordinatorTask);

        v83 = *(v0 + 8);

        return v83();
      }
    }

    else
    {
      v75(*(v0 + 2880), 1, 1, v7);
      sub_1000032A8(v76, &unk_100784390, &qword_1006AA370);
    }

    v78 = 1;
    goto LABEL_22;
  }

  v22 = *(*(v0 + 3576) + *(v0 + 3584));
  v23 = *(*v22 + class metadata base offset for ManagedBuffer + 16);
  v24 = (*(*v22 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v22 + v24));
  sub_10020A980(v22 + v23, v0 + 2576);
  os_unfair_lock_unlock((v22 + v24));
  if (swift_dynamicCast())
  {
    v25 = (*(v0 + 2984) + *(v0 + 4288));
    v26 = *(v0 + 2704);
    *v25 = *(v0 + 2696);
    v25[1] = v26;
  }

  v27 = (v0 + 1231);
  v28 = (v0 + 1270);
  v29 = *(v0 + 3352);
  v30 = *(v0 + 2872);
  v31 = (*(v0 + 2984) + *(v0 + 4296));
  v32 = v30 + *(v0 + 4252);
  v33 = *(v32 + 40);
  *v31 = *(v32 + 32);
  v31[1] = v33;
  v34 = v30 + *(v29 + 32);
  if (*(v34 + 32))
  {
  }

  else
  {
    v35 = *(v0 + 2984) + *(v0 + 4292);
    v37 = *(v34 + 16);
    v36 = *(v34 + 24);
    v38 = *(v34 + 8);
    *(v0 + 4204) = *v34;
    *(v0 + 4212) = v38;
    *(v0 + 4220) = v37;
    *(v0 + 4228) = v36;

    v39 = sub_10020A9E4((v0 + 4204), 0x20uLL);
    v41 = v40;
    sub_1001CEE68(*v35, *(v35 + 8));
    *v35 = v39;
    *(v35 + 8) = v41;
  }

  v42 = *(v0 + 4203);
  v43 = *(v0 + 4202);
  *(v0 + 4200) = *(v0 + 4201);
  *v28 = *(v0 + 1263);
  *(v0 + 1273) = *(v0 + 1266);
  *(v0 + 4240) = v43;
  v44 = *(v0 + 1215);
  *v27 = *(v0 + 1199);
  *(v0 + 1247) = v44;
  if (v42)
  {

    v45 = *(v0 + 3376);
    v46 = *(v0 + 2872);
    static Logger.install.getter();
    sub_10020ADF8(v46, v45, type metadata accessor for ADPPrepareInstallTask);
    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.default.getter();
    v49 = os_log_type_enabled(v47, v48);
    v50 = *(v0 + 3704);
    v51 = *(v0 + 3640);
    v52 = *(v0 + 3376);
    if (v49)
    {
      v53 = *(v0 + 3352);
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      *v54 = 138412290;
      v56 = *(v52 + *(v53 + 28));
      sub_10020AE60(v52, type metadata accessor for ADPPrepareInstallTask);
      *(v54 + 4) = v56;
      *v55 = v56;
      _os_log_impl(&_mh_execute_header, v47, v48, "[%@] Successfully prepared the install", v54, 0xCu);
      sub_1000032A8(v55, &qword_10077F920, &qword_10069E6A0);

      sub_1000032A8(v0 + 752, &qword_10077E960, &unk_10069E910);
      sub_1000032A8(v0 + 752, &qword_10077E960, &unk_10069E910);
    }

    else
    {

      sub_1000032A8(v0 + 752, &qword_10077E960, &unk_10069E910);
      sub_1000032A8(v0 + 752, &qword_10077E960, &unk_10069E910);
      sub_10020AE60(v52, type metadata accessor for ADPPrepareInstallTask);
    }

    v96 = *(v0 + 3664);
    v95 = *(v0 + 3344);
    v84 = *(v0 + 3264);
    v85 = *(v0 + 3168);
    v86 = *(v0 + 3160);
    v87 = *(v0 + 3096);
    v88 = *(v0 + 3080);
    v89 = *(v0 + 3072);
    v90 = *(v0 + 2984);
    v91 = *(v0 + 2920);
    v92 = *(v0 + 2856);
    (*(*(v0 + 3456) + 8))();
    sub_10020AE60(v91, type metadata accessor for EvaluatorDownload);
    v96(v84, v85);
    (*(v88 + 8))(v87, v89);
    sub_10020AE60(v86, type metadata accessor for PlaceholderPromiseBuilder);
    sub_10020AE60(v95, type metadata accessor for CreateCoordinatorTask);
    sub_10020ADF8(v90, v92, type metadata accessor for AppInstall);
    sub_10020AE60(v90, type metadata accessor for AppInstall);

    v93 = *(v0 + 8);
    v94 = *(v0 + 4112);

    return v93(v94);
  }

  else
  {
    v57 = *(v0 + 4144);
    v58 = *(v0 + 4136);
    v59 = *(v0 + 4128);
    v60 = *(v0 + 3632);
    v61 = *(v0 + 3576);
    v101 = *(v0 + 4120);
    v103 = *(v0 + 1824);
    *(*(v0 + 2984) + *(v0 + 4300)) = 1;
    *(v0 + 2792) = _swiftEmptyDictionarySingleton;
    v62 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_1005B7938(v57, v43 & 1, v62, v63);
    v64 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_1005B7938(v58, *(v0 + 4200), v64, v65);
    v66 = *(v0 + 4200);
    LODWORD(v104) = *v28;
    *(&v104 + 3) = *(v0 + 1273);
    v67 = *(v0 + 4240);
    v105 = *v27;
    v106 = *(v0 + 1247);

    v68 = [v60 description];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v69._countAndFlagsBits = 0x545241422FLL;
    v69._object = 0xE500000000000000;
    String.append(_:)(v69);
    v70 = objc_allocWithZone(type metadata accessor for LogKey());
    v71 = LogKey.init(string:)();
    *(v0 + 1504) = v101;
    *(v0 + 1512) = v59;
    *(v0 + 1520) = v58;
    *(v0 + 1528) = v66;
    *(v0 + 1529) = v104;
    *(v0 + 1532) = *(&v104 + 3);
    *(v0 + 1536) = v57;
    *(v0 + 1544) = v67;
    *(v0 + 1545) = v105;
    *(v0 + 1561) = v106;
    *(v0 + 1584) = v103;
    *(v0 + 1592) = v61;
    *(v0 + 1600) = v71;
    v72 = swift_task_alloc();
    *(v0 + 4184) = v72;
    *v72 = v0;
    v72[1] = sub_100202430;

    return sub_1001F1D7C();
  }
}

uint64_t sub_100202430()
{
  *(*v1 + 4192) = v0;

  if (v0)
  {

    v2 = sub_100204148;
  }

  else
  {
    v2 = sub_1002025B4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1002025B4()
{
  v67 = *(v0 + 4260);
  v66 = *(v0 + 3616);
  v1 = *(v0 + 3600);
  v2 = *(v0 + 3264);
  v3 = *(v0 + 3184);
  v4 = *(v0 + 3168);
  sub_10020911C(*(v0 + 2792));
  v5 = String._bridgeToObjectiveC()();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v7 = [objc_opt_self() descriptorWithAppBundleIdentifier:v5 appStoreMetadata:isa client:0];

  v1(v3, v2, v4);
  v8 = v66(v3, v4);
  if (v8 == v67)
  {
    goto LABEL_2;
  }

  if (v8 == enum case for AppInstallRequestType.install(_:))
  {
    v9 = 1;
    goto LABEL_5;
  }

  if (v8 == *(v0 + 4276))
  {
LABEL_2:
    v9 = 0;
  }

  else
  {
    v9 = 1;
    if (v8 != *(v0 + 4248) && v8 != enum case for AppInstallRequestType.promotion(_:))
    {
      v9 = 0;
      if (v8 != *(v0 + 4272) && v8 != enum case for AppInstallRequestType.deviceVPP(_:) && v8 != *(v0 + 4280) && v8 != enum case for AppInstallRequestType.userVPP(_:) && v8 != *(v0 + 4284) && v8 != enum case for AppInstallRequestType.upp(_:) && v8 != enum case for AppInstallRequestType.restoreUpdate(_:))
      {
        return _assertionFailure(_:_:file:line:flags:)();
      }
    }
  }

LABEL_5:
  v10 = *(v0 + 4304);
  v11 = *(v0 + 2984);

  [v7 setUserInitiated:v9];

  v12 = *(v11 + v10);
  if (v12 != 2 && (v12 & 1) != 0)
  {
    [v7 setCellularPolicy:3];
  }

  v13 = [objc_allocWithZone(BAAppStoreClient) init];
  *(v0 + 2800) = 0;
  v14 = [v13 prepareForAppInstallWithDescriptor:v7 error:v0 + 2800];
  v15 = *(v0 + 2800);
  v16 = *(v0 + 2872);
  if (!v14)
  {
    v17 = (v0 + 3464);
    v28 = *(v0 + 3360);
    v29 = v15;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    static Logger.install.getter();
    sub_10020ADF8(v16, v28, type metadata accessor for ADPPrepareInstallTask);
    swift_errorRetain();
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();

    v32 = os_log_type_enabled(v30, v31);
    v33 = *(v0 + 3360);
    if (v32)
    {
      v34 = *(v0 + 3352);
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      *v35 = 138412546;
      v37 = *(v33 + *(v34 + 28));
      sub_10020AE60(v33, type metadata accessor for ADPPrepareInstallTask);
      *(v35 + 4) = v37;
      *v36 = v37;
      v17 = (v0 + 3464);
      *(v35 + 12) = 2114;
      swift_errorRetain();
      v38 = _swift_stdlib_bridgeErrorToNSError();
      *(v35 + 14) = v38;
      v36[1] = v38;
      _os_log_impl(&_mh_execute_header, v30, v31, "[%@] Failed to send prepare descriptor to Background Assets: %{public}@", v35, 0x16u);
      sub_1001F0C48(&qword_10077F920, &qword_10069E6A0);
      swift_arrayDestroy();

      sub_1001F5A3C(v0 + 1504);

      goto LABEL_27;
    }

    sub_1001F5A3C(v0 + 1504);

    v40 = v33;
LABEL_26:
    sub_10020AE60(v40, type metadata accessor for ADPPrepareInstallTask);
    goto LABEL_27;
  }

  v17 = (v0 + 3488);
  v18 = *(v0 + 3384);
  v19 = v15;
  static Logger.install.getter();
  sub_10020ADF8(v16, v18, type metadata accessor for ADPPrepareInstallTask);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();
  v22 = os_log_type_enabled(v20, v21);
  v23 = *(v0 + 3384);
  if (!v22)
  {

    sub_1001F5A3C(v0 + 1504);
    v40 = v23;
    goto LABEL_26;
  }

  v24 = *(v0 + 3352);
  v25 = swift_slowAlloc();
  v26 = swift_slowAlloc();
  *v25 = 138412290;
  v27 = *(v23 + *(v24 + 28));
  sub_10020AE60(v23, type metadata accessor for ADPPrepareInstallTask);
  *(v25 + 4) = v27;
  *v26 = v27;
  _os_log_impl(&_mh_execute_header, v20, v21, "[%@] Sent prepare descriptor to Background Assets", v25, 0xCu);
  sub_1000032A8(v26, &qword_10077F920, &qword_10069E6A0);

  sub_1001F5A3C(v0 + 1504);
LABEL_27:
  (*(*(v0 + 3456) + 8))(*v17, *(v0 + 3448));
  v41 = *(v0 + 3376);
  v42 = *(v0 + 2872);
  static Logger.install.getter();
  sub_10020ADF8(v42, v41, type metadata accessor for ADPPrepareInstallTask);
  v43 = Logger.logObject.getter();
  v44 = static os_log_type_t.default.getter();
  v45 = os_log_type_enabled(v43, v44);
  v46 = *(v0 + 3704);
  v47 = *(v0 + 3640);
  v48 = *(v0 + 3376);
  if (v45)
  {
    v49 = *(v0 + 3352);
    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    *v50 = 138412290;
    v52 = *(v48 + *(v49 + 28));
    sub_10020AE60(v48, type metadata accessor for ADPPrepareInstallTask);
    *(v50 + 4) = v52;
    *v51 = v52;
    _os_log_impl(&_mh_execute_header, v43, v44, "[%@] Successfully prepared the install", v50, 0xCu);
    sub_1000032A8(v51, &qword_10077F920, &qword_10069E6A0);

    sub_1000032A8(v0 + 752, &qword_10077E960, &unk_10069E910);
    sub_1000032A8(v0 + 752, &qword_10077E960, &unk_10069E910);
  }

  else
  {

    sub_1000032A8(v0 + 752, &qword_10077E960, &unk_10069E910);
    sub_1000032A8(v0 + 752, &qword_10077E960, &unk_10069E910);
    sub_10020AE60(v48, type metadata accessor for ADPPrepareInstallTask);
  }

  v65 = *(v0 + 3664);
  v64 = *(v0 + 3344);
  v53 = *(v0 + 3264);
  v54 = *(v0 + 3168);
  v55 = *(v0 + 3160);
  v56 = *(v0 + 3096);
  v57 = *(v0 + 3080);
  v58 = *(v0 + 3072);
  v59 = *(v0 + 2984);
  v60 = *(v0 + 2920);
  v61 = *(v0 + 2856);
  (*(*(v0 + 3456) + 8))();
  sub_10020AE60(v60, type metadata accessor for EvaluatorDownload);
  v65(v53, v54);
  (*(v57 + 8))(v56, v58);
  sub_10020AE60(v55, type metadata accessor for PlaceholderPromiseBuilder);
  sub_10020AE60(v64, type metadata accessor for CreateCoordinatorTask);
  sub_10020ADF8(v59, v61, type metadata accessor for AppInstall);
  sub_10020AE60(v59, type metadata accessor for AppInstall);

  v62 = *(v0 + 8);
  v63 = *(v0 + 4112);

  return v62(v63);
}

uint64_t sub_100203270()
{
  (*(v0[385] + 8))(v0[387], v0[384]);
  sub_10000710C(v0 + 306);
  v1 = v0[476];
  v2 = v0[421];
  v3 = v0[359];
  static Logger.install.getter();
  sub_10020ADF8(v3, v2, type metadata accessor for ADPPrepareInstallTask);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[421];
  if (v6)
  {
    v8 = v0[419];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412546;
    v11 = *(v7 + *(v8 + 28));
    sub_10020AE60(v7, type metadata accessor for ADPPrepareInstallTask);
    *(v9 + 4) = v11;
    *v10 = v11;
    *(v9 + 12) = 2114;
    swift_errorRetain();
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v12;
    v10[1] = v12;
    _os_log_impl(&_mh_execute_header, v4, v5, "[%@] Preparing install failed, cancelling coordinator: %{public}@", v9, 0x16u);
    sub_1001F0C48(&qword_10077F920, &qword_10069E6A0);
    swift_arrayDestroy();
  }

  else
  {

    sub_10020AE60(v7, type metadata accessor for ADPPrepareInstallTask);
  }

  (*(v0[432] + 8))(v0[434], v0[431]);
  v0[355] = v1;
  swift_errorRetain();
  sub_1001F0C48(&unk_10077F940, &qword_10069D7E0);
  v13 = type metadata accessor for MarketplaceKitError();
  v14 = swift_dynamicCast();
  v15 = *(*(v13 - 8) + 56);
  v16 = v0[360];
  if (v14)
  {
    v17 = *(v13 - 8);
    v15(v0[360], 0, 1, v13);
    v18 = (*(v17 + 88))(v16, v13);
    v19 = enum case for MarketplaceKitError.cancelled(_:);
    (*(v17 + 8))(v16, v13);
    if (v18 == v19)
    {
      v20 = 3;
      goto LABEL_9;
    }
  }

  else
  {
    v15(v0[360], 1, 1, v13);
    sub_1000032A8(v16, &unk_100784390, &qword_1006AA370);
  }

  v20 = 1;
LABEL_9:
  v21 = v0[463];
  v22 = v0[455];
  v23 = v0[418];
  v24 = v0[395];
  sub_1005F6C58(v20, *(v0[447] + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_allowAccountPrompt), 0);
  swift_willThrow();

  sub_10020AE60(v24, type metadata accessor for PlaceholderPromiseBuilder);
  sub_10020AE60(v23, type metadata accessor for CreateCoordinatorTask);

  v25 = v0[1];

  return v25();
}

uint64_t sub_1002039A8()
{
  v1 = v0[387];
  v2 = v0[386];
  v3 = v0[385];
  v4 = v0[384];
  sub_1000032A8((v0 + 201), &qword_10077E978, &qword_10069E928);
  sub_1000032A8((v0 + 94), &qword_10077E960, &unk_10069E910);
  sub_1000032A8((v0 + 94), &qword_10077E960, &unk_10069E910);
  v5 = *(v3 + 8);
  v5(v2, v4);
  v5(v1, v4);
  sub_10000710C(v0 + 288);
  v6 = v0[501];
  v7 = v0[421];
  v8 = v0[359];
  static Logger.install.getter();
  sub_10020ADF8(v8, v7, type metadata accessor for ADPPrepareInstallTask);
  swift_errorRetain();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();

  v11 = os_log_type_enabled(v9, v10);
  v12 = v0[421];
  if (v11)
  {
    v13 = v0[419];
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v14 = 138412546;
    v16 = *(v12 + *(v13 + 28));
    sub_10020AE60(v12, type metadata accessor for ADPPrepareInstallTask);
    *(v14 + 4) = v16;
    *v15 = v16;
    *(v14 + 12) = 2114;
    swift_errorRetain();
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 14) = v17;
    v15[1] = v17;
    _os_log_impl(&_mh_execute_header, v9, v10, "[%@] Preparing install failed, cancelling coordinator: %{public}@", v14, 0x16u);
    sub_1001F0C48(&qword_10077F920, &qword_10069E6A0);
    swift_arrayDestroy();
  }

  else
  {

    sub_10020AE60(v12, type metadata accessor for ADPPrepareInstallTask);
  }

  (*(v0[432] + 8))(v0[434], v0[431]);
  v0[355] = v6;
  swift_errorRetain();
  sub_1001F0C48(&unk_10077F940, &qword_10069D7E0);
  v18 = type metadata accessor for MarketplaceKitError();
  v19 = swift_dynamicCast();
  v20 = *(*(v18 - 8) + 56);
  v21 = v0[360];
  if (v19)
  {
    v22 = *(v18 - 8);
    v20(v0[360], 0, 1, v18);
    v23 = (*(v22 + 88))(v21, v18);
    v24 = enum case for MarketplaceKitError.cancelled(_:);
    (*(v22 + 8))(v21, v18);
    if (v23 == v24)
    {
      v25 = 3;
      goto LABEL_9;
    }
  }

  else
  {
    v20(v0[360], 1, 1, v18);
    sub_1000032A8(v21, &unk_100784390, &qword_1006AA370);
  }

  v25 = 1;
LABEL_9:
  v26 = v0[463];
  v27 = v0[455];
  v28 = v0[418];
  v29 = v0[395];
  sub_1005F6C58(v25, *(v0[447] + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_allowAccountPrompt), 0);
  swift_willThrow();

  sub_10020AE60(v29, type metadata accessor for PlaceholderPromiseBuilder);
  sub_10020AE60(v28, type metadata accessor for CreateCoordinatorTask);

  v30 = v0[1];

  return v30();
}

uint64_t sub_100204148()
{
  v1 = v0[458];
  v2 = v0[408];
  v3 = v0[396];
  v4 = v0[385];
  v5 = v0[384];
  v33 = v0[387];
  v34 = v0[373];
  v6 = v0[365];
  sub_1001F5A3C((v0 + 188));
  sub_1000032A8((v0 + 94), &qword_10077E960, &unk_10069E910);
  sub_1000032A8((v0 + 94), &qword_10077E960, &unk_10069E910);
  sub_10020AE60(v6, type metadata accessor for EvaluatorDownload);
  v1(v2, v3);
  (*(v4 + 8))(v33, v5);
  sub_10020AE60(v34, type metadata accessor for AppInstall);
  v7 = v0[524];
  v8 = v0[421];
  v9 = v0[359];
  static Logger.install.getter();
  sub_10020ADF8(v9, v8, type metadata accessor for ADPPrepareInstallTask);
  swift_errorRetain();
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();

  v12 = os_log_type_enabled(v10, v11);
  v13 = v0[421];
  if (v12)
  {
    v14 = v0[419];
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v15 = 138412546;
    v17 = *(v13 + *(v14 + 28));
    sub_10020AE60(v13, type metadata accessor for ADPPrepareInstallTask);
    *(v15 + 4) = v17;
    *v16 = v17;
    *(v15 + 12) = 2114;
    swift_errorRetain();
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v15 + 14) = v18;
    v16[1] = v18;
    _os_log_impl(&_mh_execute_header, v10, v11, "[%@] Preparing install failed, cancelling coordinator: %{public}@", v15, 0x16u);
    sub_1001F0C48(&qword_10077F920, &qword_10069E6A0);
    swift_arrayDestroy();
  }

  else
  {

    sub_10020AE60(v13, type metadata accessor for ADPPrepareInstallTask);
  }

  (*(v0[432] + 8))(v0[434], v0[431]);
  v0[355] = v7;
  swift_errorRetain();
  sub_1001F0C48(&unk_10077F940, &qword_10069D7E0);
  v19 = type metadata accessor for MarketplaceKitError();
  v20 = swift_dynamicCast();
  v21 = *(*(v19 - 8) + 56);
  v22 = v0[360];
  if (v20)
  {
    v23 = *(v19 - 8);
    v21(v0[360], 0, 1, v19);
    v24 = (*(v23 + 88))(v22, v19);
    v25 = enum case for MarketplaceKitError.cancelled(_:);
    (*(v23 + 8))(v22, v19);
    if (v24 == v25)
    {
      v26 = 3;
      goto LABEL_9;
    }
  }

  else
  {
    v21(v0[360], 1, 1, v19);
    sub_1000032A8(v22, &unk_100784390, &qword_1006AA370);
  }

  v26 = 1;
LABEL_9:
  v27 = v0[463];
  v28 = v0[455];
  v29 = v0[418];
  v30 = v0[395];
  sub_1005F6C58(v26, *(v0[447] + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_allowAccountPrompt), 0);
  swift_willThrow();

  sub_10020AE60(v30, type metadata accessor for PlaceholderPromiseBuilder);
  sub_10020AE60(v29, type metadata accessor for CreateCoordinatorTask);

  v31 = v0[1];

  return v31();
}

uint64_t sub_100204918()
{
  v1 = v0;
  v246 = type metadata accessor for ADPPrepareInstallTask(0);
  v2 = __chkstk_darwin(v246);
  v243 = &v222 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __chkstk_darwin(v2);
  v245 = (&v222 - v5);
  v6 = __chkstk_darwin(v4);
  v240 = (&v222 - v7);
  v8 = __chkstk_darwin(v6);
  v231 = &v222 - v9;
  v10 = __chkstk_darwin(v8);
  v229 = &v222 - v11;
  v12 = __chkstk_darwin(v10);
  v235 = &v222 - v13;
  v14 = __chkstk_darwin(v12);
  v226 = &v222 - v15;
  v16 = __chkstk_darwin(v14);
  v225 = &v222 - v17;
  v18 = __chkstk_darwin(v16);
  v233 = &v222 - v19;
  v20 = __chkstk_darwin(v18);
  v228 = &v222 - v21;
  v22 = __chkstk_darwin(v20);
  v241 = (&v222 - v23);
  __chkstk_darwin(v22);
  v237 = (&v222 - v24);
  v25 = type metadata accessor for Logger();
  v26 = *(v25 - 8);
  v247 = v25;
  v248 = v26;
  v27 = __chkstk_darwin(v25);
  v244 = &v222 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __chkstk_darwin(v27);
  v31 = &v222 - v30;
  v32 = __chkstk_darwin(v29);
  v34 = &v222 - v33;
  v35 = __chkstk_darwin(v32);
  v230 = &v222 - v36;
  v37 = __chkstk_darwin(v35);
  v234 = &v222 - v38;
  v39 = __chkstk_darwin(v37);
  v227 = &v222 - v40;
  v41 = __chkstk_darwin(v39);
  v224 = &v222 - v42;
  v43 = __chkstk_darwin(v41);
  v232 = &v222 - v44;
  v45 = __chkstk_darwin(v43);
  v47 = &v222 - v46;
  __chkstk_darwin(v45);
  v236 = (&v222 - v48);
  v49 = *v1;
  v238 = OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_lockedStorage;
  v239 = v49;
  v50 = *(&v49->isa + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_lockedStorage);
  v51 = *(*v50 + class metadata base offset for ManagedBuffer + 16);
  v52 = (*(*v50 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v50 + v52));
  v53 = (v50 + *(type metadata accessor for ADPInstallConfiguration.Storage(0) + 32) + v51);
  v55 = *v53;
  v54 = v53[1];

  os_unfair_lock_unlock((v50 + v52));
  if (!v54)
  {
    static Logger.install.getter();
    v72 = v245;
    sub_10020ADF8(v1, v245, type metadata accessor for ADPPrepareInstallTask);
    v73 = Logger.logObject.getter();
    v74 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v73, v74))
    {
      v75 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      *v75 = 138412290;
      v77 = *(v72 + *(v246 + 28));
      sub_10020AE60(v72, type metadata accessor for ADPPrepareInstallTask);
      *(v75 + 4) = v77;
      *v76 = v77;
      _os_log_impl(&_mh_execute_header, v73, v74, "[%@] Missing required install verification token", v75, 0xCu);
      sub_1000032A8(v76, &qword_10077F920, &qword_10069E6A0);
    }

    else
    {

      sub_10020AE60(v72, type metadata accessor for ADPPrepareInstallTask);
    }

    (*(v248 + 8))(v31, v247);
    goto LABEL_31;
  }

  v245 = v1;
  v56 = HIBYTE(v54) & 0xF;
  if ((v54 & 0x2000000000000000) == 0)
  {
    v56 = v55 & 0xFFFFFFFFFFFFLL;
  }

  if (!v56)
  {

    static Logger.install.getter();
    v86 = v240;
    sub_10020ADF8(v245, v240, type metadata accessor for ADPPrepareInstallTask);
    v87 = Logger.logObject.getter();
    v88 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v87, v88))
    {
      v89 = swift_slowAlloc();
      v90 = swift_slowAlloc();
      *v89 = 138412290;
      v91 = *(v86 + *(v246 + 28));
      sub_10020AE60(v86, type metadata accessor for ADPPrepareInstallTask);
      *(v89 + 4) = v91;
      *v90 = v91;
      _os_log_impl(&_mh_execute_header, v87, v88, "[%@] Install verification token is empty", v89, 0xCu);
      sub_1000032A8(v90, &qword_10077F920, &qword_10069E6A0);
    }

    else
    {

      sub_10020AE60(v86, type metadata accessor for ADPPrepareInstallTask);
    }

    (*(v248 + 8))(v34, v247);
LABEL_31:
    type metadata accessor for InternalError(0);
    sub_10020AF28(&qword_10077F900, type metadata accessor for InternalError, byte_1006B8E64);
    swift_allocError();
    *v129 = 0xD00000000000002BLL;
    v129[1] = 0x80000001006C4550;
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }

  v57 = v55;
  has_internal_content = os_variant_has_internal_content();
  v59 = v245;
  v60 = v241;
  if (has_internal_content)
  {
    LOBYTE(v250) = 0;
    v61 = String._bridgeToObjectiveC()();
    v62 = String._bridgeToObjectiveC()();
    AppBooleanValue = CFPreferencesGetAppBooleanValue(v61, v62, &v250);

    if (v250)
    {
      if (AppBooleanValue)
      {

        v64 = v236;
        static Logger.install.getter();
        v65 = v59;
        v66 = v237;
        sub_10020ADF8(v65, v237, type metadata accessor for ADPPrepareInstallTask);
        v67 = Logger.logObject.getter();
        v68 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v67, v68))
        {
          v69 = swift_slowAlloc();
          v70 = swift_slowAlloc();
          *v69 = 138412290;
          v71 = *(v66 + *(v246 + 28));
          sub_10020AE60(v66, type metadata accessor for ADPPrepareInstallTask);
          *(v69 + 4) = v71;
          *v70 = v71;
          _os_log_impl(&_mh_execute_header, v67, v68, "[%@] Skipping install verification token validation due to internal default", v69, 0xCu);
          sub_1000032A8(v70, &qword_10077F920, &qword_10069E6A0);
        }

        else
        {

          sub_10020AE60(v66, type metadata accessor for ADPPrepareInstallTask);
        }

        return (*(v248 + 8))(v64, v247);
      }
    }
  }

  static Logger.install.getter();
  sub_10020ADF8(v59, v60, type metadata accessor for ADPPrepareInstallTask);
  v78 = Logger.logObject.getter();
  v79 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v78, v79))
  {
    v80 = swift_slowAlloc();
    v81 = swift_slowAlloc();
    *v80 = 138412290;
    v82 = *(v60 + *(v246 + 28));
    v83 = v60;
    v84 = v57;
    v85 = v82;
    sub_10020AE60(v83, type metadata accessor for ADPPrepareInstallTask);
    *(v80 + 4) = v85;
    *v81 = v85;
    v57 = v84;
    _os_log_impl(&_mh_execute_header, v78, v79, "[%@] Beginning install verification token validation", v80, 0xCu);
    sub_1000032A8(v81, &qword_10077F920, &qword_10069E6A0);
    v59 = v245;
  }

  else
  {

    sub_10020AE60(v60, type metadata accessor for ADPPrepareInstallTask);
  }

  v93 = v242;
  v92 = v243;
  v94 = v248 + 8;
  v95 = *(v248 + 8);
  v95(v47, v247);
  v242 = 0x80000001006C4580;

  sub_1005A9F58(v57, v54, v253);
  if (v93)
  {

    v223 = 0xD000000000000021;
    v96 = v244;
LABEL_21:
    static Logger.install.getter();
    sub_10020ADF8(v59, v92, type metadata accessor for ADPPrepareInstallTask);
    v97 = v242;

    swift_errorRetain();
    v98 = v92;
    v99 = Logger.logObject.getter();
    v100 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v99, v100))
    {
      v101 = swift_slowAlloc();
      v248 = v94;
      v102 = v101;
      v103 = swift_slowAlloc();
      v104 = swift_slowAlloc();
      v241 = v95;
      v245 = v104;
      v250 = v104;
      *v102 = 138412802;
      v105 = v97;
      v106 = *(v98 + *(v246 + 28));
      sub_10020AE60(v98, type metadata accessor for ADPPrepareInstallTask);
      *(v102 + 4) = v106;
      *v103 = v106;
      *(v102 + 12) = 2080;
      v107 = sub_1002346CC(v223, v105, &v250);

      *(v102 + 14) = v107;
      *(v102 + 22) = 2082;
      ErrorValue = swift_getErrorValue();
      __chkstk_darwin(ErrorValue);
      (*(v110 + 16))(&v222 - ((v109 + 15) & 0xFFFFFFFFFFFFFFF0));
      v111 = String.init<A>(describing:)();
      v113 = sub_1002346CC(v111, v112, &v250);

      *(v102 + 24) = v113;
      _os_log_impl(&_mh_execute_header, v99, v100, "[%@] Failed to %s: %{public}s", v102, 0x20u);
      sub_1000032A8(v103, &qword_10077F920, &qword_10069E6A0);

      swift_arrayDestroy();

      v241(v244, v247);
    }

    else
    {

      sub_10020AE60(v98, type metadata accessor for ADPPrepareInstallTask);
      v95(v96, v247);
    }

    type metadata accessor for InternalError(0);
    sub_10020AF28(&qword_10077F900, type metadata accessor for InternalError, byte_1006B8E64);
    swift_allocError();
    *v114 = 0;
    v114[1] = 0;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  v248 = v94;
  v254 = v253[2];
  v255 = v253[3];
  v256 = v253[4];
  v257 = v253[5];
  sub_1005A9044();
  v241 = v95;
  if ((v117 & 1) == 0)
  {
    v118 = v116;
    sub_1005A9350();
    if ((v120 & 1) == 0)
    {
      v141 = v119;
      v142 = v245 + *(v246 + 20);
      v143 = type metadata accessor for ADP(0);
      v144 = &v142[*(v143 + 24)];
      if (v118 != *(v144 + 2) || v141 != *(v144 + 1))
      {
        v240 = v143;

        v145 = v232;
        static Logger.install.getter();
        v146 = v245;
        v147 = v228;
        sub_10020ADF8(v245, v228, type metadata accessor for ADPPrepareInstallTask);
        v148 = v233;
        sub_10020ADF8(v146, v233, type metadata accessor for ADPPrepareInstallTask);
        v149 = Logger.logObject.getter();
        v150 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v149, v150))
        {
          v151 = swift_slowAlloc();
          v152 = swift_slowAlloc();
          v237 = v152;
          v239 = swift_slowAlloc();
          v252[0] = v239;
          *v151 = 138412802;
          v153 = v246;
          v154 = *(v147 + *(v246 + 28));
          LODWORD(v238) = v150;
          v155 = v154;
          v236 = type metadata accessor for ADPPrepareInstallTask;
          sub_10020AE60(v147, type metadata accessor for ADPPrepareInstallTask);
          *(v151 + 4) = v155;
          *v152 = v155;
          *(v151 + 12) = 2082;
          v249 = v118;
          v250 = dispatch thunk of CustomStringConvertible.description.getter();
          v251 = v156;
          v157._countAndFlagsBits = 58;
          v157._object = 0xE100000000000000;
          String.append(_:)(v157);
          v249 = v141;
          v158._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
          String.append(_:)(v158);

          v159 = sub_1002346CC(v250, v251, v252);

          *(v151 + 14) = v159;
          *(v151 + 22) = 2082;
          v160 = v233;
          v161 = v233 + *(v153 + 20) + *(v240 + 6);
          v250 = *(v161 + 16);
          v250 = dispatch thunk of CustomStringConvertible.description.getter();
          v251 = v162;
          v163._countAndFlagsBits = 58;
          v163._object = 0xE100000000000000;
          String.append(_:)(v163);
          v249 = *(v161 + 8);
          v164._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
          String.append(_:)(v164);

          v165 = v250;
          v166 = v251;
          sub_10020AE60(v160, v236);
          v167 = sub_1002346CC(v165, v166, v252);

          *(v151 + 24) = v167;
          _os_log_impl(&_mh_execute_header, v149, v238, "[%@] Version metadata from install verification token doesn't match the requested app: %{public}s != %{public}s", v151, 0x20u);
          sub_1000032A8(v237, &qword_10077F920, &qword_10069E6A0);

          swift_arrayDestroy();

          v168 = v232;
        }

        else
        {

          sub_10020AE60(v148, type metadata accessor for ADPPrepareInstallTask);
          sub_10020AE60(v147, type metadata accessor for ADPPrepareInstallTask);
          v168 = v145;
        }

        v94 = v248;
        v95 = v241;
        v241(v168, v247);
        v185 = v243;
        v96 = v244;
        type metadata accessor for InternalError(0);
        sub_10020AF28(&qword_10077F900, type metadata accessor for InternalError, byte_1006B8E64);
        swift_allocError();
        *v186 = 0xD00000000000002FLL;
        v186[1] = 0x80000001006C4600;
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
        sub_10020AD3C(v253);
        v223 = 0xD000000000000021;
        v59 = v245;
        v92 = v185;
        goto LABEL_21;
      }
    }
  }

  v121 = *(&v239->isa + v238);
  v122 = *(*v121 + class metadata base offset for ManagedBuffer + 16);
  v123 = (*(*v121 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v121 + v123));
  sub_10020A980(v121 + v122, &v250);
  os_unfair_lock_unlock((v121 + v123));

  sub_1001F0C48(&qword_10077E970, &qword_10069E920);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v128 = 0xD000000000000021;
LABEL_33:
    v96 = v244;
    v59 = v245;
    goto LABEL_34;
  }

  v125 = v252[0];
  v124 = v252[1];
  v126 = objc_allocWithZone(LSApplicationRecord);

  v127 = sub_10049E57C(v125, v124, 0);
  v128 = 0xD000000000000027;
  v96 = v244;
  v59 = v245;
  v169 = v127;
  v242 = 0x80000001006C45D0;
  if ([v127 isProfileValidated])
  {

    goto LABEL_34;
  }

  v187 = [v169 iTunesMetadata];
  v188 = [v187 storeItemIdentifier];

  if (!v188)
  {
    v196 = v227;
    static Logger.install.getter();
    v197 = v226;
    sub_10020ADF8(v245, v226, type metadata accessor for ADPPrepareInstallTask);

    v198 = Logger.logObject.getter();
    v199 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v198, v199))
    {
      v200 = swift_slowAlloc();
      v201 = swift_slowAlloc();
      v240 = swift_slowAlloc();
      v250 = v240;
      *v200 = 138412546;
      v202 = *(v197 + *(v246 + 28));
      v203 = v197;
      v204 = v202;
      sub_10020AE60(v203, type metadata accessor for ADPPrepareInstallTask);
      *(v200 + 4) = v204;
      *v201 = v204;
      *(v200 + 12) = 2082;
      v205 = sub_1002346CC(v125, v124, &v250);

      *(v200 + 14) = v205;
      _os_log_impl(&_mh_execute_header, v198, v199, "[%@] Expected installing app isn't present: %{public}s", v200, 0x16u);
      sub_1000032A8(v201, &qword_10077F920, &qword_10069E6A0);

      sub_10000710C(v240);

      v206 = v227;
    }

    else
    {

      sub_10020AE60(v197, type metadata accessor for ADPPrepareInstallTask);
      v206 = v196;
    }

    v94 = v248;
    v241(v206, v247);
    v96 = v244;
    v223 = 0xD000000000000027;
    type metadata accessor for InternalError(0);
    sub_10020AF28(&qword_10077F900, type metadata accessor for InternalError, byte_1006B8E64);
    swift_allocError();
    *v208 = 0;
    v208[1] = 0;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    sub_10020AD3C(v253);
    v59 = v245;
    v95 = v241;
    v92 = v243;
    goto LABEL_21;
  }

  v189 = [v169 iTunesMetadata];
  v190 = [v189 storeItemIdentifier];

  v250 = v190;
  v191 = dispatch thunk of CustomStringConvertible.description.getter();
  v193 = v192;
  v194 = v255;
  if (__PAIR128__(v192, v191) == v255)
  {

    v128 = 0xD000000000000027;
    goto LABEL_33;
  }

  v240 = v191;
  v207 = _stringCompareWithSmolCheck(_:_:expecting:)();
  v128 = 0xD000000000000027;
  v96 = v244;
  if ((v207 & 1) == 0)
  {
    v223 = 0xD000000000000027;
    v209 = v224;
    static Logger.install.getter();
    sub_10020ADF8(v245, v225, type metadata accessor for ADPPrepareInstallTask);
    sub_10020ACE0(v253, &v250);

    v210 = Logger.logObject.getter();
    v211 = static os_log_type_t.error.getter();
    sub_10020AD3C(v253);

    LODWORD(v238) = v211;
    v239 = v210;
    if (os_log_type_enabled(v210, v211))
    {
      v212 = swift_slowAlloc();
      v213 = swift_slowAlloc();
      v237 = swift_slowAlloc();
      v250 = v237;
      *v212 = 138412802;
      v214 = v225;
      v215 = *(v225 + *(v246 + 28));
      sub_10020AE60(v214, type metadata accessor for ADPPrepareInstallTask);
      *(v212 + 4) = v215;
      *v213 = v215;
      *(v212 + 12) = 2082;

      v216 = sub_1002346CC(v194, *(&v194 + 1), &v250);

      *(v212 + 14) = v216;
      v96 = v244;
      *(v212 + 22) = 2082;
      v217 = sub_1002346CC(v240, v193, &v250);

      *(v212 + 24) = v217;
      v218 = v239;
      _os_log_impl(&_mh_execute_header, v239, v238, "[%@] iss supplied in token doesn't match the expected app: %{public}s != %{public}s", v212, 0x20u);
      sub_1000032A8(v213, &qword_10077F920, &qword_10069E6A0);

      swift_arrayDestroy();

      v219 = v224;
    }

    else
    {

      sub_10020AE60(v225, type metadata accessor for ADPPrepareInstallTask);
      v219 = v209;
    }

    v94 = v248;
    v241(v219, v247);
    v220 = v243;
    type metadata accessor for InternalError(0);
    sub_10020AF28(&qword_10077F900, type metadata accessor for InternalError, byte_1006B8E64);
    swift_allocError();
    *v221 = xmmword_10069E8B0;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    sub_10020AD3C(v253);
    v59 = v245;
    v95 = v241;
    v92 = v220;
    goto LABEL_21;
  }

  v59 = v245;
LABEL_34:
  v130 = v254;
  v131 = v59 + *(v246 + 20);
  v132 = type metadata accessor for ADP(0);
  if (v130 != *(v131 + *(v132 + 24) + 24) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    static Logger.install.getter();
    sub_10020ADF8(v59, v229, type metadata accessor for ADPPrepareInstallTask);
    sub_10020ADF8(v59, v231, type metadata accessor for ADPPrepareInstallTask);
    sub_10020ACE0(v253, &v250);
    v170 = Logger.logObject.getter();
    v171 = static os_log_type_t.error.getter();
    sub_10020AD3C(v253);
    v172 = os_log_type_enabled(v170, v171);
    v223 = v128;
    if (v172)
    {
      v173 = swift_slowAlloc();
      v174 = swift_slowAlloc();
      v239 = v170;
      v175 = v174;
      v240 = swift_slowAlloc();
      v250 = v240;
      *v173 = 138412802;
      v176 = v229;
      v177 = *(v229 + *(v246 + 28));
      LODWORD(v238) = v171;
      v178 = v231;
      v237 = type metadata accessor for ADPPrepareInstallTask;
      sub_10020AE60(v176, type metadata accessor for ADPPrepareInstallTask);
      *(v173 + 4) = v177;
      *v175 = v177;
      *(v173 + 12) = 2082;

      v179 = sub_1002346CC(v130, *(&v130 + 1), &v250);

      *(v173 + 14) = v179;
      *(v173 + 22) = 2082;
      v59 = v245;
      v180 = v178 + *(v246 + 20) + *(v132 + 24);
      v181 = *(v180 + 24);
      v182 = *(v180 + 32);

      sub_10020AE60(v178, v237);
      v183 = sub_1002346CC(v181, v182, &v250);

      *(v173 + 24) = v183;
      v184 = v239;
      _os_log_impl(&_mh_execute_header, v239, v238, "[%@] bid supplied in token doesn't match the expected app: %{public}s != %{public}s", v173, 0x20u);
      sub_1000032A8(v175, &qword_10077F920, &qword_10069E6A0);

      swift_arrayDestroy();

      v96 = v244;
    }

    else
    {

      sub_10020AE60(v231, type metadata accessor for ADPPrepareInstallTask);
      sub_10020AE60(v229, type metadata accessor for ADPPrepareInstallTask);
    }

    v94 = v248;
    v95 = v241;
    v241(v230, v247);
    type metadata accessor for InternalError(0);
    sub_10020AF28(&qword_10077F900, type metadata accessor for InternalError, byte_1006B8E64);
    swift_allocError();
    *v195 = xmmword_10069E8C0;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_10020AD3C(v253);
    v92 = v243;
    goto LABEL_21;
  }

  sub_10020AD3C(v253);
  v133 = v234;
  static Logger.install.getter();
  v134 = v59;
  v135 = v235;
  sub_10020ADF8(v134, v235, type metadata accessor for ADPPrepareInstallTask);
  v136 = Logger.logObject.getter();
  v137 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v136, v137))
  {
    v138 = swift_slowAlloc();
    v139 = swift_slowAlloc();
    *v138 = 138412290;
    v140 = *(v135 + *(v246 + 28));
    sub_10020AE60(v135, type metadata accessor for ADPPrepareInstallTask);
    *(v138 + 4) = v140;
    *v139 = v140;
    _os_log_impl(&_mh_execute_header, v136, v137, "[%@] Successfully validated the verification token", v138, 0xCu);
    sub_1000032A8(v139, &qword_10077F920, &qword_10069E6A0);
  }

  else
  {

    sub_10020AE60(v135, type metadata accessor for ADPPrepareInstallTask);
  }

  return (v241)(v133, v247);
}

void sub_10020687C()
{
  v123 = type metadata accessor for URLComponents();
  v117 = *(v123 - 8);
  __chkstk_darwin(v123);
  v113 = &v112 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1001F0C48(&unk_1007803A0, &qword_1006A1700);
  __chkstk_darwin(v3 - 8);
  v118 = &v112 - v4;
  v5 = type metadata accessor for URL();
  v125 = *(v5 - 8);
  v126 = v5;
  __chkstk_darwin(v5);
  v114 = &v112 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1001F0C48(&unk_1007809F0, &unk_10069E8F0);
  v8 = __chkstk_darwin(v7 - 8);
  v115 = &v112 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v122 = &v112 - v11;
  __chkstk_darwin(v10);
  v116 = &v112 - v12;
  v13 = [objc_allocWithZone(MIStoreMetadata) init];
  v14 = type metadata accessor for ADPPrepareInstallTask(0);
  v15 = (v0 + *(v14 + 24));
  v16 = v15[7];
  v120 = v15[6];
  v121 = v16;
  v17 = String._bridgeToObjectiveC()();
  [v13 setArtistName:v17];

  v18 = v0 + *(v14 + 20);
  v19 = *(type metadata accessor for ADP(0) + 24);
  v124 = v18;
  v20 = &v18[v19];
  v21 = [objc_allocWithZone(NSNumber) initWithUnsignedLongLong:*&v18[v19 + 16]];
  [v13 setItemID:v21];

  v22 = v15[3];
  v127 = v1;
  if (!v22)
  {
  }

  v23 = String._bridgeToObjectiveC()();

  [v13 setItemName:v23];

  v24 = [v13 itemName];
  [v13 setShortItemName:v24];

  v119 = *(v20 + 3);
  v25 = String._bridgeToObjectiveC()();
  [v13 setSoftwareVersionBundleID:v25];

  v26 = String._bridgeToObjectiveC()();
  [v13 setBundleVersion:v26];

  v27 = String._bridgeToObjectiveC()();
  [v13 setBundleShortVersionString:v27];

  v28 = type metadata accessor for MediaAPIMetadata(0);
  v29 = String._bridgeToObjectiveC()();
  [v13 setRatingLabel:v29];

  v30 = [objc_allocWithZone(NSNumber) initWithInteger:*(v15 + v28[12])];
  [v13 setRatingRank:v30];

  v31 = [objc_allocWithZone(NSNumber) initWithUnsignedLongLong:*(v20 + 1)];
  [v13 setSoftwareVersionExternalIdentifier:v31];

  v32 = v28[9];
  v131 = v15;
  v33 = v15 + v32;
  if ((v33[8] & 1) == 0)
  {
    v34 = [objc_allocWithZone(NSNumber) initWithInteger:*v33];
    [v13 setGenreID:v34];
  }

  v35 = v131;
  if (*(v131 + v28[10] + 8))
  {
    v36 = String._bridgeToObjectiveC()();
  }

  else
  {
    v36 = 0;
  }

  [v13 setGenre:v36];

  isa = *(v35 + v28[13]);
  if (isa)
  {
    sub_100006190(0, &qword_10077E990, MIStoreMetadataSubGenre_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;
  }

  [v13 setSubGenres:isa];

  v38 = v20[185];
  if (v38 != 2)
  {
    [v13 setLaunchProhibited:v38 & 1];
  }

  v39 = v20[186];
  if (v39 != 2)
  {
    [v13 setHasMessagesExtension:v39 & 1];
  }

  v40 = [objc_allocWithZone(MIStoreMetadataDistributor) init];
  v41 = *v0;
  v42 = *(*v0 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_lockedStorage);
  v43 = *(*v42 + class metadata base offset for ManagedBuffer + 16);
  v44 = (*(*v42 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v42 + v44));
  sub_10020A980(v42 + v43, v130);
  os_unfair_lock_unlock((v42 + v44));
  sub_1001F0C48(&qword_10077E970, &qword_10069E920);
  if (swift_dynamicCast())
  {
    v45 = v128;
    v46 = v129;

    v47 = String._bridgeToObjectiveC()();

    [v40 setDistributorID:v47];

    v48 = String._bridgeToObjectiveC()();

    [v13 setSourceApp:v48];

    v49 = objc_allocWithZone(LSApplicationRecord);
    v50 = v127;
    v51 = sub_10049E57C(v45, v46, 0);
    if (v50)
    {

      sub_10000710C(v130);
      return;
    }

    v57 = v51;
    v121 = v41;
    v127 = 0;
    sub_1001F0C48(&qword_10077E988, &unk_10069E940);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10069E680;
    *(inited + 32) = 0;
    *(inited + 40) = 0xE000000000000000;
    v59 = [v57 localizedName];
    v60 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v62 = v61;

    *(inited + 48) = v60;
    *(inited + 56) = v62;
    sub_1005288C8(inited);
    swift_setDeallocating();
    sub_1000032A8(inited + 32, &qword_100784360, &qword_1006A4B80);
    v63 = Dictionary._bridgeToObjectiveC()().super.isa;

    [v40 setLocalizedDistributorName:v63];

    v64 = [v57 iTunesMetadata];
    v65 = [v64 distributorInfo];

    v66 = [v65 developerName];
    [v40 setDeveloperName:v66];

    v67 = [v57 iTunesMetadata];
    v68 = [v67 storeItemIdentifier];

    if (v68)
    {
      v69 = [v57 iTunesMetadata];
      v70 = [v69 storeItemIdentifier];

      v71 = [objc_allocWithZone(NSNumber) initWithUnsignedLongLong:v70];
      [v40 setMarketplaceItemID:v71];

      v72 = [v57 iTunesMetadata];
      v73 = [v72 distributorInfo];

      v74 = [v73 domain];
      [v40 setMarketplaceDomain:v74];
    }

    v55 = v126;
    v56 = v125;
  }

  else
  {
    if (!swift_dynamicCast())
    {
      __break(1u);
      return;
    }

    v52 = String._bridgeToObjectiveC()();
    [v40 setDistributorID:v52];

    v53 = String._bridgeToObjectiveC()();
    [v40 setDeveloperName:v53];

    v121 = v41;
    if (*(v41 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_clientID + 8))
    {

      v54 = String._bridgeToObjectiveC()();

      [v13 setSourceApp:v54];
    }

    v55 = v126;
    v56 = v125;
  }

  sub_10000710C(v130);
  sub_1005D6710();
  if (v75)
  {
    v76 = String._bridgeToObjectiveC()();

    [v40 setDomain:v76];

    v77 = String._bridgeToObjectiveC()();

    [v40 setAccountID:v77];

    URL._bridgeToObjectiveC()(v78);
    v80 = v79;
    [v40 setSourceURL:v79];

    v81 = v131;
    v82 = String._bridgeToObjectiveC()();
    [v40 setDeveloperID:v82];

    v83 = v81 + v28[14];
    v84 = v122;
    v85 = v123;
    if (*(v83 + 8))
    {
      v86 = v116;
      URL.init(string:)();
      if ((*(v56 + 48))(v86, 1, v55) == 1)
      {
        v88 = 0;
      }

      else
      {
        URL._bridgeToObjectiveC()(v87);
        v84 = v122;
        v85 = v123;
        v88 = v91;
        (*(v56 + 8))(v86, v55);
      }

      [v40 setSupportPageURL:v88];
    }

    sub_100005934(v121 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_appShareURL, v84, &unk_1007809F0, &unk_10069E8F0);
    v92 = *(v56 + 48);
    if (v92(v84, 1, v55) == 1)
    {
      sub_1000032A8(v84, &unk_1007809F0, &unk_10069E8F0);
      v93 = v118;
      URLComponents.init(url:resolvingAgainstBaseURL:)();
      v94 = *(v117 + 48);
      if (!v94(v93, 1, v85))
      {
        URLComponents.path.setter();
        v93 = v118;
        v85 = v123;
      }

      if (v94(v93, 1, v85))
      {
        (*(v125 + 56))(v115, 1, 1, v126);
        v95 = 0;
      }

      else
      {
        v101 = v117;
        v102 = v93;
        v103 = v113;
        (*(v117 + 16))(v113, v102, v85);
        v104 = v115;
        URLComponents.url.getter();
        (*(v101 + 8))(v103, v85);
        v105 = v104;
        v106 = v104;
        v107 = v126;
        v108 = v92(v106, 1, v126);
        v110 = v125;
        if (v108 == 1)
        {
          v95 = 0;
        }

        else
        {
          URL._bridgeToObjectiveC()(v109);
          v95 = v111;
          (*(v110 + 8))(v105, v107);
        }

        v93 = v118;
      }

      [v40 setShareURL:v95];

      sub_1000032A8(v93, &unk_1007803A0, &qword_1006A1700);
    }

    else
    {
      v96 = v84;
      v97 = v114;
      (*(v56 + 32))(v114, v96, v55);
      URL._bridgeToObjectiveC()(v98);
      v100 = v99;
      [v40 setShareURL:v99];

      (*(v56 + 8))(v97, v55);
    }

    [v13 setDistributorInfo:v40];
    [v13 copy];
    _bridgeAnyObjectToAny(_:)();

    swift_unknownObjectRelease();
    sub_100006190(0, &qword_1007813E0, MIStoreMetadata_ptr);
    swift_dynamicCast();
  }

  else
  {
    v89 = type metadata accessor for MarketplaceKitError();
    sub_10020AF28(&qword_10077F950, &type metadata accessor for MarketplaceKitError, &protocol conformance descriptor for MarketplaceKitError);
    swift_allocError();
    (*(*(v89 - 8) + 104))(v90, enum case for MarketplaceKitError.invalidAlternativeDistributionPackageURL(_:), v89);
    swift_willThrow();
  }
}

uint64_t sub_100207814(uint64_t a1, uint64_t a2)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;

  return _swift_task_switch(sub_1002078A4, 0, 0);
}

uint64_t sub_1002078A4()
{
  *(v0 + 16) = 0;
  v1 = [*(v0 + 24) setPlaceholderPromise:*(v0 + 32) error:v0 + 16];
  v2 = *(v0 + 16);
  if (v1)
  {
    v7 = *(v0 + 8);
    v3 = v2;
    v4 = v7;
  }

  else
  {
    v5 = v2;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v4 = *(v0 + 8);
  }

  return v4();
}

uint64_t sub_1002079A8(uint64_t a1, int *a2)
{
  v2[18] = a1;
  v4 = sub_1001F0C48(&unk_100784B60, &qword_1006ACE20);
  v2[19] = v4;
  v2[20] = *(v4 - 8);
  v2[21] = swift_task_alloc();
  v7 = (a2 + *a2);
  v5 = swift_task_alloc();
  v2[22] = v5;
  *v5 = v2;
  v5[1] = sub_100207B04;

  return v7();
}

uint64_t sub_100207B04()
{
  v2 = *v1;
  *(v2 + 184) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100207C40, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_100207C40()
{
  v1 = v0;
  v2 = v0 + 2;
  v3 = v0 + 10;
  v5 = v0[20];
  v4 = v0[21];
  v6 = v0[19];
  v10 = v1[18];
  v7 = _convertErrorToNSError(_:)();
  v1[24] = v7;
  v1[2] = v1;
  v1[3] = sub_100207E0C;
  swift_continuation_init();
  v1[17] = v6;
  v8 = sub_10020A748(v1 + 14);
  sub_1001F0C48(&unk_10077F940, &qword_10069D7E0);
  CheckedContinuation.init(continuation:function:)();
  (*(v5 + 32))(v8, v4, v6);
  v1[10] = _NSConcreteStackBlock;
  v1[11] = 1107296256;
  v1[12] = sub_10020A518;
  v1[13] = &unk_10075BE28;
  [v10 cancelForReason:v7 client:28 completion:v3];
  (*(v5 + 8))(v8, v6);

  return _swift_continuation_await(v2);
}

uint64_t sub_100207E0C()
{
  v1 = *(*v0 + 48);
  *(*v0 + 200) = v1;
  if (v1)
  {
    v2 = sub_100207F98;
  }

  else
  {
    v2 = sub_100207F1C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100207F1C()
{
  swift_willThrow();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100207F98(uint64_t a1)
{
  swift_willThrow();

  swift_willThrow();

  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_100208028(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v5[7] = type metadata accessor for ADPPrepareInstallTask(0);
  v5[8] = swift_task_alloc();
  v5[9] = swift_task_alloc();
  v5[10] = swift_task_alloc();
  v5[11] = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  v5[12] = v6;
  v5[13] = *(v6 - 8);
  v5[14] = swift_task_alloc();
  v5[15] = swift_task_alloc();
  v5[16] = swift_task_alloc();
  v5[17] = type metadata accessor for ADP(0);
  v5[18] = swift_task_alloc();
  v5[19] = type metadata accessor for ADPNewLicenseTask(0);
  v5[20] = swift_task_alloc();

  return _swift_task_switch(sub_1002081BC, 0, 0);
}

uint64_t sub_1002081BC()
{
  v1 = **(v0 + 48);
  v2 = OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_lockedStorage;
  v3 = *(v1 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_lockedStorage);
  v4 = v3 + *(*v3 + class metadata base offset for ManagedBuffer + 16);
  v5 = (*(*v3 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v3 + v5));
  v6 = *(v4 + 40);

  os_unfair_lock_unlock((v3 + v5));
  if (v6)
  {
    v8 = *(v0 + 152);
    v7 = *(v0 + 160);
    v9 = *(v0 + 144);
    v11 = *(v0 + 48);
    v10 = *(v0 + 56);
    v40 = *(v0 + 40);
    v41 = *(v0 + 136);
    v43 = *(v0 + 24);
    v44 = *(v0 + 32);
    sub_10020ADF8(v11 + *(v10 + 20), v9, type metadata accessor for ADP);
    v42 = *(v1 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_allowAccountPrompt);
    v12 = *(v1 + v2);
    v13 = *(*v12 + class metadata base offset for ManagedBuffer + 16);
    v14 = (*(*v12 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((v12 + v14));
    sub_10020A980(v12 + v13, v7);
    os_unfair_lock_unlock((v12 + v14));
    v39 = *(v11 + *(v10 + 28));
    v15 = type metadata accessor for NewLicenseBatch(0);
    v16 = &v7[v15[8]];
    *(v16 + 3) = type metadata accessor for DecoratedHTTP();
    *(v16 + 4) = &off_100762548;
    *v16 = v6;
    sub_10020AB78(v40, &v7[v8[7]]);
    v17 = (v9 + *(v41 + 20));
    v19 = *v17;
    v18 = v17[1];
    v20 = v15[7];
    v21 = type metadata accessor for URL();
    (*(*(v21 - 8) + 16))(&v7[v20], v9, v21);
    v22 = v9 + *(v41 + 24);
    v23 = *(v22 + 8);
    v24 = *(v22 + 16);
    v25 = v39;

    sub_10020AE60(v9, type metadata accessor for ADP);
    *(v7 + 5) = v19;
    *(v7 + 6) = v18;
    *(v7 + 7) = v43;
    *(v7 + 8) = v44;
    *&v7[v15[9]] = v24;
    *&v7[v15[10]] = v23;
    v7[v8[5]] = v42;
    *&v7[v8[6]] = v25;

    v26 = swift_task_alloc();
    *(v0 + 168) = v26;
    *v26 = v0;
    v26[1] = sub_100208708;

    return sub_1003AD104();
  }

  else
  {
    v28 = *(v0 + 64);
    v29 = *(v0 + 48);
    static Logger.install.getter();
    sub_10020ADF8(v29, v28, type metadata accessor for ADPPrepareInstallTask);
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();
    v32 = os_log_type_enabled(v30, v31);
    v33 = *(v0 + 64);
    if (v32)
    {
      v34 = *(v0 + 56);
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      *v35 = 138412290;
      v37 = *(v33 + *(v34 + 28));
      sub_10020AE60(v33, type metadata accessor for ADPPrepareInstallTask);
      *(v35 + 4) = v37;
      *v36 = v37;
      _os_log_impl(&_mh_execute_header, v30, v31, "[%@] No agent available, failing", v35, 0xCu);
      sub_1000032A8(v36, &qword_10077F920, &qword_10069E6A0);
    }

    else
    {

      sub_10020AE60(v33, type metadata accessor for ADPPrepareInstallTask);
    }

    (*(*(v0 + 104) + 8))(*(v0 + 112), *(v0 + 96));
    type metadata accessor for InternalError(0);
    sub_10020AF28(&qword_10077F900, type metadata accessor for InternalError, byte_1006B8E64);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v38 = *(v0 + 8);

    return v38();
  }
}

uint64_t sub_100208708(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 176) = a1;
  *(v3 + 184) = v1;

  if (v1)
  {
    v4 = sub_100209028;
  }

  else
  {
    v4 = sub_10020881C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10020881C()
{
  v65 = v0;
  v1 = v0[22];
  v2 = v0[6];
  *(swift_task_alloc() + 16) = v2;
  sub_100209998(sub_10020ABDC, v1, &v58);

  v3 = v64;
  v4 = v0[22];
  if (v64)
  {
    v5 = v59;
    v7 = v60;
    v6 = v61;
    v8 = v62;
    v55 = v58;
    v56 = v63;
    v9 = (v4 + 24);
    v10 = *(v4 + 16) + 1;
    while (--v10)
    {
      v11 = v9;
      v9 += 7;
      if (*(v11 + 40) == 1 && v11[1] == v59)
      {
        log = v60;
        v51 = v62;
        v12 = v0[20];
        v13 = v0[2];
        v14 = *(v9 - 4);
        v15 = *(v9 - 3);
        v16 = *v9;
        v48 = *(v9 - 5);
        v49 = *(v9 - 1);
        v53 = v61;
        sub_10020ABFC(v14, v15);

        sub_10020AE60(v12, type metadata accessor for ADPNewLicenseTask);

        *v13 = v55;
        *(v13 + 8) = v5;
        *(v13 + 16) = log;
        *(v13 + 24) = v53;
        *(v13 + 32) = v51 & 1;
        *(v13 + 40) = v56;
        *(v13 + 48) = v3;
        *(v13 + 56) = v5;
        *(v13 + 64) = v48;
        *(v13 + 72) = v14;
        *(v13 + 80) = v15;
        *(v13 + 88) = 1;
        *(v13 + 96) = v49;
        *(v13 + 104) = v16;
        v17 = v0[1];
        goto LABEL_16;
      }
    }

    v30 = v0[11];
    v31 = v0[6];

    static Logger.install.getter();
    sub_10020ADF8(v31, v30, type metadata accessor for ADPPrepareInstallTask);
    sub_10020AC50(v55, v5, v7, v6, v8, v56, v3);
    sub_10020AC50(v55, v5, v7, v6, v8, v56, v3);
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.error.getter();
    v34 = os_log_type_enabled(v32, v33);
    v35 = v7;
    v36 = v0[11];
    if (v34)
    {
      v52 = v8;
      v37 = v0[7];
      v38 = swift_slowAlloc();
      v54 = v6;
      v39 = swift_slowAlloc();
      *v38 = 138412546;
      v40 = *(v36 + *(v37 + 28));
      sub_10020AE60(v36, type metadata accessor for ADPPrepareInstallTask);
      *(v38 + 4) = v40;
      *v39 = v40;
      v8 = v52;
      *(v38 + 12) = 2050;
      sub_10020AC98(v55, v5, v35, v54, v52, v56, v3);
      *(v38 + 14) = v5;
      sub_10020AC98(v55, v5, v35, v54, v52, v56, v3);
      _os_log_impl(&_mh_execute_header, v32, v33, "[%@] Unable to find license key with id: %{public}llu", v38, 0x16u);
      sub_1000032A8(v39, &qword_10077F920, &qword_10069E6A0);
      v6 = v54;
    }

    else
    {
      sub_10020AC98(v55, v5, v35, v6, v8, v56, v3);

      sub_10020AC98(v55, v5, v35, v6, v8, v56, v3);
      sub_10020AE60(v36, type metadata accessor for ADPPrepareInstallTask);
    }

    v42 = v0[20];
    (*(v0[13] + 8))(v0[16], v0[12]);
    v45 = type metadata accessor for MarketplaceKitError();
    sub_10020AF28(&qword_10077F950, &type metadata accessor for MarketplaceKitError, &protocol conformance descriptor for MarketplaceKitError);
    swift_allocError();
    (*(*(v45 - 8) + 104))(v46, enum case for MarketplaceKitError.invalidLicense(_:), v45);
    swift_willThrow();
    sub_10020AC98(v55, v5, v35, v6, v8, v56, v3);
  }

  else
  {
    v19 = v0[9];
    v18 = v0[10];
    v20 = v0[6];

    static Logger.install.getter();
    sub_10020ADF8(v20, v18, type metadata accessor for ADPPrepareInstallTask);
    sub_10020ADF8(v20, v19, type metadata accessor for ADPPrepareInstallTask);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v57 = v0[17];
      v24 = v0[9];
      v23 = v0[10];
      v25 = v0[7];
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *v26 = 138412546;
      v28 = *(v23 + *(v25 + 28));
      sub_10020AE60(v23, type metadata accessor for ADPPrepareInstallTask);
      *(v26 + 4) = v28;
      *v27 = v28;
      *(v26 + 12) = 2050;
      v29 = *(v24 + *(v25 + 20) + *(v57 + 24) + 16);
      sub_10020AE60(v24, type metadata accessor for ADPPrepareInstallTask);
      *(v26 + 14) = v29;
      _os_log_impl(&_mh_execute_header, v21, v22, "[%@] Unable to find app key with id: %{public}llu", v26, 0x16u);
      sub_1000032A8(v27, &qword_10077F920, &qword_10069E6A0);
    }

    else
    {
      v41 = v0[10];
      sub_10020AE60(v0[9], type metadata accessor for ADPPrepareInstallTask);

      sub_10020AE60(v41, type metadata accessor for ADPPrepareInstallTask);
    }

    v42 = v0[20];
    (*(v0[13] + 8))(v0[15], v0[12]);
    v43 = type metadata accessor for MarketplaceKitError();
    sub_10020AF28(&qword_10077F950, &type metadata accessor for MarketplaceKitError, &protocol conformance descriptor for MarketplaceKitError);
    swift_allocError();
    (*(*(v43 - 8) + 104))(v44, enum case for MarketplaceKitError.invalidLicense(_:), v43);
    swift_willThrow();
  }

  sub_10020AE60(v42, type metadata accessor for ADPNewLicenseTask);

  v17 = v0[1];
LABEL_16:

  return v17();
}

uint64_t sub_100209028()
{
  sub_10020AE60(*(v0 + 160), type metadata accessor for ADPNewLicenseTask);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10020911C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1001F0C48(&qword_100786EA0, &unk_10069E930);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = _swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 8;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = (*(a1 + 48) + 16 * (__clz(__rbit64(v5)) | (v9 << 6)));
    v14 = v13[1];
    *&v30[0] = *v13;
    *(&v30[0] + 1) = v14;

    swift_dynamicCast();
    swift_dynamicCast();
    v26 = v22;
    v27 = v23;
    v28 = v24;
    sub_1001F6498(&v25, v29);
    v22 = v26;
    v23 = v27;
    v24 = v28;
    sub_1001F6498(v29, v30);
    result = AnyHashable._rawHashValue(seed:)(v2[5]);
    v15 = -1 << *(v2 + 32);
    v16 = result & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~v7[v16 >> 6]) == 0)
    {
      v18 = 0;
      v19 = (63 - v15) >> 6;
      while (++v17 != v19 || (v18 & 1) == 0)
      {
        v20 = v17 == v19;
        if (v17 == v19)
        {
          v17 = 0;
        }

        v18 |= v20;
        v21 = v7[v17];
        if (v21 != -1)
        {
          v10 = __clz(__rbit64(~v21)) + (v17 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v16) & ~v7[v16 >> 6])) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = v2[6] + 40 * v10;
    *v11 = v22;
    *(v11 + 16) = v23;
    *(v11 + 32) = v24;
    result = sub_1001F6498(v30, (v2[7] + 32 * v10));
    ++v2[2];
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

unint64_t sub_1002093D0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1001F0C48(&qword_10077E998, &qword_1006B6840);
    v1 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v1 = _swiftEmptyDictionarySingleton;
  }

  v2 = 1 << *(a1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;

  v7 = 0;
  if (v4)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v9 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v9 >= v5)
    {

      return v1;
    }

    v4 = *(a1 + 64 + 8 * v9);
    ++v7;
    if (v4)
    {
      while (1)
      {
        v10 = __clz(__rbit64(v4));
        v4 &= v4 - 1;
        v11 = v10 | (v9 << 6);
        v12 = (*(a1 + 48) + 16 * v11);
        v13 = *v12;
        v14 = v12[1];
        sub_10020A6D0(*(a1 + 56) + 32 * v11, v32);
        *&v31 = v13;
        *(&v31 + 1) = v14;
        v29 = v31;
        v30[0] = v32[0];
        v30[1] = v32[1];
        v15 = v31;
        sub_1001F6498(v30, &v23);

        sub_1001F0C48(&qword_100783A30, &unk_10069E960);
        swift_dynamicCast();
        v27 = v25;
        v28 = v26;
        v24 = v25;
        v25 = v26;
        result = sub_10052213C(v15, *(&v15 + 1));
        if (v16)
        {
          *(v1[6] + 16 * result) = v15;
          v8 = result;

          result = sub_10020AD90(&v24, v1[7] + 32 * v8, &qword_100783A30, &unk_10069E960);
          v7 = v9;
          if (!v4)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v1[2] >= v1[3])
          {
            goto LABEL_20;
          }

          *(v1 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          *(v1[6] + 16 * result) = v15;
          v17 = (v1[7] + 32 * result);
          v18 = v25;
          *v17 = v24;
          v17[1] = v18;
          v19 = v1[2];
          v20 = __OFADD__(v19, 1);
          v21 = v19 + 1;
          if (v20)
          {
            goto LABEL_21;
          }

          v1[2] = v21;
          v7 = v9;
          if (!v4)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v9 = v7;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_10020965C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1001F0C48(&qword_100786EA0, &unk_10069E930);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = _swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 8;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_10020A6D0(*(a1 + 56) + 32 * v13, v35);
    *&v34 = v16;
    *(&v34 + 1) = v15;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_1001F6498(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_1001F6498(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_1001F6498(v31, v32);
    result = AnyHashable._rawHashValue(seed:)(v2[5]);
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~v7[v18 >> 6]) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = v7[v19];
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~v7[v18 >> 6])) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = v2[6] + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = sub_1001F6498(v32, (v2[7] + 32 * v10));
    ++v2[2];
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

BOOL sub_100209924(uint64_t *a1, uint64_t a2)
{
  if (a1[4])
  {
    return 0;
  }

  v3 = *a1;
  v4 = a2 + *(type metadata accessor for ADPPrepareInstallTask(0) + 20);
  return v3 == *(v4 + *(type metadata accessor for ADP(0) + 24) + 16);
}

uint64_t sub_100209998@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v5 = *(a2 + 16);
  if (v5)
  {
    v6 = result;
    v7 = (a2 + 80);
    while (1)
    {
      v8 = *(v7 - 1);
      v9 = *v7;
      v10 = *(v7 - 16);
      v11 = *(v7 - 4);
      v12 = *(v7 - 3);
      v17 = *(v7 - 3);
      *&v18 = v11;
      *(&v18 + 1) = v12;
      v19 = v10;
      v20 = v8;
      v21 = v9;
      sub_10020ABFC(v11, v12);

      result = v6(&v17);
      if (v3)
      {
        sub_100007158(v18, *(&v18 + 1));
      }

      v13 = v21;
      if (result)
      {
        break;
      }

      sub_100007158(v18, *(&v18 + 1));

      v7 += 7;
      if (!--v5)
      {
        goto LABEL_6;
      }
    }

    v14 = v19;
    v15 = v20;
    v16 = v18;
    *a3 = v17;
    *(a3 + 16) = v16;
    *(a3 + 32) = v14;
    *(a3 + 40) = v15;
    *(a3 + 48) = v13;
  }

  else
  {
LABEL_6:
    *(a3 + 48) = 0;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0u;
    *a3 = 0u;
  }

  return result;
}

uint64_t sub_100209AA0@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v14 = result;
  v4 = *(a2 + 16);
  if (v4)
  {
    v12 = a3;
    v5 = (a2 + 72);
    while (1)
    {
      v7 = *(v5 - 5);
      v6 = *(v5 - 4);
      v8 = *(v5 - 3);
      v9 = *(v5 - 2);
      v10 = *(v5 - 1);
      v11 = *v5;
      v13[0] = v7;
      v13[1] = v6;
      v13[2] = v8;
      v13[3] = v9;
      v13[4] = v10;
      v13[5] = v11;

      result = v14(v13);
      if (v3)
      {
        break;
      }

      if (result)
      {
        goto LABEL_7;
      }

      v5 += 6;

      if (!--v4)
      {
        v7 = 0;
        v6 = 0;
        v8 = 0;
        v9 = 0;
        v10 = 0;
        v11 = 0;
LABEL_7:
        a3 = v12;
        goto LABEL_9;
      }
    }
  }

  else
  {
    v7 = 0;
    v6 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
LABEL_9:
    *a3 = v7;
    a3[1] = v6;
    a3[2] = v8;
    a3[3] = v9;
    a3[4] = v10;
    a3[5] = v11;
  }

  return result;
}

uint64_t sub_100209CA4@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t (*a3)(void)@<X3>, uint64_t (*a4)(void)@<X4>, uint64_t (*a5)(void)@<X5>, uint64_t (*a6)(void)@<X6>, uint64_t a7@<X8>)
{
  v28 = a6;
  v13 = a3(0);
  __chkstk_darwin(v13);
  v17 = &v24 - v16;
  v18 = *(a2 + 16);
  if (v18)
  {
    v26 = v14;
    v27 = a7;
    v19 = a2 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
    v25 = v15;
    v20 = *(v15 + 72);
    while (1)
    {
      sub_10020ADF8(v19, v17, a4);
      v21 = a1(v17);
      if (v7)
      {
        return sub_10020AE60(v17, a5);
      }

      if (v21)
      {
        break;
      }

      sub_10020AE60(v17, a5);
      v19 += v20;
      if (!--v18)
      {
        v22 = 1;
        a7 = v27;
        goto LABEL_10;
      }
    }

    a7 = v27;
    sub_10020AEC0(v17, v27, v28);
    v22 = 0;
LABEL_10:
    v15 = v25;
    v14 = v26;
  }

  else
  {
    v22 = 1;
  }

  return (*(v15 + 56))(a7, v22, 1, v14);
}

void sub_100209E44(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = a3;
  if ((a3 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for InstallCoordinationInstallObserver.Observer(0);
    sub_10020AF28(&qword_10077E9A0, type metadata accessor for InstallCoordinationInstallObserver.Observer, &protocol conformance descriptor for NSObject);
    Set.Iterator.init(_cocoa:)();
    v5 = v21;
    v6 = v22;
    v7 = v23;
    v8 = v24;
    v9 = v25;
  }

  else
  {
    v10 = -1 << *(a3 + 32);
    v6 = a3 + 56;
    v7 = ~v10;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v9 = v12 & *(a3 + 56);

    v8 = 0;
  }

  v20 = v5;
  if (v5 < 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v13 = v8;
  v14 = v9;
  v15 = v8;
  if (v9)
  {
LABEL_12:
    v16 = (v14 - 1) & v14;
    v17 = *(*(v5 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));
    if (v17)
    {
      while (1)
      {
        v26 = v17;
        v18 = a1(&v26);
        if (v4)
        {
          break;
        }

        if (v18)
        {
          goto LABEL_23;
        }

        v8 = v15;
        v9 = v16;
        v5 = v20;
        if ((v20 & 0x8000000000000000) == 0)
        {
          goto LABEL_8;
        }

LABEL_14:
        if (!__CocoaSet.Iterator.next()())
        {
          goto LABEL_20;
        }

        type metadata accessor for InstallCoordinationInstallObserver.Observer(0);
        swift_dynamicCast();
        v17 = v26;
        v15 = v8;
        v16 = v9;
        if (!v26)
        {
          goto LABEL_21;
        }
      }

LABEL_23:
      sub_1001DFE18(v20);
    }

    else
    {
LABEL_21:
      v5 = v20;
LABEL_20:
      sub_1001DFE18(v5);
    }
  }

  else
  {
    while (1)
    {
      v15 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v15 >= ((v7 + 64) >> 6))
      {
        goto LABEL_20;
      }

      v14 = *(v6 + 8 * v15);
      ++v13;
      if (v14)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

uint64_t sub_10020A098(uint64_t (*a1)(uint64_t *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
LABEL_16:
    v5 = _CocoaArrayWrapper.endIndex.getter();
    if (v5)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v5 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
LABEL_3:
      v6 = 0;
      do
      {
        if ((a3 & 0xC000000000000001) != 0)
        {
          v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v8 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
LABEL_13:
            __break(1u);
LABEL_14:

            return v7;
          }
        }

        else
        {
          if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_16;
          }

          v7 = *(a3 + 8 * v6 + 32);

          v8 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
            goto LABEL_13;
          }
        }

        v12 = v7;
        v9 = a1(&v12);
        if (v3)
        {
          goto LABEL_14;
        }

        if (v9)
        {
          return v7;
        }

        ++v6;
      }

      while (v8 != v5);
    }
  }

  return 0;
}

uint64_t sub_10020A1BC(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_10020A268(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 48);
    do
    {
      v8 = *(v7 - 2);
      v9 = *(v7 - 1);
      v10 = *v7;
      v14[0] = v8;
      v14[1] = v9;
      v15 = v10;
      sub_1001DFDA4(v8, v9, v10);
      v11 = a1(v14);
      sub_1001DFEBC(v8, v9, v10);
      if (v3)
      {
        break;
      }

      v12 = v6-- == 0;
      v7 += 24;
    }

    while (((v11 | v12) & 1) == 0);
  }

  else
  {
    LOBYTE(v11) = 0;
  }

  return v11 & 1;
}

uint64_t sub_10020A33C(uint64_t (*a1)(uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  if (v5)
  {
    v7 = v5 - 1;
    v8 = (a3 + 40);
    do
    {
      v9 = v7;
      v10 = v8[5];
      v11 = *v8;
      v15[0] = *(v8 - 1);
      v15[1] = v11;
      v12 = *(v8 + 3);
      v16 = *(v8 + 1);
      v17 = v12;
      v18 = v10;

      v13 = a1(v15);

      LOBYTE(v5) = (v4 != 0) | v13;
      if ((v4 != 0) | v13 & 1)
      {
        break;
      }

      v7 = v9 - 1;
      v8 += 7;
    }

    while (v9);
  }

  return v5 & 1;
}

BOOL sub_10020A414(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = *a1 == a3 && a1[1] == a4;
  if (v6)
  {
    v14 = *a2 == a3 && a2[1] == a4;
    if (!v14 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 1;
    }

    goto LABEL_19;
  }

  v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  v10 = a3;
  v11 = v9;
  if (*a2 == v10 && a2[1] == a4)
  {
    if (v9)
    {
      goto LABEL_19;
    }

    return 0;
  }

  v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
  if ((v11 & 1) == 0)
  {
    if ((v13 & 1) == 0)
    {
      goto LABEL_19;
    }

    return 0;
  }

  if ((v13 & 1) == 0)
  {
    return 1;
  }

LABEL_19:
  if (!a1[6])
  {
    return 1;
  }

  v15 = a1[2];
  v16 = a1[3];
  v17 = a2[2];
  v18 = a2[3];
  v6 = v18 == v16;
  v19 = v18 < v16;
  if (v6)
  {
    v19 = a2[4] < a1[4];
  }

  if (v17 == v15)
  {
    v20 = v19;
  }

  else
  {
    v20 = v17 < v15;
  }

  return !a2[6] || v20;
}

void sub_10020A518(uint64_t a1, void *a2)
{
  sub_100006190(0, &qword_10077E980, IXDataPromise_ptr);
  sub_100006D8C((a1 + 32), *(a1 + 56));
  if (a2)
  {
    v4 = a2;
    sub_1001F0C48(&unk_100784B60, &qword_1006ACE20);
    CheckedContinuation.resume(throwing:)();
  }

  else
  {
    sub_1001F0C48(&unk_100784B60, &qword_1006ACE20);
    CheckedContinuation.resume(returning:)();
  }
}

uint64_t type metadata accessor for ADPPrepareInstallTask(uint64_t a1)
{
  result = qword_10077EA00;
  if (!qword_10077EA00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10020A610(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

uint64_t sub_10020A668(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1001F0C48(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_10020A6D0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t *sub_10020A748(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_10020A824(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

uint64_t sub_10020A980(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_10020A9E4(_BYTE *a1, unint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 <= 14)
  {
    return sub_100630BCC(a1, &a1[a2]);
  }

  type metadata accessor for __DataStorage();
  swift_allocObject();
  __DataStorage.init(bytes:length:)();
  if (a2 < 0x7FFFFFFF)
  {
    return a2 << 32;
  }

  type metadata accessor for Data.RangeReference();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = a2;
  return result;
}

void sub_10020AA94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 != 1)
  {
  }
}

void sub_10020AB30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 != 1)
  {
  }
}

uint64_t sub_10020AB78(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_10020ABFC(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

void sub_10020AC50(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a7)
  {
    sub_10020ABFC(a3, a4);
  }
}

void sub_10020AC98(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a7)
  {
    sub_100007158(a3, a4);
  }
}

uint64_t sub_10020AD90(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1001F0C48(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_10020ADF8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10020AE60(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10020AEC0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10020AF28(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

void sub_10020AF98(uint64_t a1)
{
  type metadata accessor for ADPInstallConfiguration(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for ADP(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for ADPPreflightResultingMetadata(319);
      if (v3 <= 0x3F)
      {
        type metadata accessor for LogKey();
        if (v4 <= 0x3F)
        {
          sub_10020B064(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_10020B064(uint64_t a1)
{
  if (!qword_10077EA10)
  {
    type metadata accessor for audit_token_t(255);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_10077EA10);
    }
  }
}

uint64_t sub_10020B100(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10020B194;

  return sub_10020B28C(a2);
}

uint64_t sub_10020B194()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10020B28C(uint64_t a1)
{
  v1[54] = a1;
  v2 = sub_1001F0C48(&qword_10077EA50, &qword_10069E9C0);
  v1[55] = v2;
  v1[56] = *(v2 - 8);
  v1[57] = swift_task_alloc();
  v3 = sub_1001F0C48(&qword_10077EA58, &unk_10069E9C8);
  v1[58] = v3;
  v1[59] = *(v3 - 8);
  v1[60] = swift_task_alloc();
  v4 = type metadata accessor for URLRequest();
  v1[61] = v4;
  v1[62] = *(v4 - 8);
  v1[63] = swift_task_alloc();
  sub_1001F0C48(&unk_1007809F0, &unk_10069E8F0);
  v1[64] = swift_task_alloc();
  v5 = type metadata accessor for URL();
  v1[65] = v5;
  v1[66] = *(v5 - 8);
  v1[67] = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  v1[68] = v6;
  v1[69] = *(v6 - 8);
  v1[70] = swift_task_alloc();
  v1[71] = swift_task_alloc();
  v1[72] = swift_task_alloc();
  v1[73] = swift_task_alloc();
  v1[74] = swift_task_alloc();
  v1[75] = swift_task_alloc();
  v7 = type metadata accessor for AccountIdentity();
  v1[76] = v7;
  v8 = *(v7 - 8);
  v1[77] = v8;
  v1[78] = *(v8 + 64);
  v1[79] = swift_task_alloc();
  v1[80] = swift_task_alloc();
  v9 = type metadata accessor for BagService();
  v1[81] = v9;
  v1[82] = *(v9 - 8);
  v1[83] = swift_task_alloc();
  v1[84] = swift_task_alloc();

  return _swift_task_switch(sub_10020B620, 0, 0);
}

id sub_10020B620()
{
  v0[85] = [objc_allocWithZone(AMSURLSession) init];
  result = [objc_opt_self() defaultStore];
  if (result)
  {
    v2 = result;
    v3 = v0[84];
    v4 = v0[82];
    v5 = v0[81];
    v6 = v0[54];
    v0[86] = [result ams_activeiTunesAccount];

    v7 = *sub_100006D8C(v6, v6[3]);
    v8 = OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_bagService;
    v9 = *(v4 + 16);
    v0[87] = v9;
    v0[88] = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v9(v3, v7 + v8, v5);
    v10 = swift_task_alloc();
    v0[89] = v10;
    *v10 = v0;
    v10[1] = sub_10020B784;

    return sub_100324268((v0 + 34));
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10020B784()
{
  v2 = *v1;
  v2[90] = v0;

  v3 = v2[84];
  v4 = v2[82];
  v5 = v2[81];
  v8 = *(v4 + 8);
  v6 = v4 + 8;
  v7 = v8;
  if (v0)
  {
    v7(v3, v5);
    v9 = sub_10020DCFC;
  }

  else
  {
    v2[91] = v7;
    v2[92] = v6 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v7(v3, v5);
    v9 = sub_10020B908;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_10020B908()
{
  v1 = *(v0 + 728);
  v2 = *(v0 + 696);
  v3 = *(v0 + 688);
  v4 = *(v0 + 664);
  v5 = *(v0 + 648);
  v6 = *(v0 + 432);
  type metadata accessor for AMSCachedBag();
  v7 = sub_100006D8C(v6, v6[3]);
  v2(v4, *v7 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_bagService, v5);
  *(v0 + 744) = static AMSCachedBag.makeBag(bagService:)();
  v1(v4, v5);
  if (v3)
  {
    v8 = [*(v0 + 688) ams_accountID];
    *(v0 + 752) = v8;
    if (v8)
    {
      v9 = *(v0 + 640);
      v10 = *(v0 + 632);
      v11 = *(v0 + 616);
      v12 = *(v0 + 608);
      v13 = v8;
      AccountIdentity.init(amsAccountID:)();
      type metadata accessor for AccountCachedServerData();
      v14 = static AccountCachedServerData.shared.getter();
      *(v0 + 760) = v14;
      v15 = sub_100625FA0();
      *(v0 + 768) = v15;
      (*(v11 + 16))(v10, v9, v12);
      v16 = (*(v11 + 80) + 32) & ~*(v11 + 80);
      v17 = swift_allocObject();
      *(v0 + 776) = v17;
      *(v17 + 16) = v14;
      *(v17 + 24) = 10;
      (*(v11 + 32))(v17 + v16, v10, v12);
      v18 = v14;
      v19 = swift_task_alloc();
      *(v0 + 784) = v19;
      *v19 = v0;
      v19[1] = sub_10020C608;

      return sub_10021023C(v15, 1, sub_100211FAC, v17);
    }
  }

  static Logger.updates.getter();
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *v23 = 138412290;
    v25 = sub_100625FA0();
    *(v23 + 4) = v25;
    *v24 = v25;
    _os_log_impl(&_mh_execute_header, v21, v22, "[%@] Unable to fetch country code for account. Falling back to the bag's value.", v23, 0xCu);
    sub_1000032A8(v24, &qword_10077F920, &qword_10069E6A0);
  }

  v26 = *(v0 + 600);
  v27 = *(v0 + 552);
  v28 = *(v0 + 544);

  v29 = *(v27 + 8);
  v29(v26, v28);
  v31 = *(v0 + 296);
  v30 = *(v0 + 304);
  sub_100006D8C((v0 + 272), v31);
  v32 = sub_100364C04(v31, v30);
  if (v33)
  {
    v34 = v32;
    v35 = v33;
    v36 = sub_1002106AC();
    if (*(v36 + 2))
    {
      static Logger.updates.getter();

      v37 = Logger.logObject.getter();
      v38 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        *v39 = 138412546;
        v41 = sub_100625FA0();
        *(v39 + 4) = v41;
        *v40 = v41;
        *(v39 + 12) = 2048;
        *(v39 + 14) = *(v36 + 2);

        _os_log_impl(&_mh_execute_header, v37, v38, "[%@] Fetching age ratings for %ld apps.", v39, 0x16u);
        sub_1000032A8(v40, &qword_10077F920, &qword_10069E6A0);
      }

      else
      {
      }

      v54 = *(v0 + 584);
      v55 = *(v0 + 552);
      v56 = *(v0 + 544);
      v99 = *(v0 + 528);
      v101 = *(v0 + 520);
      v97 = *(v0 + 512);
      v57 = *(v55 + 8);
      *(v0 + 800) = v57;
      *(v0 + 808) = (v55 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v57(v54, v56);
      v59 = *(v0 + 296);
      v58 = *(v0 + 304);
      v60 = sub_100006D8C((v0 + 272), v59);
      v61 = *(v59 - 8);
      v62 = swift_task_alloc();
      (*(v61 + 16))(v62, v60, v59);
      v95 = sub_100364C2C(v59, v58);
      v64 = v63;

      _StringGuts.grow(_:)(19);

      v65._countAndFlagsBits = v34;
      v65._object = v35;
      String.append(_:)(v65);
      v66._countAndFlagsBits = 0x737070612FLL;
      v66._object = 0xE500000000000000;
      String.append(_:)(v66);
      sub_10020E7D0(v36, v34, v35, (v0 + 312));
      v68 = *(v0 + 336);
      v67 = *(v0 + 344);
      sub_100006D8C((v0 + 312), v68);
      (*(v67 + 8))(v68, v67);
      sub_1005D6FB4(v95, v64, v97);
      sub_10000710C((v0 + 312));
      if ((*(v99 + 48))(v97, 1, v101))
      {
        v85 = sub_1000032A8(*(v0 + 512), &unk_1007809F0, &unk_10069E8F0);
        __break(1u);
      }

      else
      {
        v69 = *(v0 + 744);
        v93 = *(v0 + 688);
        v94 = *(v0 + 680);
        v70 = *(v0 + 536);
        v71 = *(v0 + 528);
        v72 = *(v0 + 520);
        v73 = *(v0 + 512);
        v100 = *(v0 + 472);
        v96 = *(v0 + 464);
        v98 = *(v0 + 480);
        (*(v61 + 8))(v62, v59);

        (*(v71 + 32))(v70, v73, v72);

        v74 = objc_allocWithZone(AMSMediaTokenService);
        swift_unknownObjectRetain();
        v75 = String._bridgeToObjectiveC()();
        v76 = [v74 initWithClientIdentifier:v75 bag:v69];
        *(v0 + 816) = v76;
        swift_unknownObjectRelease();

        [v76 setAccount:v93];
        [v76 setSession:v94];
        v77 = [objc_allocWithZone(AMSMediaProtocolHandler) initWithTokenService:v76];
        [v94 setProtocolHandler:v77];

        v78 = [objc_allocWithZone(AMSMediaResponseDecoder) init];
        [v94 setResponseDecoder:v78];

        v79 = [objc_allocWithZone(AMSMediaRequestEncoder) initWithTokenService:v76 bag:v69];
        *(v0 + 824) = v79;
        [v79 setAccount:v93];
        URL._bridgeToObjectiveC()(v80);
        v82 = v81;
        v83 = [v79 requestWithURL:v81];
        *(v0 + 832) = v83;

        *(v0 + 16) = v0;
        *(v0 + 56) = v0 + 408;
        *(v0 + 24) = sub_10020D298;
        swift_continuation_init();
        *(v0 + 200) = v96;
        v84 = sub_10020A748((v0 + 176));
        sub_100006190(0, &qword_10077EA60, AMSURLRequest_ptr);
        *(v0 + 840) = sub_1001F0C48(&unk_10077F940, &qword_10069D7E0);
        CheckedContinuation.init(continuation:function:)();
        (*(v100 + 32))(v84, v98, v96);
        *(v0 + 144) = _NSConcreteStackBlock;
        *(v0 + 152) = 1107296256;
        *(v0 + 160) = sub_1004C2240;
        *(v0 + 168) = &unk_10075BE50;
        [v83 resultWithCompletion:?];
        (*(v100 + 8))(v84, v96);
        v85 = v0 + 16;
      }

      return _swift_continuation_await(v85);
    }

    static Logger.updates.getter();
    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      *v50 = 138412290;
      v52 = sub_100625FA0();
      *(v50 + 4) = v52;
      *v51 = v52;
      _os_log_impl(&_mh_execute_header, v48, v49, "[%@] No applicable apps installed to sync age rating.", v50, 0xCu);
      sub_1000032A8(v51, &qword_10077F920, &qword_10069E6A0);

      v53 = *(v0 + 688);
    }

    else
    {
      v53 = v48;
      v48 = *(v0 + 688);
    }

    v86 = *(v0 + 680);
    v89 = *(v0 + 592);
    v90 = *(v0 + 552);
    v91 = *(v0 + 544);

    swift_unknownObjectRelease();
    (*(v90 + 8))(v89, v91);
  }

  else
  {
    static Logger.updates.getter();
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      *v44 = 138412290;
      v46 = sub_100625FA0();
      *(v44 + 4) = v46;
      *v45 = v46;
      _os_log_impl(&_mh_execute_header, v42, v43, "[%@] Unable to fetch country code from the account and bag.", v44, 0xCu);
      sub_1000032A8(v45, &qword_10077F920, &qword_10069E6A0);

      v47 = *(v0 + 688);
    }

    else
    {
      v47 = v42;
      v42 = *(v0 + 688);
    }

    v86 = *(v0 + 680);
    v87 = *(v0 + 568);
    v88 = *(v0 + 544);

    swift_unknownObjectRelease();
    v29(v87, v88);
  }

  sub_10000710C((v0 + 272));
  [v86 finishTasksAndInvalidate];

  v92 = *(v0 + 8);

  return v92();
}

uint64_t sub_10020C608(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v3[47] = v2;
  v3[48] = a1;
  v3[49] = a2;
  v3[99] = a2;

  return _swift_task_switch(sub_10020C72C, 0, 0);
}

uint64_t sub_10020C72C()
{
  v1 = *(v0 + 792);
  v2 = *(v0 + 760);
  v3 = *(v0 + 752);
  v4 = *(v0 + 640);
  v5 = *(v0 + 616);
  v6 = *(v0 + 608);

  (*(v5 + 8))(v4, v6);
  if (v1)
  {
    v7 = *(v0 + 384);
    v8 = *(v0 + 792);
  }

  else
  {
    static Logger.updates.getter();
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 138412290;
      v13 = sub_100625FA0();
      *(v11 + 4) = v13;
      *v12 = v13;
      _os_log_impl(&_mh_execute_header, v9, v10, "[%@] Unable to fetch country code for account. Falling back to the bag's value.", v11, 0xCu);
      sub_1000032A8(v12, &qword_10077F920, &qword_10069E6A0);
    }

    v14 = *(v0 + 600);
    v15 = *(v0 + 552);
    v16 = *(v0 + 544);

    v17 = *(v15 + 8);
    v17(v14, v16);
    v19 = *(v0 + 296);
    v18 = *(v0 + 304);
    sub_100006D8C((v0 + 272), v19);
    v20 = sub_100364C04(v19, v18);
    if (!v21)
    {
      static Logger.updates.getter();
      v70 = Logger.logObject.getter();
      v71 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v70, v71))
      {
        v72 = swift_slowAlloc();
        v73 = swift_slowAlloc();
        *v72 = 138412290;
        v74 = sub_100625FA0();
        *(v72 + 4) = v74;
        *v73 = v74;
        _os_log_impl(&_mh_execute_header, v70, v71, "[%@] Unable to fetch country code from the account and bag.", v72, 0xCu);
        sub_1000032A8(v73, &qword_10077F920, &qword_10069E6A0);

        v75 = *(v0 + 688);
      }

      else
      {
        v75 = v70;
        v70 = *(v0 + 688);
      }

      v66 = *(v0 + 680);
      v76 = *(v0 + 568);
      v77 = *(v0 + 544);

      swift_unknownObjectRelease();
      v17(v76, v77);
      goto LABEL_23;
    }

    v7 = v20;
    v8 = v21;
  }

  v22 = sub_1002106AC();
  if (*(v22 + 2))
  {
    static Logger.updates.getter();

    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *v25 = 138412546;
      v27 = sub_100625FA0();
      *(v25 + 4) = v27;
      *v26 = v27;
      *(v25 + 12) = 2048;
      *(v25 + 14) = *(v22 + 2);

      _os_log_impl(&_mh_execute_header, v23, v24, "[%@] Fetching age ratings for %ld apps.", v25, 0x16u);
      sub_1000032A8(v26, &qword_10077F920, &qword_10069E6A0);
    }

    else
    {
    }

    v34 = *(v0 + 584);
    v35 = *(v0 + 552);
    v36 = *(v0 + 544);
    v86 = *(v0 + 528);
    v88 = *(v0 + 520);
    v84 = *(v0 + 512);
    v37 = *(v35 + 8);
    *(v0 + 800) = v37;
    *(v0 + 808) = (v35 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v37(v34, v36);
    v39 = *(v0 + 296);
    v38 = *(v0 + 304);
    v40 = sub_100006D8C((v0 + 272), v39);
    v41 = *(v39 - 8);
    v42 = swift_task_alloc();
    (*(v41 + 16))(v42, v40, v39);
    v82 = sub_100364C2C(v39, v38);
    v44 = v43;

    _StringGuts.grow(_:)(19);

    v45._countAndFlagsBits = v7;
    v45._object = v8;
    String.append(_:)(v45);
    v46._countAndFlagsBits = 0x737070612FLL;
    v46._object = 0xE500000000000000;
    String.append(_:)(v46);
    sub_10020E7D0(v22, v7, v8, (v0 + 312));
    v47 = *(v0 + 336);
    v48 = *(v0 + 344);
    sub_100006D8C((v0 + 312), v47);
    (*(v48 + 8))(v47, v48);
    sub_1005D6FB4(v82, v44, v84);
    sub_10000710C((v0 + 312));
    if ((*(v86 + 48))(v84, 1, v88))
    {
      v65 = sub_1000032A8(*(v0 + 512), &unk_1007809F0, &unk_10069E8F0);
      __break(1u);
    }

    else
    {
      v49 = *(v0 + 744);
      v80 = *(v0 + 688);
      v81 = *(v0 + 680);
      v50 = *(v0 + 536);
      v51 = *(v0 + 528);
      v52 = *(v0 + 520);
      v53 = *(v0 + 512);
      v87 = *(v0 + 472);
      v83 = *(v0 + 464);
      v85 = *(v0 + 480);
      (*(v41 + 8))(v42, v39);

      (*(v51 + 32))(v50, v53, v52);

      v54 = objc_allocWithZone(AMSMediaTokenService);
      swift_unknownObjectRetain();
      v55 = String._bridgeToObjectiveC()();
      v56 = [v54 initWithClientIdentifier:v55 bag:v49];
      *(v0 + 816) = v56;
      swift_unknownObjectRelease();

      [v56 setAccount:v80];
      [v56 setSession:v81];
      v57 = [objc_allocWithZone(AMSMediaProtocolHandler) initWithTokenService:v56];
      [v81 setProtocolHandler:v57];

      v58 = [objc_allocWithZone(AMSMediaResponseDecoder) init];
      [v81 setResponseDecoder:v58];

      v59 = [objc_allocWithZone(AMSMediaRequestEncoder) initWithTokenService:v56 bag:v49];
      *(v0 + 824) = v59;
      [v59 setAccount:v80];
      URL._bridgeToObjectiveC()(v60);
      v62 = v61;
      v63 = [v59 requestWithURL:v61];
      *(v0 + 832) = v63;

      *(v0 + 16) = v0;
      *(v0 + 56) = v0 + 408;
      *(v0 + 24) = sub_10020D298;
      swift_continuation_init();
      *(v0 + 200) = v83;
      v64 = sub_10020A748((v0 + 176));
      sub_100006190(0, &qword_10077EA60, AMSURLRequest_ptr);
      *(v0 + 840) = sub_1001F0C48(&unk_10077F940, &qword_10069D7E0);
      CheckedContinuation.init(continuation:function:)();
      (*(v87 + 32))(v64, v85, v83);
      *(v0 + 144) = _NSConcreteStackBlock;
      *(v0 + 152) = 1107296256;
      *(v0 + 160) = sub_1004C2240;
      *(v0 + 168) = &unk_10075BE50;
      [v63 resultWithCompletion:?];
      (*(v87 + 8))(v64, v83);
      v65 = v0 + 16;
    }

    return _swift_continuation_await(v65);
  }

  static Logger.updates.getter();
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    *v30 = 138412290;
    v32 = sub_100625FA0();
    *(v30 + 4) = v32;
    *v31 = v32;
    _os_log_impl(&_mh_execute_header, v28, v29, "[%@] No applicable apps installed to sync age rating.", v30, 0xCu);
    sub_1000032A8(v31, &qword_10077F920, &qword_10069E6A0);

    v33 = *(v0 + 688);
  }

  else
  {
    v33 = v28;
    v28 = *(v0 + 688);
  }

  v66 = *(v0 + 680);
  v67 = *(v0 + 592);
  v68 = *(v0 + 552);
  v69 = *(v0 + 544);

  swift_unknownObjectRelease();
  (*(v68 + 8))(v67, v69);
LABEL_23:
  sub_10000710C((v0 + 272));
  [v66 finishTasksAndInvalidate];

  v78 = *(v0 + 8);

  return v78();
}