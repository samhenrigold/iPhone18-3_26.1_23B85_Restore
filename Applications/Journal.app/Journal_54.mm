uint64_t sub_1005BFB08()
{

  v1 = *(v0 + 472);
  v2 = *(v0 + 480);

  return _swift_task_switch(sub_1005BFB6C, v1, v2);
}

uint64_t sub_1005BFB6C()
{
  v58 = v0;
  v1 = v0[51];
  v3 = v0[48];
  v2 = v0[49];
  v4 = v0[47];
  v5 = v0[43];
  v6 = v0[44];
  v7 = v0[38];
  v53 = v0[52];

  v8 = *(v6 + 16);
  v8(v2, v7, v5);
  v8(v3, v1, v5);
  v8(v4, v53, v5);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.info.getter();
  v11 = os_log_type_enabled(v9, v10);
  v13 = v0[48];
  v12 = v0[49];
  v14 = v0[47];
  v16 = v0[43];
  v15 = v0[44];
  if (v11)
  {
    v52 = v0[48];
    v17 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    v56 = v54;
    *v17 = 136315394;
    v18 = Date.debugDescription.getter();
    v20 = v19;
    v51 = v10;
    v21 = *(v15 + 8);
    v21(v12, v16);
    v22 = sub_100008458(v18, v20, &v56);

    *(v17 + 4) = v22;
    *(v17 + 12) = 2048;
    Date.timeIntervalSince(_:)();
    v24 = v23;
    v21(v14, v16);
    v21(v52, v16);
    *(v17 + 14) = v24;
    _os_log_impl(&_mh_execute_header, v9, v51, "Ended mindfulness session at %s and logged a mindfulness session for %f seconds", v17, 0x16u);
    sub_10000BA7C(v54);

    if ((static Runtime.isInternalBuild.getter() & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else
  {

    v21 = *(v15 + 8);
    v21(v14, v16);
    v21(v13, v16);
    v21(v12, v16);
    if ((static Runtime.isInternalBuild.getter() & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  Date.timeIntervalSince(_:)();
  if (v25 > 3600.0)
  {
    v27 = v0[51];
    v26 = v0[52];
    v28 = v0[43];
    v55 = v0[50];
    v29 = v0[39];
    *(v29 + OBJC_IVAR____TtC7Journal18MindfulnessManager_shouldShowTTRAlert) = 1;
    v56 = 0;
    v57 = 0xE000000000000000;
    _StringGuts.grow(_:)(56);
    v30 = v57;
    v0[36] = v56;
    v0[37] = v30;
    v31._countAndFlagsBits = 0x7461447472617473;
    v31._object = 0xEB00000000203A65;
    String.append(_:)(v31);
    sub_10005C3F4();
    v32._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v32);

    v33._countAndFlagsBits = 0x746144646E65202CLL;
    v33._object = 0xEB00000000203A65;
    String.append(_:)(v33);
    v34._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v34);

    v35._object = 0x80000001008FD9A0;
    v35._countAndFlagsBits = 0xD000000000000014;
    String.append(_:)(v35);
    Date.timeIntervalSince(_:)();
    Double.write<A>(to:)();
    v36._countAndFlagsBits = 0x73646E6F63657320;
    v36._object = 0xE800000000000000;
    String.append(_:)(v36);
    v37 = v0[36];
    v38 = v0[37];
    v21(v55, v28);
    v21(v27, v28);
    v21(v26, v28);
    v39 = (v29 + OBJC_IVAR____TtC7Journal18MindfulnessManager_ttrErrorDescription);
    *v39 = v37;
    v39[1] = v38;

    goto LABEL_8;
  }

LABEL_7:
  v40 = v0[51];
  v41 = v0[52];
  v42 = v0[43];
  v21(v0[50], v42);
  v21(v40, v42);
  v21(v41, v42);
LABEL_8:
  v44 = v0[62];
  v43 = v0[63];
  v45 = v0[61];
  v46 = v0[56];
  v47 = v0[43];
  v48 = v0[39];
  v44(v46, 1, 1, v47);
  swift_beginAccess();
  sub_100041B1C(v46, v48 + v45);
  swift_endAccess();
  v44(v46, 1, 1, v47);
  swift_beginAccess();
  sub_100041B1C(v46, v48 + v43);
  swift_endAccess();
  sub_10000BA7C(v0 + 2);

  v49 = v0[1];

  return v49();
}

uint64_t sub_1005C0134()
{
  sub_100004F84(v0 + 16, &qword_100AEAA10, &unk_10095F530);
  sub_100004F84(v0 + OBJC_IVAR____TtC7Journal18MindfulnessManager_startDate, &unk_100AD4790, &unk_10093B4E0);
  sub_100004F84(v0 + OBJC_IVAR____TtC7Journal18MindfulnessManager_endDate, &unk_100AD4790, &unk_10093B4E0);

  v1 = OBJC_IVAR____TtC7Journal18MindfulnessManager_logger;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC7Journal18MindfulnessManager_calendar;
  v4 = type metadata accessor for Calendar();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for MindfulnessManager(uint64_t a1)
{
  result = qword_100AEA880;
  if (!qword_100AEA880)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1005C02F8(uint64_t a1)
{
  sub_100008F84(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Logger();
    if (v2 <= 0x3F)
    {
      type metadata accessor for Calendar();
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t sub_1005C0434(uint64_t a1)
{
  v4 = *(type metadata accessor for Date() - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = *(v1 + 2);
  v7 = *(v1 + 3);
  v8 = v1[4];
  v9 = *(v1 + 5);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_100032ECC;

  return sub_1005BDB18(v8, a1, v6, v7, v9, v1 + v5);
}

void sub_1005C053C(char a1)
{
  v3 = *(type metadata accessor for Date() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  sub_1005BE0BC(a1, v4, v5);
}

uint64_t sub_1005C05B0(uint64_t a1)
{
  v4 = *(type metadata accessor for Date() - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 32);
  v9 = *(v1 + 40);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_100032ECC;

  return sub_1005BE318(a1, v6, v7, v8, v9, v1 + v5);
}

uint64_t sub_1005C06B8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100032EC8;

  return sub_1005BCEA0(a1, v4, v5, v6);
}

uint64_t sub_1005C076C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100032EC8;

  return sub_1005BC52C(a1, v4, v5, v6);
}

char *sub_1005C0824(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC7Journal14MaskedBlurView_blurView;
  v10 = [objc_opt_self() effectWithStyle:7];
  v11 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:v10];

  *&v4[v9] = v11;
  v12 = OBJC_IVAR____TtC7Journal14MaskedBlurView_blurMaskView;
  sub_1000F24EC(&unk_100AD4780, &unk_100941070);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_100941D70;
  v14 = objc_opt_self();
  *(v13 + 32) = [v14 clearColor];
  v15 = [v14 whiteColor];
  v16 = [v15 colorWithAlphaComponent:0.92];

  *(v13 + 40) = v16;
  *(v13 + 48) = [v14 whiteColor];
  static UnitPoint.top.getter();
  static UnitPoint.bottom.getter();
  v18 = v17;
  v20 = v19;
  v21 = [objc_allocWithZone(type metadata accessor for GradientView(0)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  swift_getKeyPath();
  swift_getKeyPath();
  v22 = v21;
  static UIView.Invalidating.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  v23 = v22;
  static UIView.Invalidating.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  v24 = v23;
  static UIView.Invalidating.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  v32 = v18;
  v33 = v20;
  static UIView.Invalidating.subscript.setter();
  *&v4[v12] = v24;
  v31.receiver = v4;
  v31.super_class = type metadata accessor for MaskedBlurView();
  v25 = objc_msgSendSuper2(&v31, "initWithFrame:", a1, a2, a3, a4);
  [v25 setOverrideUserInterfaceStyle:2];
  v26 = OBJC_IVAR____TtC7Journal14MaskedBlurView_blurView;
  v27 = *&v25[OBJC_IVAR____TtC7Journal14MaskedBlurView_blurView];
  [v25 bounds];
  [v27 setFrame:?];

  [*&v25[v26] setAutoresizingMask:18];
  v28 = OBJC_IVAR____TtC7Journal14MaskedBlurView_blurMaskView;
  [*&v25[v26] setMaskView:*&v25[OBJC_IVAR____TtC7Journal14MaskedBlurView_blurMaskView]];
  v29 = *&v25[v28];
  [v25 bounds];
  [v29 setFrame:?];

  [*&v25[v28] setAutoresizingMask:18];
  [v25 addSubview:*&v25[v26]];

  return v25;
}

uint64_t sub_1005C0C0C(void *a1)
{
  v3 = OBJC_IVAR____TtC7Journal14MaskedBlurView_blurView;
  v4 = [objc_opt_self() effectWithStyle:7];
  v5 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:v4];

  *(v1 + v3) = v5;
  v6 = OBJC_IVAR____TtC7Journal14MaskedBlurView_blurMaskView;
  sub_1000F24EC(&unk_100AD4780, &unk_100941070);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_100941D70;
  v8 = objc_opt_self();
  *(v7 + 32) = [v8 clearColor];
  v9 = [v8 whiteColor];
  v10 = [v9 colorWithAlphaComponent:0.92];

  *(v7 + 40) = v10;
  *(v7 + 48) = [v8 whiteColor];
  static UnitPoint.top.getter();
  static UnitPoint.bottom.getter();
  v11 = [objc_allocWithZone(type metadata accessor for GradientView(0)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  swift_getKeyPath();
  swift_getKeyPath();
  v12 = v11;
  static UIView.Invalidating.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  v13 = v12;
  static UIView.Invalidating.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  v14 = v13;
  static UIView.Invalidating.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  static UIView.Invalidating.subscript.setter();

  *(v1 + v6) = v14;
  type metadata accessor for MaskedBlurView();
  swift_deallocPartialClassInstance();
  return 0;
}

uint64_t sub_1005C0FD0(char a1)
{
  v3 = OBJC_IVAR____TtC7Journal14MaskedBlurView_blurMaskView;
  v4 = *(v1 + OBJC_IVAR____TtC7Journal14MaskedBlurView_blurMaskView);
  if (a1)
  {
    static UnitPoint.top.getter();
    swift_getKeyPath();
    swift_getKeyPath();
    static UIView.Invalidating.subscript.setter();
    v5 = *(v1 + v3);
    static UnitPoint.bottom.getter();
  }

  else
  {
    static UnitPoint.leading.getter();
    swift_getKeyPath();
    swift_getKeyPath();
    static UIView.Invalidating.subscript.setter();
    v7 = *(v1 + v3);
    static UnitPoint.trailing.getter();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static UIView.Invalidating.subscript.setter();
  v6 = *(v1 + v3);
  swift_getKeyPath();
  swift_getKeyPath();
  v8 = v6;
  return static UIView.Invalidating.subscript.setter();
}

id sub_1005C11B0(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for MaskedBlurView();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_1005C1254()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static UIView.Invalidating.subscript.getter();

  return v1;
}

id sub_1005C15D4(void *a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  v7.receiver = a1;
  v7.super_class = type metadata accessor for CanvasGridCollectionView(0);
  return objc_msgSendSuper2(&v7, *a4, a3);
}

id sub_1005C1628()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CanvasGridCollectionView(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1005C16E0(uint64_t a1, uint64_t a2)
{
  v3[3] = v2;
  if (a1)
  {
    swift_getObjectType();
    v4 = dispatch thunk of Actor.unownedExecutor.getter();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v3[4] = v4;
  v3[5] = v6;

  return _swift_task_switch(sub_1005C1770, v4, v6);
}

uint64_t sub_1005C1770()
{
  v1 = v0[3];
  v2 = *(v1 + qword_100AEAAB0);
  v3 = swift_task_alloc();
  v0[6] = v3;
  *(v3 + 16) = v1;
  v4 = swift_task_alloc();
  v0[7] = v4;
  v5 = sub_1000F24EC(&qword_100AEABD8, &qword_10095F7A0);
  *v4 = v0;
  v4[1] = sub_1005C1878;

  return CKDatabase.configuredWith<A>(configuration:group:body:)(v0 + 2, v2, 0, &unk_10095F7A8, v3, v5);
}

uint64_t sub_1005C1878()
{
  v2 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v3 = *(v2 + 32);
    v4 = *(v2 + 40);
    v5 = sub_1005C19B0;
  }

  else
  {

    v3 = *(v2 + 32);
    v4 = *(v2 + 40);
    v5 = sub_1005C1994;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_1005C19B0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1005C1A14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return _swift_task_switch(sub_1005C1A38, 0, 0);
}

uint64_t sub_1005C1A38()
{
  v1 = *(*(v0 + 32) + qword_100AEAAA0);
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *v2 = v0;
  v2[1] = sub_1005C1AE4;

  return CKDatabase.records(for:desiredKeys:)(v1, 0);
}

uint64_t sub_1005C1AE4(uint64_t a1)
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
    *(v4 + 48) = a1;

    return _swift_task_switch(sub_1005C1C30, 0, 0);
  }
}

void sub_1005C1C84()
{

  v1 = *(v0 + qword_100AEAAB0);
}

id sub_1005C1CD4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BatchRecordDownloadOperation(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1005C1D0C(uint64_t a1)
{

  v2 = *(a1 + qword_100AEAAB0);
}

uint64_t type metadata accessor for BatchRecordDownloadOperation(uint64_t a1)
{
  result = qword_100AEAAE0;
  if (!qword_100AEAAE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1005C1E0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[3] = a1;
  v4[4] = v3;
  if (a2)
  {
    swift_getObjectType();
    v5 = dispatch thunk of Actor.unownedExecutor.getter();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v4[5] = v5;
  v4[6] = v7;

  return _swift_task_switch(sub_1005C1EA0, v5, v7);
}

uint64_t sub_1005C1EA0()
{
  v1 = v0[4];
  v2 = *(v1 + qword_100AEAAB0);
  v3 = swift_task_alloc();
  v0[7] = v3;
  *(v3 + 16) = v1;
  v4 = swift_task_alloc();
  v0[8] = v4;
  v5 = sub_1000F24EC(&qword_100AEABD8, &qword_10095F7A0);
  *v4 = v0;
  v4[1] = sub_1005C1FA8;

  return CKDatabase.configuredWith<A>(configuration:group:body:)(v0 + 2, v2, 0, &unk_10095F798, v3, v5);
}

uint64_t sub_1005C1FA8()
{
  v2 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v3 = *(v2 + 40);
    v4 = *(v2 + 48);
    v5 = sub_1005C20E4;
  }

  else
  {

    v3 = *(v2 + 40);
    v4 = *(v2 + 48);
    v5 = sub_1005C20C4;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_1005C20E4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1005C2150(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100032EC8;

  return sub_1005C1A14(a1, a2, v6);
}

uint64_t sub_1005C2200(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100032ECC;

  return sub_1005C1A14(a1, a2, v6);
}

uint64_t sub_1005C22B0(uint64_t a1)
{
  v2[16] = a1;
  v2[17] = v1;
  v3 = type metadata accessor for UUID();
  v2[18] = v3;
  v2[19] = *(v3 - 8);
  v2[20] = swift_task_alloc();
  v4 = type metadata accessor for AssetType();
  v2[21] = v4;
  v2[22] = *(v4 - 8);
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();
  v2[32] = swift_task_alloc();
  v2[33] = swift_task_alloc();
  v2[34] = swift_task_alloc();
  v2[35] = swift_task_alloc();
  v2[36] = swift_task_alloc();
  type metadata accessor for MainActor();
  v2[37] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[38] = v5;
  v2[39] = v6;

  return _swift_task_switch(sub_1005C24D0, v5, v6);
}

uint64_t sub_1005C24D0(uint64_t a1)
{
  v2 = v1[16];
  if ((*(v2 + 32) & 1) == 0)
  {
    v3 = _swiftEmptyArrayStorage;
    goto LABEL_86;
  }

  if ((*(v2 + 33) & 1) == 0)
  {
    v3 = _swiftEmptyArrayStorage;
    if (*(v2 + 34))
    {
      goto LABEL_8;
    }

    goto LABEL_13;
  }

  (*(v1[22] + 104))(v1[36], enum case for AssetType.photo(_:), v1[21]);
  v3 = sub_1003E4D90(0, 1, 1, _swiftEmptyArrayStorage);
  v5 = *(v3 + 2);
  v4 = *(v3 + 3);
  v6 = v5 + 1;
  if (v5 >= v4 >> 1)
  {
    goto LABEL_99;
  }

  while (1)
  {
    v7 = v1[36];
    v8 = v1[21];
    v9 = v1[22];
    *(v3 + 2) = v6;
    (*(v9 + 32))(v3 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v5, v7, v8);
    v2 = v1[16];
    if (*(v2 + 34))
    {
LABEL_8:
      (*(v1[22] + 104))(v1[35], enum case for AssetType.music(_:), v1[21]);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v3 = sub_1003E4D90(0, *(v3 + 2) + 1, 1, v3);
      }

      v11 = *(v3 + 2);
      v10 = *(v3 + 3);
      if (v11 >= v10 >> 1)
      {
        v3 = sub_1003E4D90((v10 > 1), v11 + 1, 1, v3);
      }

      v12 = v1[35];
      v13 = v1[21];
      v14 = v1[22];
      *(v3 + 2) = v11 + 1;
      (*(v14 + 32))(v3 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v11, v12, v13);
      v2 = v1[16];
    }

LABEL_13:
    if (*(v2 + 35))
    {
      (*(v1[22] + 104))(v1[34], enum case for AssetType.podcast(_:), v1[21]);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v3 = sub_1003E4D90(0, *(v3 + 2) + 1, 1, v3);
      }

      v16 = *(v3 + 2);
      v15 = *(v3 + 3);
      if (v16 >= v15 >> 1)
      {
        v3 = sub_1003E4D90((v15 > 1), v16 + 1, 1, v3);
      }

      v17 = v1[34];
      v18 = v1[21];
      v19 = v1[22];
      *(v3 + 2) = v16 + 1;
      (*(v19 + 32))(v3 + ((*(v19 + 80) + 32) & ~*(v19 + 80)) + *(v19 + 72) * v16, v17, v18);
      v2 = v1[16];
      if ((*(v2 + 36) & 1) == 0)
      {
LABEL_15:
        if ((*(v2 + 37) & 1) == 0)
        {
          goto LABEL_16;
        }

        goto LABEL_36;
      }
    }

    else if ((*(v2 + 36) & 1) == 0)
    {
      goto LABEL_15;
    }

    (*(v1[22] + 104))(v1[33], enum case for AssetType.book(_:), v1[21]);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v3 = sub_1003E4D90(0, *(v3 + 2) + 1, 1, v3);
    }

    v21 = *(v3 + 2);
    v20 = *(v3 + 3);
    if (v21 >= v20 >> 1)
    {
      v3 = sub_1003E4D90((v20 > 1), v21 + 1, 1, v3);
    }

    v22 = v1[33];
    v23 = v1[21];
    v24 = v1[22];
    *(v3 + 2) = v21 + 1;
    (*(v24 + 32))(v3 + ((*(v24 + 80) + 32) & ~*(v24 + 80)) + *(v24 + 72) * v21, v22, v23);
    v2 = v1[16];
    if ((*(v2 + 37) & 1) == 0)
    {
LABEL_16:
      if ((*(v2 + 38) & 1) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_41;
    }

LABEL_36:
    (*(v1[22] + 104))(v1[32], enum case for AssetType.visit(_:), v1[21]);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v3 = sub_1003E4D90(0, *(v3 + 2) + 1, 1, v3);
    }

    v26 = *(v3 + 2);
    v25 = *(v3 + 3);
    if (v26 >= v25 >> 1)
    {
      v3 = sub_1003E4D90((v25 > 1), v26 + 1, 1, v3);
    }

    v27 = v1[32];
    v28 = v1[21];
    v29 = v1[22];
    *(v3 + 2) = v26 + 1;
    (*(v29 + 32))(v3 + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v26, v27, v28);
    v2 = v1[16];
    if ((*(v2 + 38) & 1) == 0)
    {
LABEL_17:
      if ((*(v2 + 39) & 1) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_46;
    }

LABEL_41:
    (*(v1[22] + 104))(v1[31], enum case for AssetType.multiPinMap(_:), v1[21]);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v3 = sub_1003E4D90(0, *(v3 + 2) + 1, 1, v3);
    }

    v31 = *(v3 + 2);
    v30 = *(v3 + 3);
    if (v31 >= v30 >> 1)
    {
      v3 = sub_1003E4D90((v30 > 1), v31 + 1, 1, v3);
    }

    v32 = v1[31];
    v33 = v1[21];
    v34 = v1[22];
    *(v3 + 2) = v31 + 1;
    (*(v34 + 32))(v3 + ((*(v34 + 80) + 32) & ~*(v34 + 80)) + *(v34 + 72) * v31, v32, v33);
    v2 = v1[16];
    if ((*(v2 + 39) & 1) == 0)
    {
LABEL_18:
      if ((*(v2 + 40) & 1) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_51;
    }

LABEL_46:
    (*(v1[22] + 104))(v1[30], enum case for AssetType.audio(_:), v1[21]);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v3 = sub_1003E4D90(0, *(v3 + 2) + 1, 1, v3);
    }

    v36 = *(v3 + 2);
    v35 = *(v3 + 3);
    if (v36 >= v35 >> 1)
    {
      v3 = sub_1003E4D90((v35 > 1), v36 + 1, 1, v3);
    }

    v37 = v1[30];
    v38 = v1[21];
    v39 = v1[22];
    *(v3 + 2) = v36 + 1;
    (*(v39 + 32))(v3 + ((*(v39 + 80) + 32) & ~*(v39 + 80)) + *(v39 + 72) * v36, v37, v38);
    v2 = v1[16];
    if ((*(v2 + 40) & 1) == 0)
    {
LABEL_19:
      if ((*(v2 + 43) & 1) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_56;
    }

LABEL_51:
    (*(v1[22] + 104))(v1[29], enum case for AssetType.video(_:), v1[21]);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v3 = sub_1003E4D90(0, *(v3 + 2) + 1, 1, v3);
    }

    v41 = *(v3 + 2);
    v40 = *(v3 + 3);
    if (v41 >= v40 >> 1)
    {
      v3 = sub_1003E4D90((v40 > 1), v41 + 1, 1, v3);
    }

    v42 = v1[29];
    v43 = v1[21];
    v44 = v1[22];
    *(v3 + 2) = v41 + 1;
    (*(v44 + 32))(v3 + ((*(v44 + 80) + 32) & ~*(v44 + 80)) + *(v44 + 72) * v41, v42, v43);
    v2 = v1[16];
    if ((*(v2 + 43) & 1) == 0)
    {
LABEL_20:
      if ((*(v2 + 44) & 1) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_61;
    }

LABEL_56:
    (*(v1[22] + 104))(v1[28], enum case for AssetType.link(_:), v1[21]);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v3 = sub_1003E4D90(0, *(v3 + 2) + 1, 1, v3);
    }

    v46 = *(v3 + 2);
    v45 = *(v3 + 3);
    if (v46 >= v45 >> 1)
    {
      v3 = sub_1003E4D90((v45 > 1), v46 + 1, 1, v3);
    }

    v47 = v1[28];
    v48 = v1[21];
    v49 = v1[22];
    *(v3 + 2) = v46 + 1;
    (*(v49 + 32))(v3 + ((*(v49 + 80) + 32) & ~*(v49 + 80)) + *(v49 + 72) * v46, v47, v48);
    v2 = v1[16];
    if ((*(v2 + 44) & 1) == 0)
    {
LABEL_21:
      if ((*(v2 + 45) & 1) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_66;
    }

LABEL_61:
    (*(v1[22] + 104))(v1[27], enum case for AssetType.contact(_:), v1[21]);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v3 = sub_1003E4D90(0, *(v3 + 2) + 1, 1, v3);
    }

    v51 = *(v3 + 2);
    v50 = *(v3 + 3);
    if (v51 >= v50 >> 1)
    {
      v3 = sub_1003E4D90((v50 > 1), v51 + 1, 1, v3);
    }

    v52 = v1[27];
    v53 = v1[21];
    v54 = v1[22];
    *(v3 + 2) = v51 + 1;
    (*(v54 + 32))(v3 + ((*(v54 + 80) + 32) & ~*(v54 + 80)) + *(v54 + 72) * v51, v52, v53);
    v2 = v1[16];
    if ((*(v2 + 45) & 1) == 0)
    {
LABEL_22:
      if ((*(v2 + 46) & 1) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_71;
    }

LABEL_66:
    (*(v1[22] + 104))(v1[26], enum case for AssetType.workoutRoute(_:), v1[21]);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v3 = sub_1003E4D90(0, *(v3 + 2) + 1, 1, v3);
    }

    v56 = *(v3 + 2);
    v55 = *(v3 + 3);
    if (v56 >= v55 >> 1)
    {
      v3 = sub_1003E4D90((v55 > 1), v56 + 1, 1, v3);
    }

    v57 = v1[26];
    v58 = v1[21];
    v59 = v1[22];
    *(v3 + 2) = v56 + 1;
    (*(v59 + 32))(v3 + ((*(v59 + 80) + 32) & ~*(v59 + 80)) + *(v59 + 72) * v56, v57, v58);
    v2 = v1[16];
    if ((*(v2 + 46) & 1) == 0)
    {
LABEL_23:
      if ((*(v2 + 47) & 1) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_76;
    }

LABEL_71:
    (*(v1[22] + 104))(v1[25], enum case for AssetType.workoutIcon(_:), v1[21]);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v3 = sub_1003E4D90(0, *(v3 + 2) + 1, 1, v3);
    }

    v61 = *(v3 + 2);
    v60 = *(v3 + 3);
    if (v61 >= v60 >> 1)
    {
      v3 = sub_1003E4D90((v60 > 1), v61 + 1, 1, v3);
    }

    v62 = v1[25];
    v63 = v1[21];
    v64 = v1[22];
    *(v3 + 2) = v61 + 1;
    (*(v64 + 32))(v3 + ((*(v64 + 80) + 32) & ~*(v64 + 80)) + *(v64 + 72) * v61, v62, v63);
    v2 = v1[16];
    if ((*(v2 + 47) & 1) == 0)
    {
LABEL_24:
      if ((*(v2 + 48) & 1) == 0)
      {
        goto LABEL_86;
      }

LABEL_81:
      (*(v1[22] + 104))(v1[23], enum case for AssetType.motionActivity(_:), v1[21]);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v3 = sub_1003E4D90(0, *(v3 + 2) + 1, 1, v3);
      }

      v71 = *(v3 + 2);
      v70 = *(v3 + 3);
      if (v71 >= v70 >> 1)
      {
        v3 = sub_1003E4D90((v70 > 1), v71 + 1, 1, v3);
      }

      v73 = v1[22];
      v72 = v1[23];
      v74 = v1[21];
      *(v3 + 2) = v71 + 1;
      (*(v73 + 32))(v3 + ((*(v73 + 80) + 32) & ~*(v73 + 80)) + *(v73 + 72) * v71, v72, v74);
      v2 = v1[16];
      goto LABEL_86;
    }

LABEL_76:
    (*(v1[22] + 104))(v1[24], enum case for AssetType.confetti(_:), v1[21]);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v3 = sub_1003E4D90(0, *(v3 + 2) + 1, 1, v3);
    }

    v66 = *(v3 + 2);
    v65 = *(v3 + 3);
    if (v66 >= v65 >> 1)
    {
      v3 = sub_1003E4D90((v65 > 1), v66 + 1, 1, v3);
    }

    v67 = v1[24];
    v68 = v1[21];
    v69 = v1[22];
    *(v3 + 2) = v66 + 1;
    (*(v69 + 32))(v3 + ((*(v69 + 80) + 32) & ~*(v69 + 80)) + *(v69 + 72) * v66, v67, v68);
    v2 = v1[16];
    if (*(v2 + 48))
    {
      goto LABEL_81;
    }

LABEL_86:
    v1[40] = v3;
    v75 = v1[19];
    v3 = v1[20];
    v6 = v1[18];
    UUID.init()();
    v5 = UUID.uuidString.getter();
    v77 = v76;
    (*(v75 + 8))(v3, v6);
    v78 = sub_1007634AC(4, v5, v77);
    v80 = v79;
    v82 = v81;
    v84 = v83;

    v1[41] = v78;
    v1[42] = v80;
    v1[43] = v82;
    v1[44] = v84;
    v4 = *(v2 + 16);
    v1[45] = v4;
    if (v4 < 1)
    {
      __break(1u);
      goto LABEL_98;
    }

    v85 = v1[16];
    v6 = *v85;
    v1[46] = *v85;
    v4 = v85[1];
    v1[47] = v4;
    v1[48] = v85[3];
    v1[49] = 1;
    v3 = (v4 - v6);
    if (v4 == v6)
    {
      goto LABEL_94;
    }

    if (v4 >= v6)
    {
      break;
    }

LABEL_98:
    __break(1u);
LABEL_99:
    v3 = sub_1003E4D90((v4 > 1), v6, 1, v3);
  }

  v1[11] = 0;
  swift_stdlib_random();
  v86 = v1[11];
  v87 = (v86 * v3) >> 64;
  v88 = v86 * v3;
  v89 = v1[46];
  if (v3 > v88)
  {
    v90 = (v89 - v1[47]) % (v1[47] - v89);
    if (v90 > v88)
    {
      do
      {
        v91 = v1[47] - v1[46];
        v1[15] = 0;
        swift_stdlib_random();
        v92 = v1[15];
      }

      while (v90 > v92 * v91);
      v87 = (v92 * v91) >> 64;
      v89 = v1[46];
    }
  }

  v6 = v89 + v87;
LABEL_94:
  v93 = v1[37];
  v1[5] = 0x207972746E45;
  v1[6] = 0xE600000000000000;
  v1[12] = 1;
  v94._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v94);

  v95._countAndFlagsBits = 23328;
  v95._object = 0xE200000000000000;
  String.append(_:)(v95);
  v96._countAndFlagsBits = static String._fromSubstring(_:)();
  String.append(_:)(v96);

  v97._countAndFlagsBits = 93;
  v97._object = 0xE100000000000000;
  String.append(_:)(v97);
  v98 = v1[5];
  v99 = v1[6];
  v1[50] = v99;

  v100 = swift_task_alloc();
  v1[51] = v100;
  *v100 = v1;
  v100[1] = sub_1005C329C;
  v101 = v1[48];
  v102 = v1[40];

  return sub_1005C396C(v93, &protocol witness table for MainActor, v98, v99, v102, v6, v101);
}

uint64_t sub_1005C329C(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 416) = a1;

  v3 = *(v2 + 312);
  v4 = *(v2 + 304);

  return _swift_task_switch(sub_1005C3438, v4, v3);
}

uint64_t sub_1005C3438()
{
  v1 = *(v0[52] + 24);
  v0[13] = 0;
  v2 = [v1 save:v0 + 13];
  v3 = v0[13];
  if (v2)
  {
    v4 = v3;
  }

  else
  {
    v5 = v3;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    sub_1000F24EC(&unk_100AE88B0, &unk_100943ED0);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_100940080;
    v0[9] = 0;
    v0[10] = 0xE000000000000000;
    _StringGuts.grow(_:)(27);

    v0[7] = 0xD000000000000019;
    v0[8] = 0x80000001008FDAE0;
    swift_getErrorValue();
    v7._countAndFlagsBits = Error.localizedDescription.getter();
    String.append(_:)(v7);

    v8 = v0[7];
    v9 = v0[8];
    *(v6 + 56) = &type metadata for String;
    *(v6 + 32) = v8;
    *(v6 + 40) = v9;
    print(_:separator:terminator:)();
  }

  v10 = v0[49];
  if (v10 == v0[45])
  {

    sub_1000F24EC(&unk_100AE88B0, &unk_100943ED0);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_100940080;
    *(v11 + 56) = &type metadata for String;
    *(v11 + 32) = 0xD000000000000014;
    *(v11 + 40) = 0x80000001008FDB00;
    print(_:separator:terminator:)();

    v12 = v0[1];

    return v12();
  }

  v14 = v10 + 1;
  if (__OFADD__(v10, 1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v0[49] = v14;
  v15 = v0[46];
  v16 = v0[47];
  v17 = v16 - v15;
  if (v16 != v15)
  {
    if (v16 >= v15)
    {
      v0[11] = 0;
      swift_stdlib_random();
      v18 = v0[11];
      v19 = (v18 * v17) >> 64;
      v20 = v18 * v17;
      v21 = v0[46];
      if (v17 > v20)
      {
        v22 = (v21 - v0[47]) % (v0[47] - v21);
        if (v22 > v20)
        {
          do
          {
            v23 = v0[47] - v0[46];
            v0[15] = 0;
            swift_stdlib_random();
            v24 = v0[15];
          }

          while (v22 > v24 * v23);
          v19 = (v24 * v23) >> 64;
          v21 = v0[46];
        }
      }

      v16 = v21 + v19;
      goto LABEL_16;
    }

LABEL_20:
    __break(1u);
  }

LABEL_16:
  v0[5] = 0x207972746E45;
  v25 = v0[37];
  v0[6] = 0xE600000000000000;
  v0[12] = v14;
  v26._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v26);

  v27._countAndFlagsBits = 23328;
  v27._object = 0xE200000000000000;
  String.append(_:)(v27);
  v28._countAndFlagsBits = static String._fromSubstring(_:)();
  String.append(_:)(v28);

  v29._countAndFlagsBits = 93;
  v29._object = 0xE100000000000000;
  String.append(_:)(v29);
  v30 = v0[5];
  v31 = v0[6];
  v0[50] = v31;

  v32 = swift_task_alloc();
  v0[51] = v32;
  *v32 = v0;
  v32[1] = sub_1005C329C;
  v33 = v0[48];
  v34 = v0[40];

  return sub_1005C396C(v25, &protocol witness table for MainActor, v30, v31, v34, v16, v33);
}

uint64_t sub_1005C396C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = v7;
  v8[116] = v9;
  v8[115] = a7;
  v8[114] = a6;
  v8[113] = a5;
  v8[112] = a4;
  v8[111] = a3;
  v8[110] = a2;
  v8[109] = a1;
  v8[117] = *v9;
  sub_1000F24EC(&qword_100AD1420, &unk_10093C080);
  v8[118] = swift_task_alloc();
  v11 = type metadata accessor for JournalFeatureFlags();
  v8[119] = v11;
  v8[120] = *(v11 - 8);
  v8[121] = swift_task_alloc();
  v12 = type metadata accessor for AssetPlacement();
  v8[122] = v12;
  v8[123] = *(v12 - 8);
  v8[124] = swift_task_alloc();
  v8[125] = sub_1000F24EC(&qword_100ADA970, &qword_10094A610);
  v8[126] = swift_task_alloc();
  v13 = type metadata accessor for ConfettiAssetMetadata();
  v8[127] = v13;
  v8[128] = *(v13 - 8);
  v8[129] = swift_task_alloc();
  v14 = sub_1000F24EC(&qword_100AEABE0, &qword_10095F7C0);
  v8[130] = v14;
  v8[131] = *(v14 - 8);
  v8[132] = swift_task_alloc();
  type metadata accessor for AttributeContainer();
  v8[133] = swift_task_alloc();
  sub_1000F24EC(&qword_100AD8D78, &qword_100948490);
  v8[134] = swift_task_alloc();
  v8[135] = swift_task_alloc();
  v8[136] = sub_1000F24EC(&qword_100AD8B30, &qword_100948350);
  v8[137] = swift_task_alloc();
  sub_1000F24EC(&qword_100AD8B38, &qword_100948358);
  v8[138] = swift_task_alloc();
  v8[139] = swift_task_alloc();
  v15 = type metadata accessor for MotionActivityAssetMetadata();
  v8[140] = v15;
  v8[141] = *(v15 - 8);
  v8[142] = swift_task_alloc();
  v8[143] = sub_1000F24EC(&qword_100ADA8A0, &unk_100952480);
  v8[144] = swift_task_alloc();
  v16 = type metadata accessor for WorkoutRouteAssetMetadata();
  v8[145] = v16;
  v8[146] = *(v16 - 8);
  v8[147] = swift_task_alloc();
  v8[148] = sub_1000F24EC(&qword_100ADA888, &unk_100952410);
  v8[149] = swift_task_alloc();
  v17 = type metadata accessor for WorkoutIconAssetMetadata();
  v8[150] = v17;
  v8[151] = *(v17 - 8);
  v8[152] = swift_task_alloc();
  v8[153] = sub_1000F24EC(&qword_100ADA8F0, &unk_100960720);
  v8[154] = swift_task_alloc();
  v18 = type metadata accessor for ContactAssetMetadata();
  v8[155] = v18;
  v8[156] = *(v18 - 8);
  v8[157] = swift_task_alloc();
  sub_1000F24EC(&qword_100AEABE8, &qword_10095F7C8);
  v8[158] = swift_task_alloc();
  v19 = type metadata accessor for RandomVideoAssetGenerator.VideoAsset(0);
  v8[159] = v19;
  v8[160] = *(v19 - 8);
  v8[161] = swift_task_alloc();
  v8[162] = sub_1000F24EC(&qword_100AD8FA0, &unk_100962CF0);
  v8[163] = swift_task_alloc();
  v20 = type metadata accessor for AudioAssetMetadata();
  v8[164] = v20;
  v8[165] = *(v20 - 8);
  v8[166] = swift_task_alloc();
  sub_1000F24EC(&unk_100AEED30, &qword_100941FB0);
  v8[167] = swift_task_alloc();
  v21 = type metadata accessor for VisitAssetMetadata();
  v8[168] = v21;
  v8[169] = *(v21 - 8);
  v8[170] = swift_task_alloc();
  v8[171] = swift_task_alloc();
  v8[172] = swift_task_alloc();
  v8[173] = swift_task_alloc();
  v8[174] = sub_1000F24EC(&qword_100ADA8C0, &qword_10094A5B8);
  v8[175] = swift_task_alloc();
  v22 = type metadata accessor for BookAssetMetadata();
  v8[176] = v22;
  v8[177] = *(v22 - 8);
  v8[178] = swift_task_alloc();
  v8[179] = sub_1000F24EC(&qword_100ADA958, &unk_100960730);
  v8[180] = swift_task_alloc();
  v23 = type metadata accessor for PodcastAssetMetadata();
  v8[181] = v23;
  v8[182] = *(v23 - 8);
  v8[183] = swift_task_alloc();
  v8[184] = sub_1000F24EC(&qword_100ADA8E0, &unk_100962D70);
  v8[185] = swift_task_alloc();
  sub_1000F24EC(&qword_100ADF198, &unk_100950340);
  v8[186] = swift_task_alloc();
  v24 = type metadata accessor for MusicAssetMetadata();
  v8[187] = v24;
  v8[188] = *(v24 - 8);
  v8[189] = swift_task_alloc();
  v25 = type metadata accessor for MediaViewType();
  v8[190] = v25;
  v8[191] = *(v25 - 8);
  v8[192] = swift_task_alloc();
  v8[193] = swift_task_alloc();
  v8[194] = sub_1000F24EC(&unk_100AEE0A0, &unk_100943F50);
  v8[195] = swift_task_alloc();
  v26 = type metadata accessor for PhotoLibraryAssetMetadata();
  v8[196] = v26;
  v8[197] = *(v26 - 8);
  v8[198] = swift_task_alloc();
  v27 = type metadata accessor for URL();
  v8[199] = v27;
  v8[200] = *(v27 - 8);
  v8[201] = swift_task_alloc();
  v8[202] = swift_task_alloc();
  v8[203] = swift_task_alloc();
  v8[204] = swift_task_alloc();
  v8[205] = swift_task_alloc();
  v8[206] = swift_task_alloc();
  v8[207] = swift_task_alloc();
  v8[208] = swift_task_alloc();
  v8[209] = swift_task_alloc();
  v8[210] = swift_task_alloc();
  v8[211] = swift_task_alloc();
  v8[212] = swift_task_alloc();
  v8[213] = type metadata accessor for AssetAttachment.AssetType(0);
  v8[214] = swift_task_alloc();
  v28 = type metadata accessor for UUID();
  v8[215] = v28;
  v8[216] = *(v28 - 8);
  v8[217] = swift_task_alloc();
  v8[218] = swift_task_alloc();
  sub_1000F24EC(&unk_100AD4790, &unk_10093B4E0);
  v8[219] = swift_task_alloc();
  v8[220] = swift_task_alloc();
  v8[221] = swift_task_alloc();
  v8[222] = swift_task_alloc();
  v8[223] = swift_task_alloc();
  v8[224] = swift_task_alloc();
  v8[225] = swift_task_alloc();
  v8[226] = swift_task_alloc();
  v8[227] = swift_task_alloc();
  v8[228] = swift_task_alloc();
  v8[229] = swift_task_alloc();
  v8[230] = swift_task_alloc();
  v8[231] = swift_task_alloc();
  v8[232] = swift_task_alloc();
  v8[233] = swift_task_alloc();
  v8[234] = swift_task_alloc();
  v8[235] = swift_task_alloc();
  v8[236] = swift_task_alloc();
  v8[237] = swift_task_alloc();
  v8[238] = swift_task_alloc();
  v8[239] = swift_task_alloc();
  sub_1000F24EC(&unk_100AD6DD0, &qword_1009437C0);
  v8[240] = swift_task_alloc();
  v8[241] = swift_task_alloc();
  v8[242] = swift_task_alloc();
  v8[243] = swift_task_alloc();
  v8[244] = swift_task_alloc();
  v8[245] = swift_task_alloc();
  v8[246] = swift_task_alloc();
  v8[247] = swift_task_alloc();
  v8[248] = swift_task_alloc();
  v8[249] = swift_task_alloc();
  v8[250] = swift_task_alloc();
  v8[251] = swift_task_alloc();
  v8[252] = swift_task_alloc();
  v8[253] = swift_task_alloc();
  v8[254] = swift_task_alloc();
  v8[255] = swift_task_alloc();
  v29 = type metadata accessor for AssetSource();
  v8[256] = v29;
  v8[257] = *(v29 - 8);
  v8[258] = swift_task_alloc();
  v8[259] = swift_task_alloc();
  v8[260] = swift_task_alloc();
  v8[261] = swift_task_alloc();
  v8[262] = swift_task_alloc();
  v8[263] = swift_task_alloc();
  v8[264] = swift_task_alloc();
  v8[265] = swift_task_alloc();
  v8[266] = swift_task_alloc();
  v8[267] = swift_task_alloc();
  v8[268] = swift_task_alloc();
  v8[269] = swift_task_alloc();
  v8[270] = swift_task_alloc();
  v8[271] = swift_task_alloc();
  v30 = type metadata accessor for AssetType();
  v8[272] = v30;
  v8[273] = *(v30 - 8);
  v8[274] = swift_task_alloc();
  v8[275] = swift_task_alloc();
  v8[276] = swift_task_alloc();
  v8[277] = swift_task_alloc();
  v31 = type metadata accessor for EntryDateSource();
  v8[278] = v31;
  v8[279] = *(v31 - 8);
  v8[280] = swift_task_alloc();
  v32 = type metadata accessor for Date();
  v8[281] = v32;
  v8[282] = *(v32 - 8);
  v8[283] = swift_task_alloc();
  v8[284] = swift_task_alloc();
  v8[285] = swift_task_alloc();
  v8[286] = swift_task_alloc();
  v8[287] = swift_task_alloc();
  v8[288] = swift_task_alloc();
  v33 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  v8[289] = v33;
  v8[290] = *(v33 - 8);
  v8[291] = swift_task_alloc();
  v8[292] = swift_task_alloc();
  v8[293] = swift_task_alloc();
  v34 = type metadata accessor for EntrySource();
  v8[294] = v34;
  v35 = *(v34 - 8);
  v8[295] = v35;
  v8[296] = *(v35 + 64);
  v8[297] = swift_task_alloc();
  v8[298] = swift_task_alloc();
  if (a1)
  {
    swift_getObjectType();
    v36 = dispatch thunk of Actor.unownedExecutor.getter();
    v38 = v37;
  }

  else
  {
    v36 = 0;
    v38 = 0;
  }

  v8[300] = v38;
  v8[299] = v36;

  return _swift_task_switch(sub_1005C4B40, v36, v38);
}

uint64_t sub_1005C4B40()
{
  v1 = *(v0 + 2384);
  v2 = *(v0 + 2376);
  v3 = *(v0 + 2368);
  v4 = *(v0 + 2360);
  v5 = *(v0 + 2352);
  v6 = *(v0 + 2320);
  v15 = *(v0 + 2344);
  v7 = *(v0 + 928);
  (*(v4 + 104))(v1, enum case for EntrySource.blankEntry(_:), v5);
  *(v0 + 2408) = *(v7 + OBJC_IVAR____TtC7Journal18EntryListViewModel_context);
  (*(v4 + 16))(v2, v1, v5);
  v8 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v9 = swift_allocObject();
  *(v0 + 2416) = v9;
  (*(v4 + 32))(v9 + v8, v2, v5);
  *(v9 + ((v3 + v8 + 7) & 0xFFFFFFFFFFFFFFF8)) = v7;
  *(v0 + 2880) = enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:);
  v10 = *(v6 + 104);
  *(v0 + 2424) = v10;
  *(v0 + 2432) = (v6 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v10(v15);

  v11 = swift_task_alloc();
  *(v0 + 2440) = v11;
  v12 = type metadata accessor for EntryViewModel(0);
  *(v0 + 2448) = v12;
  *v11 = v0;
  v11[1] = sub_1005C4D68;
  v13 = *(v0 + 2344);

  return NSManagedObjectContext.perform<A>(schedule:_:)(v0 + 672, v13, sub_1005ED4B0, v9, v12);
}

void sub_1005C4D68()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    v3 = v2[293];
    v4 = v2[290];
    v5 = v2[289];
    v6 = *(v4 + 8);
    v2[307] = v6;
    v2[308] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v6(v3, v5);

    v7 = v2[300];
    v8 = v2[299];

    _swift_task_switch(sub_1005C4F14, v8, v7);
  }
}

uint64_t sub_1005C4F14()
{
  v1 = v0[115];
  (*(v0[295] + 8))(v0[298], v0[294]);
  v0[309] = v0[84];
  if (v1)
  {
    v2 = v0[115];
    if ((v2 * 86400) >> 64 == (86400 * v2) >> 63)
    {
      if (((86400 * v2) & 0x8000000000000000) == 0)
      {
        v3 = v0[287];
        v4 = v0[282];
        v5 = v0[281];
        v6 = v0[280];
        v7 = v0[279];
        v8 = v0[278];
        sub_1006A699C();
        Date.init()();
        Date.addingTimeInterval(_:)();
        v9 = *(v4 + 8);
        v0[311] = v9;
        v0[312] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v9(v3, v5);
        (*(v7 + 104))(v6, enum case for EntryDateSource.custom(_:), v8);
        v10 = swift_task_alloc();
        v0[313] = v10;
        *v10 = v0;
        v11 = sub_1005C54F8;
        goto LABEL_6;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  v12 = v0[280];
  v13 = v0[279];
  v14 = v0[278];
  static Date.now.getter();
  (*(v13 + 104))(v12, enum case for EntryDateSource.custom(_:), v14);
  v10 = swift_task_alloc();
  v0[310] = v10;
  *v10 = v0;
  v11 = sub_1005C5184;
LABEL_6:
  v10[1] = v11;
  v15 = v0[288];
  v16 = v0[280];
  v17 = v0[110];
  v18 = v0[109];

  return sub_10078281C(v18, v17, v15, v16);
}

uint64_t sub_1005C5184()
{
  v1 = *v0;
  v2 = *(*v0 + 2304);
  v3 = *(*v0 + 2256);
  v4 = *(*v0 + 2248);
  v5 = *(*v0 + 2240);
  v6 = *(*v0 + 2232);
  v7 = *(*v0 + 2224);

  (*(v6 + 8))(v5, v7);
  (*(v3 + 8))(v2, v4);
  v8 = *(v1 + 2400);
  v9 = *(v1 + 2392);

  return _swift_task_switch(sub_1005C5398, v9, v8);
}

uint64_t sub_1005C5398()
{
  v1 = *(v0 + 2472);
  v2 = *(v0 + 2424);
  v3 = *(v0 + 2880);
  v4 = *(v0 + 2336);
  v5 = *(v0 + 2312);
  v6 = *(v0 + 936);
  v7 = swift_allocObject();
  *(v0 + 2512) = v7;
  *(v7 + 16) = v1;
  *(v7 + 24) = v6;
  v2(v4, v3, v5);

  v8 = swift_task_alloc();
  *(v0 + 2520) = v8;
  *v8 = v0;
  v8[1] = sub_1005C581C;
  v9 = *(v0 + 2448);
  v10 = *(v0 + 2336);

  return NSManagedObjectContext.perform<A>(schedule:_:)(v0 + 856, v10, sub_1005ED548, v7, v9);
}

uint64_t sub_1005C54F8()
{
  v1 = *v0;
  v2 = *(*v0 + 2240);
  v3 = *(*v0 + 2232);
  v4 = *(*v0 + 2224);

  (*(v3 + 8))(v2, v4);
  v5 = *(v1 + 2400);
  v6 = *(v1 + 2392);

  return _swift_task_switch(sub_1005C56A8, v6, v5);
}

uint64_t sub_1005C56A8()
{
  (*(v0 + 2488))(*(v0 + 2304), *(v0 + 2248));
  v1 = *(v0 + 2472);
  v2 = *(v0 + 2424);
  v3 = *(v0 + 2880);
  v4 = *(v0 + 2336);
  v5 = *(v0 + 2312);
  v6 = *(v0 + 936);
  v7 = swift_allocObject();
  *(v0 + 2512) = v7;
  *(v7 + 16) = v1;
  *(v7 + 24) = v6;
  v2(v4, v3, v5);

  v8 = swift_task_alloc();
  *(v0 + 2520) = v8;
  *v8 = v0;
  v8[1] = sub_1005C581C;
  v9 = *(v0 + 2448);
  v10 = *(v0 + 2336);

  return NSManagedObjectContext.perform<A>(schedule:_:)(v0 + 856, v10, sub_1005ED548, v7, v9);
}

void sub_1005C581C()
{
  v2 = *v1;
  *(*v1 + 2528) = v0;

  if (v0)
  {
  }

  else
  {
    (*(v2 + 2456))(*(v2 + 2336), *(v2 + 2312));

    v3 = *(v2 + 2400);
    v4 = *(v2 + 2392);

    _swift_task_switch(sub_1005C59B8, v4, v3);
  }
}

uint64_t sub_1005C59B8()
{
  v0[317] = v0[107];
  v1 = swift_task_alloc();
  v0[318] = v1;
  *v1 = v0;
  v1[1] = sub_1005C5A84;
  v2 = v0[110];
  v3 = v0[109];

  return sub_100780A08(v3, v2);
}

uint64_t sub_1005C5A84()
{
  v1 = *v0;

  v2 = *(v1 + 2400);
  v3 = *(v1 + 2392);

  return _swift_task_switch(sub_1005C5BD8, v3, v2);
}

uint64_t sub_1005C5BD8()
{
  v1 = *(*(v0 + 904) + 16);
  *(v0 + 2552) = v1;
  if (!v1)
  {
LABEL_103:

    v202 = *(v0 + 8);
    v203 = *(v0 + 2536);

    return v202(v203);
  }

  v2 = *(v0 + 912);
  *(v0 + 2560) = sub_1000F24EC(&unk_100AE88B0, &unk_100943ED0);
  v3 = swift_allocObject();
  v502 = 1;
  *(v3 + 16) = xmmword_100940080;
  *(v3 + 56) = &type metadata for String;
  *(v3 + 32) = 0xD000000000000011;
  *(v3 + 40) = 0x80000001008FDB20;
  print(_:separator:terminator:)();

  *(v0 + 112) = &off_100A59AA8;
  *(v0 + 120) = &off_100A59C08;
  v472 = v0 + 120;
  *(v0 + 128) = &off_100A59D68;
  v465 = v0 + 128;
  *(v0 + 2568) = [objc_allocWithZone(type metadata accessor for RandomVideoAssetGenerator()) init];
  v4 = [objc_allocWithZone(type metadata accessor for RandomAudioRecordingsGenerator()) init];
  *(v0 + 2576) = v4;
  if (v2 < 0)
  {
LABEL_150:
    __break(1u);
LABEL_151:
    __break(1u);
LABEL_152:
    __break(1u);
LABEL_153:
    v198 = swift_task_alloc();
    *(v0 + 2808) = v198;
    *(v198 + 16) = 1;
    v367 = swift_task_alloc();
    *(v0 + 2816) = v367;
    v368 = sub_1000F24EC(&qword_100AEABF0, &qword_10095F7D0);
    *v367 = v0;
    v367[1] = sub_1005DDCB8;
    v171 = *(v0 + 880);
    v170 = *(v0 + 872);
    v176 = v368;
    v174 = sub_1005ED564;
    v169 = v0 + 824;
LABEL_98:
    v173 = v393 | 0x8000000000000000;
    v172 = 0xD000000000000024;
    v175 = v198;

    return withCheckedContinuation<A>(isolation:function:_:)(v169, v170, v171, v172, v173, v174, v175, v176);
  }

  if (!*(v0 + 912))
  {
LABEL_102:
    v201 = *(v0 + 2568);

    goto LABEL_103;
  }

  v459 = (v0 + 688);
  v373 = (v0 + 736);
  v399 = (v0 + 752);
  v508 = (v0 + 776);
  v420 = (v0 + 784);
  v442 = (v0 + 816);
  v518 = (v0 + 808);
  v527 = (v0 + 840);
  *(v0 + 2884) = *(*(v0 + 2184) + 80);
  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  v5 = 0;
  size = CGRectZero.size;
  *(v0 + 136) = CGRectZero.origin;
  *(v0 + 2888) = enum case for AssetType.photo(_:);
  *(v0 + 2892) = enum case for AssetType.livePhoto(_:);
  *(v0 + 2896) = enum case for AssetType.video(_:);
  *(v0 + 2900) = enum case for AssetType.music(_:);
  *(v0 + 2904) = enum case for AssetType.podcast(_:);
  *(v0 + 2908) = enum case for AssetType.book(_:);
  *(v0 + 2912) = enum case for AssetType.audio(_:);
  *(v0 + 2916) = enum case for AssetType.visit(_:);
  *(v0 + 2920) = enum case for AssetType.multiPinMap(_:);
  *(v0 + 2924) = enum case for AssetType.genericMap(_:);
  *(v0 + 2928) = enum case for AssetType.link(_:);
  *(v0 + 2932) = enum case for AssetType.contact(_:);
  *(v0 + 2936) = enum case for AssetType.workoutIcon(_:);
  *(v0 + 2940) = enum case for AssetType.workoutRoute(_:);
  *(v0 + 2944) = enum case for AssetType.reflection(_:);
  *(v0 + 2948) = enum case for AssetType.stateOfMind(_:);
  *(v0 + 2952) = enum case for AssetType.motionActivity(_:);
  *(v0 + 2956) = enum case for AssetType.thirdPartyMedia(_:);
  *(v0 + 2960) = enum case for AssetType.placeholder(_:);
  v393 = "RandomEntry asset";
  *(v0 + 2964) = enum case for AssetType.streakEvent(_:);
  *(v0 + 2968) = enum case for AssetType.drawing(_:);
  *(v0 + 2972) = enum case for AssetType.confetti(_:);
  *(v0 + 2976) = enum case for AssetType.unknown(_:);
  v7 = enum case for AssetSource.unknown(_:);
  *(v0 + 2980) = enum case for AssetSource.unknown(_:);
  *(v0 + 2584) = UIFontTextStyleFootnote;
  *(v0 + 2592) = UIFontDescriptorSystemDesignRounded;
  *(v0 + 2984) = enum case for MotionActivityTypeEnum.walking(_:);
  *(v0 + 2988) = enum case for AssetSource.locationPicker(_:);
  *(v0 + 2992) = enum case for MediaViewType.podcast(_:);
  *(v0 + 2996) = v7;
  *(v0 + 3000) = enum case for MediaViewType.song(_:);
  *(v0 + 3004) = enum case for AssetPlacement.grid(_:);
  *(v0 + 3008) = enum case for JournalFeatureFlags.enhancedSync(_:);
  *(v0 + 152) = size;
  v8 = *(v0 + 2528);
  while (1)
  {
    *(v0 + 2608) = v5;
    *(v0 + 2600) = v8;
    v9 = *(v0 + 2552);
    *(v0 + 832) = 0;
    swift_stdlib_random();
    v10 = *(v0 + 832);
    v11 = (v10 * v9) >> 64;
    v12 = v10 * v9;
    v13 = *(v0 + 2552);
    if (v9 > v12)
    {
      v14 = -v13 % v13;
      if (v14 > v12)
      {
        do
        {
          v15 = *(v0 + 2552);
          *(v0 + 680) = 0;
          swift_stdlib_random();
          v16 = *(v0 + 680);
        }

        while (v14 > v16 * v15);
        v11 = (v16 * v15) >> 64;
        v13 = *(v0 + 2552);
      }
    }

    if (v11 >= v13)
    {
      __break(1u);
LABEL_119:
      v522 = *(v0 + 2988);
      v446 = *(v0 + 2980);
      v261 = *(v0 + 2256);
      v262 = *(v0 + 2248);
      v438 = *(v0 + 2160);
      v263 = *(v0 + 2056);
      v512 = *(v0 + 2048);
      v264 = *(v0 + 1904);
      v265 = *(v0 + 1872);
      v266 = *(v0 + 1864);
      v491 = *(v0 + 1384);
      v498 = *(v0 + 1376);
      v468 = *(v0 + 1368);
      v475 = *(v0 + 1360);
      v462 = *(v0 + 1352);
      v432 = *(v0 + 1344);
      v267 = *(v0 + 1336);
      v268 = swift_allocObject();
      *(v268 + 16) = xmmword_100940080;
      *(v268 + 56) = &type metadata for String;
      *(v268 + 32) = 0xD000000000000018;
      *(v268 + 40) = 0x80000001008FDC60;
      print(_:separator:terminator:)();

      Date.init()();
      v269 = *(v261 + 56);
      v269(v264, 0, 1, v262);
      v269(v265, 1, 1, v262);
      v269(v266, 1, 1, v262);
      v505 = *(v263 + 104);
      v505(v267, v522, v512);
      v483 = *(v263 + 56);
      v483(v267, 0, 1, v512);
      VisitAssetMetadata.init(placeName:city:typeOfPlace:visitStartTime:visitEndTime:createdDate:latitude:longitude:styleData:mapItemData:isWork:confidenceLevel:horizontalAccuracy:assetSource:)();
      Date.init()();
      v269(v264, 0, 1, v262);
      v269(v265, 1, 1, v262);
      v269(v266, 1, 1, v262);
      v505(v267, v522, v512);
      v483(v267, 0, 1, v512);
      VisitAssetMetadata.init(placeName:city:typeOfPlace:visitStartTime:visitEndTime:createdDate:latitude:longitude:styleData:mapItemData:isWork:confidenceLevel:horizontalAccuracy:assetSource:)();
      Date.init()();
      v269(v264, 0, 1, v262);
      v269(v265, 1, 1, v262);
      v269(v266, 1, 1, v262);
      v505(v267, v522, v512);
      v483(v267, 0, 1, v512);
      VisitAssetMetadata.init(placeName:city:typeOfPlace:visitStartTime:visitEndTime:createdDate:latitude:longitude:styleData:mapItemData:isWork:confidenceLevel:horizontalAccuracy:assetSource:)();
      Date.init()();
      v269(v264, 0, 1, v262);
      v269(v265, 1, 1, v262);
      v269(v266, 1, 1, v262);
      v505(v267, v522, v512);
      v483(v267, 0, 1, v512);
      VisitAssetMetadata.init(placeName:city:typeOfPlace:visitStartTime:visitEndTime:createdDate:latitude:longitude:styleData:mapItemData:isWork:confidenceLevel:horizontalAccuracy:assetSource:)();
      sub_1000F24EC(&qword_100AD64A8, &qword_100945170);
      v270 = *(v462 + 72);
      v271 = (*(v462 + 80) + 32) & ~*(v462 + 80);
      v272 = swift_allocObject();
      *(v272 + 16) = xmmword_100941FE0;
      v273 = v272 + v271;
      v274 = *(v462 + 16);
      v274(v273, v491, v432);
      v274(v273 + v270, v498, v432);
      v274(v273 + 2 * v270, v468, v432);
      v274(v273 + 3 * v270, v475, v432);
      sub_1006ADB18(v272);
      v505(v438, v446, v512);
      v246 = sub_10011CEC0(v438, _swiftEmptyArrayStorage);
      v275 = *(v462 + 8);
      v275(v475, v432);
      v275(v468, v432);
      v275(v498, v432);
      v275(v491, v432);
      goto LABEL_126;
    }

    v17 = *(v0 + 2888);
    v18 = *(v0 + 2216);
    v19 = *(v0 + 2208);
    v20 = *(v0 + 2184);
    v21 = *(v0 + 2176);
    v22 = *(v20 + 16);
    v23 = *(v0 + 904) + ((*(v0 + 2884) + 32) & ~*(v0 + 2884)) + *(v20 + 72) * v11;
    *(v0 + 2616) = v22;
    *(v0 + 2624) = (v20 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v22(v18, v23, v21);
    v22(v19, v18, v21);
    v24 = (*(v20 + 88))(v19, v21);
    if (v24 == v17)
    {
      v197 = swift_allocObject();
      *(v197 + 16) = xmmword_100940080;
      *(v197 + 56) = &type metadata for String;
      *(v197 + 32) = 0xD000000000000013;
      *(v197 + 40) = 0x80000001008FDEC0;
      print(_:separator:terminator:)();

      v198 = swift_task_alloc();
      *(v0 + 2632) = v198;
      *(v198 + 16) = 1;
      v199 = swift_task_alloc();
      *(v0 + 2640) = v199;
      v200 = sub_1000F24EC(&qword_100AEABF0, &qword_10095F7D0);
      *v199 = v0;
      v199[1] = sub_1005CAA34;
      v171 = *(v0 + 880);
      v170 = *(v0 + 872);
      v176 = v200;
      v174 = sub_1005ED67C;
      v169 = v0 + 848;
      goto LABEL_98;
    }

    if (v24 == *(v0 + 2892))
    {
      goto LABEL_5;
    }

    if (v24 == *(v0 + 2896))
    {
      v205 = swift_allocObject();
      *(v205 + 16) = xmmword_100940080;
      *(v205 + 56) = &type metadata for String;
      *(v205 + 32) = 0xD000000000000013;
      *(v205 + 40) = 0x80000001008FDBE0;
      print(_:separator:terminator:)();

      v206 = swift_task_alloc();
      *(v0 + 2704) = v206;
      *v206 = v0;
      v206[1] = sub_1005D1548;
      v207 = *(v0 + 1264);
      v208 = *(v0 + 880);
      v209 = *(v0 + 872);

      return sub_1006A580C(v207, v209, v208);
    }

    if (v24 == *(v0 + 2900))
    {
      v25 = swift_allocObject();
      *(v25 + 16) = xmmword_100940080;
      *(v25 + 56) = &type metadata for String;
      *(v25 + 32) = 0xD000000000000012;
      *(v25 + 40) = 0x80000001008FDE10;
      print(_:separator:terminator:)();

      v26 = *(v0 + 112);
      v27 = *(v26 + 16);
      if (v27)
      {
        *v442 = 0;
        swift_stdlib_random();
        v28 = *v442 * v27;
        v29 = (*v442 * v27) >> 64;
        if (v27 > v28)
        {
          v30 = -v27 % v27;
          v31 = (v0 + 840);
          if (v30 > v28)
          {
            do
            {
              *v31 = 0;
              swift_stdlib_random();
              v31 = (v0 + 840);
            }

            while (v30 > *v527 * v27);
            v29 = (*v527 * v27) >> 64;
          }
        }

        if (v29 >= *(v26 + 16))
        {
          __break(1u);
          goto LABEL_150;
        }

        swift_beginAccess();

        sub_100691A14(v29);
        swift_endAccess();
      }

      v46 = *(v0 + 2024);
      v47 = *(v0 + 1600);
      v48 = *(v0 + 1592);
      URL.init(string:)();
      if ((*(v47 + 48))(v46, 1, v48) != 1)
      {
        (*(*(v0 + 1600) + 32))(*(v0 + 1664), *(v0 + 2024), *(v0 + 1592));
        v53 = Data.init(contentsOf:options:)();
        if (v8)
        {
          v55 = *(v0 + 2216);
          v56 = *(v0 + 2184);
          v57 = *(v0 + 2176);
          v58 = *(v0 + 1664);
          v59 = *(v0 + 1600);
          v60 = *(v0 + 1592);

          (*(v59 + 8))(v58, v60);
          (*(v56 + 8))(v55, v57);
LABEL_71:
          v8 = 0;
          goto LABEL_6;
        }

        v111 = v53;
        v112 = v54;
        v113 = objc_allocWithZone(UIImage);
        sub_100049ED8(v111, v112);
        isa = Data._bridgeToObjectiveC()().super.isa;
        v115 = [v113 initWithData:isa];

        v116 = sub_1000340DC(v111, v112);
        v117 = v111;
        if (!v115)
        {
          v456 = *(v0 + 2216);
          v118 = *(v0 + 2184);
          v119 = *(v0 + 2176);
          v120 = *(v0 + 1664);
          v121 = *(v0 + 1600);
          v122 = *(v0 + 1592);

          v123.n128_f64[0] = sub_1000340DC(v117, v112);
          (*(v121 + 8))(v120, v122, v123);
LABEL_70:
          (*(v118 + 8))(v456, v119);
          goto LABEL_71;
        }

        v465 = v111;
        v472 = v112;
        v388 = *(v0 + 3000);
        v400 = *(v0 + 2900);
        v210 = *(v0 + 2256);
        v384 = *(v0 + 2248);
        v488 = *(v0 + 2200);
        v434 = *(v0 + 2192);
        v211 = *(v0 + 2184);
        v407 = v211;
        v479 = *(v0 + 2176);
        v509 = *(v0 + 2160);
        v443 = *(v0 + 2152);
        v380 = *(v0 + 2144);
        v528 = *(v0 + 2056);
        v503 = *(v0 + 2048);
        v427 = *(v0 + 2016);
        v370 = *(v0 + 1896);
        v394 = *(v0 + 1744);
        v414 = *(v0 + 1736);
        v519 = *(v0 + 1728);
        v421 = *(v0 + 1720);
        v450 = *(v0 + 1712);
        v212 = *(v0 + 1600);
        v213 = *(v0 + 1592);
        v377 = *(v0 + 1544);
        v214 = *(v0 + 1528);
        v374 = *(v0 + 1520);
        (*(v528 + 104))(v116);

        (*(v212 + 56))(v427, 1, 1, v213);
        v428 = v115;
        Date.init()();
        (*(v210 + 56))(v370, 0, 1, v384);
        (*(v214 + 104))(v377, v388, v374);
        (*(v211 + 104))(v488, v400, v479);
        v401 = *(v528 + 16);
        v401(v509, v380, v503);
        UUID.init()();
        *(objc_allocWithZone(type metadata accessor for MusicAsset(0)) + OBJC_IVAR____TtC7Journal10MusicAsset_metadata) = 0;
        (*(v519 + 16))(v414, v394, v421);
        v22(v434, v488, v479);
        v215 = v509;
        v401(v443, v509, v503);
        v216 = sub_100285908(v414, v434, v443);
        v217 = *(v519 + 8);
        v217(v394, v421);
        v508 = *(v528 + 8);
        v508(v215, v503);
        (*(v407 + 8))(v488, v479);
        *v450 = v428;
        swift_storeEnumTagMultiPayload();
        v502 = v428;
        UUID.init()();
        v218 = UUID.uuidString.getter();
        v220 = v219;
        v217(v394, v421);
        type metadata accessor for AssetAttachment(0);
        v221 = swift_allocObject();
        *(v221 + 16) = 0;
        sub_1005ED56C(v450, v221 + OBJC_IVAR____TtC7Journal15AssetAttachment_assetType, type metadata accessor for AssetAttachment.AssetType);
        v222 = (v221 + OBJC_IVAR____TtC7Journal15AssetAttachment_fileNameID);
        *v222 = v218;
        v222[1] = v220;
        v223 = OBJC_IVAR____TtC7Journal5Asset_sourceAttachments;
        swift_beginAccess();
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        v518 = v216;
        if (*((*(v216 + v223) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v216 + v223) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
LABEL_157:
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        v444 = *(v0 + 2048);
        v451 = *(v0 + 2144);
        v224 = *(v0 + 2016);
        v225 = *(v0 + 2008);
        v385 = *(v0 + 1904);
        v226 = *(v0 + 1896);
        v460 = *(v0 + 1664);
        v415 = *(v0 + 1600);
        v435 = *(v0 + 1592);
        v395 = *(v0 + 1544);
        v227 = *(v0 + 1528);
        v389 = *(v0 + 1520);
        v402 = *(v0 + 1512);
        v429 = *(v0 + 1504);
        v480 = *(v0 + 1496);
        v228 = *(v0 + 1488);
        v422 = *(v0 + 1480);
        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        swift_endAccess();
        sub_1000082B4(v224, v225, &unk_100AD6DD0, &qword_1009437C0);
        sub_1000082B4(v226, v385, &unk_100AD4790, &unk_10093B4E0);
        (*(v227 + 16))(v228, v395, v389);
        (*(v227 + 56))(v228, 0, 1, v389);
        MusicAssetMetadata.init(mediaId:mediaURL:artistName:song:albumName:numberOfTimesPlayed:startTime:mediaType:)();

        v229 = sub_1000340DC(v465, v472);
        (*(v227 + 8))(v395, v389, v229);
        sub_100004F84(v226, &unk_100AD4790, &unk_10093B4E0);
        sub_100004F84(v224, &unk_100AD6DD0, &qword_1009437C0);
        v508(v451, v444);
        (*(v415 + 8))(v460, v435);
        (*(v429 + 32))(v422, v402, v480);
        swift_storeEnumTagMultiPayload();
        sub_1000F24EC(&qword_100AE0E90, &unk_1009525D0);
        v230 = swift_allocObject();
        v231 = *(*v230 + 104);
        v232 = sub_1000F24EC(&qword_100AD6F70, &unk_100962D80);
        (*(*(v232 - 8) + 56))(v230 + v231, 1, 1, v232);
        *(v230 + *(*v230 + 112)) = xmmword_100941EE0;
        sub_100021CEC(v422, v230 + *(*v230 + 120), &qword_100ADA8E0, &unk_100962D70);
        v233 = &OBJC_IVAR____TtC7Journal10MusicAsset_metadata;
LABEL_124:
        v246 = v518;
        *(v518 + *v233) = v230;
LABEL_125:

        v8 = 0;
LABEL_126:
        *(v0 + 2832) = v246;
        *(v0 + 2824) = v8;
        v305 = *(v0 + 2608);
        v532 = *(v0 + 3008);
        v525 = *(v0 + 3004);
        v306 = *(v0 + 992);
        v307 = *(v0 + 984);
        v516 = *(v0 + 976);
        v308 = *(v0 + 968);
        v309 = *(v0 + 960);
        v310 = *(v0 + 952);
        v311 = *(v0 + 896);
        *(v0 + 576) = *(v0 + 888);
        *(v0 + 584) = v311;

        v312._countAndFlagsBits = 0x20746573734120;
        v312._object = 0xE700000000000000;
        String.append(_:)(v312);
        *(v0 + 768) = v305;
        v313._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v313);

        v314 = v246;
        v315 = objc_allocWithZone(NSAttributedString);
        v316 = String._bridgeToObjectiveC()();

        v317 = [v315 initWithString:v316];

        v318 = *(v314 + OBJC_IVAR____TtC7Journal5Asset_title);
        *(v314 + OBJC_IVAR____TtC7Journal5Asset_title) = v317;

        *v306 = static AssetPlacement.maxGridCount.getter();
        (*(v307 + 104))(v306, v525, v516);
        (*(v309 + 104))(v308, v532, v310);
        LOBYTE(v316) = JournalFeatureFlags.isEnabled.getter();
        (*(v309 + 8))(v308, v310);
        if (v316)
        {
          *(v0 + 2840) = CFAbsoluteTimeGetCurrent();
          v319 = swift_task_alloc();
          *(v0 + 2848) = v319;
          *v319 = v0;
          v319[1] = sub_1005DEA30;
          v320 = *(v0 + 992);
          v321 = *(v0 + 880);
          v322 = *(v0 + 872);

          return sub_10056B238(v322, v321, v314, v320, 1);
        }

        else
        {
          v323 = swift_task_alloc();
          *(v0 + 2872) = v323;
          *v323 = v0;
          v323[1] = sub_1005DEE38;
          v324 = *(v0 + 992);
          v325 = *(v0 + 880);
          v326 = *(v0 + 872);

          return sub_1001F8424(v326, v325, v314, v324);
        }
      }

      v49 = *(v0 + 2216);
      v50 = *(v0 + 2184);
      v51 = *(v0 + 2176);
      v52 = *(v0 + 2024);
      goto LABEL_51;
    }

    if (v24 == *(v0 + 2904))
    {
      v32 = swift_allocObject();
      *(v32 + 16) = xmmword_100940080;
      *(v32 + 56) = &type metadata for String;
      *(v32 + 32) = 0xD000000000000015;
      *(v32 + 40) = 0x80000001008FDD50;
      print(_:separator:terminator:)();

      v33 = *(v0 + 120);
      v34 = *(v33 + 16);
      if (v34)
      {
        *v420 = 0;
        swift_stdlib_random();
        v35 = *v420 * v34;
        v36 = (*v420 * v34) >> 64;
        if (v34 > v35)
        {
          v37 = -v34 % v34;
          v38 = (v0 + 808);
          if (v37 > v35)
          {
            do
            {
              *v38 = 0;
              swift_stdlib_random();
              v38 = (v0 + 808);
            }

            while (v37 > *v518 * v34);
            v36 = (*v518 * v34) >> 64;
          }
        }

        if (v36 >= *(v33 + 16))
        {
          goto LABEL_151;
        }

        swift_beginAccess();

        sub_100691A14(v36);
        swift_endAccess();
      }

      v100 = *(v0 + 2000);
      v101 = *(v0 + 1600);
      v102 = *(v0 + 1592);
      URL.init(string:)();
      if ((*(v101 + 48))(v100, 1, v102) != 1)
      {
        (*(*(v0 + 1600) + 32))(*(v0 + 1656), *(v0 + 2000), *(v0 + 1592));
        v103 = Data.init(contentsOf:options:)();
        if (!v8)
        {
          v140 = v104;
          v141 = v103;
          v142 = objc_allocWithZone(UIImage);
          sub_100049ED8(v141, v140);
          v143 = Data._bridgeToObjectiveC()().super.isa;
          v144 = [v142 initWithData:v143];

          v145 = sub_1000340DC(v141, v140);
          v146 = v141;
          if (!v144)
          {
            v456 = *(v0 + 2216);
            v118 = *(v0 + 2184);
            v119 = *(v0 + 2176);
            v147 = *(v0 + 1656);
            v148 = *(v0 + 1600);
            v149 = *(v0 + 1592);

            v150.n128_f64[0] = sub_1000340DC(v146, v140);
            (*(v148 + 8))(v147, v149, v150);
            goto LABEL_70;
          }

          v452 = v141;
          v461 = v140;
          v396 = *(v0 + 2992);
          v408 = *(v0 + 2904);
          v239 = *(v0 + 2256);
          v390 = *(v0 + 2248);
          v403 = *(v0 + 2200);
          v423 = *(v0 + 2192);
          v520 = *(v0 + 2184);
          v466 = *(v0 + 2176);
          v504 = *(v0 + 2160);
          v430 = *(v0 + 2152);
          v386 = *(v0 + 2136);
          v529 = *(v0 + 2056);
          v481 = *(v0 + 2048);
          v240 = *(v0 + 1992);
          v375 = *(v0 + 1888);
          v473 = *(v0 + 1744);
          v416 = *(v0 + 1736);
          v510 = *(v0 + 1728);
          v489 = *(v0 + 1720);
          v436 = *(v0 + 1712);
          v371 = *(v0 + 1656);
          v241 = *(v0 + 1600);
          v242 = *(v0 + 1592);
          v381 = *(v0 + 1536);
          v243 = *(v0 + 1528);
          v378 = *(v0 + 1520);
          (*(v529 + 104))(v145);

          (*(v241 + 16))(v240, v371, v242);
          (*(v241 + 56))(v240, 0, 1, v242);
          Date.init()();
          (*(v239 + 56))(v375, 0, 1, v390);
          (*(v243 + 104))(v381, v396, v378);
          (*(v520 + 104))(v403, v408, v466);
          v409 = *(v529 + 16);
          v409(v504, v386, v481);
          UUID.init()();
          *(objc_allocWithZone(type metadata accessor for PodcastAsset(0)) + OBJC_IVAR____TtC7Journal12PodcastAsset_metadata) = 0;
          (*(v510 + 16))(v416, v473, v489);
          v22(v423, v403, v466);
          v409(v430, v504, v481);
          v244 = sub_100285908(v416, v423, v430);
          v245 = *(v510 + 8);
          v245(v473, v489);
          v511 = *(v529 + 8);
          v511(v504, v481);
          (*(v520 + 8))(v403, v466);
          *v436 = v144;
          swift_storeEnumTagMultiPayload();
          v246 = v244;
          v521 = v144;
          UUID.init()();
          v247 = UUID.uuidString.getter();
          v249 = v248;
          v245(v473, v489);
          type metadata accessor for AssetAttachment(0);
          v250 = swift_allocObject();
          *(v250 + 16) = 0;
          sub_1005ED56C(v436, v250 + OBJC_IVAR____TtC7Journal15AssetAttachment_assetType, type metadata accessor for AssetAttachment.AssetType);
          v251 = (v250 + OBJC_IVAR____TtC7Journal15AssetAttachment_fileNameID);
          *v251 = v247;
          v251[1] = v249;
          v252 = OBJC_IVAR____TtC7Journal5Asset_sourceAttachments;
          swift_beginAccess();
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((*(v246 + v252) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v246 + v252) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          v467 = *(v0 + 2048);
          v474 = *(v0 + 2136);
          v253 = *(v0 + 2008);
          v254 = *(v0 + 1992);
          v397 = *(v0 + 1904);
          v391 = *(v0 + 1888);
          v490 = *(v0 + 1656);
          v424 = *(v0 + 1600);
          v445 = *(v0 + 1592);
          v410 = *(v0 + 1536);
          v255 = *(v0 + 1528);
          v404 = *(v0 + 1520);
          v256 = *(v0 + 1488);
          v417 = *(v0 + 1464);
          v431 = *(v0 + 1456);
          v482 = *(v0 + 1448);
          v437 = *(v0 + 1440);
          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          swift_endAccess();
          sub_1000082B4(v254, v253, &unk_100AD6DD0, &qword_1009437C0);
          sub_1000082B4(v391, v397, &unk_100AD4790, &unk_10093B4E0);
          (*(v255 + 16))(v256, v410, v404);
          (*(v255 + 56))(v256, 0, 1, v404);
          PodcastAssetMetadata.init(mediaId:title:author:mediaURL:timePlayed:numberOfTimesPlayed:mediaType:)();

          v257 = sub_1000340DC(v452, v461);
          (*(v255 + 8))(v410, v404, v257);
          sub_100004F84(v391, &unk_100AD4790, &unk_10093B4E0);
          sub_100004F84(v254, &unk_100AD6DD0, &qword_1009437C0);
          v511(v474, v467);
          (*(v424 + 8))(v490, v445);
          (*(v431 + 32))(v437, v417, v482);
          swift_storeEnumTagMultiPayload();
          sub_1000F24EC(&qword_100AE0E80, &unk_1009525A0);
          v258 = swift_allocObject();
          v259 = *(*v258 + 104);
          v260 = sub_1000F24EC(&qword_100AD2A70, &qword_100952E00);
          (*(*(v260 - 8) + 56))(v258 + v259, 1, 1, v260);
          *(v258 + *(*v258 + 112)) = xmmword_100941EE0;
          sub_100021CEC(v437, v258 + *(*v258 + 120), &qword_100ADA958, &unk_100960730);
          *(v246 + OBJC_IVAR____TtC7Journal12PodcastAsset_metadata) = v258;

          goto LABEL_125;
        }

        v105 = *(v0 + 2216);
        v106 = *(v0 + 2184);
        v107 = *(v0 + 2176);
        v108 = *(v0 + 1656);
        v109 = *(v0 + 1600);
        v110 = *(v0 + 1592);

        (*(v109 + 8))(v108, v110);
LABEL_67:
        (*(v106 + 8))(v105, v107);
        goto LABEL_71;
      }

      v49 = *(v0 + 2216);
      v50 = *(v0 + 2184);
      v51 = *(v0 + 2176);
      v52 = *(v0 + 2000);
LABEL_51:
      (*(v50 + 8))(v49, v51);

LABEL_52:

      sub_100004F84(v52, &unk_100AD6DD0, &qword_1009437C0);
      goto LABEL_6;
    }

    if (v24 == *(v0 + 2908))
    {
      v39 = swift_allocObject();
      *(v39 + 16) = xmmword_100940080;
      *(v39 + 56) = &type metadata for String;
      *(v39 + 32) = 0xD000000000000012;
      *(v39 + 40) = 0x80000001008FDCA0;
      print(_:separator:terminator:)();

      v40 = *(v0 + 128);
      v41 = *(v40 + 16);
      if (v41)
      {
        *v399 = 0;
        swift_stdlib_random();
        v42 = *v399 * v41;
        v43 = (*v399 * v41) >> 64;
        if (v41 > v42)
        {
          v44 = -v41 % v41;
          v45 = (v0 + 776);
          if (v44 > v42)
          {
            do
            {
              *v45 = 0;
              swift_stdlib_random();
              v45 = (v0 + 776);
            }

            while (v44 > *v508 * v41);
            v43 = (*v508 * v41) >> 64;
          }
        }

        if (v43 >= *(v40 + 16))
        {
          goto LABEL_152;
        }

        swift_beginAccess();

        sub_100691A14(v43);
        swift_endAccess();
      }

      v132 = *(v0 + 1984);
      v133 = *(v0 + 1600);
      v134 = *(v0 + 1592);
      URL.init(string:)();
      if ((*(v133 + 48))(v132, 1, v134) != 1)
      {
        (*(*(v0 + 1600) + 32))(*(v0 + 1648), *(v0 + 1984), *(v0 + 1592));
        v135 = Data.init(contentsOf:options:)();
        if (!v8)
        {
          v151 = v135;
          v152 = v136;
          v153 = objc_allocWithZone(UIImage);
          sub_100049ED8(v151, v152);
          v154 = Data._bridgeToObjectiveC()().super.isa;
          v155 = [v153 initWithData:v154];

          v156 = sub_1000340DC(v151, v152);
          if (!v155)
          {
            v457 = *(v0 + 2216);
            v157 = *(v0 + 2184);
            v158 = *(v0 + 2176);
            v159 = *(v0 + 1648);
            v160 = *(v0 + 1600);
            v161 = *(v0 + 1592);

            v162 = sub_1000340DC(v151, v152);
            (*(v160 + 8))(v159, v161, v162);
            (*(v157 + 8))(v457, v158);
            goto LABEL_71;
          }

          v477 = v152;
          v411 = *(v0 + 2908);
          v286 = *(v0 + 2256);
          v405 = *(v0 + 2248);
          v493 = *(v0 + 2200);
          v439 = *(v0 + 2192);
          v287 = *(v0 + 2184);
          v485 = *(v0 + 2176);
          v514 = *(v0 + 2160);
          v447 = *(v0 + 2152);
          v398 = *(v0 + 2128);
          v531 = *(v0 + 2056);
          v288 = *(v0 + 2048);
          v289 = *(v0 + 1880);
          v506 = *(v0 + 1744);
          v418 = *(v0 + 1736);
          v524 = *(v0 + 1728);
          v425 = *(v0 + 1720);
          v463 = *(v0 + 1712);
          (*(v531 + 104))(v156);

          v453 = v155;
          Date.init()();
          (*(v286 + 56))(v289, 0, 1, v405);
          (*(v287 + 104))(v493, v411, v485);
          v412 = *(v531 + 16);
          v412(v514, v398, v288);
          UUID.init()();
          *(objc_allocWithZone(type metadata accessor for BookAsset(0)) + OBJC_IVAR____TtC7Journal9BookAsset_metadata) = 0;
          (*(v524 + 16))(v418, v506, v425);
          v22(v439, v493, v485);
          v290 = v514;
          v412(v447, v514, v288);
          v291 = sub_100285908(v418, v439, v447);
          v292 = *(v524 + 8);
          v292(v506, v425);
          v515 = *(v531 + 8);
          v515(v290, v288);
          (*(v287 + 8))(v493, v485);
          *v463 = v453;
          swift_storeEnumTagMultiPayload();
          v494 = v453;
          UUID.init()();
          v293 = UUID.uuidString.getter();
          v295 = v294;
          v292(v506, v425);
          type metadata accessor for AssetAttachment(0);
          v296 = swift_allocObject();
          *(v296 + 16) = 0;
          sub_1005ED56C(v463, v296 + OBJC_IVAR____TtC7Journal15AssetAttachment_assetType, type metadata accessor for AssetAttachment.AssetType);
          v297 = (v296 + OBJC_IVAR____TtC7Journal15AssetAttachment_fileNameID);
          *v297 = v293;
          v297[1] = v295;
          v298 = OBJC_IVAR____TtC7Journal5Asset_sourceAttachments;
          swift_beginAccess();
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          v518 = v291;
          if (*((*(v518 + v298) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v518 + v298) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          v440 = *(v0 + 2048);
          v448 = *(v0 + 2128);
          v299 = *(v0 + 1904);
          v300 = *(v0 + 1880);
          v464 = *(v0 + 1648);
          v301 = *(v0 + 1600);
          v454 = *(v0 + 1592);
          v302 = *(v0 + 1424);
          v433 = *(v0 + 1416);
          v486 = *(v0 + 1408);
          v470 = *(v0 + 1400);
          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          swift_endAccess();
          sub_1000082B4(v300, v299, &unk_100AD4790, &unk_10093B4E0);
          BookAssetMetadata.init(mediaId:title:author:timeOfPurchase:)();

          sub_1000340DC(v151, v477);
          sub_100004F84(v300, &unk_100AD4790, &unk_10093B4E0);
          v515(v448, v440);
          (*(v301 + 8))(v464, v454);
          (*(v433 + 32))(v470, v302, v486);
          swift_storeEnumTagMultiPayload();
          sub_1000F24EC(&qword_100AEABF8, &unk_100962D40);
          v230 = swift_allocObject();
          v303 = *(*v230 + 104);
          v304 = sub_1000F24EC(&qword_100AD4318, &qword_100942B38);
          (*(*(v304 - 8) + 56))(v230 + v303, 1, 1, v304);
          *(v230 + *(*v230 + 112)) = xmmword_100941EE0;
          sub_100021CEC(v470, v230 + *(*v230 + 120), &qword_100ADA8C0, &qword_10094A5B8);
          v233 = &OBJC_IVAR____TtC7Journal9BookAsset_metadata;
          goto LABEL_124;
        }

        v105 = *(v0 + 2216);
        v106 = *(v0 + 2184);
        v107 = *(v0 + 2176);
        v137 = *(v0 + 1648);
        v138 = *(v0 + 1600);
        v139 = *(v0 + 1592);

        (*(v138 + 8))(v137, v139);
        goto LABEL_67;
      }

      v52 = *(v0 + 1984);
      (*(*(v0 + 2184) + 8))(*(v0 + 2216), *(v0 + 2176));

      goto LABEL_52;
    }

    if (v24 == *(v0 + 2912))
    {
      break;
    }

    if (v24 == *(v0 + 2916))
    {
      goto LABEL_5;
    }

    if (v24 == *(v0 + 2920))
    {
      goto LABEL_119;
    }

    if (v24 == *(v0 + 2924))
    {
      v476 = *(v0 + 2988);
      v530 = *(v0 + 2980);
      v276 = *(v0 + 2256);
      v277 = *(v0 + 2248);
      v278 = *(v0 + 2056);
      v279 = *(v0 + 1904);
      v280 = *(v0 + 1872);
      v469 = *(v0 + 2048);
      v281 = *(v0 + 1864);
      v484 = *(v0 + 1384);
      v492 = *(v0 + 1352);
      v499 = *(v0 + 2160);
      v513 = *(v0 + 1376);
      v523 = *(v0 + 1344);
      v282 = *(v0 + 1336);
      v283 = swift_allocObject();
      *(v283 + 16) = xmmword_100940080;
      *(v283 + 56) = &type metadata for String;
      *(v283 + 32) = 0xD000000000000017;
      *(v283 + 40) = 0x80000001008FDC40;
      print(_:separator:terminator:)();

      Date.init()();
      v284 = *(v276 + 56);
      v284(v279, 0, 1, v277);
      v284(v280, 1, 1, v277);
      v284(v281, 1, 1, v277);
      v285 = *(v278 + 104);
      v285(v282, v476, v469);
      (*(v278 + 56))(v282, 0, 1, v469);
      VisitAssetMetadata.init(placeName:city:typeOfPlace:visitStartTime:visitEndTime:createdDate:latitude:longitude:styleData:mapItemData:isWork:confidenceLevel:horizontalAccuracy:assetSource:)();
      v285(v499, v530, v469);
      (*(v492 + 16))(v513, v484, v523);
      v246 = sub_10033CC64(v499, v513);
      (*(v492 + 8))(v484, v523);
      goto LABEL_126;
    }

    if (v24 != *(v0 + 2928))
    {
      if (v24 == *(v0 + 2932))
      {
        v198 = swift_task_alloc();
        *(v0 + 2760) = v198;
        *(v198 + 16) = 1;
        v327 = swift_task_alloc();
        *(v0 + 2768) = v327;
        v328 = sub_1000F24EC(&qword_100AEABF0, &qword_10095F7D0);
        *v327 = v0;
        v327[1] = sub_1005DB91C;
        v171 = *(v0 + 880);
        v170 = *(v0 + 872);
        v176 = v328;
        v174 = sub_1005ED67C;
        v169 = v0 + 712;
        goto LABEL_98;
      }

      if (v24 == *(v0 + 2936))
      {
        v198 = swift_task_alloc();
        *(v0 + 2776) = v198;
        *(v198 + 16) = 1;
        v343 = swift_task_alloc();
        *(v0 + 2784) = v343;
        v344 = sub_1000F24EC(&qword_100AEABF0, &qword_10095F7D0);
        *v343 = v0;
        v343[1] = sub_1005DC438;
        v171 = *(v0 + 880);
        v170 = *(v0 + 872);
        v176 = v344;
        v174 = sub_1005ED67C;
        v169 = v0 + 720;
        goto LABEL_98;
      }

      if (v24 == *(v0 + 2940))
      {
        v345 = sub_1005ED3EC(v24, -90.0, 90.0);
        v347 = v346;
        sub_1005ED3EC(v345, -180.0, 180.0);
        v349 = v348;
        *v373 = _swiftEmptyArrayStorage;
        v169 = sub_1006A699C();
        if (v169 + 5000 < 1)
        {
          __break(1u);
LABEL_159:
          __break(1u);
          return withCheckedContinuation<A>(isolation:function:_:)(v169, v170, v171, v172, v173, v174, v175, v176);
        }

        v350 = v169 + 4999;
        v351 = 1;
        while (1)
        {
          v352 = sub_1005ED3EC(v169, -0.01, 0.01);
          v347 = v347 + v353;
          sub_1005ED3EC(v352, -0.01, 0.01);
          v349 = v349 + v354;
          [objc_allocWithZone(CLLocation) initWithLatitude:v347 longitude:v349];
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((*v373 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v373 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          v169 = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          if (!v350)
          {
            break;
          }

          --v350;
          if (__OFADD__(v351++, 1))
          {
            __break(1u);
            goto LABEL_157;
          }
        }

        v382 = *(v0 + 2940);
        v356 = *(v0 + 2304);
        v376 = *(v0 + 2280);
        v357 = *(v0 + 2256);
        v358 = *(v0 + 2248);
        v379 = *(v0 + 2200);
        v406 = *(v0 + 2192);
        v507 = *(v0 + 2184);
        v478 = *(v0 + 2176);
        v495 = *(v0 + 2160);
        v413 = *(v0 + 2152);
        v533 = *(v0 + 2056);
        v517 = *(v0 + 2080);
        v526 = *(v0 + 2048);
        v419 = *(v0 + 1904);
        v426 = *(v0 + 1872);
        v359 = *(v0 + 1792);
        v471 = *(v0 + 1784);
        v487 = *(v0 + 1744);
        v387 = *(v0 + 1736);
        v500 = *(v0 + 1728);
        v392 = *(v0 + 1720);
        v441 = *(v0 + 1176);
        v449 = *(v0 + 1168);
        v455 = *(v0 + 1152);
        v458 = *(v0 + 1160);
        (*(v533 + 104))();
        Date.init()();
        Date.addingTimeInterval(_:)();
        v369 = *(v357 + 8);
        v369(v356, v358);
        v372 = *(v357 + 56);
        v372(v359, 0, 1, v358);
        Date.init()();
        Date.addingTimeInterval(_:)();
        v369(v356, v358);
        sub_1006A699C();
        Date.addingTimeInterval(_:)();
        v369(v376, v358);
        v372(v471, 0, 1, v358);
        sub_1006A699C();
        sub_1006A699C();
        (*(v507 + 104))(v379, v382, v478);
        v383 = *(v533 + 16);
        v383(v495, v517, v526);
        UUID.init()();
        *(objc_allocWithZone(type metadata accessor for WorkoutRouteAsset(0)) + OBJC_IVAR____TtC7Journal17WorkoutRouteAsset_metadata) = 0;
        (*(v500 + 16))(v387, v487, v392);
        v22(v406, v379, v478);
        v383(v413, v495, v526);
        v360 = sub_100285908(v387, v406, v413);
        (*(v500 + 8))(v487, v392);
        v501 = *(v533 + 8);
        v501(v495, v526);
        (*(v507 + 8))(v379, v478);
        sub_1000082B4(v359, v419, &unk_100AD4790, &unk_10093B4E0);
        sub_1000082B4(v471, v426, &unk_100AD4790, &unk_10093B4E0);
        v246 = v360;
        WorkoutRouteAssetMetadata.init(route:type:duration:startTime:endTime:mindfulnessHeartRate:caloriesBurnt:calories:distance:)();
        sub_100004F84(v471, &unk_100AD4790, &unk_10093B4E0);
        sub_100004F84(v359, &unk_100AD4790, &unk_10093B4E0);
        v501(v517, v526);
        (*(v449 + 32))(v455, v441, v458);
        swift_storeEnumTagMultiPayload();
        sub_1000F24EC(&qword_100AE0E20, &unk_100962DF0);
        v361 = swift_allocObject();
        v362 = *(*v361 + 104);
        v363 = sub_1000F24EC(&qword_100AD5B28, &unk_10094FA90);
        (*(*(v363 - 8) + 56))(v361 + v362, 1, 1, v363);
        *(v361 + *(*v361 + 112)) = xmmword_100941EE0;
        sub_100021CEC(v455, v361 + *(*v361 + 120), &qword_100ADA8A0, &unk_100952480);
        *(v246 + OBJC_IVAR____TtC7Journal17WorkoutRouteAsset_metadata) = v361;

        goto LABEL_126;
      }

      if (v24 != *(v0 + 2944))
      {
        if (v24 == *(v0 + 2948))
        {
          v364 = *(v0 + 2160);
          (*(*(v0 + 2056) + 104))(v364, *(v0 + 2980), *(v0 + 2048));
          v246 = sub_10019BB28(v364, 0, 0);
          goto LABEL_126;
        }

        if (v24 == *(v0 + 2952))
        {
          v198 = swift_task_alloc();
          *(v0 + 2792) = v198;
          *(v198 + 16) = 1;
          v365 = swift_task_alloc();
          *(v0 + 2800) = v365;
          v366 = sub_1000F24EC(&qword_100AEABF0, &qword_10095F7D0);
          *v365 = v0;
          v365[1] = sub_1005DCF44;
          v171 = *(v0 + 880);
          v170 = *(v0 + 872);
          v176 = v366;
          v174 = sub_1005ED67C;
          v169 = v0 + 760;
          goto LABEL_98;
        }

        if (v24 != *(v0 + 2956) && v24 != *(v0 + 2960) && v24 != *(v0 + 2964) && v24 != *(v0 + 2968))
        {
          if (v24 == *(v0 + 2972))
          {
            goto LABEL_153;
          }

          if (v24 != *(v0 + 2976))
          {

            return _diagnoseUnexpectedEnumCase<A>(type:)();
          }
        }
      }

LABEL_5:
      (*(*(v0 + 2184) + 8))(*(v0 + 2216), *(v0 + 2176));
      goto LABEL_6;
    }

    v124 = *(v0 + 1944);
    v125 = *(v0 + 1936);
    v126 = *(v0 + 1600);
    v127 = *(v0 + 1592);
    v128 = [objc_allocWithZone(LPLinkMetadata) init];
    *(v0 + 2712) = v128;
    URL.init(string:)();
    sub_1000082B4(v124, v125, &unk_100AD6DD0, &qword_1009437C0);
    v129 = *(v126 + 48);
    if (v129(v125, 1, v127) == 1)
    {
      v131 = 0;
    }

    else
    {
      v163 = *(v0 + 1936);
      v164 = *(v0 + 1600);
      v165 = *(v0 + 1592);
      URL._bridgeToObjectiveC()(v130);
      v131 = v166;
      (*(v164 + 8))(v163, v165);
    }

    v167 = *(v0 + 1928);
    v168 = *(v0 + 1592);
    [v128 setURL:v131];

    URL.init(string:)();
    v169 = (v129)(v167, 1, v168);
    if (v169 == 1)
    {
      goto LABEL_159;
    }

    v178 = *(v0 + 1928);
    v179 = *(v0 + 1600);
    v180 = *(v0 + 1592);
    URL._bridgeToObjectiveC()(v177);
    v182 = v181;
    v183 = *(v179 + 8);
    *(v0 + 2720) = v183;
    *(v0 + 2728) = (v179 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v183(v178, v180);
    [v128 setOriginalURL:v182];

    *(v0 + 656) = 0x20656C707041;
    *(v0 + 664) = 0xE600000000000000;
    *(v0 + 696) = 0;
    swift_stdlib_random();
    v184 = *(v0 + 696);
    v497 = v129;
    if (((100 * v184) & 0xFFFFFFFFFFFFFFF0) != 0)
    {
      v185 = (v184 * 0x64uLL) >> 64;
    }

    else
    {
      v186 = (v0 + 688);
      do
      {
        *v186 = 0;
        swift_stdlib_random();
        v186 = (v0 + 688);
      }

      while (((100 * *v459) & 0xFFFFFFFFFFFFFFF0) == 0);
      v185 = (*v459 * 0x64uLL) >> 64;
    }

    v187 = *(v0 + 1944);
    v188 = *(v0 + 1920);
    v189 = *(v0 + 1592);
    *(v0 + 864) = v185;
    v190._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v190);

    v191 = String._bridgeToObjectiveC()();

    [v128 setTitle:v191];

    sub_1000082B4(v187, v188, &unk_100AD6DD0, &qword_1009437C0);
    if (v497(v188, 1, v189) != 1)
    {
      v329 = *(v0 + 2980);
      v330 = *(v0 + 2104);
      v331 = *(v0 + 2056);
      v332 = *(v0 + 2048);
      v333 = *(v0 + 1616);
      v334 = *(v0 + 1608);
      v335 = *(v0 + 1600);
      v336 = *(v0 + 1592);
      (*(v335 + 32))(v333, *(v0 + 1920), v336);
      (*(v331 + 104))(v330, v329, v332);
      (*(v335 + 16))(v334, v333, v336);
      Date.init()();
      v337 = swift_task_alloc();
      *(v0 + 2736) = v337;
      *v337 = v0;
      v337[1] = sub_1005D69DC;
      v338 = *(v0 + 2288);
      v339 = *(v0 + 2104);
      v340 = *(v0 + 1608);
      v341 = *(v0 + 880);
      v342 = *(v0 + 872);

      return sub_1001DEA08(v342, v341, v339, v340, 0, 0, v338);
    }

    v192 = *(v0 + 2216);
    v193 = *(v0 + 2184);
    v194 = *(v0 + 2176);
    v195 = *(v0 + 1944);
    v196 = *(v0 + 1920);

    sub_100004F84(v195, &unk_100AD6DD0, &qword_1009437C0);
    (*(v193 + 8))(v192, v194);
    sub_100004F84(v196, &unk_100AD6DD0, &qword_1009437C0);
LABEL_6:
    v5 = *(v0 + 2608) + 1;
    if (v5 == *(v0 + 912))
    {
      v4 = *(v0 + 2576);
      goto LABEL_102;
    }
  }

  v61 = *(v0 + 1744);
  v62 = *(v0 + 1728);
  v63 = *(v0 + 1720);
  v64 = swift_allocObject();
  *(v64 + 16) = xmmword_100940080;
  *(v64 + 56) = &type metadata for String;
  *(v64 + 32) = 0xD000000000000012;
  *(v64 + 40) = 0x80000001008FDC00;
  print(_:separator:terminator:)();

  UUID.init()();
  v65 = UUID.uuidString.getter();
  v67 = v66;
  v68 = *(v62 + 8);
  *(v0 + 2648) = v68;
  *(v0 + 2656) = (v62 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v68(v61, v63);
  if (qword_100AD0060 != -1)
  {
    swift_once();
  }

  v69 = *(v0 + 1672);
  v70 = *(v0 + 1600);
  v71 = *(v0 + 1592);
  v72 = type metadata accessor for FileStoreConfiguration();
  sub_10000617C(v72, qword_100B2FC48);
  FileStoreConfiguration.temporaryDirectoryURL.getter();
  *(v0 + 640) = v65;
  *(v0 + 648) = v67;
  v73._countAndFlagsBits = 1717658414;
  v73._object = 0xE400000000000000;
  String.append(_:)(v73);
  URL.appendingPathComponent(_:)();

  v74 = *(v70 + 8);
  *(v0 + 2664) = v74;
  *(v0 + 2672) = (v70 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v74(v69, v71);
  v75 = sub_1001C075C(5, &off_100A57518);
  v77 = v76;
  *(v0 + 2680) = v76;
  v78 = objc_opt_self();
  v79 = [v78 defaultManager];
  URL.absoluteString.getter();
  v80 = String._bridgeToObjectiveC()();

  v81 = [v79 fileExistsAtPath:v80];

  if (!v81)
  {
    goto LABEL_112;
  }

  v82 = [v78 defaultManager];
  URL._bridgeToObjectiveC()(v83);
  v85 = v84;
  *(v0 + 744) = 0;
  v86 = [v82 removeItemAtURL:v84 error:v0 + 744];

  v87 = *(v0 + 744);
  if (!v86)
  {
    v88 = v87;

    v89 = _convertNSErrorToError(_:)();

    swift_willThrow();
    v90 = *(v0 + 2664);
    v496 = *(v0 + 2216);
    v91 = *(v0 + 2184);
    v92 = *(v0 + 2176);
    v93 = *(v0 + 1640);
    v94 = *(v0 + 1592);
    v95 = swift_allocObject();
    *(v95 + 16) = xmmword_100940080;
    *(v0 + 592) = 0;
    *(v0 + 600) = 0xE000000000000000;
    _StringGuts.grow(_:)(28);
    v96 = *(v0 + 600);
    *(v0 + 608) = *(v0 + 592);
    *(v0 + 616) = v96;
    v97._object = 0x80000001008FDC20;
    v97._countAndFlagsBits = 0x100000000000001ALL;
    String.append(_:)(v97);
    *(v0 + 728) = v89;
    sub_1000F24EC(&qword_100AD5BC0, &qword_100943550);
    _print_unlocked<A, B>(_:_:)();
    v98 = *(v0 + 608);
    v99 = *(v0 + 616);
    *(v95 + 56) = &type metadata for String;
    *(v95 + 32) = v98;
    *(v95 + 40) = v99;
    print(_:separator:terminator:)();

    v90(v93, v94);
    (*(v91 + 8))(v496, v92);
    goto LABEL_71;
  }

  v234 = v87;
LABEL_112:
  v235 = swift_task_alloc();
  *(v0 + 2688) = v235;
  *v235 = v0;
  v235[1] = sub_1005D08E4;
  v236 = *(v0 + 1640);
  v237 = *(v0 + 880);
  v238 = *(v0 + 872);

  return sub_10016A7C4(v238, v237, v75, v77, v236);
}

uint64_t sub_1005CAA34()
{
  v1 = *v0;

  v2 = *(v1 + 2400);
  v3 = *(v1 + 2392);

  return _swift_task_switch(sub_1005CABA4, v3, v2);
}

uint64_t sub_1005CABA4()
{
  v684 = v0;
  v1 = v0;
  v479 = *(v0 + 848);
  v2 = *(v479 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = 0;
    v5 = v479 + 48;
    v478 = v2 - 1;
    while (1)
    {
      v619 = v3;
      v627 = v4;
      v593 = *(v1 + 2616);
      v32 = *(v1 + 2996);
      v601 = *(v1 + 2888);
      v33 = *(v1 + 2256);
      v490 = *(v682 + 2248);
      v643 = *(v682 + 2200);
      v519 = *(v682 + 2192);
      v34 = *(v682 + 2184);
      v512 = v34;
      v632 = *(v682 + 2176);
      v35 = *(v682 + 2168);
      v36 = *(v682 + 2160);
      v528 = *(v682 + 2152);
      v37 = *(v682 + 2056);
      v38 = *(v682 + 2048);
      v39 = *(v682 + 2040);
      v552 = v39;
      v583 = *(v682 + 2032);
      v483 = *(v682 + 1912);
      v650 = *(v682 + 1744);
      v506 = *(v682 + 1736);
      v660 = *(v682 + 1720);
      v671 = *(v682 + 1728);
      log = *(v682 + 1712);
      v40 = *(v682 + 1600);
      v41 = *(v682 + 1592);
      v562 = v41;
      v573 = v40;
      v499 = *(v5 - 16);
      v481 = v5;
      (*(v37 + 104))(v35, v32, v38);
      (*(v40 + 56))(v39, 1, 1, v41);
      (*(v33 + 56))(v483, 1, 1, v490);
      (*(v34 + 104))(v643, v601, v632);
      v491 = *(v37 + 16);
      v491(v36, v35, v38);
      v42 = v499;
      swift_bridgeObjectRetain_n();
      v500 = v42;
      UUID.init()();
      v43 = objc_allocWithZone(type metadata accessor for PhotoAsset(0));
      *&v43[OBJC_IVAR____TtC7Journal10PhotoAsset_metadata] = 0;
      v480 = *(v671 + 16);
      v480(v506, v650, v660);
      v593(v519, v643, v632);
      v491(v528, v36, v38);
      v44 = sub_100285908(v506, v519, v528);
      v45 = *(v671 + 8);
      v45(v650, v660);
      v594 = *(v37 + 8);
      v594(v36, v38);
      (*(v512 + 8))(v643, v632);
      sub_1000F24EC(&unk_100AD4780, &unk_100941070);
      v46 = swift_allocObject();
      *(v46 + 16) = xmmword_100941D50;
      log->isa = v500;
      swift_storeEnumTagMultiPayload();
      v24 = &unk_100AD6DD0;
      v644 = v500;
      UUID.init()();
      v47 = v650;
      v48 = UUID.uuidString.getter();
      v50 = v49;
      v651 = v45;
      v45(v47, v660);
      type metadata accessor for AssetAttachment(0);
      v51 = swift_allocObject();
      *(v51 + 16) = 0;
      sub_1005ED56C(log, v51 + OBJC_IVAR____TtC7Journal15AssetAttachment_assetType, type metadata accessor for AssetAttachment.AssetType);
      v52 = (v51 + OBJC_IVAR____TtC7Journal15AssetAttachment_fileNameID);
      *v52 = v48;
      v52[1] = v50;
      *(v46 + 32) = v51;
      v53 = OBJC_IVAR____TtC7Journal5Asset_sourceAttachments;
      swift_beginAccess();
      v661 = v44;
      *&v44[v53] = v46;

      sub_1000082B4(v552, v583, &unk_100AD6DD0, &qword_1009437C0);
      if ((*(v573 + 48))(v583, 1, v562) == 1)
      {
        v19 = v682;
        sub_100004F84(*(v682 + 2032), &unk_100AD6DD0, &qword_1009437C0);
      }

      else
      {
        v54 = *(*(v682 + 1600) + 32);
        v54(*(v682 + 1696), *(v682 + 2032), *(v682 + 1592));
        v55 = [objc_opt_self() defaultManager];
        URL.path.getter();
        v56 = String._bridgeToObjectiveC()();

        v57 = [v55 fileExistsAtPath:v56];

        if (v57)
        {
          v58 = *(v682 + 1744);
          v584 = *(v682 + 1720);
          v59 = *(v682 + 1712);
          v60 = *(v682 + 1696);
          v61 = *(v682 + 1600);
          v62 = *(v682 + 1592);
          v63 = swift_allocObject();
          *(v63 + 16) = xmmword_100941D50;
          (*(v61 + 16))(v59, v60, v62);
          type metadata accessor for AssetAttachment.AssetType.FilePathType(0);
          swift_storeEnumTagMultiPayload();
          swift_storeEnumTagMultiPayload();
          UUID.init()();
          v64 = UUID.uuidString.getter();
          v66 = v65;
          v651(v58, v584);
          v67 = swift_allocObject();
          *(v67 + 16) = 0;
          v19 = v682;
          sub_1005ED56C(v59, v67 + OBJC_IVAR____TtC7Journal15AssetAttachment_assetType, type metadata accessor for AssetAttachment.AssetType);
          v68 = (v67 + OBJC_IVAR____TtC7Journal15AssetAttachment_fileNameID);
          *v68 = v64;
          v68[1] = v66;
          *(v63 + 32) = v67;
          (*(v61 + 8))(v60, v62);
          v44 = v661;
          *&v661[v53] = v63;
        }

        else
        {
          v633 = v54;
          if (qword_100ACFE08 != -1)
          {
            swift_once();
          }

          v69 = *(v682 + 1696);
          v70 = *(v682 + 1688);
          v71 = *(v682 + 1680);
          v72 = *(v682 + 1672);
          v73 = *(v682 + 1600);
          v74 = *(v682 + 1592);
          v75 = type metadata accessor for Logger();
          sub_10000617C(v75, qword_100AE55E0);
          v76 = *(v73 + 16);
          v76(v70, v69, v74);
          v76(v71, v70, v74);
          v77 = v72;
          v633(v72, v70, v74);
          v78 = v44;
          v79 = Logger.logObject.getter();
          v80 = static os_log_type_t.error.getter();

          v81 = *(v73 + 8);
          v81(v77, v74);
          if (os_log_type_enabled(v79, v80))
          {
            v585 = v80;
            v82 = *(v682 + 1744);
            v83 = *(v682 + 1720);
            v634 = *(v682 + 1696);
            v542 = *(v682 + 1680);
            v553 = *(v682 + 1592);
            v84 = swift_slowAlloc();
            v563 = swift_slowAlloc();
            v683[0] = swift_slowAlloc();
            *v84 = 138412802;
            *(v84 + 4) = v78;
            *v563 = v78;
            *(v84 + 12) = 2080;
            v480(v82, &v78[OBJC_IVAR____TtC7Journal5Asset_id], v83);
            sub_10004B9D8(&qword_100AE19B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
            loga = v79;
            v85 = v78;
            v86 = dispatch thunk of CustomStringConvertible.description.getter();
            v88 = v87;
            v651(v82, v83);
            v89 = sub_100008458(v86, v88, v683);

            *(v84 + 14) = v89;
            *(v84 + 22) = 2080;
            sub_10004B9D8(&qword_100ADEFD0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
            v90 = dispatch thunk of CustomStringConvertible.description.getter();
            v92 = v91;
            v81(v542, v553);
            v93 = sub_100008458(v90, v92, v683);

            *(v84 + 24) = v93;
            _os_log_impl(&_mh_execute_header, loga, v585, "%@[%s] failed init imageFile does not exist: %s", v84, 0x20u);
            sub_100004F84(v563, &unk_100AD4BB0, &unk_100941E50);

            swift_arrayDestroy();

            v44 = v661;

            v81(v634, v553);
            v19 = v682;
          }

          else
          {
            v19 = v682;
            v94 = *(v682 + 1696);
            v95 = *(v682 + 1680);
            v96 = *(v682 + 1592);

            v81(v95, v96);
            v81(v94, v96);
          }
        }

        v24 = &unk_100AD6DD0;
      }

      v97 = *&v44[v53];
      if (v97 >> 62)
      {
        if (!_CocoaArrayWrapper.endIndex.getter())
        {
          goto LABEL_18;
        }
      }

      else if (!*((v97 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_18:
        v29 = *(v19 + 271);
        v98 = *(v19 + 256);
        v99 = *(v19 + 255);
        v100 = *(v19 + 239);

        v1 = v19;
        swift_bridgeObjectRelease_n();

        sub_100004F84(v100, &unk_100AD4790, &unk_10093B4E0);
        sub_100004F84(v99, &unk_100AD6DD0, &qword_1009437C0);
        v594(v29, v98);
        v31 = v627;
        if (v478 == v627)
        {
          break;
        }

        v3 = 0;
        goto LABEL_5;
      }

      v6 = v19[17];
      v7 = v19[18];
      v8 = v19[19];
      v9 = v19[20];
      v631 = *(v19 + 271);
      v582 = *(v19 + 256);
      v561 = *(v19 + 255);
      v10 = *(v19 + 239);
      v551 = *(v19 + 198);
      v11 = *(v19 + 197);
      v649 = *(v19 + 196);
      v572 = *(v19 + 195);
      sub_1000082B4(v10, *(v19 + 238), &unk_100AD4790, &unk_10093B4E0);
      v670 = v44;
      v686.origin.x = v6;
      v686.origin.y = v7;
      v686.size.width = v8;
      v686.size.height = v9;
      v12 = NSStringFromCGRect(v686);
      v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v15 = v14;

      v687.origin.x = v6;
      v687.origin.y = v7;
      v687.size.width = v8;
      v687.size.height = v9;
      v16 = NSStringFromCGRect(v687);
      v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v19 = v18;

      v688.origin.x = v6;
      v688.origin.y = v7;
      v688.size.width = v8;
      v688.size.height = v9;
      v20 = NSStringFromCGRect(v688);
      v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v23 = v22;

      v24 = &unk_100AD6DD0;
      v469 = 0;
      v470 = 0;
      v477 = v23;
      v1 = v682;
      v475 = v19;
      v476 = v21;
      v473 = v15;
      v474 = v17;
      v472 = v13;
      LOBYTE(v471) = 1;
      LOBYTE(v468) = 1;
      PhotoLibraryAssetMetadata.init(assetIdentifier:date:placeName:latitude:longitude:size:squareCropRect:landscapeCropRect:portraitCropRect:)();

      v25 = v10;
      v3 = v670;
      sub_100004F84(v25, &unk_100AD4790, &unk_10093B4E0);
      sub_100004F84(v561, &unk_100AD6DD0, &qword_1009437C0);
      v594(v631, v582);
      (*(v11 + 32))(v572, v551, v649);
      swift_storeEnumTagMultiPayload();
      sub_1000F24EC(&unk_100AEE0B0, &unk_100943F60);
      v26 = swift_allocObject();
      v27 = *(*v26 + 104);
      v28 = sub_1000F24EC(&qword_100AD5B20, qword_1009521A0);
      (*(*(v28 - 8) + 56))(v26 + v27, 1, 1, v28);
      *(v26 + *(*v26 + 112)) = xmmword_100941EE0;
      sub_100021CEC(v572, v26 + *(*v26 + 120), &unk_100AEE0A0, &unk_100943F50);
      v29 = *&v670[OBJC_IVAR____TtC7Journal10PhotoAsset_metadata];
      *&v670[OBJC_IVAR____TtC7Journal10PhotoAsset_metadata] = v26;

      v31 = v627;
      if (v478 == v627)
      {

        v101 = *(v682 + 2600);
        goto LABEL_25;
      }

LABEL_5:
      v4 = v31 + 1;
      v5 = v481 + 24;
      if (v4 >= *(v479 + 16))
      {
        __break(1u);
LABEL_131:
        v595 = v19;
        v508 = *(v1 + 3000);
        v520 = *(v1 + 2900);
        v320 = *(v1 + 2256);
        v502 = *(v1 + 2248);
        v513 = *(v1 + 2200);
        v554 = *(v1 + 2192);
        v321 = *(v1 + 2184);
        v602 = *(v1 + 2176);
        v654 = *(v1 + 2160);
        v564 = *(v1 + 2152);
        v496 = *(v1 + 2144);
        v664 = *(v1 + 2056);
        v620 = *(v1 + 2048);
        v544 = *(v1 + 2016);
        v484 = *(v1 + 1896);
        v611 = *(v1 + 1744);
        logb = *(v1 + 1736);
        v674 = *(v1 + 1728);
        v635 = *(v1 + 1720);
        v575 = *(v1 + 1712);
        v322 = *(v682 + 1600);
        v323 = *(v682 + 1592);
        v492 = *(v682 + 1544);
        v324 = *(v682 + 1528);
        v487 = *(v682 + 1520);
        (*(v664 + 104))(v30);

        (*(v322 + 56))(v544, 1, 1, v323);
        v1 = v682;
        v545 = v29;
        Date.init()();
        (*(v320 + 56))(v484, 0, 1, v502);
        (*(v324 + 104))(v492, v508, v487);
        (*(v321 + 104))(v513, v520, v602);
        v521 = *(v664 + 16);
        v521(v654, v496, v620);
        UUID.init()();
        *(objc_allocWithZone(type metadata accessor for MusicAsset(0)) + OBJC_IVAR____TtC7Journal10MusicAsset_metadata) = 0;
        (*(v674 + 16))(logb, v611, v635);
        (v3)(v554, v513, v602);
        v325 = v654;
        v521(v564, v654, v620);
        v326 = sub_100285908(logb, v554, v564);
        v327 = *(v674 + 8);
        v327(v611, v635);
        v653 = *(v664 + 8);
        (v653)(v325, v620);
        v328 = v326;
        (*(v321 + 8))(v513, v602);
        *v575 = v545;
        swift_storeEnumTagMultiPayload();
        v619 = v545;
        UUID.init()();
        v329 = UUID.uuidString.getter();
        v331 = v330;
        v327(v611, v635);
        type metadata accessor for AssetAttachment(0);
        v332 = swift_allocObject();
        *(v332 + 16) = 0;
        sub_1005ED56C(v575, v332 + OBJC_IVAR____TtC7Journal15AssetAttachment_assetType, type metadata accessor for AssetAttachment.AssetType);
        v333 = (v332 + OBJC_IVAR____TtC7Journal15AssetAttachment_fileNameID);
        *v333 = v329;
        v333[1] = v331;
        v334 = OBJC_IVAR____TtC7Journal5Asset_sourceAttachments;
        swift_beginAccess();
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        v673 = v328;
        if (*((*&v328[v334] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v328[v334] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
LABEL_170:
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        v576 = *(v1 + 2048);
        v587 = *(v1 + 2144);
        v335 = *(v1 + 2016);
        v336 = *(v1 + 2008);
        v503 = *(v1 + 1904);
        v337 = *(v1 + 1896);
        v603 = *(v1 + 1664);
        logc = *(v1 + 1600);
        v565 = *(v1 + 1592);
        v514 = *(v1 + 1544);
        v338 = *(v1 + 1528);
        v509 = *(v1 + 1520);
        v522 = *(v1 + 1512);
        v555 = *(v1 + 1504);
        v612 = *(v1 + 1496);
        v339 = *(v1 + 1488);
        v546 = *(v1 + 1480);
        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        swift_endAccess();
        sub_1000082B4(v335, v336, &unk_100AD6DD0, &qword_1009437C0);
        sub_1000082B4(v337, v503, &unk_100AD4790, &unk_10093B4E0);
        (*(v338 + 16))(v339, v514, v509);
        (*(v338 + 56))(v339, 0, 1, v509);
        MusicAssetMetadata.init(mediaId:mediaURL:artistName:song:albumName:numberOfTimesPlayed:startTime:mediaType:)();

        v340 = sub_1000340DC(v24, v595);
        (*(v338 + 8))(v514, v509, v340);
        sub_100004F84(v337, &unk_100AD4790, &unk_10093B4E0);
        sub_100004F84(v335, &unk_100AD6DD0, &qword_1009437C0);
        (v653)(v587, v576);
        (logc[1].isa)(v603, v565);
        (*(v555 + 32))(v546, v522, v612);
        swift_storeEnumTagMultiPayload();
        sub_1000F24EC(&qword_100AE0E90, &unk_1009525D0);
        v341 = swift_allocObject();
        v342 = *(*v341 + 104);
        v343 = sub_1000F24EC(&qword_100AD6F70, &unk_100962D80);
        (*(*(v343 - 8) + 56))(v341 + v342, 1, 1, v343);
        *(v341 + *(*v341 + 112)) = xmmword_100941EE0;
        sub_100021CEC(v546, v341 + *(*v341 + 120), &qword_100ADA8E0, &unk_100962D70);
        v3 = v673;
        *&v673[OBJC_IVAR____TtC7Journal10MusicAsset_metadata] = v341;
LABEL_140:

        v101 = 0;
LABEL_25:
        *(v1 + 2832) = v3;
        *(v1 + 2824) = v101;
        v107 = *(v1 + 2608);
        v672 = *(v1 + 3008);
        v662 = *(v1 + 3004);
        v108 = *(v1 + 992);
        v109 = *(v1 + 984);
        v652 = *(v1 + 976);
        v110 = *(v1 + 968);
        v111 = *(v1 + 960);
        v112 = *(v1 + 952);
        v113 = *(v1 + 896);
        *(v1 + 576) = *(v1 + 888);
        *(v1 + 584) = v113;

        v114._countAndFlagsBits = 0x20746573734120;
        v114._object = 0xE700000000000000;
        String.append(_:)(v114);
        *(v1 + 768) = v107;
        v115._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v115);

        v116 = v3;
        v117 = objc_allocWithZone(NSAttributedString);
        v118 = String._bridgeToObjectiveC()();

        v119 = [v117 initWithString:v118];

        v120 = *(v116 + OBJC_IVAR____TtC7Journal5Asset_title);
        *(v116 + OBJC_IVAR____TtC7Journal5Asset_title) = v119;

        *v108 = static AssetPlacement.maxGridCount.getter();
        (*(v109 + 104))(v108, v662, v652);
        (*(v111 + 104))(v110, v672, v112);
        LOBYTE(v118) = JournalFeatureFlags.isEnabled.getter();
        (*(v111 + 8))(v110, v112);
        if (v118)
        {
          *(v1 + 2840) = CFAbsoluteTimeGetCurrent();
          v121 = swift_task_alloc();
          *(v1 + 2848) = v121;
          *v121 = v1;
          v121[1] = sub_1005DEA30;
          v122 = *(v1 + 992);
          v123 = *(v1 + 880);
          v124 = *(v1 + 872);

          return sub_10056B238(v124, v123, v116, v122, 1);
        }

        else
        {
          v307 = swift_task_alloc();
          *(v1 + 2872) = v307;
          *v307 = v1;
          v307[1] = sub_1005DEE38;
          v308 = *(v1 + 992);
          v309 = *(v1 + 880);
          v310 = *(v1 + 872);

          return sub_1001F8424(v310, v309, v116, v308);
        }
      }
    }
  }

  v101 = *(v1 + 2600);
  (*(*(v1 + 2184) + 8))(*(v1 + 2216), *(v1 + 2176));
  v102 = *(v1 + 2608) + 1;
  if (v102 == *(v1 + 912))
  {
LABEL_21:
    v103 = *(v1 + 2568);

    v104 = *(v682 + 8);
    v105 = *(v682 + 2536);

    return v104(v105);
  }

  v501 = (v1 + 688);
  v507 = (v1 + 736);
  v543 = (v1 + 752);
  v586 = (v1 + 784);
  v663 = (v1 + 776);
  v673 = (v1 + 808);
  v610 = (v1 + 816);
  v595 = 0x80000001008FDE30;
  v653 = 1;
  v574 = (v1 + 840);
  while (1)
  {
    *(v1 + 2608) = v102;
    *(v1 + 2600) = v101;
    v125 = *(v1 + 2552);
    *(v1 + 832) = 0;
    swift_stdlib_random();
    v126 = *(v1 + 832);
    v127 = (v126 * v125) >> 64;
    v128 = v126 * v125;
    v129 = *(v1 + 2552);
    if (v125 > v128)
    {
      v130 = -v129 % v129;
      if (v130 > v128)
      {
        do
        {
          v131 = *(v1 + 2552);
          *(v1 + 680) = 0;
          swift_stdlib_random();
          v132 = *(v1 + 680);
        }

        while (v130 > v132 * v131);
        v127 = (v132 * v131) >> 64;
        v129 = *(v1 + 2552);
      }
    }

    if (v127 >= v129)
    {
      __break(1u);
LABEL_142:
      v638 = *(v1 + 2988);
      v568 = *(v1 + 2980);
      v376 = *(v1 + 2256);
      v377 = *(v1 + 2248);
      v558 = *(v1 + 2160);
      v666 = *(v1 + 2048);
      v677 = *(v1 + 2056);
      v378 = *(v1 + 1904);
      v379 = *(v682 + 1864);
      v606 = *(v682 + 1384);
      v646 = *(v682 + 1376);
      v589 = *(v682 + 1368);
      v615 = *(v682 + 1360);
      v622 = *(v1 + 1872);
      v598 = *(v682 + 1352);
      v549 = *(v682 + 1344);
      v380 = *(v682 + 1336);
      v381 = swift_allocObject();
      *(v381 + 16) = xmmword_100940080;
      *(v381 + 56) = &type metadata for String;
      *(v381 + 32) = 0xD000000000000018;
      *(v381 + 40) = 0x80000001008FDC60;
      print(_:separator:terminator:)();

      v683[0] = _swiftEmptyArrayStorage;
      Date.init()();
      v382 = *(v376 + 56);
      v382(v378, 0, 1, v377);
      v382(v622, 1, 1, v377);
      v382(v379, 1, 1, v377);
      v578 = *(v677 + 104);
      v578(v380, v638, v666);
      v628 = *(v677 + 56);
      v628(v380, 0, 1, v666);
      VisitAssetMetadata.init(placeName:city:typeOfPlace:visitStartTime:visitEndTime:createdDate:latitude:longitude:styleData:mapItemData:isWork:confidenceLevel:horizontalAccuracy:assetSource:)();
      Date.init()();
      v382(v378, 0, 1, v377);
      v382(v622, 1, 1, v377);
      v382(v379, 1, 1, v377);
      v578(v380, v638, v666);
      v628(v380, 0, 1, v666);
      VisitAssetMetadata.init(placeName:city:typeOfPlace:visitStartTime:visitEndTime:createdDate:latitude:longitude:styleData:mapItemData:isWork:confidenceLevel:horizontalAccuracy:assetSource:)();
      Date.init()();
      v382(v378, 0, 1, v377);
      v382(v622, 1, 1, v377);
      v382(v379, 1, 1, v377);
      v578(v380, v638, v666);
      v628(v380, 0, 1, v666);
      VisitAssetMetadata.init(placeName:city:typeOfPlace:visitStartTime:visitEndTime:createdDate:latitude:longitude:styleData:mapItemData:isWork:confidenceLevel:horizontalAccuracy:assetSource:)();
      Date.init()();
      v382(v378, 0, 1, v377);
      v382(v622, 1, 1, v377);
      v382(v379, 1, 1, v377);
      v578(v380, v638, v666);
      v628(v380, 0, 1, v666);
      VisitAssetMetadata.init(placeName:city:typeOfPlace:visitStartTime:visitEndTime:createdDate:latitude:longitude:styleData:mapItemData:isWork:confidenceLevel:horizontalAccuracy:assetSource:)();
      sub_1000F24EC(&qword_100AD64A8, &qword_100945170);
      v383 = *(v598 + 72);
      v384 = (*(v598 + 80) + 32) & ~*(v598 + 80);
      v385 = swift_allocObject();
      *(v385 + 16) = xmmword_100941FE0;
      v386 = v385 + v384;
      v387 = *(v598 + 16);
      v387(v386, v606, v549);
      v387(v386 + v383, v646, v549);
      v387(v386 + 2 * v383, v589, v549);
      v387(v386 + 3 * v383, v615, v549);
      v1 = v682;
      sub_1006ADB18(v385);
      v578(v558, v568, v666);
      v3 = sub_10011CEC0(v558, v683[0]);
      v388 = *(v598 + 8);
      v388(v615, v549);
      v388(v589, v549);
      v388(v646, v549);
      v388(v606, v549);
      goto LABEL_25;
    }

    v133 = *(v1 + 2888);
    v134 = *(v1 + 2884);
    v135 = *(v1 + 2216);
    v136 = *(v1 + 2208);
    v137 = *(v1 + 2184);
    v138 = v1;
    v139 = *(v1 + 2176);
    v3 = *(v137 + 16);
    v140 = *(v138 + 904) + ((v134 + 32) & ~v134) + *(v137 + 72) * v127;
    *(v138 + 2616) = v3;
    *(v138 + 2624) = (v137 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    (v3)(v135, v140, v139);
    (v3)(v136, v135, v139);
    v141 = (*(v137 + 88))(v136, v139);
    if (v141 == v133)
    {
      v311 = swift_allocObject();
      *(v311 + 16) = xmmword_100940080;
      *(v311 + 56) = &type metadata for String;
      *(v311 + 32) = 0xD000000000000013;
      *(v311 + 40) = 0x80000001008FDEC0;
      print(_:separator:terminator:)();

      v312 = swift_task_alloc();
      *(v138 + 2632) = v312;
      *(v312 + 16) = 1;
      v313 = swift_task_alloc();
      *(v138 + 2640) = v313;
      v314 = sub_1000F24EC(&qword_100AEABF0, &qword_10095F7D0);
      *v313 = v138;
      v313[1] = sub_1005CAA34;
      v283 = *(v138 + 880);
      v282 = *(v138 + 872);
      v288 = v314;
      v286 = sub_1005ED67C;
      v281 = v138 + 848;
      goto LABEL_124;
    }

    v1 = v138;
    if (v141 == *(v138 + 2892))
    {
      goto LABEL_30;
    }

    if (v141 == *(v138 + 2896))
    {
      v315 = swift_allocObject();
      *(v315 + 16) = xmmword_100940080;
      *(v315 + 56) = &type metadata for String;
      *(v315 + 32) = 0xD000000000000013;
      *(v315 + 40) = 0x80000001008FDBE0;
      print(_:separator:terminator:)();

      v316 = swift_task_alloc();
      *(v138 + 2704) = v316;
      *v316 = v138;
      v316[1] = sub_1005D1548;
      v317 = *(v138 + 1264);
      v318 = *(v138 + 880);
      v319 = *(v138 + 872);

      return sub_1006A580C(v317, v319, v318);
    }

    if (v141 == *(v138 + 2900))
    {
      v142 = swift_allocObject();
      *(v142 + 16) = xmmword_100940080;
      *(v142 + 56) = &type metadata for String;
      *(v142 + 32) = 0xD000000000000012;
      *(v142 + 40) = 0x80000001008FDE10;
      print(_:separator:terminator:)();

      v143 = *(v138 + 112);
      v144 = *(v143 + 16);
      if (v144)
      {
        *v610 = 0;
        swift_stdlib_random();
        v145 = *v610 * v144;
        v146 = (*v610 * v144) >> 64;
        if (v144 > v145)
        {
          v147 = -v144 % v144;
          if (v147 > v145)
          {
            do
            {
              *v574 = 0;
              swift_stdlib_random();
            }

            while (v147 > *v574 * v144);
            v146 = (*v574 * v144) >> 64;
          }

          v1 = v682;
        }

        if (v146 >= *(v143 + 16))
        {
          __break(1u);
LABEL_164:
          __break(1u);
LABEL_165:
          __break(1u);
LABEL_166:
          v312 = swift_task_alloc();
          *(v1 + 2808) = v312;
          *(v312 + 16) = 1;
          v466 = swift_task_alloc();
          *(v1 + 2816) = v466;
          v467 = sub_1000F24EC(&qword_100AEABF0, &qword_10095F7D0);
          *v466 = v1;
          v466[1] = sub_1005DDCB8;
          v283 = *(v1 + 880);
          v282 = *(v1 + 872);
          v288 = v467;
          v286 = sub_1005ED564;
          v281 = v1 + 824;
          goto LABEL_124;
        }

        swift_beginAccess();

        sub_100691A14(v146);
        swift_endAccess();
      }

      v161 = *(v1 + 2024);
      v162 = v1;
      v163 = *(v1 + 1600);
      v164 = v162[199];
      URL.init(string:)();
      if ((*(v163 + 48))(v161, 1, v164) == 1)
      {
        v165 = v162[253];
        (*(v162[273] + 8))(v162[277], v162[272]);

        sub_100004F84(v165, &unk_100AD6DD0, &qword_1009437C0);
        v1 = v162;
      }

      else
      {
        (*(v162[200] + 32))(v162[208], v162[253], v162[199]);
        v166 = Data.init(contentsOf:options:)();
        v1 = v162;
        v619 = v101;
        if (!v101)
        {
          v24 = v166;
          v19 = v167;
          v215 = objc_allocWithZone(UIImage);
          sub_100049ED8(v24, v19);
          isa = Data._bridgeToObjectiveC()().super.isa;
          v29 = [v215 initWithData:isa];

          v30.n128_f64[0] = sub_1000340DC(v24, v19);
          if (v29)
          {
            goto LABEL_131;
          }

          v217 = *(v1 + 2216);
          v218 = *(v1 + 2184);
          v219 = *(v1 + 2176);
          v220 = *(v1 + 1664);
          v221 = *(v1 + 1600);
          v222 = *(v682 + 1592);

          v223.n128_f64[0] = sub_1000340DC(v24, v19);
          v224 = v222;
          v1 = v682;
          (*(v221 + 8))(v220, v224, v223);
          goto LABEL_99;
        }

        v168 = v162[277];
        v169 = v162[273];
        v170 = v162[272];
        v171 = v162[208];
        v172 = v162[200];
        v173 = *(v682 + 1592);

        v174 = v173;
        v1 = v682;
        (*(v172 + 8))(v171, v174);
        (*(v169 + 8))(v168, v170);
        v101 = 0;
      }

      goto LABEL_31;
    }

    if (v141 == *(v138 + 2904))
    {
      v148 = swift_allocObject();
      *(v148 + 16) = xmmword_100940080;
      *(v148 + 56) = &type metadata for String;
      *(v148 + 32) = 0xD000000000000015;
      *(v148 + 40) = 0x80000001008FDD50;
      print(_:separator:terminator:)();

      v149 = *(v138 + 120);
      v150 = *(v149 + 16);
      if (v150)
      {
        *v586 = 0;
        swift_stdlib_random();
        v151 = *v586 * v150;
        v152 = (*v586 * v150) >> 64;
        if (v150 > v151)
        {
          v153 = -v150 % v150;
          v154 = v673;
          if (v153 <= v151)
          {
            v1 = v682;
          }

          else
          {
            do
            {
              *v154 = 0;
              swift_stdlib_random();
              v154 = v673;
            }

            while (v153 > *v673 * v150);
            v152 = (*v673 * v150) >> 64;
            v1 = v682;
          }
        }

        if (v152 >= *(v149 + 16))
        {
          goto LABEL_164;
        }

        swift_beginAccess();

        sub_100691A14(v152);
        swift_endAccess();
      }

      v232 = *(v1 + 2000);
      v233 = *(v1 + 1600);
      v234 = *(v1 + 1592);
      URL.init(string:)();
      if ((*(v233 + 48))(v232, 1, v234) == 1)
      {
        v235 = *(v1 + 2000);
        (*(*(v1 + 2184) + 8))(*(v1 + 2216), *(v1 + 2176));

LABEL_94:

        sub_100004F84(v235, &unk_100AD6DD0, &qword_1009437C0);
        goto LABEL_31;
      }

      (*(*(v1 + 1600) + 32))(*(v1 + 1656), *(v1 + 2000), *(v1 + 1592));
      v236 = Data.init(contentsOf:options:)();
      v619 = v101;
      if (!v101)
      {
        v244 = v236;
        v245 = v237;
        v246 = objc_allocWithZone(UIImage);
        sub_100049ED8(v244, v245);
        v247 = Data._bridgeToObjectiveC()().super.isa;
        v248 = [v246 initWithData:v247];

        v249 = sub_1000340DC(v244, v245);
        if (v248)
        {
          v588 = v245;
          v523 = *(v682 + 2992);
          v515 = *(v682 + 2904);
          v497 = *(v682 + 2256);
          v510 = *(v682 + 2248);
          v604 = *(v682 + 2200);
          v547 = *(v682 + 2192);
          v675 = *(v682 + 2184);
          v596 = *(v682 + 2176);
          v636 = *(v682 + 2160);
          v556 = *(v682 + 2152);
          v504 = *(v682 + 2136);
          v665 = *(v682 + 2056);
          v349 = *(v682 + 1992);
          v350 = *(v682 + 1888);
          v613 = *(v682 + 1744);
          v621 = *(v682 + 2048);
          v529 = *(v682 + 1736);
          v655 = *(v682 + 1728);
          logd = *(v682 + 1720);
          v566 = *(v682 + 1712);
          v485 = *(v682 + 1656);
          v351 = *(v682 + 1600);
          v352 = *(v682 + 1592);
          v493 = *(v682 + 1536);
          v353 = *(v682 + 1528);
          v488 = *(v682 + 1520);
          (*(v665 + 104))(v249);

          (*(v351 + 16))(v349, v485, v352);
          (*(v351 + 56))(v349, 0, 1, v352);
          Date.init()();
          (*(v497 + 56))(v350, 0, 1, v510);
          (*(v353 + 104))(v493, v523, v488);
          (*(v675 + 104))(v604, v515, v596);
          v524 = *(v665 + 16);
          v524(v636, v504, v621);
          UUID.init()();
          *(objc_allocWithZone(type metadata accessor for PodcastAsset(0)) + OBJC_IVAR____TtC7Journal12PodcastAsset_metadata) = 0;
          (*(v655 + 16))(v529, v613, logd);
          (v3)(v547, v604, v596);
          v524(v556, v636, v621);
          v354 = sub_100285908(v529, v547, v556);
          v355 = *(v655 + 8);
          v355(v613, logd);
          v656 = *(v665 + 8);
          v656(v636, v621);
          (*(v675 + 8))(v604, v596);
          *v566 = v248;
          swift_storeEnumTagMultiPayload();
          v356 = v354;
          v637 = v248;
          v357 = v356;
          UUID.init()();
          v358 = UUID.uuidString.getter();
          v360 = v359;
          v355(v613, logd);
          type metadata accessor for AssetAttachment(0);
          v361 = swift_allocObject();
          *(v361 + 16) = 0;
          sub_1005ED56C(v566, v361 + OBJC_IVAR____TtC7Journal15AssetAttachment_assetType, type metadata accessor for AssetAttachment.AssetType);
          v362 = (v361 + OBJC_IVAR____TtC7Journal15AssetAttachment_fileNameID);
          *v362 = v358;
          v362[1] = v360;
          v363 = OBJC_IVAR____TtC7Journal5Asset_sourceAttachments;
          swift_beginAccess();
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          v676 = v357;
          if (*((*&v357[v363] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v357[v363] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          v597 = *(v682 + 2136);
          v577 = *(v682 + 2048);
          v364 = *(v682 + 2008);
          v365 = *(v682 + 1992);
          v516 = *(v682 + 1904);
          v366 = *(v682 + 1888);
          v614 = *(v682 + 1656);
          loge = *(v682 + 1600);
          v567 = *(v682 + 1592);
          v525 = *(v682 + 1536);
          v367 = *(v682 + 1528);
          v368 = *(v682 + 1520);
          v369 = *(v682 + 1488);
          v530 = *(v682 + 1464);
          v548 = *(v682 + 1456);
          v605 = *(v682 + 1448);
          v557 = *(v682 + 1440);
          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          swift_endAccess();
          v370 = v365;
          sub_1000082B4(v365, v364, &unk_100AD6DD0, &qword_1009437C0);
          v371 = v366;
          sub_1000082B4(v366, v516, &unk_100AD4790, &unk_10093B4E0);
          (*(v367 + 16))(v369, v525, v368);
          (*(v367 + 56))(v369, 0, 1, v368);
          v1 = v682;
          PodcastAssetMetadata.init(mediaId:title:author:mediaURL:timePlayed:numberOfTimesPlayed:mediaType:)();

          v372 = sub_1000340DC(v244, v588);
          (*(v367 + 8))(v525, v368, v372);
          sub_100004F84(v371, &unk_100AD4790, &unk_10093B4E0);
          sub_100004F84(v370, &unk_100AD6DD0, &qword_1009437C0);
          v656(v597, v577);
          (loge[1].isa)(v614, v567);
          (*(v548 + 32))(v557, v530, v605);
          swift_storeEnumTagMultiPayload();
          sub_1000F24EC(&qword_100AE0E80, &unk_1009525A0);
          v373 = swift_allocObject();
          v374 = *(*v373 + 104);
          v375 = sub_1000F24EC(&qword_100AD2A70, &qword_100952E00);
          (*(*(v375 - 8) + 56))(v373 + v374, 1, 1, v375);
          *(v373 + *(*v373 + 112)) = xmmword_100941EE0;
          sub_100021CEC(v557, v373 + *(*v373 + 120), &qword_100ADA958, &unk_100960730);
          v3 = v676;
          *&v676[OBJC_IVAR____TtC7Journal12PodcastAsset_metadata] = v373;

          goto LABEL_140;
        }

        v1 = v682;
        v217 = *(v682 + 2216);
        v218 = *(v682 + 2184);
        v219 = *(v682 + 2176);
        v250 = *(v682 + 1656);
        v251 = *(v682 + 1600);
        v252 = *(v682 + 1592);

        v253.n128_f64[0] = sub_1000340DC(v244, v245);
        (*(v251 + 8))(v250, v252, v253);
        goto LABEL_99;
      }

      v238 = *(v1 + 2216);
      v239 = *(v1 + 2184);
      v240 = *(v1 + 2176);
      v241 = *(v1 + 1656);
      v242 = *(v1 + 1600);
      v243 = *(v1 + 1592);

      (*(v242 + 8))(v241, v243);
      (*(v239 + 8))(v238, v240);
      v101 = 0;
      goto LABEL_31;
    }

    if (v141 == *(v138 + 2908))
    {
      v155 = swift_allocObject();
      *(v155 + 16) = xmmword_100940080;
      *(v155 + 56) = &type metadata for String;
      *(v155 + 32) = 0xD000000000000012;
      *(v155 + 40) = 0x80000001008FDCA0;
      print(_:separator:terminator:)();

      v156 = *(v138 + 128);
      v157 = *(v156 + 16);
      if (v157)
      {
        *v543 = 0;
        swift_stdlib_random();
        v158 = *v543 * v157;
        v159 = (*v543 * v157) >> 64;
        if (v157 > v158)
        {
          v1 = -v157 % v157;
          v160 = v663;
          if (v1 > v158)
          {
            do
            {
              *v160 = 0;
              swift_stdlib_random();
              v160 = v663;
            }

            while (v1 > *v663 * v157);
            v159 = (*v663 * v157) >> 64;
          }
        }

        if (v159 >= *(v156 + 16))
        {
          goto LABEL_165;
        }

        v1 = v682;
        swift_beginAccess();

        sub_100691A14(v159);
        swift_endAccess();
      }

      v254 = *(v1 + 1984);
      v255 = *(v1 + 1600);
      v256 = *(v1 + 1592);
      URL.init(string:)();
      if ((*(v255 + 48))(v254, 1, v256) == 1)
      {
        v235 = *(v1 + 1984);
        (*(*(v1 + 2184) + 8))(*(v1 + 2216), *(v1 + 2176));

        goto LABEL_94;
      }

      (*(*(v1 + 1600) + 32))(*(v1 + 1648), *(v1 + 1984), *(v1 + 1592));
      v257 = Data.init(contentsOf:options:)();
      v619 = v101;
      if (!v101)
      {
        v265 = v257;
        v266 = v258;
        v267 = objc_allocWithZone(UIImage);
        sub_100049ED8(v265, v266);
        v268 = Data._bridgeToObjectiveC()().super.isa;
        v269 = [v267 initWithData:v268];

        v270 = sub_1000340DC(v265, v266);
        if (v269)
        {
          v617 = v266;
          v531 = *(v682 + 2908);
          v399 = *(v682 + 2256);
          v517 = *(v682 + 2248);
          v624 = *(v682 + 2200);
          v569 = *(v682 + 2192);
          v400 = *(v682 + 2184);
          v526 = *(v682 + 2176);
          v657 = *(v682 + 2160);
          v579 = *(v682 + 2152);
          v511 = *(v682 + 2128);
          v668 = *(v682 + 2056);
          v401 = *(v682 + 2048);
          v402 = *(v682 + 1880);
          v640 = *(v682 + 1744);
          logf = *(v682 + 1736);
          v679 = *(v682 + 1728);
          v550 = *(v682 + 1720);
          v599 = *(v682 + 1712);
          (*(v668 + 104))(v270);

          v590 = v269;
          Date.init()();
          (*(v399 + 56))(v402, 0, 1, v517);
          (*(v400 + 104))(v624, v531, v526);
          v532 = *(v668 + 16);
          v532(v657, v511, v401);
          UUID.init()();
          *(objc_allocWithZone(type metadata accessor for BookAsset(0)) + OBJC_IVAR____TtC7Journal9BookAsset_metadata) = 0;
          (*(v679 + 16))(logf, v640, v550);
          (v3)(v569, v624, v526);
          v403 = v657;
          v532(v579, v657, v401);
          v404 = sub_100285908(logf, v569, v579);
          v405 = *(v679 + 8);
          v405(v640, v550);
          v658 = *(v668 + 8);
          v658(v403, v401);
          v406 = v404;
          (*(v400 + 8))(v624, v526);
          *v599 = v590;
          swift_storeEnumTagMultiPayload();
          v625 = v590;
          UUID.init()();
          v407 = UUID.uuidString.getter();
          v409 = v408;
          v405(v640, v550);
          type metadata accessor for AssetAttachment(0);
          v410 = swift_allocObject();
          *(v410 + 16) = 0;
          sub_1005ED56C(v599, v410 + OBJC_IVAR____TtC7Journal15AssetAttachment_assetType, type metadata accessor for AssetAttachment.AssetType);
          v411 = (v410 + OBJC_IVAR____TtC7Journal15AssetAttachment_fileNameID);
          *v411 = v407;
          v411[1] = v409;
          v412 = OBJC_IVAR____TtC7Journal5Asset_sourceAttachments;
          swift_beginAccess();
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          v680 = v406;
          if (*((*&v406[v412] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v406[v412] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          v570 = *(v682 + 2128);
          v559 = *(v682 + 2048);
          v413 = *(v682 + 1904);
          v414 = *(v682 + 1880);
          v415 = *(v682 + 1600);
          v580 = *(v682 + 1592);
          v591 = *(v682 + 1648);
          v416 = *(v682 + 1424);
          v417 = *(v682 + 1416);
          v600 = *(v682 + 1400);
          v608 = *(v682 + 1408);
          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          swift_endAccess();
          sub_1000082B4(v414, v413, &unk_100AD4790, &unk_10093B4E0);
          BookAssetMetadata.init(mediaId:title:author:timeOfPurchase:)();

          sub_1000340DC(v265, v617);
          sub_100004F84(v414, &unk_100AD4790, &unk_10093B4E0);
          v658(v570, v559);
          (*(v415 + 8))(v591, v580);
          (*(v417 + 32))(v600, v416, v608);
          swift_storeEnumTagMultiPayload();
          sub_1000F24EC(&qword_100AEABF8, &unk_100962D40);
          v418 = swift_allocObject();
          v419 = *(*v418 + 104);
          v420 = sub_1000F24EC(&qword_100AD4318, &qword_100942B38);
          (*(*(v420 - 8) + 56))(v418 + v419, 1, 1, v420);
          *(v418 + *(*v418 + 112)) = xmmword_100941EE0;
          sub_100021CEC(v600, v418 + *(*v418 + 120), &qword_100ADA8C0, &qword_10094A5B8);
          v3 = v680;
          *&v680[OBJC_IVAR____TtC7Journal9BookAsset_metadata] = v418;

          v101 = 0;
          v1 = v682;
          goto LABEL_25;
        }

        v1 = v682;
        v217 = *(v682 + 2216);
        v218 = *(v682 + 2184);
        v219 = *(v682 + 2176);
        v271 = *(v682 + 1648);
        v272 = *(v682 + 1600);
        v273 = *(v682 + 1592);

        v274.n128_f64[0] = sub_1000340DC(v265, v266);
        (*(v272 + 8))(v271, v273, v274);
LABEL_99:
        (*(v218 + 8))(v217, v219);
LABEL_100:
        v101 = 0;
        goto LABEL_31;
      }

      v259 = *(v1 + 2216);
      v260 = *(v1 + 2184);
      v261 = *(v1 + 2176);
      v262 = *(v1 + 1648);
      v263 = *(v1 + 1600);
      v264 = *(v1 + 1592);

      (*(v263 + 8))(v262, v264);
      (*(v260 + 8))(v259, v261);
      v101 = 0;
      goto LABEL_31;
    }

    if (v141 == *(v138 + 2912))
    {
      break;
    }

    if (v141 == *(v138 + 2916))
    {
      goto LABEL_30;
    }

    if (v141 == *(v138 + 2920))
    {
      goto LABEL_142;
    }

    if (v141 == *(v138 + 2924))
    {
      v616 = *(v138 + 2988);
      v678 = *(v138 + 2980);
      v389 = *(v138 + 2256);
      v390 = *(v138 + 2248);
      v391 = *(v138 + 2056);
      v392 = *(v138 + 1904);
      v393 = *(v138 + 1872);
      v607 = *(v138 + 2048);
      v394 = *(v138 + 1864);
      v639 = *(v1 + 2160);
      v647 = *(v1 + 1376);
      v623 = *(v1 + 1384);
      v629 = *(v1 + 1352);
      v667 = *(v1 + 1344);
      v395 = *(v682 + 1336);
      v396 = swift_allocObject();
      *(v396 + 16) = xmmword_100940080;
      *(v396 + 56) = &type metadata for String;
      *(v396 + 32) = 0xD000000000000017;
      *(v396 + 40) = 0x80000001008FDC40;
      print(_:separator:terminator:)();

      Date.init()();
      v397 = *(v389 + 56);
      v397(v392, 0, 1, v390);
      v397(v393, 1, 1, v390);
      v397(v394, 1, 1, v390);
      v398 = *(v391 + 104);
      v398(v395, v616, v607);
      (*(v391 + 56))(v395, 0, 1, v607);
      v1 = v682;
      VisitAssetMetadata.init(placeName:city:typeOfPlace:visitStartTime:visitEndTime:createdDate:latitude:longitude:styleData:mapItemData:isWork:confidenceLevel:horizontalAccuracy:assetSource:)();
      v398(v639, v678, v607);
      (*(v629 + 16))(v647, v623, v667);
      v3 = sub_10033CC64(v639, v647);
      (*(v629 + 8))(v623, v667);
      goto LABEL_25;
    }

    if (v141 != *(v138 + 2928))
    {
      if (v141 == *(v138 + 2932))
      {
        v312 = swift_task_alloc();
        *(v138 + 2760) = v312;
        *(v312 + 16) = 1;
        v421 = swift_task_alloc();
        *(v138 + 2768) = v421;
        v422 = sub_1000F24EC(&qword_100AEABF0, &qword_10095F7D0);
        *v421 = v138;
        v421[1] = sub_1005DB91C;
        v283 = *(v138 + 880);
        v282 = *(v138 + 872);
        v288 = v422;
        v286 = sub_1005ED67C;
        v281 = v138 + 712;
LABEL_124:
        v285 = 0x80000001008FDB40;
        v284 = 0xD000000000000024;
        v287 = v312;

        return withCheckedContinuation<A>(isolation:function:_:)(v281, v282, v283, v284, v285, v286, v287, v288);
      }

      if (v141 == *(v138 + 2936))
      {
        v312 = swift_task_alloc();
        *(v138 + 2776) = v312;
        *(v312 + 16) = 1;
        v437 = swift_task_alloc();
        *(v138 + 2784) = v437;
        v438 = sub_1000F24EC(&qword_100AEABF0, &qword_10095F7D0);
        *v437 = v138;
        v437[1] = sub_1005DC438;
        v283 = *(v138 + 880);
        v282 = *(v138 + 872);
        v288 = v438;
        v286 = sub_1005ED67C;
        v281 = v138 + 720;
        goto LABEL_124;
      }

      if (v141 == *(v138 + 2940))
      {
        v439 = sub_1005ED3EC(v141, -90.0, 90.0);
        v441 = v440;
        sub_1005ED3EC(v439, -180.0, 180.0);
        v443 = v442;
        *v507 = _swiftEmptyArrayStorage;
        v281 = sub_1006A699C();
        if (v281 + 5000 >= 1)
        {
          v444 = v281 + 4999;
          v1 = 1;
          v24 = &_s7SwiftUI9AnimationV9easeInOutACvgZ_ptr_0;
          while (1)
          {
            v445 = sub_1005ED3EC(v281, -0.01, 0.01);
            v441 = v441 + v446;
            sub_1005ED3EC(v445, -0.01, 0.01);
            v443 = v443 + v447;
            [objc_allocWithZone(CLLocation) initWithLatitude:v441 longitude:v443];
            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            if (*((*v507 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v507 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            v281 = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            if (!v444)
            {
              break;
            }

            --v444;
            if (__OFADD__(v1++, 1))
            {
              __break(1u);
              goto LABEL_170;
            }
          }

          v1 = v682;
          v494 = *(v682 + 2940);
          v454 = *(v682 + 2304);
          v486 = *(v682 + 2280);
          v455 = *(v682 + 2256);
          v456 = *(v682 + 2248);
          v618 = *(v682 + 2200);
          v518 = *(v682 + 2192);
          v648 = *(v682 + 2184);
          v489 = *(v682 + 2176);
          v630 = *(v682 + 2160);
          v527 = *(v682 + 2152);
          v659 = *(v682 + 2080);
          v669 = *(v682 + 2048);
          v681 = *(v682 + 2056);
          v533 = *(v682 + 1904);
          logg = *(v682 + 1872);
          v457 = *(v682 + 1792);
          v609 = *(v682 + 1784);
          v626 = *(v682 + 1744);
          v498 = *(v682 + 1736);
          v641 = *(v682 + 1728);
          v505 = *(v682 + 1720);
          v560 = *(v682 + 1176);
          v571 = *(v682 + 1168);
          v581 = *(v682 + 1152);
          v592 = *(v682 + 1160);
          (*(v681 + 104))(v659, *(v682 + 2980), v669, v448, v449, v450, v451, v452, v468, v469);
          Date.init()();
          Date.addingTimeInterval(_:)();
          v458 = *(v455 + 8);
          v458(v454, v456);
          v482 = *(v455 + 56);
          v482(v457, 0, 1, v456);
          Date.init()();
          Date.addingTimeInterval(_:)();
          v458(v454, v456);
          sub_1006A699C();
          Date.addingTimeInterval(_:)();
          v458(v486, v456);
          v482(v609, 0, 1, v456);
          sub_1006A699C();
          sub_1006A699C();
          (*(v648 + 104))(v618, v494, v489);
          v495 = *(v681 + 16);
          v495(v630, v659, v669);
          UUID.init()();
          *(objc_allocWithZone(type metadata accessor for WorkoutRouteAsset(0)) + OBJC_IVAR____TtC7Journal17WorkoutRouteAsset_metadata) = 0;
          (*(v641 + 16))(v498, v626, v505);
          (v3)(v518, v618, v489);
          v495(v527, v630, v669);
          v459 = sub_100285908(v498, v518, v527);
          (*(v641 + 8))(v626, v505);
          v642 = *(v681 + 8);
          v642(v630, v669);
          (*(v648 + 8))(v618, v489);
          sub_1000082B4(v457, v533, &unk_100AD4790, &unk_10093B4E0);
          sub_1000082B4(v609, logg, &unk_100AD4790, &unk_10093B4E0);
          v3 = v459;
          WorkoutRouteAssetMetadata.init(route:type:duration:startTime:endTime:mindfulnessHeartRate:caloriesBurnt:calories:distance:)();
          sub_100004F84(v609, &unk_100AD4790, &unk_10093B4E0);
          sub_100004F84(v457, &unk_100AD4790, &unk_10093B4E0);
          v642(v659, v669);
          (*(v571 + 32))(v581, v560, v592);
          swift_storeEnumTagMultiPayload();
          sub_1000F24EC(&qword_100AE0E20, &unk_100962DF0);
          v460 = swift_allocObject();
          v461 = *(*v460 + 104);
          v462 = sub_1000F24EC(&qword_100AD5B28, &unk_10094FA90);
          (*(*(v462 - 8) + 56))(v460 + v461, 1, 1, v462);
          *(v460 + *(*v460 + 112)) = xmmword_100941EE0;
          sub_100021CEC(v581, v460 + *(*v460 + 120), &qword_100ADA8A0, &unk_100952480);
          *&v3[OBJC_IVAR____TtC7Journal17WorkoutRouteAsset_metadata] = v460;

          goto LABEL_25;
        }

        __break(1u);
LABEL_172:
        __break(1u);
        return withCheckedContinuation<A>(isolation:function:_:)(v281, v282, v283, v284, v285, v286, v287, v288);
      }

      if (v141 != *(v138 + 2944))
      {
        if (v141 == *(v138 + 2948))
        {
          v463 = *(v138 + 2160);
          (*(*(v138 + 2056) + 104))(v463, *(v138 + 2980), *(v138 + 2048));
          v3 = sub_10019BB28(v463, 0, 0);
          goto LABEL_25;
        }

        if (v141 == *(v138 + 2952))
        {
          v312 = swift_task_alloc();
          *(v138 + 2792) = v312;
          *(v312 + 16) = 1;
          v464 = swift_task_alloc();
          *(v138 + 2800) = v464;
          v465 = sub_1000F24EC(&qword_100AEABF0, &qword_10095F7D0);
          *v464 = v138;
          v464[1] = sub_1005DCF44;
          v283 = *(v138 + 880);
          v282 = *(v138 + 872);
          v288 = v465;
          v286 = sub_1005ED67C;
          v281 = v138 + 760;
          goto LABEL_124;
        }

        if (v141 != *(v138 + 2956) && v141 != *(v138 + 2960) && v141 != *(v138 + 2964) && v141 != *(v138 + 2968))
        {
          if (v141 == *(v138 + 2972))
          {
            goto LABEL_166;
          }

          if (v141 != *(v138 + 2976))
          {

            return _diagnoseUnexpectedEnumCase<A>(type:)();
          }
        }
      }

LABEL_30:
      (*(*(v138 + 2184) + 8))(*(v138 + 2216), *(v138 + 2176));
      goto LABEL_31;
    }

    v225 = *(v138 + 1944);
    v226 = *(v138 + 1936);
    v227 = *(v138 + 1600);
    v228 = *(v138 + 1592);
    v229 = [objc_allocWithZone(LPLinkMetadata) init];
    *(v138 + 2712) = v229;
    URL.init(string:)();
    sub_1000082B4(v225, v226, &unk_100AD6DD0, &qword_1009437C0);
    v645 = *(v227 + 48);
    if (v645(v226, 1, v228) == 1)
    {
      v231 = 0;
    }

    else
    {
      v275 = *(v138 + 1936);
      v276 = *(v138 + 1600);
      v277 = *(v138 + 1592);
      URL._bridgeToObjectiveC()(v230);
      v231 = v278;
      (*(v276 + 8))(v275, v277);
    }

    v279 = *(v138 + 1928);
    v280 = *(v138 + 1592);
    [v229 setURL:{v231, v468, v469, v470, v471, v472, v473, v474, v475, v476, v477}];

    URL.init(string:)();
    v281 = (v645)(v279, 1, v280);
    if (v281 == 1)
    {
      goto LABEL_172;
    }

    v290 = *(v138 + 1928);
    v291 = *(v138 + 1600);
    v292 = *(v138 + 1592);
    URL._bridgeToObjectiveC()(v289);
    v294 = v293;
    v295 = *(v291 + 8);
    *(v138 + 2720) = v295;
    *(v138 + 2728) = (v291 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v295(v290, v292);
    [v229 setOriginalURL:v294];

    *(v138 + 656) = 0x20656C707041;
    *(v138 + 664) = 0xE600000000000000;
    *(v138 + 696) = 0;
    swift_stdlib_random();
    v296 = *(v138 + 696);
    if (((100 * v296) & 0xFFFFFFFFFFFFFFF0) == 0)
    {
      do
      {
        *v501 = 0;
        swift_stdlib_random();
        v296 = *v501;
      }

      while (((100 * *v501) & 0xFFFFFFFFFFFFFFF0) == 0);
    }

    v1 = v682;
    v297 = *(v682 + 1944);
    v298 = *(v682 + 1920);
    v299 = *(v682 + 1592);
    *(v682 + 864) = (v296 * 0x64uLL) >> 64;
    v300._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v300);

    v301 = String._bridgeToObjectiveC()();

    [v229 setTitle:v301];

    sub_1000082B4(v297, v298, &unk_100AD6DD0, &qword_1009437C0);
    if (v645(v298, 1, v299) != 1)
    {
      v423 = *(v682 + 2980);
      v424 = *(v682 + 2104);
      v425 = *(v682 + 2056);
      v426 = *(v682 + 2048);
      v427 = *(v682 + 1616);
      v428 = *(v682 + 1608);
      v429 = *(v682 + 1600);
      v430 = *(v682 + 1592);
      (*(v429 + 32))(v427, *(v682 + 1920), v430);
      (*(v425 + 104))(v424, v423, v426);
      (*(v429 + 16))(v428, v427, v430);
      Date.init()();
      v431 = swift_task_alloc();
      *(v682 + 2736) = v431;
      *v431 = v682;
      v431[1] = sub_1005D69DC;
      v432 = *(v682 + 2288);
      v433 = *(v682 + 2104);
      v434 = *(v682 + 1608);
      v435 = *(v682 + 880);
      v436 = *(v682 + 872);

      return sub_1001DEA08(v436, v435, v433, v434, 0, 0, v432);
    }

    v302 = *(v682 + 2216);
    v303 = *(v682 + 2184);
    v304 = *(v682 + 2176);
    v305 = *(v682 + 1944);
    v306 = *(v682 + 1920);

    sub_100004F84(v305, &unk_100AD6DD0, &qword_1009437C0);
    (*(v303 + 8))(v302, v304);
    sub_100004F84(v306, &unk_100AD6DD0, &qword_1009437C0);
LABEL_31:
    v102 = *(v1 + 2608) + 1;
    if (v102 == *(v1 + 912))
    {
      goto LABEL_21;
    }
  }

  v175 = *(v138 + 1744);
  v176 = *(v138 + 1728);
  v177 = *(v138 + 1720);
  v178 = swift_allocObject();
  *(v178 + 16) = xmmword_100940080;
  *(v178 + 56) = &type metadata for String;
  *(v178 + 32) = 0xD000000000000012;
  *(v178 + 40) = 0x80000001008FDC00;
  print(_:separator:terminator:)();

  UUID.init()();
  v179 = UUID.uuidString.getter();
  v181 = v180;
  v182 = *(v176 + 8);
  *(v138 + 2648) = v182;
  *(v138 + 2656) = (v176 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v182(v175, v177);
  if (qword_100AD0060 != -1)
  {
    swift_once();
  }

  v183 = *(v138 + 1672);
  v184 = *(v138 + 1600);
  v185 = *(v1 + 1592);
  v186 = type metadata accessor for FileStoreConfiguration();
  sub_10000617C(v186, qword_100B2FC48);
  FileStoreConfiguration.temporaryDirectoryURL.getter();
  *(v1 + 640) = v179;
  *(v1 + 648) = v181;
  v187._countAndFlagsBits = 1717658414;
  v187._object = 0xE400000000000000;
  String.append(_:)(v187);
  URL.appendingPathComponent(_:)();

  v188 = *(v184 + 8);
  *(v1 + 2664) = v188;
  *(v1 + 2672) = (v184 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v188(v183, v185);
  v189 = sub_1001C075C(5, &off_100A57518);
  v191 = v190;
  *(v1 + 2680) = v190;
  v192 = objc_opt_self();
  v193 = [v192 defaultManager];
  URL.absoluteString.getter();
  v194 = String._bridgeToObjectiveC()();

  v195 = [v193 fileExistsAtPath:v194];

  if (!v195)
  {
    goto LABEL_134;
  }

  v196 = [v192 defaultManager];
  URL._bridgeToObjectiveC()(v197);
  v199 = v198;
  *(v1 + 744) = 0;
  v200 = [v196 removeItemAtURL:v198 error:v1 + 744];

  v201 = *(v1 + 744);
  if (!v200)
  {
    v202 = v201;

    v203 = _convertNSErrorToError(_:)();

    swift_willThrow();
    v619 = v203;
    v204 = *(v1 + 2664);
    v205 = *(v1 + 2216);
    v206 = *(v1 + 2184);
    v207 = *(v1 + 2176);
    v208 = *(v1 + 1640);
    v209 = *(v1 + 1592);
    v210 = swift_allocObject();
    *(v210 + 16) = xmmword_100940080;
    *(v1 + 592) = 0;
    *(v1 + 600) = 0xE000000000000000;
    _StringGuts.grow(_:)(28);
    v211 = *(v1 + 600);
    *(v1 + 608) = *(v1 + 592);
    *(v1 + 616) = v211;
    v212._object = 0x80000001008FDC20;
    v212._countAndFlagsBits = 0x100000000000001ALL;
    String.append(_:)(v212);
    *(v1 + 728) = v203;
    sub_1000F24EC(&qword_100AD5BC0, &qword_100943550);
    _print_unlocked<A, B>(_:_:)();
    v213 = *(v1 + 608);
    v214 = *(v1 + 616);
    *(v210 + 56) = &type metadata for String;
    *(v210 + 32) = v213;
    *(v210 + 40) = v214;
    print(_:separator:terminator:)();

    v204(v208, v209);
    (*(v206 + 8))(v205, v207);
    goto LABEL_100;
  }

  v344 = v201;
LABEL_134:
  v345 = swift_task_alloc();
  *(v1 + 2688) = v345;
  *v345 = v1;
  v345[1] = sub_1005D08E4;
  v346 = *(v1 + 1640);
  v347 = *(v1 + 880);
  v348 = *(v1 + 872);

  return sub_10016A7C4(v348, v347, v189, v191, v346);
}

uint64_t sub_1005D08E4()
{
  v2 = *v1;
  *(*v1 + 2696) = v0;

  v3 = *(v2 + 2400);
  v4 = *(v2 + 2392);
  if (v0)
  {
    v5 = sub_1005E8714;
  }

  else
  {
    v5 = sub_1005D0A64;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1005D0A64()
{
  isUniquelyReferenced_nonNull_native = sub_1006A699C();
  v3 = isUniquelyReferenced_nonNull_native + 10;
  if (isUniquelyReferenced_nonNull_native + 10 < 0)
  {
    __break(1u);
LABEL_24:
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    goto LABEL_11;
  }

  v4 = _swiftEmptyArrayStorage;
  if (isUniquelyReferenced_nonNull_native != -10)
  {
    do
    {
      sub_1005ED3EC(isUniquelyReferenced_nonNull_native, -1.0, 1.0);
      v6 = v5;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        isUniquelyReferenced_nonNull_native = sub_1003E6584(0, *(v4 + 2) + 1, 1, v4);
        v4 = isUniquelyReferenced_nonNull_native;
      }

      v8 = *(v4 + 2);
      v7 = *(v4 + 3);
      if (v8 >= v7 >> 1)
      {
        isUniquelyReferenced_nonNull_native = sub_1003E6584((v7 > 1), v8 + 1, 1, v4);
        v4 = isUniquelyReferenced_nonNull_native;
      }

      *(v4 + 2) = v8 + 1;
      v4[v8 + 4] = v6;
      --v3;
    }

    while (v3);
  }

  v86 = *(v0 + 2648);
  v84 = *(v0 + 2616);
  v77 = *(v0 + 2912);
  v9 = *(v0 + 2256);
  v92 = *(v0 + 2248);
  v95 = *(v0 + 2200);
  v82 = *(v0 + 2192);
  v10 = *(v0 + 2184);
  v93 = *(v0 + 2176);
  v83 = *(v0 + 2152);
  v75 = *(v0 + 2120);
  v76 = *(v0 + 2160);
  v11 = *(v0 + 2048);
  v12 = *(v0 + 1976);
  v89 = *(v0 + 1968);
  v91 = *(v0 + 1856);
  v98 = *(v0 + 1744);
  v79 = *(v0 + 1728);
  v80 = *(v0 + 1736);
  v81 = *(v0 + 1720);
  v13 = *(v0 + 1640);
  v14 = *(v0 + 1600);
  v15 = *(v0 + 1592);
  v100 = *(v0 + 2056);
  (*(v100 + 104))();
  v74 = *(v14 + 16);
  v74(v12, v13, v15);
  (*(v14 + 56))(v12, 0, 1, v15);
  v16 = v91;
  v90 = *(v9 + 56);
  v90(v16, 1, 1, v92);
  (*(v10 + 104))(v95, v77, v93);
  v78 = *(v100 + 16);
  v78(v76, v75, v11);
  UUID.init()();
  v17 = objc_allocWithZone(type metadata accessor for AudioAsset(0));
  *&v17[OBJC_IVAR____TtC7Journal10AudioAsset_metadata] = 0;
  (*(v79 + 16))(v80, v98, v81);
  v84(v82, v95, v93);
  v78(v83, v76, v11);
  v18 = sub_100285908(v80, v82, v83);
  v86(v98, v81);
  v97 = *(v100 + 8);
  v97(v76, v11);
  (*(v10 + 8))(v95, v93);
  sub_1000082B4(v12, v89, &unk_100AD6DD0, &qword_1009437C0);
  if ((*(v14 + 48))(v89, 1, v15) == 1)
  {
    sub_100004F84(*(v0 + 1968), &unk_100AD6DD0, &qword_1009437C0);
    goto LABEL_12;
  }

  v19 = v18;
  v20 = *(v0 + 2648);
  v21 = *(v0 + 1744);
  v22 = *(v0 + 1720);
  v23 = *(v0 + 1712);
  v24 = *(v0 + 1632);
  v25 = *(v0 + 1592);
  (*(*(v0 + 1600) + 32))(v24, *(v0 + 1968), v25);
  v74(v23, v24, v25);
  type metadata accessor for AssetAttachment.AssetType.FilePathType(0);
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  UUID.init()();
  v26 = UUID.uuidString.getter();
  v28 = v27;
  v20(v21, v22);
  v1 = v19;
  type metadata accessor for AssetAttachment(0);
  v29 = swift_allocObject();
  *(v29 + 16) = 0;
  sub_1005ED56C(v23, v29 + OBJC_IVAR____TtC7Journal15AssetAttachment_assetType, type metadata accessor for AssetAttachment.AssetType);
  v30 = (v29 + OBJC_IVAR____TtC7Journal15AssetAttachment_fileNameID);
  *v30 = v26;
  v30[1] = v28;
  v31 = OBJC_IVAR____TtC7Journal5Asset_sourceAttachments;
  swift_beginAccess();
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*&v19[v31] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v19[v31] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_24;
  }

LABEL_11:
  v32 = *(v0 + 2664);
  v33 = *(v0 + 1632);
  v34 = *(v0 + 1592);
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  v32(v33, v34);
  v18 = v1;
LABEL_12:
  v35 = *(v0 + 2256);
  v36 = *(v0 + 2248);
  v37 = *(v0 + 1840);
  sub_1000082B4(*(v0 + 1856), v37, &unk_100AD4790, &unk_10093B4E0);
  v38 = *(v35 + 48);
  if (v38(v37, 1, v36) == 1)
  {
    v39 = *(v0 + 2248);
    v40 = *(v0 + 1840);
    static Date.now.getter();
    if (v38(v40, 1, v39) != 1)
    {
      sub_100004F84(*(v0 + 1840), &unk_100AD4790, &unk_10093B4E0);
    }
  }

  else
  {
    (*(*(v0 + 2256) + 32))(*(v0 + 1848), *(v0 + 1840), *(v0 + 2248));
  }

  v94 = *(v0 + 2664);
  v85 = *(v0 + 2048);
  v87 = *(v0 + 2120);
  v41 = *(v0 + 1976);
  v42 = *(v0 + 1856);
  v43 = *(v0 + 1640);
  v44 = *(v0 + 1592);
  v45 = *(v0 + 1328);
  v46 = *(v0 + 1320);
  v47 = *(v0 + 1304);
  v88 = *(v0 + 1312);
  v90(*(v0 + 1848), 0, 1, *(v0 + 2248));
  AudioAssetMetadata.init(duration:intensities:recordingDate:transcriptSegments:)();
  sub_100004F84(v42, &unk_100AD4790, &unk_10093B4E0);
  sub_100004F84(v41, &unk_100AD6DD0, &qword_1009437C0);
  v97(v87, v85);
  v94(v43, v44);
  (*(v46 + 32))(v47, v45, v88);
  swift_storeEnumTagMultiPayload();
  sub_1000F24EC(&qword_100AD8FA8, &qword_10095DFB0);
  v48 = swift_allocObject();
  v49 = *(*v48 + 104);
  v50 = sub_1000F24EC(&qword_100AD8F98, &unk_100955F40);
  (*(*(v50 - 8) + 56))(v48 + v49, 1, 1, v50);
  *(v48 + *(*v48 + 112)) = xmmword_100941EE0;
  sub_100021CEC(v47, v48 + *(*v48 + 120), &qword_100AD8FA0, &unk_100962CF0);
  *&v18[OBJC_IVAR____TtC7Journal10AudioAsset_metadata] = v48;

  v51 = *(v0 + 2696);
  *(v0 + 2832) = v18;
  *(v0 + 2824) = v51;
  v52 = *(v0 + 2608);
  v101 = *(v0 + 3008);
  v99 = *(v0 + 3004);
  v53 = *(v0 + 992);
  v54 = *(v0 + 984);
  v96 = *(v0 + 976);
  v55 = *(v0 + 968);
  v56 = *(v0 + 960);
  v57 = *(v0 + 952);
  v58 = *(v0 + 896);
  *(v0 + 576) = *(v0 + 888);
  *(v0 + 584) = v58;

  v59._countAndFlagsBits = 0x20746573734120;
  v59._object = 0xE700000000000000;
  String.append(_:)(v59);
  *(v0 + 768) = v52;
  v60._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v60);

  v61 = objc_allocWithZone(NSAttributedString);
  v62 = String._bridgeToObjectiveC()();

  v63 = [v61 initWithString:v62];

  v64 = *&v18[OBJC_IVAR____TtC7Journal5Asset_title];
  *&v18[OBJC_IVAR____TtC7Journal5Asset_title] = v63;

  *v53 = static AssetPlacement.maxGridCount.getter();
  (*(v54 + 104))(v53, v99, v96);
  (*(v56 + 104))(v55, v101, v57);
  LOBYTE(v62) = JournalFeatureFlags.isEnabled.getter();
  (*(v56 + 8))(v55, v57);
  if (v62)
  {
    *(v0 + 2840) = CFAbsoluteTimeGetCurrent();
    v65 = swift_task_alloc();
    *(v0 + 2848) = v65;
    *v65 = v0;
    v65[1] = sub_1005DEA30;
    v66 = *(v0 + 992);
    v67 = *(v0 + 880);
    v68 = *(v0 + 872);

    return sub_10056B238(v68, v67, v18, v66, 1);
  }

  else
  {
    v70 = swift_task_alloc();
    *(v0 + 2872) = v70;
    *v70 = v0;
    v70[1] = sub_1005DEE38;
    v71 = *(v0 + 992);
    v72 = *(v0 + 880);
    v73 = *(v0 + 872);

    return sub_1001F8424(v73, v72, v18, v71);
  }
}

uint64_t sub_1005D1548()
{
  v1 = *v0;

  v2 = *(v1 + 2400);
  v3 = *(v1 + 2392);

  return _swift_task_switch(sub_1005D169C, v3, v2);
}

uint64_t sub_1005D169C()
{
  v1 = *(v0 + 1272);
  v2 = *(v0 + 1264);
  if ((*(*(v0 + 1280) + 48))(v2, 1, v1) != 1)
  {
    v509 = *(v0 + 2616);
    v409 = *(v0 + 2996);
    v443 = *(v0 + 2896);
    v430 = *(v0 + 2256);
    v437 = *(v0 + 2248);
    v542 = *(v0 + 2200);
    v478 = *(v0 + 2192);
    v536 = *(v0 + 2176);
    v566 = *(v0 + 2160);
    v570 = *(v0 + 2184);
    v486 = *(v0 + 2152);
    v8 = *(v0 + 2112);
    v9 = *(v0 + 2056);
    v10 = *(v0 + 2048);
    v11 = *(v0 + 1960);
    v518 = *(v0 + 1952);
    v421 = *(v0 + 1832);
    v554 = *(v0 + 1744);
    v454 = *(v0 + 1736);
    v581 = *(v0 + 1728);
    v460 = *(v0 + 1720);
    v12 = *(v0 + 1600);
    v13 = *(v0 + 1592);
    v14 = *(v0 + 1288);
    sub_1005ED56C(v2, v14, type metadata accessor for RandomVideoAssetGenerator.VideoAsset);
    (*(v9 + 104))(v8, v409, v10);
    v493 = v13;
    v410 = *(v12 + 16);
    v410(v11, v14 + *(v1 + 24), v13);
    (*(v12 + 56))(v11, 0, 1, v13);
    (*(v430 + 56))(v421, 1, 1, v437);
    (*(v570 + 104))(v542, v443, v536);
    v444 = *(v9 + 16);
    v444(v566, v8, v10);
    UUID.init()();
    v15 = objc_allocWithZone(type metadata accessor for VideoAsset(0));
    *&v15[OBJC_IVAR____TtC7Journal10VideoAsset_metadata] = 0;
    (*(v581 + 16))(v454, v554, v460);
    v509(v478, v542, v536);
    v16 = v566;
    v444(v486, v566, v10);
    v17 = sub_100285908(v454, v478, v486);
    v18 = *(v581 + 8);
    v18(v554, v460);
    v565 = *(v9 + 8);
    v565(v16, v10);
    (*(v570 + 8))(v542, v536);
    sub_1000082B4(v11, v518, &unk_100AD6DD0, &qword_1009437C0);
    v19 = (*(v12 + 48))(v518, 1, v493);
    v20 = *(v0 + 1952);
    v528 = v17;
    if (v19 != 1)
    {
      v216 = *(v0 + 1744);
      v217 = *(v0 + 1720);
      v218 = v18;
      v219 = *(v0 + 1712);
      v220 = *(v0 + 1624);
      v221 = *(v0 + 1592);
      (*(*(v0 + 1600) + 32))(v220, v20, v221);
      v410(v219, v220, v221);
      type metadata accessor for AssetAttachment.AssetType.FilePathType(0);
      swift_storeEnumTagMultiPayload();
      swift_storeEnumTagMultiPayload();
      UUID.init()();
      v222 = UUID.uuidString.getter();
      v224 = v223;
      v218(v216, v217);
      type metadata accessor for AssetAttachment(0);
      v225 = swift_allocObject();
      *(v225 + 16) = 0;
      sub_1005ED56C(v219, v225 + OBJC_IVAR____TtC7Journal15AssetAttachment_assetType, type metadata accessor for AssetAttachment.AssetType);
      v226 = (v225 + OBJC_IVAR____TtC7Journal15AssetAttachment_fileNameID);
      *v226 = v222;
      v226[1] = v224;
      v227 = OBJC_IVAR____TtC7Journal5Asset_sourceAttachments;
      swift_beginAccess();
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((*&v17[v227] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v17[v227] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_155;
      }

      goto LABEL_105;
    }

    sub_100004F84(v20, &unk_100AD6DD0, &qword_1009437C0);
LABEL_106:
    v231 = *(v0 + 136);
    v232 = *(v0 + 144);
    v233 = *(v0 + 152);
    v234 = *(v0 + 160);
    v538 = *(v0 + 2048);
    v544 = *(v0 + 2112);
    v503 = *(v0 + 1832);
    v510 = *(v0 + 1960);
    v495 = *(v0 + 1584);
    v235 = *(v0 + 1576);
    v572 = *(v0 + 1568);
    v555 = *(v0 + 1560);
    v520 = *(v0 + 1288);
    sub_1000082B4(v503, *(v0 + 1904), &unk_100AD4790, &unk_10093B4E0);
    v598.origin.x = v231;
    v598.origin.y = v232;
    v598.size.width = v233;
    v598.size.height = v234;
    v236 = NSStringFromCGRect(v598);
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v599.origin.x = v231;
    v599.origin.y = v232;
    v599.size.width = v233;
    v599.size.height = v234;
    v237 = NSStringFromCGRect(v599);
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v600.origin.x = v231;
    v600.origin.y = v232;
    v600.size.width = v233;
    v600.size.height = v234;
    v238 = NSStringFromCGRect(v600);
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    PhotoLibraryAssetMetadata.init(assetIdentifier:date:placeName:latitude:longitude:size:squareCropRect:landscapeCropRect:portraitCropRect:)();
    sub_100004F84(v503, &unk_100AD4790, &unk_10093B4E0);
    sub_100004F84(v510, &unk_100AD6DD0, &qword_1009437C0);
    v565(v544, v538);
    sub_1005ED5D4(v520);
    (*(v235 + 32))(v555, v495, v572);
    swift_storeEnumTagMultiPayload();
    sub_1000F24EC(&unk_100AEE0B0, &unk_100943F60);
    v239 = swift_allocObject();
    v240 = *(*v239 + 104);
    v241 = sub_1000F24EC(&qword_100AD5B20, qword_1009521A0);
    (*(*(v241 - 8) + 56))(v239 + v240, 1, 1, v241);
    *(v239 + *(*v239 + 112)) = xmmword_100941EE0;
    sub_100021CEC(v555, v239 + *(*v239 + 120), &unk_100AEE0A0, &unk_100943F50);
    v242 = v528;
    *&v528[OBJC_IVAR____TtC7Journal10VideoAsset_metadata] = v239;

    v21 = *(v0 + 2600);
LABEL_107:
    *(v0 + 2832) = v242;
    *(v0 + 2824) = v21;
    v243 = *(v0 + 2608);
    v591 = *(v0 + 3008);
    v583 = *(v0 + 3004);
    v244 = *(v0 + 992);
    v245 = *(v0 + 984);
    v573 = *(v0 + 976);
    v246 = *(v0 + 968);
    v247 = *(v0 + 960);
    v248 = *(v0 + 952);
    v249 = *(v0 + 896);
    *(v0 + 576) = *(v0 + 888);
    *(v0 + 584) = v249;

    v250._countAndFlagsBits = 0x20746573734120;
    v250._object = 0xE700000000000000;
    String.append(_:)(v250);
    *(v0 + 768) = v243;
    v251._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v251);

    v252 = objc_allocWithZone(NSAttributedString);
    v253 = String._bridgeToObjectiveC()();

    v254 = [v252 initWithString:v253];

    v255 = *&v242[OBJC_IVAR____TtC7Journal5Asset_title];
    *&v242[OBJC_IVAR____TtC7Journal5Asset_title] = v254;

    *v244 = static AssetPlacement.maxGridCount.getter();
    (*(v245 + 104))(v244, v583, v573);
    (*(v247 + 104))(v246, v591, v248);
    LOBYTE(v253) = JournalFeatureFlags.isEnabled.getter();
    (*(v247 + 8))(v246, v248);
    if (v253)
    {
      *(v0 + 2840) = CFAbsoluteTimeGetCurrent();
      v256 = swift_task_alloc();
      *(v0 + 2848) = v256;
      *v256 = v0;
      v256[1] = sub_1005DEA30;
      v257 = *(v0 + 992);
      v258 = *(v0 + 880);
      v259 = *(v0 + 872);

      return sub_10056B238(v259, v258, v242, v257, 1);
    }

    else
    {
      v260 = swift_task_alloc();
      *(v0 + 2872) = v260;
      *v260 = v0;
      v260[1] = sub_1005DEE38;
      v261 = *(v0 + 992);
      v262 = *(v0 + 880);
      v263 = *(v0 + 872);

      return sub_1001F8424(v263, v262, v242, v261);
    }
  }

  (*(*(v0 + 2184) + 8))(*(v0 + 2216), *(v0 + 2176));
  sub_100004F84(v2, &qword_100AEABE8, &qword_10095F7C8);
  v3 = *(v0 + 2608) + 1;
  if (v3 == *(v0 + 912))
  {
LABEL_3:
    v4 = *(v0 + 2568);

    v5 = *(v0 + 8);
    v6 = *(v0 + 2536);

    return v5(v6);
  }

  v543 = (v0 + 688);
  v422 = (v0 + 736);
  v469 = (v0 + 752);
  v494 = (v0 + 784);
  v582 = (v0 + 776);
  v590 = (v0 + 808);
  v519 = (v0 + 816);
  v21 = *(v0 + 2600);
  v502 = 0x80000001008FDE30;
  v571 = 1;
  v461 = (v0 + 840);
  while (1)
  {
    *(v0 + 2608) = v3;
    *(v0 + 2600) = v21;
    v22 = *(v0 + 2552);
    *(v0 + 832) = 0;
    swift_stdlib_random();
    v23 = *(v0 + 832);
    v24 = (v23 * v22) >> 64;
    v25 = v23 * v22;
    v26 = *(v0 + 2552);
    if (v22 > v25)
    {
      v27 = -v26 % v26;
      if (v27 > v25)
      {
        do
        {
          v28 = *(v0 + 2552);
          *(v0 + 680) = 0;
          swift_stdlib_random();
          v29 = *(v0 + 680);
        }

        while (v27 > v29 * v28);
        v24 = (v29 * v28) >> 64;
        v26 = *(v0 + 2552);
      }
    }

    if (v24 >= v26)
    {
      __break(1u);
LABEL_131:
      v567 = *(v0 + 2988);
      v483 = *(v0 + 2980);
      v322 = *(v0 + 2256);
      v323 = *(v0 + 2248);
      v475 = *(v0 + 2160);
      v586 = *(v0 + 2056);
      v324 = *(v0 + 1904);
      v325 = *(v0 + 1872);
      v326 = *(v0 + 1864);
      v539 = *(v0 + 1384);
      v549 = *(v0 + 1376);
      v559 = *(v0 + 2048);
      v505 = *(v0 + 1368);
      v515 = *(v0 + 1360);
      v498 = *(v0 + 1352);
      v466 = *(v0 + 1344);
      v327 = *(v0 + 1336);
      v328 = swift_allocObject();
      *(v328 + 16) = xmmword_100940080;
      *(v328 + 56) = &type metadata for String;
      *(v328 + 32) = 0xD000000000000018;
      *(v328 + 40) = 0x80000001008FDC60;
      print(_:separator:terminator:)();

      Date.init()();
      v329 = *(v322 + 56);
      v329(v324, 0, 1, v323);
      v329(v325, 1, 1, v323);
      v329(v326, 1, 1, v323);
      v577 = *(v586 + 104);
      v577(v327, v567, v559);
      v532 = *(v586 + 56);
      v532(v327, 0, 1, v559);
      VisitAssetMetadata.init(placeName:city:typeOfPlace:visitStartTime:visitEndTime:createdDate:latitude:longitude:styleData:mapItemData:isWork:confidenceLevel:horizontalAccuracy:assetSource:)();
      Date.init()();
      v329(v324, 0, 1, v323);
      v329(v325, 1, 1, v323);
      v329(v326, 1, 1, v323);
      v577(v327, v567, v559);
      v532(v327, 0, 1, v559);
      VisitAssetMetadata.init(placeName:city:typeOfPlace:visitStartTime:visitEndTime:createdDate:latitude:longitude:styleData:mapItemData:isWork:confidenceLevel:horizontalAccuracy:assetSource:)();
      Date.init()();
      v329(v324, 0, 1, v323);
      v329(v325, 1, 1, v323);
      v329(v326, 1, 1, v323);
      v577(v327, v567, v559);
      v532(v327, 0, 1, v559);
      VisitAssetMetadata.init(placeName:city:typeOfPlace:visitStartTime:visitEndTime:createdDate:latitude:longitude:styleData:mapItemData:isWork:confidenceLevel:horizontalAccuracy:assetSource:)();
      Date.init()();
      v329(v324, 0, 1, v323);
      v329(v325, 1, 1, v323);
      v329(v326, 1, 1, v323);
      v577(v327, v567, v559);
      v532(v327, 0, 1, v559);
      VisitAssetMetadata.init(placeName:city:typeOfPlace:visitStartTime:visitEndTime:createdDate:latitude:longitude:styleData:mapItemData:isWork:confidenceLevel:horizontalAccuracy:assetSource:)();
      sub_1000F24EC(&qword_100AD64A8, &qword_100945170);
      v330 = *(v498 + 72);
      v331 = (*(v498 + 80) + 32) & ~*(v498 + 80);
      v332 = swift_allocObject();
      *(v332 + 16) = xmmword_100941FE0;
      v333 = v332 + v331;
      v334 = *(v498 + 16);
      v334(v333, v539, v466);
      v334(v333 + v330, v549, v466);
      v334(v333 + 2 * v330, v505, v466);
      v334(v333 + 3 * v330, v515, v466);
      sub_1006ADB18(v332);
      v577(v475, v483, v559);
      v242 = sub_10011CEC0(v475, _swiftEmptyArrayStorage);
      v335 = *(v498 + 8);
      v335(v515, v466);
      v335(v505, v466);
      v335(v549, v466);
      v335(v539, v466);
      goto LABEL_107;
    }

    v30 = *(v0 + 2888);
    v31 = *(v0 + 2216);
    v32 = *(v0 + 2208);
    v33 = *(v0 + 2184);
    v34 = *(v0 + 2176);
    v35 = *(v33 + 16);
    v36 = *(v0 + 904) + ((*(v0 + 2884) + 32) & ~*(v0 + 2884)) + *(v33 + 72) * v24;
    *(v0 + 2616) = v35;
    *(v0 + 2624) = (v33 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v35(v31, v36, v34);
    v35(v32, v31, v34);
    v37 = (*(v33 + 88))(v32, v34);
    if (v37 == v30)
    {
      v264 = swift_allocObject();
      *(v264 + 16) = xmmword_100940080;
      *(v264 + 56) = &type metadata for String;
      *(v264 + 32) = 0xD000000000000013;
      *(v264 + 40) = 0x80000001008FDEC0;
      print(_:separator:terminator:)();

      v265 = swift_task_alloc();
      *(v0 + 2632) = v265;
      *(v265 + 16) = 1;
      v266 = swift_task_alloc();
      *(v0 + 2640) = v266;
      v267 = sub_1000F24EC(&qword_100AEABF0, &qword_10095F7D0);
      *v266 = v0;
      v266[1] = sub_1005CAA34;
      v190 = *(v0 + 880);
      v189 = *(v0 + 872);
      v195 = v267;
      v193 = sub_1005ED67C;
      v188 = v0 + 848;
      goto LABEL_115;
    }

    if (v37 == *(v0 + 2892))
    {
      goto LABEL_9;
    }

    if (v37 == *(v0 + 2896))
    {
      v268 = swift_allocObject();
      *(v268 + 16) = xmmword_100940080;
      *(v268 + 56) = &type metadata for String;
      *(v268 + 32) = 0xD000000000000013;
      *(v268 + 40) = 0x80000001008FDBE0;
      print(_:separator:terminator:)();

      v269 = swift_task_alloc();
      *(v0 + 2704) = v269;
      *v269 = v0;
      v269[1] = sub_1005D1548;
      v270 = *(v0 + 1264);
      v271 = *(v0 + 880);
      v272 = *(v0 + 872);

      return sub_1006A580C(v270, v272, v271);
    }

    if (v37 == *(v0 + 2900))
    {
      v38 = swift_allocObject();
      *(v38 + 16) = xmmword_100940080;
      *(v38 + 56) = &type metadata for String;
      *(v38 + 32) = 0xD000000000000012;
      *(v38 + 40) = 0x80000001008FDE10;
      print(_:separator:terminator:)();

      v39 = *(v0 + 112);
      v40 = *(v39 + 16);
      if (v40)
      {
        *v519 = 0;
        swift_stdlib_random();
        v41 = *v519 * v40;
        v42 = (*v519 * v40) >> 64;
        if (v40 > v41)
        {
          v43 = -v40 % v40;
          if (v43 > v41)
          {
            do
            {
              *v461 = 0;
              swift_stdlib_random();
            }

            while (v43 > *v461 * v40);
            v42 = (*v461 * v40) >> 64;
          }
        }

        if (v42 < *(v39 + 16))
        {
          v44 = *(v39 + 32 * v42 + 40);
          swift_beginAccess();
          v565 = v44;

          sub_100691A14(v42);
          swift_endAccess();

          goto LABEL_40;
        }

        __break(1u);
LABEL_155:
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
LABEL_105:
        v228 = *(v0 + 1624);
        v229 = *(v0 + 1600);
        v230 = *(v0 + 1592);
        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        swift_endAccess();
        (*(v229 + 8))(v228, v230);
        goto LABEL_106;
      }

      v565 = 0xE900000000000034;
LABEL_40:
      v59 = *(v0 + 2024);
      v60 = *(v0 + 1600);
      v61 = *(v0 + 1592);
      URL.init(string:)();
      if ((*(v60 + 48))(v59, 1, v61) == 1)
      {
        v62 = *(v0 + 2216);
        v63 = *(v0 + 2184);
        v64 = *(v0 + 2176);
        v65 = *(v0 + 2024);
        goto LABEL_42;
      }

      (*(*(v0 + 1600) + 32))(*(v0 + 1664), *(v0 + 2024), *(v0 + 1592));
      v66 = Data.init(contentsOf:options:)();
      v528 = v21;
      if (v21)
      {
        v68 = *(v0 + 2216);
        v69 = *(v0 + 2184);
        v70 = *(v0 + 2176);
        v71 = *(v0 + 1664);
        v72 = *(v0 + 1600);
        v73 = *(v0 + 1592);

        (*(v72 + 8))(v71, v73);
        goto LABEL_62;
      }

      v114 = v66;
      v115 = v67;
      v116 = objc_allocWithZone(UIImage);
      sub_100049ED8(v114, v115);
      isa = Data._bridgeToObjectiveC()().super.isa;
      v118 = [v116 initWithData:isa];

      v119 = sub_1000340DC(v114, v115);
      if (!v118)
      {
        v120 = *(v0 + 2216);
        v121 = *(v0 + 2184);
        v122 = *(v0 + 2176);
        v123 = *(v0 + 1664);
        v124 = *(v0 + 1600);
        v125 = *(v0 + 1592);

        v126 = sub_1000340DC(v114, v115);
        (*(v124 + 8))(v123, v125, v126);
        (*(v121 + 8))(v120, v122);
        goto LABEL_72;
      }

      v502 = v115;
      v431 = *(v0 + 3000);
      v445 = *(v0 + 2900);
      v273 = *(v0 + 2256);
      v423 = *(v0 + 2248);
      v438 = *(v0 + 2200);
      v479 = *(v0 + 2192);
      v584 = *(v0 + 2184);
      v511 = *(v0 + 2176);
      v556 = *(v0 + 2160);
      v529 = *(v0 + 2152);
      v417 = *(v0 + 2144);
      v592 = *(v0 + 2056);
      v545 = *(v0 + 2048);
      v470 = *(v0 + 2016);
      v406 = *(v0 + 1896);
      v521 = *(v0 + 1744);
      v455 = *(v0 + 1736);
      v574 = *(v0 + 1728);
      v462 = *(v0 + 1720);
      v487 = *(v0 + 1712);
      v274 = *(v0 + 1600);
      v275 = *(v0 + 1592);
      v414 = *(v0 + 1544);
      v276 = *(v0 + 1528);
      v411 = *(v0 + 1520);
      (*(v592 + 104))(v119);

      (*(v274 + 56))(v470, 1, 1, v275);
      v471 = v118;
      Date.init()();
      (*(v273 + 56))(v406, 0, 1, v423);
      (*(v276 + 104))(v414, v431, v411);
      (*(v584 + 104))(v438, v445, v511);
      v446 = *(v592 + 16);
      v446(v556, v417, v545);
      UUID.init()();
      *(objc_allocWithZone(type metadata accessor for MusicAsset(0)) + OBJC_IVAR____TtC7Journal10MusicAsset_metadata) = 0;
      (*(v574 + 16))(v455, v521, v462);
      v35(v479, v438, v511);
      v446(v529, v556, v545);
      v528 = sub_100285908(v455, v479, v529);
      v277 = *(v574 + 8);
      v277(v521, v462);
      v571 = *(v592 + 8);
      (v571)(v556, v545);
      (*(v584 + 8))(v438, v511);
      *v487 = v471;
      swift_storeEnumTagMultiPayload();
      v582 = v471;
      UUID.init()();
      v278 = UUID.uuidString.getter();
      v280 = v279;
      v277(v521, v462);
      type metadata accessor for AssetAttachment(0);
      v281 = swift_allocObject();
      *(v281 + 16) = 0;
      sub_1005ED56C(v487, v281 + OBJC_IVAR____TtC7Journal15AssetAttachment_assetType, type metadata accessor for AssetAttachment.AssetType);
      v282 = (v281 + OBJC_IVAR____TtC7Journal15AssetAttachment_fileNameID);
      *v282 = v278;
      v282[1] = v280;
      v283 = OBJC_IVAR____TtC7Journal5Asset_sourceAttachments;
      swift_beginAccess();
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((*&v528[v283] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v528[v283] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
LABEL_162:
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      v512 = *(v0 + 2144);
      v496 = *(v0 + 2048);
      v284 = *(v0 + 2016);
      v285 = *(v0 + 2008);
      v424 = *(v0 + 1904);
      v418 = *(v0 + 1896);
      v522 = *(v0 + 1664);
      v463 = *(v0 + 1600);
      v488 = *(v0 + 1592);
      v439 = *(v0 + 1544);
      v286 = *(v0 + 1528);
      v432 = *(v0 + 1520);
      v447 = *(v0 + 1512);
      v480 = *(v0 + 1504);
      v546 = *(v0 + 1496);
      v287 = *(v0 + 1488);
      v472 = *(v0 + 1480);
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      swift_endAccess();
      sub_1000082B4(v284, v285, &unk_100AD6DD0, &qword_1009437C0);
      sub_1000082B4(v418, v424, &unk_100AD4790, &unk_10093B4E0);
      (*(v286 + 16))(v287, v439, v432);
      (*(v286 + 56))(v287, 0, 1, v432);
      MusicAssetMetadata.init(mediaId:mediaURL:artistName:song:albumName:numberOfTimesPlayed:startTime:mediaType:)();

      v288 = sub_1000340DC(v114, v502);
      (*(v286 + 8))(v439, v432, v288);
      sub_100004F84(v418, &unk_100AD4790, &unk_10093B4E0);
      sub_100004F84(v284, &unk_100AD6DD0, &qword_1009437C0);
      (v571)(v512, v496);
      (*(v463 + 8))(v522, v488);
      (*(v480 + 32))(v472, v447, v546);
      swift_storeEnumTagMultiPayload();
      sub_1000F24EC(&qword_100AE0E90, &unk_1009525D0);
      v289 = swift_allocObject();
      v290 = *(*v289 + 104);
      v291 = sub_1000F24EC(&qword_100AD6F70, &unk_100962D80);
      (*(*(v291 - 8) + 56))(v289 + v290, 1, 1, v291);
      *(v289 + *(*v289 + 112)) = xmmword_100941EE0;
      sub_100021CEC(v472, v289 + *(*v289 + 120), &qword_100ADA8E0, &unk_100962D70);
      v292 = &OBJC_IVAR____TtC7Journal10MusicAsset_metadata;
LABEL_136:
      v242 = v528;
      *&v528[*v292] = v289;
LABEL_137:

      v21 = 0;
      goto LABEL_107;
    }

    if (v37 == *(v0 + 2904))
    {
      v45 = swift_allocObject();
      *(v45 + 16) = xmmword_100940080;
      *(v45 + 56) = &type metadata for String;
      *(v45 + 32) = 0xD000000000000015;
      *(v45 + 40) = 0x80000001008FDD50;
      print(_:separator:terminator:)();

      v46 = *(v0 + 120);
      v47 = *(v46 + 16);
      if (!v47)
      {
        v565 = 0xEA00000000003130;
        goto LABEL_56;
      }

      *v494 = 0;
      swift_stdlib_random();
      v48 = *v494 * v47;
      v49 = (*v494 * v47) >> 64;
      if (v47 > v48)
      {
        v50 = -v47 % v47;
        v51 = (v0 + 808);
        if (v50 > v48)
        {
          do
          {
            *v51 = 0;
            swift_stdlib_random();
            v51 = (v0 + 808);
          }

          while (v50 > *v590 * v47);
          v49 = (*v590 * v47) >> 64;
        }
      }

      if (v49 < *(v46 + 16))
      {
        v127 = *(v46 + 32 * v49 + 40);
        swift_beginAccess();
        v565 = v127;

        sub_100691A14(v49);
        swift_endAccess();

LABEL_56:
        v128 = *(v0 + 2000);
        v129 = *(v0 + 1600);
        v130 = *(v0 + 1592);
        URL.init(string:)();
        if ((*(v129 + 48))(v128, 1, v130) != 1)
        {
          (*(*(v0 + 1600) + 32))(*(v0 + 1656), *(v0 + 2000), *(v0 + 1592));
          v132 = Data.init(contentsOf:options:)();
          v528 = v21;
          if (v21)
          {
            v68 = *(v0 + 2216);
            v69 = *(v0 + 2184);
            v70 = *(v0 + 2176);
            v134 = *(v0 + 1656);
            v135 = *(v0 + 1600);
            v136 = *(v0 + 1592);

            (*(v135 + 8))(v134, v136);
LABEL_62:
            (*(v69 + 8))(v68, v70);
LABEL_72:
            v21 = 0;
            goto LABEL_10;
          }

          v144 = v133;
          v145 = v132;
          v146 = objc_allocWithZone(UIImage);
          sub_100049ED8(v145, v144);
          v147 = Data._bridgeToObjectiveC()().super.isa;
          v148 = [v146 initWithData:v147];

          v149 = sub_1000340DC(v145, v144);
          v150 = v145;
          if (!v148)
          {
            v537 = *(v0 + 2216);
            v151 = *(v0 + 2184);
            v152 = *(v0 + 2176);
            v153 = *(v0 + 1656);
            v154 = *(v0 + 1600);
            v155 = *(v0 + 1592);

            v156 = sub_1000340DC(v150, v144);
            (*(v154 + 8))(v153, v155, v156);
            (*(v151 + 8))(v537, v152);
            goto LABEL_72;
          }

          v497 = v145;
          v504 = v144;
          v433 = *(v0 + 2992);
          v448 = *(v0 + 2904);
          v298 = *(v0 + 2256);
          v425 = *(v0 + 2248);
          v440 = *(v0 + 2200);
          v464 = *(v0 + 2192);
          v575 = *(v0 + 2184);
          v513 = *(v0 + 2176);
          v557 = *(v0 + 2160);
          v473 = *(v0 + 2152);
          v419 = *(v0 + 2136);
          v593 = *(v0 + 2056);
          v530 = *(v0 + 2048);
          v299 = *(v0 + 1992);
          v407 = *(v0 + 1888);
          v523 = *(v0 + 1744);
          v456 = *(v0 + 1736);
          v585 = *(v0 + 1728);
          v547 = *(v0 + 1720);
          v481 = *(v0 + 1712);
          v404 = *(v0 + 1656);
          v300 = *(v0 + 1600);
          v301 = *(v0 + 1592);
          v415 = *(v0 + 1536);
          v302 = *(v0 + 1528);
          v412 = *(v0 + 1520);
          (*(v593 + 104))(v149);

          (*(v300 + 16))(v299, v404, v301);
          (*(v300 + 56))(v299, 0, 1, v301);
          Date.init()();
          (*(v298 + 56))(v407, 0, 1, v425);
          (*(v302 + 104))(v415, v433, v412);
          (*(v575 + 104))(v440, v448, v513);
          v449 = *(v593 + 16);
          v449(v557, v419, v530);
          UUID.init()();
          *(objc_allocWithZone(type metadata accessor for PodcastAsset(0)) + OBJC_IVAR____TtC7Journal12PodcastAsset_metadata) = 0;
          (*(v585 + 16))(v456, v523, v547);
          v35(v464, v440, v513);
          v303 = v557;
          v449(v473, v557, v530);
          v304 = sub_100285908(v456, v464, v473);
          v305 = *(v585 + 8);
          v305(v523, v547);
          v558 = *(v593 + 8);
          v558(v303, v530);
          (*(v575 + 8))(v440, v513);
          *v481 = v148;
          swift_storeEnumTagMultiPayload();
          v306 = v304;
          v576 = v148;
          UUID.init()();
          v307 = UUID.uuidString.getter();
          v309 = v308;
          v305(v523, v547);
          type metadata accessor for AssetAttachment(0);
          v310 = swift_allocObject();
          *(v310 + 16) = 0;
          sub_1005ED56C(v481, v310 + OBJC_IVAR____TtC7Journal15AssetAttachment_assetType, type metadata accessor for AssetAttachment.AssetType);
          v311 = (v310 + OBJC_IVAR____TtC7Journal15AssetAttachment_fileNameID);
          *v311 = v307;
          v311[1] = v309;
          v312 = OBJC_IVAR____TtC7Journal5Asset_sourceAttachments;
          swift_beginAccess();
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          v531 = v306;
          if (*((*&v306[v312] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v306[v312] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          v514 = *(v0 + 2136);
          v489 = *(v0 + 2048);
          v313 = *(v0 + 2008);
          v314 = *(v0 + 1992);
          v426 = *(v0 + 1904);
          v315 = *(v0 + 1888);
          v548 = *(v0 + 1656);
          v457 = *(v0 + 1600);
          v482 = *(v0 + 1592);
          v441 = *(v0 + 1536);
          v316 = *(v0 + 1528);
          v434 = *(v0 + 1520);
          v317 = *(v0 + 1488);
          v450 = *(v0 + 1464);
          v465 = *(v0 + 1456);
          v524 = *(v0 + 1448);
          v474 = *(v0 + 1440);
          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          swift_endAccess();
          sub_1000082B4(v314, v313, &unk_100AD6DD0, &qword_1009437C0);
          sub_1000082B4(v315, v426, &unk_100AD4790, &unk_10093B4E0);
          (*(v316 + 16))(v317, v441, v434);
          (*(v316 + 56))(v317, 0, 1, v434);
          PodcastAssetMetadata.init(mediaId:title:author:mediaURL:timePlayed:numberOfTimesPlayed:mediaType:)();

          v318 = sub_1000340DC(v497, v504);
          (*(v316 + 8))(v441, v434, v318);
          sub_100004F84(v315, &unk_100AD4790, &unk_10093B4E0);
          sub_100004F84(v314, &unk_100AD6DD0, &qword_1009437C0);
          v558(v514, v489);
          (*(v457 + 8))(v548, v482);
          (*(v465 + 32))(v474, v450, v524);
          swift_storeEnumTagMultiPayload();
          sub_1000F24EC(&qword_100AE0E80, &unk_1009525A0);
          v319 = swift_allocObject();
          v320 = *(*v319 + 104);
          v321 = sub_1000F24EC(&qword_100AD2A70, &qword_100952E00);
          (*(*(v321 - 8) + 56))(v319 + v320, 1, 1, v321);
          *(v319 + *(*v319 + 112)) = xmmword_100941EE0;
          sub_100021CEC(v474, v319 + *(*v319 + 120), &qword_100ADA958, &unk_100960730);
          v242 = v531;
          *&v531[OBJC_IVAR____TtC7Journal12PodcastAsset_metadata] = v319;

          goto LABEL_137;
        }

        v65 = *(v0 + 2000);
        (*(*(v0 + 2184) + 8))(*(v0 + 2216), *(v0 + 2176));

LABEL_58:

        v131 = v65;
LABEL_59:
        sub_100004F84(v131, &unk_100AD6DD0, &qword_1009437C0);
        goto LABEL_10;
      }

      __break(1u);
LABEL_157:
      __break(1u);
LABEL_158:
      v265 = swift_task_alloc();
      *(v0 + 2808) = v265;
      *(v265 + 16) = 1;
      v402 = swift_task_alloc();
      *(v0 + 2816) = v402;
      v403 = sub_1000F24EC(&qword_100AEABF0, &qword_10095F7D0);
      *v402 = v0;
      v402[1] = sub_1005DDCB8;
      v190 = *(v0 + 880);
      v189 = *(v0 + 872);
      v195 = v403;
      v193 = sub_1005ED564;
      v188 = v0 + 824;
      goto LABEL_115;
    }

    if (v37 == *(v0 + 2908))
    {
      v52 = swift_allocObject();
      *(v52 + 16) = xmmword_100940080;
      *(v52 + 56) = &type metadata for String;
      *(v52 + 32) = 0xD000000000000012;
      *(v52 + 40) = 0x80000001008FDCA0;
      print(_:separator:terminator:)();

      v53 = *(v0 + 128);
      v54 = *(v53 + 16);
      if (v54)
      {
        *v469 = 0;
        swift_stdlib_random();
        v55 = *v469 * v54;
        v56 = (*v469 * v54) >> 64;
        if (v54 > v55)
        {
          v57 = -v54 % v54;
          v58 = (v0 + 776);
          if (v57 > v55)
          {
            do
            {
              *v58 = 0;
              swift_stdlib_random();
              v58 = (v0 + 776);
            }

            while (v57 > *v582 * v54);
            v56 = (*v582 * v54) >> 64;
          }
        }

        if (v56 >= *(v53 + 16))
        {
          goto LABEL_157;
        }

        v157 = *(v53 + 32 * v56 + 40);
        swift_beginAccess();
        v565 = v157;

        sub_100691A14(v56);
        swift_endAccess();
      }

      else
      {
        v565 = 0xEA00000000003030;
      }

      v158 = *(v0 + 1984);
      v159 = *(v0 + 1600);
      v160 = *(v0 + 1592);
      URL.init(string:)();
      if ((*(v159 + 48))(v158, 1, v160) != 1)
      {
        (*(*(v0 + 1600) + 32))(*(v0 + 1648), *(v0 + 1984), *(v0 + 1592));
        v161 = Data.init(contentsOf:options:)();
        v528 = v21;
        if (v21)
        {
          v163 = *(v0 + 2216);
          v164 = *(v0 + 2184);
          v165 = *(v0 + 2176);
          v166 = *(v0 + 1648);
          v167 = *(v0 + 1600);
          v168 = *(v0 + 1592);

          (*(v167 + 8))(v166, v168);
          (*(v164 + 8))(v163, v165);
        }

        else
        {
          v169 = v161;
          v170 = v162;
          v171 = objc_allocWithZone(UIImage);
          sub_100049ED8(v169, v170);
          v172 = Data._bridgeToObjectiveC()().super.isa;
          v173 = [v171 initWithData:v172];

          v174 = sub_1000340DC(v169, v170);
          if (v173)
          {
            v516 = v170;
            v451 = *(v0 + 2908);
            v345 = *(v0 + 2256);
            v435 = *(v0 + 2248);
            v526 = *(v0 + 2200);
            v484 = *(v0 + 2192);
            v346 = *(v0 + 2184);
            v442 = *(v0 + 2176);
            v578 = *(v0 + 2160);
            v534 = *(v0 + 2152);
            v427 = *(v0 + 2128);
            v347 = *(v0 + 1880);
            v551 = *(v0 + 1744);
            v561 = *(v0 + 2048);
            v458 = *(v0 + 1736);
            v595 = *(v0 + 1728);
            v467 = *(v0 + 1720);
            v499 = *(v0 + 1712);
            v588 = *(v0 + 2056);
            (*(v588 + 104))(v174);

            v490 = v173;
            Date.init()();
            (*(v345 + 56))(v347, 0, 1, v435);
            (*(v346 + 104))(v526, v451, v442);
            v452 = *(v588 + 16);
            v452(v578, v427, v561);
            UUID.init()();
            *(objc_allocWithZone(type metadata accessor for BookAsset(0)) + OBJC_IVAR____TtC7Journal9BookAsset_metadata) = 0;
            (*(v595 + 16))(v458, v551, v467);
            v35(v484, v526, v442);
            v348 = v578;
            v452(v534, v578, v561);
            v528 = sub_100285908(v458, v484, v534);
            v349 = *(v595 + 8);
            v349(v551, v467);
            v579 = *(v588 + 8);
            v579(v348, v561);
            (*(v346 + 8))(v526, v442);
            *v499 = v490;
            swift_storeEnumTagMultiPayload();
            v562 = v490;
            UUID.init()();
            v350 = UUID.uuidString.getter();
            v352 = v351;
            v349(v551, v467);
            type metadata accessor for AssetAttachment(0);
            v353 = swift_allocObject();
            *(v353 + 16) = 0;
            sub_1005ED56C(v499, v353 + OBJC_IVAR____TtC7Journal15AssetAttachment_assetType, type metadata accessor for AssetAttachment.AssetType);
            v354 = (v353 + OBJC_IVAR____TtC7Journal15AssetAttachment_fileNameID);
            *v354 = v350;
            v354[1] = v352;
            v355 = OBJC_IVAR____TtC7Journal5Asset_sourceAttachments;
            swift_beginAccess();
            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            if (*((*&v528[v355] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v528[v355] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            v491 = *(v0 + 2128);
            v485 = *(v0 + 2048);
            v356 = *(v0 + 1904);
            v357 = *(v0 + 1880);
            v358 = *(v0 + 1600);
            v500 = *(v0 + 1592);
            v507 = *(v0 + 1648);
            v359 = *(v0 + 1424);
            v476 = *(v0 + 1416);
            v552 = *(v0 + 1408);
            v527 = *(v0 + 1400);
            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            swift_endAccess();
            sub_1000082B4(v357, v356, &unk_100AD4790, &unk_10093B4E0);
            BookAssetMetadata.init(mediaId:title:author:timeOfPurchase:)();

            sub_1000340DC(v169, v516);
            sub_100004F84(v357, &unk_100AD4790, &unk_10093B4E0);
            v579(v491, v485);
            (*(v358 + 8))(v507, v500);
            (*(v476 + 32))(v527, v359, v552);
            swift_storeEnumTagMultiPayload();
            sub_1000F24EC(&qword_100AEABF8, &unk_100962D40);
            v289 = swift_allocObject();
            v360 = *(*v289 + 104);
            v361 = sub_1000F24EC(&qword_100AD4318, &qword_100942B38);
            (*(*(v361 - 8) + 56))(v289 + v360, 1, 1, v361);
            *(v289 + *(*v289 + 112)) = xmmword_100941EE0;
            sub_100021CEC(v527, v289 + *(*v289 + 120), &qword_100ADA8C0, &qword_10094A5B8);
            v292 = &OBJC_IVAR____TtC7Journal9BookAsset_metadata;
            goto LABEL_136;
          }

          v175 = *(v0 + 2216);
          v176 = *(v0 + 2184);
          v177 = *(v0 + 2176);
          v178 = *(v0 + 1648);
          v179 = *(v0 + 1600);
          v180 = *(v0 + 1592);

          v181 = sub_1000340DC(v169, v170);
          (*(v179 + 8))(v178, v180, v181);
          (*(v176 + 8))(v175, v177);
        }

        v21 = 0;
        goto LABEL_10;
      }

      v62 = *(v0 + 2216);
      v63 = *(v0 + 2184);
      v64 = *(v0 + 2176);
      v65 = *(v0 + 1984);
LABEL_42:
      (*(v63 + 8))(v62, v64);

      goto LABEL_58;
    }

    if (v37 == *(v0 + 2912))
    {
      break;
    }

    if (v37 != *(v0 + 2916))
    {
      if (v37 == *(v0 + 2920))
      {
        goto LABEL_131;
      }

      if (v37 == *(v0 + 2924))
      {
        v533 = *(v0 + 2988);
        v594 = *(v0 + 2980);
        v336 = *(v0 + 2256);
        v337 = *(v0 + 2248);
        v338 = *(v0 + 2056);
        v339 = *(v0 + 1904);
        v340 = *(v0 + 1872);
        v525 = *(v0 + 2048);
        v506 = *(v0 + 1864);
        v560 = *(v0 + 2160);
        v568 = *(v0 + 1376);
        v540 = *(v0 + 1384);
        v550 = *(v0 + 1352);
        v587 = *(v0 + 1344);
        v341 = *(v0 + 1336);
        v342 = swift_allocObject();
        *(v342 + 16) = xmmword_100940080;
        *(v342 + 56) = &type metadata for String;
        *(v342 + 32) = 0xD000000000000017;
        *(v342 + 40) = 0x80000001008FDC40;
        print(_:separator:terminator:)();

        Date.init()();
        v343 = *(v336 + 56);
        v343(v339, 0, 1, v337);
        v343(v340, 1, 1, v337);
        v343(v506, 1, 1, v337);
        v344 = *(v338 + 104);
        v344(v341, v533, v525);
        (*(v338 + 56))(v341, 0, 1, v525);
        VisitAssetMetadata.init(placeName:city:typeOfPlace:visitStartTime:visitEndTime:createdDate:latitude:longitude:styleData:mapItemData:isWork:confidenceLevel:horizontalAccuracy:assetSource:)();
        v344(v560, v594, v525);
        (*(v550 + 16))(v568, v540, v587);
        v242 = sub_10033CC64(v560, v568);
        (*(v550 + 8))(v540, v587);
        goto LABEL_107;
      }

      if (v37 == *(v0 + 2928))
      {
        v137 = *(v0 + 1944);
        v138 = *(v0 + 1936);
        v139 = *(v0 + 1600);
        v140 = *(v0 + 1592);
        v141 = [objc_allocWithZone(LPLinkMetadata) init];
        *(v0 + 2712) = v141;
        URL.init(string:)();
        sub_1000082B4(v137, v138, &unk_100AD6DD0, &qword_1009437C0);
        v565 = *(v139 + 48);
        if ((v565)(v138, 1, v140) == 1)
        {
          v143 = 0;
        }

        else
        {
          v182 = *(v0 + 1936);
          v183 = *(v0 + 1600);
          v184 = *(v0 + 1592);
          URL._bridgeToObjectiveC()(v142);
          v143 = v185;
          (*(v183 + 8))(v182, v184);
        }

        v186 = *(v0 + 1928);
        v187 = *(v0 + 1592);
        [v141 setURL:v143];

        URL.init(string:)();
        v188 = (v565)(v186, 1, v187);
        if (v188 == 1)
        {
          goto LABEL_164;
        }

        v197 = *(v0 + 1928);
        v198 = *(v0 + 1600);
        v199 = *(v0 + 1592);
        URL._bridgeToObjectiveC()(v196);
        v201 = v200;
        v202 = *(v198 + 8);
        *(v0 + 2720) = v202;
        *(v0 + 2728) = (v198 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v202(v197, v199);
        [v141 setOriginalURL:v201];

        *(v0 + 656) = 0x20656C707041;
        *(v0 + 664) = 0xE600000000000000;
        *(v0 + 696) = 0;
        swift_stdlib_random();
        v203 = *(v0 + 696);
        if (((100 * v203) & 0xFFFFFFFFFFFFFFF0) != 0)
        {
          v204 = (v203 * 0x64uLL) >> 64;
        }

        else
        {
          v205 = (v0 + 688);
          do
          {
            *v205 = 0;
            swift_stdlib_random();
            v205 = (v0 + 688);
          }

          while (((100 * *v543) & 0xFFFFFFFFFFFFFFF0) == 0);
          v204 = (*v543 * 0x64uLL) >> 64;
        }

        v206 = *(v0 + 1944);
        v207 = *(v0 + 1920);
        v208 = *(v0 + 1592);
        *(v0 + 864) = v204;
        v209._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v209);

        v210 = String._bridgeToObjectiveC()();

        [v141 setTitle:v210];

        sub_1000082B4(v206, v207, &unk_100AD6DD0, &qword_1009437C0);
        if ((v565)(v207, 1, v208) != 1)
        {
          v364 = *(v0 + 2980);
          v365 = *(v0 + 2104);
          v366 = *(v0 + 2056);
          v367 = *(v0 + 2048);
          v368 = *(v0 + 1616);
          v369 = *(v0 + 1608);
          v370 = *(v0 + 1600);
          v371 = *(v0 + 1592);
          (*(v370 + 32))(v368, *(v0 + 1920), v371);
          (*(v366 + 104))(v365, v364, v367);
          (*(v370 + 16))(v369, v368, v371);
          Date.init()();
          v372 = swift_task_alloc();
          *(v0 + 2736) = v372;
          *v372 = v0;
          v372[1] = sub_1005D69DC;
          v373 = *(v0 + 2288);
          v374 = *(v0 + 2104);
          v375 = *(v0 + 1608);
          v376 = *(v0 + 880);
          v377 = *(v0 + 872);

          return sub_1001DEA08(v377, v376, v374, v375, 0, 0, v373);
        }

        v211 = *(v0 + 2216);
        v212 = *(v0 + 2184);
        v213 = *(v0 + 2176);
        v214 = *(v0 + 1944);
        v215 = *(v0 + 1920);

        sub_100004F84(v214, &unk_100AD6DD0, &qword_1009437C0);
        (*(v212 + 8))(v211, v213);
        v131 = v215;
        goto LABEL_59;
      }

      if (v37 == *(v0 + 2932))
      {
        v265 = swift_task_alloc();
        *(v0 + 2760) = v265;
        *(v265 + 16) = 1;
        v362 = swift_task_alloc();
        *(v0 + 2768) = v362;
        v363 = sub_1000F24EC(&qword_100AEABF0, &qword_10095F7D0);
        *v362 = v0;
        v362[1] = sub_1005DB91C;
        v190 = *(v0 + 880);
        v189 = *(v0 + 872);
        v195 = v363;
        v193 = sub_1005ED67C;
        v188 = v0 + 712;
LABEL_115:
        v192 = 0x80000001008FDB40;
        v191 = 0xD000000000000024;
        v194 = v265;

        return withCheckedContinuation<A>(isolation:function:_:)(v188, v189, v190, v191, v192, v193, v194, v195);
      }

      if (v37 == *(v0 + 2936))
      {
        v265 = swift_task_alloc();
        *(v0 + 2776) = v265;
        *(v265 + 16) = 1;
        v378 = swift_task_alloc();
        *(v0 + 2784) = v378;
        v379 = sub_1000F24EC(&qword_100AEABF0, &qword_10095F7D0);
        *v378 = v0;
        v378[1] = sub_1005DC438;
        v190 = *(v0 + 880);
        v189 = *(v0 + 872);
        v195 = v379;
        v193 = sub_1005ED67C;
        v188 = v0 + 720;
        goto LABEL_115;
      }

      if (v37 == *(v0 + 2940))
      {
        v380 = sub_1005ED3EC(v37, -90.0, 90.0);
        v382 = v381;
        sub_1005ED3EC(v380, -180.0, 180.0);
        v384 = v383;
        *v422 = _swiftEmptyArrayStorage;
        v188 = sub_1006A699C();
        if (v188 + 5000 >= 1)
        {
          v385 = v188 + 4999;
          v114 = 1;
          while (1)
          {
            v386 = sub_1005ED3EC(v188, -0.01, 0.01);
            v382 = v382 + v387;
            sub_1005ED3EC(v386, -0.01, 0.01);
            v384 = v384 + v388;
            [objc_allocWithZone(CLLocation) initWithLatitude:v382 longitude:v384];
            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            if (*((*v422 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v422 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            v188 = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            if (!v385)
            {
              break;
            }

            --v385;
            if (__OFADD__(v114++, 1))
            {
              __break(1u);
              goto LABEL_162;
            }
          }

          v428 = *(v0 + 2940);
          v390 = *(v0 + 2304);
          v408 = *(v0 + 2280);
          v391 = *(v0 + 2256);
          v392 = *(v0 + 2248);
          v416 = *(v0 + 2200);
          v453 = *(v0 + 2192);
          v569 = *(v0 + 2184);
          v413 = *(v0 + 2176);
          v420 = *(v0 + 2160);
          v459 = *(v0 + 2152);
          v580 = *(v0 + 2080);
          v589 = *(v0 + 2048);
          v596 = *(v0 + 2056);
          v468 = *(v0 + 1904);
          v477 = *(v0 + 1872);
          v393 = *(v0 + 1792);
          v535 = *(v0 + 1784);
          v541 = *(v0 + 1744);
          v436 = *(v0 + 1736);
          v553 = *(v0 + 1728);
          v563 = *(v0 + 1720);
          v492 = *(v0 + 1176);
          v501 = *(v0 + 1168);
          v508 = *(v0 + 1152);
          v517 = *(v0 + 1160);
          (*(v596 + 104))();
          Date.init()();
          Date.addingTimeInterval(_:)();
          v394 = *(v391 + 8);
          v394(v390, v392);
          v405 = *(v391 + 56);
          v405(v393, 0, 1, v392);
          Date.init()();
          Date.addingTimeInterval(_:)();
          v394(v390, v392);
          sub_1006A699C();
          Date.addingTimeInterval(_:)();
          v394(v408, v392);
          v405(v535, 0, 1, v392);
          sub_1006A699C();
          sub_1006A699C();
          (*(v569 + 104))(v416, v428, v413);
          v429 = *(v596 + 16);
          v429(v420, v580, v589);
          UUID.init()();
          *(objc_allocWithZone(type metadata accessor for WorkoutRouteAsset(0)) + OBJC_IVAR____TtC7Journal17WorkoutRouteAsset_metadata) = 0;
          (*(v553 + 16))(v436, v541, v563);
          v35(v453, v416, v413);
          v429(v459, v420, v589);
          v395 = sub_100285908(v436, v453, v459);
          (*(v553 + 8))(v541, v563);
          v564 = *(v596 + 8);
          v564(v420, v589);
          (*(v569 + 8))(v416, v413);
          sub_1000082B4(v393, v468, &unk_100AD4790, &unk_10093B4E0);
          sub_1000082B4(v535, v477, &unk_100AD4790, &unk_10093B4E0);
          v242 = v395;
          WorkoutRouteAssetMetadata.init(route:type:duration:startTime:endTime:mindfulnessHeartRate:caloriesBurnt:calories:distance:)();
          sub_100004F84(v535, &unk_100AD4790, &unk_10093B4E0);
          sub_100004F84(v393, &unk_100AD4790, &unk_10093B4E0);
          v564(v580, v589);
          (*(v501 + 32))(v508, v492, v517);
          swift_storeEnumTagMultiPayload();
          sub_1000F24EC(&qword_100AE0E20, &unk_100962DF0);
          v396 = swift_allocObject();
          v397 = *(*v396 + 104);
          v398 = sub_1000F24EC(&qword_100AD5B28, &unk_10094FA90);
          (*(*(v398 - 8) + 56))(v396 + v397, 1, 1, v398);
          *(v396 + *(*v396 + 112)) = xmmword_100941EE0;
          sub_100021CEC(v508, v396 + *(*v396 + 120), &qword_100ADA8A0, &unk_100952480);
          *&v242[OBJC_IVAR____TtC7Journal17WorkoutRouteAsset_metadata] = v396;

          goto LABEL_107;
        }

        __break(1u);
LABEL_164:
        __break(1u);
        return withCheckedContinuation<A>(isolation:function:_:)(v188, v189, v190, v191, v192, v193, v194, v195);
      }

      if (v37 != *(v0 + 2944))
      {
        if (v37 == *(v0 + 2948))
        {
          v399 = *(v0 + 2160);
          (*(*(v0 + 2056) + 104))(v399, *(v0 + 2980), *(v0 + 2048));
          v242 = sub_10019BB28(v399, 0, 0);
          goto LABEL_107;
        }

        if (v37 == *(v0 + 2952))
        {
          v265 = swift_task_alloc();
          *(v0 + 2792) = v265;
          *(v265 + 16) = 1;
          v400 = swift_task_alloc();
          *(v0 + 2800) = v400;
          v401 = sub_1000F24EC(&qword_100AEABF0, &qword_10095F7D0);
          *v400 = v0;
          v400[1] = sub_1005DCF44;
          v190 = *(v0 + 880);
          v189 = *(v0 + 872);
          v195 = v401;
          v193 = sub_1005ED67C;
          v188 = v0 + 760;
          goto LABEL_115;
        }

        if (v37 != *(v0 + 2956) && v37 != *(v0 + 2960) && v37 != *(v0 + 2964) && v37 != *(v0 + 2968))
        {
          if (v37 == *(v0 + 2972))
          {
            goto LABEL_158;
          }

          if (v37 != *(v0 + 2976))
          {

            return _diagnoseUnexpectedEnumCase<A>(type:)();
          }
        }
      }
    }

LABEL_9:
    (*(*(v0 + 2184) + 8))(*(v0 + 2216), *(v0 + 2176));
LABEL_10:
    v3 = *(v0 + 2608) + 1;
    if (v3 == *(v0 + 912))
    {
      goto LABEL_3;
    }
  }

  v74 = *(v0 + 1744);
  v75 = *(v0 + 1728);
  v76 = *(v0 + 1720);
  v77 = swift_allocObject();
  *(v77 + 16) = xmmword_100940080;
  *(v77 + 56) = &type metadata for String;
  *(v77 + 32) = 0xD000000000000012;
  *(v77 + 40) = 0x80000001008FDC00;
  print(_:separator:terminator:)();

  UUID.init()();
  v78 = UUID.uuidString.getter();
  v80 = v79;
  v81 = *(v75 + 8);
  *(v0 + 2648) = v81;
  *(v0 + 2656) = (v75 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v81(v74, v76);
  if (qword_100AD0060 != -1)
  {
    swift_once();
  }

  v82 = *(v0 + 1672);
  v83 = *(v0 + 1600);
  v84 = *(v0 + 1592);
  v85 = type metadata accessor for FileStoreConfiguration();
  sub_10000617C(v85, qword_100B2FC48);
  FileStoreConfiguration.temporaryDirectoryURL.getter();
  *(v0 + 640) = v78;
  *(v0 + 648) = v80;
  v86._countAndFlagsBits = 1717658414;
  v86._object = 0xE400000000000000;
  String.append(_:)(v86);
  URL.appendingPathComponent(_:)();

  v87 = *(v83 + 8);
  *(v0 + 2664) = v87;
  *(v0 + 2672) = (v83 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v87(v82, v84);
  v88 = sub_1001C075C(5, &off_100A57518);
  v90 = v89;
  *(v0 + 2680) = v89;
  v91 = objc_opt_self();
  v92 = [v91 defaultManager];
  URL.absoluteString.getter();
  v93 = String._bridgeToObjectiveC()();

  v94 = [v92 fileExistsAtPath:v93];

  if (!v94)
  {
    goto LABEL_124;
  }

  v95 = [v91 defaultManager];
  URL._bridgeToObjectiveC()(v96);
  v98 = v97;
  *(v0 + 744) = 0;
  v99 = [v95 removeItemAtURL:v97 error:v0 + 744];

  v100 = *(v0 + 744);
  if (!v99)
  {
    v101 = v100;

    v102 = _convertNSErrorToError(_:)();

    swift_willThrow();
    v528 = v102;
    v565 = *(v0 + 2672);
    v103 = *(v0 + 2664);
    v104 = *(v0 + 2216);
    v105 = *(v0 + 2184);
    v106 = *(v0 + 2176);
    v107 = *(v0 + 1640);
    v108 = *(v0 + 1592);
    v109 = swift_allocObject();
    *(v109 + 16) = xmmword_100940080;
    *(v0 + 592) = 0;
    *(v0 + 600) = 0xE000000000000000;
    _StringGuts.grow(_:)(28);
    v110 = *(v0 + 600);
    *(v0 + 608) = *(v0 + 592);
    *(v0 + 616) = v110;
    v111._object = 0x80000001008FDC20;
    v111._countAndFlagsBits = 0x100000000000001ALL;
    String.append(_:)(v111);
    *(v0 + 728) = v102;
    sub_1000F24EC(&qword_100AD5BC0, &qword_100943550);
    _print_unlocked<A, B>(_:_:)();
    v112 = *(v0 + 608);
    v113 = *(v0 + 616);
    *(v109 + 56) = &type metadata for String;
    *(v109 + 32) = v112;
    *(v109 + 40) = v113;
    print(_:separator:terminator:)();

    v103(v107, v108);
    (*(v105 + 8))(v104, v106);
    v21 = 0;
    goto LABEL_10;
  }

  v293 = v100;
LABEL_124:
  v294 = swift_task_alloc();
  *(v0 + 2688) = v294;
  *v294 = v0;
  v294[1] = sub_1005D08E4;
  v295 = *(v0 + 1640);
  v296 = *(v0 + 880);
  v297 = *(v0 + 872);

  return sub_10016A7C4(v297, v296, v88, v90, v295);
}

uint64_t sub_1005D69DC(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 2744) = v1;

  if (v1)
  {

    v5 = v4[300];
    v6 = v4[299];
    v7 = sub_1005D6E88;
  }

  else
  {
    v4[344] = a1;
    v5 = v4[300];
    v6 = v4[299];
    v7 = sub_1005D6B3C;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_1005D6B3C()
{
  v1 = *(v0 + 2720);
  v2 = *(v0 + 1944);
  v3 = *(v0 + 1616);
  v4 = *(v0 + 1592);

  v1(v3, v4);
  sub_100004F84(v2, &unk_100AD6DD0, &qword_1009437C0);
  v5 = *(v0 + 2752);
  v6 = *(v0 + 2744);
  *(v0 + 2832) = v5;
  *(v0 + 2824) = v6;
  v7 = *(v0 + 2608);
  v30 = *(v0 + 3004);
  v31 = *(v0 + 3008);
  v8 = *(v0 + 992);
  v9 = *(v0 + 984);
  v29 = *(v0 + 976);
  v10 = *(v0 + 968);
  v11 = *(v0 + 960);
  v12 = *(v0 + 952);
  v13 = *(v0 + 896);
  *(v0 + 576) = *(v0 + 888);
  *(v0 + 584) = v13;

  v14._countAndFlagsBits = 0x20746573734120;
  v14._object = 0xE700000000000000;
  String.append(_:)(v14);
  *(v0 + 768) = v7;
  v15._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v15);

  v16 = objc_allocWithZone(NSAttributedString);
  v17 = String._bridgeToObjectiveC()();

  v18 = [v16 initWithString:v17];

  v19 = *(v5 + OBJC_IVAR____TtC7Journal5Asset_title);
  *(v5 + OBJC_IVAR____TtC7Journal5Asset_title) = v18;

  *v8 = static AssetPlacement.maxGridCount.getter();
  (*(v9 + 104))(v8, v30, v29);
  (*(v11 + 104))(v10, v31, v12);
  LOBYTE(v17) = JournalFeatureFlags.isEnabled.getter();
  (*(v11 + 8))(v10, v12);
  if (v17)
  {
    *(v0 + 2840) = CFAbsoluteTimeGetCurrent();
    v20 = swift_task_alloc();
    *(v0 + 2848) = v20;
    *v20 = v0;
    v20[1] = sub_1005DEA30;
    v21 = *(v0 + 992);
    v22 = *(v0 + 880);
    v23 = *(v0 + 872);

    return sub_10056B238(v23, v22, v5, v21, 1);
  }

  else
  {
    v25 = swift_task_alloc();
    *(v0 + 2872) = v25;
    *v25 = v0;
    v25[1] = sub_1005DEE38;
    v26 = *(v0 + 992);
    v27 = *(v0 + 880);
    v28 = *(v0 + 872);

    return sub_1001F8424(v28, v27, v5, v26);
  }
}

uint64_t sub_1005D6E88()
{
  v1 = *(v0 + 2720);
  v2 = *(v0 + 1944);
  v3 = *(v0 + 1616);
  v4 = *(v0 + 1592);

  v1(v3, v4);
  sub_100004F84(v2, &unk_100AD6DD0, &qword_1009437C0);
  (*(*(v0 + 2184) + 8))(*(v0 + 2216), *(v0 + 2176));
  v5 = *(v0 + 2608) + 1;
  if (v5 == *(v0 + 912))
  {
LABEL_2:
    v6 = *(v0 + 2568);

    v7 = *(v0 + 8);
    v8 = *(v0 + 2536);

    return v7(v8);
  }

  v374 = (v0 + 688);
  v424 = (v0 + 752);
  v381 = (v0 + 776);
  v449 = (v0 + 784);
  v415 = (v0 + 808);
  v471 = (v0 + 816);
  v443 = (v0 + 840);
  v497 = 0x80000001008FDE10;
  v455 = 0x80000001008FDE30;
  v10 = &unk_100AD6DD0;
  while (1)
  {
    *(v0 + 2608) = v5;
    *(v0 + 2600) = 0;
    v11 = *(v0 + 2552);
    *(v0 + 832) = 0;
    swift_stdlib_random();
    v12 = *(v0 + 832);
    v13 = (v12 * v11) >> 64;
    v14 = v12 * v11;
    v15 = *(v0 + 2552);
    if (v11 > v14)
    {
      v16 = -v15 % v15;
      if (v16 > v14)
      {
        do
        {
          v17 = *(v0 + 2552);
          *(v0 + 680) = 0;
          swift_stdlib_random();
          v18 = *(v0 + 680);
        }

        while (v16 > v18 * v17);
        v13 = (v18 * v17) >> 64;
        v15 = *(v0 + 2552);
      }
    }

    if (v13 >= v15)
    {
      __break(1u);
LABEL_108:
      v487 = *(v0 + 2988);
      v421 = *(v0 + 2980);
      v241 = *(v0 + 2256);
      v242 = *(v0 + 2248);
      v411 = *(v0 + 2160);
      v243 = *(v0 + 2056);
      v482 = *(v0 + 2048);
      v244 = *(v0 + 1904);
      v245 = *(v0 + 1872);
      v246 = *(v0 + 1864);
      v446 = *(v0 + 1376);
      v501 = *(v0 + 1368);
      v458 = *(v0 + 1384);
      v466 = *(v0 + 1360);
      v452 = *(v0 + 1352);
      v404 = *(v0 + 1344);
      v247 = *(v0 + 1336);
      v248 = swift_allocObject();
      *(v248 + 16) = xmmword_100940080;
      *(v248 + 56) = &type metadata for String;
      *(v248 + 32) = 0xD000000000000018;
      *(v248 + 40) = 0x80000001008FDC60;
      print(_:separator:terminator:)();

      Date.init()();
      v249 = *(v241 + 56);
      v249(v244, 0, 1, v242);
      v249(v245, 1, 1, v242);
      v249(v246, 1, 1, v242);
      v508 = *(v243 + 104);
      v508(v247, v487, v482);
      v250 = *(v243 + 56);
      v250(v247, 0, 1, v482);
      VisitAssetMetadata.init(placeName:city:typeOfPlace:visitStartTime:visitEndTime:createdDate:latitude:longitude:styleData:mapItemData:isWork:confidenceLevel:horizontalAccuracy:assetSource:)();
      Date.init()();
      v249(v244, 0, 1, v242);
      v249(v245, 1, 1, v242);
      v249(v246, 1, 1, v242);
      v508(v247, v487, v482);
      v250(v247, 0, 1, v482);
      VisitAssetMetadata.init(placeName:city:typeOfPlace:visitStartTime:visitEndTime:createdDate:latitude:longitude:styleData:mapItemData:isWork:confidenceLevel:horizontalAccuracy:assetSource:)();
      Date.init()();
      v249(v244, 0, 1, v242);
      v249(v245, 1, 1, v242);
      v249(v246, 1, 1, v242);
      v508(v247, v487, v482);
      v250(v247, 0, 1, v482);
      VisitAssetMetadata.init(placeName:city:typeOfPlace:visitStartTime:visitEndTime:createdDate:latitude:longitude:styleData:mapItemData:isWork:confidenceLevel:horizontalAccuracy:assetSource:)();
      Date.init()();
      v249(v244, 0, 1, v242);
      v249(v245, 1, 1, v242);
      v249(v246, 1, 1, v242);
      v508(v247, v487, v482);
      v250(v247, 0, 1, v482);
      VisitAssetMetadata.init(placeName:city:typeOfPlace:visitStartTime:visitEndTime:createdDate:latitude:longitude:styleData:mapItemData:isWork:confidenceLevel:horizontalAccuracy:assetSource:)();
      sub_1000F24EC(&qword_100AD64A8, &qword_100945170);
      v251 = *(v452 + 72);
      v252 = (*(v452 + 80) + 32) & ~*(v452 + 80);
      v253 = swift_allocObject();
      *(v253 + 16) = xmmword_100941FE0;
      v254 = v253 + v252;
      v255 = *(v452 + 16);
      v255(v254, v458, v404);
      v255(v254 + v251, v446, v404);
      v255(v254 + 2 * v251, v501, v404);
      v255(v254 + 3 * v251, v466, v404);
      sub_1006ADB18(v253);
      v508(v411, v421, v482);
      v206 = sub_10011CEC0(v411, _swiftEmptyArrayStorage);
      v256 = *(v452 + 8);
      v256(v466, v404);
      v256(v501, v404);
      v256(v446, v404);
      v256(v458, v404);
      goto LABEL_130;
    }

    v19 = v10;
    v20 = *(v0 + 2888);
    v21 = *(v0 + 2216);
    v22 = *(v0 + 2208);
    v23 = *(v0 + 2184);
    v24 = *(v0 + 2176);
    v25 = *(v23 + 16);
    v26 = *(v0 + 904) + ((*(v0 + 2884) + 32) & ~*(v0 + 2884)) + *(v23 + 72) * v13;
    *(v0 + 2616) = v25;
    *(v0 + 2624) = (v23 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v25(v21, v26, v24);
    v25(v22, v21, v24);
    v27 = (*(v23 + 88))(v22, v24);
    if (v27 == v20)
    {
      v177 = swift_allocObject();
      *(v177 + 16) = xmmword_100940080;
      *(v177 + 56) = &type metadata for String;
      *(v177 + 32) = 0xD000000000000013;
      *(v177 + 40) = 0x80000001008FDEC0;
      print(_:separator:terminator:)();

      v178 = swift_task_alloc();
      *(v0 + 2632) = v178;
      *(v178 + 16) = 1;
      v179 = swift_task_alloc();
      *(v0 + 2640) = v179;
      v180 = sub_1000F24EC(&qword_100AEABF0, &qword_10095F7D0);
      *v179 = v0;
      v179[1] = sub_1005CAA34;
      v153 = *(v0 + 880);
      v152 = *(v0 + 872);
      v158 = v180;
      v156 = sub_1005ED67C;
      v151 = v0 + 848;
      goto LABEL_92;
    }

    if (v27 == *(v0 + 2892))
    {
      goto LABEL_6;
    }

    if (v27 == *(v0 + 2896))
    {
      v181 = swift_allocObject();
      *(v181 + 16) = xmmword_100940080;
      *(v181 + 56) = &type metadata for String;
      *(v181 + 32) = 0xD000000000000013;
      *(v181 + 40) = 0x80000001008FDBE0;
      print(_:separator:terminator:)();

      v182 = swift_task_alloc();
      *(v0 + 2704) = v182;
      *v182 = v0;
      v182[1] = sub_1005D1548;
      v183 = *(v0 + 1264);
      v184 = *(v0 + 880);
      v185 = *(v0 + 872);

      return sub_1006A580C(v183, v185, v184);
    }

    if (v27 == *(v0 + 2900))
    {
      v28 = swift_allocObject();
      *(v28 + 16) = xmmword_100940080;
      *(v28 + 56) = &type metadata for String;
      *(v28 + 32) = 0xD000000000000012;
      *(v28 + 40) = 0x80000001008FDE10;
      print(_:separator:terminator:)();

      v29 = *(v0 + 112);
      v30 = *(v29 + 16);
      if (!v30)
      {
        goto LABEL_41;
      }

      *v471 = 0;
      swift_stdlib_random();
      v31 = *v471 * v30;
      v32 = (*v471 * v30) >> 64;
      if (v30 > v31)
      {
        v33 = -v30 % v30;
        if (v33 > v31)
        {
          do
          {
            *v443 = 0;
            swift_stdlib_random();
          }

          while (v33 > *v443 * v30);
          v32 = (*v443 * v30) >> 64;
        }
      }

      if (v32 < *(v29 + 16))
      {
        swift_beginAccess();

        sub_100691A14(v32);
        swift_endAccess();

LABEL_41:
        v46 = *(v0 + 2024);
        v47 = *(v0 + 1600);
        v48 = *(v0 + 1592);
        URL.init(string:)();
        if ((*(v47 + 48))(v46, 1, v48) == 1)
        {
          v49 = *(v0 + 2216);
          v50 = *(v0 + 2184);
          v51 = *(v0 + 2176);
          v52 = *(v0 + 2024);
LABEL_52:
          (*(v50 + 8))(v49, v51);

LABEL_53:

          v96 = v52;
          v97 = v10;
LABEL_54:
          sub_100004F84(v96, v97, &qword_1009437C0);
          goto LABEL_8;
        }

        (*(*(v0 + 1600) + 32))(*(v0 + 1664), *(v0 + 2024), *(v0 + 1592));
        v53 = Data.init(contentsOf:options:)();
        v478 = 0;
        v100 = v99;
        v101 = v53;
        v102 = objc_allocWithZone(UIImage);
        sub_100049ED8(v101, v100);
        isa = Data._bridgeToObjectiveC()().super.isa;
        v104 = [v102 initWithData:isa];
        v105 = v101;
        v106 = v104;

        v107 = sub_1000340DC(v101, v100);
        if (v106)
        {
          v449 = v101;
          v455 = v100;
          v368 = *(v0 + 3000);
          v388 = *(v0 + 2900);
          v186 = *(v0 + 2256);
          v364 = *(v0 + 2248);
          v463 = *(v0 + 2200);
          v425 = *(v0 + 2192);
          v187 = *(v0 + 2184);
          v375 = *(v0 + 2176);
          v479 = *(v0 + 2160);
          v432 = *(v0 + 2152);
          v361 = *(v0 + 2144);
          v506 = *(v0 + 2056);
          v472 = *(v0 + 2048);
          v416 = *(v0 + 2016);
          v353 = *(v0 + 1896);
          v382 = *(v0 + 1744);
          v400 = *(v0 + 1736);
          v498 = *(v0 + 1728);
          v407 = *(v0 + 1720);
          v438 = *(v0 + 1712);
          v188 = *(v0 + 1600);
          v189 = *(v0 + 1592);
          v358 = *(v0 + 1544);
          v190 = *(v0 + 1528);
          v355 = *(v0 + 1520);
          (*(v506 + 104))(v107);

          (*(v188 + 56))(v416, 1, 1, v189);
          v417 = v106;
          Date.init()();
          (*(v186 + 56))(v353, 0, 1, v364);
          (*(v190 + 104))(v358, v368, v355);
          (*(v187 + 104))(v463, v388, v375);
          v389 = *(v506 + 16);
          v389(v479, v361, v472);
          UUID.init()();
          *(objc_allocWithZone(type metadata accessor for MusicAsset(0)) + OBJC_IVAR____TtC7Journal10MusicAsset_metadata) = 0;
          (*(v498 + 16))(v400, v382, v407);
          v25(v425, v463, v375);
          v191 = v479;
          v389(v432, v479, v472);
          v192 = sub_100285908(v400, v425, v432);
          v193 = *(v498 + 8);
          v193(v382, v407);
          v478 = *(v506 + 8);
          v478(v191, v472);
          (*(v187 + 8))(v463, v375);
          *v438 = v417;
          swift_storeEnumTagMultiPayload();
          v471 = v417;
          UUID.init()();
          v194 = UUID.uuidString.getter();
          v196 = v195;
          v193(v382, v407);
          type metadata accessor for AssetAttachment(0);
          v197 = swift_allocObject();
          *(v197 + 16) = 0;
          sub_1005ED56C(v438, v197 + OBJC_IVAR____TtC7Journal15AssetAttachment_assetType, type metadata accessor for AssetAttachment.AssetType);
          v198 = (v197 + OBJC_IVAR____TtC7Journal15AssetAttachment_fileNameID);
          *v198 = v194;
          v198[1] = v196;
          v199 = OBJC_IVAR____TtC7Journal5Asset_sourceAttachments;
          swift_beginAccess();
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          v497 = v192;
          if (*((*(v192 + v199) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v192 + v199) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
LABEL_146:
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          v426 = *(v0 + 2048);
          v433 = *(v0 + 2144);
          v200 = *(v0 + 2016);
          v201 = *(v0 + 2008);
          v369 = *(v0 + 1904);
          v202 = *(v0 + 1896);
          v439 = *(v0 + 1664);
          v394 = *(v0 + 1600);
          v418 = *(v0 + 1592);
          v383 = *(v0 + 1544);
          v203 = *(v0 + 1528);
          v376 = *(v0 + 1520);
          v390 = *(v0 + 1512);
          v408 = *(v0 + 1504);
          v444 = *(v0 + 1496);
          v204 = *(v0 + 1488);
          v401 = *(v0 + 1480);
          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          swift_endAccess();
          sub_1000082B4(v200, v201, &unk_100AD6DD0, &qword_1009437C0);
          sub_1000082B4(v202, v369, &unk_100AD4790, &unk_10093B4E0);
          (*(v203 + 16))(v204, v383, v376);
          (*(v203 + 56))(v204, 0, 1, v376);
          MusicAssetMetadata.init(mediaId:mediaURL:artistName:song:albumName:numberOfTimesPlayed:startTime:mediaType:)();

          v205 = sub_1000340DC(v449, v455);
          (*(v203 + 8))(v383, v376, v205);
          sub_100004F84(v202, &unk_100AD4790, &unk_10093B4E0);
          sub_100004F84(v200, &unk_100AD6DD0, &qword_1009437C0);
          v478(v433, v426);
          v206 = v497;
          (*(v394 + 8))(v439, v418);
          (*(v408 + 32))(v401, v390, v444);
          swift_storeEnumTagMultiPayload();
          sub_1000F24EC(&qword_100AE0E90, &unk_1009525D0);
          v207 = swift_allocObject();
          v208 = *(*v207 + 104);
          v209 = sub_1000F24EC(&qword_100AD6F70, &unk_100962D80);
          (*(*(v209 - 8) + 56))(v207 + v208, 1, 1, v209);
          *(v207 + *(*v207 + 112)) = xmmword_100941EE0;
          sub_100021CEC(v401, v207 + *(*v207 + 120), &qword_100ADA8E0, &unk_100962D70);
          v210 = &OBJC_IVAR____TtC7Journal10MusicAsset_metadata;
          goto LABEL_113;
        }

        v492 = *(v0 + 2216);
        v108 = *(v0 + 2184);
        v109 = *(v0 + 2176);
        v110 = *(v0 + 1664);
LABEL_69:
        v129 = *(v0 + 1600);
        v130 = *(v0 + 1592);

        v131 = sub_1000340DC(v105, v100);
        (*(v129 + 8))(v110, v130, v131);
        (*(v108 + 8))(v492, v109);
LABEL_7:
        v10 = v19;
        goto LABEL_8;
      }

      __break(1u);
LABEL_140:
      __break(1u);
LABEL_141:
      __break(1u);
LABEL_142:
      v178 = swift_task_alloc();
      *(v0 + 2808) = v178;
      *(v178 + 16) = 1;
      v350 = swift_task_alloc();
      *(v0 + 2816) = v350;
      v351 = sub_1000F24EC(&qword_100AEABF0, &qword_10095F7D0);
      *v350 = v0;
      v350[1] = sub_1005DDCB8;
      v153 = *(v0 + 880);
      v152 = *(v0 + 872);
      v158 = v351;
      v156 = sub_1005ED564;
      v151 = v0 + 824;
LABEL_92:
      v155 = 0x80000001008FDB40;
      v154 = 0xD000000000000024;
      v157 = v178;

      return withCheckedContinuation<A>(isolation:function:_:)(v151, v152, v153, v154, v155, v156, v157, v158);
    }

    if (v27 == *(v0 + 2904))
    {
      v34 = swift_allocObject();
      *(v34 + 16) = xmmword_100940080;
      *(v34 + 56) = &type metadata for String;
      *(v34 + 32) = 0xD000000000000015;
      *(v34 + 40) = 0x80000001008FDD50;
      print(_:separator:terminator:)();

      v35 = *(v0 + 120);
      v36 = *(v35 + 16);
      if (v36)
      {
        *v449 = 0;
        swift_stdlib_random();
        v37 = *v449 * v36;
        v38 = (*v449 * v36) >> 64;
        if (v36 > v37)
        {
          v39 = -v36 % v36;
          if (v39 > v37)
          {
            do
            {
              *v415 = 0;
              swift_stdlib_random();
            }

            while (v39 > *v415 * v36);
            v38 = (*v415 * v36) >> 64;
          }
        }

        if (v38 >= *(v35 + 16))
        {
          goto LABEL_140;
        }

        swift_beginAccess();

        sub_100691A14(v38);
        swift_endAccess();
      }

      v93 = *(v0 + 2000);
      v94 = *(v0 + 1600);
      v95 = *(v0 + 1592);
      URL.init(string:)();
      if ((*(v94 + 48))(v93, 1, v95) == 1)
      {
        v49 = *(v0 + 2216);
        v50 = *(v0 + 2184);
        v51 = *(v0 + 2176);
        v52 = *(v0 + 2000);
        goto LABEL_52;
      }

      (*(*(v0 + 1600) + 32))(*(v0 + 1656), *(v0 + 2000), *(v0 + 1592));
      v98 = Data.init(contentsOf:options:)();
      v478 = 0;
      v100 = v122;
      v123 = v98;
      v124 = objc_allocWithZone(UIImage);
      sub_100049ED8(v123, v100);
      v125 = Data._bridgeToObjectiveC()().super.isa;
      v126 = [v124 initWithData:v125];
      v105 = v123;
      v127 = v126;

      v128 = sub_1000340DC(v123, v100);
      if (v127)
      {
        v440 = v123;
        v445 = v100;
        v377 = *(v0 + 2992);
        v395 = *(v0 + 2904);
        v362 = *(v0 + 2256);
        v370 = *(v0 + 2248);
        v384 = *(v0 + 2200);
        v409 = *(v0 + 2192);
        v216 = *(v0 + 2184);
        v450 = *(v0 + 2176);
        v480 = *(v0 + 2160);
        v419 = *(v0 + 2152);
        v365 = *(v0 + 2136);
        v507 = *(v0 + 2056);
        v464 = *(v0 + 2048);
        v217 = *(v0 + 1992);
        v354 = *(v0 + 1888);
        v456 = *(v0 + 1744);
        v402 = *(v0 + 1736);
        v499 = *(v0 + 1728);
        v473 = *(v0 + 1720);
        v427 = *(v0 + 1712);
        v352 = *(v0 + 1656);
        v218 = *(v0 + 1600);
        v219 = *(v0 + 1592);
        v359 = *(v0 + 1536);
        v220 = *(v0 + 1528);
        v356 = *(v0 + 1520);
        (*(v507 + 104))(v128);

        (*(v218 + 16))(v217, v352, v219);
        (*(v218 + 56))(v217, 0, 1, v219);
        Date.init()();
        (*(v362 + 56))(v354, 0, 1, v370);
        (*(v220 + 104))(v359, v377, v356);
        (*(v216 + 104))(v384, v395, v450);
        v396 = *(v507 + 16);
        v396(v480, v365, v464);
        UUID.init()();
        *(objc_allocWithZone(type metadata accessor for PodcastAsset(0)) + OBJC_IVAR____TtC7Journal12PodcastAsset_metadata) = 0;
        (*(v499 + 16))(v402, v456, v473);
        v25(v409, v384, v450);
        v221 = v480;
        v396(v419, v480, v464);
        v222 = sub_100285908(v402, v409, v419);
        v223 = *(v499 + 8);
        v223(v456, v473);
        v481 = *(v507 + 8);
        v481(v221, v464);
        (*(v216 + 8))(v384, v450);
        *v427 = v127;
        swift_storeEnumTagMultiPayload();
        v224 = v222;
        v465 = v127;
        UUID.init()();
        v225 = UUID.uuidString.getter();
        v227 = v226;
        v223(v456, v473);
        type metadata accessor for AssetAttachment(0);
        v228 = swift_allocObject();
        *(v228 + 16) = 0;
        sub_1005ED56C(v427, v228 + OBJC_IVAR____TtC7Journal15AssetAttachment_assetType, type metadata accessor for AssetAttachment.AssetType);
        v229 = (v228 + OBJC_IVAR____TtC7Journal15AssetAttachment_fileNameID);
        *v229 = v225;
        v229[1] = v227;
        v230 = OBJC_IVAR____TtC7Journal5Asset_sourceAttachments;
        swift_beginAccess();
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        v500 = v224;
        if (*((*(v224 + v230) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v224 + v230) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        v428 = *(v0 + 2048);
        v434 = *(v0 + 2136);
        v231 = *(v0 + 2008);
        v232 = *(v0 + 1992);
        v378 = *(v0 + 1904);
        v371 = *(v0 + 1888);
        v457 = *(v0 + 1656);
        v397 = *(v0 + 1600);
        v420 = *(v0 + 1592);
        v385 = *(v0 + 1536);
        v233 = *(v0 + 1528);
        v234 = *(v0 + 1520);
        v235 = *(v0 + 1488);
        v391 = *(v0 + 1464);
        v403 = *(v0 + 1456);
        v451 = *(v0 + 1448);
        v410 = *(v0 + 1440);
        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        swift_endAccess();
        sub_1000082B4(v232, v231, &unk_100AD6DD0, &qword_1009437C0);
        sub_1000082B4(v371, v378, &unk_100AD4790, &unk_10093B4E0);
        (*(v233 + 16))(v235, v385, v234);
        (*(v233 + 56))(v235, 0, 1, v234);
        v206 = v500;
        PodcastAssetMetadata.init(mediaId:title:author:mediaURL:timePlayed:numberOfTimesPlayed:mediaType:)();

        v236 = sub_1000340DC(v440, v445);
        (*(v233 + 8))(v385, v234, v236);
        sub_100004F84(v371, &unk_100AD4790, &unk_10093B4E0);
        sub_100004F84(v232, &unk_100AD6DD0, &qword_1009437C0);
        v481(v434, v428);
        (*(v397 + 8))(v457, v420);
        (*(v403 + 32))(v410, v391, v451);
        swift_storeEnumTagMultiPayload();
        sub_1000F24EC(&qword_100AE0E80, &unk_1009525A0);
        v237 = swift_allocObject();
        v238 = *(*v237 + 104);
        v239 = sub_1000F24EC(&qword_100AD2A70, &qword_100952E00);
        (*(*(v239 - 8) + 56))(v237 + v238, 1, 1, v239);
        *(v237 + *(*v237 + 112)) = xmmword_100941EE0;
        sub_100021CEC(v410, v237 + *(*v237 + 120), &qword_100ADA958, &unk_100960730);
        v240 = &OBJC_IVAR____TtC7Journal12PodcastAsset_metadata;
        goto LABEL_128;
      }

      v492 = *(v0 + 2216);
      v108 = *(v0 + 2184);
      v109 = *(v0 + 2176);
      v110 = *(v0 + 1656);
      goto LABEL_69;
    }

    if (v27 == *(v0 + 2908))
    {
      v40 = swift_allocObject();
      *(v40 + 16) = xmmword_100940080;
      *(v40 + 56) = &type metadata for String;
      *(v40 + 32) = 0xD000000000000012;
      *(v40 + 40) = 0x80000001008FDCA0;
      print(_:separator:terminator:)();

      v41 = *(v0 + 128);
      v42 = *(v41 + 16);
      if (v42)
      {
        *v424 = 0;
        swift_stdlib_random();
        v43 = *v424 * v42;
        v44 = (*v424 * v42) >> 64;
        if (v42 > v43)
        {
          v45 = -v42 % v42;
          if (v45 > v43)
          {
            do
            {
              *v381 = 0;
              swift_stdlib_random();
            }

            while (v45 > *v381 * v42);
            v44 = (*v381 * v42) >> 64;
          }
        }

        if (v44 >= *(v41 + 16))
        {
          goto LABEL_141;
        }

        swift_beginAccess();

        sub_100691A14(v44);
        swift_endAccess();
      }

      v119 = *(v0 + 1984);
      v120 = *(v0 + 1600);
      v121 = *(v0 + 1592);
      URL.init(string:)();
      if ((*(v120 + 48))(v119, 1, v121) == 1)
      {
        v52 = *(v0 + 1984);
        (*(*(v0 + 2184) + 8))(*(v0 + 2216), *(v0 + 2176));

        goto LABEL_53;
      }

      (*(*(v0 + 1600) + 32))(*(v0 + 1648), *(v0 + 1984), *(v0 + 1592));
      v478 = 0;
      v132 = Data.init(contentsOf:options:)();
      v134 = v133;
      v135 = objc_allocWithZone(UIImage);
      sub_100049ED8(v132, v134);
      v136 = Data._bridgeToObjectiveC()().super.isa;
      v137 = [v135 initWithData:v136];

      v138 = sub_1000340DC(v132, v134);
      if (v137)
      {
        v447 = v132;
        v454 = v134;
        v386 = *(v0 + 2908);
        v268 = *(v0 + 2256);
        v379 = *(v0 + 2248);
        v460 = *(v0 + 2200);
        v412 = *(v0 + 2192);
        v269 = *(v0 + 2184);
        v405 = v269;
        v270 = *(v0 + 2176);
        v484 = *(v0 + 2160);
        v422 = *(v0 + 2152);
        v372 = *(v0 + 2128);
        v271 = *(v0 + 1880);
        v468 = *(v0 + 1744);
        v475 = *(v0 + 2048);
        v392 = *(v0 + 1736);
        v509 = *(v0 + 1728);
        v398 = *(v0 + 1720);
        v435 = *(v0 + 1712);
        v503 = *(v0 + 2056);
        (*(v503 + 104))(v138);

        v429 = v137;
        Date.init()();
        (*(v268 + 56))(v271, 0, 1, v379);
        (*(v269 + 104))(v460, v386, v270);
        v387 = *(v503 + 16);
        v387(v484, v372, v475);
        UUID.init()();
        v272 = objc_allocWithZone(type metadata accessor for BookAsset(0));
        *&v272[OBJC_IVAR____TtC7Journal9BookAsset_metadata] = 0;
        (*(v509 + 16))(v392, v468, v398);
        v25(v412, v460, v270);
        v273 = v484;
        v387(v422, v484, v475);
        v206 = sub_100285908(v392, v412, v422);
        v274 = *(v509 + 8);
        v274(v468, v398);
        v485 = *(v503 + 8);
        v485(v273, v475);
        (*(v405 + 8))(v460, v270);
        *v435 = v429;
        swift_storeEnumTagMultiPayload();
        v476 = v429;
        UUID.init()();
        v275 = UUID.uuidString.getter();
        v277 = v276;
        v274(v468, v398);
        type metadata accessor for AssetAttachment(0);
        v278 = swift_allocObject();
        *(v278 + 16) = 0;
        sub_1005ED56C(v435, v278 + OBJC_IVAR____TtC7Journal15AssetAttachment_assetType, type metadata accessor for AssetAttachment.AssetType);
        v279 = (v278 + OBJC_IVAR____TtC7Journal15AssetAttachment_fileNameID);
        *v279 = v275;
        v279[1] = v277;
        v280 = OBJC_IVAR____TtC7Journal5Asset_sourceAttachments;
        swift_beginAccess();
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((*(v206 + v280) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v206 + v280) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        v430 = *(v0 + 2128);
        v423 = *(v0 + 2048);
        v281 = *(v0 + 1904);
        v282 = *(v0 + 1880);
        v283 = *(v0 + 1600);
        v436 = *(v0 + 1592);
        v441 = *(v0 + 1648);
        v413 = *(v0 + 1424);
        v284 = *(v0 + 1416);
        v461 = *(v0 + 1400);
        v469 = *(v0 + 1408);
        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        swift_endAccess();
        sub_1000082B4(v282, v281, &unk_100AD4790, &unk_10093B4E0);
        BookAssetMetadata.init(mediaId:title:author:timeOfPurchase:)();

        sub_1000340DC(v447, v454);
        sub_100004F84(v282, &unk_100AD4790, &unk_10093B4E0);
        v485(v430, v423);
        (*(v283 + 8))(v441, v436);
        (*(v284 + 32))(v461, v413, v469);
        swift_storeEnumTagMultiPayload();
        sub_1000F24EC(&qword_100AEABF8, &unk_100962D40);
        v207 = swift_allocObject();
        v285 = *(*v207 + 104);
        v286 = sub_1000F24EC(&qword_100AD4318, &qword_100942B38);
        (*(*(v286 - 8) + 56))(v207 + v285, 1, 1, v286);
        *(v207 + *(*v207 + 112)) = xmmword_100941EE0;
        sub_100021CEC(v461, v207 + *(*v207 + 120), &qword_100ADA8C0, &qword_10094A5B8);
        v210 = &OBJC_IVAR____TtC7Journal9BookAsset_metadata;
LABEL_113:
        *(v206 + *v210) = v207;
        goto LABEL_129;
      }

      v493 = *(v0 + 2216);
      v139 = *(v0 + 2184);
      v140 = *(v0 + 2176);
      v141 = *(v0 + 1648);
      v142 = *(v0 + 1600);
      v143 = *(v0 + 1592);

      v144 = sub_1000340DC(v132, v134);
      (*(v142 + 8))(v141, v143, v144);
      (*(v139 + 8))(v493, v140);
      goto LABEL_7;
    }

    if (v27 == *(v0 + 2912))
    {
      break;
    }

    if (v27 == *(v0 + 2916))
    {
      goto LABEL_6;
    }

    if (v27 == *(v0 + 2920))
    {
      goto LABEL_108;
    }

    if (v27 == *(v0 + 2924))
    {
      v459 = *(v0 + 2988);
      v502 = *(v0 + 2980);
      v257 = *(v0 + 2256);
      v258 = *(v0 + 2248);
      v259 = *(v0 + 2056);
      v260 = *(v0 + 1904);
      v261 = *(v0 + 1872);
      v453 = *(v0 + 2048);
      v262 = *(v0 + 1864);
      v483 = *(v0 + 2160);
      v488 = *(v0 + 1376);
      v467 = *(v0 + 1384);
      v474 = *(v0 + 1352);
      v494 = *(v0 + 1344);
      v263 = *(v0 + 1336);
      v264 = swift_allocObject();
      *(v264 + 16) = xmmword_100940080;
      *(v264 + 56) = &type metadata for String;
      *(v264 + 32) = 0xD000000000000017;
      *(v264 + 40) = 0x80000001008FDC40;
      print(_:separator:terminator:)();

      Date.init()();
      v265 = *(v257 + 56);
      v265(v260, 0, 1, v258);
      v265(v261, 1, 1, v258);
      v265(v262, 1, 1, v258);
      v266 = *(v259 + 104);
      v266(v263, v459, v453);
      (*(v259 + 56))(v263, 0, 1, v453);
      VisitAssetMetadata.init(placeName:city:typeOfPlace:visitStartTime:visitEndTime:createdDate:latitude:longitude:styleData:mapItemData:isWork:confidenceLevel:horizontalAccuracy:assetSource:)();
      v266(v483, v502, v453);
      (*(v474 + 16))(v488, v467, v494);
      v267 = sub_10033CC64(v483, v488);
      (*(v474 + 8))(v467, v494);
      v206 = v267;
      goto LABEL_130;
    }

    if (v27 == *(v0 + 2928))
    {
      v111 = *(v0 + 1944);
      v112 = *(v0 + 1936);
      v113 = *(v0 + 1600);
      v114 = *(v0 + 1592);
      v115 = [objc_allocWithZone(LPLinkMetadata) init];
      *(v0 + 2712) = v115;
      URL.init(string:)();
      sub_1000082B4(v111, v112, v10, &qword_1009437C0);
      v116 = *(v113 + 48);
      if (v116(v112, 1, v114) == 1)
      {
        v118 = 0;
      }

      else
      {
        v145 = *(v0 + 1936);
        v146 = *(v0 + 1600);
        v147 = *(v0 + 1592);
        URL._bridgeToObjectiveC()(v117);
        v118 = v148;
        (*(v146 + 8))(v145, v147);
      }

      v149 = *(v0 + 1928);
      v150 = *(v0 + 1592);
      [v115 setURL:v118];

      URL.init(string:)();
      v151 = (v116)(v149, 1, v150);
      if (v151 == 1)
      {
        goto LABEL_148;
      }

      v160 = *(v0 + 1928);
      v161 = *(v0 + 1600);
      v162 = *(v0 + 1592);
      URL._bridgeToObjectiveC()(v159);
      v164 = v163;
      v165 = *(v161 + 8);
      *(v0 + 2720) = v165;
      *(v0 + 2728) = (v161 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v165(v160, v162);
      [v115 setOriginalURL:v164];

      *(v0 + 656) = 0x20656C707041;
      *(v0 + 664) = 0xE600000000000000;
      *(v0 + 696) = 0;
      swift_stdlib_random();
      v166 = *(v0 + 696);
      if (((100 * v166) & 0xFFFFFFFFFFFFFFF0) == 0)
      {
        do
        {
          *v374 = 0;
          swift_stdlib_random();
          v166 = *v374;
        }

        while (((100 * *v374) & 0xFFFFFFFFFFFFFFF0) == 0);
      }

      v167 = *(v0 + 1944);
      v168 = *(v0 + 1920);
      v169 = *(v0 + 1592);
      *(v0 + 864) = (v166 * 0x64uLL) >> 64;
      v170._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v170);

      v171 = String._bridgeToObjectiveC()();

      [v115 setTitle:v171];

      v10 = v19;
      sub_1000082B4(v167, v168, v19, &qword_1009437C0);
      if (v116(v168, 1, v169) != 1)
      {
        v289 = *(v0 + 2980);
        v290 = *(v0 + 2104);
        v291 = *(v0 + 2056);
        v292 = *(v0 + 2048);
        v293 = *(v0 + 1616);
        v294 = *(v0 + 1608);
        v295 = *(v0 + 1600);
        v296 = *(v0 + 1592);
        (*(v295 + 32))(v293, *(v0 + 1920), v296);
        (*(v291 + 104))(v290, v289, v292);
        (*(v295 + 16))(v294, v293, v296);
        Date.init()();
        v297 = swift_task_alloc();
        *(v0 + 2736) = v297;
        *v297 = v0;
        v297[1] = sub_1005D69DC;
        v298 = *(v0 + 2288);
        v299 = *(v0 + 2104);
        v300 = *(v0 + 1608);
        v301 = *(v0 + 880);
        v302 = *(v0 + 872);

        return sub_1001DEA08(v302, v301, v299, v300, 0, 0, v298);
      }

      v172 = *(v0 + 2216);
      v173 = *(v0 + 2184);
      v174 = *(v0 + 2176);
      v175 = *(v0 + 1944);
      v176 = *(v0 + 1920);

      sub_100004F84(v175, v19, &qword_1009437C0);
      (*(v173 + 8))(v172, v174);
      v96 = v176;
      v97 = v19;
      goto LABEL_54;
    }

    if (v27 == *(v0 + 2932))
    {
      v178 = swift_task_alloc();
      *(v0 + 2760) = v178;
      *(v178 + 16) = 1;
      v287 = swift_task_alloc();
      *(v0 + 2768) = v287;
      v288 = sub_1000F24EC(&qword_100AEABF0, &qword_10095F7D0);
      *v287 = v0;
      v287[1] = sub_1005DB91C;
      v153 = *(v0 + 880);
      v152 = *(v0 + 872);
      v158 = v288;
      v156 = sub_1005ED67C;
      v151 = v0 + 712;
      goto LABEL_92;
    }

    if (v27 == *(v0 + 2936))
    {
      v178 = swift_task_alloc();
      *(v0 + 2776) = v178;
      *(v178 + 16) = 1;
      v303 = swift_task_alloc();
      *(v0 + 2784) = v303;
      v304 = sub_1000F24EC(&qword_100AEABF0, &qword_10095F7D0);
      *v303 = v0;
      v303[1] = sub_1005DC438;
      v153 = *(v0 + 880);
      v152 = *(v0 + 872);
      v158 = v304;
      v156 = sub_1005ED67C;
      v151 = v0 + 720;
      goto LABEL_92;
    }

    if (v27 == *(v0 + 2940))
    {
      v305 = sub_1005ED3EC(v27, -90.0, 90.0);
      v307 = v306;
      sub_1005ED3EC(v305, -180.0, 180.0);
      v309 = v308;
      v310 = (v0 + 736);
      *(v0 + 736) = _swiftEmptyArrayStorage;
      v151 = sub_1006A699C();
      if (v151 + 5000 >= 1)
      {
        v311 = v151 + 4999;
        v312 = 1;
        while (1)
        {
          v313 = sub_1005ED3EC(v151, -0.01, 0.01);
          v307 = v307 + v314;
          sub_1005ED3EC(v313, -0.01, 0.01);
          v309 = v309 + v315;
          [objc_allocWithZone(CLLocation) initWithLatitude:v307 longitude:v309];
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((*v310 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v310 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            v310 = (v0 + 736);
          }

          v151 = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          if (!v311)
          {
            break;
          }

          --v311;
          if (__OFADD__(v312++, 1))
          {
            __break(1u);
            goto LABEL_146;
          }
        }

        v366 = *(v0 + 2940);
        v317 = *(v0 + 2304);
        v357 = *(v0 + 2280);
        v318 = *(v0 + 2256);
        v319 = *(v0 + 2248);
        v360 = *(v0 + 2200);
        v393 = *(v0 + 2192);
        v495 = *(v0 + 2184);
        v470 = *(v0 + 2176);
        v363 = *(v0 + 2160);
        v399 = *(v0 + 2152);
        v486 = *(v0 + 2056);
        v504 = *(v0 + 2080);
        v510 = *(v0 + 2048);
        v406 = *(v0 + 1904);
        v414 = *(v0 + 1872);
        v320 = *(v0 + 1792);
        v462 = *(v0 + 1784);
        v477 = *(v0 + 1744);
        v373 = *(v0 + 1736);
        v489 = *(v0 + 1728);
        v380 = *(v0 + 1720);
        v431 = *(v0 + 1176);
        v437 = *(v0 + 1168);
        v442 = *(v0 + 1152);
        v448 = *(v0 + 1160);
        (*(v486 + 104))();
        Date.init()();
        Date.addingTimeInterval(_:)();
        v321 = *(v318 + 8);
        v321(v317, v319);
        v322 = *(v318 + 56);
        v322(v320, 0, 1, v319);
        Date.init()();
        Date.addingTimeInterval(_:)();
        v321(v317, v319);
        sub_1006A699C();
        Date.addingTimeInterval(_:)();
        v321(v357, v319);
        v322(v462, 0, 1, v319);
        sub_1006A699C();
        sub_1006A699C();
        (*(v495 + 104))(v360, v366, v470);
        v367 = *(v486 + 16);
        v367(v363, v504, v510);
        UUID.init()();
        *(objc_allocWithZone(type metadata accessor for WorkoutRouteAsset(0)) + OBJC_IVAR____TtC7Journal17WorkoutRouteAsset_metadata) = 0;
        (*(v489 + 16))(v373, v477, v380);
        v25(v393, v360, v470);
        v367(v399, v363, v510);
        v323 = sub_100285908(v373, v393, v399);
        (*(v489 + 8))(v477, v380);
        v490 = *(v486 + 8);
        v490(v363, v510);
        (*(v495 + 8))(v360, v470);
        sub_1000082B4(v320, v406, &unk_100AD4790, &unk_10093B4E0);
        sub_1000082B4(v462, v414, &unk_100AD4790, &unk_10093B4E0);
        v206 = v323;
        WorkoutRouteAssetMetadata.init(route:type:duration:startTime:endTime:mindfulnessHeartRate:caloriesBurnt:calories:distance:)();
        sub_100004F84(v462, &unk_100AD4790, &unk_10093B4E0);
        sub_100004F84(v320, &unk_100AD4790, &unk_10093B4E0);
        v490(v504, v510);
        (*(v437 + 32))(v442, v431, v448);
        swift_storeEnumTagMultiPayload();
        sub_1000F24EC(&qword_100AE0E20, &unk_100962DF0);
        v237 = swift_allocObject();
        v324 = *(*v237 + 104);
        v325 = sub_1000F24EC(&qword_100AD5B28, &unk_10094FA90);
        (*(*(v325 - 8) + 56))(v237 + v324, 1, 1, v325);
        *(v237 + *(*v237 + 112)) = xmmword_100941EE0;
        sub_100021CEC(v442, v237 + *(*v237 + 120), &qword_100ADA8A0, &unk_100952480);
        v240 = &OBJC_IVAR____TtC7Journal17WorkoutRouteAsset_metadata;
LABEL_128:
        *(v206 + *v240) = v237;

LABEL_129:

LABEL_130:
        *(v0 + 2832) = v206;
        *(v0 + 2824) = 0;
        v326 = *(v0 + 2608);
        v511 = *(v0 + 3008);
        v505 = *(v0 + 3004);
        v327 = *(v0 + 992);
        v328 = *(v0 + 984);
        v496 = *(v0 + 976);
        v329 = *(v0 + 968);
        v330 = *(v0 + 960);
        v331 = *(v0 + 952);
        v332 = *(v0 + 896);
        *(v0 + 576) = *(v0 + 888);
        *(v0 + 584) = v332;

        v333._countAndFlagsBits = 0x20746573734120;
        v333._object = 0xE700000000000000;
        String.append(_:)(v333);
        *(v0 + 768) = v326;
        v334._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v334);

        v335 = objc_allocWithZone(NSAttributedString);
        v336 = String._bridgeToObjectiveC()();

        v337 = [v335 initWithString:v336];

        v338 = *(v206 + OBJC_IVAR____TtC7Journal5Asset_title);
        *(v206 + OBJC_IVAR____TtC7Journal5Asset_title) = v337;

        *v327 = static AssetPlacement.maxGridCount.getter();
        (*(v328 + 104))(v327, v505, v496);
        (*(v330 + 104))(v329, v511, v331);
        LOBYTE(v336) = JournalFeatureFlags.isEnabled.getter();
        (*(v330 + 8))(v329, v331);
        if (v336)
        {
          *(v0 + 2840) = CFAbsoluteTimeGetCurrent();
          v339 = swift_task_alloc();
          *(v0 + 2848) = v339;
          *v339 = v0;
          v339[1] = sub_1005DEA30;
          v340 = *(v0 + 992);
          v341 = *(v0 + 880);
          v342 = *(v0 + 872);

          return sub_10056B238(v342, v341, v206, v340, 1);
        }

        else
        {
          v343 = swift_task_alloc();
          *(v0 + 2872) = v343;
          *v343 = v0;
          v343[1] = sub_1005DEE38;
          v344 = *(v0 + 992);
          v345 = *(v0 + 880);
          v346 = *(v0 + 872);

          return sub_1001F8424(v346, v345, v206, v344);
        }
      }

      __break(1u);
LABEL_148:
      __break(1u);
      return withCheckedContinuation<A>(isolation:function:_:)(v151, v152, v153, v154, v155, v156, v157, v158);
    }

    if (v27 == *(v0 + 2944))
    {
LABEL_6:
      (*(*(v0 + 2184) + 8))(*(v0 + 2216), *(v0 + 2176));
      goto LABEL_7;
    }

    if (v27 == *(v0 + 2948))
    {
      v347 = *(v0 + 2160);
      (*(*(v0 + 2056) + 104))(v347, *(v0 + 2980), *(v0 + 2048));
      v206 = sub_10019BB28(v347, 0, 0);
      goto LABEL_130;
    }

    if (v27 == *(v0 + 2952))
    {
      v178 = swift_task_alloc();
      *(v0 + 2792) = v178;
      *(v178 + 16) = 1;
      v348 = swift_task_alloc();
      *(v0 + 2800) = v348;
      v349 = sub_1000F24EC(&qword_100AEABF0, &qword_10095F7D0);
      *v348 = v0;
      v348[1] = sub_1005DCF44;
      v153 = *(v0 + 880);
      v152 = *(v0 + 872);
      v158 = v349;
      v156 = sub_1005ED67C;
      v151 = v0 + 760;
      goto LABEL_92;
    }

    if (v27 != *(v0 + 2956) && v27 != *(v0 + 2960) && v27 != *(v0 + 2964) && v27 != *(v0 + 2968))
    {
      if (v27 == *(v0 + 2972))
      {
        goto LABEL_142;
      }

      if (v27 != *(v0 + 2976))
      {

        return _diagnoseUnexpectedEnumCase<A>(type:)();
      }
    }

    (*(*(v0 + 2184) + 8))(*(v0 + 2216), *(v0 + 2176));
LABEL_8:
    v5 = *(v0 + 2608) + 1;
    if (v5 == *(v0 + 912))
    {
      goto LABEL_2;
    }
  }

  v54 = *(v0 + 1744);
  v55 = *(v0 + 1728);
  v56 = *(v0 + 1720);
  v57 = swift_allocObject();
  *(v57 + 16) = xmmword_100940080;
  *(v57 + 56) = &type metadata for String;
  *(v57 + 32) = 0xD000000000000012;
  *(v57 + 40) = 0x80000001008FDC00;
  print(_:separator:terminator:)();

  UUID.init()();
  v58 = UUID.uuidString.getter();
  v60 = v59;
  v61 = *(v55 + 8);
  *(v0 + 2648) = v61;
  *(v0 + 2656) = (v55 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v61(v54, v56);
  if (qword_100AD0060 != -1)
  {
    swift_once();
  }

  v62 = *(v0 + 1672);
  v63 = *(v0 + 1600);
  v64 = *(v0 + 1592);
  v65 = type metadata accessor for FileStoreConfiguration();
  sub_10000617C(v65, qword_100B2FC48);
  FileStoreConfiguration.temporaryDirectoryURL.getter();
  *(v0 + 640) = v58;
  *(v0 + 648) = v60;
  v66._countAndFlagsBits = 1717658414;
  v66._object = 0xE400000000000000;
  String.append(_:)(v66);
  URL.appendingPathComponent(_:)();

  v67 = *(v63 + 8);
  *(v0 + 2664) = v67;
  *(v0 + 2672) = (v63 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v67(v62, v64);
  v68 = sub_1001C075C(5, &off_100A57518);
  v70 = v69;
  *(v0 + 2680) = v69;
  v71 = objc_opt_self();
  v72 = [v71 defaultManager];
  URL.absoluteString.getter();
  v73 = String._bridgeToObjectiveC()();

  v74 = [v72 fileExistsAtPath:v73];

  if (!v74)
  {
    goto LABEL_101;
  }

  v75 = [v71 defaultManager];
  URL._bridgeToObjectiveC()(v76);
  v78 = v77;
  *(v0 + 744) = 0;
  v79 = [v75 removeItemAtURL:v77 error:v0 + 744];

  v80 = *(v0 + 744);
  if (!v79)
  {
    v81 = v80;

    v82 = _convertNSErrorToError(_:)();

    swift_willThrow();
    v478 = v82;
    v83 = *(v0 + 2664);
    v491 = *(v0 + 2216);
    v84 = *(v0 + 2184);
    v85 = *(v0 + 2176);
    v86 = *(v0 + 1640);
    v87 = *(v0 + 1592);
    v88 = swift_allocObject();
    *(v88 + 16) = xmmword_100940080;
    *(v0 + 592) = 0;
    *(v0 + 600) = 0xE000000000000000;
    _StringGuts.grow(_:)(28);
    v89 = *(v0 + 600);
    *(v0 + 608) = *(v0 + 592);
    *(v0 + 616) = v89;
    v90._object = 0x80000001008FDC20;
    v90._countAndFlagsBits = 0x100000000000001ALL;
    String.append(_:)(v90);
    *(v0 + 728) = v82;
    sub_1000F24EC(&qword_100AD5BC0, &qword_100943550);
    _print_unlocked<A, B>(_:_:)();
    v91 = *(v0 + 608);
    v92 = *(v0 + 616);
    *(v88 + 56) = &type metadata for String;
    *(v88 + 32) = v91;
    *(v88 + 40) = v92;
    print(_:separator:terminator:)();

    v83(v86, v87);
    (*(v84 + 8))(v491, v85);
    goto LABEL_7;
  }

  v211 = v80;
LABEL_101:
  v212 = swift_task_alloc();
  *(v0 + 2688) = v212;
  *v212 = v0;
  v212[1] = sub_1005D08E4;
  v213 = *(v0 + 1640);
  v214 = *(v0 + 880);
  v215 = *(v0 + 872);

  return sub_10016A7C4(v215, v214, v68, v70, v213);
}

uint64_t sub_1005DB91C()
{
  v1 = *v0;

  v2 = *(v1 + 2400);
  v3 = *(v1 + 2392);

  return _swift_task_switch(sub_1005DBA8C, v3, v2);
}

uint64_t sub_1005DBA8C()
{
  v1 = *(v0 + 712);
  if (*(v1 + 16))
  {
    v2 = *(v1 + 32);
    v3 = v2;
  }

  else
  {
    v2 = 0;
  }

  v4 = *(v0 + 2608);
  v5 = *(v0 + 2980);
  v6 = *(v0 + 2096);
  v7 = *(v0 + 2056);
  v8 = *(v0 + 2048);

  (*(v7 + 104))(v6, v5, v8);
  strcpy((v0 + 624), "Test contact ");
  *(v0 + 638) = -4864;
  *(v0 + 704) = v4;
  v9._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v9);

  Date.init()();
  if ((v4 * -3600) >> 64 != (-3600 * v4) >> 63)
  {
    __break(1u);
LABEL_16:
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    goto LABEL_7;
  }

  v75 = *(v0 + 2616);
  v68 = *(v0 + 2932);
  v10 = *(v0 + 2304);
  v11 = *(v0 + 2256);
  v12 = *(v0 + 2248);
  v64 = *(v0 + 2200);
  v71 = *(v0 + 2192);
  v83 = *(v0 + 2184);
  v78 = *(v0 + 2176);
  v73 = *(v0 + 2152);
  v66 = *(v0 + 2096);
  v67 = *(v0 + 2160);
  v85 = *(v0 + 2056);
  v65 = *(v0 + 2048);
  v13 = *(v0 + 1824);
  v14 = *(v0 + 1816);
  v80 = *(v0 + 1744);
  v15 = *(v0 + 1736);
  v82 = *(v0 + 1728);
  v70 = *(v0 + 1720);
  Date.addingTimeInterval(_:)();
  v77 = v2;
  v16 = *(v11 + 8);
  v16(v10, v12);
  v17 = *(v11 + 56);
  v17(v13, 0, 1, v12);
  Date.init()();
  Date.addingTimeInterval(_:)();
  v16(v10, v12);
  v17(v14, 0, 1, v12);
  (*(v83 + 104))(v64, v68, v78);
  v69 = *(v85 + 16);
  v69(v67, v66, v65);
  UUID.init()();
  v18 = objc_allocWithZone(type metadata accessor for ContactAsset(0));
  *&v18[OBJC_IVAR____TtC7Journal12ContactAsset_metadata] = 0;
  (*(v82 + 16))(v15, v80, v70);
  v75(v71, v64, v78);
  v69(v73, v67, v65);
  v19 = sub_100285908(v15, v71, v73);
  v20 = *(v82 + 8);
  v20(v80, v70);
  v8 = v77;
  v2 = v19;
  v81 = *(v85 + 8);
  v81(v67, v65);
  (*(v83 + 8))(v64, v78);
  if (!v77)
  {
    goto LABEL_8;
  }

  v21 = *(v0 + 1744);
  v22 = *(v0 + 1720);
  v23 = *(v0 + 1712);
  *v23 = v77;
  swift_storeEnumTagMultiPayload();
  v24 = v77;
  UUID.init()();
  v25 = UUID.uuidString.getter();
  v27 = v26;
  v20(v21, v22);
  type metadata accessor for AssetAttachment(0);
  v28 = swift_allocObject();
  *(v28 + 16) = 0;
  sub_1005ED56C(v23, v28 + OBJC_IVAR____TtC7Journal15AssetAttachment_assetType, type metadata accessor for AssetAttachment.AssetType);
  v29 = (v28 + OBJC_IVAR____TtC7Journal15AssetAttachment_fileNameID);
  *v29 = v25;
  v29[1] = v27;
  v30 = OBJC_IVAR____TtC7Journal5Asset_sourceAttachments;
  swift_beginAccess();
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(v2 + v30) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v2 + v30) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_16;
  }

LABEL_7:
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
LABEL_8:
  v74 = *(v0 + 2048);
  v76 = *(v0 + 2096);
  v87 = v2;
  v31 = v8;
  v32 = *(v0 + 1872);
  v33 = *(v0 + 1824);
  v34 = *(v0 + 1816);
  v35 = *(v0 + 1256);
  v36 = *(v0 + 1248);
  v79 = *(v0 + 1240);
  v72 = *(v0 + 1232);
  sub_1000082B4(v33, *(v0 + 1904), &unk_100AD4790, &unk_10093B4E0);
  sub_1000082B4(v34, v32, &unk_100AD4790, &unk_10093B4E0);
  ContactAssetMetadata.init(name:startTime:endTime:duration:numberOfExchanges:)();

  sub_100004F84(v34, &unk_100AD4790, &unk_10093B4E0);
  sub_100004F84(v33, &unk_100AD4790, &unk_10093B4E0);
  v81(v76, v74);
  (*(v36 + 32))(v72, v35, v79);
  swift_storeEnumTagMultiPayload();
  sub_1000F24EC(&qword_100AE0E60, &unk_100952540);
  v37 = swift_allocObject();
  v38 = *(*v37 + 104);
  v39 = sub_1000F24EC(&qword_100AD8440, &qword_100966950);
  (*(*(v39 - 8) + 56))(v37 + v38, 1, 1, v39);
  *(v37 + *(*v37 + 112)) = xmmword_100941EE0;
  sub_100021CEC(v72, v37 + *(*v37 + 120), &qword_100ADA8F0, &unk_100960720);
  *(v87 + OBJC_IVAR____TtC7Journal12ContactAsset_metadata) = v37;

  v40 = *(v0 + 2600);
  *(v0 + 2832) = v87;
  *(v0 + 2824) = v40;
  v41 = *(v0 + 2608);
  v86 = *(v0 + 3008);
  v84 = *(v0 + 3004);
  v42 = *(v0 + 992);
  v43 = *(v0 + 984);
  v44 = *(v0 + 976);
  v45 = *(v0 + 968);
  v46 = *(v0 + 960);
  v47 = *(v0 + 952);
  v48 = *(v0 + 896);
  *(v0 + 576) = *(v0 + 888);
  *(v0 + 584) = v48;

  v49._countAndFlagsBits = 0x20746573734120;
  v49._object = 0xE700000000000000;
  String.append(_:)(v49);
  *(v0 + 768) = v41;
  v50._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v50);

  v51 = objc_allocWithZone(NSAttributedString);
  v52 = String._bridgeToObjectiveC()();

  v53 = [v51 initWithString:v52];

  v54 = *(v87 + OBJC_IVAR____TtC7Journal5Asset_title);
  *(v87 + OBJC_IVAR____TtC7Journal5Asset_title) = v53;

  *v42 = static AssetPlacement.maxGridCount.getter();
  (*(v43 + 104))(v42, v84, v44);
  (*(v46 + 104))(v45, v86, v47);
  LOBYTE(v52) = JournalFeatureFlags.isEnabled.getter();
  (*(v46 + 8))(v45, v47);
  if (v52)
  {
    *(v0 + 2840) = CFAbsoluteTimeGetCurrent();
    v55 = swift_task_alloc();
    *(v0 + 2848) = v55;
    *v55 = v0;
    v55[1] = sub_1005DEA30;
    v56 = *(v0 + 992);
    v57 = *(v0 + 880);
    v58 = *(v0 + 872);

    return sub_10056B238(v58, v57, v87, v56, 1);
  }

  else
  {
    v60 = swift_task_alloc();
    *(v0 + 2872) = v60;
    *v60 = v0;
    v60[1] = sub_1005DEE38;
    v61 = *(v0 + 992);
    v62 = *(v0 + 880);
    v63 = *(v0 + 872);

    return sub_1001F8424(v63, v62, v87, v61);
  }
}

uint64_t sub_1005DC438()
{
  v1 = *v0;

  v2 = *(v1 + 2400);
  v3 = *(v1 + 2392);

  return _swift_task_switch(sub_1005DC5A8, v3, v2);
}

uint64_t sub_1005DC5A8()
{
  v2 = *(v0 + 720);
  if (*(v2 + 16))
  {
    v3 = *(v2 + 32);
    v4 = v3;
  }

  else
  {
    v3 = 0;
  }

  v5 = *(v0 + 2608);
  v6 = *(v0 + 2980);
  v7 = *(v0 + 2088);
  v8 = *(v0 + 2056);
  v9 = *(v0 + 2048);

  (*(v8 + 104))(v7, v6, v9);
  Date.init()();
  if ((v5 * -3600) >> 64 != (-3600 * v5) >> 63)
  {
    __break(1u);
LABEL_16:
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    goto LABEL_7;
  }

  v82 = *(v0 + 2616);
  v87 = *(v0 + 2608);
  v72 = *(v0 + 2936);
  v10 = *(v0 + 2304);
  v11 = *(v0 + 2256);
  v12 = *(v0 + 2248);
  v68 = *(v0 + 2200);
  v78 = *(v0 + 2192);
  v91 = *(v0 + 2184);
  v83 = *(v0 + 2176);
  v71 = *(v0 + 2160);
  v80 = *(v0 + 2152);
  v70 = *(v0 + 2088);
  v89 = *(v0 + 2056);
  v69 = *(v0 + 2048);
  v85 = v3;
  v13 = *(v0 + 1808);
  v14 = *(v0 + 1800);
  v15 = *(v0 + 1744);
  v74 = *(v0 + 1736);
  v67 = *(v0 + 1728);
  v76 = *(v0 + 1720);
  Date.addingTimeInterval(_:)();
  v16 = *(v11 + 8);
  v16(v10, v12);
  v17 = *(v11 + 56);
  v17(v13, 0, 1, v12);
  Date.init()();
  Date.addingTimeInterval(_:)();
  v16(v10, v12);
  v17(v14, 0, 1, v12);
  (*(v91 + 104))(v68, v72, v83);
  v73 = *(v89 + 16);
  v73(v71, v70, v69);
  UUID.init()();
  *(objc_allocWithZone(type metadata accessor for WorkoutIconAsset(0)) + OBJC_IVAR____TtC7Journal16WorkoutIconAsset_metadata) = 0;
  (*(v67 + 16))(v74, v15, v76);
  v82(v78, v68, v83);
  v73(v80, v71, v69);
  v18 = sub_100285908(v74, v78, v80);
  v19 = *(v67 + 8);
  v19(v15, v76);
  v81 = (60 * v87);
  v1 = v18;
  v86 = *(v89 + 8);
  v86(v71, v69);
  (*(v91 + 8))(v68, v83);
  if (!v85)
  {
    goto LABEL_8;
  }

  v20 = *(v0 + 1744);
  v21 = *(v0 + 1720);
  v22 = *(v0 + 1712);
  *v22 = v85;
  swift_storeEnumTagMultiPayload();
  v23 = v85;
  UUID.init()();
  v24 = UUID.uuidString.getter();
  v26 = v25;
  v19(v20, v21);
  type metadata accessor for AssetAttachment(0);
  v27 = swift_allocObject();
  *(v27 + 16) = 0;
  sub_1005ED56C(v22, v27 + OBJC_IVAR____TtC7Journal15AssetAttachment_assetType, type metadata accessor for AssetAttachment.AssetType);
  v28 = (v27 + OBJC_IVAR____TtC7Journal15AssetAttachment_fileNameID);
  *v28 = v24;
  v28[1] = v26;
  v29 = OBJC_IVAR____TtC7Journal5Asset_sourceAttachments;
  swift_beginAccess();
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*&v1[v29] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v1[v29] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_16;
  }

LABEL_7:
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
LABEL_8:
  v77 = *(v0 + 2048);
  v79 = *(v0 + 2088);
  v30 = *(v0 + 1872);
  v92 = v1;
  v31 = *(v0 + 1808);
  v32 = *(v0 + 1800);
  v33 = *(v0 + 1216);
  v34 = *(v0 + 1208);
  v84 = *(v0 + 1200);
  v75 = *(v0 + 1192);
  sub_1000082B4(v31, *(v0 + 1904), &unk_100AD4790, &unk_10093B4E0);
  sub_1000082B4(v32, v30, &unk_100AD4790, &unk_10093B4E0);
  LOBYTE(v66) = 1;
  LOBYTE(v65) = 1;
  LOBYTE(v64) = 1;
  LOBYTE(v63) = 1;
  LOBYTE(v62) = 0;
  WorkoutIconAssetMetadata.init(type:duration:startTime:endTime:mindfulnessHeartRate:caloriesBurnt:calories:distance:numberOfWorkouts:totalGroupWorkoutDuration:groupWorkoutStartDates:groupWorkoutEndDates:averageGroupHeartRateBPM:totalGroupWorkoutCaloriesBurnt:totalGroupWorkoutCaloriesBurntWithUnit:)();

  sub_100004F84(v32, &unk_100AD4790, &unk_10093B4E0);
  sub_100004F84(v31, &unk_100AD4790, &unk_10093B4E0);
  v86(v79, v77);
  (*(v34 + 32))(v75, v33, v84);
  swift_storeEnumTagMultiPayload();
  sub_1000F24EC(&qword_100AE0DD0, &unk_100960750);
  v35 = swift_allocObject();
  v36 = *(*v35 + 104);
  v37 = sub_1000F24EC(&qword_100AE4280, &unk_100952430);
  (*(*(v37 - 8) + 56))(v35 + v36, 1, 1, v37);
  *(v35 + *(*v35 + 112)) = xmmword_100941EE0;
  sub_100021CEC(v75, v35 + *(*v35 + 120), &qword_100ADA888, &unk_100952410);
  *(v92 + OBJC_IVAR____TtC7Journal16WorkoutIconAsset_metadata) = v35;

  v38 = *(v0 + 2600);
  *(v0 + 2832) = v92;
  *(v0 + 2824) = v38;
  v39 = *(v0 + 2608);
  v90 = *(v0 + 3008);
  v88 = *(v0 + 3004);
  v40 = *(v0 + 992);
  v41 = *(v0 + 984);
  v42 = *(v0 + 976);
  v43 = *(v0 + 968);
  v44 = *(v0 + 960);
  v45 = *(v0 + 952);
  v46 = *(v0 + 896);
  *(v0 + 576) = *(v0 + 888);
  *(v0 + 584) = v46;

  v47._countAndFlagsBits = 0x20746573734120;
  v47._object = 0xE700000000000000;
  String.append(_:)(v47);
  *(v0 + 768) = v39;
  v48._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v48);

  v49 = objc_allocWithZone(NSAttributedString);
  v50 = String._bridgeToObjectiveC()();

  v51 = [v49 initWithString:{v50, *&v81, v62, 0, 0, 0, 0, 0, v63, 0, v64, 0, 0, 0, v65, 0, v66, 0, 0}];

  v52 = *(v92 + OBJC_IVAR____TtC7Journal5Asset_title);
  *(v92 + OBJC_IVAR____TtC7Journal5Asset_title) = v51;

  *v40 = static AssetPlacement.maxGridCount.getter();
  (*(v41 + 104))(v40, v88, v42);
  (*(v44 + 104))(v43, v90, v45);
  LOBYTE(v50) = JournalFeatureFlags.isEnabled.getter();
  (*(v44 + 8))(v43, v45);
  if (v50)
  {
    *(v0 + 2840) = CFAbsoluteTimeGetCurrent();
    v53 = swift_task_alloc();
    *(v0 + 2848) = v53;
    *v53 = v0;
    v53[1] = sub_1005DEA30;
    v54 = *(v0 + 992);
    v55 = *(v0 + 880);
    v56 = *(v0 + 872);

    return sub_10056B238(v56, v55, v92, v54, 1);
  }

  else
  {
    v58 = swift_task_alloc();
    *(v0 + 2872) = v58;
    *v58 = v0;
    v58[1] = sub_1005DEE38;
    v59 = *(v0 + 992);
    v60 = *(v0 + 880);
    v61 = *(v0 + 872);

    return sub_1001F8424(v61, v60, v92, v59);
  }
}

uint64_t sub_1005DCF44()
{
  v1 = *v0;

  v2 = *(v1 + 2400);
  v3 = *(v1 + 2392);

  return _swift_task_switch(sub_1005DD0B4, v3, v2);
}

uint64_t sub_1005DD0B4()
{
  v1 = *(v0 + 760);
  if (*(v1 + 16))
  {
    v97 = *(v1 + 32);
    v2 = v97;
  }

  else
  {
    v97 = 0;
  }

  v82 = *(v0 + 2616);
  v3 = *(v0 + 2980);
  v83 = *(v0 + 2952);
  v4 = *(v0 + 2304);
  v74 = *(v0 + 2272);
  v5 = *(v0 + 2256);
  v6 = *(v0 + 2248);
  v85 = *(v0 + 2176);
  v87 = *(v0 + 2200);
  v93 = *(v0 + 2160);
  v95 = *(v0 + 2184);
  v80 = *(v0 + 2192);
  v81 = *(v0 + 2152);
  v7 = *(v0 + 2072);
  v8 = *(v0 + 2056);
  v103 = v8;
  v9 = *(v0 + 2048);
  v10 = *(v0 + 1776);
  v75 = *(v0 + 1768);
  v90 = *(v0 + 1744);
  v77 = v9;
  v78 = *(v0 + 1736);
  v101 = *(v0 + 1728);
  v79 = *(v0 + 1720);

  (*(v8 + 104))(v7, v3, v9);
  Date.init()();
  Date.addingTimeInterval(_:)();
  v11 = *(v5 + 8);
  v11(v4, v6);
  v12 = *(v5 + 56);
  v12(v10, 0, 1, v6);
  Date.init()();
  Date.addingTimeInterval(_:)();
  v11(v4, v6);
  sub_1006A699C();
  Date.addingTimeInterval(_:)();
  v11(v74, v6);
  v12(v75, 0, 1, v6);
  (*(v95 + 104))(v87, v83, v85);
  v76 = *(v8 + 16);
  v76(v93, v7, v77);
  v84 = v97;
  UUID.init()();
  v13 = objc_allocWithZone(type metadata accessor for MotionActivityAsset(0));
  *&v13[OBJC_IVAR____TtC7Journal19MotionActivityAsset_metadata] = 0;
  (*(v101 + 16))(v78, v90, v79);
  v82(v80, v87, v85);
  v76(v81, v93, v77);
  v14 = sub_100285908(v78, v80, v81);
  v15 = *(v101 + 8);
  v15(v90, v79);
  v16 = v93;
  v17 = v14;
  v94 = *(v103 + 8);
  v94(v16, v77);
  (*(v95 + 8))(v87, v85);
  v96 = v14;
  if (v97)
  {
    v18 = *(v0 + 1744);
    v19 = v15;
    v20 = *(v0 + 1720);
    v21 = *(v0 + 1712);
    *v21 = v84;
    swift_storeEnumTagMultiPayload();
    v91 = v84;
    UUID.init()();
    v22 = UUID.uuidString.getter();
    v24 = v23;
    v98 = v19;
    v19(v18, v20);
    type metadata accessor for AssetAttachment(0);
    v25 = swift_allocObject();
    *(v25 + 16) = 0;
    sub_1005ED56C(v21, v25 + OBJC_IVAR____TtC7Journal15AssetAttachment_assetType, type metadata accessor for AssetAttachment.AssetType);
    v26 = (v25 + OBJC_IVAR____TtC7Journal15AssetAttachment_fileNameID);
    *v26 = v22;
    v26[1] = v24;
    v27 = OBJC_IVAR____TtC7Journal5Asset_sourceAttachments;
    swift_beginAccess();
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*&v17[v27] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v17[v27] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    v28 = *(v0 + 1744);
    v88 = *(v0 + 1720);
    v29 = *(v0 + 1712);
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    swift_endAccess();

    *v29 = v91;
    swift_storeEnumTagMultiPayload();
    v30 = v91;
    UUID.init()();
    v31 = UUID.uuidString.getter();
    v33 = v32;
    v98(v28, v88);
    v34 = swift_allocObject();
    *(v34 + 16) = 1;
    sub_1005ED56C(v29, v34 + OBJC_IVAR____TtC7Journal15AssetAttachment_assetType, type metadata accessor for AssetAttachment.AssetType);
    v35 = (v34 + OBJC_IVAR____TtC7Journal15AssetAttachment_fileNameID);
    *v35 = v31;
    v35[1] = v33;
    swift_beginAccess();
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*&v17[v27] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v17[v27] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    swift_endAccess();
  }

  v36 = *(v0 + 1104);
  MotionActivityTypeEnum.init(rawValue:)();
  v37 = type metadata accessor for MotionActivityTypeEnum();
  v38 = *(v37 - 8);
  v39 = *(v38 + 48);
  if (v39(v36, 1, v37) == 1)
  {
    v40 = *(v0 + 1104);
    (*(v38 + 104))(*(v0 + 1112), *(v0 + 2984), v37);
    if (v39(v40, 1, v37) != 1)
    {
      sub_100004F84(*(v0 + 1104), &qword_100AD8B38, &qword_100948358);
    }
  }

  else
  {
    (*(v38 + 32))(*(v0 + 1112), *(v0 + 1104), v37);
  }

  v89 = *(v0 + 2048);
  v92 = *(v0 + 2072);
  v41 = *(v0 + 1904);
  v42 = *(v0 + 1872);
  v43 = *(v0 + 1776);
  v44 = *(v0 + 1768);
  v45 = *(v0 + 1136);
  v46 = *(v0 + 1128);
  v99 = *(v0 + 1120);
  v86 = *(v0 + 1096);
  (*(v38 + 56))(*(v0 + 1112), 0, 1, v37);
  sub_1000082B4(v43, v41, &unk_100AD4790, &unk_10093B4E0);
  sub_1000082B4(v44, v42, &unk_100AD4790, &unk_10093B4E0);
  v73 = v42;
  MotionActivityAssetMetadata.init(activityType:activityTypeEnum:localizedActivityName:steps:startTime:endTime:)();

  sub_100004F84(v44, &unk_100AD4790, &unk_10093B4E0);
  sub_100004F84(v43, &unk_100AD4790, &unk_10093B4E0);
  v94(v92, v89);
  (*(v46 + 32))(v86, v45, v99);
  swift_storeEnumTagMultiPayload();
  sub_1000F24EC(&qword_100AD8B40, &unk_100948360);
  v47 = swift_allocObject();
  v48 = *(*v47 + 104);
  v49 = sub_1000F24EC(&qword_100AD8740, &unk_100948340);
  (*(*(v49 - 8) + 56))(v47 + v48, 1, 1, v49);
  *(v47 + *(*v47 + 112)) = xmmword_100941EE0;
  sub_100021CEC(v86, v47 + *(*v47 + 120), &qword_100AD8B30, &qword_100948350);
  *(v96 + OBJC_IVAR____TtC7Journal19MotionActivityAsset_metadata) = v47;

  v50 = *(v0 + 2600);
  *(v0 + 2832) = v96;
  *(v0 + 2824) = v50;
  v51 = *(v0 + 2608);
  v104 = *(v0 + 3008);
  v102 = *(v0 + 3004);
  v52 = *(v0 + 992);
  v53 = *(v0 + 984);
  v100 = *(v0 + 976);
  v54 = *(v0 + 968);
  v55 = *(v0 + 960);
  v56 = *(v0 + 952);
  v57 = *(v0 + 896);
  *(v0 + 576) = *(v0 + 888);
  *(v0 + 584) = v57;

  v58._countAndFlagsBits = 0x20746573734120;
  v58._object = 0xE700000000000000;
  String.append(_:)(v58);
  *(v0 + 768) = v51;
  v59._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v59);

  v60 = objc_allocWithZone(NSAttributedString);
  v61 = String._bridgeToObjectiveC()();

  v62 = [v60 initWithString:{v61, v73}];

  v63 = *(v96 + OBJC_IVAR____TtC7Journal5Asset_title);
  *(v96 + OBJC_IVAR____TtC7Journal5Asset_title) = v62;

  *v52 = static AssetPlacement.maxGridCount.getter();
  (*(v53 + 104))(v52, v102, v100);
  (*(v55 + 104))(v54, v104, v56);
  LOBYTE(v61) = JournalFeatureFlags.isEnabled.getter();
  (*(v55 + 8))(v54, v56);
  if (v61)
  {
    *(v0 + 2840) = CFAbsoluteTimeGetCurrent();
    v64 = swift_task_alloc();
    *(v0 + 2848) = v64;
    *v64 = v0;
    v64[1] = sub_1005DEA30;
    v65 = *(v0 + 992);
    v66 = *(v0 + 880);
    v67 = *(v0 + 872);

    return sub_10056B238(v67, v66, v96, v65, 1);
  }

  else
  {
    v69 = swift_task_alloc();
    *(v0 + 2872) = v69;
    *v69 = v0;
    v69[1] = sub_1005DEE38;
    v70 = *(v0 + 992);
    v71 = *(v0 + 880);
    v72 = *(v0 + 872);

    return sub_1001F8424(v72, v71, v96, v70);
  }
}

uint64_t sub_1005DDCB8()
{
  v1 = *v0;

  v2 = *(v1 + 2400);
  v3 = *(v1 + 2392);

  return _swift_task_switch(sub_1005DDE28, v3, v2);
}

uint64_t sub_1005DDE28()
{
  v1 = *(v0 + 824);
  if (*(v1 + 16))
  {
    v93 = *(v1 + 32);
    v2 = v93;
  }

  else
  {
    v93 = 0;
  }

  v86 = *(v0 + 2616);
  v66 = *(v0 + 2592);
  v68 = *(v0 + 2584);
  v3 = *(v0 + 2980);
  v78 = *(v0 + 2972);
  v4 = *(v0 + 2304);
  v71 = *(v0 + 2256);
  v72 = *(v0 + 2264);
  v5 = *(v0 + 2248);
  v89 = *(v0 + 2200);
  v82 = *(v0 + 2192);
  v96 = *(v0 + 2184);
  v76 = *(v0 + 2176);
  v77 = *(v0 + 2160);
  v84 = *(v0 + 2152);
  v6 = *(v0 + 2064);
  v7 = *(v0 + 2056);
  v8 = *(v0 + 2048);
  v73 = v6;
  v70 = *(v0 + 1760);
  v74 = *(v0 + 1752);
  v91 = *(v0 + 1744);
  v75 = *(v0 + 1728);
  v80 = *(v0 + 1736);
  v81 = *(v0 + 1720);
  v69 = *(v0 + 1080);
  v9 = *(v0 + 1056);
  v10 = *(v0 + 1048);
  v67 = *(v0 + 1040);

  v12 = sub_1005ED3EC(v11, -90.0, 90.0);
  sub_1005ED3EC(v12, -180.0, 180.0);
  (*(v7 + 104))(v6, v3, v8);
  *(v0 + 800) = 0;
  swift_stdlib_random();
  KeyPath = swift_getKeyPath();
  *swift_task_alloc() = KeyPath;
  swift_getKeyPath();

  sub_10005C484();
  static AttributeContainer.subscript.getter();

  sub_1000F24EC(&unk_100ADFBF0, &unk_10095D5F0);
  inited = swift_initStackObject();
  *(inited + 32) = xmmword_100955130;
  *(inited + 16) = xmmword_100940050;
  *(inited + 48) = 0;
  *(inited + 56) = v66;
  *(inited + 64) = 0;
  *(inited + 72) = 4;
  v15 = v66;
  v16 = sub_100047788(v68, inited, 0);
  swift_setDeallocating();
  swift_arrayDestroy();
  *(v0 + 792) = v16;
  AttributeContainer.Builder.callAsFunction(_:)();

  (*(v10 + 8))(v9, v67);
  AttributedString.init(_:attributes:)();
  v17 = type metadata accessor for AttributedString();
  (*(*(v17 - 8) + 56))(v69, 0, 1, v17);
  Date.init()();
  Date.addingTimeInterval(_:)();
  v18 = *(v71 + 8);
  v18(v4, v5);
  v19 = *(v71 + 56);
  v19(v70, 0, 1, v5);
  Date.init()();
  Date.addingTimeInterval(_:)();
  v18(v4, v5);
  sub_1006A699C();
  Date.addingTimeInterval(_:)();
  v18(v72, v5);
  v19(v74, 0, 1, v5);
  (*(v96 + 104))(v89, v78, v76);
  v79 = *(v7 + 16);
  v79(v77, v73, v8);
  UUID.init()();
  *(objc_allocWithZone(type metadata accessor for ConfettiAsset(0)) + OBJC_IVAR____TtC7Journal13ConfettiAsset_metadata) = 0;
  (*(v75 + 16))(v80, v91, v81);
  v86(v82, v89, v76);
  v79(v84, v77, v8);
  v20 = sub_100285908(v80, v82, v84);
  v21 = *(v75 + 8);
  v21(v91, v81);
  v22 = v20;
  v92 = *(v7 + 8);
  v92(v77, v8);
  (*(v96 + 8))(v89, v76);
  if (v93)
  {
    v23 = *(v0 + 1744);
    v24 = *(v0 + 1720);
    v25 = *(v0 + 1712);
    *v25 = v93;
    swift_storeEnumTagMultiPayload();
    v26 = v93;
    UUID.init()();
    v27 = UUID.uuidString.getter();
    v29 = v28;
    v21(v23, v24);
    type metadata accessor for AssetAttachment(0);
    v30 = swift_allocObject();
    *(v30 + 16) = 0;
    sub_1005ED56C(v25, v30 + OBJC_IVAR____TtC7Journal15AssetAttachment_assetType, type metadata accessor for AssetAttachment.AssetType);
    v31 = (v30 + OBJC_IVAR____TtC7Journal15AssetAttachment_fileNameID);
    *v31 = v27;
    v31[1] = v29;
    v32 = OBJC_IVAR____TtC7Journal5Asset_sourceAttachments;
    swift_beginAccess();
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*&v22[v32] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v22[v32] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    swift_endAccess();
  }

  v90 = *(v0 + 2064);
  v88 = *(v0 + 2048);
  v33 = *(v0 + 1904);
  v34 = *(v0 + 1872);
  v97 = v22;
  v35 = *(v0 + 1760);
  v36 = *(v0 + 1752);
  v83 = *(v0 + 1080);
  v37 = *(v0 + 1032);
  v38 = *(v0 + 1024);
  v87 = *(v0 + 1016);
  v85 = *(v0 + 1008);
  sub_1000082B4(v83, *(v0 + 1072), &qword_100AD8D78, &qword_100948490);
  sub_1000082B4(v35, v33, &unk_100AD4790, &unk_10093B4E0);
  sub_1000082B4(v36, v34, &unk_100AD4790, &unk_10093B4E0);
  ConfettiAssetMetadata.init(isHost:title:placeName:startDate:endDate:)();

  sub_100004F84(v36, &unk_100AD4790, &unk_10093B4E0);
  sub_100004F84(v35, &unk_100AD4790, &unk_10093B4E0);
  sub_100004F84(v83, &qword_100AD8D78, &qword_100948490);
  v92(v90, v88);
  (*(v38 + 32))(v85, v37, v87);
  swift_storeEnumTagMultiPayload();
  sub_1000F24EC(&qword_100AE0DA8, &unk_100962DE0);
  v39 = swift_allocObject();
  v40 = *(*v39 + 104);
  v41 = sub_1000F24EC(&qword_100ADA980, &qword_1009523D0);
  (*(*(v41 - 8) + 56))(v39 + v40, 1, 1, v41);
  *(v39 + *(*v39 + 112)) = xmmword_100941EE0;
  sub_100021CEC(v85, v39 + *(*v39 + 120), &qword_100ADA970, &qword_10094A610);
  *(v97 + OBJC_IVAR____TtC7Journal13ConfettiAsset_metadata) = v39;

  v42 = *(v0 + 2600);
  *(v0 + 2832) = v97;
  *(v0 + 2824) = v42;
  v43 = *(v0 + 2608);
  v95 = *(v0 + 3008);
  v94 = *(v0 + 3004);
  v44 = *(v0 + 992);
  v45 = *(v0 + 984);
  v46 = *(v0 + 976);
  v47 = *(v0 + 968);
  v48 = *(v0 + 960);
  v49 = *(v0 + 952);
  v50 = *(v0 + 896);
  *(v0 + 576) = *(v0 + 888);
  *(v0 + 584) = v50;

  v51._countAndFlagsBits = 0x20746573734120;
  v51._object = 0xE700000000000000;
  String.append(_:)(v51);
  *(v0 + 768) = v43;
  v52._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v52);

  v53 = objc_allocWithZone(NSAttributedString);
  v54 = String._bridgeToObjectiveC()();

  v55 = [v53 initWithString:v54];

  v56 = *(v97 + OBJC_IVAR____TtC7Journal5Asset_title);
  *(v97 + OBJC_IVAR____TtC7Journal5Asset_title) = v55;

  *v44 = static AssetPlacement.maxGridCount.getter();
  (*(v45 + 104))(v44, v94, v46);
  (*(v48 + 104))(v47, v95, v49);
  LOBYTE(v54) = JournalFeatureFlags.isEnabled.getter();
  (*(v48 + 8))(v47, v49);
  if (v54)
  {
    *(v0 + 2840) = CFAbsoluteTimeGetCurrent();
    v57 = swift_task_alloc();
    *(v0 + 2848) = v57;
    *v57 = v0;
    v57[1] = sub_1005DEA30;
    v58 = *(v0 + 992);
    v59 = *(v0 + 880);
    v60 = *(v0 + 872);

    return sub_10056B238(v60, v59, v97, v58, 1);
  }

  else
  {
    v62 = swift_task_alloc();
    *(v0 + 2872) = v62;
    *v62 = v0;
    v62[1] = sub_1005DEE38;
    v63 = *(v0 + 992);
    v64 = *(v0 + 880);
    v65 = *(v0 + 872);

    return sub_1001F8424(v65, v64, v97, v63);
  }
}

uint64_t sub_1005DEA30()
{
  v1 = *v0;

  v2 = *(v1 + 2400);
  v3 = *(v1 + 2392);

  return _swift_task_switch(sub_1005DEB84, v3, v2);
}

uint64_t sub_1005DEB84()
{
  (*(v0 + 2424))(*(v0 + 2328), *(v0 + 2880), *(v0 + 2312));

  v1 = swift_task_alloc();
  *(v0 + 2856) = v1;
  *v1 = v0;
  v1[1] = sub_1005DEC9C;
  v2 = *(v0 + 2536);
  v3 = *(v0 + 2328);

  return NSManagedObjectContext.perform<A>(schedule:_:)(v1, v3, sub_1002D2D78, v2, &type metadata for () + 1);
}

void sub_1005DEC9C()
{
  v2 = *v1;
  *(*v1 + 2864) = v0;

  if (v0)
  {
  }

  else
  {
    (*(v2 + 2456))(*(v2 + 2328), *(v2 + 2312));

    v3 = *(v2 + 2400);
    v4 = *(v2 + 2392);

    _swift_task_switch(sub_1005E3B08, v4, v3);
  }
}

uint64_t sub_1005DEE38()
{
  v1 = *v0;

  v2 = *(v1 + 2400);
  v3 = *(v1 + 2392);

  return _swift_task_switch(sub_1005DEF8C, v3, v2);
}

uint64_t sub_1005DEF8C()
{
  v1 = *(v0 + 2824);
  v2 = *(v0 + 2832);
  v3 = *(v0 + 2216);
  v4 = *(v0 + 2184);
  v5 = *(v0 + 2176);
  (*(*(v0 + 984) + 8))(*(v0 + 992), *(v0 + 976));

  (*(v4 + 8))(v3, v5);
  v6 = *(v0 + 2608) + 1;
  if (v6 == *(v0 + 912))
  {
LABEL_2:
    v7 = *(v0 + 2568);

    v8 = *(v0 + 8);
    v9 = *(v0 + 2536);

    return v8(v9);
  }

  v484 = (v0 + 688);
  v380 = (v0 + 736);
  v421 = (v0 + 752);
  v443 = (v0 + 784);
  v514 = (v0 + 776);
  v523 = (v0 + 808);
  v463 = (v0 + 816);
  v457 = 0x80000001008FDD50;
  v493 = 0x80000001008FDE10;
  v506 = 1;
  v413 = (v0 + 840);
  while (1)
  {
    *(v0 + 2608) = v6;
    *(v0 + 2600) = v1;
    v11 = *(v0 + 2552);
    *(v0 + 832) = 0;
    swift_stdlib_random();
    v12 = *(v0 + 832);
    v13 = (v12 * v11) >> 64;
    v14 = v12 * v11;
    v15 = *(v0 + 2552);
    if (v11 > v14)
    {
      v16 = -v15 % v15;
      if (v16 > v14)
      {
        do
        {
          v17 = *(v0 + 2552);
          *(v0 + 680) = 0;
          swift_stdlib_random();
          v18 = *(v0 + 680);
        }

        while (v16 > v18 * v17);
        v13 = (v18 * v17) >> 64;
        v15 = *(v0 + 2552);
      }
    }

    if (v13 >= v15)
    {
      __break(1u);
LABEL_117:
      v503 = *(v0 + 2988);
      v434 = *(v0 + 2980);
      v260 = *(v0 + 2256);
      v261 = *(v0 + 2248);
      v427 = *(v0 + 2160);
      v518 = *(v0 + 2056);
      v262 = *(v0 + 1904);
      v263 = *(v0 + 1872);
      v264 = *(v0 + 1864);
      v481 = *(v0 + 1384);
      v488 = *(v0 + 1376);
      v496 = *(v0 + 2048);
      v453 = *(v0 + 1368);
      v460 = *(v0 + 1360);
      v447 = *(v0 + 1352);
      v418 = *(v0 + 1344);
      v265 = *(v0 + 1336);
      v266 = swift_allocObject();
      *(v266 + 16) = xmmword_100940080;
      *(v266 + 56) = &type metadata for String;
      *(v266 + 32) = 0xD000000000000018;
      *(v266 + 40) = 0x80000001008FDC60;
      print(_:separator:terminator:)();

      Date.init()();
      v267 = *(v260 + 56);
      v267(v262, 0, 1, v261);
      v267(v263, 1, 1, v261);
      v267(v264, 1, 1, v261);
      v510 = *(v518 + 104);
      v510(v265, v503, v496);
      v475 = *(v518 + 56);
      v475(v265, 0, 1, v496);
      VisitAssetMetadata.init(placeName:city:typeOfPlace:visitStartTime:visitEndTime:createdDate:latitude:longitude:styleData:mapItemData:isWork:confidenceLevel:horizontalAccuracy:assetSource:)();
      Date.init()();
      v267(v262, 0, 1, v261);
      v267(v263, 1, 1, v261);
      v267(v264, 1, 1, v261);
      v510(v265, v503, v496);
      v475(v265, 0, 1, v496);
      VisitAssetMetadata.init(placeName:city:typeOfPlace:visitStartTime:visitEndTime:createdDate:latitude:longitude:styleData:mapItemData:isWork:confidenceLevel:horizontalAccuracy:assetSource:)();
      Date.init()();
      v267(v262, 0, 1, v261);
      v267(v263, 1, 1, v261);
      v267(v264, 1, 1, v261);
      v510(v265, v503, v496);
      v475(v265, 0, 1, v496);
      VisitAssetMetadata.init(placeName:city:typeOfPlace:visitStartTime:visitEndTime:createdDate:latitude:longitude:styleData:mapItemData:isWork:confidenceLevel:horizontalAccuracy:assetSource:)();
      Date.init()();
      v267(v262, 0, 1, v261);
      v267(v263, 1, 1, v261);
      v267(v264, 1, 1, v261);
      v510(v265, v503, v496);
      v475(v265, 0, 1, v496);
      VisitAssetMetadata.init(placeName:city:typeOfPlace:visitStartTime:visitEndTime:createdDate:latitude:longitude:styleData:mapItemData:isWork:confidenceLevel:horizontalAccuracy:assetSource:)();
      sub_1000F24EC(&qword_100AD64A8, &qword_100945170);
      v268 = *(v447 + 72);
      v269 = (*(v447 + 80) + 32) & ~*(v447 + 80);
      v270 = swift_allocObject();
      *(v270 + 16) = xmmword_100941FE0;
      v271 = v270 + v269;
      v272 = *(v447 + 16);
      v272(v271, v481, v418);
      v272(v271 + v268, v488, v418);
      v272(v271 + 2 * v268, v453, v418);
      v272(v271 + 3 * v268, v460, v418);
      sub_1006ADB18(v270);
      v510(v427, v434, v496);
      v245 = sub_10011CEC0(v427, _swiftEmptyArrayStorage);
      v273 = *(v447 + 8);
      v273(v460, v418);
      v273(v453, v418);
      v273(v488, v418);
      v273(v481, v418);
      goto LABEL_124;
    }

    v19 = *(v0 + 2888);
    v20 = *(v0 + 2216);
    v21 = *(v0 + 2208);
    v22 = *(v0 + 2184);
    v23 = *(v0 + 2176);
    v24 = *(v22 + 16);
    v25 = *(v0 + 904) + ((*(v0 + 2884) + 32) & ~*(v0 + 2884)) + *(v22 + 72) * v13;
    *(v0 + 2616) = v24;
    *(v0 + 2624) = (v22 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v24(v20, v25, v23);
    v24(v21, v20, v23);
    v26 = (*(v22 + 88))(v21, v23);
    if (v26 == v19)
    {
      v202 = swift_allocObject();
      *(v202 + 16) = xmmword_100940080;
      *(v202 + 56) = &type metadata for String;
      *(v202 + 32) = 0xD000000000000013;
      *(v202 + 40) = 0x80000001008FDEC0;
      print(_:separator:terminator:)();

      v203 = swift_task_alloc();
      *(v0 + 2632) = v203;
      *(v203 + 16) = 1;
      v204 = swift_task_alloc();
      *(v0 + 2640) = v204;
      v205 = sub_1000F24EC(&qword_100AEABF0, &qword_10095F7D0);
      *v204 = v0;
      v204[1] = sub_1005CAA34;
      v176 = *(v0 + 880);
      v175 = *(v0 + 872);
      v181 = v205;
      v179 = sub_1005ED67C;
      v174 = v0 + 848;
      goto LABEL_101;
    }

    if (v26 != *(v0 + 2892))
    {
      break;
    }

LABEL_6:
    (*(*(v0 + 2184) + 8))(*(v0 + 2216), *(v0 + 2176));
LABEL_7:
    v6 = *(v0 + 2608) + 1;
    if (v6 == *(v0 + 912))
    {
      goto LABEL_2;
    }
  }

  if (v26 == *(v0 + 2896))
  {
    v206 = swift_allocObject();
    *(v206 + 16) = xmmword_100940080;
    *(v206 + 56) = &type metadata for String;
    *(v206 + 32) = 0xD000000000000013;
    *(v206 + 40) = 0x80000001008FDBE0;
    print(_:separator:terminator:)();

    v207 = swift_task_alloc();
    *(v0 + 2704) = v207;
    *v207 = v0;
    v207[1] = sub_1005D1548;
    v208 = *(v0 + 1264);
    v209 = *(v0 + 880);
    v210 = *(v0 + 872);

    return sub_1006A580C(v208, v210, v209);
  }

  if (v26 == *(v0 + 2900))
  {
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_100940080;
    *(v27 + 56) = &type metadata for String;
    *(v27 + 32) = 0xD000000000000012;
    *(v27 + 40) = 0x80000001008FDE10;
    print(_:separator:terminator:)();

    v28 = *(v0 + 112);
    v29 = *(v28 + 16);
    if (!v29)
    {
      goto LABEL_36;
    }

    *v463 = 0;
    swift_stdlib_random();
    v30 = *v463 * v29;
    v31 = (*v463 * v29) >> 64;
    if (v29 > v30)
    {
      v32 = -v29 % v29;
      if (v32 > v30)
      {
        do
        {
          *v413 = 0;
          swift_stdlib_random();
        }

        while (v32 > *v413 * v29);
        v31 = (*v413 * v29) >> 64;
      }
    }

    if (v31 >= *(v28 + 16))
    {
      __break(1u);
LABEL_148:
      __break(1u);
LABEL_149:
      __break(1u);
LABEL_150:
      v203 = swift_task_alloc();
      *(v0 + 2808) = v203;
      *(v203 + 16) = 1;
      v363 = swift_task_alloc();
      *(v0 + 2816) = v363;
      v364 = sub_1000F24EC(&qword_100AEABF0, &qword_10095F7D0);
      *v363 = v0;
      v363[1] = sub_1005DDCB8;
      v176 = *(v0 + 880);
      v175 = *(v0 + 872);
      v181 = v364;
      v179 = sub_1005ED564;
      v174 = v0 + 824;
      goto LABEL_101;
    }

    swift_beginAccess();

    sub_100691A14(v31);
    swift_endAccess();

LABEL_36:
    v47 = *(v0 + 2024);
    v48 = *(v0 + 1600);
    v49 = *(v0 + 1592);
    URL.init(string:)();
    if ((*(v48 + 48))(v47, 1, v49) == 1)
    {
      v50 = *(v0 + 2216);
      v51 = *(v0 + 2184);
      v52 = *(v0 + 2176);
      v53 = *(v0 + 2024);
      goto LABEL_38;
    }

    (*(*(v0 + 1600) + 32))(*(v0 + 1664), *(v0 + 2024), *(v0 + 1592));
    v54 = Data.init(contentsOf:options:)();
    if (v1)
    {
      v56 = *(v0 + 2216);
      v57 = *(v0 + 2184);
      v58 = *(v0 + 2176);
      v59 = *(v0 + 1664);
      v60 = *(v0 + 1600);
      v61 = *(v0 + 1592);

      (*(v60 + 8))(v59, v61);
      goto LABEL_58;
    }

    v102 = v54;
    v103 = v55;
    v104 = objc_allocWithZone(UIImage);
    sub_100049ED8(v102, v103);
    isa = Data._bridgeToObjectiveC()().super.isa;
    v106 = [v104 initWithData:isa];

    v107 = sub_1000340DC(v102, v103);
    if (!v106)
    {
      v108 = *(v0 + 2216);
      v109 = *(v0 + 2184);
      v110 = *(v0 + 2176);
      v111 = *(v0 + 1664);
      v112 = *(v0 + 1600);
      v113 = *(v0 + 1592);

      v114 = sub_1000340DC(v102, v103);
      (*(v112 + 8))(v111, v113, v114);
      (*(v109 + 8))(v108, v110);
      goto LABEL_68;
    }

    v457 = v103;
    v388 = *(v0 + 3000);
    v399 = *(v0 + 2900);
    v211 = *(v0 + 2256);
    v381 = *(v0 + 2248);
    v464 = *(v0 + 2200);
    v430 = *(v0 + 2192);
    v507 = *(v0 + 2184);
    v394 = *(v0 + 2176);
    v494 = *(v0 + 2160);
    v437 = *(v0 + 2152);
    v376 = *(v0 + 2144);
    v524 = *(v0 + 2056);
    v485 = *(v0 + 2048);
    v422 = *(v0 + 2016);
    v367 = *(v0 + 1896);
    v471 = *(v0 + 1744);
    v407 = *(v0 + 1736);
    v515 = *(v0 + 1728);
    v414 = *(v0 + 1720);
    v444 = *(v0 + 1712);
    v212 = *(v0 + 1600);
    v213 = *(v0 + 1592);
    v373 = *(v0 + 1544);
    v214 = *(v0 + 1528);
    v370 = *(v0 + 1520);
    (*(v524 + 104))(v107);

    (*(v212 + 56))(v422, 1, 1, v213);
    v423 = v106;
    Date.init()();
    (*(v211 + 56))(v367, 0, 1, v381);
    (*(v214 + 104))(v373, v388, v370);
    (*(v507 + 104))(v464, v399, v394);
    v400 = *(v524 + 16);
    v400(v494, v376, v485);
    UUID.init()();
    *(objc_allocWithZone(type metadata accessor for MusicAsset(0)) + OBJC_IVAR____TtC7Journal10MusicAsset_metadata) = 0;
    (*(v515 + 16))(v407, v471, v414);
    v24(v430, v464, v394);
    v215 = v494;
    v400(v437, v494, v485);
    v216 = sub_100285908(v407, v430, v437);
    v217 = *(v515 + 8);
    v217(v471, v414);
    v493 = *(v524 + 8);
    v493(v215, v485);
    (*(v507 + 8))(v464, v394);
    *v444 = v423;
    swift_storeEnumTagMultiPayload();
    v506 = v423;
    UUID.init()();
    v218 = UUID.uuidString.getter();
    v220 = v219;
    v217(v471, v414);
    type metadata accessor for AssetAttachment(0);
    v221 = swift_allocObject();
    *(v221 + 16) = 0;
    sub_1005ED56C(v444, v221 + OBJC_IVAR____TtC7Journal15AssetAttachment_assetType, type metadata accessor for AssetAttachment.AssetType);
    v222 = (v221 + OBJC_IVAR____TtC7Journal15AssetAttachment_fileNameID);
    *v222 = v218;
    v222[1] = v220;
    v223 = OBJC_IVAR____TtC7Journal5Asset_sourceAttachments;
    swift_beginAccess();
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    v514 = v216;
    if (*((*(v216 + v223) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v216 + v223) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
LABEL_154:
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    v445 = *(v0 + 2048);
    v451 = *(v0 + 2144);
    v224 = *(v0 + 2016);
    v225 = *(v0 + 2008);
    v382 = *(v0 + 1904);
    v377 = *(v0 + 1896);
    v465 = *(v0 + 1664);
    v415 = *(v0 + 1600);
    v438 = *(v0 + 1592);
    v395 = *(v0 + 1544);
    v226 = *(v0 + 1528);
    v389 = *(v0 + 1520);
    v408 = *(v0 + 1512);
    v431 = *(v0 + 1504);
    v472 = *(v0 + 1496);
    v227 = *(v0 + 1488);
    v424 = *(v0 + 1480);
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    swift_endAccess();
    sub_1000082B4(v224, v225, &unk_100AD6DD0, &qword_1009437C0);
    sub_1000082B4(v377, v382, &unk_100AD4790, &unk_10093B4E0);
    (*(v226 + 16))(v227, v395, v389);
    (*(v226 + 56))(v227, 0, 1, v389);
    MusicAssetMetadata.init(mediaId:mediaURL:artistName:song:albumName:numberOfTimesPlayed:startTime:mediaType:)();

    v228 = sub_1000340DC(v102, v457);
    (*(v226 + 8))(v395, v389, v228);
    sub_100004F84(v377, &unk_100AD4790, &unk_10093B4E0);
    sub_100004F84(v224, &unk_100AD6DD0, &qword_1009437C0);
    v493(v451, v445);
    (*(v415 + 8))(v465, v438);
    (*(v431 + 32))(v424, v408, v472);
    swift_storeEnumTagMultiPayload();
    sub_1000F24EC(&qword_100AE0E90, &unk_1009525D0);
    v229 = swift_allocObject();
    v230 = *(*v229 + 104);
    v231 = sub_1000F24EC(&qword_100AD6F70, &unk_100962D80);
    (*(*(v231 - 8) + 56))(v229 + v230, 1, 1, v231);
    *(v229 + *(*v229 + 112)) = xmmword_100941EE0;
    sub_100021CEC(v424, v229 + *(*v229 + 120), &qword_100ADA8E0, &unk_100962D70);
    v232 = &OBJC_IVAR____TtC7Journal10MusicAsset_metadata;
LABEL_122:
    v245 = v514;
    *(v514 + *v232) = v229;
LABEL_123:

    v1 = 0;
LABEL_124:
    *(v0 + 2832) = v245;
    *(v0 + 2824) = v1;
    v301 = *(v0 + 2608);
    v528 = *(v0 + 3008);
    v521 = *(v0 + 3004);
    v302 = *(v0 + 992);
    v303 = *(v0 + 984);
    v512 = *(v0 + 976);
    v304 = *(v0 + 968);
    v305 = *(v0 + 960);
    v306 = *(v0 + 952);
    v307 = *(v0 + 896);
    *(v0 + 576) = *(v0 + 888);
    *(v0 + 584) = v307;

    v308._countAndFlagsBits = 0x20746573734120;
    v308._object = 0xE700000000000000;
    String.append(_:)(v308);
    *(v0 + 768) = v301;
    v309._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v309);

    v310 = v245;
    v311 = objc_allocWithZone(NSAttributedString);
    v312 = String._bridgeToObjectiveC()();

    v313 = [v311 initWithString:v312];

    v314 = *(v310 + OBJC_IVAR____TtC7Journal5Asset_title);
    *(v310 + OBJC_IVAR____TtC7Journal5Asset_title) = v313;

    *v302 = static AssetPlacement.maxGridCount.getter();
    (*(v303 + 104))(v302, v521, v512);
    (*(v305 + 104))(v304, v528, v306);
    LOBYTE(v312) = JournalFeatureFlags.isEnabled.getter();
    (*(v305 + 8))(v304, v306);
    if (v312)
    {
      *(v0 + 2840) = CFAbsoluteTimeGetCurrent();
      v315 = swift_task_alloc();
      *(v0 + 2848) = v315;
      *v315 = v0;
      v315[1] = sub_1005DEA30;
      v316 = *(v0 + 992);
      v317 = *(v0 + 880);
      v318 = *(v0 + 872);

      return sub_10056B238(v318, v317, v310, v316, 1);
    }

    else
    {
      v319 = swift_task_alloc();
      *(v0 + 2872) = v319;
      *v319 = v0;
      v319[1] = sub_1005DEE38;
      v320 = *(v0 + 992);
      v321 = *(v0 + 880);
      v322 = *(v0 + 872);

      return sub_1001F8424(v322, v321, v310, v320);
    }
  }

  if (v26 == *(v0 + 2904))
  {
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_100940080;
    *(v33 + 56) = &type metadata for String;
    *(v33 + 32) = 0xD000000000000015;
    *(v33 + 40) = 0x80000001008FDD50;
    print(_:separator:terminator:)();

    v34 = *(v0 + 120);
    v35 = *(v34 + 16);
    if (v35)
    {
      *v443 = 0;
      swift_stdlib_random();
      v36 = *v443 * v35;
      v37 = (*v443 * v35) >> 64;
      if (v35 > v36)
      {
        v38 = -v35 % v35;
        v39 = (v0 + 808);
        if (v38 > v36)
        {
          do
          {
            *v39 = 0;
            swift_stdlib_random();
            v39 = (v0 + 808);
          }

          while (v38 > *v523 * v35);
          v37 = (*v523 * v35) >> 64;
        }
      }

      if (v37 >= *(v34 + 16))
      {
        goto LABEL_148;
      }

      swift_beginAccess();

      sub_100691A14(v37);
      swift_endAccess();
    }

    v115 = *(v0 + 2000);
    v116 = *(v0 + 1600);
    v117 = *(v0 + 1592);
    URL.init(string:)();
    if ((*(v116 + 48))(v115, 1, v117) != 1)
    {
      (*(*(v0 + 1600) + 32))(*(v0 + 1656), *(v0 + 2000), *(v0 + 1592));
      v119 = Data.init(contentsOf:options:)();
      if (v1)
      {
        v56 = *(v0 + 2216);
        v57 = *(v0 + 2184);
        v58 = *(v0 + 2176);
        v121 = *(v0 + 1656);
        v122 = *(v0 + 1600);
        v123 = *(v0 + 1592);

        (*(v122 + 8))(v121, v123);
LABEL_58:
        (*(v57 + 8))(v56, v58);
LABEL_68:
        v1 = 0;
        goto LABEL_7;
      }

      v131 = v120;
      v132 = v119;
      v133 = objc_allocWithZone(UIImage);
      sub_100049ED8(v132, v131);
      v134 = Data._bridgeToObjectiveC()().super.isa;
      v135 = [v133 initWithData:v134];

      v136 = sub_1000340DC(v132, v131);
      v137 = v132;
      if (!v135)
      {
        v480 = *(v0 + 2216);
        v138 = *(v0 + 2184);
        v139 = *(v0 + 2176);
        v140 = *(v0 + 1656);
        v141 = *(v0 + 1600);
        v142 = *(v0 + 1592);

        v143 = sub_1000340DC(v137, v131);
        (*(v141 + 8))(v140, v142, v143);
        (*(v138 + 8))(v480, v139);
        goto LABEL_68;
      }

      v446 = v132;
      v452 = v131;
      v390 = *(v0 + 2992);
      v401 = *(v0 + 2904);
      v238 = *(v0 + 2256);
      v383 = *(v0 + 2248);
      v396 = *(v0 + 2200);
      v416 = *(v0 + 2192);
      v516 = *(v0 + 2184);
      v458 = *(v0 + 2176);
      v495 = *(v0 + 2160);
      v425 = *(v0 + 2152);
      v378 = *(v0 + 2136);
      v525 = *(v0 + 2056);
      v473 = *(v0 + 2048);
      v239 = *(v0 + 1992);
      v368 = *(v0 + 1888);
      v466 = *(v0 + 1744);
      v409 = *(v0 + 1736);
      v508 = *(v0 + 1728);
      v486 = *(v0 + 1720);
      v432 = *(v0 + 1712);
      v365 = *(v0 + 1656);
      v240 = *(v0 + 1600);
      v241 = *(v0 + 1592);
      v374 = *(v0 + 1536);
      v242 = *(v0 + 1528);
      v371 = *(v0 + 1520);
      (*(v525 + 104))(v136);

      (*(v240 + 16))(v239, v365, v241);
      (*(v240 + 56))(v239, 0, 1, v241);
      Date.init()();
      (*(v238 + 56))(v368, 0, 1, v383);
      (*(v242 + 104))(v374, v390, v371);
      (*(v516 + 104))(v396, v401, v458);
      v402 = *(v525 + 16);
      v402(v495, v378, v473);
      UUID.init()();
      *(objc_allocWithZone(type metadata accessor for PodcastAsset(0)) + OBJC_IVAR____TtC7Journal12PodcastAsset_metadata) = 0;
      (*(v508 + 16))(v409, v466, v486);
      v24(v416, v396, v458);
      v402(v425, v495, v473);
      v243 = sub_100285908(v409, v416, v425);
      v244 = *(v508 + 8);
      v244(v466, v486);
      v509 = *(v525 + 8);
      v509(v495, v473);
      (*(v516 + 8))(v396, v458);
      *v432 = v135;
      swift_storeEnumTagMultiPayload();
      v245 = v243;
      v517 = v135;
      UUID.init()();
      v246 = UUID.uuidString.getter();
      v248 = v247;
      v244(v466, v486);
      type metadata accessor for AssetAttachment(0);
      v249 = swift_allocObject();
      *(v249 + 16) = 0;
      sub_1005ED56C(v432, v249 + OBJC_IVAR____TtC7Journal15AssetAttachment_assetType, type metadata accessor for AssetAttachment.AssetType);
      v250 = (v249 + OBJC_IVAR____TtC7Journal15AssetAttachment_fileNameID);
      *v250 = v246;
      v250[1] = v248;
      v251 = OBJC_IVAR____TtC7Journal5Asset_sourceAttachments;
      swift_beginAccess();
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((*(v245 + v251) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v245 + v251) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      v459 = *(v0 + 2048);
      v467 = *(v0 + 2136);
      v252 = *(v0 + 2008);
      v253 = *(v0 + 1992);
      v391 = *(v0 + 1904);
      v384 = *(v0 + 1888);
      v487 = *(v0 + 1656);
      v417 = *(v0 + 1600);
      v439 = *(v0 + 1592);
      v403 = *(v0 + 1536);
      v254 = *(v0 + 1528);
      v397 = *(v0 + 1520);
      v255 = *(v0 + 1488);
      v410 = *(v0 + 1464);
      v426 = *(v0 + 1456);
      v474 = *(v0 + 1448);
      v433 = *(v0 + 1440);
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      swift_endAccess();
      sub_1000082B4(v253, v252, &unk_100AD6DD0, &qword_1009437C0);
      sub_1000082B4(v384, v391, &unk_100AD4790, &unk_10093B4E0);
      (*(v254 + 16))(v255, v403, v397);
      (*(v254 + 56))(v255, 0, 1, v397);
      PodcastAssetMetadata.init(mediaId:title:author:mediaURL:timePlayed:numberOfTimesPlayed:mediaType:)();

      v256 = sub_1000340DC(v446, v452);
      (*(v254 + 8))(v403, v397, v256);
      sub_100004F84(v384, &unk_100AD4790, &unk_10093B4E0);
      sub_100004F84(v253, &unk_100AD6DD0, &qword_1009437C0);
      v509(v467, v459);
      (*(v417 + 8))(v487, v439);
      (*(v426 + 32))(v433, v410, v474);
      swift_storeEnumTagMultiPayload();
      sub_1000F24EC(&qword_100AE0E80, &unk_1009525A0);
      v257 = swift_allocObject();
      v258 = *(*v257 + 104);
      v259 = sub_1000F24EC(&qword_100AD2A70, &qword_100952E00);
      (*(*(v259 - 8) + 56))(v257 + v258, 1, 1, v259);
      *(v257 + *(*v257 + 112)) = xmmword_100941EE0;
      sub_100021CEC(v433, v257 + *(*v257 + 120), &qword_100ADA958, &unk_100960730);
      *(v245 + OBJC_IVAR____TtC7Journal12PodcastAsset_metadata) = v257;

      goto LABEL_123;
    }

    v53 = *(v0 + 2000);
    (*(*(v0 + 2184) + 8))(*(v0 + 2216), *(v0 + 2176));

    goto LABEL_54;
  }

  if (v26 == *(v0 + 2908))
  {
    v40 = swift_allocObject();
    *(v40 + 16) = xmmword_100940080;
    *(v40 + 56) = &type metadata for String;
    *(v40 + 32) = 0xD000000000000012;
    *(v40 + 40) = 0x80000001008FDCA0;
    print(_:separator:terminator:)();

    v41 = *(v0 + 128);
    v42 = *(v41 + 16);
    if (v42)
    {
      *v421 = 0;
      swift_stdlib_random();
      v43 = *v421 * v42;
      v44 = (*v421 * v42) >> 64;
      if (v42 > v43)
      {
        v45 = -v42 % v42;
        v46 = (v0 + 776);
        if (v45 > v43)
        {
          do
          {
            *v46 = 0;
            swift_stdlib_random();
            v46 = (v0 + 776);
          }

          while (v45 > *v514 * v42);
          v44 = (*v514 * v42) >> 64;
        }
      }

      if (v44 >= *(v41 + 16))
      {
        goto LABEL_149;
      }

      swift_beginAccess();

      sub_100691A14(v44);
      swift_endAccess();
    }

    v144 = *(v0 + 1984);
    v145 = *(v0 + 1600);
    v146 = *(v0 + 1592);
    URL.init(string:)();
    if ((*(v145 + 48))(v144, 1, v146) != 1)
    {
      (*(*(v0 + 1600) + 32))(*(v0 + 1648), *(v0 + 1984), *(v0 + 1592));
      v147 = Data.init(contentsOf:options:)();
      if (v1)
      {
        v149 = *(v0 + 2216);
        v150 = *(v0 + 2184);
        v151 = *(v0 + 2176);
        v152 = *(v0 + 1648);
        v153 = *(v0 + 1600);
        v154 = *(v0 + 1592);

        (*(v153 + 8))(v152, v154);
        (*(v150 + 8))(v149, v151);
      }

      else
      {
        v155 = v147;
        v156 = v148;
        v157 = objc_allocWithZone(UIImage);
        sub_100049ED8(v155, v156);
        v158 = Data._bridgeToObjectiveC()().super.isa;
        v159 = [v157 initWithData:v158];

        v160 = sub_1000340DC(v155, v156);
        if (v159)
        {
          v461 = v156;
          v404 = *(v0 + 2908);
          v283 = *(v0 + 2256);
          v392 = *(v0 + 2248);
          v469 = *(v0 + 2200);
          v435 = *(v0 + 2192);
          v284 = *(v0 + 2184);
          v398 = *(v0 + 2176);
          v498 = *(v0 + 2160);
          v520 = *(v0 + 2152);
          v385 = *(v0 + 2128);
          v490 = *(v0 + 2048);
          v285 = *(v0 + 1880);
          v477 = *(v0 + 1744);
          v411 = *(v0 + 1736);
          v527 = *(v0 + 1728);
          v419 = *(v0 + 1720);
          v448 = *(v0 + 1712);
          v511 = *(v0 + 2056);
          (*(v511 + 104))(v160);

          v440 = v159;
          Date.init()();
          (*(v283 + 56))(v285, 0, 1, v392);
          (*(v284 + 104))(v469, v404, v398);
          v405 = *(v511 + 16);
          v405(v498, v385, v490);
          UUID.init()();
          *(objc_allocWithZone(type metadata accessor for BookAsset(0)) + OBJC_IVAR____TtC7Journal9BookAsset_metadata) = 0;
          (*(v527 + 16))(v411, v477, v419);
          v24(v435, v469, v398);
          v286 = v498;
          v405(v520, v498, v490);
          v287 = sub_100285908(v411, v435, v520);
          v288 = *(v527 + 8);
          v514 = v287;
          v288(v477, v419);
          v499 = *(v511 + 8);
          v499(v286, v490);
          (*(v284 + 8))(v469, v398);
          *v448 = v440;
          swift_storeEnumTagMultiPayload();
          v491 = v440;
          UUID.init()();
          v289 = UUID.uuidString.getter();
          v291 = v290;
          v288(v477, v419);
          type metadata accessor for AssetAttachment(0);
          v292 = swift_allocObject();
          *(v292 + 16) = 0;
          sub_1005ED56C(v448, v292 + OBJC_IVAR____TtC7Journal15AssetAttachment_assetType, type metadata accessor for AssetAttachment.AssetType);
          v293 = (v292 + OBJC_IVAR____TtC7Journal15AssetAttachment_fileNameID);
          *v293 = v289;
          v293[1] = v291;
          v294 = OBJC_IVAR____TtC7Journal5Asset_sourceAttachments;
          swift_beginAccess();
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((*(v514 + v294) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v514 + v294) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          v441 = *(v0 + 2128);
          v436 = *(v0 + 2048);
          v295 = *(v0 + 1904);
          v296 = *(v0 + 1880);
          v297 = *(v0 + 1600);
          v449 = *(v0 + 1592);
          v455 = *(v0 + 1648);
          v298 = *(v0 + 1424);
          v428 = *(v0 + 1416);
          v470 = *(v0 + 1400);
          v478 = *(v0 + 1408);
          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          swift_endAccess();
          sub_1000082B4(v296, v295, &unk_100AD4790, &unk_10093B4E0);
          BookAssetMetadata.init(mediaId:title:author:timeOfPurchase:)();

          sub_1000340DC(v155, v461);
          sub_100004F84(v296, &unk_100AD4790, &unk_10093B4E0);
          v499(v441, v436);
          (*(v297 + 8))(v455, v449);
          (*(v428 + 32))(v470, v298, v478);
          swift_storeEnumTagMultiPayload();
          sub_1000F24EC(&qword_100AEABF8, &unk_100962D40);
          v229 = swift_allocObject();
          v299 = *(*v229 + 104);
          v300 = sub_1000F24EC(&qword_100AD4318, &qword_100942B38);
          (*(*(v300 - 8) + 56))(v229 + v299, 1, 1, v300);
          *(v229 + *(*v229 + 112)) = xmmword_100941EE0;
          sub_100021CEC(v470, v229 + *(*v229 + 120), &qword_100ADA8C0, &qword_10094A5B8);
          v232 = &OBJC_IVAR____TtC7Journal9BookAsset_metadata;
          goto LABEL_122;
        }

        v161 = *(v0 + 2216);
        v162 = *(v0 + 2184);
        v163 = *(v0 + 2176);
        v164 = *(v0 + 1648);
        v165 = *(v0 + 1600);
        v166 = *(v0 + 1592);

        v167 = sub_1000340DC(v155, v156);
        (*(v165 + 8))(v164, v166, v167);
        (*(v162 + 8))(v161, v163);
      }

      v1 = 0;
      goto LABEL_7;
    }

    v50 = *(v0 + 2216);
    v51 = *(v0 + 2184);
    v52 = *(v0 + 2176);
    v53 = *(v0 + 1984);
LABEL_38:
    (*(v51 + 8))(v50, v52);

LABEL_54:

    v118 = v53;
LABEL_55:
    sub_100004F84(v118, &unk_100AD6DD0, &qword_1009437C0);
    goto LABEL_7;
  }

  if (v26 != *(v0 + 2912))
  {
    if (v26 != *(v0 + 2916))
    {
      if (v26 == *(v0 + 2920))
      {
        goto LABEL_117;
      }

      if (v26 == *(v0 + 2924))
      {
        v476 = *(v0 + 2988);
        v526 = *(v0 + 2980);
        v274 = *(v0 + 2256);
        v275 = *(v0 + 2248);
        v276 = *(v0 + 2056);
        v277 = *(v0 + 1904);
        v278 = *(v0 + 1872);
        v468 = *(v0 + 2048);
        v454 = *(v0 + 1864);
        v497 = *(v0 + 2160);
        v504 = *(v0 + 1376);
        v482 = *(v0 + 1384);
        v489 = *(v0 + 1352);
        v519 = *(v0 + 1344);
        v279 = *(v0 + 1336);
        v280 = swift_allocObject();
        *(v280 + 16) = xmmword_100940080;
        *(v280 + 56) = &type metadata for String;
        *(v280 + 32) = 0xD000000000000017;
        *(v280 + 40) = 0x80000001008FDC40;
        print(_:separator:terminator:)();

        Date.init()();
        v281 = *(v274 + 56);
        v281(v277, 0, 1, v275);
        v281(v278, 1, 1, v275);
        v281(v454, 1, 1, v275);
        v282 = *(v276 + 104);
        v282(v279, v476, v468);
        (*(v276 + 56))(v279, 0, 1, v468);
        VisitAssetMetadata.init(placeName:city:typeOfPlace:visitStartTime:visitEndTime:createdDate:latitude:longitude:styleData:mapItemData:isWork:confidenceLevel:horizontalAccuracy:assetSource:)();
        v282(v497, v526, v468);
        (*(v489 + 16))(v504, v482, v519);
        v245 = sub_10033CC64(v497, v504);
        (*(v489 + 8))(v482, v519);
        goto LABEL_124;
      }

      if (v26 == *(v0 + 2928))
      {
        v124 = *(v0 + 1944);
        v125 = *(v0 + 1936);
        v126 = *(v0 + 1600);
        v127 = *(v0 + 1592);
        v128 = [objc_allocWithZone(LPLinkMetadata) init];
        *(v0 + 2712) = v128;
        URL.init(string:)();
        sub_1000082B4(v124, v125, &unk_100AD6DD0, &qword_1009437C0);
        v502 = *(v126 + 48);
        if (v502(v125, 1, v127) == 1)
        {
          v130 = 0;
        }

        else
        {
          v168 = *(v0 + 1936);
          v169 = *(v0 + 1600);
          v170 = *(v0 + 1592);
          URL._bridgeToObjectiveC()(v129);
          v130 = v171;
          (*(v169 + 8))(v168, v170);
        }

        v172 = *(v0 + 1928);
        v173 = *(v0 + 1592);
        [v128 setURL:v130];

        URL.init(string:)();
        v174 = (v502)(v172, 1, v173);
        if (v174 == 1)
        {
          goto LABEL_156;
        }

        v183 = *(v0 + 1928);
        v184 = *(v0 + 1600);
        v185 = *(v0 + 1592);
        URL._bridgeToObjectiveC()(v182);
        v187 = v186;
        v188 = *(v184 + 8);
        *(v0 + 2720) = v188;
        *(v0 + 2728) = (v184 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v188(v183, v185);
        [v128 setOriginalURL:v187];

        *(v0 + 656) = 0x20656C707041;
        *(v0 + 664) = 0xE600000000000000;
        *(v0 + 696) = 0;
        swift_stdlib_random();
        v189 = *(v0 + 696);
        if (((100 * v189) & 0xFFFFFFFFFFFFFFF0) != 0)
        {
          v190 = (v189 * 0x64uLL) >> 64;
        }

        else
        {
          v191 = (v0 + 688);
          do
          {
            *v191 = 0;
            swift_stdlib_random();
            v191 = (v0 + 688);
          }

          while (((100 * *v484) & 0xFFFFFFFFFFFFFFF0) == 0);
          v190 = (*v484 * 0x64uLL) >> 64;
        }

        v192 = *(v0 + 1944);
        v193 = *(v0 + 1920);
        v194 = *(v0 + 1592);
        *(v0 + 864) = v190;
        v195._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v195);

        v196 = String._bridgeToObjectiveC()();

        [v128 setTitle:v196];

        sub_1000082B4(v192, v193, &unk_100AD6DD0, &qword_1009437C0);
        if (v502(v193, 1, v194) != 1)
        {
          v325 = *(v0 + 2980);
          v326 = *(v0 + 2104);
          v327 = *(v0 + 2056);
          v328 = *(v0 + 2048);
          v329 = *(v0 + 1616);
          v330 = *(v0 + 1608);
          v331 = *(v0 + 1600);
          v332 = *(v0 + 1592);
          (*(v331 + 32))(v329, *(v0 + 1920), v332);
          (*(v327 + 104))(v326, v325, v328);
          (*(v331 + 16))(v330, v329, v332);
          Date.init()();
          v333 = swift_task_alloc();
          *(v0 + 2736) = v333;
          *v333 = v0;
          v333[1] = sub_1005D69DC;
          v334 = *(v0 + 2288);
          v335 = *(v0 + 2104);
          v336 = *(v0 + 1608);
          v337 = *(v0 + 880);
          v338 = *(v0 + 872);

          return sub_1001DEA08(v338, v337, v335, v336, 0, 0, v334);
        }

        v197 = *(v0 + 2216);
        v198 = *(v0 + 2184);
        v199 = *(v0 + 2176);
        v200 = *(v0 + 1944);
        v201 = *(v0 + 1920);

        sub_100004F84(v200, &unk_100AD6DD0, &qword_1009437C0);
        (*(v198 + 8))(v197, v199);
        v118 = v201;
        goto LABEL_55;
      }

      if (v26 == *(v0 + 2932))
      {
        v203 = swift_task_alloc();
        *(v0 + 2760) = v203;
        *(v203 + 16) = 1;
        v323 = swift_task_alloc();
        *(v0 + 2768) = v323;
        v324 = sub_1000F24EC(&qword_100AEABF0, &qword_10095F7D0);
        *v323 = v0;
        v323[1] = sub_1005DB91C;
        v176 = *(v0 + 880);
        v175 = *(v0 + 872);
        v181 = v324;
        v179 = sub_1005ED67C;
        v174 = v0 + 712;
LABEL_101:
        v178 = 0x80000001008FDB40;
        v177 = 0xD000000000000024;
        v180 = v203;

        return withCheckedContinuation<A>(isolation:function:_:)(v174, v175, v176, v177, v178, v179, v180, v181);
      }

      if (v26 == *(v0 + 2936))
      {
        v203 = swift_task_alloc();
        *(v0 + 2776) = v203;
        *(v203 + 16) = 1;
        v339 = swift_task_alloc();
        *(v0 + 2784) = v339;
        v340 = sub_1000F24EC(&qword_100AEABF0, &qword_10095F7D0);
        *v339 = v0;
        v339[1] = sub_1005DC438;
        v176 = *(v0 + 880);
        v175 = *(v0 + 872);
        v181 = v340;
        v179 = sub_1005ED67C;
        v174 = v0 + 720;
        goto LABEL_101;
      }

      if (v26 == *(v0 + 2940))
      {
        v341 = sub_1005ED3EC(v26, -90.0, 90.0);
        v343 = v342;
        sub_1005ED3EC(v341, -180.0, 180.0);
        v345 = v344;
        *v380 = _swiftEmptyArrayStorage;
        v174 = sub_1006A699C();
        if (v174 + 5000 >= 1)
        {
          v346 = v174 + 4999;
          v102 = 1;
          while (1)
          {
            v347 = sub_1005ED3EC(v174, -0.01, 0.01);
            v343 = v343 + v348;
            sub_1005ED3EC(v347, -0.01, 0.01);
            v345 = v345 + v349;
            [objc_allocWithZone(CLLocation) initWithLatitude:v343 longitude:v345];
            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            if (*((*v380 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v380 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            v174 = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            if (!v346)
            {
              break;
            }

            --v346;
            if (__OFADD__(v102++, 1))
            {
              __break(1u);
              goto LABEL_154;
            }
          }

          v386 = *(v0 + 2940);
          v351 = *(v0 + 2304);
          v369 = *(v0 + 2280);
          v352 = *(v0 + 2256);
          v353 = *(v0 + 2248);
          v375 = *(v0 + 2200);
          v406 = *(v0 + 2192);
          v505 = *(v0 + 2184);
          v372 = *(v0 + 2176);
          v379 = *(v0 + 2160);
          v412 = *(v0 + 2152);
          v513 = *(v0 + 2080);
          v522 = *(v0 + 2048);
          v529 = *(v0 + 2056);
          v420 = *(v0 + 1904);
          v429 = *(v0 + 1872);
          v354 = *(v0 + 1792);
          v479 = *(v0 + 1784);
          v483 = *(v0 + 1744);
          v393 = *(v0 + 1736);
          v492 = *(v0 + 1728);
          v500 = *(v0 + 1720);
          v442 = *(v0 + 1176);
          v450 = *(v0 + 1168);
          v456 = *(v0 + 1152);
          v462 = *(v0 + 1160);
          (*(v529 + 104))();
          Date.init()();
          Date.addingTimeInterval(_:)();
          v355 = *(v352 + 8);
          v355(v351, v353);
          v366 = *(v352 + 56);
          v366(v354, 0, 1, v353);
          Date.init()();
          Date.addingTimeInterval(_:)();
          v355(v351, v353);
          sub_1006A699C();
          Date.addingTimeInterval(_:)();
          v355(v369, v353);
          v366(v479, 0, 1, v353);
          sub_1006A699C();
          sub_1006A699C();
          (*(v505 + 104))(v375, v386, v372);
          v387 = *(v529 + 16);
          v387(v379, v513, v522);
          UUID.init()();
          *(objc_allocWithZone(type metadata accessor for WorkoutRouteAsset(0)) + OBJC_IVAR____TtC7Journal17WorkoutRouteAsset_metadata) = 0;
          (*(v492 + 16))(v393, v483, v500);
          v24(v406, v375, v372);
          v387(v412, v379, v522);
          v356 = sub_100285908(v393, v406, v412);
          (*(v492 + 8))(v483, v500);
          v501 = *(v529 + 8);
          v501(v379, v522);
          (*(v505 + 8))(v375, v372);
          sub_1000082B4(v354, v420, &unk_100AD4790, &unk_10093B4E0);
          sub_1000082B4(v479, v429, &unk_100AD4790, &unk_10093B4E0);
          v245 = v356;
          WorkoutRouteAssetMetadata.init(route:type:duration:startTime:endTime:mindfulnessHeartRate:caloriesBurnt:calories:distance:)();
          sub_100004F84(v479, &unk_100AD4790, &unk_10093B4E0);
          sub_100004F84(v354, &unk_100AD4790, &unk_10093B4E0);
          v501(v513, v522);
          (*(v450 + 32))(v456, v442, v462);
          swift_storeEnumTagMultiPayload();
          sub_1000F24EC(&qword_100AE0E20, &unk_100962DF0);
          v357 = swift_allocObject();
          v358 = *(*v357 + 104);
          v359 = sub_1000F24EC(&qword_100AD5B28, &unk_10094FA90);
          (*(*(v359 - 8) + 56))(v357 + v358, 1, 1, v359);
          *(v357 + *(*v357 + 112)) = xmmword_100941EE0;
          sub_100021CEC(v456, v357 + *(*v357 + 120), &qword_100ADA8A0, &unk_100952480);
          *(v245 + OBJC_IVAR____TtC7Journal17WorkoutRouteAsset_metadata) = v357;

          goto LABEL_124;
        }

        __break(1u);
LABEL_156:
        __break(1u);
        return withCheckedContinuation<A>(isolation:function:_:)(v174, v175, v176, v177, v178, v179, v180, v181);
      }

      if (v26 != *(v0 + 2944))
      {
        if (v26 == *(v0 + 2948))
        {
          v360 = *(v0 + 2160);
          (*(*(v0 + 2056) + 104))(v360, *(v0 + 2980), *(v0 + 2048));
          v245 = sub_10019BB28(v360, 0, 0);
          goto LABEL_124;
        }

        if (v26 == *(v0 + 2952))
        {
          v203 = swift_task_alloc();
          *(v0 + 2792) = v203;
          *(v203 + 16) = 1;
          v361 = swift_task_alloc();
          *(v0 + 2800) = v361;
          v362 = sub_1000F24EC(&qword_100AEABF0, &qword_10095F7D0);
          *v361 = v0;
          v361[1] = sub_1005DCF44;
          v176 = *(v0 + 880);
          v175 = *(v0 + 872);
          v181 = v362;
          v179 = sub_1005ED67C;
          v174 = v0 + 760;
          goto LABEL_101;
        }

        if (v26 != *(v0 + 2956) && v26 != *(v0 + 2960) && v26 != *(v0 + 2964) && v26 != *(v0 + 2968))
        {
          if (v26 == *(v0 + 2972))
          {
            goto LABEL_150;
          }

          if (v26 != *(v0 + 2976))
          {

            return _diagnoseUnexpectedEnumCase<A>(type:)();
          }
        }
      }
    }

    goto LABEL_6;
  }

  v62 = *(v0 + 1744);
  v63 = *(v0 + 1728);
  v64 = *(v0 + 1720);
  v65 = swift_allocObject();
  *(v65 + 16) = xmmword_100940080;
  *(v65 + 56) = &type metadata for String;
  *(v65 + 32) = 0xD000000000000012;
  *(v65 + 40) = 0x80000001008FDC00;
  print(_:separator:terminator:)();

  UUID.init()();
  v66 = UUID.uuidString.getter();
  v68 = v67;
  v69 = *(v63 + 8);
  *(v0 + 2648) = v69;
  *(v0 + 2656) = (v63 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v69(v62, v64);
  if (qword_100AD0060 != -1)
  {
    swift_once();
  }

  v70 = *(v0 + 1672);
  v71 = *(v0 + 1600);
  v72 = *(v0 + 1592);
  v73 = type metadata accessor for FileStoreConfiguration();
  sub_10000617C(v73, qword_100B2FC48);
  FileStoreConfiguration.temporaryDirectoryURL.getter();
  *(v0 + 640) = v66;
  *(v0 + 648) = v68;
  v74._countAndFlagsBits = 1717658414;
  v74._object = 0xE400000000000000;
  String.append(_:)(v74);
  URL.appendingPathComponent(_:)();

  v75 = *(v71 + 8);
  *(v0 + 2664) = v75;
  *(v0 + 2672) = (v71 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v75(v70, v72);
  v76 = sub_1001C075C(5, &off_100A57518);
  v78 = v77;
  *(v0 + 2680) = v77;
  v79 = objc_opt_self();
  v80 = [v79 defaultManager];
  URL.absoluteString.getter();
  v81 = String._bridgeToObjectiveC()();

  v82 = [v80 fileExistsAtPath:v81];

  if (!v82)
  {
    goto LABEL_110;
  }

  v83 = [v79 defaultManager];
  URL._bridgeToObjectiveC()(v84);
  v86 = v85;
  *(v0 + 744) = 0;
  v87 = [v83 removeItemAtURL:v85 error:v0 + 744];

  v88 = *(v0 + 744);
  if (!v87)
  {
    v89 = v88;

    v90 = _convertNSErrorToError(_:)();

    swift_willThrow();
    v91 = *(v0 + 2664);
    v92 = *(v0 + 2216);
    v93 = *(v0 + 2184);
    v94 = *(v0 + 2176);
    v95 = *(v0 + 1640);
    v96 = *(v0 + 1592);
    v97 = swift_allocObject();
    *(v97 + 16) = xmmword_100940080;
    *(v0 + 592) = 0;
    *(v0 + 600) = 0xE000000000000000;
    _StringGuts.grow(_:)(28);
    v98 = *(v0 + 600);
    *(v0 + 608) = *(v0 + 592);
    *(v0 + 616) = v98;
    v99._object = 0x80000001008FDC20;
    v99._countAndFlagsBits = 0x100000000000001ALL;
    String.append(_:)(v99);
    *(v0 + 728) = v90;
    sub_1000F24EC(&qword_100AD5BC0, &qword_100943550);
    _print_unlocked<A, B>(_:_:)();
    v100 = *(v0 + 608);
    v101 = *(v0 + 616);
    *(v97 + 56) = &type metadata for String;
    *(v97 + 32) = v100;
    *(v97 + 40) = v101;
    print(_:separator:terminator:)();

    v91(v95, v96);
    (*(v93 + 8))(v92, v94);
    v1 = 0;
    goto LABEL_7;
  }

  v233 = v88;
LABEL_110:
  v234 = swift_task_alloc();
  *(v0 + 2688) = v234;
  *v234 = v0;
  v234[1] = sub_1005D08E4;
  v235 = *(v0 + 1640);
  v236 = *(v0 + 880);
  v237 = *(v0 + 872);

  return sub_10016A7C4(v237, v236, v76, v78, v235);
}