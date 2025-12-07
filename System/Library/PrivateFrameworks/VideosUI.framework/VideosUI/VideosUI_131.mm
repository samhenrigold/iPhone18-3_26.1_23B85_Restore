void sub_1E4108CB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if ((TVAppFeature.isEnabled.getter(10, a2, a3) & 1) == 0)
  {
    sub_1E41FDF14();
    if (v12)
    {
      sub_1E3280A90(0, &qword_1EE23AD50, 0x1E69DCEB0);
      if (swift_dynamicCast())
      {
        v5 = OBJC_IVAR____TtC8VideosUI25SportsCanonicalBannerCell_transitionBackgroundView;
        OUTLINED_FUNCTION_5_0(v4 + OBJC_IVAR____TtC8VideosUI25SportsCanonicalBannerCell_transitionBackgroundView, v11);
        v6 = *(v4 + v5);
        if (v6)
        {
          v7 = v6;
          v8 = [v10 traitCollection];
          v9 = [v8 userInterfaceStyle];

          [v7 setOverrideUserInterfaceStyle_];
        }
      }
    }

    else
    {
      sub_1E325F748(v11, &unk_1ECF296E0, &unk_1E4298030);
    }
  }
}

void sub_1E4108EA8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1E4205ED4();
  [a3 setVuiAccessibilityIdentifier_];
}

void sub_1E4108F00()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  OUTLINED_FUNCTION_5_0(v1 + 16, v16);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = type metadata accessor for StackViewController(0);
    v6 = OUTLINED_FUNCTION_4_84(v5);
    if (v6 && (v7 = v6, OUTLINED_FUNCTION_5_0(v2 + 16, v15), (v8 = swift_unknownObjectWeakLoadStrong()) != 0))
    {
      v10 = v8;
      v11 = OBJC_IVAR____TtC8VideosUI25SportsCanonicalBannerCell_isReloadingAfterSwiftUIHeightChange;
      *(v8 + OBJC_IVAR____TtC8VideosUI25SportsCanonicalBannerCell_isReloadingAfterSwiftUIHeightChange) = 1;
      v12 = OBJC_IVAR____TtC8VideosUI25SportsCanonicalBannerCell_newBannerAccessoryView;
      OUTLINED_FUNCTION_15_0(v8 + OBJC_IVAR____TtC8VideosUI25SportsCanonicalBannerCell_newBannerAccessoryView, v9);
      v13 = *&v10[v12];
      if (v13)
      {
        [v13 vui_setNeedsLayout];
        v14 = *&v10[v12];
        if (v14)
        {
          [v14 vui_layoutIfNeeded];
        }
      }

      [v7 vui:v10 cellNeedsReloading:?];
      [v10 vui_setNeedsLayout];

      v10[v11] = 0;
    }

    else
    {
      v10 = v4;
    }
  }
}

uint64_t sub_1E4109000(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF405A0, &qword_1E42ECEF8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E4109070(uint64_t a1)
{
  v2 = type metadata accessor for LegacySportsCanonicalBannerView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_1E41090CC(id result, char a2)
{
  if (a2 != -1)
  {
    return result;
  }

  return result;
}

id sub_1E41090E4(id *a1)
{
  v2 = *(v1 + 16);
  [*a1 frame];

  return [v2 setFrame_];
}

double sub_1E4109170(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *a1;
  if (*(v2 + OBJC_IVAR____TtC8VideosUI25SportsCanonicalBannerCell_isReloadingAfterSwiftUIHeightChange) != 1)
  {
    OUTLINED_FUNCTION_8();
    (*(v4 + 2328))();
    OUTLINED_FUNCTION_8();
    (*(v5 + 2352))(2);
  }

  OUTLINED_FUNCTION_4_0();
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v7 = *(*v3 + 1264);

  v7(sub_1E4109290, v6);

  return result;
}

void sub_1E4109290(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_15_0(v2 + 16, a2);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    [Strong vui_setNeedsLayout];
  }
}

void sub_1E41092E0(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 24);
  OUTLINED_FUNCTION_15_0(*(v2 + 16) + 16, a2);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = sub_1E4104D90();
    if ((v6 & 1) == 0)
    {
      v7 = sub_1E4104744(v6);
      if (v7)
      {
        v8 = v7;
        v9 = [v3 image];
        v10 = v9;
        if (v9)
        {
        }

        [v8 setMasksBlur_];
      }
    }
  }
}

void sub_1E4109380(void *a1)
{
  v1 = [a1 traitCollection];
  sub_1E41059B0(v1);
}

void sub_1E41093D8(uint64_t *a1)
{
  v2 = *a1;
  v3 = [*(v1 + 16) vuiContentView];
  [v3 vui:v2 bringSubviewToFront:?];
}

unint64_t sub_1E4109444()
{
  result = qword_1EE282FC0;
  if (!qword_1EE282FC0)
  {
    type metadata accessor for ImageViewModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE282FC0);
  }

  return result;
}

id sub_1E41094A8()
{
  OUTLINED_FUNCTION_0_8();
  *(v0 + OBJC_IVAR____TtC8VideosUI15ProgressBarView_style) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI15ProgressBarView_cornerRadius) = 0x4000000000000000;
  *(v0 + OBJC_IVAR____TtC8VideosUI15ProgressBarView_progress) = 0x4008000000000000;
  *(v0 + OBJC_IVAR____TtC8VideosUI15ProgressBarView_progressSelectedBackgroundColor) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI15ProgressBarView_progressHighlightColor) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI15ProgressBarView_shouldProgressBarUseRoundedCorner) = 0;
  v1 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithWhite:1.0 alpha:1.0];
  *(v0 + OBJC_IVAR____TtC8VideosUI15ProgressBarView_progressTintColor) = v1;
  v2 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithWhite:0.2 alpha:0.9];
  *(v0 + OBJC_IVAR____TtC8VideosUI15ProgressBarView_progressBackgroundColor) = v2;
  v3 = (v0 + OBJC_IVAR____TtC8VideosUI15ProgressBarView_padding);
  v4 = *(MEMORY[0x1E69DDCE0] + 16);
  *v3 = *MEMORY[0x1E69DDCE0];
  v3[1] = v4;
  v10 = type metadata accessor for ProgressBarView();
  v5 = OUTLINED_FUNCTION_2_0();
  v8 = objc_msgSendSuper2(v6, v7, v5, v0, v10);
  [v8 setContentMode_];
  return v8;
}

void sub_1E4109628()
{
  *(v0 + OBJC_IVAR____TtC8VideosUI15ProgressBarView_style) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI15ProgressBarView_cornerRadius) = 0x4000000000000000;
  *(v0 + OBJC_IVAR____TtC8VideosUI15ProgressBarView_progress) = 0x4008000000000000;
  *(v0 + OBJC_IVAR____TtC8VideosUI15ProgressBarView_progressSelectedBackgroundColor) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI15ProgressBarView_progressHighlightColor) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI15ProgressBarView_shouldProgressBarUseRoundedCorner) = 0;
  sub_1E42076B4();
  __break(1u);
}

uint64_t sub_1E41096EC(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC8VideosUI15ProgressBarView_style;
  OUTLINED_FUNCTION_0_12(a1);
  return *(v1 + v2);
}

uint64_t sub_1E4109720(uint64_t a1)
{
  v2 = a1;
  v3 = OBJC_IVAR____TtC8VideosUI15ProgressBarView_style;
  result = OUTLINED_FUNCTION_37(a1);
  *(v1 + v3) = v2 & 1;
  return result;
}

double sub_1E41097B0(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC8VideosUI15ProgressBarView_cornerRadius;
  OUTLINED_FUNCTION_0_12(a1);
  return *(v1 + v2);
}

uint64_t sub_1E41097E4(uint64_t a1, double a2)
{
  v4 = OBJC_IVAR____TtC8VideosUI15ProgressBarView_cornerRadius;
  result = OUTLINED_FUNCTION_7_27(a1);
  *(v2 + v4) = a2;
  return result;
}

double sub_1E4109870(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC8VideosUI15ProgressBarView_progress;
  OUTLINED_FUNCTION_0_12(a1);
  return *(v1 + v2);
}

uint64_t sub_1E41098A4(uint64_t a1, double a2)
{
  v4 = OBJC_IVAR____TtC8VideosUI15ProgressBarView_progress;
  result = OUTLINED_FUNCTION_7_27(a1);
  *(v2 + v4) = a2;
  return result;
}

id sub_1E4109930(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC8VideosUI15ProgressBarView_progressTintColor;
  OUTLINED_FUNCTION_0_12(a1);
  v3 = *(v1 + v2);

  return v3;
}

id sub_1E4109A00(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC8VideosUI15ProgressBarView_progressBackgroundColor;
  OUTLINED_FUNCTION_0_12(a1);
  v3 = *(v1 + v2);

  return v3;
}

void *sub_1E4109AD0(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC8VideosUI15ProgressBarView_progressSelectedBackgroundColor;
  OUTLINED_FUNCTION_0_12(a1);
  v3 = *(v1 + v2);
  v4 = v3;
  return v3;
}

void *sub_1E4109B98(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC8VideosUI15ProgressBarView_progressHighlightColor;
  OUTLINED_FUNCTION_0_12(a1);
  v3 = *(v1 + v2);
  v4 = v3;
  return v3;
}

uint64_t sub_1E4109C60(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC8VideosUI15ProgressBarView_shouldProgressBarUseRoundedCorner;
  OUTLINED_FUNCTION_0_12(a1);
  return *(v1 + v2);
}

uint64_t sub_1E4109C94(uint64_t a1)
{
  v2 = a1;
  v3 = OBJC_IVAR____TtC8VideosUI15ProgressBarView_shouldProgressBarUseRoundedCorner;
  result = OUTLINED_FUNCTION_37(a1);
  *(v1 + v3) = v2;
  return result;
}

double sub_1E4109D20()
{
  v1 = v0 + OBJC_IVAR____TtC8VideosUI15ProgressBarView_padding;
  swift_beginAccess();
  return *v1;
}

uint64_t sub_1E4109D6C()
{
  OUTLINED_FUNCTION_0_8();
  v5 = (v0 + OBJC_IVAR____TtC8VideosUI15ProgressBarView_padding);
  result = swift_beginAccess();
  *v5 = v4;
  v5[1] = v3;
  v5[2] = v2;
  v5[3] = v1;
  return result;
}

void sub_1E4109E18()
{
  v41 = UIGraphicsGetCurrentContext();
  v1 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0xF8))();
  if (v41)
  {
    v43.origin.x = OUTLINED_FUNCTION_2_37();
    CGContextClearRect(v2, v43);
  }

  OUTLINED_FUNCTION_0_346();
  v3 += 43;
  v4 = *v3;
  v5 = (*v3)();
  v39 = v6;
  v40 = v5;
  v8 = v7;
  v9 = [v0 bounds];
  v11 = v10;
  v12 = (v4)(v9);
  v14 = v13;
  (v4)(v12);
  v16 = v15;
  OUTLINED_FUNCTION_0_346();
  v18 = *(v17 + 200);
  v19 = v18();
  v20 = 0.0;
  if (v19 > 0.0)
  {
    v21 = v18();
    v20 = 0.02;
    if (v21 > 0.02)
    {
      v20 = v21;
    }
  }

  v22 = ceil((v11 - v14 - v16) * (1.0 - v20));
  OUTLINED_FUNCTION_0_346();
  (*(v23 + 176))();
  if (TVAppFeature.isEnabled.getter(10, v24, v25))
  {
    v44.origin.x = OUTLINED_FUNCTION_2_37();
    if (CGRectGetHeight(v44) > 0.0)
    {
      v45.origin.x = OUTLINED_FUNCTION_2_37();
      CGRectGetHeight(v45);
    }
  }

  v26 = objc_opt_self();
  [v0 bounds];
  v27 = [v26 vui_bezierPathWithRoundedRect_radius_];
  [v0 bounds];
  v46.origin.x = sub_1E3CEE8A0(v40, v39, v8, v22, v28);
  CGRectGetHeight(v46);
  if (TVAppFeature.isEnabled.getter(10, v29, v30))
  {
    v47.origin.x = OUTLINED_FUNCTION_6();
    CGRectGetWidth(v47);
  }

  OUTLINED_FUNCTION_0_346();
  if ((*(v31 + 320))())
  {
    v32 = -1;
  }

  else
  {
    v32 = 5;
  }

  objc_opt_self();
  v33 = OUTLINED_FUNCTION_6();
  v36 = [v34 v35];
  [v1 setFill];
  [v27 fill];
  OUTLINED_FUNCTION_0_346();
  v38 = (*(v37 + 224))();
  [v38 setFill];

  [v36 fill];
}

id sub_1E410A1DC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ProgressBarView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1E410A27C()
{
  v1 = OBJC_IVAR____TtC8VideosUI16SearchController____lazy_storage___searchBarController;
  if (*(v0 + OBJC_IVAR____TtC8VideosUI16SearchController____lazy_storage___searchBarController))
  {
    v2 = *(v0 + OBJC_IVAR____TtC8VideosUI16SearchController____lazy_storage___searchBarController);
  }

  else
  {
    v3 = v0;
    type metadata accessor for SearchBarController();
    v2 = sub_1E40E247C();
    v4 = *(*v2 + 120);
    v5 = swift_unknownObjectRetain();
    v4(v5, &off_1F5D982B8);
    *(v3 + v1) = v2;
  }

  return v2;
}

double sub_1E410A32C(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC8VideosUI16SearchController____lazy_storage___searchBarController) = a1;

  return result;
}

id sub_1E410A388(void *a1, uint64_t a2)
{
  v3 = v2;
  *&v3[OBJC_IVAR____TtC8VideosUI16SearchController____lazy_storage___searchBarController] = 0;
  v6 = objc_opt_self();
  if (![v6 isSearchEnabled])
  {
    goto LABEL_8;
  }

  if (!a2)
  {
LABEL_9:
    v26 = 0;
    goto LABEL_10;
  }

  v7 = OUTLINED_FUNCTION_3_276();
  sub_1E3277E60(v7, v8, a2, &v55);
  if (!v56)
  {

    sub_1E329505C(&v55);
    goto LABEL_9;
  }

  if ((OUTLINED_FUNCTION_87_6(v9, v10, v11, MEMORY[0x1E69E6158], v12, v13, v14, v15, v45, v50, v55) & 1) == 0)
  {
LABEL_8:

    goto LABEL_9;
  }

  OUTLINED_FUNCTION_2_266("searchIconPointSize", v46, v51, v55);
  if (v56)
  {
    v16 = sub_1E3280A90(0, &qword_1EE23ADD0, 0x1E696AD98);
    if (OUTLINED_FUNCTION_87_6(v16, v17, v18, v16, v19, v20, v21, v22, v47, v52, v55))
    {
      [v47 floatValue];
      v24 = v23;

      v25 = v24;
      goto LABEL_17;
    }
  }

  else
  {
    sub_1E329505C(&v55);
  }

  v25 = 18.0;
LABEL_17:
  v32 = objc_opt_self();
  v33 = sub_1E4205ED4();

  v34 = [objc_opt_self() configurationWithPointSize_];
  v26 = [v32 vuiSystemImageNamed:v33 withConfiguration:v34 accessibilityDescription:0];

  OUTLINED_FUNCTION_2_266("searchIconTintColor", v47, v52, v55);

  if (v56)
  {
    if (OUTLINED_FUNCTION_87_6(v35, v36, v37, MEMORY[0x1E69E6158], v38, v39, v40, v41, v48, v53, v55))
    {
      sub_1E3280A90(0, &qword_1EE23AE20, 0x1E69DC888);
      sub_1E39F9114(v49, v54);
      v43 = v42;

      if (v43)
      {
        if (v26)
        {
          v44 = [v26 imageWithTintColor:v43 renderingMode:1];

          v26 = v44;
        }

        else
        {
        }
      }
    }
  }

  else
  {
    sub_1E329505C(&v55);
  }

LABEL_10:
  if ([v6 isSearchEnabled] && v26)
  {
    sub_1E3280A90(0, &qword_1ECF40618, 0x1E69DCF08);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v26 = v26;
    v28 = [ObjCClassFromMetadata appearance];
    [v28 setImage:v26 forSearchBarIcon:0 state:0];
  }

  v29 = type metadata accessor for SearchController();
  v57.receiver = v3;
  v57.super_class = v29;
  v30 = objc_msgSendSuper2(&v57, sel_initWithSearchResultsController_, a1);

  return v30;
}

void sub_1E410A6CC()
{
  *(v0 + OBJC_IVAR____TtC8VideosUI16SearchController____lazy_storage___searchBarController) = 0;
  sub_1E42076B4();
  __break(1u);
}

id sub_1E410A7E8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SearchController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1E410A82C()
{
  v1 = v0;
  v2 = sub_1E41FFCB4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1E324FBDC();
  (*(v3 + 16))(v5, v6, v2);
  v7 = sub_1E41FFC94();
  v8 = sub_1E4206814();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_1E323F000, v7, v8, "SearchController:: searchBarResignFirstResponder", v9, 2u);
    MEMORY[0x1E69143B0](v9, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  v10 = [v1 searchBar];
  [v10 resignFirstResponder];
}

void sub_1E410A9B8()
{
  v1 = [v0 searchBar];
  v2 = [v1 searchTextField];

  LODWORD(v1) = [v2 isEditing];
  if (v1)
  {
    v3 = &selRef_canResignFirstResponder;
    v4 = &selRef_resignFirstResponder;
  }

  else
  {
    v3 = &selRef_canBecomeFirstResponder;
    v4 = &selRef_becomeFirstResponder;
  }

  sub_1E410AA58(v3, v4);
}

void sub_1E410AA58(SEL *a1, SEL *a2)
{
  v5 = [v2 searchBar];
  LODWORD(a1) = [v5 *a1];

  if (a1)
  {
    v6 = [v2 searchBar];
    [v6 *a2];
  }
}

uint64_t sub_1E410AB10()
{
  v1 = OBJC_IVAR____TtCC8VideosUI17VerticalStackView14ExpandableView____lazy_storage___viewLayout;
  if (*(v0 + OBJC_IVAR____TtCC8VideosUI17VerticalStackView14ExpandableView____lazy_storage___viewLayout))
  {
    v2 = *(v0 + OBJC_IVAR____TtCC8VideosUI17VerticalStackView14ExpandableView____lazy_storage___viewLayout);
  }

  else
  {
    type metadata accessor for ViewLayout();
    v2 = sub_1E3C2F968();
    *(v0 + v1) = v2;
  }

  return v2;
}

double sub_1E410AB80(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtCC8VideosUI17VerticalStackView14ExpandableView____lazy_storage___viewLayout) = a1;

  return result;
}

id sub_1E410AB98()
{
  v1 = OBJC_IVAR____TtCC8VideosUI17VerticalStackView14ExpandableView____lazy_storage___scrollView;
  v2 = *&v0[OBJC_IVAR____TtCC8VideosUI17VerticalStackView14ExpandableView____lazy_storage___scrollView];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtCC8VideosUI17VerticalStackView14ExpandableView____lazy_storage___scrollView];
  }

  else
  {
    v4 = v0;
    type metadata accessor for BaseScrollView();
    OUTLINED_FUNCTION_5_8();
    v5 = sub_1E3890DAC();
    [v4 vui:v5 addSubview:0 oldView:?];
    v6 = v5;
    [v6 setShowsVerticalScrollIndicator_];
    [v6 setAlwaysBounceHorizontal_];

    v7 = *&v4[v1];
    *&v4[v1] = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

id sub_1E410AC58(uint64_t a1)
{
  v2 = a1;
  v3 = objc_allocWithZone(v1);
  return sub_1E410AC8C(v2);
}

id sub_1E410AC8C(char a1)
{
  ObjectType = swift_getObjectType();
  *(v1 + OBJC_IVAR____TtCC8VideosUI17VerticalStackView14ExpandableView_subviewElements) = 0;
  *(v1 + OBJC_IVAR____TtCC8VideosUI17VerticalStackView14ExpandableView____lazy_storage___viewLayout) = 0;
  *(v1 + OBJC_IVAR____TtCC8VideosUI17VerticalStackView14ExpandableView____lazy_storage___scrollView) = 0;
  *(v1 + OBJC_IVAR____TtCC8VideosUI17VerticalStackView14ExpandableView_shouldUseBoundingBoxMargin) = a1;
  v8 = ObjectType;
  v4 = OUTLINED_FUNCTION_5_8();
  return objc_msgSendSuper2(v5, v6, v4, v1, v8);
}

void sub_1E410AD00()
{
  *(v0 + OBJC_IVAR____TtCC8VideosUI17VerticalStackView14ExpandableView_subviewElements) = 0;
  *(v0 + OBJC_IVAR____TtCC8VideosUI17VerticalStackView14ExpandableView____lazy_storage___viewLayout) = 0;
  *(v0 + OBJC_IVAR____TtCC8VideosUI17VerticalStackView14ExpandableView____lazy_storage___scrollView) = 0;
  sub_1E42076B4();
  __break(1u);
}

void sub_1E410AD98(char a1, double a2, double a3)
{
  v4 = v3;
  v30.receiver = v3;
  v30.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v30, sel_vui_layoutSubviews_computationOnly_, a1 & 1, a2, a3);
  v26 = a2;
  if (a2 != 0.0 || a3 != 0.0)
  {
    v8 = sub_1E410AB10();
    (*(*v8 + 176))(v31);

    v27[0] = v31[0];
    v27[1] = v31[1];
    v28 = v32;
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B3C0, &qword_1E42B9710);
    sub_1E4148C68(sub_1E3C2FC84, v9, v29);
    v10 = *v29;
    v11 = *&v29[1];
    v12 = *&v29[2];
    v13 = *&v29[3];
    v29[0] = MEMORY[0x1E69E7CC0];
    v14 = OBJC_IVAR____TtCC8VideosUI17VerticalStackView14ExpandableView_subviewElements;
    OUTLINED_FUNCTION_5_0(&v4[OBJC_IVAR____TtCC8VideosUI17VerticalStackView14ExpandableView_subviewElements], v27);
    if (*&v4[v14])
    {
      type metadata accessor for VerticalStackView();
      v15 = v4[OBJC_IVAR____TtCC8VideosUI17VerticalStackView14ExpandableView_shouldUseBoundingBoxMargin];

      v17 = sub_1E3B98DD4(v16, v29, v15, v26 - (v11 + v13), v11, v10);

      v18 = v12 + v17;
      v19 = sub_1E410AB98();
      (*((*MEMORY[0x1E69E7D40] & *v19) + 0x58))(v26, v18);

      if (v18 <= a3)
      {
        a3 = v18;
      }
    }

    else
    {
      v26 = 0.0;
      a3 = 0.0;
    }

    v20 = v29[0];
    if (a1)
    {
    }

    else
    {
      v21 = 0;
      v22 = *(v29[0] + 16);
      for (i = v29[0] + 64; ; i += 40)
      {
        if (v22 == v21)
        {

          v25 = sub_1E410AB98();
          [v25 setFrame_];

          return;
        }

        if (v21 >= *(v20 + 16))
        {
          break;
        }

        ++v21;
        v24 = *(i - 32);
        [v4 bounds];
        [v4 vuiIsRTL];
        VUIRectWithFlippedOriginRelativeToBoundingRectWithCondition();
        [v24 setFrame_];
      }

      __break(1u);
    }
  }
}

void sub_1E410B128(unint64_t a1)
{
  v3 = OBJC_IVAR____TtCC8VideosUI17VerticalStackView14ExpandableView_subviewElements;
  swift_beginAccess();
  v4 = *&v1[v3];
  if (!v4)
  {
    if (a1)
    {
      goto LABEL_18;
    }

    goto LABEL_28;
  }

  if (a1)
  {

    v6 = sub_1E4079328(v5, a1);

    if ((v6 & 1) == 0)
    {
      v4 = *&v1[v3];
      if (!v4)
      {
        goto LABEL_18;
      }

      goto LABEL_5;
    }

LABEL_28:
    [v1 vui_setNeedsLayout];
    return;
  }

LABEL_5:
  v7 = sub_1E32AE9B0(v4);

  for (i = 0; v7 != i; ++i)
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x1E6911E60](i, v4);
    }

    else
    {
      if (i >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_32;
      }

      v9 = *(v4 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      goto LABEL_31;
    }

    OUTLINED_FUNCTION_5_0(v9 + 16, v18);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v11 = Strong;
      [Strong removeFromSuperview];
    }
  }

LABEL_18:
  *&v1[v3] = a1;

  v12 = *&v1[v3];
  if (!v12)
  {
    goto LABEL_28;
  }

  v13 = sub_1E32AE9B0(v12);

  for (j = 0; ; ++j)
  {
    if (v13 == j)
    {

      goto LABEL_28;
    }

    if ((v12 & 0xC000000000000001) != 0)
    {
      v15 = MEMORY[0x1E6911E60](j, v12);
    }

    else
    {
      if (j >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_30;
      }

      v15 = *(v12 + 8 * j + 32);
    }

    if (__OFADD__(j, 1))
    {
      break;
    }

    OUTLINED_FUNCTION_5_0(v15 + 16, v17);
    v16 = swift_unknownObjectWeakLoadStrong();
    MEMORY[0x1EEE9AC00](v16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35970, &unk_1E42C5BA0);
    sub_1E4148DE0(sub_1E410B464);
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
}

void sub_1E410B464(uint64_t *a1)
{
  v1 = *a1;
  v2 = sub_1E410AB98();
  [v2 vui:v1 addSubview:0 oldView:?];
}

id sub_1E410B510()
{
  v0 = [objc_opt_self() sharedPreferences];

  return v0;
}

uint64_t sub_1E410B550(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  *(result + 32) = a3;
  *(result + 40) = a4;
  *(result + 48) = a5;
  return result;
}

uint64_t sub_1E410B5B4(char a1)
{
  v2 = v1;
  v4 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v59 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v59 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v59 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v59 - v20;
  if (TVAppFeature.isEnabled.getter(8, v22, v23))
  {
    if (a1)
    {
      sub_1E3E37F30();
      OUTLINED_FUNCTION_0_11();
      v24(v9);

      v25 = sub_1E41FFC94();
      v26 = sub_1E42067E4();

      if (os_log_type_enabled(v25, v26))
      {
        v27 = OUTLINED_FUNCTION_6_21();
        v28 = OUTLINED_FUNCTION_100();
        v62 = v28;
        *v27 = 136315138;
        *(v27 + 4) = sub_1E3270FC8(*(v2 + 16), *(v2 + 24), &v62);
        _os_log_impl(&dword_1E323F000, v25, v26, "Live activity autostart:: %s - SKIP - Sports App Live Activities Enabled", v27, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v28);
        OUTLINED_FUNCTION_6_0();
        OUTLINED_FUNCTION_6_0();
      }

      (*(v6 + 8))(v9, v4);
    }

LABEL_16:
    v43 = 0;
    return v43 & 1;
  }

  if (![*(v2 + 48) sportsScoreSpoilersAllowed])
  {
    if (a1)
    {
      sub_1E3E37F30();
      OUTLINED_FUNCTION_0_11();
      v38(v12);

      v39 = sub_1E41FFC94();
      v40 = sub_1E42067E4();

      if (os_log_type_enabled(v39, v40))
      {
        v41 = OUTLINED_FUNCTION_6_21();
        v42 = OUTLINED_FUNCTION_100();
        v62 = v42;
        *v41 = 136315138;
        *(v41 + 4) = sub_1E3270FC8(*(v2 + 16), *(v2 + 24), &v62);
        _os_log_impl(&dword_1E323F000, v39, v40, "Live activity autostart:: %s - SKIP - Sports score spoilers not allowed", v41, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v42);
        OUTLINED_FUNCTION_6_0();
        OUTLINED_FUNCTION_6_0();
      }

      (*(v6 + 8))(v12, v4);
    }

    goto LABEL_16;
  }

  v29 = sub_1E4204F74();
  v30 = *(v2 + 24);
  v60 = *(v2 + 16);
  v61 = v30;
  v31 = sub_1E3862230(v60, v30, v29);

  if (v31)
  {
    if (a1)
    {
      v32 = sub_1E3E37F30();
      (*(v6 + 16))(v15, v32, v4);

      v33 = sub_1E41FFC94();
      v34 = sub_1E42067E4();

      if (os_log_type_enabled(v33, v34))
      {
        v35 = OUTLINED_FUNCTION_6_21();
        v36 = OUTLINED_FUNCTION_100();
        v62 = v36;
        *v35 = 136315138;
        *(v35 + 4) = sub_1E3270FC8(v60, v61, &v62);
        OUTLINED_FUNCTION_6_235(&dword_1E323F000, v37, v34, "Live activity autostart:: %s - SKIP - Live activity already exists");
        __swift_destroy_boxed_opaque_existential_1(v36);
        OUTLINED_FUNCTION_6_0();
        OUTLINED_FUNCTION_6_0();
      }

      (*(v6 + 8))(v15, v4);
    }

    goto LABEL_16;
  }

  if (*(v2 + 32) != 1)
  {
    if (a1)
    {
      sub_1E3E37F30();
      OUTLINED_FUNCTION_0_11();
      v53(v18);

      v54 = sub_1E41FFC94();
      v55 = sub_1E42067E4();

      if (os_log_type_enabled(v54, v55))
      {
        v56 = OUTLINED_FUNCTION_6_21();
        v57 = OUTLINED_FUNCTION_100();
        v62 = v57;
        *v56 = 136315138;
        *(v56 + 4) = sub_1E3270FC8(v60, v61, &v62);
        OUTLINED_FUNCTION_6_235(&dword_1E323F000, v58, v55, "Live activity autostart:: %s - SKIP - Not in Up next");
        __swift_destroy_boxed_opaque_existential_1(v57);
        OUTLINED_FUNCTION_6_0();
        OUTLINED_FUNCTION_6_0();
      }

      (*(v6 + 8))(v18, v4);
    }

    goto LABEL_16;
  }

  v46 = v60;
  v45 = v61;
  v43 = sub_1E4204FC4() ^ 1;
  if (v43 & 1) == 0 && (a1)
  {
    sub_1E3E37F30();
    OUTLINED_FUNCTION_0_11();
    v47(v21);

    v48 = sub_1E41FFC94();
    v49 = sub_1E42067E4();

    if (os_log_type_enabled(v48, v49))
    {
      v50 = OUTLINED_FUNCTION_6_21();
      v51 = OUTLINED_FUNCTION_100();
      v62 = v51;
      *v50 = 136315138;
      *(v50 + 4) = sub_1E3270FC8(v46, v45, &v62);
      OUTLINED_FUNCTION_6_235(&dword_1E323F000, v52, v49, "Live activity autostart:: %s - SKIP - Dismissed/Unfollowed activity");
      __swift_destroy_boxed_opaque_existential_1(v51);
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();
    }

    (*(v6 + 8))(v21, v4);
    goto LABEL_16;
  }

  return v43 & 1;
}

uint64_t sub_1E410BB9C()
{
  OUTLINED_FUNCTION_24();
  if (sub_1E410B5B4(1))
  {
    v1 = swift_task_alloc();
    *(v0 + 24) = v1;
    *v1 = v0;
    v1[1] = sub_1E410BC70;

    return sub_1E410BD70();
  }

  else
  {
    v3 = *(v0 + 8);

    return v3(0, 0);
  }
}

uint64_t sub_1E410BC70()
{
  OUTLINED_FUNCTION_24();
  v2 = v1;
  v4 = v3;
  v7 = *v0;

  v5 = *(v7 + 8);

  return v5(v4, v2 & 1);
}

uint64_t sub_1E410BD70()
{
  OUTLINED_FUNCTION_24();
  v1[15] = v0;
  v2 = sub_1E41FFCB4();
  v1[16] = v2;
  v1[17] = *(v2 - 8);
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E410BE38, 0, 0);
}

uint64_t sub_1E410BE38()
{
  OUTLINED_FUNCTION_24();
  v1 = v0[15];
  v0[2] = v0;
  v0[7] = v0 + 13;
  v0[3] = sub_1E410BED4;
  v2 = swift_continuation_init();
  sub_1E410C2C4(v2, v1);

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1E410BED4()
{
  OUTLINED_FUNCTION_24();
  *(*v0 + 160) = *(*v0 + 104);

  return MEMORY[0x1EEE6DFA0](sub_1E410BFCC, 0, 0);
}

uint64_t sub_1E410BFCC()
{
  v32 = v0;
  v1 = v0[20];
  if (v1)
  {
    sub_1E3E37F30();
    v2 = OUTLINED_FUNCTION_7_244();
    v3(v2);

    v4 = v1;
    v5 = sub_1E41FFC94();
    v6 = sub_1E42067E4();

    v7 = os_log_type_enabled(v5, v6);
    v8 = v0[19];
    v10 = v0[16];
    v9 = v0[17];
    if (v7)
    {
      v30 = v0[19];
      v11 = v0[15];
      v12 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      *v12 = 136315394;
      *(v12 + 4) = sub_1E3270FC8(*(v11 + 16), *(v11 + 24), &v31);
      *(v12 + 12) = 2080;
      swift_getErrorValue();
      v13 = sub_1E4207AB4();
      v15 = sub_1E3270FC8(v13, v14, &v31);

      *(v12 + 14) = v15;
      _os_log_impl(&dword_1E323F000, v5, v6, "Live activity autostart:: %s - FAILED - %s", v12, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();

      (*(v9 + 8))(v30, v10);
    }

    else
    {

      (*(v9 + 8))(v8, v10);
    }

    v27 = v0[20];
  }

  else
  {
    sub_1E3E37F30();
    v16 = OUTLINED_FUNCTION_7_244();
    v17(v16);

    v18 = sub_1E41FFC94();
    v19 = sub_1E42067E4();

    v20 = os_log_type_enabled(v18, v19);
    v22 = v0[17];
    v21 = v0[18];
    v23 = v0[16];
    if (v20)
    {
      v24 = v0[15];
      v25 = OUTLINED_FUNCTION_6_21();
      v26 = OUTLINED_FUNCTION_100();
      v31 = v26;
      *v25 = 136315138;
      *(v25 + 4) = sub_1E3270FC8(*(v24 + 16), *(v24 + 24), &v31);
      _os_log_impl(&dword_1E323F000, v18, v19, "Live activity autostart:: %s - SUCCESS", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v26);
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();
    }

    (*(v22 + 8))(v21, v23);
    v27 = 1;
  }

  v28 = v0[1];

  return v28(v27, v1 != 0);
}

uint64_t sub_1E410C2C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E4204D54();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1E3E37F30();
  (*(v12 + 16))(v15, v16, v10);

  v17 = sub_1E41FFC94();
  v18 = sub_1E42067E4();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = OUTLINED_FUNCTION_6_21();
    v26 = v4;
    v20 = v19;
    v21 = OUTLINED_FUNCTION_100();
    v25 = a1;
    v22 = v21;
    v27 = v21;
    *v20 = 136315138;
    *(v20 + 4) = sub_1E3270FC8(*(a2 + 16), *(a2 + 24), &v27);
    _os_log_impl(&dword_1E323F000, v17, v18, "Autostarting live activity for '%s'", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v22);
    a1 = v25;
    OUTLINED_FUNCTION_6_0();
    v4 = v26;
    OUTLINED_FUNCTION_6_0();
  }

  (*(v12 + 8))(v15, v10);
  (*(v6 + 104))(v9, *MEMORY[0x1E69D3988], v4);
  *(swift_allocObject() + 16) = a1;
  sub_1E4204F14();

  return (*(v6 + 8))(v9, v4);
}

uint64_t sub_1E410C568()
{

  return v0;
}

uint64_t sub_1E410C598()
{
  sub_1E410C568();

  return MEMORY[0x1EEE6BDC0](v0, 56, 7);
}

uint64_t sub_1E410C600(void *a1)
{
  v3 = *(v1 + 16);
  v4 = a1;
  **(*(v3 + 64) + 40) = a1;

  return swift_continuation_resume();
}

uint64_t sub_1E410C688()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1E4200674();

  return v1;
}

uint64_t sub_1E410C6FC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 928))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1E410C750(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 936);

  return v4(v2, v3);
}

uint64_t sub_1E410C7C0()
{
  OUTLINED_FUNCTION_156();
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1E4200684();
}

void (*sub_1E410C838())(void *a1)
{
  v1 = __swift_coroFrameAllocStub(0x38uLL);
  OUTLINED_FUNCTION_18_4(v1);
  v0[4] = swift_getKeyPath();
  v0[5] = swift_getKeyPath();
  v0[6] = sub_1E4200664();
  return sub_1E3844B40;
}

uint64_t sub_1E410C8E0()
{
  OUTLINED_FUNCTION_11_3(v0 + OBJC_IVAR____TtC8VideosUI17TemplateViewModel__optimizedId, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F9C0, &unk_1E42A2A50);
  sub_1E4200644();
  return swift_endAccess();
}

uint64_t sub_1E410C94C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BB20, "tZ\t");
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_41();
  v7 = OUTLINED_FUNCTION_11_6();
  v8(v7);
  OUTLINED_FUNCTION_11_3(v1 + OBJC_IVAR____TtC8VideosUI17TemplateViewModel__optimizedId, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F9C0, &unk_1E42A2A50);
  sub_1E4200654();
  swift_endAccess();
  return (*(v5 + 8))(a1, v3);
}

void (*sub_1E410CA68())(uint64_t a1, char a2)
{
  v2 = __swift_coroFrameAllocStub(0x40uLL);
  *(OUTLINED_FUNCTION_18_4(v2) + 24) = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BB20, "tZ\t");
  v1[4] = v3;
  v4 = *(v3 - 8);
  v1[5] = v4;
  v5 = *(v4 + 64);
  v1[6] = __swift_coroFrameAllocStub(v5);
  v1[7] = __swift_coroFrameAllocStub(v5);
  OUTLINED_FUNCTION_11_3(v0 + OBJC_IVAR____TtC8VideosUI17TemplateViewModel__optimizedId, v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F9C0, &unk_1E42A2A50);
  sub_1E4200644();
  swift_endAccess();
  return sub_1E410CB80;
}

void sub_1E410CB80(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 48);
  v4 = *(*a1 + 56);
  if (a2)
  {
    v5 = v2[4];
    v6 = v2[5];
    (*(v6 + 16))(*(*a1 + 48), v4, v5);
    sub_1E410C94C(v3);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    sub_1E410C94C(*(*a1 + 56));
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t sub_1E410CC68()
{
  v1 = (v0 + OBJC_IVAR____TtC8VideosUI17TemplateViewModel_controllerRef);
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_1E410CCBC()
{
  OUTLINED_FUNCTION_156();
  v3 = (v1 + OBJC_IVAR____TtC8VideosUI17TemplateViewModel_controllerRef);
  OUTLINED_FUNCTION_3_0(v3, v5);
  *v3 = v2;
  v3[1] = v0;
}

void (*sub_1E410CE74())(uint64_t, char)
{
  v2 = __swift_coroFrameAllocStub(0x38uLL);
  v3 = OUTLINED_FUNCTION_18_4(v2);
  OUTLINED_FUNCTION_15_138(v3, OBJC_IVAR____TtC8VideosUI17TemplateViewModel_delegate);
  Strong = swift_unknownObjectWeakLoadStrong();
  v5 = *(v0 + 8);
  *(v1 + 24) = Strong;
  *(v1 + 32) = v5;
  return sub_1E41107BC;
}

uint64_t sub_1E410CF00()
{
  OUTLINED_FUNCTION_156();
  v3 = v1 + *v2;
  OUTLINED_FUNCTION_3_0(v3, v5);
  *(v3 + 8) = v0;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1E410CF5C())(uint64_t a1, char a2)
{
  v2 = __swift_coroFrameAllocStub(0x38uLL);
  v3 = OUTLINED_FUNCTION_18_4(v2);
  OUTLINED_FUNCTION_15_138(v3, OBJC_IVAR____TtC8VideosUI17TemplateViewModel_updateRequestor);
  Strong = swift_unknownObjectWeakLoadStrong();
  v5 = *(v0 + 8);
  *(v1 + 24) = Strong;
  *(v1 + 32) = v5;
  return sub_1E3EFA4A0;
}

uint64_t sub_1E410CFDC()
{
  v1 = v0;
  OUTLINED_FUNCTION_8();
  v28 = (*(v2 + 368))();
  v29 = v3;
  MEMORY[0x1E69109E0](23328, 0xE200000000000000);
  v4 = sub_1E414A784(v28, v29, v1[2], v1[3]);
  v6 = v5;

  v8 = (*(*v0 + 264))(v7);
  v10 = v8;
  if (v9)
  {
    sub_1E37614CC(v8, v9, v8);
    v11 = OUTLINED_FUNCTION_53_1();
    sub_1E38D2484(v11, v12, v13);

    v10 = v28;
    v14 = v29;
  }

  else
  {
    v14 = 0;
  }

  v15 = sub_1E414A784(v4, v6, v10, v14);
  v17 = v16;

  v19 = (*(*v1 + 1000))(v18);
  v21 = v19;
  v22 = v20;
  if (v20)
  {
    sub_1E37614CC(v19, v20, v19);
    v23 = OUTLINED_FUNCTION_53_1();
    sub_1E38D2484(v23, v24, v25);

    v21 = v28;
    v22 = v29;
  }

  v26 = sub_1E414A784(v15, v17, v21, v22);

  MEMORY[0x1E69109E0](93, 0xE100000000000000);

  return v26;
}

uint64_t sub_1E410D260(uint64_t a1, uint64_t *a2, uint64_t (*a3)(uint64_t))
{
  v6 = *a2;
  OUTLINED_FUNCTION_3_0(v3 + *a2, v9);
  v7 = *(v3 + v6);
  *(v3 + v6) = a1;
  return a3(v7);
}

uint64_t TemplateViewModel.initialActionDataSource.getter()
{
  OUTLINED_FUNCTION_8();
  v2 = (*(v1 + 672))();
  v6[3] = &type metadata for ViewModelKeys;
  v6[4] = &off_1F5D7BCA8;
  LOBYTE(v6[0]) = 18;
  sub_1E39BD1A0(v6, v2);
  OUTLINED_FUNCTION_33_12();
  __swift_destroy_boxed_opaque_existential_1Tm(v6);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2EB10, &qword_1E42B9000);
  v4 = sub_1E3751C10();
  sub_1E4148F70(sub_1E410D3FC, v0, v3, v4, v6);

  return v6[0];
}

id sub_1E410D3FC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = sub_1E3744600(*a1);
  OUTLINED_FUNCTION_8();
  if ((*(v4 + 648))())
  {
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
  }

  else
  {
    Strong = 0;
  }

  v6 = objc_allocWithZone(VUIRouterDataSource);
  result = sub_1E37FB770(v3, Strong);
  *a2 = result;
  return result;
}

void sub_1E410D51C()
{
  OUTLINED_FUNCTION_31_1();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v117 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v118 = v8;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v109 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F9C0, &unk_1E42A2A50);
  OUTLINED_FUNCTION_0_10();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_41();
  v19 = OBJC_IVAR____TtC8VideosUI17TemplateViewModel__optimizedId;
  v124[0] = 0xD000000000000019;
  v124[1] = 0x80000001E428D7C0;
  sub_1E4200634();
  (*(v17 + 32))(v0 + v19, v1, v15);
  *(v0 + OBJC_IVAR____TtC8VideosUI17TemplateViewModel_eventMonitorDescriptors) = 0;
  v20 = (v0 + OBJC_IVAR____TtC8VideosUI17TemplateViewModel_controllerRef);
  *v20 = 0;
  v20[1] = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI17TemplateViewModel_contextDataRef) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI17TemplateViewModel_appendContextDataRef) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI17TemplateViewModel_prefetchDataRef) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI17TemplateViewModel_backgroundViewModel) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI17TemplateViewModel_templateBackgroundImage) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI17TemplateViewModel_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC8VideosUI17TemplateViewModel_updateRequestor + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC8VideosUI17TemplateViewModel_originatorViewModel) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI17TemplateViewModel_templateType) = v7;
  ViewModelKeys.rawValue.getter(30);
  OUTLINED_FUNCTION_16_161(v21, v22);

  if (v125)
  {
    v23 = swift_dynamicCast();
    if (v23)
    {
      v24 = v127[0];
    }

    else
    {
      v24 = 0;
    }

    if (v23)
    {
      v25 = v127[1];
    }

    else
    {
      v25 = 0;
    }
  }

  else
  {
    sub_1E325F7A8(v124, &unk_1ECF296E0, &unk_1E4298030);
    v24 = 0;
    v25 = 0;
  }

  OUTLINED_FUNCTION_3_0(v20, &v129);
  *v20 = v24;
  v20[1] = v25;

  v26 = sub_1E39BEDCC(0, v5, v3);
  v27 = v26;
  v28 = v118;
  if (!v26)
  {

    goto LABEL_48;
  }

  v29 = *(*v26 + 464);
  v30 = *v26 + 464;

  v113 = v29;
  v112 = v30;
  v32 = (v29)(v31);

  if (v32)
  {

    v33 = sub_1E410F008();

    (*(*v27 + 472))(v33);
  }

  ViewModelKeys.rawValue.getter(33);
  OUTLINED_FUNCTION_16_161(v34, v35);

  v111 = v3;
  if (v125)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
    OUTLINED_FUNCTION_12_173();
    if (swift_dynamicCast())
    {
      OUTLINED_FUNCTION_3_0(v27 + OBJC_IVAR____TtC8VideosUI17TemplateViewModel_eventMonitorDescriptors, &v119);
      OUTLINED_FUNCTION_37_79();

      sub_1E324FBDC();
      OUTLINED_FUNCTION_21_8();
      v36 = v117;
      v37(v14);

      v38 = sub_1E41FFC94();
      v39 = v28;
      v40 = sub_1E4206814();

      if (os_log_type_enabled(v38, v40))
      {
        v41 = OUTLINED_FUNCTION_49_0();
        v110 = OUTLINED_FUNCTION_72_0();
        v124[0] = v110;
        *v41 = 136446466;
        v42 = sub_1E410E358();
        OUTLINED_FUNCTION_45_73(v42, v43);
        OUTLINED_FUNCTION_33_12();
        *(v41 + 4) = v36;
        *(v41 + 12) = 2080;
        v44 = sub_1E4205C74();
        v36 = v45;

        v46 = sub_1E3270FC8(v44, v36, v124);
        OUTLINED_FUNCTION_23_108();

        *(v41 + 14) = v46;
        _os_log_impl(&dword_1E323F000, v38, v40, "%{public}s Event Descriptors [%s]", v41, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_6_0();
        OUTLINED_FUNCTION_6_0();
      }

      else
      {
      }

      (*(v39 + 8))(v14, v36);
      v28 = v39;
      goto LABEL_21;
    }
  }

  else
  {
    sub_1E325F7A8(v124, &unk_1ECF296E0, &unk_1E4298030);
  }

  v36 = v117;
LABEL_21:
  v47 = (v27 + OBJC_IVAR____TtC8VideosUI17TemplateViewModel_controllerRef);
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v48 = v47[1];
  v49 = v116;
  if (v48)
  {
    v50 = *v47;

    sub_1E324FBDC();
    OUTLINED_FUNCTION_21_8();
    v51(v49);

    v52 = sub_1E41FFC94();
    v53 = sub_1E4206814();

    if (os_log_type_enabled(v52, v53))
    {
      v36 = OUTLINED_FUNCTION_49_0();
      v124[0] = OUTLINED_FUNCTION_72_0();
      *v36 = 136446466;
      v54 = sub_1E410E358();
      v56 = OUTLINED_FUNCTION_45_73(v54, v55);

      *(v36 + 4) = v56;
      *(v36 + 12) = 2080;
      sub_1E3270FC8(v50, v48, v124);
      OUTLINED_FUNCTION_10_23();

      *(v36 + 14) = v27;
      _os_log_impl(&dword_1E323F000, v52, v53, "%{public}s JS ControllerRef [%s]", v36, 0x16u);
      swift_arrayDestroy();
      v28 = v118;
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_23_108();
      OUTLINED_FUNCTION_6_0();

      (*(v28 + 8))(v116, v36);
    }

    else
    {

      (*(v28 + 8))(v49, v36);
    }
  }

  ViewModelKeys.rawValue.getter(31);
  OUTLINED_FUNCTION_16_161(v57, v58);

  if (v125)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
    v59 = OUTLINED_FUNCTION_12_173();
    v60 = MEMORY[0x1E69E7CA0];
    if (OUTLINED_FUNCTION_47_59(v59, v61, v62, v63))
    {
      v64 = v127[0];
      v65 = OBJC_IVAR____TtC8VideosUI17TemplateViewModel_contextDataRef;
      OUTLINED_FUNCTION_3_0(v27 + OBJC_IVAR____TtC8VideosUI17TemplateViewModel_contextDataRef, &v120);
      *(v27 + v65) = v64;
    }
  }

  else
  {
    sub_1E325F7A8(v124, &unk_1ECF296E0, &unk_1E4298030);
    v60 = MEMORY[0x1E69E7CA0];
  }

  ViewModelKeys.rawValue.getter(35);
  OUTLINED_FUNCTION_16_161(v66, v67);

  if (v125)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
    v68 = OUTLINED_FUNCTION_12_173();
    if (OUTLINED_FUNCTION_47_59(v68, v69, v70, v71))
    {
      OUTLINED_FUNCTION_3_0(v27 + OBJC_IVAR____TtC8VideosUI17TemplateViewModel_appendContextDataRef, &v121);
      OUTLINED_FUNCTION_37_79();

      sub_1E324FBDC();
      OUTLINED_FUNCTION_21_8();
      v72 = v114;
      v73(v114);

      v74 = sub_1E41FFC94();
      v75 = v28;
      v76 = sub_1E4206814();

      if (os_log_type_enabled(v74, v76))
      {
        v77 = OUTLINED_FUNCTION_49_0();
        v36 = OUTLINED_FUNCTION_72_0();
        v124[0] = v36;
        *v77 = 136446466;
        v78 = sub_1E410E358();
        OUTLINED_FUNCTION_45_73(v78, v79);
        OUTLINED_FUNCTION_34_3();
        *(v77 + 4) = v48;
        *(v77 + 12) = 2080;
        v80 = sub_1E4205C74();
        v48 = v81;

        sub_1E3270FC8(v80, v48, v124);
        OUTLINED_FUNCTION_10_23();

        *(v77 + 14) = v80;
        _os_log_impl(&dword_1E323F000, v74, v76, "%{public}s AppendContextData [%s]", v77, 0x16u);
        v60 = MEMORY[0x1E69E7CA0];
        swift_arrayDestroy();
        OUTLINED_FUNCTION_23_108();
        OUTLINED_FUNCTION_6_0();
        OUTLINED_FUNCTION_6_0();

        v28 = v118;
        (*(v118 + 8))(v114, v36);
      }

      else
      {

        (*(v75 + 8))(v72, v36);
        v28 = v75;
        v60 = MEMORY[0x1E69E7CA0];
      }
    }
  }

  else
  {
    sub_1E325F7A8(v124, &unk_1ECF296E0, &unk_1E4298030);
  }

  ViewModelKeys.rawValue.getter(32);
  OUTLINED_FUNCTION_16_161(v82, v83);

  if (v125)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
    v84 = OUTLINED_FUNCTION_12_173();
    if (OUTLINED_FUNCTION_47_59(v84, v85, v86, v87))
    {
      OUTLINED_FUNCTION_3_0(v27 + OBJC_IVAR____TtC8VideosUI17TemplateViewModel_prefetchDataRef, &v122);
      OUTLINED_FUNCTION_37_79();

      sub_1E324FBDC();
      OUTLINED_FUNCTION_21_8();
      v88 = v115;
      v89(v115);

      v90 = sub_1E41FFC94();
      v91 = sub_1E4206814();

      if (os_log_type_enabled(v90, v91))
      {
        v92 = OUTLINED_FUNCTION_49_0();
        LODWORD(v116) = v91;
        v93 = v92;
        v124[0] = OUTLINED_FUNCTION_72_0();
        *v93 = 136446466;
        v94 = sub_1E410E358();
        OUTLINED_FUNCTION_45_73(v94, v95);
        OUTLINED_FUNCTION_34_3();
        *(v93 + 4) = v48;
        *(v93 + 12) = 2080;
        v96 = sub_1E4205C74();
        v98 = v97;

        sub_1E3270FC8(v96, v98, v124);
        OUTLINED_FUNCTION_10_23();

        *(v93 + 14) = v96;
        _os_log_impl(&dword_1E323F000, v90, v116, "%{public}s PrefetchDataRef [%s]", v93, 0x16u);
        v60 = MEMORY[0x1E69E7CA0];
        swift_arrayDestroy();
        OUTLINED_FUNCTION_6_0();
        OUTLINED_FUNCTION_6_0();

        (*(v28 + 8))(v115, v117);
      }

      else
      {

        (*(v28 + 8))(v88, v36);
        v60 = MEMORY[0x1E69E7CA0];
      }
    }
  }

  else
  {
    sub_1E325F7A8(v124, &unk_1ECF296E0, &unk_1E4298030);
  }

  swift_retain_n();
  v99 = sub_1E3DD55E0(22, v5, v27);
  v100 = OBJC_IVAR____TtC8VideosUI17TemplateViewModel_backgroundViewModel;
  OUTLINED_FUNCTION_3_0(v27 + OBJC_IVAR____TtC8VideosUI17TemplateViewModel_backgroundViewModel, &v128);
  *(v27 + v100) = v99;

  v101 = *(v27 + OBJC_IVAR____TtC8VideosUI17TemplateViewModel_templateType);
  v125 = &type metadata for ViewModelKeys;
  v126 = &off_1F5D7BCA8;
  LOBYTE(v124[0]) = 8;
  sub_1E3F9F164(v124, v5, v60 + 8);

  if (v127[3])
  {
    v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
    if (OUTLINED_FUNCTION_47_59(&v123, v127, v103, v102))
    {
      v104 = v123;
    }

    else
    {
      v104 = 0;
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v124);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v124);
    sub_1E325F7A8(v127, &unk_1ECF296E0, &unk_1E4298030);
    v104 = 0;
  }

  v105 = sub_1E3F6C4B4(v101, v104);

  (*(*v27 + 584))(v105);

  v107 = v113;
  v113(v106);

  sub_1E410E484();

  v107(v108);

LABEL_48:
  OUTLINED_FUNCTION_25_2();
}

unint64_t sub_1E410E358()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 16);
    v2 = *(v0 + 24);
  }

  else
  {
    v2 = 0xE700000000000000;
    v1 = 0x6E776F6E6B6E55;
  }

  MEMORY[0x1E69109E0](v1, v2);

  MEMORY[0x1E69109E0](8236, 0xE200000000000000);

  v3 = sub_1E4123DE4(*(v0 + OBJC_IVAR____TtC8VideosUI17TemplateViewModel_templateType));
  v5 = v4;

  MEMORY[0x1E69109E0](v3, v5);

  MEMORY[0x1E69109E0](8285, 0xE200000000000000);

  return 0xD000000000000018;
}

void sub_1E410E484()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v30 = v2;
  v4 = v3;
  v5 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  v11 = v10 - v9;
  if (v4)
  {
    v12 = sub_1E32AE9B0(v4);
    v13 = 0;
    v32 = v4 & 0xFFFFFFFFFFFFFF8;
    v33 = v4 & 0xC000000000000001;
    v31 = (v7 + 8);
    v28 = v5;
    v29 = v4;
    v27 = v12;
    while (v12 != v13)
    {
      if (v33)
      {
        v14 = MEMORY[0x1E6911E60](v13, v4);
      }

      else
      {
        if (v13 >= *(v32 + 16))
        {
          goto LABEL_19;
        }

        v14 = *(v4 + 8 * v13 + 32);
      }

      if (__OFADD__(v13, 1))
      {
        __break(1u);
LABEL_19:
        __break(1u);
LABEL_20:
        __break(1u);
        return;
      }

      type metadata accessor for CollectionViewModel();
      if (swift_dynamicCastClass())
      {
        sub_1E41D78D0();
      }

      else
      {
        sub_1E41D8CDC();
      }

      v15 = sub_1E324FBDC();
      (*(v7 + 16))(v11, v15, v5);

      v16 = sub_1E41FFC94();
      v17 = sub_1E4206814();

      if (os_log_type_enabled(v16, v17))
      {
        v18 = v11;
        v19 = swift_slowAlloc();
        OUTLINED_FUNCTION_72_0();
        *v19 = 136315650;
        v20 = (*(*v1 + 376))();
        v22 = OUTLINED_FUNCTION_58_0(v20, v21);

        *(v19 + 4) = v22;
        *(v19 + 12) = 2048;
        if (__OFADD__(v13, v30))
        {
          goto LABEL_20;
        }

        *(v19 + 14) = v13 + v30;
        *(v19 + 22) = 2080;
        v24 = (*(*v14 + 224))(v23);
        v26 = OUTLINED_FUNCTION_58_0(v24, v25);

        *(v19 + 24) = v26;
        _os_log_impl(&dword_1E323F000, v16, v17, "%s GenerateReuseId: colIdx=%ld, \treuseId=%s", v19, 0x20u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_6_0();
        OUTLINED_FUNCTION_6_0();

        v11 = v18;
        v5 = v28;
        (*v31)(v18, v28);
        v4 = v29;
        v12 = v27;
      }

      else
      {

        (*v31)(v11, v5);
      }

      ++v13;
    }
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E410E7E0()
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
  v11 = sub_1E41FFBF4();
  OUTLINED_FUNCTION_0_10();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_5();
  v17 = v16 - v15;
  v19 = VUISignpostLogObject(v18);
  sub_1E41FFBC4();
  v20 = sub_1E4206BA4();
  v21 = VUISignpostLogObject(v20);
  OUTLINED_FUNCTION_41_72();
  v74 = v17;
  sub_1E41FFBA4();

  v75 = v3;
  if (v3)
  {
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    v22 = *(v3 + 16);
  }

  else
  {
    v22 = 0;
  }

  v23 = OBJC_IVAR____TtC8VideosUI17TemplateViewModel_appendContextDataRef;
  OUTLINED_FUNCTION_3_0(v1 + OBJC_IVAR____TtC8VideosUI17TemplateViewModel_appendContextDataRef, &v79);
  *(v1 + v23) = v22;

  v24 = sub_1E324FBDC();
  (*(v6 + 16))(v10, v24, v4);

  v25 = sub_1E41FFC94();
  v26 = sub_1E4206814();

  if (os_log_type_enabled(v25, v26))
  {
    v72 = v11;
    v27 = OUTLINED_FUNCTION_49_0();
    v78[0] = OUTLINED_FUNCTION_72_0();
    *v27 = 136446466;
    v28 = sub_1E410E358();
    sub_1E3270FC8(v28, v29, v78);
    v30 = OUTLINED_FUNCTION_33_12();
    *(v27 + 4) = v13;
    *(v27 + 12) = 2080;
    v31 = (*(*v1 + 1048))(v30);
    v32 = v31;
    if (v31)
    {
      v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
    }

    else
    {
      v76[1] = 0;
      v76[2] = 0;
    }

    v76[0] = v32;
    v76[3] = v31;
    v35 = sub_1E3294FA4(v76);
    sub_1E3270FC8(v35, v36, v78);
    OUTLINED_FUNCTION_33_12();
    *(v27 + 14) = v13;
    _os_log_impl(&dword_1E323F000, v25, v26, "%{public}s AppendContextData updated: %s", v27, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();

    v37 = OUTLINED_FUNCTION_123_1();
    v38(v37);
    v11 = v72;
  }

  else
  {

    v33 = OUTLINED_FUNCTION_123_1();
    v34(v33);
  }

  v39 = v75;
  if (!v75 || (OUTLINED_FUNCTION_25(), swift_beginAccess(), !*(v75 + 24)) || !sub_1E32AE9B0(*(v75 + 24)))
  {
LABEL_45:
    v68 = sub_1E4206B94();
    v69 = VUISignpostLogObject(v68);
    OUTLINED_FUNCTION_41_72();
    sub_1E41FFBA4();

    (*(v13 + 8))(v74, v11);
    OUTLINED_FUNCTION_25_2();
    return;
  }

  v40 = *(*v1 + 464);

  v71 = v40(v41);
  if (!v71)
  {
    v44 = MEMORY[0x1E69E7CC0];
LABEL_33:
    sub_1E32772D8(v44);
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    if (*(v39 + 32))
    {
      v76[0] = *(v39 + 32);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
      sub_1E32752B0(&qword_1EE23B610, &qword_1ECF2A770, &qword_1E42992B0, MEMORY[0x1E69E5E60]);
      sub_1E38D2484(sub_1E40BA6B4, MEMORY[0x1E69E7CA8] + 8, &v77);
    }

    v56 = sub_1E410F008();

    if (sub_1E32AE9B0(v56))
    {

      v58 = v40(v57);
      if (v58)
      {
        sub_1E32AE9B0(v58);
      }

      sub_1E410E484();

      v60 = v40(v59);
      if (v60)
      {
        sub_1E32AE9B0(v60);
      }

      v61 = (*(*v1 + 480))(v76);
      if (*v62)
      {

        sub_1E379738C(v63);
      }

      v64 = v61(v76, 0);
      if ((*(*v1 + 1144))(v64))
      {
        v66 = v65;
        ObjectType = swift_getObjectType();
        (*(v66 + 8))(v1, v56, ObjectType, v66);
        swift_unknownObjectRelease();
      }
    }

    goto LABEL_45;
  }

  v73 = v11;
  v42 = sub_1E32AE9B0(v71);
  v43 = 0;
  v44 = MEMORY[0x1E69E7CC0];
LABEL_15:
  v45 = v43;
  while (1)
  {
    while (1)
    {
      if (v45 == v42)
      {

        v11 = v73;
        v39 = v75;
        goto LABEL_33;
      }

      if ((v71 & 0xC000000000000001) == 0)
      {
        break;
      }

      v48 = MEMORY[0x1E6911E60](v45, v71);
      if (__OFADD__(v45++, 1))
      {
        goto LABEL_48;
      }

      v50 = *(v48 + 16);
      v47 = *(v48 + 24);

      swift_unknownObjectRelease();
      if (v47)
      {
        v70 = v50;
        v43 = v45;
        goto LABEL_25;
      }
    }

    if ((v45 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v45 >= *((v71 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_47;
    }

    v43 = v45 + 1;
    v46 = *(v71 + 32 + 8 * v45);
    v47 = *(v46 + 24);
    ++v45;
    if (v47)
    {
      v70 = *(v46 + 16);

LABEL_25:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v44 = sub_1E3740F88(0, *(v44 + 2) + 1, 1, v44);
      }

      v52 = *(v44 + 2);
      v51 = *(v44 + 3);
      v53 = v52 + 1;
      if (v52 >= v51 >> 1)
      {
        v55 = sub_1E3740F88((v51 > 1), v52 + 1, 1, v44);
        v53 = v52 + 1;
        v44 = v55;
      }

      *(v44 + 2) = v53;
      v54 = &v44[16 * v52];
      *(v54 + 4) = v70;
      *(v54 + 5) = v47;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
}

uint64_t sub_1E410F008()
{
  OUTLINED_FUNCTION_156();
  v2 = MEMORY[0x1E69E7CC0];

  sub_1E410F33C(v0);

  return v2;
}

void sub_1E410F08C()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  v10 = v9 - v8;
  v11 = *v3;
  v12 = *(*v3 + 24);
  if (v12)
  {
    v13 = v7;
    v14 = *(v11 + 16);
    v15 = *v1;

    v16 = sub_1E3862230(v14, v12, v15);

    if (v16)
    {
      v27 = v14;
      v17 = sub_1E324FBDC();
      (*(v5 + 16))(v10, v17, v13);

      v18 = sub_1E41FFC94();
      v19 = sub_1E4206814();

      if (os_log_type_enabled(v18, v19))
      {
        v20 = OUTLINED_FUNCTION_49_0();
        v28[0] = OUTLINED_FUNCTION_72_0();
        *v20 = 136446466;
        v21 = sub_1E410E358();
        v23 = sub_1E3270FC8(v21, v22, v28);

        *(v20 + 4) = v23;
        *(v20 + 12) = 2080;
        v24 = sub_1E3270FC8(v27, v12, v28);

        *(v20 + 14) = v24;
        _os_log_impl(&dword_1E323F000, v18, v19, "%{public}s: Duplicate item %s", v20, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_6_0();
        OUTLINED_FUNCTION_6_0();

        (*(v5 + 8))(v10, v13);
      }

      else
      {

        (*(v5 + 8))(v10, v13);
      }
    }

    else
    {

      MEMORY[0x1E6910BF0](v26);
      OUTLINED_FUNCTION_40_78();
      sub_1E3277398(v28, v14, v12);
    }
  }

  else
  {

    MEMORY[0x1E6910BF0](v25);
    OUTLINED_FUNCTION_40_78();
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E410F33C(unint64_t a1)
{
  v2 = sub_1E32AE9B0(a1);
  for (i = 0; ; ++i)
  {
    if (v2 == i)
    {
      goto LABEL_12;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1E6911E60](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_14;
      }
    }

    if (__OFADD__(i, 1))
    {
      break;
    }

    sub_1E410F08C();
    if (v4)
    {

LABEL_12:

      return;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
}

double sub_1E410F498()
{
  v1 = OBJC_IVAR____TtC8VideosUI17TemplateViewModel__optimizedId;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F9C0, &unk_1E42A2A50);
  OUTLINED_FUNCTION_10();
  (*(v2 + 8))(v0 + v1);

  sub_1E32AF6F8(v0 + OBJC_IVAR____TtC8VideosUI17TemplateViewModel_delegate);
  sub_1E32AF6F8(v0 + OBJC_IVAR____TtC8VideosUI17TemplateViewModel_updateRequestor);

  return result;
}

uint64_t TemplateViewModel.deinit()
{
  v0 = ViewModel.deinit();
  v1 = OBJC_IVAR____TtC8VideosUI17TemplateViewModel__optimizedId;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F9C0, &unk_1E42A2A50);
  OUTLINED_FUNCTION_10();
  (*(v2 + 8))(v0 + v1);

  sub_1E32AF6F8(v0 + OBJC_IVAR____TtC8VideosUI17TemplateViewModel_delegate);
  sub_1E32AF6F8(v0 + OBJC_IVAR____TtC8VideosUI17TemplateViewModel_updateRequestor);

  return v0;
}

uint64_t TemplateViewModel.__deallocating_deinit()
{
  v0 = TemplateViewModel.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1E410F704@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for TemplateViewModel(0);
  result = sub_1E4200514();
  *a2 = result;
  return result;
}

uint64_t sub_1E410F7A0()
{
  OUTLINED_FUNCTION_8();
  result = (*(v0 + 1168))();
  if (result)
  {
    v3 = v2;
    ObjectType = swift_getObjectType();
    LOBYTE(v3) = (*(v3 + 8))(ObjectType, v3);
    swift_unknownObjectRelease();
    return v3 & 1;
  }

  return result;
}

uint64_t sub_1E410F838(uint64_t a1)
{
  type metadata accessor for ViewModel();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32F78, &unk_1E42BA2C0);
  if (swift_dynamicCast())
  {
    v1 = *(&v6 + 1);
    v2 = v7;
    __swift_project_boxed_opaque_existential_1(&v5, *(&v6 + 1));
    v3 = (*(v2 + 8))(v1, v2);
    __swift_destroy_boxed_opaque_existential_1Tm(&v5);
  }

  else
  {
    v7 = 0;
    v5 = 0u;
    v6 = 0u;
    sub_1E325F7A8(&v5, &qword_1ECF32F70, &qword_1E42BA2B8);
    v3 = 0;
  }

  return v3 & 1;
}

uint64_t sub_1E410F91C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  if (a4)
  {
    (a4)(0, a2, a3);
  }

  return 0;
}

void sub_1E410F954()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v46 = v6;
  v8 = v7;
  v9 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v42 - v16;
  v18 = [objc_opt_self() sharedApplication];
  v19 = [v18 isRunningTest];

  if ((v19 & 1) == 0)
  {
    v45 = v5;
    if ((*(*v1 + 1168))())
    {
      v21 = v20;
      v44 = v3;
      v22 = sub_1E324FBDC();
      (*(v11 + 16))(v17, v22, v9);

      v23 = sub_1E41FFC94();
      v24 = sub_1E4206814();

      if (os_log_type_enabled(v23, v24))
      {
        v25 = OUTLINED_FUNCTION_49_0();
        v43 = v8;
        v26 = v25;
        v27 = OUTLINED_FUNCTION_72_0();
        v42 = v21;
        v47 = v27;
        *v26 = 136446466;
        v28 = sub_1E410E358();
        OUTLINED_FUNCTION_58_0(v28, v29);
        OUTLINED_FUNCTION_176_0();
        *(v26 + 4) = v1;
        *(v26 + 12) = 2080;
        v30 = ViewModelRequestType.rawValue.getter(v43);
        OUTLINED_FUNCTION_58_0(v30, v31);
        OUTLINED_FUNCTION_176_0();
        *(v26 + 14) = v1;
        _os_log_impl(&dword_1E323F000, v23, v24, "%{public}s Requesting fetch of type [%s]", v26, 0x16u);
        swift_arrayDestroy();
        v21 = v42;
        OUTLINED_FUNCTION_6_0();
        v8 = v43;
        OUTLINED_FUNCTION_6_0();
      }

      (*(v11 + 8))(v17, v9);
      ObjectType = swift_getObjectType();
      (*(v21 + 16))(v8, v46 & 1, v45, v44, ObjectType, v21);
      swift_unknownObjectRelease();
    }

    else
    {
      v33 = sub_1E324FBDC();
      (*(v11 + 16))(v14, v33, v9);

      v34 = sub_1E41FFC94();
      v35 = sub_1E42067F4();

      if (os_log_type_enabled(v34, v35))
      {
        v36 = v8;
        v37 = OUTLINED_FUNCTION_49_0();
        v47 = OUTLINED_FUNCTION_72_0();
        *v37 = 136446466;
        v38 = sub_1E410E358();
        OUTLINED_FUNCTION_58_0(v38, v39);
        OUTLINED_FUNCTION_176_0();
        *(v37 + 4) = v1;
        *(v37 + 12) = 2080;
        v40 = ViewModelRequestType.rawValue.getter(v36);
        OUTLINED_FUNCTION_58_0(v40, v41);
        OUTLINED_FUNCTION_176_0();
        *(v37 + 14) = v1;
        _os_log_impl(&dword_1E323F000, v34, v35, "%{public}s Missing updateRequestor for type [%s]", v37, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_6_0();
        OUTLINED_FUNCTION_6_0();
      }

      (*(v11 + 8))(v14, v9);
    }
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E410FD34()
{
  OUTLINED_FUNCTION_31_1();
  v5 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_41();
  sub_1E324FBDC();
  v7 = OUTLINED_FUNCTION_5_30();
  v8(v7);

  v9 = sub_1E41FFC94();
  v10 = sub_1E4206814();

  if (os_log_type_enabled(v9, v10))
  {
    swift_slowAlloc();
    v3 = OUTLINED_FUNCTION_10_11();
    v27[0] = v3;
    *v2 = 136446210;
    v11 = sub_1E410E358();
    sub_1E3270FC8(v11, v12, v27);
    OUTLINED_FUNCTION_34_3();
    *(v2 + 4) = v4;
    OUTLINED_FUNCTION_6_13(&dword_1E323F000, v13, v14, "%{public}s Suspending CollectionViewModel requests");
    __swift_destroy_boxed_opaque_existential_1Tm(v3);
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();
  }

  v15 = OUTLINED_FUNCTION_25_8();
  v17 = v16(v15);
  v18 = (*(*v0 + 464))(v17);
  if (v18)
  {
    v19 = v18;
    sub_1E32AE9B0(v18);
    OUTLINED_FUNCTION_26_119();
    while (1)
    {
      if (v5 == v1)
      {

        goto LABEL_16;
      }

      if (v3)
      {
        v26 = OUTLINED_FUNCTION_11_6();
        MEMORY[0x1E6911E60](v26);
      }

      else
      {
        if (v1 >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        OUTLINED_FUNCTION_36_75();
      }

      if (__OFADD__(v1, 1))
      {
        break;
      }

      type metadata accessor for ViewModel();
      OUTLINED_FUNCTION_10_23();

      v20 = OUTLINED_FUNCTION_123_1();
      v22 = __swift_instantiateConcreteTypeFromMangledNameV2(v20, v21);
      if (OUTLINED_FUNCTION_11_189(v22))
      {
        OUTLINED_FUNCTION_4_270();
        v23 = OUTLINED_FUNCTION_1_307();
        v24(v23);

        __swift_destroy_boxed_opaque_existential_1Tm(v27);
      }

      else
      {

        v25 = OUTLINED_FUNCTION_10_180();
        sub_1E325F7A8(v25, &qword_1ECF32F70, &qword_1E42BA2B8);
      }

      ++v1;
    }

    __break(1u);
LABEL_18:
    __break(1u);
  }

  else
  {
LABEL_16:
    OUTLINED_FUNCTION_25_2();
  }
}

void sub_1E410FFA8()
{
  OUTLINED_FUNCTION_31_1();
  v5 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_41();
  sub_1E324FBDC();
  v7 = OUTLINED_FUNCTION_5_30();
  v8(v7);

  v9 = sub_1E41FFC94();
  v10 = sub_1E4206814();

  if (os_log_type_enabled(v9, v10))
  {
    swift_slowAlloc();
    v3 = OUTLINED_FUNCTION_10_11();
    v27[0] = v3;
    *v2 = 136446210;
    v11 = sub_1E410E358();
    sub_1E3270FC8(v11, v12, v27);
    OUTLINED_FUNCTION_34_3();
    *(v2 + 4) = v4;
    OUTLINED_FUNCTION_6_13(&dword_1E323F000, v13, v14, "%{public}s Resuming CollectionViewModel requests");
    __swift_destroy_boxed_opaque_existential_1Tm(v3);
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();
  }

  v15 = OUTLINED_FUNCTION_25_8();
  v17 = v16(v15);
  v18 = (*(*v0 + 464))(v17);
  if (v18)
  {
    v19 = v18;
    sub_1E32AE9B0(v18);
    OUTLINED_FUNCTION_26_119();
    while (1)
    {
      if (v5 == v1)
      {

        goto LABEL_16;
      }

      if (v3)
      {
        v26 = OUTLINED_FUNCTION_11_6();
        MEMORY[0x1E6911E60](v26);
      }

      else
      {
        if (v1 >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        OUTLINED_FUNCTION_36_75();
      }

      if (__OFADD__(v1, 1))
      {
        break;
      }

      type metadata accessor for ViewModel();
      OUTLINED_FUNCTION_10_23();

      v20 = OUTLINED_FUNCTION_123_1();
      v22 = __swift_instantiateConcreteTypeFromMangledNameV2(v20, v21);
      if (OUTLINED_FUNCTION_11_189(v22))
      {
        OUTLINED_FUNCTION_4_270();
        v23 = OUTLINED_FUNCTION_1_307();
        v24(v23);

        __swift_destroy_boxed_opaque_existential_1Tm(v27);
      }

      else
      {

        v25 = OUTLINED_FUNCTION_10_180();
        sub_1E325F7A8(v25, &qword_1ECF32F70, &qword_1E42BA2B8);
      }

      ++v1;
    }

    __break(1u);
LABEL_18:
    __break(1u);
  }

  else
  {
LABEL_16:
    OUTLINED_FUNCTION_25_2();
  }
}

void sub_1E411021C()
{
  OUTLINED_FUNCTION_31_1();
  v5 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_41();
  sub_1E324FBDC();
  v7 = OUTLINED_FUNCTION_5_30();
  v8(v7);

  v9 = sub_1E41FFC94();
  v10 = sub_1E4206814();

  if (os_log_type_enabled(v9, v10))
  {
    swift_slowAlloc();
    v3 = OUTLINED_FUNCTION_10_11();
    v27[0] = v3;
    *v2 = 136446210;
    v11 = sub_1E410E358();
    sub_1E3270FC8(v11, v12, v27);
    OUTLINED_FUNCTION_34_3();
    *(v2 + 4) = v4;
    OUTLINED_FUNCTION_6_13(&dword_1E323F000, v13, v14, "%{public}s Cancelling CollectionViewModel requests");
    __swift_destroy_boxed_opaque_existential_1Tm(v3);
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();
  }

  v15 = OUTLINED_FUNCTION_25_8();
  v17 = v16(v15);
  v18 = (*(*v0 + 464))(v17);
  if (v18)
  {
    v19 = v18;
    sub_1E32AE9B0(v18);
    OUTLINED_FUNCTION_26_119();
    while (1)
    {
      if (v5 == v1)
      {

        goto LABEL_16;
      }

      if (v3)
      {
        v26 = OUTLINED_FUNCTION_11_6();
        MEMORY[0x1E6911E60](v26);
      }

      else
      {
        if (v1 >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        OUTLINED_FUNCTION_36_75();
      }

      if (__OFADD__(v1, 1))
      {
        break;
      }

      type metadata accessor for ViewModel();
      OUTLINED_FUNCTION_10_23();

      v20 = OUTLINED_FUNCTION_123_1();
      v22 = __swift_instantiateConcreteTypeFromMangledNameV2(v20, v21);
      if (OUTLINED_FUNCTION_11_189(v22))
      {
        OUTLINED_FUNCTION_4_270();
        v23 = OUTLINED_FUNCTION_1_307();
        v24(v23);

        __swift_destroy_boxed_opaque_existential_1Tm(v27);
      }

      else
      {

        v25 = OUTLINED_FUNCTION_10_180();
        sub_1E325F7A8(v25, &qword_1ECF32F70, &qword_1E42BA2B8);
      }

      ++v1;
    }

    __break(1u);
LABEL_18:
    __break(1u);
  }

  else
  {
LABEL_16:
    OUTLINED_FUNCTION_25_2();
  }
}

uint64_t sub_1E4110490()
{
  LOBYTE(v2) = 18;
  OUTLINED_FUNCTION_8();
  (*(v0 + 776))(v3, &v2, &unk_1F5D5DAC8, &off_1F5D5C998);
  if (v3[3])
  {
    if (swift_dynamicCast())
    {
      return v2;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_1E325F7A8(v3, &unk_1ECF296E0, &unk_1E4298030);
    return 0;
  }
}

uint64_t type metadata accessor for TemplateViewModel(uint64_t a1)
{
  result = qword_1EE2A1830;
  if (!qword_1EE2A1830)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E41106F8(uint64_t a1)
{
  sub_1E3846618();
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1E4110828(void *a1)
{
  OUTLINED_FUNCTION_14_4(a1);
  sub_1E3C2C6A0();
  return OUTLINED_FUNCTION_40_1();
}

uint64_t sub_1E4110914(void *a1)
{
  OUTLINED_FUNCTION_14_4(a1);
  sub_1E3C2C6A0();
  return OUTLINED_FUNCTION_40_1();
}

uint64_t sub_1E4110A14()
{
  v1 = OUTLINED_FUNCTION_12_11();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_3_9(v2);
  sub_1E3C2C6A0();
  *v0 = v0[1];
  return OUTLINED_FUNCTION_40_1();
}

void sub_1E4110A7C(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {

    OUTLINED_FUNCTION_74();
    sub_1E41109CC();
  }

  else
  {
    OUTLINED_FUNCTION_74();
    sub_1E41109CC();
  }

  free(v2);
}

uint64_t sub_1E4110B50(void *a1)
{
  OUTLINED_FUNCTION_14_4(a1);
  sub_1E3C2C6A0();
  return OUTLINED_FUNCTION_40_1();
}

uint64_t sub_1E4110C18()
{
  v0 = OUTLINED_FUNCTION_12_11();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_3_9(v1);
  sub_1E3C2C6A0();
  OUTLINED_FUNCTION_3_138();
  return OUTLINED_FUNCTION_40_1();
}

uint64_t sub_1E4110CF4(void *a1)
{
  OUTLINED_FUNCTION_14_4(a1);
  sub_1E3C2C6A0();
  return OUTLINED_FUNCTION_40_1();
}

uint64_t sub_1E4110DE0(void *a1)
{
  OUTLINED_FUNCTION_14_4(a1);
  sub_1E3C2C6A0();
  return OUTLINED_FUNCTION_40_1();
}

void sub_1E4110EF0(void *a1, void *a2)
{
  if (a1)
  {
  }
}

uint64_t sub_1E4110F30()
{
  v1 = OUTLINED_FUNCTION_12_11();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_3_9(v2);
  sub_1E3C2C6A0();
  *v0 = v0[1];
  return OUTLINED_FUNCTION_40_1();
}

void sub_1E4110F98(void ***a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = OUTLINED_FUNCTION_74();
    sub_1E4111004(v3, v4);
    v5 = OUTLINED_FUNCTION_74();
    sub_1E4110E98(v5, v6);
    sub_1E4110EF0(*v2, v2[1]);
  }

  else
  {
    v7 = OUTLINED_FUNCTION_74();
    sub_1E4110E98(v7, v8);
  }

  free(v2);
}

id sub_1E4111004(id result, void *a2)
{
  if (result)
  {
    v3 = result;
    v2 = a2;

    return v3;
  }

  return result;
}

uint64_t sub_1E41110AC(void *a1)
{
  OUTLINED_FUNCTION_14_4(a1);
  sub_1E3C2C6A0();
  return OUTLINED_FUNCTION_40_1();
}

uint64_t sub_1E4111198(void *a1)
{
  OUTLINED_FUNCTION_14_4(a1);
  sub_1E3C2C6A0();
  return OUTLINED_FUNCTION_40_1();
}

void (*sub_1E411124C(uint64_t a1))(void **a1, uint64_t a2)
{
  *(a1 + 8) = v1;
  sub_1E3280A90(0, &qword_1EE23AE20, 0x1E69DC888);
  sub_1E3C2C6A0();
  return sub_1E41112B4;
}

uint64_t sub_1E4111334(void *a1)
{
  OUTLINED_FUNCTION_14_4(a1);
  sub_1E3C2C6A0();
  return OUTLINED_FUNCTION_40_1();
}

uint64_t sub_1E4111420(void *a1)
{
  OUTLINED_FUNCTION_14_4(a1);
  sub_1E3C2C6A0();
  return OUTLINED_FUNCTION_40_1();
}

uint64_t sub_1E411150C(void *a1)
{
  OUTLINED_FUNCTION_14_4(a1);
  sub_1E3C2C6A0();
  return OUTLINED_FUNCTION_40_1();
}

uint64_t sub_1E41115D4()
{
  v0 = OUTLINED_FUNCTION_12_11();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_3_9(v1);
  sub_1E3C2C6A0();
  OUTLINED_FUNCTION_3_138();
  return OUTLINED_FUNCTION_40_1();
}

uint64_t sub_1E411168C()
{
  v0 = OUTLINED_FUNCTION_12_11();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_3_9(v1);
  sub_1E3C2C6A0();
  OUTLINED_FUNCTION_3_138();
  return OUTLINED_FUNCTION_40_1();
}

uint64_t sub_1E4111744()
{
  v0 = OUTLINED_FUNCTION_12_11();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_3_9(v1);
  sub_1E3C2C6A0();
  OUTLINED_FUNCTION_3_138();
  return OUTLINED_FUNCTION_40_1();
}

uint64_t sub_1E4111828()
{
  v0 = OUTLINED_FUNCTION_12_11();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_3_9(v1);
  sub_1E3C2C6A0();
  OUTLINED_FUNCTION_3_138();
  return OUTLINED_FUNCTION_40_1();
}

void sub_1E411189C(void **a1)
{
  v2 = *(*a1 + 8);
  v1 = *a1;
  *(v1 + 2) = **a1;
  v1[24] = v2;
  sub_1E3C2CA00();

  free(v1);
}

uint64_t sub_1E411190C(unint64_t *a1, void *a2)
{
  sub_1E3280A90(0, a1, a2);
  sub_1E3C2C6A0();
  return v3;
}

void (*sub_1E4111970(uint64_t a1))(void **a1, uint64_t a2)
{
  *(a1 + 8) = v1;
  sub_1E3280A90(0, &qword_1EE23ADD0, 0x1E696AD98);
  sub_1E3C2C6A0();
  return sub_1E41119D8;
}

void sub_1E41119F0(void **a1, char a2, void (*a3)(void *))
{
  v4 = *a1;
  if (a2)
  {
    v5 = v4;
    a3(v4);
  }

  else
  {
    a3(*a1);
  }
}

uint64_t sub_1E4111A70()
{
  type metadata accessor for NSLineBreakMode();
  sub_1E3C2C6A0();
  return v1;
}

void sub_1E4111AAC()
{
  OUTLINED_FUNCTION_6_116();
  type metadata accessor for NSLineBreakMode();
  sub_1E3C2CA00();
}

uint64_t sub_1E4111AE4()
{
  v1 = __swift_coroFrameAllocStub(0x30uLL);
  OUTLINED_FUNCTION_3_9(v1);
  type metadata accessor for NSLineBreakMode();
  *(v0 + 40) = v2;
  sub_1E3C2C6A0();
  OUTLINED_FUNCTION_3_138();
  return OUTLINED_FUNCTION_40_1();
}

void sub_1E4111B54(void **a1)
{
  v2 = *(*a1 + 8);
  v1 = *a1;
  *(v1 + 2) = **a1;
  v1[24] = v2;
  sub_1E3C2CA00();

  free(v1);
}

uint64_t sub_1E4111C10(void *a1)
{
  OUTLINED_FUNCTION_14_4(a1);
  sub_1E3C2C6A0();
  return OUTLINED_FUNCTION_40_1();
}

uint64_t sub_1E4111CFC(void *a1)
{
  OUTLINED_FUNCTION_14_4(a1);
  sub_1E3C2C6A0();
  return OUTLINED_FUNCTION_40_1();
}

uint64_t sub_1E4111DE8(void *a1)
{
  OUTLINED_FUNCTION_14_4(a1);
  sub_1E3C2C6A0();
  return OUTLINED_FUNCTION_40_1();
}

uint64_t sub_1E4111ED4(void *a1)
{
  OUTLINED_FUNCTION_14_4(a1);
  sub_1E3C2C6A0();
  return OUTLINED_FUNCTION_40_1();
}

uint64_t sub_1E4111FC0(void *a1)
{
  OUTLINED_FUNCTION_14_4(a1);
  sub_1E3C2C6A0();
  return OUTLINED_FUNCTION_40_1();
}

uint64_t sub_1E41120AC(void *a1)
{
  OUTLINED_FUNCTION_14_4(a1);
  sub_1E3C2C6A0();
  return OUTLINED_FUNCTION_40_1();
}

uint64_t sub_1E4112198(void *a1)
{
  OUTLINED_FUNCTION_14_4(a1);
  sub_1E3C2C6A0();
  return OUTLINED_FUNCTION_40_1();
}

uint64_t sub_1E4112284(void *a1)
{
  OUTLINED_FUNCTION_14_4(a1);
  sub_1E3C2C6A0();
  return OUTLINED_FUNCTION_40_1();
}

uint64_t sub_1E4112370(void *a1)
{
  OUTLINED_FUNCTION_14_4(a1);
  sub_1E3C2C6A0();
  return OUTLINED_FUNCTION_40_1();
}

id sub_1E41123F4()
{
  v1 = [objc_allocWithZone(VUITextLayout) init];
  OUTLINED_FUNCTION_36();
  v3 = (*(v2 + 1688))();
  if (v3 == 27)
  {
    v4 = -1;
  }

  else
  {
    v4 = sub_1E376ACF4(v3);
  }

  [v1 setTextStyle_];
  OUTLINED_FUNCTION_36();
  v6 = (*(v5 + 1712))();
  if (v6 == 13)
  {
    v7 = 0;
  }

  else
  {
    v7 = j__OUTLINED_FUNCTION_13_30(v6);
  }

  [v1 setMaximumContentSizeCategory_];
  OUTLINED_FUNCTION_36();
  v9 = (*(v8 + 1760))();
  if (v10)
  {
    v11 = sub_1E4205ED4();
  }

  else
  {
    v11 = 0;
  }

  OUTLINED_FUNCTION_26_4(v9, sel_setFontFamily_);

  OUTLINED_FUNCTION_36();
  v13 = (*(v12 + 1784))();
  if (v13 == 11)
  {
    v14 = 0;
  }

  else
  {
    v14 = j__OUTLINED_FUNCTION_13_30(v13);
  }

  [v1 setFontWeight_];
  OUTLINED_FUNCTION_36();
  v16 = (*(v15 + 1808))();
  v17 = OUTLINED_FUNCTION_140(v16);
  if (!v18)
  {
    v17 = 0.0;
  }

  [v1 setFontSize_];
  OUTLINED_FUNCTION_36();
  v20 = (*(v19 + 1832))();
  if (v20 == 5)
  {
    v21 = 0;
  }

  else
  {
    v21 = j_j__OUTLINED_FUNCTION_13_30(v20);
  }

  [v1 setFontWidth_];
  OUTLINED_FUNCTION_36();
  v23 = (*(v22 + 1856))();
  if (v23 == 5)
  {
    v24 = 0;
  }

  else
  {
    v24 = j__OUTLINED_FUNCTION_13_30(v23);
  }

  v25 = v116;
  (*(*v0 + 152))(v116, [v1 setFontFeature_]);
  if (v117)
  {
    v25 = MEMORY[0x1E69DDCE0];
    v26 = *(MEMORY[0x1E69DDCE0] + 8);
    v27 = *(MEMORY[0x1E69DDCE0] + 16);
    v28 = *(MEMORY[0x1E69DDCE0] + 24);
  }

  else
  {
    v26 = *&v116[1];
    v27 = *&v116[2];
    v28 = *&v116[3];
  }

  [v1 setMargin_];
  OUTLINED_FUNCTION_36();
  v30 = *(v29 + 672);
  v31 = v30();
  OUTLINED_FUNCTION_26_4(v31, sel_setColor_);

  v32 = v30();
  OUTLINED_FUNCTION_26_4(v32, sel_setDarkColor_);

  OUTLINED_FUNCTION_36();
  v34 = (*(v33 + 2360))();
  OUTLINED_FUNCTION_17_154(v34, sel_setEnableAXUnderlineButtonShape_);
  OUTLINED_FUNCTION_36();
  v36 = (*(v35 + 864))();
  OUTLINED_FUNCTION_26_4(v36, sel_setHighlightOrSelectedColor_);

  OUTLINED_FUNCTION_36();
  v38 = (*(v37 + 912))();
  OUTLINED_FUNCTION_26_4(v38, sel_setDisabledColor_);

  OUTLINED_FUNCTION_36();
  v40 = (*(v39 + 648))();
  if (v40 == 5)
  {
    v41 = 0;
  }

  else
  {
    v41 = sub_1E4126018(v40);
  }

  [v1 setHighlightStyle_];
  OUTLINED_FUNCTION_36();
  v43 = *(v42 + 1880);
  v44 = v43();
  if (v44)
  {
    v45 = v44;
  }

  else
  {
    v45 = 0;
  }

  v46 = OUTLINED_FUNCTION_53();
  sub_1E4110EF0(v46, v47);
  OUTLINED_FUNCTION_26_4(v48, sel_setCompositingFilter_);

  v50 = v43();
  v51 = v49;
  if (v50)
  {
    v52 = v49;
  }

  else
  {
    v52 = 0;
  }

  sub_1E4110EF0(v50, v51);
  OUTLINED_FUNCTION_26_4(v53, sel_setDarkCompositingFilter_);

  OUTLINED_FUNCTION_36();
  v55 = (*(v54 + 1928))();
  if (v55 == 4)
  {
    v56 = 0;
  }

  else
  {
    v56 = j__OUTLINED_FUNCTION_13_30(v55);
  }

  [v1 setTextTransform_];
  OUTLINED_FUNCTION_36();
  v58 = (*(v57 + 1976))();
  if (v58 == 7)
  {
    v59 = 4;
  }

  else
  {
    v59 = sub_1E376B7A0(v58);
  }

  [v1 setAlignment_];
  OUTLINED_FUNCTION_36();
  v61 = (*(v60 + 2000))();
  OUTLINED_FUNCTION_17_154(v61, sel_setAllowsTextAlignmentOverride_);
  OUTLINED_FUNCTION_36();
  v63 = (*(v62 + 2024))();
  OUTLINED_FUNCTION_17_154(v63, sel_setAppliesDirectionalIsolates_);
  OUTLINED_FUNCTION_36();
  v65 = (*(v64 + 2048))();
  if (v66)
  {
    v67 = 1;
  }

  else
  {
    v67 = v65;
  }

  [v1 setNumberOfLines_];
  OUTLINED_FUNCTION_36();
  v69 = (*(v68 + 2072))();
  if (v70)
  {
    v71 = 0;
  }

  else
  {
    v71 = v69;
  }

  [v1 setNumberOfLinesAXSmall_];
  OUTLINED_FUNCTION_36();
  v73 = (*(v72 + 2096))();
  if (v74)
  {
    v75 = 0;
  }

  else
  {
    v75 = v73;
  }

  [v1 setNumberOfLinesAXLarge_];
  OUTLINED_FUNCTION_36();
  v77 = (*(v76 + 2120))();
  v78 = OUTLINED_FUNCTION_140(v77);
  if (!v18)
  {
    v78 = 0.0;
  }

  [v1 setMinimumScaleFactor_];
  OUTLINED_FUNCTION_36();
  v80 = (*(v79 + 600))();
  OUTLINED_FUNCTION_26_4(v80, sel_setShadow_);

  OUTLINED_FUNCTION_36();
  v82 = (*(v81 + 2312))();
  OUTLINED_FUNCTION_17_154(v82, sel_setAppliesShadowToContainer_);
  OUTLINED_FUNCTION_36();
  v84 = (*(v83 + 2144))();
  if (!v84)
  {
    v84 = [v1 letterSpacing];
  }

  v85 = v84;
  OUTLINED_FUNCTION_26_4(v84, sel_setLetterSpacing_);

  OUTLINED_FUNCTION_36();
  v87 = (*(v86 + 2168))();
  if (v88)
  {
    v87 = [v1 lineBreakMode];
  }

  [v1 setLineBreakMode_];
  OUTLINED_FUNCTION_36();
  v90 = (*(v89 + 2192))();
  if (v90 == 2)
  {
    v90 = [v1 fadesOutTextTruncation];
  }

  OUTLINED_FUNCTION_17_154(v90, sel_setFadesOutTextTruncation_);
  OUTLINED_FUNCTION_36();
  v92 = (*(v91 + 2216))();
  OUTLINED_FUNCTION_17_154(v92, sel_setShouldAllowParagraphHyphenation_);
  OUTLINED_FUNCTION_36();
  v94 = (*(v93 + 1952))();
  OUTLINED_FUNCTION_26_4(v94, sel_setHighContrastTintColor_);

  OUTLINED_FUNCTION_36();
  v96 = (*(v95 + 1904))();
  if (v96 == 28)
  {
    v97 = 0;
  }

  else
  {
    v97 = sub_1E376BD24(v96);
  }

  [v1 setBlendMode_];
  OUTLINED_FUNCTION_36();
  v99 = (*(v98 + 960))();
  if (v99 == 2)
  {
    v99 = [v1 alwaysFocusable];
  }

  OUTLINED_FUNCTION_17_154(v99, sel_setAlwaysFocusable_);
  OUTLINED_FUNCTION_36();
  v101 = (*(v100 + 2288))();
  [v1 setShouldUpdateTextColor_];
  OUTLINED_FUNCTION_36();
  v103 = (*(v102 + 2240))();
  OUTLINED_FUNCTION_17_154(v103, sel_setAvoidsFocusedTextShadow_);
  OUTLINED_FUNCTION_36();
  v105 = (*(v104 + 1272))();
  v106 = OUTLINED_FUNCTION_140(v105);
  if (!v18)
  {
    v106 = 0.0;
  }

  [v1 setFocusSizeIncrease_];
  OUTLINED_FUNCTION_36();
  v108 = (*(v107 + 1296))();
  v109 = OUTLINED_FUNCTION_140(v108);
  if (!v18)
  {
    v109 = 0.0;
  }

  [v1 setFocusCornerRadius_];
  OUTLINED_FUNCTION_36();
  v111 = (*(v110 + 2336))();
  OUTLINED_FUNCTION_17_154(v111, sel_setAppliesColorToStringAttachments_);
  OUTLINED_FUNCTION_36();
  v113 = (*(v112 + 2384))();
  OUTLINED_FUNCTION_17_154(v113, sel_setSeeMoreHasPlatter_);
  OUTLINED_FUNCTION_36();
  [v1 setPreferredVibrancy_];
  return v1;
}

void sub_1E41130F4(uint64_t a1)
{
  sub_1E3C34E14();
  v3 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;

  v8 = 0;
  v287 = a1;
  v297 = a1 + 64;
  v307 = v7;
LABEL_4:
  if (v6)
  {
    v9 = v8;
    goto LABEL_10;
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v7)
    {
      v6 = 0;
      v341 = 0u;
      v342 = 0u;
      v340 = 0u;
      goto LABEL_11;
    }

    v6 = *(v3 + 8 * v9);
    ++v8;
    if (v6)
    {
      v8 = v9;
LABEL_10:
      v10 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v11 = v10 | (v9 << 6);
      v12 = (*(a1 + 48) + 16 * v11);
      v14 = *v12;
      v13 = v12[1];
      sub_1E328438C(*(a1 + 56) + 32 * v11, __src);
      *&v340 = v14;
      *(&v340 + 1) = v13;
      sub_1E329504C(__src, &v341);

LABEL_11:
      v324 = v340;
      v325 = v341;
      v326 = v342;
      if (!*(&v340 + 1))
      {

        return;
      }

      sub_1E329504C(&v325, &v321);
      OUTLINED_FUNCTION_74();
      v15 = sub_1E3D46B48();
      v23 = v15;
      switch(v15)
      {
        case '0':
          v50 = OUTLINED_FUNCTION_22_60(v15, v16, v17, v18, v19, v20, v21, v22, v208, v218, v228, v239, v251, v263, v275, v287, v297, v307, v317, v318, v319, v320, v321, *(&v321 + 1), v322, v323, v324, *(&v324 + 1), v325, *(&v325 + 1), v326, *(&v326 + 1), *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], v328, v329, v330, v331, v332, v333, v334, v335, v336, v337);
          OUTLINED_FUNCTION_16_88(v50, v51, v52, v53, v54, v55, v56, v57, v212, v222, v232, v243, v255, v267, v279, v291, v301, v311, v317, v318, v319, v320, v321, *(&v321 + 1), v322, v323, v324, *(&v324 + 1), v325, *(&v325 + 1), v326, *(&v326 + 1), *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], v328, v329, v330, v331, v332, v333, v334, v335, v336, v337, __src[0]);
          sub_1E3C3913C();
          if (*(&v340 + 1))
          {
            OUTLINED_FUNCTION_19_153();
            OUTLINED_FUNCTION_74();
            sub_1E376AD24();
          }

          if (*(&v341 + 1))
          {
            OUTLINED_FUNCTION_25_113();
            OUTLINED_FUNCTION_53();
            sub_1E376AD24();
          }

          if (*(&v342 + 1))
          {
            OUTLINED_FUNCTION_24_116();
            OUTLINED_FUNCTION_53();
            sub_1E376AD24();
          }

          if (v344)
          {
            OUTLINED_FUNCTION_23_109();
            OUTLINED_FUNCTION_168();
            sub_1E376AD24();
          }

          if (v346)
          {
            OUTLINED_FUNCTION_22_102();
            OUTLINED_FUNCTION_17_11();
            sub_1E376AD24();
          }

          v7 = v348;
          if (v348)
          {
            OUTLINED_FUNCTION_21_123();
            sub_1E325F748(&v340, &qword_1ECF346E8, &unk_1E42C0DD0);
            OUTLINED_FUNCTION_4_271();
            sub_1E376AD24();
          }

          else
          {
            sub_1E325F748(&v340, &qword_1ECF346E8, &unk_1E42C0DD0);
          }

          OUTLINED_FUNCTION_0_347();
          sub_1E3C2FCB8(v145, v146, v147, v148, v149, v150, &qword_1F5D549D8, v151);
          OUTLINED_FUNCTION_13_191();
          LODWORD(v317) = *__dst;
          WORD2(v317) = v152;
          (*(*v1 + 1600))(&v317, 48, 1, &qword_1F5D549D8);
          goto LABEL_158;
        case '1':
          v58 = OUTLINED_FUNCTION_22_60(v15, v16, v17, v18, v19, v20, v21, v22, v208, v218, v228, v239, v251, v263, v275, v287, v297, v307, v317, v318, v319, v320, v321, *(&v321 + 1), v322, v323, v324, *(&v324 + 1), v325, *(&v325 + 1), v326, *(&v326 + 1), *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], v328, v329, v330, v331, v332, v333, v334, v335, v336, v337);
          OUTLINED_FUNCTION_16_88(v58, v59, v60, v61, v62, v63, v64, v65, v213, v223, v233, v244, v256, v268, v280, v292, v302, v312, v317, v318, v319, v320, v321, *(&v321 + 1), v322, v323, v324, *(&v324 + 1), v325, *(&v325 + 1), v326, *(&v326 + 1), *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], v328, v329, v330, v331, v332, v333, v334, v335, v336, v337, __src[0]);
          sub_1E3C3913C();
          if (*(&v340 + 1))
          {
            OUTLINED_FUNCTION_19_153();
            OUTLINED_FUNCTION_74();
            sub_1E37695D0();
          }

          if (*(&v341 + 1))
          {
            OUTLINED_FUNCTION_25_113();
            OUTLINED_FUNCTION_53();
            sub_1E37695D0();
          }

          if (*(&v342 + 1))
          {
            OUTLINED_FUNCTION_24_116();
            OUTLINED_FUNCTION_53();
            sub_1E37695D0();
          }

          if (v344)
          {
            OUTLINED_FUNCTION_23_109();
            OUTLINED_FUNCTION_168();
            sub_1E37695D0();
          }

          if (v346)
          {
            OUTLINED_FUNCTION_22_102();
            OUTLINED_FUNCTION_17_11();
            sub_1E37695D0();
          }

          v7 = v348;
          if (v348)
          {
            OUTLINED_FUNCTION_21_123();
            sub_1E325F748(&v340, &qword_1ECF346E8, &unk_1E42C0DD0);
            OUTLINED_FUNCTION_4_271();
            sub_1E37695D0();
          }

          else
          {
            sub_1E325F748(&v340, &qword_1ECF346E8, &unk_1E42C0DD0);
          }

          OUTLINED_FUNCTION_0_347();
          sub_1E3C2FCB8(v153, v154, v155, v156, v157, v158, &unk_1F5D54948, v159);
          OUTLINED_FUNCTION_13_191();
          LODWORD(v317) = *__dst;
          WORD2(v317) = v160;
          (*(*v1 + 1600))(&v317, 49, 1, &unk_1F5D54948);
          goto LABEL_158;
        case '2':
        case 'D':
        case 'K':
          OUTLINED_FUNCTION_24_56(v15, v16, v17, v18, v19, v20, v21, v22, v208, v218, v228, v239, v251, v263, v275, v287, v297, v307, v317, v318, v319, v320);
          sub_1E3C3AB84(&v340, v23, 1);
          goto LABEL_38;
        case '3':
          OUTLINED_FUNCTION_24_56(v15, v16, v17, v18, v19, v20, v21, v22, v208, v218, v228, v239, v251, v263, v275, v287, v297, v307, v317, v318, v319, v320);
          sub_1E3C3A5F4(&v340, 51, 1);
          goto LABEL_38;
        case '4':
        case 'A':
          OUTLINED_FUNCTION_24_56(v15, v16, v17, v18, v19, v20, v21, v22, v208, v218, v228, v239, v251, v263, v275, v287, v297, v307, v317, v318, v319, v320);
          sub_1E3C3A5D4(&v340, v23, 1);
          goto LABEL_38;
        case '5':
          v76 = OUTLINED_FUNCTION_22_60(v15, v16, v17, v18, v19, v20, v21, v22, v208, v218, v228, v239, v251, v263, v275, v287, v297, v307, v317, v318, v319, v320, v321, *(&v321 + 1), v322, v323, v324, *(&v324 + 1), v325, *(&v325 + 1), v326, *(&v326 + 1), *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], v328, v329, v330, v331, v332, v333, v334, v335, v336, v337);
          OUTLINED_FUNCTION_16_88(v76, v77, v78, v79, v80, v81, v82, v83, v215, v225, v235, v246, v258, v270, v282, v294, v304, v314, v317, v318, v319, v320, v321, *(&v321 + 1), v322, v323, v324, *(&v324 + 1), v325, *(&v325 + 1), v326, *(&v326 + 1), *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], v328, v329, v330, v331, v332, v333, v334, v335, v336, v337, __src[0]);
          sub_1E3C3913C();
          if (*(&v340 + 1))
          {
            OUTLINED_FUNCTION_19_153();
            OUTLINED_FUNCTION_74();
            sub_1E376B10C();
          }

          if (*(&v341 + 1))
          {
            OUTLINED_FUNCTION_25_113();
            OUTLINED_FUNCTION_53();
            sub_1E376B10C();
          }

          if (*(&v342 + 1))
          {
            OUTLINED_FUNCTION_24_116();
            OUTLINED_FUNCTION_53();
            sub_1E376B10C();
          }

          if (v344)
          {
            OUTLINED_FUNCTION_23_109();
            OUTLINED_FUNCTION_168();
            sub_1E376B10C();
          }

          if (v346)
          {
            OUTLINED_FUNCTION_22_102();
            OUTLINED_FUNCTION_17_11();
            sub_1E376B10C();
          }

          v7 = v348;
          if (v348)
          {
            OUTLINED_FUNCTION_21_123();
            sub_1E325F748(&v340, &qword_1ECF346E8, &unk_1E42C0DD0);
            OUTLINED_FUNCTION_4_271();
            sub_1E376B10C();
          }

          else
          {
            sub_1E325F748(&v340, &qword_1ECF346E8, &unk_1E42C0DD0);
          }

          OUTLINED_FUNCTION_0_347();
          sub_1E3C2FCB8(v169, v170, v171, v172, v173, v174, &unk_1F5D54A68, v175);
          OUTLINED_FUNCTION_13_191();
          LODWORD(v317) = *__dst;
          WORD2(v317) = v176;
          (*(*v1 + 1600))(&v317, 53, 1, &unk_1F5D54A68);
          goto LABEL_158;
        case '6':
          v42 = OUTLINED_FUNCTION_22_60(v15, v16, v17, v18, v19, v20, v21, v22, v208, v218, v228, v239, v251, v263, v275, v287, v297, v307, v317, v318, v319, v320, v321, *(&v321 + 1), v322, v323, v324, *(&v324 + 1), v325, *(&v325 + 1), v326, *(&v326 + 1), *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], v328, v329, v330, v331, v332, v333, v334, v335, v336, v337);
          OUTLINED_FUNCTION_16_88(v42, v43, v44, v45, v46, v47, v48, v49, v211, v221, v231, v242, v254, v266, v278, v290, v300, v310, v317, v318, v319, v320, v321, *(&v321 + 1), v322, v323, v324, *(&v324 + 1), v325, *(&v325 + 1), v326, *(&v326 + 1), *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], v328, v329, v330, v331, v332, v333, v334, v335, v336, v337, __src[0]);
          sub_1E3C3913C();
          if (*(&v340 + 1))
          {
            OUTLINED_FUNCTION_19_153();
            OUTLINED_FUNCTION_74();
            sub_1E376B2C8();
          }

          if (*(&v341 + 1))
          {
            OUTLINED_FUNCTION_25_113();
            OUTLINED_FUNCTION_53();
            sub_1E376B2C8();
          }

          if (*(&v342 + 1))
          {
            OUTLINED_FUNCTION_24_116();
            OUTLINED_FUNCTION_53();
            sub_1E376B2C8();
          }

          if (v344)
          {
            OUTLINED_FUNCTION_23_109();
            OUTLINED_FUNCTION_168();
            sub_1E376B2C8();
          }

          if (v346)
          {
            OUTLINED_FUNCTION_22_102();
            OUTLINED_FUNCTION_17_11();
            sub_1E376B2C8();
          }

          v7 = v348;
          if (v348)
          {
            OUTLINED_FUNCTION_21_123();
            sub_1E325F748(&v340, &qword_1ECF346E8, &unk_1E42C0DD0);
            OUTLINED_FUNCTION_4_271();
            sub_1E376B2C8();
          }

          else
          {
            sub_1E325F748(&v340, &qword_1ECF346E8, &unk_1E42C0DD0);
          }

          OUTLINED_FUNCTION_0_347();
          sub_1E3C2FCB8(v137, v138, v139, v140, v141, v142, &qword_1F5D54AF8, v143);
          OUTLINED_FUNCTION_13_191();
          LODWORD(v317) = *__dst;
          WORD2(v317) = v144;
          (*(*v1 + 1600))(&v317, 54, 1, &qword_1F5D54AF8);
          goto LABEL_158;
        case '7':
          v25 = OUTLINED_FUNCTION_22_60(v15, v16, v17, v18, v19, v20, v21, v22, v208, v218, v228, v239, v251, v263, v275, v287, v297, v307, v317, v318, v319, v320, v321, *(&v321 + 1), v322, v323, v324, *(&v324 + 1), v325, *(&v325 + 1), v326, *(&v326 + 1), *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], v328, v329, v330, v331, v332, v333, v334, v335, v336, v337);
          OUTLINED_FUNCTION_16_88(v25, v26, v27, v28, v29, v30, v31, v32, v209, v219, v229, v240, v252, v264, v276, v288, v298, v308, v317, v318, v319, v320, v321, *(&v321 + 1), v322, v323, v324, *(&v324 + 1), v325, *(&v325 + 1), v326, *(&v326 + 1), *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], v328, v329, v330, v331, v332, v333, v334, v335, v336, v337, __src[0]);
          sub_1E3C3913C();
          if (*(&v340 + 1))
          {
            OUTLINED_FUNCTION_19_153();
            OUTLINED_FUNCTION_74();
            sub_1E376B4C8();
          }

          if (*(&v341 + 1))
          {
            OUTLINED_FUNCTION_25_113();
            OUTLINED_FUNCTION_53();
            sub_1E376B4C8();
          }

          if (*(&v342 + 1))
          {
            OUTLINED_FUNCTION_24_116();
            OUTLINED_FUNCTION_53();
            sub_1E376B4C8();
          }

          if (v344)
          {
            OUTLINED_FUNCTION_23_109();
            OUTLINED_FUNCTION_168();
            sub_1E376B4C8();
          }

          if (v346)
          {
            OUTLINED_FUNCTION_22_102();
            OUTLINED_FUNCTION_17_11();
            sub_1E376B4C8();
          }

          v7 = v348;
          if (v348)
          {
            OUTLINED_FUNCTION_21_123();
            sub_1E325F748(&v340, &qword_1ECF346E8, &unk_1E42C0DD0);
            OUTLINED_FUNCTION_4_271();
            sub_1E376B4C8();
          }

          else
          {
            sub_1E325F748(&v340, &qword_1ECF346E8, &unk_1E42C0DD0);
          }

          OUTLINED_FUNCTION_0_347();
          sub_1E3C2FCB8(v128, v129, v130, v131, v132, v133, &unk_1F5D54B88, v134);
          OUTLINED_FUNCTION_13_191();
          LODWORD(v317) = *__dst;
          WORD2(v317) = v135;
          (*(*v1 + 1600))(&v317, 55, 1, &unk_1F5D54B88);
          goto LABEL_158;
        case '8':
          v85 = OUTLINED_FUNCTION_22_60(v15, v16, v17, v18, v19, v20, v21, v22, v208, v218, v228, v239, v251, v263, v275, v287, v297, v307, v317, v318, v319, v320, v321, *(&v321 + 1), v322, v323, v324, *(&v324 + 1), v325, *(&v325 + 1), v326, *(&v326 + 1), *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], v328, v329, v330, v331, v332, v333, v334, v335, v336, v337);
          OUTLINED_FUNCTION_16_88(v85, v86, v87, v88, v89, v90, v91, v92, v216, v226, v236, v247, v259, v271, v283, v295, v305, v315, v317, v318, v319, v320, v321, *(&v321 + 1), v322, v323, v324, *(&v324 + 1), v325, *(&v325 + 1), v326, *(&v326 + 1), *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], v328, v329, v330, v331, v332, v333, v334, v335, v336, v337, __src[0]);
          sub_1E3C3913C();
          if (*(&v340 + 1))
          {
            OUTLINED_FUNCTION_19_153();
            OUTLINED_FUNCTION_74();
            sub_1E376BD2C();
          }

          if (*(&v341 + 1))
          {
            OUTLINED_FUNCTION_25_113();
            OUTLINED_FUNCTION_53();
            sub_1E376BD2C();
          }

          if (*(&v342 + 1))
          {
            OUTLINED_FUNCTION_24_116();
            OUTLINED_FUNCTION_53();
            sub_1E376BD2C();
          }

          if (v344)
          {
            OUTLINED_FUNCTION_23_109();
            OUTLINED_FUNCTION_168();
            sub_1E376BD2C();
          }

          if (v346)
          {
            OUTLINED_FUNCTION_22_102();
            OUTLINED_FUNCTION_17_11();
            sub_1E376BD2C();
          }

          v7 = v348;
          if (v348)
          {
            OUTLINED_FUNCTION_21_123();
            sub_1E325F748(&v340, &qword_1ECF346E8, &unk_1E42C0DD0);
            OUTLINED_FUNCTION_4_271();
            sub_1E376BD2C();
          }

          else
          {
            sub_1E325F748(&v340, &qword_1ECF346E8, &unk_1E42C0DD0);
          }

          OUTLINED_FUNCTION_0_347();
          sub_1E3C2FCB8(v177, v178, v179, v180, v181, v182, &unk_1F5D54E58, v183);
          OUTLINED_FUNCTION_13_191();
          LODWORD(v317) = *__dst;
          WORD2(v317) = v184;
          (*(*v1 + 1600))(&v317, 56, 1, &unk_1F5D54E58);
          goto LABEL_158;
        case ':':
          v66 = OUTLINED_FUNCTION_22_60(v15, v16, v17, v18, v19, v20, v21, v22, v208, v218, v228, v239, v251, v263, v275, v287, v297, v307, v317, v318, v319, v320, v321, *(&v321 + 1), v322, v323, v324, *(&v324 + 1), v325, *(&v325 + 1), v326, *(&v326 + 1), *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], v328, v329, v330, v331, v332, v333, v334, v335, v336, v337);
          OUTLINED_FUNCTION_16_88(v66, v67, v68, v69, v70, v71, v72, v73, v214, v224, v234, v245, v257, v269, v281, v293, v303, v313, v317, v318, v319, v320, v321, *(&v321 + 1), v322, v323, v324, *(&v324 + 1), v325, *(&v325 + 1), v326, *(&v326 + 1), *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], v328, v329, v330, v331, v332, v333, v334, v335, v336, v337, __src[0]);
          sub_1E3C3913C();
          if (*(&v340 + 1))
          {
            OUTLINED_FUNCTION_19_153();
            OUTLINED_FUNCTION_74();
            sub_1E376B670();
          }

          if (*(&v341 + 1))
          {
            OUTLINED_FUNCTION_25_113();
            OUTLINED_FUNCTION_53();
            sub_1E376B670();
          }

          if (*(&v342 + 1))
          {
            OUTLINED_FUNCTION_24_116();
            OUTLINED_FUNCTION_53();
            sub_1E376B670();
          }

          if (v344)
          {
            OUTLINED_FUNCTION_23_109();
            OUTLINED_FUNCTION_168();
            sub_1E376B670();
          }

          if (v346)
          {
            OUTLINED_FUNCTION_22_102();
            OUTLINED_FUNCTION_17_11();
            sub_1E376B670();
          }

          v7 = v348;
          if (v348)
          {
            OUTLINED_FUNCTION_21_123();
            sub_1E325F748(&v340, &qword_1ECF346E8, &unk_1E42C0DD0);
            OUTLINED_FUNCTION_4_271();
            sub_1E376B670();
          }

          else
          {
            sub_1E325F748(&v340, &qword_1ECF346E8, &unk_1E42C0DD0);
          }

          OUTLINED_FUNCTION_0_347();
          sub_1E3C2FCB8(v161, v162, v163, v164, v165, v166, &unk_1F5D54C18, v167);
          OUTLINED_FUNCTION_13_191();
          LODWORD(v317) = *__dst;
          WORD2(v317) = v168;
          (*(*v1 + 1600))(&v317, 58, 1, &unk_1F5D54C18);
          goto LABEL_158;
        case ';':
          v93 = OUTLINED_FUNCTION_22_60(v15, v16, v17, v18, v19, v20, v21, v22, v208, v218, v228, v239, v251, v263, v275, v287, v297, v307, v317, v318, v319, v320, v321, *(&v321 + 1), v322, v323, v324, *(&v324 + 1), v325, *(&v325 + 1), v326, *(&v326 + 1), *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], v328, v329, v330, v331, v332, v333, v334, v335, v336, v337);
          OUTLINED_FUNCTION_16_88(v93, v94, v95, v96, v97, v98, v99, v100, v217, v227, v237, v248, v260, v272, v284, v296, v306, v316, v317, v318, v319, v320, v321, *(&v321 + 1), v322, v323, v324, *(&v324 + 1), v325, *(&v325 + 1), v326, *(&v326 + 1), *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], v328, v329, v330, v331, v332, v333, v334, v335, v336, v337, __src[0]);
          sub_1E3C3913C();
          if (*(&v340 + 1))
          {
            OUTLINED_FUNCTION_19_153();
            OUTLINED_FUNCTION_74();
            sub_1E376B880();
          }

          if (*(&v341 + 1))
          {
            OUTLINED_FUNCTION_25_113();
            OUTLINED_FUNCTION_53();
            sub_1E376B880();
          }

          if (*(&v342 + 1))
          {
            OUTLINED_FUNCTION_24_116();
            OUTLINED_FUNCTION_53();
            sub_1E376B880();
          }

          if (v344)
          {
            OUTLINED_FUNCTION_23_109();
            OUTLINED_FUNCTION_168();
            sub_1E376B880();
          }

          if (v346)
          {
            OUTLINED_FUNCTION_22_102();
            OUTLINED_FUNCTION_17_11();
            sub_1E376B880();
          }

          v7 = v348;
          if (v348)
          {
            OUTLINED_FUNCTION_21_123();
            sub_1E325F748(&v340, &qword_1ECF346E8, &unk_1E42C0DD0);
            OUTLINED_FUNCTION_4_271();
            sub_1E376B880();
          }

          else
          {
            sub_1E325F748(&v340, &qword_1ECF346E8, &unk_1E42C0DD0);
          }

          OUTLINED_FUNCTION_0_347();
          sub_1E3C2FCB8(v185, v186, v187, v188, v189, v190, &unk_1F5D54CA8, v191);
          OUTLINED_FUNCTION_13_191();
          LODWORD(v317) = *__dst;
          WORD2(v317) = v192;
          (*(*v1 + 1600))(&v317, 59, 1, &unk_1F5D54CA8);
LABEL_158:
          sub_1E325F748(__src, &unk_1ECF296E0, &unk_1E4298030);
          __swift_destroy_boxed_opaque_existential_1(&v321);
          v3 = v297;
          goto LABEL_4;
        case '>':
          OUTLINED_FUNCTION_24_56(v15, v16, v17, v18, v19, v20, v21, v22, v208, v218, v228, v239, v251, v263, v275, v287, v297, v307, v317, v318, v319, v320);
          v24 = 62;
          goto LABEL_37;
        case '?':
        case '@':
          OUTLINED_FUNCTION_24_56(v15, v16, v17, v18, v19, v20, v21, v22, v208, v218, v228, v239, v251, v263, v275, v287, v297, v307, v317, v318, v319, v320);
          v24 = v23;
LABEL_37:
          sub_1E3C3ABD4(&v340, v24, 1);
LABEL_38:
          v84 = &v340;
          goto LABEL_39;
        case 'B':
          sub_1E328438C(&v321, __dst);
          sub_1E3C3913C();
          v101 = v341;
          v102 = BYTE8(v341);
          v103 = v342;
          v104 = BYTE8(v342);
          v105 = v344;
          v106 = v346;
          v261 = v345;
          v273 = v347;
          v285 = v348;
          v249 = v343;
          if (BYTE8(v340))
          {
            v107 = 0;
            if ((BYTE8(v341) & 1) == 0)
            {
              goto LABEL_47;
            }
          }

          else
          {
            v107 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedInteger_];
            if ((v102 & 1) == 0)
            {
LABEL_47:
              v108 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedInteger_];
              if ((v104 & 1) == 0)
              {
                goto LABEL_48;
              }

              goto LABEL_53;
            }
          }

          v108 = 0;
          if ((v104 & 1) == 0)
          {
LABEL_48:
            v109 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedInteger_];
            if ((v105 & 1) == 0)
            {
              goto LABEL_49;
            }

            goto LABEL_54;
          }

LABEL_53:
          v109 = 0;
          if ((v105 & 1) == 0)
          {
LABEL_49:
            v110 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedInteger_];
            if ((v106 & 1) == 0)
            {
              goto LABEL_50;
            }

            goto LABEL_55;
          }

LABEL_54:
          v110 = 0;
          if ((v106 & 1) == 0)
          {
LABEL_50:
            v111 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedInteger_];
            goto LABEL_56;
          }

LABEL_55:
          v111 = 0;
LABEL_56:
          if (v285)
          {
            v112 = 0;
          }

          else
          {
            v112 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedInteger_];
          }

          *__src = v107;
          v317 = v108;
          v336 = v110;
          v334 = v109;
          v332 = v111;
          v330 = v112;
          v113 = sub_1E3280A90(0, &qword_1EE23ADD0, 0x1E696AD98);
          v286 = v107;
          v274 = v108;
          v262 = v110;
          v250 = v109;
          v238 = v111;
          v114 = v112;
          v122 = OUTLINED_FUNCTION_16_88(v114, v115, v116, v117, v118, v119, v120, v121, v208, v114, v238, v250, v262, v274, v286, v287, v297, v307, v317, v318, v319, v320, v321, *(&v321 + 1), v322, v323, v324, *(&v324 + 1), v325, *(&v325 + 1), v326, *(&v326 + 1), *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], v328, v329, v330, v331, v332, v333, v334, v335, v336, v337, __src[0]);
          sub_1E3C2FCB8(v122, &v317, &v336, &v334, &v332, &v330, v113, v123);
          v125 = *(&v340 + 1);
          v124 = v340;
          v126 = v341;
          v127 = v342;
          *__src = v340;
          *&__src[16] = v341;
          *&__src[32] = v342;
          (*(*v1 + 1600))(__src, 66, 1, v113);

          sub_1E325F748(__dst, &unk_1ECF296E0, &unk_1E4298030);
          __swift_destroy_boxed_opaque_existential_1(&v321);
          a1 = v287;
          v3 = v297;
          v7 = v307;
          break;
        case 'C':
          sub_1E328438C(&v321, &v317);
          sub_1E3C3913C();
          if (!*(&v340 + 1) || (OUTLINED_FUNCTION_19_153(), OUTLINED_FUNCTION_74(), sub_1E376BA44(), OUTLINED_FUNCTION_16_162(), v75))
          {
            v275 = 0;
            LODWORD(v263) = 1;
          }

          else
          {
            v275 = j__OUTLINED_FUNCTION_13_30(v74);
            LODWORD(v263) = 0;
          }

          if (!*(&v341 + 1) || (, OUTLINED_FUNCTION_74(), sub_1E376BA44(), OUTLINED_FUNCTION_16_162(), v75))
          {
            v251 = 0;
            LODWORD(v239) = 1;
          }

          else
          {
            v251 = j__OUTLINED_FUNCTION_13_30(v193);
            LODWORD(v239) = 0;
          }

          if (!*(&v342 + 1) || (, OUTLINED_FUNCTION_74(), sub_1E376BA44(), OUTLINED_FUNCTION_16_162(), v75))
          {
            v228 = 0;
            v195 = 1;
          }

          else
          {
            v228 = j__OUTLINED_FUNCTION_13_30(v194);
            v195 = 0;
          }

          v196 = v344;
          if (!v344)
          {
            goto LABEL_171;
          }

          OUTLINED_FUNCTION_74();
          sub_1E376BA44();
          OUTLINED_FUNCTION_16_162();
          if (v75)
          {
            v196 = 0;
LABEL_171:
            v198 = 1;
          }

          else
          {
            v196 = j__OUTLINED_FUNCTION_13_30(v197);
            v198 = 0;
          }

          v199 = v346;
          if (!v346)
          {
            goto LABEL_176;
          }

          OUTLINED_FUNCTION_53();
          sub_1E376BA44();
          OUTLINED_FUNCTION_16_162();
          if (v75)
          {
            v199 = 0;
LABEL_176:
            v201 = 1;
          }

          else
          {
            v199 = j__OUTLINED_FUNCTION_13_30(v200);
            v201 = 0;
          }

          if (v348)
          {

            sub_1E325F748(&v340, &qword_1ECF346E8, &unk_1E42C0DD0);
            OUTLINED_FUNCTION_168();
            sub_1E376BA44();
            OUTLINED_FUNCTION_16_162();
            if (v75)
            {
              v203 = 0;
              v204 = 1;
            }

            else
            {
              v203 = j__OUTLINED_FUNCTION_13_30(v202);
              v204 = 0;
            }

            v3 = v297;
          }

          else
          {
            sub_1E325F748(&v340, &qword_1ECF346E8, &unk_1E42C0DD0);
            v203 = 0;
            v204 = 1;
          }

          *__dst = v275;
          __dst[8] = v263;
          v336 = v251;
          LOBYTE(v337) = v239;
          v334 = v228;
          LOBYTE(v335) = v195;
          v332 = v196;
          LOBYTE(v333) = v198;
          v330 = v199;
          LOBYTE(v331) = v201;
          v328 = v203;
          LOBYTE(v329) = v204;
          type metadata accessor for NSLineBreakMode();
          v206 = v205;
          sub_1E3C2FCB8(__dst, &v336, &v334, &v332, &v330, &v328, v205, __src);
          memcpy(__dst, __src, 0x59uLL);
          OUTLINED_FUNCTION_36();
          (*(v207 + 1600))(__dst, 67, 1, v206);
          sub_1E325F748(&v317, &unk_1ECF296E0, &unk_1E4298030);
          __swift_destroy_boxed_opaque_existential_1(&v321);
          a1 = v287;
          v7 = v307;
          goto LABEL_4;
        case 'F':
          v33 = OUTLINED_FUNCTION_22_60(v15, v16, v17, v18, v19, v20, v21, v22, v208, v218, v228, v239, v251, v263, v275, v287, v297, v307, v317, v318, v319, v320, v321, *(&v321 + 1), v322, v323, v324, *(&v324 + 1), v325, *(&v325 + 1), v326, *(&v326 + 1), *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], v328, v329, v330, v331, v332, v333, v334, v335, v336, v337);
          OUTLINED_FUNCTION_16_88(v33, v34, v35, v36, v37, v38, v39, v40, v210, v220, v230, v241, v253, v265, v277, v289, v299, v309, v317, v318, v319, v320, v321, *(&v321 + 1), v322, v323, v324, *(&v324 + 1), v325, *(&v325 + 1), v326, *(&v326 + 1), *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], v328, v329, v330, v331, v332, v333, v334, v335, v336, v337, __src[0]);
          sub_1E3C3913C();
          if (*(&v340 + 1))
          {
            OUTLINED_FUNCTION_19_153();
            sub_1E325F748(&v340, &qword_1ECF346E8, &unk_1E42C0DD0);
            OUTLINED_FUNCTION_74();
            v41 = sub_1E376BC10();
          }

          else
          {
            sub_1E325F748(&v340, &qword_1ECF346E8, &unk_1E42C0DD0);
            v41 = 3;
          }

          LOBYTE(v317) = v41;
          LOBYTE(v336) = 3;
          LOBYTE(v334) = 3;
          LOBYTE(v332) = 3;
          sub_1E3C3DE00();
          LOBYTE(v328) = v330;
          sub_1E3C3DE00();
          v339[0] = v339[1];
          sub_1E3C2FCB8(&v317, &v336, &v334, &v332, &v328, v339, &unk_1F5D54DC8, __dst);
          OUTLINED_FUNCTION_13_191();
          LODWORD(v317) = *__dst;
          WORD2(v317) = v136;
          (*(*v1 + 1600))(&v317, 70, 1, &unk_1F5D54DC8);
          v84 = __src;
LABEL_39:
          sub_1E325F748(v84, &unk_1ECF296E0, &unk_1E4298030);
          goto LABEL_40;
        default:
LABEL_40:
          __swift_destroy_boxed_opaque_existential_1(&v321);
          goto LABEL_4;
      }

      goto LABEL_4;
    }
  }

  __break(1u);
}

uint64_t sub_1E41144F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v44[3] = a3;
  v47 = a2;
  v51 = a4;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF40628, &qword_1E42ED290);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  v9 = v44 - v8;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF40630, &qword_1E42ED298);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  v46 = v44 - v11;
  type metadata accessor for RoomBanner(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v12);
  v14 = (v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for CastRoomBanner(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v15);
  v17 = (v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF40638, &qword_1E42ED2A0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v18);
  v20 = v44 - v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF40640, &qword_1E42ED2A8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v21);
  v23 = v44 - v22;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF40648, &unk_1E42ED2B0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v24);
  v26 = v44 - v25;
  switch(*(a1 + 98))
  {
    case 'Q':

      sub_1E3A9700C(v40, v17);
      sub_1E4114DA0(v17, v23, type metadata accessor for CastRoomBanner);
      v41 = swift_storeEnumTagMultiPayload();
      sub_1E4114C48(v41, v42, v43);
      sub_1E4114C9C(&qword_1EE2831B0, type metadata accessor for CastRoomBanner, &unk_1E42B6FA8);
      sub_1E4201F44();
      sub_1E37E93E8(v26, v20, &qword_1ECF40648, &unk_1E42ED2B0);
      OUTLINED_FUNCTION_2_267();
      swift_storeEnumTagMultiPayload();
      sub_1E4114B8C();
      sub_1E4114CE4();
      OUTLINED_FUNCTION_0_348();
      sub_1E4201F44();
      sub_1E325F6F0(v26, &qword_1ECF40648, &unk_1E42ED2B0);
      v38 = v17;
      v39 = type metadata accessor for CastRoomBanner;
      return sub_1E4114E00(v38, v39);
    case 'R':
    case 'S':
    case 'V':

      v27 = v47;

      sub_1E3884424(a1, v27, __src);
      memcpy(v23, __src, 0x60uLL);
      swift_storeEnumTagMultiPayload();
      v28 = sub_1E38855B4(__src, v52);
      sub_1E4114C48(v28, v29, v30);
      sub_1E4114C9C(&qword_1EE2831B0, type metadata accessor for CastRoomBanner, &unk_1E42B6FA8);
      sub_1E4201F44();
      v31 = &qword_1ECF40648;
      v32 = &unk_1E42ED2B0;
      sub_1E37E93E8(v26, v20, &qword_1ECF40648, &unk_1E42ED2B0);
      OUTLINED_FUNCTION_2_267();
      swift_storeEnumTagMultiPayload();
      sub_1E4114B8C();
      sub_1E4114CE4();
      OUTLINED_FUNCTION_0_348();
      sub_1E4201F44();
      sub_1E4114E58(__src);
      v33 = v26;
      return sub_1E325F6F0(v33, v31, v32);
    case 'T':

      v36 = v47;

      sub_1E39DC940(a1, v36, v14);
      sub_1E4114DA0(v14, v9, type metadata accessor for RoomBanner);
      swift_storeEnumTagMultiPayload();
      sub_1E4114C9C(&qword_1EE287D68, type metadata accessor for RoomBanner, &unk_1E42B0F70);
      v37 = v46;
      sub_1E4201F44();
      sub_1E37E93E8(v37, v20, &qword_1ECF40630, &qword_1E42ED298);
      OUTLINED_FUNCTION_2_267();
      swift_storeEnumTagMultiPayload();
      sub_1E4114B8C();
      sub_1E4114CE4();
      OUTLINED_FUNCTION_0_348();
      sub_1E4201F44();
      sub_1E325F6F0(v37, &qword_1ECF40630, &qword_1E42ED298);
      v38 = v14;
      v39 = type metadata accessor for RoomBanner;
      return sub_1E4114E00(v38, v39);
    default:
      swift_storeEnumTagMultiPayload();
      sub_1E4114C9C(&qword_1EE287D68, type metadata accessor for RoomBanner, &unk_1E42B0F70);
      v34 = v46;
      sub_1E4201F44();
      v31 = &qword_1ECF40630;
      v32 = &qword_1E42ED298;
      sub_1E37E93E8(v34, v20, &qword_1ECF40630, &qword_1E42ED298);
      OUTLINED_FUNCTION_2_267();
      swift_storeEnumTagMultiPayload();
      sub_1E4114B8C();
      sub_1E4114CE4();
      OUTLINED_FUNCTION_0_348();
      sub_1E4201F44();
      v33 = v34;
      return sub_1E325F6F0(v33, v31, v32);
  }
}

unint64_t sub_1E4114B8C()
{
  result = qword_1EE289208;
  if (!qword_1EE289208)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF40648, &unk_1E42ED2B0);
    sub_1E4114C48(v1, v2, v3);
    sub_1E4114C9C(&qword_1EE2831B0, type metadata accessor for CastRoomBanner, &unk_1E42B6FA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289208);
  }

  return result;
}

unint64_t sub_1E4114C48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EE288080;
  if (!qword_1EE288080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288080);
  }

  return result;
}

uint64_t sub_1E4114C9C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1E4114CE4()
{
  result = qword_1EE2891F8;
  if (!qword_1EE2891F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF40630, &qword_1E42ED298);
    sub_1E4114C9C(&qword_1EE287D68, type metadata accessor for RoomBanner, &unk_1E42B0F70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2891F8);
  }

  return result;
}

uint64_t sub_1E4114DA0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_2();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1E4114E00(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_2();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_1E4114EBC()
{
  result = qword_1EE288D28;
  if (!qword_1EE288D28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ECF40650, qword_1E42ED2D8);
    sub_1E4114B8C();
    sub_1E4114CE4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288D28);
  }

  return result;
}

uint64_t sub_1E4114F48()
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  return swift_unknownObjectWeakLoadStrong();
}

uint64_t sub_1E4114F94(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC8VideosUI25RootSplitTabBarController_splitDelegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1E4115000(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v3;
  v4 = OBJC_IVAR____TtC8VideosUI25RootSplitTabBarController_splitDelegate;
  v3[5] = v1;
  v3[6] = v4;
  v5 = v1 + v4;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v7 = *(v5 + 8);
  v3[3] = Strong;
  v3[4] = v7;
  return sub_1E3900F50;
}

uint64_t sub_1E411508C()
{
  v1 = OBJC_IVAR____TtC8VideosUI25RootSplitTabBarController_trackModeSwitchOnParentMoveEvents;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1E41150CC(char a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI25RootSplitTabBarController_trackModeSwitchOnParentMoveEvents;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id sub_1E411517C()
{
  *(v0 + OBJC_IVAR____TtC8VideosUI25RootSplitTabBarController_splitDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC8VideosUI25RootSplitTabBarController_trackModeSwitchOnParentMoveEvents) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI25RootSplitTabBarController_listenForAppear) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI25RootSplitTabBarController_listenForDissapear) = 0;
  v6 = type metadata accessor for RootSplitTabBarController();
  OUTLINED_FUNCTION_25();
  v3 = objc_msgSendSuper2(v1, v2, v0, v6);
  result = [v3 view];
  if (result)
  {
    v5 = result;
    [result setBackgroundColor_];

    [v3 setDelegate_];
    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1E41152A4()
{
  *(v0 + OBJC_IVAR____TtC8VideosUI25RootSplitTabBarController_splitDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC8VideosUI25RootSplitTabBarController_trackModeSwitchOnParentMoveEvents) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI25RootSplitTabBarController_listenForAppear) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI25RootSplitTabBarController_listenForDissapear) = 0;
  sub_1E42076B4();
  __break(1u);
}

void sub_1E4115354(void *a1)
{
  v2 = v1;
  v4 = sub_1E4203FC4();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1E4203FF4();
  OUTLINED_FUNCTION_0_10();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for RootSplitTabBarController();
  v35.receiver = v2;
  v35.super_class = v16;
  v17 = objc_msgSendSuper2(&v35, sel_didMoveToParentViewController_, a1);
  if (a1)
  {
    type metadata accessor for RootSplitViewController();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v19 = a1;
    if (![v19 isKindOfClass_] || ((*((*MEMORY[0x1E69E7D40] & *v2) + 0x88))() & 1) == 0)
    {

      *(v2 + OBJC_IVAR____TtC8VideosUI25RootSplitTabBarController_listenForAppear) = 1;
      *(v2 + OBJC_IVAR____TtC8VideosUI25RootSplitTabBarController_listenForDissapear) = 0;
      return;
    }

    sub_1E3280A90(0, &qword_1EE23B1D0, 0x1E69E9610);
    v31 = sub_1E4206A04();
    swift_allocObject();
    swift_unknownObjectWeakInit();
    OUTLINED_FUNCTION_0_349();
    OUTLINED_FUNCTION_1_308(COERCE_DOUBLE(1107296256));
    v33 = v20;
    v34 = &block_descriptor_4_2;
    v21 = _Block_copy(aBlock);

    sub_1E4203FE4();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1E37E7A8C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A730, &qword_1E429B000);
    v22 = sub_1E378AD28();
    OUTLINED_FUNCTION_2_268(v22);
    v23 = OUTLINED_FUNCTION_6_237();
    v24 = v31;
    MEMORY[0x1E6911380](v23);
    _Block_release(v21);

    goto LABEL_8;
  }

  if ((*((*MEMORY[0x1E69E7D40] & *v2) + 0x88))(v17))
  {
    sub_1E3280A90(0, &qword_1EE23B1D0, 0x1E69E9610);
    v25 = sub_1E4206A04();
    swift_allocObject();
    swift_unknownObjectWeakInit();
    OUTLINED_FUNCTION_0_349();
    OUTLINED_FUNCTION_1_308(COERCE_DOUBLE(1107296256));
    v33 = v26;
    v34 = &block_descriptor_167;
    v27 = _Block_copy(aBlock);

    sub_1E4203FE4();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1E37E7A8C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A730, &qword_1E429B000);
    v28 = sub_1E378AD28();
    OUTLINED_FUNCTION_2_268(v28);
    v29 = OUTLINED_FUNCTION_6_237();
    MEMORY[0x1E6911380](v29);
    _Block_release(v27);

LABEL_8:
    (*(v6 + 8))(v9, v4);
    (*(v12 + 8))(v15, v10);
    return;
  }

  *(v2 + OBJC_IVAR____TtC8VideosUI25RootSplitTabBarController_listenForDissapear) = 1;
  *(v2 + OBJC_IVAR____TtC8VideosUI25RootSplitTabBarController_listenForAppear) = 1;
}

void sub_1E4115780(char a1)
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x70))();
    v6 = v5;

    if (v4)
    {
      ObjectType = swift_getObjectType();
      (*(v6 + 16))(a1 & 1, ObjectType, v6);
      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_1E411591C(char a1, SEL *a2, uint64_t *a3, char a4)
{
  v8 = v4;
  v16.receiver = v8;
  v16.super_class = type metadata accessor for RootSplitTabBarController();
  result = objc_msgSendSuper2(&v16, *a2, a1 & 1);
  v11 = *a3;
  if (*(v8 + *a3) == 1)
  {
    v12 = MEMORY[0x1E69E7D40];
    result = (*((*MEMORY[0x1E69E7D40] & *v8) + 0x88))(result);
    if ((result & 1) == 0)
    {
      result = (*((*v12 & *v8) + 0x70))();
      if (result)
      {
        v14 = v13;
        ObjectType = swift_getObjectType();
        (*(v14 + 16))(a4 & 1, ObjectType, v14);
        result = swift_unknownObjectRelease();
      }

      *(v8 + v11) = 0;
    }
  }

  return result;
}

void sub_1E4115A9C(unint64_t a1, char a2)
{
  v3 = v2;
  if (a1)
  {
    v5 = sub_1E4115D98(a1);
    if (v5)
    {
      v6 = v5;
      v7 = MEMORY[0x1E69E7CC0];
      v22 = MEMORY[0x1E69E7CC0];
      v8 = sub_1E32AE9B0(v5);
      if (!v8)
      {
LABEL_23:

        if (v7 >> 62)
        {
          sub_1E3280A90(0, &qword_1EE23B250, 0x1E69DD258);

          sub_1E42076C4();
        }

        else
        {

          sub_1E42079D4();
          sub_1E3280A90(0, &qword_1EE23B250, 0x1E69DD258);
        }

        sub_1E3280A90(0, &qword_1EE23B250, 0x1E69DD258);
        v21 = sub_1E42062A4();

        goto LABEL_26;
      }

      v9 = v8;
      type metadata accessor for RootHostingViewController();
      if (v9 >= 1)
      {
        for (i = 0; i != v9; ++i)
        {
          if ((v6 & 0xC000000000000001) != 0)
          {
            v11 = MEMORY[0x1E6911E60](i, v6);
          }

          else
          {
            v11 = *(v6 + 8 * i + 32);
          }

          v12 = v11;
          sub_1E41191BC(v12);
          MEMORY[0x1E6910BF0]();
          if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1E42062F4();
          }

          sub_1E4206324();
        }

        v7 = v22;
        goto LABEL_23;
      }

      __break(1u);
LABEL_31:
      __break(1u);
      return;
    }
  }

  v13 = sub_1E4116514(v2, &selRef_viewControllers);
  if (v13)
  {
    v14 = sub_1E4115ECC(v13);

    if (v14)
    {
      v15 = sub_1E32AE9B0(v14);
      if (v15)
      {
        v16 = v15;
        if (v15 < 1)
        {
          goto LABEL_31;
        }

        v17 = 0;
        v18 = MEMORY[0x1E69E7D40];
        do
        {
          if ((v14 & 0xC000000000000001) != 0)
          {
            v19 = MEMORY[0x1E6911E60](v17, v14);
          }

          else
          {
            v19 = *(v14 + 8 * v17 + 32);
          }

          v20 = v19;
          ++v17;
          (*((*v18 & *v19) + 0x98))(0);
        }

        while (v16 != v17);
      }

      v21 = 0;
LABEL_26:
      v23.receiver = v3;
      v23.super_class = type metadata accessor for RootSplitTabBarController();
      objc_msgSendSuper2(&v23, sel_setViewControllers_animated_, v21, a2 & 1);
    }
  }
}

id sub_1E4115D98(unint64_t a1)
{
  v6 = MEMORY[0x1E69E7CC0];
  sub_1E32AE9B0(a1);
  sub_1E4207574();
  result = sub_1E32AE9B0(a1);
  v3 = result;
  for (i = 0; ; ++i)
  {
    if (v3 == i)
    {
      return v6;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x1E6911E60](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_14;
      }

      result = *(a1 + 8 * i + 32);
    }

    v5 = result;
    if (__OFADD__(i, 1))
    {
      break;
    }

    objc_opt_self();
    if (!swift_dynamicCastObjCClass())
    {

      return 0;
    }

    sub_1E4207544();
    sub_1E4207584();
    sub_1E4207594();
    result = sub_1E4207554();
  }

  __break(1u);
LABEL_14:
  __break(1u);
  return result;
}

id sub_1E4115ECC(unint64_t a1)
{
  v6 = MEMORY[0x1E69E7CC0];
  sub_1E32AE9B0(a1);
  sub_1E4207574();
  result = sub_1E32AE9B0(a1);
  v3 = result;
  for (i = 0; ; ++i)
  {
    if (v3 == i)
    {
      return v6;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x1E6911E60](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_14;
      }

      result = *(a1 + 8 * i + 32);
    }

    v5 = result;
    if (__OFADD__(i, 1))
    {
      break;
    }

    type metadata accessor for RootHostingViewController();
    if (!swift_dynamicCastClass())
    {

      return 0;
    }

    sub_1E4207544();
    sub_1E4207584();
    sub_1E4207594();
    result = sub_1E4207554();
  }

  __break(1u);
LABEL_14:
  __break(1u);
  return result;
}

id sub_1E4116140()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RootSplitTabBarController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1E4116184(void *a1, void *a2)
{
  v3 = v2;
  type metadata accessor for RootSplitTabBarController();
  if (swift_dynamicCastClass())
  {
    v6 = a1;
    sub_1E4116260(a2);
    if ((v8 & 1) == 0)
    {
      v9 = v7;
      if ((*((*MEMORY[0x1E69E7D40] & *v3) + 0x70))())
      {
        v11 = v10;
        ObjectType = swift_getObjectType();
        (*(v11 + 8))(v9, ObjectType, v11);
        swift_unknownObjectRelease();
      }
    }
  }

  return 0;
}

void sub_1E4116260(void *a1)
{
  v2 = v1;
  v4 = sub_1E4116514(v2, &selRef_vuiViewControllers);
  if (!v4)
  {
    return;
  }

  v5 = sub_1E4115ECC(v4);

  if (!v5)
  {
    return;
  }

  type metadata accessor for RootHostingViewController();
  v6 = swift_dynamicCastClass();
  if (!v6)
  {
LABEL_26:

    return;
  }

  v7 = *((*MEMORY[0x1E69E7D40] & *v6) + 0x60);
  v8 = a1;
  v9 = v7();
  if (!v9 || (v10 = sub_1E3D4B954(v9), !v11))
  {

    goto LABEL_26;
  }

  v12 = v10;
  v13 = v11;
  v23 = v8;
  v14 = sub_1E32AE9B0(v5);
  for (i = 0; ; ++i)
  {
    if (v14 == i)
    {

      goto LABEL_26;
    }

    if ((v5 & 0xC000000000000001) != 0)
    {
      v16 = MEMORY[0x1E6911E60](i, v5);
    }

    else
    {
      if (i >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_29;
      }

      v16 = *(v5 + 8 * i + 32);
    }

    v17 = v16;
    if (__OFADD__(i, 1))
    {
      break;
    }

    v18 = (*((*MEMORY[0x1E69E7D40] & *v16) + 0x60))();
    if (v18 && (v19 = sub_1E3D4B954(v18), v20))
    {
      if (v12 == v19 && v13 == v20)
      {

        goto LABEL_26;
      }

      v22 = sub_1E42079A4();

      if (v22)
      {

        goto LABEL_26;
      }
    }

    else
    {
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
}

uint64_t sub_1E4116514(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  sub_1E3280A90(0, &qword_1EE23B250, 0x1E69DD258);
  v4 = sub_1E42062B4();

  return v4;
}

uint64_t sub_1E41165F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 248) = a4;
  *(v5 + 256) = a5;

  v6 = sub_1E39C0300();

  if (v6)
  {
  }

  return v6;
}

uint64_t sub_1E4116670(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v32 = a3;
  v33 = a4;
  v12 = sub_1E41FE624();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E41FE614();
  v16 = sub_1E41FE5E4();
  v18 = v17;
  (*(v13 + 8))(v15, v12);
  v19 = *(v7 + 840);

  v20 = v19(v16, v18, 0, a5, a6);
  if (v20)
  {
    v21 = MEMORY[0x1E69E7CC0];
    v37 = MEMORY[0x1E69E7CC0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F240, &unk_1E4298910);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1E4297BE0;

    *(inited + 32) = sub_1E3C7CCAC(0);
    *(inited + 40) = v23;
    v34 = 0x656372756F736572;
    v35 = 0xEB000000002F2F3ALL;
    MEMORY[0x1E69109E0](a1, a2);

    v24 = v34;
    v25 = v35;
    v26 = MEMORY[0x1E69E6158];
    *(inited + 72) = MEMORY[0x1E69E6158];
    *(inited + 48) = v24;
    *(inited + 56) = v25;
    v27 = sub_1E4205CB4();
    type metadata accessor for ImageViewModel();
    swift_retain_n();
    v28 = sub_1E3F5321C(39, v27, v20);
    v29 = v33;
    if (v28)
    {
      MEMORY[0x1E6910BF0]();
      if (*((v37 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v37 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1E42062F4();
      }

      sub_1E4206324();
      v21 = v37;
    }

    type metadata accessor for TextViewModel();
    v36 = v26;
    v34 = v32;
    v35 = v29;
    if (sub_1E3C27638(23, &v34, v20, 0, 0))
    {
      MEMORY[0x1E6910BF0]();
      if (*((v37 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v37 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1E42062F4();
      }

      sub_1E4206324();
      v21 = v37;
    }

    (*(*v20 + 472))(v21);
  }

  else
  {
  }

  return v20;
}

BOOL sub_1E41169BC(unsigned __int8 a1)
{
  v2 = a1 - 1;
  if (v2 <= 1)
  {
    (*(v1 + 248))();
  }

  return v2 < 2;
}

uint64_t sub_1E4116A64()
{
  v0 = ViewModel.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 264, 7);
}

void *sub_1E4116AD0@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF40670, &qword_1E42ED380) - 8;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &__src[-v5];
  sub_1E4116C78(*(v1 + 16), &__src[-v5]);
  v7 = &v6[*(v3 + 44)];
  *v7 = (*(v1 + 112) & 0x100) == 0;
  v7[1] = 1;
  if (sub_1E41175F8())
  {
    sub_1E4203DB4();
  }

  else
  {
    sub_1E4203DA4();
  }

  sub_1E42015C4();
  sub_1E329E454(v6, a1, &qword_1ECF40670, &qword_1E42ED380);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF40678, &qword_1E42ED388);
  return memcpy((a1 + *(v8 + 36)), __src, 0x70uLL);
}

uint64_t sub_1E4116C78@<X0>(unsigned __int16 *a1@<X2>, uint64_t a2@<X8>)
{
  v3 = v2;
  v108 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B188, &unk_1E42D9BC0);
  OUTLINED_FUNCTION_6_4(v5, &v119);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_17_3(&v97 - v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B0D0, &qword_1E42D99A8);
  OUTLINED_FUNCTION_6_4(v8, &v123);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_17_3(&v97 - v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38540, &qword_1E42ED390);
  OUTLINED_FUNCTION_6_4(v11, &v118);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_17_3(&v97 - v13);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF40680, &qword_1E42ED398);
  v15 = OUTLINED_FUNCTION_6_4(v14, &v120);
  MEMORY[0x1EEE9AC00](v15);
  v103 = &v97 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_17_3(&v97 - v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF40688, &qword_1E42ED3A0);
  OUTLINED_FUNCTION_6_4(v19, &v121);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v97 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF40690, &qword_1E42ED3A8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v97 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF40698, &unk_1E42ED3B0);
  OUTLINED_FUNCTION_6_4(v27, &v122);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v97 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF289B8, &qword_1E4297EB0);
  v32 = *(v31 - 8);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v97 - v34;
  v36 = a1[49];
  if (sub_1E373F6E0(v36, 261, v37, v38, v39, v40))
  {
    sub_1E3EB9AD0(0, 0, 1, v3[13], 0, 0, &v111);
    OUTLINED_FUNCTION_9_198();
    v115 = v45;
    v114 = v111;
    v116 = v112;
    v117 = v113;
    v46 = (*(*a1 + 392))();
    v47 = OUTLINED_FUNCTION_7_245();
    sub_1E382A9B4(v47, v48, v46, v49);

    (*(v32 + 16))(v26, v35, v31);
    v50 = swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_18_2(v50);
    sub_1E4117840();
    sub_1E4201F44();
    sub_1E3294EE4(v30, v22, &qword_1ECF40698, &unk_1E42ED3B0);
    swift_storeEnumTagMultiPayload();
    sub_1E411779C();
    sub_1E3E94434();
    OUTLINED_FUNCTION_4_272();
    sub_1E4201F44();
    sub_1E325F6F0(v30, &qword_1ECF40698, &unk_1E42ED3B0);
    return (*(v32 + 8))(v35, v31);
  }

  else
  {
    v97 = v23;
    v98 = v26;
    v99 = v30;
    v100 = v32;
    v101 = v31;
    if (sub_1E373F6E0(v36, 39, v41, v42, v43, v44))
    {
      OUTLINED_FUNCTION_5_251(v3[4], v3[5]);
      OUTLINED_FUNCTION_9_198();
      v115 = v56;
      v114 = v111;
      v116 = v112;
      v117 = v113;
      v57 = *(*a1 + 392);
      v58 = v57();
      v59 = v106;
      sub_1E382A9B4(a1, &v114, v58, v106);

      *(v59 + *(v102 + 36)) = 1;
      v61 = (v57)(v60);
      if (v61 && ((*(*v61 + 176))(v109), v62 = v109[0], v63 = v109[1], v64 = v109[2], v65 = v109[3], , (v110 & 1) == 0))
      {
        v66.n128_u64[0] = v62;
        v67.n128_u64[0] = v63;
        v68.n128_u64[0] = v64;
        v69.n128_u64[0] = v65;
        v70 = j_nullsub_1(v66, v67, v68, v69);
      }

      else
      {
        v70 = OUTLINED_FUNCTION_5_8();
      }

      v83 = v70;
      v84 = v71;
      v85 = v72;
      v86 = v73;
      v87 = v22;
      v88 = v107;
      v89 = v99;
      v90 = v98;
      v91 = sub_1E4202734();
      v92 = v103;
      sub_1E329E454(v106, v103, &qword_1ECF38540, &qword_1E42ED390);
      v93 = v92 + *(v88 + 36);
      *v93 = v91;
      *(v93 + 8) = v83;
      *(v93 + 16) = v84;
      *(v93 + 24) = v85;
      *(v93 + 32) = v86;
      *(v93 + 40) = 0;
      v94 = v92;
      v95 = v104;
      sub_1E329E454(v94, v104, &qword_1ECF40680, &qword_1E42ED398);
      sub_1E3294EE4(v95, v90, &qword_1ECF40680, &qword_1E42ED398);
      v96 = swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_18_2(v96);
      sub_1E4117840();
      sub_1E4201F44();
      sub_1E3294EE4(v89, v87, &qword_1ECF40698, &unk_1E42ED3B0);
      swift_storeEnumTagMultiPayload();
      sub_1E411779C();
      sub_1E3E94434();
      OUTLINED_FUNCTION_4_272();
      sub_1E4201F44();
      sub_1E325F6F0(v89, &qword_1ECF40698, &unk_1E42ED3B0);
      return sub_1E325F6F0(v95, &qword_1ECF40680, &qword_1E42ED398);
    }

    else
    {
      sub_1E373F6E0(v36, 23, v52, v53, v54, v55);
      OUTLINED_FUNCTION_5_251(v3[4], v3[5]);
      OUTLINED_FUNCTION_9_198();
      v115 = v74;
      v114 = v111;
      v116 = v112;
      v117 = v113;
      v75 = (*(*a1 + 392))();
      v76 = OUTLINED_FUNCTION_7_245();
      sub_1E382A9B4(v76, v77, v75, v78);

      v79 = OUTLINED_FUNCTION_3_278();
      v80(v79);
      v81 = swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_18_2(v81);
      v82 = v105;
      sub_1E4201F44();
      sub_1E3294EE4(v82, v22, &qword_1ECF3B0D0, &qword_1E42D99A8);
      swift_storeEnumTagMultiPayload();
      sub_1E411779C();
      sub_1E3E94434();
      OUTLINED_FUNCTION_4_272();
      sub_1E4201F44();
      sub_1E325F6F0(v82, &qword_1ECF3B0D0, &qword_1E42D99A8);
      return (*(v23 + 8))(v35, v36);
    }
  }
}

uint64_t sub_1E41175F8()
{
  v1 = (**(v0 + 16) + 392);
  v2 = *v1;
  v3 = (*v1)();
  if (v3)
  {
    type metadata accessor for TextLayout();
    v4 = swift_dynamicCastClass();
    if (v4)
    {
      v5 = (*(*v4 + 1976))();

      if (v5 != 7)
      {
        sub_1E376C3B8(v3, v6, v7);
        v3 = sub_1E4205E84();
        if (v3)
        {
          LOBYTE(v8) = 1;
          return v8 & 1;
        }
      }
    }

    else
    {
    }
  }

  v8 = (v2)(v3);
  if (v8)
  {
    v9 = (*(*v8 + 456))(v8);

    if (v9 == 7)
    {
      LOBYTE(v8) = 0;
    }

    else
    {
      sub_1E3793D00(v10, v11, v12);
      LOBYTE(v8) = sub_1E4205E84();
    }
  }

  return v8 & 1;
}

unint64_t sub_1E411779C()
{
  result = qword_1ECF406A0;
  if (!qword_1ECF406A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF40698, &unk_1E42ED3B0);
    swift_getOpaqueTypeConformance2();
    sub_1E4117840();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF406A0);
  }

  return result;
}

unint64_t sub_1E4117840()
{
  result = qword_1ECF406A8;
  if (!qword_1ECF406A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF40680, &qword_1E42ED398);
    sub_1E41178CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF406A8);
  }

  return result;
}

unint64_t sub_1E41178CC()
{
  result = qword_1ECF406B0;
  if (!qword_1ECF406B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF38540, &qword_1E42ED390);
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    sub_1E38680BC(OpaqueTypeConformance2, v1, v2);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF406B0);
  }

  return result;
}

uint64_t *sub_1E4117970@<X0>(double *__return_ptr a1@<X8>, void *__src@<X4>, uint64_t a3@<X0>, uint64_t a4@<X1>, uint64_t a5@<X2>, uint64_t a6@<X3>, unsigned int a7@<W5>, double a8@<D0>)
{
  v8 = a7;
  *a1 = a3;
  *(a1 + 1) = a4;
  *(a1 + 2) = a5;
  *(a1 + 3) = a6;
  v11 = (a7 >> 8) & 1;
  result = memcpy(a1 + 4, __src, 0x41uLL);
  a1[13] = a8;
  *(a1 + 112) = v8;
  *(a1 + 113) = v11;
  return result;
}

uint64_t sub_1E41179F0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 114))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
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

uint64_t sub_1E4117A30(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 112) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 114) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 114) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1E4117AA0()
{
  result = qword_1ECF406B8;
  if (!qword_1ECF406B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF40678, &qword_1E42ED388);
    sub_1E4117B2C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF406B8);
  }

  return result;
}

unint64_t sub_1E4117B2C()
{
  result = qword_1ECF406C0;
  if (!qword_1ECF406C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF40670, &qword_1E42ED380);
    sub_1E4117BB8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF406C0);
  }

  return result;
}

unint64_t sub_1E4117BB8()
{
  result = qword_1ECF406C8;
  if (!qword_1ECF406C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF406D0, &unk_1E42ED458);
    sub_1E411779C();
    sub_1E3E94434();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF406C8);
  }

  return result;
}

uint64_t sub_1E4117C44(__n128 a1)
{
  if (*(v1 + 120))
  {
    v2 = *(v1 + 120);
  }

  else
  {
    v3 = v1;
    type metadata accessor for BarButtonItemsLayout();
    swift_allocObject();
    v2 = sub_1E3C2F9A0();
    *(v3 + 120) = v2;
  }

  return v2;
}

uint64_t sub_1E4117CDC()
{
  if (*(v0 + 128))
  {
    v1 = *(v0 + 128);
  }

  else
  {
    v2 = v0;
    type metadata accessor for LargeTitleAccessoryViewLayout();
    swift_allocObject();
    v1 = sub_1E4118C9C();
    *(v2 + 128) = v1;
  }

  return v1;
}

uint64_t sub_1E4117DB8()
{
  *(v0 + 120) = 0u;
  *(v0 + 104) = 0u;
  v1 = sub_1E3C2F9A0();

  sub_1E4117E98(0);

  return v1;
}

uint64_t sub_1E4117E3C(uint64_t a1)
{
  *(v1 + 120) = 0u;
  *(v1 + 104) = 0u;
  v2 = sub_1E3C2F9A0();

  sub_1E4117E98(v3);

  return v2;
}

double sub_1E4117E98(uint64_t a1)
{
  v29[3] = &unk_1F5D5DBE8;
  v29[4] = &off_1F5D5C9D8;
  LOBYTE(v29[0]) = 1;
  type metadata accessor for ViewModel();
  v2 = j__OUTLINED_FUNCTION_18();
  sub_1E39C3418(v29, v2 & 1, a1);
  __swift_destroy_boxed_opaque_existential_1(v29);
  OUTLINED_FUNCTION_9_2();
  (*(v3 + 1160))(0x4024000000000000, 0);
  OUTLINED_FUNCTION_9_2();
  v5 = *(v4 + 1720);
  v5();
  OUTLINED_FUNCTION_2_1();
  (*(v6 + 1696))(7);

  v8 = (v5)(v7);
  v9 = *sub_1E3E5FD88();
  v10 = *(*v8 + 680);
  v11 = v9;
  v10(v9);

  OUTLINED_FUNCTION_9_2();
  v13 = *(v12 + 1744);
  v13();
  OUTLINED_FUNCTION_2_1();
  (*(v14 + 256))(0x4064000000000000, 0);

  (v13)(v15);
  OUTLINED_FUNCTION_2_1();
  (*(v16 + 360))(0x4038000000000000, 0);

  v18 = (v5)(v17);
  sub_1E3C37CBC(v18, 23);

  v20 = (v13)(v19);
  sub_1E3C37CBC(v20, 39);

  OUTLINED_FUNCTION_9_2();
  v22 = *(v21 + 1768);
  v23 = v22();
  sub_1E3C37CBC(v23, 102);

  v25 = (v22)(v24);
  sub_1E3C37CBC(v25, 101);

  OUTLINED_FUNCTION_9_2();
  v27 = (*(v26 + 1792))();
  sub_1E3C37CBC(v27, 103);

  return result;
}

void sub_1E4118204(double a1)
{
  type metadata accessor for LayoutGrid();
  sub_1E3A258E4(a1);
  type metadata accessor for UIEdgeInsets();
  sub_1E3C2CA00();
}

uint64_t sub_1E4118274()
{
  v0 = type metadata accessor for ButtonLayout();
  v1 = j__OUTLINED_FUNCTION_18();
  v2 = sub_1E3B050E8();
  v3 = j__OUTLINED_FUNCTION_18();
  v5 = sub_1E3BBD964(8, v1 & 1, v2, v3 & 1);
  sub_1E41E1A64(&v5, sub_1E4118310, v0, &v6);

  return v6;
}

double sub_1E4118310(uint64_t *a1)
{
  v2 = sub_1E39DFFC8();
  v3 = *a1;
  if (v2)
  {
    *&v46 = 0x4034000000000000;
    BYTE8(v46) = 0;
    (*(*v3 + 1608))(2);
    OUTLINED_FUNCTION_111();
    v5 = *(v4 + 200);
    v5();
    OUTLINED_FUNCTION_9_2();
    (*(v6 + 312))();
    OUTLINED_FUNCTION_9_2();
    (*(v7 + 1888))(1);
    v46 = 0u;
    v47 = 0u;
    v48 = 1;
    OUTLINED_FUNCTION_111();
    (*(v8 + 184))(&v46);
    v9 = objc_opt_self();
    v10 = [v9 clearColor];
    OUTLINED_FUNCTION_9_2();
    (*(v11 + 752))();
    OUTLINED_FUNCTION_9_2();
    v13 = *(v12 + 2096);
    v14 = v13();
    v15 = (v5)();
    (*(*v14 + 2144))(v15, v16 & 1);

    v18 = (v13)(v17);
    (*(*v18 + 752))([v9 clearColor]);

    v20 = (v13)(v19);
    v21 = *sub_1E3E5FDEC();
    v22 = *(*v20 + 680);
    v23 = v21;
    v22(v21);
  }

  else
  {
    (*(*v3 + 208))(0x4034000000000000, 0);
    OUTLINED_FUNCTION_111();
    v26 = *(v25 + 200);
    v26();
    OUTLINED_FUNCTION_9_2();
    (*(v27 + 312))();
    v46 = 0u;
    v47 = 0u;
    v48 = 1;
    OUTLINED_FUNCTION_111();
    (*(v28 + 184))(&v46);
    v29 = [objc_opt_self() clearColor];
    OUTLINED_FUNCTION_9_2();
    (*(v30 + 752))();
    OUTLINED_FUNCTION_9_2();
    v32 = *(v31 + 2096);
    v33 = v32();
    v34 = (v26)();
    (*(*v33 + 2144))(v34, v35 & 1);

    v37 = (v32)(v36);
    v38 = *sub_1E3E5FDEC();
    v39 = *(*v37 + 680);
    v40 = v38;
    v39(v38);

    v42 = (v32)(v41);
    v43 = *sub_1E3E605D4();
    v44 = *(*v42 + 752);
    v45 = v43;
    v44(v43);
  }

  return result;
}

uint64_t sub_1E4118928(__int16 a1, void *a2)
{
  if (a1 == 39)
  {
    type metadata accessor for ImageLayout();
    v13 = sub_1E3BD61D8();
    sub_1E3755B54();
    v18 = objc_opt_self();

    v19 = [v18 blackColor];
    v20 = [v18 whiteColor];
    v21 = sub_1E3E5F2F8(v19, v20);

    OUTLINED_FUNCTION_9_2();
    (*(v22 + 680))(v21);

    return v13;
  }

  if (a1 != 40)
  {
    switch(a1)
    {
      case '>':
        type metadata accessor for ButtonLayout();
        v11 = j__OUTLINED_FUNCTION_18();
        v4 = sub_1E3B050E8();
        v12 = j__OUTLINED_FUNCTION_18();
        v6 = v11 & 1;
        v7 = v12 & 1;
        v8 = 6;
        return sub_1E3BBD964(v8, v6, v4, v7);
      case 'A':
        type metadata accessor for ButtonLayout();
        return sub_1E3BC565C();
      case '?':
LABEL_6:
        type metadata accessor for ButtonLayout();
        v3 = j__OUTLINED_FUNCTION_18();
        v4 = sub_1E3B050E8();
        v5 = j__OUTLINED_FUNCTION_18();
        v6 = v3 & 1;
        v7 = v5 & 1;
        v8 = 8;
        return sub_1E3BBD964(v8, v6, v4, v7);
    }

    if (a2)
    {
      v15 = a2[3];
      if (v15)
      {
        v16 = a2[2] == 0x74747542656E6F44 && v15 == 0xEC00000064496E6FLL;
        if (v16 || (sub_1E42079A4() & 1) != 0)
        {
          goto LABEL_6;
        }
      }

      if (a1 != 59)
      {
        goto LABEL_6;
      }

      v23 = 43;
      (*(*a2 + 776))(&v24, &v23, &unk_1F5D5DAC8, &off_1F5D5C998);
      if (*(&v25 + 1))
      {
        if (swift_dynamicCast() && (v23 & 1) != 0)
        {
          v17 = type metadata accessor for ButtonLayout();
          return sub_1E3BBFB74(v17);
        }

        goto LABEL_6;
      }
    }

    else
    {
      if (a1 != 59)
      {
        goto LABEL_6;
      }

      v24 = 0u;
      v25 = 0u;
    }

    sub_1E329505C(&v24);
    goto LABEL_6;
  }

  return sub_1E3C35CA4(40);
}

uint64_t sub_1E4118C10()
{
  if (*(v0 + 104))
  {
    v1 = *(v0 + 104);
  }

  else
  {
    v2 = v0;
    type metadata accessor for ButtonLayout();
    v3 = j__OUTLINED_FUNCTION_18();
    v4 = sub_1E3B050E8();
    v5 = j__OUTLINED_FUNCTION_18();
    v1 = sub_1E3BBD964(6, v3 & 1, v4, v5 & 1);
    *(v2 + 104) = v1;
  }

  return v1;
}

uint64_t sub_1E4118C9C()
{
  *(v0 + 104) = 0;
  v1 = sub_1E3C2F9A0();
  v2 = *(*v1 + 1696);

  v4 = v2(v3);
  sub_1E3C37CBC(v4, 62);

  return v1;
}

void sub_1E4118D40()
{
  v1 = v0;
  v2 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x60))();
  if (v2)
  {
    v7 = v2;
    v3 = [v2 parentViewController];
    if (!v3 || (v4 = v3, sub_1E3280A90(0, &qword_1EE23B250, 0x1E69DD258), v5 = v0, v6 = sub_1E4206F64(), v4, v5, (v6 & 1) == 0))
    {
      [v1 addChildViewController_];
      if ([v1 isViewLoaded])
      {
        sub_1E411948C();
      }

      [v7 didMoveToParentViewController_];
    }
  }
}

void *sub_1E4118E74()
{
  v1 = OBJC_IVAR____TtC8VideosUI25RootHostingViewController_contentNavigationController;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1E4118EBC(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC8VideosUI25RootHostingViewController_contentNavigationController;
  swift_beginAccess();
  v5 = *&v2[v4];
  *&v2[v4] = a1;
  v6 = OBJC_IVAR____TtC8VideosUI25RootHostingViewController_contentNavigationController;
  v7 = a1;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v8 = *&v2[v6];
  if (v8)
  {
    if (!v5)
    {
LABEL_16:
      sub_1E4118D40();
      goto LABEL_17;
    }

    sub_1E3280A90(0, &unk_1EE23B090, 0x1E69DCCD8);
    v9 = v8;
    v10 = v5;
    v11 = sub_1E4206F64();

    if (v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
    if (!v5)
    {
LABEL_17:

      return;
    }

    v10 = v5;
  }

  v12 = v10;
  v13 = [v12 parentViewController];
  if (!v13 || (v14 = v13, sub_1E3280A90(0, &qword_1EE23B250, 0x1E69DD258), v15 = v2, v16 = sub_1E4206F64(), v14, v15, (v16 & 1) == 0))
  {

    goto LABEL_15;
  }

  [v12 willMoveToParentViewController_];
  v17 = v12;
  if (![v15 isViewLoaded])
  {
LABEL_13:

    [v12 removeFromParentViewController];
LABEL_15:

    goto LABEL_16;
  }

  v18 = [v12 view];
  if (v18)
  {
    v19 = v18;
    [v18 removeFromSuperview];

    v17 = [v12 view];
    if (v17)
    {
      [v17 setTranslatesAutoresizingMaskIntoConstraints_];
      goto LABEL_13;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

id sub_1E41190D0()
{
  v1 = OBJC_IVAR____TtC8VideosUI25RootHostingViewController____lazy_storage___emptyNavigationController;
  v2 = *(v0 + OBJC_IVAR____TtC8VideosUI25RootHostingViewController____lazy_storage___emptyNavigationController);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8VideosUI25RootHostingViewController____lazy_storage___emptyNavigationController);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69DCCD8]) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1E41191F0(void *a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI25RootHostingViewController_contentNavigationController;
  *(v1 + OBJC_IVAR____TtC8VideosUI25RootHostingViewController_contentNavigationController) = 0;
  *(v1 + OBJC_IVAR____TtC8VideosUI25RootHostingViewController____lazy_storage___emptyNavigationController) = 0;
  swift_beginAccess();
  *(v1 + v3) = a1;
  type metadata accessor for RootHostingViewController();
  v4 = a1;
  OUTLINED_FUNCTION_25();
  v7 = objc_msgSendSuper2(v5, v6);
  sub_1E4118D40();

  return v7;
}

char *sub_1E41192B8()
{
  *(v0 + OBJC_IVAR____TtC8VideosUI25RootHostingViewController_contentNavigationController) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI25RootHostingViewController____lazy_storage___emptyNavigationController) = 0;
  type metadata accessor for RootHostingViewController();
  OUTLINED_FUNCTION_25();
  v3 = objc_msgSendSuper2(v1, v2);
  v4 = sub_1E41190D0();
  v5 = OBJC_IVAR____TtC8VideosUI25RootHostingViewController_contentNavigationController;
  swift_beginAccess();
  v6 = *&v3[v5];
  *&v3[v5] = v4;

  sub_1E4118D40();
  return v3;
}

void sub_1E4119380()
{
  *(v0 + OBJC_IVAR____TtC8VideosUI25RootHostingViewController_contentNavigationController) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI25RootHostingViewController____lazy_storage___emptyNavigationController) = 0;
  sub_1E42076B4();
  __break(1u);
}

void sub_1E411940C()
{
  v3.receiver = v0;
  v3.super_class = type metadata accessor for RootHostingViewController();
  objc_msgSendSuper2(&v3, sel_viewDidLoad);
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    [v1 setBackgroundColor_];

    sub_1E411948C();
  }

  else
  {
    __break(1u);
  }
}

void sub_1E411948C()
{
  v1 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x60))();
  if (!v1)
  {
    return;
  }

  v2 = v1;
  v3 = OUTLINED_FUNCTION_2_269();
  if (!v3)
  {
    __break(1u);
    goto LABEL_18;
  }

  v4 = v3;
  v5 = v2;
  v6 = [v5 view];
  if (!v6)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v7 = v6;
  [v4 addSubview_];

  v8 = OUTLINED_FUNCTION_1_309();
  if (!v8)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v9 = v8;
  [v8 setTranslatesAutoresizingMaskIntoConstraints_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750, &unk_1E429DD30);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1E42A1E20;
  v11 = OUTLINED_FUNCTION_1_309();
  if (!v11)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v12 = v11;
  v13 = [v11 trailingAnchor];

  v14 = OUTLINED_FUNCTION_2_269();
  if (!v14)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v15 = v14;
  v16 = [v14 trailingAnchor];

  v17 = OUTLINED_FUNCTION_0_350();
  *(v10 + 32) = v17;
  v18 = OUTLINED_FUNCTION_1_309();
  if (!v18)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v19 = v18;
  v20 = [v18 topAnchor];

  v21 = OUTLINED_FUNCTION_2_269();
  if (!v21)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v22 = v21;
  v23 = [v21 topAnchor];

  v24 = OUTLINED_FUNCTION_0_350();
  *(v10 + 40) = v24;
  v25 = OUTLINED_FUNCTION_1_309();
  if (!v25)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v26 = v25;
  v27 = [v25 bottomAnchor];

  v28 = OUTLINED_FUNCTION_2_269();
  if (!v28)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v29 = v28;
  v30 = [v28 bottomAnchor];

  v31 = OUTLINED_FUNCTION_0_350();
  *(v10 + 48) = v31;
  v32 = OUTLINED_FUNCTION_1_309();

  if (!v32)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v33 = [v32 leadingAnchor];

  v34 = OUTLINED_FUNCTION_2_269();
  if (!v34)
  {
LABEL_27:
    __break(1u);
    return;
  }

  v35 = v34;
  v36 = objc_opt_self();
  v37 = [v35 leadingAnchor];

  v38 = [v33 constraintEqualToAnchor_];
  *(v10 + 56) = v38;
  sub_1E3280A90(0, &qword_1EE23B1A0, 0x1E696ACD8);
  v39 = sub_1E42062A4();

  [v36 activateConstraints_];
}

void sub_1E41198B4(void *a1)
{
  v2 = a1;

  sub_1E4118EBC(a1);
}

void sub_1E41198EC()
{
  v0 = sub_1E41190D0();

  sub_1E4118EBC(v0);
}

id sub_1E411996C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RootHostingViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1E41199EC(uint64_t a1)
{
  switch(a1)
  {
    case 4:
      OUTLINED_FUNCTION_23();
      break;
    default:
      return;
  }
}

void sub_1E4119B04(uint64_t a1)
{
  switch(a1)
  {
    case -4831:
    case -4822:
    case -4821:
    case -4816:
    case -4815:
    case -4814:
    case -4813:
    case -4811:
    case -4810:
    case -4808:
    case -4806:
    case -4805:
      OUTLINED_FUNCTION_1_310();
      break;
    case -4825:
    case -4824:
    case -4823:
    case -4820:
    case -4812:
      OUTLINED_FUNCTION_23();
      break;
    default:
      return;
  }
}

uint64_t sub_1E4119DAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = TVAppFeature.isEnabled.getter(17, a2, a3);
  if (result)
  {
    OUTLINED_FUNCTION_5_0(v3 + OBJC_IVAR____TtC8VideosUI25EpicShowcaseViewContainer_layout, v9);
    OUTLINED_FUNCTION_3_279();
    v6 = *(v5 + 552);

    v6(&v10, v7);

    MEMORY[0x1EEE9AC00](v8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B3C0, &qword_1E42B9710);
    return sub_1E4148DE0(sub_1E411ACC8);
  }

  return result;
}

double sub_1E4119EBC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI25EpicShowcaseViewContainer_layout;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = OBJC_IVAR____TtC8VideosUI25EpicShowcaseViewContainer_layout;

  v6 = OUTLINED_FUNCTION_5_0(v1 + v5, v10);
  if (*(v1 + v5) != v4)
  {
    sub_1E4119DAC(v6, v7, v8);
  }

  return result;
}

void sub_1E4119F50(void *a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI25EpicShowcaseViewContainer_headerView;
  OUTLINED_FUNCTION_5_0(&v1[OBJC_IVAR____TtC8VideosUI25EpicShowcaseViewContainer_headerView], v10);
  v4 = *&v1[v3];
  if (!a1)
  {
    if (!v4)
    {
      return;
    }

    goto LABEL_6;
  }

  if (v4)
  {
    v5 = v4 == a1;
  }

  else
  {
    v5 = 0;
  }

  if (!v5)
  {
LABEL_6:
    [a1 removeFromSuperview];
    v6 = *&v1[v3];
    v7 = swift_allocObject();
    *(v7 + 16) = v1;
    MEMORY[0x1EEE9AC00](v7);
    v8 = v6;
    v9 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35970, &unk_1E42C5BA0);
    sub_1E4148DE0(sub_1E3EE0DA4);
  }
}

void sub_1E411A078(void *a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI25EpicShowcaseViewContainer_headerView;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;
  sub_1E4119F50(v4);
}

char *sub_1E411A0E4()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR____TtC8VideosUI25EpicShowcaseViewContainer_layout;
  type metadata accessor for EpicShowcaseViewLayout();
  *(v0 + v2) = sub_1E37E7E7C();
  *(v0 + OBJC_IVAR____TtC8VideosUI25EpicShowcaseViewContainer_headerView) = 0;
  OUTLINED_FUNCTION_2_270(&OBJC_IVAR____TtC8VideosUI25EpicShowcaseViewContainer_pageControl);
  type metadata accessor for VUICarouselView();
  OUTLINED_FUNCTION_5_8();
  *(v0 + OBJC_IVAR____TtC8VideosUI25EpicShowcaseViewContainer_carouselView) = sub_1E3890DAC();
  v3 = OUTLINED_FUNCTION_5_8();
  v6 = objc_msgSendSuper2(v4, v5, v3, v0, ObjectType);
  v7 = OBJC_IVAR____TtC8VideosUI25EpicShowcaseViewContainer_carouselView;
  [v6 addSubview_];
  if ((sub_1E39DFFC8() & 1) != 0 && [objc_opt_self() isMac])
  {
    [v6 setClipsToBounds_];
    [*&v6[v7] setClipsToBounds_];
  }

  return v6;
}

void sub_1E411A214()
{
  v1 = OBJC_IVAR____TtC8VideosUI25EpicShowcaseViewContainer_layout;
  type metadata accessor for EpicShowcaseViewLayout();
  *(v0 + v1) = sub_1E37E7E7C();
  *(v0 + OBJC_IVAR____TtC8VideosUI25EpicShowcaseViewContainer_headerView) = 0;
  OUTLINED_FUNCTION_2_270(&OBJC_IVAR____TtC8VideosUI25EpicShowcaseViewContainer_pageControl);
  sub_1E42076B4();
  __break(1u);
}

void sub_1E411A2D4(char a1, double a2)
{
  v3 = v2;
  swift_getObjectType();
  v6 = OUTLINED_FUNCTION_170();
  objc_msgSendSuper2(v7, v8, v6);
  if (a1)
  {
    OUTLINED_FUNCTION_5_0(&v3[OBJC_IVAR____TtC8VideosUI25EpicShowcaseViewContainer_layout], v43);

    v9 = sub_1E37E8894(a2);

    if (v9 != 0.0)
    {
      sub_1E411AB64();
      CGRectGetHeight(v45);
      VUIRoundValue();
    }
  }

  else
  {
    v10 = *&v3[OBJC_IVAR____TtC8VideosUI25EpicShowcaseViewContainer_pageControl];
    if (v10)
    {
      v11 = v10;
      v12 = OUTLINED_FUNCTION_170();
      [v13 v14];
      v16 = v15;
      v18 = v17;
      OUTLINED_FUNCTION_5_0(&v3[OBJC_IVAR____TtC8VideosUI25EpicShowcaseViewContainer_layout], v40);
      OUTLINED_FUNCTION_3_279();
      v20 = *(v19 + 1696);

      v20(v43, v21);

      v38[0] = v43[0];
      v38[1] = v43[1];
      v39 = v44;
      v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B3C0, &qword_1E42B9710);
      sub_1E4148C68(sub_1E3C2FC84, v22, v41);
      v23 = v42;
      OUTLINED_FUNCTION_9_7();
      [v11 setFrame_];
      [v11 center];
      [v11 setCenter_];
    }

    v25 = *&v3[OBJC_IVAR____TtC8VideosUI25EpicShowcaseViewContainer_carouselView];
    sub_1E411A89C();
    [v25 setFrame_];
    OUTLINED_FUNCTION_9_7();
    sub_1E411AB64();
    v27 = v26;
    v29 = v28;
    v30 = OBJC_IVAR____TtC8VideosUI25EpicShowcaseViewContainer_headerView;
    OUTLINED_FUNCTION_5_0(&v3[OBJC_IVAR____TtC8VideosUI25EpicShowcaseViewContainer_headerView], v38);
    v31 = *&v3[v30];
    if (v31)
    {
      v32 = v31;
      [v32 frame];
      v46.origin.x = OUTLINED_FUNCTION_170();
      v46.size.width = v27;
      v46.size.height = v29;
      if (!CGRectEqualToRect(v46, v49))
      {
        OUTLINED_FUNCTION_9_7();
        [v3 vuiIsRTL];
        OUTLINED_FUNCTION_170();
        VUIRectWithFlippedOriginRelativeToBoundingRectWithCondition();
        [v32 setFrame_];
      }
    }

    v33 = OBJC_IVAR____TtC8VideosUI25EpicShowcaseViewContainer_lastViewWidth;
    v34 = *&v3[OBJC_IVAR____TtC8VideosUI25EpicShowcaseViewContainer_lastViewWidth];
    OUTLINED_FUNCTION_9_7();
    if (v34 != CGRectGetWidth(v47))
    {
      sub_1E4119DAC(v35, v36, v37);
      OUTLINED_FUNCTION_9_7();
      *&v3[v33] = CGRectGetWidth(v48);
    }
  }

  OUTLINED_FUNCTION_170();
}

id sub_1E411A68C(uint64_t a1, char a2)
{
  *&v2[OBJC_IVAR____TtC8VideosUI25EpicShowcaseViewContainer_pageCount] = a1;
  v2[OBJC_IVAR____TtC8VideosUI25EpicShowcaseViewContainer_shouldShowPageControl] = a2;
  if (v2[OBJC_IVAR____TtC8VideosUI25EpicShowcaseViewContainer_shouldShowPageControl])
  {
    v4 = *&v2[OBJC_IVAR____TtC8VideosUI25EpicShowcaseViewContainer_pageCount] > 1;
    v5 = &v2[OBJC_IVAR____TtC8VideosUI25EpicShowcaseViewContainer_effectiveShowingPageControl];
    if (v4 == v2[OBJC_IVAR____TtC8VideosUI25EpicShowcaseViewContainer_effectiveShowingPageControl])
    {
      goto LABEL_15;
    }
  }

  else
  {
    v5 = &v2[OBJC_IVAR____TtC8VideosUI25EpicShowcaseViewContainer_effectiveShowingPageControl];
    if ((v2[OBJC_IVAR____TtC8VideosUI25EpicShowcaseViewContainer_effectiveShowingPageControl] & 1) == 0)
    {
      goto LABEL_15;
    }

    LOBYTE(v4) = 0;
  }

  *v5 = v4;
  v6 = OBJC_IVAR____TtC8VideosUI25EpicShowcaseViewContainer_pageControl;
  v7 = *&v2[OBJC_IVAR____TtC8VideosUI25EpicShowcaseViewContainer_pageControl];
  if (v2[OBJC_IVAR____TtC8VideosUI25EpicShowcaseViewContainer_effectiveShowingPageControl] == 1)
  {
    if (v7 || (v8 = [objc_allocWithZone(MEMORY[0x1E69DCD10]) init], objc_msgSend(v8, sel_setCurrentPage_, 0), objc_msgSend(v8, sel_addTarget_action_forControlEvents_, v2, sel_pageChangeEventWithSender_, 4096), v9 = *&v2[v6], *&v2[v6] = v8, v9, (v7 = *&v2[v6]) != 0))
    {
      v10 = [v7 superview];
      if (!v10 || (v11 = v10, v10, v11 != v2))
      {
        if (*&v2[v6])
        {
          [v2 addSubview_];
        }
      }
    }
  }

  else if (v7)
  {
    [v7 removeFromSuperview];
  }

LABEL_15:
  result = *&v2[OBJC_IVAR____TtC8VideosUI25EpicShowcaseViewContainer_pageControl];
  if (result)
  {

    return [result setNumberOfPages_];
  }

  return result;
}

id sub_1E411A830(uint64_t a1)
{
  result = *(v1 + OBJC_IVAR____TtC8VideosUI25EpicShowcaseViewContainer_pageControl);
  if (result)
  {
    return [result setCurrentPage_];
  }

  return result;
}

id sub_1E411A854(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC8VideosUI25EpicShowcaseViewContainer_carouselView);
  sub_1E411A89C();

  return [v2 setFrame_];
}

void sub_1E411A89C()
{
  v1 = v0;
  [v0 bounds];
  sub_1E411AB64();
  v3 = v2;
  v5 = v4;
  v6 = OBJC_IVAR____TtC8VideosUI25EpicShowcaseViewContainer_headerView;
  OUTLINED_FUNCTION_5_0(&v1[OBJC_IVAR____TtC8VideosUI25EpicShowcaseViewContainer_headerView], v23);
  if (*&v1[v6])
  {
    v24.origin.x = OUTLINED_FUNCTION_17_4();
    v24.size.width = v3;
    v24.size.height = v5;
    CGRectGetMaxY(v24);
  }

  VUIRoundValue();
  if (TVAppFeature.isEnabled.getter(17, v7, v8))
  {
    type metadata accessor for LayoutGrid();
    OUTLINED_FUNCTION_9_7();
    Width = CGRectGetWidth(v25);
    v10 = sub_1E3A2579C(Width);
    if (sub_1E3A24FDC(v10))
    {
      v11 = sub_1E3A25914();
      v13 = v12;
      v15 = v14;
      v17 = v16;
    }

    else
    {
      v11 = *MEMORY[0x1E69DDCE0];
      v13 = *(MEMORY[0x1E69DDCE0] + 8);
      v15 = *(MEMORY[0x1E69DDCE0] + 16);
      v17 = *(MEMORY[0x1E69DDCE0] + 24);
    }

    OUTLINED_FUNCTION_5_0(&v1[OBJC_IVAR____TtC8VideosUI25EpicShowcaseViewContainer_layout], v22);

    OUTLINED_FUNCTION_9_7();
    v21 = CGRectGetWidth(v27);
    sub_1E37E8894(v21);

    OUTLINED_FUNCTION_9_7();
    CGRectGetWidth(v28);
    sub_1E3CEE8A0(v11, v13, v15, v17, 0.0);
  }

  else
  {
    OUTLINED_FUNCTION_9_7();
    CGRectGetWidth(v26);
    OUTLINED_FUNCTION_5_0(&v1[OBJC_IVAR____TtC8VideosUI25EpicShowcaseViewContainer_layout], v22);
    OUTLINED_FUNCTION_3_279();
    v19 = *(v18 + 304);

    v19(v20);
  }
}

void sub_1E411AB64()
{
  OUTLINED_FUNCTION_0_8();
  v2 = objc_opt_self();
  v11.origin.x = OUTLINED_FUNCTION_2_0();
  [v2 vui:CGRectGetWidth(v11) paddingForWindowWidth:?];
  v12.origin.x = sub_1E3CEE8A0(v3, v4, v5, v6, v1);
  Width = CGRectGetWidth(v12);
  v8 = OBJC_IVAR____TtC8VideosUI25EpicShowcaseViewContainer_headerView;
  OUTLINED_FUNCTION_0_12(v9);
  v10 = *(v0 + v8);
  if (v10)
  {
    [v10 vui:Width sizeThatFits:0.0];
  }

  OUTLINED_FUNCTION_17_4();
}

void sub_1E411ACC8(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  if ([*(*(v1 + 16) + OBJC_IVAR____TtC8VideosUI25EpicShowcaseViewContainer_carouselView) vuiLayer])
  {
    v4 = OUTLINED_FUNCTION_17_4();
    v7 = v5;
    [v5 setCornerRadius_];
  }
}

uint64_t sub_1E411AD70@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = OBJC_IVAR____TtC8VideosUI26EpicShowcaseViewController_viewImpressioner;
  OUTLINED_FUNCTION_15_0(v2 + OBJC_IVAR____TtC8VideosUI26EpicShowcaseViewController_viewImpressioner, a1);
  return sub_1E379539C(v2 + v4, a2, &qword_1ECF2C970, &qword_1E429D870);
}

uint64_t sub_1E411ADCC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI26EpicShowcaseViewController_viewImpressioner;
  OUTLINED_FUNCTION_11_3(v1 + OBJC_IVAR____TtC8VideosUI26EpicShowcaseViewController_viewImpressioner, v5);
  sub_1E37C5630(a1, v1 + v3);
  return swift_endAccess();
}

id sub_1E411AE24()
{
  v1 = OBJC_IVAR____TtC8VideosUI26EpicShowcaseViewController____lazy_storage___carouselViewContainer;
  v2 = *(v0 + OBJC_IVAR____TtC8VideosUI26EpicShowcaseViewController____lazy_storage___carouselViewContainer);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8VideosUI26EpicShowcaseViewController____lazy_storage___carouselViewContainer);
  }

  else
  {
    v4 = v0;
    type metadata accessor for EpicShowcaseViewContainer();
    v5 = _s8VideosUI26MetricsRecorderFactoryObjCCACycfC_0();
    v6 = *(v0 + v1);
    *(v4 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

uint64_t sub_1E411AE94(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC8VideosUI26EpicShowcaseViewController_headerViewModel;
  OUTLINED_FUNCTION_5_0(v1 + OBJC_IVAR____TtC8VideosUI26EpicShowcaseViewController_headerViewModel, &v32);
  OUTLINED_FUNCTION_38_2();
  sub_1E379539C(v5, v6, v7, v8);
  OUTLINED_FUNCTION_11_3(v1 + v4, &v38);
  sub_1E37C5BDC(a1, v1 + v4);
  swift_endAccess();
  v9 = OBJC_IVAR____TtC8VideosUI26EpicShowcaseViewController_headerViewModel;
  OUTLINED_FUNCTION_5_0(v1 + OBJC_IVAR____TtC8VideosUI26EpicShowcaseViewController_headerViewModel, v44);
  OUTLINED_FUNCTION_38_2();
  sub_1E379539C(v10, v11, v12, v13);
  OUTLINED_FUNCTION_38_2();
  sub_1E379539C(v14, v15, v16, v17);
  if (*(&v39 + 1))
  {
    sub_1E379539C(&v38, v36, &qword_1ECF40720, &qword_1E429D878);
    if (*(&v42 + 1))
    {
      v34[0] = v41;
      v34[1] = v42;
      v35 = v43;
      v18 = MEMORY[0x1E6911D60](v36, v34);
      sub_1E375D84C(v34);
      sub_1E375D84C(v36);
      sub_1E325F748(&v38, &qword_1ECF40720, &qword_1E429D878);
      if (v18)
      {
        goto LABEL_16;
      }

      goto LABEL_9;
    }

    sub_1E375D84C(v36);
  }

  else if (!*(&v42 + 1))
  {
    sub_1E325F748(&v38, &qword_1ECF40720, &qword_1E429D878);
    goto LABEL_16;
  }

  sub_1E325F748(&v38, &qword_1ECF2A678, &qword_1E429D960);
LABEL_9:
  v19 = sub_1E411AE24();
  v20 = OBJC_IVAR____TtC8VideosUI25EpicShowcaseViewContainer_headerView;
  OUTLINED_FUNCTION_5_0(&v19[OBJC_IVAR____TtC8VideosUI25EpicShowcaseViewContainer_headerView], v34);
  v21 = *&v19[v20];
  v22 = v21;

  sub_1E379539C(v2 + v9, &v38, &qword_1ECF40720, &qword_1E429D878);
  if (*(&v39 + 1))
  {
    v36[0] = v38;
    v36[1] = v39;
    v37 = v40;
    v23 = *(v2 + OBJC_IVAR____TtC8VideosUI26EpicShowcaseViewController____lazy_storage___carouselViewContainer);
    sub_1E374E74C(v36, &v38);
    type metadata accessor for ViewModel();
    if (swift_dynamicCast())
    {
      v24 = v45;
      v25 = *_s8VideosUIAAC19initializeUIFactoryyyFZ_0();
      v40 = 0;
      v38 = 0u;
      v39 = 0u;
      v26 = v25;
      v27 = sub_1E393D9C4(v24, v21, &v38, 0);

      sub_1E325F748(&v38, &qword_1ECF296C0, &unk_1E429BBE0);
    }

    else
    {
      v27 = 0;
    }

    sub_1E411A078(v27);

    sub_1E375D84C(v36);
  }

  else
  {
    sub_1E325F748(&v38, &qword_1ECF40720, &qword_1E429D878);
    v28 = *(v2 + OBJC_IVAR____TtC8VideosUI26EpicShowcaseViewController____lazy_storage___carouselViewContainer);
    sub_1E411A078(0);
  }

  [*(v2 + OBJC_IVAR____TtC8VideosUI26EpicShowcaseViewController____lazy_storage___carouselViewContainer) vui_setNeedsLayout];

LABEL_16:
  v29 = OUTLINED_FUNCTION_32_0();
  sub_1E325F748(v29, v30, &qword_1E429D878);
  return sub_1E325F748(v33, &qword_1ECF40720, &qword_1E429D878);
}

uint64_t sub_1E411B1D8()
{
  v0 = sub_1E411AE24();
  v1 = OBJC_IVAR____TtC8VideosUI25EpicShowcaseViewContainer_layout;
  OUTLINED_FUNCTION_15_0(&v0[OBJC_IVAR____TtC8VideosUI25EpicShowcaseViewContainer_layout], v2);
  v3 = *&v0[v1];

  return v3;
}

void sub_1E411B22C(uint64_t a1)
{
  v2 = v1;

  v4 = sub_1E411AE24();
  v5 = OBJC_IVAR____TtC8VideosUI25EpicShowcaseViewContainer_layout;
  OUTLINED_FUNCTION_15_0(&v4[OBJC_IVAR____TtC8VideosUI25EpicShowcaseViewContainer_layout], v6);
  v7 = *&v4[v5];

  if (v7 == a1)
  {
    goto LABEL_4;
  }

  v8 = *&v2[OBJC_IVAR____TtC8VideosUI26EpicShowcaseViewController____lazy_storage___carouselViewContainer];

  v9 = v8;
  v10 = OUTLINED_FUNCTION_50();
  sub_1E4119EBC(v10);

  v11 = [v2 view];
  if (v11)
  {
    v12 = v11;
    [v11 bounds];
    OUTLINED_FUNCTION_22_13();

    v13 = OUTLINED_FUNCTION_17_4();
    sub_1E411B314(1, v13, v14);
LABEL_4:

    return;
  }

  __break(1u);
}

void sub_1E411B314(char a1, double a2, double a3)
{
  v4 = v3;
  v8 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_4_6();
  v14 = v12 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = v99 - v16;
  if (a2 != 0.0 || a3 != 0.0)
  {
    v18 = OBJC_IVAR____TtC8VideosUI26EpicShowcaseViewController_lastViewWidth;
    v19 = *&v3[OBJC_IVAR____TtC8VideosUI26EpicShowcaseViewController_lastViewWidth];
    if (v19 == a2 && (a1 & 1) == 0)
    {
LABEL_28:
      if (v19 != a2)
      {
        *&v4[v18] = a2;
        sub_1E411B1D8();
        v63 = OUTLINED_FUNCTION_31_97();
        v64 = sub_1E37E8894(v63);

        sub_1E411B1D8();
        v65 = OUTLINED_FUNCTION_31_97();
        sub_1E37E8628(v65);
        v67 = v66;

        sub_1E411B1D8();
        v68 = OUTLINED_FUNCTION_31_97();
        sub_1E37E8858(v68);
        v70 = v69;

        v71 = sub_1E324FBDC();
        (*(v10 + 16))(v14, v71, v8);
        v72 = v4;
        v73 = sub_1E41FFC94();
        v74 = sub_1E42067E4();

        if (os_log_type_enabled(v73, v74))
        {
          v75 = swift_slowAlloc();
          v76 = OUTLINED_FUNCTION_100();
          v109[0] = v76;
          *v75 = 136315906;
          v77 = sub_1E411BEC0();
          v79 = sub_1E3270FC8(v77, v78, v109);

          *(v75 + 4) = v79;
          *(v75 + 12) = 2048;
          *(v75 + 14) = v67;
          *(v75 + 22) = 2048;
          *(v75 + 24) = v64;
          *(v75 + 32) = 2048;
          *(v75 + 34) = v70;
          _os_log_impl(&dword_1E323F000, v73, v74, "%s configure itemWidth =%f, height=%f, spacing =%f", v75, 0x2Au);
          __swift_destroy_boxed_opaque_existential_1(v76);
          OUTLINED_FUNCTION_6_0();
          OUTLINED_FUNCTION_6_0();
        }

        (*(v10 + 8))(v14, v8);
        v80 = sub_1E411AE24();
        v81 = *&v80[OBJC_IVAR____TtC8VideosUI25EpicShowcaseViewContainer_carouselView];

        OUTLINED_FUNCTION_5_0(v81 + OBJC_IVAR____TtC8VideosUI15VUICarouselView_configuration, v108);
        sub_1E411B1D8();
        v82 = OUTLINED_FUNCTION_31_97();
        sub_1E37E89C8(v82);
        v84 = v83;
        v86 = v85;
        v88 = v87;
        v90 = v89;

        v91 = OBJC_IVAR____TtC8VideosUI26EpicShowcaseViewController____lazy_storage___carouselViewContainer;
        v92 = *(*&v72[OBJC_IVAR____TtC8VideosUI26EpicShowcaseViewController____lazy_storage___carouselViewContainer] + OBJC_IVAR____TtC8VideosUI25EpicShowcaseViewContainer_carouselView);
        v109[0] = v67;
        *&v109[1] = v64;
        v109[2] = v70;
        v109[3] = v84;
        v109[4] = v86;
        v109[5] = v88;
        v109[6] = v90;
        v110 = 0;
        v93 = v92;
        sub_1E3AFC1C4();

        v94 = *(*&v72[v91] + OBJC_IVAR____TtC8VideosUI25EpicShowcaseViewContainer_carouselView);
        v95 = *sub_1E411B1D8();
        v96 = (*(v95 + 1560))();

        v97 = sub_1E3A24FDC(v96);
        v98 = 0;
        if (v97)
        {
          v98 = sub_1E3C46280();
        }

        sub_1E3AFBF18(v98 & 1);

        sub_1E41207B0();
      }
    }

    else
    {
      v100 = OBJC_IVAR____TtC8VideosUI26EpicShowcaseViewController_lastViewWidth;
      v102 = v14;
      type metadata accessor for LayoutGrid();
      v20 = sub_1E3A2579C(a2);
      v21 = sub_1E324FBDC();
      (*(v10 + 16))(v17, v21, v8);
      v22 = v10;
      v23 = v3;
      v24 = sub_1E41FFC94();
      v25 = sub_1E4206814();

      v26 = os_log_type_enabled(v24, v25);
      v104 = v8;
      v103 = v22;
      v101 = v3;
      if (v26)
      {
        v27 = swift_slowAlloc();
        v109[0] = swift_slowAlloc();
        *v27 = 136315394;
        v28 = sub_1E411BEC0();
        v30 = sub_1E3270FC8(v28, v29, v109);

        *(v27 + 4) = v30;
        *(v27 + 12) = 2080;
        v31 = sub_1E3A253B8(v20);
        v33 = sub_1E3270FC8(v31, v32, v109);

        *(v27 + 14) = v33;
        _os_log_impl(&dword_1E323F000, v24, v25, "%s sizeOrTraitsDidChange to %s", v27, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_6_0();
        OUTLINED_FUNCTION_6_0();

        (*(v22 + 8))(v17, v104);
      }

      else
      {

        (*(v22 + 8))(v17, v8);
      }

      v34 = [v23 vuiTraitCollection];
      sub_1E3C2AE10();
      v36 = v35;
      v38 = v37;
      v40 = v39;
      v41 = *(*sub_1E411B1D8() + 1640);
      v106 = v36;
      v107 = v38;
      v105 = v40;
      v41(v36, v38, v40);

      v42 = sub_1E411BD18();
      v43 = v42;
      if ((v42 & 0xC000000000000001) != 0)
      {
        swift_unknownObjectRetain();
        sub_1E4207344();
        type metadata accessor for ViewModel();
        OUTLINED_FUNCTION_1_17();
        sub_1E32749E0(v44, v45);
        OUTLINED_FUNCTION_32_0();
        sub_1E4206664();
        v46 = v108[3];
        v47 = v108[4];
        v48 = v108[5];
        v49 = v108[6];
        v50 = v108[7];
      }

      else
      {
        v51 = -1 << *(v42 + 32);
        v47 = v42 + 56;
        v48 = ~v51;
        v52 = -v51;
        if (v52 < 64)
        {
          v53 = ~(-1 << v52);
        }

        else
        {
          v53 = -1;
        }

        v50 = v53 & *(v42 + 56);

        v49 = 0;
        v46 = v43;
      }

      v99[1] = v48;
      v54 = (v48 + 64) >> 6;
      if (v46 < 0)
      {
        goto LABEL_21;
      }

      while (1)
      {
        v55 = v49;
        v56 = v50;
        v57 = v49;
        if (!v50)
        {
          break;
        }

LABEL_19:
        v58 = (v56 - 1) & v56;
        v59 = *(*(v46 + 48) + ((v57 << 9) | (8 * __clz(__rbit64(v56)))));

        if (!v59)
        {
LABEL_27:
          sub_1E34AF4DC(v46);

          v4 = v101;
          v18 = v100;
          v19 = *&v101[v100];
          v8 = v104;
          v10 = v103;
          v14 = v102;
          goto LABEL_28;
        }

        while (1)
        {
          if ((*(*v59 + 392))(v60))
          {
            OUTLINED_FUNCTION_26_0();
            (*(v62 + 1640))(v106, v107, v105);
          }

          v49 = v57;
          v50 = v58;
          if ((v46 & 0x8000000000000000) == 0)
          {
            break;
          }

LABEL_21:
          v61 = sub_1E42073C4();
          if (v61)
          {
            v108[0] = v61;
            type metadata accessor for ViewModel();
            v60 = swift_dynamicCast();
            v59 = v109[0];
            v57 = v49;
            v58 = v50;
            if (v109[0])
            {
              continue;
            }
          }

          goto LABEL_27;
        }
      }

      while (1)
      {
        v57 = v55 + 1;
        if (__OFADD__(v55, 1))
        {
          break;
        }

        if (v57 >= v54)
        {
          goto LABEL_27;
        }

        v56 = *(v47 + 8 * v57);
        ++v55;
        if (v56)
        {
          goto LABEL_19;
        }
      }

      __break(1u);
    }
  }
}

double sub_1E411BB9C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI26EpicShowcaseViewController_collectionViewModel;
  OUTLINED_FUNCTION_3_0(v1 + OBJC_IVAR____TtC8VideosUI26EpicShowcaseViewController_collectionViewModel, &v20);
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = OBJC_IVAR____TtC8VideosUI26EpicShowcaseViewController_collectionViewModel;

  OUTLINED_FUNCTION_5_0(v1 + v5, v21);
  v6 = *(v1 + v5);
  if (v6)
  {
    if (v6 == v4)
    {
      goto LABEL_9;
    }
  }

  else if (!v4)
  {
    goto LABEL_9;
  }

  type metadata accessor for LayoutGrid();
  sub_1E3A256EC();
  v7 = [objc_opt_self() current];
  OUTLINED_FUNCTION_8_21(v7);
  v11 = v10;
  v12 = *(v1 + v5);
  if (v12)
  {
    v13 = v8;
    v14 = v9;
    v15 = *(*v12 + 392);

    v17 = v15(v16);

    if (v17)
    {
      OUTLINED_FUNCTION_8();
      (*(v18 + 1640))(v13, v11, v14);
    }
  }

LABEL_9:

  return result;
}

uint64_t sub_1E411BD18()
{
  v1 = OBJC_IVAR____TtC8VideosUI26EpicShowcaseViewController____lazy_storage___visibleCellViewModels;
  if (*(v0 + OBJC_IVAR____TtC8VideosUI26EpicShowcaseViewController____lazy_storage___visibleCellViewModels))
  {
    v2 = *(v0 + OBJC_IVAR____TtC8VideosUI26EpicShowcaseViewController____lazy_storage___visibleCellViewModels);
  }

  else
  {
    if (sub_1E32AE9B0(MEMORY[0x1E69E7CC0]))
    {
      v2 = sub_1E37CB554(MEMORY[0x1E69E7CC0]);
    }

    else
    {
      v2 = MEMORY[0x1E69E7CD0];
    }

    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t sub_1E411BDA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = OBJC_IVAR____TtC8VideosUI26EpicShowcaseViewController____lazy_storage___cellVisibilityMonitor;
  if (*(v3 + OBJC_IVAR____TtC8VideosUI26EpicShowcaseViewController____lazy_storage___cellVisibilityMonitor))
  {
    v5 = *(v3 + OBJC_IVAR____TtC8VideosUI26EpicShowcaseViewController____lazy_storage___cellVisibilityMonitor);
  }

  else
  {
    v6 = v3;
    TVAppFeature.isEnabled.getter(17, a2, a3);
    v7 = sub_1E411AE24();
    v8 = *&v7[OBJC_IVAR____TtC8VideosUI25EpicShowcaseViewContainer_carouselView];

    sub_1E3AFBD8C();
    *(v6 + OBJC_IVAR____TtC8VideosUI26EpicShowcaseViewController_didCreateCellVisibilityMonitor) = 1;
    type metadata accessor for ScrollViewVisibilityMonitor();
    OUTLINED_FUNCTION_4_0();
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v5 = sub_1E414F9CC();
    *(v6 + v4) = v5;
  }

  return v5;
}

unint64_t sub_1E411BEC0()
{
  sub_1E42074B4();

  v1 = sub_1E41E1364(v0);
  MEMORY[0x1E69109E0](v1);

  MEMORY[0x1E69109E0](8250, 0xE200000000000000);
  v2 = sub_1E4207944();
  MEMORY[0x1E69109E0](v2);

  MEMORY[0x1E69109E0](41, 0xE100000000000000);
  return 0xD00000000000001DLL;
}

id sub_1E411BFA4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v8 = &v3[OBJC_IVAR____TtC8VideosUI26EpicShowcaseViewController_viewImpressioner];
  *v8 = 0u;
  *(v8 + 1) = 0u;
  *(v8 + 4) = 0;
  v9 = &v3[OBJC_IVAR____TtC8VideosUI26EpicShowcaseViewController_headerViewModel];
  *v9 = 0u;
  *(v9 + 1) = 0u;
  *(v9 + 4) = 0;
  v10 = OBJC_IVAR____TtC8VideosUI26EpicShowcaseViewController_contextMenuInteractor;
  type metadata accessor for ContextMenuInteractor(0);
  *&v3[v10] = _s8VideosUI26MetricsRecorderFactoryObjCCACycfC_0();
  *&v3[OBJC_IVAR____TtC8VideosUI26EpicShowcaseViewController_collectionViewModel] = 0;
  *&v3[OBJC_IVAR____TtC8VideosUI26EpicShowcaseViewController____lazy_storage___visibleCellViewModels] = 0;
  *&v3[OBJC_IVAR____TtC8VideosUI26EpicShowcaseViewController____lazy_storage___carouselViewContainer] = 0;
  *&v3[OBJC_IVAR____TtC8VideosUI26EpicShowcaseViewController_dataModelItems] = MEMORY[0x1E69E7CC0];
  *&v3[OBJC_IVAR____TtC8VideosUI26EpicShowcaseViewController_lastViewWidth] = 0;
  *&v3[OBJC_IVAR____TtC8VideosUI26EpicShowcaseViewController_centeredItemIndex] = 0;
  v3[OBJC_IVAR____TtC8VideosUI26EpicShowcaseViewController_didHostedInStackView] = 0;
  *&v3[OBJC_IVAR____TtC8VideosUI26EpicShowcaseViewController_selfVisibilityMonitor] = 0;
  v3[OBJC_IVAR____TtC8VideosUI26EpicShowcaseViewController_didCreateCellVisibilityMonitor] = 0;
  *&v3[OBJC_IVAR____TtC8VideosUI26EpicShowcaseViewController____lazy_storage___cellVisibilityMonitor] = 0;
  v11 = OBJC_IVAR____TtC8VideosUI26EpicShowcaseViewController_playbackManager;
  type metadata accessor for EpicShowcasePlaybackManager(0);
  result = sub_1E3E2F33C();
  *&v3[v11] = result;
  v13 = qword_1EE295C40;
  *&v3[OBJC_IVAR____TtC8VideosUI26EpicShowcaseViewController_instance] = qword_1EE295C40;
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    qword_1EE295C40 = v15;
    if (a2)
    {
      v16 = sub_1E4205ED4();
    }

    else
    {
      v16 = 0;
    }

    v18.receiver = v4;
    v18.super_class = ObjectType;
    v17 = objc_msgSendSuper2(&v18, sel_initWithNibName_bundle_, v16, a3);

    return v17;
  }

  return result;
}

void sub_1E411C18C()
{
  v1 = v0 + OBJC_IVAR____TtC8VideosUI26EpicShowcaseViewController_viewImpressioner;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0;
  v2 = v0 + OBJC_IVAR____TtC8VideosUI26EpicShowcaseViewController_headerViewModel;
  *v2 = 0u;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0;
  v3 = OBJC_IVAR____TtC8VideosUI26EpicShowcaseViewController_contextMenuInteractor;
  type metadata accessor for ContextMenuInteractor(0);
  *(v0 + v3) = _s8VideosUI26MetricsRecorderFactoryObjCCACycfC_0();
  *(v0 + OBJC_IVAR____TtC8VideosUI26EpicShowcaseViewController_collectionViewModel) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI26EpicShowcaseViewController____lazy_storage___visibleCellViewModels) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI26EpicShowcaseViewController____lazy_storage___carouselViewContainer) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI26EpicShowcaseViewController_dataModelItems) = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtC8VideosUI26EpicShowcaseViewController_lastViewWidth) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI26EpicShowcaseViewController_centeredItemIndex) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI26EpicShowcaseViewController_didHostedInStackView) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI26EpicShowcaseViewController_selfVisibilityMonitor) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI26EpicShowcaseViewController_didCreateCellVisibilityMonitor) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI26EpicShowcaseViewController____lazy_storage___cellVisibilityMonitor) = 0;
  v4 = OBJC_IVAR____TtC8VideosUI26EpicShowcaseViewController_playbackManager;
  type metadata accessor for EpicShowcasePlaybackManager(0);
  *(v0 + v4) = sub_1E3E2F33C();
  sub_1E42076B4();
  __break(1u);
}

double sub_1E411C2D0()
{
  v1 = sub_1E411AE24();
  [v0 setView_];

  v2 = OBJC_IVAR____TtC8VideosUI26EpicShowcaseViewController____lazy_storage___carouselViewContainer;
  v3 = *(*&v0[OBJC_IVAR____TtC8VideosUI26EpicShowcaseViewController____lazy_storage___carouselViewContainer] + OBJC_IVAR____TtC8VideosUI25EpicShowcaseViewContainer_carouselView) + OBJC_IVAR____TtC8VideosUI15VUICarouselView_delegate;
  OUTLINED_FUNCTION_3_0(v3, v11);
  *(v3 + 8) = &off_1F5D986C0;
  OUTLINED_FUNCTION_32_0();
  swift_unknownObjectWeakAssign();
  v4 = *(*&v0[v2] + OBJC_IVAR____TtC8VideosUI25EpicShowcaseViewContainer_carouselView) + OBJC_IVAR____TtC8VideosUI15VUICarouselView_dataSource;
  OUTLINED_FUNCTION_3_0(v4, &v10);
  *(v4 + 8) = &off_1F5D986A8;
  OUTLINED_FUNCTION_32_0();
  swift_unknownObjectWeakAssign();
  v5 = [objc_opt_self() defaultCenter];
  [v5 addObserver:v0 selector:sel_handleFullscreenPlaybackUIDidChange_ name:VUIPlaybackManagerFullscreenPlaybackUIDidChangeNotification[0] object:0];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D2C0, &unk_1E429D880);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1E4297BE0;
  v7 = sub_1E41FFEA4();
  v8 = MEMORY[0x1E69DC0F8];
  *(v6 + 32) = v7;
  *(v6 + 40) = v8;
  OUTLINED_FUNCTION_4_0();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A4F0, &unk_1E429D890);
  sub_1E4206944();
  swift_unknownObjectRelease();

  return result;
}

void sub_1E411C4A4(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_15_0(v2 + 16, a2);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = [Strong view];
    if (v5)
    {
      v6 = v5;
      [v5 bounds];
      OUTLINED_FUNCTION_22_13();

      v7 = OUTLINED_FUNCTION_17_4();
      sub_1E411B314(1, v7, v8);
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1E411C574(char a1)
{
  v5.receiver = v1;
  v5.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v5, sel_vui_viewWillAppear_, a1 & 1);
  v3 = sub_1E411AE24();
  v4 = *&v3[OBJC_IVAR____TtC8VideosUI25EpicShowcaseViewContainer_carouselView];

  [v4 vui_setNeedsLayout];
}

double sub_1E411C63C(uint64_t a1)
{
  v10.receiver = v1;
  v10.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v10, sel_vui_willMoveToParentViewController_, a1);
  v4 = *&v1[OBJC_IVAR____TtC8VideosUI26EpicShowcaseViewController_selfVisibilityMonitor];
  if (a1)
  {
    if (!v4)
    {
      return result;
    }

    OUTLINED_FUNCTION_8();
    v6 = *(v5 + 304);

    v6(v7);
  }

  else
  {
    if (!v4)
    {
      return result;
    }

    OUTLINED_FUNCTION_8();
    v9 = *(v8 + 312);

    v9(0);
  }

  return result;
}

void sub_1E411C774()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  ObjectType = swift_getObjectType();
  v5 = sub_1E4203FC4();
  OUTLINED_FUNCTION_0_10();
  v35 = v6;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v10 = v9 - v8;
  sub_1E4203FF4();
  OUTLINED_FUNCTION_0_10();
  v33 = v12;
  v34 = v11;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5();
  v15 = v14 - v13;
  v37.receiver = v1;
  v37.super_class = ObjectType;
  objc_msgSendSuper2(&v37, sel_vui_viewDidAppear_, v3 & 1);
  v16 = OBJC_IVAR____TtC8VideosUI26EpicShowcaseViewController_selfVisibilityMonitor;
  if (*&v1[OBJC_IVAR____TtC8VideosUI26EpicShowcaseViewController_selfVisibilityMonitor])
  {
LABEL_8:
    sub_1E411CC40();
    sub_1E3280A90(0, &qword_1EE23B1D0, 0x1E69E9610);
    v29 = sub_1E4206A04();
    OUTLINED_FUNCTION_4_0();
    v30 = swift_allocObject();
    *(v30 + 16) = v1;
    v36[4] = sub_1E411CEC0;
    v36[5] = v30;
    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 1107296256;
    v36[2] = sub_1E378AEA4;
    v36[3] = &block_descriptor_168;
    v31 = _Block_copy(v36);
    v32 = v1;

    sub_1E4203FE4();
    v36[0] = MEMORY[0x1E69E7CC0];
    sub_1E32749E0(&qword_1EE2882E0, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A730, &qword_1E429B000);
    sub_1E328FCF4(&qword_1EE23B5D0, &qword_1ECF2A730, &qword_1E429B000);
    sub_1E42072E4();
    MEMORY[0x1E6911380](0, v15, v10, v31);
    _Block_release(v31);

    (*(v35 + 8))(v10, v5);
    (*(v33 + 8))(v15, v34);
    OUTLINED_FUNCTION_25_2();
    return;
  }

  v17 = [v1 view];
  if (v17)
  {
    v18 = v17;
    while (1)
    {
      v19 = v18;
      v18 = [v18 superview];

      if (!v18)
      {
        goto LABEL_8;
      }

      objc_opt_self();
      OUTLINED_FUNCTION_20_2();
      if (swift_dynamicCastObjCClass())
      {
        type metadata accessor for ScrollViewVisibilityMonitor();
        v20 = v18;
        OUTLINED_FUNCTION_51_1();
        j__OUTLINED_FUNCTION_18();
        OUTLINED_FUNCTION_21_7();
        v21 = sub_1E414F9CC();
        v22 = [v1 view];
        if (!v22)
        {
          goto LABEL_10;
        }

        v23 = v22;
        OUTLINED_FUNCTION_4_0();
        v24 = swift_allocObject();
        swift_unknownObjectWeakInit();

        j__OUTLINED_FUNCTION_18();
        OUTLINED_FUNCTION_36();
        (*(v25 + 288))(v23, v26 & 1, sub_1E412126C, v24);

        OUTLINED_FUNCTION_36();
        (*(v27 + 304))();
        OUTLINED_FUNCTION_36();
        (*(v28 + 328))();

        *&v1[v16] = v21;

        goto LABEL_8;
      }
    }
  }

  __break(1u);
LABEL_10:
  __break(1u);
}

void sub_1E411CC40()
{
  v3 = sub_1E4120AE4();
  if (v3)
  {
    v4 = v3;
    OUTLINED_FUNCTION_26_0();
    v6 = (*(v5 + 576))();
    if (v6)
    {
      v7 = v6;
      v8 = v0 + OBJC_IVAR____TtC8VideosUI26EpicShowcaseViewController_viewImpressioner;
      OUTLINED_FUNCTION_5_0(v0 + OBJC_IVAR____TtC8VideosUI26EpicShowcaseViewController_viewImpressioner, v24);
      if (*(v8 + 24))
      {
        sub_1E327F454(v8, v21);
        v9 = v22;
        v10 = v23;
        __swift_project_boxed_opaque_existential_1(v21, v22);
        v11 = [v0 view];
        if (!v11)
        {
          __break(1u);
          goto LABEL_16;
        }

        v12 = v11;
        [v11 frame];
        OUTLINED_FUNCTION_22_13();

        (*(*(v10 + 8) + 24))(v9, 0.0, 0.0, v1, v2);
        __swift_destroy_boxed_opaque_existential_1(v21);
        if (*(v8 + 24))
        {
          sub_1E327F454(v8, v21);
          v13 = v22;
          v14 = v23;
          __swift_project_boxed_opaque_existential_1(v21, v22);
          v15 = [v0 view];
          if (v15)
          {
            v16 = v15;
            (*(v14 + 16))(v15, v7, v13, v14);

            __swift_destroy_boxed_opaque_existential_1(v21);
            if (*(v8 + 24))
            {
              sub_1E327F454(v8, v21);
              v17 = v22;
              v18 = v23;
              __swift_project_boxed_opaque_existential_1(v21, v22);
              v19 = [v0 view];
              if (v19)
              {
                v20 = v19;
                (*(*(v18 + 8) + 56))(v19, v4, v17);

                __swift_destroy_boxed_opaque_existential_1(v21);
                return;
              }

              goto LABEL_17;
            }

            goto LABEL_10;
          }

LABEL_16:
          __break(1u);
LABEL_17:
          __break(1u);
          return;
        }
      }

LABEL_10:

      return;
    }
  }
}

double sub_1E411CEC0()
{
  if (*(*(v0 + 16) + OBJC_IVAR____TtC8VideosUI26EpicShowcaseViewController_selfVisibilityMonitor))
  {
    OUTLINED_FUNCTION_8();
    v2 = *(v1 + 304);

    v2(v3);
  }

  return result;
}

id sub_1E411CF94(uint64_t a1)
{
  v4.receiver = v1;
  v4.super_class = swift_getObjectType();
  result = objc_msgSendSuper2(&v4, sel_vui_didMoveToParentViewController_, a1);
  if (a1)
  {
    if ((*(v1 + OBJC_IVAR____TtC8VideosUI26EpicShowcaseViewController_didHostedInStackView) & 1) == 0)
    {
      *(v1 + OBJC_IVAR____TtC8VideosUI26EpicShowcaseViewController_didHostedInStackView) = 1;
    }
  }

  return result;
}

double sub_1E411D058(char a1)
{
  v2 = v1;
  v7.receiver = v2;
  v7.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v7, sel_vui_viewWillDisappear_, a1 & 1);
  if (*&v2[OBJC_IVAR____TtC8VideosUI26EpicShowcaseViewController_selfVisibilityMonitor])
  {
    OUTLINED_FUNCTION_8();
    v5 = *(v4 + 312);

    v5(0);
  }

  return sub_1E411D100();
}

double sub_1E411D100()
{
  v1 = sub_1E4120AE4();
  if (v1)
  {
    v3 = v1;
    OUTLINED_FUNCTION_26_0();
    v5 = (*(v4 + 576))();
    if (v5)
    {
      v6 = v5;
      v7 = v0 + OBJC_IVAR____TtC8VideosUI26EpicShowcaseViewController_viewImpressioner;
      OUTLINED_FUNCTION_5_0(v0 + OBJC_IVAR____TtC8VideosUI26EpicShowcaseViewController_viewImpressioner, v15);
      if (*(v7 + 24) && (sub_1E327F454(v7, v12), v8 = v13, v9 = v14, __swift_project_boxed_opaque_existential_1(v12, v13), (*(v9 + 24))(v6, v8, v9), __swift_destroy_boxed_opaque_existential_1(v12), *(v7 + 24)))
      {
        sub_1E327F454(v7, v12);
        v10 = v13;
        v11 = v14;
        __swift_project_boxed_opaque_existential_1(v12, v13);
        (*(*(v11 + 8) + 64))(v3, v10);

        __swift_destroy_boxed_opaque_existential_1(v12);
      }

      else
      {
      }
    }

    else
    {
    }
  }

  return result;
}

void sub_1E411D2C8()
{
  v3 = v0;
  v16.receiver = v0;
  v16.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v16, sel_vui_viewDidLayoutSubviews);
  v4 = [v0 view];
  if (v4)
  {
    v5 = v4;
    [v4 bounds];
    OUTLINED_FUNCTION_22_13();

    if (v1 != 0.0 || v2 != 0.0)
    {
      v6 = sub_1E411AE24();
      v7 = OUTLINED_FUNCTION_17_4();
      [v8 v9];

      if ((sub_1E39DFFC8() & 1) == 0)
      {
        v10 = OBJC_IVAR____TtC8VideosUI26EpicShowcaseViewController____lazy_storage___carouselViewContainer;
        OUTLINED_FUNCTION_20_5();
        [v11 v12];
        v13 = *&v3[v10];
        sub_1E411A854(v13);
      }

      v14 = OUTLINED_FUNCTION_17_4();
      sub_1E411B314(0, v14, v15);
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1E411D424(uint64_t a1, double a2, double a3)
{
  v4 = v3;
  v24.receiver = v3;
  v24.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v24, sel_viewWillTransitionToSize_withTransitionCoordinator_, a1, a2, a3);
  if (*&v3[OBJC_IVAR____TtC8VideosUI26EpicShowcaseViewController_selfVisibilityMonitor])
  {
    OUTLINED_FUNCTION_8();
    v9 = *(v8 + 312);

    v9(0);
  }

  OUTLINED_FUNCTION_4_0();
  v10 = swift_allocObject();
  *(v10 + 16) = v3;
  v22 = sub_1E411D60C;
  v23 = v10;
  v18 = MEMORY[0x1E69E9820];
  v19 = 1107296256;
  v20 = sub_1E37C7850;
  v21 = &block_descriptor_9_7;
  v11 = _Block_copy(&v18);
  v12 = v4;

  OUTLINED_FUNCTION_4_0();
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  v22 = sub_1E411CEC0;
  v23 = v13;
  v18 = MEMORY[0x1E69E9820];
  v19 = 1107296256;
  v20 = sub_1E37C7850;
  v21 = &block_descriptor_15_3;
  v14 = _Block_copy(&v18);
  v15 = v12;

  OUTLINED_FUNCTION_38_2();
  [v16 v17];
  _Block_release(v14);
  _Block_release(v11);
}

void sub_1E411D60C()
{
  v1 = [*(v0 + 16) view];
  if (v1)
  {
    v2 = v1;
    [v1 bounds];
    OUTLINED_FUNCTION_22_13();

    v3 = OUTLINED_FUNCTION_17_4();
    sub_1E411B314(0, v3, v4);
  }

  else
  {
    __break(1u);
  }
}

id sub_1E411D6F8()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v5 = ObjectType;
  if (*&v0[OBJC_IVAR____TtC8VideosUI26EpicShowcaseViewController_selfVisibilityMonitor])
  {

    OUTLINED_FUNCTION_51_1();
    OUTLINED_FUNCTION_8();
    (*(v6 + 312))(v7 & 1);
  }

  if (v0[OBJC_IVAR____TtC8VideosUI26EpicShowcaseViewController_didCreateCellVisibilityMonitor] == 1)
  {
    sub_1E411BDA4(ObjectType, v3, v4);
    OUTLINED_FUNCTION_51_1();
    OUTLINED_FUNCTION_8();
    (*(v8 + 312))(v9 & 1);
  }

  v10 = [objc_opt_self() defaultCenter];
  [v10 removeObserver_];

  v12.receiver = v1;
  v12.super_class = v5;
  return objc_msgSendSuper2(&v12, sel_dealloc);
}

uint64_t sub_1E411D928(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF40728, qword_1E42ED540);
  sub_1E4148C68(sub_1E411D9D4, v9, &v14);
  v10 = v14;
  v11 = *&a3;
  v12 = *&a4;
  if (a5 == 1)
  {
    v11 = 0.0;
    v12 = 0.0;
  }

  sub_1E411DA10(a1, v11, v12);
  return v10;
}

id sub_1E411D9D4@<X0>(void *a2@<X8>)
{
  type metadata accessor for EpicShowcaseViewController();
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *a2 = result;
  return result;
}

void sub_1E411DA10(uint64_t a1, double a2, double a3)
{
  v4 = v3;
  v8 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5();
  v14 = v13 - v12;

  v16.n128_f64[0] = sub_1E411BB9C(v15);
  v17 = (*(*a1 + 1040))(v16);
  if (!v17)
  {
    goto LABEL_14;
  }

  v18 = v17;
  if (!sub_1E32AE9B0(v17))
  {

LABEL_14:
    v34 = sub_1E324FBDC();
    (*(v10 + 16))(v14, v34, v8);
    v35 = v4;
    v36 = sub_1E41FFC94();
    v37 = sub_1E42067F4();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = OUTLINED_FUNCTION_6_21();
      v39 = OUTLINED_FUNCTION_100();
      *&v54 = v39;
      *v38 = 136315138;
      v40 = sub_1E411BEC0();
      v42 = sub_1E3270FC8(v40, v41, &v54);

      *(v38 + 4) = v42;
      _os_log_impl(&dword_1E323F000, v36, v37, "%s configureController: items is nil", v38, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v39);
      OUTLINED_FUNCTION_7_7();
      OUTLINED_FUNCTION_6_0();
    }

    (*(v10 + 8))(v14, v8);
    goto LABEL_17;
  }

  if ((v18 & 0xC000000000000001) != 0)
  {
    v19 = MEMORY[0x1E6911E60](0, v18);
  }

  else
  {
    if (!*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v19 = *(v18 + 32);
  }

  v21 = (*(*v19 + 872))(v20);
  if (!v21)
  {

    goto LABEL_14;
  }

  v22 = v21;
  if ((*(*a1 + 392))())
  {
    type metadata accessor for EpicShowcaseViewLayout();
    v23 = swift_dynamicCastClass();
    if (v23)
    {
      v24 = v23;
      v25 = sub_1E411AE24();
      v26 = *&v25[OBJC_IVAR____TtC8VideosUI25EpicShowcaseViewContainer_carouselView];

      v27 = type metadata accessor for FlowcaseViewCell();
      sub_1E384EE08(174);
      sub_1E3AFC138(v27);

      LOBYTE(v58[0]) = 4;
      v28 = *(*a1 + 776);
      v29 = v28(&v54, v58, &unk_1F5D5D258, &off_1F5D5C7B8);
      if (*(&v55 + 1))
      {
        if (OUTLINED_FUNCTION_36_76(v29, v30, v31, MEMORY[0x1E69E63B0]))
        {
          v32 = v58[0];
          v33 = sub_1E3DE9DF4();
          OUTLINED_FUNCTION_3_0(v33, v57);
          *v33 = v32;
        }
      }

      else
      {
        sub_1E325F748(&v54, &unk_1ECF296E0, &unk_1E4298030);
      }

      LOBYTE(v58[0]) = 5;
      v44 = v28(&v54, v58, &unk_1F5D5D258, &off_1F5D5C7B8);
      if (*(&v55 + 1))
      {
        if (OUTLINED_FUNCTION_36_76(v44, v45, v46, MEMORY[0x1E69E63B0]))
        {
          v47 = v58[0];
          v48 = sub_1E3DE9E00();
          OUTLINED_FUNCTION_3_0(v48, v58);
          *v48 = v47;
        }
      }

      else
      {
        sub_1E325F748(&v54, &unk_1ECF296E0, &unk_1E4298030);
      }

      v49 = sub_1E37C889C(v22);

      sub_1E411E5B0(v49, 0);

      sub_1E411B22C(v24);

      v51.n128_f64[0] = sub_1E411BB9C(v50);
      if ((*(*a1 + 968))(v51))
      {
        type metadata accessor for ViewModel();
        OUTLINED_FUNCTION_1_17();
        sub_1E32749E0(v52, v53);
        sub_1E4207414();
      }

      else
      {
        v56 = 0;
        v54 = 0u;
        v55 = 0u;
      }

      sub_1E411AE94(&v54);
      sub_1E411B314(0, a2, a3);
      sub_1E41207B0();

LABEL_17:
      OUTLINED_FUNCTION_10_3();
      return;
    }
  }

  else
  {
  }

  OUTLINED_FUNCTION_10_3();
}

void sub_1E411E080()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v2 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_4_6();
  v8 = v6 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = v50 - v10;
  type metadata accessor for CollectionViewModel();
  v12 = swift_dynamicCastClass();
  if (!v12)
  {
    goto LABEL_16;
  }

  v13 = v12;
  OUTLINED_FUNCTION_26_0();
  v15 = *(v14 + 392);

  v17 = v15(v16);
  if (!v17)
  {
LABEL_15:

LABEL_16:
    sub_1E324FBDC();
    OUTLINED_FUNCTION_0_11();
    v30(v8);
    v31 = v0;
    v32 = sub_1E41FFC94();
    v33 = sub_1E42067F4();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = OUTLINED_FUNCTION_6_21();
      v35 = OUTLINED_FUNCTION_100();
      v51[0] = v35;
      *v34 = 136315138;
      v36 = sub_1E411BEC0();
      v38 = sub_1E3270FC8(v36, v37, v51);

      *(v34 + 4) = v38;
      _os_log_impl(&dword_1E323F000, v32, v33, "%s EpicShowcase view layout is missing", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v35);
      OUTLINED_FUNCTION_7_7();
      OUTLINED_FUNCTION_6_0();
    }

    (*(v4 + 8))(v8, v2);
    goto LABEL_26;
  }

  v18 = v17;
  type metadata accessor for EpicShowcaseViewLayout();
  v19 = swift_dynamicCastClass();
  if (!v19)
  {

    goto LABEL_15;
  }

  v20 = v19;
  v21 = (*(*v13 + 1040))();
  if (!v21)
  {
    goto LABEL_22;
  }

  v22 = v21;
  if (!sub_1E32AE9B0(v21))
  {
LABEL_21:

    goto LABEL_22;
  }

  if ((v22 & 0xC000000000000001) != 0)
  {
    v23 = MEMORY[0x1E6911E60](0, v22);
    goto LABEL_9;
  }

  if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v23 = *(v22 + 32);

LABEL_9:

    v25 = (*(*v23 + 872))(v24);
    if (v25)
    {
      v26 = v25;
      if (sub_1E32AE9B0(v25))
      {

        sub_1E411BB9C(v13);

        sub_1E411B22C(v20);
        v27 = (*(*v13 + 968))();
        if (v27)
        {
          v50[1] = v27;
          type metadata accessor for ViewModel();
          OUTLINED_FUNCTION_1_17();
          sub_1E32749E0(v28, v29);
          sub_1E4207414();
        }

        else
        {
          memset(v51, 0, 40);
        }

        sub_1E411AE94(v51);
        v49 = sub_1E37C889C(v26);

        sub_1E411E5B0(v49, 1);

LABEL_26:
        OUTLINED_FUNCTION_25_2();
        return;
      }

      goto LABEL_21;
    }

LABEL_22:
    sub_1E324FBDC();
    OUTLINED_FUNCTION_0_11();
    v39(v11);
    v40 = v1;
    v41 = sub_1E41FFC94();
    v42 = sub_1E42067F4();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = OUTLINED_FUNCTION_6_21();
      v44 = OUTLINED_FUNCTION_100();
      v50[0] = v18;
      v45 = v44;
      v51[0] = v44;
      *v43 = 136315138;
      v46 = sub_1E411BEC0();
      v48 = sub_1E3270FC8(v46, v47, v51);

      *(v43 + 4) = v48;
      _os_log_impl(&dword_1E323F000, v41, v42, "%s collection doesn't have any groups/items.", v43, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v45);
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_7_7();
    }

    else
    {
    }

    (*(v4 + 8))(v11, v2);
    goto LABEL_26;
  }

  __break(1u);
}

void sub_1E411E5B0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = OBJC_IVAR____TtC8VideosUI26EpicShowcaseViewController_dataModelItems;
  v6 = &v3[OBJC_IVAR____TtC8VideosUI26EpicShowcaseViewController_dataModelItems];
  if ((a2 & 1) == 0)
  {
    OUTLINED_FUNCTION_3_0(v6, __src);

    v42 = sub_1E37CB37C(v41, a1);

    if (v42)
    {
      return;
    }

    *&v3[v5] = a1;

    goto LABEL_29;
  }

  OUTLINED_FUNCTION_3_0(v6, v46);
  v7 = *&v3[v5];

  v8 = sub_1E41E1E3C(a1, v7, MEMORY[0x1E69E69B8], MEMORY[0x1E69E69C0]);

  *&v3[v5] = a1;

  v9 = *(v8 + 16);

  if (v9)
  {
LABEL_29:
    sub_1E4120B90();
    return;
  }

  v10 = OBJC_IVAR____TtC8VideosUI26EpicShowcaseViewController_collectionViewModel;
  OUTLINED_FUNCTION_5_0(&v3[OBJC_IVAR____TtC8VideosUI26EpicShowcaseViewController_collectionViewModel], v54);
  v11 = *&v3[v10];
  if (!v11)
  {
    return;
  }

  LOBYTE(v50[0]) = 30;
  v12 = *(*v11 + 776);

  v12(__src, v50, &unk_1F5D5DAC8, &off_1F5D5C998);
  if (!__src[3])
  {

    sub_1E325F748(__src, &unk_1ECF296E0, &unk_1E4298030);
    return;
  }

  if (!swift_dynamicCast() || (v50[0] & 1) == 0)
  {
LABEL_26:

    return;
  }

  v13 = sub_1E411AE24();
  v14 = *&v13[OBJC_IVAR____TtC8VideosUI25EpicShowcaseViewContainer_carouselView];

  v15 = sub_1E3AFBD1C();
  v16 = OBJC_IVAR____TtC8VideosUI26EpicShowcaseViewController_dataModelItems;
  OUTLINED_FUNCTION_5_0(&v3[OBJC_IVAR____TtC8VideosUI26EpicShowcaseViewController_dataModelItems], v53);
  v43 = v16;
  if (!*(*&v3[v16] + 16) || (v45 = sub_1E32AE9B0(v15)) == 0)
  {
LABEL_25:

    goto LABEL_26;
  }

  v44 = OBJC_IVAR____TtC8VideosUI26EpicShowcaseViewController____lazy_storage___carouselViewContainer;
  v17 = 4;
  while (1)
  {
    v18 = v17 - 4;
    if ((v15 & 0xC000000000000001) != 0)
    {
      v19 = MEMORY[0x1E6911E60](v17 - 4, v15);
    }

    else
    {
      if (v18 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_33;
      }

      v19 = *(v15 + 8 * v17);
    }

    v20 = v19;
    v21 = v17 - 3;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    v22 = *(*&v3[v44] + OBJC_IVAR____TtC8VideosUI25EpicShowcaseViewContainer_carouselView);
    v23 = sub_1E3AFCAA4(v20);
    v25 = v24;

    if (v25)
    {
      goto LABEL_22;
    }

    v49 = *&v3[v43];
    v47 = v23;
    v48 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2A508, &qword_1E429D8B0);
    OUTLINED_FUNCTION_0_32();
    sub_1E328FCF4(&qword_1EE23B440, &unk_1ECF2A508, &qword_1E429D8B0);
    sub_1E38D2054(&v47, v50);
    if (!v51)
    {

      sub_1E325F748(v50, &qword_1ECF40720, &qword_1E429D878);
      goto LABEL_24;
    }

    type metadata accessor for ViewModel();
    if ((swift_dynamicCast() & 1) == 0)
    {
LABEL_22:
    }

    else
    {
      v26 = (*(*v47 + 392))();
      if (v26)
      {
        v27 = v26;
        v28 = [v3 view];
        if (!v28)
        {
          goto LABEL_34;
        }

        v29 = v28;
        type metadata accessor for LayoutGrid();
        [v29 bounds];
        OUTLINED_FUNCTION_3();

        OUTLINED_FUNCTION_17_4();
        OUTLINED_FUNCTION_20_5();
        Width = CGRectGetWidth(v56);
        sub_1E3A2579C(Width);
        OUTLINED_FUNCTION_8_21([v3 vuiTraitCollection]);
        v32 = v31;
        (*(*v27 + 1640))();
      }

      sub_1E411F134(__src);
      type metadata accessor for UIFactory();
      v49 = v20;
      v51 = &unk_1F5D869A0;
      v52 = &off_1F5D868A0;
      v50[0] = swift_allocObject();
      memcpy((v50[0] + 16), __src, 0x52uLL);
      v33 = sub_1E3280A90(0, &qword_1EE23B120, 0x1E69DC7F8);

      v34 = v20;
      OUTLINED_FUNCTION_21_7();
      sub_1E38E5240(v35, v36, v37, v38, v39, v33, v40);

      sub_1E325F748(v50, &qword_1ECF296C0, &unk_1E429BBE0);
    }

LABEL_24:
    ++v17;
    if (v21 == v45)
    {
      goto LABEL_25;
    }
  }

  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
}

void sub_1E411EB6C()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v3 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  v9 = v8 - v7;
  sub_1E324FBDC();
  OUTLINED_FUNCTION_0_11();
  v10(v9);
  v11 = v0;
  v12 = sub_1E41FFC94();
  v13 = sub_1E42067F4();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = OUTLINED_FUNCTION_6_21();
    v15 = OUTLINED_FUNCTION_100();
    v19 = v15;
    *v14 = 136315138;
    v16 = sub_1E411BEC0();
    v18 = sub_1E3270FC8(v16, v17, &v19);

    *(v14 + 4) = v18;
    _os_log_impl(&dword_1E323F000, v12, v13, v2, v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v15);
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();
  }

  (*(v5 + 8))(v9, v3);
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E411ECEC(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  result = sub_1E41FE844();
  if ((result & 0x8000000000000000) == 0)
  {
    v6 = result;
    v7 = OBJC_IVAR____TtC8VideosUI26EpicShowcaseViewController_dataModelItems;
    result = OUTLINED_FUNCTION_5_0(&v2[OBJC_IVAR____TtC8VideosUI26EpicShowcaseViewController_dataModelItems], v41);
    if (v6 < *(*&v2[v7] + 16))
    {
      v40[0] = a2;
      type metadata accessor for ViewModel();
      OUTLINED_FUNCTION_1_17();
      sub_1E32749E0(v8, v9);

      sub_1E4207414();
      OUTLINED_FUNCTION_11_3(&v2[v7], v40);
      v10 = *&v2[v7];
      result = swift_isUniquelyReferenced_nonNull_native();
      *&v3[v7] = v10;
      if ((result & 1) == 0)
      {
LABEL_24:
        result = sub_1E37CB8C4(v10);
        v10 = result;
        *&v3[v7] = result;
      }

      if (v6 >= *(v10 + 16))
      {
        __break(1u);
LABEL_26:
        __break(1u);
      }

      else
      {
        sub_1E37CB8D8(__src, v10 + 40 * v6 + 32);
        *&v3[v7] = v10;
        swift_endAccess();
        v11 = sub_1E411AE24();
        v12 = *&v11[OBJC_IVAR____TtC8VideosUI25EpicShowcaseViewContainer_carouselView];

        v10 = v12;
        v13 = sub_1E3AFBD1C();

        v14 = sub_1E32AE9B0(v13);
        if (v14)
        {
          v15 = v14;
          v38 = v6;
          v39 = v3;
          v37 = a2;
          v6 = 0;
          v7 = OBJC_IVAR____TtC8VideosUI26EpicShowcaseViewController____lazy_storage___carouselViewContainer;
          a2 = v13 & 0xC000000000000001;
          while (1)
          {
            if (a2)
            {
              v16 = MEMORY[0x1E6911E60](v6, v13);
            }

            else
            {
              if (v6 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_23;
              }

              v16 = *(v13 + 8 * v6 + 32);
            }

            v17 = v16;
            v3 = (v6 + 1);
            if (__OFADD__(v6, 1))
            {
              __break(1u);
LABEL_23:
              __break(1u);
              goto LABEL_24;
            }

            v18 = *(*&v39[v7] + OBJC_IVAR____TtC8VideosUI25EpicShowcaseViewContainer_carouselView);
            v10 = sub_1E3AFCAA4(v17);
            v20 = v19;

            if ((v20 & 1) == 0 && v10 == v38)
            {
              break;
            }

            ++v6;
            if (v3 == v15)
            {
            }
          }

          v21 = *(*v37 + 392);
          v22 = v17;
          v23 = v21();
          if (v23)
          {
            v24 = v23;
            result = [v39 view];
            if (!result)
            {
              goto LABEL_26;
            }

            v25 = result;

            type metadata accessor for LayoutGrid();
            [v25 bounds];
            OUTLINED_FUNCTION_3();

            OUTLINED_FUNCTION_17_4();
            OUTLINED_FUNCTION_20_5();
            Width = CGRectGetWidth(v43);
            sub_1E3A2579C(Width);
            OUTLINED_FUNCTION_8_21([v39 vuiTraitCollection]);
            v28 = v27;
            (*(*v24 + 1640))();
          }

          else
          {
          }

          sub_1E411F134(__src);
          type metadata accessor for UIFactory();
          v40[5] = v22;
          v40[3] = &unk_1F5D869A0;
          v40[4] = &off_1F5D868A0;
          v40[0] = swift_allocObject();
          memcpy((v40[0] + 16), __src, 0x52uLL);
          v29 = sub_1E3280A90(0, &qword_1EE23B120, 0x1E69DC7F8);
          v30 = v22;
          OUTLINED_FUNCTION_21_7();
          sub_1E38E5240(v31, v32, v33, v34, v35, v29, v36);

          return sub_1E325F748(v40, &qword_1ECF296C0, &unk_1E429BBE0);
        }

        else
        {
        }
      }
    }
  }

  return result;
}

void *sub_1E411F134@<X0>(void *a1@<X8>)
{
  v2 = v1;
  sub_1E3DF9E68(__src);
  v4 = sub_1E411AE24();
  v5 = *&v4[OBJC_IVAR____TtC8VideosUI25EpicShowcaseViewContainer_carouselView];

  v6 = OBJC_IVAR____TtC8VideosUI15VUICarouselView_configuration;
  OUTLINED_FUNCTION_5_0(&v5[OBJC_IVAR____TtC8VideosUI15VUICarouselView_configuration], v25);
  v20 = *&v5[v6];

  *__src = v20;
  __src[16] = 0;
  __src[41] = 1;
  sub_1E411B1D8();
  OUTLINED_FUNCTION_32_96();
  OUTLINED_FUNCTION_5_0(v7 + v8, v24);
  OUTLINED_FUNCTION_5_0(v2 + OBJC_IVAR____TtC8VideosUI26EpicShowcaseViewController_dataModelItems, v23);
  v9 = OUTLINED_FUNCTION_17_4();
  v12 = sub_1E37E879C(v10, v9, v11);
  v14 = v13;
  v16 = v15;

  OUTLINED_FUNCTION_32_96();
  OUTLINED_FUNCTION_5_0(v17 + v18, v22);
  v28[0] = sub_1E3D43D3C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF390E0, &unk_1E42D38F0);
  sub_1E4148DE0(sub_1E37CCD5C);

  *&__src[24] = v12;
  *&__src[32] = v14;
  __src[40] = v16 & 1;
  memcpy(__dst, __src, 0x52uLL);
  memcpy(v28, __src, 0x52uLL);
  sub_1E37CCDA0(__dst, v21);
  sub_1E37CCDFC(v28);
  return memcpy(a1, __dst, 0x52uLL);
}

uint64_t sub_1E411F388(uint64_t a1, uint64_t a2)
{
  v3 = OBJC_IVAR____TtC8VideosUI26EpicShowcaseViewController_dataModelItems;
  OUTLINED_FUNCTION_15_0(v2 + OBJC_IVAR____TtC8VideosUI26EpicShowcaseViewController_dataModelItems, a2);
  return *(*(v2 + v3) + 16);
}

void sub_1E411F3C4()
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
  v11 = OBJC_IVAR____TtC8VideosUI26EpicShowcaseViewController_dataModelItems;
  OUTLINED_FUNCTION_5_0(&v1[OBJC_IVAR____TtC8VideosUI26EpicShowcaseViewController_dataModelItems], &v28);
  v27 = *&v1[v11];
  v22 = v3;
  v23 = 0;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2A508, &qword_1E429D8B0);
  OUTLINED_FUNCTION_0_32();
  sub_1E328FCF4(v12, &unk_1ECF2A508, &qword_1E429D8B0);
  sub_1E38D2054(&v22, &v24);
  if (*(&v25 + 1))
  {
    v29[0] = v24;
    v29[1] = v25;
    v30 = v26;

    sub_1E411F650(v29, v3);
    sub_1E375D84C(v29);
  }

  else
  {
    sub_1E325F748(&v24, &qword_1ECF40720, &qword_1E429D878);

    v13 = sub_1E324FBDC();
    (*(v6 + 16))(v10, v13, v4);
    v14 = v1;
    v15 = sub_1E41FFC94();
    v16 = sub_1E42067F4();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = OUTLINED_FUNCTION_6_21();
      v18 = OUTLINED_FUNCTION_100();
      *&v29[0] = v18;
      *v17 = 136315138;
      v19 = sub_1E411BEC0();
      v21 = sub_1E3270FC8(v19, v20, v29);

      *(v17 + 4) = v21;
      _os_log_impl(&dword_1E323F000, v15, v16, "%s Delegate did not return a valid cell.", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v18);
      OUTLINED_FUNCTION_7_7();
      OUTLINED_FUNCTION_6_0();
    }

    (*(v6 + 8))(v10, v4);
    [objc_allocWithZone(MEMORY[0x1E69DC7F8]) init];
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E411F650(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF40730, &unk_1E42ED5D8);
  OUTLINED_FUNCTION_0_10();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v65 - v10;
  sub_1E374E74C(a1, v78);
  type metadata accessor for ViewModel();
  if (!swift_dynamicCast())
  {
    goto LABEL_17;
  }

  v12 = v83[0];
  v13 = (*(*v83[0] + 392))();
  if (!v13)
  {
    goto LABEL_17;
  }

  v14 = v13;
  v65 = v11;
  v66 = v8;
  v67 = v6;
  v15 = [v3 view];
  if (!v15)
  {
    __break(1u);
LABEL_17:
    sub_1E42076B4();
    __break(1u);
    return;
  }

  v16 = v15;
  type metadata accessor for LayoutGrid();
  [v16 bounds];
  OUTLINED_FUNCTION_3();

  OUTLINED_FUNCTION_17_4();
  OUTLINED_FUNCTION_20_5();
  Width = CGRectGetWidth(v84);
  sub_1E3A2579C(Width);
  OUTLINED_FUNCTION_8_21([v3 vuiTraitCollection]);
  v19 = v18;
  v20 = *(*v14 + 1640);
  v68 = v14;
  v20();

  v21 = sub_1E411AE24();
  v22 = *&v21[OBJC_IVAR____TtC8VideosUI25EpicShowcaseViewContainer_carouselView];

  sub_1E384EE08(*(v12 + 98));
  v25 = sub_1E3AFC644(v23, v24, a2);

  type metadata accessor for FlowcaseViewCell();
  v26 = swift_dynamicCastClass();
  if (v26)
  {
    v27 = v26;
    v28 = MEMORY[0x1E69E7D40];
    v29 = *((*MEMORY[0x1E69E7D40] & *v26) + 0x250);
    v30 = v25;

    v29(v31);

    v32 = *(v12 + 16);
    v33 = *(v12 + 24);
    v34 = *((*v28 & *v27) + 0x1F0);

    v35 = v30;
    v34(v32, v33);
  }

  sub_1E411F134(v83);
  sub_1E38BAE74(v76);
  v36 = v77;
  v37 = OBJC_IVAR____TtC8VideosUI26EpicShowcaseViewController_dataModelItems;
  OUTLINED_FUNCTION_5_0(&v3[OBJC_IVAR____TtC8VideosUI26EpicShowcaseViewController_dataModelItems], &v74);
  v38 = *(*&v3[v37] + 16);
  v75 = 0;
  type metadata accessor for UIFactory();
  v72 = v25;
  v79[1] = v76[1];
  v79[0] = v76[0];
  v80 = v38;
  v82 = HIBYTE(v36);
  v81 = v75 | (v36 << 8);
  v39 = v25;

  sub_1E3DE9D74(v79, v83, v78);
  *(&v70 + 1) = &type metadata for FlowcaseCellViewContext;
  v71 = &off_1F5D864D8;
  *&v69 = swift_allocObject();
  memcpy((v69 + 16), v78, 0x82uLL);
  v40 = sub_1E3280A90(0, &qword_1EE23B120, 0x1E69DC7F8);
  OUTLINED_FUNCTION_21_7();
  sub_1E38E5240(v41, v42, v43, v44, v45, v40, v46);

  sub_1E325F748(&v69, &qword_1ECF296C0, &unk_1E429BBE0);
  v47 = swift_allocObject();
  v73 = v39;
  v48 = v39;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2A660, &unk_1E429D940);
  if (swift_dynamicCast())
  {
    v49 = sub_1E3251BE8(&v69, v47 + 16);
    v52 = sub_1E411BDA4(v49, v50, v51);
    v53 = *(v47 + 40);
    v54 = *(v47 + 48);
    __swift_mutable_project_boxed_opaque_existential_1(v47 + 16, v53);
    (*(v54 + 40))(v52, v53, v54);
    if (*(v12 + 24))
    {
      v55 = *(v12 + 16);
      v56 = *(v12 + 24);
    }

    else
    {
      v55 = 0;
      v56 = 0xE000000000000000;
    }

    OUTLINED_FUNCTION_8();
    v58 = *(v57 + 264);

    v59 = v58(v55, v56);

    if (v59)
    {
      *&v69 = v59;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E1B0, &unk_1E42DF9E0);
      sub_1E328FCF4(&qword_1EE28A1D0, &qword_1ECF2E1B0, &unk_1E42DF9E0);
      v60 = v65;
      sub_1E4200824();
      sub_1E328FCF4(&qword_1EE28A358, &unk_1ECF40730, &unk_1E42ED5D8);

      v61 = v67;
      v62 = sub_1E4200844();

      (*(v66 + 8))(v60, v61);
    }

    else
    {
      v62 = 0;
    }

    OUTLINED_FUNCTION_11_3(v47 + 16, &v69);
    v63 = *(v47 + 40);
    v64 = *(v47 + 48);
    __swift_mutable_project_boxed_opaque_existential_1(v47 + 16, v63);
    (*(v64 + 64))(v62, v63, v64);
    swift_endAccess();
  }

  else
  {

    v71 = 0;
    v69 = 0u;
    v70 = 0u;
    sub_1E325F748(&v69, &unk_1ECF40740, &qword_1E429D938);
    swift_deallocUninitializedObject();
  }

  OUTLINED_FUNCTION_10_3();
}

uint64_t sub_1E411FE3C(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v7 = OBJC_IVAR____TtC8VideosUI26EpicShowcaseViewController_dataModelItems;
  OUTLINED_FUNCTION_5_0(v4 + OBJC_IVAR____TtC8VideosUI26EpicShowcaseViewController_dataModelItems, v21);
  v20 = *(v4 + v7);
  *&v18[0] = a3;
  BYTE8(v18[0]) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2A508, &qword_1E429D8B0);
  OUTLINED_FUNCTION_0_32();
  sub_1E328FCF4(v8, &unk_1ECF2A508, &qword_1E429D8B0);
  sub_1E38D2054(v18, v22);
  if (v23)
  {
    type metadata accessor for ViewModel();
    if (swift_dynamicCast())
    {
      v9 = *&v18[0];
      v22[0] = sub_1E411BD18();
      sub_1E37CC6E0(v9);

      *(v4 + OBJC_IVAR____TtC8VideosUI26EpicShowcaseViewController____lazy_storage___visibleCellViewModels) = v22[0];
    }
  }

  else
  {
    sub_1E325F748(v22, &qword_1ECF40720, &qword_1E429D878);
  }

  v20 = a2;
  sub_1E3280A90(0, &qword_1EE23B120, 0x1E69DC7F8);
  v10 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A518, &qword_1E429D8B8);
  if (swift_dynamicCast())
  {
    sub_1E3251BE8(v18, v22);
    v11 = v23;
    v12 = v24;
    __swift_project_boxed_opaque_existential_1(v22, v23);
    v13 = (*(v12 + 8))(v11, v12);
    if (v13)
    {
      v14 = v13;
      [v13 vui:0 willMoveToParentViewController:?];
      [v14 removeFromParentViewController];
      v15 = swift_dynamicCastObjCProtocolConditional();
      if (v15)
      {
        v16 = v15;
        if ([v15 respondsToSelector_])
        {
          [v16 didEndDisplaying];
        }
      }
    }

    return __swift_destroy_boxed_opaque_existential_1(v22);
  }

  else
  {
    v19 = 0;
    memset(v18, 0, sizeof(v18));
    return sub_1E325F748(v18, &unk_1ECF2A520, qword_1E429D8C0);
  }
}

void sub_1E41200BC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = sub_1E411AE24();
  sub_1E411A830(a2);

  sub_1E411D100();
  *(v3 + OBJC_IVAR____TtC8VideosUI26EpicShowcaseViewController_centeredItemIndex) = a2;

  sub_1E411CC40();
}

void sub_1E4120128()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v3 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_4_6();
  v9 = (v7 - v8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v60 - v11;
  v13 = sub_1E324FBDC();
  v14 = *(v5 + 16);
  v61 = v13;
  v62 = v5 + 16;
  v60 = v14;
  (v14)(v12);
  v15 = v0;
  v16 = sub_1E41FFC94();
  v17 = sub_1E4206814();
  v18 = v15;

  LODWORD(v65) = v17;
  v19 = os_log_type_enabled(v16, v17);
  v66 = v2;
  v63 = v5;
  v64 = v9;
  if (v19)
  {
    v20 = OUTLINED_FUNCTION_100();
    v71[0] = swift_slowAlloc();
    *v20 = 136315650;
    v21 = sub_1E411BEC0();
    v23 = sub_1E3270FC8(v21, v22, v71);

    *(v20 + 4) = v23;
    *(v20 + 12) = 2080;
    v24 = ViewModelEvent.description.getter(2);
    v26 = sub_1E3270FC8(v24, v25, v71);

    *(v20 + 14) = v26;
    v2 = v66;
    *(v20 + 22) = 2048;
    *(v20 + 24) = v2;
    _os_log_impl(&dword_1E323F000, v16, v65, "%s uiEventOccured event: %s at index=%ld", v20, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();
  }

  v27 = *(v5 + 8);
  v27(v12, v3);
  v28 = v3;
  v29 = OBJC_IVAR____TtC8VideosUI26EpicShowcaseViewController_dataModelItems;
  OUTLINED_FUNCTION_5_0(&v18[OBJC_IVAR____TtC8VideosUI26EpicShowcaseViewController_dataModelItems], &v70);
  v69 = *&v18[v29];
  v67 = v2;
  v68 = 0;
  v30 = OUTLINED_FUNCTION_32_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v30, v31);
  OUTLINED_FUNCTION_0_32();
  sub_1E328FCF4(v32, &unk_1ECF2A508, &qword_1E429D8B0);
  sub_1E38D2054(&v67, v71);
  if (v72)
  {
    type metadata accessor for ViewModel();
    if (swift_dynamicCast())
    {
      v33 = v67;
      v34 = v64;
      v60(v64, v61, v3);
      v35 = v18;

      v36 = sub_1E41FFC94();
      v37 = sub_1E4206814();

      v38 = os_log_type_enabled(v36, v37);
      v65 = v35;
      if (v38)
      {
        v39 = OUTLINED_FUNCTION_100();
        v71[0] = swift_slowAlloc();
        *v39 = 136315650;
        v40 = sub_1E411BEC0();
        sub_1E3270FC8(v40, v41, v71);
        OUTLINED_FUNCTION_50();

        *(v39 + 4) = v35;
        *(v39 + 12) = 2080;
        v42 = ViewModelEvent.description.getter(2);
        sub_1E3270FC8(v42, v43, v71);
        OUTLINED_FUNCTION_50();

        *(v39 + 14) = v35;
        *(v39 + 22) = 2080;
        v45 = (*(*v33 + 368))(v44);
        sub_1E3270FC8(v45, v46, v71);
        OUTLINED_FUNCTION_50();

        *(v39 + 24) = v33;
        _os_log_impl(&dword_1E323F000, v36, v37, "%s dispatching event: %s on viewModel: %s", v39, 0x20u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_6_0();
        OUTLINED_FUNCTION_6_0();

        v47 = v64;
      }

      else
      {

        v47 = v34;
      }

      v27(v47, v28);
      v48 = v66;
      if (sub_1E378CB90(2, 2, v49) & 1) != 0 || (sub_1E378CB90(2, 1, v50))
      {
        v51 = &v65[OBJC_IVAR____TtC8VideosUI26EpicShowcaseViewController_viewImpressioner];
        OUTLINED_FUNCTION_5_0(&v65[OBJC_IVAR____TtC8VideosUI26EpicShowcaseViewController_viewImpressioner], &v67);
        if (*(v51 + 24))
        {
          sub_1E327F454(v51, v71);
          __swift_project_boxed_opaque_existential_1(v71, v72);
          v52 = OUTLINED_FUNCTION_50();
          v54 = v53(v52);
          __swift_destroy_boxed_opaque_existential_1(v71);
        }

        else
        {
          v54 = 0;
        }
      }

      else
      {
        v54 = 0;
      }

      v55 = sub_1E411AE24();
      v56 = *&v55[OBJC_IVAR____TtC8VideosUI25EpicShowcaseViewContainer_carouselView];

      v57 = sub_1E3AFC998(v48);
      v58 = *(*v33 + 800);
      v59 = v57;
      v58(2, v54, v57, 0);
    }
  }

  else
  {
    sub_1E325F748(v71, &qword_1ECF40720, &qword_1E429D878);
  }

  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E4120704()
{
  v0 = sub_1E411AE24();
  v1 = *&v0[OBJC_IVAR____TtC8VideosUI25EpicShowcaseViewContainer_carouselView];

  v2 = &v1[OBJC_IVAR____TtC8VideosUI15VUICarouselView_configuration];
  OUTLINED_FUNCTION_5_0(&v1[OBJC_IVAR____TtC8VideosUI15VUICarouselView_configuration], v6);
  v3 = v2[1];

  result = 0;
  if (v3 > 0.0)
  {
    VUIRoundValue();
    return v5;
  }

  return result;
}

void sub_1E41207B0()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v2 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v8 = v7 - v6;
  v9 = OBJC_IVAR____TtC8VideosUI26EpicShowcaseViewController_collectionViewModel;
  OUTLINED_FUNCTION_5_0(&v1[OBJC_IVAR____TtC8VideosUI26EpicShowcaseViewController_collectionViewModel], &v33);
  if (!*&v1[v9])
  {
    v34 = 0u;
    v35 = 0u;
    goto LABEL_6;
  }

  LOBYTE(v32) = 0;
  OUTLINED_FUNCTION_8();
  v11 = *(v10 + 776);

  v11(&v34, &v32, &unk_1F5D5D138, &off_1F5D5C778);

  if (!*(&v35 + 1))
  {
LABEL_6:
    sub_1E325F748(&v34, &unk_1ECF296E0, &unk_1E4298030);
    goto LABEL_7;
  }

  if (swift_dynamicCast())
  {
    v12 = v32;
    goto LABEL_8;
  }

LABEL_7:
  v12 = 0;
LABEL_8:
  sub_1E411B1D8();
  OUTLINED_FUNCTION_26_0();
  v14 = (*(v13 + 1560))();

  LODWORD(v15) = sub_1E3A24FDC(v14) & v12;
  v16 = OBJC_IVAR____TtC8VideosUI26EpicShowcaseViewController_dataModelItems;
  OUTLINED_FUNCTION_5_0(&v1[OBJC_IVAR____TtC8VideosUI26EpicShowcaseViewController_dataModelItems], &v34);
  v17 = *(*&v1[v16] + 16);
  v18 = sub_1E324FBDC();
  (*(v4 + 16))(v8, v18, v2);
  v19 = v1;
  v20 = sub_1E41FFC94();
  v21 = sub_1E4206814();

  if (os_log_type_enabled(v20, v21))
  {
    v31 = v2;
    v22 = swift_slowAlloc();
    v23 = OUTLINED_FUNCTION_100();
    v32 = v23;
    *v22 = 136315650;
    v24 = sub_1E411BEC0();
    v30 = v8;
    v26 = v4;
    v27 = v17;
    v28 = v15;
    v15 = sub_1E3270FC8(v24, v25, &v32);

    *(v22 + 4) = v15;
    LOBYTE(v15) = v28;
    v17 = v27;
    *(v22 + 12) = 1024;
    *(v22 + 14) = v15 & 1;
    *(v22 + 18) = 2048;
    *(v22 + 20) = v27;
    _os_log_impl(&dword_1E323F000, v20, v21, "%s updatePageControlVisibility showsPageControl=%{BOOL}d, itemCount =%ld", v22, 0x1Cu);
    __swift_destroy_boxed_opaque_existential_1(v23);
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_7_7();

    (*(v26 + 8))(v30, v31);
  }

  else
  {

    (*(v4 + 8))(v8, v2);
  }

  v29 = sub_1E411AE24();
  sub_1E411A68C(v17, v15 & 1);

  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E4120AE4()
{
  v1 = *(v0 + OBJC_IVAR____TtC8VideosUI26EpicShowcaseViewController_centeredItemIndex);
  v2 = OBJC_IVAR____TtC8VideosUI26EpicShowcaseViewController_dataModelItems;
  OUTLINED_FUNCTION_5_0(v0 + OBJC_IVAR____TtC8VideosUI26EpicShowcaseViewController_dataModelItems, v7);
  result = 0;
  if ((v1 & 0x8000000000000000) == 0)
  {
    v4 = *(v0 + v2);
    if (v1 < *(v4 + 16))
    {
      sub_1E374E74C(v4 + 40 * v1 + 32, v6);
      type metadata accessor for ViewModel();
      if (swift_dynamicCast())
      {
        return v5;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

id sub_1E4120B90()
{
  v1 = v0;
  sub_1E411BD18();

  *(v0 + OBJC_IVAR____TtC8VideosUI26EpicShowcaseViewController____lazy_storage___visibleCellViewModels) = MEMORY[0x1E69E7CD0];

  v2 = sub_1E411AE24();
  v3 = *&v2[OBJC_IVAR____TtC8VideosUI25EpicShowcaseViewContainer_carouselView];

  sub_1E3AFC7E4();
  sub_1E41207B0();
  v4 = *(v1 + OBJC_IVAR____TtC8VideosUI26EpicShowcaseViewController____lazy_storage___carouselViewContainer);

  return [v4 vui_setNeedsLayout];
}