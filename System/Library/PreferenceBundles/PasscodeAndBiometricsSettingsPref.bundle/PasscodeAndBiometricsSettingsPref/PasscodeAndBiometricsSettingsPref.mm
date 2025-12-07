uint64_t sub_2EA0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_9C94();
  sub_2F18(v5, a2);
  sub_2F7C(v5, a2);
  return sub_9C84();
}

uint64_t *sub_2F18(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_2F7C(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

id sub_2FB4()
{
  v1 = OBJC_IVAR____TtC33PasscodeAndBiometricsSettingsPref31PABSRootContainerViewController____lazy_storage___contentViewController;
  v2 = *(v0 + OBJC_IVAR____TtC33PasscodeAndBiometricsSettingsPref31PABSRootContainerViewController____lazy_storage___contentViewController);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC33PasscodeAndBiometricsSettingsPref31PABSRootContainerViewController____lazy_storage___contentViewController);
  }

  else
  {
    v4 = sub_3014();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_3014()
{
  result = MobileGestalt_get_current_device();
  if (!result)
  {
    __break(1u);
    goto LABEL_25;
  }

  v1 = result;
  touchIDCapability = MobileGestalt_get_touchIDCapability();

  if (!touchIDCapability)
  {
    result = MobileGestalt_get_current_device();
    if (result)
    {
      v8 = result;
      pearlIDCapability = MobileGestalt_get_pearlIDCapability();

      if (pearlIDCapability)
      {
        if (qword_103A8 != -1)
        {
          swift_once();
        }

        v10 = sub_9C94();
        sub_2F7C(v10, qword_105A0);
        v4 = sub_9C74();
        v11 = sub_9E64();
        if (!os_log_type_enabled(v4, v11))
        {
          v7 = PABSPearlPasscodeController_ptr;
          goto LABEL_19;
        }

        v12 = swift_slowAlloc();
        *v12 = 0;
        _os_log_impl(&dword_0, v4, v11, "Content view will populate for Face ID & Passcode settings", v12, 2u);
        v7 = PABSPearlPasscodeController_ptr;
      }

      else
      {
        if (qword_103A8 != -1)
        {
          swift_once();
        }

        v13 = sub_9C94();
        sub_2F7C(v13, qword_105A0);
        v4 = sub_9C74();
        v14 = sub_9E64();
        if (!os_log_type_enabled(v4, v14))
        {
          v7 = PABSPasscodeLockController_ptr;
          goto LABEL_19;
        }

        v15 = swift_slowAlloc();
        *v15 = 0;
        _os_log_impl(&dword_0, v4, v14, "Content view will populate for Passcode settings", v15, 2u);
        v7 = PABSPasscodeLockController_ptr;
      }

      goto LABEL_18;
    }

LABEL_25:
    __break(1u);
    return result;
  }

  if (qword_103A8 != -1)
  {
    swift_once();
  }

  v3 = sub_9C94();
  sub_2F7C(v3, qword_105A0);
  v4 = sub_9C74();
  v5 = sub_9E64();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_0, v4, v5, "Content view will populate for Touch ID & Passcode settings", v6, 2u);
    v7 = PABSTouchIDPasscodeController_ptr;
LABEL_18:

    goto LABEL_19;
  }

  v7 = PABSTouchIDPasscodeController_ptr;
LABEL_19:

  v16 = objc_allocWithZone(*v7);

  return [v16 init];
}

id sub_32D4()
{
  v1 = v0;
  v2 = sub_749C(&qword_10470, &unk_A620);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v19 - v6;
  v8 = OBJC_IVAR____TtC33PasscodeAndBiometricsSettingsPref31PABSRootContainerViewController_wasAppBackgroundedObserver;
  swift_beginAccess();
  sub_7D20(v0 + v8, v7, &qword_10470, &unk_A620);
  v9 = sub_9EA4();
  v10 = *(v9 - 8);
  v19 = *(v10 + 48);
  v11 = v19(v7, 1, v9);
  sub_7CC0(v7, &qword_10470, &unk_A620);
  if (v11 == 1)
  {
    goto LABEL_8;
  }

  if (qword_103A8 != -1)
  {
    swift_once();
  }

  v12 = sub_9C94();
  sub_2F7C(v12, qword_105A0);
  v13 = sub_9C74();
  v14 = sub_9E64();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_0, v13, v14, "Stopped observing for Settings.app being backgrounded", v15, 2u);
  }

  v16 = [objc_opt_self() defaultCenter];
  sub_7D20(v1 + v8, v5, &qword_10470, &unk_A620);
  result = v19(v5, 1, v9);
  if (result != 1)
  {
    sub_9E94();

    (*(v10 + 8))(v5, v9);
LABEL_8:
    v18 = type metadata accessor for PABSRootContainerViewController(0);
    v20.receiver = v1;
    v20.super_class = v18;
    return objc_msgSendSuper2(&v20, "dealloc");
  }

  __break(1u);
  return result;
}

uint64_t type metadata accessor for PABSRootContainerViewController(uint64_t a1)
{
  result = qword_103F8;
  if (!qword_103F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_366C()
{
  v1 = v0;
  v2 = sub_749C(&qword_10468, &qword_A618);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v17 - v4;
  v6 = sub_749C(&qword_10470, &unk_A620);
  __chkstk_darwin(v6 - 8);
  v8 = &v17 - v7;
  v9 = type metadata accessor for PABSRootContainerViewController(0);
  v18.receiver = v0;
  v18.super_class = v9;
  objc_msgSendSuper2(&v18, "viewDidLoad");
  if (qword_103A8 != -1)
  {
    swift_once();
  }

  v10 = sub_9C94();
  sub_2F7C(v10, qword_105A0);
  v11 = sub_9C74();
  v12 = sub_9E64();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_0, v11, v12, "viewDidLoad: Root view for Biometrics & Passcode settings, starting observing for Settings.app being backgrounded", v13, 2u);
  }

  v14 = [objc_opt_self() defaultCenter];
  sub_7AC4(0, &qword_10478, UIApplication_ptr);
  sub_9E44();
  sub_7B0C();
  sub_9EB4();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_7BA4();
  sub_9E84();

  (*(v3 + 8))(v5, v2);
  v15 = sub_9EA4();
  (*(*(v15 - 8) + 56))(v8, 0, 1, v15);
  v16 = OBJC_IVAR____TtC33PasscodeAndBiometricsSettingsPref31PABSRootContainerViewController_wasAppBackgroundedObserver;
  swift_beginAccess();
  sub_7C50(v8, v1 + v16);
  swift_endAccess();
  sub_5BDC();
}

void sub_39B0(uint64_t a1, uint64_t a2)
{
  sub_9E14();
  sub_9E04();
  sub_9DC4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (qword_103A8 != -1)
    {
      swift_once();
    }

    v4 = sub_9C94();
    sub_2F7C(v4, qword_105A0);
    v5 = sub_9C74();
    v6 = sub_9E64();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_0, v5, v6, "Settings.app has been backgrounded", v7, 2u);
    }

    v8 = [objc_opt_self() sharedConnection];
    if (v8)
    {
      v9 = v8;
      v10 = [v8 isPasscodeSet];

      if (v10)
      {
        sub_5A2C();
      }
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
  }
}

void sub_3C38(char a1)
{
  v2 = v1;
  v4 = sub_749C(&qword_10460, &qword_A5E8);
  __chkstk_darwin(v4 - 8);
  v6 = &v32 - v5;
  v7 = type metadata accessor for PABSRootContainerViewController(0);
  v32.receiver = v2;
  v32.super_class = v7;
  objc_msgSendSuper2(&v32, "viewDidAppear:", a1 & 1);
  if (qword_103A8 != -1)
  {
    swift_once();
  }

  v8 = sub_9C94();
  sub_2F7C(v8, qword_105A0);
  v9 = sub_9C74();
  v10 = sub_9E64();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_0, v9, v10, "viewDidAppear: Root view", v11, 2u);
  }

  v12 = [v2 view];
  if (!v12)
  {
    __break(1u);
    goto LABEL_16;
  }

  v13 = v12;
  v14 = sub_4020();

  v15 = objc_opt_self();
  v16 = [v15 sharedConnection];
  if (!v16)
  {
LABEL_16:
    __break(1u);
LABEL_17:

    __break(1u);
    return;
  }

  v17 = v16;
  v18 = [v16 isPasscodeSet];

  if ((v14 & v18) != 1)
  {
    v2 = v2;
    v26 = sub_9C74();
    v27 = sub_9E64();
    if (!os_log_type_enabled(v26, v27))
    {

      return;
    }

    v28 = swift_slowAlloc();
    *v28 = 67109376;
    v29 = [v15 sharedConnection];
    if (v29)
    {
      v30 = v29;
      v31 = [v29 isPasscodeSet];

      *(v28 + 4) = v31;
      *(v28 + 8) = 1024;
      *(v28 + 10) = v14 & 1;
      _os_log_impl(&dword_0, v26, v27, "viewDidAppear: Will not take any action on Root view since isPasscodeSet: %{BOOL}d and hasBlurredSubview: %{BOOL}d", v28, 0xEu);

      return;
    }

    goto LABEL_17;
  }

  v19 = sub_9C74();
  v20 = sub_9E64();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_0, v19, v20, "Device has passcode set, requesting passcode challenge", v21, 2u);
  }

  v22 = sub_9E34();
  (*(*(v22 - 8) + 56))(v6, 1, 1, v22);
  sub_9E14();
  v23 = v2;
  v24 = sub_9E04();
  v25 = swift_allocObject();
  v25[2] = v24;
  v25[3] = &protocol witness table for MainActor;
  v25[4] = v23;
  sub_44D8(0, 0, v6, &unk_A5F8, v25);
}

uint64_t sub_4020()
{
  v1 = [v0 subviews];
  sub_7AC4(0, &qword_10410, UIView_ptr);
  v2 = sub_9DB4();

  if (v2 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8)); i; i = sub_9F04())
  {
    v4 = 0;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = sub_9EE4();
      }

      else
      {
        if (v4 >= *(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_16;
        }

        v5 = *(v2 + 8 * v4 + 32);
      }

      v6 = v5;
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      sub_9E14();
      sub_9E04();
      sub_9DC4();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {

        return 1;
      }

      ++v4;
      if (v7 == i)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

LABEL_18:

  return 0;
}

uint64_t sub_41D4()
{
  v0[2] = sub_9E14();
  v0[3] = sub_9E04();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_4280;

  return sub_48A4();
}

uint64_t sub_4280()
{

  v1 = sub_9DC4();

  return _swift_task_switch(sub_43BC, v1, v0);
}

uint64_t sub_43BC()
{

  if (qword_103A8 != -1)
  {
    swift_once();
  }

  v1 = sub_9C94();
  sub_2F7C(v1, qword_105A0);
  v2 = sub_9C74();
  v3 = sub_9E64();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "Done requesting passcode challenge", v4, 2u);
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_44D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_749C(&qword_10460, &qword_A5E8);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_7D20(a3, v25 - v10, &qword_10460, &qword_A5E8);
  v12 = sub_9E34();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_7CC0(v11, &qword_10460, &qword_A5E8);
  }

  else
  {
    sub_9E24();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_9DC4();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_9D74() + 32;
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

      sub_7CC0(a3, &qword_10460, &qword_A5E8);

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

  sub_7CC0(a3, &qword_10460, &qword_A5E8);
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

uint64_t sub_48A4()
{
  v1[55] = v0;
  v2 = sub_749C(&qword_10428, &qword_A5B8);
  v1[56] = v2;
  v1[57] = *(v2 - 8);
  v1[58] = swift_task_alloc();
  v3 = sub_749C(&qword_10430, &qword_A5C0);
  v1[59] = v3;
  v1[60] = *(v3 - 8);
  v1[61] = swift_task_alloc();
  sub_9E14();
  v1[62] = sub_9E04();
  v5 = sub_9DC4();
  v1[63] = v5;
  v1[64] = v4;

  return _swift_task_switch(sub_4A0C, v5, v4);
}

uint64_t sub_4A0C()
{
  v1 = v0;
  v2 = v0 + 2;
  v3 = v0 + 53;
  v4 = v0[60];
  v5 = v0[61];
  v6 = v0[59];
  v11 = v1[55];
  v10 = [objc_allocWithZone(LAPasscodeVerificationService) init];
  v1[65] = v10;
  v7 = [objc_allocWithZone(LAPasscodeVerificationServiceOptions) init];
  v1[66] = v7;
  [v7 setDismissUIAfterCompletion:0];
  v1[2] = v1;
  v1[7] = v3;
  v1[3] = sub_4C30;
  swift_continuation_init();
  v1[25] = v6;
  v8 = sub_74E4(v1 + 22);
  sub_7AC4(0, &qword_10438, LAContext_ptr);
  v1[67] = sub_749C(&qword_10440, &qword_A5C8);
  sub_9DD4();
  (*(v4 + 32))(v8, v5, v6);
  v1[18] = _NSConcreteStackBlock;
  v1[19] = 1107296256;
  v1[20] = sub_58B0;
  v1[21] = &unk_C7D8;
  [v10 startInParentVC:v11 options:v7 completion:?];
  (*(v4 + 8))(v8, v6);

  return _swift_continuation_await(v2);
}

uint64_t sub_4C30()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 544) = v2;
  v3 = *(v1 + 512);
  v4 = *(v1 + 504);
  if (v2)
  {
    v5 = sub_54D8;
  }

  else
  {
    v5 = sub_4D60;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_4D60()
{
  v10 = v0[53];
  v0[69] = v10;
  if (qword_103B0 != -1)
  {
    swift_once();
  }

  v1 = sub_9C94();
  v0[70] = sub_2F7C(v1, qword_105B8);
  v2 = sub_9C74();
  v3 = sub_9E64();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "Passcode challenge succeeded, extracting credentials", v4, 2u);
  }

  v6 = v0[57];
  v5 = v0[58];
  v7 = v0[56];

  v0[10] = v0;
  v0[15] = v0 + 47;
  v0[11] = sub_4FD8;
  swift_continuation_init();
  v0[33] = v7;
  v8 = sub_74E4(v0 + 30);
  sub_749C(&qword_10448, &qword_A5D0);
  sub_9DD4();
  (*(v6 + 32))(v8, v5, v7);
  v0[26] = _NSConcreteStackBlock;
  v0[27] = 1107296256;
  v0[28] = sub_5960;
  v0[29] = &unk_C800;
  [v10 credentialOfType:-9 reply:v0 + 26];
  (*(v6 + 8))(v8, v7);

  return _swift_continuation_await(v0 + 10);
}

uint64_t sub_4FD8()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  *(*v0 + 568) = v2;
  v3 = *(v1 + 512);
  v4 = *(v1 + 504);
  if (v2)
  {
    v5 = sub_56C0;
  }

  else
  {
    v5 = sub_5108;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_5108()
{

  v1 = *(v0 + 384);
  if (v1 >> 60 == 15)
  {
    v2 = sub_9C74();
    v3 = sub_9E54();
    v4 = os_log_type_enabled(v2, v3);
    v5 = *(v0 + 552);
    v6 = *(v0 + 528);
    v7 = *(v0 + 520);
    if (v4)
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_0, v2, v3, "Extracting credentials from passcode challenge failed unexpectedly", v8, 2u);
    }

    goto LABEL_22;
  }

  v9 = *(v0 + 376);
  sub_75D0(v9, *(v0 + 384));
  v10 = sub_7108(v9, v1);
  if (v11)
  {
    goto LABEL_12;
  }

  *(v0 + 392) = v9;
  *(v0 + 400) = v1;
  sub_75D0(v9, v1);
  sub_749C(&qword_10450, &qword_A5D8);
  if (!swift_dynamicCast())
  {
    *(v0 + 344) = 0;
    *(v0 + 312) = 0u;
    *(v0 + 328) = 0u;
    sub_7CC0(v0 + 312, &qword_10458, &qword_A5E0);
LABEL_11:
    v10 = sub_6EE4(v9, v1);
LABEL_12:
    v13 = v10;
    v12 = v11;
    sub_7624(v9, v1);
    goto LABEL_13;
  }

  sub_768C((v0 + 312), v0 + 272);
  sub_76F0((v0 + 272), *(v0 + 296));
  if ((sub_9F24() & 1) == 0)
  {
    sub_76A4((v0 + 272));
    goto LABEL_11;
  }

  sub_7624(v9, v1);
  sub_76F0((v0 + 272), *(v0 + 296));
  sub_9F14();
  v13 = *(v0 + 408);
  v12 = *(v0 + 416);
  sub_76A4((v0 + 272));
LABEL_13:
  v14 = HIBYTE(v12) & 0xF;
  if ((v12 & 0x2000000000000000) == 0)
  {
    v14 = v13 & 0xFFFFFFFFFFFFLL;
  }

  if (v14)
  {
    v15 = sub_9C74();
    v16 = sub_9E64();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_0, v15, v16, "Passcode extraction succeeded, dimissing passcode challenge", v17, 2u);
    }

    v2 = *(v0 + 552);
    v18 = *(v0 + 528);
    v19 = *(v0 + 520);

    sub_6220(v13, v12);

    sub_7624(v9, v1);
  }

  else
  {

    v2 = sub_9C74();
    v20 = sub_9E54();
    v21 = os_log_type_enabled(v2, v20);
    v22 = *(v0 + 552);
    v23 = *(v0 + 528);
    v24 = *(v0 + 520);
    if (v21)
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_0, v2, v20, "Extracting credentials from passcode challenge failed, extracted value is invalid", v25, 2u);
    }

    sub_7624(v9, v1);
  }

LABEL_22:

  v26 = *(v0 + 8);

  return v26();
}

uint64_t sub_54D8()
{
  v14 = v0;

  swift_willThrow();
  if (qword_103B0 != -1)
  {
    swift_once();
  }

  v1 = sub_9C94();
  sub_2F7C(v1, qword_105B8);
  swift_errorRetain();
  v2 = sub_9C74();
  v3 = sub_9E54();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v13 = v5;
    *v4 = 136315138;
    swift_getErrorValue();
    v6 = sub_9F54();
    v8 = sub_9348(v6, v7, &v13);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_0, v2, v3, "Passcode challenge failed, error '%s'", v4, 0xCu);
    sub_76A4(v5);
  }

  v9 = v0[66];
  v10 = v0[65];
  sub_5A2C();

  v11 = v0[1];

  return v11();
}

uint64_t sub_56C0()
{
  v15 = v0;
  v1 = v0[69];

  swift_willThrow();

  if (qword_103B0 != -1)
  {
    swift_once();
  }

  v2 = sub_9C94();
  sub_2F7C(v2, qword_105B8);
  swift_errorRetain();
  v3 = sub_9C74();
  v4 = sub_9E54();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v14 = v6;
    *v5 = 136315138;
    swift_getErrorValue();
    v7 = sub_9F54();
    v9 = sub_9348(v7, v8, &v14);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_0, v3, v4, "Passcode challenge failed, error '%s'", v5, 0xCu);
    sub_76A4(v6);
  }

  v10 = v0[66];
  v11 = v0[65];
  sub_5A2C();

  v12 = v0[1];

  return v12();
}

void sub_58B0(uint64_t a1, void *a2, void *a3)
{
  sub_76F0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v5 = a3;
    sub_749C(&qword_10430, &qword_A5C0);
    sub_9DE4();
  }

  else if (a2)
  {
    v6 = a2;
    sub_749C(&qword_10430, &qword_A5C0);
    sub_9DF4();
  }

  else
  {
    __break(1u);
  }
}

void sub_5960(uint64_t a1, void *a2, void *a3)
{
  sub_76F0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v5 = a3;
    sub_749C(&qword_10428, &qword_A5B8);
    sub_9DE4();
  }

  else
  {
    if (a2)
    {
      v6 = a2;
      sub_9C04();
    }

    sub_749C(&qword_10428, &qword_A5B8);
    sub_9DF4();
  }
}

uint64_t sub_5A2C()
{
  v1 = v0;
  v2 = sub_9CE4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_103A8 != -1)
  {
    swift_once();
  }

  v6 = sub_9C94();
  sub_2F7C(v6, qword_105A0);
  v7 = sub_9C74();
  v8 = sub_9E64();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_0, v7, v8, "Navigating back to Settings.app's root view", v9, 2u);
  }

  v10 = [v1 traitCollection];
  sub_9E74();

  sub_9CD4();
  return (*(v3 + 8))(v5, v2);
}

void sub_5BDC()
{
  v1 = v0;
  v2 = sub_2FB4();
  [v1 addChildViewController:v2];

  v3 = [v1 view];
  if (!v3)
  {
    __break(1u);
    goto LABEL_27;
  }

  v4 = v3;
  v5 = OBJC_IVAR____TtC33PasscodeAndBiometricsSettingsPref31PABSRootContainerViewController____lazy_storage___contentViewController;
  v6 = [*&v1[OBJC_IVAR____TtC33PasscodeAndBiometricsSettingsPref31PABSRootContainerViewController____lazy_storage___contentViewController] view];
  if (!v6)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v7 = v6;
  [v4 addSubview:v6];

  v8 = [*&v1[v5] view];
  if (!v8)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v9 = v8;
  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];

  sub_749C(&qword_10418, &qword_A5B0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_A530;
  v11 = [*&v1[v5] view];
  if (!v11)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v12 = v11;
  v13 = [v11 topAnchor];

  v14 = [v1 view];
  if (!v14)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v15 = v14;
  v16 = [v14 topAnchor];

  v17 = [v13 constraintEqualToAnchor:v16];
  *(v10 + 32) = v17;
  v18 = [*&v1[v5] view];
  if (!v18)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v19 = v18;
  v20 = [v18 leadingAnchor];

  v21 = [v1 view];
  if (!v21)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v22 = v21;
  v23 = [v21 leadingAnchor];

  v24 = [v20 constraintEqualToAnchor:v23];
  *(v10 + 40) = v24;
  v25 = [*&v1[v5] view];
  if (!v25)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v26 = v25;
  v27 = [v25 trailingAnchor];

  v28 = [v1 view];
  if (!v28)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v29 = v28;
  v30 = [v28 trailingAnchor];

  v31 = [v27 constraintEqualToAnchor:v30];
  *(v10 + 48) = v31;
  v32 = [*&v1[v5] view];
  if (!v32)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v33 = v32;
  v34 = [v32 bottomAnchor];

  v35 = [v1 view];
  if (!v35)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v36 = v35;
  v37 = objc_opt_self();
  v38 = [v36 bottomAnchor];

  v39 = [v34 constraintEqualToAnchor:v38];
  *(v10 + 56) = v39;
  sub_7AC4(0, &qword_10420, NSLayoutConstraint_ptr);
  isa = sub_9DA4().super.isa;

  [v37 activateConstraints:isa];

  v41 = objc_opt_self();
  v42 = [v41 sharedConnection];
  if (!v42)
  {
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v43 = v42;
  v44 = [v42 isPasscodeSet];

  if ((v44 & 1) == 0)
  {
    sub_6220(0, 0);
  }

  if (qword_103A8 != -1)
  {
    swift_once();
  }

  v45 = sub_9C94();
  sub_2F7C(v45, qword_105A0);
  v46 = sub_9C74();
  v47 = sub_9E64();
  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    *v48 = 0;
    _os_log_impl(&dword_0, v46, v47, "Navigating forward to our content view", v48, 2u);
  }

  [*&v1[v5] didMoveToParentViewController:v1];
  v49 = [v41 sharedConnection];
  if (!v49)
  {
    goto LABEL_38;
  }

  v50 = v49;
  v51 = [v49 isPasscodeSet];

  if (!v51)
  {
    return;
  }

  v52 = [v1 view];
  if (!v52)
  {
LABEL_39:
    __break(1u);
    return;
  }

  v53 = v52;
  v54 = [objc_opt_self() effectWithStyle:1];
  v55 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:v54];
  [v53 bounds];
  [v55 setFrame:?];
  [v55 setAutoresizingMask:18];
  [v53 addSubview:v55];
}

void sub_6220(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v22 = [v2 specifier];
  if (!v22)
  {
    __break(1u);
    goto LABEL_22;
  }

  v5 = MobileGestalt_get_current_device();
  if (!v5)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v6 = v5;
  touchIDCapability = MobileGestalt_get_touchIDCapability();

  if (!touchIDCapability)
  {
    v8 = MobileGestalt_get_current_device();
    if (!v8)
    {
LABEL_24:
      __break(1u);
      return;
    }

    v9 = v8;
    MobileGestalt_get_pearlIDCapability();
  }

  v10 = sub_9D54();

  [v22 setIdentifier:v10];

  if (a2)
  {
    v11 = sub_9D54();
    [v22 setProperty:v11 forKey:PSSpecifierPasscodeKey];
  }

  v12 = sub_2FB4();
  [v12 setSpecifier:v22];

  if (qword_103A8 != -1)
  {
    swift_once();
  }

  v13 = sub_9C94();
  sub_2F7C(v13, qword_105A0);

  v14 = sub_9C74();
  v15 = sub_9E64();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 67109120;
    *(v16 + 4) = a2 != 0;

    _os_log_impl(&dword_0, v14, v15, "Set specifier on content vc [with passcode: %{BOOL}d]", v16, 8u);

    if (!a2)
    {
      goto LABEL_18;
    }

LABEL_14:
    v17 = sub_9C74();
    v18 = sub_9E64();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_0, v17, v18, "Refreshing content view post retrieving passcode", v19, 2u);
    }

    [*&v3[OBJC_IVAR____TtC33PasscodeAndBiometricsSettingsPref31PABSRootContainerViewController____lazy_storage___contentViewController] reloadSpecifiers];
    v20 = [v3 view];
    if (v20)
    {
      v21 = v20;
      sub_6568();

      goto LABEL_18;
    }

    goto LABEL_23;
  }

  if (a2)
  {
    goto LABEL_14;
  }

LABEL_18:
}

void sub_6568()
{
  v1 = [v0 subviews];
  sub_7AC4(0, &qword_10410, UIView_ptr);
  v2 = sub_9DB4();

  if (!(v2 >> 62))
  {
    v3 = *(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8));
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_18:

    return;
  }

LABEL_17:
  v3 = sub_9F04();
  if (!v3)
  {
    goto LABEL_18;
  }

LABEL_3:
  v4 = 0;
  while (1)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v5 = sub_9EE4();
    }

    else
    {
      if (v4 >= *(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_16;
      }

      v5 = *(v2 + 8 * v4 + 32);
    }

    v6 = v5;
    v7 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      break;
    }

    ++v4;
    if (v7 == v3)
    {
      goto LABEL_18;
    }
  }

  objc_opt_self();
  v8 = swift_dynamicCastObjCClassUnconditional();
  v9 = v6;
  sub_72B4(v8);
}

void sub_6A0C(uint64_t a1)
{
  sub_6AA4(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_6AA4(uint64_t a1)
{
  if (!qword_10408)
  {
    sub_9EA4();
    v1 = sub_9EC4();
    if (!v2)
    {
      atomic_store(v1, &qword_10408);
    }
  }
}

uint64_t sub_6AFC(void *a1)
{
  sub_9E14();
  sub_9E04();
  sub_9DC4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  [a1 setAlpha:0.0];
  [a1 setEffect:0];
}

uint64_t sub_6BB8(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_6BFC(uint64_t a1, void *a2)
{
  sub_9E14();
  sub_9E04();
  sub_9DC4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  [a2 removeFromSuperview];
}

uint64_t sub_6CA0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t sub_6CF4(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_6DEC;

  return v6(a1);
}

uint64_t sub_6DEC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_6EE4(uint64_t a1, unint64_t a2)
{
  sub_75D0(a1, a2);
  sub_6F8C(a1, a2);
  v4 = sub_9D84();

  return v4;
}

uint64_t sub_6F50@<X0>(uint64_t *a3@<X8>)
{
  result = sub_9D84();
  *a3 = result;
  a3[1] = v5;
  return result;
}

void *sub_6F8C(uint64_t a1, unint64_t a2)
{
  v4 = sub_9C14();
  v5 = *(v4 - 8);
  result = __chkstk_darwin(v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v9 != 2)
    {
LABEL_12:
      sub_7638(a1, a2);
      return &_swiftEmptyArrayStorage;
    }

    v12 = *(a1 + 16);
    v11 = *(a1 + 24);
    v10 = v11 - v12;
    if (!__OFSUB__(v11, v12))
    {
      if (v10)
      {
        goto LABEL_8;
      }

      goto LABEL_12;
    }

    __break(1u);
LABEL_15:
    __break(1u);
  }

  else
  {
    if (v9)
    {
      goto LABEL_10;
    }

    v10 = BYTE6(a2);
    if (!BYTE6(a2))
    {
      goto LABEL_12;
    }

LABEL_8:
    while (1)
    {
      v13 = sub_97D0(v10, 0);
      v14 = sub_9BF4();
      sub_7638(a1, a2);
      v15 = *(v5 + 8);
      v5 += 8;
      v15(v8, v4);
      result = v13;
      if (v14 == v10)
      {
        break;
      }

      __break(1u);
LABEL_10:
      v16 = HIDWORD(a1) - a1;
      if (__OFSUB__(HIDWORD(a1), a1))
      {
        goto LABEL_15;
      }

      v10 = v16;
      if (!v16)
      {
        goto LABEL_12;
      }
    }
  }

  return result;
}

uint64_t sub_7108(uint64_t a1, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v2)
    {
      return sub_9D84();
    }

    goto LABEL_10;
  }

  if (v2 != 2)
  {
    return sub_9D84();
  }

  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  a1 = sub_9B84();
  if (a1)
  {
    a1 = sub_9BA4();
    if (__OFSUB__(v3, a1))
    {
      goto LABEL_18;
    }
  }

  if (__OFSUB__(v4, v3))
  {
    __break(1u);
LABEL_10:
    v5 = a1;
    if (a1 >> 32 >= a1)
    {
      if (!sub_9B84() || !__OFSUB__(v5, sub_9BA4()))
      {
        goto LABEL_15;
      }

LABEL_19:
      __break(1u);
    }

    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_15:
  sub_9B94();
  return sub_9D84();
}

void sub_72B4(void *a1)
{
  v2 = objc_opt_self();
  v3 = swift_allocObject();
  *(v3 + 16) = a1;
  v13 = sub_7474;
  v14 = v3;
  v9 = _NSConcreteStackBlock;
  v10 = 1107296256;
  v11 = sub_6BB8;
  v12 = &unk_C760;
  v4 = _Block_copy(&v9);
  v5 = a1;

  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  v13 = sub_7494;
  v14 = v6;
  v9 = _NSConcreteStackBlock;
  v10 = 1107296256;
  v11 = sub_6CA0;
  v12 = &unk_C7B0;
  v7 = _Block_copy(&v9);
  v8 = v5;

  [v2 animateWithDuration:v4 animations:v7 completion:0.5];
  _Block_release(v7);
  _Block_release(v4);
}

uint64_t sub_743C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_747C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_749C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t *sub_74E4(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_7558(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_75D0(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_7624(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_7638(result, a2);
  }

  return result;
}

uint64_t sub_7638(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_768C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_76A4(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

void *sub_76F0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_7734()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_7774()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_7828;

  return sub_41D4();
}

uint64_t sub_7828()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_791C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_7954(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_7D9C;

  return sub_6CF4(a1, v4);
}

uint64_t sub_7A0C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_7828;

  return sub_6CF4(a1, v4);
}

uint64_t sub_7AC4(uint64_t a1, unint64_t *a2, void *a3)
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

unint64_t sub_7B0C()
{
  result = qword_10480;
  if (!qword_10480)
  {
    sub_9E44();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10480);
  }

  return result;
}

uint64_t sub_7B64()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_7BA4()
{
  result = qword_10488;
  if (!qword_10488)
  {
    sub_7C08(&qword_10468, &qword_A618);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10488);
  }

  return result;
}

uint64_t sub_7C08(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_7C50(uint64_t a1, uint64_t a2)
{
  v4 = sub_749C(&qword_10470, &unk_A620);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_7CC0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_749C(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_7D20(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_749C(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t sub_7DDC()
{
  result = qword_10528;
  if (!qword_10528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10528);
  }

  return result;
}

uint64_t sub_7E4C()
{
  v0 = MobileGestalt_get_current_device();
  if (!v0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v2 = v0;
  touchIDCapability = MobileGestalt_get_touchIDCapability();

  if (touchIDCapability)
  {
    v0 = 0x1000000000000014;
    v1 = 0x800000000000AA80;
    goto LABEL_8;
  }

  v0 = MobileGestalt_get_current_device();
  if (!v0)
  {
LABEL_12:
    __break(1u);
    return LocalizedStringResource.init(stringLiteral:)(v0, v1);
  }

  v4 = v0;
  pearlIDCapability = MobileGestalt_get_pearlIDCapability();

  if (pearlIDCapability)
  {
    v1 = 0x800000000000AA60;
    v0 = 0x1000000000000013;
  }

  else
  {
    v0 = 0x65646F6373736150;
    v1 = 0xE800000000000000;
  }

LABEL_8:

  return LocalizedStringResource.init(stringLiteral:)(v0, v1);
}

uint64_t sub_7F30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v49 = a4;
  v48 = sub_749C(&qword_10530, &qword_A700) - 8;
  __chkstk_darwin(v48);
  v47 = &v40 - v7;
  v46 = sub_749C(&qword_10538, &qword_A708);
  v54 = *(v46 - 8);
  v8 = __chkstk_darwin(v46);
  v45 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v53 = &v40 - v10;
  v52 = sub_749C(&qword_10540, &qword_A710);
  v43 = *(v52 - 8);
  __chkstk_darwin(v52);
  v12 = &v40 - v11;
  v44 = sub_749C(&qword_10548, &qword_A718);
  v41 = *(v44 - 8);
  v13 = v41;
  v14 = __chkstk_darwin(v44);
  v51 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v50 = &v40 - v16;
  v17 = swift_allocObject();
  v17[2] = a1;
  v17[3] = a2;
  v17[4] = a3;

  v18 = a3;
  sub_749C(&qword_10550, &qword_A720);
  v19 = sub_9C34();
  v20 = sub_9414(&qword_10558, &type metadata accessor for PreferencesControllerView, &protocol conformance descriptor for PreferencesControllerView);
  v59 = v19;
  v60 = v20;
  swift_getOpaqueTypeConformance2();
  sub_9D34();
  v21 = swift_allocObject();
  v21[2] = a1;
  v21[3] = a2;
  v21[4] = v18;
  v42 = &protocol conformance descriptor for SettingsPane<A>;
  v22 = sub_9B08(&qword_10560, &qword_10540, &qword_A710, &protocol conformance descriptor for SettingsPane<A>);

  v23 = v18;
  v24 = v50;
  v25 = v52;
  sub_9CF4();
  (*(v43 + 8))(v12, v25);
  swift_checkMetadataState();
  v26 = v53;
  sub_9D44();
  v27 = *(v13 + 16);
  v28 = v51;
  v29 = v44;
  v27(v51, v24, v44);
  v30 = *(v54 + 16);
  v32 = v45;
  v31 = v46;
  v30(v45, v26, v46);
  v59 = v52;
  v60 = v22;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v34 = v47;
  v27(v47, v28, v29);
  v59 = v34;
  v35 = sub_9B08(&qword_10568, &qword_10538, &qword_A708, v42);
  v36 = &v34[*(v48 + 56)];
  v30(v36, v32, v31);
  v60 = v36;
  v57 = v29;
  v58 = v31;
  v55 = OpaqueTypeConformance2;
  v56 = v35;
  sub_9CC4();
  v37 = *(v54 + 8);
  v37(v53, v31);
  v38 = *(v41 + 8);
  v38(v50, v29);
  v37(v32, v31);
  return (v38)(v51, v29);
}

uint64_t sub_84F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v14[0] = a1;
  v14[1] = a2;
  v14[2] = a4;
  v15 = sub_9BC4();
  v5 = *(v15 - 8);
  __chkstk_darwin(v15);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_9C64();
  __chkstk_darwin(v8 - 8);
  v9 = sub_9C34();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_9E14();
  sub_9E04();
  sub_9DC4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  type metadata accessor for PABSRootContainerViewController(0);
  sub_993C(a3);
  sub_9C44();
  sub_9C24();
  sub_7E4C();
  sub_9414(&qword_10558, &type metadata accessor for PreferencesControllerView, &protocol conformance descriptor for PreferencesControllerView);
  sub_9CB4();
  (*(v5 + 8))(v7, v15);
  (*(v10 + 8))(v12, v9);
}

uint64_t sub_8794(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = sub_9CA4();
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();
  v5[10] = swift_task_alloc();
  sub_749C(&qword_10578, &qword_A738);
  v5[11] = swift_task_alloc();
  v7 = sub_9B74();
  v5[12] = v7;
  v5[13] = *(v7 - 8);
  v5[14] = swift_task_alloc();
  v8 = sub_9BE4();
  v5[15] = v8;
  v5[16] = *(v8 - 8);
  v5[17] = swift_task_alloc();
  v5[18] = swift_task_alloc();
  sub_9E14();
  v5[19] = sub_9E04();
  v10 = sub_9DC4();

  return _swift_task_switch(sub_8998, v10, v9);
}

uint64_t sub_8998()
{
  v57 = v0;

  sub_9D14();
  if (qword_103B8 != -1)
  {
    swift_once();
  }

  v2 = v0[17];
  v1 = v0[18];
  v4 = v0[15];
  v3 = v0[16];
  v5 = sub_9C94();
  sub_2F7C(v5, qword_105D0);
  (*(v3 + 16))(v2, v1, v4);
  v6 = sub_9C74();
  v7 = sub_9E64();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[16];
  v10 = v0[17];
  v11 = v0[15];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v56 = v13;
    *v12 = 136315138;
    sub_9414(&qword_10580, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v14 = sub_9F34();
    v16 = v15;
    v55 = *(v9 + 8);
    v55(v10, v11);
    v17 = sub_9348(v14, v16, &v56);

    *(v12 + 4) = v17;
    _os_log_impl(&dword_0, v6, v7, "Received deep link url %s", v12, 0xCu);
    sub_76A4(v13);
  }

  else
  {

    v55 = *(v9 + 8);
    v55(v10, v11);
  }

  v19 = v0 + 13;
  v18 = v0[13];
  v21 = v0 + 12;
  v20 = v0[12];
  v22 = v0[11];
  sub_9B54();
  if ((*(v18 + 48))(v22, 1, v20) != 1)
  {
    v26 = v0 + 14;
    (*(v0[13] + 32))(v0[14], v0[11], v0[12]);
    sub_9D04();
    v27 = sub_9BD4();
    v29 = v28;
    v30 = sub_9B64();
    if (v31)
    {
      v32 = v30;
      v33 = v31;
      v34 = v0[6];

      v35 = sub_9D54();
      [v34 setSpecifierIdentifierToScrollAndHighlight:v35];

      v36 = sub_9C74();
      v37 = sub_9E64();

      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        v56 = v39;
        *v38 = 136315138;
        v40 = sub_9348(v32, v33, &v56);

        *(v38 + 4) = v40;
        _os_log_impl(&dword_0, v36, v37, "Will ScrollAndHighlight identifier: %s", v38, 0xCu);
        sub_76A4(v39);

LABEL_13:

LABEL_24:
        v48 = v0[10];
        v49 = v0[7];
        v50 = v0[8];
        sub_9D24();
        (*(v50 + 8))(v48, v49);
        goto LABEL_25;
      }
    }

    else
    {
      v41 = HIBYTE(v29) & 0xF;
      if ((v29 & 0x2000000000000000) == 0)
      {
        v41 = v27 & 0xFFFFFFFFFFFFLL;
      }

      if (!v41 || v27 == v0[4] && v29 == v0[5] || (sub_9F44() & 1) != 0)
      {
        goto LABEL_23;
      }

      v42 = v0[6];
      v43 = sub_9D54();
      [v42 setSpecifierIdentifierToScrollAndSelect:v43];

      v36 = sub_9C74();
      v44 = sub_9E64();

      if (os_log_type_enabled(v36, v44))
      {
        v45 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        v56 = v46;
        *v45 = 136315138;
        v47 = sub_9348(v27, v29, &v56);

        *(v45 + 4) = v47;
        _os_log_impl(&dword_0, v36, v44, "Will ScrollAndSelect identifier: %s", v45, 0xCu);
        sub_76A4(v46);

        goto LABEL_13;
      }
    }

LABEL_23:

    goto LABEL_24;
  }

  sub_92E0(v0[11]);
  v23 = sub_9C74();
  v24 = sub_9E54();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&dword_0, v23, v24, "Invalid URL!", v25, 2u);
  }

  v26 = v0 + 9;

  sub_9D04();
  sub_9D24();
  v19 = v0 + 8;
  v21 = v0 + 7;
LABEL_25:
  v51 = v0[18];
  v52 = v0[15];
  (*(*v19 + 8))(*v26, *v21);
  v55(v51, v52);

  v53 = v0[1];

  return v53();
}

uint64_t sub_9028()
{
  v0 = sub_9C64();
  __chkstk_darwin(v0 - 8);
  sub_9E14();
  sub_9E04();
  sub_9DC4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_9294();
  sub_9C54();
  sub_9C24();
}

id sub_9128@<X0>(void *a1@<X8>)
{
  result = [objc_allocWithZone(PSListControllerCellHighlightingSelectionInvocationRelay) init];
  *a1 = 0xD00000000000001BLL;
  a1[1] = 0x800000000000A9D0;
  a1[2] = result;
  return result;
}

uint64_t sub_9190()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_91D0(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_7828;

  return sub_8794(a1, a2, v6, v7, v8);
}

unint64_t sub_9294()
{
  result = qword_10570;
  if (!qword_10570)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10570);
  }

  return result;
}

uint64_t sub_92E0(uint64_t a1)
{
  v2 = sub_749C(&qword_10578, &qword_A738);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_9348(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_945C(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_7558(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_76A4(v11);
  return v7;
}

uint64_t sub_9414(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_945C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_9568(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_9EF4();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

char *sub_9568(uint64_t a1, unint64_t a2)
{
  v3 = sub_95B4(a1, a2);
  sub_96E4(&off_C710);
  return v3;
}

char *sub_95B4(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_97D0(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_9EF4();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_9D94();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_97D0(v10, 0);
        result = sub_9ED4();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_96E4(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_9844(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_97D0(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return &_swiftEmptyArrayStorage;
  }

  sub_749C(&qword_10588, &qword_A740);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_9844(char *result, int64_t a2, char a3, char *a4)
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
    sub_749C(&qword_10588, &qword_A740);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

id sub_993C(uint64_t a1)
{
  v2 = [objc_allocWithZone(PSSpecifier) init];
  v3 = sub_9D54();
  [v2 setIdentifier:v3];

  v4 = sub_9D54();
  [v2 setName:v4];

  [v2 setProperty:a1 forKey:PSListControllerCellHighlightingSelectionInvocationRelayKey];
  return v2;
}

__n128 sub_9A18(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_9A2C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_9A74(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_9B08(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_7C08(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}