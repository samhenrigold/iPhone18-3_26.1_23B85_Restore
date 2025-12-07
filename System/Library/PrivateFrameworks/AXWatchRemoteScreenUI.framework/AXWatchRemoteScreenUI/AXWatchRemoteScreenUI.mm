void *__getAXWatchRemoteScreenIsPairedGizmoHasStingSupportSymbolLoc_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  if (!AXWatchRemoteScreenServicesLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x277D85DD0];
    v5[2] = 3221225472;
    v5[3] = __AXWatchRemoteScreenServicesLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_278BE1420;
    v7 = 0;
    AXWatchRemoteScreenServicesLibraryCore_frameworkLibrary = _sl_dlopen();
    v3 = v5[0];
    v2 = AXWatchRemoteScreenServicesLibraryCore_frameworkLibrary;
    if (AXWatchRemoteScreenServicesLibraryCore_frameworkLibrary)
    {
      if (!v5[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v3 = abort_report_np("%s", v5[0]);
    }

    free(v3);
    goto LABEL_5;
  }

  v2 = AXWatchRemoteScreenServicesLibraryCore_frameworkLibrary;
LABEL_5:
  result = dlsym(v2, "AXWatchRemoteScreenIsPairedGizmoHasStingSupport");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAXWatchRemoteScreenIsPairedGizmoHasStingSupportSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __AXWatchRemoteScreenServicesLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  AXWatchRemoteScreenServicesLibraryCore_frameworkLibrary = result;
  return result;
}

void AXWatchRemoteScreenBannerView(void *a1, void *a2, void *a3, double a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a3;
  NSClassFromString(&cfstr_Uiview.isa);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v16 = 0;
    v17 = &v16;
    v18 = 0x2050000000;
    v10 = getAXUIBannerPresenterClass_softClass;
    v19 = getAXUIBannerPresenterClass_softClass;
    if (!getAXUIBannerPresenterClass_softClass)
    {
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __getAXUIBannerPresenterClass_block_invoke;
      v15[3] = &unk_278BE1400;
      v15[4] = &v16;
      __getAXUIBannerPresenterClass_block_invoke(v15);
      v10 = v17[3];
    }

    v11 = v10;
    _Block_object_dispose(&v16, 8);
    v12 = [[v10 alloc] initWithContainingView:v7];
    v13 = [v12 containingView];
    v14 = [v13 layer];
    AXWatchRemoteScreenRemoveLayerFromAirplay(v14);

    [v12 presentBannerViewWithText:v8 secondaryText:v9 duration:0 fromUserAction:a4];
  }
}

void sub_23D6CD258(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void AXWatchRemoteScreenRemoveLayerFromAirplay(void *a1)
{
  v1 = a1;
  [v1 setDisableUpdateMask:{objc_msgSend(v1, "disableUpdateMask") | 0x10}];
}

Class __getAXUIBannerPresenterClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!AccessibilityUIUtilitiesLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __AccessibilityUIUtilitiesLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_278BE1458;
    v6 = 0;
    AccessibilityUIUtilitiesLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (AccessibilityUIUtilitiesLibraryCore_frameworkLibrary)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np("%s", v4[0]);
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("AXUIBannerPresenter");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getAXUIBannerPresenterClass_block_invoke_cold_1();
  }

  getAXUIBannerPresenterClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __AccessibilityUIUtilitiesLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  AccessibilityUIUtilitiesLibraryCore_frameworkLibrary = result;
  return result;
}

id getAPRKStreamRenderingManagerClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getAPRKStreamRenderingManagerClass_softClass;
  v7 = getAPRKStreamRenderingManagerClass_softClass;
  if (!getAPRKStreamRenderingManagerClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getAPRKStreamRenderingManagerClass_block_invoke;
    v3[3] = &unk_278BE1400;
    v3[4] = &v4;
    __getAPRKStreamRenderingManagerClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_23D6CD6D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getAPRKStreamRenderingManagerClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!AirPlayReceiverKitLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __AirPlayReceiverKitLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_278BE1490;
    v6 = 0;
    AirPlayReceiverKitLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (AirPlayReceiverKitLibraryCore_frameworkLibrary)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np("%s", v4[0]);
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("APRKStreamRenderingManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getAPRKStreamRenderingManagerClass_block_invoke_cold_1();
  }

  getAPRKStreamRenderingManagerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __AirPlayReceiverKitLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  AirPlayReceiverKitLibraryCore_frameworkLibrary = result;
  return result;
}

void OUTLINED_FUNCTION_1(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void sub_23D6CE188()
{
  v0 = [objc_opt_self() preferredFontDescriptorWithTextStyle_];
  v1 = [v0 fontDescriptorWithSymbolicTraits_];

  if (v1)
  {

    v2 = objc_allocWithZone(MEMORY[0x277D756B8]);
    v3 = v1;
    v4 = [v2 init];
    sub_23D6EE5E0();
    v5 = sub_23D6EE560();
    MEMORY[0x23EEE8CB0]();
    v7 = v6;

    if (v7)
    {
      v8 = sub_23D6EE730();
    }

    else
    {
      v8 = 0;
    }

    [v4 setText_];

    [v4 setTextAlignment_];
    [v3 pointSize];
    v10 = [objc_opt_self() fontWithDescriptor:v3 size:v9];

    [v4 setFont_];
    [v4 setNumberOfLines_];
    [v4 setAccessibilityTraits_];
    v11 = v4;
    [v11 setTranslatesAutoresizingMaskIntoConstraints_];
  }

  else
  {
    __break(1u);
  }
}

id sub_23D6CE384@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionMainViewController_titleLabel;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

id sub_23D6CE3F8()
{
  v1 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionMainViewController_titleLabel;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_23D6CE44C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionMainViewController_titleLabel;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id sub_23D6CE508()
{
  v0 = objc_opt_self();
  v1 = [v0 configurationWithPointSize:5 weight:3 scale:20.0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E2730, &unk_23D6EFC60);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_23D6EFC00;
  v3 = objc_opt_self();
  *(v2 + 32) = [v3 systemGrayColor];
  *(v2 + 40) = [v3 systemGray5Color];
  sub_23D6D1D74(0, &qword_27E2E2750, 0x277D75348);
  v4 = sub_23D6EE7A0();

  v5 = [v0 configurationWithPaletteColors_];

  v6 = v1;
  v7 = sub_23D6EE730();
  v8 = [objc_opt_self() systemImageNamed:v7 withConfiguration:v6];

  v9 = [v8 imageByApplyingSymbolConfiguration_];
  v10 = [objc_opt_self() buttonWithType_];
  [v10 setBackgroundImage:v9 forState:0];
  [v10 setTranslatesAutoresizingMaskIntoConstraints_];
  sub_23D6EE5E0();
  v11 = v10;
  v12 = sub_23D6EE560();
  sub_23D6EE570();

  v13 = sub_23D6EE730();

  [v11 setAccessibilityLabel_];

  return v11;
}

id sub_23D6CE79C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionMainViewController_dismissButton;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

id sub_23D6CE810()
{
  v1 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionMainViewController_dismissButton;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_23D6CE864(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionMainViewController_dismissButton;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id sub_23D6CE91C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_23D6CE998();
  *a1 = result;
  return result;
}

void sub_23D6CE948(void **a1, void *a2)
{
  v2 = *a1;
  v4 = *(*a2 + OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionMainViewController____lazy_storage___watchDeviceView);
  *(*a2 + OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionMainViewController____lazy_storage___watchDeviceView) = *a1;
  v3 = v2;
}

id sub_23D6CE998()
{
  v1 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionMainViewController____lazy_storage___watchDeviceView;
  v2 = *(v0 + OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionMainViewController____lazy_storage___watchDeviceView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionMainViewController____lazy_storage___watchDeviceView);
  }

  else
  {
    type metadata accessor for AXTwiceCompanionWatchView();
    v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void (*sub_23D6CEA24(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_23D6CE998();
  return sub_23D6CEA6C;
}

void sub_23D6CEA6C(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionMainViewController____lazy_storage___watchDeviceView);
  *(v1 + OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionMainViewController____lazy_storage___watchDeviceView) = v2;
}

id sub_23D6CEA84@<X0>(uint64_t *a1@<X8>)
{
  result = sub_23D6CEB04();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void sub_23D6CEAB0(__int128 *a1, void *a2)
{
  v4 = *(*a2 + OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionMainViewController____lazy_storage___deviceView);
  v2 = *a1;
  *(*a2 + OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionMainViewController____lazy_storage___deviceView) = *a1;
  v3 = v2;
}

id sub_23D6CEB04()
{
  v1 = v0 + OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionMainViewController____lazy_storage___deviceView;
  v2 = *(v0 + OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionMainViewController____lazy_storage___deviceView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionMainViewController____lazy_storage___deviceView);
  }

  else
  {
    _AXSTwiceRemoteScreenPlatform();
    v4 = sub_23D6CE998();
    v5 = *v1;
    *v1 = v4;
    *(v1 + 8) = &protocol witness table for AXTwiceCompanionWatchView;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t sub_23D6CEB7C(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionMainViewController____lazy_storage___deviceView);
  *v3 = a1;
  v3[1] = a2;
  return MEMORY[0x2821F9730]();
}

uint64_t (*sub_23D6CEB94(id *a1))(uint64_t a1)
{
  a1[2] = v1;
  *a1 = sub_23D6CEB04();
  a1[1] = v3;
  return sub_23D6CEBDC;
}

id sub_23D6CEBF8()
{
  v0 = [objc_opt_self() preferredFontDescriptorWithTextStyle_];
  v1 = objc_allocWithZone(MEMORY[0x277D756B8]);
  v2 = v0;
  v3 = [v1 init];
  v4 = sub_23D6EE730();
  [v3 setText_];

  [v3 setTextAlignment_];
  [v2 pointSize];
  v6 = [objc_opt_self() fontWithDescriptor:v2 size:v5];

  [v3 setFont_];
  [v3 setNumberOfLines_];
  [v3 setAdjustsFontSizeToFitWidth_];
  [v3 setMinimumScaleFactor_];
  [v3 setAccessibilityTraits_];
  v7 = v3;
  [v7 setTranslatesAutoresizingMaskIntoConstraints_];
  [v7 setHidden_];

  return v7;
}

id sub_23D6CEDA8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionMainViewController_statusLabel;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

void sub_23D6CEE1C(void **a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  swift_beginAccess();
  v8 = *(v6 + v7);
  *(v6 + v7) = v5;
  v9 = v5;
}

id sub_23D6CEE78()
{
  v1 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionMainViewController_statusLabel;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_23D6CEECC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionMainViewController_statusLabel;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id sub_23D6CEF84()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v1 = [objc_opt_self() systemBackgroundColor];
  [v0 setBackgroundColor_];

  v2 = [v0 layer];
  AXDisplayCornerRadiusWithMargin();
  [v2 setCornerRadius_];

  v3 = [v0 layer];
  [v3 setCornerCurve_];

  [v0 setClipsToBounds_];
  [v0 setTranslatesAutoresizingMaskIntoConstraints_];
  return v0;
}

void sub_23D6CF160()
{
  v1 = v0;
  v138.receiver = v0;
  v138.super_class = type metadata accessor for AXTwiceCompanionMainViewController();
  objc_msgSendSuper2(&v138, sel_viewDidLoad);
  [v0 setModalPresentationStyle_];
  v2 = [v0 view];
  if (!v2)
  {
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v3 = v2;
  v4 = [objc_opt_self() clearColor];
  [v3 setBackgroundColor_];

  [v1 setTransitioningDelegate_];
  v5 = [objc_allocWithZone(MEMORY[0x277D757F8]) initWithTarget:v1 action:sel_cardSwipeDownWithGesture_];
  v6 = sub_23D6CE998();
  v7 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_swipeUpCrownGesture;
  swift_beginAccess();
  v8 = *&v6[v7];
  v9 = v8;

  if (v8)
  {
    [v5 requireGestureRecognizerToFail_];
  }

  v10 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionMainViewController____lazy_storage___watchDeviceView;
  v11 = *&v1[OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionMainViewController____lazy_storage___watchDeviceView];
  v12 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_swipeDownCrownGesture;
  swift_beginAccess();
  if (*(v11 + v12))
  {
    [v5 requireGestureRecognizerToFail_];
  }

  v13 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionMainViewController_cardBackgroundView;
  [*&v1[OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionMainViewController_cardBackgroundView] addGestureRecognizer_];
  v14 = [v1 view];
  if (!v14)
  {
    goto LABEL_18;
  }

  v15 = v14;
  v136 = v10;
  [v14 addSubview_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E2730, &unk_23D6EFC60);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_23D6EFC10;
  v17 = [*&v1[v13] centerXAnchor];
  v18 = [v1 view];
  if (!v18)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v19 = v18;
  v20 = [v18 centerXAnchor];

  v21 = [v17 constraintEqualToAnchor_];
  *(v16 + 32) = v21;
  v22 = [*&v1[v13] leadingAnchor];
  v23 = [v1 view];
  if (!v23)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v24 = v23;
  v25 = [v23 leadingAnchor];

  v26 = [v22 constraintEqualToAnchor:v25 constant:6.0];
  *(v16 + 40) = v26;
  v27 = [*&v1[v13] trailingAnchor];
  v28 = [v1 view];
  if (!v28)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v29 = v28;
  v30 = [v28 trailingAnchor];

  v31 = [v27 constraintEqualToAnchor:v30 constant:-6.0];
  *(v16 + 48) = v31;
  v32 = [*&v1[v13] heightAnchor];
  v33 = [v1 view];
  if (!v33)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v34 = v33;
  v135 = v5;
  v35 = [v33 heightAnchor];

  v36 = [v32 constraintLessThanOrEqualToAnchor:v35 multiplier:0.9];
  *(v16 + 56) = v36;
  v37 = [*&v1[v13] bottomAnchor];
  v38 = [v1 view];
  if (!v38)
  {
LABEL_23:
    __break(1u);
    return;
  }

  v39 = v38;
  v40 = objc_opt_self();
  v41 = [v39 bottomAnchor];

  v42 = [v37 constraintEqualToAnchor:v41 constant:-6.0];
  *(v16 + 64) = v42;
  sub_23D6D1D74(0, &qword_27E2E2738, 0x277CCAAD0);
  v43 = sub_23D6EE7A0();

  [v40 activateConstraints_];

  v44 = *&v1[v13];
  v45 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionMainViewController_dismissButton;
  swift_beginAccess();
  [v44 addSubview_];
  v46 = swift_allocObject();
  *(v46 + 16) = xmmword_23D6EFC00;
  v47 = [*&v1[v45] centerYAnchor];
  v48 = [*&v1[v13] topAnchor];
  v49 = [v47 &selRef:v48 digitalCrownDirectTouch:32.0 + 6];

  *(v46 + 32) = v49;
  v50 = [*&v1[v45] centerXAnchor];
  v51 = [*&v1[v13] trailingAnchor];
  v52 = [v50 &selRef:v51 digitalCrownDirectTouch:-32.0 + 6];

  *(v46 + 40) = v52;
  v53 = sub_23D6EE7A0();

  v137 = v40;
  [v40 activateConstraints_];

  v54 = *&v1[v13];
  v55 = sub_23D6CEB04();
  [v54 addSubview_];

  v56 = &v1[OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionMainViewController____lazy_storage___deviceView];
  v57 = *&v1[OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionMainViewController____lazy_storage___deviceView];
  v58 = *&v1[OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionMainViewController____lazy_storage___deviceView + 8];
  ObjectType = swift_getObjectType();
  v60 = *(v58 + 16);
  v61 = v57;
  v60(ObjectType, v58, 30.0);

  v62 = *v56;
  v63 = *(v56 + 1);
  v64 = swift_getObjectType();
  v65 = v62;
  v66 = [v65 leftAnchor];
  v67 = v13;
  v68 = [*&v1[v13] leftAnchor];
  v69 = [v66 constraintEqualToAnchor_];

  (*(v63 + 40))(v69, v64, v63);
  v70 = *v56;
  v71 = *(v56 + 1);
  v72 = swift_getObjectType();
  v73 = *(v71 + 64);
  v74 = v70;
  v73(v72, v71, 15.0);

  v75 = *v56;
  v76 = *(v56 + 1);
  v77 = swift_getObjectType();
  v78 = v75;
  v79 = [v78 rightAnchor];
  v134 = v67;
  v80 = [*&v1[v67] rightAnchor];
  v81 = [v79 constraintEqualToAnchor_];

  (*(v76 + 88))(v81, v77, v76);
  v82 = *v56;
  v83 = *(v56 + 1);
  v84 = swift_getObjectType();
  v85 = *(v83 + 32);
  v86 = v82;
  v87 = v85(v84, v83);

  if (v87)
  {
    v88 = *v56;
    v89 = *(v56 + 1);
    v90 = swift_getObjectType();
    v91 = *(v89 + 80);
    v92 = v88;
    v93 = v91(v90, v89);

    if (v93)
    {
      v94 = swift_allocObject();
      *(v94 + 16) = xmmword_23D6EFC20;
      *(v94 + 32) = v87;
      *(v94 + 40) = v93;
      v95 = *v56;
      v96 = v87;
      v97 = v93;
      v98 = [v95 heightAnchor];
      v99 = [*v56 widthAnchor];
      v100 = [v98 constraintEqualToAnchor:v99 multiplier:1.12];

      *(v94 + 48) = v100;
      v87 = sub_23D6EE7A0();

      [v137 activateConstraints_];
    }
  }

  v101 = *&v1[v136];
  sub_23D6D9C68();

  v102 = *&v1[v67];
  v103 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionMainViewController_titleLabel;
  swift_beginAccess();
  [v102 addSubview_];
  v104 = swift_allocObject();
  *(v104 + 16) = xmmword_23D6EFC30;
  v105 = [*&v1[v103] leadingAnchor];
  v106 = [*&v1[v67] byte_278BE1529];
  v107 = [v105 constraintEqualToAnchor:v106 constant:40.0];

  *(v104 + 32) = v107;
  v108 = [*&v1[v103] trailingAnchor];
  v109 = [*&v1[v67] &selRef_containerView + 4];
  v110 = [v108 constraintEqualToAnchor:v109 constant:-45.0];

  *(v104 + 40) = v110;
  v111 = [*&v1[v103] topAnchor];
  v112 = [*&v1[v67] topAnchor];
  v113 = [v111 constraintEqualToAnchor:v112 constant:32.0];

  *(v104 + 48) = v113;
  v114 = [*&v1[v103] bottomAnchor];
  v115 = [*v56 topAnchor];
  v116 = [v114 constraintEqualToAnchor:v115 constant:-20.0];

  *(v104 + 56) = v116;
  v117 = sub_23D6EE7A0();

  [v137 activateConstraints_];

  v118 = *&v1[v67];
  v119 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionMainViewController_statusLabel;
  swift_beginAccess();
  [v118 addSubview_];
  v120 = swift_allocObject();
  *(v120 + 16) = xmmword_23D6EFC30;
  v121 = [*&v1[v119] leadingAnchor];
  v122 = [*&v1[v67] leadingAnchor];
  v123 = [v121 constraintEqualToAnchor:v122 constant:40.0];

  *(v120 + 32) = v123;
  v124 = [*&v1[v119] trailingAnchor];
  v125 = [*&v1[v134] trailingAnchor];
  v126 = [v124 constraintEqualToAnchor:v125 constant:-45.0];

  *(v120 + 40) = v126;
  v127 = [*&v1[v119] topAnchor];
  v128 = [*v56 bottomAnchor];
  v129 = [v127 constraintEqualToAnchor:v128 constant:20.0];

  *(v120 + 48) = v129;
  v130 = [*&v1[v119] bottomAnchor];
  v131 = [*&v1[v134] bottomAnchor];
  v132 = [v130 constraintEqualToAnchor:v131 constant:-32.0];

  *(v120 + 56) = v132;
  v133 = sub_23D6EE7A0();

  [v137 activateConstraints_];
}

uint64_t sub_23D6CFFFC(uint64_t a1)
{
  v2 = sub_23D6EE640();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, a1, v2);
  v6 = (*(v3 + 88))(v5, v2);
  if (v6 == *MEMORY[0x277CE7088] || v6 == *MEMORY[0x277CE7070] || v6 == *MEMORY[0x277CE7078] || v6 == *MEMORY[0x277CE7080])
  {
    sub_23D6EE5E0();
    v10 = sub_23D6EE560();
    v11 = sub_23D6EE570();
    v13 = v12;

    v14 = 0;
    v15 = 0;
  }

  else if (v6 == *MEMORY[0x277CE70A0])
  {
    sub_23D6EE5E0();
    v16 = sub_23D6EE560();
    v11 = sub_23D6EE570();
    v13 = v17;

    v15 = 0xEC0000006F656469;
    v14 = 0x7679616C70726961;
  }

  else
  {
    (*(v3 + 8))(v5, v2);
    v11 = 0;
    v14 = 0;
    v15 = 0;
    v13 = 0xE000000000000000;
  }

  sub_23D6D05FC(v11, v13, v14, v15);
}

void sub_23D6D0258()
{
  v0 = sub_23D6EE640();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v18 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v18 - v5;
  MEMORY[0x28223BE20](v4);
  v8 = &v18 - v7;
  v9 = *MEMORY[0x277CE7070];
  v20 = *(v1 + 104);
  v20(&v18 - v7, v9, v0);
  sub_23D6D164C(&qword_27E2E2740, MEMORY[0x277CE70A8], MEMORY[0x277CE70B8]);
  sub_23D6EE780();
  sub_23D6EE780();
  if (v23 == v21 && v24 == v22)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_23D6EEA00();
  }

  v19 = *(v1 + 8);
  v19(v8, v0);

  if (v10)
  {
    goto LABEL_10;
  }

  v20(v6, *MEMORY[0x277CE7078], v0);
  sub_23D6EE780();
  sub_23D6EE780();
  if (v23 == v21 && v24 == v22)
  {
    v19(v6, v0);

LABEL_10:
    v12 = 1;
    goto LABEL_11;
  }

  v11 = sub_23D6EEA00();
  v19(v6, v0);

  if (v11)
  {
    goto LABEL_10;
  }

  v17 = v18;
  v20(v18, *MEMORY[0x277CE7080], v0);
  sub_23D6EE780();
  sub_23D6EE780();
  if (v23 == v21 && v24 == v22)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_23D6EEA00();
  }

  v19(v17, v0);

LABEL_11:
  v13 = sub_23D6CEB04();
  v15 = v14;
  ObjectType = swift_getObjectType();
  sub_23D6D44DC(v12 & 1, ObjectType, v15);
}

uint64_t sub_23D6D05FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21 = a3;
  v8 = sub_23D6EE690();
  v23 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_23D6EE6C0();
  v11 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23D6D1D74(0, &qword_27E2E2AE0, 0x277D85C78);
  v14 = sub_23D6EE850();
  v15 = swift_allocObject();
  v15[2] = v4;
  v15[3] = a1;
  v16 = v21;
  v15[4] = a2;
  v15[5] = v16;
  v15[6] = a4;
  aBlock[4] = sub_23D6D1624;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23D6D09E8;
  aBlock[3] = &block_descriptor;
  v17 = _Block_copy(aBlock);

  v18 = v4;

  sub_23D6EE6A0();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_23D6D164C(&qword_27E2E2C50, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E2748, &qword_23D6EFEA0);
  sub_23D6D1694();
  sub_23D6EE8B0();
  MEMORY[0x23EEE8F80](0, v13, v10, v17);
  _Block_release(v17);

  (*(v23 + 8))(v10, v8);
  return (*(v11 + 8))(v13, v22);
}

void sub_23D6D08F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionMainViewController_statusLabel;
  swift_beginAccess();
  [*(a1 + v10) setHidden_];
  v11 = *(a1 + v10);
  v12 = sub_23D6D1BBC(a2, a3, a4, a5);
  [v11 setAttributedText_];

  v13 = *(a1 + v10);
  v14 = sub_23D6EE730();
  [v13 setAccessibilityLabel_];
}

uint64_t sub_23D6D09E8(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

void sub_23D6D0A2C(void *a1)
{
  v2 = v1;
  v4 = sub_23D6EE670();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionMainViewController_cardBackgroundView;
  [a1 translationInView_];
  v10 = v9;
  [*&v2[v8] bounds];
  v11 = v10 / CGRectGetHeight(v25);
  sub_23D6EE330();
  v12 = sub_23D6EE660();
  v13 = sub_23D6EE7F0();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v24 = v15;
    *v14 = 136315394;
    *(v14 + 4) = sub_23D6D3C38(0xD000000000000017, 0x800000023D6F0670, &v24);
    *(v14 + 12) = 2048;
    *(v14 + 14) = v11;
    _os_log_impl(&dword_23D6CB000, v12, v13, "[TWICE] %s - %f", v14, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x23EEE9940](v15, -1, -1);
    MEMORY[0x23EEE9940](v14, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  v16 = *&v2[OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionMainViewController_pullToDismissManager];
  v17 = [a1 state];
  if (v17 > 2)
  {
    if (v17 == 3)
    {
      *(v16 + OBJC_IVAR____TtC21AXWatchRemoteScreenUI36AXTwiceCompanionPullToDismissManager_isInteractive) = 0;
      v18 = *(v16 + OBJC_IVAR____TtC21AXWatchRemoteScreenUI36AXTwiceCompanionPullToDismissManager_percentDrivenInteractive);
      if (v11 > 0.3)
      {
        [v18 finishInteractiveTransition];
        return;
      }
    }

    else
    {
      if (v17 != 4)
      {
        return;
      }

      *(v16 + OBJC_IVAR____TtC21AXWatchRemoteScreenUI36AXTwiceCompanionPullToDismissManager_isInteractive) = 0;
      v18 = *(v16 + OBJC_IVAR____TtC21AXWatchRemoteScreenUI36AXTwiceCompanionPullToDismissManager_percentDrivenInteractive);
    }

    [v18 cancelInteractiveTransition];
  }

  else if (v17 == 1)
  {
    *(v16 + OBJC_IVAR____TtC21AXWatchRemoteScreenUI36AXTwiceCompanionPullToDismissManager_isInteractive) = 1;
    v19 = objc_allocWithZone(MEMORY[0x277D75828]);
    v20 = v2;
    v21 = [v19 init];
    v22 = *(v16 + OBJC_IVAR____TtC21AXWatchRemoteScreenUI36AXTwiceCompanionPullToDismissManager_percentDrivenInteractive);
    *(v16 + OBJC_IVAR____TtC21AXWatchRemoteScreenUI36AXTwiceCompanionPullToDismissManager_percentDrivenInteractive) = v21;

    sub_23D6D0DC4();
  }

  else if (v17 == 2)
  {
    [*(v16 + OBJC_IVAR____TtC21AXWatchRemoteScreenUI36AXTwiceCompanionPullToDismissManager_percentDrivenInteractive) updateInteractiveTransition_];
  }
}

id sub_23D6D0DC4()
{
  v1 = v0;
  v2 = sub_23D6EE670();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23D6EE330();
  v6 = sub_23D6EE660();
  v7 = sub_23D6EE7F0();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v12 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_23D6D3C38(0xD000000000000015, 0x800000023D6F0650, &v12);
    _os_log_impl(&dword_23D6CB000, v6, v7, "[TWICE] %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x23EEE9940](v9, -1, -1);
    MEMORY[0x23EEE9940](v8, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  return [v1 dismissViewControllerAnimated:1 completion:0];
}

void sub_23D6D0F78()
{
  v0 = sub_23D6EE670();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23D6EE330();
  v4 = sub_23D6EE660();
  v5 = sub_23D6EE810();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v15 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_23D6D3C38(0xD000000000000020, 0x800000023D6F0620, &v15);
    _os_log_impl(&dword_23D6CB000, v4, v5, "[TWICE] %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x23EEE9940](v7, -1, -1);
    MEMORY[0x23EEE9940](v6, -1, -1);
  }

  (*(v1 + 8))(v3, v0);
  v8 = sub_23D6CEB04();
  v10 = v9;
  ObjectType = swift_getObjectType();
  v12 = (*(v10 + 152))(ObjectType, v10);

  if (v12)
  {
    Strong = swift_unknownObjectWeakLoadStrong();

    if (Strong)
    {
      [Strong pullToDismissViewController];
      swift_unknownObjectRelease();
    }
  }
}

id AXTwiceCompanionMainViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_23D6EE730();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id AXTwiceCompanionMainViewController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionMainViewController_titleLabel;
  sub_23D6CE188();
  *&v3[v6] = v7;
  v8 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionMainViewController_dismissButton;
  *&v3[v8] = sub_23D6CE508();
  *&v3[OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionMainViewController____lazy_storage___watchDeviceView] = 0;
  v9 = &v3[OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionMainViewController____lazy_storage___deviceView];
  *v9 = 0;
  *(v9 + 1) = 0;
  v10 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionMainViewController_statusLabel;
  *&v3[v10] = sub_23D6CEBF8();
  v11 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionMainViewController_pullToDismissManager;
  *&v3[v11] = [objc_allocWithZone(type metadata accessor for AXTwiceCompanionPullToDismissManager()) init];
  v12 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionMainViewController_cardBackgroundView;
  *&v3[v12] = sub_23D6CEF84();
  if (a2)
  {
    v13 = sub_23D6EE730();
  }

  else
  {
    v13 = 0;
  }

  v16.receiver = v3;
  v16.super_class = type metadata accessor for AXTwiceCompanionMainViewController();
  v14 = objc_msgSendSuper2(&v16, sel_initWithNibName_bundle_, v13, a3);

  return v14;
}

id AXTwiceCompanionMainViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id AXTwiceCompanionMainViewController.init(coder:)(void *a1)
{
  v3 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionMainViewController_titleLabel;
  sub_23D6CE188();
  *&v1[v3] = v4;
  v5 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionMainViewController_dismissButton;
  *&v1[v5] = sub_23D6CE508();
  *&v1[OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionMainViewController____lazy_storage___watchDeviceView] = 0;
  v6 = &v1[OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionMainViewController____lazy_storage___deviceView];
  *v6 = 0;
  *(v6 + 1) = 0;
  v7 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionMainViewController_statusLabel;
  *&v1[v7] = sub_23D6CEBF8();
  v8 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionMainViewController_pullToDismissManager;
  *&v1[v8] = [objc_allocWithZone(type metadata accessor for AXTwiceCompanionPullToDismissManager()) init];
  v9 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionMainViewController_cardBackgroundView;
  *&v1[v9] = sub_23D6CEF84();
  v12.receiver = v1;
  v12.super_class = type metadata accessor for AXTwiceCompanionMainViewController();
  v10 = objc_msgSendSuper2(&v12, sel_initWithCoder_, a1);

  if (v10)
  {
  }

  return v10;
}

id AXTwiceCompanionMainViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AXTwiceCompanionMainViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
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

uint64_t sub_23D6D15DC()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_23D6D164C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_23D6D1694()
{
  result = qword_27E2E2C60;
  if (!qword_27E2E2C60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2E2748, &qword_23D6EFEA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2E2C60);
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

_DWORD *sub_23D6D1B60@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
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

id sub_23D6D1BBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 && (v4 = sub_23D6EE730(), v5 = [objc_opt_self() systemImageNamed_], v4, v5))
  {
    v6 = objc_allocWithZone(MEMORY[0x277CCA898]);
    v7 = sub_23D6EE730();
    v8 = [v6 initWithString_];

    v9 = objc_allocWithZone(MEMORY[0x277CCA898]);
    v10 = sub_23D6EE730();
    v11 = [v9 initWithString_];

    v12 = [objc_opt_self() textAttachmentWithImage_];
    sub_23D6D1D74(0, &qword_27E2E2758, 0x277CCAB48);
    v13 = [swift_getObjCClassFromMetadata() attributedStringWithAttachment_];
    [v13 appendAttributedString_];
    [v13 appendAttributedString_];
  }

  else
  {
    v14 = objc_allocWithZone(MEMORY[0x277CCA898]);
    v5 = sub_23D6EE730();
    v13 = [v14 initWithString_];
  }

  return v13;
}

uint64_t sub_23D6D1D74(uint64_t a1, unint64_t *a2, void *a3)
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

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_23D6D1DCC(uint64_t a1, int a2)
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

uint64_t sub_23D6D1DEC(uint64_t result, int a2, int a3)
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

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_23D6D1E60(uint64_t a1, int a2)
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

uint64_t sub_23D6D1E80(uint64_t result, int a2, int a3)
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

void sub_23D6D1EBC(uint64_t a1, unint64_t *a2, uint64_t a3)
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

void sub_23D6D1F28(void *a1)
{
  v3 = [a1 viewControllerForKey_];
  if (v3)
  {
    v25 = v3;
    v4 = [a1 viewControllerForKey_];
    if (v4)
    {
      v5 = v4;
      v6 = [a1 containerView];
      v7 = [v5 view];
      if (v7)
      {
        v8 = v7;
        v9 = [v25 view];
        if (v9)
        {
          v10 = v9;
          [v6 insertSubview:v8 belowSubview:v9];

          [v6 bounds];
          x = v33.origin.x;
          y = v33.origin.y;
          width = v33.size.width;
          height = v33.size.height;
          v15 = CGRectGetHeight(v33);
          v34.origin.x = x;
          v34.origin.y = y;
          v34.size.width = width;
          v34.size.height = height;
          v16 = CGRectGetWidth(v34);
          v35.origin.x = x;
          v35.origin.y = y;
          v35.size.width = width;
          v35.size.height = height;
          v17 = CGRectGetHeight(v35);
          v18 = objc_opt_self();
          v19 = swift_allocObject();
          *(v19 + 2) = v5;
          v19[3] = 0.0;
          v19[4] = v15;
          v19[5] = v16;
          v19[6] = v17;
          v30 = sub_23D6D2A68;
          v31 = v19;
          aBlock = MEMORY[0x277D85DD0];
          v27 = 1107296256;
          v28 = sub_23D6D09E8;
          v29 = &block_descriptor_0;
          v20 = _Block_copy(&aBlock);
          v21 = v5;

          v22 = swift_allocObject();
          *(v22 + 16) = a1;
          *(v22 + 24) = v1;
          v30 = sub_23D6D2AD0;
          v31 = v22;
          aBlock = MEMORY[0x277D85DD0];
          v27 = 1107296256;
          v28 = sub_23D6D2398;
          v29 = &block_descriptor_26;
          v23 = _Block_copy(&aBlock);
          swift_unknownObjectRetain();
          v24 = v1;

          [v18 animateWithDuration:v20 animations:v23 completion:0.3];
          _Block_release(v23);
          _Block_release(v20);

          return;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      return;
    }
  }
}

void sub_23D6D2260(void *a1, double a2, double a3, double a4, double a5)
{
  v9 = [a1 view];
  if (v9)
  {
    v10 = v9;
    [v9 setFrame_];
  }

  else
  {
    __break(1u);
  }
}

id sub_23D6D22EC(int a1, id a2, uint64_t a3)
{
  v5 = [a2 transitionWasCancelled];
  if ((v5 & 1) == 0)
  {
    v6 = *(a3 + OBJC_IVAR____TtC21AXWatchRemoteScreenUI47AXTwiceCompanionPullToDismissAnimatedController_dismissedVC);
    if (v6)
    {
      type metadata accessor for AXTwiceCompanionMainViewController();
      if (swift_dynamicCastClass())
      {
        v7 = v6;
        sub_23D6D0F78();
      }
    }
  }

  return [a2 completeTransition_];
}

uint64_t sub_23D6D2398(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

id sub_23D6D2604(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

char *sub_23D6D2670(void *a1)
{
  v2 = sub_23D6EE670();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23D6EE330();
  v6 = sub_23D6EE660();
  v7 = sub_23D6EE810();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v18 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_23D6D3C38(0xD000000000000022, 0x800000023D6F08C0, &v18);
    _os_log_impl(&dword_23D6CB000, v6, v7, "[TWICE] %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x23EEE9940](v9, -1, -1);
    MEMORY[0x23EEE9940](v8, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  v10 = type metadata accessor for AXTwiceCompanionPullToDismissAnimatedController();
  v11 = objc_allocWithZone(v10);
  *&v11[OBJC_IVAR____TtC21AXWatchRemoteScreenUI47AXTwiceCompanionPullToDismissAnimatedController_dismissedVC] = 0;
  v19.receiver = v11;
  v19.super_class = v10;
  v12 = objc_msgSendSuper2(&v19, sel_init);
  v13 = *&v12[OBJC_IVAR____TtC21AXWatchRemoteScreenUI47AXTwiceCompanionPullToDismissAnimatedController_dismissedVC];
  *&v12[OBJC_IVAR____TtC21AXWatchRemoteScreenUI47AXTwiceCompanionPullToDismissAnimatedController_dismissedVC] = a1;
  v14 = v12;

  v15 = a1;
  return v14;
}

uint64_t sub_23D6D285C()
{
  v1 = v0;
  v2 = sub_23D6EE670();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23D6EE330();
  v6 = sub_23D6EE660();
  v7 = sub_23D6EE810();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_23D6D3C38(0xD000000000000029, 0x800000023D6F0890, &v15);
    _os_log_impl(&dword_23D6CB000, v6, v7, "[TWICE] %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x23EEE9940](v9, -1, -1);
    MEMORY[0x23EEE9940](v8, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  if (*(v1 + OBJC_IVAR____TtC21AXWatchRemoteScreenUI36AXTwiceCompanionPullToDismissManager_isInteractive) != 1)
  {
    return 0;
  }

  v10 = *(v1 + OBJC_IVAR____TtC21AXWatchRemoteScreenUI36AXTwiceCompanionPullToDismissManager_percentDrivenInteractive);
  if (!v10)
  {
    return 0;
  }

  v11 = *(v1 + OBJC_IVAR____TtC21AXWatchRemoteScreenUI36AXTwiceCompanionPullToDismissManager_percentDrivenInteractive);
  v12 = v10;
  return v11;
}

uint64_t sub_23D6D2A30()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_23D6D2A90()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

id sub_23D6D2AE0()
{
  v5.receiver = v0;
  v5.super_class = type metadata accessor for AXTwiceCompanionRendererView();
  objc_msgSendSuper2(&v5, sel_layoutSubviews);
  v1 = objc_opt_self();
  [v1 begin];
  [v1 setDisableActions_];
  v2 = *&v0[OBJC_IVAR____TtC21AXWatchRemoteScreenUI28AXTwiceCompanionRendererView_mirroringLayer];
  if (v2)
  {
    v3 = v2;
    [v0 bounds];
    [v3 setFrame_];
  }

  return [v1 commit];
}

void sub_23D6D2C0C(void *a1)
{
  v3 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI28AXTwiceCompanionRendererView_mirroringLayer;
  [*&v1[OBJC_IVAR____TtC21AXWatchRemoteScreenUI28AXTwiceCompanionRendererView_mirroringLayer] removeFromSuperlayer];
  v4 = *&v1[v3];
  *&v1[v3] = a1;
  v5 = a1;

  [v1 bounds];
  [v5 setFrame_];
  v6 = *&v1[v3];
  if (v6)
  {
    [v6 setContentsGravity_];
    v7 = *&v1[v3];
    if (v7)
    {
      [v7 setNeedsDisplayOnBoundsChange_];
      v8 = *&v1[v3];
      if (v8)
      {
        v9 = *&v1[OBJC_IVAR____TtC21AXWatchRemoteScreenUI28AXTwiceCompanionRendererView_cornerRadiusRatio];
        v10 = v8;
        [v1 frame];
        [v10 setCornerRadius_];

        v11 = *&v1[v3];
        if (v11)
        {
          [v11 setCornerCurve_];
          v12 = *&v1[v3];
          if (v12)
          {
            [v12 setMasksToBounds_];
            v13 = *&v1[v3];
            if (v13)
            {
              v15 = v13;
              v14 = [v1 layer];
              [v14 insertSublayer:v15 atIndex:0];

              [v1 layoutSubviews];
            }
          }
        }
      }
    }
  }
}

void sub_23D6D2DC8(unint64_t a1, char a2, double a3, double a4)
{
  [v4 bounds];
  v9 = v8;
  [v4 bounds];
  [v4 convertPoint:0 toView:v9];
  v11 = v10;
  v13 = v12;
  [v4 frame];
  v15 = v14 / a3;
  [v4 frame];
  v17 = v16 / a4;
  CGAffineTransformMakeTranslation(&v64, v11, v13);
  v60 = *&v64.a;
  v61 = *&v64.c;
  ty = v64.ty;
  tx = v64.tx;
  CGAffineTransformMakeScale(&v64, v15, v17);
  v56 = *&v64.a;
  v57 = *&v64.c;
  v18 = v64.ty;
  v55 = v64.tx;
  if (a1 >> 62)
  {
    goto LABEL_22;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_23D6EE9A0())
  {
    v20 = 0;
    v53 = a1 & 0xFFFFFFFFFFFFFF8;
    v54 = a1 & 0xC000000000000001;
    v49 = *(MEMORY[0x277CBF2C0] + 16);
    v50 = *MEMORY[0x277CBF2C0];
    v48 = *(MEMORY[0x277CBF2C0] + 32);
    while (1)
    {
      if (v54)
      {
        v21 = MEMORY[0x23EEE9030](v20, a1);
      }

      else
      {
        if (v20 >= *(v53 + 16))
        {
          goto LABEL_21;
        }

        v21 = *(a1 + 8 * v20 + 32);
      }

      v22 = v21;
      v23 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      [v21 accessibilityFrame];
      v27 = v26;
      v29 = v28;
      v30 = a3 - v24 - v26;
      v31 = a4 - v25 - v28;
      if (a2)
      {
        v32 = v25;
      }

      else
      {
        v32 = v31;
      }

      if (a2)
      {
        v33 = v24;
      }

      else
      {
        v33 = v30;
      }

      [v4 frame];
      v35 = v34 / a3;
      [v4 frame];
      [v22 setAccessibilityFrameInContainerSpace_];
      if ((a2 & 1) == 0)
      {
        *&v64.a = v50;
        *&v64.c = v49;
        *&v64.tx = v48;
        CGAffineTransformTranslate(&v63, &v64, a3 * 0.5, a4 * 0.5);
        v64 = v63;
        CGAffineTransformRotate(&v63, &v64, 3.14159265);
        v64 = v63;
        CGAffineTransformTranslate(&v63, &v64, -(a3 * 0.5), -(a4 * 0.5));
        v37 = v63.tx;
        v38 = v63.ty;
        v51 = *&v63.c;
        v52 = *&v63.a;
        v39 = [v22 accessibilityPath];
        *&v64.a = v52;
        *&v64.c = v51;
        v64.tx = v37;
        v64.ty = v38;
        [v39 applyTransform_];
      }

      v40 = [v22 accessibilityPath];
      *&v64.a = v56;
      *&v64.c = v57;
      v64.tx = v55;
      v64.ty = v18;
      [v40 applyTransform_];

      v41 = [v22 accessibilityPath];
      *&v64.a = v60;
      *&v64.c = v61;
      v64.tx = tx;
      v64.ty = ty;
      [v41 applyTransform_];

      objc_opt_self();
      v42 = swift_dynamicCastObjCClass();
      if (v42)
      {
        v43 = v42;
        v44 = a1;
        v45 = v22;
        [v43 setAxActionHandler_];
        [v43 overrideAccessibilityMethodsForRemoteDevice];

        a1 = v44;
      }

      ++v20;
      if (v23 == i)
      {
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    ;
  }

LABEL_23:
  sub_23D6D3238(a1);
  v46 = sub_23D6EE7A0();

  [v4 setAccessibilityElements_];

  if (_AXSCommandAndControlEnabled())
  {
    v47 = *MEMORY[0x277CE6D40];
    if (*MEMORY[0x277CE6D40])
    {
      UIAccessibilityPostNotification(*MEMORY[0x277D76488], *MEMORY[0x277CE6D40]);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    UIAccessibilityPostNotification(*MEMORY[0x277D76488], v4);
  }
}

char *sub_23D6D3238(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_23D6EE9A0();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x277D84F90];
  if (!v2)
  {
    return v3;
  }

  v13 = MEMORY[0x277D84F90];
  result = sub_23D6D4350(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v13;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        MEMORY[0x23EEE9030](i, a1);
        sub_23D6D4370();
        swift_dynamicCast();
        v13 = v3;
        v7 = *(v3 + 16);
        v6 = *(v3 + 24);
        if (v7 >= v6 >> 1)
        {
          sub_23D6D4350((v6 > 1), v7 + 1, 1);
          v3 = v13;
        }

        *(v3 + 16) = v7 + 1;
        sub_23D6D43BC(v12, (v3 + 32 * v7 + 32));
      }
    }

    else
    {
      v8 = (a1 + 32);
      sub_23D6D4370();
      do
      {
        v9 = *v8;
        swift_dynamicCast();
        v13 = v3;
        v11 = *(v3 + 16);
        v10 = *(v3 + 24);
        if (v11 >= v10 >> 1)
        {
          sub_23D6D4350((v10 > 1), v11 + 1, 1);
          v3 = v13;
        }

        *(v3 + 16) = v11 + 1;
        sub_23D6D43BC(v12, (v3 + 32 * v11 + 32));
        ++v8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

id AXTwiceCompanionRendererView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id AXTwiceCompanionRendererView.init(frame:)(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  *&v4[OBJC_IVAR____TtC21AXWatchRemoteScreenUI28AXTwiceCompanionRendererView_mirroringLayer] = 0;
  swift_unknownObjectWeakInit();
  sub_23D6EE5E0();
  v10 = sub_23D6EE560();
  v11 = MEMORY[0x23EEE8CF0]();

  v12 = 0.23;
  if (v11)
  {
    v12 = 0.29;
  }

  *&v5[OBJC_IVAR____TtC21AXWatchRemoteScreenUI28AXTwiceCompanionRendererView_cornerRadiusRatio] = v12;
  v14.receiver = v5;
  v14.super_class = type metadata accessor for AXTwiceCompanionRendererView();
  return objc_msgSendSuper2(&v14, sel_initWithFrame_, a1, a2, a3, a4);
}

id AXTwiceCompanionRendererView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id AXTwiceCompanionRendererView.init(coder:)(void *a1)
{
  v2 = v1;
  *&v1[OBJC_IVAR____TtC21AXWatchRemoteScreenUI28AXTwiceCompanionRendererView_mirroringLayer] = 0;
  swift_unknownObjectWeakInit();
  sub_23D6EE5E0();
  v4 = sub_23D6EE560();
  v5 = MEMORY[0x23EEE8CF0]();

  v6 = 0.23;
  if (v5)
  {
    v6 = 0.29;
  }

  *&v2[OBJC_IVAR____TtC21AXWatchRemoteScreenUI28AXTwiceCompanionRendererView_cornerRadiusRatio] = v6;
  v9.receiver = v2;
  v9.super_class = type metadata accessor for AXTwiceCompanionRendererView();
  v7 = objc_msgSendSuper2(&v9, sel_initWithCoder_, a1);

  if (v7)
  {
  }

  return v7;
}

id AXTwiceCompanionRendererView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AXTwiceCompanionRendererView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

BOOL AXTwiceCompanionRendererView.perform(_:withValue:on:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_23D6EE670();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23D6EE330();
  v12 = sub_23D6EE660();
  v13 = sub_23D6EE810();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v28[1] = v4;
    v15 = a2;
    v16 = a3;
    v17 = v14;
    v18 = swift_slowAlloc();
    v29[0] = v18;
    *v17 = 136315394;
    *(v17 + 4) = sub_23D6D3C38(0xD000000000000018, 0x800000023D6F0950, v29);
    *(v17 + 12) = 1024;
    *(v17 + 14) = a1;
    _os_log_impl(&dword_23D6CB000, v12, v13, "[TWICE] %s %u", v17, 0x12u);
    __swift_destroy_boxed_opaque_existential_0(v18);
    MEMORY[0x23EEE9940](v18, -1, -1);
    v19 = v17;
    a3 = v16;
    a2 = v15;
    MEMORY[0x23EEE9940](v19, -1, -1);
  }

  (*(v9 + 8))(v11, v8);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    sub_23D6D3AE8(a2, v29);
    v21 = v30;
    if (v30)
    {
      v22 = __swift_project_boxed_opaque_existential_0(v29, v30);
      v23 = *(v21 - 8);
      MEMORY[0x28223BE20](v22);
      v25 = v28 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v23 + 16))(v25);
      v26 = sub_23D6EE9F0();
      (*(v23 + 8))(v25, v21);
      __swift_destroy_boxed_opaque_existential_0(v29);
    }

    else
    {
      v26 = 0;
    }

    [Strong axActionPerformWithAction:a1 value:v26 bridgeElement:a3];
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  return Strong != 0;
}

uint64_t sub_23D6D3AE8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E2B60, qword_23D6EFE00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_23D6D3C38(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_23D6D3D04(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
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
    sub_23D6D42F0(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_23D6D3D04(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_23D6D3E10(a5, a6);
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
    result = sub_23D6EE920();
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

void *sub_23D6D3E10(uint64_t a1, unint64_t a2)
{
  v3 = sub_23D6D3E5C(a1, a2);
  sub_23D6D3F8C(&unk_284FB7580);
  return v3;
}

void *sub_23D6D3E5C(uint64_t a1, unint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  v6 = sub_23D6D4078(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_23D6EE920();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_23D6EE770();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_23D6D4078(v10, 0);
        result = sub_23D6EE8F0();
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

uint64_t sub_23D6D3F8C(uint64_t result)
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

  result = sub_23D6D40EC(result, v11, 1, v3);
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

void *sub_23D6D4078(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E29A8, &qword_23D6EFE68);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_23D6D40EC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E29A8, &qword_23D6EFE68);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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

uint64_t sub_23D6D4260(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E2B60, qword_23D6EFE00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23D6D42F0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

char *sub_23D6D4350(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_23D6D43CC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

unint64_t sub_23D6D4370()
{
  result = qword_27E2E29B0;
  if (!qword_27E2E29B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E2E29B0);
  }

  return result;
}

_OWORD *sub_23D6D43BC(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

char *sub_23D6D43CC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E29B8, &unk_23D6EFE70);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    v10 = MEMORY[0x277D84F90];
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

void sub_23D6D44DC(int a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_23D6EE690();
  v21 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_23D6EE6C0();
  v11 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = (*(a3 + 128))(a2, a3);
  v15 = [v14 isHidden];

  if (((v15 ^ a1) & 1) == 0)
  {
    sub_23D6D4B84();
    v16 = sub_23D6EE850();
    v17 = swift_allocObject();
    *(v17 + 16) = a2;
    *(v17 + 24) = a3;
    *(v17 + 32) = v4;
    *(v17 + 40) = a1 & 1;
    aBlock[4] = sub_23D6D4C08;
    aBlock[5] = v17;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_23D6D09E8;
    aBlock[3] = &block_descriptor_1;
    v18 = _Block_copy(aBlock);
    v19 = v4;

    sub_23D6EE6A0();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_23D6D4C30();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E2748, &qword_23D6EFEA0);
    sub_23D6D1694();
    sub_23D6EE8B0();
    MEMORY[0x23EEE8F80](0, v13, v10, v18);
    _Block_release(v18);

    (*(v21 + 8))(v10, v8);
    (*(v11 + 8))(v13, v20);
  }
}

void sub_23D6D47B8(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a4 + 128);
  v8 = v7(a3, a4);
  [v8 setHidden_];

  v9 = v7(a3, a4);
  v11 = v9;
  v10 = &selRef_startAnimating;
  if ((a2 & 1) == 0)
  {
    v10 = &selRef_stopAnimating;
  }

  [v9 *v10];
}

Swift::Void __swiftcall AXTwiceCompanionDeviceView.addScreenSubLayer(layer:)(CALayer layer)
{
  v3 = v2;
  v4 = v1;
  v6 = *(v2 + 184);
  v7 = layer.super.isa;
  v6(layer.super.isa, v4, v3);
  v8 = (*(v3 + 152))(v4, v3);
  if (v8)
  {
    v9 = v8;
    sub_23D6D2C0C(v7);
  }
}

unint64_t sub_23D6D4B84()
{
  result = qword_27E2E2AE0;
  if (!qword_27E2E2AE0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E2E2AE0);
  }

  return result;
}

uint64_t sub_23D6D4BD0()
{

  return MEMORY[0x2821FE8E8](v0, 41, 7);
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_23D6D4C30()
{
  result = qword_27E2E2C50;
  if (!qword_27E2E2C50)
  {
    sub_23D6EE690();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2E2C50);
  }

  return result;
}

void sub_23D6D4CA0()
{
  v1 = [v0 accessibilityTraits];
  if ((*MEMORY[0x277D76540] & ~v1) == 0)
  {
    v2 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI23AXTwiceWatchCrownButton_watchCrownDirectTouchTimer;
    if (!*&v0[OBJC_IVAR____TtC21AXWatchRemoteScreenUI23AXTwiceWatchCrownButton_watchCrownDirectTouchTimer])
    {
      v3 = objc_opt_self();
      v4 = *&v0[OBJC_IVAR____TtC21AXWatchRemoteScreenUI23AXTwiceWatchCrownButton_watchCrownDirectTouchInterval];
      v5 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v9[4] = sub_23D6DA024;
      v9[5] = v5;
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 1107296256;
      v9[2] = sub_23D6D4ED0;
      v9[3] = &block_descriptor_2;
      v6 = _Block_copy(v9);

      v7 = [v3 scheduledTimerWithTimeInterval:0 repeats:v6 block:v4];
      _Block_release(v6);
      v8 = *&v0[v2];
      *&v0[v2] = v7;
    }
  }
}

void sub_23D6D4DF0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(Strong + OBJC_IVAR____TtC21AXWatchRemoteScreenUI23AXTwiceWatchCrownButton_watchCrownDirectTouchTimer);

    [v4 invalidate];
  }

  swift_beginAccess();
  v5 = swift_unknownObjectWeakLoadStrong();
  if (v5)
  {
    v6 = *&v5[OBJC_IVAR____TtC21AXWatchRemoteScreenUI23AXTwiceWatchCrownButton_watchCrownDirectTouchTimer];
    *&v5[OBJC_IVAR____TtC21AXWatchRemoteScreenUI23AXTwiceWatchCrownButton_watchCrownDirectTouchTimer] = 0;
  }

  swift_beginAccess();
  v7 = swift_unknownObjectWeakLoadStrong();
  if (v7)
  {
    v8 = v7;
    sub_23D6D4F80();
  }
}

void sub_23D6D4ED0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

void sub_23D6D4F80()
{
  v1 = v0;
  v2 = sub_23D6EE670();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23D6EE330();
  v6 = sub_23D6EE660();
  v7 = sub_23D6EE810();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v13 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_23D6D3C38(0xD00000000000001DLL, 0x800000023D6F13D0, &v13);
    _os_log_impl(&dword_23D6CB000, v6, v7, "[TWICE] %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x23EEE9940](v9, -1, -1);
    MEMORY[0x23EEE9940](v8, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  [v1 setAccessibilityTraits_];
  v10 = *MEMORY[0x277D76438];
  v11 = sub_23D6EE730();
  UIAccessibilityPostNotification(v10, v11);
}

id AXTwiceWatchCrownButton.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id AXTwiceWatchCrownButton.init(frame:)(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC21AXWatchRemoteScreenUI23AXTwiceWatchCrownButton_watchCrownDirectTouchTimer] = 0;
  *&v4[OBJC_IVAR____TtC21AXWatchRemoteScreenUI23AXTwiceWatchCrownButton_watchCrownDirectTouchInterval] = 0x3FF0000000000000;
  v10.receiver = v4;
  v10.super_class = type metadata accessor for AXTwiceWatchCrownButton();
  return objc_msgSendSuper2(&v10, sel_initWithFrame_, a1, a2, a3, a4);
}

id AXTwiceWatchCrownButton.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id AXTwiceWatchCrownButton.init(coder:)(void *a1)
{
  *&v1[OBJC_IVAR____TtC21AXWatchRemoteScreenUI23AXTwiceWatchCrownButton_watchCrownDirectTouchTimer] = 0;
  *&v1[OBJC_IVAR____TtC21AXWatchRemoteScreenUI23AXTwiceWatchCrownButton_watchCrownDirectTouchInterval] = 0x3FF0000000000000;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for AXTwiceWatchCrownButton();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id AXTwiceWatchCrownButton.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AXTwiceWatchCrownButton();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_23D6D5490()
{
  v1 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_isCrownOrientationOnRightSide;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_23D6D54D4(char a1)
{
  v3 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_isCrownOrientationOnRightSide;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double sub_23D6D5584()
{
  v1 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_leftPadding;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_23D6D55C8(double a1)
{
  v3 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_leftPadding;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

void *sub_23D6D5678()
{
  v1 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_leftConstraint;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_23D6D56C4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_leftConstraint;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

double sub_23D6D577C()
{
  v1 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_rightPadding;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_23D6D57C0(double a1)
{
  v3 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_rightPadding;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

void *sub_23D6D5870()
{
  v1 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_rightContraint;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_23D6D58BC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_rightContraint;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void *sub_23D6D5974()
{
  v1 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_deviceChromeView;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_23D6D59C0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_deviceChromeView;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id sub_23D6D5A78()
{
  type metadata accessor for AXTwiceWatchCrownButton();
  v0 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v1 = objc_opt_self();
  v2 = v0;
  v3 = [v1 clearColor];
  [v2 setBackgroundColor_];

  v4 = v2;
  [v4 setIsAccessibilityElement_];
  sub_23D6EE5E0();
  v5 = sub_23D6EE560();
  sub_23D6EE570();

  v6 = sub_23D6EE730();

  [v4 setAccessibilityLabel_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E2A98, &qword_23D6EFF60);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_23D6EFEB0;
  v8 = sub_23D6EE560();
  v9 = sub_23D6EE570();
  v11 = v10;

  *(v7 + 32) = v9;
  *(v7 + 40) = v11;
  v12 = sub_23D6EE7A0();

  [v4 setAccessibilityUserInputLabels_];

  [v4 setAccessibilityTraits_];
  [v4 setTranslatesAutoresizingMaskIntoConstraints_];

  return v4;
}

id sub_23D6D5C70()
{
  v1 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_watchCrownButton;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_23D6D5CC4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_watchCrownButton;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void *sub_23D6D5D7C()
{
  v1 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_swipeUpCrownGesture;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_23D6D5DC8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_swipeUpCrownGesture;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void *sub_23D6D5E80()
{
  v1 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_swipeDownCrownGesture;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_23D6D5ECC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_swipeDownCrownGesture;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id sub_23D6D5F84()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v1 = [objc_opt_self() clearColor];
  [v0 setBackgroundColor_];

  v2 = v0;
  [v2 setIsAccessibilityElement_];
  sub_23D6EE5E0();
  v3 = sub_23D6EE560();
  sub_23D6EE570();

  v4 = sub_23D6EE730();

  [v2 setAccessibilityLabel_];

  [v2 setAccessibilityTraits_];
  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  return v2;
}

id sub_23D6D60BC()
{
  v1 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_watchSideButton;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_23D6D6110(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_watchSideButton;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void *sub_23D6D61C8()
{
  v1 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_rendererView;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_23D6D6214(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_rendererView;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void *sub_23D6D62CC()
{
  v1 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_mirroringLayer;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_23D6D6318(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_mirroringLayer;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id sub_23D6D63D0()
{
  v1 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView____lazy_storage___deviceSpinner;
  v2 = *(v0 + OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView____lazy_storage___deviceSpinner);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView____lazy_storage___deviceSpinner);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle_];
    v5 = [objc_opt_self() whiteColor];
    [v4 setColor_];

    v6 = v4;
    [v6 setTranslatesAutoresizingMaskIntoConstraints_];
    [v6 stopAnimating];
    [v6 setHidden_];

    v7 = *(v0 + v1);
    *(v0 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

void (*sub_23D6D64DC(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_23D6D63D0();
  return sub_23D6D6524;
}

void sub_23D6D6524(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView____lazy_storage___deviceSpinner);
  *(v1 + OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView____lazy_storage___deviceSpinner) = v2;
}

id sub_23D6D653C()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v1 = [objc_opt_self() clearColor];
  [v0 setBackgroundColor_];

  v2 = v0;
  [v2 setIsAccessibilityElement_];
  sub_23D6EE5E0();
  v3 = sub_23D6EE560();
  MEMORY[0x23EEE8CE0](0xD00000000000001BLL, 0x800000023D6F1260);

  v4 = sub_23D6EE730();

  [v2 setAccessibilityLabel_];

  [v2 setAccessibilityTraits_];
  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  return v2;
}

id sub_23D6D6674()
{
  v1 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_watchStingButton;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_23D6D66C8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_watchStingButton;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

char *sub_23D6D6780(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_isCrownOrientationOnRightSide;
  v5[v10] = AXIsCrownOrientationOnRightSide();
  *&v5[OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_leftPadding] = 0;
  *&v5[OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_leftConstraint] = 0;
  *&v5[OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_rightPadding] = 0;
  *&v5[OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_rightContraint] = 0;
  *&v5[OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_deviceChromeView] = 0;
  *&v5[OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_watchCrownButtonTopConstraint] = 0;
  *&v5[OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_watchCrownButtonHorizontalConstraint] = 0;
  v11 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_watchCrownButton;
  *&v5[v11] = sub_23D6D5A78();
  *&v5[OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_swipeUpCrownGesture] = 0;
  *&v5[OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_swipeDownCrownGesture] = 0;
  *&v5[OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_watchSideButtonTopConstraint] = 0;
  *&v5[OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_watchSideButtonHorizontalConstraint] = 0;
  v12 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_watchSideButton;
  *&v5[v12] = sub_23D6D5F84();
  *&v5[OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_watchRendererViewLeftConstraint] = 0;
  *&v5[OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_watchRendererViewRightConstraint] = 0;
  *&v5[OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_rendererView] = 0;
  *&v5[OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_mirroringLayer] = 0;
  *&v5[OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView____lazy_storage___deviceSpinner] = 0;
  v13 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_hasStingSupport;
  sub_23D6EE5E0();
  v14 = sub_23D6EE560();
  v15 = MEMORY[0x23EEE8CF0]();

  v5[v13] = v15 & 1;
  *&v5[OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_watchStingButtonTopConstraint] = 0;
  *&v5[OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_watchStingButtonHorizontalConstraint] = 0;
  v16 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_watchStingButton;
  *&v5[v16] = sub_23D6D653C();
  v17 = type metadata accessor for AXTwiceCompanionWatchView();
  v181.receiver = v5;
  v181.super_class = v17;
  v18 = objc_msgSendSuper2(&v181, sel_initWithFrame_, a1, a2, a3, a4);
  [v18 setTranslatesAutoresizingMaskIntoConstraints_];
  v19 = [objc_opt_self() watchView];
  v20 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_deviceChromeView;
  swift_beginAccess();
  v21 = *&v18[v20];
  *&v18[v20] = v19;

  v169 = v20;
  v22 = *&v18[v20];
  if (v22)
  {
    [v22 setTranslatesAutoresizingMaskIntoConstraints_];
  }

  v176 = v17;
  type metadata accessor for AXTwiceCompanionRendererView();
  v23 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v24 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_rendererView;
  swift_beginAccess();
  v25 = *&v18[v24];
  *&v18[v24] = v23;

  v26 = *&v18[v24];
  if (v26)
  {
    [v26 setTranslatesAutoresizingMaskIntoConstraints_];
    v27 = *&v18[v24];
    if (v27)
    {
      [v27 setContentMode_];
    }
  }

  v167 = v24;
  v28 = [objc_allocWithZone(MEMORY[0x277D75B80]) initWithTarget:v18 action:sel_digitalCrownButtonTappedWithSender_];
  [v28 setNumberOfTapsRequired_];
  [v28 setNumberOfTouchesRequired_];
  v29 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_watchCrownButton;
  swift_beginAccess();
  [*&v18[v29] addGestureRecognizer_];
  sub_23D6D9088(0);
  v30 = [objc_allocWithZone(MEMORY[0x277D75B80]) &off_278BE12F8];
  [v30 setNumberOfTapsRequired_];
  [v30 setNumberOfTouchesRequired_];
  [v28 requireGestureRecognizerToFail_];
  [*&v18[v29] addGestureRecognizer_];
  v31 = [objc_allocWithZone(MEMORY[0x277D75B80]) initWithTarget:v18 action:sel_tripleCrownButtonTappedWithSender_];
  [v31 setNumberOfTapsRequired_];
  [v31 setNumberOfTouchesRequired_];
  v174 = v30;
  [v30 requireGestureRecognizerToFail_];
  v175 = v28;
  [v28 requireGestureRecognizerToFail_];
  v173 = v31;
  [*&v18[v29] addGestureRecognizer_];
  v32 = [objc_allocWithZone(MEMORY[0x277D75AE0]) initWithTarget:v18 action:sel_digitalCrownSwipeUpWithGesture_];
  v33 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_swipeUpCrownGesture;
  swift_beginAccess();
  v34 = *&v18[v33];
  *&v18[v33] = v32;

  v35 = *&v18[v33];
  if (v35)
  {
    [v35 setDirection_];
    if (*&v18[v33])
    {
      [*&v18[v29] addGestureRecognizer_];
    }
  }

  v36 = [objc_allocWithZone(MEMORY[0x277D75AE0]) initWithTarget:v18 action:sel_digitalCrownSwipeDownWithGesture_];
  v37 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_swipeDownCrownGesture;
  swift_beginAccess();
  v38 = *&v18[v37];
  *&v18[v37] = v36;

  v39 = *&v18[v37];
  if (v39)
  {
    [v39 setDirection_];
    if (*&v18[v37])
    {
      [*&v18[v29] addGestureRecognizer_];
    }
  }

  v164 = v29;
  v172 = [objc_allocWithZone(MEMORY[0x277D75708]) initWithTarget:v18 action:sel_digitalCrownLongPressedWithGesture_];
  [*&v18[v29] addGestureRecognizer_];
  v40 = [objc_allocWithZone(MEMORY[0x277D75B80]) initWithTarget:v18 action:sel_sideButtonTappedWithSender_];
  [v40 setNumberOfTapsRequired_];
  [v40 byte_278BE1578];
  v41 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_watchSideButton;
  swift_beginAccess();
  v171 = v40;
  [*&v18[v41] addGestureRecognizer_];
  v170 = [objc_allocWithZone(MEMORY[0x277D75708]) initWithTarget:v18 action:sel_sideButtonLongPressedWithGesture_];
  [*&v18[v41] addGestureRecognizer_];
  v166 = v41;
  v42 = *&v18[v41];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E2730, &unk_23D6EFC60);
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_23D6EFEC0;
  sub_23D6D1D74(0, &qword_27E2E2A50, 0x277D75088);
  v44 = v42;
  v45 = sub_23D6EE560();
  v46 = sub_23D6EE570();
  v48 = v47;

  v180 = v176;
  v179[0] = v18;
  *(v43 + 32) = sub_23D6D7C58(v46, v48, v179, sel_sideButtonAXLongPressed_);
  v49 = sub_23D6EE7A0();

  [v44 setAccessibilityCustomActions_];

  v163 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_hasStingSupport;
  if (v18[OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_hasStingSupport] == 1)
  {
    v50 = objc_allocWithZone(MEMORY[0x277D75B80]);
    v51 = v18;
    v52 = [v50 initWithTarget:v51 action:sel_stingButtonTappedWithSender_];
    [v52 setNumberOfTapsRequired_];
    [v52 setNumberOfTouchesRequired_];
    v53 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_watchStingButton;
    swift_beginAccess();
    v162 = v52;
    [*&v51[v53] addGestureRecognizer_];
    v161 = [objc_allocWithZone(MEMORY[0x277D75708]) initWithTarget:v51 action:sel_stingButtonLongPressedWithGesture_];
    [*&v51[v53] addGestureRecognizer_];
    v54 = swift_allocObject();
    *(v54 + 16) = xmmword_23D6EFEC0;
    v55 = sub_23D6EE560();
    v56 = MEMORY[0x23EEE8CE0](0xD00000000000001CLL, 0x800000023D6F1320);
    v58 = v57;

    v180 = v176;
    v179[0] = v51;
    *(v54 + 32) = sub_23D6D7C58(v56, v58, v179, sel_stingButtonAXKeycord_);
    v178 = v54;
    v59 = sub_23D6EE560();
    v60 = MEMORY[0x23EEE8CE0](0xD00000000000002ALL, 0x800000023D6F1340);
    v62 = v61;

    v180 = v176;
    v179[0] = v51;
    sub_23D6D7C58(v60, v62, v179, sel_stingButtonAXLongPressed_);
    MEMORY[0x23EEE8EB0]();
    if (*((v178 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v178 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_23D6EE7D0();
    }

    sub_23D6EE7E0();
    v63 = *&v51[v53];
    v64 = sub_23D6EE7A0();

    [v63 setAccessibilityCustomActions_];
  }

  v65 = *&v18[v169];
  if (v65)
  {
    v66 = *&v167[v18];
    if (v66)
    {
      v67 = v66;
      v68 = v65;
      [v18 addSubview_];
      v69 = objc_opt_self();
      v70 = swift_allocObject();
      *(v70 + 16) = xmmword_23D6EFED0;
      v71 = [v68 topAnchor];
      v72 = [v18 topAnchor];
      v73 = [v71 constraintEqualToAnchor_];

      *(v70 + 32) = v73;
      v74 = [v68 leadingAnchor];
      v75 = [v18 leadingAnchor];
      v76 = [v74 constraintEqualToAnchor_];

      *(v70 + 40) = v76;
      v77 = [v68 trailingAnchor];
      v78 = [v18 trailingAnchor];
      v79 = [v77 constraintEqualToAnchor_];

      *(v70 + 48) = v79;
      v80 = [v68 bottomAnchor];
      v81 = [v18 bottomAnchor];
      v82 = [v80 constraintEqualToAnchor_];

      *(v70 + 56) = v82;
      v83 = [v68 centerXAnchor];
      v84 = [v18 centerXAnchor];
      v85 = [v83 constraintEqualToAnchor_];

      *(v70 + 64) = v85;
      v86 = [v68 centerYAnchor];
      v87 = [v18 centerYAnchor];
      v88 = [v86 constraintEqualToAnchor_];

      *(v70 + 72) = v88;
      sub_23D6D1D74(0, &qword_27E2E2738, 0x277CCAAD0);
      v89 = sub_23D6EE7A0();

      v177 = v69;
      [v69 activateConstraints_];

      v90 = v67;
      v91 = [v90 leftAnchor];
      v92 = [v68 leftAnchor];
      v93 = [v91 constraintEqualToAnchor_];

      v94 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_watchRendererViewLeftConstraint;
      v95 = *&v18[OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_watchRendererViewLeftConstraint];
      *&v18[OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_watchRendererViewLeftConstraint] = v93;

      v96 = [v90 rightAnchor];
      v97 = [v68 rightAnchor];
      v98 = [v96 constraintEqualToAnchor_];

      v99 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_watchRendererViewRightConstraint;
      v100 = *&v18[OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_watchRendererViewRightConstraint];
      *&v18[OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_watchRendererViewRightConstraint] = v98;

      sub_23D6D7DD0();
      v101 = *&v18[v94];
      if (v101)
      {
        v102 = *&v18[v99];
        if (v102)
        {
          v103 = v101;
          v104 = v102;
          [v18 addSubview_];
          v105 = swift_allocObject();
          *(v105 + 16) = xmmword_23D6EFC30;
          *(v105 + 32) = v103;
          *(v105 + 40) = v104;
          v168 = v103;
          v165 = v104;
          v106 = [v90 topAnchor];
          v107 = [v68 topAnchor];
          v108 = sub_23D6EE560();
          v109 = MEMORY[0x23EEE8CF0]();

          v110 = 24.0;
          if (v109)
          {
            v110 = 25.0;
          }

          v111 = [v106 constraintEqualToAnchor:v107 constant:v110];

          *(v105 + 48) = v111;
          v112 = [v90 bottomAnchor];
          v113 = [v68 bottomAnchor];
          v114 = sub_23D6EE560();
          v115 = MEMORY[0x23EEE8CF0]();

          v116 = -24.0;
          if (v115)
          {
            v116 = -25.0;
          }

          v117 = [v112 constraintEqualToAnchor:v113 constant:v116];

          *(v105 + 56) = v117;
          v118 = sub_23D6EE7A0();

          [v69 activateConstraints_];
        }
      }

      [v18 addSubview_];
      [v18 addSubview_];
      sub_23D6D7F40();
      v119 = swift_allocObject();
      *(v119 + 16) = xmmword_23D6EFC30;
      v120 = [*&v18[v164] widthAnchor];
      v121 = [v120 constraintEqualToConstant_];

      *(v119 + 32) = v121;
      v122 = [*&v18[v164] heightAnchor];
      v123 = [v90 heightAnchor];
      v124 = [v122 constraintEqualToAnchor:v123 multiplier:0.5];

      *(v119 + 40) = v124;
      v125 = [*&v18[v166] widthAnchor];
      v126 = [*&v18[v164] widthAnchor];
      v127 = [v125 constraintEqualToAnchor_];

      *(v119 + 48) = v127;
      v128 = [*&v18[v166] heightAnchor];
      v129 = [*&v18[v164] heightAnchor];
      v130 = [v128 constraintEqualToAnchor_];

      *(v119 + 56) = v130;
      v131 = sub_23D6EE7A0();

      [v69 activateConstraints_];

      if (v18[v163] == 1)
      {
        v132 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_watchStingButton;
        swift_beginAccess();
        [v18 addSubview_];
        sub_23D6D8448();
        v133 = swift_allocObject();
        *(v133 + 16) = xmmword_23D6EFC00;
        v134 = [*&v18[v132] byte_278BE1576];
        v135 = [*&v18[v166] byte_278BE1576];
        v136 = [v134 &selRef:v135 interactionControllerForDismissal:? + 5];

        *(v133 + 32) = v136;
        v137 = [*&v18[v132] heightAnchor];
        v138 = [*&v18[v166] heightAnchor];
        v139 = [v137 &selRef:v138 interactionControllerForDismissal:? + 5];

        *(v133 + 40) = v139;
        v140 = sub_23D6EE7A0();

        [v177 activateConstraints_];
      }

      v141 = sub_23D6D63D0();
      [v18 addSubview_];

      v142 = swift_allocObject();
      *(v142 + 16) = xmmword_23D6EFC30;
      v143 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView____lazy_storage___deviceSpinner;
      v144 = [*&v18[OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView____lazy_storage___deviceSpinner] centerXAnchor];
      v145 = [v90 centerXAnchor];
      v146 = [v144 &selRef:v145 interactionControllerForDismissal:? + 5];

      *(v142 + 32) = v146;
      v147 = [*&v18[v143] centerYAnchor];
      v148 = [v90 centerYAnchor];
      v149 = [v147 &selRef:v148 interactionControllerForDismissal:? + 5];

      *(v142 + 40) = v149;
      v150 = [*&v18[v143] byte_278BE1576];
      v151 = [v90 byte_278BE1576];

      v152 = [v150 constraintEqualToAnchor:v151 multiplier:0.5];
      *(v142 + 48) = v152;
      v153 = [*&v18[v143] heightAnchor];
      v154 = [*&v18[v143] heightAnchor];
      v155 = [v153 &selRef:v154 interactionControllerForDismissal:? + 5];

      *(v142 + 56) = v155;
      v156 = sub_23D6EE7A0();

      [v177 activateConstraints_];
    }
  }

  v157 = AXkNanoOrientationStatusNotificationID();
  if (v157)
  {
    v158 = v157;
    v159 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(v159, v18, sub_23D6D9C60, v158, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  return v18;
}

id sub_23D6D7C58(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = sub_23D6EE730();

  v7 = a3[3];
  if (v7)
  {
    v8 = __swift_project_boxed_opaque_existential_0(a3, a3[3]);
    v9 = *(v7 - 8);
    MEMORY[0x28223BE20](v8);
    v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v9 + 16))(v11);
    v12 = sub_23D6EE9F0();
    (*(v9 + 8))(v11, v7);
    __swift_destroy_boxed_opaque_existential_0(a3);
  }

  else
  {
    v12 = 0;
  }

  v13 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithName:v6 target:v12 selector:a4];

  swift_unknownObjectRelease();
  return v13;
}

void sub_23D6D7DD0()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_watchRendererViewLeftConstraint);
  if (v2)
  {
    v3 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_isCrownOrientationOnRightSide;
    swift_beginAccess();
    v4 = *(v1 + v3);
    sub_23D6EE5E0();
    v5 = v2;
    v6 = sub_23D6EE560();
    v7 = MEMORY[0x23EEE8CF0]();

    v8 = 41.0;
    if (v7)
    {
      v8 = 44.0;
    }

    v9 = 24.0;
    if (v7)
    {
      v9 = 25.0;
    }

    if (v4)
    {
      v8 = v9;
    }

    [v5 setConstant_];
  }

  v10 = *(v1 + OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_watchRendererViewRightConstraint);
  if (v10)
  {
    v11 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_isCrownOrientationOnRightSide;
    swift_beginAccess();
    v12 = *(v1 + v11);
    sub_23D6EE5E0();
    v13 = v10;
    v14 = sub_23D6EE560();
    v15 = MEMORY[0x23EEE8CF0]();

    v16 = -41.0;
    if (v15)
    {
      v16 = -44.0;
    }

    v17 = -24.0;
    if (v15)
    {
      v17 = -25.0;
    }

    if (!v12)
    {
      v16 = v17;
    }

    [v13 setConstant_];
  }
}

void sub_23D6D7F40()
{
  v1 = (v0 + OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_watchCrownButtonTopConstraint);
  v2 = *(v0 + OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_watchCrownButtonTopConstraint);
  if (v2)
  {
    [v2 setActive_];
  }

  v3 = (v0 + OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_watchCrownButtonHorizontalConstraint);
  v4 = *(v0 + OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_watchCrownButtonHorizontalConstraint);
  if (v4)
  {
    [v4 setActive_];
  }

  v5 = (v0 + OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_watchSideButtonTopConstraint);
  v6 = *(v0 + OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_watchSideButtonTopConstraint);
  if (v6)
  {
    [v6 setActive_];
  }

  v7 = (v0 + OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_watchSideButtonHorizontalConstraint);
  v8 = *(v0 + OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_watchSideButtonHorizontalConstraint);
  if (v8)
  {
    [v8 setActive_];
  }

  v9 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_deviceChromeView;
  swift_beginAccess();
  v10 = *(v0 + v9);
  if (v10)
  {
    v11 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_rendererView;
    swift_beginAccess();
    v12 = *(v0 + v11);
    if (v12)
    {
      v13 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_isCrownOrientationOnRightSide;
      swift_beginAccess();
      v54 = v10;
      v56 = v3;
      v52 = v12;
      if (*(v0 + v13) == 1)
      {
        v14 = (v0 + OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_watchCrownButton);
        swift_beginAccess();
        v15 = *v14;
        v16 = v10;
        v17 = v12;
        v18 = [v15 topAnchor];
        v19 = [v17 topAnchor];
        v20 = [v18 constraintEqualToAnchor_];

        v21 = *v1;
        *v1 = v20;

        v22 = [*v14 rightAnchor];
        v23 = [v16 rightAnchor];
        [v16 layoutMargins];
        v25 = [v22 constraintEqualToAnchor:v23 constant:v24];

        v26 = *v3;
        *v3 = v25;

        v27 = (v0 + OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_watchSideButton);
        swift_beginAccess();
        v28 = v1;
        v1 = v5;
        v29 = v7;
      }

      else
      {
        v14 = (v0 + OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_watchSideButton);
        swift_beginAccess();
        v30 = *v14;
        v31 = v10;
        v32 = v12;
        v33 = [v30 topAnchor];
        v34 = [v32 topAnchor];
        v35 = [v33 constraintEqualToAnchor_];

        v36 = *v5;
        *v5 = v35;

        v37 = [*v14 leftAnchor];
        v38 = [v31 leftAnchor];
        [v31 layoutMargins];
        v40 = [v37 constraintEqualToAnchor:v38 constant:-v39];

        v41 = *v7;
        *v7 = v40;

        v27 = (v0 + OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_watchCrownButton);
        swift_beginAccess();
        v29 = v3;
        v28 = v1;
      }

      v42 = [*v27 topAnchor];
      v43 = [*v14 bottomAnchor];
      v44 = [v42 constraintEqualToAnchor_];

      v45 = *v1;
      *v1 = v44;

      v46 = [*v27 rightAnchor];
      v47 = [*v14 rightAnchor];
      v48 = [v46 constraintEqualToAnchor_];

      v49 = *v29;
      *v29 = v48;

      if (*v28)
      {
        [*v28 setActive_];
      }

      if (*v57)
      {
        [*v57 setActive_];
      }

      if (*v51)
      {
        [*v51 setActive_];
      }

      if (*v7)
      {
        v50 = *v7;
        [v50 setActive_];
      }
    }
  }
}

void sub_23D6D8448()
{
  v1 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_watchStingButtonTopConstraint;
  v2 = *(v0 + OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_watchStingButtonTopConstraint);
  if (v2)
  {
    [v2 setActive_];
  }

  v3 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_watchStingButtonHorizontalConstraint;
  v4 = *(v0 + OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_watchStingButtonHorizontalConstraint);
  if (v4)
  {
    [v4 setActive_];
  }

  v5 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_deviceChromeView;
  swift_beginAccess();
  v6 = *(v0 + v5);
  if (v6)
  {
    v7 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_isCrownOrientationOnRightSide;
    swift_beginAccess();
    v8 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_watchStingButton;
    if (*(v0 + v7) == 1)
    {
      swift_beginAccess();
      v9 = *(v0 + v8);
      v10 = v6;
      v11 = [v9 topAnchor];
      v12 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_watchSideButton;
      swift_beginAccess();
      v13 = [*(v0 + v12) topAnchor];
      v14 = [v11 constraintEqualToAnchor_];

      v15 = *(v0 + v1);
      *(v0 + v1) = v14;

      v16 = [*(v0 + v8) leftAnchor];
      v17 = [v10 leftAnchor];
      [v10 layoutMargins];
      v19 = -v18;
    }

    else
    {
      swift_beginAccess();
      v20 = *(v0 + v8);
      v21 = v6;
      v22 = [v20 topAnchor];
      v23 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_watchSideButton;
      swift_beginAccess();
      v24 = [*(v0 + v23) topAnchor];
      v25 = [v22 constraintEqualToAnchor_];

      v26 = *(v0 + v1);
      *(v0 + v1) = v25;

      v16 = [*(v0 + v8) rightAnchor];
      v17 = [v21 rightAnchor];
      [v21 layoutMargins];
      v19 = v27;
    }

    v28 = [v16 constraintEqualToAnchor:v17 constant:v19];

    v29 = *(v0 + v3);
    *(v0 + v3) = v28;

    v30 = *(v0 + v1);
    if (v30)
    {
      [v30 setActive_];
    }

    v31 = *(v0 + v3);
    if (v31)
    {
      v32 = v31;
      [v32 setActive_];
    }
  }
}

id AXTwiceCompanionWatchView.__deallocating_deinit()
{
  v1 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(v1, v0);

  v3.receiver = v0;
  v3.super_class = type metadata accessor for AXTwiceCompanionWatchView();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id sub_23D6D89B8(char a1)
{
  v2 = v1;
  v4 = sub_23D6EE670();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0) + 40;
  sub_23D6EE330();
  v8 = sub_23D6EE660();
  v9 = sub_23D6EE810();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v17[0] = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_23D6D3C38(0xD000000000000016, 0x800000023D6F0A50, v17);
    _os_log_impl(&dword_23D6CB000, v8, v9, "[TWICE] %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x23EEE9940](v11, -1, -1);
    MEMORY[0x23EEE9940](v10, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  v12 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_watchCrownButton;
  swift_beginAccess();
  [*(v2 + v12) setIsAccessibilityElement_];
  v13 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_watchSideButton;
  swift_beginAccess();
  result = [*(v2 + v13) setIsAccessibilityElement_];
  if (*(v2 + OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_hasStingSupport) == 1)
  {
    v15 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_watchStingButton;
    swift_beginAccess();
    return [*(v2 + v15) setIsAccessibilityElement_];
  }

  return result;
}

uint64_t sub_23D6D8BFC(void *a1)
{
  v2 = v1;
  v4 = sub_23D6EE670();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v22[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_23D6EE330();
  v8 = a1;
  v9 = sub_23D6EE660();
  v10 = sub_23D6EE810();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v23[0] = v13;
    *v11 = 136315394;
    *(v11 + 4) = sub_23D6D3C38(0xD000000000000019, 0x800000023D6F0A70, v23);
    *(v11 + 12) = 2112;
    *(v11 + 14) = v8;
    *v12 = v8;
    v14 = v8;
    _os_log_impl(&dword_23D6CB000, v9, v10, "[TWICE] %s %@", v11, 0x16u);
    sub_23D6DA2EC(v12);
    MEMORY[0x23EEE9940](v12, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x23EEE9940](v13, -1, -1);
    MEMORY[0x23EEE9940](v11, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  v15 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_mirroringLayer;
  swift_beginAccess();
  v16 = *(v2 + v15);
  *(v2 + v15) = v8;
  v17 = v8;

  v18 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_rendererView;
  swift_beginAccess();
  v19 = *(v2 + v18);
  if (v19)
  {
    v20 = v19;
    sub_23D6D2C0C(v17);
  }

  return sub_23D6D9C68();
}

uint64_t sub_23D6D8E64(double a1, double a2)
{
  v5 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_rendererView;
  swift_beginAccess();
  v6 = *(v2 + v5);
  if (!v6)
  {
    return 0;
  }

  v7 = *(v6 + OBJC_IVAR____TtC21AXWatchRemoteScreenUI28AXTwiceCompanionRendererView_mirroringLayer);
  if (!v7)
  {
    return 0;
  }

  v8 = objc_opt_self();
  v9 = v7;
  v10 = [v8 mainScreen];
  [v10 bounds];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  v39.origin.x = v12;
  v39.origin.y = v14;
  v39.size.width = v16;
  v39.size.height = v18;
  v19 = CGRectGetWidth(v39) * a1;
  v20 = [v8 mainScreen];
  [v20 bounds];
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;

  v40.origin.x = v22;
  v40.origin.y = v24;
  v40.size.width = v26;
  v40.size.height = v28;
  v29 = CGRectGetHeight(v40) * a2;
  [v9 bounds];
  [v9 convertRect:0 toLayer:?];
  x = v41.origin.x;
  y = v41.origin.y;
  width = v41.size.width;
  height = v41.size.height;
  v38.x = v19;
  v38.y = v29;
  if (!CGRectContainsPoint(v41, v38))
  {

    return 0;
  }

  v42.origin.x = x;
  v42.origin.y = y;
  v42.size.width = width;
  v42.size.height = height;
  v34 = (v19 - x) / CGRectGetWidth(v42);
  v43.origin.x = x;
  v43.origin.y = y;
  v43.size.width = width;
  v43.size.height = height;
  CGRectGetHeight(v43);

  v35 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_isCrownOrientationOnRightSide;
  swift_beginAccess();
  v36 = 1.0 - v34;
  if (*(v2 + v35))
  {
    v36 = v34;
  }

  return *&v36;
}

void sub_23D6D9088(char a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E2730, &unk_23D6EFC60);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_23D6EFC30;
  sub_23D6D1D74(0, &qword_27E2E2A50, 0x277D75088);
  sub_23D6EE5E0();
  v4 = sub_23D6EE560();
  v5 = sub_23D6EE570();
  v7 = v6;

  v8 = type metadata accessor for AXTwiceCompanionWatchView();
  v34 = v8;
  v33[0] = v2;
  v9 = v2;
  *(v3 + 32) = sub_23D6D7C58(v5, v7, v33, sel_digitalCrownButtonScrollUp_);
  v10 = sub_23D6EE560();
  v11 = sub_23D6EE570();
  v13 = v12;

  v34 = v8;
  v33[0] = v9;
  v14 = v9;
  *(v3 + 40) = sub_23D6D7C58(v11, v13, v33, sel_digitalCrownButtonScrollDown_);
  v15 = sub_23D6EE560();
  v16 = sub_23D6EE570();
  v18 = v17;

  v34 = v8;
  v33[0] = v14;
  v19 = v14;
  *(v3 + 48) = sub_23D6D7C58(v16, v18, v33, sel_doubleDigitalCrownButtonTapped_);
  v20 = sub_23D6EE560();
  v21 = sub_23D6EE570();
  v23 = v22;

  v34 = v8;
  v33[0] = v19;
  v24 = v19;
  *(v3 + 56) = sub_23D6D7C58(v21, v23, v33, sel_tripleDigitalCrownButtonTapped_);
  v35 = v3;
  v25 = sub_23D6EE560();
  v26 = sub_23D6EE570();
  v28 = v27;

  v34 = v8;
  v33[0] = v24;
  v29 = v24;
  sub_23D6D7C58(v26, v28, v33, sel_digitalCrownAXLongPressed_);
  MEMORY[0x23EEE8EB0]();
  if (*((v35 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_23D6EE7D0();
  }

  sub_23D6EE7E0();
  v30 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_watchCrownButton;
  swift_beginAccess();
  v31 = *&v24[v30];
  v32 = sub_23D6EE7A0();

  [v31 setAccessibilityCustomActions_];
}

void sub_23D6D9740(uint64_t a1, SEL *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_rendererView;
    v5 = Strong;
    swift_beginAccess();
    v6 = *&v5[v4];
    v7 = v6;

    if (v6)
    {
      v8 = swift_unknownObjectWeakLoadStrong();

      if (v8)
      {
        [v8 *a2];
        swift_unknownObjectRelease();
      }
    }
  }
}

uint64_t sub_23D6D9804(void *a1, uint64_t a2, void *a3, SEL *a4)
{
  swift_unknownObjectWeakInit();
  v7 = a3;
  v8 = a1;
  sub_23D6DBFD4(v7, v10, a4);

  return MEMORY[0x23EEE9980](v10);
}

uint64_t (*sub_23D6D9B88(id **a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_23D6D64DC(v2);
  return sub_23D6D9BF8;
}

void sub_23D6D9BF8(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t sub_23D6D9C68()
{
  v1 = sub_23D6EE690();
  v22 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_23D6EE6C0();
  v20 = *(v4 - 8);
  v21 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_23D6EE6E0();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v19 - v12;
  sub_23D6D1D74(0, &qword_27E2E2AE0, 0x277D85C78);
  v14 = sub_23D6EE850();
  sub_23D6EE6D0();
  sub_23D6EE700();
  v19 = *(v8 + 8);
  v19(v11, v7);
  v15 = swift_allocObject();
  *(v15 + 16) = v0;
  aBlock[4] = sub_23D6DDD38;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23D6D09E8;
  aBlock[3] = &block_descriptor_95;
  v16 = _Block_copy(aBlock);
  v17 = v0;

  sub_23D6EE6A0();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_23D6D4C30();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E2748, &qword_23D6EFEA0);
  sub_23D6D1694();
  sub_23D6EE8B0();
  MEMORY[0x23EEE8F50](v13, v6, v3, v16);
  _Block_release(v16);

  (*(v22 + 8))(v3, v1);
  (*(v20 + 8))(v6, v21);
  return (v19)(v13, v7);
}

uint64_t sub_23D6D9FEC()
{
  MEMORY[0x23EEE9980](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_23D6DA08C(_BYTE *a1)
{
  v2 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_isCrownOrientationOnRightSide;
  swift_beginAccess();
  v3 = a1[v2];
  v4 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_deviceChromeView;
  swift_beginAccess();
  v5 = *&a1[v4];
  if (v5)
  {
    if (v3)
    {
      v6 = 0.0;
    }

    else
    {
      v6 = 1.0;
    }

    v7 = v5;
    v8 = [v7 layer];
    CATransform3DMakeRotation(&v10, 3.14159265, 0.0, 0.0, v6);
    [v8 setTransform_];
  }

  sub_23D6DA1A4();
  sub_23D6D7DD0();
  sub_23D6D7F40();
  if (a1[OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_hasStingSupport] == 1)
  {
    sub_23D6D8448();
  }

  return [a1 setNeedsUpdateConstraints];
}

id sub_23D6DA1A4()
{
  v1 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_leftConstraint;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2)
  {
    v3 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_isCrownOrientationOnRightSide;
    swift_beginAccess();
    if (*(v0 + v3) == 1)
    {
      v4 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_leftPadding;
    }

    else
    {
      v4 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_rightPadding;
    }

    v5 = (v0 + v4);
    swift_beginAccess();
    [v2 setConstant_];
  }

  v6 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_rightContraint;
  result = swift_beginAccess();
  v8 = *(v0 + v6);
  if (v8)
  {
    v9 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_isCrownOrientationOnRightSide;
    swift_beginAccess();
    if (*(v0 + v9) == 1)
    {
      v10 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_rightPadding;
    }

    else
    {
      v10 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_leftPadding;
    }

    v11 = (v0 + v10);
    swift_beginAccess();
    return [v8 setConstant_];
  }

  return result;
}

uint64_t sub_23D6DA2EC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E2A48, &unk_23D6EFEE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23D6DA354@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_isCrownOrientationOnRightSide;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_23D6DA3AC(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_isCrownOrientationOnRightSide;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

double keypath_get_5Tm@<D0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, double *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  result = *(v4 + v5);
  *a3 = result;
  return result;
}

uint64_t keypath_set_6Tm(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  result = swift_beginAccess();
  *(v6 + v7) = v5;
  return result;
}

id keypath_get_7Tm@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  v6 = *(v4 + v5);
  *a3 = v6;

  return v6;
}

id sub_23D6DA6C4@<X0>(void *a1@<X8>)
{
  result = sub_23D6D63D0();
  *a1 = result;
  return result;
}

void sub_23D6DA6F0(void **a1, void *a2)
{
  v2 = *a1;
  v4 = *(*a2 + OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView____lazy_storage___deviceSpinner);
  *(*a2 + OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView____lazy_storage___deviceSpinner) = *a1;
  v3 = v2;
}

void sub_23D6DB284()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_isCrownOrientationOnRightSide;
  *(v1 + v2) = AXIsCrownOrientationOnRightSide();
  *(v1 + OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_leftPadding) = 0;
  *(v1 + OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_leftConstraint) = 0;
  *(v1 + OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_rightPadding) = 0;
  *(v1 + OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_rightContraint) = 0;
  *(v1 + OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_deviceChromeView) = 0;
  *(v1 + OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_watchCrownButtonTopConstraint) = 0;
  *(v1 + OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_watchCrownButtonHorizontalConstraint) = 0;
  v3 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_watchCrownButton;
  *(v1 + v3) = sub_23D6D5A78();
  *(v1 + OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_swipeUpCrownGesture) = 0;
  *(v1 + OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_swipeDownCrownGesture) = 0;
  *(v1 + OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_watchSideButtonTopConstraint) = 0;
  *(v1 + OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_watchSideButtonHorizontalConstraint) = 0;
  v4 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_watchSideButton;
  *(v1 + v4) = sub_23D6D5F84();
  *(v1 + OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_watchRendererViewLeftConstraint) = 0;
  *(v1 + OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_watchRendererViewRightConstraint) = 0;
  *(v1 + OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_rendererView) = 0;
  *(v1 + OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_mirroringLayer) = 0;
  *(v1 + OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView____lazy_storage___deviceSpinner) = 0;
  v5 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_hasStingSupport;
  sub_23D6EE5E0();
  v6 = sub_23D6EE560();
  v7 = MEMORY[0x23EEE8CF0]();

  *(v1 + v5) = v7 & 1;
  *(v1 + OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_watchStingButtonTopConstraint) = 0;
  *(v1 + OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_watchStingButtonHorizontalConstraint) = 0;
  v8 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_watchStingButton;
  *(v1 + v8) = sub_23D6D653C();
  sub_23D6EE990();
  __break(1u);
}

void *sub_23D6DB434()
{
  v1 = v0;
  v2 = sub_23D6EE670();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v13[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23D6EE330();
  v6 = sub_23D6EE660();
  v7 = sub_23D6EE810();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v13[0] = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_23D6D3C38(0xD000000000000021, 0x800000023D6F11B0, v13);
    _os_log_impl(&dword_23D6CB000, v6, v7, "[TWICE] %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x23EEE9940](v9, -1, -1);
    MEMORY[0x23EEE9940](v8, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  v10 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_rendererView;
  result = swift_beginAccess();
  if (*(v1 + v10))
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      [result crownButtonPressed];
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

void *sub_23D6DB624()
{
  v1 = v0;
  v2 = sub_23D6EE670();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v13[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23D6EE330();
  v6 = sub_23D6EE660();
  v7 = sub_23D6EE810();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v13[0] = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_23D6D3C38(0xD000000000000020, 0x800000023D6F1180, v13);
    _os_log_impl(&dword_23D6CB000, v6, v7, "[TWICE] %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x23EEE9940](v9, -1, -1);
    MEMORY[0x23EEE9940](v8, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  v10 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_rendererView;
  result = swift_beginAccess();
  if (*(v1 + v10))
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      [result doubleCrownButtonPressed];
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

void *sub_23D6DB814()
{
  v1 = v0;
  v2 = sub_23D6EE670();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v13[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23D6EE330();
  v6 = sub_23D6EE660();
  v7 = sub_23D6EE810();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v13[0] = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_23D6D3C38(0xD000000000000020, 0x800000023D6F1150, v13);
    _os_log_impl(&dword_23D6CB000, v6, v7, "[TWICE] %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x23EEE9940](v9, -1, -1);
    MEMORY[0x23EEE9940](v8, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  v10 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_rendererView;
  result = swift_beginAccess();
  if (*(v1 + v10))
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      [result tripleCrownButtonPressed];
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

void *sub_23D6DBA04()
{
  v1 = v0;
  v2 = sub_23D6EE670();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v13[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23D6EE330();
  v6 = sub_23D6EE660();
  v7 = sub_23D6EE810();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v13[0] = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_23D6D3C38(0xD00000000000001DLL, 0x800000023D6F1130, v13);
    _os_log_impl(&dword_23D6CB000, v6, v7, "[TWICE] %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x23EEE9940](v9, -1, -1);
    MEMORY[0x23EEE9940](v8, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  v10 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_rendererView;
  result = swift_beginAccess();
  if (*(v1 + v10))
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      [result crownButtonScrollUp];
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

void *sub_23D6DBBF4()
{
  v1 = v0;
  v2 = sub_23D6EE670();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v13[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23D6EE330();
  v6 = sub_23D6EE660();
  v7 = sub_23D6EE810();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v13[0] = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_23D6D3C38(0xD00000000000001FLL, 0x800000023D6F1110, v13);
    _os_log_impl(&dword_23D6CB000, v6, v7, "[TWICE] %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x23EEE9940](v9, -1, -1);
    MEMORY[0x23EEE9940](v8, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  v10 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_rendererView;
  result = swift_beginAccess();
  if (*(v1 + v10))
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      [result crownButtonScrollDown];
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

void *sub_23D6DBDE4()
{
  v1 = v0;
  v2 = sub_23D6EE670();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v13[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23D6EE330();
  v6 = sub_23D6EE660();
  v7 = sub_23D6EE810();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v13[0] = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_23D6D3C38(0xD000000000000019, 0x800000023D6F10F0, v13);
    _os_log_impl(&dword_23D6CB000, v6, v7, "[TWICE] %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x23EEE9940](v9, -1, -1);
    MEMORY[0x23EEE9940](v8, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  v10 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_rendererView;
  result = swift_beginAccess();
  if (*(v1 + v10))
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      [result sideButtonPressed];
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

void sub_23D6DBFD4(void *a1, uint64_t a2, SEL *a3)
{
  v38 = a3;
  v5 = sub_23D6EE670();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v36 - v10;
  if ([a1 state] == 2)
  {
    v12 = [a1 view];
    if (v12)
    {
      v13 = v12;
      [v12 bounds];
      v15 = v14;
      v17 = v16;
      v19 = v18;
      v21 = v20;
      [a1 locationInView_];
      v40.x = v22;
      v40.y = v23;
      v41.origin.x = v15;
      v41.origin.y = v17;
      v41.size.width = v19;
      v41.size.height = v21;
      if (!CGRectContainsPoint(v41, v40))
      {
        sub_23D6EE330();
        v24 = sub_23D6EE660();
        v25 = sub_23D6EE810();
        v37 = v24;
        if (os_log_type_enabled(v24, v25))
        {
          v26 = swift_slowAlloc();
          v36 = a2;
          v27 = v26;
          v28 = swift_slowAlloc();
          v39 = v28;
          *v27 = 136315138;
          *(v27 + 4) = sub_23D6D3C38(0xD000000000000029, 0x800000023D6F10A0, &v39);
          v29 = v25;
          v30 = v37;
          _os_log_impl(&dword_23D6CB000, v37, v29, "[TWICE] %s. Gesture is out of its bounds. Cancel the gesture!", v27, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v28);
          MEMORY[0x23EEE9940](v28, -1, -1);
          v31 = v27;
          a2 = v36;
          MEMORY[0x23EEE9940](v31, -1, -1);
        }

        else
        {
        }

        (*(v6 + 8))(v11, v5);
        [a1 setState_];
      }
    }
  }

  if ([a1 state] == 3)
  {
    sub_23D6EE330();
    v32 = sub_23D6EE660();
    v33 = sub_23D6EE810();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v39 = v35;
      *v34 = 136315138;
      *(v34 + 4) = sub_23D6D3C38(0xD000000000000029, 0x800000023D6F10A0, &v39);
      _os_log_impl(&dword_23D6CB000, v32, v33, "[TWICE] %s", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v35);
      MEMORY[0x23EEE9940](v35, -1, -1);
      MEMORY[0x23EEE9940](v34, -1, -1);
    }

    (*(v6 + 8))(v9, v5);
    sub_23D6D9740(a2, v38);
  }
}

id sub_23D6DC378(void *a1, uint64_t a2)
{
  v4 = sub_23D6EE670();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v33 - v9;
  if ([a1 state] == 2)
  {
    v11 = [a1 view];
    if (v11)
    {
      v12 = v11;
      [v11 bounds];
      v14 = v13;
      v16 = v15;
      v18 = v17;
      v20 = v19;
      [a1 locationInView_];
      v37.x = v21;
      v37.y = v22;
      v38.origin.x = v14;
      v38.origin.y = v16;
      v38.size.width = v18;
      v38.size.height = v20;
      if (!CGRectContainsPoint(v38, v37))
      {
        sub_23D6EE330();
        v23 = sub_23D6EE660();
        v24 = sub_23D6EE810();
        if (os_log_type_enabled(v23, v24))
        {
          v25 = swift_slowAlloc();
          v35 = v23;
          v26 = v25;
          v34 = swift_slowAlloc();
          v36 = v34;
          *v26 = 136315138;
          *(v26 + 4) = sub_23D6D3C38(0xD000000000000029, 0x800000023D6F10A0, &v36);
          _os_log_impl(&dword_23D6CB000, v35, v24, "[TWICE] %s. Gesture is out of its bounds. Cancel the gesture!", v26, 0xCu);
          v27 = v34;
          __swift_destroy_boxed_opaque_existential_0(v34);
          MEMORY[0x23EEE9940](v27, -1, -1);
          MEMORY[0x23EEE9940](v26, -1, -1);
        }

        else
        {
        }

        (*(v5 + 8))(v10, v4);
        [a1 setState_];
      }
    }
  }

  result = [a1 state];
  if (result == 3)
  {
    sub_23D6EE330();
    v29 = sub_23D6EE660();
    v30 = sub_23D6EE810();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v36 = v32;
      *v31 = 136315138;
      *(v31 + 4) = sub_23D6D3C38(0xD000000000000029, 0x800000023D6F10A0, &v36);
      _os_log_impl(&dword_23D6CB000, v29, v30, "[TWICE] %s", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v32);
      MEMORY[0x23EEE9940](v32, -1, -1);
      MEMORY[0x23EEE9940](v31, -1, -1);
    }

    (*(v5 + 8))(v8, v4);
    return (*(a2 + 16))(a2);
  }

  return result;
}

void *sub_23D6DC714()
{
  v1 = v0;
  v2 = sub_23D6EE670();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v13[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23D6EE330();
  v6 = sub_23D6EE660();
  v7 = sub_23D6EE810();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v13[0] = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_23D6D3C38(0xD00000000000001ALL, 0x800000023D6F10D0, v13);
    _os_log_impl(&dword_23D6CB000, v6, v7, "[TWICE] %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x23EEE9940](v9, -1, -1);
    MEMORY[0x23EEE9940](v8, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  v10 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_rendererView;
  result = swift_beginAccess();
  if (*(v1 + v10))
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      [result stingButtonPressed];
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_23D6DC904()
{
  v1 = v0;
  v2 = sub_23D6EE670();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23D6EE330();
  v6 = sub_23D6EE660();
  v7 = sub_23D6EE810();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v14[0] = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_23D6D3C38(0xD000000000000022, 0x800000023D6F1070, v14);
    _os_log_impl(&dword_23D6CB000, v6, v7, "[TWICE] %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x23EEE9940](v9, -1, -1);
    MEMORY[0x23EEE9940](v8, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  v10 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_rendererView;
  swift_beginAccess();
  if (*(v1 + v10))
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      [Strong doubleCrownButtonPressed];
      swift_unknownObjectRelease();
    }
  }

  return 1;
}

uint64_t sub_23D6DCAF8()
{
  v1 = v0;
  v2 = sub_23D6EE670();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23D6EE330();
  v6 = sub_23D6EE660();
  v7 = sub_23D6EE810();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v14[0] = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_23D6D3C38(0xD000000000000022, 0x800000023D6F1040, v14);
    _os_log_impl(&dword_23D6CB000, v6, v7, "[TWICE] %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x23EEE9940](v9, -1, -1);
    MEMORY[0x23EEE9940](v8, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  v10 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_rendererView;
  swift_beginAccess();
  if (*(v1 + v10))
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      [Strong tripleCrownButtonPressed];
      swift_unknownObjectRelease();
    }
  }

  return 1;
}

uint64_t sub_23D6DCCEC()
{
  v1 = v0;
  v2 = sub_23D6EE670();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23D6EE330();
  v6 = sub_23D6EE660();
  v7 = sub_23D6EE810();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v14[0] = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_23D6D3C38(0xD00000000000001ELL, 0x800000023D6F1020, v14);
    _os_log_impl(&dword_23D6CB000, v6, v7, "[TWICE] %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x23EEE9940](v9, -1, -1);
    MEMORY[0x23EEE9940](v8, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  v10 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_rendererView;
  swift_beginAccess();
  if (*(v1 + v10))
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      [Strong crownButtonScrollUp];
      swift_unknownObjectRelease();
    }
  }

  return 1;
}

uint64_t sub_23D6DCEE0()
{
  v1 = v0;
  v2 = sub_23D6EE670();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23D6EE330();
  v6 = sub_23D6EE660();
  v7 = sub_23D6EE810();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v14[0] = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_23D6D3C38(0xD000000000000020, 0x800000023D6F0FF0, v14);
    _os_log_impl(&dword_23D6CB000, v6, v7, "[TWICE] %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x23EEE9940](v9, -1, -1);
    MEMORY[0x23EEE9940](v8, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  v10 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_rendererView;
  swift_beginAccess();
  if (*(v1 + v10))
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      [Strong crownButtonScrollDown];
      swift_unknownObjectRelease();
    }
  }

  return 1;
}

uint64_t sub_23D6DD0D4()
{
  v1 = v0;
  v2 = sub_23D6EE670();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23D6EE330();
  v6 = sub_23D6EE660();
  v7 = sub_23D6EE810();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v14[0] = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_23D6D3C38(0xD00000000000001DLL, 0x800000023D6F0FD0, v14);
    _os_log_impl(&dword_23D6CB000, v6, v7, "[TWICE] %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x23EEE9940](v9, -1, -1);
    MEMORY[0x23EEE9940](v8, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  v10 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_rendererView;
  swift_beginAccess();
  if (*(v1 + v10))
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      [Strong crownButtonLongPressed];
      swift_unknownObjectRelease();
    }
  }

  return 1;
}

uint64_t sub_23D6DD2C8()
{
  v1 = v0;
  v2 = sub_23D6EE670();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v15[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23D6EE330();
  v6 = sub_23D6EE660();
  v7 = sub_23D6EE810();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15[0] = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_23D6D3C38(0xD00000000000001BLL, 0x800000023D6F0FB0, v15);
    _os_log_impl(&dword_23D6CB000, v6, v7, "[TWICE] %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x23EEE9940](v9, -1, -1);
    MEMORY[0x23EEE9940](v8, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  v10 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_watchCrownButton;
  swift_beginAccess();
  [*(v1 + v10) setAccessibilityTraits_];
  v11 = *MEMORY[0x277D76438];
  v12 = sub_23D6EE730();
  UIAccessibilityPostNotification(v11, v12);

  return 1;
}

uint64_t sub_23D6DD4E8()
{
  v1 = v0;
  v2 = sub_23D6EE670();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23D6EE330();
  v6 = sub_23D6EE660();
  v7 = sub_23D6EE810();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v14[0] = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_23D6D3C38(0xD00000000000001BLL, 0x800000023D6F0F60, v14);
    _os_log_impl(&dword_23D6CB000, v6, v7, "[TWICE] %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x23EEE9940](v9, -1, -1);
    MEMORY[0x23EEE9940](v8, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  v10 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_rendererView;
  swift_beginAccess();
  if (*(v1 + v10))
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      [Strong sideButtonLongPressed];
      swift_unknownObjectRelease();
    }
  }

  return 1;
}

uint64_t sub_23D6DD6DC()
{
  v1 = v0;
  v2 = sub_23D6EE670();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23D6EE330();
  v6 = sub_23D6EE660();
  v7 = sub_23D6EE810();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v14[0] = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_23D6D3C38(0xD00000000000001CLL, 0x800000023D6F0F40, v14);
    _os_log_impl(&dword_23D6CB000, v6, v7, "[TWICE] %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x23EEE9940](v9, -1, -1);
    MEMORY[0x23EEE9940](v8, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  v10 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_rendererView;
  swift_beginAccess();
  if (*(v1 + v10))
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      [Strong stingButtonLongPressed];
      swift_unknownObjectRelease();
    }
  }

  return 1;
}

uint64_t sub_23D6DD8D0()
{
  v1 = v0;
  v2 = sub_23D6EE670();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23D6EE330();
  v6 = sub_23D6EE660();
  v7 = sub_23D6EE810();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v14[0] = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_23D6D3C38(0xD000000000000018, 0x800000023D6F0F20, v14);
    _os_log_impl(&dword_23D6CB000, v6, v7, "[TWICE] %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x23EEE9940](v9, -1, -1);
    MEMORY[0x23EEE9940](v8, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  v10 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_rendererView;
  swift_beginAccess();
  if (*(v1 + v10))
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      [Strong stingButtonKeycord];
      swift_unknownObjectRelease();
    }
  }

  return 1;
}

void sub_23D6DDAC4(void *a1)
{
  v2 = sub_23D6EE670();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v6 = a1;
    v7 = AXIsCrownOrientationOnRightSide();
    v8 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_isCrownOrientationOnRightSide;
    swift_beginAccess();
    if (v7 != v6[v8])
    {
      sub_23D6EE330();
      v9 = v6;
      v10 = sub_23D6EE660();
      v11 = sub_23D6EE810();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        v16 = v9;
        v13 = v12;
        v14 = swift_slowAlloc();
        v17 = v14;
        *v13 = 136315650;
        *(v13 + 4) = sub_23D6D3C38(0xD000000000000026, 0x800000023D6F1370, &v17);
        *(v13 + 12) = 1024;
        *(v13 + 14) = v6[v8];

        *(v13 + 18) = 1024;
        *(v13 + 20) = v7;
        _os_log_impl(&dword_23D6CB000, v10, v11, "[TWICE] %s %{BOOL}d %{BOOL}d", v13, 0x18u);
        __swift_destroy_boxed_opaque_existential_0(v14);
        MEMORY[0x23EEE9940](v14, -1, -1);
        MEMORY[0x23EEE9940](v13, -1, -1);
      }

      else
      {
      }

      (*(v3 + 8))(v5, v2);
      v6[v8] = v7;
      sub_23D6D9C68();
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_23D6DDD00()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

void sub_23D6DDD48()
{
  if (*MEMORY[0x277D81C38])
  {
    qword_27E2E2DA0 = *MEMORY[0x277D81C38];
  }

  else
  {
    __break(1u);
  }
}

id sub_23D6DDD68()
{
  v1 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionRootViewController____lazy_storage___airplayReceiver;
  v2 = *(v0 + OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionRootViewController____lazy_storage___airplayReceiver);
  v3 = v2;
  if (v2 == 1)
  {
    v3 = [objc_opt_self() sharedInstance];
    [v3 setDelegate_];
    v4 = *(v0 + v1);
    *(v0 + v1) = v3;
    v5 = v3;
    sub_23D6EDC38(v4);
  }

  sub_23D6EDC48(v2);
  return v3;
}

double sub_23D6DDE00()
{
  v1 = (v0 + OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionRootViewController____lazy_storage___distanceHIDThreshold);
  if ((*(v0 + OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionRootViewController____lazy_storage___distanceHIDThreshold + 8) & 1) == 0)
  {
    return *v1;
  }

  result = sub_23D6ECDA8();
  *v1 = result;
  v1[8] = 0;
  return result;
}

id sub_23D6DDE44()
{
  v1 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionRootViewController____lazy_storage___eventProcessor;
  v2 = *&v0[OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionRootViewController____lazy_storage___eventProcessor];
  v3 = v2;
  if (v2 == 1)
  {
    v4 = objc_allocWithZone(MEMORY[0x277CE7D68]);
    v5 = sub_23D6EE730();
    v3 = [v4 initWithHIDTapIdentifier:v5 HIDEventTapPriority:70 systemEventTapIdentifier:0 systemEventTapPriority:30];

    if (v3)
    {
      [v3 setHIDEventFilterMask_];
      v6 = swift_allocObject();
      *(v6 + 16) = v0;
      v13[4] = sub_23D6EDC58;
      v13[5] = v6;
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 1107296256;
      v13[2] = sub_23D6DED38;
      v13[3] = &block_descriptor_51;
      v7 = _Block_copy(v13);
      v8 = v3;
      v9 = v0;

      [v8 setHIDEventHandler_];
      _Block_release(v7);
    }

    v10 = *&v0[v1];
    *&v0[v1] = v3;
    v11 = v3;
    sub_23D6EDC38(v10);
  }

  sub_23D6EDC48(v2);
  return v3;
}

void AXTwiceCompanionRootViewController.handleHIDEvent(_:)(uint64_t a1)
{
  v155 = a1;
  v1 = sub_23D6EE620();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v150 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_23D6EE670();
  v6 = *(v5 - 8);
  v157 = v5;
  v158 = v6;
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v150 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v150 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v150 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v150 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v150 - v20;
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v150 - v23;
  MEMORY[0x28223BE20](v22);
  v26 = &v150 - v25;
  if (_AXSVoiceOverTouchEnabled())
  {
    sub_23D6EE330();
    v27 = sub_23D6EE660();
    v28 = sub_23D6EE7F0();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_23D6CB000, v27, v28, "[TWICE] VoiceOver is on. Not going to process the hid event.", v29, 2u);
      MEMORY[0x23EEE9940](v29, -1, -1);
    }

    (*(v158 + 8))(v9, v157);
    return;
  }

  v30 = v155;
  v151 = v21;
  v31 = v156;
  v152 = v4;
  v153 = v1;
  v154 = v2;
  if (_AXSAssistiveTouchScannerEnabled())
  {
    sub_23D6EE330();
    v32 = sub_23D6EE660();
    v33 = sub_23D6EE7F0();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_23D6CB000, v32, v33, "[TWICE] Switch Control is on. Not going to process the hid event.", v34, 2u);
      MEMORY[0x23EEE9940](v34, -1, -1);
    }

    (*(v158 + 8))(v12, v157);
    return;
  }

  if (v30)
  {
    v35 = v30;
    [v35 type];
    if (AXEventTypeIsHomeButtonPress())
    {
      sub_23D6EE330();
      v36 = sub_23D6EE660();
      v37 = sub_23D6EE810();
      v38 = os_log_type_enabled(v36, v37);
      v39 = v152;
      if (v38)
      {
        v40 = swift_slowAlloc();
        *v40 = 0;
        _os_log_impl(&dword_23D6CB000, v36, v37, "[TWICE] Home Button Pressed. Dismiss this view.", v40, 2u);
        MEMORY[0x23EEE9940](v40, -1, -1);
      }

      (*(v158 + 8))(v18, v157);
      v41 = v153;
      v42 = v154;
      (*(v154 + 104))(v39, *MEMORY[0x277CE7058], v153);
      sub_23D6DF5FC(v39);

      (*(v42 + 8))(v39, v41);
      return;
    }

    v155 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionRootViewController_mainVC;
    v46 = *(v31 + OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionRootViewController_mainVC);
    v47 = sub_23D6CEB04();
    v49 = v48;

    ObjectType = swift_getObjectType();
    [v35 location];
    *&v51 = COERCE_DOUBLE((*(v49 + 208))(ObjectType, v49));
    v53 = v52;
    LOBYTE(v46) = v54;

    if (v46)
    {
      v55 = v151;
      sub_23D6EE330();
      v56 = sub_23D6EE660();
      v57 = sub_23D6EE7F0();
      if (os_log_type_enabled(v56, v57))
      {
        v58 = swift_slowAlloc();
        *v58 = 0;
        _os_log_impl(&dword_23D6CB000, v56, v57, "[TWICE] hid location is not inside device screen", v58, 2u);
        MEMORY[0x23EEE9940](v58, -1, -1);
      }

      else
      {
      }

      (*(v158 + 8))(v55, v157);
      return;
    }

    if ([v35 type]!= 3001)
    {

      return;
    }

    v59 = (v156 + OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionRootViewController_lastHIDEvent);
    v60 = 0x278BE1000uLL;
    v61 = v24;
    if ((*(v156 + OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionRootViewController_lastHIDEvent + 28) & 1) == 0)
    {
      v151 = *v59;
      v62 = *(v59 + 6);
      v64 = *(v59 + 1);
      v63 = *(v59 + 2);
      v65 = [v35 handInfo];
      if (!v65)
      {
LABEL_61:
        __break(1u);
        return;
      }

      v66 = v65;
      v67 = [v65 eventType];

      v68 = v62 == v67;
      v60 = 0x278BE1000;
      if (v68)
      {
        v69 = [v35 HIDTime];
        v70 = sub_23D6ECEE0(v151, v69);
        [v35 location];
        if (v70 != -1.0 && v70 < 60.0)
        {
          v73 = sqrt((v64 - v71) * (v64 - v71) + (v63 - v72) * (v63 - v72));
          if (v73 < sub_23D6DDE00())
          {
            sub_23D6EE330();
            v74 = sub_23D6EE660();
            v75 = sub_23D6EE7F0();
            if (os_log_type_enabled(v74, v75))
            {
              v76 = swift_slowAlloc();
              *v76 = 134218240;
              *(v76 + 4) = v70;
              *(v76 + 12) = 2048;
              *(v76 + 14) = v73;
              _os_log_impl(&dword_23D6CB000, v74, v75, "[TWICE] Skip event interval:%f distance:%f", v76, 0x16u);
              MEMORY[0x23EEE9940](v76, -1, -1);
              v77 = v35;
            }

            else
            {
              v77 = v74;
              v74 = v35;
            }

            (*(v158 + 8))(v26, v157);
            return;
          }
        }
      }
    }

    v78 = [v35 HIDTime];
    [v35 location];
    v80 = v79;
    v82 = v81;
    v83 = [v35 *(v60 + 3192)];
    if (!v83)
    {
      goto LABEL_58;
    }

    v84 = v83;
    v85 = *&v51;
    v86 = v53;
    v87 = [v83 eventType];

    *v59 = v78;
    v59[1] = v80;
    v59[2] = v82;
    *(v59 + 6) = v87;
    *(v59 + 28) = 0;
    sub_23D6EE330();
    v88 = v35;
    v89 = sub_23D6EE660();
    v90 = sub_23D6EE7F0();

    if (os_log_type_enabled(v89, v90))
    {
      v91 = swift_slowAlloc();
      v92 = swift_slowAlloc();
      v159[0] = v92;
      *v91 = 136315138;
      v93 = [v88 description];
      v94 = sub_23D6EE740();
      v96 = v95;

      v97 = sub_23D6D3C38(v94, v96, v159);

      *(v91 + 4) = v97;
      _os_log_impl(&dword_23D6CB000, v89, v90, "[TWICE] handleHIDEvent %s", v91, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v92);
      MEMORY[0x23EEE9940](v92, -1, -1);
      MEMORY[0x23EEE9940](v91, -1, -1);
    }

    (*(v158 + 8))(v61, v157);
    v98 = v153;
    v99 = v154;
    [v88 setLocation:v85, v86];
    v100 = [v88 handInfo];
    [v100 setHandPosition_];

    v101 = [v88 handInfo];
    v102 = v156;
    if (!v101)
    {
      goto LABEL_59;
    }

    v103 = v101;
    v104 = [v101 paths];

    if (!v104)
    {
LABEL_60:
      __break(1u);
      goto LABEL_61;
    }

    v157 = v88;
    sub_23D6D1D74(0, &qword_27E2E2AB0, 0x277CE7D60);
    v105 = sub_23D6EE7B0();

    if (v105 >> 62)
    {
      v106 = sub_23D6EE9A0();
      if (v106)
      {
        goto LABEL_40;
      }
    }

    else
    {
      v106 = *((v105 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v106)
      {
LABEL_40:
        if (v106 >= 1)
        {
          v107 = 0;
          v108 = v105 & 0xC000000000000001;
          v158 = v105;
          while (1)
          {
            if (v108)
            {
              v110 = MEMORY[0x23EEE9030](v107, v105);
            }

            else
            {
              v110 = *(v105 + 8 * v107 + 32);
            }

            v111 = v110;
            v112 = *(v102 + v155);
            v113 = sub_23D6CE998();

            [v111 pathLocation];
            v115 = v114;
            v117 = v116;
            v118 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_rendererView;
            swift_beginAccess();
            v119 = *&v113[v118];
            if (v119 && (v120 = *(v119 + OBJC_IVAR____TtC21AXWatchRemoteScreenUI28AXTwiceCompanionRendererView_mirroringLayer)) != 0)
            {
              v121 = objc_opt_self();
              v109 = v120;
              v122 = [v121 mainScreen];
              [v122 bounds];
              v124 = v123;
              v126 = v125;
              v128 = v127;
              v130 = v129;

              v161.origin.x = v124;
              v161.origin.y = v126;
              v161.size.width = v128;
              v161.size.height = v130;
              v131 = v115 * CGRectGetWidth(v161);
              v132 = [v121 mainScreen];
              [v132 bounds];
              v134 = v133;
              v136 = v135;
              v138 = v137;
              v140 = v139;

              v162.origin.x = v134;
              v162.origin.y = v136;
              v162.size.width = v138;
              v162.size.height = v140;
              v141 = v117 * CGRectGetHeight(v162);
              [v109 bounds];
              [v109 convertRect:0 toLayer:?];
              x = v163.origin.x;
              y = v163.origin.y;
              width = v163.size.width;
              height = v163.size.height;
              v160.x = v131;
              v160.y = v141;
              v146 = CGRectContainsPoint(v163, v160);
              v102 = v156;
              if (v146)
              {
                v164.origin.x = x;
                v164.origin.y = y;
                v164.size.width = width;
                v164.size.height = height;
                CGRectGetWidth(v164);
                v165.origin.x = x;
                v165.origin.y = y;
                v165.size.width = width;
                v165.size.height = height;
                CGRectGetHeight(v165);

                swift_beginAccess();
                v99 = v154;
                v105 = v158;
                goto LABEL_44;
              }

              v105 = v158;
            }

            else
            {
              v109 = v113;
              v102 = v156;
            }

            [v111 pathLocation];
            v99 = v154;
LABEL_44:
            ++v107;
            [v111 setPathLocation_];

            v98 = v153;
            if (v106 == v107)
            {
              goto LABEL_56;
            }
          }
        }

        __break(1u);
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
        goto LABEL_60;
      }
    }

LABEL_56:

    v147 = v152;
    v148 = v157;
    *v152 = v157;
    (*(v99 + 104))(v147, *MEMORY[0x277CE7008], v98);
    v149 = v148;
    sub_23D6DF5FC(v147);

    (*(v99 + 8))(v147, v98);
    return;
  }

  sub_23D6EE330();
  v43 = sub_23D6EE660();
  v44 = sub_23D6EE800();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    *v45 = 0;
    _os_log_impl(&dword_23D6CB000, v43, v44, "[TWICE] invalid HID event", v45, 2u);
    MEMORY[0x23EEE9940](v45, -1, -1);
  }

  (*(v158 + 8))(v15, v157);
}

uint64_t sub_23D6DED38(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  LOBYTE(a2) = v3(a2);

  return a2 & 1;
}

uint64_t sub_23D6DED94()
{
  v1 = sub_23D6EE640();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_23D6EE670();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23D6EE330();
  v9 = v0;
  v10 = sub_23D6EE660();
  v11 = sub_23D6EE810();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v33 = v6;
    v13 = v12;
    v32 = swift_slowAlloc();
    v34[0] = v32;
    *v13 = 136315138;
    v14 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionRootViewController_currentState;
    swift_beginAccess();
    (*(v2 + 16))(v4, &v9[v14], v1);
    sub_23D6EDFC8(&qword_27E2E2C80, MEMORY[0x277CE70A8], MEMORY[0x277CE70C0]);
    v15 = sub_23D6EE9E0();
    v31 = v5;
    v17 = v16;
    (*(v2 + 8))(v4, v1);
    v18 = sub_23D6D3C38(v15, v17, v34);

    *(v13 + 4) = v18;
    _os_log_impl(&dword_23D6CB000, v10, v11, "[TWICE] AXTwiceCompanionRootViewController State is %s", v13, 0xCu);
    v19 = v32;
    __swift_destroy_boxed_opaque_existential_0(v32);
    MEMORY[0x23EEE9940](v19, -1, -1);
    MEMORY[0x23EEE9940](v13, -1, -1);

    (*(v33 + 8))(v8, v31);
    v20 = 0x27E2E2000;
  }

  else
  {

    (*(v6 + 8))(v8, v5);
    v20 = 0x27E2E2000uLL;
  }

  v21 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionRootViewController_mainVC;
  v22 = *&v9[OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionRootViewController_mainVC];
  v23 = *(v20 + 2864);
  swift_beginAccess();
  v24 = *(v2 + 16);
  v24(v4, &v9[v23], v1);
  v25 = v22;
  sub_23D6CFFFC(v4);

  v26 = *(v2 + 8);
  v26(v4, v1);
  v27 = *&v9[v21];
  v24(v4, &v9[v23], v1);
  v28 = v27;
  sub_23D6D0258();

  return (v26)(v4, v1);
}

void sub_23D6DF148()
{
  v1 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionRootViewController____lazy_storage___inactiveTimer;
  v2 = *(v0 + OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionRootViewController____lazy_storage___inactiveTimer);
  if (v2)
  {
    goto LABEL_4;
  }

  v3 = v0;
  sub_23D6D1D74(0, &qword_27E2E2AE0, 0x277D85C78);
  v4 = sub_23D6EE850();
  v5 = [objc_allocWithZone(MEMORY[0x277CE6950]) initWithTargetSerialQueue_];

  if (v5)
  {
    [v5 setAutomaticallyCancelPendingBlockUponSchedulingNewBlock_];
    v6 = *(v3 + v1);
    *(v3 + v1) = v5;
    v5;

    v2 = 0;
LABEL_4:
    v7 = v2;
    return;
  }

  __break(1u);
}

void sub_23D6DF20C()
{
  v23.receiver = v0;
  v23.super_class = type metadata accessor for AXTwiceCompanionRootViewController(0);
  objc_msgSendSuper2(&v23, sel_viewDidLoad);
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    v3 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:0.0 alpha:0.6];
    [v2 setBackgroundColor_];

    v4 = *&v0[OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionRootViewController_remoteMessenger];
    v5 = v0;
    sub_23D6EE530();

    v6 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionRootViewController_mainVC;
    [*&v5[OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionRootViewController_mainVC] setModalPresentationStyle_];
    v7 = *&v5[v6];
    v8 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionMainViewController_dismissButton;
    swift_beginAccess();
    [*(v7 + v8) addTarget:v5 action:sel_dismissButtonTappedWithSender_ forControlEvents:64];
    v9 = *&v5[v6];
    v10 = sub_23D6CEB04();
    v12 = v11;

    ObjectType = swift_getObjectType();
    v14 = (*(v12 + 152))(ObjectType, v12);

    if (v14)
    {
      swift_unknownObjectWeakAssign();
    }

    AXDeviceRemoteScreenIsBluetoothOn();
    v15 = [objc_opt_self() defaultCenter];
    if (qword_27E2E26F0 != -1)
    {
      swift_once();
    }

    v16 = qword_27E2E2DA0;
    v17 = [objc_opt_self() mainQueue];
    v18 = swift_allocObject();
    *(v18 + 16) = v5;
    aBlock[4] = sub_23D6ED020;
    aBlock[5] = v18;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_23D6DF9B8;
    aBlock[3] = &block_descriptor_3;
    v19 = _Block_copy(aBlock);
    v20 = v5;

    v21 = [v15 addObserverForName:v16 object:0 queue:v17 usingBlock:v19];
    _Block_release(v19);
    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_23D6DF510()
{
  v0 = sub_23D6EE620();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v3, *MEMORY[0x277CE7030], v0);
  sub_23D6DF5FC(v3);
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_23D6DF5FC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_23D6EE690();
  v21 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_23D6EE6C0();
  v19 = *(v7 - 8);
  v20 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_23D6EE620();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v18[1] = *(v2 + OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionRootViewController_eventSerialQueue);
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v11 + 16))(v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v10);
  v14 = (*(v11 + 80) + 24) & ~*(v11 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = v13;
  (*(v11 + 32))(v15 + v14, v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v10);
  aBlock[4] = sub_23D6EDE3C;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23D6D09E8;
  aBlock[3] = &block_descriptor_72;
  v16 = _Block_copy(aBlock);

  sub_23D6EE6A0();
  v22 = MEMORY[0x277D84F90];
  sub_23D6EDFC8(&qword_27E2E2C50, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E2748, &qword_23D6EFEA0);
  sub_23D6EDC88(&qword_27E2E2C60, &qword_27E2E2748, &qword_23D6EFEA0);
  sub_23D6EE8B0();
  MEMORY[0x23EEE8F80](0, v9, v6, v16);
  _Block_release(v16);
  (*(v21 + 8))(v6, v4);
  (*(v19 + 8))(v9, v20);
}

uint64_t sub_23D6DF9B8(uint64_t a1, uint64_t a2)
{
  v3 = sub_23D6EE2C0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 32);
  sub_23D6EE2B0();

  v7(v6);

  return (*(v4 + 8))(v6, v3);
}

void sub_23D6DFAF4(char a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E2AC0, &qword_23D6EFF90);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = aBlock - v4;
  v6 = type metadata accessor for AXTwiceCompanionRootViewController(0);
  v16.receiver = v1;
  v16.super_class = v6;
  objc_msgSendSuper2(&v16, sel_viewDidAppear_, a1 & 1);
  sub_23D6EE310();
  v7 = sub_23D6EE320();
  (*(*(v7 - 8) + 56))(v5, 0, 1, v7);
  v8 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionRootViewController_viewDidAppearDate;
  swift_beginAccess();
  sub_23D6ED040(v5, &v1[v8]);
  swift_endAccess();
  v9 = &v1[OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionRootViewController_lastHIDEvent];
  *(v9 + 1) = 0;
  *(v9 + 2) = 0;
  *v9 = 0;
  *(v9 + 6) = 0;
  v9[28] = 1;
  v10 = *&v1[OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionRootViewController_mainVC];
  v11 = swift_allocObject();
  *(v11 + 16) = v1;
  aBlock[4] = sub_23D6ED0B0;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23D6D09E8;
  aBlock[3] = &block_descriptor_6;
  v12 = _Block_copy(aBlock);
  v13 = v10;
  v14 = v1;

  [v14 presentViewController:v13 animated:1 completion:v12];
  _Block_release(v12);

  sub_23D6DFDEC();
}

uint64_t sub_23D6DFD00()
{
  v0 = sub_23D6EE620();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v3, *MEMORY[0x277CE7050], v0);
  sub_23D6DF5FC(v3);
  return (*(v1 + 8))(v3, v0);
}

void sub_23D6DFDEC()
{
  v1 = AXkMobileKeyBagLockStatusNotificationID();
  if (v1)
  {
    v2 = v1;
    v3 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(v3, v0, sub_23D6E105C, v2, 0, CFNotificationSuspensionBehaviorDeliverImmediately);

    v4 = [objc_opt_self() server];
    if (v4)
    {
      v5 = v4;
      v6 = swift_allocObject();
      *(v6 + 16) = v0;
      v9[4] = sub_23D6EDD38;
      v9[5] = v6;
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 1107296256;
      v9[2] = sub_23D6E12C8;
      v9[3] = &block_descriptor_63;
      v7 = _Block_copy(v9);
      v8 = v0;

      [v5 screenLockStatus:v7 passcodeStatusRequired:1];
      _Block_release(v7);
    }
  }
}

uint64_t sub_23D6DFF8C(char a1)
{
  v2 = v1;
  v4 = sub_23D6EE320();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v42 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v41 = &v38 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E2AC0, &qword_23D6EFF90);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v38 - v13;
  v15 = sub_23D6EE670();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for AXTwiceCompanionRootViewController(0);
  v44.receiver = v2;
  v44.super_class = v19;
  objc_msgSendSuper2(&v44, sel_viewDidDisappear_, a1 & 1);
  sub_23D6EE330();
  v20 = sub_23D6EE660();
  v21 = sub_23D6EE810();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v40 = v4;
    v23 = v22;
    v24 = swift_slowAlloc();
    v39 = v5;
    v25 = v24;
    v43[0] = v24;
    *v23 = 136315138;
    *(v23 + 4) = sub_23D6D3C38(0xD000000000000015, 0x800000023D6F1420, v43);
    _os_log_impl(&dword_23D6CB000, v20, v21, "[TWICE] %s", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v25);
    v26 = v25;
    v5 = v39;
    MEMORY[0x23EEE9940](v26, -1, -1);
    v27 = v23;
    v4 = v40;
    MEMORY[0x23EEE9940](v27, -1, -1);
  }

  (*(v16 + 8))(v18, v15);
  v28 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(v28, v2);

  sub_23D6DF148();
  v30 = v29;
  [v29 cancel];

  (*(v5 + 56))(v14, 1, 1, v4);
  v31 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionRootViewController_inactiveDate;
  swift_beginAccess();
  sub_23D6ED040(v14, v2 + v31);
  swift_endAccess();
  v32 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionRootViewController_viewDidAppearDate;
  swift_beginAccess();
  sub_23D6EDF00(v2 + v32, v12, &qword_27E2E2AC0, &qword_23D6EFF90);
  if ((*(v5 + 48))(v12, 1, v4) == 1)
  {
    return sub_23D6EDEA0(v12, &qword_27E2E2AC0, &qword_23D6EFF90);
  }

  v34 = v41;
  (*(v5 + 32))(v41, v12, v4);
  v35 = v42;
  sub_23D6EE310();
  sub_23D6EE5E0();
  v36 = sub_23D6EE560();
  sub_23D6EE5B0();

  v37 = *(v5 + 8);
  v37(v35, v4);
  return (v37)(v34, v4);
}

id AXTwiceCompanionRootViewController.__deallocating_deinit()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionRootViewController_remoteMessenger];
  sub_23D6EE520();

  v3 = sub_23D6DDD68();
  [v3 cleanup];

  v5.receiver = v1;
  v5.super_class = type metadata accessor for AXTwiceCompanionRootViewController(0);
  return objc_msgSendSuper2(&v5, sel_dealloc);
}

id AXTwiceCompanionRootViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_23D6EE730();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id AXTwiceCompanionRootViewController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v31 = a2;
  v32 = a3;
  v28[0] = a1;
  v30 = sub_23D6EE840();
  v5 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v7 = v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_23D6EE820();
  MEMORY[0x28223BE20](v8);
  v9 = sub_23D6EE6C0();
  MEMORY[0x28223BE20](v9 - 8);
  v29 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionRootViewController_eventSerialQueue;
  v10 = sub_23D6D1D74(0, &qword_27E2E2AE0, 0x277D85C78);
  v28[1] = "viewWillDisappear(_:)";
  v28[2] = v10;
  sub_23D6EE6B0();
  v34 = MEMORY[0x277D84F90];
  sub_23D6EDFC8(&qword_27E2E2AE8, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E2AF0, &qword_23D6EFF98);
  sub_23D6EDC88(&qword_27E2E2AF8, &qword_27E2E2AF0, &qword_23D6EFF98);
  sub_23D6EE8B0();
  (*(v5 + 104))(v7, *MEMORY[0x277D85260], v30);
  *&v3[v29] = sub_23D6EE870();
  *&v3[OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionRootViewController____lazy_storage___airplayReceiver] = 1;
  v11 = &v3[OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionRootViewController_lastHIDEvent];
  *(v11 + 1) = 0;
  *(v11 + 2) = 0;
  *v11 = 0;
  *(v11 + 6) = 0;
  v11[28] = 1;
  *&v3[OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionRootViewController_intervalHIDThreshold] = 0x404E000000000000;
  v12 = &v3[OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionRootViewController____lazy_storage___distanceHIDThreshold];
  *v12 = 0;
  v12[8] = 1;
  v13 = &v3[OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionRootViewController_hidEventReason];
  *v13 = 0xD000000000000022;
  *(v13 + 1) = 0x800000023D6EFF80;
  *&v3[OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionRootViewController____lazy_storage___eventProcessor] = 1;
  *&v3[OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionRootViewController_gizmoErrorRetryLimit] = 3;
  v14 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionRootViewController_remoteMessenger;
  sub_23D6EE550();
  *&v3[v14] = sub_23D6EE500();
  sub_23D6EE600();
  v15 = &v3[OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionRootViewController_initialPingMessageIdentifier];
  *v15 = 0;
  *(v15 + 1) = 0;
  v16 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionRootViewController_inactiveDate;
  v17 = sub_23D6EE320();
  v18 = *(*(v17 - 8) + 56);
  v18(&v4[v16], 1, 1, v17);
  *&v4[OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionRootViewController_inactiveTimeInterval] = 0x4072C00000000000;
  *&v4[OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionRootViewController____lazy_storage___inactiveTimer] = 0;
  v19 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionRootViewController_mainVC;
  type metadata accessor for AXTwiceCompanionMainViewController();
  v20 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  *&v4[v19] = [v20 init];
  v21 = v17;
  v22 = v31;
  v18(&v4[OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionRootViewController_viewDidAppearDate], 1, 1, v21);
  if (v22)
  {
    v23 = sub_23D6EE730();
  }

  else
  {
    v23 = 0;
  }

  v24 = type metadata accessor for AXTwiceCompanionRootViewController(0);
  v33.receiver = v4;
  v33.super_class = v24;
  v25 = v32;
  v26 = objc_msgSendSuper2(&v33, sel_initWithNibName_bundle_, v23, v32);

  return v26;
}

id AXTwiceCompanionRootViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id AXTwiceCompanionRootViewController.init(coder:)(void *a1)
{
  v2 = v1;
  v25 = a1;
  v24 = sub_23D6EE840();
  v3 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v5 = v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_23D6EE820();
  MEMORY[0x28223BE20](v6);
  v7 = sub_23D6EE6C0();
  MEMORY[0x28223BE20](v7 - 8);
  v23 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionRootViewController_eventSerialQueue;
  v8 = sub_23D6D1D74(0, &qword_27E2E2AE0, 0x277D85C78);
  v22[0] = "viewWillDisappear(_:)";
  v22[1] = v8;
  sub_23D6EE6B0();
  v27 = MEMORY[0x277D84F90];
  sub_23D6EDFC8(&qword_27E2E2AE8, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E2AF0, &qword_23D6EFF98);
  sub_23D6EDC88(&qword_27E2E2AF8, &qword_27E2E2AF0, &qword_23D6EFF98);
  sub_23D6EE8B0();
  (*(v3 + 104))(v5, *MEMORY[0x277D85260], v24);
  *&v1[v23] = sub_23D6EE870();
  *&v1[OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionRootViewController____lazy_storage___airplayReceiver] = 1;
  v9 = &v1[OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionRootViewController_lastHIDEvent];
  *(v9 + 1) = 0;
  *(v9 + 2) = 0;
  *v9 = 0;
  *(v9 + 6) = 0;
  v9[28] = 1;
  *&v1[OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionRootViewController_intervalHIDThreshold] = 0x404E000000000000;
  v10 = &v1[OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionRootViewController____lazy_storage___distanceHIDThreshold];
  *v10 = 0;
  v10[8] = 1;
  v11 = &v1[OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionRootViewController_hidEventReason];
  *v11 = 0xD000000000000022;
  *(v11 + 1) = 0x800000023D6EFF80;
  *&v1[OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionRootViewController____lazy_storage___eventProcessor] = 1;
  *&v1[OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionRootViewController_gizmoErrorRetryLimit] = 3;
  v12 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionRootViewController_remoteMessenger;
  sub_23D6EE550();
  *&v1[v12] = sub_23D6EE500();
  sub_23D6EE600();
  v13 = &v1[OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionRootViewController_initialPingMessageIdentifier];
  *v13 = 0;
  *(v13 + 1) = 0;
  v14 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionRootViewController_inactiveDate;
  v15 = sub_23D6EE320();
  v16 = *(*(v15 - 8) + 56);
  v16(&v2[v14], 1, 1, v15);
  *&v2[OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionRootViewController_inactiveTimeInterval] = 0x4072C00000000000;
  *&v2[OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionRootViewController____lazy_storage___inactiveTimer] = 0;
  v17 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionRootViewController_mainVC;
  type metadata accessor for AXTwiceCompanionMainViewController();
  *&v2[v17] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v16(&v2[OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionRootViewController_viewDidAppearDate], 1, 1, v15);
  v18 = type metadata accessor for AXTwiceCompanionRootViewController(0);
  v26.receiver = v2;
  v26.super_class = v18;
  v19 = v25;
  v20 = objc_msgSendSuper2(&v26, sel_initWithCoder_, v25);

  if (v20)
  {
  }

  return v20;
}

uint64_t sub_23D6E1064(char a1, char a2)
{
  v4 = sub_23D6EE620();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_23D6EE670();
  v9 = *(v8 - 8);
  result = MEMORY[0x28223BE20](v8);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 & 1) != 0 && (a2)
  {
    sub_23D6EE330();
    v13 = sub_23D6EE660();
    v14 = sub_23D6EE810();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_23D6CB000, v13, v14, "[TWICE] Device is locked, showing error", v15, 2u);
      MEMORY[0x23EEE9940](v15, -1, -1);
    }

    (*(v9 + 8))(v12, v8);
    v16 = *MEMORY[0x277CE6FD0];
    v17 = sub_23D6EE5F0();
    (*(*(v17 - 8) + 104))(v7, v16, v17);
    (*(v5 + 104))(v7, *MEMORY[0x277CE7020], v4);
    sub_23D6DF5FC(v7);
    return (*(v5 + 8))(v7, v4);
  }

  return result;
}

uint64_t sub_23D6E12C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  v5(a2, a3);
}

void sub_23D6E1328()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E2AC0, &qword_23D6EFF90);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = aBlock - v2;
  sub_23D6EE310();
  v4 = sub_23D6EE320();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionRootViewController_inactiveDate;
  swift_beginAccess();
  sub_23D6ED040(v3, v0 + v5);
  swift_endAccess();
  sub_23D6DF148();
  v7 = v6;
  [v6 cancel];

  v8 = *(v0 + OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionRootViewController____lazy_storage___inactiveTimer);
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_23D6EE018;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23D6D09E8;
  aBlock[3] = &block_descriptor_86;
  v10 = _Block_copy(aBlock);
  v11 = v8;

  [v11 afterDelay:v10 processBlock:300.0];
  _Block_release(v10);
}

void sub_23D6E1504(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_23D6E1558();
  }
}

uint64_t sub_23D6E1558()
{
  v1 = v0;
  v55 = sub_23D6EE620();
  v58 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v57 = &v53 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E2AC0, &qword_23D6EFF90);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v53 - v4;
  v6 = sub_23D6EE320();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v59 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v53 - v10;
  v12 = sub_23D6EE670();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v54 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v60 = &v53 - v17;
  MEMORY[0x28223BE20](v16);
  v19 = &v53 - v18;
  sub_23D6EE330();
  v20 = sub_23D6EE660();
  v21 = sub_23D6EE810();
  v22 = os_log_type_enabled(v20, v21);
  v61 = v13;
  if (v22)
  {
    v23 = swift_slowAlloc();
    v53 = v1;
    v24 = v13;
    v25 = v23;
    v26 = swift_slowAlloc();
    v56 = v12;
    v27 = v7;
    v28 = v6;
    v29 = v11;
    v30 = v26;
    v62[0] = v26;
    *v25 = 136315138;
    *(v25 + 4) = sub_23D6D3C38(0xD000000000000021, 0x800000023D6F1CB0, v62);
    _os_log_impl(&dword_23D6CB000, v20, v21, "[TWICE] %s", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v30);
    v31 = v30;
    v11 = v29;
    v6 = v28;
    v7 = v27;
    v12 = v56;
    MEMORY[0x23EEE9940](v31, -1, -1);
    MEMORY[0x23EEE9940](v25, -1, -1);

    v32 = v24;
    v1 = v53;
  }

  else
  {

    v32 = v13;
  }

  v33 = *(v32 + 8);
  v33(v19, v12);
  v34 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionRootViewController_inactiveDate;
  swift_beginAccess();
  sub_23D6EDF00(v1 + v34, v5, &qword_27E2E2AC0, &qword_23D6EFF90);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    return sub_23D6EDEA0(v5, &qword_27E2E2AC0, &qword_23D6EFF90);
  }

  (*(v7 + 32))(v11, v5, v6);
  v36 = v59;
  sub_23D6EE310();
  sub_23D6EE300();
  v38 = v37;
  v39 = *(v7 + 8);
  v39(v36, v6);
  if (round(v38) >= 300.0)
  {
    sub_23D6EE330();
    v44 = v1;
    v45 = sub_23D6EE660();
    v46 = sub_23D6EE810();

    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v56 = v12;
      v48 = v47;
      *v47 = 134217984;
      *(v47 + 4) = 0x4072C00000000000;
      _os_log_impl(&dword_23D6CB000, v45, v46, "[TWICE] Inactive for more than %fs. Dismiss the card.", v47, 0xCu);
      v12 = v56;
      MEMORY[0x23EEE9940](v48, -1, -1);
    }

    v33(v60, v12);
    sub_23D6EE5E0();
    v49 = sub_23D6EE560();
    sub_23D6EE5A0();

    v51 = v57;
    v50 = v58;
    v52 = v55;
    (*(v58 + 104))(v57, *MEMORY[0x277CE7058], v55);
    sub_23D6DF5FC(v51);
    (*(v50 + 8))(v51, v52);
  }

  else
  {
    v40 = v54;
    sub_23D6EE330();
    v41 = sub_23D6EE660();
    v42 = sub_23D6EE810();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 134217984;
      *(v43 + 4) = v38;
      MEMORY[0x23EEE9940](v43, -1, -1);
    }

    v33(v40, v12);
  }

  return (v39)(v11, v6);
}

uint64_t sub_23D6E1BB8(uint64_t a1, uint64_t a2)
{
  v205 = a2;
  v2 = sub_23D6EE5F0();
  v185 = *(v2 - 8);
  v186 = v2;
  MEMORY[0x28223BE20](v2);
  v184 = &v178 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E2AC0, &qword_23D6EFF90);
  MEMORY[0x28223BE20](v4 - 8);
  v182 = &v178 - v5;
  v192 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E2C88, &qword_23D6F00E0);
  MEMORY[0x28223BE20](v192);
  v204 = &v178 - v6;
  v7 = sub_23D6EE620();
  v8 = *(v7 - 8);
  v206 = v7;
  v207 = v8;
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v178 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v180 = &v178 - v13;
  MEMORY[0x28223BE20](v12);
  v203 = &v178 - v14;
  v15 = sub_23D6EE640();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v179 = &v178 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = &v178 - v19;
  v21 = sub_23D6EE670();
  v22 = *(v21 - 8);
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v178 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v23);
  v181 = &v178 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v183 = &v178 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v202 = &v178 - v31;
  MEMORY[0x28223BE20](v30);
  v33 = &v178 - v32;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v35 = Strong;
    v187 = v11;
    v191 = v25;
    v197 = v22;
    v201 = v21;
    sub_23D6E1328();
    v36 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionRootViewController_currentState;
    swift_beginAccess();
    v37 = *(v16 + 16);
    v196 = v35;
    v193 = v36;
    v198 = v37;
    v199 = v16 + 16;
    v38 = (v37)(v20, v35 + v36, v15);
    v39 = MEMORY[0x23EEE8D50](v38);
    v41 = v40;
    v42 = *(v16 + 8);
    v200 = v15;
    v188 = v42;
    v42(v20, v15);
    sub_23D6EE330();
    v43 = v205;
    v194 = *(v207 + 16);
    v195 = v207 + 16;
    v194(v203, v205, v206);

    v44 = sub_23D6EE660();
    v45 = sub_23D6EE810();

    v46 = os_log_type_enabled(v44, v45);
    v47 = v43;
    v189 = v16 + 8;
    v190 = v20;
    v48 = v16;
    if (v46)
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      *&v211[0] = v50;
      *v49 = 136315394;
      v51 = sub_23D6D3C38(v39, v41, v211);

      *(v49 + 4) = v51;
      *(v49 + 12) = 2080;
      v52 = v203;
      v53 = sub_23D6EE610();
      v55 = v54;
      v56 = v206;
      v203 = *(v207 + 8);
      (v203)(v52, v206);
      v57 = sub_23D6D3C38(v53, v55, v211);

      *(v49 + 14) = v57;
      _os_log_impl(&dword_23D6CB000, v44, v45, "[TWICE] HANDLE_EVENT - from: %s, event: %s", v49, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23EEE9940](v50, -1, -1);
      v58 = v49;
      v48 = v16;
      v59 = v205;
      MEMORY[0x23EEE9940](v58, -1, -1);

      v60 = *(v197 + 8);
      v60(v202, v201);
      v61 = v56;
      v62 = v207;
    }

    else
    {

      v61 = v206;
      v62 = v207;
      v67 = v203;
      v203 = *(v207 + 8);
      (v203)(v67, v206);
      v60 = *(v197 + 8);
      v60(v202, v201);
      v59 = v47;
    }

    v68 = v204;
    v69 = (v204 + *(v192 + 48));
    v70 = v200;
    v198(v204, &v196[v193], v200);
    v194(v69, v59, v61);
    v71 = (*(v48 + 88))(v68, v70);
    v72 = *MEMORY[0x277CE7088];
    v202 = v60;
    if (v71 == v72)
    {
      v73 = *(v62 + 88);
      if (v73(v69, v61) == *MEMORY[0x277CE7050])
      {
        v74 = v196;
        sub_23D6E33BC();
        v75 = MEMORY[0x277CE7070];
LABEL_11:
        v76 = v190;
        v70 = v200;
        (*(v48 + 104))(v190, *v75, v200);
        v77 = v48;
LABEL_24:
        v94 = v193;
        swift_beginAccess();
        (*(v77 + 24))(&v74[v94], v76, v70);
        swift_endAccess();
        sub_23D6DED94();
        v95 = v188;
        v188(v76, v70);
        v96 = v191;
        v97 = v205;
        v95(v204, v70);
LABEL_53:
        v123 = (v198)(v76, &v74[v94], v70);
        v204 = MEMORY[0x23EEE8D50](v123);
        v124 = v76;
        v126 = v125;
        v95(v124, v70);
        sub_23D6EE330();
        v127 = v74;
        v128 = v187;
        v129 = v206;
        v194(v187, v97, v206);

        v130 = sub_23D6EE660();
        v131 = sub_23D6EE810();

        if (os_log_type_enabled(v130, v131))
        {
          v132 = swift_slowAlloc();
          v133 = v129;
          v134 = v127;
          v135 = swift_slowAlloc();
          *&v211[0] = v135;
          *v132 = 136315394;
          v136 = sub_23D6D3C38(v204, v126, v211);

          *(v132 + 4) = v136;
          *(v132 + 12) = 2080;
          v137 = sub_23D6EE610();
          v139 = v138;
          (v203)(v128, v133);
          v140 = sub_23D6D3C38(v137, v139, v211);

          *(v132 + 14) = v140;
          _os_log_impl(&dword_23D6CB000, v130, v131, "[TWICE] HANDLE_EVENT - to: %s, event: %s", v132, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x23EEE9940](v135, -1, -1);
          MEMORY[0x23EEE9940](v132, -1, -1);

          v141 = v191;
        }

        else
        {

          (v203)(v128, v129);
          v141 = v96;
        }

        return (v202)(v141, v201);
      }

      v74 = v196;
      goto LABEL_38;
    }

    if (v71 == *MEMORY[0x277CE7070])
    {
      v78 = v60;
      v192 = v48;
      v79 = v71;
      v73 = *(v62 + 88);
      v80 = v73(v69, v61);
      if (v80 == *MEMORY[0x277CE7038])
      {
        v81 = v183;
        sub_23D6EE330();
        v82 = sub_23D6EE660();
        v83 = sub_23D6EE810();
        if (os_log_type_enabled(v82, v83))
        {
          v84 = swift_slowAlloc();
          *v84 = 0;
          _os_log_impl(&dword_23D6CB000, v82, v83, "[TWICE] Device jumpstart", v84, 2u);
          MEMORY[0x23EEE9940](v84, -1, -1);
        }

        v78(v81, v201);
        v74 = v196;
        sub_23D6E33BC();
        v77 = v192;
        v85 = *(v192 + 104);
        v76 = v190;
        v86 = v190;
        v87 = v79;
      }

      else
      {
        if (v80 != *MEMORY[0x277CE7040])
        {
          v74 = v196;
          v48 = v192;
          goto LABEL_38;
        }

        v74 = v196;
        v88 = *&v196[OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionRootViewController_remoteMessenger];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E2C68, &qword_23D6F00C8);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_23D6EFEB0;
        v90 = v88;
        *&v211[0] = sub_23D6EE410();
        *(&v211[0] + 1) = v91;
        sub_23D6EE8E0();
        v92 = _AXSApplicationAccessibilityEnabled() != 0;
        *(inited + 96) = MEMORY[0x277D839B0];
        *(inited + 72) = v92;
        v93 = sub_23D6ED644(inited);
        swift_setDeallocating();
        sub_23D6EDEA0(inited + 32, &qword_27E2E2C70, &qword_23D6F00D0);
        MEMORY[0x23EEE8C10](v93);

        sub_23D6E38F8();
        v87 = *MEMORY[0x277CE7078];
        v77 = v192;
        v85 = *(v192 + 104);
        v76 = v190;
        v86 = v190;
      }

      v70 = v200;
      v85(v86, v87, v200);
      goto LABEL_24;
    }

    v74 = v196;
    if (v71 == *MEMORY[0x277CE7078])
    {
      v73 = *(v62 + 88);
      if (v73(v69, v61) == *MEMORY[0x277CE7048])
      {
        v75 = MEMORY[0x277CE7080];
        goto LABEL_11;
      }

      goto LABEL_38;
    }

    if (v71 == *MEMORY[0x277CE7080])
    {
      v73 = *(v62 + 88);
      if (v73(v69, v61) == *MEMORY[0x277CE7068])
      {
        sub_23D6E3D54();
        v75 = MEMORY[0x277CE70A0];
        goto LABEL_11;
      }

      goto LABEL_38;
    }

    if (v71 == *MEMORY[0x277CE70A0])
    {
      v73 = *(v62 + 88);
      v98 = v73(v69, v61);
      if (v98 == *MEMORY[0x277CE7008])
      {
        (*(v62 + 96))(v69, v61);
        v99 = *v69;
        sub_23D6E3E80(*v69);
LABEL_36:

        v97 = v205;
LABEL_43:
        v96 = v191;
LABEL_44:
        v70 = v200;
LABEL_45:
        v76 = v190;
LABEL_46:
        v94 = v193;
        v95 = v188;
        v188(v204, v70);
        goto LABEL_53;
      }

      if (v98 == *MEMORY[0x277CE7010])
      {
        (*(v62 + 96))(v69, v61);
        v99 = *v69;
        sub_23D6E43B0(*v69);
        goto LABEL_36;
      }

      if (v98 == *MEMORY[0x277CE7018])
      {
        (*(v62 + 96))(v69, v61);
        v171 = *v69;
        v172 = *(v69 + 6);
        v211[0] = *(v69 + 2);
        v211[1] = v172;
        v173 = *(v69 + 14);
        v210[0] = *(v69 + 10);
        v210[1] = v173;
        sub_23D6EDF00(v210, v209, &qword_27E2E2B60, qword_23D6EFE00);
        v96 = v191;
        if (v209[3])
        {
          v97 = v205;
          sub_23D6D1D74(0, &unk_27E2E2B68, 0x277D73FF0);
          v174 = swift_dynamicCast();
          v76 = v190;
          if (v174)
          {
            v175 = v208;
            sub_23D6E44B4(v171, v211, v208);
          }

          sub_23D6EDEA0(v210, &qword_27E2E2B60, qword_23D6EFE00);
          sub_23D6EDEA0(v211, &qword_27E2E2B60, qword_23D6EFE00);
          v70 = v200;
          goto LABEL_46;
        }

        sub_23D6EDEA0(v210, &qword_27E2E2B60, qword_23D6EFE00);
        sub_23D6EDEA0(v211, &qword_27E2E2B60, qword_23D6EFE00);
        v97 = v205;
        sub_23D6EDEA0(v209, &qword_27E2E2B60, qword_23D6EFE00);
        goto LABEL_44;
      }

      if (v98 == *MEMORY[0x277CE7028])
      {
        (*(v62 + 96))(v69, v61);
        v176 = *v69;
        v177 = *(v69 + 1);
        sub_23D6E468C(*v69, v177);
        v97 = v205;
        sub_23D6ED160(v176, v177);
        goto LABEL_43;
      }
    }

    else
    {
      if (v71 == *MEMORY[0x277CE7098])
      {
        (v203)(v69, v61);
        v96 = v191;
LABEL_40:
        v76 = v190;
        v94 = v193;
        v95 = v188;
        v97 = v205;
        v188(v204, v70);
        goto LABEL_53;
      }

      v73 = *(v62 + 88);
    }

LABEL_38:
    v100 = v73(v69, v61);
    if (v100 == *MEMORY[0x277CE7020])
    {
      (*(v62 + 96))(v69, v61);
      v102 = v184;
      v101 = v185;
      v103 = v186;
      (*(v185 + 32))(v184, v69, v186);
      sub_23D6E4984(v102);
      (*(v101 + 8))(v102, v103);
      v96 = v191;
      v70 = v200;
      goto LABEL_40;
    }

    if (v100 == *MEMORY[0x277CE7000])
    {
      (*(v62 + 96))(v69, v61);
      v104 = *v69;
      v105 = *&v74[OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionRootViewController_mainVC];
      v106 = sub_23D6CE998();

      v97 = v205;
      sub_23D6D9088(v104);

      goto LABEL_43;
    }

    v96 = v191;
    v70 = v200;
    if (v100 == *MEMORY[0x277CE7058])
    {
      v76 = v190;
      (*(v48 + 104))(v190, v72, v200);
      v107 = v48;
      v94 = v193;
      swift_beginAccess();
      (*(v107 + 24))(&v74[v94], v76, v70);
      swift_endAccess();
      sub_23D6DED94();
      v95 = v188;
      v188(v76, v70);
      _AXSTwiceRemoteScreenSetEnabled();
      sub_23D6DF148();
      v109 = v108;
      [v108 cancel];

      v110 = sub_23D6EE320();
      v111 = v182;
      (*(*(v110 - 8) + 56))(v182, 1, 1, v110);
      v112 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionRootViewController_inactiveDate;
      swift_beginAccess();
      sub_23D6ED040(v111, &v74[v112]);
      swift_endAccess();
      v113 = &v74[OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionRootViewController_initialPingMessageIdentifier];
      *v113 = 0;
      *(v113 + 1) = 0;

      v97 = v205;
      v95(v204, v70);
      goto LABEL_53;
    }

    if (v100 == *MEMORY[0x277CE7060])
    {
      v114 = v190;
      (*(v48 + 104))(v190, v72, v200);
      v115 = v48;
      v94 = v193;
      swift_beginAccess();
      (*(v115 + 24))(&v74[v94], v114, v70);
      swift_endAccess();
      sub_23D6DED94();
      v95 = v188;
      v188(v114, v70);
      sub_23D6E69E0();
      v116 = *&v74[OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionRootViewController_mainVC];
      sub_23D6EE5E0();
      v117 = v116;
      v118 = sub_23D6EE560();
      v119 = sub_23D6EE570();
      v121 = v120;

      v122 = v119;
      v96 = v191;
      sub_23D6D05FC(v122, v121, 0xD000000000000016, 0x800000023D6F0460);

      v97 = v205;
      v76 = v190;
    }

    else
    {
      if (v100 != *MEMORY[0x277CE7030])
      {
        sub_23D6EE330();
        v152 = v180;
        v194(v180, v205, v61);
        v153 = v74;
        v154 = sub_23D6EE660();
        v155 = sub_23D6EE800();

        if (os_log_type_enabled(v154, v155))
        {
          v156 = v152;
          v157 = swift_slowAlloc();
          v192 = swift_slowAlloc();
          *&v211[0] = v192;
          *v157 = 136315394;
          v158 = &v74[v193];
          v159 = v190;
          v198(v190, v158, v200);
          sub_23D6EDFC8(&qword_27E2E2C80, MEMORY[0x277CE70A8], MEMORY[0x277CE70C0]);
          v160 = v155;
          v161 = sub_23D6EE9E0();
          v163 = v162;
          v188(v159, v200);
          v164 = sub_23D6D3C38(v161, v163, v211);

          *(v157 + 4) = v164;
          *(v157 + 12) = 2080;
          v165 = sub_23D6EE610();
          v167 = v166;
          v168 = v203;
          (v203)(v156, v206);
          v169 = sub_23D6D3C38(v165, v167, v211);

          *(v157 + 14) = v169;
          _os_log_impl(&dword_23D6CB000, v154, v160, "[TWICE] unhandled event %s %s", v157, 0x16u);
          v170 = v192;
          swift_arrayDestroy();
          v61 = v206;
          MEMORY[0x23EEE9940](v170, -1, -1);
          v70 = v200;
          MEMORY[0x23EEE9940](v157, -1, -1);
        }

        else
        {

          v168 = v203;
          (v203)(v152, v61);
        }

        (v202)(v181, v201);
        v168(v69, v61);
        v96 = v191;
        v97 = v205;
        v74 = v196;
        goto LABEL_45;
      }

      v142 = v48;
      v94 = v193;
      v76 = v190;
      v198(v190, &v74[v193], v200);
      v143 = v179;
      (*(v142 + 104))(v179, v72, v70);
      sub_23D6EDFC8(&qword_27E2E2C90, MEMORY[0x277CE70A8], MEMORY[0x277CE70B0]);
      v144 = sub_23D6EE720();
      v145 = v143;
      v95 = v188;
      v188(v145, v70);
      v95(v76, v70);
      v97 = v205;
      if (v144)
      {
LABEL_52:
        v95(v204, v70);
        goto LABEL_53;
      }

      v146 = *&v74[OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionRootViewController_remoteMessenger];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E2C68, &qword_23D6F00C8);
      v147 = swift_initStackObject();
      *(v147 + 16) = xmmword_23D6EFEB0;
      v148 = v146;
      *&v211[0] = sub_23D6EE410();
      *(&v211[0] + 1) = v149;
      sub_23D6EE8E0();
      v150 = _AXSApplicationAccessibilityEnabled() != 0;
      *(v147 + 96) = MEMORY[0x277D839B0];
      *(v147 + 72) = v150;
      v151 = sub_23D6ED644(v147);
      swift_setDeallocating();
      sub_23D6EDEA0(v147 + 32, &qword_27E2E2C70, &qword_23D6F00D0);
      MEMORY[0x23EEE8C10](v151);

      v96 = v191;

      v97 = v205;
    }

    v70 = v200;

    goto LABEL_52;
  }

  sub_23D6EE330();
  v63 = sub_23D6EE660();
  v64 = sub_23D6EE800();
  if (os_log_type_enabled(v63, v64))
  {
    v65 = swift_slowAlloc();
    *v65 = 0;
    _os_log_impl(&dword_23D6CB000, v63, v64, "[TWICE] self is nil", v65, 2u);
    MEMORY[0x23EEE9940](v65, -1, -1);
  }

  return (*(v22 + 8))(v33, v21);
}

uint64_t sub_23D6E33BC()
{
  v1 = v0;
  v51 = sub_23D6EE620();
  v2 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v4 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_23D6EE670();
  v5 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v7 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  IsBluetoothOn = AXDeviceRemoteScreenIsBluetoothOn();
  IsWifiOn = AXDeviceRemoteScreenIsWifiOn();
  v48 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionRootViewController_remoteMessenger;
  v10 = *(v0 + OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionRootViewController_remoteMessenger);
  v11 = sub_23D6EE510();

  sub_23D6EE330();
  v12 = sub_23D6EE660();
  v13 = sub_23D6EE810();
  v14 = os_log_type_enabled(v12, v13);
  v49 = IsBluetoothOn;
  v50 = IsWifiOn;
  if (v14)
  {
    v15 = swift_slowAlloc();
    v47 = v1;
    v16 = v15;
    v17 = swift_slowAlloc();
    v46 = v4;
    v45 = v2;
    v18 = v17;
    v53[0] = v17;
    *v16 = 136315906;
    *(v16 + 4) = sub_23D6D3C38(0xD000000000000019, 0x800000023D6F1A40, v53);
    *(v16 + 12) = 1024;
    *(v16 + 14) = IsBluetoothOn;
    *(v16 + 18) = 1024;
    *(v16 + 20) = IsWifiOn;
    *(v16 + 24) = 1024;
    *(v16 + 26) = v11 & 1;
    _os_log_impl(&dword_23D6CB000, v12, v13, "[TWICE] %s BT:%{BOOL}d, WF:%{BOOL}d, isConnected: %{BOOL}d", v16, 0x1Eu);
    __swift_destroy_boxed_opaque_existential_0(v18);
    v19 = v18;
    v2 = v45;
    v4 = v46;
    MEMORY[0x23EEE9940](v19, -1, -1);
    v20 = v16;
    v1 = v47;
    MEMORY[0x23EEE9940](v20, -1, -1);
  }

  (*(v5 + 8))(v7, v52);
  if (v11)
  {
    if (!v49)
    {
      v38 = sub_23D6EE650();
      if (v50)
      {
        v39 = MEMORY[0x277CE70D0];
      }

      else
      {
        v39 = MEMORY[0x277CE70D8];
      }

      (*(*(v38 - 8) + 104))(v4, *v39, v38);
      v42 = *MEMORY[0x277CE6FC0];
      v43 = sub_23D6EE5F0();
      (*(*(v43 - 8) + 104))(v4, v42, v43);
      v37 = v51;
      (*(v2 + 104))(v4, *MEMORY[0x277CE7020], v51);
      goto LABEL_14;
    }

    if (v50)
    {
      v21 = *(v1 + v48);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E2C68, &qword_23D6F00C8);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_23D6EFEB0;
      v23 = v21;
      v53[0] = sub_23D6EE3A0();
      v53[1] = v24;
      v25 = MEMORY[0x277D837D0];
      sub_23D6EE8E0();
      v26 = sub_23D6EE400();
      *(inited + 96) = v25;
      *(inited + 72) = v26;
      *(inited + 80) = v27;
      v28 = sub_23D6ED644(inited);
      swift_setDeallocating();
      sub_23D6EDEA0(inited + 32, &qword_27E2E2C70, &qword_23D6F00D0);
      v29 = MEMORY[0x23EEE8C10](v28);
      v31 = v30;

      v32 = (v1 + OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionRootViewController_initialPingMessageIdentifier);
      *v32 = v29;
      v32[1] = v31;
    }

    v40 = *MEMORY[0x277CE70C8];
    v41 = sub_23D6EE650();
    (*(*(v41 - 8) + 104))(v4, v40, v41);
    v34 = MEMORY[0x277CE6FC0];
  }

  else
  {
    v34 = MEMORY[0x277CE6FE8];
  }

  v35 = *v34;
  v36 = sub_23D6EE5F0();
  (*(*(v36 - 8) + 104))(v4, v35, v36);
  v37 = v51;
  (*(v2 + 104))(v4, *MEMORY[0x277CE7020], v51);
LABEL_14:
  sub_23D6DF5FC(v4);
  return (*(v2 + 8))(v4, v37);
}

uint64_t sub_23D6E38F8()
{
  v1 = v0;
  v2 = sub_23D6EE620();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v32[-2] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_23D6EE670();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v32[-2] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_23D6DDD68();
  if (v10)
  {
    v11 = v10;
    v12 = [v10 start];

    v13 = sub_23D6EE2F0();
    v15 = v14;

    sub_23D6EE330();
    v16 = sub_23D6EE660();
    v17 = sub_23D6EE810();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v32[0] = v19;
      *v18 = 136315138;
      *(v18 + 4) = sub_23D6D3C38(0xD000000000000015, 0x800000023D6F1A60, v32);
      _os_log_impl(&dword_23D6CB000, v16, v17, "[TWICE] %s Received airplay data blob", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v19);
      MEMORY[0x23EEE9940](v19, -1, -1);
      MEMORY[0x23EEE9940](v18, -1, -1);
    }

    (*(v7 + 8))(v9, v6);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E2C98, &qword_23D6F00E8);
    inited = swift_initStackObject();
    v31 = xmmword_23D6EFEB0;
    *(inited + 16) = xmmword_23D6EFEB0;
    *(inited + 32) = sub_23D6EE400();
    *(inited + 40) = v21;
    *(inited + 48) = v13;
    *(inited + 56) = v15;
    sub_23D6ED10C(v13, v15);
    v22 = sub_23D6ED780(inited);
    swift_setDeallocating();
    sub_23D6EDEA0(inited + 32, &qword_27E2E2CA0, &qword_23D6F00F0);
    v23 = *(v1 + OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionRootViewController_remoteMessenger);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E2C68, &qword_23D6F00C8);
    v24 = swift_initStackObject();
    *(v24 + 16) = v31;
    v25 = v23;
    v32[0] = sub_23D6EE3D0();
    v32[1] = v26;
    sub_23D6EE8E0();
    *(v24 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E2CA8, &qword_23D6F00F8);
    *(v24 + 72) = v22;
    v27 = sub_23D6ED644(v24);
    swift_setDeallocating();
    sub_23D6EDEA0(v24 + 32, &qword_27E2E2C70, &qword_23D6F00D0);
    MEMORY[0x23EEE8C10](v27);

    return sub_23D6ED160(v13, v15);
  }

  else
  {
    v29 = *MEMORY[0x277CE6FC8];
    v30 = sub_23D6EE5F0();
    (*(*(v30 - 8) + 104))(v5, v29, v30);
    (*(v3 + 104))(v5, *MEMORY[0x277CE7020], v2);
    sub_23D6DF5FC(v5);
    return (*(v3 + 8))(v5, v2);
  }
}

uint64_t sub_23D6E3D54()
{
  v1 = sub_23D6DDE44();
  if (v1)
  {
    v2 = v1;
    v3 = sub_23D6EE730();
    [v2 beginHandlingHIDEventsForReason_];
  }

  v4 = *(v0 + OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionRootViewController_remoteMessenger);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E2C68, &qword_23D6F00C8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23D6EFEB0;
  v6 = v4;
  sub_23D6EE430();
  v7 = MEMORY[0x277D837D0];
  sub_23D6EE8E0();
  v8 = sub_23D6EE400();
  *(inited + 96) = v7;
  *(inited + 72) = v8;
  *(inited + 80) = v9;
  v10 = sub_23D6ED644(inited);
  swift_setDeallocating();
  sub_23D6EDEA0(inited + 32, &qword_27E2E2C70, &qword_23D6F00D0);
  MEMORY[0x23EEE8C10](v10);
}

void sub_23D6E3E80(void *a1)
{
  v62 = *MEMORY[0x277D85DE8];
  if ([a1 type] != 3001)
  {
    *&v60 = 0;
    v48 = [objc_opt_self() archivedDataWithRootObject:a1 requiringSecureCoding:1 error:&v60];
    v49 = v60;
    if (v48)
    {
      v50 = sub_23D6EE2F0();
      v52 = v51;

      v53 = *(v1 + OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionRootViewController_remoteMessenger);
      sub_23D6EE540();

      sub_23D6ED160(v50, v52);
      return;
    }

    v54 = v49;
    v55 = sub_23D6EE2D0();

    swift_willThrow();
    v56 = v55;
    goto LABEL_11;
  }

  v3 = [a1 handInfo];
  if (!v3)
  {
    return;
  }

  v4 = v3;
  [v3 setEncodePathsForCompatibility_];
  *&v60 = 0;
  v5 = [objc_opt_self() archivedDataWithRootObject:v4 requiringSecureCoding:1 error:&v60];
  v6 = v60;
  if (!v5)
  {
    v57 = v6;
    v58 = sub_23D6EE2D0();

    swift_willThrow();
    v56 = v58;
LABEL_11:

    return;
  }

  v7 = sub_23D6EE2F0();
  v9 = v8;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E2CB8, &qword_23D6F0108);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23D6EFF80;
  *(inited + 32) = sub_23D6EE4C0();
  *(inited + 72) = MEMORY[0x277CC9318];
  *(inited + 40) = v11;
  *(inited + 48) = v7;
  *(inited + 56) = v9;
  sub_23D6ED10C(v7, v9);
  *(inited + 80) = sub_23D6EE440();
  *(inited + 88) = v12;
  v13 = [a1 isGeneratedEvent];
  v14 = MEMORY[0x277D839B0];
  *(inited + 120) = MEMORY[0x277D839B0];
  *(inited + 96) = v13;
  *(inited + 128) = sub_23D6EE470();
  *(inited + 136) = v15;
  v16 = [a1 generationCount];
  *(inited + 168) = MEMORY[0x277D83B88];
  *(inited + 144) = v16;
  *(inited + 176) = sub_23D6EE460();
  *(inited + 184) = v17;
  v18 = [a1 willUpdateMask];
  v19 = MEMORY[0x277D84CC0];
  *(inited + 216) = MEMORY[0x277D84CC0];
  *(inited + 192) = v18;
  *(inited + 224) = sub_23D6EE450();
  *(inited + 232) = v20;
  v21 = [a1 didUpdateMask];
  *(inited + 264) = v19;
  *(inited + 240) = v21;
  *(inited + 272) = sub_23D6EE490();
  *(inited + 280) = v22;
  v23 = [a1 useOriginalHIDTime];
  *(inited + 312) = v14;
  *(inited + 288) = v23;
  *(inited + 320) = sub_23D6EE4B0();
  *(inited + 328) = v24;
  v25 = [a1 HIDTime];
  v26 = MEMORY[0x277D84D38];
  *(inited + 360) = MEMORY[0x277D84D38];
  *(inited + 336) = v25;
  *(inited + 368) = sub_23D6EE4A0();
  *(inited + 376) = v27;
  v28 = [a1 isDisplayIntegrated];
  *(inited + 408) = v14;
  *(inited + 384) = v28;
  *(inited + 416) = sub_23D6EE4D0();
  *(inited + 424) = v29;
  v30 = [a1 senderID];
  *(inited + 456) = v26;
  *(inited + 432) = v30;
  *(inited + 464) = sub_23D6EE4E0();
  *(inited + 472) = v31;
  v32 = [a1 contextId];
  *(inited + 504) = v19;
  *(inited + 480) = v32;
  v33 = sub_23D6ED898(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E2CC0, &qword_23D6F0110);
  swift_arrayDestroy();
  v34 = [a1 HIDAttributeData];
  if (v34)
  {
    v35 = v34;
    v36 = sub_23D6EE2F0();
    v38 = v37;

    v39 = sub_23D6EE480();
    v41 = v40;
    v61 = MEMORY[0x277CC9318];
    *&v60 = v36;
    *(&v60 + 1) = v38;
    sub_23D6D43BC(&v60, v59);
    sub_23D6ED10C(v36, v38);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_23D6ECA48(v59, v39, v41, isUniquelyReferenced_nonNull_native);
    sub_23D6ED160(v36, v38);
  }

  v43 = *(v1 + OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionRootViewController_remoteMessenger);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E2C68, &qword_23D6F00C8);
  v44 = swift_initStackObject();
  *(v44 + 16) = xmmword_23D6EFEB0;
  v45 = v43;
  *&v60 = sub_23D6EE370();
  *(&v60 + 1) = v46;
  sub_23D6EE8E0();
  *(v44 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E2CC8, &qword_23D6F0118);
  *(v44 + 72) = v33;
  v47 = sub_23D6ED644(v44);
  swift_setDeallocating();
  sub_23D6EDEA0(v44 + 32, &qword_27E2E2C70, &qword_23D6F00D0);
  MEMORY[0x23EEE8C10](v47);

  sub_23D6ED160(v7, v9);
}

void sub_23D6E43B0(uint64_t a1)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v10[0] = 0;
  v2 = [objc_opt_self() archivedDataWithRootObject:a1 requiringSecureCoding:1 error:v10];
  v3 = v10[0];
  if (v2)
  {
    v4 = sub_23D6EE2F0();
    v6 = v5;

    v7 = *(v1 + OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionRootViewController_remoteMessenger);
    sub_23D6EE540();

    sub_23D6ED160(v4, v6);
  }

  else
  {
    v8 = v3;
    v9 = sub_23D6EE2D0();

    swift_willThrow();
  }
}

void sub_23D6E44B4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v24[4] = *MEMORY[0x277D85DE8];
  sub_23D6EDF00(a2, v24, &qword_27E2E2B60, qword_23D6EFE00);
  v7 = [a3 elementRefData];
  if (v7)
  {
    v8 = v7;
    v9 = sub_23D6EE2F0();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0xF000000000000000;
  }

  v12 = objc_allocWithZone(MEMORY[0x277D73FE8]);
  v13 = sub_23D6EC3C4(a1, v24, v9, v11);
  v14 = objc_opt_self();
  v24[0] = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E2CD8, &qword_23D6F0128);
  v15 = sub_23D6EE880();
  v24[0] = 0;
  v16 = [v14 archivedDataWithRootObject:v15 requiringSecureCoding:1 error:v24];
  swift_unknownObjectRelease();
  v17 = v24[0];
  if (v16)
  {
    v18 = sub_23D6EE2F0();
    v20 = v19;

    v21 = *(v4 + OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionRootViewController_remoteMessenger);
    sub_23D6EE540();

    sub_23D6ED160(v18, v20);
  }

  else
  {
    v22 = v17;
    v23 = sub_23D6EE2D0();

    swift_willThrow();
  }
}

uint64_t sub_23D6E468C(uint64_t a1, unint64_t a2)
{
  v5 = sub_23D6EE690();
  v17 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_23D6EE6C0();
  v8 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23D6D1D74(0, &qword_27E2E2AE0, 0x277D85C78);
  v11 = sub_23D6EE850();
  v12 = swift_allocObject();
  v12[2] = v2;
  v12[3] = a1;
  v12[4] = a2;
  aBlock[4] = sub_23D6EDFBC;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23D6D09E8;
  aBlock[3] = &block_descriptor_78;
  v13 = _Block_copy(aBlock);
  v14 = v2;
  sub_23D6ED10C(a1, a2);

  sub_23D6EE6A0();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_23D6EDFC8(&qword_27E2E2C50, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E2748, &qword_23D6EFEA0);
  sub_23D6EDC88(&qword_27E2E2C60, &qword_27E2E2748, &qword_23D6EFEA0);
  sub_23D6EE8B0();
  MEMORY[0x23EEE8F80](0, v10, v7, v13);
  _Block_release(v13);

  (*(v17 + 8))(v7, v5);
  return (*(v8 + 8))(v10, v16);
}

void sub_23D6E4984(uint64_t a1)
{
  v2 = sub_23D6EE670();
  v128 = *(v2 - 8);
  v129 = v2;
  v3 = MEMORY[0x28223BE20](v2);
  v123 = (v119 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v3);
  v126 = v119 - v5;
  v6 = sub_23D6EE650();
  v134 = *(v6 - 8);
  v7 = MEMORY[0x28223BE20](v6);
  v131 = v119 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v132 = v119 - v9;
  v10 = sub_23D6EE640();
  v136 = *(v10 - 8);
  v11 = MEMORY[0x28223BE20](v10);
  v124 = v119 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v125 = v119 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v17 = v119 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v20 = v119 - v19;
  v21 = MEMORY[0x28223BE20](v18);
  v23 = v119 - v22;
  MEMORY[0x28223BE20](v21);
  v25 = v119 - v24;
  v26 = sub_23D6EE5F0();
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v29 = (v119 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  v30 = *(v27 + 16);
  v133 = a1;
  v30(v29, a1, v26);
  v31 = (*(v27 + 88))(v29, v26);
  if (v31 == *MEMORY[0x277CE6FF0])
  {
    (*(v27 + 96))(v29, v26);
    v134 = *v29;
    v32 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionRootViewController_currentState;
    v33 = v135;
    swift_beginAccess();
    v34 = v136;
    (*(v136 + 16))(v25, v33 + v32, v10);
    v35 = *MEMORY[0x277CE7088];
    v132 = *(v34 + 104);
    (v132)(v23, v35, v10);
    sub_23D6EDFC8(&qword_27E2E2C90, MEMORY[0x277CE70A8], MEMORY[0x277CE70B0]);
    LOBYTE(v33) = sub_23D6EE720();
    v36 = *(v34 + 8);
    v36(v23, v10);
    v36(v25, v10);
    if (v33)
    {
      return;
    }

    (v132)(v25, v35, v10);
    v37 = v135;
    swift_beginAccess();
    (*(v136 + 24))(v37 + v32, v25, v10);
    swift_endAccess();
    sub_23D6DED94();
    v36(v25, v10);
    v38 = v134;
    goto LABEL_4;
  }

  v127 = v25;
  v39 = v135;
  v130 = v26;
  if (v31 == *MEMORY[0x277CE6FB8])
  {
    (*(v27 + 96))(v29, v130);
    v40 = *(v134 + 32);
    v129 = v6;
    v40(v132, v29, v6);
    v41 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionRootViewController_currentState;
    swift_beginAccess();
    v42 = v136;
    v43 = v127;
    (*(v136 + 16))(v127, v39 + v41, v10);
    v44 = *(v42 + 104);
    LODWORD(v131) = *MEMORY[0x277CE7088];
    v128 = v44;
    v44(v23);
    sub_23D6EDFC8(&qword_27E2E2C90, MEMORY[0x277CE70A8], MEMORY[0x277CE70B0]);
    v45 = sub_23D6EE720();
    v46 = *(v42 + 8);
    v46(v23, v10);
    v46(v43, v10);
    if (v45)
    {
      (*(v134 + 8))(v132, v129);
      return;
    }

    (v128)(v43, v131, v10);
    swift_beginAccess();
    (*(v42 + 24))(v39 + v41, v43, v10);
    swift_endAccess();
    sub_23D6DED94();
    v46(v43, v10);
    v54 = 0;
    v55 = v132;
LABEL_19:
    sub_23D6E6508(v54, v55);
    v139 = 0;
    v140 = 0xE000000000000000;
    sub_23D6EE980();
    MEMORY[0x23EEE8E80](44, 0xE100000000000000);
    v63 = v129;
    sub_23D6EE980();
    (*(v134 + 8))(v55, v63);
    goto LABEL_26;
  }

  v47 = v23;
  if (v31 == *MEMORY[0x277CE6FC0])
  {
    (*(v27 + 96))(v29, v130);
    (*(v134 + 32))(v131, v29, v6);
    v48 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionRootViewController_currentState;
    swift_beginAccess();
    v129 = v6;
    v49 = v136;
    v50 = v127;
    (*(v136 + 16))(v127, v39 + v48, v10);
    v51 = *(v49 + 104);
    LODWORD(v132) = *MEMORY[0x277CE7088];
    v128 = v51;
    v51(v23);
    sub_23D6EDFC8(&qword_27E2E2C90, MEMORY[0x277CE70A8], MEMORY[0x277CE70B0]);
    v52 = sub_23D6EE720();
    v53 = *(v49 + 8);
    v53(v23, v10);
    v53(v50, v10);
    if (v52)
    {
      (*(v134 + 8))(v131, v129);
      return;
    }

    (v128)(v50, v132, v10);
    swift_beginAccess();
    (*(v49 + 24))(v39 + v48, v50, v10);
    swift_endAccess();
    sub_23D6DED94();
    v53(v50, v10);
    v54 = 1;
    v55 = v131;
    goto LABEL_19;
  }

  v56 = v127;
  if (v31 == *MEMORY[0x277CE6FF8])
  {
    v57 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionRootViewController_currentState;
    swift_beginAccess();
    v58 = v136;
    (*(v136 + 16))(v56, v39 + v57, v10);
    v59 = *(v58 + 104);
    LODWORD(v134) = *MEMORY[0x277CE7088];
    v132 = v59;
    (v59)(v47);
    sub_23D6EDFC8(&qword_27E2E2C90, MEMORY[0x277CE70A8], MEMORY[0x277CE70B0]);
    v60 = v47;
    v61 = sub_23D6EE720();
    v62 = *(v58 + 8);
    v62(v60, v10);
    v62(v56, v10);
    if (v61)
    {
      return;
    }

    (v132)(v56, v134, v10);
    swift_beginAccess();
    (*(v58 + 24))(v39 + v57, v56, v10);
    swift_endAccess();
    sub_23D6DED94();
    v62(v56, v10);
    sub_23D6E69E0();
    goto LABEL_5;
  }

  if (v31 == *MEMORY[0x277CE6FD0])
  {
    v64 = v136;
    (*(v136 + 104))(v127, *MEMORY[0x277CE7090], v10);
    v65 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionRootViewController_currentState;
    swift_beginAccess();
    (*(v64 + 24))(v39 + v65, v56, v10);
    swift_endAccess();
    sub_23D6DED94();
    (*(v64 + 8))(v56, v10);
LABEL_22:
    sub_23D6E69E0();
    v66 = *(v39 + OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionRootViewController_mainVC);
    sub_23D6EE5E0();
    v67 = v66;
    v68 = sub_23D6EE560();
    v69 = sub_23D6EE570();
    v71 = v70;

    sub_23D6D05FC(v69, v71, 0xD000000000000016, 0x800000023D6F0460);

LABEL_25:
    v141[0] = 0;
    v141[1] = 0xE000000000000000;
    sub_23D6EE980();
    goto LABEL_26;
  }

  if (v31 == *MEMORY[0x277CE6FC8])
  {
    v72 = v136;
    (*(v136 + 104))(v127, *MEMORY[0x277CE7078], v10);
    v73 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionRootViewController_currentState;
    swift_beginAccess();
    (*(v72 + 24))(v39 + v73, v56, v10);
    swift_endAccess();
    sub_23D6DED94();
    (*(v72 + 8))(v56, v10);
    sub_23D6E38F8();
    goto LABEL_25;
  }

  if (v31 == *MEMORY[0x277CE6FE0])
  {
    v75 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionRootViewController_currentState;
    swift_beginAccess();
    v76 = v136;
    v77 = *(v136 + 16);
    v122 = v75;
    v121 = v136 + 16;
    v120 = v77;
    v77(v20, v39 + v75, v10);
    v78 = *MEMORY[0x277CE7080];
    v79 = *(v76 + 104);
    v134 = v76 + 104;
    v132 = v79;
    (v79)(v17, v78, v10);
    v80 = sub_23D6EDFC8(&qword_27E2E2740, MEMORY[0x277CE70A8], MEMORY[0x277CE70B8]);
    sub_23D6EE780();
    v119[1] = v80;
    sub_23D6EE780();
    if (v139 == v137 && v140 == v138)
    {
      v81 = 1;
    }

    else
    {
      v81 = sub_23D6EEA00();
    }

    v89 = (v136 + 8);
    v88 = *(v136 + 8);
    v88(v17, v10);
    v131 = v89;
    v123 = v88;
    v88(v20, v10);

    v90 = v122;
    if (v81)
    {
      goto LABEL_44;
    }

    v91 = v125;
    v120(v125, v39 + v122, v10);
    v92 = v124;
    (v132)(v124, *MEMORY[0x277CE70A0], v10);
    sub_23D6EE780();
    sub_23D6EE780();
    if (v139 == v137 && v140 == v138)
    {
      v93 = v123;
      v123(v92, v10);
      v93(v91, v10);

LABEL_44:
      v108 = v126;
      sub_23D6EE330();
      v109 = sub_23D6EE660();
      v110 = sub_23D6EE800();
      if (os_log_type_enabled(v109, v110))
      {
        v111 = swift_slowAlloc();
        *v111 = 0;
        _os_log_impl(&dword_23D6CB000, v109, v110, "[TWICE] airplayDidStopStreamingError:", v111, 2u);
        MEMORY[0x23EEE9940](v111, -1, -1);
      }

      (*(v128 + 1))(v108, v129);
      v112 = v127;
      (v132)(v127, *MEMORY[0x277CE7088], v10);
      swift_beginAccess();
      (*(v136 + 24))(v39 + v90, v112, v10);
      swift_endAccess();
      sub_23D6DED94();
      v123(v112, v10);
      sub_23D6E6078(1);
      goto LABEL_47;
    }

    v106 = sub_23D6EEA00();
    v107 = v123;
    v123(v92, v10);
    v107(v91, v10);

    if (v106)
    {
      goto LABEL_44;
    }
  }

  else if (v31 == *MEMORY[0x277CE6FB0])
  {
    v82 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionRootViewController_currentState;
    swift_beginAccess();
    v83 = v136;
    (*(v136 + 16))(v56, v39 + v82, v10);
    v84 = *(v83 + 104);
    LODWORD(v134) = *MEMORY[0x277CE7088];
    v132 = v84;
    (v84)(v47);
    sub_23D6EDFC8(&qword_27E2E2C90, MEMORY[0x277CE70A8], MEMORY[0x277CE70B0]);
    v85 = v47;
    v86 = sub_23D6EE720();
    v87 = *(v83 + 8);
    v87(v85, v10);
    v87(v56, v10);
    if ((v86 & 1) == 0)
    {
      (v132)(v56, v134, v10);
      swift_beginAccess();
      (*(v83 + 24))(v39 + v82, v56, v10);
      swift_endAccess();
      sub_23D6DED94();
      v87(v56, v10);
      v38 = 2;
LABEL_4:
      sub_23D6E6078(v38);
LABEL_5:
      v139 = 0;
      v140 = 0xE000000000000000;
LABEL_6:
      sub_23D6EE980();
LABEL_26:
      sub_23D6EE5E0();
      v74 = sub_23D6EE560();
      sub_23D6EE580();
    }
  }

  else
  {
    v94 = v136;
    if (v31 != *MEMORY[0x277CE6FE8])
    {
      if (v31 != *MEMORY[0x277CE6FD8])
      {
        v114 = v123;
        sub_23D6EE330();
        v115 = sub_23D6EE660();
        v116 = sub_23D6EE800();
        if (os_log_type_enabled(v115, v116))
        {
          v117 = swift_slowAlloc();
          v118 = swift_slowAlloc();
          v141[0] = v118;
          *v117 = 136315138;
          *(v117 + 4) = sub_23D6D3C38(0xD000000000000013, 0x800000023D6F1A80, v141);
          _os_log_impl(&dword_23D6CB000, v115, v116, "[TWICE] %s @unknown default", v117, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v118);
          MEMORY[0x23EEE9940](v118, -1, -1);
          MEMORY[0x23EEE9940](v117, -1, -1);
        }

        (*(v128 + 1))(v114, v129);
        (*(v27 + 8))(v29, v130);
        goto LABEL_26;
      }

      (*(v136 + 104))(v127, *MEMORY[0x277CE7088], v10);
      v113 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionRootViewController_currentState;
      swift_beginAccess();
      (*(v94 + 24))(v39 + v113, v56, v10);
      swift_endAccess();
      sub_23D6DED94();
      (*(v94 + 8))(v56, v10);
      goto LABEL_22;
    }

    v95 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionRootViewController_currentState;
    swift_beginAccess();
    (*(v94 + 16))(v56, v39 + v95, v10);
    v96 = *(v94 + 104);
    LODWORD(v134) = *MEMORY[0x277CE7088];
    v132 = v96;
    (v96)(v47);
    sub_23D6EDFC8(&qword_27E2E2C90, MEMORY[0x277CE70A8], MEMORY[0x277CE70B0]);
    v97 = v47;
    v98 = sub_23D6EE720();
    v99 = *(v94 + 8);
    v99(v97, v10);
    v99(v56, v10);
    if ((v98 & 1) == 0)
    {
      (v132)(v56, v134, v10);
      swift_beginAccess();
      (*(v94 + 24))(v39 + v95, v56, v10);
      swift_endAccess();
      sub_23D6DED94();
      v99(v56, v10);
      sub_23D6E69E0();
      v100 = *(v39 + OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionRootViewController_mainVC);
      sub_23D6EE5E0();
      v101 = v100;
      v102 = sub_23D6EE560();
      v103 = sub_23D6EE570();
      v105 = v104;

      sub_23D6D05FC(v103, v105, 0xD000000000000016, 0x800000023D6F0460);

LABEL_47:
      v139 = 0;
      v140 = 0xE000000000000000;
      goto LABEL_6;
    }
  }
}

uint64_t sub_23D6E6078(void (*a1)(char *, uint64_t))
{
  v21 = a1;
  v25 = sub_23D6EE690();
  v27 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_23D6EE6C0();
  v24 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_23D6EE680();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = (&v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_23D6EE6E0();
  v22 = v10;
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v21 - v15;
  sub_23D6E69E0();
  v23 = *(v1 + OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionRootViewController_eventSerialQueue);
  sub_23D6EE6D0();
  *v9 = v21;
  (*(v7 + 104))(v9, *MEMORY[0x277D85188], v6);
  MEMORY[0x23EEE8E10](v14, v9);
  (*(v7 + 8))(v9, v6);
  v21 = *(v11 + 8);
  v21(v14, v10);
  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_23D6EE010;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23D6D09E8;
  aBlock[3] = &block_descriptor_82;
  v18 = _Block_copy(aBlock);

  sub_23D6EE6A0();
  v28 = MEMORY[0x277D84F90];
  sub_23D6EDFC8(&qword_27E2E2C50, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E2748, &qword_23D6EFEA0);
  sub_23D6EDC88(&qword_27E2E2C60, &qword_27E2E2748, &qword_23D6EFEA0);
  v19 = v25;
  sub_23D6EE8B0();
  MEMORY[0x23EEE8F50](v16, v5, v3, v18);
  _Block_release(v18);
  (*(v27 + 8))(v3, v19);
  (*(v24 + 8))(v5, v26);
  v21(v16, v22);
}

uint64_t sub_23D6E6508(char a1, uint64_t a2)
{
  v4 = sub_23D6EE670();
  v30[0] = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_23D6EE650();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_23D6EE730();
  v12 = MGGetBoolAnswer();

  if (v12)
  {
    v13 = 1312902231;
  }

  else
  {
    v13 = 1229343063;
  }

  (*(v8 + 16))(v10, a2, v7);
  v14 = (*(v8 + 88))(v10, v7);
  if (v14 == *MEMORY[0x277CE70D0])
  {
    goto LABEL_19;
  }

  if (v14 == *MEMORY[0x277CE70C8])
  {
    v31 = 0;
    v32 = 0xE000000000000000;
    sub_23D6EE900();

    if (a1)
    {
      v15 = 0x800000023D6F1C00;
      v16 = 0xD000000000000024;
    }

    else
    {
      v15 = 0x800000023D6F1BD0;
      v16 = 0xD000000000000023;
    }

    v31 = v16;
    v32 = v15;
LABEL_18:
    MEMORY[0x23EEE8E80](v13, 0xE400000000000000);
    MEMORY[0x23EEE8E80](0x524F5252455FLL, 0xE600000000000000);
LABEL_19:
    v24 = *(v30[1] + OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionRootViewController_mainVC);
    sub_23D6EE5E0();
    v25 = v24;
    v26 = sub_23D6EE560();
    v27 = sub_23D6EE570();
    v29 = v28;

    sub_23D6D05FC(v27, v29, 0xD000000000000016, 0x800000023D6F0460);
  }

  if (v14 == *MEMORY[0x277CE70D8])
  {
    v31 = 0;
    v32 = 0xE000000000000000;
    sub_23D6EE900();
    if (a1)
    {
      v17 = "EMOTE_SCREEN_GIZMO_BLUETOOTH";
      v18 = 0xD00000000000002DLL;
    }

    else
    {
      v17 = "anion:statusError:)";
      v18 = 0xD00000000000002CLL;
    }

    MEMORY[0x23EEE8E80](v18, v17 | 0x8000000000000000);
    goto LABEL_18;
  }

  sub_23D6EE330();
  v19 = sub_23D6EE660();
  v20 = sub_23D6EE800();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v31 = v22;
    *v21 = 136315138;
    *(v21 + 4) = sub_23D6D3C38(0xD000000000000033, 0x800000023D6F1B30, &v31);
    _os_log_impl(&dword_23D6CB000, v19, v20, "[TWICE] %s unknown status error", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v22);
    MEMORY[0x23EEE9940](v22, -1, -1);
    MEMORY[0x23EEE9940](v21, -1, -1);
  }

  (*(v30[0] + 8))(v6, v4);
  return (*(v8 + 8))(v10, v7);
}

void sub_23D6E69E0()
{
  v1 = sub_23D6EE690();
  v26 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v3 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_23D6EE6C0();
  v4 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23D6D1D74(0, &qword_27E2E2AE0, 0x277D85C78);
  v24 = sub_23D6EE850();
  v7 = swift_allocObject();
  *(v7 + 16) = v0;
  v31 = sub_23D6EDC80;
  v32 = v7;
  aBlock = MEMORY[0x277D85DD0];
  v28 = 1107296256;
  v29 = sub_23D6D09E8;
  v30 = &block_descriptor_57;
  v8 = _Block_copy(&aBlock);
  v9 = v0;

  sub_23D6EE6A0();
  aBlock = MEMORY[0x277D84F90];
  sub_23D6EDFC8(&qword_27E2E2C50, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E2748, &qword_23D6EFEA0);
  sub_23D6EDC88(&qword_27E2E2C60, &qword_27E2E2748, &qword_23D6EFEA0);
  sub_23D6EE8B0();
  v10 = v24;
  MEMORY[0x23EEE8F80](0, v6, v3, v8);
  _Block_release(v8);

  (*(v26 + 8))(v3, v1);
  (*(v4 + 8))(v6, v25);
  v11 = *&v9[OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionRootViewController_remoteMessenger];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E2C68, &qword_23D6F00C8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23D6EFEB0;
  v13 = v11;
  aBlock = sub_23D6EE3E0();
  v28 = v14;
  v15 = MEMORY[0x277D837D0];
  sub_23D6EE8E0();
  v16 = sub_23D6EE400();
  *(inited + 96) = v15;
  *(inited + 72) = v16;
  *(inited + 80) = v17;
  v18 = sub_23D6ED644(inited);
  swift_setDeallocating();
  sub_23D6EDEA0(inited + 32, &qword_27E2E2C70, &qword_23D6F00D0);
  MEMORY[0x23EEE8C10](v18);

  v19 = sub_23D6DDE44();
  if (v19)
  {
    v20 = v19;
    v21 = sub_23D6EE730();
    [v20 endHandlingHIDEventsForReason_];
  }

  v22 = sub_23D6DDD68();
  [v22 cleanup];
}

void sub_23D6E6DF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v65[3] = *MEMORY[0x277D85DE8];
  v4 = sub_23D6EE670();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionRootViewController_mainVC;
  v9 = *(a1 + OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionRootViewController_mainVC);
  v10 = sub_23D6CEB04();
  v12 = v11;

  ObjectType = swift_getObjectType();
  v14 = (*(v12 + 152))(ObjectType, v12);

  if (v14)
  {
    v15 = objc_allocWithZone(MEMORY[0x277D74000]);
    v16 = sub_23D6EE2E0();
    v17 = [v15 initWithHierarchyData_];

    v65[0] = 0;
    v18 = [v17 decodeHierarchyWithContainer:v14 error:v65];
    if (v18)
    {
      v19 = v18;
      v20 = v65[0];
      v21 = [v19 accessibilityElements];
      if (v21 && (v64 = v5, v22 = v21, v23 = sub_23D6EE7B0(), v22, v24 = sub_23D6E72B4(v23), , v24))
      {
        sub_23D6EE330();

        v25 = sub_23D6EE660();
        v26 = sub_23D6EE810();

        v27 = os_log_type_enabled(v25, v26);
        v63 = v24;
        if (v27)
        {
          v28 = swift_slowAlloc();
          v61 = v17;
          v29 = v28;
          v62 = swift_slowAlloc();
          v65[0] = v62;
          *v29 = 136315138;
          v30 = sub_23D6D1D74(0, &qword_27E2E29B0, 0x277D750A0);
          v31 = MEMORY[0x23EEE8EE0](v24, v30);
          v33 = sub_23D6D3C38(v31, v32, v65);
          HIDWORD(v60) = v26;
          v34 = v33;

          v35 = v29;
          v17 = v61;
          *(v35 + 1) = v34;
          v36 = v25;
          v37 = v25;
          v38 = v35;
          _os_log_impl(&dword_23D6CB000, v36, BYTE4(v60), "[TWICE] adding %s", v35, 0xCu);
          v39 = v62;
          __swift_destroy_boxed_opaque_existential_0(v62);
          MEMORY[0x23EEE9940](v39, -1, -1);
          MEMORY[0x23EEE9940](v38, -1, -1);
        }

        else
        {
        }

        (*(v64 + 8))(v7, v4);
        v42 = *(a1 + v8);
        v43 = sub_23D6CEB04();
        v45 = v44;

        v46 = swift_getObjectType();
        (*(v45 + 200))(1, v46, v45);

        v47 = *(a1 + v8);
        v48 = sub_23D6CEB04();
        v50 = v49;

        v51 = swift_getObjectType();
        v52 = (*(v50 + 152))(v51, v50);

        if (v52)
        {
          [v19 accessibilityFrame];
          v54 = v53;
          v56 = v55;
          v57 = *(a1 + v8);
          v58 = sub_23D6CE998();

          v59 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_isCrownOrientationOnRightSide;
          swift_beginAccess();
          LOBYTE(v59) = v58[v59];

          sub_23D6D2DC8(v63, v59, v54, v56);
        }
      }

      else
      {
      }
    }

    else
    {
      v40 = v65[0];
      v41 = sub_23D6EE2D0();

      swift_willThrow();
    }
  }
}

uint64_t sub_23D6E72B4(uint64_t a1)
{
  v6 = MEMORY[0x277D84F90];
  v2 = *(a1 + 16);
  sub_23D6EE950();
  if (!v2)
  {
    return v6;
  }

  for (i = a1 + 32; ; i += 32)
  {
    sub_23D6D42F0(i, v5);
    sub_23D6D1D74(0, &qword_27E2E29B0, 0x277D750A0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    sub_23D6EE930();
    sub_23D6EE960();
    sub_23D6EE970();
    sub_23D6EE940();
    if (!--v2)
    {
      return v6;
    }
  }

  return 0;
}

void sub_23D6E73C0(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionRootViewController_mainVC);
  v5 = sub_23D6CEB04();
  v3 = v2;

  ObjectType = swift_getObjectType();
  (*(v3 + 200))(0, ObjectType, v3);
}

void *sub_23D6E7448(uint64_t a1)
{
  v1 = sub_23D6EE620();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v14[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_23D6EE640();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    (*(v6 + 104))(v8, *MEMORY[0x277CE7088], v5);
    v11 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionRootViewController_currentState;
    swift_beginAccess();
    (*(v6 + 24))(&v10[v11], v8, v5);
    swift_endAccess();
    sub_23D6DED94();

    (*(v6 + 8))(v8, v5);
  }

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v13 = result;
    (*(v2 + 104))(v4, *MEMORY[0x277CE7050], v1);
    sub_23D6DF5FC(v4);

    return (*(v2 + 8))(v4, v1);
  }

  return result;
}

Swift::Void __swiftcall AXTwiceCompanionRootViewController.twiceRemoteScreenReceiveMessage(_:)(Swift::OpaquePointer a1)
{
  v2 = v1;
  v4 = sub_23D6EE670();
  v128 = *(v4 - 8);
  v129 = v4;
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v122 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v122 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v122 - v11;
  v13 = sub_23D6EE620();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v122 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = sub_23D6EE420();
  v131 = v17;
  sub_23D6EE8E0();
  if (*(a1._rawValue + 2) && (v18 = sub_23D6EC554(v132), (v19 & 1) != 0))
  {
    sub_23D6D42F0(*(a1._rawValue + 7) + 32 * v18, v133);
    sub_23D6ED0B8(v132);
    if ((swift_dynamicCast() & 1) != 0 && v130 == 1)
    {
      (*(v14 + 104))(v16, *MEMORY[0x277CE7038], v13);
      sub_23D6DF5FC(v16);
      (*(v14 + 8))(v16, v13);
    }
  }

  else
  {
    sub_23D6ED0B8(v132);
  }

  v130 = sub_23D6EE3A0();
  v131 = v20;
  sub_23D6EE8E0();
  if (*(a1._rawValue + 2) && (v21 = sub_23D6EC554(v132), (v22 & 1) != 0))
  {
    sub_23D6D42F0(*(a1._rawValue + 7) + 32 * v21, v133);
    sub_23D6ED0B8(v132);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2E2B50, "J(");
    if (swift_dynamicCast())
    {
      v122 = v1;
      v123 = v7;
      v126 = v12;
      v127 = v14;
      v23 = v130;
      v24 = *(v130 + 16);
      v125 = v10;
      if (!v24)
      {
        goto LABEL_91;
      }

      v25 = sub_23D6EC598(21570, 0xE200000000000000);
      if (v26)
      {
        v27 = *(*(v23 + 56) + 8 * v25) == 1;
        if (!*(v23 + 16))
        {
          goto LABEL_82;
        }
      }

      else
      {
        v27 = 0;
        if (!*(v23 + 16))
        {
          goto LABEL_82;
        }
      }

      v91 = sub_23D6EC598(18007, 0xE200000000000000);
      if (v92)
      {
        v93 = *(*(v23 + 56) + 8 * v91);
        if (v27)
        {
          if (v93 == 1)
          {
            v94 = MEMORY[0x277CE7040];
            goto LABEL_93;
          }

          goto LABEL_83;
        }

        if (v93 == 1)
        {
          v95 = MEMORY[0x277CE70D0];
          goto LABEL_92;
        }

LABEL_91:
        v95 = MEMORY[0x277CE70D8];
        goto LABEL_92;
      }

LABEL_82:
      if (v27)
      {
LABEL_83:
        v95 = MEMORY[0x277CE70C8];
LABEL_92:
        v104 = *v95;
        v105 = sub_23D6EE650();
        (*(*(v105 - 8) + 104))(v16, v104, v105);
        v106 = *MEMORY[0x277CE6FB8];
        v107 = sub_23D6EE5F0();
        (*(*(v107 - 8) + 104))(v16, v106, v107);
        v94 = MEMORY[0x277CE7020];
LABEL_93:
        v108 = v127;
        v109 = *(v127 + 104);
        v109(v16, *v94, v13);
        sub_23D6DF5FC(v16);
        v110 = *(v108 + 8);
        v124 = v13;
        v110(v16);
        v111 = sub_23D6EE360();
        if (*(v23 + 16))
        {
          v113 = sub_23D6EC598(v111, v112);
          v115 = v114;

          if (v115)
          {
            v116 = *(*(v23 + 56) + 8 * v113);

            v117 = v116 == 1;
LABEL_98:
            *v16 = v117;
            v118 = v124;
            v109(v16, *MEMORY[0x277CE7000], v124);
            v2 = v122;
            sub_23D6DF5FC(v16);
            (v110)(v16, v118);
            v13 = v118;
            v12 = v126;
            v14 = v127;
            v7 = v123;
            v10 = v125;
            goto LABEL_15;
          }
        }

        else
        {
        }

        v117 = 0;
        goto LABEL_98;
      }

      goto LABEL_91;
    }
  }

  else
  {
    sub_23D6ED0B8(v132);
  }

LABEL_15:
  v130 = sub_23D6EE3D0();
  v131 = v28;
  sub_23D6EE8E0();
  if (*(a1._rawValue + 2) && (v29 = sub_23D6EC554(v132), (v30 & 1) != 0))
  {
    sub_23D6D42F0(*(a1._rawValue + 7) + 32 * v29, v133);
    sub_23D6ED0B8(v132);
    if (swift_dynamicCast())
    {
      v125 = v10;
      v126 = v12;
      v32 = v130;
      v31 = v131;
      if (v32 == sub_23D6EE3C0() && v31 == v33)
      {
      }

      else
      {
        v79 = sub_23D6EEA00();

        if ((v79 & 1) == 0)
        {
          v102 = *MEMORY[0x277CE6FC8];
          v103 = sub_23D6EE5F0();
          (*(*(v103 - 8) + 104))(v16, v102, v103);
          v80 = MEMORY[0x277CE7020];
          goto LABEL_88;
        }
      }

      v80 = MEMORY[0x277CE7048];
LABEL_88:
      (*(v14 + 104))(v16, *v80, v13);
      sub_23D6DF5FC(v16);
      (*(v14 + 8))(v16, v13);
      v10 = v125;
      v12 = v126;
    }
  }

  else
  {
    sub_23D6ED0B8(v132);
  }

  v130 = sub_23D6EE390();
  v131 = v34;
  sub_23D6EE8E0();
  if (*(a1._rawValue + 2) && (v35 = sub_23D6EC554(v132), (v36 & 1) != 0))
  {
    sub_23D6D42F0(*(a1._rawValue + 7) + 32 * v35, v133);
    sub_23D6ED0B8(v132);
    if (swift_dynamicCast())
    {
      v37 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionRootViewController_gizmoErrorRetryLimit;
      if (*&v2[OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionRootViewController_gizmoErrorRetryLimit] < 1)
      {
        sub_23D6EE330();
        v85 = v10;
        v86 = sub_23D6EE660();
        v87 = sub_23D6EE800();
        if (os_log_type_enabled(v86, v87))
        {
          v88 = swift_slowAlloc();
          *v88 = 0;
          _os_log_impl(&dword_23D6CB000, v86, v87, "[TWICE] Gizmo retry limit. Disconnect!", v88, 2u);
          MEMORY[0x23EEE9940](v88, -1, -1);
        }

        (*(v128 + 8))(v85, v129);
        v89 = *MEMORY[0x277CE6FE8];
        v90 = sub_23D6EE5F0();
        (*(*(v90 - 8) + 104))(v16, v89, v90);
        (*(v14 + 104))(v16, *MEMORY[0x277CE7020], v13);
        sub_23D6DF5FC(v16);
        (*(v14 + 8))(v16, v13);
      }

      else
      {
        v123 = v7;
        v124 = v13;
        v127 = v14;
        v38 = v130;
        sub_23D6EE330();
        v39 = v2;
        v40 = sub_23D6EE660();
        v41 = sub_23D6EE810();
        if (os_log_type_enabled(v40, v41))
        {
          v42 = v12;
          v43 = swift_slowAlloc();
          *v43 = 134217984;
          *(v43 + 4) = *&v2[v37];

          _os_log_impl(&dword_23D6CB000, v40, v41, "[TWICE] Gizmo retry limit. Retry#%ld", v43, 0xCu);
          v44 = v43;
          v12 = v42;
          MEMORY[0x23EEE9940](v44, -1, -1);
        }

        else
        {

          v40 = v39;
        }

        (*(v128 + 8))(v12, v129);
        *v16 = v38;
        v96 = *MEMORY[0x277CE6FF0];
        v97 = sub_23D6EE5F0();
        (*(*(v97 - 8) + 104))(v16, v96, v97);
        v14 = v127;
        v98 = v124;
        (*(v127 + 104))(v16, *MEMORY[0x277CE7020], v124);
        v13 = v98;
        sub_23D6DF5FC(v16);
        (*(v14 + 8))(v16, v98);
        v99 = *&v2[v37];
        v100 = __OFSUB__(v99, 1);
        v101 = v99 - 1;
        if (v100)
        {
          __break(1u);
          return;
        }

        *&v2[v37] = v101;
        v7 = v123;
      }
    }
  }

  else
  {
    sub_23D6ED0B8(v132);
  }

  if (_AXSApplicationAccessibilityEnabled())
  {
    v130 = sub_23D6EE3B0();
    v131 = v45;
    sub_23D6EE8E0();
    if (*(a1._rawValue + 2) && (v46 = sub_23D6EC554(v132), (v47 & 1) != 0))
    {
      sub_23D6D42F0(*(a1._rawValue + 7) + 32 * v46, v133);
      sub_23D6ED0B8(v132);
      if (swift_dynamicCast())
      {
        v48 = v130;
        v49 = v131;
        *v16 = v130;
        *(v16 + 1) = v49;
        (*(v14 + 104))(v16, *MEMORY[0x277CE7028], v13);
        sub_23D6ED10C(v48, v49);
        sub_23D6DF5FC(v16);
        sub_23D6ED160(v48, v49);
        (*(v14 + 8))(v16, v13);
      }
    }

    else
    {
      sub_23D6ED0B8(v132);
    }
  }

  v130 = sub_23D6EE3E0();
  v131 = v50;
  sub_23D6EE8E0();
  if (*(a1._rawValue + 2) && (v51 = sub_23D6EC554(v132), (v52 & 1) != 0))
  {
    sub_23D6D42F0(*(a1._rawValue + 7) + 32 * v51, v133);
    sub_23D6ED0B8(v132);
    if (swift_dynamicCast())
    {
      v54 = v130;
      v53 = v131;
      if (v54 == sub_23D6EE400() && v53 == v55)
      {

LABEL_71:
        (*(v14 + 104))(v16, *MEMORY[0x277CE7060], v13);
        sub_23D6DF5FC(v16);
        (*(v14 + 8))(v16, v13);
        goto LABEL_42;
      }

      v81 = sub_23D6EEA00();

      if (v81)
      {
        goto LABEL_71;
      }
    }
  }

  else
  {
    sub_23D6ED0B8(v132);
  }

LABEL_42:
  v130 = sub_23D6EE380();
  v131 = v56;
  sub_23D6EE8E0();
  if (!*(a1._rawValue + 2) || (v57 = sub_23D6EC554(v132), (v58 & 1) == 0))
  {
    sub_23D6ED0B8(v132);
    goto LABEL_49;
  }

  sub_23D6D42F0(*(a1._rawValue + 7) + 32 * v57, v133);
  sub_23D6ED0B8(v132);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_49;
  }

  v60 = v130;
  v59 = v131;
  if (v60 == sub_23D6EE3F0() && v59 == v61)
  {
  }

  else
  {
    v82 = sub_23D6EEA00();

    if ((v82 & 1) == 0)
    {
      goto LABEL_49;
    }
  }

  v83 = *MEMORY[0x277CE6FE8];
  v84 = sub_23D6EE5F0();
  (*(*(v84 - 8) + 104))(v16, v83, v84);
  (*(v14 + 104))(v16, *MEMORY[0x277CE7020], v13);
  sub_23D6DF5FC(v16);
  (*(v14 + 8))(v16, v13);
LABEL_49:
  v130 = sub_23D6EE360();
  v131 = v62;
  sub_23D6EE8E0();
  if (*(a1._rawValue + 2) && (v63 = sub_23D6EC554(v132), (v64 & 1) != 0))
  {
    sub_23D6D42F0(*(a1._rawValue + 7) + 32 * v63, v133);
    sub_23D6ED0B8(v132);
    if (swift_dynamicCast())
    {
      *v16 = v130 == 1;
      (*(v14 + 104))(v16, *MEMORY[0x277CE7000], v13);
      sub_23D6DF5FC(v16);
      (*(v14 + 8))(v16, v13);
    }
  }

  else
  {
    sub_23D6ED0B8(v132);
  }

  v130 = sub_23D6EE350();
  v131 = v65;
  sub_23D6EE8E0();
  if (!*(a1._rawValue + 2))
  {
    goto LABEL_66;
  }

  v66 = sub_23D6EC554(v132);
  if ((v67 & 1) == 0)
  {
    goto LABEL_66;
  }

  sub_23D6D42F0(*(a1._rawValue + 7) + 32 * v66, v133);
  sub_23D6ED0B8(v132);
  if (!swift_dynamicCast())
  {
    return;
  }

  v130 = sub_23D6EE340();
  v131 = v68;
  sub_23D6EE8E0();
  if (*(a1._rawValue + 2) && (v69 = sub_23D6EC554(v132), (v70 & 1) != 0))
  {
    sub_23D6D42F0(*(a1._rawValue + 7) + 32 * v69, v133);
    sub_23D6ED0B8(v132);
    if (swift_dynamicCast())
    {
      v71 = v131;
      v72 = *&v2[OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionRootViewController_initialPingMessageIdentifier + 8];
      if (v72 && ((v73 = v130, v130 == *&v2[OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionRootViewController_initialPingMessageIdentifier]) && v72 == v131 || (sub_23D6EEA00() & 1) != 0))
      {
        v124 = v13;
        sub_23D6EE330();

        v74 = sub_23D6EE660();
        v75 = sub_23D6EE7F0();

        if (os_log_type_enabled(v74, v75))
        {
          v76 = swift_slowAlloc();
          v77 = swift_slowAlloc();
          v132[0] = v77;
          *v76 = 136315138;
          v78 = sub_23D6D3C38(v73, v71, v132);

          *(v76 + 4) = v78;
          _os_log_impl(&dword_23D6CB000, v74, v75, "[TWICE] Got timeout for message identifier matching initial ping (%s). Showing first unlock error.", v76, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v77);
          MEMORY[0x23EEE9940](v77, -1, -1);
          MEMORY[0x23EEE9940](v76, -1, -1);
        }

        else
        {
        }

        (*(v128 + 8))(v7, v129);
        v119 = *MEMORY[0x277CE6FD8];
        v120 = sub_23D6EE5F0();
        (*(*(v120 - 8) + 104))(v16, v119, v120);
        v121 = v124;
        (*(v14 + 104))(v16, *MEMORY[0x277CE7020], v124);
        sub_23D6DF5FC(v16);
        (*(v14 + 8))(v16, v121);
      }

      else
      {
      }
    }
  }

  else
  {
LABEL_66:
    sub_23D6ED0B8(v132);
  }
}

Swift::Void __swiftcall AXTwiceCompanionRootViewController.airplayDidStartStreaming(withMirroringLayer:)(CALayer withMirroringLayer)
{
  v2 = v1;
  v4 = sub_23D6EE620();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_23D6EE670();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23D6EE330();
  v12 = withMirroringLayer.super.isa;
  v13 = sub_23D6EE660();
  v14 = sub_23D6EE810();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v28 = v4;
    v16 = v15;
    v17 = swift_slowAlloc();
    v26 = v8;
    v18 = v17;
    v19 = swift_slowAlloc();
    v27 = v2;
    v20 = v19;
    v29 = v19;
    *v16 = 136315394;
    *(v16 + 4) = sub_23D6D3C38(0xD00000000000002DLL, 0x800000023D6F1490, &v29);
    *(v16 + 12) = 2112;
    *(v16 + 14) = v12;
    *v18 = v12;
    v21 = v12;
    _os_log_impl(&dword_23D6CB000, v13, v14, "[TWICE] %s %@", v16, 0x16u);
    sub_23D6EDEA0(v18, &qword_27E2E2A48, &unk_23D6EFEE0);
    MEMORY[0x23EEE9940](v18, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v20);
    v22 = v20;
    v2 = v27;
    MEMORY[0x23EEE9940](v22, -1, -1);
    v23 = v16;
    v4 = v28;
    MEMORY[0x23EEE9940](v23, -1, -1);

    (*(v9 + 8))(v11, v26);
  }

  else
  {

    (*(v9 + 8))(v11, v8);
  }

  v24 = *(v2 + OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionRootViewController_mainVC);
  v25 = sub_23D6CEB04();

  swift_getObjectType();
  AXTwiceCompanionDeviceView.addScreenSubLayer(layer:)(v12);

  (*(v5 + 104))(v7, *MEMORY[0x277CE7068], v4);
  sub_23D6DF5FC(v7);
  (*(v5 + 8))(v7, v4);
}

Swift::Void __swiftcall AXTwiceCompanionRootViewController.airplayDidStopStreaming()()
{
  v1 = v0;
  v2 = sub_23D6EE620();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_23D6EE670();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23D6EE330();
  v10 = sub_23D6EE660();
  v11 = sub_23D6EE810();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v17 = v1;
    v13 = v12;
    v14 = swift_slowAlloc();
    v18 = v14;
    *v13 = 136315138;
    *(v13 + 4) = sub_23D6D3C38(0xD000000000000019, 0x800000023D6F14C0, &v18);
    _os_log_impl(&dword_23D6CB000, v10, v11, "[TWICE] %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x23EEE9940](v14, -1, -1);
    MEMORY[0x23EEE9940](v13, -1, -1);
  }

  (*(v7 + 8))(v9, v6);
  v15 = *MEMORY[0x277CE6FE0];
  v16 = sub_23D6EE5F0();
  (*(*(v16 - 8) + 104))(v5, v15, v16);
  (*(v3 + 104))(v5, *MEMORY[0x277CE7020], v2);
  sub_23D6DF5FC(v5);
  (*(v3 + 8))(v5, v2);
}

Swift::Void __swiftcall AXTwiceCompanionRootViewController.connectionWithClientServiceWasInterrupted()()
{
  v1 = v0;
  v2 = sub_23D6EE620();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_23D6EE670();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23D6EE330();
  v10 = sub_23D6EE660();
  v11 = sub_23D6EE810();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v17 = v1;
    v13 = v12;
    v14 = swift_slowAlloc();
    v18 = v14;
    *v13 = 136315138;
    *(v13 + 4) = sub_23D6D3C38(0xD00000000000002BLL, 0x800000023D6F14E0, &v18);
    _os_log_impl(&dword_23D6CB000, v10, v11, "[TWICE] backbaordd crashed %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x23EEE9940](v14, -1, -1);
    MEMORY[0x23EEE9940](v13, -1, -1);
  }

  (*(v7 + 8))(v9, v6);
  v15 = *MEMORY[0x277CE6FF8];
  v16 = sub_23D6EE5F0();
  (*(*(v16 - 8) + 104))(v5, v15, v16);
  (*(v3 + 104))(v5, *MEMORY[0x277CE7020], v2);
  sub_23D6DF5FC(v5);
  (*(v3 + 8))(v5, v2);
}

Swift::Void __swiftcall AXTwiceCompanionRootViewController.axuiserverWasRestarted()()
{
  v1 = v0;
  v2 = sub_23D6EE620();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_23D6EE670();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23D6EE330();
  v10 = sub_23D6EE660();
  v11 = sub_23D6EE810();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v17 = v1;
    v13 = v12;
    v14 = swift_slowAlloc();
    v18 = v14;
    *v13 = 136315138;
    *(v13 + 4) = sub_23D6D3C38(0xD000000000000018, 0x800000023D6F1510, &v18);
    _os_log_impl(&dword_23D6CB000, v10, v11, "[TWICE] axuiserver crashed %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x23EEE9940](v14, -1, -1);
    MEMORY[0x23EEE9940](v13, -1, -1);
  }

  (*(v7 + 8))(v9, v6);
  v15 = *MEMORY[0x277CE6FB0];
  v16 = sub_23D6EE5F0();
  (*(*(v16 - 8) + 104))(v5, v15, v16);
  (*(v3 + 104))(v5, *MEMORY[0x277CE7020], v2);
  sub_23D6DF5FC(v5);
  (*(v3 + 8))(v5, v2);
}

void AXTwiceCompanionRootViewController.prepareToDisappear(completion:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v28 = a1;
  v5 = sub_23D6EE640();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_23D6EE670();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23D6EE330();
  v13 = sub_23D6EE660();
  v14 = sub_23D6EE810();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v27 = a2;
    v16 = v15;
    v17 = swift_slowAlloc();
    v26 = v9;
    v18 = v17;
    aBlock[0] = v17;
    *v16 = 136315138;
    *(v16 + 4) = sub_23D6D3C38(0xD00000000000001FLL, 0x800000023D6F1530, aBlock);
    _os_log_impl(&dword_23D6CB000, v13, v14, "[TWICE] %s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v18);
    MEMORY[0x23EEE9940](v18, -1, -1);
    v19 = v16;
    a2 = v27;
    MEMORY[0x23EEE9940](v19, -1, -1);

    (*(v10 + 8))(v12, v26);
  }

  else
  {

    (*(v10 + 8))(v12, v9);
  }

  (*(v6 + 104))(v8, *MEMORY[0x277CE7088], v5);
  v20 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionRootViewController_currentState;
  swift_beginAccess();
  (*(v6 + 24))(&v3[v20], v8, v5);
  swift_endAccess();
  sub_23D6DED94();
  (*(v6 + 8))(v8, v5);
  sub_23D6E69E0();
  v21 = [v3 view];
  if (v21)
  {
    v22 = v21;
    v23 = [objc_opt_self() clearColor];
    [v22 setBackgroundColor_];

    if (v28)
    {
      aBlock[4] = v28;
      aBlock[5] = a2;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_23D6D09E8;
      aBlock[3] = &block_descriptor_9;
      v24 = _Block_copy(aBlock);
    }

    else
    {
      v24 = 0;
    }

    [v3 dismissViewControllerAnimated:1 completion:v24];
    _Block_release(v24);
  }

  else
  {
    __break(1u);
  }
}

Swift::Void __swiftcall AXTwiceCompanionRootViewController.axElementActivate(_:)(CGPoint a1)
{
  v2 = v1;
  y = a1.y;
  x = a1.x;
  v5 = sub_23D6EE620();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = (&v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_23D6EE670();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23D6EE330();
  v13 = sub_23D6EE660();
  v14 = sub_23D6EE810();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v20 = v2;
    v16 = v15;
    v17 = swift_slowAlloc();
    v21 = v17;
    *v16 = 136315138;
    *(v16 + 4) = sub_23D6D3C38(0xD000000000000015, 0x800000023D6F1550, &v21);
    _os_log_impl(&dword_23D6CB000, v13, v14, "[TWICE] %s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v17);
    MEMORY[0x23EEE9940](v17, -1, -1);
    MEMORY[0x23EEE9940](v16, -1, -1);
  }

  (*(v10 + 8))(v12, v9);
  v18 = [objc_opt_self() tapGestureForInterfaceOrientedPoint_];
  *v8 = v18;
  (*(v6 + 104))(v8, *MEMORY[0x277CE7010], v5);
  v19 = v18;
  sub_23D6DF5FC(v8);

  (*(v6 + 8))(v8, v5);
}

Swift::Void __swiftcall AXTwiceCompanionRootViewController.crownButtonPressed()()
{
  v1 = v0;
  v2 = sub_23D6EE620();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_23D6EE670();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23D6EE330();
  v10 = sub_23D6EE660();
  v11 = sub_23D6EE810();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v18 = v1;
    v13 = v12;
    v14 = swift_slowAlloc();
    v19 = v14;
    *v13 = 136315138;
    *(v13 + 4) = sub_23D6D3C38(0xD000000000000014, 0x800000023D6F1570, &v19);
    _os_log_impl(&dword_23D6CB000, v10, v11, "[TWICE] %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x23EEE9940](v14, -1, -1);
    MEMORY[0x23EEE9940](v13, -1, -1);
  }

  (*(v7 + 8))(v9, v6);
  v15 = [objc_opt_self() buttonRepresentationWithType_];
  if (v15)
  {
    *v5 = v15;
    v16 = v15;
    (*(v3 + 104))(v5, *MEMORY[0x277CE7008], v2);
    v17 = v16;
    sub_23D6DF5FC(v5);

    (*(v3 + 8))(v5, v2);
  }
}

Swift::Void __swiftcall AXTwiceCompanionRootViewController.doubleCrownButtonPressed()()
{
  v1 = v0;
  v2 = sub_23D6EE620();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_23D6EE670();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23D6EE330();
  v10 = sub_23D6EE660();
  v11 = sub_23D6EE810();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v18 = v1;
    v13 = v12;
    v14 = swift_slowAlloc();
    v19 = v14;
    *v13 = 136315138;
    *(v13 + 4) = sub_23D6D3C38(0xD00000000000001ALL, 0x800000023D6F1590, &v19);
    _os_log_impl(&dword_23D6CB000, v10, v11, "[TWICE] %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x23EEE9940](v14, -1, -1);
    MEMORY[0x23EEE9940](v13, -1, -1);
  }

  (*(v7 + 8))(v9, v6);
  v15 = [objc_opt_self() buttonRepresentationWithType_];
  if (v15)
  {
    *v5 = v15;
    v16 = v15;
    (*(v3 + 104))(v5, *MEMORY[0x277CE7008], v2);
    v17 = v16;
    sub_23D6DF5FC(v5);

    (*(v3 + 8))(v5, v2);
  }
}

Swift::Void __swiftcall AXTwiceCompanionRootViewController.tripleCrownButtonPressed()()
{
  v1 = v0;
  v2 = sub_23D6EE620();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_23D6EE670();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23D6EE330();
  v10 = sub_23D6EE660();
  v11 = sub_23D6EE810();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v18 = v1;
    v13 = v12;
    v14 = swift_slowAlloc();
    v19 = v14;
    *v13 = 136315138;
    *(v13 + 4) = sub_23D6D3C38(0xD00000000000001ALL, 0x800000023D6F15B0, &v19);
    _os_log_impl(&dword_23D6CB000, v10, v11, "[TWICE] %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x23EEE9940](v14, -1, -1);
    MEMORY[0x23EEE9940](v13, -1, -1);
  }

  (*(v7 + 8))(v9, v6);
  v15 = [objc_opt_self() buttonRepresentationWithType_];
  if (v15)
  {
    *v5 = v15;
    v16 = v15;
    (*(v3 + 104))(v5, *MEMORY[0x277CE7008], v2);
    v17 = v16;
    sub_23D6DF5FC(v5);

    (*(v3 + 8))(v5, v2);
  }
}

Swift::Void __swiftcall AXTwiceCompanionRootViewController.crownButtonScrollUp()()
{
  v1 = v0;
  v2 = sub_23D6EE620();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v25[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_23D6EE670();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v25[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23D6EE330();
  v10 = sub_23D6EE660();
  v11 = sub_23D6EE810();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v24 = v2;
    v13 = v1;
    v14 = v12;
    v15 = swift_slowAlloc();
    v25[0] = v15;
    *v14 = 136315138;
    *(v14 + 4) = sub_23D6D3C38(0xD000000000000015, 0x800000023D6F15D0, v25);
    _os_log_impl(&dword_23D6CB000, v10, v11, "[TWICE] %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x23EEE9940](v15, -1, -1);
    v16 = v14;
    v1 = v13;
    v2 = v24;
    MEMORY[0x23EEE9940](v16, -1, -1);
  }

  (*(v7 + 8))(v9, v6);
  v17 = [objc_opt_self() buttonRepresentationWithType_];
  if (v17)
  {
    v18 = v17;
    v19 = *(v1 + OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionRootViewController_mainVC);
    v20 = sub_23D6CE998();

    v21 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_isCrownOrientationOnRightSide;
    swift_beginAccess();
    LODWORD(v21) = v20[v21];

    if (v21)
    {
      v22 = 100;
    }

    else
    {
      v22 = -100;
    }

    [v18 setScrollAmount_];
    *v5 = v18;
    (*(v3 + 104))(v5, *MEMORY[0x277CE7008], v2);
    v23 = v18;
    sub_23D6DF5FC(v5);

    (*(v3 + 8))(v5, v2);
  }
}

Swift::Void __swiftcall AXTwiceCompanionRootViewController.crownButtonScrollDown()()
{
  v1 = v0;
  v2 = sub_23D6EE620();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v25[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_23D6EE670();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v25[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23D6EE330();
  v10 = sub_23D6EE660();
  v11 = sub_23D6EE810();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v24 = v2;
    v13 = v1;
    v14 = v12;
    v15 = swift_slowAlloc();
    v25[0] = v15;
    *v14 = 136315138;
    *(v14 + 4) = sub_23D6D3C38(0xD000000000000017, 0x800000023D6F15F0, v25);
    _os_log_impl(&dword_23D6CB000, v10, v11, "[TWICE] %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x23EEE9940](v15, -1, -1);
    v16 = v14;
    v1 = v13;
    v2 = v24;
    MEMORY[0x23EEE9940](v16, -1, -1);
  }

  (*(v7 + 8))(v9, v6);
  v17 = [objc_opt_self() buttonRepresentationWithType_];
  if (v17)
  {
    v18 = v17;
    v19 = *(v1 + OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionRootViewController_mainVC);
    v20 = sub_23D6CE998();

    v21 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_isCrownOrientationOnRightSide;
    swift_beginAccess();
    LODWORD(v21) = v20[v21];

    if (v21)
    {
      v22 = -100;
    }

    else
    {
      v22 = 100;
    }

    [v18 setScrollAmount_];
    *v5 = v18;
    (*(v3 + 104))(v5, *MEMORY[0x277CE7008], v2);
    v23 = v18;
    sub_23D6DF5FC(v5);

    (*(v3 + 8))(v5, v2);
  }
}