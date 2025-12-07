id sub_100001C60(uint64_t a1)
{
  if (qword_100064588 != -1)
  {
    sub_100045384();
  }

  v2 = qword_100064580;

  return v2;
}

void sub_100001CA4(id a1)
{
  qword_100064580 = os_log_create("com.apple.Accessibility", "AXLiveTranscriptionUI");

  _objc_release_x1();
}

void sub_100001DCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100001EBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100002070(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_1000020A8(uint64_t a1, uint64_t a2)
{
  v3 = sub_1000020F8();
  result = dlsym(v3, "AXHasCapability");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_100064590 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_1000020F8()
{
  v3[0] = 0;
  if (!qword_100064598)
  {
    v3[1] = _NSConcreteStackBlock;
    v3[2] = 3221225472;
    v3[3] = sub_1000021F8;
    v3[4] = &unk_10005DB38;
    v3[5] = v3;
    v4 = off_10005DB20;
    v5 = 0;
    qword_100064598 = _sl_dlopen();
  }

  v0 = qword_100064598;
  v1 = v3[0];
  if (!qword_100064598)
  {
    v1 = abort_report_np("%s", v3[0]);
    goto LABEL_7;
  }

  if (v3[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t sub_1000021F8(uint64_t a1)
{
  result = _sl_dlopen();
  qword_100064598 = result;
  return result;
}

Class sub_10000226C(uint64_t a1)
{
  sub_1000020F8();
  result = objc_getClass("AXBackBoardServer");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_1000453BC();
  }

  qword_1000645A0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class sub_1000022C4(uint64_t a1)
{
  sub_1000020F8();
  result = objc_getClass("AXUserEventTimer");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_1000453E4();
  }

  qword_1000645A8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

int main(int argc, const char **argv, const char **envp)
{
  v3 = static CommandLine.argc.getter();
  v4 = static CommandLine.unsafeArgv.getter();
  type metadata accessor for LTApplication();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = NSStringFromClass(ObjCClassFromMetadata);
  if (!v6)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = String._bridgeToObjectiveC()();
  }

  type metadata accessor for LTApplicationDelegate();
  v7 = swift_getObjCClassFromMetadata();
  v8 = NSStringFromClass(v7);
  if (!v8)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = String._bridgeToObjectiveC()();
  }

  UIApplicationMain(v3, v4, v6, v8);

  return 0;
}

id variable initialization expression of AXLTProviderCaptionsView._provider()
{
  if (qword_100062790 != -1)
  {
    swift_once();
  }

  v1 = static AXLTCaptionsProvider.shared;

  return v1;
}

uint64_t variable initialization expression of AXLTSettingsManager.locale@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Locale();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t variable initialization expression of AXLTCaptionsProvider.activeRequestType()
{
  if (qword_100062788 != -1)
  {
    swift_once();
  }

  v0 = static AXLTSettingsManager.shared;
  v1 = OBJC_IVAR___AXLTSettingsManager_isMicOn;
  swift_beginAccess();
  return ~*(v0 + v1) & 1;
}

id variable initialization expression of AXLTCaptionsProvider.transcription()
{
  v0 = objc_allocWithZone(AXLTLiveTranscription);

  return [v0 init];
}

id variable initialization expression of AXLTCaptionsProvider.dateFormatter()
{
  v0 = objc_allocWithZone(NSDateFormatter);

  return [v0 init];
}

id variable initialization expression of AXLTCaptionsProvider.lockScreenObserver()
{
  v0 = objc_allocWithZone(AXLTLockScreenObserver);

  return [v0 init];
}

uint64_t sub_100002840(void *a1, uint64_t *a2, uint64_t a3)
{
  if (*a1 == -1)
  {
  }

  else
  {
    swift_once();
  }
}

int64x2_t variable initialization expression of AudioHistogramConfig._histogram()
{
  v0 = static Array._allocateBufferUninitialized(minimumCapacity:)();
  v0[1].i64[0] = 16;
  result = vdupq_n_s64(0x3FB999999999999AuLL);
  v0[2] = result;
  v0[3] = result;
  v0[4] = result;
  v0[5] = result;
  v0[6] = result;
  v0[7] = result;
  v0[8] = result;
  v0[9] = result;
  return result;
}

uint64_t variable initialization expression of AXLTAudioHistogramViewGenerator.config()
{
  type metadata accessor for AudioHistogramConfig(0);
  swift_allocObject();
  return sub_100042454();
}

__n128 sub_100002994(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1000029A0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000029C0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 32) = v3;
  return result;
}

__n128 sub_100002A00(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_100002A0C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100002A2C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

void *sub_100002A68@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

void sub_100002AAC(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

__n128 sub_100002B14(uint64_t a1, __int128 *a2)
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

uint64_t sub_100002B38(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 128))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100002B80(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

uint64_t sub_100002C0C@<X0>(uint64_t *a1@<X1>, uint64_t a2@<X8>)
{
  v51 = a2;
  v42 = type metadata accessor for GlobalCoordinateSpace();
  __chkstk_darwin(v42);
  v45 = type metadata accessor for DragGesture();
  v46 = *(v45 - 8);
  __chkstk_darwin(v45);
  v4 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_100003968(&qword_1000627F0, &qword_100047CD0);
  v48 = *(v47 - 8);
  __chkstk_darwin(v47);
  v43 = &v41 - v5;
  v49 = sub_100003968(&qword_1000627F8, &qword_100047CD8);
  v50 = *(v49 - 8);
  __chkstk_darwin(v49);
  v44 = &v41 - v6;
  v7 = sub_100003968(&qword_100062800, &qword_100047CE0);
  v8 = v7 - 8;
  __chkstk_darwin(v7);
  v10 = (&v41 - v9);
  v41 = sub_100003968(&qword_100062808, &qword_100047CE8);
  __chkstk_darwin(v41);
  v12 = (&v41 - v11);
  *v12 = static Alignment.center.getter();
  v12[1] = v13;
  static Color.white.getter();
  v14 = v12 + *(sub_100003968(&qword_100062810, &unk_100047CF0) + 44);
  v15 = Color.opacity(_:)();

  v16 = a1[1];
  v17 = (v10 + *(v8 + 44));
  v18 = *(type metadata accessor for RoundedRectangle() + 20);
  v19 = enum case for RoundedCornerStyle.continuous(_:);
  v20 = type metadata accessor for RoundedCornerStyle();
  (*(*(v20 - 8) + 104))(v17 + v18, v19, v20);
  *v17 = v16;
  v17[1] = v16;
  *(v17 + *(sub_100003968(&qword_100062818, &qword_1000485C0) + 36)) = 256;
  *v10 = v15;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  sub_1000039B0(v10, v14);
  v21 = (v14 + *(sub_100003968(&qword_100062820, &qword_100047D00) + 36));
  v22 = v54;
  *v21 = v53;
  v21[1] = v22;
  v21[2] = v55;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v23 = (v12 + *(sub_100003968(&qword_100062828, &qword_100047D08) + 36));
  v24 = v57;
  *v23 = v56;
  v23[1] = v24;
  v23[2] = v58;
  *(v12 + *(v41 + 36)) = 0;
  static CoordinateSpaceProtocol<>.global.getter();
  DragGesture.init<A>(minimumDistance:coordinateSpace:)();
  v25 = swift_allocObject();
  v26 = *(a1 + 5);
  v25[5] = *(a1 + 4);
  v25[6] = v26;
  v27 = *(a1 + 7);
  v25[7] = *(a1 + 6);
  v25[8] = v27;
  v28 = *(a1 + 1);
  v25[1] = *a1;
  v25[2] = v28;
  v29 = *(a1 + 3);
  v25[3] = *(a1 + 2);
  v25[4] = v29;
  sub_100003930(a1, v52);
  sub_100003A28(&qword_100062830, &type metadata accessor for DragGesture, &protocol conformance descriptor for DragGesture);
  sub_100003A28(&qword_100062838, &type metadata accessor for DragGesture.Value, &protocol conformance descriptor for DragGesture.Value);
  v30 = v43;
  v31 = v45;
  Gesture<>.onChanged(_:)();

  (*(v46 + 8))(v4, v31);
  v32 = swift_allocObject();
  v33 = *(a1 + 5);
  v32[5] = *(a1 + 4);
  v32[6] = v33;
  v34 = *(a1 + 7);
  v32[7] = *(a1 + 6);
  v32[8] = v34;
  v35 = *(a1 + 1);
  v32[1] = *a1;
  v32[2] = v35;
  v36 = *(a1 + 3);
  v32[3] = *(a1 + 2);
  v32[4] = v36;
  sub_100003930(a1, v52);
  sub_100003E3C(&qword_100062840, &qword_1000627F0, &qword_100047CD0, &protocol conformance descriptor for _ChangedGesture<A>);
  v37 = v44;
  v38 = v47;
  Gesture.onEnded(_:)();

  (*(v48 + 8))(v30, v38);
  static GestureMask.all.getter();
  sub_100003B08();
  sub_100003E3C(&qword_100062878, &qword_1000627F8, &qword_100047CD8, &protocol conformance descriptor for _EndedGesture<A>);
  v39 = v49;
  View.gesture<A>(_:including:)();
  (*(v50 + 8))(v37, v39);
  return sub_100003CE8(v12, &qword_100062808, &qword_100047CE8);
}

uint64_t sub_10000336C(uint64_t a1, uint64_t a2)
{
  v9 = *(a2 + 104);
  v10 = *(a2 + 120);
  v11 = v10;
  sub_100003C78(&v11, &v8);
  sub_100003968(&qword_100062880, &unk_100047D20);
  State.wrappedValue.getter();
  v12.width = 0.0;
  v12.height = 0.0;
  if (CGSizeEqualToSize(v8, v12))
  {
    sub_100003968(&qword_100062888, &qword_100048A70);
    Binding.wrappedValue.getter();
    v13.width = 0.0;
    v13.height = 0.0;
    if (CGSizeEqualToSize(v8, v13))
    {
      v3 = *(a2 + 56);
    }

    else
    {
      Binding.wrappedValue.getter();
      v3 = v8;
    }

    v8 = v3;
    State.wrappedValue.setter();
  }

  sub_100003CE8(&v9, &qword_100062880, &unk_100047D20);
  DragGesture.Value.translation.getter();
  return sub_1000034CC(v4, v5, v6, *(a2 + 96));
}

uint64_t sub_1000034CC(double a1, double a2, double a3, double a4)
{
  v17 = *(v4 + 104);
  *&v18 = *(v4 + 120);
  sub_100003968(&qword_100062880, &unk_100047D20);
  State.wrappedValue.getter();
  v7 = *(v4 + 24);
  v6 = *(v4 + 32);
  v19 = *(v4 + 40);
  v20 = v7;
  *&v17 = v7;
  *(&v17 + 1) = v6;
  v18 = *(v4 + 40);
  sub_100003D48(&v20, &v14);

  sub_100003968(&qword_100062888, &qword_100048A70);
  Binding.wrappedValue.getter();
  v14 = v7;
  v15 = v6;
  v16 = *(v4 + 40);
  Binding.wrappedValue.setter();
  v8 = *(v4 + 80);
  *&v17 = v7;
  *(&v17 + 1) = v6;
  v18 = *(v4 + 40);
  Binding.wrappedValue.getter();
  v9 = v15;
  if (v8 + v15 > a4)
  {
    v9 = a4 - v8;
  }

  *&v17 = v7;
  *(&v17 + 1) = v6;
  v18 = *(v4 + 40);
  v15 = v9;
  Binding.wrappedValue.setter();
  sub_100003DA4(&v20);

  v10 = static os_log_type_t.debug.getter();
  if (qword_1000626F0 != -1)
  {
    swift_once();
  }

  v11 = qword_1000654E8;
  result = os_log_type_enabled(qword_1000654E8, v10);
  if (result)
  {
    v13 = swift_slowAlloc();
    *v13 = 134217984;
    *&v17 = v7;
    *(&v17 + 1) = v6;
    v18 = v19;
    Binding.wrappedValue.getter();
    *(v13 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v11, v10, "windowSize height: %f", v13, 0xCu);
  }

  return result;
}

void sub_1000036F4(uint64_t a1, uint64_t a2)
{
  sub_100003968(&qword_100062880, &unk_100047D20);
  State.wrappedValue.setter();
  sub_10000375C();
}

void sub_10000375C()
{
  v0 = [objc_opt_self() standardUserDefaults];
  sub_100003968(&qword_100062888, &qword_100048A70);
  Binding.wrappedValue.getter();
  v1 = NSStringFromCGSize(v3);
  if (!v1)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v1 = String._bridgeToObjectiveC()();
  }

  v2 = String._bridgeToObjectiveC()();
  [v0 setObject:v1 forKey:v2];

  [v0 synchronize];
}

uint64_t sub_100003888@<X0>(uint64_t (**a1)@<X0>(uint64_t a1@<X8>)@<X8>)
{
  v3 = v1[5];
  v14[4] = v1[4];
  v14[5] = v3;
  v4 = v1[7];
  v14[6] = v1[6];
  v14[7] = v4;
  v5 = v1[1];
  v14[0] = *v1;
  v14[1] = v5;
  v6 = v1[3];
  v14[2] = v1[2];
  v14[3] = v6;
  v7 = swift_allocObject();
  v8 = v1[5];
  *(v7 + 5) = v1[4];
  *(v7 + 6) = v8;
  v9 = v1[7];
  *(v7 + 7) = v1[6];
  *(v7 + 8) = v9;
  v10 = v1[1];
  *(v7 + 1) = *v1;
  *(v7 + 2) = v10;
  v11 = v1[3];
  *(v7 + 3) = v1[2];
  *(v7 + 4) = v11;
  *a1 = sub_100003928;
  a1[1] = v7;
  return sub_100003930(v14, &v13);
}

uint64_t sub_100003968(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1000039B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003968(&qword_100062800, &qword_100047CE0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100003A28(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100003A70()
{

  return _swift_deallocObject(v0, 144, 7);
}

uint64_t sub_100003AC0(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_100003B08()
{
  result = qword_100062848;
  if (!qword_100062848)
  {
    sub_100003AC0(&qword_100062808, &qword_100047CE8);
    sub_100003BC0();
    sub_100003E3C(&qword_100062868, &qword_100062870, &qword_100047D18, &protocol conformance descriptor for _ContentShapeModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100062848);
  }

  return result;
}

unint64_t sub_100003BC0()
{
  result = qword_100062850;
  if (!qword_100062850)
  {
    sub_100003AC0(&qword_100062828, &qword_100047D08);
    sub_100003E3C(&qword_100062858, &qword_100062860, &qword_100047D10, &protocol conformance descriptor for ZStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100062850);
  }

  return result;
}

uint64_t sub_100003C78(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003968(&qword_100062890, &qword_100047D30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100003CE8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100003968(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_100003E3C(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_100003AC0(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

double sub_100003E8C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_100003F04()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_100003F78()
{
  v1 = v0;
  v145 = type metadata accessor for UserInterfaceSizeClass();
  v143 = *(v145 - 8);
  __chkstk_darwin(v145);
  v125 = &v111[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v144 = sub_100003968(&qword_1000629A0, &unk_100048680);
  __chkstk_darwin(v144);
  v119 = &v111[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v133 = &v111[-v5];
  __chkstk_darwin(v6);
  v121 = &v111[-v7];
  __chkstk_darwin(v8);
  v10 = &v111[-v9];
  v11 = type metadata accessor for EnvironmentValues();
  v142 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v111[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = sub_100003968(&qword_1000629A8, &qword_100047E40);
  __chkstk_darwin(v14);
  v116 = &v111[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v16);
  v128 = &v111[-v17];
  __chkstk_darwin(v18);
  v120 = &v111[-v19];
  __chkstk_darwin(v20);
  v22 = &v111[-v21];
  v23 = sub_100003968(&qword_100062978, &qword_1000482D0);
  __chkstk_darwin(v23 - 8);
  v113 = &v111[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v25);
  v27 = &v111[-v26];
  __chkstk_darwin(v28);
  v118 = &v111[-v29];
  __chkstk_darwin(v30);
  v32 = &v111[-v31];
  __chkstk_darwin(v33);
  v134 = &v111[-v34];
  __chkstk_darwin(v35);
  v131 = &v111[-v36];
  __chkstk_darwin(v37);
  v115 = &v111[-v38];
  __chkstk_darwin(v39);
  v123 = &v111[-v40];
  __chkstk_darwin(v41);
  v124 = &v111[-v42];
  __chkstk_darwin(v43);
  v129 = &v111[-v44];
  __chkstk_darwin(v45);
  v47 = &v111[-v46];
  __chkstk_darwin(v48);
  v50 = &v111[-v49];
  v140 = v1;
  v127 = OBJC_IVAR____TtC19LiveTranscriptionUI14ForeheadWindow__horizontalSizeClass;
  sub_100006098(v1 + OBJC_IVAR____TtC19LiveTranscriptionUI14ForeheadWindow__horizontalSizeClass, v22, &qword_1000629A8, &qword_100047E40);
  v141 = v14;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v117 = v27;
  v135 = v11;
  v126 = v13;
  v122 = v32;
  if (EnumCaseMultiPayload == 1)
  {
    sub_100006158(v22, v50);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v52 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v142 + 8))(v13, v11);
  }

  v53 = v143;
  v54 = *(v143 + 104);
  v132 = enum case for UserInterfaceSizeClass.regular(_:);
  v55 = v145;
  v138 = v54;
  v139 = v143 + 104;
  v54(v47);
  v136 = *(v53 + 56);
  v137 = v53 + 56;
  v136(v47, 0, 1, v55);
  v56 = *(v144 + 48);
  sub_100006098(v50, v10, &qword_100062978, &qword_1000482D0);
  sub_100006098(v47, &v10[v56], &qword_100062978, &qword_1000482D0);
  v57 = *(v53 + 48);
  v58 = v57(v10, 1, v55);
  v130 = v53 + 48;
  if (v58 == 1)
  {
    sub_100003CE8(v47, &qword_100062978, &qword_1000482D0);
    sub_100003CE8(v50, &qword_100062978, &qword_1000482D0);
    v59 = v57;
    if (v57(&v10[v56], 1, v55) != 1)
    {
      v60 = v140;
      v65 = v142;
LABEL_20:
      v62 = v133;
      goto LABEL_21;
    }

    sub_100003CE8(v10, &qword_100062978, &qword_1000482D0);
    v60 = v140;
    v61 = v135;
    v62 = v133;
    v63 = v57;
  }

  else
  {
    v64 = v129;
    sub_100006098(v10, v129, &qword_100062978, &qword_1000482D0);
    v59 = v57;
    if (v57(&v10[v56], 1, v55) == 1)
    {
LABEL_19:
      v65 = v142;
      sub_100003CE8(v47, &qword_100062978, &qword_1000482D0);
      sub_100003CE8(v50, &qword_100062978, &qword_1000482D0);
      (*(v143 + 8))(v129, v55);
      v60 = v140;
      goto LABEL_20;
    }

    v66 = v143;
    v67 = v125;
    (*(v143 + 32))(v125, &v10[v56], v55);
    sub_100006100();
    v68 = dispatch thunk of static Equatable.== infix(_:_:)();
    v55 = v145;
    v112 = v68;
    v69 = *(v66 + 8);
    v69(v67, v145);
    sub_100003CE8(v47, &qword_100062978, &qword_1000482D0);
    sub_100003CE8(v50, &qword_100062978, &qword_1000482D0);
    v69(v64, v55);
    sub_100003CE8(v10, &qword_100062978, &qword_1000482D0);
    v60 = v140;
    v61 = v135;
    v65 = v142;
    v62 = v133;
    v63 = v57;
    v70 = v131;
    if ((v112 & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  v71 = v120;
  sub_100006098(v60 + OBJC_IVAR____TtC19LiveTranscriptionUI14ForeheadWindow__verticalSizeClass, v120, &qword_1000629A8, &qword_100047E40);
  v72 = swift_getEnumCaseMultiPayload();
  v114 = v63;
  if (v72 == 1)
  {
    v73 = v124;
    sub_100006158(v71, v124);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v74 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v75 = v126;
    EnvironmentValues.init()();
    v73 = v124;
    swift_getAtKeyPath();

    (*(v142 + 8))(v75, v61);
  }

  v76 = v121;
  v77 = v123;
  v138(v123, enum case for UserInterfaceSizeClass.compact(_:), v55);
  v136(v77, 0, 1, v55);
  v78 = *(v144 + 48);
  sub_100006098(v73, v76, &qword_100062978, &qword_1000482D0);
  sub_100006098(v77, v76 + v78, &qword_100062978, &qword_1000482D0);
  v63 = v114;
  if (v114(v76, 1, v55) != 1)
  {
    v79 = v115;
    sub_100006098(v76, v115, &qword_100062978, &qword_1000482D0);
    if (v63(v76 + v78, 1, v55) != 1)
    {
      v102 = v143;
      v103 = v125;
      (*(v143 + 32))(v125, v76 + v78, v55);
      sub_100006100();
      v104 = dispatch thunk of static Equatable.== infix(_:_:)();
      v55 = v145;
      LODWORD(v129) = v104;
      v105 = *(v102 + 8);
      v105(v103, v145);
      sub_100003CE8(v123, &qword_100062978, &qword_1000482D0);
      sub_100003CE8(v124, &qword_100062978, &qword_1000482D0);
      v105(v79, v55);
      v65 = v142;
      sub_100003CE8(v76, &qword_100062978, &qword_1000482D0);
      v62 = v133;
      v61 = v135;
      v60 = v140;
      v70 = v131;
      if (v129)
      {
        v99 = 1;
        return v99 & 1;
      }

LABEL_22:
      v80 = v128;
      sub_100006098(v60 + v127, v128, &qword_1000629A8, &qword_100047E40);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_100006158(v80, v70);
      }

      else
      {
        static os_log_type_t.fault.getter();
        v81 = static Log.runtimeIssuesLog.getter();
        os_log(_:dso:log:_:_:)();

        v82 = v126;
        EnvironmentValues.init()();
        swift_getAtKeyPath();

        (*(v65 + 8))(v82, v61);
      }

      v83 = v134;
      v138(v134, v132, v55);
      v136(v83, 0, 1, v55);
      v84 = *(v144 + 48);
      sub_100006098(v70, v62, &qword_100062978, &qword_1000482D0);
      sub_100006098(v83, v62 + v84, &qword_100062978, &qword_1000482D0);
      if (v63(v62, 1, v55) == 1)
      {
        sub_100003CE8(v83, &qword_100062978, &qword_1000482D0);
        sub_100003CE8(v70, &qword_100062978, &qword_1000482D0);
        if (v63(v62 + v84, 1, v55) == 1)
        {
          sub_100003CE8(v62, &qword_100062978, &qword_1000482D0);
LABEL_32:
          v93 = v116;
          sub_100006098(v140 + OBJC_IVAR____TtC19LiveTranscriptionUI14ForeheadWindow__verticalSizeClass, v116, &qword_1000629A8, &qword_100047E40);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v94 = v118;
            sub_100006158(v93, v118);
          }

          else
          {
            static os_log_type_t.fault.getter();
            v95 = static Log.runtimeIssuesLog.getter();
            os_log(_:dso:log:_:_:)();

            v96 = v126;
            EnvironmentValues.init()();
            v94 = v118;
            swift_getAtKeyPath();

            (*(v65 + 8))(v96, v135);
          }

          v76 = v119;
          v97 = v117;
          v138(v117, v132, v55);
          v136(v97, 0, 1, v55);
          v98 = *(v144 + 48);
          sub_100006098(v94, v76, &qword_100062978, &qword_1000482D0);
          sub_100006098(v97, v76 + v98, &qword_100062978, &qword_1000482D0);
          if (v63(v76, 1, v55) == 1)
          {
            sub_100003CE8(v97, &qword_100062978, &qword_1000482D0);
            sub_100003CE8(v94, &qword_100062978, &qword_1000482D0);
            if (v63(v76 + v98, 1, v55) == 1)
            {
              goto LABEL_37;
            }
          }

          else
          {
            v100 = v113;
            sub_100006098(v76, v113, &qword_100062978, &qword_1000482D0);
            if (v63(v76 + v98, 1, v55) != 1)
            {
              v106 = v94;
              v107 = v143;
              v108 = v125;
              (*(v143 + 32))(v125, v76 + v98, v55);
              sub_100006100();
              v109 = v100;
              v99 = dispatch thunk of static Equatable.== infix(_:_:)();
              v110 = *(v107 + 8);
              v110(v108, v55);
              sub_100003CE8(v97, &qword_100062978, &qword_1000482D0);
              sub_100003CE8(v106, &qword_100062978, &qword_1000482D0);
              v110(v109, v55);
              sub_100003CE8(v76, &qword_100062978, &qword_1000482D0);
              return v99 & 1;
            }

            sub_100003CE8(v97, &qword_100062978, &qword_1000482D0);
            sub_100003CE8(v94, &qword_100062978, &qword_1000482D0);
            (*(v143 + 8))(v100, v55);
          }

          v86 = v76;
          goto LABEL_41;
        }
      }

      else
      {
        v85 = v122;
        sub_100006098(v62, v122, &qword_100062978, &qword_1000482D0);
        if (v63(v62 + v84, 1, v55) != 1)
        {
          v114 = v63;
          v87 = v143;
          v88 = v125;
          (*(v143 + 32))(v125, v62 + v84, v55);
          sub_100006100();
          v89 = dispatch thunk of static Equatable.== infix(_:_:)();
          v55 = v145;
          v90 = v89;
          v91 = v62;
          v92 = *(v87 + 8);
          v92(v88, v145);
          sub_100003CE8(v134, &qword_100062978, &qword_1000482D0);
          sub_100003CE8(v70, &qword_100062978, &qword_1000482D0);
          v92(v85, v55);
          v65 = v142;
          v63 = v114;
          sub_100003CE8(v91, &qword_100062978, &qword_1000482D0);
          if ((v90 & 1) == 0)
          {
LABEL_42:
            v99 = 0;
            return v99 & 1;
          }

          goto LABEL_32;
        }

        sub_100003CE8(v134, &qword_100062978, &qword_1000482D0);
        sub_100003CE8(v70, &qword_100062978, &qword_1000482D0);
        (*(v143 + 8))(v85, v55);
      }

      v86 = v62;
LABEL_41:
      sub_100003CE8(v86, &qword_1000629A0, &unk_100048680);
      goto LABEL_42;
    }

    v59 = v63;
    v47 = v123;
    v50 = v124;
    v129 = v79;
    v10 = v76;
    goto LABEL_19;
  }

  sub_100003CE8(v77, &qword_100062978, &qword_1000482D0);
  sub_100003CE8(v73, &qword_100062978, &qword_1000482D0);
  if (v63(v76 + v78, 1, v55) != 1)
  {
    v59 = v63;
    v10 = v76;
    v60 = v140;
    v65 = v142;
LABEL_21:
    sub_100003CE8(v10, &qword_1000629A0, &unk_100048680);
    v61 = v135;
    v63 = v59;
    v70 = v131;
    goto LABEL_22;
  }

LABEL_37:
  sub_100003CE8(v76, &qword_100062978, &qword_1000482D0);
  v99 = 1;
  return v99 & 1;
}

char *sub_1000051F4()
{
  v1 = sub_100003968(&qword_1000629C0, &qword_100047E48);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v17 - v3;
  v5 = sub_100003968(&qword_1000629C8, &qword_100047E50);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v17 - v7;
  v9 = OBJC_IVAR____TtC19LiveTranscriptionUI14ForeheadWindow__verticalSizeClass;
  *&v0[v9] = swift_getKeyPath();
  sub_100003968(&qword_1000629A8, &qword_100047E40);
  swift_storeEnumTagMultiPayload();
  v10 = OBJC_IVAR____TtC19LiveTranscriptionUI14ForeheadWindow__horizontalSizeClass;
  *&v0[v10] = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v11 = OBJC_IVAR____TtC19LiveTranscriptionUI14ForeheadWindow_layoutMonitor;
  *&v0[v11] = [objc_allocWithZone(SBSSystemApertureLayoutMonitor) init];
  v12 = OBJC_IVAR____TtC19LiveTranscriptionUI14ForeheadWindow__foreheadRect;
  type metadata accessor for CGRect(0);
  v18 = 0u;
  v19 = 0u;
  Published.init(initialValue:)();
  (*(v6 + 32))(&v0[v12], v8, v5);
  v13 = OBJC_IVAR____TtC19LiveTranscriptionUI14ForeheadWindow__frames;
  *&v18 = _swiftEmptyArrayStorage;
  sub_100003968(&qword_100062990, &qword_100047D60);
  Published.init(initialValue:)();
  (*(v2 + 32))(&v0[v13], v4, v1);
  *&v0[OBJC_IVAR____TtC19LiveTranscriptionUI14ForeheadWindow_minimumForeheadHeight] = 0x4042AAAAAAAAAAABLL;
  v14 = type metadata accessor for ForeheadWindow(0);
  v17.receiver = v0;
  v17.super_class = v14;
  v15 = objc_msgSendSuper2(&v17, "init");
  [*&v15[OBJC_IVAR____TtC19LiveTranscriptionUI14ForeheadWindow_layoutMonitor] addObserver:v15];
  return v15;
}

void sub_1000054D0(unint64_t a1)
{
  if (!AXDeviceHasJindo() || (sub_100003F78() & 1) != 0)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    size = CGRectZero.size;
    origin = CGRectZero.origin;
    v62 = size;
    v4 = v1;
LABEL_4:
    static Published.subscript.setter();
    return;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  *&origin.x = _swiftEmptyArrayStorage;
  v60 = v1;
  static Published.subscript.setter();
  v57 = a1 >> 62;
  if (a1 >> 62)
  {
    v5 = _CocoaArrayWrapper.endIndex.getter();
    if (!v5)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v5)
    {
      goto LABEL_20;
    }
  }

  if (v5 < 1)
  {
    __break(1u);
    goto LABEL_38;
  }

  v6 = 0;
  v58 = a1 & 0xC000000000000001;
  v59 = a1;
  do
  {
    if (v58)
    {
      v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v7 = *(a1 + 8 * v6 + 32);
    }

    v8 = v7;
    [v7 CGRectValue];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;
    swift_getKeyPath();
    swift_getKeyPath();
    v17 = static Published.subscript.modify();
    v19 = v18;
    v20 = *v18;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v19 = v20;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v20 = sub_100005F90(0, *(v20 + 2) + 1, 1, v20);
      *v19 = v20;
    }

    v23 = *(v20 + 2);
    v22 = *(v20 + 3);
    if (v23 >= v22 >> 1)
    {
      v20 = sub_100005F90((v22 > 1), v23 + 1, 1, v20);
      *v19 = v20;
    }

    a1 = v59;
    ++v6;
    *(v20 + 2) = v23 + 1;
    v24 = &v20[32 * v23];
    *(v24 + 4) = v10;
    *(v24 + 5) = v12;
    *(v24 + 6) = v14;
    *(v24 + 7) = v16;
    v17(&origin, 0);
  }

  while (v5 != v6);
LABEL_20:
  if (!v57)
  {
    v25 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v25 != 2)
    {
      goto LABEL_22;
    }

LABEL_28:
    if ((a1 & 0xC000000000000001) != 0)
    {
      v36 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_41:
        __break(1u);
        goto LABEL_42;
      }

      v36 = *(a1 + 32);
    }

    v37 = v36;
    [v36 CGRectValue];
    v39 = v38;
    v41 = v40;
    v43 = v42;
    v45 = v44;

    if ((a1 & 0xC000000000000001) != 0)
    {
      v46 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
      {
LABEL_42:
        __break(1u);
        return;
      }

      v46 = *(a1 + 40);
    }

    v47 = v46;
    [v46 CGRectValue];
    v49 = v48;
    v51 = v50;
    v53 = v52;
    v55 = v54;

    v63.origin.x = v39;
    v63.origin.y = v41;
    v63.size.width = v43;
    v63.size.height = v45;
    v65.origin.x = v49;
    v65.origin.y = v51;
    v65.size.width = v53;
    v65.size.height = v55;
    v64 = CGRectUnion(v63, v65);
    x = v64.origin.x;
    y = v64.origin.y;
    width = v64.size.width;
    height = v64.size.height;
    goto LABEL_36;
  }

  v25 = _CocoaArrayWrapper.endIndex.getter();
  if (v25 == 2)
  {
    goto LABEL_28;
  }

LABEL_22:
  if (v25 == 1)
  {
    if ((a1 & 0xC000000000000001) == 0)
    {
      if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v26 = *(a1 + 32);
LABEL_26:
        v27 = v26;
        [v26 CGRectValue];
        x = v28;
        y = v30;
        width = v32;
        height = v34;

LABEL_36:
        swift_getKeyPath();
        swift_getKeyPath();
        origin.x = x;
        origin.y = y;
        v62.width = width;
        v62.height = height;
        v56 = v60;
        goto LABEL_4;
      }

      __break(1u);
      goto LABEL_41;
    }

LABEL_38:
    v26 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_26;
  }
}

id sub_10000596C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ForeheadWindow(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for ForeheadWindow(uint64_t a1)
{
  result = qword_100062960;
  if (!qword_100062960)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100005B14(uint64_t a1)
{
  sub_100005CE4(319, &qword_100062970, &qword_100062978, &qword_1000482D0, &type metadata accessor for Environment.Content);
  if (v1 <= 0x3F)
  {
    sub_100005C8C(319);
    if (v2 <= 0x3F)
    {
      sub_100005CE4(319, &qword_100062988, &qword_100062990, &qword_100047D60, &type metadata accessor for Published);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_100005C8C(uint64_t a1)
{
  if (!qword_100062980)
  {
    type metadata accessor for CGRect(255);
    v1 = type metadata accessor for Published();
    if (!v2)
    {
      atomic_store(v1, &qword_100062980);
    }
  }
}

void sub_100005CE4(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_100003AC0(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_100005D54@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for ForeheadWindow(0);
  result = ObservableObject<>.objectWillChange.getter();
  *a2 = result;
  return result;
}

double sub_100005D94@<D0>(_OWORD *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  result = *&v4;
  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_100005E18(_OWORD *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return static Published.subscript.setter();
}

uint64_t sub_100005E90@<X0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v4;
  return result;
}

uint64_t sub_100005F14(uint64_t *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v3 = v2;
  return static Published.subscript.setter();
}

char *sub_100005F90(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003968(&qword_100062998, &unk_100047E30);
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
    memcpy(v13, v14, 32 * v8);
  }

  return v10;
}

uint64_t sub_100006098(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100003968(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t sub_100006100()
{
  result = qword_1000629B0;
  if (!qword_1000629B0)
  {
    type metadata accessor for UserInterfaceSizeClass();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000629B0);
  }

  return result;
}

uint64_t sub_100006158(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003968(&qword_100062978, &qword_1000482D0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1000061C8()
{
  result = qword_1000629B8;
  if (!qword_1000629B8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000629B8);
  }

  return result;
}

char *sub_100006224(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003968(&qword_1000629D8, &unk_100047EC0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

uint64_t sub_100006328()
{
  sub_1000063C4();
  result = OS_os_log.init(subsystem:category:)();
  qword_1000654E8 = result;
  return result;
}

unint64_t sub_1000063C4()
{
  result = qword_100062AE0;
  if (!qword_100062AE0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100062AE0);
  }

  return result;
}

uint64_t sub_100006410()
{
  v0 = type metadata accessor for DynamicTypeSize();
  sub_100007078(v0, accessibilityLayoutTextSize);
  v1 = sub_1000064FC(v0, accessibilityLayoutTextSize);
  v2 = enum case for DynamicTypeSize.accessibility1(_:);
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

uint64_t accessibilityLayoutTextSize.unsafeMutableAddressor()
{
  if (qword_1000626F8 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for DynamicTypeSize();

  return sub_1000064FC(v0, accessibilityLayoutTextSize);
}

uint64_t sub_1000064FC(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t isAccessibilityLayout(_:)(uint64_t a1)
{
  v2 = sub_100003968(&qword_100062AE8, &qword_1000480E0);
  __chkstk_darwin(v2 - 8);
  v4 = &v12 - v3;
  v5 = type metadata accessor for DynamicTypeSize();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100006710(a1, v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_100006780(v4);
    v9 = 0;
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    if (qword_1000626F8 != -1)
    {
      swift_once();
    }

    sub_1000064FC(v5, accessibilityLayoutTextSize);
    sub_1000067E8();
    v10 = dispatch thunk of static Comparable.< infix(_:_:)();
    (*(v6 + 8))(v8, v5);
    v9 = v10 ^ 1;
  }

  return v9 & 1;
}

uint64_t sub_100006710(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003968(&qword_100062AE8, &qword_1000480E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100006780(uint64_t a1)
{
  v2 = sub_100003968(&qword_100062AE8, &qword_1000480E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1000067E8()
{
  result = qword_100062AF0;
  if (!qword_100062AF0)
  {
    type metadata accessor for DynamicTypeSize();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100062AF0);
  }

  return result;
}

uint64_t imageViewForBundleId(_:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003968(&qword_100062AE8, &qword_1000480E0);
  __chkstk_darwin(v4 - 8);
  v6 = &v13 - v5;
  if (!a2)
  {
    [objc_allocWithZone(UIImage) init];

    return Image.init(uiImage:)();
  }

  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == a1 && v7 == a2)
  {
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v9 & 1) == 0)
    {
      v10 = type metadata accessor for DynamicTypeSize();
      (*(*(v10 - 8) + 56))(v6, 1, 1, v10);
      v11 = iconForBundleId(_:dynamicTypeSize:)(a1, a2, v6);
      sub_100006780(v6);
      if (!v11)
      {
        [objc_allocWithZone(UIImage) init];
      }

      return Image.init(uiImage:)();
    }
  }

  return Image.init(systemName:)();
}

id iconForBundleId(_:dynamicTypeSize:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100003968(&qword_100062AE8, &qword_1000480E0);
  __chkstk_darwin(v6 - 8);
  v8 = &v49 - v7;
  v9 = type metadata accessor for DynamicTypeSize();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100003968(&qword_100062AF8, &qword_100047EE0);
  __chkstk_darwin(v13 - 8);
  v15 = &v49 - v14;
  if (!a2)
  {
    return 0;
  }

  if (qword_100062788 != -1)
  {
    swift_once();
  }

  v16 = objc_opt_self();
  if (qword_100062778 != -1)
  {
    v48 = v16;
    swift_once();
    v16 = v48;
  }

  v17 = [v16 preferredFontForTextStyle:titleFontStyle];
  [v17 pointSize];
  v19 = v18;

  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == a1 && v20 == a2)
  {
  }

  else
  {
    v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v21 & 1) == 0)
    {
      v37 = objc_allocWithZone(ISIcon);
      v38 = String._bridgeToObjectiveC()();
      v39 = [v37 initWithBundleIdentifier:v38];

      v40 = v19 + v19;
      sub_100006710(a3, v8);
      if ((*(v10 + 48))(v8, 1, v9) == 1)
      {
        sub_100006780(v8);
      }

      else
      {
        (*(v10 + 32))(v12, v8, v9);
        if (qword_1000626F8 != -1)
        {
          swift_once();
        }

        sub_1000064FC(v9, accessibilityLayoutTextSize);
        sub_1000067E8();
        v41 = dispatch thunk of static Comparable.< infix(_:_:)();
        (*(v10 + 8))(v12, v9);
        if ((v41 & 1) == 0)
        {
          v40 = v19 * 4.0;
        }
      }

      v42 = [objc_allocWithZone(ISImageDescriptor) initWithSize:v40 scale:{v40, 1.0}];
      v43 = [v39 prepareImageForDescriptor:v42];
      if (v43)
      {
        v44 = v43;
        result = [v43 CGImage];
        if (result)
        {
          v45 = result;
          [v44 scale];
          v47 = [objc_allocWithZone(UIImage) initWithCGImage:v45 scale:0 orientation:v46];

          return v47;
        }

        goto LABEL_28;
      }

      return 0;
    }
  }

  v22 = type metadata accessor for URL();
  v23 = *(v22 - 8);
  (*(v23 + 56))(v15, 1, 1, v22);
  v24 = String._bridgeToObjectiveC()();
  v26 = 0;
  if ((*(v23 + 48))(v15, 1, v22) != 1)
  {
    URL._bridgeToObjectiveC()(v25);
    v26 = v27;
    (*(v23 + 8))(v15, v22);
  }

  v28 = [objc_allocWithZone(ISSymbol) initWithSymbolName:v24 bundleURL:v26];

  v29 = [v28 imageForSize:v19 scale:{v19, 1.0}];
  if (!v29)
  {

    return 0;
  }

  v30 = v29;
  result = [v29 CGImage];
  if (result)
  {
    v32 = result;
    [v30 scale];
    v34 = [objc_allocWithZone(UIImage) initWithCGImage:v32 scale:0 orientation:v33];

    v35 = [objc_opt_self() blueColor];
    v36 = [v34 imageWithTintColor:v35 renderingMode:1];

    return v36;
  }

  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

uint64_t *sub_100007078(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_10000710C(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_100007124(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_100007140(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
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

uint64_t sub_100007188(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10000720C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for GeometryProxy();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  *a3 = static VerticalAlignment.top.getter();
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  v9 = sub_100003968(&qword_100062B00, &qword_100047FE0);
  sub_1000073FC(a2, a1, a3 + *(v9 + 44));
  v10 = *(a2 + 72);
  v11 = static Edge.Set.all.getter();
  v12 = a3 + *(sub_100003968(&qword_100062B08, &qword_100047FE8) + 36);
  *v12 = v11;
  *(v12 + 8) = 0x4020000000000000;
  *(v12 + 16) = v10;
  *(v12 + 24) = 0x4020000000000000;
  *(v12 + 32) = v10;
  *(v12 + 40) = 0;
  (*(v7 + 16))(&v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], a1, v6);
  v13 = (*(v7 + 80) + 112) & ~*(v7 + 80);
  v14 = swift_allocObject();
  v15 = *(a2 + 48);
  *(v14 + 3) = *(a2 + 32);
  *(v14 + 4) = v15;
  v16 = *(a2 + 80);
  *(v14 + 5) = *(a2 + 64);
  *(v14 + 6) = v16;
  v17 = *(a2 + 16);
  *(v14 + 1) = *a2;
  *(v14 + 2) = v17;
  (*(v7 + 32))(&v14[v13], &v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], v6);
  v18 = (a3 + *(sub_100003968(&qword_100062B10, &unk_100047FF0) + 36));
  *v18 = sub_100008228;
  v18[1] = v14;
  v18[2] = 0;
  v18[3] = 0;
  return sub_100008104(a2, v20);
}

uint64_t sub_1000073FC@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v104 = a2;
  v102 = a3;
  v4 = sub_100003968(&qword_100062B20, &qword_100048000);
  v97 = *(v4 - 8);
  v98 = v4;
  __chkstk_darwin(v4);
  v89 = (&v82 - v5);
  v6 = sub_100003968(&qword_100062B28, &qword_100048008);
  __chkstk_darwin(v6 - 8);
  v101 = &v82 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v96 = &v82 - v9;
  v10 = type metadata accessor for ButtonView(0);
  __chkstk_darwin(v10);
  v100 = &v82 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v99 = &v82 - v13;
  __chkstk_darwin(v14);
  v16 = &v82 - v15;
  __chkstk_darwin(v17);
  v19 = &v82 - v18;
  v20 = sub_100003968(&qword_100062B30, &unk_100048010);
  __chkstk_darwin(v20);
  v88 = &v82 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v105 = (&v82 - v23);
  __chkstk_darwin(v24);
  v26 = &v82 - v25;
  v134 = *a1;
  v135 = *(a1 + 16);
  v115 = *a1;
  LOBYTE(v116) = *(a1 + 16);
  v90 = sub_100003968(&qword_100062B38, &qword_1000493B0);
  Binding.projectedValue.getter();
  v27 = v128;
  v107 = v127;
  LODWORD(v106) = v129;
  v28 = swift_allocObject();
  v29 = a1[3];
  v28[3] = a1[2];
  v28[4] = v29;
  v30 = a1[5];
  v28[5] = a1[4];
  v28[6] = v30;
  v31 = a1[1];
  v28[1] = *a1;
  v28[2] = v31;
  v108 = xmmword_100047F00;
  *v26 = xmmword_100047F00;
  LOBYTE(v127) = 0;
  sub_100008104(a1, &v115);
  State.init(wrappedValue:)();
  v32 = *(&v115 + 1);
  v26[96] = v115;
  *(v26 + 13) = v32;
  v127 = 0;
  State.init(wrappedValue:)();
  v33 = *(&v115 + 1);
  *(v26 + 14) = v115;
  *(v26 + 15) = v33;
  v127 = 0;
  State.init(wrappedValue:)();
  v34 = *(&v115 + 1);
  *(v26 + 16) = v115;
  *(v26 + 17) = v34;
  v103 = v10;
  AccessibilityFocusState.init<>()();
  v26[16] = 4;
  *(v26 + 6) = sub_1000082EC;
  *(v26 + 7) = v28;
  *(v26 + 3) = v107;
  *(v26 + 4) = v27;
  v26[40] = v106;
  *(v26 + 8) = 0xD000000000000010;
  *(v26 + 9) = 0x800000010004A1F0;
  *(v26 + 10) = 0xD000000000000010;
  *(v26 + 11) = 0x800000010004A1F0;
  v133 = a1[5];
  v115 = a1[5];
  v35 = sub_100003968(&qword_100062B18, &unk_100049360);
  State.wrappedValue.getter();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v87 = v20;
  v36 = *(v20 + 36);
  v106 = v26;
  v37 = &v26[v36];
  v38 = v119;
  *v37 = v118;
  *(v37 + 1) = v38;
  *(v37 + 2) = v120;
  GeometryProxy.size.getter();
  v115 = v133;
  v86 = v35;
  State.wrappedValue.getter();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v94 = v123;
  v95 = v121;
  v92 = v126;
  v93 = v125;
  v138 = 1;
  v137 = v122;
  v136 = v124;
  v115 = v134;
  LOBYTE(v116) = v135;
  Binding.projectedValue.getter();
  v39 = v127;
  v40 = v128;
  LOBYTE(v10) = v129;
  *v19 = v108;
  LOBYTE(v127) = 0;
  State.init(wrappedValue:)();
  v41 = *(&v115 + 1);
  v19[96] = v115;
  *(v19 + 13) = v41;
  v127 = 0;
  State.init(wrappedValue:)();
  v42 = *(&v115 + 1);
  *(v19 + 14) = v115;
  *(v19 + 15) = v42;
  v127 = 0;
  State.init(wrappedValue:)();
  v43 = *(&v115 + 1);
  *(v19 + 16) = v115;
  *(v19 + 17) = v43;
  AccessibilityFocusState.init<>()();
  v19[16] = 0;
  *(v19 + 6) = nullsub_1;
  *(v19 + 7) = 0;
  *(v19 + 3) = v39;
  *(v19 + 4) = v40;
  v19[40] = v10;
  *(v19 + 8) = 0x69662E6573756170;
  *(v19 + 9) = 0xEA00000000006C6CLL;
  *(v19 + 10) = 0x69662E6573756170;
  *(v19 + 11) = 0xEA00000000006C6CLL;
  v107 = v19;
  v115 = v134;
  LOBYTE(v116) = v135;
  Binding.projectedValue.getter();
  v44 = v127;
  v45 = v128;
  LOBYTE(v10) = v129;
  *v16 = v108;
  LOBYTE(v127) = 0;
  State.init(wrappedValue:)();
  v46 = *(&v115 + 1);
  v16[96] = v115;
  *(v16 + 13) = v46;
  v127 = 0;
  State.init(wrappedValue:)();
  v47 = *(&v115 + 1);
  *(v16 + 14) = v115;
  *(v16 + 15) = v47;
  v127 = 0;
  State.init(wrappedValue:)();
  v48 = *(&v115 + 1);
  *(v16 + 16) = v115;
  *(v16 + 17) = v48;
  AccessibilityFocusState.init<>()();
  v16[16] = 1;
  *(v16 + 6) = nullsub_1;
  *(v16 + 7) = 0;
  *(v16 + 3) = v44;
  *(v16 + 4) = v45;
  v16[40] = v10;
  *(v16 + 8) = 0x6C6C69662E63696DLL;
  *(v16 + 9) = 0xE800000000000000;
  *(v16 + 10) = 0x6C6C69662E63696DLL;
  *(v16 + 11) = 0xE800000000000000;
  v91 = v16;
  v49 = *(a1 + 5);
  if (v49)
  {
    v50 = *(a1 + 6);

    GeometryProxy.size.getter();
    v115 = v133;
    State.wrappedValue.getter();
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v104 = v127;
    v84 = v131;
    v85 = v129;
    v83 = v132;
    v114 = 1;
    v113 = v128;
    v112 = v130;
    v115 = v134;
    LOBYTE(v116) = v135;
    Binding.projectedValue.getter();
    v51 = v109;
    v52 = v110;
    v53 = v111;
    v54 = swift_allocObject();
    *(v54 + 16) = v49;
    *(v54 + 24) = v50;
    v82 = v50;
    v55 = v105;
    *v105 = v108;
    LOBYTE(v109) = 0;

    State.init(wrappedValue:)();
    v56 = *(&v115 + 1);
    *(v55 + 96) = v115;
    *(v55 + 13) = v56;
    v109 = 0;
    State.init(wrappedValue:)();
    v57 = *(&v115 + 1);
    *(v55 + 14) = v115;
    *(v55 + 15) = v57;
    v109 = 0;
    State.init(wrappedValue:)();
    v58 = *(&v115 + 1);
    *(v55 + 16) = v115;
    *(v55 + 17) = v58;
    AccessibilityFocusState.init<>()();
    *(v55 + 16) = 3;
    *(v55 + 6) = sub_10000840C;
    *(v55 + 7) = v54;
    *(v55 + 3) = v51;
    *(v55 + 4) = v52;
    *(v55 + 40) = v53;
    *(v55 + 8) = 0xD000000000000028;
    *(v55 + 9) = 0x800000010004A210;
    *(v55 + 10) = 0xD000000000000028;
    *(v55 + 11) = 0x800000010004A210;
    v115 = v133;
    State.wrappedValue.getter();
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v59 = v88;
    v60 = (v55 + *(v87 + 36));
    v61 = v116;
    *v60 = v115;
    v60[1] = v61;
    v60[2] = v117;
    LOBYTE(v51) = v114;
    v62 = v113;
    LOBYTE(v52) = v112;
    sub_100006098(v55, v59, &qword_100062B30, &unk_100048010);
    v63 = v89;
    *v89 = 0;
    *(v63 + 8) = v51;
    *(v63 + 16) = v104;
    *(v63 + 24) = v62;
    v64 = v84;
    *(v63 + 32) = v85;
    *(v63 + 40) = v52;
    v65 = v83;
    *(v63 + 48) = v64;
    *(v63 + 56) = v65;
    v66 = sub_100003968(&qword_100062B48, &qword_100048028);
    sub_100006098(v59, v63 + *(v66 + 48), &qword_100062B30, &unk_100048010);
    sub_100008434(v49, v82);
    sub_100003CE8(v55, &qword_100062B30, &unk_100048010);
    sub_100003CE8(v59, &qword_100062B30, &unk_100048010);
    v67 = v96;
    sub_100008444(v63, v96);
    v68 = v67;
    (*(v97 + 56))(v67, 0, 1, v98);
    v69 = v55;
  }

  else
  {
    v68 = v96;
    (*(v97 + 56))();
    v69 = v105;
  }

  sub_100006098(v106, v69, &qword_100062B30, &unk_100048010);
  v70 = v138;
  v71 = v137;
  LODWORD(v108) = v136;
  v72 = v99;
  sub_100008314(v107, v99);
  v73 = v91;
  v74 = v100;
  sub_100008314(v91, v100);
  v75 = v101;
  sub_100006098(v68, v101, &qword_100062B28, &qword_100048008);
  v76 = v102;
  sub_100006098(v69, v102, &qword_100062B30, &unk_100048010);
  v77 = sub_100003968(&qword_100062B40, &qword_100048020);
  v78 = v76 + v77[12];
  *v78 = 0;
  *(v78 + 8) = v70;
  v79 = v94;
  *(v78 + 16) = v95;
  *(v78 + 24) = v71;
  *(v78 + 32) = v79;
  *(v78 + 40) = v108;
  v80 = v92;
  *(v78 + 48) = v93;
  *(v78 + 56) = v80;
  sub_100008314(v72, v76 + v77[16]);
  sub_100008314(v74, v76 + v77[20]);
  sub_100006098(v75, v76 + v77[24], &qword_100062B28, &qword_100048008);
  sub_100003CE8(v68, &qword_100062B28, &qword_100048008);
  sub_100008378(v73);
  sub_100008378(v107);
  sub_100003CE8(v106, &qword_100062B30, &unk_100048010);
  sub_100003CE8(v75, &qword_100062B28, &qword_100048008);
  sub_100008378(v74);
  sub_100008378(v72);
  return sub_100003CE8(v105, &qword_100062B30, &unk_100048010);
}

uint64_t sub_100008004(uint64_t a1)
{
  GeometryProxy.size.getter();
  sub_100003968(&qword_100062B18, &unk_100049360);
  return State.wrappedValue.setter();
}

uint64_t sub_10000806C@<X0>(uint64_t (**a1)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)@<X8>)
{
  v3 = v1[3];
  v12[2] = v1[2];
  v12[3] = v3;
  v4 = v1[5];
  v12[4] = v1[4];
  v12[5] = v4;
  v5 = v1[1];
  v12[0] = *v1;
  v12[1] = v5;
  v6 = swift_allocObject();
  v7 = v1[3];
  *(v6 + 3) = v1[2];
  *(v6 + 4) = v7;
  v8 = v1[5];
  *(v6 + 5) = v1[4];
  *(v6 + 6) = v8;
  v9 = v1[1];
  *(v6 + 1) = *v1;
  *(v6 + 2) = v9;
  *a1 = sub_1000080FC;
  a1[1] = v6;
  return sub_100008104(v12, &v11);
}

uint64_t sub_10000813C()
{
  v1 = type metadata accessor for GeometryProxy();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = *(v2 + 64);

  if (*(v0 + 56))
  {
  }

  v5 = (v3 + 112) & ~v3;

  (*(v2 + 8))(v0 + v5, v1);

  return _swift_deallocObject(v0, v5 + v4, v3 | 7);
}

uint64_t sub_100008228()
{
  type metadata accessor for GeometryProxy();

  return sub_100008004(v0 + 16);
}

uint64_t sub_10000828C()
{

  if (*(v0 + 56))
  {
  }

  return _swift_deallocObject(v0, 112, 7);
}

uint64_t sub_100008314(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ButtonView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100008378(uint64_t a1)
{
  v2 = type metadata accessor for ButtonView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000083D4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100008434(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_100008444(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003968(&qword_100062B20, &qword_100048000);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1000084B8()
{
  result = qword_100062B50;
  if (!qword_100062B50)
  {
    sub_100003AC0(&qword_100062B58, &unk_100048030);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100062B50);
  }

  return result;
}

uint64_t sub_100008540(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_100003968(&qword_100062B60, &unk_1000484D0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

void *sub_100008610(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_100003968(&qword_100062B60, &unk_1000484D0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for AXLTTitleView(uint64_t a1)
{
  result = qword_100062BC0;
  if (!qword_100062BC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10000870C(uint64_t a1)
{
  type metadata accessor for AXLTCaption();
  if (v1 <= 0x3F)
  {
    sub_1000088D4(319, &qword_100062BD0, &type metadata accessor for DynamicTypeSize, &type metadata accessor for Environment);
    if (v2 <= 0x3F)
    {
      sub_100008888(319, &qword_100062BD8, &type metadata for Color);
      if (v3 <= 0x3F)
      {
        sub_100008888(319, &qword_100062BE0, &type metadata for Font);
        if (v4 <= 0x3F)
        {
          sub_1000088D4(319, &qword_100062BE8, sub_100008938, &type metadata accessor for State);
          if (v5 <= 0x3F)
          {
            type metadata accessor for AudioHistogramConfig(319);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_100008888(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = type metadata accessor for State();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1000088D4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_100008938()
{
  result = qword_100062BF0;
  if (!qword_100062BF0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100062BF0);
  }

  return result;
}

uint64_t sub_1000089A0()
{
  v1 = v0;
  v2 = type metadata accessor for AXLTTitleView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v5 = sub_100003968(&qword_100062C38, &qword_1000480B8);
  __chkstk_darwin(v5);
  v7 = &v20 - v6;
  *v7 = static HorizontalAlignment.leading.getter();
  *(v7 + 1) = 0;
  v7[16] = 0;
  v8 = &v7[*(sub_100003968(&qword_100062C40, &qword_1000480C0) + 44)];
  *v8 = static VerticalAlignment.center.getter();
  *(v8 + 1) = 0x4018000000000000;
  v8[16] = 0;
  v9 = sub_100003968(&qword_100062C48, &qword_1000480C8);
  sub_100008D54(v0, &v8[*(v9 + 44)]);
  sub_10000ACD0(v0, &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v11 = swift_allocObject();
  sub_10000AD38(&v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10);
  v12 = &v7[*(sub_100003968(&qword_100062C58, &qword_1000480D8) + 36)];
  *v12 = sub_10000AD9C;
  v12[1] = v11;
  v12[2] = 0;
  v12[3] = 0;
  v13 = [objc_opt_self() defaultCenter];
  if (qword_100062730 != -1)
  {
    swift_once();
  }

  NSNotificationCenter.publisher(for:object:)();

  sub_10000ACD0(v1, &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = swift_allocObject();
  sub_10000AD38(&v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v10);
  v15 = &v7[*(v5 + 56)];
  *v15 = sub_10000ADFC;
  v15[1] = v14;
  v21 = *v1;
  v16 = v21;
  sub_10000ACD0(v1, &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = swift_allocObject();
  sub_10000AD38(&v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v10);
  type metadata accessor for AXLTCaption();
  sub_100003E3C(&qword_100062C60, &qword_100062C38, &qword_1000480B8, &protocol conformance descriptor for SubscriptionView<A, B>);
  sub_10000B70C(&qword_100062C68, &type metadata accessor for AXLTCaption, &protocol conformance descriptor for NSObject);
  v18 = v16;
  View.onChange<A>(of:initial:_:)();

  return sub_100003CE8(v7, &qword_100062C38, &qword_1000480B8);
}

uint64_t sub_100008D54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v162 = a2;
  v3 = type metadata accessor for AXLTTitleView(0);
  v149 = *(v3 - 8);
  __chkstk_darwin(v3);
  v150 = v4;
  v151 = &v148 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v155 = sub_100003968(&qword_100062C80, &qword_1000480F8);
  __chkstk_darwin(v155);
  v154 = &v148 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v153 = &v148 - v7;
  v8 = type metadata accessor for DynamicTypeSize();
  v169 = *(v8 - 8);
  v170 = v8;
  __chkstk_darwin(v8);
  v168 = &v148 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v167 = &v148 - v11;
  v157 = sub_100003968(&qword_100062C88, &qword_100048100);
  __chkstk_darwin(v157);
  v171 = &v148 - v12;
  v13 = sub_100003968(&qword_100062C90, &qword_100048108);
  v158 = *(v13 - 8);
  v159 = v13;
  __chkstk_darwin(v13);
  v156 = &v148 - v14;
  v160 = sub_100003968(&qword_100062C98, &qword_100048110);
  __chkstk_darwin(v160);
  v161 = &v148 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v172 = &v148 - v17;
  __chkstk_darwin(v18);
  v174 = &v148 - v19;
  v166 = sub_100003968(&qword_100062CA0, &qword_100048118);
  __chkstk_darwin(v166);
  v21 = &v148 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v152 = &v148 - v23;
  v163 = sub_100003968(&qword_100062CA8, &qword_100048120);
  __chkstk_darwin(v163);
  v165 = &v148 - v24;
  v25 = type metadata accessor for Image.ResizingMode();
  v26 = *(v25 - 8);
  __chkstk_darwin(v25);
  v28 = &v148 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v164 = sub_100003968(&qword_100062CB0, &qword_100048128);
  __chkstk_darwin(v164);
  v30 = &v148 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v33 = &v148 - v32;
  v34 = sub_100003968(&qword_100062CB8, &unk_100048130);
  __chkstk_darwin(v34 - 8);
  v173 = &v148 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v176 = &v148 - v37;
  sub_10000A314(0, 0, 0, 0);
  v175 = a1;
  if (!v38)
  {
    v152 = v3;
    v46 = (a1 + *(v3 + 40));
    v48 = *v46;
    v47 = v46[1];
    *&v201 = v48;
    *(&v201 + 1) = v47;
    sub_100003968(&qword_100062C70, &qword_1000480E8);
    State.wrappedValue.getter();
    Image.init(uiImage:)();
    (*(v26 + 104))(v28, enum case for Image.ResizingMode.stretch(_:), v25);
    v49 = Image.resizable(capInsets:resizingMode:)();

    (*(v26 + 8))(v28, v25);
    if (qword_100062788 == -1)
    {
      goto LABEL_7;
    }

    goto LABEL_32;
  }

  v39 = v3;
  v40 = Image.init(systemName:)();
  v41 = dispatch thunk of AXLTCaption.text.getter();
  v43 = v42;
  if (v41 == placeholderPausedText.getter() && v43 == v44)
  {
    v45 = v39;
LABEL_5:

    goto LABEL_11;
  }

  v54 = _stringCompareWithSmolCheck(_:_:expecting:)();

  v45 = v39;
  if (v54)
  {
    goto LABEL_11;
  }

  v142 = dispatch thunk of AXLTCaption.placeholder.getter();
  v144 = v143;
  if (v142 == placeholderPausedText.getter() && v144 == v145)
  {
    goto LABEL_5;
  }

  v146 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v146 & 1) == 0)
  {
    v55 = static Color.blue.getter();
    goto LABEL_12;
  }

LABEL_11:
  v55 = static Color.gray.getter();
LABEL_12:
  v56 = v55;
  KeyPath = swift_getKeyPath();
  v201 = v40;
  LOWORD(v202) = 1;
  *(&v202 + 1) = KeyPath;
  *&v203 = v56;
  sub_100003968(&qword_100062CF0, &qword_100048148);
  sub_10000B534();
  View.accessibility(identifier:)();

  v58 = v152;
  ModifiedContent<>.accessibility(hidden:)();
  sub_100003CE8(v21, &qword_100062CA0, &qword_100048118);
  sub_100006098(v58, v165, &qword_100062CA0, &qword_100048118);
  swift_storeEnumTagMultiPayload();
  sub_10000B5EC(&qword_100062CE0, &qword_100062CA0, &qword_100048118, sub_10000B534);
  sub_10000B5EC(&qword_100062D10, &qword_100062CB0, &qword_100048128, sub_10000B424);
  _ConditionalContent<>.init(storage:)();
  sub_100003CE8(v58, &qword_100062CA0, &qword_100048118);
  while (1)
  {
    v59 = v175;
    *&v201 = AXLTCaption.appName.getter();
    *(&v201 + 1) = v60;
    v164 = sub_10000B6A0();
    v61 = Text.init<A>(_:)();
    v63 = v62;
    v65 = v64;
    v66 = (v59 + *(v45 + 8));
    v68 = *v66;
    v67 = v66[1];
    *&v201 = v68;
    *(&v201 + 1) = v67;
    sub_100003968(&qword_100062C78, &qword_1000480F0);
    State.wrappedValue.getter();
    v69 = Text.foregroundColor(_:)();
    v165 = v70;
    v166 = v69;
    v72 = v71;
    v74 = v73;

    sub_10000B6F4(v61, v63, v65 & 1);

    v75 = (v59 + *(v45 + 9));
    v77 = *v75;
    v76 = v75[1];
    *&v201 = v77;
    *(&v201 + 1) = v76;
    sub_100003968(&qword_100062D20, &qword_100048158);
    State.wrappedValue.getter();
    v78 = v166;
    v30 = Text.font(_:)();
    v80 = v79;
    v82 = v81;
    v84 = v83;

    sub_10000B6F4(v78, v72, v74 & 1);

    v33 = swift_getKeyPath();
    v212 = v82 & 1;
    v210 = 0;
    *&v201 = v30;
    v166 = v80;
    *(&v201 + 1) = v80;
    LODWORD(v165) = v82 & 1;
    LOBYTE(v202) = v82 & 1;
    *(&v202 + 1) = *v211;
    DWORD1(v202) = *&v211[3];
    *(&v202 + 1) = v84;
    *&v203 = 0x3FE999999999999ALL;
    *(&v203 + 1) = v33;
    *&v204 = 1;
    BYTE8(v204) = 0;
    v85 = v169;
    v86 = v170;
    v87 = *(v169 + 104);
    v88 = v167;
    v87(v167, enum case for DynamicTypeSize.xSmall(_:), v170);
    v89 = v168;
    v87(v168, enum case for DynamicTypeSize.accessibility3(_:), v86);
    sub_10000B70C(&qword_100062AF0, &type metadata accessor for DynamicTypeSize, &protocol conformance descriptor for DynamicTypeSize);
    v49 = v86;
    if (dispatch thunk of static Comparable.<= infix(_:_:)())
    {
      break;
    }

    __break(1u);
LABEL_32:
    swift_once();
LABEL_7:
    v50 = objc_opt_self();
    if (qword_100062778 != -1)
    {
      swift_once();
    }

    v51 = titleFontStyle;
    v52 = [v50 preferredFontForTextStyle:titleFontStyle];
    [v52 lineHeight];

    v53 = [v50 preferredFontForTextStyle:v51];
    [v53 lineHeight];

    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    LOBYTE(v191) = 1;
    *&v213[19] = v214;
    *&v213[11] = *&v213[35];
    *&v213[3] = *&v213[27];
    *v200 = v49;
    *&v200[8] = 0;
    *&v200[16] = 1;
    *&v200[18] = *v213;
    *&v200[34] = *&v213[8];
    *&v200[50] = *&v213[16];
    *&v200[64] = *(&v214 + 1);
    sub_100003968(&qword_100062CC0, &qword_100048C00);
    sub_10000B424();
    View.accessibility(identifier:)();
    v203 = *&v200[32];
    v204 = *&v200[48];
    *&v205 = *&v200[64];
    v201 = *v200;
    v202 = *&v200[16];
    sub_100003CE8(&v201, &qword_100062CC0, &qword_100048C00);
    ModifiedContent<>.accessibility(hidden:)();
    sub_100003CE8(v30, &qword_100062CB0, &qword_100048128);
    sub_100006098(v33, v165, &qword_100062CB0, &qword_100048128);
    swift_storeEnumTagMultiPayload();
    sub_10000B5EC(&qword_100062CE0, &qword_100062CA0, &qword_100048118, sub_10000B534);
    sub_10000B5EC(&qword_100062D10, &qword_100062CB0, &qword_100048128, sub_10000B424);
    _ConditionalContent<>.init(storage:)();
    sub_100003CE8(v33, &qword_100062CB0, &qword_100048128);
    v45 = v152;
  }

  v163 = v84;
  v90 = *(v85 + 32);
  v91 = v153;
  v90(v153, v88, v86);
  v167 = v30;
  v92 = v155;
  v90((v91 + *(v155 + 48)), v89, v86);
  v168 = v33;
  v93 = v154;
  sub_100006098(v91, v154, &qword_100062C80, &qword_1000480F8);
  v94 = *(v92 + 48);
  v90(v171, v93, v86);
  v95 = *(v85 + 8);
  v95(v93 + v94, v86);
  sub_10000BB84(v91, v93, &qword_100062C80, &qword_1000480F8);
  v96 = *(v92 + 48);
  v97 = v157;
  v98 = v171;
  v90(&v171[*(v157 + 36)], v93 + v96, v86);
  v95(v93, v86);
  v99 = sub_100003968(&qword_100062D28, &qword_100048190);
  v100 = sub_10000B754();
  v101 = sub_100003E3C(&qword_100062D58, &qword_100062C88, &qword_100048100, &protocol conformance descriptor for ClosedRange<A>);
  v102 = v156;
  View.dynamicTypeSize<A>(_:)();
  sub_100003CE8(v98, &qword_100062C88, &qword_100048100);
  sub_10000B6F4(v167, v166, v165);

  *&v201 = v99;
  *(&v201 + 1) = v97;
  *&v202 = v100;
  *(&v202 + 1) = v101;
  swift_getOpaqueTypeConformance2();
  v103 = v159;
  View.accessibility(identifier:)();
  (*(v158 + 8))(v102, v103);
  v104 = v175;
  v105 = *(v175 + 8);
  if (v105 != 1 && *(v175 + 8))
  {
    v106 = 0;
    v107 = 0xE000000000000000;
  }

  else
  {
    v106 = static AXLTUtilities.AXLTLocString(_:)();
  }

  *&v201 = v106;
  *(&v201 + 1) = v107;
  v108 = Text.init<A>(_:)();
  v110 = v109;
  v112 = v111;
  v113 = v172;
  ModifiedContent<>.accessibility(hint:)();
  sub_10000B6F4(v108, v110, v112 & 1);

  sub_100003CE8(v113, &qword_100062C98, &qword_100048110);
  if ((v105 & 0xFE) == 2 || *(v104 + 16) < 1)
  {
    sub_10000B890(&v201);
  }

  else
  {
    v114 = v151;
    sub_10000ACD0(v104, v151);
    v115 = (*(v149 + 80) + 16) & ~*(v149 + 80);
    v116 = swift_allocObject();
    sub_10000AD38(v114, v116 + v115);
    sub_10000A620();
    if (qword_100062788 != -1)
    {
      swift_once();
    }

    v117 = objc_opt_self();
    if (qword_100062778 != -1)
    {
      v147 = v117;
      swift_once();
      v117 = v147;
    }

    v118 = [v117 preferredFontForTextStyle:titleFontStyle];
    [v118 lineHeight];

    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v119 = v215;
    v120 = v217;
    v121 = v219;
    v122 = v220;
    v181 = 0;
    v180 = v216;
    v179 = v218;
    v123 = static Edge.Set.trailing.getter();
    EdgeInsets.init(_all:)();
    LOBYTE(v201) = 0;
    v178 = 1;
    *&v182 = sub_10000BAA8;
    *(&v182 + 1) = v116;
    LOBYTE(v183) = v181;
    *(&v183 + 1) = v119;
    LOBYTE(v184) = v180;
    *(&v184 + 1) = v120;
    LOBYTE(v185) = v179;
    *(&v185 + 1) = v121;
    *&v186 = v122;
    BYTE8(v186) = v123;
    *&v187 = v124;
    *(&v187 + 1) = v125;
    *&v188 = v126;
    *(&v188 + 1) = v127;
    LOBYTE(v189) = 0;
    *&v177[55] = v185;
    *&v177[39] = v184;
    *&v177[23] = v183;
    *&v177[7] = v182;
    v177[119] = 0;
    *&v177[103] = v188;
    *&v177[87] = v187;
    *&v177[71] = v186;
    *&v191 = sub_10000BAA8;
    *(&v191 + 1) = v116;
    LOBYTE(v192) = v181;
    *(&v192 + 1) = v119;
    LOBYTE(v193) = v180;
    *(&v193 + 1) = v120;
    LOBYTE(v194) = v179;
    *(&v194 + 1) = v121;
    *&v195 = v122;
    BYTE8(v195) = v123;
    *&v196 = v124;
    *(&v196 + 1) = v125;
    *&v197 = v126;
    *(&v197 + 1) = v127;
    LOBYTE(v198) = 0;
    sub_100006098(&v182, &v201, &qword_100062D70, &qword_1000481B8);
    sub_100003CE8(&v191, &qword_100062D70, &qword_1000481B8);
    *&v200[73] = *&v177[64];
    *&v200[89] = *&v177[80];
    *&v200[105] = *&v177[96];
    *&v200[9] = *v177;
    *&v200[25] = *&v177[16];
    *&v200[41] = *&v177[32];
    *v200 = 0;
    v200[8] = 1;
    *&v200[121] = *&v177[112];
    *&v200[57] = *&v177[48];
    nullsub_1();
    v207 = *&v200[96];
    v208 = *&v200[112];
    v209 = v200[128];
    v203 = *&v200[32];
    v204 = *&v200[48];
    v205 = *&v200[64];
    v206 = *&v200[80];
    v201 = *v200;
    v202 = *&v200[16];
  }

  v128 = v173;
  sub_100006098(v176, v173, &qword_100062CB8, &unk_100048130);
  v129 = v174;
  v130 = v161;
  sub_10000B8BC(v174, v161);
  v188 = v207;
  v189 = v208;
  v190 = v209;
  v184 = v203;
  v185 = v204;
  v186 = v205;
  v187 = v206;
  v182 = v201;
  v183 = v202;
  v131 = v162;
  sub_100006098(v128, v162, &qword_100062CB8, &unk_100048130);
  v132 = sub_100003968(&qword_100062D60, &qword_1000481A8);
  sub_10000B8BC(v130, v131 + *(v132 + 48));
  v133 = v131 + *(v132 + 64);
  v134 = v187;
  v197 = v188;
  v198 = v189;
  v135 = v185;
  v136 = v186;
  v195 = v186;
  v196 = v187;
  v137 = v183;
  v138 = v184;
  v193 = v184;
  v194 = v185;
  v139 = v182;
  v191 = v182;
  v192 = v183;
  v140 = v189;
  *(v133 + 96) = v188;
  *(v133 + 112) = v140;
  *(v133 + 32) = v138;
  *(v133 + 48) = v135;
  *(v133 + 64) = v136;
  *(v133 + 80) = v134;
  v199 = v190;
  *(v133 + 128) = v190;
  *v133 = v139;
  *(v133 + 16) = v137;
  sub_100006098(&v191, v200, &qword_100062D68, &qword_1000481B0);
  sub_100003CE8(v129, &qword_100062C98, &qword_100048110);
  sub_100003CE8(v176, &qword_100062CB8, &unk_100048130);
  *&v200[96] = v188;
  *&v200[112] = v189;
  v200[128] = v190;
  *&v200[32] = v184;
  *&v200[48] = v185;
  *&v200[64] = v186;
  *&v200[80] = v187;
  *v200 = v182;
  *&v200[16] = v183;
  sub_100003CE8(v200, &qword_100062D68, &qword_1000481B0);
  sub_100003CE8(v130, &qword_100062C98, &qword_100048110);
  return sub_100003CE8(v173, &qword_100062CB8, &unk_100048130);
}

uint64_t sub_10000A314(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = AXLTCaption.appID.getter();
  v10 = v9;
  if (a2)
  {

    v10 = a2;
  }

  else
  {
    a1 = v8;
  }

  v11 = AXLTCaption.appName.getter();
  v13 = v12;
  if (a4)
  {

    v13 = a4;
  }

  else
  {
    a3 = v11;
  }

  if (a1 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v10 == v14)
  {
    goto LABEL_14;
  }

  v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v16)
  {
LABEL_15:

    return 0x6C6C69662E63696DLL;
  }

  if (a3 == placeholderMicName.getter() && v13 == v17)
  {
LABEL_14:

    goto LABEL_15;
  }

  v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v19)
  {
    goto LABEL_15;
  }

  if (a1 == placeholderID.getter() && v10 == v20)
  {
  }

  else
  {
    v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v21 & 1) == 0)
    {
      if (a1 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v10 == v23)
      {
      }

      else
      {
        v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v24 & 1) == 0)
        {
          if (a1 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v10 == v25)
          {
          }

          else
          {
            v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if ((v26 & 1) == 0)
            {

              return 0;
            }
          }

          return 0x6F63706F7470616CLL;
        }
      }

      return 0xD00000000000001ALL;
    }
  }

  IsPad = AXDeviceIsPad();

  if (IsPad)
  {
    return 1684107369;
  }

  else
  {
    return 0x656E6F687069;
  }
}

uint64_t sub_10000A620()
{
  type metadata accessor for AXLTTitleView(0);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (__OFSUB__(v1, 1))
  {
    __break(1u);
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();
  }

  return result;
}

uint64_t sub_10000A7AC(uint64_t a1)
{
  v2 = sub_100003968(&qword_100062AE8, &qword_1000480E0);
  __chkstk_darwin(v2 - 8);
  v4 = v16 - v3;
  sub_10000A314(0, 0, 0, 0);
  if (v5)
  {
  }

  else
  {
    v7 = AXLTCaption.appID.getter();
    v9 = v8;
    v10 = type metadata accessor for AXLTTitleView(0);
    sub_10000B11C(&qword_100062C50, &qword_1000480D0, &type metadata accessor for DynamicTypeSize, v4);
    v11 = type metadata accessor for DynamicTypeSize();
    (*(*(v11 - 8) + 56))(v4, 0, 1, v11);
    v12 = iconForBundleId(_:dynamicTypeSize:)(v7, v9, v4);

    sub_100003CE8(v4, &qword_100062AE8, &qword_1000480E0);
    if (!v12)
    {
      v12 = [objc_allocWithZone(UIImage) init];
    }

    v13 = (a1 + *(v10 + 40));
    v15 = *v13;
    v14 = v13[1];
    v16[2] = v15;
    v16[3] = v14;
    v16[1] = v12;
    sub_100003968(&qword_100062C70, &qword_1000480E8);
    return State.wrappedValue.setter();
  }
}

uint64_t sub_10000A994(uint64_t a1, uint64_t a2)
{
  result = Notification.userInfo.getter();
  if (result)
  {
    v4 = result;
    v10 = notificationValueKey.getter();
    AnyHashable.init<A>(_:)();
    if (*(v4 + 16) && (v5 = sub_10003C2DC(v11), (v6 & 1) != 0))
    {
      sub_10000B3C8(*(v4 + 56) + 32 * v5, v12);
      sub_10000B374(v11);

      result = swift_dynamicCast();
      if (result)
      {
        v7 = (a2 + *(type metadata accessor for AXLTTitleView(0) + 32));
        v9 = *v7;
        v8 = v7[1];
        v11[0] = v9;
        v11[1] = v8;
        v12[0] = v10;
        sub_100003968(&qword_100062C78, &qword_1000480F0);
        return State.wrappedValue.setter();
      }
    }

    else
    {

      return sub_10000B374(v11);
    }
  }

  return result;
}

uint64_t sub_10000AAA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_100003968(&qword_100062AE8, &qword_1000480E0);
  __chkstk_darwin(v4 - 8);
  v6 = v24 - v5;
  v7 = AXLTCaption.appID.getter();
  v9 = v8;
  v10 = AXLTCaption.appName.getter();
  sub_10000A314(v7, v9, v10, v11);
  v13 = v12;

  if (v13)
  {
  }

  else
  {
    v15 = AXLTCaption.appID.getter();
    v17 = v16;
    v18 = type metadata accessor for AXLTTitleView(0);
    sub_10000B11C(&qword_100062C50, &qword_1000480D0, &type metadata accessor for DynamicTypeSize, v6);
    v19 = type metadata accessor for DynamicTypeSize();
    (*(*(v19 - 8) + 56))(v6, 0, 1, v19);
    v20 = iconForBundleId(_:dynamicTypeSize:)(v15, v17, v6);

    sub_100003CE8(v6, &qword_100062AE8, &qword_1000480E0);
    if (!v20)
    {
      v20 = [objc_allocWithZone(UIImage) init];
    }

    v21 = (a3 + *(v18 + 40));
    v23 = *v21;
    v22 = v21[1];
    v24[2] = v23;
    v24[3] = v22;
    v24[1] = v20;
    sub_100003968(&qword_100062C70, &qword_1000480E8);
    return State.wrappedValue.setter();
  }
}

uint64_t sub_10000ACD0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AXLTTitleView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000AD38(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AXLTTitleView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000AD9C()
{
  v1 = *(type metadata accessor for AXLTTitleView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_10000A7AC(v2);
}

uint64_t sub_10000ADFC(uint64_t a1)
{
  v3 = *(type metadata accessor for AXLTTitleView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_10000A994(a1, v4);
}

uint64_t sub_10000AE6C(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for AXLTTitleView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_10000AAA4(a1, a2, v6);
}

uint64_t sub_10000AEEC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100003968(&qword_1000629A8, &qword_100047E40);
  __chkstk_darwin(v8);
  v10 = &v13 - v9;
  sub_100006098(v2, &v13 - v9, &qword_1000629A8, &qword_100047E40);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_10000BB84(v10, a1, &qword_100062978, &qword_1000482D0);
  }

  static os_log_type_t.fault.getter();
  v12 = static Log.runtimeIssuesLog.getter();
  os_log(_:dso:log:_:_:)();

  EnvironmentValues.init()();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_10000B11C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v8 = v4;
  v10 = type metadata accessor for EnvironmentValues();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100003968(a1, a2);
  __chkstk_darwin(v14);
  v16 = &v20 - v15;
  sub_100006098(v8, &v20 - v15, a1, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = a3(0);
    return (*(*(v17 - 8) + 32))(a4, v16, v17);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v19 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v11 + 8))(v13, v10);
  }
}

uint64_t sub_10000B31C@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.foregroundColor.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10000B3C8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_10000B424()
{
  result = qword_100062CC8;
  if (!qword_100062CC8)
  {
    sub_100003AC0(&qword_100062CC0, &qword_100048C00);
    sub_10000B4B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100062CC8);
  }

  return result;
}

unint64_t sub_10000B4B0()
{
  result = qword_100062CD0;
  if (!qword_100062CD0)
  {
    sub_100003AC0(&qword_100062CD8, &qword_100048140);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100062CD0);
  }

  return result;
}

unint64_t sub_10000B534()
{
  result = qword_100062CE8;
  if (!qword_100062CE8)
  {
    sub_100003AC0(&qword_100062CF0, &qword_100048148);
    sub_10000B4B0();
    sub_100003E3C(&qword_100062CF8, &qword_100062D00, &qword_100048150, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100062CE8);
  }

  return result;
}

uint64_t sub_10000B5EC(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100003AC0(a2, a3);
    a4();
    sub_10000B70C(&qword_100062D08, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10000B6A0()
{
  result = qword_100062D18;
  if (!qword_100062D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100062D18);
  }

  return result;
}

uint64_t sub_10000B6F4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_10000B70C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_10000B754()
{
  result = qword_100062D30;
  if (!qword_100062D30)
  {
    sub_100003AC0(&qword_100062D28, &qword_100048190);
    sub_10000B80C();
    sub_100003E3C(&qword_100062D48, &qword_100062D50, &qword_1000481A0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100062D30);
  }

  return result;
}

unint64_t sub_10000B80C()
{
  result = qword_100062D38;
  if (!qword_100062D38)
  {
    sub_100003AC0(&qword_100062D40, &qword_100048198);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100062D38);
  }

  return result;
}

double sub_10000B890(uint64_t a1)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 255;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 113) = 0u;
  return result;
}

uint64_t sub_10000B8BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003968(&qword_100062C98, &qword_100048110);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000B92C()
{
  v1 = type metadata accessor for AXLTTitleView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;

  v6 = *(v1 + 28);
  sub_100003968(&qword_100062C50, &qword_1000480D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = type metadata accessor for DynamicTypeSize();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10000BAA8()
{
  type metadata accessor for AXLTTitleView(0);
}

uint64_t sub_10000BB14@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.foregroundColor.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10000BB84(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100003968(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_10000BBEC()
{
  sub_100003AC0(&qword_100062C38, &qword_1000480B8);
  type metadata accessor for AXLTCaption();
  sub_100003E3C(&qword_100062C60, &qword_100062C38, &qword_1000480B8, &protocol conformance descriptor for SubscriptionView<A, B>);
  sub_10000B70C(&qword_100062C68, &type metadata accessor for AXLTCaption, &protocol conformance descriptor for NSObject);
  return swift_getOpaqueTypeConformance2();
}

Swift::Int sub_10000BCF8()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_10000BD6C(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

unint64_t sub_10000BDB0@<X0>(Swift::Int *a1@<X0>, LiveTranscriptionUI::WindowState_optional *a2@<X8>)
{
  result = _s19LiveTranscriptionUI11WindowStateO8rawValueACSgSi_tcfC_0(*a1);
  a2->value = result;
  return result;
}

NSString sub_10000BDE8()
{
  result = String._bridgeToObjectiveC()();
  qword_100065508 = result;
  return result;
}

uint64_t sub_10000BE20(uint64_t a1)
{
  result = AXDeviceIsPad();
  v2 = 500.0;
  if (result)
  {
    v2 = 1000.0;
  }

  qword_100065510 = *&v2;
  return result;
}

uint64_t sub_10000BE60()
{
  result = AXDeviceHasJindo();
  v1 = 0.0;
  if (result)
  {
    v1 = 10.0;
  }

  qword_100065518 = *&v1;
  return result;
}

uint64_t sub_10000BE90()
{
  v1 = type metadata accessor for UserInterfaceSizeClass();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v88 = &v80 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100003968(&qword_1000629A0, &unk_100048680);
  __chkstk_darwin(v4);
  v83 = &v80 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v93 = &v80 - v7;
  __chkstk_darwin(v8);
  v87 = &v80 - v9;
  __chkstk_darwin(v10);
  v12 = &v80 - v11;
  v13 = sub_100003968(&qword_100062978, &qword_1000482D0);
  __chkstk_darwin(v13 - 8);
  v81 = &v80 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v95 = &v80 - v16;
  __chkstk_darwin(v17);
  v96 = &v80 - v18;
  __chkstk_darwin(v19);
  v84 = &v80 - v20;
  __chkstk_darwin(v21);
  v94 = &v80 - v22;
  __chkstk_darwin(v23);
  v91 = &v80 - v24;
  __chkstk_darwin(v25);
  v82 = &v80 - v26;
  __chkstk_darwin(v27);
  v85 = &v80 - v28;
  __chkstk_darwin(v29);
  v86 = &v80 - v30;
  __chkstk_darwin(v31);
  v33 = &v80 - v32;
  __chkstk_darwin(v34);
  v36 = &v80 - v35;
  __chkstk_darwin(v37);
  v39 = &v80 - v38;
  v40 = type metadata accessor for RootView(0);
  v41 = *(v40 + 24);
  v103 = v0;
  v89 = v40;
  v90 = v41;
  sub_10000AEEC(v39);
  v42 = v2[13];
  v92 = enum case for UserInterfaceSizeClass.regular(_:);
  v100 = v42;
  v101 = v2 + 13;
  v42(v36);
  v98 = v2[7];
  v99 = v2 + 7;
  v98(v36, 0, 1, v1);
  v102 = v4;
  v43 = *(v4 + 48);
  sub_100006098(v39, v12, &qword_100062978, &qword_1000482D0);
  sub_100006098(v36, &v12[v43], &qword_100062978, &qword_1000482D0);
  v97 = v2;
  v104 = v2[6];
  if (v104(v12, 1, v1) == 1)
  {
    sub_100003CE8(v36, &qword_100062978, &qword_1000482D0);
    sub_100003CE8(v39, &qword_100062978, &qword_1000482D0);
    if (v104(&v12[v43], 1, v1) != 1)
    {
      v45 = v94;
      v46 = v95;
LABEL_14:
      v44 = v93;
      goto LABEL_15;
    }

    sub_100003CE8(v12, &qword_100062978, &qword_1000482D0);
    v44 = v93;
    v45 = v94;
  }

  else
  {
    sub_100006098(v12, v33, &qword_100062978, &qword_1000482D0);
    if (v104(&v12[v43], 1, v1) == 1)
    {
      v45 = v94;
LABEL_13:
      sub_100003CE8(v36, &qword_100062978, &qword_1000482D0);
      sub_100003CE8(v39, &qword_100062978, &qword_1000482D0);
      (v97[1])(v33, v1);
      v46 = v95;
      goto LABEL_14;
    }

    v47 = v97;
    v48 = v88;
    (v97[4])(v88, &v12[v43], v1);
    sub_100016110(&qword_1000629B0, &type metadata accessor for UserInterfaceSizeClass, &protocol conformance descriptor for UserInterfaceSizeClass);
    LODWORD(v80) = dispatch thunk of static Equatable.== infix(_:_:)();
    v49 = v47[1];
    v49(v48, v1);
    sub_100003CE8(v36, &qword_100062978, &qword_1000482D0);
    sub_100003CE8(v39, &qword_100062978, &qword_1000482D0);
    v49(v33, v1);
    sub_100003CE8(v12, &qword_100062978, &qword_1000482D0);
    v46 = v95;
    v50 = v96;
    v44 = v93;
    v45 = v94;
    v51 = v91;
    if ((v80 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  v52 = v86;
  sub_10000AEEC(v86);
  v53 = v85;
  v100(v85, enum case for UserInterfaceSizeClass.compact(_:), v1);
  v98(v53, 0, 1, v1);
  v54 = *(v102 + 48);
  v55 = v87;
  sub_100006098(v52, v87, &qword_100062978, &qword_1000482D0);
  v80 = v54;
  sub_100006098(v53, v55 + v54, &qword_100062978, &qword_1000482D0);
  if (v104(v55, 1, v1) != 1)
  {
    v56 = v82;
    sub_100006098(v55, v82, &qword_100062978, &qword_1000482D0);
    v57 = v80;
    if (v104((v55 + v80), 1, v1) != 1)
    {
      v71 = v97;
      v72 = v55 + v57;
      v73 = v88;
      (v97[4])(v88, v72, v1);
      sub_100016110(&qword_1000629B0, &type metadata accessor for UserInterfaceSizeClass, &protocol conformance descriptor for UserInterfaceSizeClass);
      v74 = v55;
      LODWORD(v80) = dispatch thunk of static Equatable.== infix(_:_:)();
      v75 = v56;
      v76 = v71[1];
      v76(v73, v1);
      sub_100003CE8(v85, &qword_100062978, &qword_1000482D0);
      sub_100003CE8(v86, &qword_100062978, &qword_1000482D0);
      v76(v75, v1);
      sub_100003CE8(v74, &qword_100062978, &qword_1000482D0);
      v46 = v95;
      v50 = v96;
      v44 = v93;
      v51 = v91;
      if (v80)
      {
        v68 = 1;
        return v68 & 1;
      }

LABEL_16:
      sub_10000AEEC(v51);
      v100(v45, v92, v1);
      v98(v45, 0, 1, v1);
      v58 = *(v102 + 48);
      sub_100006098(v51, v44, &qword_100062978, &qword_1000482D0);
      sub_100006098(v45, v44 + v58, &qword_100062978, &qword_1000482D0);
      if (v104(v44, 1, v1) == 1)
      {
        sub_100003CE8(v45, &qword_100062978, &qword_1000482D0);
        sub_100003CE8(v51, &qword_100062978, &qword_1000482D0);
        if (v104((v44 + v58), 1, v1) == 1)
        {
          sub_100003CE8(v44, &qword_100062978, &qword_1000482D0);
LABEL_23:
          sub_10000AEEC(v50);
          v100(v46, v92, v1);
          v98(v46, 0, 1, v1);
          v67 = *(v102 + 48);
          v12 = v83;
          sub_100006098(v50, v83, &qword_100062978, &qword_1000482D0);
          sub_100006098(v46, &v12[v67], &qword_100062978, &qword_1000482D0);
          if (v104(v12, 1, v1) == 1)
          {
            sub_100003CE8(v46, &qword_100062978, &qword_1000482D0);
            sub_100003CE8(v50, &qword_100062978, &qword_1000482D0);
            if (v104(&v12[v67], 1, v1) == 1)
            {
              goto LABEL_25;
            }
          }

          else
          {
            v69 = v81;
            sub_100006098(v12, v81, &qword_100062978, &qword_1000482D0);
            if (v104(&v12[v67], 1, v1) != 1)
            {
              v77 = v97;
              v78 = v88;
              (v97[4])(v88, &v12[v67], v1);
              sub_100016110(&qword_1000629B0, &type metadata accessor for UserInterfaceSizeClass, &protocol conformance descriptor for UserInterfaceSizeClass);
              v68 = dispatch thunk of static Equatable.== infix(_:_:)();
              v79 = v77[1];
              v79(v78, v1);
              sub_100003CE8(v46, &qword_100062978, &qword_1000482D0);
              sub_100003CE8(v50, &qword_100062978, &qword_1000482D0);
              v79(v69, v1);
              sub_100003CE8(v12, &qword_100062978, &qword_1000482D0);
              return v68 & 1;
            }

            sub_100003CE8(v46, &qword_100062978, &qword_1000482D0);
            sub_100003CE8(v50, &qword_100062978, &qword_1000482D0);
            (v97[1])(v69, v1);
          }

          v60 = v12;
          goto LABEL_29;
        }
      }

      else
      {
        v59 = v84;
        sub_100006098(v44, v84, &qword_100062978, &qword_1000482D0);
        if (v104((v44 + v58), 1, v1) != 1)
        {
          v61 = v97;
          v62 = v88;
          (v97[4])(v88, v44 + v58, v1);
          sub_100016110(&qword_1000629B0, &type metadata accessor for UserInterfaceSizeClass, &protocol conformance descriptor for UserInterfaceSizeClass);
          v63 = dispatch thunk of static Equatable.== infix(_:_:)();
          v64 = v61;
          v65 = v44;
          v66 = v64[1];
          v66(v62, v1);
          sub_100003CE8(v94, &qword_100062978, &qword_1000482D0);
          sub_100003CE8(v51, &qword_100062978, &qword_1000482D0);
          v66(v59, v1);
          v46 = v95;
          sub_100003CE8(v65, &qword_100062978, &qword_1000482D0);
          v50 = v96;
          if ((v63 & 1) == 0)
          {
LABEL_30:
            v68 = 0;
            return v68 & 1;
          }

          goto LABEL_23;
        }

        sub_100003CE8(v45, &qword_100062978, &qword_1000482D0);
        sub_100003CE8(v51, &qword_100062978, &qword_1000482D0);
        (v97[1])(v59, v1);
      }

      v60 = v44;
LABEL_29:
      sub_100003CE8(v60, &qword_1000629A0, &unk_100048680);
      goto LABEL_30;
    }

    v36 = v85;
    v39 = v86;
    v33 = v56;
    v12 = v55;
    goto LABEL_13;
  }

  sub_100003CE8(v53, &qword_100062978, &qword_1000482D0);
  v12 = v87;
  sub_100003CE8(v52, &qword_100062978, &qword_1000482D0);
  if (v104(&v12[v80], 1, v1) != 1)
  {
    v46 = v95;
LABEL_15:
    sub_100003CE8(v12, &qword_1000629A0, &unk_100048680);
    v50 = v96;
    v51 = v91;
    goto LABEL_16;
  }

LABEL_25:
  sub_100003CE8(v12, &qword_100062978, &qword_1000482D0);
  v68 = 1;
  return v68 & 1;
}

uint64_t sub_10000CD14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v116 = a2;
  v166 = a1;
  v151 = a3;
  v144 = type metadata accessor for Color.RGBColorSpace();
  v143 = *(v144 - 1);
  __chkstk_darwin(v144);
  v142 = &v114 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = type metadata accessor for RoundedRectangle();
  __chkstk_darwin(v124);
  v125 = (&v114 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v120 = sub_100003968(&qword_100062EF8, &qword_100048548) - 8;
  __chkstk_darwin(v120);
  v119 = (&v114 - v6);
  v123 = sub_100003968(&qword_100062F00, &qword_100048550);
  __chkstk_darwin(v123);
  v129 = &v114 - v7;
  v128 = sub_100003968(&qword_100062F08, &qword_100048558);
  __chkstk_darwin(v128);
  v127 = &v114 - v8;
  v126 = sub_100003968(&qword_100062F10, &qword_100048560);
  __chkstk_darwin(v126);
  v131 = &v114 - v9;
  v130 = sub_100003968(&qword_100062F18, &qword_100048568);
  __chkstk_darwin(v130);
  v133 = &v114 - v10;
  v132 = sub_100003968(&qword_100062F20, &qword_100048570);
  __chkstk_darwin(v132);
  v135 = &v114 - v11;
  v134 = sub_100003968(&qword_100062F28, &qword_100048578);
  __chkstk_darwin(v134);
  v137 = &v114 - v12;
  v136 = sub_100003968(&qword_100062F30, &qword_100048580);
  __chkstk_darwin(v136);
  v138 = &v114 - v13;
  v155 = sub_100003968(&qword_100062F38, &qword_100048588);
  __chkstk_darwin(v155);
  v145 = &v114 - v14;
  v150 = sub_100003968(&qword_100062F40, &qword_100048590);
  v149 = *(v150 - 8);
  __chkstk_darwin(v150);
  v148 = &v114 - v15;
  v147 = sub_100003968(&qword_100062F48, &qword_100048598);
  __chkstk_darwin(v147);
  v146 = &v114 - v16;
  v17 = type metadata accessor for GeometryProxy();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v156 = type metadata accessor for RootView(0);
  v165 = *(v156 - 8);
  v20 = *(v165 + 64);
  __chkstk_darwin(v156);
  v21 = (&v114 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = type metadata accessor for GlobalCoordinateSpace();
  __chkstk_darwin(v22);
  v23 = type metadata accessor for DragGesture();
  v24 = *(v23 - 8);
  v158 = v23;
  v159 = v24;
  __chkstk_darwin(v23);
  v26 = &v114 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = sub_100003968(&qword_1000627F0, &qword_100047CD0);
  v118 = *(v117 - 8);
  __chkstk_darwin(v117);
  v152 = (&v114 - v27);
  v140 = sub_100003968(&qword_1000627F8, &qword_100047CD8);
  v139 = *(v140 - 8);
  __chkstk_darwin(v140);
  v154 = &v114 - v28;
  static CoordinateSpaceProtocol<>.global.getter();
  DragGesture.init<A>(minimumDistance:coordinateSpace:)();
  v141 = type metadata accessor for RootView;
  sub_100017ED0(a2, v21, type metadata accessor for RootView);
  v164 = *(v18 + 16);
  v160 = &v114 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v161 = v17;
  v164(v160, v166, v17);
  v29 = *(v165 + 80);
  v30 = (v29 + 16) & ~v29;
  v31 = v29 | 7;
  v32 = *(v18 + 80);
  v122 = v30 + v20;
  v33 = (v30 + v20 + v32) & ~v32;
  v163 = v33 + v19;
  v121 = v31;
  v162 = v31 | v32;
  v34 = swift_allocObject();
  v115 = type metadata accessor for RootView;
  sub_1000180B8(v21, v34 + v30, type metadata accessor for RootView);
  v35 = *(v18 + 32);
  v165 = v18 + 32;
  v157 = v35;
  v35(v34 + v33, &v114 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), v17);
  sub_100016110(&qword_100062830, &type metadata accessor for DragGesture, &protocol conformance descriptor for DragGesture);
  sub_100016110(&qword_100062838, &type metadata accessor for DragGesture.Value, &protocol conformance descriptor for DragGesture.Value);
  v36 = v158;
  v37 = v119;
  Gesture<>.onChanged(_:)();

  (*(v159 + 8))(v26, v36);
  v38 = v116;
  v39 = v21;
  sub_100017ED0(v116, v21, v141);
  v41 = v160;
  v40 = v161;
  v42 = v166;
  v158 = v18 + 16;
  v164(v160, v166, v161);
  v43 = swift_allocObject();
  v153 = v30;
  v141 = v39;
  sub_1000180B8(v39, v43 + v30, v115);
  v159 = v33;
  v157(v43 + v33, v41, v40);
  sub_100003E3C(&qword_100062840, &qword_1000627F0, &qword_100047CD0, &protocol conformance descriptor for _ChangedGesture<A>);
  v44 = v154;
  v45 = v117;
  v46 = v152;
  Gesture.onEnded(_:)();

  (*(v118 + 8))(v46, v45);
  *v37 = static Alignment.center.getter();
  v37[1] = v47;
  v48 = sub_100003968(&qword_100062F50, &qword_1000485A0);
  sub_10000F340(v38, v42, v44, v37 + *(v48 + 44));
  v49 = v37 + *(sub_100003968(&qword_100062F58, &qword_1000485A8) + 36);
  static Material.regular.getter();
  LOBYTE(v46) = static Edge.Set.all.getter();
  v49[*(sub_100003968(&qword_100062F60, &qword_1000485B0) + 36)] = v46;
  *(v37 + *(v120 + 44)) = sub_100012BC0();
  v50 = v38;
  v51 = v38 + *(v156 + 32);
  v52 = *v51;
  v53 = *(v51 + 8);
  LOBYTE(v170) = *v51;
  *(&v170 + 1) = v53;
  sub_100003968(&qword_100062F68, &qword_1000485B8);
  State.wrappedValue.getter();
  if (v167 == 4)
  {
    if (AXDeviceIsPad())
    {
      v54 = 34.0;
    }

    else
    {
      v54 = 27.0;
    }
  }

  else
  {
    LOBYTE(v170) = v52;
    *(&v170 + 1) = v53;
    State.wrappedValue.getter();
    v54 = 18.0;
  }

  v55 = *(v124 + 20);
  v56 = enum case for RoundedCornerStyle.continuous(_:);
  v57 = type metadata accessor for RoundedCornerStyle();
  v58 = v125;
  (*(*(v57 - 8) + 104))(v125 + v55, v56, v57);
  *v58 = v54;
  v58[1] = v54;
  v59 = v129;
  v60 = &v129[*(v123 + 36)];
  sub_1000180B8(v58, v60, &type metadata accessor for RoundedRectangle);
  *(v60 + *(sub_100003968(&qword_100062818, &qword_1000485C0) + 36)) = 256;
  sub_10000BB84(v37, v59, &qword_100062EF8, &qword_100048548);
  LOBYTE(v170) = v52;
  *(&v170 + 1) = v53;
  State.wrappedValue.getter();
  v61 = 0;
  if (v167 == 3)
  {
    v61 = static SafeAreaRegions.all.getter();
  }

  v62 = static Edge.Set.all.getter();
  v63 = v59;
  v64 = v127;
  sub_10000BB84(v63, v127, &qword_100062F00, &qword_100048550);
  v65 = v64 + *(v128 + 36);
  *v65 = v61;
  *(v65 + 8) = v62;
  v66 = static Edge.Set.all.getter();
  v67 = v131;
  sub_10000BB84(v64, v131, &qword_100062F08, &qword_100048558);
  v68 = v67 + *(v126 + 36);
  *v68 = v66;
  *(v68 + 8) = 0u;
  *(v68 + 24) = 0u;
  *(v68 + 40) = 0;
  GeometryProxy.size.getter();
  v70 = v69;
  v72 = v71;
  LOBYTE(v170) = v52;
  *(&v170 + 1) = v53;
  State.wrappedValue.getter();
  sub_1000143D4(v167, v70, v72);
  GeometryProxy.size.getter();
  v74 = v73;
  v76 = v75;
  LOBYTE(v170) = v52;
  *(&v170 + 1) = v53;
  State.wrappedValue.getter();
  sub_1000143D4(v167, v74, v76);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v77 = v133;
  sub_10000BB84(v67, v133, &qword_100062F10, &qword_100048560);
  v78 = (v77 + *(v130 + 36));
  v79 = v171;
  *v78 = v170;
  v78[1] = v79;
  v78[2] = v172;
  GeometryProxy.size.getter();
  sub_100012C80(v80, v81);
  v83 = v82;
  v85 = v84;
  v86 = v135;
  sub_10000BB84(v77, v135, &qword_100062F18, &qword_100048568);
  v87 = (v86 + *(v132 + 36));
  *v87 = v83;
  v87[1] = v85;
  LOBYTE(v167) = v52;
  v168 = v53;
  State.wrappedValue.getter();
  if (v169)
  {
    LOBYTE(v167) = v52;
    v168 = v53;
    State.wrappedValue.getter();
    if (v169 == 1)
    {
      v88 = 5.0;
    }

    else
    {
      v88 = 0.0;
    }
  }

  else
  {
    v88 = 5.0;
  }

  (*(v143 + 104))(v142, enum case for Color.RGBColorSpace.sRGBLinear(_:), v144);
  v89 = Color.init(_:white:opacity:)();
  v90 = v137;
  sub_10000BB84(v86, v137, &qword_100062F20, &qword_100048570);
  v91 = v90 + *(v134 + 36);
  *v91 = v89;
  *(v91 + 8) = v88;
  *(v91 + 16) = 0;
  *(v91 + 24) = 0;
  v92 = v50;
  v93 = v141;
  sub_100017ED0(v50, v141, type metadata accessor for RootView);
  v95 = v160;
  v94 = v161;
  v164(v160, v166, v161);
  v96 = swift_allocObject();
  v97 = v153;
  sub_1000180B8(v93, v96 + v153, type metadata accessor for RootView);
  v98 = v157;
  v157(v96 + v159, v95, v94);
  v99 = v90;
  v100 = v138;
  sub_10000BB84(v99, v138, &qword_100062F28, &qword_100048578);
  v101 = (v100 + *(v136 + 36));
  *v101 = sub_100016B58;
  v101[1] = v96;
  v101[2] = 0;
  v101[3] = 0;
  v144 = type metadata accessor for RootView;
  sub_100017ED0(v50, v93, type metadata accessor for RootView);
  v102 = swift_allocObject();
  v152 = type metadata accessor for RootView;
  sub_1000180B8(v93, v102 + v97, type metadata accessor for RootView);
  v103 = v145;
  sub_10000BB84(v100, v145, &qword_100062F30, &qword_100048580);
  v104 = (v103 + *(v155 + 36));
  *v104 = 0;
  v104[1] = 0;
  v104[2] = sub_100016C20;
  v104[3] = v102;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  sub_100017ED0(v92, v93, type metadata accessor for RootView);
  v106 = v160;
  v105 = v161;
  v164(v160, v166, v161);
  v107 = swift_allocObject();
  sub_1000180B8(v93, v107 + v97, type metadata accessor for RootView);
  v98(v107 + v159, v106, v105);
  sub_100003968(&qword_1000638B0, &qword_100048610);
  sub_100016CB4();
  sub_1000172B0();
  v108 = v148;
  View.onChange<A>(of:initial:_:)();

  sub_100003CE8(v103, &qword_100062F38, &qword_100048588);
  swift_beginAccess();
  v109 = v147;
  sub_100003968(&qword_1000629C8, &qword_100047E50);
  v110 = v146;
  Published.projectedValue.getter();
  swift_endAccess();
  sub_100017ED0(v92, v93, v144);
  v164(v106, v166, v105);
  v111 = swift_allocObject();
  sub_1000180B8(v93, v111 + v153, v152);
  v157(v111 + v159, v106, v105);
  (*(v149 + 32))(v110, v108, v150);
  v112 = (v110 + *(v109 + 56));
  *v112 = sub_100017364;
  v112[1] = v111;
  sub_10000BB84(v110, v151, &qword_100062F48, &qword_100048598);
  return (*(v139 + 8))(v154, v140);
}

void sub_10000E21C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v72 = a3;
  v5 = type metadata accessor for DragGesture.Value();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v68[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for RootView(0);
  v10 = v9[18];
  v73 = a2;
  v11 = (a2 + v10);
  v12 = *v11;
  v13 = v11[1];
  v14 = v11[2];
  v75 = *v11;
  v76 = v13;
  v77 = v14;
  sub_100003968(&qword_100062880, &unk_100047D20);
  State.wrappedValue.getter();
  v78.width = 0.0;
  v78.height = 0.0;
  if (CGSizeEqualToSize(v74, v78) || (v75 = v12, v76 = v13, v77 = v14, State.wrappedValue.getter(), width = v74.width, DragGesture.Value.translation.getter(), vabdd_f64(width, v16) >= 2.0) || (v75 = v12, v76 = v13, v77 = v14, State.wrappedValue.getter(), height = v74.height, DragGesture.Value.translation.getter(), vabdd_f64(height, v18) >= 2.0))
  {
    v19 = static os_log_type_t.debug.getter();
    if (qword_1000626F0 != -1)
    {
      swift_once();
    }

    v20 = qword_1000654E8;
    (*(v6 + 16))(v8, a1, v5);
    v71 = v20;
    if (os_log_type_enabled(v20, v19))
    {
      v21 = swift_slowAlloc();
      v70 = v14;
      v22 = v21;
      v23 = swift_slowAlloc();
      *&v74.width = v23;
      *v22 = 136315138;
      v69 = v19;
      DragGesture.Value.translation.getter();
      v75 = v24;
      v76 = v25;
      type metadata accessor for CGSize(0);
      v26 = String.init<A>(describing:)();
      v28 = v27;
      (*(v6 + 8))(v8, v5);
      v29 = sub_100031EB4(v26, v28, &v74);

      *(v22 + 4) = v29;
      _os_log_impl(&_mh_execute_header, v71, v69, "drag translation: %s", v22, 0xCu);
      sub_100018190(v23);

      v14 = v70;
    }

    else
    {
      (*(v6 + 8))(v8, v5);
    }

    DragGesture.Value.translation.getter();
    v75 = v12;
    v76 = v13;
    v77 = v14;
    v74.width = v30;
    v74.height = v31;
    State.wrappedValue.setter();
    DragGesture.Value.predictedEndTranslation.getter();
    v33 = v32;
    DragGesture.Value.translation.getter();
    v35 = v34;
    DragGesture.Value.predictedEndTranslation.getter();
    v37 = v36;
    DragGesture.Value.translation.getter();
    v39 = vabdd_f64(v33, v35);
    if (qword_100062708 != -1)
    {
      v67 = v38;
      swift_once();
      v38 = v67;
    }

    if (v39 <= *&qword_100065510 && fabs(v37 - v38) <= *&qword_100065510)
    {
      v40 = (v73 + v9[14]);
      v41 = *v40;
      v42 = v40[1];
      v43 = v40[2];
      v75 = *v40;
      v76 = v42;
      v77 = v43;
      State.wrappedValue.getter();
      v79.width = 0.0;
      v79.height = 0.0;
      if (CGSizeEqualToSize(v74, v79))
      {
        v44 = v73;
        v45 = (v73 + v9[12]);
        v47 = v45[1];
        v48 = v45[2];
        v75 = *v45;
        v46 = v75;
        v76 = v47;
        v77 = v48;
        State.wrappedValue.getter();
        v49 = v74;
        GeometryProxy.size.getter();
        v51 = v50;
        v53 = v52;
        v54 = v44 + v9[8];
        v55 = *v54;
        v56 = *(v54 + 8);
        LOBYTE(v75) = v55;
        v76 = v56;
        sub_100003968(&qword_100062F68, &qword_1000485B8);
        State.wrappedValue.getter();
        sub_1000143D4(LOBYTE(v74.width), v51, v53);
        v58 = v57;
        v60 = v59;
        GeometryProxy.size.getter();
        safeOffset(offset:size:containerSize:foreheadWindowRect:)(v49.width, v49.height, v58, v60, v61, v62, CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height);
        v75 = v46;
        v76 = v47;
        v77 = v48;
        v74.width = v63;
        v74.height = v64;
        State.wrappedValue.setter();
        v75 = v46;
        v76 = v47;
        v77 = v48;
        State.wrappedValue.getter();
        v75 = v41;
        v76 = v42;
        v77 = v43;
        State.wrappedValue.setter();
      }

      static Animation.linear(duration:)();
      Animation.delay(_:)();

      Animation.repeatCount(_:autoreverses:)();

      __chkstk_darwin(v65);
      v66 = v73;
      *&v68[-32] = a1;
      *&v68[-24] = v66;
      withAnimation<A>(_:_:)();
    }
  }
}

void sub_10000E7E4()
{
  v0 = type metadata accessor for LayoutDirection();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v15 - v5;
  DragGesture.Value.translation.getter();
  v8 = v7;
  v10 = v9;
  type metadata accessor for RootView(0);
  sub_10000B0F4(v6);
  (*(v1 + 104))(v3, enum case for LayoutDirection.rightToLeft(_:), v0);
  v11 = static LayoutDirection.== infix(_:_:)();
  v12 = *(v1 + 8);
  v12(v3, v0);
  v12(v6, v0);
  if (v11)
  {
    v8 = -v8;
  }

  GeometryProxy.size.getter();
  sub_10000E98C(v8, v10, v13, v14);
}

void sub_10000E98C(double a1, double a2, double a3, double a4)
{
  v7 = type metadata accessor for RootView(0);
  sub_100003968(&qword_100062880, &unk_100047D20);
  State.wrappedValue.getter();
  v8 = (v4 + *(v7 + 48));
  v9 = *v8;
  v10 = v8[1];
  v11 = v8[2];

  State.wrappedValue.getter();
  State.wrappedValue.setter();
  State.wrappedValue.getter();
  State.wrappedValue.getter();
  State.wrappedValue.setter();
  v17 = v9;
  State.wrappedValue.getter();
  v12 = v4 + *(v7 + 32);
  LOBYTE(v17) = *v12;
  v18 = *(v12 + 8);
  sub_100003968(&qword_100062F68, &qword_1000485B8);
  State.wrappedValue.getter();
  sub_1000143D4(LOBYTE(v9), a3, a4);
  v14 = v13;
  v16 = v15;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  safeOffset(offset:size:containerSize:foreheadWindowRect:)(v9, v10, v14, v16, a3, a4, v17, v18, v11, v19);
  State.wrappedValue.setter();

  State.wrappedValue.getter();

  State.wrappedValue.getter();
  State.wrappedValue.setter();
}

void sub_10000EC74(uint64_t a1, uint64_t a2)
{
  type metadata accessor for RootView(0);
  sub_100003968(&qword_100062880, &unk_100047D20);
  State.wrappedValue.setter();
  GeometryProxy.size.getter();
  sub_10000ED0C(v2, v3);
  sub_10000F0FC();
}

void sub_10000ED0C(double a1, double a2)
{
  v5 = type metadata accessor for LayoutDirection();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v33[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v11 = &v33[-v10];
  DragGesture.Value.predictedEndTranslation.getter();
  v13 = v12;
  DragGesture.Value.translation.getter();
  v15 = v14;
  DragGesture.Value.predictedEndTranslation.getter();
  v17 = v16;
  DragGesture.Value.translation.getter();
  v19 = v18;
  v20 = vabdd_f64(v13, v15);
  if (qword_100062708 != -1)
  {
    swift_once();
  }

  v21 = *&qword_100065510;
  v22 = type metadata accessor for RootView(0);
  v23 = v22;
  if (v21 >= v20)
  {
    v27 = (v2 + *(v22 + 32));
    v28 = *v27;
    v29 = *(v27 + 1);
    v35 = *v27;
    v36 = v29;
    sub_100003968(&qword_100062F68, &qword_1000485B8);
    State.wrappedValue.getter();
    if (v34 != 3)
    {
      v35 = v28;
      v36 = v29;
      State.wrappedValue.getter();
      if (v34 != 2 && v21 < fabs(v17 - v19))
      {
        v35 = v28;
        v36 = v29;
        State.wrappedValue.getter();
        sub_1000143D4(v34, a1, a2);
        v31 = __chkstk_darwin(v30);
        *&v33[-48] = v2;
        v33[-40] = v17 - v19 < 0.0;
        *&v33[-32] = a1;
        *&v33[-24] = a2;
        *&v33[-16] = v31;
        *&v33[-8] = v32;
        static Animation.default.getter();
        withAnimation<A>(_:_:)();
      }
    }
  }

  else
  {
    sub_10000B0F4(v11);
    (*(v6 + 104))(v8, enum case for LayoutDirection.rightToLeft(_:), v5);
    static LayoutDirection.== infix(_:_:)();
    v24 = *(v6 + 8);
    v24(v8, v5);
    v25 = (v24)(v11, v5);
    v26 = __chkstk_darwin(v25);
    *&v33[-32] = v2;
    if (v26 <= 0.0)
    {
      v33[-24] = 1;
    }

    else
    {
      v33[-24] = 2;
    }

    *&v33[-16] = a1;
    *&v33[-8] = a2;
    static Animation.default.getter();
    withAnimation<A>(_:_:)();

    sub_10000F0FC();
    [*(v2 + *(v23 + 92)) idleSleepTimerDisabled:{0, sub_100014820()}];
  }

  sub_10000F0FC();
}

void sub_10000F0FC()
{
  v0 = [objc_opt_self() standardUserDefaults];
  type metadata accessor for RootView(0);
  sub_100003968(&qword_100062F68, &qword_1000485B8);
  State.wrappedValue.getter();
  v1 = String._bridgeToObjectiveC()();
  [v0 setInteger:LOBYTE(v6.width) forKey:v1];

  sub_100003968(&qword_100062880, &unk_100047D20);
  State.wrappedValue.getter();
  v2 = NSStringFromCGSize(v6);
  if (!v2)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v2 = String._bridgeToObjectiveC()();
  }

  v3 = String._bridgeToObjectiveC()();
  [v0 setObject:v2 forKey:v3];

  State.wrappedValue.getter();
  v4 = NSStringFromCGSize(v6);
  if (!v4)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v4 = String._bridgeToObjectiveC()();
  }

  v5 = String._bridgeToObjectiveC()();
  [v0 setObject:v4 forKey:v5];
}

uint64_t sub_10000F340@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v107 = a3;
  v123 = a2;
  v128 = a4;
  v127 = sub_100003968(&qword_100062FF8, &qword_100048690);
  __chkstk_darwin(v127);
  v112 = &v102 - v5;
  v6 = sub_100003968(&qword_100063000, &qword_100048698);
  __chkstk_darwin(v6 - 8);
  v124 = (&v102 - v7);
  v109 = sub_100003968(&qword_100063008, &qword_1000486A0);
  __chkstk_darwin(v109);
  v110 = &v102 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v108 = &v102 - v10;
  __chkstk_darwin(v11);
  v111 = &v102 - v12;
  v125 = sub_100003968(&qword_100063010, &qword_1000486A8);
  __chkstk_darwin(v125);
  v126 = &v102 - v13;
  v14 = sub_100003968(&qword_100063018, &qword_1000486B0);
  __chkstk_darwin(v14 - 8);
  v118 = &v102 - v15;
  v119 = sub_100003968(&qword_100063020, &qword_1000486B8);
  v117 = *(v119 - 8);
  __chkstk_darwin(v119);
  v116 = &v102 - v16;
  v122 = sub_100003968(&qword_100063028, &qword_1000486C0);
  v121 = *(v122 - 8);
  __chkstk_darwin(v122);
  v120 = &v102 - v17;
  v106 = type metadata accessor for GeometryProxy();
  v105 = *(v106 - 8);
  v18 = *(v105 + 64);
  __chkstk_darwin(v106);
  v104 = &v102 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for RootView(0);
  v103 = *(v19 - 1);
  v20 = *(v103 + 64);
  __chkstk_darwin(v19);
  v129 = type metadata accessor for IconView(0);
  v113 = *(v129 - 8);
  __chkstk_darwin(v129);
  v115 = &v102 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = v21;
  __chkstk_darwin(v22);
  v24 = &v102 - v23;
  v25 = a1;
  v26 = (a1 + v19[8]);
  v27 = *v26;
  v28 = *(v26 + 1);
  LOBYTE(v130) = *v26;
  *(&v130 + 1) = v28;
  sub_100003968(&qword_100062F68, &qword_1000485B8);
  State.wrappedValue.getter();
  if (v133 == 4)
  {
    v29 = (a1 + v19[17]);
    v30 = *v29;
    v31 = v29[1];
    *&v133 = v30;
    *(&v133 + 1) = v31;
    sub_100003968(&qword_100062B18, &unk_100049360);
    State.projectedValue.getter();
    v112 = *(&v130 + 1);
    v124 = v130;
    v32 = v131;
    v33 = (a1 + v19[13]);
    v34 = *(v33 + 2);
    v133 = *v33;
    v134 = v34;
    sub_100003968(&qword_100062880, &unk_100047D20);
    State.projectedValue.getter();
    v110 = *(&v130 + 1);
    v111 = v130;
    v35 = v131;
    v36 = v132;
    v37 = v123;
    GeometryProxy.size.getter();
    v39 = v38;
    v41 = v40;
    sub_100017ED0(v25, &v102 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for RootView);
    v42 = v105;
    v43 = v104;
    v44 = v106;
    (*(v105 + 16))(v104, v37, v106);
    v45 = (*(v103 + 80) + 16) & ~*(v103 + 80);
    v46 = (v20 + *(v42 + 80) + v45) & ~*(v42 + 80);
    v47 = swift_allocObject();
    sub_1000180B8(&v102 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0), v47 + v45, type metadata accessor for RootView);
    (*(v42 + 32))(v47 + v46, v43, v44);
    type metadata accessor for CGSize(0);
    v133 = 0uLL;
    State.init(wrappedValue:)();
    v48 = v131;
    *(v24 + 56) = v130;
    *(v24 + 9) = v48;
    if (qword_100062790 != -1)
    {
      swift_once();
    }

    v49 = static AXLTCaptionsProvider.shared;
    v50 = OBJC_IVAR___AXLTCaptionsProvider_isTranscribing;
    swift_beginAccess();
    LOBYTE(v135) = *(v49 + v50);
    State.init(wrappedValue:)();
    v51 = *(&v133 + 1);
    v24[80] = v133;
    *(v24 + 11) = v51;
    *(v24 + 16) = 0x4024000000000000;
    v135 = 0;
    sub_100003968(&qword_100062D88, &qword_100048850);
    State.init(wrappedValue:)();
    *(v24 + 136) = v133;
    v52 = v129;
    v53 = *(v129 + 48);
    *&v24[v53] = swift_getKeyPath();
    sub_100003968(&qword_100062D78, &unk_1000484B0);
    swift_storeEnumTagMultiPayload();
    v54 = *(v52 + 52);
    v55 = [objc_allocWithZone(type metadata accessor for ForeheadWindow(0)) init];
    *&v24[v54] = v55;
    v56 = *(v52 + 56);
    *&v24[v56] = 0;
    *(v24 + 12) = v39;
    *(v24 + 13) = v41;
    v57 = v55;
    v58 = static os_log_type_t.debug.getter();
    if (qword_1000626F0 != -1)
    {
      swift_once();
    }

    v59 = qword_1000654E8;
    if (os_log_type_enabled(qword_1000654E8, v58))
    {
      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v135 = v61;
      *v60 = 136315138;
      *&v133 = v39;
      *(&v133 + 1) = v41;
      v62 = String.init<A>(describing:)();
      v64 = sub_100031EB4(v62, v63, &v135);

      *(v60 + 4) = v64;
      _os_log_impl(&_mh_execute_header, v59, v58, "init containerSize: %s", v60, 0xCu);
      sub_100018190(v61);
    }

    *(v24 + 14) = sub_100017E08;
    *(v24 + 15) = v47;
    v65 = v112;
    *v24 = v124;
    *(v24 + 1) = v65;
    *(v24 + 2) = v32;
    v66 = v110;
    *(v24 + 3) = v111;
    *(v24 + 4) = v66;
    *(v24 + 5) = v35;
    *(v24 + 6) = v36;
    swift_beginAccess();

    sub_100003968(&qword_1000629C8, &qword_100047E50);
    v67 = v116;
    Published.projectedValue.getter();
    swift_endAccess();

    v68 = [objc_opt_self() mainRunLoop];
    *&v133 = v68;
    v69 = type metadata accessor for NSRunLoop.SchedulerOptions();
    v70 = v118;
    (*(*(v69 - 8) + 56))(v118, 1, 1, v69);
    sub_100017E20(0, &qword_100063050, NSRunLoop_ptr);
    sub_100003E3C(&qword_100063058, &qword_100063020, &qword_1000486B8, &protocol conformance descriptor for Published<A>.Publisher);
    sub_100017E68();
    v71 = v120;
    v72 = v119;
    Publisher.receive<A>(on:options:)();
    sub_100003CE8(v70, &qword_100063018, &qword_1000486B0);

    (*(v117 + 8))(v67, v72);
    v73 = v115;
    sub_100017ED0(v24, v115, type metadata accessor for IconView);
    v74 = (*(v113 + 80) + 16) & ~*(v113 + 80);
    v75 = swift_allocObject();
    sub_1000180B8(v73, v75 + v74, type metadata accessor for IconView);
    sub_100003E3C(&qword_100063068, &qword_100063028, &qword_1000486C0, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
    v76 = v122;
    v77 = Publisher<>.sink(receiveValue:)();

    (*(v121 + 8))(v71, v76);
    *&v24[v56] = v77;
    sub_100017ED0(v24, v126, type metadata accessor for IconView);
    swift_storeEnumTagMultiPayload();
    sub_100016110(&qword_100063040, type metadata accessor for IconView, &unk_100048AD8);
    sub_100003E3C(&qword_100063048, &qword_100062FF8, &qword_100048690, &protocol conformance descriptor for TupleView<A>);
    _ConditionalContent<>.init(storage:)();
    return sub_100018200(v24, type metadata accessor for IconView);
  }

  else
  {
    v79 = v123;
    LOBYTE(v130) = v27;
    *(&v130 + 1) = v28;
    State.wrappedValue.getter();
    v80 = v133;
    if (qword_100062788 != -1)
    {
      swift_once();
    }

    v81 = static AXLTSettingsManager.shared;
    v82 = OBJC_IVAR___AXLTSettingsManager_backgroundColor;
    swift_beginAccess();
    v135 = *(v81 + v82);

    State.init(wrappedValue:)();
    v83 = v133;
    v84 = static HorizontalAlignment.center.getter();
    v85 = v124;
    *v124 = v84;
    v85[1] = 0;
    *(v85 + 16) = 0;
    v86 = sub_100003968(&qword_100063030, &qword_1000486C8);
    sub_1000106D8(v25, v79, v107, v85 + *(v86 + 44));
    v87 = static Edge.Set.top.getter();
    LOBYTE(v133) = v27;
    *(&v133 + 1) = v28;
    State.wrappedValue.getter();
    if (v135 == 3 && qword_100062710 != -1)
    {
      swift_once();
    }

    EdgeInsets.init(_all:)();
    v89 = v88;
    v91 = v90;
    v93 = v92;
    v95 = v94;
    v96 = v108;
    sub_10000BB84(v124, v108, &qword_100063000, &qword_100048698);
    v97 = v96 + *(v109 + 36);
    *v97 = v87;
    *(v97 + 8) = v89;
    *(v97 + 16) = v91;
    *(v97 + 24) = v93;
    *(v97 + 32) = v95;
    *(v97 + 40) = 0;
    v98 = v111;
    sub_10000BB84(v96, v111, &qword_100063008, &qword_1000486A0);
    v99 = v110;
    sub_100006098(v98, v110, &qword_100063008, &qword_1000486A0);
    v100 = v112;
    *v112 = v80;
    *(v100 + 8) = v83;
    v101 = sub_100003968(&qword_100063038, &qword_1000486D0);
    sub_100006098(v99, v100 + *(v101 + 48), &qword_100063008, &qword_1000486A0);
    swift_retain_n();
    swift_retain_n();
    sub_100003CE8(v99, &qword_100063008, &qword_1000486A0);

    sub_100006098(v100, v126, &qword_100062FF8, &qword_100048690);
    swift_storeEnumTagMultiPayload();
    sub_100016110(&qword_100063040, type metadata accessor for IconView, &unk_100048AD8);
    sub_100003E3C(&qword_100063048, &qword_100062FF8, &qword_100048690, &protocol conformance descriptor for TupleView<A>);
    _ConditionalContent<>.init(storage:)();

    sub_100003CE8(v100, &qword_100062FF8, &qword_100048690);
    return sub_100003CE8(v98, &qword_100063008, &qword_1000486A0);
  }
}

void sub_1000103A4(uint64_t a1)
{
  type metadata accessor for RootView(0);
  sub_100003968(&qword_100062F68, &qword_1000485B8);
  State.wrappedValue.getter();
  GeometryProxy.size.getter();
  sub_100010430(v3, v1, v2);
}

void sub_100010430(uint64_t a1, double a2, double a3)
{
  if (a1 == 4)
  {
    __chkstk_darwin(a1);
    static Animation.default.getter();
    withAnimation<A>(_:_:)();

    sub_10000F0FC();
    sub_100014820();
    [*(v3 + *(type metadata accessor for RootView(0) + 92)) idleSleepTimerDisabled:0];
  }

  else
  {
    [*(v3 + *(type metadata accessor for RootView(0) + 92)) idleSleepTimerDisabled:1];
    sub_100003968(&qword_100062FE8, &qword_100048BA0);
    State.wrappedValue.getter();
    [v7 invalidate];

    State.wrappedValue.setter();
    sub_100003968(&qword_100062FF0, &unk_100048670);
    State.wrappedValue.getter();
    sub_1000138B4(a2, a3);
    __chkstk_darwin(v6);
    static Animation.default.getter();
    withAnimation<A>(_:_:)();
  }
}

uint64_t sub_1000106D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v255 = a3;
  v261 = a4;
  v258 = sub_100003968(&qword_100063070, &qword_1000486D8);
  __chkstk_darwin(v258);
  v256 = &v237 - v6;
  v7 = sub_100003968(&qword_100063078, &qword_1000486E0);
  v259 = *(v7 - 8);
  v260 = v7;
  __chkstk_darwin(v7);
  v257 = &v237 - v8;
  v9 = sub_100003968(&qword_100063080, &qword_1000486E8);
  v263 = *(v9 - 8);
  v264 = v9;
  __chkstk_darwin(v9);
  v262 = &v237 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v279 = &v237 - v12;
  v267 = sub_100003968(&qword_100063088, &qword_1000486F0);
  v246 = *(v267 - 1);
  __chkstk_darwin(v267);
  v251 = &v237 - v13;
  v265 = sub_100003968(&qword_100063090, &qword_1000486F8);
  __chkstk_darwin(v265);
  v266 = &v237 - v14;
  v15 = type metadata accessor for GeometryProxy();
  v284 = *(v15 - 8);
  __chkstk_darwin(v15);
  v276 = &v237 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v272 = v16;
  __chkstk_darwin(v17);
  v268 = &v237 - v18;
  v19 = type metadata accessor for RootView(0);
  v270 = *(v19 - 1);
  v20 = *(v270 + 64);
  __chkstk_darwin(v19);
  v275 = &v237 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v247 = &v237 - v22;
  v252 = sub_100003968(&qword_100063098, &qword_100048700);
  v250 = *(v252 - 8);
  __chkstk_darwin(v252);
  v249 = &v237 - v23;
  v254 = sub_100003968(&qword_1000630A0, &qword_100048708);
  __chkstk_darwin(v254);
  v248 = &v237 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v253 = &v237 - v26;
  v27 = sub_100003968(&qword_1000630A8, &qword_100048710);
  __chkstk_darwin(v27 - 8);
  v273 = &v237 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v278 = &v237 - v30;
  v31 = a1 + v19[8];
  v33 = *(v31 + 8);
  LOBYTE(v345[0]) = *v31;
  v32 = LOBYTE(v345[0]);
  *(&v345[0] + 1) = v33;
  v34 = sub_100003968(&qword_100062F68, &qword_1000485B8);
  State.wrappedValue.getter();
  v280 = a2;
  v282 = a1;
  v283 = v34;
  v274 = v15;
  v271 = v19;
  v281 = v32;
  v277 = v33;
  v269 = v20;
  if (LOBYTE(v344[0]) == 1)
  {
    v35 = v15;
    v36 = v19[25];
    v37 = v282;
    v38 = (v282 + v36);
    v39 = *v38;
    v40 = *(v38 + 1);
    LOBYTE(v344[0]) = v39;
    *(&v344[0] + 1) = v40;
    sub_100003968(&qword_100063138, &qword_100048770);
    State.projectedValue.getter();
    v246 = *(&v345[0] + 1);
    v251 = *&v345[0];
    LODWORD(v245) = LOBYTE(v345[1]);
    v41 = v247;
    sub_100017ED0(v37, v247, type metadata accessor for RootView);
    v42 = v20;
    v43 = v284;
    v242 = *(v284 + 16);
    v243 = v284 + 16;
    v242(v268, a2, v35);
    v44 = *(v270 + 80);
    v45 = v35;
    v46 = (v44 + 16) & ~v44;
    v47 = *(v43 + 80);
    v48 = (v42 + v47 + v46) & ~v47;
    v49 = v45;
    v241 = v44 | v47;
    v50 = swift_allocObject();
    v244 = v46;
    sub_1000180B8(v41, v50 + v46, type metadata accessor for RootView);
    v51 = *(v43 + 32);
    v51(v50 + v48, v268, v49);
    LOBYTE(v345[0]) = v32;
    *(&v345[0] + 1) = v33;
    State.wrappedValue.getter();
    if (LOBYTE(v344[0]) == 2)
    {
      v52 = 0;
      v53 = 0;
    }

    else
    {
      v74 = v275;
      sub_100017ED0(v282, v275, type metadata accessor for RootView);
      v75 = v276;
      v242(v276, a2, v49);
      v53 = swift_allocObject();
      sub_1000180B8(v74, v53 + v244, type metadata accessor for RootView);
      v51(v53 + v48, v75, v49);
      v52 = sub_10001927C;
    }

    *&v344[0] = 0;
    State.init(wrappedValue:)();
    *&v320 = v251;
    *(&v320 + 1) = v246;
    LOBYTE(v321) = v245;
    *(&v321 + 1) = sub_100018D94;
    *&v322 = v50;
    *(&v322 + 1) = v52;
    *&v323[0] = v53;
    *(v323 + 8) = xmmword_100048300;
    *(&v323[1] + 1) = 0x4034000000000000;
    v324 = v345[0];
    *&v332 = v251;
    *(&v332 + 1) = v246;
    LOBYTE(v333) = v245;
    *(&v333 + 1) = sub_100018D94;
    *&v334 = v50;
    *(&v334 + 1) = v52;
    *&v335[0] = v53;
    *(v335 + 8) = xmmword_100048300;
    *(&v335[1] + 1) = 0x4034000000000000;
    v336 = v345[0];
    sub_100008104(&v320, v345);
    sub_100019374(&v332);
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v289 = v323[1];
    v290 = v324;
    v287 = v322;
    v288 = v323[0];
    v344[6] = v291;
    v344[7] = v292;
    v344[8] = v293;
    v285 = v320;
    v286 = v321;
    v344[2] = v322;
    v344[3] = v323[0];
    v344[5] = v324;
    v344[4] = v323[1];
    v344[1] = v321;
    v344[0] = v320;
    LOBYTE(v344[9]) = 0;
    static GestureMask.all.getter();
    sub_100003968(&qword_100063198, &qword_100048798);
    v76 = sub_100003968(&qword_1000627F8, &qword_100047CD8);
    sub_100018C04(&qword_1000631A0, &qword_100063198, &qword_100048798, sub_100018CB4);
    v77 = sub_100003E3C(&qword_100062878, &qword_1000627F8, &qword_100047CD8, &protocol conformance descriptor for _EndedGesture<A>);
    v78 = v249;
    View.gesture<A>(_:including:)();
    v345[6] = v344[6];
    v345[7] = v344[7];
    v345[8] = v344[8];
    LOBYTE(v345[9]) = v344[9];
    v345[2] = v344[2];
    v345[3] = v344[3];
    v345[4] = v344[4];
    v345[5] = v344[5];
    v345[0] = v344[0];
    v345[1] = v344[1];
    sub_100003CE8(v345, &qword_100063198, &qword_100048798);
    v79 = static Edge.Set.all.getter();
    EdgeInsets.init(_all:)();
    v81 = v80;
    v83 = v82;
    v85 = v84;
    v87 = v86;
    v88 = v248;
    (*(v250 + 32))(v248, v78, v252);
    v89 = v253;
    v90 = v88 + *(v254 + 36);
    *v90 = v79;
    *(v90 + 8) = v81;
    *(v90 + 16) = v83;
    *(v90 + 24) = v85;
    *(v90 + 32) = v87;
    *(v90 + 40) = 0;
    sub_10000BB84(v88, v89, &qword_1000630A0, &qword_100048708);
    sub_100006098(v89, v266, &qword_1000630A0, &qword_100048708);
    swift_storeEnumTagMultiPayload();
    sub_100018AA8();
    v91 = sub_100003AC0(&qword_100063180, &qword_100048790);
    v92 = sub_1000188F4();
    *&v344[0] = v91;
    *(&v344[0] + 1) = v76;
    *&v344[1] = v92;
    *(&v344[1] + 1) = v77;
    swift_getOpaqueTypeConformance2();
    v93 = v278;
    _ConditionalContent<>.init(storage:)();
    sub_100003CE8(v89, &qword_1000630A0, &qword_100048708);
    v94 = sub_100003968(&qword_1000630B0, &qword_100048718);
    (*(*(v94 - 8) + 56))(v93, 0, 1, v94);
    v71 = v280;
    v54 = v284;
    v19 = v271;
  }

  else
  {
    v54 = v284;
    LOBYTE(v345[0]) = v32;
    *(&v345[0] + 1) = v33;
    State.wrappedValue.getter();
    if (LOBYTE(v344[0]) == 2)
    {
      v55 = v282;
      v56 = (v282 + v19[25]);
      v57 = *v56;
      v58 = *(v56 + 1);
      LOBYTE(v344[0]) = v57;
      *(&v344[0] + 1) = v58;
      sub_100003968(&qword_100063138, &qword_100048770);
      State.projectedValue.getter();
      v59 = v345[0];
      v60 = v345[1];
      v61 = v275;
      sub_100017ED0(v55, v275, type metadata accessor for RootView);
      v62 = v276;
      v63 = v274;
      (*(v54 + 16))(v276, v280, v274);
      v64 = (*(v270 + 80) + 16) & ~*(v270 + 80);
      v65 = (v269 + *(v284 + 80) + v64) & ~*(v284 + 80);
      v66 = swift_allocObject();
      sub_1000180B8(v61, v66 + v64, type metadata accessor for RootView);
      (*(v284 + 32))(v66 + v65, v62, v63);
      sub_10001B6DC(v59, *(&v59 + 1), v60, sub_1000189DC, v66, v294);
      static Alignment.center.getter();
      _FrameLayout.init(width:height:alignment:)();
      v344[4] = v294[4];
      v344[5] = v294[5];
      v344[6] = v294[6];
      v344[7] = v294[7];
      v344[0] = v294[0];
      v344[1] = v294[1];
      v344[2] = v294[2];
      v344[3] = v294[3];
      static GestureMask.all.getter();
      v268 = sub_100003968(&qword_100063180, &qword_100048790);
      v253 = sub_100003968(&qword_1000627F8, &qword_100047CD8);
      v252 = sub_1000188F4();
      v67 = sub_100003E3C(&qword_100062878, &qword_1000627F8, &qword_100047CD8, &protocol conformance descriptor for _EndedGesture<A>);
      v68 = v251;
      View.gesture<A>(_:including:)();
      v345[4] = v344[4];
      v345[5] = v344[5];
      v345[6] = v344[6];
      v345[7] = v344[7];
      v345[0] = v344[0];
      v345[1] = v344[1];
      v345[2] = v344[2];
      v345[3] = v344[3];
      v54 = v284;
      v19 = v271;
      sub_100003CE8(v345, &qword_100063180, &qword_100048790);
      v69 = v246;
      v70 = v267;
      (*(v246 + 16))(v266, v68, v267);
      swift_storeEnumTagMultiPayload();
      sub_100018AA8();
      *&v344[0] = v268;
      *(&v344[0] + 1) = v253;
      *&v344[1] = v252;
      *(&v344[1] + 1) = v67;
      v71 = v280;
      swift_getOpaqueTypeConformance2();
      v72 = v278;
      _ConditionalContent<>.init(storage:)();
      (*(v69 + 8))(v251, v70);
      v73 = sub_100003968(&qword_1000630B0, &qword_100048718);
      (*(*(v73 - 8) + 56))(v72, 0, 1, v73);
    }

    else
    {
      v95 = sub_100003968(&qword_1000630B0, &qword_100048718);
      (*(*(v95 - 8) + 56))(v278, 1, 1, v95);
      v71 = v280;
    }
  }

  LOBYTE(v345[0]) = v281;
  v96 = v277;
  *(&v345[0] + 1) = v277;
  State.wrappedValue.getter();
  LODWORD(v254) = LOBYTE(v344[0]);
  v97 = v282;
  v98 = (v282 + v19[16]);
  v99 = *v98;
  v100 = v98[1];
  *&v344[0] = v99;
  *(&v344[0] + 1) = v100;
  sub_100003968(&qword_100062B18, &unk_100049360);
  State.projectedValue.getter();
  v251 = *(&v345[0] + 1);
  v252 = *&v345[0];
  v253 = *&v345[1];
  v344[0] = *(v97 + v19[10]);
  sub_100003968(&qword_1000630B8, &qword_100048720);
  State.projectedValue.getter();
  v249 = *(&v345[0] + 1);
  v250 = *&v345[0];
  v248 = *&v345[1];
  v101 = v97 + v19[11];
  v102 = *v101;
  v103 = *(v101 + 16);
  v344[0] = v102;
  *&v344[1] = v103;
  sub_100003968(&qword_1000630C0, &qword_100048728);
  State.projectedValue.getter();
  v246 = *(&v345[0] + 1);
  v247 = *&v345[0];
  v244 = *(&v345[1] + 1);
  v245 = *&v345[1];
  v104 = v275;
  sub_100017ED0(v97, v275, type metadata accessor for RootView);
  v105 = v276;
  v106 = v274;
  v267 = *(v54 + 16);
  v268 = (v54 + 16);
  (v267)(v276, v71, v274);
  v107 = *(v270 + 80);
  v108 = (v107 + 16) & ~v107;
  v109 = *(v54 + 80);
  v110 = (v269 + v109 + v108) & ~v109;
  v266 = v107 | v109;
  v269 = v110 + v272;
  v111 = swift_allocObject();
  v270 = v108;
  v112 = v111 + v108;
  v113 = v111;
  sub_1000180B8(v104, v112, type metadata accessor for RootView);
  v114 = *(v54 + 32);
  v272 = v110;
  v284 = v54 + 32;
  v265 = v114;
  v114(v113 + v110, v105, v106);
  if (qword_100062790 != -1)
  {
    swift_once();
  }

  v115 = static AXLTCaptionsProvider.shared;
  type metadata accessor for AXLTCaptionsProvider(0);
  sub_100016110(&qword_100062D98, type metadata accessor for AXLTCaptionsProvider, &protocol conformance descriptor for AXLTCaptionsProvider);
  v116 = v115;
  v117 = ObservedObject.init(wrappedValue:)();
  v242 = v118;
  LODWORD(v243) = static Edge.Set.leading.getter();
  GeometryProxy.safeAreaInsets.getter();
  sub_100012990();
  EdgeInsets.init(_all:)();
  v240 = v120;
  v241 = v119;
  v238 = v122;
  v239 = v121;
  LOBYTE(v345[0]) = 0;
  v123 = static Edge.Set.trailing.getter();
  GeometryProxy.safeAreaInsets.getter();
  sub_100012990();
  EdgeInsets.init(_all:)();
  v125 = v124;
  v127 = v126;
  v129 = v128;
  v131 = v130;
  v346 = 0;
  v132 = static Edge.Set.top.getter();
  v133 = v281;
  LOBYTE(v345[0]) = v281;
  *(&v345[0] + 1) = v96;
  State.wrappedValue.getter();
  if (LOBYTE(v344[0]))
  {
    LOBYTE(v345[0]) = v133;
    *(&v345[0] + 1) = v96;
    State.wrappedValue.getter();
    if (LOBYTE(v344[0]) != 1)
    {
      LOBYTE(v345[0]) = v133;
      *(&v345[0] + 1) = v96;
      State.wrappedValue.getter();
      if (LOBYTE(v344[0]) != 2 && qword_100062710 != -1)
      {
        swift_once();
      }
    }
  }

  EdgeInsets.init(_all:)();
  v135 = v134;
  v137 = v136;
  v139 = v138;
  v141 = v140;
  v347 = 0;
  v142 = static Edge.Set.bottom.getter();
  v143 = v281;
  LOBYTE(v345[0]) = v281;
  v144 = v277;
  *(&v345[0] + 1) = v277;
  State.wrappedValue.getter();
  if (LOBYTE(v344[0]))
  {
    LOBYTE(v345[0]) = v143;
    *(&v345[0] + 1) = v144;
    State.wrappedValue.getter();
  }

  EdgeInsets.init(_all:)();
  v348 = 0;
  *&v345[0] = v117;
  *(&v345[0] + 1) = v242;
  LOBYTE(v345[1]) = v254;
  *(&v345[1] + 1) = v252;
  *&v345[2] = v251;
  *(&v345[2] + 1) = v253;
  *&v345[3] = v250;
  *(&v345[3] + 1) = v249;
  *&v345[4] = v248;
  *(&v345[4] + 1) = v247;
  *&v345[5] = v246;
  *(&v345[5] + 1) = v245;
  *&v345[6] = v244;
  *(&v345[6] + 1) = sub_100018260;
  *&v345[7] = v113;
  BYTE8(v345[7]) = 0;
  LOBYTE(v345[8]) = v243;
  *(&v345[8] + 1) = v241;
  *&v345[9] = v240;
  *(&v345[9] + 1) = v239;
  *&v345[10] = v238;
  BYTE8(v345[10]) = 0;
  LOBYTE(v345[11]) = v123;
  *(&v345[11] + 1) = v125;
  *&v345[12] = v127;
  *(&v345[12] + 1) = v129;
  *&v345[13] = v131;
  BYTE8(v345[13]) = 0;
  LOBYTE(v345[14]) = v132;
  *(&v345[14] + 1) = v135;
  *&v345[15] = v137;
  *(&v345[15] + 1) = v139;
  *&v345[16] = v141;
  BYTE8(v345[16]) = 0;
  LOBYTE(v345[17]) = v142;
  *(&v345[17] + 1) = v145;
  *&v345[18] = v146;
  *(&v345[18] + 1) = v147;
  *&v345[19] = v148;
  BYTE8(v345[19]) = 0;
  LOBYTE(v344[0]) = v143;
  *(&v344[0] + 1) = v144;
  State.wrappedValue.getter();
  if (v332 == 3 || (LOBYTE(v344[0]) = v143, *(&v344[0] + 1) = v144, State.wrappedValue.getter(), v332 == 2))
  {
    v149 = sub_100003968(&qword_1000627F8, &qword_100047CD8);
    v150 = v256;
    (*(*(v149 - 8) + 56))(v256, 1, 1, v149);
  }

  else
  {
    v151 = sub_100003968(&qword_1000627F8, &qword_100047CD8);
    v152 = *(v151 - 8);
    v150 = v256;
    (*(v152 + 16))(v256, v255, v151);
    (*(v152 + 56))(v150, 0, 1, v151);
  }

  static GestureMask.all.getter();
  v153 = sub_100003968(&qword_1000630C8, &qword_100048730);
  v154 = sub_100018330();
  v155 = sub_1000185E0();
  v156 = v257;
  v157 = v150;
  v158 = v258;
  View.gesture<A>(_:including:)();
  sub_100003CE8(v157, &qword_100063070, &qword_1000486D8);
  memcpy(v344, v345, 0x139uLL);
  sub_100003CE8(v344, &qword_1000630C8, &qword_100048730);
  v159 = v275;
  sub_100017ED0(v282, v275, type metadata accessor for RootView);
  v160 = v276;
  v161 = v274;
  (v267)(v276, v280, v274);
  v162 = swift_allocObject();
  sub_1000180B8(v159, v162 + v270, type metadata accessor for RootView);
  v265(v162 + v272, v160, v161);
  *&v332 = v153;
  *(&v332 + 1) = v158;
  *&v333 = v154;
  *(&v333 + 1) = v155;
  swift_getOpaqueTypeConformance2();
  v163 = v260;
  View.onTapGesture(count:perform:)();

  (*(v259 + 8))(v156, v163);
  v164 = v281;
  LOBYTE(v332) = v281;
  v165 = v277;
  *(&v332 + 1) = v277;
  State.wrappedValue.getter();
  if (v320 == 2)
  {
    v166 = v271;
    v167 = v282;
    v168 = v282 + v271[15];
    v169 = *(v168 + 16);
    v320 = *v168;
    *&v321 = v169;
    sub_100003968(&qword_100062880, &unk_100047D20);
    State.projectedValue.getter();
    v170 = *(&v332 + 1);
    v284 = v332;
    v275 = *(&v333 + 1);
    v276 = v333;
    GeometryProxy.size.getter();
    v172 = v171;
    v174 = v173;
    LOBYTE(v332) = v164;
    *(&v332 + 1) = v165;
    State.wrappedValue.getter();
    sub_1000143D4(v320, v172, v174);
    v176 = v175;
    v178 = v177;
    v179 = v167 + v166[12];
    v180 = *(v179 + 16);
    v332 = *v179;
    *&v333 = v180;
    State.wrappedValue.getter();
    v181 = v320;
    GeometryProxy.size.getter();
    v183 = v182;
    v185 = v184;
    type metadata accessor for CGSize(0);
    v320 = 0uLL;
    State.init(wrappedValue:)();
    v186 = v332;
    v187 = v333;
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v309 = xmmword_100048310;
    LOBYTE(v310) = 0;
    *(&v310 + 1) = v284;
    *&v311 = v170;
    *(&v311 + 1) = v276;
    *&v312 = v275;
    *(&v312 + 1) = v176;
    *v313 = v178;
    *&v313[8] = v181;
    *&v313[24] = v183;
    *v314 = v185;
    *&v314[8] = v186;
    *&v314[24] = v187;
    sub_1000189D4(&v309);
    v329 = v317;
    v330 = v318;
    v331[0] = v319[0];
    *(v331 + 10) = *(v319 + 10);
    v325 = *v314;
    v326 = *&v314[16];
    v327 = v315;
    v328 = v316;
    v322 = v311;
    v323[0] = v312;
    v323[1] = *v313;
    v324 = *&v313[16];
    v320 = v309;
    v321 = v310;
    sub_100003968(&qword_100063140, &qword_100048778);
    sub_100003968(&qword_100063148, &qword_100048780);
    sub_1000186FC();
    sub_1000187DC();
    _ConditionalContent<>.init(storage:)();
    v329 = v341;
    v330 = v342;
    v331[0] = v343[0];
    *(v331 + 10) = *(v343 + 10);
    v325 = v337;
    v326 = v338;
    v327 = v339;
    v328 = v340;
    v322 = v334;
    v323[0] = v335[0];
    v323[1] = v335[1];
    v324 = v336;
    v320 = v332;
    v321 = v333;
    nullsub_1();
    v341 = v329;
    v342 = v330;
    v343[0] = v331[0];
    v188 = *(v331 + 10);
LABEL_27:
    *(v343 + 10) = v188;
    v337 = v325;
    v338 = v326;
    v339 = v327;
    v340 = v328;
    v334 = v322;
    v335[0] = v323[0];
    v335[1] = v323[1];
    v336 = v324;
    v332 = v320;
    v333 = v321;
    goto LABEL_28;
  }

  v189 = v282;
  v190 = v280;
  LOBYTE(v332) = v164;
  *(&v332 + 1) = v165;
  State.wrappedValue.getter();
  if (v320 == 3)
  {
    v191 = v189 + v271[25];
    v192 = *v191;
    v193 = *(v191 + 8);
    LOBYTE(v320) = v192;
    *(&v320 + 1) = v193;
    sub_100003968(&qword_100063138, &qword_100048770);
    State.projectedValue.getter();
    v194 = v332;
    v195 = v333;
    v196 = v275;
    sub_100017ED0(v189, v275, type metadata accessor for RootView);
    v197 = v276;
    (v267)(v276, v190, v161);
    v198 = swift_allocObject();
    sub_1000180B8(v196, v198 + v270, type metadata accessor for RootView);
    v265(v198 + v272, v197, v161);
    sub_10001B6DC(v194, *(&v194 + 1), v195, sub_1000186D8, v198, v295);
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v199 = static Edge.Set.all.getter();
    EdgeInsets.init(_all:)();
    v201 = v200;
    v203 = v202;
    v205 = v204;
    v207 = v206;
    LOBYTE(v332) = 0;
    v208 = static Edge.Set.bottom.getter();
    EdgeInsets.init(_all:)();
    *v313 = v295[4];
    *&v313[16] = v295[5];
    *v314 = v295[6];
    *&v314[16] = v295[7];
    v309 = v295[0];
    v310 = v295[1];
    v311 = v295[2];
    v312 = v295[3];
    LOBYTE(v315) = v199;
    *(&v315 + 1) = v201;
    *&v316 = v203;
    *(&v316 + 1) = v205;
    *&v317 = v207;
    BYTE8(v317) = 0;
    LOBYTE(v318) = v208;
    *(&v318 + 1) = v209;
    *&v319[0] = v210;
    *(&v319[0] + 1) = v211;
    *&v319[1] = v212;
    BYTE8(v319[1]) = 0;
    sub_1000186F0(&v309);
    v329 = v317;
    v330 = v318;
    v331[0] = v319[0];
    *(v331 + 10) = *(v319 + 10);
    v325 = *v314;
    v326 = *&v314[16];
    v327 = v315;
    v328 = v316;
    v322 = v311;
    v323[0] = v312;
    v323[1] = *v313;
    v324 = *&v313[16];
    v320 = v309;
    v321 = v310;
    sub_100003968(&qword_100063140, &qword_100048778);
    sub_100003968(&qword_100063148, &qword_100048780);
    sub_1000186FC();
    sub_1000187DC();
    _ConditionalContent<>.init(storage:)();
    v329 = v341;
    v330 = v342;
    v331[0] = v343[0];
    *(v331 + 10) = *(v343 + 10);
    v325 = v337;
    v326 = v338;
    v327 = v339;
    v328 = v340;
    v322 = v334;
    v323[0] = v335[0];
    v323[1] = v335[1];
    v324 = v336;
    v320 = v332;
    v321 = v333;
    nullsub_1();
    v341 = v329;
    v342 = v330;
    v343[0] = v331[0];
    v188 = *(v331 + 10);
    goto LABEL_27;
  }

  sub_1000186A8(&v332);
LABEL_28:
  v213 = v273;
  sub_100006098(v278, v273, &qword_1000630A8, &qword_100048710);
  v214 = v262;
  v215 = v263;
  v216 = *(v263 + 16);
  v217 = v264;
  v216(v262, v279, v264);
  v306 = v341;
  v307 = v342;
  v308[0] = v343[0];
  *(v308 + 10) = *(v343 + 10);
  v302 = v337;
  v303 = v338;
  v304 = v339;
  v305 = v340;
  v298 = v334;
  v299 = v335[0];
  v300 = v335[1];
  v301 = v336;
  v296 = v332;
  v297 = v333;
  v218 = v213;
  v219 = v261;
  sub_100006098(v218, v261, &qword_1000630A8, &qword_100048710);
  v220 = sub_100003968(&qword_100063128, &qword_100048760);
  v216((v219 + *(v220 + 48)), v214, v217);
  v221 = *(v220 + 64);
  v222 = v307;
  v317 = v306;
  v318 = v307;
  v223 = v308[0];
  v319[0] = v308[0];
  *(v319 + 10) = *(v308 + 10);
  v224 = v302;
  v225 = v303;
  *v314 = v302;
  *&v314[16] = v303;
  v226 = v304;
  v227 = v305;
  v315 = v304;
  v316 = v305;
  v228 = v300;
  v229 = v301;
  *v313 = v300;
  *&v313[16] = v301;
  v230 = v298;
  v231 = v299;
  v311 = v298;
  v312 = v299;
  v232 = v296;
  v233 = v297;
  v309 = v296;
  v310 = v297;
  v234 = (v219 + v221);
  v234[10] = v306;
  v234[11] = v222;
  v234[12] = v223;
  *(v234 + 202) = *(v308 + 10);
  v234[6] = v224;
  v234[7] = v225;
  v234[8] = v226;
  v234[9] = v227;
  v234[2] = v230;
  v234[3] = v231;
  v234[4] = v228;
  v234[5] = v229;
  *v234 = v232;
  v234[1] = v233;
  sub_100006098(&v309, &v320, &qword_100063130, &qword_100048768);
  v235 = *(v215 + 8);
  v235(v279, v217);
  sub_100003CE8(v278, &qword_1000630A8, &qword_100048710);
  v329 = v306;
  v330 = v307;
  v331[0] = v308[0];
  *(v331 + 10) = *(v308 + 10);
  v325 = v302;
  v326 = v303;
  v327 = v304;
  v328 = v305;
  v322 = v298;
  v323[0] = v299;
  v323[1] = v300;
  v324 = v301;
  v320 = v296;
  v321 = v297;
  sub_100003CE8(&v320, &qword_100063130, &qword_100048768);
  v235(v214, v217);
  return sub_100003CE8(v273, &qword_1000630A8, &qword_100048710);
}

id sub_100012898(uint64_t a1)
{
  GeometryProxy.size.getter();
  static Animation.default.getter();
  withAnimation<A>(_:_:)();

  sub_10000F0FC();
  sub_100014820();
  return [*(a1 + *(type metadata accessor for RootView(0) + 92)) idleSleepTimerDisabled:0];
}

void sub_100012944(uint64_t a1)
{
  IsPad = AXDeviceIsPad();
  GeometryProxy.size.getter();
  if (IsPad)
  {
    v4 = 2;
  }

  else
  {
    v4 = 3;
  }

  sub_100010430(v4, v2, v3);
}

void *sub_100012990()
{
  type metadata accessor for RootView(0);
  sub_100003968(&qword_100062F68, &qword_1000485B8);
  result = State.wrappedValue.getter();
  if (v1)
  {
    result = State.wrappedValue.getter();
    if (v1 == 3)
    {
      return sub_10000BE90();
    }
  }

  return result;
}

void sub_100012A6C(uint64_t a1)
{
  type metadata accessor for RootView(0);
  sub_100003968(&qword_100062F68, &qword_1000485B8);
  State.wrappedValue.getter();
  if (v4)
  {
    State.wrappedValue.getter();
    if (v4 != 1)
    {
      return;
    }

    v1 = 0;
  }

  else
  {
    v1 = 1;
  }

  GeometryProxy.size.getter();
  sub_100010430(v1, v2, v3);
}

double sub_100012B38(uint64_t a1)
{
  GeometryProxy.size.getter();
  sub_100010430(1, v1, v2);
  type metadata accessor for RootView(0);
  sub_100003968(&qword_100063138, &qword_100048770);
  State.wrappedValue.setter();
  return result;
}

double sub_100012BC0()
{
  type metadata accessor for RootView(0);
  sub_100003968(&qword_100062F68, &qword_1000485B8);
  State.wrappedValue.getter();
  result = 1.0;
  if (LOBYTE(v1) == 4)
  {
    sub_100003968(&qword_100062B18, &unk_100049360);
    State.wrappedValue.getter();
    return v1;
  }

  return result;
}

void sub_100012C80(double a1, double a2)
{
  v5 = type metadata accessor for RootView(0);
  v6 = (v2 + *(v5 + 32));
  v7 = *v6;
  v8 = v6[1];
  sub_100003968(&qword_100062F68, &qword_1000485B8);
  State.wrappedValue.getter();
  if (LOBYTE(v18) != 3)
  {
    State.wrappedValue.getter();
    if (LOBYTE(v18) == 4)
    {
      sub_100003968(&qword_100062880, &unk_100047D20);
      State.wrappedValue.getter();
      if (AXDeviceIsPad())
      {
        v9 = 68.0;
      }

      else
      {
        v9 = 54.0;
      }

      safeOffset(offset:size:containerSize:foreheadWindowRect:)(v18, v19, v9, v9, a1, a2, CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height);
    }

    else
    {
      v10 = (v2 + *(v5 + 48));
      v15 = *v10;
      v16 = v10[2];
      sub_100003968(&qword_100062880, &unk_100047D20);
      State.wrappedValue.getter();
      LOBYTE(v15) = v7;
      State.wrappedValue.getter();
      sub_1000143D4(LOBYTE(v18), a1, a2);
      v12 = v11;
      v14 = v13;
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      safeOffset(offset:size:containerSize:foreheadWindowRect:)(v18, v19, v12, v14, a1, a2, *&v15, v8, v16, v17);
      if ((sub_10000BE90() & 1) == 0)
      {
        State.wrappedValue.getter();
      }
    }
  }
}

void sub_100012F20(uint64_t a1, double a2, double a3)
{
  v4 = v3;
  static os_log_type_t.debug.getter();
  if (qword_1000626F0 != -1)
  {
    swift_once();
  }

  os_log(_:dso:log:_:_:)();
  v7 = [objc_opt_self() standardUserDefaults];
  v8 = String._bridgeToObjectiveC()();
  v9 = [v7 integerForKey:v8];

  if (v9 >= 5)
  {
    v10 = 0;
  }

  else
  {
    v10 = v9;
  }

  v11 = type metadata accessor for RootView(0);
  sub_100003968(&qword_100062F68, &qword_1000485B8);
  State.wrappedValue.setter();
  State.wrappedValue.getter();
  if (!v10 && UIAccessibilityIsVoiceOverRunning())
  {
    State.wrappedValue.setter();
  }

  v12 = String._bridgeToObjectiveC()();
  v13 = [v7 stringForKey:v12];

  if (v13)
  {
    *&v14 = *&CGSizeFromString(v13);

    v15 = (v4 + v11[13]);
    v16 = *v15;
    v17 = v15[1];
    v36 = v14;
    sub_100003968(&qword_100062880, &unk_100047D20);
    State.wrappedValue.setter();
  }

  else
  {
    v18 = (v4 + v11[13]);
    v16 = *v18;
    v17 = v18[1];

    sub_100003968(&qword_100062880, &unk_100047D20);
    State.wrappedValue.getter();
    v36 = v16;
    State.wrappedValue.setter();
  }

  v19 = String._bridgeToObjectiveC()();
  v20 = [v7 stringForKey:v19];

  if (v20)
  {
    *&v21 = *&CGSizeFromString(v20);

    v36 = v21;
    sub_100003968(&qword_100062880, &unk_100047D20);
    State.wrappedValue.setter();
  }

  v22 = String._bridgeToObjectiveC()();
  v23 = [v7 stringForKey:v22];

  if (v23)
  {
    v24 = *&CGSizeFromString(v23);

    v25 = (v4 + v11[12]);
    v26 = *v25;
    v27 = v25[1];
    LOBYTE(v37) = v24;
  }

  else
  {
    State.wrappedValue.getter();
    if (LOBYTE(v36) == 2)
    {
      sub_100003968(&qword_100062880, &unk_100047D20);
      State.wrappedValue.getter();
      State.wrappedValue.getter();
      v28 = (v4 + v11[12]);
      v26 = *v28;
      v27 = v28[1];
      v37 = (a2 - v36) * 0.5;
      goto LABEL_24;
    }

    State.wrappedValue.getter();
    if (LOBYTE(v36) && (State.wrappedValue.getter(), LOBYTE(v36) != 1))
    {
      v29 = 0;
    }

    else
    {
      State.wrappedValue.getter();
      v29 = LOBYTE(v36);
    }

    sub_1000143D4(v29, a2, a3);
    v31 = (v4 + v11[12]);
    v26 = *v31;
    v27 = v31[1];
    v37 = (a2 - v30) * 0.5;
  }

  sub_100003968(&qword_100062880, &unk_100047D20);
LABEL_24:
  State.wrappedValue.setter();
  State.wrappedValue.getter();
  if (LOBYTE(v37) == 4)
  {
    v32 = 0;
  }

  else
  {
    State.wrappedValue.getter();
    v32 = LOBYTE(v37);
  }

  v38 = v32;
  State.wrappedValue.setter();
  State.wrappedValue.getter();
  sub_100003968(&qword_100062880, &unk_100047D20);
  State.wrappedValue.getter();

  State.wrappedValue.getter();
  if (v38 == 4)
  {
    v39 = v26;
    v41 = v27;
    State.wrappedValue.setter();

    sub_100014820();
  }

  else
  {
    v39 = v16;
    v41 = v17;
    State.wrappedValue.setter();

    sub_1000138B4(a2, a3);
    [*(v4 + v11[23]) idleSleepTimerDisabled:1];
  }

  sub_100003968(&qword_100062880, &unk_100047D20);
  State.wrappedValue.getter();
  v40 = sub_100025378(3, v39, v41, a2, a3);
  v42 = v33;
  State.wrappedValue.setter();
  State.wrappedValue.getter();
  State.wrappedValue.getter();
  sub_1000143D4(LOBYTE(v40), a2, a3);
  safeOffset(offset:size:containerSize:foreheadWindowRect:)(v40, v42, v34, v35, a2, a3, CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height);

  State.wrappedValue.setter();
}

void sub_1000137B8(uint64_t a1)
{
  static os_log_type_t.debug.getter();
  if (qword_1000626F0 != -1)
  {
    swift_once();
  }

  os_log(_:dso:log:_:_:)();
  type metadata accessor for RootView(0);
  sub_100003968(&qword_100062F68, &qword_1000485B8);
  State.wrappedValue.getter();
  if (v3 != 4)
  {
    GeometryProxy.size.getter();
    sub_1000138B4(v1, v2);
  }
}

void sub_1000138B4(double a1, double a2)
{
  v3 = v2;
  v6 = type metadata accessor for RootView(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6 - 8);
  v10 = (v2 + *(v9 + 96));
  v11 = *v10;
  v12 = v10[1];
  aBlock = *v10;
  v22 = v12;
  sub_100003968(&qword_100062FE8, &qword_100048BA0);
  State.wrappedValue.getter();
  if (v27)
  {
  }

  else
  {
    static os_log_type_t.debug.getter();
    if (qword_1000626F0 != -1)
    {
      swift_once();
    }

    os_log(_:dso:log:_:_:)();
  }

  aBlock = v11;
  v22 = v12;
  State.wrappedValue.getter();
  v13 = v27;
  [v27 invalidate];

  v14 = objc_opt_self();
  sub_100017ED0(v3, &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for RootView);
  v15 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v16 = swift_allocObject();
  sub_1000180B8(&v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15, type metadata accessor for RootView);
  v17 = (v16 + ((v8 + v15 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v17 = a1;
  v17[1] = a2;
  v25 = sub_100017884;
  v26 = v16;
  aBlock = _NSConcreteStackBlock;
  v22 = 1107296256;
  v23 = sub_100032E40;
  v24 = &unk_10005E368;
  v18 = _Block_copy(&aBlock);

  v19 = [v14 scheduledTimerWithTimeInterval:0 repeats:v18 block:120.0];
  _Block_release(v18);
  aBlock = v11;
  v22 = v12;
  v27 = v19;
  State.wrappedValue.setter();
}

void sub_100013B98(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for RootView(0);
  v4 = (a2 + *(v3 + 48));
  v18 = *v4;
  v20 = v4[2];
  sub_100003968(&qword_100062880, &unk_100047D20);
  State.wrappedValue.getter();
  GeometryProxy.size.getter();
  v6 = v5;
  v8 = v7;
  v9 = a2 + *(v3 + 32);
  LOBYTE(v18) = *v9;
  v19 = *(v9 + 8);
  sub_100003968(&qword_100062F68, &qword_1000485B8);
  State.wrappedValue.getter();
  sub_1000143D4(LOBYTE(v22), v6, v8);
  v11 = v10;
  v13 = v12;
  GeometryProxy.size.getter();
  v15 = v14;
  v17 = v16;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  safeOffset(offset:size:containerSize:foreheadWindowRect:)(v22, v23, v11, v13, v15, v17, v18, v19, v20, v21);
  State.wrappedValue.setter();
  State.wrappedValue.getter();
  State.wrappedValue.setter();
}

void sub_100013D98(uint64_t a1, char a2, double a3, double a4)
{
  v9 = type metadata accessor for RootView(0);
  __chkstk_darwin(v9);
  v66 = &v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1 + *(v11 + 32);
  v14 = *(v12 + 8);
  LOBYTE(v72) = *v12;
  v13 = v72;
  *(&v72 + 1) = v14;
  sub_100003968(&qword_100062F68, &qword_1000485B8);
  State.wrappedValue.getter();
  v75 = v69;
  LOBYTE(v72) = v13;
  *(&v72 + 1) = v14;
  State.wrappedValue.getter();
  if (v69 == 4)
  {
    v65 = v4;
    v15 = (a1 + v9[9]);
    v16 = *v15;
    v17 = *(v15 + 1);
    LOBYTE(v72) = v16;
    *(&v72 + 1) = v17;
    State.wrappedValue.getter();
    LOBYTE(v72) = v13;
    *(&v72 + 1) = v14;
    State.wrappedValue.setter();
    v18 = (a1 + v9[13]);
    v19 = *(v18 + 2);
    v72 = *v18;
    v73 = v19;
    sub_100003968(&qword_100062880, &unk_100047D20);
    State.wrappedValue.getter();
    v20 = *(&v69 + 1);
    v21 = (a1 + v9[12]);
    v23 = v21[1];
    v24 = v21[2];
    *&v72 = *v21;
    v22 = v72;
    *(&v72 + 1) = v23;
    v73 = v24;

    State.wrappedValue.getter();
    *&v69 = v22;
    *(&v69 + 1) = v23;
    v70 = v24;
    v67 = v71;
    v68 = v20;
    State.wrappedValue.setter();
    if (a2 == 3)
    {
      v25 = 1;
    }

    else
    {
      LOBYTE(v72) = v13;
      *(&v72 + 1) = v14;
      State.wrappedValue.getter();
      v25 = v69;
    }

    sub_1000143D4(v25, a3, a4);
    v33 = v32;
    v35 = v34;
    *&v72 = v22;
    *(&v72 + 1) = v23;
    v73 = v24;
    State.wrappedValue.getter();
    safeOffset(offset:size:containerSize:foreheadWindowRect:)(*&v69, *(&v69 + 1), v33, v35, a3, a4, CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height);
    *&v72 = v22;
    *(&v72 + 1) = v23;
    v73 = v24;
    *&v69 = v36;
    *(&v69 + 1) = v37;
    State.wrappedValue.setter();

    v38 = static os_log_type_t.debug.getter();
    if (qword_1000626F0 != -1)
    {
      swift_once();
    }

    v39 = qword_1000654E8;
    v40 = v66;
    sub_100017ED0(a1, v66, type metadata accessor for RootView);
    if (os_log_type_enabled(v39, v38))
    {
      v41 = swift_slowAlloc();
      v64 = v39;
      v42 = v41;
      v63 = swift_slowAlloc();
      v71 = v63;
      *v42 = 136315138;
      v43 = v40 + v9[12];
      v44 = *(v43 + 16);
      v72 = *v43;
      v73 = v44;
      v74 = v38;
      v45 = v40;
      State.wrappedValue.getter();
      v72 = v69;
      type metadata accessor for CGSize(0);
      v46 = String.init<A>(describing:)();
      v48 = v47;
      sub_100018200(v45, type metadata accessor for RootView);
      v49 = sub_100031EB4(v46, v48, &v71);

      *(v42 + 4) = v49;
      _os_log_impl(&_mh_execute_header, v64, v74, "switchToState windowOffset: %s", v42, 0xCu);
      sub_100018190(v63);
    }

    else
    {
      sub_100018200(v40, type metadata accessor for RootView);
    }
  }

  else
  {
    LOBYTE(v72) = v13;
    *(&v72 + 1) = v14;
    LOBYTE(v69) = a2;
    State.wrappedValue.setter();
    if (a2 == 4)
    {
      v26 = (a1 + v9[9]);
      v27 = *v26;
      v28 = *(v26 + 1);
      LOBYTE(v72) = v27;
      *(&v72 + 1) = v28;
      State.wrappedValue.getter();
      a2 = v69;
    }

    v29 = (a1 + v9[9]);
    v30 = *v29;
    v31 = *(v29 + 1);
    LOBYTE(v72) = v30;
    *(&v72 + 1) = v31;
    LOBYTE(v69) = a2;
    State.wrappedValue.setter();
  }

  LOBYTE(v72) = v13;
  *(&v72 + 1) = v14;
  State.wrappedValue.getter();
  if (v69 != 3)
  {
    v50 = 0.0;
    if ((v75 - 3) >= 2u)
    {
      sub_1000143D4(v75, a3, a4);
      v52 = v51;
      LOBYTE(v72) = v13;
      *(&v72 + 1) = v14;
      State.wrappedValue.getter();
      sub_1000143D4(v69, a3, a4);
      v50 = v52 - v53;
    }

    v54 = (a1 + v9[12]);
    v55 = *(v54 + 2);
    v72 = *v54;
    v73 = v55;
    sub_100003968(&qword_100062880, &unk_100047D20);
    State.wrappedValue.getter();
    v56 = (a1 + v9[14]);
    v58 = v56[1];
    v59 = v56[2];
    *&v72 = *v56;
    v57 = v72;
    *(&v72 + 1) = v58;
    v73 = v59;

    State.wrappedValue.setter();
    sub_10000E98C(0.0, v50, a3, a4);
    *&v72 = v57;
    *(&v72 + 1) = v58;
    v73 = v59;
    v69 = 0uLL;
    State.wrappedValue.setter();
  }

  sub_10000F0FC();
  v60 = (a1 + v9[17]);
  v61 = *v60;
  v62 = v60[1];
  *&v72 = v61;
  *(&v72 + 1) = v62;
  *&v69 = 0x3FF0000000000000;
  sub_100003968(&qword_100062B18, &unk_100049360);
  State.wrappedValue.setter();
}

void sub_1000143D4(unsigned __int8 a1, double a2, double a3)
{
  v7 = sub_100003968(&qword_100062AE8, &qword_1000480E0);
  __chkstk_darwin(v7 - 8);
  v9 = v19 - v8;
  v10 = type metadata accessor for RootView(0);
  v11 = (v3 + *(v10 + 32));
  v12 = *v11;
  v13 = *(v11 + 1);
  LOBYTE(v20) = v12;
  v21 = v13;
  sub_100003968(&qword_100062F68, &qword_1000485B8);
  State.wrappedValue.getter();
  sub_100014C5C(a2, a3);
  if (a1 <= 1u)
  {
    v14 = (v3 + *(v10 + 64));
    v15 = *v14;
    v16 = v14[1];
    v20 = v15;
    v21 = v16;
    sub_100003968(&qword_100062B18, &unk_100049360);
    State.wrappedValue.getter();
    v17 = *&v19[1];
    sub_10000B0CC(v9);
    v18 = type metadata accessor for DynamicTypeSize();
    (*(*(v18 - 8) + 56))(v9, 0, 1, v18);
    titleAndTextHeight(textHeight:dynamicTypeSize:)(v9, v17);
    sub_100003CE8(v9, &qword_100062AE8, &qword_1000480E0);
  }

  else if (a1 == 2)
  {
    sub_100015068(a2, a3);
  }

  else if (a1 != 3)
  {
    AXDeviceIsPad();
  }
}

void sub_1000146BC(uint64_t a1, uint64_t a2, double a3, double a4)
{
  type metadata accessor for RootView(0);
  sub_100003968(&qword_100062880, &unk_100047D20);
  State.wrappedValue.getter();
  sub_100025378(a2, v7, v8, a3, a4);
  State.wrappedValue.setter();
  sub_100003968(&qword_100062F68, &qword_1000485B8);
  State.wrappedValue.setter();
  sub_100003968(&qword_100062B18, &unk_100049360);
  State.wrappedValue.setter();
}

double sub_100014820()
{
  v1 = v0;
  v2 = type metadata accessor for RootView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  static os_log_type_t.debug.getter();
  if (qword_1000626F0 != -1)
  {
    swift_once();
  }

  os_log(_:dso:log:_:_:)();
  v5 = v0 + *(v2 + 76);
  v7 = *(v5 + 8);
  aBlock = *v5;
  v6 = aBlock;
  v16 = v7;
  sub_100003968(&qword_100062FE8, &qword_100048BA0);
  State.wrappedValue.getter();
  [v21 invalidate];

  v8 = objc_opt_self();
  sub_100017ED0(v1, &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for RootView);
  v9 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v10 = swift_allocObject();
  sub_1000180B8(&v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9, type metadata accessor for RootView);
  v19 = sub_100017D98;
  v20 = v10;
  aBlock = _NSConcreteStackBlock;
  v16 = 1107296256;
  v17 = sub_100032E40;
  v18 = &unk_10005E3B8;
  v11 = _Block_copy(&aBlock);

  v12 = [v8 scheduledTimerWithTimeInterval:0 repeats:v11 block:30.0];
  _Block_release(v11);
  aBlock = v6;
  v16 = v7;
  v21 = v12;
  State.wrappedValue.setter();
  return result;
}

void sub_100014AC0(uint64_t a1, char a2, double a3, double a4, double a5, double a6)
{
  v8 = (a1 + *(type metadata accessor for RootView(0) + 48));
  v9 = *v8;
  v10 = v8[1];

  sub_100003968(&qword_100062880, &unk_100047D20);
  State.wrappedValue.getter();
  State.wrappedValue.setter();
  State.wrappedValue.getter();
  sub_100003968(&qword_100062F68, &qword_1000485B8);
  State.wrappedValue.getter();
  sub_1000143D4(LOBYTE(v9), a3, a4);
  safeOffset(offset:size:containerSize:foreheadWindowRect:)(v9, v10, v11, v12, a3, a4, CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height);
  State.wrappedValue.setter();
}

double sub_100014C5C(double a1, double a2)
{
  v4 = type metadata accessor for DynamicTypeSize();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100003968(&qword_100062AE8, &qword_1000480E0);
  __chkstk_darwin(v8 - 8);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v46 - v12;
  if (AXDeviceIsPad())
  {
    sub_10000B0CC(v13);
    (*(v5 + 56))(v13, 0, 1, v4);
    sub_100006098(v13, v10, &qword_100062AE8, &qword_1000480E0);
    if ((*(v5 + 48))(v10, 1, v4) == 1)
    {
      sub_100003CE8(v13, &qword_100062AE8, &qword_1000480E0);
      sub_100003CE8(v10, &qword_100062AE8, &qword_1000480E0);
    }

    else
    {
      (*(v5 + 32))(v7, v10, v4);
      if (qword_1000626F8 != -1)
      {
        swift_once();
      }

      sub_1000064FC(v4, accessibilityLayoutTextSize);
      sub_100016110(&qword_100062AF0, &type metadata accessor for DynamicTypeSize, &protocol conformance descriptor for DynamicTypeSize);
      v24 = dispatch thunk of static Comparable.< infix(_:_:)();
      (*(v5 + 8))(v7, v4);
      sub_100003CE8(v13, &qword_100062AE8, &qword_1000480E0);
      if ((v24 & 1) == 0)
      {
        v36 = [objc_opt_self() mainScreen];
        [v36 bounds];
        v38 = v37;
        v40 = v39;
        v42 = v41;
        v44 = v43;

        v49.origin.x = v38;
        v49.origin.y = v40;
        v49.size.width = v42;
        v49.size.height = v44;
        Width = CGRectGetWidth(v49);
        goto LABEL_13;
      }
    }

    IsPadMiniIdiom = AXDeviceIsPadMiniIdiom();
    v26 = [objc_opt_self() mainScreen];
    [v26 bounds];
    v28 = v27;
    v30 = v29;
    v32 = v31;
    v34 = v33;

    v48.origin.x = v28;
    v48.origin.y = v30;
    v48.size.width = v32;
    v48.size.height = v34;
    Width = CGRectGetWidth(v48);
    if (!IsPadMiniIdiom || a1 >= a2)
    {
      goto LABEL_11;
    }

LABEL_13:
    v35 = 0.84;
    return Width * v35;
  }

  if (a2 < a1)
  {
    v14 = [objc_opt_self() mainScreen];
    [v14 bounds];
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v22 = v21;

    v47.origin.x = v16;
    v47.origin.y = v18;
    v47.size.width = v20;
    v47.size.height = v22;
    Width = CGRectGetWidth(v47);
LABEL_11:
    v35 = 0.5;
    return Width * v35;
  }

  return a1;
}

void *sub_100015068(double a1, double a2)
{
  v5 = sub_100003968(&qword_100062AE8, &qword_1000480E0);
  __chkstk_darwin(v5 - 8);
  v7 = &v23 - v6;
  v8 = type metadata accessor for RootView(0);
  v9 = (v2 + v8[16]);
  v10 = *v9;
  v11 = v9[1];
  *&v25 = v10;
  *(&v25 + 1) = v11;
  sub_100003968(&qword_100062B18, &unk_100049360);
  State.wrappedValue.getter();
  v12 = v23;
  sub_10000B0CC(v7);
  v13 = type metadata accessor for DynamicTypeSize();
  (*(*(v13 - 8) + 56))(v7, 0, 1, v13);
  titleAndTextHeight(textHeight:dynamicTypeSize:)(v7, v12);
  sub_100003CE8(v7, &qword_100062AE8, &qword_1000480E0);
  v14 = (v2 + v8[12]);
  v15 = *(v14 + 2);
  v25 = *v14;
  v26 = v15;
  sub_100003968(&qword_100062880, &unk_100047D20);
  State.wrappedValue.getter();
  v16 = v23;
  v17 = v24;
  v18 = (v2 + v8[15]);
  v20 = v18[1];
  v21 = v18[2];
  *&v25 = *v18;
  v19 = v25;
  *(&v25 + 1) = v20;
  v26 = v21;
  State.wrappedValue.getter();
  safeOffset(offset:size:containerSize:foreheadWindowRect:)(v16, v17, v23, v24, a1, a2, CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height);
  *&v25 = v19;
  *(&v25 + 1) = v20;
  v26 = v21;
  return State.wrappedValue.getter();
}

void sub_1000152A8(uint64_t a1, uint64_t a2)
{
  static os_log_type_t.debug.getter();
  if (qword_1000626F0 != -1)
  {
    swift_once();
  }

  os_log(_:dso:log:_:_:)();
  if (qword_100062790 != -1)
  {
    swift_once();
  }

  v2 = static AXLTCaptionsProvider.shared;
  v3 = OBJC_IVAR___AXLTCaptionsProvider_isTranscribing;
  swift_beginAccess();
  if (*(v2 + v3) == 1)
  {
    AXLTCaptionsProvider.stopTranscribing()();
    type metadata accessor for RootView(0);
    sub_100003968(&qword_100062FF0, &unk_100048670);
    State.wrappedValue.setter();
    v4 = [objc_opt_self() defaultCenter];
    if (qword_100062700 != -1)
    {
      swift_once();
    }

    [v4 postNotificationName:qword_100065508 object:0 userInfo:0];
  }
}

void *sub_100015474(uint64_t a1, uint64_t a2)
{
  static os_log_type_t.debug.getter();
  if (qword_1000626F0 != -1)
  {
    swift_once();
  }

  os_log(_:dso:log:_:_:)();
  v3 = type metadata accessor for RootView(0);
  sub_100003968(&qword_100062F68, &qword_1000485B8);
  result = State.wrappedValue.getter();
  if (v5 != 4)
  {
    __chkstk_darwin(result);
    static Animation.default.getter();
    withAnimation<A>(_:_:)();

    sub_10000F0FC();
    return [*(a2 + *(v3 + 92)) idleSleepTimerDisabled:{0, sub_100014820()}];
  }

  return result;
}

void *sub_10001560C@<X0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  sub_100003968(&qword_100062C50, &qword_1000480D0);
  swift_storeEnumTagMultiPayload();
  v2 = type metadata accessor for RootView(0);
  v3 = v2[5];
  *(a1 + v3) = swift_getKeyPath();
  sub_100003968(&qword_1000629A8, &qword_100047E40);
  swift_storeEnumTagMultiPayload();
  v4 = v2[6];
  *(a1 + v4) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v5 = v2[7];
  *(a1 + v5) = swift_getKeyPath();
  sub_100003968(&qword_100062D78, &unk_1000484B0);
  swift_storeEnumTagMultiPayload();
  v6 = a1 + v2[8];
  State.init(wrappedValue:)();
  *v6 = v30;
  *(v6 + 1) = *(&v30 + 1);
  v7 = a1 + v2[9];
  State.init(wrappedValue:)();
  *v7 = v30;
  *(v7 + 1) = *(&v30 + 1);
  v8 = v2[10];
  State.init(wrappedValue:)();
  *(a1 + v8) = v30;
  v9 = a1 + v2[11];
  State.init(wrappedValue:)();
  *v9 = v30;
  *(v9 + 2) = v31;
  v10 = a1 + v2[12];
  type metadata accessor for CGSize(0);
  State.init(wrappedValue:)();
  *v10 = v30;
  *(v10 + 2) = v31;
  v11 = a1 + v2[13];
  State.init(wrappedValue:)();
  *v11 = v30;
  *(v11 + 2) = v31;
  v12 = a1 + v2[14];
  State.init(wrappedValue:)();
  *v12 = v30;
  *(v12 + 2) = v31;
  v13 = a1 + v2[15];
  State.init(wrappedValue:)();
  *v13 = v30;
  *(v13 + 2) = v31;
  v14 = (a1 + v2[16]);
  State.init(wrappedValue:)();
  *v14 = v30;
  v15 = (a1 + v2[17]);
  State.init(wrappedValue:)();
  *v15 = v30;
  v16 = a1 + v2[18];
  State.init(wrappedValue:)();
  *v16 = v30;
  *(v16 + 2) = v31;
  v17 = v2[19];
  sub_100003968(&qword_100062D88, &qword_100048850);
  State.init(wrappedValue:)();
  *(a1 + v17) = v30;
  v18 = a1 + v2[20];
  State.init(wrappedValue:)();
  *v18 = v30;
  *(v18 + 1) = *(&v30 + 1);
  v19 = (a1 + v2[21]);
  [objc_allocWithZone(type metadata accessor for ForeheadWindow(0)) init];
  sub_100016110(&qword_100062D90, type metadata accessor for ForeheadWindow, &unk_100047D68);
  *v19 = ObservedObject.init(wrappedValue:)();
  v19[1] = v20;
  v21 = v2[22];
  State.init(wrappedValue:)();
  *(a1 + v21) = v30;
  v22 = v2[23];
  *(a1 + v22) = [objc_allocWithZone(LCSystemUtilities) init];
  v23 = v2[24];
  if (qword_100062790 != -1)
  {
    swift_once();
  }

  v24 = (a1 + v23);
  v25 = static AXLTCaptionsProvider.shared;
  type metadata accessor for AXLTCaptionsProvider(0);
  sub_100016110(&qword_100062D98, type metadata accessor for AXLTCaptionsProvider, &protocol conformance descriptor for AXLTCaptionsProvider);
  v26 = v25;
  *v24 = ObservedObject.init(wrappedValue:)();
  v24[1] = v27;
  v28 = a1 + v2[25];
  sub_100003968(&qword_100062DA0, &unk_1000484C0);
  result = State.init(wrappedValue:)();
  *v28 = v30;
  *(v28 + 1) = *(&v30 + 1);
  return result;
}

uint64_t sub_100015B1C@<X0>(uint64_t a1@<X0>, uint64_t (**a2)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(a1 - 8);
  sub_100017ED0(v2, &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for RootView);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = sub_1000180B8(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6, type metadata accessor for RootView);
  *a2 = sub_1000169BC;
  a2[1] = v7;
  return result;
}

uint64_t sub_100015CA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(char *))
{
  v7 = sub_100003968(&qword_100062978, &qword_1000482D0);
  __chkstk_darwin(v7 - 8);
  v9 = &v11 - v8;
  sub_100006098(a1, &v11 - v8, &qword_100062978, &qword_1000482D0);
  return a5(v9);
}

uint64_t sub_100015D58(uint64_t a1)
{
  v2 = type metadata accessor for LayoutDirection();
  v3 = __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return EnvironmentValues.layoutDirection.setter();
}

unint64_t _s19LiveTranscriptionUI11WindowStateO8rawValueACSgSi_tcfC_0(unint64_t result)
{
  if (result >= 5)
  {
    return 5;
  }

  return result;
}

unint64_t sub_100015E34()
{
  result = qword_100062D80;
  if (!qword_100062D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100062D80);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ButtonType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ButtonType(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t type metadata accessor for RootView(uint64_t a1)
{
  result = qword_100062E08;
  if (!qword_100062E08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100016110(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10001616C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_100003968(&qword_100062B60, &unk_1000484D0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = sub_100003968(&qword_1000629D0, &qword_100047EB8);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = sub_100003968(&qword_100062DA8, &qword_1000484E0);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[7];
    goto LABEL_7;
  }

  v16 = *(a1 + a3[11] + 8);
  if (v16 >= 0xFFFFFFFF)
  {
    LODWORD(v16) = -1;
  }

  return (v16 + 1);
}

uint64_t sub_1000162FC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_100003968(&qword_100062B60, &unk_1000484D0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = sub_100003968(&qword_1000629D0, &qword_100047EB8);
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      result = sub_100003968(&qword_100062DA8, &qword_1000484E0);
      if (*(*(result - 8) + 84) != a3)
      {
        *(a1 + a4[11] + 8) = (a2 - 1);
        return result;
      }

      v10 = result;
      v14 = *(result - 8);
      v15 = a4[7];
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

void sub_100016474(uint64_t a1)
{
  sub_1000167AC(319, &qword_100062BD0, &type metadata accessor for DynamicTypeSize, &type metadata accessor for Environment);
  if (v1 <= 0x3F)
  {
    sub_100016938(319, &qword_100062E18, &qword_100062978, &qword_1000482D0, &type metadata accessor for Environment);
    if (v2 <= 0x3F)
    {
      sub_1000167AC(319, &qword_100062E20, &type metadata accessor for LayoutDirection, &type metadata accessor for Environment);
      if (v3 <= 0x3F)
      {
        sub_100008888(319, &qword_100062E28, &type metadata for WindowState);
        if (v4 <= 0x3F)
        {
          sub_100008888(319, &qword_100062E30, &type metadata for Int);
          if (v5 <= 0x3F)
          {
            sub_100008888(319, &qword_100062E38, &type metadata for String);
            if (v6 <= 0x3F)
            {
              sub_1000167AC(319, &qword_100062E40, type metadata accessor for CGSize, &type metadata accessor for State);
              if (v7 <= 0x3F)
              {
                sub_100008888(319, &qword_100062E48, &type metadata for CGFloat);
                if (v8 <= 0x3F)
                {
                  sub_100016938(319, &qword_100062E50, &qword_100062D88, &qword_100048850, &type metadata accessor for State);
                  if (v9 <= 0x3F)
                  {
                    sub_100008888(319, &qword_100062E58, &type metadata for Bool);
                    if (v10 <= 0x3F)
                    {
                      sub_100016810(319);
                      if (v11 <= 0x3F)
                      {
                        sub_100017E20(319, &qword_100062E68, &off_10005CE00);
                        if (v12 <= 0x3F)
                        {
                          sub_1000168A4(319);
                          if (v13 <= 0x3F)
                          {
                            sub_100016938(319, &unk_100062E78, &qword_100062DA0, &unk_1000484C0, &type metadata accessor for State);
                            if (v14 <= 0x3F)
                            {
                              swift_cvw_initStructMetadataWithLayoutString();
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_1000167AC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_100016810(uint64_t a1)
{
  if (!qword_100062E60)
  {
    type metadata accessor for ForeheadWindow(255);
    sub_100016110(&qword_100062D90, type metadata accessor for ForeheadWindow, &unk_100047D68);
    v1 = type metadata accessor for ObservedObject();
    if (!v2)
    {
      atomic_store(v1, &qword_100062E60);
    }
  }
}

void sub_1000168A4(uint64_t a1)
{
  if (!qword_100062E70)
  {
    type metadata accessor for AXLTCaptionsProvider(255);
    sub_100016110(&qword_100062D98, type metadata accessor for AXLTCaptionsProvider, &protocol conformance descriptor for AXLTCaptionsProvider);
    v1 = type metadata accessor for ObservedObject();
    if (!v2)
    {
      atomic_store(v1, &qword_100062E70);
    }
  }
}

void sub_100016938(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_100003AC0(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1000169BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for RootView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_10000CD14(a1, v6, a2);
}

uint64_t sub_100016A70(uint64_t a1, uint64_t (*a2)(uint64_t, unint64_t, uint64_t))
{
  v4 = *(type metadata accessor for RootView(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = *(v4 + 64);
  v7 = *(type metadata accessor for GeometryProxy() - 8);
  v8 = v2 + ((v5 + v6 + *(v7 + 80)) & ~*(v7 + 80));

  return a2(a1, v2 + v5, v8);
}

void sub_100016B58()
{
  type metadata accessor for RootView(0);
  type metadata accessor for GeometryProxy();
  v0 = GeometryProxy.size.getter();
  sub_100012F20(v0, v1, v2);
}

id sub_100016C20()
{
  v1 = type metadata accessor for RootView(0);
  v2 = *(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)) + *(v1 + 92));

  return [v2 idleSleepTimerDisabled:0];
}

unint64_t sub_100016CB4()
{
  result = qword_100062F70;
  if (!qword_100062F70)
  {
    sub_100003AC0(&qword_100062F38, &qword_100048588);
    sub_100016D40();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100062F70);
  }

  return result;
}

unint64_t sub_100016D40()
{
  result = qword_100062F78;
  if (!qword_100062F78)
  {
    sub_100003AC0(&qword_100062F30, &qword_100048580);
    sub_100016DCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100062F78);
  }

  return result;
}

unint64_t sub_100016DCC()
{
  result = qword_100062F80;
  if (!qword_100062F80)
  {
    sub_100003AC0(&qword_100062F28, &qword_100048578);
    sub_100016E58();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100062F80);
  }

  return result;
}

unint64_t sub_100016E58()
{
  result = qword_100062F88;
  if (!qword_100062F88)
  {
    sub_100003AC0(&qword_100062F20, &qword_100048570);
    sub_100016EE4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100062F88);
  }

  return result;
}

unint64_t sub_100016EE4()
{
  result = qword_100062F90;
  if (!qword_100062F90)
  {
    sub_100003AC0(&qword_100062F18, &qword_100048568);
    sub_100016F70();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100062F90);
  }

  return result;
}

unint64_t sub_100016F70()
{
  result = qword_100062F98;
  if (!qword_100062F98)
  {
    sub_100003AC0(&qword_100062F10, &qword_100048560);
    sub_100016FFC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100062F98);
  }

  return result;
}

unint64_t sub_100016FFC()
{
  result = qword_100062FA0;
  if (!qword_100062FA0)
  {
    sub_100003AC0(&qword_100062F08, &qword_100048558);
    sub_100017088();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100062FA0);
  }

  return result;
}

unint64_t sub_100017088()
{
  result = qword_100062FA8;
  if (!qword_100062FA8)
  {
    sub_100003AC0(&qword_100062F00, &qword_100048550);
    sub_100017140();
    sub_100003E3C(&qword_100062FD8, &qword_100062818, &qword_1000485C0, &protocol conformance descriptor for _ClipEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100062FA8);
  }

  return result;
}

unint64_t sub_100017140()
{
  result = qword_100062FB0;
  if (!qword_100062FB0)
  {
    sub_100003AC0(&qword_100062EF8, &qword_100048548);
    sub_1000171CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100062FB0);
  }

  return result;
}

unint64_t sub_1000171CC()
{
  result = qword_100062FB8;
  if (!qword_100062FB8)
  {
    sub_100003AC0(&qword_100062F58, &qword_1000485A8);
    sub_100003E3C(&qword_100062FC0, &qword_100062FC8, &qword_100048618, &protocol conformance descriptor for ZStack<A>);
    sub_100003E3C(&qword_100062FD0, &qword_100062F60, &qword_1000485B0, &protocol conformance descriptor for _BackgroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100062FB8);
  }

  return result;
}

unint64_t sub_1000172B0()
{
  result = qword_100062FE0;
  if (!qword_100062FE0)
  {
    sub_100003AC0(&qword_1000638B0, &qword_100048610);
    sub_100016110(&qword_100062C68, &type metadata accessor for AXLTCaption, &protocol conformance descriptor for NSObject);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100062FE0);
  }

  return result;
}

void sub_100017364(uint64_t a1)
{
  v3 = *(type metadata accessor for RootView(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  type metadata accessor for GeometryProxy();

  sub_100013B98(a1, v1 + v4);
}

uint64_t sub_100017440()
{
  v1 = type metadata accessor for RootView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  sub_100003968(&qword_100062C50, &qword_1000480D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for DynamicTypeSize();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
  }

  v7 = v1[5];
  sub_100003968(&qword_1000629A8, &qword_100047E40);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = type metadata accessor for UserInterfaceSizeClass();
    v9 = *(v8 - 8);
    if (!(*(v9 + 48))(v5 + v7, 1, v8))
    {
      (*(v9 + 8))(v5 + v7, v8);
    }
  }

  else
  {
  }

  v10 = v1[6];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = type metadata accessor for UserInterfaceSizeClass();
    v12 = *(v11 - 8);
    if (!(*(v12 + 48))(v5 + v10, 1, v11))
    {
      (*(v12 + 8))(v5 + v10, v11);
    }
  }

  else
  {
  }

  v13 = v1[7];
  sub_100003968(&qword_100062D78, &unk_1000484B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = type metadata accessor for LayoutDirection();
    (*(*(v14 - 8) + 8))(v5 + v13, v14);
  }

  else
  {
  }

  return _swift_deallocObject(v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 16, v2 | 7);
}

void *sub_100017884(uint64_t a1)
{
  v3 = *(type metadata accessor for RootView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_100015474(a1, v4);
}

uint64_t sub_100017924(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100017960()
{
  v1 = type metadata accessor for RootView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  sub_100003968(&qword_100062C50, &qword_1000480D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for DynamicTypeSize();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
  }

  v7 = v1[5];
  sub_100003968(&qword_1000629A8, &qword_100047E40);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = type metadata accessor for UserInterfaceSizeClass();
    v9 = *(v8 - 8);
    if (!(*(v9 + 48))(v5 + v7, 1, v8))
    {
      (*(v9 + 8))(v5 + v7, v8);
    }
  }

  else
  {
  }

  v10 = v1[6];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = type metadata accessor for UserInterfaceSizeClass();
    v12 = *(v11 - 8);
    if (!(*(v12 + 48))(v5 + v10, 1, v11))
    {
      (*(v12 + 8))(v5 + v10, v11);
    }
  }

  else
  {
  }

  v13 = v1[7];
  sub_100003968(&qword_100062D78, &unk_1000484B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = type metadata accessor for LayoutDirection();
    (*(*(v14 - 8) + 8))(v5 + v13, v14);
  }

  else
  {
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

void sub_100017D98(uint64_t a1)
{
  v3 = *(type metadata accessor for RootView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  sub_1000152A8(a1, v4);
}

uint64_t sub_100017E20(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

unint64_t sub_100017E68()
{
  result = qword_100063060;
  if (!qword_100063060)
  {
    sub_100017E20(255, &qword_100063050, NSRunLoop_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100063060);
  }

  return result;
}

uint64_t sub_100017ED0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100017F38(double a1)
{
  v2 = type metadata accessor for IconView(0);
  v3 = *(*(v2 - 8) + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(*(v2 - 8) + 64);
  v6 = v1 + v4;

  v7 = *(v2 + 48);
  sub_100003968(&qword_100062D78, &unk_1000484B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = type metadata accessor for LayoutDirection();
    (*(*(v8 - 8) + 8))(v6 + v7, v8);
  }

  else
  {
  }

  return _swift_deallocObject(v1, v4 + v5, v3 | 7);
}

uint64_t sub_1000180B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100018120(uint64_t a1, double a2)
{
  type metadata accessor for IconView(0);

  return sub_10001E920();
}

double sub_100018190(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    (*(v1 + 8))();
  }

  return result;
}

uint64_t sub_100018200(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_100018260()
{
  type metadata accessor for RootView(0);
  type metadata accessor for GeometryProxy();
  GeometryProxy.size.getter();
  sub_10000ED0C(v0, v1);
}

unint64_t sub_100018330()
{
  result = qword_1000630D0;
  if (!qword_1000630D0)
  {
    sub_100003AC0(&qword_1000630C8, &qword_100048730);
    sub_1000183BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000630D0);
  }

  return result;
}

unint64_t sub_1000183BC()
{
  result = qword_1000630D8;
  if (!qword_1000630D8)
  {
    sub_100003AC0(&qword_1000630E0, &qword_100048738);
    sub_100018448();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000630D8);
  }

  return result;
}

unint64_t sub_100018448()
{
  result = qword_1000630E8;
  if (!qword_1000630E8)
  {
    sub_100003AC0(&qword_1000630F0, &qword_100048740);
    sub_1000184D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000630E8);
  }

  return result;
}

unint64_t sub_1000184D4()
{
  result = qword_1000630F8;
  if (!qword_1000630F8)
  {
    sub_100003AC0(&qword_100063100, &qword_100048748);
    sub_100018C04(&qword_100063108, &qword_100063110, &unk_100048750, sub_10001858C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000630F8);
  }

  return result;
}

unint64_t sub_10001858C()
{
  result = qword_100063118;
  if (!qword_100063118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100063118);
  }

  return result;
}

unint64_t sub_1000185E0()
{
  result = qword_100063120;
  if (!qword_100063120)
  {
    sub_100003AC0(&qword_100063070, &qword_1000486D8);
    sub_100003E3C(&qword_100062878, &qword_1000627F8, &qword_100047CD8, &protocol conformance descriptor for _EndedGesture<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100063120);
  }

  return result;
}

double sub_1000186A8(uint64_t a1)
{
  *(a1 + 208) = 0;
  result = 0.0;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 216) = -256;
  return result;
}

unint64_t sub_1000186FC()
{
  result = qword_100063150;
  if (!qword_100063150)
  {
    sub_100003AC0(&qword_100063140, &qword_100048778);
    sub_100018788();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100063150);
  }

  return result;
}

unint64_t sub_100018788()
{
  result = qword_100063158;
  if (!qword_100063158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100063158);
  }

  return result;
}

unint64_t sub_1000187DC()
{
  result = qword_100063160;
  if (!qword_100063160)
  {
    sub_100003AC0(&qword_100063148, &qword_100048780);
    sub_100018868();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100063160);
  }

  return result;
}

unint64_t sub_100018868()
{
  result = qword_100063168;
  if (!qword_100063168)
  {
    sub_100003AC0(&qword_100063170, &qword_100048788);
    sub_1000188F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100063168);
  }

  return result;
}

unint64_t sub_1000188F4()
{
  result = qword_100063178;
  if (!qword_100063178)
  {
    sub_100003AC0(&qword_100063180, &qword_100048790);
    sub_100018980();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100063178);
  }

  return result;
}

unint64_t sub_100018980()
{
  result = qword_100063188;
  if (!qword_100063188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100063188);
  }

  return result;
}

void sub_1000189DC()
{
  type metadata accessor for RootView(0);
  type metadata accessor for GeometryProxy();
  GeometryProxy.size.getter();
  sub_100010430(1, v0, v1);
}

unint64_t sub_100018AA8()
{
  result = qword_100063190;
  if (!qword_100063190)
  {
    sub_100003AC0(&qword_1000630A0, &qword_100048708);
    sub_100003AC0(&qword_100063198, &qword_100048798);
    sub_100003AC0(&qword_1000627F8, &qword_100047CD8);
    sub_100018C04(&qword_1000631A0, &qword_100063198, &qword_100048798, sub_100018CB4);
    sub_100003E3C(&qword_100062878, &qword_1000627F8, &qword_100047CD8, &protocol conformance descriptor for _EndedGesture<A>);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100063190);
  }

  return result;
}

uint64_t sub_100018C04(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100003AC0(a2, a3);
    a4();
    sub_100003E3C(&qword_100062868, &qword_100062870, &qword_100047D18, &protocol conformance descriptor for _ContentShapeModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100018CB4()
{
  result = qword_1000631A8;
  if (!qword_1000631A8)
  {
    sub_100003AC0(&qword_1000631B0, &qword_1000487A0);
    sub_100018D40();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000631A8);
  }

  return result;
}

unint64_t sub_100018D40()
{
  result = qword_1000631B8;
  if (!qword_1000631B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000631B8);
  }

  return result;
}

uint64_t sub_100018DAC()
{
  v1 = type metadata accessor for RootView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v19 = *(*(v1 - 1) + 64);
  v21 = type metadata accessor for GeometryProxy();
  v4 = *(v21 - 8);
  v5 = *(v4 + 80);
  v20 = *(v4 + 64);
  v22 = v0;
  v6 = v0 + v3;
  sub_100003968(&qword_100062C50, &qword_1000480D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = type metadata accessor for DynamicTypeSize();
    (*(*(v7 - 8) + 8))(v0 + v3, v7);
  }

  else
  {
  }

  v8 = v1[5];
  sub_100003968(&qword_1000629A8, &qword_100047E40);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = type metadata accessor for UserInterfaceSizeClass();
    v10 = *(v9 - 8);
    if (!(*(v10 + 48))(v6 + v8, 1, v9))
    {
      (*(v10 + 8))(v6 + v8, v9);
    }
  }

  else
  {
  }

  v11 = v1[6];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = type metadata accessor for UserInterfaceSizeClass();
    v13 = *(v12 - 8);
    if (!(*(v13 + 48))(v6 + v11, 1, v12))
    {
      (*(v13 + 8))(v6 + v11, v12);
    }
  }

  else
  {
  }

  v14 = v1[7];
  sub_100003968(&qword_100062D78, &unk_1000484B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = type metadata accessor for LayoutDirection();
    (*(*(v15 - 8) + 8))(v6 + v14, v15);
  }

  else
  {
  }

  v16 = v2 | v5;
  v17 = (v3 + v19 + v5) & ~v5;

  (*(v4 + 8))(v22 + v17, v21);

  return _swift_deallocObject(v22, v17 + v20, v16 | 7);
}

uint64_t sub_100019294(uint64_t (*a1)(unint64_t, uint64_t))
{
  v2 = *(type metadata accessor for RootView(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(type metadata accessor for GeometryProxy() - 8);
  v6 = v1 + ((v3 + v4 + *(v5 + 80)) & ~*(v5 + 80));

  return a1(v1 + v3, v6);
}

uint64_t property wrapper backing initializer of AXLTProviderCaptionsView.provider(uint64_t a1)
{
  type metadata accessor for AXLTCaptionsProvider(0);
  sub_1000194F4();

  return ObservedObject.init(wrappedValue:)();
}

unint64_t sub_1000194F4()
{
  result = qword_100062D98;
  if (!qword_100062D98)
  {
    type metadata accessor for AXLTCaptionsProvider(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100062D98);
  }

  return result;
}

double AXLTProviderCaptionsView.body.getter@<D0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v15 = *(v1 + 16);
  v9 = *(v1 + 32);
  v10 = *(v1 + 24);
  v3 = *(v1 + 40);
  v4 = *(v1 + 56);
  v8 = *(v1 + 48);
  v5 = *(v1 + 72);
  v6 = *(v1 + 80);
  v13 = *(v1 + 88);
  v14 = *(v1 + 64);
  v11 = *(v1 + 112);

  v12 = *(v1 + 96);

  State.init(wrappedValue:)();
  State.init(wrappedValue:)();
  sub_100003968(&qword_100062D88, &qword_100048850);
  State.init(wrappedValue:)();
  State.init(wrappedValue:)();
  State.init(wrappedValue:)();
  result = v16;
  *a1 = v16;
  *(a1 + 8) = v16;
  *(a1 + 16) = v15;
  *(a1 + 24) = v10;
  *(a1 + 32) = v9;
  *(a1 + 40) = v3;
  *(a1 + 48) = v8;
  *(a1 + 56) = v4;
  *(a1 + 64) = v14;
  *(a1 + 72) = v5;
  *(a1 + 80) = v6;
  *(a1 + 88) = v13;
  *(a1 + 96) = v12;
  *(a1 + 112) = v11;
  *(a1 + 120) = LOBYTE(v16);
  *(a1 + 128) = v17;
  *(a1 + 136) = LOBYTE(v16);
  *(a1 + 144) = v17;
  *(a1 + 152) = xmmword_1000487B0;
  *(a1 + 168) = 0x3FF0000000000000;
  *(a1 + 176) = v16;
  *(a1 + 184) = v17;
  *(a1 + 192) = LOBYTE(v16);
  *(a1 + 200) = v17;
  *(a1 + 208) = v16;
  *(a1 + 216) = v17;
  return result;
}

void sub_1000197E8(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v3;
}

uint64_t sub_10001986C(uint64_t *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v3 = v2;
  return static Published.subscript.setter();
}

void sub_1000198E8(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v3;
}

uint64_t sub_10001996C(uint64_t *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return static Published.subscript.setter();
}

__n128 sub_1000199FC(uint64_t a1, __int128 *a2)
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
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 14);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_100019A28(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
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

uint64_t sub_100019A70(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
      *(result + 120) = 1;
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

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100019AE0()
{
  result = qword_1000631D0;
  if (!qword_1000631D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000631D0);
  }

  return result;
}

void sub_100019BC4()
{
  static os_log_type_t.default.getter();
  if (qword_1000626F0 != -1)
  {
    swift_once();
  }

  os_log(_:dso:log:_:_:)();
  exit(1);
}

uint64_t sub_100019C48(uint64_t a1)
{
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = __CocoaSet.startIndex.getter();
    v5 = v4;
    v6 = __CocoaSet.endIndex.getter();
    v8 = v7;
    v9 = static __CocoaSet.Index.== infix(_:_:)();
    sub_10001AB48(v6, v8, 1);
    if (v9)
    {
LABEL_3:
      sub_10001AB48(v3, v5, v2 != 0);
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

  sub_10001A130(v3, v5, v2 != 0, a1);
  v12 = v11;
  sub_10001AB48(v3, v5, v2 != 0);
  return v12;
}

void sub_100019D64()
{
  v0 = qword_1000631E0;
  qword_1000631E0 = 0;

  static os_log_type_t.default.getter();
  if (qword_1000626F0 != -1)
  {
    swift_once();
  }

  os_log(_:dso:log:_:_:)();
  v1 = [objc_opt_self() sharedApplication];
  [v1 terminateWithSuccess];
}

unint64_t sub_100019E4C()
{
  sub_100003968(&unk_1000632A0, &qword_100048958);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100048930;
  *(inited + 32) = 0x646568636E75616CLL;
  *(inited + 40) = 0xE800000000000000;
  sub_100017E20(0, &qword_100063AB0, NSNumber_ptr);
  *(inited + 48) = NSNumber.init(BOOLeanLiteral:)(1);
  v1 = sub_100029708(inited);
  swift_setDeallocating();
  sub_10001AB54(inited + 32);
  return v1;
}

Class sub_100019F0C(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  if (v3)
  {
    sub_100017E20(0, &qword_100063298, NSObject_ptr);
    v4.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v4.super.isa = 0;
  }

  return v4.super.isa;
}

id sub_10001A0C8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LTSceneDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_10001A130(unint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      __CocoaSet.element(at:)();
      sub_100017E20(0, &qword_100063288, UIScene_ptr);
      swift_dynamicCast();
      return;
    }

    goto LABEL_23;
  }

  if (a3)
  {
    sub_100017E20(0, &qword_100063288, UIScene_ptr);
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

void sub_10001A354()
{
  v5 = [objc_opt_self() standardUserDefaults];
  v0 = String._bridgeToObjectiveC()();
  v1 = [v5 BOOLForKey:v0];

  if (v1)
  {
  }

  else
  {
    v2 = String._bridgeToObjectiveC()();
    aBlock[4] = sub_100019E4C;
    aBlock[5] = 0;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100019F0C;
    aBlock[3] = &unk_10005E5D8;
    v3 = _Block_copy(aBlock);
    AnalyticsSendEventLazy();
    _Block_release(v3);

    static os_log_type_t.debug.getter();
    if (qword_1000626F0 != -1)
    {
      swift_once();
    }

    os_log(_:dso:log:_:_:)();
    v4 = String._bridgeToObjectiveC()();
    [v5 setBool:1 forKey:v4];

    [v5 synchronize];
  }
}

void sub_10001A568(void *a1)
{
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (v3)
  {
    v4 = v3;
    v5 = objc_allocWithZone(type metadata accessor for LTWindow());
    v17 = a1;
    v6 = [v5 initWithWindowScene:v4];
    v7 = *(v1 + OBJC_IVAR____TtC19LiveTranscriptionUI15LTSceneDelegate_window);
    *(v1 + OBJC_IVAR____TtC19LiveTranscriptionUI15LTSceneDelegate_window) = v6;

    v8 = CFNotificationCenterGetDarwinNotifyCenter();
    if (kAXSLiveTranscriptionEnabledDidChangeNotification)
    {
      v9 = v8;
      v10 = *(v1 + OBJC_IVAR____TtC19LiveTranscriptionUI15LTSceneDelegate_featureEnabledChanged);
      v11 = kAXSLiveTranscriptionEnabledDidChangeNotification;
      CFNotificationCenterAddObserver(v9, 0, v10, v11, 0, CFNotificationSuspensionBehaviorDeliverImmediately);

      v12 = CFNotificationCenterGetDarwinNotifyCenter();
      v13 = *(v1 + OBJC_IVAR____TtC19LiveTranscriptionUI15LTSceneDelegate_systemLanguageChanged);
      v14 = String._bridgeToObjectiveC()();
      CFNotificationCenterAddObserver(v12, 0, v13, v14, 0, CFNotificationSuspensionBehaviorDeliverImmediately);

      v15 = CFNotificationCenterGetDarwinNotifyCenter();
      v16 = String._bridgeToObjectiveC()();
      CFNotificationCenterAddObserver(v15, 0, v13, v16, 0, CFNotificationSuspensionBehaviorDeliverImmediately);

      static os_log_type_t.debug.getter();
      if (qword_1000626F0 != -1)
      {
        swift_once();
      }

      os_log(_:dso:log:_:_:)();
      sub_10001A354();
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_10001A7A4()
{
  if (qword_1000631E0)
  {
    [qword_1000631E0 invalidate];
    v0 = qword_1000631E0;
  }

  else
  {
    v0 = 0;
  }

  qword_1000631E0 = 0;

  v1 = _AXSLiveTranscriptionEnabled();
  v2 = [objc_opt_self() sharedApplication];
  v3 = [v2 connectedScenes];

  sub_100017E20(0, &qword_100063288, UIScene_ptr);
  sub_10001AAC8();
  v4 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v5 = sub_100019C48(v4);

  if (v5)
  {
    v6 = [v5 delegate];

    if (v6)
    {
      type metadata accessor for LTSceneDelegate();
      v7 = swift_dynamicCastClass();
      if (v7)
      {
        if (v1)
        {
          v8 = 1.0;
        }

        else
        {
          v8 = 0.0;
        }

        v9 = *(v7 + OBJC_IVAR____TtC19LiveTranscriptionUI15LTSceneDelegate_window);
        if (v9)
        {
          [v9 setAlpha:v8];
        }

        v10 = static os_log_type_t.default.getter();
        if (qword_1000626F0 != -1)
        {
          swift_once();
        }

        v11 = qword_1000654E8;
        if (os_log_type_enabled(qword_1000654E8, v10))
        {
          v12 = swift_slowAlloc();
          v13 = swift_slowAlloc();
          v21[0] = v13;
          *v12 = 136315138;
          v14 = Double.description.getter();
          v16 = sub_100031EB4(v14, v15, v21);

          *(v12 + 4) = v16;
          _os_log_impl(&_mh_execute_header, v11, v10, "Window visible: %s", v12, 0xCu);
          sub_100018190(v13);
        }
      }

      swift_unknownObjectRelease();
    }
  }

  if (!v1)
  {
    v17 = objc_opt_self();
    v21[4] = sub_100019D64;
    v21[5] = 0;
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 1107296256;
    v21[2] = sub_100032E40;
    v21[3] = &unk_10005E5B0;
    v18 = _Block_copy(v21);
    v19 = [v17 scheduledTimerWithTimeInterval:0 repeats:v18 block:10.0];
    _Block_release(v18);
    v20 = qword_1000631E0;
    qword_1000631E0 = v19;
  }
}

unint64_t sub_10001AAC8()
{
  result = qword_100063290;
  if (!qword_100063290)
  {
    sub_100017E20(255, &qword_100063288, UIScene_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100063290);
  }

  return result;
}

uint64_t sub_10001AB30(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10001AB48(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

uint64_t sub_10001AB54(uint64_t a1)
{
  v2 = sub_100003968(&unk_1000632B0, &unk_100048960);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10001ABD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for GeometryProxy();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  *a3 = static VerticalAlignment.top.getter();
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  v9 = sub_100003968(&qword_100063320, &qword_100048A28);
  sub_10001ADDC(a2, a1, a3 + *(v9 + 44));
  *(a3 + *(sub_100003968(&qword_100063328, &qword_100048A30) + 36)) = 0;
  v10 = *(a2 + 40);
  v11 = static Edge.Set.all.getter();
  v12 = a3 + *(sub_100003968(&qword_100063330, &qword_100048A38) + 36);
  *v12 = v11;
  *(v12 + 8) = 0x4020000000000000;
  *(v12 + 16) = v10;
  *(v12 + 24) = 0x4020000000000000;
  *(v12 + 32) = v10;
  *(v12 + 40) = 0;
  (*(v7 + 16))(&v19[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], a1, v6);
  v13 = (*(v7 + 80) + 96) & ~*(v7 + 80);
  v14 = swift_allocObject();
  v15 = *(a2 + 48);
  *(v14 + 3) = *(a2 + 32);
  *(v14 + 4) = v15;
  *(v14 + 5) = *(a2 + 64);
  v16 = *(a2 + 16);
  *(v14 + 1) = *a2;
  *(v14 + 2) = v16;
  (*(v7 + 32))(&v14[v13], &v19[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], v6);
  v17 = (a3 + *(sub_100003968(&qword_100063338, &unk_100048A40) + 36));
  *v17 = sub_10001BB60;
  v17[1] = v14;
  v17[2] = 0;
  v17[3] = 0;
  return sub_10001B930(a2, v19);
}

uint64_t sub_10001ADDC@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v65 = a2;
  v62 = a3;
  v63 = type metadata accessor for ButtonView(0) - 8;
  __chkstk_darwin(v63);
  v61 = v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = v52 - v6;
  v66 = sub_100003968(&qword_100062B30, &unk_100048010) - 8;
  __chkstk_darwin(v66);
  v60 = v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v68 = v52 - v10;
  __chkstk_darwin(v11);
  v13 = v52 - v12;
  __chkstk_darwin(v14);
  v16 = v52 - v15;
  v91 = *a1;
  v92 = *(a1 + 16);
  v69 = *a1;
  LOBYTE(v70) = *(a1 + 16);
  v52[1] = sub_100003968(&qword_100062B38, &qword_1000493B0);
  Binding.projectedValue.getter();
  v17 = v84;
  v18 = v85;
  v19 = v86;
  v67 = xmmword_100047F00;
  *v16 = xmmword_100047F00;
  LOBYTE(v84) = 0;
  State.init(wrappedValue:)();
  v20 = *(&v69 + 1);
  v16[96] = v69;
  *(v16 + 13) = v20;
  v84 = 0;
  State.init(wrappedValue:)();
  v21 = *(&v69 + 1);
  *(v16 + 14) = v69;
  *(v16 + 15) = v21;
  v84 = 0;
  State.init(wrappedValue:)();
  v22 = *(&v69 + 1);
  *(v16 + 16) = v69;
  *(v16 + 17) = v22;
  AccessibilityFocusState.init<>()();
  v16[16] = 0;
  v55 = nullsub_1;
  *(v16 + 6) = nullsub_1;
  *(v16 + 7) = 0;
  *(v16 + 3) = v17;
  *(v16 + 4) = v18;
  v16[40] = v19;
  *(v16 + 8) = 0x69662E6573756170;
  *(v16 + 9) = 0xEA00000000006C6CLL;
  *(v16 + 10) = 0x69662E6573756170;
  *(v16 + 11) = 0xEA00000000006C6CLL;
  v90 = a1[4];
  v69 = a1[4];
  v64 = sub_100003968(&qword_100062B18, &unk_100049360);
  State.wrappedValue.getter();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v23 = &v16[*(v66 + 44)];
  v24 = v76;
  *v23 = v75;
  *(v23 + 1) = v24;
  *(v23 + 2) = v77;
  GeometryProxy.size.getter();
  v69 = v90;
  State.wrappedValue.getter();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v58 = v80;
  v59 = v78;
  v56 = v83;
  v57 = v82;
  v95 = 1;
  v94 = v79;
  v93 = v81;
  v69 = v91;
  LOBYTE(v70) = v92;
  Binding.projectedValue.getter();
  v25 = v84;
  v26 = v85;
  LOBYTE(v18) = v86;
  *v7 = v67;
  LOBYTE(v84) = 0;
  State.init(wrappedValue:)();
  v27 = *(&v69 + 1);
  v7[96] = v69;
  *(v7 + 13) = v27;
  v84 = 0;
  State.init(wrappedValue:)();
  v28 = *(&v69 + 1);
  *(v7 + 14) = v69;
  *(v7 + 15) = v28;
  v84 = 0;
  State.init(wrappedValue:)();
  v29 = *(&v69 + 1);
  *(v7 + 16) = v69;
  *(v7 + 17) = v29;
  AccessibilityFocusState.init<>()();
  v7[16] = 1;
  *(v7 + 6) = v55;
  *(v7 + 7) = 0;
  *(v7 + 3) = v25;
  *(v7 + 4) = v26;
  v7[40] = v18;
  *(v7 + 8) = 0x6C6C69662E63696DLL;
  *(v7 + 9) = 0xE800000000000000;
  *(v7 + 10) = 0x6C6C69662E63696DLL;
  *(v7 + 11) = 0xE800000000000000;
  GeometryProxy.size.getter();
  v69 = v90;
  State.wrappedValue.getter();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v65 = v84;
  v54 = v88;
  v55 = v86;
  v53 = v89;
  v98 = 1;
  v97 = v85;
  v96 = v87;
  v69 = v91;
  LOBYTE(v70) = v92;
  Binding.projectedValue.getter();
  v30 = v72;
  v31 = v73;
  LOBYTE(v18) = v74;
  v32 = swift_allocObject();
  v33 = a1[3];
  v32[3] = a1[2];
  v32[4] = v33;
  v32[5] = a1[4];
  v34 = a1[1];
  v32[1] = *a1;
  v32[2] = v34;
  *v13 = v67;
  LOBYTE(v72) = 0;
  sub_10001B930(a1, &v69);
  State.init(wrappedValue:)();
  v35 = *(&v69 + 1);
  v13[96] = v69;
  *(v13 + 13) = v35;
  v72 = 0;
  State.init(wrappedValue:)();
  v36 = *(&v69 + 1);
  *(v13 + 14) = v69;
  *(v13 + 15) = v36;
  v72 = 0;
  State.init(wrappedValue:)();
  v37 = *(&v69 + 1);
  *(v13 + 16) = v69;
  *(v13 + 17) = v37;
  AccessibilityFocusState.init<>()();
  v13[16] = 2;
  *(v13 + 6) = sub_1000082EC;
  *(v13 + 7) = v32;
  *(v13 + 3) = v30;
  *(v13 + 4) = v31;
  v13[40] = v18;
  *(v13 + 8) = 0xD000000000000028;
  *(v13 + 9) = 0x800000010004A630;
  *(v13 + 10) = 0xD000000000000028;
  *(v13 + 11) = 0x800000010004A630;
  v69 = v90;
  State.wrappedValue.getter();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v38 = &v13[*(v66 + 44)];
  v39 = v70;
  *v38 = v69;
  v38[1] = v39;
  v38[2] = v71;
  v40 = v68;
  sub_10001BC18(v16, v68);
  v41 = v95;
  LOBYTE(v30) = v94;
  LODWORD(v63) = v93;
  v42 = v61;
  sub_100008314(v7, v61);
  LODWORD(v64) = v98;
  LODWORD(v66) = v97;
  LODWORD(v67) = v96;
  v43 = v60;
  sub_10001BC18(v13, v60);
  v44 = v62;
  sub_10001BC18(v40, v62);
  v45 = sub_100003968(&qword_100063340, &qword_100048A50);
  v46 = v44 + v45[12];
  *v46 = 0;
  *(v46 + 8) = v41;
  v47 = v58;
  *(v46 + 16) = v59;
  *(v46 + 24) = v30;
  *(v46 + 32) = v47;
  *(v46 + 40) = v63;
  v48 = v56;
  *(v46 + 48) = v57;
  *(v46 + 56) = v48;
  sub_100008314(v42, v44 + v45[16]);
  v49 = v44 + v45[20];
  *v49 = 0;
  *(v49 + 8) = v64;
  *(v49 + 16) = v65;
  *(v49 + 24) = v66;
  *(v49 + 32) = v55;
  *(v49 + 40) = v67;
  v50 = v53;
  *(v49 + 48) = v54;
  *(v49 + 56) = v50;
  sub_10001BC18(v43, v44 + v45[24]);
  sub_10001BC88(v13);
  sub_100008378(v7);
  sub_10001BC88(v16);
  sub_10001BC88(v43);
  sub_100008378(v42);
  return sub_10001BC88(v68);
}

double sub_10001B5E8(uint64_t a1)
{
  GeometryProxy.size.getter();
  sub_100003968(&qword_100062B18, &unk_100049360);
  State.wrappedValue.setter();
  return result;
}

uint64_t sub_10001B650@<X0>(uint64_t (**a1)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)@<X8>)
{
  v3 = v1[3];
  v10[2] = v1[2];
  v10[3] = v3;
  v10[4] = v1[4];
  v4 = v1[1];
  v10[0] = *v1;
  v10[1] = v4;
  v5 = swift_allocObject();
  v6 = v1[3];
  *(v5 + 3) = v1[2];
  *(v5 + 4) = v6;
  *(v5 + 5) = v1[4];
  v7 = v1[1];
  *(v5 + 1) = *v1;
  *(v5 + 2) = v7;
  *a1 = sub_10001BA7C;
  a1[1] = v5;
  return sub_10001B930(v10, &v9);
}

__n128 sub_10001B6DC@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned __int8 a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  if (AXDeviceIsPad())
  {
    v12 = 50.0;
  }

  else
  {
    v13 = [objc_opt_self() mainScreen];
    [v13 bounds];
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v21 = v20;

    v44.origin.x = v15;
    v44.origin.y = v17;
    v44.size.width = v19;
    v44.size.height = v21;
    v12 = CGRectGetWidth(v44) / 5.6 + 8.0;
  }

  *&v30 = 0;
  State.init(wrappedValue:)();
  v22 = v35;
  v23 = v36;
  if (a4)
  {
    v24 = swift_allocObject();
    *(v24 + 16) = a4;
    *(v24 + 24) = a5;
    v25 = sub_10000840C;
  }

  else
  {
    v25 = nullsub_1;
    v24 = 0;
  }

  v26 = swift_allocObject();
  *(v26 + 16) = v25;
  *(v26 + 24) = v24;
  *&v30 = a1;
  *(&v30 + 1) = a2;
  v31.n128_u8[0] = a3;
  v31.n128_u64[1] = sub_10001B908;
  *&v32 = v26;
  *(&v32 + 1) = v12;
  v33 = xmmword_100048970;
  *&v34 = v22;
  *(&v34 + 1) = v23;
  v35 = a1;
  v36 = a2;
  v37 = a3;
  v38 = sub_10001B908;
  v39 = v26;
  v40 = v12;
  v41 = xmmword_100048970;
  v42 = v22;
  v43 = v23;
  sub_10001B930(&v30, &v29);
  sub_10001B968(&v35);
  v27 = v33;
  *(a6 + 32) = v32;
  *(a6 + 48) = v27;
  *(a6 + 64) = v34;
  result = v31;
  *a6 = v30;
  *(a6 + 16) = result;
  return result;
}

uint64_t sub_10001B8D0()
{

  return _swift_deallocObject(v0, 32, 7);
}

__n128 sub_10001B998(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_10001B9B4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_10001B9FC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10001BA84()
{
  v1 = type metadata accessor for GeometryProxy();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 96) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

double sub_10001BB60()
{
  type metadata accessor for GeometryProxy();

  return sub_10001B5E8(v0 + 16);
}

uint64_t sub_10001BBC8()
{

  return _swift_deallocObject(v0, 96, 7);
}

uint64_t sub_10001BC18(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003968(&qword_100062B30, &unk_100048010);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10001BC88(uint64_t a1)
{
  v2 = sub_100003968(&qword_100062B30, &unk_100048010);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10001BCF4()
{
  result = qword_100063348;
  if (!qword_100063348)
  {
    sub_100003AC0(&qword_100063350, &qword_100048A58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100063348);
  }

  return result;
}

uint64_t sub_10001BD60@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v131 = a2;
  v4 = type metadata accessor for IconView(0);
  v107 = *(v4 - 8);
  v134 = *(v107 + 64);
  __chkstk_darwin(v4 - 8);
  v98 = &v97 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = type metadata accessor for GlobalCoordinateSpace();
  __chkstk_darwin(v104);
  v100 = &v97 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = type metadata accessor for DragGesture();
  v108 = *(v105 - 8);
  __chkstk_darwin(v105);
  v8 = &v97 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = sub_100003968(&qword_1000627F0, &qword_100047CD0);
  v112 = *(v111 - 8);
  __chkstk_darwin(v111);
  v103 = &v97 - v9;
  v113 = sub_100003968(&qword_1000627F8, &qword_100047CD8);
  v133 = *(v113 - 8);
  __chkstk_darwin(v113);
  v106 = &v97 - v10;
  v11 = sub_100003968(&qword_100063430, &qword_100048B30);
  __chkstk_darwin(v11 - 8);
  v13 = (&v97 - v12);
  v14 = sub_100003968(&qword_100063438, &qword_100048B38);
  v15 = v14 - 8;
  __chkstk_darwin(v14);
  v17 = &v97 - v16;
  v18 = sub_100003968(&qword_100063440, &qword_100048B40);
  v99 = v18;
  __chkstk_darwin(v18);
  v20 = &v97 - v19;
  v109 = sub_100003968(&qword_100063448, &qword_100048B48);
  v110 = *(v109 - 8);
  __chkstk_darwin(v109);
  v101 = &v97 - v21;
  v117 = sub_100003968(&qword_100063450, &qword_100048B50);
  v116 = *(v117 - 8);
  __chkstk_darwin(v117);
  v102 = &v97 - v22;
  v114 = sub_100003968(&qword_100063458, &qword_100048B58);
  __chkstk_darwin(v114);
  v115 = &v97 - v23;
  v118 = sub_100003968(&qword_100063460, &qword_100048B60);
  __chkstk_darwin(v118);
  v120 = &v97 - v24;
  v119 = sub_100003968(&qword_100063468, &qword_100048B68);
  __chkstk_darwin(v119);
  v122 = &v97 - v25;
  v121 = sub_100003968(&qword_100063470, &qword_100048B70);
  __chkstk_darwin(v121);
  v124 = &v97 - v26;
  v123 = sub_100003968(&qword_100063478, &qword_100048B78);
  __chkstk_darwin(v123);
  v125 = &v97 - v27;
  v126 = sub_100003968(&qword_100063480, &qword_100048B80);
  __chkstk_darwin(v126);
  v128 = &v97 - v28;
  v130 = sub_100003968(&qword_100063488, &qword_100048B88);
  __chkstk_darwin(v130);
  v127 = &v97 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v129 = &v97 - v31;
  *v13 = static Alignment.center.getter();
  v13[1] = v32;
  v33 = sub_100003968(&qword_100063490, &qword_100048B90);
  sub_10001CF20(a1, (v13 + *(v33 + 44)));
  AXDeviceIsPad();
  AXDeviceIsPad();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  sub_10000BB84(v13, v17, &qword_100063430, &qword_100048B30);
  v34 = &v17[*(v15 + 44)];
  v35 = v140;
  *v34 = v139;
  *(v34 + 1) = v35;
  *(v34 + 2) = v141;
  v97 = v20;
  sub_10000BB84(v17, v20, &qword_100063438, &qword_100048B38);
  v20[*(v18 + 36)] = 0;
  static CoordinateSpaceProtocol<>.global.getter();
  DragGesture.init<A>(minimumDistance:coordinateSpace:)();
  v132 = a1;
  v36 = v98;
  sub_10001F36C(a1, v98);
  v37 = *(v107 + 80);
  v38 = (v37 + 16) & ~v37;
  v39 = swift_allocObject();
  sub_10001F3D4(v36, v39 + v38);
  sub_100003A28(&qword_100062830, &type metadata accessor for DragGesture, &protocol conformance descriptor for DragGesture);
  sub_100003A28(&qword_100062838, &type metadata accessor for DragGesture.Value, &protocol conformance descriptor for DragGesture.Value);
  v40 = v103;
  v41 = v105;
  Gesture<>.onChanged(_:)();

  (*(v108 + 8))(v8, v41);
  v42 = v36;
  sub_10001F36C(a1, v36);
  v107 = v38;
  v43 = swift_allocObject();
  sub_10001F3D4(v36, v43 + v38);
  sub_100003E3C(&qword_100062840, &qword_1000627F0, &qword_100047CD0, &protocol conformance descriptor for _ChangedGesture<A>);
  v44 = v106;
  v45 = v111;
  Gesture.onEnded(_:)();

  (*(v112 + 8))(v40, v45);
  static GestureMask.all.getter();
  v46 = sub_10001F56C();
  v47 = sub_100003E3C(&qword_100062878, &qword_1000627F8, &qword_100047CD8, &protocol conformance descriptor for _EndedGesture<A>);
  v48 = v101;
  v49 = v99;
  v50 = v113;
  v51 = v97;
  View.gesture<A>(_:including:)();
  (*(v133 + 8))(v44, v50);
  sub_100003CE8(v51, &qword_100063440, &qword_100048B40);
  sub_10001F36C(v132, v36);
  v52 = v107;
  v133 = v37;
  v53 = swift_allocObject();
  v54 = v42;
  sub_10001F3D4(v42, v53 + v52);
  v135 = v49;
  v136 = v50;
  v137 = v46;
  v138 = v47;
  v55 = v102;
  swift_getOpaqueTypeConformance2();
  v56 = v109;
  View.onTapGesture(count:perform:)();

  (*(v110 + 8))(v48, v56);
  v57 = objc_opt_self();
  v58 = [v57 defaultCenter];
  if (qword_100062728 != -1)
  {
    swift_once();
  }

  v59 = v114;
  v60 = v115;
  NSNotificationCenter.publisher(for:object:)();

  v61 = v132;
  v62 = v54;
  sub_10001F36C(v132, v54);
  v63 = swift_allocObject();
  sub_10001F3D4(v54, v63 + v52);
  (*(v116 + 32))(v60, v55, v117);
  v64 = (v60 + *(v59 + 56));
  *v64 = sub_10001F744;
  v64[1] = v63;
  v65 = [v57 defaultCenter];
  if (qword_100062700 != -1)
  {
    swift_once();
  }

  v66 = v118;
  v67 = v120;
  NSNotificationCenter.publisher(for:object:)();

  sub_10001F36C(v61, v54);
  v68 = swift_allocObject();
  sub_10001F3D4(v54, v68 + v52);
  sub_10000BB84(v60, v67, &qword_100063458, &qword_100048B58);
  v69 = (v67 + *(v66 + 56));
  *v69 = sub_10001FE98;
  v69[1] = v68;
  v70 = [v57 defaultCenter];
  v71 = v119;
  v72 = v57;
  v73 = v122;
  NSNotificationCenter.publisher(for:object:)();

  sub_10001F36C(v61, v62);
  v74 = swift_allocObject();
  sub_10001F3D4(v62, v74 + v52);
  sub_10000BB84(v67, v73, &qword_100063460, &qword_100048B60);
  v75 = (v73 + *(v71 + 56));
  *v75 = sub_10001F7AC;
  v75[1] = v74;
  v76 = [v72 defaultCenter];
  if (qword_100062748 != -1)
  {
    swift_once();
  }

  v77 = v121;
  v78 = v124;
  NSNotificationCenter.publisher(for:object:)();

  sub_10001F36C(v61, v62);
  v79 = swift_allocObject();
  sub_10001F3D4(v62, v79 + v52);
  sub_10000BB84(v73, v78, &qword_100063468, &qword_100048B68);
  v80 = (v78 + *(v77 + 56));
  *v80 = sub_10001F7C4;
  v80[1] = v79;
  sub_10001F36C(v61, v62);
  v81 = swift_allocObject();
  sub_10001F3D4(v62, v81 + v52);
  v82 = v125;
  sub_10000BB84(v78, v125, &qword_100063470, &qword_100048B70);
  v83 = (v82 + *(v123 + 36));
  *v83 = sub_10001F7DC;
  v83[1] = v81;
  v83[2] = 0;
  v83[3] = 0;
  sub_10001F36C(v61, v62);
  v84 = swift_allocObject();
  sub_10001F3D4(v62, v84 + v52);
  v85 = v82;
  v86 = v128;
  sub_10000BB84(v85, v128, &qword_100063478, &qword_100048B78);
  v87 = (v86 + *(v126 + 36));
  *v87 = 0;
  v87[1] = 0;
  v87[2] = sub_10001F838;
  v87[3] = v84;
  v135 = static AXLTUtilities.AXLTLocString(_:)();
  v136 = v88;
  sub_10000B6A0();
  v89 = Text.init<A>(_:)();
  v91 = v90;
  v93 = v92;
  sub_10001F898();
  v94 = v127;
  View.accessibility(label:)();
  sub_10000B6F4(v89, v91, v93 & 1);

  sub_100003CE8(v86, &qword_100063480, &qword_100048B80);
  v95 = v129;
  ModifiedContent<>.accessibility(identifier:)();
  sub_100003CE8(v94, &qword_100063488, &qword_100048B88);
  ModifiedContent<>.accessibilityCustomAttribute(_:value:)();
  return sub_100003CE8(v95, &qword_100063488, &qword_100048B88);
}

uint64_t sub_10001CF20@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v40 = a2;
  v38 = type metadata accessor for AccessibilityTraits();
  v36 = *(v38 - 8);
  __chkstk_darwin(v38);
  v34 = v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100003968(&qword_1000634E0, &qword_100048BB0);
  __chkstk_darwin(v4 - 8);
  v6 = v33 - v5;
  v7 = type metadata accessor for Image.ResizingMode();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100003968(&qword_1000634E8, &qword_100048BB8);
  __chkstk_darwin(v11 - 8);
  v39 = v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v37 = v33 - v14;
  static Color.white.getter();
  v35 = Color.opacity(_:)();

  AXDeviceIsPad();
  AXDeviceIsPad();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  *(v49 + 6) = *(&v49[3] + 6);
  *(&v49[1] + 6) = *(&v49[4] + 6);
  *(&v49[2] + 6) = *(&v49[5] + 6);
  v15 = *(a1 + 80);
  v33[1] = a1;
  v16 = *(a1 + 88);
  LOBYTE(v44[0]) = v15;
  *(&v44[0] + 1) = v16;
  sub_100003968(&qword_100062FF0, &unk_100048670);
  State.wrappedValue.getter();
  Image.init(_internalSystemName:)();
  (*(v8 + 104))(v10, enum case for Image.ResizingMode.stretch(_:), v7);
  v17 = 0.0;
  Image.resizable(capInsets:resizingMode:)();

  (*(v8 + 8))(v10, v7);
  LOBYTE(v44[0]) = v15;
  *(&v44[0] + 1) = v16;
  State.wrappedValue.getter();
  v18 = 1;
  if ((v41[0] & 1) == 0)
  {
    static SymbolRenderingMode.hierarchical.getter();
    v18 = 0;
  }

  v19 = type metadata accessor for SymbolRenderingMode();
  (*(*(v19 - 8) + 56))(v6, v18, 1, v19);
  v20 = Image.symbolRenderingMode(_:)();

  sub_100003CE8(v6, &qword_1000634E0, &qword_100048BB0);
  sub_10001D618();
  sub_10001D618();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v48 = 1;
  *&v47[6] = *(&v49[6] + 6);
  *&v47[22] = *(&v49[7] + 6);
  *&v47[38] = *(&v49[8] + 6);
  LOBYTE(v44[0]) = v15;
  *(&v44[0] + 1) = v16;
  State.wrappedValue.getter();
  if ((v41[0] & 1) == 0)
  {
    v17 = sub_10001D618() / 15.0;
  }

  v21 = sub_10001D618() / 15.0;
  v22 = static Color.white.getter();
  KeyPath = swift_getKeyPath();
  v41[0] = v20;
  LOWORD(v41[1]) = 1;
  *(&v41[1] + 2) = *v47;
  *(&v41[2] + 2) = *&v47[16];
  *(&v41[3] + 2) = *&v47[32];
  *&v41[4] = *&v47[46];
  *(&v41[4] + 1) = v17;
  *&v42 = v21;
  *(&v42 + 1) = KeyPath;
  v43 = v22;
  v24 = v34;
  static AccessibilityTraits.isImage.getter();
  sub_100003968(&qword_1000634F0, &unk_100048BF0);
  sub_10001FCD0();
  v25 = v37;
  View.accessibility(removeTraits:)();
  (*(v36 + 8))(v24, v38);
  v44[4] = v41[4];
  v44[5] = v42;
  v45 = v43;
  v44[0] = v41[0];
  v44[1] = v41[1];
  v44[2] = v41[2];
  v44[3] = v41[3];
  sub_100003CE8(v44, &qword_1000634F0, &unk_100048BF0);
  v26 = v39;
  sub_100006098(v25, v39, &qword_1000634E8, &qword_100048BB8);
  v27 = v35;
  *&v46[0] = v35;
  WORD4(v46[0]) = 256;
  *(v46 + 10) = v49[0];
  *(&v46[1] + 10) = v49[1];
  *(&v46[2] + 10) = v49[2];
  *(&v46[3] + 1) = *(&v49[2] + 14);
  v28 = v46[1];
  v29 = v40;
  *v40 = v46[0];
  v29[1] = v28;
  v30 = v46[3];
  v29[2] = v46[2];
  v29[3] = v30;
  v31 = sub_100003968(&qword_100063510, &qword_100048C08);
  sub_100006098(v26, v29 + *(v31 + 48), &qword_1000634E8, &qword_100048BB8);
  sub_100006098(v46, v41, &qword_100063518, &qword_100048C10);
  sub_100003CE8(v25, &qword_1000634E8, &qword_100048BB8);
  sub_100003CE8(v26, &qword_1000634E8, &qword_100048BB8);
  *&v41[0] = v27;
  WORD4(v41[0]) = 256;
  *(v41 + 10) = v49[0];
  *(&v41[1] + 10) = v49[1];
  *(&v41[2] + 10) = v49[2];
  *(&v41[3] + 1) = *(&v49[2] + 14);
  return sub_100003CE8(v41, &qword_100063518, &qword_100048C10);
}

double sub_10001D618()
{
  sub_100003968(&qword_100062FF0, &unk_100048670);
  State.wrappedValue.getter();
  IsPad = AXDeviceIsPad();
  result = 32.1428571;
  if (IsPad)
  {
    result = 40.4761905;
  }

  v2 = 34.0;
  if (!IsPad)
  {
    v2 = 27.0;
  }

  if (v3)
  {
    return v2;
  }

  return result;
}

void sub_10001D6A4(uint64_t a1, double *a2)
{
  v3 = type metadata accessor for LayoutDirection();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v31 - v8;
  v10 = *(a2 + 1);
  v11 = *(a2 + 2);
  v32 = *a2;
  v33 = v10;
  v34 = v11;
  sub_100003968(&qword_1000634D8, &qword_100048BA8);
  v12 = Binding.wrappedValue.getter();
  if (v37 < 1.0)
  {
    __chkstk_darwin(v12);
    static Animation.default.getter();
    withAnimation<A>(_:_:)();
  }

  DragGesture.Value.translation.getter();
  v14 = v13;
  v16 = v15;
  v37 = v13;
  v38 = v15;
  type metadata accessor for IconView(0);
  sub_10000B0F4(v9);
  (*(v4 + 104))(v6, enum case for LayoutDirection.rightToLeft(_:), v3);
  v17 = static LayoutDirection.== infix(_:_:)();
  v18 = *(v4 + 8);
  v18(v6, v3);
  v18(v9, v3);
  if (v17)
  {
    v14 = -v14;
    v37 = v14;
  }

  v19 = *(a2 + 7);
  v20 = *(a2 + 8);
  v21 = *(a2 + 9);
  v32 = v19;
  v33 = v20;
  v34 = v21;
  sub_100003968(&qword_100062880, &unk_100047D20);
  State.wrappedValue.getter();
  v39.width = 0.0;
  v39.height = 0.0;
  if (CGSizeEqualToSize(v36, v39) || (v32 = v19, v33 = v20, v34 = v21, State.wrappedValue.getter(), vabdd_f64(v36.width, v14) >= 2.0) || (v32 = v19, v33 = v20, v34 = v21, State.wrappedValue.getter(), vabdd_f64(v36.height, v16) >= 2.0))
  {
    v32 = v19;
    v33 = v20;
    v34 = v21;
    State.wrappedValue.getter();
    v40.width = 0.0;
    v40.height = 0.0;
    if (CGSizeEqualToSize(v36, v40))
    {
      v22 = *(a2 + 3);
      v23 = *(a2 + 4);
      v24 = *(a2 + 5);
      v25 = *(a2 + 6);
      v32 = v22;
      v33 = v23;
      v34 = v24;
      v35 = v25;
      sub_100003968(&qword_100062888, &qword_100048A70);
      Binding.wrappedValue.getter();
      v26 = v36;
      if (AXDeviceIsPad())
      {
        v27 = 68.0;
      }

      else
      {
        v27 = 54.0;
      }

      safeOffset(offset:size:containerSize:foreheadWindowRect:)(v26.width, v26.height, v27, v27, a2[12], a2[13], CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height);
      v32 = v22;
      v33 = v23;
      v34 = v24;
      v35 = v25;
      v36.width = v28;
      v36.height = v29;
      Binding.wrappedValue.setter();
      v32 = v22;
      v33 = v23;
      v34 = v24;
      v35 = v25;
      Binding.wrappedValue.getter();
      v32 = v19;
      v33 = v20;
      v34 = v21;
      State.wrappedValue.setter();
    }

    static Animation.linear(duration:)();
    Animation.delay(_:)();

    Animation.repeatCount(_:autoreverses:)();

    __chkstk_darwin(v30);
    withAnimation<A>(_:_:)();
  }
}