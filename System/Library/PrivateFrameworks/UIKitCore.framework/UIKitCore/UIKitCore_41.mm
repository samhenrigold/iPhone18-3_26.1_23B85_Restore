void sub_188F3152C(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____UIMagicMorphAnimation_currentItem);
  if (!v2)
  {
    goto LABEL_53;
  }

  v4 = *(v2 + OBJC_IVAR____TtCC5UIKit22_UIMagicMorphAnimationP33_27010C79BBE8436D7F6A5CD454B184E54Item_preview);
  [v4 size];
  v6 = v5;
  v8 = v7;
  v9 = [v4 target];
  [v9 transform];
  recta = *&v107.c;
  v103 = *&v107.a;
  v97 = *&v107.tx;

  *&v107.a = v103;
  *&v107.c = recta;
  *&v107.tx = v97;
  v108.width = v6;
  v108.height = v8;
  v10 = CGSizeApplyAffineTransform(v108, &v107);
  [a1 size];
  v12 = v11;
  v14 = v13;
  v15 = [a1 target];
  [v15 transform];
  rectb = *&v107.c;
  v104 = *&v107.a;
  v98 = *&v107.tx;

  *&v107.a = v104;
  *&v107.c = rectb;
  *&v107.tx = v98;
  v109.width = v12;
  v109.height = v14;
  v16 = CGSizeApplyAffineTransform(v109, &v107);
  if (v10.height >= v10.width)
  {
    width = v10.width;
  }

  else
  {
    width = v10.height;
  }

  if (v16.height >= v16.width)
  {
    height = v16.width;
  }

  else
  {
    height = v16.height;
  }

  v19 = *(v1 + OBJC_IVAR____UIMagicMorphAnimation_animationSettings);
  v20 = &OBJC_IVAR____TtC5UIKit25_UIMorphAnimationSettings_growingIntermediateShapeRatio;
  if (v10.width * v10.height < v16.width * v16.height)
  {
    v21 = &OBJC_IVAR____TtC5UIKit25_UIMorphAnimationSettings_jHeightRatio;
  }

  else
  {
    v20 = &OBJC_IVAR____TtC5UIKit25_UIMorphAnimationSettings_shrinkingIntermediateShapeRatio;
    v21 = &OBJC_IVAR____TtC5UIKit25_UIMorphAnimationSettings_jWidthRatio;
  }

  v99 = _UILerp_1(*(v19 + *v20), width, height);
  v90 = *(v19 + *v21);
  v22 = [v4 view];
  v23 = [v22 superview];

  if (!v23)
  {
    v24 = [v4 target];
    v23 = [v24 container];
  }

  v25 = [v4 view];
  [v25 _frameIgnoringLayerTransform];
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;

  v34 = [a1 target];
  v35 = [v34 container];

  [v23 convertRect:v35 toCoordinateSpace:{v27, v29, v31, v33}];
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v43 = v42;

  v44 = [a1 view];
  [v44 _frameIgnoringLayerTransform];
  v46 = v45;
  v48 = v47;
  v50 = v49;
  v52 = v51;

  v110.origin.x = v37;
  v110.origin.y = v39;
  v110.size.width = v41;
  v110.size.height = v43;
  v105 = CGRectGetWidth(v110);
  v111.origin.x = v46;
  v111.origin.y = v48;
  v111.size.width = v50;
  v111.size.height = v52;
  v53 = CGRectGetWidth(v111);
  v54 = v105 < v53;
  if (v105 >= v53)
  {
    v55 = v46;
  }

  else
  {
    v55 = v37;
  }

  v56 = v39;
  if (v105 >= v53)
  {
    v39 = v48;
  }

  v57 = v41;
  if (v105 >= v53)
  {
    v41 = v50;
  }

  v58 = v43;
  if (v105 >= v53)
  {
    v43 = v52;
  }

  v95 = v56;
  v96 = v37;
  v92 = v50;
  v93 = v46;
  if (v105 >= v53)
  {
    v59 = v37;
  }

  else
  {
    v59 = v46;
  }

  v60 = v48;
  v61 = v55;
  v91 = v60;
  if (v54)
  {
    v62 = v60;
  }

  else
  {
    v62 = v56;
  }

  v94 = v57;
  if (v54)
  {
    v63 = v52;
  }

  else
  {
    v50 = v57;
    v63 = v58;
  }

  v64 = v59;
  v65 = v62;
  v66 = v50;
  rect = v63;
  v67 = CGRectGetWidth(*&v59);
  v112.origin.x = v61;
  v112.origin.y = v39;
  v112.size.width = v41;
  v112.size.height = v43;
  v68 = CGRectGetWidth(v112);
  v69 = 0.5;
  if (v68 < v67)
  {
    v113.origin.x = v61;
    v113.origin.y = v39;
    v113.size.width = v41;
    v113.size.height = v43;
    v88 = v99 - CGRectGetWidth(v113);
    v114.origin.x = v64;
    v114.origin.y = v62;
    v114.size.width = v50;
    v114.size.height = rect;
    v87 = CGRectGetWidth(v114);
    v115.origin.x = v61;
    v115.origin.y = v39;
    v115.size.width = v41;
    v115.size.height = v43;
    v69 = v88 / (v87 - CGRectGetWidth(v115));
  }

  v89 = v69;
  v116.origin.x = v61;
  v116.origin.y = v39;
  v116.size.width = v41;
  v116.size.height = v43;
  MidX = CGRectGetMidX(v116);
  v117.origin.x = v64;
  v117.origin.y = v62;
  v117.size.width = v50;
  v117.size.height = rect;
  v70 = CGRectGetMidX(v117);
  v71 = *(v19 + OBJC_IVAR____TtC5UIKit25_UIMorphAnimationSettings_maxJHeight);
  UIRectGetCenter(v96, v95, v94);
  v73 = v72;
  UIRectGetCenter(v93, v91, v92);
  if (v71 < 0.0)
  {
    __break(1u);
LABEL_53:
    __break(1u);
    return;
  }

  v75 = v90 * (v74 - v73);
  if (v75 > v71)
  {
    if ((~*&v71 & 0x7FF0000000000000) != 0)
    {
      v75 = v71;
    }

    else if ((*&v71 & 0xFFFFFFFFFFFFFLL) == 0)
    {
      v75 = v71;
    }
  }

  if ((*&v75 & 0xFFFFFFFFFFFFFLL) != 0)
  {
    v76 = -v71;
  }

  else
  {
    v76 = v75;
  }

  if ((~*&v75 & 0x7FF0000000000000) != 0)
  {
    v76 = v75;
  }

  if (v75 >= -v71)
  {
    v77 = v76;
  }

  else
  {
    v77 = -v71;
  }

  v78 = [objc_allocWithZone(UIView) initWithFrame_];
  v79 = [v78 layer];
  CACornerRadiiMake(&v107.a, v99, v99, v99, v99);
  [v79 setCornerRadii_];

  if ([a1 _resolvedBackgroundMaterial])
  {
    ObjectType = swift_getObjectType();
    sub_18901EB8C(ObjectType, &v107);
    swift_unknownObjectRelease();
  }

  else
  {
    memset(&v107, 0, 40);
  }

  v81 = _UILerp_1(v89, MidX, v70);
  UIView._background.setter(&v107);
  v82 = [a1 target];
  v83 = [v82 container];

  v84 = [objc_allocWithZone(UIPreviewTarget) initWithContainer:v83 center:{v81, v73 + v77}];
  v85 = [objc_allocWithZone(UIPreviewParameters) init];
  v86 = [objc_opt_self() clearColor];
  [v85 setBackgroundColor_];

  [objc_allocWithZone(UITargetedPreview) initWithView:v78 parameters:v85 target:v84];
}

void sub_188F31C20(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void *a6, char *a7, uint64_t (*a8)(), void *a9)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    v17 = [a3 target];
    v18 = [v17 container];

    v19 = [v18 _window];
    if (v19)
    {

      v20 = a3;
      v21 = 0;
      v22 = 0;
    }

    else
    {
      v37 = a4;
      v23 = [objc_allocWithZone(UIView) init];
      v38 = objc_opt_self();
      v22 = swift_allocObject();
      *(v22 + 16) = a3;
      *(v22 + 24) = v23;
      v24 = swift_allocObject();
      *(v24 + 16) = sub_188F36458;
      *(v24 + 24) = v22;
      aBlock[4] = sub_188E3FE50;
      aBlock[5] = v24;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_188A4A968;
      aBlock[3] = &block_descriptor_258;
      v25 = _Block_copy(aBlock);
      v26 = a3;
      v27 = v23;

      [v38 performWithoutAnimation_];
      _Block_release(v25);
      LOBYTE(v25) = swift_isEscapingClosureAtFileLocation();

      if (v25)
      {
        __break(1u);
        return;
      }

      v28 = [objc_allocWithZone(UIPreviewParameters) init];
      v29 = [objc_opt_self() clearColor];
      [v28 setBackgroundColor_];

      v30 = [objc_allocWithZone(UITargetedPreview) initWithView:v27 parameters:v28 target:v37];
      v20 = v30;
      v21 = sub_188F36458;
    }

    v31 = v20;
    sub_188F2E908(v31, a5, 0, 1, a6, a7, a8, a9);

    v32 = *&v16[OBJC_IVAR____UIMagicMorphAnimation_intermediateStepHidingAssertion];
    *&v16[OBJC_IVAR____UIMagicMorphAnimation_intermediateStepHidingAssertion] = 0;

    v33 = OBJC_IVAR____UIMagicMorphAnimation_intermediateStepDelayTimer;
    v34 = *&v16[OBJC_IVAR____UIMagicMorphAnimation_intermediateStepDelayTimer];
    if (v34)
    {
      [v34 invalidate];
      v35 = *&v16[v33];
    }

    else
    {
      v35 = 0;
    }

    *&v16[v33] = 0;

    v36 = *&v16[OBJC_IVAR____UIMagicMorphAnimation_groupCompletion];
    [v36 complete];

    sub_188A55B8C(v21, v22);
  }
}

void sub_188F31FAC(void *a1, void *a2)
{
  [a1 size];
  v5 = v4;
  [a1 size];
  if (v6 < v5)
  {
    v5 = v6;
  }

  [a2 setBounds_];
  v7 = [a2 layer];
  [v7 setCornerRadius_];
}

uint64_t sub_188F32070(uint64_t a1, char *a2, uint64_t a3)
{
  sub_188F32124(a2, a3);
  v5 = OBJC_IVAR____UIMagicMorphAnimation_animationItems;
  swift_beginAccess();
  v6 = *(a1 + v5);
  if (v6 >> 62)
  {
    result = sub_18A4A7F68();
    if (result < 2)
    {
      return result;
    }
  }

  else
  {
    result = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result < 2)
    {
      return result;
    }
  }

  result = *&a2[OBJC_IVAR____TtCC5UIKit22_UIMagicMorphAnimationP33_27010C79BBE8436D7F6A5CD454B184E54Item_reparentingView];
  if (result)
  {
    return [result setAlpha_];
  }

  return result;
}

void sub_188F32124(void *a1, char a2)
{
  v5 = objc_opt_self();
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = v2;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_188F36758;
  *(v7 + 24) = v6;
  v29[4] = sub_188E3FE50;
  v29[5] = v7;
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 1107296256;
  v29[2] = sub_188A4A968;
  v29[3] = &block_descriptor_248;
  v8 = _Block_copy(v29);
  v9 = a1;
  v10 = v2;

  [v5 performWithoutAnimation_];
  _Block_release(v8);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
    goto LABEL_18;
  }

  if (v10[OBJC_IVAR____UIMagicMorphAnimation_reparentsDuringMorph] == 1 && !UIAccessibilityPrefersCrossFadeTransitions() && (a2 & 1) != 0)
  {
    v12 = OBJC_IVAR____TtCC5UIKit22_UIMagicMorphAnimationP33_27010C79BBE8436D7F6A5CD454B184E54Item_reparentingView;
    if (!*&v9[OBJC_IVAR____TtCC5UIKit22_UIMagicMorphAnimationP33_27010C79BBE8436D7F6A5CD454B184E54Item_reparentingView])
    {
      type metadata accessor for _UIReparentingView();
      v13 = sub_188D733EC(*&v10[OBJC_IVAR____UIMagicMorphAnimation_animationContainerView]);
      v14 = *&v9[v12];
      *&v9[v12] = v13;
    }

    v15 = OBJC_IVAR____TtCC5UIKit22_UIMagicMorphAnimationP33_27010C79BBE8436D7F6A5CD454B184E54Item_preview;
    v16 = [*&v9[OBJC_IVAR____TtCC5UIKit22_UIMagicMorphAnimationP33_27010C79BBE8436D7F6A5CD454B184E54Item_preview] view];
    v17 = [v16 _overrideReparentingContainer];

    if (!v17)
    {
      v18 = [*&v9[v15] target];
      v17 = [v18 container];
    }

    v19 = [*&v9[v15] view];
    v20 = [v19 superview];

    if (v20)
    {
      sub_188A34624(0, &qword_1ED48F680, off_1E70EAD78);
      v21 = v17;
      v22 = sub_18A4A7C88();

      if (v22)
      {
        v23 = *&v9[v12];
        if (v23)
        {
          v24 = *&v9[v15];
          v25 = v23;
          v26 = [v24 view];
          [v21 insertSubview:v25 aboveSubview:v26];

          return;
        }

        goto LABEL_19;
      }
    }

    v27 = *&v9[v12];
    if (v27)
    {
      v28 = v27;
      [v17 addSubview_];

      return;
    }

LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    return;
  }
}

void sub_188F32494(uint64_t a1, void *a2, char *a3, void *a4, void *a5)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    Strong = a2;
  }

  v11 = *(a1 + OBJC_IVAR____UIMagicMorphAnimation_animationContainerView);
  [Strong insertSubview:v11 atIndex:0];
  v12 = *&v11[OBJC_IVAR____TtC5UIKit30_UIMorphAnimationContainerView_kickView];
  v25 = 0x3FF0000000000000uLL;
  *&v26 = 0;
  *(&v26 + 1) = 0x3FF0000000000000;
  v27 = 0uLL;
  [v12 setTransform_];
  v13 = *(a1 + OBJC_IVAR____UIMagicMorphAnimation_morphView);
  [v11 addSubview_];
  sub_188D6C074(a3);
  v14 = OBJC_IVAR____UIMagicMorphDestination_preview;
  [*&a3[OBJC_IVAR____UIMagicMorphDestination_preview] _center];
  [v11 convertPoint:a4 fromCoordinateSpace:?];
  [v13 setCenter_];
  [a5 _transform3DRelativeToWindow_];
  [v13 setTransform3D_];
  v15 = [*&a3[v14] view];
  [v15 alpha];
  v17 = v16;

  [v13 setAlpha_];
  v18 = [v11 layer];
  v19 = [a4 layer];
  [v19 sublayerTransform];

  *&v21[64] = v29;
  v22 = v30;
  v23 = v31;
  v24 = v32;
  *v21 = v25;
  *&v21[16] = v26;
  *&v21[32] = v27;
  *&v21[48] = v28;
  [v18 setSublayerTransform_];

  v20 = *&a3[v14];
  sub_18923B914(&v33);

  if (v33 != 2)
  {
    *v21 = v33;
    *&v21[8] = v34;
    *&v21[24] = v35;
    *&v21[40] = v36[0];
    *&v21[50] = *(v36 + 10);
    sub_1890822D8(v13, 0, 1);
    sub_189082DE4(v21, 0);
  }
}

void sub_188F32740(uint64_t a1, double a2)
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  [Strong bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;

  v10 = swift_unknownObjectUnownedLoadStrong();
  [v10 setBounds_];

  v11 = swift_unknownObjectUnownedLoadStrong();
  [v11 layoutIfNeeded];
}

void sub_188F327FC(uint64_t a1, double a2, double a3)
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  [Strong setBounds_];

  v6 = swift_unknownObjectUnownedLoadStrong();
  [v6 layoutIfNeeded];
}

void sub_188F3288C(uint64_t a1, char *a2)
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  sub_188D6C074(a2);

  v7 = swift_unknownObjectUnownedLoadStrong();
  v4 = [*&a2[OBJC_IVAR____UIMagicMorphDestination_preview] view];
  [v4 alpha];
  v6 = v5;

  [v7 setAlpha_];
}

void sub_188F32950(char a1)
{
  v2 = v1;
  v4 = sub_188D845C8();
  [v4 setPaused_];

  if (a1)
  {
    v5 = OBJC_IVAR____UIMagicMorphAnimation_intermediateStepDelayTimer;
    v6 = *(v2 + OBJC_IVAR____UIMagicMorphAnimation_intermediateStepDelayTimer);
    if (v6)
    {
      v7 = v6;
      [v7 invalidate];
      v8 = *(v2 + v5);
      *(v2 + v5) = 0;

      [*(v2 + OBJC_IVAR____UIMagicMorphAnimation_groupCompletion) complete];
    }
  }

  else if ((*(v2 + OBJC_IVAR____UIMagicMorphAnimation_cleansUpAutomatically) & 1) == 0)
  {
    return;
  }

  v9 = *(v2 + OBJC_IVAR____UIMagicMorphAnimation_morphView);
  sub_1890E11BC();
  [v9 removeFromSuperview];
  sub_1890E0B5C();
  v10 = *(v2 + OBJC_IVAR____UIMagicMorphAnimation_animationContainerView);
  [v10 removeFromSuperview];
  v28 = 0x3FF0000000000000uLL;
  *&v29 = 0;
  *(&v29 + 1) = 0x3FF0000000000000;
  v30 = 0uLL;
  [v10 setTransform_];
  v11 = [v10 layer];
  v12 = *(MEMORY[0x1E69792E8] + 80);
  v32 = *(MEMORY[0x1E69792E8] + 64);
  v33 = v12;
  v13 = *(MEMORY[0x1E69792E8] + 112);
  v34 = *(MEMORY[0x1E69792E8] + 96);
  v35 = v13;
  v14 = *(MEMORY[0x1E69792E8] + 16);
  v28 = *MEMORY[0x1E69792E8];
  v29 = v14;
  v15 = *(MEMORY[0x1E69792E8] + 48);
  v30 = *(MEMORY[0x1E69792E8] + 32);
  v31 = v15;
  [v11 setSublayerTransform_];

  v16 = OBJC_IVAR____UIMagicMorphAnimation_animationItems;
  swift_beginAccess();
  v17 = *(v2 + v16);
  if (v17 >> 62)
  {
    v18 = sub_18A4A7F68();
    if (v18)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v18)
    {
LABEL_7:
      if (v18 < 1)
      {
        __break(1u);
        return;
      }

      v27 = v16;

      for (i = 0; i != v18; ++i)
      {
        if ((v17 & 0xC000000000000001) != 0)
        {
          v20 = sub_188E49688(i, v17);
        }

        else
        {
          v20 = *(v17 + 8 * i + 32);
        }

        v21 = v20;
        v22 = *&v20[OBJC_IVAR____TtCC5UIKit22_UIMagicMorphAnimationP33_27010C79BBE8436D7F6A5CD454B184E54Item_morphView];
        if (v22)
        {
          [v22 removeFromSuperview];
        }

        v23 = *&v21[OBJC_IVAR____TtCC5UIKit22_UIMagicMorphAnimationP33_27010C79BBE8436D7F6A5CD454B184E54Item_reparentingView];
        if (v23)
        {
          v24 = v23;
          [v24 removeFromSuperview];
        }
      }

      v16 = v27;
    }
  }

  *(v2 + v16) = MEMORY[0x1E69E7CC0];

  v25 = *(v2 + OBJC_IVAR____UIMagicMorphAnimation_currentItem);
  *(v2 + OBJC_IVAR____UIMagicMorphAnimation_currentItem) = 0;

  v26 = *(v2 + OBJC_IVAR____UIMagicMorphAnimation_currentReparentingItem);
  *(v2 + OBJC_IVAR____UIMagicMorphAnimation_currentReparentingItem) = 0;
}

void sub_188F32C04(uint64_t a1, uint64_t a2)
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v13 = *&Strong[OBJC_IVAR____TtC5UIKit30_UIMorphAnimationContainerView_kickView];

  v4 = swift_unknownObjectUnownedLoadStrong();
  [v4 bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;

  Center = UIRectGetCenter(v6, v8, v10);
  [v13 setCenter_];
}

void sub_188F32CEC(uint64_t a1, uint64_t a2)
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v4 = *&Strong[OBJC_IVAR____TtC5UIKit30_UIMorphAnimationContainerView_kickView];

  CGAffineTransformMakeTranslation(&v5, -*(a2 + OBJC_IVAR____TtCC5UIKit22_UIMagicMorphAnimation10Parameters_kick), -*(a2 + OBJC_IVAR____TtCC5UIKit22_UIMagicMorphAnimation10Parameters_kick + 8));
  [v4 setTransform_];
}

void sub_188F32D8C(uint64_t a1, double a2)
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v3 = swift_unknownObjectUnownedLoadStrong();
  [v3 center];
  v5 = v4;

  [Strong setCenter_];
}

void sub_188F32E18(uint64_t a1, void *a2, char *a3, void *a4, void *a5)
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  [a2 _transform3DRelativeToWindow_];
  [Strong setTransform3D_];

  if (a3)
  {
    v10 = *&a3[OBJC_IVAR____TtCC5UIKit22_UIMagicMorphAnimationP33_27010C79BBE8436D7F6A5CD454B184E54Item_preview];
    v11 = a3;
    v12 = [v10 view];
    v13 = [v12 layer];

    [v13 transform];
    v17 = v18;
    if (CATransform3DIsIdentity(&v17))
    {
      v14 = [a4 layer];
      v15 = [a5 layer];
      [v15 sublayerTransform];

      v16 = v17;
      [v14 setSublayerTransform_];
    }

    else
    {
    }
  }
}

void sub_188F32FBC(uint64_t a1, uint64_t a2, char a3)
{
  v3 = *(a1 + OBJC_IVAR____TtCC5UIKit22_UIMagicMorphAnimationP33_27010C79BBE8436D7F6A5CD454B184E54Item_reparentingView);
  if (v3)
  {
    v4 = *(a2 + OBJC_IVAR____TtCC5UIKit22_UIMagicMorphAnimationP33_27010C79BBE8436D7F6A5CD454B184E54Item_reparentingView);
    if (v4)
    {
      v6 = v3;
      v7 = v4;
      v8 = v6;
      isEscapingClosureAtFileLocation = v7;
      v10 = [(UIView *)v8 _viewOrderRelativeToView:0 requireIntersection:?];
      if (a3)
      {

        v11 = objc_opt_self();
        v12 = swift_allocObject();
        *(v12 + 16) = v8;
        *(v12 + 24) = isEscapingClosureAtFileLocation;
        v13 = swift_allocObject();
        *(v13 + 16) = sub_188F36620;
        *(v13 + 24) = v12;
        v39 = sub_188E3FE50;
        v40 = v13;
        v35 = MEMORY[0x1E69E9820];
        v36 = 1107296256;
        v37 = sub_188A4A968;
        v38 = &block_descriptor_498;
        v14 = _Block_copy(&v35);
        v8 = v8;
        v15 = isEscapingClosureAtFileLocation;

        [v11 performWithoutAnimation_];

        _Block_release(v14);
        isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

        if ((isEscapingClosureAtFileLocation & 1) == 0)
        {
          return;
        }

        __break(1u);
      }

      if (v10 == -3)
      {

        v16 = [v8 layer];
        v17 = sub_18A4A2D28();
        v18 = sub_18A4A7258();
        [v16 setValue:v17 forKeyPath:v18];

        v19 = objc_opt_self();
        v20 = swift_allocObject();
        *(v20 + 16) = v8;
        v21 = swift_allocObject();
        *(v21 + 16) = sub_188F3660C;
        *(v21 + 24) = v20;
        v39 = sub_188E3FE50;
        v40 = v21;
        v35 = MEMORY[0x1E69E9820];
        v36 = 1107296256;
        v37 = sub_188A4A968;
        v38 = &block_descriptor_488;
        v22 = _Block_copy(&v35);
        v23 = v8;

        [v19 performWithoutAnimation_];
        _Block_release(v22);
        LOBYTE(v19) = swift_isEscapingClosureAtFileLocation();

        if (v19)
        {
          __break(1u);
        }

        else
        {
          [isEscapingClosureAtFileLocation setAlpha_];
        }

        return;
      }

      [isEscapingClosureAtFileLocation alpha];
      v25 = v24;

      if (v25 == 0.0)
      {
        v26 = objc_opt_self();
        v27 = swift_allocObject();
        *(v27 + 16) = isEscapingClosureAtFileLocation;
        v28 = swift_allocObject();
        v29 = sub_188F36604;
        *(v28 + 16) = sub_188F36604;
        *(v28 + 24) = v27;
        v39 = sub_188E3FE50;
        v40 = v28;
        v35 = MEMORY[0x1E69E9820];
        v36 = 1107296256;
        v37 = sub_188A4A968;
        v38 = &block_descriptor_478;
        v30 = _Block_copy(&v35);
        v31 = isEscapingClosureAtFileLocation;

        [v26 performWithoutAnimation_];
        _Block_release(v30);
        LOBYTE(v26) = swift_isEscapingClosureAtFileLocation();

        if ((v26 & 1) == 0)
        {
LABEL_13:
          v32 = [isEscapingClosureAtFileLocation layer];
          v33 = sub_18A4A2D28();
          v34 = sub_18A4A7258();
          [v32 setValue:v33 forKeyPath:v34];

          [v8 setAlpha_];
          sub_188A55B8C(v29, v27);
          return;
        }

        __break(1u);
      }

      v29 = 0;
      v27 = 0;
      goto LABEL_13;
    }
  }
}

void sub_188F33544(char *a1)
{
  [a1 setAlpha_];
  v2 = [a1 layer];
  v3 = sub_18A4A2D28();
  v4 = sub_18A4A7258();
  [v2 setValue:v3 forKeyPath:v4];
}

void sub_188F335FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    [*(Strong + OBJC_IVAR____UIMagicMorphAnimation_groupCompletion) increment];
    v9 = objc_opt_self();
    v10 = swift_allocObject();
    *(v10 + 16) = a3;
    *(v10 + 24) = a4;
    v18 = sub_188E3FE58;
    v19 = v10;
    aBlock = MEMORY[0x1E69E9820];
    v15 = 1107296256;
    v16 = sub_188A4A8F0;
    v17 = &block_descriptor_463;
    v11 = _Block_copy(&aBlock);

    v12 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v18 = sub_188E3FE98;
    v19 = v12;
    aBlock = MEMORY[0x1E69E9820];
    v15 = 1107296256;
    v16 = sub_188C3DD6C;
    v17 = &block_descriptor_468;
    v13 = _Block_copy(&aBlock);

    [v9 _animateUsingSpringBehavior_tracking_animations_completion_];
    _Block_release(v13);
    _Block_release(v11);
  }
}

void sub_188F337E4(void *a1, void *a2)
{
  v4 = objc_opt_self();
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 24) = a1;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_188F36450;
  *(v6 + 24) = v5;
  v10[4] = sub_188E3FE50;
  v10[5] = v6;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_188A4A968;
  v10[3] = &block_descriptor_237_0;
  v7 = _Block_copy(v10);
  v8 = a2;
  v9 = a1;

  [v4 performWithoutAnimation_];
  _Block_release(v7);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }

  else
  {
    if (v9[OBJC_IVAR____UIMagicMorphAnimation_reparentsDuringMorph] == 1)
    {
      UIAccessibilityPrefersCrossFadeTransitions();
    }
  }
}

void sub_188F33974(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + OBJC_IVAR____TtCC5UIKit22_UIMagicMorphAnimationP33_27010C79BBE8436D7F6A5CD454B184E54Item_preview);
  type metadata accessor for _UIMagicMorphView.Destination();
  v5 = objc_allocWithZone(v4);
  v6 = v3;
  v7 = sub_188D626CC(v6);

  *a2 = v7;
}

void sub_188F339D0(void *a1, char *a2, void *a3, void *a4, void *a5)
{
  sub_188D6C074(a2);
  [a3 center];
  [a1 setCenter_];
  [a1 layoutIfNeeded];
  [a1 setAlpha_];
  v9 = [a5 view];
  [a4 insertSubview:a1 aboveSubview:v9];
}

double sub_188F33AA0(void *a1, uint64_t a2)
{
  [a1 setAlpha_];
  [a1 updateTraitsIfNeeded];
  v5 = a2 + OBJC_IVAR____TtCC5UIKit22_UIMagicMorphAnimationP33_27010C79BBE8436D7F6A5CD454B184E54Item_completion;
  v6 = *(a2 + OBJC_IVAR____TtCC5UIKit22_UIMagicMorphAnimationP33_27010C79BBE8436D7F6A5CD454B184E54Item_completion);
  if (v6)
  {
    v7 = *(v5 + 8);

    v6(v8);

    return sub_188A55B8C(v6, v7);
  }

  return result;
}

void sub_188F33B30(char *a1, uint64_t a2)
{
  v4 = &a1[OBJC_IVAR____TtCC5UIKit22_UIMagicMorphAnimationP33_27010C79BBE8436D7F6A5CD454B184E54Item_completion];
  v5 = *&a1[OBJC_IVAR____TtCC5UIKit22_UIMagicMorphAnimationP33_27010C79BBE8436D7F6A5CD454B184E54Item_completion];
  if (v5)
  {
    v6 = v4[1];

    v5(v7);
    sub_188A55B8C(v5, v6);
    v8 = *v4;
    v9 = v4[1];
    *v4 = 0;
    v4[1] = 0;
    sub_188A55B8C(v8, v9);
  }

  v10 = OBJC_IVAR____UIMagicMorphAnimation_animationItems;
  swift_beginAccess();
  v11 = *(a2 + v10);
  if (v11 >> 62)
  {
    v12 = sub_18A4A7F68();
    if (!v12)
    {
      return;
    }
  }

  else
  {
    v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v12)
    {
      return;
    }
  }

  v13 = v12 - 1;
  if (__OFSUB__(v12, 1))
  {
    __break(1u);
  }

  else if ((v11 & 0xC000000000000001) == 0)
  {
    if ((v13 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v13 < *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v14 = *(v11 + 8 * v13 + 32);
      goto LABEL_10;
    }

    __break(1u);
    return;
  }

  v14 = sub_188E49688(v13, v11);

LABEL_10:
  type metadata accessor for _UIMagicMorphAnimation.Item();
  v15 = a1;
  v16 = sub_18A4A7C88();

  if (v16)
  {
    sub_188F32950(0);
  }
}

void sub_188F33C94(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (a4 >> 1 != a3)
  {
    if (a3 > v4)
    {
      v4 = a3;
    }

    v6 = v4 - a3;
    v7 = (a2 + 8 * a3);
    while (v6)
    {
      v8 = *v7;
      v9 = *(*v7 + OBJC_IVAR____TtCC5UIKit22_UIMagicMorphAnimationP33_27010C79BBE8436D7F6A5CD454B184E54Item_morphView);
      if (!v9)
      {
        goto LABEL_10;
      }

      v10 = OBJC_IVAR____TtCC5UIKit22_UIMagicMorphAnimationP33_27010C79BBE8436D7F6A5CD454B184E54Item_preview;
      v11 = *&v8[OBJC_IVAR____TtCC5UIKit22_UIMagicMorphAnimationP33_27010C79BBE8436D7F6A5CD454B184E54Item_preview];
      v12 = v8;
      v13 = v9;
      v14 = [v11 target];
      v15 = [v14 container];

      v16 = *&v8[v10];
      v17 = v13;
      v18 = [v16 view];
      [v15 insertSubview:v17 aboveSubview:v18];

      [v17 setAlpha_];
      [v17 updateTraitsIfNeeded];

      --v6;
      ++v7;
      if (!--v5)
      {
        return;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }
}

void sub_188F33DE8(void *a1, char a2, void *a3, char *a4, uint64_t (*a5)(), void *a6)
{
  v12 = [objc_opt_self() behaviorWithDampingRatio:1.0 response:0.1];
  if (v12)
  {
    v13 = v12;
    type metadata accessor for _UIMagicMorphAnimation.Parameters();
    v15 = v14;
    v16 = objc_allocWithZone(v14);
    *&v16[OBJC_IVAR____TtCC5UIKit22_UIMagicMorphAnimation10Parameters_morphSpring] = 0;
    *&v16[OBJC_IVAR____TtCC5UIKit22_UIMagicMorphAnimation10Parameters_widthSpring] = 0;
    *&v16[OBJC_IVAR____TtCC5UIKit22_UIMagicMorphAnimation10Parameters_heightSpring] = 0;
    *&v16[OBJC_IVAR____TtCC5UIKit22_UIMagicMorphAnimation10Parameters_positionXSpring] = 0;
    *&v16[OBJC_IVAR____TtCC5UIKit22_UIMagicMorphAnimation10Parameters_positionYSpring] = 0;
    *&v16[OBJC_IVAR____TtCC5UIKit22_UIMagicMorphAnimation10Parameters_transformSpring] = 0;
    *&v16[OBJC_IVAR____TtCC5UIKit22_UIMagicMorphAnimation10Parameters_fallbackBackgroundColor] = 0;
    *&v16[OBJC_IVAR____TtCC5UIKit22_UIMagicMorphAnimation10Parameters_overlayViews] = MEMORY[0x1E69E7CC0];
    *&v16[OBJC_IVAR____TtCC5UIKit22_UIMagicMorphAnimation10Parameters_contentScale] = 0x3FF0000000000000;
    v17 = &v16[OBJC_IVAR____TtCC5UIKit22_UIMagicMorphAnimation10Parameters_reparentingOptions];
    *v17 = v13;
    v17[8] = a2 & 1;
    v16[OBJC_IVAR____TtCC5UIKit22_UIMagicMorphAnimation10Parameters_crossBlurWhenMorphing] = 2;
    v16[OBJC_IVAR____TtCC5UIKit22_UIMagicMorphAnimation10Parameters_useIntermediateShape] = 0;
    v16[OBJC_IVAR____TtCC5UIKit22_UIMagicMorphAnimation10Parameters_tracksPresentationLayer] = 1;
    v18 = &v16[OBJC_IVAR____TtCC5UIKit22_UIMagicMorphAnimation10Parameters_kick];
    *v18 = 0;
    v18[1] = 0;
    v19 = &v16[OBJC_IVAR____TtCC5UIKit22_UIMagicMorphAnimation10Parameters_animationSmoothness];
    *v19 = 0;
    v19[8] = 1;
    v21.receiver = v16;
    v21.super_class = v15;
    v20 = objc_msgSendSuper2(&v21, sel_init);
    sub_188D7AA34(a1, v20, a3, a4, a5, a6);
  }

  else
  {
    __break(1u);
  }
}

char *sub_188F34174(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____UIMagicMorphAnimation_morphView);
  v3 = OBJC_IVAR____UIMagicMorphView_destinations;
  swift_beginAccess();
  v4 = *(v2 + v3);
  if (v4 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_18A4A7F68())
  {

    if (!i)
    {
      break;
    }

    v6 = 0;
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v7 = sub_188E494B4(v6, v4);
      }

      else
      {
        if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v7 = *(v4 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      sub_188A34624(0, &qword_1ED490230, 0x1E69E58C0);
      v10 = [*&v8[OBJC_IVAR____UIMagicMorphDestination_preview] view];
      v11 = [a1 view];
      v12 = sub_18A4A7C88();

      if (v12)
      {

        return v8;
      }

      ++v6;
      if (v9 == i)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

LABEL_13:

  return 0;
}

void sub_188F34378(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + OBJC_IVAR____TtCC5UIKit22_UIMagicMorphAnimationP33_27010C79BBE8436D7F6A5CD454B184E54Item_preview) target];
  v4 = [v3 container];

  v5 = [v4 _window];
  if (v5)
  {
    [v5 bounds];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;

    v14 = *(a2 + OBJC_IVAR____UIMagicMorphAnimation_animationContainerView);
    [v14 frame];
    v18.origin.x = v7;
    v18.origin.y = v9;
    v18.size.width = v11;
    v18.size.height = v13;
    if (!CGRectEqualToRect(v17, v18))
    {
      [v14 setBounds_];
      Center = UIRectGetCenter(v7, v9, v11);

      [v14 setCenter_];
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_188F344D8(void *a1, uint64_t a2)
{
  v3 = a2 + 16;
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = v3;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_188F36358;
  *(v5 + 24) = v4;
  v8[4] = sub_188E3FE50;
  v8[5] = v5;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 1107296256;
  v8[2] = sub_188A4A968;
  v8[3] = &block_descriptor_103_3;
  v6 = _Block_copy(v8);
  v7 = a1;

  UIMM_HFR_0(v6);
  _Block_release(v6);

  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }
}

void sub_188F34624(void *a1, double *a2)
{
  [a1 center];
  v5 = v4;
  v7 = v6;
  swift_beginAccess();
  if (v5 != *a2 || v7 != a2[1])
  {
    [a1 setCenter_];
  }
}

id sub_188F348E0()
{
  v1 = v0;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(Strong + OBJC_IVAR____UIMagicMorphAnimation_groupCompletion);

    [v4 complete];
  }

  v5 = swift_unknownObjectWeakLoadStrong();
  if (v5)
  {
    v6 = v5;
    v7 = sub_188D845C8();

    [v7 setPaused_];
  }

  v8 = type metadata accessor for _UIMagicMorphAnimation.InteractionAssertion();
  v11.receiver = v1;
  v11.super_class = v9;
  return objc_msgSendSuper2(&v11, sel_dealloc, v8);
}

void sub_188F34A2C(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtCC5UIKit22_UIMagicMorphAnimationP33_27010C79BBE8436D7F6A5CD454B184E54Item_preview;
  v5 = [*(v1 + OBJC_IVAR____TtCC5UIKit22_UIMagicMorphAnimationP33_27010C79BBE8436D7F6A5CD454B184E54Item_preview) target];
  v6 = [a1 target];
  sub_188A34624(0, &unk_1EA9307F0, off_1E70EA4C0);
  v7 = sub_18A4A7C88();

  v8 = *(v2 + v4);
  if ((v7 & 1) == 0)
  {
    v36 = v8;
    v37 = [a1 target];
    v35 = [v36 retargetedPreviewWithTarget_];

    goto LABEL_5;
  }

  v9 = [v8 target];
  v10 = [v9 container];

  v11 = [v10 window];
  if (v11)
  {

    v12 = [*(v2 + v4) view];
    v13 = [*(v2 + v4) view];
    [v13 bounds];
    v15 = v14;
    v17 = v16;
    v19 = v18;

    Center = UIRectGetCenter(v15, v17, v19);
    v22 = v21;
    v23 = [v5 container];
    [v12 convertPoint:v23 toCoordinateSpace:{Center, v22}];
    v25 = v24;
    v27 = v26;

    v28 = [v5 container];
    v29 = [a1 target];
    [v29 _transform3D];

    v30 = [objc_opt_self() _targetWithContainer_center_transform3D_];
    v31 = [*(v2 + v4) target];
    [v31 _contentScale];
    v33 = v32;

    [v30 _setContentScale_];
    v34 = *(v2 + v4);
    v35 = [v34 retargetedPreviewWithTarget_];

LABEL_5:
    v38 = *(v2 + v4);
    *(v2 + v4) = v35;
  }

  v39 = *(v2 + v4);
  sub_18923B9EC(v66);
  v40 = [(UITargetedPreview *)v39 _typedStorage];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93FA70, &unk_18A673250);
  v41 = swift_allocObject();
  v42 = v66[7];
  *(v41 + 112) = v66[6];
  *(v41 + 128) = v42;
  *(v41 + 144) = v67;
  v43 = v66[3];
  *(v41 + 48) = v66[2];
  *(v41 + 64) = v43;
  v44 = v66[5];
  *(v41 + 80) = v66[4];
  *(v41 + 96) = v44;
  v45 = v66[1];
  *(v41 + 16) = v66[0];
  *(v41 + 32) = v45;
  v63 = v5;
  v46 = OBJC_IVAR____UITypedStorage_storage;
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v64[0] = *(v40 + v46);
  *(v40 + v46) = 0x8000000000000000;
  sub_188A40430(v41, &_s19OverrideGeometryKeyVN, isUniquelyReferenced_nonNull_native);
  *(v40 + v46) = v64[0];
  swift_endAccess();

  v48 = *(v2 + v4);
  sub_18923B914(v68);
  v49 = [(UITargetedPreview *)v48 _typedStorage];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93C9B0, &qword_18A6526D0);
  v50 = swift_allocObject();
  v51 = v68[3];
  *(v50 + 48) = v68[2];
  *(v50 + 64) = v51;
  *(v50 + 80) = v69;
  v52 = v68[1];
  *(v50 + 16) = v68[0];
  *(v50 + 32) = v52;
  v53 = OBJC_IVAR____UITypedStorage_storage;
  swift_beginAccess();
  v54 = swift_isUniquelyReferenced_nonNull_native();
  v65 = *(v49 + v53);
  *(v49 + v53) = 0x8000000000000000;
  sub_188A40430(v50, &_s18GenieParametersKeyVN, v54);
  *(v49 + v53) = v65;
  swift_endAccess();

  v55 = *(v2 + v4);
  v56 = [(UITargetedPreview *)a1 _typedStorage];
  sub_18901EF08(v64);

  sub_18923BAD0(v64);
  v57 = *(v2 + v4);
  v58 = [(UITargetedPreview *)a1 _typedStorage];
  LOBYTE(v55) = sub_18901EFE0();

  v59 = [(UITargetedPreview *)v57 _typedStorage];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9371F8, &qword_18A6526D8);
  v60 = swift_allocObject();
  *(v60 + 16) = v55 & 1;
  v61 = OBJC_IVAR____UITypedStorage_storage;
  swift_beginAccess();
  v62 = swift_isUniquelyReferenced_nonNull_native();
  v65 = *(v59 + v61);
  *(v59 + v61) = 0x8000000000000000;
  sub_188A40430(v60, &_s31IgnoreForGlassSizeResolutionKeyVN, v62);
  *(v59 + v61) = v65;
  swift_endAccess();
}

id sub_188F35058(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_188F35124(uint64_t result, unint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  v3 = a2;
  v4 = a2 >> 62;
  if (a2 >> 62)
  {
LABEL_13:
    v9 = result;
    result = sub_18A4A7F68();
    v10 = result - v9;
    if (__OFSUB__(result, v9))
    {
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    v11 = sub_18A4A7F68();
    result = sub_18A4A7F68();
    if (result < 0)
    {
LABEL_27:
      __break(1u);
      return result;
    }

    if (v10 <= v11)
    {
      v12 = v10 & ~(v10 >> 63);
    }

    else
    {
      v12 = v11;
    }

    if (v11 < 0 || v10 < 1)
    {
      v6 = v10 & ~(v10 >> 63);
    }

    else
    {
      v6 = v12;
    }

    result = sub_18A4A7F68();
    if (result >= v6)
    {
      goto LABEL_4;
    }

LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v5 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v6 = (v5 - result) & ~((v5 - result) >> 63);
  if (v5 < v6)
  {
    goto LABEL_25;
  }

LABEL_4:
  if ((v3 & 0xC000000000000001) != 0 && v6)
  {
    type metadata accessor for _UIMagicMorphAnimation.Item();

    v7 = 0;
    do
    {
      v8 = v7 + 1;
      sub_18A4A8148();
      v7 = v8;
    }

    while (v6 != v8);
    if (!v4)
    {
      return v3 & 0xFFFFFFFFFFFFFF8;
    }
  }

  else
  {

    if (!v4)
    {
      return v3 & 0xFFFFFFFFFFFFFF8;
    }
  }

  return sub_18A4A8438();
}

void sub_188F35270(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  isEscapingClosureAtFileLocation = a1;
  v11 = [a1 target];
  v12 = [v11 container];

  v13 = [v12 _window];
  if (!v13)
  {
    goto LABEL_26;
  }

  v14 = OBJC_IVAR____UIMagicMorphAnimation_animationItems;
  swift_beginAccess();
  v15 = *&v6[v14];
  v113 = v13;
  v119 = v14;
  v120 = v6;
  if (v15 >> 62)
  {
    v114 = sub_18A4A7F68();
  }

  else
  {
    v114 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  type metadata accessor for _UIMagicMorphView(0);
  v16 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  type metadata accessor for _UIMagicMorphAnimation.Item();
  v18 = v17;
  v19 = objc_allocWithZone(v17);
  v19[OBJC_IVAR____TtCC5UIKit22_UIMagicMorphAnimationP33_27010C79BBE8436D7F6A5CD454B184E54Item_tracksPresentationLayer] = 1;
  *&v19[OBJC_IVAR____TtCC5UIKit22_UIMagicMorphAnimationP33_27010C79BBE8436D7F6A5CD454B184E54Item_reparentingView] = 0;
  *&v19[OBJC_IVAR____TtCC5UIKit22_UIMagicMorphAnimationP33_27010C79BBE8436D7F6A5CD454B184E54Item_morphView] = 0;
  v20 = &v19[OBJC_IVAR____TtCC5UIKit22_UIMagicMorphAnimationP33_27010C79BBE8436D7F6A5CD454B184E54Item_alongsideAnimations];
  *v20 = 0;
  v20[1] = 0;
  v21 = &v19[OBJC_IVAR____TtCC5UIKit22_UIMagicMorphAnimationP33_27010C79BBE8436D7F6A5CD454B184E54Item_completion];
  *v21 = 0;
  v21[1] = 0;
  *&v19[OBJC_IVAR____TtCC5UIKit22_UIMagicMorphAnimationP33_27010C79BBE8436D7F6A5CD454B184E54Item_preview] = isEscapingClosureAtFileLocation;
  *v21 = a5;
  v21[1] = a6;
  v121 = isEscapingClosureAtFileLocation;
  sub_188D738F4(a5, a6);
  v132.receiver = v19;
  v132.super_class = v18;
  v22 = objc_msgSendSuper2(&v132, sel_init);
  v23 = &v22[OBJC_IVAR____TtCC5UIKit22_UIMagicMorphAnimationP33_27010C79BBE8436D7F6A5CD454B184E54Item_alongsideAnimations];
  v24 = *&v22[OBJC_IVAR____TtCC5UIKit22_UIMagicMorphAnimationP33_27010C79BBE8436D7F6A5CD454B184E54Item_alongsideAnimations];
  v25 = *&v22[OBJC_IVAR____TtCC5UIKit22_UIMagicMorphAnimationP33_27010C79BBE8436D7F6A5CD454B184E54Item_alongsideAnimations + 8];
  v109 = &v22[OBJC_IVAR____TtCC5UIKit22_UIMagicMorphAnimationP33_27010C79BBE8436D7F6A5CD454B184E54Item_alongsideAnimations];
  *v23 = a3;
  v23[1] = a4;
  sub_188D738F4(a3, a4);
  sub_188A55B8C(v24, v25);
  v26 = OBJC_IVAR____TtCC5UIKit22_UIMagicMorphAnimationP33_27010C79BBE8436D7F6A5CD454B184E54Item_preview;
  v27 = *&v22[OBJC_IVAR____TtCC5UIKit22_UIMagicMorphAnimationP33_27010C79BBE8436D7F6A5CD454B184E54Item_preview];
  sub_188A34624(0, &qword_1ED48F680, off_1E70EAD78);
  v28 = v27;
  v29 = sub_18A4A7518();
  [v28 set:v29 overlayViews:?];

  v22[OBJC_IVAR____TtCC5UIKit22_UIMagicMorphAnimationP33_27010C79BBE8436D7F6A5CD454B184E54Item_tracksPresentationLayer] = 1;
  v30 = *&v22[OBJC_IVAR____TtCC5UIKit22_UIMagicMorphAnimationP33_27010C79BBE8436D7F6A5CD454B184E54Item_morphView];
  *&v22[OBJC_IVAR____TtCC5UIKit22_UIMagicMorphAnimationP33_27010C79BBE8436D7F6A5CD454B184E54Item_morphView] = v16;
  v116 = v16;

  swift_beginAccess();
  v31 = v22;
  MEMORY[0x18CFE2450]();
  if (*((*(v120 + v14) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v120 + v14) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_18A4A7588();
  }

  sub_18A4A75F8();
  swift_endAccess();
  v32 = objc_opt_self();
  v33 = swift_allocObject();
  *(v33 + 16) = v120;
  *(v33 + 24) = v31;
  v34 = swift_allocObject();
  *(v34 + 16) = sub_188F36394;
  *(v34 + 24) = v33;
  v130 = sub_188E3FE50;
  v131 = v34;
  aBlock = MEMORY[0x1E69E9820];
  v127 = 1107296256;
  isEscapingClosureAtFileLocation = &v128;
  v128 = sub_188A4A968;
  v129 = &block_descriptor_128_0;
  v35 = _Block_copy(&aBlock);
  v36 = v31;
  v125 = v120;

  [v32 performWithoutAnimation_];
  _Block_release(v35);
  LOBYTE(v35) = swift_isEscapingClosureAtFileLocation();

  if (v35)
  {
    __break(1u);
    goto LABEL_21;
  }

  v37 = [*&v22[v26] target];
  v38 = [v37 container];
  v39 = swift_allocObject();
  *(v39 + 16) = v36;
  v124 = v36;
  sub_188D73B5C(sub_188F3639C, v39);
  v41 = v40;

  v42 = swift_allocObject();
  v42[2] = v116;
  v42[3] = v41;
  v42[4] = v37;
  v42[5] = v38;
  v42[6] = v121;
  v43 = swift_allocObject();
  *(v43 + 16) = sub_188F363B8;
  *(v43 + 24) = v42;
  v130 = sub_188E3FE50;
  v131 = v43;
  aBlock = MEMORY[0x1E69E9820];
  v127 = 1107296256;
  v128 = sub_188A4A968;
  v129 = &block_descriptor_141_0;
  v44 = _Block_copy(&aBlock);
  v45 = v121;
  v122 = v116;
  v46 = v41;
  v117 = v37;
  v47 = v38;

  [v32 performWithoutAnimation_];
  _Block_release(v44);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v118 = v32;
  v112 = v46;
  v111 = v47;
  if (!v114)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    v92 = v113;
    if (!Strong)
    {
      Strong = v113;
    }

    v94 = Strong;
    [Strong insertSubview:*&v125[OBJC_IVAR____UIMagicMorphAnimation_animationContainerView] atIndex:0];
    v95 = sub_188D845C8();
    v96 = [objc_opt_self() mainRunLoop];
    [v95 addToRunLoop:v96 forMode:*MEMORY[0x1E695DA28]];

    v97 = *&v125[OBJC_IVAR____UIMagicMorphAnimation____lazy_storage___geometryTrackingDisplayLink];
    LOBYTE(aBlock) = 1;
    sub_18A4A79D8();
    [v97 setPreferredFrameRateRange_];

    v91 = swift_allocObject();
    *(v91 + 16) = v122;
    *(v91 + 24) = v124;
    v98 = swift_allocObject();
    v90 = sub_188F36448;
    *(v98 + 16) = sub_188F36448;
    *(v98 + 24) = v91;
    v130 = sub_188E3FE50;
    v131 = v98;
    aBlock = MEMORY[0x1E69E9820];
    v127 = 1107296256;
    v128 = sub_188A4A968;
    v129 = &block_descriptor_199;
    v99 = _Block_copy(&aBlock);
    v100 = v122;
    v101 = v124;

    [v118 performWithoutAnimation_];

    _Block_release(v99);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_22;
  }

  isEscapingClosureAtFileLocation = objc_opt_self();
  v48 = [isEscapingClosureAtFileLocation behaviorWithDampingRatio:1.0 response:0.5];
  if (!v48)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v49 = v48;
  v50 = [isEscapingClosureAtFileLocation behaviorWithDampingRatio:1.0 response:0.4];
  if (v50)
  {
    v108 = v50;
    v115 = [isEscapingClosureAtFileLocation behaviorWithDampingRatio:1.0 response:0.45];
    if (v115)
    {
      v51 = OBJC_IVAR____UIMagicMorphAnimation_groupCompletion;
      [*&v125[OBJC_IVAR____UIMagicMorphAnimation_groupCompletion] increment];
      v52 = swift_allocObject();
      *(v52 + 16) = v122;
      v53 = swift_allocObject();
      *(v53 + 16) = v124;
      *(v53 + 24) = v125;
      v110 = v51;
      v54 = *&v125[v51];
      v130 = sub_188F36420;
      v131 = v53;
      aBlock = MEMORY[0x1E69E9820];
      v127 = 1107296256;
      v128 = sub_188A4A8F0;
      v129 = &block_descriptor_150;
      v55 = _Block_copy(&aBlock);
      swift_retain_n();
      v56 = v122;
      v57 = v124;
      v125;
      v58 = v54;
      v59 = v49;

      [v58 addCompletion_];
      _Block_release(v55);

      v60 = swift_allocObject();
      *(v60 + 16) = sub_188F363D0;
      *(v60 + 24) = v52;
      v130 = sub_188E3FE58;
      v131 = v60;
      aBlock = MEMORY[0x1E69E9820];
      v127 = 1107296256;
      v128 = sub_188A4A8F0;
      v129 = &block_descriptor_157;
      v61 = _Block_copy(&aBlock);
      v62 = v59;

      v63 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v130 = sub_188E3FE98;
      v131 = v63;
      aBlock = MEMORY[0x1E69E9820];
      v127 = 1107296256;
      v128 = sub_188C3DD6C;
      v129 = &block_descriptor_162_0;
      v64 = _Block_copy(&aBlock);

      [v32 _animateUsingSpringBehavior_tracking_animations_completion_];
      _Block_release(v64);
      _Block_release(v61);

      v65 = *v109;
      if (*v109)
      {
        v66 = v109[1];
        v67 = *&v125[v51];
        sub_188D738F4(*v109, v66);
        v68 = v115;
        [v67 increment];
        v69 = swift_allocObject();
        *(v69 + 16) = v65;
        *(v69 + 24) = v66;
        v130 = sub_188E3FE58;
        v131 = v69;
        aBlock = MEMORY[0x1E69E9820];
        v127 = 1107296256;
        v128 = sub_188A4A8F0;
        v129 = &block_descriptor_184;
        v70 = _Block_copy(&aBlock);
        sub_188D738F4(v65, v66);
        v71 = v68;

        v72 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v130 = sub_188E3FE98;
        v131 = v72;
        aBlock = MEMORY[0x1E69E9820];
        v127 = 1107296256;
        v128 = sub_188C3DD6C;
        v129 = &block_descriptor_189_0;
        v73 = _Block_copy(&aBlock);

        [v32 _animateUsingSpringBehavior_tracking_animations_completion_];
        _Block_release(v73);
        _Block_release(v70);

        sub_188A55B8C(v65, v66);
      }

      v74 = *(v120 + v119);

      v75 = sub_188F35124(1, v74);
      v77 = v76;
      v79 = v78;
      v81 = v80;

      v82 = swift_allocObject();
      v82[2] = v75;
      v82[3] = v77;
      v82[4] = v79;
      v82[5] = v81;
      v83 = *&v125[v51];
      v84 = v108;
      swift_unknownObjectRetain();
      [v83 increment];
      v85 = swift_allocObject();
      *(v85 + 16) = sub_188F3643C;
      *(v85 + 24) = v82;
      v130 = sub_188E3FE58;
      v131 = v85;
      aBlock = MEMORY[0x1E69E9820];
      v127 = 1107296256;
      v128 = sub_188A4A8F0;
      v129 = &block_descriptor_172;
      v86 = _Block_copy(&aBlock);
      v87 = v84;

      v88 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v130 = sub_188E3FE98;
      v131 = v88;
      aBlock = MEMORY[0x1E69E9820];
      v127 = 1107296256;
      v128 = sub_188C3DD6C;
      v129 = &block_descriptor_177;
      v89 = _Block_copy(&aBlock);

      [v118 _animateUsingSpringBehavior_tracking_animations_completion_];
      _Block_release(v89);
      _Block_release(v86);

      [*&v125[v110] complete];
      swift_unknownObjectRelease();
      v90 = 0;
      v91 = 0;
      v92 = v113;
LABEL_18:
      v102 = v124;
      sub_188D7B348(v124);

      sub_188A55B8C(v90, v91);
      return;
    }

    goto LABEL_25;
  }

LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  aBlock = 0;
  v127 = 0xE000000000000000;
  sub_18A4A80E8();
  MEMORY[0x18CFE22D0](0xD000000000000061, 0x800000018A693850);
  v103 = [isEscapingClosureAtFileLocation view];
  v104 = [v103 _conciseParentDescription];

  v105 = sub_18A4A7288();
  v107 = v106;

  MEMORY[0x18CFE22D0](v105, v107);

  sub_18A4A8398();
  __break(1u);
}

id sub_188F36294(uint64_t a1)
{
  v2 = v1;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  [*(a1 + OBJC_IVAR____UIMagicMorphAnimation_groupCompletion) increment];
  v4 = sub_188D845C8();
  [v4 setPaused_];

  v5 = type metadata accessor for _UIMagicMorphAnimation.InteractionAssertion();
  v8.receiver = v2;
  v8.super_class = v6;
  return objc_msgSendSuper2(&v8, sel_init, v5);
}

uint64_t sub_188F36334(uint64_t a1)
{
  if (*(a1 + 129))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

id sub_188F363D0()
{
  v1 = *(v0 + 16);
  [v1 setAlpha_];

  return [v1 updateTraitsIfNeeded];
}

void sub_188F3649C()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  Strong = swift_unknownObjectUnownedLoadStrong();
  [Strong setCenter_];
}

uint64_t objectdestroy_133Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_188F365B4()
{
  v1 = *(v0 + 32);
  v2 = (*(v0 + 16))();
  return v1(v2);
}

id sub_188F36620()
{
  v1 = *(v0 + 24);
  [*(v0 + 16) setAlpha_];

  return [v1 setAlpha_];
}

uint64_t objectdestroy_204Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

double static _UICornerInsets.zero.getter@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

BOOL sub_188F368B4(float64x2_t *a1, float64x2_t *a2)
{
  result = 0;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*a1, *a2), vceqq_f64(a1[1], a2[1])))) & 1) != 0 && a1[2].f64[0] == a2[2].f64[0] && a1[2].f64[1] == a2[2].f64[1] && a1[3].f64[0] == a2[3].f64[0])
  {
    return a1[3].f64[1] == a2[3].f64[1];
  }

  return result;
}

double _UICornerInsets.init(from:)@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_188F36B60(a2, v7);
  if (!v2)
  {
    v5 = v7[1];
    *a1 = v7[0];
    a1[1] = v5;
    result = *&v8;
    v6 = v9;
    a1[2] = v8;
    a1[3] = v6;
  }

  return result;
}

void _UICornerInsets.encode(to:)(void *a1)
{
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_18A4A89A8();
  __swift_mutable_project_boxed_opaque_existential_1(v2, v3);
  type metadata accessor for CGSize(0);
  sub_188F36D5C(&qword_1EA937200, MEMORY[0x1E695EF88]);
  sub_18A4A8658();
  if (!v1)
  {
    __swift_mutable_project_boxed_opaque_existential_1(v2, v3);
    sub_18A4A8658();
    __swift_mutable_project_boxed_opaque_existential_1(v2, v3);
    sub_18A4A8658();
    __swift_mutable_project_boxed_opaque_existential_1(v2, v3);
    sub_18A4A8658();
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v2);
}

double sub_188F36B04@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_188F36B60(a2, v7);
  if (!v2)
  {
    v5 = v7[1];
    *a1 = v7[0];
    a1[1] = v5;
    result = *&v8;
    v6 = v9;
    a1[2] = v8;
    a1[3] = v6;
  }

  return result;
}

void sub_188F36B60(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_18A4A8978();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  else
  {
    type metadata accessor for CGSize(0);
    __swift_mutable_project_boxed_opaque_existential_1(v7, v8);
    sub_188F36D5C(&qword_1EA937208, MEMORY[0x1E695EFA0]);
    sub_18A4A8648();
    __swift_mutable_project_boxed_opaque_existential_1(v7, v8);
    sub_18A4A8648();
    __swift_mutable_project_boxed_opaque_existential_1(v7, v8);
    sub_18A4A8648();
    __swift_mutable_project_boxed_opaque_existential_1(v7, v8);
    sub_18A4A8648();
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
    *a2 = v5;
    a2[1] = v6;
    a2[2] = v5;
    a2[3] = v6;
    a2[4] = v5;
    a2[5] = v6;
    a2[6] = v5;
    a2[7] = v6;
  }
}

uint64_t sub_188F36D5C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CGSize(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_188F36DD4(void *a1)
{
  v2 = v1;
  v3 = OBJC_IVAR____UITabBarContentLayoutManager_hostedSearchFieldConfiguration;
  v4 = *(v1 + OBJC_IVAR____UITabBarContentLayoutManager_hostedSearchFieldConfiguration);
  if (a1)
  {
    if (!v4)
    {
      return;
    }

    sub_188A34624(0, &qword_1EA92FE90, off_1E70EC1A8);
    v6 = v4;
    v7 = a1;
    v8 = sub_18A4A7C88();

    if (v8)
    {
      return;
    }

    v4 = *(v2 + v3);
  }

  if (v4)
  {
    v9 = [v4 searchBarView];
    [v9 removeFromSuperview];

    v10 = *(v2 + v3);
    if (v10)
    {
      v11 = [v10 _borrowedAssertion];
      if (v11)
      {
        [v11 _invalidate];
        swift_unknownObjectRelease();
      }

      v12 = *(v2 + v3);
      if (v12)
      {
        [v12 _setSearchFieldHost_];
        v13 = *(v2 + v3);
        if (v13)
        {
          [v13 setSearchIconMatchedViewIdentifier_];
          v14 = *(v2 + v3);
          if (v14)
          {

            [v14 setAutomaticallyActivatesSearch_];
          }
        }
      }
    }
  }
}

void sub_188F36F38()
{
  v1 = OBJC_IVAR____UITabBarContentLayoutManager_hostedSearchFieldConfiguration;
  v2 = *&v0[OBJC_IVAR____UITabBarContentLayoutManager_hostedSearchFieldConfiguration];
  if (v2)
  {
    [v2 _setSearchFieldHost_];
  }

  v3 = [objc_msgSend(v0 host)];
  swift_unknownObjectRelease();
  if (v3)
  {
    v4 = [v3 selectedTab];

    if (v4)
    {
      objc_opt_self();
      v5 = swift_dynamicCastObjCClass();
      if (v5)
      {
LABEL_11:
        v7 = [v5 automaticallyActivatesSearch];
        goto LABEL_12;
      }
    }
  }

  v6 = [objc_msgSend(v0 host)];
  swift_unknownObjectRelease();
  if (!v6)
  {
    v7 = 0;
LABEL_15:
    v8 = *&v0[v1];
    if (!v8)
    {
      return;
    }

    goto LABEL_16;
  }

  v7 = [v6 selectedViewController];

  if (!v7)
  {
    goto LABEL_15;
  }

  v4 = [v7 _uip_tabElement];

  if (!v4)
  {
    v7 = 0;
    v8 = *&v0[v1];
    if (!v8)
    {
      return;
    }

    goto LABEL_16;
  }

  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (v5)
  {
    goto LABEL_11;
  }

  v7 = 0;
LABEL_12:

  v8 = *&v0[v1];
  if (!v8)
  {
    return;
  }

LABEL_16:
  [v8 setAutomaticallyActivatesSearch_];
  v9 = *&v0[v1];
  if (v9)
  {
    v10 = v9;
    v11 = sub_18A4A7258();
    [v10 setSearchIconMatchedViewIdentifier_];
  }
}

void sub_188F371C8(void *a1)
{
  v2 = v1;
  v3 = OBJC_IVAR____UITabBarContentLayoutManager_accessoryContainerView;
  v4 = *&v1[OBJC_IVAR____UITabBarContentLayoutManager_accessoryContainerView];
  if (!v4)
  {
    return;
  }

  if (a1)
  {
    type metadata accessor for _UITabAccessoryContainer();
    v6 = v4;
    v7 = a1;
    v8 = sub_18A4A7C88();

    if (v8)
    {
      return;
    }

    v4 = *&v2[v3];
    if (!v4)
    {
      return;
    }
  }

  v16 = v4;
  v9 = [v16 superview];
  v10 = [v2 container];
  v11 = v10;
  if (!v9)
  {

    goto LABEL_10;
  }

  sub_188A34624(0, &qword_1ED48F680, off_1E70EAD78);
  v12 = sub_18A4A7C88();

  if ((v12 & 1) == 0)
  {
LABEL_10:
    v14 = [v2 container];
    [v14 addSubview_];

    v15 = [v2 container];
    [v15 setNeedsLayout];

    v13 = v15;
    goto LABEL_11;
  }

  v13 = v16;
LABEL_11:
}

id sub_188F3744C()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____UITabBarContentLayoutManager_hostedAccessoryConfiguration];
  if (v2)
  {
    v3 = OBJC_IVAR____UITabBarContentLayoutManager_currentDisplayState;
    if (v0[OBJC_IVAR____UITabBarContentLayoutManager_currentDisplayState] == 3)
    {
      v4 = 3;
    }

    else
    {
      v4 = 2;
    }

    v5 = v2;
    v6 = [objc_msgSend(v1 host)];
    swift_unknownObjectRelease();
    [(UITabAccessory *)v5 _setEnvironment:v6];
    v7 = *&v1[OBJC_IVAR____UITabBarContentLayoutManager_accessoryContainerView];
    if (v7)
    {
      v8 = v1[v3] == 2;
      v9 = v7;
      sub_189173674(v8);
    }
  }

  return [v1 setNeedsAccessoryDisplayStateUpdate_];
}

void sub_188F37598(uint64_t a1)
{
  v2 = v1;
  v4 = [objc_msgSend(v1 host)];
  swift_unknownObjectRelease();
  if (v4)
  {
    v5 = [v4 window];
    if (v5)
    {

      if ((a1 & 0xFE) == 2 || (v6 = [v1 searchContainerView]) == 0)
      {
        v12 = 0;
        v13 = 0;
      }

      else
      {
        v7 = v6;
        v8 = [v6 superview];
        v9 = [v1 container];
        v10 = v9;
        if (v8)
        {
          sub_188A34624(0, &qword_1ED48F680, off_1E70EAD78);
          v11 = sub_18A4A7C88();

          if (v11)
          {

            v12 = 0;
            v13 = 0;
            goto LABEL_18;
          }
        }

        else
        {
        }

        v15 = [v2 container];
        [v15 addSubview_];

        v16 = objc_opt_self();
        v17 = swift_allocObject();
        *(v17 + 16) = v2;
        v18 = swift_allocObject();
        *(v18 + 16) = sub_188F3AB1C;
        *(v18 + 24) = v17;
        v73 = sub_188E3FE50;
        v74 = v18;
        aBlock = MEMORY[0x1E69E9820];
        v70 = 1107296256;
        v71 = sub_188A4A968;
        v72 = &block_descriptor_27_0;
        v19 = _Block_copy(&aBlock);
        v20 = v2;

        [v16 performWithoutAnimation_];

        _Block_release(v19);
        isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

        if (isEscapingClosureAtFileLocation)
        {
          __break(1u);
          goto LABEL_72;
        }

        v13 = v17;
        v12 = sub_188F3AB1C;
      }

LABEL_18:
      v22 = OBJC_IVAR____UITabBarContentLayoutManager_morphAnimation;
      v23 = *&v2[OBJC_IVAR____UITabBarContentLayoutManager_morphAnimation];
      if (!v23)
      {
        sub_188F39CAC(v2[OBJC_IVAR____UITabBarContentLayoutManager_currentDisplayState]);
        v31 = v30;
        if (!(v30 >> 62))
        {

          sub_18A4A8738();
          v32 = v31;
          goto LABEL_29;
        }

LABEL_70:
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA940A00, &unk_18A652778);
        v32 = sub_18A4A83B8();
LABEL_29:
        type metadata accessor for _UILiquidMorphAnimation();
        v34 = objc_allocWithZone(v33);
        _UILiquidMorphAnimation.init(morphables:)(v32);
        v35 = *&v2[v22];
        *&v2[v22] = v36;
        v37 = v36;

        v37[OBJC_IVAR____TtC5UIKit23_UILiquidMorphAnimation_inferGlassGroupFromContainer] = 1;
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {

          sub_1891D5D64();
        }

        v39 = *&v2[v22];
        if (v39)
        {
          v40 = v39;

          v41 = [v2 container];
          swift_unknownObjectWeakAssign();
          sub_1891D5D64();

          sub_188F37598(a1);
          sub_188A55B8C(v12, v13);
          return;
        }

        goto LABEL_74;
      }

      v24 = *&v2[OBJC_IVAR____UITabBarContentLayoutManager_hostedAccessoryConfiguration];
      v68 = v23;
      v64 = v24;
      if (v24)
      {
        v25 = [objc_msgSend(v2 host)];
        swift_unknownObjectRelease();
        if (v25)
        {
          v26 = [v25 _existingView];

          if (v26)
          {
            [v26 layoutIfNeeded];
          }
        }
      }

      v27 = [v2 searchContainerView];
      if (!v27)
      {
LABEL_36:
        [v4 layoutIfNeeded];
        sub_188F39CAC(a1);
        v43 = v42;
        v65 = v13;
        v66 = v42 >> 62;
        v67 = v12;
        if (v42 >> 62)
        {
          v44 = sub_18A4A7F68();
          if (!v44)
          {
            goto LABEL_45;
          }
        }

        else
        {
          v44 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v44)
          {
            goto LABEL_45;
          }
        }

        if (v44 < 1)
        {
LABEL_69:
          __break(1u);
          goto LABEL_70;
        }

        v45 = 0;
        do
        {
          if ((v43 & 0xC000000000000001) != 0)
          {
            v46 = sub_188E49300(v45, v43);
          }

          else
          {
            v46 = *(v43 + 8 * v45 + 32);
          }

          v47 = v46;
          ++v45;
          [v46 setHidden_];
          [v47 layoutIfNeeded];
        }

        while (v44 != v45);
LABEL_45:
        v48 = v2[OBJC_IVAR____UITabBarContentLayoutManager_currentDisplayState];
        v2[OBJC_IVAR____UITabBarContentLayoutManager_currentDisplayState] = a1;
        if (a1 == 2)
        {
          v49 = &selRef_heightOfInputViews_;
          v22 = 0x1E71AF000;
          if (v48 != 2)
          {
            goto LABEL_53;
          }
        }

        else
        {
          v49 = &selRef_heightOfInputViews_;
          v22 = &selRef_swipeActionController_willPerformAction_atIndexPath_;
          if (a1 == 3)
          {
            if (v48 == 3)
            {
              goto LABEL_54;
            }

LABEL_53:
            [v2 setNeedsAccessoryDisplayStateUpdate_];
            goto LABEL_54;
          }

          if (v48 & 0xFE) == 2 || ((v48 ^ a1))
          {
            goto LABEL_53;
          }
        }

LABEL_54:
        v50 = [objc_msgSend(v2 v49[237])];
        swift_unknownObjectRelease();
        if (v50)
        {
          v51 = 1;
          if (a1 == 3)
          {
            v51 = 2;
          }

          if (a1 == 2)
          {
            v52 = 0;
          }

          else
          {
            v52 = v51;
          }

          [(UITabBar *)v50 _setCurrentMorphTarget:v52];

          v13 = objc_opt_self();
          a1 = swift_allocObject();
          *(a1 + 16) = v2;
          v53 = swift_allocObject();
          *(v53 + 16) = sub_188F3AAE0;
          *(v53 + 24) = a1;
          v73 = sub_188A4B574;
          v74 = v53;
          aBlock = MEMORY[0x1E69E9820];
          v70 = 1107296256;
          v71 = sub_188A4A968;
          v72 = &block_descriptor_32;
          v12 = _Block_copy(&aBlock);
          v2 = v2;

          [v13 performWithoutAnimation_];
          _Block_release(v12);
          v54 = swift_isEscapingClosureAtFileLocation();

          if ((v54 & 1) == 0)
          {

            if (v66)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA940A00, &unk_18A652778);
              v55 = sub_18A4A83B8();
            }

            else
            {
              sub_18A4A8738();
              v55 = v43;
            }

            LOWORD(aBlock) = 0;
            v70 = 0;
            v71 = 0;
            LOBYTE(v72) = 1;
            v73 = 0x4018000000000000;
            LOBYTE(v74) = 0;
            v56 = swift_allocObject();
            swift_unknownObjectWeakInit();

            sub_1891CF2E4(v55, &aBlock, 0, 0, sub_188F3AAE8, v56);

            v57 = [objc_opt_self() behaviorWithDampingRatio:1.0 response:0.3];
            if (v57)
            {
              v58 = v57;

              v59 = swift_allocObject();
              *(v59 + 16) = v2;
              v73 = sub_188F3AB0C;
              v74 = v59;
              aBlock = MEMORY[0x1E69E9820];
              v70 = 1107296256;
              v71 = sub_188A4A8F0;
              v72 = &block_descriptor_14_1;
              v60 = _Block_copy(&aBlock);
              v61 = v2;
              v62 = v58;

              v73 = signpost_c2_entryLock_start;
              v74 = 0;
              aBlock = MEMORY[0x1E69E9820];
              v70 = 1107296256;
              v71 = sub_188C3DD6C;
              v72 = &block_descriptor_17;
              v63 = _Block_copy(&aBlock);
              [v13 _animateUsingSpringBehavior_tracking_animations_completion_];
              _Block_release(v63);
              _Block_release(v60);

              if (v64)
              {
                [v61 updateContentLayoutWithAnimated_];
              }

              sub_188A55B8C(v67, v65);

              return;
            }

            goto LABEL_73;
          }

          __break(1u);
          goto LABEL_69;
        }

LABEL_72:
        __break(1u);
LABEL_73:
        __break(1u);
LABEL_74:
        __break(1u);
        return;
      }

      v28 = v27;
      if (a1 == 2)
      {
        v29 = 0;
        v22 = 0;
      }

      else
      {
        if (a1 == 3)
        {
LABEL_35:

          goto LABEL_36;
        }

        v29 = 1;
        v22 = a1;
      }

      [*&v27[OBJC_IVAR____TtC5UIKit27_UITabHostedSearchContainer_primaryPlatterView] setUserInteractionEnabled_];
      [*&v28[OBJC_IVAR____TtC5UIKit27_UITabHostedSearchContainer_cancelPlatterView] setUserInteractionEnabled_];
      goto LABEL_35;
    }
  }

  v14 = v1[OBJC_IVAR____UITabBarContentLayoutManager_currentDisplayState];
  v1[OBJC_IVAR____UITabBarContentLayoutManager_currentDisplayState] = 2;
  if (v14 != 2)
  {
    [v1 setNeedsAccessoryDisplayStateUpdate_];
  }

  [v1 _removeHostedSearchViewsIfNeeded];
}

void sub_188F380A4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (a1 != 2)
    {
      if (a1 == 1)
      {
        [Strong _morphToHostedSearchFieldWithActivatesSearchIfPossible_];
      }

      else if (!a1)
      {
        v5 = 2;
LABEL_8:
        sub_188F37598(v5);
      }

      return;
    }

    v5 = 3;
    goto LABEL_8;
  }
}

double sub_188F38134(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);

  return result;
}

void sub_188F38188(char a1, char a2)
{
  v33 = [objc_msgSend(v2 host)];
  swift_unknownObjectRelease();
  if (!v33)
  {
    return;
  }

  v31 = [objc_msgSend(v2 host)];
  swift_unknownObjectRelease();
  if (!v31)
  {
    goto LABEL_23;
  }

  v5 = [v31 _existingView];
  if (v5)
  {
    v6 = v5;
    v7 = [v2 searchContainerView];
    v8 = [v33 isHidden] ^ a1;
    [v6 setNeedsLayout];
    v9 = swift_allocObject();
    *(v9 + 16) = v6;
    *(v9 + 24) = v33;
    *(v9 + 32) = a1 & 1;
    *(v9 + 40) = v7;
    *(v9 + 48) = v2;
    *(v9 + 56) = v31;
    *(v9 + 64) = v8 & 1;
    v10 = v2;
    v11 = v33;
    v12 = v6;
    v33 = v31;
    v13 = v7;
    v14 = [v33 _selectedViewControllerInTabBar];
    if (v14)
    {
      v15 = v14;
      v16 = [v14 transitionCoordinator];
      if (!v16)
      {

        if (a2)
        {
LABEL_9:
          v18 = [objc_opt_self() behaviorWithDampingRatio:1.0 response:0.3];
          if (v18)
          {
            v19 = v18;
            v20 = objc_opt_self();
            v21 = swift_allocObject();
            *(v21 + 16) = sub_188F3ACE8;
            *(v21 + 24) = v9;
            v38 = sub_188F3AD00;
            v39 = v21;
            aBlock = MEMORY[0x1E69E9820];
            v35 = 1107296256;
            v36 = sub_188A4A8F0;
            v37 = &block_descriptor_142;
            v22 = _Block_copy(&aBlock);

            v23 = v19;

            [v20 _animateUsingSpringBehavior_tracking_animations_completion_];

            _Block_release(v22);
          }

          else
          {
            __break(1u);
          }

          return;
        }

        goto LABEL_13;
      }

      v17 = v16;
      if (([v16 isCancelled] & 1) == 0)
      {
        v28 = [v10 container];
        v29 = swift_allocObject();
        *(v29 + 16) = sub_188F3ACE8;
        *(v29 + 24) = v9;
        v38 = sub_188F3AD2C;
        v39 = v29;
        aBlock = MEMORY[0x1E69E9820];
        v35 = 1107296256;
        v36 = sub_188C577F0;
        v37 = &block_descriptor_148;
        v30 = _Block_copy(&aBlock);

        [v17 animateAlongsideTransitionInView:v28 animation:v30 completion:0];

        _Block_release(v30);

        swift_unknownObjectRelease();
        return;
      }

      swift_unknownObjectRelease();
    }

    if (a2)
    {
      goto LABEL_9;
    }

LABEL_13:
    if ([objc_opt_self() _isInAnimationBlockWithAnimationsEnabled])
    {
      [v12 layoutIfNeeded];
    }

    if (a1)
    {
      v25 = 0.0;
    }

    else
    {
      v25 = 1.0;
    }

    v26 = v11;
    [v26 setAlpha_];
    [v26 setHidden_];
    [v26 updateTraitsIfNeeded];

    if (v13)
    {
      v27 = v13;
      [v27 setAlpha_];
      [v27 setHidden_];
      [v27 updateTraitsIfNeeded];
    }

    [v10 updateLayout];
    [v33 _updateLayoutForStatusBarAndInterfaceOrientation];
    if (v8)
    {
      [v32 layoutIfNeeded];
    }

LABEL_23:
    v24 = v33;
    goto LABEL_24;
  }

  v24 = v31;
LABEL_24:
}

id sub_188F38740(char a1, void *a2, void *a3, char a4, void *a5, void *a6, void *a7, char a8)
{
  if ((a1 & 1) == 0 && [objc_opt_self() _isInAnimationBlockWithAnimationsEnabled])
  {
    [a2 layoutIfNeeded];
  }

  if (a4)
  {
    v15 = 0.0;
  }

  else
  {
    v15 = 1.0;
  }

  v16 = a3;
  [v16 setAlpha_];
  [v16 setHidden_];
  [v16 updateTraitsIfNeeded];

  if (a5)
  {
    v17 = a5;
    [v17 setAlpha_];
    [v17 setHidden_];
    [v17 updateTraitsIfNeeded];
  }

  [a6 updateLayout];
  result = [a7 _updateLayoutForStatusBarAndInterfaceOrientation];
  if (a8)
  {

    return [a2 layoutIfNeeded];
  }

  return result;
}

void sub_188F38934(char a1)
{
  v10 = [objc_msgSend(v1 host)];
  swift_unknownObjectRelease();
  if (v10)
  {
    v3 = [v10 _existingView];
    if (v3)
    {
      v4 = v3;
      [v1 setIsUpdatingContentLayout_];
      [v4 setNeedsLayout];
      if ((a1 & 1) != 0 && (v5 = objc_opt_self(), [v5 areAnimationsEnabled]))
      {
        v6 = swift_allocObject();
        *(v6 + 16) = v4;
        *(v6 + 24) = v10;
        aBlock[4] = sub_188F3ACA0;
        aBlock[5] = v6;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_188A4A8F0;
        aBlock[3] = &block_descriptor_133_0;
        v7 = _Block_copy(aBlock);
        v8 = v4;
        v9 = v10;

        [v5 animateWithDuration:6 delay:v7 usingSpringWithDamping:0 initialSpringVelocity:0.5 options:0.0 animations:1.0 completion:0.0];
        _Block_release(v7);
      }

      else
      {
        if ([objc_opt_self() _isInAnimationBlockWithAnimationsEnabled])
        {
          [v4 layoutIfNeeded];
        }

        [v10 _updateLayoutForStatusBarAndInterfaceOrientation];
      }

      [v1 setIsUpdatingContentLayout_];
    }

    else
    {
    }
  }
}

BOOL sub_188F38BEC()
{
  v1 = [v0 container];
  v2 = [v1 traitCollection];

  v3 = [v2 userInterfaceIdiom];
  if (v3)
  {
    return 0;
  }

  v5 = [v0 container];
  v6 = [v5 window];

  if (v6 && (v7 = [v6 windowScene], v6, v7))
  {
    v8 = [v7 _interfaceOrientation];

    v9 = v8;
  }

  else
  {
    v9 = 1;
  }

  return UIInterfaceOrientationIsLandscape(v9);
}

void sub_188F38D04(char a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  if ([v5 isLandscapeOnPhone])
  {
    v9 = [v5 container];
    [v9 bounds];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;

    v18 = [v5 container];
    [v18 safeAreaInsets];
    v20 = v19;
    v22 = v21;

    v23 = UIRectInset(v11, v13, v15, v17, 0.0, v22, 0.0, v20);
    v27 = v23;
    v28 = v24;
    v29 = v25;
    v30 = v26;
    if (a1)
    {
      v31 = fmin(CGRectGetWidth(*&v23), 714.0);
      v39.origin.x = v27;
      v39.origin.y = v28;
      v39.size.width = v29;
      v39.size.height = v30;
      v32 = (CGRectGetWidth(v39) - v31) * 0.5;
      v40.origin.x = v27;
      v40.origin.y = v28;
      v40.size.width = v29;
      v40.size.height = v30;
      v41 = CGRectInset(v40, v32, 0.0);
    }

    else
    {
      v33 = [v5 container];
      v34 = [v33 _shouldReverseLayoutDirection];

      v42.origin.x = v27;
      v42.origin.y = v28;
      v42.size.width = v29;
      v42.size.height = v30;
      v35 = CGRectGetWidth(v42) * 0.5 + -44.0;
      if (v34)
      {
        v36 = 8;
      }

      else
      {
        v36 = 2;
      }

      v41.origin.x = UIRectInsetEdges(v36, v27, v28, v29, v30, v35);
    }

    v44 = v41;
    v43.origin.x = a2;
    v43.origin.y = a3;
    v43.size.width = a4;
    v43.size.height = a5;
    CGRectIntersection(v43, v44);
  }
}

void sub_188F38FA4()
{
  v1 = *&v0[OBJC_IVAR____UITabBarContentLayoutManager_hostedSearchFieldConfiguration];
  if (v1)
  {
    v4 = v1;
    if ([v4 automaticallyActivatesSearch])
    {
      v2 = [objc_msgSend(v0 host)];
      swift_unknownObjectRelease();
      if (!v2)
      {
        __break(1u);
        return;
      }

      [(UITabBar *)v2 _selectCollapseTabIfPossible];

      v3 = v2;
    }

    else
    {
      v3 = v4;
    }
  }
}

void sub_188F390B8(id *a1, id a2, char *a3, _BYTE *a4, char a5, uint64_t a6)
{
  if (*a1)
  {
    v7 = *a1;
    v21 = [a2 contentView];
    sub_189173CA4(v21);
LABEL_6:

    goto LABEL_7;
  }

  v13 = [a2 contentView];
  type metadata accessor for _UITabAccessoryContainer();
  v15 = objc_allocWithZone(v14);
  v16 = sub_18917372C(v13);
  [v16 setDirectionalLayoutMargins_];
  v17 = *a1;
  *a1 = v16;
  v18 = v16;

  v19 = *&a3[OBJC_IVAR____UITabBarContentLayoutManager_accessoryContainerView];
  *&a3[OBJC_IVAR____UITabBarContentLayoutManager_accessoryContainerView] = v16;
  v21 = v18;
  sub_188F371C8(v19);

  *a4 = 1;
  if ((a5 & 1) != 0 || a6)
  {
    v20 = OBJC_IVAR____TtC5UIKit24_UITabAccessoryContainer_contentView;
    [*&v21[OBJC_IVAR____TtC5UIKit24_UITabAccessoryContainer_contentView] setAlpha_];
    [*&v21[v20] updateTraitsIfNeeded];
    v7 = [a3 container];
    [v7 layoutIfNeeded];
    goto LABEL_6;
  }

LABEL_7:
}

uint64_t sub_188F39268(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    swift_beginAccess();
    v3 = *(a2 + 16);
    if (v3)
    {
      v4 = 1.0;
LABEL_6:
      v5 = OBJC_IVAR____TtC5UIKit24_UITabAccessoryContainer_contentView;
      v6 = *&v3[OBJC_IVAR____TtC5UIKit24_UITabAccessoryContainer_contentView];
      v7 = v3;
      [v6 setAlpha_];
      [*&v3[v5] updateTraitsIfNeeded];

      return 0;
    }
  }

  else
  {
    swift_beginAccess();
    v3 = *(a2 + 16);
    if (v3)
    {
      v4 = 0.0;
      goto LABEL_6;
    }
  }

  return 1;
}

void sub_188F39334(char a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    swift_beginAccess();
    if (*(a3 + 16) == 1)
    {
      [v6 updateContentLayoutWithAnimated_];
    }
  }
}

void sub_188F393C8(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    if (!*(Strong + OBJC_IVAR____UITabBarContentLayoutManager_hostedAccessoryConfiguration))
    {
      v3 = OBJC_IVAR____UITabBarContentLayoutManager_accessoryContainerView;
      v4 = *(Strong + OBJC_IVAR____UITabBarContentLayoutManager_accessoryContainerView);
      if (v4)
      {
        [v4 removeFromSuperview];
        v5 = *&v2[v3];
      }

      else
      {
        v5 = 0;
      }

      *&v2[v3] = 0;
      sub_188F371C8(v5);

      v2 = v5;
    }
  }
}

void sub_188F3946C(void *a1, void *a2, void *a3, uint64_t a4, double a5, double a6, double a7, double a8)
{
  v16 = objc_opt_self();
  v17 = swift_allocObject();
  *(v17 + 16) = a5;
  *(v17 + 24) = a6;
  *(v17 + 32) = a7;
  *(v17 + 40) = a8;
  *(v17 + 48) = a1;
  *(v17 + 56) = a2;
  *(v17 + 64) = a3;
  v18 = *(a4 + 16);
  *(v17 + 72) = *a4;
  *(v17 + 88) = v18;
  *(v17 + 104) = *(a4 + 32);
  v19 = swift_allocObject();
  *(v19 + 16) = sub_188F3ABBC;
  *(v19 + 24) = v17;
  v24[4] = sub_188E3FE50;
  v24[5] = v19;
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 1107296256;
  v24[2] = sub_188A4A968;
  v24[3] = &block_descriptor_79_1;
  v20 = _Block_copy(v24);
  v21 = a1;
  v22 = a2;
  v23 = a3;

  [v16 _modifyAnimationsByDecomposingGeometricTypes_animations_];
  _Block_release(v20);

  LOBYTE(a3) = swift_isEscapingClosureAtFileLocation();

  if (a3)
  {
    __break(1u);
  }
}

id sub_188F39630(id a1, void *a2, void *a3, uint64_t a4, double a5, double a6, CGFloat a7, CGFloat a8)
{
  if ((*(a4 + 32) & 1) == 0)
  {
    a7 = *(a4 + 16);
    a8 = *(a4 + 24);
    a5 = *a4;
    a6 = *(a4 + 8);
  }

  [a1 bounds];
  v23.origin.x = v15;
  v23.origin.y = v16;
  v23.size.width = v17;
  v23.size.height = v18;
  v22.origin.x = 0.0;
  v22.origin.y = 0.0;
  v22.size.width = a7;
  v22.size.height = a8;
  v19 = CGRectEqualToRect(v22, v23);
  [a1 setBounds_];
  [a1 setCenter_];
  result = [a1 setDirectionalLayoutMargins_];
  if (!v19)
  {
    [a2 updateAccessoryDisplayStyle];

    return [a3 layoutIfNeeded];
  }

  return result;
}

id sub_188F39774(void *a1, void *a2, void *a3, double a4, double a5, CGFloat a6, CGFloat a7)
{
  [a1 updateAccessoryDisplayStyleIfNeeded];
  [a2 bounds];
  v22.origin.x = v14;
  v22.origin.y = v15;
  v22.size.width = v16;
  v22.size.height = v17;
  v21.origin.x = 0.0;
  v21.origin.y = 0.0;
  v21.size.width = a6;
  v21.size.height = a7;
  v18 = CGRectEqualToRect(v21, v22);
  [a2 setBounds_];
  [a2 setCenter_];
  result = [a2 setDirectionalLayoutMargins_];
  if (!v18)
  {
    [a1 updateAccessoryDisplayStyle];

    return [a3 layoutIfNeeded];
  }

  return result;
}

void sub_188F398B4(void *a1, void *a2, void *a3, uint64_t a4, double a5, double a6, double a7, double a8)
{
  v23 = 1;
  v16 = objc_opt_self();
  v17 = swift_allocObject();
  *(v17 + 16) = a5;
  *(v17 + 24) = a6;
  *(v17 + 32) = a7;
  *(v17 + 40) = a8;
  *(v17 + 48) = a1;
  *(v17 + 56) = a2;
  *(v17 + 64) = a3;
  *(v17 + 72) = 0u;
  *(v17 + 88) = 0u;
  *(v17 + 104) = v23;
  aBlock[4] = sub_188F3AD98;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_188A4A8F0;
  aBlock[3] = &block_descriptor_69_2;
  v18 = _Block_copy(aBlock);
  v19 = a1;
  v20 = a2;
  v21 = a3;

  [v16 _animateUsingSpringBehavior_tracking_animations_completion_];
  _Block_release(v18);
}

id sub_188F39A14(void *a1)
{
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (v3)
  {
    v4 = v3;
    v5 = a1;
    return v4;
  }

  v7 = [a1 childViewControllers];
  sub_188A34624(0, &qword_1ED48D5A0, off_1E70EAD90);
  v8 = sub_18A4A7548();

  if (!(v8 >> 62))
  {
    result = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_5;
    }

LABEL_14:

    return 0;
  }

  result = sub_18A4A7F68();
  if (!result)
  {
    goto LABEL_14;
  }

LABEL_5:
  if ((v8 & 0xC000000000000001) != 0)
  {
    v9 = sub_188E4A2AC(0, v8);
    goto LABEL_8;
  }

  if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v9 = *(v8 + 32);
LABEL_8:
    v10 = v9;

    v11 = [a1 childViewControllers];
    v12 = sub_18A4A7548();

    if (v12 >> 62)
    {
      v13 = sub_18A4A7F68();
    }

    else
    {
      v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v13 == 1)
    {
      v14 = [v1 _hostedSearchNavigationControllerFrom_];

      return v14;
    }

    return 0;
  }

  __break(1u);
  return result;
}

void sub_188F39CAC(char a1)
{
  v2 = v1;
  v4 = [objc_msgSend(v1 host)];
  swift_unknownObjectRelease();
  if (v4)
  {
    v5 = 1;
    if (a1 == 3)
    {
      v5 = 2;
    }

    if (a1 == 2)
    {
      v6 = 0;
    }

    else
    {
      v6 = v5;
    }

    v7 = [(UITabBar *)v4 _viewsForMorphingToTarget:v6];

    sub_188A34624(0, &qword_1ED48F680, off_1E70EAD78);
    v8 = sub_18A4A7548();

    sub_18920B994(v8);
    if ((a1 & 0xFE) != 2)
    {
      v9 = [v2 searchContainerView];
      if (v9)
      {
        v10 = v9;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA933EB0, &unk_18A64BA50);
        if (a1)
        {
          v11 = swift_allocObject();
          *(v11 + 16) = xmmword_18A64E3F0;
          v12 = *&v10[OBJC_IVAR____TtC5UIKit27_UITabHostedSearchContainer_primaryPlatterView];
          *(v11 + 32) = v12;
          v13 = *&v10[OBJC_IVAR____TtC5UIKit27_UITabHostedSearchContainer_cancelPlatterView];
          *(v11 + 40) = v13;
          v14 = v12;
        }

        else
        {
          v11 = swift_allocObject();
          *(v11 + 16) = xmmword_18A64B710;
          v13 = *&v10[OBJC_IVAR____TtC5UIKit27_UITabHostedSearchContainer_primaryPlatterView];
          *(v11 + 32) = v13;
        }

        v15 = v13;
        sub_18920B994(v11);
      }
    }
  }

  else
  {
    __break(1u);
  }
}

double sub_188F39E6C(void *a1)
{
  [objc_msgSend(a1 host)];

  swift_unknownObjectRelease();
  return result;
}

void sub_188F39EC0()
{
  v1 = *&v0[OBJC_IVAR____UITabBarContentLayoutManager_morphAnimation];
  if (v1)
  {
    *&v0[OBJC_IVAR____UITabBarContentLayoutManager_morphAnimation] = 0;

    v2 = [v0 searchContainerView];
    if (v2)
    {
      v3 = v2;
      if ([v0 isHostingSearchTextField])
      {
        v4 = v0[OBJC_IVAR____UITabBarContentLayoutManager_currentDisplayState];
        if ((v4 & 0xFE) == 2)
        {
          [*&v3[OBJC_IVAR____TtC5UIKit27_UITabHostedSearchContainer_primaryPlatterView] setHidden_];
          [*&v3[OBJC_IVAR____TtC5UIKit27_UITabHostedSearchContainer_cancelPlatterView] setHidden_];
        }

        else
        {
          [*&v3[OBJC_IVAR____TtC5UIKit27_UITabHostedSearchContainer_primaryPlatterView] setHidden_];
          [*&v3[OBJC_IVAR____TtC5UIKit27_UITabHostedSearchContainer_cancelPlatterView] setHidden_];
        }
      }

      else
      {
        [v0 _removeHostedSearchViewsIfNeeded];
      }
    }

    v5 = [objc_msgSend(v0 host)];
    swift_unknownObjectRelease();
    if (v5)
    {
      [(UITabBar *)v5 _morphAnimationsForHostedElementsDidEnd];
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_188F3A094(char a1)
{
  v3 = sub_18A4A6E18();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_18A4A6E58();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_188F37598([v1 showsCancelAction]);
  if (a1)
  {
    sub_188A34624(0, &qword_1ED490540, 0x1E69E9610);
    v12 = sub_18A4A7A68();
    v13 = swift_allocObject();
    *(v13 + 16) = v1;
    aBlock[4] = sub_188F3AB2C;
    aBlock[5] = v13;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_188A4A8F0;
    aBlock[3] = &block_descriptor_33_1;
    v14 = _Block_copy(aBlock);
    v15 = v1;

    sub_18A4A6E38();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_188D7609C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA935AC0, &qword_18A64F960);
    sub_188BA3728();
    sub_18A4A7EB8();
    MEMORY[0x18CFE29D0](0, v11, v6, v14);
    _Block_release(v14);

    (*(v4 + 8))(v6, v3);
    (*(v8 + 8))(v11, v7);
  }
}

void sub_188F3A344(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____UITabBarContentLayoutManager_hostedSearchFieldConfiguration);
  if (v1)
  {
    v5 = v1;
    v2 = [v5 automaticallyActivatesSearch];
    v3 = v5;
    if (v2)
    {
      v4 = [v5 searchBarView];
      if (([v4 isFirstResponder] & 1) == 0)
      {
        [v4 becomeFirstResponder];
      }

      v3 = v5;
    }
  }
}

void sub_188F3A440()
{
  v1 = [v0 searchContainerView];
  if (v1)
  {
    v2 = OBJC_IVAR____UITabBarContentLayoutManager_hostedSearchFieldConfiguration;
    v3 = *&v0[OBJC_IVAR____UITabBarContentLayoutManager_hostedSearchFieldConfiguration];
    if (v3)
    {
      v7 = v1;
      v4 = v3;
      v5 = [v4 searchBarView];
      [v5 removeFromSuperview];
      [v7 removeFromSuperview];
      sub_188F36DD4(0);
      v6 = *&v0[v2];
      *&v0[v2] = 0;

      sub_188F36F38();
      [v0 setSearchContainerView_];

      v1 = v5;
    }
  }
}

void sub_188F3A588()
{
  v1 = [objc_opt_self() defaultCenter];
  v2 = [v0 container];
  v5 = [v2 _screen];

  if ([v0 isHostingSearchTextField])
  {
    v3 = v5;
    [v1 addObserver:v0 selector:sel__updateKeyboardInfo_ name:@"UIKeyboardPrivateWillShowNotification" object:v3];
    [v1 addObserver:v0 selector:sel__updateKeyboardInfo_ name:@"UIKeyboardPrivateWillHideNotification" object:v3];
    [v1 addObserver:v0 selector:sel__updateKeyboardInfo_ name:@"UIKeyboardPrivateDidChangeFrameNotification" object:v3];
  }

  else
  {
    v4 = v5;
    [v1 removeObserver:v0 name:@"UIKeyboardPrivateWillShowNotification" object:v4];
    [v1 removeObserver:v0 name:@"UIKeyboardPrivateWillHideNotification" object:v4];
    [v1 removeObserver:v0 name:@"UIKeyboardPrivateDidChangeFrameNotification" object:v4];
  }
}

void sub_188F3A794()
{
  v1 = v0;
  v2 = [v0 container];
  v3 = [v2 window];

  if (v3)
  {
    v4 = [v3 windowScene];

    if (v4)
    {
      v10 = [v4 keyboardSceneDelegate];

      if (v10)
      {
        v5 = [v0 container];
        if (sub_18A4A2448())
        {
          v6 = sub_18A4A7088();
        }

        else
        {
          v6 = 0;
        }

        [v10 verticalOverlapForView:v5 usingKeyboardInfo:v6];
        v8 = v7;

        [v1 keyboardAdjustment];
        if (v9 != v8)
        {
          [v1 setKeyboardAdjustment_];
          sub_188F37598(v1[OBJC_IVAR____UITabBarContentLayoutManager_currentDisplayState]);
        }
      }
    }
  }
}

id _UITabBarContentLayoutManager.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

uint64_t objectdestroy_45Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 105, 7);
}

uint64_t sub_188F3AC34()
{
  v1 = *(v0 + 32);
  (*(v0 + 16))();
  return v1(0);
}

id sub_188F3ACA0()
{
  v1 = *(v0 + 24);
  [*(v0 + 16) layoutIfNeeded];

  return [v1 _updateLayoutForStatusBarAndInterfaceOrientation];
}

uint64_t sub_188F3ADDC()
{
  result = sub_188F3AE00();
  byte_1EA9373B0 = result & 1;
  return result;
}

id sub_188F3AE00()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = sub_18A4A7258();
  v2 = [v0 objectForKey_];

  if (v2)
  {
    sub_18A4A7DE8();
    swift_unknownObjectRelease();
    sub_188A55538(&v5, v6);
    sub_188A553EC(v6);
    v3 = sub_18A4A7258();
    v2 = [v0 BOOLForKey_];
  }

  else
  {

    memset(v6, 0, sizeof(v6));
    sub_188A553EC(v6);
  }

  return v2;
}

uint64_t static UIHostingViewBase.UpdateCycle.useSetNeedsLayout.getter()
{
  if (qword_1EA931D10 != -1)
  {
    swift_once();
  }

  return byte_1EA9373B0;
}

void static UIHostingViewBase.UpdateCycle.addPreCommitObserverOrAsyncMain(_:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_18A4A6E18();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_18A4A6E58();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (_UIUpdateCycleEnabled())
  {

    _s5UIKit17UIHostingViewBaseC11UpdateCycleO20addPreCommitObserveryyyycFZ_0(a1, a2);
  }

  else
  {
    sub_188A5E418();
    v12 = sub_18A4A7A68();
    aBlock[4] = a1;
    aBlock[5] = a2;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_188A4A8F0;
    aBlock[3] = &block_descriptor_33;
    v13 = _Block_copy(aBlock);

    sub_18A4A6E38();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_188D7609C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA935AC0, &qword_18A64F960);
    sub_188BA3728();
    sub_18A4A7EB8();
    MEMORY[0x18CFE29D0](0, v11, v7, v13);
    _Block_release(v13);

    (*(v5 + 8))(v7, v4);
    (*(v9 + 8))(v11, v8);
  }
}

void sub_188F3B204(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = a1 + 40;
    do
    {
      v3 = *(v2 - 8);

      v3(v4);

      v2 += 16;
      --v1;
    }

    while (v1);
  }
}

uint64_t sub_188F3B27C()
{
  swift_getKeyPath();
  sub_188B0D714();
  sub_18A4A2C08();

  return *(v0 + 16);
}

void sub_188F3B2EC(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_188B0D714();
  sub_18A4A2C08();

  *a2 = *(v3 + 16);
}

uint64_t sub_188F3B364(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_18A4A76A8();
  *(v4 + 24) = sub_18A4A7698();
  v6 = sub_18A4A7678();

  return MEMORY[0x1EEE6DFA0](sub_188F3B3FC, v6, v5);
}

uint64_t sub_188F3B3FC()
{

  v1 = [objc_opt_self() processInfo];
  v2 = [v1 isLowPowerModeEnabled];

  sub_188B0DA90(v2);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_188F3B4A4(uint64_t a1, uint64_t a2)
{
  v3 = sub_18A4A2458();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 32);
  sub_18A4A2418();

  v7(v6);

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_188F3B598()
{
  swift_getKeyPath();
  sub_188B0D714();
  sub_18A4A2C08();

  return *(v0 + 17);
}

void sub_188F3B608(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_188B0D714();
  sub_18A4A2C08();

  *a2 = *(v3 + 17);
}

uint64_t sub_188F3B680(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_18A4A76A8();
  *(v4 + 24) = sub_18A4A7698();
  v6 = sub_18A4A7678();

  return MEMORY[0x1EEE6DFA0](sub_188F3B718, v6, v5);
}

uint64_t sub_188F3B718()
{

  IsReduceTransparencyEnabled = UIAccessibilityIsReduceTransparencyEnabled();
  sub_188B0C964(IsReduceTransparencyEnabled);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_188F3B780()
{
  swift_getKeyPath();
  sub_188B0D714();
  sub_18A4A2C08();

  return *(v0 + 18);
}

void sub_188F3B7F0(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_188B0D714();
  sub_18A4A2C08();

  *a2 = *(v3 + 18);
}

uint64_t sub_188F3B868(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_18A4A76A8();
  *(v4 + 24) = sub_18A4A7698();
  v6 = sub_18A4A7678();

  return MEMORY[0x1EEE6DFA0](sub_188F3B900, v6, v5);
}

uint64_t sub_188F3B900()
{

  IsReduceMotionEnabled = UIAccessibilityIsReduceMotionEnabled();
  sub_188B0CC20(IsReduceMotionEnabled);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_188F3B968()
{
  swift_getKeyPath();
  sub_188B0D714();
  sub_18A4A2C08();

  return *(v0 + 19);
}

void sub_188F3B9D8(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_188B0D714();
  sub_18A4A2C08();

  *a2 = *(v3 + 19);
}

void sub_188F3BA50(int a1)
{
  v2 = *(v1 + 19);
  if (v2 != 2)
  {
    if (a1 != 2 && ((v2 ^ a1) & 1) == 0)
    {
      goto LABEL_7;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_188B0D714();
    sub_18A4A2BF8();

    return;
  }

  if (a1 != 2)
  {
    goto LABEL_6;
  }

LABEL_7:
  *(v1 + 19) = a1;
}

uint64_t sub_188F3BB54()
{
  swift_getKeyPath();
  v6[0] = v0;
  sub_188B0D714();
  sub_18A4A2C08();

  LODWORD(v1) = *(v0 + 19);
  if (v1 == 2)
  {
    v1 = [objc_opt_self() defaultCenter];
    v6[4] = sub_188F3C7B4;
    v6[5] = v0;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 1107296256;
    v6[2] = sub_188F3B4A4;
    v6[3] = &block_descriptor_44_0;
    v2 = _Block_copy(v6);

    v3 = [v1 addObserverForName:@"UIAccessibilityButtonShapesEnabledStatusDidChangeNotification" object:0 queue:0 usingBlock:v2];
    _Block_release(v2);
    swift_unknownObjectRelease();

    v4 = UIAccessibilityButtonShapesEnabled();
    LOBYTE(v1) = v4;
    sub_188F3BA50(v4);
  }

  return v1 & 1;
}

uint64_t sub_188F3BCD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_18A4A76A8();
  *(v4 + 24) = sub_18A4A7698();
  v6 = sub_18A4A7678();

  return MEMORY[0x1EEE6DFA0](sub_188F3BD68, v6, v5);
}

uint64_t sub_188F3BD68()
{

  v1 = UIAccessibilityButtonShapesEnabled();
  sub_188F3BA50(v1);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_188F3BDD0()
{
  swift_getKeyPath();
  sub_188B0D714();
  sub_18A4A2C08();

  return *(v0 + 24);
}

void sub_188F3BE44(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_188B0D714();
  sub_18A4A2C08();

  v4 = *(v3 + 32);
  *a2 = *(v3 + 24);
  *(a2 + 8) = v4;
}

double sub_188F3BEC4(uint64_t a1, char a2)
{
  if ((*(v2 + 32) & 1) == 0)
  {
    if ((a2 & 1) != 0 || *(v2 + 24) != a1)
    {
      goto LABEL_7;
    }

LABEL_6:
    *(v2 + 24) = a1;
    *(v2 + 32) = a2 & 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_6;
  }

LABEL_7:
  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  sub_188B0D714();
  sub_18A4A2BF8();

  return result;
}

uint64_t sub_188F3BFC8()
{
  v1 = v0;
  swift_getKeyPath();
  aBlock[0] = v0;
  sub_188B0D714();
  sub_18A4A2C08();

  if (*(v0 + 32) != 1)
  {
    return *(v0 + 24);
  }

  v2 = [objc_opt_self() defaultCenter];
  aBlock[4] = sub_188F3C6AC;
  aBlock[5] = v1;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_188F3B4A4;
  aBlock[3] = &block_descriptor_34;
  v3 = _Block_copy(aBlock);

  v4 = [v2 addObserverForName:@"UIViewGlassLegibilityDidChangeNotification" object:0 queue:0 usingBlock:v3];
  _Block_release(v3);
  swift_unknownObjectRelease();

  LegibilitySetting = UIViewGlassGetLegibilitySetting();
  v6 = LegibilitySetting;
  if ((*(v1 + 32) & 1) != 0 || *(v1 + 24) != LegibilitySetting)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    aBlock[0] = v1;
    sub_18A4A2BF8();
  }

  else
  {
    *(v1 + 32) = 0;
  }

  return v6;
}

double sub_188F3C1F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934728, &unk_18A64C610);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v14 - v7;
  v9 = sub_18A4A76C8();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  sub_18A4A76A8();

  v10 = sub_18A4A7698();
  v11 = swift_allocObject();
  v12 = MEMORY[0x1E69E85E0];
  v11[2] = v10;
  v11[3] = v12;
  v11[4] = a2;
  sub_188F18724(0, 0, v8, a4, v11);

  return result;
}

uint64_t sub_188F3C310(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 64) = a4;
  sub_18A4A76A8();
  *(v4 + 72) = sub_18A4A7698();
  v6 = sub_18A4A7678();

  return MEMORY[0x1EEE6DFA0](sub_188F3C3A8, v6, v5);
}

uint64_t sub_188F3C3A8()
{
  v1 = v0[8];

  v2 = objc_opt_self();
  swift_unownedRetainStrong();
  swift_unownedRetain();

  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  v0[6] = sub_188F3C7AC;
  v0[7] = v3;
  v0[2] = MEMORY[0x1E69E9820];
  v0[3] = 1107296256;
  v0[4] = sub_188A4A8F0;
  v0[5] = &block_descriptor_35_0;
  v4 = _Block_copy(v0 + 2);

  [v2 animateWithDuration:0x10000000 delay:v4 options:0 animations:0.2 completion:0.0];
  _Block_release(v4);
  v5 = v0[1];

  return v5();
}

double sub_188F3C4E4(uint64_t a1, __n128 a2)
{
  swift_unownedRetainStrong();
  LegibilitySetting = UIViewGlassGetLegibilitySetting();
  if ((*(a1 + 32) & 1) != 0 || *(a1 + 24) != LegibilitySetting)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_188B0D714();
    sub_18A4A2BF8();
  }

  else
  {
    *(a1 + 32) = 0;
  }

  return result;
}

uint64_t sub_188F3C608()
{
  v1 = OBJC_IVAR____TtC5UIKit14_UIGlobalState___observationRegistrar;
  v2 = sub_18A4A2C48();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

void sub_188F3C6E4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  *(v1 + 24) = *(v0 + 24);
  *(v1 + 32) = v2;
}

uint64_t sub_188F3C6F8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_188C48500;

  return sub_188F3C310(a1, v4, v5, v6);
}

uint64_t sub_188F3C7EC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_188C482B4;

  return sub_188F3BCD0(a1, v4, v5, v6);
}

uint64_t sub_188F3C8E8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_188C48500;

  return sub_188F3B868(a1, v4, v5, v6);
}

uint64_t sub_188F3C9D4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_188C48500;

  return sub_188F3B680(a1, v4, v5, v6);
}

uint64_t sub_188F3CAC0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_188C48500;

  return sub_188F3B364(a1, v4, v5, v6);
}

uint64_t sub_188F3CBA4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  v7 = *(v4 + 64);
  if (v5 <= 0xFE)
  {
    v8 = 254;
  }

  else
  {
    v8 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v9 = v6 | 7;
  v10 = (v6 | 7) + 57;
  v11 = ((((v7 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 9;
  v12 = a2 - v8;
  if (a2 <= v8)
  {
    goto LABEL_25;
  }

  v13 = ((v7 + v6 + ((v7 + v6 + ((v7 + v6 + ((v7 + v6 + ((v6 + ((((v6 + 48) & ~v9) + (v10 & ~v9) + v11 + 10) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v6)) & ~v6)) & ~v6)) & ~v6)) & ~v6) + v7;
  v14 = 8 * v13;
  if (v13 > 3)
  {
    goto LABEL_7;
  }

  v16 = ((v12 + ~(-1 << v14)) >> v14) + 1;
  if (HIWORD(v16))
  {
    v15 = *(a1 + v13);
    if (v15)
    {
      goto LABEL_14;
    }
  }

  else
  {
    if (v16 <= 0xFF)
    {
      if (v16 < 2)
      {
        goto LABEL_25;
      }

LABEL_7:
      v15 = *(a1 + v13);
      if (!*(a1 + v13))
      {
        goto LABEL_25;
      }

LABEL_14:
      v17 = (v15 - 1) << v14;
      if (v13 > 3)
      {
        v17 = 0;
      }

      if (v13)
      {
        if (v13 > 3)
        {
          LODWORD(v13) = 4;
        }

        if (v13 > 2)
        {
          if (v13 == 3)
          {
            LODWORD(v13) = *a1 | (*(a1 + 2) << 16);
          }

          else
          {
            LODWORD(v13) = *a1;
          }
        }

        else if (v13 == 1)
        {
          LODWORD(v13) = *a1;
        }

        else
        {
          LODWORD(v13) = *a1;
        }
      }

      return v8 + (v13 | v17) + 1;
    }

    v15 = *(a1 + v13);
    if (*(a1 + v13))
    {
      goto LABEL_14;
    }
  }

LABEL_25:
  v18 = (v10 + ((a1 + v9 + 48) & ~v9)) & ~v9;
  if (v5 >= 0xFE)
  {
    return (*(v4 + 48))(v18);
  }

  v20 = *(v18 + v11);
  if (v20 < 2)
  {
    return 0;
  }

  return ((v20 + 2147483646) & 0x7FFFFFFF) + 1;
}

void sub_188F3CD9C(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0xFC)
  {
    v8 = 252;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  if (v7 <= 0xFE)
  {
    v9 = 254;
  }

  else
  {
    v9 = *(v6 + 84);
  }

  v10 = *(v6 + 80);
  v11 = (v10 | 7) + 57;
  v12 = *(*(*(a4 + 16) - 8) + 64);
  v13 = ((((v12 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 9;
  v14 = ((v12 + v10 + ((v12 + v10 + ((v12 + v10 + ((v12 + v10 + ((v10 + ((((v10 + 48) & ~(v10 | 7)) + (v11 & ~(v10 | 7)) + v13 + 10) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v10)) & ~v10)) & ~v10)) & ~v10)) & ~v10) + v12;
  v15 = a3 >= v9;
  v16 = a3 - v9;
  if (v16 != 0 && v15)
  {
    if (v14 <= 3)
    {
      v20 = ((v16 + ~(-1 << (8 * v14))) >> (8 * v14)) + 1;
      if (HIWORD(v20))
      {
        v17 = 4;
      }

      else
      {
        if (v20 < 0x100)
        {
          v21 = 1;
        }

        else
        {
          v21 = 2;
        }

        if (v20 >= 2)
        {
          v17 = v21;
        }

        else
        {
          v17 = 0;
        }
      }
    }

    else
    {
      v17 = 1;
    }
  }

  else
  {
    v17 = 0;
  }

  if (v9 < a2)
  {
    v18 = ~v9 + a2;
    if (v14 < 4)
    {
      v19 = (v18 >> (8 * v14)) + 1;
      if (v14)
      {
        v22 = v18 & ~(-1 << (8 * v14));
        bzero(a1, v14);
        if (v14 != 3)
        {
          if (v14 == 2)
          {
            *a1 = v22;
            if (v17 > 1)
            {
LABEL_50:
              if (v17 == 2)
              {
                *&a1[v14] = v19;
              }

              else
              {
                *&a1[v14] = v19;
              }

              return;
            }
          }

          else
          {
            *a1 = v18;
            if (v17 > 1)
            {
              goto LABEL_50;
            }
          }

          goto LABEL_47;
        }

        *a1 = v22;
        a1[2] = BYTE2(v22);
      }

      if (v17 > 1)
      {
        goto LABEL_50;
      }
    }

    else
    {
      bzero(a1, v14);
      *a1 = v18;
      v19 = 1;
      if (v17 > 1)
      {
        goto LABEL_50;
      }
    }

LABEL_47:
    if (v17)
    {
      a1[v14] = v19;
    }

    return;
  }

  if (v17 > 1)
  {
    if (v17 != 2)
    {
      *&a1[v14] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_34;
    }

    *&a1[v14] = 0;
  }

  else if (v17)
  {
    a1[v14] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_34;
  }

  if (!a2)
  {
    return;
  }

LABEL_34:
  v23 = ((v11 + (&a1[(v10 | 7) + 48] & ~(v10 | 7))) & ~(v10 | 7));
  if (v7 < 0xFE)
  {
    v23[v13] = a2 + 1;
  }

  else if (v8 >= a2)
  {
    v25 = *(v6 + 56);

    v25(v23);
  }

  else
  {
    v24 = ~v8 + a2;
    bzero(v23, v13);
    if (v13 <= 3)
    {
      *v23 = v24;
    }

    else
    {
      *v23 = v24;
    }
  }
}

uint64_t sub_188F3D090(unint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (v5 <= 0xFE)
  {
    v6 = 254;
  }

  else
  {
    v6 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v7 = *(v4 + 80) & 0xF8;
  v8 = v7 | 7;
  v9 = ((((*(*(*(a3 + 16) - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 9;
  v10 = a2 - v6;
  if (a2 <= v6)
  {
    goto LABEL_18;
  }

  v11 = v9 + ((v7 + 64) & ~v8) + 3;
  v12 = v11 & 0xFFFFFFFC;
  if ((v11 & 0xFFFFFFFC) != 0)
  {
    goto LABEL_7;
  }

  v14 = v10 + 1;
  if (HIWORD(v14))
  {
    v13 = *(a1 + v11);
    if (v13)
    {
      goto LABEL_14;
    }
  }

  else
  {
    if (v14 <= 0xFF)
    {
      if (v14 < 2)
      {
        goto LABEL_18;
      }

LABEL_7:
      v13 = *(a1 + v11);
      if (!v13)
      {
        goto LABEL_18;
      }

LABEL_14:
      v15 = v13 - 1;
      if (v12)
      {
        v15 = 0;
        LODWORD(v12) = *a1;
      }

      return v6 + (v12 | v15) + 1;
    }

    v13 = *(a1 + v11);
    if (v13)
    {
      goto LABEL_14;
    }
  }

LABEL_18:
  v17 = ((a1 & 0xFFFFFFFFFFFFFFF8) + v8 + 57) & ~v8;
  if (v5 >= 0xFE)
  {
    return (*(v4 + 48))(v17);
  }

  v18 = *(v9 + v17);
  if (v18 < 2)
  {
    return 0;
  }

  return ((v18 + 2147483646) & 0x7FFFFFFF) + 1;
}

void sub_188F3D1E0(unint64_t a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0xFC)
  {
    v7 = 252;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  if (v6 <= 0xFE)
  {
    v8 = 254;
  }

  else
  {
    v8 = *(v5 + 84);
  }

  v9 = *(v5 + 80) & 0xF8;
  v10 = v9 | 7;
  v11 = ((((*(*(*(a4 + 16) - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 9;
  v12 = v11 + ((v9 + 64) & ~(v9 | 7)) + 3;
  v13 = a3 - v8 + 1;
  v14 = HIWORD(v13);
  if (v13 < 0x100)
  {
    v15 = 1;
  }

  else
  {
    v15 = 2;
  }

  if (v13 >= 2)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  if (v14)
  {
    v16 = 4;
  }

  if (v11 + ((v9 + 64) & ~v10) == -3)
  {
    v17 = v16;
  }

  else
  {
    v17 = 1;
  }

  if (a3 > v8)
  {
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  v19 = a2 - v8;
  if (a2 > v8)
  {
    if (v11 + ((v9 + 64) & ~v10) != -3)
    {
      v20 = ~v8 + a2;
      v21 = a1;
      bzero(a1, v12);
      a1 = v21;
      *v21 = v20;
      v19 = 1;
    }

    if (v18 > 1)
    {
      if (v18 == 2)
      {
        *(a1 + v12) = v19;
      }

      else
      {
        *(a1 + v12) = v19;
      }
    }

    else if (v18)
    {
      *(a1 + v12) = v19;
    }

    return;
  }

  if (v18 > 1)
  {
    if (v18 != 2)
    {
      *(a1 + v12) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_36;
    }

    *(a1 + v12) = 0;
  }

  else if (v18)
  {
    *(a1 + v12) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_36;
  }

  if (!a2)
  {
    return;
  }

LABEL_36:
  v22 = (((a1 & 0xFFFFFFFFFFFFFFF8) + v10 + 57) & ~v10);
  if (v6 < 0xFE)
  {
    v22[v11] = a2 + 1;
  }

  else if (v7 >= a2)
  {
    v24 = *(v5 + 56);
    v25 = ((a1 & 0xFFFFFFFFFFFFFFF8) + v10 + 57) & ~v10;

    v24(v25);
  }

  else
  {
    v23 = ~v7 + a2;
    bzero((((a1 & 0xFFFFFFFFFFFFFFF8) + v10 + 57) & ~v10), v11);
    if (v11 <= 3)
    {
      *v22 = v23;
    }

    else
    {
      *v22 = v23;
    }
  }
}

uint64_t sub_188F3D3EC(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0xFC)
  {
    v7 = 252;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 9;
  v9 = (a2 - v7 + 255) >> 8;
  if (v8 <= 3)
  {
    v10 = v9 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v12 > 1)
  {
    if (v12 == 2)
    {
      v13 = *&a1[v8];
      if (*&a1[v8])
      {
        goto LABEL_24;
      }
    }

    else
    {
      v13 = *&a1[v8];
      if (v13)
      {
        goto LABEL_24;
      }
    }

LABEL_28:
    if (v5 >= 0xFC)
    {
      return (*(v4 + 48))(a1);
    }

    v17 = *((((&a1[v6 + 7] & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8);
    if (v17 >= 4)
    {
      return v17 - 3;
    }

    else
    {
      return 0;
    }
  }

  if (!v12)
  {
    goto LABEL_28;
  }

  v13 = a1[v8];
  if (!a1[v8])
  {
    goto LABEL_28;
  }

LABEL_24:
  v15 = (v13 - 1) << (8 * v8);
  if (v8 <= 3)
  {
    v16 = *a1;
  }

  else
  {
    v15 = 0;
    v16 = *a1;
  }

  return v7 + (v16 | v15) + 1;
}

void sub_188F3D548(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0xFC)
  {
    v8 = 252;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(*(*(a4 + 16) - 8) + 64);
  v10 = ((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v8 >= a3)
  {
    v14 = 0;
    if (v8 >= a2)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v11 = (a3 - v8 + 255) >> 8;
    if (v10 <= 3)
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

    if (v8 >= a2)
    {
LABEL_17:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *&a1[v10] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_32;
        }

        *&a1[v10] = 0;
      }

      else if (v14)
      {
        a1[v10] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_32;
      }

      if (!a2)
      {
        return;
      }

LABEL_32:
      if (v7 < 0xFC)
      {
        *((((&a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8) = a2 + 3;
      }

      else
      {
        v17 = *(v6 + 56);

        v17();
      }

      return;
    }
  }

  v15 = ~v8 + a2;
  bzero(a1, ((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 9);
  if (v10 <= 3)
  {
    v16 = (v15 >> 8) + 1;
  }

  else
  {
    v16 = 1;
  }

  if (v10 <= 3)
  {
    *a1 = v15;
    if (v14 > 1)
    {
LABEL_27:
      if (v14 == 2)
      {
        *&a1[v10] = v16;
      }

      else
      {
        *&a1[v10] = v16;
      }

      return;
    }
  }

  else
  {
    *a1 = v15;
    if (v14 > 1)
    {
      goto LABEL_27;
    }
  }

  if (v14)
  {
    a1[v10] = v16;
  }
}

uint64_t sub_188F3D738@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v29 = a2;
  v30 = a3;
  v31 = a1;
  v9 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v12 + 8);
  v15 = type metadata accessor for SpringAnimationParameters(0, v14, v13, v14);
  v16 = (v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v28 - v17;
  *(a6 + 1) = 0u;
  *(a6 + 2) = 0u;
  *a6 = 0u;
  sub_18A4A8408();
  (*(v9 + 32))(v18, v11, a4);
  *&v18[v16[11]] = 0;
  *&v18[v16[12]] = 0;
  v18[v16[13]] = 0;
  v20 = _s6SpringVMa(0, a4, a5, v19);
  sub_188F3DB28(0, 0, v18, 0, 0, 0, a4, v13, &a6[v20[9]], 0.0, 0.0, 0.0, 0.0, 0.0, 0.0);
  *&a6[v20[10]] = 0x3FF0000000000000;
  v21 = *(v9 + 16);
  v22 = v29;
  v21(&a6[v20[13]], v29, a4);
  v23 = v30;
  v21(&a6[v20[11]], v30, a4);
  sub_18A4A8408();
  sub_18A4A8408();
  v21(&a6[v20[14]], v22, a4);
  v25 = sub_188F3DC0C(v31, 1, v20, v24);
  v26 = *(v9 + 8);
  v26(v23, a4, v25);
  return (v26)(v22, a4);
}

uint64_t sub_188F3D9DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v12 = *(*(a3 - 8) + 32);
  v12(a3 - 8, a5, a1);
  v10 = a5 + *(type metadata accessor for SpringAnimationState(0, a3, a4, v9) + 36);

  return v12(v10, a2, a3);
}

int *sub_188F3DA8C@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>, double a7@<D1>)
{
  (*(*(a3 - 8) + 32))(a5, a1);
  result = type metadata accessor for SpringAnimationParameters(0, a3, a4, v13);
  *(a5 + result[9]) = a6;
  *(a5 + result[10]) = a7;
  *(a5 + result[11]) = a2;
  return result;
}

uint64_t sub_188F3DB28@<X0>(char a1@<W0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>, double a12@<D2>, double a13@<D3>, double a14@<D4>, double a15@<D5>)
{
  v19 = a4;
  *a9 = a10;
  *(a9 + 8) = a11;
  *(a9 + 16) = a12;
  *(a9 + 24) = a1;
  *(a9 + 32) = a13;
  *(a9 + 40) = a14;
  *(a9 + 48) = a15;
  *(a9 + 56) = a2;
  v22 = type metadata accessor for CompoundSpringAnimationParameters(0, a7, a8, a4);
  v23 = v22[10];
  v25 = type metadata accessor for SpringAnimationParameters(0, a7, a8, v24);
  result = (*(*(v25 - 8) + 32))(a9 + v23, a3, v25);
  *(a9 + v22[11]) = v19;
  *(a9 + v22[12]) = a5;
  *(a9 + v22[13]) = a6;
  return result;
}

double sub_188F3DC0C(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a1 + 40);
  v8 = 0.0;
  v9 = 0.0;
  v10 = 0.0;
  if (v7 < 0)
  {
    v9 = *(a1 + 64);
    if (*(a1 + 24) & a2)
    {
      v8 = 0.0;
    }

    else
    {
      v8 = *(a1 + 48);
    }

    if (v7 & a2)
    {
      v10 = 0.0;
    }

    else
    {
      v10 = *(a1 + 56);
    }
  }

  v11 = 6.28318531 / v8 * (6.28318531 / v8);
  v12 = sqrt(v11);
  v13 = (v4 + *(a3 + 36));
  v13[1] = v11;
  v13[2] = v12 + v12;
  v14 = *(a3 + 16);
  v15 = *(*(a3 + 24) + 8);
  v16 = type metadata accessor for CompoundSpringAnimationParameters(0, v14, v15, a4);
  *(v13 + v16[11]) = v8 == 0.0;
  v17 = 6.28318531 / v10 * (6.28318531 / v10);
  v18 = sqrt(v17);
  v13[5] = v17;
  v13[6] = v18 + v18;
  *(v13 + v16[12]) = v10 == 0.0;
  v19 = 6.28318531 / v9 * (6.28318531 / v9);
  v20 = sqrt(v19);
  v21 = v20 + v20;
  v22 = v13 + v16[10];
  v24 = type metadata accessor for SpringAnimationParameters(0, v14, v15, v23);
  *&v22[*(v24 + 36)] = v19;
  *&v22[*(v24 + 40)] = v21;
  *(v13 + v16[13]) = v9 == 0.0;
  v25 = *a1;
  v26 = *(a1 + 8);
  if ((v7 & 0x8000000000000000) == 0)
  {
    v27 = *a1;
    *(v4 + 32) = v25;
    v28 = 40;
    v29 = v26;
    goto LABEL_19;
  }

  v30 = *(a1 + 16);
  v31 = *(a1 + 32);
  v32 = *(a1 + 24);
  v27 = 6.28318531 / v25 * (6.28318531 / v25);
  v33 = sqrt(v27);
  v29 = (v33 + v33) * v26;
  *(v4 + 32) = v27;
  *(v4 + 40) = v29;
  *v13 = v26;
  v13[4] = v25;
  if (v32)
  {
    if (v7)
    {
      goto LABEL_12;
    }
  }

  else
  {
    *v4 = v30;
    if (v7)
    {
LABEL_12:
      if (v8 != 0.0)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }
  }

  v28 = 16;
  v26 = v31;
LABEL_19:
  *(v4 + v28) = v26;
  if (v8 == 0.0)
  {
LABEL_13:
    *v4 = *v13;
    *(v4 + 8) = 0;
  }

LABEL_14:
  if (v10 == 0.0)
  {
    *(v4 + 16) = v13[4];
    *(v4 + 24) = 0;
  }

  result = v29 / v27;
  *(v4 + *(a3 + 40)) = result;
  return result;
}

void sub_188F3DE0C(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t *a3@<X8>, double a4@<D0>)
{
  v8 = *(a1 + 16);
  v9 = *(*(a1 + 24) + 8);
  v356 = type metadata accessor for SpringAnimationParameters(0, v8, v9, a2);
  v349 = *(v356 - 8);
  MEMORY[0x1EEE9AC00](v356);
  v352 = v321 - v10;
  v355 = type metadata accessor for SpringAnimationState(0, v8, v9, v11);
  MEMORY[0x1EEE9AC00](v355);
  v13 = v321 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v321 - v15;
  v348 = type metadata accessor for CompoundSpringIntegratorState(0, v8, v9, v17);
  MEMORY[0x1EEE9AC00](v348);
  MEMORY[0x1EEE9AC00](v18);
  v20 = v321 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = v321 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v350 = v321 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v28 = v321 - v27;
  MEMORY[0x1EEE9AC00](v29);
  v347 = v321 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v351 = v321 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v353 = v321 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v354 = v321 - v36;
  MEMORY[0x1EEE9AC00](v37);
  MEMORY[0x1EEE9AC00](v38);
  MEMORY[0x1EEE9AC00](v39);
  MEMORY[0x1EEE9AC00](v40);
  MEMORY[0x1EEE9AC00](v41);
  MEMORY[0x1EEE9AC00](v42);
  MEMORY[0x1EEE9AC00](v43);
  MEMORY[0x1EEE9AC00](v44);
  v57.n128_f64[0] = MEMORY[0x1EEE9AC00](v45);
  v58 = v321 - v53;
  if (v8 == &type metadata for UIAnimatableColorMatrix)
  {

    sub_188CB5214(v58);
    return;
  }

  v357 = a3;
  if (v8 == &type metadata for UIAnimatableSize)
  {
    sub_188AB3ADC(a4);
LABEL_25:
    v69 = v357;
    *v357 = v67;
    v69[1] = v68;
    return;
  }

  if (v8 == &type metadata for UIAnimatableColorArray)
  {
    v57.n128_f64[0] = a4;
    v70 = sub_188EE299C(v57);
LABEL_31:
    *v357 = v70;
    return;
  }

  if (v8 == &type metadata for UIAnimatableCornerRadii)
  {
    v71 = v357;

    sub_188EE58A4(v71, a4);
    return;
  }

  if (v8 == &type metadata for UIAnimatableVector)
  {
    v57.n128_f64[0] = a4;
    v70 = sub_188D7C028(v57);
    goto LABEL_31;
  }

  if (v8 == &type metadata for UIAnimatableMeshTransform)
  {
    sub_188EE6890(&v358, a4);
    v72 = *v359;
    v73 = v357;
    *v357 = v358;
    *(v73 + 1) = v72;
    *(v73 + 29) = *&v359[13];
    return;
  }

  if (v8 == &type metadata for UIAnimatableFloat)
  {
    goto LABEL_33;
  }

  if (v8 == &type metadata for UIAnimatableNormalizedPoint)
  {
LABEL_34:
    sub_188F0E0B8(a4);
    goto LABEL_25;
  }

  if (v8 == &type metadata for UIAnimatableColor)
  {
    v75 = sub_188CB4190(a4);
LABEL_38:
    v79 = v357;
    *v357 = v75;
    v79[1] = v76;
    v79[2] = v77;
    v79[3] = v78;
    return;
  }

  if (v8 == &type metadata for UIAnimatableScaledFloat)
  {
LABEL_33:
    sub_188F0E0B0(a4);
    *v357 = v74;
    return;
  }

  if (v8 == &type metadata for UIAnimatableRect || v8 == &type metadata for UIAnimatableNormalizedRect)
  {
    v75 = sub_188F0E0B4(a4);
    goto LABEL_38;
  }

  if (v8 == &type metadata for UIAnimatableTransform)
  {

    sub_188AB45D8(v58);
    return;
  }

  if (v8 == &type metadata for UIAnimatablePoint)
  {
    goto LABEL_34;
  }

  v341 = v49;
  v339 = v48;
  v59 = *(v55 + 16);
  if (a4 > 0.0)
  {
    v344 = v52;
    v331 = v51;
    v338 = v47;
    v342 = v46;
    v340 = v50;
    v330 = v56;
    v343 = v55;
    v335 = v54;
    v336 = v321 - v53;
    v346 = v55 + 16;
    v345 = v59;
    v59(v57.n128_f64[0]);
    *&v60 = v4 + *(a1 + 36);
    v62 = type metadata accessor for CompoundSpringAnimationParameters(0, v8, v9, v61);
    LODWORD(v334) = *(*&v60 + v62[13]);
    v332 = v4;
    v337 = v62;
    if (v334 == 1)
    {
      (*(v343 + 24))(v4 + *(a1 + 56), v336, v8);
      v333 = v60;
      v63 = v342;
      sub_18A4A8408();
      v4 = v332;
      v64 = v63;
      v60 = v333;
      (*(v343 + 40))(v332 + *(a1 + 60), v64, v8);
      v62 = v337;
    }

    v65 = *(*&v60 + v62[11]);
    if (v65)
    {
      v66 = v343;
      if (*(*&v60 + v62[12]))
      {
        goto LABEL_90;
      }
    }

    else
    {
      v82 = **&v60;
      v83 = *(*&v60 + 8);
      v84 = *(*&v60 + 16);
      v85 = *(*&v60 + 24);
      v86 = *v4;
      v66 = v343;
      if (*v4 != **&v60 || v4[1] != 0.0)
      {
        LODWORD(v333) = *(*&v60 + v62[11]);
        LODWORD(v328) = v85;
        v329 = v82;
        v87 = v86 - v82;
        if ((v85 - 1) <= 2)
        {
          v88 = __sincos_stret(v86 - v82);
          v89 = atan2(v88.__sinval, v88.__cosval);
          if (v89 > 0.0 && v328 == 2)
          {
            v89 = v89 + -6.28318531;
          }

          if (v89 < 0.0 && v328 == 3)
          {
            v87 = v89 + 6.28318531;
          }

          else
          {
            v87 = v89;
          }
        }

        v92 = v4[1];
        v93 = sqrt(v83);
        v94 = v84 * 0.5;
        if (v84 * 0.5 >= v93)
        {
          if (v93 >= v94)
          {
            v108 = v94 * v87 + v92;
            v109 = v87 + v108 * a4;
            v99 = exp(-(v94 * a4));
            v100 = v99 * v109;
            v101 = v99 * v108;
            v102 = v109 * v94;
          }

          else
          {
            v103 = sqrt(v94 * v94 - v93 * v93);
            v104 = cosh(v103 * a4);
            v105 = 1.0 / v103 * (v94 * v87 + v92);
            v106 = sinh(v103 * a4);
            v107 = v87 * v104 + v105 * v106;
            v99 = exp(-(v94 * a4));
            v100 = v99 * v107;
            v101 = v99 * (v103 * (v105 * v104) + v103 * (v87 * v106));
            v102 = v107 * v94;
          }
        }

        else
        {
          v95 = sqrt(v93 * v93 - v94 * v94);
          v96 = __sincos_stret(v95 * a4);
          v97 = 1.0 / v95 * (v94 * v87 + v92);
          v98 = v96.__cosval * v87 + v96.__sinval * v97;
          v99 = exp(-(v94 * a4));
          v100 = v99 * v98;
          v101 = v99 * (v95 * (v96.__cosval * v97) - v95 * (v87 * v96.__sinval));
          v102 = v98 * v94;
        }

        *v4 = v329 + v100;
        v4[1] = v101 - v99 * v102;
        v66 = v343;
        v62 = v337;
        v65 = LOBYTE(v333);
      }

      if (*(*&v60 + v62[12]))
      {
        if (v65)
        {
LABEL_90:
          *&v333 = *&v60 + v62[10];
          (*(v66 + 24))();
          *&v329 = *(a1 + 56);
          v142 = v342;
          (v345)(v342, v4 + *&v329, v8);
          v328 = *(a1 + 60);
          (v345)(v344, v4 + v328, v8);
          sub_188F3D9DC(v142, v344, v8, v9, v16);
          v327 = *(a1 + 52);
          (v345)(v142, v4 + v327, v8);
          v326 = *(a1 + 48);
          v143 = v344;
          (v345)(v344, v4 + v326, v8);
          sub_188F3D9DC(v142, v143, v8, v9, v13);
          v144 = *(v4 + 1);
          v358 = *v4;
          *v359 = v144;
          *&v359[16] = *(v4 + 2);
          v145 = v335;
          v146 = v16;
          v147 = v333;
          v148 = sub_188F41A34(v146, v13, &v358, v8, v9, v335);
          if (v334 & 1) != 0 || (v334 = *(v9 + 8), v149 = *(v334 + 8), v150 = sub_18A4A7248(), v337 = v149, (v150) && (v151 = v342, sub_18A4A8408(), v147 = v333, v152 = sub_18A4A7248(), (*(v343 + 8))(v151, v8), (v152))
          {
LABEL_100:
            v243 = v342;
            (v345)(v342, v145, v8, v148);
            v244 = v348;
            sub_188F3DA8C(v243, *(*&v147 + *(v356 + 44)), v8, v9, v352, *(v145 + *(v348 + 40) + 32), *(v145 + *(v348 + 40) + 40));
            v245 = v145 + *(v244 + 36);
            v246 = *(v9 + 8);
            v247 = *(*&v246 + 8);
            if (sub_18A4A7248())
            {
              sub_18A4A8408();
              v248 = sub_18A4A7248();
              v249 = *(v343 + 8);
              v249(v243, v8);
              if (v248)
              {
                (*(v349 + 8))(v352, v356);
                v249(v336, v8);
                v250 = *(v343 + 40);
LABEL_110:
                v316 = v357;
                v317 = v332;
                v318 = v327;
                v250(v332 + v327, v245, v8);
                v319 = v355;
                v250(v317 + v326, v245 + *(v355 + 36), v8);
                v320 = v335;
                v250(v317 + *&v329, v335, v8);
                v250(v317 + v328, v320 + *(v319 + 36), v8);
                (v345)(v316, v317 + v318, v8);
                return;
              }
            }

            v251 = v356;
            v252 = v352;
            v253 = *(v352 + *(v356 + 36));
            v254 = v338;
            (*(v9 + 32))(v245, v352, *(v352 + *(v356 + 44)), v8, v9);
            v255 = *(v252 + *(v251 + 40));
            v337 = *(v355 + 36);
            (v345)(v340, v337 + v245, v8);
            v256 = sqrt(v253);
            v257 = v255 * 0.5;
            v348 = v245;
            v350 = v247;
            if (v255 * 0.5 >= v256)
            {
              if (v256 >= v257)
              {
                v303 = v341;
                v304 = v338;
                (v345)(v341, v338, v8);
                sub_18A4A4E98();
                v305 = v339;
                sub_18A4A83C8();
                v261 = *(v343 + 8);
                v334 = (v343 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
                v261(v303, v8);
                v306 = v344;
                (v345)(v344, v305, v8);
                sub_18A4A4E98();
                v261(v305, v8);
                v307 = v342;
                sub_18A4A83C8();
                v261(v306, v8);
                exp(-(v257 * a4));
                (v345)(v331, v307, v8);
                sub_18A4A4E98();
                v261(v307, v8);
                v308 = v304;
                (v345)(v305, v304, v8);
                sub_18A4A4E98();
                sub_18A4A83C8();
                v261(v305, v8);
                (v345)(v307, v306, v8);
                sub_18A4A4E98();
                v261(v306, v8);
                v309 = v351;
                (v345)(v351, v308, v8);
                v333 = v246;
                sub_18A4A4E98();
                v310 = v353;
                sub_18A4A83C8();
                v261(v309, v8);
                v311 = v354;
                (v345)(v354, v310, v8);
                sub_18A4A4E98();
                v312 = v310;
                v277 = v342;
                v261(v312, v8);
                v313 = v341;
                sub_18A4A83C8();
                v261(v311, v8);
                (v345)(v305, v313, v8);
                sub_18A4A4E98();
                v261(v313, v8);
                (v345)(v306, v305, v8);
                sub_18A4A4E98();
                v261(v305, v8);
                v302 = v330;
                sub_18A4A83C8();
                v261(v306, v8);
                goto LABEL_109;
              }

              v279 = sqrt(v257 * v257 - v256 * v256);
              cosh(v279 * a4);
              v280 = v344;
              v281 = v338;
              (v345)(v344, v338, v8);
              sub_18A4A4E98();
              v282 = v353;
              (v345)(v353, v281, v8);
              sub_18A4A4E98();
              v283 = v354;
              sub_18A4A83C8();
              v261 = *(v343 + 8);
              v334 = (v343 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
              v261(v282, v8);
              v284 = v341;
              (v345)(v341, v283, v8);
              sub_18A4A4E98();
              v261(v283, v8);
              sinh(v279 * a4);
              v263 = v339;
              (v345)(v339, v284, v8);
              sub_18A4A4E98();
              v261(v284, v8);
              v285 = v342;
              sub_18A4A83C8();
              v261(v263, v8);
              v261(v280, v8);
              exp(-(v257 * a4));
              (v345)(v331, v285, v8);
              sub_18A4A4E98();
              v261(v285, v8);
              v286 = v338;
              (v345)(v263, v338, v8);
              sub_18A4A4E98();
              (v345)(v280, v263, v8);
              sub_18A4A4E98();
              v261(v263, v8);
              v287 = v351;
              (v345)(v351, v286, v8);
              sub_18A4A4E98();
              v288 = v353;
              sub_18A4A83C8();
              v261(v287, v8);
              v289 = v354;
              (v345)(v354, v288, v8);
              sub_18A4A4E98();
              v261(v288, v8);
              v290 = v284;
              (v345)(v284, v289, v8);
              sub_18A4A4E98();
              v261(v289, v8);
              (v345)(v263, v284, v8);
              sub_18A4A4E98();
              v261(v284, v8);
              v291 = v342;
              v292 = v344;
              sub_18A4A83C8();
              v261(v263, v8);
              v261(v292, v8);
              (v345)();
              sub_18A4A4E98();
              v261(v291, v8);
              v293 = v290;
              v294 = v338;
              (v345)(v293, v338, v8);
              sub_18A4A4E98();
              v295 = v347;
              (v345)(v347, v294, v8);
              sub_18A4A4E98();
              v296 = v351;
              sub_18A4A83C8();
              v261(v295, v8);
              v297 = v353;
              (v345)(v353, v296, v8);
              sub_18A4A4E98();
              v298 = v296;
              v277 = v342;
              v261(v298, v8);
              v299 = v354;
              (v345)(v354, v297, v8);
              sub_18A4A4E98();
              v261(v297, v8);
              v300 = v341;
              sub_18A4A83C8();
              v261(v299, v8);
              v278 = v300;
            }

            else
            {
              __sincos_stret(sqrt(v256 * v256 - v257 * v257) * a4);
              v258 = v344;
              (v345)(v344, v254, v8);
              sub_18A4A4E98();
              v259 = v353;
              (v345)(v353, v254, v8);
              sub_18A4A4E98();
              v260 = v354;
              sub_18A4A83C8();
              v261 = *(v343 + 8);
              v334 = (v343 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
              v261(v259, v8);
              v262 = v341;
              (v345)(v341, v260, v8);
              sub_18A4A4E98();
              v261(v260, v8);
              v263 = v339;
              (v345)(v339, v262, v8);
              sub_18A4A4E98();
              v261(v262, v8);
              v264 = v254;
              v265 = v342;
              sub_18A4A83C8();
              v261(v263, v8);
              v261(v258, v8);
              exp(-(v257 * a4));
              (v345)(v331, v265, v8);
              sub_18A4A4E98();
              v261(v265, v8);
              (v345)(v263, v264, v8);
              sub_18A4A4E98();
              (v345)(v258, v263, v8);
              sub_18A4A4E98();
              v261(v263, v8);
              v266 = v351;
              (v345)(v351, v264, v8);
              sub_18A4A4E98();
              v267 = v353;
              sub_18A4A83C8();
              v261(v266, v8);
              v268 = v354;
              (v345)(v354, v267, v8);
              sub_18A4A4E98();
              v261(v267, v8);
              v269 = v341;
              (v345)(v341, v268, v8);
              sub_18A4A4E98();
              v261(v268, v8);
              (v345)(v263, v269, v8);
              sub_18A4A4E98();
              v261(v269, v8);
              v270 = v344;
              sub_18A4A83C8();
              v261(v263, v8);
              v261(v270, v8);
              (v345)(v330, v265, v8);
              sub_18A4A4E98();
              v261(v265, v8);
              v271 = v338;
              (v345)(v269, v338, v8);
              sub_18A4A4E98();
              v272 = v271;
              v273 = v347;
              (v345)(v347, v272, v8);
              sub_18A4A4E98();
              sub_18A4A83C8();
              v261(v273, v8);
              v274 = v353;
              (v345)(v353, v266, v8);
              sub_18A4A4E98();
              v261(v266, v8);
              v275 = v354;
              (v345)(v354, v274, v8);
              sub_18A4A4E98();
              v276 = v274;
              v277 = v342;
              v261(v276, v8);
              sub_18A4A83C8();
              v261(v275, v8);
              v278 = v269;
            }

            v261(v278, v8);
            v301 = v344;
            (v345)(v344, v263, v8);
            sub_18A4A4E98();
            v261(v263, v8);
            (v345)(v277, v301, v8);
            v302 = v330;
            sub_18A4A4E98();
            v261(v301, v8);
            sub_18A4A83E8();
LABEL_109:
            v261(v277, v8);
            v314 = v331;
            v315 = v352;
            sub_18A4A83C8();
            v261(v340, v8);
            v261(v338, v8);
            v261(v314, v8);
            (*(v349 + 8))(v315, v356);
            v261(v336, v8);
            v250 = *(v343 + 40);
            v245 = v348;
            v250(v348, v277, v8);
            v250(v337 + v245, v302, v8);
            goto LABEL_110;
          }

          v153 = v356;
          v154 = *(*&v147 + *(v356 + 36));
          (*(v9 + 32))(v145, COERCE_DOUBLE(*&v147), *(*&v147 + *(v356 + 44)), v8, v9);
          v155 = *(*&v147 + *(v153 + 40));
          v323 = *(v355 + 36);
          (v345)(v20, v145 + v323, v8);
          v156 = sqrt(v154);
          v157 = v155 * 0.5;
          if (v155 * 0.5 >= v156)
          {
            if (v156 >= v157)
            {
              v219 = v341;
              (v345)(v341, v23, v8);
              sub_18A4A4E98();
              v220 = v339;
              sub_18A4A83C8();
              v222 = v343 + 8;
              v221 = *(v343 + 8);
              v322 = (v343 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
              v221(v219, v8);
              v223 = v222;
              v224 = v221;
              v225 = v344;
              (v345)(v344, v220, v8);
              sub_18A4A4E98();
              v224(v220, v8);
              v226 = v342;
              sub_18A4A83C8();
              v325 = v224;
              v224(v225, v8);
              exp(-(v157 * a4));
              (v345)(v28, v226, v8);
              sub_18A4A4E98();
              v224(v226, v8);
              v227 = v339;
              (v345)(v339, v23, v8);
              sub_18A4A4E98();
              v228 = v344;
              sub_18A4A83C8();
              v229 = v325;
              v325(v227, v8);
              (v345)(v342, v228, v8);
              sub_18A4A4E98();
              v229(v228, v8);
              v324 = v223;
              v230 = v229;
              v231 = v351;
              (v345)(v351, v23, v8);
              sub_18A4A4E98();
              v232 = v353;
              sub_18A4A83C8();
              v230(v231, v8);
              v233 = v354;
              (v345)(v354, v232, v8);
              sub_18A4A4E98();
              v234 = v232;
              v235 = v230;
              v230(v234, v8);
              v236 = v341;
              sub_18A4A83C8();
              v235(v233, v8);
              v237 = v339;
              (v345)(v339, v236, v8);
              sub_18A4A4E98();
              v235(v236, v8);
              v238 = v235;
              v239 = v344;
              (v345)(v344, v237, v8);
              sub_18A4A4E98();
              v235(v237, v8);
              v240 = v342;
              sub_18A4A83C8();
              v238(v239, v8);
              v216 = v240;
              v218 = v238;
              v238(v240, v8);
              goto LABEL_99;
            }

            v185 = sqrt(v157 * v157 - v156 * v156);
            cosh(v185 * a4);
            (v345)(v344, v23, v8);
            sub_18A4A4E98();
            v186 = v353;
            (v345)(v353, v23, v8);
            sub_18A4A4E98();
            v187 = v354;
            sub_18A4A83C8();
            v188 = v343 + 8;
            v325 = *(v343 + 8);
            v322 = (v343 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
            v325(v186, v8);
            v189 = v341;
            (v345)(v341, v187, v8);
            sub_18A4A4E98();
            v325(v187, v8);
            sinh(v185 * a4);
            v190 = v339;
            (v345)(v339, v189, v8);
            sub_18A4A4E98();
            v191 = v188;
            v192 = v325;
            v325(v189, v8);
            v193 = v344;
            sub_18A4A83C8();
            v192(v190, v8);
            v192(v193, v8);
            v324 = v191;
            exp(-(v157 * a4));
            v194 = v342;
            (v345)(v28, v342, v8);
            sub_18A4A4E98();
            v195 = v194;
            v196 = v325;
            v325(v195, v8);
            (v345)(v190, v23, v8);
            sub_18A4A4E98();
            (v345)(v344, v190, v8);
            sub_18A4A4E98();
            v196(v190, v8);
            v197 = v351;
            (v345)(v351, v23, v8);
            sub_18A4A4E98();
            v198 = v353;
            sub_18A4A83C8();
            v196(v197, v8);
            v199 = v354;
            (v345)(v354, v198, v8);
            sub_18A4A4E98();
            v200 = v325;
            v325(v198, v8);
            (v345)(v341, v199, v8);
            sub_18A4A4E98();
            v201 = v200;
            v200(v199, v8);
            v202 = v339;
            v203 = v341;
            (v345)(v339, v341, v8);
            sub_18A4A4E98();
            v201(v203, v8);
            v204 = v342;
            v205 = v344;
            sub_18A4A83C8();
            v206 = v202;
            v207 = v325;
            v325(v206, v8);
            v207(v205, v8);
            (v345)(v350, v204, v8);
            sub_18A4A4E98();
            v207(v204, v8);
            (v345)(v341, v23, v8);
            sub_18A4A4E98();
            v208 = v347;
            (v345)(v347, v23, v8);
            sub_18A4A4E98();
            v209 = v351;
            sub_18A4A83C8();
            v207(v208, v8);
            v210 = v353;
            (v345)(v353, v209, v8);
            sub_18A4A4E98();
            v207(v351, v8);
            v211 = v354;
            (v345)(v354, v210, v8);
            sub_18A4A4E98();
            v212 = v325;
            v325(v210, v8);
            v180 = v339;
            v213 = v341;
            sub_18A4A83C8();
            v214 = v211;
            v183 = v212;
            v212(v214, v8);
            v212(v213, v8);
            v184 = v344;
            (v345)(v344, v180, v8);
          }

          else
          {
            __sincos_stret(sqrt(v156 * v156 - v157 * v157) * a4);
            (v345)(v344, v23, v8);
            sub_18A4A4E98();
            v158 = v353;
            (v345)(v353, v23, v8);
            sub_18A4A4E98();
            v159 = v354;
            sub_18A4A83C8();
            v160 = *(v343 + 8);
            v324 = v343 + 8;
            v322 = (v343 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
            v160(v158, v8);
            v161 = v341;
            (v345)(v341, v159, v8);
            sub_18A4A4E98();
            v160(v159, v8);
            v162 = v339;
            (v345)(v339, v161, v8);
            sub_18A4A4E98();
            v160(v161, v8);
            v163 = v344;
            sub_18A4A83C8();
            v160(v162, v8);
            v160(v163, v8);
            v164 = v160;
            v321[1] = -v157;
            exp(-(v157 * a4));
            v165 = v342;
            (v345)(v28, v342, v8);
            sub_18A4A4E98();
            v164(v165, v8);
            (v345)(v162, v23, v8);
            sub_18A4A4E98();
            (v345)(v344, v162, v8);
            sub_18A4A4E98();
            v164(v162, v8);
            v166 = v351;
            (v345)(v351, v23, v8);
            sub_18A4A4E98();
            v167 = v353;
            sub_18A4A83C8();
            v164(v166, v8);
            v168 = v354;
            (v345)(v354, v167, v8);
            sub_18A4A4E98();
            v164(v167, v8);
            v325 = v164;
            (v345)(v341, v168, v8);
            sub_18A4A4E98();
            v164(v168, v8);
            v169 = v339;
            v170 = v341;
            (v345)(v339, v341, v8);
            sub_18A4A4E98();
            v325(v170, v8);
            v171 = v342;
            v172 = v344;
            sub_18A4A83C8();
            v173 = v169;
            v174 = v325;
            v325(v173, v8);
            v174(v172, v8);
            (v345)(v350, v171, v8);
            sub_18A4A4E98();
            v174(v171, v8);
            (v345)(v341, v23, v8);
            sub_18A4A4E98();
            v175 = v347;
            (v345)(v347, v23, v8);
            sub_18A4A4E98();
            v176 = v351;
            sub_18A4A83C8();
            v174(v175, v8);
            v177 = v353;
            (v345)(v353, v176, v8);
            sub_18A4A4E98();
            v174(v351, v8);
            v178 = v354;
            (v345)(v354, v177, v8);
            sub_18A4A4E98();
            v179 = v325;
            v325(v177, v8);
            v180 = v339;
            v181 = v341;
            sub_18A4A83C8();
            v182 = v178;
            v183 = v179;
            v179(v182, v8);
            v179(v181, v8);
            v184 = v344;
            (v345)(v344, v180, v8);
          }

          sub_18A4A4E98();
          v183(v180, v8);
          v215 = v342;
          (v345)(v342, v184, v8);
          sub_18A4A4E98();
          v183(v184, v8);
          sub_18A4A83E8();
          v216 = v215;
          v217 = v215;
          v218 = v183;
          v183(v217, v8);
LABEL_99:
          v241 = v216;
          v147 = v333;
          sub_18A4A83C8();
          v218(v20, v8);
          v218(v23, v8);
          v218(v28, v8);
          v242 = *(v343 + 40);
          v145 = v335;
          v242(v335, v241, v8);
          v242(v145 + v323, v350, v8);
          goto LABEL_100;
        }

        v110 = v4[2];
LABEL_89:
        v139 = 6.28318531 / v110 * (6.28318531 / v110);
        v140 = sqrt(v139);
        v141 = *v4 * (v140 + v140);
        v4[4] = v139;
        v4[5] = v141;
        goto LABEL_90;
      }
    }

    v111 = *(*&v60 + 32);
    v112 = *(*&v60 + 40);
    v113 = *(*&v60 + 48);
    v114 = *(*&v60 + 56);
    v110 = v4[2];
    if (v110 != v111 || v4[3] != 0.0)
    {
      LODWORD(v329) = *(*&v60 + 56);
      v333 = v111;
      v115 = v110 - v111;
      if ((v114 - 1) <= 2)
      {
        v116 = __sincos_stret(v110 - v111);
        v117 = atan2(v116.__sinval, v116.__cosval);
        if (v117 > 0.0 && LODWORD(v329) == 2)
        {
          v117 = v117 + -6.28318531;
        }

        if (v117 < 0.0 && LODWORD(v329) == 3)
        {
          v115 = v117 + 6.28318531;
        }

        else
        {
          v115 = v117;
        }
      }

      v120 = v4[3];
      v121 = sqrt(v112);
      v122 = v113 * 0.5;
      if (v113 * 0.5 >= v121)
      {
        if (v121 >= v122)
        {
          v136 = v122 * v115 + v120;
          v137 = v115 + v136 * a4;
          v127 = exp(-(v122 * a4));
          v128 = v127 * v137;
          v129 = v127 * v136;
          v130 = v137 * v122;
        }

        else
        {
          v131 = sqrt(v122 * v122 - v121 * v121);
          v132 = cosh(v131 * a4);
          v133 = 1.0 / v131 * (v122 * v115 + v120);
          v134 = sinh(v131 * a4);
          v135 = v115 * v132 + v133 * v134;
          v127 = exp(-(v122 * a4));
          v128 = v127 * v135;
          v129 = v127 * (v131 * (v133 * v132) + v131 * (v115 * v134));
          v130 = v135 * v122;
        }
      }

      else
      {
        v123 = sqrt(v121 * v121 - v122 * v122);
        v124 = __sincos_stret(v123 * a4);
        v125 = 1.0 / v123 * (v122 * v115 + v120);
        v126 = v124.__cosval * v115 + v124.__sinval * v125;
        v127 = exp(-(v122 * a4));
        v128 = v127 * v126;
        v129 = v127 * (v123 * (v124.__cosval * v125) - v123 * (v115 * v124.__sinval));
        v130 = v126 * v122;
      }

      v138 = v129 - v127 * v130;
      v110 = v333 + v128;
      v4[2] = v333 + v128;
      v4[3] = v138;
      v66 = v343;
      v62 = v337;
    }

    goto LABEL_89;
  }

  v80 = v4 + *(a1 + 52);
  v81 = v357;

  (v59)(v81, v80, v8, v57);
}

__n128 sub_188F41A34@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = type metadata accessor for SpringAnimationState(0, a4, a5, a4);
  v13 = *(*(v12 - 8) + 32);
  v13(a6, a1, v12);
  v15 = type metadata accessor for CompoundSpringIntegratorState(0, a4, a5, v14);
  v13(a6 + *(v15 + 36), a2, v12);
  v16 = a6 + *(v15 + 40);
  v17 = *(a3 + 16);
  *v16 = *a3;
  *(v16 + 16) = v17;
  result = *(a3 + 32);
  *(v16 + 32) = result;
  return result;
}

uint64_t sub_188F41B24(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v39 = *(AssociatedTypeWitness - 8);
  v40 = AssociatedTypeWitness;
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v38 = &v30 - v7;
  v8 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v42 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v44 = &v30 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v30 - v14;
  v17 = MEMORY[0x1EEE9AC00](v16);
  v45 = &v30 - v18;
  v41 = v5;
  v19 = *(v5 + 8);
  v20 = v19[3];
  if ((v20)(v4, v19, v17) & 1) != 0 || (v37 = *(a1 + 48), (v20(v4, v19)))
  {
    v21 = 1;
  }

  else
  {
    v35 = v19[1];
    v36 = v20;
    v33 = *(v35 + 8);
    v43 = v8;
    v22 = v45;
    sub_18A4A83D8();
    v32 = *(v8 + 16);
    v32(v15, v22, v4);
    v34 = v19[2];
    v34(v15, v4, v19);
    v31 = *(v43 + 8);
    v43 += 8;
    v31(v15, v4);
    v23 = v44;
    v24 = v32;
    v32(v44, (v2 + v37), v4);
    sub_18A4A4E98();
    v24(v15, v23, v4);
    v25 = v31;
    v34(v15, v4, v19);
    v25(v15, v4);
    v26 = v42;
    sub_18A4A83C8();
    if (v36(v4, v19))
    {
      v21 = 1;
    }

    else
    {
      sub_18A4A8408();
      v27 = v41;
      v28 = v38;
      (*(v41 + 32))(v4, v41);
      v21 = (*(v27 + 48))(v15, v28, v4, v27);
      (*(v39 + 8))(v28, v40);
      v25(v15, v4);
    }

    v25(v26, v4);
    v25(v44, v4);
    v25(v45, v4);
  }

  return v21 & 1;
}

uint64_t sub_188F41FB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for SpringAnimationState(319, *(a1 + 16), *(a1 + 24), a4);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_188F42030(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (!a2)
  {
    return 0;
  }

  if (v5 >= a2)
  {
    return (*(v4 + 48))(a1);
  }

  v7 = *(v4 + 80);
  v6 = *(*(*(a3 + 16) - 8) + 64);
  v8 = ((((v6 + v7) & ~v7) + v6 + ((((v6 + v7) & ~v7) + v6 + v7) & ~v7) + 7) & 0xFFFFFFFFFFFFFFF8) + 48;
  v9 = a2 - v5;
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

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_24;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_24:
    if (v5)
    {
      return (*(v4 + 48))(a1);
    }

    return 0;
  }

  v15 = v14 - 1;
  if (v10)
  {
    v15 = 0;
    LODWORD(v10) = *a1;
  }

  return v5 + (v10 | v15) + 1;
}

unsigned int *sub_188F42150(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 80);
  v8 = ((*(v5 + 64) + v7) & ~v7) + *(v5 + 64);
  v9 = ((v8 + ((v8 + v7) & ~v7) + 7) & 0xFFFFFFFFFFFFFFF8) + 48;
  if (v6 >= a3)
  {
    v13 = 0;
    v14 = a2 - v6;
    if (a2 <= v6)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v10 = a3 - v6;
    if (((v8 + ((v8 + v7) & ~v7) + 7) & 0xFFFFFFF8) == 0xFFFFFFD0)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 2;
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

    v14 = a2 - v6;
    if (a2 <= v6)
    {
LABEL_14:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *(result + v9) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_30;
        }

        *(result + v9) = 0;
      }

      else if (v13)
      {
        *(result + v9) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_30;
      }

      if (!a2)
      {
        return result;
      }

LABEL_30:
      v18 = *(v5 + 56);

      return v18();
    }
  }

  if (v9)
  {
    v15 = 1;
  }

  else
  {
    v15 = v14;
  }

  if (v9)
  {
    v16 = ~v6 + a2;
    v17 = result;
    bzero(result, v9);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *(result + v9) = v15;
    }

    else
    {
      *(result + v9) = v15;
    }
  }

  else if (v13)
  {
    *(result + v9) = v15;
  }

  return result;
}

void (*UICollectionViewCell.contentConfiguration.modify(uint64_t *a1))(char **a1, uint64_t a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  *a1 = v3;
  *(v3 + 80) = v1;
  UITableViewHeaderFooterView.contentConfiguration.getter();
  return sub_188F42368;
}

void (*UITableViewCell.contentConfiguration.modify(uint64_t *a1))(char **a1, uint64_t a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  *a1 = v3;
  *(v3 + 80) = v1;
  UITableViewHeaderFooterView.contentConfiguration.getter();
  return sub_188F423F8;
}

void sub_188F42410(char **a1, char a2, void (*a3)(char *))
{
  v4 = *a1;
  if (a2)
  {
    sub_188BC6E54(*a1, (v4 + 40));
    a3(v4 + 40);
    sub_188BC6DEC(v4);
  }

  else
  {
    a3(*a1);
  }

  free(v4);
}

void (*UITableViewHeaderFooterView.contentConfiguration.modify(uint64_t *a1))(char **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  *a1 = v3;
  *(v3 + 80) = v1;
  UITableViewHeaderFooterView.contentConfiguration.getter();
  return sub_188F42504;
}

void UIListContentView.supports(_:)(uint64_t a1)
{
  sub_188A53994(a1, v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9374D8, &qword_18A652A80);
  if (swift_dynamicCast())
  {
  }
}

uint64_t UIListContentView.configuration.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = [v1 configuration];
  a1[3] = &type metadata for UIListContentConfiguration;
  a1[4] = &protocol witness table for UIListContentConfiguration;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9374C0, &qword_18A652A70);
  result = swift_allocObject();
  *(result + 16) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_188F42608@<X0>(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 configuration];
  a2[3] = &type metadata for UIListContentConfiguration;
  a2[4] = &protocol witness table for UIListContentConfiguration;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9374C0, &qword_18A652A70);
  result = swift_allocObject();
  *(result + 16) = v3;
  *a2 = result;
  return result;
}

double sub_188F42680(uint64_t a1, void **a2)
{
  sub_188A53994(a1, v7);
  v3 = *a2;
  sub_188A53994(v7, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9374D8, &qword_18A652A80);
  if (swift_dynamicCast())
  {
    [v3 setConfiguration_];
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v7);
}

double UIListContentView.configuration.setter(void *a1)
{
  sub_188A53994(a1, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9374D8, &qword_18A652A80);
  if (swift_dynamicCast())
  {
    [v1 setConfiguration_];
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(a1);
}

void (*UIListContentView.configuration.modify(uint64_t **a1))(uint64_t *a1, char a2)
{
  v2 = v1;
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  v4[16] = v2;
  v6 = [v2 configuration];
  v5[3] = &type metadata for UIListContentConfiguration;
  v5[4] = &protocol witness table for UIListContentConfiguration;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9374C0, &qword_18A652A70);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *v5 = v7;
  return sub_188F4287C;
}

void sub_188F4287C(uint64_t *a1, char a2)
{
  v3 = *a1;
  sub_188A53994(*a1, *a1 + 40);
  if (a2)
  {
    sub_188A53994(v3 + 40, v3 + 80);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9374D8, &qword_18A652A80);
    if (swift_dynamicCast())
    {
      [*(v3 + 128) setConfiguration_];
    }

    __swift_destroy_boxed_opaque_existential_0Tm((v3 + 40));
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9374D8, &qword_18A652A80);
    if (swift_dynamicCast())
    {
      [*(v3 + 128) setConfiguration_];
    }
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v3);

  free(v3);
}

id UIListContentView.init(configuration:)(uint64_t *a1)
{
  v1 = *a1;
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = *(v1 + 16);

  v4 = [v2 initWithConfiguration_];

  return v4;
}

uint64_t sub_188F429F4@<X0>(uint64_t *a1@<X8>)
{
  v3 = [v1 configuration];
  a1[3] = &type metadata for UIListContentConfiguration;
  a1[4] = &protocol witness table for UIListContentConfiguration;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9374C0, &qword_18A652A70);
  result = swift_allocObject();
  *(result + 16) = v3;
  *a1 = result;
  return result;
}

double sub_188F42A6C(void *a1)
{
  sub_188A53994(a1, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9374D8, &qword_18A652A80);
  if (swift_dynamicCast())
  {
    [v1 setConfiguration_];
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(a1);
}

void (*sub_188F42B00(uint64_t ***a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = UIListContentView.configuration.modify(v2);
  return sub_188E263E8;
}

void sub_188F42B70(uint64_t a1)
{
  sub_188A53994(a1, v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9374D8, &qword_18A652A80);
  if (swift_dynamicCast())
  {
  }
}

uint64_t UIContentView.supports(_:)(void *a1, uint64_t a2, uint64_t a3)
{
  if (dyld_program_sdk_at_least())
  {
    (*(a3 + 8))(v15, a2, a3);
    __swift_project_boxed_opaque_existential_0(v15, v16);
    DynamicType = swift_getDynamicType();
    __swift_destroy_boxed_opaque_existential_0Tm(v15);
    __swift_project_boxed_opaque_existential_0(a1, a1[3]);
    v7 = DynamicType == swift_getDynamicType();
  }

  else
  {
    (*(a3 + 8))(v15, a2, a3);
    __swift_project_boxed_opaque_existential_0(v15, v16);
    swift_getDynamicType();
    __swift_destroy_boxed_opaque_existential_0Tm(v15);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9374E0, &qword_18A652A88);
    v8 = sub_18A4A72F8();
    v10 = v9;
    __swift_project_boxed_opaque_existential_0(a1, a1[3]);
    v11 = swift_getDynamicType();
    v12 = a1[4];
    v15[0] = v11;
    v15[1] = v12;
    if (v8 == sub_18A4A72F8() && v10 == v13)
    {

      v7 = 1;
    }

    else
    {
      v7 = sub_18A4A86C8();
    }
  }

  return v7 & 1;
}

id UIListContentConfiguration.ImageProperties.preferredSymbolConfiguration.getter()
{
  v1 = [*(*v0 + 16) preferredSymbolConfiguration];

  return v1;
}

void UIListContentConfiguration.ImageProperties.preferredSymbolConfiguration.setter(void *a1)
{
  sub_188F476EC(a1);
}

void (*UIListContentConfiguration.ImageProperties.preferredSymbolConfiguration.modify(void *a1))(id *a1, uint64_t a2)
{
  a1[1] = v1;
  *a1 = [*(*v1 + 16) preferredSymbolConfiguration];
  return sub_188F42E80;
}

id UIListContentConfiguration.ImageProperties.tintColor.getter()
{
  v1 = [*(*v0 + 16) tintColor];

  return v1;
}

void UIListContentConfiguration.ImageProperties.tintColor.setter(void *a1)
{
  sub_188F477DC(a1);
}

void (*UIListContentConfiguration.ImageProperties.tintColor.modify(void *a1))(id *a1, uint64_t a2)
{
  a1[1] = v1;
  *a1 = [*(*v1 + 16) tintColor];
  return sub_188F42F6C;
}

uint64_t (*UIListContentConfiguration.ImageProperties.tintColorTransformer.getter@<X0>(uint64_t (**a1)()@<X8>))()
{
  result = [*(*v1 + 16) tintColorTransformer];
  if (result)
  {
    v4 = result;
    result = swift_allocObject();
    *(result + 2) = v4;
    v5 = sub_188F478CC;
  }

  else
  {
    v5 = 0;
  }

  *a1 = v5;
  a1[1] = result;
  return result;
}

uint64_t (*sub_188F42FFC@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>))()
{
  result = [*(*a1 + 16) tintColorTransformer];
  if (result)
  {
    v4 = result;
    result = swift_allocObject();
    *(result + 2) = v4;
    v5 = sub_188F4839C;
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
  a2[1] = result;
  return result;
}

void (*UIListContentConfiguration.ImageProperties.tintColorTransformer.modify(uint64_t *a1))(uint64_t a1, uint64_t a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 64) = v1;
  v5 = [*(*v1 + 16) tintColorTransformer];
  if (v5)
  {
    v6 = v5;
    v5 = swift_allocObject();
    v5[2] = v6;
    v7 = sub_188F4839C;
  }

  else
  {
    v7 = 0;
  }

  *(v4 + 48) = v7;
  *(v4 + 56) = v5;
  return sub_188F43150;
}

UIColor __swiftcall UIListContentConfiguration.ImageProperties.resolvedTintColor(for:)(UIColor a1)
{
  v2 = [*(*v1 + 16) resolvedTintColorForTintColor_];

  v3 = v2;
  result._cachedStyleString = v5;
  result._systemColorName = v4;
  result.super.isa = v3;
  return result;
}

id UIListContentConfiguration.ImageProperties.cornerRadius.setter(double a1)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *v1;
  if (isUniquelyReferenced_nonNull_native)
  {
    v5 = *(v4 + 16);
  }

  else
  {
    [*(v4 + 16) copy];
    sub_18A4A7DE8();
    swift_unknownObjectRelease();
    sub_188A34624(0, &qword_1EA930C18, off_1E70EA110);
    swift_dynamicCast();
    v5 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9374F0, &qword_18A652A90);
    v6 = swift_allocObject();
    *(v6 + 16) = v8;

    *v1 = v6;
  }

  return [v5 setCornerRadius_];
}

id (*UIListContentConfiguration.ImageProperties.cornerRadius.modify(void *a1))(double *a1)
{
  a1[1] = v1;
  [*(*v1 + 16) cornerRadius];
  *a1 = v3;
  return sub_188F43310;
}

id (*UIListContentConfiguration.ImageProperties.maximumSize.modify(void *a1))(double *a1)
{
  a1[2] = v1;
  [*(*v1 + 16) maximumSize];
  *a1 = v3;
  a1[1] = v4;
  return sub_188F433A4;
}

id (*UIListContentConfiguration.ImageProperties.reservedLayoutSize.modify(void *a1))(double *a1)
{
  a1[2] = v1;
  [*(*v1 + 16) reservedLayoutSize];
  *a1 = v3;
  a1[1] = v4;
  return sub_188F43438;
}

id UIListContentConfiguration.ImageProperties.accessibilityIgnoresInvertColors.setter(char a1)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *v1;
  if (isUniquelyReferenced_nonNull_native)
  {
    v5 = *(v4 + 16);
  }

  else
  {
    [*(v4 + 16) copy];
    sub_18A4A7DE8();
    swift_unknownObjectRelease();
    sub_188A34624(0, &qword_1EA930C18, off_1E70EA110);
    swift_dynamicCast();
    v5 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9374F0, &qword_18A652A90);
    v6 = swift_allocObject();
    *(v6 + 16) = v8;

    *v1 = v6;
  }

  return [v5 setAccessibilityIgnoresInvertColors_];
}

id (*UIListContentConfiguration.ImageProperties.accessibilityIgnoresInvertColors.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = [*(*v1 + 16) accessibilityIgnoresInvertColors];
  return sub_188F435D0;
}

id UIListContentConfiguration.ImageProperties.strokeColor.getter()
{
  v1 = [*(*v0 + 16) strokeColor];

  return v1;
}

void UIListContentConfiguration.ImageProperties.strokeColor.setter(void *a1)
{
  sub_188F478D4(a1);
}

void (*UIListContentConfiguration.ImageProperties.strokeColor.modify(void *a1))(id *a1, uint64_t a2)
{
  a1[1] = v1;
  *a1 = [*(*v1 + 16) strokeColor];
  return sub_188F436CC;
}

uint64_t (*UIListContentConfiguration.ImageProperties.strokeColorTransformer.getter@<X0>(uint64_t (**a1)()@<X8>))()
{
  result = [*(*v1 + 16) strokeColorTransformer];
  if (result)
  {
    v4 = result;
    result = swift_allocObject();
    *(result + 2) = v4;
    v5 = sub_188F4839C;
  }

  else
  {
    v5 = 0;
  }

  *a1 = v5;
  a1[1] = result;
  return result;
}

uint64_t (*sub_188F4375C@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>))()
{
  result = [*(*a1 + 16) strokeColorTransformer];
  if (result)
  {
    v4 = result;
    result = swift_allocObject();
    *(result + 2) = v4;
    v5 = sub_188F4839C;
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
  a2[1] = result;
  return result;
}

void (*UIListContentConfiguration.ImageProperties.strokeColorTransformer.modify(uint64_t *a1))(uint64_t a1, uint64_t a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 64) = v1;
  v5 = [*(*v1 + 16) strokeColorTransformer];
  if (v5)
  {
    v6 = v5;
    v5 = swift_allocObject();
    v5[2] = v6;
    v7 = sub_188F4839C;
  }

  else
  {
    v7 = 0;
  }

  *(v4 + 48) = v7;
  *(v4 + 56) = v5;
  return sub_188F438B0;
}

UIColor __swiftcall UIListContentConfiguration.ImageProperties.resolvedStrokeColor(for:)(UIColor a1)
{
  v2 = [*(*v1 + 16) resolvedStrokeColorForTintColor_];

  v3 = v2;
  result._cachedStyleString = v5;
  result._systemColorName = v4;
  result.super.isa = v3;
  return result;
}

id UIListContentConfiguration.ImageProperties.strokeWidth.setter(double a1)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *v1;
  if (isUniquelyReferenced_nonNull_native)
  {
    v5 = *(v4 + 16);
  }

  else
  {
    [*(v4 + 16) copy];
    sub_18A4A7DE8();
    swift_unknownObjectRelease();
    sub_188A34624(0, &qword_1EA930C18, off_1E70EA110);
    swift_dynamicCast();
    v5 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9374F0, &qword_18A652A90);
    v6 = swift_allocObject();
    *(v6 + 16) = v8;

    *v1 = v6;
  }

  return [v5 setStrokeWidth_];
}

id (*UIListContentConfiguration.ImageProperties.strokeWidth.modify(void *a1))(double *a1)
{
  a1[1] = v1;
  [*(*v1 + 16) strokeWidth];
  *a1 = v3;
  return sub_188F43A70;
}

id UIListContentConfiguration.ImageProperties._monochromaticTreatment.setter(uint64_t a1)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *v1;
  if (isUniquelyReferenced_nonNull_native)
  {
    v5 = *(v4 + 16);
  }

  else
  {
    [*(v4 + 16) copy];
    sub_18A4A7DE8();
    swift_unknownObjectRelease();
    sub_188A34624(0, &qword_1EA930C18, off_1E70EA110);
    swift_dynamicCast();
    v5 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9374F0, &qword_18A652A90);
    v6 = swift_allocObject();
    *(v6 + 16) = v8;

    *v1 = v6;
  }

  return [v5 _setMonochromaticTreatment_];
}

id (*UIListContentConfiguration.ImageProperties._monochromaticTreatment.modify(void *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = [*(*v1 + 16) _monochromaticTreatment];
  return sub_188F43BE0;
}

double sub_188F43C04()
{
  result = -1.79769313e308;
  qword_1EA92F9C0 = 0xFFEFFFFFFFFFFFFFLL;
  return result;
}

double static UIListContentConfiguration.ImageProperties.standardDimension.getter()
{
  if (qword_1EA92F9B0 != -1)
  {
    swift_once();
  }

  return *&qword_1EA92F9C0;
}

void (*UIListContentConfiguration.TextProperties.font.modify(void *a1))(void **a1, uint64_t a2)
{
  a1[1] = v1;
  *a1 = [*(*v1 + 16) font];
  return sub_188F43CFC;
}

id UIListContentConfiguration.TextProperties.color.getter()
{
  v1 = [*(*v0 + 16) color];

  return v1;
}

void (*UIListContentConfiguration.TextProperties.color.modify(void *a1))(void **a1, uint64_t a2)
{
  a1[1] = v1;
  *a1 = [*(*v1 + 16) color];
  return sub_188F43DB0;
}

void sub_188F43DC8(void **a1, char a2, void (*a3)(id))
{
  v4 = *a1;
  v6 = *a1;
  if (a2)
  {
    v5 = v4;
    (a3)();
  }

  else
  {
    a3(v4);
  }
}

uint64_t (*UIListContentConfiguration.TextProperties.colorTransformer.getter@<X0>(uint64_t (**a1)()@<X8>))()
{
  result = [*(*v1 + 16) colorTransformer];
  if (result)
  {
    v4 = result;
    result = swift_allocObject();
    *(result + 2) = v4;
    v5 = sub_188F4839C;
  }

  else
  {
    v5 = 0;
  }

  *a1 = v5;
  a1[1] = result;
  return result;
}

uint64_t (*sub_188F43EB4@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>))()
{
  result = [*(*a1 + 16) colorTransformer];
  if (result)
  {
    v4 = result;
    result = swift_allocObject();
    *(result + 2) = v4;
    v5 = sub_188F4839C;
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
  a2[1] = result;
  return result;
}

void sub_188F43F2C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_188D738F4(*a1, v2);
  v3 = sub_188CA0300(&qword_1EA930C48, off_1E70EA118, &unk_1EA937500, &qword_18A652A98);
  v4 = v3;
  if (v1)
  {
    v8[4] = v1;
    v8[5] = v2;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 1107296256;
    v8[2] = sub_188BC2240;
    v8[3] = &block_descriptor_209;
    v5 = _Block_copy(v8);
    v6 = v4;
  }

  else
  {
    v7 = v3;
    v5 = 0;
  }

  [v4 setColorTransformer_];
  _Block_release(v5);
}

void UIListContentConfiguration.TextProperties.colorTransformer.setter(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = sub_188CA0300(&qword_1EA930C48, off_1E70EA118, &unk_1EA937500, &qword_18A652A98);
  v4 = v3;
  if (v1)
  {
    v8[4] = v1;
    v8[5] = v2;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 1107296256;
    v8[2] = sub_188BC2240;
    v8[3] = &block_descriptor_38_1;
    v5 = _Block_copy(v8);
    v6 = v4;
  }

  else
  {
    v7 = v3;
    v5 = 0;
  }

  [v4 setColorTransformer_];
  _Block_release(v5);
}

void (*UIListContentConfiguration.TextProperties.colorTransformer.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 64) = v1;
  v5 = [*(*v1 + 16) colorTransformer];
  if (v5)
  {
    v6 = v5;
    v5 = swift_allocObject();
    v5[2] = v6;
    v7 = sub_188F4839C;
  }

  else
  {
    v7 = 0;
  }

  *(v4 + 48) = v7;
  *(v4 + 56) = v5;
  return sub_188F441DC;
}

void sub_188F441DC(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 48);
  v4 = *(*a1 + 56);
  if (a2)
  {
    sub_188D738F4(*(*a1 + 48), v4);
    v5 = sub_188CA0300(&qword_1EA930C48, off_1E70EA118, &unk_1EA937500, &qword_18A652A98);
    v6 = v5;
    if (v3)
    {
      v2[4] = v3;
      v2[5] = v4;
      *v2 = MEMORY[0x1E69E9820];
      v2[1] = 1107296256;
      v2[2] = sub_188BC2240;
      v2[3] = &block_descriptor_41_0;
      v7 = _Block_copy(v2);
      v8 = v6;
    }

    else
    {
      v13 = v5;
      v7 = 0;
    }

    [v6 setColorTransformer_];
    _Block_release(v7);

    sub_188EB09A0(v2[6], v2[7]);
  }

  else
  {
    v9 = sub_188CA0300(&qword_1EA930C48, off_1E70EA118, &unk_1EA937500, &qword_18A652A98);
    v10 = v9;
    if (v3)
    {
      v2[4] = v3;
      v2[5] = v4;
      *v2 = MEMORY[0x1E69E9820];
      v2[1] = 1107296256;
      v2[2] = sub_188BC2240;
      v2[3] = &block_descriptor_44_1;
      v11 = _Block_copy(v2);
      v12 = v10;
    }

    else
    {
      v14 = v9;
      v11 = 0;
    }

    [v10 setColorTransformer_];
    _Block_release(v11);
  }

  free(v2);
}

UIColor __swiftcall UIListContentConfiguration.TextProperties.resolvedColor()()
{
  v1 = [*(*v0 + 16) resolvedColor];

  v2 = v1;
  result._cachedStyleString = v4;
  result._systemColorName = v3;
  result.super.isa = v2;
  return result;
}

id UIListContentConfiguration.TextProperties.alignment.getter@<X0>(_BYTE *a1@<X8>)
{
  result = [*(*v1 + 16) alignment];
  if (result >= 3)
  {
    sub_18A4A80E8();
    MEMORY[0x18CFE22D0](0xD000000000000011, 0x800000018A68EE10);
    type metadata accessor for __UIListContentTextAlignment(0);
    sub_18A4A82D8();
    MEMORY[0x18CFE22D0](544175136, 0xE400000000000000);
    MEMORY[0x18CFE22D0](0x67696C4174786554, 0xED0000746E656D6ELL);
    result = sub_18A4A8398();
    __break(1u);
  }

  else
  {
    *a1 = result;
  }

  return result;
}

unint64_t sub_188F44520@<X0>(unint64_t result@<X0>, _BYTE *a2@<X8>)
{
  if (result >= 3)
  {
    sub_18A4A80E8();
    MEMORY[0x18CFE22D0](0xD000000000000011, 0x800000018A68EE10);
    type metadata accessor for __UIListContentTextAlignment(0);
    sub_18A4A82D8();
    MEMORY[0x18CFE22D0](544175136, 0xE400000000000000);
    MEMORY[0x18CFE22D0](0x67696C4174786554, 0xED0000746E656D6ELL);
    result = sub_18A4A8398();
    __break(1u);
  }

  else
  {
    *a2 = result;
  }

  return result;
}

id (*UIListContentConfiguration.TextProperties.alignment.modify(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *a1 = v1;
  sub_188F44520([*(*v1 + 16) alignment], (a1 + 8));
  return sub_188F4468C;
}

id (*UIListContentConfiguration.TextProperties.lineBreakMode.modify(void *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = [*(*v1 + 16) lineBreakMode];
  return sub_188F44704;
}

id (*UIListContentConfiguration.TextProperties.numberOfLines.modify(void *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = [*(*v1 + 16) numberOfLines];
  return sub_188F44794;
}

id UIListContentConfiguration.TextProperties.adjustsFontSizeToFitWidth.setter(char a1)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *v1;
  if (isUniquelyReferenced_nonNull_native)
  {
    v5 = *(v4 + 16);
  }

  else
  {
    [*(v4 + 16) copy];
    sub_18A4A7DE8();
    swift_unknownObjectRelease();
    sub_188A34624(0, &qword_1EA930C48, off_1E70EA118);
    swift_dynamicCast();
    v5 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA937500, &qword_18A652A98);
    v6 = swift_allocObject();
    *(v6 + 16) = v8;

    *v1 = v6;
  }

  return [v5 setAdjustsFontSizeToFitWidth_];
}

id (*UIListContentConfiguration.TextProperties.adjustsFontSizeToFitWidth.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = [*(*v1 + 16) adjustsFontSizeToFitWidth];
  return sub_188F44928;
}

id UIListContentConfiguration.TextProperties.minimumScaleFactor.setter(double a1)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *v1;
  if (isUniquelyReferenced_nonNull_native)
  {
    v5 = *(v4 + 16);
  }

  else
  {
    [*(v4 + 16) copy];
    sub_18A4A7DE8();
    swift_unknownObjectRelease();
    sub_188A34624(0, &qword_1EA930C48, off_1E70EA118);
    swift_dynamicCast();
    v5 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA937500, &qword_18A652A98);
    v6 = swift_allocObject();
    *(v6 + 16) = v8;

    *v1 = v6;
  }

  return [v5 setMinimumScaleFactor_];
}

id (*UIListContentConfiguration.TextProperties.minimumScaleFactor.modify(void *a1))(double *a1)
{
  a1[1] = v1;
  [*(*v1 + 16) minimumScaleFactor];
  *a1 = v3;
  return sub_188F44AB4;
}

id UIListContentConfiguration.TextProperties.allowsDefaultTighteningForTruncation.setter(char a1)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *v1;
  if (isUniquelyReferenced_nonNull_native)
  {
    v5 = *(v4 + 16);
  }

  else
  {
    [*(v4 + 16) copy];
    sub_18A4A7DE8();
    swift_unknownObjectRelease();
    sub_188A34624(0, &qword_1EA930C48, off_1E70EA118);
    swift_dynamicCast();
    v5 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA937500, &qword_18A652A98);
    v6 = swift_allocObject();
    *(v6 + 16) = v8;

    *v1 = v6;
  }

  return [v5 setAllowsDefaultTighteningForTruncation_];
}

id (*UIListContentConfiguration.TextProperties.allowsDefaultTighteningForTruncation.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = [*(*v1 + 16) allowsDefaultTighteningForTruncation];
  return sub_188F44C4C;
}

id UIListContentConfiguration.TextProperties.adjustsFontForContentSizeCategory.setter(char a1)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *v1;
  if (isUniquelyReferenced_nonNull_native)
  {
    v5 = *(v4 + 16);
  }

  else
  {
    [*(v4 + 16) copy];
    sub_18A4A7DE8();
    swift_unknownObjectRelease();
    sub_188A34624(0, &qword_1EA930C48, off_1E70EA118);
    swift_dynamicCast();
    v5 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA937500, &qword_18A652A98);
    v6 = swift_allocObject();
    *(v6 + 16) = v8;

    *v1 = v6;
  }

  return [v5 setAdjustsFontForContentSizeCategory_];
}

id (*UIListContentConfiguration.TextProperties.adjustsFontForContentSizeCategory.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = [*(*v1 + 16) adjustsFontForContentSizeCategory];
  return sub_188F44DE4;
}

id UIListContentConfiguration.TextProperties.showsExpansionTextWhenTruncated.setter(char a1)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *v1;
  if (isUniquelyReferenced_nonNull_native)
  {
    v5 = *(v4 + 16);
  }

  else
  {
    [*(v4 + 16) copy];
    sub_18A4A7DE8();
    swift_unknownObjectRelease();
    sub_188A34624(0, &qword_1EA930C48, off_1E70EA118);
    swift_dynamicCast();
    v5 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA937500, &qword_18A652A98);
    v6 = swift_allocObject();
    *(v6 + 16) = v8;

    *v1 = v6;
  }

  return [v5 setShowsExpansionTextWhenTruncated_];
}

id (*UIListContentConfiguration.TextProperties.showsExpansionTextWhenTruncated.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = [*(*v1 + 16) showsExpansionTextWhenTruncated];
  return sub_188F44F7C;
}

id UIListContentConfiguration.TextProperties.transform.getter@<X0>(_BYTE *a1@<X8>)
{
  result = [*(*v1 + 16) transform];
  if (result >= 4)
  {
    sub_18A4A80E8();
    MEMORY[0x18CFE22D0](0xD000000000000011, 0x800000018A68EE10);
    type metadata accessor for __UIListContentTextTransform(0);
    sub_18A4A82D8();
    MEMORY[0x18CFE22D0](544175136, 0xE400000000000000);
    MEMORY[0x18CFE22D0](0x6E61725474786554, 0xED00006D726F6673);
    result = sub_18A4A8398();
    __break(1u);
  }

  else
  {
    *a1 = result;
  }

  return result;
}

id sub_188F450CC(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = sub_188CA0300(&qword_1EA930C48, off_1E70EA118, &unk_1EA937500, &qword_18A652A98);

  return [v2 setTransform_];
}

unint64_t sub_188F45134@<X0>(unint64_t result@<X0>, _BYTE *a2@<X8>)
{
  if (result >= 4)
  {
    sub_18A4A80E8();
    MEMORY[0x18CFE22D0](0xD000000000000011, 0x800000018A68EE10);
    type metadata accessor for __UIListContentTextTransform(0);
    sub_18A4A82D8();
    MEMORY[0x18CFE22D0](544175136, 0xE400000000000000);
    MEMORY[0x18CFE22D0](0x6E61725474786554, 0xED00006D726F6673);
    result = sub_18A4A8398();
    __break(1u);
  }

  else
  {
    *a2 = result;
  }

  return result;
}

id (*UIListContentConfiguration.TextProperties.transform.modify(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *a1 = v1;
  sub_188F45134([*(*v1 + 16) transform], (a1 + 8));
  return sub_188F452A0;
}

id sub_188F452AC(uint64_t a1, uint64_t a2, const char **a3)
{
  v4 = *(a1 + 8);
  v5 = sub_188CA0300(&qword_1EA930C48, off_1E70EA118, &unk_1EA937500, &qword_18A652A98);
  v6 = *a3;

  return [v5 v6];
}

id UIListContentConfiguration.TextProperties._monochromaticTreatment.setter(uint64_t a1)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *v1;
  if (isUniquelyReferenced_nonNull_native)
  {
    v5 = *(v4 + 16);
  }

  else
  {
    [*(v4 + 16) copy];
    sub_18A4A7DE8();
    swift_unknownObjectRelease();
    sub_188A34624(0, &qword_1EA930C48, off_1E70EA118);
    swift_dynamicCast();
    v5 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA937500, &qword_18A652A98);
    v6 = swift_allocObject();
    *(v6 + 16) = v8;

    *v1 = v6;
  }

  return [v5 _setMonochromaticTreatment_];
}

id (*UIListContentConfiguration.TextProperties._monochromaticTreatment.modify(void *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = [*(*v1 + 16) _monochromaticTreatment];
  return sub_188F45474;
}

void (*UIListContentConfiguration.image.modify(void *a1))(id *a1, uint64_t a2)
{
  a1[1] = v1;
  *a1 = [*(*v1 + 16) image];
  return sub_188F455D4;
}

void (*UIListContentConfiguration.text.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  a1[2] = v1;
  v3 = [*(*v1 + 16) text];
  if (v3)
  {
    v4 = v3;
    v5 = sub_18A4A7288();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a1 = v5;
  a1[1] = v7;
  return sub_188F456A0;
}

id UIListContentConfiguration.attributedText.getter()
{
  v1 = [*(*v0 + 16) attributedText];

  return v1;
}

void UIListContentConfiguration.attributedText.setter(void *a1)
{
  sub_188F47C94(a1);
}

void (*UIListContentConfiguration.attributedText.modify(void *a1))(id *a1, uint64_t a2)
{
  a1[1] = v1;
  *a1 = [*(*v1 + 16) attributedText];
  return sub_188F45780;
}

void sub_188F457C0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v6 = a1[1];
  v7 = sub_188CA0300(&qword_1EA9305E8, off_1E70EA108, &qword_1EA9374C0, &qword_18A652A70);
  v8 = v7;
  if (v6)
  {
    v9 = sub_18A4A7258();
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;
  [v7 *a5];
}

void (*UIListContentConfiguration.secondaryText.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  a1[2] = v1;
  v3 = [*(*v1 + 16) secondaryText];
  if (v3)
  {
    v4 = v3;
    v5 = sub_18A4A7288();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a1 = v5;
  a1[1] = v7;
  return sub_188F458FC;
}

void sub_188F45908(uint64_t *a1, char a2, SEL *a3)
{
  v4 = a1[1];
  if (a2)
  {

    v5 = sub_188CA0300(&qword_1EA9305E8, off_1E70EA108, &qword_1EA9374C0, &qword_18A652A70);
    v8 = v5;
    if (v4)
    {
      v6 = sub_18A4A7258();

      v5 = v8;
    }

    else
    {
      v6 = 0;
    }

    [v5 *a3];
  }

  else
  {
    v8 = sub_188CA0300(&qword_1EA9305E8, off_1E70EA108, &qword_1EA9374C0, &qword_18A652A70);
    v7 = v8;
    if (v4)
    {
      v6 = sub_18A4A7258();
    }

    else
    {
      v6 = 0;
    }

    [v8 *a3];
  }
}

id UIListContentConfiguration.secondaryAttributedText.getter()
{
  v1 = [*(*v0 + 16) secondaryAttributedText];

  return v1;
}

void UIListContentConfiguration.secondaryAttributedText.setter(void *a1)
{
  sub_188F47D84(a1);
}

void (*UIListContentConfiguration.secondaryAttributedText.modify(void *a1))(id *a1, uint64_t a2)
{
  a1[1] = v1;
  *a1 = [*(*v1 + 16) secondaryAttributedText];
  return sub_188F45B08;
}

uint64_t sub_188F45B20@<X0>(SEL *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = [*(*v2 + 16) *a1];
  [v4 copy];

  sub_18A4A7DE8();
  swift_unknownObjectRelease();
  sub_188A34624(0, &qword_1EA930C48, off_1E70EA118);
  swift_dynamicCast();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA937500, &qword_18A652A98);
  result = swift_allocObject();
  *(result + 16) = v6;
  *a2 = result;
  return result;
}

void sub_188F45C18(uint64_t *a1, unint64_t *a2, void *a3, SEL *a4)
{
  v7 = *a1;
  v8 = sub_188CA0300(&qword_1EA9305E8, off_1E70EA108, &qword_1EA9374C0, &qword_18A652A70);
  v9 = *(v7 + 16);
  v10 = v8;
  v11 = v9;

  [v11 copy];

  sub_18A4A7DE8();
  swift_unknownObjectRelease();
  sub_188A34624(0, a2, a3);
  swift_dynamicCast();
  [v10 *a4];
}

id UIListContentConfiguration.prefersSideBySideTextAndSecondaryText.setter(char a1)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *v1;
  if (isUniquelyReferenced_nonNull_native)
  {
    v5 = *(v4 + 16);
  }

  else
  {
    [*(v4 + 16) copy];
    sub_18A4A7DE8();
    swift_unknownObjectRelease();
    sub_188A34624(0, &qword_1EA9305E8, off_1E70EA108);
    swift_dynamicCast();
    v5 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9374C0, &qword_18A652A70);
    v6 = swift_allocObject();
    *(v6 + 16) = v8;

    *v1 = v6;
  }

  return [v5 setPrefersSideBySideTextAndSecondaryText_];
}

id (*UIListContentConfiguration.prefersSideBySideTextAndSecondaryText.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = [*(*v1 + 16) prefersSideBySideTextAndSecondaryText];
  return sub_188F45EAC;
}

id UIListContentConfiguration.imageToTextPadding.setter(double a1)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *v1;
  if (isUniquelyReferenced_nonNull_native)
  {
    v5 = *(v4 + 16);
  }

  else
  {
    [*(v4 + 16) copy];
    sub_18A4A7DE8();
    swift_unknownObjectRelease();
    sub_188A34624(0, &qword_1EA9305E8, off_1E70EA108);
    swift_dynamicCast();
    v5 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9374C0, &qword_18A652A70);
    v6 = swift_allocObject();
    *(v6 + 16) = v8;

    *v1 = v6;
  }

  return [v5 setImageToTextPadding_];
}

id (*UIListContentConfiguration.imageToTextPadding.modify(void *a1))(double *a1)
{
  a1[1] = v1;
  [*(*v1 + 16) imageToTextPadding];
  *a1 = v3;
  return sub_188F46038;
}

id UIListContentConfiguration.textToSecondaryTextHorizontalPadding.setter(double a1)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *v1;
  if (isUniquelyReferenced_nonNull_native)
  {
    v5 = *(v4 + 16);
  }

  else
  {
    [*(v4 + 16) copy];
    sub_18A4A7DE8();
    swift_unknownObjectRelease();
    sub_188A34624(0, &qword_1EA9305E8, off_1E70EA108);
    swift_dynamicCast();
    v5 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9374C0, &qword_18A652A70);
    v6 = swift_allocObject();
    *(v6 + 16) = v8;

    *v1 = v6;
  }

  return [v5 setTextToSecondaryTextHorizontalPadding_];
}

id (*UIListContentConfiguration.textToSecondaryTextHorizontalPadding.modify(void *a1))(double *a1)
{
  a1[1] = v1;
  [*(*v1 + 16) textToSecondaryTextHorizontalPadding];
  *a1 = v3;
  return sub_188F461C4;
}

id UIListContentConfiguration.textToSecondaryTextVerticalPadding.setter(double a1)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *v1;
  if (isUniquelyReferenced_nonNull_native)
  {
    v5 = *(v4 + 16);
  }

  else
  {
    [*(v4 + 16) copy];
    sub_18A4A7DE8();
    swift_unknownObjectRelease();
    sub_188A34624(0, &qword_1EA9305E8, off_1E70EA108);
    swift_dynamicCast();
    v5 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9374C0, &qword_18A652A70);
    v6 = swift_allocObject();
    *(v6 + 16) = v8;

    *v1 = v6;
  }

  return [v5 setTextToSecondaryTextVerticalPadding_];
}

id (*UIListContentConfiguration.textToSecondaryTextVerticalPadding.modify(void *a1))(double *a1)
{
  a1[1] = v1;
  [*(*v1 + 16) textToSecondaryTextVerticalPadding];
  *a1 = v3;
  return sub_188F46350;
}

id UIListContentConfiguration.alpha.setter(double a1)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *v1;
  if (isUniquelyReferenced_nonNull_native)
  {
    v5 = *(v4 + 16);
  }

  else
  {
    [*(v4 + 16) copy];
    sub_18A4A7DE8();
    swift_unknownObjectRelease();
    sub_188A34624(0, &qword_1EA9305E8, off_1E70EA108);
    swift_dynamicCast();
    v5 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9374C0, &qword_18A652A70);
    v6 = swift_allocObject();
    *(v6 + 16) = v8;

    *v1 = v6;
  }

  return [v5 setAlpha_];
}

id (*UIListContentConfiguration.alpha.modify(void *a1))(double *a1)
{
  a1[1] = v1;
  [*(*v1 + 16) alpha];
  *a1 = v3;
  return sub_188F464DC;
}

id UIListContentConfiguration._enforcesMinimumHeight.setter(char a1)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *v1;
  if (isUniquelyReferenced_nonNull_native)
  {
    v5 = *(v4 + 16);
  }

  else
  {
    [*(v4 + 16) copy];
    sub_18A4A7DE8();
    swift_unknownObjectRelease();
    sub_188A34624(0, &qword_1EA9305E8, off_1E70EA108);
    swift_dynamicCast();
    v5 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9374C0, &qword_18A652A70);
    v6 = swift_allocObject();
    *(v6 + 16) = v8;

    *v1 = v6;
  }

  return [v5 _setEnforcesMinimumHeight_];
}

id (*UIListContentConfiguration._enforcesMinimumHeight.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = [*(*v1 + 16) _enforcesMinimumHeight];
  return sub_188F46674;
}

Swift::Void __swiftcall UIListContentConfiguration._setTextEditingConfiguration(_:)(_UIContentViewEditingConfiguration_optional *a1)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *v1;
  if (isUniquelyReferenced_nonNull_native)
  {
    v5 = *(v4 + 16);
  }

  else
  {
    [*(v4 + 16) copy];
    sub_18A4A7DE8();
    swift_unknownObjectRelease();
    sub_188A34624(0, &qword_1EA9305E8, off_1E70EA108);
    swift_dynamicCast();
    v5 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9374C0, &qword_18A652A70);
    v6 = swift_allocObject();
    *(v6 + 16) = v7;

    *v1 = v6;
  }

  [v5 _setTextEditingConfiguration_];
}

uint64_t sub_188F467E8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(*v2 + 16);
  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, v5);
  v7 = v4;
  v8 = [v7 updatedConfigurationForState_];

  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9374C0, &qword_18A652A70);
  result = swift_allocObject();
  *(result + 16) = v8;
  *a2 = result;
  return result;
}

id UIListContentConfiguration.ImageProperties._strokeColor.getter()
{
  v1 = [*(*v0 + 16) _strokeColor];

  return v1;
}

void UIListContentConfiguration.ImageProperties._strokeColor.setter(void *a1)
{
  sub_188F47E74(a1);
}

void (*UIListContentConfiguration.ImageProperties._strokeColor.modify(void *a1))(id *a1, uint64_t a2)
{
  a1[1] = v1;
  *a1 = [*(*v1 + 16) _strokeColor];
  return sub_188F469C8;
}

void sub_188F469E0(id *a1, char a2, void (*a3)(id))
{
  v6 = *a1;
  if (a2)
  {
    v4 = v6;
    a3(v6);

    v5 = v4;
  }

  else
  {
    a3(*a1);
    v5 = v6;
  }
}

uint64_t (*UIListContentConfiguration.ImageProperties._strokeColorTransformer.getter@<X0>(uint64_t (**a1)()@<X8>))()
{
  result = [*(*v1 + 16) _strokeColorTransformer];
  if (result)
  {
    v4 = result;
    result = swift_allocObject();
    *(result + 2) = v4;
    v5 = sub_188F4839C;
  }

  else
  {
    v5 = 0;
  }

  *a1 = v5;
  a1[1] = result;
  return result;
}

uint64_t (*sub_188F46AD8@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>))()
{
  result = [*(*a1 + 16) _strokeColorTransformer];
  if (result)
  {
    v4 = result;
    result = swift_allocObject();
    *(result + 2) = v4;
    v5 = sub_188F4839C;
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
  a2[1] = result;
  return result;
}

void sub_188F46B50(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, SEL *a6)
{
  v8 = *a1;
  v9 = a1[1];
  sub_188D738F4(*a1, v9);
  v10 = sub_188CA0300(&qword_1EA930C18, off_1E70EA110, &unk_1EA9374F0, &qword_18A652A90);
  v11 = v10;
  if (v8)
  {
    v15[4] = v8;
    v15[5] = v9;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 1107296256;
    v15[2] = sub_188BC2240;
    v15[3] = a5;
    v12 = _Block_copy(v15);
    v13 = v11;
  }

  else
  {
    v14 = v10;
    v12 = 0;
  }

  [v11 *a6];
  _Block_release(v12);
}

void sub_188F46C64(uint64_t *a1, uint64_t a2, SEL *a3)
{
  v5 = *a1;
  v6 = a1[1];
  v7 = sub_188CA0300(&qword_1EA930C18, off_1E70EA110, &unk_1EA9374F0, &qword_18A652A90);
  v8 = v7;
  if (v5)
  {
    v12[4] = v5;
    v12[5] = v6;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 1107296256;
    v12[2] = sub_188BC2240;
    v12[3] = a2;
    v9 = _Block_copy(v12);
    v10 = v8;
  }

  else
  {
    v11 = v7;
    v9 = 0;
  }

  [v8 *a3];
  _Block_release(v9);
}

void (*UIListContentConfiguration.ImageProperties._strokeColorTransformer.modify(uint64_t *a1))(uint64_t a1, uint64_t a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 64) = v1;
  v5 = [*(*v1 + 16) _strokeColorTransformer];
  if (v5)
  {
    v6 = v5;
    v5 = swift_allocObject();
    v5[2] = v6;
    v7 = sub_188F4839C;
  }

  else
  {
    v7 = 0;
  }

  *(v4 + 48) = v7;
  *(v4 + 56) = v5;
  return sub_188F46E1C;
}

void sub_188F46E38(uint64_t a1, char a2, uint64_t a3, SEL *a4, uint64_t a5)
{
  v6 = *a1;
  v7 = *(*a1 + 48);
  v8 = *(*a1 + 56);
  if (a2)
  {
    sub_188D738F4(*(*a1 + 48), v8);
    v10 = sub_188CA0300(&qword_1EA930C18, off_1E70EA110, &unk_1EA9374F0, &qword_18A652A90);
    v11 = v10;
    if (v7)
    {
      v6[4] = v7;
      v6[5] = v8;
      *v6 = MEMORY[0x1E69E9820];
      v6[1] = 1107296256;
      v6[2] = sub_188BC2240;
      v6[3] = a5;
      v12 = _Block_copy(v6);
      v13 = v11;
    }

    else
    {
      v19 = v10;
      v12 = 0;
    }

    [v11 *a4];
    _Block_release(v12);

    sub_188EB09A0(v6[6], v6[7]);
  }

  else
  {
    v15 = sub_188CA0300(&qword_1EA930C18, off_1E70EA110, &unk_1EA9374F0, &qword_18A652A90);
    v16 = v15;
    if (v7)
    {
      v6[4] = v7;
      v6[5] = v8;
      *v6 = MEMORY[0x1E69E9820];
      v6[1] = 1107296256;
      v6[2] = sub_188BC2240;
      v6[3] = a3;
      v17 = _Block_copy(v6);
      v18 = v16;
    }

    else
    {
      v20 = v15;
      v17 = 0;
    }

    [v16 *a4];
    _Block_release(v17);
  }

  free(v6);
}

UIColor __swiftcall UIListContentConfiguration.ImageProperties._resolvedStrokeColor(for:)(UIColor a1)
{
  v2 = [*(*v1 + 16) _resolvedStrokeColorForTintColor_];

  v3 = v2;
  result._cachedStyleString = v5;
  result._systemColorName = v4;
  result.super.isa = v3;
  return result;
}

id UIListContentConfiguration.ImageProperties._strokeWidth.setter(double a1)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *v1;
  if (isUniquelyReferenced_nonNull_native)
  {
    v5 = *(v4 + 16);
  }

  else
  {
    [*(v4 + 16) copy];
    sub_18A4A7DE8();
    swift_unknownObjectRelease();
    sub_188A34624(0, &qword_1EA930C18, off_1E70EA110);
    swift_dynamicCast();
    v5 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9374F0, &qword_18A652A90);
    v6 = swift_allocObject();
    *(v6 + 16) = v8;

    *v1 = v6;
  }

  return [v5 _setStrokeWidth_];
}

id (*UIListContentConfiguration.ImageProperties._strokeWidth.modify(void *a1))(double *a1)
{
  a1[1] = v1;
  [*(*v1 + 16) _strokeWidth];
  *a1 = v3;
  return sub_188F471B4;
}

uint64_t sub_188F471F8(uint64_t a1)
{
  v2 = sub_18A4A8918();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA937510, &unk_18A643A10);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v11 - v7;
  v11[1] = *v1;
  v11[0] = MEMORY[0x1E69E7CC0];
  v9 = sub_18A4A8908();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  (*(v3 + 104))(v5, *MEMORY[0x1E69E75D8], v2);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA932220, &unk_18A658B90);
  sub_188E32958();
  return sub_18A4A8928();
}

uint64_t sub_188F473C0()
{
  v1 = (v0 + OBJC_IVAR____TtC5UIKit29_UICustomContentConfiguration____lazy_storage___wrappedConfigurationIdentifier);
  if (*(v0 + OBJC_IVAR____TtC5UIKit29_UICustomContentConfiguration____lazy_storage___wrappedConfigurationIdentifier + 8))
  {
    v2 = *v1;
  }

  else
  {
    sub_188A53994(v0 + OBJC_IVAR____TtC5UIKit29_UICustomContentConfiguration_wrappedConfiguration, v5);
    __swift_project_boxed_opaque_existential_0(v5, v5[3]);
    swift_getDynamicType();
    __swift_destroy_boxed_opaque_existential_0Tm(v5);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9374E0, &qword_18A652A88);
    v2 = sub_18A4A72F8();
    *v1 = v2;
    v1[1] = v3;
  }

  return v2;
}

id sub_188F476EC(uint64_t a1)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *v1;
  if (isUniquelyReferenced_nonNull_native)
  {
    v5 = *(v4 + 16);
  }

  else
  {
    [*(v4 + 16) copy];
    sub_18A4A7DE8();
    swift_unknownObjectRelease();
    sub_188A34624(0, &qword_1EA930C18, off_1E70EA110);
    swift_dynamicCast();
    v5 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9374F0, &qword_18A652A90);
    v6 = swift_allocObject();
    *(v6 + 16) = v8;

    *v1 = v6;
  }

  return [v5 setPreferredSymbolConfiguration_];
}

id sub_188F477DC(uint64_t a1)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *v1;
  if (isUniquelyReferenced_nonNull_native)
  {
    v5 = *(v4 + 16);
  }

  else
  {
    [*(v4 + 16) copy];
    sub_18A4A7DE8();
    swift_unknownObjectRelease();
    sub_188A34624(0, &qword_1EA930C18, off_1E70EA110);
    swift_dynamicCast();
    v5 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9374F0, &qword_18A652A90);
    v6 = swift_allocObject();
    *(v6 + 16) = v8;

    *v1 = v6;
  }

  return [v5 setTintColor_];
}

id sub_188F478D4(uint64_t a1)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *v1;
  if (isUniquelyReferenced_nonNull_native)
  {
    v5 = *(v4 + 16);
  }

  else
  {
    [*(v4 + 16) copy];
    sub_18A4A7DE8();
    swift_unknownObjectRelease();
    sub_188A34624(0, &qword_1EA930C18, off_1E70EA110);
    swift_dynamicCast();
    v5 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9374F0, &qword_18A652A90);
    v6 = swift_allocObject();
    *(v6 + 16) = v8;

    *v1 = v6;
  }

  return [v5 setStrokeColor_];
}

id sub_188F479C4(uint64_t a1)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *v1;
  if (isUniquelyReferenced_nonNull_native)
  {
    v5 = *(v4 + 16);
  }

  else
  {
    [*(v4 + 16) copy];
    sub_18A4A7DE8();
    swift_unknownObjectRelease();
    sub_188A34624(0, &qword_1EA930C48, off_1E70EA118);
    swift_dynamicCast();
    v5 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA937500, &qword_18A652A98);
    v6 = swift_allocObject();
    *(v6 + 16) = v8;

    *v1 = v6;
  }

  return [v5 setFont_];
}

id sub_188F47AB4(uint64_t a1)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *v1;
  if (isUniquelyReferenced_nonNull_native)
  {
    v5 = *(v4 + 16);
  }

  else
  {
    [*(v4 + 16) copy];
    sub_18A4A7DE8();
    swift_unknownObjectRelease();
    sub_188A34624(0, &qword_1EA930C48, off_1E70EA118);
    swift_dynamicCast();
    v5 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA937500, &qword_18A652A98);
    v6 = swift_allocObject();
    *(v6 + 16) = v8;

    *v1 = v6;
  }

  return [v5 setColor_];
}

id sub_188F47BA4(uint64_t a1)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *v1;
  if (isUniquelyReferenced_nonNull_native)
  {
    v5 = *(v4 + 16);
  }

  else
  {
    [*(v4 + 16) copy];
    sub_18A4A7DE8();
    swift_unknownObjectRelease();
    sub_188A34624(0, &qword_1EA9305E8, off_1E70EA108);
    swift_dynamicCast();
    v5 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9374C0, &qword_18A652A70);
    v6 = swift_allocObject();
    *(v6 + 16) = v8;

    *v1 = v6;
  }

  return [v5 setImage_];
}

id sub_188F47C94(uint64_t a1)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *v1;
  if (isUniquelyReferenced_nonNull_native)
  {
    v5 = *(v4 + 16);
  }

  else
  {
    [*(v4 + 16) copy];
    sub_18A4A7DE8();
    swift_unknownObjectRelease();
    sub_188A34624(0, &qword_1EA9305E8, off_1E70EA108);
    swift_dynamicCast();
    v5 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9374C0, &qword_18A652A70);
    v6 = swift_allocObject();
    *(v6 + 16) = v8;

    *v1 = v6;
  }

  return [v5 setAttributedText_];
}

id sub_188F47D84(uint64_t a1)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *v1;
  if (isUniquelyReferenced_nonNull_native)
  {
    v5 = *(v4 + 16);
  }

  else
  {
    [*(v4 + 16) copy];
    sub_18A4A7DE8();
    swift_unknownObjectRelease();
    sub_188A34624(0, &qword_1EA9305E8, off_1E70EA108);
    swift_dynamicCast();
    v5 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9374C0, &qword_18A652A70);
    v6 = swift_allocObject();
    *(v6 + 16) = v8;

    *v1 = v6;
  }

  return [v5 setSecondaryAttributedText_];
}

id sub_188F47E74(uint64_t a1)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *v1;
  if (isUniquelyReferenced_nonNull_native)
  {
    v5 = *(v4 + 16);
  }

  else
  {
    [*(v4 + 16) copy];
    sub_18A4A7DE8();
    swift_unknownObjectRelease();
    sub_188A34624(0, &qword_1EA930C18, off_1E70EA110);
    swift_dynamicCast();
    v5 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9374F0, &qword_18A652A90);
    v6 = swift_allocObject();
    *(v6 + 16) = v8;

    *v1 = v6;
  }

  return [v5 _setStrokeColor_];
}

unint64_t sub_188F47F68()
{
  result = qword_1EA937528;
  if (!qword_1EA937528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA937528);
  }

  return result;
}

unint64_t sub_188F47FC0()
{
  result = qword_1EA937530;
  if (!qword_1EA937530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA937530);
  }

  return result;
}

unint64_t sub_188F48018()
{
  result = qword_1EA937538;
  if (!qword_1EA937538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA937538);
  }

  return result;
}

unint64_t sub_188F48070()
{
  result = qword_1EA937540;
  if (!qword_1EA937540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA937540);
  }

  return result;
}

unint64_t sub_188F480C8()
{
  result = qword_1EA937548;
  if (!qword_1EA937548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA937548);
  }

  return result;
}

id keypath_get_93Tm@<X0>(uint64_t a1@<X0>, SEL *a2@<X3>, void *a3@<X8>)
{
  result = [*(*a1 + 16) *a2];
  *a3 = v5;
  a3[1] = v6;
  return result;
}

void *keypath_get_113Tm@<X0>(uint64_t a1@<X0>, SEL *a2@<X3>, void *(*a3)(uint64_t *__return_ptr, id)@<X4>, _BYTE *a4@<X8>)
{
  result = a3(&v6, [*(*a1 + 16) *a2]);
  *a4 = v6;
  return result;
}

uint64_t keypath_set_136Tm(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t *))
{
  v7 = *a1;

  return a5(&v7);
}

void *keypath_get_135Tm@<X0>(void *a1@<X0>, void *(*a2)(void *__return_ptr)@<X3>, void *a3@<X8>)
{
  v5[1] = *a1;
  result = a2(v5);
  *a3 = v5[0];
  return result;
}

uint64_t _UIWindowSceneFullscreenPlacement.hashValue.getter()
{
  sub_18A4A8888();
  sub_18A4A7C98();
  return sub_18A4A88E8();
}

uint64_t sub_188F48444@<X0>(uint64_t *a1@<X8>)
{
  v2 = [objc_allocWithZone(_UIWindowSceneFullscreenPlacement) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9376F0, &qword_18A652FA0);
  result = swift_allocObject();
  *(result + 16) = v2;
  *a1 = result;
  return result;
}

unint64_t sub_188F484A8(uint64_t a1)
{
  result = sub_188F484D0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_188F484D0()
{
  result = qword_1EA9376F8;
  if (!qword_1EA9376F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9376F8);
  }

  return result;
}

unint64_t sub_188F48528()
{
  result = qword_1EA937700;
  if (!qword_1EA937700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA937700);
  }

  return result;
}

unint64_t sub_188F4858C()
{
  result = qword_1EA937708;
  if (!qword_1EA937708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA937708);
  }

  return result;
}

unint64_t type metadata accessor for _UIContextMenuModifierKeyService()
{
  result = qword_1EA937790;
  if (!qword_1EA937790)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EA937790);
  }

  return result;
}

void sub_188F489E4()
{
  v1 = v0;
  v2 = OBJC_IVAR____UIContextMenuModifierKeyService_observations;
  swift_beginAccess();
  v3 = *(v0 + v2);
  v4 = 1 << *(v3 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v3 + 64);
  v7 = (v4 + 63) >> 6;

  v8 = 0;
  if (!v6)
  {
    goto LABEL_7;
  }

  do
  {
    while (1)
    {
      v9 = v8;
LABEL_15:
      v12 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v13 = (v9 << 9) | (8 * v12);
      v14 = *(*(v3 + 48) + v13);
      sub_188F48C58(*(v3 + 56) + v13, &v26);
      v24 = v14;
      sub_188E904EC(&v26, &v25);
LABEL_16:
      sub_188F48C90(&v24, &v29);
      v15 = v29;
      if (!v29)
      {

        return;
      }

      sub_188E904EC(&v30, v28);
      Strong = swift_unknownObjectWeakLoadStrong();
      if (!Strong)
      {
        break;
      }

      [Strong modifierKeyServiceDidChangeCurrentModifierFlags];
      swift_unknownObjectRelease();
      sub_188F48D00(v28);
      if (!v6)
      {
        goto LABEL_7;
      }
    }

    swift_beginAccess();
    v17 = sub_188A403F4(v15);
    v19 = v18;
    if (v18)
    {
      v20 = v17;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v22 = *(v1 + v2);
      *(v1 + v2) = 0x8000000000000000;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_188FA3E00();
      }

      sub_188E904EC(*(v22 + 56) + 8 * v20, &v26);
      sub_188F9DDC8(v20, v22);
      *(v1 + v2) = v22;
    }

    else
    {
      v26 = 0;
    }

    v27 = (v19 & 1) == 0;
    swift_endAccess();
    sub_188D68DEC(&v26);
    v23 = sub_18A4A7258();
    __UIKIT_SOFT_ASSERT_FAIL(v23);

    sub_188F48D00(v28);
  }

  while (v6);
LABEL_7:
  if (v7 <= v8 + 1)
  {
    v10 = v8 + 1;
  }

  else
  {
    v10 = v7;
  }

  v11 = v10 - 1;
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
      v24 = 0;
      v25 = 0;
      v8 = v11;
      goto LABEL_16;
    }

    v6 = *(v3 + 64 + 8 * v9);
    ++v8;
    if (v6)
    {
      v8 = v9;
      goto LABEL_15;
    }
  }

  __break(1u);
}

uint64_t sub_188F48C90(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA937798, &qword_18A6530A8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_188F48D64()
{
  result = qword_1EA9377A8;
  if (!qword_1EA9377A8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EA9377A8);
  }

  return result;
}

void _UIRemoteView._intelligenceCollectContent(in:collector:)(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v11 = sub_18A4A3BA8();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v18[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {
    v15 = [v5 remoteViewController];
    if (!v15)
    {
LABEL_5:
      v19.receiver = v5;
      v19.super_class = _UIRemoteView;
      objc_msgSendSuper2(&v19, sel__intelligenceCollectContentIn_collector_, a1, a2, a3, a4, a5);
      return;
    }

    v16 = v15;
    if ([v15 _isAppProtectionLocked])
    {

      goto LABEL_5;
    }

    sub_18A4A3448();
    __swift_project_boxed_opaque_existential_0(v18, v18[3]);
    sub_18A4A3E78();
    (*(v12 + 104))(v14, *MEMORY[0x1E69DBBE0], v11);
    sub_18A4A3418();

    (*(v12 + 8))(v14, v11);
    __swift_destroy_boxed_opaque_existential_0Tm(v18);
  }
}

void _UIRemoteView._intelligenceCollectRemoteContent(in:remoteContextWrapper:)(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v11 = [v5 remoteViewController];
  if (v11)
  {
    v12 = v11;
    [v11 _intelligenceCollectRemoteContentInVisibleRect_withRemoteContextWrapper_];
  }
}

uint64_t sub_188F491B0(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = *(result + 16);
  if (v3 <= v2)
  {
    v4 = *(a2 + 16);
  }

  else
  {
    v4 = *(result + 16);
  }

  if (v4)
  {
    v5 = 0;
    v6 = 0.0;
    do
    {
      if (v5 >= v2)
      {
        v8 = 0.0;
      }

      else
      {
        v8 = *(a2 + 32 + 8 * v5);
      }

      v9 = 0.0;
      if (v5 < v3)
      {
        v9 = *(result + 32 + 8 * v5);
      }

      ++v5;
      v7 = vabdd_f64(v8, v9) / 0.001;
      if (v6 <= v7)
      {
        v6 = v7;
      }
    }

    while (v4 != v5);
  }

  return result;
}

BOOL sub_188F4923C(uint64_t a1)
{
  v2 = *(*v1 + 16);
  v3 = *(*a1 + 16);
  if (v2)
  {
    v4 = v2 == v3;
  }

  else
  {
    v4 = 1;
  }

  return v4 || v3 == 0;
}

BOOL sub_188F49284()
{
  v1 = *(*v0 + 16);
  v2 = (*v0 + 32);
  do
  {
    v3 = v1;
    if (v1-- == 0)
    {
      break;
    }

    v5 = *v2++;
  }

  while ((~v5 & 0x7FF0000000000000) != 0);
  return v3 != 0;
}

double sub_188F492BC()
{
  v1 = *v0;
  v2 = *&(*v0)[1].f64[0];
  if (!v2)
  {
    return 0.0;
  }

  if (v2 <= 3)
  {
    v3 = 0;
    result = 0.0;
LABEL_8:
    v9 = v2 - v3;
    v10 = &v1[2].f64[v3];
    do
    {
      v11 = *v10++;
      result = result + v11 * v11;
      --v9;
    }

    while (v9);
    return result;
  }

  v3 = v2 & 0x7FFFFFFFFFFFFFFCLL;
  v5 = v1 + 3;
  result = 0.0;
  v6 = v2 & 0x7FFFFFFFFFFFFFFCLL;
  do
  {
    v7 = vmulq_f64(v5[-1], v5[-1]);
    v8 = vmulq_f64(*v5, *v5);
    result = result + v7.f64[0] + v7.f64[1] + v8.f64[0] + v8.f64[1];
    v5 += 2;
    v6 -= 4;
  }

  while (v6);
  if (v2 != v3)
  {
    goto LABEL_8;
  }

  return result;
}

void sub_188F49390(uint64_t *a1, uint64_t *a2)
{
  sub_188D85564(*a1, *a2);
  v4 = v3;

  *a1 = v4;
}

void sub_188F49408(uint64_t *a1, uint64_t *a2)
{
  sub_188D7EBC0(*a1, *a2);
  v4 = v3;

  *a1 = v4;
}

uint64_t UITextFormattingViewController.FormattingStyle.styleKey.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t UITextFormattingViewController.FormattingStyle.title.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for UITextFormattingViewController.FormattingStyle(0) + 20);
  v4 = sub_18A4A2808();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for UITextFormattingViewController.FormattingStyle(uint64_t a1)
{
  result = qword_1EA9377B8;
  if (!qword_1EA9377B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t UITextFormattingViewController.FormattingStyle.attributes.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for UITextFormattingViewController.FormattingStyle(0) + 24);
  v4 = sub_18A4A2668();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t UITextFormattingViewController.FormattingStyle.init(styleKey:title:attributes:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  *a5 = a1;
  *(a5 + 1) = a2;
  v8 = type metadata accessor for UITextFormattingViewController.FormattingStyle(0);
  v9 = *(v8 + 20);
  v10 = sub_18A4A2808();
  (*(*(v10 - 8) + 32))(&a5[v9], a3, v10);
  v11 = *(v8 + 24);
  v12 = sub_18A4A2668();
  v13 = *(*(v12 - 8) + 32);

  return v13(&a5[v11], a4, v12);
}

uint64_t UITextFormattingViewController.FormattingStyle.init(styleKey:title:attributes:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a5@<X8>)
{
  *a5 = a1;
  *(a5 + 1) = a2;
  v7 = *(type metadata accessor for UITextFormattingViewController.FormattingStyle(0) + 20);
  v8 = sub_18A4A2808();
  v11 = *(v8 - 8);
  (*(v11 + 16))(&a5[v7], a3, v8);
  sub_18A4A2698();
  v9 = *(v11 + 8);

  return v9(a3, v8);
}

uint64_t static UITextFormattingViewController.FormattingStyle.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_18A4A86C8() & 1) == 0)
  {
    return 0;
  }

  v5 = type metadata accessor for UITextFormattingViewController.FormattingStyle(0);
  if ((MEMORY[0x18CFDD740](a1 + *(v5 + 20), a2 + *(v5 + 20)) & 1) == 0)
  {
    return 0;
  }

  v6 = *(v5 + 24);

  return MEMORY[0x1EEDC33C8](a1 + v6, a2 + v6);
}