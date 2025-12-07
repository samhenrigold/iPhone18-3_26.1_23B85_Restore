void AXHMEnableControlCenterModule()
{
  v0 = +[NSUserDefaults standardUserDefaults];
  v1 = [v0 BOOLForKey:@"AXHapticMusicNewCCModuleEnabled"];

  if ((v1 & 1) == 0)
  {
    v2 = +[NSUserDefaults standardUserDefaults];
    v3 = [v2 BOOLForKey:@"AXHapticMusicNewCCModuleEnabled"];

    if ((v3 & 1) == 0)
    {
      v16 = 0;
      v17 = &v16;
      v18 = 0x2050000000;
      v4 = qword_39870;
      v19 = qword_39870;
      if (!qword_39870)
      {
        v11 = _NSConcreteStackBlock;
        v12 = 3221225472;
        v13 = sub_22A4;
        v14 = &unk_34C60;
        v15 = &v16;
        sub_22A4(&v11);
        v4 = v17[3];
      }

      v5 = v4;
      _Block_object_dispose(&v16, 8);
      v6 = [[v4 alloc] initWithIntent:2 controlKind:@"com.apple.accessibility.musichaptics" controlType:1 extensionBundleIdentifier:@"com.apple.AccessibilityUIServer.AccessibilityControlsExtension" containerBundleIdentifier:@"com.apple.AccessibilityUIServer" size:2];
      v16 = 0;
      v17 = &v16;
      v18 = 0x2050000000;
      v7 = qword_39880;
      v19 = qword_39880;
      if (!qword_39880)
      {
        v11 = _NSConcreteStackBlock;
        v12 = 3221225472;
        v13 = sub_246C;
        v14 = &unk_34C60;
        v15 = &v16;
        sub_246C(&v11);
        v7 = v17[3];
      }

      v8 = v7;
      _Block_object_dispose(&v16, 8);
      v9 = [v7 sharedInstance];
      [v9 handleIconElementRequest:v6 completionHandler:&stru_34C38];

      v10 = +[NSUserDefaults standardUserDefaults];
      [v10 setBool:1 forKey:@"AXHapticMusicNewCCModuleEnabled"];
    }
  }
}

void sub_2100(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_211C(id a1, BOOL a2, NSError *a3)
{
  v3 = a2;
  v4 = a3;
  v5 = AXLogHapticMusic();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412546;
    v7 = v4;
    v8 = 1024;
    v9 = v3;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Added Haptic Music: %@ success: %d", &v6, 0x12u);
  }
}

id AXHMPattern(void *a1, double a2)
{
  v3 = a1;
  v4 = [CHHapticPattern instancesRespondToSelector:"initWithDictionary:intensityScale:error:"];
  v5 = [CHHapticPattern alloc];
  if (v4)
  {
    v11 = 0;
    v6 = &v11;
    v7 = [v5 initWithDictionary:v3 intensityScale:&v11 error:a2];
  }

  else
  {
    v10 = 0;
    v6 = &v10;
    v7 = [v5 initWithDictionary:v3 error:&v10];
  }

  v8 = v7;

  return v8;
}

Class sub_22A4(uint64_t a1)
{
  sub_22FC();
  result = objc_getClass("CCSIconElementRequest");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_2B770();
  }

  qword_39870 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_22FC()
{
  v1[0] = 0;
  if (!qword_39878)
  {
    v1[1] = _NSConcreteStackBlock;
    v1[2] = 3221225472;
    v1[3] = sub_23F8;
    v1[4] = &unk_34C98;
    v1[5] = v1;
    v2 = off_34C80;
    v3 = 0;
    qword_39878 = _sl_dlopen();
  }

  v0 = v1[0];
  if (!qword_39878)
  {
    v0 = abort_report_np("%s", v1[0]);
    goto LABEL_7;
  }

  if (v1[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t sub_23F8(uint64_t a1)
{
  result = _sl_dlopen();
  qword_39878 = result;
  return result;
}

Class sub_246C(uint64_t a1)
{
  sub_22FC();
  result = objc_getClass("CCSControlCenterService");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_2B798();
  }

  qword_39880 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_24C4()
{
  v0 = sub_2B8B0();
  sub_2B158(v0, HMLog);
  sub_25AC(v0, HMLog);
  return sub_2B8A0();
}

uint64_t HMLog.unsafeMutableAddressor()
{
  if (qword_39890 != -1)
  {
    swift_once();
  }

  v0 = sub_2B8B0();

  return sub_25AC(v0, HMLog);
}

uint64_t sub_25AC(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_25E4()
{
  sub_2BCF0(28);

  v2._countAndFlagsBits = sub_2BDB0();
  sub_2BA40(v2);

  v3._countAndFlagsBits = 0x3A63727369202CLL;
  v3._object = 0xE700000000000000;
  sub_2BA40(v3);
  sub_2BA40(*(v0 + 8));
  return 0xD000000000000011;
}

uint64_t sub_26B0(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = a1[3];
  v4 = a1[4];
  v3 = a1[5];
  v5 = a1[6];
  v6 = a2[3];
  v7 = a2[4];
  v8 = a2[5];
  v9 = a2[6];
  if ((a1[1] != a2[1] || a1[2] != a2[2]) && (sub_2BDC0() & 1) == 0)
  {
    return 0;
  }

  if ((v2 != v6 || v4 != v7) && (sub_2BDC0() & 1) == 0)
  {
    return 0;
  }

  if (v3 == v8 && v5 == v9)
  {
    return 1;
  }

  return sub_2BDC0();
}

Swift::Int sub_27B8()
{
  v1 = *v0;
  sub_2BE40();
  sub_2BE50(v1);
  sub_2BA20();
  sub_2BA20();
  sub_2BA20();
  return sub_2BE60();
}

uint64_t sub_2854(uint64_t a1)
{
  sub_2BE50(*v1);
  sub_2BA20();
  sub_2BA20();

  return sub_2BA20();
}

Swift::Int sub_28E0(uint64_t a1)
{
  v2 = *v1;
  sub_2BE40();
  sub_2BE50(v2);
  sub_2BA20();
  sub_2BA20();
  sub_2BA20();
  return sub_2BE60();
}

id sub_2978()
{
  result = [objc_allocWithZone(type metadata accessor for AXHapticMusicServer()) init];
  qword_398A0 = result;
  return result;
}

id variable initialization expression of AXHapticMusicServer.isActive()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = [v0 hapticMusicActive];

  return v1;
}

void variable initialization expression of AXHapticMusicServer.trackIdentifier(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0xE000000000000000;
  a1[3] = 0;
  a1[4] = 0xE000000000000000;
  a1[5] = 0;
  a1[6] = 0xE000000000000000;
}

uint64_t variable initialization expression of AXHapticMusicServer.queue()
{
  v7 = sub_2BBC0();
  v0 = *(v7 - 8);
  __chkstk_darwin(v7);
  v2 = v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_2BB90();
  __chkstk_darwin(v3);
  v4 = sub_2B920();
  __chkstk_darwin(v4 - 8);
  v6[1] = sub_2ACCC(0, &qword_39120, OS_dispatch_queue_ptr);
  sub_2B910();
  v8 = &_swiftEmptyArrayStorage;
  sub_254AC(&qword_39128, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_2CC4(&qword_39130, &qword_2CD90);
  sub_25B40(&qword_39138, &qword_39130, &qword_2CD90, &protocol conformance descriptor for [A]);
  sub_2BC80();
  (*(v0 + 104))(v2, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v7);
  return sub_2BBF0();
}

uint64_t sub_2CC4(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_2D0C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t variable initialization expression of AXHapticMusicServer.ahapAvailableQueue()
{
  v7 = sub_2BBC0();
  v0 = *(v7 - 8);
  __chkstk_darwin(v7);
  v2 = v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_2BB90();
  __chkstk_darwin(v3);
  v4 = sub_2B920();
  __chkstk_darwin(v4 - 8);
  v6[1] = sub_2ACCC(0, &qword_39120, OS_dispatch_queue_ptr);
  sub_2B910();
  v8 = &_swiftEmptyArrayStorage;
  sub_254AC(&qword_39128, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_2CC4(&qword_39130, &qword_2CD90);
  sub_25B40(&qword_39138, &qword_39130, &qword_2CD90, &protocol conformance descriptor for [A]);
  sub_2BC80();
  (*(v0 + 104))(v2, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v7);
  return sub_2BBF0();
}

uint64_t variable initialization expression of AXHapticMusicServer.ahapAvailableCacheQueue()
{
  v7 = sub_2BBC0();
  v0 = *(v7 - 8);
  __chkstk_darwin(v7);
  v2 = v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_2BB90();
  __chkstk_darwin(v3);
  v4 = sub_2B920();
  __chkstk_darwin(v4 - 8);
  v6[1] = sub_2ACCC(0, &qword_39120, OS_dispatch_queue_ptr);
  sub_2B910();
  v8 = &_swiftEmptyArrayStorage;
  sub_254AC(&qword_39128, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_2CC4(&qword_39130, &qword_2CD90);
  sub_25B40(&qword_39138, &qword_39130, &qword_2CD90, &protocol conformance descriptor for [A]);
  sub_2BC80();
  (*(v0 + 104))(v2, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v7);
  return sub_2BBF0();
}

uint64_t sub_327C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  if (a2 == 1)
  {
    v8 = sub_20FC4(a4, a5);
    v10 = v9;

    if (v10)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v13 = *v6;
      v20 = *v6;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_237B0();
        v13 = v20;
      }

      v14 = *(*(v13 + 56) + 24 * v8 + 16);

      result = sub_225FC(v8, v13);
      *v6 = v13;
    }
  }

  else
  {
    v19 = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v5;
    sub_22E0C(a1, a2, a3, a4, a5, v19);

    *v5 = v21;
  }

  return result;
}

uint64_t sub_339C(uint64_t a1, Swift::UInt64 *a2)
{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *v2;
    sub_235B8(a1, a2, isUniquelyReferenced_nonNull_native);
    result = sub_29C28(a2);
    *v2 = v13;
  }

  else
  {
    v8 = sub_20F00(a2);
    v10 = v9;
    result = sub_29C28(a2);
    if (v10)
    {
      v11 = swift_isUniquelyReferenced_nonNull_native();
      v12 = *v3;
      v14 = *v3;
      if (!v11)
      {
        sub_23FC4();
        v12 = v14;
      }

      result = sub_22BB4(v8, v12);
      *v3 = v12;
    }
  }

  return result;
}

uint64_t sub_34A4()
{

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t variable initialization expression of AXHapticMusicServer.statusObservers()
{
  type metadata accessor for AXHapticMusicServer.StatusObservers();
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v0 + 112) = sub_2457C(&_swiftEmptyArrayStorage);
  return v0;
}

id static AXHapticMusicServer.sharedInstance()()
{
  if (qword_39898 != -1)
  {
    swift_once();
  }

  v0 = swift_dynamicCastClassUnconditional();

  return v0;
}

uint64_t sub_35DC()
{
  v1 = sub_2B8B0();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_opt_self() sharedInstance];
  v41 = OBJC_IVAR___AXHapticMusicServer_isSessionValid;
  v0[OBJC_IVAR___AXHapticMusicServer_isSessionValid] = 1;
  v38 = v5;
  v6 = [v5 currentRoute];
  v7 = [v6 outputs];

  v37 = sub_2ACCC(0, &qword_39530, AVAudioSessionPortDescription_ptr);
  v8 = sub_2BAA0();

  v39 = v2;
  v40 = v1;
  v42 = v4;
  v43 = v0;
  v9 = v8 & 0xFFFFFFFFFFFFFF8;
  if (v8 >> 62)
  {
LABEL_25:
    v10 = sub_2BD60();
  }

  else
  {
    v10 = *(&dword_10 + (v8 & 0xFFFFFFFFFFFFFF8));
  }

  v11 = 0;
  v44 = v8;
  v12 = v8 & 0xC000000000000001;
  while (v10 != v11)
  {
    if (v12)
    {
      v13 = sub_2BD00();
    }

    else
    {
      if (v11 >= *(v9 + 16))
      {
        goto LABEL_24;
      }

      v13 = *(v44 + 8 * v11 + 32);
    }

    v14 = v13;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    v8 = [v13 portType];
    v15 = sub_2B9F0();
    v17 = v16;
    if (v15 == sub_2B9F0() && v17 == v18)
    {

LABEL_17:
      v43[v41] = 0;
      break;
    }

    v20 = sub_2BDC0();

    ++v11;
    if (v20)
    {
      goto LABEL_17;
    }
  }

  if (qword_39890 != -1)
  {
    swift_once();
  }

  v21 = v40;
  v22 = sub_25AC(v40, HMLog);
  swift_beginAccess();
  v23 = v39;
  v24 = v42;
  (*(v39 + 16))(v42, v22, v21);
  v25 = v43;
  v26 = v43;

  v27 = sub_2B890();
  v28 = sub_2BB40();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = v23;
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v45 = v31;
    *v30 = 67109378;
    *(v30 + 4) = v25[v41];

    *(v30 + 8) = 2080;
    v32 = sub_2BAB0();
    v34 = v33;

    v35 = sub_20958(v32, v34, &v45);

    *(v30 + 10) = v35;
    _os_log_impl(&dword_0, v27, v28, "Handling media session valid status: %{BOOL}d %s", v30, 0x12u);
    sub_2566C(v31);

    return (*(v29 + 8))(v42, v21);
  }

  else
  {

    return (*(v23 + 8))(v24, v21);
  }
}

uint64_t sub_3A5C()
{
  v1 = sub_2B8F0();
  v32 = *(v1 - 8);
  v33 = v1;
  __chkstk_darwin(v1);
  v31 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_2B920();
  v29 = *(v3 - 8);
  v30 = v3;
  __chkstk_darwin(v3);
  v28 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2B940();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v27 - v10;
  v12 = [objc_allocWithZone(STMediaStatusDomain) init];
  v13 = OBJC_IVAR___AXHapticMusicServer_mediaDomain;
  v14 = *&v0[OBJC_IVAR___AXHapticMusicServer_mediaDomain];
  *&v0[OBJC_IVAR___AXHapticMusicServer_mediaDomain] = v12;

  v15 = *&v0[v13];
  if (v15)
  {
    v16 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v39 = sub_25DDC;
    v40 = v16;
    aBlock = _NSConcreteStackBlock;
    v36 = 1107296256;
    v37 = sub_46D8;
    v38 = &unk_35428;
    v17 = _Block_copy(&aBlock);
    v18 = v15;

    [v18 observeData:v17];
    _Block_release(v17);
  }

  v19 = *&v0[OBJC_IVAR___AXHapticMusicServer_queue];
  sub_2B930();
  sub_2B950();
  v27 = *(v6 + 8);
  v27(v9, v5);
  v20 = swift_allocObject();
  *(v20 + 16) = v0;
  v39 = sub_2B61C;
  v40 = v20;
  aBlock = _NSConcreteStackBlock;
  v36 = 1107296256;
  v37 = sub_2B614;
  v38 = &unk_35478;
  v21 = _Block_copy(&aBlock);
  v22 = v0;
  v23 = v28;
  sub_2B900();
  v34 = &_swiftEmptyArrayStorage;
  sub_254AC(&qword_39160, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_2CC4(&qword_39168, &qword_2CDD0);
  sub_25B40(&qword_39170, &qword_39168, &qword_2CDD0, &protocol conformance descriptor for [A]);
  v24 = v31;
  v25 = v33;
  sub_2BC80();
  sub_2BBA0();
  _Block_release(v21);

  (*(v32 + 8))(v24, v25);
  (*(v29 + 8))(v23, v30);
  v27(v11, v5);
}

char *sub_3F1C(uint64_t a1)
{
  v1 = sub_2B8F0();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2B920();
  v32 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2B940();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v25 - v13;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v16 = result;
    v30 = *&result[OBJC_IVAR___AXHapticMusicServer_queue];
    sub_2B930();
    v29 = v14;
    sub_2B950();
    v17 = *(v9 + 8);
    v28 = v9 + 8;
    v31 = v17;
    v17(v12, v8);
    v18 = swift_allocObject();
    *(v18 + 16) = v16;
    aBlock[4] = sub_25DE4;
    aBlock[5] = v18;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2B614;
    aBlock[3] = &unk_354C8;
    v19 = _Block_copy(aBlock);
    v27 = v16;
    sub_2B900();
    v33 = &_swiftEmptyArrayStorage;
    sub_254AC(&qword_39160, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    v20 = v1;
    v25 = v5;
    v26 = v8;
    v21 = v32;
    v22 = v7;
    sub_2CC4(&qword_39168, &qword_2CDD0);
    sub_25B40(&qword_39170, &qword_39168, &qword_2CDD0, &protocol conformance descriptor for [A]);
    sub_2BC80();
    v24 = v29;
    v23 = v30;
    sub_2BBA0();
    _Block_release(v19);

    (*(v2 + 8))(v4, v20);
    (*(v21 + 8))(v22, v25);
    v31(v24, v26);
  }

  return result;
}

void sub_432C(void *a1)
{
  v2 = v1;
  v4 = sub_2B8B0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v8 = OBJC_IVAR___AXHapticMusicServer_isCameraActive;
    v34 = v2[OBJC_IVAR___AXHapticMusicServer_isCameraActive];
    v9 = a1;
    v10 = [v9 cameraAttributions];
    sub_2ACCC(0, &qword_39538, STMediaStatusDomainCameraCaptureAttribution_ptr);
    v11 = sub_2BAA0();

    if (v11 >> 62)
    {
      v12 = sub_2BD60();
    }

    else
    {
      v12 = *(&dword_10 + (v11 & 0xFFFFFFFFFFFFFF8));
    }

    v2[v8] = v12 > 0;
    if (qword_39890 != -1)
    {
      swift_once();
    }

    v13 = sub_25AC(v4, HMLog);
    swift_beginAccess();
    (*(v5 + 16))(v7, v13, v4);
    v14 = v9;
    v15 = v2;
    v16 = sub_2B890();
    v17 = sub_2BB40();

    v18 = os_log_type_enabled(v16, v17);
    v33 = v14;
    if (v18)
    {
      v19 = swift_slowAlloc();
      v31 = v5;
      v20 = v19;
      v21 = swift_slowAlloc();
      v32 = v8;
      v22 = v21;
      v35 = v21;
      *v20 = 67109378;
      *(v20 + 4) = v2[v32];

      *(v20 + 8) = 2080;
      v23 = [v14 cameraAttributions];
      v30 = v4;
      v24 = v23;
      sub_2BAA0();

      v25 = sub_2BAB0();
      v27 = v26;

      v28 = sub_20958(v25, v27, &v35);

      *(v20 + 10) = v28;
      _os_log_impl(&dword_0, v16, v17, "Camera active: %{BOOL}d for: %s", v20, 0x12u);
      sub_2566C(v22);
      v8 = v32;

      (*(v31 + 8))(v7, v30);
    }

    else
    {

      (*(v5 + 8))(v7, v4);
    }

    if (v34 != v2[v8])
    {
      sub_4760(0xD000000000000016, 0x800000000002E020);
    }
  }

  else
  {
    v2[OBJC_IVAR___AXHapticMusicServer_isCameraActive] = 0;
  }
}

void sub_46D8(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  v6 = a2;
  swift_unknownObjectRetain();
  v5(a2, a3);

  swift_unknownObjectRelease();
}

void sub_4760(uint64_t a1, void *a2)
{
  v39._countAndFlagsBits = a1;
  v39._object = a2;
  v43 = sub_2B8B0();
  v3 = *(v43 - 8);
  v4 = __chkstk_darwin(v43);
  v38 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v8 = &v36 - v7;
  __chkstk_darwin(v6);
  v10 = &v36 - v9;
  v11 = [objc_opt_self() processInfo];
  v12 = [v11 thermalState];

  if (qword_39890 != -1)
  {
    swift_once();
  }

  v13 = v43;
  v14 = sub_25AC(v43, HMLog);
  swift_beginAccess();
  v15 = *(v3 + 16);
  v40 = v14;
  v41 = v15;
  v15(v10, v14, v13);
  v42 = v2;
  v16 = sub_2B890();
  v17 = sub_2BB70();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = v12;
    v19 = v42;
    v37 = v8;
    v20 = v3;
    v21 = v12 != &dword_0 + 3;
    v22 = swift_slowAlloc();
    *v22 = 67110400;
    *(v22 + 4) = _AXSHapticMusicEnabled() != 0;
    *(v22 + 8) = 1024;
    *(v22 + 10) = *(&v19->isa + OBJC_IVAR___AXHapticMusicServer_isActive);
    *(v22 + 14) = 1024;
    *(v22 + 16) = *(&v19->isa + OBJC_IVAR___AXHapticMusicServer_isSessionValid);
    *(v22 + 20) = 1024;
    *(v22 + 22) = v21;
    v3 = v20;
    v8 = v37;
    *(v22 + 26) = 1024;
    *(v22 + 28) = *(&v19->isa + OBJC_IVAR___AXHapticMusicServer_siriActive);
    *(v22 + 32) = 1024;
    *(v22 + 34) = *(&v19->isa + OBJC_IVAR___AXHapticMusicServer_isCameraActive);

    _os_log_impl(&dword_0, v16, v17, "Checking status of server: Enabled: %{BOOL}d, active: %{BOOL}d, session valid: %{BOOL}d, thermal state: %{BOOL}d, siri active: %{BOOL}d, camera active: %{BOOL}d", v22, 0x26u);
  }

  else
  {

    v16 = v42;
    v18 = v12;
  }

  v23 = v10;
  v24 = *(v3 + 8);
  v24(v23, v43);
  if (v18 == &dword_0 + 3 || (*(&v42->isa + OBJC_IVAR___AXHapticMusicServer_siriActive) & 1) != 0 || *(&v42->isa + OBJC_IVAR___AXHapticMusicServer_isCameraActive) == 1)
  {
    v41(v8, v40, v43);
    v25 = sub_2B890();
    v26 = sub_2BB70();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_0, v25, v26, "System in state where haptics can't play", v27, 2u);
    }

    v24(v8, v43);
    v28 = v42;
    AXHapticMusicServer.stopHapticMusic()();
    v29 = *(&v28->isa + OBJC_IVAR___AXHapticMusicServer_engine);
    if (v29)
    {
      v30 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v48 = sub_2B748;
      v49 = v30;
      aBlock = _NSConcreteStackBlock;
      v45 = 1107296256;
      v31 = &unk_356D0;
LABEL_13:
      v46 = sub_2B744;
      v47 = v31;
      v32 = _Block_copy(&aBlock);
      v33 = v29;

      [v33 stopWithCompletionHandler:v32];
      _Block_release(v32);
    }
  }

  else if (_AXSHapticMusicEnabled() && *(&v42->isa + OBJC_IVAR___AXHapticMusicServer_isActive) == 1 && *(&v42->isa + OBJC_IVAR___AXHapticMusicServer_isSessionValid) == 1)
  {
    AXHMEnableControlCenterModule();
    sub_4E94();
    if (*(&v42->isa + OBJC_IVAR___AXHapticMusicServer_isEnabled) == 1)
    {
      sub_54CC(v39._countAndFlagsBits, v39._object);
    }

    else
    {
      sub_5A68(1);
      AXHapticMusicServer.startHapticMusic(codeFlowIdentifier:)(v39);
    }
  }

  else
  {
    v34 = v42;
    sub_5A68(0);
    AXHapticMusicServer.stopHapticMusic()();
    v29 = *(&v34->isa + OBJC_IVAR___AXHapticMusicServer_engine);
    if (v29)
    {
      v35 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v48 = sub_2B748;
      v49 = v35;
      aBlock = _NSConcreteStackBlock;
      v45 = 1107296256;
      v31 = &unk_356A8;
      goto LABEL_13;
    }
  }
}

void sub_4E94()
{
  v2 = sub_2B8B0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR___AXHapticMusicServer_engine;
  if (!*&v0[OBJC_IVAR___AXHapticMusicServer_engine])
  {
    v7 = [objc_opt_self() auxiliarySession];
    v8 = OBJC_IVAR___AXHapticMusicServer_audioSession;
    v9 = *&v0[OBJC_IVAR___AXHapticMusicServer_audioSession];
    *&v0[OBJC_IVAR___AXHapticMusicServer_audioSession] = v7;

    v10 = *&v0[v8];
    if (v10)
    {
      aBlock = 0;
      if (![v10 setCategory:AVAudioSessionCategoryAmbient withOptions:1 error:&aBlock])
      {
        v41 = aBlock;
        sub_2B7D0();

        swift_willThrow();
        return;
      }

      v11 = aBlock;
    }

    v12 = [objc_opt_self() defaultCenter];
    [v12 addObserver:v0 selector:"handleAudioSessionInterruptionNotificationWithNotification:" name:AVAudioSessionInterruptionNotification object:*&v0[v8]];

    v13 = *&v0[v8];
    v14 = objc_allocWithZone(CHHapticEngine);
    aBlock = 0;
    v15 = v13;
    v16 = [v14 initWithAudioSession:v15 error:&aBlock];
    v17 = aBlock;
    if (v16)
    {

      v18 = *&v0[v6];
      *&v0[v6] = v16;

      if (qword_39890 != -1)
      {
        swift_once();
      }

      v19 = sub_25AC(v2, HMLog);
      swift_beginAccess();
      (*(v3 + 16))(v5, v19, v2);
      v20 = v0;
      v21 = v0;
      v22 = sub_2B890();
      v23 = sub_2BB70();
      v44 = v20;

      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v43 = v1;
        v25 = v24;
        v26 = swift_slowAlloc();
        *v25 = 138412290;
        v27 = *&v21[v6];
        *(v25 + 4) = v27;
        *v26 = v27;
        v28 = v27;
        _os_log_impl(&dword_0, v22, v23, "Make engine: %@", v25, 0xCu);
        sub_2AF20(v26, &qword_391A8, &qword_2CDE8);
      }

      (*(v3 + 8))(v5, v2);
      v29 = *&v21[v6];
      if (v29)
      {
        v30 = v29;
        [v30 setPlaysHapticsOnly:1];
        [v30 setAutoShutdownEnabled:0];
        v31 = swift_allocObject();
        v32 = v44;
        *(v31 + 16) = v44;
        v33 = swift_allocObject();
        v33[2] = v32;
        v33[3] = sub_260B8;
        v33[4] = v31;
        v49 = sub_260D8;
        v50 = v33;
        aBlock = _NSConcreteStackBlock;
        v46 = 1107296256;
        v47 = sub_9CD0;
        v48 = &unk_35748;
        v34 = _Block_copy(&aBlock);
        v35 = v32;

        [v30 setStoppedHandler:v34];
        _Block_release(v34);
        v36 = swift_allocObject();
        *(v36 + 16) = sub_260B8;
        *(v36 + 24) = v31;
        v49 = sub_2611C;
        v50 = v36;
        aBlock = _NSConcreteStackBlock;
        v46 = 1107296256;
        v47 = sub_2B614;
        v48 = &unk_35798;
        v37 = _Block_copy(&aBlock);

        [v30 setResetHandler:v37];
        _Block_release(v37);
        v38 = swift_allocObject();
        *(v38 + 16) = v35;
        v49 = sub_26124;
        v50 = v38;
        aBlock = _NSConcreteStackBlock;
        v46 = 1107296256;
        v47 = sub_A25C;
        v48 = &unk_357E8;
        v39 = _Block_copy(&aBlock);
        v40 = v35;

        [v30 notifyWhenPlayersFinished:v39];
        _Block_release(v39);
      }
    }

    else
    {
      v42 = v17;
      sub_2B7D0();

      swift_willThrow();
    }
  }
}

void sub_54CC(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = sub_2B8B0();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = v41 - v12;
  __chkstk_darwin(v11);
  v15 = v41 - v14;
  v16 = OBJC_IVAR___AXHapticMusicServer_isEnabled;
  if (v3[OBJC_IVAR___AXHapticMusicServer_isEnabled] == 1 && v3[OBJC_IVAR___AXHapticMusicServer_isActive] == 1 && _AXSHapticMusicEnabled())
  {
    v44 = a1;
    if (qword_39890 != -1)
    {
      swift_once();
    }

    v17 = sub_25AC(v6, HMLog);
    swift_beginAccess();
    v43 = *(v7 + 16);
    v43(v13, v17, v6);

    v18 = sub_2B890();
    v19 = sub_2BB70();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v41[1] = v7 + 16;
      v21 = v20;
      v22 = swift_slowAlloc();
      v42 = v17;
      v23 = v22;
      aBlock[0] = v22;
      *v21 = 136315138;
      *(v21 + 4) = sub_20958(v44, a2, aBlock);
      _os_log_impl(&dword_0, v18, v19, "Music state changed, Requesting now playing client %s", v21, 0xCu);
      sub_2566C(v23);
      v17 = v42;
    }

    v24 = *(v7 + 8);
    v24(v13, v6);
    Current = CFAbsoluteTimeGetCurrent();
    v26 = OBJC_IVAR___AXHapticMusicServer_getNowPlayingInFlight;
    if (Current - *&v3[OBJC_IVAR___AXHapticMusicServer_getNowPlayingInFlight] >= 10.0)
    {
      *&v3[v26] = CFAbsoluteTimeGetCurrent();
      MRMediaRemoteGetLocalOrigin();
      v35 = *&v3[OBJC_IVAR___AXHapticMusicServer_queue];
      v36 = swift_allocObject();
      v37 = v44;
      v36[2] = v3;
      v36[3] = v37;
      v36[4] = a2;
      aBlock[4] = sub_27A3C;
      aBlock[5] = v36;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_12670;
      aBlock[3] = &unk_35A18;
      v38 = _Block_copy(aBlock);
      v39 = v3;

      v40 = v35;

      MRMediaRemoteGetNowPlayingClientForOrigin();
      _Block_release(v38);
    }

    else
    {
      v43(v10, v17, v6);
      v27 = sub_2B890();
      v28 = sub_2BB40();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 0;
        _os_log_impl(&dword_0, v27, v28, "Already trying to fetch now playing, let's wait", v29, 2u);
      }

      v24(v10, v6);
    }
  }

  else
  {
    if (qword_39890 != -1)
    {
      swift_once();
    }

    v30 = sub_25AC(v6, HMLog);
    swift_beginAccess();
    (*(v7 + 16))(v15, v30, v6);
    v31 = v3;
    v32 = sub_2B890();
    v33 = sub_2BB70();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 67109632;
      *(v34 + 4) = v3[v16];
      *(v34 + 8) = 1024;
      *(v34 + 10) = *(&v31->isa + OBJC_IVAR___AXHapticMusicServer_isActive);

      *(v34 + 14) = 1024;
      *(v34 + 16) = _AXSHapticMusicEnabled() != 0;
      _os_log_impl(&dword_0, v32, v33, "Music state changed, but not processing because its off %{BOOL}d %{BOOL}d %{BOOL}d", v34, 0x14u);
    }

    else
    {

      v32 = v31;
    }

    (*(v7 + 8))(v15, v6);
  }
}

void sub_5A68(char a1)
{
  MRMediaRemoteSetWantsNowPlayingNotifications();
  sub_2CC4(&qword_39568, &qword_2D0A8);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_2CD30;
  v4 = kMRMediaRemoteNowPlayingInfoDidChangeNotification;
  if (!kMRMediaRemoteNowPlayingInfoDidChangeNotification)
  {
    __break(1u);
    goto LABEL_13;
  }

  *(v3 + 32) = kMRMediaRemoteNowPlayingInfoDidChangeNotification;
  v5 = kMRMediaRemoteNowPlayingApplicationIsPlayingDidChangeNotification;
  if (!kMRMediaRemoteNowPlayingApplicationIsPlayingDidChangeNotification)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  *(v3 + 40) = kMRMediaRemoteNowPlayingApplicationIsPlayingDidChangeNotification;
  v6 = kMRMediaRemoteNowPlayingApplicationPlaybackStateDidChangeNotification;
  if (!kMRMediaRemoteNowPlayingApplicationPlaybackStateDidChangeNotification)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  *(v3 + 48) = kMRMediaRemoteNowPlayingApplicationPlaybackStateDidChangeNotification;
  v7 = kMRMediaRemoteNowPlayingPlayerDidChange;
  if (!kMRMediaRemoteNowPlayingPlayerDidChange)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  *(v3 + 56) = kMRMediaRemoteNowPlayingPlayerDidChange;
  v8 = v3;
  v9 = v4;
  v10 = v5;
  v11 = v6;
  v12 = v7;
  sub_6D7C(a1 & 1, v8);

  v13 = CFNotificationCenterGetLocalCenter();
  v14 = v13;
  if ((a1 & 1) == 0)
  {
    if (kMRMediaRemoteNowPlayingApplicationDidChangeNotification)
    {
      CFNotificationCenterRemoveObserver(v13, v1, kMRMediaRemoteNowPlayingApplicationDidChangeNotification, 0);
      goto LABEL_9;
    }

LABEL_16:
    __break(1u);
    return;
  }

  CFNotificationCenterAddObserver(v13, v1, sub_1091C, kMRMediaRemoteNowPlayingApplicationDidChangeNotification, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
LABEL_9:
}

void sub_5BCC(uint64_t a1)
{
  v2 = sub_2B8B0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    if (qword_39890 != -1)
    {
      swift_once();
    }

    v6 = sub_25AC(v2, HMLog);
    swift_beginAccess();
    (*(v3 + 16))(v5, v6, v2);
    v7 = sub_2B890();
    v8 = sub_2BB70();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 134217984;
      v10 = [objc_opt_self() processInfo];
      v11 = [v10 thermalState];

      *(v9 + 4) = v11;
      _os_log_impl(&dword_0, v7, v8, "Updating thermal state to %ld", v9, 0xCu);
    }

    (*(v3 + 8))(v5, v2);
    sub_4760(0x206C616D72656874, 0xEE00737574617473);
  }
}

void sub_5E64(char a1)
{
  v2 = v1;
  v4 = sub_2B8B0();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &aBlock[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &aBlock[-1] - v9;
  if (a1)
  {
    if (qword_39890 != -1)
    {
      swift_once();
    }

    v11 = sub_25AC(v4, HMLog);
    swift_beginAccess();
    (*(v5 + 16))(v10, v11, v4);
    v12 = sub_2B890();
    v13 = sub_2BB70();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_0, v12, v13, "Interrupt started", v14, 2u);
    }

    (*(v5 + 8))(v10, v4);
    AXHapticMusicServer.stopHapticMusic()();
    v15 = *(v2 + OBJC_IVAR___AXHapticMusicServer_engine);
    if (v15)
    {
      v16 = swift_allocObject();
      swift_unknownObjectWeakInit();
      aBlock[4] = sub_25EF8;
      aBlock[5] = v16;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_2B744;
      aBlock[3] = &unk_35590;
      v17 = _Block_copy(aBlock);
      v18 = v15;

      [v18 stopWithCompletionHandler:v17];
      _Block_release(v17);
    }
  }

  else
  {
    if (qword_39890 != -1)
    {
      swift_once();
    }

    v19 = sub_25AC(v4, HMLog);
    swift_beginAccess();
    (*(v5 + 16))(v8, v19, v4);
    v20 = sub_2B890();
    v21 = sub_2BB70();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_0, v20, v21, "Interrupt ended", v22, 2u);
    }

    (*(v5 + 8))(v8, v4);
    v23._object = 0x800000000002E060;
    v23._countAndFlagsBits = 0xD000000000000017;
    AXHapticMusicServer.startHapticMusic(codeFlowIdentifier:)(v23);
    sub_4760(0xD000000000000017, 0x800000000002E080);
  }
}

uint64_t sub_6240(void *a1)
{
  v2 = sub_2B8F0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2B920();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2B8B0();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [a1 userInfo];
  if (result)
  {
    v38 = v7;
    v39 = v3;
    v40 = v6;
    v15 = result;
    v16 = sub_2B9A0();

    v43 = sub_2B9F0();
    v44 = v17;
    sub_2BCC0();
    if (*(v16 + 16) && (v18 = sub_2103C(aBlock), (v19 & 1) != 0))
    {
      sub_25098(*(v16 + 56) + 32 * v18, v45);
      sub_25044(aBlock);

      result = swift_dynamicCast();
      if (result)
      {
        v36 = v43;
        if (qword_39890 != -1)
        {
          swift_once();
        }

        v20 = sub_25AC(v10, HMLog);
        swift_beginAccess();
        (*(v11 + 16))(v13, v20, v10);
        v21 = a1;
        v22 = sub_2B890();
        v23 = sub_2BB70();

        v37 = v22;
        v24 = os_log_type_enabled(v22, v23);
        v25 = v40;
        if (v24)
        {
          v26 = swift_slowAlloc();
          v27 = swift_slowAlloc();
          *v26 = 138412290;
          *(v26 + 4) = v21;
          *v27 = v21;
          v28 = v21;
          _os_log_impl(&dword_0, v37, v23, "Handling interrupt %@", v26, 0xCu);
          sub_2AF20(v27, &qword_391A8, &qword_2CDE8);
          v25 = v40;
        }

        (*(v11 + 8))(v13, v10);
        v29 = v41;
        v30 = *&v41[OBJC_IVAR___AXHapticMusicServer_queue];
        v31 = swift_allocObject();
        v32 = v36;
        *(v31 + 16) = v29;
        *(v31 + 24) = v32;
        aBlock[4] = sub_25EC8;
        aBlock[5] = v31;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_2B614;
        aBlock[3] = &unk_35568;
        v33 = _Block_copy(aBlock);
        v34 = v30;
        v35 = v29;
        sub_2B900();
        v43 = &_swiftEmptyArrayStorage;
        sub_254AC(&qword_39160, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
        sub_2CC4(&qword_39168, &qword_2CDD0);
        sub_25B40(&qword_39170, &qword_39168, &qword_2CDD0, &protocol conformance descriptor for [A]);
        sub_2BC80();
        sub_2BBE0();
        _Block_release(v33);

        (*(v39 + 8))(v5, v2);
        (*(v38 + 8))(v9, v25);
      }
    }

    else
    {

      return sub_25044(aBlock);
    }
  }

  return result;
}

uint64_t sub_6864(void *a1)
{
  v2 = v1;
  v4 = sub_2B8F0();
  v33 = *(v4 - 8);
  v34 = v4;
  __chkstk_darwin(v4);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2B920();
  v31 = *(v7 - 8);
  v32 = v7;
  __chkstk_darwin(v7);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2B8B0();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_39890 != -1)
  {
    swift_once();
  }

  v14 = sub_25AC(v10, HMLog);
  swift_beginAccess();
  (*(v11 + 16))(v13, v14, v10);
  v15 = a1;
  v16 = sub_2B890();
  v17 = sub_2BB40();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v30 = v2;
    v19 = v18;
    v20 = swift_slowAlloc();
    *v19 = 138412290;
    *(v19 + 4) = v15;
    *v20 = v15;
    v21 = v15;
    _os_log_impl(&dword_0, v16, v17, "Active route changed %@", v19, 0xCu);
    sub_2AF20(v20, &qword_391A8, &qword_2CDE8);

    v2 = v30;
  }

  (*(v11 + 8))(v13, v10);
  v22 = *&v2[OBJC_IVAR___AXHapticMusicServer_queue];
  v23 = swift_allocObject();
  *(v23 + 16) = v2;
  aBlock[4] = sub_25E50;
  aBlock[5] = v23;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2B614;
  aBlock[3] = &unk_35518;
  v24 = _Block_copy(aBlock);
  v25 = v22;
  v26 = v2;
  sub_2B900();
  v35 = &_swiftEmptyArrayStorage;
  sub_254AC(&qword_39160, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_2CC4(&qword_39168, &qword_2CDD0);
  sub_25B40(&qword_39170, &qword_39168, &qword_2CDD0, &protocol conformance descriptor for [A]);
  v27 = v34;
  sub_2BC80();
  sub_2BBE0();
  _Block_release(v24);

  (*(v33 + 8))(v6, v27);
  (*(v31 + 8))(v9, v32);
}

void sub_6D7C(char a1, unint64_t a2)
{
  v3 = v2;
  v6 = a1 & 1;
  v7 = sub_2B8B0();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR___AXHapticMusicServer_observersEnabled;
  if (v3[OBJC_IVAR___AXHapticMusicServer_observersEnabled] != v6)
  {
    if (qword_39890 != -1)
    {
      swift_once();
    }

    v12 = sub_25AC(v7, HMLog);
    swift_beginAccess();
    (*(v8 + 16))(v10, v12, v7);

    v13 = sub_2B890();
    v14 = sub_2BB40();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v35 = v11;
      v16 = v15;
      v34 = swift_slowAlloc();
      v36 = v34;
      *v16 = 67109378;
      *(v16 + 4) = a1 & 1;
      *(v16 + 8) = 2080;
      type metadata accessor for CFString(0);
      v17 = sub_2BAB0();
      v19 = sub_20958(v17, v18, &v36);
      v33 = v13;
      v20 = v14;
      v21 = v19;

      *(v16 + 10) = v21;
      v22 = v33;
      _os_log_impl(&dword_0, v33, v20, "Updating observers %{BOOL}d %s: ", v16, 0x12u);
      sub_2566C(v34);

      v11 = v35;
    }

    else
    {
    }

    (*(v8 + 8))(v10, v7);
    v3[v11] = a1 & 1;
    if (a2 >> 62)
    {
      v23 = sub_2BD60();
      if (!v23)
      {
        return;
      }
    }

    else
    {
      v23 = *(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8));
      if (!v23)
      {
        return;
      }
    }

    if (v23 < 1)
    {
      __break(1u);
    }

    else if ((a2 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v23; ++i)
      {
        v25 = sub_2BD00();
        v26 = CFNotificationCenterGetLocalCenter();
        v27 = v26;
        if (a1)
        {
          CFNotificationCenterAddObserver(v26, v3, sub_105CC, v25, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
        }

        else
        {
          CFNotificationCenterRemoveObserver(v26, v3, v25, 0);
        }

        swift_unknownObjectRelease();
      }
    }

    else
    {
      v28 = (a2 + 32);
      do
      {
        v29 = *v28;
        v30 = CFNotificationCenterGetLocalCenter();
        v31 = v30;
        if (a1)
        {
          CFNotificationCenterAddObserver(v30, v3, sub_105CC, v29, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
        }

        else
        {
          CFNotificationCenterRemoveObserver(v30, v3, v29, 0);
        }

        ++v28;
        --v23;
      }

      while (v23);
    }
  }
}

id sub_7140()
{
  v1 = v0;
  v2 = sub_2B8B0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_opt_self() sharedAVSystemController];
  if (!v6)
  {
    __break(1u);
  }

  v7 = v6;
  sub_2CC4(&qword_39528, &qword_2D080);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_2CD40;
  v9 = AVSystemController_CarPlayIsConnectedDidChangeNotification;
  v10 = AVSystemController_ActiveAudioRouteDidChangeNotification;
  *(v8 + 32) = AVSystemController_CarPlayIsConnectedDidChangeNotification;
  *(v8 + 40) = v10;
  v11 = AVSystemController_CarPlayAuxStreamSupportDidChangeNotification;
  *(v8 + 48) = AVSystemController_CarPlayAuxStreamSupportDidChangeNotification;
  type metadata accessor for Name(0);
  v54 = v9;
  v12 = v10;
  v13 = v11;
  isa = sub_2BA80().super.isa;

  aBlock = 0;
  v15 = [v7 setAttribute:isa forKey:AVSystemController_SubscribeToNotificationsAttribute error:&aBlock];

  if (v15)
  {
    v16 = aBlock;
  }

  else
  {
    v17 = aBlock;
    sub_2B7D0();

    swift_willThrow();
    if (qword_39890 != -1)
    {
      swift_once();
    }

    v18 = sub_25AC(v2, HMLog);
    swift_beginAccess();
    (*(v3 + 16))(v5, v18, v2);
    swift_errorRetain();
    v19 = sub_2B890();
    v20 = sub_2BB60();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v53 = v13;
      v22 = v21;
      v23 = swift_slowAlloc();
      *v22 = 138412290;
      swift_errorRetain();
      v24 = _swift_stdlib_bridgeErrorToNSError();
      *(v22 + 4) = v24;
      *v23 = v24;
      _os_log_impl(&dword_0, v19, v20, "Could not register carplay connected %@", v22, 0xCu);
      sub_2AF20(v23, &qword_391A8, &qword_2CDE8);

      v13 = v53;
    }

    else
    {
    }

    (*(v3 + 8))(v5, v2);
  }

  v25 = objc_opt_self();
  v26 = [v25 defaultCenter];
  [v26 addObserver:v1 selector:"activeRouteChangeWithNotification:" name:v12 object:0];

  v27 = [v25 defaultCenter];
  [v27 addObserver:v1 selector:"activeRouteChangeWithNotification:" name:v54 object:0];

  v28 = [v25 defaultCenter];
  [v28 addObserver:v1 selector:"activeRouteChangeWithNotification:" name:v13 object:0];

  sub_3A5C();
  sub_35DC();
  v29 = [v25 defaultCenter];
  [v29 addObserver:v1 selector:"thermalStatusChangedWithNotification:" name:NSProcessInfoThermalStateDidChangeNotification object:0];

  v30 = objc_opt_self();
  v31 = [v30 sharedInstance];
  v32 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v59 = sub_25BD4;
  v60 = v32;
  aBlock = _NSConcreteStackBlock;
  v56 = 1107296256;
  v57 = sub_2B614;
  v58 = &unk_35248;
  v33 = _Block_copy(&aBlock);

  [v31 registerUpdateBlock:v33 forRetrieveSelector:sub_2B880() withListener:v1];
  _Block_release(v33);

  v34 = [v30 sharedInstance];
  v35 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v59 = sub_25C1C;
  v60 = v35;
  aBlock = _NSConcreteStackBlock;
  v56 = 1107296256;
  v57 = sub_2B614;
  v58 = &unk_35270;
  v36 = _Block_copy(&aBlock);

  [v34 registerUpdateBlock:v36 forRetrieveSelector:sub_2B880() withListener:v1];
  _Block_release(v36);

  v37 = [v30 sharedInstance];
  v38 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v59 = sub_25C64;
  v60 = v38;
  aBlock = _NSConcreteStackBlock;
  v56 = 1107296256;
  v57 = sub_2B614;
  v58 = &unk_35298;
  v39 = _Block_copy(&aBlock);

  [v37 registerUpdateBlock:v39 forRetrieveSelector:sub_2B880() withListener:v1];
  _Block_release(v39);

  v40 = [v30 sharedInstance];
  v41 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v59 = sub_25CAC;
  v60 = v41;
  aBlock = _NSConcreteStackBlock;
  v56 = 1107296256;
  v57 = sub_2B614;
  v58 = &unk_352C0;
  v42 = _Block_copy(&aBlock);

  [v40 registerUpdateBlock:v42 forRetrieveSelector:sub_2B880() withListener:v1];
  _Block_release(v42);

  sub_2ACCC(0, &qword_39120, OS_dispatch_queue_ptr);
  v43 = sub_2BBD0();
  v44 = [objc_allocWithZone(AXDispatchTimer) initWithTargetSerialQueue:v43];

  v45 = OBJC_IVAR___AXHapticMusicServer_notificationTimer;
  v46 = *(v1 + OBJC_IVAR___AXHapticMusicServer_notificationTimer);
  *(v1 + OBJC_IVAR___AXHapticMusicServer_notificationTimer) = v44;

  v47 = *(v1 + v45);
  if (v47)
  {
    [v47 setAutomaticallyCancelPendingBlockUponSchedulingNewBlock:1];
  }

  v48 = [objc_allocWithZone(AXDispatchTimer) initWithTargetSerialQueue:*(v1 + OBJC_IVAR___AXHapticMusicServer_queue)];
  v49 = OBJC_IVAR___AXHapticMusicServer_shutdownTimer;
  v50 = *(v1 + OBJC_IVAR___AXHapticMusicServer_shutdownTimer);
  *(v1 + OBJC_IVAR___AXHapticMusicServer_shutdownTimer) = v48;

  result = *(v1 + v49);
  if (result)
  {
    return [result setAutomaticallyCancelPendingBlockUponSchedulingNewBlock:1];
  }

  return result;
}

uint64_t sub_7A18(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

char *sub_7A5C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v34 = a4;
  v35 = a5;
  v32 = a2;
  v33 = a3;
  v5 = sub_2B8F0();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2B920();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2B8B0();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v18 = result;
    v29 = v10;
    v31 = v6;
    if (qword_39890 != -1)
    {
      swift_once();
    }

    v30 = v9;
    v19 = sub_25AC(v13, HMLog);
    swift_beginAccess();
    (*(v14 + 16))(v16, v19, v13);
    v20 = sub_2B890();
    v21 = sub_2BB70();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_0, v20, v21, v32, v22, 2u);
    }

    (*(v14 + 8))(v16, v13);
    v23 = *&v18[OBJC_IVAR___AXHapticMusicServer_queue];
    v24 = swift_allocObject();
    *(v24 + 16) = v18;
    aBlock[4] = v34;
    aBlock[5] = v24;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2B614;
    aBlock[3] = v35;
    v25 = _Block_copy(aBlock);
    v26 = v23;
    v27 = v18;
    sub_2B900();
    v36 = &_swiftEmptyArrayStorage;
    sub_254AC(&qword_39160, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_2CC4(&qword_39168, &qword_2CDD0);
    sub_25B40(&qword_39170, &qword_39168, &qword_2CDD0, &protocol conformance descriptor for [A]);
    sub_2BC80();
    sub_2BBE0();
    _Block_release(v25);

    (*(v31 + 8))(v8, v5);
    (*(v29 + 8))(v12, v30);
  }

  return result;
}

void sub_7ED4(uint64_t a1)
{
  v1 = sub_2B8F0();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2B920();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2B8B0();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    v30 = v6;
    v31 = v5;
    v15 = [objc_opt_self() sharedInstance];
    v16 = [v15 hapticMusicActive];

    if (v16 == v14[OBJC_IVAR___AXHapticMusicServer_isActive])
    {
    }

    else
    {
      v28 = v2;
      v14[OBJC_IVAR___AXHapticMusicServer_isActive] = v16;
      if (qword_39890 != -1)
      {
        swift_once();
      }

      v29 = v1;
      v17 = sub_25AC(v9, HMLog);
      swift_beginAccess();
      (*(v10 + 16))(v12, v17, v9);
      v18 = sub_2B890();
      v19 = sub_2BB70();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 67109120;
        *(v20 + 4) = v16;
        _os_log_impl(&dword_0, v18, v19, "Haptic Music active state changed to: %{BOOL}d", v20, 8u);
      }

      (*(v10 + 8))(v12, v9);
      v21 = *&v14[OBJC_IVAR___AXHapticMusicServer_queue];
      v22 = swift_allocObject();
      *(v22 + 16) = v14;
      aBlock[4] = sub_25CB4;
      aBlock[5] = v22;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_2B614;
      aBlock[3] = &unk_35310;
      v23 = _Block_copy(aBlock);
      v24 = v21;
      v25 = v14;
      sub_2B900();
      v32 = &_swiftEmptyArrayStorage;
      sub_254AC(&qword_39160, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_2CC4(&qword_39168, &qword_2CDD0);
      sub_25B40(&qword_39170, &qword_39168, &qword_2CDD0, &protocol conformance descriptor for [A]);
      v26 = v29;
      sub_2BC80();
      sub_2BBE0();
      _Block_release(v23);

      (*(v28 + 8))(v4, v26);
      (*(v30 + 8))(v8, v31);

      sub_2B980();
      sub_2B970();
      sub_2B960();
    }
  }
}

char *sub_83FC()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v2 = sub_2CC4(&qword_39500, &qword_2D070);
  __chkstk_darwin(v2 - 8);
  v53 = &v47 - v3;
  v57 = sub_2CC4(&qword_39508, &qword_2D078);
  v56 = *(v57 - 8);
  __chkstk_darwin(v57);
  v54 = &v47 - v4;
  v59 = sub_2BC20();
  v58 = *(v59 - 8);
  __chkstk_darwin(v59);
  v55 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_2B8F0();
  v51 = *(v52 - 8);
  __chkstk_darwin(v52);
  v50 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_2BBC0();
  v7 = *(v70 - 8);
  __chkstk_darwin(v70);
  v69 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2BB90();
  __chkstk_darwin(v9);
  v48 = sub_2B920();
  v47 = *(v48 - 8);
  __chkstk_darwin(v48);
  v11 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v0 + OBJC_IVAR___AXHapticMusicServer_isEnabled) = 0;
  v12 = OBJC_IVAR___AXHapticMusicServer_isActive;
  v13 = [objc_opt_self() sharedInstance];
  v14 = [v13 hapticMusicActive];

  *(v1 + v12) = v14;
  *(v1 + OBJC_IVAR___AXHapticMusicServer_isSessionValid) = 1;
  *(v1 + OBJC_IVAR___AXHapticMusicServer_isHapticTrackPlaying) = 0;
  *(v1 + OBJC_IVAR___AXHapticMusicServer_currentHapticPlayerStarted) = 0;
  *(v1 + OBJC_IVAR___AXHapticMusicServer_engineIsRunning) = 0;
  *(v1 + OBJC_IVAR___AXHapticMusicServer_fetchingHapticTracks) = 0;
  *(v1 + OBJC_IVAR___AXHapticMusicServer_pauseShouldCancelEngineStartup) = 0;
  *(v1 + OBJC_IVAR___AXHapticMusicServer_siriActivationSource) = 0;
  *(v1 + OBJC_IVAR___AXHapticMusicServer_HapticEngineTimeout) = 0x4034000000000000;
  *(v1 + OBJC_IVAR___AXHapticMusicServer_engine) = 0;
  *(v1 + OBJC_IVAR___AXHapticMusicServer_players) = &_swiftEmptyArrayStorage;
  *(v1 + OBJC_IVAR___AXHapticMusicServer_currentPatternDuration) = 0;
  *(v1 + OBJC_IVAR___AXHapticMusicServer_currentMetadata) = 0;
  *(v1 + OBJC_IVAR___AXHapticMusicServer_currentSpatialTrackInfo) = 0;
  *(v1 + OBJC_IVAR___AXHapticMusicServer_audioSession) = 0;
  v15 = v1 + OBJC_IVAR___AXHapticMusicServer_nowPlayingBundleIdentifier;
  *v15 = 0;
  v15[1] = 0xE000000000000000;
  v16 = v1 + OBJC_IVAR___AXHapticMusicServer_trackIdentifier;
  *v16 = 0;
  v16[1] = 0;
  v16[2] = 0xE000000000000000;
  v16[3] = 0;
  v16[4] = 0xE000000000000000;
  v16[5] = 0;
  v16[6] = 0xE000000000000000;
  v71 = OBJC_IVAR___AXHapticMusicServer_queue;
  v72 = sub_2ACCC(0, &qword_39120, OS_dispatch_queue_ptr);
  v68 = "com.apple.music.classical";
  sub_2B910();
  aBlock[0] = &_swiftEmptyArrayStorage;
  v17 = sub_254AC(&qword_39128, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  v18 = sub_2CC4(&qword_39130, &qword_2CD90);
  v19 = sub_25B40(&qword_39138, &qword_39130, &qword_2CD90, &protocol conformance descriptor for [A]);
  v64 = v9;
  v65 = v18;
  v66 = v17;
  v67 = v19;
  sub_2BC80();
  v61 = enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:);
  v62 = *(v7 + 104);
  v63 = v7 + 104;
  v20 = v69;
  v21 = v70;
  v62(v69);
  *(v1 + v71) = sub_2BBF0();
  v68 = OBJC_IVAR___AXHapticMusicServer_ahapAvailableQueue;
  v60 = "ibility.AXHapticMusicServer";
  sub_2B910();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_2BC80();
  v22 = v61;
  v23 = v62;
  (v62)(v20, v61, v21);
  *&v68[v1] = sub_2BBF0();
  *(v1 + OBJC_IVAR___AXHapticMusicServer_notificationTimer) = 0;
  *(v1 + OBJC_IVAR___AXHapticMusicServer_shutdownTimer) = 0;
  v68 = OBJC_IVAR___AXHapticMusicServer_ahapAvailableCacheQueue;
  v60 = "MusicServer.AHAPAvailable";
  sub_2B910();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_2BC80();
  v23(v20, v22, v70);
  *&v68[v1] = sub_2BBF0();
  v24 = OBJC_IVAR___AXHapticMusicServer_ahapAvailableCache;
  *(v1 + v24) = sub_2440C(&_swiftEmptyArrayStorage);
  *(v1 + OBJC_IVAR___AXHapticMusicServer_hapticSubscriptions) = &_swiftEmptySetSingleton;
  v25 = OBJC_IVAR___AXHapticMusicServer_supportedClients;
  *(v1 + v25) = sub_24BA4(&_swiftEmptyArrayStorage, &qword_39580, &qword_2D0B8);
  *(v1 + OBJC_IVAR___AXHapticMusicServer_siriActive) = 0;
  *(v1 + OBJC_IVAR___AXHapticMusicServer_cachedAlgorithmSelections) = 0;
  *(v1 + OBJC_IVAR___AXHapticMusicServer_cachedIntensity) = 1065353216;
  v26 = OBJC_IVAR___AXHapticMusicServer_statusObservers;
  type metadata accessor for AXHapticMusicServer.StatusObservers();
  v27 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v27 + 112) = sub_2457C(&_swiftEmptyArrayStorage);
  *(v1 + v26) = v27;
  *(v1 + OBJC_IVAR___AXHapticMusicServer_totalActivePlayingTime) = 0;
  *(v1 + OBJC_IVAR___AXHapticMusicServer_elapsedHapticPlayingTimeForTrack) = 0;
  *(v1 + OBJC_IVAR___AXHapticMusicServer_isCameraActive) = 0;
  *(v1 + OBJC_IVAR___AXHapticMusicServer_mediaDomain) = 0;
  *(v1 + OBJC_IVAR___AXHapticMusicServer____lazy_storage___displayManager) = 0;
  *(v1 + OBJC_IVAR___AXHapticMusicServer_observersEnabled) = 0;
  *(v1 + OBJC_IVAR___AXHapticMusicServer_getNowPlayingInFlight) = 0;
  v28 = OBJC_IVAR___AXHapticMusicServer_hapticCache;
  *(v1 + v28) = sub_2469C(&_swiftEmptyArrayStorage);
  result = [objc_allocWithZone(AXDispatchTimer) initWithTargetSerialQueue:*(v1 + v71)];
  if (result)
  {
    *(v1 + OBJC_IVAR___AXHapticMusicServer_playbackStatisticsTimer) = result;
    v75.receiver = v1;
    v75.super_class = ObjectType;
    v30 = objc_msgSendSuper2(&v75, "init");
    v31 = *&v30[OBJC_IVAR___AXHapticMusicServer_queue];
    v32 = swift_allocObject();
    *(v32 + 16) = v30;
    aBlock[4] = sub_25A64;
    aBlock[5] = v32;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2B614;
    aBlock[3] = &unk_351F8;
    v33 = _Block_copy(aBlock);
    v34 = v30;
    v35 = v31;
    sub_2B900();
    v73 = &_swiftEmptyArrayStorage;
    sub_254AC(&qword_39160, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_2CC4(&qword_39168, &qword_2CDD0);
    sub_25B40(&qword_39170, &qword_39168, &qword_2CDD0, &protocol conformance descriptor for [A]);
    v36 = v50;
    v37 = v52;
    sub_2BC80();
    sub_2BBE0();
    _Block_release(v33);

    (*(v51 + 8))(v36, v37);
    (*(v47 + 8))(v11, v48);

    v38 = [objc_opt_self() defaultCenter];
    v39 = sub_2BB80();
    v40 = v55;
    sub_2BC30();

    v41 = sub_2BBD0();
    aBlock[0] = v41;
    v42 = sub_2BBB0();
    v43 = v53;
    (*(*(v42 - 8) + 56))(v53, 1, 1, v42);
    sub_254AC(&qword_39510, &type metadata accessor for NSNotificationCenter.Publisher, &protocol conformance descriptor for NSNotificationCenter.Publisher);
    sub_25AD8();
    v44 = v54;
    v45 = v59;
    sub_2B8D0();
    sub_2AF20(v43, &qword_39500, &qword_2D070);

    sub_25B40(&qword_39520, &qword_39508, &qword_2D078, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
    v46 = v57;
    sub_2B8E0();
    (*(v56 + 8))(v44, v46);
    swift_beginAccess();
    sub_2B8C0();
    swift_endAccess();

    (*(v58 + 8))(v40, v45);
    return v34;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id HapticMusicSiriActionSource.__allocating_init(delegate:)(uint64_t a1)
{
  v2 = [objc_allocWithZone(v1) initWithDelegate:a1];
  swift_unknownObjectRelease();
  return v2;
}

uint64_t sub_9130()
{
  sub_2B980();
  sub_2B970();
  sub_2B960();
}

uint64_t sub_91B4(char *a1)
{
  v2 = sub_2B8F0();
  v16 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_2B920();
  v5 = *(v15 - 8);
  __chkstk_darwin(v15);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *&a1[OBJC_IVAR___AXHapticMusicServer_queue];
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  aBlock[4] = sub_26144;
  aBlock[5] = v9;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2B614;
  aBlock[3] = &unk_35838;
  v10 = _Block_copy(aBlock);
  v11 = v8;
  v12 = a1;
  sub_2B900();
  v17 = &_swiftEmptyArrayStorage;
  sub_254AC(&qword_39160, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_2CC4(&qword_39168, &qword_2CDD0);
  sub_25B40(&qword_39170, &qword_39168, &qword_2CDD0, &protocol conformance descriptor for [A]);
  sub_2BC80();
  sub_2BBE0();
  _Block_release(v10);

  (*(v16 + 8))(v4, v2);
  (*(v5 + 8))(v7, v15);
}

void sub_9494(uint64_t a1)
{
  v2 = sub_2B8B0();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v21 - v7;
  if (qword_39890 != -1)
  {
    swift_once();
  }

  v9 = sub_25AC(v2, HMLog);
  swift_beginAccess();
  v10 = *(v3 + 16);
  v10(v8, v9, v2);
  v11 = sub_2B890();
  v12 = sub_2BB70();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v21 = v3;
    *v13 = 0;
    _os_log_impl(&dword_0, v11, v12, "Engine stopped handler called. Resetting", v13, 2u);
    v3 = v21;
  }

  v14 = *(v3 + 8);
  v14(v8, v2);
  v15 = *(a1 + OBJC_IVAR___AXHapticMusicServer_audioSession);
  *(a1 + OBJC_IVAR___AXHapticMusicServer_audioSession) = 0;

  v16 = (a1 + OBJC_IVAR___AXHapticMusicServer_trackIdentifier);
  *v16 = 0;
  v16[1] = 0;
  v16[2] = 0xE000000000000000;
  v16[3] = 0;
  v16[4] = 0xE000000000000000;
  v16[5] = 0;
  v16[6] = 0xE000000000000000;

  sub_97B0();
  v17 = *(a1 + OBJC_IVAR___AXHapticMusicServer_engine);
  *(a1 + OBJC_IVAR___AXHapticMusicServer_engine) = 0;

  v10(v6, v9, v2);
  v18 = sub_2B890();
  v19 = sub_2BB40();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_0, v18, v19, "Engine stop: Music State Change", v20, 2u);
  }

  v14(v6, v2);
  sub_4760(0xD000000000000015, 0x800000000002E130);
}

uint64_t sub_97B0()
{
  v1 = v0;
  v2 = sub_2B8B0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_39890 != -1)
  {
    swift_once();
  }

  v6 = sub_25AC(v2, HMLog);
  swift_beginAccess();
  (*(v3 + 16))(v5, v6, v2);
  v7 = sub_2B890();
  v8 = sub_2BB40();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_0, v7, v8, "Clearing all the haptic players", v9, 2u);
  }

  (*(v3 + 8))(v5, v2);
  v10 = OBJC_IVAR___AXHapticMusicServer_players;
  swift_beginAccess();
  v11 = *(v1 + v10);
  if (v11 >> 62)
  {
    v12 = sub_2BD60();
    if (!v12)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v12 = *(&dword_10 + (v11 & 0xFFFFFFFFFFFFFF8));
    if (!v12)
    {
      goto LABEL_17;
    }
  }

  if (v12 < 1)
  {
    __break(1u);
  }

  v18 = v1;

  for (i = 0; i != v12; ++i)
  {
    if ((v11 & 0xC000000000000001) != 0)
    {
      v15 = sub_2BD00();
    }

    else
    {
      v15 = *(v11 + 8 * i + 32);
      swift_unknownObjectRetain();
    }

    v19 = 0;
    if ([v15 stopAtTime:&v19 error:0.0])
    {
      v14 = v19;
    }

    else
    {
      v16 = v19;
      sub_2B7D0();

      swift_willThrow();
    }

    swift_unknownObjectRelease();
  }

  v1 = v18;
LABEL_17:
  *(v1 + v10) = &_swiftEmptyArrayStorage;

  *(v1 + OBJC_IVAR___AXHapticMusicServer_isHapticTrackPlaying) = 0;
  *(v1 + OBJC_IVAR___AXHapticMusicServer_currentHapticPlayerStarted) = 0;
  *(v1 + OBJC_IVAR___AXHapticMusicServer_currentPatternDuration) = 0;
  return result;
}

void sub_9ADC(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v5 = sub_2B8B0();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_39890 != -1)
  {
    swift_once();
  }

  v9 = sub_25AC(v5, HMLog);
  swift_beginAccess();
  (*(v6 + 16))(v8, v9, v5);
  v10 = sub_2B890();
  v11 = sub_2BB70();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 134217984;
    *(v12 + 4) = a1;
    _os_log_impl(&dword_0, v10, v11, "Stop Handler: The engine stopped for reason: %ld", v12, 0xCu);
  }

  v13 = (*(v6 + 8))(v8, v5);
  if (a1 == 1)
  {
    sub_5E64(1);
  }

  else
  {
    a3(v13);
  }
}

uint64_t sub_9CD0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t sub_9D24(uint64_t (*a1)(uint64_t))
{
  v2 = sub_2B8B0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_39890 != -1)
  {
    swift_once();
  }

  v6 = sub_25AC(v2, HMLog);
  swift_beginAccess();
  (*(v3 + 16))(v5, v6, v2);
  v7 = sub_2B890();
  v8 = sub_2BB70();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_0, v7, v8, "Reset Handler:", v9, 2u);
  }

  v10 = (*(v3 + 8))(v5, v2);
  return a1(v10);
}

uint64_t sub_9EE4(uint64_t a1)
{
  v2 = sub_2B8B0();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v21[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v8 = &v21[-v7];
  v9 = &unk_39000;
  if (a1)
  {
    swift_errorRetain();
    if (qword_39890 != -1)
    {
      swift_once();
    }

    v10 = sub_25AC(v2, HMLog);
    swift_beginAccess();
    (*(v3 + 16))(v8, v10, v2);
    swift_errorRetain();
    v11 = sub_2B890();
    v12 = sub_2BB70();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138412290;
      swift_errorRetain();
      v15 = _swift_stdlib_bridgeErrorToNSError();
      *(v13 + 4) = v15;
      *v14 = v15;
      _os_log_impl(&dword_0, v11, v12, "Player finished error: %@", v13, 0xCu);
      sub_2AF20(v14, &qword_391A8, &qword_2CDE8);

      v9 = &unk_39000;
    }

    else
    {
    }

    (*(v3 + 8))(v8, v2);
  }

  if (v9[274] != -1)
  {
    swift_once();
  }

  v16 = sub_25AC(v2, HMLog);
  swift_beginAccess();
  (*(v3 + 16))(v6, v16, v2);
  v17 = sub_2B890();
  v18 = sub_2BB40();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_0, v17, v18, "Players finished", v19, 2u);
  }

  (*(v3 + 8))(v6, v2);
  return sub_97B0();
}

uint64_t sub_A25C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v5 = v3(a2);

  return v5;
}

uint64_t sub_A34C()
{
  v1 = v0;
  v2 = sub_2B8B0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_247FC(&_swiftEmptyArrayStorage);
  *&v61 = 0x44496D616461;
  *(&v61 + 1) = 0xE600000000000000;
  sub_2BCC0();
  v7 = (v1 + OBJC_IVAR___AXHapticMusicServer_trackIdentifier);
  v8 = *(v1 + OBJC_IVAR___AXHapticMusicServer_trackIdentifier);
  v62 = &type metadata for Int64;
  *&v61 = v8;
  sub_2A5C4(&v61, &v63);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v60[0] = v6;
  sub_22FC8(&v63, v65, isUniquelyReferenced_nonNull_native);
  sub_25044(v65);
  v10 = *&v60[0];
  *&v61 = 1668445033;
  *(&v61 + 1) = 0xE400000000000000;
  sub_2BCC0();
  v11 = v7[1];
  v12 = v7[2];
  v62 = &type metadata for String;
  *&v61 = v11;
  *(&v61 + 1) = v12;
  sub_2A5C4(&v61, &v63);

  v13 = swift_isUniquelyReferenced_nonNull_native();
  *&v60[0] = v10;
  sub_22FC8(&v63, v65, v13);
  sub_25044(v65);
  v14 = *&v60[0];
  *&v61 = 0x656C746974;
  *(&v61 + 1) = 0xE500000000000000;
  sub_2BCC0();
  v15 = v7[3];
  v16 = v7[4];
  v62 = &type metadata for String;
  *&v61 = v15;
  *(&v61 + 1) = v16;
  sub_2A5C4(&v61, &v63);

  v17 = swift_isUniquelyReferenced_nonNull_native();
  *&v60[0] = v14;
  sub_22FC8(&v63, v65, v17);
  sub_25044(v65);
  v18 = *&v60[0];
  *&v61 = 0x747369747261;
  *(&v61 + 1) = 0xE600000000000000;
  sub_2BCC0();
  v19 = v7[5];
  v20 = v7[6];
  v62 = &type metadata for String;
  *&v61 = v19;
  *(&v61 + 1) = v20;
  sub_2A5C4(&v61, &v63);

  v21 = swift_isUniquelyReferenced_nonNull_native();
  *&v60[0] = v18;
  sub_22FC8(&v63, v65, v21);
  sub_25044(v65);
  v22 = *&v60[0];
  v66 = *&v60[0];
  v23 = *(v1 + OBJC_IVAR___AXHapticMusicServer_currentMetadata);
  if (!v23)
  {
    goto LABEL_36;
  }

  *&v61 = 0x6E6F6973726576;
  *(&v61 + 1) = 0xE700000000000000;

  sub_2BCC0();
  *&v63 = 0x5F73636974706168;
  *(&v63 + 1) = 0xEF6E6F6973726576;
  sub_2BCC0();
  if (*(v23 + 16) && (v24 = sub_2103C(&v61), (v25 & 1) != 0))
  {
    sub_25098(*(v23 + 56) + 32 * v24, &v63);
    sub_25044(&v61);
    sub_2A5C4(&v63, v60);
    v26 = swift_isUniquelyReferenced_nonNull_native();
    v59 = v22;
    sub_22FC8(v60, v65, v26);
    sub_25044(v65);
    v66 = v59;
  }

  else
  {
    sub_25044(&v61);
    sub_213F0(v65, &v63);
    sub_25044(v65);
    sub_2AF20(&v63, &qword_39590, &qword_2D0C8);
  }

  *&v61 = 0x4464657461657263;
  *(&v61 + 1) = 0xEB00000000657461;
  sub_2BCC0();
  *&v63 = 0x5F64657461657263;
  *(&v63 + 1) = 0xEA00000000006E6FLL;
  sub_2BCC0();
  if (*(v23 + 16) && (v27 = sub_2103C(&v61), (v28 & 1) != 0))
  {
    sub_25098(*(v23 + 56) + 32 * v27, &v63);
    sub_25044(&v61);
    sub_2A5C4(&v63, v60);
    v29 = v66;
    v30 = swift_isUniquelyReferenced_nonNull_native();
    v59 = v29;
    sub_22FC8(v60, v65, v30);
    sub_25044(v65);
    v66 = v59;
  }

  else
  {
    sub_25044(&v61);
    sub_213F0(v65, &v63);
    sub_25044(v65);
    sub_2AF20(&v63, &qword_39590, &qword_2D0C8);
  }

  *&v61 = 0xD000000000000013;
  *(&v61 + 1) = 0x800000000002E280;
  sub_2BCC0();
  *&v60[0] = 0x7363697274656DLL;
  *(&v60[0] + 1) = 0xE700000000000000;
  sub_2BCC0();
  if (!*(v23 + 16))
  {
    goto LABEL_18;
  }

  v31 = sub_2103C(&v61);
  if ((v32 & 1) == 0)
  {
    goto LABEL_18;
  }

  sub_25098(*(v23 + 56) + 32 * v31, &v63);
  sub_25044(&v61);
  sub_2CC4(&qword_395D8, &qword_2D0F0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_19:
    v63 = 0u;
    v64 = 0u;
    goto LABEL_20;
  }

  v33 = *&v60[0];
  *&v63 = 0xD000000000000020;
  *(&v63 + 1) = 0x800000000002E2F0;
  sub_2BCC0();
  if (!*(v33 + 16) || (v34 = sub_2103C(&v61), (v35 & 1) == 0))
  {

LABEL_18:
    sub_25044(&v61);
    goto LABEL_19;
  }

  sub_25098(*(v33 + 56) + 32 * v34, &v63);
  sub_25044(&v61);

  if (!*(&v64 + 1))
  {
LABEL_20:
    sub_2AF20(&v63, &qword_39590, &qword_2D0C8);
    sub_213F0(v65, &v61);
    sub_25044(v65);
    sub_2AF20(&v61, &qword_39590, &qword_2D0C8);
    goto LABEL_21;
  }

  sub_2A5C4(&v63, &v61);
  v36 = v66;
  v37 = swift_isUniquelyReferenced_nonNull_native();
  *&v60[0] = v36;
  sub_22FC8(&v61, v65, v37);
  sub_25044(v65);
  v66 = *&v60[0];
LABEL_21:
  *&v61 = 0xD000000000000014;
  *(&v61 + 1) = 0x800000000002E2A0;
  sub_2BCC0();
  *&v60[0] = 0x7363697274656DLL;
  *(&v60[0] + 1) = 0xE700000000000000;
  sub_2BCC0();
  if (!*(v23 + 16))
  {
    goto LABEL_29;
  }

  v38 = sub_2103C(&v61);
  if ((v39 & 1) == 0)
  {
    goto LABEL_29;
  }

  sub_25098(*(v23 + 56) + 32 * v38, &v63);
  sub_25044(&v61);
  sub_2CC4(&qword_395D8, &qword_2D0F0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_30:
    v63 = 0u;
    v64 = 0u;
    goto LABEL_31;
  }

  v40 = *&v60[0];
  *&v63 = 0xD000000000000021;
  *(&v63 + 1) = 0x800000000002E2C0;
  sub_2BCC0();
  if (!*(v40 + 16) || (v41 = sub_2103C(&v61), (v42 & 1) == 0))
  {

LABEL_29:
    sub_25044(&v61);
    goto LABEL_30;
  }

  sub_25098(*(v40 + 56) + 32 * v41, &v63);
  sub_25044(&v61);

  if (!*(&v64 + 1))
  {
LABEL_31:
    sub_2AF20(&v63, &qword_39590, &qword_2D0C8);
    sub_213F0(v65, &v61);
    sub_25044(v65);
    sub_2AF20(&v61, &qword_39590, &qword_2D0C8);
    goto LABEL_32;
  }

  sub_2A5C4(&v63, &v61);
  v43 = v66;
  v44 = swift_isUniquelyReferenced_nonNull_native();
  *&v60[0] = v43;
  sub_22FC8(&v61, v65, v44);
  sub_25044(v65);
  v66 = *&v60[0];
LABEL_32:
  *&v61 = 0x746E6169726176;
  *(&v61 + 1) = 0xE700000000000000;
  sub_2BCC0();
  *&v63 = 0x746E6169726176;
  *(&v63 + 1) = 0xE700000000000000;
  sub_2BCC0();
  if (*(v23 + 16) && (v45 = sub_2103C(&v61), (v46 & 1) != 0))
  {
    sub_25098(*(v23 + 56) + 32 * v45, &v63);
    sub_25044(&v61);

    sub_2A5C4(&v63, v60);
    v47 = v66;
    v48 = swift_isUniquelyReferenced_nonNull_native();
    v59 = v47;
    sub_22FC8(v60, v65, v48);
    sub_25044(v65);
    v66 = v59;
  }

  else
  {

    sub_25044(&v61);
    sub_213F0(v65, v60);
    sub_25044(v65);
    sub_2AF20(v60, &qword_39590, &qword_2D0C8);
  }

LABEL_36:
  if (qword_39890 != -1)
  {
    swift_once();
  }

  v49 = sub_25AC(v2, HMLog);
  swift_beginAccess();
  (*(v3 + 16))(v5, v49, v2);
  v50 = sub_2B890();
  v51 = sub_2BB40();
  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    *&v61 = v53;
    *v52 = 136315138;
    swift_beginAccess();

    v54 = sub_2B9B0();
    v56 = v55;

    v57 = sub_20958(v54, v56, &v61);

    *(v52 + 4) = v57;
    _os_log_impl(&dword_0, v50, v51, "Returning now playing info %s", v52, 0xCu);
    sub_2566C(v53);
  }

  (*(v3 + 8))(v5, v2);
  swift_beginAccess();
  return v66;
}

uint64_t AXHapticMusicServer.processMessage(_:withIdentifier:fromClientWithIdentifier:)(unint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v136 = a3;
  v8 = sub_2CC4(&qword_39140, &qword_2CD98);
  __chkstk_darwin(v8 - 8);
  v10 = &v119 - v9;
  v132 = sub_2B8F0();
  v131 = *(v132 - 8);
  __chkstk_darwin(v132);
  v128 = &v119 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = sub_2B920();
  v129 = *(v130 - 8);
  __chkstk_darwin(v130);
  v127 = &v119 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2B8B0();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v17 = &v119 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v119 - v18;
  if (a1)
  {
    v20 = a1;
  }

  else
  {
    v20 = sub_247FC(&_swiftEmptyArrayStorage);
  }

  v126 = v17;
  v133 = v4;
  v122 = v10;

  v137 = v20;
  v135 = sub_2B9B0();
  v22 = v21;
  if (qword_39890 != -1)
  {
    swift_once();
  }

  v23 = sub_25AC(v13, HMLog);
  swift_beginAccess();
  v24 = *(v14 + 16);
  v125 = v14 + 16;
  v124 = v24;
  v24(v19, v23, v13);

  v25 = v13;
  v26 = sub_2B890();
  v27 = sub_2BB40();

  v28 = os_log_type_enabled(v26, v27);
  v123 = v14;
  v146 = v22;
  if (v28)
  {
    v29 = swift_slowAlloc();
    v134 = a4;
    v30 = v29;
    v31 = swift_slowAlloc();
    v120 = v25;
    aBlock = v31;
    *v30 = 134218498;
    *(v30 + 4) = a2;
    v121 = v23;
    *(v30 + 12) = 2080;
    *(v30 + 14) = sub_20958(v136, v134, &aBlock);
    *(v30 + 22) = 2080;
    *(v30 + 24) = sub_20958(v135, v22, &aBlock);
    _os_log_impl(&dword_0, v26, v27, "Service got a message: %ld from client: %s. Payload: %s", v30, 0x20u);
    v23 = v121;
    swift_arrayDestroy();

    a4 = v134;

    v32 = *(v14 + 8);
    v33 = v120;
    v32(v19, v120);
  }

  else
  {

    v32 = *(v14 + 8);
    v32(v19, v25);
    v33 = v25;
  }

  v34 = v137;
  v35 = a2;
  if (a2 > 3)
  {
    if (a2 == 4)
    {

      return sub_A34C();
    }

    if (a2 == 5)
    {

      v144[0] = 1684632949;
      v144[1] = 0xE400000000000000;
      sub_2BCC0();
      if (*(v34 + 16))
      {
        v97 = sub_2103C(&aBlock);
        if (v98)
        {
          sub_25098(*(v34 + 56) + 32 * v97, v145);
          sub_25044(&aBlock);
          if ((swift_dynamicCast() & 1) == 0)
          {
            goto LABEL_64;
          }

          v100 = v144[0];
          v99 = v144[1];
          v144[0] = 0xD000000000000010;
          v144[1] = 0x800000000002D950;
          sub_2BCC0();
          if (*(v34 + 16))
          {
            v101 = sub_2103C(&aBlock);
            if (v102)
            {
              sub_25098(*(v34 + 56) + 32 * v101, v145);
              sub_25044(&aBlock);

              if (swift_dynamicCast())
              {
                v103 = v144[0];
                v104 = v144[1];
                v105 = sub_2BB10();
                v106 = v122;
                (*(*(v105 - 8) + 56))(v122, 1, 1, v105);
                v107 = swift_allocObject();
                v107[2] = 0;
                v107[3] = 0;
                v108 = v133;
                v107[4] = v133;
                v107[5] = v100;
                v107[6] = v99;
                v107[7] = v103;
                v109 = v136;
                v107[8] = v104;
                v107[9] = v109;
                v107[10] = a4;

                v110 = v108;
                sub_C560(0, 0, v106, &unk_2CDE0, v107);
LABEL_51:

                return sub_247FC(&_swiftEmptyArrayStorage);
              }

LABEL_64:

              return sub_247FC(&_swiftEmptyArrayStorage);
            }
          }
        }
      }

LABEL_61:

      sub_25044(&aBlock);
      return sub_247FC(&_swiftEmptyArrayStorage);
    }

    if (a2 != 6)
    {
      goto LABEL_32;
    }

    v54 = v133;
    v55 = *&v133[OBJC_IVAR___AXHapticMusicServer_queue];
    v56 = swift_allocObject();
    *(v56 + 16) = v54;
    v142 = sub_254F4;
    v143 = v56;
    aBlock = _NSConcreteStackBlock;
    v139 = 1107296256;
    v140 = sub_2B614;
    v141 = &unk_34ED8;
    v57 = _Block_copy(&aBlock);
    v58 = v54;
    v59 = v55;
    v60 = v127;
    sub_2B900();
    v145[0] = &_swiftEmptyArrayStorage;
    sub_254AC(&qword_39160, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_2CC4(&qword_39168, &qword_2CDD0);
    sub_25B40(&qword_39170, &qword_39168, &qword_2CDD0, &protocol conformance descriptor for [A]);
    v61 = v128;
    v62 = v132;
    sub_2BC80();
    sub_2BBE0();
    _Block_release(v57);
  }

  else
  {
    if (a2 != 1)
    {
      if (a2 == 2)
      {

        strcpy(v144, "treatAsAdamID");
        HIWORD(v144[1]) = -4864;
        sub_2BCC0();
        if (!*(v34 + 16))
        {
          goto LABEL_61;
        }

        v76 = sub_2103C(&aBlock);
        if ((v77 & 1) == 0)
        {
          goto LABEL_61;
        }

        sub_25098(*(v34 + 56) + 32 * v76, v145);
        sub_25044(&aBlock);
        sub_2ACCC(0, &qword_39148, NSNumber_ptr);
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_64;
        }

        v78 = v144[0];
        v144[0] = 1701080931;
        v144[1] = 0xE400000000000000;
        sub_2BCC0();
        if (*(v34 + 16))
        {
          v79 = sub_2103C(&aBlock);
          if (v80)
          {
            sub_25098(*(v34 + 56) + 32 * v79, v145);
            sub_25044(&aBlock);
            if (swift_dynamicCast())
            {
              v81 = v133;
              v83 = v144[0];
              v82 = v144[1];
              v144[0] = 1684632949;
              v144[1] = 0xE400000000000000;
              sub_2BCC0();
              if (*(v34 + 16) && (v84 = sub_2103C(&aBlock), (v85 & 1) != 0))
              {
                sub_25098(*(v34 + 56) + 32 * v84, v145);
                sub_25044(&aBlock);

                if (swift_dynamicCast())
                {
                  v86 = a4;
                  v87 = v144[0];
                  v88 = v144[1];
                  v89 = *&v81[OBJC_IVAR___AXHapticMusicServer_ahapAvailableQueue];
                  v90 = swift_allocObject();
                  v90[2] = v81;
                  v90[3] = v83;
                  v90[4] = v82;
                  v90[5] = v78;
                  v90[6] = v87;
                  v90[7] = v88;
                  v90[8] = v136;
                  v90[9] = v86;
                  v142 = sub_25420;
                  v143 = v90;
                  aBlock = _NSConcreteStackBlock;
                  v139 = 1107296256;
                  v140 = sub_2B614;
                  v141 = &unk_34E88;
                  v91 = _Block_copy(&aBlock);

                  v92 = v81;
                  v93 = v89;
                  v146 = v78;
                  v94 = v127;
                  sub_2B900();
                  v145[0] = &_swiftEmptyArrayStorage;
                  sub_254AC(&qword_39160, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
                  sub_2CC4(&qword_39168, &qword_2CDD0);
                  sub_25B40(&qword_39170, &qword_39168, &qword_2CDD0, &protocol conformance descriptor for [A]);
                  v95 = v128;
                  v96 = v132;
                  sub_2BC80();
                  sub_2BBE0();
                  _Block_release(v91);

                  (*(v131 + 8))(v95, v96);
                  (*(v129 + 8))(v94, v130);
                }

                else
                {
                }
              }

              else
              {

                sub_25044(&aBlock);
              }

              return sub_247FC(&_swiftEmptyArrayStorage);
            }

            goto LABEL_64;
          }
        }

        goto LABEL_59;
      }

      if (a2 == 3)
      {

        v144[0] = 1684632949;
        v144[1] = 0xE400000000000000;
        sub_2BCC0();
        if (!*(v34 + 16))
        {
          goto LABEL_61;
        }

        v36 = sub_2103C(&aBlock);
        if ((v37 & 1) == 0)
        {
          goto LABEL_61;
        }

        sub_25098(*(v34 + 56) + 32 * v36, v145);
        sub_25044(&aBlock);
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_64;
        }

        v39 = v144[0];
        v38 = v144[1];
        strcpy(v144, "treatAsAdamID");
        HIWORD(v144[1]) = -4864;
        sub_2BCC0();
        if (*(v34 + 16))
        {
          v40 = sub_2103C(&aBlock);
          if (v41)
          {
            sub_25098(*(v34 + 56) + 32 * v40, v145);
            sub_25044(&aBlock);
            sub_2ACCC(0, &qword_39148, NSNumber_ptr);
            if ((swift_dynamicCast() & 1) == 0)
            {

              goto LABEL_64;
            }

            v42 = v144[0];
            strcpy(v144, "register");
            BYTE1(v144[1]) = 0;
            WORD1(v144[1]) = 0;
            HIDWORD(v144[1]) = -402653184;
            sub_2BCC0();
            if (*(v34 + 16))
            {
              v43 = sub_2103C(&aBlock);
              if (v44)
              {
                sub_25098(*(v34 + 56) + 32 * v43, v145);
                sub_25044(&aBlock);

                if (swift_dynamicCast())
                {
                  v45 = v144[0];
                  if (![v144[0] BOOLValue])
                  {

                    v111 = sub_2BB10();
                    v112 = v122;
                    (*(*(v111 - 8) + 56))(v122, 1, 1, v111);
                    v113 = swift_allocObject();
                    v113[2] = 0;
                    v113[3] = 0;
                    v114 = v133;
                    v115 = v136;
                    v113[4] = v133;
                    v113[5] = v115;
                    v113[6] = a4;

                    v116 = v114;
                    sub_C560(0, 0, v112, &unk_2CDA8, v113);

                    return sub_247FC(&_swiftEmptyArrayStorage);
                  }

                  v46 = v133;
                  v47 = v133[OBJC_IVAR___AXHapticMusicServer_isHapticTrackPlaying];
                  v48 = sub_2BB10();
                  v49 = v122;
                  (*(*(v48 - 8) + 56))(v122, 1, 1, v48);
                  if (v47 == 1)
                  {
                    v50 = swift_allocObject();
                    v50[2] = 0;
                    v50[3] = 0;
                    v51 = v136;
                    v50[4] = v46;
                    v50[5] = v51;
                    v50[6] = a4;
                    v50[7] = v39;
                    v50[8] = v38;
                    v50[9] = v42;

                    v52 = v46;
                    v53 = &unk_2CDC8;
                  }

                  else
                  {
                    v50 = swift_allocObject();
                    v50[2] = 0;
                    v50[3] = 0;
                    v117 = v136;
                    v50[4] = v46;
                    v50[5] = v117;
                    v50[6] = a4;
                    v50[7] = v39;
                    v50[8] = v38;
                    v50[9] = v42;

                    v118 = v46;
                    v53 = &unk_2CDB8;
                  }

                  sub_C560(0, 0, v49, v53, v50);

                  goto LABEL_51;
                }

                goto LABEL_64;
              }
            }

            goto LABEL_61;
          }
        }

LABEL_59:
        sub_25044(&aBlock);
        return sub_247FC(&_swiftEmptyArrayStorage);
      }

LABEL_32:

      v70 = v126;
      v124(v126, v23, v33);

      v71 = v146;

      v72 = sub_2B890();
      v73 = sub_2BB60();

      if (os_log_type_enabled(v72, v73))
      {
        v74 = swift_slowAlloc();
        aBlock = swift_slowAlloc();
        *v74 = 134218498;
        *(v74 + 4) = v35;
        *(v74 + 12) = 2080;
        *(v74 + 14) = sub_20958(v136, a4, &aBlock);
        *(v74 + 22) = 2080;
        v75 = sub_20958(v135, v71, &aBlock);

        *(v74 + 24) = v75;
        _os_log_impl(&dword_0, v72, v73, "Unhandled service message: %ld from client: %s. Payload: %s", v74, 0x20u);
        swift_arrayDestroy();
      }

      else
      {
      }

      v32(v70, v33);
      return sub_247FC(&_swiftEmptyArrayStorage);
    }

    v63 = v133;
    v64 = *&v133[OBJC_IVAR___AXHapticMusicServer_queue];
    v65 = swift_allocObject();
    *(v65 + 16) = v63;
    v142 = sub_25630;
    v143 = v65;
    aBlock = _NSConcreteStackBlock;
    v139 = 1107296256;
    v140 = sub_2B614;
    v141 = &unk_34F50;
    v66 = _Block_copy(&aBlock);
    v67 = v64;
    v68 = v63;
    v60 = v127;
    sub_2B900();
    v145[0] = &_swiftEmptyArrayStorage;
    sub_254AC(&qword_39160, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_2CC4(&qword_39168, &qword_2CDD0);
    sub_25B40(&qword_39170, &qword_39168, &qword_2CDD0, &protocol conformance descriptor for [A]);
    v61 = v128;
    v62 = v132;
    sub_2BC80();
    sub_2BBE0();
    _Block_release(v66);
  }

  (*(v131 + 8))(v61, v62);
  (*(v129 + 8))(v60, v130);

  return sub_247FC(&_swiftEmptyArrayStorage);
}

uint64_t sub_C3A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = swift_task_alloc();
  *(v8 + 16) = v13;
  *v13 = v8;
  v13[1] = sub_C46C;

  return sub_2614C(a5, a6, a7, a8, v16, v17);
}

uint64_t sub_C46C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_C560(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_2CC4(&qword_39140, &qword_2CD98);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_2B0F0(a3, v25 - v10, &qword_39140, &qword_2CD98);
  v12 = sub_2BB10();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_2AF20(v11, &qword_39140, &qword_2CD98);
  }

  else
  {
    sub_2BB00();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_2BAF0();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_2BA10() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_2AF20(a3, &qword_39140, &qword_2CD98);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_2AF20(a3, &qword_39140, &qword_2CD98);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

void sub_C860()
{
  v1 = v0;
  v2 = sub_2B8B0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &aBlock[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR___AXHapticMusicServer_elapsedHapticPlayingTimeForTrack;
  if (*&v1[OBJC_IVAR___AXHapticMusicServer_elapsedHapticPlayingTimeForTrack] > 0.0)
  {
    v7 = CFAbsoluteTimeGetCurrent() - *&v1[v6];
    v8 = OBJC_IVAR___AXHapticMusicServer_totalActivePlayingTime;
    *&v1[OBJC_IVAR___AXHapticMusicServer_totalActivePlayingTime] = v7 + *&v1[OBJC_IVAR___AXHapticMusicServer_totalActivePlayingTime];
    if (qword_39890 != -1)
    {
      swift_once();
    }

    v9 = sub_25AC(v2, HMLog);
    swift_beginAccess();
    (*(v3 + 16))(v5, v9, v2);
    v10 = v1;
    v11 = sub_2B890();
    v12 = sub_2BB50();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 134218240;
      *(v13 + 4) = v7;
      *(v13 + 12) = 2048;
      *(v13 + 14) = *&v1[v8];
      _os_log_impl(&dword_0, v11, v12, "Play duration logging %f -> %f playback time", v13, 0x16u);
    }

    (*(v3 + 8))(v5, v2);
    *&v1[v6] = 0;
    v14 = *&v10[OBJC_IVAR___AXHapticMusicServer_playbackStatisticsTimer];
    if (([v14 isPending] & 1) == 0)
    {
      v15 = swift_allocObject();
      *(v15 + 16) = v10;
      aBlock[4] = sub_25F58;
      aBlock[5] = v15;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_2B614;
      aBlock[3] = &unk_35630;
      v16 = _Block_copy(aBlock);
      v17 = v10;

      [v14 afterDelay:v16 processBlock:60.0];
      _Block_release(v16);
    }
  }
}

void sub_CB50(void *a1, unint64_t a2, int a3, _BYTE *a4, unint64_t a5, uint64_t a6, uint64_t a7)
{
  v56 = a7;
  v53 = a5;
  v52 = a4;
  v51 = a3;
  v10 = sub_2B8B0();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v55 = &v50[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = __chkstk_darwin(v12);
  v16 = &v50[-v15];
  __chkstk_darwin(v14);
  v18 = &v50[-v17];
  if (qword_39890 != -1)
  {
    swift_once();
  }

  v19 = sub_25AC(v10, HMLog);
  swift_beginAccess();
  v20 = *(v11 + 16);
  v59 = v19;
  v58 = v20;
  v20(v18, v19, v10);

  v21 = sub_2B890();
  v22 = sub_2BB40();

  v23 = os_log_type_enabled(v21, v22);
  v60 = v11;
  v54 = a6;
  if (v23)
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v61 = v25;
    *v24 = 136315138;
    *(v24 + 4) = sub_20958(a1, a2, &v61);
    _os_log_impl(&dword_0, v21, v22, "About to check available:%s", v24, 0xCu);
    sub_2566C(v25);

    v11 = v60;
  }

  v57 = *(v11 + 8);
  v57(v18, v10);
  v26 = sub_E774(a1, a2, v51 & 1);
  sub_2CC4(&qword_39660, &qword_2D128);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2CD40;
  *(inited + 32) = 0x6C62616C69617661;
  *(inited + 40) = 0xE900000000000065;
  *(inited + 48) = v26 & 1;
  *(inited + 72) = &type metadata for Bool;
  *(inited + 80) = 1684632949;
  v28 = v52;
  *(inited + 88) = 0xE400000000000000;
  *(inited + 96) = v28;
  *(inited + 104) = v53;
  *(inited + 120) = &type metadata for String;
  *(inited + 128) = 1701080931;
  *(inited + 168) = &type metadata for String;
  *(inited + 136) = 0xE400000000000000;
  *(inited + 144) = a1;
  *(inited + 152) = a2;

  v29 = sub_24938(inited);
  swift_setDeallocating();
  sub_2CC4(&qword_39668, &qword_2D130);
  swift_arrayDestroy();
  v58(v16, v59, v10);
  v30 = v56;

  v31 = sub_2B890();
  v32 = sub_2BB40();

  v33 = os_log_type_enabled(v31, v32);
  v53 = v29;
  if (v33)
  {
    v34 = swift_slowAlloc();
    v52 = v16;
    v35 = v34;
    v61 = swift_slowAlloc();
    *v35 = 136315394;
    *(v35 + 4) = sub_20958(v54, v30, &v61);
    *(v35 + 12) = 2080;
    v36 = sub_2B9B0();
    v38 = sub_20958(v36, v37, &v61);

    *(v35 + 14) = v38;
    _os_log_impl(&dword_0, v31, v32, "Haptic track availability: %s %s", v35, 0x16u);
    swift_arrayDestroy();

    v57(v52, v10);
  }

  else
  {

    v57(v16, v10);
  }

  v39 = sub_2B9C0();
  v40 = [objc_opt_self() clientMessengerWithIdentifier:v39];

  v41 = v55;
  if (v40)
  {
    v58(v55, v59, v10);
    v42 = v40;
    v43 = sub_2B890();
    v44 = sub_2BB40();

    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      *v45 = 138412290;
      *(v45 + 4) = v42;
      *v46 = v40;
      v47 = v42;
      _os_log_impl(&dword_0, v43, v44, "Send availability info to: %@", v45, 0xCu);
      sub_2AF20(v46, &qword_391A8, &qword_2CDE8);
    }

    v57(v41, v10);
    sub_E0D0(v53);

    isa = sub_2B990().super.isa;

    v49 = [objc_opt_self() mainAccessQueue];
    [v42 sendAsynchronousMessage:isa withIdentifier:2 targetAccessQueue:v49 completion:0];
  }

  else
  {
  }
}

uint64_t sub_D2F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[23] = a8;
  v8[24] = v10;
  v8[21] = a6;
  v8[22] = a7;
  v8[19] = a4;
  v8[20] = a5;
  return (_swift_task_switch)(sub_D328, 0, 0);
}

uint64_t sub_D328()
{
  v1 = v0[24];
  v2 = *(v0[19] + OBJC_IVAR___AXHapticMusicServer_statusObservers);
  v0[25] = v2;
  v3 = v1;

  return (_swift_task_switch)(sub_D3B8, v2, 0);
}

uint64_t sub_D3B8()
{
  v1 = v0[24];
  v2 = v0[25];
  v4 = v0[22];
  v3 = v0[23];
  v6 = v0[20];
  v5 = v0[21];
  swift_beginAccess();
  v7 = v1;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v2 + 112);
  *(v2 + 112) = 0x8000000000000000;
  sub_22E0C(v4, v3, v1, v6, v5, isUniquelyReferenced_nonNull_native);

  *(v2 + 112) = v10;
  swift_endAccess();

  return (_swift_task_switch)(sub_D4CC, 0, 0);
}

uint64_t sub_D4CC()
{
  v1 = *(v0 + 152) + OBJC_IVAR___AXHapticMusicServer_trackIdentifier;
  v3 = *(v1 + 16);
  v2 = *(v1 + 32);
  v4 = *v1;
  *(v0 + 64) = *(v1 + 48);
  *(v0 + 32) = v3;
  *(v0 + 48) = v2;
  *(v0 + 16) = v4;
  sub_29BF0(v0 + 16, v0 + 72);
  v5 = swift_task_alloc();
  *(v0 + 208) = v5;
  *v5 = v0;
  v5[1] = sub_D59C;

  return sub_D698(v0 + 16, 1);
}

uint64_t sub_D59C()
{
  v1 = *v0;
  v4 = *v0;

  sub_29C28(v1 + 16);
  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_D698(uint64_t a1, char a2)
{
  *(v3 + 176) = a2;
  *(v3 + 96) = a1;
  *(v3 + 104) = v2;
  return (_swift_task_switch)(sub_D6BC, 0, 0);
}

uint64_t sub_D6BC()
{
  v1 = CFNotificationCenterGetDarwinNotifyCenter();
  if (_kAXSMusicHapticsActiveStatusDidChangeNotification)
  {
    v2 = v1;
    v3 = *(v0 + 104);
    v4 = _kAXSMusicHapticsActiveStatusDidChangeNotification;
    CFNotificationCenterPostNotification(v2, v4, 0, 0, 1u);

    *(v0 + 112) = *(v3 + OBJC_IVAR___AXHapticMusicServer_statusObservers);
    v1 = sub_D780;
  }

  else
  {
    __break(1u);
  }

  return (_swift_task_switch)(v1);
}

uint64_t sub_D780()
{
  v1 = *(v0 + 112);
  swift_beginAccess();
  *(v0 + 120) = *(v1 + 112);

  return (_swift_task_switch)(sub_D808, 0, 0);
}

uint64_t sub_D808()
{
  v1 = *(v0 + 120);
  v2 = *(v1 + 32);
  *(v0 + 177) = v2;
  v3 = -1;
  v4 = -1 << v2;
  if (-(-1 << v2) < 64)
  {
    v3 = ~(-1 << -(-1 << v2));
  }

  v5 = v3 & *(v1 + 64);
  if (v5)
  {
    v6 = 0;
LABEL_8:
    *(v0 + 128) = v5;
    *(v0 + 136) = v6;
    v9 = __clz(__rbit64(v5)) | (v6 << 6);
    v10 = (*(v1 + 48) + 16 * v9);
    v12 = *v10;
    v11 = v10[1];
    *(v0 + 144) = v11;
    v13 = (*(v1 + 56) + 24 * v9);
    v14 = *v13;
    v15 = v13[1];
    *(v0 + 152) = v15;
    v16 = v13[2];
    *(v0 + 160) = v16;
    *(v0 + 80) = v14;
    *(v0 + 88) = v15;
    v17 = v16;
    swift_bridgeObjectRetain_n();

    sub_2CC4(&qword_39588, &qword_2D0C0);
    sub_2ADF0();
    sub_2BCC0();
    v18 = swift_task_alloc();
    *(v0 + 168) = v18;
    *v18 = v0;
    v18[1] = sub_D9E0;
    v19 = *(v0 + 176);
    v20 = *(v0 + 96);

    return sub_26C9C(v12, v11, v0 + 16, v20, v19);
  }

  else
  {
    v7 = 0;
    v8 = ((63 - v4) >> 6) - 1;
    while (v8 != v7)
    {
      v6 = v7 + 1;
      v5 = *(v1 + 8 * v7++ + 72);
      if (v5)
      {
        goto LABEL_8;
      }
    }

    v22 = *(v0 + 8);

    return v22();
  }
}

uint64_t sub_D9E0()
{
  v1 = *v0;

  sub_25044(v1 + 16);

  return (_swift_task_switch)(sub_DAE4, 0, 0);
}

uint64_t sub_DAE4()
{
  v1 = *(v0 + 160);

  v3 = *(v0 + 136);
  v4 = (*(v0 + 128) - 1) & *(v0 + 128);
  if (v4)
  {
    result = *(v0 + 120);
LABEL_7:
    *(v0 + 128) = v4;
    *(v0 + 136) = v3;
    v6 = __clz(__rbit64(v4)) | (v3 << 6);
    v7 = (*(result + 48) + 16 * v6);
    v9 = *v7;
    v8 = v7[1];
    *(v0 + 144) = v8;
    v10 = (*(result + 56) + 24 * v6);
    v11 = *v10;
    v12 = v10[1];
    *(v0 + 152) = v12;
    v13 = v10[2];
    *(v0 + 160) = v13;
    *(v0 + 80) = v11;
    *(v0 + 88) = v12;
    v14 = v13;
    swift_bridgeObjectRetain_n();

    sub_2CC4(&qword_39588, &qword_2D0C0);
    sub_2ADF0();
    sub_2BCC0();
    v15 = swift_task_alloc();
    *(v0 + 168) = v15;
    *v15 = v0;
    v15[1] = sub_D9E0;
    v16 = *(v0 + 176);
    v17 = *(v0 + 96);

    return sub_26C9C(v9, v8, v0 + 16, v17, v16);
  }

  else
  {
    while (1)
    {
      v5 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        __break(1u);
        return result;
      }

      result = *(v0 + 120);
      if (v5 >= (((1 << *(v0 + 177)) + 63) >> 6))
      {
        break;
      }

      v4 = *(result + 8 * v5 + 64);
      ++v3;
      if (v4)
      {
        v3 = v5;
        goto LABEL_7;
      }
    }

    v18 = *(v0 + 8);

    return v18();
  }
}

uint64_t sub_DCC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[9] = a8;
  v8[10] = v10;
  v8[7] = a6;
  v8[8] = a7;
  v8[5] = a4;
  v8[6] = a5;
  return (_swift_task_switch)(sub_DCF0, 0, 0);
}

uint64_t sub_DCF0()
{
  v1 = v0[10];
  v2 = *(v0[5] + OBJC_IVAR___AXHapticMusicServer_statusObservers);
  v0[11] = v2;
  v3 = v1;

  return (_swift_task_switch)(sub_DD80, v2, 0);
}

uint64_t sub_DD80()
{
  v1 = v0[10];
  v2 = v0[11];
  v4 = v0[8];
  v3 = v0[9];
  v6 = v0[6];
  v5 = v0[7];
  swift_beginAccess();
  v7 = v1;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v2 + 112);
  *(v2 + 112) = 0x8000000000000000;
  sub_22E0C(v4, v3, v1, v6, v5, isUniquelyReferenced_nonNull_native);

  *(v2 + 112) = v11;
  swift_endAccess();

  v9 = v0[1];

  return v9();
}

uint64_t sub_DE8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  return (_swift_task_switch)(sub_DEB0, 0, 0);
}

uint64_t sub_DEDC()
{
  v1 = v0[7];
  v2 = v0[6];
  swift_beginAccess();

  sub_327C(0, 1, 0, v2, v1);
  swift_endAccess();
  v3 = v0[1];

  return v3();
}

uint64_t sub_E0D0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_2CC4(&qword_39640, &qword_2D0F8);
    v2 = sub_2BD90();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
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
  v7 = (v2 + 8);

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_25098(*(a1 + 56) + 32 * v13, v35);
    *&v34 = v16;
    *(&v34 + 1) = v15;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_2A5C4(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_2A5C4(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_2A5C4(v31, v32);
    result = sub_2BCA0(v2[5]);
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*&v7[8 * (v18 >> 6)]) == 0)
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
        v23 = *&v7[8 * v19];
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*&v7[8 * (v18 >> 6)])) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *&v7[(v10 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v10;
    v11 = v2[6] + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = sub_2A5C4(v32, (v2[7] + 32 * v10));
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

uint64_t sub_E398(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_2CC4(&qword_39640, &qword_2D0F8);
    v2 = sub_2BD90();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
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
  v7 = (v2 + 8);

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_2A5D4(*(a1 + 56) + 40 * v13, v41);
    v39 = v16;
    v40 = v15;
    v36 = v41[0];
    v37 = v41[1];
    v38 = v42;
    v26 = v16;
    v27 = v15;

    swift_dynamicCast();
    v24[0] = v36;
    v24[1] = v37;
    v25 = v38;
    swift_dynamicCast();
    v32 = v28;
    v33 = v29;
    v34 = v30;
    sub_2A5C4(&v31, v35);
    v28 = v32;
    v29 = v33;
    v30 = v34;
    sub_2A5C4(v35, v24);
    result = sub_2BCA0(v2[5]);
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*&v7[8 * (v18 >> 6)]) == 0)
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
        v23 = *&v7[8 * v19];
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*&v7[8 * (v18 >> 6)])) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *&v7[(v10 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v10;
    v11 = v2[6] + 40 * v10;
    *v11 = v28;
    *(v11 + 16) = v29;
    *(v11 + 32) = v30;
    result = sub_2A5C4(v24, (v2[7] + 32 * v10));
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

uint64_t sub_E684(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *sub_2AE84((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_2CC4(&qword_396D8, &qword_2D1A8);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return _swift_continuation_throwingResumeWithError(v4, v5);
  }

  else
  {
    **(*(v4 + 64) + 40) = sub_2B9A0();

    return _swift_continuation_throwingResume(v4);
  }
}

id sub_E774(void *a1, uint64_t a2, int a3)
{
  v161 = a2;
  v162 = a1;
  v5 = sub_2B8F0();
  v151 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v138 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2B920();
  v150 = *(v8 - 8);
  __chkstk_darwin(v8);
  v149 = &v138 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2B940();
  v155 = *(v10 - 8);
  v156 = v10;
  v11 = __chkstk_darwin(v10);
  v153 = &v138 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v154 = &v138 - v13;
  v14 = sub_2B8B0();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v17 = __chkstk_darwin(v16);
  v18 = __chkstk_darwin(v17);
  __chkstk_darwin(v18);
  v20 = __chkstk_darwin(&v138 - v19);
  v158 = &v138 - v21;
  v22 = __chkstk_darwin(v20);
  v27 = &v138 - v26;
  v159 = v3;
  v28 = &v3[OBJC_IVAR___AXHapticMusicServer_trackIdentifier];
  v29 = *&v3[OBJC_IVAR___AXHapticMusicServer_trackIdentifier];
  if (v29 == 99999999)
  {
    if (qword_39890 != -1)
    {
      swift_once();
    }

    v30 = sub_25AC(v14, HMLog);
    swift_beginAccess();
    (*(v15 + 16))(v27, v30, v14);
    v31 = sub_2B890();
    v32 = sub_2BB50();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_0, v31, v32, "Matched sample track - must be active", v33, 2u);
    }

    (*(v15 + 8))(v27, v14);
    return &dword_0 + 1;
  }

  v147 = v24;
  v148 = v22;
  v142 = v7;
  v143 = v25;
  v140 = v5;
  v141 = v23;
  v139 = v8;
  v157 = v15;
  v160 = v14;
  v36 = *(v28 + 1);
  v35 = *(v28 + 2);

  LODWORD(v152) = a3;
  if (a3)
  {
    v37 = v161;
    v38 = sub_2B9C0();
    v39 = [v38 longLongValue];

    v40 = 0;
    v41 = 0xE000000000000000;
    if (v29 && v39 && v29 == v39)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v37 = v161;

    v40 = v162;
    v41 = v37;
  }

  if (!v36 && v35 == 0xE000000000000000 || (sub_2BDC0() & 1) != 0 || !v40 && v41 == 0xE000000000000000 || (sub_2BDC0() & 1) != 0)
  {

    v42 = v157;
  }

  else
  {
    if (v36 == v40 && v35 == v41)
    {

LABEL_11:
      v42 = v157;

      goto LABEL_12;
    }

    v137 = sub_2BDC0();

    v42 = v157;
    if (v137)
    {
LABEL_12:
      v43 = v160;
      if (qword_39890 == -1)
      {
LABEL_13:
        v44 = sub_25AC(v43, HMLog);
        swift_beginAccess();
        v42[2](v158, v44, v43);
        v45 = sub_2B890();
        v46 = sub_2BB50();
        if (os_log_type_enabled(v45, v46))
        {
          v47 = swift_slowAlloc();
          *v47 = 0;
          _os_log_impl(&dword_0, v45, v46, "Matched current track - must be active", v47, 2u);
        }

        (v42[1])(v158, v43);
        return &dword_0 + 1;
      }

LABEL_58:
      swift_once();
      goto LABEL_13;
    }
  }

  v48 = v160;
  v49 = v152;
  if (v152)
  {
    v50 = sub_2B9C0();
    v51 = [v50 longLongValue];

    v52 = 0;
    v43 = 0xE000000000000000;
  }

  else
  {

    v51 = 0;
    v52 = v162;
    v43 = v37;
  }

  v138 = v51;
  *&v171 = v51;
  *(&v171 + 1) = v52;
  v172 = v43;
  v173 = 0xE000000000000000;
  v174 = 0xE000000000000000;
  v53 = qword_39890;

  if (v53 != -1)
  {
    swift_once();
  }

  v54 = sub_25AC(v48, HMLog);
  swift_beginAccess();
  v55 = v148;
  v145 = v42[2];
  v146 = v54;
  v144 = (v42 + 2);
  v145(v148, v54, v48);

  swift_bridgeObjectRetain_n();
  v56 = sub_2B890();
  v57 = v42;
  v58 = sub_2BB50();
  swift_bridgeObjectRelease_n();

  if (os_log_type_enabled(v56, v58))
  {
    v59 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    aBlock = v60;
    *v59 = 136315138;

    swift_bridgeObjectRetain_n();
    v61 = sub_25E4();
    v63 = v62;
    swift_bridgeObjectRelease_n();

    v64 = sub_20958(v61, v63, &aBlock);

    *(v59 + 4) = v64;
    _os_log_impl(&dword_0, v56, v58, "Requesting track identifier %s", v59, 0xCu);
    sub_2566C(v60);
    v49 = v152;

    v65 = v57[1];
    v66 = v55;
    v67 = v160;
  }

  else
  {

    v65 = v57[1];
    v66 = v55;
    v67 = v48;
  }

  v158 = v65;
  (v65)(v66, v67);
  v170 = 0;
  v68 = v159;
  v152 = OBJC_IVAR___AXHapticMusicServer_ahapAvailableCacheQueue;
  v69 = *&v159[OBJC_IVAR___AXHapticMusicServer_ahapAvailableCacheQueue];
  v70 = swift_allocObject();
  *(v70 + 16) = &v170;
  *(v70 + 24) = v68;
  v71 = v172;
  *(v70 + 32) = v171;
  *(v70 + 48) = v71;
  *(v70 + 64) = v173;
  *(v70 + 80) = v174;
  v72 = swift_allocObject();
  *(v72 + 16) = sub_2A934;
  *(v72 + 24) = v70;
  v168 = sub_2B658;
  v169 = v72;
  aBlock = _NSConcreteStackBlock;
  v165 = 1107296256;
  v166 = sub_1449C;
  v167 = &unk_360A8;
  v73 = _Block_copy(&aBlock);

  swift_bridgeObjectRetain_n();
  v74 = v69;
  v42 = v68;

  dispatch_sync(v74, v73);

  _Block_release(v73);
  LOBYTE(v73) = swift_isEscapingClosureAtFileLocation();

  if (v73)
  {
    __break(1u);
    goto LABEL_58;
  }

  if (v170)
  {
    v75 = v170;
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
    v76 = v147;
    v77 = v160;
    v145(v147, v146, v160);
    v78 = v161;

    v79 = v75;
    v80 = sub_2B890();
    v81 = sub_2BB50();

    v82 = &AXHapticMusicServer__prots;
    if (os_log_type_enabled(v80, v81))
    {
      v83 = swift_slowAlloc();
      v84 = swift_slowAlloc();
      aBlock = v84;
      *v83 = 136315394;
      *(v83 + 4) = sub_20958(v162, v78, &aBlock);
      *(v83 + 12) = 1024;
      *(v83 + 14) = [v79 BOOLValue];

      _os_log_impl(&dword_0, v80, v81, "Returning cached result for %s = %{BOOL}d", v83, 0x12u);
      sub_2566C(v84);

      v82 = &AXHapticMusicServer__prots;

      v85 = v76;
      v86 = v160;
    }

    else
    {

      v85 = v76;
      v86 = v77;
    }

    (v158)(v85, v86);
    v92 = [v79 v82[314].count];

    goto LABEL_42;
  }

  if (v138 != 99999999)
  {
    v148 = v42;

    sub_2ACCC(0, &qword_395A0, SHMediaItem_ptr);
    sub_2CC4(&qword_395A8, &qword_2D0D8);
    if (v49)
    {
      v94 = &SHMediaItemAppleMusicID;
    }

    else
    {
      v94 = &SHMediaItemISRC;
    }

    inited = swift_initStackObject();
    v96 = *v94;
    *(inited + 32) = *v94;
    *(inited + 16) = xmmword_2CD50;
    *(inited + 64) = &type metadata for String;
    *(inited + 40) = v162;
    *(inited + 48) = v161;

    v97 = v96;
    v98 = sub_24A68(inited);
    swift_setDeallocating();
    sub_2AF20(inited + 32, &qword_395B0, &qword_2D0E0);
    v99 = sub_144C4(v98);
    v100 = swift_allocObject();
    *(v100 + 16) = 0;
    v143 = v100 + 16;
    v101 = swift_allocObject();
    *(v101 + 16) = 0;
    v147 = (v101 + 16);
    v102 = v99;
    v162 = v102;
    v103 = dispatch_semaphore_create(0);
    v104 = objc_opt_self();
    v105 = swift_allocObject();
    v105[2] = v100;
    v105[3] = v101;
    v105[4] = v103;
    v168 = sub_2AA44;
    v169 = v105;
    aBlock = _NSConcreteStackBlock;
    v165 = 1107296256;
    v166 = sub_1513C;
    v167 = &unk_36120;
    v106 = _Block_copy(&aBlock);

    v161 = v101;

    v107 = v103;

    [v104 isHapticTrackAvailableForMediaItem:v102 completionHandler:v106];
    _Block_release(v106);
    v108 = v153;
    sub_2B930();
    v109 = v154;
    sub_2B950();
    v110 = v156;
    v111 = *(v155 + 8);
    v111(v108, v156);
    sub_2BC40();

    v112 = v160;
    v111(v109, v110);
    v113 = v141;
    v145(v141, v146, v112);
    v114 = v100;
    swift_retain_n();

    swift_bridgeObjectRetain_n();
    v115 = sub_2B890();
    v116 = sub_2BB50();
    swift_bridgeObjectRelease_n();

    if (os_log_type_enabled(v115, v116))
    {
      v117 = swift_slowAlloc();
      v118 = swift_slowAlloc();
      aBlock = v118;
      *v117 = 136315394;

      swift_bridgeObjectRetain_n();
      LODWORD(v156) = v116;
      v119 = sub_25E4();
      v121 = v120;
      swift_bridgeObjectRelease_n();

      v122 = sub_20958(v119, v121, &aBlock);

      *(v117 + 4) = v122;
      *(v117 + 12) = 1024;
      swift_beginAccess();
      LODWORD(v122) = *(v114 + 16);

      *(v117 + 14) = v122;

      _os_log_impl(&dword_0, v115, v156, "Storing cached result %s %{BOOL}d", v117, 0x12u);
      sub_2566C(v118);

      v123 = v113;
      v124 = v160;
    }

    else
    {

      v123 = v113;
      v124 = v112;
    }

    (v158)(v123, v124);
    v125 = v147;
    v126 = v148;
    swift_beginAccess();
    v127 = v142;
    if (*v125)
    {

      swift_bridgeObjectRelease_n();

      v128 = v170;

      return 0;
    }

    v129 = *&v159[v152];
    v130 = swift_allocObject();
    v131 = v172;
    *(v130 + 24) = v171;
    *(v130 + 16) = v126;
    *(v130 + 40) = v131;
    *(v130 + 56) = v173;
    *(v130 + 72) = v174;
    *(v130 + 80) = v114;
    v168 = sub_2AAA8;
    v169 = v130;
    aBlock = _NSConcreteStackBlock;
    v165 = 1107296256;
    v166 = sub_2B614;
    v167 = &unk_36170;
    v160 = _Block_copy(&aBlock);
    v132 = v126;

    v133 = v129;
    v134 = v149;
    sub_2B900();
    v163 = &_swiftEmptyArrayStorage;
    sub_254AC(&qword_39160, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_2CC4(&qword_39168, &qword_2CDD0);
    sub_25B40(&qword_39170, &qword_39168, &qword_2CDD0, &protocol conformance descriptor for [A]);
    v135 = v140;
    sub_2BC80();
    v136 = v160;
    sub_2BBE0();

    _Block_release(v136);
    (*(v151 + 8))(v127, v135);
    (*(v150 + 8))(v134, v139);

    swift_beginAccess();
    v92 = *(v114 + 16);

LABEL_42:
    v93 = v170;

    return v92;
  }

  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();
  v87 = v160;
  v145(v143, v146, v160);
  v88 = sub_2B890();
  v89 = sub_2BB50();
  if (os_log_type_enabled(v88, v89))
  {
    v90 = swift_slowAlloc();
    *v90 = 0;
    _os_log_impl(&dword_0, v88, v89, "Matched sample track, we have haptics", v90, 2u);
    v87 = v160;
  }

  (v158)(v143, v87);
  v91 = v170;

  return &dword_0 + 1;
}

Swift::Void __swiftcall AXHapticMusicServer.startHapticMusic(codeFlowIdentifier:)(Swift::String codeFlowIdentifier)
{
  object = codeFlowIdentifier._object;
  countAndFlagsBits = codeFlowIdentifier._countAndFlagsBits;
  v4 = sub_2B8B0();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v20 - v9;
  if (*(v1 + OBJC_IVAR___AXHapticMusicServer_isEnabled))
  {
    if (qword_39890 != -1)
    {
      swift_once();
    }

    v11 = sub_25AC(v4, HMLog);
    swift_beginAccess();
    (*(v5 + 16))(v8, v11, v4);
    v12 = sub_2B890();
    v13 = sub_2BB40();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_0, v12, v13, "Already running Haptic Music, no need to start", v14, 2u);
    }

    (*(v5 + 8))(v8, v4);
  }

  else
  {
    *(v1 + OBJC_IVAR___AXHapticMusicServer_isEnabled) = 1;
    if (qword_39890 != -1)
    {
      swift_once();
    }

    v15 = sub_25AC(v4, HMLog);
    swift_beginAccess();
    (*(v5 + 16))(v10, v15, v4);

    v16 = sub_2B890();
    v17 = sub_2BB70();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v20 = v19;
      *v18 = 136315138;
      *(v18 + 4) = sub_20958(countAndFlagsBits, object, &v20);
      _os_log_impl(&dword_0, v16, v17, "Starting Haptic Music %s", v18, 0xCu);
      sub_2566C(v19);
    }

    (*(v5 + 8))(v10, v4);
    sub_54CC(countAndFlagsBits, object);
  }
}

Swift::Void __swiftcall AXHapticMusicServer.stopHapticMusic()()
{
  v1 = v0;
  v2 = sub_2B8B0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR___AXHapticMusicServer_isEnabled;
  if (v1[OBJC_IVAR___AXHapticMusicServer_isEnabled] == 1)
  {
    if (qword_39890 != -1)
    {
      swift_once();
    }

    v7 = sub_25AC(v2, HMLog);
    swift_beginAccess();
    (*(v3 + 16))(v5, v7, v2);
    v8 = sub_2B890();
    v9 = sub_2BB40();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_0, v8, v9, "Stopping haptic music", v10, 2u);
    }

    (*(v3 + 8))(v5, v2);
    v1[v6] = 0;
    v11 = &v1[OBJC_IVAR___AXHapticMusicServer_trackIdentifier];
    *v11 = 0;
    v11[1] = 0;
    v11[2] = 0xE000000000000000;
    v11[3] = 0;
    v11[4] = 0xE000000000000000;
    v11[5] = 0;
    v11[6] = 0xE000000000000000;

    v12 = v1;
    sub_27AFC(v12, v12, &unk_35988, sub_27A1C, &unk_359A0);
  }
}

uint64_t sub_100F8(void *a1, char *a2)
{
  v4 = sub_2B8F0();
  v36 = *(v4 - 8);
  v37 = v4;
  __chkstk_darwin(v4);
  v33 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2B920();
  v34 = *(v6 - 8);
  v35 = v6;
  __chkstk_darwin(v6);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2B8B0();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_39890 != -1)
  {
    swift_once();
  }

  v13 = sub_25AC(v9, HMLog);
  swift_beginAccess();
  (*(v10 + 16))(v12, v13, v9);
  v14 = a1;
  v15 = sub_2B890();
  v16 = sub_2BB40();

  if (os_log_type_enabled(v15, v16))
  {
    v32 = a2;
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v17 = 138412290;
    v19 = v14;
    v31 = a1;
    if (!a1)
    {
      v19 = sub_2B9C0();
    }

    *(v17 + 4) = v19;
    *v18 = v19;
    v20 = v14;
    _os_log_impl(&dword_0, v15, v16, "Notification (coalesced): %@", v17, 0xCu);
    sub_2AF20(v18, &qword_391A8, &qword_2CDE8);

    a1 = v31;
    a2 = v32;
  }

  (*(v10 + 8))(v12, v9);
  v21 = *&a2[OBJC_IVAR___AXHapticMusicServer_queue];
  v22 = swift_allocObject();
  *(v22 + 16) = a2;
  *(v22 + 24) = a1;
  aBlock[4] = sub_27928;
  aBlock[5] = v22;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2B614;
  aBlock[3] = &unk_35950;
  v23 = _Block_copy(aBlock);
  v24 = v14;
  v25 = v21;
  v26 = a2;
  sub_2B900();
  v38 = &_swiftEmptyArrayStorage;
  sub_254AC(&qword_39160, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_2CC4(&qword_39168, &qword_2CDD0);
  sub_25B40(&qword_39170, &qword_39168, &qword_2CDD0, &protocol conformance descriptor for [A]);
  v27 = v33;
  v28 = v37;
  sub_2BC80();
  sub_2BBE0();
  _Block_release(v23);

  (*(v36 + 8))(v27, v28);
  (*(v34 + 8))(v8, v35);
}

void sub_105CC(void *a1, char *a2, void *a3, uint64_t a4, void *a5)
{
  v8 = a1;
  v9 = a3;
  v10 = a5;
  sub_2748C(a2, a3);
}

uint64_t sub_1064C(uint64_t a1)
{
  v2 = sub_2B8B0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &aBlock[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_39890 != -1)
  {
    swift_once();
  }

  v6 = sub_25AC(v2, HMLog);
  swift_beginAccess();
  (*(v3 + 16))(v5, v6, v2);
  v7 = sub_2B890();
  v8 = sub_2BB40();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_0, v7, v8, "Now playing app changed", v9, 2u);
  }

  (*(v3 + 8))(v5, v2);
  v10 = (a1 + OBJC_IVAR___AXHapticMusicServer_nowPlayingBundleIdentifier);
  *v10 = 0;
  v10[1] = 0xE000000000000000;

  *(a1 + OBJC_IVAR___AXHapticMusicServer_isHapticTrackPlaying) = 0;
  if (*(a1 + OBJC_IVAR___AXHapticMusicServer_engineIsRunning) == 1)
  {
    *(a1 + OBJC_IVAR___AXHapticMusicServer_engineIsRunning) = 0;
    v11 = *(a1 + OBJC_IVAR___AXHapticMusicServer_engine);
    if (v11)
    {
      v12 = swift_allocObject();
      swift_unknownObjectWeakInit();
      aBlock[4] = sub_2B748;
      aBlock[5] = v12;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_2B744;
      aBlock[3] = &unk_358B0;
      v13 = _Block_copy(aBlock);
      v14 = v11;

      [v14 stopWithCompletionHandler:v13];
      _Block_release(v13);
    }
  }

  *(a1 + OBJC_IVAR___AXHapticMusicServer_isEnabled) = 0;
  return sub_97B0();
}

void sub_10924(void (*a1)(char *, uint64_t), void *a2, char *a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_2B8B0();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v13 = __chkstk_darwin(v12);
  v14 = __chkstk_darwin(v13);
  v15 = __chkstk_darwin(v14);
  v17 = &v97 - v16;
  __chkstk_darwin(v15);
  v22 = &v97 - v21;
  *&a3[OBJC_IVAR___AXHapticMusicServer_getNowPlayingInFlight] = 0;
  if (!a2)
  {
    v100 = v20;
    v98 = v19;
    v97 = v18;
    v35 = MRNowPlayingClientGetBundleIdentifier();
    v105 = a4;
    if (v35)
    {
      v36 = v35;
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        aBlock = 0;
        v111 = 0;
        sub_2B9E0();

        v37 = v111;
        if (v111)
        {
          v38 = aBlock;
          goto LABEL_14;
        }
      }

      else
      {
      }
    }

    v38 = 0;
    v37 = 0xE000000000000000;
LABEL_14:
    v39 = &a3[OBJC_IVAR___AXHapticMusicServer_nowPlayingBundleIdentifier];
    *v39 = v38;
    *(v39 + 1) = v37;

    v40 = MRNowPlayingClientGetParentAppBundleIdentifier();
    v101 = a1;
    if (v40)
    {
      v41 = v40;
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        aBlock = 0;
        v111 = 0;
        sub_2B9E0();

        v42 = aBlock;
        if (!v111)
        {
          v42 = 0;
        }

        v108 = v42;
        if (v111)
        {
          v43 = v111;
        }

        else
        {
          v43 = 0xE000000000000000;
        }

LABEL_23:
        if (qword_39890 != -1)
        {
          swift_once();
        }

        v44 = sub_25AC(v10, HMLog);
        swift_beginAccess();
        v45 = *(v11 + 16);
        v103 = v11 + 16;
        v104 = v44;
        v102 = v45;
        v45(v17, v44, v10);
        v46 = a3;

        v47 = sub_2B890();
        v48 = sub_2BB40();

        v107 = v46;

        v49 = os_log_type_enabled(v47, v48);
        v106 = v11;
        if (v49)
        {
          v50 = swift_slowAlloc();
          v99 = v10;
          v51 = v50;
          aBlock = swift_slowAlloc();
          *v51 = 136315650;
          v52 = a5;
          v54 = *v39;
          v53 = *(v39 + 1);

          v55 = sub_20958(v54, v53, &aBlock);

          *(v51 + 4) = v55;
          a5 = v52;
          *(v51 + 12) = 2080;
          v56 = v108;
          *(v51 + 14) = sub_20958(v108, v43, &aBlock);
          *(v51 + 22) = 1024;
          *(v51 + 24) = MRNowPlayingClientGetProcessIdentifier();
          _os_log_impl(&dword_0, v47, v48, "Now playing client %s parent %s %d", v51, 0x1Cu);
          swift_arrayDestroy();

          v10 = v99;

          v57 = *(v106 + 8);
          v57(v17, v10);
        }

        else
        {

          v57 = *(v11 + 8);
          v57(v17, v10);
          v56 = v108;
        }

        v58 = sub_2BA30();
        v59 = v107;
        if (v58 <= 0)
        {

          v56 = *v39;
          v43 = *(v39 + 1);
        }

        v60 = OBJC_IVAR___AXHapticMusicServer_supportedClients;
        swift_beginAccess();
        if (*(*&v59[v60] + 16) && (sub_20FC4(v56, v43), (v61 & 1) != 0))
        {
          swift_endAccess();
        }

        else
        {
          swift_endAccess();
          v62 = objc_allocWithZone(LSApplicationRecord);

          v63 = sub_1F6AC(v56, v43, 0);
          if (v63)
          {
            v101 = v57;
            v108 = v63;
            v64 = [objc_allocWithZone(NSNumber) initWithBool:AXApplicationSupportsHapticMusic()];
            swift_beginAccess();

            v65 = v64;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v109 = *&v59[v60];
            *&v59[v60] = 0x8000000000000000;
            sub_232A4(v65, v56, v43, isUniquelyReferenced_nonNull_native);

            *&v59[v60] = v109;
            swift_endAccess();
            v67 = v98;
            v102(v98, v104, v10);

            v68 = v65;
            v69 = sub_2B890();
            v70 = sub_2BB40();

            if (os_log_type_enabled(v69, v70))
            {
              v71 = swift_slowAlloc();
              v100 = a5;
              v72 = v71;
              v73 = swift_slowAlloc();
              v74 = swift_slowAlloc();
              v99 = v10;
              v75 = v74;
              aBlock = v74;
              *v72 = 136315394;
              *(v72 + 4) = sub_20958(v56, v43, &aBlock);
              *(v72 + 12) = 2112;
              *(v72 + 14) = v68;
              *v73 = v68;
              v76 = v68;
              _os_log_impl(&dword_0, v69, v70, "Marking client as supporting MH %s = %@", v72, 0x16u);
              sub_2AF20(v73, &qword_391A8, &qword_2CDE8);

              sub_2566C(v75);
              v10 = v99;

              a5 = v100;

              v77 = v108;
            }

            else
            {

              v78 = v108;
            }

            v57 = v101;
            v101(v67, v10);
            v59 = v107;
          }
        }

        swift_beginAccess();
        v79 = *&v59[v60];
        if (*(v79 + 16) && (v80 = sub_20FC4(v56, v43), (v81 & 1) != 0))
        {
          v82 = v57;
          v83 = *(*(v79 + 56) + 8 * v80);
          swift_endAccess();
          v84 = v83;
          if (([v84 BOOLValue] & 1) == 0)
          {
            v90 = v56;
            v91 = v97;
            v102(v97, v104, v10);

            v92 = sub_2B890();
            v93 = sub_2BB40();

            if (os_log_type_enabled(v92, v93))
            {
              v94 = swift_slowAlloc();
              v95 = swift_slowAlloc();
              aBlock = v95;
              *v94 = 136315138;
              v96 = sub_20958(v90, v43, &aBlock);

              *(v94 + 4) = v96;
              _os_log_impl(&dword_0, v92, v93, "Client doesn't support MH %s", v94, 0xCu);
              sub_2566C(v95);
            }

            else
            {
            }

            v82(v91, v10);
            return;
          }
        }

        else
        {
          swift_endAccess();
        }

        v85 = *&v59[OBJC_IVAR___AXHapticMusicServer_queue];
        v86 = swift_allocObject();
        v86[2] = v105;
        v86[3] = a5;
        v86[4] = v59;
        v114 = sub_27A88;
        v115 = v86;
        aBlock = _NSConcreteStackBlock;
        v111 = 1107296256;
        v112 = sub_1261C;
        v113 = &unk_35A68;
        v87 = _Block_copy(&aBlock);
        v88 = v59;
        v89 = v85;

        MRMediaRemoteGetNowPlayingApplicationPlaybackState();
        _Block_release(v87);

        return;
      }
    }

    v108 = 0;
    v43 = 0xE000000000000000;
    goto LABEL_23;
  }

  v23 = qword_39890;
  v24 = a2;
  if (v23 != -1)
  {
    swift_once();
  }

  v25 = sub_25AC(v10, HMLog);
  swift_beginAccess();
  v26 = v10;
  (*(v11 + 16))(v22, v25, v10);
  v27 = v24;
  v28 = sub_2B890();
  v29 = sub_2BB60();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    *v30 = 138412290;
    type metadata accessor for CFError(0);
    sub_254AC(&qword_39578, type metadata accessor for CFError, &protocol conformance descriptor for CFErrorRef);
    swift_allocError();
    *v32 = v27;
    v33 = v27;
    v34 = _swift_stdlib_bridgeErrorToNSError();
    *(v30 + 4) = v34;
    *v31 = v34;
    _os_log_impl(&dword_0, v28, v29, "Error getting info %@", v30, 0xCu);
    sub_2AF20(v31, &qword_391A8, &qword_2CDE8);
  }

  else
  {
    v33 = v28;
    v28 = v27;
  }

  (*(v11 + 8))(v22, v26);
}

void sub_1161C(int a1, uint64_t a2, unint64_t a3, _BYTE *a4)
{
  v17 = a2;
  v7 = sub_2B8B0();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_39890 != -1)
  {
    swift_once();
  }

  v11 = sub_25AC(v7, HMLog);
  swift_beginAccess();
  (*(v8 + 16))(v10, v11, v7);

  v12 = sub_2B890();
  v13 = sub_2BB40();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v18 = v15;
    *v14 = 67109378;
    *(v14 + 4) = a1;
    *(v14 + 8) = 2080;
    *(v14 + 10) = sub_20958(v17, a3, &v18);
    _os_log_impl(&dword_0, v12, v13, "Got now playing state State %u %s", v14, 0x12u);
    sub_2566C(v15);
  }

  (*(v8 + 8))(v10, v7);
  if (a1 == 1)
  {
    sub_1188C(v17, a3);
  }

  else if (a4[OBJC_IVAR___AXHapticMusicServer_isHapticTrackPlaying] == 1)
  {
    a4[OBJC_IVAR___AXHapticMusicServer_pauseShouldCancelEngineStartup] = 1;
    sub_11D80(a4);
  }
}

void sub_1188C(uint64_t a1, unint64_t a2)
{
  v29 = a1;
  v4 = sub_2B8B0();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v26 - v9;
  if (qword_39890 != -1)
  {
    swift_once();
  }

  v28 = v8;
  v11 = sub_25AC(v4, HMLog);
  swift_beginAccess();
  v26 = *(v5 + 16);
  v26(v10, v11, v4);

  v12 = v2;
  v13 = sub_2B890();
  v14 = sub_2BB40();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v27 = v4;
    v17 = v5;
    v18 = v16;
    aBlock[0] = v16;
    *v15 = 136315394;
    *(v15 + 4) = sub_20958(v29, a2, aBlock);
    *(v15 + 12) = 1024;
    *(v15 + 14) = v12[OBJC_IVAR___AXHapticMusicServer_isHapticTrackPlaying];

    _os_log_impl(&dword_0, v13, v14, "Handling play state. Haptic state: %s %{BOOL}d", v15, 0x12u);
    sub_2566C(v18);
    v5 = v17;
    v4 = v27;
  }

  else
  {
  }

  (*(v5 + 8))(v10, v4);
  v19 = *&v12[OBJC_IVAR___AXHapticMusicServer_shutdownTimer];
  if (v19)
  {
    [v19 cancel];
  }

  v12[OBJC_IVAR___AXHapticMusicServer_pauseShouldCancelEngineStartup] = 0;
  if (!*&v12[OBJC_IVAR___AXHapticMusicServer_audioSession])
  {
    sub_4E94();
  }

  MRPlaybackQueueRequestCreateDefault();
  v20 = *&v12[OBJC_IVAR___AXHapticMusicServer_queue];
  v21 = swift_allocObject();
  v22 = v29;
  v21[2] = v12;
  v21[3] = v22;
  v21[4] = a2;
  aBlock[4] = sub_27AA8;
  aBlock[5] = v21;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_12670;
  aBlock[3] = &unk_35AB8;
  v23 = _Block_copy(aBlock);

  v24 = v12;
  v25 = v20;

  MRMediaRemoteRequestNowPlayingPlaybackQueueSync();
  _Block_release(v23);
}

void sub_11D80(void *a1)
{
  v2 = sub_2B8B0();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v9 = &v54 - v8;
  v10 = __chkstk_darwin(v7);
  v54 = &v54 - v11;
  __chkstk_darwin(v10);
  v13 = &v54 - v12;
  if (qword_39890 != -1)
  {
    goto LABEL_35;
  }

  while (1)
  {
    v14 = sub_25AC(v2, HMLog);
    swift_beginAccess();
    v15 = *(v3 + 16);
    v69 = v14;
    v68 = v3 + 16;
    v67 = v15;
    v15(v13, v14, v2);
    v16 = a1;
    v17 = sub_2B890();
    v18 = sub_2BB40();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 67109120;
      *(v19 + 4) = *(&v16->isa + OBJC_IVAR___AXHapticMusicServer_isHapticTrackPlaying);

      _os_log_impl(&dword_0, v17, v18, "Handling pause state. Haptic track is playing: %{BOOL}d", v19, 8u);
    }

    else
    {

      v17 = v16;
    }

    v20 = *(v3 + 8);
    v3 += 8;
    v66 = v20;
    v20(v13, v2);
    v21 = OBJC_IVAR___AXHapticMusicServer_players;
    swift_beginAccess();
    v13 = *(&v16->isa + v21);
    if (!(v13 >> 62))
    {
      a1 = *(&dword_10 + (v13 & 0xFFFFFFFFFFFFFF8));
      if (!a1)
      {
        break;
      }

      goto LABEL_7;
    }

    a1 = sub_2BD60();
    if (!a1)
    {
      break;
    }

LABEL_7:
    v61 = OBJC_IVAR___AXHapticMusicServer_isHapticTrackPlaying;
    v65 = v13 & 0xC000000000000001;
    v59 = v13 & 0xFFFFFFFFFFFFFF8;

    v22 = 0;
    *&v23 = 136315138;
    v56 = v23;
    v62 = v9;
    v58 = v2;
    v57 = v16;
    v64 = v13;
    v63 = a1;
    v55 = v6;
    while (v65)
    {
      v24 = sub_2BD00();
      v25 = (v22 + 1);
      if (__OFADD__(v22, 1))
      {
        goto LABEL_33;
      }

LABEL_17:
      aBlock[0] = 0;
      v26 = [v24 pauseAtTime:aBlock error:0.0];
      v27 = aBlock[0];
      if (v26)
      {
        *(&v16->isa + v61) = 0;
        v67(v9, v69, v2);
        v28 = v27;
        v29 = sub_2B890();
        v30 = sub_2BB40();
        if (os_log_type_enabled(v29, v30))
        {
          v31 = swift_slowAlloc();
          *v31 = 0;
          _os_log_impl(&dword_0, v29, v30, "Haptics Paused", v31, 2u);
          v9 = v62;

          swift_unknownObjectRelease();
        }

        else
        {

          swift_unknownObjectRelease();
        }

        v66(v9, v2);
      }

      else
      {
        v32 = aBlock[0];
        sub_2B7D0();

        swift_willThrow();
        v67(v6, v69, v2);
        swift_errorRetain();
        v33 = v6;
        v34 = sub_2B890();
        v35 = sub_2BB60();

        if (os_log_type_enabled(v34, v35))
        {
          v36 = swift_slowAlloc();
          v60 = swift_slowAlloc();
          aBlock[0] = v60;
          *v36 = v56;
          swift_getErrorValue();
          v37 = sub_2BDF0();
          v39 = v34;
          v40 = v3;
          v41 = sub_20958(v37, v38, aBlock);

          *(v36 + 4) = v41;
          v3 = v40;
          v42 = v39;
          _os_log_impl(&dword_0, v39, v35, "Failed to pause haptics. %s", v36, 0xCu);
          sub_2566C(v60);
          v2 = v58;

          v16 = v57;

          swift_unknownObjectRelease();

          v6 = v55;
          v66(v55, v2);
        }

        else
        {
          swift_unknownObjectRelease();

          v66(v33, v2);
          v6 = v33;
        }

        v9 = v62;
      }

      v13 = v64;
      a1 = v63;
      ++v22;
      if (v25 == v63)
      {

        goto LABEL_25;
      }
    }

    if (v22 >= *(v59 + 16))
    {
      goto LABEL_34;
    }

    v24 = *(v13 + 8 * v22 + 32);
    swift_unknownObjectRetain();
    v25 = (v22 + 1);
    if (!__OFADD__(v22, 1))
    {
      goto LABEL_17;
    }

LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    swift_once();
  }

LABEL_25:

  v43 = sub_2BA30();

  if (v43)
  {
    v44 = 20.0;
  }

  else
  {
    v44 = 1.0;
  }

  v45 = v54;
  v67(v54, v69, v2);
  v46 = sub_2B890();
  v47 = sub_2BB40();
  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    *v48 = 134217984;
    *(v48 + 4) = v44;
    _os_log_impl(&dword_0, v46, v47, "Engine shutdown in %f", v48, 0xCu);
  }

  v66(v45, v2);
  v49 = *(&v16->isa + OBJC_IVAR___AXHapticMusicServer_shutdownTimer);
  if (v49)
  {
    v50 = swift_allocObject();
    v50[2] = v16;
    aBlock[4] = sub_2B6F0;
    aBlock[5] = v50;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2B614;
    aBlock[3] = &unk_362B0;
    v51 = _Block_copy(aBlock);
    v52 = v16;
    v53 = v49;

    [v53 afterDelay:v51 processBlock:v44];
    _Block_release(v51);
  }
}

uint64_t sub_1261C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

void sub_12670(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

void sub_126E8(void *a1)
{
  v2 = sub_2B8B0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &aBlock[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_39890 != -1)
  {
    swift_once();
  }

  v6 = sub_25AC(v2, HMLog);
  swift_beginAccess();
  (*(v3 + 16))(v5, v6, v2);
  v7 = a1;
  v8 = sub_2B890();
  v9 = sub_2BB40();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 67109120;
    *(v10 + 4) = *(&v7->isa + OBJC_IVAR___AXHapticMusicServer_engineIsRunning);

    _os_log_impl(&dword_0, v8, v9, "Check shutdown engine: running %{BOOL}d", v10, 8u);
  }

  else
  {

    v8 = v7;
  }

  (*(v3 + 8))(v5, v2);
  if (*(&v7->isa + OBJC_IVAR___AXHapticMusicServer_engineIsRunning) == 1)
  {
    v11 = *(&v7->isa + OBJC_IVAR___AXHapticMusicServer_engine);
    if (v11)
    {
      v12 = swift_allocObject();
      swift_unknownObjectWeakInit();
      aBlock[4] = sub_2B748;
      aBlock[5] = v12;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_2B744;
      aBlock[3] = &unk_359C8;
      v13 = _Block_copy(aBlock);
      v14 = v11;

      [v14 stopWithCompletionHandler:v13];
      _Block_release(v13);
    }
  }
}

char *sub_129A4(uint64_t a1, uint64_t a2)
{
  v3 = sub_2B8B0();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2B8F0();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2B920();
  v44 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v15 = result;
    v40 = a1;
    v41 = v6;
    v42 = v4;
    v43 = v3;
    result[OBJC_IVAR___AXHapticMusicServer_engineIsRunning] = 0;
    v16 = [objc_opt_self() defaultCenter];
    v17 = OBJC_IVAR___AXHapticMusicServer_audioSession;
    [v16 removeObserver:v15 name:AVAudioSessionInterruptionNotification object:*&v15[OBJC_IVAR___AXHapticMusicServer_audioSession]];

    v18 = *&v15[v17];
    *&v15[v17] = 0;

    v19 = *&v15[OBJC_IVAR___AXHapticMusicServer_engine];
    *&v15[OBJC_IVAR___AXHapticMusicServer_engine] = 0;

    sub_97B0();
    sub_C860();
    v20 = *&v15[OBJC_IVAR___AXHapticMusicServer_ahapAvailableCacheQueue];
    v21 = swift_allocObject();
    *(v21 + 16) = v15;
    aBlock[4] = sub_25F00;
    aBlock[5] = v21;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2B614;
    aBlock[3] = &unk_355E0;
    v22 = _Block_copy(aBlock);
    v23 = v20;
    v38 = v11;
    v24 = v23;
    v39 = v15;
    sub_2B900();
    v45 = &_swiftEmptyArrayStorage;
    sub_254AC(&qword_39160, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_2CC4(&qword_39168, &qword_2CDD0);
    sub_25B40(&qword_39170, &qword_39168, &qword_2CDD0, &protocol conformance descriptor for [A]);
    sub_2BC80();
    sub_2BBE0();
    _Block_release(v22);

    (*(v8 + 8))(v10, v7);
    (*(v44 + 8))(v13, v38);

    if (qword_39890 != -1)
    {
      swift_once();
    }

    v25 = v43;
    v26 = sub_25AC(v43, HMLog);
    swift_beginAccess();
    v28 = v41;
    v27 = v42;
    (*(v42 + 16))(v41, v26, v25);
    v29 = v40;
    swift_errorRetain();
    v30 = sub_2B890();
    v31 = sub_2BB40();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      *v32 = 138412290;
      if (v29)
      {
        swift_errorRetain();
        v34 = _swift_stdlib_bridgeErrorToNSError();
        v35 = v34;
      }

      else
      {
        v34 = 0;
        v35 = 0;
      }

      *(v32 + 4) = v34;
      *v33 = v35;
      _os_log_impl(&dword_0, v30, v31, "Stopping and clearing out haptic engine: %@", v32, 0xCu);
      sub_2AF20(v33, &qword_391A8, &qword_2CDE8);

      v36 = v39;
    }

    else
    {
      v36 = v30;
      v30 = v39;
    }

    return (*(v27 + 8))(v28, v25);
  }

  return result;
}

void sub_12F50(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v9 = sub_2B8B0();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1 || a2)
  {
    if (qword_39890 != -1)
    {
      swift_once();
    }

    v13 = sub_25AC(v9, HMLog);
    swift_beginAccess();
    (*(v10 + 16))(v12, v13, v9);
    v14 = a2;
    v15 = sub_2B890();
    v16 = sub_2BB60();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v25 = v18;
      *v17 = 136315138;
      if (a2)
      {
        v24[0] = v14;
        type metadata accessor for CFError(0);
        sub_254AC(&qword_39578, type metadata accessor for CFError, &protocol conformance descriptor for CFErrorRef);
        v19 = sub_2BDF0();
      }

      else
      {
        v19 = 0;
        v20 = 0;
      }

      v24[0] = v19;
      v24[1] = v20;
      sub_2CC4(&qword_39588, &qword_2D0C0);
      v21 = sub_2BA00();
      v23 = sub_20958(v21, v22, &v25);

      *(v17 + 4) = v23;
      _os_log_impl(&dword_0, v15, v16, "NowPlayingProvider#item Unexpected nil playbackQueue or error: %s", v17, 0xCu);
      sub_2566C(v18);
    }

    (*(v10 + 8))(v12, v9);
  }

  else
  {
    sub_1321C(a4, a5, a1);
  }
}

void sub_1321C(uint64_t a1, unint64_t a2, int64_t a3)
{
  v4 = v3;
  v142 = a1;
  v6 = sub_2B8B0();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v136 = &v134 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v138 = &v134 - v11;
  v12 = __chkstk_darwin(v10);
  v135 = &v134 - v13;
  v14 = __chkstk_darwin(v12);
  v149 = &v134 - v15;
  __chkstk_darwin(v14);
  v17 = &v134 - v16;
  if (qword_39890 != -1)
  {
    goto LABEL_103;
  }

  while (1)
  {
    v18 = sub_25AC(v6, HMLog);
    swift_beginAccess();
    v19 = *(v7 + 16);
    v152 = (v7 + 16);
    v153 = v18;
    v151 = v19;
    v19(v17, v18, v6);

    v20 = sub_2B890();
    v21 = sub_2BB40();

    v22 = os_log_type_enabled(v20, v21);
    v154 = v4;
    v148 = v7;
    if (v22)
    {
      v23 = swift_slowAlloc();
      v24 = v7;
      v25 = swift_slowAlloc();
      *&v161 = v25;
      *v23 = 136315138;
      *(v23 + 4) = sub_20958(v142, a2, &v161);
      _os_log_impl(&dword_0, v20, v21, "handle playing state with playback: %s", v23, 0xCu);
      sub_2566C(v25);

      v150 = *(v24 + 8);
    }

    else
    {

      v150 = *(v7 + 8);
    }

    v150(v17, v6);
    ContentItemAtOffset = MRPlaybackQueueGetContentItemAtOffset();
    ContentItemsCount = MRPlaybackQueueGetContentItemsCount();
    v28 = MRContentItemCopyNowPlayingInfo();
    v29 = v149;
    v139 = v28;
    v137 = ContentItemsCount;
    if (!v28)
    {
      v161 = 0u;
      v162 = 0u;
      sub_2AF20(&v161, &qword_39590, &qword_2D0C8);
      v161 = 0u;
      v162 = 0u;
      sub_2AF20(&v161, &qword_39590, &qword_2D0C8);
      v140 = 0;
      v141 = 0;
      v161 = 0u;
      v162 = 0u;
      v34 = 0xE000000000000000;
      v35 = 0xE000000000000000;
LABEL_32:
      v45 = v154;
      sub_2AF20(&v161, &qword_39590, &qword_2D0C8);
      goto LABEL_33;
    }

    v30 = v28;
    if (!kMRMediaRemoteNowPlayingInfoTitle)
    {
      __break(1u);
LABEL_106:
      __break(1u);
LABEL_107:
      __break(1u);
      return;
    }

    *&aBlock = sub_2B9F0();
    *(&aBlock + 1) = v31;
    v32 = v30;
    v33 = [v32 __swift_objectForKeyedSubscript:sub_2BDD0()];
    swift_unknownObjectRelease();

    if (v33)
    {
      sub_2BC70();
      swift_unknownObjectRelease();
    }

    else
    {
      aBlock = 0u;
      v158 = 0u;
    }

    v161 = aBlock;
    v162 = v158;
    if (*(&v158 + 1))
    {
      v36 = a2;
      if (swift_dynamicCast())
      {
        v37 = *(&aBlock + 1);
        v141 = aBlock;
        goto LABEL_16;
      }
    }

    else
    {
      v36 = a2;
      sub_2AF20(&v161, &qword_39590, &qword_2D0C8);
    }

    v141 = 0;
    v37 = 0xE000000000000000;
LABEL_16:
    if (!kMRMediaRemoteNowPlayingInfoArtist)
    {
      goto LABEL_106;
    }

    *&aBlock = sub_2B9F0();
    *(&aBlock + 1) = v38;
    v39 = v32;
    v40 = [v39 __swift_objectForKeyedSubscript:sub_2BDD0()];
    swift_unknownObjectRelease();

    if (v40)
    {
      sub_2BC70();
      swift_unknownObjectRelease();
    }

    else
    {
      aBlock = 0u;
      v158 = 0u;
    }

    v161 = aBlock;
    v162 = v158;
    if (*(&v158 + 1))
    {
      if (swift_dynamicCast())
      {
        v34 = *(&aBlock + 1);
        v140 = aBlock;
        goto LABEL_25;
      }
    }

    else
    {
      sub_2AF20(&v161, &qword_39590, &qword_2D0C8);
    }

    v140 = 0;
    v34 = 0xE000000000000000;
LABEL_25:
    if (!kMRMediaRemoteNowPlayingInfoDuration)
    {
      goto LABEL_107;
    }

    *&aBlock = sub_2B9F0();
    *(&aBlock + 1) = v41;
    v42 = v39;
    v43 = [v42 __swift_objectForKeyedSubscript:sub_2BDD0()];
    swift_unknownObjectRelease();

    if (v43)
    {
      sub_2BC70();
      swift_unknownObjectRelease();
    }

    else
    {
      aBlock = 0u;
      v158 = 0u;
    }

    v35 = v37;
    v29 = v149;
    v161 = aBlock;
    v162 = v158;
    a2 = v36;
    if (!*(&v158 + 1))
    {
      goto LABEL_32;
    }

    v44 = swift_dynamicCast();
    v45 = v154;
    if (v44)
    {
      v46 = *&aBlock;
      goto LABEL_34;
    }

LABEL_33:
    v46 = 0.0;
LABEL_34:
    v145 = sub_151B4(ContentItemAtOffset);
    v48 = v47;
    v143 = v49;
    v151(v29, v153, v6);

    v50 = sub_2B890();
    v51 = sub_2BB40();

    v52 = os_log_type_enabled(v50, v51);
    v146 = v48;
    v147 = v35;
    v144 = v34;
    if (v52)
    {
      v53 = swift_slowAlloc();
      *&v161 = swift_slowAlloc();
      *v53 = 136316162;
      *(v53 + 4) = sub_20958(v141, v35, &v161);
      *(v53 + 12) = 2080;
      *(v53 + 14) = sub_20958(v140, v34, &v161);
      *(v53 + 22) = 2048;
      *(v53 + 24) = v143;
      *(v53 + 32) = 2080;
      *(v53 + 34) = sub_20958(v145, v48, &v161);
      *(v53 + 42) = 2048;
      *(v53 + 44) = v137;
      _os_log_impl(&dword_0, v50, v51, "Now playing state: %s %s Song ID: %lld ISRC CODE: %s queueCount %ld", v53, 0x34u);
      swift_arrayDestroy();

      v45 = v154;

      v54 = v149;
    }

    else
    {

      v54 = v29;
    }

    v150(v54, v6);
    v55 = v6;
    v56 = v143;
    if (!v143 && (!v145 && v146 == 0xE000000000000000 || (sub_2BDC0() & 1) != 0))
    {
      break;
    }

    v57 = objc_opt_self();
    v58 = [v57 sharedInstance];
    v59 = [v58 hapticMusicAlgorithmSelections];

    if (!v59)
    {
      v60 = *&v45[OBJC_IVAR___AXHapticMusicServer_cachedAlgorithmSelections];
LABEL_46:
      v61 = v60 == 0;
      goto LABEL_47;
    }

    *&v161 = 0;
    sub_2BA90();

    v60 = *&v45[OBJC_IVAR___AXHapticMusicServer_cachedAlgorithmSelections];
    if (!v161)
    {
      goto LABEL_46;
    }

    if (v60)
    {
      v61 = sub_1FE60(v161, v60);
    }

    else
    {

      v61 = 0;
    }

LABEL_47:
    v62 = *&v45[OBJC_IVAR___AXHapticMusicServer_cachedIntensity];
    v63 = [v57 sharedInstance];
    [v63 hapticMusicIntensity];
    v65 = v64;

    v66 = v138;
    v151(v138, v153, v55);
    v67 = sub_2B890();
    v68 = sub_2BB40();
    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      *v69 = 67109120;
      *(v69 + 4) = (v61 & 1) == 0;
      _os_log_impl(&dword_0, v67, v68, "Algo selection changed: %{BOOL}d", v69, 8u);
    }

    v149 = (v148 + 8);
    v150(v66, v55);
    v70 = &v45[OBJC_IVAR___AXHapticMusicServer_trackIdentifier];
    v71 = *(v70 + 1);
    v72 = *(v70 + 2);
    v74 = v146;
    v73 = v147;
    if (v56 && *v70 && *v70 == v56 || (v71 || v72 != 0xE000000000000000) && (sub_2BDC0() & 1) == 0 && (v145 || v74 != 0xE000000000000000) && (sub_2BDC0() & 1) == 0 && (v71 == v145 && v72 == v74 || (sub_2BDC0() & 1) != 0))
    {
      v75 = v65;
      v76 = OBJC_IVAR___AXHapticMusicServer_players;
      v77 = v154;
      swift_beginAccess();
      v78 = *&v77[v76];
      if (v78 >> 62)
      {
        v79 = sub_2BD60();
      }

      else
      {
        v79 = *(&dword_10 + (v78 & 0xFFFFFFFFFFFFFF8));
      }

      v80 = vabds_f32(v62, v75);
      v73 = v147;
      if (v79 <= 0)
      {
        if ((v154[OBJC_IVAR___AXHapticMusicServer_fetchingHapticTracks] & v61 & 1) != 0 && v80 < 1.0e-10)
        {
LABEL_73:
          v148 = a2;

          v89 = v136;
          v151(v136, v153, v55);
          v90 = v154;
          v91 = sub_2B890();
          v92 = sub_2BB40();

          if (os_log_type_enabled(v91, v92))
          {
            v93 = swift_slowAlloc();
            v94 = swift_slowAlloc();
            v156[0] = v94;
            *v93 = 136315394;
            v95 = *(v70 + 1);
            v161 = *v70;
            v162 = v95;
            v163 = *(v70 + 2);
            v164 = *(v70 + 6);
            sub_29BF0(&v161, &aBlock);
            v96 = sub_25E4();
            v98 = v97;
            sub_29C28(&v161);
            v99 = sub_20958(v96, v98, v156);

            *(v93 + 4) = v99;
            *(v93 + 12) = 2048;
            *(v93 + 14) = v56;
            _os_log_impl(&dword_0, v91, v92, "Song ID matches haptic track id %s -> %lld", v93, 0x16u);
            sub_2566C(v94);

            v100 = v136;
          }

          else
          {

            v100 = v89;
          }

          v150(v100, v55);
          v126 = v139;
          v127 = v148;
          if ((v90[OBJC_IVAR___AXHapticMusicServer_fetchingHapticTracks] & 1) != 0 || (v128 = *&v90[OBJC_IVAR___AXHapticMusicServer_notificationTimer]) == 0)
          {
          }

          else
          {
            v129 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v130 = swift_allocObject();
            v131 = v142;
            v130[2] = v129;
            v130[3] = v131;
            v130[4] = v127;
            *&v159 = sub_29C98;
            *(&v159 + 1) = v130;
            *&aBlock = _NSConcreteStackBlock;
            *(&aBlock + 1) = 1107296256;
            *&v158 = sub_2B614;
            *(&v158 + 1) = &unk_35B30;
            v132 = _Block_copy(&aBlock);

            v133 = v128;

            [v133 afterDelay:v132 processBlock:0.1];

            _Block_release(v132);
          }

          return;
        }
      }

      else if ((v61 & (v80 < 1.0e-10)) == 1)
      {
        goto LABEL_73;
      }
    }

    v101 = swift_allocObject();
    v103 = v144;
    v102 = v145;
    v101[2] = v56;
    v101[3] = v102;
    v104 = v140;
    v105 = v141;
    v101[4] = v74;
    v101[5] = v105;
    v101[6] = v73;
    v101[7] = v104;
    v101[8] = v103;
    v106 = v154;
    v154[OBJC_IVAR___AXHapticMusicServer_fetchingHapticTracks] = 1;
    v106[OBJC_IVAR___AXHapticMusicServer_isHapticTrackPlaying] = 0;
    v107 = v106;

    sub_28404(v107, v107);

    v108 = *(v101 + 2);
    v161 = *(v101 + 1);
    v162 = v108;
    v163 = *(v101 + 3);
    v164 = v101[8];
    v17 = swift_allocObject();
    swift_unknownObjectWeakInit();

    sub_29BF0(&v161, &aBlock);
    sub_28CAC(v142, a2, &v161, v107, v17, v101, v46);

    v152 = v101;

    sub_29C28(&v161);
    v7 = OBJC_IVAR___AXHapticMusicServer_hapticCache;
    swift_beginAccess();
    v4 = *&v107[v7];
    v6 = v4 + 64;
    v109 = 1 << *(v4 + 32);
    v110 = -1;
    if (v109 < 64)
    {
      v110 = ~(-1 << v109);
    }

    v111 = v110 & *(v4 + 64);
    v112 = (v109 + 63) >> 6;

    v113 = 0;
    a2 = 0x4082C00000000000;
    v153 = v4;
    if (v111)
    {
LABEL_84:
      while (1)
      {
        v115 = *(v4 + 48) + 56 * (__clz(__rbit64(v111)) | (v113 << 6));
        v116 = *(v115 + 48);
        v117 = *(v115 + 32);
        v118 = *v115;
        v158 = *(v115 + 16);
        v159 = v117;
        aBlock = v118;
        v160 = v116;
        sub_29BF0(&aBlock, v156);
        Current = CFAbsoluteTimeGetCurrent();
        swift_beginAccess();
        v17 = *&v107[v7];
        if (!*(v17 + 16))
        {
          break;
        }

        v120 = sub_20F00(&aBlock);
        if ((v121 & 1) == 0)
        {
          goto LABEL_102;
        }

        v111 &= v111 - 1;
        v122 = *(*(v17 + 56) + 16 * v120 + 8);
        swift_endAccess();
        if (Current - v122 <= 600.0)
        {
          sub_29C28(&aBlock);
          if (!v111)
          {
            goto LABEL_80;
          }
        }

        else
        {
          swift_beginAccess();
          v123 = sub_20F00(&aBlock);
          v17 = v124;
          sub_29C28(&aBlock);
          if (v17)
          {
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v17 = *&v107[v7];
            v155 = v17;
            *&v107[v7] = 0x8000000000000000;
            if (!isUniquelyReferenced_nonNull_native)
            {
              sub_23E0C();
              v17 = v155;
            }

            v154 = *(*(v17 + 48) + 56 * v123 + 16);

            sub_2295C(v123, v17);
            *&v107[v7] = v17;
            v4 = v153;
          }

          swift_endAccess();
          a2 = 0x4082C00000000000;
          if (!v111)
          {
            goto LABEL_80;
          }
        }
      }
    }

    else
    {
LABEL_80:
      while (1)
      {
        v114 = v113 + 1;
        if (__OFADD__(v113, 1))
        {
          break;
        }

        if (v114 >= v112)
        {

          return;
        }

        v111 = *(v6 + 8 * v114);
        ++v113;
        if (v111)
        {
          v113 = v114;
          goto LABEL_84;
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_102:
    __break(1u);
LABEL_103:
    swift_once();
  }

  v81 = v135;
  v82 = v55;
  v151(v135, v153, v55);
  v83 = sub_2B890();
  v84 = sub_2BB60();
  v85 = os_log_type_enabled(v83, v84);
  v86 = v139;
  if (v85)
  {
    v87 = swift_slowAlloc();
    *v87 = 0;
    _os_log_impl(&dword_0, v83, v84, "No song id, stopping playback", v87, 2u);
  }

  v150(v81, v82);
  v88 = v45;
  sub_27AFC(v88, v88, &unk_35B68, sub_2B6F0, &unk_35B80);
}

id sub_144C4(void *a1)
{
  sub_2CC4(&qword_39680, &qword_2D148);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2CD60;
  *(inited + 32) = sub_2BC00();
  *(inited + 40) = SHMediaItemTimeRanges;
  v3 = SHMediaItemTimeRanges;
  *(inited + 48) = sub_2BC10();
  *(inited + 56) = SHMediaItemFrequencySkewRanges;
  v4 = SHMediaItemFrequencySkewRanges;
  v5 = sub_26B90(inited);
  swift_setDeallocating();
  sub_2CC4(&qword_39688, &qword_2D150);
  swift_arrayDestroy();
  v6 = 0;
  v7 = v5 + 64;
  v8 = 1 << *(v5 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(v5 + 64);
  v11 = (v8 + 63) >> 6;
  while (v10)
  {
    v12 = v10;
LABEL_10:
    v10 = (v12 - 1) & v12;
    if (a1[2])
    {
      v95 = (v12 - 1) & v12;
      v14 = (v6 << 9) | (8 * __clz(__rbit64(v12)));
      v15 = *(*(v5 + 56) + v14);
      v16 = *(*(v5 + 48) + v14);
      v17 = v15;
      v18 = sub_21080(v16, sub_206F8);
      if (v19)
      {
        sub_25098(a1[7] + 32 * v18, v100);
        sub_25098(v100, &v98);
        sub_2CC4(&qword_39690, &qword_2D158);
        if (swift_dynamicCast())
        {
          v20 = *&v97[0];
          v21 = *(*&v97[0] + 16);
          if (v21)
          {
            v90 = v17;
            v92 = v5;
            *&v98 = &_swiftEmptyArrayStorage;
            sub_207FC(0, v21, 0);
            v22 = v98;
            v23 = (v20 + 40);
            do
            {
              v24 = [objc_allocWithZone(SHRange) initWithLowerBound:*(v23 - 1) upperBound:*v23];
              *&v98 = v22;
              v26 = v22[2];
              v25 = v22[3];
              if (v26 >= v25 >> 1)
              {
                v88 = v24;
                sub_207FC((v25 > 1), v26 + 1, 1);
                v24 = v88;
                v22 = v98;
              }

              v22[2] = v26 + 1;
              v22[v26 + 4] = v24;
              v23 += 2;
              --v21;
            }

            while (v21);

            v17 = v90;
            v5 = v92;
          }

          else
          {

            v22 = &_swiftEmptyArrayStorage;
          }

          *(&v99 + 1) = sub_2CC4(&qword_396A0, &qword_2D168);
          *&v98 = v22;
          sub_2A5C4(&v98, v97);
          v48 = a1;
          v49 = v17;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v96 = v48;
          v51 = sub_21080(v49, sub_206F8);
          v53 = v48[2];
          v54 = (v52 & 1) == 0;
          v46 = __OFADD__(v53, v54);
          v55 = v53 + v54;
          if (v46)
          {
            goto LABEL_69;
          }

          v56 = v52;
          if (v48[3] >= v55)
          {
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v79 = v5;
              v80 = v51;
              sub_200E0();
              v51 = v80;
              v5 = v79;
            }
          }

          else
          {
            sub_20260(v55, isUniquelyReferenced_nonNull_native);
            v51 = sub_21080(v49, sub_206F8);
            if ((v56 & 1) != (v57 & 1))
            {
              goto LABEL_75;
            }
          }

          if (v56)
          {
            v58 = v48;
            v59 = (v48[7] + 32 * v51);
            sub_2566C((v96[7] + 32 * v51));
            sub_2A5C4(v97, v59);
          }

          else
          {
            v48[(v51 >> 6) + 8] |= 1 << v51;
            *(v48[6] + 8 * v51) = v49;
            sub_2A5C4(v97, (v48[7] + 32 * v51));
            v60 = v48[2];
            v46 = __OFADD__(v60, 1);
            v61 = v60 + 1;
            if (v46)
            {
              goto LABEL_72;
            }

            v58 = v48;
            v48[2] = v61;
          }

          v44 = v58;
        }

        else
        {
          sub_25098(v100, &v98);
          sub_2CC4(&qword_39698, &qword_2D160);
          if (swift_dynamicCast())
          {
            v27 = *&v97[0];
            v28 = *(*&v97[0] + 16);
            if (v28)
            {
              v91 = v17;
              v93 = v5;
              *&v97[0] = &_swiftEmptyArrayStorage;
              sub_207FC(0, v28, 0);
              v29 = *&v97[0];
              v30 = (v27 + 36);
              do
              {
                v31 = [objc_allocWithZone(SHRange) initWithLowerBound:*(v30 - 1) upperBound:*v30];
                *&v97[0] = v29;
                v33 = v29[2];
                v32 = v29[3];
                if (v33 >= v32 >> 1)
                {
                  v89 = v31;
                  sub_207FC((v32 > 1), v33 + 1, 1);
                  v31 = v89;
                  v29 = *&v97[0];
                }

                v29[2] = v33 + 1;
                v29[v33 + 4] = v31;
                v30 += 2;
                --v28;
              }

              while (v28);

              v17 = v91;
              v5 = v93;
            }

            else
            {

              v29 = &_swiftEmptyArrayStorage;
            }

            *(&v99 + 1) = sub_2CC4(&qword_396A0, &qword_2D168);
            *&v98 = v29;
            sub_2A5C4(&v98, v97);
            v44 = a1;
            v63 = v17;
            v64 = swift_isUniquelyReferenced_nonNull_native();
            v65 = sub_21080(v63, sub_206F8);
            v67 = v44[2];
            v68 = (v66 & 1) == 0;
            v46 = __OFADD__(v67, v68);
            v69 = v67 + v68;
            if (v46)
            {
              goto LABEL_70;
            }

            v70 = v66;
            if (v44[3] >= v69)
            {
              if ((v64 & 1) == 0)
              {
                v82 = v5;
                v83 = v65;
                sub_200E0();
                v65 = v83;
                v5 = v82;
              }
            }

            else
            {
              sub_20260(v69, v64);
              v65 = sub_21080(v63, sub_206F8);
              if ((v70 & 1) != (v71 & 1))
              {
                goto LABEL_75;
              }
            }

            if (v70)
            {
              v72 = (v44[7] + 32 * v65);
              sub_2566C(v72);
              sub_2A5C4(v97, v72);
            }

            else
            {
              v44[(v65 >> 6) + 8] |= 1 << v65;
              *(v44[6] + 8 * v65) = v63;
              sub_2A5C4(v97, (v44[7] + 32 * v65));
              v73 = v44[2];
              v46 = __OFADD__(v73, 1);
              v74 = v73 + 1;
              if (v46)
              {
                goto LABEL_74;
              }

              v44[2] = v74;
            }
          }

          else
          {
            sub_25098(v100, &v98);
            v34 = a1;
            v35 = v17;
            v36 = swift_isUniquelyReferenced_nonNull_native();
            *&v97[0] = v34;
            v38 = sub_21080(v35, sub_206F8);
            v39 = v34[2];
            v40 = (v37 & 1) == 0;
            v41 = v39 + v40;
            if (__OFADD__(v39, v40))
            {
              goto LABEL_71;
            }

            if (v34[3] >= v41)
            {
              if (v36)
              {
                v44 = *&v97[0];
                if (v37)
                {
                  goto LABEL_47;
                }
              }

              else
              {
                v81 = v37;
                sub_200E0();
                v44 = *&v97[0];
                if (v81)
                {
                  goto LABEL_47;
                }
              }
            }

            else
            {
              v94 = v37;
              sub_20260(v41, v36);
              v42 = sub_21080(v35, sub_206F8);
              if ((v94 & 1) != (v43 & 1))
              {
                goto LABEL_75;
              }

              v38 = v42;
              v44 = *&v97[0];
              if (v94)
              {
LABEL_47:
                v62 = (v44[7] + 32 * v38);
                sub_2566C(v62);
                sub_2A5C4(&v98, v62);

                goto LABEL_59;
              }
            }

            v44[(v38 >> 6) + 8] |= 1 << v38;
            *(v44[6] + 8 * v38) = v35;
            sub_2A5C4(&v98, (v44[7] + 32 * v38));
            v45 = v44[2];
            v46 = __OFADD__(v45, 1);
            v47 = v45 + 1;
            if (v46)
            {
              goto LABEL_73;
            }

            v44[2] = v47;
          }
        }

LABEL_59:
        v75 = sub_21080(v16, sub_206F8);
        if (v76)
        {
          v77 = v75;
          v78 = swift_isUniquelyReferenced_nonNull_native();
          *&v97[0] = v44;
          if ((v78 & 1) == 0)
          {
            sub_200E0();
            v44 = *&v97[0];
          }

          sub_2A5C4((v44[7] + 32 * v77), &v98);
          a1 = v44;
          sub_20530(v77, v44);

          sub_2566C(v100);
        }

        else
        {
          a1 = v44;
          sub_2566C(v100);

          v98 = 0u;
          v99 = 0u;
        }

        sub_2AF20(&v98, &qword_39590, &qword_2D0C8);
        v10 = v95;
      }

      else
      {

        v10 = v95;
      }
    }
  }

  while (1)
  {
    v13 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      break;
    }

    if (v13 >= v11)
    {

      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      type metadata accessor for SHMediaItemProperty(0);
      sub_254AC(&qword_396A8, type metadata accessor for SHMediaItemProperty, &unk_2D708);
      isa = sub_2B990().super.isa;
      v86 = [ObjCClassFromMetadata mediaItemWithProperties:isa];

      return v86;
    }

    v12 = *(v7 + 8 * v13);
    ++v6;
    if (v12)
    {
      v6 = v13;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_69:
  __break(1u);
LABEL_70:
  __break(1u);
LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);
LABEL_73:
  __break(1u);
LABEL_74:
  __break(1u);
LABEL_75:
  type metadata accessor for SHMediaItemProperty(0);
  result = sub_2BDE0();
  __break(1u);
  return result;
}

Swift::Int sub_14E90(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_2B8B0();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    if (qword_39890 != -1)
    {
      swift_once();
    }

    v14 = sub_25AC(v10, HMLog);
    swift_beginAccess();
    (*(v11 + 16))(v13, v14, v10);
    swift_errorRetain();
    v15 = sub_2B890();
    v16 = sub_2BB60();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v26 = a5;
      v18 = v17;
      v19 = swift_slowAlloc();
      v25 = a3;
      v20 = a1;
      v21 = v19;
      *v18 = 138412546;
      swift_errorRetain();
      v22 = _swift_stdlib_bridgeErrorToNSError();
      *(v18 + 4) = v22;
      *v21 = v22;
      *(v18 + 12) = 1024;
      *(v18 + 14) = v20 & 1;
      _os_log_impl(&dword_0, v15, v16, "Error checking availability: %@ %{BOOL}d", v18, 0x12u);
      sub_2AF20(v21, &qword_391A8, &qword_2CDE8);
      a1 = v20;
      a3 = v25;
    }

    (*(v11 + 8))(v13, v10);
  }

  swift_beginAccess();
  *(a3 + 16) = a1 & 1;
  swift_beginAccess();
  *(a4 + 16) = a2;
  swift_errorRetain();

  return sub_2BC50();
}

void sub_1513C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_151B4(uint64_t a1)
{
  v2 = sub_2B8B0();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v44 - v7;
  v9 = MRContentItemCopyNowPlayingInfo();
  if (!v9)
  {
    ITunesStoreIdentifier = MRContentItemGetITunesStoreIdentifier();
    v48 = 0u;
    v49 = 0u;
    goto LABEL_11;
  }

  ITunesStoreIdentifier = MRContentItemGetITunesStoreIdentifier();
  result = kMRMediaRemoteNowPlayingInfoInternationalStandardRecordingCode;
  if (kMRMediaRemoteNowPlayingInfoInternationalStandardRecordingCode)
  {
    *&v46 = sub_2B9F0();
    *(&v46 + 1) = v12;
    v13 = v9;
    v14 = [v13 __swift_objectForKeyedSubscript:sub_2BDD0()];
    swift_unknownObjectRelease();

    if (v14)
    {
      sub_2BC70();
      swift_unknownObjectRelease();
    }

    else
    {
      v46 = 0u;
      v47 = 0u;
    }

    v48 = v46;
    v49 = v47;
    if (*(&v47 + 1))
    {
      v15 = swift_dynamicCast();
      if (v15)
      {
        v17 = *(&v46 + 1);
        v16 = v46;
        if (ITunesStoreIdentifier)
        {
          goto LABEL_21;
        }

        goto LABEL_13;
      }

LABEL_12:
      v16 = 0;
      v17 = 0xE000000000000000;
      if (ITunesStoreIdentifier)
      {
        goto LABEL_21;
      }

LABEL_13:
      v18 = HIBYTE(v17) & 0xF;
      if ((v17 & 0x2000000000000000) == 0)
      {
        v18 = v16 & 0xFFFFFFFFFFFFLL;
      }

      if (v18)
      {
        v44 = v8;
        v45 = v3;
        v19 = *(v1 + OBJC_IVAR___AXHapticMusicServer_nowPlayingBundleIdentifier);
        v20 = *(v1 + OBJC_IVAR___AXHapticMusicServer_nowPlayingBundleIdentifier + 8);
        *&v48 = v19;
        *(&v48 + 1) = v20;
        __chkstk_darwin(v15);
        *(&v44 - 2) = &v48;

        v21 = sub_24168(sub_2B750, (&v44 - 4), &off_34DA8);
        swift_arrayDestroy();

        v3 = v45;
        if (v21)
        {
          v22 = sub_2B9C0();
          v23 = [v22 longLongValue];

          if (qword_39890 != -1)
          {
            swift_once();
          }

          v24 = sub_25AC(v2, HMLog);
          swift_beginAccess();
          v25 = v44;
          (*(v3 + 2))(v44, v24, v2);

          v26 = sub_2B890();
          v27 = sub_2BB40();

          if (os_log_type_enabled(v26, v27))
          {
            v28 = swift_slowAlloc();
            v29 = swift_slowAlloc();
            *&v46 = v29;
            *v28 = 136315394;
            *(v28 + 4) = sub_20958(v16, v17, &v46);
            *(v28 + 12) = 2048;
            *(v28 + 14) = v23;
            _os_log_impl(&dword_0, v26, v27, "Transfering isrc %s to adam ID: %lld", v28, 0x16u);
            sub_2566C(v29);

            (*(v3 + 1))(v44, v2);
          }

          else
          {

            (*(v3 + 1))(v25, v2);
          }

          return v16;
        }

LABEL_22:
        if (v16 == sub_2B9F0() && v17 == v30)
        {
        }

        else
        {
          v32 = sub_2BDC0();

          if ((v32 & 1) == 0)
          {

            return v16;
          }
        }

        if (qword_39890 != -1)
        {
          swift_once();
        }

        v33 = sub_25AC(v2, HMLog);
        swift_beginAccess();
        (*(v3 + 2))(v6, v33, v2);
        v34 = v9;
        v35 = sub_2B890();
        v36 = sub_2BB40();

        if (os_log_type_enabled(v35, v36))
        {
          v37 = swift_slowAlloc();
          v45 = v6;
          v38 = v16;
          v39 = v2;
          v40 = v3;
          v41 = v37;
          v42 = swift_slowAlloc();
          *v41 = 138412290;
          *(v41 + 4) = v34;
          *v42 = v9;
          v43 = v34;
          _os_log_impl(&dword_0, v35, v36, "Sample track: %@", v41, 0xCu);
          sub_2AF20(v42, &qword_391A8, &qword_2CDE8);

          v3 = v40;
          v2 = v39;
          v16 = v38;
          v6 = v45;
        }

        else
        {
          v43 = v35;
          v35 = v34;
        }

        (*(v3 + 1))(v6, v2);
        return v16;
      }

LABEL_21:
      swift_arrayDestroy();
      goto LABEL_22;
    }

LABEL_11:
    v15 = sub_2AF20(&v48, &qword_39590, &qword_2D0C8);
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

void sub_15820(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = sub_2B8B0();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &aBlock[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((v3[OBJC_IVAR___AXHapticMusicServer_fetchingHapticTracks] & 1) == 0)
  {
    if (qword_39890 != -1)
    {
      swift_once();
    }

    v10 = sub_25AC(v6, HMLog);
    swift_beginAccess();
    (*(v7 + 16))(v9, v10, v6);

    v11 = sub_2B890();
    v12 = sub_2BB40();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      aBlock[0] = v14;
      *v13 = 136315138;
      *(v13 + 4) = sub_20958(a1, a2, aBlock);
      _os_log_impl(&dword_0, v11, v12, "Start haptic playback: %s", v13, 0xCu);
      sub_2566C(v14);
    }

    (*(v7 + 8))(v9, v6);
    v15 = [objc_allocWithZone(MRNowPlayingRequest) init];
    v16 = *&v3[OBJC_IVAR___AXHapticMusicServer_queue];
    v17 = swift_allocObject();
    v17[2] = v3;
    v17[3] = a1;
    v17[4] = a2;
    aBlock[4] = sub_29D04;
    aBlock[5] = v17;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_18344;
    aBlock[3] = &unk_35BD0;
    v18 = _Block_copy(aBlock);

    v19 = v16;
    v20 = v3;

    [v15 requestNowPlayingItemMetadataOnQueue:v19 completion:v18];
    _Block_release(v18);
  }
}

_BYTE *sub_15B38(char a1, uint64_t a2, void *a3)
{
  v5 = sub_2CC4(&qword_39140, &qword_2CD98);
  __chkstk_darwin(v5 - 8);
  v7 = &v28[-v6];
  v8 = sub_2B8B0();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v28[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v13 = result;
    if (qword_39890 != -1)
    {
      swift_once();
    }

    v14 = sub_25AC(v8, HMLog);
    swift_beginAccess();
    (*(v9 + 16))(v11, v14, v8);

    v15 = sub_2B890();
    v16 = sub_2BB40();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 134218240;
      swift_beginAccess();
      *(v17 + 4) = a3[2];

      *(v17 + 12) = 1024;
      *(v17 + 14) = a1 & 1;
      _os_log_impl(&dword_0, v15, v16, "Fetched haptic tracks for %lld: %{BOOL}d", v17, 0x12u);
    }

    else
    {
    }

    (*(v9 + 8))(v11, v8);
    if (a1)
    {
      swift_beginAccess();
      v18 = a3[4];
      v19 = a3[5];
      v21 = a3[6];
      v20 = a3[7];
      v22 = a3[8];
      v23 = &v13[OBJC_IVAR___AXHapticMusicServer_trackIdentifier];
      *v23 = *(a3 + 1);
      *(v23 + 2) = v18;
      *(v23 + 3) = v19;
      *(v23 + 4) = v21;
      *(v23 + 5) = v20;
      *(v23 + 6) = v22;
    }

    else
    {
      v24 = &v13[OBJC_IVAR___AXHapticMusicServer_trackIdentifier];
      *v24 = 0;
      v24[1] = 0;
      v24[2] = 0xE000000000000000;
      v24[3] = 0;
      v24[4] = 0xE000000000000000;
      v24[5] = 0;
      v24[6] = 0xE000000000000000;
    }

    v13[OBJC_IVAR___AXHapticMusicServer_fetchingHapticTracks] = 0;
    v25 = sub_2BB10();
    (*(*(v25 - 8) + 56))(v7, 1, 1, v25);
    v26 = swift_allocObject();
    *(v26 + 16) = 0;
    *(v26 + 24) = 0;
    *(v26 + 32) = v13;
    *(v26 + 40) = a1 & 1;
    v27 = v13;
    sub_C560(0, 0, v7, &unk_2D188, v26);
  }

  return result;
}

uint64_t sub_15F1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 144) = a5;
  *(v5 + 128) = a4;
  return (_swift_task_switch)(sub_15F40, 0, 0);
}

uint64_t sub_15F40()
{
  v1 = *(v0 + 128) + OBJC_IVAR___AXHapticMusicServer_trackIdentifier;
  v3 = *(v1 + 16);
  v2 = *(v1 + 32);
  v4 = *v1;
  *(v0 + 64) = *(v1 + 48);
  *(v0 + 32) = v3;
  *(v0 + 48) = v2;
  *(v0 + 16) = v4;
  sub_29BF0(v0 + 16, v0 + 72);
  v5 = swift_task_alloc();
  *(v0 + 136) = v5;
  *v5 = v0;
  v5[1] = sub_16010;
  v6 = *(v0 + 144);

  return sub_D698(v0 + 16, v6);
}

uint64_t sub_16010()
{
  v1 = *v0;
  v4 = *v0;

  sub_29C28(v1 + 16);
  v2 = *(v4 + 8);

  return v2();
}

void sub_1610C(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_2B8B0();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v42 - v13;
  if (a1 && (*(a2 + OBJC_IVAR___AXHapticMusicServer_pauseShouldCancelEngineStartup) & 1) == 0)
  {
    v20 = swift_allocObject();
    v20[2] = a2;
    v20[3] = a3;
    v44 = a3;
    v20[4] = a4;
    v21 = qword_39890;
    v22 = a1;

    v43 = a2;
    if (v21 != -1)
    {
      swift_once();
    }

    v23 = sub_25AC(v8, HMLog);
    swift_beginAccess();
    (*(v9 + 16))(v14, v23, v8);
    v24 = v22;
    v25 = sub_2B890();
    v26 = sub_2BB50();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v42 = v20;
      v29 = v28;
      *v27 = 138412290;
      *(v27 + 4) = v24;
      *v28 = a1;
      v30 = v24;
      _os_log_impl(&dword_0, v25, v26, "metadata: %@", v27, 0xCu);
      sub_2AF20(v29, &qword_391A8, &qword_2CDE8);
      v20 = v42;
    }

    (*(v9 + 8))(v14, v8);
    v31 = v43;
    if (v43[OBJC_IVAR___AXHapticMusicServer_isHapticTrackPlaying])
    {
      v32 = v44;
      if (v43[OBJC_IVAR___AXHapticMusicServer_currentHapticPlayerStarted] == 1)
      {
LABEL_15:
        v33 = v24;
        v34 = 0;
LABEL_19:
        sub_16650(v33, v34, v31, v32, a4);
        goto LABEL_20;
      }
    }

    else
    {
      v32 = v44;
      if (v43[OBJC_IVAR___AXHapticMusicServer_engineIsRunning] != 1)
      {
        v35 = *&v43[OBJC_IVAR___AXHapticMusicServer_engine];
        if (v35)
        {
          v36 = v43;
          v37 = swift_allocObject();
          v37[2] = v36;
          v37[3] = sub_29D60;
          v37[4] = v20;
          v37[5] = v24;
          aBlock[4] = sub_29D70;
          aBlock[5] = v37;
          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 1107296256;
          aBlock[2] = sub_2B744;
          aBlock[3] = &unk_35C48;
          v38 = _Block_copy(aBlock);
          v39 = v24;
          v40 = v36;
          v41 = v35;

          [v41 startWithCompletionHandler:v38];

          _Block_release(v38);
          return;
        }

LABEL_20:

        return;
      }

      v43[OBJC_IVAR___AXHapticMusicServer_isHapticTrackPlaying] = 1;
      if (v31[OBJC_IVAR___AXHapticMusicServer_currentHapticPlayerStarted] == 1)
      {
        goto LABEL_15;
      }
    }

    v33 = v24;
    v34 = 1;
    goto LABEL_19;
  }

  if (qword_39890 != -1)
  {
    swift_once();
  }

  v15 = sub_25AC(v8, HMLog);
  swift_beginAccess();
  (*(v9 + 16))(v12, v15, v8);
  v16 = a2;
  v17 = sub_2B890();
  v18 = sub_2BB40();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 67109120;
    *(v19 + 4) = *(&v16->isa + OBJC_IVAR___AXHapticMusicServer_pauseShouldCancelEngineStartup);

    _os_log_impl(&dword_0, v17, v18, "Not process start requesting: %{BOOL}d", v19, 8u);
  }

  else
  {

    v17 = v16;
  }

  (*(v9 + 8))(v12, v8);
}

uint64_t sub_16650(void *a1, int a2, char *a3, uint64_t a4, uint64_t a5)
{
  LODWORD(v53) = a2;
  v9 = sub_2B8F0();
  v58 = *(v9 - 8);
  v59 = v9;
  __chkstk_darwin(v9);
  v55 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2B920();
  v56 = *(v11 - 8);
  v57 = v11;
  __chkstk_darwin(v11);
  v54 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2B940();
  v52 = *(v13 - 8);
  v14 = __chkstk_darwin(v13);
  v16 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v60 = &v48 - v17;
  v18 = sub_2B8B0();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v48 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = swift_allocObject();
  v23 = sub_29DD0(a1);
  *(v22 + 16) = v23;
  v24 = *&a3[OBJC_IVAR___AXHapticMusicServer_currentSpatialTrackInfo];
  if (v24)
  {
    v25 = v23;
    v50 = a4;
    v51 = a5;
    v26 = v24;
    [v26 startOffset];
    *(v22 + 16) = v27 + v25;
    if (qword_39890 != -1)
    {
      swift_once();
    }

    v28 = sub_25AC(v18, HMLog);
    swift_beginAccess();
    (*(v19 + 16))(v21, v28, v18);
    v29 = v26;
    v30 = sub_2B890();
    v31 = sub_2BB40();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v49 = v13;
      v33 = v32;
      *v32 = 134217984;
      [v29 startOffset];
      *(v33 + 1) = v34;
      _os_log_impl(&dword_0, v30, v31, "Adding spatial offset: %f", v33, 0xCu);
      v13 = v49;

      v35 = v29;
    }

    else
    {
      v35 = v30;
      v30 = v29;
    }

    a4 = v50;

    (*(v19 + 8))(v21, v18);
    a5 = v51;
  }

  v36 = *(v22 + 16);
  if (v53)
  {
    sub_16D74(*(v22 + 16));
  }

  else
  {
    sub_173BC(*(v22 + 16));
  }

  v53 = *&a3[OBJC_IVAR___AXHapticMusicServer_queue];
  sub_2B930();
  v37 = (v52 + 8);
  sub_2B950();
  v52 = *v37;
  (v52)(v16, v13);
  v38 = swift_allocObject();
  v38[2] = v22;
  v38[3] = a3;
  v38[4] = a4;
  v38[5] = a5;
  if (v36 >= 1.0)
  {
    v66 = sub_2A0D8;
    v67 = v38;
    aBlock = _NSConcreteStackBlock;
    v63 = 1107296256;
    v39 = &unk_35D10;
  }

  else
  {
    v66 = sub_2B76C;
    v67 = v38;
    aBlock = _NSConcreteStackBlock;
    v63 = 1107296256;
    v39 = &unk_35D60;
  }

  v64 = sub_2B614;
  v65 = v39;
  v40 = _Block_copy(&aBlock);

  v41 = a3;

  v42 = v54;
  sub_2B900();
  v61 = &_swiftEmptyArrayStorage;
  sub_254AC(&qword_39160, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_2CC4(&qword_39168, &qword_2CDD0);
  sub_25B40(&qword_39170, &qword_39168, &qword_2CDD0, &protocol conformance descriptor for [A]);
  v43 = v55;
  v44 = v59;
  sub_2BC80();
  v45 = v60;
  v46 = v53;
  sub_2BBA0();
  _Block_release(v40);

  (*(v58 + 8))(v43, v44);
  (*(v56 + 8))(v42, v57);
  (v52)(v45, v13);
}

uint64_t sub_16D74(double a1)
{
  v3 = sub_2B8B0();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = &v47 - v9;
  __chkstk_darwin(v8);
  v12 = &v47 - v11;
  if (qword_39890 != -1)
  {
    swift_once();
  }

  v13 = sub_25AC(v3, HMLog);
  swift_beginAccess();
  v14 = v4;
  v15 = *(v4 + 16);
  v54 = v4 + 16;
  v55 = v13;
  v53 = v15;
  v15(v12, v13, v3);
  v16 = v1;
  v17 = sub_2B890();
  v18 = sub_2BB70();
  v19 = os_log_type_enabled(v17, v18);
  v20 = &unk_39000;
  v50 = v3;
  if (v19)
  {
    v21 = swift_slowAlloc();
    *v21 = 134218496;
    *(v21 + 4) = a1;
    *(v21 + 12) = 1024;
    *(v21 + 14) = *(&v16->isa + OBJC_IVAR___AXHapticMusicServer_isHapticTrackPlaying);
    *(v21 + 18) = 2048;
    v22 = OBJC_IVAR___AXHapticMusicServer_players;
    swift_beginAccess();
    v23 = *(&v16->isa + v22);
    if (v23 >> 62)
    {
      v24 = sub_2BD60();
    }

    else
    {
      v24 = *(&dword_10 + (v23 & 0xFFFFFFFFFFFFFF8));
    }

    *(v21 + 20) = v24;

    _os_log_impl(&dword_0, v17, v18, "Starting at position for playing tracks: %f %{BOOL}d, players: %ld", v21, 0x1Cu);

    v3 = v50;
    v20 = &unk_39000;
  }

  else
  {

    v17 = v16;
  }

  v25 = *(v14 + 8);
  v51 = v14 + 8;
  v52 = v25;
  v25(v12, v3);
  if (*(&v16->isa + v20[42]))
  {
    v26 = OBJC_IVAR___AXHapticMusicServer_players;
    result = swift_beginAccess();
    v48 = v16;
    v28 = *(&v16->isa + v26);
    if (v28 >> 62)
    {
      result = sub_2BD60();
      v29 = result;
      if (result)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v29 = *(&dword_10 + (v28 & 0xFFFFFFFFFFFFFF8));
      if (v29)
      {
LABEL_11:
        if (v29 < 1)
        {
          __break(1u);
        }

        v56 = v28 & 0xC000000000000001;

        v30 = 0;
        *&v31 = 138412290;
        v49 = v31;
        do
        {
          if (v56)
          {
            v32 = sub_2BD00();
          }

          else
          {
            v32 = *(v28 + 8 * v30 + 32);
            swift_unknownObjectRetain();
          }

          v57 = 0;
          v33 = [v32 startAtTime:&v57 error:0.0];
          v34 = v57;
          if (v33 && (v57 = 0, v35 = v34, v36 = [v32 seekToOffset:&v57 error:a1], v34 = v57, v36))
          {
            v37 = v57;
            swift_unknownObjectRelease();
          }

          else
          {
            v38 = v34;
            sub_2B7D0();

            swift_willThrow();
            v53(v7, v55, v3);
            swift_errorRetain();
            v39 = sub_2B890();
            v40 = sub_2BB60();

            if (os_log_type_enabled(v39, v40))
            {
              v41 = swift_slowAlloc();
              v42 = swift_slowAlloc();
              *v41 = v49;
              swift_errorRetain();
              v43 = _swift_stdlib_bridgeErrorToNSError();
              *(v41 + 4) = v43;
              *v42 = v43;
              _os_log_impl(&dword_0, v39, v40, "Error seeking offset: %@", v41, 0xCu);
              sub_2AF20(v42, &qword_391A8, &qword_2CDE8);

              v3 = v50;

              swift_unknownObjectRelease();
            }

            else
            {
              swift_unknownObjectRelease();
            }

            v52(v7, v3);
          }

          ++v30;
        }

        while (v29 != v30);
      }
    }

    *(&v48->isa + OBJC_IVAR___AXHapticMusicServer_currentHapticPlayerStarted) = 1;
    return result;
  }

  v53(v10, v55, v3);
  v44 = sub_2B890();
  v45 = sub_2BB40();
  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    *v46 = 0;
    _os_log_impl(&dword_0, v44, v45, " -- Haptic not playing - not starting", v46, 2u);
  }

  return (v52)(v10, v3);
}

uint64_t sub_173BC(double a1)
{
  v3 = sub_2B8B0();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v54 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v9 = &v46 - v8;
  __chkstk_darwin(v7);
  v11 = &v46 - v10;
  if (qword_39890 != -1)
  {
    swift_once();
  }

  v12 = sub_25AC(v3, HMLog);
  swift_beginAccess();
  v13 = *(v4 + 16);
  v52 = v4 + 16;
  v53 = v12;
  v51 = v13;
  v13(v11, v12, v3);
  v14 = v1;
  v15 = sub_2B890();
  v16 = sub_2BB40();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = v4;
    v18 = swift_slowAlloc();
    *v18 = 134218496;
    *(v18 + 4) = a1;
    *(v18 + 12) = 1024;
    *(v18 + 14) = *(&v14->isa + OBJC_IVAR___AXHapticMusicServer_isHapticTrackPlaying);
    *(v18 + 18) = 2048;
    v19 = OBJC_IVAR___AXHapticMusicServer_players;
    swift_beginAccess();
    v20 = *(&v14->isa + v19);
    if (v20 >> 62)
    {
      v21 = sub_2BD60();
    }

    else
    {
      v21 = *(&dword_10 + (v20 & 0xFFFFFFFFFFFFFF8));
    }

    *(v18 + 20) = v21;

    _os_log_impl(&dword_0, v15, v16, "Seeking position for playing tracks: %f %{BOOL}d, players: %ld", v18, 0x1Cu);

    v4 = v17;
  }

  else
  {

    v15 = v14;
  }

  v50 = *(v4 + 8);
  v50(v11, v3);
  v22 = *(&v14->isa + OBJC_IVAR___AXHapticMusicServer_isHapticTrackPlaying);
  v47 = v4 + 8;
  if (v22)
  {
    if (*(&v14->isa + OBJC_IVAR___AXHapticMusicServer_currentPatternDuration) < a1)
    {
      *(&v14->isa + OBJC_IVAR___AXHapticMusicServer_currentHapticPlayerStarted) = 0;
    }

    v23 = OBJC_IVAR___AXHapticMusicServer_players;
    result = swift_beginAccess();
    v25 = *(&v14->isa + v23);
    if (v25 >> 62)
    {
      result = sub_2BD60();
      v26 = result;
      if (!result)
      {
        return result;
      }
    }

    else
    {
      v26 = *(&dword_10 + (v25 & 0xFFFFFFFFFFFFFF8));
      if (!v26)
      {
        return result;
      }
    }

    if (v26 < 1)
    {
      __break(1u);
    }

    v27 = v25 & 0xC000000000000001;

    v28 = 0;
    v29.n128_u64[0] = 138412290;
    v46 = v29;
    v48 = v25;
    v49 = v25 & 0xC000000000000001;
    do
    {
      if (v27)
      {
        v31 = sub_2BD00();
      }

      else
      {
        v31 = *(v25 + 8 * v28 + 32);
        swift_unknownObjectRetain();
      }

      v55 = 0;
      v32 = [v31 seekToOffset:&v55 error:{a1, *&v46}];
      v33 = v55;
      if (v32)
      {
        v55 = 0;
        v34 = v33;
        if ([v31 resumeAtTime:&v55 error:0.0])
        {
          v30 = v55;
        }

        else
        {
          v35 = v55;
          sub_2B7D0();

          v27 = v49;
          swift_willThrow();
        }

        swift_unknownObjectRelease();
      }

      else
      {
        v36 = v55;
        sub_2B7D0();

        swift_willThrow();
        v51(v54, v53, v3);
        swift_errorRetain();
        v37 = sub_2B890();
        v38 = sub_2BB60();

        if (os_log_type_enabled(v37, v38))
        {
          v39 = v3;
          v40 = swift_slowAlloc();
          v41 = swift_slowAlloc();
          *v40 = v46.n128_u32[0];
          swift_errorRetain();
          v42 = _swift_stdlib_bridgeErrorToNSError();
          *(v40 + 4) = v42;
          *v41 = v42;
          _os_log_impl(&dword_0, v37, v38, "Error seeking offset: %@", v40, 0xCu);
          sub_2AF20(v41, &qword_391A8, &qword_2CDE8);
          v27 = v49;

          v3 = v39;

          swift_unknownObjectRelease();
        }

        else
        {
          swift_unknownObjectRelease();
        }

        v50(v54, v3);
        v25 = v48;
      }

      ++v28;
    }

    while (v26 != v28);
  }

  else
  {
    v51(v9, v53, v3);
    v43 = sub_2B890();
    v44 = sub_2BB40();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&dword_0, v43, v44, " -- Haptic not playing - not starting", v45, 2u);
    }

    return (v50)(v9, v3);
  }
}

void sub_17A44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_2B8B0();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v15[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_39890 != -1)
  {
    swift_once();
  }

  v11 = sub_25AC(v7, HMLog);
  swift_beginAccess();
  (*(v8 + 16))(v10, v11, v7);

  v12 = sub_2B890();
  v13 = sub_2BB50();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 134217984;
    swift_beginAccess();
    *(v14 + 4) = *(a1 + 16);
    _os_log_impl(&dword_0, v12, v13, "Re-requesting position: %f", v14, 0xCu);
  }

  (*(v8 + 8))(v10, v7);
  sub_54CC(a3, a4);
}

uint64_t sub_17C4C(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v34 = a5;
  v9 = sub_2B8F0();
  v36 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_2B920();
  v35 = *(v33 - 8);
  __chkstk_darwin(v33);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2B8B0();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    if (qword_39890 != -1)
    {
      swift_once();
    }

    v18 = sub_25AC(v14, HMLog);
    swift_beginAccess();
    (*(v15 + 16))(v17, v18, v14);
    swift_errorRetain();
    v19 = sub_2B890();
    v20 = sub_2BB60();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *v21 = 138412290;
      swift_errorRetain();
      v23 = _swift_stdlib_bridgeErrorToNSError();
      *(v21 + 4) = v23;
      *v22 = v23;
      _os_log_impl(&dword_0, v19, v20, "Could not start engine: %@", v21, 0xCu);
      sub_2AF20(v22, &qword_391A8, &qword_2CDE8);
    }

    return (*(v15 + 8))(v17, v14);
  }

  else
  {
    v25 = *&a2[OBJC_IVAR___AXHapticMusicServer_queue];
    v26 = swift_allocObject();
    v26[2] = a2;
    v26[3] = a3;
    v27 = v34;
    v26[4] = a4;
    v26[5] = v27;
    aBlock[4] = sub_29DC4;
    aBlock[5] = v26;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2B614;
    aBlock[3] = &unk_35C98;
    v28 = _Block_copy(aBlock);
    v29 = v25;
    v30 = a2;

    v31 = v27;
    sub_2B900();
    v37 = &_swiftEmptyArrayStorage;
    sub_254AC(&qword_39160, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_2CC4(&qword_39168, &qword_2CDD0);
    sub_25B40(&qword_39170, &qword_39168, &qword_2CDD0, &protocol conformance descriptor for [A]);
    sub_2BC80();
    sub_2BBE0();
    _Block_release(v28);

    (*(v36 + 8))(v11, v9);
    (*(v35 + 8))(v13, v33);
  }
}

void sub_18134(uint64_t a1, void (*a2)(uint64_t, uint64_t), uint64_t a3, uint64_t a4)
{
  v7 = sub_2B8B0();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(a1 + OBJC_IVAR___AXHapticMusicServer_engineIsRunning) = 1;
  if (qword_39890 != -1)
  {
    swift_once();
  }

  v11 = sub_25AC(v7, HMLog);
  swift_beginAccess();
  (*(v8 + 16))(v10, v11, v7);
  v12 = sub_2B890();
  v13 = sub_2BB40();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_0, v12, v13, "Started engine", v14, 2u);
  }

  (*(v8 + 8))(v10, v7);
  *(a1 + OBJC_IVAR___AXHapticMusicServer_isHapticTrackPlaying) = 1;
  a2(a4, 1);
  sub_C860();
  *(a1 + OBJC_IVAR___AXHapticMusicServer_elapsedHapticPlayingTimeForTrack) = CFAbsoluteTimeGetCurrent();
}

void sub_18344(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

void sub_183D0(uint64_t a1)
{
  v2 = sub_2B870();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v63 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v64 = &v59 - v6;
  v62 = sub_2B8B0();
  v65 = *(v62 - 8);
  v7 = __chkstk_darwin(v62);
  v60 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v59 - v9;
  v11 = sub_2CC4(&qword_39540, &qword_2D088);
  v12 = __chkstk_darwin(v11 - 8);
  v14 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v59 - v15;
  v17 = objc_opt_self();
  v18 = [v17 sharedInstance];
  v19 = OBJC_IVAR___AXHapticMusicServer_totalActivePlayingTime;
  v20 = *(a1 + OBJC_IVAR___AXHapticMusicServer_totalActivePlayingTime);
  [v18 hapticMusicUsagePerDay];
  [v18 setHapticMusicUsagePerDay:v20 + v21];

  *(a1 + v19) = 0;
  v22 = [objc_allocWithZone(NSDate) init];
  v61 = v17;
  v23 = [v17 sharedInstance];
  v24 = [v23 hapticMusicUsageStartDate];

  if (v24)
  {
    sub_2B850();

    (*(v3 + 56))(v14, 0, 1, v2);
  }

  else
  {
    (*(v3 + 56))(v14, 1, 1, v2);
  }

  v25 = v2;
  sub_25F60(v14, v16);
  v26 = (*(v3 + 48))(v16, 1, v2);
  v28 = v62;
  v27 = v63;
  if (v26 == 1)
  {
    sub_2AF20(v16, &qword_39540, &qword_2D088);
    v29 = [v22 dateByAddingTimeInterval:-86401.0];

    v30 = v29;
  }

  else
  {
    isa = sub_2B830().super.isa;

    (*(v3 + 8))(v16, v25);
    v32 = qword_39890;
    v33 = isa;
    if (v32 != -1)
    {
      swift_once();
    }

    v34 = sub_25AC(v28, HMLog);
    swift_beginAccess();
    (*(v65 + 16))(v10, v34, v28);
    v30 = v33;
    v35 = sub_2B890();
    v36 = sub_2BB50();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      *v37 = 138412290;
      *(v37 + 4) = v30;
      *v38 = v30;
      v39 = v30;
      _os_log_impl(&dword_0, v35, v36, "Last time we stored data %@", v37, 0xCu);
      sub_2AF20(v38, &qword_391A8, &qword_2CDE8);
    }

    (*(v65 + 8))(v10, v28);
  }

  v40 = [(objc_class *)v30 dateByAddingTimeInterval:86400.0];

  v41 = v64;
  sub_2B850();

  sub_2B860();
  LOBYTE(v40) = sub_2B840();
  v42 = *(v3 + 8);
  v42(v27, v25);
  if (v40)
  {
    v43 = [v61 sharedInstance];
    [v43 hapticMusicUsagePerDay];
    v45 = v44;

    if (v45 <= 0.0)
    {
      v46 = 0;
    }

    else if (v45 >= 30.0)
    {
      if (v45 >= 60.0)
      {
        if (v45 >= 120.0)
        {
          if (v45 >= 180.0)
          {
            if (v45 >= 360.0)
            {
              if (v45 >= 600.0)
              {
                if (v45 >= 1200.0)
                {
                  if (v45 >= 1800.0)
                  {
                    if (v45 >= 3600.0)
                    {
                      if (v45 >= 7200.0)
                      {
                        if (v45 >= 10800.0)
                        {
                          if (v45 >= 14400.0)
                          {
                            if (v45 >= 18000.0)
                            {
                              if (v45 >= 21600.0)
                              {
                                if (v45 >= 43200.0)
                                {
                                  if (v45 >= 64800.0)
                                  {
                                    if (v45 >= 86400.0)
                                    {
                                      v46 = 0;
                                    }

                                    else
                                    {
                                      v46 = 86400;
                                    }
                                  }

                                  else
                                  {
                                    v46 = 64800;
                                  }
                                }

                                else
                                {
                                  v46 = 43200;
                                }
                              }

                              else
                              {
                                v46 = 21600;
                              }
                            }

                            else
                            {
                              v46 = 18000;
                            }

                            v28 = v62;
                            v27 = v63;
                          }

                          else
                          {
                            v46 = 14400;
                          }
                        }

                        else
                        {
                          v46 = 10800;
                        }
                      }

                      else
                      {
                        v46 = 7200;
                      }
                    }

                    else
                    {
                      v46 = 3600;
                    }
                  }

                  else
                  {
                    v46 = 1800;
                  }
                }

                else
                {
                  v46 = 1200;
                }
              }

              else
              {
                v46 = 600;
              }
            }

            else
            {
              v46 = 360;
            }
          }

          else
          {
            v46 = 180;
          }
        }

        else
        {
          v46 = 120;
        }
      }

      else
      {
        v46 = 60;
      }
    }

    else
    {
      v46 = 30;
    }

    if (qword_39890 != -1)
    {
      swift_once();
    }

    v47 = sub_25AC(v28, HMLog);
    swift_beginAccess();
    (*(v65 + 16))(v60, v47, v28);
    v48 = sub_2B890();
    v49 = sub_2BB50();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      *v50 = 134218240;
      *(v50 + 4) = v45;
      *(v50 + 12) = 2048;
      *(v50 + 14) = v46;
      _os_log_impl(&dword_0, v48, v49, "Bucketing value %f -> %ld", v50, 0x16u);
    }

    (*(v65 + 8))(v60, v28);
    v51 = sub_2B9C0();
    v52 = swift_allocObject();
    *(v52 + 16) = v46;
    aBlock[4] = sub_25FE0;
    aBlock[5] = v52;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_18E2C;
    aBlock[3] = &unk_35680;
    v53 = _Block_copy(aBlock);

    AnalyticsSendEventLazy();
    _Block_release(v53);

    v54 = v61;
    v55 = [v61 sharedInstance];
    v56 = [objc_opt_self() now];
    sub_2B850();

    v57 = sub_2B830().super.isa;
    v42(v27, v25);
    [v55 setHapticMusicUsageStartDate:v57];

    v58 = [v54 sharedInstance];
    [v58 setHapticMusicUsagePerDay:0.0];

    v42(v64, v25);
  }

  else
  {
    v42(v41, v25);
  }
}

Class sub_18E2C(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  if (v3)
  {
    sub_2ACCC(0, &qword_39548, NSObject_ptr);
    v4.super.isa = sub_2B990().super.isa;
  }

  else
  {
    v4.super.isa = 0;
  }

  return v4.super.isa;
}

void sub_18EC8()
{
  v2 = v0;
  v3 = sub_2B8B0();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = objc_allocWithZone(NSData);
  sub_2B7E0(v8);
  v10 = v9;
  v11 = [v7 initWithContentsOfURL:v9];

  if (v11)
  {
    *v42 = xmmword_2CD70;
    sub_2B820();

    v12 = v42[1];
    if (v42[1] >> 60 != 15)
    {
      v13 = v42[0];
      v14 = objc_opt_self();
      isa = sub_2B810().super.isa;
      v42[0] = 0;
      v16 = [v14 JSONObjectWithData:isa options:0 error:v42];

      if (v16)
      {
        v17 = v42[0];
        sub_2BC70();
        swift_unknownObjectRelease();
        sub_2CC4(&qword_395B8, &qword_2D0E8);
        if (swift_dynamicCast())
        {
          v18 = v41[0];
          v19 = objc_allocWithZone(CHHapticPattern);
          v20 = sub_1F788(v18);
          if (!v1)
          {
            v21 = v20;
            v39 = v13;
            if (qword_39890 != -1)
            {
              swift_once();
            }

            v22 = sub_25AC(v3, HMLog);
            swift_beginAccess();
            (*(v4 + 16))(v6, v22, v3);
            v23 = v21;
            v24 = sub_2B890();
            LOBYTE(v22) = sub_2BB40();
            v40 = v23;

            v25 = v22;
            if (os_log_type_enabled(v24, v22))
            {
              v26 = swift_slowAlloc();
              *v26 = 134217984;
              [v40 duration];
              *(v26 + 4) = v27;
              _os_log_impl(&dword_0, v24, v25, "Pattern duration: %f", v26, 0xCu);
            }

            (*(v4 + 8))(v6, v3);
            [v40 duration];
            *(v2 + OBJC_IVAR___AXHapticMusicServer_currentPatternDuration) = v28;
            v29 = *(v2 + OBJC_IVAR___AXHapticMusicServer_engine);
            if (v29)
            {
              v41[0] = 0;
              v30 = [v29 createAdvancedPlayerWithPattern:v40 error:v41];
              v31 = v41[0];
              v32 = v39;
              if (v30)
              {
                v33 = OBJC_IVAR___AXHapticMusicServer_players;
                swift_beginAccess();
                v34 = v31;
                swift_unknownObjectRetain();
                sub_2BA70();
                if (*(&dword_10 + (*(v2 + v33) & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*(v2 + v33) & 0xFFFFFFFFFFFFFF8)) >> 1)
                {
                  sub_2BAC0();
                }

                sub_2BAD0();
                swift_endAccess();
                sub_2A4B8(v32, v12);
                swift_unknownObjectRelease();
                goto LABEL_21;
              }

              v37 = v41[0];
              sub_2B7D0();

              swift_willThrow();
              v36 = v32;
            }

            else
            {
              v36 = v39;
            }

            sub_2A4B8(v36, v12);
LABEL_21:

            return;
          }
        }
      }

      else
      {
        v35 = v42[0];
        sub_2B7D0();

        swift_willThrow();
      }

      sub_2A4B8(v13, v12);
    }
  }
}

void sub_19390(uint64_t a1, char *a2, unint64_t a3, void *a4, unint64_t a5, unint64_t a6)
{
  v247 = a4;
  v272 = sub_2B800();
  v268 = *(v272 - 8);
  v11 = __chkstk_darwin(v272);
  v267 = &v237 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = (&v237 - v13);
  v266 = sub_2B8B0();
  v253 = *(v266 - 1);
  v15 = __chkstk_darwin(v266);
  v17 = &v237 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v15);
  v20 = &v237 - v19;
  v21 = __chkstk_darwin(v18);
  v248 = (&v237 - v22);
  v23 = __chkstk_darwin(v21);
  v249 = &v237 - v24;
  v25 = __chkstk_darwin(v23);
  v26 = __chkstk_darwin(v25);
  v27 = __chkstk_darwin(v26);
  v257 = &v237 - v28;
  v29 = __chkstk_darwin(v27);
  v31 = &v237 - v30;
  __chkstk_darwin(v29);
  p_aBlock = &v237 - v34;
  v36 = (a3 >> 62);
  v270 = a3;
  if (a3 >> 62)
  {
    goto LABEL_78;
  }

  if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) < 1)
  {
LABEL_79:
    (a5)(0);
    return;
  }

  while (1)
  {
    v271 = v36;
    v239 = v33;
    v240 = v32;
    v238 = v17;
    v244 = a6;
    v37 = &_swiftEmptyArrayStorage;
    v274 = &_swiftEmptyArrayStorage;
    v246 = objc_opt_self();
    v38 = [v246 sharedInstance];
    v39 = [v38 hapticMusicAlgorithmSelections];

    if (v39)
    {
      *&aBlock = 0;
      sub_2BA90();

      if (aBlock)
      {
        v37 = aBlock;
      }
    }

    v262 = v14;
    v241 = v20;
    if (qword_39890 != -1)
    {
      swift_once();
    }

    v20 = v266;
    v40 = sub_25AC(v266, HMLog);
    swift_beginAccess();
    v41 = v253;
    v42 = v253[2];
    v260 = v40;
    v259 = v253 + 2;
    v258 = v42;
    v42(p_aBlock, v40, v20);

    v43 = sub_2B890();
    v44 = sub_2BB40();

    v45 = os_log_type_enabled(v43, v44);
    v243 = a2;
    v265 = v37;
    v242 = a1;
    v245 = a5;
    if (v45)
    {
      a2 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      *&aBlock = v46;
      *a2 = 136315138;
      v47 = sub_2BAB0();
      v49 = sub_20958(v47, v48, &aBlock);

      *(a2 + 4) = v49;
      _os_log_impl(&dword_0, v43, v44, "Algorithms desired %s", a2, 0xCu);
      sub_2566C(v46);
    }

    v261 = v41[1];
    v261(p_aBlock, v20);
    v258(v31, v260, v20);
    a1 = v270;

    a6 = sub_2B890();
    p_aBlock = sub_2BB40();

    if (os_log_type_enabled(a6, p_aBlock))
    {
      v50 = swift_slowAlloc();
      a2 = swift_slowAlloc();
      *&aBlock = a2;
      *v50 = 136315138;
      sub_2ACCC(0, &qword_395C8, SHHapticTrack_ptr);
      v51 = sub_2BAB0();
      a1 = v52;
      v53 = sub_20958(v51, v52, &aBlock);

      *(v50 + 4) = v53;
      _os_log_impl(&dword_0, a6, p_aBlock, "Available items %s", v50, 0xCu);
      sub_2566C(a2);
    }

    v261(v31, v20);
    v14 = v262;
    if (v271)
    {
      a6 = v270;
      v56 = sub_2BD60();
      v55 = a6;
      v17 = v56;
    }

    else
    {
      v55 = v270;
      v17 = *(&dword_10 + (v270 & 0xFFFFFFFFFFFFFF8));
    }

    v36 = _Block_release;
    *&v269 = v17;
    if (!v17)
    {
      break;
    }

    a5 = 0;
    v57 = 0;
    v264 = (v55 & 0xC000000000000001);
    v254 = v55 & 0xFFFFFFFFFFFFFF8;
    v250 = SHHapticPatternAlgorithmDefault;
    v256 = (v253 + 1);
    v271 = &_swiftEmptyArrayStorage;
    *&v54 = 136315394;
    v251 = v54;
    while (1)
    {
      if (v264)
      {
        v58 = sub_2BD00();
      }

      else
      {
        if (a5 >= *(v254 + 16))
        {
          goto LABEL_77;
        }

        v58 = *(v55 + 8 * a5 + 32);
      }

      a6 = v58;
      v20 = (a5 + 1);
      if (__OFADD__(a5, 1))
      {
        break;
      }

      v59 = [v58 algorithm];
      v60 = sub_2B9F0();
      a2 = v61;

      a1 = &v237;
      *&aBlock = v60;
      *(&aBlock + 1) = a2;
      __chkstk_darwin(v62);
      *(&v237 - 2) = &aBlock;
      v63 = v265;
      v31 = v57;
      p_aBlock = sub_24168(sub_2B750, (&v237 - 4), v265);

      if (p_aBlock)
      {
        swift_beginAccess();
        a1 = a6;
        sub_2BA70();
        if (*(&dword_10 + (v274 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v274 & 0xFFFFFFFFFFFFFF8)) >> 1)
        {
          sub_2BAC0();
        }

        sub_2BAD0();
        a6 = v274;
        swift_endAccess();
        v31 = v257;
        v258(v257, v260, v266);

        p_aBlock = sub_2B890();
        a2 = sub_2BB40();

        v64 = os_log_type_enabled(p_aBlock, a2);
        v271 = a6;
        if (v64)
        {
          v65 = swift_slowAlloc();
          *&v255 = a1;
          a1 = v65;
          *&aBlock = swift_slowAlloc();
          *a1 = v251;
          v66 = sub_2BAB0();
          v263 = v57;
          v68 = sub_20958(v66, v67, &aBlock);

          *(a1 + 4) = v68;
          *(a1 + 12) = 2080;
          sub_2ACCC(0, &qword_395C8, SHHapticTrack_ptr);

          v69 = sub_2BAB0();
          v71 = v70;

          v72 = sub_20958(v69, v71, &aBlock);
          v14 = v262;

          *(a1 + 14) = v72;
          v57 = v263;
          _os_log_impl(&dword_0, p_aBlock, a2, "Selected track for %s %s", a1, 0x16u);
          swift_arrayDestroy();
        }

        else
        {
        }

        v261(v31, v266);
      }

      else
      {
        if (!*(v63 + 16))
        {
          p_aBlock = [a6 algorithm];
          v73 = sub_2B9F0();
          a2 = v74;
          if (v73 == sub_2B9F0() && a2 == v75)
          {

LABEL_38:
            swift_beginAccess();
            v17 = a6;
            sub_2BA70();
            if (*(&dword_10 + (v274 & 0xFFFFFFFFFFFFFF8)) < *(&dword_18 + (v274 & 0xFFFFFFFFFFFFFF8)) >> 1)
            {
              goto LABEL_39;
            }

            goto LABEL_183;
          }

          a1 = sub_2BDC0();

          if (a1)
          {
            goto LABEL_38;
          }
        }
      }

      v55 = v270;
      ++a5;
      v17 = v269;
      if (v20 == v269)
      {
        goto LABEL_43;
      }
    }

    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    v240 = v32;
    v107 = v33;
    v271 = v36;
    v108 = sub_2BD60();
    v36 = v271;
    v33 = v107;
    v32 = v240;
    if (v108 < 1)
    {
      goto LABEL_79;
    }
  }

  v57 = 0;
  v271 = &_swiftEmptyArrayStorage;
  while (1)
  {
LABEL_43:
    v88 = v55;
    v31 = v252;
    *&v252[OBJC_IVAR___AXHapticMusicServer_cachedAlgorithmSelections] = v265;

    v89 = [v246 sharedInstance];
    [v89 hapticMusicIntensity];
    v91 = v90;

    v92 = v91;
    if (v92 == 0.0)
    {
      v92 = 1.0;
    }

    v36 = &v280;
    v265 = OBJC_IVAR___AXHapticMusicServer_cachedIntensity;
    *&v31[OBJC_IVAR___AXHapticMusicServer_cachedIntensity] = v92;
    v93 = v271;
    if (v271 >> 62)
    {
      v109 = sub_2BD60();
      v94 = v88;
      if (v109)
      {
        goto LABEL_88;
      }
    }

    else
    {
      v94 = v88;
      if (*(&dword_10 + (v271 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_88;
      }
    }

    p_aBlock = &_swiftEmptyArrayStorage;
    *&aBlock = &_swiftEmptyArrayStorage;
    if (v17)
    {
      v263 = v57;
      a6 = 0;
      v95 = v94 & 0xC000000000000001;
      a5 = v94 & 0xFFFFFFFFFFFFFF8;
      v20 = SHHapticPatternAlgorithmDefault;
      while (1)
      {
        if (v95)
        {
          v96 = sub_2BD00();
        }

        else
        {
          if (a6 >= *(a5 + 16))
          {
            goto LABEL_76;
          }

          v96 = *(v94 + 8 * a6 + 32);
        }

        v14 = v96;
        v31 = (a6 + 1);
        if (__OFADD__(a6, 1))
        {
          goto LABEL_75;
        }

        p_aBlock = [v96 algorithm];
        v97 = sub_2B9F0();
        a2 = v98;
        v100 = sub_2B9F0();
        v101 = v97;
        v17 = v99;
        if (v101 == v100 && a2 == v99)
        {
          break;
        }

        a1 = sub_2BDC0();

        if (a1)
        {
          goto LABEL_62;
        }

LABEL_50:
        ++a6;
        v14 = v262;
        v94 = v270;
        if (v31 == v269)
        {
          p_aBlock = aBlock;
          v57 = v263;
          v93 = v271;
          goto LABEL_65;
        }
      }

LABEL_62:
      p_aBlock = &aBlock;
      sub_2BD20();
      v17 = *(aBlock + 16);
      sub_2BD40();
      sub_2BD50();
      sub_2BD30();
      goto LABEL_50;
    }

LABEL_65:
    if (p_aBlock < 0 || (p_aBlock & 0x4000000000000000) != 0)
    {
      v110 = v94;
      v111 = sub_2BD60();
      v94 = v110;
      if (!v111)
      {
LABEL_83:
        v103 = v94;

        goto LABEL_84;
      }
    }

    else if (!*(p_aBlock + 16))
    {
      goto LABEL_83;
    }

    if ((p_aBlock & 0xC000000000000001) != 0)
    {
      goto LABEL_181;
    }

    if (*(p_aBlock + 16))
    {
      break;
    }

    __break(1u);
LABEL_183:
    sub_2BAC0();
LABEL_39:
    sub_2BAD0();
    v76 = v274;
    swift_endAccess();
    v77 = v239;
    v78 = v266;
    v258(v239, v260, v266);
    v79 = sub_2B890();
    a2 = sub_2BB40();
    v80 = os_log_type_enabled(v79, a2);
    v271 = v76;
    if (v80)
    {
      v81 = swift_slowAlloc();
      v264 = v17;
      v82 = v81;
      a1 = swift_slowAlloc();
      *&aBlock = a1;
      *v82 = 136315138;
      sub_2ACCC(0, &qword_395C8, SHHapticTrack_ptr);
      v83 = v57;

      v84 = sub_2BAB0();
      v86 = v85;

      v87 = sub_20958(v84, v86, &aBlock);
      v14 = v262;

      *(v82 + 4) = v87;
      v57 = v83;
      _os_log_impl(&dword_0, v79, a2, "Selected default algorithm track %s", v82, 0xCu);
      sub_2566C(a1);
    }

    else
    {
    }

    v261(v77, v78);
    v55 = v270;
    v17 = v269;
  }

  v103 = v94;
  for (i = *(p_aBlock + 32); ; i = sub_2BD00())
  {
    v105 = i;

    swift_beginAccess();
    v106 = v105;
    sub_2BA70();
    if (*(&dword_10 + (v274 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v274 & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      sub_2BAC0();
    }

    sub_2BAD0();
    v93 = v274;
    swift_endAccess();

LABEL_84:
    v112 = v240;
    v113 = v266;
    v258(v240, v260, v266);
    v114 = sub_2B890();
    v115 = sub_2BB40();
    if (os_log_type_enabled(v114, v115))
    {
      v116 = swift_slowAlloc();
      v117 = swift_slowAlloc();
      *&aBlock = v117;
      *v116 = 136315138;
      sub_2ACCC(0, &qword_395C8, SHHapticTrack_ptr);

      v118 = sub_2BAB0();
      v120 = v119;

      v121 = sub_20958(v118, v120, &aBlock);

      *(v116 + 4) = v121;
      _os_log_impl(&dword_0, v114, v115, "Fallback to default item %s", v116, 0xCu);
      sub_2566C(v117);

      v261(v112, v266);
      v94 = v270;
    }

    else
    {

      v261(v112, v113);
      v94 = v103;
    }

    v17 = v269;
LABEL_88:
    if (v93 >> 62)
    {
      v236 = v94;
      v122 = sub_2BD60();
      v94 = v236;
    }

    else
    {
      v122 = *(&dword_10 + (v93 & 0xFFFFFFFFFFFFFF8));
    }

    v123 = v249;
    if (v122)
    {
      goto LABEL_102;
    }

    if (!v17)
    {
      goto LABEL_98;
    }

    if ((v94 & 0xC000000000000001) != 0)
    {
      goto LABEL_179;
    }

    if (*(&dword_10 + (v94 & 0xFFFFFFFFFFFFFF8)))
    {
      break;
    }

    __break(1u);
LABEL_181:
    v103 = v94;
  }

  v124 = *(v94 + 32);
  while (2)
  {
    v125 = v124;
    swift_beginAccess();
    v126 = v125;
    sub_2BA70();
    if (*(&dword_10 + (v274 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v274 & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      sub_2BAC0();
    }

    sub_2BAD0();
    v93 = v274;
    swift_endAccess();

    v123 = v249;
LABEL_98:
    v127 = v266;
    v258(v123, v260, v266);
    v128 = sub_2B890();
    v129 = sub_2BB40();
    if (os_log_type_enabled(v128, v129))
    {
      v130 = swift_slowAlloc();
      v131 = swift_slowAlloc();
      *&aBlock = v131;
      *v130 = 136315138;
      sub_2ACCC(0, &qword_395C8, SHHapticTrack_ptr);

      v132 = sub_2BAB0();
      v134 = v133;

      v135 = sub_20958(v132, v134, &aBlock);

      *(v130 + 4) = v135;
      _os_log_impl(&dword_0, v128, v129, "Fallback to first item %s", v130, 0xCu);
      sub_2566C(v131);

      v136 = v123;
      v137 = v266;
    }

    else
    {

      v136 = v123;
      v137 = v127;
    }

    v261(v136, v137);
LABEL_102:
    if (v93 >> 62)
    {
      v138 = sub_2BD60();
    }

    else
    {
      v138 = *(&dword_10 + (v93 & 0xFFFFFFFFFFFFFF8));
    }

    v271 = v93;
    v270 = v93 >> 62;
    if (v138)
    {
      *&aBlock = &_swiftEmptyArrayStorage;

      sub_24214(0, v138 & ~(v138 >> 63), 0);
      if ((v138 & 0x8000000000000000) == 0)
      {
        v139 = 0;
        v140 = aBlock;
        v141 = v93 & 0xC000000000000001;
        do
        {
          v142 = v57;
          if (v141)
          {
            v143 = sub_2BD00();
          }

          else
          {
            v143 = *(v271 + 8 * v139 + 32);
          }

          v144 = v143;
          v145 = [v143 fileURL];
          sub_2B7F0();

          *&aBlock = v140;
          v147 = *(v140 + 16);
          v146 = *(v140 + 24);
          if (v147 >= v146 >> 1)
          {
            sub_24214((v146 > 1), v147 + 1, 1);
            v140 = aBlock;
          }

          ++v139;
          *(v140 + 16) = v147 + 1;
          (v268[4])(v140 + ((*(v268 + 80) + 32) & ~*(v268 + 80)) + v268[9] * v147, v14, v272);
          v57 = v142;
        }

        while (v138 != v139);
        v93 = v271;

        break;
      }

      __break(1u);
LABEL_178:
      __break(1u);
LABEL_179:
      v124 = sub_2BD00();
      continue;
    }

    break;
  }

  v14 = v248;
  v148 = v266;
  v258(v248, v260, v266);

  v149 = sub_2B890();
  v150 = sub_2BB70();

  v151 = os_log_type_enabled(v149, v150);
  v263 = v57;
  if (v151)
  {
    v152 = swift_slowAlloc();
    v153 = swift_slowAlloc();
    *&aBlock = v153;
    *v152 = 136315138;
    v154 = sub_2BAB0();
    v57 = v155;

    v156 = sub_20958(v154, v57, &aBlock);

    *(v152 + 4) = v156;
    _os_log_impl(&dword_0, v149, v150, "Found haptic tracks at: %s", v152, 0xCu);
    sub_2566C(v153);
  }

  else
  {
  }

  v261(v14, v148);
  v157 = v252;
  if (v270)
  {
    v158 = sub_2BD60();
    v159 = &unk_39000;
    if (!v158)
    {
      goto LABEL_166;
    }

    goto LABEL_121;
  }

  v158 = *(&dword_10 + (v93 & 0xFFFFFFFFFFFFFF8));
  v159 = &unk_39000;
  if (v158)
  {
LABEL_121:
    if (v158 < 1)
    {
      goto LABEL_178;
    }

    v262 = OBJC_IVAR___AXHapticMusicServer_currentPatternDuration;
    v257 = OBJC_IVAR___AXHapticMusicServer_currentMetadata;
    v256 = OBJC_IVAR___AXHapticMusicServer_engine;
    v254 = v159[62];
    v270 = v93 & 0xC000000000000001;
    v160 = (v268 + 1);
    v268 = v253 + 1;
    v253 = v277;

    v161 = 0;
    *(&v162 + 1) = 0xF000000000000000;
    v269 = xmmword_2CD70;
    *&v162 = 134218240;
    v255 = v162;
    *&v162 = 136315394;
    v251 = v162;
    while (1)
    {
      if (v270)
      {
        v163 = sub_2BD00();
      }

      else
      {
        v163 = *(v93 + 8 * v161 + 32);
      }

      v164 = v163;
      v165 = [v163 fileURL];
      v166 = v267;
      sub_2B7F0();

      v167 = objc_allocWithZone(NSData);
      sub_2B7E0(v168);
      v170 = v169;
      v171 = [v167 initWithContentsOfURL:v169];

      (*v160)(v166, v272);
      if (!v171 || (aBlock = v269, sub_2B820(), v171, v172 = *(&aBlock + 1), *(&aBlock + 1) >> 60 == 15))
      {
      }

      else
      {
        v173 = aBlock;
        v174 = objc_opt_self();
        isa = sub_2B810().super.isa;
        *&aBlock = 0;
        v176 = [v174 JSONObjectWithData:isa options:0 error:&aBlock];

        if (v176)
        {
          v177 = aBlock;
          sub_2BC70();
          swift_unknownObjectRelease();
          sub_2CC4(&qword_395D8, &qword_2D0F0);
          if (swift_dynamicCast())
          {
            v178 = v278;
            sub_1B868(v278);
            if (v179)
            {
              v180 = v179;
              v181 = objc_allocWithZone(CHHapticPattern);
              v182 = v263;
              v183 = sub_1F788(v180);
              if (v182)
              {

                sub_2A4B8(v173, v172);

                goto LABEL_135;
              }

              v263 = 0;
              if (v183)
              {
                v250 = v158;
                v185 = v183;
                v258(v241, v260, v266);
                v264 = v185;
                v186 = v252;
                v187 = sub_2B890();
                v188 = sub_2BB40();
                v248 = v186;

                v189 = v264;
                LODWORD(v249) = v188;
                if (os_log_type_enabled(v187, v188))
                {
                  v190 = v187;
                  v191 = swift_slowAlloc();
                  *v191 = v255;
                  [v189 duration];
                  *(v191 + 4) = v192;
                  *(v191 + 12) = 2048;
                  *(v191 + 14) = *&v252[v265];
                  _os_log_impl(&dword_0, v190, v249, "Pattern duration: %f, volume: %f", v191, 0x16u);
                  v187 = v190;
                }

                v261(v241, v266);
                [v189 duration];
                *&v252[v262] = v193;
                *&v278 = 0x617461646174654DLL;
                *(&v278 + 1) = 0xE800000000000000;
                sub_2BCC0();
                if (*(v178 + 16) && (v194 = sub_2103C(&aBlock), (v195 & 1) != 0))
                {
                  sub_25098(*(v178 + 56) + 32 * v194, &v278);
                  sub_25044(&aBlock);

                  v196 = swift_dynamicCast();
                  v158 = v250;
                  if (v196)
                  {
                    v197 = v275;
                  }

                  else
                  {
                    v197 = 0;
                  }

                  v198 = v252;
                  v93 = v271;
                }

                else
                {

                  sub_25044(&aBlock);
                  v197 = 0;
                  v198 = v252;
                  v93 = v271;
                  v158 = v250;
                }

                *&v257[v198] = v197;

                if (v197)
                {
                  *&v278 = 0x746E6169726176;
                  *(&v278 + 1) = 0xE700000000000000;
                  sub_2BCC0();
                  v199 = [v164 fileURL];
                  v279 = v272;
                  sub_2A560(&v278);
                  sub_2B7F0();

                  sub_2A5C4(&v278, &v275);
                  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                  v273 = v197;
                  sub_22FC8(&v275, &aBlock, isUniquelyReferenced_nonNull_native);
                  sub_25044(&aBlock);
                }

                v201 = *&v252[v256];
                if (!v201)
                {

                  sub_2A4B8(v173, v172);
                  goto LABEL_124;
                }

                *&aBlock = 0;
                v202 = v264;
                v203 = [v201 createAdvancedPlayerWithPattern:v264 error:&aBlock];
                v204 = aBlock;
                if (v203)
                {
                  v205 = v203;
                  v277[4] = &OBJC_PROTOCOL___CHHapticAdvancedPatternPlayerExtended;
                  v206 = swift_dynamicCastObjCProtocolConditional();
                  if (v206)
                  {
                    v207 = v206;
                    v208 = v252;
                    v209 = *&v252[v265];
                    v210 = v204;
                    swift_unknownObjectRetain();
                    LODWORD(v211) = v209;
                    [v207 setVolume:v211];
                    v212 = swift_allocObject();
                    swift_unknownObjectWeakInit();
                    v277[2] = sub_2A558;
                    v277[3] = v212;
                    *&aBlock = _NSConcreteStackBlock;
                    *(&aBlock + 1) = 1107296256;
                    v277[0] = sub_2B744;
                    v277[1] = &unk_35F68;
                    v213 = _Block_copy(&aBlock);

                    [v205 setCompletionHandler:v213];
                    _Block_release(v213);
                    v214 = v254;
                    swift_beginAccess();
                    swift_unknownObjectRetain();
                    sub_2BA70();
                    if (*(&dword_10 + (*&v208[v214] & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*&v208[v214] & 0xFFFFFFFFFFFFFF8)) >> 1)
                    {
                      sub_2BAC0();
                    }

                    sub_2BAD0();
                    swift_endAccess();
                    v258(v238, v260, v266);
                    swift_unknownObjectRetain();
                    v215 = v243;

                    v216 = sub_2B890();
                    v217 = sub_2BB40();

                    swift_unknownObjectRelease();
                    LODWORD(v250) = v217;
                    if (os_log_type_enabled(v216, v217))
                    {
                      v218 = swift_slowAlloc();
                      v246 = v218;
                      v249 = swift_slowAlloc();
                      *&aBlock = v249;
                      *v218 = v251;
                      v219 = [v205 description];
                      v248 = v216;
                      v220 = v219;
                      v240 = sub_2B9F0();
                      v222 = v221;

                      swift_unknownObjectRelease();
                      v223 = sub_20958(v240, v222, &aBlock);

                      v224 = v246;
                      *(v246 + 4) = v223;
                      *(v224 + 6) = 2080;
                      *(v224 + 14) = sub_20958(v242, v215, &aBlock);
                      v225 = v248;
                      _os_log_impl(&dword_0, v248, v250, "Made player: %s %s", v224, 0x16u);
                      swift_arrayDestroy();

                      sub_2A4B8(v173, v172);
                      swift_unknownObjectRelease();
                    }

                    else
                    {

                      sub_2A4B8(v173, v172);
                      swift_unknownObjectRelease_n();
                    }

                    v261(v238, v266);
                  }

                  else
                  {
                    v227 = v204;
                    sub_2A4B8(v173, v172);
                    swift_unknownObjectRelease();
                  }
                }

                else
                {
                  v226 = aBlock;
                  sub_2B7D0();

                  swift_willThrow();
                  sub_2A4B8(v173, v172);

LABEL_135:
                  v263 = 0;
                }
              }

              else
              {

                sub_2A4B8(v173, v172);
              }
            }

            else
            {
              sub_2A4B8(v173, v172);
            }

            v93 = v271;
            goto LABEL_124;
          }

          sub_2A4B8(v173, v172);
        }

        else
        {
          v184 = aBlock;
          sub_2B7D0();

          swift_willThrow();
          sub_2A4B8(v173, v172);

          v263 = 0;
        }
      }

LABEL_124:
      if (v158 == ++v161)
      {

        v157 = v252;
        v159 = &unk_39000;
        break;
      }
    }
  }

LABEL_166:
  v228 = v159[62];
  swift_beginAccess();
  v229 = *&v157[v228];
  if (v229 >> 62)
  {
    v230 = sub_2BD60();
  }

  else
  {
    v230 = *(&dword_10 + (v229 & 0xFFFFFFFFFFFFFF8));
  }

  v245(v230 > 0);
  v231 = *&v157[v228];
  if (v231 >> 62)
  {
    v232 = sub_2BD60();
  }

  else
  {
    v232 = *(&dword_10 + (v231 & 0xFFFFFFFFFFFFFF8));
  }

  v233 = *&v157[OBJC_IVAR___AXHapticMusicServer_currentSpatialTrackInfo];
  if (v232 < 1)
  {
    *&v157[OBJC_IVAR___AXHapticMusicServer_currentSpatialTrackInfo] = 0;
  }

  else
  {
    v234 = v247;
    *&v157[OBJC_IVAR___AXHapticMusicServer_currentSpatialTrackInfo] = v247;
    v235 = v234;

    sub_15820(v242, v243);
  }
}