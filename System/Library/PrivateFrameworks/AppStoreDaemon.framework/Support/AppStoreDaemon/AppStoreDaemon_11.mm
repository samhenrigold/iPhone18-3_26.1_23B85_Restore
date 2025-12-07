id sub_100162794(id result, uint64_t a2)
{
  if (result)
  {
    v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v4 = v3;
    if (v2 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v4 == v5)
    {
    }

    else
    {
      v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v7 & 1) == 0)
      {
        return 0;
      }
    }

    v8 = objc_opt_self();
    if (!sub_1003D5E00(v8))
    {
      return 0;
    }

    result = sub_1003D5E54(v8);
    if (result)
    {

      result = sub_1003D5E90(v8);
      if (result)
      {

        result = sub_1003D5ECC(v8);
        if (result)
        {

          result = sub_1003D5E90(v8);
          if (result)
          {
            v9 = result;
            v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();

            return v10;
          }
        }
      }
    }
  }

  return result;
}

id sub_1001628D8(id result, uint64_t (*a2)(uint64_t))
{
  if (result)
  {
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v4;
    if (v3 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v5 == v6)
    {
    }

    else
    {
      v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v8 & 1) == 0)
      {
        return 0;
      }
    }

    v9 = objc_opt_self();
    if (!sub_1003D5E00(v9))
    {
      return 0;
    }

    result = sub_1003D5E54(v9);
    if (result)
    {

      result = sub_1003D5E90(v9);
      if (result)
      {

        result = sub_1003D5ECC(v9);
        if (result)
        {

          return a2(v9);
        }
      }
    }
  }

  return result;
}

void sub_1001629F8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100085D40(&qword_10059ED00, &unk_100436100);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = _swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v11 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v7;
    if (v5)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v13 = v12 | (v11 << 6);
        sub_1000F26AC(*(a1 + 48) + 40 * v13, v28);
        sub_10009F6D0(*(a1 + 56) + 32 * v13, v29 + 8);
        v26[0] = v29[0];
        v26[1] = v29[1];
        v27 = v30;
        v25[2] = v28[0];
        v25[3] = v28[1];
        swift_dynamicCast();
        sub_1000828A8((v26 + 8), v22);
        sub_1000828A8(v22, v24);
        sub_1000828A8(v24, v25);
        sub_1000828A8(v25, &v23);
        v14 = sub_1000EE808(v20, v21);
        if (v15)
        {
          v8 = (v2[6] + 16 * v14);
          *v8 = v20;
          v8[1] = v21;
          v9 = v14;

          v10 = (v2[7] + 32 * v9);
          sub_100005A00(v10);
          sub_1000828A8(&v23, v10);
          v7 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v14;
          v16 = (v2[6] + 16 * v14);
          *v16 = v20;
          v16[1] = v21;
          sub_1000828A8(&v23, (v2[7] + 32 * v14));
          v17 = v2[2];
          v18 = __OFADD__(v17, 1);
          v19 = v17 + 1;
          if (v18)
          {
            goto LABEL_21;
          }

          v2[2] = v19;
          v7 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v11 = v7;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
}

uint64_t sub_100162CE0()
{
  v1[12] = v0;
  v2 = type metadata accessor for Logger();
  v1[13] = v2;
  v1[14] = *(v2 - 8);
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v3 = type metadata accessor for InstallConfirmationRequest();
  v1[21] = v3;
  v1[22] = *(v3 - 8);
  v1[23] = swift_task_alloc();
  v4 = type metadata accessor for InstallSheetContext.InstallType();
  v1[24] = v4;
  v1[25] = *(v4 - 8);
  v1[26] = swift_task_alloc();
  v5 = type metadata accessor for InstallSheetContext();
  v1[27] = v5;
  v1[28] = *(v5 - 8);
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();
  sub_100085D40(&qword_10059CE90, &unk_100436180);
  v1[31] = swift_task_alloc();
  v6 = type metadata accessor for InstallSheetContext.Source();
  v1[32] = v6;
  v1[33] = *(v6 - 8);
  v1[34] = swift_task_alloc();
  v1[35] = swift_task_alloc();
  v7 = type metadata accessor for BagService.PermittedDataOrigin();
  v1[36] = v7;
  v1[37] = *(v7 - 8);
  v1[38] = swift_task_alloc();
  v8 = type metadata accessor for AccountClientIdentifier();
  v1[39] = v8;
  v1[40] = *(v8 - 8);
  v1[41] = swift_task_alloc();
  v1[42] = swift_task_alloc();
  v9 = type metadata accessor for ClientInfo();
  v1[43] = v9;
  v1[44] = *(v9 - 8);
  v1[45] = swift_task_alloc();

  return _swift_task_switch(sub_1001630E8, 0, 0);
}

uint64_t sub_1001630E8(uint64_t a1)
{
  v2 = v1[12];
  if (*(v2 + OBJC_IVAR____TtC9appstored28PostPurchaseInstallSheetTask_isUpdate))
  {
    static Logger.appInstall.getter();
    v3 = v2;
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = v1[12];
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *v7 = 138412290;
      v9 = *(v6 + OBJC_IVAR____TtC9appstored28PostPurchaseInstallSheetTask_logKey);
      *(v7 + 4) = v9;
      *v8 = v9;
      v10 = v9;
      _os_log_impl(&_mh_execute_header, v4, v5, "[%@] Install sheet not required for updates", v7, 0xCu);
      sub_100005518(v8, &unk_10059C250, &qword_100434830);
    }

    v11 = v1[16];
    v12 = v1[13];
    v13 = v1[14];

    (*(v13 + 8))(v11, v12);
    goto LABEL_12;
  }

  v14 = String._bridgeToObjectiveC()();
  isa = Array._bridgeToObjectiveC()().super.isa;
  v16 = [objc_opt_self() metadataWithAction:0 bundleID:v14 capabilities:isa];
  v1[46] = v16;

  [v16 setSupportsFeatureA:1];
  if (qword_10059B480 != -1)
  {
    swift_once();
  }

  v17 = *(v1[12] + OBJC_IVAR____TtC9appstored28PostPurchaseInstallSheetTask_logKey);
  v1[47] = v17;
  if ((sub_1000A5238(v16, v17) & 1) == 0)
  {

LABEL_12:

    v19 = v1[1];

    return v19();
  }

  v18 = swift_task_alloc();
  v1[48] = v18;
  *v18 = v1;
  v18[1] = sub_1001634E4;

  return static AppDistributor.shouldShowInstallConfirmations(for:)(0xD000000000000012, 0x800000010044C480);
}

uint64_t sub_1001634E4(char a1)
{
  *(*v1 + 448) = a1;

  return _swift_task_switch(sub_100163610, 0, 0);
}

uint64_t sub_100163610(uint64_t a1)
{
  if (*(v1 + 448) == 1)
  {
    v2 = *(v1 + 96);
    if (v2[OBJC_IVAR____TtC9appstored28PostPurchaseInstallSheetTask_isUserInitiated] == 1)
    {
      v4 = *(v1 + 352);
      v3 = *(v1 + 360);
      v5 = *(v1 + 336);
      v6 = *(v1 + 344);
      v8 = *(v1 + 320);
      v7 = *(v1 + 328);
      v9 = *(v1 + 312);
      static AccountClientIdentifier.production.getter();
      (*(v8 + 16))(v7, v5, v9);
      ClientInfo.init(identifier:name:version:accountClientIdentifier:)();
      (*(v8 + 8))(v5, v9);
      *(v1 + 392) = sub_1000D6694(v3);
      (*(v4 + 8))(v3, v6);
      static BagService.PermittedDataOrigin.networkAndPersistence.getter();
      v10 = swift_task_alloc();
      *(v1 + 400) = v10;
      *v10 = v1;
      v10[1] = sub_100163C38;
      v11 = *(v1 + 304);

      return sub_1000C4BE0(v1 + 16, 0, 0, v11);
    }

    static Logger.appInstall.getter();
    v25 = v2;
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = *(v1 + 376);
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      *v29 = 138412290;
      *(v29 + 4) = v28;
      *v30 = v28;
      v31 = v28;
      _os_log_impl(&_mh_execute_header, v26, v27, "[%@] Install sheet required but this isn't user initiated, failing", v29, 0xCu);
      sub_100005518(v30, &unk_10059C250, &qword_100434830);
    }

    v32 = *(v1 + 368);
    v33 = *(v1 + 144);
    v34 = *(v1 + 104);
    v35 = *(v1 + 112);

    (*(v35 + 8))(v33, v34);
    type metadata accessor for ASDError(0);
    *(v1 + 64) = 534;
    sub_1000EF17C(_swiftEmptyArrayStorage);
    sub_1000BD07C();
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();

    v24 = *(v1 + 8);
  }

  else
  {
    v13 = *(v1 + 96);
    static Logger.appInstall.getter();
    v14 = v13;
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = *(v1 + 376);
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v18 = 138412290;
      *(v18 + 4) = v17;
      *v19 = v17;
      v20 = v17;
      _os_log_impl(&_mh_execute_header, v15, v16, "[%@] Install sheet not required", v18, 0xCu);
      sub_100005518(v19, &unk_10059C250, &qword_100434830);
    }

    v21 = *(v1 + 136);
    v22 = *(v1 + 104);
    v23 = *(v1 + 112);

    (*(v23 + 8))(v21, v22);

    v24 = *(v1 + 8);
  }

  return v24();
}

uint64_t sub_100163C38()
{
  v2 = *v1;
  *(*v1 + 408) = v0;

  v3 = v2[49];
  (*(v2[37] + 8))(v2[38], v2[36]);

  if (v0)
  {
    v4 = sub_100164B38;
  }

  else
  {
    v4 = sub_100163DEC;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100163DEC()
{
  v30 = v0;
  v1 = *(v0 + 96);
  v2 = *(v0 + 40);
  v3 = sub_100005B60((v0 + 16), v2);
  v4 = sub_100165E38(v3, v1, v2);
  if (*(v1 + OBJC_IVAR____TtC9appstored28PostPurchaseInstallSheetTask_qosMetricsFields))
  {
    v5 = *(v1 + OBJC_IVAR____TtC9appstored28PostPurchaseInstallSheetTask_qosMetricsFields);
  }

  else
  {
    v5 = sub_1000EF17C(_swiftEmptyArrayStorage);
  }

  v6 = *(v0 + 408);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v29[0] = v4;
  sub_100166DDC(v5, sub_100165DEC, 0, isUniquelyReferenced_nonNull_native, v29);

  if (v6)
  {
  }

  else
  {
    v9 = objc_opt_self();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    *(v0 + 72) = 0;
    v11 = [v9 dataWithJSONObject:isa options:0 error:v0 + 72];

    v12 = *(v0 + 72);
    if (v11)
    {
      v13 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v15 = v14;
    }

    else
    {
      v16 = v12;
      _convertNSErrorToError(_:)();

      swift_willThrow();

      v13 = 0;
      v15 = 0xF000000000000000;
    }

    *(v0 + 416) = v13;
    *(v0 + 424) = v15;
    v17 = *(v0 + 280);
    v28 = *(v0 + 272);
    v18 = *(v0 + 264);
    v20 = *(v0 + 256);
    v26 = *(v0 + 232);
    v24 = *(v0 + 240);
    v25 = *(v0 + 224);
    v27 = *(v0 + 216);
    v21 = *(v0 + 200);
    v22 = *(v0 + 208);
    v23 = *(v0 + 192);
    sub_1000044A4(*(v0 + 96) + OBJC_IVAR____TtC9appstored28PostPurchaseInstallSheetTask_iconURL, *(v0 + 248), &qword_10059CE90, &unk_100436180);

    sub_1000FE3F8(v13, v15);
    InstallSheetContext.Source.AppStoreSheetContext.init(showBiometrics:installType:appName:iconURL:metricsFieldData:)();
    (*(v18 + 104))(v17, enum case for InstallSheetContext.Source.appStoreWithContext(_:), v20);
    (*(v18 + 16))(v28, v17, v20);
    (*(v21 + 104))(v22, enum case for InstallSheetContext.InstallType.app(_:), v23);
    sub_100005B60((v0 + 16), *(v0 + 40));

    dispatch thunk of Bag.subscript.getter();
    InstallSheetContext.init(itemID:versionID:source:type:logKey:learnMoreURL:authenticationContextData:showBiometricsForAppStoreInstall:)();
    (*(v25 + 16))(v26, v24, v27);
    InstallConfirmationRequest.init(context:)();
    v19 = swift_task_alloc();
    *(v0 + 432) = v19;
    *v19 = v0;
    v19[1] = sub_10016430C;

    return InstallConfirmationRequest.run()();
  }
}

uint64_t sub_10016430C(char a1)
{
  v4 = *v2;
  *(*v2 + 440) = v1;

  if (v1)
  {
    v5 = sub_100164CAC;
  }

  else
  {
    *(v4 + 449) = a1 & 1;
    v5 = sub_100164460;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100164460(uint64_t a1)
{
  v2 = *(v1 + 96);
  if (*(v1 + 449))
  {
    static Logger.appInstall.getter();
    v3 = v2;
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = *(v1 + 376);
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *v7 = 138412290;
      *(v7 + 4) = v6;
      *v8 = v6;
      v9 = v6;
      _os_log_impl(&_mh_execute_header, v4, v5, "[%@] Asked to continue the install", v7, 0xCu);
      sub_100005518(v8, &unk_10059C250, &qword_100434830);
    }

    v11 = *(v1 + 416);
    v10 = *(v1 + 424);
    v12 = *(v1 + 264);
    v58 = *(v1 + 256);
    v60 = *(v1 + 280);
    v13 = *(v1 + 224);
    v54 = *(v1 + 216);
    v56 = *(v1 + 240);
    v14 = *(v1 + 176);
    v50 = *(v1 + 168);
    v52 = *(v1 + 184);
    v15 = *(v1 + 152);
    v16 = *(v1 + 104);
    v17 = *(v1 + 112);

    sub_1000A7F1C(v11, v10);
    (*(v17 + 8))(v15, v16);
    (*(v14 + 8))(v52, v50);
    (*(v13 + 8))(v56, v54);
    (*(v12 + 8))(v60, v58);
    sub_100005A00((v1 + 16));

    v18 = *(v1 + 8);
  }

  else
  {
    static Logger.appInstall.getter();
    v19 = v2;
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = *(v1 + 376);
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *v23 = 138412290;
      *(v23 + 4) = v22;
      *v24 = v22;
      v25 = v22;
      _os_log_impl(&_mh_execute_header, v20, v21, "[%@] Asked to cancel the install", v23, 0xCu);
      sub_100005518(v24, &unk_10059C250, &qword_100434830);
    }

    v26 = *(v1 + 160);
    v27 = *(v1 + 104);
    v28 = *(v1 + 112);

    (*(v28 + 8))(v26, v27);
    type metadata accessor for ASDError(0);
    *(v1 + 88) = 907;
    sub_1000EF17C(_swiftEmptyArrayStorage);
    sub_1000BD07C();
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();
    v29 = *(v1 + 96);
    static Logger.appInstall.getter();
    v30 = v29;
    swift_errorRetain();
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = *(v1 + 376);
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      *v34 = 138412546;
      *(v34 + 4) = v33;
      *v35 = v33;
      *(v34 + 12) = 2114;
      v36 = v33;
      swift_errorRetain();
      v37 = _swift_stdlib_bridgeErrorToNSError();
      *(v34 + 14) = v37;
      v35[1] = v37;
      _os_log_impl(&_mh_execute_header, v31, v32, "[%@] Error asking for install confirmation: %{public}@", v34, 0x16u);
      sub_100085D40(&unk_10059C250, &qword_100434830);
      swift_arrayDestroy();
    }

    v49 = *(v1 + 416);
    v51 = *(v1 + 424);
    v38 = *(v1 + 368);
    v39 = *(v1 + 264);
    v57 = *(v1 + 256);
    v59 = *(v1 + 280);
    v40 = *(v1 + 224);
    v53 = *(v1 + 216);
    v55 = *(v1 + 240);
    v41 = v31;
    v43 = *(v1 + 176);
    v42 = *(v1 + 184);
    v44 = *(v1 + 168);
    v46 = *(v1 + 112);
    v45 = *(v1 + 120);
    v47 = *(v1 + 104);

    (*(v46 + 8))(v45, v47);
    swift_willThrow();

    sub_1000A7F1C(v49, v51);
    (*(v43 + 8))(v42, v44);
    (*(v40 + 8))(v55, v53);
    (*(v39 + 8))(v59, v57);
    sub_100005A00((v1 + 16));

    v18 = *(v1 + 8);
  }

  return v18();
}

uint64_t sub_100164B38()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100164CAC(uint64_t a1)
{
  v2 = v1[12];
  static Logger.appInstall.getter();
  v3 = v2;
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v1[47];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412546;
    *(v7 + 4) = v6;
    *v8 = v6;
    *(v7 + 12) = 2114;
    v9 = v6;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v10;
    v8[1] = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "[%@] Error asking for install confirmation: %{public}@", v7, 0x16u);
    sub_100085D40(&unk_10059C250, &qword_100434830);
    swift_arrayDestroy();
  }

  v23 = v1[52];
  v24 = v1[53];
  v11 = v1[46];
  v12 = v1[33];
  v27 = v1[32];
  v28 = v1[35];
  v13 = v1[28];
  v25 = v1[27];
  v26 = v1[30];
  v14 = v4;
  v16 = v1[22];
  v15 = v1[23];
  v17 = v1[21];
  v19 = v1[14];
  v18 = v1[15];
  v20 = v1[13];

  (*(v19 + 8))(v18, v20);
  swift_willThrow();

  sub_1000A7F1C(v23, v24);
  (*(v16 + 8))(v15, v17);
  (*(v13 + 8))(v26, v25);
  (*(v12 + 8))(v28, v27);
  sub_100005A00(v1 + 2);

  v21 = v1[1];

  return v21();
}

uint64_t sub_100165154(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_1000B1B28;

  return sub_100162CE0();
}

uint64_t sub_1001651FC()
{
  v0 = dispatch thunk of Bag.subscript.getter();
  if (!v0)
  {
    return 0;
  }

  sub_100165A04(v0);
  v2 = v1;

  return v2;
}

uint64_t sub_100165274(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v7 = 0xD000000000000012;
  if (a2)
  {
    v8 = "APPSTORE_ENGAGEMENT";
    if (a3)
    {
      v8 = "APPSTORE_ENGAGEMENT_CLIENT";
    }

    if (*(a2 + 16))
    {
      if (a3)
      {
        v9 = 0xD00000000000001ALL;
      }

      else
      {
        v9 = 0xD000000000000013;
      }

      sub_1000EE808(v9, (v8 - 32) | 0x8000000000000000);
      v11 = v10;

      if (v11)
      {

        sub_1001664C8(v12, &v42);
        v13 = v43;
        if (a3)
        {
          v14 = _swiftEmptyArrayStorage;
        }

        else
        {
          v14 = &off_100509500;
        }

        if (a3)
        {
          v15 = 0xD000000000000019;
        }

        else
        {
          v15 = 0xD000000000000012;
        }

        if (a3)
        {
          v16 = "APPSTORE_ENGAGEMENT";
        }

        else
        {
          v16 = "xp_ase_appstore_ue_client";
        }

        if (v43)
        {
          v17 = v48;
          v18 = v47;
          v15 = v45;
          v39 = v44;
          v40 = v46;
          v7 = v42;

          v14 = v39;
          v19 = v40;
        }

        else
        {
          v17 = 0;
          v18 = 0x416DA9C000000000;
          v13 = 0x800000010044C480;
          v19 = v16 | 0x8000000000000000;
        }

        goto LABEL_31;
      }
    }

    else
    {
    }
  }

  v17 = 0;
  if (a3)
  {
    v14 = _swiftEmptyArrayStorage;
  }

  else
  {
    v14 = &off_100509500;
  }

  if (a3)
  {
    v15 = 0xD000000000000019;
  }

  else
  {
    v15 = 0xD000000000000012;
  }

  if (a3)
  {
    v20 = "APPSTORE_ENGAGEMENT";
  }

  else
  {
    v20 = "xp_ase_appstore_ue_client";
  }

  v19 = v20 | 0x8000000000000000;
  v13 = 0x800000010044C480;
  v18 = 0x416DA9C000000000;
LABEL_31:
  v49[0] = v7;
  v49[1] = v13;
  v49[2] = v14;
  v49[3] = v15;
  v49[4] = v19;
  v49[5] = v18;
  v50 = v17 & 1;
  sub_10009FAD4(0, &qword_10059E6C8, AMSMetricsIdentifierStore_ptr);
  v21 = *(v4 + OBJC_IVAR____TtC9appstored28PostPurchaseInstallSheetTask_account);

  v22 = v21;
  v23 = sub_100166BFC(v49, a3 & 1, v21);

  v24 = *(a1 + 16);
  if (v24)
  {
    v38 = v23;
    v39 = v19;
    v40 = v13;
    v41[2] = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v25 = objc_opt_self();
    v26 = (a1 + 40);
    do
    {
      v27 = *(v26 - 1);
      v28 = *v26;

      v29 = String._bridgeToObjectiveC()();
      v41[0] = v27;
      v41[1] = v28;
      __chkstk_darwin(v29);
      v37[2] = v41;
      LOBYTE(v27) = sub_10019A910(sub_1001670EC, v37, v14);

      v30 = [v25 keyWithName:v29 crossDeviceSync:v27 & 1];

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v26 += 2;
      --v24;
    }

    while (v24);

    v23 = v38;
  }

  else
  {
  }

  sub_10009FAD4(0, &qword_10059E6D0, AMSMetricsIdentifierKey_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v32 = [v23 generateEventFieldsForKeys:isa];

  v33 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  sub_1001629F8(v33);
  v35 = v34;

  return v35;
}

uint64_t type metadata accessor for PostPurchaseInstallSheetTask(uint64_t a1)
{
  result = qword_10059E6B0;
  if (!qword_10059E6B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100165830(uint64_t a1)
{
  sub_100165900(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100165900(uint64_t a1)
{
  if (!qword_10059E6C0)
  {
    type metadata accessor for URL();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_10059E6C0);
    }
  }
}

uint64_t sub_100165958()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100085384;

  return sub_100165154(v2, v3);
}

void sub_100165A04(uint64_t a1)
{
  v56 = sub_100085D40(&qword_10059E6D8, &qword_100437C98);
  v2 = __chkstk_darwin(v56);
  v51 = (&v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = __chkstk_darwin(v2);
  v6 = &v47 - v5;
  __chkstk_darwin(v4);
  v54 = &v47 - v7;
  v52 = _swiftEmptyDictionarySingleton;
  v58 = _swiftEmptyDictionarySingleton;
  v8 = a1 + 64;
  v9 = 1 << *(a1 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(a1 + 64);
  v12 = (v9 + 63) >> 6;
  v57 = a1;

  v13 = 0;
  v53 = a1 + 64;
  v55 = v6;
  while (1)
  {
    v14 = v13;
    if (!v11)
    {
      goto LABEL_7;
    }

    while (1)
    {
      v13 = v14;
LABEL_10:
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v16 = v15 | (v13 << 6);
      v17 = *(v57 + 56);
      v18 = (*(v57 + 48) + 16 * v16);
      v20 = *v18;
      v19 = v18[1];
      v21 = type metadata accessor for AnyValue();
      v22 = *(v21 - 8);
      v23 = v17 + *(v22 + 72) * v16;
      v24 = v54;
      (*(v22 + 16))(&v54[*(v56 + 48)], v23, v21);
      *v24 = v20;
      v24[1] = v19;
      v25 = v55;
      sub_10016710C(v24, v55);

      v26 = AnyValue.dictionary.getter();
      if (v26)
      {
        break;
      }

      sub_100005518(v25, &qword_10059E6D8, &qword_100437C98);
      v14 = v13;
      v8 = v53;
      if (!v11)
      {
LABEL_7:
        while (1)
        {
          v13 = v14 + 1;
          if (__OFADD__(v14, 1))
          {
            break;
          }

          if (v13 >= v12)
          {

            return;
          }

          v11 = *(v8 + 8 * v13);
          ++v14;
          if (v11)
          {
            goto LABEL_10;
          }
        }

        __break(1u);
        goto LABEL_28;
      }
    }

    v27 = v26;
    v50 = v21;
    sub_10016710C(v25, v51);
    v28 = v52[2];
    if (v52[3] <= v28)
    {
      sub_1001B04E8(v28 + 1, 1);
    }

    v29 = v58;
    v30 = *v51;
    v31 = v51[1];
    Hasher.init(_seed:)();
    v48 = v31;
    v49 = v30;
    String.hash(into:)();
    v32 = Hasher._finalize()();
    v33 = v29 + 8;
    v52 = v29;
    v34 = -1 << *(v29 + 32);
    v35 = v32 & ~v34;
    v36 = v35 >> 6;
    if (((-1 << v35) & ~v29[(v35 >> 6) + 8]) == 0)
    {
      break;
    }

    v37 = __clz(__rbit64((-1 << v35) & ~v29[(v35 >> 6) + 8])) | v35 & 0x7FFFFFFFFFFFFFC0;
    v38 = v50;
LABEL_25:
    v43 = *(v56 + 48);
    *(v33 + ((v37 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v37;
    v44 = v52;
    v45 = (v52[6] + 16 * v37);
    v46 = v48;
    *v45 = v49;
    v45[1] = v46;
    *(v44[7] + 8 * v37) = v27;
    ++v44[2];
    (*(v22 + 8))(v51 + v43, v38);
    v8 = v53;
  }

  v39 = 0;
  v40 = (63 - v34) >> 6;
  v38 = v50;
  while (++v36 != v40 || (v39 & 1) == 0)
  {
    v41 = v36 == v40;
    if (v36 == v40)
    {
      v36 = 0;
    }

    v39 |= v41;
    v42 = v33[v36];
    if (v42 != -1)
    {
      v37 = __clz(__rbit64(~v42)) + (v36 << 6);
      goto LABEL_25;
    }
  }

LABEL_28:
  __break(1u);
}

double sub_100165DEC@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  sub_10009F6D0((a1 + 2), (a2 + 2));
  *a2 = v4;
  a2[1] = v3;

  return result;
}

uint64_t sub_100165E38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  __chkstk_darwin(a1);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v6);
  v7 = sub_1001651FC();
  v8 = sub_100165274(&off_100509530, v7, 0);
  sub_1000BC3E4(&unk_100509550);
  v19 = &type metadata for String;
  *&v18 = 0xD000000000000013;
  *(&v18 + 1) = 0x8000000100451780;
  sub_1000828A8(&v18, v17);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = v8;
  sub_1001B3A08(v17, 0x734E72657375, 0xE600000000000000, isUniquelyReferenced_nonNull_native);
  v10 = v16;
  v11 = sub_100165274(&off_100509560, v7, 1);

  sub_1000BC3E4(&unk_100509580);
  v12 = swift_isUniquelyReferenced_nonNull_native();
  *&v18 = v10;
  sub_10013CD84(v11, sub_100165DEC, 0, v12, &v18);

  v13 = v18;
  (*(v4 + 8))(v6, a3);
  return v13;
}

id sub_100166038(void *a1, void *a2)
{
  ObjectType = swift_getObjectType();
  v5 = sub_100085D40(&qword_10059CE90, &unk_100436180);
  __chkstk_darwin(v5 - 8);
  v7 = &v52 - v6;
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v52 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1003860A0(a1, v11);
  if (v12)
  {
    v14 = v12;
    v15 = [v12 stringValue];

    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;
  }

  else
  {
    v16 = 0;
    v18 = 0xE000000000000000;
  }

  v19 = &v2[OBJC_IVAR____TtC9appstored28PostPurchaseInstallSheetTask_itemID];
  *v19 = v16;
  v19[1] = v18;
  v20 = sub_100386074(a1, v13);
  if (v20)
  {
    v21 = v20;
    v22 = [v20 stringValue];

    v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v24;
  }

  else
  {
    v23 = 0;
    v25 = 0;
  }

  v26 = &v2[OBJC_IVAR____TtC9appstored28PostPurchaseInstallSheetTask_versionID];
  *v26 = v23;
  v26[1] = v25;
  v27 = [a2 logKey];
  *&v2[OBJC_IVAR____TtC9appstored28PostPurchaseInstallSheetTask_logKey] = v27;
  v28 = [a2 isUserInitiated];
  v2[OBJC_IVAR____TtC9appstored28PostPurchaseInstallSheetTask_isUserInitiated] = v28;
  v29 = [a2 updateType] != 0;
  v2[OBJC_IVAR____TtC9appstored28PostPurchaseInstallSheetTask_isUpdate] = v29;
  v30 = [a2 didShowPaymentSheet];
  v2[OBJC_IVAR____TtC9appstored28PostPurchaseInstallSheetTask_shouldShowBiometrics] = v30 ^ 1;
  v31 = [a2 qosMetricsFields];
  if (v31)
  {
    v32 = v31;
    v33 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    sub_1001629F8(v33);
    v35 = v34;
  }

  else
  {
    v35 = 0;
  }

  *&v2[OBJC_IVAR____TtC9appstored28PostPurchaseInstallSheetTask_qosMetricsFields] = v35;
  v36 = [a2 account];
  *&v2[OBJC_IVAR____TtC9appstored28PostPurchaseInstallSheetTask_account] = v36;
  if (sub_100386088(a1))
  {
    v38 = 1;
  }

  else
  {
    v38 = sub_1003860C8(a1);
  }

  v2[OBJC_IVAR____TtC9appstored28PostPurchaseInstallSheetTask_isRedownload] = v38;
  v39 = sub_1003860B4(a1, v37);
  if (v39)
  {
    v41 = v39;
    v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v44 = v43;
  }

  else
  {
    v42 = 0;
    v44 = 0xE000000000000000;
  }

  v45 = &v2[OBJC_IVAR____TtC9appstored28PostPurchaseInstallSheetTask_appName];
  *v45 = v42;
  v45[1] = v44;
  v46 = sub_10038604C(a1, v40);
  if (v46)
  {
    v47 = v46;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    URL.init(string:)();

    if ((*(v9 + 48))(v7, 1, v8) != 1)
    {
      v48 = *(v9 + 32);
      v49 = v52;
      v48(v52, v7, v8);
      v50 = OBJC_IVAR____TtC9appstored28PostPurchaseInstallSheetTask_iconURL;
      v48(&v2[OBJC_IVAR____TtC9appstored28PostPurchaseInstallSheetTask_iconURL], v49, v8);
      (*(v9 + 56))(&v2[v50], 0, 1, v8);
      goto LABEL_21;
    }

    sub_100005518(v7, &qword_10059CE90, &unk_100436180);
  }

  (*(v9 + 56))(&v2[OBJC_IVAR____TtC9appstored28PostPurchaseInstallSheetTask_iconURL], 1, 1, v8);
LABEL_21:
  v54.receiver = v2;
  v54.super_class = ObjectType;
  return objc_msgSendSuper2(&v54, "init");
}

uint64_t sub_1001664C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100085D40(&qword_10059E048, &qword_100437C90);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v73 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = &v73 - v9;
  __chkstk_darwin(v8);
  v12 = &v73 - v11;
  v13 = type metadata accessor for AnyValue();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v16 = __chkstk_darwin(v15);
  v18 = &v73 - v17;
  v19 = __chkstk_darwin(v16);
  v21 = &v73 - v20;
  __chkstk_darwin(v19);
  v24 = &v73 - v23;
  if (!*(a1 + 16))
  {
    goto LABEL_9;
  }

  v79 = v10;
  v80 = v22;
  v25 = sub_1000EE808(0xD000000000000010, 0x8000000100451800);
  if ((v26 & 1) == 0)
  {
    goto LABEL_9;
  }

  v27 = *(a1 + 56);
  v82 = *(v14 + 72);
  v83 = *(v14 + 16);
  v84 = (v14 + 16);
  v83(v24, v27 + v82 * v25, v13);
  v28 = AnyValue.string.getter();
  v29 = v14;
  v30 = v28;
  v31 = v13;
  v33 = v32;
  v78 = v29;
  v34 = *(v29 + 8);
  v81 = v31;
  v85 = v34;
  v86 = v29 + 8;
  v34(v24, v31);
  if (!v33)
  {

    v30 = 0;
    goto LABEL_10;
  }

  if (!*(a1 + 16))
  {
    goto LABEL_32;
  }

  v35 = sub_1000EE808(0x76654473736F7263, 0xEF7379654B656369);
  if ((v36 & 1) != 0 && (v37 = v81, v83(v21, *(a1 + 56) + v35 * v82, v81), v38 = AnyValue.array.getter(), v85(v21, v37), v38))
  {
    v76 = v7;
    v77 = v12;
    v74 = v30;
    v75 = v33;
    v39 = *(v38 + 16);
    v73 = v38;
    if (v39)
    {
      v40 = v38 + ((*(v78 + 80) + 32) & ~*(v78 + 80));
      v41 = _swiftEmptyArrayStorage;
      v42 = v81;
      do
      {
        v83(v18, v40, v42);
        v49 = AnyValue.string.getter();
        v51 = v50;
        v85(v18, v42);
        if (v51)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v41 = sub_1001AC6FC(0, *(v41 + 2) + 1, 1, v41);
          }

          v53 = *(v41 + 2);
          v52 = *(v41 + 3);
          if (v53 >= v52 >> 1)
          {
            v41 = sub_1001AC6FC((v52 > 1), v53 + 1, 1, v41);
          }

          *(v41 + 2) = v53 + 1;
          v48 = &v41[16 * v53];
          *(v48 + 4) = v49;
          *(v48 + 5) = v51;
          v42 = v81;
        }

        v40 += v82;
        --v39;
      }

      while (v39);
    }

    else
    {
      v41 = _swiftEmptyArrayStorage;
    }

    v30 = v74;
    v33 = v75;
    v7 = v76;
    v12 = v77;
    if (!*(a1 + 16))
    {
      goto LABEL_32;
    }
  }

  else
  {
    v41 = _swiftEmptyArrayStorage;
    if (!*(a1 + 16))
    {
      goto LABEL_32;
    }
  }

  v54 = sub_1000EE808(0x6E69616D6F64, 0xE600000000000000);
  if ((v55 & 1) == 0)
  {
LABEL_32:

LABEL_9:

    v30 = 0;
    v33 = 0;
LABEL_10:
    v41 = 0;
    v44 = 0;
    v45 = 0;
LABEL_11:
    v46 = 0.0;
    goto LABEL_12;
  }

  v56 = v80;
  v83(v80, *(a1 + 56) + v54 * v82, v81);
  v44 = AnyValue.string.getter();
  v45 = v57;
  v85(v56, v81);
  if (!v45)
  {

    v30 = 0;
    v33 = 0;
    v41 = 0;
    v44 = 0;
    goto LABEL_11;
  }

  v58 = *(a1 + 16);
  v76 = v7;
  if (v58 && (v59 = sub_1000EE808(0x746E497465736572, 0xED00006C61767265), (v60 & 1) != 0))
  {
    v83(v12, *(a1 + 56) + v59 * v82, v81);
    v61 = 0;
  }

  else
  {
    v61 = 1;
  }

  v62 = v78;
  v63 = v81;
  (*(v78 + 56))(v12, v61, 1, v81);
  v77 = v12;
  v64 = v79;
  sub_1000044A4(v12, v79, &qword_10059E048, &qword_100437C90);
  v65 = *(v62 + 48);
  v78 = v62 + 48;
  v84 = v65;
  if (v65(v64, 1, v63) != 1)
  {
    v66 = v64;
    v46 = COERCE_DOUBLE(AnyValue.double.getter());
    v68 = v67;
    v85(v66, v63);
    if (v68)
    {
      goto LABEL_38;
    }

    result = sub_100005518(v77, &qword_10059E048, &qword_100437C90);
LABEL_12:
    v47 = 0;
    goto LABEL_13;
  }

  sub_100005518(v64, &qword_10059E048, &qword_100437C90);
LABEL_38:
  v70 = v76;
  v69 = v77;
  sub_1000044A4(v77, v76, &qword_10059E048, &qword_100437C90);
  if (v84(v70, 1, v63) == 1)
  {
    sub_100005518(v69, &qword_10059E048, &qword_100437C90);
    result = sub_100005518(v70, &qword_10059E048, &qword_100437C90);
  }

  else
  {
    v84 = AnyValue.int.getter();
    v72 = v71;
    sub_100005518(v69, &qword_10059E048, &qword_100437C90);
    result = (v85)(v70, v63);
    if ((v72 & 1) == 0)
    {
      v47 = 0;
      v46 = v84;
      goto LABEL_13;
    }
  }

  v46 = 0.0;
  v47 = 1;
LABEL_13:
  *a2 = v30;
  *(a2 + 8) = v33;
  *(a2 + 16) = v41;
  *(a2 + 24) = v44;
  *(a2 + 32) = v45;
  *(a2 + 40) = v46;
  *(a2 + 48) = v47;
  return result;
}

id sub_100166BFC(uint64_t a1, char a2, uint64_t a3)
{
  v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v6 setAccount:a3];
  v7 = String._bridgeToObjectiveC()();
  [v6 setDomain:v7];

  if ((*(a1 + 48) & 1) == 0)
  {
    [v6 setResetInterval:*(a1 + 40)];
  }

  v8 = objc_allocWithZone(AMSProcessInfo);
  v9 = String._bridgeToObjectiveC()();
  v10 = [v8 initWithBundleIdentifier:v9];

  v13 = *(a1 + 16);
  sub_100005518(&v13, &unk_10059DCA0, &qword_100437B50);

  [v6 setClientInfo:v10];

  if ((a2 & 1) == 0)
  {

LABEL_6:
    [v6 setIncludeAccountMatchStatus:1];
    return v6;
  }

  v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v11)
  {
    goto LABEL_6;
  }

  return v6;
}

unint64_t sub_100166DDC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v7 = -1 << *(a1 + 32);
  v8 = ~v7;
  v9 = *(a1 + 64);
  v10 = -v7;
  v45 = a1;
  v46 = a1 + 64;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v47 = v8;
  v48 = 0;
  v49 = v11 & v9;
  v50 = a2;
  v51 = a3;

  sub_100176F5C(&v43);
  v12 = *(&v43 + 1);
  if (!*(&v43 + 1))
  {
    goto LABEL_25;
  }

  v13 = v43;
  sub_1000828A8(v44, v42);
  v14 = *a5;
  result = sub_1000EE808(v13, v12);
  v17 = v14[2];
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v21 = v16;
  if (v14[3] < v20)
  {
    sub_1001ADE90(v20, a4 & 1);
    result = sub_1000EE808(v13, v12);
    if ((v21 & 1) == (v22 & 1))
    {
      goto LABEL_10;
    }

LABEL_8:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if ((a4 & 1) == 0)
  {
    v26 = result;
    sub_1001B0F98();
    result = v26;
    v23 = *a5;
    if (v21)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_10:
  v23 = *a5;
  if (v21)
  {
LABEL_11:
    v24 = result;

    v25 = (v23[7] + 32 * v24);
    sub_100005A00(v25);
    sub_1000828A8(v42, v25);
    goto LABEL_15;
  }

LABEL_13:
  v23[(result >> 6) + 8] |= 1 << result;
  v27 = (v23[6] + 16 * result);
  *v27 = v13;
  v27[1] = v12;
  result = sub_1000828A8(v42, (v23[7] + 32 * result));
  v28 = v23[2];
  v19 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (!v19)
  {
    v23[2] = v29;
LABEL_15:
    sub_100176F5C(&v43);
    v12 = *(&v43 + 1);
    if (*(&v43 + 1))
    {
      v21 = 1;
      do
      {
        v13 = v43;
        sub_1000828A8(v44, v42);
        v32 = *a5;
        result = sub_1000EE808(v13, v12);
        v34 = v32[2];
        v35 = (v33 & 1) == 0;
        v19 = __OFADD__(v34, v35);
        v36 = v34 + v35;
        if (v19)
        {
          goto LABEL_26;
        }

        a4 = v33;
        if (v32[3] < v36)
        {
          sub_1001ADE90(v36, 1);
          result = sub_1000EE808(v13, v12);
          if ((a4 & 1) != (v37 & 1))
          {
            goto LABEL_8;
          }
        }

        v38 = *a5;
        if (a4)
        {
          v30 = result;

          v31 = (v38[7] + 32 * v30);
          sub_100005A00(v31);
          sub_1000828A8(v42, v31);
        }

        else
        {
          v38[(result >> 6) + 8] |= 1 << result;
          v39 = (v38[6] + 16 * result);
          *v39 = v13;
          v39[1] = v12;
          result = sub_1000828A8(v42, (v38[7] + 32 * result));
          v40 = v38[2];
          v19 = __OFADD__(v40, 1);
          v41 = v40 + 1;
          if (v19)
          {
            goto LABEL_27;
          }

          v38[2] = v41;
        }

        sub_100176F5C(&v43);
        v12 = *(&v43 + 1);
      }

      while (*(&v43 + 1));
    }

LABEL_25:
    sub_10013CD30(v45);
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_10016710C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100085D40(&qword_10059E6D8, &qword_100437C98);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_10016717C(unint64_t result, unint64_t a2, __n128 a3)
{
  v3 = HIBYTE(a2) & 0xF;
  v4 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {

    return 0;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v23[0] = result;
      v23[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v3)
        {
          v4 = v3 - 1;
          if (v3 != 1)
          {
            v7 = 0;
            v15 = v23 + 1;
            while (1)
            {
              v16 = *v15 - 48;
              if (v16 > 9)
              {
                break;
              }

              if (!is_mul_ok(v7, 0xAuLL))
              {
                break;
              }

              v10 = __CFADD__(10 * v7, v16);
              v7 = 10 * v7 + v16;
              if (v10)
              {
                break;
              }

              ++v15;
              if (!--v4)
              {
                goto LABEL_64;
              }
            }
          }

          goto LABEL_63;
        }

LABEL_74:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v3)
        {
          v7 = 0;
          v18 = v23;
          while (1)
          {
            v19 = *v18 - 48;
            if (v19 > 9)
            {
              break;
            }

            if (!is_mul_ok(v7, 0xAuLL))
            {
              break;
            }

            v10 = __CFADD__(10 * v7, v19);
            v7 = 10 * v7 + v19;
            if (v10)
            {
              break;
            }

            ++v18;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_63;
      }

      if (v3)
      {
        v4 = v3 - 1;
        if (v3 != 1)
        {
          v7 = 0;
          v11 = v23 + 1;
          while (1)
          {
            v12 = *v11 - 48;
            if (v12 > 9)
            {
              break;
            }

            if (!is_mul_ok(v7, 0xAuLL))
            {
              break;
            }

            v10 = 10 * v7 >= v12;
            v7 = 10 * v7 - v12;
            if (!v10)
            {
              break;
            }

            ++v11;
            if (!--v4)
            {
              goto LABEL_64;
            }
          }
        }

        goto LABEL_63;
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = _StringObject.sharedUTF8.getter();
        v4 = v22;
      }

      v6 = *result;
      if (v6 == 43)
      {
        if (v4 >= 1)
        {
          if (--v4)
          {
            v7 = 0;
            if (result)
            {
              v13 = (result + 1);
              while (1)
              {
                v14 = *v13 - 48;
                if (v14 > 9)
                {
                  goto LABEL_63;
                }

                if (!is_mul_ok(v7, 0xAuLL))
                {
                  goto LABEL_63;
                }

                v10 = __CFADD__(10 * v7, v14);
                v7 = 10 * v7 + v14;
                if (v10)
                {
                  goto LABEL_63;
                }

                ++v13;
                if (!--v4)
                {
                  goto LABEL_64;
                }
              }
            }

            goto LABEL_62;
          }

          goto LABEL_63;
        }

        goto LABEL_73;
      }

      if (v6 != 45)
      {
        if (v4)
        {
          v7 = 0;
          if (result)
          {
            while (1)
            {
              v17 = *result - 48;
              if (v17 > 9)
              {
                goto LABEL_63;
              }

              if (!is_mul_ok(v7, 0xAuLL))
              {
                goto LABEL_63;
              }

              v10 = __CFADD__(10 * v7, v17);
              v7 = 10 * v7 + v17;
              if (v10)
              {
                goto LABEL_63;
              }

              ++result;
              if (!--v4)
              {
                goto LABEL_64;
              }
            }
          }

          goto LABEL_62;
        }

LABEL_63:
        v7 = 0;
        LOBYTE(v4) = 1;
        goto LABEL_64;
      }

      if (v4 >= 1)
      {
        if (--v4)
        {
          v7 = 0;
          if (result)
          {
            v8 = (result + 1);
            while (1)
            {
              v9 = *v8 - 48;
              if (v9 > 9)
              {
                goto LABEL_63;
              }

              if (!is_mul_ok(v7, 0xAuLL))
              {
                goto LABEL_63;
              }

              v10 = 10 * v7 >= v9;
              v7 = 10 * v7 - v9;
              if (!v10)
              {
                goto LABEL_63;
              }

              ++v8;
              if (!--v4)
              {
                goto LABEL_64;
              }
            }
          }

LABEL_62:
          LOBYTE(v4) = 0;
LABEL_64:
          v24 = v4;
          v20 = v4;
          goto LABEL_65;
        }

        goto LABEL_63;
      }

      __break(1u);
    }

    __break(1u);
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  v7 = sub_10016DBD8(result, a2, 10);
  v20 = v21;
LABEL_65:

  if (v20)
  {
    return 0;
  }

  else
  {
    return v7;
  }
}

unint64_t sub_10016747C(unint64_t result, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  v3 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    return 0;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v27[0] = result;
      v27[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v2)
        {
          v3 = v2 - 1;
          if (v2 != 1)
          {
            v6 = 0;
            v16 = v27 + 1;
            while (1)
            {
              v17 = *v16 - 48;
              if (v17 > 9)
              {
                break;
              }

              v18 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                break;
              }

              v6 = v18 + v17;
              if (__OFADD__(v18, v17))
              {
                break;
              }

              ++v16;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_61;
        }

LABEL_72:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v2)
        {
          v6 = 0;
          v21 = v27;
          while (1)
          {
            v22 = *v21 - 48;
            if (v22 > 9)
            {
              break;
            }

            v23 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v23 + v22;
            if (__OFADD__(v23, v22))
            {
              break;
            }

            ++v21;
            if (!--v2)
            {
              goto LABEL_60;
            }
          }
        }

        goto LABEL_61;
      }

      if (v2)
      {
        v3 = v2 - 1;
        if (v2 != 1)
        {
          v6 = 0;
          v10 = v27 + 1;
          while (1)
          {
            v11 = *v10 - 48;
            if (v11 > 9)
            {
              break;
            }

            v12 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v12 - v11;
            if (__OFSUB__(v12, v11))
            {
              break;
            }

            ++v10;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = _StringObject.sharedUTF8.getter();
        v3 = v26;
      }

      v5 = *result;
      if (v5 == 43)
      {
        if (v3 >= 1)
        {
          if (--v3)
          {
            v6 = 0;
            if (result)
            {
              v13 = (result + 1);
              while (1)
              {
                v14 = *v13 - 48;
                if (v14 > 9)
                {
                  goto LABEL_61;
                }

                v15 = 10 * v6;
                if ((v6 * 10) >> 64 != (10 * v6) >> 63)
                {
                  goto LABEL_61;
                }

                v6 = v15 + v14;
                if (__OFADD__(v15, v14))
                {
                  goto LABEL_61;
                }

                ++v13;
                if (!--v3)
                {
                  goto LABEL_62;
                }
              }
            }

            goto LABEL_60;
          }

          goto LABEL_61;
        }

        goto LABEL_71;
      }

      if (v5 != 45)
      {
        if (v3)
        {
          v6 = 0;
          if (result)
          {
            while (1)
            {
              v19 = *result - 48;
              if (v19 > 9)
              {
                goto LABEL_61;
              }

              v20 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v20 + v19;
              if (__OFADD__(v20, v19))
              {
                goto LABEL_61;
              }

              ++result;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_60;
        }

LABEL_61:
        v6 = 0;
        LOBYTE(v3) = 1;
        goto LABEL_62;
      }

      if (v3 >= 1)
      {
        if (--v3)
        {
          v6 = 0;
          if (result)
          {
            v7 = (result + 1);
            while (1)
            {
              v8 = *v7 - 48;
              if (v8 > 9)
              {
                goto LABEL_61;
              }

              v9 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v9 - v8;
              if (__OFSUB__(v9, v8))
              {
                goto LABEL_61;
              }

              ++v7;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

LABEL_60:
          LOBYTE(v3) = 0;
LABEL_62:
          v28 = v3;
          v24 = v3;
          goto LABEL_63;
        }

        goto LABEL_61;
      }

      __break(1u);
    }

    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v6 = sub_10016E15C(result, a2, 10);
  v24 = v25;
LABEL_63:

  if (v24)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

uint64_t sub_10016777C(uint64_t a1, unsigned __int8 a2)
{
  String.hash(into:)();
}

Swift::Int sub_1001678D0(uint64_t a1, unsigned __int8 a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int sub_100167A14(uint64_t a1, unsigned __int8 a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100167B7C(char a1)
{
  result = 0x6569766552707061;
  switch(a1)
  {
    case 1:
      result = 0x79754270696C63;
      break;
    case 2:
      result = 0x79754265726F7473;
      break;
    case 3:
      result = 0x6F725065726F7473;
      break;
    case 4:
      v3 = 0x5265726F7473;
      goto LABEL_14;
    case 5:
      result = 0x64705565726F7473;
      break;
    case 6:
    case 14:
      result = 0xD000000000000013;
      break;
    case 7:
      result = 0x65755165726F7473;
      break;
    case 8:
      result = 0x65725065726F7473;
      break;
    case 9:
      result = 0x73655265726F7473;
      break;
    case 10:
      result = 0x74736E4961746562;
      break;
    case 11:
      result = 0x6164705561746562;
      break;
    case 12:
      result = 0x6374615761746562;
      break;
    case 13:
      result = 0xD000000000000014;
      break;
    case 15:
      result = 0xD000000000000012;
      break;
    case 16:
      result = 0xD000000000000011;
      break;
    case 17:
      result = 0x6469766F72507674;
      break;
    case 18:
      result = 0xD000000000000010;
      break;
    case 19:
      result = 0xD000000000000010;
      break;
    case 20:
      v3 = 0x526863746177;
LABEL_14:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x6465000000000000;
      break;
    case 21:
      result = 0x6E496D6574737973;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_100167E2C(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_100167B7C(*a1);
  v5 = v4;
  if (v3 == sub_100167B7C(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_100167EB4()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_100167B7C(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100167F18(uint64_t a1)
{
  sub_100167B7C(*v1);
  String.hash(into:)();
}

Swift::Int sub_100167F6C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_100167B7C(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_100167FCC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10016F904(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_100167FFC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100167B7C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1001680D8(char a1)
{
  result = 0x6369706F74;
  switch(a1)
  {
    case 1:
      result = 0x436C6C6174736E69;
      break;
    case 2:
      result = 0x726156646C697562;
      break;
    case 3:
      result = 0x69537972616E6962;
      break;
    case 4:
      result = 0x7364496D616461;
      break;
    case 5:
      result = 0x7041746E65696C63;
      break;
    case 6:
      result = 0x646F43726F727265;
      break;
    case 7:
      result = 0x6D6F44726F727265;
      break;
    case 8:
      result = 0x707954746E657665;
      break;
    case 9:
      result = 0x446C6C6174736E69;
      break;
    case 10:
      result = 0x72676B6361427369;
      break;
    case 11:
      result = 0xD000000000000014;
      break;
    case 12:
      result = 0x6F724665726F7473;
      break;
    case 13:
      result = 0xD000000000000019;
      break;
    case 14:
      result = 0x73616552706F7473;
      break;
    case 15:
      result = 0xD000000000000010;
      break;
    case 16:
      result = 0xD000000000000011;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_100168314(uint64_t a1)
{
  String.hash(into:)();
}

unint64_t sub_10016844C@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10016FA64(*a1);
  *a2 = result;
  return result;
}

void sub_10016847C(uint64_t *a1@<X8>)
{
  v2 = 0xEA00000000006574;
  v3 = *v1;
  v4 = 0xEA00000000006C6CLL;
  v5 = 0x6174736E4977656ELL;
  v6 = 0xE800000000000000;
  v7 = 0x61746C6544617069;
  if (v3 != 5)
  {
    v7 = 0x554150496C6C7566;
    v6 = 0xED00006574616470;
  }

  v8 = 0x616470556C6C7566;
  v9 = 0xED00006C6C617473;
  if (v3 == 3)
  {
    v9 = 0xEA00000000006574;
  }

  else
  {
    v8 = 0x6E4941504977656ELL;
  }

  if (*v1 <= 4u)
  {
    v7 = v8;
    v6 = v9;
  }

  v10 = 0x6164705566666964;
  if (v3 != 1)
  {
    v10 = 0x65446E7265646F6DLL;
    v2 = 0xEB0000000061746CLL;
  }

  if (*v1)
  {
    v5 = v10;
    v4 = v2;
  }

  if (*v1 <= 2u)
  {
    v11 = v5;
  }

  else
  {
    v11 = v7;
  }

  if (*v1 <= 2u)
  {
    v12 = v4;
  }

  else
  {
    v12 = v6;
  }

  *a1 = v11;
  a1[1] = v12;
}

uint64_t sub_10016862C(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_1001680D8(*a1);
  v5 = v4;
  if (v3 == sub_1001680D8(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_1001686B4()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_1001680D8(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100168718(uint64_t a1)
{
  sub_1001680D8(*v1);
  String.hash(into:)();
}

Swift::Int sub_10016876C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_1001680D8(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1001687CC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10016FB78(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_1001687FC@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1001680D8(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_100168844@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10016FB78(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100168878(uint64_t a1)
{
  v2 = sub_10016D2F8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001688B4(uint64_t a1)
{
  v2 = sub_10016D2F8();

  return CodingKey.debugDescription.getter(a1, v2);
}

unsigned __int8 *sub_1001688F0(void *a1)
{
  v2 = type metadata accessor for AccountClientIdentifier();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v21[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v21[-1] - v7;
  v9 = type metadata accessor for ClientInfo();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v21[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  static AccountClientIdentifier.production.getter();
  (*(v3 + 16))(v6, v8, v2);
  ClientInfo.init(identifier:name:version:accountClientIdentifier:)();
  (*(v3 + 8))(v8, v2);
  v13 = sub_1000D6694(v12);
  (*(v10 + 8))(v12, v9);
  sub_1000C4F74(v21);

  v14 = v22;
  v15 = v23;
  v16 = sub_100005B60(v21, v22);
  v17 = sub_1000C56C0(v14, v15, v16);
  v18 = sub_100168B50(a1, v17);

  sub_100005A00(v21);
  return v18;
}

unsigned __int8 *sub_100168B50(void *a1, uint64_t a2)
{
  v5 = sub_10023E644(a1, @"log_code");
  if (!v5)
  {
    return sub_1000EF17C(_swiftEmptyArrayStorage);
  }

  v6 = v5;
  sub_100085D40(&qword_10059E838, &unk_100437EF8);
  v7 = swift_allocObject();
  *(v7 + 32) = @"UPP";
  *(v7 + 16) = xmmword_100436FD0;
  *(v7 + 40) = @"MNF";
  *&v92 = v6;
  __chkstk_darwin(v7);
  v89 = &v92;
  v9 = v8;
  v10 = @"MNF";
  v11 = sub_10019A9BC(sub_100170494, v88, v7);
  swift_setDeallocating();
  type metadata accessor for AppInstallLogCode(0);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  if ((v11 & 1) != 0 || (v12 = sub_10040916C(a1)) == 0 || (v13 = v12, v14 = [v12 longLongValue], v13, !v14))
  {
    v32 = sub_1000EF17C(_swiftEmptyArrayStorage);

    return v32;
  }

  v15 = v2;
  sub_100085D40(&unk_10059E4D0, &qword_10043A020);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_100434480;
  *(v16 + 32) = v14;
  *(&v93 + 1) = sub_100085D40(&qword_10059C410, &unk_100437F10);
  *&v92 = v16;
  sub_1000828A8(&v92, &v96);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v91[0] = _swiftEmptyDictionarySingleton;
  sub_1001B3A08(&v96, 0x7364496D616461, 0xE700000000000000, isUniquelyReferenced_nonNull_native);
  v18 = *&v91[0];
  v19 = v6;
  v20 = sub_100408E80(a1);
  v21 = sub_10016EB24(v19, v20);
  v22 = sub_100167B7C(v21);
  *(&v93 + 1) = &type metadata for String;
  *&v92 = v22;
  *(&v92 + 1) = v23;
  sub_1000828A8(&v92, &v96);
  v24 = swift_isUniquelyReferenced_nonNull_native();
  *&v91[0] = v18;
  sub_1001B3A08(&v96, 0x436C6C6174736E69, 0xEE00747865746E6FLL, v24);
  v25 = *&v91[0];
  v98 = *&v91[0];
  v26 = sub_10023E7A0(a1, @"metrics_fields");
  if (v26)
  {
    v27 = v26;
    v28 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    *&v96 = 0x746E6F4365676170;
    *(&v96 + 1) = 0xEB00000000747865;
    AnyHashable.init<A>(_:)();
    if (*(v28 + 16) && (v29 = sub_1000EE7C4(&v92), (v30 & 1) != 0))
    {
      sub_10009F6D0(*(v28 + 56) + 32 * v29, &v96);
      sub_1000B5BDC(&v92);

      sub_1000828A8(&v96, v91);
      v31 = swift_isUniquelyReferenced_nonNull_native();
      v94 = v25;
      sub_1001B3A08(v91, 0x746E6F4365676170, 0xEB00000000747865, v31);
      v98 = v94;
    }

    else
    {

      sub_1000B5BDC(&v92);
      sub_10016D4C4(0x746E6F4365676170, 0xEB00000000747865, &v96);
      sub_100005518(&v96, &unk_10059CC50, &qword_100435D80);
    }
  }

  if (sub_100408E18(a1))
  {
    if (sub_10023E0F8(a1, @"optimal_download_start"))
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v96 = 0u;
      v97 = 0u;
    }

    v92 = v96;
    v93 = v97;
    if (*(&v97 + 1))
    {
      if (swift_dynamicCast())
      {
        *&v96 = sub_10016FBCC();
        *(&v96 + 1) = v35;
        *&v91[0] = 58;
        *(&v91[0] + 1) = 0xE100000000000000;
        v94 = 0;
        v95 = 0xE000000000000000;
        v89 = sub_100003B3C();
        v90 = v89;
        v88[0] = &type metadata for String;
        v88[1] = v89;
        v36 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
        v38 = v37;

        v39 = HIBYTE(v38) & 0xF;
        v40 = v36 & 0xFFFFFFFFFFFFLL;
        if ((v38 & 0x2000000000000000) != 0)
        {
          v41 = HIBYTE(v38) & 0xF;
        }

        else
        {
          v41 = v36 & 0xFFFFFFFFFFFFLL;
        }

        if (!v41)
        {

LABEL_83:
          sub_10016D4C4(0xD000000000000013, 0x8000000100451B60, &v96);
          sub_100005518(&v96, &unk_10059CC50, &qword_100435D80);
          goto LABEL_85;
        }

        if ((v38 & 0x1000000000000000) != 0)
        {
          LOBYTE(v91[0]) = 0;
          v43 = sub_10016E15C(v36, v38, 10);
          v61 = v87;
LABEL_82:

          if ((v61 & 1) == 0)
          {
            *(&v93 + 1) = &type metadata for Int;
            *&v92 = v43;
            sub_1000828A8(&v92, &v96);
            v62 = v98;
            v63 = swift_isUniquelyReferenced_nonNull_native();
            *&v91[0] = v62;
            sub_1001B3A08(&v96, 0xD000000000000013, 0x8000000100451B60, v63);
            v98 = *&v91[0];
            goto LABEL_85;
          }

          goto LABEL_83;
        }

        if ((v38 & 0x2000000000000000) != 0)
        {
          *&v96 = v36;
          *(&v96 + 1) = v38 & 0xFFFFFFFFFFFFFFLL;
          if (v36 == 43)
          {
            if (v39)
            {
              if (--v39)
              {
                v43 = 0;
                v53 = &v96 + 1;
                while (1)
                {
                  v54 = *v53 - 48;
                  if (v54 > 9)
                  {
                    break;
                  }

                  v55 = 10 * v43;
                  if ((v43 * 10) >> 64 != (10 * v43) >> 63)
                  {
                    break;
                  }

                  v43 = v55 + v54;
                  if (__OFADD__(v55, v54))
                  {
                    break;
                  }

                  ++v53;
                  if (!--v39)
                  {
                    goto LABEL_81;
                  }
                }
              }

              goto LABEL_80;
            }

LABEL_104:
            __break(1u);
            return result;
          }

          if (v36 != 45)
          {
            if (v39)
            {
              v43 = 0;
              v58 = &v96;
              while (1)
              {
                v59 = *v58 - 48;
                if (v59 > 9)
                {
                  break;
                }

                v60 = 10 * v43;
                if ((v43 * 10) >> 64 != (10 * v43) >> 63)
                {
                  break;
                }

                v43 = v60 + v59;
                if (__OFADD__(v60, v59))
                {
                  break;
                }

                ++v58;
                if (!--v39)
                {
                  goto LABEL_81;
                }
              }
            }

            goto LABEL_80;
          }

          if (v39)
          {
            if (--v39)
            {
              v43 = 0;
              v47 = &v96 + 1;
              while (1)
              {
                v48 = *v47 - 48;
                if (v48 > 9)
                {
                  break;
                }

                v49 = 10 * v43;
                if ((v43 * 10) >> 64 != (10 * v43) >> 63)
                {
                  break;
                }

                v43 = v49 - v48;
                if (__OFSUB__(v49, v48))
                {
                  break;
                }

                ++v47;
                if (!--v39)
                {
                  goto LABEL_81;
                }
              }
            }

            goto LABEL_80;
          }
        }

        else
        {
          if ((v36 & 0x1000000000000000) != 0)
          {
            result = ((v38 & 0xFFFFFFFFFFFFFFFLL) + 32);
          }

          else
          {
            result = _StringObject.sharedUTF8.getter();
          }

          v42 = *result;
          if (v42 == 43)
          {
            if (v40 >= 1)
            {
              v39 = v40 - 1;
              if (v40 != 1)
              {
                v43 = 0;
                if (result)
                {
                  v50 = result + 1;
                  while (1)
                  {
                    v51 = *v50 - 48;
                    if (v51 > 9)
                    {
                      goto LABEL_80;
                    }

                    v52 = 10 * v43;
                    if ((v43 * 10) >> 64 != (10 * v43) >> 63)
                    {
                      goto LABEL_80;
                    }

                    v43 = v52 + v51;
                    if (__OFADD__(v52, v51))
                    {
                      goto LABEL_80;
                    }

                    ++v50;
                    if (!--v39)
                    {
                      goto LABEL_81;
                    }
                  }
                }

                goto LABEL_72;
              }

              goto LABEL_80;
            }

            goto LABEL_103;
          }

          if (v42 != 45)
          {
            if (v40)
            {
              v43 = 0;
              if (result)
              {
                while (1)
                {
                  v56 = *result - 48;
                  if (v56 > 9)
                  {
                    goto LABEL_80;
                  }

                  v57 = 10 * v43;
                  if ((v43 * 10) >> 64 != (10 * v43) >> 63)
                  {
                    goto LABEL_80;
                  }

                  v43 = v57 + v56;
                  if (__OFADD__(v57, v56))
                  {
                    goto LABEL_80;
                  }

                  ++result;
                  if (!--v40)
                  {
                    goto LABEL_72;
                  }
                }
              }

              goto LABEL_72;
            }

LABEL_80:
            v43 = 0;
            LOBYTE(v39) = 1;
            goto LABEL_81;
          }

          if (v40 >= 1)
          {
            v39 = v40 - 1;
            if (v40 != 1)
            {
              v43 = 0;
              if (result)
              {
                v44 = result + 1;
                while (1)
                {
                  v45 = *v44 - 48;
                  if (v45 > 9)
                  {
                    goto LABEL_80;
                  }

                  v46 = 10 * v43;
                  if ((v43 * 10) >> 64 != (10 * v43) >> 63)
                  {
                    goto LABEL_80;
                  }

                  v43 = v46 - v45;
                  if (__OFSUB__(v46, v45))
                  {
                    goto LABEL_80;
                  }

                  ++v44;
                  if (!--v39)
                  {
                    goto LABEL_81;
                  }
                }
              }

LABEL_72:
              LOBYTE(v39) = 0;
LABEL_81:
              LOBYTE(v91[0]) = v39;
              v61 = v39;
              goto LABEL_82;
            }

            goto LABEL_80;
          }

          __break(1u);
        }

        __break(1u);
LABEL_103:
        __break(1u);
        goto LABEL_104;
      }
    }

    else
    {
      sub_100005518(&v92, &unk_10059CC50, &qword_100435D80);
    }

LABEL_85:
    v64 = sub_10023E604(a1, @"optimal_download_duration");
    *(&v93 + 1) = &type metadata for Int;
    *&v92 = v64;
    sub_1000828A8(&v92, &v96);
    v65 = v98;
    v66 = swift_isUniquelyReferenced_nonNull_native();
    *&v91[0] = v65;
    sub_1001B3A08(&v96, 0xD000000000000016, 0x8000000100451B40, v66);
    v34 = *&v91[0];
    goto LABEL_86;
  }

  v34 = v98;
LABEL_86:
  v67 = sub_1000E3560();
  v68 = 0x72656D6F74737563;
  if (v67)
  {
    v68 = 0x6C616E7265746E69;
  }

  *(&v93 + 1) = &type metadata for String;
  *&v92 = v68;
  *(&v92 + 1) = 0xE800000000000000;
  sub_1000828A8(&v92, &v96);
  v69 = swift_isUniquelyReferenced_nonNull_native();
  *&v91[0] = v34;
  sub_1001B3A08(&v96, 0x726156646C697562, 0xEC000000746E6169, v69);
  v70 = *&v91[0];
  v71 = sub_100408E18(a1);
  *(&v93 + 1) = &type metadata for Bool;
  LOBYTE(v92) = v71;
  sub_1000828A8(&v92, &v96);
  v72 = swift_isUniquelyReferenced_nonNull_native();
  *&v91[0] = v70;
  sub_1001B3A08(&v96, 0x72676B6361427369, 0xEC000000646E756FLL, v72);
  v73 = *&v91[0];
  v98 = *&v91[0];
  if (sub_10023E0F8(a1, @"client_id"))
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v96 = 0u;
    v97 = 0u;
  }

  v74 = v15;
  v92 = v96;
  v93 = v97;
  if (*(&v97 + 1))
  {
    if (swift_dynamicCast())
    {
      *(&v93 + 1) = &type metadata for String;
      v92 = v91[0];
      sub_1000828A8(&v92, &v96);
      v75 = swift_isUniquelyReferenced_nonNull_native();
      *&v91[0] = v73;
      sub_1001B3A08(&v96, 0x7041746E65696C63, 0xE900000000000070, v75);
      v74 = v15;
      v73 = *&v91[0];
      v98 = *&v91[0];
    }
  }

  else
  {
    sub_100005518(&v92, &unk_10059CC50, &qword_100435D80);
  }

  v76 = (a2 + OBJC_IVAR___Bag_bag);
  v77 = *(a2 + OBJC_IVAR___Bag_bag + 24);
  v78 = sub_100005B60(v76, v77);
  v79 = sub_10016E778(v78, v74, v77);
  if (v80)
  {
    *(&v93 + 1) = &type metadata for String;
    *&v92 = v79;
    *(&v92 + 1) = v80;
    sub_1000828A8(&v92, &v96);
    v81 = swift_isUniquelyReferenced_nonNull_native();
    *&v91[0] = v73;
    sub_1001B3A08(&v96, 0x6449746E65696C63, 0xE800000000000000, v81);
    v73 = *&v91[0];
    v98 = *&v91[0];
  }

  v82 = [objc_opt_self() buildVersion];
  v83 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v85 = v84;

  *(&v93 + 1) = &type metadata for String;
  *&v92 = v83;
  *(&v92 + 1) = v85;
  sub_1000828A8(&v92, &v96);
  v86 = swift_isUniquelyReferenced_nonNull_native();
  *&v91[0] = v73;
  sub_1001B3A08(&v96, 0x4E646C697542736FLL, 0xED00007265626D75, v86);

  return *&v91[0];
}

unint64_t sub_100169860(void *a1, uint64_t a2)
{
  v3 = v2;
  sub_100085D40(&qword_10059E838, &unk_100437EF8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100436FD0;
  *(inited + 32) = @"UPP";
  *(inited + 40) = @"MNF";
  v7 = @"UPP";
  v8 = @"MNF";
  v9 = [a1 logCode];
  *&v45 = v9;
  v41 = &v45;
  v10 = sub_10019A9BC(sub_100170494, v40, inited);
  swift_setDeallocating();
  type metadata accessor for AppInstallLogCode(0);
  swift_arrayDestroy();

  if (v10)
  {
    return sub_1000EF17C(_swiftEmptyArrayStorage);
  }

  v12 = [a1 buyParams];
  v13 = String._bridgeToObjectiveC()();
  v14 = [v12 objectForKeyedSubscript:v13];

  if (v14)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v43 = 0u;
    v44 = 0u;
  }

  v45 = v43;
  v46 = v44;
  if (!*(&v44 + 1))
  {
    sub_100005518(&v45, &unk_10059CC50, &qword_100435D80);
    goto LABEL_10;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_10:
    v16 = _swiftEmptyDictionarySingleton;
    goto LABEL_11;
  }

  *(&v46 + 1) = &type metadata for String;
  v45 = v42;
  sub_1000828A8(&v45, &v43);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v42 = _swiftEmptyDictionarySingleton;
  sub_1001B3A08(&v43, 0x746E6F4365676170, 0xEB00000000747865, isUniquelyReferenced_nonNull_native);
  v16 = v42;
LABEL_11:
  v17 = [a1 itemID];
  v18 = [v17 longLongValue];

  if (v18)
  {
    sub_100085D40(&unk_10059DCD0, &unk_100437400);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_100434480;
    v20 = [a1 itemID];
    v21 = [v20 stringValue];

    v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v23;

    *(v19 + 32) = v22;
    *(v19 + 40) = v24;
    *(&v46 + 1) = sub_100085D40(&unk_10059DCA0, &qword_100437B50);
    *&v45 = v19;
    sub_1000828A8(&v45, &v43);
    v25 = swift_isUniquelyReferenced_nonNull_native();
    *&v42 = v16;
    sub_1001B3A08(&v43, 0x7364496D616461, 0xE700000000000000, v25);
    v16 = v42;
  }

  v26 = sub_10016EB24([a1 logCode], objc_msgSend(a1, "updateType") != 0);
  v27 = sub_100167B7C(v26);
  *(&v46 + 1) = &type metadata for String;
  *&v45 = v27;
  *(&v45 + 1) = v28;
  sub_1000828A8(&v45, &v43);
  v29 = swift_isUniquelyReferenced_nonNull_native();
  *&v42 = v16;
  sub_1001B3A08(&v43, 0x436C6C6174736E69, 0xEE00747865746E6FLL, v29);
  v30 = v42;
  sub_1000056D0(a2 + OBJC_IVAR___Bag_bag, &v43);
  sub_100085D40(&qword_10059C3D0, &qword_1004353A0);
  sub_100085D40(&unk_10059CE80, &unk_100436170);
  swift_dynamicCast();
  v31 = *(&v46 + 1);
  v32 = sub_100005B60(&v45, *(&v46 + 1));
  v33 = *(v31 - 8);
  __chkstk_darwin(v32);
  v35 = &v40[-((v34 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v33 + 16))(v35);
  v36 = sub_10016E778(v35, v3, v31);
  v38 = v37;
  (*(v33 + 8))(v35, v31);
  sub_100005A00(&v45);
  if (!v38)
  {
    return v30;
  }

  *(&v46 + 1) = &type metadata for String;
  *&v45 = v36;
  *(&v45 + 1) = v38;
  sub_1000828A8(&v45, &v43);
  v39 = swift_isUniquelyReferenced_nonNull_native();
  *&v42 = v30;
  sub_1001B3A08(&v43, 0x6449746E65696C63, 0xE800000000000000, v39);
  return v42;
}

id sub_100169F54(void *a1, void *a2, uint64_t a3, void *a4, char *a5)
{
  v311 = a4;
  v296 = a3;
  ObjectType = swift_getObjectType();
  v10 = type metadata accessor for Date();
  v297 = *(v10 - 8);
  v11 = __chkstk_darwin(v10);
  v287 = &v278 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v291 = &v278 - v14;
  __chkstk_darwin(v13);
  v283 = &v278 - v15;
  v16 = sub_100085D40(&qword_10059CB40, &qword_100434710);
  v17 = __chkstk_darwin(v16 - 8);
  v286 = &v278 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v288 = &v278 - v20;
  v21 = __chkstk_darwin(v19);
  v295 = &v278 - v22;
  v23 = __chkstk_darwin(v21);
  v284 = &v278 - v24;
  __chkstk_darwin(v23);
  v285 = &v278 - v25;
  v304 = type metadata accessor for Logger();
  v303 = *(v304 - 8);
  v26 = __chkstk_darwin(v304);
  v292 = &v278 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __chkstk_darwin(v26);
  v30 = &v278 - v29;
  v31 = __chkstk_darwin(v28);
  v290 = &v278 - v32;
  v33 = __chkstk_darwin(v31);
  v293 = &v278 - v34;
  v35 = __chkstk_darwin(v33);
  v294 = &v278 - v36;
  v37 = __chkstk_darwin(v35);
  v289 = &v278 - v38;
  __chkstk_darwin(v37);
  v300 = &v278 - v39;
  v40 = &v5[OBJC_IVAR____TtC9appstored20AppInstallationEvent_topic];
  v40->isa = 0xD000000000000014;
  v40->info = 0x8000000100451A10;
  v309 = v40;
  v308 = OBJC_IVAR____TtC9appstored20AppInstallationEvent_supplementalFields;
  *&v5[OBJC_IVAR____TtC9appstored20AppInstallationEvent_supplementalFields] = &off_100509A40;
  *&v5[OBJC_IVAR____TtC9appstored20AppInstallationEvent_defaultIdentifierResetInterval] = 0x40F5180000000000;
  v5[OBJC_IVAR____TtC9appstored20AppInstallationEvent_manateeDomain] = 0;
  v41 = &v5[OBJC_IVAR____TtC9appstored20AppInstallationEvent_identifierResetIntervalBagKey];
  *v41 = 0xD000000000000025;
  v41[1] = 0x8000000100451A30;
  v5[OBJC_IVAR____TtC9appstored20AppInstallationEvent_includeClientID] = 1;
  v42 = &v5[OBJC_IVAR____TtC9appstored20AppInstallationEvent_diagnosticsSubmissionBugType];
  *v42 = 0;
  v42[1] = 0;
  v5[OBJC_IVAR____TtC9appstored20AppInstallationEvent_preventSampling] = 2;
  v305 = OBJC_IVAR____TtC9appstored20AppInstallationEvent_basePropertiesToRemove;
  *&v5[OBJC_IVAR____TtC9appstored20AppInstallationEvent_basePropertiesToRemove] = 0;
  v306 = OBJC_IVAR____TtC9appstored20AppInstallationEvent_eventTimeOverride;
  *&v5[OBJC_IVAR____TtC9appstored20AppInstallationEvent_eventTimeOverride] = 0;
  v43 = &v5[OBJC_IVAR____TtC9appstored20AppInstallationEvent_eventType];
  strcpy(&v5[OBJC_IVAR____TtC9appstored20AppInstallationEvent_eventType], "packageInstall");
  HIBYTE(v43->info) = -18;
  v307 = v43;
  v44 = sub_100340328(a1, @"log_code");
  if (!v44)
  {

    v53 = 0;
    v54 = v5;
    goto LABEL_19;
  }

  v45 = v44;
  v299 = a2;
  v280 = v30;
  v282 = v10;
  v310 = a1;
  v301 = a5;
  v298 = ObjectType;
  v302 = v5;
  sub_100085D40(&qword_10059E838, &unk_100437EF8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100436FD0;
  *(inited + 32) = @"UPP";
  *(inited + 40) = @"MNF";
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v47 = @"UPP";
  v48 = @"MNF";
  v49 = v45;
  v50 = String._bridgeToObjectiveC()();

  *&aBlock = v50;
  __chkstk_darwin(v51);
  *(&v278 - 2) = &aBlock;
  v52 = sub_10019A9BC(sub_10016FB58, (&v278 - 4), inited);
  swift_setDeallocating();
  type metadata accessor for AppInstallLogCode(0);
  swift_arrayDestroy();

  if ((v52 & 1) == 0)
  {
    v279 = 0;
    v281 = v49;
    v55 = v310;
    if ([v310 valueForProperty:@"client_id"])
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v320 = 0u;
      v321 = 0u;
    }

    v54 = v302;
    v56 = v300;
    v315 = v321;
    aBlock = v320;
    if (*(&v321 + 1))
    {
      if (swift_dynamicCast())
      {
        v57 = v312;
        v58 = v313;
        v59 = (v54 + OBJC_IVAR____TtC9appstored20AppInstallationEvent_clientApp);
        *v59 = v312;
        v59[1] = v58;
        goto LABEL_15;
      }
    }

    else
    {
      sub_100005518(&aBlock, &unk_10059CC50, &qword_100435D80);
    }

    static Logger.metrics.getter();
    v60 = v55;
    v61 = Logger.logObject.getter();
    v62 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      *v63 = 138412290;
      v65 = sub_10029430C(v60);
      *(v63 + 4) = v65;
      *v64 = v65;
      _os_log_impl(&_mh_execute_header, v61, v62, "Failed to find an AppInstallPropertyClientID for install: %@", v63, 0xCu);
      sub_100005518(v64, &unk_10059C250, &qword_100434830);
      v54 = v302;

      v55 = v310;
    }

    (*(v303 + 8))(v56, v304);
    v57 = 0;
    v58 = 0;
    v66 = v54 + OBJC_IVAR____TtC9appstored20AppInstallationEvent_clientApp;
    *v66 = 0;
    v66[1] = 0;
LABEL_15:
    v67 = v311;
    v68 = v301;
    v69 = &v301[OBJC_IVAR___Bag_bag];

    v70 = sub_100172774(v69, v57, v58);
    v72 = v71;

    if (!v70)
    {

      v75 = v281;
      v53 = 1;
      goto LABEL_19;
    }

    v308 = v69;
    *(v54 + OBJC_IVAR____TtC9appstored20AppInstallationEvent_sampleRate) = v72;
    v73 = sub_10029430C(v55);
    *(v54 + OBJC_IVAR____TtC9appstored20AppInstallationEvent_logKey) = v73;
    if (sub_100340114(v55, @"preorder"))
    {

      v74 = 8;
    }

    else
    {
      v77 = sub_100340114(v55, @"redownload");
      v78 = v281;
      if (v77)
      {

        v74 = 4;
      }

      else
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v79 = String._bridgeToObjectiveC()();

        v80 = sub_1002942AC(v55);
        v74 = sub_10016EB24(v79, v80);
      }
    }

    *(v54 + OBJC_IVAR____TtC9appstored20AppInstallationEvent_context) = v74;
    v81 = sub_100340244(v55, @"failure_error");
    if (!v81)
    {
      v89 = v54 + OBJC_IVAR____TtC9appstored20AppInstallationEvent_errorCode;
      *v89 = 0;
      v89[8] = 1;
      v90 = v54 + OBJC_IVAR____TtC9appstored20AppInstallationEvent_errorDomain;
      *v90 = 0;
      v90[1] = 0;
LABEL_44:
      v105 = v299;
LABEL_45:
      v125 = v105;
      v126 = sub_1002942AC(v55);
      v311 = v125;
      *(v54 + OBJC_IVAR____TtC9appstored20AppInstallationEvent_packageType) = sub_10016F958(v125, v126);
      if ([v55 valueForProperty:@"metrics_fields"])
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {
        v320 = 0u;
        v321 = 0u;
      }

      v315 = v321;
      aBlock = v320;
      if (*(&v321 + 1))
      {
        sub_100085D40(&qword_10059D9B8, &qword_1004375E0);
        if (swift_dynamicCast())
        {
          v127 = v318;
          goto LABEL_53;
        }
      }

      else
      {
        sub_100005518(&aBlock, &unk_10059CC50, &qword_100435D80);
      }

      v127 = sub_1000EF040(_swiftEmptyArrayStorage);
LABEL_53:
      *(v54 + OBJC_IVAR____TtC9appstored20AppInstallationEvent_additionalFields) = v127;
      v128 = sub_100340328(v55, @"storefront");
      if (v128)
      {
        v129 = v128;
        v130 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v132 = v131;

        v134 = sub_10016717C(v130, v132, v133);
        if ((v135 & 1) == 0)
        {
          v136 = 0;
          goto LABEL_77;
        }
      }

      else
      {
        v137 = sub_1002943F0(v55);
        if (v137)
        {
          v138 = v137;
          v139 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v141 = v140;

          v142 = objc_allocWithZone(LSApplicationRecord);
          v143 = v139;
          v144 = v279;
          v145 = sub_1001914DC(v143, v141, 0);
          if (v144)
          {
          }

          else
          {
            v152 = v145;
            if (v145)
            {
              v275 = [v145 iTunesMetadata];
              v276 = [v275 storeFront];

              if (v276)
              {
                v151 = [v152 iTunesMetadata];
                v134 = [v151 storeFront];
                v136 = 0;
                goto LABEL_76;
              }
            }
          }
        }

        v134 = 0;
      }

      v146 = sub_100340154(v55, @"account_id");
      if (!v146)
      {
        goto LABEL_66;
      }

      v147 = v146;
      result = [objc_opt_self() defaultStore];
      if (!result)
      {
LABEL_171:
        __break(1u);
        goto LABEL_172;
      }

      v148 = result;
      v149 = [v147 stringValue];
      if (!v149)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v149 = String._bridgeToObjectiveC()();
      }

      v150 = [v148 accountWithIdentifier:v149];

      if (v150)
      {
        v151 = v150;
        v152 = v151;
        v54 = v302;
        v55 = v310;
      }

      else
      {
LABEL_66:
        result = [objc_opt_self() defaultStore];
        if (!result)
        {
LABEL_172:
          __break(1u);
          return result;
        }

        v153 = result;
        v151 = [result ams_activeiTunesAccount];

        v54 = v302;
        v55 = v310;
        if (!v151)
        {
          v136 = 1;
          goto LABEL_77;
        }

        v152 = 0;
      }

      v154 = [v151 ams_storefront];
      if (v154)
      {
        v155 = v154;
        v156 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v158 = v157;

        v159 = sub_100142A98(v156, v158);
        if (v159)
        {
          v160 = v159;
          v134 = [v159 unsignedLongLongValue];

          v136 = 0;
        }

        else
        {
          v136 = 1;
        }

        v55 = v310;
      }

      else
      {
        v136 = 1;
      }

LABEL_76:

LABEL_77:
      v161 = v54 + OBJC_IVAR____TtC9appstored20AppInstallationEvent_storeFrontID;
      *v161 = v134;
      v161[8] = v136;
      v162 = sub_100294688(v55);
      if (v162)
      {
        v163 = v162;
        v164 = [v162 stringValue];

        v165 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v167 = v166;

        v168 = v294;
LABEL_79:
        sub_100085D40(&unk_10059DCD0, &unk_100437400);
        v169 = swift_allocObject();
        *(v169 + 1) = xmmword_100434480;
        v169[4] = v165;
        v169[5] = v167;
        goto LABEL_89;
      }

      if (sub_100167B7C(*(v54 + OBJC_IVAR____TtC9appstored20AppInstallationEvent_context)) == 0x6E496D6574737973 && v170 == 0xED00006C6C617473)
      {

        v168 = v294;
      }

      else
      {
        v171 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v168 = v294;
        if ((v171 & 1) == 0)
        {
          goto LABEL_86;
        }
      }

      v172 = sub_1002943F0(v55);
      if (v172)
      {
        v173 = v172;
        v174 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v176 = v175;

        v177 = *(v308 + 3);
        v178 = *(v308 + 4);
        sub_100005B60(v308, v177);
        v179 = sub_100148BA4(v174, v176, v177, v178);
        LOBYTE(v174) = v180;

        if ((v174 & 1) == 0)
        {
          *&aBlock = v179;
          v165 = dispatch thunk of CustomStringConvertible.description.getter();
          v167 = v277;
          goto LABEL_79;
        }
      }

LABEL_86:
      v181 = v289;
      static Logger.metrics.getter();
      v182 = v55;
      v183 = Logger.logObject.getter();
      v184 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v183, v184))
      {
        v185 = swift_slowAlloc();
        v186 = swift_slowAlloc();
        *v185 = 138412290;
        v187 = sub_10029430C(v182);
        *(v185 + 4) = v187;
        *v186 = v187;
        _os_log_impl(&_mh_execute_header, v183, v184, "Failed to find an item ID for install: %@", v185, 0xCu);
        sub_100005518(v186, &unk_10059C250, &qword_100434830);

        v181 = v289;
      }

      (*(v303 + 8))(v181, v304);
      v169 = _swiftEmptyArrayStorage;
LABEL_89:
      *(v54 + OBJC_IVAR____TtC9appstored20AppInstallationEvent_adamIDs) = v169;
      v188 = sub_1001FBB74(v311);
      sub_100085D40(&qword_10059C510, &unk_100435A80);
      v189 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      v190 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      if (*(v189 + 16) && (v192 = sub_1000EE808(v190, v191), (v193 & 1) != 0))
      {
        sub_10009F6D0(*(v189 + 56) + 32 * v192, &aBlock);
      }

      else
      {
        v315 = 0u;
        aBlock = 0u;
      }

      if (*(&v315 + 1))
      {
        if (swift_dynamicCast())
        {
          v194 = 0;
          v195 = v320;
          goto LABEL_100;
        }
      }

      else
      {
        sub_100005518(&aBlock, &qword_10059E840, &qword_100437F08);
      }

      static Logger.metrics.getter();
      v196 = v55;
      v197 = Logger.logObject.getter();
      v198 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v197, v198))
      {
        v199 = swift_slowAlloc();
        v200 = swift_slowAlloc();
        *v199 = 138412290;
        v201 = sub_10029430C(v196);
        *(v199 + 4) = v201;
        *v200 = v201;
        _os_log_impl(&_mh_execute_header, v197, v198, "Failed to find the disk size for install: %@", v199, 0xCu);
        sub_100005518(v200, &unk_10059C250, &qword_100434830);
      }

      (*(v303 + 8))(v168, v304);
      v195 = 0;
      v194 = 1;
LABEL_100:
      v202 = v54 + OBJC_IVAR____TtC9appstored20AppInstallationEvent_binarySize;
      *v202 = v195;
      v202[8] = v194;
      *(v54 + OBJC_IVAR____TtC9appstored20AppInstallationEvent_isBackground) = sub_100294244(v55);
      v203 = sub_1000E3560();
      v204 = 0x72656D6F74737563;
      if (v203)
      {
        v204 = 0x6C616E7265746E69;
      }

      v205 = (v54 + OBJC_IVAR____TtC9appstored20AppInstallationEvent_buildVariant);
      *v205 = v204;
      v205[1] = 0xE800000000000000;
      if (!sub_1002942AC(v55))
      {
        v207 = 0;
        v208 = v54 + OBJC_IVAR____TtC9appstored20AppInstallationEvent_updateReleaseDate;
        *v208 = 0;
        v209 = 1;
        v208[8] = 1;
        goto LABEL_124;
      }

      *&v320 = 0x44657361656C6572;
      *(&v320 + 1) = 0xEB00000000657461;
      v206 = [v67 __swift_objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
      swift_unknownObjectRelease();
      if (v206)
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {
        v320 = 0u;
        v321 = 0u;
      }

      v315 = v321;
      aBlock = v320;
      if (*(&v321 + 1))
      {
        sub_10009FAD4(0, &qword_10059CBB0, NSNumber_ptr);
        if (swift_dynamicCast())
        {
          v210 = v318;
          v211 = [v318 integerValue];

          v212 = 0;
          goto LABEL_114;
        }
      }

      else
      {
        sub_100005518(&aBlock, &unk_10059CC50, &qword_100435D80);
      }

      static Logger.metrics.getter();
      v213 = v55;
      v214 = Logger.logObject.getter();
      v215 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v214, v215))
      {
        v216 = swift_slowAlloc();
        v217 = swift_slowAlloc();
        *v216 = 138412290;
        v218 = sub_10029430C(v213);
        *(v216 + 4) = v218;
        *v217 = v218;
        _os_log_impl(&_mh_execute_header, v214, v215, "No update release date was found for install: %@", v216, 0xCu);
        sub_100005518(v217, &unk_10059C250, &qword_100434830);
      }

      (*(v303 + 8))(v293, v304);
      v211 = 0;
      v212 = 1;
LABEL_114:
      v219 = v54 + OBJC_IVAR____TtC9appstored20AppInstallationEvent_updateReleaseDate;
      *v219 = v211;
      v219[8] = v212;
      strcpy(&v320, "discoveredDate");
      HIBYTE(v320) = -18;
      v220 = [v67 __swift_objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
      swift_unknownObjectRelease();
      if (v220)
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {
        v320 = 0u;
        v321 = 0u;
      }

      v221 = v290;
      v315 = v321;
      aBlock = v320;
      if (*(&v321 + 1))
      {
        sub_10009FAD4(0, &qword_10059CBB0, NSNumber_ptr);
        if (swift_dynamicCast())
        {
          v222 = v318;
          v207 = [v318 integerValue];

          v209 = 0;
          goto LABEL_124;
        }
      }

      else
      {
        sub_100005518(&aBlock, &unk_10059CC50, &qword_100435D80);
      }

      static Logger.metrics.getter();
      v223 = v55;
      v224 = Logger.logObject.getter();
      v225 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v224, v225))
      {
        v226 = swift_slowAlloc();
        v227 = swift_slowAlloc();
        *v226 = 138412290;
        v228 = sub_10029430C(v223);
        *(v226 + 4) = v228;
        *v227 = v228;
        _os_log_impl(&_mh_execute_header, v224, v225, "No update discovered date was found for install: %@", v226, 0xCu);
        sub_100005518(v227, &unk_10059C250, &qword_100434830);
      }

      (*(v303 + 8))(v221, v304);
      v207 = 0;
      v209 = 1;
LABEL_124:
      v229 = v296;
      v230 = v54 + OBJC_IVAR____TtC9appstored20AppInstallationEvent_updateDiscovered;
      *v230 = v207;
      v230[8] = v209;
      switch(v229)
      {
        case -20:
          v231 = 0xE500000000000000;
          v232 = 0x726F727265;
          break;
        case -30:
          v231 = 0xE600000000000000;
          v232 = 0x6C65636E6163;
          break;
        case -40:
          v231 = 0xE800000000000000;
          v232 = 0x6574656C706D6F63;
          break;
        default:
          v231 = 0xE700000000000000;
          v232 = 0x6E776F6E6B6E75;
          break;
      }

      v233 = v67;
      v234 = (v54 + OBJC_IVAR____TtC9appstored20AppInstallationEvent_stopReason);
      *v234 = v232;
      v234[1] = v231;
      if ([v55 valueForProperty:@"timestamp"])
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {
        v320 = 0u;
        v321 = 0u;
      }

      v235 = v297;
      v236 = v295;
      v315 = v321;
      aBlock = v320;
      if (*(&v321 + 1))
      {
        v237 = v282;
        v238 = swift_dynamicCast();
        v239 = v235[7];
        v239(v236, v238 ^ 1u, 1, v237);
        v240 = v235[6];
        if (v240(v236, 1, v237) != 1)
        {
          v241 = v236;
          v242 = v235[4];
          v242(v291, v241, v237);
          if ([v310 valueForProperty:@"install_finished_timestamp"])
          {
            _bridgeAnyObjectToAny(_:)();
            swift_unknownObjectRelease();
          }

          else
          {
            v320 = 0u;
            v321 = 0u;
          }

          v254 = v287;
          v315 = v321;
          aBlock = v320;
          if (*(&v321 + 1))
          {
            v255 = v288;
            v256 = v282;
            v257 = swift_dynamicCast();
            v239(v255, v257 ^ 1u, 1, v256);
            if (v240(v255, 1, v256) != 1)
            {
              goto LABEL_151;
            }
          }

          else
          {
            sub_100005518(&aBlock, &unk_10059CC50, &qword_100435D80);
            v255 = v288;
            v239(v288, 1, 1, v282);
          }

          static Logger.metrics.getter();
          v258 = v310;
          v259 = Logger.logObject.getter();
          v260 = static os_log_type_t.fault.getter();

          if (os_log_type_enabled(v259, v260))
          {
            v261 = swift_slowAlloc();
            v262 = swift_slowAlloc();
            *v261 = 138412290;
            v263 = sub_10029430C(v258);
            *(v261 + 4) = v263;
            *v262 = v263;
            _os_log_impl(&_mh_execute_header, v259, v260, "Failed to find install finished timestamp for install: %@", v261, 0xCu);
            sub_100005518(v262, &unk_10059C250, &qword_100434830);
            v254 = v287;

            v255 = v288;
          }

          (*(v303 + 8))(v280, v304);
LABEL_151:
          v264 = v286;
          sub_1001175D8(v255, v286);
          v265 = v282;
          if (v240(v264, 1, v282) == 1)
          {
            Date.init()();
            v266 = v240(v264, 1, v265);
            v54 = v302;
            v252 = v298;
            v244 = v310;
            if (v266 != 1)
            {
              sub_100005518(v264, &qword_10059CB40, &qword_100434710);
            }
          }

          else
          {
            v242(v254, v264, v265);
            v54 = v302;
            v252 = v298;
            v244 = v310;
          }

          v267 = v291;
          Date.timeIntervalSince(_:)();
          v269 = v268;

          v270 = *(v297 + 8);
          v270(v254, v265);
          result = (v270)(v267, v265);
          v271 = v269 * 1000.0;
          v272 = COERCE__INT64(fabs(v269 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL;
          if (v269 * 1000.0 >= 0.0)
          {
            if (v272)
            {
              __break(1u);
              goto LABEL_169;
            }
          }

          else
          {
            v271 = 0.0;
          }

          if (v271 > -1.0)
          {
            if (v271 < 1.84467441e19)
            {
              v273 = v54 + OBJC_IVAR____TtC9appstored20AppInstallationEvent_installDuration;
              *v273 = v271;
              v273[8] = 0;
              sub_100005518(v255, &qword_10059CB40, &qword_100434710);
LABEL_161:
              v319.receiver = v54;
              v319.super_class = v252;
              v274 = objc_msgSendSuper2(&v319, "init");

              return v274;
            }

            goto LABEL_170;
          }

LABEL_169:
          __break(1u);
LABEL_170:
          __break(1u);
          goto LABEL_171;
        }
      }

      else
      {
        sub_100005518(&aBlock, &unk_10059CC50, &qword_100435D80);
        (v235[7])(v236, 1, 1, v282);
      }

      sub_100005518(v236, &qword_10059CB40, &qword_100434710);
      v243 = v292;
      static Logger.metrics.getter();
      v244 = v310;
      v245 = v310;
      v246 = Logger.logObject.getter();
      v247 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v246, v247))
      {
        v248 = swift_slowAlloc();
        v249 = swift_slowAlloc();
        *v248 = 138412290;
        v250 = sub_10029430C(v245);
        *(v248 + 4) = v250;
        *v249 = v250;
        _os_log_impl(&_mh_execute_header, v246, v247, "Failed to find install start timestamp for install: %@", v248, 0xCu);
        sub_100005518(v249, &unk_10059C250, &qword_100434830);

        v251 = v281;
      }

      else
      {
        v251 = v246;
        v246 = v281;
      }

      v252 = v298;

      (*(v303 + 8))(v243, v304);
      v253 = v54 + OBJC_IVAR____TtC9appstored20AppInstallationEvent_installDuration;
      *v253 = 0;
      v253[8] = 1;
      goto LABEL_161;
    }

    v82 = v81;
    v83 = _convertErrorToNSError(_:)();
    v84 = swift_allocObject();
    *(v84 + 16) = 0;
    *(v84 + 24) = 0;
    v85 = swift_allocObject();
    *(v85 + 16) = 0;
    *(v85 + 24) = 1;
    v86 = swift_allocObject();
    *(v86 + 16) = v84;
    *(v86 + 24) = v85;
    v316 = sub_1001701A0;
    v317 = v86;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v315 = sub_10016C630;
    *(&v315 + 1) = &unk_1005104C0;
    v87 = _Block_copy(&aBlock);

    sub_100342BCC(v83, v87);
    _Block_release(v87);
    swift_beginAccess();
    if (*(v85 + 24))
    {
      v88 = [(__CFString *)v83 code];
    }

    else
    {
      v88 = *(v85 + 16);
    }

    v54 = v302;
    v91 = &v302[OBJC_IVAR____TtC9appstored20AppInstallationEvent_errorCode];
    *v91 = v88;
    v91[8] = 0;
    swift_beginAccess();
    v92 = *(v84 + 24);
    v55 = v310;
    v309 = v83;
    if (v92)
    {
      v93 = *(v84 + 16);
      v94 = v92;
    }

    else
    {
      v95 = [(__CFString *)v83 domain];
      v93 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v94 = v96;

      v55 = v310;
    }

    v97 = (v54 + OBJC_IVAR____TtC9appstored20AppInstallationEvent_errorDomain);
    *v97 = v93;
    v97[1] = v94;

    if (sub_1000E3560() && (_s3__C4CodeOMa_0(0), *&aBlock = 515, sub_1001701C0(&qword_10059BAD0, 255, _s3__C4CodeOMa_0, &unk_100434244), (static _ErrorCodeProtocol.~= infix(_:_:)() & 1) != 0))
    {
      v98 = String._bridgeToObjectiveC()();
      v306 = objc_opt_self();
      v307 = v98;
      v99 = sub_1003D3EA8(v306, v98);
      if (v99)
      {
        v100 = v284;
        v101 = v99;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v102 = 0;
        v103 = v285;
      }

      else
      {
        v102 = 1;
        v103 = v285;
        v100 = v284;
      }

      v106 = v297;
      v107 = v100;
      v108 = v100;
      v109 = v282;
      (*(v297 + 56))(v107, v102, 1, v282);
      sub_100117568(v108, v103);
      if ((*(v106 + 48))(v103, 1, v109) == 1)
      {
        sub_100005518(v103, &qword_10059CB40, &qword_100434710);
LABEL_43:
        v112 = v283;
        Date.init()();
        isa = Date._bridgeToObjectiveC()().super.isa;
        (*(v297 + 8))(v112, v282);
        sub_1003D4024(v306, isa, v307);

        v114 = [objc_opt_self() callStackSymbols];
        v115 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        *&aBlock = v115;
        sub_100085D40(&unk_10059DCA0, &qword_100437B50);
        sub_1001546E0();
        v116 = BidirectionalCollection<>.joined(separator:)();
        v306 = v82;
        v118 = v117;

        v119 = objc_allocWithZone(PresentTapToRadarRequestFlow);
        v120 = String._bridgeToObjectiveC()();
        v121 = String._bridgeToObjectiveC()();
        v122 = sub_1002CC188(v119, v120, v121);

        v55 = v310;
        v123 = swift_allocObject();
        *(v123 + 16) = v116;
        *(v123 + 24) = v118;
        v316 = sub_100170208;
        v317 = v123;
        *&aBlock = _NSConcreteStackBlock;
        *(&aBlock + 1) = 1107296256;
        *&v315 = sub_10016C688;
        *(&v315 + 1) = &unk_100510510;
        v124 = _Block_copy(&aBlock);

        sub_1002CC840(v122, v124);
        _Block_release(v124);
        sub_1002CC240(v122);

        v67 = v311;
        goto LABEL_44;
      }

      v110 = Date._bridgeToObjectiveC()().super.isa;
      (*(v106 + 8))(v103, v109);
      v111 = sub_100252570(v110, 86400.0);

      if (v111)
      {
        goto LABEL_43;
      }

      v105 = v299;
      v104 = v307;
    }

    else
    {

      v104 = v309;
      v105 = v299;
    }

    v67 = v311;
    goto LABEL_45;
  }

  v53 = 0;
  v54 = v302;
LABEL_19:

  if (v53)
  {
  }

  swift_deallocPartialClassInstance();
  return 0;
}

uint64_t sub_10016C56C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = _convertErrorToNSError(_:)();
  v6 = [v5 domain];
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  swift_beginAccess();
  *(a2 + 16) = v7;
  *(a2 + 24) = v9;

  v10 = [v5 code];

  swift_beginAccess();
  *(a3 + 16) = v10;
  *(a3 + 24) = 0;
  return 1;
}

uint64_t sub_10016C630(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  LOBYTE(v3) = v3();

  return v3 & 1;
}

id sub_10016C688(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);

  v3 = String._bridgeToObjectiveC()();

  return v3;
}

uint64_t type metadata accessor for AppInstallationEvent()
{
  return objc_opt_self();
}

{
  return type metadata accessor for AppInstallationEvent();
}

uint64_t getEnumTagSinglePayload for AppInstallationEvent.PackageType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AppInstallationEvent.PackageType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AppInstallationEvent.Context(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEB)
  {
    goto LABEL_17;
  }

  if (a2 + 21 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 21) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 21;
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

      return (*a1 | (v4 << 8)) - 21;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 21;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x16;
  v8 = v6 - 22;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AppInstallationEvent.Context(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 21 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 21) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEB)
  {
    v4 = 0;
  }

  if (a2 > 0xEA)
  {
    v5 = ((a2 - 235) >> 8) + 1;
    *result = a2 + 21;
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
    *result = a2 + 21;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10016CB98()
{
  result = qword_10059E7E8;
  if (!qword_10059E7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10059E7E8);
  }

  return result;
}

unint64_t sub_10016CBF0()
{
  result = qword_10059E7F0;
  if (!qword_10059E7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10059E7F0);
  }

  return result;
}

uint64_t sub_10016CC44(void *a1)
{
  v3 = v1;
  v5 = sub_100085D40(&qword_10059E800, &qword_100437EF0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10 - v7;
  sub_100005B60(a1, a1[3]);
  sub_10016D2F8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v10) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    LOBYTE(v10) = *(v3 + OBJC_IVAR____TtC9appstored20AppInstallationEvent_context);
    v11 = 1;
    sub_10016D34C();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v10) = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v10) = 3;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v10 = *(v3 + OBJC_IVAR____TtC9appstored20AppInstallationEvent_adamIDs);
    v11 = 4;
    sub_100085D40(&unk_10059DCA0, &qword_100437B50);
    sub_10016D3A0();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v10) = 5;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v10) = 6;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v10) = 7;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v10) = 8;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v10) = 9;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v10) = 10;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v10) = *(v3 + OBJC_IVAR____TtC9appstored20AppInstallationEvent_packageType);
    v11 = 11;
    sub_10016D41C();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v10) = 12;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v10) = 13;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v10) = 14;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v10) = 15;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v10) = 16;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_10016D12C()
{
  v1 = *(*v0 + OBJC_IVAR____TtC9appstored20AppInstallationEvent_topic);

  return v1;
}

void *sub_10016D16C()
{
  v1 = *(*v0 + OBJC_IVAR____TtC9appstored20AppInstallationEvent_eventTimeOverride);
  v2 = v1;
  return v1;
}

uint64_t sub_10016D218(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(*v3 + *a3);

  return v4;
}

uint64_t sub_10016D2A0(uint64_t a1, uint64_t a2)
{
  result = sub_1001701C0(&qword_10059E7F8, a2, type metadata accessor for AppInstallationEvent, &unk_100437EAC);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10016D2F8()
{
  result = qword_10059E808;
  if (!qword_10059E808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10059E808);
  }

  return result;
}

unint64_t sub_10016D34C()
{
  result = qword_10059E810;
  if (!qword_10059E810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10059E810);
  }

  return result;
}

unint64_t sub_10016D3A0()
{
  result = qword_10059E818;
  if (!qword_10059E818)
  {
    sub_10009F7F8(&unk_10059DCA0, &qword_100437B50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10059E818);
  }

  return result;
}

unint64_t sub_10016D41C()
{
  result = qword_10059E820;
  if (!qword_10059E820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10059E820);
  }

  return result;
}

double sub_10016D4C4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = sub_1000EE808(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v12 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1001B0F98();
      v10 = v12;
    }

    sub_1000828A8((*(v10 + 56) + 32 * v8), a3);
    sub_1001B2828(v8, v10);
    *v4 = v10;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_10016D5BC(void *a1, uint64_t (*a2)(void *, uint64_t (*)(void), void (*)(uint64_t, uint64_t), uint64_t, uint64_t (*)(uint64_t, uint64_t)), void (*a3)(uint64_t, uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v8 = v5;
  v9 = *v5;
  if ((*v5 & 0xC000000000000001) == 0)
  {
    v15 = a4;
    v20 = a2(a1, a2, a3, a4, a5);
    if (v21)
    {
      v9 = v20;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v23 = *v5;
      v25 = *v5;
      if (isUniquelyReferenced_nonNull_native)
      {
LABEL_10:

        v19 = *(*(v23 + 56) + 8 * v9);
        a3(v9, v23);
        *v8 = v23;
        return v19;
      }

LABEL_14:
      (v15)();
      v23 = v25;
      goto LABEL_10;
    }

    return 0;
  }

  if (v9 < 0)
  {
    v11 = *v5;
  }

  else
  {
    v11 = v9 & 0xFFFFFFFFFFFFFF8;
  }

  v12 = a1;
  v13 = __CocoaDictionary.lookup(_:)();

  if (!v13)
  {
    return 0;
  }

  swift_unknownObjectRelease();

  v14 = __CocoaDictionary.count.getter();
  v15 = a5(v11, v14);

  v16 = (a2)(v12);
  v18 = v17;

  if ((v18 & 1) == 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v19 = *(*(v15 + 56) + 8 * v16);
  a3(v16, v15);

  *v8 = v15;
  return v19;
}

double sub_10016D73C@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = sub_1000EE7C4(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v11 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1001B1CF8();
      v9 = v11;
    }

    sub_1000B5BDC(*(v9 + 48) + 40 * v7);
    sub_1000828A8((*(v9 + 56) + 32 * v7), a2);
    sub_1001B3090(v7, v9);
    *v3 = v9;
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_10016D7E0(uint64_t a1, unint64_t a2)
{
  v2 = String.subscript.getter();
  v6 = sub_10016D860(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_10016D860(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = Substring.UTF8View.distance(from:to:)();
    if (!v9 || (v10 = v9, v11 = sub_1001AD518(v9, 0), v12 = sub_10016D9B8(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = static String._uncheckedFromUTF8(_:)();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return static String._uncheckedFromUTF8(_:)();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  _StringObject.sharedUTF8.getter();
LABEL_4:

  return static String._uncheckedFromUTF8(_:)();
}

unint64_t sub_10016D9B8(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_10019AA64(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = String.UTF8View._foreignSubscript(position:)();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = _StringObject.sharedUTF8.getter();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_10019AA64(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = String.UTF8View._foreignIndex(after:)();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

unsigned __int8 *sub_10016DBD8(uint64_t a1, uint64_t a2, int64_t a3)
{
  v68 = a1;
  v69 = a2;

  result = String.init<A>(_:)();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_10016D7E0(result, v5);
    v38 = v37;

    v5 = v38;
    if ((v38 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
      v7 = v67;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v21 = v7 - 1;
        if (v21)
        {
          v22 = a3 + 48;
          v23 = a3 + 55;
          v24 = a3 + 87;
          if (a3 > 10)
          {
            v22 = 58;
          }

          else
          {
            v24 = 97;
            v23 = 65;
          }

          if (result)
          {
            v13 = 0;
            v25 = result + 1;
            do
            {
              v26 = *v25;
              if (v26 < 0x30 || v26 >= v22)
              {
                if (v26 < 0x41 || v26 >= v23)
                {
                  v17 = 0;
                  if (v26 < 0x61 || v26 >= v24)
                  {
                    goto LABEL_129;
                  }

                  v27 = -87;
                }

                else
                {
                  v27 = -55;
                }
              }

              else
              {
                v27 = -48;
              }

              if (!is_mul_ok(v13, a3))
              {
                goto LABEL_128;
              }

              v28 = v13 * a3;
              v29 = v26 + v27;
              v20 = __CFADD__(v28, v29);
              v13 = v28 + v29;
              if (v20)
              {
                goto LABEL_128;
              }

              ++v25;
              --v21;
            }

            while (v21);
LABEL_66:
            v17 = v13;
            goto LABEL_129;
          }

          goto LABEL_67;
        }

        goto LABEL_128;
      }

      goto LABEL_133;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v30 = a3 + 48;
        v31 = a3 + 55;
        v32 = a3 + 87;
        if (a3 > 10)
        {
          v30 = 58;
        }

        else
        {
          v32 = 97;
          v31 = 65;
        }

        if (result)
        {
          v13 = 0;
          while (1)
          {
            v33 = *result;
            if (v33 < 0x30 || v33 >= v30)
            {
              if (v33 < 0x41 || v33 >= v31)
              {
                v17 = 0;
                if (v33 < 0x61 || v33 >= v32)
                {
                  goto LABEL_129;
                }

                v34 = -87;
              }

              else
              {
                v34 = -55;
              }
            }

            else
            {
              v34 = -48;
            }

            if (!is_mul_ok(v13, a3))
            {
              goto LABEL_128;
            }

            v35 = v13 * a3;
            v36 = v33 + v34;
            v20 = __CFADD__(v35, v36);
            v13 = v35 + v36;
            if (v20)
            {
              goto LABEL_128;
            }

            ++result;
            if (!--v7)
            {
              goto LABEL_66;
            }
          }
        }

        goto LABEL_67;
      }

LABEL_128:
      v17 = 0;
      goto LABEL_129;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_129;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            if (!is_mul_ok(v13, a3))
            {
              goto LABEL_128;
            }

            v18 = v13 * a3;
            v19 = v15 + v16;
            v20 = v18 >= v19;
            v13 = v18 - v19;
            if (!v20)
            {
              goto LABEL_128;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_66;
            }
          }
        }

LABEL_67:
        v17 = 0;
LABEL_129:

        return v17;
      }

      goto LABEL_128;
    }

    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  v39 = HIBYTE(v5) & 0xF;
  v68 = v6;
  v69 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v39)
      {
        v41 = 0;
        v59 = a3 + 48;
        v60 = a3 + 55;
        v61 = a3 + 87;
        if (a3 > 10)
        {
          v59 = 58;
        }

        else
        {
          v61 = 97;
          v60 = 65;
        }

        v62 = &v68;
        while (1)
        {
          v63 = *v62;
          if (v63 < 0x30 || v63 >= v59)
          {
            if (v63 < 0x41 || v63 >= v60)
            {
              v17 = 0;
              if (v63 < 0x61 || v63 >= v61)
              {
                goto LABEL_129;
              }

              v64 = -87;
            }

            else
            {
              v64 = -55;
            }
          }

          else
          {
            v64 = -48;
          }

          if (!is_mul_ok(v41, a3))
          {
            goto LABEL_128;
          }

          v65 = v41 * a3;
          v66 = v63 + v64;
          v20 = __CFADD__(v65, v66);
          v41 = v65 + v66;
          if (v20)
          {
            goto LABEL_128;
          }

          v62 = (v62 + 1);
          if (!--v39)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    if (v39)
    {
      v40 = v39 - 1;
      if (v40)
      {
        v41 = 0;
        v42 = a3 + 48;
        v43 = a3 + 55;
        v44 = a3 + 87;
        if (a3 > 10)
        {
          v42 = 58;
        }

        else
        {
          v44 = 97;
          v43 = 65;
        }

        v45 = &v68 + 1;
        while (1)
        {
          v46 = *v45;
          if (v46 < 0x30 || v46 >= v42)
          {
            if (v46 < 0x41 || v46 >= v43)
            {
              v17 = 0;
              if (v46 < 0x61 || v46 >= v44)
              {
                goto LABEL_129;
              }

              v47 = -87;
            }

            else
            {
              v47 = -55;
            }
          }

          else
          {
            v47 = -48;
          }

          if (!is_mul_ok(v41, a3))
          {
            goto LABEL_128;
          }

          v48 = v41 * a3;
          v49 = v46 + v47;
          v20 = v48 >= v49;
          v41 = v48 - v49;
          if (!v20)
          {
            goto LABEL_128;
          }

          ++v45;
          if (!--v40)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    goto LABEL_132;
  }

  if (v39)
  {
    v50 = v39 - 1;
    if (v50)
    {
      v41 = 0;
      v51 = a3 + 48;
      v52 = a3 + 55;
      v53 = a3 + 87;
      if (a3 > 10)
      {
        v51 = 58;
      }

      else
      {
        v53 = 97;
        v52 = 65;
      }

      v54 = &v68 + 1;
      do
      {
        v55 = *v54;
        if (v55 < 0x30 || v55 >= v51)
        {
          if (v55 < 0x41 || v55 >= v52)
          {
            v17 = 0;
            if (v55 < 0x61 || v55 >= v53)
            {
              goto LABEL_129;
            }

            v56 = -87;
          }

          else
          {
            v56 = -55;
          }
        }

        else
        {
          v56 = -48;
        }

        if (!is_mul_ok(v41, a3))
        {
          goto LABEL_128;
        }

        v57 = v41 * a3;
        v58 = v55 + v56;
        v20 = __CFADD__(v57, v58);
        v41 = v57 + v58;
        if (v20)
        {
          goto LABEL_128;
        }

        ++v54;
        --v50;
      }

      while (v50);
LABEL_127:
      v17 = v41;
      goto LABEL_129;
    }

    goto LABEL_128;
  }

LABEL_134:
  __break(1u);
  return result;
}

unsigned __int8 *sub_10016E15C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = String.init<A>(_:)();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_10016D7E0(result, v5);
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_10016E6E8(void *a1, uint64_t *a2)
{
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;
  if (v2 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v7 & 1;
}

uint64_t sub_10016E778(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  __chkstk_darwin(a1);
  v6 = v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v6);
  v7 = [objc_allocWithZone(AMSMetricsIdentifierStore) init];
  v8 = String._bridgeToObjectiveC()();
  [v7 setDomain:v8];

  v9 = COERCE_DOUBLE(dispatch thunk of Bag.subscript.getter());
  if (v10)
  {
    v9 = 86400.0;
  }

  [v7 setResetInterval:v9];
  v11 = objc_allocWithZone(AMSProcessInfo);
  v12 = String._bridgeToObjectiveC()();
  v13 = [v11 initWithBundleIdentifier:v12];

  [v7 setClientInfo:v13];
  sub_100085D40(&qword_10059C4A0, &qword_100435E00);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_100435310;
  v15 = String._bridgeToObjectiveC()();
  v16 = [objc_opt_self() keyWithName:v15 crossDeviceSync:0];

  *(v14 + 32) = v16;
  sub_10009FAD4(0, &qword_10059E6D0, AMSMetricsIdentifierKey_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v18 = [v7 generateEventFieldsForKeys:isa];

  v19 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v26[0] = 0x6449746E65696C63;
  v26[1] = 0xE800000000000000;
  AnyHashable.init<A>(_:)();
  if (*(v19 + 16) && (v20 = sub_1000EE7C4(v25), (v21 & 1) != 0))
  {
    sub_10009F6D0(*(v19 + 56) + 32 * v20, v26);

    sub_1000B5BDC(v25);

    if (swift_dynamicCast())
    {
      v22 = v24[1];
    }

    else
    {
      v22 = 0;
    }
  }

  else
  {

    sub_1000B5BDC(v25);
    v22 = 0;
  }

  (*(v4 + 8))(v6, a3);
  return v22;
}

uint64_t sub_10016EB24(void *a1, char a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v144 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  if (v8 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v10 == v11)
  {

    return 1;
  }

  v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v13)
  {

    return 1;
  }

  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;
  if (v15 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v17 == v18)
  {
    goto LABEL_16;
  }

  v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v20)
  {
LABEL_13:

    return 2;
  }

  v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v23 = v22;
  if (v21 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v23 == v24)
  {
    goto LABEL_16;
  }

  v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v25)
  {
    goto LABEL_13;
  }

  v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v28 = v27;
  if (v26 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v28 == v29)
  {
LABEL_16:

    return 2;
  }

  v30 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v30)
  {
    goto LABEL_13;
  }

  v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v33 = v32;
  if (v31 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v33 == v34)
  {

    return 7;
  }

  v35 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v35)
  {

    return 7;
  }

  v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v38 = v37;
  if (v36 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v38 == v39)
  {

    goto LABEL_33;
  }

  v40 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v40)
  {

LABEL_33:
    if (a2)
    {
      return 14;
    }

    else
    {
      return 13;
    }
  }

  v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v43 = v42;
  if (v41 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v43 == v44)
  {

    goto LABEL_41;
  }

  v45 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v45)
  {

LABEL_41:
    if (a2)
    {
      return 18;
    }

    else
    {
      return 17;
    }
  }

  v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v48 = v47;
  if (v46 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v48 == v49)
  {
    goto LABEL_46;
  }

  v50 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v50 & 1) == 0)
  {
    v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v53 = v52;
    if (v51 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v53 == v54)
    {
LABEL_46:

      goto LABEL_49;
    }

    v55 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v55 & 1) == 0)
    {
      v56 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v58 = v57;
      if (v56 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v58 == v59)
      {

        return 9;
      }

      v60 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v60)
      {

        return 9;
      }

      v61 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v63 = v62;
      if (v61 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v63 == v64)
      {
        goto LABEL_62;
      }

      v65 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v65)
      {
        goto LABEL_64;
      }

      v66 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v68 = v67;
      if (v66 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v68 == v69)
      {
LABEL_62:

        return 3;
      }

      v70 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v70)
      {
LABEL_64:

        return 3;
      }

      v71 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v73 = v72;
      if (v71 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v73 == v74)
      {

        return 19;
      }

      v75 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v75)
      {

        return 19;
      }

      v76 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v78 = v77;
      if (v76 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v78 == v79)
      {

        return 21;
      }

      v80 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v80)
      {

        return 21;
      }

      v81 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v83 = v82;
      if (v81 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v83 == v84)
      {

        return 0;
      }

      v85 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v85)
      {

        return 0;
      }

      v86 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v88 = v87;
      if (v86 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v88 == v89)
      {
LABEL_85:

        return 10;
      }

      v90 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v90)
      {
        goto LABEL_90;
      }

      v91 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v93 = v92;
      if (v91 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v93 == v94)
      {
        goto LABEL_85;
      }

      v95 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v95)
      {
LABEL_90:

        return 10;
      }

      v96 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v98 = v97;
      if (v96 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v98 == v99)
      {

        return 12;
      }

      v100 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v100)
      {

        return 12;
      }

      v101 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v103 = v102;
      if (v101 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v103 == v104)
      {
LABEL_98:

        return 5;
      }

      v105 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v105 & 1) == 0)
      {
        v106 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v108 = v107;
        if (v106 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v108 == v109)
        {
          goto LABEL_98;
        }

        v110 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v110 & 1) == 0)
        {
          v111 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v113 = v112;
          if (v111 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v113 == v114)
          {
            goto LABEL_98;
          }

          v115 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v115 & 1) == 0)
          {
            v116 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v118 = v117;
            if (v116 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v118 == v119)
            {
              goto LABEL_98;
            }

            v120 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if ((v120 & 1) == 0)
            {
              v121 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v123 = v122;
              if (v121 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v123 == v124)
              {
                goto LABEL_98;
              }

              v125 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if ((v125 & 1) == 0)
              {
                v126 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v128 = v127;
                if (v126 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v128 == v129)
                {
                  goto LABEL_98;
                }

                v130 = _stringCompareWithSmolCheck(_:_:expecting:)();

                if ((v130 & 1) == 0)
                {
                  v131 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                  v133 = v132;
                  if (v131 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v133 == v134)
                  {

                    return 20;
                  }

                  v135 = _stringCompareWithSmolCheck(_:_:expecting:)();

                  if (v135)
                  {

                    return 20;
                  }

                  static Logger.metrics.getter();
                  v136 = a1;
                  v137 = Logger.logObject.getter();
                  v138 = static os_log_type_t.error.getter();

                  if (os_log_type_enabled(v137, v138))
                  {
                    v139 = swift_slowAlloc();
                    v140 = swift_slowAlloc();
                    v145 = v140;
                    *v139 = 136446210;
                    v141 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                    v143 = sub_1001AD0D8(v141, v142, &v145);

                    *(v139 + 4) = v143;
                    _os_log_impl(&_mh_execute_header, v137, v138, "No install context found for %{public}s", v139, 0xCu);
                    sub_100005A00(v140);
                  }

                  else
                  {
                  }

                  (*(v5 + 8))(v7, v4);
                  return 2;
                }
              }
            }
          }
        }
      }

      return 5;
    }
  }

LABEL_49:
  if (a2)
  {
    return 16;
  }

  else
  {
    return 15;
  }
}

unint64_t sub_10016F904(uint64_t a1, uint64_t a2)
{
  v2 = _findStringSwitchCaseWithCache(cases:string:cache:)();

  if (v2 >= 0x16)
  {
    return 22;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_10016F958(void *a1, char a2)
{
  if (a2)
  {
    if (sub_10023E604(a1, @"package_type") == 1)
    {
      v3 = sub_10023E644(a1, @"delta_algorithm");
      if (v3)
      {
        v4 = v3;
        v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v7 = v6;

        if (v5 == 0x666669647862 && v7 == 0xE600000000000000)
        {

          return 2;
        }

        else
        {
          v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v9)
          {
            return 2;
          }

          else
          {
            return 1;
          }
        }
      }

      else
      {

        return 1;
      }
    }

    else
    {

      return 3;
    }
  }

  else
  {

    return 0;
  }
}

unint64_t sub_10016FA64(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1005097C0, v2);

  if (v3 >= 7)
  {
    return 7;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_10016FAB0()
{
  result = qword_10059E828;
  if (!qword_10059E828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10059E828);
  }

  return result;
}

unint64_t sub_10016FB04()
{
  result = qword_10059E830;
  if (!qword_10059E830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10059E830);
  }

  return result;
}

unint64_t sub_10016FB78(uint64_t a1, uint64_t a2)
{
  v2 = _findStringSwitchCaseWithCache(cases:string:cache:)();

  if (v2 >= 0x11)
  {
    return 17;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_10016FBCC()
{
  v0 = sub_100085D40(&unk_10059EAF0, &qword_100434718);
  __chkstk_darwin(v0 - 8);
  v2 = &v16 - v1;
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  Date.init(timeIntervalSinceReferenceDate:)();
  v7 = [objc_allocWithZone(NSDateFormatter) init];
  v8 = String._bridgeToObjectiveC()();
  [v7 setDateFormat:v8];

  TimeZone.init(abbreviation:)();
  v9 = type metadata accessor for TimeZone();
  v10 = *(v9 - 8);
  isa = 0;
  if ((*(v10 + 48))(v2, 1, v9) != 1)
  {
    isa = TimeZone._bridgeToObjectiveC()().super.isa;
    (*(v10 + 8))(v2, v9);
  }

  [v7 setTimeZone:isa];

  v12 = Date._bridgeToObjectiveC()().super.isa;
  v13 = [v7 stringFromDate:v12];

  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  (*(v4 + 8))(v6, v3);
  return v14;
}

void sub_10016FE40(unint64_t a1)
{
  v1 = a1;
  if (a1 >> 62)
  {
    v2 = _CocoaArrayWrapper.endIndex.getter();
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_28:

    sub_1000EF17C(_swiftEmptyArrayStorage);
    return;
  }

  v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
    goto LABEL_28;
  }

LABEL_3:
  if (v2 < 1)
  {
    __break(1u);
LABEL_32:
    __break(1u);
    return;
  }

  v3 = 0;
  v4 = v1 & 0xC000000000000001;
  v5 = _swiftEmptyArrayStorage;
  v26 = v1;
  do
  {
    if (v4)
    {
      v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v6 = *(v1 + 8 * v3 + 32);
    }

    v7 = v6;
    v8 = sub_10040916C(v6);
    if (!v8)
    {
      goto LABEL_6;
    }

    v9 = v8;
    if (![v8 longLongValue])
    {

LABEL_6:
      goto LABEL_7;
    }

    v10 = [v9 stringValue];
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v5 = sub_1001AC6FC(0, *(v5 + 2) + 1, 1, v5);
    }

    v15 = *(v5 + 2);
    v14 = *(v5 + 3);
    if (v15 >= v14 >> 1)
    {
      v5 = sub_1001AC6FC((v14 > 1), v15 + 1, 1, v5);
    }

    *(v5 + 2) = v15 + 1;
    v16 = &v5[16 * v15];
    *(v16 + 4) = v11;
    *(v16 + 5) = v13;
    v1 = v26;
LABEL_7:
    ++v3;
  }

  while (v2 != v3);
  if (*(v5 + 2))
  {
    v29 = sub_100085D40(&unk_10059DCA0, &qword_100437B50);
    *&v28 = v5;
    sub_1000828A8(&v28, v27);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1001B3A08(v27, 0x7364496D616461, 0xE700000000000000, isUniquelyReferenced_nonNull_native);
  }

  if (v4)
  {
    v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_24;
  }

  if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_32;
  }

  v18 = *(v1 + 32);
LABEL_24:
  v19 = v18;
  v20 = sub_10023E644(v18, @"log_code");

  if (!v20)
  {
    sub_10009FAD4(0, &unk_10059CE30, NSString_ptr);
    v20 = NSString.init(stringLiteral:)();
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = String._bridgeToObjectiveC()();

  v22 = sub_10016EB24(v21, 0);
  v23 = sub_100167B7C(v22);
  v29 = &type metadata for String;
  *&v28 = v23;
  *(&v28 + 1) = v24;
  sub_1000828A8(&v28, v27);
  v25 = swift_isUniquelyReferenced_nonNull_native();
  sub_1001B3A08(v27, 0x436C6C6174736E69, 0xEE00747865746E6FLL, v25);
}

uint64_t sub_1001701A8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1001701C0(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_100170208()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t getEnumTagSinglePayload for AppInstallationEvent.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF0)
  {
    goto LABEL_17;
  }

  if (a2 + 16 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 16) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 16;
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

      return (*a1 | (v4 << 8)) - 16;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 16;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x11;
  v8 = v6 - 17;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AppInstallationEvent.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 16 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 16) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF0)
  {
    v4 = 0;
  }

  if (a2 > 0xEF)
  {
    v5 = ((a2 - 240) >> 8) + 1;
    *result = a2 + 16;
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
    *result = a2 + 16;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10017038C()
{
  result = qword_10059E850;
  if (!qword_10059E850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10059E850);
  }

  return result;
}

unint64_t sub_1001703E4()
{
  result = qword_10059E858;
  if (!qword_10059E858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10059E858);
  }

  return result;
}

unint64_t sub_10017043C()
{
  result = qword_10059E860;
  if (!qword_10059E860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10059E860);
  }

  return result;
}

uint64_t sub_1001704BC()
{
  v1 = *(v0 + OBJC_IVAR____TtC9appstored14UpdatesContext_reason);
  if (v1 <= 4)
  {
    if (v1 > 1)
    {
      if (v1 == 2)
      {
        return 0x6F6974617267694DLL;
      }

      if (v1 == 3)
      {
        return 0x65726F74736552;
      }

      return 0x6E6F7268636E7953;
    }

    if (!v1)
    {
      return 0x6C61756E614DLL;
    }

    if (v1 == 1)
    {
      return 0x756F72676B636142;
    }

LABEL_22:
    type metadata accessor for LoadSoftwareUpdatesReason(0);
    result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
    __break(1u);
    return result;
  }

  if (v1 > 6)
  {
    switch(v1)
    {
      case 7:
        return 5063757;
      case 8:
        return 0x2068736572666552;
      case 9:
        return 0x5520656369766544;
    }

    goto LABEL_22;
  }

  if (v1 == 5)
  {
    return 0x4120657461647055;
  }

  else
  {
    return 0x746E756F636341;
  }
}

id sub_100170840()
{
  ObjectType = swift_getObjectType();
  v1 = objc_allocWithZone(ObjectType);
  v2 = &v1[OBJC_IVAR____TtC9appstored14UpdatesContext_callbackHandler];
  *v2 = 0;
  v2[1] = 0;
  v1[OBJC_IVAR____TtC9appstored14UpdatesContext_includeMetrics] = 0;
  v1[OBJC_IVAR____TtC9appstored14UpdatesContext_isVPPLookup] = 0;
  *&v1[OBJC_IVAR____TtC9appstored14UpdatesContext_reason] = 0;
  v3 = objc_opt_self();
  v4 = objc_opt_self();
  v5 = v1;
  v6 = [v4 currentProcess];
  v7 = sub_1003FA53C(v3, v6);

  *&v5[OBJC_IVAR____TtC9appstored14UpdatesContext_requestToken] = v7;
  v9 = sub_1001FBBB4(v7, v8);

  *&v5[OBJC_IVAR____TtC9appstored14UpdatesContext_logKey] = v9;
  v5[OBJC_IVAR____TtC9appstored14UpdatesContext_userInitiated] = 0;
  v10 = &v5[OBJC_IVAR____TtC9appstored14UpdatesContext_targetedItemID];
  *v10 = 0;
  v10[8] = 1;
  v13.receiver = v5;
  v13.super_class = ObjectType;
  v11 = objc_msgSendSuper2(&v13, "init");
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v11;
}

id sub_1001709CC(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v3 = objc_allocWithZone(ObjectType);
  v4 = &v3[OBJC_IVAR____TtC9appstored14UpdatesContext_callbackHandler];
  *v4 = 0;
  v4[1] = 0;
  v3[OBJC_IVAR____TtC9appstored14UpdatesContext_includeMetrics] = 0;
  v3[OBJC_IVAR____TtC9appstored14UpdatesContext_isVPPLookup] = 0;
  *&v3[OBJC_IVAR____TtC9appstored14UpdatesContext_reason] = a1;
  v5 = objc_opt_self();
  v6 = objc_opt_self();
  v7 = v3;
  v8 = [v6 currentProcess];
  v9 = sub_1003FA53C(v5, v8);

  *&v7[OBJC_IVAR____TtC9appstored14UpdatesContext_requestToken] = v9;
  v11 = sub_1001FBBB4(v9, v10);

  *&v7[OBJC_IVAR____TtC9appstored14UpdatesContext_logKey] = v11;
  v7[OBJC_IVAR____TtC9appstored14UpdatesContext_userInitiated] = 0;
  v12 = &v7[OBJC_IVAR____TtC9appstored14UpdatesContext_targetedItemID];
  *v12 = 0;
  v12[8] = 1;
  v15.receiver = v7;
  v15.super_class = ObjectType;
  v13 = objc_msgSendSuper2(&v15, "init");
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v13;
}

id sub_100170B60(uint64_t a1, void *a2)
{
  ObjectType = swift_getObjectType();
  v5 = objc_allocWithZone(ObjectType);
  v6 = &v5[OBJC_IVAR____TtC9appstored14UpdatesContext_callbackHandler];
  *v6 = 0;
  v6[1] = 0;
  v5[OBJC_IVAR____TtC9appstored14UpdatesContext_includeMetrics] = 0;
  v5[OBJC_IVAR____TtC9appstored14UpdatesContext_isVPPLookup] = 0;
  *&v5[OBJC_IVAR____TtC9appstored14UpdatesContext_reason] = a1;
  *&v5[OBJC_IVAR____TtC9appstored14UpdatesContext_requestToken] = a2;
  v7 = a2;
  v9 = sub_1001FBBB4(v7, v8);
  *&v5[OBJC_IVAR____TtC9appstored14UpdatesContext_logKey] = v9;
  v5[OBJC_IVAR____TtC9appstored14UpdatesContext_userInitiated] = 0;
  v10 = &v5[OBJC_IVAR____TtC9appstored14UpdatesContext_targetedItemID];
  *v10 = 0;
  v10[8] = 1;
  v13.receiver = v5;
  v13.super_class = ObjectType;
  v11 = objc_msgSendSuper2(&v13, "init");

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v11;
}

void sub_100170DAC(objc_class *a1, uint64_t a2, uint64_t a3)
{
  isa = a1;
  if (a1)
  {
    sub_100171354();
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

uint64_t sub_100170F30(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    sub_100171354();
    v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v6 = a3;
  v5(v4, a3);
}

uint64_t sub_100170FC4(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t))
{
  if (a1)
  {
    if (!a2)
    {
      return (a3)();
    }
  }

  else if (!a2)
  {
    type metadata accessor for ASDError(0);
    sub_1000EF17C(_swiftEmptyArrayStorage);
    sub_1000BD07C();
    _BridgedStoredNSError.init(_:userInfo:)();
    v5 = v6;
    goto LABEL_6;
  }

  v5 = a2;
LABEL_6:
  swift_errorRetain();
  a3(v5, 1);
}

uint64_t sub_1001710FC(uint64_t a1)
{
  if (a1 <= 4)
  {
    if (a1 > 1)
    {
      if (a1 == 2)
      {
        return 0x6F6974617267694DLL;
      }

      if (a1 == 3)
      {
        return 0x65726F74736552;
      }

      return 0x6E6F7268636E7953;
    }

    if (!a1)
    {
      return 0x6C61756E614DLL;
    }

    if (a1 == 1)
    {
      return 0x756F72676B636142;
    }

LABEL_22:
    type metadata accessor for LoadSoftwareUpdatesReason(0);
    result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
    __break(1u);
    return result;
  }

  if (a1 > 6)
  {
    switch(a1)
    {
      case 7:
        return 5063757;
      case 8:
        return 0x2068736572666552;
      case 9:
        return 0x5520656369766544;
    }

    goto LABEL_22;
  }

  if (a1 == 5)
  {
    return 0x4120657461647055;
  }

  else
  {
    return 0x746E756F636341;
  }
}

uint64_t sub_10017133C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_100171354()
{
  result = qword_10059DCF8;
  if (!qword_10059DCF8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10059DCF8);
  }

  return result;
}

id sub_1001713A0(uint64_t a1, void **a2, void *a3, uint64_t a4, uint64_t a5, char a6, char a7, char a8, void *a9)
{
  ObjectType = swift_getObjectType();
  if (a4)
  {
    v19 = swift_allocObject();
    *(v19 + 16) = a4;
    *(v19 + 24) = a5;
    v20 = &v9[OBJC_IVAR____TtC9appstored14UpdatesContext_callbackHandler];
    *v20 = sub_1001715E4;
    v20[1] = v19;
  }

  else
  {
    v21 = &v9[OBJC_IVAR____TtC9appstored14UpdatesContext_callbackHandler];
    *v21 = 0;
    v21[1] = 0;
  }

  v9[OBJC_IVAR____TtC9appstored14UpdatesContext_includeMetrics] = a6 & 1;
  v9[OBJC_IVAR____TtC9appstored14UpdatesContext_isVPPLookup] = a7 & 1;
  if (a2)
  {
    v22 = v9;
    sub_1001715D4(a4, a5);
    v23 = a2;
  }

  else
  {
    v24 = objc_opt_self();
    v37 = a1;
    v25 = a8;
    v26 = ObjectType;
    v27 = objc_opt_self();
    v28 = v9;
    sub_1001715D4(a4, a5);
    v29 = [v27 currentProcess];
    v23 = sub_1003FA53C(v24, v29);

    ObjectType = v26;
    a8 = v25;
    a1 = v37;
  }

  *&v9[OBJC_IVAR____TtC9appstored14UpdatesContext_requestToken] = v23;
  v30 = a2;
  if (a3)
  {
    v32 = a3;
  }

  else
  {
    v32 = sub_1001FBBB4(v23, v31);
  }

  v33 = v32;

  *&v9[OBJC_IVAR____TtC9appstored14UpdatesContext_logKey] = v33;
  *&v9[OBJC_IVAR____TtC9appstored14UpdatesContext_reason] = a1;
  v9[OBJC_IVAR____TtC9appstored14UpdatesContext_userInitiated] = a8 & 1;
  if (a9)
  {
    v34 = [a9 longLongValue];
  }

  else
  {
    v34 = 0;
  }

  v35 = &v9[OBJC_IVAR____TtC9appstored14UpdatesContext_targetedItemID];
  *v35 = v34;
  v35[8] = a9 == 0;
  v38.receiver = v9;
  v38.super_class = ObjectType;
  return objc_msgSendSuper2(&v38, "init");
}

uint64_t sub_1001715D4(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1001715E4(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = a1;
    a1 = 0;
  }

  else
  {
    v3 = 0;
  }

  return (*(v2 + 16))(a1, v3);
}

id sub_100171620()
{
  result = [objc_allocWithZone(type metadata accessor for QOSMetrics()) init];
  qword_10059E8D0 = result;
  return result;
}

double sub_100171650(uint64_t a1, void *a2)
{
  if (a2)
  {
    _StringGuts.grow(_:)(46);

    v4._countAndFlagsBits = a1;
    v4._object = a2;
    String.append(_:)(v4);
    v5._object = 0x8000000100451EC0;
    v5._countAndFlagsBits = 0xD000000000000024;
    String.append(_:)(v5);
    v6 = dispatch thunk of Bag.subscript.getter();
    LOBYTE(a1) = v7;

    if ((a1 & 1) == 0)
    {
      return *&v6;
    }
  }

  result = COERCE_DOUBLE(dispatch thunk of Bag.subscript.getter());
  if (v9)
  {
    return 0.0;
  }

  return result;
}

double sub_1001717E8(uint64_t a1, void *a2)
{
  if (a2)
  {
    _StringGuts.grow(_:)(60);
    v4._countAndFlagsBits = 0x2F7363697274656DLL;
    v4._object = 0xE800000000000000;
    String.append(_:)(v4);
    v5._countAndFlagsBits = a1;
    v5._object = a2;
    String.append(_:)(v5);
    v6._object = 0x8000000100451EF0;
    v6._countAndFlagsBits = 0xD000000000000032;
    String.append(_:)(v6);
    v7 = dispatch thunk of Bag.subscript.getter();
    LOBYTE(a1) = v8;

    if ((a1 & 1) == 0)
    {
      return *&v7;
    }
  }

  result = COERCE_DOUBLE(dispatch thunk of Bag.subscript.getter());
  if (v10)
  {
    return 0.0;
  }

  return result;
}

uint64_t sub_100171914(uint64_t a1)
{
  v2 = sub_100085D40(&qword_10059E928, &qword_100438170);
  __chkstk_darwin(v2);
  v4 = (v13 - v3);
  sub_100005B60((a1 + OBJC_IVAR___Bag_bag), *(a1 + OBJC_IVAR___Bag_bag + 24));
  result = dispatch thunk of Bag.subscript.getter();
  if ((v6 & 1) == 0)
  {
    v7 = *&result;
    v8 = COERCE_DOUBLE(sub_100171B04(v4 + *(v2 + 48)));
    *v4 = v8;
    *(v4 + 8) = v9 & 1;
    if ((v9 & 1) == 0 && v8 == v7)
    {
      return sub_100005518(v4, &qword_10059E928, &qword_100438170);
    }

    else
    {
      type metadata accessor for PropertyListEncoder();
      swift_allocObject();
      PropertyListEncoder.init()();
      *&v13[1] = v7;
      sub_100172C38();
      v10 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
      v12 = v11;

      Data.write(to:options:)();
      sub_100005518(v4, &qword_10059E928, &qword_100438170);
      return sub_100088CDC(v10, v12);
    }
  }

  return result;
}

uint64_t sub_100171B04(uint64_t a1)
{
  v1 = type metadata accessor for Logger();
  __chkstk_darwin(v1);
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = objc_opt_self();
  v7 = sub_10029C3D4(v6);
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  URL.init(fileURLWithPath:isDirectory:)();

  URL.appendingPathComponent(_:isDirectory:)();
  (*(v3 + 8))(v5, v2);
  v8 = Data.init(contentsOf:options:)();
  v10 = v9;
  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  PropertyListDecoder.init()();
  sub_100172BE4();
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();

  v11 = v14;
  v12 = _stringCompareWithSmolCheck(_:_:expecting:)();
  sub_100088CDC(v8, v10);
  if (v12)
  {
    return v11;
  }

  else
  {
    return 0;
  }
}

Swift::Int sub_100171F98()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

Swift::Int sub_100172004()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

uint64_t sub_100172058@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1001720DC(uint64_t a1)
{
  v2 = sub_10017267C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100172118(uint64_t a1)
{
  v2 = sub_10017267C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10017223C(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  if ((a1 != 0xD000000000000039 || 0x8000000100451E20 != a2) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  return v3;
}

uint64_t sub_1001723DC@<X0>(void *a1@<X0>, double *a2@<X8>)
{
  v5 = sub_100085D40(&qword_10059E900, &qword_100438158);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v12 - v7;
  sub_100005B60(a1, a1[3]);
  sub_10017267C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100005A00(a1);
  }

  KeyedDecodingContainer.decode(_:forKey:)();
  v10 = v9;
  (*(v6 + 8))(v8, v5);
  result = sub_100005A00(a1);
  *a2 = v10;
  return result;
}

uint64_t sub_100172544(void *a1)
{
  v2 = sub_100085D40(&qword_10059E910, &unk_100438160);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - v4;
  sub_100005B60(a1, a1[3]);
  sub_10017267C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_10017267C()
{
  result = qword_10059E908;
  if (!qword_10059E908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10059E908);
  }

  return result;
}

uint64_t sub_1001726D0(uint64_t result, double a2, double a3)
{
  if (a2 == a3)
  {
    __break(1u);
    goto LABEL_7;
  }

  v5 = a3 - a2;
  if (COERCE__INT64(fabs(a3 - a2)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v6 = result;
  result = swift_stdlib_random();
  if (v5 * vcvtd_n_f64_u64(0, 0x35uLL) + a2 == a3)
  {
    return sub_1001726D0(v6, a2, a3);
  }

  return result;
}

BOOL sub_100172774(void *a1, uint64_t a2, void *a3)
{
  if (qword_10059B570 != -1)
  {
    swift_once();
  }

  if (qword_10059B490 != -1)
  {
    swift_once();
  }

  v6 = qword_1005AB0A0 + OBJC_IVAR____TtC9appstored17RestrictionsCache_lockedCachedValues;
  os_unfair_lock_lock((qword_1005AB0A0 + OBJC_IVAR____TtC9appstored17RestrictionsCache_lockedCachedValues));
  v7 = *(v6 + 8);
  if (v7 == 2)
  {
    v8 = objc_opt_self();
    LOBYTE(v7) = sub_10030B548(v8);
    *(v6 + 8) = v7;
  }

  os_unfair_lock_unlock(v6);
  if ((v7 & 1) == 0)
  {
    return 0;
  }

  sub_100005B60(a1, a1[3]);
  v10 = sub_1001717E8(a2, a3);
  if (v10 <= 0.0)
  {
    return 0;
  }

  if (v10 >= 1.0)
  {
    return 1;
  }

  v11 = v10;
  sub_1001726D0(v9, 0.0, 1.0);
  return v12 < v11;
}

BOOL sub_1001728D8(uint64_t a1, uint64_t a2, void *a3)
{
  if (qword_10059B570 != -1)
  {
    swift_once();
  }

  if (qword_10059B490 != -1)
  {
    swift_once();
  }

  v6 = qword_1005AB0A0 + OBJC_IVAR____TtC9appstored17RestrictionsCache_lockedCachedValues;
  os_unfair_lock_lock((qword_1005AB0A0 + OBJC_IVAR____TtC9appstored17RestrictionsCache_lockedCachedValues));
  v7 = *(v6 + 8);
  if (v7 == 2)
  {
    v8 = objc_opt_self();
    LOBYTE(v7) = sub_10030B548(v8);
    *(v6 + 8) = v7;
  }

  os_unfair_lock_unlock(v6);
  if ((v7 & 1) == 0)
  {
    return 0;
  }

  sub_100005B60((a1 + OBJC_IVAR___Bag_bag), *(a1 + OBJC_IVAR___Bag_bag + 24));
  v10 = sub_100171650(a2, a3);
  if (v10 <= 0.0)
  {
    return 0;
  }

  if (v10 >= 1.0)
  {
    return 1;
  }

  v11 = v10;
  sub_1001726D0(v9, 0.0, 1.0);
  return v12 < v11;
}

id sub_100172A34()
{
  v0 = type metadata accessor for URL();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for QOSMetrics();
  v4 = COERCE_DOUBLE(sub_100171B04(v3));
  v6 = v5;
  (*(v1 + 8))(v3, v0);
  if (v6)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = v4;
  }

  v14[3] = &type metadata for QOSPackageInstallMetricsCollectionChanceBag;
  v14[4] = sub_100172B90();
  *v14 = v7;
  v8 = type metadata accessor for ObjCBag();
  v9 = objc_allocWithZone(v8);
  sub_1000056D0(v14, v9 + OBJC_IVAR___Bag_bag);
  v13.receiver = v9;
  v13.super_class = v8;
  v10 = objc_msgSendSuper2(&v13, "init");
  sub_100005A00(v14);
  return v10;
}

unint64_t sub_100172B90()
{
  result = qword_10059E918;
  if (!qword_10059E918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10059E918);
  }

  return result;
}

unint64_t sub_100172BE4()
{
  result = qword_10059E920;
  if (!qword_10059E920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10059E920);
  }

  return result;
}

unint64_t sub_100172C38()
{
  result = qword_10059E930;
  if (!qword_10059E930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10059E930);
  }

  return result;
}

unint64_t sub_100172CB0()
{
  result = qword_10059E938;
  if (!qword_10059E938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10059E938);
  }

  return result;
}

unint64_t sub_100172D08()
{
  result = qword_10059E940;
  if (!qword_10059E940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10059E940);
  }

  return result;
}

unint64_t sub_100172D60()
{
  result = qword_10059E948;
  if (!qword_10059E948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10059E948);
  }

  return result;
}

void *sub_100172DB4(void *result, uint64_t a2, uint64_t a3)
{
  v4 = _swiftEmptyArrayStorage;
  v13 = _swiftEmptyArrayStorage;
  v5 = *(a3 + 16);
  if (v5)
  {
    v6 = result;
    v7 = 0;
    v8 = a3 + 32;
    v11 = a3 + 32;
    do
    {
      v9 = v8 + 40 * v7;
      for (i = v7; ; ++i)
      {
        if (i >= v5)
        {
          __break(1u);
LABEL_17:
          __break(1u);
          return result;
        }

        v7 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_17;
        }

        result = (v6)(&v12, v9);
        if (v3)
        {

          return v4;
        }

        if (v12)
        {
          break;
        }

        v9 += 40;
        if (v7 == v5)
        {
          return v4;
        }
      }

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      result = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v4 = v13;
      v8 = v11;
    }

    while (v7 != v5);
  }

  return v4;
}

void sub_100172EF8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100085D40(&qword_10059ED00, &unk_100436100);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = _swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

  do
  {
LABEL_10:
    v10 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
      return;
    }

    if (v10 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v10);
    ++v7;
  }

  while (!v5);
  while (1)
  {
    v11 = __clz(__rbit64(v5)) | (v10 << 6);
    sub_1000F26AC(*(a1 + 48) + 40 * v11, v27);
    sub_10009F6D0(*(a1 + 56) + 32 * v11, v28 + 8);
    v25[0] = v28[0];
    v25[1] = v28[1];
    v26 = v29;
    v24[0] = v27[0];
    v24[1] = v27[1];
    sub_1000F26AC(v24, v19);
    if (!swift_dynamicCast())
    {
      break;
    }

    v5 &= v5 - 1;
    sub_10009F6D0(v25 + 8, v20);
    sub_100005518(v24, &qword_10059EA10, &unk_100438470);
    v21 = v18;
    sub_1000828A8(v20, v22);
    v12 = v21;
    sub_1000828A8(v22, v23);
    sub_1000828A8(v23, &v21);
    v13 = sub_1000EE808(v12, *(&v12 + 1));
    if (v14)
    {
      *(v2[6] + 16 * v13) = v12;
      v8 = v13;

      v9 = (v2[7] + 32 * v8);
      sub_100005A00(v9);
      sub_1000828A8(&v21, v9);
      v7 = v10;
      if (!v5)
      {
        goto LABEL_10;
      }
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_22;
      }

      *(v2 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v13;
      *(v2[6] + 16 * v13) = v12;
      sub_1000828A8(&v21, (v2[7] + 32 * v13));
      v15 = v2[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_23;
      }

      v2[2] = v17;
      v7 = v10;
      if (!v5)
      {
        goto LABEL_10;
      }
    }

LABEL_9:
    v10 = v7;
  }

  sub_100005518(v24, &qword_10059EA10, &unk_100438470);
}

void sub_1001731D4(uint64_t a1)
{
  v1 = a1;
  if (*(a1 + 16))
  {
    sub_100085D40(&qword_10059CE08, &qword_100436110);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = _swiftEmptyDictionarySingleton;
  }

  v3 = v1 + 64;
  v4 = 1 << *(v1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v1 + 64);
  v7 = (v4 + 63) >> 6;

  v8 = 0;
  while (v6)
  {
    v13 = v8;
LABEL_13:
    v14 = __clz(__rbit64(v6)) | (v13 << 6);
    sub_1000F26AC(*(v1 + 48) + 40 * v14, v28);
    sub_10009F6D0(*(v1 + 56) + 32 * v14, v29 + 8);
    v26[0] = v29[0];
    v26[1] = v29[1];
    v27 = v30;
    v25[0] = v28[0];
    v25[1] = v28[1];
    sub_1000F26AC(v25, v24);
    if (!swift_dynamicCast())
    {
      sub_100005518(v25, &qword_10059EA10, &unk_100438470);

LABEL_22:

      return;
    }

    sub_10009F6D0(v26 + 8, v24);
    sub_100005518(v25, &qword_10059EA10, &unk_100438470);
    if ((swift_dynamicCast() & 1) == 0)
    {

      goto LABEL_22;
    }

    v6 &= v6 - 1;
    v15 = sub_1000EE808(v22, v23);
    if (v16)
    {
      v9 = v1;
      v10 = 16 * v15;
      v11 = (v2[6] + 16 * v15);
      *v11 = v22;
      v11[1] = v23;

      v12 = (v2[7] + v10);
      v1 = v9;
      *v12 = v22;
      v12[1] = v23;

      v8 = v13;
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_24;
      }

      *(v2 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v15;
      v17 = (v2[6] + 16 * v15);
      *v17 = v22;
      v17[1] = v23;
      v18 = (v2[7] + 16 * v15);
      *v18 = v22;
      v18[1] = v23;
      v19 = v2[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_25;
      }

      v2[2] = v21;
      v8 = v13;
    }
  }

  while (1)
  {
    v13 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v13 >= v7)
    {
      goto LABEL_22;
    }

    v6 = *(v3 + 8 * v13);
    ++v8;
    if (v6)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
}

Swift::Int sub_1001734C0()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1001735C4(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_1001736B4()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1001737B4@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100179840(*a1);
  *a2 = result;
  return result;
}

void sub_1001737E4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE200000000000000;
  v4 = 29551;
  v5 = 0xEE00796C696D6146;
  v6 = 0x6572617764726168;
  v7 = 0xED00006C65646F4DLL;
  v8 = 0x6572617764726168;
  if (v2 != 3)
  {
    v8 = 0x6F724665726F7473;
    v7 = 0xEC0000006449746ELL;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x4E646C697542736FLL;
    v3 = 0xED00007265626D75;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

Swift::Int sub_1001738A4()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_100173918()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10017396C@<X0>(Swift::String *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_100509B00, *a1);

  *a2 = v3 != 0;
  return result;
}

uint64_t sub_1001739E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[23] = a5;
  v6[24] = a6;
  v6[22] = a4;
  v7 = type metadata accessor for BagService.PermittedDataOrigin();
  v6[25] = v7;
  v6[26] = *(v7 - 8);
  v6[27] = swift_task_alloc();
  v8 = type metadata accessor for Logger();
  v6[28] = v8;
  v6[29] = *(v8 - 8);
  v6[30] = swift_task_alloc();
  v6[31] = swift_task_alloc();
  v6[32] = swift_task_alloc();
  v6[33] = swift_task_alloc();

  return _swift_task_switch(sub_100173B24, 0, 0);
}

uint64_t sub_100173B24(uint64_t a1)
{
  static Logger.metrics.getter();

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v1[22];
  if (v4)
  {
    v6 = swift_slowAlloc();
    *v6 = 134349056;
    *(v6 + 4) = *(v5 + 16);

    _os_log_impl(&_mh_execute_header, v2, v3, "Preparing to enqueue %{public}ld events", v6, 0xCu);
  }

  else
  {
  }

  v7 = v1[33];
  v8 = v1[28];
  v9 = v1[29];
  v10 = *(v9 + 8);
  v1[34] = v10;
  v1[35] = (v9 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v10(v7, v8);
  static BagService.PermittedDataOrigin.networkAndPersistence.getter();
  v11 = swift_task_alloc();
  v1[36] = v11;
  *v11 = v1;
  v11[1] = sub_100173CAC;
  v12 = v1[27];

  return sub_1000C4BE0((v1 + 7), 0, 0, v12);
}

uint64_t sub_100173CAC()
{
  v2 = *v1;
  *(*v1 + 296) = v0;

  v3 = v2[27];
  v4 = v2[26];
  v5 = v2[25];
  if (v0)
  {

    (*(v4 + 8))(v3, v5);
    v6 = sub_100173E44;
  }

  else
  {
    (*(v4 + 8))(v3, v5);
    v6 = sub_100173FA0;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100173E44()
{
  *(v0 + 56) = 0u;
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0;
  sub_100005518(v0 + 56, &qword_10059BDF0, qword_100434920);
  static Logger.metrics.getter();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();
  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 272);
  v5 = *(v0 + 256);
  v6 = *(v0 + 224);
  if (v3)
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Failed to load bag", v7, 2u);
  }

  v4(v5, v6);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_100173FA0()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 176);
  sub_1000056B8((v0 + 56), v0 + 16);
  v3 = swift_task_alloc();
  *(v3 + 16) = v1;
  *(v3 + 24) = v0 + 16;
  v4 = sub_100172DB4(sub_1001798D0, v3, v2);
  *(v0 + 304) = v4;

  if (v4 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_3;
    }
  }

  else if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    static Logger.metrics.getter();

    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 134349056;
      if (v4 >> 62)
      {
        v8 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v8 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v7 + 4) = v8;

      _os_log_impl(&_mh_execute_header, v5, v6, "Enqueueing %{public}ld events", v7, 0xCu);
    }

    else
    {
    }

    (*(v0 + 272))(*(v0 + 248), *(v0 + 224));
    v9 = *(v0 + 40);
    v10 = *(v0 + 48);
    v11 = sub_100005B60((v0 + 16), v9);
    v12 = sub_1000D1A7C(v9, v10, v11);
    v13 = type metadata accessor for ASEMetrics();
    v14 = objc_allocWithZone(v13);
    sub_1000056D0(v12 + OBJC_IVAR___Bag_bag, v0 + 136);
    sub_100085D40(&qword_10059C3D0, &qword_1004353A0);
    sub_100085D40(&unk_10059CE80, &unk_100436170);
    swift_dynamicCast();
    v15 = objc_allocWithZone(v13);
    *(v0 + 312) = sub_100101074(0, (v0 + 96));

    swift_getObjectType();
    swift_deallocPartialClassInstance();
    v16 = swift_task_alloc();
    *(v0 + 320) = v16;
    *v16 = v0;
    v16[1] = sub_10017437C;

    return sub_1001012A4(v4, 1);
  }

  static Logger.metrics.getter();
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&_mh_execute_header, v18, v19, "No AMSMetricsEvents to enqueue", v20, 2u);
  }

  v21 = *(v0 + 272);
  v22 = *(v0 + 240);
  v23 = *(v0 + 224);

  v21(v22, v23);
  sub_100005A00((v0 + 16));

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_10017437C()
{
  v1 = *(*v0 + 312);

  return _swift_task_switch(sub_1001744AC, 0, 0);
}

uint64_t sub_1001744AC()
{
  sub_100005A00((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t getEnumTagSinglePayload for SkannerEvent.EventType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SkannerEvent.EventType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1001746DC()
{
  result = qword_10059E9E8;
  if (!qword_10059E9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10059E9E8);
  }

  return result;
}

unint64_t sub_100174734()
{
  result = qword_10059E9F0;
  if (!qword_10059E9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10059E9F0);
  }

  return result;
}

char *sub_1001747A4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1001748E4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1001747C4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100174D94(a1, a2, a3, *v3, &qword_10059EA40, &unk_1004384C0, &qword_10059BD50, &qword_100434890);
  *v3 = result;
  return result;
}

void *sub_100174804(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1001749F0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100174824(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100174B24(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100174844(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100174C4C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100174864(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100174D94(a1, a2, a3, *v3, &qword_10059EA58, &unk_1004384E0, &qword_10059D9B8, &qword_1004375E0);
  *v3 = result;
  return result;
}

char *sub_1001748A4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100174EC8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1001748C4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100174FD8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1001748E4(char *result, int64_t a2, char a3, char *a4)
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
    sub_100085D40(&unk_10059DCD0, &unk_100437400);
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

void *sub_1001749F0(void *result, int64_t a2, char a3, void *a4)
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
    sub_100085D40(&qword_10059EA30, &qword_1004384B0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100085D40(&qword_10059EA38, &qword_1004384B8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100174B24(char *result, int64_t a2, char a3, char *a4)
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
    sub_100085D40(&unk_10059EA60, &unk_1004384F0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 112);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[112 * v8])
    {
      memmove(v12, v13, 112 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_100174C4C(void *result, int64_t a2, char a3, void *a4)
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
    sub_100085D40(&qword_10059EA18, &qword_100438488);
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
    sub_100085D40(&qword_10059EA20, &unk_100438490);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_100174D94(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    sub_100085D40(a5, a6);
    v16 = swift_allocObject();
    v17 = j__malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 25;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 3);
  }

  else
  {
    v16 = _swiftEmptyArrayStorage;
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 8 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100085D40(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

char *sub_100174EC8(char *result, int64_t a2, char a3, char *a4)
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
    sub_100085D40(&unk_10059DC80, &unk_100435400);
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