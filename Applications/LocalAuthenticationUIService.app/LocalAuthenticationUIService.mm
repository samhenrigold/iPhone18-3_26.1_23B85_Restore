void sub_1000027C0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_100002D8C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v5 + 48));
  objc_destroyWeak((v4 + 40));
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v6 - 104));
  _Unwind_Resume(a1);
}

void sub_100003F88(_Unwind_Exception *a1)
{
  objc_destroyWeak(v1);
  objc_destroyWeak((v2 + 48));
  objc_destroyWeak((v3 - 144));
  _Unwind_Resume(a1);
}

void sub_1000046E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id location)
{
  objc_destroyWeak((v25 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100005418(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100006698(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100006F04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id location)
{
  objc_destroyWeak((v25 + 48));
  objc_destroyWeak((v24 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100007774(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_2(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 0xCu);
}

uint64_t LADynamicIslandAvailable(uint64_t a1, uint64_t a2)
{
  if (LADynamicIslandAvailable_onceToken != -1)
  {
    [PresentationViewController isDynamicIslandAvailable];
  }

  return LADynamicIslandAvailable__available;
}

void OUTLINED_FUNCTION_2_0(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void OUTLINED_FUNCTION_3(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, v8, OS_LOG_TYPE_DEBUG, a4, va, 0x12u);
}

void sub_10000BBEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10000D25C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_10000EDC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id location)
{
  objc_destroyWeak((v25 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10000F3A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id PasscodeViewControllerAlloc(void *a1)
{
  v1 = [a1 objectForKey:@"Options"];
  v2 = [v1 objectForKey:&off_1000AF3E0];
  v3 = [v2 BOOLValue];
  v4 = &off_1000A90A0;
  if (!v3)
  {
    v4 = off_1000A9078;
  }

  v5 = objc_alloc(*v4);

  return v5;
}

id PasscodeViewControllerInit(void *a1, void *a2, void *a3, void *a4, uint64_t a5)
{
  v9 = a4;
  v10 = a3;
  v11 = a2;
  v12 = a1;
  PasscodeViewControllerAlloc(v12);
  v13 = [objc_claimAutoreleasedReturnValue() initWithInternalInfo:v12 mechanism:v11 backoffCounter:v10 remoteUIHost:v9 allowsLandscape:a5];

  return v13;
}

void sub_100011BAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, id a38)
{
  objc_destroyWeak((v38 + 32));
  objc_destroyWeak(&a38);
  objc_destroyWeak((v39 - 120));
  objc_destroyWeak((v39 - 112));
  _Unwind_Resume(a1);
}

DTOBiometryAlertFactory *DTOBiometryAlertFactoryInit()
{
  v0 = objc_alloc_init(DTOBiometryAlertFactory);

  return v0;
}

void sub_100013C4C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 96));
  _Unwind_Resume(a1);
}

uint64_t ShouldUseTouchIdViewControllerWithCoachings(uint64_t a1, uint64_t a2)
{
  if (ShouldUseTouchIdViewControllerWithCoachings_onceToken != -1)
  {
    ShouldUseTouchIdViewControllerWithCoachings_cold_1();
  }

  return ShouldUseTouchIdViewControllerWithCoachings_supportsSecureDoubleClick;
}

id TouchIdViewControllerAlloc(uint64_t a1, uint64_t a2)
{
  if (ShouldUseTouchIdViewControllerWithCoachings_onceToken != -1)
  {
    ShouldUseTouchIdViewControllerWithCoachings_cold_1();
  }

  if (ShouldUseTouchIdViewControllerWithCoachings_supportsSecureDoubleClick)
  {
    v2 = off_1000A9090;
  }

  else
  {
    v2 = off_1000A9088;
  }

  v3 = objc_alloc(*v2);

  return v3;
}

id TouchIdViewControllerInit(void *a1, void *a2, void *a3, void *a4, uint64_t a5)
{
  v9 = a4;
  v10 = a3;
  v11 = a2;
  v12 = a1;
  TouchIdViewControllerAlloc(v12, v13);
  v14 = [objc_claimAutoreleasedReturnValue() initWithInternalInfo:v12 mechanism:v11 backoffCounter:v10 remoteUIHost:v9 allowsLandscape:a5];

  return v14;
}

id PinViewControllerAlloc(void *a1)
{
  v1 = [a1 objectForKeyedSubscript:@"CTKPIN"];
  v2 = [v1 BOOLValue];

  v3 = off_1000A9098;
  if (!v2)
  {
    v3 = off_1000A9080;
  }

  v4 = objc_alloc(*v3);

  return v4;
}

uint64_t LAUISecureFaceIDViewStateFromFaceIdLightweightTrailingViewState(unint64_t a1, uint64_t a2)
{
  v2 = a1;
  if (a1 < 3)
  {
    return qword_100086580[a1];
  }

  v4 = LACLogFaceIDUI();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    LAUISecureFaceIDViewStateFromFaceIdLightweightTrailingViewState_cold_1(v2, v4);
  }

  return 0;
}

unint64_t LACUIFaceIDSpinnerStateFromFaceIdLightweightTrailingViewState(unint64_t a1, uint64_t a2)
{
  v2 = a1;
  if (a1 >= 3)
  {
    v3 = LACLogFaceIDUI();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      LAUISecureFaceIDViewStateFromFaceIdLightweightTrailingViewState_cold_1(v2, v3);
    }

    return 0;
  }

  return v2;
}

void sub_100019460(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_10001992C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_10001A094(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10001B370(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, ...)
{
  va_start(va, a49);
  objc_destroyWeak(v49);
  objc_destroyWeak(&a40);
  _Block_object_dispose(&a42, 8);
  _Block_object_dispose(&a46, 8);
  _Block_object_dispose((v50 - 160), 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v50 - 232), 8);
  _Block_object_dispose((v50 - 200), 8);
  objc_destroyWeak((v50 - 168));
  _Unwind_Resume(a1);
}

void sub_10001C188(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10001C604(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak((v23 + 32));
  objc_destroyWeak((v22 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10001CEA0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_10001D0DC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 48));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_10001D408(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10001E03C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak((v19 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10001E4A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak((v19 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10001E908(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak(v1);
  objc_destroyWeak((v3 - 80));
  _Unwind_Resume(a1);
}

void sub_10001EF6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100020C0C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_1000220F8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_100022330(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100022F30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000232DC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_100025128(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t AngelSceneRemoteAlert.identifier.getter(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC28LocalAuthenticationUIService21AngelSceneRemoteAlert_identifier);

  return v3;
}

uint64_t AngelSceneRemoteAlert.persistentIdentifier.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC28LocalAuthenticationUIService21AngelSceneRemoteAlert_persistentIdentifier);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t AngelSceneRemoteAlert.persistentIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC28LocalAuthenticationUIService21AngelSceneRemoteAlert_persistentIdentifier);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

uint64_t key path getter for AngelSceneRemoteAlert.persistentIdentifier : AngelSceneRemoteAlert@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0x78))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t key path setter for AngelSceneRemoteAlert.persistentIdentifier : AngelSceneRemoteAlert(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *((swift_isaMask & **a2) + 0x80);

  return v4(v2, v3);
}

uint64_t AngelSceneRemoteAlert.delegate.setter(uint64_t a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t key path getter for AngelSceneRemoteAlert.delegate : AngelSceneRemoteAlert@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0x90))();
  *a2 = result;
  return result;
}

uint64_t key path setter for AngelSceneRemoteAlert.delegate : AngelSceneRemoteAlert(void *a1, void **a2)
{
  v2 = *((swift_isaMask & **a2) + 0x98);
  v3 = swift_unknownObjectRetain();
  return v2(v3);
}

void (*AngelSceneRemoteAlert.delegate.modify(uint64_t *a1))(void **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC28LocalAuthenticationUIService21AngelSceneRemoteAlert_delegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return AngelSceneRemoteAlert.delegate.modify;
}

void AngelSceneRemoteAlert.delegate.modify(void **a1, char a2)
{
  v3 = *a1;
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

id AngelSceneRemoteAlert.__allocating_init(identifier:handle:activationContext:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = objc_allocWithZone(v4);
  v10 = &v9[OBJC_IVAR____TtC28LocalAuthenticationUIService21AngelSceneRemoteAlert_persistentIdentifier];
  *v10 = 0;
  *(v10 + 1) = 0;
  swift_unknownObjectWeakInit();
  v11 = &v9[OBJC_IVAR____TtC28LocalAuthenticationUIService21AngelSceneRemoteAlert_identifier];
  *v11 = a1;
  *(v11 + 1) = a2;
  *&v9[OBJC_IVAR____TtC28LocalAuthenticationUIService21AngelSceneRemoteAlert_activationContext] = a4;
  *&v9[OBJC_IVAR____TtC28LocalAuthenticationUIService21AngelSceneRemoteAlert_handle] = a3;
  v13.receiver = v9;
  v13.super_class = v4;
  return objc_msgSendSuper2(&v13, "init");
}

id AngelSceneRemoteAlert.init(identifier:handle:activationContext:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = &v4[OBJC_IVAR____TtC28LocalAuthenticationUIService21AngelSceneRemoteAlert_persistentIdentifier];
  *v9 = 0;
  *(v9 + 1) = 0;
  swift_unknownObjectWeakInit();
  v10 = &v4[OBJC_IVAR____TtC28LocalAuthenticationUIService21AngelSceneRemoteAlert_identifier];
  *v10 = a1;
  *(v10 + 1) = a2;
  *&v4[OBJC_IVAR____TtC28LocalAuthenticationUIService21AngelSceneRemoteAlert_activationContext] = a4;
  *&v4[OBJC_IVAR____TtC28LocalAuthenticationUIService21AngelSceneRemoteAlert_handle] = a3;
  v12.receiver = v4;
  v12.super_class = type metadata accessor for AngelSceneRemoteAlert();
  return objc_msgSendSuper2(&v12, "init");
}

Swift::Void __swiftcall AngelSceneRemoteAlert.activate()()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *&v1[OBJC_IVAR____TtC28LocalAuthenticationUIService21AngelSceneRemoteAlert_handle];
  [v6 registerObserver:v1];
  [v6 activateWithContext:*&v1[OBJC_IVAR____TtC28LocalAuthenticationUIService21AngelSceneRemoteAlert_activationContext]];
  static LACLog.ui.getter();
  v7 = v1;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412546;
    *(v10 + 4) = v7;
    *(v10 + 12) = 2112;
    *(v10 + 14) = v6;
    *v11 = v7;
    v11[1] = v6;
    v12 = v7;
    v13 = v6;
    _os_log_impl(&_mh_execute_header, v8, v9, "%@ did request activation for scene handle %@", v10, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    swift_arrayDestroy();
  }

  (*(v3 + 8))(v5, v2);
}

Swift::Void __swiftcall AngelSceneRemoteAlert.deactivate()()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *&v0[OBJC_IVAR____TtC28LocalAuthenticationUIService21AngelSceneRemoteAlert_handle];
  [v5 invalidate];
  static LACLog.ui.getter();
  v6 = v0;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412546;
    *(v9 + 4) = v6;
    *(v9 + 12) = 2112;
    *(v9 + 14) = v5;
    *v10 = v6;
    v10[1] = v5;
    v11 = v6;
    v12 = v5;
    _os_log_impl(&_mh_execute_header, v7, v8, "%@ did request invalidation for scene handle %@", v9, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    swift_arrayDestroy();
  }

  (*(v2 + 8))(v4, v1);
}

id SecureUIControllerDynamicIsland.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AngelSceneRemoteAlert.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AngelSceneRemoteAlert();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

void *specialized AngelSceneRemoteAlert.remoteAlertHandleDidActivate(_:)()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  static LACLog.ui.getter();
  v5 = v0;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412546;
    *(v8 + 4) = v5;
    *v9 = v5;
    *(v8 + 12) = 2112;
    v10 = *(v5 + OBJC_IVAR____TtC28LocalAuthenticationUIService21AngelSceneRemoteAlert_handle);
    *(v8 + 14) = v10;
    v9[1] = v10;
    v11 = v5;
    v12 = v10;
    _os_log_impl(&_mh_execute_header, v6, v7, "%@ did activate scene handle %@", v8, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    swift_arrayDestroy();
  }

  v13 = (*(v2 + 8))(v4, v1);
  result = (*((swift_isaMask & *v5) + 0x90))(v13);
  if (result)
  {
    [result angelSceneDidActivate:v5];
    return swift_unknownObjectRelease();
  }

  return result;
}

void *specialized AngelSceneRemoteAlert.remoteAlertHandleDidDeactivate(_:)()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  static LACLog.ui.getter();
  v5 = v0;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412546;
    *(v8 + 4) = v5;
    *v9 = v5;
    *(v8 + 12) = 2112;
    v10 = *(v5 + OBJC_IVAR____TtC28LocalAuthenticationUIService21AngelSceneRemoteAlert_handle);
    *(v8 + 14) = v10;
    v9[1] = v10;
    v11 = v5;
    v12 = v10;
    _os_log_impl(&_mh_execute_header, v6, v7, "%@ did deactivate scene handle %@", v8, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    swift_arrayDestroy();
  }

  v13 = (*(v2 + 8))(v4, v1);
  result = (*((swift_isaMask & *v5) + 0x90))(v13);
  if (result)
  {
    [result angelSceneDidDeactivate:v5 error:0];
    return swift_unknownObjectRelease();
  }

  return result;
}

void *specialized AngelSceneRemoteAlert.remoteAlertHandle(_:didInvalidateWithError:)(void *a1)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  static LACLog.ui.getter();
  v7 = v1;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412546;
    *(v10 + 4) = v7;
    *v11 = v7;
    *(v10 + 12) = 2112;
    v12 = *(v7 + OBJC_IVAR____TtC28LocalAuthenticationUIService21AngelSceneRemoteAlert_handle);
    *(v10 + 14) = v12;
    v11[1] = v12;
    v13 = v7;
    v14 = v12;
    _os_log_impl(&_mh_execute_header, v8, v9, "%@ did invalidate scene handle %@", v10, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    swift_arrayDestroy();
  }

  v15 = (*(v4 + 8))(v6, v3);
  result = (*((swift_isaMask & *v7) + 0x90))(v15);
  if (result)
  {
    v17 = result;
    if (a1)
    {
      a1 = _convertErrorToNSError(_:)();
    }

    [v17 angelSceneDidDeactivate:v7 error:a1];

    return swift_unknownObjectRelease();
  }

  return result;
}

id AngelSceneProviderRemoteAlert.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AngelSceneProviderRemoteAlert();
  return objc_msgSendSuper2(&v2, "init");
}

id AngelSceneProviderRemoteAlert.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for AngelSceneProviderRemoteAlert();
  return objc_msgSendSuper2(&v4, "dealloc");
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v4);
}

{
  v2 = static Hasher._hash(seed:_:)();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v2);
}

Swift::Int specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys11AnyHashableVypGMd, &_ss18_DictionaryStorageCys11AnyHashableVypGMR);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = v19 | (v8 << 6);
      v23 = *(v5 + 48) + 40 * v22;
      if (v4)
      {
        v24 = *v23;
        v25 = *(v23 + 16);
        v38 = *(v23 + 32);
        v36 = v24;
        v37 = v25;
        outlined init with take of Any((*(v5 + 56) + 32 * v22), v35);
      }

      else
      {
        outlined init with copy of AnyHashable(v23, &v36);
        outlined init with copy of Any(*(v5 + 56) + 32 * v22, v35);
      }

      result = AnyHashable._rawHashValue(seed:)(*(v7 + 40));
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 40 * v15;
      v17 = v36;
      v18 = v37;
      *(v16 + 32) = v38;
      *v16 = v17;
      *(v16 + 16) = v18;
      result = outlined init with take of Any(v35, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if (v4)
    {
      v33 = 1 << *(v5 + 32);
      if (v33 >= 64)
      {
        bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v33;
      }

      *(v5 + 16) = 0;
    }

    v3 = v34;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCyS2SGMd, &_ss18_DictionaryStorageCyS2SGMR);
  v37 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = 16 * (v19 | (v8 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = (*(v5 + 56) + v22);
      v27 = v26[1];
      v38 = *v26;
      if ((v37 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = (*(v7 + 56) + v16);
      *v18 = v38;
      v18[1] = v27;
      ++*(v7 + 16);
      v5 = v36;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v2;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

{
  v3 = v2;
  v4 = a2;
  v45 = type metadata accessor for Logger();
  v5 = *(v45 - 8);
  __chkstk_darwin(v45);
  v44 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS2os6LoggerVGMd, &_ss18_DictionaryStorageCySS2os6LoggerVGMR);
  v42 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v9 = result;
  if (*(v7 + 16))
  {
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v38 = v2;
    v39 = (v5 + 16);
    v40 = v7;
    v41 = v5;
    v43 = (v5 + 32);
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(v7 + 56);
      v24 = (*(v7 + 48) + 16 * v22);
      v26 = *v24;
      v25 = v24[1];
      v27 = *(v41 + 72);
      v28 = v23 + v27 * v22;
      if (v42)
      {
        (*v43)(v44, v28, v45);
      }

      else
      {
        (*v39)(v44, v28, v45);
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v29 = -1 << *(v9 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v16 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v16 + 8 * v31);
          if (v35 != -1)
          {
            v17 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v30) & ~*(v16 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v26;
      v18[1] = v25;
      result = (*v43)(*(v9 + 56) + v27 * v17, v44, v45);
      ++*(v9 + 16);
      v7 = v40;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v42 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_34;
    }

    v36 = 1 << *(v7 + 32);
    v3 = v38;
    if (v36 >= 64)
    {
      bzero(v11, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v36;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

_OWORD *specialized _NativeDictionary.setValue(_:forKey:isUnique:)(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      specialized _NativeDictionary.copy()();
      goto LABEL_7;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v13, a3 & 1);
    v19 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v14 & 1) == (v20 & 1))
    {
      v10 = v19;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

LABEL_13:
      outlined init with copy of AnyHashable(a2, v21);
      return specialized _NativeDictionary._insert(at:key:value:)(v10, v21, a1, v16);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if ((v14 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v17 = (v16[7] + 32 * v10);
  __swift_destroy_boxed_opaque_existential_0(v17);

  return outlined init with take of Any(a1, v17);
}

_OWORD *specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = outlined init with take of Any(a3, (a4[7] + 32 * a1));
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      outlined init with copy of AnyHashable(*(v2 + 48) + 40 * v4, v8);
      v6 = static AnyHashable.== infix(_:_:)();
      outlined destroy of AnyHashable(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

void *specialized _NativeDictionary.copy()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys11AnyHashableVypGMd, &_ss18_DictionaryStorageCys11AnyHashableVypGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 40 * v17;
        outlined init with copy of AnyHashable(*(v2 + 48) + 40 * v17, v23);
        v17 *= 32;
        outlined init with copy of Any(*(v2 + 56) + v17, v22);
        v19 = *(v4 + 48) + v18;
        v20 = v23[0];
        v21 = v23[1];
        *(v19 + 32) = v24;
        *v19 = v20;
        *(v19 + 16) = v21;
        result = outlined init with take of Any(v22, (*(v4 + 56) + v17));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCyS2SGMd, &_ss18_DictionaryStorageCyS2SGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

id specialized AngelSceneProviderRemoteAlert.makeRemoteAlertScene(for:)(void *a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  UUID.init()();
  v6 = UUID.uuidString.getter();
  v37 = v7;
  v38 = v6;
  (*(v3 + 8))(v5, v2);
  v8 = String._bridgeToObjectiveC()();
  v9 = [objc_opt_self() identityForAngelJobLabel:v8];

  [a1 identifier];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = objc_allocWithZone(SBSRemoteAlertDefinition);
  v11 = v9;
  v12 = String._bridgeToObjectiveC()();

  v13 = [v10 initWithSceneProvidingProcess:v11 configurationIdentifier:v12];

  [v13 setSupportsMultipleDisplayPresentations:1];
  v14 = 0;
  if ([a1 identifier] == 4)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = String._bridgeToObjectiveC()();
  }

  [v13 setSecondaryConfigurationIdentifier:v14];

  v15 = [objc_allocWithZone(LACUserInterfaceRequestCoder) init];
  v16 = [v15 encode:a1];

  v17 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  *&v41 = static LACUISceneUserInfoKey.identifier.getter();
  *(&v41 + 1) = v18;
  AnyHashable.init<A>(_:)();
  v42 = &type metadata for String;
  *&v41 = v38;
  *(&v41 + 1) = v37;
  outlined init with take of Any(&v41, v40);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v39 = v17;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v40, v43, isUniquelyReferenced_nonNull_native);
  outlined destroy of AnyHashable(v43);
  v20 = v39;
  *&v41 = static LACUISceneUserInfoKey.rootControllerName.getter();
  *(&v41 + 1) = v21;
  AnyHashable.init<A>(_:)();
  type metadata accessor for SceneControllerRemoteAlert();
  lazy protocol witness table accessor for type SceneControllerRemoteAlert and conformance SceneControllerRemoteAlert();
  v22 = static LACUISceneControlling.globalSceneIdentifier.getter();
  v42 = &type metadata for String;
  *&v41 = v22;
  *(&v41 + 1) = v23;
  outlined init with take of Any(&v41, v40);
  v24 = swift_isUniquelyReferenced_nonNull_native();
  v39 = v20;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v40, v43, v24);
  outlined destroy of AnyHashable(v43);
  v25 = [objc_allocWithZone(SBSRemoteAlertConfigurationContext) init];
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v25 setUserInfo:isa];

  v27 = [objc_opt_self() newHandleWithDefinition:v13 configurationContext:v25];
  v28 = [a1 clientAuditTokenData];
  if (v28)
  {
    v29 = v28;
    v30 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v32 = v31;

    v33.super.isa = Data._bridgeToObjectiveC()().super.isa;
    outlined consume of Data._Representation(v30, v32);
  }

  else
  {
    v33.super.isa = 0;
  }

  v34 = [objc_opt_self() activationContextWithAuditToken:v33.super.isa isAuditTokenApplicationIdentity:objc_msgSend(a1 isForSiri:{"isAuditTokenApplicationIdentity"), objc_msgSend(a1, "isForSiri")}];

  type metadata accessor for AngelSceneRemoteAlert();
  v35 = AngelSceneRemoteAlert.__allocating_init(identifier:handle:activationContext:)(v38, v37, v27, v34);

  return v35;
}

_OWORD *outlined init with take of Any(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t lazy protocol witness table accessor for type SceneControllerRemoteAlert and conformance SceneControllerRemoteAlert()
{
  result = lazy protocol witness table cache variable for type SceneControllerRemoteAlert and conformance SceneControllerRemoteAlert;
  if (!lazy protocol witness table cache variable for type SceneControllerRemoteAlert and conformance SceneControllerRemoteAlert)
  {
    type metadata accessor for SceneControllerRemoteAlert();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SceneControllerRemoteAlert and conformance SceneControllerRemoteAlert);
  }

  return result;
}

uint64_t outlined consume of Data._Representation(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t __swift_destroy_boxed_opaque_existential_0(void *a1)
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

uint64_t outlined init with copy of Any(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

id one-time initialization function for shared()
{
  result = [objc_allocWithZone(type metadata accessor for AppContainer()) init];
  static AppContainer.shared = result;
  return result;
}

{
  result = [objc_allocWithZone(type metadata accessor for TransitionViewModel(0)) init];
  static TransitionViewModel.shared = result;
  return result;
}

{
  result = [objc_allocWithZone(type metadata accessor for TerminationService()) init];
  static TerminationService.shared = result;
  return result;
}

uint64_t *AppContainer.shared.unsafeMutableAddressor()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  return &static AppContainer.shared;
}

id static AppContainer.shared.getter()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v1 = static AppContainer.shared;

  return v1;
}

double variable initialization expression of AppContainer.angelConnectionHandler@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t AppContainer.angelConnectionHandler.getter@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *a1;
  swift_beginAccess();
  return outlined init with copy of LACUIAngelConnectionHandling?(v4 + v8, a4, a2, a3);
}

uint64_t outlined init with copy of LACUIAngelConnectionHandling?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t AppContainer.angelConnectionHandler.setter(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v8 = *a2;
  swift_beginAccess();
  outlined assign with take of LACUIAngelConnectionHandling?(a1, v4 + v8, a3, a4);
  return swift_endAccess();
}

uint64_t outlined assign with take of LACUIAngelConnectionHandling?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

id @objc AppContainer.angelPresenter.getter(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  swift_beginAccess();
  v3 = swift_unknownObjectRetain();

  return v3;
}

uint64_t @objc AppContainer.angelPresenter.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v6 = *a4;
  swift_beginAccess();
  *(a1 + v6) = a3;
  swift_unknownObjectRetain();
  return swift_unknownObjectRelease();
}

uint64_t AppContainer.angelPresenter.setter(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  *(v2 + v4) = a1;
  return swift_unknownObjectRelease();
}

uint64_t AppContainer.angelManager.setter(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = (v3 + *a3);
  swift_beginAccess();
  *v6 = a1;
  v6[1] = a2;
  return swift_unknownObjectRelease();
}

Swift::Void __swiftcall AppContainer.assemble()()
{
  v1 = v0;
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 usesFrontBoardServicesForRemoteUI];

  if (v3)
  {
    type metadata accessor for SceneControllerFrontBoard();
    v4 = lazy protocol witness table accessor for type SceneControllerRemoteAlert and conformance SceneControllerRemoteAlert(&lazy protocol witness table cache variable for type SceneControllerFrontBoard and conformance SceneControllerFrontBoard, type metadata accessor for SceneControllerFrontBoard, &protocol conformance descriptor for SceneControllerFrontBoard);
    v5 = static LACUISceneControlling.globalSceneIdentifier.getter();
    v7 = SceneControllerRemoteAlert.__allocating_init(globalSceneIdentifier:)(v5, v6);
    v8 = (v1 + OBJC_IVAR____TtC28LocalAuthenticationUIService12AppContainer_sceneController);
    swift_beginAccess();
    *v8 = v7;
    v8[1] = v4;
    swift_unknownObjectRelease();
    type metadata accessor for AngelSceneProviderFrontBoard();
  }

  else
  {
    type metadata accessor for SceneControllerRemoteAlert();
    v9 = lazy protocol witness table accessor for type SceneControllerRemoteAlert and conformance SceneControllerRemoteAlert(&lazy protocol witness table cache variable for type SceneControllerRemoteAlert and conformance SceneControllerRemoteAlert, type metadata accessor for SceneControllerRemoteAlert, &protocol conformance descriptor for SceneControllerRemoteAlert);
    v10 = static LACUISceneControlling.globalSceneIdentifier.getter();
    v12 = SceneControllerRemoteAlert.__allocating_init(globalSceneIdentifier:)(v10, v11);
    v13 = (v1 + OBJC_IVAR____TtC28LocalAuthenticationUIService12AppContainer_sceneController);
    swift_beginAccess();
    *v13 = v12;
    v13[1] = v9;
    swift_unknownObjectRelease();
    type metadata accessor for AngelSceneProviderRemoteAlert();
  }

  v14 = SecureUIControllerDynamicIsland.__allocating_init()();
  v15 = OBJC_IVAR____TtC28LocalAuthenticationUIService12AppContainer_angelSceneProvider;
  swift_beginAccess();
  *(v1 + v15) = v14;
  swift_unknownObjectRelease();
  type metadata accessor for LACUIAngelManager();
  swift_allocObject();
  v16 = LACUIAngelManager.init()();
  v17 = (v1 + OBJC_IVAR____TtC28LocalAuthenticationUIService12AppContainer_angelManager);
  swift_beginAccess();
  *v17 = v16;
  v17[1] = &protocol witness table for LACUIAngelManager;
  swift_unknownObjectRelease();
  v18 = objc_allocWithZone(type metadata accessor for LACUIAngelConnectionListenerProvider());
  LACUIAngelConnectionListenerProvider.init(domainName:protocolServiceName:)();
  if (!*v17)
  {
    __break(1u);
    goto LABEL_11;
  }

  v19 = type metadata accessor for LACUIAngelConnectionListener();
  objc_allocWithZone(v19);
  swift_unknownObjectRetain();
  v26 = v19;
  v27 = &protocol witness table for LACUIAngelConnectionListener;
  v25[0] = LACUIAngelConnectionListener.init(listenerProvider:manager:)();
  v20 = OBJC_IVAR____TtC28LocalAuthenticationUIService12AppContainer_angelConnectionListener;
  swift_beginAccess();
  outlined assign with take of LACUIAngelConnectionHandling?(v25, v1 + v20, &_s25LocalAuthenticationCoreUI29LACUIAngelConnectionListening_pSgMd, &_s25LocalAuthenticationCoreUI29LACUIAngelConnectionListening_pSgMR);
  swift_endAccess();
  if (!*v17)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v21 = (v1 + OBJC_IVAR____TtC28LocalAuthenticationUIService12AppContainer_sceneController);
  swift_beginAccess();
  if (!*v21)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v22 = OBJC_IVAR____TtC28LocalAuthenticationUIService12AppContainer_angelSceneProvider;
  swift_beginAccess();
  if (!*(v1 + v22))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  objc_allocWithZone(type metadata accessor for LACUIAngelPresenter());
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v23 = LACUIAngelPresenter.init(manager:sceneController:sceneProvider:)();
  v24 = OBJC_IVAR____TtC28LocalAuthenticationUIService12AppContainer_angelPresenter;
  swift_beginAccess();
  *(v1 + v24) = v23;
  swift_unknownObjectRelease();
  outlined init with copy of LACUIAngelConnectionHandling?(v1 + v20, v25, &_s25LocalAuthenticationCoreUI29LACUIAngelConnectionListening_pSgMd, &_s25LocalAuthenticationCoreUI29LACUIAngelConnectionListening_pSgMR);
  if (v26)
  {
    __swift_project_boxed_opaque_existential_1(v25, v26);
    dispatch thunk of LACUIAngelConnectionListening.activate()();
    __swift_destroy_boxed_opaque_existential_0(v25);
    return;
  }

LABEL_14:
  __break(1u);
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type SceneControllerRemoteAlert and conformance SceneControllerRemoteAlert(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id AppContainer.init()()
{
  ObjectType = swift_getObjectType();
  v2 = &v0[OBJC_IVAR____TtC28LocalAuthenticationUIService12AppContainer_angelConnectionHandler];
  *v2 = 0u;
  *(v2 + 1) = 0u;
  *(v2 + 4) = 0;
  v3 = &v0[OBJC_IVAR____TtC28LocalAuthenticationUIService12AppContainer_angelConnectionListener];
  *v3 = 0u;
  *(v3 + 1) = 0u;
  *(v3 + 4) = 0;
  v4 = &v0[OBJC_IVAR____TtC28LocalAuthenticationUIService12AppContainer_angelManager];
  *v4 = 0;
  *(v4 + 1) = 0;
  *&v0[OBJC_IVAR____TtC28LocalAuthenticationUIService12AppContainer_angelPresenter] = 0;
  *&v0[OBJC_IVAR____TtC28LocalAuthenticationUIService12AppContainer_angelSceneProvider] = 0;
  v5 = &v0[OBJC_IVAR____TtC28LocalAuthenticationUIService12AppContainer_sceneController];
  *v5 = 0;
  *(v5 + 1) = 0;
  v7.receiver = v0;
  v7.super_class = ObjectType;
  return objc_msgSendSuper2(&v7, "init");
}

id PasscodeEmbeddedParentViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t outlined destroy of LACUIAngelConnectionHandling?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

id variable initialization expression of PasscodeSheetViewController.context()
{
  v0 = objc_allocWithZone(LAContext);

  return [v0 init];
}

Swift::Void __swiftcall PasscodeSheetViewController.loadView()()
{
  v1 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v0 setView:v1];

  if ([objc_opt_self() isSharedIPad])
  {
    v2 = [objc_allocWithZone(LACLocalBackoffCounter) init];
    [v0 setBackoffCounter:v2];
  }
}

Swift::Void __swiftcall PasscodeSheetViewController.viewWillAppear(_:)(Swift::Bool a1)
{
  v5.receiver = v1;
  v5.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v5, "viewWillAppear:", a1);
  closure #1 in PasscodeSheetViewController.viewWillAppear(_:)(v1);
  v3 = *&v1[OBJC_IVAR____TtC28LocalAuthenticationUIService27PasscodeSheetViewController_authorizationViewManager];
  *&v1[OBJC_IVAR____TtC28LocalAuthenticationUIService27PasscodeSheetViewController_authorizationViewManager] = v4;
}

void closure #1 in PasscodeSheetViewController.viewWillAppear(_:)(char *a1)
{
  v2 = &selRef_stopWithReply_;
  v3 = [a1 internalInfo];
  v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  strcpy(v94, "Options");
  v94[1] = 0xE700000000000000;
  AnyHashable.init<A>(_:)();
  if (*(v4 + 16) && (v5 = specialized __RawDictionaryStorage.find<A>(_:)(v95), (v6 & 1) != 0))
  {
    outlined init with copy of Any(*(v4 + 56) + 32 * v5, &v96);
    outlined destroy of AnyHashable(v95);

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys11AnyHashableVypGMd, &_sSDys11AnyHashableVypGMR);
    if (swift_dynamicCast())
    {
      v7 = v94[0];
      goto LABEL_7;
    }
  }

  else
  {

    outlined destroy of AnyHashable(v95);
  }

  v7 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_ypTt0g5Tf4g_n(&_swiftEmptyArrayStorage);
LABEL_7:
  v8 = [*&a1[OBJC_IVAR____TtC28LocalAuthenticationUIService27PasscodeSheetViewController_context] externalizedContext];
  if (!v8)
  {
    __break(1u);
    goto LABEL_90;
  }

  v9 = v8;
  v93 = v7;
  v10 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  v13 = objc_allocWithZone(LACUIAuthenticatorServiceConfiguration);
  isa = Data._bridgeToObjectiveC()().super.isa;
  v15 = [v13 initWithContext:isa requirement:2];

  outlined consume of Data._Representation(v10, v12);
  v16 = [a1 callerName];
  if (!v16)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = String._bridgeToObjectiveC()();
  }

  [v15 setTitle:v16];

  swift_getObjectType();
  v17 = [a1 options];
  if (!v17)
  {
    goto LABEL_17;
  }

  v18 = v17;
  v19 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v94[0] = LACPolicyOptionPasscodeTitle;
  AnyHashable.init<A>(_:)();
  if (!*(v19 + 16) || (v20 = specialized __RawDictionaryStorage.find<A>(_:)(v95), (v21 & 1) == 0))
  {

    outlined destroy of AnyHashable(v95);
LABEL_17:
    v96 = 0u;
    v97 = 0u;
    goto LABEL_18;
  }

  outlined init with copy of Any(*(v19 + 56) + 32 * v20, &v96);
  outlined destroy of AnyHashable(v95);

  if (!*(&v97 + 1))
  {
LABEL_18:
    outlined destroy of LACUIAngelConnectionHandling?(&v96, &_sypSgMd, &_sypSgMR);
    goto LABEL_19;
  }

  if (swift_dynamicCast())
  {
    goto LABEL_35;
  }

LABEL_19:
  if (([objc_opt_self() isApplePayPolicy:{objc_msgSend(a1, "policy")}] & 1) == 0)
  {
    v22 = [a1 options];
    if (v22)
    {
      v23 = v22;
      v24 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      v94[0] = LACPolicyOptionCheckApplePayEnabled;
      AnyHashable.init<A>(_:)();
      if (*(v24 + 16))
      {
        v25 = specialized __RawDictionaryStorage.find<A>(_:)(v95);
        if (v26)
        {
          outlined init with copy of Any(*(v24 + 56) + 32 * v25, &v96);
          outlined destroy of AnyHashable(v95);

          if (*(&v97 + 1))
          {
            if (swift_dynamicCast() & 1) != 0 && (v95[0])
            {
              goto LABEL_20;
            }

            goto LABEL_31;
          }

LABEL_30:
          outlined destroy of LACUIAngelConnectionHandling?(&v96, &_sypSgMd, &_sypSgMR);
LABEL_31:
          v27 = [a1 policy];
          if (v27 == LACPolicySoftwareUpdate)
          {
            static LocalizedStrings.enterPasscodeUpdate.getter();
            goto LABEL_35;
          }

          ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
          v29 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
          v30 = objc_opt_self();
          v31 = String._bridgeToObjectiveC()();
          v32 = [v30 modelSpecificLocalizedStringKeyForKey:v31];

          if (v32)
          {
            v33 = String._bridgeToObjectiveC()();
            v34 = [v29 localizedStringForKey:v32 value:0 table:v33];

            static String._unconditionallyBridgeFromObjectiveC(_:)();
            goto LABEL_35;
          }

LABEL_90:
          __break(1u);
          return;
        }
      }

      outlined destroy of AnyHashable(v95);
    }

    v96 = 0u;
    v97 = 0u;
    goto LABEL_30;
  }

LABEL_20:
  static LocalizedStrings.pay.getter();
LABEL_35:
  v35 = String._bridgeToObjectiveC()();

  [v15 setSubtitle:v35];

  v36 = [a1 internalInfo];
  v37 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  strcpy(v94, "FallbackReason");
  HIBYTE(v94[1]) = -18;
  AnyHashable.init<A>(_:)();
  if (!*(v37 + 16) || (v38 = specialized __RawDictionaryStorage.find<A>(_:)(v95), (v39 & 1) == 0))
  {

    outlined destroy of AnyHashable(v95);
    goto LABEL_46;
  }

  outlined init with copy of Any(*(v37 + 56) + 32 * v38, &v96);
  outlined destroy of AnyHashable(v95);

  type metadata accessor for UIDevice(0, &lazy cache variable for type metadata for NSError, NSError_ptr);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_46;
  }

  v40 = objc_opt_self();
  v41 = v94[0];
  v42 = _convertErrorToNSError(_:)();

  LODWORD(v40) = [v40 error:v42 hasCode:LACErrorCodeSystemCancel];
  if (!v40)
  {
    goto LABEL_82;
  }

  v43 = [v41 userInfo];
  v44 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v44 + 16))
  {

    goto LABEL_84;
  }

  v47 = specialized __RawDictionaryStorage.find<A>(_:)(v45, v46);
  v49 = v48;

  if ((v49 & 1) == 0)
  {
LABEL_84:

    goto LABEL_85;
  }

  outlined init with copy of Any(*(v44 + 56) + 32 * v47, v95);

  type metadata accessor for LAErrorSubcode();
  if (!swift_dynamicCast())
  {
LABEL_85:

    v2 = &selRef_stopWithReply_;
LABEL_46:
    v51 = [a1 options];
    if (v51)
    {
      v52 = v51;
      v53 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      v94[0] = LACPolicyOptionPasswordAuthenticationReason;
      AnyHashable.init<A>(_:)();
      if (*(v53 + 16))
      {
        v54 = specialized __RawDictionaryStorage.find<A>(_:)(v95);
        if (v55)
        {
          outlined init with copy of Any(*(v53 + 56) + 32 * v54, &v96);
          outlined destroy of AnyHashable(v95);

          if (*(&v97 + 1))
          {
            if ((swift_dynamicCast() & 1) == 0 || !v95[1])
            {
              goto LABEL_56;
            }

            goto LABEL_52;
          }

LABEL_55:
          outlined destroy of LACUIAngelConnectionHandling?(&v96, &_sypSgMd, &_sypSgMR);
LABEL_56:
          v56 = 0;
          goto LABEL_57;
        }
      }

      outlined destroy of AnyHashable(v95);
    }

    v96 = 0u;
    v97 = 0u;
    goto LABEL_55;
  }

  v2 = &selRef_stopWithReply_;
  if (v96 != 13)
  {
    if (v96 == 14)
    {
      static LocalizedStrings.Pearl.hwIssueLowTemprerature.getter();
      goto LABEL_87;
    }

LABEL_82:

    goto LABEL_46;
  }

  static LocalizedStrings.Pearl.hwIssueHighTemprerature.getter();
LABEL_87:
  v91 = v50;

  if (!v91)
  {
    goto LABEL_56;
  }

LABEL_52:
  v56 = String._bridgeToObjectiveC()();

LABEL_57:
  [v15 setPrompt:v56];

  v57 = String._bridgeToObjectiveC()();
  [v15 setPasswordFieldPlaceholder:v57];

  static LocalizedStrings.cancel.getter();
  v58 = String._bridgeToObjectiveC()();

  [v15 setCancelButtonTitle:v58];

  v59 = [a1 v2[432]];
  v60 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  strcpy(v94, "CallerName");
  BYTE3(v94[1]) = 0;
  HIDWORD(v94[1]) = -369098752;
  AnyHashable.init<A>(_:)();
  if (*(v60 + 16) && (v61 = specialized __RawDictionaryStorage.find<A>(_:)(v95), (v62 & 1) != 0))
  {
    outlined init with copy of Any(*(v60 + 56) + 32 * v61, &v96);
    outlined destroy of AnyHashable(v95);

    if (swift_dynamicCast())
    {
      v63 = String._bridgeToObjectiveC()();

      goto LABEL_63;
    }
  }

  else
  {

    outlined destroy of AnyHashable(v95);
  }

  v63 = 0;
LABEL_63:
  [v15 setBundleIdentifier:v63];

  [v15 setStyle:0];
  v64 = [a1 v2[432]];
  static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v65 = objc_allocWithZone(LACInternalInfoParser);
  v66 = Dictionary._bridgeToObjectiveC()().super.isa;

  v67 = [v65 initWithInternalInfo:v66];

  v92 = [v67 callerAuditToken];
  v68 = [a1 cachedExternalizedContext];
  v69 = [a1 backoffCounter];
  if (!v69)
  {
    v69 = [objc_allocWithZone(LACLocalBackoffCounter) init];
  }

  v70 = [a1 options];
  if (!v70)
  {
    goto LABEL_72;
  }

  v71 = v70;
  v72 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v94[0] = LACPolicyOptionMaxPasscodeFailures;
  AnyHashable.init<A>(_:)();
  if (!*(v72 + 16) || (v73 = specialized __RawDictionaryStorage.find<A>(_:)(v95), (v74 & 1) == 0))
  {

    outlined destroy of AnyHashable(v95);
LABEL_72:
    v96 = 0u;
    v97 = 0u;
    goto LABEL_73;
  }

  outlined init with copy of Any(*(v72 + 56) + 32 * v73, &v96);
  outlined destroy of AnyHashable(v95);

  if (!*(&v97 + 1))
  {
LABEL_73:
    outlined destroy of LACUIAngelConnectionHandling?(&v96, &_sypSgMd, &_sypSgMR);
    goto LABEL_74;
  }

  type metadata accessor for UIDevice(0, &lazy cache variable for type metadata for NSNumber, NSNumber_ptr);
  if (swift_dynamicCast())
  {
    v75 = v95[0];
    v76 = [v95[0] unsignedIntegerValue];

    v77 = 0;
    goto LABEL_75;
  }

LABEL_74:
  v76 = 0;
  v77 = 1;
LABEL_75:
  [a1 policy];
  LACPolicy.policy.getter();
  v79 = v78;
  v80 = [a1 internalInfo];
  v81 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  *&v96 = 0x644972657355;
  *(&v96 + 1) = 0xE600000000000000;
  AnyHashable.init<A>(_:)();
  if (*(v81 + 16) && (v82 = specialized __RawDictionaryStorage.find<A>(_:)(v95), (v83 & 1) != 0))
  {
    outlined init with copy of Any(*(v81 + 56) + 32 * v82, &v96);
    outlined destroy of AnyHashable(v95);

    type metadata accessor for UIDevice(0, &lazy cache variable for type metadata for NSNumber, NSNumber_ptr);
    if (swift_dynamicCast())
    {
      v84 = v94[0];
    }

    else
    {
      v84 = 0;
    }
  }

  else
  {

    outlined destroy of AnyHashable(v95);
    v84 = 0;
  }

  v85 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v86 = v15;
  AuthorizationViewManager.init(configuration:auditToken:cachedContext:backoffCounter:failureLimit:policy:userId:options:completion:)(v86, v92, v68, v69, v76, v77, v79, v84, v93, partial apply for closure #1 in closure #1 in PasscodeSheetViewController.viewWillAppear(_:), v85);
  v95[0] = v87;
  v88 = swift_unknownObjectRetain();
  AuthorizationViewManager.delegate.setter(v88);
  v89 = v95[0];
  canShowWhile = RatchetCoolOffContentViewController._canShowWhileLocked()();
  AuthorizationViewManager.presentAuthorizationViewInVC(_:animated:)(a1, canShowWhile);
}

void PasscodeSheetViewController.dismissChild(completionHandler:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  type metadata accessor for UIDevice(0, &lazy cache variable for type metadata for UIDevice, UIDevice_ptr);
  if (static UIDevice.isPad.getter())
  {
    v6 = swift_allocObject();
    v6[2] = v2;
    v6[3] = a1;
    v6[4] = a2;
    v16[4] = partial apply for closure #1 in PasscodeSheetViewController.dismissChild(completionHandler:);
    v16[5] = v6;
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 1107296256;
    v16[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v16[3] = &block_descriptor;
    v7 = _Block_copy(v16);
    v8 = v3;
    outlined copy of (@escaping @callee_guaranteed () -> ())?(a1, a2);

    [v8 dismissViewControllerAnimated:1 completion:v7];
    _Block_release(v7);
  }

  else
  {
    v9 = *&v2[OBJC_IVAR____TtC28LocalAuthenticationUIService27PasscodeSheetViewController_authorizationViewManager];
    if (v9)
    {
      v10 = objc_opt_self();
      v11 = LACErrorCodeSystemCancel;
      v12 = v9;
      v13 = [v10 errorWithCode:v11];
      v14 = swift_allocObject();
      v14[2] = v3;
      v14[3] = a1;
      v14[4] = a2;
      v15 = v3;
      outlined copy of (@escaping @callee_guaranteed () -> ())?(a1, a2);
      AuthorizationViewManager.dismissAuthorizationView(error:reply:)(v13, partial apply for closure #2 in PasscodeSheetViewController.dismissChild(completionHandler:), v14);
    }
  }
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable () -> ()(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t outlined copy of (@escaping @callee_guaranteed () -> ())?(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

void partial apply for closure #1 in PasscodeSheetViewController.dismissChild(completionHandler:)()
{
  v1 = *(v0 + 16);
  v2 = *&v1[OBJC_IVAR____TtC28LocalAuthenticationUIService27PasscodeSheetViewController_authorizationViewManager];
  if (v2)
  {
    v5 = v0 + 24;
    v4 = *(v0 + 24);
    v3 = *(v5 + 8);
    v6 = objc_opt_self();
    v7 = LACErrorCodeSystemCancel;
    v11 = v2;
    v8 = [v6 errorWithCode:v7];
    v9 = swift_allocObject();
    v9[2] = v1;
    v9[3] = v4;
    v9[4] = v3;
    v10 = v1;
    outlined copy of (@escaping @callee_guaranteed () -> ())?(v4, v3);
    AuthorizationViewManager.dismissAuthorizationView(error:reply:)(v8, partial apply for closure #1 in closure #1 in PasscodeSheetViewController.dismissChild(completionHandler:), v9);
  }
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id ComplementaryPasscodeViewController.__allocating_init(requestID:endpoint:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithRequestID:a1 endpoint:a2];

  return v5;
}

id PasscodeSheetViewController.init(requestID:endpoint:)(void *a1, void *a2)
{
  ObjectType = swift_getObjectType();
  v6 = OBJC_IVAR____TtC28LocalAuthenticationUIService27PasscodeSheetViewController_context;
  *&v2[v6] = [objc_allocWithZone(LAContext) init];
  *&v2[OBJC_IVAR____TtC28LocalAuthenticationUIService27PasscodeSheetViewController_authorizationViewManager] = 0;
  *&v2[OBJC_IVAR____TtC28LocalAuthenticationUIService27PasscodeSheetViewController_failures] = 0;
  v9.receiver = v2;
  v9.super_class = ObjectType;
  v7 = objc_msgSendSuper2(&v9, "initWithRequestID:endpoint:", a1, a2);

  return v7;
}

id ComplementaryPasscodeViewController.__allocating_init(requestID:endpoint:remoteAlert:)(void *a1, void *a2, uint64_t a3)
{
  v6 = [objc_allocWithZone(v3) initWithRequestID:a1 endpoint:a2 remoteAlertPresentationMode:a3];

  return v6;
}

id PasscodeSheetViewController.init(requestID:endpoint:remoteAlert:)(void *a1, void *a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v8 = OBJC_IVAR____TtC28LocalAuthenticationUIService27PasscodeSheetViewController_context;
  *&v3[v8] = [objc_allocWithZone(LAContext) init];
  *&v3[OBJC_IVAR____TtC28LocalAuthenticationUIService27PasscodeSheetViewController_authorizationViewManager] = 0;
  *&v3[OBJC_IVAR____TtC28LocalAuthenticationUIService27PasscodeSheetViewController_failures] = 0;
  v11.receiver = v3;
  v11.super_class = ObjectType;
  v9 = objc_msgSendSuper2(&v11, "initWithRequestID:endpoint:remoteAlertPresentationMode:", a1, a2, a3);

  return v9;
}

id ComplementaryPasscodeViewController.__allocating_init(internalInfo:mechanism:backoffCounter:remoteUIHost:allowsLandscape:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v10 = objc_allocWithZone(v5);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v12 = [v10 initWithInternalInfo:isa mechanism:a2 backoffCounter:a3 remoteUIHost:a4 allowsLandscape:a5 & 1];

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v12;
}

id PasscodeSheetViewController.init(internalInfo:mechanism:backoffCounter:remoteUIHost:allowsLandscape:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  ObjectType = swift_getObjectType();
  v12 = OBJC_IVAR____TtC28LocalAuthenticationUIService27PasscodeSheetViewController_context;
  *&v6[v12] = [objc_allocWithZone(LAContext) init];
  *&v6[OBJC_IVAR____TtC28LocalAuthenticationUIService27PasscodeSheetViewController_authorizationViewManager] = 0;
  *&v6[OBJC_IVAR____TtC28LocalAuthenticationUIService27PasscodeSheetViewController_failures] = 0;
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v16.receiver = v6;
  v16.super_class = ObjectType;
  v14 = objc_msgSendSuper2(&v16, "initWithInternalInfo:mechanism:backoffCounter:remoteUIHost:allowsLandscape:", isa, a2, a3, a4, a5 & 1);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v14;
}

id PasscodeEmbeddedParentViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = String._bridgeToObjectiveC()();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id PasscodeSheetViewController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  ObjectType = swift_getObjectType();
  v7 = OBJC_IVAR____TtC28LocalAuthenticationUIService27PasscodeSheetViewController_context;
  *&v3[v7] = [objc_allocWithZone(LAContext) init];
  *&v3[OBJC_IVAR____TtC28LocalAuthenticationUIService27PasscodeSheetViewController_authorizationViewManager] = 0;
  *&v3[OBJC_IVAR____TtC28LocalAuthenticationUIService27PasscodeSheetViewController_failures] = 0;
  if (a2)
  {
    v8 = String._bridgeToObjectiveC()();
  }

  else
  {
    v8 = 0;
  }

  v11.receiver = v3;
  v11.super_class = ObjectType;
  v9 = objc_msgSendSuper2(&v11, "initWithNibName:bundle:", v8, a3);

  return v9;
}

id PasscodeEmbeddedParentViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder:a1];

  return v3;
}

id PasscodeSheetViewController.init(coder:)(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtC28LocalAuthenticationUIService27PasscodeSheetViewController_context;
  *&v1[v4] = [objc_allocWithZone(LAContext) init];
  *&v1[OBJC_IVAR____TtC28LocalAuthenticationUIService27PasscodeSheetViewController_authorizationViewManager] = 0;
  *&v1[OBJC_IVAR____TtC28LocalAuthenticationUIService27PasscodeSheetViewController_failures] = 0;
  v7.receiver = v1;
  v7.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v7, "initWithCoder:", a1);

  if (v5)
  {
  }

  return v5;
}

id ComplementaryPasscodeViewController.__allocating_init(internalInfo:parent:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v6 = [v4 initWithInternalInfo:isa parent:_bridgeAnythingToObjectiveC<A>(_:)()];
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_0(a2);
  return v6;
}

id PasscodeSheetViewController.init(internalInfo:parent:)(uint64_t a1, void *a2)
{
  ObjectType = swift_getObjectType();
  v5 = OBJC_IVAR____TtC28LocalAuthenticationUIService27PasscodeSheetViewController_context;
  *&v2[v5] = [objc_allocWithZone(LAContext) init];
  *&v2[OBJC_IVAR____TtC28LocalAuthenticationUIService27PasscodeSheetViewController_authorizationViewManager] = 0;
  *&v2[OBJC_IVAR____TtC28LocalAuthenticationUIService27PasscodeSheetViewController_failures] = 0;
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v7 = _bridgeAnythingToObjectiveC<A>(_:)();
  v10.receiver = v2;
  v10.super_class = ObjectType;
  v8 = objc_msgSendSuper2(&v10, "initWithInternalInfo:parent:", isa, v7);

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(a2);
  return v8;
}

Swift::Void __swiftcall ComplementaryPasscodeViewController.passcodeRejected()()
{
  v1 = [v0 mechanism];
  if (v1)
  {
    [v1 uiEvent:9 options:0];

    swift_unknownObjectRelease();
  }
}

uint64_t outlined consume of (@escaping @callee_guaranteed () -> ())?(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_10002C890()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t objectdestroyTm()
{
  if (*(v0 + 24))
  {
  }

  return _swift_deallocObject(v0, 40, 7);
}

void partial apply for closure #2 in PasscodeSheetViewController.dismissChild(completionHandler:)(uint64_t a1)
{
  v3 = v1[2];
  v2 = v1[3];
  if (v2)
  {
    v4 = v1[4];
    v10 = v2;
    v11 = v4;
    v7.receiver = _NSConcreteStackBlock;
    v7.super_class = 1107296256;
    v8 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v9 = a1;
    v5 = _Block_copy(&v7);
  }

  else
  {
    v5 = 0;
  }

  v6 = type metadata accessor for PasscodeSheetViewController();
  v7.receiver = v3;
  v7.super_class = v6;
  objc_msgSendSuper2(&v7, "dismissChildWithCompletionHandler:", v5);
  _Block_release(v5);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, a2, v4);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_ypTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys11AnyHashableVypGMd, &_ss18_DictionaryStorageCys11AnyHashableVypGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      outlined init with copy of (AnyHashable, Any)(v4, v13);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = outlined init with take of Any(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_10002CCEC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

void partial apply for closure #1 in closure #1 in PasscodeSheetViewController.viewWillAppear(_:)(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (a1)
    {
      swift_errorRetain();
      v4 = [v3 mechanism];
      if (v4)
      {
        [v4 uiEvent:9 options:0];
        swift_unknownObjectRelease();
      }

      v5 = objc_opt_self();
      v6 = _convertErrorToNSError(_:)();
      LODWORD(v5) = [v5 error:v6 hasCode:LACErrorCodeUserCancel];

      if (v5)
      {
        [v3 uiCancel];

LABEL_12:

        return;
      }

      v11.super.isa = _convertErrorToNSError(_:)();
      [v3 uiFailureWithError:v11.super.isa];
    }

    else
    {
      v7 = [Strong mechanism];
      if (v7)
      {
        [v7 uiEvent:8 options:0];
        swift_unknownObjectRelease();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys11AnyHashableV_yptGMd, &_ss23_ContiguousArrayStorageCys11AnyHashableV_yptGMR);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1000867F0;
      AnyHashable.init<A>(_:)();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_SbtGMd, &_ss23_ContiguousArrayStorageCySi_SbtGMR);
      v9 = swift_initStackObject();
      *(v9 + 16) = xmmword_1000867F0;
      *(v9 + 32) = LACResultPassedPasscode;
      *(v9 + 40) = 1;
      v10 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_SbTt0g5Tf4g_n(v9);
      swift_setDeallocating();
      *(inited + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySiSbGMd, &_sSDySiSbGMR);
      *(inited + 72) = v10;
      _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_ypTt0g5Tf4g_n(inited);
      swift_setDeallocating();
      outlined destroy of LACUIAngelConnectionHandling?(inited + 32, &_ss11AnyHashableV_yptMd, &_ss11AnyHashableV_yptMR);
      v11.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

      [v3 uiSuccessWithResult:v11.super.isa];
    }

    goto LABEL_12;
  }
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_SbTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySiSbGMd, &_ss18_DictionaryStorageCySiSbGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    for (i = (a1 + 40); ; i += 16)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t type metadata accessor for UIDevice(uint64_t a1, unint64_t *a2, void *a3)
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

void type metadata accessor for LAErrorSubcode()
{
  if (!lazy cache variable for type metadata for LAErrorSubcode)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &lazy cache variable for type metadata for LAErrorSubcode);
    }
  }
}

uint64_t outlined init with copy of (AnyHashable, Any)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11AnyHashableV_yptMd, &_ss11AnyHashableV_yptMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t SecureUIControllerDynamicIsland.observerOfRecording.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC28LocalAuthenticationUIService31SecureUIControllerDynamicIsland_observerOfRecording;
  swift_beginAccess();
  *(v1 + v3) = a1;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  SecureUIControllerDynamicIsland.observerChanged()();
  return swift_unknownObjectRelease();
}

uint64_t key path getter for SecureUIControllerDynamicIsland.observerOfRecording : SecureUIControllerDynamicIsland@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0xA0))();
  *a2 = result;
  return result;
}

uint64_t key path setter for SecureUIControllerDynamicIsland.observerOfRecording : SecureUIControllerDynamicIsland(void *a1, void **a2)
{
  v2 = *((swift_isaMask & **a2) + 0xA8);
  v3 = swift_unknownObjectRetain();
  return v2(v3);
}

uint64_t (*SecureUIControllerDynamicIsland.observerOfRecording.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return SecureUIControllerDynamicIsland.observerOfRecording.modify;
}

uint64_t SecureUIControllerDynamicIsland.observerOfRecording.modify(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return SecureUIControllerDynamicIsland.observerChanged()();
  }

  return result;
}

uint64_t SecureUIControllerDynamicIsland.observerOfPlayback.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC28LocalAuthenticationUIService31SecureUIControllerDynamicIsland_observerOfPlayback;
  swift_beginAccess();
  *(v1 + v3) = a1;
  return swift_unknownObjectRelease();
}

uint64_t key path getter for SecureUIControllerDynamicIsland.observerOfPlayback : SecureUIControllerDynamicIsland@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0xB8))();
  *a2 = result;
  return result;
}

uint64_t key path setter for SecureUIControllerDynamicIsland.observerOfPlayback : SecureUIControllerDynamicIsland(void *a1, void **a2)
{
  v2 = *((swift_isaMask & **a2) + 0xC0);
  v3 = swift_unknownObjectRetain();
  return v2(v3);
}

uint64_t SecureUIControllerDynamicIsland.isRecording.getter()
{
  v1 = OBJC_IVAR____TtC28LocalAuthenticationUIService31SecureUIControllerDynamicIsland_isRecording;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t SecureUIControllerDynamicIsland.isRecording.setter(char a1)
{
  v3 = OBJC_IVAR____TtC28LocalAuthenticationUIService31SecureUIControllerDynamicIsland_isRecording;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t key path getter for SecureUIControllerDynamicIsland.isRecording : SecureUIControllerDynamicIsland@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0xE8))();
  *a2 = result & 1;
  return result;
}

uint64_t SecureUIControllerDynamicIsland.hasPendingTransitions.getter()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v24[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [(*((swift_isaMask & *v0) + 0x148))(v3) secureViews];
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo43SFUNestableSecureFlipBookCaptureDescription_So27LAUISecureFaceIDDescriptionCXcMd, &_sSo43SFUNestableSecureFlipBookCaptureDescription_So27LAUISecureFaceIDDescriptionCXcMR);
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v7 >> 62))
  {
    if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_15:

LABEL_19:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  if (!_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_15;
  }

LABEL_3:
  if ((v7 & 0xC000000000000001) != 0)
  {
    v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_18:

      goto LABEL_19;
    }

    v8 = *(v7 + 32);
  }

  v6 = v8;

  swift_getObjectType();
  v9 = swift_conformsToProtocol2();
  if (v9)
  {
    v10 = v6 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (v10)
  {
    goto LABEL_18;
  }

  v11 = v9;
  static LACLog.faceIDUI.getter();
  v12 = v0;
  v13 = v6;
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v23 = v1;
    v17 = v16;
    v24[0] = swift_slowAlloc();
    *v17 = 136315394;
    *(v17 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v12 + OBJC_IVAR____TtC28LocalAuthenticationUIService31SecureUIControllerDynamicIsland_ownerDescription), *(v12 + OBJC_IVAR____TtC28LocalAuthenticationUIService31SecureUIControllerDynamicIsland_ownerDescription + 8), v24);
    *(v17 + 12) = 2080;
    v18 = SecureUIControllerDynamicIsland.pendingStatesDescription(description:)(v13, v11);
    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v19, v24);

    *(v17 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v14, v15, "%s has pending transitions: %s", v17, 0x16u);
    swift_arrayDestroy();

    (*(v2 + 8))(v5, v23);
  }

  else
  {

    (*(v2 + 8))(v5, v1);
  }

  v21 = OBJC_IVAR____TtC28LocalAuthenticationUIService31SecureUIControllerDynamicIsland_pendingGlyphStates;
  swift_beginAccess();
  return *(*(v12 + v21) + 16) != 0;
}

void *SecureUIControllerDynamicIsland.currentConfiguration.getter()
{
  if ([*(v0 + OBJC_IVAR____TtC28LocalAuthenticationUIService31SecureUIControllerDynamicIsland_configuration) isForLightweightUI])
  {
    v1 = SecureUIElementFaceIdLightweight.name.unsafeMutableAddressor();
  }

  else
  {
    v1 = SecureUIElementFaceIDRegular.name.unsafeMutableAddressor();
  }

  v3 = *v1;
  v2 = v1[1];

  v4 = *(v0 + OBJC_IVAR____TtC28LocalAuthenticationUIService31SecureUIControllerDynamicIsland_supportedConfigurations);
  if (v4 >> 62)
  {
LABEL_23:
    v5 = _CocoaArrayWrapper.endIndex.getter();
    if (v5)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
LABEL_6:
      v6 = 0;
      do
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v8 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
LABEL_19:
            __break(1u);
LABEL_20:

LABEL_21:

            return v7;
          }
        }

        else
        {
          if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_23;
          }

          v7 = *(v4 + 8 * v6 + 32);
          swift_unknownObjectRetain();
          v8 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
            goto LABEL_19;
          }
        }

        v9 = v5;
        v10 = [v7 name];
        v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v13 = v12;

        if (v11 == v3 && v13 == v2)
        {
          goto LABEL_20;
        }

        v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v15)
        {
          goto LABEL_21;
        }

        swift_unknownObjectRelease();
        ++v6;
        v5 = v9;
      }

      while (v8 != v9);
    }
  }

  _StringGuts.grow(_:)(24);

  v17._countAndFlagsBits = v3;
  v17._object = v2;
  String.append(_:)(v17);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t SecureUIControllerDynamicIsland.currentStates.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC28LocalAuthenticationUIService31SecureUIControllerDynamicIsland_currentStates;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t key path getter for SecureUIControllerDynamicIsland.currentStates : SecureUIControllerDynamicIsland@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0x150))();
  *a2 = result;
  return result;
}

uint64_t key path setter for SecureUIControllerDynamicIsland.currentStates : SecureUIControllerDynamicIsland(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC28LocalAuthenticationUIService31SecureUIControllerDynamicIsland_currentStates;
  swift_beginAccess();
  *(v3 + v4) = v2;
}

char *SecureUIControllerDynamicIsland.__allocating_init(configuration:containerView:owner:)(void *a1, void *a2, void *a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = specialized SecureUIControllerDynamicIsland.init(configuration:containerView:owner:)(a1, a2, a3);

  return v8;
}

char *SecureUIControllerDynamicIsland.init(configuration:containerView:owner:)(void *a1, void *a2, void *a3)
{
  v6 = specialized SecureUIControllerDynamicIsland.init(configuration:containerView:owner:)(a1, a2, a3);

  return v6;
}

void SecureUIControllerDynamicIsland.updateCurrentConfiguration(_:)(uint64_t a1)
{
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (v2)
  {
    v3 = *(v1 + OBJC_IVAR____TtC28LocalAuthenticationUIService31SecureUIControllerDynamicIsland_configuration);
    *(v1 + OBJC_IVAR____TtC28LocalAuthenticationUIService31SecureUIControllerDynamicIsland_configuration) = v2;
    swift_unknownObjectRetain();
  }
}

uint64_t SecureUIControllerDynamicIsland.transition(to:)(void (*a1)(void))
{
  v3 = v1;
  v128 = a1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v118 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v118 - v10;
  v12 = __chkstk_darwin(v9);
  v14 = &v118 - v13;
  v15 = __chkstk_darwin(v12);
  v17 = &v118 - v16;
  v18 = [(*((swift_isaMask & *v1) + 0x148))(v15) secureViews];
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo43SFUNestableSecureFlipBookCaptureDescription_So27LAUISecureFaceIDDescriptionCXcMd, &_sSo43SFUNestableSecureFlipBookCaptureDescription_So27LAUISecureFaceIDDescriptionCXcMR);
  v19 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v19 >> 62))
  {
    if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_36:

LABEL_41:
    v129 = 0;
    v130 = 0xE000000000000000;
    _StringGuts.grow(_:)(22);
    v116 = *(v3 + OBJC_IVAR____TtC28LocalAuthenticationUIService31SecureUIControllerDynamicIsland_ownerDescription);
    v115 = *(v3 + OBJC_IVAR____TtC28LocalAuthenticationUIService31SecureUIControllerDynamicIsland_ownerDescription + 8);

    v129 = v116;
    v130 = v115;
    v117._object = 0x8000000100097C30;
    v117._countAndFlagsBits = 0xD000000000000014;
    String.append(_:)(v117);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  if (!_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_36;
  }

LABEL_3:
  v127 = v4;
  if ((v19 & 0xC000000000000001) != 0)
  {
    v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_39:
      v19 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v19 + 16) + 1, 1, v19);
      *(v3 + v5) = v19;
      goto LABEL_18;
    }

    v20 = *(v19 + 32);
  }

  v2 = v20;

  swift_getObjectType();
  v21 = swift_conformsToProtocol2();
  if (v21)
  {
    v22 = v2 == 0;
  }

  else
  {
    v22 = 1;
  }

  if (v22)
  {

    goto LABEL_41;
  }

  v23 = v21;
  v24 = v128;
  if (SecureUIControllerDynamicIsland.isTheLastPendingState(_:description:)(v128, v2, v21))
  {
    v25 = v23;
    static LACLog.faceIDUI.getter();
    v26 = v3;
    v27 = v2;
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v126 = swift_slowAlloc();
      v129 = v126;
      *v30 = 136316162;
      *(v30 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v26 + OBJC_IVAR____TtC28LocalAuthenticationUIService31SecureUIControllerDynamicIsland_ownerDescription), *(v26 + OBJC_IVAR____TtC28LocalAuthenticationUIService31SecureUIControllerDynamicIsland_ownerDescription + 8), &v129);
      *(v30 + 12) = 2048;
      LODWORD(v125) = v29;
      v31 = v128;
      *(v30 + 14) = v128;
      *(v30 + 22) = 2080;
      ObjectType = swift_getObjectType();
      v33 = (*(v25 + 8))(v31, ObjectType, v25);
      v35 = v5;
      v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v34, &v129);

      *(v30 + 24) = v36;
      *(v30 + 32) = 2080;
      (*((swift_isaMask & *v26) + 0x150))(v37);
      v38 = Dictionary.description.getter();
      v40 = v39;

      v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, v40, &v129);

      *(v30 + 34) = v41;
      *(v30 + 42) = 2080;
      v42 = SecureUIControllerDynamicIsland.pendingStatesDescription(description:)(v27, v25);
      v44 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v42, v43, &v129);

      *(v30 + 44) = v44;
      _os_log_impl(&_mh_execute_header, v28, v125, "%s ignoring transition to state: %ld (%s), current states: %s, already in pending states: %s", v30, 0x34u);
      swift_arrayDestroy();

      return (*(v35 + 8))(v8, v127);
    }

    else
    {

      return (*(v5 + 8))(v8, v127);
    }
  }

  v125 = v23;
  v126 = v5;
  if (SecureUIControllerDynamicIsland.isSettledInState(_:description:)(v24, v2, v23))
  {
    static LACLog.faceIDUI.getter();
    v46 = v3;
    v47 = v2;
    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v129 = swift_slowAlloc();
      *v50 = 136315650;
      *(v50 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v46 + OBJC_IVAR____TtC28LocalAuthenticationUIService31SecureUIControllerDynamicIsland_ownerDescription), *(v46 + OBJC_IVAR____TtC28LocalAuthenticationUIService31SecureUIControllerDynamicIsland_ownerDescription + 8), &v129);
      *(v50 + 12) = 2048;
      v51 = v128;
      *(v50 + 14) = v128;
      *(v50 + 22) = 2080;
      v52 = swift_getObjectType();
      v53 = (*(v125 + 8))(v51, v52);
      v55 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v53, v54, &v129);

      *(v50 + 24) = v55;
      _os_log_impl(&_mh_execute_header, v48, v49, "%s ignoring transition to state: %ld (%s), already in the state", v50, 0x20u);
      swift_arrayDestroy();
    }

    else
    {
    }

    return (*(v126 + 8))(v11, v127);
  }

  v5 = OBJC_IVAR____TtC28LocalAuthenticationUIService31SecureUIControllerDynamicIsland_pendingGlyphStates;
  swift_beginAccess();
  v19 = *(v3 + v5);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v3 + v5) = v19;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_39;
  }

LABEL_18:
  v57 = v128;
  v59 = *(v19 + 16);
  v58 = *(v19 + 24);
  if (v59 >= v58 >> 1)
  {
    v19 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v58 > 1), v59 + 1, 1, v19);
  }

  *(v19 + 16) = v59 + 1;
  *(v19 + 8 * v59 + 32) = v57;
  *(v3 + v5) = v19;
  v60 = swift_endAccess();
  if (v59)
  {
    static LACLog.faceIDUI.getter();
    v61 = v3;
    v62 = v2;
    v63 = Logger.logObject.getter();
    v64 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v63, v64))
    {
      LODWORD(v124) = v64;
      v65 = swift_slowAlloc();
      v123 = swift_slowAlloc();
      v129 = v123;
      *v65 = 136316418;
      *(v65 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v61 + OBJC_IVAR____TtC28LocalAuthenticationUIService31SecureUIControllerDynamicIsland_ownerDescription), *(v61 + OBJC_IVAR____TtC28LocalAuthenticationUIService31SecureUIControllerDynamicIsland_ownerDescription + 8), &v129);
      *(v65 + 12) = 2048;
      v66 = v128;
      *(v65 + 14) = v128;
      *(v65 + 22) = 2080;
      v67 = swift_getObjectType();
      v68 = v125;
      v69 = *(v125 + 8);
      v128 = v67;
      v122 = v69;
      v70 = v69(v66);
      v72 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v70, v71, &v129);

      *(v65 + 24) = v72;
      *(v65 + 32) = 2080;
      (*((swift_isaMask & *v61) + 0x150))(v73);
      v74 = Dictionary.description.getter();
      v76 = v75;

      v77 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v74, v76, &v129);

      *(v65 + 34) = v77;
      *(v65 + 42) = 2080;
      v78 = SecureUIControllerDynamicIsland.pendingStatesDescription(description:)(v62, v68);
      v80 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v78, v79, &v129);

      *(v65 + 44) = v80;
      *(v65 + 52) = 2080;
      if (*(v61 + OBJC_IVAR____TtC28LocalAuthenticationUIService31SecureUIControllerDynamicIsland_confirmedGlyphState + 8))
      {
        v81 = 7104878;
        v82 = 0xE300000000000000;
      }

      else
      {
        v81 = v122(*(v61 + OBJC_IVAR____TtC28LocalAuthenticationUIService31SecureUIControllerDynamicIsland_confirmedGlyphState), v128, v68);
        v82 = v108;
      }

      v109 = v126;
      v110 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v81, v82, &v129);

      *(v65 + 54) = v110;
      _os_log_impl(&_mh_execute_header, v63, v124, "%s transitioning to state: %ld (%s), current states: %s, added to pendingStates: %s, confirmedGlyphState: %s", v65, 0x3Eu);
      swift_arrayDestroy();

      return (*(v109 + 8))(v17, v127);
    }

    else
    {

      return (*(v126 + 8))(v17, v127);
    }
  }

  else
  {
    v128 = *((swift_isaMask & *v3) + 0x150);
    v128(v60);
    SecureUIControllerDynamicIsland.performTransition(to:)(v57);
    static LACLog.faceIDUI.getter();
    v83 = v3;
    v84 = v2;

    v85 = Logger.logObject.getter();
    v86 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v85, v86))
    {
      LODWORD(v123) = v86;
      v124 = v85;
      v87 = v57;
      v88 = swift_slowAlloc();
      v122 = swift_slowAlloc();
      v129 = v122;
      *v88 = 136316418;
      *(v88 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v83 + OBJC_IVAR____TtC28LocalAuthenticationUIService31SecureUIControllerDynamicIsland_ownerDescription), *(v83 + OBJC_IVAR____TtC28LocalAuthenticationUIService31SecureUIControllerDynamicIsland_ownerDescription + 8), &v129);
      *(v88 + 12) = 2048;
      *(v88 + 14) = v87;
      *(v88 + 22) = 2080;
      v89 = swift_getObjectType();
      v90 = v125;
      v119 = *(v125 + 8);
      v120 = v89;
      v91 = v119(v87);
      v93 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v91, v92, &v129);
      v121 = v84;
      v94 = v93;

      *(v88 + 24) = v94;
      *(v88 + 32) = 2080;
      v95 = Dictionary.description.getter();
      v97 = v96;

      v98 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v95, v97, &v129);

      *(v88 + 34) = v98;
      *(v88 + 42) = 2080;
      v128(v99);
      v100 = Dictionary.description.getter();
      v102 = v101;

      v103 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v100, v102, &v129);

      *(v88 + 44) = v103;
      *(v88 + 52) = 2080;
      if (*(v83 + OBJC_IVAR____TtC28LocalAuthenticationUIService31SecureUIControllerDynamicIsland_confirmedGlyphState + 8))
      {
        v104 = 7104878;
        v105 = 0xE300000000000000;
        v106 = v126;
        v107 = v121;
      }

      else
      {
        v111 = v121;
        v104 = (v119)(*(v83 + OBJC_IVAR____TtC28LocalAuthenticationUIService31SecureUIControllerDynamicIsland_confirmedGlyphState), v120, v90);
        v105 = v112;
        v106 = v126;
        v107 = v111;
      }

      v113 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v104, v105, &v129);

      *(v88 + 54) = v113;
      v114 = v124;
      _os_log_impl(&_mh_execute_header, v124, v123, "%s transitioning to state: %ld (%s), current states: %s -> %s, confirmedGlyphState: %s", v88, 0x3Eu);
      swift_arrayDestroy();

      return (*(v106 + 8))(v14, v127);
    }

    else
    {

      return (*(v126 + 8))(v14, v127);
    }
  }
}

uint64_t SecureUIControllerDynamicIsland.isTheLastPendingState(_:description:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = OBJC_IVAR____TtC28LocalAuthenticationUIService31SecureUIControllerDynamicIsland_pendingGlyphStates;
  swift_beginAccess();
  if (!*(*(v3 + v6) + 16))
  {
    v16 = 0;
    return v16 & 1;
  }

  ObjectType = swift_getObjectType();
  v8 = *(a3 + 8);
  result = v8(a1, ObjectType, a3);
  v11 = *(v3 + v6);
  v12 = *(v11 + 16);
  if (v12)
  {
    v13 = v10;
    if (result == v8(*(v11 + 8 * v12 + 24), ObjectType, a3) && v13 == v14)
    {
      v16 = 1;
    }

    else
    {
      v16 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    return v16 & 1;
  }

  __break(1u);
  return result;
}

uint64_t SecureUIControllerDynamicIsland.isSettledInState(_:description:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = OBJC_IVAR____TtC28LocalAuthenticationUIService31SecureUIControllerDynamicIsland_pendingGlyphStates;
  swift_beginAccess();
  if (*(*(v3 + v6) + 16) || (v7 = v3 + OBJC_IVAR____TtC28LocalAuthenticationUIService31SecureUIControllerDynamicIsland_confirmedGlyphState, (*(v3 + OBJC_IVAR____TtC28LocalAuthenticationUIService31SecureUIControllerDynamicIsland_confirmedGlyphState + 8) & 1) != 0))
  {
    v8 = 0;
    return v8 & 1;
  }

  if (*v7 == a1)
  {
    v8 = 1;
    return v8 & 1;
  }

  ObjectType = swift_getObjectType();
  v11 = *(a3 + 8);
  result = v11(a1, ObjectType, a3);
  if ((*(v7 + 8) & 1) == 0)
  {
    v13 = v12;
    if (result == v11(*v7, ObjectType, a3) && v13 == v14)
    {
      v8 = 1;
    }

    else
    {
      v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    return v8 & 1;
  }

  __break(1u);
  return result;
}

uint64_t SecureUIControllerDynamicIsland.performTransition(to:)(uint64_t a1)
{
  v2 = [(*((swift_isaMask & *v1) + 0x148))() secureViews];
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo43SFUNestableSecureFlipBookCaptureDescription_So27LAUISecureFaceIDDescriptionCXcMd, &_sSo43SFUNestableSecureFlipBookCaptureDescription_So27LAUISecureFaceIDDescriptionCXcMR);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v4 = v3 & 0xFFFFFFFFFFFFFF8;
  if (v3 >> 62)
  {
LABEL_50:
    v5 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = &_swiftEmptyArrayStorage;
  if (v5)
  {
    v7 = 0;
    v8 = &_swiftEmptyArrayStorage;
    while (2)
    {
      v9 = v7;
      while (1)
      {
        if ((v3 & 0xC000000000000001) != 0)
        {
          v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v9 >= *(v4 + 16))
          {
            goto LABEL_46;
          }

          v10 = *(v3 + 8 * v9 + 32);
        }

        v11 = v10;
        v7 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          __break(1u);
LABEL_46:
          __break(1u);
LABEL_47:
          __break(1u);
LABEL_48:
          __break(1u);
LABEL_49:
          __break(1u);
          goto LABEL_50;
        }

        swift_getObjectType();
        v12 = swift_conformsToProtocol2();
        if (v12)
        {
          if (v11)
          {
            break;
          }
        }

        ++v9;
        if (v7 == v5)
        {
          goto LABEL_22;
        }
      }

      v13 = v12;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v15 = v6;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v8[2] + 1, 1, v8);
      }

      v17 = v8[2];
      v16 = v8[3];
      v18 = v8;
      if (v17 >= v16 >> 1)
      {
        v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v17 + 1, 1, v8);
      }

      v18[2] = v17 + 1;
      v8 = v18;
      v19 = &v18[2 * v17];
      v19[4] = v11;
      v19[5] = v13;
      v6 = v15;
      if (v7 != v5)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v8 = &_swiftEmptyArrayStorage;
  }

LABEL_22:

  v20 = v8[2];
  if (v20)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v20, 0);
    v21 = v6;
    v22 = v8 + 5;
    do
    {
      v23 = *v22;
      ObjectType = swift_getObjectType();
      v25 = [swift_unknownObjectRetain() flipBookName];
      v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v4 = v27;

      v28 = (*(v23 + 8))(a1, ObjectType, v23);
      v30 = v29;
      swift_unknownObjectRelease();
      v32 = v21[2];
      v31 = v21[3];
      if (v32 >= v31 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v31 > 1), v32 + 1, 1);
      }

      v21[2] = v32 + 1;
      v33 = &v21[4 * v32];
      v33[4] = v26;
      v33[5] = v4;
      v33[6] = v28;
      v33[7] = v30;
      v22 += 2;
      --v20;
    }

    while (v20);
  }

  else
  {

    v21 = &_swiftEmptyArrayStorage;
  }

  v3 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(&_swiftEmptyArrayStorage);
  a1 = v21[2];
  if (a1)
  {
    v34 = 0;
    v35 = v21 + 7;
    v58 = v21;
    while (1)
    {
      if (v34 >= v21[2])
      {
        goto LABEL_47;
      }

      v39 = *(v35 - 3);
      v38 = *(v35 - 2);
      v40 = *(v35 - 1);
      v41 = *v35;
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      v4 = swift_isUniquelyReferenced_nonNull_native();
      v42 = specialized __RawDictionaryStorage.find<A>(_:)(v39, v38);
      v44 = *(v3 + 16);
      v45 = (v43 & 1) == 0;
      v46 = __OFADD__(v44, v45);
      v47 = v44 + v45;
      if (v46)
      {
        goto LABEL_48;
      }

      v48 = v43;
      if (*(v3 + 24) < v47)
      {
        break;
      }

      if (v4)
      {
        goto LABEL_39;
      }

      v54 = v42;
      specialized _NativeDictionary.copy()();
      v42 = v54;
      if (v48)
      {
LABEL_31:
        v36 = v42;

        v37 = (*(v3 + 56) + 16 * v36);
        *v37 = v40;
        v37[1] = v41;

        goto LABEL_32;
      }

LABEL_40:
      *(v3 + 8 * (v42 >> 6) + 64) |= 1 << v42;
      v50 = (*(v3 + 48) + 16 * v42);
      *v50 = v39;
      v50[1] = v38;
      v51 = (*(v3 + 56) + 16 * v42);
      *v51 = v40;
      v51[1] = v41;

      v52 = *(v3 + 16);
      v46 = __OFADD__(v52, 1);
      v53 = v52 + 1;
      if (v46)
      {
        goto LABEL_49;
      }

      *(v3 + 16) = v53;
LABEL_32:
      ++v34;
      v35 += 4;
      v21 = v58;
      if (a1 == v34)
      {
        goto LABEL_44;
      }
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v47, v4);
    v42 = specialized __RawDictionaryStorage.find<A>(_:)(v39, v38);
    if ((v48 & 1) != (v49 & 1))
    {
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }

LABEL_39:
    if (v48)
    {
      goto LABEL_31;
    }

    goto LABEL_40;
  }

LABEL_44:

  v55 = OBJC_IVAR____TtC28LocalAuthenticationUIService31SecureUIControllerDynamicIsland_currentStates;
  swift_beginAccess();
  *(v57 + v55) = v3;
}

uint64_t SecureUIControllerDynamicIsland.pendingStatesDescription(description:)(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC28LocalAuthenticationUIService31SecureUIControllerDynamicIsland_pendingGlyphStates;
  swift_beginAccess();
  v5 = *(v2 + v4);
  v6 = *(v5 + 16);
  if (v6)
  {
    ObjectType = swift_getObjectType();
    v25 = *(a2 + 8);
    v26 = ObjectType;

    v8 = a2;
    v9 = &_swiftEmptyArrayStorage;
    v10 = 32;
    do
    {
      v11 = v5;
      v12 = v8;
      v13 = v25(*(v5 + v10), v26);
      v15 = v14;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v9 + 2) + 1, 1, v9);
      }

      v17 = *(v9 + 2);
      v16 = *(v9 + 3);
      if (v17 >= v16 >> 1)
      {
        v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v17 + 1, 1, v9);
      }

      *(v9 + 2) = v17 + 1;
      v18 = &v9[16 * v17];
      *(v18 + 4) = v13;
      *(v18 + 5) = v15;
      v10 += 8;
      --v6;
      v8 = v12;
      v5 = v11;
    }

    while (v6);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  lazy protocol witness table accessor for type [String] and conformance [A]();
  v19 = BidirectionalCollection<>.joined(separator:)();
  v21 = v20;

  v22._countAndFlagsBits = v19;
  v22._object = v21;
  String.append(_:)(v22);

  v23._countAndFlagsBits = 23840;
  v23._object = 0xE200000000000000;
  String.append(_:)(v23);

  return 8283;
}

Swift::Bool __swiftcall SecureUIControllerDynamicIsland.confirmTransition(toFlipbookName:stateName:)(Swift::String toFlipbookName, Swift::String stateName)
{
  countAndFlagsBits = stateName._countAndFlagsBits;
  object = stateName._object;
  v6 = toFlipbookName._object;
  v97 = toFlipbookName._countAndFlagsBits;
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  v92 = v7;
  v93 = v8;
  v9 = __chkstk_darwin(v7);
  v11 = &v87 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v89 = &v87 - v13;
  v14 = __chkstk_darwin(v12);
  v16 = &v87 - v15;
  v17 = __chkstk_darwin(v14);
  v88 = &v87 - v18;
  v19 = (*((swift_isaMask & *v2) + 0x148))(v17);
  v20 = [v19 secureViews];
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo43SFUNestableSecureFlipBookCaptureDescription_So27LAUISecureFaceIDDescriptionCXcMd, &_sSo43SFUNestableSecureFlipBookCaptureDescription_So27LAUISecureFaceIDDescriptionCXcMR);
  v21 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v98 = v21;
  v94 = object;
  v90 = v16;
  v91 = v11;
  if (v21 >> 62)
  {
    goto LABEL_48;
  }

  v22 = *((v98 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v22)
  {
LABEL_49:
    v3 = v6;

    while (1)
    {
      v99[3] = 0;
      v99[4] = 0xE000000000000000;
      _StringGuts.grow(_:)(61);
      String.append(_:)(*&v96[OBJC_IVAR____TtC28LocalAuthenticationUIService31SecureUIControllerDynamicIsland_ownerDescription]);
      v83._countAndFlagsBits = 0xD000000000000021;
      v83._object = 0x8000000100097C50;
      String.append(_:)(v83);
      v84._object = v94;
      v84._countAndFlagsBits = countAndFlagsBits;
      String.append(_:)(v84);
      v85._object = 0x8000000100097C80;
      v85._countAndFlagsBits = 0xD000000000000016;
      String.append(_:)(v85);
      v86._countAndFlagsBits = v97;
      v86._object = v3;
      String.append(_:)(v86);
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
    }
  }

LABEL_3:
  v23 = 0;
  v24 = v98 & 0xC000000000000001;
  v25 = v98 & 0xFFFFFFFFFFFFFF8;
  while (!v24)
  {
    if (v23 >= *(v25 + 16))
    {
      __break(1u);
LABEL_48:
      v22 = _CocoaArrayWrapper.endIndex.getter();
      if (!v22)
      {
        goto LABEL_49;
      }

      goto LABEL_3;
    }

    v26 = *(v98 + 8 * v23 + 32);
    v27 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      goto LABEL_16;
    }

LABEL_7:
    v19 = v26;
    v3 = v6;
    v28 = [v26 flipBookName];
    v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v4 = v30;

    if (v29 == v97 && v4 == v3)
    {
      goto LABEL_17;
    }

    v6 = v3;
    v32 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v32)
    {
      goto LABEL_18;
    }

    ++v23;
    if (v27 == v22)
    {
      goto LABEL_49;
    }
  }

  v26 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  v27 = v23 + 1;
  if (!__OFADD__(v23, 1))
  {
    goto LABEL_7;
  }

LABEL_16:
  __break(1u);
LABEL_17:

LABEL_18:

  v4 = v19;
  swift_getObjectType();
  v33 = swift_conformsToProtocol2();
  v34 = v94;
  v35 = v96;
  if (!v33 || !v19)
  {
    goto LABEL_52;
  }

  v36 = v33;
  v37 = OBJC_IVAR____TtC28LocalAuthenticationUIService31SecureUIControllerDynamicIsland_pendingGlyphStates;
  swift_beginAccess();
  v38 = *&v35[v37];
  if (!*(v38 + 16))
  {
    v64 = v91;
    static LACLog.faceIDUI.getter();
    v65 = v35;

    v66 = Logger.logObject.getter();
    v67 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      v99[0] = swift_slowAlloc();
      *v68 = 136315394;
      *(v68 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*&v65[OBJC_IVAR____TtC28LocalAuthenticationUIService31SecureUIControllerDynamicIsland_ownerDescription], *&v65[OBJC_IVAR____TtC28LocalAuthenticationUIService31SecureUIControllerDynamicIsland_ownerDescription + 8], v99);
      *(v68 + 12) = 2080;
      *(v68 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(countAndFlagsBits, v34, v99);
      _os_log_impl(&_mh_execute_header, v66, v67, "%s ignoring confirmation of transition to %s, no state pending", v68, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    goto LABEL_44;
  }

  v39 = *(v38 + 32);
  ObjectType = swift_getObjectType();
  v3 = (v36 + 8);
  v98 = *(v36 + 8);
  v41 = (v98)(v39, ObjectType, v36);
  v43 = v42;
  if (v41 != countAndFlagsBits || v42 != v34)
  {
    v45 = v41;
    if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      v64 = v88;
      static LACLog.faceIDUI.getter();
      v76 = v96;

      v77 = Logger.logObject.getter();
      v78 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v77, v78))
      {
        v79 = swift_slowAlloc();
        v98 = swift_slowAlloc();
        v99[0] = v98;
        *v79 = 136315906;
        *(v79 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*&v76[OBJC_IVAR____TtC28LocalAuthenticationUIService31SecureUIControllerDynamicIsland_ownerDescription], *&v76[OBJC_IVAR____TtC28LocalAuthenticationUIService31SecureUIControllerDynamicIsland_ownerDescription + 8], v99);
        v80 = v64;
        *(v79 + 12) = 2080;
        *(v79 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(countAndFlagsBits, v34, v99);
        *(v79 + 22) = 2048;
        *(v79 + 24) = v39;
        *(v79 + 32) = 2080;
        v81 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v45, v43, v99);

        *(v79 + 34) = v81;
        _os_log_impl(&_mh_execute_header, v77, v78, "%s ignoring confirmation of transition to %s, pendingState: %ld (%s)", v79, 0x2Au);
        swift_arrayDestroy();

        (*(v93 + 8))(v80, v92);
        return 1;
      }

LABEL_44:
      (*(v93 + 8))(v64, v92);
      return 1;
    }
  }

  v46 = v96;
  swift_beginAccess();
  if (!*(*&v46[v37] + 16))
  {
    goto LABEL_51;
  }

  specialized Array.replaceSubrange<A>(_:with:)(0, 1);
  swift_endAccess();

  v47 = &v46[OBJC_IVAR____TtC28LocalAuthenticationUIService31SecureUIControllerDynamicIsland_confirmedGlyphState];
  *v47 = v39;
  v47[8] = 0;
  v48 = *&v46[v37];
  if (!*(v48 + 16))
  {
    v69 = v89;
    static LACLog.faceIDUI.getter();
    v70 = v46;

    v71 = Logger.logObject.getter();
    v72 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v71, v72))
    {
      v73 = swift_slowAlloc();
      v99[0] = swift_slowAlloc();
      *v73 = 136315394;
      *(v73 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*&v70[OBJC_IVAR____TtC28LocalAuthenticationUIService31SecureUIControllerDynamicIsland_ownerDescription], *&v70[OBJC_IVAR____TtC28LocalAuthenticationUIService31SecureUIControllerDynamicIsland_ownerDescription + 8], v99);
      *(v73 + 12) = 2080;
      *(v73 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(countAndFlagsBits, v34, v99);
      _os_log_impl(&_mh_execute_header, v71, v72, "%s confirmed transition to %s, no followup pending states", v73, 0x16u);
      swift_arrayDestroy();
    }

    v74 = (*(v93 + 8))(v69, v92);
    if (((*((swift_isaMask & *v70) + 0x140))(v74) & 1) != 0 && (v75 = (*((swift_isaMask & *v70) + 0xB8))()) != 0)
    {
      [v75 transitionToFinalStateCompleted];

      swift_unknownObjectRelease();
    }

    else
    {
    }

    return 1;
  }

  v49 = *(v48 + 32);
  SecureUIControllerDynamicIsland.performTransition(to:)(v49);
  v50 = v90;
  static LACLog.faceIDUI.getter();
  v51 = v46;

  v52 = v4;
  v53 = v34;
  v54 = Logger.logObject.getter();
  v55 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v54, v55))
  {
    v56 = swift_slowAlloc();
    LODWORD(v96) = v55;
    v57 = v56;
    v97 = swift_slowAlloc();
    v99[0] = v97;
    *v57 = 136316162;
    *(v57 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*&v51[OBJC_IVAR____TtC28LocalAuthenticationUIService31SecureUIControllerDynamicIsland_ownerDescription], *&v51[OBJC_IVAR____TtC28LocalAuthenticationUIService31SecureUIControllerDynamicIsland_ownerDescription + 8], v99);
    *(v57 + 12) = 2080;
    *(v57 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(countAndFlagsBits, v53, v99);
    *(v57 + 22) = 2048;
    *(v57 + 24) = v49;
    *(v57 + 32) = 2080;
    v58 = (v98)(v49, ObjectType, v36);
    v60 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v58, v59, v99);

    *(v57 + 34) = v60;
    *(v57 + 42) = 2080;
    v61 = SecureUIControllerDynamicIsland.pendingStatesDescription(description:)(v52, v36);
    v63 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v61, v62, v99);

    *(v57 + 44) = v63;
    _os_log_impl(&_mh_execute_header, v54, v96, "%s confirmed transition to %s, now transitioning to pending state: %ld (%s), remaining pending states: %s", v57, 0x34u);
    swift_arrayDestroy();
  }

  else
  {
  }

  (*(v93 + 8))(v50, v92);
  return 0;
}

Swift::Void __swiftcall SecureUIControllerDynamicIsland.recordingStarted(_:)(Swift::Bool a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC28LocalAuthenticationUIService31SecureUIControllerDynamicIsland_watchdog);
  if (v2)
  {
    v4 = *(*v2 + 152);

    v4(a1);
  }
}

Swift::Void __swiftcall SecureUIControllerDynamicIsland.recordingResetting(toDescriptionOfFlipbook:)(Swift::String toDescriptionOfFlipbook)
{
  v2 = (*((swift_isaMask & *v1) + 0xA0))();
  if (v2)
  {
    v3 = v2;
    v4 = String._bridgeToObjectiveC()();
    [v3 recordingResettingToDescriptionOfFlipbook:v4];

    swift_unknownObjectRelease();
  }
}

void *SecureUIControllerDynamicIsland.recordingUpdatedGlyphState(_:)(uint64_t a1)
{
  result = (*((swift_isaMask & *v1) + 0xA0))();
  if (result)
  {
    [result recordingUpdatedGlyphState:a1];

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t SecureUIControllerDynamicIsland.observerChanged()()
{
  type metadata accessor for SecureUIRecordingWatchdog();
  v1 = SecureUIRecordingWatchdog.__allocating_init()();
  v2 = OBJC_IVAR____TtC28LocalAuthenticationUIService31SecureUIControllerDynamicIsland_watchdog;
  *(v0 + OBJC_IVAR____TtC28LocalAuthenticationUIService31SecureUIControllerDynamicIsland_watchdog) = v1;

  v4 = (*((swift_isaMask & *v0) + 0xA0))(v3);
  (*(*v1 + 128))(v4);

  v6 = *(v0 + v2);
  if (v6)
  {
    v7 = *(*v6 + 144);

    v7(v8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id SecureUIControllerDynamicIsland.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SecureUIControllerDynamicIsland();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void *protocol witness for RawRepresentable.init(rawValue:) in conformance LAUIPearlGlyphState@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

char *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    v10 = &_swiftEmptyArrayStorage;
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo19LAUIPearlGlyphStateVGMd, &_ss23_ContiguousArrayStorageCySo19LAUIPearlGlyphStateVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    v10 = &_swiftEmptyArrayStorage;
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy28LocalAuthenticationUIService31BiometryCompanionViewControllerC11AlertAction020_B26F7E2A4D2F232DE74O11CBBFDD99136LLVGMd, &_ss23_ContiguousArrayStorageCy28LocalAuthenticationUIService31BiometryCompanionViewControllerC11AlertAction020_B26F7E2A4D2F232DE74O11CBBFDD99136LLVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy28LocalAuthenticationUIService32SecureUICaptureDescriptionFaceID33_405FD34CA5CF15704F9329FF0A01AE4ELL_pGMd, &_ss23_ContiguousArrayStorageCy28LocalAuthenticationUIService32SecureUICaptureDescriptionFaceID33_405FD34CA5CF15704F9329FF0A01AE4ELL_pGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s28LocalAuthenticationUIService32SecureUICaptureDescriptionFaceID33_405FD34CA5CF15704F9329FF0A01AE4ELL_pMd, &_s28LocalAuthenticationUIService32SecureUICaptureDescriptionFaceID33_405FD34CA5CF15704F9329FF0A01AE4ELL_pMR);
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = specialized _StringGuts._deconstructUTF8<A>(scratch:)(v11, 0, 0, 1, a1, a2);
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
    outlined init with copy of Any(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t specialized _StringGuts._deconstructUTF8<A>(scratch:)(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = _StringGuts._allocateForDeconstruct()(a5, a6);
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
    result = _StringObject.sharedUTF8.getter();
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

char *_StringGuts._allocateForDeconstruct()(uint64_t a1, unint64_t a2)
{
  v3 = specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2);
  specialized Array.append<A>(contentsOf:)(&outlined read-only object #0 of _StringGuts._allocateForDeconstruct());
  return v3;
}

char *specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1, unint64_t a2)
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

  v6 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v5, 0);
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

  result = _StringObject.sharedUTF8.getter();
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
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
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

uint64_t specialized Array.append<A>(contentsOf:)(uint64_t result)
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

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v11, 1, v3);
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

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

void *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(void *a1, uint64_t a2, uint64_t a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_SStGMd, &_ss23_ContiguousArrayStorageCySS_SStGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    v10 = &_swiftEmptyArrayStorage;
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_SStMd, &_sSS_SStMR);
    swift_arrayInitWithCopy();
  }

  return v10;
}

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
LABEL_30:
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

  if (!v9)
  {
    v13 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation3URLVGMd, &_ss23_ContiguousArrayStorageCy10Foundation3URLVGMR);
  v10 = *(type metadata accessor for URL() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for URL() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t specialized LAUISecureFaceIDDescriptionGlyph.stateName(for:)(uint64_t a1, uint64_t a2)
{
  if (a1 == 2 && !UIAccessibilityIsReduceTransparencyEnabled())
  {
    UIAccessibilityIsReduceMotionEnabled();
  }

  return static String._unconditionallyBridgeFromObjectiveC(_:)();
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCyS2SGMd, &_ss18_DictionaryStorageCyS2SGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

char *specialized SecureUIControllerDynamicIsland.init(configuration:containerView:owner:)(void *a1, void *a2, void *a3)
{
  v4 = v3;
  *&v4[OBJC_IVAR____TtC28LocalAuthenticationUIService31SecureUIControllerDynamicIsland_observerOfRecording] = 0;
  *&v4[OBJC_IVAR____TtC28LocalAuthenticationUIService31SecureUIControllerDynamicIsland_observerOfPlayback] = 0;
  v4[OBJC_IVAR____TtC28LocalAuthenticationUIService31SecureUIControllerDynamicIsland_isRecording] = 0;
  *&v4[OBJC_IVAR____TtC28LocalAuthenticationUIService31SecureUIControllerDynamicIsland_pendingGlyphStates] = &_swiftEmptyArrayStorage;
  v8 = &v4[OBJC_IVAR____TtC28LocalAuthenticationUIService31SecureUIControllerDynamicIsland_confirmedGlyphState];
  *v8 = 0;
  v8[8] = 1;
  v9 = OBJC_IVAR____TtC28LocalAuthenticationUIService31SecureUIControllerDynamicIsland_currentStates;
  *&v4[v9] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(&_swiftEmptyArrayStorage);
  *&v4[OBJC_IVAR____TtC28LocalAuthenticationUIService31SecureUIControllerDynamicIsland_watchdog] = 0;
  *&v4[OBJC_IVAR____TtC28LocalAuthenticationUIService31SecureUIControllerDynamicIsland_configuration] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1000868C0;
  type metadata accessor for SecureUIElementFaceIDRegular();
  v11 = a1;
  v12 = a2;
  *(v10 + 32) = SecureUIElementFaceIDRegular.__allocating_init(containerView:)(v12);
  type metadata accessor for SecureUIElementFaceIdLightweight();
  *(v10 + 40) = SecureUIElementFaceIdLightweight.__allocating_init(containerView:)(v12);
  *&v4[OBJC_IVAR____TtC28LocalAuthenticationUIService31SecureUIControllerDynamicIsland_supportedConfigurations] = v10;
  v13 = [a3 description];
  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  v17 = &v4[OBJC_IVAR____TtC28LocalAuthenticationUIService31SecureUIControllerDynamicIsland_ownerDescription];
  *v17 = v14;
  v17[1] = v16;
  v35.receiver = v4;
  v35.super_class = type metadata accessor for SecureUIControllerDynamicIsland();
  v18 = objc_msgSendSuper2(&v35, "init");
  v19 = *&v18[OBJC_IVAR____TtC28LocalAuthenticationUIService31SecureUIControllerDynamicIsland_supportedConfigurations];
  if (v19 >> 62)
  {
    goto LABEL_26;
  }

  for (i = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10); i; v19 = v31)
  {
    v34 = v19 & 0xC000000000000001;
    v32 = v19 + 32;
    v33 = v19 & 0xFFFFFFFFFFFFFF8;

    v21 = 0;
    while (v34)
    {
      v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v22 = v19;
      v23 = __OFADD__(v21++, 1);
      if (v23)
      {
        goto LABEL_23;
      }

LABEL_11:
      v24 = [v22 secureViews];
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo43SFUNestableSecureFlipBookCaptureDescription_So27LAUISecureFaceIDDescriptionCXcMd, &_sSo43SFUNestableSecureFlipBookCaptureDescription_So27LAUISecureFaceIDDescriptionCXcMR);
      v25 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v25 >> 62)
      {
        v19 = _CocoaArrayWrapper.endIndex.getter();
        v26 = v19;
        if (!v19)
        {
          goto LABEL_4;
        }
      }

      else
      {
        v26 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v26)
        {
          goto LABEL_4;
        }
      }

      if (v26 < 1)
      {
        goto LABEL_24;
      }

      for (j = 0; j != v26; ++j)
      {
        if ((v25 & 0xC000000000000001) != 0)
        {
          v28 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v28 = *(v25 + 8 * j + 32);
        }

        v29 = v28;
        [v28 setObserver:v18];
      }

LABEL_4:
      swift_unknownObjectRelease();

      if (v21 == i)
      {

        return v18;
      }
    }

    if (v21 >= *(v33 + 16))
    {
      goto LABEL_25;
    }

    v22 = *(v32 + 8 * v21);
    v19 = swift_unknownObjectRetain();
    v23 = __OFADD__(v21++, 1);
    if (!v23)
    {
      goto LABEL_11;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    v31 = v19;
    i = _CocoaArrayWrapper.endIndex.getter();
  }

  return v18;
}

unint64_t specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v5 = a3 - v4;
  if (__OFSUB__(a3, v4))
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v5)
  {
    goto LABEL_13;
  }

  v6 = *v3;
  v7 = *(v6 + 16);
  v8 = __OFSUB__(v7, a2);
  v9 = v7 - a2;
  if (v8)
  {
    goto LABEL_17;
  }

  result = v6 + 32 + 8 * result + 8 * a3;
  v10 = (v6 + 32 + 8 * a2);
  if (result != v10 || result >= v10 + 8 * v9)
  {
    v12 = a3;
    result = memmove(result, v10, 8 * v9);
    a3 = v12;
  }

  v13 = *(v6 + 16);
  v8 = __OFADD__(v13, v5);
  v14 = v13 + v5;
  if (v8)
  {
    goto LABEL_18;
  }

  *(v6 + 16) = v14;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

unint64_t specialized Array.replaceSubrange<A>(_:with:)(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 2);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > *(v4 + 3) >> 1)
  {
    if (v5 <= v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v5;
    }

    v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v10, 1, v4);
    *v2 = v4;
  }

  result = specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(v6, a2, 0);
  *v2 = v4;
  return result;
}

void type metadata accessor for LAUIPearlGlyphState()
{
  if (!lazy cache variable for type metadata for LAUIPearlGlyphState)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &lazy cache variable for type metadata for LAUIPearlGlyphState);
    }
  }
}

unint64_t lazy protocol witness table accessor for type [String] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [String] and conformance [A];
  if (!lazy protocol witness table cache variable for type [String] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySSGMd, &_sSaySSGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [String] and conformance [A]);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t WatchdogState.rawValue.getter(char a1)
{
  if (!a1)
  {
    return 0x6C616974696E69;
  }

  if (a1 == 1)
  {
    return 0xD000000000000010;
  }

  return 0xD000000000000011;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance WatchdogState(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xD000000000000010;
  v3 = *a1;
  v4 = 0x8000000100097FD0;
  if (v3 == 1)
  {
    v5 = 0xD000000000000010;
  }

  else
  {
    v5 = 0xD000000000000011;
  }

  if (v3 == 1)
  {
    v6 = 0x8000000100097FD0;
  }

  else
  {
    v6 = 0x8000000100097FF0;
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6C616974696E69;
  }

  if (v3)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0xE700000000000000;
  }

  if (*a2 != 1)
  {
    v2 = 0xD000000000000011;
    v4 = 0x8000000100097FF0;
  }

  if (*a2)
  {
    v9 = v2;
  }

  else
  {
    v9 = 0x6C616974696E69;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  if (v7 == v9 && v8 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance WatchdogState()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance WatchdogState(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance WatchdogState(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance WatchdogState@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized WatchdogState.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance WatchdogState(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xD000000000000010;
  v5 = 0x8000000100097FD0;
  if (v2 != 1)
  {
    v4 = 0xD000000000000011;
    v5 = 0x8000000100097FF0;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0x6C616974696E69;
  }

  if (!v6)
  {
    v3 = v5;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t key path getter for SecureUIRecordingWatchdog.observer : SecureUIRecordingWatchdog@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 120))();
  *a2 = result;
  return result;
}

uint64_t key path setter for SecureUIRecordingWatchdog.observer : SecureUIRecordingWatchdog(void *a1, uint64_t a2)
{
  v2 = *(**a2 + 128);
  v3 = swift_unknownObjectRetain();
  return v2(v3);
}

uint64_t SecureUIRecordingWatchdog.observer.setter(uint64_t a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*SecureUIRecordingWatchdog.observer.modify(uint64_t *a1))(void **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return SecureUIRecordingWatchdog.observer.modify;
}

void SecureUIRecordingWatchdog.observer.modify(void **a1, char a2)
{
  v3 = *a1;
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

Swift::Void __swiftcall SecureUIRecordingWatchdog.recordingStarted(_:)(Swift::Bool a1)
{
  v3 = type metadata accessor for Logger();
  __chkstk_darwin(v3);
  if (v1[16])
  {
    if (v1[16] == 1)
    {
      v4 = SecureUIRecordingWatchdog.bumpStateWith(recordingStarted:shouldEqual:to:)(a1, 0, 2);
      v5 = (*(*v1 + 120))(v4);
      if (v5)
      {
        [v5 recordingFinishedSuccessfully];

        swift_unknownObjectRelease();
      }
    }

    else
    {
      SecureUIRecordingWatchdog.bumpStateWith(recordingStarted:shouldEqual:to:)(a1, !a1, 2);
    }
  }

  else
  {
    SecureUIRecordingWatchdog.bumpStateWith(recordingStarted:shouldEqual:to:)(a1, 1, 1);

    SecureUIRecordingWatchdog.scheduleWatchdogForRecordingFinished()();
  }
}

uint64_t SecureUIRecordingWatchdog.bumpStateWith(recordingStarted:shouldEqual:to:)(uint64_t result, int a2, char a3)
{
  if ((result ^ a2))
  {
    v4 = result;
    v5 = LACErrorCodeInternal;
    _StringGuts.grow(_:)(51);
    v6._countAndFlagsBits = 0xD00000000000001ELL;
    v6._object = 0x80000001000980D0;
    String.append(_:)(v6);
    if (v4)
    {
      v7 = 1702195828;
    }

    else
    {
      v7 = 0x65736C6166;
    }

    if (v4)
    {
      v8 = 0xE400000000000000;
    }

    else
    {
      v8 = 0xE500000000000000;
    }

    v9 = v8;
    String.append(_:)(*&v7);

    v10._object = 0x80000001000980F0;
    v10._countAndFlagsBits = 0xD000000000000011;
    String.append(_:)(v10);
    v11 = 0x8000000100097FD0;
    v12 = 0xD000000000000010;
    if (*(v3 + 16) != 1)
    {
      v12 = 0xD000000000000011;
      v11 = 0x8000000100097FF0;
    }

    if (*(v3 + 16))
    {
      v13 = v12;
    }

    else
    {
      v13 = 0x6C616974696E69;
    }

    if (*(v3 + 16))
    {
      v14 = v11;
    }

    else
    {
      v14 = 0xE700000000000000;
    }

    v15 = objc_opt_self();
    v16._countAndFlagsBits = v13;
    v16._object = v14;
    String.append(_:)(v16);

    v17 = String._bridgeToObjectiveC()();

    [v15 errorWithCode:v5 debugDescription:{v17, 0, 0xE000000000000000}];

    return swift_willThrow();
  }

  else
  {
    *(v3 + 16) = a3;
  }

  return result;
}

uint64_t SecureUIRecordingWatchdog.scheduleWatchdogForRecordingStarted()(uint64_t a1, uint64_t a2, double a3)
{
  v23 = a1;
  v24 = a2;
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v27 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v25 = *(v6 - 8);
  v26 = v6;
  __chkstk_darwin(v6);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchTime();
  v21 = v9;
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v20 - v14;
  type metadata accessor for OS_dispatch_queue();
  v16 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  + infix(_:_:)();
  v17 = *(v10 + 8);
  v17(v13, v9);
  aBlock[4] = v23;
  aBlock[5] = v22;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = v24;
  v18 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = &_swiftEmptyArrayStorage;
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v18);

  (*(v27 + 8))(v5, v3);
  (*(v25 + 8))(v8, v26);
  return (v17)(v15, v21);
}

void *SecureUIRecordingWatchdog.checkRecordingStarted()()
{
  if (v0[16] && v0[16] == 1)
  {
    goto LABEL_12;
  }

  v1 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v1)
  {
    return result;
  }

  if (v0[16] && v0[16] != 1)
  {
LABEL_12:
  }

  else
  {
    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v3 & 1) == 0)
    {
      result = (*(*v0 + 120))(result);
      if (result)
      {
        v4 = result;
        v5 = objc_opt_self();
        v6 = LACErrorCodeInternal;
        v7 = String._bridgeToObjectiveC()();
        v8 = [v5 errorWithCode:v6 debugDescription:v7];

        v9 = _convertErrorToNSError(_:)();
        [v4 recordingFinishedWithError:v9];

        return swift_unknownObjectRelease();
      }
    }
  }

  return result;
}

void *SecureUIRecordingWatchdog.checkRecordingFinished()()
{
  if (v0[16] && v0[16] != 1)
  {
  }

  else
  {
    v1 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v1 & 1) == 0)
    {
      result = (*(*v0 + 120))(result);
      if (result)
      {
        v3 = result;
        v4 = objc_opt_self();
        v5 = LACErrorCodeInternal;
        v6 = String._bridgeToObjectiveC()();
        v7 = [v4 errorWithCode:v5 debugDescription:v6];

        v8 = _convertErrorToNSError(_:)();
        [v3 recordingFinishedWithError:v8];

        return swift_unknownObjectRelease();
      }
    }
  }

  return result;
}

uint64_t SecureUIRecordingWatchdog.__deallocating_deinit()
{
  outlined destroy of weak LACUIAngelSceneDelegate?(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t SecureUIRecordingWatchdog.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  swift_unknownObjectWeakInit();
  return v0;
}

uint64_t SecureUIRecordingWatchdog.init()()
{
  *(v0 + 16) = 0;
  swift_unknownObjectWeakInit();
  return v0;
}

unint64_t specialized WatchdogState.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of WatchdogState.init(rawValue:), v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t outlined destroy of NSObject?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type WatchdogState and conformance WatchdogState()
{
  result = lazy protocol witness table cache variable for type WatchdogState and conformance WatchdogState;
  if (!lazy protocol witness table cache variable for type WatchdogState and conformance WatchdogState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WatchdogState and conformance WatchdogState);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WatchdogState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for WatchdogState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t type metadata accessor for OS_dispatch_queue()
{
  result = lazy cache variable for type metadata for OS_dispatch_queue;
  if (!lazy cache variable for type metadata for OS_dispatch_queue)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for OS_dispatch_queue);
  }

  return result;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags()
{
  result = lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags;
  if (!lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags)
  {
    type metadata accessor for DispatchWorkItemFlags();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A];
  if (!lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A]);
  }

  return result;
}

id one-time initialization function for sharedInstance()
{
  result = [objc_allocWithZone(SecureUIManager) init];
  static SecureUIManager.sharedInstance = result;
  return result;
}

id variable initialization expression of SecureUIManager.controllers()
{
  v0 = [objc_opt_self() weakObjectsHashTable];

  return v0;
}

id static SecureUIManager.shared.getter()
{
  if (one-time initialization token for sharedInstance != -1)
  {
    swift_once();
  }

  v1 = static SecureUIManager.sharedInstance;

  return v1;
}

uint64_t SecureUIManager.isRecording.getter()
{
  v1 = OBJC_IVAR___SecureUIManager_isRecording;
  swift_beginAccess();
  return *(v0 + v1);
}

void SecureUIManager.isRecording.setter(char a1)
{
  v3 = OBJC_IVAR___SecureUIManager_isRecording;
  swift_beginAccess();
  *(v1 + v3) = a1;
  SecureUIManager.configureControllersForRecording()();
}

id key path getter for SecureUIManager.isRecording : SecureUIManager@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isRecording];
  *a2 = result;
  return result;
}

void SecureUIManager.configureControllersForRecording()()
{
  v1 = [v0 controllers];
  v2 = [v1 allObjects];

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo19SecureUIControlling_pMd, &_sSo19SecureUIControlling_pMR);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v3 >> 62)
  {
    v4 = _CocoaArrayWrapper.endIndex.getter();
    if (!v4)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      goto LABEL_10;
    }
  }

  if (v4 < 1)
  {
    __break(1u);
    return;
  }

  for (i = 0; i != v4; ++i)
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v6 = *(v3 + 8 * i + 32);
      swift_unknownObjectRetain();
    }

    [v6 setIsRecording:{objc_msgSend(v0, "isRecording")}];
    swift_unknownObjectRelease();
  }

LABEL_10:
}

char *SecureUIManager.controller(with:containerView:owner:)(uint64_t a1, void *a2, void *a3)
{
  v4 = v3;
  objc_opt_self();
  v7 = swift_dynamicCastObjCClass();
  if (!v7)
  {
    return 0;
  }

  v8 = v7;
  type metadata accessor for SecureUIControllerDynamicIsland();
  swift_unknownObjectRetain();
  v9 = SecureUIControllerDynamicIsland.__allocating_init(configuration:containerView:owner:)(v8, a2, a3);
  v10 = v9;
  [v10 setIsRecording:{objc_msgSend(v4, "isRecording")}];
  v11 = [v4 controllers];
  [v11 addObject:v10];

  return v9;
}

unint64_t type metadata accessor for SecureUIManager()
{
  result = lazy cache variable for type metadata for SecureUIManager;
  if (!lazy cache variable for type metadata for SecureUIManager)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for SecureUIManager);
  }

  return result;
}

uint64_t key path getter for SceneControllerFrontBoard.delegate : SceneControllerFrontBoard@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 96))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t key path setter for SceneControllerFrontBoard.delegate : SceneControllerFrontBoard(void *a1, uint64_t a2)
{
  v2 = a1[1];
  v3 = *(**a2 + 104);
  v4 = swift_unknownObjectRetain();
  return v3(v4, v2);
}

uint64_t SceneControllerRemoteAlert.delegate.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 40) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*SceneControllerFrontBoard.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 40);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return SceneControllerFrontBoard.delegate.modify;
}

void SceneControllerFrontBoard.delegate.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + 40) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

void *SceneControllerRemoteAlert.__allocating_init(globalSceneIdentifier:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  v4[5] = 0;
  swift_unknownObjectWeakInit();
  v4[2] = a1;
  v4[3] = a2;
  return v4;
}

void *SceneControllerRemoteAlert.init(globalSceneIdentifier:)(uint64_t a1, uint64_t a2)
{
  v2[5] = 0;
  swift_unknownObjectWeakInit();
  v2[2] = a1;
  v2[3] = a2;
  return v2;
}

Swift::Bool __swiftcall SceneControllerFrontBoard.checkNeedsScene(options:urls:)(Swift::OpaquePointer_optional options, Swift::OpaquePointer_optional urls)
{
  is_nil = options.is_nil;
  if (*&options.is_nil)
  {
    if (*(*&options.is_nil + 16) && (type metadata accessor for URL(), v4 = URL.host.getter(), v5))
    {
      if (v4 == *(v2 + 16) && v5 == *(v2 + 24))
      {
        is_nil = 1;
      }

      else
      {
        is_nil = _stringCompareWithSmolCheck(_:_:expecting:)();
      }
    }

    else
    {
      is_nil = 0;
    }
  }

  return is_nil & 1;
}

Swift::Void __swiftcall SceneControllerFrontBoard.sceneDidConnect(identifier:options:urls:)(Swift::String identifier, Swift::OpaquePointer_optional options, Swift::OpaquePointer_optional urls)
{
  v4 = v3;
  v5 = *&options.is_nil;
  object = identifier._object;
  countAndFlagsBits = identifier._countAndFlagsBits;
  v58 = type metadata accessor for URLQueryItem();
  v8 = *(v58 - 8);
  __chkstk_darwin(v58);
  v57 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation13URLComponentsVSgMd, &_s10Foundation13URLComponentsVSgMR);
  v11 = __chkstk_darwin(v10 - 8);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v45 - v14;
  v16 = type metadata accessor for URL();
  v17 = *(v16 - 8);
  v18 = __chkstk_darwin(v16);
  v20 = &v45 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v5 && *(v5 + 16))
  {
    v52 = object;
    (*(v17 + 16))(v20, v5 + ((*(v17 + 80) + 32) & ~*(v17 + 80)), v16);
    v51 = v20;
    URLComponents.init(url:resolvingAgainstBaseURL:)();
    outlined init with copy of URLComponents?(v15, v13);
    v21 = type metadata accessor for URLComponents();
    v22 = *(v21 - 8);
    if ((*(v22 + 48))(v13, 1, v21) == 1)
    {
      outlined destroy of URLComponents?(v13);
      v23 = &_swiftEmptyArrayStorage;
    }

    else
    {
      v24 = URLComponents.queryItems.getter();
      v25 = v21;
      v26 = v24;
      (*(v22 + 8))(v13, v25);
      v23 = &_swiftEmptyArrayStorage;
      if (v26)
      {
        v50 = v17;
        v27 = *(v26 + 16);
        if (v27)
        {
          v46 = v16;
          v47 = v15;
          v48 = countAndFlagsBits;
          v49 = v4;
          v59 = &_swiftEmptyArrayStorage;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v27, 0);
          v23 = v59;
          v29 = *(v8 + 16);
          v28 = v8 + 16;
          v30 = *(v28 + 64);
          v45 = v26;
          v31 = v26 + ((v30 + 32) & ~v30);
          v54 = *(v28 + 56);
          v55 = v29;
          v56 = v28;
          v53 = (v28 - 8);
          do
          {
            v32 = v57;
            v33 = v58;
            v55(v57, v31, v58);
            v34 = URLQueryItem.name.getter();
            v36 = v35;
            v37 = URLQueryItem.value.getter();
            if (v38)
            {
              v39 = v37;
            }

            else
            {
              v39 = 0;
            }

            if (v38)
            {
              v40 = v38;
            }

            else
            {
              v40 = 0xE000000000000000;
            }

            (*v53)(v32, v33);
            v59 = v23;
            v42 = v23[2];
            v41 = v23[3];
            if (v42 >= v41 >> 1)
            {
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v41 > 1), v42 + 1, 1);
              v23 = v59;
            }

            v23[2] = v42 + 1;
            v43 = &v23[4 * v42];
            v43[4] = v34;
            v43[5] = v36;
            v43[6] = v39;
            v43[7] = v40;
            v31 += v54;
            --v27;
          }

          while (v27);

          v4 = v49;
          v16 = v46;
          v15 = v47;
        }

        else
        {
        }

        v17 = v50;
      }
    }

    if (v23[2])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCyS2SGMd, &_ss18_DictionaryStorageCyS2SGMR);
      v44 = static _DictionaryStorage.allocate(capacity:)();
    }

    else
    {
      v44 = &_swiftEmptyDictionarySingleton;
    }

    v59 = v44;
    specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v23, 1, &v59);

    specialized _dictionaryUpCast<A, B, C, D>(_:)(v59);

    outlined destroy of URLComponents?(v15);
    v18 = (*(v17 + 8))(v51, v16);
  }

  if ((*(*v4 + 96))(v18))
  {
    swift_getObjectType();
    lazy protocol witness table accessor for type SceneControllerFrontBoard and conformance SceneControllerFrontBoard();
    dispatch thunk of LACUISceneControllerDelegate.sceneControllerDidConnectScene(_:identifier:userInfo:)();
    swift_unknownObjectRelease();
  }
}

unint64_t lazy protocol witness table accessor for type SceneControllerFrontBoard and conformance SceneControllerFrontBoard()
{
  result = lazy protocol witness table cache variable for type SceneControllerFrontBoard and conformance SceneControllerFrontBoard;
  if (!lazy protocol witness table cache variable for type SceneControllerFrontBoard and conformance SceneControllerFrontBoard)
  {
    type metadata accessor for SceneControllerFrontBoard();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SceneControllerFrontBoard and conformance SceneControllerFrontBoard);
  }

  return result;
}

uint64_t outlined init with copy of URLComponents?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation13URLComponentsVSgMd, &_s10Foundation13URLComponentsVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of URLComponents?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation13URLComponentsVSgMd, &_s10Foundation13URLComponentsVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t specialized _dictionaryUpCast<A, B, C, D>(_:)(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys11AnyHashableVypGMd, &_ss18_DictionaryStorageCys11AnyHashableVypGMR);
    v2 = static _DictionaryStorage.allocate(capacity:)();
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
    v13 = (*(a1 + 48) + ((v9 << 10) | (16 * __clz(__rbit64(v5)))));
    v14 = v13[1];
    *&v30[0] = *v13;
    *(&v30[0] + 1) = v14;

    swift_dynamicCast();
    swift_dynamicCast();
    v26 = v22;
    v27 = v23;
    v28 = v24;
    outlined init with take of Any(&v25, v29);
    v22 = v26;
    v23 = v27;
    v24 = v28;
    outlined init with take of Any(v29, v30);
    result = AnyHashable._rawHashValue(seed:)(v2[5]);
    v15 = -1 << *(v2 + 32);
    v16 = result & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*&v7[8 * (v16 >> 6)]) == 0)
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
        v21 = *&v7[8 * v17];
        if (v21 != -1)
        {
          v10 = __clz(__rbit64(~v21)) + (v17 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v16) & ~*&v7[8 * (v16 >> 6)])) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *&v7[(v10 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v10;
    v11 = v2[6] + 40 * v10;
    *v11 = v22;
    *(v11 + 16) = v23;
    *(v11 + 32) = v24;
    result = outlined init with take of Any(v30, (v2[7] + 32 * v10));
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

Swift::Void __swiftcall SceneControllerFrontBoard.sceneDidDisconnect(identifier:)(Swift::String identifier)
{
  if ((*(*v1 + 96))())
  {
    swift_getObjectType();
    lazy protocol witness table accessor for type SceneControllerFrontBoard and conformance SceneControllerFrontBoard();
    dispatch thunk of LACUISceneControllerDelegate.sceneControllerDidDisconnectScene(_:identifier:)();

    swift_unknownObjectRelease();
  }
}

uint64_t SceneControllerRemoteAlert.deinit()
{

  outlined destroy of weak LACUIAngelSceneDelegate?(v0 + 32);
  return v0;
}

uint64_t SceneControllerRemoteAlert.__deallocating_deinit()
{

  outlined destroy of weak LACUIAngelSceneDelegate?(v0 + 32);

  return swift_deallocClassInstance();
}

uint64_t (*protocol witness for LACUISceneControlling.delegate.modify in conformance SceneControllerFrontBoard(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*(*v1 + 112))();
  return protocol witness for LACUISceneControlling.delegate.modify in conformance SceneControllerFrontBoard;
}

void protocol witness for LACUISceneControlling.delegate.modify in conformance SceneControllerFrontBoard(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

unint64_t specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(unint64_t result, uint64_t a2, void *a3)
{
  v3 = *(result + 16);
  if (v3)
  {
    v4 = a3;
    LOBYTE(v5) = a2;
    v6 = result;
    v8 = *(result + 32);
    v7 = *(result + 40);
    v9 = *(result + 56);
    v45 = *(result + 48);
    v10 = *a3;

    result = specialized __RawDictionaryStorage.find<A>(_:)(v8, v7);
    v12 = *(v10 + 16);
    v13 = (v11 & 1) == 0;
    v14 = __OFADD__(v12, v13);
    v15 = v12 + v13;
    if (v14)
    {
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    LOBYTE(v16) = v11;
    v46 = v4;
    if (*(v10 + 24) < v15)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v15, v5 & 1);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v8, v7);
      if ((v16 & 1) == (v17 & 1))
      {
        goto LABEL_7;
      }

LABEL_5:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
    }

    if ((v5 & 1) == 0)
    {
      v24 = result;
      specialized _NativeDictionary.copy()();
      result = v24;
      v18 = *v46;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_10;
    }

LABEL_7:
    v18 = *v4;
    if (v16)
    {
LABEL_8:
      v19 = 16 * result;
      v20 = (v18[7] + 16 * result);
      v22 = *v20;
      v21 = v20[1];

      v23 = (v18[7] + v19);
      *v23 = v22;
      v23[1] = v21;

LABEL_12:
      v16 = v3 - 1;
      v4 = v46;
      if (v3 == 1)
      {
        return result;
      }

      v5 = (v6 + 88);
      while (1)
      {
        v7 = *(v5 - 3);
        v9 = *(v5 - 2);
        v3 = *(v5 - 1);
        v6 = *v5;
        v34 = *v4;

        result = specialized __RawDictionaryStorage.find<A>(_:)(v7, v9);
        v36 = *(v34 + 16);
        v37 = (v35 & 1) == 0;
        v14 = __OFADD__(v36, v37);
        v38 = v36 + v37;
        if (v14)
        {
          goto LABEL_23;
        }

        v8 = v35;
        if (*(v34 + 24) < v38)
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v38, 1);
          result = specialized __RawDictionaryStorage.find<A>(_:)(v7, v9);
          if ((v8 & 1) != (v39 & 1))
          {
            goto LABEL_5;
          }
        }

        v40 = *v4;
        if (v8)
        {
          v29 = 16 * result;
          v30 = (v40[7] + 16 * result);
          v32 = *v30;
          v31 = v30[1];

          v33 = (v40[7] + v29);
          *v33 = v32;
          v33[1] = v31;
        }

        else
        {
          v40[(result >> 6) + 8] |= 1 << result;
          v41 = (v40[6] + 16 * result);
          *v41 = v7;
          v41[1] = v9;
          v42 = (v40[7] + 16 * result);
          *v42 = v3;
          v42[1] = v6;
          v43 = v40[2];
          v14 = __OFADD__(v43, 1);
          v44 = v43 + 1;
          if (v14)
          {
            goto LABEL_24;
          }

          v40[2] = v44;
        }

        v5 += 4;
        --v16;
        v4 = v46;
        if (!v16)
        {
          return result;
        }
      }
    }

LABEL_10:
    v18[(result >> 6) + 8] |= 1 << result;
    v25 = (v18[6] + 16 * result);
    *v25 = v8;
    v25[1] = v7;
    v26 = (v18[7] + 16 * result);
    *v26 = v45;
    v26[1] = v9;
    v27 = v18[2];
    v14 = __OFADD__(v27, 1);
    v28 = v27 + 1;
    if (v14)
    {
LABEL_24:
      __break(1u);
      return result;
    }

    v18[2] = v28;
    goto LABEL_12;
  }

  return result;
}

uint64_t key path getter for SecureUIElementFaceIDRegular.name : SecureUIElementFaceIDRegular@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0x68))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t key path setter for SecureUIElementFaceIDRegular.name : SecureUIElementFaceIDRegular(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *((swift_isaMask & **a2) + 0x70);

  return v4(v2, v3);
}

id SecureUIElementFaceIDRegular.__allocating_init(containerView:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = specialized SecureUIElementFaceIDRegular.init(containerView:)(a1);

  return v4;
}

id SecureUIElementFaceIDRegular.init(containerView:)(void *a1)
{
  v2 = specialized SecureUIElementFaceIDRegular.init(containerView:)(a1);

  return v2;
}

id @objc SecureUIElementFaceIDRegular.name.getter(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();

  v3 = String._bridgeToObjectiveC()();

  return v3;
}

uint64_t SecureUIElementFaceIDRegular.name.getter(void *a1)
{
  v2 = (v1 + *a1);
  swift_beginAccess();
  v3 = *v2;

  return v3;
}

uint64_t @objc SecureUIElementFaceIDRegular.name.setter(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  v9 = (a1 + *a4);
  swift_beginAccess();
  *v9 = v6;
  v9[1] = v8;
}

uint64_t SecureUIElementFaceIDRegular.name.setter(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = (v3 + *a3);
  swift_beginAccess();
  *v6 = a1;
  v6[1] = a2;
}

uint64_t key path getter for SecureUIElementFaceIdLightweight.name : SecureUIElementFaceIdLightweight@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0x68))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t key path setter for SecureUIElementFaceIdLightweight.name : SecureUIElementFaceIdLightweight(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *((swift_isaMask & **a2) + 0x70);

  return v4(v2, v3);
}

Class @objc SecureUIElementFaceIDRegular.secureViews.getter(uint64_t a1, uint64_t a2, void *a3)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo43SFUNestableSecureFlipBookCaptureDescription_So27LAUISecureFaceIDDescriptionCXcMd, &_sSo43SFUNestableSecureFlipBookCaptureDescription_So27LAUISecureFaceIDDescriptionCXcMR);
  v3.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

id SecureUIElementFaceIdLightweight.__allocating_init(containerView:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = specialized SecureUIElementFaceIdLightweight.init(containerView:)(a1);

  return v4;
}

id SecureUIElementFaceIdLightweight.init(containerView:)(void *a1)
{
  v2 = specialized SecureUIElementFaceIdLightweight.init(containerView:)(a1);

  return v2;
}

id SecureUIElementFaceIDRegular.__deallocating_deinit(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void @objc SecureUIElementFaceIDRegular.__ivar_destroyer(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{

  v7 = *(a1 + *a5);
}

id specialized SecureUIElementFaceIDRegular.init(containerView:)(uint64_t a1)
{
  v2 = &v1[OBJC_IVAR____TtC28LocalAuthenticationUIService28SecureUIElementFaceIDRegular_name];
  *v2 = 0xD00000000000001ALL;
  *(v2 + 1) = 0x8000000100098210;
  v3 = [objc_allocWithZone(LAUISecureFaceIDDescriptionGlyph) initWithContainerView:a1 type:0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100086C70;
  *(v4 + 32) = v3;
  *&v1[OBJC_IVAR____TtC28LocalAuthenticationUIService28SecureUIElementFaceIDRegular_secureViews] = v4;
  v5 = v3;
  v6 = [v5 viewToCapture];
  *&v1[OBJC_IVAR____TtC28LocalAuthenticationUIService28SecureUIElementFaceIDRegular_viewToCapture] = v6;
  v9.receiver = v1;
  v9.super_class = type metadata accessor for SecureUIElementFaceIDRegular();
  v7 = objc_msgSendSuper2(&v9, "init");

  return v7;
}

id specialized SecureUIElementFaceIdLightweight.init(containerView:)(uint64_t a1)
{
  v2 = &v1[OBJC_IVAR____TtC28LocalAuthenticationUIService32SecureUIElementFaceIdLightweight_name];
  *v2 = 0xD00000000000001ELL;
  *(v2 + 1) = 0x8000000100098230;
  v3 = [objc_allocWithZone(LAUISecureFaceIDDescriptionLightweight) initWithContainerView:a1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100086C70;
  *(v4 + 32) = v3;
  *&v1[OBJC_IVAR____TtC28LocalAuthenticationUIService32SecureUIElementFaceIdLightweight_secureViews] = v4;
  v5 = v3;
  v6 = [v5 viewToCapture];
  *&v1[OBJC_IVAR____TtC28LocalAuthenticationUIService32SecureUIElementFaceIdLightweight_viewToCapture] = v6;
  v9.receiver = v1;
  v9.super_class = type metadata accessor for SecureUIElementFaceIdLightweight();
  v7 = objc_msgSendSuper2(&v9, "init");

  return v7;
}

uint64_t variable initialization expression of PasscodeAlertContentViewController.log()
{
  v0 = *LogCategory.ui.unsafeMutableAddressor();

  return Logger(category:)(v0);
}

char *BiometryCompanionViewController.actions.getter()
{
  v1 = v0;
  v2 = type metadata accessor for CharacterSet();
  v75 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v71 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [v0 options];
  if (!v5)
  {
    goto LABEL_8;
  }

  v6 = v5;
  v7 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v77 = LACPolicyOptionCancelVisible;
  AnyHashable.init<A>(_:)();
  if (!*(v7 + 16) || (v8 = specialized __RawDictionaryStorage.find<A>(_:)(&v78), (v9 & 1) == 0))
  {

    outlined destroy of AnyHashable(&v78);
LABEL_8:
    v80 = 0u;
    v81 = 0u;
    goto LABEL_9;
  }

  outlined init with copy of Any(*(v7 + 56) + 32 * v8, &v80);
  outlined destroy of AnyHashable(&v78);

  if (!*(&v81 + 1))
  {
LABEL_9:
    outlined destroy of LACUIAngelConnectionHandling?(&v80, &_sypSgMd, &_sypSgMR);
    goto LABEL_10;
  }

  if (swift_dynamicCast())
  {
    v10 = v78;
    goto LABEL_11;
  }

LABEL_10:
  v10 = 1;
LABEL_11:
  v11 = [v1 options];
  if (!v11)
  {
LABEL_21:
    v80 = 0u;
    v81 = 0u;
    goto LABEL_22;
  }

  v12 = v11;
  v13 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v77 = LACPolicyOptionFallbackVisible;
  AnyHashable.init<A>(_:)();
  if (!*(v13 + 16) || (v14 = specialized __RawDictionaryStorage.find<A>(_:)(&v78), (v15 & 1) == 0))
  {

    outlined destroy of AnyHashable(&v78);
    goto LABEL_21;
  }

  outlined init with copy of Any(*(v13 + 56) + 32 * v14, &v80);
  outlined destroy of AnyHashable(&v78);

  if (!*(&v81 + 1))
  {
LABEL_22:
    outlined destroy of LACUIAngelConnectionHandling?(&v80, &_sypSgMd, &_sypSgMR);
    v18 = 0;
    v19 = 1;
LABEL_23:
    v76 = 1;
    goto LABEL_24;
  }

  type metadata accessor for UIDevice(0, &lazy cache variable for type metadata for NSNumber, NSNumber_ptr);
  v16 = swift_dynamicCast();
  v17 = v78;
  if (v16)
  {
    v18 = v78;
  }

  else
  {
    v18 = 0;
  }

  v19 = v18 == 0;
  if (v10 & 1 | (v18 == 0))
  {
    goto LABEL_23;
  }

  v19 = 0;
  v76 = [v18 BOOLValue] ^ 1;
  v18 = v17;
LABEL_24:
  v20 = static os_log_type_t.default.getter();
  v21 = v18;
  v22 = v1;
  v23 = Logger.logObject.getter();

  if (os_log_type_enabled(v23, v20))
  {
    v73 = v2;
    v74 = v4;
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    *v24 = 138543874;
    *(v24 + 4) = v22;
    *v25 = v22;
    *(v24 + 12) = 1026;
    *(v24 + 14) = v76;
    *(v24 + 18) = 1026;
    v72 = v22;
    v26 = v22;
    v28 = 0;
    if (!v19)
    {
      v27 = [v21 BOOLValue];

      if (v27)
      {
        v28 = 1;
      }
    }

    *(v24 + 20) = v28;

    _os_log_impl(&_mh_execute_header, v23, v20, "%{public}@ buttons - cancel: %{BOOL,public}d fallback: %{BOOL,public}d", v24, 0x18u);
    outlined destroy of LACUIAngelConnectionHandling?(v25, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);

    v2 = v73;
    v4 = v74;
    v22 = v72;

    if (v19)
    {
      goto LABEL_39;
    }
  }

  else
  {

    if (v19)
    {
      goto LABEL_39;
    }
  }

  if ([v21 BOOLValue])
  {
    v29 = [v22 options];
    v71 = v21;
    if (v29)
    {
      v30 = v29;
      v31 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      v77 = LACPolicyOptionUserFallback;
      AnyHashable.init<A>(_:)();
      if (*(v31 + 16))
      {
        v32 = specialized __RawDictionaryStorage.find<A>(_:)(&v78);
        if (v33)
        {
          outlined init with copy of Any(*(v31 + 56) + 32 * v32, &v80);
          outlined destroy of AnyHashable(&v78);

          if (*(&v81 + 1))
          {
            if (swift_dynamicCast())
            {
              v34 = String._bridgeToObjectiveC()();

              goto LABEL_62;
            }

LABEL_61:
            v34 = 0;
LABEL_62:
            v54 = [objc_opt_self() truncateString:v34 maxLength:32];

            if (v54)
            {
              v55 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v57 = v56;

              v78 = v55;
              v79 = v57;
              static CharacterSet.whitespacesAndNewlines.getter();
              lazy protocol witness table accessor for type String and conformance String();
              v58 = StringProtocol.trimmingCharacters(in:)();
              v60 = v59;
              (*(v75 + 8))(v4, v2);
            }

            else
            {
              v58 = static LocalizedStrings.enterPassword.getter();
              v60 = v61;
            }

            if (v58 == 0x6150207265746E45 && v60 == 0xEE0065646F637373)
            {
              swift_bridgeObjectRelease_n();
            }

            else
            {
              v62 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if ((v62 & 1) == 0)
              {
                goto LABEL_71;
              }
            }

            v58 = static LocalizedStrings.enterPasscode.getter();
            v60 = v63;
LABEL_71:
            v64 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v35 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, &_swiftEmptyArrayStorage);
            v66 = *(v35 + 2);
            v65 = *(v35 + 3);
            v67 = (v66 + 1);
            if (v66 >= v65 >> 1)
            {
              v74 = (v66 + 1);
              v70 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v65 > 1), v66 + 1, 1, v35);
              v67 = v74;
              v35 = v70;
            }

            *(v35 + 2) = v67;
            v68 = &v35[40 * v66];
            *(v68 + 4) = v58;
            *(v68 + 5) = v60;
            *(v68 + 6) = 0;
            *(v68 + 7) = partial apply for closure #1 in BiometryCompanionViewController.actions.getter;
            *(v68 + 8) = v64;
            v21 = v71;
            if (!v76)
            {
              goto LABEL_74;
            }

            goto LABEL_40;
          }

LABEL_60:
          outlined destroy of LACUIAngelConnectionHandling?(&v80, &_sypSgMd, &_sypSgMR);
          goto LABEL_61;
        }
      }

      outlined destroy of AnyHashable(&v78);
    }

    v80 = 0u;
    v81 = 0u;
    goto LABEL_60;
  }

LABEL_39:
  v35 = &_swiftEmptyArrayStorage;
  if (!v76)
  {
LABEL_74:

    return v35;
  }

LABEL_40:
  v36 = [v22 options];
  if (!v36)
  {
LABEL_47:
    v80 = 0u;
    v81 = 0u;
    goto LABEL_48;
  }

  v37 = v36;
  v38 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v77 = LACPolicyOptionUserCancel;
  AnyHashable.init<A>(_:)();
  if (!*(v38 + 16) || (v39 = specialized __RawDictionaryStorage.find<A>(_:)(&v78), (v40 & 1) == 0))
  {

    outlined destroy of AnyHashable(&v78);
    goto LABEL_47;
  }

  outlined init with copy of Any(*(v38 + 56) + 32 * v39, &v80);
  outlined destroy of AnyHashable(&v78);

  if (!*(&v81 + 1))
  {
LABEL_48:
    outlined destroy of LACUIAngelConnectionHandling?(&v80, &_sypSgMd, &_sypSgMR);
    goto LABEL_49;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_49:
    v41 = 0;
    goto LABEL_50;
  }

  v41 = String._bridgeToObjectiveC()();

LABEL_50:
  v42 = [objc_opt_self() truncateString:v41 maxLength:32];

  if (v42)
  {
    v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v45 = v44;

    v78 = v43;
    v79 = v45;
    static CharacterSet.whitespacesAndNewlines.getter();
    lazy protocol witness table accessor for type String and conformance String();
    v46 = StringProtocol.trimmingCharacters(in:)();
    v48 = v47;
    (*(v75 + 8))(v4, v2);
  }

  else
  {
    v46 = static LocalizedStrings.cancel.getter();
    v48 = v49;
  }

  v50 = swift_allocObject();
  swift_unknownObjectWeakInit();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v35 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v35 + 2) + 1, 1, v35);
  }

  v52 = *(v35 + 2);
  v51 = *(v35 + 3);
  if (v52 >= v51 >> 1)
  {
    v35 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v51 > 1), v52 + 1, 1, v35);
  }

  *(v35 + 2) = v52 + 1;
  v53 = &v35[40 * v52];
  *(v53 + 4) = v46;
  *(v53 + 5) = v48;
  *(v53 + 6) = 1;
  *(v53 + 7) = partial apply for closure #2 in BiometryCompanionViewController.actions.getter;
  *(v53 + 8) = v50;
  return v35;
}

uint64_t BiometryCompanionViewController.biometryType.getter()
{
  v1 = OBJC_IVAR____TtC28LocalAuthenticationUIService31BiometryCompanionViewController_biometryType;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t BiometryCompanionViewController.biometryType.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC28LocalAuthenticationUIService31BiometryCompanionViewController_biometryType;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

Swift::Void __swiftcall BiometryCompanionViewController.viewDidAppear(_:)(Swift::Bool a1)
{
  v2 = v1;
  v38.receiver = v1;
  v38.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v38, "viewDidAppear:", a1);
  v4 = OBJC_IVAR____TtC28LocalAuthenticationUIService31BiometryCompanionViewController_biometryType;
  swift_beginAccess();
  v5 = *&v2[v4];
  v6 = type metadata accessor for BiometryAlertViewController();
  v7 = objc_allocWithZone(v6);
  *&v7[OBJC_IVAR____TtC28LocalAuthenticationUIServiceP33_B26F7E2A4D2F232DE74E2CBBFDD9913627BiometryAlertViewController_biometryType] = v5;
  v37.receiver = v7;
  v37.super_class = v6;
  v8 = objc_msgSendSuper2(&v37, "initWithNibName:bundle:", 0, 0);
  v9 = *&v2[v4];
  v10 = v2;
  v11 = v8;
  if (v9 == 1)
  {
    static LocalizedStrings.touchId.getter();
  }

  else if (v9 == 2)
  {
    static LocalizedStrings.pearl.getter();
  }

  v12 = String._bridgeToObjectiveC()();

  [v11 setTitle:v12];

  v13 = [v10 callerName];
  if (!v13)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = String._bridgeToObjectiveC()();
  }

  v29 = v11;
  [v11 setMessage:v13];

  v27 = v10;
  v30 = BiometryCompanionViewController.actions.getter();
  v28 = *(v30 + 2);
  if (v28)
  {
    v14 = 0;
    v15 = &v33;
    v16 = (v30 + 64);
    while (v14 < *(v30 + 2))
    {
      v20 = *(v16 - 16);
      v19 = *(v16 - 8);
      v21 = *v16;
      outlined copy of (@escaping @callee_guaranteed () -> ())?(v19, *v16);
      outlined copy of (@escaping @callee_guaranteed () -> ())?(v19, v21);

      v22 = String._bridgeToObjectiveC()();
      if (v19)
      {
        v35 = v19;
        v36 = v21;
        aBlock = _NSConcreteStackBlock;
        v32 = 1107296256;
        v33 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
        v34 = &block_descriptor_3;
        v17 = _Block_copy(&aBlock);
      }

      else
      {
        v17 = 0;
      }

      ++v14;
      v35 = variable initialization expression of SecureUIManager.isRecording;
      v36 = 0;
      aBlock = _NSConcreteStackBlock;
      v32 = 1107296256;
      v33 = thunk for @escaping @callee_guaranteed () -> (@unowned Bool);
      v34 = &block_descriptor_1;
      v18 = _Block_copy(&aBlock);
      [v29 _addActionWithTitle:v22 style:v20 handler:v17 shouldDismissHandler:v18];
      _Block_release(v18);
      _Block_release(v17);

      outlined consume of (@escaping @callee_guaranteed () -> ())?(v19, v21);
      v16 += 40;
      if (v28 == v14)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_21:
    v24 = v27;
    if (!_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_22;
    }

    goto LABEL_16;
  }

LABEL_14:

  v15 = v29;
  v23 = [v29 actions];
  type metadata accessor for UIDevice(0, &lazy cache variable for type metadata for UIAlertAction, UIAlertAction_ptr);
  v16 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v16 >> 62)
  {
    goto LABEL_21;
  }

  v24 = v27;
  if (!*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_22:
    v26 = 0;
    goto LABEL_23;
  }

LABEL_16:
  if ((v16 & 0xC000000000000001) != 0)
  {
    v25 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_19;
  }

  if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v25 = *(v16 + 32);
LABEL_19:
    v26 = v25;
LABEL_23:

    [v15 setPreferredAction:v26];

    [v15 setPreferredStyle:1];
    [v24 presentViewController:v15 animated:1 completion:0];

    return;
  }

  __break(1u);
}

uint64_t thunk for @escaping @callee_guaranteed () -> (@unowned Bool)(uint64_t a1)
{
  v1 = *(a1 + 32);

  LOBYTE(v1) = v1(v2);

  return v1 & 1;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void BiometryCompanionViewController.dismissChild(completionHandler:)(void (*a1)(), uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v6 = [v2 presentedViewController];
  if (v6)
  {
    v7 = v6;
    v8 = swift_allocObject();
    v8[2] = v2;
    v8[3] = a1;
    v8[4] = a2;
    v16 = partial apply for closure #1 in BiometryCompanionViewController.dismissChild(completionHandler:);
    v17 = v8;
    v12 = _NSConcreteStackBlock;
    v13 = 1107296256;
    v14 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v15 = &block_descriptor_9;
    v9 = _Block_copy(&v12);
    v10 = v2;
    outlined copy of (@escaping @callee_guaranteed () -> ())?(a1, a2);

    [v7 dismissViewControllerAnimated:0 completion:v9];
    _Block_release(v9);
  }

  else
  {
    if (a1)
    {
      v16 = a1;
      v17 = a2;
      v12 = _NSConcreteStackBlock;
      v13 = 1107296256;
      v14 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
      v15 = &block_descriptor_6;
      v11 = _Block_copy(&v12);
    }

    else
    {
      v11 = 0;
    }

    v18.receiver = v2;
    v18.super_class = ObjectType;
    objc_msgSendSuper2(&v18, "dismissChildWithCompletionHandler:", v11);
    _Block_release(v11);
  }
}

uint64_t sub_1000370CC()
{
  if (*(v0 + 24))
  {
  }

  return _swift_deallocObject(v0, 40, 7);
}

void partial apply for closure #1 in BiometryCompanionViewController.dismissChild(completionHandler:)()
{
  v2 = v0[2];
  v1 = v0[3];
  if (v1)
  {
    v3 = v0[4];
    v9 = v1;
    v10 = v3;
    v6.receiver = _NSConcreteStackBlock;
    v6.super_class = 1107296256;
    v7 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v8 = &block_descriptor_18;
    v4 = _Block_copy(&v6);
  }

  else
  {
    v4 = 0;
  }

  v5 = type metadata accessor for BiometryCompanionViewController(0);
  v6.receiver = v2;
  v6.super_class = v5;
  objc_msgSendSuper2(&v6, "dismissChildWithCompletionHandler:", v4);
  _Block_release(v4);
}

id BiometryCompanionViewController.init(requestID:endpoint:)(void *a1, void *a2)
{
  ObjectType = swift_getObjectType();
  v6 = LogCategory.ui.unsafeMutableAddressor();
  Logger(category:)(*v6);
  *&v2[OBJC_IVAR____TtC28LocalAuthenticationUIService31BiometryCompanionViewController_biometryType] = 0;
  v9.receiver = v2;
  v9.super_class = ObjectType;
  v7 = objc_msgSendSuper2(&v9, "initWithRequestID:endpoint:", a1, a2);

  return v7;
}

id BiometryCompanionViewController.init(requestID:endpoint:remoteAlert:)(void *a1, void *a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v8 = LogCategory.ui.unsafeMutableAddressor();
  Logger(category:)(*v8);
  *&v3[OBJC_IVAR____TtC28LocalAuthenticationUIService31BiometryCompanionViewController_biometryType] = 0;
  v11.receiver = v3;
  v11.super_class = ObjectType;
  v9 = objc_msgSendSuper2(&v11, "initWithRequestID:endpoint:remoteAlertPresentationMode:", a1, a2, a3);

  return v9;
}

id BiometryCompanionViewController.init(internalInfo:mechanism:backoffCounter:remoteUIHost:allowsLandscape:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  ObjectType = swift_getObjectType();
  v12 = LogCategory.ui.unsafeMutableAddressor();
  Logger(category:)(*v12);
  *&v6[OBJC_IVAR____TtC28LocalAuthenticationUIService31BiometryCompanionViewController_biometryType] = 0;
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v16.receiver = v6;
  v16.super_class = ObjectType;
  v14 = objc_msgSendSuper2(&v16, "initWithInternalInfo:mechanism:backoffCounter:remoteUIHost:allowsLandscape:", isa, a2, a3, a4, a5 & 1);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v14;
}

id BiometryCompanionViewController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  ObjectType = swift_getObjectType();
  v7 = LogCategory.ui.unsafeMutableAddressor();
  Logger(category:)(*v7);
  *&v3[OBJC_IVAR____TtC28LocalAuthenticationUIService31BiometryCompanionViewController_biometryType] = 0;
  if (a2)
  {
    v8 = String._bridgeToObjectiveC()();
  }

  else
  {
    v8 = 0;
  }

  v11.receiver = v3;
  v11.super_class = ObjectType;
  v9 = objc_msgSendSuper2(&v11, "initWithNibName:bundle:", v8, a3);

  return v9;
}

id BiometryCompanionViewController.init(coder:)(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = LogCategory.ui.unsafeMutableAddressor();
  Logger(category:)(*v4);
  *&v1[OBJC_IVAR____TtC28LocalAuthenticationUIService31BiometryCompanionViewController_biometryType] = 0;
  v7.receiver = v1;
  v7.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v7, "initWithCoder:", a1);

  if (v5)
  {
  }

  return v5;
}

id BiometryCompanionViewController.init(internalInfo:parent:)(uint64_t a1, void *a2)
{
  ObjectType = swift_getObjectType();
  v5 = LogCategory.ui.unsafeMutableAddressor();
  Logger(category:)(*v5);
  *&v2[OBJC_IVAR____TtC28LocalAuthenticationUIService31BiometryCompanionViewController_biometryType] = 0;
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v7 = _bridgeAnythingToObjectiveC<A>(_:)();
  v10.receiver = v2;
  v10.super_class = ObjectType;
  v8 = objc_msgSendSuper2(&v10, "initWithInternalInfo:parent:", isa, v7);

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(a2);
  return v8;
}

uint64_t type metadata accessor for BiometryCompanionViewController(uint64_t a1)
{
  result = type metadata singleton initialization cache for BiometryCompanionViewController;
  if (!type metadata singleton initialization cache for BiometryCompanionViewController)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for BiometryCompanionViewController(uint64_t a1)
{
  result = type metadata accessor for Logger();
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

void BiometryAlertViewController.viewDidLoad()()
{
  v1 = v0;
  v7.receiver = v0;
  v7.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v7, "viewDidLoad");
  v2 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19UIHostingControllerCy28LocalAuthenticationUIService9GlyphView020_B26F7E2A4D2F232DE74L11CBBFDD99136LLVGMd, &_s7SwiftUI19UIHostingControllerCy28LocalAuthenticationUIService9GlyphView020_B26F7E2A4D2F232DE74L11CBBFDD99136LLVGMR));
  v3 = UIHostingController.init(rootView:)();
  v4 = [v3 view];
  if (v4)
  {
    v5 = v4;
    v6 = [objc_opt_self() clearColor];
    [v5 setBackgroundColor:v6];

    [v1 _setHeaderContentViewController:v3];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100037FB4()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t closure #1 in GlyphView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v64 = a1;
  v66 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4FontV6DesignOSgMd, &_s7SwiftUI4FontV6DesignOSgMR);
  __chkstk_darwin(v2 - 8);
  v65 = &v59 - v3;
  v4 = type metadata accessor for Image.ResizingMode();
  v62 = *(v4 - 8);
  v63 = v4;
  __chkstk_darwin(v4);
  v61 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for RoundedRectangle();
  v7 = v6 - 8;
  __chkstk_darwin(v6);
  v60 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA10_ShapeViewVyAA16RoundedRectangleVAA5ColorVGAA16_OverlayModifierVyAA06StrokeeF0VyAgiA05EmptyF0VGGGMd, &_s7SwiftUI15ModifiedContentVyAA10_ShapeViewVyAA16RoundedRectangleVAA5ColorVGAA16_OverlayModifierVyAA06StrokeeF0VyAgiA05EmptyF0VGGGMR);
  v10 = v9 - 8;
  v11 = __chkstk_darwin(v9);
  v67 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v59 - v13;
  v15 = *(v7 + 28);
  v16 = enum case for RoundedCornerStyle.continuous(_:);
  v17 = type metadata accessor for RoundedCornerStyle();
  v18 = *(*(v17 - 8) + 104);
  v18(&v14[v15], v16, v17);
  __asm { FMOV            V0.2D, #10.0 }

  v59 = _Q0;
  *v14 = _Q0;
  static Color.blue.getter();
  v24 = Color.opacity(_:)();

  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI10_ShapeViewVyAA16RoundedRectangleVAA5ColorVGMd, &_s7SwiftUI10_ShapeViewVyAA16RoundedRectangleVAA5ColorVGMR);
  *&v14[*(v25 + 52)] = v24;
  *&v14[*(v25 + 56)] = 256;
  v26 = *(v7 + 28);
  v27 = v60;
  v18(&v60[v26], v16, v17);
  *v27 = v59;
  v28 = v27;
  v29 = static Color.blue.getter();
  StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
  v30 = &v14[*(v10 + 44)];
  outlined init with copy of RoundedRectangle(v28, v30);
  v31 = v30 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_StrokedShapeVyAA16RoundedRectangleVGMd, &_s7SwiftUI13_StrokedShapeVyAA16RoundedRectangleVGMR) + 36);
  v32 = v79;
  *v31 = v78;
  *(v31 + 16) = v32;
  *(v31 + 32) = v80;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI10_ShapeViewVyAA08_StrokedC0VyAA16RoundedRectangleVGAA5ColorVGMd, &_s7SwiftUI10_ShapeViewVyAA08_StrokedC0VyAA16RoundedRectangleVGAA5ColorVGMR);
  *(v30 + *(v33 + 52)) = v29;
  *(v30 + *(v33 + 56)) = 256;
  v34 = static Alignment.center.getter();
  v36 = v35;
  outlined destroy of RoundedRectangle(v28);
  v37 = (v30 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA10_ShapeViewVyAA08_StrokedE0VyAA16RoundedRectangleVGAA5ColorVGAA19_BackgroundModifierVyAA05EmptyF0VGGMd, &_s7SwiftUI15ModifiedContentVyAA10_ShapeViewVyAA08_StrokedE0VyAA16RoundedRectangleVGAA5ColorVGAA19_BackgroundModifierVyAA05EmptyF0VGGMR) + 36));
  *v37 = v34;
  v37[1] = v36;
  v38 = static Alignment.center.getter();
  v40 = v39;
  v41 = (v30 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI16_OverlayModifierVyAA15StrokeShapeViewVyAA16RoundedRectangleVAA5ColorVAA05EmptyG0VGGMd, &_s7SwiftUI16_OverlayModifierVyAA15StrokeShapeViewVyAA16RoundedRectangleVAA5ColorVAA05EmptyG0VGGMR) + 36));
  *v41 = v38;
  v41[1] = v40;
  Image.init(systemName:)();
  v43 = v61;
  v42 = v62;
  v44 = v63;
  (*(v62 + 104))(v61, enum case for Image.ResizingMode.stretch(_:), v63);
  v45 = Image.resizable(capInsets:resizingMode:)();

  (*(v42 + 8))(v43, v44);
  static Font.Weight.light.getter();
  v46 = type metadata accessor for Font.Design();
  v47 = v65;
  (*(*(v46 - 8) + 56))(v65, 1, 1, v46);
  v48 = static Font.system(size:weight:design:)();
  outlined destroy of LACUIAngelConnectionHandling?(v47, &_s7SwiftUI4FontV6DesignOSgMd, &_s7SwiftUI4FontV6DesignOSgMR);
  KeyPath = swift_getKeyPath();
  v50 = static Color.blue.getter();
  v51 = swift_getKeyPath();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v52 = v67;
  outlined init with copy of LACUIAngelConnectionHandling?(v14, v67, &_s7SwiftUI15ModifiedContentVyAA10_ShapeViewVyAA16RoundedRectangleVAA5ColorVGAA16_OverlayModifierVyAA06StrokeeF0VyAgiA05EmptyF0VGGGMd, &_s7SwiftUI15ModifiedContentVyAA10_ShapeViewVyAA16RoundedRectangleVAA5ColorVGAA16_OverlayModifierVyAA06StrokeeF0VyAgiA05EmptyF0VGGGMR);
  v53 = v52;
  v54 = v66;
  outlined init with copy of LACUIAngelConnectionHandling?(v53, v66, &_s7SwiftUI15ModifiedContentVyAA10_ShapeViewVyAA16RoundedRectangleVAA5ColorVGAA16_OverlayModifierVyAA06StrokeeF0VyAgiA05EmptyF0VGGGMd, &_s7SwiftUI15ModifiedContentVyAA10_ShapeViewVyAA16RoundedRectangleVAA5ColorVGAA16_OverlayModifierVyAA06StrokeeF0VyAgiA05EmptyF0VGGGMR);
  v55 = v54 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA10_ShapeViewVyAA16RoundedRectangleVAA5ColorVGAA16_OverlayModifierVyAA06StrokeeF0VyAgiA05EmptyF0VGGG_ACyACyACyAA5ImageVAA022_EnvironmentKeyWritingK0VyAA4FontVSgGGAWyAISgGGAA12_FrameLayoutVGtMd, &_s7SwiftUI15ModifiedContentVyAA10_ShapeViewVyAA16RoundedRectangleVAA5ColorVGAA16_OverlayModifierVyAA06StrokeeF0VyAgiA05EmptyF0VGGG_ACyACyACyAA5ImageVAA022_EnvironmentKeyWritingK0VyAA4FontVSgGGAWyAISgGGAA12_FrameLayoutVGtMR) + 48);
  *&v71 = v45;
  *(&v71 + 1) = KeyPath;
  *&v72 = v48;
  *(&v72 + 1) = v51;
  *v73 = v50;
  *&v73[8] = v68;
  *&v73[24] = v69;
  *&v73[40] = v70;
  v56 = v72;
  *v55 = v71;
  *(v55 + 16) = v56;
  v57 = *&v73[16];
  *(v55 + 32) = *v73;
  *(v55 + 48) = v57;
  *(v55 + 64) = *&v73[32];
  *(v55 + 80) = *&v73[48];
  outlined init with copy of LACUIAngelConnectionHandling?(&v71, v74, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAGyAA5ColorVSgGGAA12_FrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAGyAA5ColorVSgGGAA12_FrameLayoutVGMR);
  outlined destroy of LACUIAngelConnectionHandling?(v14, &_s7SwiftUI15ModifiedContentVyAA10_ShapeViewVyAA16RoundedRectangleVAA5ColorVGAA16_OverlayModifierVyAA06StrokeeF0VyAgiA05EmptyF0VGGGMd, &_s7SwiftUI15ModifiedContentVyAA10_ShapeViewVyAA16RoundedRectangleVAA5ColorVGAA16_OverlayModifierVyAA06StrokeeF0VyAgiA05EmptyF0VGGGMR);
  v74[0] = v45;
  v74[1] = KeyPath;
  v74[2] = v48;
  v74[3] = v51;
  v74[4] = v50;
  v75 = v68;
  v76 = v69;
  v77 = v70;
  outlined destroy of LACUIAngelConnectionHandling?(v74, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAGyAA5ColorVSgGGAA12_FrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAGyAA5ColorVSgGGAA12_FrameLayoutVGMR);
  return outlined destroy of LACUIAngelConnectionHandling?(v67, &_s7SwiftUI15ModifiedContentVyAA10_ShapeViewVyAA16RoundedRectangleVAA5ColorVGAA16_OverlayModifierVyAA06StrokeeF0VyAgiA05EmptyF0VGGGMd, &_s7SwiftUI15ModifiedContentVyAA10_ShapeViewVyAA16RoundedRectangleVAA5ColorVGAA16_OverlayModifierVyAA06StrokeeF0VyAgiA05EmptyF0VGGGMR);
}

uint64_t protocol witness for View.body.getter in conformance GlyphView@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  *a1 = static Alignment.center.getter();
  a1[1] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_ZStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAA06_ShapeD0VyAA16RoundedRectangleVAA5ColorVGAA16_OverlayModifierVyAA06StrokekD0VyAoqA05EmptyD0VGGG_AKyAKyAKyAA5ImageVAA022_EnvironmentKeyWritingP0VyAA4FontVSgGGA3_yAQSgGGAA06_FrameG0VGtGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_ZStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAA06_ShapeD0VyAA16RoundedRectangleVAA5ColorVGAA16_OverlayModifierVyAA06StrokekD0VyAoqA05EmptyD0VGGG_AKyAKyAKyAA5ImageVAA022_EnvironmentKeyWritingP0VyAA4FontVSgGGA3_yAQSgGGAA06_FrameG0VGtGGMR);
  closure #1 in GlyphView.body.getter(v3, a1 + *(v5 + 44));
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v6 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6ZStackVyAA9TupleViewVyACyAA06_ShapeG0VyAA16RoundedRectangleVAA5ColorVGAA16_OverlayModifierVyAA06StrokehG0VyAkmA05EmptyG0VGGG_ACyACyACyAA5ImageVAA022_EnvironmentKeyWritingM0VyAA4FontVSgGGA_yAMSgGGAA12_FrameLayoutVGtGGA9_GMd, &_s7SwiftUI15ModifiedContentVyAA6ZStackVyAA9TupleViewVyACyAA06_ShapeG0VyAA16RoundedRectangleVAA5ColorVGAA16_OverlayModifierVyAA06StrokehG0VyAkmA05EmptyG0VGGG_ACyACyACyAA5ImageVAA022_EnvironmentKeyWritingM0VyAA4FontVSgGGA_yAMSgGGAA12_FrameLayoutVGtGGA9_GMR) + 36));
  *v6 = v26;
  v6[1] = v27;
  v6[2] = v28;
  LOBYTE(v3) = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6ZStackVyAA9TupleViewVyACyAA06_ShapeG0VyAA16RoundedRectangleVAA5ColorVGAA16_OverlayModifierVyAA06StrokehG0VyAkmA05EmptyG0VGGG_ACyACyACyAA5ImageVAA022_EnvironmentKeyWritingM0VyAA4FontVSgGGA_yAMSgGGAA12_FrameLayoutVGtGGA9_GAA08_PaddingV0VGMd, &_s7SwiftUI15ModifiedContentVyACyAA6ZStackVyAA9TupleViewVyACyAA06_ShapeG0VyAA16RoundedRectangleVAA5ColorVGAA16_OverlayModifierVyAA06StrokehG0VyAkmA05EmptyG0VGGG_ACyACyACyAA5ImageVAA022_EnvironmentKeyWritingM0VyAA4FontVSgGGA_yAMSgGGAA12_FrameLayoutVGtGGA9_GAA08_PaddingV0VGMR) + 36);
  *v15 = v3;
  *(v15 + 1) = v8;
  *(v15 + 2) = v10;
  *(v15 + 3) = v12;
  *(v15 + 4) = v14;
  v15[40] = 0;
  LOBYTE(v3) = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA6ZStackVyAA9TupleViewVyACyAA06_ShapeG0VyAA16RoundedRectangleVAA5ColorVGAA16_OverlayModifierVyAA06StrokehG0VyAkmA05EmptyG0VGGG_ACyACyACyAA5ImageVAA022_EnvironmentKeyWritingM0VyAA4FontVSgGGA_yAMSgGGAA12_FrameLayoutVGtGGA9_GAA08_PaddingV0VGA15_GMd, &_s7SwiftUI15ModifiedContentVyACyACyAA6ZStackVyAA9TupleViewVyACyAA06_ShapeG0VyAA16RoundedRectangleVAA5ColorVGAA16_OverlayModifierVyAA06StrokehG0VyAkmA05EmptyG0VGGG_ACyACyACyAA5ImageVAA022_EnvironmentKeyWritingM0VyAA4FontVSgGGA_yAMSgGGAA12_FrameLayoutVGtGGA9_GAA08_PaddingV0VGA15_GMR);
  v25 = a1 + *(result + 36);
  *v25 = v3;
  *(v25 + 1) = v17;
  *(v25 + 2) = v19;
  *(v25 + 3) = v21;
  *(v25 + 4) = v23;
  v25[40] = 0;
  return result;
}

uint64_t sub_1000388D4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t lazy protocol witness table accessor for type String and conformance String()
{
  result = lazy protocol witness table cache variable for type String and conformance String;
  if (!lazy protocol witness table cache variable for type String and conformance String)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String and conformance String);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type String and conformance String;
  if (!lazy protocol witness table cache variable for type String and conformance String)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String and conformance String);
  }

  return result;
}

void partial apply for closure #2 in BiometryCompanionViewController.actions.getter(const char **a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = *a1;
    v4 = Strong;
    [Strong v3];
  }
}

uint64_t get_enum_tag_for_layout_string_Ieg_Sg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for BiometryCompanionViewController.AlertAction(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t storeEnumTagSinglePayload for BiometryCompanionViewController.AlertAction(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t outlined init with copy of RoundedRectangle(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RoundedRectangle();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of RoundedRectangle(uint64_t a1)
{
  v2 = type metadata accessor for RoundedRectangle();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t key path getter for EnvironmentValues.font : EnvironmentValues, serialized@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.font.getter();
  *a1 = result;
  return result;
}

uint64_t key path getter for EnvironmentValues.foregroundColor : EnvironmentValues, serialized@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.foregroundColor.getter();
  *a1 = result;
  return result;
}

void type metadata accessor for LABiometryType(uint64_t a1, unint64_t *a2, uint64_t a3)
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

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ZStack<TupleView<(ModifiedContent<_ShapeView<RoundedRectangle, Color>, _OverlayModifier<StrokeShapeView<RoundedRectangle, Color, EmptyView>>>, ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>)>>, _FrameLayout>, _PaddingLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ZStack<TupleView<(ModifiedContent<_ShapeView<RoundedRectangle, Color>, _OverlayModifier<StrokeShapeView<RoundedRectangle, Color, EmptyView>>>, ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>)>>, _FrameLayout>, _PaddingLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ZStack<TupleView<(ModifiedContent<_ShapeView<RoundedRectangle, Color>, _OverlayModifier<StrokeShapeView<RoundedRectangle, Color, EmptyView>>>, ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>)>>, _FrameLayout>, _PaddingLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA6ZStackVyAA9TupleViewVyACyAA06_ShapeG0VyAA16RoundedRectangleVAA5ColorVGAA16_OverlayModifierVyAA06StrokehG0VyAkmA05EmptyG0VGGG_ACyACyACyAA5ImageVAA022_EnvironmentKeyWritingM0VyAA4FontVSgGGA_yAMSgGGAA12_FrameLayoutVGtGGA9_GAA08_PaddingV0VGA15_GMd, &_s7SwiftUI15ModifiedContentVyACyACyAA6ZStackVyAA9TupleViewVyACyAA06_ShapeG0VyAA16RoundedRectangleVAA5ColorVGAA16_OverlayModifierVyAA06StrokehG0VyAkmA05EmptyG0VGGG_ACyACyACyAA5ImageVAA022_EnvironmentKeyWritingM0VyAA4FontVSgGGA_yAMSgGGAA12_FrameLayoutVGtGGA9_GAA08_PaddingV0VGA15_GMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ZStack<TupleView<(ModifiedContent<_ShapeView<RoundedRectangle, Color>, _OverlayModifier<StrokeShapeView<RoundedRectangle, Color, EmptyView>>>, ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>)>>, _FrameLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ZStack<TupleView<(ModifiedContent<_ShapeView<RoundedRectangle, Color>, _OverlayModifier<StrokeShapeView<RoundedRectangle, Color, EmptyView>>>, ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>)>>, _FrameLayout>, _PaddingLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ZStack<TupleView<(ModifiedContent<_ShapeView<RoundedRectangle, Color>, _OverlayModifier<StrokeShapeView<RoundedRectangle, Color, EmptyView>>>, ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>)>>, _FrameLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ZStack<TupleView<(ModifiedContent<_ShapeView<RoundedRectangle, Color>, _OverlayModifier<StrokeShapeView<RoundedRectangle, Color, EmptyView>>>, ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>)>>, _FrameLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ZStack<TupleView<(ModifiedContent<_ShapeView<RoundedRectangle, Color>, _OverlayModifier<StrokeShapeView<RoundedRectangle, Color, EmptyView>>>, ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>)>>, _FrameLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA6ZStackVyAA9TupleViewVyACyAA06_ShapeG0VyAA16RoundedRectangleVAA5ColorVGAA16_OverlayModifierVyAA06StrokehG0VyAkmA05EmptyG0VGGG_ACyACyACyAA5ImageVAA022_EnvironmentKeyWritingM0VyAA4FontVSgGGA_yAMSgGGAA12_FrameLayoutVGtGGA9_GAA08_PaddingV0VGMd, &_s7SwiftUI15ModifiedContentVyACyAA6ZStackVyAA9TupleViewVyACyAA06_ShapeG0VyAA16RoundedRectangleVAA5ColorVGAA16_OverlayModifierVyAA06StrokehG0VyAkmA05EmptyG0VGGG_ACyACyACyAA5ImageVAA022_EnvironmentKeyWritingM0VyAA4FontVSgGGA_yAMSgGGAA12_FrameLayoutVGtGGA9_GAA08_PaddingV0VGMR);
    lazy protocol witness table accessor for type ModifiedContent<ZStack<TupleView<(ModifiedContent<_ShapeView<RoundedRectangle, Color>, _OverlayModifier<StrokeShapeView<RoundedRectangle, Color, EmptyView>>>, ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>)>>, _FrameLayout> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ZStack<TupleView<(ModifiedContent<_ShapeView<RoundedRectangle, Color>, _OverlayModifier<StrokeShapeView<RoundedRectangle, Color, EmptyView>>>, ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>)>>, _FrameLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ZStack<TupleView<(ModifiedContent<_ShapeView<RoundedRectangle, Color>, _OverlayModifier<StrokeShapeView<RoundedRectangle, Color, EmptyView>>>, ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>)>>, _FrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ZStack<TupleView<(ModifiedContent<_ShapeView<RoundedRectangle, Color>, _OverlayModifier<StrokeShapeView<RoundedRectangle, Color, EmptyView>>>, ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>)>>, _FrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ZStack<TupleView<(ModifiedContent<_ShapeView<RoundedRectangle, Color>, _OverlayModifier<StrokeShapeView<RoundedRectangle, Color, EmptyView>>>, ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>)>>, _FrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6ZStackVyAA9TupleViewVyACyAA06_ShapeG0VyAA16RoundedRectangleVAA5ColorVGAA16_OverlayModifierVyAA06StrokehG0VyAkmA05EmptyG0VGGG_ACyACyACyAA5ImageVAA022_EnvironmentKeyWritingM0VyAA4FontVSgGGA_yAMSgGGAA12_FrameLayoutVGtGGA9_GMd, &_s7SwiftUI15ModifiedContentVyAA6ZStackVyAA9TupleViewVyACyAA06_ShapeG0VyAA16RoundedRectangleVAA5ColorVGAA16_OverlayModifierVyAA06StrokehG0VyAkmA05EmptyG0VGGG_ACyACyACyAA5ImageVAA022_EnvironmentKeyWritingM0VyAA4FontVSgGGA_yAMSgGGAA12_FrameLayoutVGtGGA9_GMR);
    lazy protocol witness table accessor for type ZStack<TupleView<(ModifiedContent<_ShapeView<RoundedRectangle, Color>, _OverlayModifier<StrokeShapeView<RoundedRectangle, Color, EmptyView>>>, ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>)>> and conformance ZStack<A>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ZStack<TupleView<(ModifiedContent<_ShapeView<RoundedRectangle, Color>, _OverlayModifier<StrokeShapeView<RoundedRectangle, Color, EmptyView>>>, ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>)>>, _FrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ZStack<TupleView<(ModifiedContent<_ShapeView<RoundedRectangle, Color>, _OverlayModifier<StrokeShapeView<RoundedRectangle, Color, EmptyView>>>, ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>)>> and conformance ZStack<A>()
{
  result = lazy protocol witness table cache variable for type ZStack<TupleView<(ModifiedContent<_ShapeView<RoundedRectangle, Color>, _OverlayModifier<StrokeShapeView<RoundedRectangle, Color, EmptyView>>>, ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>)>> and conformance ZStack<A>;
  if (!lazy protocol witness table cache variable for type ZStack<TupleView<(ModifiedContent<_ShapeView<RoundedRectangle, Color>, _OverlayModifier<StrokeShapeView<RoundedRectangle, Color, EmptyView>>>, ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>)>> and conformance ZStack<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI6ZStackVyAA9TupleViewVyAA15ModifiedContentVyAA06_ShapeE0VyAA16RoundedRectangleVAA5ColorVGAA16_OverlayModifierVyAA06StrokehE0VyAkmA05EmptyE0VGGG_AGyAGyAGyAA5ImageVAA022_EnvironmentKeyWritingM0VyAA4FontVSgGGA_yAMSgGGAA12_FrameLayoutVGtGGMd, _s7SwiftUI6ZStackVyAA9TupleViewVyAA15ModifiedContentVyAA06_ShapeE0VyAA16RoundedRectangleVAA5ColorVGAA16_OverlayModifierVyAA06StrokehE0VyAkmA05EmptyE0VGGG_AGyAGyAGyAA5ImageVAA022_EnvironmentKeyWritingM0VyAA4FontVSgGGA_yAMSgGGAA12_FrameLayoutVGtGGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ZStack<TupleView<(ModifiedContent<_ShapeView<RoundedRectangle, Color>, _OverlayModifier<StrokeShapeView<RoundedRectangle, Color, EmptyView>>>, ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>)>> and conformance ZStack<A>);
  }

  return result;
}

void RemoteAlertRootViewController.handle(request:)(void *a1)
{
  v2 = v1;
  v4 = [a1 userInterfaceRequest];
  v5 = [v4 identifier];

  if (v5 > 2)
  {
    if (v5 != 3)
    {
      if (v5 != 5)
      {
        goto LABEL_13;
      }

      v8 = objc_opt_self();
      if (([v8 deviceHasFaceID] & 1) == 0 && !objc_msgSend(v8, "deviceHasTouchID"))
      {
        [v8 deviceHasOpticID];
      }

      v19 = DTOBiometryAlertFactoryInit();
      v20 = objc_allocWithZone(type metadata accessor for LACUIDTOBiometryRequiredScenePresentationHandler());
      v7 = LACUIDTOBiometryRequiredScenePresentationHandler.init(biometryType:alertFactory:)();
      if (!v7)
      {
        goto LABEL_13;
      }

      goto LABEL_17;
    }

    v10 = objc_allocWithZone(type metadata accessor for LACUIOnenessUnsatisfiablePresentationHandler());
    v11 = a1;
    v7 = LACUIOnenessUnsatisfiablePresentationHandler.init(request:)();
    if (v7)
    {
      goto LABEL_17;
    }

LABEL_13:
    v12 = [v2 scene];
    _StringGuts.grow(_:)(24);

    v13 = [a1 description];
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;

    v17._countAndFlagsBits = v14;
    v17._object = v16;
    String.append(_:)(v17);

    v18._countAndFlagsBits = 0x756F6620746F6E20;
    v18._object = 0xEA0000000000646ELL;
    String.append(_:)(v18);
    v21 = String._bridgeToObjectiveC()();

    [v12 deactivateWithReason:v21];
    goto LABEL_18;
  }

  if (v5 == 1)
  {
    v9 = objc_allocWithZone(type metadata accessor for LACUIDTOSensorNotTrustedScenePresentationHandler());
    v7 = LACUIDTOSensorNotTrustedScenePresentationHandler.init()();
    if (v7)
    {
      goto LABEL_17;
    }

    goto LABEL_13;
  }

  if (v5 != 2)
  {
    goto LABEL_13;
  }

  v6 = objc_allocWithZone(type metadata accessor for LACUIDTOSensorNotTrustedStrictModeScenePresentationHandler());
  v7 = LACUIDTOSensorNotTrustedStrictModeScenePresentationHandler.init()();
  if (!v7)
  {
    goto LABEL_13;
  }

LABEL_17:
  v21 = [objc_allocWithZone(LACUIScenePresentationContext) initWithPresenter:v2 scene:{objc_msgSend(v2, "scene")}];
  swift_unknownObjectRelease();
  [v7 handle:a1 inContext:v21];
LABEL_18:
  swift_unknownObjectRelease();
}

id RemoteAlertRootViewController.__allocating_init(scene:)(uint64_t a1)
{
  v2 = [objc_allocWithZone(v1) initWithScene:a1];
  swift_unknownObjectRelease();
  return v2;
}

id RemoteAlertRootViewController.init(scene:)(uint64_t a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for RemoteAlertRootViewController();
  v3 = objc_msgSendSuper2(&v5, "initWithScene:", a1);
  swift_unknownObjectRelease();
  return v3;
}

id RemoteAlertRootViewController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v5 = String._bridgeToObjectiveC()();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v3;
  v8.super_class = type metadata accessor for RemoteAlertRootViewController();
  v6 = objc_msgSendSuper2(&v8, "initWithNibName:bundle:", v5, a3);

  return v6;
}

id RemoteAlertRootViewController.init(coder:)(void *a1, uint64_t a2)
{
  v6.receiver = v2;
  v6.super_class = type metadata accessor for RemoteAlertRootViewController();
  v4 = objc_msgSendSuper2(&v6, "initWithCoder:", a1);

  if (v4)
  {
  }

  return v4;
}

id RemoteAlertRootViewController.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for RemoteAlertRootViewController();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t *TransitionViewModel.shared.unsafeMutableAddressor()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  return &static TransitionViewModel.shared;
}

id static TransitionViewModel.shared.getter()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v1 = static TransitionViewModel.shared;

  return v1;
}

id variable initialization expression of TransitionViewModel.delegates()
{
  v0 = [objc_opt_self() hashTableWithOptions:5];

  return v0;
}

id TransitionViewModel.delegates.getter()
{
  v1 = OBJC_IVAR____TtC28LocalAuthenticationUIService19TransitionViewModel_delegates;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void TransitionViewModel.delegates.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC28LocalAuthenticationUIService19TransitionViewModel_delegates;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t TransitionViewModel.connection.getter(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v3);

  return v3;
}

uint64_t TransitionViewModel.controllerToShow.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v1);

  return v1;
}

uint64_t property wrapper backing initializer of TransitionViewModel.completionHandler(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v4 = swift_allocObject();
    *(v4 + 16) = a1;
    *(v4 + 24) = a2;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySb_s5Error_pSgtcSgMd, &_sySb_s5Error_pSgtcSgMR);
  return Published.init(initialValue:)();
}

uint64_t (*TransitionViewModel.completionHandler.getter())()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(v4);

  v0 = v4[0];
  if (!v4[0])
  {
    return 0;
  }

  v1 = v4[1];
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = v1;
  return thunk for @escaping @callee_guaranteed (@in_guaranteed Bool, @in_guaranteed Error?) -> (@out ())partial apply;
}

uint64_t sub_100039BE0()
{

  return _swift_deallocObject(v0, 32, 7);
}

id TransitionViewModel.().init()()
{
  ObjectType = swift_getObjectType();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVyySb_s5Error_pSgtcSgGMd, &_s7Combine9PublishedVyySb_s5Error_pSgtcSgGMR);
  v45 = *(v1 - 8);
  v46 = v1;
  __chkstk_darwin(v1);
  v44 = &v34 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo21LACRemoteUIControllerVSgGMd, &_s7Combine9PublishedVySo21LACRemoteUIControllerVSgGMR);
  v42 = *(v3 - 8);
  v43 = v3;
  __chkstk_darwin(v3);
  v41 = &v34 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySDys11AnyHashableVypGSgGMd, &_s7Combine9PublishedVySDys11AnyHashableVypGSgGMR);
  v39 = *(v5 - 8);
  v40 = v5;
  __chkstk_darwin(v5);
  v38 = &v34 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo17LACBackoffCounter_pSgGMd, &_s7Combine9PublishedVySo17LACBackoffCounter_pSgGMR);
  v36 = *(v7 - 8);
  v37 = v7;
  __chkstk_darwin(v7);
  v35 = &v34 - v8;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo14LACUIMechanism_pSgGMd, &_s7Combine9PublishedVySo14LACUIMechanism_pSgGMR);
  v9 = *(v34 - 8);
  __chkstk_darwin(v34);
  v11 = &v34 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo15LACRemoteUIHost_pSgGMd, &_s7Combine9PublishedVySo15LACRemoteUIHost_pSgGMR);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v34 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo15NSXPCConnectionCSgGMd, &_s7Combine9PublishedVySo15NSXPCConnectionCSgGMR);
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v34 - v18;
  v20 = OBJC_IVAR____TtC28LocalAuthenticationUIService19TransitionViewModel_delegates;
  *&v0[v20] = [objc_opt_self() hashTableWithOptions:5];
  v21 = OBJC_IVAR____TtC28LocalAuthenticationUIService19TransitionViewModel__connection;
  v49 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo15NSXPCConnectionCSgMd, &_sSo15NSXPCConnectionCSgMR);
  Published.init(initialValue:)();
  (*(v17 + 32))(&v0[v21], v19, v16);
  v22 = OBJC_IVAR____TtC28LocalAuthenticationUIService19TransitionViewModel__remoteUIHost;
  v49 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo15LACRemoteUIHost_pSgMd, &_sSo15LACRemoteUIHost_pSgMR);
  Published.init(initialValue:)();
  (*(v13 + 32))(&v0[v22], v15, v12);
  v23 = OBJC_IVAR____TtC28LocalAuthenticationUIService19TransitionViewModel__mechanism;
  v49 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo14LACUIMechanism_pSgMd, &_sSo14LACUIMechanism_pSgMR);
  Published.init(initialValue:)();
  (*(v9 + 32))(&v0[v23], v11, v34);
  v24 = OBJC_IVAR____TtC28LocalAuthenticationUIService19TransitionViewModel__backoffCounter;
  v49 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo17LACBackoffCounter_pSgMd, &_sSo17LACBackoffCounter_pSgMR);
  v25 = v35;
  Published.init(initialValue:)();
  (*(v36 + 32))(&v0[v24], v25, v37);
  v26 = OBJC_IVAR____TtC28LocalAuthenticationUIService19TransitionViewModel__internalInfo;
  v49 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys11AnyHashableVypGSgMd, &_sSDys11AnyHashableVypGSgMR);
  v27 = v38;
  Published.init(initialValue:)();
  (*(v39 + 32))(&v0[v26], v27, v40);
  v28 = OBJC_IVAR____TtC28LocalAuthenticationUIService19TransitionViewModel__controllerToShow;
  v49 = 0;
  LOBYTE(v50) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo21LACRemoteUIControllerVSgMd, &_sSo21LACRemoteUIControllerVSgMR);
  v29 = v41;
  Published.init(initialValue:)();
  (*(v42 + 32))(&v0[v28], v29, v43);
  v30 = OBJC_IVAR____TtC28LocalAuthenticationUIService19TransitionViewModel__completionHandler;
  v49 = 0;
  v50 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySb_s5Error_pSgtcSgMd, &_sySb_s5Error_pSgtcSgMR);
  v31 = v44;
  Published.init(initialValue:)();
  (*(v45 + 32))(&v0[v30], v31, v46);
  *&v0[OBJC_IVAR____TtC28LocalAuthenticationUIService19TransitionViewModel_disposeBag] = &_swiftEmptySetSingleton;
  v32 = LogCategory.ui.unsafeMutableAddressor();
  Logger(category:)(*v32);
  v48.receiver = v0;
  v48.super_class = ObjectType;
  return objc_msgSendSuper2(&v48, "init");
}

id TransitionViewModel.childController(for:type:allowsLandscape:)(unint64_t a1, uint64_t a2, char a3)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v43);

  v6 = v43;
  if (!v43)
  {
LABEL_13:
    v43 = 0;
    v44 = 0xE000000000000000;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter(&v45);

    if (v45)
    {
    }

    else
    {
      v11._countAndFlagsBits = 0x6C616E7265746E69;
      v11._object = 0xEC0000006F666E49;
      String.append(_:)(v11);
    }

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter(&v45);

    if (v45)
    {
      swift_unknownObjectRelease();
    }

    else
    {
      v12._countAndFlagsBits = 0x696E616863656D20;
      v12._object = 0xEA00000000006D73;
      String.append(_:)(v12);
    }

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter(&v45);

    if (v45)
    {
      swift_unknownObjectRelease();
    }

    else
    {
      v13._countAndFlagsBits = 0x5565746F6D657220;
      v13._object = 0xED000074736F4849;
      String.append(_:)(v13);
    }

    v15 = v43;
    v14 = v44;

    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v45 = v19;
      *v18 = 136315138;
      v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v14, &v45);

      *(v18 + 4) = v20;
      _os_log_impl(&_mh_execute_header, v16, v17, "Missing needed informations: %s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v19);
    }

    else
    {
    }

    return 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v43);

  v7 = v43;
  if (!v43)
  {

    goto LABEL_13;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v43);

  v8 = v43;
  if (!v43)
  {

    swift_unknownObjectRelease();
    goto LABEL_13;
  }

  if (a2 <= 2)
  {
    if (a2 == 1)
    {
      if (a1 > 5)
      {

        v25 = Logger.logObject.getter();
        v26 = static os_log_type_t.error.getter();
        if (!os_log_type_enabled(v25, v26))
        {
          goto LABEL_53;
        }

        v27 = swift_slowAlloc();
        *v27 = 134217984;
        *(v27 + 4) = a1;
        v28 = "Unsupported SBUIRemoteAlertViewControllerPresentationMode %ld";
        goto LABEL_51;
      }

      if (((1 << a1) & 0x15) == 0)
      {
        if (((1 << a1) & 0xA) != 0)
        {
          type metadata accessor for BiometryCompanionViewController(0);
          swift_getKeyPath();
          swift_getKeyPath();
          static Published.subscript.getter(&v43);

          v37 = ComplementaryPasscodeViewController.__allocating_init(internalInfo:mechanism:backoffCounter:remoteUIHost:allowsLandscape:)(v6, v7, v43, v8, a3 & 1);
          v38 = OBJC_IVAR____TtC28LocalAuthenticationUIService31BiometryCompanionViewController_biometryType;
          swift_beginAccess();
          result = v37;
          *&v37[v38] = 1;
          return result;
        }

LABEL_58:

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        return 0;
      }

      v29.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter(&v43);

      v30 = TouchIdViewControllerInit(v29.super.isa, v7, v43, v8, a3 & 1);
    }

    else
    {
      if (a2 != 2 || a1 > 5)
      {
        goto LABEL_41;
      }

      if (((1 << a1) & 5) == 0)
      {
        if (((1 << a1) & 0xA) != 0)
        {
          type metadata accessor for ComplementaryPasscodeViewController();
          swift_getKeyPath();
          swift_getKeyPath();
          static Published.subscript.getter(&v43);

          return ComplementaryPasscodeViewController.__allocating_init(internalInfo:mechanism:backoffCounter:remoteUIHost:allowsLandscape:)(v6, v7, v43, v8, a3 & 1);
        }

        v25 = Logger.logObject.getter();
        v41 = static os_log_type_t.info.getter();
        if (!os_log_type_enabled(v25, v41))
        {
          goto LABEL_53;
        }

        v42 = swift_slowAlloc();
        *v42 = 0;
        v28 = "We present passcode view controller on primary display only";
        v33 = v41;
        v34 = v25;
        v35 = v42;
        v36 = 2;
        goto LABEL_52;
      }

      v29.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter(&v43);

      v30 = PasscodeViewControllerInit(v29.super.isa, v7, v43, v8, a3 & 1);
    }

    v24 = v30;

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    goto LABEL_61;
  }

  if (a2 == 3)
  {
    if (a1 > 5)
    {
      goto LABEL_41;
    }

    if (((1 << a1) & 0x15) != 0)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter(&v43);

      v9 = v43;
      v10 = PinViewController;
      goto LABEL_40;
    }

    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v25, v26))
    {
      goto LABEL_53;
    }

    v31 = swift_slowAlloc();
    v27 = v31;
    *v31 = 134349056;
    v32 = 3;
    goto LABEL_50;
  }

  if (a2 == 4)
  {
    if (a1 > 5)
    {
      goto LABEL_41;
    }

    if (((1 << a1) & 0x15) != 0)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter(&v43);

      v9 = v43;
      v10 = PasswordViewController;
      goto LABEL_40;
    }

    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v25, v26))
    {
      goto LABEL_53;
    }

    v31 = swift_slowAlloc();
    v27 = v31;
    *v31 = 134349056;
    v32 = 4;
LABEL_50:
    *(v31 + 4) = v32;
    v28 = "We do not support showing content on external display for this type %{public}ld";
    goto LABEL_51;
  }

  if (a2 == 5 && a1 <= 5)
  {
    if (((1 << a1) & 0x15) != 0)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter(&v43);

      v9 = v43;
      v10 = FaceIdViewController;
LABEL_40:
      v22 = objc_allocWithZone(v10);
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      v24 = [v22 initWithInternalInfo:isa mechanism:v7 backoffCounter:v9 remoteUIHost:v8 allowsLandscape:a3 & 1];

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
LABEL_61:
      swift_unknownObjectRelease();
      return v24;
    }

    if (((1 << a1) & 0xA) != 0)
    {
      type metadata accessor for BiometryCompanionViewController(0);
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter(&v43);

      v39 = ComplementaryPasscodeViewController.__allocating_init(internalInfo:mechanism:backoffCounter:remoteUIHost:allowsLandscape:)(v6, v7, v43, v8, a3 & 1);
      v40 = OBJC_IVAR____TtC28LocalAuthenticationUIService31BiometryCompanionViewController_biometryType;
      swift_beginAccess();
      result = v39;
      *&v39[v40] = 2;
      return result;
    }

    goto LABEL_58;
  }

LABEL_41:

  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 134349056;
    *(v27 + 4) = a1;
    v28 = "Unsupported SBUIRemoteAlertViewControllerPresentationMode %{public}ld";
LABEL_51:
    v33 = v26;
    v34 = v25;
    v35 = v27;
    v36 = 12;
LABEL_52:
    _os_log_impl(&_mh_execute_header, v34, v33, v28, v35, v36);
  }

LABEL_53:

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return 0;
}

uint64_t TransitionViewModel.setupBinding()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMR);
  __chkstk_darwin(v1 - 8);
  v97 = v56 - v2;
  v3 = type metadata accessor for NSRunLoop.SchedulerTimeType.Stride();
  v98 = *(v3 - 8);
  v99 = v3;
  __chkstk_darwin(v3);
  v96 = v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVyySb_s5Error_pSgtcSg_GMd, &_s7Combine9PublishedV9PublisherVyySb_s5Error_pSgtcSg_GMR);
  __chkstk_darwin(v95);
  v93 = (v56 - v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo21LACRemoteUIControllerVSg_GMd, &_s7Combine9PublishedV9PublisherVySo21LACRemoteUIControllerVSg_GMR);
  v7 = *(v6 - 8);
  v90 = v6;
  v91 = v7;
  __chkstk_darwin(v6);
  v84 = v56 - v8;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO10CompactMapVy_AA9PublishedV9PublisherVySo21LACRemoteUIControllerVSg_GAKGMd, &_s7Combine10PublishersO10CompactMapVy_AA9PublishedV9PublisherVySo21LACRemoteUIControllerVSg_GAKGMR);
  __chkstk_darwin(v94);
  v86 = v56 - v9;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySDys11AnyHashableVypGSg_GMd, &_s7Combine9PublishedV9PublisherVySDys11AnyHashableVypGSg_GMR);
  v80 = *(v79 - 8);
  __chkstk_darwin(v79);
  v72 = v56 - v10;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO10CompactMapVy_AA9PublishedV9PublisherVySDys11AnyHashableVypGSg_GALGMd, &_s7Combine10PublishersO10CompactMapVy_AA9PublishedV9PublisherVySDys11AnyHashableVypGSg_GALGMR);
  __chkstk_darwin(v92);
  v76 = v56 - v11;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo17LACBackoffCounter_pSg_GMd, &_s7Combine9PublishedV9PublisherVySo17LACBackoffCounter_pSg_GMR);
  __chkstk_darwin(v68);
  v66 = v56 - v12;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo14LACUIMechanism_pSg_GMd, &_s7Combine9PublishedV9PublisherVySo14LACUIMechanism_pSg_GMR);
  v64 = *(v63 - 8);
  __chkstk_darwin(v63);
  v14 = v56 - v13;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO10CompactMapVy_AA9PublishedV9PublisherVySo14LACUIMechanism_pSg_GSoAJ_pGMd, &_s7Combine10PublishersO10CompactMapVy_AA9PublishedV9PublisherVySo14LACUIMechanism_pSg_GSoAJ_pGMR);
  __chkstk_darwin(v67);
  v61 = v56 - v15;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo15LACRemoteUIHost_pSg_GMd, &_s7Combine9PublishedV9PublisherVySo15LACRemoteUIHost_pSg_GMR);
  v16 = *(v59 - 8);
  __chkstk_darwin(v59);
  v18 = v56 - v17;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO10CompactMapVy_AA9PublishedV9PublisherVySo15LACRemoteUIHost_pSg_GSoAJ_pGMd, &_s7Combine10PublishersO10CompactMapVy_AA9PublishedV9PublisherVySo15LACRemoteUIHost_pSg_GSoAJ_pGMR);
  __chkstk_darwin(v65);
  v58 = v56 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo15NSXPCConnectionCSg_GMd, &_s7Combine9PublishedV9PublisherVySo15NSXPCConnectionCSg_GMR);
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = v56 - v22;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO10CompactMapVy_AA9PublishedV9PublisherVySo15NSXPCConnectionCSg_GAKGMd, &_s7Combine10PublishersO10CompactMapVy_AA9PublishedV9PublisherVySo15NSXPCConnectionCSg_GAKGMR);
  __chkstk_darwin(v62);
  v56[1] = v56 - v24;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO0A7Latest4Vy_AC10CompactMapVy_AA9PublishedV9PublisherVySo15NSXPCConnectionCSg_GAMGAGy_AKySo15LACRemoteUIHost_pSg_GSoAQ_pGAGy_AKySo14LACUIMechanism_pSg_GSoAU_pGAKySo17LACBackoffCounter_pSg_GGMd, &_s7Combine10PublishersO0A7Latest4Vy_AC10CompactMapVy_AA9PublishedV9PublisherVySo15NSXPCConnectionCSg_GAMGAGy_AKySo15LACRemoteUIHost_pSg_GSoAQ_pGAGy_AKySo14LACUIMechanism_pSg_GSoAU_pGAKySo17LACBackoffCounter_pSg_GGMR);
  __chkstk_darwin(v71);
  v60 = v56 - v25;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO0A7Latest4Vy_AEy_AC10CompactMapVy_AA9PublishedV9PublisherVySo15NSXPCConnectionCSg_GAMGAGy_AKySo15LACRemoteUIHost_pSg_GSoAQ_pGAGy_AKySo14LACUIMechanism_pSg_GSoAU_pGAKySo17LACBackoffCounter_pSg_GGAGy_AKySDys11AnyHashableVypGSg_GA3_GAGy_AKySo0I12UIControllerVSg_GA8_GAKyySb_s5Error_pSgtcSg_GGMd, &_s7Combine10PublishersO0A7Latest4Vy_AEy_AC10CompactMapVy_AA9PublishedV9PublisherVySo15NSXPCConnectionCSg_GAMGAGy_AKySo15LACRemoteUIHost_pSg_GSoAQ_pGAGy_AKySo14LACUIMechanism_pSg_GSoAU_pGAKySo17LACBackoffCounter_pSg_GGAGy_AKySDys11AnyHashableVypGSg_GA3_GAGy_AKySo0I12UIControllerVSg_GA8_GAKyySb_s5Error_pSgtcSg_GGMR);
  v75 = *(v73 - 8);
  __chkstk_darwin(v73);
  v69 = v56 - v26;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO3MapVy_AC0A7Latest4Vy_AGy_AC07CompactC0Vy_AA9PublishedV9PublisherVySo15NSXPCConnectionCSg_GAOGAIy_AMySo15LACRemoteUIHost_pSg_GSoAS_pGAIy_AMySo14LACUIMechanism_pSg_GSoAW_pGAMySo17LACBackoffCounter_pSg_GGAIy_AMySDys11AnyHashableVypGSg_GA5_GAIy_AMySo0I12UIControllerVSg_GA10_GAMyySb_s5Error_pSgtcSg_GGAO10connection_SoAS_p06remoteJ0SoAW_p9mechanismA0_07backoffM0A5_12internalInfoA10_16controllerToShowA16_17completionHandlertGMd, &_s7Combine10PublishersO3MapVy_AC0A7Latest4Vy_AGy_AC07CompactC0Vy_AA9PublishedV9PublisherVySo15NSXPCConnectionCSg_GAOGAIy_AMySo15LACRemoteUIHost_pSg_GSoAS_pGAIy_AMySo14LACUIMechanism_pSg_GSoAW_pGAMySo17LACBackoffCounter_pSg_GGAIy_AMySDys11AnyHashableVypGSg_GA5_GAIy_AMySo0I12UIControllerVSg_GA10_GAMyySb_s5Error_pSgtcSg_GGAO10connection_SoAS_p06remoteJ0SoAW_p9mechanismA0_07backoffM0A5_12internalInfoA10_16controllerToShowA16_17completionHandlertGMR);
  v77 = *(v74 - 8);
  __chkstk_darwin(v74);
  v70 = v56 - v27;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO3MapVy_AC0A7Latest4Vy_AGy_AC07CompactC0Vy_AA9PublishedV9PublisherVySo15NSXPCConnectionCSg_GAOGAIy_AMySo15LACRemoteUIHost_pSg_GSoAS_pGAIy_AMySo14LACUIMechanism_pSg_GSoAW_pGAMySo17LACBackoffCounter_pSg_GGAIy_AMySDys11AnyHashableVypGSg_GA5_GAIy_AMySo0I12UIControllerVSg_GA10_GAMyySb_s5Error_pSgtcSg_GGA10_10controller_A5_12internalInfoSoAW_p9mechanismA16_17completionHandlertGMd, &_s7Combine10PublishersO3MapVy_AC0A7Latest4Vy_AGy_AC07CompactC0Vy_AA9PublishedV9PublisherVySo15NSXPCConnectionCSg_GAOGAIy_AMySo15LACRemoteUIHost_pSg_GSoAS_pGAIy_AMySo14LACUIMechanism_pSg_GSoAW_pGAMySo17LACBackoffCounter_pSg_GGAIy_AMySDys11AnyHashableVypGSg_GA5_GAIy_AMySo0I12UIControllerVSg_GA10_GAMyySb_s5Error_pSgtcSg_GGA10_10controller_A5_12internalInfoSoAW_p9mechanismA16_17completionHandlertGMR);
  v83 = *(v81 - 8);
  __chkstk_darwin(v81);
  v100 = v56 - v28;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO8DebounceVy_AC3MapVy_AC0A7Latest4Vy_AIy_AC07CompactD0Vy_AA9PublishedV9PublisherVySo15NSXPCConnectionCSg_GAQGAKy_AOySo15LACRemoteUIHost_pSg_GSoAU_pGAKy_AOySo14LACUIMechanism_pSg_GSoAY_pGAOySo17LACBackoffCounter_pSg_GGAKy_AOySDys11AnyHashableVypGSg_GA7_GAKy_AOySo0J12UIControllerVSg_GA12_GAOyySb_s5Error_pSgtcSg_GGA12_10controller_A7_12internalInfoSoAY_p9mechanismA18_17completionHandlertGSo9NSRunLoopCGMd, &_s7Combine10PublishersO8DebounceVy_AC3MapVy_AC0A7Latest4Vy_AIy_AC07CompactD0Vy_AA9PublishedV9PublisherVySo15NSXPCConnectionCSg_GAQGAKy_AOySo15LACRemoteUIHost_pSg_GSoAU_pGAKy_AOySo14LACUIMechanism_pSg_GSoAY_pGAOySo17LACBackoffCounter_pSg_GGAKy_AOySDys11AnyHashableVypGSg_GA7_GAKy_AOySo0J12UIControllerVSg_GA12_GAOyySb_s5Error_pSgtcSg_GGA12_10controller_A7_12internalInfoSoAY_p9mechanismA18_17completionHandlertGSo9NSRunLoopCGMR);
  v87 = *(v85 - 8);
  __chkstk_darwin(v85);
  v78 = v56 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO9ReceiveOnVy_AC8DebounceVy_AC3MapVy_AC0A7Latest4Vy_AKy_AC07CompactF0Vy_AA9PublishedV9PublisherVySo15NSXPCConnectionCSg_GASGAMy_AQySo15LACRemoteUIHost_pSg_GSoAW_pGAMy_AQySo14LACUIMechanism_pSg_GSoA__pGAQySo17LACBackoffCounter_pSg_GGAMy_AQySDys11AnyHashableVypGSg_GA9_GAMy_AQySo0L12UIControllerVSg_GA14_GAQyySb_s5Error_pSgtcSg_GGA14_10controller_A9_12internalInfoSoA__p9mechanismA20_17completionHandlertGSo9NSRunLoopCGA29_GMd, &_s7Combine10PublishersO9ReceiveOnVy_AC8DebounceVy_AC3MapVy_AC0A7Latest4Vy_AKy_AC07CompactF0Vy_AA9PublishedV9PublisherVySo15NSXPCConnectionCSg_GASGAMy_AQySo15LACRemoteUIHost_pSg_GSoAW_pGAMy_AQySo14LACUIMechanism_pSg_GSoA__pGAQySo17LACBackoffCounter_pSg_GGAMy_AQySDys11AnyHashableVypGSg_GA9_GAMy_AQySo0L12UIControllerVSg_GA14_GAQyySb_s5Error_pSgtcSg_GGA14_10controller_A9_12internalInfoSoA__p9mechanismA20_17completionHandlertGSo9NSRunLoopCGA29_GMR);
  v31 = *(v30 - 8);
  v88 = v30;
  v89 = v31;
  __chkstk_darwin(v30);
  v82 = v56 - v32;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo15NSXPCConnectionCSgGMd, &_s7Combine9PublishedVySo15NSXPCConnectionCSgGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  type metadata accessor for UIDevice(0, &lazy cache variable for type metadata for NSXPCConnection, NSXPCConnection_ptr);
  lazy protocol witness table accessor for type Published<NSXPCConnection?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type Published<NSXPCConnection?>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVySo15NSXPCConnectionCSg_GMd, &_s7Combine9PublishedV9PublisherVySo15NSXPCConnectionCSg_GMR, &protocol conformance descriptor for Published<A>.Publisher);
  Publisher.compactMap<A>(_:)();
  (*(v21 + 8))(v23, v20);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo15LACRemoteUIHost_pSgGMd, &_s7Combine9PublishedVySo15LACRemoteUIHost_pSgGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo15LACRemoteUIHost_pMd, &_sSo15LACRemoteUIHost_pMR);
  lazy protocol witness table accessor for type Published<NSXPCConnection?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type Published<LACRemoteUIHost?>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVySo15LACRemoteUIHost_pSg_GMd, &_s7Combine9PublishedV9PublisherVySo15LACRemoteUIHost_pSg_GMR, &protocol conformance descriptor for Published<A>.Publisher);
  v33 = v59;
  Publisher.compactMap<A>(_:)();
  (*(v16 + 8))(v18, v33);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo14LACUIMechanism_pSgGMd, &_s7Combine9PublishedVySo14LACUIMechanism_pSgGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo14LACUIMechanism_pMd, &_sSo14LACUIMechanism_pMR);
  lazy protocol witness table accessor for type Published<NSXPCConnection?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type Published<LACUIMechanism?>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVySo14LACUIMechanism_pSg_GMd, &_s7Combine9PublishedV9PublisherVySo14LACUIMechanism_pSg_GMR, &protocol conformance descriptor for Published<A>.Publisher);
  v34 = v63;
  Publisher.compactMap<A>(_:)();
  (*(v64 + 8))(v14, v34);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo17LACBackoffCounter_pSgGMd, &_s7Combine9PublishedVySo17LACBackoffCounter_pSgGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  lazy protocol witness table accessor for type Published<NSXPCConnection?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type Publishers.CompactMap<Published<NSXPCConnection?>.Publisher, NSXPCConnection> and conformance Publishers.CompactMap<A, B>, &_s7Combine10PublishersO10CompactMapVy_AA9PublishedV9PublisherVySo15NSXPCConnectionCSg_GAKGMd, &_s7Combine10PublishersO10CompactMapVy_AA9PublishedV9PublisherVySo15NSXPCConnectionCSg_GAKGMR, &protocol conformance descriptor for Publishers.CompactMap<A, B>);
  lazy protocol witness table accessor for type Published<NSXPCConnection?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type Publishers.CompactMap<Published<LACRemoteUIHost?>.Publisher, LACRemoteUIHost> and conformance Publishers.CompactMap<A, B>, &_s7Combine10PublishersO10CompactMapVy_AA9PublishedV9PublisherVySo15LACRemoteUIHost_pSg_GSoAJ_pGMd, &_s7Combine10PublishersO10CompactMapVy_AA9PublishedV9PublisherVySo15LACRemoteUIHost_pSg_GSoAJ_pGMR, &protocol conformance descriptor for Publishers.CompactMap<A, B>);
  lazy protocol witness table accessor for type Published<NSXPCConnection?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type Publishers.CompactMap<Published<LACUIMechanism?>.Publisher, LACUIMechanism> and conformance Publishers.CompactMap<A, B>, &_s7Combine10PublishersO10CompactMapVy_AA9PublishedV9PublisherVySo14LACUIMechanism_pSg_GSoAJ_pGMd, &_s7Combine10PublishersO10CompactMapVy_AA9PublishedV9PublisherVySo14LACUIMechanism_pSg_GSoAJ_pGMR, &protocol conformance descriptor for Publishers.CompactMap<A, B>);
  lazy protocol witness table accessor for type Published<NSXPCConnection?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type Published<LACBackoffCounter?>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVySo17LACBackoffCounter_pSg_GMd, &_s7Combine9PublishedV9PublisherVySo17LACBackoffCounter_pSg_GMR, &protocol conformance descriptor for Published<A>.Publisher);
  Publishers.CombineLatest4.init(_:_:_:_:)();
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySDys11AnyHashableVypGSgGMd, &_s7Combine9PublishedVySDys11AnyHashableVypGSgGMR);
  v35 = v72;
  Published.projectedValue.getter();
  swift_endAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys11AnyHashableVypGMd, &_sSDys11AnyHashableVypGMR);
  lazy protocol witness table accessor for type Published<NSXPCConnection?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type Published<[AnyHashable : Any]?>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVySDys11AnyHashableVypGSg_GMd, &_s7Combine9PublishedV9PublisherVySDys11AnyHashableVypGSg_GMR, &protocol conformance descriptor for Published<A>.Publisher);
  v36 = v79;
  Publisher.compactMap<A>(_:)();
  (*(v80 + 8))(v35, v36);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo21LACRemoteUIControllerVSgGMd, &_s7Combine9PublishedVySo21LACRemoteUIControllerVSgGMR);
  v37 = v84;
  Published.projectedValue.getter();
  swift_endAccess();
  type metadata accessor for LACRemoteUIController();
  lazy protocol witness table accessor for type Published<NSXPCConnection?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type Published<LACRemoteUIController?>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVySo21LACRemoteUIControllerVSg_GMd, &_s7Combine9PublishedV9PublisherVySo21LACRemoteUIControllerVSg_GMR, &protocol conformance descriptor for Published<A>.Publisher);
  v38 = v90;
  Publisher.compactMap<A>(_:)();
  (*(v91 + 8))(v37, v38);
  v57 = v0;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVyySb_s5Error_pSgtcSgGMd, &_s7Combine9PublishedVyySb_s5Error_pSgtcSgGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  lazy protocol witness table accessor for type Published<NSXPCConnection?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type Publishers.CombineLatest4<Publishers.CompactMap<Published<NSXPCConnection?>.Publisher, NSXPCConnection>, Publishers.CompactMap<Published<LACRemoteUIHost?>.Publisher, LACRemoteUIHost>, Publishers.CompactMap<Published<LACUIMechanism?>.Publisher, LACUIMechanism>, Published<LACBackoffCounter?>.Publisher> and conformance Publishers.CombineLatest4<A, B, C, D>, &_s7Combine10PublishersO0A7Latest4Vy_AC10CompactMapVy_AA9PublishedV9PublisherVySo15NSXPCConnectionCSg_GAMGAGy_AKySo15LACRemoteUIHost_pSg_GSoAQ_pGAGy_AKySo14LACUIMechanism_pSg_GSoAU_pGAKySo17LACBackoffCounter_pSg_GGMd, &_s7Combine10PublishersO0A7Latest4Vy_AC10CompactMapVy_AA9PublishedV9PublisherVySo15NSXPCConnectionCSg_GAMGAGy_AKySo15LACRemoteUIHost_pSg_GSoAQ_pGAGy_AKySo14LACUIMechanism_pSg_GSoAU_pGAKySo17LACBackoffCounter_pSg_GGMR, &protocol conformance descriptor for Publishers.CombineLatest4<A, B, C, D>);
  lazy protocol witness table accessor for type Published<NSXPCConnection?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type Publishers.CompactMap<Published<[AnyHashable : Any]?>.Publisher, [AnyHashable : Any]> and conformance Publishers.CompactMap<A, B>, &_s7Combine10PublishersO10CompactMapVy_AA9PublishedV9PublisherVySDys11AnyHashableVypGSg_GALGMd, &_s7Combine10PublishersO10CompactMapVy_AA9PublishedV9PublisherVySDys11AnyHashableVypGSg_GALGMR, &protocol conformance descriptor for Publishers.CompactMap<A, B>);
  lazy protocol witness table accessor for type Published<NSXPCConnection?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type Publishers.CompactMap<Published<LACRemoteUIController?>.Publisher, LACRemoteUIController> and conformance Publishers.CompactMap<A, B>, &_s7Combine10PublishersO10CompactMapVy_AA9PublishedV9PublisherVySo21LACRemoteUIControllerVSg_GAKGMd, &_s7Combine10PublishersO10CompactMapVy_AA9PublishedV9PublisherVySo21LACRemoteUIControllerVSg_GAKGMR, &protocol conformance descriptor for Publishers.CompactMap<A, B>);
  lazy protocol witness table accessor for type Published<NSXPCConnection?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type Published<((_:_:))?>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVyySb_s5Error_pSgtcSg_GMd, &_s7Combine9PublishedV9PublisherVyySb_s5Error_pSgtcSg_GMR, &protocol conformance descriptor for Published<A>.Publisher);
  v39 = v69;
  Publishers.CombineLatest4.init(_:_:_:_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo15NSXPCConnectionC10connection_So15LACRemoteUIHost_p06remoteD0So14LACUIMechanism_p9mechanismSo17LACBackoffCounter_pSg07backoffI0SDys11AnyHashableVypG12internalInfoSo0C12UIControllerV16controllerToShowySb_s5Error_pSgtcSg17completionHandlertMd, &_sSo15NSXPCConnectionC10connection_So15LACRemoteUIHost_p06remoteD0So14LACUIMechanism_p9mechanismSo17LACBackoffCounter_pSg07backoffI0SDys11AnyHashableVypG12internalInfoSo0C12UIControllerV16controllerToShowySb_s5Error_pSgtcSg17completionHandlertMR);
  lazy protocol witness table accessor for type Published<NSXPCConnection?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type Publishers.CombineLatest4<Publishers.CombineLatest4<Publishers.CompactMap<Published<NSXPCConnection?>.Publisher, NSXPCConnection>, Publishers.CompactMap<Published<LACRemoteUIHost?>.Publisher, LACRemoteUIHost>, Publishers.CompactMap<Published<LACUIMechanism?>.Publisher, LACUIMechanism>, Published<LACBackoffCounter?>.Publisher>, Publishers.CompactMap<Published<[AnyHashable : Any]?>.Publisher, [AnyHashable : Any]>, Publishers.CompactMap<Published<LACRemoteUIController?>.Publisher, LACRemoteUIController>, Published<((_:_:))?>.Publisher> and conformance Publishers.CombineLatest4<A, B, C, D>, &_s7Combine10PublishersO0A7Latest4Vy_AEy_AC10CompactMapVy_AA9PublishedV9PublisherVySo15NSXPCConnectionCSg_GAMGAGy_AKySo15LACRemoteUIHost_pSg_GSoAQ_pGAGy_AKySo14LACUIMechanism_pSg_GSoAU_pGAKySo17LACBackoffCounter_pSg_GGAGy_AKySDys11AnyHashableVypGSg_GA3_GAGy_AKySo0I12UIControllerVSg_GA8_GAKyySb_s5Error_pSgtcSg_GGMd, &_s7Combine10PublishersO0A7Latest4Vy_AEy_AC10CompactMapVy_AA9PublishedV9PublisherVySo15NSXPCConnectionCSg_GAMGAGy_AKySo15LACRemoteUIHost_pSg_GSoAQ_pGAGy_AKySo14LACUIMechanism_pSg_GSoAU_pGAKySo17LACBackoffCounter_pSg_GGAGy_AKySDys11AnyHashableVypGSg_GA3_GAGy_AKySo0I12UIControllerVSg_GA8_GAKyySb_s5Error_pSgtcSg_GGMR, &protocol conformance descriptor for Publishers.CombineLatest4<A, B, C, D>);
  v40 = v70;
  v41 = v73;
  Publisher.map<A>(_:)();
  (*(v75 + 8))(v39, v41);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo21LACRemoteUIControllerV10controller_SDys11AnyHashableVypG12internalInfoSo14LACUIMechanism_p9mechanismySb_s5Error_pSgtcSg17completionHandlertMd, _sSo21LACRemoteUIControllerV10controller_SDys11AnyHashableVypG12internalInfoSo14LACUIMechanism_p9mechanismySb_s5Error_pSgtcSg17completionHandlertMR);
  v42 = v74;
  Publishers.Map.map<A>(_:)();
  (*(v77 + 8))(v40, v42);
  v43 = v96;
  NSRunLoop.SchedulerTimeType.Stride.init(floatLiteral:)();
  v95 = objc_opt_self();
  v44 = [v95 mainRunLoop];
  v101 = v44;
  v45 = type metadata accessor for NSRunLoop.SchedulerOptions();
  v46 = *(v45 - 8);
  v93 = *(v46 + 56);
  v94 = v46 + 56;
  v47 = v97;
  v93(v97, 1, 1, v45);
  type metadata accessor for UIDevice(0, &lazy cache variable for type metadata for NSRunLoop, NSRunLoop_ptr);
  lazy protocol witness table accessor for type Published<NSXPCConnection?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type Publishers.Map<Publishers.CombineLatest4<Publishers.CombineLatest4<Publishers.CompactMap<Published<NSXPCConnection?>.Publisher, NSXPCConnection>, Publishers.CompactMap<Published<LACRemoteUIHost?>.Publisher, LACRemoteUIHost>, Publishers.CompactMap<Published<LACUIMechanism?>.Publisher, LACUIMechanism>, Published<LACBackoffCounter?>.Publisher>, Publishers.CompactMap<Published<[AnyHashable : Any]?>.Publisher, [AnyHashable : Any]>, Publishers.CompactMap<Published<LACRemoteUIController?>.Publisher, LACRemoteUIController>, Published<((_:_:))?>.Publisher>, (controller: LACRemoteUIController, internalInfo: [AnyHashable : Any], mechanism: LACUIMechanism, completionHandler: ((_:_:))?)> and conformance Publishers.Map<A, B>, &_s7Combine10PublishersO3MapVy_AC0A7Latest4Vy_AGy_AC07CompactC0Vy_AA9PublishedV9PublisherVySo15NSXPCConnectionCSg_GAOGAIy_AMySo15LACRemoteUIHost_pSg_GSoAS_pGAIy_AMySo14LACUIMechanism_pSg_GSoAW_pGAMySo17LACBackoffCounter_pSg_GGAIy_AMySDys11AnyHashableVypGSg_GA5_GAIy_AMySo0I12UIControllerVSg_GA10_GAMyySb_s5Error_pSgtcSg_GGA10_10controller_A5_12internalInfoSoAW_p9mechanismA16_17completionHandlertGMd, &_s7Combine10PublishersO3MapVy_AC0A7Latest4Vy_AGy_AC07CompactC0Vy_AA9PublishedV9PublisherVySo15NSXPCConnectionCSg_GAOGAIy_AMySo15LACRemoteUIHost_pSg_GSoAS_pGAIy_AMySo14LACUIMechanism_pSg_GSoAW_pGAMySo17LACBackoffCounter_pSg_GGAIy_AMySDys11AnyHashableVypGSg_GA5_GAIy_AMySo0I12UIControllerVSg_GA10_GAMyySb_s5Error_pSgtcSg_GGA10_10controller_A5_12internalInfoSoAW_p9mechanismA16_17completionHandlertGMR, &protocol conformance descriptor for Publishers.Map<A, B>);
  lazy protocol witness table accessor for type NSRunLoop and conformance NSRunLoop();
  v48 = v78;
  v49 = v81;
  v50 = v100;
  Publisher.debounce<A>(for:scheduler:options:)();
  outlined destroy of LACUIAngelConnectionHandling?(v47, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMR);

  (*(v98 + 8))(v43, v99);
  (*(v83 + 8))(v50, v49);
  v51 = [v95 mainRunLoop];
  v101 = v51;
  v93(v47, 1, 1, v45);
  lazy protocol witness table accessor for type Published<NSXPCConnection?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type Publishers.Debounce<Publishers.Map<Publishers.CombineLatest4<Publishers.CombineLatest4<Publishers.CompactMap<Published<NSXPCConnection?>.Publisher, NSXPCConnection>, Publishers.CompactMap<Published<LACRemoteUIHost?>.Publisher, LACRemoteUIHost>, Publishers.CompactMap<Published<LACUIMechanism?>.Publisher, LACUIMechanism>, Published<LACBackoffCounter?>.Publisher>, Publishers.CompactMap<Published<[AnyHashable : Any]?>.Publisher, [AnyHashable : Any]>, Publishers.CompactMap<Published<LACRemoteUIController?>.Publisher, LACRemoteUIController>, Published<((_:_:))?>.Publisher>, (controller: LACRemoteUIController, internalInfo: [AnyHashable : Any], mechanism: LACUIMechanism, completionHandler: ((_:_:))?)>, NSRunLoop> and conformance Publishers.Debounce<A, B>, &_s7Combine10PublishersO8DebounceVy_AC3MapVy_AC0A7Latest4Vy_AIy_AC07CompactD0Vy_AA9PublishedV9PublisherVySo15NSXPCConnectionCSg_GAQGAKy_AOySo15LACRemoteUIHost_pSg_GSoAU_pGAKy_AOySo14LACUIMechanism_pSg_GSoAY_pGAOySo17LACBackoffCounter_pSg_GGAKy_AOySDys11AnyHashableVypGSg_GA7_GAKy_AOySo0J12UIControllerVSg_GA12_GAOyySb_s5Error_pSgtcSg_GGA12_10controller_A7_12internalInfoSoAY_p9mechanismA18_17completionHandlertGSo9NSRunLoopCGMd, &_s7Combine10PublishersO8DebounceVy_AC3MapVy_AC0A7Latest4Vy_AIy_AC07CompactD0Vy_AA9PublishedV9PublisherVySo15NSXPCConnectionCSg_GAQGAKy_AOySo15LACRemoteUIHost_pSg_GSoAU_pGAKy_AOySo14LACUIMechanism_pSg_GSoAY_pGAOySo17LACBackoffCounter_pSg_GGAKy_AOySDys11AnyHashableVypGSg_GA7_GAKy_AOySo0J12UIControllerVSg_GA12_GAOyySb_s5Error_pSgtcSg_GGA12_10controller_A7_12internalInfoSoAY_p9mechanismA18_17completionHandlertGSo9NSRunLoopCGMR, &protocol conformance descriptor for Publishers.Debounce<A, B>);
  v52 = v82;
  v53 = v85;
  Publisher.receive<A>(on:options:)();
  outlined destroy of LACUIAngelConnectionHandling?(v47, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMR);

  (*(v87 + 8))(v48, v53);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  lazy protocol witness table accessor for type Published<NSXPCConnection?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type Publishers.ReceiveOn<Publishers.Debounce<Publishers.Map<Publishers.CombineLatest4<Publishers.CombineLatest4<Publishers.CompactMap<Published<NSXPCConnection?>.Publisher, NSXPCConnection>, Publishers.CompactMap<Published<LACRemoteUIHost?>.Publisher, LACRemoteUIHost>, Publishers.CompactMap<Published<LACUIMechanism?>.Publisher, LACUIMechanism>, Published<LACBackoffCounter?>.Publisher>, Publishers.CompactMap<Published<[AnyHashable : Any]?>.Publisher, [AnyHashable : Any]>, Publishers.CompactMap<Published<LACRemoteUIController?>.Publisher, LACRemoteUIController>, Published<((_:_:))?>.Publisher>, (controller: LACRemoteUIController, internalInfo: [AnyHashable : Any], mechanism: LACUIMechanism, completionHandler: ((_:_:))?)>, NSRunLoop>, NSRunLoop> and conformance Publishers.ReceiveOn<A, B>, &_s7Combine10PublishersO9ReceiveOnVy_AC8DebounceVy_AC3MapVy_AC0A7Latest4Vy_AKy_AC07CompactF0Vy_AA9PublishedV9PublisherVySo15NSXPCConnectionCSg_GASGAMy_AQySo15LACRemoteUIHost_pSg_GSoAW_pGAMy_AQySo14LACUIMechanism_pSg_GSoA__pGAQySo17LACBackoffCounter_pSg_GGAMy_AQySDys11AnyHashableVypGSg_GA9_GAMy_AQySo0L12UIControllerVSg_GA14_GAQyySb_s5Error_pSgtcSg_GGA14_10controller_A9_12internalInfoSoA__p9mechanismA20_17completionHandlertGSo9NSRunLoopCGA29_GMd, &_s7Combine10PublishersO9ReceiveOnVy_AC8DebounceVy_AC3MapVy_AC0A7Latest4Vy_AKy_AC07CompactF0Vy_AA9PublishedV9PublisherVySo15NSXPCConnectionCSg_GASGAMy_AQySo15LACRemoteUIHost_pSg_GSoAW_pGAMy_AQySo14LACUIMechanism_pSg_GSoA__pGAQySo17LACBackoffCounter_pSg_GGAMy_AQySDys11AnyHashableVypGSg_GA9_GAMy_AQySo0L12UIControllerVSg_GA14_GAQyySb_s5Error_pSgtcSg_GGA14_10controller_A9_12internalInfoSoA__p9mechanismA20_17completionHandlertGSo9NSRunLoopCGA29_GMR, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
  v54 = v88;
  Publisher<>.sink(receiveValue:)();

  (*(v89 + 8))(v52, v54);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();
}

id closure #1 in TransitionViewModel.setupBinding()@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  *a2 = v2;
  return v2;
}

uint64_t closure #5 in TransitionViewModel.setupBinding()@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 8);
  *a2 = *result;
  *(a2 + 8) = v2;
  return result;
}

uint64_t closure #6 in TransitionViewModel.setupBinding()@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9 = *(a1 + 56);
  *a2 = *a1;
  a2[1] = v2;
  a2[2] = v5;
  a2[3] = v4;
  a2[4] = v7;
  a2[5] = v6;
  a2[6] = v8;
  a2[7] = v9;
  swift_unknownObjectRetain();

  v10 = v3;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();

  return outlined copy of (@escaping @callee_guaranteed () -> ())?(v8, v9);
}

uint64_t closure #7 in TransitionViewModel.setupBinding()@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[2];
  v3 = a1[4];
  v4 = a1[6];
  v5 = a1[7];
  *a2 = a1[5];
  a2[1] = v3;
  a2[2] = v2;
  a2[3] = v4;
  a2[4] = v5;
  swift_unknownObjectRetain();

  return outlined copy of (@escaping @callee_guaranteed () -> ())?(v4, v5);
}

void thunk for @escaping @callee_guaranteed (@unowned Bool, @guaranteed Error?) -> ()(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

void (*specialized Sequence.forEach(_:)(void (*result)(uint64_t *), uint64_t a2, unint64_t a3))(uint64_t *)
{
  v9 = result;
  if (a3 >> 62)
  {
    goto LABEL_14;
  }

  v5 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5)
  {
    do
    {
      v6 = 0;
      while ((a3 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v8 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          goto LABEL_12;
        }

LABEL_7:
        v10 = v7;
        v9(&v10);
        result = swift_unknownObjectRelease();
        if (!v3)
        {
          ++v6;
          if (v8 != v5)
          {
            continue;
          }
        }

        return result;
      }

      if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

      v7 = *(a3 + 8 * v6 + 32);
      swift_unknownObjectRetain();
      v8 = v6 + 1;
      if (!__OFADD__(v6, 1))
      {
        goto LABEL_7;
      }

LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
LABEL_14:
      result = _CocoaArrayWrapper.endIndex.getter();
      v5 = result;
    }

    while (result);
  }

  return result;
}

Swift::Void __swiftcall TransitionViewModel.setupConnection()()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&aBlock);

  v5 = aBlock;
  if (aBlock)
  {
LABEL_2:

    return;
  }

  TransitionViewModel.setupBinding()();
  v6 = objc_allocWithZone(NSXPCConnection);
  v7 = String._bridgeToObjectiveC()();
  v8 = [v6 initWithMachServiceName:v7 options:0];

  swift_getKeyPath();
  swift_getKeyPath();
  aBlock = v8;
  v9 = v0;
  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&aBlock);

  v10 = aBlock;
  if (aBlock)
  {
    v11 = [objc_opt_self() interfaceForXPCProtocol:&OBJC_PROTOCOL___LACRemoteUIHost];
    [v10 setRemoteObjectInterface:v11];

    v12 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v41 = partial apply for closure #1 in TransitionViewModel.setupConnection();
    v42 = v12;
    aBlock = _NSConcreteStackBlock;
    v38 = 1107296256;
    v39 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v40 = &block_descriptor_2;
    v13 = _Block_copy(&aBlock);

    [v10 setInterruptionHandler:v13];
    _Block_release(v13);
    v14 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v41 = partial apply for closure #2 in TransitionViewModel.setupConnection();
    v42 = v14;
    aBlock = _NSConcreteStackBlock;
    v38 = 1107296256;
    v39 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v40 = &block_descriptor_25;
    v15 = _Block_copy(&aBlock);

    [v10 setInvalidationHandler:v15];
    _Block_release(v15);
    [v10 resume];
    v16 = *(v2 + 16);
    v31 = OBJC_IVAR____TtC28LocalAuthenticationUIService19TransitionViewModel_log;
    v33 = v16;
    v16(&v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), &v9[OBJC_IVAR____TtC28LocalAuthenticationUIService19TransitionViewModel_log], v1);
    v17 = (*(v2 + 80) + 16) & ~*(v2 + 80);
    v32 = *(v2 + 80);
    v29 = v17 + v3;
    v18 = swift_allocObject();
    v19 = *(v2 + 32);
    v34 = v17;
    v30 = v19;
    v19(v18 + v17, &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v1);
    v41 = partial apply for closure #3 in TransitionViewModel.setupConnection();
    v42 = v18;
    aBlock = _NSConcreteStackBlock;
    v38 = 1107296256;
    v39 = thunk for @escaping @callee_guaranteed (@guaranteed Error) -> ();
    v40 = &block_descriptor_31;
    v20 = _Block_copy(&aBlock);

    v35 = v10;
    v21 = [v10 synchronousRemoteObjectProxyWithErrorHandler:v20];
    _Block_release(v20);
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo15LACRemoteUIHost_pMd, &_sSo15LACRemoteUIHost_pMR);
    if (swift_dynamicCast())
    {
      v22 = v36;
    }

    else
    {
      v22 = 0;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    v36 = v22;
    v23 = v9;
    static Published.subscript.setter();
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter(&aBlock);

    v24 = aBlock;
    if (aBlock)
    {
      v25 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v33(v4, &v9[v31], v1);
      v26 = (v29 + 7) & 0xFFFFFFFFFFFFFFF8;
      v27 = swift_allocObject();
      v30(v27 + v34, v4, v1);
      *(v27 + v26) = v25;
      v41 = partial apply for closure #4 in TransitionViewModel.setupConnection();
      v42 = v27;
      aBlock = _NSConcreteStackBlock;
      v38 = 1107296256;
      v39 = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed LACUIMechanism, @guaranteed LACBackoffCounter, @guaranteed Error?) -> ();
      v40 = &block_descriptor_38;
      v28 = _Block_copy(&aBlock);

      [v24 connectRemoteUI:v23 requestID:0 reply:v28];

      swift_unknownObjectRelease();
      _Block_release(v28);
      return;
    }

    v5 = v35;
    goto LABEL_2;
  }
}

void thunk for @escaping @callee_guaranteed (@guaranteed Error) -> ()(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable (@guaranteed LACUIMechanism, @guaranteed LACBackoffCounter, @guaranteed Error?) -> ()(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = *(a1 + 32);

  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v8 = a4;
  v7(a2, a3, a4);

  swift_unknownObjectRelease();

  return swift_unknownObjectRelease();
}

Swift::Void __swiftcall TransitionViewModel.suspendConnection()()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(v4);

  v1 = v4[0];
  [v4[0] suspend];

  swift_getKeyPath();
  swift_getKeyPath();
  v4[0] = 0;
  v2 = v0;
  static Published.subscript.setter();
  v3 = OBJC_IVAR____TtC28LocalAuthenticationUIService19TransitionViewModel_disposeBag;
  swift_beginAccess();
  *&v2[v3] = &_swiftEmptySetSingleton;
}