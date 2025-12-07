void sub_27455E880()
{
  v1 = v0;
  v82.receiver = v0;
  v82.super_class = type metadata accessor for WFSheetView();
  objc_msgSendSuper2(&v82, sel_layoutSubviews);
  v2 = sub_27455CBF4();
  v3 = v2[2];
  if (v3 <= 1)
  {
    if (v3 != 1)
    {
LABEL_38:
      __break(1u);
      return;
    }
  }

  else
  {
    OUTLINED_FUNCTION_41_5();
    v5 = v2[2];
    if (!v5)
    {
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    v6 = (v2 + 4);
    if (v4 > *(v2 + 4))
    {
      v7 = 1;
      while (v7 <= v5)
      {
        v8 = *v6;
        OUTLINED_FUNCTION_41_5();
        if (v8 >= v9)
        {
          v5 = v2[2];
          if (!v5)
          {
            goto LABEL_32;
          }
        }

        else
        {
          OUTLINED_FUNCTION_41_5();
          v5 = v2[2];
          if (v7 >= v5)
          {
            goto LABEL_33;
          }

          if (v10 <= v6[2])
          {
            v65 = v6[1];
            v66 = v6[3] - v65;
            OUTLINED_FUNCTION_41_5();
            v68 = v65 + v66 * (v67 - *v6) / (v6[2] - *v6);
            goto LABEL_15;
          }
        }

        ++v7;
        v6 += 2;
        if (v3 == v7)
        {
          v68 = *&v2[2 * v5 + 3];
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }
  }

  v68 = *(v2 + 5);
LABEL_15:
  v11 = [v0 traitCollection];
  [v11 displayCornerRadius];

  sub_27455E2FC();
  OUTLINED_FUNCTION_18_9();
  CGRectGetHeight(v83);
  v12 = OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_allowsDismissal;
  OUTLINED_FUNCTION_29_3(&v1[OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_allowsDismissal], v81);
  v13 = ~v1[v12] + v3;
  if (v13 < 0)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  if (v13 >= v2[2])
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  OUTLINED_FUNCTION_18_9();
  CGRectGetHeight(v84);
  v14 = *&v1[OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_translationView];
  [v14 frame];
  if (v1[OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_isTrackingPanGesture] == 1)
  {
    [v14 frame];
  }

  else
  {
    v15 = OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_state;
    OUTLINED_FUNCTION_29_3(&v1[OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_state], v80);
    LOBYTE(v79.a) = v1[v15];
    sub_27456230C(&v79);
  }

  OUTLINED_FUNCTION_18_9();
  CGRectGetWidth(v85);
  v75 = v68 + v68;
  CGSizeMake();
  v16 = OUTLINED_FUNCTION_36_5();
  [v16 v17];
  v18 = *&v1[OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_glassView];
  [v18 transform];
  v71 = *&v79.c;
  v72 = *&v79.a;
  ty = v79.ty;
  tx = v79.tx;
  v79.a = 1.0;
  v79.b = 0.0;
  v79.c = 0.0;
  v79.d = 1.0;
  v79.tx = 0.0;
  v79.ty = 0.0;
  [v18 setTransform_];
  [v14 bounds];
  [v18 setFrame_];
  [v18 bounds];
  v19 = OUTLINED_FUNCTION_27_8();
  [v19 v20];
  v21 = *&v1[OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_verticalStretchTransformView];
  [v21 transform];
  v22 = v79.tx;
  v23 = v79.ty;
  v73 = *&v79.c;
  v74 = *&v79.a;
  OUTLINED_FUNCTION_34_7();
  [v21 v24];
  [v18 bounds];
  v25 = OUTLINED_FUNCTION_27_8();
  [v25 v26];
  *&v79.a = v74;
  *&v79.c = v73;
  v79.tx = v22;
  v79.ty = v23;
  [v21 setTransform_];
  [v14 bounds];
  CGRectGetWidth(v86);
  v27 = [v1 traitCollection];
  [v27 displayScale];

  v28 = [v1 traitCollection];
  [v28 displayScale];

  v29 = [v1 traitCollection];
  [v29 displayScale];

  CGSizeMake();
  v30 = OUTLINED_FUNCTION_27_8();
  [v30 v31];
  v32 = OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_contentProvider;
  OUTLINED_FUNCTION_29_3(&v1[OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_contentProvider], v76);
  sub_27456329C(&v1[v32], &v77);
  if (v78)
  {
    sub_2743F45D0(&v77, &v79);
    OUTLINED_FUNCTION_18_9();
    CGRectGetWidth(v87);
    OUTLINED_FUNCTION_18_9();
    CGRectGetHeight(v88);
    OUTLINED_FUNCTION_39_5();
    v33 = *&v1[OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_contentView];
    v34 = OUTLINED_FUNCTION_36_5();
    [v34 v35];
    v36 = OUTLINED_FUNCTION_7_16();
    [v37 v38];
    d = v79.d;
    v40 = v79.tx;
    __swift_project_boxed_opaque_existential_1(&v79, *&v79.d);
    v41 = (*(*&v40 + 8))(COERCE_CGFLOAT(*&d), COERCE_CGFLOAT(*&v40));
    OUTLINED_FUNCTION_18_9();
    if (!v2[2])
    {
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    [v41 frame];
    v42 = OUTLINED_FUNCTION_27_8();
    [v42 v43];

    __swift_destroy_boxed_opaque_existential_1(&v79);
    v44 = &selRef_editingContext;
  }

  else
  {

    sub_27456337C(&v77);
    v33 = *&v1[OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_contentView];
    v44 = &selRef_editingContext;
    OUTLINED_FUNCTION_34_7();
    [v33 v45];
    OUTLINED_FUNCTION_18_9();
    v46 = OUTLINED_FUNCTION_36_5();
    [v46 v47];
    OUTLINED_FUNCTION_18_9();
    v48 = 1.0 - v75 / CGRectGetWidth(v89);
    OUTLINED_FUNCTION_18_9();
    Width = CGRectGetWidth(v90);
    CGAffineTransformMakeScale(&v79, v48, 1.0 - v75 / Width);
    [v33 setTransform_];
    v50 = *MEMORY[0x277CBF348];
    v51 = *(MEMORY[0x277CBF348] + 8);
    [v33 frame];
    v52 = OUTLINED_FUNCTION_36_5();
    [v52 v53];
    OUTLINED_FUNCTION_18_9();
    CGRectGetWidth(v91);
    OUTLINED_FUNCTION_18_9();
    CGRectGetHeight(v92);
    OUTLINED_FUNCTION_39_5();
    v54 = OUTLINED_FUNCTION_27_8();
    [v54 v55];
  }

  OUTLINED_FUNCTION_18_9();
  if (v57 != *MEMORY[0x277CBF3A8] || v56 != *(MEMORY[0x277CBF3A8] + 8))
  {
    v1[OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_completedInitialValidLayoutPass] = 1;
    v59 = &v1[OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_pendingLayoutWork];
    v60 = *&v1[OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_pendingLayoutWork];
    if (v60)
    {
      v61 = v59[1];

      [v33 setNeedsLayout];
      v60([v33 layoutIfNeeded]);
      sub_274406A94(v60, v61);
      v62 = *v59;
      v63 = v59[1];
      *v59 = 0;
      v59[1] = 0;
      sub_274406A94(v62, v63);
    }
  }

  sub_274562BF8();
  v64 = v44[371];
  *&v79.a = v72;
  *&v79.c = v71;
  v79.tx = tx;
  v79.ty = ty;
  [v18 v64];
}

id sub_27455F08C(void *a1)
{
  v3 = sub_27455CBF4()[2];

  if (v3)
  {
    v6 = [a1 state];
    if ((v6 - 3) >= 3)
    {
      if (v6 == 2)
      {
        sub_27455F45C(a1);
      }

      else if (v6 == 1)
      {
        *(v1 + OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_isTrackingPanGesture) = 1;
        sub_27455F1F8(a1);
      }
    }

    else
    {
      sub_274560D60(a1);
      *(v1 + OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_isTrackingPanGesture) = 0;
    }

    v7 = OUTLINED_FUNCTION_38_4();

    return [v7 v8];
  }

  else
  {
    result = OUTLINED_FUNCTION_20_13("Fatal error", 11, 2, 65, 0x800000027468D2D0, "WorkflowEditor/WFSheetView.swift", v4, v5, 403, 0);
    __break(1u);
  }

  return result;
}

void sub_27455F1F8(void *a1)
{
  v2 = v1;
  [*(v1 + OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_translationView) frame];
  v4 = (v1 + OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_initialGestureOrigin);
  *v4 = v5;
  *(v4 + 1) = v6;
  v7 = OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_scrollView;
  OUTLINED_FUNCTION_29_3(v1 + OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_scrollView, v20);
  v8 = *(v1 + v7);
  if (v8)
  {
    [v8 contentOffset];
  }

  else
  {
    v9 = 0;
  }

  v10 = OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_initialGestureScrollOffset;
  *(v1 + OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_initialGestureScrollOffset) = v9;
  swift_beginAccess();
  _UIUpdateRequestActivate();
  swift_endAccess();
  v11 = *(v1 + v7);
  if (v11)
  {
    sub_274412734(0, &qword_28094C5E0, 0x277D82BB8);
    v12 = v11;
    v13 = [v12 panGestureRecognizer];
    v14 = sub_27463BF7C();

    if (v14)
    {
      if (*(v2 + v10) >= 0.0)
      {

        v4[1] = v4[1] - *(v2 + v10);
      }

      else
      {
        [a1 velocityInView_];
        if (v15 <= 0.0)
        {

          *(v2 + v10) = 0x3FF0000000000000;
        }

        else
        {
          OUTLINED_FUNCTION_5();
          v16 = swift_allocObject();
          *(v16 + 16) = v12;
          v17 = objc_allocWithZone(MEMORY[0x277D75D40]);
          v18 = v12;
          v19 = sub_2745FB6C4(sub_274564818, v16, 0.45, 1.0);
          [v19 startAnimation];
        }
      }
    }

    else
    {
    }
  }
}

id sub_27455F3F4(void *a1)
{
  [a1 contentInset];
  [a1 contentOffset];

  return [a1 setContentOffset_];
}

void sub_27455F45C(void *a1)
{
  v2 = v1;
  [a1 translationInView_];
  v5 = v4;
  v6 = OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_scrollView;
  OUTLINED_FUNCTION_29_3(&v1[OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_scrollView], v68);
  v7 = *&v1[v6];
  if (v7 && (v8 = [v7 panGestureRecognizer]) != 0)
  {
    v9 = v8;
    sub_274412734(0, &qword_280951308, 0x277D757F8);
    v10 = a1;
    v11 = sub_27463BF7C();
  }

  else
  {
    v11 = 0;
  }

  if (*&v1[OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_initialGestureScrollOffset] <= 0.0 || (v11 & 1) == 0)
  {
    v12 = v5 + *&v1[OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_initialGestureOrigin + 8];
    v13 = sub_27455CBF4();
    if (v13[2])
    {
      v14 = *(v13 + 4);

      if (v12 < v14)
      {
        objc_opt_self();
        v15 = swift_allocObject();
        *(v15 + 16) = v1;
        *(v15 + 24) = v11 & 1;
        *(v15 + 32) = v14;
        *(v15 + 40) = v12;
        *(v15 + 48) = a1;
        v66 = sub_27456477C;
        v67 = v15;
        aBlock = MEMORY[0x277D85DD0];
        v63 = 1107296256;
        OUTLINED_FUNCTION_9_19();
        v64 = v16;
        v65 = &block_descriptor_166;
        v17 = _Block_copy(&aBlock);
        v18 = a1;
        v19 = v1;

        v66 = CGSizeMake;
        v67 = 0;
        aBlock = MEMORY[0x277D85DD0];
        OUTLINED_FUNCTION_10_23();
        v64 = v20;
        v65 = &block_descriptor_169;
        v21 = _Block_copy(&aBlock);
        OUTLINED_FUNCTION_0_39();
        v22 = OUTLINED_FUNCTION_38_4();
        [v22 v23];
        _Block_release(v21);
        _Block_release(v17);
        OUTLINED_FUNCTION_5();
        v24 = swift_allocObject();
        *(v24 + 16) = v19;
        v66 = sub_274564794;
        v67 = v24;
        aBlock = MEMORY[0x277D85DD0];
        v63 = 1107296256;
        v64 = sub_27443E0E8;
        v65 = &block_descriptor_175;
        v25 = _Block_copy(&aBlock);
        v26 = v19;

        v66 = CGSizeMake;
        v67 = 0;
        aBlock = MEMORY[0x277D85DD0];
        OUTLINED_FUNCTION_10_23();
        v64 = v27;
        v65 = &block_descriptor_178;
        v28 = _Block_copy(&aBlock);
        OUTLINED_FUNCTION_0_39();
        v29 = OUTLINED_FUNCTION_38_4();
        [v29 v30];
        _Block_release(v28);
        _Block_release(v25);
        goto LABEL_18;
      }
    }

    else
    {
    }

    v31 = sub_27455CBF4();
    v32 = COERCE_DOUBLE(sub_27455C20C(v31));
    v34 = v33;

    if (v34 & 1) != 0 || v12 <= v32 || (v35 = OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_allowsDismissal, OUTLINED_FUNCTION_29_3(&v2[OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_allowsDismissal], &v61), (v2[v35]))
    {
      v36 = [v2 window];
      [a1 velocityInView_];

      v37 = objc_opt_self();
      OUTLINED_FUNCTION_39();
      v38 = swift_allocObject();
      *(v38 + 16) = v2;
      *(v38 + 24) = v12;
      OUTLINED_FUNCTION_5_31();
      v63 = 1107296256;
      OUTLINED_FUNCTION_7_26();
      v64 = v39;
      v65 = &block_descriptor_148;
      v40 = _Block_copy(&aBlock);
      v41 = v2;

      v66 = CGSizeMake;
      v67 = 0;
      aBlock = MEMORY[0x277D85DD0];
      v63 = 1107296256;
      v64 = sub_27456009C;
      v65 = &block_descriptor_151;
      v42 = _Block_copy(&aBlock);
      OUTLINED_FUNCTION_0_39();
      [v37 v43];
      _Block_release(v42);
      _Block_release(v40);
      sub_27455FB78(a1, v41);
      if (v11)
      {
        v44 = *&v2[v6];
        if (v44)
        {
          v45 = v44;
          [v45 contentInset];
          [v45 contentOffset];
          [v45 setContentOffset_];
LABEL_17:
        }
      }
    }

    else
    {
      objc_opt_self();
      v53 = swift_allocObject();
      *(v53 + 16) = v2;
      *(v53 + 24) = v32;
      *(v53 + 32) = v12;
      OUTLINED_FUNCTION_5_31();
      v63 = 1107296256;
      OUTLINED_FUNCTION_7_26();
      v64 = v54;
      v65 = &block_descriptor_157;
      v55 = _Block_copy(&aBlock);
      v56 = v2;

      v66 = CGSizeMake;
      v67 = 0;
      aBlock = MEMORY[0x277D85DD0];
      v63 = 1107296256;
      v64 = sub_27456009C;
      v65 = &block_descriptor_160;
      v57 = _Block_copy(&aBlock);
      OUTLINED_FUNCTION_0_39();
      v58 = OUTLINED_FUNCTION_38_4();
      [v58 v59];
      _Block_release(v57);
      _Block_release(v55);
      sub_27455FB78(a1, v56);
      if (v11)
      {
        v60 = *&v2[v6];
        if (v60)
        {
          v45 = v60;
          [v45 contentOffset];
          [v45 setContentOffset_];
          goto LABEL_17;
        }
      }
    }

LABEL_18:
    [*&v2[OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_translationView] frame];
    v47 = v46;
    v48 = sub_27455CBF4();
    v49 = COERCE_DOUBLE(sub_27455C20C(v48));
    v51 = v50;

    if (v51)
    {
      __break(1u);
    }

    else
    {
      if (v49 + -10.0 <= v47)
      {
        v52 = 1;
      }

      else
      {
        v52 = 3;
      }

      LOBYTE(aBlock) = v52;
      sub_27455D8B0(&aBlock);
    }
  }
}

void sub_27455FB78(void *a1, id a2)
{
  v4 = [a2 window];
  [a1 velocityInView_];
  v6 = v5;

  v7 = 1000.0;
  if (v6 <= 1000.0)
  {
    v7 = v6;
  }

  if (v7 > -1000.0)
  {
    v8 = v7;
  }

  else
  {
    v8 = -1000.0;
  }

  v9 = objc_opt_self();
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = v8;
  v22 = sub_2745647DC;
  v23 = v10;
  v18 = MEMORY[0x277D85DD0];
  v19 = 1107296256;
  v20 = sub_27443E0E8;
  v21 = &block_descriptor_214;
  v11 = _Block_copy(&v18);
  v12 = a2;

  v22 = CGSizeMake;
  v23 = 0;
  v18 = MEMORY[0x277D85DD0];
  v19 = 1107296256;
  v20 = sub_27456009C;
  v21 = &block_descriptor_217;
  v13 = _Block_copy(&v18);
  [v9 _animateUsingSpringWithDampingRatio_response_tracking_dampingRatioSmoothing_responseSmoothing_targetSmoothing_projectionDeceleration_animations_completion_];
  _Block_release(v13);
  _Block_release(v11);
  v14 = swift_allocObject();
  *(v14 + 16) = v12;
  *(v14 + 24) = v8;
  v22 = sub_2745647E8;
  v23 = v14;
  v18 = MEMORY[0x277D85DD0];
  v19 = 1107296256;
  v20 = sub_27443E0E8;
  v21 = &block_descriptor_223;
  v15 = _Block_copy(&v18);
  v16 = v12;

  v22 = CGSizeMake;
  v23 = 0;
  v18 = MEMORY[0x277D85DD0];
  v19 = 1107296256;
  v20 = sub_27456009C;
  v21 = &block_descriptor_226;
  v17 = _Block_copy(&v18);
  [v9 _animateUsingSpringWithDampingRatio_response_tracking_dampingRatioSmoothing_responseSmoothing_targetSmoothing_projectionDeceleration_animations_completion_];
  _Block_release(v17);
  _Block_release(v15);
}

uint64_t sub_27455FE74(void *a1, double a2)
{
  v4 = objc_opt_self();
  sub_27463BC8C();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_274564800;
  *(v12 + 24) = v11;
  v19[4] = sub_27440D744;
  v19[5] = v12;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 1107296256;
  v19[2] = sub_2745F36FC;
  v19[3] = &block_descriptor_246;
  v13 = _Block_copy(v19);
  v14 = a1;

  LODWORD(v15) = v6;
  LODWORD(v16) = v8;
  LODWORD(v17) = v10;
  [v4 _modifyAnimationsWithPreferredFrameRateRange_updateReason_animations_];
  _Block_release(v13);

  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }

  return result;
}

id sub_27456002C(uint64_t a1, double a2)
{
  v2 = *(a1 + OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_glassView);
  CGAffineTransformMakeScale(&v4, a2 / 30000.0 + 1.0, 1.0);
  return [v2 setTransform_];
}

uint64_t sub_27456009C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  v5(a2, a3);
}

uint64_t sub_2745600FC(void *a1, double a2)
{
  v4 = objc_opt_self();
  sub_27463BC8C();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_2745647F4;
  *(v12 + 24) = v11;
  v19[4] = sub_27440D744;
  v19[5] = v12;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 1107296256;
  v19[2] = sub_2745F36FC;
  v19[3] = &block_descriptor_236;
  v13 = _Block_copy(v19);
  v14 = a1;

  LODWORD(v15) = v6;
  LODWORD(v16) = v8;
  LODWORD(v17) = v10;
  [v4 _modifyAnimationsWithPreferredFrameRateRange_updateReason_animations_];
  _Block_release(v13);

  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }

  return result;
}

id sub_2745602B4(uint64_t a1, double a2)
{
  v2 = *(a1 + OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_verticalStretchTransformView);
  CGAffineTransformMakeScale(&v4, 1.0, a2 / -15000.0 + 1.0);
  return [v2 setTransform_];
}

uint64_t sub_274560328(void *a1, char a2, void *a3, double a4, double a5)
{
  v10 = objc_opt_self();
  sub_27463BC8C();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  *(v17 + 24) = a2;
  *(v17 + 32) = a4;
  *(v17 + 40) = a5;
  *(v17 + 48) = a3;
  v18 = swift_allocObject();
  *(v18 + 16) = sub_27456479C;
  *(v18 + 24) = v17;
  v26[4] = sub_27440D744;
  v26[5] = v18;
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 1107296256;
  v26[2] = sub_2745F36FC;
  v26[3] = &block_descriptor_198;
  v19 = _Block_copy(v26);
  v20 = a1;
  v21 = a3;

  LODWORD(v22) = v12;
  LODWORD(v23) = v14;
  LODWORD(v24) = v16;
  [v10 _modifyAnimationsWithPreferredFrameRateRange_updateReason_animations_];
  _Block_release(v19);

  LOBYTE(v10) = swift_isEscapingClosureAtFileLocation();

  if (v10)
  {
    __break(1u);
  }

  return result;
}

id sub_274560508(char *a1, char a2, void *a3, double a4, double a5)
{
  sub_27456360C(1.0);
  if ((a2 & 1) != 0 && (v11 = OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_scrollView, swift_beginAccess(), (v12 = *&a1[v11]) != 0) && ([v12 contentOffset], v13 != 0.0))
  {
    v17 = *&a1[OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_translationView];
    [v17 frame];
    [v17 setFrame_];
  }

  else
  {
    v14 = *&a1[OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_translationView];
    sub_27455CA34(v10);
    log((a4 - a5) / v15 + 1.0);
    [v14 frame];
    [v14 setFrame_];
    sub_27455FB78(a3, a1);
  }

  [a1 setNeedsLayout];
  return [a1 layoutIfNeeded];
}

uint64_t sub_274560650(void *a1)
{
  v2 = objc_opt_self();
  sub_27463BC8C();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_274564900;
  *(v10 + 24) = v9;
  v17[4] = sub_27440D744;
  v17[5] = v10;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 1107296256;
  v17[2] = sub_2745F36FC;
  v17[3] = &block_descriptor_188;
  v11 = _Block_copy(v17);
  v12 = a1;

  LODWORD(v13) = v4;
  LODWORD(v14) = v6;
  LODWORD(v15) = v8;
  [v2 _modifyAnimationsWithPreferredFrameRateRange_updateReason_animations_];
  _Block_release(v11);

  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_274560800(void *a1, double a2, double a3)
{
  v6 = objc_opt_self();
  sub_27463BC8C();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;
  *(v13 + 32) = a3;
  v14 = swift_allocObject();
  *(v14 + 16) = sub_2745647D0;
  *(v14 + 24) = v13;
  v21[4] = sub_27440D744;
  v21[5] = v14;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 1107296256;
  v21[2] = sub_2745F36FC;
  v21[3] = &block_descriptor_208;
  v15 = _Block_copy(v21);
  v16 = a1;

  LODWORD(v17) = v8;
  LODWORD(v18) = v10;
  LODWORD(v19) = v12;
  [v6 _modifyAnimationsWithPreferredFrameRateRange_updateReason_animations_];
  _Block_release(v15);

  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    __break(1u);
  }

  return result;
}

void sub_2745609C4(char *a1, double a2, double a3)
{
  v4 = *&a1[OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_translationView];
  log((a3 - a2) / *&a1[OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_bottomRubberBandRange] + 1.0);
  [v4 frame];
  [v4 setFrame_];
  v5 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:0.0 alpha:0.0];
  [a1 setBackgroundColor_];
}

uint64_t sub_274560A9C(void *a1, double a2)
{
  v4 = objc_opt_self();
  sub_27463BC8C();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_27456480C;
  *(v12 + 24) = v11;
  v19[4] = sub_27440D744;
  v19[5] = v12;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 1107296256;
  v19[2] = sub_2745F36FC;
  v19[3] = &block_descriptor_256;
  v13 = _Block_copy(v19);
  v14 = a1;

  LODWORD(v15) = v6;
  LODWORD(v16) = v8;
  LODWORD(v17) = v10;
  [v4 _modifyAnimationsWithPreferredFrameRateRange_updateReason_animations_];
  _Block_release(v13);

  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }

  return result;
}

char **sub_274560C54(char *a1)
{
  v2 = *&a1[OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_translationView];
  [v2 frame];
  v4 = v3;
  result = sub_27455CBF4();
  if (!result[2])
  {
    __break(1u);
    goto LABEL_8;
  }

  v6 = *(result + 4);

  result = sub_27455CBF4();
  if (result[2] < 2)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v7 = *(result + 6);

  result = sub_27455CBF4();
  if (!result[2])
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v8 = v4 - v6;
  v9 = *(result + 4);

  sub_27456360C(1.0 - v8 / (v7 - v9));
  [v2 frame];
  [v2 setFrame_];
  [a1 setNeedsLayout];

  return [a1 layoutIfNeeded];
}

void sub_274560D60(void *a1)
{
  v2 = v1;
  v4 = sub_27463B1EC();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_3_0();
  v134 = v9 - v8;
  v10 = sub_27463B21C();
  OUTLINED_FUNCTION_1();
  v133 = v11;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_3_0();
  v132 = v14 - v13;
  v131 = sub_27463B23C();
  OUTLINED_FUNCTION_1();
  v130 = v15;
  MEMORY[0x28223BE20](v16);
  v128 = &v122 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v19 = MEMORY[0x28223BE20](v18).n128_u64[0];
  v129 = &v122 - v20;
  [a1 translationInView_];
  v22 = v21;
  [a1 velocityInView_];
  v24 = v23;
  v25 = OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_scrollView;
  OUTLINED_FUNCTION_29_3(&v2[OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_scrollView], v142);
  v26 = *&v2[v25];
  if (v26 && (v27 = [v26 panGestureRecognizer]) != 0)
  {
    v28 = v27;
    sub_274412734(0, &qword_280951308, 0x277D757F8);
    v29 = a1;
    v30 = sub_27463BF7C();
  }

  else
  {
    v30 = 0;
  }

  if (*&v2[OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_initialGestureScrollOffset] > 0.0 && (v30 & 1) != 0)
  {
    swift_beginAccess();
    _UIUpdateRequestDeactivate();
    swift_endAccess();
    return;
  }

  v126 = v4;
  v124 = v10;
  v125 = v6;
  v31 = objc_opt_self();
  OUTLINED_FUNCTION_5();
  v32 = swift_allocObject();
  *(v32 + 16) = v2;
  v140 = sub_2745646FC;
  v141 = v32;
  aBlock = MEMORY[0x277D85DD0];
  v137 = 1107296256;
  v138 = sub_27443E0E8;
  v139 = &block_descriptor_83;
  v33 = _Block_copy(&aBlock);
  v34 = v2;

  v140 = CGSizeMake;
  v141 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v137 = 1107296256;
  v138 = sub_27456009C;
  v139 = &block_descriptor_86;
  v35 = _Block_copy(&aBlock);
  OUTLINED_FUNCTION_0_39();
  v127 = v31;
  [v31 v36];
  _Block_release(v35);
  _Block_release(v33);
  v37 = *&v34[OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_translationView];
  OUTLINED_FUNCTION_42_5();
  v39 = v38;
  v40 = sub_27455CBF4();
  if (!v40[2])
  {
    goto LABEL_64;
  }

  v41 = *(v40 + 4);

  if (((v41 < v39) & v30) == 1)
  {
    v42 = *&v2[v25];
    if (!v42)
    {
      goto LABEL_15;
    }

    v43 = v42;
    [v43 contentInset];
    [v43 setContentOffset:0 animated:{0.0, -v44}];
  }

  v45 = *&v2[v25];
  if (v45)
  {
    v46 = v45;
    [v46 contentOffset];
    v48 = v47;
    [v46 contentInset];
    v50 = v49;

    if (((v48 != -v50) & v30) != 0)
    {
      return;
    }

    goto LABEL_16;
  }

LABEL_15:
  if (v30)
  {
    return;
  }

LABEL_16:
  OUTLINED_FUNCTION_42_5();
  v52 = v51;
  v53 = sub_27455CBF4()[2];

  v54 = MEMORY[0x277D84F90];
  if (v53 < 3)
  {
    v30 = sub_27455CBF4();
    v61 = *(v30 + 16);
    if (!v61)
    {

      v62 = MEMORY[0x277D84F90];
      goto LABEL_35;
    }

    v123 = v37;
    aBlock = v54;
    sub_274451494(0, v61, 0);
    v62 = aBlock;
    v63 = *(aBlock + 16);
    v64 = 16 * v63;
    v65 = 32;
    do
    {
      CGSizeMake();
      v67 = v66;
      aBlock = v62;
      v68 = *(v62 + 24);
      if (v63 >= v68 >> 1)
      {
        sub_274451494((v68 > 1), v63 + 1, 1);
        v62 = aBlock;
      }

      *(v62 + 16) = v63 + 1;
      v69 = v62 + v64;
      *(v69 + 32) = 0;
      *(v69 + 40) = v67;
      v64 += 16;
      v65 += 16;
      ++v63;
      --v61;
    }

    while (v61);

    goto LABEL_34;
  }

  OUTLINED_FUNCTION_42_5();
  v56 = v55;
  v57 = sub_27455CBF4();
  if (v57[2] < 2)
  {
    __break(1u);
    goto LABEL_58;
  }

  v59 = *(v57 + 6);

  v60 = sub_27455CBF4()[2];
  v123 = v37;
  if (v56 >= v59)
  {
    if (v60 >= 2)
    {

      if (sub_27455CBF4()[2] >= 3)
      {
        goto LABEL_30;
      }

      goto LABEL_63;
    }

    goto LABEL_61;
  }

  if (!v60)
  {
    __break(1u);
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  if (sub_27455CBF4()[2] < 2)
  {
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:

    __break(1u);
LABEL_65:
    __break(1u);
    return;
  }

LABEL_30:

  aBlock = v54;
  sub_274451494(0, 2, 0);
  v62 = aBlock;
  CGSizeMake();
  v37 = *(v62 + 16);
  v30 = *(v62 + 24);
  v70 = v30 >> 1;
  v53 = v37 + 1;
  if (v30 >> 1 <= v37)
  {
    goto LABEL_59;
  }

  while (1)
  {
    *(v62 + 16) = v53;
    v71 = v62 + 16 * v37;
    *(v71 + 32) = 0;
    *(v71 + 40) = v58;
    CGSizeMake();
    v73 = v72;
    v74 = v37 + 2;
    if (v70 <= v53)
    {
      sub_274451494((v30 > 1), v74, 1);
      v62 = aBlock;
    }

    *(v62 + 16) = v74;
    v75 = v62 + 16 * v53;
    *(v75 + 32) = 0;
    *(v75 + 40) = v73;
LABEL_34:
    v37 = v123;
LABEL_35:
    v24 = sub_274561CD0(v62, 0.0, v24 / 1000.0 * *MEMORY[0x277D76EC0] / (1.0 - *MEMORY[0x277D76EC0]) + v52);
    v52 = v76;

    v77 = sub_27455CBF4();
    if (!v77[2])
    {

LABEL_39:
      v81 = sub_27455CBF4();
      sub_27455C20C(v81);

      goto LABEL_40;
    }

    v78 = *(v77 + 4);

    OUTLINED_FUNCTION_42_5();
    if (v80 >= v78)
    {
      goto LABEL_39;
    }

    sub_27455CA34(v79);
LABEL_40:
    [v34 bounds];
    Height = CGRectGetHeight(v143);
    if (Height < v52)
    {
      v83 = &v34[OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_delegate];
      OUTLINED_FUNCTION_29_3(&v34[OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_delegate], v135);
      if (swift_unknownObjectWeakLoadStrong())
      {
        v84 = *(v83 + 1);
        ObjectType = swift_getObjectType();
        (*(v84 + 24))(v34, ObjectType, v84);
        swift_unknownObjectRelease();
      }
    }

    v53 = sub_27455CBF4()[2];

    if (v53 != 3)
    {
      goto LABEL_47;
    }

    v86 = sub_27455CBF4();
    if (v86[2] >= 2)
    {
      break;
    }

LABEL_58:
    __break(1u);
LABEL_59:
    v121 = v58;
    sub_274451494((v30 > 1), v53, 1);
    v58 = v121;
    v62 = aBlock;
    v30 = *(aBlock + 24);
    v70 = v30 >> 1;
  }

  v87 = *(v86 + 6);

  if (v52 == v87)
  {
    v88 = 2;
    goto LABEL_51;
  }

LABEL_47:
  v89 = sub_27455CBF4();
  v90 = COERCE_DOUBLE(sub_27455C20C(v89));
  v92 = v91;

  if (v92)
  {
    goto LABEL_65;
  }

  if (v90 + -10.0 <= v52)
  {
    v88 = 1;
  }

  else
  {
    v88 = 3;
  }

LABEL_51:
  LOBYTE(aBlock) = v88;
  sub_27455D8B0(&aBlock);
  OUTLINED_FUNCTION_5();
  v93 = swift_allocObject();
  *(v93 + 16) = v34;
  v140 = sub_274564704;
  v141 = v93;
  aBlock = MEMORY[0x277D85DD0];
  v137 = 1107296256;
  OUTLINED_FUNCTION_9_19();
  v138 = v94;
  v139 = &block_descriptor_92;
  v95 = _Block_copy(&aBlock);
  v96 = v34;

  v140 = CGSizeMake;
  v141 = 0;
  aBlock = MEMORY[0x277D85DD0];
  OUTLINED_FUNCTION_8_23();
  v138 = v97;
  v139 = &block_descriptor_95;
  v98 = _Block_copy(&aBlock);
  OUTLINED_FUNCTION_0_39();
  v99 = v127;
  [v127 v100];
  _Block_release(v98);
  _Block_release(v95);
  v101 = swift_allocObject();
  *(v101 + 16) = v96;
  *(v101 + 24) = v24;
  *(v101 + 32) = v52;
  *(v101 + 40) = Height < v52;
  v140 = sub_27456470C;
  v141 = v101;
  aBlock = MEMORY[0x277D85DD0];
  v137 = 1107296256;
  v138 = sub_27443E0E8;
  v139 = &block_descriptor_101;
  v102 = _Block_copy(&aBlock);
  v103 = v96;

  OUTLINED_FUNCTION_39();
  v104 = swift_allocObject();
  *(v104 + 16) = Height < v52;
  *(v104 + 24) = v103;
  v140 = sub_27456471C;
  v141 = v104;
  aBlock = MEMORY[0x277D85DD0];
  OUTLINED_FUNCTION_8_23();
  v138 = v105;
  v139 = &block_descriptor_107;
  v106 = _Block_copy(&aBlock);
  v107 = v103;

  OUTLINED_FUNCTION_0_39();
  [v99 v108];
  _Block_release(v106);
  _Block_release(v102);
  if (v22 > 0.0)
  {
    v109 = v126;
    v110 = *&v2[v25];
    if (v110)
    {
      [v110 setBounces_];
    }

    sub_274412734(0, &qword_28094AF90, 0x277D85C78);
    v111 = sub_27463BCEC();
    v112 = v128;
    sub_27463B22C();
    v113 = v129;
    sub_27463B28C();
    v130 = *(v130 + 8);
    v114 = v131;
    (v130)(v112, v131);
    OUTLINED_FUNCTION_5();
    v115 = swift_allocObject();
    *(v115 + 16) = v107;
    v140 = sub_274564728;
    v141 = v115;
    aBlock = MEMORY[0x277D85DD0];
    v137 = 1107296256;
    OUTLINED_FUNCTION_7_19();
    v138 = v116;
    v139 = &block_descriptor_113;
    v117 = _Block_copy(&aBlock);
    v118 = v107;

    v119 = v132;
    sub_27463B20C();
    aBlock = MEMORY[0x277D84F90];
    sub_27446E608();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094AFA0, &unk_27464D1A0);
    sub_274454390();
    v120 = v134;
    sub_27463C1EC();
    MEMORY[0x277C58400](v113, v119, v120, v117);
    _Block_release(v117);

    (*(v125 + 8))(v120, v109);
    (*(v133 + 8))(v119, v124);
    (v130)(v113, v114);
  }
}

uint64_t sub_274561AA8(void *a1)
{
  v2 = objc_opt_self();
  sub_27463BC8C();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_274564748;
  *(v10 + 24) = v9;
  v17[4] = sub_27440D744;
  v17[5] = v10;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 1107296256;
  v17[2] = sub_2745F36FC;
  v17[3] = &block_descriptor_142;
  v11 = _Block_copy(v17);
  v12 = a1;

  LODWORD(v13) = v4;
  LODWORD(v14) = v6;
  LODWORD(v15) = v8;
  [v2 _modifyAnimationsWithPreferredFrameRateRange_updateReason_animations_];
  _Block_release(v11);

  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    __break(1u);
  }

  return result;
}

double sub_274561CD0(uint64_t a1, double a2, double a3)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    return 0.0;
  }

  v4 = (a1 + 40);
  v5 = 0.0;
  v6 = 1.79769313e308;
  do
  {
    v7 = sqrt((*(v4 - 1) - a2) * (*(v4 - 1) - a2) + (*v4 - a3) * (*v4 - a3));
    if (v7 < v6)
    {
      v5 = *(v4 - 1);
      v6 = v7;
    }

    v4 += 2;
    --v3;
  }

  while (v3);
  return v5;
}

uint64_t sub_274561D3C(void *a1)
{
  v2 = objc_opt_self();
  sub_27463BC8C();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_274564740;
  *(v10 + 24) = v9;
  v17[4] = sub_27440D744;
  v17[5] = v10;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 1107296256;
  v17[2] = sub_2745F36FC;
  v17[3] = &block_descriptor_132;
  v11 = _Block_copy(v17);
  v12 = a1;

  LODWORD(v13) = v4;
  LODWORD(v14) = v6;
  LODWORD(v15) = v8;
  [v2 _modifyAnimationsWithPreferredFrameRateRange_updateReason_animations_];
  _Block_release(v11);

  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    __break(1u);
  }

  return result;
}

void sub_274561EEC(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_state;
  swift_beginAccess();
  v3 = 0.0;
  if (*(a1 + v2) == 3)
  {
    v3 = 1.0;
  }

  sub_27456360C(v3);
}

uint64_t sub_274561F48(void *a1, char a2, double a3, double a4)
{
  v8 = objc_opt_self();
  sub_27463BC8C();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = a3;
  *(v15 + 32) = a4;
  *(v15 + 40) = a2;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_274564730;
  *(v16 + 24) = v15;
  v23[4] = sub_27440CBD0;
  v23[5] = v16;
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 1107296256;
  v23[2] = sub_2745F36FC;
  v23[3] = &block_descriptor_122;
  v17 = _Block_copy(v23);
  v18 = a1;

  LODWORD(v19) = v10;
  LODWORD(v20) = v12;
  LODWORD(v21) = v14;
  [v8 _modifyAnimationsWithPreferredFrameRateRange_updateReason_animations_];
  _Block_release(v17);

  LOBYTE(v8) = swift_isEscapingClosureAtFileLocation();

  if (v8)
  {
    __break(1u);
  }

  return result;
}

id sub_274562114(char *a1, char a2)
{
  v4 = *&a1[OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_translationView];
  [v4 frame];
  [v4 setFrame_];
  [a1 setNeedsLayout];
  result = [a1 layoutIfNeeded];
  if (a2)
  {
    v6 = &a1[OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_delegate];
    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v7 = *(v6 + 1);
      ObjectType = swift_getObjectType();
      (*(v7 + 24))(a1, ObjectType, v7);
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

void sub_274562208(uint64_t a1, uint64_t a2, char a3, char *a4)
{
  if (a3)
  {
    v5 = &a4[OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_delegate];
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v6 = *(v5 + 1);
      ObjectType = swift_getObjectType();
      (*(v6 + 32))(a4, ObjectType, v6);
      swift_unknownObjectRelease();
    }

    [a4 removeFromSuperview];
  }
}

id sub_2745622B0(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_scrollView;
  swift_beginAccess();
  result = *(a1 + v2);
  if (result)
  {
    return [result setBounces_];
  }

  return result;
}

void sub_27456230C(_BYTE *a1)
{
  switch(*a1)
  {
    case 1:
      v4 = sub_27455CBF4();
      sub_27455C20C(v4);
      v6 = v5;

      if (v6)
      {
        goto LABEL_14;
      }

      break;
    case 2:
      v2 = sub_27455CBF4()[2];

      v3 = sub_27455CBF4();
      if (v2 == 3)
      {
        if (v3[2] >= 2)
        {
          goto LABEL_7;
        }

        __break(1u);
        goto LABEL_13;
      }

      sub_27455C20C(v3);
      v8 = v7;

      if (v8)
      {
        goto LABEL_15;
      }

      break;
    case 3:
      if (sub_27455CBF4()[2])
      {
LABEL_7:
      }

      else
      {
LABEL_13:

        __break(1u);
LABEL_14:
        __break(1u);
LABEL_15:
        __break(1u);
      }

      break;
    default:
      [v1 bounds];
      CGRectGetHeight(v9);
      break;
  }
}

uint64_t sub_27456242C(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = *a1;
  v8 = OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_state;
  result = OUTLINED_FUNCTION_29_3(&v4[OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_state], v27);
  if (v4[v8] != v7)
  {
    if (v4[OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_completedInitialValidLayoutPass] != 1)
    {
      OUTLINED_FUNCTION_2_6();
      v18 = swift_allocObject();
      *(v18 + 16) = v4;
      *(v18 + 24) = v7;
      *(v18 + 32) = a2;
      *(v18 + 40) = a3;
      v19 = &v4[OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_pendingLayoutWork];
      v20 = *&v4[OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_pendingLayoutWork];
      v21 = *&v4[OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_pendingLayoutWork + 8];
      *v19 = sub_274563BF8;
      v19[1] = v18;
      v22 = v4;
      sub_2744069F0(a2, a3);
      return sub_274406A94(v20, v21);
    }

    if ((v4[OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_isTrackingPanGesture] & 1) == 0)
    {
      v26[0] = v7;
      sub_27455D8B0(v26);
      if (v7 != 1)
      {
        goto LABEL_11;
      }

      v10 = sub_27455CBF4();
      v11 = COERCE_DOUBLE(sub_27455C20C(v10));
      v13 = v12;

      if (v13)
      {
        __break(1u);
        return result;
      }

      [v4 bounds];
      if (CGRectGetHeight(v28) < v11)
      {
        v14 = &v4[OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_delegate];
        OUTLINED_FUNCTION_29_3(&v4[OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_delegate], v26);
        if (swift_unknownObjectWeakLoadStrong())
        {
          v15 = *(v14 + 1);
          ObjectType = swift_getObjectType();
          (*(v15 + 24))(v4, ObjectType, v15);
          swift_unknownObjectRelease();
        }

        v17 = 1;
      }

      else
      {
LABEL_11:
        v17 = 0;
      }

      v23 = swift_allocObject();
      *(v23 + 16) = v4;
      *(v23 + 24) = v7;
      OUTLINED_FUNCTION_2_6();
      v24 = swift_allocObject();
      *(v24 + 16) = v17;
      *(v24 + 24) = v4;
      *(v24 + 32) = a2;
      *(v24 + 40) = a3;
      v25 = v4;
      sub_2744069F0(a2, a3);
      sub_274562840(sub_274563C08, v23, sub_274563C14, v24);
    }
  }

  return result;
}

id sub_2745626BC(char *a1, char a2)
{
  v4 = 0.0;
  if (a2 == 3)
  {
    v4 = 1.0;
  }

  sub_27456360C(v4);
  v5 = *&a1[OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_translationView];
  v7 = a2;
  sub_27456230C(&v7);
  [v5 frame];
  [v5 setFrame_];
  [a1 setNeedsLayout];

  return [a1 layoutIfNeeded];
}

uint64_t sub_27456277C(uint64_t result, char *a2, uint64_t (*a3)(uint64_t, char *))
{
  if (result)
  {
    v5 = &a2[OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_delegate];
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v6 = *(v5 + 1);
      ObjectType = swift_getObjectType();
      (*(v6 + 32))(a2, ObjectType, v6);
      swift_unknownObjectRelease();
    }

    result = [a2 removeFromSuperview];
  }

  if (a3)
  {
    return a3(result, a2);
  }

  return result;
}

void sub_274562840(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = objc_opt_self();
  OUTLINED_FUNCTION_39();
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  v18 = sub_274563C24;
  v19 = v9;
  v14 = MEMORY[0x277D85DD0];
  v15 = 1107296256;
  v16 = sub_27443E0E8;
  v17 = &block_descriptor_30;
  v10 = _Block_copy(&v14);

  OUTLINED_FUNCTION_39();
  v11 = swift_allocObject();
  *(v11 + 16) = a3;
  *(v11 + 24) = a4;
  v18 = sub_274563C44;
  v19 = v11;
  v14 = MEMORY[0x277D85DD0];
  v15 = 1107296256;
  v16 = sub_27456009C;
  v17 = &block_descriptor_20;
  v12 = _Block_copy(&v14);
  sub_2744069F0(a3, a4);

  OUTLINED_FUNCTION_0_39();
  [v8 v13];
  _Block_release(v12);
  _Block_release(v10);
}

uint64_t sub_2745629EC(uint64_t a1, uint64_t a2)
{
  v4 = objc_opt_self();
  sub_27463BC8C();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_2744830C4;
  *(v12 + 24) = v11;
  v18[4] = sub_27440D744;
  v18[5] = v12;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 1107296256;
  v18[2] = sub_2745F36FC;
  v18[3] = &block_descriptor_269;
  v13 = _Block_copy(v18);

  LODWORD(v14) = v6;
  LODWORD(v15) = v8;
  LODWORD(v16) = v10;
  [v4 _modifyAnimationsWithPreferredFrameRateRange_updateReason_animations_];
  _Block_release(v13);

  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }

  return result;
}

void sub_274562BA4(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4)
{
  if (a3)
  {

    a3(v6);

    sub_274406A94(a3, a4);
  }
}

void sub_274562BF8()
{
  v1 = OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_automaticallyAdjustsScrollViewInsets;
  OUTLINED_FUNCTION_29_3(&v0[OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_automaticallyAdjustsScrollViewInsets], v12);
  if (v0[v1] == 1)
  {
    v2 = OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_scrollView;
    OUTLINED_FUNCTION_29_3(&v0[OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_scrollView], &v11);
    v3 = *&v0[v2];
    if (v3)
    {
      v4 = v3;
      v5 = sub_27455CBF4();
      if (v5[2])
      {
        v6 = *(v5 + 4);

        v7 = [v0 traitCollection];
        [v7 displayCornerRadius];

        [v4 contentInset];
        [v4 setContentInset_];
        [v4 setAutomaticallyAdjustsScrollIndicatorInsets_];
        v8 = [v0 traitCollection];
        [v8 displayCornerRadius];
        v10 = v9;

        [v4 setVerticalScrollIndicatorInsets_];
      }

      else
      {
        __break(1u);
      }
    }
  }
}

void sub_274562D50()
{
  v1 = sub_27463B1EC();
  OUTLINED_FUNCTION_1();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3_0();
  v7 = v6 - v5;
  v21 = sub_27463B21C();
  OUTLINED_FUNCTION_1();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_3_0();
  v13 = v12 - v11;
  sub_274412734(0, &qword_28094AF90, 0x277D85C78);
  v14 = sub_27463BCEC();
  OUTLINED_FUNCTION_5();
  v15 = swift_allocObject();
  *(v15 + 16) = v0;
  aBlock[4] = sub_274564820;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  OUTLINED_FUNCTION_7_19();
  aBlock[2] = v16;
  aBlock[3] = &block_descriptor_275;
  v17 = _Block_copy(aBlock);
  v18 = v0;

  sub_27463B20C();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_27446E608();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094AFA0, &unk_27464D1A0);
  sub_274454390();
  sub_27463C1EC();
  MEMORY[0x277C58440](0, v13, v7, v17);
  _Block_release(v17);

  (*(v3 + 8))(v7, v1);
  (*(v9 + 8))(v13, v21);
  v19 = *&v18[OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_glassView];
  v20 = sub_27455D9E0();
  [v19 setBackgroundColor_];

  sub_274563164();
}

uint64_t sub_274562FE8()
{
  v0 = sub_274638E7C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v10[-1] - v5;
  sub_274638E6C();
  sub_274638E5C();
  v7 = *(v1 + 8);
  v7(v3, v0);
  (*(v1 + 16))(v3, v6, v0);
  v10[3] = sub_274638E8C();
  v10[4] = MEMORY[0x277D74E20];
  __swift_allocate_boxed_opaque_existential_1(v10);
  sub_274638E9C();
  sub_27463BEFC();
  return (v7)(v6, v0);
}

void sub_274563164()
{
  v4 = [*&v0[OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_translationView] layer];
  v1 = [v0 traitCollection];
  v2 = [v1 userInterfaceStyle] == 2;

  LODWORD(v3) = dword_274659EC0[v2];
  [v4 setShadowOpacity_];
}

id sub_274563210()
{
  v1 = OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_grabberVisibility;
  OUTLINED_FUNCTION_29_3(v0 + OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_grabberVisibility, v8);
  v2 = *(v0 + v1);
  v3 = *(v0 + OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_grabberView);
  if (v2)
  {
    v4 = v2 != 1;
  }

  else
  {
    v5 = OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_allowsDismissal;
    OUTLINED_FUNCTION_29_3(v0 + OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_allowsDismissal, &v7);
    v4 = *(v0 + v5);
  }

  return [v3 setHidden_];
}

uint64_t sub_27456329C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280951258, &qword_274659ED0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_27456330C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280951258, &qword_274659ED0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_27456337C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280951258, &qword_274659ED0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2745633E4(double a1)
{
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  objc_allocWithZone(MEMORY[0x277D75348]);
  v4 = v1;
  v5 = sub_27451A6B0(sub_2745646EC, v3);
  [v4 setBackgroundColor_];

  if (_UISolariumEnabled() && a1 <= 0.0 == *&v4[OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_dimmingFraction] > 0.0)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    v7 = objc_allocWithZone(MEMORY[0x277D75D40]);
    v8 = v4;
    v9 = sub_2745FB6C4(sub_2745646F4, v6, 0.4, 1.0);
    [v9 startAnimation];
  }
}

id sub_274563550(void *a1, uint64_t a2)
{
  v3 = [a1 userInterfaceStyle];
  v4 = *(a2 + OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_dimmingFraction);
  v5 = objc_allocWithZone(MEMORY[0x277D75348]);
  v6 = 0.175;
  if (v3 == 2)
  {
    v6 = 0.25;
  }

  return [v5 initWithWhite:0.0 alpha:v4 * v6];
}

id sub_2745635D4(uint64_t a1)
{
  v1 = 0.0;
  if (*(a1 + OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_dimmingFraction) > 0.0)
  {
    v1 = 1.0;
  }

  return [*(a1 + OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_opaqueOverlayFillView) setAlpha_];
}

void sub_27456360C(double a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_dimmingFraction);
  *(v1 + OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_dimmingFraction) = a1;
  sub_2745633E4(v2);
}

id sub_274563624(uint64_t a1, double a2, double a3)
{
  v17.receiver = v3;
  v17.super_class = type metadata accessor for WFSheetView();
  v7 = objc_msgSendSuper2(&v17, sel_hitTest_withEvent_, a1, a2, a3);
  v8 = [v3 backgroundColor];
  if (!v8)
  {
    if (!v7)
    {
      return v7;
    }

    goto LABEL_9;
  }

  v9 = v8;
  v10 = [v8 CGColor];

  Alpha = CGColorGetAlpha(v10);
  if (Alpha <= 0.0 && v7 != 0)
  {
LABEL_9:
    sub_274412734(0, &qword_28094A4D8, 0x277D75D18);
    v13 = v7;
    v14 = v3;
    v15 = sub_27463BF7C();

    if (v15)
    {

      return 0;
    }
  }

  return v7;
}

id WFSheetView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WFSheetView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::Bool __swiftcall WFSheetView.gestureRecognizer(_:shouldReceive:)(UIGestureRecognizer *_, UITouch shouldReceive)
{
  v3 = [(objc_class *)shouldReceive.super.isa view];
  v4 = [(UIGestureRecognizer *)_ view];
  v5 = v4;
  if (v3)
  {
    if (v4)
    {
      sub_274412734(0, &qword_28094A4D8, 0x277D75D18);
      v6 = sub_27463BF7C();
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    if (!v4)
    {
      v6 = 1;
      return v6 & 1;
    }

    v6 = 0;
    v3 = v4;
  }

  return v6 & 1;
}

id sub_274563A90(void *a1, uint64_t a2)
{
  v4 = a1[3];
  if (v4)
  {
    v6 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v7 = *(v4 - 8);
    v8 = MEMORY[0x28223BE20](v6);
    v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v7 + 16))(v10, v8);
    v11 = sub_27463C69C();
    (*(v7 + 8))(v10, v4);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v11 = 0;
  }

  v12 = [v2 initWithTarget:v11 action:a2];
  swift_unknownObjectRelease();
  return v12;
}

double block_copy_helper_30(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

unint64_t sub_274563C4C()
{
  result = qword_2809512F0;
  if (!qword_2809512F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809512F0);
  }

  return result;
}

unint64_t sub_274563CA4()
{
  result = qword_2809512F8;
  if (!qword_2809512F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809512F8);
  }

  return result;
}

uint64_t keypath_get_23Tm()
{
  OUTLINED_FUNCTION_16_1();
  result = v1();
  *v0 = result;
  *(v0 + 8) = v3 & 1;
  return result;
}

_BYTE *storeEnumTagSinglePayload for WFSheetViewState(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for WFSheetViewGrabberVisibility(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

id OUTLINED_FUNCTION_18_9()
{

  return [v0 (v1 + 3832)];
}

uint64_t OUTLINED_FUNCTION_20_13(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10)
{

  return sub_27463C56C();
}

uint64_t OUTLINED_FUNCTION_29_10@<X0>(uint64_t a1@<X8>)
{
  *(v1 + a1 + 8) = 0;

  return swift_unknownObjectWeakInit();
}

void OUTLINED_FUNCTION_30_9()
{

  sub_274450D6C();
}

id OUTLINED_FUNCTION_31_8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  a9 = v16;
  a10 = v17;
  a11 = v18;
  a12 = v19;
  a13 = v20;
  a14 = v21;

  return [a1 (v14 + 248)];
}

uint64_t OUTLINED_FUNCTION_32_7()
{
  *(v0 - 1) = 1;

  return sub_27456242C((v0 - 1), 0, 0);
}

id OUTLINED_FUNCTION_33_5()
{

  return [v0 (v1 + 3832)];
}

void OUTLINED_FUNCTION_39_5()
{

  CGSizeMake();
}

void *OUTLINED_FUNCTION_40_5()
{

  return sub_27451A6B0(v0, 0);
}

id OUTLINED_FUNCTION_41_5()
{

  return [v0 (v1 + 3192)];
}

id OUTLINED_FUNCTION_42_5()
{

  return [v0 (v1 + 3192)];
}

uint64_t sub_274564B90(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 9))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_274564BE4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_274564C64@<X0>(void *a1@<X0>, char a2@<W1>, void *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280951310, &qword_27465A1B8);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v7);
  v9 = v62 - v8;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280951318, &qword_27465A1C0);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v10);
  v12 = v62 - v11;
  v13 = type metadata accessor for WorkflowOutputPreviewView(0);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v14);
  v16 = (v62 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280951320, &unk_27465A1C8);
  OUTLINED_FUNCTION_7();
  *&v19 = MEMORY[0x28223BE20](v18).n128_u64[0];
  v21 = v62 - v20;
  if (a2)
  {
    if (a1)
    {
      v22 = a1;
      if ([v22 numberOfItems] >= 1)
      {
        v67 = v22;
        sub_27440FB1C(v67, v16);
        sub_2744127F8(v16, v12);
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280949FF0, &unk_274648860);
        sub_274565240();
        sub_2744E9360();
        sub_274639DDC();

        sub_274565370(v16);
LABEL_12:
        sub_274565298(v21, v9);
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280949FF0, &unk_274648860);
        sub_274565210();
        sub_2744E9360();
        sub_274639DDC();
        return sub_274565308(v21);
      }
    }

    v62[1] = v13;
    v63 = v21;
    v66 = v17;
    v67 = a3;
    v64 = v6;
    sub_27463B70C("This action didn't produce any output.", 38, v19);
    if (qword_2809492C0 != -1)
    {
      OUTLINED_FUNCTION_2_22(&qword_2809492C0);
    }

    v43 = qword_28094BB00;
    v44 = sub_27463B66C();
    v45 = sub_27463B66C();

    v46 = [v43 localizedStringForKey:v44 value:v45 table:0];

    v47 = sub_27463B6AC();
    v49 = v48;

    v68 = v47;
    v69 = v49;
    sub_274412BBC();
    v50 = sub_27463A53C();
    v52 = v51;
    LOBYTE(v49) = v53;
    v54 = sub_27463A51C();
    v56 = v55;
    v58 = v57;
    sub_274412C10(v50, v52, v49 & 1);

    sub_27463A32C();
    OUTLINED_FUNCTION_2_29();
    *v12 = v54;
    *(v12 + 1) = v56;
    v12[16] = v59;
    *(v12 + 3) = v58;
    v12[32] = v60;
    *(v12 + 40) = 0u;
    *(v12 + 56) = 0u;
    v12[72] = v61;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280949FF0, &unk_274648860);
    sub_274565240();
    sub_2744E9360();
    v21 = v63;
    sub_274639DDC();
    goto LABEL_12;
  }

  v66 = v17;
  v67 = a3;
  sub_27463B70C("Run the workflow to see the output of this action.", 50, v19);
  if (qword_2809492C0 != -1)
  {
    OUTLINED_FUNCTION_2_22(&qword_2809492C0);
  }

  v23 = qword_28094BB00;
  v24 = sub_27463B66C();
  v25 = sub_27463B66C();

  v26 = [v23 localizedStringForKey:v24 value:v25 table:0];

  v27 = sub_27463B6AC();
  v29 = v28;

  v68 = v27;
  v69 = v29;
  sub_274412BBC();
  v30 = sub_27463A53C();
  v32 = v31;
  LOBYTE(v29) = v33;
  v34 = sub_27463A51C();
  v36 = v35;
  v38 = v37;
  sub_274412C10(v30, v32, v29 & 1);

  sub_27463A32C();
  OUTLINED_FUNCTION_2_29();
  *v9 = v34;
  *(v9 + 1) = v36;
  v9[16] = v39;
  *(v9 + 3) = v38;
  v9[32] = v40;
  *(v9 + 40) = 0u;
  *(v9 + 56) = 0u;
  v9[72] = v41;
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280949FF0, &unk_274648860);
  sub_274565210();
  sub_2744E9360();
  return sub_274639DDC();
}

unint64_t sub_274565240()
{
  result = qword_280951330;
  if (!qword_280951330)
  {
    type metadata accessor for WorkflowOutputPreviewView(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280951330);
  }

  return result;
}

uint64_t sub_274565298(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280951320, &unk_27465A1C8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_274565308(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280951320, &unk_27465A1C8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_274565370(uint64_t a1)
{
  v2 = type metadata accessor for WorkflowOutputPreviewView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2745653CC(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    sub_2744E9360();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t WFDateFieldParameter.hintText(for:)(uint64_t a1, __n128 a2)
{
  v3 = v2;
  v5 = sub_274637E8C();
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809530C0, &qword_274655D40);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v67 - v12;
  v14 = sub_2746382DC();
  OUTLINED_FUNCTION_1();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v67 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_274565B58(a1, v13);
  if (__swift_getEnumTagSinglePayload(v13, 1, v14) != 1)
  {
    (*(v16 + 32))(v19, v13, v14);
    sub_2746382BC();
    v20 = sub_274453594();

    if (v20)
    {
LABEL_4:
      v21 = OUTLINED_FUNCTION_0_40();
      v22(v21);
      return 0;
    }

    v25 = sub_27463826C();
    v27 = HIBYTE(v26) & 0xF;
    if ((v26 & 0x2000000000000000) == 0)
    {
      v27 = v25 & 0xFFFFFFFFFFFFLL;
    }

    if (!v27)
    {
      v54 = OUTLINED_FUNCTION_0_40();
      v55(v54);

      return 0;
    }

    v28 = objc_opt_self();
    v29 = sub_27463B66C();

    v30 = [v28 detectedDatesInString:v29 error:0];

    sub_274565C30();
    v31 = sub_27463B81C();

    if (!sub_274453594())
    {

      v56 = [v3 localizedIncompleteHintString];
      if (!v56)
      {
        goto LABEL_4;
      }

      v57 = v56;
      v23 = sub_27463B6AC();

LABEL_34:
      v65 = OUTLINED_FUNCTION_0_40();
      v66(v65);
      return v23;
    }

    sub_2744535A4();
    if ((v31 & 0xC000000000000001) != 0)
    {
      v32 = MEMORY[0x277C58B20](0, v31);
    }

    else
    {
      v32 = *(v31 + 32);
    }

    v33 = v32;

    v34 = [v33 date];
    sub_274637E6C();

    v35 = [v3 dateOnlyMode];
    v36 = [v3 timeOnlyMode];
    v37 = v36;
    v70 = v33;
    if ((v35 & 1) != 0 || v36)
    {
      v58 = [v3 hintDateFormatter];
      v47 = v7;
      v59 = v58;
      if (v37)
      {
        v60 = 0;
      }

      else
      {
        v60 = 2;
      }

      [v58 setDateStyle_];

      v61 = [v3 hintDateFormatter];
      [v61 setTimeStyle_];

      v62 = [v3 hintDateFormatter];
      v63 = sub_274637E5C();
      v64 = [v62 stringFromDate_];

      v23 = sub_27463B6AC();
      goto LABEL_33;
    }

    v38 = [v3 detectsAllDayDates];
    v39 = [v3 forcesAllDayDates];
    LODWORD(v68) = [v3 displaysAllDayString];
    v69 = v7;
    if ((v39 & 1) == 0 && v38)
    {
      v39 = [v33 timeIsSignificant] ^ 1;
    }

    v40 = [v3 hintDateFormatter];
    [v40 setDateStyle_];

    v41 = [v3 hintDateFormatter];
    LOBYTE(v40) = v39 ^ 1;
    [v41 setTimeStyle_];

    v42 = [v3 hintDateFormatter];
    v43 = sub_274637E5C();
    v44 = [v42 stringFromDate_];

    v23 = sub_27463B6AC();
    v46 = v45;

    if (v40)
    {
    }

    else
    {
      v47 = v69;
      if ((v68 & 1) == 0)
      {

        goto LABEL_33;
      }

      sub_27463B70C("All Day (Date Hint)", 19);
      v68 = sub_27463B70C("All Day", 7);
      if (qword_2809492C0 != -1)
      {
        swift_once();
      }

      v67 = qword_28094BB00;
      v48 = sub_27463B66C();

      v49 = sub_27463B66C();

      v50 = [v67 localizedStringForKey:v48 value:v49 table:0];

      v51 = sub_27463B6AC();
      v53 = v52;

      v71 = v23;
      v72 = v46;
      MEMORY[0x277C57EA0](0x20A280E220, 0xA500000000000000);
      MEMORY[0x277C57EA0](v51, v53);

      v23 = v71;
    }

    v47 = v69;
LABEL_33:
    (*(v47 + 8))(v10, v5);
    goto LABEL_34;
  }

  sub_274565BC8(v13);
  return 0;
}

uint64_t sub_274565B58(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809530C0, &qword_274655D40);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_274565BC8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809530C0, &qword_274655D40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_274565C30()
{
  result = qword_280951348;
  if (!qword_280951348)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280951348);
  }

  return result;
}

uint64_t ParameterRowView.init(parameter:stateStore:processing:shouldFocus:layoutMode:isArrayElement:variableProvider:editorOptions:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, char a4@<W3>, uint64_t *a5@<X4>, char a6@<W5>, id a8@<X7>, uint64_t a9@<X8>)
{
  v14 = *a5;
  v15 = *(a5 + 8);
  swift_unknownObjectWeakInit();
  *(a9 + 56) = sub_2746390EC() & 1;
  *(a9 + 64) = v16;
  *(a9 + 72) = v17 & 1;
  v18 = type metadata accessor for ParameterRowView(0);
  v19 = *(v18 + 52);
  *(a9 + v19) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094D140, &qword_27464E160);
  swift_storeEnumTagMultiPayload();
  v20 = a9 + *(v18 + 56);
  *v20 = swift_getKeyPath();
  *(v20 + 8) = 0;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 17) = a4;
  *(a9 + 24) = v14;
  *(a9 + 32) = v15;
  *(a9 + 33) = a6;
  swift_unknownObjectWeakAssign();
  if (!a8)
  {
    a8 = [objc_allocWithZone(type metadata accessor for WorkflowEditorOptions(0)) init];
  }

  result = swift_unknownObjectRelease();
  *(a9 + 48) = a8;
  return result;
}

uint64_t type metadata accessor for ParameterRowView(uint64_t a1)
{
  result = qword_280951480;
  if (!qword_280951480)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_274565E10@<X0>(uint64_t *a1@<X8>)
{
  result = sub_274438F4C();
  *a1 = result;
  return result;
}

uint64_t sub_274565E3C(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  return sub_274438F88(v1);
}

uint64_t sub_274565E6C()
{
  v1 = sub_274639ABC();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v0 + *(type metadata accessor for ParameterRowView(0) + 56);
  v6 = *v5;
  if (*(v5 + 8) != 1)
  {

    sub_27463BC0C();
    v7 = sub_27463A2FC();
    sub_274638CEC();

    sub_274639AAC();
    swift_getAtKeyPath();
    sub_2743F45E8(v6, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v6) = v9[15];
  }

  return v6 & 1;
}

uint64_t ParameterRowView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v109 = a1;
  v3 = type metadata accessor for ParameterRowView(0);
  v108 = *(v3 - 8);
  v113 = *(v108 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v112 = &v86 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_27463A19C();
  OUTLINED_FUNCTION_1();
  v101 = v6;
  v102 = v5;
  MEMORY[0x28223BE20](v5);
  v8 = &v86 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280951358, &qword_27465A238) - 8;
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v9);
  v11 = &v86 - v10;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280951360, &qword_27465A240) - 8;
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_40_1();
  v92 = v13;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280951368, &unk_27465A248) - 8;
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_40_1();
  v90 = v15;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280951370, &qword_27465A258) - 8;
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_40_1();
  v91 = v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280951378, &qword_27465A260) - 8;
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_40_1();
  v89 = v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280951380, &qword_27465A268) - 8;
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_40_1();
  v88 = v23;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280951388, &qword_27465A270) - 8;
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_40_1();
  v96 = v25;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280951390, &qword_27465A278) - 8;
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_40_1();
  v93 = v27;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280951398, &qword_27465A280) - 8;
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_40_1();
  v99 = v29;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809513A0, &qword_27465A288);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_40_1();
  v110 = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809513A8, &qword_27465A290);
  OUTLINED_FUNCTION_1();
  v106 = v33;
  v107 = v32;
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_40_1();
  v111 = v35;
  sub_274566958();
  KeyPath = swift_getKeyPath();
  v37 = *v1;
  v118 = KeyPath;
  v119 = v37;
  v38 = v37;
  sub_27463A18C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809513B0, &qword_27465A2C0);
  sub_274566E98();
  sub_27463A82C();
  (*(v101 + 8))(v8, v102);
  sub_27440CB1C(&v115, &qword_2809513B0, &qword_27465A2C0);
  v39 = *(v1 + 16);
  v40 = swift_getKeyPath();
  v41 = &v11[*(v94 + 44)];
  *v41 = v40;
  v41[8] = v39 & 1;
  v42 = sub_274565E6C() & ~v39;
  v43 = swift_getKeyPath();
  v44 = v92;
  sub_27445EA84(v11, v92, &qword_280951358, &qword_27465A238);
  OUTLINED_FUNCTION_3_33();
  *v45 = v43;
  *(v45 + 8) = v42 & 1;
  v46 = *(v2 + 17);
  v47 = swift_getKeyPath();
  v48 = v44;
  v49 = v90;
  sub_27445EA84(v48, v90, &qword_280951360, &qword_27465A240);
  OUTLINED_FUNCTION_3_33();
  *v50 = v47;
  *(v50 + 8) = v46;
  Strong = swift_unknownObjectWeakLoadStrong();
  v52 = swift_getKeyPath();
  v53 = v49;
  v54 = v91;
  sub_27445EA84(v53, v91, &qword_280951368, &unk_27465A248);
  OUTLINED_FUNCTION_3_33();
  *v55 = v52;
  v55[1] = Strong;
  LOBYTE(v52) = *(v2 + 33);
  v56 = swift_getKeyPath();
  v57 = v89;
  sub_27445EA84(v54, v89, &qword_280951370, &qword_27465A258);
  v58 = v57 + *(v18 + 44);
  *v58 = v56;
  *(v58 + 8) = v52;
  v59 = *(v2 + 24);
  LOBYTE(v54) = *(v2 + 32);
  v60 = swift_getKeyPath();
  v61 = v57;
  v62 = v88;
  sub_27445EA84(v61, v88, &qword_280951378, &qword_27465A260);
  v63 = v62 + *(v21 + 44);
  *v63 = v60;
  *(v63 + 8) = v59;
  *(v63 + 16) = v54;
  v64 = *(v2 + 48);
  type metadata accessor for WorkflowEditorOptions(0);
  sub_27444C230(&qword_28094A730, type metadata accessor for WorkflowEditorOptions, &protocol conformance descriptor for WorkflowEditorOptions);
  v65 = sub_274638EEC();
  v66 = v96;
  sub_27445EA84(v62, v96, &qword_280951380, &qword_27465A268);
  OUTLINED_FUNCTION_3_33();
  *v67 = v65;
  v67[1] = v64;
  v68 = v93;
  sub_27445EA84(v66, v93, &qword_280951388, &qword_27465A270);
  *(v68 + *(v100 + 44)) = 256;
  v69 = v112;
  sub_274567204(v2, v112);
  v70 = (*(v108 + 80) + 16) & ~*(v108 + 80);
  v108 = *(v108 + 80);
  v71 = swift_allocObject();
  sub_274567268(v69, v71 + v70);
  v72 = v99;
  sub_27445EA84(v68, v99, &qword_280951390, &qword_27465A278);
  OUTLINED_FUNCTION_3_33();
  *v73 = sub_2745672CC;
  v73[1] = v71;
  v73[2] = 0;
  v73[3] = 0;
  sub_274567204(v2, v69);
  v74 = swift_allocObject();
  sub_274567268(v69, v74 + v70);
  v75 = v72;
  v76 = v110;
  sub_27445EA84(v75, v110, &qword_280951398, &qword_27465A280);
  v77 = (v76 + *(v105 + 36));
  *v77 = 0;
  v77[1] = 0;
  v77[2] = sub_274567348;
  v77[3] = v74;
  v87 = v2;
  LOBYTE(v18) = *(v2 + 56);
  v78 = *(v2 + 64);
  LOBYTE(v2) = *(v2 + 72);
  LOBYTE(v115) = v18;
  v116 = v78;
  v117 = v2;
  v79 = v64;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280951420, &unk_27465E490);
  sub_2746390DC();
  sub_2745673D4();
  v80 = v110;
  sub_27463A99C();

  sub_274401BE0(v80);
  LOBYTE(v115) = v18;
  v116 = v78;
  v117 = v2;
  sub_2746390BC();
  LOBYTE(v64) = v114;
  v81 = v112;
  sub_274567204(v87, v112);
  v82 = swift_allocObject();
  sub_274567268(v81, v82 + v70);
  v83 = v109;
  (*(v106 + 32))(v109, v111, v107);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280951478, &qword_27465A3C0);
  v85 = v83 + *(result + 36);
  *v85 = v64;
  *(v85 + 8) = sub_274567D44;
  *(v85 + 16) = v82;
  return result;
}

uint64_t sub_274566958()
{
  v1 = sub_274639B9C();
  *&v2 = MEMORY[0x28223BE20](v1 - 8).n128_u64[0];
  v3 = *v0;
  if ([*v0 allowsMultipleValues] && objc_msgSend(v3, sel_displaysMultipleValueEditor) && (*(v0 + 33) & 1) == 0)
  {
    v16 = *(v0 + 8);
    type metadata accessor for ParameterStateStore();
    sub_27444C230(&qword_28094B550, type metadata accessor for ParameterStateStore, &protocol conformance descriptor for ParameterStateStore);
    swift_retain_n();
    v17 = v3;
    v18 = sub_27463950C();
    v20 = v19;
    v21 = swift_allocObject();
    *(v21 + 16) = sub_27456842C;
    *(v21 + 24) = v16;
    v22 = swift_allocObject();
    *(v22 + 16) = sub_274458A90;
    *(v22 + 24) = v16;
    v25 = v18;
    v26 = v20;
    v27 = sub_274458A60;
    v28 = v21;
    v29 = sub_274458A98;
    v30 = v22;

    sub_274544A7C(v17, &v25, sub_274542524, 0, v23);
    sub_2745457E8(v23, &v25);
    v31 = 0;
    sub_274567068();
    sub_274639DDC();
    sub_27445EAD4(v24, &v25, &qword_2809513D8, &qword_27465A2D0);
    v32 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809513D8, &qword_27465A2D0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809513F0, &unk_27465A2D8);
    sub_274566FDC();
    sub_2745670BC();
    sub_274639DDC();
    sub_27440CB1C(v24, &qword_2809513D8, &qword_27465A2D0);
    return sub_274568434(v23);
  }

  else
  {
    ObjectType = swift_getObjectType();
    if (dynamic_cast_existential_1_conditional(v3, ObjectType, &protocol descriptor for ViewableParameter))
    {
      v6 = v5;
      v7 = swift_getObjectType();
      v8 = *(v0 + 8);
      v9 = *(v6 + 16);
      v10 = v3;
      v25 = v9(v8, v7, v6);
      v31 = 1;
      sub_274567068();

      sub_274639DDC();
      sub_27445EAD4(v24, &v25, &qword_2809513D8, &qword_27465A2D0);
      v32 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809513D8, &qword_27465A2D0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809513F0, &unk_27465A2D8);
      sub_274566FDC();
      sub_2745670BC();
      sub_274639DDC();

      return sub_27440CB1C(v24, &qword_2809513D8, &qword_27465A2D0);
    }

    else
    {
      sub_274639B8C();
      sub_274639B7C();
      v12 = NSStringFromClass([v3 classForCoder]);
      sub_27463B6AC();

      sub_274639B6C();

      sub_274639B7C();
      sub_274639BBC();
      v25 = sub_27463A52C();
      v26 = v13;
      LOBYTE(v27) = v14 & 1;
      v28 = v15;
      v29 = sub_27463AB4C();
      LOBYTE(v30) = sub_27463A32C();
      v32 = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809513D8, &qword_27465A2D0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809513F0, &unk_27465A2D8);
      sub_274566FDC();
      sub_2745670BC();
      return sub_274639DDC();
    }
  }
}

unint64_t sub_274566E98()
{
  result = qword_2809513B8;
  if (!qword_2809513B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809513B0, &qword_27465A2C0);
    sub_274566F50();
    sub_27440CA78(&qword_280951408, &unk_280951410, &qword_27465A2E8, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809513B8);
  }

  return result;
}

unint64_t sub_274566F50()
{
  result = qword_2809513C0;
  if (!qword_2809513C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809513C8, &qword_27465A2C8);
    sub_274566FDC();
    sub_2745670BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809513C0);
  }

  return result;
}

unint64_t sub_274566FDC()
{
  result = qword_2809513D0;
  if (!qword_2809513D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809513D8, &qword_27465A2D0);
    sub_274567068();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809513D0);
  }

  return result;
}

unint64_t sub_274567068()
{
  result = qword_2809513E0;
  if (!qword_2809513E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809513E0);
  }

  return result;
}

unint64_t sub_2745670BC()
{
  result = qword_2809513E8;
  if (!qword_2809513E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_2809513F0, &unk_27465A2D8);
    sub_27440CA78(&qword_28094A710, &qword_280951400, &unk_2746528C0, MEMORY[0x277CE0728]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809513E8);
  }

  return result;
}

uint64_t sub_274567174(id *a1)
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_unknownObjectRelease();
  }

  else
  {
    [*a1 wasAddedToWorkflow];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280951420, &unk_27465E490);
  return sub_2746390CC();
}

uint64_t sub_274567204(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ParameterRowView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_274567268(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ParameterRowView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_2745672E4(void **a1)
{
  if (swift_unknownObjectWeakLoadStrong())
  {

    return swift_unknownObjectRelease();
  }

  else
  {
    v3 = *a1;

    return [v3 wasRemovedFromWorkflow];
  }
}

uint64_t sub_274567360(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for ParameterRowView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_2745673D4()
{
  result = qword_280951428;
  if (!qword_280951428)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809513A0, &qword_27465A288);
    sub_274567460();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280951428);
  }

  return result;
}

unint64_t sub_274567460()
{
  result = qword_280951430;
  if (!qword_280951430)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280951398, &qword_27465A280);
    sub_2745674EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280951430);
  }

  return result;
}

unint64_t sub_2745674EC()
{
  result = qword_280951438;
  if (!qword_280951438)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280951390, &qword_27465A278);
    sub_274567578();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280951438);
  }

  return result;
}

unint64_t sub_274567578()
{
  result = qword_280951440;
  if (!qword_280951440)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280951388, &qword_27465A270);
    sub_274567630();
    sub_27440CA78(&qword_2809548A0, &unk_28094B170, &unk_27464AD70, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280951440);
  }

  return result;
}

unint64_t sub_274567630()
{
  result = qword_280951448;
  if (!qword_280951448)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280951380, &qword_27465A268);
    sub_2745676E8();
    sub_27440CA78(&qword_28094AD58, &qword_28094AD50, &unk_274649EF0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280951448);
  }

  return result;
}

unint64_t sub_2745676E8()
{
  result = qword_280951450;
  if (!qword_280951450)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280951378, &qword_27465A260);
    sub_2745677A0();
    sub_27440CA78(&unk_280954AE0, &unk_28094AD60, &qword_27464E7D0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280951450);
  }

  return result;
}

unint64_t sub_2745677A0()
{
  result = qword_280951458;
  if (!qword_280951458)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280951370, &qword_27465A258);
    sub_274567858();
    sub_27440CA78(&unk_280949420, &unk_28094C3E0, &qword_2746467A0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280951458);
  }

  return result;
}

unint64_t sub_274567858()
{
  result = qword_280951460;
  if (!qword_280951460)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280951368, &unk_27465A248);
    sub_274567910();
    sub_27440CA78(&unk_280954AE0, &unk_28094AD60, &qword_27464E7D0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280951460);
  }

  return result;
}

unint64_t sub_274567910()
{
  result = qword_280951468;
  if (!qword_280951468)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280951360, &qword_27465A240);
    sub_2745679C8();
    sub_27440CA78(&unk_280954AE0, &unk_28094AD60, &qword_27464E7D0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280951468);
  }

  return result;
}

unint64_t sub_2745679C8()
{
  result = qword_280951470;
  if (!qword_280951470)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280951358, &qword_27465A238);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809513B0, &qword_27465A2C0);
    sub_274566E98();
    swift_getOpaqueTypeConformance2();
    sub_27440CA78(&unk_280954AE0, &unk_28094AD60, &qword_27464E7D0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280951470);
  }

  return result;
}

_BYTE *sub_274567ABC(_BYTE *result, uint64_t a2)
{
  if (*result == 1)
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      objc_opt_self();
      v2 = swift_dynamicCastObjCClass();
      if (v2)
      {
        MEMORY[0x28223BE20](v2);
        sub_27463B13C();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094D7F0, &unk_2746508D0);
        sub_27463946C();
        swift_unknownObjectRelease();
      }

      else
      {

        return swift_unknownObjectRelease();
      }
    }
  }

  return result;
}

uint64_t objectdestroyTm_17()
{
  v1 = type metadata accessor for ParameterRowView(0);
  v2 = (v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)));

  MEMORY[0x277C5A3A0](v2 + 5);

  v3 = *(v1 + 52);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094D140, &qword_27464E160);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_27463969C();
    if (!__swift_getEnumTagSinglePayload(v2 + v3, 1, v4))
    {
      (*(*(v4 - 8) + 8))(v2 + v3, v4);
    }
  }

  else
  {
  }

  sub_2743F45E8(*(v2 + *(v1 + 56)), *(v2 + *(v1 + 56) + 8));

  return swift_deallocObject();
}

_BYTE *sub_274567D44(_BYTE *a1)
{
  v3 = *(type metadata accessor for ParameterRowView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_274567ABC(a1, v4);
}

uint64_t sub_274567DD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, BOOL *a3@<X8>)
{
  v21 = a3;
  v20 = a2;
  v4 = sub_274639ABC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094D140, &qword_27464E160);
  MEMORY[0x28223BE20](v8);
  v10 = &v19 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094D7C0, &unk_274651B60);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v19 - v12;
  v14 = type metadata accessor for ParameterRowView(0);
  sub_27445EAD4(a1 + *(v14 + 52), v10, &unk_28094D140, &qword_27464E160);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2745683BC(v10, v13);
  }

  else
  {
    sub_27463BC0C();
    v15 = sub_27463A2FC();
    sub_274638CEC();

    sub_274639AAC();
    swift_getAtKeyPath();

    (*(v5 + 8))(v7, v4);
  }

  v16 = sub_27463969C();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v16);
  if (EnumTagSinglePayload == 1)
  {
    result = sub_27440CB1C(v13, &unk_28094D7C0, &unk_274651B60);
  }

  else
  {
    v22 = v20;
    sub_27463B1BC();
    sub_27463968C();
    result = (*(*(v16 - 8) + 8))(v13, v16);
  }

  *v21 = EnumTagSinglePayload == 1;
  return result;
}

void sub_2745680E4(uint64_t a1)
{
  sub_274439BAC();
  if (v1 <= 0x3F)
  {
    type metadata accessor for ParameterStateStore();
    if (v2 <= 0x3F)
    {
      type metadata accessor for WorkflowEditorOptions(319);
      if (v3 <= 0x3F)
      {
        sub_2745681F0();
        if (v4 <= 0x3F)
        {
          sub_274568248(319);
          if (v5 <= 0x3F)
          {
            sub_27453EAA0();
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

void sub_2745681F0()
{
  if (!qword_280953A40)
  {
    v0 = sub_27463910C();
    if (!v1)
    {
      atomic_store(v0, &qword_280953A40);
    }
  }
}

void sub_274568248(uint64_t a1)
{
  if (!qword_280950D10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_28094D7C0, &unk_274651B60);
    v1 = sub_27463919C();
    if (!v2)
    {
      atomic_store(v1, &qword_280950D10);
    }
  }
}

unint64_t sub_2745682AC()
{
  result = qword_280951498;
  if (!qword_280951498)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280951478, &qword_27465A3C0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809513A0, &qword_27465A288);
    sub_2745673D4();
    swift_getOpaqueTypeConformance2();
    sub_27440CA78(&unk_28094DDA0, &qword_280953AD0, &qword_274651698, MEMORY[0x277CE0400]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280951498);
  }

  return result;
}

uint64_t sub_2745683BC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094D7C0, &unk_274651B60);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2745684BC()
{
  sub_27456C2E4();
  sub_274639ACC();
  return v1;
}

uint64_t ModuleSummaryModalCoordinator.__allocating_init()()
{
  v0 = swift_allocObject();
  ModuleSummaryModalCoordinator.init()();
  return v0;
}

void View.moduleSummaryModal(coordinator:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_55_1();
  a17 = v18;
  a18 = v19;
  v21 = v20;
  v23 = v22;
  v24 = type metadata accessor for ModuleSummaryModalViewModifier(0);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v25);
  v27 = &a9 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_27456919C(v27);
  MEMORY[0x277C57160](v27, v23, v24, v21);
  sub_27456C7F4(v27, type metadata accessor for ModuleSummaryModalViewModifier);
  OUTLINED_FUNCTION_56_0();
}

uint64_t sub_27456864C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_274638FAC();
}

void sub_2745686C4()
{
  OUTLINED_FUNCTION_55_1();
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809514B0, &unk_27465A468);
  OUTLINED_FUNCTION_53_0(v2);
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_48_2();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2744342DC();

  sub_274638FBC();
  sub_27440CB1C(v1, &qword_2809514B0, &unk_27465A468);
  OUTLINED_FUNCTION_56_0();
}

uint64_t sub_27456879C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_274638FAC();

  return v1;
}

uint64_t sub_274568810(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_274638FBC();
}

uint64_t ModuleSummaryModalCoordinator.init()()
{
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809514A0, &qword_27465A458);
  OUTLINED_FUNCTION_1();
  v18 = v1;
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v2);
  v4 = &v18 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809514A8, &qword_27465A460);
  OUTLINED_FUNCTION_1();
  v7 = v6;
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_48_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809514B0, &unk_27465A468);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v9);
  MEMORY[0x28223BE20](v10);
  v12 = &v18 - v11;
  v13 = OBJC_IVAR____TtC14WorkflowEditor29ModuleSummaryModalCoordinator__presentedModal;
  v14 = type metadata accessor for ModuleSummaryModalOptions(0);
  __swift_storeEnumTagSinglePayload(v12, 1, 1, v14);
  sub_2744342DC();
  sub_274638F6C();
  sub_27440CB1C(v12, &qword_2809514B0, &unk_27465A468);
  v15 = v19;
  (*(v7 + 32))(v19 + v13, v0, v5);
  v16 = OBJC_IVAR____TtC14WorkflowEditor29ModuleSummaryModalCoordinator__currentState;
  v21 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094B380, &qword_27464B110);
  sub_274638F6C();
  (*(v18 + 32))(v15 + v16, v4, v20);
  return v15;
}

BOOL sub_274568B04()
{
  v0 = OUTLINED_FUNCTION_5_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_53_0(v2);
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v3);
  v5 = &v9 - v4;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_274638FAC();

  v6 = type metadata accessor for ModuleSummaryModalOptions(0);
  v7 = __swift_getEnumTagSinglePayload(v5, 1, v6) != 1;
  sub_27440CB1C(v5, &qword_2809514B0, &unk_27465A468);
  return v7;
}

int *ModuleSummaryModalOptions.init(stateStore:parameter:slot:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_274637EDC();
  result = type metadata accessor for ModuleSummaryModalOptions(0);
  *(a4 + result[5]) = a1;
  *(a4 + result[6]) = a2;
  *(a4 + result[7]) = a3;
  return result;
}

void sub_274568C5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_55_1();
  a17 = v19;
  a18 = v20;
  v21 = type metadata accessor for ModuleSummaryModalOptions(0);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v22);
  v24 = &a9 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809514B0, &unk_27465A468);
  OUTLINED_FUNCTION_53_0(v25);
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_48_2();
  v27 = swift_unknownObjectRetain();
  sub_274568810(v27);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_274638FAC();

  if (__swift_getEnumTagSinglePayload(v18, 1, v21))
  {
    sub_27440CB1C(v18, &qword_2809514B0, &unk_27465A468);
  }

  else
  {
    sub_27456CCE0();
    sub_27440CB1C(v18, &qword_2809514B0, &unk_27465A468);

    sub_27456C7F4(v24, type metadata accessor for ModuleSummaryModalOptions);
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_2746385BC();
  }

  OUTLINED_FUNCTION_56_0();
}

uint64_t sub_274568E14()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809514B0, &unk_27465A468);
  OUTLINED_FUNCTION_53_0(v0);
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v1);
  v3 = &v6 - v2;
  v4 = type metadata accessor for ModuleSummaryModalOptions(0);
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v4);
  sub_2745686C4();
  return sub_274568810(0);
}

uint64_t ModuleSummaryModalCoordinator.deinit()
{
  v1 = OBJC_IVAR____TtC14WorkflowEditor29ModuleSummaryModalCoordinator__presentedModal;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809514A8, &qword_27465A460);
  OUTLINED_FUNCTION_7();
  (*(v2 + 8))(v0 + v1);
  v3 = OBJC_IVAR____TtC14WorkflowEditor29ModuleSummaryModalCoordinator__currentState;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809514A0, &qword_27465A458);
  OUTLINED_FUNCTION_7();
  (*(v4 + 8))(v0 + v3);
  return v0;
}

uint64_t ModuleSummaryModalCoordinator.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC14WorkflowEditor29ModuleSummaryModalCoordinator__presentedModal;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809514A8, &qword_27465A460);
  OUTLINED_FUNCTION_7();
  (*(v2 + 8))(v0 + v1);
  v3 = OBJC_IVAR____TtC14WorkflowEditor29ModuleSummaryModalCoordinator__currentState;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809514A0, &qword_27465A458);
  OUTLINED_FUNCTION_7();
  (*(v4 + 8))(v0 + v3);

  return MEMORY[0x2821FE8D8](v0);
}

uint64_t sub_274569030@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for ModuleSummaryModalCoordinator(0);
  result = sub_274638EFC();
  *a2 = result;
  return result;
}

double ModuleSummaryModalOptions.stateStore.getter(__n128 a1)
{
  type metadata accessor for ModuleSummaryModalOptions(0);

  return result;
}

id ModuleSummaryModalOptions.parameter.getter(__n128 a1)
{
  v2 = *(v1 + *(type metadata accessor for ModuleSummaryModalOptions(0) + 24));

  return v2;
}

id ModuleSummaryModalOptions.slot.getter(__n128 a1)
{
  v2 = *(v1 + *(type metadata accessor for ModuleSummaryModalOptions(0) + 28));

  return v2;
}

uint64_t static ModuleSummaryModalOptions.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (sub_274637EBC() & 1) != 0 && (sub_274412734(0, &qword_28094C5E0, 0x277D82BB8), type metadata accessor for ModuleSummaryModalOptions(0), (sub_27463BF7C()))
  {
    return sub_27463BF7C() & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_27456919C@<X0>(uint64_t a2@<X8>)
{
  type metadata accessor for WorkflowEditorOptions(0);
  sub_27456C1A8(&qword_28094A730, type metadata accessor for WorkflowEditorOptions, &protocol conformance descriptor for WorkflowEditorOptions);
  *(a2 + 16) = sub_27463979C();
  *(a2 + 24) = v3;
  *(a2 + 32) = swift_getKeyPath();
  *(a2 + 40) = 0;
  *(a2 + 48) = swift_getKeyPath();
  *(a2 + 56) = 0;
  v4 = type metadata accessor for ModuleSummaryModalViewModifier(0);
  v5 = v4[8];
  *(a2 + v5) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094D140, &qword_27464E160);
  swift_storeEnumTagMultiPayload();
  v6 = a2 + v4[9];
  *v6 = swift_getKeyPath();
  *(v6 + 8) = 0;
  v7 = v4[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280951568, &qword_27465A630);
  sub_27463ACDC();
  *(a2 + v7) = v11;
  v8 = (a2 + v4[11]);
  type metadata accessor for NativeViewControllerContext();
  *(swift_allocObject() + 16) = 0;
  sub_27463ACDC();
  *v8 = v11;
  type metadata accessor for ModuleSummaryModalCoordinator(0);
  sub_27456C1A8(&qword_280950BA0, type metadata accessor for ModuleSummaryModalCoordinator, &protocol conformance descriptor for ModuleSummaryModalCoordinator);
  result = sub_27463950C();
  *a2 = result;
  *(a2 + 8) = v10;
  return result;
}

uint64_t sub_274569390@<X0>(uint64_t *a1@<X8>)
{
  result = OUTLINED_FUNCTION_1_2();
  *a1 = result;
  return result;
}

uint64_t sub_2745693B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v28 = a1;
  v32 = a2;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809514B0, &unk_27465A468);
  MEMORY[0x28223BE20](v31);
  v30 = &v27 - v4;
  v5 = type metadata accessor for ModuleSummaryModalViewModifier(0);
  v6 = v5 - 8;
  v29 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v27 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280951580, &qword_27465A6D8);
  v9 = v8 - 8;
  MEMORY[0x28223BE20](v8);
  v11 = &v27 - v10;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280951588, &qword_27465A6E0);
  MEMORY[0x28223BE20](v34);
  v33 = &v27 - v12;
  v13 = (v3 + *(v6 + 52));
  v15 = *v13;
  v14 = v13[1];
  v37 = v15;
  v38[0] = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280951590, &qword_27465A6E8);
  sub_27463ACEC();
  v16 = v36[0];
  sub_27463B0CC();
  sub_27463973C();
  v17 = sub_27463B0CC();
  v19 = v18;
  v36[0] = v16;
  memcpy(&v36[1], v35, 0x70uLL);
  v36[15] = v17;
  v36[16] = v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280951598, &qword_27465A6F0);
  (*(*(v20 - 8) + 16))(v11, v28, v20);
  memcpy(&v11[*(v9 + 44)], v36, 0x88uLL);
  v37 = v16;
  memcpy(v38, v35, 0x70uLL);
  v38[14] = v17;
  v38[15] = v19;
  sub_2744342DC();
  sub_27440CB1C(&v37, &unk_2809515A0, &unk_27465A6F8);
  sub_27456CCE0();
  v21 = swift_allocObject();
  sub_27456C79C();
  v22 = v33;
  sub_274433B6C();
  v23 = &v22[*(v34 + 36)];
  *v23 = sub_27456C338;
  v23[1] = v21;
  swift_getKeyPath();
  swift_getKeyPath();
  v24 = v30;
  sub_274638FAC();

  sub_27456CCE0();
  swift_allocObject();
  sub_27456C79C();
  sub_27456C54C();
  sub_27456C6E8();
  v25 = v33;
  sub_27463AA3C();

  sub_27440CB1C(v24, &qword_2809514B0, &unk_27465A468);
  return sub_27440CB1C(v25, &qword_280951588, &qword_27465A6E0);
}

void sub_274569888(BOOL *a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809514B0, &unk_27465A468);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v8 - v4;
  if (*a1)
  {
    v6 = 1;
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_274638FAC();

    v7 = type metadata accessor for ModuleSummaryModalOptions(0);
    v6 = __swift_getEnumTagSinglePayload(v5, 1, v7) != 1;
    sub_27440CB1C(v5, &qword_2809514B0, &unk_27465A468);
  }

  *a1 = v6;
}

uint64_t sub_2745699A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809514B0, &unk_27465A468);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v23 - v5;
  v7 = type metadata accessor for ModuleSummaryModalOptions(0);
  MEMORY[0x28223BE20](v7);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ModuleSummaryModalViewModifier(0);
  v11 = *(v10 + 40);
  v23 = a3;
  v12 = (a3 + v11);
  v13 = *v12;
  v14 = v12[1];
  v25 = *v12;
  v26 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809515F0, &qword_27465A710);
  sub_27463ACEC();
  v15 = v24;
  if (v24)
  {
    v16 = *(v24 + OBJC_IVAR____TtC14WorkflowEditorP33_460410A17E70035D97A591FA113148C318PresenterContainer_presenter);

    [v16 dismiss];
  }

  v25 = v13;
  v26 = v14;
  v24 = 0;
  sub_27463ACFC();
  sub_2744342DC();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_27440CB1C(v6, &qword_2809514B0, &unk_27465A468);
  }

  sub_27456C79C();
  v18 = (v23 + *(v10 + 44));
  v20 = *v18;
  v19 = v18[1];
  v25 = v20;
  v26 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280951590, &qword_27465A6E8);
  sub_27463ACEC();
  v21 = v24[2];
  v22 = v21;

  if (v21)
  {
    sub_274569C00(v9, v22);
  }

  return sub_27456C7F4(v9, type metadata accessor for ModuleSummaryModalOptions);
}

void sub_274569C00(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = type metadata accessor for ModuleSummaryModalViewModifier(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = sub_274639ABC();
  v80 = *(v9 - 1);
  v81 = v9;
  *&v10 = MEMORY[0x28223BE20](v9).n128_u64[0];
  v12 = &v73 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [a2 view];
  if (!v13)
  {
    __break(1u);
    goto LABEL_12;
  }

  v14 = v13;
  v78 = v7;
  v79 = &v73 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [a2 view];
  if (!v15)
  {
LABEL_12:
    __break(1u);
    return;
  }

  v16 = v15;
  sub_274412734(0, &unk_2809515F8, off_279ED92B0);
  [v16 bounds];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;

  v25 = sub_27456A3E4(a2, v14, v18, v20, v22, v24);
  objc_allocWithZone(type metadata accessor for PresenterContainer());
  v82 = v25;

  v27 = sub_27456AD08(v26);
  v28 = type metadata accessor for ModuleSummaryModalOptions(0);
  v29 = *(a1 + *(v28 + 28));
  v76 = *(a1 + *(v28 + 24));
  v75 = [v29 identifier];
  swift_getObjectType();
  v74 = sub_2746385AC();
  v30 = *(v3 + 48);
  if (*(v3 + 56) != 1)
  {

    sub_27463BC0C();
    v31 = sub_27463A2FC();
    sub_274638CEC();

    sub_274639AAC();
    swift_getAtKeyPath();
    sub_2743F45E8(v30, 0);
    (*(v80 + 8))(v12, v81);
    LOBYTE(v30) = v84;
  }

  v32 = *(v3 + 32);
  if (*(v3 + 40) == 1)
  {
    swift_unknownObjectRetain();
  }

  else
  {

    sub_27463BC0C();
    v33 = sub_27463A2FC();
    sub_274638CEC();

    sub_274639AAC();
    swift_getAtKeyPath();
    sub_274482198(v32, 0);
    (*(v80 + 8))(v12, v81);
    v32 = v84;
  }

  v34 = v3 + *(v6 + 36);
  v35 = *v34;
  v36 = *(v34 + 8);
  v37 = v27;
  v77 = v6;
  if (v36 != 1)
  {
    sub_27456C84C(v35, 0);
    sub_27463BC0C();
    v38 = sub_27463A2FC();
    sub_274638CEC();

    sub_274639AAC();
    swift_getAtKeyPath();
    sub_2743F45E8(v35, 0);
    (*(v80 + 8))(v12, v81);
    LOBYTE(v35) = v84;
  }

  v39 = sub_274412734(0, &qword_2809507E0, off_279ED9338);
  v40 = v76;
  swift_getObjectType();
  v41 = sub_27456B8B8(v40, v75, v74, v30 & 1, v32, v37, v82, v35 & 1, v39);
  v42 = *&v37[OBJC_IVAR____TtC14WorkflowEditorP33_460410A17E70035D97A591FA113148C318PresenterContainer_presenter];
  *&v37[OBJC_IVAR____TtC14WorkflowEditorP33_460410A17E70035D97A591FA113148C318PresenterContainer_presenter] = v41;
  v81 = v41;

  sub_27456CCE0();
  v43 = swift_allocObject();
  sub_27456C79C();
  v44 = &v37[OBJC_IVAR____TtC14WorkflowEditorP33_460410A17E70035D97A591FA113148C318PresenterContainer_onShowActionOutputPicker];
  v45 = *&v37[OBJC_IVAR____TtC14WorkflowEditorP33_460410A17E70035D97A591FA113148C318PresenterContainer_onShowActionOutputPicker];
  v46 = *&v37[OBJC_IVAR____TtC14WorkflowEditorP33_460410A17E70035D97A591FA113148C318PresenterContainer_onShowActionOutputPicker + 8];
  *v44 = sub_27456C858;
  v44[1] = v43;
  sub_274406A94(v45, v46);
  sub_27456CCE0();
  v47 = swift_allocObject();
  sub_27456C79C();
  v48 = &v37[OBJC_IVAR____TtC14WorkflowEditorP33_460410A17E70035D97A591FA113148C318PresenterContainer_onRevealAction];
  v49 = *&v37[OBJC_IVAR____TtC14WorkflowEditorP33_460410A17E70035D97A591FA113148C318PresenterContainer_onRevealAction];
  v50 = *&v37[OBJC_IVAR____TtC14WorkflowEditorP33_460410A17E70035D97A591FA113148C318PresenterContainer_onRevealAction + 8];
  *v48 = sub_27456C8E0;
  v48[1] = v47;
  sub_274406A94(v49, v50);
  sub_27456CCE0();
  v51 = swift_allocObject();
  sub_27456C79C();
  v52 = &v37[OBJC_IVAR____TtC14WorkflowEditorP33_460410A17E70035D97A591FA113148C318PresenterContainer_onFinish];
  v53 = *&v37[OBJC_IVAR____TtC14WorkflowEditorP33_460410A17E70035D97A591FA113148C318PresenterContainer_onFinish];
  v54 = *&v37[OBJC_IVAR____TtC14WorkflowEditorP33_460410A17E70035D97A591FA113148C318PresenterContainer_onFinish + 8];
  *v52 = sub_27456C970;
  v52[1] = v51;
  sub_274406A94(v53, v54);
  sub_27456CCE0();
  sub_27463B9CC();
  v55 = sub_27463B9BC();
  v56 = swift_allocObject();
  v73 = v3;
  v57 = MEMORY[0x277D85700];
  *(v56 + 16) = v55;
  *(v56 + 24) = v57;
  v58 = v57;
  sub_27456C79C();
  sub_27456CCE0();
  v59 = sub_27463B9BC();
  v60 = swift_allocObject();
  *(v60 + 16) = v59;
  *(v60 + 24) = v58;
  sub_27456C79C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C298, &qword_27464F120);
  sub_27463AF0C();
  v61 = v85;
  v62 = &v37[OBJC_IVAR____TtC14WorkflowEditorP33_460410A17E70035D97A591FA113148C318PresenterContainer_parameterEditingHint];
  v63 = *&v37[OBJC_IVAR____TtC14WorkflowEditorP33_460410A17E70035D97A591FA113148C318PresenterContainer_parameterEditingHint];
  v64 = *&v37[OBJC_IVAR____TtC14WorkflowEditorP33_460410A17E70035D97A591FA113148C318PresenterContainer_parameterEditingHint + 8];
  v65 = v86;
  *v62 = v84;
  *(v62 + 1) = v61;
  *(v62 + 1) = v65;
  sub_27456CBDC(v63, v64);
  v66 = v81;
  [v81 setDelegate_];
  v67 = v66;
  [v66 present];
  v68 = (v73 + *(v77 + 40));
  v69 = v68[1];
  v84 = *v68;
  v70 = v84;
  v85 = v69;
  v83 = v37;

  v71 = v37;
  v72 = v70;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809515F0, &qword_27465A710);
  sub_27463ACFC();
}

id sub_27456A3E4(void *a1, void *a2, double a3, double a4, double a5, double a6)
{
  v8 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithSourceViewController:a1 sourceView:a2 sourceRect:{a3, a4, a5, a6}];

  return v8;
}

void sub_27456A470(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a5 + 16);
  if (v5)
  {
    *&v7 = a1;
    *(&v7 + 1) = a2 & 1;
    v8 = a3;
    v9 = a4;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v6 = v5;
    swift_unknownObjectRetain();

    sub_27443CA58(&v7);
  }

  else
  {
    type metadata accessor for WorkflowEditorOptions(0);
    sub_27456C1A8(&qword_28094A730, type metadata accessor for WorkflowEditorOptions, &protocol conformance descriptor for WorkflowEditorOptions);
    sub_27463978C();
    __break(1u);
  }
}

void sub_27456A54C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v23 = a2;
  v11 = sub_274639ABC();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a6 + 32);
  if (*(a6 + 40) == 1)
  {
    v17 = swift_unknownObjectRetain();
    if (!v16)
    {
      return;
    }
  }

  else
  {
    v22 = v13;

    sub_27463BC0C();
    v18 = sub_27463A2FC();
    sub_274638CEC();

    sub_274639AAC();
    swift_getAtKeyPath();
    sub_274482198(v16, 0);
    v17 = (*(v12 + 8))(v15, v22);
    v16 = v24;
    if (!v24)
    {
      return;
    }
  }

  MEMORY[0x28223BE20](v17);
  *(&v22 - 2) = a6;
  *(&v22 - 1) = a1;
  sub_27463B13C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094D7F0, &unk_2746508D0);
  sub_27463946C();

  v19 = *(a6 + 16);
  if (v19)
  {
    *&v24 = a1;
    *(&v24 + 1) = v16;
    v25 = v23;
    v26 = a3;
    v27 = a4;
    v28 = a5;
    v29 = 1;
    v20 = v19;
    v21 = a1;
    swift_unknownObjectRetain();

    sub_27443CA58(&v24);

    swift_unknownObjectRelease();
  }

  else
  {
    type metadata accessor for WorkflowEditorOptions(0);
    sub_27456C1A8(&qword_28094A730, type metadata accessor for WorkflowEditorOptions, &protocol conformance descriptor for WorkflowEditorOptions);
    sub_27463978C();
    __break(1u);
  }
}

uint64_t sub_27456A828@<X0>(uint64_t a1@<X1>, BOOL *a2@<X8>)
{
  v16 = a2;
  v15 = a1;
  v2 = sub_274639ABC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094D140, &qword_27464E160);
  MEMORY[0x28223BE20](v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094D7C0, &unk_274651B60);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v14 - v8;
  type metadata accessor for ModuleSummaryModalViewModifier(0);
  sub_2744342DC();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_274433B6C();
  }

  else
  {
    sub_27463BC0C();
    v10 = sub_27463A2FC();
    sub_274638CEC();

    sub_274639AAC();
    swift_getAtKeyPath();

    (*(v3 + 8))(v5, v2);
  }

  v11 = sub_27463969C();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v9, 1, v11);
  if (EnumTagSinglePayload == 1)
  {
    result = sub_27440CB1C(v9, &unk_28094D7C0, &unk_274651B60);
  }

  else
  {
    v17 = v15;
    sub_27463B1BC();
    sub_27463968C();
    result = (*(*(v11 - 8) + 8))(v9, v11);
  }

  *v16 = EnumTagSinglePayload == 1;
  return result;
}

uint64_t sub_27456AB20(uint64_t a1)
{
  type metadata accessor for ModuleSummaryModalViewModifier(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809515F0, &qword_27465A710);
  return sub_27463ACFC();
}

void sub_27456AB84(uint64_t a1@<X2>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = v3;
    v5 = sub_27443CDC8();
    v7 = v6;

    *a2 = v5;
    a2[1] = v7;
  }

  else
  {
    type metadata accessor for WorkflowEditorOptions(0);
    sub_27456C1A8(&qword_28094A730, type metadata accessor for WorkflowEditorOptions, &protocol conformance descriptor for WorkflowEditorOptions);
    sub_27463978C();
    __break(1u);
  }
}

void sub_27456AC2C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 + 16);
  if (v4)
  {
    v5 = a1[1];
    if (v5)
    {
      v6 = *a1;
    }

    else
    {
      v6 = 0;
    }

    if (v5)
    {
      v7 = a1[1];
    }

    else
    {
      v7 = 0xE000000000000000;
    }

    v8 = v4;

    sub_27443CE38(v6, v7);
  }

  else
  {
    type metadata accessor for WorkflowEditorOptions(0);
    sub_27456C1A8(&qword_28094A730, type metadata accessor for WorkflowEditorOptions, &protocol conformance descriptor for WorkflowEditorOptions);
    sub_27463978C();
    __break(1u);
  }
}

id sub_27456AD08(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC14WorkflowEditorP33_460410A17E70035D97A591FA113148C318PresenterContainer_presenter] = 0;
  v2 = &v1[OBJC_IVAR____TtC14WorkflowEditorP33_460410A17E70035D97A591FA113148C318PresenterContainer_onShowActionOutputPicker];
  *v2 = 0;
  *(v2 + 1) = 0;
  v3 = &v1[OBJC_IVAR____TtC14WorkflowEditorP33_460410A17E70035D97A591FA113148C318PresenterContainer_onRevealAction];
  *v3 = 0;
  *(v3 + 1) = 0;
  v4 = &v1[OBJC_IVAR____TtC14WorkflowEditorP33_460410A17E70035D97A591FA113148C318PresenterContainer_onFinish];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = &v1[OBJC_IVAR____TtC14WorkflowEditorP33_460410A17E70035D97A591FA113148C318PresenterContainer_parameterEditingHint];
  *v5 = 0u;
  *(v5 + 1) = 0u;
  *&v1[OBJC_IVAR____TtC14WorkflowEditorP33_460410A17E70035D97A591FA113148C318PresenterContainer_coordinator] = a1;
  v7.receiver = v1;
  v7.super_class = type metadata accessor for PresenterContainer();
  return objc_msgSendSuper2(&v7, sel_init);
}

void sub_27456AE30(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(id, uint64_t))
{
  v8 = a3;
  swift_unknownObjectRetain();
  v9 = a1;
  a5(v8, a4);

  swift_unknownObjectRelease();
}

uint64_t sub_27456AEB8()
{
  result = sub_274568E14();
  v2 = *(v0 + OBJC_IVAR____TtC14WorkflowEditorP33_460410A17E70035D97A591FA113148C318PresenterContainer_onFinish);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC14WorkflowEditorP33_460410A17E70035D97A591FA113148C318PresenterContainer_onFinish + 8);

    v2(v4);

    return sub_274406A94(v2, v3);
  }

  return result;
}

uint64_t sub_27456AF9C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + OBJC_IVAR____TtC14WorkflowEditorP33_460410A17E70035D97A591FA113148C318PresenterContainer_onShowActionOutputPicker);
  if (v5)
  {
    v9 = result;
    v10 = *(v4 + OBJC_IVAR____TtC14WorkflowEditorP33_460410A17E70035D97A591FA113148C318PresenterContainer_onShowActionOutputPicker + 8);

    v5(a2, v9 & 1, a3, a4);

    return sub_274406A94(v5, v10);
  }

  return result;
}

uint64_t sub_27456B0F4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7 + OBJC_IVAR____TtC14WorkflowEditorP33_460410A17E70035D97A591FA113148C318PresenterContainer_onRevealAction;
  v9 = *(v7 + OBJC_IVAR____TtC14WorkflowEditorP33_460410A17E70035D97A591FA113148C318PresenterContainer_onRevealAction);
  if (v9)
  {
    v13 = result;
    v15 = *(v8 + 8);
    if (a6)
    {
      v16 = swift_allocObject();
      *(v16 + 16) = a6;
      *(v16 + 24) = a7;
      v17 = sub_2744830C4;
    }

    else
    {
      v17 = CGSizeMake;
      v16 = 0;
    }

    v18 = swift_allocObject();
    *(v18 + 16) = v17;
    *(v18 + 24) = v16;
    sub_2744069F0(v9, v15);
    sub_2744069F0(a6, a7);
    v9(v13, sub_27456CCA4, v18, a4, a5);
    sub_274406A94(v9, v15);
  }

  return result;
}

uint64_t sub_27456B3A8(uint64_t result, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC14WorkflowEditorP33_460410A17E70035D97A591FA113148C318PresenterContainer_parameterEditingHint + 8);
  if (v3)
  {
    sub_27456CC54(*(v2 + OBJC_IVAR____TtC14WorkflowEditorP33_460410A17E70035D97A591FA113148C318PresenterContainer_parameterEditingHint), v3, *(v2 + OBJC_IVAR____TtC14WorkflowEditorP33_460410A17E70035D97A591FA113148C318PresenterContainer_parameterEditingHint + 16), *(v2 + OBJC_IVAR____TtC14WorkflowEditorP33_460410A17E70035D97A591FA113148C318PresenterContainer_parameterEditingHint + 24));

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280951620, &qword_27465A730);
    sub_27463AEBC();
  }

  return v4;
}

id sub_27456B524()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PresenterContainer();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t View.trackModuleSummaryModal(_:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v6[0] = a1;
  v6[1] = a2;
  v7 = a3;
  return MEMORY[0x277C57160](v6, a4, &type metadata for ModuleSummaryModalTrackingModifier, a5);
}

double sub_27456B638@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;
  *(v10 + 32) = a4;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280951608, &qword_27465A718);
  (*(*(v11 - 8) + 16))(a5, a1, v11);
  v12 = (a5 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_280951610, &unk_27465A720) + 36));
  *v12 = sub_27456CC48;
  v12[1] = v10;

  return result;
}

void *sub_27456B790(_BYTE *a1, void *(*a2)(uint64_t *__return_ptr))
{
  result = a2(&v4);
  *a1 = (v4 | *a1) & 1;
  return result;
}

void sub_27456B7E0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809514B0, &unk_27465A468);
  MEMORY[0x28223BE20](v0 - 8);
  sub_2744342DC();
  sub_2745686C4();
}

id sub_27456B8B8(void *a1, void *a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, void *a7, char a8, uint64_t a9)
{
  v19 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return sub_27456B954(a1, a2, a3, a4, a5, a6, a7, a8, v19);
}

id sub_27456B954(void *a1, void *a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, void *a7, char a8, id a9)
{
  LOBYTE(v14) = a8;
  v12 = [a9 initWithParameter:a1 slotIdentifier:a2 initialState:a3 isProcessing:a4 & 1 variableProvider:a5 variableUIDelegate:a6 presentationAnchor:a7 allowsPickingVariables:v14];

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return v12;
}

void sub_27456BA04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_55_1();
  a17 = v18;
  a18 = v19;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809514B0, &unk_27465A468);
  OUTLINED_FUNCTION_53_0(v26);
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v27);
  v29 = &a9 - v28;
  swift_getObjectType();
  v30 = sub_2746385AC();
  sub_274568810(v30);
  sub_274637EDC();
  v31 = type metadata accessor for ModuleSummaryModalOptions(0);
  *&v29[v31[5]] = v21;
  *&v29[v31[6]] = v25;
  *&v29[v31[7]] = v23;
  __swift_storeEnumTagSinglePayload(v29, 0, 1, v31);

  v32 = v25;
  v33 = v23;
  sub_2745686C4();
  OUTLINED_FUNCTION_56_0();
}

void sub_27456BB20(uint64_t a1)
{
  sub_27456C1F0(319, &qword_2809514E0, &qword_2809514B0, &unk_27465A468, MEMORY[0x277CBCED0]);
  if (v1 <= 0x3F)
  {
    sub_27456C1F0(319, &unk_2809514E8, &unk_28094B380, &qword_27464B110, MEMORY[0x277CBCED0]);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_27456BD00(uint64_t a1)
{
  result = sub_274637EEC();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for ParameterStateStore();
    if (v3 <= 0x3F)
    {
      result = sub_27456BDC4();
      if (v4 <= 0x3F)
      {
        result = sub_274412734(319, &qword_28094BD80, 0x277D7D7B0);
        if (v5 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

unint64_t sub_27456BDC4()
{
  result = qword_280951508;
  if (!qword_280951508)
  {
    sub_274412734(255, qword_28094AE40, 0x277D7C6D8);
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_280951508);
  }

  return result;
}

unint64_t sub_27456BE60()
{
  result = qword_280951540;
  if (!qword_280951540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280951540);
  }

  return result;
}

uint64_t sub_27456BEB4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_27456BEF4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_27456BF6C(uint64_t a1)
{
  sub_27456C114(319);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_274481024(319);
    v2 = v4;
    if (v5 <= 0x3F)
    {
      sub_27456C1F0(319, &qword_280950080, &unk_28094D7B0, &unk_2746507D0, MEMORY[0x277CDF468]);
      v2 = v6;
      if (v7 <= 0x3F)
      {
        sub_27453EAA0();
        v2 = v8;
        if (v9 <= 0x3F)
        {
          sub_27456C1F0(319, &qword_280950D10, &unk_28094D7C0, &unk_274651B60, MEMORY[0x277CDF468]);
          if (v11 > 0x3F)
          {
            return v10;
          }

          else
          {
            sub_27456C1F0(319, &qword_280951560, &qword_280951568, &qword_27465A630, MEMORY[0x277CE10B8]);
            v2 = v12;
            if (v13 <= 0x3F)
            {
              sub_27456C254(319);
              v2 = v14;
              if (v15 <= 0x3F)
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

  return v2;
}

void sub_27456C114(uint64_t a1)
{
  if (!qword_280951558)
  {
    type metadata accessor for ModuleSummaryModalCoordinator(255);
    sub_27456C1A8(&qword_280950BA0, type metadata accessor for ModuleSummaryModalCoordinator, &protocol conformance descriptor for ModuleSummaryModalCoordinator);
    v1 = sub_27463953C();
    if (!v2)
    {
      atomic_store(v1, &qword_280951558);
    }
  }
}

uint64_t sub_27456C1A8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_27456C1F0(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
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

void sub_27456C254(uint64_t a1)
{
  if (!qword_280951570)
  {
    type metadata accessor for NativeViewControllerContext();
    v1 = sub_27463AD1C();
    if (!v2)
    {
      atomic_store(v1, &qword_280951570);
    }
  }
}

unint64_t sub_27456C2E4()
{
  result = qword_280951578;
  if (!qword_280951578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280951578);
  }

  return result;
}

void sub_27456C338(BOOL *a1)
{
  OUTLINED_FUNCTION_1_32();
  OUTLINED_FUNCTION_30_2();

  sub_274569888(a1, v1 + v3);
}

uint64_t objectdestroyTm_18()
{
  OUTLINED_FUNCTION_55_1();
  type metadata accessor for ModuleSummaryModalViewModifier(0);
  OUTLINED_FUNCTION_3_14();
  v4 = v0 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  OUTLINED_FUNCTION_14_14();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094D140, &qword_27464E160);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_27463969C();
    if (!OUTLINED_FUNCTION_73_0(v5))
    {
      (*(*(v1 - 8) + 8))(v4 + v2, v1);
    }
  }

  else
  {
  }

  OUTLINED_FUNCTION_9_20();

  OUTLINED_FUNCTION_56_0();

  return swift_deallocObject();
}

uint64_t sub_27456C4DC(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_1_32();
  OUTLINED_FUNCTION_30_2();

  return sub_2745699A0(a1, a2, v2 + v5);
}

unint64_t sub_27456C54C()
{
  result = qword_2809515B0;
  if (!qword_2809515B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280951588, &qword_27465A6E0);
    sub_27456C604();
    sub_27440CA78(&qword_2809515D0, &qword_2809515D8, &qword_27465A708, MEMORY[0x277CE0830]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809515B0);
  }

  return result;
}

unint64_t sub_27456C604()
{
  result = qword_2809515B8;
  if (!qword_2809515B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280951580, &qword_27465A6D8);
    sub_27440CA78(&qword_2809515C0, &qword_280951598, &qword_27465A6F0, MEMORY[0x277CE04B0]);
    sub_27440CA78(&qword_2809515C8, &unk_2809515A0, &unk_27465A6F8, MEMORY[0x277CE0328]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809515B8);
  }

  return result;
}

unint64_t sub_27456C6E8()
{
  result = qword_2809515E0;
  if (!qword_2809515E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809514B0, &unk_27465A468);
    sub_27456C1A8(&qword_2809515E8, type metadata accessor for ModuleSummaryModalOptions, &protocol conformance descriptor for ModuleSummaryModalOptions);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809515E0);
  }

  return result;
}

uint64_t sub_27456C79C()
{
  OUTLINED_FUNCTION_57();
  v1(0);
  OUTLINED_FUNCTION_7();
  v2 = OUTLINED_FUNCTION_5_0();
  v3(v2);
  return v0;
}

uint64_t sub_27456C7F4(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_7();
  (*(v3 + 8))(a1);
  return a1;
}

double sub_27456C84C(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

void sub_27456C858(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_1_32();
  OUTLINED_FUNCTION_30_2();

  sub_27456A470(a1, a2, a3, a4, v4 + v9);
}

void sub_27456C8E0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_1_32();
  OUTLINED_FUNCTION_30_2();

  sub_27456A54C(a1, a2, a3, a4, a5, v5 + v11);
}

uint64_t sub_27456C970()
{
  OUTLINED_FUNCTION_1_32();
  OUTLINED_FUNCTION_30_2();

  return sub_27456AB20(v0 + v1);
}

void sub_27456C9C0(uint64_t *a1@<X8>)
{
  OUTLINED_FUNCTION_1_32();
  v4 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  sub_27456AB84(v4, a1);
}

uint64_t objectdestroy_61Tm()
{
  OUTLINED_FUNCTION_55_1();
  type metadata accessor for ModuleSummaryModalViewModifier(0);
  OUTLINED_FUNCTION_3_14();
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_14_14();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094D140, &qword_27464E160);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_27463969C();
    if (!OUTLINED_FUNCTION_73_0(v5))
    {
      (*(*(v1 - 8) + 8))(v0 + v4 + v2, v1);
    }
  }

  else
  {
  }

  OUTLINED_FUNCTION_9_20();

  OUTLINED_FUNCTION_56_0();

  return swift_deallocObject();
}

void sub_27456CB74(uint64_t *a1)
{
  OUTLINED_FUNCTION_1_32();
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  sub_27456AC2C(a1, v4, v5, v6);
}

uint64_t sub_27456CBDC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

double sub_27456CC54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_27456CCE0()
{
  OUTLINED_FUNCTION_57();
  v1(0);
  OUTLINED_FUNCTION_7();
  v2 = OUTLINED_FUNCTION_5_0();
  v3(v2);
  return v0;
}

unint64_t sub_27456CD58()
{
  result = qword_280951628;
  if (!qword_280951628)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_280951610, &unk_27465A720);
    sub_27440CA78(&qword_280951630, &qword_280951608, &qword_27465A718, MEMORY[0x277CE04B0]);
    sub_27440CA78(&qword_280951638, qword_280951640, qword_27465A878, MEMORY[0x277CE07C8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280951628);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_3_34()
{

  return swift_getWitnessTable();
}

void OUTLINED_FUNCTION_9_20()
{
  sub_2743F45E8(*(v1 + *(v0 + 36)), *(v1 + *(v0 + 36) + 8));
  v2 = *(v1 + *(v0 + 40));
}

uint64_t sub_27456CEF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_27456CF90(uint64_t a1)
{
  sub_27463C74C();
  sub_274506E4C(v3, *v1);
  return sub_27463C7AC();
}

uint64_t sub_27456CFD0@<X0>(uint64_t a2@<X8>)
{
  v4 = sub_27463AC2C();
  v15 = *v2;
  v16 = *(v2 + 16);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280950E20, &qword_27464D880);
  MEMORY[0x277C575F0](&v14, v5);
  if (v14)
  {
    v6 = 1.57079633;
  }

  else
  {
    v6 = 0.0;
  }

  sub_27463B1DC();
  v8 = v7;
  v10 = v9;
  v11 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(qword_280951760, &unk_27465AAB0) + 36));
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094AA48, &unk_27464FD80);
  sub_27456D0FC(v11 + *(v12 + 28));
  result = swift_getKeyPath();
  *v11 = result;
  *a2 = v4;
  *(a2 + 8) = v6;
  *(a2 + 16) = v8;
  *(a2 + 24) = v10;
  return result;
}

uint64_t sub_27456D0FC@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CE1058];
  v3 = sub_27463AC8C();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_27456D170@<X0>(uint64_t a1@<X8>)
{
  v12 = *v1;
  v13 = *(v1 + 16);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280950E20, &qword_27464D880);
  MEMORY[0x277C575F0](&v11, v3);
  v4 = 24;
  if (v11)
  {
    v4 = 40;
  }

  v5 = *(v1 + v4);

  *&v12 = v5;
  *(&v12 + 1) = v6;
  sub_274412BBC();
  result = sub_27463A53C();
  *a1 = result;
  *(a1 + 8) = v8;
  *(a1 + 16) = v9 & 1;
  *(a1 + 24) = v10;
  *(a1 + 32) = 0;
  return result;
}

uint64_t sub_27456D22C(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809516D0, &qword_27465A9F8);
  v3 = *(a1 + 16);
  sub_27463C0AC();
  swift_getTupleTypeMetadata2();
  v4 = sub_27463B19C();
  OUTLINED_FUNCTION_0_3();
  swift_getWitnessTable();
  v5 = sub_27463AE6C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v11 = &v15[-v10];
  v12 = *(a1 + 24);
  v16 = v3;
  v17 = v12;
  v18 = v1;
  sub_274415324(v4);
  sub_27463AE5C();
  OUTLINED_FUNCTION_45_0();
  swift_getWitnessTable();
  sub_2744E9688();
  v13 = *(v6 + 8);
  v13(v8, v5);
  sub_2744E9688();
  return (v13)(v11, v5);
}

uint64_t sub_27456D424@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v58 = a4;
  v48 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v47 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v46 = &v46 - v9;
  v52 = sub_27463C0AC();
  v55 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v57 = &v46 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809516D8, &qword_27465AA00);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v46 - v16;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809516D0, &qword_27465A9F8);
  v54 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v53 = &v46 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v46 - v20;
  v22 = swift_allocObject();
  v22[2] = a2;
  v22[3] = a3;
  memcpy(v22 + 4, a1, 0x49uLL);
  v60 = a2;
  v61 = a3;
  v62 = a1;
  v24 = type metadata accessor for CollapsibleDisclosureView(0, a2, a3, v23);
  (*(*(v24 - 8) + 16))(&v66, a1, v24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809516E0, &qword_27465AA08);
  sub_27456E260();
  sub_27463AD5C();
  v25 = sub_27440CA78(&qword_280951740, &qword_2809516D8, &qword_27465AA00, MEMORY[0x277CDF028]);
  v26 = sub_274482428();
  v59 = v21;
  v50 = v25;
  v49 = v26;
  sub_27463A6AC();
  v27 = *(v15 + 8);
  v51 = v14;
  v27(v17, v14);
  v66 = *a1;
  LOBYTE(v67) = *(a1 + 16);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280950E20, &qword_27464D880);
  v29 = MEMORY[0x277C575F0](v65, v28);
  if (LOBYTE(v65[0]) == 1)
  {
    v30 = v47;
    (*(a1 + 7))(v29);
    v31 = v46;
    sub_2744E9688();
    v32 = v48;
    v33 = *(v48 + 8);
    v33(v30, a2);
    sub_2744E9688();
    v33(v31, a2);
    (*(v32 + 32))(v11, v30, a2);
    v34 = 0;
  }

  else
  {
    v34 = 1;
  }

  v35 = v11;
  __swift_storeEnumTagSinglePayload(v11, v34, 1, a2);
  v36 = v57;
  sub_2745758B8(v11, v57);
  v37 = v55;
  v38 = *(v55 + 8);
  v39 = v11;
  v40 = v52;
  v38(v39, v52);
  v41 = v54;
  v42 = v53;
  v43 = v56;
  (*(v54 + 16))(v53, v59, v56);
  v65[0] = v42;
  (*(v37 + 16))(v35, v36, v40);
  v64[0] = v43;
  v64[1] = v40;
  v65[1] = v35;
  *&v66 = v51;
  *(&v66 + 1) = &type metadata for ParameterRowButtonStyle;
  v67 = v50;
  v68 = v49;
  *&v66 = swift_getOpaqueTypeConformance2();
  v63 = a3;
  *(&v66 + 1) = swift_getWitnessTable();
  sub_274575750(v65, 2, v64);
  v38(v36, v40);
  v44 = *(v41 + 8);
  v44(v59, v43);
  v38(v35, v40);
  return (v44)(v42, v43);
}

uint64_t sub_27456DAE8(uint64_t a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  sub_27463B13C();
  sub_27463946C();
}

uint64_t sub_27456DB58(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(a1 + 16);
  v11 = v2;
  v7 = v2;
  v8 = v1;
  v9 = v3;
  sub_27445E9E4(&v11, v5);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280950E20, &qword_27464D880);
  MEMORY[0x277C575F0](&v10);
  v5[0] = v2;
  v5[1] = v1;
  v6 = v3;
  sub_27463AEBC();
  sub_274501A18(&v11);
}

uint64_t sub_27456DC18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v39 = a2;
  v41 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280951738, &qword_27465AA30);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v39 - v7;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280951728, &qword_27465AA28);
  MEMORY[0x28223BE20](v40);
  v10 = &v39 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280951718, &qword_27465AA20);
  MEMORY[0x28223BE20](v11);
  v13 = &v39 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280951708, &qword_27465AA18);
  MEMORY[0x28223BE20](v14);
  v16 = &v39 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809516F8, &qword_27465AA10);
  MEMORY[0x28223BE20](v17);
  v19 = &v39 - v18;
  *v8 = sub_274639B2C();
  *(v8 + 1) = 0x4010000000000000;
  v8[16] = 0;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280951748, &qword_27465AA38);
  sub_27456E02C(v39, a3, &v8[*(v20 + 44)]);
  if (*(a1 + 72))
  {
    v21 = sub_27463ABCC();
  }

  else
  {
    v21 = sub_27463ABBC();
  }

  v22 = v21;
  KeyPath = swift_getKeyPath();
  sub_2744CE5D8(v8, v10, &qword_280951738, &qword_27465AA30);
  v24 = &v10[*(v40 + 36)];
  *v24 = KeyPath;
  v24[1] = v22;
  v25 = sub_27463A3AC();
  v26 = swift_getKeyPath();
  sub_2744CE5D8(v10, v13, &qword_280951728, &qword_27465AA28);
  v27 = &v13[*(v11 + 36)];
  *v27 = v26;
  v27[1] = v25;
  LOBYTE(v25) = sub_27463A31C();
  sub_2746390AC();
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  sub_2744CE5D8(v13, v16, &qword_280951718, &qword_27465AA20);
  v36 = &v16[*(v14 + 36)];
  *v36 = v25;
  *(v36 + 1) = v29;
  *(v36 + 2) = v31;
  *(v36 + 3) = v33;
  *(v36 + 4) = v35;
  v36[40] = 0;
  sub_27456E3A4();
  sub_27457574C(v14);
  sub_27463973C();
  sub_2744CE5D8(v16, v19, &qword_280951708, &qword_27465AA18);
  memcpy(&v19[*(v17 + 36)], __src, 0x70uLL);
  sub_27456E318();
  sub_2744E8F6C();
  LOBYTE(v25) = sub_2744E19A0();
  v37 = v41;
  sub_2744CE5D8(v19, v41, &qword_2809516F8, &qword_27465AA10);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809516E0, &qword_27465AA08);
  *(v37 + *(result + 36)) = v25 & 1;
  return result;
}

uint64_t sub_27456E02C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280951750, &qword_27465AAA0);
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6);
  v9 = &v24[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v24[-1] - v11;
  type metadata accessor for CollapsibleDisclosureView(0, a1, a2, v13);
  sub_27456D170(v24);
  v14 = v24[0];
  v15 = v24[1];
  v16 = v25;
  v17 = v27;
  v23 = v26;
  sub_27456CFD0(v12);
  v18 = sub_27463ABCC();
  KeyPath = swift_getKeyPath();
  v20 = &v12[*(v7 + 44)];
  *v20 = KeyPath;
  v20[1] = v18;
  sub_27456E5CC(v12, v9);
  *a3 = v14;
  *(a3 + 8) = v15;
  *(a3 + 16) = v16;
  *(a3 + 24) = v23;
  *(a3 + 32) = v17;
  *(a3 + 40) = 0;
  *(a3 + 48) = 1;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280951758, &qword_27465AAA8);
  sub_27456E5CC(v9, a3 + *(v21 + 64));
  sub_27440B094(v14, v15, v16);

  sub_27456E63C(v12);
  sub_27456E63C(v9);
  sub_274412C10(v14, v15, v16);
}

unint64_t sub_27456E260()
{
  result = qword_2809516E8;
  if (!qword_2809516E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809516E0, &qword_27465AA08);
    sub_27456E318();
    sub_27440CA78(&unk_28094DE30, &qword_28094AA90, &qword_2746498B0, MEMORY[0x277CE0470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809516E8);
  }

  return result;
}

unint64_t sub_27456E318()
{
  result = qword_2809516F0;
  if (!qword_2809516F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809516F8, &qword_27465AA10);
    sub_27456E3A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809516F0);
  }

  return result;
}

unint64_t sub_27456E3A4()
{
  result = qword_280951700;
  if (!qword_280951700)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280951708, &qword_27465AA18);
    sub_27456E430();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280951700);
  }

  return result;
}

unint64_t sub_27456E430()
{
  result = qword_280951710;
  if (!qword_280951710)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280951718, &qword_27465AA20);
    sub_27456E4E8();
    sub_27440CA78(&unk_28094AA00, &qword_28094CC80, &qword_27464EA50, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280951710);
  }

  return result;
}

unint64_t sub_27456E4E8()
{
  result = qword_280951720;
  if (!qword_280951720)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280951728, &qword_27465AA28);
    sub_27440CA78(&qword_280951730, &qword_280951738, &qword_27465AA30, MEMORY[0x277CE1138]);
    sub_27440CA78(&unk_28094D180, &qword_28094C600, &qword_27464FD90, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280951720);
  }

  return result;
}

uint64_t sub_27456E5CC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280951750, &qword_27465AAA0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_27456E63C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280951750, &qword_27465AAA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_BYTE *sub_27456E6CC(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_27456E7CC()
{
  OUTLINED_FUNCTION_25_13();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_27_9();
  v1 = OUTLINED_FUNCTION_26();
  v2(v1);
  swift_storeEnumTagMultiPayload();
  return OUTLINED_FUNCTION_28_12();
}

uint64_t sub_27456E878()
{
  OUTLINED_FUNCTION_25_13();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_27_9();
  v1 = OUTLINED_FUNCTION_26();
  v2(v1);
  swift_storeEnumTagMultiPayload();
  return OUTLINED_FUNCTION_28_12();
}

uint64_t sub_27456E9A8()
{
  OUTLINED_FUNCTION_5_3();
  result = sub_274438758();
  *v0 = result & 1;
  return result;
}

uint64_t sub_27456E9FC()
{
  OUTLINED_FUNCTION_5_3();
  result = sub_2744387D8();
  *v0 = result;
  return result;
}

uint64_t ModuleSummaryRowView.init(parameter:stateStore:style:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *(a5 + 40) = sub_274542524;
  *(a5 + 48) = 0;
  *(a5 + 56) = 0;
  type metadata accessor for WorkflowEditorOptions(0);
  sub_274575490(&qword_28094A730, type metadata accessor for WorkflowEditorOptions, &protocol conformance descriptor for WorkflowEditorOptions);
  v18 = a3[1];
  v19 = *a3;
  *(a5 + 80) = sub_27463979C();
  *(a5 + 88) = v10;
  *(a5 + 96) = swift_getKeyPath();
  *(a5 + 104) = 0;
  *(a5 + 112) = swift_getKeyPath();
  *(a5 + 152) = 0;
  *(a5 + 160) = swift_getKeyPath();
  *(a5 + 168) = 0;
  *(a5 + 176) = swift_getKeyPath();
  *(a5 + 184) = 0;
  *(a5 + 192) = swift_getKeyPath();
  *(a5 + 200) = 0;
  v13 = type metadata accessor for ModuleSummaryRowView(0, a4, v11, v12);
  v14 = *(v13 + 64);
  *(a5 + v14) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094D140, &qword_27464E160);
  swift_storeEnumTagMultiPayload();
  v15 = a5 + *(v13 + 68);
  *v15 = swift_getKeyPath();
  *(v15 + 8) = 0;
  *(a5 + 24) = v18;
  *(a5 + 8) = v19;
  *a5 = a1;
  result = sub_27456ED58(a2);
  *(a5 + 64) = result;
  *(a5 + 72) = v17;
  return result;
}

uint64_t sub_27456EC10(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_24_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v4);
  v6 = &v8 - v5;
  sub_27445EAD4(a1, &v8 - v5, &unk_28094D7C0, &unk_274651B60);
  return sub_2744B2F78(v6);
}

uint64_t sub_27456ECB0()
{
  type metadata accessor for ModuleSummaryModalCoordinator(0);
  sub_274575490(&qword_280950BA0, type metadata accessor for ModuleSummaryModalCoordinator, &protocol conformance descriptor for ModuleSummaryModalCoordinator);

  return sub_27463920C();
}

uint64_t sub_27456ED58(uint64_t a1)
{
  type metadata accessor for ParameterStateStore();
  sub_274575490(&qword_28094B550, type metadata accessor for ParameterStateStore, &protocol conformance descriptor for ParameterStateStore);

  return sub_27463950C();
}

uint64_t sub_27456EDD4()
{
  v1 = sub_274639ABC();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v8[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *(v0 + 96);
  if (*(v0 + 104) != 1)
  {

    sub_27463BC0C();
    v6 = sub_27463A2FC();
    sub_274638CEC();

    sub_274639AAC();
    swift_getAtKeyPath();
    sub_2743F45E8(v5, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v5) = v8[15];
  }

  return v5 & 1;
}

uint64_t sub_27456EF1C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_274639ABC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_27445EAD4(v1 + 112, v10, &qword_28094E078, &qword_27465AF70);
  if (v12 == 1)
  {
    v8 = v10[1];
    *a1 = v10[0];
    *(a1 + 16) = v8;
    *(a1 + 32) = v11;
  }

  else
  {
    sub_27463BC0C();
    v9 = sub_27463A2FC();
    sub_274638CEC();

    sub_274639AAC();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }

  return result;
}

void sub_27456F08C(_BYTE *a1@<X8>)
{
  v3 = sub_274639ABC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + 160);
  if (*(v1 + 168) == 1)
  {
    *a1 = v7;
  }

  else
  {

    sub_27463BC0C();
    v8 = sub_27463A2FC();
    sub_274638CEC();

    sub_274639AAC();
    swift_getAtKeyPath();
    sub_2743F45E8(v7, 0);
    (*(v4 + 8))(v6, v3);
  }
}

void ModuleSummaryRowView.body.getter()
{
  OUTLINED_FUNCTION_24();
  v2 = v1;
  v56 = v3;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809517F0, &qword_27465ACA8);
  v53 = *(v2 + 16);
  type metadata accessor for SlotParameterPicker(255, v53, v4, v5);
  sub_27463965C();
  sub_27463965C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809517F8, &qword_27465ACB0);
  OUTLINED_FUNCTION_22();
  sub_274639DEC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_280951800, &qword_27465ACB8);
  OUTLINED_FUNCTION_22();
  sub_274639DEC();
  sub_27463965C();
  OUTLINED_FUNCTION_22();
  sub_274639DEC();
  OUTLINED_FUNCTION_22();
  swift_getTupleTypeMetadata2();
  sub_27463B19C();
  OUTLINED_FUNCTION_0_3();
  swift_getWitnessTable();
  v6 = sub_27463ADAC();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v10);
  v12 = &v51 - v11;
  sub_274639DEC();
  OUTLINED_FUNCTION_1();
  v54 = v14;
  v55 = v13;
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v15);
  v17 = &v51 - v16;
  v18 = sub_27456F818(v2);
  if (v18)
  {
    v19 = v18;
    v51 = &v51;
    MEMORY[0x28223BE20](v18);
    v52 = v12;
    *(&v51 - 4) = v53;
    *(&v51 - 3) = v0;
    *(&v51 - 2) = v20;
    sub_274639B2C();
    sub_27463AD9C();
    OUTLINED_FUNCTION_5_1();
    swift_getWitnessTable();
    v21 = v52;
    OUTLINED_FUNCTION_18_10();
    sub_2744E9688();
    v22 = *(v8 + 8);
    v23 = OUTLINED_FUNCTION_18_10();
    v22(v23);
    sub_2744E9688();
    sub_274573A5C();
    OUTLINED_FUNCTION_18_10();
    sub_27456E7CC();

    v24 = OUTLINED_FUNCTION_18_10();
    v22(v24);
    (v22)(v21, v6);
  }

  else
  {
    v52 = v17;
    v53 = v6;
    *&v86[0] = 31524;
    *(&v86[0] + 1) = 0xE200000000000000;
    v25 = v0;
    v26 = *v0;
    v27 = [*v0 key];
    sub_27463B6AC();

    v28 = OUTLINED_FUNCTION_24_5();
    MEMORY[0x277C57EA0](v28);

    MEMORY[0x277C57EA0](125, 0xE100000000000000);
    v51 = *(&v86[0] + 1);
    v29 = *&v86[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094C820, &unk_27464AF60);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_274648560;
    *(inited + 32) = v26;
    if (sub_274453594())
    {
      v31 = v26;
      sub_274573900(inited, v32, v33, v34, v35, v36, v37, v38, v51);
      v40 = v39;
    }

    else
    {
      swift_setDeallocating();
      v41 = v26;
      sub_2744EBB98();
      v40 = MEMORY[0x277D84FA0];
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280951810, &qword_27464BB28);
    v42 = swift_allocObject();
    *(v42 + 16) = xmmword_274648570;
    v43 = [v26 key];
    v44 = sub_27463B6AC();
    v46 = v45;

    *(v42 + 32) = v44;
    *(v42 + 40) = v46;
    *(v42 + 48) = v25[9];

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809521A0, &unk_27465ACC0);
    OUTLINED_FUNCTION_6_19();
    v47 = sub_2746387CC();
    KeyPath = swift_getKeyPath();
    v73 = 0;
    v74 = swift_getKeyPath();
    v75 = 0;
    v76 = swift_getKeyPath();
    v77 = 0;
    v78 = swift_getKeyPath();
    v79 = 0;
    v61 = 0;
    v59 = 0u;
    v60 = 0u;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280951040, &qword_2746594F0);
    sub_27463ACDC();
    v80 = v86[0];
    v81 = v86[1];
    v82 = v86[2];
    v84 = 0;
    v85 = 0;
    v62[0] = v29;
    v62[1] = v51;
    v62[2] = v40;
    v62[3] = v47;
    v62[4] = 0;
    v63 = 2;
    v83 = sub_274550400;
    v71 = 0;
    v65 = 0;
    v66 = 0;
    v64 = MEMORY[0x277D84F90];
    v67 = 0;
    v68 = 0;
    v69 = 0;
    v70 = 0;
    sub_274556FE0(v62, v86);
    OUTLINED_FUNCTION_5_1();
    swift_getWitnessTable();
    sub_274573A5C();
    v17 = v52;
    sub_27456E878();
    sub_274573AB0(v86);
  }

  OUTLINED_FUNCTION_5_1();
  WitnessTable = swift_getWitnessTable();
  v49 = sub_274573A5C();
  v57 = WitnessTable;
  v58 = v49;
  OUTLINED_FUNCTION_9_0();
  v50 = v55;
  swift_getWitnessTable();
  sub_2744E9688();
  (*(v54 + 8))(v17, v50);
  OUTLINED_FUNCTION_23();
}

id sub_27456F818(uint64_t a1)
{
  v2 = *v1;
  swift_getObjectType();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  if ([ObjCClassFromMetadata respondsToSelector_])
  {
    v4 = [ObjCClassFromMetadata supportsEditingMultipleValues];
  }

  else
  {
    v4 = 0;
  }

  if ([v2 allowsMultipleValues])
  {
    if ((sub_27456EDD4() & 1) == 0)
    {
      v5 = 0;
      if ([v2 isRangedSizeArray] & 1) != 0 || ((v4 ^ 1))
      {
        return v5;
      }
    }
  }

  v6 = sub_27456FFE0();
  if (v6)
  {
    v7 = v6;
    if (WFParameterStateIsMultipleValue(v6) && (([v2 isRangedSizeArray] & 1) != 0 || (v4 & 1) == 0))
    {
      goto LABEL_22;
    }

    IsVariable = WFParameterStateIsVariable(v7);
    swift_unknownObjectRelease();
    if (IsVariable)
    {
      return 0;
    }
  }

  if (([v2 respondsToSelector_] & 1) == 0)
  {
    if ([v2 respondsToSelector_])
    {
      v5 = [v2 moduleSummarySlotForState_];
      goto LABEL_23;
    }

    return 0;
  }

  v5 = [v2 moduleSummarySlotsForState_];
  if (!v5)
  {
LABEL_23:
    swift_unknownObjectRelease();
    return v5;
  }

  sub_274412734(0, &qword_28094BD80, 0x277D7D7B0);
  v9 = sub_27463B81C();
  swift_unknownObjectRelease();

  if (sub_274453594() != 1)
  {
    if ((sub_27456EDD4() & 1) == 0)
    {
      goto LABEL_27;
    }

    if (sub_27456FFE0())
    {

LABEL_22:
      swift_unknownObjectRelease();
      return 0;
    }
  }

  if (!sub_274453594())
  {
LABEL_27:

    return 0;
  }

  sub_2744535A4();
  if ((v9 & 0xC000000000000001) != 0)
  {
    v10 = MEMORY[0x277C58B20](0, v9);
  }

  else
  {
    v10 = *(v9 + 32);
  }

  v5 = v10;

  return v5;
}

uint64_t sub_27456FA88@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v47 = a2;
  v53 = a5;
  type metadata accessor for SlotParameterPicker(255, a3, a3, a4);
  v7 = sub_27463965C();
  v8 = sub_27463965C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809517F8, &qword_27465ACB0);
  v48 = v8;
  v9 = sub_274639DEC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_280951800, &qword_27465ACB8);
  v50 = v9;
  v49 = sub_274639DEC();
  v51 = sub_27463965C();
  v10 = sub_274639DEC();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v52 = &v39 - v15;
  v16 = *a1;
  objc_opt_self();
  v17 = swift_dynamicCastObjCClass();
  type metadata accessor for ModuleSummaryRowView(0, a3, v18, v19);
  if (!v17)
  {
    goto LABEL_8;
  }

  v46 = v7;
  v20 = v16;
  if (!sub_27456FFE0())
  {

    goto LABEL_8;
  }

  objc_opt_self();
  v21 = swift_dynamicCastObjCClass();
  if (!v21 || (v22 = [v17 accessoryColorForPossibleState_]) == 0)
  {

    swift_unknownObjectRelease();
LABEL_8:
    v71 = 0u;
    v72 = 0u;
    v69 = 0u;
    v70 = 0u;
    goto LABEL_9;
  }

  v23 = v22;
  sub_27463B0CC();
  sub_2746392FC();
  v44 = v65;
  v45 = v63;
  v40 = v66;
  v41 = v64;
  v42 = v68;
  v43 = v67;
  v24 = [v23 platformColor];
  v39 = sub_27463AB0C();

  swift_unknownObjectRelease();
  KeyPath = swift_getKeyPath();
  LOBYTE(v62[0]) = v40;
  *&v69 = v45;
  BYTE8(v69) = v41;
  *&v70 = v44;
  BYTE8(v70) = v40;
  *&v71 = v43;
  *(&v71 + 1) = v42;
  *&v72 = KeyPath;
  *(&v72 + 1) = v39;
LABEL_9:
  sub_274570074();
  WitnessTable = swift_getWitnessTable();
  v61[12] = WitnessTable;
  v61[13] = MEMORY[0x277CDFC60];
  v27 = swift_getWitnessTable();
  v28 = MEMORY[0x277CDFC48];
  v61[10] = v27;
  v61[11] = MEMORY[0x277CDFC48];
  v29 = swift_getWitnessTable();
  v30 = sub_27440CA78(&qword_280951978, &qword_2809517F8, &qword_27465ACB0, MEMORY[0x277CE1138]);
  v61[8] = v29;
  v61[9] = v30;
  v31 = swift_getWitnessTable();
  v32 = sub_274574990();
  v61[6] = v31;
  v61[7] = v32;
  v33 = swift_getWitnessTable();
  v61[4] = WitnessTable;
  v61[5] = v28;
  v34 = swift_getWitnessTable();
  v61[2] = v33;
  v61[3] = v34;
  v35 = swift_getWitnessTable();
  v36 = v52;
  sub_2744E9688();
  v37 = *(v11 + 8);
  v37(v13, v10);
  v57 = v69;
  v58 = v70;
  v59 = v71;
  v60 = v72;
  v61[0] = &v57;
  (*(v11 + 16))(v13, v36, v10);
  v61[1] = v13;
  sub_27445EAD4(&v69, v62, &qword_2809517F0, &qword_27465ACA8);
  v56[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809517F0, &qword_27465ACA8);
  v56[1] = v10;
  v54 = sub_274574DEC();
  v55 = v35;
  sub_274575750(v61, 2, v56);
  sub_27440CB1C(&v69, &qword_2809517F0, &qword_27465ACA8);
  v37(v36, v10);
  v37(v13, v10);
  v62[0] = v57;
  v62[1] = v58;
  v62[2] = v59;
  v62[3] = v60;
  return sub_27440CB1C(v62, &qword_2809517F0, &qword_27465ACA8);
}

uint64_t sub_27456FFE0()
{
  sub_27456ECB0();
  v0 = sub_274568B04();

  if (v0)
  {
    sub_27456ECB0();
    v1 = sub_27456879C();
  }

  else
  {

    swift_getObjectType();
    v1 = sub_2746385AC();
  }

  v2 = v1;

  return v2;
}

void sub_274570074()
{
  OUTLINED_FUNCTION_24();
  v195 = v3;
  v196 = v2;
  v183 = v4;
  v186 = *(v4 + 16);
  v7 = type metadata accessor for SlotParameterPicker(255, v186, v5, v6);
  v8 = sub_27463965C();
  OUTLINED_FUNCTION_1();
  v185 = v9;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_2();
  v184 = v11 - v12;
  MEMORY[0x28223BE20](v13);
  v172 = &v167 - v14;
  v177 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809519B0, &qword_27465AE88);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_27_9();
  v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280951A28, &qword_27465AEF8);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_40_1();
  v176 = v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280951800, &qword_27465ACB8);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_40_1();
  v181 = v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809517F8, &qword_27465ACB0);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_40_1();
  v169 = v23;
  v24 = sub_27463965C();
  v25 = sub_27463965C();
  v178 = v21;
  sub_274639DEC();
  OUTLINED_FUNCTION_1();
  v180 = v26;
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_40_1();
  v179 = v28;
  v192 = v29;
  v187 = v18;
  sub_274639DEC();
  OUTLINED_FUNCTION_1();
  v189 = v30;
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_40_1();
  v188 = v32;
  v199 = v7;
  v174 = *(v7 - 8);
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_40_1();
  v173 = v34;
  v198 = v24;
  v170 = *(v24 - 8);
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v35);
  v197 = v25;
  v36 = *(v25 - 8);
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_2();
  v40 = v38 - v39;
  MEMORY[0x28223BE20](v41);
  v182 = &v167 - v42;
  v191 = v43;
  sub_274639DEC();
  OUTLINED_FUNCTION_1();
  v193 = v45;
  v194 = v44;
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_40_1();
  v190 = v47;
  v49 = *(v0 + 8);
  v48 = *(v0 + 16);
  v50 = *(v0 + 24);
  v51 = *(v0 + 32);
  v171 = v40;
  v184 = v36;
  v185 = v8;
  v52 = v1;
  v53 = v49;
  v54 = v51;
  v55 = v50;
  switch(v48)
  {
    case 0uLL:
      goto LABEL_5;
    case 1uLL:
      v56 = v50;
      sub_274575008(v49, 1uLL, v50, v51);
      v57 = sub_274639B2C();
      v58 = v169;
      *v169 = v57;
      v58[1] = 0x4020000000000000;
      *(v58 + 16) = 0;
      v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280951A38, &qword_27465AF08);
      sub_2745719BC(v196, v49, 1, v56, v51, v186, v58 + *(v59 + 44));
      OUTLINED_FUNCTION_0_41();
      WitnessTable = swift_getWitnessTable();
      v218 = WitnessTable;
      v219 = MEMORY[0x277CDFC60];
      OUTLINED_FUNCTION_15_16();
      v216 = swift_getWitnessTable();
      v217 = MEMORY[0x277CDFC48];
      v61 = swift_getWitnessTable();
      v62 = OUTLINED_FUNCTION_1_33(&qword_280951978, &qword_2809517F8, &qword_27465ACB0);
      v63 = v179;
      sub_27456E878();
      v214 = v61;
      v215 = v62;
      v64 = OUTLINED_FUNCTION_36_6(MEMORY[0x277CE0340]);
      v65 = sub_274574990();
      v66 = v188;
      sub_27456E7CC();
      (*(v180 + 8))(v63, v54);
      v212 = v64;
      v213 = v65;
      v67 = MEMORY[0x277CDFC60];
      v68 = v191;
      swift_getWitnessTable();
      v210 = WitnessTable;
      v211 = MEMORY[0x277CDFC48];
      swift_getWitnessTable();
      v69 = v68;
      v70 = v190;
      sub_27456E7CC();
      OUTLINED_FUNCTION_38_5();
      v71(v66, v69);
      v72 = v58;
      v73 = &qword_2809517F8;
      v74 = &qword_27465ACB0;
      goto LABEL_6;
    case 2uLL:
      goto LABEL_4;
    case 3uLL:
      sub_274575008(v49, 3uLL, v50, v51);
      v121 = sub_274639B2C();
      v232 = 0;
      sub_2745725C4(v196, v186, v235);
      memcpy(v233, v235, sizeof(v233));
      memcpy(v234, v235, sizeof(v234));
      sub_27445EAD4(v233, v230, &qword_280951A30, &qword_27465AF00);
      sub_27440CB1C(v234, &qword_280951A30, &qword_27465AF00);
      memcpy(&v231[7], v233, 0xA0uLL);
      v122 = v232;
      sub_27463B0CC();
      sub_2746392FC();
      *v235 = v121;
      *&v235[8] = 0x4020000000000000;
      v235[16] = v122;
      memcpy(&v235[17], v231, 0xA7uLL);
      memcpy(v176, v235, 0xE8uLL);
      swift_storeEnumTagMultiPayload();
      sub_27445EAD4(v235, v230, &qword_280951990, &qword_27465AE78);
      v123 = OUTLINED_FUNCTION_24_5();
      __swift_instantiateConcreteTypeFromMangledNameV2(v123, v124);
      sub_274574A1C();
      v125 = sub_274574AD4();
      v126 = v181;
      OUTLINED_FUNCTION_44_4(v125, v127, v128, v129, v125);
      OUTLINED_FUNCTION_0_41();
      v196 = swift_getWitnessTable();
      v228 = v196;
      v67 = MEMORY[0x277CDFC60];
      v229 = MEMORY[0x277CDFC60];
      OUTLINED_FUNCTION_4_29();
      v226 = swift_getWitnessTable();
      v227 = MEMORY[0x277CDFC48];
      v130 = OUTLINED_FUNCTION_35_5();
      v131 = OUTLINED_FUNCTION_1_33(&qword_280951978, &qword_2809517F8, &qword_27465ACB0);
      v224 = v130;
      v225 = v131;
      OUTLINED_FUNCTION_12_15();
      v133 = OUTLINED_FUNCTION_36_6(v132);
      v134 = sub_274574990();
      v135 = v188;
      sub_27456E878();
      sub_27440CB1C(v126, &unk_280951800, &qword_27465ACB8);
      v222 = v133;
      v223 = v134;
      v136 = v191;
      swift_getWitnessTable();
      v220 = v196;
      v221 = MEMORY[0x277CDFC48];
      OUTLINED_FUNCTION_42_6();
      v70 = v190;
      sub_27456E7CC();
      sub_27440CB1C(v235, &qword_280951990, &qword_27465AE78);
      OUTLINED_FUNCTION_38_5();
      v137(v135, v136);
      break;
    case 4uLL:
      v53 = 0;
      v54 = 0;
      v55 = 0;
      if ([v196 preferContextMenu])
      {
LABEL_4:
        v75 = OUTLINED_FUNCTION_18_10();
        sub_274575008(v75, v76, v77, v51);
        sub_27456FFE0();
        *v235 = v53;
        *&v235[8] = 2;
        *&v235[16] = v55;
        *&v235[24] = v54;
        v78 = v196;
        sub_27457162C();
        swift_unknownObjectRelease();
        v79 = *v0;

        v80 = v78;
        v81 = v79;
        v82 = v173;
        sub_27453BF94();
        OUTLINED_FUNCTION_0_41();
        v165 = v199;
        v166 = swift_getWitnessTable();
        sub_27457574C(v165);
        sub_27463A90C();
        (*(v174 + 8))(v82, v165);
        v208 = v166;
        v209 = MEMORY[0x277CDFC60];
        v83 = v198;
        v84 = swift_getWitnessTable();
        sub_27456E994(v83, v84);
        v85 = OUTLINED_FUNCTION_24_5();
        v86(v85);
        v206 = v84;
        v207 = MEMORY[0x277CDFC48];
        v87 = v197;
        v88 = swift_getWitnessTable();
        OUTLINED_FUNCTION_21_12();
        sub_2744E9688();
        v89 = *(v184 + 8);
        v184 += 8;
        v196 = v89;
        v90 = OUTLINED_FUNCTION_21_12();
        v91(v90);
        OUTLINED_FUNCTION_24_5();
        sub_2744E9688();
        v92 = OUTLINED_FUNCTION_1_33(&qword_280951978, &qword_2809517F8, &qword_27465ACB0);
        OUTLINED_FUNCTION_21_12();
        sub_27456E7CC();
        v204 = v88;
        v205 = v92;
        v93 = OUTLINED_FUNCTION_36_6(MEMORY[0x277CE0340]);
        v94 = sub_274574990();
        v95 = v188;
        OUTLINED_FUNCTION_26();
        sub_27456E7CC();
        v96 = OUTLINED_FUNCTION_26();
        v97(v96);
        v202 = v93;
        v203 = v94;
        v98 = v191;
        swift_getWitnessTable();
        v200 = v166;
        v201 = MEMORY[0x277CDFC48];
        swift_getWitnessTable();
        v70 = v190;
        OUTLINED_FUNCTION_18_10();
        sub_27456E7CC();
        OUTLINED_FUNCTION_38_5();
        v99 = v95;
        v67 = MEMORY[0x277CDFC60];
        v100(v99, v98);
        v101 = v196;
        (v196)(v171, v87);
        v101(v182, v87);
      }

      else
      {
LABEL_5:
        *v235 = v53;
        *&v235[8] = 0;
        *&v235[16] = v55;
        *&v235[24] = v54;
        v102 = OUTLINED_FUNCTION_18_10();
        sub_274575008(v102, v103, v104, v51);
        v168 = v52;
        sub_274571F1C(v196, v235, v183, v52);
        sub_27445EAD4(v52, v176, &qword_2809519B0, &qword_27465AE88);
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280951990, &qword_27465AE78);
        sub_274574A1C();
        v105 = sub_274574AD4();
        v106 = v181;
        OUTLINED_FUNCTION_44_4(v105, v107, v108, v109, v105);
        OUTLINED_FUNCTION_0_41();
        v110 = swift_getWitnessTable();
        v244 = v110;
        v245 = MEMORY[0x277CDFC60];
        OUTLINED_FUNCTION_4_29();
        v242 = swift_getWitnessTable();
        v243 = MEMORY[0x277CDFC48];
        v111 = OUTLINED_FUNCTION_35_5();
        v112 = OUTLINED_FUNCTION_1_33(&qword_280951978, &qword_2809517F8, &qword_27465ACB0);
        v240 = v111;
        v241 = v112;
        OUTLINED_FUNCTION_12_15();
        v114 = OUTLINED_FUNCTION_36_6(v113);
        v115 = sub_274574990();
        v116 = v188;
        sub_27456E878();
        sub_27440CB1C(v106, &unk_280951800, &qword_27465ACB8);
        v238 = v114;
        v239 = v115;
        v117 = v191;
        swift_getWitnessTable();
        v236 = v110;
        v237 = MEMORY[0x277CDFC48];
        OUTLINED_FUNCTION_42_6();
        OUTLINED_FUNCTION_18_10();
        v70 = v118;
        sub_27456E7CC();
        OUTLINED_FUNCTION_38_5();
        v119 = v116;
        v67 = MEMORY[0x277CDFC60];
        v120(v119, v117);
        v72 = v168;
        v73 = &qword_2809519B0;
        v74 = &qword_27465AE88;
LABEL_6:
        sub_27440CB1C(v72, v73, v74);
      }

      break;
    default:
      v138 = *v0;
      v139 = v50;

      v140 = OUTLINED_FUNCTION_18_10();
      v167 = v139;
      sub_274575008(v140, v141, v139, v51);
      v142 = v196;

      v143 = v138;

      v144 = v173;
      OUTLINED_FUNCTION_18_10();
      sub_27453BF94();
      OUTLINED_FUNCTION_0_41();
      v145 = v199;
      v146 = swift_getWitnessTable();
      v147 = v184;
      sub_27456E994(v145, v146);
      (*(v174 + 8))(v144, v145);
      v266 = v146;
      v267 = MEMORY[0x277CDFC48];
      OUTLINED_FUNCTION_4_29();
      v189 = swift_getWitnessTable();
      sub_2744E9688();
      v196 = *(v185 + 8);
      v185 += 8;
      (v196)(v147, v49);
      sub_2744E9688();
      v264 = v146;
      v265 = MEMORY[0x277CDFC60];
      v262 = swift_getWitnessTable();
      v263 = MEMORY[0x277CDFC48];
      v148 = OUTLINED_FUNCTION_35_5();
      v149 = OUTLINED_FUNCTION_1_33(&qword_280951978, &qword_2809517F8, &qword_27465ACB0);
      v260 = v148;
      v261 = v149;
      v150 = OUTLINED_FUNCTION_36_6(MEMORY[0x277CE0340]);
      v151 = sub_274574990();
      v258 = v150;
      v259 = v151;
      swift_getWitnessTable();
      v152 = v190;
      v153 = v184;
      sub_27456E878();
      v154 = v49;
      v67 = MEMORY[0x277CDFC60];
      v70 = v152;
      sub_274575060(v154, v48);
      v155 = v196;
      (v196)(v153, v53);
      v155(v172, v53);
      break;
  }

  OUTLINED_FUNCTION_0_41();
  v156 = swift_getWitnessTable();
  v256 = v156;
  v257 = v67;
  OUTLINED_FUNCTION_15_16();
  v254 = swift_getWitnessTable();
  v157 = MEMORY[0x277CDFC48];
  v255 = MEMORY[0x277CDFC48];
  v158 = swift_getWitnessTable();
  v159 = OUTLINED_FUNCTION_1_33(&qword_280951978, &qword_2809517F8, &qword_27465ACB0);
  v252 = v158;
  v253 = v159;
  v160 = swift_getWitnessTable();
  v161 = sub_274574990();
  v250 = v160;
  v251 = v161;
  v162 = swift_getWitnessTable();
  v248 = v156;
  v249 = v157;
  v163 = swift_getWitnessTable();
  v246 = v162;
  v247 = v163;
  v164 = v194;
  swift_getWitnessTable();
  sub_2744E9688();
  (*(v193 + 8))(v70, v164);
  OUTLINED_FUNCTION_23();
}

void sub_2745712E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_15_9();
  a23 = v24;
  a24 = v25;
  v27 = v26;
  v29 = v28;
  v30 = sub_27456FFE0();
  v31 = sub_274571404(v27, v30);
  v33 = v32;
  swift_unknownObjectRelease();
  if (v33)
  {
    a11 = v31;
    a12 = v33;
    sub_274412BBC();
    v34 = sub_27463A53C();
    v36 = v35;
    v38 = v37;
    sub_27456F08C(&a11);
    if (a11 == 2)
    {
      sub_27463ABCC();
    }

    else
    {
      sub_27463ABBC();
    }

    v39 = sub_27463A4DC();
    v40 = v43;
    v45 = v44;
    v42 = v46;

    sub_274412C10(v34, v36, v38 & 1);

    v41 = v45 & 1;
  }

  else
  {
    v39 = 0;
    v40 = 0;
    v41 = 0;
    v42 = 0;
  }

  *v29 = v39;
  v29[1] = v40;
  v29[2] = v41;
  v29[3] = v42;
  OUTLINED_FUNCTION_16_10();
}

uint64_t sub_274571404(void *a1, uint64_t a2)
{
  v2 = a2;
  if (!a2)
  {
    return v2;
  }

  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4 && (v5 = [v4 parameterStates]) != 0)
  {
    v6 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094BD50, &qword_2746475D0);
    sub_27463B81C();

    v7 = sub_274453594();

    v2 = 0;
    if (!v7 || !a1)
    {
      return v2;
    }
  }

  else if (!a1)
  {
    return 0;
  }

  v8 = [a1 contentAttributedString];
  if (!v8)
  {
    return 0;
  }

  v9 = v8;
  v10 = [v8 string];
  v2 = sub_27463B6AC();
  v12 = v11;

  sub_27463B72C();
  v13 = sub_27463B73C();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280951A40, &qword_27465AF10);
  sub_27440CA78(&qword_280951A48, &qword_280951A40, &qword_27465AF10, MEMORY[0x277D83D30]);
  sub_274412BBC();
  v14 = sub_27463C06C();
  if ([v9 containsAttachmentsInRange_])
  {
    v16 = sub_274573708(v13, v2, v12);
    v2 = MEMORY[0x277C57E40](v16);
  }

  return v2;
}

void sub_27457162C()
{
  OUTLINED_FUNCTION_24();
  v2 = v1;
  v3 = v0;
  v5 = *(v4 + 8);
  if (v5)
  {
    if (v5 == 1)
    {
      sub_27463B70C("Choose", 6);
      if (qword_2809492C0 != -1)
      {
        OUTLINED_FUNCTION_2_22(&qword_2809492C0);
      }

      v6 = qword_28094BB00;
      v7 = sub_27463B66C();
      v8 = sub_27463B66C();

      v9 = [v6 localizedStringForKey:v7 value:v8 table:0];

      sub_27463B6AC();
      OUTLINED_FUNCTION_34_8();
    }

    else
    {
      v11 = [v0 localizedPlaceholder];
      if (v11)
      {
        v12 = v11;
        sub_27463B6AC();
        OUTLINED_FUNCTION_34_8();
      }

      else
      {
        v17 = [v3 languageCode];
        if (v17)
        {
          v18 = v17;
          sub_27463B6AC();
          v20 = v19;
        }

        else
        {
          v20 = 0;
        }

        sub_27463B70C("Choose", 6);
        if (qword_2809492C0 != -1)
        {
          OUTLINED_FUNCTION_2_22(&qword_2809492C0);
        }

        v26 = qword_28094BB00;
        v27 = sub_27463B66C();
        v28 = sub_27463B66C();

        if (v20)
        {
          OUTLINED_FUNCTION_21_12();
          v29 = sub_27463B66C();
        }

        else
        {
          v29 = 0;
        }

        v12 = [v26 localizedStringForKey:v27 value:v28 table:0 localization:v29];

        sub_27463B6AC();
        OUTLINED_FUNCTION_34_8();
      }

      sub_274571404(v3, v2);
      if (v30)
      {
      }
    }
  }

  else
  {
    sub_274571404(v0, v1);
    if (v10)
    {
      OUTLINED_FUNCTION_34_8();
    }

    else
    {
      v13 = [v3 languageCode];
      if (v13)
      {
        v14 = v13;
        sub_27463B6AC();
        v16 = v15;
      }

      else
      {
        v16 = 0;
      }

      sub_27463B70C("Choose", 6);
      if (qword_2809492C0 != -1)
      {
        OUTLINED_FUNCTION_2_22(&qword_2809492C0);
      }

      v21 = qword_28094BB00;
      v22 = sub_27463B66C();
      v23 = sub_27463B66C();

      if (v16)
      {
        v24 = sub_27463B66C();
      }

      else
      {
        v24 = 0;
      }

      v25 = [v21 localizedStringForKey:v22 value:v23 table:0 localization:v24];

      sub_27463B6AC();
      OUTLINED_FUNCTION_34_8();
    }
  }

  OUTLINED_FUNCTION_23();
}

uint64_t sub_2745719BC@<X0>(void *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  *&v52 = a2;
  *(&v52 + 1) = a3;
  v57 = a7;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280951A50, &qword_27465AF18);
  MEMORY[0x28223BE20](v56);
  v12 = &v52 - v11;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280951A58, &qword_27465AF20);
  MEMORY[0x28223BE20](v53);
  v55 = &v52 - v13;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280951A60, &qword_27465AF28);
  MEMORY[0x28223BE20](v54);
  v15 = &v52 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809519B0, &qword_27465AE88);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v52 - v20;
  v24 = type metadata accessor for ModuleSummaryRowView(0, a6, v22, v23);
  sub_27456F08C(&v61 + 7);
  if (HIBYTE(v61) > 1u)
  {
    sub_2745712E4(a1, v24, v25, v26, v27, v28, v29, v30, v52, *(&v52 + 1), v53, v54, v55, v56, v57, v58, *(&v58 + 1), v59, v60, v61, v62, v63, v64, v65);
    v45 = v58;
    v46 = a4;
    v48 = v59;
    v47 = v60;
    v58 = v52;
    v59 = v46;
    v60 = a5;
    sub_274571F1C(a1, &v58, v24, v21);
    sub_27445EAD4(v21, v18, &qword_2809519B0, &qword_27465AE88);
    *v12 = v45;
    *(v12 + 2) = v48;
    *(v12 + 3) = v47;
    v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280951A68, &qword_27465AF30);
    sub_27445EAD4(v18, &v12[*(v49 + 48)], &qword_2809519B0, &qword_27465AE88);
    sub_274483EE8(v45, *(&v45 + 1), v48, v47);
    sub_274483EE8(v45, *(&v45 + 1), v48, v47);
    sub_27440CB1C(v18, &qword_2809519B0, &qword_27465AE88);
    sub_274483F2C(v45, *(&v45 + 1), v48, v47);
    sub_27445EAD4(v12, v55, &qword_280951A50, &qword_27465AF18);
    swift_storeEnumTagMultiPayload();
    v50 = MEMORY[0x277CE14C0];
    sub_27440CA78(&qword_280951A70, &qword_280951A60, &qword_27465AF28, MEMORY[0x277CE14C0]);
    sub_27440CA78(&qword_280951A78, &qword_280951A50, &qword_27465AF18, v50);
    sub_274639DDC();
    sub_274483F2C(v45, *(&v45 + 1), v48, v47);
    v42 = v12;
    v43 = &qword_280951A50;
    v44 = &qword_27465AF18;
  }

  else
  {
    v58 = v52;
    v59 = a4;
    v60 = a5;
    sub_274571F1C(a1, &v58, v24, v21);
    sub_2745712E4(a1, v24, v31, v32, v33, v34, v35, v36, v52, *(&v52 + 1), v53, v54, v55, v56, v57, v58, *(&v58 + 1), v59, v60, v61, v62, v63, v64, v65);
    v37 = v58;
    v38 = v59;
    v39 = v60;
    sub_27445EAD4(v21, v18, &qword_2809519B0, &qword_27465AE88);
    sub_27445EAD4(v18, v15, &qword_2809519B0, &qword_27465AE88);
    v40 = &v15[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280951A80, &qword_27465AF38) + 48)];
    *v40 = v37;
    *(v40 + 2) = v38;
    *(v40 + 3) = v39;
    sub_274483EE8(v37, *(&v37 + 1), v38, v39);
    sub_274483EE8(v37, *(&v37 + 1), v38, v39);
    sub_274483F2C(v37, *(&v37 + 1), v38, v39);
    sub_27440CB1C(v18, &qword_2809519B0, &qword_27465AE88);
    sub_27445EAD4(v15, v55, &qword_280951A60, &qword_27465AF28);
    swift_storeEnumTagMultiPayload();
    v41 = MEMORY[0x277CE14C0];
    sub_27440CA78(&qword_280951A70, &qword_280951A60, &qword_27465AF28, MEMORY[0x277CE14C0]);
    sub_27440CA78(&qword_280951A78, &qword_280951A50, &qword_27465AF18, v41);
    sub_274639DDC();
    sub_274483F2C(v37, *(&v37 + 1), v38, v39);
    v42 = v15;
    v43 = &qword_280951A60;
    v44 = &qword_27465AF28;
  }

  sub_27440CB1C(v42, v43, v44);
  return sub_27440CB1C(v21, &qword_2809519B0, &qword_27465AE88);
}

uint64_t sub_274571F1C@<X0>(void *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v48 = a2;
  v47 = a1;
  v54 = a4;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280951AC0, &qword_27465AF60);
  MEMORY[0x28223BE20](v51);
  v53 = &v43 - v6;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809519C0, &qword_27465AE90);
  MEMORY[0x28223BE20](v52);
  v43 = &v43 - v7;
  v49 = sub_274639EFC();
  v50 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v46 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809519D8, &qword_27465AEA0);
  MEMORY[0x28223BE20](v45);
  v44 = &v43 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809519D0, &qword_27465AE98);
  MEMORY[0x28223BE20](v10);
  v12 = &v43 - v11;
  v13 = *(a3 - 8);
  v14 = *(v13 + 64);
  v16 = MEMORY[0x28223BE20](v15);
  v17 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v17, v4, a3, v16);
  v18 = (*(v13 + 80) + 24) & ~*(v13 + 80);
  v19 = (v14 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  v21 = *(a3 + 16);
  *(v20 + 16) = v21;
  (*(v13 + 32))(v20 + v18, v17, a3);
  v22 = v47;
  *(v20 + v19) = v47;
  v23 = v12;
  v24 = v10;
  v55 = v21;
  v56 = v4;
  v57 = v22;
  v25 = *v48;
  v59 = v48[1];
  v58 = v25;
  v26 = v22;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280951AC8, &qword_27465AF68);
  sub_27440CA78(&unk_280951AD0, &qword_280951AC8, &qword_27465AF68, MEMORY[0x277CE1138]);
  v27 = v44;
  sub_27463AD5C();
  *(v27 + *(v45 + 36)) = 256;
  v28 = v46;
  sub_274639EEC();
  sub_274574D34();
  sub_274575490(&qword_28094A6B8, MEMORY[0x277CDE0B8], MEMORY[0x277CDE0A0]);
  v29 = v49;
  sub_27463A69C();
  (*(v50 + 8))(v28, v29);
  sub_27440CB1C(v27, &qword_2809519D8, &qword_27465AEA0);
  sub_27456ECB0();
  sub_27456919C(v23 + *(v24 + 36));
  sub_27456EF1C(v60);
  v30 = v61;
  sub_27440CB1C(v60, &unk_2809507C0, &qword_274649C60);
  if ((v30 || (sub_27456F08C(v60), v60[0] == 2)) && (sub_27456EDD4() & 1) == 0)
  {
    v31 = sub_27463A38C();
    sub_2746390AC();
    v33 = v32;
    v35 = v34;
    v37 = v36;
    v39 = v38;
    v40 = v43;
    sub_27445EAD4(v23, v43, &qword_2809519D0, &qword_27465AE98);
    v41 = v40 + *(v52 + 36);
    *v41 = v31;
    *(v41 + 8) = v33;
    *(v41 + 16) = v35;
    *(v41 + 24) = v37;
    *(v41 + 32) = v39;
    *(v41 + 40) = 0;
    sub_27445EAD4(v40, v53, &qword_2809519C0, &qword_27465AE90);
    swift_storeEnumTagMultiPayload();
    sub_274574B60();
    sub_274574BEC();
    sub_274639DDC();

    sub_27440CB1C(v40, &qword_2809519C0, &qword_27465AE90);
  }

  else
  {
    sub_27445EAD4(v23, v53, &qword_2809519D0, &qword_27465AE98);
    swift_storeEnumTagMultiPayload();
    sub_274574B60();
    sub_274574BEC();
    sub_274639DDC();
  }

  return sub_27440CB1C(v23, &qword_2809519D0, &qword_27465AE98);
}

uint64_t sub_2745725C4@<X0>(void *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v44 = a2;
  v7 = sub_27463AC3C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ModuleSummaryRowView(0, a3, v11, v12);
  if (!sub_27456FFE0())
  {
    goto LABEL_9;
  }

  objc_opt_self();
  v13 = swift_dynamicCastObjCClass();
  if (!v13 || (v14 = v13, v45 = &unk_2883D82C8, (v15 = swift_dynamicCastObjCProtocolConditional()) == 0) || (v16 = [v15 wf:v14 pickerLocalizedImageForState:?]) == 0)
  {
    swift_unknownObjectRelease();
LABEL_9:
    sub_2745750A8(__src);
    goto LABEL_10;
  }

  v17 = v16;
  v18 = [v16 representationType];
  v43 = v17;
  if (v18 == 4)
  {
    v19 = [v17 tintColor];
    v20 = sub_27463BF5C();
    v21 = v20;
    if (v19)
    {
      v42 = v19;
      v22 = sub_27463AB2C();
      KeyPath = swift_getKeyPath();
      *&__src[0] = v21;
      *(&__src[0] + 1) = KeyPath;
      *&__src[1] = v22;
      BYTE8(__src[1]) = 0;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280951AB0, &qword_27465B850);
      sub_274575164();
      sub_274639DDC();
    }

    else
    {
      *&__src[1] = 0;
      __src[0] = v20;
      BYTE8(__src[1]) = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280951AB0, &qword_27465B850);
      sub_274575164();
      sub_274639DDC();
    }

    v35 = BYTE8(v48[1]);
    v40 = v48[0];
    __src[0] = v48[0];
    *&__src[1] = *&v48[1];
    BYTE8(__src[1]) = BYTE8(v48[1]);
    v36 = *&v48[1];
    v41 = *&v48[1];
    LODWORD(v42) = BYTE8(v48[1]);
    sub_2745752A0(__src);
    memcpy(v48, __src, 0x79uLL);
    v37 = v40;
    sub_2745752A8(v40, *(&v40 + 1), v36, v35);
    sub_2745752A8(v37, *(&v37 + 1), v36, v35);
    *&v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280951A98, &unk_27465AF50);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280951A90, &qword_27465AF48);
    sub_2745750D8();
    sub_27457521C();
    sub_274639DDC();

    swift_unknownObjectRelease();
    v38 = v41;
    v39 = v42;
    sub_2745752F8(v37, *(&v37 + 1), v41, v42);
    sub_2745752F8(v37, *(&v37 + 1), v38, v39);
  }

  else
  {
    sub_27463BF5C();
    (*(v8 + 104))(v10, *MEMORY[0x277CE0FE0], v7);
    v42 = sub_27463AC9C();

    (*(v8 + 8))(v10, v7);
    sub_27463B0CC();
    sub_27463973C();
    v47[0] = v42;
    memcpy(__src, v47, 0x78uLL);
    sub_2745750CC(__src);
    memcpy(v48, __src, 0x79uLL);
    sub_27445EAD4(v47, v49, &qword_280951A90, &qword_27465AF48);
    sub_27445EAD4(v47, v49, &qword_280951A90, &qword_27465AF48);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280951A98, &unk_27465AF50);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280951A90, &qword_27465AF48);
    sub_2745750D8();
    sub_27457521C();
    sub_274639DDC();

    swift_unknownObjectRelease();
    sub_27440CB1C(v47, &qword_280951A90, &qword_27465AF48);
    sub_27440CB1C(v47, &qword_280951A90, &qword_27465AF48);
  }

  memcpy(v48, v49, 0x79uLL);
  memcpy(v49, v48, 0x79uLL);
  CGSizeMake();
  memcpy(__src, v49, 0x79uLL);
LABEL_10:
  v24 = sub_27456FFE0();
  v25 = sub_274571404(v44, v24);
  v27 = v26;
  swift_unknownObjectRelease();
  if (v27)
  {
    *&v48[0] = v25;
    *(&v48[0] + 1) = v27;
    sub_274412BBC();
    v28 = sub_27463A53C();
    v27 = v29;
    v31 = v30;
    v33 = v32 & 1;
    sub_27440B094(v28, v29, v32 & 1);
  }

  else
  {
    v28 = 0;
    v33 = 0;
    v31 = 0;
  }

  memcpy(v46, __src, sizeof(v46));
  memcpy(v47, __src, 0x79uLL);
  memcpy(v48, __src, 0x79uLL);
  sub_27445EAD4(v47, v49, &qword_280951A88, &qword_27465AF40);
  sub_274483EE8(v28, v27, v33, v31);
  sub_274483F2C(v28, v27, v33, v31);
  memcpy(a4, v48, 0x80uLL);
  a4[16] = v28;
  a4[17] = v27;
  a4[18] = v33;
  a4[19] = v31;
  sub_274483F2C(v28, v27, v33, v31);
  memcpy(v49, v46, 0x79uLL);
  return sub_27440CB1C(v49, &qword_280951A88, &qword_27465AF40);
}

uint64_t sub_274572CAC(uint64_t a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  sub_27463B13C();
  sub_27463946C();
}

void *sub_274572DB0@<X0>(void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  type metadata accessor for ModuleSummaryRowView(0, a7, a3, a4);
  sub_27456EF1C(v25);
  v15 = v26 == 0;
  sub_27440CB1C(v25, &unk_2809507C0, &qword_274649C60);
  v16 = sub_274639B2C();
  v22 = 0;
  sub_274572F0C(a2, a3, a4, a5, a6, 2 * v15, a7, __src);
  memcpy(__dst, __src, 0xBAuLL);
  memcpy(v24, __src, 0xBAuLL);
  sub_27445EAD4(__dst, &v19, &unk_280951AE0, &qword_27465AF78);
  sub_27440CB1C(v24, &unk_280951AE0, &qword_27465AF78);
  memcpy(&v21[7], __dst, 0xBAuLL);
  v17 = v22;
  *a8 = v16;
  *(a8 + 8) = 0x4018000000000000;
  *(a8 + 16) = v17;
  return memcpy((a8 + 17), v21, 0xC1uLL);
}

uint64_t sub_274572F0C@<X0>(void *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, void *a5@<X5>, int a6@<W6>, uint64_t a7@<X7>, void *a8@<X8>)
{
  v61 = a6;
  *(&v58 + 1) = a3;
  v59 = a4;
  *&v58 = a2;
  v60 = a8;
  v12 = sub_27463AC3C();
  v69 = *(v12 - 8);
  v70 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094D678, &unk_274650540);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v55 - v16;
  type metadata accessor for ModuleSummaryRowView(0, a7, v18, v19);
  sub_27456EF1C(&v87);
  v20 = *(&v88 + 1);
  sub_27440CB1C(&v87, &unk_2809507C0, &qword_274649C60);
  if (!v20)
  {
    v64 = 0;
    v65 = 0;
    v71 = 0;
    v72 = 0;
    v69 = 0;
    v70 = 0;
    v67 = 0;
    v68 = 0;
    v66 = 0;
    v62 = 0;
    v63 = 0;
    goto LABEL_22;
  }

  v57 = a5;
  v21 = [a1 contentAttributedString];
  if (!v21)
  {
LABEL_20:
    v64 = 0;
    v65 = 0;
    v71 = 0;
    v72 = 0;
    v69 = 0;
    v70 = 0;
    v67 = 0;
    v68 = 0;
    v66 = 0;
    v62 = 0;
    v63 = 0;
    goto LABEL_21;
  }

  v22 = v21;
  v23 = [v21 string];
  v24 = sub_27463B6AC();
  v26 = v25;

  v27 = HIBYTE(v26) & 0xF;
  if ((v26 & 0x2000000000000000) == 0)
  {
    v27 = v24 & 0xFFFFFFFFFFFFLL;
  }

  if (v27)
  {
    if ([v22 attribute:*MEMORY[0x277D74060] atIndex:0 effectiveRange:0])
    {
      sub_27463C13C();
      swift_unknownObjectRelease();
    }

    else
    {
      memset(v75, 0, 32);
    }

    v87 = v75[0];
    v88 = v75[1];
    if (*(&v75[1] + 1))
    {
      sub_274412734(0, &qword_280951B08, 0x277D74270);
      if (swift_dynamicCast())
      {
        v68 = v77[0];
        v28 = [v77[0] image];
        if (v28)
        {
          v29 = v28;
          v64 = sub_27463B0CC();
          v72 = v30;
          v31 = v29;
          v67 = v31;
          sub_27463AC5C();
          v32 = [v31 renderingMode];
          v33 = sub_27463AC7C();
          v34 = MEMORY[0x277CE1010];
          if (v32 != 1)
          {
            v34 = MEMORY[0x277CE1020];
          }

          (*(*(v33 - 8) + 104))(v17, *v34, v33);
          __swift_storeEnumTagSinglePayload(v17, 0, 1, v33);
          sub_27463AC4C();

          sub_27440CB1C(v17, &qword_28094D678, &unk_274650540);
          v36 = v69;
          v35 = v70;
          (*(v69 + 104))(v14, *MEMORY[0x277CE0FE0], v70);
          v71 = sub_27463AC9C();

          (*(v36 + 8))(v14, v35);
          sub_27463B0CC();
          sub_2746392FC();

          LOBYTE(v87) = 1;
          LOBYTE(v75[0]) = 1;
          v69 = v101[1];
          v70 = v101[0];
          v67 = v101[3];
          v68 = v101[2];
          v65 = v101[5];
          v66 = v101[4];
          v62 = 1;
          v63 = 1;
          goto LABEL_21;
        }
      }

      else
      {
      }
    }

    else
    {

      sub_27440CB1C(&v87, &unk_28094A230, &qword_27464D1B0);
    }

    goto LABEL_20;
  }

  v64 = 0;
  v65 = 0;
  v71 = 0;
  v72 = 0;
  v69 = 0;
  v70 = 0;
  v67 = 0;
  v68 = 0;
  v66 = 0;
  v62 = 0;
  v63 = 0;
LABEL_21:
  a5 = v57;
LABEL_22:
  sub_27456FFE0();
  v87 = v58;
  *&v88 = v59;
  *(&v88 + 1) = a5;
  sub_27457162C();
  v38 = v37;
  v40 = v39;
  swift_unknownObjectRelease();
  *&v87 = v38;
  *(&v87 + 1) = v40;
  sub_274412BBC();
  v41 = sub_27463A53C();
  v43 = v42;
  v45 = v44;
  v59 = v46;
  sub_27456EF1C(v75);
  if (!*(&v75[1] + 1))
  {
    sub_27440CB1C(v75, &unk_2809507C0, &qword_274649C60);
    goto LABEL_28;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F0B0, &qword_274659E00);
  if (!swift_dynamicCast())
  {
LABEL_28:
    v87 = 0u;
    v88 = 0u;
    v89 = xmmword_274653F30;
    v47 = 5;
    goto LABEL_29;
  }

  if (v89 == 1)
  {
    v47 = 5;
  }

  else
  {
    v47 = 1;
  }

LABEL_29:
  sub_27440CB1C(&v87, &qword_280951AF0, &unk_274654100);
  KeyPath = swift_getKeyPath();
  v49 = swift_getKeyPath();
  *&v58 = v49;
  v50 = v45 & 1;
  v100 = v50;
  v98 = 0;
  DWORD2(v58) = sub_27456EDD4() & 1;
  *&v75[0] = v64;
  *(&v75[0] + 1) = v72;
  *&v75[1] = 0;
  *(&v75[1] + 1) = v62;
  *&v75[2] = 0;
  *(&v75[2] + 1) = v63;
  *&v75[3] = v71;
  *(&v75[3] + 1) = v70;
  *&v75[4] = v69;
  *(&v75[4] + 1) = v68;
  *&v75[5] = v67;
  *(&v75[5] + 1) = v66;
  *&v75[6] = v65;
  memcpy(v74, v75, 0x68uLL);
  v76[0] = v41;
  v76[1] = v43;
  LOBYTE(v76[2]) = v50;
  v56 = v41;
  v57 = v43;
  *(&v76[2] + 1) = *v99;
  HIDWORD(v76[2]) = *&v99[3];
  v51 = v59;
  v76[3] = v59;
  v76[4] = KeyPath;
  v76[5] = v47;
  LOBYTE(v76[6]) = 0;
  *(&v76[6] + 1) = *v97;
  HIDWORD(v76[6]) = *&v97[3];
  v76[7] = v49;
  LOBYTE(v49) = v61;
  LOBYTE(v76[8]) = v61;
  memcpy(&v74[104], v76, 0x41uLL);
  v52 = DWORD2(v58) == 0;
  v73 = DWORD2(v58) == 0;
  v53 = v60;
  memcpy(v60, v74, 0xB0uLL);
  v53[22] = 0;
  *(v53 + 184) = BYTE8(v58);
  *(v53 + 185) = v52;
  v77[0] = v56;
  v77[1] = v57;
  v78 = v50;
  *v79 = *v99;
  *&v79[3] = *&v99[3];
  v80 = v51;
  v81 = KeyPath;
  v82 = v47;
  v83 = 0;
  *v84 = *v97;
  *&v84[3] = *&v97[3];
  v85 = v58;
  v86 = v49;
  sub_27445EAD4(v75, &v87, &qword_280951AF8, &qword_27465AFE0);
  sub_27445EAD4(v76, &v87, &qword_280951B00, &qword_27465AFE8);
  sub_27440CB1C(v77, &qword_280951B00, &qword_27465AFE8);
  *&v87 = v64;
  *(&v87 + 1) = v72;
  *&v88 = 0;
  *(&v88 + 1) = v62;
  *&v89 = 0;
  *(&v89 + 1) = v63;
  v90 = v71;
  v91 = v70;
  v92 = v69;
  v93 = v68;
  v94 = v67;
  v95 = v66;
  v96 = v65;
  return sub_27440CB1C(&v87, &qword_280951AF8, &qword_27465AFE0);
}

unint64_t sub_274573708(unint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v3 < result >> 14)
  {
    __break(1u);
  }

  else
  {
    v4 = sub_27463B7AC();

    return v4;
  }

  return result;
}

void sub_2745737B0()
{
  OUTLINED_FUNCTION_15_9();
  v5 = v4;
  v6 = sub_274453594();
  if (v6)
  {
    v1 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280951950, &qword_27465AE70);
    OUTLINED_FUNCTION_6_19();
    v7 = sub_27463C35C();
  }

  else
  {
    v7 = MEMORY[0x277D84FA0];
  }

  if (sub_274453594())
  {
    OUTLINED_FUNCTION_37_5();
    v18 = v8;
    while (1)
    {
      OUTLINED_FUNCTION_9_21();
      sub_2744535A4();
      v9 = v1 ? MEMORY[0x277C58B20](v2, v5) : *(v18 + 8 * v2);
      v10 = v9;
      v11 = __OFADD__(v2++, 1);
      if (v11)
      {
        break;
      }

      v1 = v9;
      sub_27463BF6C();
      OUTLINED_FUNCTION_8_24();
      while (1)
      {
        OUTLINED_FUNCTION_32_8();
        if (v15)
        {
          break;
        }

        type metadata accessor for WFEditorCell();
        v16 = *(*(v7 + 48) + 8 * v0);
        v1 = sub_27463BF7C();

        if (v1)
        {

          goto LABEL_17;
        }
      }

      *(v3 + 8 * v12) = v14 | v13;
      *(*(v7 + 48) + 8 * v0) = v10;
      OUTLINED_FUNCTION_23_11();
      if (v11)
      {
        goto LABEL_21;
      }

      *(v7 + 16) = v17;
LABEL_17:
      OUTLINED_FUNCTION_39_6();
      if (v15)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  else
  {
LABEL_19:

    OUTLINED_FUNCTION_16_10();
  }
}

void sub_274573900(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_15_9();
  v11 = sub_274453594();
  if (v11)
  {
    v9 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280954990, &qword_2746600C0);
    OUTLINED_FUNCTION_6_19();
    v12 = sub_27463C35C();
  }

  else
  {
    v12 = MEMORY[0x277D84FA0];
  }

  if (sub_274453594())
  {
    v13 = 0;
    OUTLINED_FUNCTION_10_24();
    while (1)
    {
      OUTLINED_FUNCTION_9_21();
      sub_2744535A4();
      if (v9)
      {
        v14 = OUTLINED_FUNCTION_21_12();
        v15 = MEMORY[0x277C58B20](v14);
      }

      else
      {
        v15 = *(a9 + 8 * v13);
      }

      v16 = v15;
      v17 = __OFADD__(v13++, 1);
      if (v17)
      {
        break;
      }

      v9 = v15;
      sub_27463BF6C();
      OUTLINED_FUNCTION_8_24();
      while (1)
      {
        OUTLINED_FUNCTION_31_9();
        if (v19)
        {
          break;
        }

        sub_274412734(0, qword_28094AE40, 0x277D7C6D8);
        v20 = *(*(v12 + 48) + 8 * v10);
        v9 = sub_27463BF7C();

        if (v9)
        {

          goto LABEL_17;
        }
      }

      OUTLINED_FUNCTION_26_10(v18);
      *(v21 + 8 * v10) = v16;
      OUTLINED_FUNCTION_23_11();
      if (v17)
      {
        goto LABEL_21;
      }

      *(v12 + 16) = v22;
LABEL_17:
      OUTLINED_FUNCTION_39_6();
      if (v19)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  else
  {
LABEL_19:

    OUTLINED_FUNCTION_16_10();
  }
}

unint64_t sub_274573A5C()
{
  result = qword_280951818[0];
  if (!qword_280951818[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280951818);
  }

  return result;
}

uint64_t sub_274573B54(uint64_t a1)
{
  v1 = swift_checkMetadataState();
  v4 = v1;
  if (v5 <= 0x3F)
  {
    type metadata accessor for ModuleSummaryRowView.Style(255, v1, v2, v3);
    v4 = sub_27463C0AC();
    if (v6 <= 0x3F)
    {
      sub_274573D7C(319);
      v4 = v7;
      if (v8 <= 0x3F)
      {
        sub_274573E10(319);
        v4 = v9;
        if (v10 <= 0x3F)
        {
          sub_274481024(319);
          v4 = v11;
          if (v12 <= 0x3F)
          {
            sub_2744335D4(319, &qword_28094C510, MEMORY[0x277D839B0]);
            v4 = v13;
            if (v14 <= 0x3F)
            {
              sub_274431978(319, &qword_28094A5F0, &unk_2809507C0, &qword_274649C60);
              if (v16 > 0x3F)
              {
                return v15;
              }

              sub_2744335D4(319, &unk_28094A600, &type metadata for EditorPresentationEnvironment);
              if (v17 > 0x3F)
              {
                return v15;
              }

              sub_274431978(319, &qword_280950080, &unk_28094D7B0, &unk_2746507D0);
              if (v18 > 0x3F)
              {
                return v15;
              }

              sub_274431978(319, &qword_280950D10, &unk_28094D7C0, &unk_274651B60);
              if (v19 > 0x3F)
              {
                return v15;
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

  return v4;
}

void sub_274573D7C(uint64_t a1)
{
  if (!qword_2809518A8)
  {
    type metadata accessor for ModuleSummaryModalCoordinator(255);
    sub_274575490(&qword_280950BA0, type metadata accessor for ModuleSummaryModalCoordinator, &protocol conformance descriptor for ModuleSummaryModalCoordinator);
    v1 = sub_27463922C();
    if (!v2)
    {
      atomic_store(v1, &qword_2809518A8);
    }
  }
}

void sub_274573E10(uint64_t a1)
{
  if (!qword_2809518B8[0])
  {
    type metadata accessor for ParameterStateStore();
    sub_274575490(&qword_28094B550, type metadata accessor for ParameterStateStore, &protocol conformance descriptor for ParameterStateStore);
    v1 = sub_27463953C();
    if (!v2)
    {
      atomic_store(v1, qword_2809518B8);
    }
  }
}

uint64_t sub_274573EA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_14WorkflowEditor20ModuleSummaryRowViewV5StyleOyx_G(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_274573EF8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFC && *(a1 + 32))
  {
    return (*a1 + 2147483644);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 3;
  if (v4 >= 5)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_274573F4C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFB)
  {
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2147483644;
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 3;
    }
  }

  return result;
}

void *sub_274573FAC(void *result, int a2)
{
  if (a2 < 0)
  {
    result[2] = 0;
    result[3] = 0;
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

void sub_274573FD0()
{
  v2 = sub_274453594();
  if (v2)
  {
    v1 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094FFB8, &qword_2746568C8);
    OUTLINED_FUNCTION_6_19();
    v3 = sub_27463C35C();
  }

  else
  {
    v3 = MEMORY[0x277D84FA0];
  }

  if (sub_274453594())
  {
    v4 = 0;
    v5 = v3 + 56;
    OUTLINED_FUNCTION_10_24();
    while (1)
    {
      OUTLINED_FUNCTION_9_21();
      sub_2744535A4();
      if (v1)
      {
        v6 = OUTLINED_FUNCTION_21_12();
        v7 = MEMORY[0x277C58B20](v6);
      }

      else
      {
        v7 = *(v21 + 8 * v4);
      }

      v8 = __OFADD__(v4++, 1);
      if (v8)
      {
        break;
      }

      v22 = v7;
      v9 = sub_274638ECC();
      OUTLINED_FUNCTION_16_15();
      sub_274575490(&unk_280951960, v10, MEMORY[0x277CBCDB0]);
      v1 = &v22;
      sub_27463B55C();
      OUTLINED_FUNCTION_8_24();
      v13 = ~v12;
      while (1)
      {
        v14 = v11 & v13;
        v15 = (v11 & v13) >> 6;
        v16 = *(v5 + 8 * v15);
        v17 = v0 << (v11 & v13);
        if ((v17 & v16) == 0)
        {
          break;
        }

        OUTLINED_FUNCTION_16_15();
        sub_274575490(&qword_28094FFB0, v18, MEMORY[0x277CBCDB8]);
        v1 = v9;
        if (sub_27463B5BC())
        {

          goto LABEL_17;
        }

        v11 = v14 + 1;
      }

      *(v5 + 8 * v15) = v17 | v16;
      *(*(v3 + 48) + 8 * v14) = v7;
      OUTLINED_FUNCTION_23_11();
      if (v8)
      {
        goto LABEL_21;
      }

      *(v3 + 16) = v19;
LABEL_17:
      OUTLINED_FUNCTION_39_6();
      if (v20)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  else
  {
LABEL_19:
  }
}

void sub_2745741B0(uint64_t a1)
{
  if (sub_274453594())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280951970, &qword_2746568C0);
    OUTLINED_FUNCTION_6_19();
    v5 = sub_27463C35C();
  }

  else
  {
    v5 = MEMORY[0x277D84FA0];
  }

  v18 = sub_274453594();
  if (v18)
  {
    OUTLINED_FUNCTION_37_5();
    v16 = v6;
    v17 = v7;
    while (1)
    {
      sub_2744535A4();
      if (v17)
      {
        v8 = MEMORY[0x277C58B20](v2, a1);
      }

      else
      {
        v8 = *(v16 + 8 * v2);
      }

      v9 = __OFADD__(v2++, 1);
      if (v9)
      {
        break;
      }

      sub_27463C74C();
      (*(*v8 + 200))(v19);
      sub_27463C7AC();
      OUTLINED_FUNCTION_8_24();
      while (1)
      {
        OUTLINED_FUNCTION_32_8();
        if (v13)
        {
          break;
        }

        v14 = sub_274599D28();
        if (v14 == sub_274599D28())
        {

          goto LABEL_17;
        }
      }

      *(v3 + 8 * v10) = v12 | v11;
      *(*(v5 + 48) + 8 * v1) = v8;
      OUTLINED_FUNCTION_23_11();
      if (v9)
      {
        goto LABEL_20;
      }

      *(v5 + 16) = v15;
LABEL_17:
      if (v2 == v18)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
  }

  else
  {
LABEL_18:
  }
}

void sub_274574354()
{
  OUTLINED_FUNCTION_24();
  v1 = v0;
  v2 = sub_274639BEC();
  OUTLINED_FUNCTION_1();
  v37 = v3;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2();
  v7 = (v5 - v6);
  MEMORY[0x28223BE20](v8);
  v41 = &v32 - v9;
  if (*(v1 + 16) && (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280951B18, &qword_27465B008), OUTLINED_FUNCTION_6_19(), v10 = sub_27463C35C(), v11 = v10, (v36 = *(v1 + 16)) != 0))
  {
    v12 = 0;
    v40 = v10 + 56;
    v13 = *(v37 + 80);
    v34 = v1;
    v35 = v1 + ((v13 + 32) & ~v13);
    v39 = v37 + 16;
    v14 = (v37 + 8);
    v33 = (v37 + 32);
    while (v12 < *(v1 + 16))
    {
      v15 = *(v37 + 72);
      v38 = v12 + 1;
      v16 = *(v37 + 16);
      v16(v41, v35 + v15 * v12, v2);
      OUTLINED_FUNCTION_17_12();
      sub_274575490(&qword_280951B20, v17, MEMORY[0x277CDDE98]);
      v18 = sub_27463B55C();
      v19 = ~(-1 << *(v11 + 32));
      while (1)
      {
        v20 = v18 & v19;
        v21 = (v18 & v19) >> 6;
        v22 = *(v40 + 8 * v21);
        v23 = 1 << (v18 & v19);
        if ((v23 & v22) == 0)
        {
          break;
        }

        v24 = v11;
        v16(v7, *(v11 + 48) + v20 * v15, v2);
        OUTLINED_FUNCTION_17_12();
        sub_274575490(&unk_280951B28, v25, MEMORY[0x277CDDEA0]);
        v26 = sub_27463B5BC();
        v27 = *v14;
        (*v14)(v7, v2);
        if (v26)
        {
          v27(v41, v2);
          v11 = v24;
          goto LABEL_12;
        }

        v18 = v20 + 1;
        v11 = v24;
      }

      v28 = v41;
      *(v40 + 8 * v21) = v23 | v22;
      (*v33)(*(v11 + 48) + v20 * v15, v28, v2);
      v29 = *(v11 + 16);
      v30 = __OFADD__(v29, 1);
      v31 = v29 + 1;
      if (v30)
      {
        goto LABEL_15;
      }

      *(v11 + 16) = v31;
LABEL_12:
      v12 = v38;
      v1 = v34;
      if (v38 == v36)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
  }

  else
  {
LABEL_13:

    OUTLINED_FUNCTION_23();
  }
}

void sub_27457464C(uint64_t a1)
{
  v1 = a1;
  if (*(a1 + 16) && (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280951B10, &qword_27465B000), OUTLINED_FUNCTION_6_19(), v2 = sub_27463C35C(), (v21 = *(v1 + 16)) != 0))
  {
    v3 = 0;
    v19 = v1;
    v20 = v1 + 32;
    while (v3 < *(v1 + 16))
    {
      v4 = *(v20 + 8 * v3++);
      sub_27463B6AC();
      sub_27463C74C();
      v22 = v4;
      sub_27463B71C();
      v5 = sub_27463C7AC();

      OUTLINED_FUNCTION_8_24();
      v7 = ~v6;
      while (1)
      {
        v8 = v5 & v7;
        v9 = (v5 & v7) >> 6;
        if (((1 << (v5 & v7)) & *(v2 + 56 + 8 * v9)) == 0)
        {
          break;
        }

        v10 = sub_27463B6AC();
        v12 = v11;
        if (v10 == sub_27463B6AC() && v12 == v13)
        {

          goto LABEL_17;
        }

        v15 = sub_27463C6BC();

        if (v15)
        {

          goto LABEL_17;
        }

        v5 = v8 + 1;
      }

      OUTLINED_FUNCTION_26_10(v9);
      *(v16 + 8 * v8) = v22;
      OUTLINED_FUNCTION_23_11();
      if (v18)
      {
        goto LABEL_20;
      }

      *(v2 + 16) = v17;
LABEL_17:
      v1 = v19;
      if (v3 == v21)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
  }

  else
  {
LABEL_18:
  }
}

void sub_274574834(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_15_9();
  v11 = sub_274453594();
  if (v11)
  {
    v9 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280951940, &qword_274656A28);
    OUTLINED_FUNCTION_6_19();
    v12 = sub_27463C35C();
  }

  else
  {
    v12 = MEMORY[0x277D84FA0];
  }

  if (sub_274453594())
  {
    v13 = 0;
    OUTLINED_FUNCTION_10_24();
    while (1)
    {
      OUTLINED_FUNCTION_9_21();
      sub_2744535A4();
      if (v9)
      {
        v14 = OUTLINED_FUNCTION_21_12();
        v15 = MEMORY[0x277C58B20](v14);
      }

      else
      {
        v15 = *(a9 + 8 * v13);
      }

      v16 = v15;
      v17 = __OFADD__(v13++, 1);
      if (v17)
      {
        break;
      }

      v9 = v15;
      sub_27463BF6C();
      OUTLINED_FUNCTION_8_24();
      while (1)
      {
        OUTLINED_FUNCTION_31_9();
        if (v19)
        {
          break;
        }

        sub_274412734(0, &qword_280950FD0, off_279ED92B8);
        v20 = *(*(v12 + 48) + 8 * v10);
        v9 = sub_27463BF7C();

        if (v9)
        {

          goto LABEL_17;
        }
      }

      OUTLINED_FUNCTION_26_10(v18);
      *(v21 + 8 * v10) = v16;
      OUTLINED_FUNCTION_23_11();
      if (v17)
      {
        goto LABEL_21;
      }

      *(v12 + 16) = v22;
LABEL_17:
      OUTLINED_FUNCTION_39_6();
      if (v19)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  else
  {
LABEL_19:

    OUTLINED_FUNCTION_16_10();
  }
}

unint64_t sub_274574990()
{
  result = qword_280951980;
  if (!qword_280951980)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_280951800, &qword_27465ACB8);
    sub_274574A1C();
    sub_274574AD4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280951980);
  }

  return result;
}

unint64_t sub_274574A1C()
{
  result = qword_280951988;
  if (!qword_280951988)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280951990, &qword_27465AE78);
    sub_27440CA78(&qword_280951998, &qword_2809519A0, &qword_27465AE80, MEMORY[0x277CE1138]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280951988);
  }

  return result;
}

unint64_t sub_274574AD4()
{
  result = qword_2809519A8;
  if (!qword_2809519A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809519B0, &qword_27465AE88);
    sub_274574B60();
    sub_274574BEC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809519A8);
  }

  return result;
}

unint64_t sub_274574B60()
{
  result = qword_2809519B8;
  if (!qword_2809519B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809519C0, &qword_27465AE90);
    sub_274574BEC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809519B8);
  }

  return result;
}

unint64_t sub_274574BEC()
{
  result = qword_2809519C8;
  if (!qword_2809519C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809519D0, &qword_27465AE98);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809519D8, &qword_27465AEA0);
    sub_274639EFC();
    sub_274574D34();
    sub_274575490(&qword_28094A6B8, MEMORY[0x277CDE0B8], MEMORY[0x277CDE0A0]);
    swift_getOpaqueTypeConformance2();
    sub_274575490(&qword_280950C70, type metadata accessor for ModuleSummaryModalViewModifier, &unk_27465A688);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809519C8);
  }

  return result;
}

unint64_t sub_274574D34()
{
  result = qword_2809519E0;
  if (!qword_2809519E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809519D8, &qword_27465AEA0);
    sub_27440CA78(&qword_2809519E8, &qword_2809519F0, &qword_27465AEA8, MEMORY[0x277CDF028]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809519E0);
  }

  return result;
}

unint64_t sub_274574DEC()
{
  result = qword_2809519F8;
  if (!qword_2809519F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809517F0, &qword_27465ACA8);
    sub_274574E70();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809519F8);
  }

  return result;
}

unint64_t sub_274574E70()
{
  result = qword_280951A00;
  if (!qword_280951A00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280951A08, &qword_27465AEB0);
    sub_274574F28();
    sub_27440CA78(&unk_28094D180, &qword_28094C600, &qword_27464FD90, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280951A00);
  }

  return result;
}

unint64_t sub_274574F28()
{
  result = qword_280951A10;
  if (!qword_280951A10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280951A18, &unk_27465AEB8);
    sub_274574FB4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280951A10);
  }

  return result;
}

unint64_t sub_274574FB4()
{
  result = qword_280951A20;
  if (!qword_280951A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280951A20);
  }

  return result;
}

double sub_274575008(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != 4)
  {
    return sub_274575018(a1, a2, a3, a4);
  }

  return result;
}

double sub_274575018(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 >= 4)
  {
  }

  return result;
}

uint64_t sub_274575060(uint64_t a1, unint64_t a2)
{
  if (a2 >= 4)
  {
  }

  return result;
}

double sub_2745750A8(uint64_t a1)
{
  *(a1 + 112) = 0;
  result = 0.0;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 120) = -1;
  return result;
}

unint64_t sub_2745750D8()
{
  result = qword_280951AA0;
  if (!qword_280951AA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280951A98, &unk_27465AF50);
    sub_274575164();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280951AA0);
  }

  return result;
}

unint64_t sub_274575164()
{
  result = qword_2809521D0;
  if (!qword_2809521D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280951AB0, &qword_27465B850);
    sub_27440CA78(&unk_28094D180, &qword_28094C600, &qword_27464FD90, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809521D0);
  }

  return result;
}

unint64_t sub_27457521C()
{
  result = qword_280951AB8;
  if (!qword_280951AB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280951A90, &qword_27465AF48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280951AB8);
  }

  return result;
}

double sub_2745752A8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if ((a4 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_2745752F8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{

  if ((a4 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_27457535C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(type metadata accessor for ModuleSummaryRowView(0, v5, a3, a4) - 8);
  v8 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v9 = *(v4 + ((*(v6 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_274572CAC(v4 + v8, v9, v5, v7);
}

uint64_t sub_274575410()
{
  OUTLINED_FUNCTION_5_3();
  result = sub_274639A8C();
  *v0 = result;
  *(v0 + 8) = v2 & 1;
  return result;
}

uint64_t sub_274575490(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t OUTLINED_FUNCTION_1_33(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v4 = MEMORY[0x277CE1138];

  return sub_27440CA78(a1, a2, a3, v4);
}

uint64_t OUTLINED_FUNCTION_25_13()
{

  return MEMORY[0x282131EE8](0);
}

uint64_t OUTLINED_FUNCTION_28_12()
{

  return sub_274639DDC();
}

uint64_t OUTLINED_FUNCTION_35_5()
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_36_6(uint64_t a1)
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_42_6()
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_44_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_274639DDC();
}

uint64_t sub_274575750(uint64_t TupleTypeMetadata, uint64_t a2, uint64_t a3)
{
  v5 = TupleTypeMetadata;
  if (a2 == 1)
  {
    v6 = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x28223BE20](TupleTypeMetadata);
    OUTLINED_FUNCTION_3_0();
    v9 = v8 - v7;
    for (i = 0; a2 != i; ++i)
    {
      *(v9 + 8 * i) = *((a3 & 0xFFFFFFFFFFFFFFFELL) + 8 * i);
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v6 = TupleTypeMetadata;
  }

  MEMORY[0x28223BE20](TupleTypeMetadata);
  OUTLINED_FUNCTION_3_0();
  v13 = v12 - v11;
  if (a2)
  {
    v14 = a3 & 0xFFFFFFFFFFFFFFFELL;
    v15 = v6 + 32;
    v16 = a2;
    do
    {
      v14 += 8;
      v5 += 8;
      OUTLINED_FUNCTION_17_13();
      (*(v17 + 16))(v13 + v18);
      v15 += 16;
      --v16;
    }

    while (v16);
  }

  return sub_27463B1AC();
}

uint64_t sub_2745758B8@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  sub_27463C0AC();
  OUTLINED_FUNCTION_7();
  v7 = *(v6 + 16);

  return v7(a3, a1, v5);
}

void *sub_27457591C(uint64_t (*a1)(char *, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v35 = a8;
  v44 = a1;
  v45 = a2;
  v10 = *(a5 - 8);
  MEMORY[0x28223BE20](a1);
  OUTLINED_FUNCTION_3_0();
  v46 = v12 - v11;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_1();
  v48 = v13;
  MEMORY[0x28223BE20](v14);
  v16 = &v33 - v15;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_3_0();
  v42 = v19 - v18;
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_1();
  v36 = v21;
  v37 = v20;
  MEMORY[0x28223BE20](v20);
  v23 = &v33 - v22;
  v24 = sub_27463BADC();
  if (!v24)
  {
    return sub_27463B87C();
  }

  v47 = v24;
  v51 = sub_27463C49C();
  v38 = sub_27463C4AC();
  sub_27463C43C();
  result = sub_27463BACC();
  if ((v47 & 0x8000000000000000) == 0)
  {
    v33 = v10;
    v34 = a5;
    v26 = 0;
    v39 = (v48 + 16);
    v40 = v48 + 8;
    v41 = v8;
    while (!__OFADD__(v26, 1))
    {
      v48 = v26 + 1;
      v27 = sub_27463BB3C();
      (*v39)(v16);
      v27(v50, 0);
      v28 = v49;
      v44(v16, v46);
      if (v28)
      {
        v31 = OUTLINED_FUNCTION_21_13();
        v32(v31);
        (*(v36 + 8))(v23, v37);

        return (*(v33 + 32))(v35, v46, v34);
      }

      v49 = 0;
      v29 = OUTLINED_FUNCTION_21_13();
      v30(v29);
      sub_27463C48C();
      result = sub_27463BB1C();
      ++v26;
      if (v48 == v47)
      {
        (*(v36 + 8))(v23, v37);
        return v51;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t WFTableTemplateParameter.view(with:)(uint64_t a1)
{
  type metadata accessor for ParameterStateStore();
  OUTLINED_FUNCTION_0_42();
  sub_27457F684(v2, v3, &protocol conformance descriptor for ParameterStateStore);
  v4 = v1;

  OUTLINED_FUNCTION_18_7();
  sub_27463950C();
  swift_retain_n();
  OUTLINED_FUNCTION_16_16();
  sub_274575E34(v4, v5, v6, v7, v8, &qword_280951F80, v9);
  v10 = OUTLINED_FUNCTION_5_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v10, v11);
  v12 = OUTLINED_FUNCTION_1_34(&qword_280951B40);
  return OUTLINED_FUNCTION_19_12(v12, v13);
}

void *sub_274575E34@<X0>(void *a1@<X0>, _OWORD *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t (*a5)(void)@<X4>, unint64_t *a6@<X5>, uint64_t a7@<X8>)
{
  objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(a3, a4));
  v14 = a1;
  a5();
  sub_27454E488(a6, a3, a4, &unk_274648AD8);
  v15 = sub_27463950C();
  v17 = v16;

  *a7 = v15;
  *(a7 + 8) = v17;
  v18 = a2[1];
  *(a7 + 16) = *a2;
  *(a7 + 32) = v18;
  *(a7 + 48) = a2[2];
  *(a7 + 64) = swift_getKeyPath();
  *(a7 + 72) = 0;
  type metadata accessor for WorkflowEditorOptions(0);
  sub_27457F684(&qword_28094A730, type metadata accessor for WorkflowEditorOptions, &protocol conformance descriptor for WorkflowEditorOptions);
  *(a7 + 80) = sub_27463979C();
  *(a7 + 88) = v19;
  type metadata accessor for SummaryCoordinatorStore();
  swift_allocObject();
  sub_274576790();
  sub_27463ACDC();
  *(a7 + 96) = v21;
  *(a7 + 104) = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280950C40, qword_274653AB0);
  result = sub_27463ACDC();
  *(a7 + 112) = v21;
  *(a7 + 120) = v22;
  *(a7 + 128) = v23;
  return result;
}

uint64_t WFTableTemplateContentItemFilterParameter.view(with:)(uint64_t a1)
{
  type metadata accessor for ParameterStateStore();
  OUTLINED_FUNCTION_0_42();
  sub_27457F684(v2, v3, &protocol conformance descriptor for ParameterStateStore);
  v4 = v1;

  OUTLINED_FUNCTION_18_7();
  sub_27463950C();
  swift_retain_n();
  OUTLINED_FUNCTION_16_16();
  sub_274575E34(v4, v5, v6, v7, v8, &qword_280951F60, v9);
  v10 = OUTLINED_FUNCTION_5_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v10, v11);
  v12 = OUTLINED_FUNCTION_1_34(&qword_280951B50);
  return OUTLINED_FUNCTION_19_12(v12, v13);
}

uint64_t WFTableTemplateEntityUpdaterParameter.view(with:)(uint64_t a1)
{
  type metadata accessor for ParameterStateStore();
  OUTLINED_FUNCTION_0_42();
  sub_27457F684(v2, v3, &protocol conformance descriptor for ParameterStateStore);
  v4 = v1;

  OUTLINED_FUNCTION_18_7();
  sub_27463950C();
  swift_retain_n();
  OUTLINED_FUNCTION_16_16();
  sub_274575E34(v4, v5, v6, v7, v8, &unk_280951F38, v9);
  v10 = OUTLINED_FUNCTION_5_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v10, v11);
  v12 = OUTLINED_FUNCTION_1_34(&qword_280951B60);
  return OUTLINED_FUNCTION_19_12(v12, v13);
}

void sub_274576234(uint64_t (*a1)(), uint64_t a2)
{
  v32 = a2;
  v31 = a1;
  v3 = sub_27463B1EC();
  v37 = *(v3 - 8);
  v38 = v3;
  MEMORY[0x28223BE20](v3);
  v35 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_27463B21C();
  v34 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v33 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = dispatch_group_create();
  v7 = *(v2 + 16);
  if ((v7 & 0xC000000000000001) != 0)
  {

    sub_27463C23C();
    sub_274412734(0, &qword_280950FD0, off_279ED92B8);
    sub_27457FFF0();
    sub_27463BA7C();
    v7 = v46;
    v8 = v47;
    v9 = v48;
    v10 = v49;
    v11 = v50;
  }

  else
  {
    v12 = -1 << *(v7 + 32);
    v8 = v7 + 56;
    v9 = ~v12;
    v13 = -v12;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v11 = v14 & *(v7 + 56);

    v10 = 0;
  }

  v30 = v9;
  v15 = (v9 + 64) >> 6;
  if (v7 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v16 = v10;
    v17 = v11;
    v18 = v10;
    if (!v11)
    {
      break;
    }

LABEL_12:
    v19 = (v17 - 1) & v17;
    v20 = *(*(v7 + 48) + ((v18 << 9) | (8 * __clz(__rbit64(v17)))));
    if (!v20)
    {
LABEL_18:
      sub_274406A24(v7);
      sub_274412734(0, &qword_28094AF90, 0x277D85C78);
      v25 = sub_27463BCEC();
      v44 = v31;
      v45 = v32;
      aBlock = MEMORY[0x277D85DD0];
      v41 = 1107296256;
      v42 = sub_27443E0E8;
      v43 = &block_descriptor_31;
      v26 = _Block_copy(&aBlock);

      v27 = v33;
      sub_27463B20C();
      v39 = MEMORY[0x277D84F90];
      sub_27457F684(&qword_28094E100, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094AFA0, &unk_27464D1A0);
      sub_27454E488(&qword_28094E110, &unk_28094AFA0, &unk_27464D1A0, MEMORY[0x277D83970]);
      v28 = v35;
      v29 = v38;
      sub_27463C1EC();
      sub_27463BCAC();
      _Block_release(v26);

      (*(v37 + 8))(v28, v29);
      (*(v34 + 8))(v27, v36);

      return;
    }

    while (1)
    {
      dispatch_group_enter(v6);
      v22 = swift_allocObject();
      *(v22 + 16) = v6;
      v44 = sub_274580070;
      v45 = v22;
      aBlock = MEMORY[0x277D85DD0];
      v41 = 1107296256;
      v42 = sub_27443E0E8;
      v43 = &block_descriptor_49_0;
      v23 = _Block_copy(&aBlock);
      v24 = v6;

      [v20 cancelEditingWithCompletionHandler_];
      _Block_release(v23);

      v10 = v18;
      v11 = v19;
      if ((v7 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      v21 = sub_27463C2BC();
      if (v21)
      {
        v39 = v21;
        sub_274412734(0, &qword_280950FD0, off_279ED92B8);
        swift_dynamicCast();
        v20 = aBlock;
        v18 = v10;
        v19 = v11;
        if (aBlock)
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v18 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v18 >= v15)
    {
      goto LABEL_18;
    }

    v17 = *(v8 + 8 * v18);
    ++v16;
    if (v17)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

uint64_t sub_274576790()
{
  if (MEMORY[0x277D84F90] >> 62 && sub_27463C27C())
  {
    sub_274574834(MEMORY[0x277D84F90], v3, v4, v5, v6, v7, v8, v9, vars0);
  }

  else
  {
    v1 = MEMORY[0x277D84FA0];
  }

  *(v0 + 16) = v1;
  return v0;
}

void *sub_2745767F4()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v2 = sub_27463869C();
  type metadata accessor for StoredParameterState(0, v2, v3, v4);
  return StoredParameterState.wrappedValue.getter();
}

uint64_t sub_2745768BC(uint64_t a1, uint64_t a2)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v4 = sub_27463869C();
  v5 = sub_27463C0AC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - v7;
  v9 = *(v2 + 56);
  v16 = *(v2 + 16);
  v14 = *(v2 + 24);
  v17 = v14;
  v15 = *(v2 + 40);
  v18 = v15;
  v19 = v9;
  (*(v6 + 16))(&v14 - v7, a1, v5);
  v12 = type metadata accessor for StoredParameterState(0, v4, v10, v11);

  StoredParameterState.wrappedValue.setter(v8, v12);
  (*(v6 + 8))(a1, v5);
}

uint64_t sub_274576A90@<X0>(uint64_t a2@<X8>)
{
  v38 = a2;
  v3 = sub_274639ABC();
  v34 = *(v3 - 8);
  v35 = v3;
  MEMORY[0x28223BE20](v3);
  v33 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v37 = AssociatedTypeWitness;
  v6 = sub_27463869C();
  v7 = sub_27463C0AC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v29 - v12;
  v14 = v2[1];
  v51 = *v2;
  v52 = v14;
  v15 = v2[3];
  v17 = *v2;
  v16 = v2[1];
  v53 = v2[2];
  v54 = v15;
  v18 = *(v2 + 89);
  v48 = *(v2 + 73);
  v49 = v18;
  v50[0] = *(v2 + 105);
  *(v50 + 15) = *(v2 + 120);
  v19 = *(v2 + 8);
  v20 = *(v2 + 72);
  v39 = v17;
  v40 = v16;
  v21 = v2[3];
  v41 = v2[2];
  v42 = v21;
  v43 = v19;
  v44 = v20;
  v45 = *(v2 + 73);
  v46 = *(v2 + 89);
  v47[0] = *(v2 + 105);
  *(v47 + 15) = *(v2 + 120);
  sub_2745767F4();
  if (__swift_getEnumTagSinglePayload(v13, 1, v6) != 1)
  {
    return (*(*(v6 - 8) + 32))(v38, v13, v6);
  }

  v23 = *(v8 + 8);
  v22 = v8 + 8;
  v32 = v7;
  v30 = v23;
  v23(v13, v7);
  v39 = v51;
  v40 = v52;
  v41 = v53;
  v42 = v54;
  v45 = v48;
  v43 = v19;
  v44 = v20;
  v46 = v49;
  v47[0] = v50[0];
  *(v47 + 15) = *(v50 + 15);
  v24 = sub_2745767E4();
  v25 = [v24 defaultSerializedRepresentation];

  if (v25)
  {
    v31 = v22;
    swift_unknownObjectRetain();
    if (v20)
    {
      sub_27450AF48(v19, 1);
    }

    else
    {
      sub_27450AF48(v19, 0);
      sub_27463BC0C();
      v27 = sub_27463A2FC();
      sub_274638CEC();

      v28 = v33;
      sub_274639AAC();
      swift_getAtKeyPath();
      sub_274482198(v19, 0);
      (*(v34 + 8))(v28, v35);
    }

    v39 = v51;
    v40 = v52;
    v41 = v53;
    v42 = v54;
    v45 = v48;
    v43 = v19;
    v44 = v20;
    v46 = v49;
    v47[0] = v50[0];
    *(v47 + 15) = *(v50 + 15);
    sub_2745767E4();
    sub_27463866C();
    if (__swift_getEnumTagSinglePayload(v10, 1, v6) != 1)
    {
      swift_unknownObjectRelease();
      return (*(*(v6 - 8) + 32))(v38, v10, v6);
    }

    v30(v10, v32);
  }

  result = sub_27463C56C();
  __break(1u);
  return result;
}

uint64_t sub_274576FB8(uint64_t a1, uint64_t a2)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v5 = sub_27463869C();
  v6 = sub_27463C0AC();
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v13[-v7 - 8];
  memcpy(v14, v2, sizeof(v14));
  memcpy(v13, v2, sizeof(v13));
  v9 = *(v5 - 8);
  (*(v9 + 16))(v8, a1, v5);
  __swift_storeEnumTagSinglePayload(v8, 0, 1, v5);
  v10 = *(a2 - 8);
  (*(v10 + 16))(__dst, v14, a2);
  sub_2745768BC(v8, a2);
  (*(v9 + 8))(a1, v5);
  memcpy(__dst, v13, sizeof(__dst));
  return (*(v10 + 8))(__dst, a2);
}

uint64_t sub_2745771BC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v56 = a2;
  v3 = a1[3];
  v58 = a1[2];
  v59 = v3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for TableTemplateRow(255, AssociatedTypeWitness, AssociatedConformanceWitness, v5);
  v6 = sub_27463B92C();
  type metadata accessor for RowTemplateEditorView(255, AssociatedTypeWitness, AssociatedConformanceWitness, v7);
  sub_27463965C();
  sub_27463AF6C();
  swift_getTupleTypeMetadata2();
  sub_27463B19C();
  v8 = sub_27463C0AC();
  WitnessTable = swift_getWitnessTable();
  __dst[0] = v6;
  __dst[1] = MEMORY[0x277D837D0];
  __dst[2] = v8;
  __dst[3] = WitnessTable;
  __dst[4] = MEMORY[0x277D837E0];
  sub_27463AF9C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280951E48, &qword_27465B4D0);
  swift_getTupleTypeMetadata2();
  v43 = sub_27463B19C();
  v42 = swift_getWitnessTable();
  v10 = sub_27463AE6C();
  v46 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v41 = &v40 - v11;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_280951E50, &unk_27465B4D8);
  v12 = sub_27463965C();
  v53 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v57 = &v40 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_28094AF80, &unk_27464A6E0);
  v15 = sub_27454E488(&qword_280951E60, &unk_28094AF80, &unk_27464A6E0, MEMORY[0x277CBCE20]);
  v16 = swift_getWitnessTable();
  v40 = v16;
  v17 = sub_27454E488(&qword_280951E68, &unk_280951E50, &unk_27465B4D8, MEMORY[0x277CE07C8]);
  v66 = v16;
  v67 = v17;
  v18 = swift_getWitnessTable();
  v51 = v15;
  v52 = v14;
  __dst[0] = v14;
  __dst[1] = v12;
  v54 = v12;
  __dst[2] = v15;
  __dst[3] = v18;
  v45 = v18;
  v19 = sub_27463971C();
  v50 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v44 = &v40 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v49 = &v40 - v22;
  v23 = sub_27463869C();
  v47 = *(v23 - 8);
  AssociatedConformanceWitness = v23;
  MEMORY[0x28223BE20](v23);
  v25 = &v40 - v24;
  memcpy(__dst, v55, 0x88uLL);
  memcpy(v65, v55, sizeof(v65));
  sub_274576A90(v25);
  sub_274639C6C();
  v27 = v58;
  v26 = v59;
  v60 = v58;
  v61 = v59;
  v62 = v25;
  v63 = __dst;
  v28 = v41;
  sub_27463AE5C();
  v29 = swift_allocObject();
  v29[2] = v27;
  v29[3] = v26;
  memcpy(v29 + 4, __dst, 0x88uLL);
  v30 = *(*(a1 - 1) + 16);
  v55 = a1;
  v30(v65, __dst, a1);
  sub_27457F630();
  sub_27454E488(&qword_280951E78, &unk_280951E80, &unk_27465B4E8, MEMORY[0x277D83B60]);
  sub_27463A7EC();

  (*(v46 + 8))(v28, v10);
  if (__dst[10])
  {
    v64 = *(__dst[10] + OBJC_IVAR____TtC14WorkflowEditor21WorkflowEditorOptions_onSavePendingChanges);
    v31 = swift_allocObject();
    v32 = v59;
    v31[2] = v58;
    v31[3] = v32;
    memcpy(v31 + 4, __dst, 0x88uLL);
    v33 = swift_allocObject();
    *(v33 + 16) = sub_27457F6CC;
    *(v33 + 24) = v31;
    v30(v65, __dst, v55);

    v34 = v44;
    v35 = v54;
    v36 = v57;
    sub_27463AACC();

    (*(v53 + 8))(v36, v35);
    swift_getWitnessTable();
    v37 = v49;
    sub_2744E9688();
    v38 = *(v50 + 8);
    v38(v34, v19);
    sub_2744E9688();
    v38(v37, v19);
    return (*(v47 + 8))(v25, AssociatedConformanceWitness);
  }

  else
  {
    type metadata accessor for WorkflowEditorOptions(0);
    sub_27457F684(&qword_28094A730, type metadata accessor for WorkflowEditorOptions, &protocol conformance descriptor for WorkflowEditorOptions);
    result = sub_27463978C();
    __break(1u);
  }

  return result;
}

uint64_t sub_2745779F8@<X0>(uint64_t a1@<X0>, const void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v76 = a2;
  v82 = a5;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280951E90, &qword_27465B500);
  v68 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v67 = v64 - v8;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280951E98, &qword_27465B508);
  MEMORY[0x28223BE20](v79);
  v66 = v64 - v9;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280951E48, &qword_27465B4D0);
  MEMORY[0x28223BE20](v80);
  v81 = v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v78 = v64 - v12;
  v74 = a4;
  v73 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v15 = sub_27463869C();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = v64 - v17;
  type metadata accessor for TableTemplateRow(255, AssociatedTypeWitness, AssociatedConformanceWitness, v19);
  v20 = sub_27463B92C();
  type metadata accessor for RowTemplateEditorView(255, AssociatedTypeWitness, AssociatedConformanceWitness, v21);
  sub_27463965C();
  sub_27463AF6C();
  swift_getTupleTypeMetadata2();
  v72 = sub_27463B19C();
  v22 = sub_27463C0AC();
  v71 = v22;
  v77 = v20;
  WitnessTable = swift_getWitnessTable();
  __dst[0] = v20;
  __dst[1] = MEMORY[0x277D837D0];
  __dst[2] = v22;
  __dst[3] = WitnessTable;
  __dst[4] = MEMORY[0x277D837E0];
  v23 = sub_27463AF9C();
  v83 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v25 = v64 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v84 = v64 - v27;
  v28 = a1;
  v89[0] = sub_2745783D4(v15);
  v29 = v73;
  v85 = v73;
  v30 = v74;
  v86 = v74;
  KeyPath = swift_getKeyPath();
  (*(v16 + 16))(v18, v28, v15);
  v31 = (*(v16 + 80) + 168) & ~*(v16 + 80);
  v32 = swift_allocObject();
  *(v32 + 2) = v29;
  *(v32 + 3) = v30;
  v33 = v30;
  v34 = v76;
  memcpy(v32 + 32, v76, 0x88uLL);
  (*(v16 + 32))(&v32[v31], v18, v15);
  v35 = v29;
  v36 = v29;
  v37 = v33;
  v39 = type metadata accessor for TableTemplateParameterView(0, v35, v33, v38);
  v40 = *(v39 - 8);
  v65 = *(v40 + 16);
  v64[1] = v40 + 16;
  v65(__dst, v34, v39);
  v89[3] = swift_getWitnessTable();
  v63 = swift_getWitnessTable();
  v41 = v34;
  sub_27463AF7C();
  v89[2] = v63;
  WitnessTable = swift_getWitnessTable();
  sub_2744E9688();
  v42 = *(v83 + 8);
  v77 = v25;
  v71 = v23;
  v72 = v42;
  v42(v25, v23);
  memcpy(__dst, v34, sizeof(__dst));
  v43 = sub_2745767E4();
  LOBYTE(v34) = sub_2746386AC();

  if (v34)
  {
    v44 = swift_allocObject();
    v44[2] = v36;
    v44[3] = v37;
    v45 = memcpy(v44 + 4, v41, 0x88uLL);
    v46 = MEMORY[0x28223BE20](v45);
    v64[-4] = v36;
    v64[-3] = v37;
    v63 = v41;
    (v65)(__dst, v41, v39, v46);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280951EC0, &qword_27465B558);
    sub_274580B88(&qword_280951EC8, &qword_280951EC0, &qword_27465B558, sub_27457FA00);
    v47 = v67;
    sub_27463AD5C();
    sub_27454E488(&unk_280951EB0, &qword_280951E90, &qword_27465B500, MEMORY[0x277CDF028]);
    sub_274482428();
    v48 = v66;
    v49 = v69;
    sub_27463A6AC();
    (*(v68 + 8))(v47, v49);
    v50 = sub_27463AB1C();
    v51 = swift_getKeyPath();
    v52 = v79;
    v53 = (v48 + *(v79 + 36));
    *v53 = v51;
    v53[1] = v50;
    v54 = v78;
    sub_27441277C(v48, v78, &qword_280951E98, &qword_27465B508);
    v55 = 0;
    v56 = v52;
  }

  else
  {
    v55 = 1;
    v54 = v78;
    v56 = v79;
  }

  __swift_storeEnumTagSinglePayload(v54, v55, 1, v56);
  v57 = v77;
  v58 = v84;
  v59 = v71;
  (*(v83 + 16))(v77, v84, v71);
  __dst[0] = v57;
  v60 = v81;
  sub_274412C20(v54, v81, &qword_280951E48, &qword_27465B4D0);
  __dst[1] = v60;
  v89[0] = v59;
  v89[1] = v80;
  v87 = WitnessTable;
  v88 = sub_27457F7BC();
  sub_274575750(__dst, 2, v89);
  sub_27454D6A8(v54, &qword_280951E48);
  v61 = v72;
  v72(v58, v59);
  sub_27454D6A8(v60, &qword_280951E48);
  return v61(v57, v59);
}