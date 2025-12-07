uint64_t start(uint64_t a1, uint64_t a2)
{
  v2 = objc_autoreleasePoolPush();
  v3 = +[NSNotificationCenter defaultCenter];
  objc_initWeak(&location, v3);

  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_1000017A4;
  v16 = sub_100001838;
  v17 = 0;
  v4 = objc_loadWeakRetained(&location);
  v5 = +[NSOperationQueue mainQueue];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100001840;
  v10[3] = &unk_100004328;
  objc_copyWeak(&v11, &location);
  v10[4] = &v12;
  v6 = [v4 addObserverForName:@"CAMRegisterAppShortcuts" object:0 queue:v5 usingBlock:v10];
  v7 = v13[5];
  v13[5] = v6;

  v8 = CAMApplicationMain();
  objc_destroyWeak(&v11);
  _Block_object_dispose(&v12, 8);

  objc_destroyWeak(&location);
  objc_autoreleasePoolPop(v2);
  return v8;
}

void sub_100001770(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  objc_destroyWeak((v15 + 40));
  _Block_object_dispose(va, 8);
  objc_destroyWeak((v16 - 72));
  _Unwind_Resume(a1);
}

uint64_t sub_1000017A4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1000017B4@<X0>(uint64_t *a1@<X8>)
{
  result = OpenCaptureModeIntent.$target.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1000017E0@<X0>(uint64_t *a1@<X8>)
{
  result = StartCaptureIntent.$captureMode.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10000180C@<X0>(uint64_t *a1@<X8>)
{
  result = ChangeCameraDeviceIntent.$device.getter();
  *a1 = result;
  return result;
}

void sub_100001840(uint64_t a1)
{
  v3 = objc_alloc_init(_TtC6Camera28CameraAppShortcutsController);
  [(CameraAppShortcutsController *)v3 registerAppShortcutsIfNeeded];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained removeObserver:*(*(*(a1 + 32) + 8) + 40)];
}

id sub_100001924(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for CameraAppShortcutsController();
  return objc_msgSendSuper2(&v4, "dealloc");
}

unint64_t sub_10000197C()
{
  result = qword_1000081F0;
  if (!qword_1000081F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000081F0);
  }

  return result;
}

uint64_t sub_1000019D0()
{
  sub_100001A44(&qword_1000081F8, qword_1000031D8);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100003180;
  v1 = type metadata accessor for CameraUIAppIntents();
  v2 = sub_100001A8C();
  *(v0 + 32) = v1;
  *(v0 + 40) = v2;
  return v0;
}

uint64_t sub_100001A44(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_100001A8C()
{
  result = qword_100008200;
  if (!qword_100008200)
  {
    type metadata accessor for CameraUIAppIntents();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100008200);
  }

  return result;
}

uint64_t sub_100001AFC()
{
  v0 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v1 = *(v0 - 8);
  v70 = v0;
  v71 = v1;
  __chkstk_darwin(v0);
  v66 = v52 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for Locale();
  __chkstk_darwin(v3 - 8);
  v69 = v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v5 - 8);
  v7 = v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for LocalizedStringResource();
  __chkstk_darwin(v8 - 8);
  v65 = v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = type metadata accessor for AppShortcut();
  v72 = *(v68 - 8);
  __chkstk_darwin(v68);
  v11 = v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for OpenCaptureModeIntent();
  __chkstk_darwin(v12);
  OpenCaptureModeIntent.init()();
  sub_100001A44(&qword_100008208, &qword_100003258);
  sub_100001A44(&qword_100008210, &qword_100003260);
  v13 = swift_allocObject();
  v60 = xmmword_100003180;
  *(v13 + 16) = xmmword_100003180;
  v14 = sub_100001A44(&qword_100008218, &qword_100003268);
  __chkstk_darwin(v14);
  sub_100002C5C(&qword_100008220, &type metadata accessor for OpenCaptureModeIntent, &protocol conformance descriptor for OpenCaptureModeIntent);
  AppShortcutPhrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v15._countAndFlagsBits = 0;
  v15._object = 0xE000000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v15);
  swift_getKeyPath();
  sub_100001A44(&qword_100008228, &qword_1000032A0);
  AppShortcutPhrase.StringInterpolation.appendInterpolation<A, B>(_:)();

  v16._countAndFlagsBits = 0;
  v16._object = 0xE000000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v16);
  AppShortcutPhrase.init(stringInterpolation:)();
  v58 = 0xD000000000000025;
  v62 = v7;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v63 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v17 = *(v71 + 104);
  v71 += 104;
  v67 = v17;
  (v17)(v66);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v55 = 0xD000000000000012;
  v61 = v11;
  AppShortcut.init<A>(intent:phrases:shortTitle:systemImageName:)();
  v59 = static AppShortcutsBuilder.buildExpression(_:)();
  v64 = *(v72 + 8);
  v72 += 8;
  v64(v11, v68);
  started = type metadata accessor for StartCaptureIntent();
  __chkstk_darwin(started);
  v56 = v52 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  StartCaptureIntent.init()();
  sub_100001A44(&qword_100008230, &qword_1000032A8);
  v54 = 2 * *(*(sub_100001A44(&qword_100008238, &qword_1000032B0) - 8) + 72);
  v20 = swift_allocObject();
  v57 = xmmword_1000031F0;
  v53 = v20;
  *(v20 + 16) = xmmword_1000031F0;
  v21 = sub_100001A44(&qword_100008240, &qword_1000032B8);
  __chkstk_darwin(v21);
  sub_100002C5C(&qword_100008248, &type metadata accessor for StartCaptureIntent, &protocol conformance descriptor for StartCaptureIntent);
  AppShortcutPhrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v22._countAndFlagsBits = 0x206120656B6154;
  v22._object = 0xE700000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v22);
  swift_getKeyPath();
  sub_100001A44(&qword_100008250, &qword_1000032F0);
  AppShortcutPhrase.StringInterpolation.appendInterpolation<A, B>(_:)();

  v23._countAndFlagsBits = 0;
  v23._object = 0xE000000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v23);
  v24 = AppShortcutPhrase.init(stringInterpolation:)();
  __chkstk_darwin(v24);
  AppShortcutPhrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v25._countAndFlagsBits = 0x612064726F636552;
  v25._object = 0xE900000000000020;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v25);
  swift_getKeyPath();
  AppShortcutPhrase.StringInterpolation.appendInterpolation<A, B>(_:)();

  v26._countAndFlagsBits = 0;
  v26._object = 0xE000000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v26);
  v27 = AppShortcutPhrase.init(stringInterpolation:)();
  __chkstk_darwin(v27);
  AppShortcutPhrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v28._object = 0x8000000100003460;
  v28._countAndFlagsBits = v55;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v28);
  swift_getKeyPath();
  AppShortcutPhrase.StringInterpolation.appendInterpolation<A, B>(_:)();

  v29._countAndFlagsBits = 0;
  v29._object = 0xE000000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v29);
  AppShortcutPhrase.init(stringInterpolation:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v30 = v66;
  v31 = v63;
  v67(v66, v63, v70);
  v32 = v30;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v55 = "ART_CAPTURE_SHORT_TITLE";
  v54 = 0xD00000000000001ALL;
  v33 = v61;
  AppShortcut.init<A>(intent:phrases:shortTitle:systemImageName:)();
  v56 = static AppShortcutsBuilder.buildExpression(_:)();
  v64(v33, v68);
  v34 = type metadata accessor for ChangeCameraDeviceIntent();
  __chkstk_darwin(v34);
  v53 = v52 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  ChangeCameraDeviceIntent.init()();
  sub_100001A44(&qword_100008258, &qword_1000032F8);
  sub_100001A44(&qword_100008260, &qword_100003300);
  *(swift_allocObject() + 16) = v60;
  v36 = sub_100001A44(&qword_100008268, &qword_100003308);
  __chkstk_darwin(v36);
  sub_100002C5C(&qword_100008270, &type metadata accessor for ChangeCameraDeviceIntent, &protocol conformance descriptor for ChangeCameraDeviceIntent);
  AppShortcutPhrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v37._countAndFlagsBits = 0;
  v37._object = 0xE000000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v37);
  swift_getKeyPath();
  sub_100001A44(&qword_100008278, &qword_100003340);
  AppShortcutPhrase.StringInterpolation.appendInterpolation<A, B>(_:)();

  v38._countAndFlagsBits = 0x6172656D616320;
  v38._object = 0xE700000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v38);
  AppShortcutPhrase.init(stringInterpolation:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v67(v32, v31, v70);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v52[1] = "ANGE_CAMERA_SHORT_TITLE";
  v39 = v61;
  AppShortcut.init<A>(intent:phrases:shortTitle:systemImageName:)();
  v53 = static AppShortcutsBuilder.buildExpression(_:)();
  v40 = v39;
  v41 = v68;
  v42 = v64;
  v64(v40, v68);
  v43 = type metadata accessor for FlipCameraDeviceIntent();
  __chkstk_darwin(v43);
  FlipCameraDeviceIntent.init()();
  sub_100001A44(&qword_100008280, &qword_100003348);
  sub_100001A44(&qword_100008288, &qword_100003350);
  *(swift_allocObject() + 16) = v60;
  sub_100002C5C(&qword_100008290, &type metadata accessor for FlipCameraDeviceIntent, &protocol conformance descriptor for FlipCameraDeviceIntent);
  AppShortcutPhrase.init(stringLiteral:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v67(v66, v63, v70);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v44 = v61;
  AppShortcut.init<A>(intent:phrases:shortTitle:systemImageName:)();
  *&v60 = static AppShortcutsBuilder.buildExpression(_:)();
  v42(v44, v41);
  v45 = type metadata accessor for StopCaptureIntent();
  __chkstk_darwin(v45);
  StopCaptureIntent.init()();
  sub_100001A44(&qword_100008298, &qword_100003358);
  sub_100001A44(&qword_1000082A0, &qword_100003360);
  *(swift_allocObject() + 16) = v57;
  sub_100002C5C(&qword_1000082A8, &type metadata accessor for StopCaptureIntent, &protocol conformance descriptor for StopCaptureIntent);
  AppShortcutPhrase.init(stringLiteral:)();
  AppShortcutPhrase.init(stringLiteral:)();
  AppShortcutPhrase.init(stringLiteral:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v67(v66, v63, v70);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  AppShortcut.init<A>(intent:phrases:shortTitle:systemImageName:)();
  v46 = static AppShortcutsBuilder.buildExpression(_:)();
  v64(v44, v68);
  sub_100001A44(&qword_1000082B0, &qword_100003368);
  v47 = swift_allocObject();
  *(v47 + 16) = xmmword_100003200;
  v48 = v56;
  *(v47 + 32) = v59;
  *(v47 + 40) = v48;
  v49 = v60;
  *(v47 + 48) = v53;
  *(v47 + 56) = v49;
  *(v47 + 64) = v46;
  v50 = static AppShortcutsBuilder.buildBlock(_:)();

  return v50;
}

uint64_t sub_100002C5C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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