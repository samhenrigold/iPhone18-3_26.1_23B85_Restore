unint64_t sub_1E40D69D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF6CC30[0];
  if (!qword_1ECF6CC30[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECF6CC30);
  }

  return result;
}

void sub_1E40D6A28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (TVAppFeature.isEnabled.getter(12, a2, a3))
  {
    sub_1E41FF204();
    sub_1E41FF1F4();
    v3 = sub_1E41FF1E4();

    if (v3)
    {
      return;
    }
  }

  else
  {
    v4 = [objc_opt_self() sharedInstance];
    v5 = [v4 isNetworkReachable];

    if (v5)
    {
      return;
    }
  }

  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x228))(0);
  }
}

unint64_t sub_1E40D6B30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF3FA70;
  if (!qword_1ECF3FA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3FA70);
  }

  return result;
}

void sub_1E40D6CDC()
{
  OUTLINED_FUNCTION_201_0();
  if (*(v0 + 16))
  {
    OUTLINED_FUNCTION_8();
    v2 = *(v1 + 776);
    v3;
    v2();
    sub_1E40C8850();
    OUTLINED_FUNCTION_200();
  }

  else
  {
    OUTLINED_FUNCTION_200();
  }
}

uint64_t objectdestroy_26Tm()
{

  OUTLINED_FUNCTION_16_0();

  return swift_deallocObject();
}

uint64_t objectdestroy_204Tm()
{

  if (*(v0 + 24))
  {
  }

  OUTLINED_FUNCTION_5_10();

  return swift_deallocObject();
}

void sub_1E40D6E4C()
{
  v1 = *(v0 + 24);
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_1E40C8384();
  }

  if (v1)
  {
    v1();
  }
}

unint64_t sub_1E40D6EB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF3FA80;
  if (!qword_1ECF3FA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3FA80);
  }

  return result;
}

void sub_1E40D6FCC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void OUTLINED_FUNCTION_74_24()
{
  v2 = *(v0 - 288);
  v3 = *(v0 - 280);
  v4 = *(v0 - 272);
  v5 = *(v0 - 264);
  v6 = *(v0 - 256);
  v7 = *(v0 - 248);
  v8 = *(v0 - 232);

  sub_1E40D60A0(v2, v3, v4, v5, v6, v7, v8);
}

unint64_t OUTLINED_FUNCTION_110_15(uint64_t a1, unint64_t a2)
{

  return sub_1E3270FC8(a1, a2, (v2 - 144));
}

uint64_t OUTLINED_FUNCTION_120_10()
{

  return swift_arrayDestroy();
}

uint64_t OUTLINED_FUNCTION_131_15()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_132_12()
{
  v3 = *(v1 - 136);
  v4 = *(v1 - 176);
  v5 = *(v1 - 168);
  v6 = *(v1 - 160);
  v7 = *(v1 - 152);

  sub_1E40D60A0(v0, v3, v4, v5, v6, v7, 1);
}

void OUTLINED_FUNCTION_137_10(void *a1, NSObject *a2, os_log_type_t a3, const char *a4, ...)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0xCu);
}

unint64_t OUTLINED_FUNCTION_139_12(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 - 192) = *(v3 - 336);

  return sub_1E40D6EB8(a1, a2, a3);
}

unint64_t OUTLINED_FUNCTION_141_12(uint64_t a1, unint64_t a2)
{

  return sub_1E3270FC8(a1, a2, (v2 - 104));
}

double OUTLINED_FUNCTION_158_9@<D0>(uint64_t a1@<X8>)
{
  *(v1 + 16) = *(v2 - 160);
  *(v1 + 24) = a1;
  result = 0.0;
  *(v1 + 32) = 0u;
  *(v1 + 48) = 0u;
  return result;
}

char *OUTLINED_FUNCTION_176_7()
{

  return sub_1E377FD30(0, v0, 0);
}

uint64_t OUTLINED_FUNCTION_177_5()
{

  return __swift_storeEnumTagSinglePayload(v0, 0, 1, v1);
}

unint64_t OUTLINED_FUNCTION_179_4(uint64_t a1, unint64_t a2)
{

  return sub_1E3270FC8(a1, a2, (v2 - 128));
}

BOOL OUTLINED_FUNCTION_181_4()
{

  return os_log_type_enabled(v1, v0);
}

uint64_t OUTLINED_FUNCTION_182_5(float a1)
{
  *v1 = a1;

  return sub_1E40C50E8();
}

uint64_t OUTLINED_FUNCTION_187_4()
{

  return sub_1E41FFCB4();
}

double sub_1E40D72DC(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC8VideosUI32ContextMenuPreviewItemController_viewModel;
  OUTLINED_FUNCTION_0_12(a1);
  v4 = *(v1 + v2);
  if (v4)
  {
    v5 = *(*v4 + 800);

    v5(2, 0, 0, 0);
  }

  return result;
}

id sub_1E40D7368(unsigned __int16 *a1, double a2)
{
  v3 = v2;
  v6 = (*(*a1 + 488))();
  if (v6)
  {
    v8 = sub_1E373E010(39, v6, v7);

    if (v8)
    {
      v10 = (*(*v8 + 392))(v9);

      if (v10)
      {
        type metadata accessor for ImageLayout();
        v11 = swift_dynamicCastClass();
        if (v11)
        {
          v12 = v11;
          v13 = *(*v11 + 152);

          v15 = v50;
          v13(v50, v14);
          if (v51)
          {
            v15 = MEMORY[0x1E69DDCE0];
            v16 = *(MEMORY[0x1E69DDCE0] + 8);
            v17 = *(MEMORY[0x1E69DDCE0] + 16);
            v18 = *(MEMORY[0x1E69DDCE0] + 24);
          }

          else
          {
            v16 = *&v50[1];
            v17 = *&v50[2];
            v18 = *&v50[3];
          }

          v19 = sub_1E3952BE0(*v15, v16, v17, v18);
          (*(*v12 + 208))(a2 - v19, 0);
        }
      }
    }
  }

  type metadata accessor for UIFactory();
  v20 = *&v3[OBJC_IVAR____TtC8VideosUI32ContextMenuPreviewItemController_cardView];
  v49 = 0;
  v47 = 0u;
  v48 = 0u;
  v21 = type metadata accessor for ContextMenuPreviewItemView();
  v22 = v20;
  v23 = sub_1E393D92C(a1, v20, &v47, 0, v21);

  sub_1E373C624(&v47);
  if (!v23)
  {
    goto LABEL_19;
  }

  v24 = *&v3[OBJC_IVAR____TtC8VideosUI32ContextMenuPreviewItemController_cardView];
  *&v3[OBJC_IVAR____TtC8VideosUI32ContextMenuPreviewItemController_cardView] = v23;
  v25 = v23;
  result = [v3 view];
  if (result)
  {
    v27 = result;
    v28 = OBJC_IVAR____TtC8VideosUI32ContextMenuPreviewItemController_cardView;
    v29 = *&v3[OBJC_IVAR____TtC8VideosUI32ContextMenuPreviewItemController_cardView];
    v30 = v29;
    sub_1E3C8BDFC(v29, v24);

    v31 = *&v3[v28];
    if (!v31)
    {
LABEL_18:

LABEL_19:
      v46 = OBJC_IVAR____TtC8VideosUI32ContextMenuPreviewItemController_viewModel;
      swift_beginAccess();
      *&v3[v46] = a1;
    }

    v32 = v31;
    result = [v3 view];
    if (result)
    {
      v33 = result;
      [result bounds];
      v35 = v34;
      v37 = v36;
      v39 = v38;
      v41 = v40;

      [v32 setFrame_];
      v42 = *&v3[v28];
      if (v42)
      {
        v43 = v42;
        [v43 setBackgroundColor_];

        v44 = *&v3[v28];
        if (v44)
        {
          [v44 setTranslatesAutoresizingMaskIntoConstraints_];
          v45 = *&v3[v28];
          if (v45)
          {
            [v45 setAutoresizingMask_];
          }
        }
      }

      goto LABEL_18;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

double sub_1E40D76E8(double a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC8VideosUI32ContextMenuPreviewItemController_cardView);
  if (v3)
  {
    v4 = v3;
    a1 = sub_1E3F65B40(a1);
  }

  return a1;
}

id sub_1E40D774C(uint64_t a1, uint64_t a2, void *a3)
{
  ObjectType = swift_getObjectType();
  *&v3[OBJC_IVAR____TtC8VideosUI32ContextMenuPreviewItemController_viewModel] = 0;
  *&v3[OBJC_IVAR____TtC8VideosUI32ContextMenuPreviewItemController_cardView] = 0;
  if (a2)
  {
    v7 = sub_1E4205ED4();
  }

  else
  {
    v7 = 0;
  }

  v10.receiver = v3;
  v10.super_class = ObjectType;
  v8 = objc_msgSendSuper2(&v10, sel_initWithNibName_bundle_, v7, a3);

  return v8;
}

id sub_1E40D7860(void *a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC8VideosUI32ContextMenuPreviewItemController_viewModel] = 0;
  *&v1[OBJC_IVAR____TtC8VideosUI32ContextMenuPreviewItemController_cardView] = 0;
  v6.receiver = v1;
  v6.super_class = ObjectType;
  v4 = objc_msgSendSuper2(&v6, sel_initWithCoder_, a1);

  if (v4)
  {
  }

  return v4;
}

char *sub_1E40D797C()
{
  v1 = sub_1E41FFBF4();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = VUISignpostLogObject(v5);
  sub_1E41FFBC4();
  v7 = sub_1E4206BA4();
  v8 = VUISignpostLogObject(v7);
  OUTLINED_FUNCTION_2_48(v8, &dword_1E323F000, v9, "Perf.ExternalAppInstallTemplate.makeUIView");

  v10 = 0.0;
  if ((*(v0 + 49) & 1) == 0)
  {
    if (*(v0 + 24))
    {
      v10 = 0.0;
    }

    else
    {
      v10 = *(v0 + 8);
    }
  }

  type metadata accessor for LeagueStandingsLegendFooter();
  v11 = sub_1E40D7B18(*v0, 0, v10);
  v12 = sub_1E4206B94();
  v13 = VUISignpostLogObject(v12);
  OUTLINED_FUNCTION_2_48(v13, &dword_1E323F000, v14, "Perf.ExternalAppInstallTemplate.makeUIView");

  (*(v2 + 8))(v4, v1);
  return v11;
}

char *sub_1E40D7B18(uint64_t a1, void *a2, double a3)
{
  if (a2 && (type metadata accessor for LeagueStandingsLegendFooter(), (v6 = swift_dynamicCastClass()) != 0))
  {
    v7 = v6;
    v8 = a2;
  }

  else
  {
    type metadata accessor for LeagueStandingsLegendFooter();
    v8 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v7 = v8;
  }

  *&v7[OBJC_IVAR____TtC8VideosUI27LeagueStandingsLegendFooter_layout] = (*(*a1 + 392))(v8);

  v10 = (*(*a1 + 488))(v9);
  if (v10)
  {
    v12 = sub_1E373E010(259, v10, v11);

    if (v12)
    {
      type metadata accessor for LeagueStandingsLegendView();
      v13 = *&v7[OBJC_IVAR____TtC8VideosUI27LeagueStandingsLegendFooter_legendView];
      v14 = v13;
      v15 = sub_1E38594C4(v12, v13, a3);

      v16 = v15;
      sub_1E40D7F54(v15);
    }
  }

  [v7 setNeedsLayout];
  return v7;
}

id sub_1E40D7CA4(void *a1)
{
  [a1 vui_layoutIfNeeded];
  [a1 layoutIfNeeded];
  [a1 systemLayoutSizeFittingSize_];
  OUTLINED_FUNCTION_18_3();
  [a1 frame];

  return [a1 setFrame_];
}

uint64_t sub_1E40D7D58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1E40D8424(a1, a2, a3);

  return sub_1E3E36D18(a1, a2, v5);
}

uint64_t sub_1E40D7DA4()
{
  OUTLINED_FUNCTION_5_3();
  sub_1E40D8424(v0, v1, v2);
  v3 = OUTLINED_FUNCTION_3_5();

  return sub_1E3E36D2C(v3, v4, v5, v6);
}

uint64_t sub_1E40D7E78()
{
  OUTLINED_FUNCTION_5_3();
  sub_1E40D83BC(v0, v1, v2);
  v3 = OUTLINED_FUNCTION_3_5();

  return MEMORY[0x1EEDDAA28](v3);
}

uint64_t sub_1E40D7ECC()
{
  OUTLINED_FUNCTION_5_3();
  sub_1E40D83BC(v0, v1, v2);
  v3 = OUTLINED_FUNCTION_3_5();

  return MEMORY[0x1EEDDA9B8](v3);
}

void sub_1E40D7F20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1E40D83BC(a1, a2, a3);
  sub_1E4201F04();
  __break(1u);
}

void sub_1E40D7F54(void *a1)
{
  v3 = *&v1[OBJC_IVAR____TtC8VideosUI27LeagueStandingsLegendFooter_legendView];
  *&v1[OBJC_IVAR____TtC8VideosUI27LeagueStandingsLegendFooter_legendView] = a1;
  v2 = a1;
  [v3 vui_removeFromSuperView];
  if (*&v1[OBJC_IVAR____TtC8VideosUI27LeagueStandingsLegendFooter_legendView])
  {
    [v1 addSubview_];
  }
}

id sub_1E40D7FE4()
{
  OUTLINED_FUNCTION_0_8();
  v5 = OUTLINED_FUNCTION_7_240(&OBJC_IVAR____TtC8VideosUI27LeagueStandingsLegendFooter_layout);
  v1 = OUTLINED_FUNCTION_2_0();
  return objc_msgSendSuper2(v2, v3, v1, v0, v5);
}

uint64_t sub_1E40D805C(void *a1)
{
  OUTLINED_FUNCTION_7_240(&OBJC_IVAR____TtC8VideosUI27LeagueStandingsLegendFooter_layout);
  swift_deallocPartialClassInstance();
  return 0;
}

double sub_1E40D8100()
{
  v1 = *(v0 + OBJC_IVAR____TtC8VideosUI27LeagueStandingsLegendFooter_legendView);
  if (!v1)
  {
    return 0.0;
  }

  [v1 vui:1 layoutSubviews:0.0 computationOnly:0.0];
  return result;
}

void sub_1E40D8184(char a1, double a2, double a3)
{
  v13.receiver = v3;
  v13.super_class = type metadata accessor for LeagueStandingsLegendFooter();
  objc_msgSendSuper2(&v13, sel_vui_layoutSubviews_computationOnly_, a1 & 1, a2, a3);
  v7 = *&v3[OBJC_IVAR____TtC8VideosUI27LeagueStandingsLegendFooter_legendView];
  if (v7)
  {
    v8 = v7;
    v9 = v8;
    if ((a1 & 1) == 0)
    {
      [v8 frame];
      v10 = (a3 - CGRectGetHeight(v14)) * 0.5;
      [v3 intrinsicContentSize];
      [v9 setFrame_];
    }

    [v3 intrinsicContentSize];
    OUTLINED_FUNCTION_18_3();
  }

  OUTLINED_FUNCTION_17_4();
}

void sub_1E40D82CC()
{

  v1 = *(v0 + OBJC_IVAR____TtC8VideosUI27LeagueStandingsLegendFooter_legendView);
}

id sub_1E40D8314()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LeagueStandingsLegendFooter();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1E40D8394(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1E40D83BC(a1, a2, a3);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1E40D83BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF3FAA0;
  if (!qword_1ECF3FAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3FAA0);
  }

  return result;
}

unint64_t sub_1E40D8424(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF3FAA8;
  if (!qword_1ECF3FAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3FAA8);
  }

  return result;
}

unint64_t VUIViewController.logPrefix.getter()
{
  sub_1E42074B4();

  v1 = sub_1E41E1364(v0);
  MEMORY[0x1E69109E0](v1);

  MEMORY[0x1E69109E0](23901, 0xE200000000000000);
  return 0xD000000000000014;
}

Swift::Void __swiftcall VUIViewController.loadView()()
{
  v1 = [objc_allocWithZone(VUIBaseView) initWithFrame_];
  [v0 setVuiView_];

  [v0 vui_loadView];
}

id sub_1E40D87E0(char a1, uint64_t a2, SEL *a3)
{
  type metadata accessor for VUIViewController();
  OUTLINED_FUNCTION_2_262();
  objc_msgSendSuper2(v6, v7, a1 & 1);
  return [v3 *a3];
}

id sub_1E40D88EC(uint64_t a1, SEL *a2)
{
  type metadata accessor for VUIViewController();
  OUTLINED_FUNCTION_2_262();
  objc_msgSendSuper2(v4, v5);
  return [v2 *a2];
}

id sub_1E40D8A04(uint64_t a1, uint64_t a2, SEL *a3)
{
  type metadata accessor for VUIViewController();
  OUTLINED_FUNCTION_2_262();
  objc_msgSendSuper2(v6, v7, a1);
  return [v3 *a3];
}

id VUIViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
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

id VUIViewController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  OUTLINED_FUNCTION_1_301(&OBJC_IVAR____TtC8VideosUI17VUIViewController_navigationBarTitleOpacity);
  if (v5)
  {
    v6 = sub_1E4205ED4();
  }

  else
  {
    v6 = 0;
  }

  v9.receiver = v3;
  v9.super_class = type metadata accessor for VUIViewController();
  v7 = objc_msgSendSuper2(&v9, sel_initWithNibName_bundle_, v6, a3);

  return v7;
}

id VUIViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id VUIViewController.init(coder:)(void *a1)
{
  OUTLINED_FUNCTION_1_301(&OBJC_IVAR____TtC8VideosUI17VUIViewController_navigationBarTitleOpacity);
  v5.receiver = v1;
  v5.super_class = type metadata accessor for VUIViewController();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id VUIViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VUIViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1E40D8D8C()
{
  if ((sub_1E39DFFC8() & 1) == 0 && (*(v0 + OBJC_IVAR____TtC8VideosUI17VUIViewController_navigationBarTitleOpacity + 8) & 1) == 0)
  {
    result = 1;
    if (*(v0 + OBJC_IVAR____TtC8VideosUI17VUIViewController_navigationBarTitleOpacity) >= 1.0)
    {
      return result;
    }

    *(v0 + OBJC_IVAR____TtC8VideosUI17VUIViewController_forceRestoreNavBarTitleOnViewDidAppear) = 1;
  }

  return 0;
}

void sub_1E40D8E60(char *a1, double a2)
{
  v3 = a1;
  if (!a1)
  {
    a1 = v2;
  }

  v9 = a1;
  v5 = v3;
  v6 = [v9 vuiNavigationItem];
  v7 = [v6 titleView];

  sub_1E40D8F24(v7, 0, a2);
  v8 = &v9[OBJC_IVAR____TtC8VideosUI17VUIViewController_navigationBarTitleOpacity];
  *v8 = a2;
  v8[8] = 0;
}

void sub_1E40D8F24(void *a1, char a2, double a3)
{
  v4 = v3;
  if ((sub_1E39DFFC8() & 1) == 0 && a1 && (type metadata accessor for UberNavigationBarTitleView(), (v8 = swift_dynamicCastClass()) != 0))
  {
    v9 = *((*MEMORY[0x1E69E7D40] & *v8) + 0x1D8);
    v10 = a1;
    v9(a2 & 1, a3);
  }

  else if ((sub_1E39DFFC8() & 1) == 0)
  {
    [a1 setAlpha_];
  }

  if ((sub_1E39DFFC8() & 1) == 0)
  {
    v11 = [v4 vuiNavigationController];
    if (v11)
    {
      v12 = v11;
      v13 = [v11 navigationBar];

      [v13 _setTitleOpacity_];
    }
  }
}

void sub_1E40D90A0()
{
  if ((sub_1E39DFFC8() & 1) == 0 && (v0[OBJC_IVAR____TtC8VideosUI17VUIViewController_navigationBarTitleOpacity + 8] & 1) == 0)
  {
    v1 = *&v0[OBJC_IVAR____TtC8VideosUI17VUIViewController_navigationBarTitleOpacity];
    v2 = [v0 vuiNavigationItem];
    v3 = [v2 titleView];

    sub_1E40D8F24(v3, 1, v1);
  }
}

void sub_1E40D915C()
{
  if (sub_1E39DFFC8())
  {
    return;
  }

  v1 = [v0 vuiNavigationController];
  v4 = 0;
  if (!v1)
  {
    v6 = 0;
    goto LABEL_6;
  }

  v5 = v1;
  v6 = [v1 navigationBar];

  if (!v6)
  {
LABEL_6:
    v8 = 1;
    goto LABEL_7;
  }

  v1 = [v6 _titleOpacity];
  v4 = v7;
  v8 = 0;
LABEL_7:
  v11 = v4;
  v12 = v8;
  v10 = 0x3FF0000000000000;
  v9 = sub_1E3793CAC(v1, v2, v3);
  if (sub_1E414A6BC(&v11, &v10, MEMORY[0x1E69E7DE0], v9))
  {
    [v6 _setTitleOpacity_];
  }
}

uint64_t sub_1E40D9240(unint64_t a1)
{
  v3 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v118 = &v107 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v107 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v107 - v12;
  v14 = sub_1E41FFBF4();
  OUTLINED_FUNCTION_0_10();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v107 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1E39DFFC8();
  if (result)
  {
    v116 = OBJC_IVAR____TtC8VideosUI17VUIViewController_lastTitleVisibility;
    v23 = v1[OBJC_IVAR____TtC8VideosUI17VUIViewController_lastTitleVisibility];
    LOBYTE(v119) = a1;
    if (v23 == 3 || (v120 = v23, sub_1E3B62064(result, v21, v22), result = sub_1E4205E84(), (result & 1) == 0))
    {
      v107 = v10;
      v110 = v14;
      v24 = VUISignpostLogObject(result);
      sub_1E41FFBC4();
      v25 = sub_1E4206BA4();
      v26 = VUISignpostLogObject(v25);
      v111 = v19;
      sub_1E41FFBA4();

      v27 = sub_1E324FBDC();
      v28 = *(v5 + 16);
      v114 = v27;
      v115 = v5 + 16;
      v113 = v28;
      (v28)(v13);
      v112 = v1;
      v29 = v5;
      v30 = v1;
      v31 = sub_1E41FFC94();
      v32 = sub_1E4206814();

      v33 = os_log_type_enabled(v31, v32);
      v117 = v30;
      v109 = v16;
      if (v33)
      {
        v34 = swift_slowAlloc();
        v108 = swift_slowAlloc();
        v119 = v108;
        *v34 = 136315394;
        v35 = VUIViewController.logPrefix.getter();
        v16 = a1;
        a1 = sub_1E3270FC8(v35, v36, &v119);

        *(v34 + 4) = a1;
        v37 = v29;
        LOBYTE(a1) = v16;
        *(v34 + 12) = 2048;
        *(v34 + 14) = OUTLINED_FUNCTION_13_30(v16);
        _os_log_impl(&dword_1E323F000, v31, v32, "%s updateTitleVisibility titleVisibility=%ld", v34, 0x16u);
        __swift_destroy_boxed_opaque_existential_1(v108);
        OUTLINED_FUNCTION_6_0();
        OUTLINED_FUNCTION_6_0();

        v38 = OUTLINED_FUNCTION_5_247();
        (v16)(v38);
      }

      else
      {

        v39 = OUTLINED_FUNCTION_5_247();
        (v16)(v39);
        v37 = v29;
      }

      v112[v116] = a1;
      if ([objc_opt_self() isPad])
      {
        v40 = v117;
        result = [v117 vuiView];
        if (!result)
        {
          __break(1u);
          return result;
        }

        v41 = result;
        type metadata accessor for LayoutGrid();
        [v41 bounds];
        v43 = v42;
        v45 = v44;
        v47 = v46;
        v49 = v48;

        v121.origin.x = v43;
        v121.origin.y = v45;
        v121.size.width = v47;
        v121.size.height = v49;
        Width = CGRectGetWidth(v121);
        v51 = sub_1E3A2579C(Width);
        if ((sub_1E3A2511C(v51) & 1) != 0 && sub_1E374E8E4(a1, 1))
        {
          v52 = v107;
          v113(v107, v114, v3);
          v53 = v40;
          v54 = sub_1E41FFC94();
          v55 = sub_1E4206814();

          if (os_log_type_enabled(v54, v55))
          {
            v56 = swift_slowAlloc();
            v57 = v3;
            v58 = v16;
            v59 = swift_slowAlloc();
            v119 = v59;
            *v56 = 136315138;
            v60 = VUIViewController.logPrefix.getter();
            v62 = sub_1E3270FC8(v60, v61, &v119);

            *(v56 + 4) = v62;
            _os_log_impl(&dword_1E323F000, v54, v55, "%s updateTitleVisibility pad doesn't support edge visibility, fallback to always", v56, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v59);
            v16 = v58;
            v3 = v57;
            OUTLINED_FUNCTION_6_0();
            v40 = v117;
            OUTLINED_FUNCTION_6_0();

            v63 = v52;
            v64 = v57;
          }

          else
          {

            v63 = v52;
            v64 = v3;
          }

          (v16)(v63, v64);
          LOBYTE(a1) = 0;
        }
      }

      else
      {
        v40 = v117;
      }

      v108 = v16;
      v65 = [v40 vuiNavigationController];
      if (v65)
      {
        v66 = v65;
        v67 = v3;
        v68 = a1;
        v69 = [v65 navigationBar];
      }

      else
      {
        v67 = v3;
        v68 = a1;
        v69 = 0;
      }

      v70 = [v40 navigationItem];
      v71 = [v70 standardAppearance];

      v72 = v71;
      if (!v71)
      {
        if (v69 && (v73 = [v69 standardAppearance]) != 0)
        {
          v74 = v73;
          v75 = [v73 copy];
        }

        else
        {
          v75 = [objc_allocWithZone(MEMORY[0x1E69DCCC8]) init];
        }

        v72 = v75;
        v40 = v117;
      }

      v112 = v72;
      v76 = v71;
      v77 = [v40 navigationItem];
      v78 = [v77 scrollEdgeAppearance];

      v82 = v78;
      if (!v78)
      {
        if (v69 && (v83 = [v69 scrollEdgeAppearance]) != 0)
        {
          v84 = v83;
          v85 = [v83 copy];
        }

        else
        {
          v85 = [objc_allocWithZone(MEMORY[0x1E69DCCC8]) init];
        }

        v79 = v85;
        v82 = v79;
        v40 = v117;
      }

      v116 = v37;
      LOBYTE(v119) = v68;
      v120 = 0;
      sub_1E3B62064(v79, v80, v81);
      v86 = v78;
      LODWORD(v107) = sub_1E4205E84() ^ 1;
      LODWORD(v117) = sub_1E374E8E4(v68, 2);
      v113(v118, v114, v67);
      v87 = v40;
      v88 = v67;
      v89 = sub_1E41FFC94();
      v90 = sub_1E4206814();

      if (os_log_type_enabled(v89, v90))
      {
        v91 = swift_slowAlloc();
        v92 = swift_slowAlloc();
        v119 = v92;
        *v91 = 136315650;
        v115 = v88;
        v93 = VUIViewController.logPrefix.getter();
        v95 = v69;
        v96 = sub_1E3270FC8(v93, v94, &v119);

        *(v91 + 4) = v96;
        v69 = v95;
        *(v91 + 12) = 1024;
        v97 = v107;
        *(v91 + 14) = v107 & 1;
        *(v91 + 18) = 1024;
        *(v91 + 20) = v117 & 1;
        _os_log_impl(&dword_1E323F000, v89, v90, "%s updateTitleVisibility standardTitleHidden=%{BOOL}d, scrollEdgeTitleHidden=%{BOOL}d", v91, 0x18u);
        __swift_destroy_boxed_opaque_existential_1(v92);
        OUTLINED_FUNCTION_6_0();
        OUTLINED_FUNCTION_6_0();

        (v108)(v118, v115);
        v99 = v109;
        v98 = v110;
        v100 = v97;
      }

      else
      {

        (v108)(v118, v88);
        v99 = v109;
        v98 = v110;
        v100 = v107;
      }

      v101 = v112;
      [v112 _setTitleControlHidden_];
      [v82 _setTitleControlHidden_];
      v102 = [v87 navigationItem];
      [v102 setStandardAppearance_];

      v103 = [v87 navigationItem];
      [v103 setScrollEdgeAppearance_];

      v104 = sub_1E4206B94();
      v105 = VUISignpostLogObject(v104);
      v106 = v111;
      sub_1E41FFBA4();

      return v99[1](v106, v98);
    }
  }

  return result;
}

void sub_1E40D9BF4()
{
  OUTLINED_FUNCTION_31_1();
  v54 = v0;
  v2 = v1;
  v4 = v3;
  v61 = v5;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_5();
  v20 = v19 - v18;
  v60 = [objc_opt_self() sharedInstance];
  sub_1E42038E4();
  v59 = v62[0];
  v58 = v62[1];
  type metadata accessor for Router(0);
  OUTLINED_FUNCTION_4_268();
  sub_1E40E02E0(v21, v22, &unk_1E42EB398);
  v23 = sub_1E4201754();
  v56 = v24;
  v57 = v23;
  v25 = sub_1E324FBDC();
  v53 = v16;
  v55 = v14;
  (*(v16 + 16))(v20, v25, v14);

  v26 = sub_1E41FFC94();
  v27 = sub_1E4206814();

  if (os_log_type_enabled(v26, v27))
  {
    v52 = v4;
    v28 = swift_slowAlloc();
    v62[0] = swift_slowAlloc();
    *v28 = 136315650;
    *(v28 + 4) = sub_1E3270FC8(v11, v9, v62);
    *(v28 + 12) = 2080;
    v50 = v27;
    v29 = (*(*v7 + 368))();
    v51 = v11;
    v30 = v2;
    v31 = sub_1E41E1364(v29);
    v32 = v9;
    v34 = v33;

    v35 = v31;
    v36 = v32;
    v2 = v30;
    v37 = sub_1E3270FC8(v35, v34, v62);

    *(v28 + 14) = v37;
    *(v28 + 22) = 2080;
    v38 = sub_1E41E1364(v30);
    v40 = sub_1E3270FC8(v38, v39, v62);

    *(v28 + 24) = v40;
    _os_log_impl(&dword_1E323F000, v26, v50, "    DocumentView::init id:%s, showcaseValue:%s route %s", v28, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_6_0();
    v4 = v52;
    OUTLINED_FUNCTION_6_0();

    v41 = v20;
    v42 = v51;
    (*(v53 + 8))(v41, v55);
  }

  else
  {

    (*(v16 + 8))(v20, v55);
    v36 = v9;
    v42 = v11;
  }

  type metadata accessor for DocumentInteractor(0);
  OUTLINED_FUNCTION_25_110();
  sub_1E40E02E0(v43, v44, &unk_1E42D32D8);

  v45 = sub_1E42010C4();
  v47 = v46;
  LOBYTE(v62[0]) = 0;
  v48 = (*(*v7 + 416))();

  v49 = v62[0];
  *v13 = v42;
  *(v13 + 8) = v36;
  memcpy((v13 + 16), v61, 0x64uLL);
  *(v13 + 120) = v60;
  *(v13 + 128) = v59;
  *(v13 + 136) = v58;
  *(v13 + 144) = v45;
  *(v13 + 152) = v47;
  *(v13 + 160) = 0u;
  *(v13 + 176) = 0u;
  *(v13 + 192) = 0u;
  *(v13 + 208) = 0;
  *(v13 + 216) = v48;
  *(v13 + 224) = v4;
  *(v13 + 232) = v57;
  *(v13 + 240) = v56;
  *(v13 + 248) = sub_1E40DA080;
  *(v13 + 256) = v2;
  *(v13 + 264) = v49;
  *(v13 + 272) = v2;
  *(v13 + 280) = v54;
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E40DA080()
{
  type metadata accessor for InternalDocumentRoute(0);
  *(swift_allocObject() + OBJC_IVAR____TtC8VideosUIP33_22AE03CB8E5DD9771BF6CABAA0471CD921InternalDocumentRoute_route) = v0;

  return sub_1E3B500B4();
}

void sub_1E40DA0D0()
{
  OUTLINED_FUNCTION_31_1();
  v53 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3FAB0, &qword_1E42EB9C0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v49 - v3;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3FAB8, &qword_1E42EB9C8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v49 - v6;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3FAC0, &qword_1E42EB9D0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_44();
  v52 = v9;
  if (*(v0 + 64))
  {
    OUTLINED_FUNCTION_8();
    (*(v10 + 784))();
  }

  sub_1E40DA6DC();
  v54 = *(v0 + 272);
  OUTLINED_FUNCTION_27_100();
  v11 = swift_allocObject();
  OUTLINED_FUNCTION_28_90(v11);

  OUTLINED_FUNCTION_49_62();
  type metadata accessor for Route(0);
  sub_1E40DEAEC();
  sub_1E40E02E0(&qword_1ECF3D190, type metadata accessor for Route, &unk_1E42DFD20);
  sub_1E4203524();

  v12 = sub_1E325F69C(v4, &qword_1ECF3FAB0);
  v13 = *(v0 + 152);
  v14 = *(*v13 + 368);
  v14(v12);
  OUTLINED_FUNCTION_30();
  v16 = *(v15 + 160);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3FB90, &qword_1E42EBA50);
  v16();

  OUTLINED_FUNCTION_27_100();
  v18 = swift_allocObject();
  OUTLINED_FUNCTION_28_90(v18);
  v19 = &v7[*(v17 + 56)];
  *v19 = sub_1E40DF344;
  v19[1] = v18;
  v20 = OUTLINED_FUNCTION_49_62();
  v14(v20);
  OUTLINED_FUNCTION_30();
  v22 = v50;
  (*(v21 + 248))();

  OUTLINED_FUNCTION_27_100();
  v23 = swift_allocObject();
  OUTLINED_FUNCTION_28_90(v23);
  v24 = &v7[*(v22 + 56)];
  *v24 = sub_1E40E1010;
  v24[1] = v23;
  v25 = *(*v13 + 440);
  v26 = OUTLINED_FUNCTION_49_62();
  LOBYTE(v54) = v25(v26) & 1;
  OUTLINED_FUNCTION_27_100();
  v27 = swift_allocObject();
  OUTLINED_FUNCTION_28_90(v27);
  OUTLINED_FUNCTION_49_62();
  sub_1E374AD40(&qword_1ECF3FB98, &qword_1ECF3FAB8, &qword_1E42EB9C8, MEMORY[0x1E697C278]);
  v28 = v52;
  sub_1E4203524();

  sub_1E325F69C(v7, &qword_1ECF3FAB8);
  OUTLINED_FUNCTION_27_100();
  v29 = swift_allocObject();
  OUTLINED_FUNCTION_28_90(v29);
  v30 = (v28 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3FBA0, &unk_1E42EBA58) + 36));
  *v30 = sub_1E40DF4F0;
  v30[1] = v29;
  v30[2] = 0;
  v30[3] = 0;
  OUTLINED_FUNCTION_27_100();
  v31 = swift_allocObject();
  OUTLINED_FUNCTION_28_90(v31);
  v32 = (v28 + *(v51 + 36));
  *v32 = 0;
  v32[1] = 0;
  v32[2] = sub_1E40DF7EC;
  v32[3] = v31;
  v33 = *(*v13 + 272);
  OUTLINED_FUNCTION_49_62();
  v34 = OUTLINED_FUNCTION_49_62();
  v35 = v33(v34);
  v37 = v36;
  v39 = v38;
  LOWORD(v13) = v40;
  v54 = v35;
  v55 = v36;
  v56 = v38;
  v58 = v41;
  v57 = v40;
  OUTLINED_FUNCTION_27_100();
  v42 = swift_allocObject();
  OUTLINED_FUNCTION_28_90(v42);
  OUTLINED_FUNCTION_49_62();
  OUTLINED_FUNCTION_24_113();
  v46 = sub_1E40DEC90(v43, &qword_1ECF3FAC0, v44, v45);
  sub_1E40DFC98(v46, v47, v48);
  sub_1E4203524();

  sub_1E39050C0(v35, v37, v39, v13);
  sub_1E325F69C(v28, &qword_1ECF3FAC0);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E40DA6DC()
{
  OUTLINED_FUNCTION_31_1();
  v97 = v2;
  v98 = type metadata accessor for ErrorTemplate(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v93 = v5 - v4;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3FBD0, &qword_1E42EBDA8);
  OUTLINED_FUNCTION_0_10();
  v82 = v6;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_44();
  v80 = v8;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3FBD8, &qword_1E42EBDB0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_44();
  v84 = v10;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3FB88, &unk_1E42EBA40);
  OUTLINED_FUNCTION_0_10();
  v81 = v11;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_44();
  v79 = v13;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3FB78, &qword_1E42EBA38);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_44();
  v87 = v15;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3FBE0, &qword_1E42EBDB8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_44();
  v96 = v17;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3FBE8, &qword_1E42EBDC0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_44();
  v90 = v19;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3FAD8, &qword_1E42EB9D8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_44();
  v92 = v21;
  OUTLINED_FUNCTION_138();
  v22 = sub_1E41FFBF4();
  OUTLINED_FUNCTION_0_10();
  v24 = v23;
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_5();
  v28 = v27 - v26;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3FAE8, &qword_1E42EB9E0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_20_1();
  v30 = *(**(v0 + 152) + 272);
  v31 = v30();
  v35 = v31;
  if ((v34 & 0xE000) != 0)
  {
    sub_1E39050C0(v31, v32, v33, v34);
    v36 = v30();
    v35 = v36;
    if ((v34 & 0xE000) == 0x6000)
    {
      v37 = OUTLINED_FUNCTION_40_2(v36, v32);
      sub_1E37CD868(v37, v38, v39);
      goto LABEL_6;
    }

LABEL_5:
    sub_1E39050C0(v35, v32, v33, v34);
    v40 = v0;
    goto LABEL_8;
  }

  if (v32)
  {
    goto LABEL_5;
  }

LABEL_6:
  v40 = v0;
  if (v35)
  {

    v41 = sub_1E4206BA4();
    v42 = VUISignpostLogObject(v41);
    sub_1E41FFBE4();
    sub_1E41FFBA4();

    (*(v24 + 8))(v28, v22);
    sub_1E40DBF88();

    v43 = (v1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3FAF8, &qword_1E42EB9E8) + 36));
    *v43 = sub_1E40DD1C4;
    v43[1] = 0;
    v43[2] = 0;
    v43[3] = 0;
    OUTLINED_FUNCTION_27_100();
    v44 = swift_allocObject();
    memcpy((v44 + 16), v40, 0x120uLL);
    v45 = (v1 + *(v88 + 36));
    *v45 = sub_1E40E0394;
    v45[1] = v44;
    v45[2] = 0;
    v45[3] = 0;
    sub_1E3743538(v1, v90, &qword_1ECF3FAE8, &qword_1E42EB9E0);
    swift_storeEnumTagMultiPayload();
    sub_1E40DEAB4(v40, &v99);
    OUTLINED_FUNCTION_23_105();
    sub_1E40DEC90(v46, &qword_1ECF3FAE8, &qword_1E42EB9E0, v47);
    sub_1E40DF230();
    sub_1E4201F44();
    sub_1E3743538(v92, v96, &qword_1ECF3FAD8, &qword_1E42EB9D8);
    swift_storeEnumTagMultiPayload();
    sub_1E40DEBA8();
    OUTLINED_FUNCTION_2_263();
    sub_1E40E02E0(v48, v49, &unk_1E42A9590);
    OUTLINED_FUNCTION_57_38();
    sub_1E4201F44();

    sub_1E325F69C(v92, &qword_1ECF3FAD8);
    v50 = v1;
    v51 = &qword_1ECF3FAE8;
LABEL_16:
    sub_1E325F69C(v50, v51);
    goto LABEL_17;
  }

LABEL_8:
  OUTLINED_FUNCTION_8();
  v53 = (*(v52 + 272))();
  v57 = v54;
  if ((v56 & 0xE000) != 0)
  {
    sub_1E39050C0(v53, v54, v55, v56);
  }

  else
  {
    sub_1E39050C0(v53, v54, v55, v56);
    if (v57)
    {
      if (v40[17])
      {
        MEMORY[0x1EEE9AC00](v58);
        *(&v78 - 2) = v40;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3FBF0, &qword_1E42EBDC8);
        v59 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2D838, &qword_1E42AA080);
        v60 = OUTLINED_FUNCTION_11_188(v59);
        v99 = v59;
        v100 = v60;
        OUTLINED_FUNCTION_8_3();
        OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
        v99 = v86;
        v100 = OpaqueTypeConformance2;
        swift_getOpaqueTypeConformance2();
        v62 = v79;
        sub_1E42013C4();
        v63 = v81;
        v64 = v85;
        v65 = OUTLINED_FUNCTION_87_2();
        v66(v65);
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_31_94(&qword_1ECF3FB80, &qword_1ECF3FB88, &unk_1E42EBA40);
        v67 = v87;
        sub_1E4201F44();
        (*(v63 + 8))(v62, v64);
      }

      else
      {
        sub_1E40DBCFC();
        (*(v82 + 16))(v84, v80, v86);
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_31_94(&qword_1ECF3FB80, &qword_1ECF3FB88, &unk_1E42EBA40);
        v99 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2D838, &qword_1E42AA080);
        v100 = OUTLINED_FUNCTION_11_188(v99);
        OUTLINED_FUNCTION_8_3();
        swift_getOpaqueTypeConformance2();
        v67 = v87;
        sub_1E4201F44();
        (*(v82 + 8))(v80, v86);
      }

      sub_1E3743538(v67, v90, &qword_1ECF3FB78, &qword_1E42EBA38);
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_23_105();
      sub_1E40DEC90(v71, v72, v73, v74);
      sub_1E40DF230();
      v75 = v92;
      sub_1E4201F44();
      sub_1E3743538(v75, v96, &qword_1ECF3FAD8, &qword_1E42EB9D8);
      swift_storeEnumTagMultiPayload();
      sub_1E40DEBA8();
      OUTLINED_FUNCTION_2_263();
      sub_1E40E02E0(v76, v77, &unk_1E42A9590);
      OUTLINED_FUNCTION_57_38();
      sub_1E4201F44();
      sub_1E325F69C(v75, &qword_1ECF3FAD8);
      v50 = v67;
      v51 = &qword_1ECF3FB78;
      goto LABEL_16;
    }
  }

  sub_1E40DBE80();
  sub_1E40E0328(v93, v96);
  swift_storeEnumTagMultiPayload();
  sub_1E40DEBA8();
  OUTLINED_FUNCTION_2_263();
  sub_1E40E02E0(v68, v69, &unk_1E42A9590);
  sub_1E4201F44();
  OUTLINED_FUNCTION_20_128();
  sub_1E40E0820(v93, v70);
LABEL_17:
  OUTLINED_FUNCTION_25_2();
}

void sub_1E40DB104()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v4 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v10 = v9 - v8;
  v11 = *v3;
  v12 = sub_1E324FBDC();
  (*(v6 + 16))(v10, v12, v4);
  sub_1E40DEAB4(v1, v25);

  v13 = sub_1E41FFC94();
  v14 = sub_1E4206814();
  sub_1E3AB7040(v1);

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v25[0] = swift_slowAlloc();
    *v15 = 136315394;
    *(v15 + 4) = sub_1E3270FC8(*v1, *(v1 + 8), v25);
    *(v15 + 12) = 2080;
    v16 = sub_1E41E1364(v11);
    v24 = v4;
    v18 = sub_1E3270FC8(v16, v17, v25);

    *(v15 + 14) = v18;
    _os_log_impl(&dword_1E323F000, v13, v14, "DocumentView::%s, update route to %s", v15, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();

    (*(v6 + 8))(v10, v24);
  }

  else
  {

    v19 = OUTLINED_FUNCTION_32_7();
    v21(v19, v20);
  }

  if (*(v11 + 32) == 1)
  {
    type metadata accessor for InternalDocumentRoute(0);
    OUTLINED_FUNCTION_5_248();
    sub_1E40E02E0(v22, v23, &unk_1E42BD340);
    OUTLINED_FUNCTION_32_7();
    sub_1E4200BC4();
    sub_1E40DD8D4(v11);
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E40DB370()
{
  v1 = *(v0 + 152);
  OUTLINED_FUNCTION_47_0();
  v2 += 46;
  v3 = *v2;
  (*v2)();
  OUTLINED_FUNCTION_2_1();
  v5 = (*(v4 + 392))();

  if (v5)
  {
    v7 = (v3)(v6);
    v8 = (*(*v7 + 136))();
    OUTLINED_FUNCTION_12_6();
    v58 = *(v9 + 224);
    v10 = v58();
    v11 = 1.0;
    v12 = 1.0 - v8;
    v13 = (1.0 - v8) * v10;
    v14 = *(*v1 + 392);
    v14();
    OUTLINED_FUNCTION_2_1();
    v16 = (*(v15 + 288))();

    v18 = *(*v7 + 272);
    v19 = COERCE_DOUBLE((v18)(v17));
    v21 = v20;
    if (((*(*v7 + 320))() & 1) == 0)
    {
      if (v21)
      {
        v22 = 0.0;
      }

      else
      {
        v22 = v19;
      }

      OUTLINED_FUNCTION_12_6();
      v24 = (*(v23 + 368))();
      v25 = (v10 + v22 - v24 - v16) / v10;
      v26 = v25 < 0.0 || v25 > v12;
      v27 = (v13 + v16 - (v10 + v22)) / v24 + 1.0;
      if (v26)
      {
        v27 = 0.0;
      }

      v28 = fmin(v27, 1.0);
      if (v28 < 0.0)
      {
        v11 = 0.0;
      }

      else
      {
        v11 = v28;
      }
    }

    v14();
    OUTLINED_FUNCTION_30();
    v30 = (*(v29 + 224))();

    if (v30 != v11)
    {
      (v14)(v31);
      OUTLINED_FUNCTION_30();
      (*(v32 + 232))(v11);
    }

    OUTLINED_FUNCTION_12_6();
    v34 = (*(v33 + 344))();
    v35 = v58();
    v36 = COERCE_DOUBLE(v18());
    v38 = 0.0;
    if (v37)
    {
      v36 = 0.0;
    }

    v39 = v35 + v36;
    v40 = (v39 - v34 - v16) / v10;
    if (v40 >= 0.0 && v40 <= v12)
    {
      v42 = fmin((v13 + v16 - v39) / v34 + 1.0, 1.0);
      if (v42 >= 0.0)
      {
        v38 = v42;
      }
    }

    v14();
    OUTLINED_FUNCTION_30();
    v44 = (*(v43 + 256))();

    if (v44 != v38)
    {
      (v14)(v45);
      OUTLINED_FUNCTION_30();
      (*(v48 + 264))(v38);
    }

    if (TVAppFeature.isEnabled.getter(10, v46, v47))
    {
      v14();
      OUTLINED_FUNCTION_30();
      v50 = (*(v49 + 224))();

      (v14)(v51);
      OUTLINED_FUNCTION_2_1();
      v53 = (*(v52 + 320))();

      if (v53 != v50)
      {
        (v14)(v54);
        OUTLINED_FUNCTION_30();
        (*(v55 + 328))(v50);
      }
    }

    v56 = *(v0 + 176);
    if (v56)
    {
      v56(v7);
    }

    OUTLINED_FUNCTION_8_19();
  }

  else
  {
    OUTLINED_FUNCTION_8_19();
  }
}

void *sub_1E40DB940()
{
  OUTLINED_FUNCTION_54_54();
  v4 = v3[20];
  v5 = v3[21];
  memcpy(__dst, v3, sizeof(__dst));
  memcpy(__src, v3 + 22, sizeof(__src));
  sub_1E40DEAB4(v3, v11);

  sub_1E34AF594(v4, v5);
  memcpy(v10, __dst, 0xA0uLL);
  v10[20] = v2;
  v10[21] = v1;
  memcpy(&v10[22], __src, 0x70uLL);
  memcpy(v11, __dst, sizeof(v11));
  v12 = v2;
  v13 = v1;
  memcpy(v14, __src, sizeof(v14));
  sub_1E40DEAB4(v10, &v7);
  sub_1E3AB7040(v11);
  return memcpy(v0, v10, 0x120uLL);
}

uint64_t sub_1E40DBA40(__objc2_class **a1, uint64_t a2, uint64_t a3)
{
  if (a1 && *a1 == _TtC8VideosUI13TextViewModel)
  {

    v3 = OUTLINED_FUNCTION_18();
    v4 = sub_1E3C287F4(0, v3 & 1);
    v5 = v4;
    if (v4)
    {
      v6 = [v4 string];

      sub_1E4205F14();
    }

    else
    {
    }
  }

  sub_1E32822E0(a1, a2, a3);
  return sub_1E4202C44();
}

void sub_1E40DBB3C()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v3 = sub_1E4201AE4();
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  v9 = v8 - v7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3FBD0, &qword_1E42EBDA8);
  OUTLINED_FUNCTION_0_10();
  v12 = v11;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_20_1();
  v14 = *(v2 + 17);
  sub_1E40DBCFC();
  v15 = MEMORY[0x1E697C438];
  if ((v14 & 0x100) != 0)
  {
    v15 = MEMORY[0x1E697C440];
  }

  (*(v5 + 104))(v9, *v15, v3);
  v20 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2D838, &qword_1E42AA080);
  OUTLINED_FUNCTION_11_188(v20);
  OUTLINED_FUNCTION_8_3();
  OUTLINED_FUNCTION_16_8(v16, v17);
  sub_1E42033D4();
  v18 = OUTLINED_FUNCTION_11_6();
  v19(v18);
  (*(v12 + 8))(v0, v10);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E40DBCFC()
{
  OUTLINED_FUNCTION_31_1();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D838, &qword_1E42AA080);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_26_2();
  v6 = *(v0 + 72);
  v7 = *(v0 + 80);
  OUTLINED_FUNCTION_8();
  v9 = *(v8 + 344);

  v9(v10);
  v11 = OUTLINED_FUNCTION_18();
  v12 = sub_1E3F06F18(v6, v7, v11 & 1);
  sub_1E3F074EC(v12 & 1, v13, v14, v15, v1);

  memset(v21, 0, sizeof(v21));
  v22 = 1;
  v17 = OUTLINED_FUNCTION_11_188(v16);
  if (v3)
  {
    v18 = 5;
  }

  else
  {
    v18 = 11;
  }

  sub_1E3A6929C(v18, 0, 0, 1, v21, v4, v17);
  v19 = OUTLINED_FUNCTION_11_6();
  v20(v19);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E40DBE80()
{
  OUTLINED_FUNCTION_31_1();
  v1 = *(v0 + 120);
  if (!v1 || (sub_1E3741090(0xD000000000000017, 0x80000001E4291370, *(v0 + 120)), sub_1E3741090(0xD000000000000013, 0x80000001E4289AC0, v1), !v2))
  {
  }

  OUTLINED_FUNCTION_25_2();

  sub_1E38DF750(v3, v4, v5, v6, v7, v8, v9);
}

void sub_1E40DBF88()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v24[2] = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3FB30, &qword_1E42EBA10);
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  v8 = v24 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3FBF8, &qword_1E42EBDD0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_26_2();
  v24[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3FB18, &qword_1E42EB9F8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5_0(v1 + 64, &v25);
  if (*(v1 + 64))
  {
    v11 = objc_opt_self();

    if (![v11 isMac] || (TVAppFeature.isEnabled.getter(18, v12, v13) & 1) != 0)
    {
      sub_1E40DC2A4();
    }
  }

  sub_1E40DCBB4();
  v14 = OUTLINED_FUNCTION_87_2();
  v15(v14);
  swift_storeEnumTagMultiPayload();
  sub_1E40DEE0C();
  v16 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3FB38, &qword_1E42EBA18);
  v17 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3FB40, &qword_1E42EBA20);
  v18 = sub_1E40DF04C();
  v26 = v17;
  v27 = v18;
  OUTLINED_FUNCTION_3_273();
  v21 = OUTLINED_FUNCTION_16_8(v19, v20);
  v26 = v16;
  v27 = v21;
  OUTLINED_FUNCTION_7_241();
  OUTLINED_FUNCTION_16_8(v22, v23);
  OUTLINED_FUNCTION_56_42();
  sub_1E4201F44();
  (*(v5 + 8))(v8, v3);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E40DC2A4()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v91 = v8;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3FC00, &qword_1E42EBDD8);
  OUTLINED_FUNCTION_0_10();
  v76 = v9;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_44();
  v75 = v11;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3FC08, &qword_1E42EBDE0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_44();
  v90 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3FB30, &qword_1E42EBA10);
  OUTLINED_FUNCTION_0_10();
  v82 = v15;
  v83 = v14;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_44();
  v80 = v17;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3FB28, &qword_1E42EBA08);
  OUTLINED_FUNCTION_0_10();
  v86 = v18;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_44();
  v85 = v20;
  v21 = OUTLINED_FUNCTION_138();
  v81 = type metadata accessor for NavigationBarItems(v21);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_5();
  v84 = v24 - v23;
  OUTLINED_FUNCTION_138();
  v93 = sub_1E4202314();
  OUTLINED_FUNCTION_0_10();
  v26 = v25;
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_4_6();
  v30 = v28 - v29;
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v74 - v32;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3FB20, &qword_1E42EBA00);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_44();
  v74 = v35;
  v79 = v3;
  if (v3)
  {
    v36 = 1;
  }

  else
  {
    v96 = &unk_1F5D5DAC8;
    v97 = &off_1F5D5C998;
    LOBYTE(v94) = 17;
    v36 = sub_1E39C29F0(&v94, *(v1 + 17) & 1);
    __swift_destroy_boxed_opaque_existential_1(&v94);
  }

  OUTLINED_FUNCTION_5_0(v7 + 56, &v98);
  v37 = *(v7 + 56);
  v96 = &unk_1F5D5CF88;
  v97 = &off_1F5D5C718;
  LOBYTE(v94) = 2;
  type metadata accessor for TemplateViewModel(0);

  v38 = j__OUTLINED_FUNCTION_18();
  v39 = sub_1E39C3418(&v94, v38 & 1, v37);

  __swift_destroy_boxed_opaque_existential_1(&v94);
  v77 = v33;
  v78 = v26;
  if (v36)
  {
    sub_1E40DD2B8(v5, 1);
    sub_1E40DD348();
    v40 = OUTLINED_FUNCTION_48_55();
    v41(v40);
    v42 = *(v1 + 192);
    v43 = *(v1 + 200);
    LODWORD(v76) = v39;
    v44 = *(v1 + 208);
    v75 = v5;

    v45 = OUTLINED_FUNCTION_57();
    sub_1E3908F18(v45, v46);
    sub_1E39EFBA8(v5, v30, v79 & 1, v42, v43, v44);
    sub_1E40DCBB4();
    v47 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3FB38, &qword_1E42EBA18);
    v48 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3FB40, &qword_1E42EBA20);
    v49 = sub_1E40DF04C();
    v94 = v48;
    v95 = v49;
    OUTLINED_FUNCTION_3_273();
    v52 = OUTLINED_FUNCTION_6_70(v50, v51);
    v94 = v47;
    v95 = v52;
    OUTLINED_FUNCTION_7_241();
    OUTLINED_FUNCTION_6_70(v53, v54);
    OUTLINED_FUNCTION_22_101();
    sub_1E40E02E0(v55, v56, &unk_1E42B1D60);
    sub_1E39EF294();
  }

  sub_1E40DD2B8(v5, 0);
  sub_1E40DD348();
  v57 = OUTLINED_FUNCTION_48_55();
  v58(v57);
  v59 = *(v1 + 192);
  v60 = *(v1 + 200);
  v61 = *(v1 + 208);
  v74 = v5;

  v62 = OUTLINED_FUNCTION_57();
  sub_1E3908F18(v62, v63);
  sub_1E39EFBA8(v5, v30, v79 & 1, v59, v60, v61);
  sub_1E40DCBB4();
  v64 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3FB38, &qword_1E42EBA18);
  v65 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3FB40, &qword_1E42EBA20);
  v66 = sub_1E40DF04C();
  v94 = v65;
  v95 = v66;
  OUTLINED_FUNCTION_3_273();
  v69 = OUTLINED_FUNCTION_6_70(v67, v68);
  v94 = v64;
  v95 = v69;
  OUTLINED_FUNCTION_7_241();
  OUTLINED_FUNCTION_6_70(v70, v71);
  OUTLINED_FUNCTION_22_101();
  sub_1E40E02E0(v72, v73, &unk_1E42B1D60);
  sub_1E39EF294();
}

void sub_1E40DCA1C()
{
  (*(v0[8] + 8))(v4, v5);
  OUTLINED_FUNCTION_27_100();
  v9 = swift_allocObject();
  memcpy((v9 + 16), v7, 0x120uLL);
  sub_1E40DEAB4(v7, (v0 + 20));
  v0[20] = v5;
  v0[21] = v8;
  v0[22] = v3;
  v0[23] = v1;
  v10 = OUTLINED_FUNCTION_19_150();
  v11 = v0[1];
  v12 = v0[14];
  sub_1E383B5A4(sub_1E40E0818, v9, v12);

  (*(v0[12] + 8))(v6, v12);
  OUTLINED_FUNCTION_21_121();
  sub_1E40E0820(v2, v13);
  (*(v0[4] + 8))(v0[3], v0[19]);
  v14 = v0[2];
  v15 = v0[18];
  (*(v14 + 16))(v0[16], v11, v15);
  swift_storeEnumTagMultiPayload();
  sub_1E40DEFE8();
  v0[20] = v12;
  v0[21] = v10;
  OUTLINED_FUNCTION_19_150();
  sub_1E4201F44();
  (*(v14 + 8))(v11, v15);
  JUMPOUT(0x1E40DCB9CLL);
}

void sub_1E40DCBB4()
{
  OUTLINED_FUNCTION_31_1();
  v3 = v0;
  v5 = v4;
  v75 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A970, &qword_1E429E840);
  OUTLINED_FUNCTION_17_2(v7);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_44();
  v72 = v9;
  OUTLINED_FUNCTION_138();
  v73 = sub_1E42045D4();
  OUTLINED_FUNCTION_0_10();
  v70 = v10;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5();
  v68 = v13 - v12;
  OUTLINED_FUNCTION_138();
  v14 = sub_1E4204624();
  v15 = OUTLINED_FUNCTION_17_2(v14);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_5();
  v65 = v17 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A978, &qword_1E429E848);
  OUTLINED_FUNCTION_17_2(v18);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v65 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3FB58, &qword_1E42EBA28);
  OUTLINED_FUNCTION_17_2(v22);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_20_1();
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3FB40, &qword_1E42EBA20);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_26_2();
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3FB38, &qword_1E42EBA18);
  OUTLINED_FUNCTION_0_10();
  v69 = v25;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_44();
  v66 = v27;
  v74 = v5;
  sub_1E40DD4C8();
  v28 = *(v3 + 232);
  if (v28)
  {
    type metadata accessor for InternalDocumentRoute(0);
    OUTLINED_FUNCTION_5_248();
    sub_1E40E02E0(v29, v30, &unk_1E42BD340);
    v31 = v28;
    OUTLINED_FUNCTION_32_7();
    v32 = *(sub_1E4200BC4() + OBJC_IVAR____TtC8VideosUIP33_22AE03CB8E5DD9771BF6CABAA0471CD921InternalDocumentRoute_route);

    (*(**(v3 + 152) + 392))(v33);
    v34 = sub_1E379D97C(v31, v32);
    v36 = v35;
    v38 = v37;
    v40 = v39;
    sub_1E32E4364(v2, v1);
    v41 = v67;
    v42 = (v1 + *(v67 + 36));
    *v42 = v34;
    v42[1] = v36;
    v42[2] = v38;
    v42[3] = v40;
    v43 = MEMORY[0x1E69E7CC0];
    sub_1E4205CB4();
    sub_1E4204614();
    sub_1E37E5C70(v43);
    OUTLINED_FUNCTION_57();
    sub_1E4204504();
    v44 = sub_1E4204514();
    __swift_storeEnumTagSinglePayload(v21, 0, 1, v44);
    v45 = MetricsJetEngine.shared.unsafeMutableAddressor();
    v46 = *((*MEMORY[0x1E69E7D40] & **v45) + 0x68);
    v47 = *v45;
    v48 = v68;
    v46(v47);

    OUTLINED_FUNCTION_8();
    (*(v49 + 184))(v50);
    v51 = sub_1E41FF594();
    v52 = v72;
    __swift_storeEnumTagSinglePayload(v72, 1, 1, v51);
    v53 = sub_1E40DF04C();
    v54 = v66;
    sub_1E4202C74();
    swift_unknownObjectRelease();
    sub_1E325F69C(v52, &qword_1ECF2A970);
    (*(v70 + 8))(v48, v73);
    sub_1E325F69C(v21, &qword_1ECF2A978);
    sub_1E325F69C(v1, &qword_1ECF3FB40);
    v55 = v74;
    if (v74)
    {
      OUTLINED_FUNCTION_5_0(v74 + 56, v76);
      if (*(v55 + 56))
      {
        OUTLINED_FUNCTION_12_6();
        v57 = *(v56 + 320);

        v57(v58);
      }
    }

    v76[3] = v41;
    v76[4] = v53;
    OUTLINED_FUNCTION_3_273();
    OUTLINED_FUNCTION_16_8(v59, v60);
    OUTLINED_FUNCTION_16_0();
    v61 = v71;
    sub_1E40A802C();

    (*(v69 + 8))(v54, v61);
    OUTLINED_FUNCTION_25_2();
  }

  else
  {
    type metadata accessor for Router(0);
    OUTLINED_FUNCTION_4_268();
    v64 = sub_1E40E02E0(v62, v63, &unk_1E42EB398);
    OUTLINED_FUNCTION_6_46(v64);
    __break(1u);
  }
}

uint64_t sub_1E40DD1C4()
{
  sub_1E41FFBF4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_5();
  v1 = sub_1E4206B94();
  v2 = VUISignpostLogObject(v1);
  sub_1E41FFBE4();
  sub_1E41FFBA4();

  v3 = OUTLINED_FUNCTION_16_0();
  return v4(v3);
}

uint64_t sub_1E40DD2B8(uint64_t a1, char a2)
{
  v6[3] = &unk_1F5D5DBE8;
  v6[4] = &off_1F5D5C9D8;
  LOBYTE(v6[0]) = 0;
  v4 = sub_1E39C29F0(v6, *(v2 + 18) & 1);
  __swift_destroy_boxed_opaque_existential_1(v6);
  if ((v4 & 1) == 0)
  {
    return sub_1E42022F4();
  }

  if (a2)
  {
    return sub_1E42022E4();
  }

  return sub_1E4202304();
}

uint64_t sub_1E40DD348()
{
  v1 = *(v0 + 280);
  v10 = v1;
  if (!v1)
  {
    OUTLINED_FUNCTION_47_0();
    v2 += 49;
    v3 = *v2;
    (*v2)();
    OUTLINED_FUNCTION_30();
    v5 = *(v4 + 200);

    v5(v6);

    v1 = (v3)(v7);
  }

  sub_1E3743538(&v10, &v9, &qword_1ECF3FC10, &qword_1E42EBDE8);
  return v1;
}

double sub_1E40DD428(double a1)
{
  OUTLINED_FUNCTION_8();
  (*(v2 + 392))();
  OUTLINED_FUNCTION_2_1();
  (*(v3 + 296))(a1);

  return result;
}

void sub_1E40DD4C8()
{
  OUTLINED_FUNCTION_31_1();
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF317A8, &qword_1E42EBDF0);
  OUTLINED_FUNCTION_0_10();
  v8 = v7;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_20_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3FC18, &qword_1E42EBDF8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_26_2();
  type metadata accessor for ErrorTemplate(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5();
  v14 = v13 - v12;
  if (v5 && (OUTLINED_FUNCTION_5_0(v5 + 56, &v38), (v15 = *(v5 + 56)) != 0))
  {
    v37 = v8;

    v17 = *(v3 + 152);
    v36 = *(*v17 + 344);
    v18 = v36(v16);
    if (v18)
    {
      OUTLINED_FUNCTION_30();
      OUTLINED_FUNCTION_35_6();
      v19();
    }

    v34 = *(v3 + 40);
    v35 = *(v3 + 32);
    v33 = *(v3 + 56);
    v20 = *(v3 + 48);
    v21 = (*(*v17 + 368))(v18);
    v22 = (*(*v17 + 392))();
    v23 = (*(*v17 + 416))();
    sub_1E3E85A74(v15, v35, v34, v20 & 1, v33, v21, v22, v23, v1, v17[10]);

    if (v36(v24))
    {
      OUTLINED_FUNCTION_30();
      OUTLINED_FUNCTION_35_6();
      v25();
    }

    (*(v37 + 16))(v0, v1, v6);
    OUTLINED_FUNCTION_87_2();
    v26 = swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_30_9(v26);
    OUTLINED_FUNCTION_2_263();
    sub_1E40E02E0(v27, v28, &unk_1E42A9590);
    OUTLINED_FUNCTION_11_6();
    sub_1E4201F44();

    (*(v37 + 8))(v1, v6);
  }

  else
  {
    sub_1E40DBE80();
    sub_1E40E0328(v14, v0);
    OUTLINED_FUNCTION_87_2();
    v29 = swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_30_9(v29);
    OUTLINED_FUNCTION_2_263();
    sub_1E40E02E0(v30, v31, &unk_1E42A9590);
    OUTLINED_FUNCTION_11_6();
    sub_1E4201F44();
    OUTLINED_FUNCTION_20_128();
    sub_1E40E0820(v14, v32);
  }

  OUTLINED_FUNCTION_25_2();
}

double sub_1E40DD8D4(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC8VideosUIP33_22AE03CB8E5DD9771BF6CABAA0471CD921InternalDocumentRoute_route) = a1;

  type metadata accessor for InternalDocumentRoute(0);
  OUTLINED_FUNCTION_5_248();
  sub_1E40E02E0(v2, v3, &unk_1E42BD340);
  sub_1E4200514();
  sub_1E4200594();

  return result;
}

uint64_t sub_1E40DD9A4()
{
  v0 = sub_1E3B4FF80();

  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1E40DDA68()
{
  if (qword_1ECF6CEC0 != -1)
  {
    OUTLINED_FUNCTION_9_194(&qword_1ECF6CEC0);
  }

  OUTLINED_FUNCTION_5_0(qword_1ECF71A30, v1);
  OUTLINED_FUNCTION_46_64();
}

__n128 sub_1E40DDADC@<Q0>(__n128 *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>)
{
  sub_1E40DFCEC(a2, a3, a4);
  sub_1E4201AC4();
  result = v7;
  *a1 = v6;
  a1[1] = v7;
  a1[2].n128_u8[0] = v8;
  return result;
}

void sub_1E40DDB80()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v62 = v4;
  sub_1E42010B4();
  v6 = *(v3 + 16);
  v5 = *(v3 + 24);
  v7 = sub_1E42013D4();
  OUTLINED_FUNCTION_0_10();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_4_6();
  v13 = (v11 - v12);
  MEMORY[0x1EEE9AC00](v14);
  v56 = &v55 - v15;
  v16 = OUTLINED_FUNCTION_138();
  v18 = type metadata accessor for ContentFittingNavigationStack(v16, v6, v5, v17);
  OUTLINED_FUNCTION_0_10();
  v20 = v19;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_4_6();
  v24 = (v22 - v23);
  MEMORY[0x1EEE9AC00](v25);
  v57 = &v55 - v26;
  OUTLINED_FUNCTION_138();
  sub_1E4201F54();
  OUTLINED_FUNCTION_0_10();
  v60 = v28;
  v61 = v27;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_44();
  v59 = v30;
  v58 = &v55;
  LODWORD(v30) = *(v1 + *(v3 + 36));
  v63 = v6;
  v64 = v5;
  v65 = v1;
  if (v30 == 1)
  {
    v31 = &v24[*(v18 + 36)];
    *v31 = swift_getKeyPath();
    *(v31 + 1) = 0;
    *(v31 + 2) = 0;
    *(v31 + 3) = 0;
    *(v31 + 16) = 0;
    v32 = &v24[*(v18 + 40)];
    v68 = 0;
    v69 = 0;
    v70 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2AD70, &qword_1E429F170);
    sub_1E42038E4();
    v33 = v72;
    v34 = v73;
    *v32 = v71;
    v32[16] = v33 & 1;
    *(v32 + 3) = v34;
    sub_1E40E02C0();
    OUTLINED_FUNCTION_6_231();
    swift_getWitnessTable();
    v35 = *(v20 + 16);
    v36 = v57;
    v35(v57, v24, v18);
    v37 = *(v20 + 8);
    v38 = OUTLINED_FUNCTION_168();
    v37(v38);
    v35(v24, v36, v18);
    OUTLINED_FUNCTION_1_302();
    swift_getWitnessTable();
    v39 = v59;
    v40 = OUTLINED_FUNCTION_168();
    sub_1E37B8D98(v40, v41);
    v42 = OUTLINED_FUNCTION_168();
    v37(v42);
    (v37)(v36, v18);
  }

  else
  {
    sub_1E42013C4();
    OUTLINED_FUNCTION_1_302();
    swift_getWitnessTable();
    v43 = *(v9 + 16);
    v44 = v56;
    v43(v56, v13, v7);
    v45 = *(v9 + 8);
    v46 = OUTLINED_FUNCTION_57();
    v45(v46);
    v43(v13, v44, v7);
    OUTLINED_FUNCTION_6_231();
    swift_getWitnessTable();
    v39 = v59;
    v47 = OUTLINED_FUNCTION_32_7();
    sub_1E37B8E90(v47, v48, v7);
    v49 = OUTLINED_FUNCTION_57();
    v45(v49);
    (v45)(v44, v7);
  }

  OUTLINED_FUNCTION_6_231();
  WitnessTable = swift_getWitnessTable();
  OUTLINED_FUNCTION_1_302();
  v51 = swift_getWitnessTable();
  v66 = WitnessTable;
  v67 = v51;
  OUTLINED_FUNCTION_2_25();
  v52 = v61;
  swift_getWitnessTable();
  (*(v60 + 16))(v62, v39, v52);
  v53 = OUTLINED_FUNCTION_11_6();
  v54(v53);
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E40DDFF8(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  OUTLINED_FUNCTION_5();
  v6 = v5 - v4;
  v7 = *(v3 + 16);
  v7(v5 - v4);
  v8 = OUTLINED_FUNCTION_57();
  v7(v8);
  return (*(v3 + 8))(v6, a2);
}

double sub_1E40DE0E0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = (v2 + *(a1 + 36));
  v5 = v4[1];
  v10 = *v4;
  v11 = v5;
  v12 = *(v4 + 16);
  sub_1E40DE88C(v8);
  result = *v8;
  v7 = v8[1];
  *a2 = v8[0];
  *(a2 + 16) = v7;
  *(a2 + 32) = v9;
  return result;
}

void sub_1E40DE144()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v34 = v2;
  sub_1E42010B4();
  v33 = *(v1 + 16);
  v3 = sub_1E42013A4();
  v32 = *(v1 + 24);
  v40[3] = v32;
  v40[4] = MEMORY[0x1E697EBE0];
  OUTLINED_FUNCTION_4_1();
  *&v41 = v3;
  *(&v41 + 1) = swift_getWitnessTable();
  v30[1] = swift_getOpaqueTypeMetadata2();
  v30[0] = swift_getOpaqueTypeConformance2();
  v4 = sub_1E42013D4();
  OUTLINED_FUNCTION_0_10();
  v31 = v5;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  v8 = v30 - v7;
  v9 = sub_1E42013A4();
  OUTLINED_FUNCTION_0_10();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_4_6();
  v15 = v13 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = v30 - v17;
  OUTLINED_FUNCTION_45_71();
  v41 = *v19;
  LOBYTE(v42) = v20;
  *(&v42 + 1) = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F128, &qword_1E42E84F0);
  v22 = sub_1E42038F4();
  if (v38 == 1)
  {
    sub_1E40DE0E0(v1, &v41);
    v37 = v41;
    v38 = v42;
    v39 = v43;
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3FC28, qword_1E42EBE20);
    MEMORY[0x1E690E3F0](v40, v23);
    v44 = v41;
    sub_1E37DFBC0(&v44);
  }

  MEMORY[0x1EEE9AC00](v22);
  v24 = v32;
  v30[-4] = v33;
  v30[-3] = v24;
  v30[-2] = v25;
  sub_1E42013C4();
  WitnessTable = swift_getWitnessTable();
  sub_1E4203DA4();
  sub_1E4203464();
  (*(v31 + 8))(v8, v4);
  v35 = WitnessTable;
  v36 = MEMORY[0x1E697E040];
  OUTLINED_FUNCTION_4_1();
  swift_getWitnessTable();
  v27 = *(v11 + 16);
  v27(v18, v15, v9);
  v28 = *(v11 + 8);
  v28(v15, v9);
  v27(v34, v18, v9);
  v29 = OUTLINED_FUNCTION_168();
  (v28)(v29);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E40DE548()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v44 = v2;
  v4 = v3;
  v6 = v5;
  type metadata accessor for ContentFittingNavigationStack(0, v3, v5, v7);
  OUTLINED_FUNCTION_0_10();
  v41 = v9;
  v42 = v8;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_44();
  v40 = v10;
  v11 = sub_1E42013A4();
  v39 = v11;
  v43 = *(v11 - 8);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v12);
  v37 = &v35 - v13;
  v47 = v6;
  v48 = MEMORY[0x1E697EBE0];
  v36 = v6;
  OUTLINED_FUNCTION_4_1();
  WitnessTable = swift_getWitnessTable();
  v45 = v11;
  v46 = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_0_10();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_4_6();
  v20 = v18 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v35 - v22;
  sub_1E4203584();
  v25 = v40;
  v24 = v41;
  v26 = v42;
  (*(v41 + 16))(v40, v1, v42);
  v27 = (*(v24 + 80) + 32) & ~*(v24 + 80);
  v28 = swift_allocObject();
  v29 = v36;
  *(v28 + 16) = v4;
  *(v28 + 24) = v29;
  (*(v24 + 32))(v28 + v27, v25, v26);
  OUTLINED_FUNCTION_32_0();
  v30 = OUTLINED_FUNCTION_51_1();
  sub_1E40AB768(v30 & 1);

  v31 = OUTLINED_FUNCTION_16_0();
  v32(v31);
  v33 = *(v16 + 16);
  v33(v23, v20, OpaqueTypeMetadata2);
  v34 = *(v16 + 8);
  v34(v20, OpaqueTypeMetadata2);
  v33(v44, v23, OpaqueTypeMetadata2);
  v34(v23, OpaqueTypeMetadata2);
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E40DE88C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1E4201AB4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v18[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  if (*(v1 + 33) == 1)
  {
    v9 = *(v1 + 16);
    v8 = *(v1 + 24);
    v10 = *(v1 + 8);
    v11 = *(v1 + 32);
  }

  else
  {

    v13 = sub_1E4206804();
    v14 = sub_1E42026D4();
    if (os_log_type_enabled(v14, v13))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v18[0] = v16;
      *v15 = 136315138;
      *(v15 + 4) = sub_1E3270FC8(0xD000000000000019, 0x80000001E4291390, v18);
      _os_log_impl(&dword_1E323F000, v14, v13, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v16);
      MEMORY[0x1E69143B0](v16, -1, -1);
      MEMORY[0x1E69143B0](v15, -1, -1);
    }

    sub_1E4201AA4();
    swift_getAtKeyPath();
    sub_1E325F69C(v1, &unk_1ECF3FC38);
    result = (*(v4 + 8))(v6, v3);
    v7 = v18[0];
    v10 = v18[1];
    v9 = v18[2];
    v8 = v18[3];
    v11 = v19;
  }

  *a1 = v7;
  *(a1 + 8) = v10;
  *(a1 + 16) = v9;
  *(a1 + 24) = v8;
  *(a1 + 32) = v11 & 1;
  return result;
}

unint64_t sub_1E40DEAEC()
{
  result = qword_1ECF3FAC8;
  if (!qword_1ECF3FAC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3FAB0, &qword_1E42EB9C0);
    sub_1E40DEBA8();
    sub_1E40E02E0(qword_1EE284560, type metadata accessor for ErrorTemplate, &unk_1E42A9590);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3FAC8);
  }

  return result;
}

unint64_t sub_1E40DEBA8()
{
  result = qword_1ECF3FAD0;
  if (!qword_1ECF3FAD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3FAD8, &qword_1E42EB9D8);
    sub_1E40DEC90(&qword_1ECF3FAE0, &qword_1ECF3FAE8, &qword_1E42EB9E0, sub_1E40DEC60);
    sub_1E40DF230();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3FAD0);
  }

  return result;
}

uint64_t sub_1E40DEC90(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    v7 = OUTLINED_FUNCTION_40_2(0, a2);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v7, v8);
    a4();
    OUTLINED_FUNCTION_4_1();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E40DED00()
{
  result = qword_1ECF3FB00;
  if (!qword_1ECF3FB00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3FB08, &qword_1E42EB9F0);
    sub_1E40DEE0C();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3FB38, &qword_1E42EBA18);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3FB40, &qword_1E42EBA20);
    sub_1E40DF04C();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3FB00);
  }

  return result;
}

unint64_t sub_1E40DEE0C()
{
  result = qword_1ECF3FB10;
  if (!qword_1ECF3FB10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3FB18, &qword_1E42EB9F8);
    sub_1E40DEFE8();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3FB28, &qword_1E42EBA08);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3FB30, &qword_1E42EBA10);
    type metadata accessor for NavigationBarItems(255);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3FB38, &qword_1E42EBA18);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3FB40, &qword_1E42EBA20);
    sub_1E40DF04C();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1E40E02E0(qword_1EE2770F0, type metadata accessor for NavigationBarItems, &unk_1E42B1D60);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3FB10);
  }

  return result;
}

unint64_t sub_1E40DEFE8()
{
  result = qword_1ECF6CEC8[0];
  if (!qword_1ECF6CEC8[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3FB20, &qword_1E42EBA00);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECF6CEC8);
  }

  return result;
}

unint64_t sub_1E40DF04C()
{
  result = qword_1ECF3FB48;
  if (!qword_1ECF3FB48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3FB40, &qword_1E42EBA20);
    v3 = sub_1E40DF0D8();
    sub_1E389B90C(v3, v1, v2);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3FB48);
  }

  return result;
}

unint64_t sub_1E40DF0D8()
{
  result = qword_1ECF3FB50;
  if (!qword_1ECF3FB50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3FB58, &qword_1E42EBA28);
    sub_1E40DF15C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3FB50);
  }

  return result;
}

unint64_t sub_1E40DF15C()
{
  result = qword_1ECF3FB60;
  if (!qword_1ECF3FB60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3FB68, &qword_1E42EBA30);
    swift_getOpaqueTypeConformance2();
    sub_1E40E02E0(qword_1EE284560, type metadata accessor for ErrorTemplate, &unk_1E42A9590);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3FB60);
  }

  return result;
}

unint64_t sub_1E40DF230()
{
  result = qword_1ECF3FB70;
  if (!qword_1ECF3FB70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3FB78, &qword_1E42EBA38);
    sub_1E374AD40(&qword_1ECF3FB80, &qword_1ECF3FB88, &unk_1E42EBA40, MEMORY[0x1E697C1A8]);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2D838, &qword_1E42AA080);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3FB70);
  }

  return result;
}

void sub_1E40DF368(uint64_t a1, _BYTE *a2)
{
  if (*a2 == 1)
  {
    v3 = *(v2 + 248);
    if (v3)
    {
      type metadata accessor for InternalDocumentRoute(0);
      OUTLINED_FUNCTION_5_248();
      sub_1E40E02E0(v4, v5, &unk_1E42BD340);
      v10 = v3;
      v6 = *(sub_1E4200BC4() + OBJC_IVAR____TtC8VideosUIP33_22AE03CB8E5DD9771BF6CABAA0471CD921InternalDocumentRoute_route);

      (*((*MEMORY[0x1E69E7D40] & *v10) + 0x198))(v6);
    }

    else
    {
      type metadata accessor for Router(0);
      OUTLINED_FUNCTION_4_268();
      v9 = sub_1E40E02E0(v7, v8, &unk_1E42EB398);
      OUTLINED_FUNCTION_6_46(v9);
      __break(1u);
    }
  }
}

uint64_t sub_1E40DF4F0()
{
  v1 = *(v0 + 168);
  OUTLINED_FUNCTION_47_0();
  (*(v2 + 784))();
  OUTLINED_FUNCTION_13();
  if ((*(v3 + 344))())
  {
    OUTLINED_FUNCTION_30();
    OUTLINED_FUNCTION_35_6();
    v4();
  }

  v31 = *(v0 + 144);
  v28 = *(v0 + 144);
  v32 = *(&v31 + 1);
  sub_1E3743538(&v32, &v30, &qword_1ECF31088, &qword_1E42E69F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF294E0, &qword_1E429C8B0);
  v5 = sub_1E42038F4();
  if (v30 == 1)
  {
    v6 = (*(*v1 + 272))(v5);
    v10 = v6;
    if ((v9 & 0xE000) == 0x6000)
    {
      v11 = OUTLINED_FUNCTION_40_2(v6, v7);
      sub_1E37CD868(v11, v12, v13);
      if (v10)
      {
        OUTLINED_FUNCTION_5_0(v10 + 56, &v28);
        v14 = *(v10 + 56);
        if (v14)
        {
          v15 = *(v14 + OBJC_IVAR____TtC8VideosUI17TemplateViewModel_templateType);
          v16 = v15 > 0xD;
          v17 = (1 << v15) & 0x2044;
          if (v16 || v17 == 0)
          {
            OUTLINED_FUNCTION_47_0();
            v25 = *(v24 + 392);

            v25(v26);
            OUTLINED_FUNCTION_2_1();
            v23.n128_u64[0] = 1.0;
          }

          else
          {
            OUTLINED_FUNCTION_47_0();
            v20 = *(v19 + 392);

            v20(v21);
            OUTLINED_FUNCTION_2_1();
            v23.n128_u64[0] = 0;
          }

          (*(v22 + 264))(v23);
        }
      }
    }

    else
    {
      sub_1E39050C0(v6, v7, v8, v9);
    }
  }

  v30 = v31;
  v29 = 0;
  sub_1E4203904();
  return sub_1E325F69C(&v31, &qword_1ECF294E0);
}

double sub_1E40DF7EC()
{
  OUTLINED_FUNCTION_8();
  if ((*(v0 + 344))())
  {
    OUTLINED_FUNCTION_30();
    OUTLINED_FUNCTION_35_6();
    v2();
  }

  return result;
}

void sub_1E40DF880(uint64_t a1, uint64_t *a2)
{
  v3 = *(a2 + 12);
  v4 = v3 | (*(a2 + 26) << 16);
  if ((v3 & 0xE000) == 0x6000)
  {
    v5 = v2;
    v7 = a2[1];
    v6 = a2[2];
    v8 = *a2;
    v9 = *(a1 + 24);

    sub_1E37CDABC(v7, v6, v4);
    v10 = sub_1E37CD868(v7, v6, v4);
    if ((v9 & 0xE000) != 0)
    {
    }

    else
    {
      if (v8)
      {
        v10 = OUTLINED_FUNCTION_5_0(v8 + 56, &v36);
        v13 = *(v8 + 56);
        if (v13)
        {
          v14 = *(v13 + OBJC_IVAR____TtC8VideosUI17TemplateViewModel_templateType);
          v15 = v14 > 0xD;
          v16 = (1 << v14) & 0x2044;
          if (v15 || v16 == 0)
          {
            v18 = 1.0;
          }

          else
          {
            v18 = 0.0;
          }

          OUTLINED_FUNCTION_8();
          v20 = *(v19 + 392);

          v20(v21);
          OUTLINED_FUNCTION_2_1();
          (*(v22 + 264))(v18);
        }
      }

      if (HIWORD(v4) != 5)
      {
        LOBYTE(v38[0]) = BYTE2(v4);
        v37[0] = 0;
        sub_1E37D17DC(v10, v11, v12);
        if (sub_1E4205E84())
        {
          if (!v8)
          {
            return;
          }

          OUTLINED_FUNCTION_5_0(v8 + 56, v37);
          v23 = *(v8 + 56);
          if (v23)
          {
            OUTLINED_FUNCTION_12_6();
            v25 = *(v24 + 1216);

            v27 = v25(v26);
            if (v27)
            {
              v28 = *(v5 + 248);
              if (!v28)
              {
                type metadata accessor for Router(0);
                OUTLINED_FUNCTION_4_268();
                v35 = sub_1E40E02E0(v33, v34, &unk_1E42EB398);
                OUTLINED_FUNCTION_6_46(v35);
                __break(1u);
                return;
              }

              v29 = v27;
              memset(v38, 0, sizeof(v38));
              v39 = 1;
              v30 = *((*MEMORY[0x1E69E7D40] & *v28) + 0x1D0);
              v31 = v28;
              v32 = v29;
              v30(2, v23, v29, v38);
            }

            else
            {
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1E40DFB88()
{
  result = qword_1ECF3FBB0;
  if (!qword_1ECF3FBB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3FBA0, &unk_1E42EBA58);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3FAB8, &qword_1E42EB9C8);
    sub_1E374AD40(&qword_1ECF3FB98, &qword_1ECF3FAB8, &qword_1E42EB9C8, MEMORY[0x1E697C278]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3FBB0);
  }

  return result;
}

unint64_t sub_1E40DFC98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF3FBB8;
  if (!qword_1ECF3FBB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3FBB8);
  }

  return result;
}

unint64_t sub_1E40DFCEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF3FBC0;
  if (!qword_1ECF3FBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3FBC0);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_7SwiftUI7BindingVySiGSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1E40DFD88(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 288))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E40DFDC8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 280) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 288) = 1;
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

    *(result + 288) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t type metadata accessor for InternalDocumentRoute(uint64_t a1)
{
  result = qword_1ECF6CFD8;
  if (!qword_1ECF6CFD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E40DFEC8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (v5 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = *(*(v4 - 8) + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_22;
  }

  v9 = v6 + 1;
  v10 = 8 * (v6 + 1);
  if ((v6 + 1) > 3)
  {
    goto LABEL_7;
  }

  v12 = ((v8 + ~(-1 << v10)) >> v10) + 1;
  if (HIWORD(v12))
  {
    v11 = *(a1 + v9);
    if (v11)
    {
      goto LABEL_14;
    }
  }

  else
  {
    if (v12 <= 0xFF)
    {
      if (v12 < 2)
      {
        goto LABEL_22;
      }

LABEL_7:
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_22;
      }

LABEL_14:
      v13 = (v11 - 1) << v10;
      if (v9 > 3)
      {
        v13 = 0;
      }

      if (v9)
      {
        if (v9 > 3)
        {
          LODWORD(v9) = 4;
        }

        switch(v9)
        {
          case 2:
            LODWORD(v9) = *a1;
            break;
          case 3:
            LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
            break;
          case 4:
            LODWORD(v9) = *a1;
            break;
          default:
            LODWORD(v9) = *a1;
            break;
        }
      }

      v16 = v7 + (v9 | v13);
      return (v16 + 1);
    }

    v11 = *(a1 + v9);
    if (*(a1 + v9))
    {
      goto LABEL_14;
    }
  }

LABEL_22:
  if (v5 >= 0xFE)
  {
    return __swift_getEnumTagSinglePayload(a1, v5, v4);
  }

  v15 = *(a1 + v6);
  if (v15 < 2)
  {
    return 0;
  }

  v16 = (v15 + 2147483646) & 0x7FFFFFFF;
  return (v16 + 1);
}

void sub_1E40E0034(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  if (v7 <= 0xFE)
  {
    v8 = 254;
  }

  else
  {
    v8 = *(*(v6 - 8) + 84);
  }

  v9 = *(*(v6 - 8) + 64);
  v10 = v9 + 1;
  v11 = 8 * (v9 + 1);
  v12 = a3 >= v8;
  v13 = a3 - v8;
  if (v13 != 0 && v12)
  {
    if (v10 <= 3)
    {
      v19 = ((v13 + ~(-1 << v11)) >> v11) + 1;
      if (HIWORD(v19))
      {
        v14 = 4;
      }

      else
      {
        if (v19 < 0x100)
        {
          v20 = 1;
        }

        else
        {
          v20 = 2;
        }

        if (v19 >= 2)
        {
          v14 = v20;
        }

        else
        {
          v14 = 0;
        }
      }
    }

    else
    {
      v14 = 1;
    }
  }

  else
  {
    v14 = 0;
  }

  if (v8 >= a2)
  {
    switch(v14)
    {
      case 1:
        *(a1 + v10) = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 2:
        *(a1 + v10) = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 3:
LABEL_42:
        __break(1u);
        break;
      case 4:
        *(a1 + v10) = 0;
        goto LABEL_26;
      default:
LABEL_26:
        if (a2)
        {
LABEL_27:
          if (v7 < 0xFE)
          {
            *(a1 + v9) = a2 + 1;
          }

          else
          {

            __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
          }
        }

        break;
    }
  }

  else
  {
    v15 = ~v8 + a2;
    if (v10 < 4)
    {
      v18 = (v15 >> v11) + 1;
      if (v9 != -1)
      {
        v21 = v15 & ~(-1 << v11);
        v22 = OUTLINED_FUNCTION_32_0();
        bzero(v22, v23);
        if (v10 == 3)
        {
          *a1 = v21;
          *(a1 + 2) = BYTE2(v21);
        }

        else if (v10 == 2)
        {
          *a1 = v21;
        }

        else
        {
          *a1 = v15;
        }
      }
    }

    else
    {
      v16 = OUTLINED_FUNCTION_32_0();
      bzero(v16, v17);
      *a1 = v15;
      v18 = 1;
    }

    switch(v14)
    {
      case 1:
        *(a1 + v10) = v18;
        break;
      case 2:
        *(a1 + v10) = v18;
        break;
      case 3:
        goto LABEL_42;
      case 4:
        *(a1 + v10) = v18;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_1E40E02E0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E40E0328(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ErrorTemplate(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

double sub_1E40E0394()
{
  v1 = v0;
  OUTLINED_FUNCTION_47_0();
  v3 = (*(v2 + 272))();
  v7 = v3;
  if ((v6 & 0xE000) == 0x6000)
  {
    v8 = OUTLINED_FUNCTION_40_2(v3, v4);
    sub_1E37CD868(v8, v9, v10);
    if (v7)
    {
      OUTLINED_FUNCTION_5_0(v7 + 56, v35);
      v12 = *(v7 + 56);
      if (v12)
      {
        type metadata accessor for InternalDocumentRoute(0);
        OUTLINED_FUNCTION_5_248();
        sub_1E40E02E0(v13, v14, &unk_1E42BD340);

        v15 = *(sub_1E4200BC4() + OBJC_IVAR____TtC8VideosUIP33_22AE03CB8E5DD9771BF6CABAA0471CD921InternalDocumentRoute_route);

        v17 = (*(*v15 + 368))(v16);

        if (!v17)
        {
          v18 = *(sub_1E4200BC4() + OBJC_IVAR____TtC8VideosUIP33_22AE03CB8E5DD9771BF6CABAA0471CD921InternalDocumentRoute_route);

          v19 = *(*v18 + 376);

          v19(v20);
        }

        v21 = v1[22];
        if (v21)
        {
          v22 = v1[23];

          v21(v12);
          sub_1E34AF594(v21, v22);
        }

        else
        {
          OUTLINED_FUNCTION_47_0();
          if (!(*(v23 + 752))())
          {
            OUTLINED_FUNCTION_12_6();
            v25 = *(v24 + 576);

            v25(v26);
            OUTLINED_FUNCTION_13();
            v28 = (*(v27 + 760))();
            v29 = v1[29];
            v30 = (v25)(v28);

            (*(*v29 + 200))(v30);
          }
        }

        v31 = *(sub_1E4200BC4() + OBJC_IVAR____TtC8VideosUIP33_22AE03CB8E5DD9771BF6CABAA0471CD921InternalDocumentRoute_route);

        OUTLINED_FUNCTION_13();
        v33 = (*(v32 + 296))();
        (*(*v31 + 400))(v33);

        OUTLINED_FUNCTION_13();
        if ((*(v34 + 344))())
        {
          sub_1E3C69720();
        }
      }
    }
  }

  else
  {

    sub_1E39050C0(v3, v4, v5, v6);
  }

  return result;
}

uint64_t sub_1E40E0820(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_2();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t objectdestroyTm_64()
{

  if (*(v0 + 176))
  {
  }

  if (*(v0 + 192))
  {
  }

  if (*(v0 + 216))
  {
  }

  sub_1E3264CE0(*(v0 + 264), *(v0 + 272));

  OUTLINED_FUNCTION_27_100();

  return swift_deallocObject();
}

void sub_1E40E0950(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    sub_1E40E0D8C(319, &qword_1ECF3FC20, &qword_1ECF3FC28, qword_1E42EBE20, MEMORY[0x1E697DCC0]);
    if (v2 <= 0x3F)
    {
      sub_1E40E0D8C(319, &qword_1ECF3FC30, &qword_1ECF2AD70, &qword_1E429F170, MEMORY[0x1E6981790]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

_DWORD *sub_1E40E0A48(_DWORD *result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (v5 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
  }

  else
  {
    v7 = *(*(v4 - 8) + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
LABEL_26:
    if (v5 >= 0x7FFFFFFE)
    {
      return __swift_getEnumTagSinglePayload(result, v5, v4);
    }

    v17 = *(((((result + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 41) & 0xFFFFFFFFFFFFFFF8) + 24);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    v16 = v17 - 1;
    if (v16 < 0)
    {
      v16 = -1;
    }
  }

  else
  {
    v8 = ((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 41) & 0xFFFFFFFFFFFFFFF8) + 32;
    v9 = a2 - v7;
    v10 = v8 & 0xFFFFFFF8;
    if ((v8 & 0xFFFFFFF8) != 0)
    {
      v11 = 2;
    }

    else
    {
      v11 = v9 + 1;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    switch(v13)
    {
      case 1:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

LABEL_22:
        v15 = v14 - 1;
        if (v10)
        {
          v15 = 0;
          LODWORD(v10) = *result;
        }

        v16 = v7 + (v10 | v15);
        break;
      default:
        goto LABEL_26;
    }
  }

  return (v16 + 1);
}

void sub_1E40E0B9C(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  if (v7 <= 0x7FFFFFFE)
  {
    v8 = 2147483646;
  }

  else
  {
    v8 = *(*(v6 - 8) + 84);
  }

  v9 = *(*(v6 - 8) + 64);
  v10 = ((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 41) & 0xFFFFFFFFFFFFFFF8) + 32;
  if (v8 >= a3)
  {
    v14 = 0;
  }

  else
  {
    v11 = a3 - v8;
    if (((((v9 + 7) & 0xFFFFFFF8) + 41) & 0xFFFFFFF8) == 0xFFFFFFE0)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }
  }

  if (a2 <= v8)
  {
    switch(v14)
    {
      case 1:
        *(a1 + v10) = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 2:
        *(a1 + v10) = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 3:
LABEL_42:
        __break(1u);
        break;
      case 4:
        *(a1 + v10) = 0;
        goto LABEL_31;
      default:
LABEL_31:
        if (a2)
        {
LABEL_32:
          if (v7 < 0x7FFFFFFE)
          {
            v19 = ((((a1 + v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 41) & 0xFFFFFFFFFFFFFFF8);
            if (a2 > 0x7FFFFFFE)
            {
              v19[2] = 0;
              v19[3] = 0;
              *v19 = (a2 - 0x7FFFFFFF);
              v19[1] = 0;
            }

            else
            {
              v19[3] = a2;
            }
          }

          else
          {

            __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
          }
        }

        break;
    }
  }

  else
  {
    if (((((v9 + 7) & 0xFFFFFFF8) + 41) & 0xFFFFFFF8) == 0xFFFFFFE0)
    {
      v15 = a2 - v8;
    }

    else
    {
      v15 = 1;
    }

    if (((((v9 + 7) & 0xFFFFFFF8) + 41) & 0xFFFFFFF8) != 0xFFFFFFE0)
    {
      v16 = ~v8 + a2;
      v17 = OUTLINED_FUNCTION_32_0();
      bzero(v17, v18);
      *a1 = v16;
    }

    switch(v14)
    {
      case 1:
        *(a1 + v10) = v15;
        break;
      case 2:
        *(a1 + v10) = v15;
        break;
      case 3:
        goto LABEL_42;
      case 4:
        *(a1 + v10) = v15;
        break;
      default:
        return;
    }
  }
}

void sub_1E40E0D8C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

double sub_1E40E0E34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6)
  {
  }

  return result;
}

void sub_1E40E0E74(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = type metadata accessor for ContentFittingNavigationStack(0, *(v6 + 16), *(v6 + 24), a6);
  if (sub_1E3AC5C30(a1, a2) > 0.0)
  {
    OUTLINED_FUNCTION_45_71();
    v13 = *v10;
    v14 = v11;
    v15 = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F128, &qword_1E42E84F0);
    sub_1E4203904();
    sub_1E40DE0E0(v9, &v13);
    OUTLINED_FUNCTION_45_71();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F128, &qword_1E42E84F0);
    sub_1E42038F4();
    v16 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3FC28, qword_1E42EBE20);
    sub_1E4203AA4();
    sub_1E37DFBC0(&v16);
  }
}

id sub_1E40E1060()
{
  v2 = OBJC_IVAR____TtC8VideosUI16SearchBarPalette____lazy_storage___categoryFilterBar;
  v3 = *(v1 + OBJC_IVAR____TtC8VideosUI16SearchBarPalette____lazy_storage___categoryFilterBar);
  if (v3)
  {
    v4 = *(v1 + OBJC_IVAR____TtC8VideosUI16SearchBarPalette____lazy_storage___categoryFilterBar);
  }

  else
  {
    OUTLINED_FUNCTION_156_0();
    type metadata accessor for CategoryFilterBar();
    v5 = _s8VideosUI26MetricsRecorderFactoryObjCCACycfC_0();
    v6 = objc_opt_self();
    v7 = v5;
    v8 = [v6 clearColor];
    [v7 setBackgroundColor_];

    [v7 setAlpha_];
    v9 = *(v0 + v2);
    *(v0 + v2) = v7;
    v4 = v7;

    v3 = 0;
  }

  v10 = v3;
  return v4;
}

id sub_1E40E1134()
{
  v2 = OBJC_IVAR____TtC8VideosUI16SearchBarPalette____lazy_storage___queryDescriptionBar;
  v3 = *(v1 + OBJC_IVAR____TtC8VideosUI16SearchBarPalette____lazy_storage___queryDescriptionBar);
  if (v3)
  {
    v4 = *(v1 + OBJC_IVAR____TtC8VideosUI16SearchBarPalette____lazy_storage___queryDescriptionBar);
  }

  else
  {
    OUTLINED_FUNCTION_156_0();
    type metadata accessor for QueryDescriptionBar();
    v5 = _s8VideosUI26MetricsRecorderFactoryObjCCACycfC_0();
    v6 = *(v0 + v2);
    *(v0 + v2) = v5;
    v4 = v5;

    v3 = 0;
  }

  v7 = v3;
  return v4;
}

id sub_1E40E11A0()
{
  OUTLINED_FUNCTION_0_8();
  swift_getObjectType();
  OUTLINED_FUNCTION_6_232(&OBJC_IVAR____TtC8VideosUI16SearchBarPalette____lazy_storage___categoryFilterBar);
  *(v0 + OBJC_IVAR____TtC8VideosUI16SearchBarPalette_descriptionBannerAllowed) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI16SearchBarPalette_categoryBarAllowed) = 0;
  *(v0 + *v1) = 0;
  *(v0 + v1[1]) = 0;
  v9 = v2;
  v3 = OUTLINED_FUNCTION_2_0();
  v6 = objc_msgSendSuper2(v4, v5, v3, v0, v9);
  v7 = sub_1E40E1060();
  [v6 addSubview_];

  return v6;
}

void sub_1E40E1284()
{
  OUTLINED_FUNCTION_6_232(&OBJC_IVAR____TtC8VideosUI16SearchBarPalette____lazy_storage___categoryFilterBar);
  *(v0 + OBJC_IVAR____TtC8VideosUI16SearchBarPalette_descriptionBannerAllowed) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI16SearchBarPalette_categoryBarAllowed) = 0;
  *(v0 + *v1) = 0;
  *(v0 + v1[1]) = 0;
  sub_1E42076B4();
  __break(1u);
}

double sub_1E40E1334()
{
  swift_getObjectType();
  v1 = OUTLINED_FUNCTION_6_12();
  objc_msgSendSuper2(v2, v3, v1);
  v5 = v4;
  if (sub_1E40E1410())
  {
    v7 = sub_1E40E1134();
    v8 = OUTLINED_FUNCTION_6_12();
    [v9 v10];
  }

  v11 = OBJC_IVAR____TtC8VideosUI16SearchBarPalette_categoryBarAllowed;
  OUTLINED_FUNCTION_15_0(v0 + OBJC_IVAR____TtC8VideosUI16SearchBarPalette_categoryBarAllowed, v6);
  if (*(v0 + v11) == 1)
  {
    v12 = sub_1E40E1060();
    v13 = OUTLINED_FUNCTION_6_12();
    [v14 v15];
  }

  return v5;
}

uint64_t sub_1E40E1410()
{
  v1 = v0;
  result = [objc_opt_self() isSearchEnabled];
  if (result)
  {
    v3 = sub_1E40E1134();
    OUTLINED_FUNCTION_64();
    v5 = (*(v4 + 392))();

    if (v5)
    {
      result = [*(v1 + OBJC_IVAR____TtC8VideosUI16SearchBarPalette____lazy_storage___queryDescriptionBar) superview];
      if (result)
      {

        return 1;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void sub_1E40E1528()
{
  v1.receiver = v0;
  v1.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v1, sel_layoutSubviews);
  sub_1E40E1564();
}

void sub_1E40E1564()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC8VideosUI16SearchBarPalette_categoryBarAllowed;
  OUTLINED_FUNCTION_5_0(&v1[OBJC_IVAR____TtC8VideosUI16SearchBarPalette_categoryBarAllowed], v27);
  if ((v1[v2] & 1) != 0 || (v4 = OBJC_IVAR____TtC8VideosUI16SearchBarPalette_descriptionBannerAllowed, OUTLINED_FUNCTION_15_0(&v1[OBJC_IVAR____TtC8VideosUI16SearchBarPalette_descriptionBannerAllowed], v3), v1[v4] == 1))
  {
    [v1 bounds];
    MinY = CGRectGetMinY(v29);
    if (sub_1E40E1410())
    {
      v6 = sub_1E40E1134();
      v7 = OBJC_IVAR____TtC8VideosUI16SearchBarPalette____lazy_storage___queryDescriptionBar;
      v8 = *&v1[OBJC_IVAR____TtC8VideosUI16SearchBarPalette____lazy_storage___queryDescriptionBar];
      [v1 bounds];
      [v8 sizeThatFits_];
      v12 = v11;
      v14 = v13;

      [v6 setFrame_];
      [*&v1[v7] frame];
      MinY = MinY + CGRectGetHeight(v30) + 5.0;
      [v1 bringSubviewToFront_];
    }

    v15 = OBJC_IVAR____TtC8VideosUI16SearchBarPalette_categoryBarAllowed;
    OUTLINED_FUNCTION_5_0(&v1[OBJC_IVAR____TtC8VideosUI16SearchBarPalette_categoryBarAllowed], v28);
    if (v1[v15] == 1)
    {
      v16 = sub_1E40E1060();
      [v1 bounds];
      [v16 sizeThatFits_];
      v20 = v19;
      v22 = v21;

      v23 = OBJC_IVAR____TtC8VideosUI16SearchBarPalette____lazy_storage___categoryFilterBar;
      [*&v1[OBJC_IVAR____TtC8VideosUI16SearchBarPalette____lazy_storage___categoryFilterBar] setFrame_];
      [*&v1[v23] frame];
      CGRectGetHeight(v31);
    }
  }

  else
  {
    if (sub_1E40E1410())
    {
      v24 = sub_1E40E1134();
      OUTLINED_FUNCTION_64();
      (*(v25 + 376))();
    }

    v26 = sub_1E40E1134();
    [v26 removeFromSuperview];
  }
}

void sub_1E40E1804(char a1, char a2)
{
  v3 = v2;
  v6 = OBJC_IVAR____TtC8VideosUI16SearchBarPalette_descriptionBannerAllowed;
  swift_beginAccess();
  v3[v6] = a1;
  v7 = OBJC_IVAR____TtC8VideosUI16SearchBarPalette_categoryBarAllowed;
  swift_beginAccess();
  v3[v7] = a2;
  v8 = sub_1E40E1134();
  v9 = v8;
  if (a1)
  {
    [v3 addSubview_];
  }

  else
  {
    [v8 removeFromSuperview];
  }

  sub_1E40E1564();
  v10 = sub_1E40E1060();
  v11 = v10;
  v12 = 0.0;
  if (a2)
  {
    v12 = 1.0;
  }

  [v10 setAlpha_];

  v13 = OBJC_IVAR____TtC8VideosUI16SearchBarPalette____lazy_storage___categoryFilterBar;
  v14 = *&v3[OBJC_IVAR____TtC8VideosUI16SearchBarPalette____lazy_storage___categoryFilterBar];
  v15 = MEMORY[0x1E69E7D40];
  v16 = *((*MEMORY[0x1E69E7D40] & *v14) + 0x90);
  v17 = v14;
  v18 = v16();

  v19 = *(v18 + 16);

  if (v19)
  {
    v20 = *&v3[v13];
    v21 = j__OUTLINED_FUNCTION_18();
    (*((*v15 & *v20) + 0x158))(0, 0, v21 & 1);
  }
}

uint64_t sub_1E40E19FC(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_14_0(v2 + 16, a2);
  *(v2 + 24) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1E40E1A50(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v3[5] = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v5 = *(v1 + 24);
  v3[3] = Strong;
  v3[4] = v5;
  return sub_1E3A5E46C;
}

id sub_1E40E1AD0()
{
  v1 = *(v0 + 48);
  if (v1)
  {
    v2 = *(v0 + 48);
  }

  else
  {
    v3 = v0;
    type metadata accessor for SearchBarPalette();
    v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v5 = sub_1E40E1134();
    OUTLINED_FUNCTION_64();
    v7 = *(v6 + 176);
    v8 = swift_unknownObjectRetain();
    v7(v8, &off_1F5D978C0);

    v9 = *(v3 + 48);
    *(v3 + 48) = v4;
    v2 = v4;

    v1 = 0;
  }

  v10 = v1;
  return v2;
}

void sub_1E40E1B9C(uint64_t a1)
{
  v2 = *(v1 + 48);
  *(v1 + 48) = a1;
}

uint64_t sub_1E40E1BD8(uint64_t (*a1)(void))
{
  OUTLINED_FUNCTION_8();
  v3 = (*(v2 + 184))();
  v4 = a1();

  return v4;
}

void sub_1E40E1C30(char a1, char a2, void *a3)
{
  v4 = v3;
  OUTLINED_FUNCTION_8();
  v9 = *(v8 + 184);
  v10 = v9();
  sub_1E40E1804(a1, a2);

  v11 = v9();
  v12 = v11;
  if (a1 & 1) != 0 || (a2)
  {
    v16 = OUTLINED_FUNCTION_15_172();
    if (!v16)
    {
      v17 = [objc_allocWithZone(VUIBaseView) init];
      v16 = [objc_allocWithZone(MEMORY[0x1E69DD5E0]) initWithContentView_];

      [a3 _setBottomPalette_];
    }

    [v12 setAutoresizingMask_];
    v18 = OUTLINED_FUNCTION_15_172();
    if (v18)
    {
      v19 = v18;
      [v18 _setDisplaysWhenSearchActive_];

      v20 = OUTLINED_FUNCTION_15_172();
      if (v20)
      {
        v21 = v20;
        v22 = [v20 contentView];

        [v22 addSubview_];
        v15 = v12;
        v12 = v22;
        goto LABEL_11;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_17:
    __break(1u);
    return;
  }

  [v11 removeFromSuperview];
  v13 = OUTLINED_FUNCTION_15_172();
  if (v13)
  {

    v14 = OUTLINED_FUNCTION_15_172();
    if (v14)
    {
      v15 = v14;
      [v14 setPreferredHeight_];
LABEL_11:

      goto LABEL_12;
    }

    goto LABEL_17;
  }

LABEL_12:

  v23 = OUTLINED_FUNCTION_15_172();
  v24 = *(v4 + 40);
  *(v4 + 40) = v23;

  OUTLINED_FUNCTION_111();
  (*(v25 + 240))();

  sub_1E40E1E6C();
}

double sub_1E40E1E6C()
{
  v1 = v0;
  OUTLINED_FUNCTION_8();
  v3 = *(v2 + 184);
  v4 = v3();
  v5 = OBJC_IVAR____TtC8VideosUI16SearchBarPalette_categoryBarAllowed;
  OUTLINED_FUNCTION_5_0(&v4[OBJC_IVAR____TtC8VideosUI16SearchBarPalette_categoryBarAllowed], v47);
  LODWORD(v5) = v4[v5];

  if (v5 == 1)
  {
    v6 = v3();
    v7 = OBJC_IVAR____TtC8VideosUI16SearchBarPalette_descriptionBannerAllowed;
    OUTLINED_FUNCTION_5_0(&v6[OBJC_IVAR____TtC8VideosUI16SearchBarPalette_descriptionBannerAllowed], &v46);
    LODWORD(v7) = v6[v7];

    v8 = v7 ^ 1;
  }

  else
  {
    v8 = 1;
  }

  v9 = [objc_opt_self() current];
  v10 = [v9 preferredContentSizeCategory];

  sub_1E4205F14();
  OUTLINED_FUNCTION_7_242();
  OUTLINED_FUNCTION_18_139();
  v13 = v13 && v9 == v12;
  if (v13)
  {
    goto LABEL_25;
  }

  v14 = OUTLINED_FUNCTION_0_343(v11);

  if ((v14 & 1) == 0)
  {
    sub_1E4205F14();
    OUTLINED_FUNCTION_7_242();
    OUTLINED_FUNCTION_18_139();
    if (!v13 || v9 != v17)
    {
      v19 = OUTLINED_FUNCTION_0_343(v16);

      if (v19)
      {
        goto LABEL_9;
      }

      sub_1E4205F14();
      OUTLINED_FUNCTION_7_242();
      OUTLINED_FUNCTION_18_139();
      if (!v13 || v9 != v21)
      {
        v23 = OUTLINED_FUNCTION_0_343(v20);

        if (v23)
        {
          goto LABEL_9;
        }

        sub_1E4205F14();
        OUTLINED_FUNCTION_7_242();
        OUTLINED_FUNCTION_18_139();
        if (!v13 || v9 != v25)
        {
          v15 = OUTLINED_FUNCTION_0_343(v24);
LABEL_26:

          goto LABEL_27;
        }
      }
    }

LABEL_25:
    v15 = 1;
    goto LABEL_26;
  }

LABEL_9:
  v15 = 1;
LABEL_27:
  OUTLINED_FUNCTION_111();
  v28 = (*(v27 + 208))();
  OUTLINED_FUNCTION_64();
  v30 = (*(v29 + 144))();

  v37 = !v30 || (OUTLINED_FUNCTION_8(), v32 = (*(v31 + 1736))(), v33 = , v34 = (*(*v32 + 2048))(v33), v36 = v35, , (v36 & 1) != 0) || v34 != 0;
  v38 = sub_1E39DFFC8();

  if (v15 & ~(v8 | ~v38 | v37))
  {
    OUTLINED_FUNCTION_111();
    v40 = *(v39 + 216);
    v42 = v41;
    v43 = v40();
    type metadata accessor for SearchPaletteScrollHandler();
    v44 = swift_allocObject();
    *(v44 + 16) = 0;
    *(v44 + 24) = 0;
    *(v44 + 32) = 1;
    *(v44 + 40) = 0u;
    *(v44 + 56) = 0u;
    *(v44 + 72) = 1;
    *(v44 + 80) = 0u;
    *(v44 + 96) = 0u;
    *(v44 + 112) = 1;
    swift_unknownObjectWeakInit();
    swift_unknownObjectWeakInit();
    swift_unknownObjectWeakAssign();

    swift_unknownObjectWeakAssign();
  }

  else
  {
    v44 = 0;
  }

  *(v1 + 32) = v44;

  return result;
}

double sub_1E40E223C(void *a1)
{
  if (*(v1 + 32))
  {

    [a1 contentOffset];
    sub_1E40E27B0(v3, v4);
  }

  return result;
}

void sub_1E40E22A0()
{
  if (*(v0 + 40))
  {
    OUTLINED_FUNCTION_8();
    v2 = *(v1 + 184);
    v4 = v3;
    v5 = v2();
    v15 = v4;
    [v15 bounds];
    CGRectGetWidth(v17);
    v6 = sub_1E40E1334();
    v8 = v7;

    v9 = [v15 bounds];
    v11 = v10;
    v13 = v12;
    v14 = (v2)(v9);
    [v14 setFrame_];

    [v15 frame];
    [v15 setFrame_];

    [v15 setPreferredHeight_];
    [v15 setNeedsLayout];
  }
}

uint64_t sub_1E40E2410()
{
  sub_1E32AF6F8(v0 + 16);

  return v0;
}

uint64_t sub_1E40E2448()
{
  sub_1E40E2410();

  return MEMORY[0x1EEE6BDC0](v0, 56, 7);
}

uint64_t sub_1E40E247C()
{
  v0 = swift_allocObject();
  sub_1E40E24B4();
  return v0;
}

void *sub_1E40E24B4()
{
  v0[3] = 0;
  swift_unknownObjectWeakInit();
  v0[4] = 0;
  v0[5] = 0;
  v0[6] = 0;
  return v0;
}

double sub_1E40E24E4()
{
  OUTLINED_FUNCTION_156_0();
  v0 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v6 = v5 - v4;
  sub_1E324FBDC();
  v7 = OUTLINED_FUNCTION_4_36();
  v8(v7);
  v9 = sub_1E41FFC94();
  v10 = sub_1E4206814();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    OUTLINED_FUNCTION_24_2(&dword_1E323F000, v12, v13, "SearchBarController: queryDescriptionBarAccessibilityChanged: ");
    MEMORY[0x1E69143B0](v11, -1, -1);
  }

  (*(v2 + 8))(v6, v0);
  OUTLINED_FUNCTION_111();
  (*(v14 + 240))();
  return sub_1E40E1E6C();
}

uint64_t sub_1E40E2630()
{
  OUTLINED_FUNCTION_156_0();
  v0 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v6 = v5 - v4;
  sub_1E324FBDC();
  v7 = OUTLINED_FUNCTION_4_36();
  v8(v7);
  v9 = sub_1E41FFC94();
  v10 = sub_1E4206814();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    OUTLINED_FUNCTION_24_2(&dword_1E323F000, v12, v13, "SearchBarController: queryDescriptionBarWasTapped");
    MEMORY[0x1E69143B0](v11, -1, -1);
  }

  (*(v2 + 8))(v6, v0);
  OUTLINED_FUNCTION_111();
  result = (*(v14 + 112))();
  if (result)
  {
    v17 = v16;
    ObjectType = swift_getObjectType();
    (*(v17 + 8))(ObjectType, v17);
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1E40E27B0(double a1, double a2)
{
  v5 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  v11 = v10 - v9;
  if (*(v2 + 32) == 1)
  {
    *(v2 + 16) = a1;
    *(v2 + 24) = a2;
    *(v2 + 32) = 0;
    Strong = swift_unknownObjectWeakLoadStrong();
    v13 = Strong;
    v14 = 0uLL;
    v45 = 0u;
    v15 = 0uLL;
    if (Strong)
    {
      [Strong frame];
      v38 = v16;
      v40 = v17;
      v37 = v18;
      v42 = v19;

      *&v15 = v37;
      *&v14 = v38;
      *(&v14 + 1) = v40;
      *(&v15 + 1) = v42;
    }

    *(v2 + 40) = v14;
    *(v2 + 56) = v15;
    *(v2 + 72) = v13 == 0;
    v20 = swift_unknownObjectWeakLoadStrong();
    v21 = v20;
    v22 = 0uLL;
    if (v20)
    {
      [v20 frame];
      v39 = v24;
      v41 = v23;
      v43 = v26;
      v46 = v25;

      *&v22 = v39;
      *&v27 = v46;
      *(&v27 + 1) = v41;
      v45 = v27;
      *(&v22 + 1) = v43;
    }

    *(v2 + 80) = v45;
    *(v2 + 96) = v22;
    *(v2 + 112) = v21 == 0;
    if (*(v2 + 32))
    {
      goto LABEL_11;
    }
  }

  if ((*(v2 + 72) & 1) != 0 || (v28 = swift_unknownObjectWeakLoadStrong()) == 0)
  {
LABEL_11:
    v30 = sub_1E324FBDC();
    (*(v7 + 16))(v11, v30, v5);
    v31 = sub_1E41FFC94();
    v32 = sub_1E42067F4();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_1E323F000, v31, v32, "Invalid state for SearchPaletteScrollHandler. Missing required properties", v33, 2u);
      MEMORY[0x1E69143B0](v33, -1, -1);
    }

    (*(v7 + 8))(v11, v5);
  }

  else
  {
    v29 = v28;
    OUTLINED_FUNCTION_1_303();
    if ((*(v2 + 112) & 1) == 0)
    {
      v34 = *(v2 + 96);
      v44 = *(v2 + 104);
      v36 = *(v2 + 80);
      v35 = *(v2 + 88);
      OUTLINED_FUNCTION_1_303();
      v49.origin.x = v36;
      v49.origin.y = v35;
      v49.size.width = v34;
      v49.size.height = v44;
      CGRectGetMinY(v49);
      OUTLINED_FUNCTION_1_303();
    }

    OUTLINED_FUNCTION_1_303();
    v47 = v29;
    [v47 frame];
    [v47 setFrame_];
  }
}

uint64_t sub_1E40E2AF0()
{
  MEMORY[0x1E69144A0](v0 + 120);
  MEMORY[0x1E69144A0](v0 + 128);

  return MEMORY[0x1EEE6BDC0](v0, 136, 7);
}

void *sub_1E40E2B9C@<X0>(uint64_t a1@<X0>, const void *a2@<X1>, void *a3@<X8>)
{
  v6 = *(*a1 + 392);

  v7 = v6();

  if (!v7)
  {
    goto LABEL_4;
  }

  type metadata accessor for ShowcaseLockupViewLayout();
  v8 = swift_dynamicCastClass();
  if (!v8)
  {

LABEL_4:
    type metadata accessor for ShowcaseLockupViewLayout();
    v8 = sub_1E3C8FBFC();
  }

  *a3 = a1;
  result = memcpy(a3 + 1, a2, 0xC3uLL);
  a3[26] = v8;
  return result;
}

double sub_1E40E2C68@<D0>(uint64_t a1@<X8>)
{
  v19 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3FC50, &qword_1E42EBF70);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v18 - v3;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3FC58, &qword_1E42EBF78);
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v18 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3FC60, &qword_1E42EBF80);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v18 - v12;
  sub_1E40E2E80(v4);
  sub_1E40E4344(&qword_1ECF3FC68, &qword_1ECF3FC50, &qword_1E42EBF70, sub_1E40E30D8);
  sub_1E4203594();
  sub_1E325F69C(v4, &qword_1ECF3FC50);
  if (*(*v1 + 24))
  {
    v14 = *(*v1 + 16);
    v15 = *(*v1 + 24);
  }

  else
  {
    v14 = 0;
    v15 = 0xE000000000000000;
  }

  (*(v6 + 32))(v13, v9, v18);
  v16 = &v13[*(v10 + 52)];
  *v16 = v14;
  *(v16 + 1) = v15;
  sub_1E379E528(v13, v19, &qword_1ECF3FC60, &qword_1E42EBF80);

  return result;
}

double sub_1E40E2E80@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3FC78, &unk_1E42EBF88);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = (&v23[-1] - v7);
  if (*(**v1 + 392))(v6) && (OUTLINED_FUNCTION_30(), v10 = (*(v9 + 1560))(), , (sub_1E3A24FDC(v10)))
  {
    (*(*v1[26] + 1824))();
    OUTLINED_FUNCTION_30();
    (*(v11 + 176))(v23);

    if (v24)
    {
      v12 = 0;
    }

    else
    {
      v12 = v23[1];
    }

    *&v25 = sub_1E4201B84();
    *(&v25 + 1) = v12;
    LOBYTE(v26) = 0;
    sub_1E37E658C(v25, v13, v14);
  }

  else
  {
    v15 = sub_1E4201D44();
    v25 = v15;
    LOBYTE(v26) = 1;
    sub_1E37E65E0(v15, v16, v17);
  }

  *v8 = sub_1E4203E84();
  v18 = *(v4 + 44);

  sub_1E40E31D4(v2, v8 + v18);
  sub_1E4203DA4();
  sub_1E4200D94();

  sub_1E379E528(v8, a1, &qword_1ECF3FC78, &unk_1E42EBF88);
  v19 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3FC50, &qword_1E42EBF70) + 36));
  v20 = v26;
  *v19 = v25;
  v19[1] = v20;
  result = *&v27;
  v19[2] = v27;
  return result;
}

unint64_t sub_1E40E30D8()
{
  result = qword_1ECF3FC70;
  if (!qword_1ECF3FC70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3FC78, &unk_1E42EBF88);
    sub_1E374AD40(&qword_1EE289DD0, &qword_1ECF2AAA0, &qword_1E429EAE0, MEMORY[0x1E697DDD0]);
    sub_1E374AD40(&qword_1ECF3FC80, &unk_1ECF3FC88, &unk_1E42EBF98, MEMORY[0x1E6981F48]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3FC70);
  }

  return result;
}

uint64_t sub_1E40E31D4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3FCE0, &unk_1E42EC0F8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  OUTLINED_FUNCTION_2_5();
  v50 = v4;
  MEMORY[0x1EEE9AC00](v5);
  v49 = &v44[-v6];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29938, &unk_1E429C3F0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  OUTLINED_FUNCTION_2_5();
  v48 = v8;
  MEMORY[0x1EEE9AC00](v9);
  v47 = &v44[-v10];
  memcpy(v52, a1 + 1, 0xC3uLL);
  v46 = v52[6];
  v45 = LOBYTE(v52[7]);
  v11 = (a1 + 145);
  v12 = *a1;
  if (LOBYTE(v52[14]))
  {
    v13 = 0.0;
  }

  else
  {
    v13 = *&v52[12];
  }

  v14 = *(*v12 + 392);
  v15 = sub_1E375C1CC(v52, v61);
  if (v14(v15) && (OUTLINED_FUNCTION_30(), v17 = (*(v16 + 1560))(), , (sub_1E3A24FDC(v17) & 1) != 0))
  {
    v18 = v13 * 0.45;
    v19 = v18 * 0.56;
  }

  else
  {
    v18 = v13 * 0.5;
    v19 = v18 / 1.27;
  }

  v69 = 0;
  v20 = j__OUTLINED_FUNCTION_51_1();
  v21 = j__OUTLINED_FUNCTION_18();
  v22 = j__OUTLINED_FUNCTION_18();
  sub_1E3EB9C0C(*&v18, *&v19, 0, 0, 0, 1, v20 & 1, 2, &v70, 0, 1, 0, 1, 0, 2, v21 & 1, v22 & 1);
  v61[0] = 0;
  v23 = *(a1 + 3);
  v54[0] = *(a1 + 1);
  v54[1] = v23;
  v54[2] = *(a1 + 5);
  v55 = v46;
  v56 = v45;
  v57 = *(a1 + 65);
  v58 = *(a1 + 81);
  v59 = *(a1 + 97);
  sub_1E375C31C(v54);
  v60[0] = v70;
  v60[1] = v71;
  v60[2] = v72;
  *(&v60[3] + 9) = v73;
  *(&v60[4] + 9) = v74;
  *(&v60[5] + 11) = *(a1 + 99);
  *(&v60[6] + 8) = *(a1 + 7);
  v24 = *(a1 + 161);
  *(&v60[8] + 9) = *v11;
  v25 = *v11;
  v26 = *(a1 + 161);
  *(&v60[9] + 9) = v24;
  *(&v60[10] + 9) = *(a1 + 177);
  *(&v60[11] + 3) = *(a1 + 187);
  *v61 = v70;
  *&v61[16] = v71;
  *&v61[32] = v72;
  *&v61[73] = v74;
  *&v61[57] = v73;
  *&v62[13] = *(a1 + 7);
  *v62 = *(a1 + 99);
  *&v60[3] = v18;
  BYTE8(v60[3]) = 0;
  *(&v60[5] + 9) = v75;
  *(&v60[7] + 1) = v18;
  *&v60[8] = v19;
  BYTE8(v60[8]) = v69;
  *&v61[48] = v18;
  v61[56] = 0;
  *&v61[89] = v75;
  v63 = v18;
  v64 = v19;
  v65 = v69;
  v27 = *(a1 + 177);
  *&v68[10] = *(a1 + 187);
  *v68 = v27;
  v67 = v26;
  v66 = v25;
  sub_1E375C1CC(v60, v53);
  sub_1E37E6F2C(v61);
  v28 = memcpy(v53, v60, 0xC3uLL);
  v29 = (*(*v12 + 488))(v28);
  if (!v29)
  {
    sub_1E37E6F2C(v53);
    v36 = 1;
    v32 = v47;
    goto LABEL_16;
  }

  v31 = sub_1E373E010(39, v29, v30);

  v32 = v47;
  if (!v31)
  {
    sub_1E37E6F2C(v53);
LABEL_15:
    v36 = 1;
    goto LABEL_16;
  }

  type metadata accessor for ImageViewModel();
  v33 = swift_dynamicCastClass();
  if (!v33)
  {
    sub_1E37E6F2C(v53);

    goto LABEL_15;
  }

  v34 = v33;
  memcpy(v61, v53, sizeof(v61));

  v35 = OUTLINED_FUNCTION_18();
  sub_1E37E8BE8(v34, v61, 0, v35 & 1, 0, 0, v32);
  sub_1E37E6F2C(v53);

  v36 = 0;
LABEL_16:
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29238, &unk_1E42999B0);
  __swift_storeEnumTagSinglePayload(v32, v36, 1, v37);
  v38 = v49;
  sub_1E40E37C4(v49);
  v39 = v48;
  sub_1E32D7CE4(v32, v48);
  v40 = v50;
  sub_1E40E44D4(v38, v50);
  v41 = v51;
  sub_1E32D7CE4(v39, v51);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3FCE8, &qword_1E42EC108);
  sub_1E40E44D4(v40, v41 + *(v42 + 48));
  sub_1E325F69C(v38, &qword_1ECF3FCE0);
  sub_1E325F69C(v32, &qword_1ECF29938);
  sub_1E325F69C(v40, &qword_1ECF3FCE0);
  return sub_1E325F69C(v39, &qword_1ECF29938);
}

uint64_t sub_1E40E37C4@<X0>(uint64_t a1@<X8>)
{
  v40 = a1;
  v2 = type metadata accessor for StackedTextViews(0);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  v7 = *(**v1 + 488);
  v8 = v7(v3);
  if (!v8)
  {
    goto LABEL_5;
  }

  v10 = sub_1E373E010(23, v8, v9);

  if (v10 && *v10 != _TtC8VideosUI13TextViewModel)
  {

LABEL_5:
    v10 = 0;
  }

  v11 = (v7)(v8);
  if (!v11)
  {
LABEL_10:
    v13 = 0;
    goto LABEL_11;
  }

  v13 = sub_1E373E010(15, v11, v12);

  if (v13 && *v13 != _TtC8VideosUI13TextViewModel)
  {

    goto LABEL_10;
  }

LABEL_11:
  v14 = (v7)(v11);
  v39 = v5;
  if (!v14)
  {
LABEL_15:
    v16 = 0;
    goto LABEL_16;
  }

  v16 = sub_1E373E010(4, v14, v15);

  if (v16 && *v16 != _TtC8VideosUI13TextViewModel)
  {

    goto LABEL_15;
  }

LABEL_16:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D378, &unk_1E42E1610);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1E4297BD0;
  *(v17 + 32) = v10;
  *(v17 + 40) = v13;
  *(v17 + 48) = v16;
  v18 = *(*v1[26] + 1824);

  v18(v19);
  OUTLINED_FUNCTION_30();
  (*(v20 + 176))(v41);

  v22 = v41[0];
  v23 = v42;
  v24 = *(v18)(v21);
  v25 = COERCE_DOUBLE((*(v24 + 304))());
  v27 = v26;

  v28 = sub_1E4201D54();
  v29 = j__OUTLINED_FUNCTION_18();
  v30 = v39;
  sub_1E403E654(v17, v28, v29 & 1, v39);
  v31 = (*(*v6 + 392))();
  v32 = v31;
  if (v31)
  {
    v33 = (*(*v31 + 1560))(v31);

    v32 = sub_1E3A24FDC(v33);
  }

  if (v23)
  {
    v22 = 0.0;
  }

  if (v27)
  {
    v34 = 0.0;
  }

  else
  {
    v34 = v25;
  }

  v35 = v40;
  sub_1E375BD40(v30, v40);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3FCE0, &unk_1E42EC0F8);
  v37 = v35 + *(result + 36);
  *v37 = v32 & 1;
  *(v37 + 8) = v22;
  *(v37 + 16) = v34;
  return result;
}

uint64_t sub_1E40E3C14(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 216))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E40E3C54(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
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
      *(result + 216) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 216) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PadLayoutModifier(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && a1[24])
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *a1;
      v4 = v3 >= 2;
      v2 = (v3 + 2147483646) & 0x7FFFFFFF;
      if (!v4)
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

uint64_t storeEnumTagSinglePayload for PadLayoutModifier(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1E40E3D90@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v59 = a3;
  v7 = sub_1E4202564();
  OUTLINED_FUNCTION_0_10();
  v57 = v8;
  MEMORY[0x1EEE9AC00](v9);
  v11 = v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3FC98, &qword_1E42EC0C8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v13);
  v15 = v56 - v14;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3FCA0, &qword_1E42EC0D0);
  OUTLINED_FUNCTION_0_10();
  v17 = v16;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v18);
  v20 = v56 - v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3FCA8, &qword_1E42EC0D8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v21);
  v23 = v56 - v22;
  if (a2)
  {
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3FCB0, &qword_1E42EC0E0);
    OUTLINED_FUNCTION_2();
    (*(v25 + 16))(v23, a1, v24);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_1_11();
    sub_1E374AD40(v26, &qword_1ECF3FCB0, &qword_1E42EC0E0, v27);
    v28 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3FCC0, &qword_1E42EC0F0);
    v29 = OUTLINED_FUNCTION_6_233(&qword_1ECF3FCC8, &qword_1ECF3FC98, &qword_1E42EC0C8);
    v30 = sub_1E4201734();
    v31 = sub_1E40E447C();
    *&v64 = v30;
    *(&v64 + 1) = v31;
    OUTLINED_FUNCTION_2_264();
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    *&v64 = v12;
    *(&v64 + 1) = v28;
    *&v65 = v29;
    *(&v65 + 1) = OpaqueTypeConformance2;
    OUTLINED_FUNCTION_1_304();
    swift_getOpaqueTypeConformance2();
    return sub_1E4201F44();
  }

  else
  {
    v34 = sub_1E4202744();
    v56[0] = v7;
    v35 = v34;
    sub_1E4200A54();
    v37 = v36;
    v39 = v38;
    v41 = v40;
    v43 = v42;
    v56[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3FCB0, &qword_1E42EC0E0);
    OUTLINED_FUNCTION_2();
    (*(v44 + 16))(v15, a1);
    v45 = &v15[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3FCB8, &qword_1E42EC0E8) + 36)];
    *v45 = v35;
    *(v45 + 1) = v37;
    *(v45 + 2) = v39;
    *(v45 + 3) = v41;
    *(v45 + 4) = v43;
    v45[40] = 0;
    sub_1E4203DA4();
    sub_1E4200D94();
    v46 = &v15[*(v12 + 36)];
    v47 = v65;
    *v46 = v64;
    *(v46 + 1) = v47;
    *(v46 + 2) = v66;
    sub_1E4202554();
    v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3FCC0, &qword_1E42EC0F0);
    v49 = OUTLINED_FUNCTION_6_233(&qword_1ECF3FCC8, &qword_1ECF3FC98, &qword_1E42EC0C8);
    v50 = sub_1E4201734();
    v51 = sub_1E40E447C();
    v60 = v50;
    v61 = v51;
    OUTLINED_FUNCTION_2_264();
    v52 = swift_getOpaqueTypeConformance2();
    sub_1E4203094();
    (*(v57 + 8))(v11, v56[0]);
    sub_1E325F69C(v15, &qword_1ECF3FC98);
    v53 = v58;
    (*(v17 + 16))(v23, v20, v58);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_1_11();
    sub_1E374AD40(v54, &qword_1ECF3FCB0, &qword_1E42EC0E0, v55);
    v60 = v12;
    v61 = v48;
    v62 = v49;
    v63 = v52;
    OUTLINED_FUNCTION_1_304();
    swift_getOpaqueTypeConformance2();
    sub_1E4201F44();
    return (*(v17 + 8))(v20, v53);
  }
}

uint64_t sub_1E40E42C8(uint64_t a1, uint64_t a2)
{
  sub_1E4202094();
  sub_1E4201734();
  sub_1E40E447C();
  return sub_1E4200D84();
}

uint64_t sub_1E40E4344(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    v7 = OUTLINED_FUNCTION_40_2(0, a2);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v7, v8);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E40E43C4()
{
  result = qword_1ECF3FCD0;
  if (!qword_1ECF3FCD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3FCB8, &qword_1E42EC0E8);
    sub_1E374AD40(&qword_1ECF3FCD8, &qword_1ECF3FCB0, &qword_1E42EC0E0, MEMORY[0x1E697FDF8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3FCD0);
  }

  return result;
}

unint64_t sub_1E40E447C()
{
  result = qword_1ECF30FF0;
  if (!qword_1ECF30FF0)
  {
    sub_1E4201734();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF30FF0);
  }

  return result;
}

uint64_t sub_1E40E44D4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3FCE0, &unk_1E42EC0F8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1E40E4544()
{
  result = qword_1ECF3FCF0;
  if (!qword_1ECF3FCF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3FCF8, &unk_1E42EC110);
    sub_1E374AD40(&qword_1ECF3FCD8, &qword_1ECF3FCB0, &qword_1E42EC0E0, MEMORY[0x1E697FDF8]);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3FC98, &qword_1E42EC0C8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3FCC0, &qword_1E42EC0F0);
    sub_1E40E4344(&qword_1ECF3FCC8, &qword_1ECF3FC98, &qword_1E42EC0C8, sub_1E40E43C4);
    sub_1E4201734();
    sub_1E40E447C();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3FCF0);
  }

  return result;
}

uint64_t sub_1E40E46FC()
{
  *(v0 + 120) = 0u;
  *(v0 + 104) = 0u;
  v1 = sub_1E3C2F9A0();

  sub_1E37BD068();
  OUTLINED_FUNCTION_2_1();
  (*(v3 + 1984))(4);
  OUTLINED_FUNCTION_36();
  (*(v4 + 2008))(1);
  OUTLINED_FUNCTION_36();
  (*(v5 + 2056))(1, 0);
  OUTLINED_FUNCTION_36();
  (*(v6 + 2080))(2, 0);
  OUTLINED_FUNCTION_36();
  (*(v7 + 2104))(0, 0);
  OUTLINED_FUNCTION_36();
  (*(v8 + 1696))(15);
  v9 = *sub_1E3E5FD88();
  v10 = *(*v2 + 680);
  v11 = v9;
  v10(v9);
  v35 = 0x4018000000000000;
  v36 = 0;
  v37 = 0;
  v38 = 0;
  v39 = 0;
  (*(*v2 + 160))(&v35);

  sub_1E374EA2C();
  OUTLINED_FUNCTION_2_1();
  (*(v12 + 2056))(1, 0);
  OUTLINED_FUNCTION_36();
  (*(v13 + 2080))(1, 0);
  OUTLINED_FUNCTION_36();
  (*(v14 + 2104))(0, 0);
  OUTLINED_FUNCTION_36();
  (*(v15 + 2128))(0x3FE3333333333333, 0);
  OUTLINED_FUNCTION_36();
  (*(v16 + 1696))(15);
  v17 = *sub_1E3E5FDEC();
  v18 = *(*v1 + 680);
  v19 = v17;
  v18(v17);

  sub_1E37DAE10();
  OUTLINED_FUNCTION_2_1();
  (*(v20 + 512))(0);
  OUTLINED_FUNCTION_36();
  (*(v21 + 1808))(1);
  sub_1E39537A8();
  v35 = v22;
  v36 = v23;
  v37 = v24;
  v38 = v25;
  v39 = 0;
  (*(*v1 + 560))(&v35);
  v26 = *sub_1E3E60A14();
  v27 = *(*v1 + 872);
  v28 = v26;
  v27(v26);
  v29 = *sub_1E418A524();
  (*(*v1 + 440))(v29, 0);
  OUTLINED_FUNCTION_36();
  (*(v30 + 2000))(0);

  sub_1E3C37CBC(v31, 23);

  sub_1E3C37CBC(v32, 15);

  sub_1E3C37CBC(v33, 39);

  return v1;
}

void sub_1E40E4CD4(uint64_t a1@<X8>, double a2@<D0>)
{
  v4 = *(type metadata accessor for ScaledBaselineRelativeSpacer(0) + 24);
  *(a1 + v4) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18, &qword_1E42982F0);
  v5 = swift_storeEnumTagMultiPayload();
  if (!sub_1E3C27528(v5, v6))
  {
    goto LABEL_4;
  }

  type metadata accessor for TextLayout();
  v7 = swift_dynamicCastClass();
  if (!v7)
  {

LABEL_4:
    type metadata accessor for TextLayout();
    v7 = sub_1E383BCC0();
  }

  *a1 = v7;
  *(a1 + 8) = a2;
}

uint64_t type metadata accessor for ScaledBaselineRelativeSpacer(uint64_t a1)
{
  result = qword_1EE293870;
  if (!qword_1EE293870)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E40E4DF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v6 = *(type metadata accessor for ScaledBaselineRelativeSpacer(0) + 24);
  *(a2 + v6) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18, &qword_1E42982F0);
  result = swift_storeEnumTagMultiPayload();
  *a2 = a1;
  *(a2 + 8) = a3;
  return result;
}

uint64_t sub_1E40E4E70@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1E42012F4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v16[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for ScaledBaselineRelativeSpacer(0);
  sub_1E3746E10(v6);
  v7 = sub_1E405F040(*v1, *(v1 + 8));
  result = (*(v4 + 8))(v6, v3);
  if (v7 <= 0.0)
  {
    v10 = 0;
    v11 = 0;
    v15 = 0;
    v14 = 0;
    v13 = 0;
    v12 = 0uLL;
    v9 = 1;
  }

  else
  {
    sub_1E4203DA4();
    result = sub_1E4200D94();
    v9 = 0;
    v10 = v17;
    v11 = v19;
    v12 = v21;
    v16[24] = 1;
    v16[16] = v18;
    v16[8] = v20;
    v13 = 1;
    v14 = v18;
    v15 = v20;
    v16[32] = 0;
  }

  *a1 = 0;
  *(a1 + 8) = v13;
  *(a1 + 16) = v10;
  *(a1 + 24) = v14;
  *(a1 + 32) = v11;
  *(a1 + 40) = v15;
  *(a1 + 48) = v12;
  *(a1 + 64) = v9;
  return result;
}

void sub_1E40E5054(uint64_t a1)
{
  type metadata accessor for TextLayout();
  if (v1 <= 0x3F)
  {
    sub_1E38D5D68(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_1E40E50E0()
{
  result = qword_1EE289A18;
  if (!qword_1EE289A18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3FD00, &unk_1E42EC210);
    sub_1E40E5164();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289A18);
  }

  return result;
}

unint64_t sub_1E40E5164()
{
  result = qword_1EE289A20;
  if (!qword_1EE289A20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF29D08, &unk_1E429C9B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289A20);
  }

  return result;
}

id static VUIUTSChannelsRequestManager.shared()()
{
  if (_MergedGlobals_102 != -1)
  {
    swift_once();
  }

  v1 = qword_1EE28B198;

  return v1;
}

id sub_1E40E526C()
{
  result = [objc_allocWithZone(type metadata accessor for VUIUTSChannelsRequestManager()) init];
  qword_1EE28B198 = result;
  return result;
}

id VUIUTSChannelsRequestManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t variable initialization expression of VUIUTSChannelsRequestManager.response()
{
  v0 = sub_1E4205CB4();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3FD08, &qword_1E42EC220);
  result = OUTLINED_FUNCTION_42_73(v1);
  *(result + 24) = 0;
  *(result + 16) = v0;
  return result;
}

uint64_t sub_1E40E536C(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  result = OUTLINED_FUNCTION_42_73(v4);
  *(result + 24) = 0;
  *(result + 16) = a3;
  return result;
}

uint64_t sub_1E40E539C()
{
  v0 = sub_1E41FFCB4();
  __swift_allocate_value_buffer(v0, qword_1EE28B1A8);
  v1 = OUTLINED_FUNCTION_32_0();
  __swift_project_value_buffer(v1, v2);
  return sub_1E41FFCA4();
}

uint64_t VUIUTSChannelsRequestManager.load()()
{
  OUTLINED_FUNCTION_24();
  v1[2] = v0;
  v2 = sub_1E41FFCB4();
  v1[3] = v2;
  OUTLINED_FUNCTION_8_0(v2);
  v1[4] = v3;
  v1[5] = swift_task_alloc();
  OUTLINED_FUNCTION_169();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1E40E54C8()
{
  OUTLINED_FUNCTION_134();
  v1 = v0[2];
  v2 = OBJC_IVAR____TtC8VideosUI28VUIUTSChannelsRequestManager_loadTask;
  v3 = *(v1 + OBJC_IVAR____TtC8VideosUI28VUIUTSChannelsRequestManager_loadTask);

  os_unfair_lock_lock((v3 + 24));
  v4 = *(v3 + 16);
  v0[6] = v4;

  os_unfair_lock_unlock((v3 + 24));

  if (v4)
  {
    v6 = v0[4];
    v5 = v0[5];
    v7 = v0[3];
    v8 = sub_1E324FBDC();
    (*(v6 + 16))(v5, v8, v7);
    v9 = sub_1E41FFC94();
    v10 = sub_1E4206814();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = OUTLINED_FUNCTION_125_0();
      *v11 = 0;
      _os_log_impl(&dword_1E323F000, v9, v10, "loadTask: Waiting for task to complete", v11, 2u);
      OUTLINED_FUNCTION_6_0();
    }

    v13 = v0[4];
    v12 = v0[5];
    v14 = v0[3];

    (*(v13 + 8))(v12, v14);
    v15 = swift_task_alloc();
    v0[7] = v15;
    *v15 = v0;
    v15[1] = sub_1E40E571C;
    v16 = MEMORY[0x1E69E6370];
    v17 = (v0 + 81);
    v18 = v4;
  }

  else
  {
    v19 = sub_1E40E59B4();
    v0[8] = v19;
    v20 = *(v1 + v2);

    os_unfair_lock_lock((v20 + 24));
    sub_1E40E5A70((v20 + 16));
    os_unfair_lock_unlock((v20 + 24));

    v21 = swift_task_alloc();
    v0[9] = v21;
    *v21 = v0;
    v21[1] = sub_1E40E5868;
    v16 = MEMORY[0x1E69E6370];
    v17 = v0 + 10;
    v18 = v19;
  }

  return MEMORY[0x1EEE6DA40](v17, v18, v16);
}

uint64_t sub_1E40E571C()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_39();
  v1 = *v0;
  OUTLINED_FUNCTION_7();
  *v2 = v1;

  OUTLINED_FUNCTION_169();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1E40E5804()
{
  OUTLINED_FUNCTION_24();

  v0 = OUTLINED_FUNCTION_7_10();

  return v1(v0);
}

uint64_t sub_1E40E5868()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_39();
  v1 = *v0;
  OUTLINED_FUNCTION_7();
  *v2 = v1;

  OUTLINED_FUNCTION_169();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1E40E5950()
{
  OUTLINED_FUNCTION_24();

  v0 = OUTLINED_FUNCTION_7_10();

  return v1(v0);
}

uint64_t sub_1E40E59B4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C400, &qword_1E429ABE0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v2 = sub_1E4206474();
  OUTLINED_FUNCTION_56_3(v2);
  v3 = swift_allocObject();
  v3[2] = 0;
  v3[3] = 0;
  v3[4] = v0;
  v4 = v0;
  v5 = OUTLINED_FUNCTION_38_77();
  return sub_1E390B728(v5, v6, v7, v8, v9);
}

uint64_t sub_1E40E5A70(void *a1)
{

  *a1 = v1;
}

uint64_t sub_1E40E5ACC(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_1E40E5B74;

  return VUIUTSChannelsRequestManager.load()();
}

uint64_t sub_1E40E5B74()
{
  OUTLINED_FUNCTION_134();
  v2 = v0;
  v4 = v3;
  v5 = *v1;
  v6 = *v1;
  OUTLINED_FUNCTION_7();
  *v7 = v6;
  v8 = *(v5 + 16);
  v9 = *v1;
  *v7 = *v1;

  v10 = *(v5 + 24);
  if (v2)
  {
    sub_1E41FE264();

    (*(v10 + 16))(v10, 0, v1);
  }

  else
  {
    (*(v10 + 16))(v10, v4 & 1, 0);
  }

  _Block_release(*(v6 + 24));
  v11 = *(v9 + 8);

  return v11();
}

uint64_t VUIUTSChannelsRequestManager.channel(id:)()
{
  OUTLINED_FUNCTION_27_2();
  v1[8] = v2;
  v1[9] = v0;
  v1[7] = v3;
  OUTLINED_FUNCTION_21();
  v16 = v4 + 184;
  v17 = *(v4 + 184) + **(v4 + 184);
  v5 = swift_task_alloc();
  v1[10] = v5;
  *v5 = v1;
  v13 = OUTLINED_FUNCTION_13_188(v5, v6, v7, v8, v9, v10, v11, v12, v15, v16, v17);

  return v13();
}

uint64_t sub_1E40E5E0C()
{
  OUTLINED_FUNCTION_27_2();
  v3 = v2;
  OUTLINED_FUNCTION_39();
  v5 = v4;
  OUTLINED_FUNCTION_37_2();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_7();
  *v8 = v7;

  if (v0)
  {
    OUTLINED_FUNCTION_20_129();

    return v9();
  }

  else
  {
    *(v5 + 88) = v3 & 1;
    v11 = OUTLINED_FUNCTION_9_195();

    return MEMORY[0x1EEE6DFA0](v11, v12, v13);
  }
}

uint64_t sub_1E40E5F30()
{
  v18 = v0;
  if (*(v0 + 88))
  {
    v1 = *(*(v0 + 72) + OBJC_IVAR____TtC8VideosUI28VUIUTSChannelsRequestManager_response);

    os_unfair_lock_lock((v1 + 24));
    v2 = *(v1 + 16);

    os_unfair_lock_unlock((v1 + 24));

    v3 = OUTLINED_FUNCTION_32_0();
    sub_1E3277E60(v3, v4, v2, v5);

    if (*(v0 + 40))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
      if (swift_dynamicCast())
      {
        sub_1E3744600(*(v0 + 48));
      }
    }

    else
    {
      sub_1E325F748(v0 + 16, &unk_1ECF296E0, &unk_1E4298030);
    }
  }

  else
  {
    if (qword_1EE28B1A0 != -1)
    {
      OUTLINED_FUNCTION_0_344(&qword_1EE28B1A0);
    }

    v6 = sub_1E41FFCB4();
    OUTLINED_FUNCTION_13_25(v6, qword_1EE28B1A8);

    v7 = sub_1E41FFC94();
    sub_1E42067F4();

    if (OUTLINED_FUNCTION_51_53())
    {
      v9 = *(v0 + 56);
      v8 = *(v0 + 64);
      v10 = OUTLINED_FUNCTION_6_21();
      v11 = OUTLINED_FUNCTION_100();
      v17 = v11;
      *v10 = 136315138;
      *(v10 + 4) = sub_1E3270FC8(v9, v8, &v17);
      OUTLINED_FUNCTION_43_67(&dword_1E323F000, v12, v13, "channel(id) failed to load for channel.%s");
      __swift_destroy_boxed_opaque_existential_1(v11);
      OUTLINED_FUNCTION_55();
      OUTLINED_FUNCTION_6_0();
    }
  }

  v14 = OUTLINED_FUNCTION_7_10();

  return v15(v14);
}

uint64_t sub_1E40E615C(uint64_t a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  sub_1E4205F14();
  v3[4] = v5;
  a3;
  v6 = swift_task_alloc();
  v3[5] = v6;
  *v6 = v3;
  v6[1] = sub_1E40E9EC8;

  return VUIUTSChannelsRequestManager.channel(id:)();
}

uint64_t VUIUTSChannelsRequestManager.getChannel(bundleID:)()
{
  OUTLINED_FUNCTION_27_2();
  v1[34] = v2;
  v1[35] = v0;
  v1[33] = v3;
  v4 = sub_1E41FFCB4();
  v1[36] = v4;
  OUTLINED_FUNCTION_8_0(v4);
  v1[37] = v5;
  v1[38] = swift_task_alloc();
  OUTLINED_FUNCTION_21();
  v18 = v6 + 184;
  v19 = *(v6 + 184) + **(v6 + 184);
  v7 = swift_task_alloc();
  v1[39] = v7;
  *v7 = v1;
  v15 = OUTLINED_FUNCTION_13_188(v7, v8, v9, v10, v11, v12, v13, v14, v17, v18, v19);

  return v15();
}

uint64_t sub_1E40E639C()
{
  OUTLINED_FUNCTION_27_2();
  v3 = v2;
  OUTLINED_FUNCTION_39();
  v5 = v4;
  OUTLINED_FUNCTION_37_2();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_7();
  *v8 = v7;

  if (v0)
  {

    OUTLINED_FUNCTION_20_129();

    return v9();
  }

  else
  {
    *(v5 + 320) = v3 & 1;
    v11 = OUTLINED_FUNCTION_9_195();

    return MEMORY[0x1EEE6DFA0](v11, v12, v13);
  }
}

uint64_t sub_1E40E64C8()
{
  if ((*(v1 + 320) & 1) == 0)
  {
    if (qword_1EE28B1A0 != -1)
    {
LABEL_46:
      OUTLINED_FUNCTION_0_344(&qword_1EE28B1A0);
    }

    OUTLINED_FUNCTION_13_25(*(v1 + 288), qword_1EE28B1A8);

    v35 = sub_1E41FFC94();
    sub_1E42067F4();

    if (OUTLINED_FUNCTION_51_53())
    {
      v36 = OUTLINED_FUNCTION_6_21();
      v71 = OUTLINED_FUNCTION_100();
      *(v36 + 4) = OUTLINED_FUNCTION_48_56(4.8149e-34, v71, v37, v38, v39, v40, v41, v42, v43, v67, v68);
      OUTLINED_FUNCTION_43_67(&dword_1E323F000, v44, v45, "getChannel(bundleID) failed to load for bundleID.%s");
      __swift_destroy_boxed_opaque_existential_1(v71);
      OUTLINED_FUNCTION_55();
      OUTLINED_FUNCTION_6_0();
    }

    v49 = sub_1E40E9610(v46, v47, v48);
    v50 = OUTLINED_FUNCTION_206(&type metadata for VUIUTSChannelsRequestError, v49);
    OUTLINED_FUNCTION_27_101(v50, v51);

    OUTLINED_FUNCTION_54();

    return v52();
  }

  v2 = *(v1 + 296);
  OUTLINED_FUNCTION_53_54();
  os_unfair_lock_lock((v0 + 24));
  v3 = *(v0 + 16);

  os_unfair_lock_unlock((v0 + 24));

  v4 = 0;
  v5 = v3 + 64;
  OUTLINED_FUNCTION_30_87();
  v8 = v7 & v6;
  v10 = (63 - v9) >> 6;
  v70 = v3;
  v68 = (v2 + 8);
  v69 = (v2 + 16);
  while (v8)
  {
LABEL_8:
    v12 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v13 = v12 | (v4 << 6);
    v14 = (*(v3 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_1E328438C(*(v3 + 56) + 32 * v13, v1 + 32);
    *(v1 + 64) = v16;
    *(v1 + 72) = v15;
    sub_1E329504C((v1 + 32), (v1 + 80));
    sub_1E379539C(v1 + 64, v1 + 112, &qword_1ECF2EB00, &qword_1E42D6F90);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
    if (swift_dynamicCast())
    {
      v17 = *(v1 + 240);
      v18 = sub_1E4205F14();
      if (!*(v17 + 16))
      {

LABEL_22:

        goto LABEL_23;
      }

      v20 = sub_1E327D33C(v18, v19);
      v22 = v21;

      if ((v22 & 1) == 0)
      {
        goto LABEL_22;
      }

      sub_1E328438C(*(v17 + 56) + 32 * v20, v1 + 208);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C420, &qword_1E429CDD0);
      if (swift_dynamicCast())
      {
        v23 = *(v1 + 248);
        v24 = (v23 + 40);
        v25 = *(v23 + 16) + 1;
        do
        {
          if (!--v25)
          {

            goto LABEL_26;
          }

          if (*(v24 - 1) == *(v1 + 264) && *v24 == *(v1 + 272))
          {
            break;
          }

          v24 += 2;
        }

        while ((sub_1E42079A4() & 1) == 0);

        sub_1E379539C(v1 + 64, v1 + 160, &qword_1ECF2EB00, &qword_1E42D6F90);

        if (swift_dynamicCast())
        {
          sub_1E3744600(*(v1 + 256));

          sub_1E325F748(v1 + 64, &qword_1ECF2EB00, &qword_1E42D6F90);
        }

        else
        {
          sub_1E325F748(v1 + 64, &qword_1ECF2EB00, &qword_1E42D6F90);
        }

        goto LABEL_39;
      }

LABEL_23:
      v27 = *(v1 + 304);
      v28 = *(v1 + 288);
      v29 = sub_1E324FBDC();
      (*v69)(v27, v29, v28);
      v30 = sub_1E41FFC94();
      v31 = sub_1E42067F4();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = OUTLINED_FUNCTION_125_0();
        *v32 = 0;
        _os_log_impl(&dword_1E323F000, v30, v31, "Channel dictionary missing appBundleIds key", v32, 2u);
        OUTLINED_FUNCTION_55();
      }

      v33 = *(v1 + 304);
      v34 = *(v1 + 288);

      (*v68)(v33, v34);
LABEL_26:
      sub_1E325F748(v1 + 64, &qword_1ECF2EB00, &qword_1E42D6F90);
      v3 = v70;
    }

    else
    {
      sub_1E325F748(v1 + 64, &qword_1ECF2EB00, &qword_1E42D6F90);
    }
  }

  while (1)
  {
    v11 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
      goto LABEL_46;
    }

    if (v11 >= v10)
    {
      break;
    }

    v8 = *(v5 + 8 * v11);
    ++v4;
    if (v8)
    {
      v4 = v11;
      goto LABEL_8;
    }
  }

  if (qword_1EE28B1A0 != -1)
  {
    OUTLINED_FUNCTION_0_344(&qword_1EE28B1A0);
  }

  OUTLINED_FUNCTION_13_25(*(v1 + 288), qword_1EE28B1A8);

  v54 = sub_1E41FFC94();
  sub_1E42067F4();

  if (OUTLINED_FUNCTION_51_53())
  {
    v55 = OUTLINED_FUNCTION_6_21();
    v72 = OUTLINED_FUNCTION_100();
    *(v55 + 4) = OUTLINED_FUNCTION_48_56(4.8149e-34, v72, v56, v57, v58, v59, v60, v61, v62, v67, v68);
    OUTLINED_FUNCTION_43_67(&dword_1E323F000, v63, v64, "Could not get channel metadata for bundleID%s");
    __swift_destroy_boxed_opaque_existential_1(v72);
    OUTLINED_FUNCTION_55();
    OUTLINED_FUNCTION_6_0();
  }

LABEL_39:

  v65 = OUTLINED_FUNCTION_7_10();

  return v66(v65);
}

double sub_1E40E6AFC(void *a1, int a2, void *a3, void *aBlock)
{
  v6 = _Block_copy(aBlock);
  OUTLINED_FUNCTION_53_0();
  v7 = swift_allocObject();
  v7[2] = a3;
  v7[3] = v6;
  v7[4] = a1;
  v8 = a3;
  v9 = a1;
  v10 = OUTLINED_FUNCTION_32_0();

  return sub_1E38364EC(v10, v11);
}

uint64_t sub_1E40E6B74(uint64_t a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  sub_1E4205F14();
  v3[4] = v5;
  a3;
  v6 = swift_task_alloc();
  v3[5] = v6;
  *v6 = v3;
  v6[1] = sub_1E40E6C48;

  return VUIUTSChannelsRequestManager.getChannel(bundleID:)();
}

uint64_t sub_1E40E6C48()
{
  OUTLINED_FUNCTION_134();
  v2 = v0;
  v4 = v3;
  OUTLINED_FUNCTION_39();
  v6 = v5;
  OUTLINED_FUNCTION_37_2();
  *v7 = v6;
  v9 = *(v8 + 16);
  v10 = *v1;
  OUTLINED_FUNCTION_7();
  *v11 = v10;

  if (v2)
  {
    sub_1E41FE264();

    v12 = v4;
  }

  else if (v4)
  {
    v13 = sub_1E4205C44();

    v12 = v13;
  }

  else
  {
    v12 = 0;
  }

  v14 = OUTLINED_FUNCTION_8_204();
  v15(v14);

  _Block_release(v6);
  OUTLINED_FUNCTION_54();

  return v16();
}

Swift::Bool __swiftcall VUIUTSChannelsRequestManager.isStoreBundleID(bundleID:)(Swift::String bundleID)
{
  object = bundleID._object;
  countAndFlagsBits = bundleID._countAndFlagsBits;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F320, &unk_1E429A280);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E429A200;
  *(inited + 32) = 0xD000000000000012;
  *(inited + 40) = 0x80000001E42916A0;
  *(inited + 48) = 0xD000000000000011;
  *(inited + 56) = 0x80000001E42916C0;
  *(inited + 64) = 0xD000000000000015;
  *(inited + 72) = 0x80000001E42916E0;
  *(inited + 80) = 0xD000000000000010;
  *(inited + 88) = 0x80000001E4291700;
  strcpy((inited + 96), "com.apple.tv");
  *(inited + 109) = 0;
  *(inited + 110) = -5120;
  *(inited + 112) = 0x6C7070612E6D6F63;
  *(inited + 120) = 0xEF636973754D2E65;
  v6[0] = countAndFlagsBits;
  v6[1] = object;
  v5[2] = v6;
  LOBYTE(object) = sub_1E3849DF8(sub_1E3756228, v5, inited);
  swift_setDeallocating();
  sub_1E38272B0();
  return object & 1;
}

uint64_t VUIUTSChannelsRequestManager.getOrderedChannels()()
{
  OUTLINED_FUNCTION_27_2();
  *(v1 + 16) = v0;
  OUTLINED_FUNCTION_21();
  v14 = v2 + 184;
  v15 = *(v2 + 184) + **(v2 + 184);
  v3 = swift_task_alloc();
  *(v1 + 24) = v3;
  *v3 = v1;
  v11 = OUTLINED_FUNCTION_13_188(v3, v4, v5, v6, v7, v8, v9, v10, v13, v14, v15);

  return v11();
}

uint64_t sub_1E40E709C()
{
  OUTLINED_FUNCTION_27_2();
  v3 = v2;
  OUTLINED_FUNCTION_39();
  v5 = v4;
  OUTLINED_FUNCTION_37_2();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_7();
  *v8 = v7;

  if (v0)
  {
    OUTLINED_FUNCTION_20_129();

    return v9();
  }

  else
  {
    *(v5 + 32) = v3 & 1;
    v11 = OUTLINED_FUNCTION_9_195();

    return MEMORY[0x1EEE6DFA0](v11, v12, v13);
  }
}

uint64_t sub_1E40E71C0()
{
  OUTLINED_FUNCTION_27_2();
  if (*(v1 + 32))
  {
    OUTLINED_FUNCTION_53_54();
    os_unfair_lock_lock((v0 + 24));
    v2 = *(v0 + 16);

    os_unfair_lock_unlock((v0 + 24));

    v3 = *(v1 + 8);

    return v3(v2);
  }

  else
  {
    if (qword_1EE28B1A0 != -1)
    {
      OUTLINED_FUNCTION_0_344(&qword_1EE28B1A0);
    }

    v5 = sub_1E41FFCB4();
    OUTLINED_FUNCTION_13_25(v5, qword_1EE28B1A8);
    v6 = sub_1E41FFC94();
    v7 = sub_1E42067F4();
    if (OUTLINED_FUNCTION_16_53(v7))
    {
      v8 = OUTLINED_FUNCTION_125_0();
      OUTLINED_FUNCTION_9_11(v8);
      OUTLINED_FUNCTION_41_2();
      _os_log_impl(v9, v10, v11, v12, v13, 2u);
      OUTLINED_FUNCTION_51_2();
    }

    v17 = sub_1E40E9610(v14, v15, v16);
    v18 = OUTLINED_FUNCTION_206(&type metadata for VUIUTSChannelsRequestError, v17);
    OUTLINED_FUNCTION_27_101(v18, v19);
    OUTLINED_FUNCTION_54();

    return v20();
  }
}

uint64_t sub_1E40E733C(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_1E40E73E4;

  return VUIUTSChannelsRequestManager.getOrderedChannels()();
}

uint64_t sub_1E40E73E4()
{
  OUTLINED_FUNCTION_27_2();
  v2 = v0;
  v4 = v3;
  OUTLINED_FUNCTION_39();
  v6 = v5;
  OUTLINED_FUNCTION_37_2();
  *v7 = v6;
  v9 = *(v8 + 16);
  v10 = *v1;
  OUTLINED_FUNCTION_7();
  *v11 = v10;

  if (v2)
  {
    sub_1E41FE264();

    v12 = v4;
  }

  else
  {
    v13 = sub_1E42062A4();

    v12 = v13;
  }

  v14 = OUTLINED_FUNCTION_8_204();
  v15(v14);

  _Block_release(v6);
  OUTLINED_FUNCTION_54();

  return v16();
}

uint64_t VUIUTSChannelsRequestManager.getAllChannels()()
{
  OUTLINED_FUNCTION_27_2();
  *(v1 + 16) = v0;
  OUTLINED_FUNCTION_21();
  v14 = v2 + 184;
  v15 = *(v2 + 184) + **(v2 + 184);
  v3 = swift_task_alloc();
  *(v1 + 24) = v3;
  *v3 = v1;
  v11 = OUTLINED_FUNCTION_13_188(v3, v4, v5, v6, v7, v8, v9, v10, v13, v14, v15);

  return v11();
}

uint64_t sub_1E40E7654()
{
  OUTLINED_FUNCTION_27_2();
  v3 = v2;
  OUTLINED_FUNCTION_39();
  v5 = v4;
  OUTLINED_FUNCTION_37_2();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_7();
  *v8 = v7;

  if (v0)
  {
    OUTLINED_FUNCTION_20_129();

    return v9();
  }

  else
  {
    *(v5 + 32) = v3 & 1;
    v11 = OUTLINED_FUNCTION_9_195();

    return MEMORY[0x1EEE6DFA0](v11, v12, v13);
  }
}

uint64_t sub_1E40E7778()
{
  OUTLINED_FUNCTION_27_2();
  if (*(v1 + 32))
  {
    OUTLINED_FUNCTION_53_54();
    os_unfair_lock_lock((v0 + 24));
    v2 = *(v0 + 16);

    os_unfair_lock_unlock((v0 + 24));

    sub_1E3744600(v2);

    v3 = OUTLINED_FUNCTION_7_10();

    return v4(v3);
  }

  else
  {
    if (qword_1EE28B1A0 != -1)
    {
      OUTLINED_FUNCTION_0_344(&qword_1EE28B1A0);
    }

    v6 = sub_1E41FFCB4();
    OUTLINED_FUNCTION_13_25(v6, qword_1EE28B1A8);
    v7 = sub_1E41FFC94();
    v8 = sub_1E42067F4();
    if (OUTLINED_FUNCTION_16_53(v8))
    {
      v9 = OUTLINED_FUNCTION_125_0();
      OUTLINED_FUNCTION_9_11(v9);
      OUTLINED_FUNCTION_41_2();
      _os_log_impl(v10, v11, v12, v13, v14, 2u);
      OUTLINED_FUNCTION_51_2();
    }

    v18 = sub_1E40E9610(v15, v16, v17);
    v19 = OUTLINED_FUNCTION_206(&type metadata for VUIUTSChannelsRequestError, v18);
    OUTLINED_FUNCTION_27_101(v19, v20);
    OUTLINED_FUNCTION_54();

    return v21();
  }
}

double sub_1E40E78FC(void *a1, int a2, void *aBlock)
{
  v4 = _Block_copy(aBlock);
  OUTLINED_FUNCTION_35_1();
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = a1;
  v6 = a1;
  v7 = OUTLINED_FUNCTION_32_0();

  return sub_1E38364EC(v7, v8);
}

uint64_t sub_1E40E7960(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_1E40E7A08;

  return VUIUTSChannelsRequestManager.getAllChannels()();
}

uint64_t sub_1E40E7A08()
{
  OUTLINED_FUNCTION_27_2();
  v2 = v0;
  v4 = v3;
  OUTLINED_FUNCTION_39();
  v6 = v5;
  OUTLINED_FUNCTION_37_2();
  *v7 = v6;
  v9 = *(v8 + 16);
  v10 = *v1;
  OUTLINED_FUNCTION_7();
  *v11 = v10;

  if (v2)
  {
    sub_1E41FE264();

    v12 = v4;
  }

  else
  {
    v13 = sub_1E4205C44();

    v12 = v13;
  }

  v14 = OUTLINED_FUNCTION_8_204();
  v15(v14);

  _Block_release(v6);
  OUTLINED_FUNCTION_54();

  return v16();
}

Swift::Void __swiftcall VUIUTSChannelsRequestManager.resetCache()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C400, &qword_1E429ABE0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v2 = *&v0[OBJC_IVAR____TtC8VideosUI28VUIUTSChannelsRequestManager_response];

  os_unfair_lock_lock((v2 + 24));

  v3 = MEMORY[0x1E69E7CC0];
  *(v2 + 16) = sub_1E4205CB4();
  os_unfair_lock_unlock((v2 + 24));

  v4 = *&v0[OBJC_IVAR____TtC8VideosUI28VUIUTSChannelsRequestManager_responseOrdered];

  os_unfair_lock_lock((v4 + 24));

  *(v4 + 16) = v3;
  os_unfair_lock_unlock((v4 + 24));

  v5 = *&v0[OBJC_IVAR____TtC8VideosUI28VUIUTSChannelsRequestManager_loadTask];

  os_unfair_lock_lock((v5 + 24));

  *(v5 + 16) = 0;
  os_unfair_lock_unlock((v5 + 24));

  v6 = sub_1E4206474();
  OUTLINED_FUNCTION_56_3(v6);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v0;
  v8 = v0;
  v9 = OUTLINED_FUNCTION_38_77();
  sub_1E376FE58(v9, v10, v11, v12, v13);
}

uint64_t sub_1E40E7D0C()
{
  OUTLINED_FUNCTION_27_2();
  v2 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xB8);
  v14 = (*MEMORY[0x1E69E7D40] & *v1) + 184;
  v15 = v2 + *v2;
  v3 = swift_task_alloc();
  *(v0 + 32) = v3;
  *v3 = v0;
  v11 = OUTLINED_FUNCTION_13_188(v3, v4, v5, v6, v7, v8, v9, v10, v13, v14, v15);

  return v11();
}

uint64_t sub_1E40E7E24()
{
  OUTLINED_FUNCTION_27_2();
  v3 = v2;
  OUTLINED_FUNCTION_39();
  v5 = v4;
  OUTLINED_FUNCTION_37_2();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_7();
  *v8 = v7;
  *(v5 + 40) = v0;

  if (!v0)
  {
    *(v5 + 48) = v3 & 1;
  }

  OUTLINED_FUNCTION_169();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1E40E7F34()
{
  OUTLINED_FUNCTION_27_2();
  if ((*(v0 + 48) & 1) == 0)
  {
    if (qword_1EE28B1A0 != -1)
    {
      OUTLINED_FUNCTION_0_344(&qword_1EE28B1A0);
    }

    v1 = sub_1E41FFCB4();
    OUTLINED_FUNCTION_13_25(v1, qword_1EE28B1A8);
    v2 = sub_1E41FFC94();
    v3 = sub_1E42067F4();
    if (OUTLINED_FUNCTION_16_53(v3))
    {
      v4 = OUTLINED_FUNCTION_125_0();
      OUTLINED_FUNCTION_9_11(v4);
      OUTLINED_FUNCTION_41_2();
      _os_log_impl(v5, v6, v7, v8, v9, 2u);
      OUTLINED_FUNCTION_51_2();
    }
  }

  OUTLINED_FUNCTION_54();

  return v10();
}

uint64_t sub_1E40E8008()
{
  v16 = v0;
  *(v0 + 16) = *(v0 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF32480, &unk_1E42A9410);
  sub_1E3E991C8();
  result = swift_dynamicCast();
  if (result)
  {
    v2 = *(v0 + 24);
    if (qword_1EE28B1A0 != -1)
    {
      OUTLINED_FUNCTION_0_344(&qword_1EE28B1A0);
    }

    v3 = sub_1E41FFCB4();
    OUTLINED_FUNCTION_13_25(v3, qword_1EE28B1A8);
    v4 = v2;
    v5 = sub_1E41FFC94();
    v6 = sub_1E42067F4();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = OUTLINED_FUNCTION_6_21();
      v8 = OUTLINED_FUNCTION_100();
      v15 = v8;
      *v7 = 136315138;
      v9 = [v4 localizedDescription];
      v10 = sub_1E4205F14();
      v12 = v11;

      v13 = sub_1E3270FC8(v10, v12, &v15);

      *(v7 + 4) = v13;
      _os_log_impl(&dword_1E323F000, v5, v6, "Could not get load channels with error:%s", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v8);
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();
    }

    else
    {
    }

    OUTLINED_FUNCTION_54();

    return v14();
  }

  return result;
}

id VUIUTSChannelsRequestManager.init()()
{
  v1 = OBJC_IVAR____TtC8VideosUI28VUIUTSChannelsRequestManager_response;
  v2 = MEMORY[0x1E69E7CC0];
  v3 = sub_1E4205CB4();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3FD08, &qword_1E42EC220);
  v5 = OUTLINED_FUNCTION_42_73(v4);
  *(v5 + 24) = 0;
  *(v5 + 16) = v3;
  *&v0[v1] = v5;
  v6 = OBJC_IVAR____TtC8VideosUI28VUIUTSChannelsRequestManager_responseOrdered;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3FD10, &qword_1E42EC228);
  v8 = OUTLINED_FUNCTION_42_73(v7);
  *(v8 + 24) = 0;
  *(v8 + 16) = v2;
  *&v0[v6] = v8;
  v9 = OBJC_IVAR____TtC8VideosUI28VUIUTSChannelsRequestManager_loadTask;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3FD18, &qword_1E42EC230);
  v11 = OUTLINED_FUNCTION_42_73(v10);
  *(v11 + 24) = 0;
  *(v11 + 16) = 0;
  *&v0[v9] = v11;
  v13.receiver = v0;
  v13.super_class = type metadata accessor for VUIUTSChannelsRequestManager();
  return objc_msgSendSuper2(&v13, sel_init);
}

id VUIUTSChannelsRequestManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VUIUTSChannelsRequestManager();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1E40E8400()
{
  OUTLINED_FUNCTION_24();
  v0[45] = v1;
  v0[46] = v2;
  v3 = sub_1E41FDDF4();
  v0[47] = v3;
  OUTLINED_FUNCTION_8_0(v3);
  v0[48] = v4;
  v0[49] = swift_task_alloc();
  OUTLINED_FUNCTION_169();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1E40E84B0()
{
  OUTLINED_FUNCTION_27_2();
  *(v1 + 400) = OBJC_IVAR____TtC8VideosUI28VUIUTSChannelsRequestManager_response;
  OUTLINED_FUNCTION_53_54();
  os_unfair_lock_lock((v0 + 24));
  v2 = *(*(v0 + 16) + 16);
  os_unfair_lock_unlock((v0 + 24));

  if (v2)
  {
    **(v1 + 360) = 1;

    OUTLINED_FUNCTION_54();

    return v3();
  }

  else
  {
    if (qword_1EE28B1A0 != -1)
    {
      OUTLINED_FUNCTION_0_344(&qword_1EE28B1A0);
    }

    v5 = sub_1E41FFCB4();
    *(v1 + 408) = __swift_project_value_buffer(v5, qword_1EE28B1A8);
    v6 = sub_1E41FFC94();
    v7 = sub_1E42067D4();
    if (OUTLINED_FUNCTION_16_53(v7))
    {
      v8 = OUTLINED_FUNCTION_125_0();
      OUTLINED_FUNCTION_9_11(v8);
      OUTLINED_FUNCTION_41_2();
      _os_log_impl(v9, v10, v11, v12, v13, 2u);
      OUTLINED_FUNCTION_51_2();
    }

    sub_1E41FEFD4();
    v14 = swift_task_alloc();
    *(v1 + 416) = v14;
    *v14 = v1;
    v14[1] = sub_1E40E8664;
    v15 = *(v1 + 392);

    return MEMORY[0x1EEE436E8](v15, 0x736C656E6E616863, 0xE800000000000000);
  }
}

uint64_t sub_1E40E8664()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_39();
  v2 = *v1;
  OUTLINED_FUNCTION_7();
  *v3 = v2;
  *(v4 + 424) = v0;

  OUTLINED_FUNCTION_169();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1E40E8764()
{
  OUTLINED_FUNCTION_24();
  sub_1E41FEE44();
  v0[54] = sub_1E41FEE24();
  v1 = swift_task_alloc();
  v0[55] = v1;
  *v1 = v0;
  v1[1] = sub_1E40E8810;
  v2 = v0[49];

  return MEMORY[0x1EEE43620](v2);
}

uint64_t sub_1E40E8810()
{
  OUTLINED_FUNCTION_27_2();
  OUTLINED_FUNCTION_37_2();
  *v2 = v1;
  *(v1 + 448) = v3;
  *(v1 + 456) = v0;

  OUTLINED_FUNCTION_169();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

void sub_1E40E893C()
{
  v101 = v1;
  v2 = [*(v1 + 448) data];
  sub_1E41FE464();
  v4 = v3;

  sub_1E41FE434();
  v5 = OUTLINED_FUNCTION_92_2();
  sub_1E38DCCB0(v5, v4);
  if (!v0)
  {
    v0 = sub_1E4205CB4();
  }

  v6 = sub_1E4205F14();
  sub_1E3277E60(v6, v7, v0, (v1 + 256));

  if (!*(v1 + 280))
  {

    sub_1E325F748(v1 + 256, &unk_1ECF296E0, &unk_1E4298030);
LABEL_23:
    v36 = *(v1 + 448);
    v37 = sub_1E41FFC94();
    sub_1E42067F4();

    if (OUTLINED_FUNCTION_51_53())
    {
      v38 = *(v1 + 448);
      v39 = OUTLINED_FUNCTION_6_21();
      v40 = swift_slowAlloc();
      *v39 = 138412290;
      *(v39 + 4) = v38;
      *v40 = v38;
      v41 = v38;
      OUTLINED_FUNCTION_41_2();
      _os_log_impl(v42, v43, v44, v45, v46, 0xCu);
      sub_1E325F748(v40, &unk_1ECF28E30, &qword_1E429E820);
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_51_2();
    }

    v47 = *(v1 + 448);
    v49 = *(v1 + 384);
    v48 = *(v1 + 392);
    v50 = *(v1 + 376);

    v54 = sub_1E40E9610(v51, v52, v53);
    v55 = OUTLINED_FUNCTION_206(&type metadata for VUIUTSChannelsRequestError, v54);
    *v56 = 3;
    swift_willThrow();

    (*(v49 + 8))(v48, v50);
    *(v1 + 320) = v55;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF32480, &unk_1E42A9410);
    v57 = sub_1E3E991C8();
    if ((OUTLINED_FUNCTION_17_150(v57) & 1) == 0)
    {
      OUTLINED_FUNCTION_46_65();
      return;
    }

    OUTLINED_FUNCTION_31_95();
    sub_1E42074B4();

    OUTLINED_FUNCTION_19_151();
    v99 = v59;
    v100 = v58;
    v60 = [v48 localizedDescription];
    v61 = sub_1E4205F14();
    v63 = v62;

    MEMORY[0x1E69109E0](v61, v63);

    v65 = v99;
    v64 = v100;

    v66 = sub_1E41FFC94();
    v67 = sub_1E42067F4();

    if (os_log_type_enabled(v66, v67))
    {
      v68 = OUTLINED_FUNCTION_6_21();
      v69 = OUTLINED_FUNCTION_100();
      v99 = v69;
      *v68 = 136315138;
      *(v68 + 4) = sub_1E3270FC8(v65, v64, &v99);

      OUTLINED_FUNCTION_28_91(&dword_1E323F000, v70, v71, "%s");
      __swift_destroy_boxed_opaque_existential_1(v69);
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_55();
    }

    else
    {
    }

    OUTLINED_FUNCTION_41_71();
LABEL_38:

    OUTLINED_FUNCTION_54();
    OUTLINED_FUNCTION_46_65();

    __asm { BRAA            X1, X16 }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_23;
  }

  v8 = *(v1 + 336);
  v9 = sub_1E4205F14();
  sub_1E3277E60(v9, v10, v8, (v1 + 288));

  if (!*(v1 + 312))
  {

    sub_1E325F748(v1 + 288, &unk_1ECF296E0, &unk_1E4298030);
LABEL_33:
    v72 = sub_1E41FFC94();
    v73 = sub_1E42067F4();
    if (OUTLINED_FUNCTION_16_53(v73))
    {
      v74 = OUTLINED_FUNCTION_125_0();
      OUTLINED_FUNCTION_9_11(v74);
      OUTLINED_FUNCTION_41_2();
      _os_log_impl(v75, v76, v77, v78, v79, 2u);
      OUTLINED_FUNCTION_51_2();
      v80 = *(v1 + 448);
    }

    else
    {
      v80 = v72;
      v72 = *(v1 + 448);
    }

    v82 = *(v1 + 384);
    v81 = *(v1 + 392);
    v83 = *(v1 + 376);
    v84 = *(v1 + 360);

    (*(v82 + 8))(v81, v83);
    *v84 = 0;
    goto LABEL_38;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_33;
  }

  v98 = v1 + 64;
  v94 = *(v1 + 368);
  v11 = *(v1 + 344) + 64;
  OUTLINED_FUNCTION_30_87();
  v14 = v13 & v12;
  v93 = OBJC_IVAR____TtC8VideosUI28VUIUTSChannelsRequestManager_responseOrdered;
  v16 = (63 - v15) >> 6;
  v95 = *(v1 + 456);
  v97 = v17;

  v18 = 0;
  v96 = v16;
  v92 = v11;
  if (v14)
  {
    goto LABEL_12;
  }

  do
  {
LABEL_8:
    v19 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      __break(1u);
      return;
    }

    if (v19 >= v16)
    {
      v85 = *(v1 + 448);
      v86 = *(v1 + 360);
      (*(*(v1 + 384) + 8))(*(v1 + 392), *(v1 + 376));

      *v86 = 1;
      goto LABEL_38;
    }

    v14 = *(v11 + 8 * v19);
    ++v18;
  }

  while (!v14);
  v18 = v19;
  while (1)
  {
LABEL_12:
    v20 = __clz(__rbit64(v14)) | (v18 << 6);
    v21 = (*(v97 + 48) + 16 * v20);
    v23 = *v21;
    v22 = v21[1];
    sub_1E328438C(*(v97 + 56) + 32 * v20, v1 + 32);
    *(v1 + 64) = v23;
    *(v1 + 72) = v22;
    sub_1E329504C((v1 + 32), (v1 + 80));
    v24 = v1 + 64;
    sub_1E379539C(v98, v1 + 112, &qword_1ECF2EB00, &qword_1E42D6F90);

    if ((swift_dynamicCast() & 1) == 0)
    {
      sub_1E379539C(v98, v1 + 160, &qword_1ECF2EB00, &qword_1E42D6F90);
      v29 = sub_1E41FFC94();
      v30 = sub_1E42067F4();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = OUTLINED_FUNCTION_6_21();
        v91 = OUTLINED_FUNCTION_100();
        v99 = v91;
        *v31 = 136315138;
        v32 = *(v1 + 176);
        *(v1 + 208) = *(v1 + 160);
        *(v1 + 224) = v32;
        *(v1 + 240) = *(v1 + 192);
        v34 = *(v1 + 208);
        v33 = *(v1 + 216);
        __swift_destroy_boxed_opaque_existential_1((v1 + 224));
        v35 = sub_1E3270FC8(v34, v33, &v99);
        v24 = v1 + 64;

        *(v31 + 4) = v35;
        _os_log_impl(&dword_1E323F000, v29, v30, "Could not get channel metadata for %s", v31, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v91);
        OUTLINED_FUNCTION_6_0();
        OUTLINED_FUNCTION_6_0();
      }

      else
      {

        sub_1E325F748(v1 + 160, &qword_1ECF2EB00, &qword_1E42D6F90);
      }

      v16 = v96;
      goto LABEL_19;
    }

    v25 = *(v1 + 352);
    v26 = *(*(v1 + 368) + *(v1 + 400));
    v27 = swift_task_alloc();
    *(v27 + 16) = v98;
    *(v27 + 24) = v25;

    os_unfair_lock_lock(v26 + 6);
    sub_1E40E9D84();
    if (v95)
    {
      break;
    }

    os_unfair_lock_unlock(v26 + 6);

    v28 = *(v94 + v93);
    *(swift_task_alloc() + 16) = v98;

    os_unfair_lock_lock((v28 + 24));
    sub_1E40E9E28((v28 + 16));
    os_unfair_lock_unlock((v28 + 24));

    v95 = 0;
    v16 = v96;
    v24 = v1 + 64;
    v11 = v92;
LABEL_19:
    v14 &= v14 - 1;
    sub_1E325F748(v24, &qword_1ECF2EB00, &qword_1E42D6F90);
    if (!v14)
    {
      goto LABEL_8;
    }
  }

  OUTLINED_FUNCTION_46_65();

  os_unfair_lock_unlock(v89);
}

void sub_1E40E91D4()
{
  *(v1 + 320) = *(v1 + 424);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF32480, &unk_1E42A9410);
  v2 = sub_1E3E991C8();
  if (OUTLINED_FUNCTION_17_150(v2))
  {
    OUTLINED_FUNCTION_31_95();
    sub_1E42074B4();

    OUTLINED_FUNCTION_19_151();
    v3 = [v0 localizedDescription];
    v4 = sub_1E4205F14();
    v6 = v5;

    MEMORY[0x1E69109E0](v4, v6);

    v7 = sub_1E41FFC94();
    v8 = sub_1E42067F4();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = OUTLINED_FUNCTION_6_21();
      v15 = OUTLINED_FUNCTION_100();
      *(v9 + 4) = OUTLINED_FUNCTION_50_57(4.8149e-34, v15, v10);

      OUTLINED_FUNCTION_28_91(&dword_1E323F000, v11, v12, "%s");
      __swift_destroy_boxed_opaque_existential_1(v15);
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_55();
    }

    else
    {
    }

    OUTLINED_FUNCTION_41_71();

    OUTLINED_FUNCTION_54();
    OUTLINED_FUNCTION_49_63();

    __asm { BRAA            X1, X16 }
  }

  OUTLINED_FUNCTION_49_63();
}

void sub_1E40E93A0()
{
  (*(v1[48] + 8))(v1[49], v1[47]);
  v1[40] = v1[57];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF32480, &unk_1E42A9410);
  v2 = sub_1E3E991C8();
  if (OUTLINED_FUNCTION_17_150(v2))
  {
    OUTLINED_FUNCTION_31_95();
    sub_1E42074B4();

    OUTLINED_FUNCTION_19_151();
    v3 = [v0 localizedDescription];
    v4 = sub_1E4205F14();
    v6 = v5;

    MEMORY[0x1E69109E0](v4, v6);

    v7 = sub_1E41FFC94();
    v8 = sub_1E42067F4();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = OUTLINED_FUNCTION_6_21();
      v15 = OUTLINED_FUNCTION_100();
      *(v9 + 4) = OUTLINED_FUNCTION_50_57(4.8149e-34, v15, v10);

      OUTLINED_FUNCTION_28_91(&dword_1E323F000, v11, v12, "%s");
      __swift_destroy_boxed_opaque_existential_1(v15);
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_55();
    }

    else
    {
    }

    OUTLINED_FUNCTION_41_71();

    OUTLINED_FUNCTION_54();
    OUTLINED_FUNCTION_49_63();

    __asm { BRAA            X1, X16 }
  }

  OUTLINED_FUNCTION_49_63();
}

char *sub_1E40E9584()
{
  v1 = *v0;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v0 = v1;
  if (!result)
  {
    result = sub_1E3B1DC54(result, *(v1 + 16) + 1, 1, v1);
    *v0 = result;
  }

  return result;
}

char *sub_1E40E95D0(char *result)
{
  v2 = *(*v1 + 3);
  if ((result + 1) > (v2 >> 1))
  {
    result = sub_1E3B1DC54((v2 > 1), (result + 1), 1, *v1);
    *v1 = result;
  }

  return result;
}

unint64_t sub_1E40E9610(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF3FD20;
  if (!qword_1ECF3FD20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3FD20);
  }

  return result;
}

uint64_t sub_1E40E9664()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_39();
  v2 = v1;
  OUTLINED_FUNCTION_37_2();
  *v3 = v2;
  v5 = *(v4 + 16);
  v6 = *v0;
  OUTLINED_FUNCTION_7();
  *v7 = v6;

  *v5 = *(v2 + 32);
  OUTLINED_FUNCTION_54();

  return v8();
}

uint64_t sub_1E40E975C()
{
  OUTLINED_FUNCTION_24();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_30_0(v0);
  *v1 = v2;
  v1[1] = sub_1E327C238;

  return sub_1E40E7D0C();
}

unint64_t sub_1E40E9810(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF3FD28;
  if (!qword_1ECF3FD28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3FD28);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for VUIUTSChannelsRequestError(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1E40E9940()
{
  OUTLINED_FUNCTION_27_2();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_30_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_4_250(v1);

  return v4(v3);
}

uint64_t sub_1E40E99D0()
{
  OUTLINED_FUNCTION_27_2();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_30_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_4_250(v1);

  return v4(v3);
}

uint64_t sub_1E40E9A60()
{
  OUTLINED_FUNCTION_27_2();
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_30_0(v3);
  *v4 = v5;
  v4[1] = sub_1E3286A7C;
  v6 = OUTLINED_FUNCTION_25_111();

  return v7(v6, v1, v2);
}

uint64_t objectdestroy_61Tm_0()
{
  _Block_release(*(v0 + 24));

  OUTLINED_FUNCTION_53_0();

  return swift_deallocObject();
}

uint64_t sub_1E40E9B48()
{
  OUTLINED_FUNCTION_27_2();
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_30_0(v3);
  *v4 = v5;
  v4[1] = sub_1E327C238;
  v6 = OUTLINED_FUNCTION_25_111();

  return v7(v6, v1, v2);
}

uint64_t objectdestroy_31Tm_0()
{
  _Block_release(*(v0 + 16));

  OUTLINED_FUNCTION_35_1();

  return swift_deallocObject();
}

uint64_t sub_1E40E9C28()
{
  OUTLINED_FUNCTION_27_2();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_30_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_4_250(v1);

  return v4(v3);
}

uint64_t objectdestroyTm_65()
{
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_53_0();

  return swift_deallocObject();
}

uint64_t sub_1E40E9CF0()
{
  OUTLINED_FUNCTION_24();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_14_3(v0);
  *v1 = v2;
  v1[1] = sub_1E327C238;

  return sub_1E40E8400();
}

uint64_t sub_1E40E9D84()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_1E379539C(v1, v7, &qword_1ECF2EB00, &qword_1E42D6F90);
  v3 = v7[0];
  v4 = v7[1];
  v6[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
  v6[0] = v2;

  sub_1E3946774(v6, v3, v4);
  return __swift_destroy_boxed_opaque_existential_1(v8);
}

_OWORD *sub_1E40E9E28(uint64_t *a1)
{
  sub_1E379539C(*(v1 + 16), &v6, &qword_1ECF2EB00, &qword_1E42D6F90);

  sub_1E40E9584();
  v3 = *(*a1 + 16);
  sub_1E40E95D0(v3);
  v4 = *a1;
  *(v4 + 16) = v3 + 1;
  result = sub_1E329504C(&v7, (v4 + 32 * v3 + 32));
  *a1 = v4;
  return result;
}

unint64_t OUTLINED_FUNCTION_48_56(float a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  *v13 = a1;

  return sub_1E3270FC8(v12, v11, va);
}

uint64_t OUTLINED_FUNCTION_53_54()
{
}

uint64_t sub_1E40E9F04()
{
  v2 = sub_1E39D7838(&unk_1F5D97B90);
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF40330, &qword_1E42ECAC8);
  sub_1E41E1A64(&v2, sub_1E40E9F84, v0, &qword_1EE2AB158);
}

unint64_t sub_1E40E9FB8()
{
  result = sub_1E39D7838(&unk_1F5D97BD0);
  qword_1EE2AB160 = result;
  return result;
}

uint64_t sub_1E40E9FE0()
{
  v0 = sub_1E39D7838(&unk_1F5D97C10);
  result = TVAppFeature.isEnabled.getter(10, v1, v2);
  if (result)
  {
    result = sub_1E40FC294(170, v4, v5);
  }

  qword_1EE2AB168 = v0;
  return result;
}

uint64_t sub_1E40EA03C@<X0>(uint64_t a1@<X0>, const void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v11 = 0;
  *a5 = a1;
  memcpy((a5 + 8), a2, 0xC3uLL);
  *(a5 + 208) = a3;
  *(a5 + 216) = a4;
  *(a5 + 224) = sub_1E40EA0D8;
  *(a5 + 232) = 0;
  *(a5 + 240) = v11;

  sub_1E375C1CC(a2, &v10);
  return sub_1E34AF604(a3, a4);
}

unint64_t sub_1E40EA118(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EE2A4428[0];
  if (!qword_1EE2A4428[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE2A4428);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_8VideosUI17InteractionStatesVIegy_Sg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1E40EA198(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 241))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E40EA1D8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 232) = 0;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 240) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 241) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 241) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1E40EA3C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_31_1();
  a19 = v22;
  a20 = v23;
  v25 = v24;
  v150 = v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3FEF8, &qword_1E42EC6D0);
  v28 = OUTLINED_FUNCTION_6_4(v27, &a10);
  MEMORY[0x1EEE9AC00](v28);
  v141 = (&v139 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_17_3(&v139 - v31);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3FE40, &qword_1E42EC618);
  OUTLINED_FUNCTION_6_4(v32, &v156[21]);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_31_2();
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3FF08, &qword_1E42EC6E0);
  OUTLINED_FUNCTION_0_10();
  v144 = v35;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v37);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3FF10, &qword_1E42EC6E8);
  OUTLINED_FUNCTION_6_4(v38, &v156[23]);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v40);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3FF18, &qword_1E42EC6F0);
  OUTLINED_FUNCTION_6_4(v41, &v156[18]);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v42);
  v44 = &v139 - v43;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3FD40, &qword_1E42EC518);
  OUTLINED_FUNCTION_6_4(v45, &v156[24]);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v47);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3FD48, &qword_1E42EC520);
  OUTLINED_FUNCTION_6_4(v48, &v156[19]);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_103();
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3FF20, &qword_1E42EC6F8);
  OUTLINED_FUNCTION_0_10();
  v51 = v50;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_44();
  v54 = v53;
  if (qword_1EE28CCC8 != -1)
  {
    OUTLINED_FUNCTION_137_11(&qword_1EE28CCC8);
  }

  v55 = qword_1EE2AB160;
  v56 = *v25;
  v57 = *(*v25 + 98);

  if (sub_1E38E5664(v57, v55, v58))
  {

    memcpy(v156, v25 + 1, 0xC3uLL);
    sub_1E40EAF50();
    v144 = v34;
    MEMORY[0x1EEE9AC00](v60);
    *(&v139 - 2) = v25;
    v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3FD50, &qword_1E42EC528);
    v62 = sub_1E40F58D0();
    v63 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3FE28, &qword_1E42EC600);
    v64 = sub_1E40F6B18();
    v143 = sub_1E383FBF4(v64, v65, v66);
    v152 = v63;
    OUTLINED_FUNCTION_136_7(&unk_1F5D59EC8);
    *(v67 - 256) = v64;
    OUTLINED_FUNCTION_36_74(v68, &a14);
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v140 = v54;
    v70 = v145;
    sub_1E3E35D1C(v61, v54);
    sub_1E325F6F0(v20, &qword_1ECF3FD48, &qword_1E42EC520);
    v71 = OUTLINED_FUNCTION_34();
    v72 = v146;
    v73(v71);
    OUTLINED_FUNCTION_167_7();
    swift_storeEnumTagMultiPayload();
    v152 = v70;
    v153 = v61;
    v154 = v62;
    v155 = OpaqueTypeConformance2;
    swift_getOpaqueTypeConformance2();
    v74 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3FE48, &qword_1E42EC620);
    v75 = sub_1E40F6C64();
    v76 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3FEE8, &qword_1E42EC6C0);
    sub_1E40F74B4();
    v152 = v76;
    OUTLINED_FUNCTION_136_7(&unk_1F5D59EC8);
    *(v78 - 256) = v77;
    OUTLINED_FUNCTION_217_1(&v156[16]);
    swift_getOpaqueTypeConformance2();
    OUTLINED_FUNCTION_216_0(&v156[21]);
    *(v79 - 256) = v74;
    v154 = v75;
    v155 = v80;
    swift_getOpaqueTypeConformance2();
    v81 = v148;
    OUTLINED_FUNCTION_34();
    sub_1E4201F44();
    sub_1E3743538(v81, v149, &qword_1ECF3FD40, &qword_1E42EC518);
    OUTLINED_FUNCTION_167_7();
    swift_storeEnumTagMultiPayload();
    sub_1E40F56E8();
    OUTLINED_FUNCTION_13_2();
    sub_1E3D6870C(v82);
    OUTLINED_FUNCTION_153_8();
    OUTLINED_FUNCTION_199_1();
    OUTLINED_FUNCTION_31_24();
    sub_1E325F6F0(v83, v84, v85);
    (*(v51 + 8))(v140, v72);
  }

  else
  {
    if (_MergedGlobals_278 != -1)
    {
      OUTLINED_FUNCTION_138_12(&_MergedGlobals_278);
    }

    v86 = sub_1E38E5664(v57, qword_1EE2AB158, v59);
    if (v86)
    {

      memcpy(v156, v25 + 1, 0xC3uLL);
      OUTLINED_FUNCTION_86_22();
      sub_1E40EE58C();
      v141 = &v139;
      MEMORY[0x1EEE9AC00](v87);
      OUTLINED_FUNCTION_205_0();
      v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3FE48, &qword_1E42EC620);
      v89 = sub_1E40F6C64();
      v90 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3FEE8, &qword_1E42EC6C0);
      v91 = sub_1E40F74B4();
      v142 = sub_1E383FBF4(v91, v92, v93);
      v152 = v90;
      OUTLINED_FUNCTION_136_7(&unk_1F5D59EC8);
      *(v94 - 256) = v91;
      OUTLINED_FUNCTION_36_74(v95, &a14);
      v96 = swift_getOpaqueTypeConformance2();
      v97 = v143;
      v98 = v147;
      sub_1E3E35D1C(v88, v143);
      sub_1E325F6F0(v21, &qword_1ECF3FE40, &qword_1E42EC618);
      (*(v144 + 16))(v44, v97, v34);
      OUTLINED_FUNCTION_185_3();
      swift_storeEnumTagMultiPayload();
      v99 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3FD50, &qword_1E42EC528);
      v100 = sub_1E40F58D0();
      v101 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3FE28, &qword_1E42EC600);
      sub_1E40F6B18();
      v152 = v101;
      OUTLINED_FUNCTION_136_7(&unk_1F5D59EC8);
      *(v103 - 256) = v102;
      OUTLINED_FUNCTION_217_1(&v156[15]);
      swift_getOpaqueTypeConformance2();
      OUTLINED_FUNCTION_216_0(&v156[19]);
      *(v104 - 256) = v99;
      v154 = v100;
      OUTLINED_FUNCTION_99_14(v105, &a14);
      swift_getOpaqueTypeConformance2();
      v152 = v98;
      v153 = v88;
      v154 = v89;
      v155 = v96;
      swift_getOpaqueTypeConformance2();
      v106 = v148;
      sub_1E4201F44();
      sub_1E3743538(v106, v149, &qword_1ECF3FD40, &qword_1E42EC518);
      OUTLINED_FUNCTION_167_7();
      swift_storeEnumTagMultiPayload();
      sub_1E40F56E8();
      OUTLINED_FUNCTION_13_2();
      sub_1E3D6870C(v107);
      OUTLINED_FUNCTION_199_1();
      OUTLINED_FUNCTION_31_24();
      sub_1E325F6F0(v108, v109, v110);
      (*(v144 + 8))(v143, v34);
    }

    else
    {
      v148 = &v139;
      MEMORY[0x1EEE9AC00](v86);
      OUTLINED_FUNCTION_205_0();
      v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3FF28, &qword_1E42EC700);
      v112 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3FF30, &qword_1E42EC708);
      v113 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3FF38, &qword_1E42EC710);
      v114 = sub_1E40F7608();
      v115 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF40060, &qword_1E42EC838);
      v116 = sub_1E40F8F70();
      v119 = sub_1E383FBF4(v116, v117, v118);
      v156[0] = v115;
      v156[1] = &unk_1F5D59EC8;
      v156[2] = v116;
      OUTLINED_FUNCTION_36_74(v119, &a18);
      v120 = swift_getOpaqueTypeConformance2();
      v156[0] = v112;
      v156[1] = v113;
      v156[2] = v114;
      OUTLINED_FUNCTION_99_14(v120, &a18);
      v121 = swift_getOpaqueTypeConformance2();
      OUTLINED_FUNCTION_34();
      v122 = OUTLINED_FUNCTION_51_1();
      sub_1E40424BC(v56, v122 & 1, sub_1E40F7600, v111, v121, v141, v20);
      v127 = sub_1E373F6E0(v57, 193, v123, v124, v125, v126);
      sub_1E4043670(v127 & 1, v151, v142);
      OUTLINED_FUNCTION_82();
      sub_1E325F6F0(v128, v129, v130);
      OUTLINED_FUNCTION_32_3();
      sub_1E3743538(v131, v132, v133, v134);
      OUTLINED_FUNCTION_185_3();
      swift_storeEnumTagMultiPayload();
      sub_1E40F56E8();
      OUTLINED_FUNCTION_13_2();
      OUTLINED_FUNCTION_82();
      sub_1E3D6870C(v135);
      OUTLINED_FUNCTION_153_8();
      sub_1E4201F44();
      v136 = OUTLINED_FUNCTION_8_12();
      sub_1E325F6F0(v136, v137, v138);
    }
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E40EAF50()
{
  OUTLINED_FUNCTION_31_1();
  v726 = v3;
  v5 = v4;
  v734 = v6;
  v686 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF40080, &qword_1E42EC850);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_44();
  v687 = v8;
  v735 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3FE18, &qword_1E42EC5F0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_44();
  v688 = v10;
  v653 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF40088, &qword_1E42EC858);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_44();
  v655 = v12;
  v13 = OUTLINED_FUNCTION_138();
  v654 = type metadata accessor for SyndicationListLockup(v13);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_9_3();
  v637 = v15;
  v685 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3FE20, &qword_1E42EC5F8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_44();
  v656 = v17;
  v18 = OUTLINED_FUNCTION_138();
  v666 = type metadata accessor for ListLockup(v18);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_9_3();
  v725 = v20;
  v662 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF40090, &qword_1E42EC860);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_44();
  v664 = v22;
  v694 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3FE10, &qword_1E42EC5E8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_44();
  v667 = v24;
  v712 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3FDE0, &qword_1E42EC5B8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_44();
  v714 = v26;
  v691 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF40098, &qword_1E42EC868);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_44();
  v693 = v28;
  v657 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF400A0, &qword_1E42EC870);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_44();
  v713 = v30;
  v692 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3FDD8, &qword_1E42EC5B0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_44();
  v658 = v32;
  v718 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3FDD0, &qword_1E42EC5A8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_44();
  v695 = v34;
  v660 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF400A8, &qword_1E42EC878);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_44();
  v661 = v36;
  v700 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3FDC0, &qword_1E42EC598);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_44();
  v665 = v38;
  v663 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29A90, &qword_1E429C780);
  OUTLINED_FUNCTION_0_10();
  v644 = v39;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_44();
  v643 = v41;
  v639 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF400B0, &qword_1E42EC880);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_44();
  v641 = v43;
  v44 = OUTLINED_FUNCTION_138();
  v640 = type metadata accessor for EditorialLockup(v44);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_9_3();
  v636 = v46;
  v659 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3FDC8, &qword_1E42EC5A0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_44();
  v642 = v48;
  v650 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF400B8, &qword_1E42EC888);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_44();
  v652 = v50;
  v651 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3FDB8, &qword_1E42EC590);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_204_1(v52);
  v683 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3FDB0, &qword_1E42EC588);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_44();
  v684 = v54;
  v715 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF400C0, &qword_1E42EC890);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v55);
  OUTLINED_FUNCTION_44();
  v717 = v56;
  v696 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF400C8, &qword_1E42EC898);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v57);
  OUTLINED_FUNCTION_44();
  v698 = v58;
  v680 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF400D0, &qword_1E42EC8A0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v59);
  OUTLINED_FUNCTION_44();
  v681 = v60;
  v697 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3FDA8, &qword_1E42EC580);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v61);
  OUTLINED_FUNCTION_44();
  v682 = v62;
  v716 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3FDA0, &qword_1E42EC578);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v63);
  OUTLINED_FUNCTION_44();
  v699 = v64;
  v730 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3FD98, &qword_1E42EC570);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v65);
  OUTLINED_FUNCTION_44();
  v719 = v66;
  v67 = OUTLINED_FUNCTION_138();
  v679 = type metadata accessor for PlaybackPersonView(v67);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v68);
  OUTLINED_FUNCTION_9_3();
  v649 = v69;
  v70 = OUTLINED_FUNCTION_138();
  v677 = type metadata accessor for SportsLockup(v70);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v71);
  OUTLINED_FUNCTION_9_3();
  v648 = v72;
  v672 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF400D8, &qword_1E42EC8A8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v73);
  OUTLINED_FUNCTION_44();
  v676 = v74;
  v705 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3FD90, &qword_1E42EC568);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v75);
  OUTLINED_FUNCTION_44();
  v678 = v76;
  v77 = OUTLINED_FUNCTION_138();
  v673 = type metadata accessor for TeamLockup(v77);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v78);
  OUTLINED_FUNCTION_9_3();
  v646 = v79;
  v80 = OUTLINED_FUNCTION_138();
  v674 = type metadata accessor for MonogramLockup(v80);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v81);
  OUTLINED_FUNCTION_9_3();
  v647 = v82;
  v702 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF400E0, &qword_1E42EC8B0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v83);
  OUTLINED_FUNCTION_44();
  v704 = v84;
  v668 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF400E8, &qword_1E42EC8B8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v85);
  OUTLINED_FUNCTION_44();
  v670 = v86;
  v703 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3FD88, &qword_1E42EC560);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v87);
  OUTLINED_FUNCTION_44();
  v675 = v88;
  v723 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3FD80, &qword_1E42EC558);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v89);
  OUTLINED_FUNCTION_44();
  v706 = v90;
  v91 = OUTLINED_FUNCTION_138();
  v669 = type metadata accessor for StandardLockup(v91);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v92);
  OUTLINED_FUNCTION_9_3();
  v645 = v93;
  v94 = OUTLINED_FUNCTION_138();
  v690 = type metadata accessor for StandardLockupListView(v94);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v95);
  OUTLINED_FUNCTION_9_3();
  v671 = v96;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF400F0, &qword_1E42EC8C0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v97);
  OUTLINED_FUNCTION_26_2();
  v711 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3FD78, &qword_1E42EC550);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v98);
  OUTLINED_FUNCTION_44();
  v689 = v99;
  v100 = OUTLINED_FUNCTION_138();
  type metadata accessor for SearchTopResultLockup(v100);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v101);
  OUTLINED_FUNCTION_9_3();
  v701 = v102;
  v103 = OUTLINED_FUNCTION_138();
  v104 = type metadata accessor for OfferCard(v103);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v105);
  OUTLINED_FUNCTION_5();
  v108 = v107 - v106;
  v732 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF400F8, &qword_1E42EC8C8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v109);
  OUTLINED_FUNCTION_44();
  v733 = v110;
  v727 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF40100, &qword_1E42EC8D0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v111);
  OUTLINED_FUNCTION_44();
  v729 = v112;
  v720 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF40108, &qword_1E42EC8D8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v113);
  OUTLINED_FUNCTION_44();
  v722 = v114;
  v707 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF40110, &qword_1E42EC8E0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v115);
  OUTLINED_FUNCTION_44();
  v709 = v116;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF40118, &qword_1E42EC8E8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v117);
  OUTLINED_FUNCTION_8_4();
  v708 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3FD70, &qword_1E42EC548);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v118);
  OUTLINED_FUNCTION_20_1();
  v721 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3FD68, &qword_1E42EC540);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v119);
  OUTLINED_FUNCTION_44();
  v710 = v120;
  v728 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3FD60, &qword_1E42EC538);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v121);
  OUTLINED_FUNCTION_44();
  v724 = v122;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3FD58, &qword_1E42EC530);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v123);
  v127 = &v636 - v126;
  v128 = *(v5 + 98);
  v731 = v129;
  v725 = v127;
  switch(v128)
  {
    case 196:
      if (TVAppFeature.isEnabled.getter(10, v124, v125))
      {

        OUTLINED_FUNCTION_80_23();
        v278 = v637;
        v279 = OUTLINED_FUNCTION_67_0();
        sub_1E3E2B21C(v279, v280, v281);
        OUTLINED_FUNCTION_101_16();
        sub_1E40FC89C(v278, v655, v282);
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_7_243();
        v284 = sub_1E40FCB48(v283);
        OUTLINED_FUNCTION_5_1(v284);
        v285 = v656;
        sub_1E4201F44();
        v286 = OUTLINED_FUNCTION_138_0();
        sub_1E40FC8F8(v286, v287);
      }

      else
      {
        OUTLINED_FUNCTION_23();
        v553 = v643;
        nullsub_1();
        v554 = v644;
        v555 = v663;
        (*(v644 + 16))(v655, v553, v663);
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_7_243();
        v557 = sub_1E40FCB48(v556);
        OUTLINED_FUNCTION_5_1(v557);
        v285 = v656;
        sub_1E4201F44();
        (*(v554 + 8))(v553, v555);
      }

      v194 = &qword_1E42EC5F8;
      sub_1E3743538(v285, v687, &qword_1ECF3FE20, &qword_1E42EC5F8);
      swift_storeEnumTagMultiPayload();
      sub_1E40F6A44();
      sub_1E4201F44();
      OUTLINED_FUNCTION_123_0();
      OUTLINED_FUNCTION_69_0();
      sub_1E3743538(v558, v559, v560, v561);
      swift_storeEnumTagMultiPayload();
      sub_1E40F5988();
      OUTLINED_FUNCTION_1_305();
      OUTLINED_FUNCTION_90();
      sub_1E40F8F18(v562);
      sub_1E4201F44();
      v563 = OUTLINED_FUNCTION_49_64();
      sub_1E325F6F0(v563, v564, v565);
      v324 = v285;
      v325 = &qword_1ECF3FE20;
      goto LABEL_21;
    case 197:
    case 198:
    case 199:
    case 200:
    case 201:
    case 206:
    case 207:
    case 208:
    case 209:
    case 210:
    case 211:
    case 212:
    case 216:
    case 218:
      goto LABEL_10;
    case 202:

      OUTLINED_FUNCTION_80_23();
      v288 = OUTLINED_FUNCTION_67_0();
      sub_1E40293BC(v288, v289, v290);
      memcpy(v661, v738, 0xE8uLL);
      swift_storeEnumTagMultiPayload();
      v291 = OUTLINED_FUNCTION_211_1();
      sub_1E402A3E4(v291, v292);
      v293 = sub_1E40F62B0();
      sub_1E40F6384(v293, v294, v295);
      OUTLINED_FUNCTION_110_16();
      sub_1E4201F44();
      OUTLINED_FUNCTION_32_3();
      sub_1E3743538(v296, v297, v298, v299);
      swift_storeEnumTagMultiPayload();
      sub_1E40F6050();
      sub_1E40F6224();
      OUTLINED_FUNCTION_140_3();
      sub_1E4201F44();
      v300 = OUTLINED_FUNCTION_10_13();
      sub_1E325F6F0(v300, v301, v302);
      OUTLINED_FUNCTION_32_3();
      sub_1E3743538(v303, v304, v305, v306);
      swift_storeEnumTagMultiPayload();
      sub_1E40F5FC4();
      sub_1E40F63D8();
      OUTLINED_FUNCTION_86_22();
      OUTLINED_FUNCTION_140_9();
      sub_1E4201F44();
      v307 = OUTLINED_FUNCTION_8_12();
      sub_1E325F6F0(v307, v308, v309);
      v310 = v729;
      OUTLINED_FUNCTION_32_3();
      sub_1E3743538(v311, v312, v313, v314);
      OUTLINED_FUNCTION_191_5(v310);
      sub_1E40F5A14();
      sub_1E40F5F38();
      v189 = v725;
      OUTLINED_FUNCTION_140_3();
      OUTLINED_FUNCTION_90_23();
      sub_1E4201F44();
      v315 = OUTLINED_FUNCTION_10_13();
      sub_1E325F6F0(v315, v316, v317);
      v193 = &qword_1ECF3FD58;
      v194 = &qword_1E42EC530;
      v318 = v733;
      OUTLINED_FUNCTION_32_3();
      sub_1E3743538(v319, v320, v321, v322);
      OUTLINED_FUNCTION_159_4(v318);
      sub_1E40F5988();
      OUTLINED_FUNCTION_1_305();
      sub_1E40F8F18(v323);
      OUTLINED_FUNCTION_61_31();
      sub_1E40FA764(v738);
      goto LABEL_19;
    case 203:

      OUTLINED_FUNCTION_80_23();
      v209 = OUTLINED_FUNCTION_67_0();
      sub_1E40E2B9C(v209, v210, v211);
      memcpy(v664, v738, 0xD8uLL);
      swift_storeEnumTagMultiPayload();
      v212 = OUTLINED_FUNCTION_211_1();
      v214 = sub_1E40F914C(v212, v213);
      sub_1E40F69F0(v214, v215, v216);
      OUTLINED_FUNCTION_5_249();
      sub_1E40FCB48(v217);
      OUTLINED_FUNCTION_110_16();
      sub_1E4201F44();
      OUTLINED_FUNCTION_32_3();
      sub_1E3743538(v218, v219, v220, v221);
      swift_storeEnumTagMultiPayload();
      sub_1E40F6464();
      sub_1E40F6934();
      OUTLINED_FUNCTION_140_3();
      sub_1E4201F44();
      v222 = OUTLINED_FUNCTION_10_13();
      sub_1E325F6F0(v222, v223, v224);
      v225 = v717;
      OUTLINED_FUNCTION_32_3();
      sub_1E3743538(v226, v227, v228, v229);
      OUTLINED_FUNCTION_226_0(v225);
      sub_1E40F5FC4();
      sub_1E40F63D8();
      OUTLINED_FUNCTION_86_22();
      OUTLINED_FUNCTION_140_9();
      sub_1E4201F44();
      v230 = OUTLINED_FUNCTION_8_12();
      sub_1E325F6F0(v230, v231, v232);
      v233 = v729;
      OUTLINED_FUNCTION_32_3();
      sub_1E3743538(v234, v235, v236, v237);
      OUTLINED_FUNCTION_191_5(v233);
      sub_1E40F5A14();
      sub_1E40F5F38();
      v189 = v725;
      OUTLINED_FUNCTION_140_3();
      OUTLINED_FUNCTION_90_23();
      sub_1E4201F44();
      v238 = OUTLINED_FUNCTION_10_13();
      sub_1E325F6F0(v238, v239, v240);
      v193 = &qword_1ECF3FD58;
      v194 = &qword_1E42EC530;
      v241 = v733;
      OUTLINED_FUNCTION_32_3();
      sub_1E3743538(v242, v243, v244, v245);
      OUTLINED_FUNCTION_159_4(v241);
      sub_1E40F5988();
      OUTLINED_FUNCTION_1_305();
      sub_1E40F8F18(v246);
      OUTLINED_FUNCTION_61_31();
      sub_1E40F91A8(v738);
      goto LABEL_19;
    case 204:

      OUTLINED_FUNCTION_80_23();
      v206 = v649;
      v336 = OUTLINED_FUNCTION_67_0();
      sub_1E3AE3D48(v336, v337, v338);
      OUTLINED_FUNCTION_96_22();
      sub_1E40FC89C(v206, v681, v339);
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_12_171();
      sub_1E40FCB48(v340);
      sub_1E40F610C();
      OUTLINED_FUNCTION_105_16();
      sub_1E4201F44();
      OUTLINED_FUNCTION_7_24();
      sub_1E3743538(v341, v342, v343, v344);
      swift_storeEnumTagMultiPayload();
      sub_1E40F6050();
      sub_1E40F6224();
      OUTLINED_FUNCTION_76_26();
      sub_1E4201F44();
      v345 = OUTLINED_FUNCTION_11_103();
      sub_1E325F6F0(v345, v346, v347);
      OUTLINED_FUNCTION_7_24();
      sub_1E3743538(v348, v349, v350, v351);
      swift_storeEnumTagMultiPayload();
      sub_1E40F5FC4();
      sub_1E40F63D8();
      OUTLINED_FUNCTION_88_22();
      OUTLINED_FUNCTION_140_9();
      sub_1E4201F44();
      v352 = OUTLINED_FUNCTION_31_96();
      sub_1E325F6F0(v352, v353, v354);
      OUTLINED_FUNCTION_7_24();
      sub_1E3743538(v355, v356, v357, v358);
      OUTLINED_FUNCTION_154_7();
      swift_storeEnumTagMultiPayload();
      sub_1E40F5A14();
      sub_1E40F5F38();
      OUTLINED_FUNCTION_39_67();
      sub_1E4201F44();
      v359 = OUTLINED_FUNCTION_11_103();
      sub_1E325F6F0(v359, v360, v361);
      goto LABEL_29;
    case 205:
      type metadata accessor for PlaybackSongViewModel(0);
      if (swift_dynamicCastClass())
      {
        OUTLINED_FUNCTION_200_4();
        sub_1E375C1CC(v726, v738);
        v393 = v638;
        OUTLINED_FUNCTION_57();
        sub_1E417B65C();
        type metadata accessor for Router(0);
        sub_1E40C4334();

        OUTLINED_FUNCTION_34();
        sub_1E40C49A8();
        v395 = v394;

        OUTLINED_FUNCTION_38_78();
        sub_1E40FCB48(v396);
        OUTLINED_FUNCTION_20_2();
        v397 = sub_1E4200504();
        v398 = (v393 + *(v651 + 36));
        *v398 = v397;
        v398[1] = v395;
        OUTLINED_FUNCTION_18_5();
        sub_1E3743538(v399, v400, v401, v402);
        swift_storeEnumTagMultiPayload();
        sub_1E40F613C();
        v403 = v684;
        OUTLINED_FUNCTION_105_16();
        sub_1E4201F44();

        v404 = OUTLINED_FUNCTION_10_13();
        sub_1E325F6F0(v404, v405, v406);
      }

      else
      {
        swift_storeEnumTagMultiPayload();
        sub_1E40F613C();
        v403 = v684;
        OUTLINED_FUNCTION_122_11();
        sub_1E4201F44();
      }

      v605 = v733;
      sub_1E3743538(v403, v681, &qword_1ECF3FDB0, &qword_1E42EC588);
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_12_171();
      sub_1E40FCB48(v606);
      sub_1E40F610C();
      OUTLINED_FUNCTION_184_2();
      sub_1E4201F44();
      OUTLINED_FUNCTION_42_74();
      sub_1E3743538(v607, v608, v609, v610);
      OUTLINED_FUNCTION_57();
      swift_storeEnumTagMultiPayload();
      sub_1E40F6050();
      sub_1E40F6224();
      OUTLINED_FUNCTION_124_10();
      sub_1E4201F44();
      v611 = OUTLINED_FUNCTION_33_92();
      sub_1E325F6F0(v611, v612, v613);
      OUTLINED_FUNCTION_42_74();
      sub_1E3743538(v614, v615, v616, v617);
      swift_storeEnumTagMultiPayload();
      sub_1E40F5FC4();
      sub_1E40F63D8();
      OUTLINED_FUNCTION_158_10();
      OUTLINED_FUNCTION_140_9();
      sub_1E4201F44();
      OUTLINED_FUNCTION_90();
      sub_1E325F6F0(v618, v619, v620);
      OUTLINED_FUNCTION_42_74();
      sub_1E3743538(v621, v622, v623, v624);
      swift_storeEnumTagMultiPayload();
      sub_1E40F5A14();
      sub_1E40F5F38();
      OUTLINED_FUNCTION_95_21();
      OUTLINED_FUNCTION_90_23();
      sub_1E4201F44();
      OUTLINED_FUNCTION_90();
      sub_1E325F6F0(v625, v626, v627);
      OUTLINED_FUNCTION_123_0();
      OUTLINED_FUNCTION_69_0();
      sub_1E3743538(v628, v629, v630, v631);
      OUTLINED_FUNCTION_159_4(v605);
      sub_1E40F5988();
      OUTLINED_FUNCTION_1_305();
      sub_1E40F8F18(v632);
      OUTLINED_FUNCTION_87_18();
      OUTLINED_FUNCTION_198_3();
      v633 = OUTLINED_FUNCTION_49_64();
      sub_1E325F6F0(v633, v634, v635);
      sub_1E325F6F0(v684, &qword_1ECF3FDB0, &qword_1E42EC588);
      goto LABEL_32;
    case 213:

      OUTLINED_FUNCTION_80_23();
      v206 = v645;
      OUTLINED_FUNCTION_67_0();
      sub_1E3BC90F4();
      OUTLINED_FUNCTION_103_16();
      sub_1E40FC89C(v206, v670, v208);
      OUTLINED_FUNCTION_182_6();
      goto LABEL_24;
    case 214:

      OUTLINED_FUNCTION_80_23();
      v206 = v648;
      OUTLINED_FUNCTION_67_0();
      sub_1E3B33074();
      OUTLINED_FUNCTION_104_19();
      sub_1E40FC89C(v206, v676, v207);
      goto LABEL_27;
    case 215:
      v104 = v726;
      memcpy(v737, v726, sizeof(v737));
      nullsub_1();
      v327 = OUTLINED_FUNCTION_211_1();
      memcpy(v327, v328, 0xC3uLL);

      sub_1E375C1CC(v104, &v736);
      v206 = v647;
      sub_1E38F6F20(v5, v738, v647);
      OUTLINED_FUNCTION_98_17();
      sub_1E40FC89C(v206, v670, v329);
LABEL_24:
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_35_82();
      sub_1E40FCB48(v330);
      OUTLINED_FUNCTION_34_79();
      sub_1E40FCB48(v331);
      OUTLINED_FUNCTION_105_16();
      sub_1E4201F44();
      OUTLINED_FUNCTION_7_24();
      sub_1E3743538(v332, v333, v334, v335);
      goto LABEL_28;
    case 217:

      OUTLINED_FUNCTION_80_23();
      v206 = v646;
      OUTLINED_FUNCTION_67_0();
      sub_1E375DE78();
      v104 = type metadata accessor for TeamLockup;
      sub_1E40FC89C(v206, v676, type metadata accessor for TeamLockup);
LABEL_27:
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_119_10();
      sub_1E40FCB48(v362);
      OUTLINED_FUNCTION_20_130();
      sub_1E40FCB48(v363);
      OUTLINED_FUNCTION_105_16();
      sub_1E4201F44();
      OUTLINED_FUNCTION_7_24();
      sub_1E3743538(v364, v365, v366, v367);
LABEL_28:
      swift_storeEnumTagMultiPayload();
      sub_1E40F5D60();
      sub_1E40F5E4C();
      OUTLINED_FUNCTION_76_26();
      sub_1E4201F44();
      v368 = OUTLINED_FUNCTION_11_103();
      sub_1E325F6F0(v368, v369, v370);
      OUTLINED_FUNCTION_7_24();
      sub_1E3743538(v371, v372, v373, v374);
      swift_storeEnumTagMultiPayload();
      sub_1E40F5AA0();
      sub_1E40F5CD4();
      OUTLINED_FUNCTION_67_32();
      sub_1E4201F44();
      v375 = OUTLINED_FUNCTION_31_96();
      sub_1E325F6F0(v375, v376, v377);
      OUTLINED_FUNCTION_7_24();
      sub_1E3743538(v378, v379, v380, v381);
      OUTLINED_FUNCTION_154_7();
      swift_storeEnumTagMultiPayload();
      sub_1E40F5A14();
      sub_1E40F5F38();
      OUTLINED_FUNCTION_39_67();
      sub_1E4201F44();
      v382 = OUTLINED_FUNCTION_11_103();
      sub_1E325F6F0(v382, v383, v384);
LABEL_29:
      OUTLINED_FUNCTION_7_24();
      sub_1E3743538(v385, v386, v387, v388);
      OUTLINED_FUNCTION_143_7();
      sub_1E40F5988();
      OUTLINED_FUNCTION_1_305();
      sub_1E40F8F18(v389);
      OUTLINED_FUNCTION_32_94();
      sub_1E4201F44();
      v390 = OUTLINED_FUNCTION_31_96();
      sub_1E325F6F0(v390, v391, v392);
      v164 = v206;
      goto LABEL_30;
    case 219:
    case 220:

      v130 = v726;
      sub_1E375C1CC(v726, v738);
      v131 = v701;
      v132 = OUTLINED_FUNCTION_139_13();
      sub_1E3BAE580(v132, v130, v133);
      v134 = type metadata accessor for SearchTopResultLockup;
      sub_1E40FC89C(v131, v0, type metadata accessor for SearchTopResultLockup);
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_114_13();
      sub_1E40FCB48(v135);
      OUTLINED_FUNCTION_113_13();
      sub_1E40FCB48(v136);
      OUTLINED_FUNCTION_180_4();
      OUTLINED_FUNCTION_55_0();
      sub_1E3743538(v137, v138, v139, &qword_1E42EC550);
      OUTLINED_FUNCTION_213_0();
      swift_storeEnumTagMultiPayload();
      sub_1E40F5B2C();
      sub_1E40F5BE8();
      OUTLINED_FUNCTION_77_25();
      v140 = OUTLINED_FUNCTION_63_0();
      sub_1E325F6F0(v140, v141, &qword_1E42EC550);
      OUTLINED_FUNCTION_43_72();
      sub_1E3743538(v142, v143, v144, v145);
      OUTLINED_FUNCTION_194_4();
      sub_1E40F5AA0();
      sub_1E40F5CD4();
      OUTLINED_FUNCTION_67_32();
      sub_1E4201F44();
      v146 = OUTLINED_FUNCTION_6_181();
      sub_1E325F6F0(v146, v147, v148);
      OUTLINED_FUNCTION_43_72();
      sub_1E3743538(v149, v150, v151, v152);
      OUTLINED_FUNCTION_154_7();
      swift_storeEnumTagMultiPayload();
      sub_1E40F5A14();
      sub_1E40F5F38();
      OUTLINED_FUNCTION_39_67();
      sub_1E4201F44();
      v153 = OUTLINED_FUNCTION_30_88();
      sub_1E325F6F0(v153, v154, v155);
      OUTLINED_FUNCTION_43_72();
      sub_1E3743538(v156, v157, v158, v159);
      OUTLINED_FUNCTION_143_7();
      sub_1E40F5988();
      OUTLINED_FUNCTION_1_305();
      sub_1E40F8F18(v160);
      OUTLINED_FUNCTION_32_94();
      sub_1E4201F44();
      v161 = OUTLINED_FUNCTION_10_13();
      sub_1E325F6F0(v161, v162, v163);
      v164 = v701;
      goto LABEL_15;
    case 221:

      sub_1E375C1CC(v726, v738);
      v247 = v671;
      OUTLINED_FUNCTION_139_13();
      sub_1E3C6E960();
      v134 = type metadata accessor for StandardLockupListView;
      sub_1E40FC89C(v247, v0, type metadata accessor for StandardLockupListView);
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_114_13();
      sub_1E40FCB48(v248);
      OUTLINED_FUNCTION_113_13();
      sub_1E40FCB48(v249);
      OUTLINED_FUNCTION_180_4();
      OUTLINED_FUNCTION_55_0();
      sub_1E3743538(v250, v251, v252, &qword_1E42EC550);
      OUTLINED_FUNCTION_213_0();
      swift_storeEnumTagMultiPayload();
      sub_1E40F5B2C();
      sub_1E40F5BE8();
      OUTLINED_FUNCTION_77_25();
      v253 = OUTLINED_FUNCTION_63_0();
      sub_1E325F6F0(v253, v254, &qword_1E42EC550);
      OUTLINED_FUNCTION_43_72();
      sub_1E3743538(v255, v256, v257, v258);
      OUTLINED_FUNCTION_194_4();
      sub_1E40F5AA0();
      sub_1E40F5CD4();
      OUTLINED_FUNCTION_67_32();
      sub_1E4201F44();
      v259 = OUTLINED_FUNCTION_6_181();
      sub_1E325F6F0(v259, v260, v261);
      OUTLINED_FUNCTION_43_72();
      sub_1E3743538(v262, v263, v264, v265);
      OUTLINED_FUNCTION_154_7();
      swift_storeEnumTagMultiPayload();
      sub_1E40F5A14();
      sub_1E40F5F38();
      OUTLINED_FUNCTION_39_67();
      sub_1E4201F44();
      v266 = OUTLINED_FUNCTION_30_88();
      sub_1E325F6F0(v266, v267, v268);
      OUTLINED_FUNCTION_43_72();
      sub_1E3743538(v269, v270, v271, v272);
      OUTLINED_FUNCTION_143_7();
      sub_1E40F5988();
      OUTLINED_FUNCTION_1_305();
      sub_1E40F8F18(v273);
      OUTLINED_FUNCTION_32_94();
      sub_1E4201F44();
      v274 = OUTLINED_FUNCTION_10_13();
      sub_1E325F6F0(v274, v275, v276);
      v164 = v671;
LABEL_15:
      v277 = v134;
      goto LABEL_31;
    default:
      v706 = v104;
      v165 = v713;
      v104 = v714;
      v166 = v725;
      switch(v128)
      {
        case 257:
          v523 = v127;
          swift_storeEnumTagMultiPayload();
          sub_1E40F64F0();
          OUTLINED_FUNCTION_122_11();
          sub_1E4201F44();
          OUTLINED_FUNCTION_32_3();
          sub_1E3743538(v524, v525, v526, v527);
          swift_storeEnumTagMultiPayload();
          sub_1E40F6464();
          sub_1E40F6934();
          OUTLINED_FUNCTION_145_2();
          v528 = OUTLINED_FUNCTION_30_88();
          sub_1E325F6F0(v528, v529, v530);
          v531 = v717;
          OUTLINED_FUNCTION_32_3();
          sub_1E3743538(v532, v533, v534, v535);
          OUTLINED_FUNCTION_226_0(v531);
          sub_1E40F5FC4();
          sub_1E40F63D8();
          OUTLINED_FUNCTION_184_2();
          OUTLINED_FUNCTION_140_9();
          sub_1E4201F44();
          v536 = OUTLINED_FUNCTION_6_181();
          sub_1E325F6F0(v536, v537, v538);
          v539 = v729;
          OUTLINED_FUNCTION_32_3();
          sub_1E3743538(v540, v541, v542, v543);
          OUTLINED_FUNCTION_191_5(v539);
          sub_1E40F5A14();
          sub_1E40F5F38();
          OUTLINED_FUNCTION_86_22();
          OUTLINED_FUNCTION_90_23();
          sub_1E4201F44();
          v544 = OUTLINED_FUNCTION_30_88();
          sub_1E325F6F0(v544, v545, v546);
          v193 = &qword_1ECF3FD58;
          v194 = &qword_1E42EC530;
          v547 = v733;
          OUTLINED_FUNCTION_32_3();
          sub_1E3743538(v548, v549, v550, v551);
          OUTLINED_FUNCTION_159_4(v547);
          sub_1E40F5988();
          OUTLINED_FUNCTION_1_305();
          sub_1E40F8F18(v552);
          OUTLINED_FUNCTION_87_18();
          sub_1E4201F44();
          v324 = v523;
          goto LABEL_20;
        case 170:
          v725 = v127;
          if (TVAppFeature.isEnabled.getter(10, v124, v125))
          {

            OUTLINED_FUNCTION_80_23();
            v514 = v636;
            v515 = OUTLINED_FUNCTION_67_0();
            sub_1E3D044C0(v515, v516, v517);
            sub_1E40FC89C(v514, v641, type metadata accessor for EditorialLockup);
            swift_storeEnumTagMultiPayload();
            OUTLINED_FUNCTION_17_151();
            v519 = sub_1E40FCB48(v518);
            OUTLINED_FUNCTION_5_1(v519);
            v520 = v642;
            OUTLINED_FUNCTION_105_16();
            sub_1E4201F44();
            v521 = OUTLINED_FUNCTION_76_0();
            sub_1E40FC8F8(v521, v522);
          }

          else
          {
            OUTLINED_FUNCTION_23();
            v566 = v643;
            nullsub_1();
            (*(v644 + 16))(v641, v566, v663);
            swift_storeEnumTagMultiPayload();
            OUTLINED_FUNCTION_17_151();
            v568 = sub_1E40FCB48(v567);
            OUTLINED_FUNCTION_5_1(v568);
            v520 = v642;
            OUTLINED_FUNCTION_88_22();
            sub_1E4201F44();
            v569 = OUTLINED_FUNCTION_39_3();
            v570(v569);
          }

          v571 = v733;
          sub_1E3743538(v520, v661, &qword_1ECF3FDC8, &qword_1E42EC5A0);
          OUTLINED_FUNCTION_63_0();
          swift_storeEnumTagMultiPayload();
          v572 = sub_1E40F62B0();
          sub_1E40F6384(v572, v573, v574);
          OUTLINED_FUNCTION_124_10();
          sub_1E4201F44();
          OUTLINED_FUNCTION_42_74();
          sub_1E3743538(v575, v576, v577, v578);
          OUTLINED_FUNCTION_97_1();
          swift_storeEnumTagMultiPayload();
          sub_1E40F6050();
          sub_1E40F6224();
          OUTLINED_FUNCTION_95_21();
          sub_1E4201F44();
          OUTLINED_FUNCTION_90();
          sub_1E325F6F0(v579, v580, v581);
          OUTLINED_FUNCTION_42_74();
          sub_1E3743538(v582, v583, v584, v585);
          OUTLINED_FUNCTION_57();
          swift_storeEnumTagMultiPayload();
          sub_1E40F5FC4();
          sub_1E40F63D8();
          OUTLINED_FUNCTION_158_10();
          OUTLINED_FUNCTION_140_9();
          sub_1E4201F44();
          v586 = OUTLINED_FUNCTION_49_64();
          sub_1E325F6F0(v586, v587, v588);
          v589 = v729;
          OUTLINED_FUNCTION_42_74();
          sub_1E3743538(v590, v591, v592, v593);
          OUTLINED_FUNCTION_191_5(v589);
          sub_1E40F5A14();
          sub_1E40F5F38();
          OUTLINED_FUNCTION_95_21();
          OUTLINED_FUNCTION_90_23();
          sub_1E4201F44();
          OUTLINED_FUNCTION_90();
          sub_1E325F6F0(v594, v595, v596);
          OUTLINED_FUNCTION_123_0();
          OUTLINED_FUNCTION_69_0();
          sub_1E3743538(v597, v598, v599, v600);
          OUTLINED_FUNCTION_159_4(v571);
          sub_1E40F5988();
          OUTLINED_FUNCTION_1_305();
          sub_1E40F8F18(v601);
          OUTLINED_FUNCTION_87_18();
          OUTLINED_FUNCTION_198_3();
          v602 = OUTLINED_FUNCTION_49_64();
          sub_1E325F6F0(v602, v603, v604);
          v324 = v520;
          v325 = &qword_1ECF3FDC8;
          v326 = &qword_1E42EC5A0;
          goto LABEL_22;
        case 181:

          OUTLINED_FUNCTION_80_23();
          v407 = OUTLINED_FUNCTION_67_0();
          sub_1E3803980(v407, v408, v409);
          OUTLINED_FUNCTION_116_16();
          sub_1E40FC89C(v108, v1, v410);
          v411 = swift_storeEnumTagMultiPayload();
          sub_1E3ACEFC4(v411, v412, v413);
          OUTLINED_FUNCTION_15_173();
          sub_1E40FCB48(v414);
          OUTLINED_FUNCTION_140_3();
          sub_1E4201F44();
          OUTLINED_FUNCTION_11_61();
          sub_1E3743538(v415, v416, v417, v418);
          OUTLINED_FUNCTION_213_0();
          swift_storeEnumTagMultiPayload();
          sub_1E40F5B2C();
          sub_1E40F5BE8();
          OUTLINED_FUNCTION_77_25();
          OUTLINED_FUNCTION_90();
          sub_1E325F6F0(v419, v420, v421);
          OUTLINED_FUNCTION_7_24();
          sub_1E3743538(v422, v423, v424, v425);
          OUTLINED_FUNCTION_194_4();
          sub_1E40F5AA0();
          sub_1E40F5CD4();
          OUTLINED_FUNCTION_76_26();
          sub_1E4201F44();
          v426 = OUTLINED_FUNCTION_54_55();
          sub_1E325F6F0(v426, v427, v428);
          OUTLINED_FUNCTION_7_24();
          sub_1E3743538(v429, v430, v431, v432);
          OUTLINED_FUNCTION_154_7();
          swift_storeEnumTagMultiPayload();
          sub_1E40F5A14();
          sub_1E40F5F38();
          OUTLINED_FUNCTION_134_10();
          OUTLINED_FUNCTION_90_23();
          sub_1E4201F44();
          v433 = OUTLINED_FUNCTION_31_96();
          sub_1E325F6F0(v433, v434, v435);
          OUTLINED_FUNCTION_7_24();
          sub_1E3743538(v436, v437, v438, v439);
          OUTLINED_FUNCTION_143_7();
          sub_1E40F5988();
          OUTLINED_FUNCTION_1_305();
          sub_1E40F8F18(v440);
          OUTLINED_FUNCTION_32_94();
          sub_1E4201F44();
          OUTLINED_FUNCTION_55_0();
          sub_1E325F6F0(v441, v442, v443);
          v164 = v108;
          break;
        case 254:

          OUTLINED_FUNCTION_80_23();
          v476 = OUTLINED_FUNCTION_67_0();
          sub_1E3CA9A10(v476, v477, v478);
          OUTLINED_FUNCTION_115_11();
          sub_1E40FC89C(v166, v664, v479);
          v480 = swift_storeEnumTagMultiPayload();
          sub_1E40F69F0(v480, v481, v482);
          OUTLINED_FUNCTION_5_249();
          sub_1E40FCB48(v483);
          OUTLINED_FUNCTION_105_16();
          sub_1E4201F44();
          OUTLINED_FUNCTION_7_24();
          sub_1E3743538(v484, v485, v486, v487);
          swift_storeEnumTagMultiPayload();
          sub_1E40F6464();
          sub_1E40F6934();
          sub_1E4201F44();
          v488 = OUTLINED_FUNCTION_11_103();
          sub_1E325F6F0(v488, v489, v490);
          v491 = v717;
          OUTLINED_FUNCTION_7_24();
          sub_1E3743538(v492, v493, v494, v495);
          OUTLINED_FUNCTION_226_0(v491);
          sub_1E40F5FC4();
          sub_1E40F63D8();
          OUTLINED_FUNCTION_88_22();
          OUTLINED_FUNCTION_140_9();
          sub_1E4201F44();
          v496 = OUTLINED_FUNCTION_54_55();
          sub_1E325F6F0(v496, v497, v498);
          OUTLINED_FUNCTION_7_24();
          sub_1E3743538(v499, v500, v501, v502);
          OUTLINED_FUNCTION_154_7();
          swift_storeEnumTagMultiPayload();
          sub_1E40F5A14();
          sub_1E40F5F38();
          OUTLINED_FUNCTION_76_26();
          OUTLINED_FUNCTION_90_23();
          sub_1E4201F44();
          v503 = OUTLINED_FUNCTION_11_103();
          sub_1E325F6F0(v503, v504, v505);
          OUTLINED_FUNCTION_7_24();
          sub_1E3743538(v506, v507, v508, v509);
          OUTLINED_FUNCTION_143_7();
          sub_1E40F5988();
          OUTLINED_FUNCTION_1_305();
          sub_1E40F8F18(v510);
          OUTLINED_FUNCTION_32_94();
          sub_1E4201F44();
          v511 = OUTLINED_FUNCTION_31_96();
          sub_1E325F6F0(v511, v512, v513);
          v164 = v166;
          break;
        default:
          v725 = v127;
          if (v128 == 256)
          {
            OUTLINED_FUNCTION_139_13();
            sub_1E40F9B18();
            v194 = &qword_1E42EC5B8;
            sub_1E3743538(v104, v165, &qword_1ECF3FDE0, &qword_1E42EC5B8);
            swift_storeEnumTagMultiPayload();
            sub_1E40F64F0();
            sub_1E4201F44();
            OUTLINED_FUNCTION_24_114();
            sub_1E3743538(v444, v445, v446, v447);
            swift_storeEnumTagMultiPayload();
            sub_1E40F6464();
            sub_1E40F6934();
            OUTLINED_FUNCTION_52_43();
            OUTLINED_FUNCTION_190_3();
            v448 = OUTLINED_FUNCTION_34_11();
            sub_1E325F6F0(v448, v449, v450);
            v451 = v717;
            OUTLINED_FUNCTION_24_114();
            sub_1E3743538(v452, v453, v454, v455);
            OUTLINED_FUNCTION_226_0(v451);
            sub_1E40F5FC4();
            sub_1E40F63D8();
            OUTLINED_FUNCTION_165_10();
            OUTLINED_FUNCTION_140_9();
            sub_1E4201F44();
            v456 = OUTLINED_FUNCTION_49_64();
            sub_1E325F6F0(v456, v457, v458);
            v459 = v729;
            OUTLINED_FUNCTION_24_114();
            sub_1E3743538(v460, v461, v462, v463);
            OUTLINED_FUNCTION_191_5(v459);
            sub_1E40F5A14();
            sub_1E40F5F38();
            OUTLINED_FUNCTION_94_24();
            OUTLINED_FUNCTION_90_23();
            sub_1E4201F44();
            v464 = OUTLINED_FUNCTION_34_11();
            sub_1E325F6F0(v464, v465, v466);
            v467 = v733;
            OUTLINED_FUNCTION_24_114();
            sub_1E3743538(v468, v469, v470, v471);
            OUTLINED_FUNCTION_159_4(v467);
            sub_1E40F5988();
            OUTLINED_FUNCTION_1_305();
            sub_1E40F8F18(v472);
            OUTLINED_FUNCTION_87_18();
            OUTLINED_FUNCTION_198_3();
            v473 = OUTLINED_FUNCTION_33_92();
            sub_1E325F6F0(v473, v474, v475);
            v324 = v104;
            v325 = &qword_1ECF3FDE0;
            goto LABEL_21;
          }

          if (v128 == 167)
          {

            OUTLINED_FUNCTION_80_23();
            v167 = OUTLINED_FUNCTION_67_0();
            sub_1E3ACEC30(v167, v168, v169);
            memcpy(v1, v738, 0xE1uLL);
            swift_storeEnumTagMultiPayload();
            v170 = OUTLINED_FUNCTION_211_1();
            v172 = sub_1E40FA7B8(v170, v171);
            sub_1E3ACEFC4(v172, v173, v174);
            OUTLINED_FUNCTION_15_173();
            sub_1E40FCB48(v175);
            OUTLINED_FUNCTION_140_3();
            sub_1E4201F44();
            sub_1E3743538(v2, v709, &qword_1ECF3FD70, &qword_1E42EC548);
            OUTLINED_FUNCTION_213_0();
            swift_storeEnumTagMultiPayload();
            sub_1E40F5B2C();
            sub_1E40F5BE8();
            sub_1E4201F44();
            v176 = OUTLINED_FUNCTION_138_0();
            sub_1E325F6F0(v176, v177, &qword_1E42EC548);
            OUTLINED_FUNCTION_32_3();
            sub_1E3743538(v178, v179, v180, v181);
            swift_storeEnumTagMultiPayload();
            sub_1E40F5AA0();
            sub_1E40F5CD4();
            OUTLINED_FUNCTION_86_22();
            sub_1E4201F44();
            v182 = OUTLINED_FUNCTION_30_88();
            sub_1E325F6F0(v182, v183, v184);
            OUTLINED_FUNCTION_32_3();
            sub_1E3743538(v185, v186, v187, v188);
            swift_storeEnumTagMultiPayload();
            sub_1E40F5A14();
            sub_1E40F5F38();
            v189 = v725;
            OUTLINED_FUNCTION_140_3();
            OUTLINED_FUNCTION_90_23();
            sub_1E4201F44();
            v190 = OUTLINED_FUNCTION_10_13();
            sub_1E325F6F0(v190, v191, v192);
            v193 = &qword_1ECF3FD58;
            v194 = &qword_1E42EC530;
            v195 = v733;
            OUTLINED_FUNCTION_32_3();
            sub_1E3743538(v196, v197, v198, v199);
            OUTLINED_FUNCTION_159_4(v195);
            sub_1E40F5988();
            OUTLINED_FUNCTION_1_305();
            sub_1E40F8F18(v200);
            OUTLINED_FUNCTION_61_31();
            sub_1E40FA814(v738);
          }

          else
          {
LABEL_10:
            swift_storeEnumTagMultiPayload();
            sub_1E40F6A44();
            v189 = v688;
            sub_1E4201F44();
            v193 = &qword_1ECF3FE18;
            v194 = &qword_1E42EC5F0;
            OUTLINED_FUNCTION_32_3();
            sub_1E3743538(v201, v202, v203, v204);
            swift_storeEnumTagMultiPayload();
            sub_1E40F5988();
            OUTLINED_FUNCTION_1_305();
            OUTLINED_FUNCTION_82();
            sub_1E40F8F18(v205);
            OUTLINED_FUNCTION_61_31();
          }

LABEL_19:
          v324 = v189;
LABEL_20:
          v325 = v193;
LABEL_21:
          v326 = v194;
LABEL_22:
          sub_1E325F6F0(v324, v325, v326);
          goto LABEL_32;
      }

LABEL_30:
      v277 = v104;
LABEL_31:
      sub_1E40FC8F8(v164, v277);
LABEL_32:
      OUTLINED_FUNCTION_25_2();
      return;
  }
}

void sub_1E40EDE84()
{
  OUTLINED_FUNCTION_31_1();
  OUTLINED_FUNCTION_176_8(v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3FE30, &qword_1E42EC608);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_21_3();
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3FE28, &qword_1E42EC600);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_31_2();
  OUTLINED_FUNCTION_93_18();
  OUTLINED_FUNCTION_146_9();
  v4 = swift_allocObject();
  OUTLINED_FUNCTION_132_13(v4);
  OUTLINED_FUNCTION_197_2();
  v5 = OUTLINED_FUNCTION_39_3();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v5, v6);
  v7 = sub_1E40F58D0();
  v8 = OUTLINED_FUNCTION_40_76(v7);
  OUTLINED_FUNCTION_79_30(v8, v9, v10, v11, v12, MEMORY[0x1E69E6370], v8, MEMORY[0x1E69E6388]);

  v13 = OUTLINED_FUNCTION_123_0();
  v14(v13);
  OUTLINED_FUNCTION_196_2();
  OUTLINED_FUNCTION_14_182();
  sub_1E40FCB48(v15);
  v16 = OUTLINED_FUNCTION_48_57();
  OUTLINED_FUNCTION_146_0();
  v17 = sub_1E4200504();
  v18 = (v0 + *(v29 + 36));
  *v18 = v17;
  v18[1] = v16;
  OUTLINED_FUNCTION_48_57();
  sub_1E3B1DDF0();

  OUTLINED_FUNCTION_146_9();
  v19 = swift_allocObject();
  OUTLINED_FUNCTION_132_13(v19);
  OUTLINED_FUNCTION_197_2();
  v20 = sub_1E40F6B18();
  v23 = sub_1E383FBF4(v20, v21, v22);
  OUTLINED_FUNCTION_68_36(v23, v24, v25, v26, v27, &unk_1F5D59EC8, v28, v23);

  sub_1E325F6F0(v0, &qword_1ECF3FE28, &qword_1E42EC600);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E40EE0DC()
{
  OUTLINED_FUNCTION_31_1();
  OUTLINED_FUNCTION_176_8(v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3FEF0, &qword_1E42EC6C8);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_21_3();
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3FEE8, &qword_1E42EC6C0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_31_2();
  OUTLINED_FUNCTION_93_18();
  OUTLINED_FUNCTION_146_9();
  v4 = swift_allocObject();
  OUTLINED_FUNCTION_132_13(v4);
  OUTLINED_FUNCTION_197_2();
  v5 = OUTLINED_FUNCTION_39_3();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v5, v6);
  v7 = sub_1E40F6C64();
  v8 = OUTLINED_FUNCTION_40_76(v7);
  OUTLINED_FUNCTION_79_30(v8, v9, v10, v11, v12, MEMORY[0x1E69E6370], v8, MEMORY[0x1E69E6388]);

  v13 = OUTLINED_FUNCTION_123_0();
  v14(v13);
  OUTLINED_FUNCTION_196_2();
  OUTLINED_FUNCTION_14_182();
  sub_1E40FCB48(v15);
  v16 = OUTLINED_FUNCTION_48_57();
  OUTLINED_FUNCTION_146_0();
  v17 = sub_1E4200504();
  v18 = (v0 + *(v29 + 36));
  *v18 = v17;
  v18[1] = v16;
  OUTLINED_FUNCTION_48_57();
  sub_1E3B1DDF0();

  OUTLINED_FUNCTION_146_9();
  v19 = swift_allocObject();
  OUTLINED_FUNCTION_132_13(v19);
  OUTLINED_FUNCTION_197_2();
  v20 = sub_1E40F74B4();
  v23 = sub_1E383FBF4(v20, v21, v22);
  OUTLINED_FUNCTION_68_36(v23, v24, v25, v26, v27, &unk_1F5D59EC8, v28, v23);

  sub_1E325F6F0(v0, &qword_1ECF3FEE8, &qword_1E42EC6C0);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E40EE334()
{
  OUTLINED_FUNCTION_31_1();
  OUTLINED_FUNCTION_176_8(v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF40068, &qword_1E42EC840);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_21_3();
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF40060, &qword_1E42EC838);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_31_2();
  OUTLINED_FUNCTION_93_18();
  OUTLINED_FUNCTION_146_9();
  v4 = swift_allocObject();
  OUTLINED_FUNCTION_132_13(v4);
  OUTLINED_FUNCTION_197_2();
  v5 = OUTLINED_FUNCTION_39_3();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v5, v6);
  v7 = sub_1E40F7608();
  v8 = OUTLINED_FUNCTION_40_76(v7);
  OUTLINED_FUNCTION_79_30(v8, v9, v10, v11, v12, MEMORY[0x1E69E6370], v8, MEMORY[0x1E69E6388]);

  v13 = OUTLINED_FUNCTION_123_0();
  v14(v13);
  OUTLINED_FUNCTION_196_2();
  OUTLINED_FUNCTION_14_182();
  sub_1E40FCB48(v15);
  v16 = OUTLINED_FUNCTION_48_57();
  OUTLINED_FUNCTION_146_0();
  v17 = sub_1E4200504();
  v18 = (v0 + *(v29 + 36));
  *v18 = v17;
  v18[1] = v16;
  OUTLINED_FUNCTION_48_57();
  sub_1E3B1DDF0();

  OUTLINED_FUNCTION_146_9();
  v19 = swift_allocObject();
  OUTLINED_FUNCTION_132_13(v19);
  OUTLINED_FUNCTION_197_2();
  v20 = sub_1E40F8F70();
  v23 = sub_1E383FBF4(v20, v21, v22);
  OUTLINED_FUNCTION_68_36(v23, v24, v25, v26, v27, &unk_1F5D59EC8, v28, v23);

  sub_1E325F6F0(v0, &qword_1ECF40060, &qword_1E42EC838);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E40EE58C()
{
  OUTLINED_FUNCTION_31_1();
  v466 = v2;
  v4 = v3;
  v475 = v5;
  v441 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF40148, &qword_1E42EC918);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_44();
  v442 = v7;
  v452 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3FEE0, &qword_1E42EC6B8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_44();
  v443 = v9;
  v423 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF400B8, &qword_1E42EC888);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_44();
  v425 = v11;
  v424 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3FDB8, &qword_1E42EC590);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_204_1(v13);
  v440 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3FDB0, &qword_1E42EC588);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_44();
  v429 = v15;
  v422 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF40150, &qword_1E42EC920);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_44();
  v428 = v17;
  v426 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3FED0, &qword_1E42EC6A8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_44();
  v417[1] = v19;
  v434 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3FEC8, &qword_1E42EC6A0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_44();
  v430 = v21;
  v448 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF40158, &qword_1E42EC928);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_44();
  v450 = v23;
  v432 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF40160, &qword_1E42EC930);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_44();
  v433 = v25;
  v449 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3FEB8, &qword_1E42EC690);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_44();
  v435 = v27;
  v474 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3FEB0, &qword_1E42EC688);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_44();
  v451 = v29;
  v419 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF40168, &qword_1E42EC938);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_44();
  v421 = v31;
  v420 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3FEA8, &qword_1E42EC680);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_44();
  v417[0] = v33;
  v438 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3FEA0, &qword_1E42EC678);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_44();
  v427 = v35;
  v436 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF40170, &qword_1E42EC940);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_44();
  v437 = v37;
  v458 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3FE90, &qword_1E42EC668);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_44();
  v439 = v39;
  v455 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF40178, &qword_1E42EC948);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_44();
  v457 = v41;
  v445 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF40180, &qword_1E42EC950);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_44();
  v446 = v43;
  v456 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3FE88, &qword_1E42EC660);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_44();
  v447 = v45;
  v470 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3FE80, &qword_1E42EC658);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_44();
  v459 = v47;
  v454 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3FE78, &qword_1E42EC650);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_44();
  v453 = v49;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF40188, &qword_1E42EC958);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_103();
  v465 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3FE70, &qword_1E42EC648);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_44();
  v431 = v52;
  v444 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29A90, &qword_1E429C780);
  OUTLINED_FUNCTION_0_10();
  v418 = v53;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v54);
  OUTLINED_FUNCTION_20_1();
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3FE68, &qword_1E42EC640);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v56);
  v58 = v417 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v59);
  v460 = v417 - v60;
  v472 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF40190, &qword_1E42EC960);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v61);
  OUTLINED_FUNCTION_44();
  v473 = v62;
  v467 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF40198, &qword_1E42EC968);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v63);
  OUTLINED_FUNCTION_44();
  v469 = v64;
  v461 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF401A0, &qword_1E42EC970);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v65);
  OUTLINED_FUNCTION_44();
  v463 = v66;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF401A8, &qword_1E42EC978);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v67);
  OUTLINED_FUNCTION_14_5();
  v462 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3FE60, &qword_1E42EC638);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v68);
  OUTLINED_FUNCTION_49_2();
  v468 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3FE58, &qword_1E42EC630);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v69);
  OUTLINED_FUNCTION_44();
  v464 = v70;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3FE50, &qword_1E42EC628);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v71);
  v76 = v417 - v75;
  v77 = v4[49];
  v471 = v72;
  switch(v77)
  {
    case 194:
      MEMORY[0x1EEE9AC00](v72);
      OUTLINED_FUNCTION_10_178();
      sub_1E40FA99C(v214, v215, v216);

      OUTLINED_FUNCTION_152_9();
      v217 = OUTLINED_FUNCTION_172_1();
      memcpy(v217, v218, 0x170uLL);
      memcpy(v437, v477, 0x170uLL);
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_18_5();
      sub_1E3743538(v219, v220, v221, v222);
      v223 = OUTLINED_FUNCTION_57();
      __swift_instantiateConcreteTypeFromMangledNameV2(v223, v224);
      OUTLINED_FUNCTION_13_2();
      OUTLINED_FUNCTION_82();
      sub_1E3D6870C(v225);
      sub_1E40F7184();
      OUTLINED_FUNCTION_84_25();
      sub_1E4201F44();
      OUTLINED_FUNCTION_24_114();
      sub_1E3743538(v226, v227, v228, v229);
      swift_storeEnumTagMultiPayload();
      sub_1E40F701C();
      sub_1E40F70CC();
      OUTLINED_FUNCTION_165_10();
      sub_1E4201F44();
      v230 = OUTLINED_FUNCTION_49_64();
      sub_1E325F6F0(v230, v231, v232);
      v233 = v469;
      OUTLINED_FUNCTION_24_114();
      sub_1E3743538(v234, v235, v236, v237);
      OUTLINED_FUNCTION_228_1(v233);
      sub_1E40F6D7C();
      sub_1E40F6F90();
      OUTLINED_FUNCTION_94_24();
      OUTLINED_FUNCTION_150_8();
      sub_1E4201F44();
      v238 = OUTLINED_FUNCTION_34_11();
      sub_1E325F6F0(v238, v239, v240);
      OUTLINED_FUNCTION_24_114();
      sub_1E3743538(v241, v242, v243, v244);
      OUTLINED_FUNCTION_157_9();
      sub_1E40F6CF0();
      sub_1E40F7264();
      OUTLINED_FUNCTION_70_33();
      sub_1E4201F44();
      OUTLINED_FUNCTION_82();
      sub_1E325F6F0(v245, v246, v247);
      v109 = OUTLINED_FUNCTION_33_92();
      goto LABEL_33;
    case 195:
    case 197:
    case 198:
    case 199:
    case 200:
    case 201:
    case 202:
    case 203:
    case 204:
    case 207:
    case 208:
    case 209:
    case 214:
    case 216:
    case 218:
      goto LABEL_10;
    case 196:
      v275 = TVAppFeature.isEnabled.getter(10, v73, v74);
      if (v275)
      {
        OUTLINED_FUNCTION_206_2();
        MEMORY[0x1EEE9AC00](v276);
        OUTLINED_FUNCTION_10_178();
        type metadata accessor for SyndicationListLockup(0);
        OUTLINED_FUNCTION_7_243();
        sub_1E40FCB48(v277);
        OUTLINED_FUNCTION_227_1();
        OUTLINED_FUNCTION_18_5();
        sub_1E404267C();
        OUTLINED_FUNCTION_18_5();
        sub_1E3743538(v278, v279, v280, v281);
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_201_4();
        OUTLINED_FUNCTION_109_10();
        sub_1E3D6870C(v282);
        OUTLINED_FUNCTION_90();
        sub_1E3D6870C(v283);
        v284 = v430;
        sub_1E4201F44();
        OUTLINED_FUNCTION_82();
        sub_1E325F6F0(v285, v286, v287);
      }

      else
      {
        MEMORY[0x1EEE9AC00](v275);
        OUTLINED_FUNCTION_10_178();
        sub_1E40F8C58(v377, v378, v379);

        OUTLINED_FUNCTION_152_9();
        v380 = OUTLINED_FUNCTION_172_1();
        memcpy(v380, v381, 0x1A0uLL);
        memcpy(v428, v477, 0x1A0uLL);
        swift_storeEnumTagMultiPayload();
        v382 = OUTLINED_FUNCTION_57();
        __swift_instantiateConcreteTypeFromMangledNameV2(v382, v383);
        OUTLINED_FUNCTION_108_14();
        sub_1E3D6870C(v384);
        OUTLINED_FUNCTION_82();
        sub_1E3D6870C(v385);
        v284 = v430;
        sub_1E4201F44();
      }

      sub_1E3743538(v284, v433, &qword_1ECF3FEC8, &qword_1E42EC6A0);
      OUTLINED_FUNCTION_57();
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_201_4();
      OUTLINED_FUNCTION_13_2();
      OUTLINED_FUNCTION_90();
      sub_1E3D6870C(v386);
      sub_1E40F73D4();
      OUTLINED_FUNCTION_122_11();
      sub_1E4201F44();
      OUTLINED_FUNCTION_11_61();
      sub_1E3743538(v387, v388, v389, v390);
      swift_storeEnumTagMultiPayload();
      sub_1E40F731C();
      OUTLINED_FUNCTION_19_152();
      sub_1E40F8F18(v391);
      OUTLINED_FUNCTION_139_13();
      sub_1E4201F44();
      v392 = OUTLINED_FUNCTION_33_92();
      sub_1E325F6F0(v392, v393, v394);
      OUTLINED_FUNCTION_146_0();
      OUTLINED_FUNCTION_69_0();
      sub_1E3743538(v395, v396, v397, v398);
      OUTLINED_FUNCTION_114_1();
      swift_storeEnumTagMultiPayload();
      sub_1E40F6CF0();
      sub_1E40F7264();
      OUTLINED_FUNCTION_102_19();
      OUTLINED_FUNCTION_190_3();
      v399 = OUTLINED_FUNCTION_55_52();
      sub_1E325F6F0(v399, v400, v401);
      v109 = v284;
      v110 = &qword_1ECF3FEC8;
      v135 = &qword_1E42EC6A0;
      goto LABEL_33;
    case 205:
      type metadata accessor for PlaybackSongViewModel(0);
      if (swift_dynamicCastClass())
      {
        OUTLINED_FUNCTION_200_4();
        sub_1E375C1CC(v466, v477);
        v182 = v417[2];
        OUTLINED_FUNCTION_57();
        sub_1E417B65C();
        type metadata accessor for Router(0);
        sub_1E40C4334();

        OUTLINED_FUNCTION_34();
        sub_1E40C49A8();
        v184 = v183;

        OUTLINED_FUNCTION_38_78();
        sub_1E40FCB48(v185);
        OUTLINED_FUNCTION_20_2();
        v186 = sub_1E4200504();
        v187 = (v182 + *(v424 + 36));
        *v187 = v186;
        v187[1] = v184;
        OUTLINED_FUNCTION_18_5();
        sub_1E3743538(v188, v189, v190, v191);
        swift_storeEnumTagMultiPayload();
        sub_1E40F613C();
        v192 = v429;
        OUTLINED_FUNCTION_123_12();
        sub_1E4201F44();

        v193 = OUTLINED_FUNCTION_30_88();
        sub_1E325F6F0(v193, v194, v195);
      }

      else
      {
        swift_storeEnumTagMultiPayload();
        sub_1E40F613C();
        v192 = v429;
        OUTLINED_FUNCTION_124_10();
        sub_1E4201F44();
      }

      sub_1E3743538(v192, v442, &qword_1ECF3FDB0, &qword_1E42EC588);
      swift_storeEnumTagMultiPayload();
      sub_1E40F610C();
      OUTLINED_FUNCTION_122_11();
      sub_1E4201F44();
      OUTLINED_FUNCTION_11_61();
      sub_1E3743538(v402, v403, v404, v405);
      swift_storeEnumTagMultiPayload();
      sub_1E40F731C();
      OUTLINED_FUNCTION_19_152();
      OUTLINED_FUNCTION_90();
      sub_1E40F8F18(v406);
      OUTLINED_FUNCTION_139_13();
      sub_1E4201F44();
      v407 = OUTLINED_FUNCTION_33_92();
      sub_1E325F6F0(v407, v408, v409);
      OUTLINED_FUNCTION_146_0();
      OUTLINED_FUNCTION_69_0();
      sub_1E3743538(v410, v411, v412, v413);
      OUTLINED_FUNCTION_114_1();
      swift_storeEnumTagMultiPayload();
      sub_1E40F6CF0();
      sub_1E40F7264();
      OUTLINED_FUNCTION_102_19();
      OUTLINED_FUNCTION_190_3();
      v414 = OUTLINED_FUNCTION_55_52();
      sub_1E325F6F0(v414, v415, v416);
      v109 = v192;
      v110 = &qword_1ECF3FDB0;
      v135 = &qword_1E42EC588;
      goto LABEL_33;
    case 206:
      v454 = v76;
      v196 = TVAppFeature.isEnabled.getter(10, v73, v74);
      if (v196)
      {
        OUTLINED_FUNCTION_206_2();
        MEMORY[0x1EEE9AC00](v197);
        OUTLINED_FUNCTION_10_178();
        v198 = type metadata accessor for TeamLockup(0);
        OUTLINED_FUNCTION_119_10();
        sub_1E40FCB48(v199);
        OUTLINED_FUNCTION_227_1();
        OUTLINED_FUNCTION_34();
        OUTLINED_FUNCTION_51_1();
        v200 = OUTLINED_FUNCTION_52_43();
        sub_1E40424BC(v200, v201, v202, v198, v58, v203, v0);
        OUTLINED_FUNCTION_18_5();
        sub_1E3743538(v204, v205, v206, v207);
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_201_4();
        OUTLINED_FUNCTION_109_10();
        sub_1E3D6870C(v208);
        OUTLINED_FUNCTION_90();
        sub_1E3D6870C(v209);
        v210 = v427;
        sub_1E4201F44();
        OUTLINED_FUNCTION_82();
        sub_1E325F6F0(v211, v212, v213);
      }

      else
      {
        MEMORY[0x1EEE9AC00](v196);
        OUTLINED_FUNCTION_10_178();
        sub_1E40FA99C(v345, v346, v347);

        OUTLINED_FUNCTION_152_9();
        v348 = OUTLINED_FUNCTION_172_1();
        memcpy(v348, v349, 0x170uLL);
        memcpy(v421, v477, 0x170uLL);
        swift_storeEnumTagMultiPayload();
        v350 = OUTLINED_FUNCTION_57();
        __swift_instantiateConcreteTypeFromMangledNameV2(v350, v351);
        OUTLINED_FUNCTION_108_14();
        sub_1E3D6870C(v352);
        OUTLINED_FUNCTION_82();
        sub_1E3D6870C(v353);
        v210 = v427;
        sub_1E4201F44();
      }

      sub_1E3743538(v210, v437, &qword_1ECF3FEA0, &qword_1E42EC678);
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_201_4();
      OUTLINED_FUNCTION_13_2();
      OUTLINED_FUNCTION_90();
      sub_1E3D6870C(v354);
      sub_1E40F7184();
      OUTLINED_FUNCTION_97_1();
      sub_1E4201F44();
      OUTLINED_FUNCTION_42_74();
      sub_1E3743538(v355, v356, v357, v358);
      swift_storeEnumTagMultiPayload();
      sub_1E40F701C();
      sub_1E40F70CC();
      OUTLINED_FUNCTION_122_11();
      sub_1E4201F44();
      OUTLINED_FUNCTION_90();
      sub_1E325F6F0(v359, v360, v361);
      v362 = v469;
      OUTLINED_FUNCTION_11_61();
      sub_1E3743538(v363, v364, v365, v366);
      OUTLINED_FUNCTION_228_1(v362);
      sub_1E40F6D7C();
      sub_1E40F6F90();
      OUTLINED_FUNCTION_139_13();
      OUTLINED_FUNCTION_150_8();
      sub_1E4201F44();
      v367 = OUTLINED_FUNCTION_33_92();
      sub_1E325F6F0(v367, v368, v369);
      OUTLINED_FUNCTION_146_0();
      OUTLINED_FUNCTION_69_0();
      sub_1E3743538(v370, v371, v372, v373);
      OUTLINED_FUNCTION_114_1();
      swift_storeEnumTagMultiPayload();
      sub_1E40F6CF0();
      sub_1E40F7264();
      OUTLINED_FUNCTION_102_19();
      OUTLINED_FUNCTION_190_3();
      v374 = OUTLINED_FUNCTION_55_52();
      sub_1E325F6F0(v374, v375, v376);
      v109 = v210;
      v110 = &qword_1ECF3FEA0;
      v135 = &qword_1E42EC678;
      goto LABEL_33;
    case 210:
    case 211:
    case 212:
      goto LABEL_5;
    case 213:
    case 215:
    case 217:
      v454 = v76;
      v111 = *sub_1E39D021C();
      v476[0] = 0;
      v112 = *(*v4 + 776);
      v459 = v111;

      v112(v477, v476, &unk_1F5D5DE28, &off_1F5D5CA58);
      if (v477[3])
      {
        v113 = swift_dynamicCast();
        if (v113)
        {
          v114 = v476[0];
          goto LABEL_14;
        }
      }

      else
      {
        v113 = sub_1E325F6F0(v477, &unk_1ECF296E0, &unk_1E4298030);
      }

      v114 = 1;
LABEL_14:
      LODWORD(v458) = v114;
      v457 = v417;
      MEMORY[0x1EEE9AC00](v113);
      OUTLINED_FUNCTION_10_178();

      v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF401C0, &qword_1E42EC980);
      v149 = sub_1E40FAAF8();
      v150 = OUTLINED_FUNCTION_51_1();
      sub_1E40424BC(v4, v150 & 1, sub_1E40FAAF0, v148, v149, v58, v4);
      v151 = swift_allocObject();
      *(v151 + 16) = v458;
      *(v151 + 24) = v459;

      sub_1E40435E0(sub_1E40FADB8, v151, v55, v460);

      OUTLINED_FUNCTION_82();
      sub_1E325F6F0(v152, v153, v154);
      OUTLINED_FUNCTION_18_5();
      sub_1E3743538(v155, v156, v157, v158);
      OUTLINED_FUNCTION_114_1();
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_13_2();
      OUTLINED_FUNCTION_82();
      sub_1E3D6870C(v159);
      sub_1E4201F44();
      OUTLINED_FUNCTION_96_2();
      sub_1E3743538(v160, v161, v162, v163);
      swift_storeEnumTagMultiPayload();
      sub_1E40F6E08();
      sub_1E40F6EC0();
      OUTLINED_FUNCTION_165_10();
      sub_1E4201F44();
      v164 = OUTLINED_FUNCTION_11_103();
      sub_1E325F6F0(v164, v165, v166);
      v167 = v469;
      OUTLINED_FUNCTION_96_2();
      sub_1E3743538(v168, v169, v170, v171);
      OUTLINED_FUNCTION_28_19(v167);
      sub_1E40F6D7C();
      sub_1E40F6F90();
      OUTLINED_FUNCTION_94_24();
      OUTLINED_FUNCTION_150_8();
      sub_1E4201F44();
      v172 = OUTLINED_FUNCTION_54_55();
      sub_1E325F6F0(v172, v173, v174);
      OUTLINED_FUNCTION_96_2();
      sub_1E3743538(v175, v176, v177, v178);
      OUTLINED_FUNCTION_157_9();
      sub_1E40F6CF0();
      sub_1E40F7264();
      OUTLINED_FUNCTION_70_33();
      sub_1E4201F44();

      v179 = OUTLINED_FUNCTION_11_103();
      sub_1E325F6F0(v179, v180, v181);
      v109 = v460;
      v110 = &qword_1ECF3FE68;
      v135 = &qword_1E42EC640;
      goto LABEL_33;
    case 219:
    case 220:
      OUTLINED_FUNCTION_114_1();
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_13_2();
      sub_1E3D6870C(v115);
      sub_1E4201F44();
      OUTLINED_FUNCTION_32_3();
      sub_1E3743538(v116, v117, v118, v119);
      swift_storeEnumTagMultiPayload();
      sub_1E40F6E08();
      sub_1E40F6EC0();
      OUTLINED_FUNCTION_86_22();
      sub_1E4201F44();
      v120 = OUTLINED_FUNCTION_30_88();
      sub_1E325F6F0(v120, v121, v122);
      v123 = v469;
      OUTLINED_FUNCTION_32_3();
      sub_1E3743538(v124, v125, v126, v127);
      OUTLINED_FUNCTION_28_19(v123);
      sub_1E40F6D7C();
      sub_1E40F6F90();
      OUTLINED_FUNCTION_140_3();
      OUTLINED_FUNCTION_150_8();
      sub_1E4201F44();
      v128 = OUTLINED_FUNCTION_10_13();
      sub_1E325F6F0(v128, v129, v130);
      OUTLINED_FUNCTION_32_3();
      sub_1E3743538(v131, v132, v133, v134);
      OUTLINED_FUNCTION_223();
      swift_storeEnumTagMultiPayload();
      sub_1E40F6CF0();
      sub_1E40F7264();
      OUTLINED_FUNCTION_102_19();
      OUTLINED_FUNCTION_145_2();
      v109 = OUTLINED_FUNCTION_8_12();
      goto LABEL_33;
    case 221:
      OUTLINED_FUNCTION_23();
      nullsub_1();
      v248 = v418;
      v249 = OUTLINED_FUNCTION_97_1();
      v250(v249);
      OUTLINED_FUNCTION_57();
      v251 = swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_5_1(v251);
      OUTLINED_FUNCTION_13_2();
      sub_1E3D6870C(v252);
      OUTLINED_FUNCTION_63_0();
      sub_1E4201F44();
      OUTLINED_FUNCTION_32_3();
      sub_1E3743538(v253, v254, v255, v256);
      swift_storeEnumTagMultiPayload();
      sub_1E40F6E08();
      sub_1E40F6EC0();
      OUTLINED_FUNCTION_86_22();
      sub_1E4201F44();
      OUTLINED_FUNCTION_82();
      sub_1E325F6F0(v257, v258, v259);
      v260 = v469;
      OUTLINED_FUNCTION_32_3();
      sub_1E3743538(v261, v262, v263, v264);
      OUTLINED_FUNCTION_28_19(v260);
      sub_1E40F6D7C();
      sub_1E40F6F90();
      OUTLINED_FUNCTION_184_2();
      OUTLINED_FUNCTION_150_8();
      sub_1E4201F44();
      v265 = OUTLINED_FUNCTION_10_13();
      sub_1E325F6F0(v265, v266, v267);
      OUTLINED_FUNCTION_32_3();
      sub_1E3743538(v268, v269, v270, v271);
      OUTLINED_FUNCTION_223();
      swift_storeEnumTagMultiPayload();
      sub_1E40F6CF0();
      sub_1E40F7264();
      OUTLINED_FUNCTION_102_19();
      OUTLINED_FUNCTION_145_2();
      v272 = OUTLINED_FUNCTION_30_88();
      sub_1E325F6F0(v272, v273, v274);
      (*(v248 + 8))(v1, v444);
      goto LABEL_34;
    default:
      switch(v77)
      {
        case 182:
          MEMORY[0x1EEE9AC00](v72);
          v288 = v466;
          v417[-2] = v4;
          v417[-1] = v288;
          type metadata accessor for ListLockup(0);
          OUTLINED_FUNCTION_5_249();
          sub_1E40FCB48(v289);

          v290 = v453;
          OUTLINED_FUNCTION_69_0();
          sub_1E404267C();
          v291 = &qword_1E42EC650;
          OUTLINED_FUNCTION_42_74();
          sub_1E3743538(v292, v293, v294, v295);
          OUTLINED_FUNCTION_57();
          v296 = swift_storeEnumTagMultiPayload();
          OUTLINED_FUNCTION_5_1(v296);
          OUTLINED_FUNCTION_13_2();
          OUTLINED_FUNCTION_90();
          sub_1E3D6870C(v297);
          OUTLINED_FUNCTION_208_0();
          sub_1E4201F44();
          OUTLINED_FUNCTION_18_5();
          sub_1E3743538(v298, v299, v300, v301);
          swift_storeEnumTagMultiPayload();
          sub_1E40F6E08();
          sub_1E40F6EC0();
          OUTLINED_FUNCTION_94_24();
          sub_1E4201F44();
          OUTLINED_FUNCTION_82();
          sub_1E325F6F0(v302, v303, v304);
          v305 = v469;
          OUTLINED_FUNCTION_18_5();
          sub_1E3743538(v306, v307, v308, v309);
          OUTLINED_FUNCTION_28_19(v305);
          sub_1E40F6D7C();
          sub_1E40F6F90();
          OUTLINED_FUNCTION_52_43();
          OUTLINED_FUNCTION_150_8();
          sub_1E4201F44();
          v310 = OUTLINED_FUNCTION_30_88();
          sub_1E325F6F0(v310, v311, v312);
          OUTLINED_FUNCTION_18_5();
          sub_1E3743538(v313, v314, v315, v316);
          OUTLINED_FUNCTION_157_9();
          sub_1E40F6CF0();
          sub_1E40F7264();
          OUTLINED_FUNCTION_70_33();
          sub_1E4201F44();
          OUTLINED_FUNCTION_82();
          sub_1E325F6F0(v317, v318, v319);
          v109 = v290;
          v110 = &qword_1ECF3FE78;
LABEL_26:
          v135 = v291;
          goto LABEL_33;
        case 244:
          v320 = sub_1E40FA948(v72, v73, v74);

          OUTLINED_FUNCTION_67_0();
          v321 = OUTLINED_FUNCTION_51_1();
          sub_1E40424BC(v4, v321 & 1, sub_1E40FA8E4, &type metadata for LeagueStandingsCardView, v320, v477, v4);
          memcpy(v433, v477, 0x78uLL);
          swift_storeEnumTagMultiPayload();
          OUTLINED_FUNCTION_18_5();
          sub_1E3743538(v322, v323, v324, v325);
          v326 = OUTLINED_FUNCTION_57();
          __swift_instantiateConcreteTypeFromMangledNameV2(v326, v327);
          OUTLINED_FUNCTION_13_2();
          OUTLINED_FUNCTION_82();
          sub_1E3D6870C(v328);
          sub_1E40F73D4();
          OUTLINED_FUNCTION_84_25();
          sub_1E4201F44();
          OUTLINED_FUNCTION_24_114();
          sub_1E3743538(v329, v330, v331, v332);
          swift_storeEnumTagMultiPayload();
          sub_1E40F731C();
          OUTLINED_FUNCTION_19_152();
          sub_1E40F8F18(v333);
          v334 = v451;
          OUTLINED_FUNCTION_165_10();
          sub_1E4201F44();
          v335 = OUTLINED_FUNCTION_49_64();
          sub_1E325F6F0(v335, v336, v337);
          v291 = &qword_1E42EC688;
          OUTLINED_FUNCTION_24_114();
          sub_1E3743538(v338, v339, v340, v341);
          swift_storeEnumTagMultiPayload();
          sub_1E40F6CF0();
          sub_1E40F7264();
          OUTLINED_FUNCTION_102_19();
          OUTLINED_FUNCTION_39_0();
          sub_1E4201F44();
          OUTLINED_FUNCTION_82();
          sub_1E325F6F0(v342, v343, v344);
          v109 = v334;
          v110 = &qword_1ECF3FEB0;
          goto LABEL_26;
        case 258:
LABEL_5:
          OUTLINED_FUNCTION_206_2();
          MEMORY[0x1EEE9AC00](v78);
          OUTLINED_FUNCTION_10_178();
          type metadata accessor for ListLockup(0);
          OUTLINED_FUNCTION_5_249();
          sub_1E40FCB48(v79);
          OUTLINED_FUNCTION_227_1();
          v80 = v453;
          OUTLINED_FUNCTION_18_5();
          sub_1E404267C();
          v81 = &qword_1E42EC650;
          OUTLINED_FUNCTION_18_5();
          sub_1E3743538(v82, v83, v84, v85);
          swift_storeEnumTagMultiPayload();
          OUTLINED_FUNCTION_13_2();
          OUTLINED_FUNCTION_82();
          sub_1E3D6870C(v86);
          sub_1E4201F44();
          OUTLINED_FUNCTION_24_114();
          sub_1E3743538(v87, v88, v89, v90);
          swift_storeEnumTagMultiPayload();
          sub_1E40F701C();
          sub_1E40F70CC();
          OUTLINED_FUNCTION_165_10();
          sub_1E4201F44();
          v91 = OUTLINED_FUNCTION_55_52();
          sub_1E325F6F0(v91, v92, v93);
          v94 = v469;
          OUTLINED_FUNCTION_24_114();
          sub_1E3743538(v95, v96, v97, v98);
          OUTLINED_FUNCTION_228_1(v94);
          sub_1E40F6D7C();
          sub_1E40F6F90();
          OUTLINED_FUNCTION_94_24();
          OUTLINED_FUNCTION_150_8();
          sub_1E4201F44();
          v99 = OUTLINED_FUNCTION_34_11();
          sub_1E325F6F0(v99, v100, v101);
          OUTLINED_FUNCTION_24_114();
          sub_1E3743538(v102, v103, v104, v105);
          OUTLINED_FUNCTION_157_9();
          sub_1E40F6CF0();
          sub_1E40F7264();
          OUTLINED_FUNCTION_70_33();
          sub_1E4201F44();
          v106 = OUTLINED_FUNCTION_33_92();
          sub_1E325F6F0(v106, v107, v108);
          v109 = v80;
          v110 = &qword_1ECF3FE78;
          break;
        default:
LABEL_10:
          swift_storeEnumTagMultiPayload();
          sub_1E40F610C();
          OUTLINED_FUNCTION_124_10();
          sub_1E4201F44();
          OUTLINED_FUNCTION_32_3();
          sub_1E3743538(v136, v137, v138, v139);
          swift_storeEnumTagMultiPayload();
          sub_1E40F731C();
          OUTLINED_FUNCTION_19_152();
          OUTLINED_FUNCTION_82();
          sub_1E40F8F18(v140);
          OUTLINED_FUNCTION_140_3();
          sub_1E4201F44();
          v141 = OUTLINED_FUNCTION_10_13();
          sub_1E325F6F0(v141, v142, v143);
          v81 = &qword_1E42EC688;
          OUTLINED_FUNCTION_32_3();
          sub_1E3743538(v144, v145, v146, v147);
          OUTLINED_FUNCTION_223();
          swift_storeEnumTagMultiPayload();
          sub_1E40F6CF0();
          sub_1E40F7264();
          OUTLINED_FUNCTION_102_19();
          OUTLINED_FUNCTION_145_2();
          v109 = OUTLINED_FUNCTION_138_0();
          break;
      }

      v135 = v81;
LABEL_33:
      sub_1E325F6F0(v109, v110, v135);
LABEL_34:
      OUTLINED_FUNCTION_25_2();
      return;
  }
}