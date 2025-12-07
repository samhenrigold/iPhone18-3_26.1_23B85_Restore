uint64_t DocumentViewController.isInTabBarMode.getter(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC8VideosUI22DocumentViewController_isInTabBarMode;
  OUTLINED_FUNCTION_0_12(a1);
  return *(v1 + v2);
}

void DocumentViewController.isInTabBarMode.setter(uint64_t a1)
{
  v2 = a1;
  v3 = OBJC_IVAR____TtC8VideosUI22DocumentViewController_isInTabBarMode;
  OUTLINED_FUNCTION_37(a1);
  *(v1 + v3) = v2;
  sub_1E40088D4();
}

uint64_t DocumentViewController.isInTabBarMode.modify(uint64_t a1)
{
  *(a1 + 24) = v1;
  OUTLINED_FUNCTION_4();
  return OUTLINED_FUNCTION_15_7();
}

void sub_1E40092A0()
{
  v1 = v0;
  v2 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_21();
  v4 = (*(v3 + 432))();
  if (!v4)
  {
    return;
  }

  v19 = v4;
  type metadata accessor for StackTemplateController(0);
  v5 = swift_dynamicCastClass();
  if (!v5 || (v6 = v5, OUTLINED_FUNCTION_8_9(), v8 = (*(v7 + 680))(), v8 == 2))
  {

    return;
  }

  v9 = v8;
  OUTLINED_FUNCTION_8_9();
  v11 = *(v10 + 560);
  v12 = v19;
  v13 = v11();

  if (!v13)
  {
    v21 = 0u;
    v22 = 0u;
    goto LABEL_13;
  }

  v20 = 24;
  OUTLINED_FUNCTION_8();
  (*(v14 + 776))(&v21, &v20, &unk_1F5D5DAC8, &off_1F5D5C998);

  if (!*(&v22 + 1))
  {
LABEL_13:
    sub_1E325F748(&v21, &unk_1ECF296E0, &unk_1E4298030);
    goto LABEL_14;
  }

  if (OUTLINED_FUNCTION_21_4() && (v20 & 1) != 0)
  {
    v15 = v9;
    goto LABEL_15;
  }

LABEL_14:
  v15 = 0;
LABEL_15:
  (*((*v2 & *v6) + 0x5E0))(v15 & 1);
  if ((sub_1E39DFFC8() & 1) == 0)
  {
    v16 = [v1 vuiNavigationItem];
    v17 = [v16 titleView];

    if (v17)
    {
      type metadata accessor for UberNavigationBarTitleView();
      OUTLINED_FUNCTION_22_53();
      if (!swift_dynamicCastClass())
      {

        return;
      }

      OUTLINED_FUNCTION_71();
      OUTLINED_FUNCTION_8_9();
      (*(v18 + 352))(v9 & 1);
    }
  }
}

uint64_t DocumentViewController.isTabBarChild.getter(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC8VideosUI22DocumentViewController_isTabBarChild;
  OUTLINED_FUNCTION_0_12(a1);
  return *(v1 + v2);
}

void DocumentViewController.isTabBarChild.setter(uint64_t a1)
{
  v2 = a1;
  v3 = OBJC_IVAR____TtC8VideosUI22DocumentViewController_isTabBarChild;
  OUTLINED_FUNCTION_37(a1);
  *(v1 + v3) = v2;
  sub_1E40092A0();
}

uint64_t DocumentViewController.isTabBarChild.modify(uint64_t a1)
{
  *(a1 + 24) = v1;
  OUTLINED_FUNCTION_4();
  return OUTLINED_FUNCTION_15_7();
}

uint64_t sub_1E4009664(uint64_t a1, char a2, uint64_t (*a3)(uint64_t))
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return a3(result);
  }

  return result;
}

id DocumentViewController.loadingViewBackgroundColor.getter()
{
  if (!*(v0 + OBJC_IVAR____TtC8VideosUI22DocumentViewController_loadingViewManager))
  {
    return 0;
  }

  OUTLINED_FUNCTION_8();
  v2 = (*(v1 + 224))();
  v3 = [v2 vuiBackgroundColor];

  return v3;
}

void DocumentViewController.loadingViewBackgroundColor.setter(void *a1)
{
  if (*(v1 + OBJC_IVAR____TtC8VideosUI22DocumentViewController_loadingViewManager))
  {
    OUTLINED_FUNCTION_8();
    v5 = v3;
    v4 = (*(v2 + 224))();
    [v4 setVuiBackgroundColor_];

    a1 = v5;
  }
}

void (*DocumentViewController.loadingViewBackgroundColor.modify(id *a1))(void **a1, char a2)
{
  a1[1] = v1;
  *a1 = DocumentViewController.loadingViewBackgroundColor.getter();
  return sub_1E40097EC;
}

void sub_1E40097EC(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = v2;
    DocumentViewController.loadingViewBackgroundColor.setter(v2);
  }

  else
  {
    DocumentViewController.loadingViewBackgroundColor.setter(*a1);
  }
}

uint64_t DocumentViewController.documentDidSetHandler.getter()
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v0 = OUTLINED_FUNCTION_16_0();
  sub_1E37FAED4(v0, v1);
  return OUTLINED_FUNCTION_16_0();
}

uint64_t DocumentViewController.documentDidSetHandler.setter()
{
  OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_9_1(v3);
  v4 = *v1;
  v5 = v1[1];
  *v1 = v2;
  v1[1] = v0;
  return sub_1E37FAED8(v4, v5);
}

uint64_t sub_1E4009940@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x2F0))();
  *a2 = result;
  return result;
}

double DocumentViewController.document.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI22DocumentViewController_document;
  OUTLINED_FUNCTION_3_0(v1 + OBJC_IVAR____TtC8VideosUI22DocumentViewController_document, v17);
  *(v1 + v3) = a1;

  v4 = OBJC_IVAR____TtC8VideosUI22DocumentViewController_document;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v5 = *(v1 + v4);
  if (v5)
  {
    OUTLINED_FUNCTION_101_14();
    OUTLINED_FUNCTION_21();
    v7 = *(v6 + 584);

    v7(v8);
    v10 = v9;
    OUTLINED_FUNCTION_3_0(v5 + 32, v18);
    *(v5 + 40) = v10;
    swift_unknownObjectWeakAssign();
    swift_unknownObjectRelease();
  }

  OUTLINED_FUNCTION_8_9();
  v12 = (*(v11 + 728))();
  if (v12)
  {
    v14 = v12;
    v15 = v13;
    v12();
    sub_1E37FAED8(v14, v15);
  }

  return result;
}

void DocumentViewController.activityItemsConfiguration.getter()
{
  OUTLINED_FUNCTION_31_1();
  v3 = v0;
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v99 = v5;
  v100 = v4;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_4_6();
  v98 = v6 - v7;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v89 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF363C0, &unk_1E42A9420);
  MEMORY[0x1EEE9AC00](v11 - 8);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_68_1();
  MEMORY[0x1EEE9AC00](v12);
  v14 = (&v89 - v13);
  v15 = sub_1E41FE414();
  OUTLINED_FUNCTION_0_10();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_4_6();
  v21 = v19 - v20;
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_47_2();
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v89 - v24;
  OUTLINED_FUNCTION_26_3();
  v27 = (*((*MEMORY[0x1E69E7D40] & v26) + 0x2F0))();
  if (v27)
  {
    v96 = v21;
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    v28 = *(v27 + 56);

    if (v28)
    {
      v95 = v17;
      LOBYTE(v101) = 1;
      v29 = *v28 + 776;
      v30 = OUTLINED_FUNCTION_51_49();
      v97 = v31;
      v31(v30);
      if (v104)
      {
        OUTLINED_FUNCTION_123_10();
        if ((swift_dynamicCast() & 1) == 0)
        {
LABEL_9:
          v35 = 0;
          goto LABEL_10;
        }

        sub_1E41FE404();

        if (__swift_getEnumTagSinglePayload(v14, 1, v15) != 1)
        {
          v93 = v29;
          v44 = v95;
          (*(v95 + 32))(v25, v14, v15);
          v45 = sub_1E324FBDC();
          (*(v99 + 16))(v10, v45, v100);
          (*(v44 + 16))(v1, v25, v15);
          v46 = v3;
          v47 = sub_1E41FFC94();
          v48 = sub_1E4206814();
          v94 = v46;

          LODWORD(v92) = v48;
          if (os_log_type_enabled(v47, v48))
          {
            v49 = OUTLINED_FUNCTION_49_0();
            v91 = swift_slowAlloc();
            v103[0] = v91;
            *v49 = 136315394;
            v90 = v47;
            v50 = DocumentViewController.logPrefix.getter();
            sub_1E3270FC8(v50, v51, v103);
            OUTLINED_FUNCTION_6_19();

            v89 = v49;
            *(v49 + 4) = v48;
            *(v49 + 12) = 2080;
            sub_1E40172E0(&qword_1EE28A470, MEMORY[0x1E6968FB0]);
            v52 = sub_1E4207944();
            v54 = v53;
            v55 = OUTLINED_FUNCTION_74();
            v94 = v56;
            (v56)(v55);
            sub_1E3270FC8(v52, v54, v103);
            OUTLINED_FUNCTION_16_5();

            v57 = v89;
            *(v89 + 14) = v52;
            v58 = v90;
            _os_log_impl(&dword_1E323F000, v90, v92, "%s Adding sharing URL to activity items config %s", v57, 0x16u);
            swift_arrayDestroy();
            OUTLINED_FUNCTION_7_9();
            OUTLINED_FUNCTION_65_0();
          }

          else
          {

            v62 = OUTLINED_FUNCTION_74();
            v94 = v63;
            (v63)(v62);
          }

          (*(v99 + 8))(v10, v100);
          v64 = sub_1E41FE364();
          v35 = [objc_allocWithZone(MEMORY[0x1E696ACA0]) initWithObject_];

          v94(v25, v15);
LABEL_10:
          v36 = v97;
          LOBYTE(v101) = 0;
          v37 = OUTLINED_FUNCTION_51_49();
          v36(v37);
          if (v104)
          {
            OUTLINED_FUNCTION_123_10();
            if ((OUTLINED_FUNCTION_21_4() & 1) == 0)
            {
              goto LABEL_21;
            }

            v39 = v101;
            v38 = v102;
            LOBYTE(v101) = 1;
            v40 = OUTLINED_FUNCTION_51_49();
            v36(v40);
            if (v104)
            {
              OUTLINED_FUNCTION_123_10();
              if ((OUTLINED_FUNCTION_21_4() & 1) == 0)
              {
                goto LABEL_24;
              }

              sub_1E41FE404();

              if (__swift_getEnumTagSinglePayload(v2, 1, v15) == 1)
              {

                v41 = &unk_1ECF363C0;
                v42 = &unk_1E42A9420;
                v43 = v2;
LABEL_20:
                sub_1E325F748(v43, v41, v42);
LABEL_21:
                if (v35)
                {
LABEL_22:
                  v59 = v35;
LABEL_23:
                  v60 = v59;
                  sub_1E3280A90(0, &qword_1ECF3E3A8, 0x1E69DC640);
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750, &unk_1E429DD30);
                  OUTLINED_FUNCTION_5_10();
                  v61 = swift_allocObject();
                  *(v61 + 16) = xmmword_1E4298880;
                  *(v61 + 32) = v60;
                  sub_1E400A6A8(v61);

                  goto LABEL_26;
                }

LABEL_25:

                goto LABEL_26;
              }

              v94 = v39;
              v97 = v38;
              v65 = v36;
              v66 = v95;
              v67 = v96;
              (*(v95 + 32))(v96, v2, v15);
              LOBYTE(v101) = 2;
              v68 = OUTLINED_FUNCTION_51_49();
              v65(v68);
              if (v104)
              {
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
                OUTLINED_FUNCTION_123_10();
                v69 = OUTLINED_FUNCTION_21_4();
                v70 = v97;
                if (v69)
                {
                  v93 = v101;
                  v71 = sub_1E324FBDC();
                  v72 = v98;
                  v73 = v99;
                  (*(v99 + 16))(v98, v71, v100);
                  v74 = v3;

                  v75 = sub_1E41FFC94();
                  sub_1E4206814();

                  if (OUTLINED_FUNCTION_75_3())
                  {
                    v76 = OUTLINED_FUNCTION_49_0();
                    v92 = swift_slowAlloc();
                    v103[0] = v92;
                    *v76 = 136315394;
                    v77 = DocumentViewController.logPrefix.getter();
                    sub_1E3270FC8(v77, v78, v103);
                    OUTLINED_FUNCTION_112();

                    *(v76 + 4) = v74;
                    *(v76 + 12) = 2080;
                    *(v76 + 14) = sub_1E3270FC8(v94, v70, v103);
                    OUTLINED_FUNCTION_50_52();
                    _os_log_impl(v79, v80, v81, v82, v83, 0x16u);
                    swift_arrayDestroy();
                    OUTLINED_FUNCTION_7_9();
                    OUTLINED_FUNCTION_7_7();

                    (*(v99 + 8))(v72, v100);
                  }

                  else
                  {

                    (*(v73 + 8))(v72, v100);
                  }

                  sub_1E3280A90(0, &unk_1ECF3E3B0, off_1E8728378);
                  v84 = sub_1E3744600(v93);

                  v85 = sub_1E400A620(v84);
                  v86 = *sub_1E32A9398();
                  v87 = v96;
                  sub_1E3C174E4();
                  v59 = v88;

                  (*(v95 + 8))(v87, v15);
                  goto LABEL_23;
                }

                (*(v95 + 8))(v96, v15);
LABEL_24:

                if (v35)
                {
                  goto LABEL_22;
                }

                goto LABEL_25;
              }

              (*(v66 + 8))(v67, v15);
            }
          }

          v41 = &unk_1ECF296E0;
          v42 = &unk_1E4298030;
          v43 = v103;
          goto LABEL_20;
        }

        v32 = &unk_1ECF363C0;
        v33 = &unk_1E42A9420;
        v34 = v14;
      }

      else
      {
        v32 = &unk_1ECF296E0;
        v33 = &unk_1E4298030;
        v34 = v103;
      }

      sub_1E325F748(v34, v32, v33);
      goto LABEL_9;
    }
  }

LABEL_26:
  OUTLINED_FUNCTION_25_2();
}

uint64_t DocumentViewController.activityItemsConfiguration.setter(uint64_t a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for DocumentViewController(0);
  objc_msgSendSuper2(&v4, sel_setActivityItemsConfiguration_, a1);
  return swift_unknownObjectRelease();
}

id sub_1E400A620(uint64_t a1)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v2 = sub_1E4205C44();

  v3 = [v1 initWithContextData_];

  return v3;
}

id sub_1E400A6A8(uint64_t a1)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_1E3280A90(0, &qword_1ECF3E548, 0x1E696ACA0);
  v2 = sub_1E42062A4();

  v3 = [v1 initWithItemProviders_];

  return v3;
}

unint64_t DocumentViewController.logPrefix.getter()
{
  v1 = v0;
  v2 = 0x6E776F6E6B6E55;
  OUTLINED_FUNCTION_21();
  v4 = (*(v3 + 752))();
  if (v4 && (v5 = v4, OUTLINED_FUNCTION_25(), swift_beginAccess(), v6 = *(v5 + 56), , , v6))
  {
    OUTLINED_FUNCTION_8();
    v2 = (*(v7 + 368))();
    v9 = v8;
  }

  else
  {
    v9 = 0xE700000000000000;
  }

  sub_1E42074B4();

  v10 = sub_1E41E1364(v1);
  MEMORY[0x1E69109E0](v10);

  MEMORY[0x1E69109E0](0x616C706D6554205DLL, 0xEC0000005B3A6574);
  MEMORY[0x1E69109E0](v2, v9);

  MEMORY[0x1E69109E0](93, 0xE100000000000000);
  return 0xD000000000000019;
}

id DocumentViewController.__allocating_init(coder:)()
{
  v1 = [objc_allocWithZone(OUTLINED_FUNCTION_12_1()) initWithCoder_];

  return v1;
}

void DocumentViewController.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC8VideosUI22DocumentViewController_viewWillAppearAfterTabSwitch) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI22DocumentViewController_reportImpressionsInViewWillDisappear) = 1;
  *(v0 + OBJC_IVAR____TtC8VideosUI22DocumentViewController_templateViewController) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI22DocumentViewController_hasViewAppeared) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI22DocumentViewController_deferLoadingTemplateController) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI22DocumentViewController_alwaysShowTemplateWithAnimation) = 0;
  sub_1E41FE414();
  OUTLINED_FUNCTION_32_2();
  __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
  *(v0 + OBJC_IVAR____TtC8VideosUI22DocumentViewController_bubbletipOverlayController) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI22DocumentViewController_documentDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC8VideosUI22DocumentViewController_ignoreDidMoveToNilParent) = 0;
  v5 = (v0 + OBJC_IVAR____TtC8VideosUI22DocumentViewController_rebaseIdentifier);
  *v5 = 0;
  v5[1] = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI22DocumentViewController_isInTabBarMode) = 1;
  *(v0 + OBJC_IVAR____TtC8VideosUI22DocumentViewController_isTabBarChild) = 2;
  v6 = (v0 + OBJC_IVAR____TtC8VideosUI22DocumentViewController_documentDidSetHandler);
  *v6 = 0;
  v6[1] = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI22DocumentViewController_document) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI22DocumentViewController_isTransitioning) = 0;
  v7 = v0 + OBJC_IVAR____TtC8VideosUI22DocumentViewController_navBarOpacity;
  *v7 = 0;
  *(v7 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC8VideosUI22DocumentViewController_navBarTintColor) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI22DocumentViewController_navBarPrefersLargeTitles) = 2;
  *(v0 + OBJC_IVAR____TtC8VideosUI22DocumentViewController_navBarTitleView) = 0;
  v8 = (v0 + OBJC_IVAR____TtC8VideosUI22DocumentViewController_navBarTitle);
  *v8 = 0;
  v8[1] = 0;
  v9 = v0 + OBJC_IVAR____TtC8VideosUI22DocumentViewController_navBarCachedWidth;
  *v9 = 0;
  *(v9 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC8VideosUI22DocumentViewController_needsConfigurationWhenMovesToParent) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI22DocumentViewController_viewWillAppearButNotDidAppear) = 0;
  sub_1E42076B4();
  __break(1u);
}

Swift::Void __swiftcall DocumentViewController.vuiViewDidLoad()()
{
  v24.receiver = v0;
  v24.super_class = type metadata accessor for DocumentViewController(0);
  objc_msgSendSuper2(&v24, sel_vui_viewDidLoad);
  v1 = [v0 vuiView];
  if (!v1)
  {
    __break(1u);
    goto LABEL_13;
  }

  v2 = v1;
  [v1 setVuiBackgroundColor_];

  v3 = [v0 vuiView];
  if (!v3)
  {
LABEL_13:
    __break(1u);
    return;
  }

  v4 = v3;
  [v3 setVuiClipsToBounds_];

  v5 = [v0 vuiNavigationController];
  if (v5)
  {
    v6 = v5;
    [v5 setDelegate_];
  }

  v7 = [v0 vuiNavigationController];
  if (v7)
  {
    v8 = v7;
    v9 = [v7 navigationBar];

    [v9 setPrefersLargeTitles_];
  }

  OUTLINED_FUNCTION_21();
  if ((*(v10 + 752))())
  {

    sub_1E40070C0();
  }

  v11 = objc_opt_self();
  v12 = [v11 defaultCenter];
  OUTLINED_FUNCTION_88_18(v12, v13, v14, sel_didEnterBackground_, *MEMORY[0x1E69DF7E0]);

  v15 = [v11 defaultCenter];
  OUTLINED_FUNCTION_88_18(v15, v16, v17, sel_willTerminate_, *MEMORY[0x1E69DF7F8]);

  v18 = [v11 defaultCenter];
  OUTLINED_FUNCTION_88_18(v18, v19, v20, sel_willEnterForeground_, *MEMORY[0x1E69DF7E8]);

  if ([objc_opt_self() isPad])
  {
    v21 = [v11 defaultCenter];
    OUTLINED_FUNCTION_88_18(v21, v22, v23, sel_handleFullscreenPlaybackUIDidChange_, VUIPlaybackManagerFullscreenPlaybackUIDidChangeNotification[0]);
  }
}

uint64_t sub_1E400ADC0()
{
  sub_1E325F748(v0 + OBJC_IVAR____TtC8VideosUI22DocumentViewController_pendingDeeplinkURL, &unk_1ECF363C0, &unk_1E42A9420);

  sub_1E32AF6F8(v0 + OBJC_IVAR____TtC8VideosUI22DocumentViewController_documentDelegate);

  sub_1E37FAED8(*(v0 + OBJC_IVAR____TtC8VideosUI22DocumentViewController_documentDidSetHandler), *(v0 + OBJC_IVAR____TtC8VideosUI22DocumentViewController_documentDidSetHandler + 8));
}

id DocumentViewController.__deallocating_deinit()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver_];

  v3.receiver = v0;
  v3.super_class = type metadata accessor for DocumentViewController(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

Swift::Void __swiftcall DocumentViewController.vuiViewWillAppear(_:)(Swift::Bool a1)
{
  v17.receiver = v1;
  v17.super_class = type metadata accessor for DocumentViewController(0);
  v3 = objc_msgSendSuper2(&v17, sel_vui_viewWillAppear_, a1);
  *(v1 + OBJC_IVAR____TtC8VideosUI22DocumentViewController_viewWillAppearButNotDidAppear) = 1;
  v4 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x1B0))(v3);
  if (v4)
  {

    sub_1E400B304(0.0);
    if (sub_1E40D8D8C())
    {
      sub_1E400B680();
    }
  }

  else if ((sub_1E39E01A4() & 1) == 0)
  {
    v5 = [v1 vuiNavigationController];
    if (v5)
    {
      v6 = v5;
      v7 = [v5 navigationBar];

      if (v7)
      {
        v8 = [v1 transitionCoordinator];
        if (v8)
        {
          v9 = v8;
          v10 = [v8 viewControllerForKey_];
          OUTLINED_FUNCTION_4_0();
          v11 = swift_allocObject();
          *(v11 + 16) = v7;
          v22 = sub_1E40171B8;
          v23 = v11;
          aBlock = MEMORY[0x1E69E9820];
          v19 = 1107296256;
          v20 = sub_1E37C7850;
          v21 = &block_descriptor_121;
          v12 = _Block_copy(&aBlock);
          v13 = v7;

          OUTLINED_FUNCTION_2_4();
          v14 = swift_allocObject();
          *(v14 + 16) = v10;
          *(v14 + 24) = v9;
          v22 = sub_1E4017238;
          v23 = v14;
          aBlock = MEMORY[0x1E69E9820];
          v19 = 1107296256;
          v20 = sub_1E37C7850;
          v21 = &block_descriptor_127_1;
          v15 = _Block_copy(&aBlock);
          v16 = v10;
          OUTLINED_FUNCTION_50();
          swift_unknownObjectRetain();

          [v9 animateAlongsideTransition:v12 completion:v15];

          _Block_release(v15);
          _Block_release(v12);

          swift_unknownObjectRelease();
        }

        else
        {
          [v7 setTintColor_];
        }
      }
    }
  }
}

void sub_1E400B304(double a1)
{
  v3 = [v1 vuiNavigationController];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 navigationBar];

    if (v5)
    {
      v6 = [v1 transitionCoordinator];
      if (v6)
      {
        v7 = v6;
        v8 = [v6 viewControllerForKey_];
        OUTLINED_FUNCTION_2_4();
        v9 = swift_allocObject();
        *(v9 + 16) = v1;
        *(v9 + 24) = v5;
        v31 = sub_1E4017118;
        v32 = v9;
        v27 = MEMORY[0x1E69E9820];
        v28 = 1107296256;
        v29 = sub_1E37C7850;
        v30 = &block_descriptor_109_3;
        v10 = _Block_copy(&v27);
        v11 = v1;
        v12 = v5;

        OUTLINED_FUNCTION_2_4();
        v13 = swift_allocObject();
        *(v13 + 16) = v8;
        *(v13 + 24) = v7;
        v31 = sub_1E4017390;
        v32 = v13;
        v27 = MEMORY[0x1E69E9820];
        v28 = 1107296256;
        v29 = sub_1E37C7850;
        v30 = &block_descriptor_115_2;
        v14 = _Block_copy(&v27);
        v15 = v8;
        swift_unknownObjectRetain();

        [v7 animateAlongsideTransition:v10 completion:v14];

        _Block_release(v14);
        _Block_release(v10);
        swift_unknownObjectRelease();
      }

      else
      {
        v16 = objc_opt_self();
        OUTLINED_FUNCTION_2_4();
        v17 = swift_allocObject();
        *(v17 + 16) = v1;
        *(v17 + 24) = v5;
        v31 = sub_1E4017118;
        v32 = v17;
        v27 = MEMORY[0x1E69E9820];
        v28 = 1107296256;
        OUTLINED_FUNCTION_14_1();
        v29 = v18;
        v30 = &block_descriptor_103_1;
        v19 = _Block_copy(&v27);
        v20 = v1;
        v21 = v5;

        [v16 animateWithDuration:v19 animations:{a1, v27, v28}];

        _Block_release(v19);
      }
    }
  }

  v22 = v1[OBJC_IVAR____TtC8VideosUI22DocumentViewController_navBarPrefersLargeTitles];
  if (v22 != 2)
  {
    v23 = OUTLINED_FUNCTION_151_8();
    [v23 _setSupportsTwoLineLargeTitles_];

    v24 = OUTLINED_FUNCTION_151_8();
    if (v22)
    {
      OUTLINED_FUNCTION_21();
      v26 = (*(v25 + 1192))();
    }

    else
    {
      v26 = 2;
    }

    [v24 setLargeTitleDisplayMode_];
  }
}

void sub_1E400B680()
{
  if ((sub_1E39DFFC8() & 1) == 0)
  {
    v1 = *(v0 + OBJC_IVAR____TtC8VideosUI22DocumentViewController_navBarTitleView);
    if (v1)
    {
      v2 = v1;
      v3 = OUTLINED_FUNCTION_151_8();
      [v3 setTitleView_];
    }

    if (*(v0 + OBJC_IVAR____TtC8VideosUI22DocumentViewController_navBarTitle + 8))
    {

      v8 = OUTLINED_FUNCTION_151_8();
      v4 = OUTLINED_FUNCTION_13_8();
      sub_1E37FB7F0(v4, v5, v6, v7);
    }
  }
}

void DocumentViewController.willEnterForeground(_:)()
{
  OUTLINED_FUNCTION_12_161();
  v1 = (*(v0 + 432))();
  if (v1)
  {
    v2 = v1;
    v3 = [v1 vuiView];

    if (v3)
    {
      v4 = [v3 window];

      if (v4)
      {

        OUTLINED_FUNCTION_12_161();
        v6 = *(v5 + 1032);

        v6(1);
      }
    }

    else
    {
      __break(1u);
    }
  }
}

void DocumentViewController.willTerminate(_:)()
{
  OUTLINED_FUNCTION_21();
  (*(v0 + 1048))();
  if (DocumentViewController.shouldRecordExit()())
  {
    v1 = [objc_opt_self() sharedInstance];
    [v1 recordAppWillTerminate];
  }
}

void DocumentViewController.didEnterBackground(_:)()
{
  v0 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_12_161();
  (*(v1 + 1032))(0);
  OUTLINED_FUNCTION_26_3();
  v3 = (*((*v0 & v2) + 0x1B0))();
  if (!v3 || (v4 = v3, v5 = [v3 vuiView], v4, !v5) || (v6 = objc_msgSend(v5, sel_isHidden), v5, (v6 & 1) == 0))
  {
    OUTLINED_FUNCTION_12_161();
    (*(v7 + 1048))();
    if (DocumentViewController.shouldRecordExit()())
    {
      v8 = [objc_opt_self() sharedInstance];
      [v8 recordAppWillBackground];
    }
  }
}

uint64_t sub_1E400BB08()
{
  OUTLINED_FUNCTION_89_12();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_35_3();
  sub_1E41FDEE4();
  v3 = v1;
  v0();

  v4 = OUTLINED_FUNCTION_53();
  return v5(v4);
}

uint64_t DocumentViewController.shouldRecordExit()()
{
  result = [v0 view];
  if (result)
  {
    v2 = result;
    v3 = [result window];

    if (!v3)
    {
      return 0;
    }

    v4 = [v0 presentingViewController];
    if (v4)
    {

      return 0;
    }

    return 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

Swift::Void __swiftcall DocumentViewController.setImpressionVisibility(_:)(Swift::Bool a1)
{
  OUTLINED_FUNCTION_21();
  v2 = (*(v1 + 432))();
  if (!v2 || (v11[0] = v2, sub_1E3280A90(0, &qword_1EE23B250, 0x1E69DD258), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C260, &unk_1E42DCEA0), (swift_dynamicCast() & 1) == 0))
  {
    v10 = 0;
    v8 = 0u;
    v9 = 0u;
    goto LABEL_7;
  }

  if (!*(&v9 + 1))
  {
LABEL_7:
    sub_1E325F748(&v8, &qword_1ECF3C268, &unk_1E42E5630);
    return;
  }

  sub_1E3251BE8(&v8, v11);
  v3 = v11[4];
  __swift_project_boxed_opaque_existential_1(v11, v11[3]);
  v4 = OUTLINED_FUNCTION_38();
  v5(v4, v3);
  if (*(&v9 + 1))
  {
    __swift_project_boxed_opaque_existential_1(&v8, *(&v9 + 1));
    v6 = OUTLINED_FUNCTION_38();
    v7(v6);
    sub_1E42048D4();

    __swift_destroy_boxed_opaque_existential_1(&v8);
  }

  else
  {
    sub_1E325F748(&v8, &unk_1ECF296D0, &qword_1E429BAA0);
  }

  __swift_destroy_boxed_opaque_existential_1(v11);
}

Swift::Void __swiftcall DocumentViewController.vuiViewDidAppear(_:)(Swift::Bool a1)
{
  OUTLINED_FUNCTION_31_1();
  v4 = v1;
  v6 = v5;
  v7 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_41();
  v33.receiver = v4;
  v33.super_class = type metadata accessor for DocumentViewController(0);
  v11 = objc_msgSendSuper2(&v33, sel_vui_viewDidAppear_, v6 & 1);
  *(v4 + OBJC_IVAR____TtC8VideosUI22DocumentViewController_hasViewAppeared) = 1;
  *(v4 + OBJC_IVAR____TtC8VideosUI22DocumentViewController_viewWillAppearButNotDidAppear) = 0;
  v12 = MEMORY[0x1E69E7D40];
  v13 = (*((*MEMORY[0x1E69E7D40] & *v4) + 0x1B0))(v11);
  if (v13)
  {

    if (sub_1E40D8DF8())
    {
      sub_1E400B680();
    }

    v14 = [v4 vuiNavigationController];
    if (v14)
    {
      v15 = v14;
      v16 = [v14 navigationBar];

      [v16 sizeToFit];
    }

    sub_1E40D90A0();
  }

  else
  {
    v17 = sub_1E324FBDC();
    (*(v9 + 16))(v2, v17, v7);
    v18 = v4;
    v19 = sub_1E41FFC94();
    sub_1E4206814();

    if (OUTLINED_FUNCTION_75_3())
    {
      OUTLINED_FUNCTION_6_21();
      v32 = OUTLINED_FUNCTION_26_8();
      *v12 = 136315138;
      v20 = DocumentViewController.logPrefix.getter();
      OUTLINED_FUNCTION_49_1(v20, v21);
      OUTLINED_FUNCTION_94_1();

      *(v12 + 4) = v3;
      OUTLINED_FUNCTION_50_52();
      _os_log_impl(v22, v23, v24, v25, v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v32);
      OUTLINED_FUNCTION_46_1();
      v12 = MEMORY[0x1E69E7D40];
      OUTLINED_FUNCTION_6_0();
    }

    v27 = OUTLINED_FUNCTION_74();
    v28(v27);
    OUTLINED_FUNCTION_12_5();
    (*(v29 + 1080))(1, 1.0);
  }

  OUTLINED_FUNCTION_12_5();
  (*(v30 + 1040))();
  OUTLINED_FUNCTION_36_3();
  (*((*v12 & v31) + 0x408))(1);
  sub_1E400C120();
  OUTLINED_FUNCTION_25_2();
}

double sub_1E400C120()
{
  v1 = [v0 vuiView];
  OUTLINED_FUNCTION_26_3();
  v3 = (*((*MEMORY[0x1E69E7D40] & v2) + 0x2F0))();
  if (v3)
  {
    OUTLINED_FUNCTION_35_10(v3);
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    v4 = v0[7];
  }

  else
  {
    v4 = 0;
  }

  type metadata accessor for Accessibility();
  v5 = OUTLINED_FUNCTION_50();
  sub_1E40A91FC(v5, 5, v4);

  return result;
}

Swift::Void __swiftcall DocumentViewController.vuiViewWillDisappear(_:)(Swift::Bool a1)
{
  v17.receiver = v1;
  v17.super_class = type metadata accessor for DocumentViewController(0);
  objc_msgSendSuper2(&v17, sel_vui_viewWillDisappear_, a1);
  OUTLINED_FUNCTION_26_3();
  v3 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & v4) + 0x450))();
  if ((sub_1E39DFFC8() & 1) == 0)
  {
    v5 = [v1 transitionCoordinator];
    if (v5)
    {
      v6 = v5;
      v7 = [v5 viewControllerForKey_];
      OUTLINED_FUNCTION_5_10();
      v8 = swift_allocObject();
      v8[2] = v7;
      v8[3] = sub_1E401517C;
      v8[4] = 0;
      aBlock[4] = sub_1E401707C;
      aBlock[5] = v8;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      OUTLINED_FUNCTION_41_66();
      aBlock[2] = v9;
      aBlock[3] = &block_descriptor_97_0;
      v10 = _Block_copy(aBlock);
      v11 = v7;

      [v6 animateAlongsideTransition:v10 completion:0];
      _Block_release(v10);

      swift_unknownObjectRelease();
    }

    else if ((*(v1 + OBJC_IVAR____TtC8VideosUI22DocumentViewController_viewWillAppearButNotDidAppear) & 1) == 0)
    {
      sub_1E401517C(v1);
    }
  }

  sub_1E40D915C();
  *(v1 + OBJC_IVAR____TtC8VideosUI22DocumentViewController_viewWillAppearButNotDidAppear) = 0;
  v12 = (*((*v3 & *v1) + 0x230))();
  if (v12)
  {
    v13 = v12;
    [v12 dismissViewControllerAnimated:1 completion:0];
    OUTLINED_FUNCTION_26_3();
    (*((*v3 & v14) + 0x238))(0);
  }

  OUTLINED_FUNCTION_101_14();
  OUTLINED_FUNCTION_21();
  if ((*(v15 + 408))())
  {
    OUTLINED_FUNCTION_101_14();
    OUTLINED_FUNCTION_21();
    (*(v16 + 1048))();
  }
}

Swift::Void __swiftcall DocumentViewController.vuiViewDidDisappear(_:)(Swift::Bool a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for DocumentViewController(0);
  objc_msgSendSuper2(&v4, sel_vui_viewDidDisappear_, a1);
  OUTLINED_FUNCTION_26_3();
  (*((*MEMORY[0x1E69E7D40] & v3) + 0x408))(0);
}

Swift::Void __swiftcall DocumentViewController.vuiViewDidLayoutSubviews()()
{
  v1 = v0;
  v52.receiver = v0;
  v52.super_class = type metadata accessor for DocumentViewController(0);
  objc_msgSendSuper2(&v52, sel_vui_viewDidLayoutSubviews);
  OUTLINED_FUNCTION_26_3();
  v3 = *((*MEMORY[0x1E69E7D40] & v2) + 0x1B0);
  v4 = v3();
  if (v4)
  {
    v5 = v4;
    v6 = [v4 vuiParentViewController];

    if (v6)
    {
      sub_1E3280A90(0, &qword_1EE23AD70, 0x1E69E58C0);
      OUTLINED_FUNCTION_13_8();
      if (sub_1E4206F64())
      {
        v7 = OUTLINED_FUNCTION_67_4();
        if (!v7)
        {
LABEL_38:
          __break(1u);
          goto LABEL_39;
        }

        v8 = v7;
        [v7 bounds];
        v10 = v9;
        v12 = v11;

        v13 = v3();
        if (v13)
        {
          v14 = v13;
          v15 = [v13 vuiView];

          if (!v15)
          {
LABEL_40:
            __break(1u);
            goto LABEL_41;
          }

          [v15 setVuiCenter_];
        }

        v16 = v3();
        if (v16)
        {
          v17 = v16;
          v18 = [v16 vuiView];

          if (!v18)
          {
LABEL_41:
            __break(1u);
            goto LABEL_42;
          }

          [v18 setBounds_];
        }
      }
    }
  }

  v19 = &v1[OBJC_IVAR____TtC8VideosUI22DocumentViewController_navBarCachedWidth];
  if ((v1[OBJC_IVAR____TtC8VideosUI22DocumentViewController_navBarCachedWidth + 8] & 1) == 0)
  {
    v20 = OUTLINED_FUNCTION_67_4();
    if (!v20)
    {
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    v21 = v20;
    [v20 bounds];
    OUTLINED_FUNCTION_3();

    v54.origin.x = OUTLINED_FUNCTION_6();
    if (CGRectGetWidth(v54) != 0.0)
    {
      v22 = *v19;
      v23 = *(v19 + 8);
      v24 = OUTLINED_FUNCTION_67_4();
      if (!v24)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      v25 = v24;
      [v24 bounds];
      OUTLINED_FUNCTION_3();

      v55.origin.x = OUTLINED_FUNCTION_6();
      if (v22 == CGRectGetWidth(v55))
      {
        v26 = v23;
      }

      else
      {
        v26 = 1;
      }

      if (v26 == 1)
      {
        OUTLINED_FUNCTION_12_5();
        v28 = (*(v27 + 752))();
        if (v28)
        {
          v29 = v28;
          OUTLINED_FUNCTION_25();
          swift_beginAccess();
          v30 = *(v29 + 64);

          if (v30)
          {
            OUTLINED_FUNCTION_47_0();
            v31 += 49;
            v32 = *v31;
            if ((*v31)())
            {
              OUTLINED_FUNCTION_144_0();
              type metadata accessor for NavigationBarLayout();
              OUTLINED_FUNCTION_22_53();
              v33 = swift_dynamicCastClass();
              if (v33)
              {
                v34 = v33;
                v35 = OUTLINED_FUNCTION_67_4();
                if (!v35)
                {
LABEL_42:
                  __break(1u);
                  goto LABEL_43;
                }

                v36 = v35;
                [v35 bounds];
                OUTLINED_FUNCTION_3();

                v56.origin.x = OUTLINED_FUNCTION_6();
                *v19 = CGRectGetWidth(v56);
                *(v19 + 8) = 0;
                v37 = OUTLINED_FUNCTION_67_4();
                if (!v37)
                {
LABEL_43:
                  __break(1u);
                  return;
                }

                v38 = v37;
                [v37 bounds];
                OUTLINED_FUNCTION_3();

                v57.origin.x = OUTLINED_FUNCTION_6();
                Width = CGRectGetWidth(v57);
                v40 = [v1 vuiTraitCollection];
                (*(*v34 + 1832))(Width);

                v41 = [v1 vuiNavigationController];
                if (v41)
                {
                  v42 = v41;
                  v43 = [v41 navigationBar];

                  if (v32())
                  {
                    OUTLINED_FUNCTION_26_0();
                    (*(v44 + 152))(&v53);
                  }

                  v45 = OUTLINED_FUNCTION_6();
                  [v46 v47];
                }
              }
            }
          }
        }
      }
    }
  }

  if (!*&v1[OBJC_IVAR____TtC8VideosUI22DocumentViewController_loadingViewManager])
  {
    return;
  }

  v48 = OUTLINED_FUNCTION_67_4();
  if (!v48)
  {
    __break(1u);
    goto LABEL_37;
  }

  v49 = v48;
  [v48 safeAreaInsets];
  OUTLINED_FUNCTION_3();

  OUTLINED_FUNCTION_8();
  v50 = OUTLINED_FUNCTION_6();
  v51(v50);
}

Swift::Void __swiftcall DocumentViewController.vuiDidMove(toParent:)(UIViewController_optional *toParent)
{
  OUTLINED_FUNCTION_144_0();
  sub_1E41FE5D4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_139();
  v23.receiver = v1;
  v23.super_class = type metadata accessor for DocumentViewController(0);
  v4 = [(UIViewController_optional *)&v23 vui_didMoveToParentViewController:?];
  v5 = MEMORY[0x1E69E7D40];
  if (v2)
  {
    v6 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x1B0))(v4);
    if (v6)
    {
      v7 = v6;
      if (*(v1 + OBJC_IVAR____TtC8VideosUI22DocumentViewController_needsConfigurationWhenMovesToParent) == 1)
      {
        sub_1E41FE5C4();
        OUTLINED_FUNCTION_74();
        sub_1E400CEDC();

        v8 = OUTLINED_FUNCTION_13_8();
        v9(v8);
      }

      else
      {
      }
    }
  }

  else
  {
    if ((*((*MEMORY[0x1E69E7D40] & *v1) + 0x260))(v4))
    {
      (*((*v5 & *v1) + 0x268))(0);
      return;
    }

    v10 = *((*v5 & *v1) + 0x1B0);
    v11 = v10();
    if (v11)
    {
      v12 = v11;
      v13 = [v11 vuiView];

      if (!v13)
      {
        __break(1u);
        return;
      }

      [v13 vui_removeFromSuperView];
    }

    OUTLINED_FUNCTION_21();
    (*(v14 + 1144))(0);
    OUTLINED_FUNCTION_26_3();
    v16 = (*((*v5 & v15) + 0x480))(0);
    v17 = (v10)(v16);
    [v17 vui:0 willMoveToParentViewController:?];

    v18 = v10();
    [v18 vui_removeFromParentViewController];

    OUTLINED_FUNCTION_26_3();
    (*((*v5 & v19) + 0x488))(0);
    v20 = OBJC_IVAR____TtC8VideosUI22DocumentViewController_templateViewController;
    OUTLINED_FUNCTION_3_0(v1 + OBJC_IVAR____TtC8VideosUI22DocumentViewController_templateViewController, v22);
    v21 = *(v1 + v20);
    *(v1 + v20) = 0;
  }
}

void sub_1E400CEDC()
{
  OUTLINED_FUNCTION_93();
  v2 = v0;
  v111 = v3;
  v106 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v110 = v4;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v105 = v7 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF363C0, &unk_1E42A9420);
  MEMORY[0x1EEE9AC00](v8 - 8);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_37_5();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_18_6();
  v109 = v10;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v103[-v12];
  v14 = sub_1E41FE414();
  OUTLINED_FUNCTION_0_10();
  v108 = v15;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_4_6();
  v19 = v17 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v103[-v21];
  sub_1E41FE5D4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_42_1();
  v24 = [v0 vuiParentViewController];
  if (!v24)
  {
    v24 = [v0 vuiPresentingViewController];
    if (!v24)
    {
      *(v0 + OBJC_IVAR____TtC8VideosUI22DocumentViewController_isTransitioning) = 0;
      *(v0 + OBJC_IVAR____TtC8VideosUI22DocumentViewController_needsConfigurationWhenMovesToParent) = 1;
      goto LABEL_45;
    }
  }

  *(v0 + OBJC_IVAR____TtC8VideosUI22DocumentViewController_needsConfigurationWhenMovesToParent) = 0;
  v107 = [v111 vuiView];
  if (!v107)
  {
    *(v0 + OBJC_IVAR____TtC8VideosUI22DocumentViewController_isTransitioning) = 0;
LABEL_45:
    OUTLINED_FUNCTION_54_0();
    return;
  }

  sub_1E41FE5C4();
  sub_1E41FE4F4();
  v26 = v25;
  v27 = OUTLINED_FUNCTION_57();
  v28(v27);
  v29 = v26 < 0.25;
  v30 = [v0 vuiNavigationController];
  if (v30)
  {
    v31 = v30;
    v32 = [v30 viewControllers];

    sub_1E3280A90(0, &qword_1EE23B250, 0x1E69DD258);
    OUTLINED_FUNCTION_20_2();
    v33 = sub_1E42062B4();

    sub_1E32AE9B0(v33);
    OUTLINED_FUNCTION_50();

    v29 = v26 < 0.25 && v32 > 1;
  }

  v35 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_27_29();
  if ((*(v36 + 528))())
  {
    v104 = 0;
  }

  else
  {
    OUTLINED_FUNCTION_27_29();
    v104 = ((*(v37 + 504))() ^ 1) & v29;
  }

  v38 = v111;
  [v2 vui:v111 addChildViewController:?];
  [v38 vui:1 beginAppearanceTransition:1 animated:?];
  v39 = OBJC_IVAR____TtC8VideosUI22DocumentViewController_pendingDeeplinkURL;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  sub_1E379539C(v2 + v39, v13, &unk_1ECF363C0, &unk_1E42A9420);
  if (__swift_getEnumTagSinglePayload(v13, 1, v14) == 1)
  {
    sub_1E325F748(v13, &unk_1ECF363C0, &unk_1E42A9420);
  }

  else
  {
    v40 = v108;
    v41 = OUTLINED_FUNCTION_53();
    v42(v41);
    (*((*v35 & *v2) + 0x498))(v22);
    (*(v40 + 8))(v22, v14);
    v43 = v109;
    OUTLINED_FUNCTION_32_2();
    __swift_storeEnumTagSinglePayload(v44, v45, v46, v14);
    OUTLINED_FUNCTION_11_3(v2 + v39, &v112);
    sub_1E38DAEEC(v43, v2 + v39);
    swift_endAccess();
  }

  v47 = v110;
  sub_1E379539C(v2 + v39, v1, &unk_1ECF363C0, &unk_1E42A9420);
  if (__swift_getEnumTagSinglePayload(v1, 1, v14) == 1)
  {
    sub_1E325F748(v1, &unk_1ECF363C0, &unk_1E42A9420);
  }

  else
  {
    v48 = v108;
    (*(v108 + 32))(v19, v1, v14);
    (*((*v35 & *v2) + 0x498))(v19);
    (*(v48 + 8))(v19, v14);
    v49 = v109;
    OUTLINED_FUNCTION_32_2();
    __swift_storeEnumTagSinglePayload(v50, v51, v52, v14);
    OUTLINED_FUNCTION_11_3(v2 + v39, &v112);
    sub_1E38DAEEC(v49, v2 + v39);
    swift_endAccess();
  }

  v53 = v107;
  v54 = &selRef_textLayout;
  v55 = v111;
  ObjectType = swift_getObjectType();
  if (dynamic_cast_existential_1_conditional(v55, ObjectType, &protocol descriptor for TemplateScrollable))
  {
    v58 = v57;
    swift_getObjectType();
    v59 = *(v58 + 16);
    v60 = v55;
    v61 = OUTLINED_FUNCTION_13_8();
    v62 = v59(v61);
    v35 = MEMORY[0x1E69E7D40];
    v47 = v110;
    v63 = v62;
    [v2 vui:v62 setContentScrollView:15 forEdge:?];
  }

  v64 = [v2 vuiTabBarController];
  if (v64)
  {

    [v53 setVuiClipsToBounds_];
    v65 = [v53 vuiSubviews];
    sub_1E3280A90(0, &qword_1EE23AE80, 0x1E69DD250);
    OUTLINED_FUNCTION_20_2();
    v66 = sub_1E42062B4();

    if (sub_1E32AE9B0(v66))
    {
      if ((v66 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1E6911E60](0, v66);
      }

      else
      {
        if (!*((v66 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_48;
        }

        v67 = *(v66 + 32);
      }

      OUTLINED_FUNCTION_50();

      [v65 setVuiClipsToBounds_];
    }

    else
    {
    }
  }

  *(v2 + OBJC_IVAR____TtC8VideosUI22DocumentViewController_isTransitioning) = 0;
  v68 = [v2 vuiView];
  if (!v68)
  {
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v69 = v68;
  v70 = [v68 window];

  if (!v70 || (v70, (v104 & 1) != 0))
  {
    if (*(v2 + OBJC_IVAR____TtC8VideosUI22DocumentViewController_loadingViewManager))
    {
      OUTLINED_FUNCTION_8();
      (*(v71 + 240))();
    }

    v72 = [v2 vuiView];
    if (v72)
    {
      v73 = v72;
      [v72 vui:v53 addSubview:0 oldView:?];

      (*((*v35 & *v2) + 0x480))(v55);
      sub_1E4013378();

      goto LABEL_45;
    }

    goto LABEL_49;
  }

  v74 = sub_1E324FBDC();
  v75 = v105;
  v76 = v106;
  (*(v47 + 16))(v105, v74, v106);
  v77 = v2;
  v78 = sub_1E41FFC94();
  v79 = sub_1E4206814();

  if (os_log_type_enabled(v78, v79))
  {
    v80 = v47;
    v81 = OUTLINED_FUNCTION_6_21();
    v112 = OUTLINED_FUNCTION_100();
    *v81 = 136315138;
    v82 = DocumentViewController.logPrefix.getter();
    v84 = OUTLINED_FUNCTION_89_18(v82, v83);

    *(v81 + 4) = v84;
    OUTLINED_FUNCTION_126_9();
    _os_log_impl(v85, v86, v87, v88, v89, 0xCu);
    OUTLINED_FUNCTION_5_175();
    OUTLINED_FUNCTION_65_0();

    (*(v80 + 8))(v105, v106);
    v54 = &selRef_textLayout;
  }

  else
  {

    (*(v47 + 8))(v75, v76);
  }

  [v53 setVuiAlpha_];
  if (*(v77 + OBJC_IVAR____TtC8VideosUI22DocumentViewController_loadingViewManager))
  {
    OUTLINED_FUNCTION_8();
    (*(v90 + 240))();
  }

  v91 = [v77 v54[439]];
  if (v91)
  {
    v92 = v91;
    [v91 vui:v53 addSubview:0 oldView:?];

    v93 = objc_opt_self();
    OUTLINED_FUNCTION_4_0();
    v94 = swift_allocObject();
    swift_unknownObjectWeakInit();
    OUTLINED_FUNCTION_5_10();
    v95 = swift_allocObject();
    v95[2] = v53;
    v95[3] = v94;
    v95[4] = v55;
    v116 = sub_1E4016FD4;
    v117 = v95;
    v112 = MEMORY[0x1E69E9820];
    v113 = 1107296256;
    v114 = sub_1E378AEA4;
    v115 = &block_descriptor_85_1;
    v96 = _Block_copy(&v112);
    v97 = v55;
    v98 = v53;

    OUTLINED_FUNCTION_2_4();
    v99 = swift_allocObject();
    *(v99 + 16) = v77;
    *(v99 + 24) = v97;
    v116 = sub_1E4017074;
    v117 = v99;
    v112 = MEMORY[0x1E69E9820];
    v113 = 1107296256;
    v114 = sub_1E37EB82C;
    v115 = &block_descriptor_91_0;
    v100 = _Block_copy(&v112);
    v101 = v97;
    v102 = v77;

    [v93 animateWithDuration:6 delay:v96 options:v100 animations:0.5 completion:0.0];

    _Block_release(v100);
    _Block_release(v96);
    goto LABEL_45;
  }

LABEL_50:
  __break(1u);
}

id DocumentViewController.preferredStatusBarStyle.getter()
{
  OUTLINED_FUNCTION_21();
  v2 = (*(v1 + 432))();
  if (v2)
  {
    v3 = v2;
    v4 = [v2 preferredStatusBarStyle];

    return v4;
  }

  else
  {
    v6.receiver = v0;
    v6.super_class = type metadata accessor for DocumentViewController(0);
    return objc_msgSendSuper2(&v6, sel_preferredStatusBarStyle);
  }
}

uint64_t DocumentViewController.preferredFocusEnvironments.getter()
{
  OUTLINED_FUNCTION_21();
  v2 = (*(v1 + 432))();
  if (v2)
  {
    v3 = v2;
    v4 = [v2 parentViewController];
    if (v4)
    {

      if ((v0[OBJC_IVAR____TtC8VideosUI22DocumentViewController_isTransitioning] & 1) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750, &unk_1E429DD30);
        OUTLINED_FUNCTION_5_10();
        result = swift_allocObject();
        *(result + 16) = xmmword_1E4298880;
        *(result + 32) = v3;
        return result;
      }
    }
  }

  v5 = [v0 childViewControllers];
  sub_1E3280A90(0, &qword_1EE23B250, 0x1E69DD258);
  OUTLINED_FUNCTION_20_2();
  v6 = sub_1E42062B4();

  result = sub_1E32AE9B0(v6);
  if (result)
  {
    if ((v6 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1E6911E60](0, v6);
      goto LABEL_9;
    }

    if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v8 = *(v6 + 32);
LABEL_9:
      OUTLINED_FUNCTION_50();

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750, &unk_1E429DD30);
      OUTLINED_FUNCTION_5_10();
      result = swift_allocObject();
      *(result + 16) = xmmword_1E4298880;
      *(result + 32) = v5;
      return result;
    }

    __break(1u);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return result;
}

id DocumentViewController.supportedInterfaceOrientations.getter()
{
  v1 = [v0 childViewControllers];
  sub_1E3280A90(0, &qword_1EE23B250, 0x1E69DD258);
  OUTLINED_FUNCTION_19_3();
  v2 = sub_1E42062B4();

  v3 = sub_1E37CB21C(v2);

  if (v3)
  {
    v4 = [v3 supportedInterfaceOrientations];

    return v4;
  }

  else
  {
    v6.receiver = v0;
    v6.super_class = type metadata accessor for DocumentViewController(0);
    return objc_msgSendSuper2(&v6, sel_supportedInterfaceOrientations);
  }
}

void *sub_1E400DF14(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4 >> 1 == a3)
  {
    return 0;
  }

  if ((a4 >> 1) > a3)
  {
    v4 = *(a2 + 8 * (a4 >> 1) - 8);
    v5 = v4;
    return v4;
  }

  __break(1u);
  return result;
}

id sub_1E400E014()
{
  OUTLINED_FUNCTION_21();
  v1 = (*(v0 + 432))();
  OUTLINED_FUNCTION_134_8();
  v4 = [v2 v3];

  return v4;
}

Swift::Void __swiftcall DocumentViewController.recordDocumentAppear()()
{
  OUTLINED_FUNCTION_21();
  v1 = (*(v0 + 752))();
  if (v1)
  {
    v2 = v1;
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    v3 = v2[7];

    if (v3)
    {
      OUTLINED_FUNCTION_8();
      (*(v4 + 576))();
      OUTLINED_FUNCTION_12_1();

      (*(*v2 + 296))(v5);
    }
  }
}

Swift::Void __swiftcall DocumentViewController.recordImpressions()()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_26_3();
  v4 = *((*MEMORY[0x1E69E7D40] & v3) + 0x1B0);
  if (!v4() || (sub_1E3280A90(0, &qword_1EE23B250, 0x1E69DD258), v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C260, &unk_1E42DCEA0), (OUTLINED_FUNCTION_60_36(v5) & 1) == 0))
  {
    OUTLINED_FUNCTION_12_97();
    goto LABEL_6;
  }

  if (!v61)
  {
LABEL_6:
    v8 = sub_1E325F748(v60, &qword_1ECF3C268, &unk_1E42E5630);
    if (v4)(v8) && (sub_1E3280A90(0, &qword_1EE23B250, 0x1E69DD258), v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3E3E0, &qword_1E42DCE90), (OUTLINED_FUNCTION_60_36(v9)))
    {
      if (v61)
      {
        OUTLINED_FUNCTION_74_22();
        v10 = OUTLINED_FUNCTION_16_5();
        v11(v10);
        v12 = v61;
        if (!v61)
        {
          sub_1E325F748(v60, &qword_1ECF2C970, &qword_1E429D870);
          goto LABEL_19;
        }

        goto LABEL_10;
      }
    }

    else
    {
      OUTLINED_FUNCTION_12_97();
    }

    v15 = sub_1E325F748(v60, &unk_1ECF3E3D0, &qword_1E42DCE98);
    if (v4)(v15) && (sub_1E3280A90(0, &qword_1EE23B250, 0x1E69DD258), v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C270, &unk_1E42DCEB0), (OUTLINED_FUNCTION_60_36(v16)))
    {
      if (v61)
      {
        OUTLINED_FUNCTION_74_22();
        v17 = OUTLINED_FUNCTION_16_5();
        v12 = v18(v17);
        goto LABEL_19;
      }
    }

    else
    {
      OUTLINED_FUNCTION_12_97();
    }

    v19 = sub_1E325F748(v60, &qword_1ECF3C278, &unk_1E42E5640);
    v12 = 0;
    goto LABEL_20;
  }

  OUTLINED_FUNCTION_74_22();
  v6 = OUTLINED_FUNCTION_16_5();
  v7(v6);
LABEL_10:
  __swift_project_boxed_opaque_existential_1(v60, v61);
  v13 = OUTLINED_FUNCTION_16_5();
  v12 = v14(v13);
  __swift_destroy_boxed_opaque_existential_1(v60);
LABEL_19:
  v19 = __swift_destroy_boxed_opaque_existential_1(&v62);
LABEL_20:
  v20 = (v4)(v19);
  if (v20)
  {
    v21 = v20;
    type metadata accessor for PostPlayTemplateController();
    if (swift_dynamicCastClass())
    {
      OUTLINED_FUNCTION_16_5();

      OUTLINED_FUNCTION_21();
      (*(v22 + 480))(v23);

      goto LABEL_37;
    }
  }

  if (!v12)
  {
    goto LABEL_32;
  }

  OUTLINED_FUNCTION_27_29();
  v25 = *(v24 + 752);

  v27 = (v25)(v26);
  if (!v27 || (v28 = v27, OUTLINED_FUNCTION_25(), swift_beginAccess(), v29 = v28[7], , , !v29))
  {

LABEL_32:
    OUTLINED_FUNCTION_27_29();
    v39 = (*(v37 + 752))(v38);
    if (v39)
    {
      v40 = v39;
      OUTLINED_FUNCTION_25();
      swift_beginAccess();
      v41 = *(v40 + 56);

      if (v41)
      {

        sub_1E3905190(v42, v43, v44);
        if (sub_1E4205E84())
        {
          type metadata accessor for SearchTemplateController();
          OUTLINED_FUNCTION_16_5();
          sub_1E394BA38();
        }
      }
    }

    goto LABEL_36;
  }

  OUTLINED_FUNCTION_8();
  (*(v30 + 576))(v31);
  OUTLINED_FUNCTION_6_19();

  if (*(v12 + 16))
  {
    v32 = [objc_opt_self() sharedInstance];
    [v32 setShouldFlushMetrics_];

    v34 = (v25)(v33);
    if (v34)
    {
      OUTLINED_FUNCTION_25();
      swift_beginAccess();
      v35 = *(v34 + 56);

      if (v35)
      {
        type metadata accessor for Metrics(0);
        v36 = OUTLINED_FUNCTION_38();
        v34 = sub_1E3BA7F00(v36);
      }

      else
      {
        v34 = 0;
      }
    }

    (*(*v28 + 288))(0, v12, 0, v34);

LABEL_36:

    goto LABEL_37;
  }

  v46 = (v25)(v45);
  if (!v46 || (OUTLINED_FUNCTION_35_10(v46), OUTLINED_FUNCTION_25(), swift_beginAccess(), v47 = *(v1 + 56), , , !v47) || (v49 = *(v47 + 16), v48 = *(v47 + 24), , , !v48))
  {

    v49 = 0;
  }

  sub_1E324FBDC();
  OUTLINED_FUNCTION_0_11();
  v50 = OUTLINED_FUNCTION_33_14();
  v51(v50);

  v52 = sub_1E41FFC94();
  v53 = sub_1E4206814();

  if (os_log_type_enabled(v52, v53))
  {
    OUTLINED_FUNCTION_6_21();
    OUTLINED_FUNCTION_26_8();
    *v25 = 136315138;
    v54 = OUTLINED_FUNCTION_53();
    sub_1E3270FC8(v54, v55, v56);
    OUTLINED_FUNCTION_104_17();

    *(v25 + 4) = v49;
    OUTLINED_FUNCTION_42_52(&dword_1E323F000, v57, v53, "Metrics:: no impressions returned for %s");
    OUTLINED_FUNCTION_5_22();
    OUTLINED_FUNCTION_7_7();
  }

  else
  {
  }

  v58 = OUTLINED_FUNCTION_13_8();
  v59(v58);
LABEL_37:
  OUTLINED_FUNCTION_25_2();
}

id DocumentViewController.__allocating_init(documentModel:loadingManager:)()
{
  OUTLINED_FUNCTION_156();
  v1 = objc_allocWithZone(v0);
  OUTLINED_FUNCTION_13_8();
  return sub_1E400E9A0();
}

id sub_1E400E9A0()
{
  OUTLINED_FUNCTION_156();
  *(v1 + OBJC_IVAR____TtC8VideosUI22DocumentViewController_viewWillAppearAfterTabSwitch) = 0;
  *(v1 + OBJC_IVAR____TtC8VideosUI22DocumentViewController_reportImpressionsInViewWillDisappear) = 1;
  *(v1 + OBJC_IVAR____TtC8VideosUI22DocumentViewController_templateViewController) = 0;
  *(v1 + OBJC_IVAR____TtC8VideosUI22DocumentViewController_hasViewAppeared) = 0;
  *(v1 + OBJC_IVAR____TtC8VideosUI22DocumentViewController_deferLoadingTemplateController) = 0;
  *(v1 + OBJC_IVAR____TtC8VideosUI22DocumentViewController_alwaysShowTemplateWithAnimation) = 0;
  sub_1E41FE414();
  OUTLINED_FUNCTION_32_2();
  __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
  *(v1 + OBJC_IVAR____TtC8VideosUI22DocumentViewController_bubbletipOverlayController) = 0;
  *(v1 + OBJC_IVAR____TtC8VideosUI22DocumentViewController_documentDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + OBJC_IVAR____TtC8VideosUI22DocumentViewController_ignoreDidMoveToNilParent) = 0;
  v7 = (v1 + OBJC_IVAR____TtC8VideosUI22DocumentViewController_rebaseIdentifier);
  *v7 = 0;
  v7[1] = 0;
  *(v1 + OBJC_IVAR____TtC8VideosUI22DocumentViewController_isInTabBarMode) = 1;
  *(v1 + OBJC_IVAR____TtC8VideosUI22DocumentViewController_isTabBarChild) = 2;
  v8 = (v1 + OBJC_IVAR____TtC8VideosUI22DocumentViewController_documentDidSetHandler);
  *v8 = 0;
  v8[1] = 0;
  v9 = OBJC_IVAR____TtC8VideosUI22DocumentViewController_document;
  *(v1 + OBJC_IVAR____TtC8VideosUI22DocumentViewController_document) = 0;
  *(v1 + OBJC_IVAR____TtC8VideosUI22DocumentViewController_isTransitioning) = 0;
  v10 = v1 + OBJC_IVAR____TtC8VideosUI22DocumentViewController_navBarOpacity;
  *v10 = 0;
  *(v10 + 8) = 1;
  *(v1 + OBJC_IVAR____TtC8VideosUI22DocumentViewController_navBarTintColor) = 0;
  *(v1 + OBJC_IVAR____TtC8VideosUI22DocumentViewController_navBarPrefersLargeTitles) = 2;
  *(v1 + OBJC_IVAR____TtC8VideosUI22DocumentViewController_navBarTitleView) = 0;
  v11 = (v1 + OBJC_IVAR____TtC8VideosUI22DocumentViewController_navBarTitle);
  *v11 = 0;
  v11[1] = 0;
  v12 = v1 + OBJC_IVAR____TtC8VideosUI22DocumentViewController_navBarCachedWidth;
  *v12 = 0;
  *(v12 + 8) = 1;
  *(v1 + OBJC_IVAR____TtC8VideosUI22DocumentViewController_needsConfigurationWhenMovesToParent) = 0;
  *(v1 + OBJC_IVAR____TtC8VideosUI22DocumentViewController_viewWillAppearButNotDidAppear) = 0;
  OUTLINED_FUNCTION_3_0(v1 + v9, v16);
  *(v1 + v9) = v2;
  *(v1 + OBJC_IVAR____TtC8VideosUI22DocumentViewController_loadingViewManager) = v0;
  type metadata accessor for DocumentViewController(0);
  OUTLINED_FUNCTION_25();
  return objc_msgSendSuper2(v13, v14);
}

void DocumentViewController.replace(_:)()
{
  OUTLINED_FUNCTION_31_1();
  v3 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_47_2();
  MEMORY[0x1EEE9AC00](v7);

  if ([v0 vuiIsViewLoaded])
  {
    OUTLINED_FUNCTION_12_161();
    if ((*(v9 + 528))())
    {
      if (v0[OBJC_IVAR____TtC8VideosUI22DocumentViewController_hasViewAppeared] == 1)
      {
        OUTLINED_FUNCTION_12_161();
        (*(v10 + 1040))();
      }

      sub_1E400C120();
    }

    sub_1E324FBDC();
    OUTLINED_FUNCTION_0_11();
    v11 = OUTLINED_FUNCTION_33_14();
    v12(v11);
    v13 = v0;
    v14 = sub_1E41FFC94();
    sub_1E4206814();

    if (OUTLINED_FUNCTION_34_9())
    {
      v15 = OUTLINED_FUNCTION_6_21();
      OUTLINED_FUNCTION_100();
      *v15 = 136315138;
      v16 = DocumentViewController.logPrefix.getter();
      OUTLINED_FUNCTION_58_0(v16, v17);
      OUTLINED_FUNCTION_34_3();
      *(v15 + 4) = v2;
      OUTLINED_FUNCTION_6_13(&dword_1E323F000, v18, v19, "%s replace document: Remove existing template and update template");
      OUTLINED_FUNCTION_5_21();
      OUTLINED_FUNCTION_55();
    }

    v20 = OUTLINED_FUNCTION_13_8();
    v21(v20);
    sub_1E400EE24();
    sub_1E40070C0();
  }

  else
  {
    sub_1E324FBDC();
    OUTLINED_FUNCTION_0_11();
    v22(v1);
    v23 = v0;
    v24 = sub_1E41FFC94();
    v25 = sub_1E4206814();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = OUTLINED_FUNCTION_6_21();
      OUTLINED_FUNCTION_100();
      *v26 = 136315138;
      v27 = DocumentViewController.logPrefix.getter();
      v29 = OUTLINED_FUNCTION_58_0(v27, v28);

      *(v26 + 4) = v29;
      OUTLINED_FUNCTION_126_0(&dword_1E323F000, v24, v25, "%s replace document: view hasn't loaded yet, ignore");
      OUTLINED_FUNCTION_5_21();
      OUTLINED_FUNCTION_21_0();
    }

    (*(v5 + 8))(v1, v3);
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E400EE24()
{
  OUTLINED_FUNCTION_31_1();
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_41();
  sub_1E324FBDC();
  OUTLINED_FUNCTION_0_11();
  v4(v1);
  v5 = v0;
  v6 = sub_1E41FFC94();
  sub_1E4206814();

  if (OUTLINED_FUNCTION_34_9())
  {
    v7 = OUTLINED_FUNCTION_6_21();
    v24 = OUTLINED_FUNCTION_100();
    *v7 = 136315138;
    v8 = DocumentViewController.logPrefix.getter();
    OUTLINED_FUNCTION_49_1(v8, v9);
    OUTLINED_FUNCTION_34_3();
    *(v7 + 4) = v2;
    OUTLINED_FUNCTION_6_13(&dword_1E323F000, v10, v11, "%s removeExistingTemplate");
    OUTLINED_FUNCTION_5_21();
    OUTLINED_FUNCTION_55();
  }

  v12 = OUTLINED_FUNCTION_74();
  v13(v12);
  OUTLINED_FUNCTION_12_5();
  v14 += 54;
  v15 = *v14;
  v16 = (*v14)();
  if (v16)
  {
    v17 = v16;
    [v16 vui:0 willMoveToParentViewController:?];
  }

  v18 = v15();
  if (!v18)
  {
    goto LABEL_8;
  }

  v19 = v18;
  v20 = [v18 vuiView];

  if (v20)
  {
    [v20 vui_removeFromSuperView];

LABEL_8:
    v21 = v15();
    [v21 vui_removeFromParentViewController];

    v22 = OBJC_IVAR____TtC8VideosUI22DocumentViewController_templateViewController;
    OUTLINED_FUNCTION_3_0(&v5[OBJC_IVAR____TtC8VideosUI22DocumentViewController_templateViewController], &v24);
    v23 = *&v5[v22];
    *&v5[v22] = 0;

    OUTLINED_FUNCTION_25_2();
    return;
  }

  __break(1u);
}

void DocumentViewController.replaceInteractive(_:animated:reloadData:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_31_1();
  a19 = v23;
  a20 = v24;
  v26 = v25;
  v190 = v27;
  v194 = v28;
  v29 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v31 = v30;
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_37_5();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_68_1();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v39);
  v41 = &v181 - v40;
  MEMORY[0x1EEE9AC00](v42);
  v44 = &v181 - v43;
  sub_1E324FBDC();
  OUTLINED_FUNCTION_48_4();
  v191 = v45;
  v195 = v29;
  v193 = v46;
  v192 = v47;
  v47(v44);
  v48 = v20;
  v49 = sub_1E41FFC94();
  v50 = sub_1E4206814();

  v51 = os_log_type_enabled(v49, v50);
  v196 = v31;
  v187 = v41;
  v186 = v21;
  if (v51)
  {
    swift_slowAlloc();
    v52 = v22;
    v53 = OUTLINED_FUNCTION_16_2();
    v201[0] = v53;
    *v31 = 136315650;
    v54 = v48;
    v55 = DocumentViewController.logPrefix.getter();
    OUTLINED_FUNCTION_89_18(v55, v56);
    OUTLINED_FUNCTION_12_1();

    *(v31 + 4) = v26;
    v57 = v190;
    *(v31 + 12) = 1024;
    *(v31 + 14) = v57 & 1;
    *(v31 + 18) = 1024;
    *(v31 + 20) = v26 & 1;
    _os_log_impl(&dword_1E323F000, v49, v50, "%s replaceInteractive: animated: %{BOOL}d, reloadData: %{BOOL}d", v31, 0x18u);
    __swift_destroy_boxed_opaque_existential_1(v53);
    v22 = v52;
    OUTLINED_FUNCTION_6_0();
    v31 = v196;
    OUTLINED_FUNCTION_6_0();
  }

  else
  {
    v54 = v48;
  }

  v58 = *(v31 + 8);
  v59 = v44;
  v60 = v195;
  v58(v59, v195);
  v61 = v194;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v62 = *(v61 + 56);
  if (!v62)
  {
    OUTLINED_FUNCTION_2_240();
    v110();
    v111 = v54;
    v112 = sub_1E41FFC94();
    sub_1E4206814();

    if (OUTLINED_FUNCTION_85_5())
    {
      OUTLINED_FUNCTION_6_21();
      v113 = OUTLINED_FUNCTION_16_2();
      OUTLINED_FUNCTION_130_15(v113);
      *v31 = 136315138;
      v114 = DocumentViewController.logPrefix.getter();
      OUTLINED_FUNCTION_89_18(v114, v115);
      OUTLINED_FUNCTION_6_19();

      *(v31 + 4) = v111;
      OUTLINED_FUNCTION_18_134();
      _os_log_impl(v116, v117, v118, v119, v120, 0xCu);
      OUTLINED_FUNCTION_24_18();
      OUTLINED_FUNCTION_7_9();

      v121 = v22;
      v122 = v60;
LABEL_26:
      v58(v121, v122);
LABEL_27:
      OUTLINED_FUNCTION_25_2();
      return;
    }

    goto LABEL_24;
  }

  v183 = v26;
  v63 = MEMORY[0x1E69E7D40];
  v64 = *((*MEMORY[0x1E69E7D40] & *v54) + 0x2F0);
  v65 = (*MEMORY[0x1E69E7D40] & *v54) + 752;

  v67 = v64(v66);
  if (!v67 || (OUTLINED_FUNCTION_35_10(v67), OUTLINED_FUNCTION_25(), swift_beginAccess(), v65 = v54[7], , , !v65))
  {
    v99 = v189;
    OUTLINED_FUNCTION_2_240();
    v100();
    v101 = v54;
    v102 = sub_1E41FFC94();
    sub_1E4206814();

    if (!OUTLINED_FUNCTION_85_5())
    {

      OUTLINED_FUNCTION_67_27();
      v121 = v99;
LABEL_25:
      v122 = v60;
      goto LABEL_26;
    }

    OUTLINED_FUNCTION_6_21();
    v22 = v99;
    v201[0] = OUTLINED_FUNCTION_16_2();
    v103 = OUTLINED_FUNCTION_119_9(4.8149e-34);
    OUTLINED_FUNCTION_89_18(v103, v104);
    OUTLINED_FUNCTION_122();

    *(v65 + 4) = v101;
    OUTLINED_FUNCTION_18_134();
    _os_log_impl(v105, v106, v107, v108, v109, 0xCu);
    OUTLINED_FUNCTION_5_175();
    OUTLINED_FUNCTION_7_9();

    goto LABEL_19;
  }

  v69 = v54;
  v70 = v60;
  v71 = OBJC_IVAR____TtC8VideosUI17TemplateViewModel_templateType;
  v72 = v62;
  if ((sub_1E39E3C28(*(v62 + OBJC_IVAR____TtC8VideosUI17TemplateViewModel_templateType), *(v65 + OBJC_IVAR____TtC8VideosUI17TemplateViewModel_templateType), v68) & 1) == 0)
  {
    OUTLINED_FUNCTION_21_114(&a13);
    OUTLINED_FUNCTION_5_227();
    v123();
    v124 = v54;

    v125 = sub_1E41FFC94();
    sub_1E4206814();

    if (OUTLINED_FUNCTION_85_5())
    {
      v126 = OUTLINED_FUNCTION_100();
      v127 = v65;
      v182 = v65;
      v128 = v126;
      v194 = swift_slowAlloc();
      v201[0] = v194;
      *v128 = 136315650;
      v129 = DocumentViewController.logPrefix.getter();
      OUTLINED_FUNCTION_89_18(v129, v130);
      OUTLINED_FUNCTION_6_19();

      *(v128 + 4) = v124;
      *(v128 + 12) = 2080;
      LOBYTE(v198) = *(v127 + v71);
      v134 = sub_1E3A7E090(v131, v132, v133);
      v135 = sub_1E4207944();
      v137 = OUTLINED_FUNCTION_89_18(v135, v136);

      *(v128 + 14) = v137;
      *(v128 + 22) = 2080;
      LOBYTE(v198) = v72[v71];
      v138 = sub_1E4207944();
      OUTLINED_FUNCTION_89_18(v138, v139);
      OUTLINED_FUNCTION_6_19();

      *(v128 + 24) = v134;
      OUTLINED_FUNCTION_18_134();
      _os_log_impl(v140, v141, v142, v143, v144, 0x20u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_46_1();
      OUTLINED_FUNCTION_7_9();
      OUTLINED_FUNCTION_151_3();

      OUTLINED_FUNCTION_67_27();
      v121 = v188;
    }

    else
    {

      OUTLINED_FUNCTION_67_27();
      v121 = v54;
    }

    v122 = v195;
    goto LABEL_26;
  }

  v182 = v65;
  v189 = v62;
  v73 = (*v63 & *v54) + 432;
  v74 = *((*v63 & *v54) + 0x1B0);
  v75 = v73;
  v76 = v74();
  if (!v76)
  {
    OUTLINED_FUNCTION_21_114(&a12);
    v60 = v70;
    OUTLINED_FUNCTION_5_227();
    v145();
    v146 = v54;
    v147 = sub_1E41FFC94();
    sub_1E4206814();

    if (OUTLINED_FUNCTION_85_5())
    {
      OUTLINED_FUNCTION_6_21();
      v201[0] = OUTLINED_FUNCTION_16_2();
      v148 = OUTLINED_FUNCTION_119_9(4.8149e-34);
      OUTLINED_FUNCTION_89_18(v148, v149);
      OUTLINED_FUNCTION_122();

      *(v75 + 4) = v146;
      OUTLINED_FUNCTION_18_134();
      _os_log_impl(v150, v151, v152, v153, v154, 0xCu);
      OUTLINED_FUNCTION_5_175();
      OUTLINED_FUNCTION_7_9();
      OUTLINED_FUNCTION_151_3();
      OUTLINED_FUNCTION_112_16();
    }

    else
    {

      OUTLINED_FUNCTION_151_3();
      OUTLINED_FUNCTION_112_16();
    }

LABEL_44:
    OUTLINED_FUNCTION_67_27();
    v121 = v54;
    goto LABEL_25;
  }

  v77 = v76;
  v60 = v70;
  if (![v76 vuiIsViewLoaded])
  {
    v22 = v186;
    OUTLINED_FUNCTION_2_240();
    v155();
    v156 = v54;
    v157 = sub_1E41FFC94();
    sub_1E4206814();

    if (OUTLINED_FUNCTION_85_5())
    {
      OUTLINED_FUNCTION_6_21();
      v158 = OUTLINED_FUNCTION_16_2();
      OUTLINED_FUNCTION_130_15(v158);
      v159 = OUTLINED_FUNCTION_119_9(4.8149e-34);
      OUTLINED_FUNCTION_89_18(v159, v160);
      OUTLINED_FUNCTION_122();

      *(v75 + 4) = v156;
      OUTLINED_FUNCTION_18_134();
      _os_log_impl(v161, v162, v163, v164, v165, 0xCu);
      OUTLINED_FUNCTION_24_18();
      OUTLINED_FUNCTION_7_9();
      OUTLINED_FUNCTION_151_3();
      OUTLINED_FUNCTION_112_16();

      OUTLINED_FUNCTION_67_27();
      v121 = v22;
      v122 = v70;
      goto LABEL_26;
    }

    OUTLINED_FUNCTION_151_3();
    OUTLINED_FUNCTION_112_16();

LABEL_19:
    OUTLINED_FUNCTION_67_27();
LABEL_24:
    v121 = v22;
    goto LABEL_25;
  }

  v78 = [v77 vuiView];
  if (v78)
  {
    v79 = v78;
    v80 = [v78 superview];

    v81 = v187;
    if (v80)
    {

      v82 = v74();
      if (v82 && (v197 = v82, sub_1E3280A90(0, &qword_1EE23B250, 0x1E69DD258), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3E400, &qword_1E42AA270), (swift_dynamicCast() & 1) != 0))
      {
        if (*(&v199 + 1))
        {
          sub_1E3251BE8(&v198, v201);
          OUTLINED_FUNCTION_2_240();
          v83();
          v84 = v54;
          v85 = sub_1E41FFC94();
          v86 = sub_1E4206814();

          if (os_log_type_enabled(v85, v86))
          {
            v87 = v81;
            v88 = OUTLINED_FUNCTION_6_21();
            *&v198 = OUTLINED_FUNCTION_100();
            *v88 = 136315138;
            v89 = DocumentViewController.logPrefix.getter();
            v91 = sub_1E3270FC8(v89, v90, &v198);

            *(v88 + 4) = v91;
            OUTLINED_FUNCTION_126_9();
            _os_log_impl(v92, v93, v94, v95, v96, 0xCu);
            OUTLINED_FUNCTION_24_18();
            OUTLINED_FUNCTION_65_0();

            v97 = v195;
            v98 = v87;
          }

          else
          {

            OUTLINED_FUNCTION_67_27();
            v98 = v81;
            v97 = v60;
          }

          v58(v98, v97);

          DocumentViewController.document.setter(v178);
          v179 = v202;
          v180 = v203;
          __swift_project_boxed_opaque_existential_1(v201, v202);
          (*(v180 + 8))(v189, v190 & 1, v183 & 1, v179, v180);

          OUTLINED_FUNCTION_151_3();

          __swift_destroy_boxed_opaque_existential_1(v201);
          goto LABEL_27;
        }
      }

      else
      {
        v200 = 0;
        v198 = 0u;
        v199 = 0u;
      }

      sub_1E325F748(&v198, &qword_1ECF2D948, &unk_1E42E5650);
      v54 = v185;
      OUTLINED_FUNCTION_2_240();
      v166();
      v167 = v69;
      v168 = sub_1E41FFC94();
      sub_1E4206814();

      if (OUTLINED_FUNCTION_85_5())
      {
        goto LABEL_42;
      }
    }

    else
    {
      v54 = v184;
      OUTLINED_FUNCTION_2_240();
      v169();
      v167 = v69;
      v168 = sub_1E41FFC94();
      sub_1E4206814();

      if (OUTLINED_FUNCTION_85_5())
      {
LABEL_42:
        OUTLINED_FUNCTION_6_21();
        v170 = OUTLINED_FUNCTION_16_2();
        OUTLINED_FUNCTION_130_15(v170);
        v171 = OUTLINED_FUNCTION_119_9(4.8149e-34);
        OUTLINED_FUNCTION_89_18(v171, v172);
        OUTLINED_FUNCTION_122();

        *(v75 + 4) = v167;
        OUTLINED_FUNCTION_18_134();
        _os_log_impl(v173, v174, v175, v176, v177, 0xCu);
        OUTLINED_FUNCTION_24_18();
        OUTLINED_FUNCTION_7_9();
        OUTLINED_FUNCTION_151_3();
        OUTLINED_FUNCTION_112_16();

        OUTLINED_FUNCTION_67_27();
        v121 = v54;
        v122 = v60;
        goto LABEL_26;
      }
    }

    OUTLINED_FUNCTION_151_3();
    OUTLINED_FUNCTION_112_16();

    goto LABEL_44;
  }

  __break(1u);
}

void DocumentViewController.showLoadingView(show:initialAlphaOfLoadingView:)()
{
  OUTLINED_FUNCTION_93();
  v4 = v3;
  v6 = v5;
  v7 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_35_3();
  v11 = sub_1E324FBDC();
  (*(v9 + 16))(v1, v11, v7);
  v12 = v0;
  v13 = sub_1E41FFC94();
  sub_1E4206814();

  if (OUTLINED_FUNCTION_75_3())
  {
    OUTLINED_FUNCTION_42_9();
    OUTLINED_FUNCTION_26_8();
    *v2 = 136315394;
    v14 = DocumentViewController.logPrefix.getter();
    OUTLINED_FUNCTION_49_1(v14, v15);
    OUTLINED_FUNCTION_94_1();

    *(v2 + 4) = v6;
    *(v2 + 12) = 1024;
    *(v2 + 14) = v6 & 1;
    OUTLINED_FUNCTION_50_52();
    _os_log_impl(v16, v17, v18, v19, v20, 0x12u);
    OUTLINED_FUNCTION_5_22();
    OUTLINED_FUNCTION_7_7();

    (*(v9 + 8))(v1, v7);
  }

  else
  {

    v21 = OUTLINED_FUNCTION_53();
    v23(v21, v22);
  }

  OUTLINED_FUNCTION_12_5();
  v25 = (*(v24 + 1168))(0);
  if (v6)
  {
    sub_1E400EE24();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3E408, &qword_1E42E5660);
    OUTLINED_FUNCTION_5_10();
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_1E4297BE0;
    *(v26 + 32) = v25;

    sub_1E383C8A8();
    sub_1E3F68814(v26);
    v28 = v27;
    if (*&v12[OBJC_IVAR____TtC8VideosUI22DocumentViewController_loadingViewManager])
    {
      OUTLINED_FUNCTION_8();
      (*(v29 + 232))(v12, v28, v4);
    }
  }

  else if (*&v12[OBJC_IVAR____TtC8VideosUI22DocumentViewController_loadingViewManager])
  {
    OUTLINED_FUNCTION_8();
    (*(v30 + 240))();
  }

  OUTLINED_FUNCTION_54_0();
}

Swift::Void __swiftcall DocumentViewController.removeLoadingViewAndRestoreTemplate()()
{
  OUTLINED_FUNCTION_31_1();
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_41();
  sub_1E324FBDC();
  OUTLINED_FUNCTION_0_11();
  v3();
  v4 = v0;
  v5 = sub_1E41FFC94();
  sub_1E4206814();

  if (OUTLINED_FUNCTION_34_9())
  {
    v6 = OUTLINED_FUNCTION_6_21();
    OUTLINED_FUNCTION_100();
    *v6 = 136315138;
    v7 = DocumentViewController.logPrefix.getter();
    OUTLINED_FUNCTION_58_0(v7, v8);
    OUTLINED_FUNCTION_34_3();
    *(v6 + 4) = v1;
    OUTLINED_FUNCTION_6_13(&dword_1E323F000, v9, v10, "%s hide loading spinner when restoring template");
    OUTLINED_FUNCTION_5_21();
    OUTLINED_FUNCTION_55();
  }

  v11 = OUTLINED_FUNCTION_74();
  v12(v11);
  v13 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_12_5();
  (*(v14 + 1080))(0, 1.0);
  OUTLINED_FUNCTION_36_3();
  v16 = (*((*v13 & v15) + 0x1B0))();
  if (!v16)
  {
    goto LABEL_6;
  }

  v17 = v16;
  [v4 vui:v16 addChildViewController:?];
  v18 = [v4 vuiView];
  if (v18)
  {
    v19 = v18;
    v20 = [v17 view];
    [v19 vui:v20 addSubview:0 oldView:?];

    [v17 vui:v4 didMoveToParentViewController:?];
LABEL_6:
    OUTLINED_FUNCTION_25_2();
    return;
  }

  __break(1u);
}

Swift::Void __swiftcall DocumentViewController.reconfigureNavigationBar()()
{
  sub_1E4010284();
  OUTLINED_FUNCTION_21();
  v1 = (*(v0 + 432))();
  if (v1)
  {
    v3 = v1;
    type metadata accessor for StackTemplateController(0);
    if (swift_dynamicCastClass())
    {
      OUTLINED_FUNCTION_64();
      (*(v2 + 2032))();
    }
  }
}

id sub_1E4010284()
{
  v1 = v0;
  swift_getKeyPath();
  sub_1E41FE2C4();
  OUTLINED_FUNCTION_36_3();
  v2 = MEMORY[0x1E69E7D40];
  v4 = *((*MEMORY[0x1E69E7D40] & v3) + 0x2F0);
  v5 = v4();
  if (v5)
  {
    v6 = v5;
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    v7 = *(v6 + 64);

    if (v7)
    {
      v9 = (*(*v7 + 488))(v8);
      if (v9)
      {
        v10 = v9;
        result = OUTLINED_FUNCTION_67_4();
        if (!result)
        {
LABEL_169:
          __break(1u);
          goto LABEL_170;
        }

        OUTLINED_FUNCTION_106();
        type metadata accessor for LayoutGrid();
        [v7 bounds];
        OUTLINED_FUNCTION_3();

        v221.origin.x = OUTLINED_FUNCTION_6();
        Width = CGRectGetWidth(v221);
        v13 = sub_1E3A2579C(Width);
        v200 = *(*v7 + 392);
        v14 = (v200)(v13);
        if (v14)
        {
          v15 = v14;
          v16 = [v1 vuiTraitCollection];
          sub_1E3C2AE10();
          v18 = v17;
          (*(*v15 + 1640))();
        }

        v208 = v7;
        if (v200())
        {
          OUTLINED_FUNCTION_144_0();
          type metadata accessor for NavigationBarLayout();
          OUTLINED_FUNCTION_22_53();
          v19 = swift_dynamicCastClass();
          if (v19)
          {
            v20 = v19;
            result = OUTLINED_FUNCTION_67_4();
            if (!result)
            {
LABEL_171:
              __break(1u);
              return result;
            }

            v21 = result;
            [result bounds];
            OUTLINED_FUNCTION_3();

            v222.origin.x = OUTLINED_FUNCTION_6();
            v22 = CGRectGetWidth(v222);
            v23 = [v1 vuiTraitCollection];
            (*(*v20 + 1832))(v22);

            v7 = v208;
          }

          else
          {
          }
        }

        result = OUTLINED_FUNCTION_67_4();
        if (!result)
        {
LABEL_170:
          __break(1u);
          goto LABEL_171;
        }

        v30 = result;
        [result bounds];
        OUTLINED_FUNCTION_3();

        v223.origin.x = OUTLINED_FUNCTION_6();
        v31 = CGRectGetWidth(v223);
        v32 = &v1[OBJC_IVAR____TtC8VideosUI22DocumentViewController_navBarCachedWidth];
        *v32 = v31;
        *(v32 + 8) = 0;
        v33 = OUTLINED_FUNCTION_83_21();
        v202 = sub_1E40166A8(v33, &selRef_leftBarButtonItems);
        v34 = OUTLINED_FUNCTION_83_21();
        v207 = sub_1E40166A8(v34, &selRef_rightBarButtonItems);
        v35 = OUTLINED_FUNCTION_83_21();
        v36 = [v35 titleView];

        v209 = 0;
        v210 = v36;
        LODWORD(v201) = (*((*v2 & *v1) + 0x458))();
        v37 = OUTLINED_FUNCTION_83_21();
        v206 = [v37 _largeTitleAccessoryView];

        if (v7[3])
        {
          v38 = v7[2];
          v39 = v7[3];
        }

        else
        {
          v38 = 0;
          v39 = 0xE000000000000000;
        }

        strcpy(&aBlock, "barButtonItem");
        HIWORD(aBlock) = -4864;

        MEMORY[0x1E69109E0](v38, v39);

        v41 = sub_1E373E010(23, v10, v40);
        if (v41)
        {
          if (*v41 == _TtC8VideosUI13TextViewModel)
          {
            v43 = OUTLINED_FUNCTION_18();
            v44 = sub_1E3C287F4(0, v43 & 1);
            if (v44)
            {
              v45 = v44;
              v46 = [v44 string];

              v47 = sub_1E4205F14();
              v49 = v48;

              v2 = MEMORY[0x1E69E7D40];

              v203 = v49;
              v204 = v47;
              v209 = v49;
            }

            else
            {

              v203 = 0;
              v204 = 0;
              v209 = 0;
            }

LABEL_27:
            if (sub_1E373E010(39, v10, v42))
            {
              type metadata accessor for ImageViewModel();
              v51 = swift_dynamicCastClass();
              if (v51 && ((v52 = v51, ![objc_opt_self() isMac]) || (sub_1E39DFFC8() & 1) != 0))
              {
                v53 = _s8VideosUIAAC19initializeUIFactoryyyFZ_0();
                v54 = OUTLINED_FUNCTION_138_10(v53);
                v55 = v52;
                v56 = v54;
                sub_1E393D9C4(v55, v36, &aBlock, 0);
                OUTLINED_FUNCTION_16_5();

                v2 = MEMORY[0x1E69E7D40];
                sub_1E325F748(&aBlock, &qword_1ECF296C0, &unk_1E429BBE0);

                v210 = v56;
              }

              else
              {
              }
            }

            if (sub_1E373E010(101, v10, v50))
            {
              OUTLINED_FUNCTION_26_0();
              if ((*(v58 + 464))())
              {
                OUTLINED_FUNCTION_134_8();
                sub_1E4013548(v59, v60, v61, v62);
                v64 = v63;

                v202 = v64;
              }

              else
              {
              }
            }

            if (sub_1E373E010(102, v10, v57))
            {
              OUTLINED_FUNCTION_26_0();
              if ((*(v65 + 464))())
              {
                OUTLINED_FUNCTION_134_8();
                sub_1E4013548(v66, v67, v68, v69);
                OUTLINED_FUNCTION_38();

                v207 = v1;
              }

              else
              {
              }
            }

            v71 = sub_1E373E010(103, v10, v70);

            v73 = v203;
            if (v71)
            {
              v74 = (*(*v71 + 464))(v72);
              LODWORD(v75) = v201;
              if (v74)
              {
                v76 = v74;
                result = sub_1E32AE9B0(v74);
                if (result)
                {
                  if ((v76 & 0xC000000000000001) != 0)
                  {
LABEL_167:
                    v77 = MEMORY[0x1E6911E60](0, v76);
                    goto LABEL_47;
                  }

                  if (*((v76 & 0xFFFFFFFFFFFFFF8) + 0x10))
                  {
                    v77 = *(v76 + 32);

LABEL_47:

                    v78 = _s8VideosUIAAC19initializeUIFactoryyyFZ_0();
                    v79 = OUTLINED_FUNCTION_138_10(v78);
                    v80 = sub_1E393D9C4(v77, v206, &aBlock, 0);

                    sub_1E325F748(&aBlock, &qword_1ECF296C0, &unk_1E429BBE0);
                    v206 = v80;
                    goto LABEL_51;
                  }

                  __break(1u);
                  goto LABEL_169;
                }
              }

              else
              {
              }
            }

            else
            {
              LODWORD(v75) = v201;
            }

LABEL_51:
            v81 = OUTLINED_FUNCTION_83_21();
            v82 = v81;
            if (v73)
            {
              v81 = sub_1E4205ED4();
              v83 = v81;
            }

            else
            {
              v83 = 0;
            }

            OUTLINED_FUNCTION_19_36(v81, sel_setTitle_);

            OUTLINED_FUNCTION_36_3();
            v85 = (*((*v2 & v84) + 0x1B0))();
            if (v85)
            {
              v86 = v85;
              ObjectType = swift_getObjectType();
              if (dynamic_cast_existential_1_conditional(v86, ObjectType, &protocol descriptor for TemplateUber))
              {
                OUTLINED_FUNCTION_49_4();
                v88 = swift_getObjectType();
                if (v83[1](v88, v83))
                {
                  if (([v1 vuiIsNavigationRoot] & 1) == 0)
                  {

                    LOBYTE(v89) = 1;
                    v90 = 1;
                    goto LABEL_64;
                  }

                  v89 = v83[2](v88, v83);

                  v90 = v89;
                  if (((v89 | v75) & 1) == 0)
                  {
                    goto LABEL_63;
                  }

                  goto LABEL_64;
                }
              }
            }

            if ((v75 & 1) == 0)
            {
LABEL_63:
              LOBYTE(v89) = 0;
              v90 = [v1 vuiIsNavigationRoot] ^ 1;
              goto LABEL_64;
            }

            LOBYTE(v89) = 0;
            v90 = 0;
LABEL_64:
            if ((sub_1E39DFFC8() & 1) != 0 || (v90 & 1) == 0)
            {
              goto LABEL_81;
            }

            v91 = OUTLINED_FUNCTION_83_21();
            v92 = [v91 titleView];

            if (v92)
            {
              type metadata accessor for UberNavigationBarTitleView();
              v93 = swift_dynamicCastClass();
              if (v93)
              {
                goto LABEL_71;
              }
            }

            type metadata accessor for UberNavigationBarTitleView();
            v94 = sub_1E39DFFC8();

            v95 = sub_1E398BFB8(v1, (v94 & 1) == 0, v204, v73);
            if (!v95)
            {
              goto LABEL_81;
            }

            v93 = v95;
LABEL_71:
            OUTLINED_FUNCTION_25();
            swift_beginAccess();
            v96 = v210;
            OUTLINED_FUNCTION_21();
            v98 = *(v97 + 208);
            v99 = v96;
            v98(v96);
            [v1 vuiIsNavigationRoot];
            OUTLINED_FUNCTION_26_3();
            (*((*v2 & v100) + 0x160))();
            OUTLINED_FUNCTION_3_0(&v210, v215);
            v101 = v210;
            v210 = v93;

            v102 = v93;
            v103 = OUTLINED_FUNCTION_83_21();
            OUTLINED_FUNCTION_25();
            swift_beginAccess();
            if (v209)
            {

              v104 = sub_1E4205ED4();
            }

            else
            {
              v104 = 0;
            }

            [v103 setBackButtonTitle_];

            v73 = v203;
            LOBYTE(v75) = v201;
            if (v89)
            {
              v105 = [v1 transitionCoordinator];
              if (v105)
              {
                v106 = v105;
                OUTLINED_FUNCTION_4_0();
                v107 = swift_allocObject();
                *(v107 + 16) = v102;
                v213 = sub_1E4016F7C;
                v214 = v107;
                *&aBlock = MEMORY[0x1E69E9820];
                *(&aBlock + 1) = 1107296256;
                OUTLINED_FUNCTION_41_66();
                *&v212 = v108;
                *(&v212 + 1) = &block_descriptor_78_1;
                v109 = _Block_copy(&aBlock);
                v110 = v102;

                [v106 animateAlongsideTransition:0 completion:v109];
                _Block_release(v109);
                swift_unknownObjectRelease();
              }

              else
              {
                OUTLINED_FUNCTION_21();
                (*(v111 + 480))();
              }
            }

LABEL_81:
            v112 = OUTLINED_FUNCTION_83_21();
            OUTLINED_FUNCTION_25();
            swift_beginAccess();
            v201 = v210;
            [v112 setTitleView_];

            v113 = OUTLINED_FUNCTION_83_21();
            v114 = v113;
            if (v202)
            {
              sub_1E3280A90(0, qword_1EE23B2E0, 0x1E69DC708);
              v115 = sub_1E42062A4();
            }

            else
            {
              v115 = 0;
            }

            v116 = v207;
            OUTLINED_FUNCTION_19_36(v113, sel_setLeftBarButtonItems_);

            v117 = OUTLINED_FUNCTION_83_21();
            v118 = v117;
            if (v207)
            {
              sub_1E3280A90(0, qword_1EE23B2E0, 0x1E69DC708);
              v117 = sub_1E42062A4();
              v119 = v117;
            }

            else
            {
              v119 = 0;
            }

            OUTLINED_FUNCTION_19_36(v117, sel_setRightBarButtonItems_);

            if (v75)
            {
              v120 = OUTLINED_FUNCTION_83_21();
              [v120 setLargeTitleDisplayMode_];
            }

            v121 = OUTLINED_FUNCTION_83_21();
            if (v75)
            {
              OUTLINED_FUNCTION_12_5();
              v123 = (*(v122 + 1192))();
            }

            else
            {
              v123 = 2;
            }

            [v121 setLargeTitleDisplayMode_];

            v124 = OUTLINED_FUNCTION_83_21();
            [v124 _setSupportsTwoLineLargeTitles_];

            v125 = OUTLINED_FUNCTION_83_21();
            [v125 _setLargeTitleAccessoryView_];

            if (v73)
            {
              v126 = HIBYTE(v73) & 0xF;
              if ((v73 & 0x2000000000000000) == 0)
              {
                v126 = v204 & 0xFFFFFFFFFFFFLL;
              }

              if (v126)
              {
                sub_1E3280A90(0, &qword_1EE23B1B0, 0x1E696AAB0);

                v127 = sub_1E3763FC8(v204, v73);
                v128 = [objc_allocWithZone(MEMORY[0x1E69DB7C8]) init];
                [v128 setLineBreakMode_];
                v129 = type metadata accessor for LanguageAwareString();
                v130 = v127;
                v205 = v128;
                v131 = sub_1E3D36A44();
                v132 = LanguageAwareString.__allocating_init(_:baseParagraphStyle:keepStatisticsOnLanguageComponents:)(v130, v128, v131 & 1);
                OUTLINED_FUNCTION_64();
                v134 = (*(v133 + 232))();
                v135 = *MEMORY[0x1E69DB688];
                v136 = [v134 attribute:*MEMORY[0x1E69DB688] atIndex:0 effectiveRange:0];

                if (v136)
                {
                  sub_1E4207264();
                  swift_unknownObjectRelease();
                }

                else
                {
                  v219 = 0u;
                  v220 = 0u;
                }

                aBlock = v219;
                v212 = v220;
                v137 = OUTLINED_FUNCTION_110_13();
                if (v137 && (v134 = OUTLINED_FUNCTION_152_8(v137), v136, (v138 = sub_1E4016610(v134, &selRef_titleTextAttributes)) != 0))
                {
                  v139 = v138;
                }

                else
                {
                  type metadata accessor for Key(0);
                  v139 = v140;
                  OUTLINED_FUNCTION_0_319();
                  sub_1E40172E0(v141, v142);
                  sub_1E4205CB4();
                  OUTLINED_FUNCTION_106();
                }

                sub_1E379539C(&aBlock, &v219, &unk_1ECF296E0, &unk_1E4298030);
                if (*(&v220 + 1))
                {
                  sub_1E329504C(&v219, &v217);
                  v143 = v135;
                  OUTLINED_FUNCTION_112();
                  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                  v216 = v139;
                  sub_1E4016360(&v217, v134, isUniquelyReferenced_nonNull_native);
                }

                else
                {
                  v145 = v135;
                  sub_1E325F748(&v219, &unk_1ECF296E0, &unk_1E4298030);
                  sub_1E37C375C(v145);
                  if (v146)
                  {
                    OUTLINED_FUNCTION_112();
                    swift_isUniquelyReferenced_nonNull_native();
                    v216 = v139;
                    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3E4D8, qword_1E42E5908);
                    sub_1E4207644();
                    v147 = v216;

                    sub_1E329504C((*(v147 + 56) + 32 * v145), &v217);
                    type metadata accessor for Key(0);
                    v129 = v148;
                    OUTLINED_FUNCTION_0_319();
                    sub_1E40172E0(v149, v150);
                    sub_1E4207664();
                  }

                  else
                  {
                    v217 = 0u;
                    v218 = 0u;
                  }

                  sub_1E325F748(&v217, &unk_1ECF296E0, &unk_1E4298030);
                }

                v151 = OUTLINED_FUNCTION_110_13();
                if (v151)
                {
                  v152 = v151;
                  v129 = [v151 navigationBar];

                  type metadata accessor for Key(0);
                  OUTLINED_FUNCTION_0_319();
                  sub_1E40172E0(v153, v154);
                  v155 = sub_1E4205C44();
                  [v129 setTitleTextAttributes_];
                }

                v156 = OUTLINED_FUNCTION_110_13();
                if (v156 && (v157 = v156, v129 = [v156 navigationBar], v157, (v158 = sub_1E4016610(v129, &selRef_largeTitleTextAttributes)) != 0))
                {
                  v159 = v158;
                }

                else
                {
                  type metadata accessor for Key(0);
                  v159 = v160;
                  OUTLINED_FUNCTION_0_319();
                  sub_1E40172E0(v161, v162);
                  sub_1E4205CB4();
                  OUTLINED_FUNCTION_144_0();
                }

                sub_1E379539C(&aBlock, &v219, &unk_1ECF296E0, &unk_1E4298030);
                if (*(&v220 + 1))
                {
                  sub_1E329504C(&v219, &v217);
                  v163 = swift_isUniquelyReferenced_nonNull_native();
                  v216 = v159;
                  v164 = &v216;
                  sub_1E4016360(&v217, v135, v163);

                  v159 = v216;
                  v116 = v207;
                }

                else
                {
                  sub_1E325F748(&v219, &unk_1ECF296E0, &unk_1E4298030);
                  v164 = v159;
                  sub_1E37C375C(v135);
                  if (v165)
                  {
                    OUTLINED_FUNCTION_104_17();
                    swift_isUniquelyReferenced_nonNull_native();
                    v216 = v159;
                    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3E4D8, qword_1E42E5908);
                    sub_1E4207644();
                    v159 = v216;

                    sub_1E329504C((*(v159 + 56) + 32 * v129), &v217);
                    type metadata accessor for Key(0);
                    v164 = v166;
                    OUTLINED_FUNCTION_0_319();
                    sub_1E40172E0(v167, v168);
                    OUTLINED_FUNCTION_53();
                    sub_1E4207664();
                  }

                  else
                  {
                    v217 = 0u;
                    v218 = 0u;
                  }

                  v116 = v207;

                  sub_1E325F748(&v217, &unk_1ECF296E0, &unk_1E4298030);
                }

                v169 = OUTLINED_FUNCTION_110_13();
                if (v169)
                {
                  v170 = OUTLINED_FUNCTION_152_8(v169);

                  sub_1E401654C(v159, v170);
                }

                else
                {
                }

                sub_1E325F748(&aBlock, &unk_1ECF296E0, &unk_1E4298030);
                v2 = MEMORY[0x1E69E7D40];
              }
            }

            sub_1E40088D4();
            v171 = OUTLINED_FUNCTION_110_13();
            if (v171)
            {
              v172 = v171;
              v173 = [v171 viewControllers];

              sub_1E3280A90(0, &qword_1EE23B250, 0x1E69DD258);
              v174 = sub_1E42062B4();

              v175 = sub_1E37CB21C(v174);

              if (v175)
              {
                v176 = [v175 vuiChildViewControllers];
                v177 = sub_1E42062B4();

                sub_1E37CB21C(v177);
                OUTLINED_FUNCTION_112();

                if (v175 == v1)
                {
                  goto LABEL_133;
                }

                if (v176)
                {
                  if (v176 != v1)
                  {

                    v178 = v201;
                    v179 = v176;
LABEL_140:
                    OUTLINED_FUNCTION_12_5();
                    v182 = *(v181 + 1128);

                    v182(v183);

                    *&v219 = v1;
                    swift_getKeyPath();
                    sub_1E41FE2D4();
                  }

LABEL_133:
                  v202 = v176;
                  v76 = v1;
                  sub_1E40D8DE0();
                  if (v180)
                  {
                    v76 = v1;
                    sub_1E40D8E58(1.0);
                  }

                  v204 = OBJC_IVAR____TtC8VideosUI22DocumentViewController_navBarTintColor;
                  if (!*&v1[OBJC_IVAR____TtC8VideosUI22DocumentViewController_navBarTintColor])
                  {

                    if ((sub_1E39E01A4() & 1) == 0)
                    {
                      v184 = OUTLINED_FUNCTION_110_13();
                      if (v184)
                      {
                        v185 = OUTLINED_FUNCTION_152_8(v184);

                        [v185 setTintColor_];
                      }
                    }

                    goto LABEL_159;
                  }

                  if ((sub_1E39E01A4() & 1) == 0)
                  {
                    if (!v116)
                    {
                      goto LABEL_159;
                    }

                    v76 = sub_1E32AE9B0(v116);
                    v186 = 0;
                    v73 = v116 & 0xC000000000000001;
                    v75 = v116 & 0xFFFFFFFFFFFFFF8;
                    while (v76 != v186)
                    {
                      if (v73)
                      {
                        v187 = MEMORY[0x1E6911E60](v186, v116);
                      }

                      else
                      {
                        if (v186 >= *(v75 + 16))
                        {
                          goto LABEL_166;
                        }

                        v187 = *(v116 + 8 * v186 + 32);
                      }

                      v188 = v187;
                      if (__OFADD__(v186, 1))
                      {
                        __break(1u);
LABEL_166:
                        __break(1u);
                        goto LABEL_167;
                      }

                      v189 = [v187 customView];
                      if (v189)
                      {
                        v190 = v189;
                        objc_opt_self();
                        v191 = swift_dynamicCastObjCClass();
                        if (v191)
                        {
                          v192 = v191;
                          v193 = *&v1[v204];
                          [v192 setTintColor_];
                        }

                        else
                        {
                          v193 = v188;
                          v188 = v190;
                        }

                        v116 = v207;

                        v2 = MEMORY[0x1E69E7D40];
                      }

                      ++v186;
                    }
                  }

LABEL_159:
                  if (sub_1E39E01A4())
                  {
                    v178 = v201;
                    v179 = v202;
                  }

                  else
                  {
                    v194 = OUTLINED_FUNCTION_110_13();
                    v178 = v201;
                    v179 = v202;
                    if (v194)
                    {
                      v195 = OUTLINED_FUNCTION_152_8(v194);

                      if (v200())
                      {
                        OUTLINED_FUNCTION_26_0();
                        (*(v196 + 152))(&aBlock);
                      }

                      v197 = OUTLINED_FUNCTION_6();
                      [v198 v199];
                    }
                  }

                  goto LABEL_140;
                }
              }

              v179 = 0;
            }

            else
            {

              v179 = 0;
              v175 = 0;
            }

            v178 = v201;
            goto LABEL_140;
          }
        }

        v203 = 0;
        v204 = 0;
        goto LABEL_27;
      }
    }
  }

  v24 = OUTLINED_FUNCTION_83_21();
  [v24 setLargeTitleDisplayMode_];

  v25 = OUTLINED_FUNCTION_83_21();
  [v25 _setSupportsTwoLineLargeTitles_];

  v26 = v4();
  if (v26)
  {
    v27 = v26;
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    v28 = *(v27 + 64);
  }

  else
  {
    v28 = 0;
  }

  OUTLINED_FUNCTION_12_5();
  (*(v29 + 1128))(v28);

  *&v219 = v1;
  swift_getKeyPath();
  return sub_1E41FE2D4();
}

Swift::Void __swiftcall DocumentViewController.storeNavigationBarAppearanceValues()()
{
  OUTLINED_FUNCTION_93();
  v2 = v0;
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_139();
  v4 = [v0 vuiNavigationController];
  if (v4)
  {
    v5 = v4;
    v28 = [v4 navigationBar];
  }

  else
  {
    v28 = 0;
  }

  v6 = [v2 vuiNavigationItem];
  v7 = [v6 largeTitleDisplayMode];

  if (v7 == 1)
  {
    LOBYTE(v8) = 1;
  }

  else
  {
    v8 = v7 == 3;
    if (!v7)
    {
      LOBYTE(v8) = (*((*MEMORY[0x1E69E7D40] & *v2) + 0x458))(v8);
    }
  }

  *(v2 + OBJC_IVAR____TtC8VideosUI22DocumentViewController_navBarPrefersLargeTitles) = v8 & 1;
  v9 = [v2 vuiNavigationItem];
  sub_1E3B62028();
  v11 = v10;

  v12 = v2 + OBJC_IVAR____TtC8VideosUI22DocumentViewController_navBarOpacity;
  *v12 = v11;
  v12[8] = 0;
  if (sub_1E39E01A4())
  {
    OUTLINED_FUNCTION_54_0();
  }

  else
  {
    sub_1E324FBDC();
    OUTLINED_FUNCTION_0_11();
    v15 = OUTLINED_FUNCTION_33_14();
    v16(v15);
    v17 = v2;
    v18 = sub_1E41FFC94();
    sub_1E4206814();

    if (OUTLINED_FUNCTION_34_9())
    {
      v19 = OUTLINED_FUNCTION_6_21();
      OUTLINED_FUNCTION_100();
      *v19 = 136315138;
      v20 = DocumentViewController.logPrefix.getter();
      OUTLINED_FUNCTION_49_1(v20, v21);
      OUTLINED_FUNCTION_34_3();
      *(v19 + 4) = v1;
      OUTLINED_FUNCTION_6_13(&dword_1E323F000, v22, v23, "%s storeNavigationBarAppearanceValues: store navBarTintColor");
      OUTLINED_FUNCTION_5_21();
      OUTLINED_FUNCTION_55();
    }

    v24 = OUTLINED_FUNCTION_13_8();
    v25(v24);
    v26 = [v29 tintColor];

    v27 = *(v17 + OBJC_IVAR____TtC8VideosUI22DocumentViewController_navBarTintColor);
    *(v17 + OBJC_IVAR____TtC8VideosUI22DocumentViewController_navBarTintColor) = v26;

    OUTLINED_FUNCTION_54_0();
  }
}

Swift::Bool __swiftcall DocumentViewController.navigationBarPrefersLargeTitle()()
{
  v1 = v0;
  OUTLINED_FUNCTION_21();
  v3 = (*(v2 + 752))();
  if (v3)
  {
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    v4 = *(v3 + 64);

    if (!v4)
    {
LABEL_16:
      LOBYTE(v3) = 0;
      return v3 & 1;
    }

    OUTLINED_FUNCTION_8();
    if (!(*(v5 + 488))())
    {
LABEL_15:

      goto LABEL_16;
    }

    v21[3] = &unk_1F5D5DBE8;
    v21[4] = &off_1F5D5C9D8;
    LOBYTE(v21[0]) = 0;
    LOBYTE(v3) = sub_1E39C29F0(v21, 1);
    __swift_destroy_boxed_opaque_existential_1(v21);
    v6 = [v1 vuiNavigationController];
    if (v6)
    {
      v7 = v6;
      v8 = [v6 topViewController];

      if (v8)
      {

        if (v8 == v1)
        {
          v9 = [v1 vuiNavigationController];
          if (v9)
          {
            v10 = v9;
            v11 = [v9 viewControllers];

            sub_1E3280A90(0, &qword_1EE23B250, 0x1E69DD258);
            OUTLINED_FUNCTION_22_53();
            v12 = sub_1E42062B4();

            v13 = sub_1E4012160(1, v12);
            v17 = sub_1E400DF14(v13, v14, v15, v16);
            swift_unknownObjectRelease();
            if (v17)
            {
              type metadata accessor for CanonicalDocumentViewController(0);
              v18 = swift_dynamicCastClass();
              if (!v18)
              {

                return v3 & 1;
              }

              if (v3)
              {
                v3 = [v18 vuiNavigationItem];
                v19 = [v3 largeTitleDisplayMode];

                LOBYTE(v3) = v19 != 2;
                return v3 & 1;
              }

              goto LABEL_15;
            }
          }
        }
      }
    }
  }

  return v3 & 1;
}

unint64_t sub_1E4012160(uint64_t a1, unint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_17;
  }

  v4 = sub_1E32AE9B0(a2);
  if (__OFSUB__(v4, a1))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    v12 = sub_1E4207704();

    return v12;
  }

  v5 = (v4 - a1) & ~((v4 - a1) >> 63);
  v6 = sub_1E32AE9B0(a2);
  v7 = sub_1E380055C(0, v5, v6);
  if (v8)
  {
    v9 = v6;
  }

  else
  {
    v9 = v7;
  }

  if (v9 < 0)
  {
    goto LABEL_18;
  }

  sub_1E37EFABC(0, a2);
  sub_1E37EFABC(v9, a2);
  if ((a2 & 0xC000000000000001) != 0 && v9)
  {
    sub_1E3280A90(0, &qword_1EE23B250, 0x1E69DD258);

    v10 = 0;
    do
    {
      v11 = v10 + 1;
      sub_1E42074F4();
      v10 = v11;
    }

    while (v9 != v11);
  }

  else
  {
  }

  if (a2 >> 62)
  {
    goto LABEL_19;
  }

  return a2 & 0xFFFFFFFFFFFFFF8;
}

void *DocumentViewController.barButtonContentView(from:existing:)()
{
  v0 = *_s8VideosUIAAC19initializeUIFactoryyyFZ_0();
  v8 = 0;
  memset(v7, 0, sizeof(v7));
  v1 = v0;
  v2 = OUTLINED_FUNCTION_16_0();
  v5 = sub_1E393D9C4(v2, v3, v4, 0);

  sub_1E325F748(v7, &qword_1ECF296C0, &unk_1E429BBE0);
  return v5;
}

void DocumentViewController.didConfigureNavigationBar(with:)()
{
  OUTLINED_FUNCTION_21();
  v2 = (*(v1 + 432))();
  if (v2)
  {
    v7 = v2;
    ObjectType = swift_getObjectType();
    if (dynamic_cast_existential_1_conditional(v7, ObjectType, &protocol descriptor for TemplateNavigationBarUpdating))
    {
      v5 = v4;
      v6 = swift_getObjectType();
      (*(v5 + 8))(v0, v6, v5);
    }
  }
}

Swift::Void __swiftcall DocumentViewController.scrollToTop(animated:needsFocusUpdate:)(Swift::Bool animated, Swift::Bool needsFocusUpdate)
{
  OUTLINED_FUNCTION_21();
  v6 = (*(v5 + 432))();
  if (v6)
  {
    v9 = v6;
    ObjectType = swift_getObjectType();
    if (dynamic_cast_existential_1_conditional(v9, ObjectType, &protocol descriptor for TemplateScrollable))
    {
      OUTLINED_FUNCTION_49_4();
      v8 = swift_getObjectType();
      (*(v2 + 8))(animated, needsFocusUpdate, v8);
    }
  }
}

UINavigationItemLargeTitleDisplayMode __swiftcall DocumentViewController.defaultLargeTitleDisplayMode()()
{
  if (![v0 vuiIsNavigationRoot])
  {
    return 1;
  }

  v1 = [v0 presentingViewController];
  if (v1)
  {

    return 1;
  }

  if (sub_1E39DFFC8())
  {
    return 3;
  }

  if ([objc_opt_self() isPad])
  {
    return 1;
  }

  return 3;
}

id DocumentViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_1E4205ED4();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

void (*sub_1E4012858())(void *a1)
{
  v1 = OUTLINED_FUNCTION_12_11();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_57_36(v2);
  OUTLINED_FUNCTION_21();
  *(v0 + 32) = (*(v3 + 624))();
  return sub_1E37C55D4;
}

void (*sub_1E4012960())(void *a1)
{
  v1 = OUTLINED_FUNCTION_12_11();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_57_36(v2);
  OUTLINED_FUNCTION_21();
  *(v0 + 32) = (*(v3 + 648))();
  return sub_1E37C55D4;
}

void (*sub_1E4012A68())(void *a1)
{
  v1 = OUTLINED_FUNCTION_12_11();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_57_36(v2);
  OUTLINED_FUNCTION_21();
  *(v0 + 32) = (*(v3 + 672))();
  return sub_1E37C55D4;
}

void (*sub_1E4012B70())(void *a1)
{
  v1 = OUTLINED_FUNCTION_12_11();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_57_36(v2);
  OUTLINED_FUNCTION_21();
  *(v0 + 32) = (*(v3 + 696))();
  return sub_1E37C4BF8;
}

Swift::Void __swiftcall DocumentViewController.navigationController(_:didShow:animated:)(UINavigationController *_, UIViewController *didShow, Swift::Bool animated)
{
  v6 = [(UINavigationController *)_ viewControllers];
  sub_1E3280A90(0, &qword_1EE23B250, 0x1E69DD258);
  v7 = sub_1E42062B4();

  sub_1E32AE9B0(v7);
  OUTLINED_FUNCTION_104_17();

  v8 = [(UINavigationController *)_ interactivePopGestureRecognizer];
  v9 = v8;
  if (v4 < 2)
  {
    if (v8)
    {
      [(UIGestureRecognizer *)v8 setEnabled:0];
    }

    v11 = [(UINavigationController *)_ interactivePopGestureRecognizer];
    if (v11)
    {
      v12 = v11;
      [(UIGestureRecognizer *)v11 setDelegate:0];
      goto LABEL_10;
    }
  }

  else
  {
    if (v8)
    {
      [(UIGestureRecognizer *)v8 setEnabled:1];
    }

    v10 = [(UINavigationController *)_ interactivePopGestureRecognizer];
    if (v10)
    {
      v12 = v10;
      [(UIGestureRecognizer *)v10 setDelegate:v3];
LABEL_10:
    }
  }
}

Swift::Void __swiftcall DocumentViewController.reportPageEvent()()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_26_3();
  v3 = MEMORY[0x1E69E7D40];
  v5 = (*((*MEMORY[0x1E69E7D40] & v4) + 0x2F0))();
  if (v5)
  {
    v6 = v5;
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    v7 = v6[7];

    if (v7)
    {
      OUTLINED_FUNCTION_8();
      (*(v8 + 576))();
      OUTLINED_FUNCTION_122();

      (*(*v6 + 128))(v9);
      OUTLINED_FUNCTION_16_5();

      v10 = objc_opt_self();
      v11 = [v10 sharedInstance];
      v12 = [v11 lastRecordedPageEventData];

      v13 = [v12 generateMetricsDataDictionary];
      sub_1E4205C64();

      v14 = [v10 sharedInstance];
      v15 = OUTLINED_FUNCTION_122();
      sub_1E3744600(v15);
      OUTLINED_FUNCTION_6_19();

      v16 = sub_1E4205C44();

      v17 = sub_1E4205C44();

      LOBYTE(v12) = [v10 arePageEventsIdentical:v16 previousPage:v17];

      if (v12)
      {
        sub_1E324FBDC();
        v18 = OUTLINED_FUNCTION_33_14();
        v19(v18);
        v20 = v1;
        v21 = sub_1E41FFC94();
        v22 = sub_1E4206814();

        if (os_log_type_enabled(v21, v22))
        {
          v23 = OUTLINED_FUNCTION_6_21();
          v29 = OUTLINED_FUNCTION_100();
          *v23 = 136315138;
          v24 = DocumentViewController.logPrefix.getter();
          v26 = sub_1E3270FC8(v24, v25, &v29);

          *(v23 + 4) = v26;
          OUTLINED_FUNCTION_126_0(&dword_1E323F000, v21, v22, "%s VUIMetricsReportPageOverrideDelegate reportPageEvent called but page event is same as last one");
          OUTLINED_FUNCTION_5_21();
          OUTLINED_FUNCTION_21_0();
        }

        v27 = OUTLINED_FUNCTION_13_8();
        v28(v27);
      }

      else
      {
        (*((*v3 & *v1) + 0x410))();
      }
    }
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E40131E4(uint64_t a1)
{
  v1 = a1;
  sub_1E41FFBF4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_42_1();
  if ((byte_1EE29AC60 & 1) == 0)
  {
    byte_1EE29AC60 = 1;
    v3 = sub_1E4206B94();
    v4 = VUISignpostLogObject(v3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30870, &unk_1E429CE30);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1E4297BE0;
    v6 = sub_1E4123DE4(v1);
    v8 = v7;
    *(v5 + 56) = MEMORY[0x1E69E6158];
    *(v5 + 64) = sub_1E3283528(v6, v7, v9);
    *(v5 + 32) = v6;
    *(v5 + 40) = v8;
    sub_1E41FFBE4();
    sub_1E41FFB94();

    v10 = OUTLINED_FUNCTION_16_0();
    v11(v10);
  }
}

void sub_1E4013378()
{
  OUTLINED_FUNCTION_31_1();
  v4 = v3;
  OUTLINED_FUNCTION_106();
  v5 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_35_3();
  v9 = sub_1E324FBDC();
  (*(v7 + 16))(v1, v9, v5);
  v10 = v0;
  v11 = sub_1E41FFC94();
  sub_1E4206814();

  if (OUTLINED_FUNCTION_75_3())
  {
    OUTLINED_FUNCTION_6_21();
    OUTLINED_FUNCTION_26_8();
    *v4 = 136315138;
    v12 = DocumentViewController.logPrefix.getter();
    OUTLINED_FUNCTION_58_0(v12, v13);
    OUTLINED_FUNCTION_94_1();

    *(v4 + 4) = v2;
    OUTLINED_FUNCTION_50_52();
    _os_log_impl(v14, v15, v16, v17, v18, 0xCu);
    OUTLINED_FUNCTION_5_22();
    OUTLINED_FUNCTION_6_0();
  }

  (*(v7 + 8))(v1, v5);
  (*((*MEMORY[0x1E69E7D40] & *v10) + 0x438))(0, 1.0);
  [v4 vui:v10 didMoveToParentViewController:?];
  [v4 vui_endAppearanceTransition];
  OUTLINED_FUNCTION_25_2();
}

void sub_1E4013548(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v89 = 0;
  if (a2)
  {
    v85 = MEMORY[0x1E69E7CC0];
    v5 = sub_1E32AE9B0(a2);
    for (i = 0; v5 != i; ++i)
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x1E6911E60](i, a2);
      }

      else
      {
        if (i >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_64;
        }

        v7 = *(a2 + 8 * i + 32);
      }

      v8 = v7;
      if (__OFADD__(i, 1))
      {
        goto LABEL_63;
      }

      if ([v7 isSystemItem] && objc_msgSend(v8, sel_systemItem) == 6)
      {
      }

      else
      {
        sub_1E4207544();
        sub_1E4207584();
        sub_1E4207594();
        sub_1E4207554();
      }
    }

    v9 = v85;
  }

  else
  {
    v9 = 0;
  }

  v10 = 0;
  v81 = sub_1E32AE9B0(a1);
  while (1)
  {
    if (v81 == v10)
    {

      return;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v11 = MEMORY[0x1E6911E60](v10, a1);
    }

    else
    {
      if (v10 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_62;
      }

      v11 = *(a1 + 8 * v10 + 32);
    }

    if (__OFADD__(v10, 1))
    {
      break;
    }

    OUTLINED_FUNCTION_12_5();
    v12 += 54;
    v13 = *v12;
    v19 = (*v12)(v14, v15, v16, v17, v18);
    if (v19)
    {
      v22 = v19;
      swift_getObjectType();
      v23 = OUTLINED_FUNCTION_22_53();
      if (dynamic_cast_existential_1_conditional(v23, v24, &protocol descriptor for TemplateBarButtonProviding))
      {
        v26 = v25;
        ObjectType = swift_getObjectType();
        v28 = (*(v26 + 8))(v11, ObjectType, v26);

        if (v28)
        {
          goto LABEL_41;
        }
      }

      else
      {
      }
    }

    v87 = &unk_1F5D5D0A8;
    v88 = &off_1F5D5C758;
    LOBYTE(v85) = 13;
    sub_1E4016A3C(v19, v20, v21);
    sub_1E39C2B80();
    v29 = __swift_destroy_boxed_opaque_existential_1(&v85);
    if (v84 != 2)
    {
      LOBYTE(v85) = v84;
      LOBYTE(v83) = 1;
      sub_1E3751D5C(v29, v30, v31);
      if (sub_1E4205E84())
      {
        v32 = sub_1E3F8A0A4();
        v34 = v33;
        sub_1E3280A90(0, qword_1EE23B2E0, 0x1E69DC708);
        sub_1E3280A90(0, &unk_1ECF3BDE0, 0x1E69DC628);
        OUTLINED_FUNCTION_4_0();
        v35 = v9;
        v36 = swift_allocObject();
        v41 = v13(v36, v37, v38, v39, v40);
        swift_unknownObjectWeakInit();

        OUTLINED_FUNCTION_5_10();
        v42 = swift_allocObject();
        v42[2] = v36;
        v42[3] = v32;
        v9 = v35;
        v42[4] = v34;

        v75 = 0;
        v76 = 0;
        v78 = sub_1E4016A90;
        v79 = v42;
        v77 = 0;
        OUTLINED_FUNCTION_25();
        sub_1E4206FA4();
        v28 = sub_1E4206864();

LABEL_41:
        if (sub_1E39DFFC8())
        {
          v87 = &unk_1F5D5DAC8;
          v88 = &off_1F5D5C998;
          LOBYTE(v85) = 44;
          v51 = sub_1E39C29F0(&v85, 1);
          __swift_destroy_boxed_opaque_existential_1(&v85);
          [v28 _setPrefersNoPlatter_];
        }

        v52 = type metadata accessor for Accessibility();
        OUTLINED_FUNCTION_47_0();
        (*(v53 + 320))(v54, v55, v56, v57, v58);
        sub_1E40A7DC8();
        OUTLINED_FUNCTION_49_4();

        v59 = v28;
        v60 = OUTLINED_FUNCTION_94_1();
        sub_1E37FB7F0(v60, v52, v28, &selRef_setAccessibilityIdentifier_);
        v87 = &unk_1F5D5DAC8;
        v88 = &off_1F5D5C998;
        LOBYTE(v85) = 1;
        sub_1E39C29A4(&v85);
        OUTLINED_FUNCTION_49_4();
        __swift_destroy_boxed_opaque_existential_1(&v85);
        if (v52)
        {
          [v28 setIsAccessibilityElement_];
          sub_1E37FB7F0(v11, v52, v28, &selRef_setAccessibilityLabel_);
        }

        v61 = v89;
        if (v89)
        {
          if (v89 >> 62)
          {
            if (sub_1E4207384())
            {
              goto LABEL_48;
            }
          }

          else if (*((v89 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
LABEL_48:
            if ((sub_1E39DFFC8() & 1) == 0)
            {
              sub_1E3280A90(0, qword_1EE23B2E0, 0x1E69DC708);
              v62 = sub_1E4206864();
              [v62 setWidth_];
              v63 = v62;
              MEMORY[0x1E6910BF0](v63, v64, v65, v66, v67);
              OUTLINED_FUNCTION_131_14();
              if (v68)
              {
                OUTLINED_FUNCTION_141_10();
              }

              sub_1E4206324();

              v61 = v89;
              if (!v89)
              {
                goto LABEL_52;
              }
            }
          }
        }

        else
        {
LABEL_52:
          v61 = MEMORY[0x1E69E7CC0];
        }

        v89 = v61;
        v69 = v28;
        MEMORY[0x1E6910BF0](v69, v70, v71, v72, v73);
        OUTLINED_FUNCTION_131_14();
        if (v68)
        {
          OUTLINED_FUNCTION_141_10();
        }

        sub_1E4206324();
        v74 = [v69 customView];
        sub_1E4013D28();

        goto LABEL_56;
      }
    }

    if (v9 && (v84 = v9, v85 = v10, v86 = 0, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3BAF8, qword_1E42DB940), sub_1E328FCF4(&qword_1EE23B4B0, &qword_1ECF3BAF8, qword_1E42DB940), sub_1E38D2054(&v85, &v83), (v43 = v83) != 0))
    {
      v44 = [v83 customView];
    }

    else
    {
      v44 = 0;
    }

    OUTLINED_FUNCTION_12_5();
    v46 = (*(v45 + 1120))(v11, v44);

    if (v46)
    {
      objc_opt_self();
      OUTLINED_FUNCTION_20_2();
      v47 = swift_dynamicCastObjCClass();
      if (v47)
      {
        v48 = v47;
        v49 = v46;
        if (a4)
        {
          v50 = sub_1E4205ED4();
        }

        else
        {
          v50 = 0;
        }

        [v48 setBackdropGroupName_];
      }

      v28 = [objc_allocWithZone(MEMORY[0x1E69DC708]) initWithCustomView_];

      if (v28)
      {
        goto LABEL_41;
      }
    }

LABEL_56:

    ++v10;
  }

  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
}

void sub_1E4013D28()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  OUTLINED_FUNCTION_106();
  v4 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_4_6();
  v10 = v8 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = v41 - v12;
  if (!v3)
  {
    goto LABEL_16;
  }

  v42 = &unk_1F5D5D0A8;
  v43 = &off_1F5D5C758;
  LOBYTE(v41[0]) = 7;
  v14 = v3;
  v15 = sub_1E39C29A4(v41);
  v17 = v16;
  __swift_destroy_boxed_opaque_existential_1(v41);
  if (!v17)
  {

LABEL_16:
    OUTLINED_FUNCTION_25_2();
    return;
  }

  v18 = [objc_opt_self() sharedInstance];
  v19 = [v18 isPlaybackUIBeingShown];

  if (v19)
  {
    sub_1E324FBDC();
    OUTLINED_FUNCTION_0_11();
    v20(v10);

    v21 = sub_1E41FFC94();
    v22 = sub_1E4206814();

    if (os_log_type_enabled(v21, v22))
    {
      OUTLINED_FUNCTION_6_21();
      v41[0] = OUTLINED_FUNCTION_26_8();
      *v1 = 136315138;
      v23 = OUTLINED_FUNCTION_53();
      sub_1E3270FC8(v23, v24, v25);
      OUTLINED_FUNCTION_104_17();

      *(v1 + 4) = v15;
      OUTLINED_FUNCTION_42_52(&dword_1E323F000, v26, v22, "UnifiedMessaging::skipping adding bubble tip %s due to playback ui being shown");
      OUTLINED_FUNCTION_5_22();
      OUTLINED_FUNCTION_7_7();
    }

    else
    {
    }

    (*(v6 + 8))(v10, v4);
    goto LABEL_16;
  }

  v27 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x230))();
  if (v27)
  {

    sub_1E324FBDC();
    OUTLINED_FUNCTION_0_11();
    v28(v13);

    v29 = sub_1E41FFC94();
    v30 = sub_1E4206814();

    if (os_log_type_enabled(v29, v30))
    {
      OUTLINED_FUNCTION_6_21();
      v41[0] = OUTLINED_FUNCTION_26_8();
      *v1 = 136315138;
      v31 = OUTLINED_FUNCTION_53();
      sub_1E3270FC8(v31, v32, v33);
      OUTLINED_FUNCTION_104_17();

      *(v1 + 4) = v15;
      OUTLINED_FUNCTION_42_52(&dword_1E323F000, v34, v30, "UnifiedMessaging::skipping adding bubble tip %s due to already existing bubble tip");
      OUTLINED_FUNCTION_5_22();
      OUTLINED_FUNCTION_7_7();
    }

    else
    {
    }

    (*(v6 + 8))(v13, v4);
    goto LABEL_16;
  }

  v35 = [objc_opt_self() defaultLocationManager];
  if (v35)
  {
    v36 = v35;
    OUTLINED_FUNCTION_4_0();
    v37 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v38 = swift_allocObject();
    v38[2] = v37;
    v38[3] = v15;
    v38[4] = v17;
    v38[5] = v14;
    v43 = sub_1E4016B34;
    v44 = v38;
    v41[0] = MEMORY[0x1E69E9820];
    v41[1] = 1107296256;
    v41[2] = sub_1E39EBA28;
    v42 = &block_descriptor_155;
    v39 = _Block_copy(v41);
    v40 = v14;

    [v36 fetchAuthorizationStatus_];
    _Block_release(v39);

    goto LABEL_16;
  }

  __break(1u);
}

void sub_1E4014164()
{
  OUTLINED_FUNCTION_93();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5();
  v16 = v15 - v14;
  if (!v9)
  {
    goto LABEL_29;
  }

  objc_opt_self();
  OUTLINED_FUNCTION_19_3();
  v52 = swift_dynamicCastObjCClass();
  if (!v52)
  {
    goto LABEL_29;
  }

  v49 = v1;
  v51 = v5;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  if (!swift_unknownObjectWeakLoadStrong())
  {
    swift_unknownObjectRetain();
LABEL_8:
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    v25 = v52;
    if (swift_unknownObjectWeakLoadStrong())
    {
      OUTLINED_FUNCTION_71();
      OUTLINED_FUNCTION_8_9();
      v27 = *(v26 + 568);
      swift_unknownObjectRetain();
      v27(v52);
    }

    swift_unknownObjectRetain();
    [v52 setModalPresentationStyle_];
    v28 = [v52 popoverPresentationController];
    v29 = v49;
    if (v28)
    {
      v5 = v28;
      OUTLINED_FUNCTION_25();
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      [v5 setDelegate_];
    }

    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    swift_unknownObjectWeakLoadStrong();
    OUTLINED_FUNCTION_50();
    swift_unknownObjectRetain();
    [v52 setDelegate_];

    v31 = [v52 popoverPresentationController];
    if (v31)
    {
      v32 = v31;
      [v31 setSourceView_];
    }

    v33 = [v52 popoverPresentationController];
    if (v33)
    {
      v34 = v33;
      [v29 frame];
      v35 = CGRectGetWidth(v54) * 0.5;
      [v29 frame];
      [v34 setSourceRect_];
    }

    v36 = [objc_opt_self() sharedInstance];
    v37 = [v36 appController];

    if (v37)
    {
      v38 = [v37 appRootViewController];
      if (v38)
      {
        v39 = v38;
        v40 = [v38 view];
        if (v40)
        {
          v41 = v40;
          v42 = [v52 popoverPresentationController];
          swift_unknownObjectRelease();
          if (v42)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750, &unk_1E429DD30);
            OUTLINED_FUNCTION_5_10();
            v43 = swift_allocObject();
            *(v43 + 16) = xmmword_1E4298880;
            *(v43 + 32) = v41;
            v41 = v41;
            sub_1E4016718(v43, v42);
          }

          v29 = v50;
        }

        else
        {

          swift_unknownObjectRelease();
        }

        v25 = v52;
        goto LABEL_28;
      }
    }

    swift_unknownObjectRelease();
LABEL_28:
    v44 = [v25 loadPromise];
    OUTLINED_FUNCTION_50();
    swift_unknownObjectRelease();
    v45 = swift_allocObject();
    v45[2] = v7;
    v45[3] = v29;
    v45[4] = v51;
    v45[5] = v3;
    v45[6] = v25;
    v53[4] = sub_1E4016F0C;
    v53[5] = v45;
    v53[0] = MEMORY[0x1E69E9820];
    v53[1] = 1107296256;
    v53[2] = sub_1E326FFE4;
    v53[3] = &block_descriptor_65_0;
    v46 = _Block_copy(v53);
    swift_unknownObjectRetain();

    v47 = v29;

    OUTLINED_FUNCTION_19_36(v48, sel_addFinishBlock_);
    _Block_release(v46);
    swift_unknownObjectRelease();

    goto LABEL_29;
  }

  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_64();
  v18 = *(v17 + 560);
  v19 = v3;
  v20 = swift_unknownObjectRetain();
  v21 = v18(v20);

  if (!v21)
  {
    goto LABEL_8;
  }

  v22 = sub_1E324FBDC();
  (*(v12 + 16))(v16, v22, v10);

  v23 = sub_1E41FFC94();
  v24 = sub_1E4206814();

  if (os_log_type_enabled(v23, v24))
  {
    OUTLINED_FUNCTION_6_21();
    v53[0] = OUTLINED_FUNCTION_16_2();
    *v19 = 136315138;
    *(v19 + 4) = sub_1E3270FC8(v51, v19, v53);
    _os_log_impl(&dword_1E323F000, v23, v24, "UnifiedMessaging::skipping adding bubble tip %s due to already existing bubble tip", v19, 0xCu);
    OUTLINED_FUNCTION_5_175();
    OUTLINED_FUNCTION_7_9();
    swift_unknownObjectRelease();
  }

  else
  {

    swift_unknownObjectRelease();
  }

  (*(v12 + 8))(v16, v10);
LABEL_29:
  OUTLINED_FUNCTION_54_0();
}

void sub_1E401478C()
{
  OUTLINED_FUNCTION_31_1();
  v3 = v2;
  v5 = v4;
  v23 = v6;
  v8 = v7;
  v9 = sub_1E4203FC4();
  OUTLINED_FUNCTION_0_10();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_41();
  v25 = sub_1E4203FF4();
  OUTLINED_FUNCTION_0_10();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_35_3();
  sub_1E3280A90(0, &qword_1EE23B1D0, 0x1E69E9610);
  v24 = sub_1E4206A04();
  OUTLINED_FUNCTION_4_0();
  v16 = swift_allocObject();
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  v18 = swift_allocObject();
  v18[2] = v16;
  v18[3] = v8;
  v18[4] = v23;
  v18[5] = v5;
  v18[6] = v3;
  v26[4] = sub_1E4016F6C;
  v26[5] = v18;
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 1107296256;
  OUTLINED_FUNCTION_14_1();
  v26[2] = v19;
  v26[3] = &block_descriptor_72_1;
  v20 = _Block_copy(v26);
  v21 = v8;

  v22 = v3;

  sub_1E4203FE4();
  v26[0] = MEMORY[0x1E69E7CC0];
  sub_1E40172E0(&qword_1EE2882E0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A730, &qword_1E429B000);
  sub_1E328FCF4(&qword_1EE23B5D0, &qword_1ECF2A730, &qword_1E429B000);
  sub_1E42072E4();
  OUTLINED_FUNCTION_134_8();
  MEMORY[0x1E6911380]();
  _Block_release(v20);

  (*(v11 + 8))(v0, v9);
  (*(v14 + 8))(v1, v25);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E4014A94()
{
  OUTLINED_FUNCTION_31_1();
  v53 = v3;
  v54 = v2;
  v5 = v4;
  v7 = v6;
  v8 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_68_1();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v51 - v13;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_37_5();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v51 - v17;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_25;
  }

  v20 = Strong;
  v21 = [v7 window];
  if (!v21)
  {
    v27 = sub_1E324FBDC();
    (*(v10 + 16))(v18, v27, v8);

    v28 = sub_1E41FFC94();
    v29 = sub_1E4206814();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = OUTLINED_FUNCTION_6_21();
      v55 = OUTLINED_FUNCTION_100();
      *(v30 + 4) = OUTLINED_FUNCTION_84_22(4.8149e-34);
      OUTLINED_FUNCTION_126_0(&dword_1E323F000, v28, v29, "UnifiedMessaging::bubble tip %s overlay anchor is no longer visible.");
      OUTLINED_FUNCTION_24_18();
      OUTLINED_FUNCTION_21_0();

      (*(v10 + 8))(v18, v8);
    }

    else
    {

      (*(v10 + 8))(v18, v8);
    }

    goto LABEL_25;
  }

  v52 = v10;
  v22 = v8;

  v23 = v20;
  v24 = [v23 presentedViewController];
  v25 = (*((*MEMORY[0x1E69E7D40] & *v23) + 0x230))();
  v26 = v25;
  if (!v24)
  {
    v24 = v25;
    if (!v25)
    {
LABEL_16:

      v43 = sub_1E324FBDC();
      v44 = v52;
      (*(v52 + 16))(v1, v43, v8);

      v45 = sub_1E41FFC94();
      v46 = sub_1E4206814();

      if (os_log_type_enabled(v45, v46))
      {
        v47 = OUTLINED_FUNCTION_6_21();
        v55 = OUTLINED_FUNCTION_100();
        *(v47 + 4) = OUTLINED_FUNCTION_84_22(4.8149e-34);
        OUTLINED_FUNCTION_126_0(&dword_1E323F000, v45, v46, "UnifiedMessaging::bubble tip %s is already presented.");
        OUTLINED_FUNCTION_24_18();
        OUTLINED_FUNCTION_21_0();
      }

      else
      {
      }

      (*(v44 + 8))(v1, v8);
      goto LABEL_25;
    }

    goto LABEL_10;
  }

  if (!v25)
  {
LABEL_10:

    goto LABEL_11;
  }

  if (v24 == v26)
  {
    goto LABEL_16;
  }

LABEL_11:
  v31 = [v23 presentedViewController];

  v32 = sub_1E324FBDC();
  v33 = *(v52 + 16);
  if (v31)
  {
    v33(v14, v32, v8);

    v34 = v31;
    v35 = sub_1E41FFC94();
    v36 = sub_1E4206814();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = OUTLINED_FUNCTION_49_0();
      v38 = OUTLINED_FUNCTION_160();
      v53 = v35;
      v39 = v38;
      v40 = OUTLINED_FUNCTION_100();
      v55 = v40;
      *v37 = 136315394;
      *(v37 + 4) = sub_1E3270FC8(v54, v5, &v55);
      *(v37 + 12) = 2112;
      *(v37 + 14) = v34;
      *v39 = v31;
      v41 = v34;
      v42 = v53;
      _os_log_impl(&dword_1E323F000, v53, v36, "UnifiedMessaging::bubble tip %s another controller %@ is already presented", v37, 0x16u);
      sub_1E325F748(v39, &unk_1ECF28E30, &qword_1E429E820);
      OUTLINED_FUNCTION_46_1();
      __swift_destroy_boxed_opaque_existential_1(v40);
      OUTLINED_FUNCTION_65_0();
      OUTLINED_FUNCTION_7_7();
    }

    else
    {
    }

    (*(v52 + 8))(v14, v22);
  }

  else
  {
    v33(v0, v32, v8);

    v48 = sub_1E41FFC94();
    v49 = sub_1E4206814();

    if (os_log_type_enabled(v48, v49))
    {
      v50 = OUTLINED_FUNCTION_6_21();
      v55 = OUTLINED_FUNCTION_100();
      *(v50 + 4) = OUTLINED_FUNCTION_84_22(4.8149e-34);
      OUTLINED_FUNCTION_126_0(&dword_1E323F000, v48, v49, "UnifiedMessaging::presenting bubble tip %s");
      OUTLINED_FUNCTION_5_22();
      OUTLINED_FUNCTION_21_0();
    }

    (*(v52 + 8))(v0, v8);
    [v23 presentViewController:v53 animated:1 completion:0];
  }

LABEL_25:
  OUTLINED_FUNCTION_25_2();
}

void sub_1E401505C()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = [v0 isPlaybackUIBeingShown];

  if (v1)
  {
    OUTLINED_FUNCTION_21();
    v3 = (*(v2 + 560))();
    if (v3)
    {
      v4 = v3;
      [v3 dismissViewControllerAnimated:1 completion:0];
    }

    OUTLINED_FUNCTION_21();
    v6 = *(v5 + 568);

    v6(0);
  }
}

void sub_1E401517C(char *a1)
{
  v1 = &a1[OBJC_IVAR____TtC8VideosUI22DocumentViewController_navBarOpacity];
  if ((a1[OBJC_IVAR____TtC8VideosUI22DocumentViewController_navBarOpacity + 8] & 1) == 0 && *v1 <= 0.0)
  {
    v3 = sub_1E3827728([a1 vuiNavigationItem], &selRef_title);
    v4 = &a1[OBJC_IVAR____TtC8VideosUI22DocumentViewController_navBarTitle];
    *v4 = v3;
    *(v4 + 1) = v5;

    v6 = OUTLINED_FUNCTION_150_7();
    [v6 setTitle_];

    if ((sub_1E39DFFC8() & 1) == 0)
    {
      v7 = OUTLINED_FUNCTION_150_7();
      v8 = [v7 titleView];

      if (!v8 || (type metadata accessor for UberNavigationBarTitleView(), OUTLINED_FUNCTION_20_2(), v9 = swift_dynamicCastClass(), v8, !v9))
      {
        v10 = OUTLINED_FUNCTION_150_7();
        v11 = [v10 titleView];

        v12 = *&a1[OBJC_IVAR____TtC8VideosUI22DocumentViewController_navBarTitleView];
        *&a1[OBJC_IVAR____TtC8VideosUI22DocumentViewController_navBarTitleView] = v11;

        v13 = OUTLINED_FUNCTION_150_7();
        [v13 setTitleView_];
      }
    }
  }
}

void sub_1E4015310()
{
  v1 = v0;
  OUTLINED_FUNCTION_12_161();
  v3 = (*(v2 + 752))();
  if (v3)
  {
    OUTLINED_FUNCTION_35_10(v3);
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    v4 = v0[7];

    if (v4)
    {

      sub_1E3905190(v5, v6, v7);
      if ((sub_1E4205E84() & 1) == 0)
      {
        v8 = [objc_opt_self() sharedInstance];
        v9 = [v8 isFullscreenPlaybackUIBeingShown];

        if ((v9 & 1) == 0)
        {
          v10 = [v1 view];
          if (v10)
          {
            v11 = v10;
            v12 = [v10 window];

            if (v12)
            {

              OUTLINED_FUNCTION_12_5();
              (*(v13 + 1040))();
            }
          }

          else
          {
            __break(1u);
          }
        }
      }
    }
  }
}

uint64_t sub_1E40154B8()
{
  OUTLINED_FUNCTION_89_12();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_35_3();
  sub_1E41FDEE4();
  v3 = v1;
  v0();

  v4 = OUTLINED_FUNCTION_53();
  return v5(v4);
}

void DocumentViewController.messageViewController(_:didUpdate:)()
{
  OUTLINED_FUNCTION_93();
  v2 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_42_1();
  v6 = sub_1E324FBDC();
  (*(v4 + 16))(v0, v6, v2);
  v7 = sub_1E41FFC94();
  v8 = sub_1E42067E4();
  if (os_log_type_enabled(v7, v8))
  {
    OUTLINED_FUNCTION_6_21();
    v14 = OUTLINED_FUNCTION_16_2();
    *v1 = 136315138;
    v9 = sub_1E4206E64();
    v11 = sub_1E3270FC8(v9, v10, &v14);

    *(v1 + 4) = v11;
    _os_log_impl(&dword_1E323F000, v7, v8, "UnifiedMessaging::didUpdate newSize %s", v1, 0xCu);
    OUTLINED_FUNCTION_5_175();
    OUTLINED_FUNCTION_7_9();
  }

  v12 = OUTLINED_FUNCTION_16_0();
  v13(v12);
  OUTLINED_FUNCTION_54_0();
}

uint64_t DocumentViewController.messageViewController(_:didFailWithError:)()
{
  v1 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_42_1();
  v5 = sub_1E324FBDC();
  (*(v3 + 16))(v0, v5, v1);
  v6 = sub_1E41FFC94();
  v7 = sub_1E42067E4();
  if (os_log_type_enabled(v6, v7))
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_126_9();
    _os_log_impl(v8, v9, v10, v11, v12, 2u);
    OUTLINED_FUNCTION_65_0();
  }

  v13 = OUTLINED_FUNCTION_16_0();
  return v14(v13);
}

void DocumentViewController.messageViewController(_:didSelectActionWith:)()
{
  OUTLINED_FUNCTION_31_1();
  v77 = v0;
  v2 = v1;
  v71 = v3;
  sub_1E41FE414();
  OUTLINED_FUNCTION_0_10();
  v72 = v5;
  v73 = v4;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  v70 = v7 - v6;
  v8 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_4_6();
  v75 = (v12 - v13);
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_18_6();
  v69 = v15;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_18_6();
  v74 = v17;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v68 - v19;
  v21 = sub_1E324FBDC();
  v22 = *(v10 + 16);
  v23 = v8;
  v22(v20, v21, v8);
  v24 = v2;
  v25 = sub_1E41FFC94();
  v26 = sub_1E42067E4();

  v27 = &selRef_needsAdamIdToCanonicalIdConversion;
  if (os_log_type_enabled(v25, v26))
  {
    v28 = OUTLINED_FUNCTION_49_0();
    v78 = v10;
    v29 = v28;
    v30 = swift_slowAlloc();
    *v29 = 138412546;
    *(v29 + 4) = v24;
    *v30 = v24;
    *(v29 + 12) = 2112;
    v31 = [v24 originalRequest];
    *(v29 + 14) = v31;
    v30[1] = v31;
    _os_log_impl(&dword_1E323F000, v25, v26, "UnifiedMessaging::Action dialogResult: %@, request: %@", v29, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF28E30, &qword_1E429E820);
    swift_arrayDestroy();
    v27 = &selRef_needsAdamIdToCanonicalIdConversion;
    OUTLINED_FUNCTION_6_0();
    v10 = v78;
    OUTLINED_FUNCTION_6_0();
  }

  v32 = *(v10 + 8);
  v33 = v23;
  v78 = v10 + 8;
  v76 = v32;
  v32(v20, v23);
  [v77 dismissViewControllerAnimated:1 completion:0];
  v34 = [v24 v27[138]];
  v35 = [v24 selectedActionIdentifier];
  v36 = sub_1E4205F14();
  v38 = v37;

  v39 = sub_1E3A7C950(v36, v38, v34);
  if (v39)
  {
    if ([v39 style] == 2)
    {
      v40 = v74;
      v22(v74, v21, v33);
      v41 = sub_1E41FFC94();
      v42 = sub_1E42067E4();
      if (os_log_type_enabled(v41, v42))
      {
        *swift_slowAlloc() = 0;
        OUTLINED_FUNCTION_62(&dword_1E323F000, v43, v44, "UnifiedMessaging::Action Cancel");
        OUTLINED_FUNCTION_7_9();
      }

      v76(v40, v33);
    }

    else
    {
      v57 = [v39 deepLink];
      if (v57)
      {
        v58 = v57;
        v59 = v70;
        sub_1E41FE3C4();

        v60 = _s8VideosUIAAC33initializeUnifiedMessagingManageryyFZ_0();
        v61 = *v60;
        OUTLINED_FUNCTION_38();
        sub_1E3B60024();

        v62 = *v60;
        nullsub_1();

        (*(v72 + 8))(v59, v73);
      }

      else
      {
        v63 = v69;
        v22(v69, v21, v33);
        v64 = sub_1E41FFC94();
        v65 = sub_1E42067E4();
        if (os_log_type_enabled(v64, v65))
        {
          *swift_slowAlloc() = 0;
          OUTLINED_FUNCTION_62(&dword_1E323F000, v66, v67, "UnifiedMessaging::Action Deeplink does not exist");
          OUTLINED_FUNCTION_7_9();
        }

        v76(v63, v33);
      }
    }
  }

  else
  {
    v45 = v75;
    v22(v75, v21, v33);
    v46 = v24;
    v47 = sub_1E41FFC94();
    v48 = sub_1E42067E4();

    if (os_log_type_enabled(v47, v48))
    {
      v49 = v45;
      v50 = OUTLINED_FUNCTION_6_21();
      v79 = OUTLINED_FUNCTION_100();
      *v50 = 136315138;
      v51 = [v46 selectedActionIdentifier];
      v52 = sub_1E4205F14();
      v54 = v53;

      v55 = sub_1E3270FC8(v52, v54, &v79);

      *(v50 + 4) = v55;
      _os_log_impl(&dword_1E323F000, v47, v48, "UnifiedMessaging::Action Could not find action for %s", v50, 0xCu);
      OUTLINED_FUNCTION_5_175();
      OUTLINED_FUNCTION_65_0();

      v56 = v49;
    }

    else
    {

      v56 = v45;
    }

    v76(v56, v33);
  }

  OUTLINED_FUNCTION_25_2();
}

uint64_t DocumentViewController.messageViewController(_:enqueueEventWithFields:inTopic:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a4)
  {
    sub_1E4205F14();
  }

  v4 = *_s8VideosUIAAC33initializeUnifiedMessagingManageryyFZ_0();
  OUTLINED_FUNCTION_32_0();
  sub_1E3B5A7AC();
}

uint64_t DocumentViewController.deeplinkURLWasHandled(_:)(uint64_t a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF363C0, &unk_1E42A9420);
  MEMORY[0x1EEE9AC00](v4 - 8);
  OUTLINED_FUNCTION_139();
  v5 = [v1 childViewControllers];
  sub_1E3280A90(0, &qword_1EE23B250, 0x1E69DD258);
  OUTLINED_FUNCTION_22_53();
  v6 = sub_1E42062B4();

  v7 = sub_1E32AE9B0(v6);

  v8 = sub_1E41FE414();
  if (v7)
  {
    OUTLINED_FUNCTION_32_2();
    __swift_storeEnumTagSinglePayload(v9, v10, v11, v8);
    v12 = OBJC_IVAR____TtC8VideosUI22DocumentViewController_pendingDeeplinkURL;
    OUTLINED_FUNCTION_11_3(v1 + OBJC_IVAR____TtC8VideosUI22DocumentViewController_pendingDeeplinkURL, v19);
    sub_1E38DAEEC(v2, v1 + v12);
    swift_endAccess();
    OUTLINED_FUNCTION_26_3();
    v14 = (*((*MEMORY[0x1E69E7D40] & v13) + 0x498))(a1);
  }

  else
  {
    v15 = OUTLINED_FUNCTION_13_8();
    v16(v15);
    __swift_storeEnumTagSinglePayload(v2, 0, 1, v8);
    v17 = OBJC_IVAR____TtC8VideosUI22DocumentViewController_pendingDeeplinkURL;
    OUTLINED_FUNCTION_11_3(v1 + OBJC_IVAR____TtC8VideosUI22DocumentViewController_pendingDeeplinkURL, v19);
    sub_1E38DAEEC(v2, v1 + v17);
    swift_endAccess();
    v14 = 0;
  }

  return v14 & 1;
}

_OWORD *sub_1E4016360(_OWORD *a1, void *a2, char a3)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_1E37C375C(a2);
  if (__OFADD__(v6[2], (v8 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v9 = v7;
  v10 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3E4D8, qword_1E42E5908);
  if ((sub_1E4207644() & 1) == 0)
  {
    goto LABEL_5;
  }

  v11 = sub_1E37C375C(a2);
  if ((v10 & 1) != (v12 & 1))
  {
LABEL_13:
    type metadata accessor for Key(0);
    result = sub_1E4207A74();
    __break(1u);
    return result;
  }

  v9 = v11;
LABEL_5:
  v13 = *v4;
  if (v10)
  {
    v14 = (v13[7] + 32 * v9);
    __swift_destroy_boxed_opaque_existential_1(v14);

    return sub_1E329504C(a1, v14);
  }

  else
  {
    sub_1E4016498(v9, a2, a1, v13);

    return a2;
  }
}

_OWORD *sub_1E4016498(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_1E329504C(a3, (a4[7] + 32 * a1));
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

uint64_t type metadata accessor for DocumentViewController(uint64_t a1)
{
  result = qword_1EE29AC48;
  if (!qword_1EE29AC48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E401654C(uint64_t a1, void *a2)
{
  type metadata accessor for Key(0);
  sub_1E40172E0(&qword_1EE23B100, type metadata accessor for Key);
  v3 = sub_1E4205C44();

  [a2 setLargeTitleTextAttributes_];
}

uint64_t sub_1E4016610(void *a1, SEL *a2)
{
  v3 = [a1 *a2];

  if (!v3)
  {
    return 0;
  }

  type metadata accessor for Key(0);
  OUTLINED_FUNCTION_0_319();
  sub_1E40172E0(v4, v5);
  OUTLINED_FUNCTION_32_0();
  v6 = sub_1E4205C64();

  return v6;
}

uint64_t sub_1E40166A8(void *a1, SEL *a2)
{
  v3 = [a1 *a2];

  if (!v3)
  {
    return 0;
  }

  sub_1E3280A90(0, qword_1EE23B2E0, 0x1E69DC708);
  OUTLINED_FUNCTION_19_3();
  v4 = sub_1E42062B4();

  return v4;
}

void sub_1E4016718(uint64_t a1, void *a2)
{
  sub_1E3280A90(0, &qword_1EE23AE80, 0x1E69DD250);
  v3 = sub_1E42062A4();

  [a2 setPassthroughViews_];
}

uint64_t sub_1E40167AC(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_18();
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1E40167F8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy52_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1E4016878(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 52))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E40168CC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 52) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 52) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

void sub_1E4016948(uint64_t a1)
{
  sub_1E3286EF4(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

unint64_t sub_1E4016A3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EE27C300[0];
  if (!qword_1EE27C300[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE27C300);
  }

  return result;
}

void *sub_1E4016A90()
{
  v1 = *(v0 + 24);
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = result;
    v5[3] = sub_1E3280A90(0, &qword_1EE23B250, 0x1E69DD258);
    v5[0] = v3;
    v4 = v3;
    v1(v5);

    return sub_1E325F748(v5, &unk_1ECF296E0, &unk_1E4298030);
  }

  return result;
}

void sub_1E4016B34(uint64_t a1)
{
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v6 = sub_1E3D54BE8();
  v7 = *v6;
  v8 = v6[1];

  v9 = *sub_1E3D54C24();
  type metadata accessor for UnifiedMessagingSignalProvider();
  v10 = v9;
  v11 = sub_1E3D595AC(a1);
  v12 = sub_1E3D595C0(v7, v8, v11);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F240, &unk_1E4298910);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E4297BE0;
  v14 = sub_1E3B58240();
  v15 = *(v14 + 1);
  *(inited + 32) = *v14;
  *(inited + 40) = v15;
  *(inited + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3E4D0, &qword_1E429FAB0);
  *(inited + 48) = v12;

  sub_1E4205CB4();
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  if (!swift_unknownObjectWeakLoadStrong() || (OUTLINED_FUNCTION_71(), OUTLINED_FUNCTION_64(), v17 = (*(v16 + 752))(), v12, !v17) || (OUTLINED_FUNCTION_25(), swift_beginAccess(), v18 = *(v17 + 56), , , !v18))
  {
    v33 = 0u;
    v34 = 0u;
    goto LABEL_8;
  }

  LOBYTE(v32[0]) = 1;
  OUTLINED_FUNCTION_8();
  (*(v19 + 776))(&v33, v32, &unk_1F5D5D1C8, &off_1F5D5C798);

  if (!*(&v34 + 1))
  {
LABEL_8:
    sub_1E325F748(&v33, &unk_1ECF296E0, &unk_1E4298030);
    goto LABEL_9;
  }

  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
  if (swift_dynamicCast())
  {
    v21 = *&v32[0];
    v22 = sub_1E3B5824C();
    v23 = *v22;
    v24 = v22[1];
    *(&v34 + 1) = v20;
    *&v33 = v21;
    sub_1E329504C(&v33, v32);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1E32A87C0(v32, v23, v24, isUniquelyReferenced_nonNull_native);
  }

LABEL_9:
  v26 = *_s8VideosUIAAC33initializeUnifiedMessagingManageryyFZ_0();
  OUTLINED_FUNCTION_4_0();
  v27 = swift_allocObject();
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();
  v29 = v26;

  v30 = swift_allocObject();
  v30[2] = v27;
  v30[3] = v3;
  v30[4] = v4;
  v30[5] = v5;

  v31 = v5;
  sub_1E3B584A8();
}

uint64_t objectdestroy_54Tm_0()
{

  return swift_deallocObject();
}

uint64_t objectdestroy_61Tm()
{

  return swift_deallocObject();
}

void sub_1E4016FD4()
{
  v1 = *(v0 + 32);
  [*(v0 + 16) setAlpha_];
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    OUTLINED_FUNCTION_71();
    OUTLINED_FUNCTION_64();
    (*(v2 + 1152))(v1);
  }
}

void sub_1E401707C(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  if (([a1 isCancelled] & 1) == 0)
  {
    if (v2)
    {
      type metadata accessor for DocumentViewController(0);
      OUTLINED_FUNCTION_19_3();
      v4 = swift_dynamicCastClass();
      if (v4)
      {
        v5 = v4;
        v6 = v2;
        v3(v5);
      }
    }
  }
}

void sub_1E4017118()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  if ((sub_1E39E01A4() & 1) == 0 && *&v1[OBJC_IVAR____TtC8VideosUI22DocumentViewController_navBarTintColor])
  {
    [v2 setTintColor_];
  }

  if ((sub_1E39DFFC8() & 1) == 0 && (v1[OBJC_IVAR____TtC8VideosUI22DocumentViewController_navBarOpacity + 8] & 1) == 0)
  {
    v3 = *&v1[OBJC_IVAR____TtC8VideosUI22DocumentViewController_navBarOpacity];
    v4 = [v1 navigationItem];
    sub_1E3B62038(v3);
  }

  sub_1E40D90A0();
}

id sub_1E40171B8()
{
  v1 = *(v0 + 16);
  v2 = *sub_1E3E60700();

  return [v1 setTintColor_];
}

uint64_t objectdestroy_111Tm()
{
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_2_4();

  return swift_deallocObject();
}

void sub_1E401723C(void *a1)
{
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  if ([a1 isCancelled])
  {
    if (v3)
    {
      type metadata accessor for DocumentViewController(0);
      OUTLINED_FUNCTION_22_53();
      if (swift_dynamicCastClass())
      {
        v5 = v3;
        [v2 transitionDuration];
        sub_1E400B304(v4);
      }
    }
  }
}

uint64_t sub_1E40172E0(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_20_2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *OUTLINED_FUNCTION_74_22()
{
  sub_1E3251BE8((v0 - 160), v0 - 120);
  v1 = *(v0 - 96);

  return __swift_project_boxed_opaque_existential_1((v0 - 120), v1);
}

id OUTLINED_FUNCTION_83_21()
{

  return [v0 (v1 + 703)];
}

unint64_t OUTLINED_FUNCTION_84_22(float a1)
{
  *v2 = a1;
  v5 = *(v3 - 120);

  return sub_1E3270FC8(v5, v1, (v3 - 112));
}

id OUTLINED_FUNCTION_88_18(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return [a1 (v6 + 2040)];
}

unint64_t OUTLINED_FUNCTION_89_18(uint64_t a1, unint64_t a2)
{

  return sub_1E3270FC8(a1, a2, (v2 - 176));
}

void OUTLINED_FUNCTION_103_14()
{
  *(v0 + 4) = v1;
  *(v0 + 12) = 1024;
  *(v0 + 14) = *(v2 - 180);
}

id OUTLINED_FUNCTION_110_13()
{

  return [v0 (v1 + 679)];
}

double OUTLINED_FUNCTION_112_16()
{

  return result;
}

id OUTLINED_FUNCTION_116_14()
{

  return [v0 (v1 + 2611)];
}

unint64_t OUTLINED_FUNCTION_119_9(float a1)
{
  *v1 = a1;

  return DocumentViewController.logPrefix.getter();
}

id OUTLINED_FUNCTION_138_10(void **a1)
{
  v2 = *a1;

  return v2;
}

void OUTLINED_FUNCTION_139_11(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v6, a4, v4, 0xCu);
}

uint64_t OUTLINED_FUNCTION_141_10()
{

  return sub_1E42062F4();
}

BOOL OUTLINED_FUNCTION_148_9()
{

  return os_log_type_enabled(v0, v1);
}

id OUTLINED_FUNCTION_150_7()
{

  return [v0 (v1 + 703)];
}

id OUTLINED_FUNCTION_152_8(void *a1)
{

  return [a1 (v1 + 4088)];
}

double sub_1E40175B0()
{
  [objc_msgSend(v0 container)];
  v2 = v1;
  swift_unknownObjectRelease();
  return v2;
}

void type metadata accessor for NSDirectionalEdgeInsets()
{
  if (!qword_1EE23B048)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1EE23B048);
    }
  }
}

unint64_t sub_1E401765C(uint64_t a1, void *a2)
{
  v4 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  ViewModelKeys.rawValue.getter(0);
  sub_1E3277E60(v10, v11, a1, &v27);

  v12 = v28;
  sub_1E329505C(&v27);
  if (v12)
  {
    sub_1E327F454(a2, &v27);
    type metadata accessor for Document();
    v13 = swift_allocObject();
    sub_1E4017B78(a1, &v27);
    sub_1E327F454(a2, &v27);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BC0, &unk_1E42980F0);
    type metadata accessor for DocumentServiceRequestContext(0);
    if (swift_dynamicCast())
    {
      OUTLINED_FUNCTION_5_0(v13 + 56, v26);
      OUTLINED_FUNCTION_8();
      v15 = *(v14 + 200);

      v15(v16);
    }

    __swift_destroy_boxed_opaque_existential_1(a2);
  }

  else
  {
    ViewModelKeys.rawValue.getter(2);
    sub_1E3277E60(v17, v18, a1, &v27);

    if (v28)
    {
      sub_1E329505C(&v27);
      v19 = type metadata accessor for DocumentFragment();
      sub_1E327F454(a2, &v27);
      sub_1E3BC87A0(a1, &v27);
      v20 = OUTLINED_FUNCTION_50();
      __swift_destroy_boxed_opaque_existential_1(v20);
      return v19 | 0x8000000000000000;
    }

    else
    {

      sub_1E329505C(&v27);
      v21 = sub_1E324FBDC();
      (*(v6 + 16))(v9, v21, v4);
      v22 = sub_1E41FFC94();
      v23 = sub_1E42067F4();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        *v24 = 0;
        _os_log_impl(&dword_1E323F000, v22, v23, "MultiPartDocument:returned an unknown response for the request.", v24, 2u);
        OUTLINED_FUNCTION_6_0();
      }

      __swift_destroy_boxed_opaque_existential_1(a2);
      (*(v6 + 8))(v9, v4);
      return 0xF000000000000007;
    }
  }

  return v13;
}

uint64_t sub_1E4017924()
{
  OUTLINED_FUNCTION_15_162();
  v0 = swift_allocObject();
  v1 = OUTLINED_FUNCTION_13_8();
  sub_1E4017B78(v1, v2);
  return v0;
}

unint64_t sub_1E4017968@<X0>(uint64_t a1@<X0>, void *a2@<X1>, unint64_t *a3@<X8>)
{
  result = sub_1E401765C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t Document.delegate.setter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_14_0(v2 + 32, a2);
  *(v2 + 40) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*Document.delegate.modify(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v3[5] = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v5 = *(v1 + 40);
  v3[3] = Strong;
  v3[4] = v5;
  return sub_1E4017AC4;
}

void sub_1E4017AC4()
{
  OUTLINED_FUNCTION_106_2();
  *(v0[5] + 40) = v0[4];
  swift_unknownObjectWeakAssign();
  if (v1)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v0);
}

void sub_1E4017B78(uint64_t a1, void *a2)
{
  v125 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v10);
  v12 = v112 - v11;
  v118 = sub_1E41FFBF4();
  OUTLINED_FUNCTION_0_10();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  v117 = v112 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_4_242();
  v2[2] = v17;
  v2[3] = v18;
  v2[5] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v2[9] = 0;
  v19 = (v2 + 9);
  v2[7] = 0;
  *&v116 = v2 + 7;
  v2[8] = 0;
  v120 = v2 + 8;
  ViewModelKeys.rawValue.getter(1);
  sub_1E3277E60(v20, v21, a1, &v133);

  v22 = MEMORY[0x1E69E6158];
  v114 = v12;
  v121 = v6;
  if (*(&v134[0] + 1))
  {
    v23 = a2;
    if (swift_dynamicCast())
    {
      v25 = *(&v128 + 1);
      v24 = v128;
      goto LABEL_6;
    }
  }

  else
  {
    v23 = a2;
    sub_1E329505C(&v133);
  }

  v25 = 0xEB00000000657079;
  v24 = 0x546E776F6E6B6E55;
LABEL_6:
  v26 = sub_1E4206BA4();
  v27 = VUISignpostLogObject(v26);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30870, &unk_1E429CE30);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1E4297BE0;
  *(v28 + 56) = v22;
  *(v28 + 64) = sub_1E3283528(v28, v29, v30);
  *(v28 + 32) = v24;
  *(v28 + 40) = v25;
  v31 = v117;
  sub_1E41FFBE4();
  OUTLINED_FUNCTION_24_106();
  sub_1E41FFB94();

  v34 = *(v14 + 8);
  v32 = v14 + 8;
  v33 = v34;
  v34(v31, v118);
  v35 = v23[3];
  v36 = v23[4];
  __swift_project_boxed_opaque_existential_1(v23, v35);
  v37 = (*(v36 + 16))(v35, v36);
  v38 = v122;
  OUTLINED_FUNCTION_3_0((v122 + 6), v136);
  swift_unknownObjectWeakAssign();

  sub_1E327F454(v23, &v133);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BC0, &unk_1E42980F0);
  type metadata accessor for DocumentServiceRequestContext(0);
  if (swift_dynamicCast())
  {
    v39 = v128;
  }

  else
  {
    v39 = 0;
  }

  ViewModelKeys.rawValue.getter(0);
  sub_1E3277E60(v40, v41, a1, &v133);

  if (!*(&v134[0] + 1))
  {
    sub_1E329505C(&v133);
    OUTLINED_FUNCTION_16_148();
    goto LABEL_49;
  }

  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
  swift_dynamicCast();
  OUTLINED_FUNCTION_16_148();
  if ((v42 & 1) == 0)
  {
    goto LABEL_49;
  }

  v43 = v128;
  if (!*(v128 + 16))
  {

LABEL_49:
    v95 = sub_1E324FBDC();
    v96 = v121;
    v97 = v124;
    (*(v121 + 16))(v124, v95, v35);

    v98 = sub_1E41FFC94();
    v99 = sub_1E42067F4();

    if (os_log_type_enabled(v98, v99))
    {
      v100 = OUTLINED_FUNCTION_6_21();
      v101 = swift_slowAlloc();
      *&v133 = v101;
      *v100 = 136315138;
      *&v128 = v39;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF347A0, qword_1E42C0F00);
      v102 = sub_1E42070D4();
      v104 = sub_1E3270FC8(v102, v103, &v133);

      *(v100 + 4) = v104;
      _os_log_impl(&dword_1E323F000, v98, v99, "Document:: Failed to create document from JSON <%s>.", v100, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v101);
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();

      (*(v96 + 8))(v124, v125);
    }

    else
    {

      (*(v96 + 8))(v97, v35);
    }

    goto LABEL_52;
  }

  v112[0] = v33;
  v112[1] = v32;
  v112[2] = v39;
  v113 = v23;
  type metadata accessor for PagePerformanceReporter();
  v44 = sub_1E3C69AA0(v43);
  OUTLINED_FUNCTION_3_0(v19, v135);
  v38[9] = v44;

  v123 = v43;
  v47 = *(v43 + 64);
  v46 = v43 + 64;
  v45 = v47;
  v48 = 1 << *(v46 - 32);
  v49 = v125;
  v50 = -1;
  if (v48 < 64)
  {
    v50 = ~(-1 << v48);
  }

  v51 = v50 & v45;
  OUTLINED_FUNCTION_3_0(v116, v132);
  OUTLINED_FUNCTION_3_0(v120, v131);
  v52 = 0;
  v53 = (v48 + 63) >> 6;
  v120 = (v121 + 16);
  v121 += 8;
  *&v54 = 136315138;
  v116 = v54;
  v55 = v119;
  v124 = v46;
  if (!v51)
  {
LABEL_16:
    while (1)
    {
      v56 = v52 + 1;
      if (__OFADD__(v52, 1))
      {
        break;
      }

      if (v56 >= v53)
      {
        v51 = 0;
        v130 = 0u;
        v129 = 0u;
        v128 = 0u;
        goto LABEL_21;
      }

      v51 = *(v46 + 8 * v56);
      ++v52;
      if (v51)
      {
        v52 = v56;
        goto LABEL_20;
      }
    }

    __break(1u);
    return;
  }

  while (1)
  {
    v56 = v52;
LABEL_20:
    v57 = __clz(__rbit64(v51));
    v51 &= v51 - 1;
    v58 = v57 | (v56 << 6);
    v59 = (*(v123 + 48) + 16 * v58);
    v61 = *v59;
    v60 = v59[1];
    sub_1E328438C(*(v123 + 56) + 32 * v58, v127);
    *&v128 = v61;
    *(&v128 + 1) = v60;
    sub_1E329504C(v127, &v129);

LABEL_21:
    v133 = v128;
    v134[0] = v129;
    v134[1] = v130;
    v62 = *(&v128 + 1);
    if (!*(&v128 + 1))
    {

      v92 = sub_1E4206B94();
      v93 = VUISignpostLogObject(v92);
      v94 = v117;
      sub_1E41FFBE4();
      OUTLINED_FUNCTION_24_106();
      sub_1E41FFBA4();

      (v112[0])(v94, v118);
      goto LABEL_47;
    }

    v63 = v133;
    sub_1E329504C(v134, &v128);
    if (!swift_dynamicCast())
    {
      sub_1E324FBDC();
      OUTLINED_FUNCTION_2_241();
      v68(v55);

      v69 = sub_1E41FFC94();
      v70 = v55;
      v71 = sub_1E42067F4();

      if (os_log_type_enabled(v69, v71))
      {
        OUTLINED_FUNCTION_6_21();
        v72 = OUTLINED_FUNCTION_16_2();
        v73 = OUTLINED_FUNCTION_6_208(v72);

        *(v49 + 4) = v73;
        _os_log_impl(&dword_1E323F000, v69, v71, "Document:: Invalid response for type <%s>.", v49, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v72);
        v38 = v122;
        OUTLINED_FUNCTION_6_0();
        OUTLINED_FUNCTION_16_148();
        OUTLINED_FUNCTION_6_0();
      }

      else
      {
      }

      OUTLINED_FUNCTION_3_244();
      v79(v70, v49);
      v55 = v70;
      goto LABEL_36;
    }

    v64 = *&v127[0];

    OUTLINED_FUNCTION_13_8();
    if (sub_1E41240F4() != 31)
    {
      break;
    }

    sub_1E384EE08(100);
    if (v63 == v66 && v65 == v62)
    {

LABEL_40:
      OUTLINED_FUNCTION_10_163();
      v80 = OUTLINED_FUNCTION_13_8();
      sub_1E3A7CD30(v80, v81, v82, 0);
      OUTLINED_FUNCTION_50();

      __swift_destroy_boxed_opaque_existential_1(&v128);
      v55 = v119;
      if (v64)
      {
        OUTLINED_FUNCTION_8();
        v84 = *(v83 + 656);

        v84(v85);
        v38[8] = v64;

        OUTLINED_FUNCTION_16_148();
      }

      else
      {
        sub_1E324FBDC();
        OUTLINED_FUNCTION_2_241();
        v86 = v115;
        v49 = v125;
        v87(v115);
        v88 = sub_1E41FFC94();
        v89 = sub_1E42067E4();
        if (os_log_type_enabled(v88, v89))
        {
          v90 = swift_slowAlloc();
          *v90 = 0;
          _os_log_impl(&dword_1E323F000, v88, v89, "Document::Failed to create nav bar view model from dictionary", v90, 2u);
          OUTLINED_FUNCTION_6_0();
        }

        OUTLINED_FUNCTION_3_244();
        v91(v86, v49);
      }

      goto LABEL_36;
    }

    OUTLINED_FUNCTION_13_8();
    v49 = sub_1E42079A4();

    if (v49)
    {
      goto LABEL_40;
    }

    OUTLINED_FUNCTION_16_148();
    v55 = v119;
LABEL_36:
    v46 = v124;
    if (!v51)
    {
      goto LABEL_16;
    }
  }

  OUTLINED_FUNCTION_10_163();
  v75 = sub_1E3A7C9B4(v74, &v128, 0);
  __swift_destroy_boxed_opaque_existential_1(&v128);
  if (v75)
  {

    OUTLINED_FUNCTION_8();
    v77 = *(v76 + 656);

    v77(v78);

    v38[7] = v75;

    goto LABEL_36;
  }

  sub_1E324FBDC();
  OUTLINED_FUNCTION_2_241();
  v105 = v114;
  v106(v114);

  v107 = sub_1E41FFC94();
  v108 = sub_1E42067F4();

  if (os_log_type_enabled(v107, v108))
  {
    OUTLINED_FUNCTION_6_21();
    v109 = OUTLINED_FUNCTION_16_2();
    v110 = OUTLINED_FUNCTION_6_208(v109);

    *(v49 + 4) = v110;
    _os_log_impl(&dword_1E323F000, v107, v108, "Document:: Invalid template response for template <%s>.", v49, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v109);
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();
  }

  else
  {
  }

  OUTLINED_FUNCTION_3_244();
  v111(v105, v49);
LABEL_47:
  v23 = v113;
LABEL_52:
  __swift_destroy_boxed_opaque_existential_1(v23);
}

uint64_t sub_1E401885C()
{
  OUTLINED_FUNCTION_15_162();
  swift_allocObject();
  v1 = OUTLINED_FUNCTION_50();
  sub_1E4018890(v1);
  return v0;
}

void *sub_1E4018890(uint64_t a1)
{
  v2 = v1;
  OUTLINED_FUNCTION_4_242();
  v2[2] = v4;
  v2[3] = v5;
  v2[5] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v2[7] = 0;
  v2[8] = 0;
  v2[9] = 0;
  OUTLINED_FUNCTION_3_0((v2 + 7), v10);
  v2[7] = a1;
  if (a1)
  {
    OUTLINED_FUNCTION_8();
    v7 = *(v6 + 656);
    swift_retain_n();

    v7(v8);
  }

  return v2;
}

uint64_t sub_1E4018954(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  OUTLINED_FUNCTION_15_0(v5 + 32, a2);
  if (swift_unknownObjectWeakLoadStrong() && (swift_getObjectType(), v7 = OUTLINED_FUNCTION_23_98(), v9 = v8(v7), swift_unknownObjectRelease(), (v9 & 1) != 0))
  {
    v10 = 1;
  }

  else
  {
    v11 = OUTLINED_FUNCTION_23_98();
    v10 = sub_1E4018A10(v11, v12, v13, v14, a5);
  }

  return v10 & 1;
}

uint64_t sub_1E4018A10(unsigned int a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v105 = a4;
  v101 = a3;
  v9 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v97 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v97 - v16;
  v18 = sub_1E324FBDC();
  v19 = *(v11 + 16);
  v103 = v18;
  v104 = v11 + 16;
  v102 = v19;
  (v19)(v17);
  v20 = sub_1E41FFC94();
  v21 = sub_1E4206814();
  v22 = os_log_type_enabled(v20, v21);
  v106 = a1;
  v107 = v11;
  v108 = v14;
  if (v22)
  {
    OUTLINED_FUNCTION_6_21();
    v23 = v9;
    v24 = OUTLINED_FUNCTION_16_2();
    *&v112 = v24;
    *v5 = 136315138;
    v25 = ViewModelEvent.description.getter(a1);
    v27 = sub_1E3270FC8(v25, v26, &v112);

    *(v5 + 4) = v27;
    _os_log_impl(&dword_1E323F000, v20, v21, "Document::received view model event:<%s>", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v24);
    OUTLINED_FUNCTION_6_0();
    v9 = v23;
    v11 = v107;
    OUTLINED_FUNCTION_6_0();
  }

  v28 = *(v11 + 8);
  v28(v17, v9);
  type metadata accessor for LibViewModel();
  if (!swift_dynamicCastClass())
  {
    type metadata accessor for LibEpisodeViewModel(0);
    if (!swift_dynamicCastClass())
    {
      OUTLINED_FUNCTION_30_1();
      (*(v30 + 648))();

      if (a5)
      {
        goto LABEL_6;
      }

LABEL_8:
      OUTLINED_FUNCTION_30_1();
      v29 = (*(v31 + 544))();
      if (!v29)
      {
        return 0;
      }

      goto LABEL_9;
    }
  }

  if (!a5)
  {
    goto LABEL_8;
  }

LABEL_6:
  v29 = a5;
LABEL_9:
  v99 = v28;
  v100 = v29;
  v32 = a5;

  v33 = a2;
  while (1)
  {
    LOBYTE(v115) = 1;
    v34 = OUTLINED_FUNCTION_22_97();
    v35(v34);
    if (*(&v113 + 1))
    {
      v36 = swift_dynamicCast();
      if (v36 && (v115 & 1) != 0)
      {
        v41 = 0;
        goto LABEL_27;
      }
    }

    else
    {
      v36 = sub_1E329505C(&v112);
    }

    v37 = (*(*v33 + 624))(v36);

    if (!v37)
    {
      break;
    }

    type metadata accessor for TemplateViewModel(0);
    if (!swift_dynamicCastClass())
    {
      goto LABEL_23;
    }

    LOBYTE(v115) = 0;
    v38 = OUTLINED_FUNCTION_22_97();
    v39(v38);
    sub_1E3294F34(&v112, &v115);
    if (v116)
    {
      if (swift_dynamicCast() && (v111[0] & 1) != 0)
      {
        OUTLINED_FUNCTION_8();
        v33 = (*(v40 + 1192))();

        sub_1E329505C(&v112);
        if (!v33)
        {
          goto LABEL_26;
        }
      }

      else
      {
        sub_1E329505C(&v112);
LABEL_23:

        v33 = v37;
      }
    }

    else
    {
      sub_1E329505C(&v112);

      sub_1E329505C(&v115);
      v33 = v37;
    }
  }

  v33 = 0;
LABEL_26:
  v41 = 1;
LABEL_27:
  OUTLINED_FUNCTION_30_1();
  v43 = (*(v42 + 552))();
  if (!v43)
  {
    v43 = sub_1E4205CB4();
  }

  v44 = v43;
  if (v33)
  {
    v45 = v41;
  }

  else
  {
    v45 = 1;
  }

  if ((v45 & 1) == 0)
  {
    v46 = *(*v33 + 672);

    v48 = v46(v47);
    *(&v113 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
    *&v112 = v48;
    sub_1E329504C(&v112, &v115);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v111[0] = v44;
    sub_1E32A87C0(&v115, 0xD00000000000001BLL, 0x80000001E427AD00, isUniquelyReferenced_nonNull_native);

    v44 = v111[0];
  }

  OUTLINED_FUNCTION_30_1();
  (*(v50 + 776))(&v112);
  v51 = MEMORY[0x1E69E6158];
  if (*(&v113 + 1))
  {
    if (swift_dynamicCast())
    {
      v53 = *(&v115 + 1);
      v52 = v115;
      goto LABEL_39;
    }
  }

  else
  {
    sub_1E329505C(&v112);
  }

  v52 = 0;
  v53 = 0;
LABEL_39:
  v54 = sub_1E4205F14();
  v56 = v55;
  *(&v113 + 1) = v51;
  if (v53)
  {
    v57 = v52;
  }

  else
  {
    v57 = 0;
  }

  v58 = 0xE000000000000000;
  if (v53)
  {
    v58 = v53;
  }

  *&v112 = v57;
  *(&v112 + 1) = v58;
  sub_1E329504C(&v112, &v115);
  v59 = swift_isUniquelyReferenced_nonNull_native();
  v111[0] = v44;
  sub_1E32A87C0(&v115, v54, v56, v59);

  v98 = v111[0];
  v60 = v105;
  Strong = v105;
  v62 = v108;
  if (!v105)
  {
    OUTLINED_FUNCTION_30_1();
    v94 = (*(v93 + 648))();
    if (!v94 || (OUTLINED_FUNCTION_5_0(v94 + 48, &v115), Strong = swift_unknownObjectWeakLoadStrong(), , !Strong))
    {
      type metadata accessor for TVAppLauncher(0);
      v95 = [swift_getObjCClassFromMetadata() sharedInstance];
      v96 = [v95 appController];

      if (v96)
      {
        Strong = [v96 appContext];
      }

      else
      {
        Strong = 0;
      }
    }
  }

  OUTLINED_FUNCTION_30_1();
  v64 = (*(v63 + 648))(v60);
  if (v64)
  {
  }

  *&v112 = Strong;
  v105 = Strong;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3E5D0, "zQ\v");
  v65 = sub_1E4205F84();
  v67 = v66;
  v102(v62, v103, v9);
  v68 = v62;
  v69 = sub_1E41FFC94();
  v70 = sub_1E4206814();
  if (os_log_type_enabled(v69, v70))
  {
    v68 = swift_slowAlloc();
    *&v112 = swift_slowAlloc();
    *v68 = 136315394;
    v71 = sub_1E3270FC8(v65, v67, &v112);

    *(v68 + 4) = v71;
    *(v68 + 12) = 2080;
    v72 = sub_1E328692C(v64 != 0);
    v74 = sub_1E3270FC8(v72, v73, &v112);

    *(v68 + 14) = v74;
    _os_log_impl(&dword_1E323F000, v69, v70, "Document::handleEvent appContext:<%s>, is document valid: <%s>", v68, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();

    v75 = v108;
  }

  else
  {

    v75 = v68;
  }

  v99(v75, v9);
  v76 = [objc_opt_self() isSUIEnabled];
  v77 = v106;
  if (v76 && (*(&v113 + 1) = &unk_1F5D5E7B8, v114 = &off_1F5D5CC78, LOBYTE(v112) = 0, v78 = j__OUTLINED_FUNCTION_18(), v68 = a2, v79 = sub_1E39C29F0(&v112, v78 & 1), __swift_destroy_boxed_opaque_existential_1(&v112), (v79 & 1) == 0) && (v80 = sub_1E40C4340(), OUTLINED_FUNCTION_5_0(v80, v111), (v81 = *v80) != 0) && (v112 = 0u, v113 = 0u, LOBYTE(v114) = 1, v82 = *((*MEMORY[0x1E69E7D40] & *v81) + 0x1D0), v83 = v81, v84 = v82(v77, a2, 0, &v112), v110 = v84, v109 = 3, sub_1E4019714(v84, v85, v86), v68 = sub_1E4205E84(), v83, (v68 & 1) == 0))
  {

    v91 = 1;
  }

  else
  {
    v87 = objc_opt_self();
    ViewModelEvent.description.getter(v77);
    sub_1E4205ED4();
    OUTLINED_FUNCTION_50();

    v88 = v100;
    sub_1E3744600(v98);

    v89 = sub_1E4205C44();

    v90 = v105;
    v91 = [v87 handleEvent:v68 targetResponder:v101 appContext:v105 routerDataSource:v88 supplementaryData:v89 extraInfo:0];
  }

  return v91;
}

uint64_t Document.deinit()
{

  sub_1E32AF6F8(v0 + 32);
  MEMORY[0x1E69144A0](v0 + 48);

  return v0;
}

uint64_t Document.__deallocating_deinit()
{
  Document.deinit();
  v0 = OUTLINED_FUNCTION_15_162();

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1E40195DC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E4017924();
  *a1 = result;
  return result;
}

uint64_t static Document.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    v6 = 1;
  }

  else
  {
    OUTLINED_FUNCTION_5_0(a1 + 56, v9);
    v4 = *(a1 + 56);
    OUTLINED_FUNCTION_5_0(a2 + 56, v8);
    v5 = *(a2 + 56);
    if (v4)
    {
      if (v5)
      {
        type metadata accessor for TemplateViewModel(0);
        sub_1E39E4288();

        v6 = sub_1E4205E84();
      }

      else
      {
        v6 = 0;
      }
    }

    else
    {
      v6 = v5 == 0;
    }
  }

  return v6 & 1;
}

unint64_t sub_1E4019714(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF3E5D8;
  if (!qword_1ECF3E5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3E5D8);
  }

  return result;
}

id sub_1E401979C()
{
  v1 = OBJC_IVAR____TtC8VideosUI20MetricsDataFieldCell____lazy_storage___fieldNameLabel;
  v2 = *(v0 + OBJC_IVAR____TtC8VideosUI20MetricsDataFieldCell____lazy_storage___fieldNameLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8VideosUI20MetricsDataFieldCell____lazy_storage___fieldNameLabel);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
    v5 = [objc_opt_self() systemFontOfSize_];
    v6 = OUTLINED_FUNCTION_17_1();
    [v6 v7];

    [v4 setTextAlignment_];
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    v8 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

id sub_1E4019878()
{
  v1 = OBJC_IVAR____TtC8VideosUI20MetricsDataFieldCell____lazy_storage___fieldSubtitleLabel;
  v2 = *(v0 + OBJC_IVAR____TtC8VideosUI20MetricsDataFieldCell____lazy_storage___fieldSubtitleLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8VideosUI20MetricsDataFieldCell____lazy_storage___fieldSubtitleLabel);
  }

  else
  {
    v4 = v0;
    v5 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
    v6 = [objc_opt_self() systemFontOfSize_];
    OUTLINED_FUNCTION_13_0(v6, sel_setFont_);

    type metadata accessor for MetricsCellPresentationUtilities();
    v7 = sub_1E3B625A8();
    OUTLINED_FUNCTION_13_0(v7, sel_setTextColor_);

    [v5 setTextAlignment_];
    [v5 setTranslatesAutoresizingMaskIntoConstraints_];
    v8 = *(v4 + v1);
    *(v4 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

id sub_1E4019978()
{
  v1 = OBJC_IVAR____TtC8VideosUI20MetricsDataFieldCell____lazy_storage___fieldValueLabel;
  v2 = *(v0 + OBJC_IVAR____TtC8VideosUI20MetricsDataFieldCell____lazy_storage___fieldValueLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8VideosUI20MetricsDataFieldCell____lazy_storage___fieldValueLabel);
  }

  else
  {
    v4 = v0;
    v5 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
    type metadata accessor for MetricsCellPresentationUtilities();
    v6 = sub_1E3B625A8();
    OUTLINED_FUNCTION_13_0(v6, sel_setTextColor_);

    [v5 setTextAlignment_];
    v7 = [objc_opt_self() systemFontOfSize_];
    OUTLINED_FUNCTION_13_0(v7, sel_setFont_);

    [v5 setTranslatesAutoresizingMaskIntoConstraints_];
    [v5 setAdjustsFontSizeToFitWidth_];
    v8 = *(v4 + v1);
    *(v4 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

id sub_1E4019A8C()
{
  v1 = OBJC_IVAR____TtC8VideosUI20MetricsDataFieldCell____lazy_storage___viewMargin;
  v2 = *&v0[OBJC_IVAR____TtC8VideosUI20MetricsDataFieldCell____lazy_storage___viewMargin];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC8VideosUI20MetricsDataFieldCell____lazy_storage___viewMargin];
  }

  else
  {
    v4 = [v0 contentView];
    v5 = [v4 layoutMarginsGuide];

    v6 = *&v0[v1];
    *&v0[v1] = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

id sub_1E4019B28(uint64_t a1)
{
  OUTLINED_FUNCTION_4_243(&OBJC_IVAR____TtC8VideosUI20MetricsDataFieldCell____lazy_storage___fieldNameLabel);
  if (v3)
  {
    v4 = sub_1E4205ED4();
  }

  else
  {
    v4 = 0;
  }

  v8.receiver = v1;
  v8.super_class = type metadata accessor for MetricsDataFieldCell();
  v5 = objc_msgSendSuper2(&v8, sel_initWithStyle_reuseIdentifier_, a1, v4);

  v6 = v5;
  sub_1E4019CC0();

  return v6;
}

void sub_1E4019C38()
{
  OUTLINED_FUNCTION_4_243(&OBJC_IVAR____TtC8VideosUI20MetricsDataFieldCell____lazy_storage___fieldNameLabel);
  sub_1E42076B4();
  __break(1u);
}

void sub_1E4019CC0()
{
  [v0 setSelectionStyle_];
  v1 = [v0 contentView];
  v2 = sub_1E401979C();
  v3 = OUTLINED_FUNCTION_17_1();
  [v3 v4];

  v5 = [v0 contentView];
  v6 = sub_1E4019978();
  v7 = OUTLINED_FUNCTION_17_1();
  [v7 v8];

  v9 = [v0 contentView];
  v10 = sub_1E4019878();
  v11 = OUTLINED_FUNCTION_17_1();
  [v11 v12];

  v13 = OBJC_IVAR____TtC8VideosUI20MetricsDataFieldCell____lazy_storage___fieldNameLabel;
  v14 = [*&v0[OBJC_IVAR____TtC8VideosUI20MetricsDataFieldCell____lazy_storage___fieldNameLabel] leadingAnchor];
  v15 = sub_1E4019A8C();
  v16 = [v15 &selRef_loadFairPlayStreamingKeyRequests_completion_ + 1];

  v17 = [v14 constraintEqualToAnchor_];
  [v17 setActive_];

  v18 = [*&v0[v13] trailingAnchor];
  v19 = [*&v0[OBJC_IVAR____TtC8VideosUI20MetricsDataFieldCell____lazy_storage___viewMargin] centerXAnchor];
  v20 = OUTLINED_FUNCTION_17_1();
  v22 = [v20 v21];

  OUTLINED_FUNCTION_2_11();
  v23 = [*&v0[v13] topAnchor];
  v24 = [OUTLINED_FUNCTION_2_242() &selRef_validationResults_fromIndex_];
  v25 = OUTLINED_FUNCTION_17_1();
  v27 = [v25 v26];

  OUTLINED_FUNCTION_2_11();
  v28 = [*&v0[v13] heightAnchor];
  v29 = [OUTLINED_FUNCTION_2_242() heightAnchor];
  v30 = OUTLINED_FUNCTION_17_1();
  v32 = [v30 v31];

  OUTLINED_FUNCTION_2_11();
  v33 = OBJC_IVAR____TtC8VideosUI20MetricsDataFieldCell____lazy_storage___fieldSubtitleLabel;
  v34 = [*&v0[OBJC_IVAR____TtC8VideosUI20MetricsDataFieldCell____lazy_storage___fieldSubtitleLabel] leadingAnchor];
  v35 = [OUTLINED_FUNCTION_2_242() leadingAnchor];
  v36 = OUTLINED_FUNCTION_17_1();
  v38 = [v36 v37];

  OUTLINED_FUNCTION_2_11();
  v39 = [*&v0[v33] trailingAnchor];
  v40 = [OUTLINED_FUNCTION_2_242() trailingAnchor];
  v41 = OUTLINED_FUNCTION_17_1();
  v43 = [v41 v42];

  OUTLINED_FUNCTION_2_11();
  v44 = [*&v0[v33] heightAnchor];
  v45 = [OUTLINED_FUNCTION_2_242() heightAnchor];
  v46 = OUTLINED_FUNCTION_17_1();
  v48 = [v46 v47];

  OUTLINED_FUNCTION_2_11();
  v49 = [*&v0[v33] bottomAnchor];
  v50 = [OUTLINED_FUNCTION_2_242() bottomAnchor];
  v51 = OUTLINED_FUNCTION_17_1();
  v53 = [v51 v52];

  OUTLINED_FUNCTION_2_11();
  v54 = OBJC_IVAR____TtC8VideosUI20MetricsDataFieldCell____lazy_storage___fieldValueLabel;
  v55 = [*&v0[OBJC_IVAR____TtC8VideosUI20MetricsDataFieldCell____lazy_storage___fieldValueLabel] leadingAnchor];
  v56 = [OUTLINED_FUNCTION_2_242() centerXAnchor];
  v57 = OUTLINED_FUNCTION_17_1();
  v59 = [v57 v58];

  OUTLINED_FUNCTION_2_11();
  v60 = [*&v0[v54] trailingAnchor];
  v61 = [OUTLINED_FUNCTION_2_242() trailingAnchor];
  v62 = OUTLINED_FUNCTION_17_1();
  v64 = [v62 v63];

  OUTLINED_FUNCTION_2_11();
  v65 = [*&v0[v54] topAnchor];
  v66 = [OUTLINED_FUNCTION_2_242() topAnchor];
  v67 = OUTLINED_FUNCTION_17_1();
  v69 = [v67 v68];

  OUTLINED_FUNCTION_2_11();
  v70 = [*&v0[v54] bottomAnchor];
  v71 = [OUTLINED_FUNCTION_2_242() bottomAnchor];
  v72 = [v18 &selRef_disableBackgroundMediaPlayback + 5];

  [v72 setActive_];
}

void sub_1E401A27C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_1E401979C();
  sub_1E390E98C(a1, a2, v12);

  v13 = sub_1E4019978();
  sub_1E390E98C(a3, a4, v13);

  v14 = sub_1E4019878();
  sub_1E390E98C(a5, a6, v14);
}

id sub_1E401A334()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MetricsDataFieldCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1E401A3CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[0] = a1;
  v7[1] = a2;
  v7[2] = a3;
  v7[3] = a4;
  return MEMORY[0x1E690DE70](v7, a5, &type metadata for ContentOffsetModifier, a6);
}

unint64_t sub_1E401A408(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EE29C140[0];
  if (!qword_1EE29C140[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE29C140);
  }

  return result;
}

uint64_t sub_1E401A488@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = swift_allocObject();
  *(v12 + 2) = a2;
  *(v12 + 3) = a3;
  *(v12 + 4) = a4;
  *(v12 + 5) = a5;
  v13 = swift_allocObject();
  *(v13 + 2) = a2;
  *(v13 + 3) = a3;
  *(v13 + 4) = a4;
  *(v13 + 5) = a5;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3E5E0, &qword_1E42E5B58);
  (*(*(v14 - 8) + 16))(a6, a1, v14);
  v15 = (a6 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3E5E8, &unk_1E42E5B60) + 36));
  *v15 = sub_1E401A6EC;
  v15[1] = v12;
  v15[2] = sub_1E401A734;
  v15[3] = v13;
  swift_bridgeObjectRetain_n();
  return swift_retain_n();
}

uint64_t sub_1E401A5B8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, double *a3@<X8>)
{
  v6 = sub_1E4201F84();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15[0] = a1;
  v15[1] = a2;
  sub_1E4202274();
  sub_1E4200E84();
  v11 = v10;
  v13 = v12;
  result = (*(v7 + 8))(v9, v6);
  *a3 = v11;
  *(a3 + 1) = v13;
  return result;
}

uint64_t objectdestroyTm_57()
{

  return swift_deallocObject();
}

unint64_t sub_1E401A760()
{
  result = qword_1EE289A80;
  if (!qword_1EE289A80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3E5E8, &unk_1E42E5B60);
    sub_1E32752B0(&qword_1EE2888F8, &qword_1ECF3E5E0, &qword_1E42E5B58, MEMORY[0x1E697FDF8]);
    sub_1E32752B0(&qword_1EE2888A8, &qword_1ECF3E5F0, &unk_1E42E5B70, MEMORY[0x1E69802E0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289A80);
  }

  return result;
}

double sub_1E401A868(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v2 = *MEMORY[0x1E69D5AE8];
  v3 = MEMORY[0x1E69E6158];
  sub_1E4123588(ObjectType, MEMORY[0x1E69E6158]);
  sub_1E4123590(v2, v3, v18);
  v4 = v18[0];
  v5 = v18[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2EAF0, &unk_1E429EC50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E4297BD0;
  *(inited + 32) = sub_1E4205F14();
  *(inited + 40) = v7;
  if (v5)
  {
    v8 = v4;
  }

  else
  {
    v8 = 0;
  }

  v9 = 0xE000000000000000;
  if (v5)
  {
    v9 = v5;
  }

  *(inited + 48) = v8;
  *(inited + 56) = v9;
  *(inited + 64) = sub_1E4205F14();
  *(inited + 72) = v10;
  *(inited + 80) = sub_1E4205F14();
  *(inited + 88) = v11;
  *(inited + 96) = sub_1E4205F14();
  *(inited + 104) = v12;
  *(inited + 112) = sub_1E4205F14();
  *(inited + 120) = v13;
  v14 = sub_1E4205CB4();
  v15 = sub_1E37E4D10(v14);

  return sub_1E3FF09E4(v15, v16);
}

uint64_t sub_1E401AA28(void *a1, void *a2)
{
  [a1 elapsedTime];
  v5 = v4;
  result = [a1 currentMediaItem];
  if (result)
  {
    swift_getObjectType();
    v7 = *MEMORY[0x1E69D5D08];
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3E5F8, &qword_1E42E5BA8);
    sub_1E4123590(v7, v8, &v50);
    if (v50)
    {
      v9 = v50;
    }

    else
    {
      v9 = MEMORY[0x1E69E7CC0];
    }

    result = sub_1E32AE9B0(v9);
    v47 = a2;
    if (result)
    {
      v10 = result;
      if (result < 1)
      {
        __break(1u);
        return result;
      }

      v48 = result;
      v49 = 0;
      v11 = 0;
      v12 = v9 & 0xC000000000000001;
      v13 = 0xE000000000000000;
      v14 = &selRef_setWaitingForTransactionToStart_;
      v15 = &selRef_dismissPresentedViewController;
      do
      {
        if (v12)
        {
          v16 = MEMORY[0x1E6911E60](v11, v9);
        }

        else
        {
          v16 = *(v9 + 8 * v11 + 32);
        }

        v17 = v16;
        [v16 v14[271]];
        v19 = v18;
        [v17 v14[271]];
        v21 = v20;
        [v17 v15[102]];
        if (v19 <= v5 && v5 < v21 + v22 && (v23 = [v17 adamID]) != 0)
        {
          v24 = v23;

          v25 = [objc_allocWithZone(MEMORY[0x1E696ADA0]) init];
          v26 = [v25 stringFromNumber_];
          if (v26)
          {
            v27 = v26;
            v49 = sub_1E4205F14();
            v28 = v9;
            v29 = v14;
            v30 = v12;
            v31 = v15;
            v33 = v32;

            v13 = v33;
            v15 = v31;
            v12 = v30;
            v14 = v29;
            v9 = v28;
            v10 = v48;
          }

          else
          {

            v49 = 0;
            v13 = 0xE000000000000000;
          }
        }

        else
        {
        }

        ++v11;
      }

      while (v10 != v11);
    }

    else
    {
      v49 = 0;
      v13 = 0xE000000000000000;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2EAF0, &unk_1E429EC50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1E4298AD0;
    *(inited + 32) = sub_1E4205F14();
    *(inited + 40) = v35;
    v36 = v13;
    v37 = [v47 canonicalId];
    v38 = sub_1E4205F14();
    v40 = v39;

    *(inited + 48) = v38;
    *(inited + 56) = v40;
    *(inited + 64) = sub_1E4205F14();
    *(inited + 72) = v41;
    *(inited + 80) = sub_1E4205F14();
    *(inited + 88) = v42;
    *(inited + 96) = sub_1E4205F14();
    *(inited + 104) = v43;
    *(inited + 112) = sub_1E4205F14();
    *(inited + 120) = v44;
    *(inited + 128) = sub_1E4205F14();
    *(inited + 136) = v45;
    *(inited + 144) = v49;
    *(inited + 152) = v36;
    v46 = sub_1E4205CB4();
    sub_1E37E4D10(v46);

    sub_1E3FF0BCC();

    return swift_unknownObjectRelease();
  }

  return result;
}

unint64_t sub_1E401AE60()
{
  result = qword_1ECF3C2E0;
  if (!qword_1ECF3C2E0)
  {
    type metadata accessor for SportsCanonicalBannerPresenter(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3C2E0);
  }

  return result;
}

double sub_1E401AED8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  *a3 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18, &qword_1E42982F0);
  swift_storeEnumTagMultiPayload();
  v6 = type metadata accessor for LegacySportsCanonicalBannerView(0);
  v7 = v6[5];
  *(a3 + v7) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D6C8, &unk_1E42A9DE0);
  swift_storeEnumTagMultiPayload();
  *(a3 + v6[7]) = 0;
  *(a3 + v6[8]) = 0;
  *(a3 + v6[9]) = 0;
  *(a3 + v6[10]) = 0;
  *(a3 + v6[11]) = 0;
  *(a3 + v6[12]) = 0;
  *(a3 + v6[13]) = 0;
  *(a3 + v6[14]) = 0;
  *(a3 + v6[15]) = 0;
  *(a3 + v6[18]) = 0;
  *(a3 + v6[17]) = a2;
  v8 = (a3 + v6[6]);
  type metadata accessor for SportsCanonicalBannerPresenter(0);
  sub_1E401AE60();

  *v8 = sub_1E42010C4();
  v8[1] = v9;
  v10 = (*(*a1 + 392))();
  if (v10)
  {
    if (*v10 == _TtC8VideosUI37LegacySportsCanonicalBannerViewLayout)
    {
      goto LABEL_5;
    }
  }

  type metadata accessor for LegacySportsCanonicalBannerViewLayout();
  v10 = sub_1E37C2700();
LABEL_5:
  *(a3 + v6[16]) = v10;
  sub_1E401B0E8();

  return result;
}

double sub_1E401B0E8()
{
  v1 = v0;
  OUTLINED_FUNCTION_106();
  v2 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = (*(*v0 + 464))(v6);
  if (v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v11 = sub_1E32AE9B0(v10);
  if (v11)
  {
    v13 = v11;
    if (v11 < 1)
    {
      __break(1u);
LABEL_57:
      JUMPOUT(0);
    }

    v14 = 0;
    v15 = v10 & 0xC000000000000001;
    v43[1] = v0 + 8;
    v47 = (v4 + 8);
    v48 = (v4 + 16);
    *&v12 = 136315138;
    v44 = v12;
    v46 = v10;
    v49 = v11;
    v50 = v10 & 0xC000000000000001;
    do
    {
      if (v15)
      {
        v18 = MEMORY[0x1E6911E60](v14, v10);
      }

      else
      {
        v18 = *(v10 + 8 * v14 + 32);
      }

      v19 = *(v18 + 98);
      if (!(!v17 & v16))
      {
        switch(*(v18 + 98))
        {
          case 0xF:
            if (*v18 != _TtC8VideosUI13TextViewModel)
            {

              v18 = 0;
            }

            v0 = *(type metadata accessor for LegacySportsCanonicalBannerView(0) + 36);
            goto LABEL_51;
          case 0x10:
          case 0x12:
          case 0x13:
          case 0x14:
          case 0x15:
          case 0x16:
            goto LABEL_25;
          case 0x11:
            if (*v18 != _TtC8VideosUI13TextViewModel)
            {

              v18 = 0;
            }

            v0 = *(type metadata accessor for LegacySportsCanonicalBannerView(0) + 52);
            goto LABEL_51;
          case 0x17:
            if (*v18 != _TtC8VideosUI13TextViewModel)
            {

              v18 = 0;
            }

            v0 = *(type metadata accessor for LegacySportsCanonicalBannerView(0) + 40);
            goto LABEL_51;
          case 0x18:
            if (*v18 != _TtC8VideosUI13TextViewModel)
            {

              v18 = 0;
            }

            v0 = *(type metadata accessor for LegacySportsCanonicalBannerView(0) + 44);
            goto LABEL_51;
          default:
            goto LABEL_57;
        }
      }

      switch(v19)
      {
        case 3:
          if (*v18 != _TtC8VideosUI13TextViewModel)
          {

            v18 = 0;
          }

          v0 = *(type metadata accessor for LegacySportsCanonicalBannerView(0) + 56);
          goto LABEL_51;
        case 4:
          if (*v18 != _TtC8VideosUI13TextViewModel)
          {

            v18 = 0;
          }

          v0 = *(type metadata accessor for LegacySportsCanonicalBannerView(0) + 48);
LABEL_51:

          *(v1 + v0) = v18;
          goto LABEL_52;
        case 34:
          type metadata accessor for ImageViewModel();
          v39 = swift_dynamicCastClass();
          v0 = v39;
          if (!v39)
          {
          }

          v38 = *(type metadata accessor for LegacySportsCanonicalBannerView(0) + 60);
          break;
        case 40:
          type metadata accessor for ImageViewModel();
          v37 = swift_dynamicCastClass();
          v0 = v37;
          if (!v37)
          {
          }

          v38 = *(type metadata accessor for LegacySportsCanonicalBannerView(0) + 72);
          break;
        case 234:
          type metadata accessor for SportsCanonicalBannerScoreboardViewModel(0);
          if (swift_dynamicCastClass())
          {
            v20 = OUTLINED_FUNCTION_106();
            v21 = *(type metadata accessor for LegacySportsCanonicalBannerView(v20) + 28);

            v13 = v49;

            *(v1 + v21) = v0;
            v22 = *(*v0 + 1936);

            v22(v23);
            v10 = v46;
          }

          else
          {
            v40 = *(type metadata accessor for LegacySportsCanonicalBannerView(0) + 28);
            v0 = *(v1 + v40);

            *(v1 + v40) = 0;
          }

          goto LABEL_47;
        default:
LABEL_25:
          v24 = sub_1E3E37F30();
          (*v48)(v8, v24, v2);

          v0 = sub_1E41FFC94();
          v25 = sub_1E4206814();

          if (os_log_type_enabled(v0, v25))
          {
            v26 = swift_slowAlloc();
            v27 = swift_slowAlloc();
            v51 = v27;
            *v26 = v44;
            sub_1E384EE08(v19);
            v30 = sub_1E3270FC8(v28, v29, &v51);
            v45 = v0;
            v31 = v1;
            v32 = v8;
            v33 = v2;
            v34 = v30;

            *(v26 + 4) = v34;
            v2 = v33;
            v8 = v32;
            v1 = v31;
            v0 = v45;
            _os_log_impl(&dword_1E323F000, v45, v25, "LegacySportsCanonicalBannerView: unhandled view model type [%s]", v26, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v27);
            v35 = v27;
            v10 = v46;
            MEMORY[0x1E69143B0](v35, -1, -1);
            v36 = v26;
            v15 = v50;
            MEMORY[0x1E69143B0](v36, -1, -1);
          }

          (*v47)(v8, v2);
          v13 = v49;
          goto LABEL_52;
      }

      *(v1 + v38) = v0;
LABEL_47:
      v15 = v50;
LABEL_52:
      ++v14;
    }

    while (v13 != v14);
  }

  v41 = type metadata accessor for LegacySportsCanonicalBannerView(0);
  v51 = *(v1 + *(v41 + 28));
  MEMORY[0x1EEE9AC00](v41);
  v43[-2] = v1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29420, &qword_1E429AFA0);
  sub_1E4148DE0(sub_1E401D10C);

  return result;
}

double sub_1E401B7BC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B4C8, &qword_1E42DD940);
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  OUTLINED_FUNCTION_5_7();
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v15 - v9;
  (*(**a1 + 1640))(v8);
  sub_1E32752B0(&qword_1ECF3C600, &qword_1ECF2B4C8, &qword_1E42DD940, MEMORY[0x1E695C068]);
  v11 = sub_1E42006B4();
  (*(v6 + 8))(v10, v4);
  if (*(a2 + *(type metadata accessor for LegacySportsCanonicalBannerView(0) + 32)))
  {
    OUTLINED_FUNCTION_8();
    v13 = *(v12 + 1120);

    v13(v11);
  }

  return result;
}

uint64_t sub_1E401B964@<X0>(uint64_t a1@<X8>)
{
  v62 = a1;
  v2 = type metadata accessor for LegacySportsCanonicalBannerView(0);
  OUTLINED_FUNCTION_0_10();
  v58 = v3;
  MEMORY[0x1EEE9AC00](v4);
  v59 = v5;
  OUTLINED_FUNCTION_17_3(&v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3E708, &qword_1E42E5DD8);
  OUTLINED_FUNCTION_17_2(v6);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v56 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3E6F8, &qword_1E42E5DD0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v56 - v12;
  *&v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3E6E8, &qword_1E42E5DC8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v56 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3E6D0, &qword_1E42E5DC0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v56 - v19;
  *v9 = sub_1E4201D44();
  *(v9 + 1) = 0;
  v9[16] = 1;
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3E710, &unk_1E42E5DE0) + 44);
  v22 = *(v1 + *(v2 + 28));
  v60 = v1;
  if (v22)
  {
    __src[0] = v22;
    sub_1E401BF0C(__src, v1, &v9[v21]);
  }

  else
  {
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3E718, &qword_1E42E5DF0);
    __swift_storeEnumTagSinglePayload(&v9[v21], 1, 1, v23);
  }

  sub_1E4203DA4();
  OUTLINED_FUNCTION_23_3();
  sub_1E42015C4();
  sub_1E3741EA0(v9, v13, &qword_1ECF3E708, &qword_1E42E5DD8);
  memcpy(&v13[*(v10 + 36)], __src, 0x70uLL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BA8, &unk_1E42980C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E4299720;
  v25 = sub_1E4202764();
  *(inited + 32) = v25;
  v26 = sub_1E4202784();
  *(inited + 33) = v26;
  v27 = sub_1E4202774();
  sub_1E4202774();
  if (sub_1E4202774() != v25)
  {
    v27 = sub_1E4202774();
  }

  sub_1E4202774();
  if (sub_1E4202774() != v26)
  {
    v27 = sub_1E4202774();
  }

  v28 = v60;
  sub_1E37C26C0();
  sub_1E4200A54();
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  sub_1E3741EA0(v13, v16, &qword_1ECF3E6F8, &qword_1E42E5DD0);
  v37 = &v16[*(v57 + 36)];
  *v37 = v27;
  *(v37 + 1) = v30;
  *(v37 + 2) = v32;
  *(v37 + 3) = v34;
  *(v37 + 4) = v36;
  v37[40] = 0;
  v38 = sub_1E4202754();
  v39 = sub_1E4202774();
  sub_1E4202774();
  if (sub_1E4202774() != v38)
  {
    v39 = sub_1E4202774();
  }

  OUTLINED_FUNCTION_8();
  (*(v40 + 176))(v64);
  v41 = v65;
  v42 = 0uLL;
  v43 = 0uLL;
  if ((v65 & 1) == 0)
  {
    sub_1E3952BD8(v64[0], v64[1], v64[2]);
    sub_1E4200A54();
    *(&v43 + 1) = v44;
    *(&v42 + 1) = v45;
  }

  v56 = v43;
  v57 = v42;
  sub_1E3741EA0(v16, v20, &qword_1ECF3E6E8, &qword_1E42E5DC8);
  v46 = &v20[*(v17 + 36)];
  *v46 = v39;
  *(v46 + 24) = v56;
  *(v46 + 8) = v57;
  v46[40] = v41 & 1;
  v47 = v61;
  sub_1E401CF2C(v28, v61);
  v48 = (*(v58 + 80) + 16) & ~*(v58 + 80);
  v49 = swift_allocObject();
  sub_1E401D0B4(v47, v49 + v48);
  OUTLINED_FUNCTION_3_245();
  sub_1E401CDF0(v50, v51, v52, v53);
  v54 = OUTLINED_FUNCTION_51_1();
  sub_1E40AB6EC(v54 & 1);

  return sub_1E401D04C(v20);
}

uint64_t sub_1E401BF0C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v48 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29BF8, "62\v");
  OUTLINED_FUNCTION_17_2(v5);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_17_3(&v42 - v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D758, &unk_1E42A9F00);
  OUTLINED_FUNCTION_17_2(v8);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_17_3(&v42 - v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BB8, &unk_1E429B6A0);
  OUTLINED_FUNCTION_17_2(v11);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_17_3(&v42 - v13);
  v14 = type metadata accessor for SportsBannerScoreboardView(0);
  v15 = OUTLINED_FUNCTION_17_2(v14);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *a1;
  v19 = *(*a1 + 312);
  v20 = type metadata accessor for LegacySportsCanonicalBannerView(0);
  v21 = *(a2 + v20[17]);
  v22 = *(a2 + v20[9]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D378, &unk_1E42E1610);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E4299720;
  *(inited + 32) = *(a2 + v20[10]);
  *(inited + 40) = *(a2 + v20[12]);
  v24 = MEMORY[0x1E69E7CC0];
  __src[0] = MEMORY[0x1E69E7CC0];

  v46 = v18;

  v45 = v19;

  v44 = v21;

  v43 = v22;
  v25 = v17;
  v26 = v50;

  for (i = 0; i != 2; ++i)
  {
    if (*(inited + 8 * i + 32))
    {

      MEMORY[0x1E6910BF0](v29);
      if (*((__src[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((__src[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1E42062F4();
      }

      sub_1E4206324();
      v24 = __src[0];
    }
  }

  swift_setDeallocating();
  sub_1E3CAF5C0();
  v30 = *(a2 + v20[14]);
  v31 = *(a2 + v20[15]);
  v32 = *(a2 + v20[7]);
  if (v32)
  {
    OUTLINED_FUNCTION_8();
    v34 = *(v33 + 392);

    v36 = v34(v35);
    v32 = v36;
    if (v36 && *v36 != _TtCC8VideosUI37LegacySportsCanonicalBannerViewLayout20ScoreboardViewLayout)
    {

      v32 = 0;
    }

    v26 = v50;
  }

  else
  {
  }

  v37 = v47;
  sub_1E3F36C98();
  v38 = v49;
  sub_1E3F34424();
  sub_1E3F36C9C();
  sub_1E3F34494(v37, v38, v26, v43, v24, v25, v30, v31, v32);
  sub_1E4203DA4();
  OUTLINED_FUNCTION_23_3();
  sub_1E42015C4();
  v39 = v48;
  sub_1E401D0B4(v25, v48);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3E718, &qword_1E42E5DF0);
  memcpy((v39 + *(v40 + 36)), __src, 0x70uLL);
  return __swift_storeEnumTagSinglePayload(v39, 0, 1, v40);
}

double sub_1E401C48C(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1E4200674();

  return v3;
}

uint64_t sub_1E401C570(uint64_t a1, uint64_t a2, double a3)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1E4200684();
}

uint64_t sub_1E401C5E0()
{
  v1 = OBJC_IVAR____TtC8VideosUI26SportsCanonicalBannerProxy__opacity;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF429B0, &unk_1E42AB480);
  OUTLINED_FUNCTION_2();
  v4 = *(v3 + 8);
  v4(v0 + v1, v2);
  v4(v0 + OBJC_IVAR____TtC8VideosUI26SportsCanonicalBannerProxy__containerWidth, v2);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v5, v6);
}

uint64_t sub_1E401C6B0()
{
  v0 = swift_allocObject();
  sub_1E401C6E8();
  return v0;
}

uint64_t sub_1E401C6E8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF429B0, &unk_1E42AB480);
  OUTLINED_FUNCTION_0_10();
  v3 = v2;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v11 - v5;
  v7 = OBJC_IVAR____TtC8VideosUI26SportsCanonicalBannerProxy__opacity;
  v12 = 0x3FF0000000000000;
  sub_1E4200634();
  v8 = *(v3 + 32);
  v8(v0 + v7, v6, v1);
  v9 = OBJC_IVAR____TtC8VideosUI26SportsCanonicalBannerProxy__containerWidth;
  v12 = 0;
  sub_1E4200634();
  v8(v0 + v9, v6, v1);
  return v0;
}

double sub_1E401C810()
{
  OUTLINED_FUNCTION_8();
  sub_1E401AE60();
  sub_1E4200514();
  sub_1E4200594();

  return result;
}

uint64_t sub_1E401C8B0()
{
  v1 = OBJC_IVAR____TtC8VideosUI30SportsCanonicalBannerPresenter_badgePresenter;
  type metadata accessor for TextBadgePresenter(0);
  v2 = OUTLINED_FUNCTION_106();
  *(v0 + v1) = sub_1E3789F30(v2);

  return sub_1E3B500B4();
}

uint64_t sub_1E401C914()
{
  v0 = sub_1E3B4FF80();

  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1E401C9CC(uint64_t a1)
{
  sub_1E401CC04(319, &qword_1EE289EB0, MEMORY[0x1E697E730], MEMORY[0x1E697DCC0]);
  OUTLINED_FUNCTION_39_6();
  if (!(!v3 & v2))
  {
    sub_1E38FED58(319);
    OUTLINED_FUNCTION_39_6();
    if (!(!v3 & v2))
    {
      sub_1E3F16858(319);
      OUTLINED_FUNCTION_39_6();
      if (!(!v3 & v2))
      {
        sub_1E401CC04(319, &qword_1ECF3C388, type metadata accessor for SportsCanonicalBannerScoreboardViewModel, MEMORY[0x1E69E6720]);
        OUTLINED_FUNCTION_39_6();
        if (!(!v3 & v2))
        {
          sub_1E401CC04(319, &qword_1ECF3C390, type metadata accessor for SportStatsViewModel, MEMORY[0x1E69E6720]);
          OUTLINED_FUNCTION_39_6();
          if (!(!v3 & v2))
          {
            sub_1E401CC04(319, qword_1EE283398, type metadata accessor for TextViewModel, MEMORY[0x1E69E6720]);
            OUTLINED_FUNCTION_39_6();
            if (!(!v3 & v2))
            {
              sub_1E401CC04(319, qword_1EE282B40, type metadata accessor for ImageViewModel, MEMORY[0x1E69E6720]);
              OUTLINED_FUNCTION_39_6();
              if (!(!v3 & v2))
              {
                v4 = type metadata accessor for LegacySportsCanonicalBannerViewLayout();
                if (v5 > 0x3F)
                {
                  return v4;
                }

                v4 = type metadata accessor for SportsCanonicalBannerProxy(319);
                if (v6 > 0x3F)
                {
                  return v4;
                }

                else
                {
                  swift_cvw_initStructMetadataWithLayoutString();
                  return 0;
                }
              }
            }
          }
        }
      }
    }
  }

  return v1;
}

void sub_1E401CC04(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1E401CC90(uint64_t a1)
{
  sub_1E401CD20();
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1E401CD20()
{
  if (!qword_1EE28A0A8)
  {
    v0 = sub_1E4200694();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE28A0A8);
    }
  }
}

uint64_t sub_1E401CDF0(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E401CE74()
{
  result = qword_1ECF3E6F0;
  if (!qword_1ECF3E6F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3E6F8, &qword_1E42E5DD0);
    sub_1E32752B0(&qword_1ECF3E700, &qword_1ECF3E708, &qword_1E42E5DD8, MEMORY[0x1E6981870]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3E6F0);
  }

  return result;
}

uint64_t sub_1E401CF2C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LegacySportsCanonicalBannerView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E401CF90()
{
  v1 = type metadata accessor for LegacySportsCanonicalBannerView(0);
  result = OUTLINED_FUNCTION_17_2(v1);
  if (*(v0 + ((*(v3 + 80) + 16) & ~*(v3 + 80)) + *(result + 36)))
  {
    OUTLINED_FUNCTION_8();
    result = (*(v4 + 1256))();
    if (result)
    {
      (result)();
      v5 = OUTLINED_FUNCTION_32_0();

      return sub_1E37FAED8(v5, v6);
    }
  }

  return result;
}

uint64_t sub_1E401D04C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3E6D0, &qword_1E42E5DC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E401D0B4(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_106();
  v4(v3);
  OUTLINED_FUNCTION_2();
  v5 = OUTLINED_FUNCTION_32_0();
  v6(v5);
  return a2;
}

void *sub_1E401D114(unsigned __int16 *a1, void *a2)
{
  v4 = sub_1E41FFCB4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v80 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a2)
  {
    v71 = sub_1E324FBDC();
    (*(v5 + 16))(v7, v71, v4);

    v72 = v7;
    v73 = sub_1E41FFC94();
    v74 = sub_1E4206814();

    if (os_log_type_enabled(v73, v74))
    {
      v75 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      v84[0] = v76;
      *v75 = 136315138;
      sub_1E384EE08(a1[49]);
      v79 = sub_1E3270FC8(v77, v78, v84);

      *(v75 + 4) = v79;
      _os_log_impl(&dword_1E323F000, v73, v74, "SportsFavoritesLockupCell: Failed to get correct cell for [%s]", v75, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v76);
      MEMORY[0x1E69143B0](v76, -1, -1);
      MEMORY[0x1E69143B0](v75, -1, -1);
    }

    (*(v5 + 8))(v72, v4);
    goto LABEL_29;
  }

  v8 = *(*a1 + 488);
  v9 = a2;
  v10 = v8();
  if (!v10)
  {
LABEL_13:

    v51 = v9;
    return a2;
  }

  v11 = v10;
  if (!*(v10 + 16))
  {

    goto LABEL_13;
  }

  v12 = (*(*a1 + 392))();
  if (v12)
  {
    if (*v12 == _TtC8VideosUI31SportsFavoritesLockupCellLayout)
    {
      v13 = MEMORY[0x1E69E7D40];
      v14 = *((*MEMORY[0x1E69E7D40] & *v9) + 0x98);

      v14(v80);
      type metadata accessor for UIFactory();
      v16 = sub_1E373E010(23, v11, v15);
      OUTLINED_FUNCTION_0_320();
      v18 = (*(v17 + 216))();
      sub_1E3280A90(0, &qword_1EE23AD40, off_1E87283A8);
      OUTLINED_FUNCTION_1_277();
      v21 = sub_1E393D92C(v16, v18, v19, 0, v20);

      sub_1E325F748(v84, &qword_1ECF296C0, &unk_1E429BBE0);
      OUTLINED_FUNCTION_0_320();
      (*(v22 + 224))(v21);
      v24 = sub_1E373E010(39, v11, v23);

      OUTLINED_FUNCTION_0_320();
      v26 = (*(v25 + 240))();
      sub_1E3280A90(0, &qword_1EE23B360, 0x1E69DF740);
      OUTLINED_FUNCTION_1_277();
      v29 = sub_1E393D92C(v24, v26, v27, 0, v28);

      sub_1E325F748(v84, &qword_1ECF296C0, &unk_1E429BBE0);
      OUTLINED_FUNCTION_0_320();
      v31 = (*(v30 + 248))(v29);
      v32 = (*((*v13 & *v9) + 0x120))(v31);
      v82 = v32;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3E720, &qword_1E42E5DF8);
      OUTLINED_FUNCTION_2_243();

      v33 = (*((*v13 & *v9) + 0x128))(v84[0]);
      v34 = (*((*v13 & *v9) + 0x138))(v33);
      v82 = v34;
      OUTLINED_FUNCTION_2_243();

      (*((*v13 & *v9) + 0x140))(v84[0]);
      v35 = a1[49];
      if ((sub_1E373F6E0(v35, 212, v36, v37, v38, v39) & 1) == 0)
      {
        if (sub_1E373F6E0(v35, 211, v40, v41, v42, v43))
        {
          OUTLINED_FUNCTION_0_320();
          v57 = (*(v56 + 264))();
          if (!v57)
          {
            v57 = [objc_allocWithZone(MEMORY[0x1E69DF740]) init];
          }

          v58 = v57;
          v59 = objc_opt_self();
          v60 = sub_1E401DD48(0x6568632D7473696CLL, 0xEC0000006E6F7276, v59);
          [v58 setImage_];
          v61 = [objc_opt_self() systemGrayColor];
          [v58 _setTintColor_];

          v62 = *((*v13 & *v9) + 0x110);
          v63 = v58;
          v62(v58);
          OUTLINED_FUNCTION_0_320();
          (*(v64 + 176))(0);
          OUTLINED_FUNCTION_0_320();
          (*(v65 + 200))(1);
        }

        else if (sub_1E373F6E0(v35, 210, v52, v53, v54, v55))
        {
          OUTLINED_FUNCTION_0_320();
          (*(v66 + 176))(1);
          OUTLINED_FUNCTION_0_320();
          (*(v67 + 200))(0);
        }

        goto LABEL_23;
      }

      (*(*a1 + 672))();
      v85 = &type metadata for ViewModelKeys;
      v86 = &off_1F5D7BCA8;
      LOBYTE(v84[0]) = 11;
      OUTLINED_FUNCTION_4_244();

      if (v83)
      {
        v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
        if ((OUTLINED_FUNCTION_3_246(v44, v45, v46, v44) & 1) == 0)
        {
          goto LABEL_21;
        }

        __swift_destroy_boxed_opaque_existential_1(v84);
        v85 = &unk_1F5D5D528;
        v86 = &off_1F5D5C868;
        LOBYTE(v84[0]) = 0;
        OUTLINED_FUNCTION_4_244();

        if (v83)
        {
          if (OUTLINED_FUNCTION_3_246(v47, v48, v49, MEMORY[0x1E69E6370]))
          {
            v50 = v81;
            __swift_destroy_boxed_opaque_existential_1(v84);
            sub_1E401DB1C(v9, v50);
LABEL_22:
            OUTLINED_FUNCTION_0_320();
            (*(v68 + 176))(0);
            OUTLINED_FUNCTION_0_320();
            (*(v69 + 200))(1);
LABEL_23:

            return a2;
          }

LABEL_21:
          __swift_destroy_boxed_opaque_existential_1(v84);
          goto LABEL_22;
        }
      }

      __swift_destroy_boxed_opaque_existential_1(v84);
      sub_1E325F748(&v82, &unk_1ECF296E0, &unk_1E4298030);
      goto LABEL_22;
    }
  }

LABEL_29:
  result = sub_1E42076B4();
  __break(1u);
  return result;
}

id sub_1E401DADC@<X0>(void *a1@<X8>)
{
  type metadata accessor for SeparatorView();
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *a1 = result;
  return result;
}

void sub_1E401DB1C(void *a1, char a2)
{
  v4 = MEMORY[0x1E69E7D40];
  v5 = (*((*MEMORY[0x1E69E7D40] & *a1) + 0x108))();
  if (!v5)
  {
    v5 = [objc_allocWithZone(MEMORY[0x1E69DF740]) init];
  }

  v6 = v5;
  v7 = objc_opt_self();
  if (a2)
  {
    v8 = sub_1E4205ED4();
    v9 = [v7 imageForResourceName_];

    v10 = objc_opt_self();
    v16 = v9;
    v11 = [v10 systemRedColor];
    [v6 _setTintColor_];
  }

  else
  {
    v12 = sub_1E4205ED4();
    v13 = [v7 imageForResourceName_];

    v16 = v13;
    [v6 _setTintColor_];
  }

  [v6 setImage_];

  v14 = *((*v4 & *a1) + 0x110);
  v15 = v6;
  v14(v6);
}

id sub_1E401DD48(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1E4205ED4();

  v5 = [a3 imageForResourceName_];

  return v5;
}

uint64_t sub_1E401DDD4()
{
  if (!*(v0 + 408) || (OUTLINED_FUNCTION_8(), (result = (*(v1 + 392))()) == 0))
  {
    if (*(v0 + 416))
    {
      OUTLINED_FUNCTION_8();
      return (*(v3 + 392))();
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void sub_1E401DE60()
{
  OUTLINED_FUNCTION_41_5();
  v1 = v0;
  v133 = v2;
  v89 = v3;
  memcpy(v194, v0, sizeof(v194));
  v121 = *(v1 + 104);
  v122 = *(v1 + 96);
  v4 = *(v1 + 112);
  v120 = *(v1 + 120);
  v5 = *(v1 + 136);
  v123 = *(v1 + 128);
  v124 = *(v1 + 144);
  v6 = *(v1 + 152);
  v125 = *(v1 + 168);
  v126 = *(v1 + 160);
  v97 = *(v1 + 176);
  v7 = *(v1 + 177);
  v127 = *(v1 + 178);
  v91 = *(v1 + 193);
  v93 = *(v1 + 192);
  v90 = *(v1 + 194);
  v98 = *(v1 + 184);
  v99 = *(v1 + 208);
  v8 = *(v1 + 216);
  v128 = *(v1 + 217);
  v129 = *(v1 + 218);
  v130 = *(v1 + 224);
  v131 = *(v1 + 240);
  v132 = *(v1 + 256);
  v100 = *(v1 + 200);
  v101 = *(v1 + 272);
  v9 = *(v1 + 280);
  v94 = *(v1 + 264);
  v95 = *(v1 + 281);
  v102 = *(v1 + 288);
  v96 = *(v1 + 296);
  v10 = *(v1 + 304);
  v11 = *(v1 + 312);
  v12 = *(v1 + 320);
  v13 = *(v1 + 328);
  type metadata accessor for CGSize(0);
  OUTLINED_FUNCTION_30_82();
  v88 = *&__src[0];
  v118 = *&__src[1];
  *&v135[8] = 0;
  *v135 = 0;
  OUTLINED_FUNCTION_30_82();
  v86 = *(&__src[0] + 1);
  v87 = __src[0];
  v117 = *&__src[1];
  type metadata accessor for AppEnvironment(0);
  OUTLINED_FUNCTION_16_149(&qword_1EE283350);
  v14 = sub_1E4201754();
  v115 = v15;
  v116 = v14;
  memcpy(__dst, v1, sizeof(__dst));
  if (sub_1E3748B78(__dst) == 1)
  {

    v16 = sub_1E3EBA288();
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    memcpy(__src, v16, sizeof(__src));
    v11 = *(&__src[19] + 1);
    v10 = *&__src[19];
    v13 = *(&__src[20] + 1);
    v12 = *&__src[20];
    v95 = BYTE9(__src[17]);
    v96 = BYTE8(__src[18]);
    v9 = BYTE8(__src[17]);
    v94 = BYTE8(__src[16]);
    v101 = *&__src[17];
    v102 = *&__src[18];
    v132 = *&__src[16];
    v130 = __src[14];
    v131 = __src[15];
    v129 = BYTE10(__src[13]);
    v128 = BYTE9(__src[13]);
    v99 = *&__src[13];
    v100 = *(&__src[12] + 1);
    v8 = BYTE8(__src[13]);
    v90 = BYTE2(__src[12]);
    v91 = BYTE1(__src[12]);
    v93 = __src[12];
    v98 = *(&__src[11] + 1);
    v127 = BYTE2(__src[11]);
    v125 = *(&__src[10] + 1);
    v126 = *&__src[10];
    v97 = __src[11];
    v7 = BYTE1(__src[11]);
    v6 = BYTE8(__src[9]);
    v123 = *&__src[8];
    v124 = *&__src[9];
    v5 = BYTE8(__src[8]);
    v122 = *&__src[6];
    v120 = *(&__src[7] + 1);
    v121 = *(&__src[6] + 1);
    v4 = __src[7];
    sub_1E37E6E1C(__src, v135);
    memcpy(v193, __src, sizeof(v193));
  }

  else
  {
    memcpy(v193, v194, sizeof(v193));
  }

  memcpy(v188, v193, 0x5BuLL);
  v111 = v4 & 1;
  v174 = v4 & 1;
  v173 = v5 & 1;
  v112 = v6 & 1;
  v172 = v6 & 1;
  v113 = v7 & 1;
  v171 = v7 & 1;
  v85 = v8 & 1;
  v176 = v8 & 1;
  v175 = v9 & 1;
  v178 = 0;
  _s21EpicInlinePlatterInfoCMa(0);
  sub_1E3294EE4(v1, __src, &qword_1ECF2B5C0, &unk_1E42B4E40);
  v114 = sub_1E3BEF768();
  v17 = *(*v133 + 392);

  if (v17())
  {
    type metadata accessor for EpicInlineLayout();
    v18 = swift_dynamicCastClass();
    if (v18)
    {
      v19 = v18;
      goto LABEL_9;
    }
  }

  type metadata accessor for EpicInlineLayout();
  v19 = sub_1E3D48404();
LABEL_9:

  memcpy(v191, v1, sizeof(v191));
  v20 = sub_1E3748B78(v191);
  v21 = 0uLL;
  if (v20 != 1)
  {
    v22 = vdup_n_s32(LOBYTE(v191[27]));
    v23.i64[0] = v22.u32[0];
    v23.i64[1] = v22.u32[1];
    v21 = vandq_s8(*&v191[25], vcgezq_s64(vshlq_n_s64(v23, 0x3FuLL)));
  }

  *v135 = v21;

  v24 = OUTLINED_FUNCTION_30_82();
  v83 = *(&__src[0] + 1);
  v84 = *&__src[0];
  v82 = *&__src[1];
  v25 = *(*v133 + 488);
  v26 = (v25)(v24);
  if (v26)
  {
    v110 = sub_1E373E010(138, v26, v27);
  }

  else
  {
    v110 = 0;
  }

  v28 = (v25)(v26);
  if (!v28)
  {
    goto LABEL_19;
  }

  v30 = sub_1E373E010(117, v28, v29);

  if (!v30)
  {
    goto LABEL_19;
  }

  type metadata accessor for CollectionViewModel();
  v31 = swift_dynamicCastClass();
  if (!v31)
  {

LABEL_19:
    v109 = 0;
    goto LABEL_20;
  }

  v109 = v31;
LABEL_20:
  v32 = v25();
  if (v32 && (v34 = sub_1E373E010(1, v32, v33), v32 = , v34))
  {
    type metadata accessor for BackgroundPlaybackModel(0);
    sub_1E3D41778();

    v35 = sub_1E3F45D7C();
    (*(*v35 + 432))(1);
    v36 = *(*v35 + 320);

    v119 = v35;
    v36(v37);
    v135[0] = 4;
    (*(*v34 + 776))(__src, v135, &unk_1F5D5D258, &off_1F5D5C7B8);
    if (*(&__src[1] + 1))
    {
      if (swift_dynamicCast())
      {
        OUTLINED_FUNCTION_8();
        (*(v38 + 408))();
      }
    }

    else
    {

      v32 = sub_1E325F69C(__src, &unk_1ECF296E0);
    }
  }

  else
  {
    v119 = 0;
  }

  v39 = (v25)(v32);
  if (!v39)
  {
    goto LABEL_31;
  }

  v41 = sub_1E373E010(97, v39, v40);

  if (!v41)
  {
    goto LABEL_31;
  }

  *&__src[0] = (*(*v41 + 464))(v39);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CEA8, &qword_1E42A8990);
  sub_1E374AD40(&qword_1EE23B540, &unk_1ECF2C790, &qword_1E42996A0, MEMORY[0x1E69E6340]);
  v43 = sub_1E4149048(v42);

  if (v43)
  {

LABEL_31:
    v108 = 0;
    v107 = 1;
    goto LABEL_32;
  }

  v108 = v41;
  v107 = 0;
LABEL_32:
  v44 = (v25)(v39);

  if (v44)
  {
    v46 = sub_1E373E010(40, v44, v45);

    if (v46)
    {
      type metadata accessor for ImageViewModel();
      v47 = swift_dynamicCastClass();
      if (v47)
      {
        v48 = 0;
      }

      else
      {
        v48 = v46;
      }

      v105 = v48;
      v106 = v47;

      v104 = 1;
    }

    else
    {
      v105 = 0;
      v106 = 0;
      v104 = 0;
    }
  }

  else
  {
    v105 = 0;
    v106 = 0;
    v104 = 0;
  }

  v49 = sub_1E3C3E4E0();
  v103 = *v49;
  (*(*v19 + 176))(v189, *v49);

  if (v190)
  {
    type metadata accessor for CollectionLayoutFactory();
    sub_1E3C11D38(v133, v50, v51, v52, v53, __src);
    v55 = *(&__src[0] + 1);
    v54 = *&__src[0];
    v57 = *(&__src[1] + 1);
    v56 = *&__src[1];

    v58.n128_f64[0] = OUTLINED_FUNCTION_6();
  }

  else
  {
    v54 = v189[3];
    v55 = v189[2];
    v56 = v189[1];
    v57 = v189[0];

    v58.n128_f64[0] = OUTLINED_FUNCTION_2_0();
  }

  j_nullsub_1(v58, v59, v60, v61);
  OUTLINED_FUNCTION_3();
  v77 = v63;
  v78 = v62;
  v79 = v64;
  v80 = v65;

  sub_1E325F69C(v1, &qword_1ECF2B5C0);
  v81 = v91 & 1;
  memcpy(v135, v188, 0x60uLL);
  *&v135[96] = v122;
  *&v135[104] = v121;
  v135[112] = v111;
  *&v135[113] = *v187;
  *&v135[116] = *&v187[3];
  *&v135[120] = v120;
  *&v135[128] = v123;
  v135[136] = v5 & 1;
  *&v135[137] = *v186;
  *&v135[140] = *&v186[3];
  *&v135[144] = v124;
  v135[152] = v112;
  *&v135[156] = *&v185[3];
  *&v135[153] = *v185;
  *&v135[160] = v126;
  *&v135[168] = v125;
  v135[176] = v97;
  v135[177] = v113;
  v135[178] = v127;
  v135[183] = v184;
  *&v135[179] = v183;
  *&v135[184] = v98;
  v135[192] = v93 & 1;
  v135[193] = v91 & 1;
  v135[194] = v90 & 1;
  *&v135[195] = v181;
  v135[199] = v182;
  *&v135[200] = v100;
  *&v135[208] = v99;
  v135[216] = v85;
  v135[217] = v128;
  v135[218] = v129;
  v135[223] = v180;
  *&v135[219] = v179;
  *&v135[224] = v130;
  *&v135[240] = v131;
  *&v135[256] = v132;
  v135[264] = v94 & 1;
  OUTLINED_FUNCTION_33_84();
  *&v135[268] = v66;
  *&v135[272] = v101;
  v135[280] = v9 & 1;
  v135[281] = v95 & 1;
  OUTLINED_FUNCTION_31_87();
  *&v135[286] = v67;
  *&v135[288] = v102;
  v135[296] = v96 & 1;
  OUTLINED_FUNCTION_41_67();
  *&v135[300] = v68;
  *&v135[304] = v10;
  *&v135[312] = v11;
  *&v135[320] = v12;
  *&v135[328] = v13;
  *&v135[336] = v133;
  *&v135[344] = v110;
  *&v135[352] = v54;
  *&v135[360] = v55;
  *&v135[368] = v56;
  *&v135[376] = v57;
  *&v135[384] = v109;
  *&v135[392] = 0;
  *&v135[400] = v119;
  *&v135[408] = v106;
  *&v135[416] = v105;
  *&v135[424] = v103;
  v135[432] = v104;
  OUTLINED_FUNCTION_39_65();
  *&v135[436] = v69;
  *&v135[440] = v108;
  v135[448] = v107;
  OUTLINED_FUNCTION_38_71();
  *&v135[452] = v70;
  *&v135[456] = v114;
  *&v135[464] = v71;
  *&v135[489] = *v177;
  *&v135[472] = sub_1E379F17C;
  *&v135[480] = 0;
  *&v135[492] = *&v177[3];
  v92 = v178;
  v135[488] = v178;
  *&v135[496] = v88;
  *&v135[504] = *(&v87 + 1);
  *&v135[512] = v118;
  *&v135[520] = v87;
  *&v135[528] = v86;
  *&v135[536] = v117;
  *&v135[544] = v116;
  *&v135[552] = v115;
  *&v135[560] = v84;
  *&v135[568] = v83;
  *&v135[576] = v82;
  memcpy(__src, v188, 0x60uLL);
  *&__src[6] = v122;
  *(&__src[6] + 1) = v121;
  LOBYTE(__src[7]) = v111;
  *(&__src[7] + 1) = v120;
  *&__src[8] = v123;
  BYTE8(__src[8]) = v5 & 1;
  *&__src[9] = v124;
  BYTE8(__src[9]) = v112;
  *&__src[10] = v126;
  *(&__src[10] + 1) = v125;
  LOBYTE(__src[11]) = v97;
  BYTE1(__src[11]) = v113;
  BYTE2(__src[11]) = v127;
  *(&__src[11] + 1) = v98;
  LOBYTE(__src[12]) = v93 & 1;
  BYTE1(__src[12]) = v81;
  BYTE2(__src[12]) = v90 & 1;
  *(&__src[12] + 1) = v100;
  *&__src[13] = v99;
  BYTE8(__src[13]) = v85;
  *(&__src[7] + 1) = *v187;
  DWORD1(__src[7]) = *&v187[3];
  *(&__src[8] + 9) = *v186;
  HIDWORD(__src[8]) = *&v186[3];
  HIDWORD(__src[9]) = *&v185[3];
  *(&__src[9] + 9) = *v185;
  BYTE7(__src[11]) = v184;
  *(&__src[11] + 3) = v183;
  *(&__src[12] + 3) = v181;
  BYTE7(__src[12]) = v182;
  BYTE9(__src[13]) = v128;
  BYTE10(__src[13]) = v129;
  HIBYTE(__src[13]) = v180;
  *(&__src[13] + 11) = v179;
  __src[14] = v130;
  __src[15] = v131;
  *&__src[16] = v132;
  BYTE8(__src[16]) = v94 & 1;
  OUTLINED_FUNCTION_33_84();
  HIDWORD(__src[16]) = v72;
  *&__src[17] = v101;
  BYTE8(__src[17]) = v9 & 1;
  BYTE9(__src[17]) = v95 & 1;
  OUTLINED_FUNCTION_31_87();
  HIWORD(__src[17]) = v73;
  *&__src[18] = v102;
  BYTE8(__src[18]) = v96 & 1;
  OUTLINED_FUNCTION_41_67();
  HIDWORD(__src[18]) = v74;
  *&__src[19] = v10;
  *(&__src[19] + 1) = v11;
  *&__src[20] = v12;
  *(&__src[20] + 1) = v13;
  v137 = v133;
  v138 = v110;
  v139 = v80;
  v140 = v79;
  v141 = v78;
  v142 = v77;
  v143 = v109;
  v144 = 0;
  v145 = v119;
  v146 = v106;
  v147 = v105;
  v148 = v103;
  v149 = v104;
  OUTLINED_FUNCTION_39_65();
  v150 = v75;
  v151 = v108;
  v152 = v107;
  OUTLINED_FUNCTION_38_71();
  v153 = v76;
  v154 = v114;
  v155 = v19;
  v156 = sub_1E379F17C;
  v157 = 0;
  v158 = v92;
  *v159 = *v177;
  *&v159[3] = *&v177[3];
  v160 = v88;
  v161 = *(&v87 + 1);
  v162 = v118;
  v163 = v87;
  v164 = v86;
  v165 = v117;
  v166 = v116;
  v167 = v115;
  v168 = v84;
  v169 = v83;
  v170 = v82;
  sub_1E401ECE4(v135, v134);
  sub_1E3A57B4C(__src);
  memcpy(v89, v135, 0x248uLL);
  OUTLINED_FUNCTION_42();
}

void sub_1E401ED1C()
{
  OUTLINED_FUNCTION_41_5();
  v73 = v3;
  v5 = v4;
  if (!*(v0 + 440))
  {
    goto LABEL_11;
  }

  v6 = v1;
  v7 = v2;
  OUTLINED_FUNCTION_8();
  if (!(*(v8 + 392))())
  {
    goto LABEL_11;
  }

  type metadata accessor for VerticalStackLayout();
  if (!swift_dynamicCastClass())
  {

LABEL_11:
    v37 = OUTLINED_FUNCTION_5_8();
    v39 = v38;
    v41 = v40;
    v43 = v42;
    v44 = 0.0;
    v45 = 0.0;
    v46 = 0.0;
    v47 = 0.0;
    v48 = 0.0;
    v7 = 0.0;
    goto LABEL_35;
  }

  v9 = sub_1E3A24FDC(v6);
  type metadata accessor for LayoutGrid();
  v10.n128_f64[0] = sub_1E3A25914();
  v14 = j_nullsub_1(v10, v11, v12, v13);
  v70 = v15;
  v17 = v16;
  v19 = v18;
  OUTLINED_FUNCTION_30_1();
  v21 = *(v20 + 152);

  v21(v83, v22);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B3C0, &qword_1E42B9710);
  sub_1E4148C68(sub_1E3C2FC84, v23, &v80);
  v25.n128_u64[0] = *(&v80 + 1);
  v24.n128_u64[0] = v80;
  v26.n128_u64[0] = v81;
  v27.n128_u64[0] = v82;
  v28 = j_nullsub_1(v24, v25, v26, v27);
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v71 = v9;
  v72 = v14 + v28;
  if (v9 & 1) != 0 && (*(v0 + 432))
  {
    if (sub_1E401DDD4())
    {
      OUTLINED_FUNCTION_30();
      (*(v35 + 176))(v83);

      if (v84)
      {
        v36 = 0.0;
      }

      else
      {
        v36 = *v83;
      }
    }

    else
    {
      v36 = 0.0;
    }

    v81 = *(v0 + 536);
    v80 = *(v0 + 520);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29028, &qword_1E42992D0);
    sub_1E42038F4();
    v72 = v72 + v36 + v79[2];
  }

  type metadata accessor for ViewRepresentableProperties(0);
  OUTLINED_FUNCTION_17_145(&qword_1EE24D450);
  v49 = sub_1E4200BC4() + OBJC_IVAR____TtC8VideosUI27ViewRepresentableProperties_bottomBaseline;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v50 = *v49;
  v51 = *(v49 + 8);

  if (v51 & 1 | (v50 <= 0.0))
  {
    v41 = v17 + v32;
  }

  else
  {
    v41 = v17 + v32 - v50;
  }

  OUTLINED_FUNCTION_30_1();
  v53 = *(v52 + 248);
  *&v80 = v53();
  BYTE8(v80) = v54 & 1;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CA40, &qword_1E429EC80);
  sub_1E4148C68(sub_1E37E8788, v55, v79);
  v80 = *(v0 + 496);
  v81 = *(v0 + 512);
  v77 = *(v0 + 496);
  v78 = *(v0 + 512);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29028, &qword_1E42992D0);
  sub_1E42038F4();
  v45 = v7 - *(&v75 + 1) - v41 - v72;
  OUTLINED_FUNCTION_30_1();
  v57 = (*(v56 + 200))();
  if ((v58 & 1) == 0)
  {
    *&v79[0] = v57;
  }

  OUTLINED_FUNCTION_30_1();
  v60 = COERCE_DOUBLE((*(v59 + 304))());
  if ((v61 & 1) == 0)
  {
    v45 = v60;
  }

  v39 = v70 + v30;
  v43 = v19 + v34;
  if (v71)
  {
    v44 = v73 - v39 - v43;
    v79[0] = v44;
  }

  else
  {
    v44 = v79[0];
  }

  v62 = sub_1E4200BC4() + OBJC_IVAR____TtC8VideosUI27ViewRepresentableProperties_size;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v63 = *(v62 + 8);
  LODWORD(v62) = *(v62 + 16);

  if (v62)
  {
    v47 = INFINITY;
  }

  else
  {
    v47 = v63;
  }

  v65 = (v53)(v64);
  v67 = v66;

  *&v75 = v65;
  BYTE8(v75) = v67 & 1;
  MEMORY[0x1EEE9AC00](v68);
  sub_1E4148C68(sub_1E3DFBA34, v55, &v74);
  if (v44 >= v74)
  {
    v46 = v74;
  }

  else
  {
    v46 = v44;
  }

  if (v47 >= v45)
  {
    v47 = v45;
  }

  if (v71)
  {
    v75 = v80;
    v76 = v81;
    sub_1E42038F4();
    OUTLINED_FUNCTION_8();
    (*(v69 + 96))(0.0);
  }

  v48 = v73;
  v37 = v72;
LABEL_35:
  *v5 = v44;
  v5[1] = v45;
  v5[2] = v46;
  v5[3] = v47;
  v5[4] = v37;
  v5[5] = v39;
  v5[6] = v41;
  v5[7] = v43;
  v5[8] = v48;
  v5[9] = v7;
  OUTLINED_FUNCTION_42();
}

void sub_1E401F340(unsigned int a1@<W0>, uint64_t a2@<X8>)
{
  if (!*(v2 + 392))
  {
    goto LABEL_24;
  }

  OUTLINED_FUNCTION_8();
  v6 = (*(v5 + 464))();
  if (!v6)
  {
    goto LABEL_24;
  }

  v7 = v6;
  v8 = sub_1E32AE9B0(v6);
  for (i = 0; ; ++i)
  {
    if (v8 == i)
    {

      goto LABEL_24;
    }

    if ((v7 & 0xC000000000000001) != 0)
    {
      v10 = MEMORY[0x1E6911E60](i, v7);
    }

    else
    {
      if (i >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_29;
      }
    }

    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_29:
      __break(1u);
      return;
    }

    sub_1E3742F1C(v10, v11, v12);
    sub_1E4206254();
    sub_1E4206254();
    if (v28 == v26 && v29 == v27)
    {
      break;
    }

    v14 = sub_1E42079A4();

    if (v14)
    {
      goto LABEL_18;
    }
  }

LABEL_18:

  type metadata accessor for ImageViewModel();
  if (!swift_dynamicCastClass())
  {

    goto LABEL_24;
  }

  OUTLINED_FUNCTION_30();
  v16 = (*(v15 + 1032))(a1);
  v18 = v17;

  if ((v18 & 1) == 0 && v16)
  {
    v19 = sub_1E4200B44();
    OUTLINED_FUNCTION_2();
    if (v16 == 2)
    {
      v21 = MEMORY[0x1E697DBA8];
    }

    else
    {
      v21 = MEMORY[0x1E697DBB8];
    }

    (*(v20 + 104))(a2, *v21, v19);
    v22 = OUTLINED_FUNCTION_22_1();
    v25 = v19;
  }

  else
  {
LABEL_24:
    sub_1E4200B44();
    v22 = OUTLINED_FUNCTION_10_2();
  }

  __swift_storeEnumTagSinglePayload(v22, v23, v24, v25);
}