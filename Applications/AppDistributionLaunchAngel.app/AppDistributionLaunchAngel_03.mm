uint64_t sub_10005B860()
{
  v1 = *v0;

  v2 = *(v1 + 144);
  v3 = *(v1 + 136);

  return _swift_task_switch(sub_10005BA00, v3, v2);
}

uint64_t sub_10005BA00()
{
  sub_10005F95C(*(v0 + 120), type metadata accessor for InstallConfirmationAppStoreMetrics);
  v1 = *(v0 + 16) + OBJC_IVAR____TtC26AppDistributionLaunchAngel33InstallConfirmationViewController_localizedContent;
  if ((sub_100053F24() & 1) == 0)
  {
    goto LABEL_9;
  }

  v3 = *(v0 + 80);
  v2 = *(v0 + 88);
  v4 = *(v0 + 72);
  type metadata accessor for LocalizedInstallSheetContent(0);
  InstallSheetContext.source.getter();
  v5 = (*(v3 + 88))(v2, v4);
  if (v5 == enum case for InstallSheetContext.Source.appStoreWithContext(_:))
  {
    v6 = *(v0 + 88);
    v7 = *(v0 + 64);
    v8 = *(v0 + 48);
    v9 = *(v0 + 56);
    (*(*(v0 + 80) + 96))(v6, *(v0 + 72));
    (*(v9 + 32))(v7, v6, v8);
    LOBYTE(v6) = InstallSheetContext.Source.AppStoreSheetContext.showBiometrics.getter();
    (*(v9 + 8))(v7, v8);
    if (v6)
    {
      goto LABEL_9;
    }

LABEL_7:
    v10 = *(v0 + 226);
    goto LABEL_14;
  }

  if (v5 == enum case for InstallSheetContext.Source.appStore(_:))
  {
    if ((InstallSheetContext.showBiometricsForAppStoreInstall.getter() & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else
  {
    (*(*(v0 + 80) + 8))(*(v0 + 88), *(v0 + 72));
  }

LABEL_9:
  if (*(v0 + 226) == 1)
  {
    v11 = swift_task_alloc();
    *(v0 + 208) = v11;
    *v11 = v0;
    v11[1] = sub_10005BDC4;

    return sub_10005D5C0(v1);
  }

  v10 = 0;
LABEL_14:

  sub_10005D158(v10);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_10005BC64()
{
  v1 = *v0;

  v2 = *(v1 + 144);
  v3 = *(v1 + 136);

  return _swift_task_switch(sub_10005F9D4, v3, v2);
}

uint64_t sub_10005BDC4(__int16 a1)
{
  v2 = *v1;
  *(*v1 + 224) = a1;

  v3 = *(v2 + 144);
  v4 = *(v2 + 136);

  return _swift_task_switch(sub_10005BEEC, v4, v3);
}

uint64_t sub_10005BEEC()
{
  if ((*(v0 + 224) & 1) == 0)
  {

    goto LABEL_5;
  }

  if ((*(v0 + 224) & 0x100) == 0)
  {

    sub_10005D158(1);
LABEL_5:

    v1 = *(v0 + 8);

    return v1();
  }

  static Clock<>.continuous.getter();
  v3 = swift_task_alloc();
  *(v0 + 216) = v3;
  *v3 = v0;
  v3[1] = sub_10005C05C;

  return sub_100055358(1000000000000000000, 0, 0, 0, 1);
}

uint64_t sub_10005C05C()
{
  v3 = *v1;
  v2 = *v1;

  v4 = v2[5];
  v5 = v2[4];
  v6 = v2[3];
  if (v0)
  {

    (*(v5 + 8))(v4, v6);
    v7 = v3[17];
    v8 = v3[18];
    v9 = sub_10005F9D0;
  }

  else
  {
    (*(v5 + 8))(v4, v6);
    v7 = v3[17];
    v8 = v3[18];
    v9 = sub_10005C1F0;
  }

  return _swift_task_switch(v9, v7, v8);
}

uint64_t sub_10005C1F0()
{

  sub_10005D158(1);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10005C298(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[12] = a4;
  v5[13] = a5;
  sub_1000047BC(&qword_100089388, &qword_100067A70);
  v5[14] = swift_task_alloc();
  v6 = type metadata accessor for InstallConfirmationAppStoreMetrics(0);
  v5[15] = v6;
  v5[16] = *(v6 - 8);
  v5[17] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[18] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[19] = v8;
  v5[20] = v7;

  return _swift_task_switch(sub_10005C3C4, v8, v7);
}

uint64_t sub_10005C3C4()
{
  v1 = v0[15];
  v2 = v0[16];
  v3 = v0[14];
  sub_100010668(v0[12] + OBJC_IVAR____TtC26AppDistributionLaunchAngel33InstallConfirmationViewController_appStoreMetrics, v3, &qword_100089388, &qword_100067A70);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = v0[14];

    sub_100011C14(v4, &qword_100089388, &qword_100067A70);

    v5 = v0[1];

    return v5();
  }

  else
  {
    sub_100022268(v0[14], v0[17]);
    type metadata accessor for LocalizedInstallSheetContent(0);
    v7 = InstallSheetContext.itemID.getter();
    v9 = v8;
    v0[21] = v8;
    sub_1000047BC(&qword_100089500, &qword_100066630);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100065650;
    *(inited + 32) = 0x72556E6F69746361;
    *(inited + 40) = 0xE90000000000006CLL;
    v11 = URL.absoluteString.getter();
    *(inited + 72) = &type metadata for String;
    *(inited + 48) = v11;
    *(inited + 56) = v12;
    v0[22] = sub_100059AC4(inited);
    swift_setDeallocating();
    sub_100011C14(inited + 32, &qword_100089508, &qword_100066638);
    v13 = swift_task_alloc();
    v0[23] = v13;
    *v13 = v0;
    v13[1] = sub_10005C64C;

    return sub_100056B2C(0x726F4D6E7261654CLL, 0xE900000000000065, v7, v9, 0x657461676976616ELL, 0xE800000000000000, 1802398060, 0xE400000000000000);
  }
}

uint64_t sub_10005C64C()
{
  v1 = *v0;

  v2 = *(v1 + 160);
  v3 = *(v1 + 152);

  return _swift_task_switch(sub_10005C7AC, v3, v2);
}

uint64_t sub_10005C7AC()
{
  v1 = *(v0 + 136);

  sub_10005F95C(v1, type metadata accessor for InstallConfirmationAppStoreMetrics);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10005C83C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  sub_1000047BC(&qword_100089388, &qword_100067A70);
  v4[3] = swift_task_alloc();
  v5 = type metadata accessor for InstallConfirmationAppStoreMetrics(0);
  v4[4] = v5;
  v4[5] = *(v5 - 8);
  v4[6] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[7] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[8] = v7;
  v4[9] = v6;

  return _swift_task_switch(sub_10005C968, v7, v6);
}

uint64_t sub_10005C968()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[3];
  sub_100010668(v0[2] + OBJC_IVAR____TtC26AppDistributionLaunchAngel33InstallConfirmationViewController_appStoreMetrics, v3, &qword_100089388, &qword_100067A70);
  v4 = (*(v2 + 48))(v3, 1, v1);
  v5 = v0[3];
  if (v4 == 1)
  {

    sub_100011C14(v5, &qword_100089388, &qword_100067A70);

    v6 = v0[1];

    return v6();
  }

  else
  {
    sub_100022268(v0[3], v0[6]);
    type metadata accessor for LocalizedInstallSheetContent(0);
    v8 = InstallSheetContext.itemID.getter();
    v10 = v9;
    v0[10] = v9;
    v0[11] = sub_100059AC4(&_swiftEmptyArrayStorage);
    v11 = swift_task_alloc();
    v0[12] = v11;
    *v11 = v0;
    v11[1] = sub_10005CB48;

    return sub_100056B2C(1701998413, 0xE400000000000000, v8, v10, 1701998445, 0xE400000000000000, 0x6E6F74747562, 0xE600000000000000);
  }
}

uint64_t sub_10005CB48()
{
  v1 = *v0;

  v2 = *(v1 + 72);
  v3 = *(v1 + 64);

  return _swift_task_switch(sub_10005F9CC, v3, v2);
}

uint64_t sub_10005CCA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  sub_1000047BC(&qword_100089388, &qword_100067A70);
  v4[3] = swift_task_alloc();
  v5 = type metadata accessor for InstallConfirmationAppStoreMetrics(0);
  v4[4] = v5;
  v4[5] = *(v5 - 8);
  v4[6] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[7] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[8] = v7;
  v4[9] = v6;

  return _swift_task_switch(sub_10005CDD4, v7, v6);
}

uint64_t sub_10005CDD4()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[3];
  sub_100010668(v0[2] + OBJC_IVAR____TtC26AppDistributionLaunchAngel33InstallConfirmationViewController_appStoreMetrics, v3, &qword_100089388, &qword_100067A70);
  v4 = (*(v2 + 48))(v3, 1, v1);
  v5 = v0[3];
  if (v4 == 1)
  {

    sub_100011C14(v5, &qword_100089388, &qword_100067A70);

    v6 = v0[1];

    return v6();
  }

  else
  {
    sub_100022268(v0[3], v0[6]);
    type metadata accessor for LocalizedInstallSheetContent(0);
    v8 = InstallSheetContext.itemID.getter();
    v10 = v9;
    v0[10] = v9;
    v11 = swift_task_alloc();
    v0[11] = v11;
    *v11 = v0;
    v11[1] = sub_10005CF84;

    return sub_100057420(v8, v10, 0x6174736E49707041, 0xEA00000000006C6CLL);
  }
}

uint64_t sub_10005CF84()
{
  v1 = *v0;

  v2 = *(v1 + 72);
  v3 = *(v1 + 64);

  return _swift_task_switch(sub_10005D0C8, v3, v2);
}

uint64_t sub_10005D0C8()
{
  v1 = *(v0 + 48);

  sub_10005F95C(v1, type metadata accessor for InstallConfirmationAppStoreMetrics);

  v2 = *(v0 + 8);

  return v2();
}

void sub_10005D158(char a1)
{
  v2 = OBJC_IVAR____TtC26AppDistributionLaunchAngel33InstallConfirmationViewController_response;
  v1[OBJC_IVAR____TtC26AppDistributionLaunchAngel33InstallConfirmationViewController_response] = a1;
  v3 = *&v1[OBJC_IVAR____TtC26AppDistributionLaunchAngel33InstallConfirmationViewController_responseAction];
  if (v3)
  {
    v4 = v3;
    if ([v4 canSendResponse])
    {
      v5 = [objc_allocWithZone(BSMutableSettings) init];
      v6 = [objc_allocWithZone(NSNumber) initWithBool:v1[v2]];
      [v5 setObject:v6 forSetting:1];

      v7 = [objc_opt_self() responseWithInfo:v5];
      [v4 sendResponse:v7];

      v4 = v7;
    }
  }

  v8 = [objc_opt_self() clearColor];
  v9 = objc_opt_self();
  v10 = swift_allocObject();
  *(v10 + 16) = v1;
  *(v10 + 24) = v8;
  v21 = sub_10005F56C;
  v22 = v10;
  v17 = _NSConcreteStackBlock;
  v18 = 1107296256;
  v19 = sub_10005F9E8;
  v20 = &unk_10007FCC8;
  v11 = _Block_copy(&v17);
  v12 = v1;
  v13 = v8;

  [v9 animateWithDuration:v11 animations:0.3];
  _Block_release(v11);

  v14 = swift_allocObject();
  *(v14 + 16) = v12;
  v21 = sub_10005F5C4;
  v22 = v14;
  v17 = _NSConcreteStackBlock;
  v18 = 1107296256;
  v19 = sub_10005F9E8;
  v20 = &unk_10007FD18;
  v15 = _Block_copy(&v17);
  v16 = v12;

  [v16 dismissViewControllerAnimated:1 completion:v15];
  _Block_release(v15);
}

uint64_t sub_10005D410(uint64_t a1)
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = a1 + OBJC_IVAR____TtC26AppDistributionLaunchAngel33InstallConfirmationViewController_dismissAction;
  v3 = *(a1 + OBJC_IVAR____TtC26AppDistributionLaunchAngel33InstallConfirmationViewController_dismissAction);
  if (v3)
  {
    v4 = *(v2 + 8);

    v3(v5);
    sub_10001369C(v3, v4);
  }
}

void sub_10005D4DC(void *a1, uint64_t a2)
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = [a1 view];
  if (v4)
  {
    v5 = v4;
    [v4 setBackgroundColor:a2];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10005D5C0(uint64_t a1)
{
  v2[77] = v1;
  v2[76] = a1;
  v3 = sub_1000047BC(&qword_10008A8B0, &unk_100067A80);
  v2[78] = v3;
  v2[79] = *(v3 - 8);
  v2[80] = swift_task_alloc();
  sub_1000047BC(&qword_1000893C0, &unk_1000663F0);
  v2[81] = swift_task_alloc();
  v4 = sub_1000047BC(&qword_100089590, &unk_100067A90);
  v2[82] = v4;
  v2[83] = *(v4 - 8);
  v2[84] = swift_task_alloc();
  v5 = type metadata accessor for FeatureFlag();
  v2[85] = v5;
  v2[86] = *(v5 - 8);
  v2[87] = swift_task_alloc();

  return _swift_task_switch(sub_10005D7B8, 0, 0);
}

uint64_t sub_10005D7B8()
{
  v64 = v0;
  *(v0 + 704) = type metadata accessor for LocalizedInstallSheetContent(0);
  v1 = InstallSheetContext.authenticationContextData.getter();
  v3 = &_swift_stdlib_bridgeErrorToNSError_ptr;
  if (v2 >> 60 != 15)
  {
    v4 = v1;
    v5 = v2;
    v6 = objc_allocWithZone(LAContext);
    isa = Data._bridgeToObjectiveC()().super.isa;
    v8 = [v6 initWithExternalizedContext:isa];

    v9 = 0x64696C6156;
    if (!v8)
    {
      v9 = 0x64696C61766E49;
    }

    v59 = v9;
    v61 = v8;
    if (v8)
    {
      v10 = 0xE500000000000000;
    }

    else
    {
      v10 = 0xE700000000000000;
    }

    if (qword_100088438 != -1)
    {
      swift_once();
    }

    v11 = *(v0 + 616);
    v12 = type metadata accessor for Logger();
    sub_1000105E8(v12, qword_10008C4C0);
    v13 = v11;

    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      *v16 = 136446466;
      v17 = InstallSheetContext.logKey.getter();
      v19 = sub_10000F78C(v17, v18, &v63);

      *(v16 + 4) = v19;
      *(v16 + 12) = 2080;
      v20 = sub_10000F78C(v59, v10, &v63);

      *(v16 + 14) = v20;
      _os_log_impl(&_mh_execute_header, v14, v15, "[%{public}s] Received authentication context, is valid: %s", v16, 0x16u);
      swift_arrayDestroy();

      v3 = &_swift_stdlib_bridgeErrorToNSError_ptr;

      sub_10005A554(v4, v5);

      v21 = v61;
      if (v61)
      {
LABEL_11:
        v22 = v21;
        v23 = v22;
        goto LABEL_14;
      }
    }

    else
    {
      sub_10005A554(v4, v5);

      v21 = v8;
      if (v8)
      {
        goto LABEL_11;
      }
    }
  }

  v22 = [objc_allocWithZone(v3[149]) init];
  v23 = 0;
LABEL_14:
  *(v0 + 720) = v23;
  *(v0 + 712) = v22;
  sub_10001E778(0, &qword_100089378, NSNumber_ptr);
  v24 = NSNumber.init(integerLiteral:)(60).super.super.isa;
  [v22 setOptionMaxCredentialAge:v24];

  *(v0 + 576) = 0;
  v25 = [v22 canEvaluatePolicy:2 error:v0 + 576];
  v26 = *(v0 + 576);
  *(v0 + 728) = v26;
  if (v25)
  {
    v27 = *(v0 + 696);
    v28 = *(v0 + 688);
    v29 = *(v0 + 680);
    (*(v28 + 104))(v27, enum case for FeatureFlag.newInstallSheetFlow(_:), v29);
    v30 = v26;
    v31 = isFeatureEnabled(_:)();
    (*(v28 + 8))(v27, v29);
    if (v31)
    {
      v32 = v0 + 80;
      v60 = *(v0 + 672);
      v33 = *(v0 + 664);
      v34 = *(v0 + 656);
      sub_1000047BC(&unk_10008A4B0, &unk_1000676F0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_100065650;
      *(v0 + 852) = 1000;
      AnyHashable.init<A>(_:)();
      *(inited + 96) = &type metadata for Bool;
      *(inited + 72) = 1;
      sub_100059988(inited);
      swift_setDeallocating();
      sub_100011C14(inited + 32, &qword_100089010, &qword_1000663A0);
      v36 = Dictionary._bridgeToObjectiveC()().super.isa;
      *(v0 + 736) = v36;

      *(v0 + 80) = v0;
      *(v0 + 120) = v0 + 600;
      *(v0 + 88) = sub_10005E204;
      swift_continuation_init();
      *(v0 + 368) = v34;
      v37 = sub_1000104C4((v0 + 344));
      sub_1000047BC(&qword_100089598, &unk_100066740);
      sub_1000047BC(&qword_100088B60, &qword_100065F80);
      CheckedContinuation.init(continuation:function:)();
      (*(v33 + 32))(v37, v60, v34);
      *(v0 + 312) = _NSConcreteStackBlock;
      *(v0 + 320) = 1107296256;
      *(v0 + 328) = sub_10005A890;
      *(v0 + 336) = &unk_10007FC78;
      [v22 evaluatePolicy:2 options:v36 reply:?];
      (*(v33 + 8))(v37, v34);
LABEL_27:

      return _swift_continuation_await(v32);
    }

    *(v0 + 592) = 0;

    v41 = [v22 evaluationMechanismsForPolicy:2 error:v0 + 592];
    v42 = *(v0 + 592);
    if (v41)
    {
      v43 = v41;
      v44 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
      v45 = v42;

      *(v0 + 848) = 1;
      AnyHashable.init<A>(_:)();
      v46 = sub_10005A7B8(v0 + 376, v44);

      sub_10001E2FC(v0 + 376);
      if (v46)
      {

        v47 = String._bridgeToObjectiveC()();
        [v22 setOptionAuthenticationTitle:v47];
      }
    }

    else
    {
      v48 = v42;
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }

    v49 = String._bridgeToObjectiveC()();
    [v22 setOptionPasscodeTitle:v49];

    v50 = String._bridgeToObjectiveC()();
    [v22 setOptionPasswordAuthenticationReason:v50];

    v51 = SecAccessControlCreateWithFlags(kCFAllocatorDefault, kSecAttrAccessibleWhenUnlockedThisDeviceOnly, 0x40000001uLL, 0);
    *(v0 + 824) = v51;
    if (v51)
    {
      v52 = v51;
      v32 = v0 + 16;
      v53 = *(v0 + 640);
      v54 = *(v0 + 632);
      v55 = *(v0 + 624);
      v62 = String._bridgeToObjectiveC()();
      *(v0 + 832) = v62;

      *(v0 + 16) = v0;
      *(v0 + 56) = v0 + 864;
      *(v0 + 24) = sub_10005EBFC;
      swift_continuation_init();
      *(v0 + 304) = v55;
      v56 = sub_1000104C4((v0 + 280));
      sub_1000047BC(&qword_100088B60, &qword_100065F80);
      CheckedContinuation.init(continuation:function:)();
      (*(v54 + 32))(v56, v53, v55);
      *(v0 + 248) = _NSConcreteStackBlock;
      *(v0 + 256) = 1107296256;
      *(v0 + 264) = sub_10005F1B8;
      *(v0 + 272) = &unk_10007FC50;
      [v22 evaluateAccessControl:v52 operation:3 localizedReason:v62 reply:?];
      (*(v54 + 8))(v56, v55);
      goto LABEL_27;
    }

    goto LABEL_31;
  }

  if (!v26)
  {

    goto LABEL_31;
  }

  type metadata accessor for Code(0);
  *(v0 + 584) = -5;
  sub_100029638();
  v38 = v26;
  v39 = static _ErrorCodeProtocol.~= infix(_:_:)();

  if ((v39 & 1) == 0)
  {
LABEL_31:
    v40 = 0;
    goto LABEL_32;
  }

  v40 = 1;
LABEL_32:

  v57 = *(v0 + 8);

  return v57(v40);
}

uint64_t sub_10005E204()
{
  v1 = *(*v0 + 112);
  *(*v0 + 744) = v1;
  if (v1)
  {
    v2 = sub_10005EE34;
  }

  else
  {
    v2 = sub_10005E340;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10005E340()
{
  v28 = v0;
  v1 = *(v0 + 600);

  if (v1)
  {
    *(v0 + 856) = 3;
    AnyHashable.init<A>(_:)();
    if (*(v1 + 16) && (v2 = sub_100057EC8(v0 + 416), (v3 & 1) != 0))
    {
      sub_100010538(*(v1 + 56) + 32 * v2, v0 + 496);
      sub_10001E2FC(v0 + 416);
      if (swift_dynamicCast() & 1) != 0 && (*(v0 + 866))
      {
LABEL_12:
        v6 = *(v0 + 728);
        v7 = *(v0 + 720);

        v8 = *(v0 + 8);

        return v8(1);
      }
    }

    else
    {
      sub_10001E2FC(v0 + 416);
    }

    *(v0 + 860) = 1;
    AnyHashable.init<A>(_:)();
    if (*(v1 + 16) && (v4 = sub_100057EC8(v0 + 456), (v5 & 1) != 0))
    {
      sub_100010538(*(v1 + 56) + 32 * v4, v0 + 528);
      sub_10001E2FC(v0 + 456);
      if (swift_dynamicCast() & 1) != 0 && (*(v0 + 865))
      {
        goto LABEL_12;
      }
    }

    else
    {
      sub_10001E2FC(v0 + 456);
    }

    if (qword_100088438 != -1)
    {
      swift_once();
    }

    v10 = *(v0 + 616);
    v11 = type metadata accessor for Logger();
    sub_1000105E8(v11, qword_10008C4C0);
    v12 = v10;

    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *v15 = 136446466;
      v16 = InstallSheetContext.logKey.getter();
      v18 = sub_10000F78C(v16, v17, &v27);

      *(v15 + 4) = v18;
      *(v15 + 12) = 2082;
      v19 = Dictionary.description.getter();
      v21 = v20;

      v22 = sub_10000F78C(v19, v21, &v27);

      *(v15 + 14) = v22;
      _os_log_impl(&_mh_execute_header, v13, v14, "[%{public}s] Failed evaluation with results: %{public}s", v15, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }
  }

  v23 = *(v0 + 648);
  v24 = *(v0 + 608);
  *(v0 + 752) = v24[22];
  *(v0 + 760) = v24[23];
  *(v0 + 768) = v24[24];
  *(v0 + 776) = v24[25];
  *(v0 + 784) = v24[26];
  *(v0 + 792) = v24[27];

  sub_100054164(v23);
  type metadata accessor for MainActor();
  *(v0 + 800) = static MainActor.shared.getter();
  v26 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10005E800, v26, v25);
}

uint64_t sub_10005E800()
{
  v1 = *(v0 + 792);
  v2 = *(v0 + 784);
  v12 = *(v0 + 752);
  v13 = *(v0 + 768);
  v3 = *(v0 + 648);

  v4 = type metadata accessor for OsloAuthenticationTask(0);
  v5 = objc_allocWithZone(v4);
  v6 = OBJC_IVAR____TtC26AppDistributionLaunchAngel22OsloAuthenticationTask_finalizedContinuation;
  v7 = sub_1000047BC(&unk_1000899D0, &unk_100066640);
  (*(*(v7 - 8) + 56))(&v5[v6], 1, 1, v7);
  v5[OBJC_IVAR____TtC26AppDistributionLaunchAngel22OsloAuthenticationTask_finalResult] = 0;
  v8 = &v5[OBJC_IVAR____TtC26AppDistributionLaunchAngel22OsloAuthenticationTask_localizedContent];
  v9 = type metadata accessor for OsloAuthenticationTask.LocalizedContent(0);
  sub_100010668(v3, &v8[*(v9 + 28)], &qword_1000893C0, &unk_1000663F0);
  *v8 = v12;
  *(v8 + 1) = v13;
  *(v8 + 4) = v2;
  *(v8 + 5) = v1;
  *(v0 + 560) = v5;
  *(v0 + 568) = v4;
  *(v0 + 808) = objc_msgSendSuper2((v0 + 560), "init");
  sub_100011C14(v3, &qword_1000893C0, &unk_1000663F0);
  v10 = swift_task_alloc();
  *(v0 + 816) = v10;
  *v10 = v0;
  v10[1] = sub_10005E9E8;

  return sub_10002EACC();
}

uint64_t sub_10005E9E8(char a1)
{
  *(*v1 + 867) = a1;

  return _swift_task_switch(sub_10005EB14, 0, 0);
}

uint64_t sub_10005EB14()
{
  v1 = *(v0 + 808);
  v2 = *(v0 + 728);
  v3 = *(v0 + 712);

  v4 = *(v0 + 867);

  v5 = *(v0 + 8);

  return v5(v4);
}

uint64_t sub_10005EBFC()
{
  v1 = *(*v0 + 48);
  *(*v0 + 840) = v1;
  if (v1)
  {
    v2 = sub_10005F0B0;
  }

  else
  {
    v2 = sub_10005ED38;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10005ED38()
{
  v1 = *(v0 + 832);
  v2 = *(v0 + 824);
  v3 = *(v0 + 728);
  v4 = *(v0 + 712);

  v5 = *(v0 + 864);
  if (v5)
  {
    v6 = 256;
  }

  else
  {
    v6 = 0;
  }

  v7 = *(v0 + 8);

  return v7(v6 | v5 & 1u);
}

uint64_t sub_10005EE34(uint64_t a1)
{
  v19 = v1;
  v2 = v1[92];
  swift_willThrow();

  if (qword_100088438 != -1)
  {
    swift_once();
  }

  v3 = v1[77];
  v4 = type metadata accessor for Logger();
  sub_1000105E8(v4, qword_10008C4C0);
  v5 = v3;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v18 = v9;
    *v8 = 136446210;
    v10 = InstallSheetContext.logKey.getter();
    v12 = sub_10000F78C(v10, v11, &v18);

    *(v8 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v6, v7, "[%{public}s] Error evaluating context non-interactively, performing interactive auth", v8, 0xCu);
    sub_10001059C(v9);
  }

  v13 = v1[81];
  v14 = v1[76];
  v1[94] = v14[22];
  v1[95] = v14[23];
  v1[96] = v14[24];
  v1[97] = v14[25];
  v1[98] = v14[26];
  v1[99] = v14[27];

  sub_100054164(v13);
  type metadata accessor for MainActor();
  v1[100] = static MainActor.shared.getter();
  v16 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10005E800, v16, v15);
}

uint64_t sub_10005F0B0(uint64_t a1)
{
  v2 = v1[104];
  v3 = v1[103];
  v4 = v1[91];
  v5 = v1[90];
  v6 = v1[89];
  swift_willThrow();

  v7 = v1[1];

  return v7(0);
}

void sub_10005F1B8(uint64_t a1, char a2, void *a3)
{
  sub_100010624((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v4 = a3;
    sub_1000047BC(&qword_10008A8B0, &unk_100067A80);
    CheckedContinuation.resume(throwing:)();
  }

  else
  {
    sub_1000047BC(&qword_10008A8B0, &unk_100067A80);
    CheckedContinuation.resume(returning:)();
  }
}

id sub_10005F2E8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for InstallConfirmationViewController(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for InstallConfirmationViewController(uint64_t a1)
{
  result = qword_10008A8A0;
  if (!qword_10008A8A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10005F41C(uint64_t a1)
{
  type metadata accessor for LocalizedInstallSheetContent(319);
  if (v1 <= 0x3F)
  {
    sub_10002207C(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_10005F52C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10005F574(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10005F58C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10005F5D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LocalizedInstallSheetContent(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_10005F648(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = &v3[OBJC_IVAR____TtC26AppDistributionLaunchAngel33InstallConfirmationViewController_dismissAction];
  *v8 = 0;
  v8[1] = 0;
  *&v3[OBJC_IVAR____TtC26AppDistributionLaunchAngel33InstallConfirmationViewController_installSheetConfirmationHostingController] = 0;
  v9 = OBJC_IVAR____TtC26AppDistributionLaunchAngel33InstallConfirmationViewController_installSheetConfirmationViewModel;
  type metadata accessor for InstallSheetConfirmationViewModel(0);
  swift_allocObject();
  *&v3[v9] = sub_100005FA4();
  v10 = OBJC_IVAR____TtC26AppDistributionLaunchAngel33InstallConfirmationViewController_responseAction;
  *&v3[OBJC_IVAR____TtC26AppDistributionLaunchAngel33InstallConfirmationViewController_responseAction] = 0;
  v3[OBJC_IVAR____TtC26AppDistributionLaunchAngel33InstallConfirmationViewController_response] = 0;
  v11 = OBJC_IVAR____TtC26AppDistributionLaunchAngel33InstallConfirmationViewController_isIPad;
  v12 = [objc_opt_self() currentDevice];
  v13 = [v12 userInterfaceIdiom];

  v4[v11] = v13 == 1;
  v14 = [a1 actions];
  if (v14)
  {
    sub_10001E778(0, &qword_100088FF0, BSAction_ptr);
    sub_10001E294();
    v15 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    v14 = sub_10005FA2C(v15);
  }

  v16 = *&v4[v10];
  *&v4[v10] = v14;

  sub_10005F5D4(a2, &v4[OBJC_IVAR____TtC26AppDistributionLaunchAngel33InstallConfirmationViewController_localizedContent]);
  sub_100010668(a3, &v4[OBJC_IVAR____TtC26AppDistributionLaunchAngel33InstallConfirmationViewController_appStoreMetrics], &qword_100089388, &qword_100067A70);
  v19.receiver = v4;
  v19.super_class = type metadata accessor for InstallConfirmationViewController(0);
  v17 = objc_msgSendSuper2(&v19, "initWithNibName:bundle:", 0, 0);
  sub_100011C14(a3, &qword_100089388, &qword_100067A70);
  sub_10005F95C(a2, type metadata accessor for LocalizedInstallSheetContent);
  return v17;
}

void sub_10005F84C()
{
  v1 = v0;
  v2 = (v0 + OBJC_IVAR____TtC26AppDistributionLaunchAngel33InstallConfirmationViewController_dismissAction);
  *v2 = 0;
  v2[1] = 0;
  *(v0 + OBJC_IVAR____TtC26AppDistributionLaunchAngel33InstallConfirmationViewController_installSheetConfirmationHostingController) = 0;
  v3 = OBJC_IVAR____TtC26AppDistributionLaunchAngel33InstallConfirmationViewController_installSheetConfirmationViewModel;
  type metadata accessor for InstallSheetConfirmationViewModel(0);
  swift_allocObject();
  *(v0 + v3) = sub_100005FA4();
  *(v0 + OBJC_IVAR____TtC26AppDistributionLaunchAngel33InstallConfirmationViewController_responseAction) = 0;
  *(v0 + OBJC_IVAR____TtC26AppDistributionLaunchAngel33InstallConfirmationViewController_response) = 0;
  v4 = OBJC_IVAR____TtC26AppDistributionLaunchAngel33InstallConfirmationViewController_isIPad;
  v5 = [objc_opt_self() currentDevice];
  v6 = [v5 userInterfaceIdiom];

  *(v1 + v4) = v6 == 1;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_10005F95C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10005F9E8(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_10005FA2C(uint64_t a1)
{
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = __CocoaSet.startIndex.getter();
    v5 = v4;
    v6 = __CocoaSet.endIndex.getter();
    v8 = v7;
    v9 = static __CocoaSet.Index.== infix(_:_:)();
    sub_100060C58(v6, v8, 1);
    if (v9)
    {
LABEL_3:
      sub_100060C58(v3, v5, v2 != 0);
      return 0;
    }
  }

  else
  {
    v3 = _HashTable.startBucket.getter();
    v5 = *(a1 + 36);
    if (v3 == 1 << *(a1 + 32))
    {
      goto LABEL_3;
    }
  }

  sub_100060C64(v3, v5, v2 != 0, a1);
  v12 = v11;
  sub_100060C58(v3, v5, v2 != 0);
  return v12;
}

id sub_10005FB48(uint64_t a1, uint64_t a2)
{
  v5 = &v2[OBJC_IVAR____TtC26AppDistributionLaunchAngel40ConfirmationSheetContainerViewController_dismissAction];
  *v5 = 0;
  v5[1] = 0;
  v6 = OBJC_IVAR____TtC26AppDistributionLaunchAngel40ConfirmationSheetContainerViewController_isIPad;
  v7 = [objc_opt_self() currentDevice];
  v8 = [v7 userInterfaceIdiom];

  v2[v6] = v8 == 1;
  *&v2[OBJC_IVAR____TtC26AppDistributionLaunchAngel40ConfirmationSheetContainerViewController_configurationContext] = a1;
  v9 = OBJC_IVAR____TtC26AppDistributionLaunchAngel40ConfirmationSheetContainerViewController_context;
  v10 = type metadata accessor for ConfirmationSheetContext();
  v11 = *(v10 - 8);
  (*(v11 + 16))(&v2[v9], a2, v10);
  v14.receiver = v2;
  v14.super_class = type metadata accessor for ConfirmationSheetContainerViewController(0);
  v12 = objc_msgSendSuper2(&v14, "initWithNibName:bundle:", 0, 0);
  (*(v11 + 8))(a2, v10);
  return v12;
}

void sub_10005FEC8(char a1)
{
  v2 = v1;
  v4 = type metadata accessor for ConfirmationSheetContext();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = aBlock - v9;
  v11 = type metadata accessor for ConfirmationSheetContainerViewController(0);
  v36.receiver = v2;
  v36.super_class = v11;
  objc_msgSendSuper2(&v36, "viewDidAppear:", a1 & 1);
  v12 = *(v5 + 16);
  v12(v10, &v2[OBJC_IVAR____TtC26AppDistributionLaunchAngel40ConfirmationSheetContainerViewController_context], v4);
  v12(v8, v10, v4);
  v13 = objc_allocWithZone(type metadata accessor for ConfirmationSheetViewController(0));
  v14 = sub_10002254C(v8, 0);
  (*(v5 + 8))(v10, v4);
  [v14 setModalPresentationStyle:2];
  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v16 = swift_allocObject();
  *(v16 + 16) = v15;
  *(v16 + 24) = v14;
  v17 = &v14[OBJC_IVAR____TtC26AppDistributionLaunchAngel31ConfirmationSheetViewController_dismissAction];
  v18 = *&v14[OBJC_IVAR____TtC26AppDistributionLaunchAngel31ConfirmationSheetViewController_dismissAction];
  v19 = *&v14[OBJC_IVAR____TtC26AppDistributionLaunchAngel31ConfirmationSheetViewController_dismissAction + 8];
  *v17 = sub_100060BAC;
  v17[1] = v16;

  v20 = v14;
  sub_10001E7C4(v18, v19);

  v21 = [v2 view];
  if (v21)
  {
    v22 = v21;
    v23 = [v21 window];

    if (v23)
    {
      v24 = [v23 _rootSheetPresentationController];
      if (v24)
      {
        v25 = v24;
        [v24 _setShouldScaleDownBehindDescendantSheets:0];
      }
    }

    v26 = [objc_opt_self() blackColor];
    v27 = v26;
    v28 = 0.8;
    if (v2[OBJC_IVAR____TtC26AppDistributionLaunchAngel40ConfirmationSheetContainerViewController_isIPad])
    {
      v28 = 0.4;
    }

    v29 = [v26 colorWithAlphaComponent:v28];

    v30 = objc_opt_self();
    v31 = swift_allocObject();
    *(v31 + 16) = v2;
    *(v31 + 24) = v29;
    aBlock[4] = sub_100060BF4;
    aBlock[5] = v31;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10005F9E8;
    aBlock[3] = &unk_10007FE08;
    v32 = _Block_copy(aBlock);
    v33 = v2;
    v34 = v29;

    [v30 animateWithDuration:v32 animations:0.3];
    _Block_release(v32);

    [v33 presentViewController:v20 animated:1 completion:0];
  }

  else
  {
    __break(1u);
  }
}

void sub_1000602AC(char a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = *(Strong + OBJC_IVAR____TtC26AppDistributionLaunchAngel40ConfirmationSheetContainerViewController_configurationContext);

    v9 = [v8 actions];
    if (v9)
    {
      sub_10001596C();
      sub_10001E294();
      v10 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

      v11 = sub_10005FA2C(v10);

      if (v11)
      {
        if ([v11 canSendResponse])
        {
          v12 = [objc_allocWithZone(BSMutableSettings) init];
          v13 = [objc_allocWithZone(NSNumber) initWithBool:a1 & 1];
          [v12 setObject:v13 forSetting:1];

          v14 = [objc_opt_self() responseWithInfo:v12];
          [v11 sendResponse:v14];

          v11 = v14;
        }
      }
    }
  }

  swift_beginAccess();
  v15 = swift_unknownObjectWeakLoadStrong();
  if (v15)
  {
    v16 = v15;
    v17 = [objc_opt_self() clearColor];
    v18 = objc_opt_self();
    v19 = swift_allocObject();
    *(v19 + 16) = v16;
    *(v19 + 24) = v17;
    v29 = sub_100060E7C;
    v30 = v19;
    v25 = _NSConcreteStackBlock;
    v26 = 1107296256;
    v27 = sub_10005F9E8;
    v28 = &unk_10007FE58;
    v20 = _Block_copy(&v25);
    v21 = v16;
    v22 = v17;

    [v18 animateWithDuration:v20 animations:0.3];
    _Block_release(v20);
  }

  v23 = swift_allocObject();
  *(v23 + 16) = a2;
  *(v23 + 24) = a1 & 1;
  v29 = sub_100060C4C;
  v30 = v23;
  v25 = _NSConcreteStackBlock;
  v26 = 1107296256;
  v27 = sub_10005F9E8;
  v28 = &unk_10007FEA8;
  v24 = _Block_copy(&v25);

  [a3 dismissViewControllerAnimated:1 completion:v24];
  _Block_release(v24);
}

uint64_t sub_100060628(uint64_t a1, char a2)
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = *(Strong + OBJC_IVAR____TtC26AppDistributionLaunchAngel40ConfirmationSheetContainerViewController_dismissAction);
    v4 = *(Strong + OBJC_IVAR____TtC26AppDistributionLaunchAngel40ConfirmationSheetContainerViewController_dismissAction + 8);
    v6 = Strong;
    sub_100060E64(v5, v4);

    if (v5)
    {
      v5(a2 & 1);
      sub_10001E7C4(v5, v4);
    }
  }
}

void sub_1000607F4(void *a1, uint64_t a2)
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = [a1 view];
  if (v4)
  {
    v5 = v4;
    [v4 setBackgroundColor:a2];
  }

  else
  {
    __break(1u);
  }
}

id sub_100060964()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ConfirmationSheetContainerViewController(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for ConfirmationSheetContainerViewController(uint64_t a1)
{
  result = qword_10008A900;
  if (!qword_10008A900)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100060A80(uint64_t a1)
{
  result = type metadata accessor for ConfirmationSheetContext();
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

uint64_t sub_100060B34()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100060B6C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100060BB4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100060BFC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100060C14()
{

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t sub_100060C58(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

void sub_100060C64(unint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      __CocoaSet.element(at:)();
      sub_10001596C();
      swift_dynamicCast();
      return;
    }

    goto LABEL_23;
  }

  if (a3)
  {
    sub_10001596C();
    if (__CocoaSet.Index.age.getter() != *(a4 + 36))
    {
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    __CocoaSet.Index.element.getter();
    swift_dynamicCast();
    v4 = v14;
    v7 = NSObject._rawHashValue(seed:)(*(a4 + 40));
    v8 = -1 << *(a4 + 32);
    a1 = v7 & ~v8;
    if ((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1))
    {
      v9 = ~v8;
      do
      {
        v10 = *(*(a4 + 48) + 8 * a1);
        v11 = static NSObject.== infix(_:_:)();

        if (v11)
        {
          goto LABEL_16;
        }

        a1 = (a1 + 1) & v9;
      }

      while (((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1) & 1) != 0);
    }

    __break(1u);
  }

  if ((a1 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= a1)
  {
    goto LABEL_21;
  }

  if (((*(a4 + 8 * (a1 >> 6) + 56) >> a1) & 1) == 0)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    return;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_16:
  }

  v12 = *(*(a4 + 48) + 8 * a1);

  v13 = v12;
}

uint64_t sub_100060E64(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_100060E8C(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100060EFC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_22;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return v5 + (v6 | v11) + 1;
}

char *sub_10006103C(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
      }

      else
      {
        if (v14 < 0x100)
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        if (v14 >= 2)
        {
          v10 = v15;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (v7)
      {
        v16 = v11 & ~(-1 << (8 * v7));
        v17 = result;
        bzero(result, v7);
        result = v17;
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            *v17 = v16;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&result[v7] = v13;
              }

              else
              {
                *&result[v7] = v13;
              }

              return result;
            }
          }

          else
          {
            *v17 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v17 = v16;
        v17[2] = BYTE2(v16);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      result[v7] = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&result[v7] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v7] = 0;
  }

  else if (v10)
  {
    result[v7] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v18 = *(v5 + 56);

  return v18();
}

uint64_t sub_10006125C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x64657070617277 && a2 == 0xE700000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1000612D4(void *a1, void *a2)
{
  v3 = a2[3];
  v9 = a2[2];
  type metadata accessor for XPCValue.CodingKeys(255, v9, v3, a2[4]);
  swift_getWitnessTable();
  v4 = type metadata accessor for KeyedEncodingContainer();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - v6;
  sub_100010624(a1, a1[3]);
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_100061448@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v28 = a5;
  v31 = *(a2 - 8);
  __chkstk_darwin(a1);
  v33 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for XPCValue.CodingKeys(255, v10, v11, v12);
  swift_getWitnessTable();
  v34 = type metadata accessor for KeyedDecodingContainer();
  v29 = *(v34 - 8);
  __chkstk_darwin(v34);
  v14 = &v25 - v13;
  v30 = a2;
  v32 = a3;
  v15 = type metadata accessor for XPCValue(0, a2, a3, a4);
  v27 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = &v25 - v16;
  sub_100010624(a1, a1[3]);
  v18 = v35;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v18)
  {
    v26 = v17;
    v35 = v15;
    v20 = v29;
    v19 = v30;
    v21 = v31;
    v22 = v33;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v20 + 8))(v14, v34);
    v23 = v26;
    (*(v21 + 32))(v26, v22, v19);
    (*(v27 + 32))(v28, v23, v35);
  }

  return sub_10001059C(a1);
}

uint64_t sub_100061748@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10006125C(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_100061780(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return CodingKey.description.getter(a1, WitnessTable);
}

uint64_t sub_1000617D4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return CodingKey.debugDescription.getter(a1, WitnessTable);
}

id sub_100061910(void *a1, double a2, double a3, double a4, double a5)
{
  v9 = [a1 userInterfaceStyle];
  v10 = objc_allocWithZone(UIColor);
  if (v9 == 2)
  {
    v11 = a2;
    v12 = a2;
    v13 = a3;
  }

  else
  {
    v11 = a4;
    v12 = a4;
    v13 = a5;
  }

  return [v10 initWithRed:v11 green:v12 blue:v13 alpha:1.0];
}

void sub_1000619BC()
{
  v0 = dlerror();
  v1 = abort_report_np("%s", v0);
  sub_1000619E0(v1, v2, v3);
}

void sub_1000619E0(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = *(a1 + 8);
  v4 = 138543618;
  v5 = v3;
  v6 = 2114;
  v7 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "[%{public}@] Mini product page failed with error: %{public}@", &v4, 0x16u);
}

void sub_100061A6C(uint64_t a1, NSObject *a2)
{
  v2 = *(a1 + 8);
  v3 = 138543362;
  v4 = v2;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "[%{public}@] Mini product page content size did invalidate", &v3, 0xCu);
}

void sub_100061AE8(uint64_t a1, NSObject *a2)
{
  v2 = *(a1 + 8);
  v3 = 138543362;
  v4 = v2;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "[%{public}@] Mini product page did present description", &v3, 0xCu);
}