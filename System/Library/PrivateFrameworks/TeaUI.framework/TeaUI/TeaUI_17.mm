uint64_t StatusBannerContainerController.tabBarSplitViewPresentation(for:)()
{
  OUTLINED_FUNCTION_7_25();
  sub_1D7E0631C(0, qword_1EDBB0758, &protocol descriptor for TabBarSplitViewPanable);
  v0 = v48;
  OUTLINED_FUNCTION_18_2(v0, v1, v2, v3, v4, v5, v6, v7, v44, v46, v48, v50, v52[0]);
  v8 = swift_dynamicCast();
  if (v8)
  {
    OUTLINED_FUNCTION_19_10(v8, v9, v10, v11, v12, v13, v14, v15);
    OUTLINED_FUNCTION_17_12(v55);
    v16 = OUTLINED_FUNCTION_13_14();
    v17(v16);
    return __swift_destroy_boxed_opaque_existential_1Tm(v55);
  }

  OUTLINED_FUNCTION_2_3();
  sub_1D7E9DD24(v52, &qword_1ECA0DD60, qword_1EDBB0758, &protocol descriptor for TabBarSplitViewPanable);
  objc_opt_self();
  v18 = swift_dynamicCastObjCClass();
  if (v18)
  {
    v19 = v18;
    v20 = v0;
    v21 = [v19 childViewControllers];
    sub_1D7E194D0();
    v22 = sub_1D8191314();

    if (sub_1D7E36AB8(v22))
    {
      sub_1D7E33DD8(0, (v22 & 0xC000000000000001) == 0, v22);
      if ((v22 & 0xC000000000000001) != 0)
      {
        v23 = MEMORY[0x1DA714420](0, v22);
      }

      else
      {
        v23 = *(v22 + 32);
      }

      v24 = v23;

      v54 = v24;
      OUTLINED_FUNCTION_18_2(v25, v26, v27, v28, v29, v30, v31, v32, v45, v47, v49, v51, v52[0]);
      v33 = swift_dynamicCast();
      if (v33)
      {
        if (v53)
        {
          OUTLINED_FUNCTION_19_10(v33, v34, v35, v36, v37, v38, v39, v40);
          OUTLINED_FUNCTION_17_12(v55);
          v41 = OUTLINED_FUNCTION_13_14();
          v42(v41);

          return __swift_destroy_boxed_opaque_existential_1Tm(v55);
        }
      }

      else
      {
        OUTLINED_FUNCTION_2_3();
      }
    }

    else
    {

      OUTLINED_FUNCTION_2_3();
    }

    sub_1D7E9DD24(v52, &qword_1ECA0DD60, qword_1EDBB0758, &protocol descriptor for TabBarSplitViewPanable);
  }

  result = OUTLINED_FUNCTION_3_49();
  __break(1u);
  return result;
}

Swift::Void __swiftcall StatusBannerContainerController.textBeginEditing()()
{
  OUTLINED_FUNCTION_5_26();
  v0 = sub_1D7E0631C(0, &qword_1ECA0DD68, &protocol descriptor for TextEditObserving);
  v8 = OUTLINED_FUNCTION_8_19(v0, v1, v2, v3, v4, v5, v6, v7, v20);
  v10 = OUTLINED_FUNCTION_2_50(v8, v9);
  if (v10)
  {
    OUTLINED_FUNCTION_16_15(v10, v11, v12, v13, v14, v15, v16, v17, v21, v22, v23[0]);
    __swift_project_boxed_opaque_existential_1(v24, v24[3]);
    v18 = OUTLINED_FUNCTION_4_1();
    v19(v18);
    __swift_destroy_boxed_opaque_existential_1Tm(v24);
  }

  else
  {
    OUTLINED_FUNCTION_0_38();
    sub_1D7E9DD24(v23, &qword_1ECA0DD70, &qword_1ECA0DD68, &protocol descriptor for TextEditObserving);
  }
}

Swift::Void __swiftcall StatusBannerContainerController.textEndEditing()()
{
  OUTLINED_FUNCTION_5_26();
  v0 = sub_1D7E0631C(0, &qword_1ECA0DD68, &protocol descriptor for TextEditObserving);
  v8 = OUTLINED_FUNCTION_8_19(v0, v1, v2, v3, v4, v5, v6, v7, v20);
  v10 = OUTLINED_FUNCTION_2_50(v8, v9);
  if (v10)
  {
    OUTLINED_FUNCTION_16_15(v10, v11, v12, v13, v14, v15, v16, v17, v21, v22, v23[0]);
    v18 = v25;
    v19 = v26;
    __swift_project_boxed_opaque_existential_1(v24, v25);
    (*(v19 + 16))(v18, v19);
    __swift_destroy_boxed_opaque_existential_1Tm(v24);
  }

  else
  {
    OUTLINED_FUNCTION_0_38();
    sub_1D7E9DD24(v23, &qword_1ECA0DD70, &qword_1ECA0DD68, &protocol descriptor for TextEditObserving);
  }
}

uint64_t StatusBannerContainerController.backdropGroupName.getter()
{
  OUTLINED_FUNCTION_5_26();
  v0 = sub_1D7E0631C(0, &qword_1EDBB7300, &protocol descriptor for BackdropGroupNameProviding);
  v8 = OUTLINED_FUNCTION_8_19(v0, v1, v2, v3, v4, v5, v6, v7, v22);
  v10 = OUTLINED_FUNCTION_2_50(v8, v9);
  if (v10)
  {
    OUTLINED_FUNCTION_16_15(v10, v11, v12, v13, v14, v15, v16, v17, v23, v24, v25[0]);
    __swift_project_boxed_opaque_existential_1(v26, v26[3]);
    v18 = OUTLINED_FUNCTION_4_1();
    v20 = v19(v18);
    __swift_destroy_boxed_opaque_existential_1Tm(v26);
  }

  else
  {
    OUTLINED_FUNCTION_0_38();
    sub_1D7E9DD24(v25, &unk_1EDBB72F0, &qword_1EDBB7300, &protocol descriptor for BackdropGroupNameProviding);
    return 0;
  }

  return v20;
}

unint64_t sub_1D7F87324()
{
  result = qword_1ECA0E430;
  if (!qword_1ECA0E430)
  {
    sub_1D7E194D0();
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1ECA0E430);
  }

  return result;
}

unint64_t sub_1D7F87388(uint64_t a1)
{
  result = sub_1D7F873B0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D7F873B0()
{
  result = qword_1ECA0E438;
  if (!qword_1ECA0E438)
  {
    type metadata accessor for StatusBannerContainerController();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA0E438);
  }

  return result;
}

id sub_1D7F87458()
{
  v1 = *(v0 + OBJC_IVAR____TtC5TeaUI33BlueprintHorizontalScrollShimView_nextButton);
  if (*(v0 + OBJC_IVAR____TtC5TeaUI33BlueprintHorizontalScrollShimView_hoveringState) < 1)
  {
    [*(v0 + OBJC_IVAR____TtC5TeaUI33BlueprintHorizontalScrollShimView_nextButton) setHidden_];
    v8 = *(v0 + OBJC_IVAR____TtC5TeaUI33BlueprintHorizontalScrollShimView_previousButton);
    v7 = 1;
  }

  else
  {
    v2 = sub_1D7F88DA4(0);
    v3 = v2;
    if (v2)
    {
    }

    [v1 setHidden_];
    v4 = *(v0 + OBJC_IVAR____TtC5TeaUI33BlueprintHorizontalScrollShimView_previousButton);
    v5 = sub_1D7F88DA4(1);
    v6 = v5;
    if (v5)
    {
    }

    v7 = v6 == 0;
    v8 = v4;
  }

  return [v8 setHidden_];
}

char *BlueprintHorizontalScrollShimView.__allocating_init<A, B, C>(blueprintViewController:)(uint64_t *a1)
{
  v2 = v1;
  v4 = *a1;
  v5 = MEMORY[0x1E69E7D40];
  v6 = *MEMORY[0x1E69E7D40];
  swift_beginAccess();
  v7 = *((v6 & v4) + 0x70);
  v8 = *(v7 + 56);
  v9 = *((v6 & v4) + 0x58);
  swift_unknownObjectRetain();
  v10 = v8(v9, v7);
  swift_unknownObjectRelease();
  v11 = (a1 + *((*v5 & *a1) + 0xB0));
  swift_beginAccess();
  v13 = *v11;
  v12 = v11[1];
  objc_allocWithZone(v2);
  swift_unknownObjectRetain();
  v14 = sub_1D7F87680(v10, v13, v12);

  return v14;
}

char *sub_1D7F87680(void *a1, uint64_t a2, void *a3)
{
  v93 = a3;
  v100 = a2;
  ObjectType = swift_getObjectType();
  sub_1D7F89D40(0, v5);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v96 = &v85 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = sub_1D8191D24();
  v102 = *(v95 - 8);
  MEMORY[0x1EEE9AC00](v95);
  v94 = &v85 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = sub_1D8191E04();
  v99 = *(v101 - 8);
  MEMORY[0x1EEE9AC00](v101);
  v98 = &v85 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v97 = &v85 - v11;
  v12 = OBJC_IVAR____TtC5TeaUI33BlueprintHorizontalScrollShimView_shimMaskView;
  *&v3[v12] = [objc_allocWithZone(type metadata accessor for HorizontalScrollShimMaskView()) initWithFrame_];
  v13 = MEMORY[0x1E69E7CC0];
  *&v3[OBJC_IVAR____TtC5TeaUI33BlueprintHorizontalScrollShimView_keyValueObservers] = MEMORY[0x1E69E7CC0];
  *&v3[OBJC_IVAR____TtC5TeaUI33BlueprintHorizontalScrollShimView_hoverGestureRecognizers] = v13;
  v14 = OBJC_IVAR____TtC5TeaUI33BlueprintHorizontalScrollShimView_nextButton;
  v15 = objc_opt_self();
  *&v3[v14] = [v15 buttonWithType_];
  v16 = OBJC_IVAR____TtC5TeaUI33BlueprintHorizontalScrollShimView_previousButton;
  *&v3[v16] = [v15 buttonWithType_];
  *&v3[OBJC_IVAR____TtC5TeaUI33BlueprintHorizontalScrollShimView_hoveringState] = 0;
  v17 = a1;
  v18 = [v17 traitCollection];
  v19 = [v18 userInterfaceIdiom];

  if (v19 <= 6 && ((1 << v19) & 0x62) != 0)
  {
    *&v3[OBJC_IVAR____TtC5TeaUI33BlueprintHorizontalScrollShimView_collectionView] = v17;
    v20 = &v3[OBJC_IVAR____TtC5TeaUI33BlueprintHorizontalScrollShimView_layoutOptionsProvider];
    v21 = v93;
    *v20 = v100;
    v20[1] = v21;
    v105.receiver = v3;
    v105.super_class = ObjectType;
    v93 = v17;
    swift_unknownObjectRetain();
    v22 = objc_msgSendSuper2(&v105, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
    v23 = objc_opt_self();
    v24 = *MEMORY[0x1E69DB970];
    v25 = v22;
    v26 = [v23 systemFontOfSize:28.0 weight:v24];
    v27 = [objc_opt_self() configurationWithFont_];

    if (sub_1D8190B24())
    {
      v28 = v97;
      sub_1D8191DB4();
    }

    else
    {
      v28 = v97;
      sub_1D8191DF4();
    }

    v92 = sub_1D7E0A1A8(0, &qword_1EDBB2F60, 0x1E69DCAB8);
    v29 = sub_1D7E47238(0xD000000000000014, 0x80000001D81CB2F0);
    v30 = [v29 imageByApplyingSymbolConfiguration_];

    sub_1D8191DC4();
    v31 = *(v102 + 13);
    v90 = *MEMORY[0x1E69DC508];
    v102 += 104;
    v89 = v31;
    v31(v94);
    sub_1D8191D34();
    v32 = OBJC_IVAR____TtC5TeaUI33BlueprintHorizontalScrollShimView_previousButton;
    v33 = *&v25[OBJC_IVAR____TtC5TeaUI33BlueprintHorizontalScrollShimView_previousButton];
    v34 = v96;
    v35 = v101;
    v88 = *(v99 + 16);
    v88(v96, v28, v101);
    __swift_storeEnumTagSinglePayload(v34, 0, 1, v35);
    v36 = v33;
    sub_1D8191E24();

    [*&v25[v32] addTarget:v25 action:sel_doPreviousWithButton_ forControlEvents:64];
    v37 = *&v25[v32];
    v38 = objc_opt_self();
    v39 = v37;
    v86 = v38;
    v40 = [v38 labelColor];
    [v39 setTintColor_];

    [*&v25[v32] setPointerInteractionEnabled_];
    [*&v25[v32] setHidden_];
    [*&v25[v32] setPreferredBehavioralStyle_];
    v41 = *&v25[v32];
    type metadata accessor for Localized();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v43 = objc_opt_self();
    v44 = v41;
    v85 = ObjCClassFromMetadata;
    v45 = [v43 bundleForClass_];
    v87 = 0x80000001D81CB310;
    v46 = sub_1D818E514();
    v48 = v47;

    sub_1D806B194(v46, v48, v44);
    sub_1D7F89C88(0xD000000000000014, 0x80000001D81CB340, *&v25[v32]);
    v91 = v32;
    [v25 addSubview_];
    if (sub_1D8190B24())
    {
      v49 = v98;
      sub_1D8191DB4();
    }

    else
    {
      v49 = v98;
      sub_1D8191DF4();
    }

    v50 = sub_1D7E47238(0xD000000000000015, 0x80000001D81CB360);
    v92 = v27;
    v51 = [v50 imageByApplyingSymbolConfiguration_];

    sub_1D8191DC4();
    v89(v94, v90, v95);
    sub_1D8191D34();
    v52 = OBJC_IVAR____TtC5TeaUI33BlueprintHorizontalScrollShimView_nextButton;
    v53 = *&v25[OBJC_IVAR____TtC5TeaUI33BlueprintHorizontalScrollShimView_nextButton];
    v54 = v96;
    v55 = v101;
    v88(v96, v49, v101);
    __swift_storeEnumTagSinglePayload(v54, 0, 1, v55);
    v56 = v53;
    sub_1D8191E24();

    [*&v25[v52] addTarget:v25 action:sel_doNextWithButton_ forControlEvents:64];
    v57 = *&v25[v52];
    v58 = [v86 labelColor];
    [v57 setTintColor_];

    [*&v25[v52] setPointerInteractionEnabled_];
    [*&v25[v52] setHidden_];
    [*&v25[v52] setPreferredBehavioralStyle_];
    v59 = *&v25[v52];
    v60 = [v43 bundleForClass_];
    v61 = sub_1D818E514();
    v63 = v62;

    sub_1D806B194(v61, v63, v59);
    sub_1D7F89C88(0xD000000000000010, 0x80000001D81CB380, *&v25[v52]);
    [v25 addSubview_];
    v64 = v93;
    v104[0] = v93;
    swift_getKeyPath();
    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_1D818E594();

    v65 = OBJC_IVAR____TtC5TeaUI33BlueprintHorizontalScrollShimView_keyValueObservers;
    v66 = swift_beginAccess();
    MEMORY[0x1DA713500](v66);
    sub_1D7E2893C(*((*&v25[v65] & 0xFFFFFFFFFFFFFF8) + 0x10));
    sub_1D8191404();
    swift_endAccess();
    v104[0] = v64;
    swift_getKeyPath();
    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_1D818E594();

    v67 = swift_beginAccess();
    MEMORY[0x1DA713500](v67);
    sub_1D7E2893C(*((*&v25[v65] & 0xFFFFFFFFFFFFFF8) + 0x10));
    sub_1D8191404();
    swift_endAccess();
    sub_1D7E49240();
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D81A7860;
    *(inited + 32) = v25;
    *(inited + 40) = v64;
    v69 = *&v25[v91];
    *(inited + 48) = v69;
    v70 = *&v25[v52];
    *(inited + 56) = v70;
    v102 = sel_doHoveringWithRecognizer_;
    v71 = (inited & 0xC000000000000001) == 0;
    sub_1D7E33DD8(0, v71, inited);
    sub_1D7E33DD8(3, v71, inited);
    v72 = OBJC_IVAR____TtC5TeaUI33BlueprintHorizontalScrollShimView_hoverGestureRecognizers;
    v73 = v69;
    v74 = v70;
    v75 = 0;
    do
    {
      if ((inited & 0xC000000000000001) != 0)
      {
        v76 = MEMORY[0x1DA714420](v75, inited);
      }

      else
      {
        v76 = *(inited + 8 * v75 + 32);
      }

      v77 = v76;
      v104[3] = ObjectType;
      v104[0] = v25;
      v78 = objc_allocWithZone(MEMORY[0x1E69DCAA0]);
      v79 = v25;
      v80 = sub_1D7F89B44(v104, v102);
      [v80 setDelegate_];
      swift_beginAccess();
      v81 = v80;
      MEMORY[0x1DA713500]();
      if (*((*&v25[v72] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v25[v72] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D81913B4();
      }

      ++v75;
      sub_1D8191404();
      swift_endAccess();
      [v77 addGestureRecognizer_];
    }

    while (v75 != 4);

    swift_unknownObjectRelease();
    swift_setDeallocating();
    sub_1D7E72768();
    v82 = *(v99 + 8);
    v83 = v101;
    v82(v98, v101);
    v82(v97, v83);
  }

  else
  {
    swift_unknownObjectRelease();

    swift_deallocPartialClassInstance();
    return 0;
  }

  return v25;
}

void sub_1D7F883DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_1D7F87458();
  }
}

void sub_1D7F88430(double a1)
{
  v2 = OBJC_IVAR____TtC5TeaUI33BlueprintHorizontalScrollShimView_shimMaskView;
  *(v1 + v2) = [objc_allocWithZone(type metadata accessor for HorizontalScrollShimMaskView()) initWithFrame_];
  v3 = MEMORY[0x1E69E7CC0];
  *(v1 + OBJC_IVAR____TtC5TeaUI33BlueprintHorizontalScrollShimView_keyValueObservers) = MEMORY[0x1E69E7CC0];
  *(v1 + OBJC_IVAR____TtC5TeaUI33BlueprintHorizontalScrollShimView_hoverGestureRecognizers) = v3;
  v4 = OBJC_IVAR____TtC5TeaUI33BlueprintHorizontalScrollShimView_nextButton;
  v5 = objc_opt_self();
  *(v1 + v4) = [v5 buttonWithType_];
  v6 = OBJC_IVAR____TtC5TeaUI33BlueprintHorizontalScrollShimView_previousButton;
  *(v1 + v6) = [v5 buttonWithType_];
  *(v1 + OBJC_IVAR____TtC5TeaUI33BlueprintHorizontalScrollShimView_hoveringState) = 0;
  sub_1D81923A4();
  __break(1u);
}

Swift::Void __swiftcall BlueprintHorizontalScrollShimView.layoutSubviews()()
{
  v1 = v0;
  v16.receiver = v0;
  v16.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v16, sel_layoutSubviews);
  v2 = *&v0[OBJC_IVAR____TtC5TeaUI33BlueprintHorizontalScrollShimView_layoutOptionsProvider + 8];
  ObjectType = swift_getObjectType();
  (*(v2 + 8))(__src, ObjectType, v2);
  v4 = *&v0[OBJC_IVAR____TtC5TeaUI33BlueprintHorizontalScrollShimView_shimMaskView];
  memcpy(__dst, __src, 0x235uLL);
  sub_1D7E222B8(__src, v14);
  sub_1D7F887EC(__dst);
  OUTLINED_FUNCTION_1_52();
  [v4 setFrame_];
  v5 = __src[28];
  v6 = *&v1[OBJC_IVAR____TtC5TeaUI33BlueprintHorizontalScrollShimView_collectionView];
  v7 = [v6 superview];
  v8 = [v7 maskView];

  if ((v5 & 1) == 0)
  {
    if (!v8)
    {
      v11 = [v6 superview];
      if (!v11)
      {
        goto LABEL_10;
      }

      v8 = v11;
      [v11 setMaskView_];
    }

    goto LABEL_10;
  }

  if (v8)
  {

    v9 = [v6 superview];
    if (v9)
    {
      v10 = v9;
      [v9 setMaskView_];
    }
  }

LABEL_10:
  OUTLINED_FUNCTION_1_52();
  Height = CGRectGetHeight(v18);
  OUTLINED_FUNCTION_0_67(Height * 0.5);
  OUTLINED_FUNCTION_1_52();
  CGRectGetWidth(v19);
  OUTLINED_FUNCTION_1_52();
  v13 = CGRectGetHeight(v20);
  OUTLINED_FUNCTION_0_67(v13 * 0.5);
  sub_1D7E4C1A0(__src);
}

id sub_1D7F887EC(const void *a1)
{
  memcpy(__dst, &v1[OBJC_IVAR____TtC5TeaUIP33_249AAC274B2539EE5012BFEFBAAE994128HorizontalScrollShimMaskView_layoutOptions], 0x235uLL);
  memcpy(&v1[OBJC_IVAR____TtC5TeaUIP33_249AAC274B2539EE5012BFEFBAAE994128HorizontalScrollShimMaskView_layoutOptions], a1, 0x235uLL);
  sub_1D7E4C1A0(__dst);
  return [v1 setNeedsLayout];
}

void __swiftcall BlueprintHorizontalScrollShimView.hitTest(_:with:)(UIView_optional *__return_ptr retstr, CGPoint _, UIEvent_optional with)
{
  v4 = v3;
  isa = with.value.super.isa;
  y = _.y;
  x = _.x;
  v13.receiver = v3;
  v13.super_class = swift_getObjectType();
  v8 = [(UIView_optional *)&v13 hitTest:isa withEvent:x, y];
  v9 = v8;
  if (!v8 || v8 != *&v4[OBJC_IVAR____TtC5TeaUI33BlueprintHorizontalScrollShimView_nextButton] && v8 != *&v4[OBJC_IVAR____TtC5TeaUI33BlueprintHorizontalScrollShimView_previousButton])
  {
    v10 = *&v4[OBJC_IVAR____TtC5TeaUI33BlueprintHorizontalScrollShimView_collectionView];
    v11 = [v10 superview];
    v12 = [v11 maskView];

    if (!v12 || (v12, [*(*&v4[OBJC_IVAR____TtC5TeaUI33BlueprintHorizontalScrollShimView_shimMaskView] + OBJC_IVAR____TtC5TeaUIP33_249AAC274B2539EE5012BFEFBAAE994128HorizontalScrollShimMaskView_visibleView) frame], v14.x = x, v14.y = y, CGRectContainsPoint(v15, v14)))
    {
      [v4 convertPoint:v10 toCoordinateSpace:{x, y}];
      [v10 hitTest:isa withEvent:?];
    }
  }
}

id sub_1D7F88AA0(char a1)
{
  v2 = v1;
  result = sub_1D7F88DA4(a1 & 1);
  if (result)
  {
    v4 = result;
    v5 = *(v1 + OBJC_IVAR____TtC5TeaUI33BlueprintHorizontalScrollShimView_layoutOptionsProvider + 8);
    ObjectType = swift_getObjectType();
    (*(v5 + 8))(v16, ObjectType, v5);
    v7 = *(v1 + OBJC_IVAR____TtC5TeaUI33BlueprintHorizontalScrollShimView_collectionView);
    [*(v2 + OBJC_IVAR____TtC5TeaUI33BlueprintHorizontalScrollShimView_collectionView) contentOffset];
    v9 = v8;
    [v4 frame];
    v10 = CGRectGetMinX(v17) - *&v16[47] - *&v16[21];
    [v7 contentSize];
    v12 = v11;
    [v7 adjustedContentInset];
    v14 = v12 + v13;
    [v7 bounds];
    v15 = v14 - CGRectGetWidth(v18);
    if (v15 >= v10)
    {
      v15 = v10;
    }

    [v7 setContentOffset:1 animated:{v15, v9}];

    return sub_1D7E4C1A0(v16);
  }

  return result;
}

char *sub_1D7F88CB4(void *a1)
{
  result = [a1 state];
  if ((result - 3) < 2)
  {
    v3 = OBJC_IVAR____TtC5TeaUI33BlueprintHorizontalScrollShimView_hoveringState;
    v4 = *(v1 + OBJC_IVAR____TtC5TeaUI33BlueprintHorizontalScrollShimView_hoveringState);
    v5 = __OFSUB__(v4, 1);
    v6 = v4 - 1;
    if (!v5)
    {
      v7 = v6 & ~(v6 >> 63);
      goto LABEL_6;
    }

    __break(1u);
LABEL_11:
    __break(1u);
    return result;
  }

  if (result != 1)
  {
    return result;
  }

  v3 = OBJC_IVAR____TtC5TeaUI33BlueprintHorizontalScrollShimView_hoveringState;
  v8 = *(v1 + OBJC_IVAR____TtC5TeaUI33BlueprintHorizontalScrollShimView_hoveringState);
  v5 = __OFADD__(v8, 1);
  v7 = v8 + 1;
  if (v5)
  {
    goto LABEL_11;
  }

LABEL_6:
  *(v1 + v3) = v7;

  return sub_1D7F87458();
}

id sub_1D7F88DA4(char a1)
{
  v3 = sub_1D7F89030(v1);
  v6 = v5;
  v7 = v4;
  v9 = v8;
  v10 = -v4;
  if ((a1 & 1) == 0)
  {
    v10 = v4;
  }

  v11 = v3 + v10;
  v12 = [*&v1[OBJC_IVAR____TtC5TeaUI33BlueprintHorizontalScrollShimView_collectionView] collectionViewLayout];
  v13 = [v12 layoutAttributesForElementsInRect_];

  if (v13)
  {
    sub_1D7E0A1A8(0, &qword_1EDBB3020, 0x1E69DC858);
    v14 = sub_1D8191314();
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  v15 = sub_1D7E36AB8(v14);
  for (i = 0; v15 != i; ++i)
  {
    if ((v14 & 0xC000000000000001) != 0)
    {
      v17 = MEMORY[0x1DA714420](i, v14);
    }

    else
    {
      if (i >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_24;
      }

      v17 = *(v14 + 8 * i + 32);
    }

    v18 = v17;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      v19 = MEMORY[0x1DA714420](0, v14);
      goto LABEL_20;
    }

    if ([v17 representedElementCategory])
    {
    }

    else
    {
      sub_1D8192274();
      sub_1D81922B4();
      sub_1D81922C4();
      sub_1D8192284();
    }
  }

  sub_1D7E0A1A8(0, &qword_1EDBB3020, 0x1E69DC858);
  sub_1D7F89CEC();
  v14 = sub_1D8191384();

  if (sub_1D7E36AB8(v14))
  {
    sub_1D7E33DD8(0, (v14 & 0xC000000000000001) == 0, v14);
    if ((v14 & 0xC000000000000001) != 0)
    {
      goto LABEL_25;
    }

    v19 = *(v14 + 32);
LABEL_20:
    v20 = v19;

    return v20;
  }

  return 0;
}

double sub_1D7F89030(char *a1)
{
  v2 = *&a1[OBJC_IVAR____TtC5TeaUI33BlueprintHorizontalScrollShimView_collectionView];
  v3 = [v2 maskView];
  if (v3)
  {

    [*(*&a1[OBJC_IVAR____TtC5TeaUI33BlueprintHorizontalScrollShimView_shimMaskView] + OBJC_IVAR____TtC5TeaUIP33_249AAC274B2539EE5012BFEFBAAE994128HorizontalScrollShimMaskView_visibleView) frame];
    [a1 convertRect:v2 toCoordinateSpace:?];
    return v4;
  }

  else
  {
    v6 = *&a1[OBJC_IVAR____TtC5TeaUI33BlueprintHorizontalScrollShimView_layoutOptionsProvider + 8];
    ObjectType = swift_getObjectType();
    (*(v6 + 8))(v13, ObjectType, v6);
    v8 = *&v13[47];
    v9 = *&v13[49];
    [a1 bounds];
    v10 = CGRectGetWidth(v14) - (v8 + v9);
    [a1 bounds];
    [a1 convertRect:v2 toCoordinateSpace:{v8, 0.0, v10, CGRectGetHeight(v15)}];
    v5 = v11;
    sub_1D7E4C1A0(v13);
  }

  return v5;
}

id BlueprintHorizontalScrollShimView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

char *sub_1D7F8936C(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = OBJC_IVAR____TtC5TeaUIP33_249AAC274B2539EE5012BFEFBAAE994128HorizontalScrollShimMaskView_layoutOptions;
  if (qword_1EDBB8D40 != -1)
  {
    swift_once();
  }

  memcpy(__dst, &word_1EDBB8D50, 0x235uLL);
  memmove(&v4[v10], &word_1EDBB8D50, 0x235uLL);
  v11 = OBJC_IVAR____TtC5TeaUIP33_249AAC274B2539EE5012BFEFBAAE994128HorizontalScrollShimMaskView_leftMaskView;
  v12 = type metadata accessor for GradientView();
  v13 = objc_allocWithZone(v12);
  sub_1D7E222B8(__dst, &v33);
  *&v4[v11] = [v13 initWithFrame_];
  v14 = OBJC_IVAR____TtC5TeaUIP33_249AAC274B2539EE5012BFEFBAAE994128HorizontalScrollShimMaskView_visibleView;
  *&v4[v14] = [objc_allocWithZone(MEMORY[0x1E69DD250]) initWithFrame_];
  v15 = OBJC_IVAR____TtC5TeaUIP33_249AAC274B2539EE5012BFEFBAAE994128HorizontalScrollShimMaskView_rightMaskView;
  *&v4[v15] = [objc_allocWithZone(v12) initWithFrame_];
  v32.receiver = v4;
  v32.super_class = ObjectType;
  v16 = objc_msgSendSuper2(&v32, sel_initWithFrame_, a1, a2, a3, a4);
  v17 = objc_opt_self();
  v18 = v16;
  v19 = [v17 clearColor];
  [v18 setBackgroundColor_];

  v20 = OBJC_IVAR____TtC5TeaUIP33_249AAC274B2539EE5012BFEFBAAE994128HorizontalScrollShimMaskView_leftMaskView;
  v21 = *&v18[OBJC_IVAR____TtC5TeaUIP33_249AAC274B2539EE5012BFEFBAAE994128HorizontalScrollShimMaskView_leftMaskView];
  sub_1D7E49240();
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1D81A5090;
  v23 = v21;
  *(v22 + 32) = [v17 &selRef_disappearingViewController];
  *(v22 + 40) = [v17 whiteColor];
  v33 = v22;
  v34 = xmmword_1D81A74D0;
  v36 = 0;
  v37 = 0;
  v35 = 0;
  v38 = 1;
  v39 = 0;
  v40 = 0;
  v41 = 1;
  GradientView.gradientDescriptor.setter(&v33);

  v24 = OBJC_IVAR____TtC5TeaUIP33_249AAC274B2539EE5012BFEFBAAE994128HorizontalScrollShimMaskView_visibleView;
  v25 = *&v18[OBJC_IVAR____TtC5TeaUIP33_249AAC274B2539EE5012BFEFBAAE994128HorizontalScrollShimMaskView_visibleView];
  v26 = [v17 whiteColor];
  [v25 setBackgroundColor_];

  v27 = OBJC_IVAR____TtC5TeaUIP33_249AAC274B2539EE5012BFEFBAAE994128HorizontalScrollShimMaskView_rightMaskView;
  v28 = *&v18[OBJC_IVAR____TtC5TeaUIP33_249AAC274B2539EE5012BFEFBAAE994128HorizontalScrollShimMaskView_rightMaskView];
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_1D81A5090;
  v30 = v28;
  *(v29 + 32) = [v17 whiteColor];
  *(v29 + 40) = [v17 clearColor];
  v33 = v29;
  v34 = xmmword_1D81A74D0;
  v36 = 0;
  v37 = 0;
  v35 = 0;
  v38 = 1;
  v39 = 0;
  v40 = 0;
  v41 = 1;
  GradientView.gradientDescriptor.setter(&v33);

  [v18 addSubview_];
  [v18 addSubview_];
  [v18 addSubview_];

  return v18;
}

void sub_1D7F8974C()
{
  v1 = OBJC_IVAR____TtC5TeaUIP33_249AAC274B2539EE5012BFEFBAAE994128HorizontalScrollShimMaskView_layoutOptions;
  if (qword_1EDBB8D40 != -1)
  {
    swift_once();
  }

  memcpy(__dst, &word_1EDBB8D50, 0x235uLL);
  memmove((v0 + v1), &word_1EDBB8D50, 0x235uLL);
  v2 = OBJC_IVAR____TtC5TeaUIP33_249AAC274B2539EE5012BFEFBAAE994128HorizontalScrollShimMaskView_leftMaskView;
  v3 = type metadata accessor for GradientView();
  v4 = objc_allocWithZone(v3);
  sub_1D7E222B8(__dst, v7);
  *(v0 + v2) = [v4 initWithFrame_];
  v5 = OBJC_IVAR____TtC5TeaUIP33_249AAC274B2539EE5012BFEFBAAE994128HorizontalScrollShimMaskView_visibleView;
  *(v0 + v5) = [objc_allocWithZone(MEMORY[0x1E69DD250]) initWithFrame_];
  v6 = OBJC_IVAR____TtC5TeaUIP33_249AAC274B2539EE5012BFEFBAAE994128HorizontalScrollShimMaskView_rightMaskView;
  *(v0 + v6) = [objc_allocWithZone(v3) initWithFrame_];
  sub_1D81923A4();
  __break(1u);
}

id sub_1D7F898E0()
{
  v12.receiver = v0;
  v12.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v12, sel_layoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtC5TeaUIP33_249AAC274B2539EE5012BFEFBAAE994128HorizontalScrollShimMaskView_layoutOptions + 168];
  v2 = *&v0[OBJC_IVAR____TtC5TeaUIP33_249AAC274B2539EE5012BFEFBAAE994128HorizontalScrollShimMaskView_layoutOptions + 184];
  v3 = *&v0[OBJC_IVAR____TtC5TeaUIP33_249AAC274B2539EE5012BFEFBAAE994128HorizontalScrollShimMaskView_layoutOptions + 376];
  v4 = *&v0[OBJC_IVAR____TtC5TeaUIP33_249AAC274B2539EE5012BFEFBAAE994128HorizontalScrollShimMaskView_layoutOptions + 392];
  v5 = *&v0[OBJC_IVAR____TtC5TeaUIP33_249AAC274B2539EE5012BFEFBAAE994128HorizontalScrollShimMaskView_leftMaskView];
  [v0 bounds];
  [v5 setFrame_];
  v6 = *&v0[OBJC_IVAR____TtC5TeaUIP33_249AAC274B2539EE5012BFEFBAAE994128HorizontalScrollShimMaskView_visibleView];
  [v5 frame];
  MaxX = CGRectGetMaxX(v14);
  [v0 bounds];
  v8 = CGRectGetWidth(v15) - (v3 + v4) - (v1 + v2);
  [v0 bounds];
  [v6 setFrame_];
  v9 = *&v0[OBJC_IVAR____TtC5TeaUIP33_249AAC274B2539EE5012BFEFBAAE994128HorizontalScrollShimMaskView_rightMaskView];
  [v6 frame];
  v10 = CGRectGetMaxX(v17);
  [v0 bounds];
  return [v9 setFrame_];
}

id sub_1D7F89B44(void *a1, uint64_t a2)
{
  v4 = a1[3];
  if (v4)
  {
    v6 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v7 = *(v4 - 8);
    v8 = MEMORY[0x1EEE9AC00](v6);
    v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v7 + 16))(v10, v8);
    v11 = sub_1D8192614();
    (*(v7 + 8))(v10, v4);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    v11 = 0;
  }

  v12 = [v2 initWithTarget:v11 action:a2];
  swift_unknownObjectRelease();
  return v12;
}

void sub_1D7F89C88(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1D8190EE4();

  [a3 setAccessibilityIdentifier_];
}

unint64_t sub_1D7F89CEC()
{
  result = qword_1ECA0E510;
  if (!qword_1ECA0E510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA0E510);
  }

  return result;
}

void sub_1D7F89D40(uint64_t a1, double a2)
{
  if (!qword_1EDBAE428)
  {
    sub_1D8191E04();
    v2 = sub_1D8191E84();
    if (!v3)
    {
      atomic_store(v2, &qword_1EDBAE428);
    }
  }
}

id keypath_getTm@<X0>(id *a1@<X0>, SEL *a2@<X3>, void *a3@<X8>)
{
  result = [*a1 *a2];
  *a3 = v5;
  a3[1] = v6;
  return result;
}

uint64_t PillViewStyler.__allocating_init(colorPalette:)(__int128 *a1)
{
  v2 = swift_allocObject();
  sub_1D7E05450(a1, v2 + 16);
  return v2;
}

void PillViewStyler.style(contentView:size:)(void *a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  __swift_project_boxed_opaque_existential_1((v2 + 16), *(v2 + 40));
  v5 = OUTLINED_FUNCTION_1_53();
  v7 = v6(v5);
  [a1 setBackgroundColor_];

  v8 = OUTLINED_FUNCTION_3_50();
  [v8 setCornerCurve_];

  v14 = OUTLINED_FUNCTION_3_50();
  [a1 frame];
  v13 = 14.0;
  if (v4 <= 1)
  {
    v13 = CGRectGetHeight(*&v9) * 0.5;
  }

  [v14 setCornerRadius_];
}

void PillViewStyler.style(contentView:size:isSelected:)(void *a1, uint64_t a2, char a3)
{
  v5 = *(a2 + 32);
  if (a3)
  {
    v6 = objc_opt_self();
    v7 = [v6 blackColor];
    v8 = [v6 whiteColor];
    v9 = [v6 ts:v7 dynamicColor:v8 withDarkStyleVariant:?];
  }

  else
  {
    __swift_project_boxed_opaque_existential_1((v3 + 16), *(v3 + 40));
    v10 = OUTLINED_FUNCTION_1_53();
    v9 = v11(v10);
  }

  [a1 setBackgroundColor_];

  v12 = OUTLINED_FUNCTION_3_50();
  [v12 setCornerCurve_];

  v18 = OUTLINED_FUNCTION_3_50();
  [a1 frame];
  v17 = 14.0;
  if (v5 <= 1)
  {
    v17 = CGRectGetHeight(*&v13) * 0.5;
  }

  [v18 setCornerRadius_];
}

id PillViewStyler.styled(title:size:tintColor:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = *(a3 + 32);
  v5 = *(a3 + 16);
  v7[0] = *a3;
  v7[1] = v5;
  v8 = v4;
  return sub_1D7F8A140(a1, a2, v7, a4);
}

id sub_1D7F8A140(uint64_t a1, uint64_t a2, __int128 *a3, void *a4)
{
  v5 = v4;
  v10 = *(a3 + 32);
  sub_1D7F854E8(0);
  v31 = a3[1];
  v32 = *a3;
  inited = swift_initStackObject();
  v12 = MEMORY[0x1E69DB648];
  *(inited + 16) = xmmword_1D819FAC0;
  v13 = *v12;
  *(inited + 32) = v13;
  v34[0] = v32;
  v34[1] = v31;
  v35 = v10;
  v14 = v13;
  v15 = sub_1D7F8A9DC(v34);
  v16 = sub_1D7E0A1A8(0, &qword_1EDBB2FE0, 0x1E69DB878);
  *(inited + 40) = v15;
  v17 = *MEMORY[0x1E69DB650];
  *(inited + 64) = v16;
  *(inited + 72) = v17;
  *(inited + 104) = sub_1D7E0A1A8(0, &qword_1EDBB2F68, 0x1E69DC888);
  if (a4)
  {
    *(inited + 80) = a4;
    v18 = v17;
  }

  else
  {
    v33 = a1;
    v19 = v5[5];
    v20 = v5[6];
    __swift_project_boxed_opaque_existential_1(v5 + 2, v19);
    v21 = *(v20 + 16);
    v22 = v17;
    v23 = v21(v19, v20);
    v24 = v5[5];
    v25 = v5[6];
    __swift_project_boxed_opaque_existential_1(v5 + 2, v24);
    v26 = (*(v25 + 24))(v24, v25);
    if (UIAccessibilityDarkerSystemColorsEnabled())
    {
      LOBYTE(v34[0]) = 1;
      v27 = sub_1D808DCF0(v23, v26, v34);

      v23 = v27;
    }

    else
    {
    }

    *(inited + 80) = v23;
    a1 = v33;
  }

  type metadata accessor for Key();
  sub_1D7E4DB28();
  v28 = a4;
  v29 = sub_1D8190D94();
  objc_allocWithZone(MEMORY[0x1E696AAB0]);
  sub_1D8190DB4();
  return sub_1D7F3A980(a1, a2, v29);
}

id PillViewStyler.styled(title:size:isSelected:tintColor:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    OUTLINED_FUNCTION_2_51();
    return sub_1D7F8A3A4(v4, v5, v6);
  }

  else
  {
    OUTLINED_FUNCTION_2_51();
    return sub_1D7F8A140(v8, v9, v10, v11);
  }
}

id sub_1D7F8A3A4(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v6 = *(a3 + 32);
  sub_1D7F854E8(0);
  v22 = a3[1];
  v23 = *a3;
  inited = swift_initStackObject();
  v8 = MEMORY[0x1E69DB648];
  *(inited + 16) = xmmword_1D819FAC0;
  v9 = *v8;
  *(inited + 32) = *v8;
  v24[1] = v22;
  v24[0] = v23;
  v25 = v6;
  sub_1D8190DB4();
  v10 = v9;
  v11 = sub_1D7F8A9DC(v24);
  v12 = sub_1D7E0A1A8(0, &qword_1EDBB2FE0, 0x1E69DB878);
  *(inited + 40) = v11;
  v13 = *MEMORY[0x1E69DB650];
  *(inited + 64) = v12;
  *(inited + 72) = v13;
  v14 = objc_opt_self();
  v15 = v13;
  v16 = [v14 whiteColor];
  v17 = [v14 blackColor];
  v18 = [v14 ts:v16 dynamicColor:v17 withDarkStyleVariant:?];

  *(inited + 104) = sub_1D7E0A1A8(0, &qword_1EDBB2F68, 0x1E69DC888);
  *(inited + 80) = v18;
  type metadata accessor for Key();
  sub_1D7E4DB28();
  v19 = sub_1D8190D94();
  v20 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  return sub_1D7F3A980(a1, a2, v19);
}

void _s5TeaUI14PillViewStylerC5style09iconImageD09tintColoryAA0hD0C_So7UIColorCtF_0(void *a1, void *a2)
{
  if (a2)
  {
    v5 = a2;
  }

  else
  {
    v6 = v2[5];
    v7 = v2[6];
    __swift_project_boxed_opaque_existential_1(v2 + 2, v6);
    v5 = (*(v7 + 8))(v6, v7);
  }

  v8 = v2[5];
  v9 = v2[6];
  __swift_project_boxed_opaque_existential_1(v2 + 2, v8);
  v10 = *(v9 + 24);
  v11 = a2;
  v14 = v10(v8, v9);
  if (UIAccessibilityDarkerSystemColorsEnabled())
  {
    v16 = 1;
    v12 = sub_1D808DCF0(v5, v14, &v16);
  }

  else
  {
    v12 = v5;
  }

  v13 = v12;
  [a1 setTintColor_];

  [a1 setBackgroundColor_];
}

void PillViewStyler.style(iconImageView:isSelected:)(void *a1, char a2)
{
  if (a2)
  {
    sub_1D7F8A6AC(a1);
  }

  else
  {
    OUTLINED_FUNCTION_0_68(a1);
  }
}

void sub_1D7F8A6AC(void *a1)
{
  v2 = objc_opt_self();
  v3 = [v2 whiteColor];
  v4 = [v2 blackColor];
  v5 = [v2 ts:v3 dynamicColor:v4 withDarkStyleVariant:?];

  [a1 setTintColor_];
}

uint64_t PillViewStyler.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return swift_deallocClassInstance();
}

id sub_1D7F8A9DC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = dbl_1D81A8B78[v1];
  v3 = [objc_allocWithZone(MEMORY[0x1E69DCA40]) initForTextStyle_];
  v4 = [objc_opt_self() systemFontOfSize:v2 weight:*MEMORY[0x1E69DB958]];
  v5 = [v3 scaledFontForFont_];

  return v5;
}

uint64_t ToolbarManager.isToolbarEnabled.getter(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC5TeaUI14ToolbarManager_isToolbarEnabled;
  OUTLINED_FUNCTION_1_0(a1);
  return *(v1 + v2);
}

void sub_1D7F8AADC(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC5TeaUI14ToolbarManager_isToolbarEnabled;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t ToolbarManager.isToolbarEnabled.setter(uint64_t a1)
{
  v2 = a1;
  v3 = OBJC_IVAR____TtC5TeaUI14ToolbarManager_isToolbarEnabled;
  result = OUTLINED_FUNCTION_5_0(a1);
  *(v1 + v3) = v2;
  return result;
}

uint64_t ToolbarManager.isToolbarVisible.getter(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC5TeaUI14ToolbarManager_isToolbarVisible;
  OUTLINED_FUNCTION_1_0(a1);
  return *(v1 + v2);
}

void sub_1D7F8ABF8(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC5TeaUI14ToolbarManager_isToolbarVisible;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t ToolbarManager.isToolbarVisible.setter(uint64_t a1)
{
  v2 = a1;
  v3 = OBJC_IVAR____TtC5TeaUI14ToolbarManager_isToolbarVisible;
  result = OUTLINED_FUNCTION_5_0(a1);
  *(v1 + v3) = v2;
  return result;
}

double sub_1D7F8AD20@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = a1;
  a4[1] = a2;
  a4[2] = a3;
  sub_1D8190DB4();

  sub_1D8190DB4();
  return result;
}

id ToolbarManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ToolbarManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D7F8B0FC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

uint64_t sub_1D7F8B13C(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

id BlueprintCollectionViewCompositionalListLayout.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id BlueprintCollectionViewCompositionalListLayout.__allocating_init(section:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithSection_];

  return v3;
}

id BlueprintCollectionViewCompositionalListLayout.__allocating_init(section:configuration:)()
{
  v2 = [OUTLINED_FUNCTION_2_52() initWithSection:v1 configuration:v0];

  return v2;
}

void sub_1D7F8B380(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v5 = a3;
  v6 = a4;
  BlueprintCollectionViewCompositionalListLayout.init(section:configuration:)();
}

id BlueprintCollectionViewCompositionalListLayout.__allocating_init(sectionProvider:)()
{
  v2 = OUTLINED_FUNCTION_2_52();
  v8 = v1;
  v9 = v0;
  OUTLINED_FUNCTION_2_1();
  v7[1] = 1107296256;
  OUTLINED_FUNCTION_0_70();
  v7[2] = v3;
  v7[3] = &block_descriptor_3;
  v4 = _Block_copy(v7);
  v5 = [v2 initWithSectionProvider_];
  _Block_release(v4);

  return v5;
}

void sub_1D7F8B460(int a1, int a2, void *aBlock)
{
  _Block_copy(aBlock);
  swift_allocObject();
  BlueprintCollectionViewCompositionalListLayout.init(sectionProvider:)();
}

id BlueprintCollectionViewCompositionalListLayout.__allocating_init(sectionProvider:configuration:)(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = objc_allocWithZone(v3);
  v12[4] = a1;
  v12[5] = a2;
  OUTLINED_FUNCTION_2_1();
  v12[1] = 1107296256;
  OUTLINED_FUNCTION_0_70();
  v12[2] = v8;
  v12[3] = &block_descriptor_6_0;
  v9 = _Block_copy(v12);
  v10 = [v7 initWithSectionProvider:v9 configuration:a3];

  _Block_release(v9);

  return v10;
}

void sub_1D7F8B564(int a1, int a2, void *aBlock, void *a4)
{
  _Block_copy(aBlock);
  swift_allocObject();
  v5 = a4;
  BlueprintCollectionViewCompositionalListLayout.init(sectionProvider:configuration:)();
}

id BlueprintCollectionViewCompositionalListLayout.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

double sub_1D7F8B5D4(char *a1)
{
  (*(*(*((*MEMORY[0x1E69E7D40] & *a1) + 0x50) - 8) + 8))(&a1[*((*MEMORY[0x1E69E7D40] & *a1) + 0x80)]);

  return result;
}

void sub_1D7F8B6D4(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC5TeaUI24SectionViewBarButtonItem_barBackgroundColor);
  *(v1 + OBJC_IVAR____TtC5TeaUI24SectionViewBarButtonItem_barBackgroundColor) = a1;
  v3 = a1;

  sub_1D7F8BBD4();
}

double sub_1D7F8B72C(uint64_t a1, uint64_t a2)
{
  v4 = (v2 + OBJC_IVAR____TtC5TeaUI24SectionViewBarButtonItem_onCreateMenuBlock);
  v6 = *(v2 + OBJC_IVAR____TtC5TeaUI24SectionViewBarButtonItem_onCreateMenuBlock);
  v5 = *(v2 + OBJC_IVAR____TtC5TeaUI24SectionViewBarButtonItem_onCreateMenuBlock + 8);
  *v4 = a1;
  v4[1] = a2;
  sub_1D7E0E10C(v6, v5);

  return result;
}

void sub_1D7F8B790()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_1D818E514();
  v4 = v3;

  qword_1EDBC5FD8 = v2;
  unk_1EDBC5FE0 = v4;
}

uint64_t sub_1D7F8B854()
{
  v1 = v0;
  sub_1D7F8C958(0, &qword_1EDBB20E0, MEMORY[0x1E6968848]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v18 - v3;
  sub_1D7F8C958(0, &qword_1EDBAE428, MEMORY[0x1E69DC598]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v18 - v9;
  v11 = *(v0 + OBJC_IVAR____TtC5TeaUI24SectionViewBarButtonItem_collapsingButton);
  v12 = OBJC_IVAR____TtC5TeaUI16CollapsingButton_configuration;
  swift_beginAccess();
  sub_1D7F8CA00(v11 + v12, v10);
  v13 = sub_1D8191E04();
  if (!__swift_getEnumTagSinglePayload(v10, 1, v13))
  {
    sub_1D7F8BA7C();
    v14 = sub_1D818E4E4();
    __swift_storeEnumTagSinglePayload(v4, 0, 1, v14);
    sub_1D8191D54();
  }

  sub_1D7F8CA00(v10, v7);
  CollapsingButton.configuration.setter(v7);
  if (*(v1 + OBJC_IVAR____TtC5TeaUI24SectionViewBarButtonItem_text + 8))
  {
    v15 = *(v1 + OBJC_IVAR____TtC5TeaUI24SectionViewBarButtonItem_text);
    v16 = *(v1 + OBJC_IVAR____TtC5TeaUI24SectionViewBarButtonItem_text + 8);
  }

  else
  {
    if (qword_1EDBB0350 != -1)
    {
      OUTLINED_FUNCTION_0_71(&qword_1EDBB0350);
    }

    v15 = qword_1EDBC5FD8;
    v16 = unk_1EDBC5FE0;
    sub_1D8190DB4();
  }

  sub_1D8190DB4();
  sub_1D806B194(v15, v16, v11);
  return sub_1D7F8CA80(v10);
}

uint64_t sub_1D7F8BA7C()
{
  v1 = sub_1D818E534();
  MEMORY[0x1EEE9AC00](v1 - 8);
  if (!*(v0 + OBJC_IVAR____TtC5TeaUI24SectionViewBarButtonItem_text + 8))
  {
    if (qword_1EDBB0350 != -1)
    {
      swift_once();
    }

    sub_1D8190DB4();
  }

  sub_1D8190DB4();
  sub_1D818E524();
  sub_1D818E4F4();
  [objc_opt_self() systemFontOfSize:13.0 weight:*MEMORY[0x1E69DB958]];
  sub_1D7F8C9AC();
  return sub_1D818E504();
}

uint64_t sub_1D7F8BBD4()
{
  sub_1D7F8C958(0, &qword_1EDBAE428, MEMORY[0x1E69DC598]);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v13 - v5;
  v7 = *(v0 + OBJC_IVAR____TtC5TeaUI24SectionViewBarButtonItem_collapsingButton);
  v8 = OBJC_IVAR____TtC5TeaUI16CollapsingButton_configuration;
  swift_beginAccess();
  sub_1D7F8CA00(v7 + v8, v6);
  v9 = sub_1D8191E04();
  if (!__swift_getEnumTagSinglePayload(v6, 1, v9))
  {
    v10 = *(v0 + OBJC_IVAR____TtC5TeaUI24SectionViewBarButtonItem_barBackgroundColor);
    if (v10)
    {
      v11 = v10;
      UIColor.barButtonBackgroundColor.getter();
    }

    sub_1D8191D64();
  }

  sub_1D7F8CA00(v6, v3);
  CollapsingButton.configuration.setter(v3);
  return sub_1D7F8CA80(v6);
}

void sub_1D7F8BD38()
{
  v1 = *(v0 + OBJC_IVAR____TtC5TeaUI24SectionViewBarButtonItem_position);
  v2 = *(v0 + OBJC_IVAR____TtC5TeaUI24SectionViewBarButtonItem_collapsingButton);
  v3 = OBJC_IVAR____TtC5TeaUI16CollapsingButton_anchor;
  v4 = (v1 & 1) != 0;
  swift_beginAccess();
  *(v2 + v3) = v4;
}

uint64_t sub_1D7F8BDB4()
{
  v1 = sub_1D818FF24();
  v34 = *(v1 - 8);
  v35 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v33 = &v32 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v32 - v4;
  sub_1D7F8C958(0, &qword_1EDBAE428, MEMORY[0x1E69DC598]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v37 = &v32 - v7;
  sub_1D7F8C958(0, &qword_1EDBB20E0, MEMORY[0x1E6968848]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v32 - v9;
  v11 = sub_1D8191D24();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_1D8191E04();
  v15 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7E0A1A8(0, &qword_1EDBB2F60, 0x1E69DCAB8);
  v18 = [objc_opt_self() configurationWithPointSize:7 weight:2 scale:13.0];
  v19 = sub_1D7E6FE24(0xD000000000000010, 0x80000001D81CB780, v18);
  if (*(v0 + OBJC_IVAR____TtC5TeaUI24SectionViewBarButtonItem_sectionSelectorStyle))
  {
    sub_1D818FF14();
    v20 = [objc_opt_self() ts_floatingTabBarEffect];
    sub_1D818FEF4();
    sub_1D8191DD4();
    (*(v12 + 104))(v14, *MEMORY[0x1E69DC508], v11);
    sub_1D8191D34();
    v21 = v19;
    sub_1D8191DC4();
    sub_1D8191D44();
    sub_1D7F8BA7C();
    v22 = sub_1D818E4E4();
    __swift_storeEnumTagSinglePayload(v10, 0, 1, v22);
    sub_1D8191D54();
    v23 = v34;
    v24 = v35;
    (*(v34 + 16))(v33, v5, v35);
    sub_1D8191D14();
    v26 = v36;
    v25 = v37;
    (*(v15 + 16))(v37, v17, v36);
    __swift_storeEnumTagSinglePayload(v25, 0, 1, v26);
    CollapsingButton.configuration.setter(v25);

    (*(v15 + 8))(v17, v26);
    return (*(v23 + 8))(v5, v24);
  }

  else
  {
    sub_1D8191DA4();
    (*(v12 + 104))(v14, *MEMORY[0x1E69DC508], v11);
    sub_1D8191D34();
    v28 = v19;
    sub_1D8191DC4();
    sub_1D8191D44();
    sub_1D7F8BA7C();
    v29 = sub_1D818E4E4();
    __swift_storeEnumTagSinglePayload(v10, 0, 1, v29);
    sub_1D8191D54();
    v31 = v36;
    v30 = v37;
    (*(v15 + 16))(v37, v17, v36);
    __swift_storeEnumTagSinglePayload(v30, 0, 1, v31);
    CollapsingButton.configuration.setter(v30);

    return (*(v15 + 8))(v17, v31);
  }
}

char *sub_1D7F8C318()
{
  ObjectType = swift_getObjectType();
  v2 = &v0[OBJC_IVAR____TtC5TeaUI24SectionViewBarButtonItem_text];
  *v2 = 0;
  v2[1] = 0;
  *&v0[OBJC_IVAR____TtC5TeaUI24SectionViewBarButtonItem_barBackgroundColor] = 0;
  v0[OBJC_IVAR____TtC5TeaUI24SectionViewBarButtonItem_position] = 0;
  v0[OBJC_IVAR____TtC5TeaUI24SectionViewBarButtonItem_sectionSelectorStyle] = 0;
  v3 = OBJC_IVAR____TtC5TeaUI24SectionViewBarButtonItem_collapsingButton;
  *&v0[v3] = [objc_allocWithZone(type metadata accessor for CollapsingButton(0)) init];
  v4 = &v0[OBJC_IVAR____TtC5TeaUI24SectionViewBarButtonItem_onCreateMenuBlock];
  *v4 = 0;
  v4[1] = 0;
  v34.receiver = v0;
  v34.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v34, sel_init);
  if ((sub_1D8190B24() & 1) == 0)
  {
    sub_1D7F8BDB4();
    v11 = OBJC_IVAR____TtC5TeaUI24SectionViewBarButtonItem_collapsingButton;
    v12 = *&v5[OBJC_IVAR____TtC5TeaUI24SectionViewBarButtonItem_collapsingButton];
    sub_1D7E0A1A8(0, &unk_1EDBB2FD0, 0x1E69DCC60);
    v13 = v12;
    isa = UIMenu.init(children:)(MEMORY[0x1E69E7CC0]).super.super.isa;
    [*&v13[OBJC_IVAR____TtC5TeaUI16CollapsingButton_button] setMenu_];

    v15 = *(*(*&v5[v11] + OBJC_IVAR____TtC5TeaUI16CollapsingButton_button) + OBJC_IVAR____TtC5TeaUI12ActionButton_onMenuPresentation);
    v16 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v17 = v15;

    v18 = *&v5[v11];
    v19 = *&v5[OBJC_IVAR____TtC5TeaUI24SectionViewBarButtonItem_text];
    v20 = *&v5[OBJC_IVAR____TtC5TeaUI24SectionViewBarButtonItem_text + 8];
    if (v20)
    {
      v21 = v18;
      v22 = v20;
    }

    else
    {
      type metadata accessor for Localized();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v24 = objc_opt_self();
      v25 = v18;
      v26 = [v24 bundleForClass_];
      v19 = sub_1D818E514();
      v22 = v27;
    }

    sub_1D8190DB4();
    sub_1D806B194(v19, v22, v18);

    [v5 setCustomView_];
    return v5;
  }

  sub_1D7E0A1A8(0, &qword_1EDBB2F60, 0x1E69DCAB8);
  v6 = v5;
  result = sub_1D7E47238(0xD000000000000010, 0x80000001D81CB780);
  if (result)
  {
    v8 = result;
    [v6 setImage_];

    v9 = &v6[OBJC_IVAR____TtC5TeaUI24SectionViewBarButtonItem_text];
    if (*&v6[OBJC_IVAR____TtC5TeaUI24SectionViewBarButtonItem_text + 8])
    {
      sub_1D8190DB4();
      v10 = sub_1D8190EE4();
    }

    else
    {
      v10 = 0;
    }

    [v6 setTitle_];

    v28 = v9[1];
    if (v28)
    {
      v29 = *v9;
      v30 = v6;
      v31 = v28;
    }

    else
    {
      v32 = qword_1EDBB0350;
      v33 = v6;
      if (v32 != -1)
      {
        OUTLINED_FUNCTION_0_71(&qword_1EDBB0350);
      }

      v29 = qword_1EDBC5FD8;
      v31 = unk_1EDBC5FE0;
      sub_1D8190DB4();
    }

    sub_1D8190DB4();
    sub_1D806B194(v29, v31, v6);

    return v5;
  }

  __break(1u);
  return result;
}

void sub_1D7F8C6E8(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = *(Strong + OBJC_IVAR____TtC5TeaUI24SectionViewBarButtonItem_onCreateMenuBlock);
    if (v3)
    {
      v4 = *(Strong + OBJC_IVAR____TtC5TeaUI24SectionViewBarButtonItem_onCreateMenuBlock + 8);

      v6 = v3(v5);
      sub_1D7E0E10C(v3, v4);
      if (v6)
      {
        [*(*&v2[OBJC_IVAR____TtC5TeaUI24SectionViewBarButtonItem_collapsingButton] + OBJC_IVAR____TtC5TeaUI16CollapsingButton_button) setMenu_];

        v2 = v6;
      }
    }
  }
}

void sub_1D7F8C7D4()
{
  v1 = (v0 + OBJC_IVAR____TtC5TeaUI24SectionViewBarButtonItem_text);
  *v1 = 0;
  v1[1] = 0;
  *(v0 + OBJC_IVAR____TtC5TeaUI24SectionViewBarButtonItem_barBackgroundColor) = 0;
  *(v0 + OBJC_IVAR____TtC5TeaUI24SectionViewBarButtonItem_position) = 0;
  *(v0 + OBJC_IVAR____TtC5TeaUI24SectionViewBarButtonItem_sectionSelectorStyle) = 0;
  v2 = OBJC_IVAR____TtC5TeaUI24SectionViewBarButtonItem_collapsingButton;
  *(v0 + v2) = [objc_allocWithZone(type metadata accessor for CollapsingButton(0)) init];
  v3 = (v0 + OBJC_IVAR____TtC5TeaUI24SectionViewBarButtonItem_onCreateMenuBlock);
  *v3 = 0;
  v3[1] = 0;
  sub_1D81923A4();
  __break(1u);
}

void sub_1D7F8C958(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D8191E84();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1D7F8C9AC()
{
  result = qword_1EDBB20E8;
  if (!qword_1EDBB20E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBB20E8);
  }

  return result;
}

uint64_t sub_1D7F8CA00(uint64_t a1, uint64_t a2)
{
  sub_1D7F8C958(0, &qword_1EDBAE428, MEMORY[0x1E69DC598]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D7F8CA80(uint64_t a1)
{
  sub_1D7F8C958(0, &qword_1EDBAE428, MEMORY[0x1E69DC598]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_1D7F8CB38(uint64_t a1, void *a2, void (*a3)(uint64_t))
{
  v5 = *(v3 + *a2);
  *(v3 + *a2) = a1;

  a3(v5);

  return result;
}

id sub_1D7F8CB9C(double a1, double a2)
{
  v3 = (v2 + OBJC_IVAR____TtC5TeaUI15ShineImageLayer_shineOffset);
  v4 = *(v2 + OBJC_IVAR____TtC5TeaUI15ShineImageLayer_shineOffset);
  v5 = *(v2 + OBJC_IVAR____TtC5TeaUI15ShineImageLayer_shineOffset + 8);
  *v3 = a1;
  v3[1] = a2;
  return sub_1D7F8CDDC(v4, v5);
}

id sub_1D7F8CBBC(double a1)
{
  v2 = *&v1[OBJC_IVAR____TtC5TeaUI15ShineImageLayer_shineScale];
  *&v1[OBJC_IVAR____TtC5TeaUI15ShineImageLayer_shineScale] = a1;
  if (*&v1[OBJC_IVAR____TtC5TeaUI15ShineImageLayer_shineScale] != v2)
  {
    return [v1 setNeedsLayout];
  }

  return result;
}

uint64_t sub_1D7F8CBF0(uint64_t result)
{
  v2 = *&v1[OBJC_IVAR____TtC5TeaUI15ShineImageLayer_shineOptions];
  if (!result)
  {
    if (!v2)
    {
      return result;
    }

    goto LABEL_10;
  }

  if (!v2 || ((v3 = result, result = *(result + 16), result == *(v2 + 16)) ? (v4 = *(v3 + 24) == *(v2 + 24)) : (v4 = 0), !v4 && (result = sub_1D8192634(), (result & 1) == 0)))
  {
LABEL_10:

    return [v1 setNeedsLayout];
  }

  return result;
}

void sub_1D7F8CC68(uint64_t a1)
{
  v2 = v1;
  if (a1)
  {
    v3 = *(a1 + 16);
    v4 = v3;
  }

  else
  {
    v3 = 0;
  }

  v5 = OBJC_IVAR____TtC5TeaUI15ShineImageLayer_shineImage;
  v6 = *&v1[OBJC_IVAR____TtC5TeaUI15ShineImageLayer_shineImage];
  if (!v6)
  {
    if (!v3)
    {
      return;
    }

    goto LABEL_10;
  }

  v7 = *(v6 + 16);
  v8 = v7;
  if (!v3)
  {
    if (!v7)
    {
      return;
    }

    goto LABEL_12;
  }

  if (!v7)
  {
LABEL_10:
    v8 = v3;
LABEL_12:

LABEL_13:
    v10 = OBJC_IVAR____TtC5TeaUI15ShineImageLayer_shineImageLayer;
    v11 = *&v2[OBJC_IVAR____TtC5TeaUI15ShineImageLayer_shineImageLayer];
    if (!v11)
    {
LABEL_21:
      [v2 setNeedsLayout];
      return;
    }

    v12 = *&v2[v5];
    if (v12)
    {
      v13 = *(v12 + 16);
      v14 = v11;
      v15 = [v13 CGImage];
      if (v15)
      {
        v18 = v15;
        type metadata accessor for CGImage();
        v16 = sub_1D8192614();

        goto LABEL_19;
      }
    }

    else
    {
      v14 = v11;
    }

    v16 = 0;
LABEL_19:
    [v14 setContents_];

    swift_unknownObjectRelease();
    v17 = *&v2[v10];
    if (v17)
    {
      [v17 setContentsGravity_];
    }

    goto LABEL_21;
  }

  sub_1D7E471D0();
  v9 = sub_1D8191CC4();

  if ((v9 & 1) == 0)
  {
    goto LABEL_13;
  }
}

id sub_1D7F8CDDC(double a1, double a2)
{
  if (*&v2[OBJC_IVAR____TtC5TeaUI15ShineImageLayer_shineOffset] != a1 || *&v2[OBJC_IVAR____TtC5TeaUI15ShineImageLayer_shineOffset + 8] != a2)
  {
    return [v2 setNeedsLayout];
  }

  return result;
}

char *sub_1D7F8CE0C()
{
  ObjectType = swift_getObjectType();
  *&v0[OBJC_IVAR____TtC5TeaUI15ShineImageLayer_shineOptions] = 0;
  *&v0[OBJC_IVAR____TtC5TeaUI15ShineImageLayer_shineImage] = 0;
  v2 = &v0[OBJC_IVAR____TtC5TeaUI15ShineImageLayer_shineOffset];
  *v2 = 0;
  *(v2 + 1) = 0;
  *&v0[OBJC_IVAR____TtC5TeaUI15ShineImageLayer_shineScale] = 0x3FF0000000000000;
  v3 = OBJC_IVAR____TtC5TeaUI15ShineImageLayer_shineImageLayer;
  *&v0[OBJC_IVAR____TtC5TeaUI15ShineImageLayer_shineImageLayer] = 0;
  v4 = [objc_allocWithZone(TUNonAnimatingLayer) init];
  v5 = *&v0[v3];
  *&v0[v3] = v4;

  v8.receiver = v0;
  v8.super_class = ObjectType;
  result = objc_msgSendSuper2(&v8, sel_init);
  if (*&result[OBJC_IVAR____TtC5TeaUI15ShineImageLayer_shineImageLayer])
  {
    v7 = result;
    [result addSublayer_];
    return v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

char *sub_1D7F8CF0C(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  *&v2[OBJC_IVAR____TtC5TeaUI15ShineImageLayer_shineOptions] = 0;
  *&v2[OBJC_IVAR____TtC5TeaUI15ShineImageLayer_shineImage] = 0;
  v5 = &v2[OBJC_IVAR____TtC5TeaUI15ShineImageLayer_shineOffset];
  *v5 = 0;
  *(v5 + 1) = 0;
  *&v2[OBJC_IVAR____TtC5TeaUI15ShineImageLayer_shineScale] = 0x3FF0000000000000;
  *&v2[OBJC_IVAR____TtC5TeaUI15ShineImageLayer_shineImageLayer] = 0;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v6 = sub_1D8192614();
  v16.receiver = v2;
  v16.super_class = ObjectType;
  v7 = objc_msgSendSuper2(&v16, sel_initWithLayer_, v6);
  swift_unknownObjectRelease();
  sub_1D7E1C664(a1, &v15);
  v8 = v7;
  if (swift_dynamicCast())
  {
    v9 = *&v14[OBJC_IVAR____TtC5TeaUI15ShineImageLayer_shineImageLayer];
    v10 = *(v8 + OBJC_IVAR____TtC5TeaUI15ShineImageLayer_shineImageLayer);
    *(v8 + OBJC_IVAR____TtC5TeaUI15ShineImageLayer_shineImageLayer) = v9;
    v11 = v9;

    *(v8 + OBJC_IVAR____TtC5TeaUI15ShineImageLayer_shineOptions) = *&v14[OBJC_IVAR____TtC5TeaUI15ShineImageLayer_shineOptions];

    v12 = *&v14[OBJC_IVAR____TtC5TeaUI15ShineImageLayer_shineImage];

    *(v8 + OBJC_IVAR____TtC5TeaUI15ShineImageLayer_shineImage) = v12;
  }

  else
  {
  }

  return v8;
}

void sub_1D7F8D0D8()
{
  *(v0 + OBJC_IVAR____TtC5TeaUI15ShineImageLayer_shineOptions) = 0;
  *(v0 + OBJC_IVAR____TtC5TeaUI15ShineImageLayer_shineImage) = 0;
  v1 = (v0 + OBJC_IVAR____TtC5TeaUI15ShineImageLayer_shineOffset);
  *v1 = 0;
  v1[1] = 0;
  *(v0 + OBJC_IVAR____TtC5TeaUI15ShineImageLayer_shineScale) = 0x3FF0000000000000;
  *(v0 + OBJC_IVAR____TtC5TeaUI15ShineImageLayer_shineImageLayer) = 0;
  sub_1D81923A4();
  __break(1u);
}

void sub_1D7F8D2B0()
{
  v1 = v0;
  v18.receiver = v0;
  v18.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v18, sel_layoutSublayers);
  v2 = *&v0[OBJC_IVAR____TtC5TeaUI15ShineImageLayer_shineImageLayer];
  if (v2)
  {
    v3 = v2;
    memcpy(&__dst, MEMORY[0x1E69792E8], sizeof(__dst));
    [v3 setTransform_];
    v4 = *&v0[OBJC_IVAR____TtC5TeaUI15ShineImageLayer_shineOptions];
    if (v4 && (v5 = *&v1[OBJC_IVAR____TtC5TeaUI15ShineImageLayer_shineImage]) != 0)
    {
      v6 = *(v5 + 24);
      v7 = *(v5 + 32);

      v19.origin.x = 0.0;
      v19.origin.y = 0.0;
      v19.size.width = v6;
      v19.size.height = v7;
      v20 = CGRectIntegral(v19);
      [v3 setBounds_];
      [v1 bounds];
      x = v21.origin.x;
      y = v21.origin.y;
      width = v21.size.width;
      height = v21.size.height;
      MidX = CGRectGetMidX(v21);
      v22.origin.x = x;
      v22.origin.y = y;
      v22.size.width = width;
      v22.size.height = height;
      [v3 setPosition_];
      CATransform3DMakeScale(&__src, *&v1[OBJC_IVAR____TtC5TeaUI15ShineImageLayer_shineScale], *&v1[OBJC_IVAR____TtC5TeaUI15ShineImageLayer_shineScale], 1.0);
      CATransform3DMakeRotation(&b, *(v4 + 48), 0.0, 0.0, 1.0);
      memcpy(&a, &__src, sizeof(a));
      CATransform3DConcat(&__dst, &a, &b);
      CATransform3DMakeTranslation(&b, *&v1[OBJC_IVAR____TtC5TeaUI15ShineImageLayer_shineOffset], *&v1[OBJC_IVAR____TtC5TeaUI15ShineImageLayer_shineOffset + 8], 0.0);
      memcpy(&a, &__dst, sizeof(a));
      CATransform3DConcat(&v13, &a, &b);
      [v3 setTransform_];
      [v3 frame];
      v24 = CGRectIntegral(v23);
      [v3 setFrame_];
    }

    else
    {
    }
  }
}

uint64_t SharingActivity.__allocating_init<A>(command:context:type:title:image:category:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_6_28();
  v13 = swift_allocObject();
  SharingActivity.init<A>(command:context:type:title:image:category:)(a1, a2, a3, a4, a5, a6);
  return v13;
}

void *SharingActivity.init<A>(command:context:type:title:image:category:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *(*a1 + 88);
  v29 = a1;
  OUTLINED_FUNCTION_2();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v28 - v16;
  v6[2] = v18;
  v6[3] = v19;
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  v6[4] = sub_1D7F8F090;
  v6[5] = v20;
  v21 = swift_allocObject();
  v22 = *(a6 + 16);
  *(v21 + 16) = *a6;
  *(v21 + 32) = v22;
  *(v21 + 48) = *(a6 + 32);
  v6[6] = sub_1D7F8F098;
  v6[7] = v21;
  (*(v14 + 16))(v17, a2, v11);
  v23 = swift_allocObject();
  *(v23 + 16) = v11;
  *(v23 + 24) = a1;
  v24 = *(v14 + 32);
  OUTLINED_FUNCTION_4_34();
  v24();
  v6[8] = sub_1D7F8D9B8;
  v6[9] = v23;
  (v24)(v17, a2, v11);
  v25 = swift_allocObject();
  v26 = v29;
  *(v25 + 16) = v11;
  *(v25 + 24) = v26;
  OUTLINED_FUNCTION_4_34();
  v24();
  v6[10] = sub_1D7F8DC20;
  v6[11] = v25;

  return v6;
}

uint64_t sub_1D7F8D854(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(*a3 + 88);
  v8 = sub_1D8191E84();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v14 - v10;
  ObjectType = swift_getObjectType();
  (*(*(v7 - 8) + 16))(v11, a4, v7);
  __swift_storeEnumTagSinglePayload(v11, 0, 1, v7);
  LOBYTE(a2) = CommandCenterType.canExecute<A>(command:context:)(a3, v11, ObjectType, a2);
  (*(v9 + 8))(v11, v8);
  return a2 & 1;
}

uint64_t sub_1D7F8D9F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(*a4 + 88);
  v10 = sub_1D8191E84();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v16 - v12;
  ObjectType = swift_getObjectType();
  (*(*(v9 - 8) + 16))(v13, a5, v9);
  __swift_storeEnumTagSinglePayload(v13, 0, 1, v9);
  (*(a2 + 8))(a4, v13, a3, v9, ObjectType, a2);
  return (*(v11 + 8))(v13, v10);
}

uint64_t objectdestroy_5Tm_0()
{
  OUTLINED_FUNCTION_2();

  v0 = OUTLINED_FUNCTION_2_11();
  v1(v0);
  OUTLINED_FUNCTION_7_26();

  return swift_deallocObject();
}

uint64_t SharingActivity.__allocating_init(command:type:title:image:category:)()
{
  OUTLINED_FUNCTION_0_72();
  OUTLINED_FUNCTION_6_28();
  swift_allocObject();
  v1 = OUTLINED_FUNCTION_3_8();
  SharingActivity.init(command:type:title:image:category:)(v1, v2, v3, v4, v5, v6);
  return v0;
}

void *SharingActivity.init(command:type:title:image:category:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a2;
  v6[3] = a6;
  v11 = swift_allocObject();
  *(v11 + 16) = a3;
  *(v11 + 24) = a4;
  v6[4] = sub_1D7F8DD7C;
  v6[5] = v11;
  v12 = swift_allocObject();
  v13 = *(a5 + 16);
  *(v12 + 16) = *a5;
  *(v12 + 32) = v13;
  *(v12 + 48) = *(a5 + 32);
  v6[6] = sub_1D7F8DDAC;
  v6[7] = v12;
  v6[8] = sub_1D7F8DDE4;
  v6[9] = a1;
  v6[10] = sub_1D7F8DE74;
  v6[11] = a1;

  return v6;
}

uint64_t sub_1D7F8DD7C()
{
  v1 = *(v0 + 16);
  sub_1D8190DB4();
  return v1;
}

uint64_t sub_1D7F8DDAC@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  *a1 = *(v1 + 16);
  *(a1 + 16) = v2;
  *(a1 + 32) = *(v1 + 48);
  return sub_1D7F8F034(v1 + 16, v4);
}

uint64_t SharingActivity.__allocating_init<A, B>(command:context:type:title:image:category:)()
{
  OUTLINED_FUNCTION_0_72();
  OUTLINED_FUNCTION_6_28();
  swift_allocObject();
  v1 = OUTLINED_FUNCTION_3_8();
  SharingActivity.init<A, B>(command:context:type:title:image:category:)(v1, v2, v3, v4, v5);
  return v0;
}

void *SharingActivity.init<A, B>(command:context:type:title:image:category:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, _OWORD *a5)
{
  v51 = a5;
  v54 = a2;
  v7 = *a1;
  v8 = *(*a1 + 136);
  OUTLINED_FUNCTION_2();
  v10 = v9;
  v12 = *(v11 + 64);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = v45 - v15;
  v18 = *(v17 + 24);
  v49 = *(v17 + 16);
  v47 = v17;
  v48 = v18;
  v5[2] = v19;
  v5[3] = v20;
  v56 = *(v10 + 16);
  v56(v16, v14);
  v21 = (*(v10 + 80) + 48) & ~*(v10 + 80);
  v57 = *(v10 + 80);
  v50 = v21 + v12;
  v22 = (v21 + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = swift_allocObject();
  v23[2] = v8;
  v55 = a1;
  v24 = *(v7 + 144);
  v25 = v7;
  v23[3] = v24;
  v26 = v24;
  v46 = v24;
  v52 = *(v25 + 152);
  v23[4] = v52;
  v23[5] = a1;
  v27 = *(v10 + 32);
  v45[0] = v10 + 32;
  v45[1] = v21;
  OUTLINED_FUNCTION_4_34();
  v27();
  v28 = v27;
  v53 = v27;
  v29 = v23 + v22;
  *v29 = *v47;
  v30 = v48;
  *(v29 + 2) = v49;
  *(v29 + 3) = v30;
  v5[4] = sub_1D7F8E4A0;
  v5[5] = v23;
  v31 = v54;
  (v56)(v16, v54, v8);
  v32 = swift_allocObject();
  v32[2] = v8;
  v32[3] = v26;
  v33 = v52;
  v34 = v55;
  v32[4] = v52;
  v32[5] = v34;
  OUTLINED_FUNCTION_4_34();
  v28();
  v35 = v32 + v22;
  v36 = v51;
  v37 = v51[1];
  *v35 = *v51;
  *(v35 + 1) = v37;
  *(v35 + 2) = v36[2];
  *(v35 + 6) = *(v36 + 6);
  v5[6] = sub_1D7F8E794;
  v5[7] = v32;
  (v56)(v16, v31, v8);
  v38 = swift_allocObject();
  v39 = v46;
  v38[2] = v8;
  v38[3] = v39;
  v40 = v55;
  v38[4] = v33;
  v38[5] = v40;
  OUTLINED_FUNCTION_4_34();
  v41 = v53;
  v53();
  v5[8] = sub_1D7F8E964;
  v5[9] = v38;
  (v41)(v16, v54, v8);
  v42 = swift_allocObject();
  v42[2] = v8;
  v42[3] = v39;
  v42[4] = v52;
  v42[5] = v40;
  OUTLINED_FUNCTION_4_34();
  v43();
  v5[10] = sub_1D7F8EBD4;
  v5[11] = v42;
  swift_retain_n();
  return v5;
}

uint64_t sub_1D7F8E220(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v28 = a7;
  v29 = a8;
  v26 = a5;
  v27 = a6;
  v22 = a4;
  v23 = a2;
  v9 = *a3;
  v10 = *(*a3 + 136);
  v24 = sub_1D8191E84();
  v11 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v13 = &v22 - v12;
  v14 = *(v9 + 144);
  v25 = sub_1D8191E84();
  v15 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v17 = &v22 - v16;
  ObjectType = swift_getObjectType();
  (*(*(v10 - 8) + 16))(v13, v22, v10);
  __swift_storeEnumTagSinglePayload(v13, 0, 1, v10);
  v19 = *(v9 + 152);
  (*(v23 + 80))(a3, v13, v10, v14, v19, ObjectType);
  (*(v11 + 8))(v13, v24);
  v30 = v26;
  v31 = v27;
  v32 = v28;
  v33 = v29;
  v20 = type metadata accessor for StateCommandValue(0, v14, MEMORY[0x1E69E6158], v19);
  StateCommandValue.value(for:)(v17, v20, &v34);
  (*(v15 + 8))(v17, v25);
  return v34;
}

uint64_t sub_1D7F8E4A0(uint64_t a1, uint64_t a2)
{
  v3 = (*(*(*(v2 + 16) - 8) + 80) + 48) & ~*(*(*(v2 + 16) - 8) + 80);
  v4 = (v2 + ((*(*(*(v2 + 16) - 8) + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  return sub_1D7F8E220(a1, a2, *(v2 + 40), v2 + v3, *v4, v4[1], v4[2], v4[3]);
}

uint64_t sub_1D7F8E514@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X2>, uint64_t a3@<X3>, __int128 *a4@<X4>, uint64_t a5@<X8>)
{
  v21 = a3;
  v22 = a1;
  v26 = a5;
  v7 = *a2;
  v8 = *(*a2 + 136);
  v23 = sub_1D8191E84();
  v9 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v11 = &v21 - v10;
  v12 = *(v7 + 144);
  v13 = sub_1D8191E84();
  v24 = *(v13 - 8);
  v25 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v21 - v14;
  ObjectType = swift_getObjectType();
  (*(*(v8 - 8) + 16))(v11, v21, v8);
  __swift_storeEnumTagSinglePayload(v11, 0, 1, v8);
  v17 = *(v7 + 152);
  (*(v22 + 80))(a2, v11, v8, v12, v17, ObjectType);
  (*(v9 + 8))(v11, v23);
  v18 = a4[1];
  v27 = *a4;
  v28 = v18;
  v29 = a4[2];
  v30 = *(a4 + 6);
  v19 = type metadata accessor for StateCommandValue(0, v12, &type metadata for SharingActivityImage, v17);
  StateCommandValue.value(for:)(v15, v19, v26);
  return (*(v24 + 8))(v15, v25);
}

uint64_t sub_1D7F8E800(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(*a3 + 136);
  v8 = sub_1D8191E84();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v14 - v10;
  ObjectType = swift_getObjectType();
  (*(*(v7 - 8) + 16))(v11, a4, v7);
  __swift_storeEnumTagSinglePayload(v11, 0, 1, v7);
  LOBYTE(a2) = CommandCenterType.canExecute<A>(command:context:)(a3, v11, ObjectType, a2);
  (*(v9 + 8))(v11, v8);
  return a2 & 1;
}

uint64_t sub_1D7F8E9A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(*a4 + 136);
  v10 = sub_1D8191E84();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v16 - v12;
  ObjectType = swift_getObjectType();
  (*(*(v9 - 8) + 16))(v13, a5, v9);
  __swift_storeEnumTagSinglePayload(v13, 0, 1, v9);
  (*(a2 + 8))(a4, v13, a3, v9, ObjectType, a2);
  return (*(v11 + 8))(v13, v10);
}

uint64_t objectdestroy_23Tm()
{
  OUTLINED_FUNCTION_2();

  v0 = OUTLINED_FUNCTION_2_11();
  v1(v0);
  OUTLINED_FUNCTION_7_26();

  return swift_deallocObject();
}

id SharingActivity.build(commandCenter:source:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (((*(v3 + 64))() & 1) == 0)
  {
    return 0;
  }

  v7 = *(v3 + 24);
  if (v7 == 1)
  {
    v15 = *(v3 + 32);
    v16 = *(v3 + 16);
    v15(a1, a2);
    v17 = OUTLINED_FUNCTION_5_27();
    v18(v17);
    v19 = swift_allocObject();
    v19[2] = v3;
    v19[3] = a1;
    v19[4] = a2;
    v19[5] = a3;
    sub_1D7F8EECC(0, &unk_1ECA0E5B8, &type metadata for SharingActivityItemShare, &protocol witness table for SharingActivityItemShare);
    objc_allocWithZone(v20);

    swift_unknownObjectRetain();

    return sub_1D7F8EF1C();
  }

  if (v7)
  {
    return 0;
  }

  v8 = *(v3 + 32);
  v9 = *(v3 + 16);
  v8(a1, a2);
  v10 = OUTLINED_FUNCTION_5_27();
  v11(v10);
  v12 = swift_allocObject();
  v12[2] = v3;
  v12[3] = a1;
  v12[4] = a2;
  v12[5] = a3;
  sub_1D7F8EECC(0, qword_1EDBB0C98, &type metadata for SharingActivityItemAction, &protocol witness table for SharingActivityItemAction);
  objc_allocWithZone(v13);

  swift_unknownObjectRetain();

  return sub_1D7F8EF1C();
}

uint64_t SharingActivity.deinit()
{

  return v0;
}

uint64_t SharingActivity.__deallocating_deinit()
{
  SharingActivity.deinit();
  OUTLINED_FUNCTION_6_28();

  return swift_deallocClassInstance();
}

uint64_t objectdestroy_29Tm_0()
{

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

void sub_1D7F8EECC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  if (!*a2)
  {
    v5 = type metadata accessor for SharingActivityItem(0, a3, a4, a4);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

id sub_1D7F8EF1C()
{
  OUTLINED_FUNCTION_0_72();
  ObjectType = swift_getObjectType();
  *&v1[qword_1EDBB0D30] = v6;
  v8 = &v1[qword_1EDBB0D20];
  *v8 = v5;
  *(v8 + 1) = v4;
  v9 = &v1[qword_1EDBB0D28];
  *(v9 + 4) = *(v3 + 32);
  v10 = *(v3 + 16);
  *v9 = *v3;
  *(v9 + 1) = v10;
  v11 = &v1[qword_1EDBB0D38];
  *v11 = v2;
  *(v11 + 1) = v0;
  v13.receiver = v1;
  v13.super_class = ObjectType;
  return objc_msgSendSuper2(&v13, sel_init);
}

BOOL sub_1D7F8F0B0()
{
  OUTLINED_FUNCTION_93_0();
  v3 = (v2 + 40);
  v4 = *(v2 + 16) + 1;
  do
  {
    if (!--v4)
    {
      break;
    }

    v5 = *v3;
    v9[0] = *(v3 - 1);
    v9[1] = v5;
    sub_1D8190DB4();
    v6 = v1(v9);
    if (v0)
    {

      return v4 != 0;
    }

    v7 = v6;
    v3 += 2;
  }

  while ((v7 & 1) == 0);
  return v4 != 0;
}

BOOL sub_1D7F8F158()
{
  OUTLINED_FUNCTION_93_0();
  v3 = (v2 + 64);
  v4 = *(v2 + 16) + 1;
  do
  {
    if (!--v4)
    {
      break;
    }

    v6 = *(v3 - 1);
    v5 = *v3;
    v7 = *(v3 - 16);
    v15 = *(v3 - 2);
    v16 = v7;
    v17 = v6;
    v18 = v5;
    v8 = v15;
    v9 = OUTLINED_FUNCTION_110();
    sub_1D7E38808(v9, v10);
    v11 = v1(&v15);

    v12 = OUTLINED_FUNCTION_55_0();
    sub_1D7E418F4(v12, v13);
    if (v0)
    {
      break;
    }

    v3 += 5;
  }

  while ((v11 & 1) == 0);
  return v4 != 0;
}

BOOL sub_1D7F8F278(uint64_t (*a1)(_BYTE *), uint64_t a2)
{
  v28 = a2;
  OUTLINED_FUNCTION_37_6();
  sub_1D7F9E2C0(0, v6, v7, v8);
  v10 = v9;
  OUTLINED_FUNCTION_9();
  v12 = v11;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_21_11();
  sub_1D7F9E010(0);
  v15 = v14 - 8;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_15();
  v18 = v17 - v16;
  (*(v12 + 16))(v4, v2, v10);
  sub_1D7F9E0B4(&qword_1EDBB1FC0, MEMORY[0x1E69D6AE0]);
  sub_1D8191134();
  v19 = *(v15 + 44);
  sub_1D7F9E0B4(&qword_1EDBB1FB8, MEMORY[0x1E69D6AE8]);
  do
  {
    sub_1D81917B4();
    v20 = *(v18 + v19);
    v21 = v26[0];
    if (v20 == v26[0])
    {
      break;
    }

    v22 = sub_1D81918F4();
    sub_1D7F9E10C(v23, v27);
    v22(v26, 0);
    sub_1D81917C4();
    v24 = a1(v27);
    sub_1D7F9E168(v27);
    if (v3)
    {
      break;
    }
  }

  while ((v24 & 1) == 0);
  sub_1D7F9E310(v18, sub_1D7F9E010);
  return v20 != v21;
}

void sub_1D7F8F4EC(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3)
{
  v5 = sub_1D7E36AB8(a3);
  v6 = 0;
  while (1)
  {
    v7 = v6;
    if (v5 == v6)
    {
      break;
    }

    if ((a3 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x1DA714420](v6, a3);
    }

    else
    {
      if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

      v8 = *(a3 + 8 * v6 + 32);
    }

    v9 = v8;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_13:
      __break(1u);
      return;
    }

    v12 = v8;
    v10 = a1(&v12);

    if (!v3)
    {
      v6 = v7 + 1;
      if ((v10 & 1) == 0)
      {
        continue;
      }
    }

    return;
  }
}

uint64_t sub_1D7F8F5E0@<X0>(uint64_t *a2@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a2 = result;
  return result;
}

uint64_t BlueprintTableViewDelegate.delegate.getter()
{
  OUTLINED_FUNCTION_3_7();
  OUTLINED_FUNCTION_1_0(v0);
  return swift_unknownObjectWeakLoadStrong();
}

void BlueprintTableViewDelegate.delegate.setter()
{
  OUTLINED_FUNCTION_34_0();
  OUTLINED_FUNCTION_3_7();
  OUTLINED_FUNCTION_5_0(v1);
  swift_unknownObjectWeakAssign();
}

uint64_t BlueprintTableViewDelegate.delegate.modify()
{
  v1 = __swift_coroFrameAllocStub(0x30uLL);
  OUTLINED_FUNCTION_62_0(v1);
  OUTLINED_FUNCTION_3_7();
  OUTLINED_FUNCTION_61_0(v2);
  *(v0 + 24) = swift_unknownObjectWeakLoadStrong();
  return OUTLINED_FUNCTION_20_10();
}

void *BlueprintTableViewDelegate.multiDelegate.getter()
{
  OUTLINED_FUNCTION_3_7();
  v2 = *(v1 + 192);
  OUTLINED_FUNCTION_1_0(v3);
  v4 = *(v0 + v2);
  v5 = v4;
  return v4;
}

uint64_t sub_1D7F8F850@<X0>(uint64_t *a2@<X8>)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  *a2 = result;
  return result;
}

uint64_t BlueprintTableViewDelegate.keyCommandManager.getter()
{
  OUTLINED_FUNCTION_3_7();
  OUTLINED_FUNCTION_1_0(v0);
  return swift_weakLoadStrong();
}

double BlueprintTableViewDelegate.keyCommandManager.setter()
{
  OUTLINED_FUNCTION_34_0();
  OUTLINED_FUNCTION_3_7();
  OUTLINED_FUNCTION_5_0(v0);
  swift_weakAssign();

  return result;
}

uint64_t BlueprintTableViewDelegate.keyCommandManager.modify()
{
  v1 = __swift_coroFrameAllocStub(0x30uLL);
  OUTLINED_FUNCTION_62_0(v1);
  OUTLINED_FUNCTION_3_7();
  OUTLINED_FUNCTION_61_0(v2);
  *(v0 + 24) = swift_weakLoadStrong();
  return OUTLINED_FUNCTION_20_10();
}

void sub_1D7F8FA70()
{
  OUTLINED_FUNCTION_17_10();
  swift_weakAssign();
  if (v1)
  {

    swift_endAccess();
  }

  else
  {
    swift_endAccess();
  }

  free(v0);
}

uint64_t sub_1D7F8FAE4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + *((*MEMORY[0x1E69E7D40] & **a1) + 0xD0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1D7F8FB5C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2 + *((*MEMORY[0x1E69E7D40] & **a2) + 0xD0);
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t BlueprintTableViewDelegate.selectionProvider.getter()
{
  OUTLINED_FUNCTION_3_7();
  OUTLINED_FUNCTION_8_4(v0 + *(v1 + 208), v3);
  return swift_unknownObjectWeakLoadStrong();
}

uint64_t BlueprintTableViewDelegate.selectionProvider.setter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_3_7();
  v5 = v2 + *(v4 + 208);
  OUTLINED_FUNCTION_56(v5, v7);
  *(v5 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t BlueprintTableViewDelegate.selectionProvider.modify(void *a1)
{
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v3;
  v3[5] = v1;
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xD0);
  v3[6] = v4;
  v5 = v1 + v4;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v7 = *(v5 + 1);
  v3[3] = Strong;
  v3[4] = v7;
  return OUTLINED_FUNCTION_20_10();
}

uint64_t sub_1D7F8FD60@<X0>(uint64_t *a2@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a2 = result;
  return result;
}

uint64_t BlueprintTableViewDelegate.parentViewController.getter()
{
  OUTLINED_FUNCTION_3_7();
  OUTLINED_FUNCTION_1_0(v0);
  return swift_unknownObjectWeakLoadStrong();
}

void BlueprintTableViewDelegate.parentViewController.setter()
{
  OUTLINED_FUNCTION_34_0();
  OUTLINED_FUNCTION_3_7();
  OUTLINED_FUNCTION_5_0(v1);
  swift_unknownObjectWeakAssign();
}

uint64_t BlueprintTableViewDelegate.parentViewController.modify()
{
  v1 = __swift_coroFrameAllocStub(0x30uLL);
  OUTLINED_FUNCTION_62_0(v1);
  OUTLINED_FUNCTION_3_7();
  OUTLINED_FUNCTION_61_0(v2);
  *(v0 + 24) = swift_unknownObjectWeakLoadStrong();
  return OUTLINED_FUNCTION_20_10();
}

double BlueprintTableViewDelegate.gutterViewManager.getter()
{
  OUTLINED_FUNCTION_3_7();
  OUTLINED_FUNCTION_1_0(v0);

  return result;
}

double BlueprintTableViewDelegate.gutterViewManager.setter()
{
  OUTLINED_FUNCTION_34_0();
  OUTLINED_FUNCTION_3_7();
  v3 = *(v2 + 224);
  OUTLINED_FUNCTION_5_0(v4);
  *(v1 + v3) = v0;

  return result;
}

uint64_t BlueprintTableViewDelegate.gutterViewManager.modify()
{
  OUTLINED_FUNCTION_34_0();
  OUTLINED_FUNCTION_3_7();
  OUTLINED_FUNCTION_7_1();
  return OUTLINED_FUNCTION_23_1();
}

double BlueprintTableViewDelegate.infiniteScrollManager.getter()
{
  OUTLINED_FUNCTION_3_7();
  OUTLINED_FUNCTION_1_0(v0);

  return result;
}

double sub_1D7F900DC@<D0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = *((*MEMORY[0x1E69E7D40] & **a1) + 0xE8);
  swift_beginAccess();
  *a2 = *(v3 + v4);

  return result;
}

double BlueprintTableViewDelegate.infiniteScrollManager.setter()
{
  OUTLINED_FUNCTION_34_0();
  OUTLINED_FUNCTION_3_7();
  v3 = *(v2 + 232);
  OUTLINED_FUNCTION_56(v1 + v3, v5);
  *(v1 + v3) = v0;

  sub_1D7F901FC();

  return result;
}

void sub_1D7F901FC()
{
  v1 = *((*MEMORY[0x1E69E7D40] & *v0) + 0xE8);
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2)
  {
    *(v2 + 24) = &protocol witness table for BlueprintTableViewDelegate<A, B, C, D>;
    swift_unknownObjectWeakAssign();
  }
}

uint64_t BlueprintTableViewDelegate.infiniteScrollManager.modify(uint64_t a1)
{
  *(a1 + 24) = v1;
  OUTLINED_FUNCTION_3_7();
  OUTLINED_FUNCTION_7_1();
  return OUTLINED_FUNCTION_23_1();
}

double BlueprintTableViewDelegate.sectionCollapsibleStateManager.getter()
{
  OUTLINED_FUNCTION_3_7();
  OUTLINED_FUNCTION_1_0(v0);

  return result;
}

double BlueprintTableViewDelegate.sectionCollapsibleStateManager.setter()
{
  OUTLINED_FUNCTION_34_0();
  OUTLINED_FUNCTION_3_7();
  v3 = *(v2 + 240);
  OUTLINED_FUNCTION_5_0(v4);
  *(v1 + v3) = v0;

  return result;
}

uint64_t BlueprintTableViewDelegate.sectionCollapsibleStateManager.modify()
{
  OUTLINED_FUNCTION_34_0();
  OUTLINED_FUNCTION_3_7();
  OUTLINED_FUNCTION_7_1();
  return OUTLINED_FUNCTION_23_1();
}

void *BlueprintTableViewDelegate.viewportMonitor.getter()
{
  OUTLINED_FUNCTION_3_7();
  v2 = *(v1 + 248);
  OUTLINED_FUNCTION_1_0(v3);
  v4 = *(v0 + v2);
  v5 = v4;
  return v4;
}

id sub_1D7F90458@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = *((*MEMORY[0x1E69E7D40] & **a1) + 0xF8);
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

void BlueprintTableViewDelegate.viewportMonitor.setter()
{
  OUTLINED_FUNCTION_34_0();
  OUTLINED_FUNCTION_3_7();
  v3 = *(v2 + 248);
  OUTLINED_FUNCTION_5_0(v4);
  v5 = *(v1 + v3);
  *(v1 + v3) = v0;
  v6 = v0;

  sub_1D7F90578();
}

void sub_1D7F90578()
{
  v1 = MEMORY[0x1E69E7D40];
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0xF8);
  swift_beginAccess();
  v3 = *(v0 + v2);
  if (v3)
  {
    v4 = *((*v1 & *v0) + 0xC0);
    swift_beginAccess();
    v5 = *(v0 + v4);
    if (v5)
    {
      [v5 addDelegate_];
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t BlueprintTableViewDelegate.viewportMonitor.modify(uint64_t a1)
{
  *(a1 + 24) = v1;
  OUTLINED_FUNCTION_3_7();
  OUTLINED_FUNCTION_7_1();
  return OUTLINED_FUNCTION_23_1();
}

uint64_t sub_1D7F906B0(uint64_t a1, char a2, uint64_t (*a3)(uint64_t))
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return a3(result);
  }

  return result;
}

double BlueprintTableViewDelegate.dragReorderDelegate.getter()
{
  OUTLINED_FUNCTION_3_7();
  OUTLINED_FUNCTION_8_4(v0 + *(v1 + 256), v3);
  swift_unknownObjectRetain();
  return result;
}

uint64_t BlueprintTableViewDelegate.dragReorderDelegate.setter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_3_7();
  v6 = (v2 + *(v5 + 256));
  OUTLINED_FUNCTION_56(v6, v8);
  *v6 = a1;
  v6[1] = a2;
  return swift_unknownObjectRelease();
}

uint64_t BlueprintTableViewDelegate.dragReorderDelegate.modify()
{
  OUTLINED_FUNCTION_34_0();
  OUTLINED_FUNCTION_3_7();
  OUTLINED_FUNCTION_7_1();
  return OUTLINED_FUNCTION_23_1();
}

double BlueprintTableViewDelegate.scrollTriggerDelta.getter()
{
  OUTLINED_FUNCTION_3_7();
  v2 = *(v1 + 264);
  OUTLINED_FUNCTION_1_0(v3);
  return *(v0 + v2);
}

uint64_t BlueprintTableViewDelegate.scrollTriggerDelta.setter(double a1)
{
  OUTLINED_FUNCTION_3_7();
  v4 = *(v3 + 264);
  result = OUTLINED_FUNCTION_56(v1 + v4, v6);
  *(v1 + v4) = a1;
  return result;
}

uint64_t BlueprintTableViewDelegate.scrollTriggerDelta.modify()
{
  OUTLINED_FUNCTION_34_0();
  OUTLINED_FUNCTION_3_7();
  OUTLINED_FUNCTION_7_1();
  return OUTLINED_FUNCTION_23_1();
}

char *BlueprintTableViewDelegate.init(blueprintProvider:blueprintLayoutProvider:blueprintViewHeaderProvider:blueprintImpressionManager:commandCenter:tracker:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v8 = v7;
  ObjectType = swift_getObjectType();
  v13 = *v8;
  v14 = MEMORY[0x1E69E7D40];
  v15 = *MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_123(*((*MEMORY[0x1E69E7D40] & *v8) + 0xB8));
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_2_53();
  *(v8 + *(v16 + 192)) = 0;
  OUTLINED_FUNCTION_2_53();
  OUTLINED_FUNCTION_123(*(v17 + 200));
  swift_weakInit();
  OUTLINED_FUNCTION_2_53();
  *(v8 + *(v18 + 208) + 8) = 0;
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_2_53();
  OUTLINED_FUNCTION_123(*(v19 + 216));
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_2_53();
  *(v8 + *(v20 + 224)) = 0;
  OUTLINED_FUNCTION_2_53();
  *(v8 + *(v21 + 232)) = 0;
  OUTLINED_FUNCTION_2_53();
  *(v8 + *(v22 + 240)) = 0;
  OUTLINED_FUNCTION_2_53();
  *(v8 + *(v23 + 248)) = 0;
  OUTLINED_FUNCTION_2_53();
  v25 = (v8 + *(v24 + 256));
  *v25 = 0;
  v25[1] = 0;
  OUTLINED_FUNCTION_2_53();
  v27 = v8 + *(v26 + 272);
  *v27 = 0;
  *(v27 + 1) = 0;
  v27[16] = 1;
  v28 = v8 + *((*v14 & *v8) + 0x118);
  *v28 = 0;
  *(v28 + 1) = 0;
  v28[16] = 1;
  OUTLINED_FUNCTION_2_53();
  OUTLINED_FUNCTION_123(*(v29 + 304));
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_2_53();
  *(v8 + *(v30 + 312)) = 0;
  OUTLINED_FUNCTION_2_53();
  v32 = (v8 + *(v31 + 320));
  v33 = *((v15 & v13) + 0x50);
  swift_getAssociatedTypeWitness();
  *v32 = sub_1D8192914();
  v32[1] = v34;
  OUTLINED_FUNCTION_2_53();
  OUTLINED_FUNCTION_48_0();
  v36 = v35;
  v68 = a1;
  v63 = v33;
  (*(v35 + 16))(v8 + v37, a1, v33);
  OUTLINED_FUNCTION_2_53();
  v38 = *((v15 & v13) + 0x58);
  OUTLINED_FUNCTION_48_0();
  v40 = v39;
  v67 = a2;
  (*(v39 + 16))(v8 + v41, a2, v38);
  OUTLINED_FUNCTION_2_53();
  v42 = *((v15 & v13) + 0x60);
  OUTLINED_FUNCTION_48_0();
  v44 = v43;
  v66 = a3;
  OUTLINED_FUNCTION_104_0();
  v45();
  OUTLINED_FUNCTION_2_53();
  *(v8 + *(v46 + 168)) = a4;
  OUTLINED_FUNCTION_2_53();
  v48 = (v8 + *(v47 + 176));
  *v48 = a5;
  v48[1] = a6;
  OUTLINED_FUNCTION_2_53();
  sub_1D7E25380(v50, v8 + *(v49 + 296));
  OUTLINED_FUNCTION_2_53();
  v52 = v8 + *(v51 + 288);
  *v52 = 0u;
  *(v52 + 1) = 0u;
  *(v52 + 4) = 0;
  sub_1D818EAF4();

  swift_unknownObjectRetain();
  sub_1D818EAE4();
  if (qword_1EDBBC5D0 != -1)
  {
    OUTLINED_FUNCTION_46_6(&qword_1EDBBC5D0);
  }

  sub_1D818EAD4();

  OUTLINED_FUNCTION_2_53();
  *(v8 + *(v53 + 264)) = v54;
  v72.receiver = v8;
  v72.super_class = ObjectType;
  v55 = objc_msgSendSuper2(&v72, sel_init);
  v56 = objc_allocWithZone(MEMORY[0x1E69D6CE8]);
  v57 = v55;
  v58 = [v56 initWithDelegate:v57 delegateProtocol:&unk_1F535EED0];

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(a7);
  (*(v44 + 8))(v66, v42);
  (*(v40 + 8))(v67, v38);
  (*(v36 + 8))(v68, v63);
  OUTLINED_FUNCTION_19_11();
  v60 = *(v59 + 192);
  OUTLINED_FUNCTION_56(&v57[v60], v71);
  v61 = *&v57[v60];
  *&v57[v60] = v58;

  return v57;
}

void BlueprintTableViewDelegate.__allocating_init(blueprintProvider:blueprintLayoutProvider:blueprintViewHeaderProvider:blueprintImpressionManager:commandCenter:tracker:keyboardInputMonitor:)()
{
  OUTLINED_FUNCTION_120();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  objc_allocWithZone(v0);
  BlueprintTableViewDelegate.init(blueprintProvider:blueprintLayoutProvider:blueprintViewHeaderProvider:blueprintImpressionManager:commandCenter:tracker:keyboardInputMonitor:)(v16, v14, v12, v10, v8, v6, v4, v2);
  OUTLINED_FUNCTION_100();
}

char *BlueprintTableViewDelegate.init(blueprintProvider:blueprintLayoutProvider:blueprintViewHeaderProvider:blueprintImpressionManager:commandCenter:tracker:keyboardInputMonitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void *a8)
{
  v9 = v8;
  ObjectType = swift_getObjectType();
  v13 = *v9;
  v14 = MEMORY[0x1E69E7D40];
  v15 = *MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_132_0(*((*MEMORY[0x1E69E7D40] & *v9) + 0xB8));
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_3_51();
  *(v9 + *(v16 + 192)) = 0;
  OUTLINED_FUNCTION_3_51();
  OUTLINED_FUNCTION_132_0(*(v17 + 200));
  swift_weakInit();
  OUTLINED_FUNCTION_3_51();
  *(v9 + *(v18 + 208) + 8) = 0;
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_3_51();
  OUTLINED_FUNCTION_132_0(*(v19 + 216));
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_3_51();
  *(v9 + *(v20 + 224)) = 0;
  OUTLINED_FUNCTION_3_51();
  *(v9 + *(v21 + 232)) = 0;
  OUTLINED_FUNCTION_3_51();
  *(v9 + *(v22 + 240)) = 0;
  OUTLINED_FUNCTION_3_51();
  *(v9 + *(v23 + 248)) = 0;
  OUTLINED_FUNCTION_3_51();
  v25 = (v9 + *(v24 + 256));
  *v25 = 0;
  v25[1] = 0;
  OUTLINED_FUNCTION_3_51();
  v27 = v9 + *(v26 + 272);
  *v27 = 0;
  *(v27 + 1) = 0;
  v27[16] = 1;
  v28 = v9 + *((*v14 & *v9) + 0x118);
  *v28 = 0;
  *(v28 + 1) = 0;
  v28[16] = 1;
  OUTLINED_FUNCTION_3_51();
  OUTLINED_FUNCTION_132_0(*(v29 + 304));
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_3_51();
  *(v9 + *(v30 + 312)) = 0;
  OUTLINED_FUNCTION_3_51();
  v32 = (v9 + *(v31 + 320));
  v33 = *((v15 & v13) + 0x50);
  swift_getAssociatedTypeWitness();
  *v32 = sub_1D8192914();
  v32[1] = v34;
  OUTLINED_FUNCTION_3_51();
  OUTLINED_FUNCTION_48_0();
  v36 = v35;
  v65 = a1;
  (*(v35 + 16))(v9 + v37, a1, v33);
  OUTLINED_FUNCTION_3_51();
  v38 = *((v15 & v13) + 0x58);
  OUTLINED_FUNCTION_48_0();
  v40 = v39;
  v64 = a2;
  (*(v39 + 16))(v9 + v41, a2, v38);
  OUTLINED_FUNCTION_3_51();
  v42 = *((v15 & v13) + 0x60);
  OUTLINED_FUNCTION_48_0();
  v44 = v43;
  v63 = a3;
  (*(v43 + 16))(v9 + v45, a3, v42);
  OUTLINED_FUNCTION_3_51();
  *(v9 + *(v46 + 168)) = a4;
  OUTLINED_FUNCTION_3_51();
  v48 = (v9 + *(v47 + 176));
  *v48 = a5;
  v48[1] = a6;
  OUTLINED_FUNCTION_3_51();
  sub_1D7E25380(a7, v9 + *(v49 + 296));
  OUTLINED_FUNCTION_3_51();
  sub_1D7E25380(a8, v9 + *(v50 + 288));
  sub_1D818EAF4();

  swift_unknownObjectRetain();
  sub_1D818EAE4();
  if (qword_1EDBBC5D0 != -1)
  {
    OUTLINED_FUNCTION_46_6(&qword_1EDBBC5D0);
  }

  sub_1D818EAD4();

  OUTLINED_FUNCTION_3_51();
  *(v9 + *(v51 + 264)) = v52;
  v71.receiver = v9;
  v71.super_class = ObjectType;
  v53 = objc_msgSendSuper2(&v71, sel_init);
  v54 = objc_allocWithZone(MEMORY[0x1E69D6CE8]);
  v55 = v53;
  v56 = [v54 initWithDelegate:v55 delegateProtocol:&unk_1F535EED0];

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(a8);
  __swift_destroy_boxed_opaque_existential_1Tm(a7);
  (*(v44 + 8))(v63, v42);
  (*(v40 + 8))(v64, v38);
  (*(v36 + 8))(v65, v33);
  OUTLINED_FUNCTION_22_2();
  v58 = *(v57 + 192);
  OUTLINED_FUNCTION_56(&v55[v58], v70);
  v59 = *&v55[v58];
  *&v55[v58] = v56;

  return v55;
}

Swift::Void __swiftcall BlueprintTableViewDelegate.register(in:)(UITableView *in)
{
  v2 = v1;
  OUTLINED_FUNCTION_22_2();
  v5 = v4;
  swift_unknownObjectWeakAssign();
  OUTLINED_FUNCTION_22_2();
  v7 = *(v6 + 192);
  OUTLINED_FUNCTION_8_4(v2 + v7, v24);
  v8 = *(v2 + v7);
  if (v8)
  {
    -[UITableView setDelegate:](in, sel_setDelegate_, [v8 delegate]);
    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_22_2();
    v22[0] = in;
    v9 = v5[16];
    v10 = v5[12];
    (*(v9 + 80))(v22, v10, v9);
    OUTLINED_FUNCTION_22_2();
    v11 = v5[14];
    v12 = v5[10];
    v13 = OUTLINED_FUNCTION_110();
    v14(v13);
    OUTLINED_FUNCTION_0_8();
    v15 = swift_allocObject();
    swift_unknownObjectWeakInit();
    OUTLINED_FUNCTION_0_8();
    v16 = swift_allocObject();
    swift_unknownObjectUnownedInit();
    v17 = swift_allocObject();
    v17[2] = v12;
    v17[3] = v5[11];
    v17[4] = v10;
    v17[5] = v5[13];
    v17[6] = v11;
    v17[7] = v5[15];
    v17[8] = v9;
    v17[9] = v5[17];
    v17[10] = v15;
    v17[11] = v16;
    OUTLINED_FUNCTION_16();
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    OUTLINED_FUNCTION_16();
    v19 = swift_getAssociatedTypeWitness();
    OUTLINED_FUNCTION_111();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    OUTLINED_FUNCTION_111();
    v21 = swift_getAssociatedConformanceWitness();
    v22[0] = AssociatedTypeWitness;
    v22[1] = v19;
    v22[2] = AssociatedConformanceWitness;
    v23 = v21;
    type metadata accessor for Blueprint(0, v22);
    sub_1D818F164();

    __swift_project_boxed_opaque_existential_1(v22, v23);
    OUTLINED_FUNCTION_161();
    sub_1D818ED84();
    __swift_destroy_boxed_opaque_existential_1Tm(v22);
  }

  else
  {
    __break(1u);
  }
}

void sub_1D7F917B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = Strong + *((*MEMORY[0x1E69E7D40] & *Strong) + 0x118);
    *v5 = 0;
    *(v5 + 1) = 0;
    v5[16] = 1;
    v6 = swift_unknownObjectUnownedLoadStrong();
    sub_1D7F91884(v6, 0);
  }
}

void sub_1D7F91884(void *a1, unsigned int a2)
{
  v3 = v2;
  v78 = a1;
  v5 = (*MEMORY[0x1E69E7D40] & *v2);
  v6 = v5[14];
  v7 = v5[10];
  v79[0] = swift_getAssociatedTypeWitness();
  v79[1] = swift_getAssociatedTypeWitness();
  v79[2] = swift_getAssociatedConformanceWitness();
  v79[3] = swift_getAssociatedConformanceWitness();
  v8 = type metadata accessor for Blueprint(0, v79);
  v77 = *(v8 - 1);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v75 - v9;
  v76 = a2;
  if (sub_1D7EB48B4(a2) == 0xD00000000000001ALL && 0x80000001D81C5D30 == v11)
  {
  }

  else
  {
    v13 = sub_1D8192634();

    if ((v13 & 1) == 0)
    {
      v14 = [v78 window];
      if (v14)
      {
        v15 = v14;
        v16 = [v14 windowScene];

        if (v16)
        {
          v17 = [v16 activationState];

          if (v17 == 2)
          {
            sub_1D7F94B74(0, &qword_1EDBBE100, &qword_1EDBBE130, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
            v18 = swift_allocObject();
            *(v18 + 16) = xmmword_1D819FAB0;
            v19 = (v3 + *((*MEMORY[0x1E69E7D40] & *v3) + 0x140));
            v21 = *v19;
            v20 = v19[1];
            *(v18 + 56) = MEMORY[0x1E69E6158];
            *(v18 + 64) = sub_1D7E13BF4();
            *(v18 + 32) = v21;
            *(v18 + 40) = v20;
            sub_1D7E0A1A8(0, &qword_1EDBBE110, 0x1E69E9BF8);
            sub_1D8190DB4();
            v22 = sub_1D8191E44();
            v23 = sub_1D81919E4();
            sub_1D818FD44("Ignoring infinite scroll request as application is not in the active state, model=%{public}@", 92, 2, &dword_1D7DFF000, v22, v23, v18);
LABEL_29:

            return;
          }
        }
      }
    }
  }

  v24 = MEMORY[0x1E69E7D40];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v26 = Strong;
    sub_1D8043398(Strong);
    v28 = v27;

    if (v28)
    {
      if (*(v28 + OBJC_IVAR____TtC5TeaUI25BlueprintLiveResizingView_isLiveResizing) == 1)
      {
        sub_1D7F94B74(0, &qword_1EDBBE100, &qword_1EDBBE130, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
        v29 = swift_allocObject();
        *(v29 + 16) = xmmword_1D819FAB0;
        v30 = (v3 + *((*v24 & *v3) + 0x140));
        v32 = *v30;
        v31 = v30[1];
        *(v29 + 56) = MEMORY[0x1E69E6158];
        *(v29 + 64) = sub_1D7E13BF4();
        *(v29 + 32) = v32;
        *(v29 + 40) = v31;
        sub_1D7E0A1A8(0, &qword_1EDBBE110, 0x1E69E9BF8);
        sub_1D8190DB4();
        v22 = sub_1D8191E44();
        v33 = sub_1D81919E4();
        sub_1D818FD44("Ignoring infinite scroll request during live resizing, model=%{public}@", 71, 2, &dword_1D7DFF000, v22, v33, v29);

        goto LABEL_29;
      }
    }
  }

  v34 = *v24 & *v3;
  v35 = *(v3 + *(v34 + 0x138));
  if (v35 >= 3)
  {
    sub_1D7F94B74(0, &qword_1EDBBE100, &qword_1EDBBE130, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v62 = swift_allocObject();
    *(v62 + 16) = xmmword_1D819FAC0;
    v63 = (v3 + *(v34 + 320));
    v65 = *v63;
    v64 = v63[1];
    v66 = MEMORY[0x1E69E6158];
    *(v62 + 56) = MEMORY[0x1E69E6158];
    v67 = sub_1D7E13BF4();
    *(v62 + 32) = v65;
    *(v62 + 40) = v64;
    v68 = 0xEC000000676E6972;
    if (v35 == 4)
    {
      v68 = 0xEB00000000646572;
    }

    *(v62 + 96) = v66;
    *(v62 + 104) = v67;
    *(v62 + 64) = v67;
    *(v62 + 72) = 0x6165707061736964;
    *(v62 + 80) = v68;
    sub_1D7E0A1A8(0, &qword_1EDBBE110, 0x1E69E9BF8);
    sub_1D8190DB4();
    v22 = sub_1D8191E44();
    v69 = sub_1D81919E4();
    sub_1D818FD44("Preventing infinite scroll request for appearance, model=%{public}@, appearance=%{public}@", 90, 2, &dword_1D7DFF000, v22, v69, v62);
    goto LABEL_29;
  }

  swift_beginAccess();
  v36 = swift_unknownObjectWeakLoadStrong();
  if (!v36)
  {
    v70 = sub_1D81919C4();
    sub_1D7F94B74(0, &qword_1EDBBE100, &qword_1EDBBE130, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v71 = swift_allocObject();
    *(v71 + 16) = xmmword_1D819FAB0;
    v72 = (v3 + *((*v24 & *v3) + 0x140));
    v74 = *v72;
    v73 = v72[1];
    *(v71 + 56) = MEMORY[0x1E69E6158];
    *(v71 + 64) = sub_1D7E13BF4();
    *(v71 + 32) = v74;
    *(v71 + 40) = v73;
    sub_1D7E0A1A8(0, &qword_1EDBBE110, 0x1E69E9BF8);
    sub_1D8190DB4();
    v22 = sub_1D8191E44();
    sub_1D818FD44("Attempting to create infinite scroll requests without a delegate, model=%{public}@", 82, 2, &dword_1D7DFF000, v22, v70, v71);
    goto LABEL_29;
  }

  v37 = v36;
  BlueprintProviderType.blueprint.getter(v7, v6);
  v38 = *((*v24 & *v3) + 0xE8);
  swift_beginAccess();
  if (*(v3 + v38))
  {

    v39 = v78;
    [v78 contentOffset];
    v41 = v40;
    v43 = v42;
    [v39 bounds];
    v45 = v44;
    v47 = v46;
    v49 = v48;
    v51 = v50;
    [v39 contentSize];
    v53 = v52;
    v55 = v54;
    v56 = [v39 window];
    if (v56)
    {

      LODWORD(v56) = [v39 ts_isScrolling] ^ 1;
    }

    v57 = sub_1D7E67664(v56, v76, v41, v43, v45, v47, v49, v51, v53, v55);

    if (v57)
    {
      v78 = v8;
      v58 = *(v57 + 16);
      if (v58)
      {
        v59 = v5[17];
        v60 = *(v59 + 160);
        v61 = v57 + 32;
        do
        {
          sub_1D7E25380(v61, v79);
          v60(v10, v79, v5[13], v59);
          __swift_destroy_boxed_opaque_existential_1Tm(v79);
          v61 += 40;
          --v58;
        }

        while (v58);
      }

      (*(v77 + 8))(v10, v78);
    }

    else
    {
      (*(v77 + 8))(v10, v8);
    }
  }

  else
  {

    (*(v77 + 8))(v10, v8);
  }
}

Swift::Void __swiftcall BlueprintTableViewDelegate.viewWillAppear()()
{
  *(v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0x138)) = 1;
  OUTLINED_FUNCTION_3_7();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_1D7F91884(Strong, 4u);
  }
}

Swift::Void __swiftcall BlueprintTableViewDelegate.windowWillBecomeForeground()()
{
  OUTLINED_FUNCTION_3_7();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1D7F91884(Strong, 5u);
  }
}

void __swiftcall BlueprintTableViewDelegate.tableView(_:viewForHeaderInSection:)(UIView_optional *__return_ptr retstr, UITableView *_, Swift::Int viewForHeaderInSection)
{
  OUTLINED_FUNCTION_120();
  v59 = v4;
  v5 = *v3;
  v6 = *MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_82();
  v58 = *(v7 + 120);
  OUTLINED_FUNCTION_82();
  v57 = *(v8 + 88);
  OUTLINED_FUNCTION_12_18();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_12_18();
  v10 = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_55_0();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_55_0();
  OUTLINED_FUNCTION_75_2();
  v55 = swift_getAssociatedConformanceWitness();
  v60 = AssociatedTypeWitness;
  v61 = v10;
  v62 = AssociatedConformanceWitness;
  v63 = v55;
  v11 = OUTLINED_FUNCTION_81_2();
  type metadata accessor for BlueprintLayoutSection(v11, v12);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_94();
  OUTLINED_FUNCTION_79_1(v14);
  v16 = *(v15 + 112);
  v17 = *((v6 & v5) + 0x50);
  v18 = OUTLINED_FUNCTION_35_7();
  v20 = OUTLINED_FUNCTION_114_0(v18, v19);
  v21 = OUTLINED_FUNCTION_35_7();
  v23 = OUTLINED_FUNCTION_114_0(v21, v22);
  OUTLINED_FUNCTION_127_0();
  v24 = swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_127_0();
  v25 = swift_getAssociatedConformanceWitness();
  v60 = v20;
  v61 = v23;
  v62 = v24;
  v63 = v25;
  v26 = OUTLINED_FUNCTION_81_2();
  type metadata accessor for Blueprint(v26, v27);
  OUTLINED_FUNCTION_9();
  v29 = v28;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_21_11();
  v60 = v20;
  v61 = v23;
  v62 = v24;
  v63 = v25;
  v31 = OUTLINED_FUNCTION_81_2();
  type metadata accessor for BlueprintSection(v31, v32);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_76_2();
  OUTLINED_FUNCTION_115_0();
  BlueprintProviderType.blueprint.getter(v17, v16);
  OUTLINED_FUNCTION_95_0();
  (*(v29 + 8))(AssociatedTypeWitness, v16);
  OUTLINED_FUNCTION_44_5();
  BlueprintLayoutProviderType.layoutBlueprint.getter(v57, v58);
  v34 = OUTLINED_FUNCTION_94_1();
  OUTLINED_FUNCTION_96_0(v34, v42, v43, v44, v45, v46, v47, v35, v36, v37, v38, v39, v40, v41);
  OUTLINED_FUNCTION_3_0();
  (*(v48 + 8))(&v60, v29 + 8);
  OUTLINED_FUNCTION_44_5();
  v60 = v59;
  OUTLINED_FUNCTION_136_0();
  OUTLINED_FUNCTION_136_0();
  v49 = OUTLINED_FUNCTION_135_0();
  v50(v49);
  v51 = OUTLINED_FUNCTION_121_0();
  v52(v51);
  v53 = OUTLINED_FUNCTION_134_0();
  v54(v53);
  OUTLINED_FUNCTION_130_0();
  OUTLINED_FUNCTION_100();
}

id sub_1D7F9272C(void *a1, uint64_t a2, void *a3, Swift::Int a4)
{
  v6 = a3;
  v7 = a1;
  BlueprintTableViewDelegate.tableView(_:viewForHeaderInSection:)(v8, v6, a4);
  v10 = v9;

  return v10;
}

void __swiftcall BlueprintTableViewDelegate.tableView(_:viewForFooterInSection:)(UIView_optional *__return_ptr retstr, UITableView *_, Swift::Int viewForFooterInSection)
{
  OUTLINED_FUNCTION_120();
  v59 = v4;
  v5 = *v3;
  v6 = *MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_82();
  v58 = *(v7 + 120);
  OUTLINED_FUNCTION_82();
  v57 = *(v8 + 88);
  OUTLINED_FUNCTION_12_18();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_12_18();
  v10 = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_55_0();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_55_0();
  OUTLINED_FUNCTION_75_2();
  v55 = swift_getAssociatedConformanceWitness();
  v60 = AssociatedTypeWitness;
  v61 = v10;
  v62 = AssociatedConformanceWitness;
  v63 = v55;
  v11 = OUTLINED_FUNCTION_81_2();
  type metadata accessor for BlueprintLayoutSection(v11, v12);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_94();
  OUTLINED_FUNCTION_79_1(v14);
  v16 = *(v15 + 112);
  v17 = *((v6 & v5) + 0x50);
  v18 = OUTLINED_FUNCTION_35_7();
  v20 = OUTLINED_FUNCTION_114_0(v18, v19);
  v21 = OUTLINED_FUNCTION_35_7();
  v23 = OUTLINED_FUNCTION_114_0(v21, v22);
  OUTLINED_FUNCTION_127_0();
  v24 = swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_127_0();
  v25 = swift_getAssociatedConformanceWitness();
  v60 = v20;
  v61 = v23;
  v62 = v24;
  v63 = v25;
  v26 = OUTLINED_FUNCTION_81_2();
  type metadata accessor for Blueprint(v26, v27);
  OUTLINED_FUNCTION_9();
  v29 = v28;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_21_11();
  v60 = v20;
  v61 = v23;
  v62 = v24;
  v63 = v25;
  v31 = OUTLINED_FUNCTION_81_2();
  type metadata accessor for BlueprintSection(v31, v32);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_76_2();
  OUTLINED_FUNCTION_115_0();
  BlueprintProviderType.blueprint.getter(v17, v16);
  OUTLINED_FUNCTION_95_0();
  (*(v29 + 8))(AssociatedTypeWitness, v16);
  OUTLINED_FUNCTION_44_5();
  BlueprintLayoutProviderType.layoutBlueprint.getter(v57, v58);
  v34 = OUTLINED_FUNCTION_94_1();
  OUTLINED_FUNCTION_96_0(v34, v42, v43, v44, v45, v46, v47, v35, v36, v37, v38, v39, v40, v41);
  OUTLINED_FUNCTION_3_0();
  (*(v48 + 8))(&v60, v29 + 8);
  OUTLINED_FUNCTION_44_5();
  v60 = v59;
  OUTLINED_FUNCTION_136_0();
  OUTLINED_FUNCTION_136_0();
  v49 = OUTLINED_FUNCTION_135_0();
  v50(v49);
  v51 = OUTLINED_FUNCTION_121_0();
  v52(v51);
  v53 = OUTLINED_FUNCTION_134_0();
  v54(v53);
  OUTLINED_FUNCTION_130_0();
  OUTLINED_FUNCTION_100();
}

id sub_1D7F92B48(void *a1, uint64_t a2, void *a3, Swift::Int a4)
{
  v6 = a3;
  v7 = a1;
  BlueprintTableViewDelegate.tableView(_:viewForFooterInSection:)(v8, v6, a4);
  v10 = v9;

  return v10;
}

void sub_1D7F92BB4()
{
  OUTLINED_FUNCTION_98();
  v35 = v1;
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x78);
  v3 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x58);
  v4 = OUTLINED_FUNCTION_114_0(0, v2);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_94();
  OUTLINED_FUNCTION_33_6();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_72_0();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_72_0();
  v8 = swift_getAssociatedConformanceWitness();
  v39[0] = v4;
  v39[1] = AssociatedTypeWitness;
  v39[2] = AssociatedConformanceWitness;
  v39[3] = v8;
  type metadata accessor for BlueprintLayoutSection(0, v39);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_28_1();
  BlueprintLayoutProviderType.layoutBlueprint.getter(v3, v2);
  *&v36 = v4;
  *(&v36 + 1) = AssociatedTypeWitness;
  *&v37 = AssociatedConformanceWitness;
  *(&v37 + 1) = v8;
  v10 = type metadata accessor for BlueprintLayout(0, &v36);
  BlueprintLayout.subscript.getter(v35, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22);
  OUTLINED_FUNCTION_3_0();
  (*(v23 + 8))(v39, v10);
  v24 = OUTLINED_FUNCTION_129_1();
  v26 = v25(v24);
  OUTLINED_FUNCTION_91(v26, qword_1EDBAEBB0, &protocol descriptor for BlueprintLayoutHeaderFooterAttributesType);
  if (swift_dynamicCast())
  {
    OUTLINED_FUNCTION_128_1();
    v27 = OUTLINED_FUNCTION_11_0();
    v28(v27);
    v29 = OUTLINED_FUNCTION_57_4();
    v30(v29);
    __swift_destroy_boxed_opaque_existential_1Tm(v39);
  }

  else
  {
    v38 = 0;
    v36 = 0u;
    v37 = 0u;
    sub_1D7F9E7CC(&v36, &qword_1ECA0E5C8, qword_1EDBAEBB0, &protocol descriptor for BlueprintLayoutHeaderFooterAttributesType);
    v31 = OUTLINED_FUNCTION_53();
    v32(v31);
    v33 = OUTLINED_FUNCTION_57_4();
    v34(v33);
  }

  OUTLINED_FUNCTION_97();
}

void sub_1D7F92ED4()
{
  OUTLINED_FUNCTION_98();
  v33 = v1;
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x78);
  v3 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x58);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_94();
  v6 = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_6_16();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_6_16();
  v8 = swift_getAssociatedConformanceWitness();
  v37[0] = AssociatedTypeWitness;
  v37[1] = v6;
  v37[2] = AssociatedConformanceWitness;
  v37[3] = v8;
  type metadata accessor for BlueprintLayoutSection(0, v37);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_94();
  BlueprintLayoutProviderType.layoutBlueprint.getter(v3, v2);
  *&v34 = AssociatedTypeWitness;
  *(&v34 + 1) = v6;
  *&v35 = AssociatedConformanceWitness;
  *(&v35 + 1) = v8;
  v10 = type metadata accessor for BlueprintLayout(0, &v34);
  BlueprintLayout.subscript.getter(v33, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22);
  OUTLINED_FUNCTION_3_0();
  (*(v23 + 8))(v37, v10);
  v24 = OUTLINED_FUNCTION_129_1();
  v26 = v25(v24);
  OUTLINED_FUNCTION_91(v26, qword_1EDBAEBB0, &protocol descriptor for BlueprintLayoutHeaderFooterAttributesType);
  if (swift_dynamicCast())
  {
    OUTLINED_FUNCTION_128_1();
    v27 = OUTLINED_FUNCTION_11_0();
    v28(v27);
    v29 = OUTLINED_FUNCTION_57_4();
    v30(v29);
    __swift_destroy_boxed_opaque_existential_1Tm(v37);
  }

  else
  {
    v36 = 0;
    v34 = 0u;
    v35 = 0u;
    sub_1D7F9E7CC(&v34, &qword_1ECA0E5C8, qword_1EDBAEBB0, &protocol descriptor for BlueprintLayoutHeaderFooterAttributesType);
    v31 = OUTLINED_FUNCTION_57_4();
    v32(v31);
  }

  OUTLINED_FUNCTION_97();
}

void sub_1D7F93208()
{
  OUTLINED_FUNCTION_98();
  v27 = v2;
  v28 = v1;
  v3 = *v0;
  v4 = *MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_82();
  v6 = *(v5 + 120);
  v7 = *((v4 & v3) + 0x58);
  OUTLINED_FUNCTION_33_6();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_72_0();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v10 = OUTLINED_FUNCTION_107();
  v29 = type metadata accessor for BlueprintLayoutItem(v10, v11, AssociatedConformanceWitness, v12);
  OUTLINED_FUNCTION_9();
  v14 = v13;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v27 - v16;
  OUTLINED_FUNCTION_82();
  BlueprintLayoutProviderType.layoutBlueprint.getter(v7, v6);
  OUTLINED_FUNCTION_33_6();
  v18 = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_72_0();
  v19 = swift_getAssociatedConformanceWitness();
  v30[0] = v18;
  v30[1] = AssociatedTypeWitness;
  v30[2] = v19;
  v30[3] = AssociatedConformanceWitness;
  v20 = type metadata accessor for BlueprintLayout(0, v30);
  BlueprintLayout.subscript.getter(v27, v20);
  OUTLINED_FUNCTION_3_0();
  (*(v21 + 8))(&v31, v20);
  if (![v28 isEditing] || (v22 = OUTLINED_FUNCTION_53(), v23(v22), (v24 & 1) != 0))
  {
    v25 = OUTLINED_FUNCTION_53();
    v26(v25);
  }

  (*(v14 + 8))(v17, v29);
  OUTLINED_FUNCTION_97();
}

double sub_1D7F93460()
{
  OUTLINED_FUNCTION_29_0();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_41();
  v4 = v1;
  v5 = v2;
  v6 = OUTLINED_FUNCTION_53();
  v7 = v0(v6);

  v8 = OUTLINED_FUNCTION_47_4();
  v9(v8);
  return v7;
}

uint64_t sub_1D7F9353C(void *a1, uint64_t a2)
{
  v33 = a2;
  v28 = a1;
  v30 = *v2;
  v31 = *MEMORY[0x1E69E7D40];
  v3 = *((v31 & v30) + 0x70);
  v4 = *((v31 & v30) + 0x50);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v32 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v29 = &v27 - v6;
  v7 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v9 = swift_getAssociatedConformanceWitness();
  v42[0] = v7;
  v42[1] = AssociatedTypeWitness;
  v42[2] = AssociatedConformanceWitness;
  v43 = v9;
  v10 = type metadata accessor for Blueprint(0, v42);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v27 - v12;
  v15 = type metadata accessor for BlueprintItem(0, AssociatedTypeWitness, v9, v14);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v27 - v17;
  BlueprintProviderType.blueprint.getter(v4, v3);
  Blueprint.subscript.getter();
  (*(v11 + 8))(v13, v10);
  (*(v32 + 16))(v29, v18, AssociatedTypeWitness);
  sub_1D7E069F0(0, qword_1EDBBC020, &protocol descriptor for Selectable, 1);
  if (!swift_dynamicCast())
  {
    (*(v16 + 8))(v18, v15);
    v41 = 0;
    v39 = 0u;
    v40 = 0u;
    sub_1D7F9E7CC(&v39, &qword_1ECA0F370, qword_1EDBBC020, &protocol descriptor for Selectable);
LABEL_16:
    v21 = 0;
    return v21 & 1;
  }

  sub_1D7E05450(&v39, v42);
  v19 = v43;
  v20 = v44;
  __swift_project_boxed_opaque_existential_1(v42, v43);
  (*(v20 + 8))(&v38, v19, v20);
  if (!v38)
  {
    (*(v16 + 8))(v18, v15);
LABEL_15:
    __swift_destroy_boxed_opaque_existential_1Tm(v42);
    goto LABEL_16;
  }

  if (v38 != 1)
  {
    v22 = sub_1D818E8E4();
    v23 = [v28 cellForRowAtIndexPath_];

    if (v23)
    {
      v34 = v23;
      sub_1D7E0A1A8(0, &qword_1EDBAE530, 0x1E69DD028);
      sub_1D7E069F0(0, qword_1EDBBB350, &protocol descriptor for ViewSelectable, 1);
      if (swift_dynamicCast())
      {
        if (*(&v36 + 1))
        {
          sub_1D7E05450(&v35, &v39);
          v24 = *(&v40 + 1);
          v25 = v41;
          __swift_project_boxed_opaque_existential_1(&v39, *(&v40 + 1));
          v21 = (*(v25 + 8))(v24, v25);
          (*(v16 + 8))(v18, v15);
          __swift_destroy_boxed_opaque_existential_1Tm(&v39);
          __swift_destroy_boxed_opaque_existential_1Tm(v42);
          return v21 & 1;
        }
      }

      else
      {
        v37 = 0;
        v35 = 0u;
        v36 = 0u;
      }

      (*(v16 + 8))(v18, v15);
    }

    else
    {
      (*(v16 + 8))(v18, v15);
      v37 = 0;
      v35 = 0u;
      v36 = 0u;
    }

    sub_1D7F9E7CC(&v35, &unk_1EDBBB340, qword_1EDBBB350, &protocol descriptor for ViewSelectable);
    goto LABEL_15;
  }

  (*(v16 + 8))(v18, v15);
  __swift_destroy_boxed_opaque_existential_1Tm(v42);
  v21 = 1;
  return v21 & 1;
}

uint64_t sub_1D7F93AE8(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = sub_1D818E994();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D818E924();
  v10 = a3;
  v11 = a1;
  LOBYTE(a1) = BlueprintTableViewDelegate.tableView(_:canFocusRowAt:)();

  (*(v7 + 8))(v9, v6);
  return a1 & 1;
}

void BlueprintTableViewDelegate.tableView(_:didSelectRowAt:)()
{
  OUTLINED_FUNCTION_120();
  v2 = v0;
  v4 = v3;
  v6 = v5;
  OUTLINED_FUNCTION_3_7();
  v171 = v7;
  v10 = *((v9 & v8) + 0x70);
  v11 = *((v9 & v8) + 0x50);
  OUTLINED_FUNCTION_85_0();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_85_0();
  v13 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v183 = v11;
  v184 = v10;
  v15 = swift_getAssociatedConformanceWitness();
  v188[0] = AssociatedTypeWitness;
  v188[1] = v13;
  v189 = AssociatedConformanceWitness;
  v190 = v15;
  v16 = type metadata accessor for Blueprint(0, v188);
  OUTLINED_FUNCTION_9();
  v179 = v17;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_94();
  v181 = v19;
  v20 = OUTLINED_FUNCTION_52_0();
  v182 = type metadata accessor for BlueprintItem(v20, v13, v15, v21);
  OUTLINED_FUNCTION_9();
  v177 = v22;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_94();
  v185 = v24;
  OUTLINED_FUNCTION_52_0();
  v173 = sub_1D818E994();
  OUTLINED_FUNCTION_9();
  v176 = v25;
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_15();
  v162 = v28 - v27;
  v29 = OUTLINED_FUNCTION_52_0();
  sub_1D7EA0824(v29);
  v172 = v30;
  OUTLINED_FUNCTION_8();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_48();
  MEMORY[0x1EEE9AC00](v32);
  v34 = v161 - v33;
  OUTLINED_FUNCTION_0_73();
  sub_1D7E54930(0, v35, v36, MEMORY[0x1E69E6720]);
  v38 = OUTLINED_FUNCTION_50(v37);
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_48();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_48();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_48();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_48();
  MEMORY[0x1EEE9AC00](v42);
  v44 = v161 - v43;
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_125_0();
  v47 = MEMORY[0x1EEE9AC00](v46);
  v49 = v161 - v48;
  v180 = v6;
  v50 = [v6 allowsMultipleSelection];
  v178 = v16;
  if (v50)
  {
    goto LABEL_17;
  }

  v52 = (v176 + 16);
  v51 = *(v176 + 16);
  v167 = v4;
  v53 = v4;
  v4 = v173;
  v174 = v51;
  v51(v49, v53, v173);
  OUTLINED_FUNCTION_102();
  __swift_storeEnumTagSinglePayload(v54, v55, v56, v4);
  OUTLINED_FUNCTION_65_4();
  v58 = v2 + *(v57 + 208);
  OUTLINED_FUNCTION_8_4(v58, &v193);
  if (swift_unknownObjectWeakLoadStrong())
  {
    v59 = *(v58 + 8);
    ObjectType = swift_getObjectType();
    (*(v59 + 8))(ObjectType, v59);
    swift_unknownObjectRelease();
  }

  else
  {
    v61 = OUTLINED_FUNCTION_99();
    __swift_storeEnumTagSinglePayload(v61, v62, 1, v4);
  }

  v63 = *(v172 + 48);
  sub_1D7E54838(v49, v34);
  sub_1D7E54838(v1, &v34[v63]);
  OUTLINED_FUNCTION_43_0(v34, 1, v4);
  if (v64)
  {
    sub_1D7E73334(v1);
    sub_1D7E73334(v49);
    OUTLINED_FUNCTION_43_0(&v34[v63], 1, v4);
    v16 = v178;
    if (v64)
    {
      sub_1D7E73334(v34);
      OUTLINED_FUNCTION_80_1();
      goto LABEL_17;
    }
  }

  else
  {
    sub_1D7E54838(v34, v44);
    OUTLINED_FUNCTION_43_0(&v34[v63], 1, v4);
    if (!v64)
    {
      v170 = v52;
      v72 = v176;
      v73 = v162;
      (*(v176 + 32))(v162, &v34[v63], v4);
      OUTLINED_FUNCTION_6_29();
      sub_1D7E2DA70(v74, v75, MEMORY[0x1E6969C50]);
      LODWORD(v169) = sub_1D8190ED4();
      v76 = *(v72 + 8);
      v76(v73, v4);
      sub_1D7E73334(v1);
      sub_1D7E73334(v49);
      v76(v44, v4);
      sub_1D7E73334(v34);
      OUTLINED_FUNCTION_80_1();
      v16 = v178;
      if (v169)
      {
        goto LABEL_17;
      }

      goto LABEL_14;
    }

    sub_1D7E73334(v1);
    sub_1D7E73334(v49);
    (*(v176 + 8))(v44, v4);
    v16 = v178;
  }

  v170 = v52;
  OUTLINED_FUNCTION_7_27();
  sub_1D7F9E310(v34, v65);
  OUTLINED_FUNCTION_80_1();
LABEL_14:
  if (swift_unknownObjectWeakLoadStrong())
  {
    v44 = *(v58 + 8);
    v66 = swift_getObjectType();
    v67 = v175;
    v68 = v173;
    v174(v175, v4, v173);
    OUTLINED_FUNCTION_102();
    __swift_storeEnumTagSinglePayload(v69, v70, v71, v68);
    (*(v44 + 2))(v67, v66, v44);
    swift_unknownObjectRelease();
  }

LABEL_17:
  OUTLINED_FUNCTION_45_5();
  v174 = *(v77 + 144);
  OUTLINED_FUNCTION_109_0();
  OUTLINED_FUNCTION_73();
  Blueprint.subscript.getter();
  v78 = v179 + 8;
  v175 = *(v179 + 8);
  v79 = (v175)(v44, v16);
  OUTLINED_FUNCTION_11_19(v79, &qword_1EDBBE100, &qword_1EDBBE130, MEMORY[0x1E69E7740]);
  v80 = swift_allocObject();
  *(v80 + 16) = xmmword_1D81A1B70;
  OUTLINED_FUNCTION_45_5();
  v82 = (v2 + *(v81 + 320));
  v84 = *v82;
  v83 = v82[1];
  v85 = MEMORY[0x1E69E6158];
  *(v86 + 56) = MEMORY[0x1E69E6158];
  v87 = sub_1D7E13BF4();
  *(v80 + 64) = v87;
  *(v80 + 32) = v84;
  *(v80 + 40) = v83;
  sub_1D8190DB4();
  v88 = BlueprintItem.identifier.getter(v182);
  *(v80 + 96) = v85;
  *(v80 + 104) = v87;
  *(v80 + 72) = v88;
  *(v80 + 80) = v89;
  v90 = MEMORY[0x1DA710AD0]();
  *(v80 + 136) = v85;
  *(v80 + 144) = v87;
  *(v80 + 112) = v90;
  *(v80 + 120) = v91;
  sub_1D7E0A1A8(0, &qword_1EDBBE110, 0x1E69E9BF8);
  v92 = sub_1D8191E44();
  v93 = sub_1D81919E4();
  sub_1D818FD44("Blueprint did select item at index path, model=%{public}@, item=%{public}@, indexPath=%{public}@", 96, 2, &dword_1D7DFF000, v92, v93, v80);

  OUTLINED_FUNCTION_45_5();
  OUTLINED_FUNCTION_8_4(v2 + *(v94 + 184), &v192);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_40;
  }

  v170 = Strong;
  OUTLINED_FUNCTION_45_5();
  sub_1D7F9DBE4(v2 + *(v96 + 288), v188, &qword_1EDBB7AF0, qword_1EDBB7AF8, &protocol descriptor for KeyboardInputMonitorType);
  v97 = v180;
  if (v190)
  {
    v98 = v191;
    __swift_project_boxed_opaque_existential_1(v188, v190);
    v99 = OUTLINED_FUNCTION_161();
    v164 = v100(v99, v98);
    v163 = v101;
    __swift_destroy_boxed_opaque_existential_1Tm(v188);
  }

  else
  {
    sub_1D7F9E7CC(v188, &qword_1EDBB7AF0, qword_1EDBB7AF8, &protocol descriptor for KeyboardInputMonitorType);
    v164 = 0;
    v163 = 1;
  }

  v102 = v181;
  v103 = v78;
  v104 = [v97 window];
  if (v104)
  {
    v105 = v104;
    v106 = v2;
    v169 = [v104 windowScene];
  }

  else
  {
    v106 = v2;
    v169 = 0;
  }

  v168 = v106;
  BlueprintProviderType.blueprint.getter(v183, v184);
  v107 = *(v171 + 136);
  v108 = *(v171 + 104);
  v109 = v170;
  v110 = (*(v107 + 232))(v102, v185, v4, v108, v107);
  v111 = v102;
  v112 = v4;
  v113 = v102;
  v114 = v178;
  v115 = v175;
  (v175)(v111, v178);
  if (v110)
  {
    BlueprintProviderType.blueprint.getter(v183, v184);
    OUTLINED_FUNCTION_69_2();
    v189 = *(v116 - 256);
    (*(v107 + 56))(v113, v185, v112, v188, v108, v107);

    v117 = OUTLINED_FUNCTION_73();
    v115(v117);

    v4 = v112;
    goto LABEL_40;
  }

  v118 = v107;
  IsVoiceOverRunning = UIAccessibilityIsVoiceOverRunning();
  v4 = v112;
  v120 = v168;
  if (!IsVoiceOverRunning)
  {
    goto LABEL_39;
  }

  v179 = v103;
  v121 = *(v176 + 16);
  v122 = v166;
  v167 = v112;
  v123 = v173;
  v121(v166, v112, v173);
  OUTLINED_FUNCTION_102();
  __swift_storeEnumTagSinglePayload(v124, v125, v126, v123);
  OUTLINED_FUNCTION_65_4();
  v128 = v120 + *(v127 + 208);
  OUTLINED_FUNCTION_8_4(v128, &v186);
  if (swift_unknownObjectWeakLoadStrong())
  {
    v129 = *(v128 + 8);
    v130 = swift_getObjectType();
    v4 = v165;
    (*(v129 + 8))(v130, v129);
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = v165;
    __swift_storeEnumTagSinglePayload(v165, 1, 1, v123);
  }

  v131 = v161[1];
  v132 = v161[0];
  v110 = *(v172 + 48);
  v133 = OUTLINED_FUNCTION_6_16();
  sub_1D7E54838(v133, v134);
  sub_1D7E54838(v4, v131 + v110);
  v135 = OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_43_0(v135, v136, v123);
  if (!v64)
  {
    sub_1D7E54838(v131, v132);
    OUTLINED_FUNCTION_43_0(v131 + v110, 1, v123);
    if (!v137)
    {
      v156 = v176;
      v4 = v162;
      (*(v176 + 32))(v162, v131 + v110, v123);
      OUTLINED_FUNCTION_6_29();
      sub_1D7E2DA70(v157, v158, MEMORY[0x1E6969C50]);
      v110 = v132;
      LODWORD(v172) = sub_1D8190ED4();
      v159 = *(v156 + 8);
      v160 = OUTLINED_FUNCTION_101_0();
      v159(v160);
      sub_1D7E73334(v165);
      sub_1D7E73334(v166);
      (v159)(v132, v123);
      sub_1D7E73334(v131);
      OUTLINED_FUNCTION_80_1();
      if (v172)
      {
        goto LABEL_49;
      }

LABEL_39:
      OUTLINED_FUNCTION_109_0();
      OUTLINED_FUNCTION_69_2();
      v189 = *(v139 - 256);
      v140 = v189;
      v141 = v170;
      (*(v118 + 56))(v110, v185, v4, v188, v108, v118);

      (v175)(v110, v114);
      goto LABEL_40;
    }

    sub_1D7E73334(v4);
    sub_1D7E73334(v122);
    (*(v176 + 8))(v132, v123);
LABEL_38:
    OUTLINED_FUNCTION_7_27();
    sub_1D7F9E310(v131, v138);
    OUTLINED_FUNCTION_80_1();
    goto LABEL_39;
  }

  sub_1D7E73334(v4);
  sub_1D7E73334(v122);
  OUTLINED_FUNCTION_43_0(v131 + v110, 1, v123);
  if (!v64)
  {
    goto LABEL_38;
  }

  sub_1D7E73334(v131);
  OUTLINED_FUNCTION_80_1();
LABEL_49:

LABEL_40:
  v142 = v180;
  if ((sub_1D7F9353C(v180, v4) & 1) == 0)
  {
    v149 = sub_1D818E8E4();
    [v142 deselectRowAtIndexPath:v149 animated:0];

    sub_1D816FB6C(v188);
    if (v190)
    {
      __swift_project_boxed_opaque_existential_1(v188, v190);
      v150 = OUTLINED_FUNCTION_4_1();
      v143 = v151(v150);
      SeparatorView.clearSelections()();
      goto LABEL_45;
    }

LABEL_46:
    v154 = OUTLINED_FUNCTION_105_0();
    v155(v154);
    sub_1D7F9E7CC(v188, &qword_1EDBB0090, qword_1EDBB0098, &protocol descriptor for SeparatorViewProviderType);
    goto LABEL_47;
  }

  v143 = v142;
  sub_1D816FB6C(v188);
  if (!v190)
  {
    goto LABEL_46;
  }

  __swift_project_boxed_opaque_existential_1(v188, v190);
  v144 = OUTLINED_FUNCTION_4_1();
  v145(v144);
  v146 = OUTLINED_FUNCTION_47();
  v147 = sub_1D7F94BE0(v146);
  v148 = OBJC_IVAR____TtC5TeaUI13SeparatorView_isSelected;
  OUTLINED_FUNCTION_56(OBJC_IVAR____TtC5TeaUI13SeparatorView_isSelected + v142, &v187);
  v148[v142] = v147 & 1;
  sub_1D806EB08();
LABEL_45:

  v152 = OUTLINED_FUNCTION_105_0();
  v153(v152);
  __swift_destroy_boxed_opaque_existential_1Tm(v188);
LABEL_47:
  OUTLINED_FUNCTION_100();
}

void sub_1D7F94B74(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1D7E069F0(255, a3, a4, 1);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1D7F94BE0(void *a1)
{
  v2 = sub_1D818E8E4();
  v3 = [a1 cellForRowAtIndexPath_];

  if (!v3)
  {
    goto LABEL_8;
  }

  if (![v3 selectionStyle])
  {

    v5 = 0;
    return v5 & 1;
  }

  v15 = v3;
  sub_1D7E0A1A8(0, &qword_1EDBAE530, 0x1E69DD028);
  sub_1D7E069F0(0, &qword_1EDBAFE80, &protocol descriptor for SelectionBehaviorProviding, 1);
  v4 = v3;
  if ((swift_dynamicCast() & 1) == 0)
  {

    v14 = 0;
    v12 = 0u;
    v13 = 0u;
    sub_1D7F9E7CC(&v12, &unk_1ECA12220, &qword_1EDBAFE80, &protocol descriptor for SelectionBehaviorProviding);
LABEL_8:
    v5 = 1;
    return v5 & 1;
  }

  sub_1D7E05450(&v12, v16);
  if ([v4 isHighlighted])
  {

    v5 = 1;
  }

  else
  {
    v6 = v17;
    v7 = v18;
    __swift_project_boxed_opaque_existential_1(v16, v17);
    (*(v7 + 8))(&v15, v6, v7);
    v8 = v15;
    SelectionBehavior.style.getter(&v12);
    sub_1D7E9B848(v8);
    v9 = *(&v13 + 1);
    v10 = v14;
    __swift_project_boxed_opaque_existential_1(&v12, *(&v13 + 1));
    v5 = (*(v10 + 40))(1, 0, v9, v10);

    __swift_destroy_boxed_opaque_existential_1Tm(&v12);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v16);
  return v5 & 1;
}

void BlueprintTableViewDelegate.tableView(_:didDeselectRowAt:)()
{
  OUTLINED_FUNCTION_120();
  v2 = v0;
  v4 = v3;
  OUTLINED_FUNCTION_66();
  v52 = v5;
  v8 = *((v7 & v6) + 0x70);
  v9 = *((v7 & v6) + 0x50);
  OUTLINED_FUNCTION_16();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_16();
  v11 = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_111();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v54 = v9;
  v56[0] = AssociatedTypeWitness;
  v56[1] = v11;
  v13 = v4;
  v56[2] = AssociatedConformanceWitness;
  v57 = swift_getAssociatedConformanceWitness();
  v14 = type metadata accessor for Blueprint(0, v56);
  OUTLINED_FUNCTION_9();
  v16 = v15;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_21_11();
  OUTLINED_FUNCTION_100_0();
  v55 = type metadata accessor for BlueprintItem(v18, v19, v20, v21);
  OUTLINED_FUNCTION_9();
  v53 = v22;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_51();
  sub_1D816FB6C(v56);
  if (v57)
  {
    v24 = v14;
    v25 = v58;
    __swift_project_boxed_opaque_existential_1(v56, v57);
    v26 = OUTLINED_FUNCTION_47();
    v27 = v25;
    v14 = v24;
    v29 = v28(v26, v27);
    SeparatorView.clearSelections()();

    __swift_destroy_boxed_opaque_existential_1Tm(v56);
  }

  else
  {
    sub_1D7F9E7CC(v56, &qword_1EDBB0090, qword_1EDBB0098, &protocol descriptor for SeparatorViewProviderType);
  }

  v50 = v14;
  OUTLINED_FUNCTION_66();
  OUTLINED_FUNCTION_115_0();
  BlueprintProviderType.blueprint.getter(v54, v8);
  Blueprint.subscript.getter();
  v51 = *(v16 + 8);
  v30 = v51(AssociatedConformanceWitness, v14);
  OUTLINED_FUNCTION_11_19(v30, &qword_1EDBBE100, &qword_1EDBBE130, MEMORY[0x1E69E7740]);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_1D81A1B70;
  OUTLINED_FUNCTION_66();
  v33 = (v2 + *(v32 + 320));
  v35 = *v33;
  v34 = v33[1];
  v49 = v8;
  v36 = v13;
  v37 = MEMORY[0x1E69E6158];
  *(v38 + 56) = MEMORY[0x1E69E6158];
  v39 = sub_1D7E13BF4();
  *(v31 + 64) = v39;
  *(v31 + 32) = v35;
  *(v31 + 40) = v34;
  sub_1D8190DB4();
  v40 = BlueprintItem.identifier.getter(v55);
  *(v31 + 96) = v37;
  *(v31 + 104) = v39;
  *(v31 + 72) = v40;
  *(v31 + 80) = v41;
  v42 = MEMORY[0x1DA710AD0]();
  *(v31 + 136) = v37;
  *(v31 + 144) = v39;
  *(v31 + 112) = v42;
  *(v31 + 120) = v43;
  sub_1D7E0A1A8(0, &qword_1EDBBE110, 0x1E69E9BF8);
  v44 = sub_1D8191E44();
  v45 = sub_1D81919E4();
  sub_1D818FD44("Blueprint did deselect item at index path, model=%{public}@, item=%{public}@, indexPath=%{public}@", 98, 2, &dword_1D7DFF000, v44, v45, v31);

  OUTLINED_FUNCTION_66();
  OUTLINED_FUNCTION_8_4(v2 + *(v46 + 184), v56);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v48 = Strong;
    OUTLINED_FUNCTION_115_0();
    BlueprintProviderType.blueprint.getter(v54, v49);
    (*(*(v52 + 136) + 64))(AssociatedConformanceWitness, v1, v36, *(v52 + 104));

    v51(AssociatedConformanceWitness, v50);
  }

  (*(v53 + 8))(v1, v55);
  OUTLINED_FUNCTION_100();
}

void BlueprintTableViewDelegate.tableView(_:contextMenuConfigurationForRowAt:point:)()
{
  OUTLINED_FUNCTION_98();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  OUTLINED_FUNCTION_3_7();
  v9 = *(v8 + 112);
  v12 = *((v11 & v10) + 0x50);
  OUTLINED_FUNCTION_124();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_124();
  v14 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v59[0] = AssociatedTypeWitness;
  v59[1] = v14;
  v59[2] = AssociatedConformanceWitness;
  v60 = swift_getAssociatedConformanceWitness();
  v16 = OUTLINED_FUNCTION_118_0();
  v18 = type metadata accessor for Blueprint(v16, v17);
  OUTLINED_FUNCTION_9();
  v20 = v19;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_28_1();
  v22 = OUTLINED_FUNCTION_107();
  v25 = type metadata accessor for BlueprintItem(v22, v23, v60, v24);
  OUTLINED_FUNCTION_9();
  v27 = v26;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_26();
  if ([v7 isEditing])
  {
    goto LABEL_17;
  }

  if ([v7 allowsMultipleSelection])
  {
    goto LABEL_17;
  }

  v56 = v27;
  v57 = v25;
  v29 = [v7 hitTest:0 withEvent:{v5, v3}];
  if (v29)
  {
    v30 = v29;
    v31 = sub_1D802334C();

    if (v31)
    {
      goto LABEL_17;
    }
  }

  v32 = sub_1D818E8E4();
  v58 = [v7 cellForRowAtIndexPath_];

  OUTLINED_FUNCTION_65_4();
  BlueprintProviderType.blueprint.getter(v12, v9);
  Blueprint.subscript.getter();
  (*(v20 + 8))(AssociatedConformanceWitness, v18);
  OUTLINED_FUNCTION_103_0();
  v37 = sub_1D7F95828(v33, v34, v35, v36);
  OUTLINED_FUNCTION_103_0();
  v42 = sub_1D7F95E48(v38, v39, v40, v41);
  v43 = sub_1D7F96914(v1, v58, v37, v42);
  v44 = sub_1D7F96A9C(v1, v14);
  if (!(sub_1D7E36AB8(v43) | v44))
  {
    if (!v37)
    {

      goto LABEL_16;
    }

    ContextMenu.activityItemConfiguration.getter();
    OUTLINED_FUNCTION_47();
  }

  OUTLINED_FUNCTION_65_4();
  OUTLINED_FUNCTION_8_4(v1 + *(v45 + 216), v59);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
LABEL_19:
    sub_1D7E0A1A8(0, &unk_1EDBAE4B0, 0x1E69DC8D8);
    BlueprintItem.identifier.getter(v57);
    sub_1D8190EE4();
    OUTLINED_FUNCTION_161();

    OUTLINED_FUNCTION_0_32();
    v52 = swift_allocObject();
    *(v52 + 16) = v44;
    *(v52 + 24) = v58;
    OUTLINED_FUNCTION_0_8();
    v53 = swift_allocObject();
    *(v53 + 16) = v43;
    v54 = v44;
    v55 = v58;
    sub_1D7F0DCE4(v14, sub_1D7F9DB70, v52, sub_1D7F9DB78, v53);

    (*(v56 + 8))(v14, v57);
    goto LABEL_17;
  }

  v47 = Strong;
  v48 = [Strong view];

  if (v48)
  {
    v49 = [v48 window];

    if (v49)
    {
      v50 = [v49 rootViewController];

      if (v50)
      {
        v51 = [v50 presentedViewController];

        if (v51)
        {
          objc_opt_self();
          if (swift_dynamicCastObjCClass())
          {

LABEL_16:
            (*(v56 + 8))(v14, v57);
LABEL_17:
            OUTLINED_FUNCTION_97();
            return;
          }
        }
      }
    }

    goto LABEL_19;
  }

  __break(1u);
}

uint64_t sub_1D7F95828(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v66 = a4;
  v63 = a2;
  v69 = a1;
  v5 = *a3;
  v6 = *MEMORY[0x1E69E7D40];
  v7 = *((*MEMORY[0x1E69E7D40] & *a3) + 0x70);
  v8 = *((*MEMORY[0x1E69E7D40] & *a3) + 0x50);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v64 = v8;
  v65 = v7;
  v11 = swift_getAssociatedConformanceWitness();
  *&v74 = AssociatedTypeWitness;
  *(&v74 + 1) = v10;
  *&v75 = AssociatedConformanceWitness;
  *(&v75 + 1) = v11;
  v12 = type metadata accessor for Blueprint(0, &v74);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v62 = &v50 - v13;
  v14 = sub_1D818E994();
  v56 = *(v14 - 8);
  v57 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v68 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *((v6 & v5) + 0x78);
  v59 = a3;
  v17 = *((v6 & v5) + 0x58);
  v18 = swift_getAssociatedTypeWitness();
  v19 = swift_getAssociatedTypeWitness();
  v20 = swift_getAssociatedConformanceWitness();
  v21 = swift_getAssociatedConformanceWitness();
  v67 = AssociatedTypeWitness;
  *&v74 = AssociatedTypeWitness;
  *(&v74 + 1) = v10;
  *&v75 = v18;
  *(&v75 + 1) = v19;
  v60 = v20;
  v61 = v19;
  v76 = AssociatedConformanceWitness;
  v77 = v11;
  v22 = v11;
  v78 = v20;
  v79 = v21;
  v58 = v21;
  v23 = type metadata accessor for ContextMenuContext(0, &v74);
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v50 - v25;
  v28 = MEMORY[0x1EEE9AC00](v27);
  (*(v30 + 16))(&v50 - v29, v69, v10, v28);
  sub_1D7E069F0(0, &qword_1EDBB9540, &protocol descriptor for ContextMenuProviding, 1);
  v69 = v10;
  if (swift_dynamicCast())
  {
    v54 = v24;
    v55 = v18;
    sub_1D7E05450(&v74, v80);
    v32 = v81;
    v31 = v82;
    __swift_project_boxed_opaque_existential_1(v80, v81);
    v33 = (*(v31 + 8))(v32, v31);
    if (v33)
    {
      v34 = v33;
    }

    else
    {
      v51 = v82;
      v52 = v81;
      v53 = __swift_project_boxed_opaque_existential_1(v80, v81);
      (*(v56 + 16))(v68, v63, v57);
      v63 = v23;
      v35 = v62;
      BlueprintProviderType.blueprint.getter(v64, v65);
      BlueprintLayoutProviderType.layoutBlueprint.getter(v17, v16);
      v36 = type metadata accessor for RendererEnvironment();
      v37 = objc_allocWithZone(v36);
      v38 = v66;
      v39 = v66;
      v40 = RendererEnvironment.init(scrollView:testing:)(v38, 0);
      v72 = v36;
      v73 = &protocol witness table for RendererEnvironment;
      *&v71 = v40;
      v41 = v58;
      v42 = v60;
      v43 = AssociatedConformanceWitness;
      v44 = v67;
      v45 = v35;
      v46 = v69;
      v47 = v55;
      v48 = v61;
      sub_1D7FB0E2C(v68, v45, &v74, &v71, v67, v69, v55, v61, v26, AssociatedConformanceWitness, v22, v60, v58);
      v34 = (*(v51 + 32))(v26, v44, v46, v47, v48, v43, v22, v42, v41, v52, v51);
      (*(v54 + 8))(v26, v63);
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v80);
  }

  else
  {
    v76 = 0;
    v74 = 0u;
    v75 = 0u;
    sub_1D7F9E7CC(&v74, &unk_1ECA0D9C0, &qword_1EDBB9540, &protocol descriptor for ContextMenuProviding);
    return 0;
  }

  return v34;
}

uint64_t sub_1D7F95E48(void *a1, uint64_t a2, void *a3, void *a4)
{
  v64 = a4;
  v61 = a2;
  v67 = a1;
  v5 = *a3;
  v6 = *MEMORY[0x1E69E7D40];
  v7 = *((*MEMORY[0x1E69E7D40] & *a3) + 0x70);
  v8 = *((*MEMORY[0x1E69E7D40] & *a3) + 0x50);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v62 = v8;
  v63 = v7;
  v69 = swift_getAssociatedConformanceWitness();
  *&v73 = AssociatedTypeWitness;
  *(&v73 + 1) = v10;
  *&v74 = AssociatedConformanceWitness;
  *(&v74 + 1) = v69;
  v12 = type metadata accessor for Blueprint(0, &v73);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v60 = &v49 - v13;
  v14 = sub_1D818E994();
  v52 = *(v14 - 8);
  v53 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v68 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *((v6 & v5) + 0x78);
  v57 = a3;
  v17 = *((v6 & v5) + 0x58);
  v18 = swift_getAssociatedTypeWitness();
  v19 = swift_getAssociatedTypeWitness();
  v20 = swift_getAssociatedConformanceWitness();
  v54 = v16;
  v21 = swift_getAssociatedConformanceWitness();
  v65 = AssociatedConformanceWitness;
  v66 = AssociatedTypeWitness;
  *&v73 = AssociatedTypeWitness;
  *(&v73 + 1) = v10;
  v58 = v19;
  v59 = v18;
  *&v74 = v18;
  *(&v74 + 1) = v19;
  v22 = v10;
  v75 = AssociatedConformanceWitness;
  v23 = v69;
  v76 = v69;
  v77 = v20;
  v55 = v21;
  v56 = v20;
  v78 = v21;
  v24 = type metadata accessor for ContextMenuContext(0, &v73);
  v25 = *(v24 - 1);
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v49 - v26;
  v28 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v49 - v30;
  sub_1D818EEE4();
  v32 = 0;
  if (sub_1D818EEC4())
  {
    (*(v28 + 16))(v31, v67, v22);
    sub_1D7E069F0(0, &qword_1EDBB9540, &protocol descriptor for ContextMenuProviding, 1);
    if (swift_dynamicCast())
    {
      sub_1D7E05450(&v73, v79);
      v50 = v81;
      v51 = v80;
      v67 = __swift_project_boxed_opaque_existential_1(v79, v80);
      (*(v52 + 16))(v68, v61, v53);
      v61 = v25;
      v33 = v60;
      BlueprintProviderType.blueprint.getter(v62, v63);
      BlueprintLayoutProviderType.layoutBlueprint.getter(v17, v54);
      v34 = type metadata accessor for RendererEnvironment();
      v35 = objc_allocWithZone(v34);
      v36 = v64;
      v37 = v64;
      v38 = RendererEnvironment.init(scrollView:testing:)(v36, 0);
      v71 = v34;
      v72 = &protocol witness table for RendererEnvironment;
      *&v70 = v38;
      v39 = v55;
      v64 = v24;
      v40 = v56;
      v41 = v65;
      v42 = v33;
      v43 = v66;
      v44 = v22;
      v45 = v59;
      v46 = v22;
      v47 = v58;
      sub_1D7FB0E2C(v68, v42, &v73, &v70, v66, v44, v59, v58, v27, v65, v23, v56, v55);
      v32 = (*(v50 + 40))(v27, v43, v46, v45, v47, v41, v23, v40, v39, v51, v50);
      (*(v61 + 8))(v27, v64);
      __swift_destroy_boxed_opaque_existential_1Tm(v79);
    }

    else
    {
      v75 = 0;
      v73 = 0u;
      v74 = 0u;
      sub_1D7F9E7CC(&v73, &unk_1ECA0D9C0, &qword_1EDBB9540, &protocol descriptor for ContextMenuProviding);
      return 0;
    }
  }

  return v32;
}

uint64_t sub_1D7F96444(uint64_t a1, void *a2, void *a3)
{
  v3 = MEMORY[0x1E69E7D40];
  v4 = *MEMORY[0x1E69E7D40] & *a2;
  if (!a1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v7 = *MEMORY[0x1E69E7D40] & *a2;
  HIBYTE(v27) = 2;
  sub_1D7E25380(a2 + *(v4 + 296), v24);
  v28 = 0u;
  v29 = 0u;
  LOBYTE(v30) = 1;
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9 = swift_allocObject();
  *(v9 + 16) = *(v7 + 80);
  *(v9 + 24) = *(v7 + 88);
  *(v9 + 32) = *(v7 + 96);
  *(v9 + 48) = *(v7 + 112);
  *(v9 + 56) = *(v7 + 120);
  *(v9 + 72) = *(v7 + 136);
  *(v9 + 80) = v8;
  type metadata accessor for CommandExecutionSource();
  v10 = swift_allocObject();
  v11 = v25;
  v12 = v26;
  v13 = __swift_mutable_project_boxed_opaque_existential_1(v24, v25);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v16, v14);

  v18 = a3;
  sub_1D7E3B938(&v27 + 7, v16, a3, &v28, 0, sub_1D7F9E79C, v9, v10, v11, v12, v24[0], v24[1], v24[2], v25, v26, v27, v28, *(&v28 + 1), v29, *(&v29 + 1), v30, v31);
  v20 = v19;
  __swift_destroy_boxed_opaque_existential_1Tm(v24);
  v21 = (a2 + *((*v3 & *a2) + 0xB0));
  v22 = ContextMenu.build(commandCenter:source:)(*v21, v21[1], v20);

  return v22;
}

void sub_1D7F966C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v25 = a1;
  v26[0] = swift_getAssociatedTypeWitness();
  v26[1] = swift_getAssociatedTypeWitness();
  v26[2] = swift_getAssociatedConformanceWitness();
  v26[3] = swift_getAssociatedConformanceWitness();
  v15 = type metadata accessor for Blueprint(0, v26);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v23 - v17;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v20 = Strong;
    v24 = a7;
    swift_beginAccess();
    v21 = swift_unknownObjectWeakLoadStrong();
    if (v21)
    {
      v22 = v21;
      BlueprintProviderType.blueprint.getter(a4, a8);
      (*(a11 + 176))(v18, v25, a2, v24, a11);

      (*(v16 + 8))(v18, v15);
    }

    else
    {
    }
  }
}

uint64_t sub_1D7F96914(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = (*MEMORY[0x1E69E7D40] & *a1);
  if (qword_1EDBBC648 != -1)
  {
    swift_once();
  }

  v9 = v8[6];
  v15[0] = v8[5];
  v15[1] = v9;
  v10 = v8[8];
  v15[2] = v8[7];
  v15[3] = v10;
  type metadata accessor for BlueprintTableViewDelegate(0, v15);
  swift_getWitnessTable();
  sub_1D818EA44();
  if (!v16)
  {
    return sub_1D7F96444(a3, a1, a2);
  }

  if (v16 == 1)
  {
    v11 = sub_1D7F96444(a4, a1, a2);
    v12 = sub_1D7F96444(a3, a1, a2);
    *&v15[0] = v11;
  }

  else
  {
    v14 = sub_1D7F96444(a3, a1, a2);
    v12 = sub_1D7F96444(a4, a1, a2);
    *&v15[0] = v14;
  }

  sub_1D7F0A724(v12);
  return *&v15[0];
}

id sub_1D7F96A9C(uint64_t *a1, uint64_t a2)
{
  v17 = a2;
  v2 = *a1;
  v3 = *MEMORY[0x1E69E7D40];
  v16 = *MEMORY[0x1E69E7D40] & *a1;
  v4 = *((v3 & v2) + 0x70);
  v5 = *((v3 & v2) + 0x50);
  v18[0] = swift_getAssociatedTypeWitness();
  v18[1] = swift_getAssociatedTypeWitness();
  v18[2] = swift_getAssociatedConformanceWitness();
  v18[3] = swift_getAssociatedConformanceWitness();
  v6 = type metadata accessor for Blueprint(0, v18);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v15 - v8;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v11 = result;
    BlueprintProviderType.blueprint.getter(v5, v4);
    v12 = (*(*(v16 + 136) + 80))(v9, v17, *(v16 + 104));

    (*(v7 + 8))(v9, v6);
    if (v12)
    {
      objc_opt_self();
      result = swift_dynamicCastObjCClass();
      if (!result)
      {
        setPreviewing(viewController:previewing:)(v12, 1);
        swift_beginAccess();
        Strong = swift_unknownObjectWeakLoadStrong();
        v14 = objc_allocWithZone(type metadata accessor for PreviewViewController());
        return PreviewViewController.init(previewedViewController:triggeringViewController:)(v12, Strong);
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void *sub_1D7F96D94(void *a1, void *a2)
{
  if (!a1)
  {
    if (a2 && (sub_1D7E0A1A8(0, &qword_1EDBAE530, 0x1E69DD028), sub_1D7E069F0(0, &unk_1ECA0F5A0, &protocol descriptor for ContextMenuPreviewable, 1), v4 = a2, (swift_dynamicCast() & 1) != 0))
    {
      if (*(&v10 + 1))
      {
        sub_1D7E05450(&v9, v12);
        v5 = v13;
        v6 = v14;
        __swift_project_boxed_opaque_existential_1(v12, v13);
        (*(v6 + 8))(0, v5, v6);
        __swift_destroy_boxed_opaque_existential_1Tm(v12);
        goto LABEL_8;
      }
    }

    else
    {
      v11 = 0;
      v9 = 0u;
      v10 = 0u;
    }

    sub_1D7F9E7CC(&v9, &unk_1ECA0E630, &unk_1ECA0F5A0, &protocol descriptor for ContextMenuPreviewable);
  }

LABEL_8:
  v7 = a1;
  return a1;
}

UIMenu sub_1D7F96EB8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D81920A4())
  {
    v4 = 0;
    v5._rawValue = MEMORY[0x1E69E7CC0];
    v8 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if (i == v4)
      {
        sub_1D7E0A1A8(0, &unk_1EDBB2FD0, 0x1E69DCC60);
        return UIMenu.init(children:)(v5);
      }

      if ((a2 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x1DA714420](v4, a2);
      }

      else
      {
        if (v4 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v6 = *(a2 + 8 * v4 + 32);
      }

      if (__OFADD__(v4, 1))
      {
        break;
      }

      MEMORY[0x1DA713500](v6);
      if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D81913B4();
      }

      sub_1D8191404();
      v5._rawValue = v8;
      ++v4;
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  return 0;
}

id sub_1D7F97008(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = sub_1D818E994();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D818E924();
  v10 = a3;
  v11 = a1;
  BlueprintTableViewDelegate.tableView(_:contextMenuConfigurationForRowAt:point:)();
  v13 = v12;

  (*(v7 + 8))(v9, v6);

  return v13;
}

void BlueprintTableViewDelegate.tableView(_:willPerformPreviewActionForMenuWith:animator:)(uint64_t a1, uint64_t a2, void *a3)
{
  OUTLINED_FUNCTION_0_32();
  v5 = swift_allocObject();
  *(v5 + 16) = a3;
  *(v5 + 24) = v3;
  v13 = sub_1D7F9DB80;
  v14 = v5;
  v9 = MEMORY[0x1E69E9820];
  v10 = 1107296256;
  OUTLINED_FUNCTION_17();
  v11 = v6;
  v12 = &block_descriptor_21;
  v7 = _Block_copy(&v9);
  swift_unknownObjectRetain();
  v8 = v3;

  [a3 addCompletion_];
  _Block_release(v7);
}

void sub_1D7F97204(void *a1, void *a2)
{
  v3 = [a1 previewViewController];
  if (v3)
  {
    v4 = v3;
    type metadata accessor for PreviewViewController();
    if (swift_dynamicCastClass())
    {
      v5 = v4;
      v6 = sub_1D7F0E0A0();

      v4 = v6;
      setPreviewing(viewController:previewing:)(v4, 0);
    }

    v7 = sub_1D7F973A0(a2, &selRef_splitViewController);
    v8 = sub_1D7F973A0(a2, &selRef_tabBarController);
    if (v7)
    {
      v11 = v8;
      [v7 showViewController:v4 sender:a2];
    }

    else
    {
      if (!v8)
      {
        swift_beginAccess();
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v10 = Strong;
          [Strong showViewController:v4 sender:a2];
        }

        else
        {
        }

        return;
      }

      v11 = v8;
      [v8 showViewController:v4 sender:a2];
    }
  }
}

id sub_1D7F973A0(void *a1, SEL *a2)
{
  OUTLINED_FUNCTION_10(a1 + *((*MEMORY[0x1E69E7D40] & *a1) + 0xD8), a2);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong || (v4 = Strong, v5 = [Strong *a2], v4, !v5))
  {
    v6 = swift_unknownObjectWeakLoadStrong();
    if (v6)
    {
      v7 = v6;
      v8 = [v6 presentingViewController];

      v5 = [v8 *a2];
    }

    else
    {
      return 0;
    }
  }

  return v5;
}

void sub_1D7F97488(void *a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v8 = a3;
  v9 = a4;
  swift_unknownObjectRetain();
  v11 = a1;
  BlueprintTableViewDelegate.tableView(_:willPerformPreviewActionForMenuWith:animator:)(v11, v10, a5);

  swift_unknownObjectRelease();
}

UITargetedPreview_optional __swiftcall BlueprintTableViewDelegate.tableView(_:previewForHighlightingContextMenuWithConfiguration:)(UITableView *_, UIContextMenuConfiguration previewForHighlightingContextMenuWithConfiguration)
{
  OUTLINED_FUNCTION_120();
  v3 = v2;
  v5 = v4;
  v98 = v6;
  v7 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x78);
  v8 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x58);
  OUTLINED_FUNCTION_85_0();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_9();
  v95 = v10;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_94();
  v96 = v12;
  v93 = v8;
  v94 = v7;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v97 = AssociatedTypeWitness;
  v91 = AssociatedConformanceWitness;
  v15 = type metadata accessor for BlueprintLayoutItem(0, AssociatedTypeWitness, AssociatedConformanceWitness, v14);
  OUTLINED_FUNCTION_50(v15);
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_94();
  v92 = v17;
  OUTLINED_FUNCTION_0_73();
  sub_1D7E54930(0, v18, v19, MEMORY[0x1E69E6720]);
  OUTLINED_FUNCTION_50(v20);
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_94();
  v103 = v22;
  OUTLINED_FUNCTION_52_0();
  v104 = sub_1D818E994();
  OUTLINED_FUNCTION_9();
  v100 = v23;
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_15();
  v99 = v26 - v25;
  OUTLINED_FUNCTION_12_18();
  v27 = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_12_18();
  v28 = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_55_0();
  v29 = swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_55_0();
  v30 = swift_getAssociatedConformanceWitness();
  v108[0] = v27;
  v108[1] = v28;
  v108[2] = v29;
  v108[3] = v30;
  v31 = type metadata accessor for Blueprint(0, v108);
  OUTLINED_FUNCTION_9();
  v107 = v32;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_28_1();
  v35 = type metadata accessor for BlueprintItem(255, v28, v30, v34);
  OUTLINED_FUNCTION_107();
  sub_1D8191E84();
  OUTLINED_FUNCTION_9();
  v101 = v37;
  v102 = v36;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v38);
  v40 = v89 - v39;
  OUTLINED_FUNCTION_2();
  v42 = v41;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_94();
  v105 = v44;
  *&v109 = [v5 identifier];
  sub_1D7F9DB88();
  if (!swift_dynamicCast())
  {
    goto LABEL_9;
  }

  v90 = v42;
  v106 = v35;
  v89[1] = *((*MEMORY[0x1E69E7D40] & *v3) + 0x90);
  v45 = OUTLINED_FUNCTION_74();
  BlueprintProviderType.blueprint.getter(v45, v46);
  OUTLINED_FUNCTION_101_0();
  Blueprint.item(for:)();

  v47 = v107 + 8;
  v48 = *(v107 + 8);
  v48(v29, v31);
  OUTLINED_FUNCTION_43_0(v40, 1, v106);
  if (v57)
  {
    v49 = OUTLINED_FUNCTION_134_0();
LABEL_5:
    v50(v49);
    goto LABEL_9;
  }

  v51 = OUTLINED_FUNCTION_73();
  v52(v51);
  v107 = v47;
  v53 = OUTLINED_FUNCTION_74();
  BlueprintProviderType.blueprint.getter(v53, v54);
  v55 = v103;
  Blueprint.indexPath(forItem:)();
  v48(v29, v31);
  v56 = v104;
  OUTLINED_FUNCTION_43_0(v55, 1, v104);
  if (v57)
  {
    v58 = OUTLINED_FUNCTION_58_4();
    v59(v58);
    sub_1D7E73334(v55);
    goto LABEL_9;
  }

  v62 = OUTLINED_FUNCTION_73();
  v63(v62);
  v64 = sub_1D818E8E4();
  v65 = [v98 cellForRowAtIndexPath_];

  if (!v65)
  {
    v83 = OUTLINED_FUNCTION_86_1();
    v84(v83, v56);
    v85 = OUTLINED_FUNCTION_58_4();
    v86(v85);
    goto LABEL_9;
  }

  v66 = v65;
  v67 = [v66 window];
  if (!v67)
  {

    v87 = OUTLINED_FUNCTION_86_1();
    v88(v87, v56);
    v49 = OUTLINED_FUNCTION_58_4();
    goto LABEL_5;
  }

  v68 = OUTLINED_FUNCTION_110();
  BlueprintLayoutProviderType.layoutBlueprint.getter(v68, v69);
  OUTLINED_FUNCTION_16();
  v70 = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_111();
  v71 = swift_getAssociatedConformanceWitness();
  v72 = v97;
  *&v109 = v70;
  *(&v109 + 1) = v97;
  *&v110 = v71;
  *(&v110 + 1) = v91;
  v73 = OUTLINED_FUNCTION_118_0();
  v75 = type metadata accessor for BlueprintLayout(v73, v74);
  v76 = v92;
  v77 = OUTLINED_FUNCTION_101_0();
  BlueprintLayout.subscript.getter(v77, v78);
  OUTLINED_FUNCTION_3_0();
  (*(v79 + 8))(v108, v75);
  v80 = (*(v95 + 32))(v96, v76, v72);
  OUTLINED_FUNCTION_91(v80, &qword_1EDBB17D0, &protocol descriptor for DragPreviewable);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v111 = 0;
    v109 = 0u;
    v110 = 0u;
  }

  sub_1D7E0A1A8(0, &unk_1EDBAE520, 0x1E69DD070);
  sub_1D7F9DBE4(&v109, v108, &qword_1EDBB17C0, &qword_1EDBB17D0, &protocol descriptor for DragPreviewable);
  sub_1D8184638(v66, v108);

  v81 = OUTLINED_FUNCTION_86_1();
  v82(v81, v56);
  (*(v90 + 8))(v105, v106);
  sub_1D7F9E7CC(&v109, &qword_1EDBB17C0, &qword_1EDBB17D0, &protocol descriptor for DragPreviewable);
LABEL_9:
  OUTLINED_FUNCTION_130_0();
  OUTLINED_FUNCTION_100();
  result.value.super.isa = v60;
  result.is_nil = v61;
  return result;
}

id sub_1D7F97D1C(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = a1;
  v9 = BlueprintTableViewDelegate.tableView(_:previewForHighlightingContextMenuWithConfiguration:)(v6, v7);

  return v9;
}

UITargetedPreview_optional __swiftcall BlueprintTableViewDelegate.tableView(_:previewForDismissingContextMenuWithConfiguration:)(UITableView *_, UIContextMenuConfiguration previewForDismissingContextMenuWithConfiguration)
{
  OUTLINED_FUNCTION_120();
  v5 = v4;
  v135 = v6;
  v7 = *v2;
  v8 = *MEMORY[0x1E69E7D40];
  v9 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x78);
  v10 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x58);
  OUTLINED_FUNCTION_12_13();
  OUTLINED_FUNCTION_103_0();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_9();
  v129 = v12;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_94();
  v130 = v14;
  v127 = v10;
  v128 = v9;
  OUTLINED_FUNCTION_111();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v16 = type metadata accessor for BlueprintLayoutItem(0, AssociatedTypeWitness, AssociatedConformanceWitness, v15);
  OUTLINED_FUNCTION_50(v16);
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_94();
  v126 = v18;
  OUTLINED_FUNCTION_0_73();
  sub_1D7E54930(0, v19, v20, MEMORY[0x1E69E6720]);
  v22 = OUTLINED_FUNCTION_50(v21);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_23();
  v134 = v23;
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_123_1();
  v143 = sub_1D818E994();
  OUTLINED_FUNCTION_9();
  v136 = v25;
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_23();
  v133 = v27;
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v28);
  v132 = v122 - v29;
  v30 = *((v8 & v7) + 0x70);
  v148 = v2;
  v31 = *((v8 & v7) + 0x50);
  OUTLINED_FUNCTION_12_18();
  v32 = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_12_18();
  v33 = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_55_0();
  v34 = swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_55_0();
  v35 = swift_getAssociatedConformanceWitness();
  v149[0] = v32;
  v149[1] = v33;
  v149[2] = v34;
  v150 = v35;
  v147 = type metadata accessor for Blueprint(0, v149);
  OUTLINED_FUNCTION_9();
  v145 = v36;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_26();
  v38 = OUTLINED_FUNCTION_124();
  v41 = type metadata accessor for BlueprintItem(v38, v39, v35, v40);
  sub_1D8191E84();
  OUTLINED_FUNCTION_9();
  v140 = v43;
  v141 = v42;
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_23();
  v139 = v44;
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v45);
  v47 = v122 - v46;
  OUTLINED_FUNCTION_2();
  v49 = v48;
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_23();
  v137 = v51;
  OUTLINED_FUNCTION_77();
  v53 = MEMORY[0x1EEE9AC00](v52);
  v138 = v122 - v54;
  *&v152 = [v5 identifier];
  v144 = sub_1D7F9DB88();
  v55 = swift_dynamicCast();
  v131 = AssociatedTypeWitness;
  v146 = v49;
  if (v55)
  {
    v123 = v3;
    v124 = v5;
    v122[1] = *((*MEMORY[0x1E69E7D40] & *v148) + 0x90);
    v56 = OUTLINED_FUNCTION_74();
    BlueprintProviderType.blueprint.getter(v56, v57);
    OUTLINED_FUNCTION_72_0();
    Blueprint.item(for:)();

    v58 = *(v145 + 8);
    v59 = OUTLINED_FUNCTION_11_0();
    v58(v59);
    OUTLINED_FUNCTION_43_0(v47, 1, v41);
    if (v66)
    {
      v60 = v31;
      (*(v140 + 8))(v47, v141);
    }

    else
    {
      (*(v146 + 32))(v138, v47, v41);
      v142 = v41;
      v62 = OUTLINED_FUNCTION_74();
      BlueprintProviderType.blueprint.getter(v62, v63);
      v64 = v123;
      v41 = v32;
      Blueprint.indexPath(forItem:)();
      v65 = OUTLINED_FUNCTION_11_0();
      v58(v65);
      OUTLINED_FUNCTION_43_0(v64, 1, v143);
      v60 = v31;
      if (v66)
      {
        v67 = OUTLINED_FUNCTION_106_0();
        v68(v67);
        sub_1D7E73334(v64);
      }

      else
      {
        v69 = v136;
        v70 = v132;
        v71 = v143;
        (*(v136 + 32))(v132, v64, v143);
        v72 = OUTLINED_FUNCTION_99();
        v41 = v135;
        UITableView.deselectItem(at:animated:)(v72, v73);
        (*(v69 + 8))(v70, v71);
        v74 = OUTLINED_FUNCTION_106_0();
        v76(v74, v75);
      }
    }

    v61 = v148;
    v5 = v124;
  }

  else
  {
    v60 = v31;
    v61 = v148;
  }

  *&v152 = [v5 identifier];
  if (swift_dynamicCast())
  {
    v77 = *((*MEMORY[0x1E69E7D40] & *v61) + 0x90);
    v142 = v41;
    v144 = v77;
    BlueprintProviderType.blueprint.getter(v60, v30);
    v78 = v139;
    Blueprint.item(for:)();
    v79 = v142;

    v80 = *(v145 + 8);
    v81 = OUTLINED_FUNCTION_101_0();
    v80(v81);
    OUTLINED_FUNCTION_43_0(v78, 1, v79);
    if (v66)
    {
      v82 = OUTLINED_FUNCTION_70_2();
      v83(v82);
    }

    else
    {
      v84 = v78;
      v85 = v137;
      (*(v146 + 32))(v137, v84, v79);
      v86 = OUTLINED_FUNCTION_6_16();
      BlueprintProviderType.blueprint.getter(v86, v87);
      v88 = v134;
      Blueprint.indexPath(forItem:)();
      v89 = v88;
      v90 = OUTLINED_FUNCTION_101_0();
      v80(v90);
      OUTLINED_FUNCTION_43_0(v88, 1, v143);
      if (v91)
      {
        v92 = OUTLINED_FUNCTION_70_2();
        v93(v92, v142);
        sub_1D7E73334(v88);
      }

      else
      {
        v96 = v146;
        (*(v136 + 32))(v133, v89, v143);
        v97 = sub_1D818E8E4();
        v98 = [v135 cellForRowAtIndexPath_];

        if (v98)
        {
          v155[0] = v98;
          v99 = sub_1D7E0A1A8(0, &qword_1EDBAE530, 0x1E69DD028);
          OUTLINED_FUNCTION_91(v99, &unk_1ECA0F5A0, &protocol descriptor for ContextMenuPreviewable);
          v100 = v98;
          if (swift_dynamicCast())
          {
            sub_1D7E05450(&v152, v149);
            v101 = v150;
            v102 = v151;
            __swift_project_boxed_opaque_existential_1(v149, v150);
            (*(v102 + 8))(0, v101, v102);
            __swift_destroy_boxed_opaque_existential_1Tm(v149);
          }

          else
          {
            v154 = 0;
            v152 = 0u;
            v153 = 0u;
            sub_1D7F9E7CC(&v152, &unk_1ECA0E630, &unk_1ECA0F5A0, &protocol descriptor for ContextMenuPreviewable);
          }

          v105 = v131;
          v106 = v100;
          v107 = [v106 window];
          if (v107)
          {

            OUTLINED_FUNCTION_19_11();
            v108 = OUTLINED_FUNCTION_110();
            BlueprintLayoutProviderType.layoutBlueprint.getter(v108, v109);
            OUTLINED_FUNCTION_16();
            v110 = swift_getAssociatedTypeWitness();
            OUTLINED_FUNCTION_111();
            v111 = swift_getAssociatedConformanceWitness();
            *&v152 = v110;
            *(&v152 + 1) = v105;
            *&v153 = v111;
            *(&v153 + 1) = AssociatedConformanceWitness;
            v112 = type metadata accessor for BlueprintLayout(0, &v152);
            v113 = v126;
            v114 = OUTLINED_FUNCTION_73();
            BlueprintLayout.subscript.getter(v114, v115);
            OUTLINED_FUNCTION_3_0();
            (*(v116 + 8))(v149, v112);
            v117 = (*(v129 + 32))(v130, v113, v105);
            OUTLINED_FUNCTION_91(v117, &qword_1EDBB17D0, &protocol descriptor for DragPreviewable);
            if ((swift_dynamicCast() & 1) == 0)
            {
              v154 = 0;
              v152 = 0u;
              v153 = 0u;
            }

            sub_1D7E0A1A8(0, &unk_1EDBAE520, 0x1E69DD070);
            sub_1D7F9DBE4(&v152, v149, &qword_1EDBB17C0, &qword_1EDBB17D0, &protocol descriptor for DragPreviewable);
            sub_1D8184638(v106, v149);

            v118 = OUTLINED_FUNCTION_86_1();
            v119(v118, v143);
            (*(v96 + 8))(v137, v142);
            sub_1D7F9E7CC(&v152, &qword_1EDBB17C0, &qword_1EDBB17D0, &protocol descriptor for DragPreviewable);
          }

          else
          {

            v120 = OUTLINED_FUNCTION_86_1();
            v121(v120, v143);
            (*(v96 + 8))(v85, v142);
          }
        }

        else
        {
          v103 = OUTLINED_FUNCTION_86_1();
          v104(v103, v143);
          (*(v96 + 8))(v85, v142);
        }
      }
    }
  }

  OUTLINED_FUNCTION_130_0();
  OUTLINED_FUNCTION_100();
  result.value.super.isa = v94;
  result.is_nil = v95;
  return result;
}

id sub_1D7F98918(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = a1;
  v9 = BlueprintTableViewDelegate.tableView(_:previewForDismissingContextMenuWithConfiguration:)(v6, v7);

  return v9;
}

void BlueprintTableViewDelegate.tableView(_:didHighlightRowAt:)(void *a1, uint64_t a2)
{
  v3 = sub_1D818E8E4();
  v4 = [a1 cellForRowAtIndexPath_];

  if (!v4 || (v5 = [v4 selectionStyle], v4, v5))
  {
    sub_1D816FB6C(v11);
    if (v12)
    {
      __swift_project_boxed_opaque_existential_1(v11, v12);
      v6 = OUTLINED_FUNCTION_4_1();
      v8 = v7(v6);
      v9 = OBJC_IVAR____TtC5TeaUI13SeparatorView_isHighlighted;
      OUTLINED_FUNCTION_56(&v8[OBJC_IVAR____TtC5TeaUI13SeparatorView_isHighlighted], &v10);
      v8[v9] = 1;
      sub_1D806E9CC();

      __swift_destroy_boxed_opaque_existential_1Tm(v11);
    }

    else
    {
      sub_1D7F9E7CC(v11, &qword_1EDBB0090, qword_1EDBB0098, &protocol descriptor for SeparatorViewProviderType);
    }
  }
}

uint64_t BlueprintTableViewDelegate.tableView(_:didUnhighlightRowAt:)(uint64_t a1, uint64_t a2)
{
  sub_1D816FB6C(v8);
  if (!v9)
  {
    return sub_1D7F9E7CC(v8, &qword_1EDBB0090, qword_1EDBB0098, &protocol descriptor for SeparatorViewProviderType);
  }

  __swift_project_boxed_opaque_existential_1(v8, v9);
  v2 = OUTLINED_FUNCTION_4_1();
  v4 = v3(v2);
  v5 = OBJC_IVAR____TtC5TeaUI13SeparatorView_isHighlighted;
  OUTLINED_FUNCTION_56(&v4[OBJC_IVAR____TtC5TeaUI13SeparatorView_isHighlighted], &v7);
  v4[v5] = 0;
  sub_1D806E9CC();

  return __swift_destroy_boxed_opaque_existential_1Tm(v8);
}

uint64_t sub_1D7F98B84()
{
  OUTLINED_FUNCTION_29_0();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_41();
  v5 = v1;
  v6 = v2;
  v0(v5, v3);

  v7 = OUTLINED_FUNCTION_47_4();
  return v8(v7);
}

void BlueprintTableViewDelegate.tableView(_:willDisplay:forRowAt:)(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v13[0] = 3;
  BlueprintImpressionManager.startImpression(at:view:triggerSource:)(a3, a2, v13);
  OUTLINED_FUNCTION_22_2();
  v7 = *(v6 + 248);
  OUTLINED_FUNCTION_10(v4 + v7, v8);
  v9 = *(v4 + v7);
  if (v9)
  {
    ObjectType = swift_getObjectType();
    if (dynamic_cast_existential_1_conditional(a2, ObjectType, &protocol descriptor for BlueprintViewportMonitorObserver))
    {
      v11 = v9;
      v12 = a2;
      OUTLINED_FUNCTION_104_0();
      BlueprintViewportMonitor.add(observer:scrollView:)();
    }
  }
}

void BlueprintTableViewDelegate.tableView(_:didEndDisplaying:forRowAt:)()
{
  OUTLINED_FUNCTION_120();
  v1 = v0;
  v92 = v3;
  v93 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_3_7();
  v7 = *(v6 + 112);
  v10 = *((v9 & v8) + 0x50);
  OUTLINED_FUNCTION_33_6();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_33_6();
  v12 = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_72_0();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v86 = v10;
  v87 = v7;
  OUTLINED_FUNCTION_72_0();
  v95[0] = AssociatedTypeWitness;
  v95[1] = v12;
  v95[2] = AssociatedConformanceWitness;
  v95[3] = swift_getAssociatedConformanceWitness();
  type metadata accessor for Blueprint(0, v95);
  OUTLINED_FUNCTION_9();
  v84 = v15;
  v85 = v14;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_94();
  v83 = v17;
  OUTLINED_FUNCTION_52_0();
  v18 = sub_1D818E994();
  OUTLINED_FUNCTION_9();
  v90 = v19;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_15();
  v88 = v22 - v21;
  v23 = OUTLINED_FUNCTION_52_0();
  sub_1D7EA0824(v23);
  v89 = v24;
  OUTLINED_FUNCTION_8();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_15();
  v28 = v27 - v26;
  OUTLINED_FUNCTION_0_73();
  sub_1D7E54930(0, v29, v30, MEMORY[0x1E69E6720]);
  v32 = OUTLINED_FUNCTION_50(v31);
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_23();
  v34 = v33;
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v81 - v36;
  v39 = MEMORY[0x1EEE9AC00](v38);
  v41 = &v81 - v40;
  v91 = v5;
  v42 = [v5 indexPathsForVisibleRows];
  if (!v42 || (v43 = v42, v44 = sub_1D8191314(), v43, MEMORY[0x1EEE9AC00](v45), *(&v81 - 2) = v92, LOBYTE(v43) = sub_1D7EB0784(sub_1D7EB0E84, (&v81 - 4), v44, MEMORY[0x1E6969C28]), , (v43 & 1) == 0))
  {
    OUTLINED_FUNCTION_24_8();
    LOBYTE(v95[0]) = 3;
    BlueprintImpressionManager.endImpression(at:view:triggerSource:)(v92, v93, v95, v46, v47, v48, v49, v50, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92);
  }

  if (([v91 allowsMultipleSelection] & 1) == 0)
  {
    OUTLINED_FUNCTION_24_8();
    v52 = v1 + *(v51 + 208);
    OUTLINED_FUNCTION_8_4(v52, v95);
    if (swift_unknownObjectWeakLoadStrong())
    {
      v53 = *(v52 + 8);
      ObjectType = swift_getObjectType();
      (*(v53 + 8))(ObjectType, v53);
      swift_unknownObjectRelease();
    }

    else
    {
      __swift_storeEnumTagSinglePayload(v41, 1, 1, v18);
    }

    v55 = v90;
    (*(v90 + 16))(v37, v92, v18);
    OUTLINED_FUNCTION_102();
    __swift_storeEnumTagSinglePayload(v56, v57, v58, v18);
    v59 = *(v89 + 48);
    sub_1D7E54838(v41, v28);
    sub_1D7E54838(v37, v28 + v59);
    OUTLINED_FUNCTION_43_0(v28, 1, v18);
    if (v60)
    {
      sub_1D7E73334(v37);
      sub_1D7E73334(v41);
      OUTLINED_FUNCTION_43_0(v28 + v59, 1, v18);
      if (v60)
      {
        sub_1D7E73334(v28);
LABEL_18:
        if (([v93 isSelected] & 1) == 0 && (objc_msgSend(v93, sel_isEditing) & 1) == 0)
        {
          OUTLINED_FUNCTION_24_8();
          BlueprintProviderType.blueprint.getter(v86, v87);
          v68 = v85;
          Blueprint.contains(indexPath:)();
          v70 = v69;
          v71 = OUTLINED_FUNCTION_70_2();
          v72(v71, v68);
          if (v70)
          {
            v73 = sub_1D818E8E4();
            [v91 selectRowAtIndexPath:v73 animated:0 scrollPosition:0];
          }
        }

        goto LABEL_22;
      }
    }

    else
    {
      sub_1D7E54838(v28, v34);
      OUTLINED_FUNCTION_43_0(v28 + v59, 1, v18);
      if (!v60)
      {
        v62 = *(v55 + 32);
        v82 = v34;
        v63 = v88;
        v62(v88, v28 + v59, v18);
        OUTLINED_FUNCTION_6_29();
        sub_1D7E2DA70(v64, v65, MEMORY[0x1E6969C50]);
        v66 = sub_1D8190ED4();
        v67 = *(v55 + 8);
        v67(v63, v18);
        sub_1D7E73334(v37);
        sub_1D7E73334(v41);
        v67(v82, v18);
        sub_1D7E73334(v28);
        if ((v66 & 1) == 0)
        {
          goto LABEL_22;
        }

        goto LABEL_18;
      }

      sub_1D7E73334(v37);
      sub_1D7E73334(v41);
      (*(v55 + 8))(v34, v18);
    }

    OUTLINED_FUNCTION_7_27();
    sub_1D7F9E310(v28, v61);
  }

LABEL_22:
  OUTLINED_FUNCTION_24_8();
  v75 = *(v74 + 248);
  OUTLINED_FUNCTION_8_4(v1 + v75, &v94);
  v76 = *(v1 + v75);
  if (v76)
  {
    v77 = v93;
    v78 = swift_getObjectType();
    if (dynamic_cast_existential_1_conditional(v77, v78, &protocol descriptor for BlueprintViewportMonitorObserver))
    {
      v79 = v76;
      v80 = v93;
      BlueprintViewportMonitor.remove(observer:)();
    }
  }

  OUTLINED_FUNCTION_100();
}

uint64_t sub_1D7F99424(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, void (*a6)(id, id, uint64_t))
{
  v10 = sub_1D818E994();
  OUTLINED_FUNCTION_9();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_15();
  v16 = v15 - v14;
  sub_1D818E924();
  v17 = a3;
  v18 = a4;
  v19 = a1;
  a6(v17, v18, v16);

  return (*(v12 + 8))(v16, v10);
}

void sub_1D7F99534(uint64_t a1, void *a2)
{
  OUTLINED_FUNCTION_34_0();
  OUTLINED_FUNCTION_3_7();
  v5 = *(v4 + 248);
  OUTLINED_FUNCTION_10(v2 + v5, v6);
  v7 = *(v2 + v5);
  if (v7)
  {
    ObjectType = swift_getObjectType();
    if (dynamic_cast_existential_1_conditional(a2, ObjectType, &protocol descriptor for BlueprintViewportMonitorObserver))
    {
      v9 = v7;
      v10 = a2;
      BlueprintViewportMonitor.add(observer:scrollView:)();
    }
  }
}

void sub_1D7F995F0(uint64_t a1, void *a2)
{
  ObjectType = swift_getObjectType();
  if (dynamic_cast_existential_1_conditional(a2, ObjectType, &protocol descriptor for BlueprintViewportMonitorObserver))
  {
    OUTLINED_FUNCTION_3_7();
    v6 = *(v5 + 248);
    OUTLINED_FUNCTION_10(v2 + v6, v7);
    v8 = *(v2 + v6);
    if (v8)
    {
      v9 = a2;
      v10 = v8;
      OUTLINED_FUNCTION_47();
      BlueprintViewportMonitor.remove(observer:)();
    }
  }
}

void BlueprintTableViewDelegate.tableView(_:targetIndexPathForMoveFromRowAt:toProposedIndexPath:)()
{
  OUTLINED_FUNCTION_120();
  v1 = v0;
  v69 = v2;
  v66 = v3;
  v67 = v4;
  v5 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x70);
  v6 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x50);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_9();
  v59 = v8;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_94();
  v60 = v10;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_85_0();
  type metadata accessor for BlueprintItem(v12, v13, v14, v15);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_94();
  v61 = v17;
  OUTLINED_FUNCTION_52_0();
  v18 = sub_1D818E994();
  OUTLINED_FUNCTION_9();
  v65 = v19;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_15();
  v62 = v22 - v21;
  v23 = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_75_2();
  v24 = swift_getAssociatedConformanceWitness();
  v25 = OUTLINED_FUNCTION_118_0();
  v27 = type metadata accessor for BlueprintSection(v25, v26);
  OUTLINED_FUNCTION_9();
  v64 = v28;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_94();
  v63 = v30;
  v72[0] = v23;
  v72[1] = AssociatedTypeWitness;
  v72[2] = v24;
  v73 = AssociatedConformanceWitness;
  v31 = OUTLINED_FUNCTION_118_0();
  type metadata accessor for Blueprint(v31, v32);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_21_11();
  OUTLINED_FUNCTION_131_0();
  BlueprintProviderType.blueprint.getter(v6, v5);
  sub_1D818E974();
  OUTLINED_FUNCTION_117_0();
  LOBYTE(v24) = Blueprint.contains(index:)(v34);
  v35 = OUTLINED_FUNCTION_6_16();
  v68 = v36;
  v36(v35);
  if ((v24 & 1) == 0)
  {
    (*(v65 + 16))(v67, v66, v18);
    goto LABEL_14;
  }

  v58 = sub_1D818E944();
  OUTLINED_FUNCTION_131_0();
  BlueprintProviderType.blueprint.getter(v6, v5);
  sub_1D818E974();
  OUTLINED_FUNCTION_117_0();
  Blueprint.subscript.getter();
  v37 = OUTLINED_FUNCTION_6_16();
  v68(v37);
  swift_getWitnessTable();
  v38 = sub_1D8191834();
  (*(v64 + 8))(v63, v27);
  v39 = v38 - 1;
  if (!__OFSUB__(v38, 1))
  {
    if (v39 >= v58)
    {
      v39 = v58;
    }

    v40 = v39 & ~(v39 >> 63);
    v41 = sub_1D818E974();
    MEMORY[0x1DA710B40](v40, v41);
    OUTLINED_FUNCTION_131_0();
    BlueprintProviderType.blueprint.getter(v6, v5);
    OUTLINED_FUNCTION_117_0();
    Blueprint.contains(indexPath:)();
    v43 = v42;
    v44 = OUTLINED_FUNCTION_6_16();
    v68(v44);
    if ((v43 & 1) == 0)
    {
      (*(v65 + 8))(v62, v18);
      (*(v65 + 16))(v67, v66, v18);
      goto LABEL_14;
    }

    OUTLINED_FUNCTION_131_0();
    BlueprintProviderType.blueprint.getter(v6, v5);
    OUTLINED_FUNCTION_117_0();
    Blueprint.subscript.getter();
    v45 = OUTLINED_FUNCTION_6_16();
    v68(v45);
    v46 = (*(v59 + 16))(v60, v61, AssociatedTypeWitness);
    OUTLINED_FUNCTION_91(v46, &qword_1ECA0EFE0, &protocol descriptor for Movable);
    OUTLINED_FUNCTION_104_0();
    if (swift_dynamicCast())
    {
      sub_1D7E05450(v70, v72);
      v1 = v74;
      __swift_project_boxed_opaque_existential_1(v72, v73);
      v47 = OUTLINED_FUNCTION_4_1();
      v49 = v48(v47);
      v50 = OUTLINED_FUNCTION_70_2();
      v51(v50);
      v52 = OUTLINED_FUNCTION_77_3();
      v53(v52);
      if (v49)
      {
        (v1[2])(v67, v69, v60);
        __swift_destroy_boxed_opaque_existential_1Tm(v72);
LABEL_14:
        OUTLINED_FUNCTION_100();
        return;
      }

      __swift_destroy_boxed_opaque_existential_1Tm(v72);
    }

    else
    {
      v54 = OUTLINED_FUNCTION_70_2();
      v55(v54);
      v56 = OUTLINED_FUNCTION_77_3();
      v57(v56);
      v71 = 0;
      memset(v70, 0, sizeof(v70));
      sub_1D7F9E7CC(v70, &unk_1ECA0E640, &qword_1ECA0EFE0, &protocol descriptor for Movable);
    }

    (v1[2])(v67, v66, v60);
    goto LABEL_14;
  }

  __break(1u);
}

id sub_1D7F99D5C(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_1D818E994();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v22 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v22 - v15;
  sub_1D818E924();
  sub_1D818E924();
  v17 = a3;
  v18 = a1;
  BlueprintTableViewDelegate.tableView(_:targetIndexPathForMoveFromRowAt:toProposedIndexPath:)();

  v19 = *(v8 + 8);
  v19(v10, v7);
  v19(v13, v7);
  v20 = sub_1D818E8E4();
  v19(v16, v7);

  return v20;
}

void BlueprintTableViewDelegate.tableView(_:trailingSwipeActionsConfigurationForRowAt:)()
{
  OUTLINED_FUNCTION_120();
  v33 = v2;
  v3 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x50);
  OUTLINED_FUNCTION_75_2();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_94();
  OUTLINED_FUNCTION_75_2();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_100_0();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v9 = OUTLINED_FUNCTION_137_0(AssociatedConformanceWitness, v6, v7, v8, &associated conformance descriptor for BlueprintProviderType.BlueprintProviderType.Model: Modelable);
  OUTLINED_FUNCTION_111_0(v9);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_26();
  v11 = OUTLINED_FUNCTION_12_13();
  type metadata accessor for BlueprintItem(v11, v12, &protocol requirements base descriptor for BlueprintProviderType, v13);
  OUTLINED_FUNCTION_9();
  v34 = v15;
  v35 = v14;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_51();
  OUTLINED_FUNCTION_138_0();
  OUTLINED_FUNCTION_113_0();
  v17 = OUTLINED_FUNCTION_11_0();
  v18(v17);
  v19 = OUTLINED_FUNCTION_84_1();
  v21 = v20(v19);
  OUTLINED_FUNCTION_91(v21, &qword_1EDBB0730, &protocol descriptor for BlueprintViewActionable);
  OUTLINED_FUNCTION_92();
  if ((swift_dynamicCast() & 1) == 0)
  {
    (*(v34 + 8))(v1, v35);
    OUTLINED_FUNCTION_90();
    sub_1D7F9E7CC(&v36, &qword_1ECA0E650, &qword_1EDBB0730, &protocol descriptor for BlueprintViewActionable);
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_112_0();
  v22 = OUTLINED_FUNCTION_11_0();
  v24 = v23(v22);
  if (!v24)
  {
    v29 = OUTLINED_FUNCTION_18_14();
    v30(v29);
LABEL_8:
    __swift_destroy_boxed_opaque_existential_1Tm(v37);
    goto LABEL_9;
  }

  if (!*(v24 + 16))
  {
    v31 = OUTLINED_FUNCTION_18_14();
    v32(v31);

    goto LABEL_8;
  }

  v25 = OUTLINED_FUNCTION_73();
  sub_1D7F9A248(v25, v26, v33, v3);

  v27 = OUTLINED_FUNCTION_18_14();
  v28(v27);
  __swift_destroy_boxed_opaque_existential_1Tm(v37);
LABEL_9:
  OUTLINED_FUNCTION_100();
}

id sub_1D7F9A248(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = a4;
  v34 = a1;
  v35 = a3;
  v5 = type metadata accessor for BlueprintViewAction(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v39 = v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v33 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = v33 - v12;
  v14 = 0;
  v33[1] = 0;
  v15 = *(a2 + 16);
  v16 = MEMORY[0x1E69E7CC0];
  v38 = a2;
LABEL_2:
  while (v14 != v15)
  {
    v17 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v18 = *(v6 + 72);
    sub_1D7F9E1BC(a2 + v17 + v18 * v14++, v13);
    sub_1D7F9E1BC(v13, v10);

    sub_1D7F9E220(0);
    v20 = *&v10[*(v19 + 64)];
    sub_1D7F9E310(&v10[*(v19 + 48)], type metadata accessor for BlueprintViewAction.Action);
    v21 = (v20 + 40);
    v22 = *(v20 + 16) + 1;
    while (--v22)
    {
      v23 = v21;
      v21 += 16;
      if (*v23 == 2 && *(v23 - 1) == 1)
      {

        sub_1D7F9E310(v13, type metadata accessor for BlueprintViewAction);
        goto LABEL_2;
      }
    }

    sub_1D7F9E368(v13, v39);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v40 = v16;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1D7F0902C(0, *(v16 + 16) + 1, 1);
      v16 = v40;
    }

    v26 = *(v16 + 16);
    v25 = *(v16 + 24);
    if (v26 >= v25 >> 1)
    {
      sub_1D7F0902C(v25 > 1, v26 + 1, 1);
      v16 = v40;
    }

    *(v16 + 16) = v26 + 1;
    sub_1D7F9E368(v39, v16 + v17 + v26 * v18);
    a2 = v38;
  }

  v27 = sub_1D7E0A1A8(0, &qword_1ECA0E660, 0x1E69DCFC0);
  MEMORY[0x1EEE9AC00](v27);
  v28 = v35;
  v33[-4] = v36;
  v33[-3] = v28;
  v29 = v37;
  v33[-2] = v34;
  v33[-1] = v29;
  sub_1D7FFB7A8(sub_1D7F9E3CC, &v33[-6], v16);
  v31 = v30;

  return sub_1D80A8CC4(v31);
}

void BlueprintTableViewDelegate.tableView(_:leadingSwipeActionsConfigurationForRowAt:)()
{
  OUTLINED_FUNCTION_120();
  v33 = v2;
  v3 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x50);
  OUTLINED_FUNCTION_75_2();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_94();
  OUTLINED_FUNCTION_75_2();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_100_0();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v9 = OUTLINED_FUNCTION_137_0(AssociatedConformanceWitness, v6, v7, v8, &associated conformance descriptor for BlueprintProviderType.BlueprintProviderType.Model: Modelable);
  OUTLINED_FUNCTION_111_0(v9);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_26();
  v11 = OUTLINED_FUNCTION_12_13();
  type metadata accessor for BlueprintItem(v11, v12, &protocol requirements base descriptor for BlueprintProviderType, v13);
  OUTLINED_FUNCTION_9();
  v34 = v15;
  v35 = v14;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_51();
  OUTLINED_FUNCTION_138_0();
  OUTLINED_FUNCTION_113_0();
  v17 = OUTLINED_FUNCTION_11_0();
  v18(v17);
  v19 = OUTLINED_FUNCTION_84_1();
  v21 = v20(v19);
  OUTLINED_FUNCTION_91(v21, &qword_1EDBB0730, &protocol descriptor for BlueprintViewActionable);
  OUTLINED_FUNCTION_92();
  if ((swift_dynamicCast() & 1) == 0)
  {
    (*(v34 + 8))(v1, v35);
    OUTLINED_FUNCTION_90();
    sub_1D7F9E7CC(&v36, &qword_1ECA0E650, &qword_1EDBB0730, &protocol descriptor for BlueprintViewActionable);
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_112_0();
  v22 = OUTLINED_FUNCTION_11_0();
  v24 = v23(v22);
  if (!v24)
  {
    v29 = OUTLINED_FUNCTION_18_14();
    v30(v29);
LABEL_8:
    __swift_destroy_boxed_opaque_existential_1Tm(v37);
    goto LABEL_9;
  }

  if (!*(v24 + 16))
  {
    v31 = OUTLINED_FUNCTION_18_14();
    v32(v31);

    goto LABEL_8;
  }

  v25 = OUTLINED_FUNCTION_73();
  sub_1D7F9A248(v25, v26, v33, v3);

  v27 = OUTLINED_FUNCTION_18_14();
  v28(v27);
  __swift_destroy_boxed_opaque_existential_1Tm(v37);
LABEL_9:
  OUTLINED_FUNCTION_100();
}

id sub_1D7F9A8BC()
{
  OUTLINED_FUNCTION_29_0();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_41();
  v4 = v1;
  v5 = v2;
  v6 = OUTLINED_FUNCTION_53();
  v7 = v0(v6);

  v8 = OUTLINED_FUNCTION_47_4();
  v9(v8);

  return v7;
}

void BlueprintTableViewDelegate.tableView(_:editingStyleForRowAt:)()
{
  OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_12_13();
  OUTLINED_FUNCTION_103_0();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_9();
  v25 = v2;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_94();
  v23 = v4;
  OUTLINED_FUNCTION_16();
  v5 = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_111();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_111();
  v7 = swift_getAssociatedConformanceWitness();
  v27[0] = v5;
  v27[1] = AssociatedTypeWitness;
  v27[2] = AssociatedConformanceWitness;
  v28 = v7;
  v8 = type metadata accessor for Blueprint(0, v27);
  OUTLINED_FUNCTION_9();
  v10 = v9;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_51();
  v24 = type metadata accessor for BlueprintItem(0, AssociatedTypeWitness, v7, v12);
  OUTLINED_FUNCTION_9();
  v14 = v13;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_21_11();
  v16 = OUTLINED_FUNCTION_110();
  BlueprintProviderType.blueprint.getter(v16, v17);
  Blueprint.subscript.getter();
  (*(v10 + 8))(v0, v8);
  v18 = (*(v25 + 16))(v23, v5, AssociatedTypeWitness);
  OUTLINED_FUNCTION_91(v18, &qword_1EDBB0730, &protocol descriptor for BlueprintViewActionable);
  OUTLINED_FUNCTION_92();
  if (swift_dynamicCast())
  {
    sub_1D7E05450(v26, v27);
    v19 = v29;
    __swift_project_boxed_opaque_existential_1(v27, v28);
    v20 = OUTLINED_FUNCTION_161();
    v21(v20, v19);
    (*(v14 + 8))(v5, v24);
    __swift_destroy_boxed_opaque_existential_1Tm(v27);
  }

  else
  {
    v22 = OUTLINED_FUNCTION_90();
    (*(v14 + 8))(v5, v24, v22);
    sub_1D7F9E7CC(v26, &qword_1ECA0E650, &qword_1EDBB0730, &protocol descriptor for BlueprintViewActionable);
  }

  OUTLINED_FUNCTION_100();
}

uint64_t sub_1D7F9ACE8(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = sub_1D818E994();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D818E924();
  v10 = a3;
  v11 = a1;
  BlueprintTableViewDelegate.tableView(_:editingStyleForRowAt:)();
  v13 = v12;

  (*(v7 + 8))(v9, v6);
  return v13;
}

void BlueprintTableViewDelegate.tableView(_:willBeginEditingRowAt:)()
{
  OUTLINED_FUNCTION_120();
  v43 = v3;
  v44 = v4;
  v5 = sub_1D818E994();
  OUTLINED_FUNCTION_9();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_15();
  v11 = v10 - v9;
  sub_1D7EA0824(0);
  v13 = v12;
  OUTLINED_FUNCTION_8();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_15();
  v17 = v16 - v15;
  OUTLINED_FUNCTION_0_73();
  sub_1D7E54930(0, v18, v19, MEMORY[0x1E69E6720]);
  v21 = OUTLINED_FUNCTION_50(v20);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v43 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_125_0();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_123_1();
  OUTLINED_FUNCTION_3_7();
  v27 = v0 + *(v26 + 208);
  OUTLINED_FUNCTION_8_4(v27, &v47);
  if (swift_unknownObjectWeakLoadStrong())
  {
    v28 = *(v27 + 8);
    ObjectType = swift_getObjectType();
    (*(v28 + 8))(ObjectType, v28);
    swift_unknownObjectRelease();
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v1, 1, 1, v5);
  }

  (*(v7 + 16))(v2, v44, v5);
  OUTLINED_FUNCTION_102();
  __swift_storeEnumTagSinglePayload(v30, v31, v32, v5);
  v33 = *(v13 + 48);
  sub_1D7E54838(v1, v17);
  sub_1D7E54838(v2, v17 + v33);
  OUTLINED_FUNCTION_43_0(v17, 1, v5);
  if (v34)
  {
    sub_1D7E73334(v2);
    sub_1D7E73334(v1);
    OUTLINED_FUNCTION_43_0(v17 + v33, 1, v5);
    if (v34)
    {
      sub_1D7E73334(v17);
LABEL_14:
      sub_1D816FB6C(v45);
      if (v46)
      {
        __swift_project_boxed_opaque_existential_1(v45, v46);
        v40 = OUTLINED_FUNCTION_4_1();
        v42 = v41(v40);
        SeparatorView.clearSelections()();

        __swift_destroy_boxed_opaque_existential_1Tm(v45);
      }

      else
      {
        sub_1D7F9E7CC(v45, &qword_1EDBB0090, qword_1EDBB0098, &protocol descriptor for SeparatorViewProviderType);
      }

      goto LABEL_17;
    }

LABEL_12:
    OUTLINED_FUNCTION_7_27();
    sub_1D7F9E310(v17, v35);
    goto LABEL_17;
  }

  sub_1D7E54838(v17, v23);
  OUTLINED_FUNCTION_43_0(v17 + v33, 1, v5);
  if (v34)
  {
    sub_1D7E73334(v2);
    sub_1D7E73334(v1);
    (*(v7 + 8))(v23, v5);
    goto LABEL_12;
  }

  (*(v7 + 32))(v11, v17 + v33, v5);
  OUTLINED_FUNCTION_6_29();
  sub_1D7E2DA70(v36, v37, MEMORY[0x1E6969C50]);
  OUTLINED_FUNCTION_74();
  v38 = sub_1D8190ED4();
  v39 = *(v7 + 8);
  v39(v11, v5);
  sub_1D7E73334(v2);
  sub_1D7E73334(v1);
  v39(v23, v5);
  sub_1D7E73334(v17);
  if (v38)
  {
    goto LABEL_14;
  }

LABEL_17:
  OUTLINED_FUNCTION_100();
}

uint64_t sub_1D7F9B1E0()
{
  OUTLINED_FUNCTION_29_0();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_41();
  v4 = v1;
  v5 = v2;
  v6 = OUTLINED_FUNCTION_53();
  v0(v6);

  v7 = OUTLINED_FUNCTION_47_4();
  return v8(v7);
}

void BlueprintTableViewDelegate.tableView(_:didEndEditingRowAt:)()
{
  OUTLINED_FUNCTION_120();
  v52 = v2;
  v3 = sub_1D8190BD4();
  OUTLINED_FUNCTION_9();
  v56 = v4;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_15();
  v54 = v7 - v6;
  OUTLINED_FUNCTION_52_0();
  v55 = sub_1D8190C34();
  OUTLINED_FUNCTION_9();
  v53 = v8;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_15();
  v12 = v11 - v10;
  OUTLINED_FUNCTION_0_73();
  sub_1D7E54930(0, v13, v14, MEMORY[0x1E69E6720]);
  OUTLINED_FUNCTION_50(v15);
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v48 - v17;
  v19 = sub_1D818E994();
  OUTLINED_FUNCTION_9();
  v21 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v24);
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_123_1();
  OUTLINED_FUNCTION_3_7();
  v27 = v0 + *(v26 + 208);
  OUTLINED_FUNCTION_8_4(v27, &v58);
  if (!swift_unknownObjectWeakLoadStrong())
  {
    v46 = OUTLINED_FUNCTION_99();
    __swift_storeEnumTagSinglePayload(v46, v47, 1, v19);
    goto LABEL_5;
  }

  v28 = *(v27 + 8);
  ObjectType = swift_getObjectType();
  (*(v28 + 8))(ObjectType, v28);
  swift_unknownObjectRelease();
  v30 = OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_43_0(v30, v31, v19);
  if (v32)
  {
LABEL_5:
    sub_1D7E73334(v18);
    goto LABEL_6;
  }

  v51 = v3;
  v33 = *(v21 + 32);
  v34 = OUTLINED_FUNCTION_6_16();
  v33(v34);
  sub_1D7E0A1A8(0, &qword_1EDBBC7C0, 0x1E69E9610);
  v50 = sub_1D8191AB4();
  (*(v21 + 16))(&v48 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0), v1, v19);
  v35 = (*(v21 + 80) + 24) & ~*(v21 + 80);
  v36 = swift_allocObject();
  v49 = v12;
  v37 = v52;
  *(v36 + 16) = v52;
  (v33)(v36 + v35, &v48 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0), v19);
  v57[4] = sub_1D7F9DCA4;
  v57[5] = v36;
  v57[0] = MEMORY[0x1E69E9820];
  v57[1] = 1107296256;
  OUTLINED_FUNCTION_17();
  v57[2] = v38;
  v57[3] = &block_descriptor_21;
  v39 = _Block_copy(v57);
  v40 = v37;

  v41 = v49;
  sub_1D8190BF4();
  v57[0] = MEMORY[0x1E69E7CC0];
  sub_1D7E2DA70(&qword_1EDBB34B0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  sub_1D7E54930(0, &qword_1EDBB3348, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1D7EBCDB4();
  v42 = v51;
  sub_1D8192004();
  OUTLINED_FUNCTION_100_0();
  v43 = v50;
  MEMORY[0x1DA713CE0]();
  _Block_release(v39);

  v44 = OUTLINED_FUNCTION_134_0();
  v45(v44, v42);
  (*(v53 + 8))(v41, v55);
  (*(v21 + 8))(v1, v19);
LABEL_6:
  OUTLINED_FUNCTION_100();
}

uint64_t sub_1D7F9B754(uint64_t a1, uint64_t a2)
{
  sub_1D7E54930(0, &qword_1EDBBC690, MEMORY[0x1E6969C28], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v8 - v4;
  v6 = sub_1D818E994();
  (*(*(v6 - 8) + 16))(v5, a2, v6);
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v6);
  UITableView.selectItem(at:animated:)(v5, 0);
  return sub_1D7E73334(v5);
}

uint64_t sub_1D7F9B85C(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  sub_1D7E54930(0, &qword_1EDBBC690, MEMORY[0x1E6969C28], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v15 - v8;
  if (a4)
  {
    sub_1D818E924();
    v10 = sub_1D818E994();
    v11 = 0;
  }

  else
  {
    v10 = sub_1D818E994();
    v11 = 1;
  }

  __swift_storeEnumTagSinglePayload(v9, v11, 1, v10);
  v12 = a3;
  v13 = a1;
  BlueprintTableViewDelegate.tableView(_:didEndEditingRowAt:)();

  return sub_1D7E73334(v9);
}

Swift::Void __swiftcall BlueprintTableViewDelegate.scrollViewWillBeginDragging(_:)(UIScrollView *a1)
{
  OUTLINED_FUNCTION_19_11();
  v3 = v1 + *(v2 + 208);
  OUTLINED_FUNCTION_8_4(v3, v8);
  if (!swift_unknownObjectWeakLoadStrong() || (v4 = *(v3 + 8), ObjectType = swift_getObjectType(), (*(v4 + 32))(v7, ObjectType, v4), swift_unknownObjectRelease(), (v7[0] & 1) == 0))
  {
    OUTLINED_FUNCTION_19_11();
    OUTLINED_FUNCTION_8_4(v1 + *(v6 + 200), v7);
    if (swift_weakLoadStrong())
    {
      KeyCommandManager.invalidate(clearState:)(1);
    }
  }
}

void sub_1D7F9BA50(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  BlueprintTableViewDelegate.scrollViewWillBeginDragging(_:)(v5);
}

Swift::Void __swiftcall BlueprintTableViewDelegate.scrollViewDidEndDragging(_:willDecelerate:)(UIScrollView *_, Swift::Bool willDecelerate)
{
  if (!willDecelerate)
  {
    sub_1D7F91884(_, 3u);
    OUTLINED_FUNCTION_3_7();
    BlueprintImpressionManager.updateImpressions(triggerSource:)();
  }
}

void sub_1D7F9BB14(void *a1, uint64_t a2, void *a3, Swift::Bool a4)
{
  v6 = a3;
  v7 = a1;
  BlueprintTableViewDelegate.scrollViewDidEndDragging(_:willDecelerate:)(v6, a4);
}

Swift::Void __swiftcall BlueprintTableViewDelegate.scrollViewDidScroll(_:)(UIScrollView *a1)
{
  v2 = v1;
  v4 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_3_7();
  v7 = *((v6 & v5) + 0xE8);
  OUTLINED_FUNCTION_8_4(v2 + v7, v52);
  if (*(v2 + v7))
  {

    [(UIScrollView *)a1 contentOffset];
    OUTLINED_FUNCTION_10_19();
    sub_1D7E6DA44(*(v2 + *(v8 + 280)), *(v2 + *(v8 + 280) + 8), *(v2 + *(v8 + 280) + 16), v9, v10);
  }

  [(UIScrollView *)a1 contentOffset];
  OUTLINED_FUNCTION_10_19();
  v12 = v2 + *(v11 + 280);
  *v12 = v13;
  *(v12 + 1) = v14;
  v12[16] = 0;
  v15 = [(UIScrollView *)a1 superview];
  if (v15)
  {
    v16 = v15;
    OUTLINED_FUNCTION_10_19();
    v18 = *(v2 + *(v17 + 168));
    v20 = [v19 coordinateSpace];
    [(UIScrollView *)a1 bounds];
    OUTLINED_FUNCTION_9_0();
    sub_1D7E45D98();
    v21 = OUTLINED_FUNCTION_8_0();
    UIEdgeInsetsInsetRect(v21, v22, v23, v24, v25, v26);
    OUTLINED_FUNCTION_9_0();
    v27 = [v16 coordinateSpace];
    v28 = OUTLINED_FUNCTION_8_0();
    [v29 v30];
    OUTLINED_FUNCTION_9_0();
    swift_unknownObjectRelease();

    v31 = OUTLINED_FUNCTION_8_0();
    sub_1D7E4CC00(v32, v33, v31, v34, v35, v36);
    v37 = v18 + *(*v18 + 184);
    *v37 = v49;
    *(v37 + 8) = v50;
    *(v37 + 24) = v51;
    swift_unknownObjectRelease();
  }

  [(UIScrollView *)a1 contentOffset];
  v41 = v39;
  v42 = v40;
  v43 = (v2 + *((*v4 & *v2) + 0x110));
  if ((v43[2] & 1) != 0 || ((v44 = vabdd_f64(*v43, v39), v45 = vabdd_f64(v43[1], v40), v46 = *((*v4 & *v2) + 0x108), OUTLINED_FUNCTION_10(v2 + v46, v38), v47 = *(v2 + v46), v47 >= v44) ? (v48 = v47 < v45) : (v48 = 1), v48))
  {
    *v43 = v41;
    v43[1] = v42;
    *(v43 + 16) = 0;
    sub_1D7F91884(a1, 2u);
    OUTLINED_FUNCTION_10_19();
    BlueprintImpressionManager.updateImpressions(triggerSource:)();
  }
}

void sub_1D7F9BEA0(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  BlueprintTableViewDelegate.scrollViewDidScroll(_:)(v4);
}

Swift::Void __swiftcall BlueprintTableViewDelegate.scrollViewDidEndDecelerating(_:)(UIScrollView *a1)
{
  sub_1D7F91884(a1, 3u);
  OUTLINED_FUNCTION_3_7();
  BlueprintImpressionManager.updateImpressions(triggerSource:)();
}

void sub_1D7F9BF68(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  BlueprintTableViewDelegate.scrollViewDidEndDecelerating(_:)(v4);
}

uint64_t sub_1D7F9BFD0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v62 = a6;
  v59 = a4;
  v60 = a5;
  v57 = a3;
  v7 = *a2;
  v8 = *MEMORY[0x1E69E7D40];
  v61 = *MEMORY[0x1E69E7D40] & *a2;
  v64 = sub_1D818E994();
  v53 = *(v64 - 8);
  v58 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v64);
  v63 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for BlueprintViewAction(0);
  v54 = *(v10 - 8);
  v52 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = v12;
  v55 = v7;
  v56 = v8;
  v51 = *((v8 & v7) + 0x70);
  v49 = *((v8 & v7) + 0x50);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v16 = type metadata accessor for BlueprintItem(0, AssociatedTypeWitness, AssociatedConformanceWitness, v15);
  v41 = v16;
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v40 - v19;
  v42 = &v40 - v19;
  v50 = sub_1D7E0A1A8(0, &qword_1ECA0E668, 0x1E69DC8E8);
  v48 = BlueprintViewAction.style.getter();
  v21 = a1;
  v45 = a1;
  v22 = BlueprintViewAction.title.getter();
  v46 = v23;
  v47 = v22;
  v24 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v44 = swift_allocObject();
  swift_unknownObjectUnownedInit();
  (*(v17 + 16))(v20, v59, v16);
  sub_1D7F9E1BC(v21, v12);
  v25 = v53;
  (*(v53 + 16))(v63, v60, v64);
  v26 = (*(v17 + 80) + 88) & ~*(v17 + 80);
  v27 = (v18 + *(v54 + 80) + v26) & ~*(v54 + 80);
  v28 = (v52 + *(v25 + 80) + v27) & ~*(v25 + 80);
  v29 = (v58 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
  v30 = swift_allocObject();
  *(v30 + 16) = v49;
  v31 = v61;
  *(v30 + 24) = *(v61 + 88);
  v33 = v55;
  v32 = v56;
  *(v30 + 40) = *((v56 & v55) + 0x68);
  *(v30 + 48) = v51;
  *(v30 + 56) = *(v31 + 120);
  *(v30 + 72) = *((v32 & v33) + 0x88);
  *(v30 + 80) = v24;
  (*(v17 + 32))(v30 + v26, v42, v41);
  sub_1D7F9E368(v43, v30 + v27);
  (*(v25 + 32))(v30 + v28, v63, v64);
  *(v30 + v29) = v44;
  v34 = sub_1D80A8AEC(v48, v47, v46, sub_1D7F9E458, v30);
  v35 = BlueprintViewAction.attributes.getter();
  v36 = *(v35 + 16);
  if (v36)
  {
    v37 = (v35 + 40);
    do
    {
      if (*v37)
      {
        v38 = &selRef_setBackgroundColor_;
        if (*v37 != 1)
        {
          goto LABEL_8;
        }
      }

      else
      {
        v38 = &selRef_setImage_;
      }

      [v34 *v38];
LABEL_8:
      v37 += 16;
      --v36;
    }

    while (v36);
  }

  *v62 = v34;
  return result;
}

double sub_1D7F9C4E4(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v76 = a7;
  v77 = a8;
  v74 = a6;
  v83 = a4;
  v80 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v18 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v81 = a10;
  v82 = a14;
  v20 = swift_getAssociatedConformanceWitness();
  v85[0] = AssociatedTypeWitness;
  v85[1] = v18;
  v85[2] = AssociatedConformanceWitness;
  v85[3] = v20;
  v69 = type metadata accessor for Blueprint(0, v85);
  v68 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69);
  v67 = &v59 - v21;
  v75 = sub_1D818E994();
  v72 = *(v75 - 8);
  v22 = *(v72 + 64);
  MEMORY[0x1EEE9AC00](v75);
  v73 = &v59 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for BlueprintViewAction(0);
  v70 = *(v23 - 8);
  v24 = *(v70 + 64);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v71 = &v59 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for BlueprintViewAction.Action(0);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v27 = &v59 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for BlueprintItem(0, v18, v20, v28);
  v30 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v32 = &v59 - v31;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v35 = Strong;
    v79 = a17;
    v64 = a16;
    v63 = a15;
    v78 = a13;
    v60 = a12;
    v59 = a11;
    v66 = a9;
    v65 = type metadata accessor for BlueprintViewActionRequest(0, v18, v20, v34);
    v36 = *(v30 + 16);
    v62 = v32;
    v36(v32, v74, v29);
    v61 = v27;
    v37 = v76;
    BlueprintViewAction.action.getter(v27);
    v84[0] = 2;
    v38 = swift_allocObject();
    swift_beginAccess();
    v39 = swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakInit();

    v40 = v71;
    sub_1D7F9E1BC(v37, v71);
    v41 = v72;
    v42 = v73;
    v43 = v75;
    (*(v72 + 16))(v73, v77, v75);
    v44 = (*(v70 + 80) + 104) & ~*(v70 + 80);
    v45 = (v24 + *(v41 + 80) + v44) & ~*(v41 + 80);
    v46 = swift_allocObject();
    v47 = v59;
    *(v46 + 2) = v81;
    *(v46 + 3) = v47;
    v48 = v78;
    *(v46 + 4) = v60;
    *(v46 + 5) = v48;
    v49 = v63;
    *(v46 + 6) = v82;
    *(v46 + 7) = v49;
    v51 = v79;
    v50 = v80;
    *(v46 + 8) = v64;
    *(v46 + 9) = v51;
    *(v46 + 10) = v38;
    *(v46 + 11) = v50;
    *(v46 + 12) = v83;
    sub_1D7F9E368(v40, &v46[v44]);
    v52 = v42;
    v53 = v66;
    (*(v41 + 32))(&v46[v45], v52, v43);
    *&v46[(v22 + v45 + 7) & 0xFFFFFFFFFFFFFFF8] = v53;
    v54 = BlueprintViewActionRequest.__allocating_init(item:action:source:sourceView:completion:)(v62, v61, v84, 0, sub_1D7F9E638, v46);
    swift_beginAccess();
    v55 = swift_unknownObjectWeakLoadStrong();
    if (v55)
    {
      v56 = v55;

      v57 = v67;
      BlueprintProviderType.blueprint.getter(v81, v82);
      (*(v79 + 72))(v57, v54, v78);

      (*(v68 + 8))(v57, v69);
    }

    else
    {
    }
  }

  else
  {
    v80();
  }

  return result;
}

void sub_1D7F9CB98(int a1, uint64_t a2, void (*a3)(void), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9, __n128 a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v60 = a8;
  v21 = sub_1D8190BD4();
  v65 = *(v21 - 8);
  v66 = v21;
  MEMORY[0x1EEE9AC00](v21);
  v63 = &v52 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_1D8190C34();
  v62 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v59 = &v52 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_1D8190C64();
  v61 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67);
  v25 = &v52 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v52 - v27;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v30 = Strong;
    v58 = a4;
    HIDWORD(v57) = a1;
    if ((a1 & 1) != 0 && BlueprintViewAction.style.getter())
    {
      v31 = swift_unknownObjectUnownedLoadStrong();
      v32 = sub_1D818E8E4();
      v33 = [v31 cellForRowAtIndexPath_];
      v56 = a3;
      v34 = v33;

      LOBYTE(aBlock[0]) = 1;
      BlueprintImpressionManager.endImpression(at:view:triggerSource:)(a6, v34, aBlock, v35, v36, v37, v38, v39, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63);

      a3 = v56;
    }

    if (BlueprintViewAction.style.getter())
    {
      v56 = a3;
      v55 = a15;
      v54 = a14;
      v53 = a13;
      v52 = a12;
      v40 = *((*MEMORY[0x1E69E7D40] & *v30) + 0xE0);
      swift_beginAccess();
      v41 = *(v30 + v40);
      if (v41)
      {
        *(v41 + 16) = 0;

        sub_1D7F81AA4();
      }

      sub_1D7E0A1A8(0, &qword_1EDBBC7C0, 0x1E69E9610);
      v42 = sub_1D8191AB4();
      sub_1D8190C54();
      sub_1D8190C94();
      v61 = *(v61 + 8);
      (v61)(v25, v67);
      v43 = swift_allocObject();
      swift_beginAccess();
      v44 = swift_unknownObjectWeakLoadStrong();
      swift_unknownObjectWeakInit();

      v45 = swift_allocObject();
      v45[2] = v60;
      v45[3] = a11;
      v46 = v53;
      v45[4] = v52;
      v45[5] = v46;
      v47 = v55;
      v45[6] = v54;
      v45[7] = v47;
      v45[8] = a16;
      v45[9] = a17;
      v45[10] = v43;
      aBlock[4] = sub_1D7F9E764;
      aBlock[5] = v45;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1D7E64940;
      aBlock[3] = &block_descriptor_58;
      v48 = _Block_copy(aBlock);

      v49 = v59;
      sub_1D8190BF4();
      aBlock[0] = MEMORY[0x1E69E7CC0];
      sub_1D7E2DA70(&qword_1EDBB34B0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
      sub_1D7E54930(0, &qword_1EDBB3348, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
      sub_1D7EBCDB4();
      v50 = v63;
      v51 = v66;
      sub_1D8192004();
      MEMORY[0x1DA713CA0](v28, v49, v50, v48);
      _Block_release(v48);

      (*(v65 + 8))(v50, v51);
      (*(v62 + 8))(v49, v64);
      (v61)(v28, v67);
      a3 = v56;
    }

    (a3)(BYTE4(v57) & 1);
  }

  else
  {
    a3();
  }
}

void sub_1D7F9D1EC(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = *((*MEMORY[0x1E69E7D40] & *Strong) + 0xE0);
    swift_beginAccess();
    v4 = *&v2[v3];
    if (v4)
    {

      *(v4 + 16) = 1;
      sub_1D7F81AA4();
    }

    else
    {
    }
  }
}

id BlueprintTableViewDelegate.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id BlueprintTableViewDelegate.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D7F9D34C(uint64_t a1)
{
  OUTLINED_FUNCTION_48_0();
  (*(v2 + 8))(v3 + v4);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_48_0();
  (*(v5 + 8))(a1 + v6);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_48_0();
  (*(v7 + 8))(a1 + v8);
  OUTLINED_FUNCTION_1();

  OUTLINED_FUNCTION_1();
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1DA715E30](a1 + *(v9 + 184));
  OUTLINED_FUNCTION_1();

  OUTLINED_FUNCTION_1();
  swift_weakDestroy();
  OUTLINED_FUNCTION_1();
  sub_1D7E166A0(a1 + *(v11 + 208));
  OUTLINED_FUNCTION_1();
  MEMORY[0x1DA715E30](a1 + *(v12 + 216));
  OUTLINED_FUNCTION_1();

  OUTLINED_FUNCTION_1();

  OUTLINED_FUNCTION_1();

  OUTLINED_FUNCTION_1();

  OUTLINED_FUNCTION_1();
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_1();
  sub_1D7F9E7CC(a1 + *(v14 + 288), &qword_1EDBB7AF0, qword_1EDBB7AF8, &protocol descriptor for KeyboardInputMonitorType);
  OUTLINED_FUNCTION_1();
  __swift_destroy_boxed_opaque_existential_1Tm((a1 + *(v15 + 296)));
  OUTLINED_FUNCTION_1();
  MEMORY[0x1DA715E30](a1 + *(v16 + 304));
  OUTLINED_FUNCTION_1();
}

uint64_t (*sub_1D7F9D61C(void *a1))()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = BlueprintTableViewDelegate.delegate.modify();
  return sub_1D7F41FE0;
}

uint64_t (*sub_1D7F9D680(void *a1))()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = BlueprintTableViewDelegate.keyCommandManager.modify();
  return sub_1D7F41FE0;
}

uint64_t (*sub_1D7F9D6E4(void *a1))()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = BlueprintTableViewDelegate.selectionProvider.modify(v2);
  return sub_1D7F41FE0;
}

uint64_t (*sub_1D7F9D748(void *a1))()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = BlueprintTableViewDelegate.viewportMonitor.modify(v2);
  return sub_1D7F41FE0;
}

uint64_t (*sub_1D7F9D7AC(void *a1))()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = BlueprintTableViewDelegate.dragReorderDelegate.modify();
  return sub_1D7F413B4;
}

void BlueprintTableViewDelegate.blueprintInfiniteScrollManager(_:didCompleteRequestForIdentifier:)()
{
  OUTLINED_FUNCTION_19_11();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    sub_1D7F91884(Strong, 1u);
  }

  else
  {
    v2 = sub_1D81919C4();
    OUTLINED_FUNCTION_11_19(v2, &qword_1EDBBE100, &qword_1EDBBE130, MEMORY[0x1E69E7740]);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_1D819FAB0;
    OUTLINED_FUNCTION_19_11();
    v5 = (v0 + *(v4 + 320));
    v7 = *v5;
    v6 = v5[1];
    *(v8 + 56) = MEMORY[0x1E69E6158];
    *(v3 + 64) = sub_1D7E13BF4();
    *(v3 + 32) = v7;
    *(v3 + 40) = v6;
    sub_1D7E0A1A8(0, &qword_1EDBBE110, 0x1E69E9BF8);
    sub_1D8190DB4();
    v9 = sub_1D8191E44();
    sub_1D818FD44("Blueprint infinite scroll requests completed request without blueprint view, model=%{public}@", 93, 2, &dword_1D7DFF000);
  }
}

Swift::Void __swiftcall BlueprintTableViewDelegate.traitCollectionDidChange(_:traitCollection:)(UITraitCollection_optional _, UITraitCollection traitCollection)
{
  v4 = *&_.is_nil;
  isa = _.value.super.isa;
  v6 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x60);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_28_1();
  (*(v10 + 16))(v3, &v2[*((v9 & v8) + 0xA0)], v6);
  sub_1D7E069F0(0, qword_1EDBB62F8, &protocol descriptor for BlueprintViewTraitEnvironment, 0);
  if (swift_dynamicCast())
  {
    ObjectType = swift_getObjectType();
    (*(v12 + 8))(isa, v4, ObjectType);
    swift_unknownObjectRelease();
  }
}

unint64_t sub_1D7F9DB88()
{
  result = qword_1EDBAE420;
  if (!qword_1EDBAE420)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EDBAE420);
  }

  return result;
}

uint64_t sub_1D7F9DBE4(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t *a4, uint64_t a5)
{
  sub_1D7F94B74(0, a3, a4, a5, MEMORY[0x1E69E6720]);
  OUTLINED_FUNCTION_8();
  (*(v7 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1D7F9DC60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_1D8192634() & 1;
  }
}

uint64_t sub_1D7F9DCA4()
{
  v1 = sub_1D818E994();
  OUTLINED_FUNCTION_50(v1);
  v3 = *(v0 + 16);
  v4 = v0 + ((*(v2 + 80) + 24) & ~*(v2 + 80));

  return sub_1D7F9B754(v3, v4);
}

uint64_t sub_1D7F9DD04(void *a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      result = swift_checkMetadataState();
      if (v4 <= 0x3F)
      {
        return swift_initClassMetadata2();
      }
    }
  }

  return result;
}

uint64_t sub_1D7F9DFB4()
{
  OUTLINED_FUNCTION_93_0();
  sub_1D7E0A1A8(0, &qword_1EDBB2FC0, 0x1E69DD250);
  return sub_1D8191CC4() & 1;
}

void sub_1D7F9E010(uint64_t a1)
{
  if (!qword_1EDBAE3C0)
  {
    sub_1D7F9E2C0(255, &qword_1EDBBC418, &type metadata for FloatingTabBarAccessory, MEMORY[0x1E69D6AD8]);
    sub_1D7F9E0B4(&qword_1EDBB1FB8, MEMORY[0x1E69D6AE8]);
    v1 = sub_1D8192344();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDBAE3C0);
    }
  }
}

uint64_t sub_1D7F9E0B4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    OUTLINED_FUNCTION_37_6();
    sub_1D7F9E2C0(255, v4, v5, v6);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D7F9E1BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BlueprintViewAction(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1D7F9E220(uint64_t a1)
{
  if (!qword_1EDBAE620)
  {
    type metadata accessor for BlueprintViewAction.Action(255);
    sub_1D7F9E2C0(255, &qword_1EDBAE5F8, &type metadata for BlueprintViewAction.Attribute, MEMORY[0x1E69E62F8]);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EDBAE620);
    }
  }
}

void sub_1D7F9E2C0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1D7F9E310(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1D7F9E368(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BlueprintViewAction(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1D7F9E3F0(uint64_t a1)
{
  if (!qword_1ECA0E670)
  {
    sub_1D818E994();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1ECA0E670);
    }
  }
}

double sub_1D7F9E458(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v7 = *(v4 + 16);
  v9 = *(v4 + 40);
  v8 = *(v4 + 48);
  v26 = *(v4 + 56);
  v27 = *(v4 + 24);
  v10 = *(v4 + 72);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_74();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v14 = type metadata accessor for BlueprintItem(0, AssociatedTypeWitness, AssociatedConformanceWitness, v13);
  OUTLINED_FUNCTION_15_15(v14);
  v16 = (*(v15 + 80) + 88) & ~*(v15 + 80);
  v18 = *(v17 + 64);
  v19 = type metadata accessor for BlueprintViewAction(0);
  OUTLINED_FUNCTION_15_15(v19);
  v21 = (v16 + v18 + *(v20 + 80)) & ~*(v20 + 80);
  v22 = sub_1D818E994();
  OUTLINED_FUNCTION_15_15(v22);
  OUTLINED_FUNCTION_120_0();
  return sub_1D7F9C4E4(a1, a2, a3, a4, *(v4 + 80), v4 + v16, v4 + v21, v4 + v24, *(v4 + (v23 & 0xFFFFFFFFFFFFFFF8)), v7, v27, *(&v27 + 1), v9, v8, v26, *(&v26 + 1), v10);
}

void sub_1D7F9E638(int a1)
{
  v3 = *(v1 + 16);
  v13 = *(v1 + 24);
  v11 = *(v1 + 56);
  v12 = *(v1 + 40);
  v4 = *(v1 + 72);
  v5 = type metadata accessor for BlueprintViewAction(0);
  OUTLINED_FUNCTION_15_15(v5);
  v7 = (*(v6 + 80) + 104) & ~*(v6 + 80);
  v8 = sub_1D818E994();
  OUTLINED_FUNCTION_15_15(v8);
  OUTLINED_FUNCTION_120_0();
  sub_1D7F9CB98(a1, *(v1 + 80), *(v1 + 88), *(v1 + 96), v1 + v7, v1 + v10, *(v1 + (v9 & 0xFFFFFFFFFFFFFFF8)), v3, v13, v11, v13.n128_i64[0], v13.n128_i64[1], v12, *(&v12 + 1), v11.n128_i64[0], v11.n128_i64[1], v4);
}

uint64_t sub_1D7F9E7CC(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  sub_1D7F94B74(0, a2, a3, a4, MEMORY[0x1E69E6720]);
  OUTLINED_FUNCTION_8();
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t CollectionViewListCell.hasBeenTraversed.getter(uint64_t a1)
{
  v2 = qword_1EDBB8BD0;
  OUTLINED_FUNCTION_1_0(a1);
  return *(v1 + v2);
}

unint64_t CollectionViewListCell.selectionBehavior.getter@<X0>(unint64_t *a1@<X8>)
{
  v3 = qword_1EDBB8BC0;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *a1 = v4;
  return sub_1D7F25F40(v4);
}

unint64_t sub_1D7F9E9C4@<X0>(uint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = qword_1EDBB8BC0;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;
  return sub_1D7F25F40(v5);
}

uint64_t sub_1D7F9EA20(unint64_t *a1)
{
  v2 = *a1;
  sub_1D7F25F40(v2);
  return CollectionViewListCell.selectionBehavior.setter(&v2);
}

uint64_t CollectionViewListCell.selectionBehavior.modify(uint64_t a1)
{
  *(a1 + 24) = v1;
  OUTLINED_FUNCTION_7_1();
  return OUTLINED_FUNCTION_23_1();
}

id CollectionViewListCell.__allocating_init(frame:)()
{
  OUTLINED_FUNCTION_155();
  v1 = objc_allocWithZone(v0);
  v4 = OUTLINED_FUNCTION_80();

  return [v2 v3];
}

id CollectionViewListCell.__allocating_init(coder:)()
{
  v1 = [objc_allocWithZone(OUTLINED_FUNCTION_16_1()) initWithCoder_];

  return v1;
}

void CollectionViewListCell.init(coder:)()
{
  v1 = qword_1EDBB8BE8;
  v2 = objc_allocWithZone(type metadata accessor for SelectedBackgroundView());
  *(v0 + v1) = OUTLINED_FUNCTION_4(v2, sel_initWithFrame_);
  v3 = qword_1EDBB8B88;
  sub_1D7E40308(0, v4, v5, v6);
  v8 = v7;
  *(v0 + v3) = [objc_allocWithZone(v7) init];
  v9 = qword_1EDBB8BD8;
  *(v0 + v9) = [objc_allocWithZone(v8) init];
  v10 = qword_1EDBB8BC8;
  *(v0 + v10) = [objc_allocWithZone(v8) init];
  v11 = qword_1EDBB8B98;
  *(v0 + v11) = [objc_allocWithZone(v8) init];
  *(v0 + qword_1EDBB8BD0) = 0;
  *(v0 + qword_1EDBB8BC0) = 0x8000000000000008;
  v12 = qword_1EDBB8BA0;
  *(v0 + v12) = [objc_allocWithZone(MEMORY[0x1E69E58C0]) init];
  *(v0 + qword_1EDBB8BB0) = 0;
  v13 = (v0 + qword_1EDBB8BB8);
  *v13 = 0;
  v13[1] = 0;
  *(v0 + qword_1EDBB8BE0) = 0;
  sub_1D81923A4();
  __break(1u);
}

Swift::Void __swiftcall CollectionViewListCell.prepareForReuse()()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = [objc_allocWithZone(MEMORY[0x1E69E58C0]) init];
  v4 = qword_1EDBB8BA0;
  swift_beginAccess();
  v5 = *&v1[v4];
  *&v1[v4] = v3;

  v6 = *&v1[qword_1EDBB8BA8];
  sub_1D7E0631C(0, qword_1EDBBA428, &protocol descriptor for RevisionProviding);
  v7 = v6;
  if (swift_dynamicCast())
  {
    sub_1D7E05450(&v39, v42);
    v8 = v43;
    v9 = v44;
    __swift_mutable_project_boxed_opaque_existential_1(v42, v43);
    v10 = (*(v9 + 24))(&v39, v8, v9);
    if (*v11 == -1)
    {
      goto LABEL_17;
    }

    ++*v11;
    v10(&v39, 0);
    __swift_destroy_boxed_opaque_existential_1Tm(v42);
  }

  else
  {
    v41 = 0;
    v39 = 0u;
    v40 = 0u;
    sub_1D7E9DD24(&v39, &qword_1EDBBA420, qword_1EDBBA428, &protocol descriptor for RevisionProviding);
  }

  v38.receiver = v1;
  v38.super_class = ObjectType;
  objc_msgSendSuper2(&v38, sel_prepareForReuse);
  sub_1D8191BB4();
  CollectionViewListCell.isSelected.setter(0);
  CollectionViewListCell.isHighlighted.setter(0);
  v12 = qword_1EDBB8BD0;
  swift_beginAccess();
  v1[v12] = 0;
  CollectionViewListCell.isSwiped.setter(0);
  v13 = &v1[qword_1EDBB8BB8];
  v14 = *&v1[qword_1EDBB8BB8];
  v15 = *&v1[qword_1EDBB8BB8 + 8];
  *v13 = 0;
  *(v13 + 1) = 0;
  sub_1D7E0E10C(v14, v15);
  v16 = [v1 contentView];
  v17 = [v16 subviews];

  sub_1D7F9F0F0();
  OUTLINED_FUNCTION_16_1();
  v18 = sub_1D8191314();

  v19 = sub_1D7E36AB8(v18);
  if (!v19)
  {
LABEL_15:

    return;
  }

  v20 = v19;
  if (v19 >= 1)
  {
    v21 = 0;
    v22 = &qword_1EDBB36D8;
    v23 = v18 & 0xC000000000000001;
    v24 = &protocol descriptor for Reusable;
    v37 = v18 & 0xC000000000000001;
    do
    {
      if (v23)
      {
        v25 = MEMORY[0x1DA714420](v21, v18);
      }

      else
      {
        v25 = *(v18 + 8 * v21 + 32);
      }

      v26 = v25;
      sub_1D7E0631C(0, v22, v24);
      v27 = v26;
      if (swift_dynamicCast())
      {
        sub_1D7E05450(&v39, v42);
        v28 = v20;
        v29 = v18;
        v30 = v16;
        v31 = v24;
        v32 = v22;
        v34 = v43;
        v33 = v44;
        __swift_project_boxed_opaque_existential_1(v42, v43);
        v35 = *(v33 + 16);
        v36 = v33;
        v22 = v32;
        v24 = v31;
        v16 = v30;
        v18 = v29;
        v20 = v28;
        v23 = v37;
        v35(v34, v36);

        __swift_destroy_boxed_opaque_existential_1Tm(v42);
      }

      else
      {

        v41 = 0;
        v39 = 0u;
        v40 = 0u;
        sub_1D7E9DD24(&v39, &qword_1EDBAE678, v22, v24);
      }

      ++v21;
    }

    while (v20 != v21);
    goto LABEL_15;
  }

  __break(1u);
LABEL_17:
  __break(1u);
}

unint64_t sub_1D7F9F0F0()
{
  result = qword_1EDBB2FC0;
  if (!qword_1EDBB2FC0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDBB2FC0);
  }

  return result;
}

void sub_1D7F9F134(void *a1)
{
  v1 = a1;
  CollectionViewListCell.prepareForReuse()();
}

void (*CollectionViewListCell.isSelected.modify(objc_super **a1))(objc_super **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x48uLL);
  *a1 = v3;
  v3[3].receiver = v1;
  ObjectType = swift_getObjectType();
  v3[3].super_class = ObjectType;
  v3->receiver = v1;
  v3->super_class = ObjectType;
  LOBYTE(v3[4].receiver) = [(objc_super *)v3 isSelected];
  return sub_1D7F9F1FC;
}

void sub_1D7F9F1FC(objc_super **a1, char a2)
{
  v2 = *a1;
  receiver_low = LOBYTE((*a1)[4].receiver);
  receiver = (*a1)[3].receiver;
  super_class = (*a1)[3].super_class;
  v6 = *a1;
  if (a2)
  {
    v6[1].receiver = receiver;
    v6[1].super_class = super_class;
    objc_msgSendSuper2(v6 + 1, sel_setSelected_, receiver_low);
  }

  else
  {
    v6[2].receiver = receiver;
    v6[2].super_class = super_class;
    objc_msgSendSuper2(v6 + 2, sel_setSelected_, receiver_low);
    sub_1D7E9D67C();
  }

  free(v2);
}

void sub_1D7F9F268(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  CollectionViewListCell.isHighlighted.setter(a3);
}

double (*CollectionViewListCell.isHighlighted.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = CollectionViewListCell.isHighlighted.getter() & 1;
  return sub_1D7F9F308;
}

uint64_t CollectionViewListCell.isSwiped.getter(uint64_t a1)
{
  v2 = qword_1EDBB8B90;
  OUTLINED_FUNCTION_1_0(a1);
  return *(v1 + v2);
}

void sub_1D7F9F364(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = qword_1EDBB8B90;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t CollectionViewListCell.isSwiped.modify(uint64_t a1)
{
  *(a1 + 24) = v1;
  OUTLINED_FUNCTION_7_1();
  return OUTLINED_FUNCTION_23_1();
}

uint64_t sub_1D7F9F424(uint64_t a1, char a2, uint64_t (*a3)(uint64_t))
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return a3(result);
  }

  return result;
}

void *CollectionViewListCell.tsaxAccessibilityLabelForReordering.getter()
{
  v1 = *(v0 + qword_1EDBB8BA8);
  v2 = swift_dynamicCastObjCProtocolConditional();
  if (v2)
  {
    v3 = v1;
    v4 = [v2 tsaxAccessibilityLabelForReordering];
    if (v4)
    {
      v5 = v4;
      v2 = sub_1D8190F14();
    }

    else
    {

      return 0;
    }
  }

  return v2;
}

uint64_t CollectionViewListCell.forwardsAccessibilityLabelFromView.getter(uint64_t a1)
{
  v2 = qword_1EDBB8BE0;
  OUTLINED_FUNCTION_1_0(a1);
  return *(v1 + v2);
}

id sub_1D7F9F598(void *a1)
{
  v1 = a1;
  CollectionViewListCell.accessibilityLabel.getter();
  v3 = v2;

  if (v3)
  {
    v4 = sub_1D8190EE4();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t CollectionViewListCell.accessibilityLabel.getter()
{
  ObjectType = swift_getObjectType();
  v2 = qword_1EDBB8BE0;
  OUTLINED_FUNCTION_8_20(&v0[qword_1EDBB8BE0], v3, v4, v5);
  if (v0[v2] == 1)
  {
    v6 = [*&v0[qword_1EDBB8BA8] accessibilityLabel];
  }

  else
  {
    v11.receiver = v0;
    v11.super_class = ObjectType;
    v6 = objc_msgSendSuper2(&v11, sel_accessibilityLabel);
  }

  v7 = v6;
  if (!v7)
  {
    return 0;
  }

  v8 = v7;
  v9 = sub_1D8190F14();

  return v9;
}

void sub_1D7F9F6CC(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = sub_1D8190F14();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = a1;
  CollectionViewListCell.accessibilityLabel.setter(v4, v6);
}

void CollectionViewListCell.accessibilityLabel.setter(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v5 = qword_1EDBB8BE0;
  OUTLINED_FUNCTION_8_20(&v2[qword_1EDBB8BE0], v6, v7, v8);
  if (v2[v5] == 1)
  {
    v9 = *&v2[qword_1EDBB8BA8];
    if (a2)
    {
      sub_1D8190DB4();
      v10 = sub_1D8190EE4();
    }

    else
    {
      v10 = 0;
    }

    [v9 setAccessibilityLabel_];
  }

  if (a2)
  {
    v11 = sub_1D8190EE4();
  }

  else
  {
    v11 = 0;
  }

  v12.receiver = v2;
  v12.super_class = ObjectType;
  objc_msgSendSuper2(&v12, sel_setAccessibilityLabel_, v11);
}

void (*CollectionViewListCell.accessibilityLabel.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = CollectionViewListCell.accessibilityLabel.getter();
  a1[1] = v3;
  return sub_1D7F9F88C;
}

void sub_1D7F9F88C(uint64_t *a1, char a2)
{
  v3 = *a1;
  v2 = a1[1];
  if (a2)
  {
    sub_1D8190DB4();
    CollectionViewListCell.accessibilityLabel.setter(v3, v2);
  }

  else
  {
    CollectionViewListCell.accessibilityLabel.setter(*a1, v2);
  }
}

id sub_1D7F9F900(void *a1)
{
  v1 = a1;
  v2 = CollectionViewListCell.accessibilityAttributedLabel.getter();

  return v2;
}

id CollectionViewListCell.accessibilityAttributedLabel.getter()
{
  ObjectType = swift_getObjectType();
  v2 = qword_1EDBB8BE0;
  OUTLINED_FUNCTION_8_20(&v0[qword_1EDBB8BE0], v3, v4, v5);
  if (v0[v2] == 1)
  {
    v6 = [*&v0[qword_1EDBB8BA8] accessibilityAttributedLabel];
  }

  else
  {
    v8.receiver = v0;
    v8.super_class = ObjectType;
    v6 = objc_msgSendSuper2(&v8, sel_accessibilityAttributedLabel);
  }

  return v6;
}

void sub_1D7F9F9DC(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  CollectionViewListCell.accessibilityAttributedLabel.setter();
}

void CollectionViewListCell.accessibilityAttributedLabel.setter()
{
  OUTLINED_FUNCTION_16_1();
  ObjectType = swift_getObjectType();
  v3 = qword_1EDBB8BE0;
  OUTLINED_FUNCTION_8_20(&v1[qword_1EDBB8BE0], v4, v5, v6);
  if (v1[v3])
  {
    [*&v1[qword_1EDBB8BA8] setAccessibilityAttributedLabel_];
  }

  v7.receiver = v1;
  v7.super_class = ObjectType;
  objc_msgSendSuper2(&v7, sel_setAccessibilityAttributedLabel_, v0);
}

void (*CollectionViewListCell.accessibilityAttributedLabel.modify(id *a1))(id *a1, char a2)
{
  a1[1] = v1;
  *a1 = CollectionViewListCell.accessibilityAttributedLabel.getter();
  return sub_1D7F9FB04;
}

void sub_1D7F9FB04(id *a1, char a2)
{
  if (a2)
  {
    v2 = *a1;
    CollectionViewListCell.accessibilityAttributedLabel.setter();
  }

  else
  {
    CollectionViewListCell.accessibilityAttributedLabel.setter();
  }
}

id CollectionViewListCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D7F9FBA4(uint64_t a1)
{
  sub_1D7E9B848(*(a1 + qword_1EDBB8BC0));

  v2 = *(a1 + qword_1EDBB8BB8);
  v3 = *(a1 + qword_1EDBB8BB8 + 8);

  return sub_1D7E0E10C(v2, v3);
}

uint64_t CollectionViewListCell.keyCommandBlocks.getter()
{
  v9 = MEMORY[0x1E69E7CC0];
  v7 = *(v0 + qword_1EDBB8BA8);
  sub_1D7E0631C(0, &qword_1EDBB6760, &protocol descriptor for KeyCommandBlockProviderType);
  v1 = v7;
  if (OUTLINED_FUNCTION_13_16(v6, &v7))
  {
    sub_1D7E05450(v6, v8);
    __swift_project_boxed_opaque_existential_1(v8, v8[3]);
    v2 = OUTLINED_FUNCTION_4_1();
    v4 = v3(v2);
    sub_1D7F0A4EC(v4);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
  }

  else
  {
    OUTLINED_FUNCTION_2_9();
    sub_1D7E9DD24(v6, &qword_1EDBB6758, &qword_1EDBB6760, &protocol descriptor for KeyCommandBlockProviderType);
  }

  return v9;
}

uint64_t CollectionViewListCell.isHighlightable.getter()
{
  OUTLINED_FUNCTION_17_13();
  sub_1D7E0631C(0, qword_1EDBBA0F0, &protocol descriptor for ViewHighlightable);
  v1 = v0;
  if (OUTLINED_FUNCTION_13_16(v6, v7))
  {
    sub_1D7E05450(v6, v8);
    __swift_project_boxed_opaque_existential_1(v8, v8[3]);
    v2 = OUTLINED_FUNCTION_4_1();
    v4 = v3(v2);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
  }

  else
  {
    OUTLINED_FUNCTION_2_9();
    sub_1D7E9DD24(v6, &unk_1EDBBA0E0, qword_1EDBBA0F0, &protocol descriptor for ViewHighlightable);
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t (*sub_1D7F9FEEC(void *a1))()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = CollectionViewListCell.isHighlighted.modify(v2);
  return sub_1D7F41FE0;
}

uint64_t CollectionViewListCell.isSelectable.getter()
{
  OUTLINED_FUNCTION_17_13();
  sub_1D7E0631C(0, qword_1EDBBB350, &protocol descriptor for ViewSelectable);
  v1 = v0;
  if (OUTLINED_FUNCTION_13_16(v6, v7))
  {
    sub_1D7E05450(v6, v8);
    __swift_project_boxed_opaque_existential_1(v8, v8[3]);
    v2 = OUTLINED_FUNCTION_4_1();
    v4 = v3(v2);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
  }

  else
  {
    OUTLINED_FUNCTION_2_9();
    sub_1D7E9DD24(v6, &unk_1EDBBB340, qword_1EDBBB350, &protocol descriptor for ViewSelectable);
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t (*sub_1D7FA00AC(objc_super ***a1))()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = CollectionViewListCell.isSelected.modify(v2);
  return sub_1D7F413B4;
}

id CollectionViewListCell.traversedDisposerToken.getter(uint64_t a1)
{
  v2 = qword_1EDBB8BA0;
  OUTLINED_FUNCTION_1_0(a1);
  v3 = *(v1 + v2);

  return v3;
}

uint64_t (*sub_1D7FA0154(void *a1))()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = CollectionViewListCell.hasBeenTraversed.modify();
  return sub_1D7F41FE0;
}

double CollectionViewListCell.registerForChanges(block:)(uint64_t a1, uint64_t a2)
{
  v4 = (v2 + qword_1EDBB8BB8);
  v6 = *(v2 + qword_1EDBB8BB8);
  v5 = *(v2 + qword_1EDBB8BB8 + 8);
  *v4 = a1;
  v4[1] = a2;
  sub_1D7E0E10C(v6, v5);

  return result;
}

uint64_t CollectionViewListCell<>.blueprintViewportMonitor(_:viewportScrollDataDidChange:)()
{
  OUTLINED_FUNCTION_10_4();
  OUTLINED_FUNCTION_5_8();
  return v0();
}

uint64_t CollectionViewListCell<>.blueprintViewportMonitor(_:viewportMotionDataDidChange:)()
{
  OUTLINED_FUNCTION_10_4();
  OUTLINED_FUNCTION_5_8();
  return v0();
}

uint64_t CollectionViewListCell<>.blueprintViewportMonitor(_:viewportMotionEnabled:)()
{
  OUTLINED_FUNCTION_10_4();
  OUTLINED_FUNCTION_5_8();
  return v0();
}

uint64_t CollectionViewListCell<>.blueprintViewportMonitor(_:willDisplayCellWith:)()
{
  OUTLINED_FUNCTION_10_4();
  OUTLINED_FUNCTION_5_8();
  return v0();
}

uint64_t CollectionViewListCell<>.blueprintViewportMonitor(_:didEndDisplayingCellWith:)()
{
  OUTLINED_FUNCTION_10_4();
  OUTLINED_FUNCTION_5_8();
  return v0();
}

uint64_t RestoreViewportBlueprintBookmarkApplicator.__allocating_init(blueprintLayoutProvider:blueprintViewProvider:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  RestoreViewportBlueprintBookmarkApplicator.init(blueprintLayoutProvider:blueprintViewProvider:)(a1, a2);
  return v4;
}

uint64_t RestoreViewportBlueprintBookmarkApplicator.deinit()
{
  OUTLINED_FUNCTION_3_0();
  (*(v1 + 8))(v0 + v2);
  swift_unknownObjectRelease();
  return v0;
}

uint64_t RestoreViewportBlueprintBookmarkApplicator.__deallocating_deinit()
{
  RestoreViewportBlueprintBookmarkApplicator.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1D7FA06E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>, double a7@<D0>)
{
  v14 = sub_1D818E994();
  (*(*(v14 - 8) + 32))(a6, a1, v14);
  v16[0] = a2;
  v16[1] = a3;
  v16[2] = a4;
  v16[3] = a5;
  result = type metadata accessor for RestoreViewportBlueprintBookmarkApplicator.RestoreContext(0, v16);
  *(a6 + *(result + 52)) = a7;
  return result;
}

uint64_t RestoreViewportBlueprintBookmarkApplicator.prepare(bookmark:context:)@<X0>(const void *a1@<X1>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = *v2;
  v53 = v6;
  OUTLINED_FUNCTION_0_74();
  sub_1D7FA1AAC(0, v7, v8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v54 = &v48 - v13;
  sub_1D818E994();
  OUTLINED_FUNCTION_9();
  v50 = v15;
  v51 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v52 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v49 = &v48 - v18;
  memcpy(__dst, a1, sizeof(__dst));
  v19 = *(v6 + 80);
  v20 = *(v6 + 96);
  BlueprintLayoutProviderType.layoutBlueprint.getter(v19, v20);
  v21 = OUTLINED_FUNCTION_8_21();
  v22 = OUTLINED_FUNCTION_8_21();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v24 = swift_getAssociatedConformanceWitness();
  v56[0] = v21;
  v56[1] = v22;
  v56[2] = AssociatedConformanceWitness;
  v56[3] = v24;
  v25 = type metadata accessor for BlueprintLayout(0, v56);
  OUTLINED_FUNCTION_1_54();
  swift_getWitnessTable();
  LOBYTE(v6) = sub_1D8191874();
  OUTLINED_FUNCTION_3_0();
  result = (*(v26 + 8))(v57, v25);
  if ((v6 & 1) == 0)
  {
    memcpy(v56, __dst, sizeof(v56));
    result = sub_1D7FA0BEC(v56);
    if (result != 1)
    {
      memcpy(v57, v56, 0x80uLL);
      sub_1D7FA0C04(v56[4], v11);
      sub_1D7EE5A18(0);
      v29 = v28;
      OUTLINED_FUNCTION_10_23(v11);
      if (v30)
      {
        v33 = v54;
        sub_1D7FA0C04(v56[5], v54);
        OUTLINED_FUNCTION_10_23(v11);
        if (!v30)
        {
          OUTLINED_FUNCTION_0_74();
          sub_1D7FA1A54(v11, v31, v32);
        }
      }

      else
      {
        v33 = v54;
        sub_1D7FA10E0(v11, v54);
        __swift_storeEnumTagSinglePayload(v33, 0, 1, v29);
      }

      OUTLINED_FUNCTION_10_23(v33);
      if (!v30)
      {
        v36 = (v33 + *(v29 + 48));
        v37 = *v36;
        v38 = v36[1];
        v39 = v49;
        v40 = *(v50 + 32);
        v41 = v33;
        v42 = v51;
        v40(v49, v41, v51);
        v43 = sub_1D7FA0F38(v3, v57, v37, v38);
        v44 = v52;
        v40(v52, v39, v42);
        v45 = *(v53 + 88);
        v46 = *(v53 + 104);
        v55[0] = v19;
        v55[1] = v45;
        v55[2] = v20;
        v55[3] = v46;
        *(a2 + 24) = type metadata accessor for RestoreViewportBlueprintBookmarkApplicator.RestoreContext(0, v55);
        boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a2);
        return sub_1D7FA06E0(v44, v19, v45, v20, v46, boxed_opaque_existential_0, v43);
      }

      OUTLINED_FUNCTION_0_74();
      result = sub_1D7FA1A54(v33, v34, v35);
    }
  }

  *a2 = 0u;
  *(a2 + 16) = 0u;
  return result;
}

uint64_t sub_1D7FA0BEC(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

double sub_1D7FA0C04@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  sub_1D7FA1AAC(0, &unk_1EDBBC660, sub_1D7EE5A18);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v25 - v7;
  sub_1D7EE5A18(0);
  v10 = v9;
  v29 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v30 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v28 = &v25 - v13;
  v14 = 0;
  v15 = *(a1 + 16);
  v16 = MEMORY[0x1E69E7CC0];
  while (v15 != v14)
  {
    v17 = *(sub_1D818E994() - 8);
    sub_1D7FA1144(a1 + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + *(v17 + 72) * v14, v3, v8);
    if (__swift_getEnumTagSinglePayload(v8, 1, v10) == 1)
    {
      sub_1D7FA1A54(v8, &unk_1EDBBC660, sub_1D7EE5A18);
      ++v14;
    }

    else
    {
      v27 = a2;
      v18 = v28;
      sub_1D7FA10E0(v8, v28);
      sub_1D7FA10E0(v18, v30);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1D7EE5150(0, *(v16 + 16) + 1, 1, v16);
        v16 = v22;
      }

      v20 = *(v16 + 16);
      v19 = *(v16 + 24);
      v21 = v20 + 1;
      if (v20 >= v19 >> 1)
      {
        v26 = v20 + 1;
        sub_1D7EE5150(v19 > 1, v20 + 1, 1, v16);
        v21 = v26;
        v16 = v23;
      }

      ++v14;
      *(v16 + 16) = v21;
      sub_1D7FA10E0(v30, v16 + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v20);
      a2 = v27;
    }
  }

  v31 = v16;
  sub_1D8190DB4();
  sub_1D8161818(sub_1D7FA19D8, v3);

  sub_1D7F1E76C();

  return result;
}

double sub_1D7FA0F38(uint64_t a1, uint64_t a2, double a3, double a4)
{
  BlueprintLayoutProviderType.layoutBlueprint.getter(*(*a1 + 80), *(*a1 + 96));
  v7 = v15;
  v13[0] = swift_getAssociatedTypeWitness();
  v13[1] = swift_getAssociatedTypeWitness();
  v13[2] = swift_getAssociatedConformanceWitness();
  v13[3] = swift_getAssociatedConformanceWitness();
  v8 = type metadata accessor for BlueprintLayout(0, v13);
  (*(*(v8 - 8) + 8))(v14, v8);
  v9 = 48;
  if (v7)
  {
    v9 = 56;
  }

  v10 = 104;
  if (v7)
  {
    v10 = 96;
    v11 = a4;
  }

  else
  {
    v11 = a3;
  }

  return v11 - (*(a2 + v9) + *(a2 + v10));
}

uint64_t sub_1D7FA10E0(uint64_t a1, uint64_t a2)
{
  sub_1D7EE5A18(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D7FA1144@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v50 = a3;
  v42 = *a2;
  v4 = v42;
  v5 = v42[12];
  v6 = v42[10];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v45 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v46 = &v41 - v8;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v11 = type metadata accessor for BlueprintLayoutItem(0, AssociatedTypeWitness, AssociatedConformanceWitness, v10);
  v47 = *(v11 - 8);
  v48 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v44 = &v41 - v12;
  v43 = v4[14];
  BlueprintLayoutProviderType.layoutBlueprint.getter(v6, v5);
  v13 = swift_getAssociatedTypeWitness();
  v14 = swift_getAssociatedConformanceWitness();
  *&v51 = v13;
  *(&v51 + 1) = AssociatedTypeWitness;
  *&v52 = v14;
  *(&v52 + 1) = AssociatedConformanceWitness;
  v15 = type metadata accessor for BlueprintLayout(0, &v51);
  v49 = a1;
  LOBYTE(v13) = BlueprintLayout.contains(indexPath:)(a1, v15);
  v16 = *(*(v15 - 8) + 8);
  v16(&v54, v15);
  if ((v13 & 1) == 0)
  {
    sub_1D7EE5A18(0);
    v24 = v23;
    v25 = v50;
    goto LABEL_9;
  }

  BlueprintLayoutProviderType.layoutBlueprint.getter(v6, v5);
  v17 = v44;
  BlueprintLayout.subscript.getter(v49, v15);
  v16(&v54, v15);
  (*(v45 + 16))(v46, v17, AssociatedTypeWitness);
  sub_1D7FA19F8();
  v18 = v17;
  if ((swift_dynamicCast() & 1) == 0)
  {
    v53 = 0;
    v51 = 0u;
    v52 = 0u;
    sub_1D7FA1A54(&v51, &unk_1EDBB0E98, sub_1D7FA19F8);
    v22 = v50;
LABEL_7:
    v26 = (*(v42[13] + 56))(v42[11], v42[13]);
    swift_getAssociatedTypeWitness();
    v27 = swift_getAssociatedConformanceWitness();
    v28 = *(v27 + 88);
    v29 = swift_checkMetadataState();
    v30 = v49;
    v28(&v54, v49, v29, v27);

    (*(v47 + 8))(v18, v48);
    if ((v57 & 1) == 0)
    {
      v34 = v55;
      v35 = v56;
      v51 = v54;
      if (v55 > 0.0 && *&v56 > 0.0)
      {
        sub_1D7EE5A18(0);
        v37 = v36;
        v38 = v22 + *(v36 + 48);
        v39 = sub_1D818E994();
        (*(*(v39 - 8) + 16))(v22, v30, v39);
        *v38 = v51;
        *(v38 + 16) = v34;
        *(v38 + 24) = v35;
        v25 = v22;
        v32 = 0;
        v24 = v37;
        return __swift_storeEnumTagSinglePayload(v25, v32, 1, v24);
      }
    }

    sub_1D7EE5A18(0);
    v24 = v31;
    v25 = v22;
LABEL_9:
    v32 = 1;
    return __swift_storeEnumTagSinglePayload(v25, v32, 1, v24);
  }

  sub_1D7E05450(&v51, &v54);
  v19 = v56;
  v20 = v57;
  __swift_project_boxed_opaque_existential_1(&v54, v56);
  v21 = (*(v20 + 8))(v19, v20);
  v22 = v50;
  if (v21)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(&v54);
    goto LABEL_7;
  }

  (*(v47 + 8))(v17, v48);
  sub_1D7EE5A18(0);
  __swift_storeEnumTagSinglePayload(v22, 1, 1, v40);
  return __swift_destroy_boxed_opaque_existential_1Tm(&v54);
}

BOOL sub_1D7FA16E8(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v24 = a2;
  v4 = *a3;
  sub_1D7EE5A18(0);
  v6 = v5 - 8;
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v25[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7EB2914(a1, v8, sub_1D7EE5A18);
  v9 = &v8[*(v6 + 56)];
  v10 = *v9;
  v11 = v9[1];
  v12 = sub_1D818E994();
  v13 = *(*(v12 - 8) + 8);
  v13(v8, v12);
  sub_1D7EB2914(v24, v8, sub_1D7EE5A18);
  v14 = &v8[*(v6 + 56)];
  v15 = *v14;
  v16 = v14[1];
  v13(v8, v12);
  BlueprintLayoutProviderType.layoutBlueprint.getter(*(v4 + 80), *(v4 + 96));
  v17 = v26[565];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v19 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v21 = swift_getAssociatedConformanceWitness();
  v25[0] = AssociatedTypeWitness;
  v25[1] = v19;
  v25[2] = AssociatedConformanceWitness;
  v25[3] = v21;
  v22 = type metadata accessor for BlueprintLayout(0, v25);
  (*(*(v22 - 8) + 8))(v26, v22);
  if (v17)
  {
    return v11 < v16;
  }

  else
  {
    return v10 < v15;
  }
}

unint64_t sub_1D7FA19F8()
{
  result = qword_1EDBB9A28[0];
  if (!qword_1EDBB9A28[0])
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, qword_1EDBB9A28);
  }

  return result;
}

uint64_t sub_1D7FA1A54(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1D7FA1AAC(0, a2, a3);
  OUTLINED_FUNCTION_3_0();
  (*(v4 + 8))(a1);
  return a1;
}

void sub_1D7FA1AAC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D8191E84();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

CGSize __swiftcall ShineSizer.size(for:)(CGSize a1)
{
  height = a1.height;
  width = a1.width;
  if ((~*v1 & 0xF000000000000007) != 0)
  {
    OUTLINED_FUNCTION_0_75(__PAIR128__(v4, *&a1.width), __PAIR128__(v5, *&a1.height));
    v7 = v6.n128_u64[0];
    OUTLINED_FUNCTION_0_75(v6, v8);
    height = v9;
    width = *&v7;
  }

  v10 = width;
  v11 = height;
  result.height = v11;
  result.width = v10;
  return result;
}

void sub_1D7FA1B74(__n128 a1, __n128 a2)
{
  switch(*v2 >> 61)
  {
    case 2:
      v3 = *((*v2 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      OUTLINED_FUNCTION_0_75(a1, a2);
      v3();
      break;
    case 3:
    case 4:
      return;
    default:
      OUTLINED_FUNCTION_0_75(a1, a2);
      OUTLINED_FUNCTION_0_75(v4, v5);
      OUTLINED_FUNCTION_1_55();
      break;
  }
}

unint64_t sub_1D7FA1D24@<X0>(unint64_t *a1@<X0>, uint64_t a3@<X2>, uint64_t *a4@<X8>, double a5@<D0>)
{
  v8 = *a1;
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  v10 = swift_allocObject();
  *(v10 + 16) = a5;
  *(v9 + 24) = a3;
  *(v9 + 32) = v10;
  *a4 = v9 | 0x4000000000000000;

  return sub_1D7F38714(v8);
}

unint64_t get_enum_tag_for_layout_string_5TeaUI10ShineSizerO10ExpressionO(unint64_t *a1)
{
  if ((*a1 & 0x8000000000000000) == 0)
  {
    return *a1 >> 61;
  }

  else
  {
    return (*a1 >> 3) + 4;
  }
}

uint64_t get_enum_tag_for_layout_string_5TeaUI10ShineSizerO(void *a1)
{
  v1 = ((*a1 >> 57) >> 4) | (8 * ((*a1 >> 57) & 8 | *a1 & 7));
  v2 = v1 ^ 0x7F;
  v3 = 128 - v1;
  if (v2 >= 0x7B)
  {
    return 0;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1D7FA1E14(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7B && *(a1 + 16))
  {
    return (*a1 + 123);
  }

  v3 = (((*a1 >> 57) >> 4) | (8 * ((*a1 >> 57) & 8 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7B)
  {
    v3 = -1;
  }

  if (v3 + 1 >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D7FA1E70(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7A)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 123;
    if (a3 >= 0x7B)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7B)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = ((16 * (a2 ^ 0x7F)) | ((a2 ^ 0x7F) >> 3) | (((16 * (a2 ^ 0x7F)) | ((a2 ^ 0x7F) >> 3)) << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

unint64_t *sub_1D7FA1EC4(unint64_t *result, unsigned int a2)
{
  if (a2 > 0x7B)
  {
    v3 = a2 - 124;
    result[1] = 0;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = (-a2 >> 3) & 0xF | (16 * (-a2 & 0x7F));
    v3 = (v2 | (v2 << 57)) & 0xF000000000000007;
  }

  *result = v3;
  return result;
}

void (*sub_1D7FA1F40(void *a1))(double **a1)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = v1;
  [v1 contentInset];
  *v3 = v4;
  v3[1] = v5;
  v3[2] = v6;
  v3[3] = v7;
  return sub_1D7FA1FB4;
}

void sub_1D7FA1FB4(double **a1)
{
  v1 = *a1;
  [*(*a1 + 4) setContentInset_];

  free(v1);
}

uint64_t sub_1D7FA2030(void *a1, char a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(double, double, double, double), double a6)
{
  v10 = sub_1D8190EE4();
  if (a2)
  {
    v11 = 2;
  }

  else
  {
    v11 = 3;
  }

  sub_1D7F854E8(0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D819FAB0;
  v13 = *MEMORY[0x1E69DB648];
  *(inited + 32) = *MEMORY[0x1E69DB648];
  *(inited + 64) = sub_1D7E0A1A8(0, &qword_1EDBB2FE0, 0x1E69DB878);
  *(inited + 40) = a1;
  type metadata accessor for Key();
  sub_1D7E4DB28();
  v14 = v13;
  v15 = a1;
  sub_1D8190D94();
  v16 = sub_1D8190D44();

  [v10 boundingRectWithSize:v11 options:v16 attributes:0 context:{a6, 1.79769313e308}];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;

  return a5(v18, v20, v22, v24);
}

double String.textSize(inBoundingSize:with:paragraphStyle:fontTracking:singleLine:)(void *a1, void *a2, char a3, uint64_t a4, uint64_t a5, double a6, double a7, double a8)
{
  sub_1D7F854E8(0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D81A1B70;
  v14 = *MEMORY[0x1E69DB648];
  *(inited + 32) = *MEMORY[0x1E69DB648];
  v15 = sub_1D7E0A1A8(0, &qword_1EDBB2FE0, 0x1E69DB878);
  *(inited + 40) = a1;
  v16 = *MEMORY[0x1E69DB688];
  *(inited + 64) = v15;
  *(inited + 72) = v16;
  v17 = sub_1D7E0A1A8(0, &unk_1EDBB31C0, 0x1E69DB7D0);
  *(inited + 80) = a2;
  v18 = *MEMORY[0x1E69DB660];
  *(inited + 104) = v17;
  *(inited + 112) = v18;
  *(inited + 144) = MEMORY[0x1E69E7DE0];
  *(inited + 120) = a8;
  type metadata accessor for Key();
  sub_1D7E4DB28();
  v19 = v14;
  v20 = a1;
  v21 = v16;
  v22 = a2;
  v23 = v18;
  sub_1D8190D94();
  v24 = sub_1D8190EE4();
  if (a3)
  {
    v25 = 32;
  }

  else
  {
    v25 = 33;
  }

  v26 = sub_1D8190D44();

  [v24 boundingRectWithSize:v25 options:v26 attributes:0 context:{a6, a7}];
  v28 = v27;

  return v28;
}

double String.jsonObject()@<D0>(_OWORD *a3@<X8>)
{
  v19[1] = *MEMORY[0x1E69E9840];
  v4 = sub_1D8190F74();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D8190F64();
  v8 = sub_1D8190F24();
  v10 = v9;
  (*(v5 + 8))(v7, v4);
  if (v10 >> 60 != 15)
  {
    v11 = objc_opt_self();
    v12 = sub_1D818E674();
    v19[0] = 0;
    v13 = [v11 JSONObjectWithData:v12 options:0 error:v19];

    v14 = v19[0];
    if (v13)
    {
      sub_1D8191F34();
      sub_1D7EF4ED0(v8, v10);
      swift_unknownObjectRelease();
      return result;
    }

    v16 = v14;
    v17 = sub_1D818E544();

    swift_willThrow();
    sub_1D7EF4ED0(v8, v10);
  }

  result = 0.0;
  *a3 = 0u;
  a3[1] = 0u;
  return result;
}

uint64_t BlueprintLayoutTransitionResult.hashValue.getter()
{
  v1 = *v0;
  sub_1D81927E4();
  MEMORY[0x1DA714A00](v1);
  return sub_1D8192824();
}

void BlueprintLayoutTransitionManager.transitionLayout(blueprintView:layoutOptions:bookmarkManager:animated:completion:)(void *a1, uint64_t a2, const void *a3, uint64_t a4, int a5, void (*a6)(void), uint64_t a7)
{
  v8 = v7;
  v100 = a6;
  v101 = a7;
  v97 = a5;
  v96 = a4;
  v11 = sub_1D818E794();
  OUTLINED_FUNCTION_9();
  v98 = v12;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v15);
  MEMORY[0x1EEE9AC00](v16);
  v99 = &v88 - v17;
  v18 = sub_1D8190C74();
  OUTLINED_FUNCTION_9();
  v20 = v19;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_15();
  v24 = (v23 - v22);
  memcpy(v107, a3, sizeof(v107));
  sub_1D7E0A1A8(0, &qword_1EDBBC7C0, 0x1E69E9610);
  *v24 = sub_1D8191AB4();
  (*(v20 + 104))(v24, *MEMORY[0x1E69E8020], v18);
  LOBYTE(a3) = sub_1D8190CA4();
  (*(v20 + 8))(v24, v18);
  if ((a3 & 1) == 0)
  {
    __break(1u);
    return;
  }

  objc_opt_self();
  v25 = swift_dynamicCastObjCClass();
  if (!v25)
  {
LABEL_17:
    v40 = OUTLINED_FUNCTION_2_55();
    v41(v40);
    return;
  }

  v26 = v25;
  v95 = v11;
  v27 = a1;
  v28 = [v26 collectionViewLayout];
  ObjectType = swift_getObjectType();
  if (!dynamic_cast_existential_1_conditional(v28, ObjectType, &protocol descriptor for BlueprintCollectionViewLayoutTransitioning))
  {

    goto LABEL_17;
  }

  v92 = v30;
  v93 = &v88 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_3_52();
  v33 = *(v32 + 120);
  if (!*(v8 + v33) || (v34 = v31, memcpy(v106, v107, 0x235uLL), , v35 = sub_1D80D4B60(v106), , (v94 = v35) == 0))
  {
    v38 = OUTLINED_FUNCTION_2_55();
    v39(v38);
    goto LABEL_14;
  }

  v36 = *(v8 + v33);
  if (v36)
  {
    v37 = v94[2] == *(v36 + 16) && v94[3] == *(v36 + 24);
    if (v37 || (sub_1D8192634() & 1) != 0)
    {
      LOBYTE(v106[0]) = 0;
      v100(v106);

LABEL_14:

LABEL_15:
      return;
    }
  }

  v42 = v27;
  [v26 contentSize];
  v44 = v43;
  v46 = v45;
  v47 = swift_getObjectType();
  [v34 collectionViewContentSize];
  if (v44 == v49 && v46 == v48)
  {
  }

  else
  {
    [v26 setNeedsLayout];
    [v26 layoutIfNeeded];
    [v26 contentSize];
    v52 = v51;
    v54 = v53;

    [v34 collectionViewContentSize];
    if (v52 != v56 || v54 != v55)
    {
      v58 = OUTLINED_FUNCTION_2_55();
      v59(v58);

      goto LABEL_15;
    }
  }

  v91 = v42;
  *&v106[0] = v34;
  v60 = v92[2](v47);
  v90 = v61;
  OUTLINED_FUNCTION_3_52();
  v63 = *(v8 + *(v62 + 136));
  v89 = swift_getObjectType();
  v64 = v60;
  v63();
  v92 = v64;

  sub_1D7FA2D10(v96, v103);
  v65 = v104;
  if (v104)
  {
    v66 = v105;
    __swift_project_boxed_opaque_existential_1(v103, v104);
    (*(v66 + 16))(v102, v65, v66);
    nullsub_1();
    __swift_destroy_boxed_opaque_existential_1Tm(v103);
    memcpy(v106, v102, 0x80uLL);
  }

  else
  {
    sub_1D7FA4F08(v103, &qword_1EDBB65A8, &qword_1EDBB65B0, &protocol descriptor for BlueprintBookmarkManagerType);
    sub_1D7E262C4(v106);
  }

  memcpy(v102, v106, sizeof(v102));
  v67 = v94;
  v68 = sub_1D7FA2D8C(v102, v94);
  v70 = v69;
  v72 = v71;
  sub_1D7E925D0(v106, &qword_1EDBB7DC0, &type metadata for BlueprintBookmarkContext);
  sub_1D7E91FA0(v67);
  v73 = v99;
  sub_1D818E784();
  v102[0] = v92;
  v74 = v90;
  (*(v90 + 8))(v89, v90);
  v75 = v72 & 1;
  v76 = v73;
  sub_1D80332F4(v73, v68, v70, v75);

  v77 = v98;
  v78 = v93;
  (*(v98 + 16))(v93, v76, v95);
  v79 = (*(v77 + 80) + 32) & ~*(v77 + 80);
  v80 = (v14 + v79 + 7) & 0xFFFFFFFFFFFFFFF8;
  v81 = swift_allocObject();
  v82 = v92;
  *(v81 + 16) = v92;
  *(v81 + 24) = v74;
  v83 = v95;
  (*(v77 + 32))(v81 + v79, v78, v95);
  v84 = (v81 + v80);
  v85 = v101;
  *v84 = v100;
  v84[1] = v85;
  v102[4] = sub_1D7FA31C4;
  v102[5] = v81;
  v102[0] = MEMORY[0x1E69E9820];
  v102[1] = 1107296256;
  v102[2] = sub_1D7EB30D4;
  v102[3] = &block_descriptor_22;
  v86 = _Block_copy(v102);
  v87 = v82;

  [v26 setCollectionViewLayout:v87 animated:v97 & 1 completion:v86];
  _Block_release(v86);

  (*(v77 + 8))(v99, v83);
}

uint64_t sub_1D7FA2D10(uint64_t a1, uint64_t a2)
{
  sub_1D7E328A8(0, &qword_1EDBB65A8, &qword_1EDBB65B0, &protocol descriptor for BlueprintBookmarkManagerType);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D7FA2D8C(void *__src, void *a2)
{
  memcpy(__dst, __src, sizeof(__dst));
  if (sub_1D7FA0BEC(__dst) == 1)
  {
    return 0;
  }

  v5 = __dst[6];
  v4 = __dst[7];
  v6 = __dst[12];
  if (__dst[7] == -__dst[12])
  {
    return *&__dst[6];
  }

  if (__dst[7] <= 0.0)
  {
    return 0;
  }

  v7 = __dst[14];
  insets = __dst[13];
  v8 = __dst[15];
  v9 = __dst[0] == 0.0;
  v10 = __dst[1] == 0.0;
  if (v9 && v10)
  {
    v11 = __dst[2];
  }

  else
  {
    v11 = __dst[0];
  }

  if (v9 && v10)
  {
    v12 = __dst[3];
  }

  else
  {
    v12 = __dst[1];
  }

  sub_1D818F154();
  memcpy(v26, __srca, sizeof(v26));
  v30.bottom = v7;
  v30.right = v8;
  v29.origin.x = v5;
  v29.origin.y = v4;
  v29.size.width = v11;
  v29.size.height = v12;
  v30.top = v6;
  v30.left = insets;
  v13 = BlueprintLayoutCollection.layoutAttributes(in:offset:insets:)(v29, __PAIR128__(*&v4, *&v5), v30);
  if (v13)
  {
    v14 = v13;
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  if (v14 >> 62)
  {
    sub_1D7E0A1A8(0, &qword_1EDBB3020, 0x1E69DC858);
    sub_1D8190DB4();
    v15 = sub_1D81923B4();
  }

  else
  {
    sub_1D8190DB4();
    sub_1D81926A4();
    sub_1D7E0A1A8(0, &qword_1EDBB3020, 0x1E69DC858);
    v15 = v14;
  }

  v16 = sub_1D7FA336C(a2, v15);

  sub_1D7FA39F4(v16, v5, v4, v11, v12);
  v18 = sub_1D7FA3B70(v17);

  if (sub_1D7E36AB8(v18))
  {
    sub_1D7E33DD8(0, (v18 & 0xC000000000000001) == 0, v18);
    if ((v18 & 0xC000000000000001) != 0)
    {
      v19 = MEMORY[0x1DA714420](0, v18);
    }

    else
    {
      v19 = *(v18 + 32);
    }

    v20 = v19;
  }

  else
  {

    v21 = sub_1D7FA3B70(v16);

    if (!sub_1D7E36AB8(v21))
    {

      goto LABEL_29;
    }

    sub_1D7E33DD8(0, (v21 & 0xC000000000000001) == 0, v21);
    if ((v21 & 0xC000000000000001) != 0)
    {
      v22 = MEMORY[0x1DA714420](0, v21);
    }

    else
    {
      v22 = *(v21 + 32);
    }

    v20 = v22;
  }

  memcpy(v26, __dst, 0x80uLL);
  v23 = sub_1D7FA3C3C(v20, v26, a2);
  if (!v23)
  {

LABEL_29:
    sub_1D7E598FC(__srca);
    return 0;
  }

  v24 = v23;
  [v20 frame];
  [v24 frame];

  sub_1D7E598FC(__srca);
  return 0;
}