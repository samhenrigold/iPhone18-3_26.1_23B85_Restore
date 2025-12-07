uint64_t type metadata accessor for LibMenuItem(uint64_t a1)
{
  result = qword_1EE2A8350;
  if (!qword_1EE2A8350)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E3A8D670(uint64_t a1)
{
  sub_1E3A8D754(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1E3A8D754(uint64_t a1)
{
  if (!qword_1EE289F88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2D158, &qword_1E42A8F28);
    v1 = sub_1E4200694();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE289F88);
    }
  }
}

uint64_t getEnumTagSinglePayload for LibMenuType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF2)
  {
    if (a2 + 14 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 14) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 15;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xF;
  v5 = v6 - 15;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for LibMenuType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 14 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 14) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF2)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF1)
  {
    v6 = ((a2 - 242) >> 8) + 1;
    *result = a2 + 14;
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
          *result = a2 + 14;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1E3A8D91C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_1E3A8D9D0()
{
  v3.receiver = v0;
  v3.super_class = _s12GradientViewCMa();
  v1 = objc_msgSendSuper2(&v3, sel_layer);

  return v1;
}

id sub_1E3A8DA18()
{
  OUTLINED_FUNCTION_0_8();
  v5 = _s12GradientViewCMa();
  v1 = OUTLINED_FUNCTION_2_0();
  return objc_msgSendSuper2(v2, v3, v1, v0, v5);
}

id sub_1E3A8DA88(void *a1)
{
  v5.receiver = v1;
  v5.super_class = _s12GradientViewCMa();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

double sub_1E3A8DB30(uint64_t a1)
{
  v2 = OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView_transitionAnimationDuration;
  OUTLINED_FUNCTION_0_12(a1);
  return *(v1 + v2);
}

uint64_t sub_1E3A8DB64(double a1)
{
  v3 = OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView_transitionAnimationDuration;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

void *sub_1E3A8DC64(uint64_t a1)
{
  v2 = OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView_gradientColor;
  OUTLINED_FUNCTION_0_12(a1);
  v3 = *(v1 + v2);
  v4 = v3;
  return v3;
}

uint64_t sub_1E3A8DD2C(uint64_t a1)
{
  v2 = OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView_isSingleCase;
  OUTLINED_FUNCTION_0_12(a1);
  return *(v1 + v2);
}

uint64_t sub_1E3A8DD60(uint64_t a1)
{
  v2 = a1;
  v3 = OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView_isSingleCase;
  result = OUTLINED_FUNCTION_37(a1);
  *(v1 + v3) = v2;
  return result;
}

void sub_1E3A8DDEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(v3 + OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView_nonPlaybackGradientView);
  if (v5)
  {
    v6 = v5;
    v7 = [v6 superview];
    v8 = sub_1E3A8FC94();
    v9 = v8;
    if (v7)
    {
      sub_1E3280A90(0, &qword_1EE23AE80, 0x1E69DD250);
      v10 = sub_1E4206F64();

      if (v10)
      {
        v11 = v6;
LABEL_14:

        goto LABEL_15;
      }
    }

    else
    {
    }

    v12 = OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView____lazy_storage___visualEffectContainerView;
    v13 = *(v4 + OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView____lazy_storage___visualEffectContainerView);
    [v13 vui:v6 addSubview:0 oldView:?];

    v14 = sub_1E3A8FCE0();
    if (!v14)
    {
LABEL_15:

      goto LABEL_16;
    }

    v11 = v14;
    v15 = [v11 superview];
    if (!v15 || (v18 = v15, v19 = *(v4 + v12), sub_1E3280A90(0, &qword_1EE23AE80, 0x1E69DD250), v20 = v19, v21 = sub_1E4206F64(), v18, v20, (v21 & 1) == 0))
    {
      if ((TVAppFeature.isEnabled.getter(10, v16, v17) & 1) == 0)
      {
        v23 = v6;
        v6 = v11;
        goto LABEL_13;
      }

      v22 = *(v4 + v12);
      [v22 vui:v11 addSubview:0 oldView:?];
    }

    v23 = v11;
LABEL_13:

    goto LABEL_14;
  }

LABEL_16:
  if (TVAppFeature.isEnabled.getter(10, a2, a3))
  {
    OUTLINED_FUNCTION_15_36();
  }

  else
  {
    v24 = sub_1E3A8FCA8();
    v37 = [v24 superview];

    if (v37)
    {
      OUTLINED_FUNCTION_15_36();
    }

    else
    {
      v27 = OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView____lazy_storage___visualEffectView;
      [*(v4 + OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView____lazy_storage___visualEffectView) setVuiAlpha_];
      v28 = sub_1E3A8FC94();
      [v28 addSubview_];

      v29 = [*(v4 + v27) vuiLayer];
      if (v29)
      {
        v30 = v29;
        v31 = sub_1E3A8FD60();
        v32 = [v31 layer];

        [v30 setMask_];
      }

      v33 = [*(v4 + v27) vuiLayer];
      if (v33)
      {
        v34 = v33;
        v35 = sub_1E3A8FDD4();
        [v34 addSublayer_];
      }

      OUTLINED_FUNCTION_15_36();

      sub_1E3A90214();
    }
  }
}

uint64_t sub_1E3A8E0FC(uint64_t a1)
{
  v2 = OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView_disableGradient;
  OUTLINED_FUNCTION_0_12(a1);
  return *(v1 + v2);
}

void sub_1E3A8E130(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_79_0();
  v24 = v23;
  v25 = OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView_disableGradient;
  swift_beginAccess();
  v26 = v22[v25];
  v22[v25] = v24;
  v27 = OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView_disableGradient;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  if (v26 != v22[v27])
  {
    v28 = OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView_nonPlaybackGradientView;
    v29 = *&v22[OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView_nonPlaybackGradientView];
    if (v22[v27])
    {
      if (v29)
      {
        [v29 removeFromSuperview];
        v30 = *&v22[v28];
      }

      else
      {
        v30 = 0;
      }

      *&v22[v28] = 0;

      v37 = sub_1E3A8FCE0();
      if (v37)
      {
        v38 = v37;
        [v37 removeFromSuperview];
      }

      v39 = *&v22[OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView____lazy_storage___darkeningGradientView];
      *&v22[OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView____lazy_storage___darkeningGradientView] = 0;
      sub_1E329CC84(v39);
    }

    else
    {
      if (!v29)
      {
        _s12GradientViewCMa();
        v31 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
        v32 = *&v22[v28];
        *&v22[v28] = v31;
      }

      v33 = sub_1E3A8FCE0();
      if (v33)
      {
      }

      else
      {
        _s12GradientViewCMa();
        v40 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
        v41 = *&v22[OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView____lazy_storage___darkeningGradientView];
        *&v22[OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView____lazy_storage___darkeningGradientView] = v40;
        sub_1E329CC84(v41);
      }

      sub_1E3A8DDEC(v34, v35, v36);
    }

    [v22 vui_setNeedsLayout];
  }

  OUTLINED_FUNCTION_78_8();
}

uint64_t (*sub_1E3A8E280())()
{
  v2 = OUTLINED_FUNCTION_12_11();
  v3 = __swift_coroFrameAllocStub(v2);
  *v0 = v3;
  v3[3] = v1;
  v4 = OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView_disableGradient;
  OUTLINED_FUNCTION_4_13();
  *(v3 + 32) = *(v1 + v4);
  return sub_1E3A8E2EC;
}

void sub_1E3A8E32C(void *a1)
{
  v22 = *&v2[OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView_titleView];
  *&v2[OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView_titleView] = a1;
  v3 = OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView_titleView;
  v4 = a1;
  v12 = OUTLINED_FUNCTION_61_11(v4, v5, v6, v7, v8, v9, v10, v11, v21, v22);
  if (v12)
  {
    v15 = *&v2[v3];
    if (v15)
    {
      v16 = v15;
      v17 = sub_1E3A8FC94();
      v18 = [v17 superview];

      if (v18)
      {

        v16 = v18;
      }

      else
      {
        [v2 vui:*&v2[OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView____lazy_storage___visualEffectContainerView] insertSubview:v16 belowSubview:0 oldView:?];
      }
    }

    sub_1E3A8DDEC(v12, v13, v14);
    [v2 vui_setNeedsLayout];
  }

  OUTLINED_FUNCTION_200();
}

void *sub_1E3A8E424(uint64_t a1)
{
  v2 = OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView_badgeView;
  OUTLINED_FUNCTION_0_12(a1);
  v3 = *(v1 + v2);
  v4 = v3;
  return v3;
}

uint64_t sub_1E3A8E4F8()
{
  v0 = OUTLINED_FUNCTION_12_11();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_3_9(v1);
  OUTLINED_FUNCTION_4_13();
  OUTLINED_FUNCTION_13_9();
  v3 = v2;
  return OUTLINED_FUNCTION_27_0();
}

void *sub_1E3A8E574(uint64_t a1)
{
  v2 = OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView_legacyScorecardView;
  OUTLINED_FUNCTION_0_12(a1);
  v3 = *(v1 + v2);
  v4 = v3;
  return v3;
}

uint64_t sub_1E3A8E5BC()
{
  v0 = OUTLINED_FUNCTION_12_11();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_3_9(v1);
  OUTLINED_FUNCTION_4_13();
  OUTLINED_FUNCTION_13_9();
  v3 = v2;
  return OUTLINED_FUNCTION_27_0();
}

void sub_1E3A8E638(uint64_t a1, char a2, void (*a3)(id))
{
  v4 = *a1;
  v6 = (*a1 + 24);
  v5 = *v6;
  if (a2)
  {
    v7 = v5;
    a3(v5);
  }

  else
  {
    a3(*(*a1 + 24));
  }

  free(v4);
}

void sub_1E3A8E6B8(void *a1)
{
  v18 = *&v2[OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView_bannerScorecardView];
  *&v2[OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView_bannerScorecardView] = a1;
  v3 = OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView_bannerScorecardView;
  v4 = a1;
  if (OUTLINED_FUNCTION_61_11(v4, v5, v6, v7, v8, v9, v10, v11, v17, v18))
  {
    v12 = *&v2[v3];
    if (v12)
    {
      v13 = v12;
      [v2 vui:v13 bringSubviewToFront:?];
      v14 = [objc_opt_self() clearColor];
      [v13 setVuiBackgroundColor_];

      [v2 vui_setNeedsLayout];
    }
  }

  OUTLINED_FUNCTION_200();
}

void *sub_1E3A8E7AC(uint64_t a1)
{
  v2 = OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView_scorecardView;
  OUTLINED_FUNCTION_0_12(a1);
  v3 = *(v1 + v2);
  v4 = v3;
  return v3;
}

uint64_t sub_1E3A8E8E4()
{
  v0 = OUTLINED_FUNCTION_12_11();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_3_9(v1);
  OUTLINED_FUNCTION_4_13();
  OUTLINED_FUNCTION_13_9();
  v3 = v2;
  return OUTLINED_FUNCTION_27_0();
}

void *sub_1E3A8E9C4(uint64_t a1)
{
  v2 = OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView_scoreboardViewModel;
  OUTLINED_FUNCTION_0_12(a1);
  v3 = *(v1 + v2);
  v4 = v3;
  return v3;
}

void *sub_1E3A8EA8C(uint64_t a1)
{
  v2 = OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView_backgroundImageForMaterial;
  OUTLINED_FUNCTION_0_12(a1);
  v3 = *(v1 + v2);
  v4 = v3;
  return v3;
}

uint64_t sub_1E3A8EB54(uint64_t a1)
{
  v2 = OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView_backgroundImageHasChanged;
  OUTLINED_FUNCTION_0_12(a1);
  return *(v1 + v2);
}

uint64_t sub_1E3A8EB88(uint64_t a1)
{
  v2 = a1;
  v3 = OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView_backgroundImageHasChanged;
  result = OUTLINED_FUNCTION_37(a1);
  *(v1 + v3) = v2;
  return result;
}

void *sub_1E3A8EC14(uint64_t a1)
{
  v2 = OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView_scorecardViewBackgroundImage;
  OUTLINED_FUNCTION_0_12(a1);
  v3 = *(v1 + v2);
  v4 = v3;
  return v3;
}

void *sub_1E3A8ECDC(uint64_t a1)
{
  v2 = OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView_pendingOperation;
  OUTLINED_FUNCTION_0_12(a1);
  v3 = *(v1 + v2);
  v4 = v3;
  return v3;
}

void *sub_1E3A8EDA4(uint64_t a1)
{
  v2 = OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView_isOperationCancelledObserver;
  OUTLINED_FUNCTION_0_12(a1);
  v3 = *(v1 + v2);
  v4 = v3;
  return v3;
}

void *sub_1E3A8EE6C(uint64_t a1)
{
  v2 = OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView_isOperationFinishedObserver;
  OUTLINED_FUNCTION_0_12(a1);
  v3 = *(v1 + v2);
  v4 = v3;
  return v3;
}

void sub_1E3A8EF70(void *a1)
{
  v2 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_21();
  v4 = (*(v3 + 640))();
  if (v4)
  {
    v5 = v4;
    if (a1)
    {
      sub_1E3280A90(0, &qword_1EE23AE00, 0x1E69DCAB8);
      v14 = a1;
      v6 = sub_1E4206F64();

      if (v6)
      {
        goto LABEL_9;
      }
    }

    else
    {
    }
  }

  else if (!a1)
  {
    OUTLINED_FUNCTION_200();
    return;
  }

  OUTLINED_FUNCTION_12_5();
  (*(v7 + 672))(1);
  OUTLINED_FUNCTION_36_3();
  v9 = *((*v2 & v8) + 0x288);
  a1;
  v9(a1);
  v10 = OUTLINED_FUNCTION_1_36();
  sub_1E388C300(0, v10, v11);
LABEL_9:
  OUTLINED_FUNCTION_200();
}

void (*sub_1E3A8F0F0(void *a1))(void **a1, char a2)
{
  a1[1] = v1;
  OUTLINED_FUNCTION_21();
  *a1 = (*(v3 + 640))();
  return sub_1E3A8F16C;
}

void sub_1E3A8F16C(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = v2;
    sub_1E3A8EF70(v2);
  }

  else
  {
    sub_1E3A8EF70(*a1);
  }
}

void *sub_1E3A8F1D4(uint64_t a1)
{
  v2 = OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView_verticalStackView;
  OUTLINED_FUNCTION_0_12(a1);
  v3 = *(v1 + v2);
  v4 = v3;
  return v3;
}

uint64_t sub_1E3A8F2F8()
{
  v0 = OUTLINED_FUNCTION_12_11();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_3_9(v1);
  OUTLINED_FUNCTION_4_13();
  OUTLINED_FUNCTION_13_9();
  v3 = v2;
  return OUTLINED_FUNCTION_27_0();
}

void *sub_1E3A8F374(uint64_t a1)
{
  v2 = OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView_logoImageView;
  OUTLINED_FUNCTION_0_12(a1);
  v3 = *(v1 + v2);
  v4 = v3;
  return v3;
}

uint64_t sub_1E3A8F4D8()
{
  v0 = OUTLINED_FUNCTION_12_11();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_3_9(v1);
  OUTLINED_FUNCTION_4_13();
  OUTLINED_FUNCTION_13_9();
  v3 = v2;
  return OUTLINED_FUNCTION_27_0();
}

uint64_t sub_1E3A8F554(uint64_t a1)
{
  v2 = OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView_logoImagePosition;
  OUTLINED_FUNCTION_0_12(a1);
  return *(v1 + v2);
}

uint64_t sub_1E3A8F588(uint64_t a1)
{
  v2 = a1;
  v3 = OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView_logoImagePosition;
  result = OUTLINED_FUNCTION_37(a1);
  *(v1 + v3) = v2;
  return result;
}

void *sub_1E3A8F614(uint64_t a1)
{
  v2 = OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView_channelLogoView;
  OUTLINED_FUNCTION_0_12(a1);
  v3 = *(v1 + v2);
  v4 = v3;
  return v3;
}

uint64_t sub_1E3A8F770()
{
  v0 = OUTLINED_FUNCTION_12_11();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_3_9(v1);
  OUTLINED_FUNCTION_4_13();
  OUTLINED_FUNCTION_13_9();
  v3 = v2;
  return OUTLINED_FUNCTION_27_0();
}

void *sub_1E3A8F7EC(uint64_t a1)
{
  v2 = OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView_alphaImageView;
  OUTLINED_FUNCTION_0_12(a1);
  v3 = *(v1 + v2);
  v4 = v3;
  return v3;
}

uint64_t sub_1E3A8F8D0()
{
  v0 = OUTLINED_FUNCTION_12_11();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_3_9(v1);
  OUTLINED_FUNCTION_4_13();
  OUTLINED_FUNCTION_13_9();
  v3 = v2;
  return OUTLINED_FUNCTION_27_0();
}

uint64_t sub_1E3A8F94C(uint64_t a1)
{
  v2 = OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView_isPlayingVideo;
  OUTLINED_FUNCTION_0_12(a1);
  return *(v1 + v2);
}

uint64_t sub_1E3A8F980(uint64_t a1)
{
  v2 = a1;
  v3 = OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView_isPlayingVideo;
  result = OUTLINED_FUNCTION_37(a1);
  *(v1 + v3) = v2;
  return result;
}

uint64_t sub_1E3A8F9C0(uint64_t a1)
{
  v2 = OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView_useDarkJoeColor;
  OUTLINED_FUNCTION_0_12(a1);
  return *(v1 + v2);
}

uint64_t sub_1E3A8F9F4(uint64_t a1)
{
  v2 = a1;
  v3 = OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView_useDarkJoeColor;
  result = OUTLINED_FUNCTION_37(a1);
  *(v1 + v3) = v2;
  return result;
}

uint64_t sub_1E3A8FA80(uint64_t a1)
{
  v2 = OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView_useBoundingBoxMargin;
  OUTLINED_FUNCTION_0_12(a1);
  return *(v1 + v2);
}

uint64_t sub_1E3A8FAB4(uint64_t a1)
{
  v2 = a1;
  v3 = OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView_useBoundingBoxMargin;
  result = OUTLINED_FUNCTION_37(a1);
  *(v1 + v3) = v2;
  return result;
}

id sub_1E3A8FB40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView____lazy_storage___logoGradientView;
  v5 = *&v3[OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView____lazy_storage___logoGradientView];
  v6 = v5;
  if (v5 == 1)
  {
    v7 = v3;
    if (TVAppFeature.isEnabled.getter(10, a2, a3))
    {
      type metadata accessor for GradientView();
      v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    }

    else
    {
      v8 = objc_opt_self();
      v6 = [v8 makeImageWithImage:*sub_1E3C3E4E0() existingView:0];
      [v6 setVuiContentMode_];
      if ([v7 vuiIsRTL])
      {
        v9 = [v6 image];
        if (v9)
        {
          v10 = v9;
          v11 = sub_1E3C77668();
        }

        else
        {
          v11 = 0;
        }

        [v6 setImage_];
      }

      else
      {
      }
    }

    v12 = *&v7[v4];
    *&v7[v4] = v6;
    v13 = v6;
    sub_1E329CC84(v12);
  }

  sub_1E34AF5F4(v5);
  return v6;
}

id sub_1E3A8FCE0()
{
  v1 = OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView____lazy_storage___darkeningGradientView;
  v2 = *(v0 + OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView____lazy_storage___darkeningGradientView);
  v3 = v2;
  if (v2 == 1)
  {
    _s12GradientViewCMa();
    v3 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v4 = *(v0 + v1);
    *(v0 + v1) = v3;
    v5 = v3;
    sub_1E329CC84(v4);
  }

  sub_1E34AF5F4(v2);
  return v3;
}

id sub_1E3A8FD60()
{
  v1 = OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView____lazy_storage___playbackGradientView;
  v2 = *(v0 + OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView____lazy_storage___playbackGradientView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView____lazy_storage___playbackGradientView);
  }

  else
  {
    _s12GradientViewCMa();
    v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1E3A8FDE8(uint64_t *a1, Class *a2)
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = [objc_allocWithZone(*a2) init];
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

id sub_1E3A8FE54()
{
  OUTLINED_FUNCTION_0_8();
  *(v0 + OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView_transitionAnimationDuration) = 0x3FE8000000000000;
  *(v0 + OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView_overlayLayout) = 0;
  *(v0 + OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView_gradientColor) = 0;
  *(v0 + OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView_isSingleCase) = 0;
  *(v0 + OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView_disableGradient) = 0;
  *(v0 + OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView_titleView) = 0;
  *(v0 + OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView_badgeView) = 0;
  *(v0 + OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView_legacyScorecardView) = 0;
  *(v0 + OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView_bannerScorecardView) = 0;
  *(v0 + OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView_scorecardView) = 0;
  *(v0 + OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView_originalScoreboardViewModel) = 0;
  *(v0 + OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView_scoreboardViewModel) = 0;
  *(v0 + OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView_backgroundImageForMaterial) = 0;
  *(v0 + OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView_backgroundImageHasChanged) = 0;
  *(v0 + OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView_scorecardViewBackgroundImage) = 0;
  *(v0 + OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView_pendingOperation) = 0;
  *(v0 + OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView_isOperationCancelledObserver) = 0;
  *(v0 + OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView_isOperationFinishedObserver) = 0;
  *(v0 + OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView_verticalStackView) = 0;
  *(v0 + OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView_logoImageView) = 0;
  *(v0 + OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView_logoImagePosition) = 15;
  *(v0 + OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView_channelLogoView) = 0;
  *(v0 + OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView_alphaImageView) = 0;
  *(v0 + OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView_isPlayingVideo) = 0;
  *(v0 + OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView_useDarkJoeColor) = 0;
  OUTLINED_FUNCTION_34_36(OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView_useBoundingBoxMargin);
  v1 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  OUTLINED_FUNCTION_48_24(v1);
  v15 = v0;
  v16 = _s19FlowcaseOverlayViewCMa();
  v2 = OUTLINED_FUNCTION_2_0();
  v5 = objc_msgSendSuper2(v3, v4, v2);
  v6 = objc_opt_self();
  v7 = v5;
  v8 = [v6 clearColor];
  [v7 setVuiBackgroundColor_];

  [v7 setVuiClipsToBounds_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF379F0, qword_1E42CC4A0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1E4297BE0;
  *(v9 + 32) = sub_1E3280A90(0, &qword_1EE23AF90, 0x1E69DF7B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF37A00, &unk_1E429BBA0);
  v10 = sub_1E42062A4();

  OUTLINED_FUNCTION_4_0();
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v14[4] = sub_1E3A901C8;
  v14[5] = v11;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 1107296256;
  v14[2] = sub_1E3790FBC;
  v14[3] = &block_descriptor_51;
  v12 = _Block_copy(v14);

  [v7 vui:v10 registerForTraitChanges:v12 withHandler:?];
  _Block_release(v12);

  return v7;
}

void sub_1E3A901C8()
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1E3A90214();
  }
}

void sub_1E3A90214()
{
  v1 = [v0 vuiUserInterfaceStyle];
  v2 = sub_1E3A8FCA8();
  v3 = [objc_opt_self() effectWithStyle_];
  [v2 setEffect_];

  v4 = sub_1E3A8FDD4();
  sub_1E3280A90(0, &qword_1EE23AE20, 0x1E69DC888);
  if (v1 == 2)
  {
    OUTLINED_FUNCTION_2_7();
    v5 = sub_1E4206F24();
    v6 = [v5 colorWithAlphaComponent_];
  }

  else
  {
    v5 = sub_1E4206F24();
    v6 = [v5 colorWithAlphaComponent_];
  }

  v7 = v6;

  v8 = [v7 CGColor];
  [v4 setBackgroundColor_];
}

void sub_1E3A90398()
{
  *(v0 + OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView_transitionAnimationDuration) = 0x3FE8000000000000;
  *(v0 + OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView_overlayLayout) = 0;
  *(v0 + OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView_gradientColor) = 0;
  *(v0 + OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView_isSingleCase) = 0;
  *(v0 + OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView_disableGradient) = 0;
  *(v0 + OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView_titleView) = 0;
  *(v0 + OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView_badgeView) = 0;
  *(v0 + OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView_legacyScorecardView) = 0;
  *(v0 + OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView_bannerScorecardView) = 0;
  *(v0 + OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView_scorecardView) = 0;
  *(v0 + OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView_originalScoreboardViewModel) = 0;
  *(v0 + OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView_scoreboardViewModel) = 0;
  *(v0 + OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView_backgroundImageForMaterial) = 0;
  *(v0 + OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView_backgroundImageHasChanged) = 0;
  *(v0 + OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView_scorecardViewBackgroundImage) = 0;
  *(v0 + OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView_pendingOperation) = 0;
  *(v0 + OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView_isOperationCancelledObserver) = 0;
  *(v0 + OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView_isOperationFinishedObserver) = 0;
  *(v0 + OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView_verticalStackView) = 0;
  *(v0 + OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView_logoImageView) = 0;
  *(v0 + OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView_logoImagePosition) = 15;
  *(v0 + OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView_channelLogoView) = 0;
  *(v0 + OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView_alphaImageView) = 0;
  *(v0 + OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView_isPlayingVideo) = 0;
  *(v0 + OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView_useDarkJoeColor) = 0;
  OUTLINED_FUNCTION_34_36(OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView_useBoundingBoxMargin);
  v1 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  OUTLINED_FUNCTION_48_24(v1);
  sub_1E42076B4();
  __break(1u);
}

void sub_1E3A90578()
{
  v1 = *&v0[OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView_titleView];
  if (v1)
  {
    v2 = v1;
LABEL_5:
    v5 = v2;
    [v0 bounds];
    [v5 frame];
    CGRectGetMinY(v6);

    return;
  }

  OUTLINED_FUNCTION_21();
  v2 = (*(v3 + 496))();
  if (v2)
  {
    goto LABEL_5;
  }

  OUTLINED_FUNCTION_0_59();
  v2 = (*(v4 + 808))();
  if (v2)
  {
    goto LABEL_5;
  }
}

double sub_1E3A90664(int a1, double a2, double a3)
{
  v4 = v3;
  v430.receiver = v4;
  v430.super_class = _s19FlowcaseOverlayViewCMa();
  LODWORD(v417) = a1;
  v426 = a3;
  v8 = objc_msgSendSuper2(&v430, sel_vui_layoutSubviews_computationOnly_, a1 & 1, a2, a3);
  if (v10 <= 0.0)
  {
    v9 = a2;
  }

  *&v420 = v9;
  v11 = MEMORY[0x1E69E7D40];
  v12 = (*MEMORY[0x1E69E7D40] & *v4) + 880;
  v13 = *((*MEMORY[0x1E69E7D40] & *v4) + 0x370);
  v14 = (v13)(v8);
  if (v14)
  {

    v15 = 0.0;
    *&v16 = 0.0;
    v425 = 0;
    if (v13())
    {
      OUTLINED_FUNCTION_14_84();
      [v4 sizeThatFits_];
      v16 = v20;
      v425 = v21;
    }

    OUTLINED_FUNCTION_33_2();
    v23 = v22;
    OUTLINED_FUNCTION_36_3();
    v25 = *((*v11 & v24) + 0x178);
    if (v25())
    {
      OUTLINED_FUNCTION_30();
      (*(v26 + 1824))();
      OUTLINED_FUNCTION_30_6();
      OUTLINED_FUNCTION_12_6();
      (*(v27 + 152))(v431);

      if (v432)
      {
        v15 = 0.0;
      }

      else
      {
        v15 = *&v431[3];
      }
    }

    v28 = v23 - *&v16 - v15;
    if (v25())
    {
      OUTLINED_FUNCTION_30();
      (*(v29 + 1824))();
      OUTLINED_FUNCTION_30_6();
      OUTLINED_FUNCTION_12_6();
      (*(v30 + 152))(v433);

      OUTLINED_FUNCTION_32_1();
      if (v33)
      {
        v34 = v31;
      }

      else
      {
        v34 = v32;
      }
    }

    else
    {
      v34 = 0.0;
    }
  }

  else
  {
    v425 = 0;
    *&v16 = 0.0;
    v34 = 0.0;
    v28 = 0.0;
  }

  OUTLINED_FUNCTION_10_53();
  v35 += 104;
  v36 = *v35;
  v37 = v35;
  v38 = (*v35)();
  if (v38)
  {

    if (v36())
    {
      OUTLINED_FUNCTION_14_84();
      [v4 vui:OUTLINED_FUNCTION_70_14(v41 sizeThatFits:{v42, v43)}];
      v16 = v44;
      v425 = v45;
    }

    else
    {
      *&v16 = 0.0;
      v425 = 0;
    }

    if (TVAppFeature.isEnabled.getter(10, v39, v40) & 1) != 0 && (OUTLINED_FUNCTION_10_53(), v47 = (*(v46 + 856))(), (sub_1E3A92050(v47, 14, v48)))
    {
      OUTLINED_FUNCTION_10_53();
      if ((*(v49 + 376))())
      {
        OUTLINED_FUNCTION_30();
        (*(v50 + 1896))();
        OUTLINED_FUNCTION_30_6();
        OUTLINED_FUNCTION_12_6();
        (*(v51 + 152))(&v434);

        OUTLINED_FUNCTION_32_1();
        if (v33)
        {
          v28 = v52;
        }

        else
        {
          v28 = v53;
        }
      }

      else
      {
        v28 = 0.0;
      }
    }

    else
    {
      OUTLINED_FUNCTION_33_2();
      v55 = v54;
      OUTLINED_FUNCTION_36_3();
      if ((*((*v11 & v56) + 0x178))())
      {
        OUTLINED_FUNCTION_30();
        (*(v57 + 1896))();
        OUTLINED_FUNCTION_30_6();
        OUTLINED_FUNCTION_12_6();
        (*(v58 + 152))(&v434);

        OUTLINED_FUNCTION_32_1();
        if (!v33)
        {
          v59 = v60;
        }
      }

      else
      {
        v59 = 0.0;
      }

      v28 = v55 - *&v16 - v59;
    }

    OUTLINED_FUNCTION_10_53();
    if ((*(v61 + 376))())
    {
      OUTLINED_FUNCTION_30();
      (*(v62 + 1896))();
      OUTLINED_FUNCTION_30_6();
      OUTLINED_FUNCTION_12_6();
      (*(v63 + 152))(v435);

      OUTLINED_FUNCTION_32_1();
      if (v33)
      {
        v34 = v64;
      }

      else
      {
        v34 = v65;
      }
    }

    else
    {
      v34 = 0.0;
    }
  }

  v66 = v36();
  v67 = &qword_1E42B6000;
  v410 = *&v34;
  v411 = *&v28;
  if (!v66)
  {
    v66 = v13();
    if (!v66)
    {
      v412 = 0.0;
      goto LABEL_56;
    }
  }

  v70 = TVAppFeature.isEnabled.getter(10, v68, v69);
  if (v70)
  {
    OUTLINED_FUNCTION_10_53();
    v74 = (*(v73 + 856))();
    v412 = 0.0;
    v394 = 117.0;
    v395 = 153.0;
    if ((sub_1E3A92050(v74, 14, v75) & 1) == 0)
    {
      OUTLINED_FUNCTION_33_2();
      v412 = CGRectGetWidth(v445) + -153.0;
    }

    goto LABEL_57;
  }

  v76 = sub_1E3A8FB40(v70, v71, v72);
  v412 = 0.0;
  if (!v76)
  {
    goto LABEL_56;
  }

  v77 = v76;
  objc_opt_self();
  v78 = swift_dynamicCastObjCClass();
  if (!v78)
  {

    goto LABEL_56;
  }

  v67 = [v78 image];

  if (!v67)
  {
LABEL_56:
    v394 = 0.0;
    v395 = 0.0;
    goto LABEL_57;
  }

  [v67 size];
  v80 = v79;
  v82 = v81;

  if (v80 != 0.0 || (v394 = 0.0, v395 = 0.0, v82 != 0.0))
  {
    OUTLINED_FUNCTION_33_2();
    v412 = CGRectGetWidth(v446) - v80;
    if (TVAppFeature.isEnabled.getter(10, v83, v84))
    {
      OUTLINED_FUNCTION_10_53();
      v86 = (*(v85 + 856))();
      if (sub_1E3A92050(v86, 14, v87))
      {
        v88 = v36();
        if (v88)
        {

          OUTLINED_FUNCTION_10_53();
          if ((*(v89 + 376))())
          {
            OUTLINED_FUNCTION_30();
            (*(v90 + 1896))();
            OUTLINED_FUNCTION_30_6();
            OUTLINED_FUNCTION_12_6();
            (*(v91 + 152))(&v436);

            OUTLINED_FUNCTION_32_1();
            if (!v33)
            {
              v92 = v93;
            }
          }

          else
          {
            v92 = 0.0;
          }

          v412 = v92;
        }
      }
    }

    OUTLINED_FUNCTION_33_2();
    Height = CGRectGetHeight(v455);
    if (Height >= v82)
    {
      Height = v82;
    }

    v394 = Height;
    v395 = v80;
  }

LABEL_57:
  OUTLINED_FUNCTION_10_53();
  v398 = v94 + 904;
  v399 = *(v94 + 904);
  v95 = v399();
  v400 = v37;
  if (v95)
  {

    OUTLINED_FUNCTION_10_53();
    v98 += 47;
    v99 = *v98;
    v100 = (*v98)();
    if (v100)
    {
      OUTLINED_FUNCTION_30();
      (*(v101 + 1872))();
      OUTLINED_FUNCTION_30_6();
      OUTLINED_FUNCTION_33_2();
      Width = CGRectGetWidth(v447);
      (*(*v67 + 256))(COERCE_CGFLOAT(*&Width), 0);
    }

    if ((v99)(v100))
    {
      OUTLINED_FUNCTION_30();
      (*(v103 + 1872))();
      OUTLINED_FUNCTION_30_6();
      OUTLINED_FUNCTION_33_2();
      v104 = CGRectGetHeight(v448);
      (*(*v67 + 360))(COERCE_CGFLOAT(*&v104), 0);
    }
  }

  v401 = v36;
  v402 = v13;
  v403 = v12;
  sub_1E3A93DDC(v96, v97, a2, v426);
  v396 = v106;
  v397 = v105;
  v108 = v107;
  v110 = v109;
  OUTLINED_FUNCTION_36_3();
  v112 = *((*v11 & v111) + 0x328);
  v113 = v112();
  v116 = MEMORY[0x1E69DDCE0];
  if (!v113)
  {
    v122 = 0.0;
    v428 = 0.0;
    v429 = 0.0;
    v424 = 0.0;
    goto LABEL_103;
  }

  v423 = v16;

  v117 = v112();
  if (v117)
  {
    v118 = v117;
    sub_1E3DA4F70();

    OUTLINED_FUNCTION_12_6();
    v120 = (*(v119 + 1560))();

    v121 = sub_1E3A24FDC(v120);
  }

  else
  {
    v121 = 0;
  }

  v123 = v112();
  if (!v123)
  {
    v127 = 0;
    v139 = 0.0;
    v133 = 0.0;
LABEL_77:
    v429 = v116[1];
    v143 = v116[2];
    goto LABEL_78;
  }

  v126 = v123;
  v127 = sub_1E3DA4F70();

  OUTLINED_FUNCTION_12_6();
  v129 = *(v128 + 248);

  v131 = COERCE_DOUBLE(v129(v130));
  LOBYTE(v129) = v132;

  if (v129)
  {
    v133 = 0.0;
  }

  else
  {
    v133 = v131;
  }

  v134 = *(*v127 + 352);

  v136 = COERCE_DOUBLE(v134(v135));
  v138 = v137;

  if (v138)
  {
    v139 = 0.0;
  }

  else
  {
    v139 = v136;
  }

  OUTLINED_FUNCTION_12_6();
  v141 = *(v140 + 152);

  v141(v437, v142);
  v429 = *&v437[1];
  v143 = *&v437[2];

  if (v438)
  {
    goto LABEL_77;
  }

LABEL_78:
  v144 = TVAppFeature.isEnabled.getter(17, v124, v125);
  if (v144)
  {
    v160 = OUTLINED_FUNCTION_75_7(v152, v153, v154, v155, v144, v145, v146, v147, v148, v149, v150, v151, v156, v157, v158, v159, v391, v392, v393, *&v394, *&v395, v396, v397, v398, v399, v400, v36, v402, v403, v404, v406, v408, v410, v411, *&v412, v413, v415, v417, v418, v420, v421, v16, v425, *&v426, v427, v429);
    v161 = *&v420 - v160;
    if (v161 < v133)
    {
      v133 = v161;
    }
  }

  else if (v121)
  {
    OUTLINED_FUNCTION_33_2();
    if (v163 != 0.0 || v162 != 0.0)
    {
      v164 = OUTLINED_FUNCTION_33_2();
      v133 = v179.n128_f64[0] - OUTLINED_FUNCTION_75_7(v172, v173, v179, v174, v164, v165, v166, v167, v168, v169, v170, v171, v175, v176, v177, v178, v391, v392, v393, *&v394, *&v395, v396, v397, v398, v399, v400, v36, v402, v403, v404, v406, v408, v410, v411, *&v412, v413, v415, v417, v418, v420, v421, v16, v425, *&v426, v427, v429);
    }
  }

  v180 = v112();
  v183 = v180;
  if (v180)
  {
    [v180 vui:v133 sizeThatFits:v139];
    v122 = v184;
    v428 = v185;
  }

  else
  {
    v122 = 0.0;
    v428 = 0.0;
  }

  v186 = TVAppFeature.isEnabled.getter(10, v181, v182);
  if ((v186 & 1) != 0 && v127)
  {
    OUTLINED_FUNCTION_12_6();
    v188 = *(v187 + 504);

    v190 = v188(v189);

    v16 = v423;
    if (v190 != 18)
    {
      v186 = sub_1E412561C(v190);
      if (v186)
      {
        OUTLINED_FUNCTION_33_2();
        v429 = (CGRectGetWidth(v449) - v122) * 0.5;
      }
    }
  }

  else
  {
    v16 = v423;
  }

  v191 = (v112)(v186);
  if (v191)
  {
    v193 = v191;
    v192.n128_f64[0] = v143;
    v194 = sub_1E3DA6ACC(v192);

    if (v127)
    {
      goto LABEL_96;
    }
  }

  else
  {
    v194 = 0.0;
    if (v127)
    {
LABEL_96:
      OUTLINED_FUNCTION_12_6();
      v196 = *(v195 + 2184);

      v198 = v196(v197);

      if (v198)
      {
        v194 = v143;
      }
    }
  }

  v199 = OUTLINED_FUNCTION_33_2();
  v201 = v200 - v194;
  if (v183)
  {
    v201 = v200 - v194 - v428;
  }

  v424 = v201;
  v202 = (v112)(v199);
  if (v202)
  {
    v203 = v202;
    sub_1E3DA4F70();

    OUTLINED_FUNCTION_26();
    v205 = (*(v204 + 2112))();

    [v205 setMaxWidth_];
  }

LABEL_103:
  v206 = TVAppFeature.isEnabled.getter(10, v114, v115);
  if (v206)
  {
    v206 = sub_1E3A95794();
    if (v206)
    {
      v209 = OUTLINED_FUNCTION_33_2();
      MinY = v210;
      v212 = (v112)(v209);
      *&v392 = v110;
      if (v212)
      {

        v222 = v428;
        v221 = v429;
        v223 = v424;
        v224 = v122;
      }

      else
      {
        v221 = OUTLINED_FUNCTION_47_25(v213, v214, v215, v216, v217, v218, v219, v220, *&v391, v110, *&v393, v394, v395, *&v396, *&v397);
        if (!v238)
        {
LABEL_121:
          v239 = *(v4 + OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView_bannerScorecardView);
          if (v239)
          {
            v240 = v239;
            OUTLINED_FUNCTION_14_84();
            [v4 vui:OUTLINED_FUNCTION_70_14(v241 sizeThatFits:{v242, v243)}];
            v245 = v244;
            v416 = v246;
          }

          else
          {
            v416 = 0.0;
            v245 = 0.0;
          }

          OUTLINED_FUNCTION_10_53();
          if (!(*(v247 + 376))() || (, , OUTLINED_FUNCTION_12_6(), (*(v248 + 152))(v439), v250 = *&v439[1], v249 = *&v439[2], , v251 = v250, (v440 & 1) != 0))
          {
            v251 = v116[1];
            v249 = v116[2];
          }

          v414 = MinY - (v416 + v249);
          v252 = v245 + v251;
          v409 = v251;
          v253 = v122 - v251;
          if (v122 >= v252)
          {
            v254 = v245;
          }

          else
          {
            v254 = v253;
          }

          v419 = v254;
          v110 = *&v392;
          goto LABEL_131;
        }
      }

      MinY = CGRectGetMinY(*&v221);
      goto LABEL_121;
    }
  }

  if (sub_1E39DFFE0(v206, v207, v208))
  {
    v225 = (*((*v11 & *v4) + 0x238))();
    if (!v225)
    {
LABEL_109:
      v409 = 0.0;
      v414 = 0.0;
      v416 = 0.0;
      v419 = 0.0;
      goto LABEL_131;
    }
  }

  else
  {
    v225 = (*((*v11 & *v4) + 0x208))();
    if (!v225)
    {
      goto LABEL_109;
    }
  }

  v226 = v225;
  v227 = OUTLINED_FUNCTION_1_36();
  [v228 v229];
  v419 = v230;
  v416 = v231;
  OUTLINED_FUNCTION_33_2();
  v233 = v232;
  OUTLINED_FUNCTION_36_3();
  if (!(*((*v11 & v234) + 0x178))() || (OUTLINED_FUNCTION_30(), (*(v235 + 1944))(), , OUTLINED_FUNCTION_26(), (*(v236 + 152))(v439), v414 = *v439, v237 = *&v439[3], , (v440 & 1) != 0))
  {
    v414 = *v116;
    v237 = v116[3];
  }

  v409 = v233 - v237 - v419;
LABEL_131:
  *&v422 = v122;
  OUTLINED_FUNCTION_10_53();
  v255 += 62;
  v256 = *v255;
  v257 = (*v255)();
  if (!v257)
  {
    v405 = 0.0;
    v407 = 0.0;
    v276 = 0.0;
    v277 = 0.0;
    goto LABEL_156;
  }

  v258 = v16;

  OUTLINED_FUNCTION_10_53();
  v259 += 47;
  v260 = *v259;
  v261 = (*v259)();
  if (!v261 || (OUTLINED_FUNCTION_26_0(), v264 = v263, (*(v262 + 1920))(), OUTLINED_FUNCTION_31_4(), v261 = , !v264) || (OUTLINED_FUNCTION_8(), (*(v265 + 152))(v441), v266 = *v441, v267 = *&v441[1], v268 = *&v441[2], v261 = , (v442 & 1) != 0))
  {
    v266 = *v116;
    v267 = v116[1];
    v268 = v116[2];
  }

  v269 = (v256)(v261);
  if (v269)
  {
    v270 = v269;
    [v4 bounds];
    [v270 vui:OUTLINED_FUNCTION_70_14(v271 sizeThatFits:{v272, v273)}];
    v405 = v275;
    v407 = v274;
  }

  else
  {
    v405 = 0.0;
    v407 = 0.0;
  }

  [v4 bounds];
  v279 = v278;
  if ((sub_1E3A95794() & 1) != 0 && v260())
  {

    OUTLINED_FUNCTION_12_6();
    (*(v282 + 152))(v443);

    v11 = MEMORY[0x1E69E7D40];
    if ((v444 & 1) == 0 && v443[0] > 0.0)
    {
      v268 = v443[0];
    }
  }

  else
  {
    v11 = MEMORY[0x1E69E7D40];
  }

  v277 = v267 + v279;
  v283 = TVAppFeature.isEnabled.getter(10, v280, v281);
  OUTLINED_FUNCTION_33_2();
  if ((v283 & 1) == 0)
  {
    v276 = v266 + v284;
    v16 = v258;
    goto LABEL_156;
  }

  v286 = v285;
  v287 = sub_1E3A95794();
  v288 = v409;
  v289 = v414;
  v290 = v416;
  v291 = v419;
  v16 = v258;
  if (v287)
  {
    goto LABEL_154;
  }

  v292 = (v112)(v409, v414, v419, v416);
  if (v292)
  {

    v290 = v428;
    v288 = v429;
    v291 = *&v422;
    v289 = v424;
LABEL_154:
    v286 = CGRectGetMinY(*&v288);
    goto LABEL_155;
  }

  v288 = OUTLINED_FUNCTION_47_25(v293, v294, v295, v296, v297, v298, v299, v300, *&v391, *&v392, *&v393, v394, v395, *&v396, *&v397);
  if (v301)
  {
    goto LABEL_154;
  }

LABEL_155:
  v450.origin.y = 0.0;
  v450.origin.x = v277;
  v450.size.height = v405;
  v450.size.width = v407;
  v276 = v286 - (v268 + CGRectGetHeight(v450));
LABEL_156:
  if (v417)
  {
    goto LABEL_185;
  }

  if (v399())
  {
    OUTLINED_FUNCTION_14_84();
    OUTLINED_FUNCTION_46_25();
  }

  if (v402())
  {
    OUTLINED_FUNCTION_14_84();
    [v4 vuiIsRTL];
    VUIRectWithFlippedOriginRelativeToBoundingRectWithCondition();
    OUTLINED_FUNCTION_46_25();
  }

  v302 = v401();
  if (v302)
  {
    OUTLINED_FUNCTION_14_84();
    v305 = OUTLINED_FUNCTION_23_42();
    v307.n128_u64[0] = v410;
    v306.n128_u64[0] = v411;
    v308.n128_u64[0] = v16;
    v309.n128_u64[0] = v425;
    OUTLINED_FUNCTION_37_28(v305, v306, v307, v308, v309);
    OUTLINED_FUNCTION_46_25();
  }

  if (sub_1E3A8FB40(v302, v303, v304))
  {
    OUTLINED_FUNCTION_14_84();
    v310 = OUTLINED_FUNCTION_23_42();
    v311.n128_u64[0] = 0;
    v312.n128_f64[0] = v412;
    v314.n128_f64[0] = v394;
    v313.n128_f64[0] = v395;
    OUTLINED_FUNCTION_37_28(v310, v312, v311, v313, v314);
    OUTLINED_FUNCTION_46_25();
  }

  if (v256())
  {
    OUTLINED_FUNCTION_14_84();
    v323 = OUTLINED_FUNCTION_23_42();
    v324.n128_f64[0] = v277;
    v325.n128_f64[0] = v276;
    v327.n128_f64[0] = v405;
    v326.n128_f64[0] = v407;
    OUTLINED_FUNCTION_37_28(v323, v324, v325, v326, v327);
    OUTLINED_FUNCTION_46_25();
  }

  v328 = *(v4 + OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView_titleView);
  if (v328)
  {
    v329 = OUTLINED_FUNCTION_47_25(v315, v316, v317, v318, v319, v320, v321, v322, *&v391, *&v392, v108, v394, v395, *&v396, *&v397);
    v328 = [v330 v331];
  }

  v332 = v4;
  if ((v112)(v328))
  {
    OUTLINED_FUNCTION_14_84();
    v335 = OUTLINED_FUNCTION_51_21();
    v337.n128_f64[0] = v428;
    v336.n128_f64[0] = v429;
    v339.n128_u64[0] = v422;
    v338.n128_f64[0] = v424;
    OUTLINED_FUNCTION_74_10(v335, v336, v338, v339, v337);
    OUTLINED_FUNCTION_46_25();
  }

  v340 = TVAppFeature.isEnabled.getter(10, v333, v334);
  if (v340)
  {
    v343 = *(v4 + OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView_bannerScorecardView);
    if (v343)
    {
      v344 = v343;
      goto LABEL_178;
    }
  }

  else
  {
    if (sub_1E39DFFE0(v340, v341, v342))
    {
      v332 = v4;
      if (!(*((*v11 & *v4) + 0x238))())
      {
        goto LABEL_179;
      }

      goto LABEL_178;
    }

    v332 = v4;
    if ((*((*v11 & *v4) + 0x208))())
    {
LABEL_178:
      OUTLINED_FUNCTION_14_84();
      v345 = OUTLINED_FUNCTION_51_21();
      v346.n128_f64[0] = v409;
      v347.n128_f64[0] = v414;
      v348.n128_f64[0] = v416;
      v349.n128_f64[0] = v419;
      OUTLINED_FUNCTION_74_10(v345, v346, v347, v349, v348);
      OUTLINED_FUNCTION_46_25();
    }
  }

LABEL_179:
  sub_1E3A8FC94();
  OUTLINED_FUNCTION_14_84();
  OUTLINED_FUNCTION_46_25();

  sub_1E3A8FCA8();
  OUTLINED_FUNCTION_14_84();
  OUTLINED_FUNCTION_46_25();

  v352 = *(v4 + OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView_nonPlaybackGradientView);
  if (v352)
  {
    v353 = v352;
    OUTLINED_FUNCTION_14_84();
    OUTLINED_FUNCTION_46_25();
  }

  if ((TVAppFeature.isEnabled.getter(10, v350, v351) & 1) != 0 && sub_1E3A8FCE0())
  {
    OUTLINED_FUNCTION_14_84();
    OUTLINED_FUNCTION_46_25();
  }

  sub_1E3A8FD60();
  OUTLINED_FUNCTION_14_84();
  OUTLINED_FUNCTION_46_25();

  sub_1E3A8FDD4();
  OUTLINED_FUNCTION_14_84();
  sub_1E3D54B34(v354, v355, v356, v357);

LABEL_185:
  v358 = v112();
  if (v358)
  {
    v359 = v358;
    [v4 vui:v358 bringSubviewToFront:?];

    v360 = *&v422;
  }

  else
  {
    v360 = *&v422;
    if (*(v4 + OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView_titleView))
    {
      [v4 vui_bringSubviewToFront_];
    }
  }

  OUTLINED_FUNCTION_33_2();
  sub_1E3A92100(v361, v108, v110, v429, v424, v360, v428);
  if (TVAppFeature.isEnabled.getter(10, v362, v363))
  {
    v366 = TVAppFeature.isEnabled.getter(10, v364, v365);
    if (v366)
    {
      v369 = sub_1E3A8FB40(v366, v367, v368);
      if (v369)
      {
        v370 = v369;
        type metadata accessor for GradientView();
        if (!swift_dynamicCastClass())
        {
          v371 = v370;
LABEL_206:

          return *&v420;
        }

        v371 = sub_1E39600A8();

        if (v371)
        {
          [v371 setType_];
          OUTLINED_FUNCTION_36_3();
          v373 = (*((*v11 & v372) + 0x190))();
          if (!v373)
          {
            v373 = [objc_opt_self() blackColor];
          }

          v374 = v373;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750, &unk_1E429DD30);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_1E429DCC0;
          v376 = [v374 colorWithAlphaComponent_];
          v377 = [v376 CGColor];

          *(inited + 32) = v377;
          v378 = [v374 colorWithAlphaComponent_];
          v379 = [v378 CGColor];

          *(inited + 40) = v379;
          v380 = (*((*v11 & *v4) + 0x358))();
          v382 = sub_1E3A92050(v380, 14, v381);
          v451.origin.y = 0.0;
          v451.origin.x = v412;
          v451.size.width = v395;
          v451.size.height = v394;
          v383 = 28.0 / CGRectGetWidth(v451);
          if (v382)
          {
            v384 = v383;
          }

          else
          {
            v384 = 1.0 - v383;
          }

          v452.origin.x = OUTLINED_FUNCTION_27_35();
          [v371 setStartPoint_];
          v453.origin.x = OUTLINED_FUNCTION_27_35();
          v385 = 153.0 / CGRectGetWidth(v453);
          if (v382)
          {
            v386 = v385;
          }

          else
          {
            v386 = 1.0 - v385;
          }

          v454.origin.x = OUTLINED_FUNCTION_27_35();
          [v371 setEndPoint_];
          sub_1E38E2988(inited);
          swift_setDeallocating();
          sub_1E377D458();
          v387 = OUTLINED_FUNCTION_27_0();
          sub_1E38E2BE0(v387, v388);
          if (sub_1E32AE9B0(MEMORY[0x1E69E7CC0]))
          {
            sub_1E38E2B5C(MEMORY[0x1E69E7CC0], v371);
          }

          goto LABEL_206;
        }
      }
    }
  }

  return *&v420;
}

uint64_t sub_1E3A92050(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1E3A96E4C(a1, a2, a3);
  sub_1E4206254();
  sub_1E4206254();
  if (v8 == v6 && v9 == v7)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_1E42079A4();
  }

  return v4 & 1;
}

void sub_1E3A92100(double a1, double a2, double a3, double a4, double a5, double a6, double a7)
{
  v397 = OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView_nonPlaybackGradientView;
  v12 = *(v7 + OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView_nonPlaybackGradientView);
  if (v12)
  {
    v407 = [v12 layer];
  }

  else
  {
    v407 = 0;
  }

  v13 = objc_opt_self();
  if ([v13 isVision])
  {
    v14 = 0.9;
  }

  else
  {
    v14 = 0.8;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750, &unk_1E429DD30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E42A1E20;
  v17 = objc_opt_self();
  v18 = [v17 clearColor];
  v19 = [v18 CGColor];

  *(inited + 32) = v19;
  v20 = [v17 clearColor];
  v21 = [v20 CGColor];

  *(inited + 40) = v21;
  sub_1E3280A90(0, &qword_1EE23AE20, 0x1E69DC888);
  OUTLINED_FUNCTION_2_7();
  v22 = sub_1E4206F24();
  v23 = [v22 colorWithAlphaComponent_];

  v24 = [v23 CGColor];
  *(inited + 48) = v24;
  OUTLINED_FUNCTION_0_128();
  v25 = sub_1E4206F24();
  v26 = [v25 CGColor];

  *(inited + 56) = v26;
  if (!*(v408 + OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView_titleView))
  {
    v29 = sub_1E3A8FD60();
    v393 = [v29 &selRef_makeAdditionalPlayerTabsRequest];

    v409.origin.x = OUTLINED_FUNCTION_68_12();
    if (CGRectGetWidth(v409) == 0.0 || (v410.origin.x = OUTLINED_FUNCTION_68_12(), CGRectGetHeight(v410) == 0.0))
    {

      v30 = OUTLINED_FUNCTION_52_21();
      [v31 v32];
      if (*&v397[v408])
      {
        v33 = OUTLINED_FUNCTION_52_21();
        [v34 v35];
      }

      v36 = sub_1E3A8FCE0();
      v37 = v407;
      if (v36)
      {
        v38 = v36;
        v39 = OUTLINED_FUNCTION_52_21();
        [v40 v41];
      }

LABEL_16:
      v42 = v393;
LABEL_50:

      goto LABEL_51;
    }

    sub_1E3A967C0(v408);
    if ((*((*MEMORY[0x1E69E7D40] & *v408) + 0x178))())
    {
      OUTLINED_FUNCTION_26_0();
      v158 = (*(v157 + 1560))();
    }

    else
    {
      v158 = sub_1E3A2532C();
    }

    if ([v13 isVision] & 1) != 0 || (objc_msgSend(v13, sel_isTV))
    {
      v169 = 0;
    }

    else
    {
      v169 = sub_1E3A2511C(v158) ^ 1;
    }

    v172 = v408;
    if (TVAppFeature.isEnabled.getter(17, v167, v168) & 1) != 0 && (v172 = v408, ((*((*MEMORY[0x1E69E7D40] & *v408) + 0x1A8))() & 1) == 0) || ((TVAppFeature.isEnabled.getter(10, v170, v171) | v169))
    {

      v173 = *(v172 + OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView_nonPlaybackGradientView);
      if (v173)
      {
        v400 = [v173 &selRef_makeAdditionalPlayerTabsRequest];
      }

      else
      {
        v400 = 0;
      }

      v207 = a1;
      v208 = sub_1E3A8FD60();
      v209 = [v208 &selRef_makeAdditionalPlayerTabsRequest];

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750, &unk_1E429DD30);
      v210 = swift_initStackObject();
      OUTLINED_FUNCTION_35_31(v210, v211, v212, v213, v214, v215, v216, v217, v218, v390, v393, v400, *&a1, v219);
      v220 = objc_opt_self();
      v221 = [v220 clearColor];
      v222 = [v221 CGColor];

      v210[2].n128_u64[0] = v222;
      v223 = v209;
      v224 = [v220 clearColor];
      v225 = [v224 CGColor];

      v210[2].n128_u64[1] = v225;
      OUTLINED_FUNCTION_0_128();
      v226 = sub_1E4206F24();
      v227 = [v226 colorWithAlphaComponent_];

      v228 = [v227 CGColor];
      v210[3].n128_u64[0] = v228;
      OUTLINED_FUNCTION_0_128();
      v229 = sub_1E4206F24();
      v230 = [v229 CGColor];

      v210[3].n128_u64[1] = v230;
      v231 = sub_1E38E2988(v210);
      sub_1E38E2BE0(v231, v209);
      v232 = OUTLINED_FUNCTION_42_35();
      OUTLINED_FUNCTION_35_31(v232, v233, v234, v235, v236, v237, v238, v239, v240, v391, v396, v402, v405, v241);
      v232[2].n128_u64[0] = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
      OUTLINED_FUNCTION_17_63(-72.0);
      v242 = objc_allocWithZone(MEMORY[0x1E696AD98]);
      v232[2].n128_u64[1] = OUTLINED_FUNCTION_77_9(v242, v243);
      v244 = objc_allocWithZone(MEMORY[0x1E696AD98]);
      v232[3].n128_u64[0] = OUTLINED_FUNCTION_77_9(v244, v245);
      v246 = (a5 + a7) / v207;
      v247 = objc_allocWithZone(MEMORY[0x1E696AD98]);
      *&v248 = v246;
      v232[3].n128_u64[1] = [v247 initWithFloat_];
      sub_1E38E2B5C(v232, v209);
      if ((TVAppFeature.isEnabled.getter(10, v249, v250) & 1) == 0)
      {
        v277 = TVAppFeature.isEnabled.getter(17, v251, v252);
        v278 = (*((*MEMORY[0x1E69E7D40] & *v172) + 0x190))();
        v256 = v278;
        if (v277)
        {
          v279 = v403;
          if (v278)
          {
            swift_setDeallocating();
            sub_1E377D458();
            v280 = OUTLINED_FUNCTION_24_38();
            v281 = [v280 CGColor];

            v282 = OUTLINED_FUNCTION_24_38();
            v283 = OUTLINED_FUNCTION_45_28(v282);

            v286 = TVAppFeature.isEnabled.getter(10, v284, v285);
            v287 = 0.53;
            if ((v286 & 1) == 0)
            {
              v287 = 0.8;
            }

            v288 = OUTLINED_FUNCTION_45_28([v256 colorWithAlphaComponent_]);

            v289 = OUTLINED_FUNCTION_59_11();
            v290 = OUTLINED_FUNCTION_45_28(v289);

            if (v403)
            {
              v291 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31B50, &qword_1E429B030);
              v292 = OUTLINED_FUNCTION_63_14(v291);
              *(v292 + 16) = xmmword_1E4298AD0;
              type metadata accessor for CGColor();
              *(v292 + 32) = v281;
              *(v292 + 56) = v293;
              *(v292 + 64) = v283;
              *(v292 + 88) = v293;
              *(v292 + 96) = v288;
              *(v292 + 152) = v293;
              *(v292 + 120) = v293;
              *(v292 + 128) = v290;
              v294 = v403;
              sub_1E38E2BE0(v292, v294);
            }

            else
            {
            }
          }

          else if (v403)
          {
            v338 = v403;
            v339 = sub_1E38E2988(v210);
            swift_setDeallocating();
            sub_1E377D458();
            sub_1E38E2BE0(v339, v338);
          }

          else
          {
            swift_setDeallocating();
            sub_1E377D458();
          }

          v365 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
          OUTLINED_FUNCTION_17_63(-20.0);
          v366 = objc_allocWithZone(MEMORY[0x1E696AD98]);
          *&v367 = a5 / v207;
          v368 = [v366 initWithFloat_];
          OUTLINED_FUNCTION_17_63(30.0);
          v369 = objc_allocWithZone(MEMORY[0x1E696AD98]);
          *&v370 = a5 / v207;
          v371 = [v369 initWithFloat_];
          v372 = objc_allocWithZone(MEMORY[0x1E696AD98]);
          *&v373 = v246;
          v374 = [v372 initWithFloat_];
          if (v403)
          {
            v375 = OUTLINED_FUNCTION_42_35();
            OUTLINED_FUNCTION_35_31(v375, v376, v377, v378, v379, v380, v381, v382, v383, v392, v393, v403, v406, v384);
            v385[4] = v365;
            v385[5] = v368;
            v385[6] = v371;
            v385[7] = v374;
            sub_1E38E2B5C(v385, v279);

            v223 = v279;
          }

          else
          {
          }

          goto LABEL_112;
        }

        if (v278)
        {
          swift_setDeallocating();
          sub_1E377D458();
          if (!v403)
          {
            goto LABEL_86;
          }

          v319 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31B50, &qword_1E429B030);
          v320 = OUTLINED_FUNCTION_63_14(v319);
          *(v320 + 16) = xmmword_1E4298AD0;
          v321 = v403;
          v322 = OUTLINED_FUNCTION_24_38();
          v323 = OUTLINED_FUNCTION_60_13(v322);

          type metadata accessor for CGColor();
          v325 = OUTLINED_FUNCTION_22_43(v324);
          v326 = OUTLINED_FUNCTION_45_28(v325);

          OUTLINED_FUNCTION_49_24();
          v328 = OUTLINED_FUNCTION_45_28([v256 v327]);

          *(v320 + 120) = v209;
          *(v320 + 96) = v328;
          v329 = [v256 &selRef_setHapticsEnabled_];
          *(v320 + 152) = v209;
          *(v320 + 128) = v329;
          v330 = OUTLINED_FUNCTION_16_0();
          sub_1E38E2BE0(v330, v331);
        }

        else
        {
          if (!v403)
          {
            swift_setDeallocating();
            sub_1E377D458();
            goto LABEL_112;
          }

          v256 = v403;
          v340 = sub_1E38E2988(v210);
          swift_setDeallocating();
          sub_1E377D458();
          sub_1E38E2BE0(v340, v256);
          v321 = v256;
        }

        v341 = OUTLINED_FUNCTION_42_35();
        OUTLINED_FUNCTION_35_31(v341, v342, v343, v344, v345, v346, v347, v348, v349, v392, v393, v403, v406, v350);
        v351 = objc_allocWithZone(MEMORY[0x1E696AD98]);
        v352 = v321;
        v341[2].n128_u64[0] = [v351 initWithDouble_];
        OUTLINED_FUNCTION_17_63(-20.0);
        v353 = objc_allocWithZone(MEMORY[0x1E696AD98]);
        *&v354 = a5 / v207;
        v341[2].n128_u64[1] = [v353 initWithFloat_];
        OUTLINED_FUNCTION_17_63(30.0);
        v355 = objc_allocWithZone(MEMORY[0x1E696AD98]);
        *&v356 = a5 / v207;
        v341[3].n128_u64[0] = [v355 initWithFloat_];
        v357 = objc_allocWithZone(MEMORY[0x1E696AD98]);
        *&v358 = v246;
        v341[3].n128_u64[1] = [v357 initWithFloat_];
        v359 = OUTLINED_FUNCTION_16_0();
        sub_1E38E2B5C(v359, v360);

        goto LABEL_112;
      }

      swift_setDeallocating();
      v253 = sub_1E377D458();
      v254 = MEMORY[0x1E69E7D40];
      v255 = (*((*MEMORY[0x1E69E7D40] & *v172) + 0x190))(v253);
      if (!v255)
      {
        v255 = [v220 blackColor];
      }

      v256 = v255;
      OUTLINED_FUNCTION_0_59();
      if ((*(v257 + 424))())
      {
        if (v403)
        {
          [v403 setStartPoint_];
          v258 = OUTLINED_FUNCTION_67_13();
          [v403 v259];
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31B50, &qword_1E429B030);
          v260 = swift_allocObject();
          *(v260 + 16) = xmmword_1E429A240;
          v261 = v403;
          v262 = OUTLINED_FUNCTION_24_38();
          v263 = OUTLINED_FUNCTION_60_13(v262);

          type metadata accessor for CGColor();
          v265 = OUTLINED_FUNCTION_22_43(v264);
          v266 = OUTLINED_FUNCTION_45_28(v265);

          OUTLINED_FUNCTION_49_24();
          v268 = OUTLINED_FUNCTION_45_28([v256 v267]);

          *(v260 + 120) = v209;
          *(v260 + 96) = v268;
          v269 = OUTLINED_FUNCTION_45_28([v256 colorWithAlphaComponent_]);

          *(v260 + 152) = v209;
          *(v260 + 128) = v269;
          v270 = OUTLINED_FUNCTION_59_11();
          v271 = OUTLINED_FUNCTION_45_28(v270);

          *(v260 + 184) = v209;
          *(v260 + 160) = v271;
          v272 = OUTLINED_FUNCTION_16_0();
          sub_1E38E2BE0(v272, v273);

          v274 = swift_allocObject();
          *(v274 + 16) = xmmword_1E42A76D0;
          sub_1E3280A90(0, &qword_1EE23ADD0, 0x1E696AD98);
          v275 = v261;
          *(v274 + 32) = sub_1E4206F44();
          *(v274 + 40) = sub_1E4206F34();
          *(v274 + 48) = sub_1E4206F34();
          *(v274 + 56) = sub_1E4206F34();
          *(v274 + 64) = sub_1E4206F44();
          v276 = v274;
LABEL_85:
          sub_1E38E2B5C(v276, v275);
        }
      }

      else if (v403)
      {
        v295 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31B50, &qword_1E429B030);
        v296 = OUTLINED_FUNCTION_63_14(v295);
        *(v296 + 16) = xmmword_1E4298AD0;
        v297 = v403;
        v298 = OUTLINED_FUNCTION_24_38();
        v299 = OUTLINED_FUNCTION_60_13(v298);

        type metadata accessor for CGColor();
        v301 = OUTLINED_FUNCTION_22_43(v300);
        v302 = OUTLINED_FUNCTION_45_28(v301);

        OUTLINED_FUNCTION_49_24();
        v304 = OUTLINED_FUNCTION_45_28([v256 v303]);

        *(v296 + 120) = v209;
        *(v296 + 96) = v304;
        v305 = OUTLINED_FUNCTION_59_11();
        v306 = OUTLINED_FUNCTION_45_28(v305);

        *(v296 + 152) = v209;
        *(v296 + 128) = v306;
        v307 = OUTLINED_FUNCTION_16_0();
        sub_1E38E2BE0(v307, v308);

        v309 = OUTLINED_FUNCTION_42_35();
        OUTLINED_FUNCTION_35_31(v309, v310, v311, v312, v313, v314, v315, v316, v317, v392, v393, v403, v406, v318);
        sub_1E3280A90(0, &qword_1EE23ADD0, 0x1E696AD98);
        v275 = v297;
        v309[2].n128_u64[0] = sub_1E4206F44();
        v309[2].n128_u64[1] = sub_1E4206F34();
        v309[3].n128_u64[0] = sub_1E4206F34();
        v309[3].n128_u64[1] = sub_1E4206F44();
        v276 = v309;
        goto LABEL_85;
      }

LABEL_86:

LABEL_112:
      v37 = v407;
LABEL_113:
      if (TVAppFeature.isEnabled.getter(10, v361, v362))
      {
        OUTLINED_FUNCTION_12_5();
        v387 = (*(v386 + 928))();
        sub_1E3A959F0((v387 & 1));
      }

      goto LABEL_16;
    }

    v174 = sub_1E38E2988(inited);
    v175 = v393;
    sub_1E38E2BE0(v174, v393);
    v176 = a5;
    v177 = swift_allocObject();
    OUTLINED_FUNCTION_35_31(v177, v178, v179, v180, v181, v182, v183, v184, v185, v390, v393, v17, *&a1, v186);
    v177[2].n128_u64[0] = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
    v187 = OUTLINED_FUNCTION_73_7();
    v177[2].n128_u64[1] = OUTLINED_FUNCTION_77_9(v187, v188);
    v189 = objc_allocWithZone(MEMORY[0x1E696AD98]);
    v177[3].n128_u64[0] = OUTLINED_FUNCTION_77_9(v189, v190);
    v191 = 1.0;
    v177[3].n128_u64[1] = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
    sub_1E38E2B5C(v177, v175);
    [v175 setContents_];
    v192 = &selRef_textLayout;
    v193 = [v172 vuiIsRTL];
    if (v193)
    {
      v194 = 0.0;
    }

    else
    {
      v194 = 1.0;
    }

    if (!v193)
    {
      v191 = 0.0;
    }

    [v175 setStartPoint_];
    v195 = [v175 setEndPoint_];
    v196 = (*((*MEMORY[0x1E69E7D40] & *v172) + 0x190))(v195);
    if (v196)
    {
      v197 = v196;
      swift_setDeallocating();
      sub_1E377D458();
      v37 = v407;
      if (v407)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31B50, &qword_1E429B030);
        v198 = swift_allocObject();
        *(v198 + 16) = xmmword_1E4297BD0;
        v199 = v407;
        v200 = [v401 clearColor];
        v201 = [v200 CGColor];

        type metadata accessor for CGColor();
        v203 = v202;
        *(v198 + 56) = v202;
        *(v198 + 32) = v201;
        v204 = [v197 colorWithAlphaComponent_];
        v205 = [v204 CGColor];

        v37 = v407;
        *(v198 + 88) = v203;
        *(v198 + 64) = v205;
        v206 = [v197 CGColor];
        *(v198 + 120) = v203;
        *(v198 + 96) = v206;
        sub_1E38E2BE0(v198, v199);

LABEL_92:
        v333 = swift_allocObject();
        *(v333 + 16) = xmmword_1E42A73A0;
        v334 = objc_allocWithZone(MEMORY[0x1E696AD98]);
        v335 = v199;
        *(v333 + 32) = [v334 initWithDouble_];
        v336 = objc_allocWithZone(MEMORY[0x1E696AD98]);
        *&v337 = v176 / -1.5882e-23;
        *(v333 + 40) = [v336 initWithFloat_];
        *(v333 + 48) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
        sub_1E38E2B5C(v333, v335);

        [v335 setContents_];
        v192 = &selRef_textLayout;
        goto LABEL_100;
      }
    }

    else
    {
      v37 = v407;
      if (v407)
      {
        v197 = v407;
        v332 = sub_1E38E2988(inited);
        swift_setDeallocating();
        sub_1E377D458();
        sub_1E38E2BE0(v332, v197);
        v199 = v197;
        goto LABEL_92;
      }

      swift_setDeallocating();
      sub_1E377D458();
    }

LABEL_100:
    if ([v408 v192[416]])
    {
      if (v37)
      {
        v363 = OUTLINED_FUNCTION_1_36();
        [v37 v364];
        [v37 setEndPoint_];
      }
    }

    else if (v37)
    {
      [v37 setStartPoint_];
      [v37 setEndPoint_];
    }

    goto LABEL_113;
  }

  swift_setDeallocating();
  sub_1E377D458();
  v27 = *(v408 + OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView_nonPlaybackGradientView);
  if (v27)
  {
    v28 = [v27 &selRef_makeAdditionalPlayerTabsRequest];
  }

  else
  {
    v28 = 0;
  }

  v43 = a2;
  v44 = a3 + a3;
  v45 = v43 - v44;
  v46 = sub_1E3A8FD60();
  v47 = [v46 &selRef_makeAdditionalPlayerTabsRequest];

  if (v28)
  {
    [v28 setContents_];
  }

  [v47 setContents_];
  v48 = v28;
  v49 = OUTLINED_FUNCTION_1_36();
  [v50 v51];
  v52 = OUTLINED_FUNCTION_67_13();
  [v48 v53];
  v398 = v48;

  v54 = OUTLINED_FUNCTION_1_36();
  [v47 v55];
  v56 = OUTLINED_FUNCTION_67_13();
  [v47 v57];
  v58 = a3;
  v59 = v43 + v58;
  v394 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31B50, &qword_1E429B030);
  v60 = OUTLINED_FUNCTION_63_14(v394);
  *(v60 + 16) = xmmword_1E4298AD0;
  v61 = objc_opt_self();
  v62 = [v61 clearColor];
  v63 = [v62 CGColor];

  type metadata accessor for CGColor();
  v65 = v64;
  *(v60 + 56) = v64;
  *(v60 + 32) = v63;
  v66 = [v61 clearColor];
  v67 = [v66 CGColor];

  *(v60 + 88) = v65;
  *(v60 + 64) = v67;
  OUTLINED_FUNCTION_0_128();
  v68 = sub_1E4206F24();
  v69 = [v68 colorWithAlphaComponent_];

  v70 = [v69 CGColor];
  *(v60 + 120) = v65;
  *(v60 + 96) = v70;
  OUTLINED_FUNCTION_0_128();
  v71 = sub_1E4206F24();
  v72 = [v71 CGColor];

  *(v60 + 152) = v65;
  *(v60 + 128) = v72;
  sub_1E38E2BE0(v60, v47);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750, &unk_1E429DD30);
  v73 = swift_allocObject();
  OUTLINED_FUNCTION_35_31(v73, v74, v75, v76, v77, v78, v79, v80, v81, v388, v394, v398, *&a1, v82);
  v73[2].n128_u64[0] = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  v83 = OUTLINED_FUNCTION_73_7();
  *&v84 = v45;
  v73[2].n128_u64[1] = [v83 initWithFloat_];
  v85 = objc_allocWithZone(MEMORY[0x1E696AD98]);
  *&v86 = v59 / -1.5882e-23;
  v73[3].n128_u64[0] = [v85 initWithFloat_];
  v73[3].n128_u64[1] = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  sub_1E38E2B5C(v73, v47);
  if ((TVAppFeature.isEnabled.getter(17, v87, v88) & 1) == 0)
  {
    v89 = v408;
    v90 = MEMORY[0x1E69E7D40];
    goto LABEL_24;
  }

  v89 = v408;
  v90 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_21();
  if (((*(v91 + 424))() & 1) == 0)
  {
    OUTLINED_FUNCTION_0_59();
    v125 = (*(v124 + 400))();
    if (v125)
    {
      v133 = v125;
      v134 = [v61 clearColor];
      v135 = [v134 CGColor];

      v136 = [v133 colorWithAlphaComponent_];
      v137 = [v136 CGColor];

      v138 = [v133 CGColor];
      v146 = v138;
      if (v28)
      {
        v147 = OUTLINED_FUNCTION_41_28(v138, v139, v140, v141, v142, v143, v144, v145, v389, v395);
        *(v147 + 16) = xmmword_1E4297BD0;
        *(v147 + 32) = v135;
        *(v147 + 56) = v65;
        *(v147 + 64) = v137;
        *(v147 + 120) = v65;
        *(v147 + 88) = v65;
        *(v147 + 96) = v146;
        v148 = v399;
        sub_1E38E2BE0(v147, v148);
      }

      else
      {

        v148 = v133;
      }
    }

    else
    {
      if (!v28)
      {
LABEL_41:
        v119 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
        v159 = objc_allocWithZone(MEMORY[0x1E696AD98]);
        *&v160 = v45;
        v100 = [v159 initWithFloat_];
        v161 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
        if (v28)
        {
          v162 = swift_allocObject();
          *(v162 + 16) = xmmword_1E42A73A0;
          *(v162 + 32) = v119;
          *(v162 + 40) = v100;
          *(v162 + 48) = v161;
          v163 = v119;
          v119 = v100;
          v100 = v161;
          v161 = v399;
          sub_1E38E2B5C(v162, v399);
        }

        else
        {
        }

        v47 = v161;
        goto LABEL_45;
      }

      v149 = OUTLINED_FUNCTION_41_28(0, v126, v127, v128, v129, v130, v131, v132, v389, v395);
      *(v149 + 16) = xmmword_1E4297BD0;
      v148 = v399;
      v150 = [v61 clearColor];
      v151 = [v150 CGColor];

      *(v149 + 56) = v65;
      *(v149 + 32) = v151;
      OUTLINED_FUNCTION_0_128();
      v152 = sub_1E4206F24();
      v153 = [v152 colorWithAlphaComponent_];

      v154 = [v153 CGColor];
      *(v149 + 88) = v65;
      *(v149 + 64) = v154;
      OUTLINED_FUNCTION_0_128();
      v155 = sub_1E4206F24();
      v156 = [v155 CGColor];

      *(v149 + 120) = v65;
      *(v149 + 96) = v156;
      sub_1E38E2BE0(v149, v148);
    }

    goto LABEL_41;
  }

LABEL_24:
  v92 = (*((*v90 & *v89) + 0x190))();
  if (v92)
  {
    v100 = v92;
    if (!v28)
    {
      v37 = v407;
LABEL_46:

      goto LABEL_47;
    }

    v101 = OUTLINED_FUNCTION_41_28(v92, v93, v94, v95, v96, v97, v98, v99, v389, v395);
    *(v101 + 16) = xmmword_1E4297BD0;
    v102 = v399;
    v103 = v399;
    v104 = [v61 clearColor];
    v105 = [v104 CGColor];

    *(v101 + 56) = v65;
    *(v101 + 32) = v105;
    v106 = [v100 colorWithAlphaComponent_];
    v107 = [v106 CGColor];

    *(v101 + 88) = v65;
    *(v101 + 64) = v107;
    v108 = [v100 CGColor];
    *(v101 + 120) = v65;
    *(v101 + 96) = v108;
    sub_1E38E2BE0(v101, v103);

    goto LABEL_29;
  }

  if (v28)
  {
    v109 = OUTLINED_FUNCTION_41_28(0, v93, v94, v95, v96, v97, v98, v99, v389, v395);
    *(v109 + 16) = xmmword_1E4297BD0;
    v100 = v399;
    v110 = [v61 clearColor];
    v111 = [v110 CGColor];

    *(v109 + 56) = v65;
    *(v109 + 32) = v111;
    OUTLINED_FUNCTION_0_128();
    v112 = sub_1E4206F24();
    v113 = [v112 colorWithAlphaComponent_];

    v114 = [v113 CGColor];
    *(v109 + 88) = v65;
    *(v109 + 64) = v114;
    OUTLINED_FUNCTION_0_128();
    v102 = v399;
    v115 = sub_1E4206F24();
    v116 = [v115 CGColor];

    *(v109 + 120) = v65;
    *(v109 + 96) = v116;
    sub_1E38E2BE0(v109, v100);
LABEL_29:

    v117 = swift_allocObject();
    *(v117 + 16) = xmmword_1E42A73A0;
    v118 = objc_allocWithZone(MEMORY[0x1E696AD98]);
    v119 = v102;
    *(v117 + 32) = [v118 initWithDouble_];
    v120 = objc_allocWithZone(MEMORY[0x1E696AD98]);
    *&v121 = v45;
    *(v117 + 40) = [v120 initWithFloat_];
    *(v117 + 48) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
    v122 = OUTLINED_FUNCTION_16_0();
    sub_1E38E2B5C(v122, v123);
    v100 = v119;
LABEL_45:
    v37 = v407;

    goto LABEL_46;
  }

  v37 = v407;
LABEL_47:

  if (TVAppFeature.isEnabled.getter(10, v164, v165))
  {
    v166 = sub_1E3A8FCE0();
    if (v166)
    {
      v42 = v166;
      [v166 setVuiAlpha_];
      goto LABEL_50;
    }
  }

LABEL_51:
}

void sub_1E3A93DDC(double a1, double a2, double a3, double a4)
{
  v5 = *(v4 + OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView_titleView);
  if (v5)
  {
    v8 = MEMORY[0x1E69E7D40];
    v9 = *((*MEMORY[0x1E69E7D40] & *v4) + 0x178);
    v10 = v5;
    if (!v9() || (OUTLINED_FUNCTION_30(), (*(v11 + 1800))(), OUTLINED_FUNCTION_30_6(), OUTLINED_FUNCTION_12_6(), (*(v12 + 152))(v18), v13 = *v18, v14 = *&v18[1], v15 = *&v18[2], v16 = *&v18[3], , (v19 & 1) != 0))
    {
      v13 = *MEMORY[0x1E69DDCE0];
      v14 = *(MEMORY[0x1E69DDCE0] + 8);
      v15 = *(MEMORY[0x1E69DDCE0] + 16);
      v16 = *(MEMORY[0x1E69DDCE0] + 24);
    }

    v17 = [v10 vui:1 layoutSubviews:a3 - sub_1E3952BE0(v13 computationOnly:{v14, v15, v16), a4}];
    if (((*((*v8 & *v4) + 0x3D0))(v17) & 1) == 0)
    {
      [v10 bottomMarginWithBaselineMargin_];
    }
  }
}

void sub_1E3A93FDC(uint64_t a1, void *a2, uint64_t a3, double a4, double a5)
{
  v10 = sub_1E373E010(99, a1, a3);
  if (sub_1E373E010(40, a1, v11))
  {
    type metadata accessor for ImageViewModel();
    v184 = swift_dynamicCastClass();
    if (v184)
    {
      goto LABEL_5;
    }
  }

  v184 = 0;
LABEL_5:
  v182 = sub_1E373E010(97, a1, v12);
  if (sub_1E373E010(33, a1, v13))
  {
    type metadata accessor for ImageViewModel();
    v183 = swift_dynamicCastClass();
    if (v183)
    {
      goto LABEL_9;
    }
  }

  v183 = 0;
LABEL_9:
  v15 = sub_1E373E010(23, a1, v14);
  v180 = a3;
  if (v15)
  {
    if (*v15 == _TtC8VideosUI13TextViewModel)
    {
      v179 = v15;
      goto LABEL_14;
    }
  }

  v179 = 0;
LABEL_14:
  v16 = 1 << *(a1 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & *(a1 + 64);
  v19 = (v16 + 63) >> 6;

  v20 = 0;
  if (v18)
  {
    while (1)
    {
      v21 = v20;
LABEL_21:
      v22 = *(*(a1 + 56) + ((v21 << 9) | (8 * __clz(__rbit64(v18)))));
      v23 = v22[49];

      if (sub_1E38116BC(v23))
      {
        break;
      }

      v18 &= v18 - 1;
      v20 = v21;
      if (!v18)
      {
        goto LABEL_18;
      }
    }

LABEL_25:
    if (v184 | v10 | v183 | v182 | v179)
    {
      v174 = v10;
      if (a2)
      {
        _s19FlowcaseOverlayViewCMa();
        v24 = swift_dynamicCastClass();
        if (v24)
        {
          v25 = a2;
        }
      }

      else
      {
        v24 = 0;
      }

      v189[0] = v24;
      v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF31AA0, &qword_1E42B6DA8);
      sub_1E4148C68(sub_1E3A95758, v26, v192);

      v27 = v192[0];
      if (v180)
      {
        (*(*v180 + 1776))();
      }

      v28 = MEMORY[0x1E69E7D40];
      OUTLINED_FUNCTION_15_57();
      (*(v29 + 432))(v30 & 1);
      OUTLINED_FUNCTION_43_25();
      (*((*v28 & v31) + 0x198))(0);
      v34 = TVAppFeature.isEnabled.getter(10, v32, v33);
      v172 = a1;
      if (v180 && (v34 & 1) != 0)
      {
        (*(*v180 + 1968))(0);
      }

      OUTLINED_FUNCTION_15_57();
      (*(v35 + 984))(v36 & 1);
      sub_1E3DF9E68(v201);
      v37 = v201[0];
      v38 = v201[1];
      v39 = v202;
      v199 = v202;
      v196 = v203;
      v197 = v204;
      v198 = v205;
      v195[0] = *v206;
      *(v195 + 6) = *&v206[6];
      v40 = v207;
      v41 = type metadata accessor for UIFactory();
      OUTLINED_FUNCTION_43_25();
      v43 = (*((*v28 & v42) + 0x370))();
      __src[0] = v37;
      __src[1] = v38;
      LOBYTE(__src[2]) = v39;
      *(&__src[2] + 1) = v203;
      *(&__src[4] + 1) = v204;
      *(&__src[6] + 1) = v205;
      BYTE1(__src[8]) = 1;
      *(&__src[8] + 2) = *v206;
      __src[9] = *&v206[6];
      LOBYTE(__src[10]) = 1;
      v177 = v40;
      BYTE1(__src[10]) = v40;
      v189[3] = &unk_1F5D869A0;
      v189[4] = &off_1F5D868A0;
      OUTLINED_FUNCTION_29_7();
      v189[0] = swift_allocObject();
      memcpy((v189[0] + 16), __src, 0x52uLL);
      sub_1E37CCDA0(__src, v192);
      v44 = type metadata accessor for ChannelLogoView();
      v176 = v41;
      v45 = sub_1E393D92C(v174, v43, v189, 0, v44);

      sub_1E325F7A8(v189, &qword_1ECF296C0, &unk_1E429BBE0);
      OUTLINED_FUNCTION_43_25();
      (*((*MEMORY[0x1E69E7D40] & v46) + 0x378))(v45);
      if (!v184 || (OUTLINED_FUNCTION_12_6(), v48 = *(v47 + 392), v49 = , v48(v49), OUTLINED_FUNCTION_31_4(), , OUTLINED_FUNCTION_8(), v52 = (*(v50 + 504))(v51), , v52 == 18))
      {
        v52 = 15;
      }

      v53 = MEMORY[0x1E69E7D40];
      OUTLINED_FUNCTION_15_57();
      (*(v54 + 864))(v52);
      OUTLINED_FUNCTION_43_25();
      v56 = *((*v53 & v55) + 0x340);

      v58 = v56(v57);
      *(&v194[2] + 1) = v196;
      v194[0] = v37;
      v194[1] = v38;
      LOBYTE(v194[2]) = v199;
      *(&v194[4] + 1) = v197;
      *(&v194[6] + 1) = v198;
      BYTE1(v194[8]) = 1;
      *(&v194[8] + 2) = v195[0];
      v194[9] = *(v195 + 6);
      LOBYTE(v194[10]) = 1;
      BYTE1(v194[10]) = v40;
      v189[3] = &unk_1F5D869A0;
      v189[4] = &off_1F5D868A0;
      OUTLINED_FUNCTION_29_7();
      v189[0] = swift_allocObject();
      memcpy((v189[0] + 16), v194, 0x52uLL);
      sub_1E37CCDA0(v194, v192);
      sub_1E3280A90(0, &qword_1EE23AE80, 0x1E69DD250);
      v59 = OUTLINED_FUNCTION_69_12();
      v173 = v60;
      sub_1E393D92C(v59, v61, v62, v63, v60);
      OUTLINED_FUNCTION_31_4();

      sub_1E325F7A8(v189, &qword_1ECF296C0, &unk_1E429BBE0);
      OUTLINED_FUNCTION_43_25();
      (*((*v53 & v64) + 0x348))(v176);
      if (v180)
      {
        OUTLINED_FUNCTION_8();
        v67 = COERCE_DOUBLE((*(v65 + 1272))(v66));
        if ((v68 & 1) == 0)
        {
          a4 = v67 + a4;
          a5 = v67 + a5;
        }
      }

      v199 = 0;
      v69 = MEMORY[0x1E69E7D40];
      OUTLINED_FUNCTION_15_57();
      v71 = *(v70 + 904);

      v73 = v71(v72);
      *(&v193[2] + 1) = v196;
      *v193 = a4;
      *&v193[1] = a5;
      LOBYTE(v193[2]) = v199;
      *(&v193[4] + 1) = v197;
      *(&v193[6] + 1) = v198;
      BYTE1(v193[8]) = 0;
      *(&v193[8] + 2) = v195[0];
      v193[9] = *(v195 + 6);
      LOBYTE(v193[10]) = 1;
      BYTE1(v193[10]) = v177;
      v189[3] = &unk_1F5D869A0;
      v189[4] = &off_1F5D868A0;
      OUTLINED_FUNCTION_29_7();
      v189[0] = swift_allocObject();
      memcpy((v189[0] + 16), v193, 0x52uLL);
      sub_1E37CCDA0(v193, v192);
      v74 = OUTLINED_FUNCTION_69_12();
      sub_1E393D92C(v74, v75, v76, v77, v173);
      OUTLINED_FUNCTION_31_4();

      sub_1E325F7A8(v189, &qword_1ECF296C0, &unk_1E429BBE0);
      OUTLINED_FUNCTION_43_25();
      (*((*v69 & v78) + 0x390))(v176);
      v79 = *&v27[OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView_titleView];
      memset(v192, 0, 40);
      v80 = sub_1E3280A90(0, &qword_1EE23AD40, off_1E87283A8);
      v81 = v27;
      v82 = v79;

      v84 = sub_1E393D92C(v83, v79, v192, 0, v80);

      sub_1E325F7A8(v192, &qword_1ECF296C0, &unk_1E429BBE0);
      sub_1E3A8E32C(v84);

      if (v180)
      {
        OUTLINED_FUNCTION_8();
        v87 = (*(v85 + 1776))(v86);
      }

      else
      {
        v87 = 0;
      }

      memset(v208, 0, sizeof(v208));
      v209 = 0;
      v210 = 1;
      v211 = 0;
      sub_1E3DA4E68(v192, v208, v87 & 1);
      *(&v190[2] + 1) = v196;
      *v190 = a4;
      *&v190[1] = a5;
      LOBYTE(v190[2]) = v199;
      *(&v190[4] + 1) = v197;
      *(&v190[6] + 1) = v198;
      BYTE1(v190[8]) = 1;
      *(&v190[8] + 2) = v195[0];
      v190[9] = *(v195 + 6);
      LOBYTE(v190[10]) = 1;
      BYTE1(v190[10]) = v177;
      memcpy(__dst, v192, 0x52uLL);
      memcpy(v192, v190, 0x52uLL);
      sub_1E37CCDA0(v190, v189);
      v88 = sub_1E325F7A8(__dst, &unk_1ECF31AB0, qword_1E42CD4C0);
      v89 = MEMORY[0x1E69E7D40];
      v90 = *((*MEMORY[0x1E69E7D40] & *v81) + 0x328);
      v91 = v90(v88);
      v175 = v91;
      if (v91)
      {
        sub_1E3DA7214();
      }

      memcpy(v189, v192, 0x53uLL);
      v187 = &type metadata for VerticalStackViewContext;
      v188 = &off_1F5D85060;
      v186[0] = swift_allocObject();
      memcpy((v186[0] + 16), v192, 0x53uLL);
      sub_1E3A957CC(v189, v185);
      v92 = type metadata accessor for VerticalStackView();
      v93 = sub_1E393D92C(v182, v91, v186, 0, v92);
      sub_1E325F7A8(v186, &qword_1ECF296C0, &unk_1E429BBE0);
      v94 = (*((*v89 & *v81) + 0x330))(v93);
      v95 = v90(v94);
      if (v95)
      {
        v96 = v95;
        [v95 setVuiUserInteractionEnabled_];
      }

      OUTLINED_FUNCTION_13_81();
      if ((*(v97 + 376))())
      {
        OUTLINED_FUNCTION_30();
        (*(v98 + 1920))();
      }

      type metadata accessor for TextBadgePresenter(0);

      sub_1E3789F30(v99);
      nullsub_1();
      if (TVAppFeature.isEnabled.getter(10, v100, v101))
      {
        *v185 = a4;
        *&v185[1] = a5;
        LOBYTE(v185[2]) = v199;
        *(&v185[2] + 1) = v196;
        *(&v185[4] + 1) = v197;
        *(&v185[6] + 1) = v198;
        BYTE1(v185[8]) = 0;
        *(&v185[8] + 2) = v195[0];
        v185[9] = *(v195 + 6);
        LOBYTE(v185[10]) = 1;
        BYTE1(v185[10]) = v177;
        sub_1E37CCDFC(v185);

        v103 = &off_1F5D588D0;
        v104 = &type metadata for BadgeViewContext;
      }

      else
      {
        v105 = v199;
        OUTLINED_FUNCTION_29_7();
        v102 = swift_allocObject();
        *(v102 + 16) = a4;
        *(v102 + 24) = a5;
        *(v102 + 32) = v105;
        v106 = v197;
        *(v102 + 33) = v196;
        *(v102 + 49) = v106;
        *(v102 + 65) = v198;
        *(v102 + 81) = 0;
        *(v102 + 82) = v195[0];
        *(v102 + 88) = *(v195 + 6);
        *(v102 + 96) = 1;
        *(v102 + 97) = v177;
        v103 = &off_1F5D868A0;
        v104 = &unk_1F5D869A0;
      }

      v187 = v104;
      v188 = v103;
      v186[0] = v102;
      v107 = (*((*v89 & *v81) + 0x1F0))();
      v108 = sub_1E393D92C(v22, v107, v186, 0, v173);

      if (v22 && (LOWORD(v185[0]) = v22[49], LOWORD(v212) = 36, sub_1E3741534(v109, v110, v111), (sub_1E4205E84() & 1) != 0))
      {
        if (v108)
        {
          objc_opt_self();
          v112 = swift_dynamicCastObjCClass();
          if (v112)
          {
            v113 = v112;
            type metadata accessor for FixedSizeBadgeView();
            v178 = v108;
            v114 = sub_1E40C1E8C(v113);
            v115 = *(*v22 + 392);

            v117 = v115(v116);

            if (v117)
            {
              type metadata accessor for ImageLayout();
              if (swift_dynamicCastClass())
              {
                OUTLINED_FUNCTION_26_0();
                v119 = (*(v118 + 2288))();
                (*((*MEMORY[0x1E69E7D40] & *v114) + 0x68))(*&v119, v120, 0);
              }
            }

            v121 = MEMORY[0x1E69E7D40];
            OUTLINED_FUNCTION_15_57();
            v123 = *(v122 + 504);
            v124 = v114;
            v123(v114);

            v89 = v121;
          }
        }
      }

      else
      {
        OUTLINED_FUNCTION_13_81();
        v126 = *(v125 + 504);
        v127 = v108;
        v126(v108);
      }

      OUTLINED_FUNCTION_13_81();
      v129 = *(v128 + 384);

      v129(v130);
      v132 = sub_1E373E010(234, v172, v131);
      if (v132)
      {
        v135 = v132;
        if (TVAppFeature.isEnabled.getter(10, v133, v134))
        {
          type metadata accessor for SportsCanonicalBannerScoreboardViewModel(0);
          v136 = swift_dynamicCastClass();
          if (v136)
          {
            v137 = v136;
            OUTLINED_FUNCTION_15_57();
            v139 = *(v138 + 376);

            v140 = v81;
            v141 = v139();
            if (v141)
            {
              v181 = v108;
              v142 = *(v141 + 176);

              sub_1E392B18C(0, v143);
              type metadata accessor for FlowcaseScoreboardViewCoordinator(0);
              v144 = swift_allocObject();
              *(v144 + 16) = 0;
              *(v144 + 24) = 1;
              sub_1E41FE924();
              *&v140[OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView_scoreboardCoodinator] = v144;

              v145 = *&v140[OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView_bannerScorecardView];
              v185[0] = v137;
              v185[1] = v142;
              v185[2] = v144;
              if (v145)
              {

                v146 = v145;
                sub_1E4201234();
              }

              else
              {
                v165 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF31B58, &qword_1E42B6F10));

                v166 = sub_1E4201214();
                v167 = v166;
                sub_1E3A8E6B8(v166);
              }

              v108 = v181;
            }

            else
            {
            }
          }

          v168 = *&v81[OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView_bannerScorecardView];
          if (v168)
          {
            v169 = v168;
            [v169 setVuiAlpha_];
          }
        }

        else
        {
          v149 = objc_opt_self();
          v150 = v81;
          if ([v149 isMac])
          {
            v151 = 2;
          }

          else
          {
            v151 = 0;
          }

          LOBYTE(v212) = 1;
          (*(*v135 + 776))(v185, &v212, &unk_1F5D5D528, &off_1F5D5C858);
          if (v185[3])
          {
            if (swift_dynamicCast())
            {
              v152 = sub_1E3AA9D30();
              if (v152 != 3)
              {
                v151 = v152;
              }
            }
          }

          else
          {
            sub_1E325F7A8(v185, &unk_1ECF296E0, &unk_1E4298030);
          }

          OUTLINED_FUNCTION_15_57();
          if ((*(v153 + 376))())
          {
            sub_1E3AA9CE0(v151);
            OUTLINED_FUNCTION_8();
            (*(v154 + 1952))();
          }

          OUTLINED_FUNCTION_26();
          if ((*(v155 + 600))() || (OUTLINED_FUNCTION_26(), (*(v156 + 552))()))
          {
            OUTLINED_FUNCTION_15_57();
            if (!(*(v157 + 520))())
            {
              [objc_allocWithZone(VUIScorecardView) init];
            }

            OUTLINED_FUNCTION_15_57();
            (*(v158 + 528))();
            sub_1E388CEA0();
            sub_1E3280A90(0, &qword_1EE23AF68, off_1E87285B8);
            v159 = OUTLINED_FUNCTION_31_4();
            v160 = sub_1E3744600(v159);

            v161 = sub_1E37766C4(v160);
            v162 = sub_1E388D0C8(v161);

            if (v162)
            {
              v163 = OUTLINED_FUNCTION_1_36();
              sub_1E388C300(1, v163, v164);
            }
          }

          else
          {
            v170 = MEMORY[0x1E69E7D40];
            OUTLINED_FUNCTION_15_57();
            (*(v171 + 576))();
            (*((*v170 & *v150) + 0x210))(0);
          }
        }
      }

      else
      {
        OUTLINED_FUNCTION_13_81();
        (*(v147 + 576))();
        (*((*v89 & *v81) + 0x210))(0);
        v148 = *&v81[OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView_bannerScorecardView];
        if (v148)
        {
          [v148 setVuiAlpha_];
        }
      }

      [v81 vui_setNeedsLayout];

      sub_1E325F7A8(v186, &qword_1ECF296C0, &unk_1E429BBE0);
      memcpy(v185, v192, 0x53uLL);
      sub_1E3A95828(v185);
    }

    else
    {
    }
  }

  else
  {
LABEL_18:
    while (1)
    {
      v21 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v21 >= v19)
      {

        v22 = 0;
        goto LABEL_25;
      }

      v18 = *(a1 + 64 + 8 * v21);
      ++v20;
      if (v18)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
  }
}

id sub_1E3A95758@<X0>(void *a1@<X8>)
{
  _s19FlowcaseOverlayViewCMa();
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *a1 = result;
  return result;
}

void *sub_1E3A95794()
{
  result = *(v0 + OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView_bannerScorecardView);
  if (result)
  {
    [result vuiAlpha];
    return (v2 > 0.0);
  }

  return result;
}

void sub_1E3A9587C(void *a1, char a2)
{
  v5 = OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView_isPlayingVideo;
  swift_beginAccess();
  v2[v5] = a1;
  sub_1E3A959F0(a1);
  if (a2)
  {
    v6 = objc_opt_self();
    OUTLINED_FUNCTION_21();
    v8 = (*(v7 + 352))();
    OUTLINED_FUNCTION_4_0();
    v9 = swift_allocObject();
    *(v9 + 16) = v2;
    aBlock[4] = sub_1E3A96E44;
    aBlock[5] = v9;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1E378AEA4;
    aBlock[3] = &block_descriptor_67_0;
    v10 = _Block_copy(aBlock);
    v11 = v2;

    [v6 vui:5242880 animateWithDuration:v10 delay:0 options:v8 animations:0.0 completion:?];
    _Block_release(v10);
  }

  else
  {
    sub_1E3A967C0(v2);
  }
}

void sub_1E3A959F0(void *a1)
{
  v3 = sub_1E3A8FCE0();
  if (v3)
  {
    v4 = v3;
    v5 = [v3 layer];
  }

  else
  {
    v5 = 0;
  }

  v90 = [objc_opt_self() blackColor];
  v6 = MEMORY[0x1E69E7D40];
  v7 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x1A8))();
  if (v7)
  {
    if (!v5)
    {
      v86 = v90;
      goto LABEL_31;
    }

    [v5 setStartPoint_];
    v14 = OUTLINED_FUNCTION_67_13();
    [v5 v15];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31B50, &qword_1E429B030);
    v16 = swift_allocObject();
    v16[1] = xmmword_1E429A240;
    v17 = v5;
    v24 = OUTLINED_FUNCTION_76_6(v17, sel_colorWithAlphaComponent_, v18, v19, v20, v21, v22, v23, v87, v90);
    v25 = [v24 CGColor];

    type metadata accessor for CGColor();
    v27 = v26;
    *(v16 + 7) = v26;
    *(v16 + 4) = v25;
    v34 = OUTLINED_FUNCTION_76_6(v26, sel_colorWithAlphaComponent_, v28, v29, v30, v31, v32, v33, v88, v91);
    v35 = [v34 CGColor];

    *(v16 + 11) = v27;
    *(v16 + 8) = v35;
    v36 = *((*v6 & *v1) + 0x3B8);
    v37 = v36();
    v38 = 0.14;
    if (v37)
    {
      v38 = 0.05;
    }

    v39 = [v92 colorWithAlphaComponent_];
    v40 = [v39 CGColor];

    *(v16 + 15) = v27;
    *(v16 + 12) = v40;
    v41 = v36();
    v42 = 0.41;
    if (v41)
    {
      v42 = 0.15;
    }

    v43 = [v92 colorWithAlphaComponent_];
    v44 = [v43 CGColor];

    *(v16 + 19) = v27;
    *(v16 + 16) = v44;
    v45 = v36();
    v46 = 0.55;
    if (v45)
    {
      v46 = 0.2;
    }

    v47 = [v92 colorWithAlphaComponent_];
    v48 = [v47 CGColor];

    *(v16 + 23) = v27;
    *(v16 + 20) = v48;
    sub_1E38E2BE0(v16, v17);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750, &unk_1E429DD30);
    v49 = swift_allocObject();
    *(v49 + 16) = xmmword_1E42A76D0;
    sub_1E3280A90(0, &qword_1EE23ADD0, 0x1E696AD98);
    v50 = v17;
    OUTLINED_FUNCTION_118();
    *(v49 + 32) = sub_1E4206F44();
    *(v49 + 40) = sub_1E4206F34();
    *(v49 + 48) = sub_1E4206F34();
    *(v49 + 56) = sub_1E4206F34();
    *(v49 + 64) = sub_1E4206F44();
    sub_1E38E2B5C(v49, v16);
    v51 = v92;
    goto LABEL_25;
  }

  v52 = OUTLINED_FUNCTION_76_6(v7, sel_colorWithAlphaComponent_, v8, v9, v10, v11, v12, v13, v87, v90);
  v53 = [v52 CGColor];

  v61 = OUTLINED_FUNCTION_76_6(v54, sel_colorWithAlphaComponent_, v55, v56, v57, v58, v59, v60, v89, v93);
  v16 = [v61 CGColor];

  if ((a1 & 1) == 0)
  {
    OUTLINED_FUNCTION_21();
    v74 += 119;
    v75 = *v74;
    if ((*v74)())
    {
      v76 = 0.11;
    }

    else
    {
      v76 = 0.29;
    }

    if (v75())
    {
      v77 = 0.2;
    }

    else
    {
      v77 = 0.55;
    }

    v62 = OUTLINED_FUNCTION_64_12([v94 colorWithAlphaComponent_]);

    v78 = OUTLINED_FUNCTION_64_12([v94 colorWithAlphaComponent_]);
    if (v5)
    {
      v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31B50, &qword_1E429B030);
      v80 = OUTLINED_FUNCTION_63_14(v79);
      *(v80 + 16) = xmmword_1E4298AD0;
      type metadata accessor for CGColor();
      *(v80 + 32) = v53;
      *(v80 + 56) = v81;
      *(v80 + 64) = v16;
      *(v80 + 88) = v81;
      *(v80 + 96) = v62;
      *(v80 + 152) = v81;
      *(v80 + 120) = v81;
      *(v80 + 128) = v78;
      v67 = v53;
      v68 = v16;
      v82 = v62;
      v83 = v78;
      sub_1E38E2BE0(v80, v5);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750, &unk_1E429DD30);
      v84 = swift_allocObject();
      *(v84 + 16) = xmmword_1E42A1E20;
      sub_1E3280A90(0, &qword_1EE23ADD0, 0x1E696AD98);
      v85 = v5;
      OUTLINED_FUNCTION_118();
      *(v84 + 32) = sub_1E4206F44();
      *(v84 + 40) = sub_1E4206F34();
      *(v84 + 48) = sub_1E4206F34();
      *(v84 + 56) = sub_1E4206F44();
      sub_1E38E2B5C(v84, v16);

      goto LABEL_24;
    }

LABEL_29:
    v51 = v62;
    goto LABEL_30;
  }

  v62 = OUTLINED_FUNCTION_64_12([v94 colorWithAlphaComponent_]);

  v63 = OUTLINED_FUNCTION_64_12([v94 colorWithAlphaComponent_]);
  v64 = OUTLINED_FUNCTION_64_12([v94 colorWithAlphaComponent_]);

  if (!v5)
  {

    goto LABEL_29;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31B50, &qword_1E429B030);
  v65 = swift_allocObject();
  *(v65 + 16) = xmmword_1E429A240;
  type metadata accessor for CGColor();
  *(v65 + 32) = v53;
  *(v65 + 56) = v66;
  *(v65 + 64) = v16;
  *(v65 + 88) = v66;
  *(v65 + 96) = v62;
  *(v65 + 120) = v66;
  *(v65 + 128) = v63;
  *(v65 + 184) = v66;
  *(v65 + 152) = v66;
  *(v65 + 160) = v64;
  v67 = v53;
  v68 = v16;
  v69 = v62;
  v70 = v63;
  v71 = v64;
  sub_1E38E2BE0(v65, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750, &unk_1E429DD30);
  v72 = swift_allocObject();
  *(v72 + 16) = xmmword_1E42A76D0;
  sub_1E3280A90(0, &qword_1EE23ADD0, 0x1E696AD98);
  v73 = v5;
  OUTLINED_FUNCTION_118();
  *(v72 + 32) = sub_1E4206F44();
  *(v72 + 40) = sub_1E4206F34();
  *(v72 + 48) = sub_1E4206F34();
  *(v72 + 56) = sub_1E4206F34();
  *(v72 + 64) = sub_1E4206F44();
  sub_1E38E2B5C(v72, v16);

LABEL_24:
  v51 = v67;
LABEL_25:
  v53 = v16;
LABEL_30:

  v86 = v53;
LABEL_31:
}

id sub_1E3A9624C(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void *sub_1E3A96430()
{
  v2 = v0;
  v3 = OUTLINED_FUNCTION_118();
  v4 = type metadata accessor for TextBadge(v3);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v34[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x1F0);
  v9 = v8(v5);
  if (v9)
  {
    v10 = v9;
    objc_opt_self();
    v11 = swift_dynamicCastObjCClass();
    if (v11)
    {
      v12 = v11;
      OUTLINED_FUNCTION_12_5();
      if ((*(v13 + 376))())
      {
        OUTLINED_FUNCTION_26_0();
        v15 = (*(v14 + 1920))();

        if (v15)
        {
          OUTLINED_FUNCTION_8();
          v17 = (*(v16 + 1824))();

          v34[15] = v17;
          v34[14] = 3;
          sub_1E3831FCC(v18, v19, v20);
          if (sub_1E4205E84())
          {
            [v2 bounds];
            v22 = v21;
            v24 = v23;
            [v2 frame];
            [v12 setBackgroundImageForMaterialRendering:v1 imageSize:*sub_1E41DA684() overlayViewFrame:v22 operationQueue:{v24, v25, v26, v27, v28}];
LABEL_12:

            goto LABEL_13;
          }
        }
      }
    }
  }

  v29 = (v8)();
  if (!v29)
  {
LABEL_13:
    OUTLINED_FUNCTION_12_5();
    v32 = *(v31 + 792);
    v33 = v1;
    return v32(v1);
  }

  v10 = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF31AC0, &qword_1E42B6DB0);
  if (!swift_dynamicCastClass())
  {
    goto LABEL_12;
  }

  result = sub_1E4201224();
  if (v1)
  {
    sub_1E3FCB134(v1);

    sub_1E3A96DF0(v7, type metadata accessor for TextBadge);
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

void sub_1E3A967C0(void *a1)
{
  v2 = (*((*MEMORY[0x1E69E7D40] & *a1) + 0x3A0))();
  v5 = TVAppFeature.isEnabled.getter(10, v3, v4);
  if ((v2 & 1) == 0)
  {
    if (v5)
    {
      v9 = *(a1 + OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView_nonPlaybackGradientView);
      if (*(a1 + OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView_titleView))
      {
        if (v9)
        {
          [v9 setVuiAlpha_];
        }
      }

      else
      {
        if (v9)
        {
          OUTLINED_FUNCTION_0_59();
          v23 = *(v22 + 424);
          v25 = v24;
          v26 = v23();
          v27 = 0.0;
          if (v26)
          {
            v27 = 1.0;
          }

          [v25 setVuiAlpha_];
        }

        v28 = sub_1E3A8FCE0();
        if (v28)
        {
          v29 = v28;
          OUTLINED_FUNCTION_0_59();
          v31 = (*(v30 + 424))();
          v32 = 0.0;
          if (v31)
          {
            v32 = 1.0;
          }

          [v29 setVuiAlpha_];
        }
      }
    }

    else
    {
      v19 = *(a1 + OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView_nonPlaybackGradientView);
      if (v19)
      {
        [v19 setVuiAlpha_];
      }
    }

    goto LABEL_20;
  }

  if (v5)
  {
    v6 = sub_1E3A8FCE0();
    if (v6)
    {
      v7 = v6;
      [v6 setVuiAlpha_];
    }

    v8 = *(a1 + OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView_nonPlaybackGradientView);
    if (v8)
    {
      [v8 setVuiAlpha_];
    }

LABEL_20:
    [sub_1E3A8FCA8() setVuiAlpha_];
    OUTLINED_FUNCTION_200();

    return;
  }

  v10 = sub_1E3A8FCA8();
  [v10 setVuiAlpha_];

  v11 = sub_1E3A8FCE0();
  if (v11)
  {
    v12 = v11;
    v13 = OUTLINED_FUNCTION_52_21();
    [v14 v15];
  }

  if (*(a1 + OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView_nonPlaybackGradientView))
  {
    OUTLINED_FUNCTION_52_21();
    OUTLINED_FUNCTION_200();

    [v16 v17];
  }

  else
  {
    OUTLINED_FUNCTION_200();
  }
}

uint64_t sub_1E3A96A48()
{
  v1 = OBJC_IVAR____TtC8VideosUIP33_FBAB717E7E30D69FDDD7D1B4C16BFCA733FlowcaseScoreboardViewCoordinator___observationRegistrar;
  sub_1E41FE934();
  OUTLINED_FUNCTION_10();
  (*(v2 + 8))(v0 + v1);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v3, v4);
}

uint64_t type metadata accessor for FlowcaseScoreboardViewCoordinator(uint64_t a1)
{
  result = qword_1ECF548F8;
  if (!qword_1ECF548F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E3A96B2C(uint64_t a1)
{
  result = sub_1E41FE934();
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

uint64_t sub_1E3A96BF4@<X0>(uint64_t a2@<X8>)
{
  *a2 = sub_1E4201B84();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31B38, &qword_1E42B6F00);
  OUTLINED_FUNCTION_16_0();
  return sub_1E3A96C58(v3);
}

uint64_t sub_1E3A96C58@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for SportsCanonicalBannerScoreboardView(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v15 - v6;

  OUTLINED_FUNCTION_25();
  sub_1E385D788(v8, v9, v10, v11, v12);
  sub_1E3A96D8C(v7, v4);
  sub_1E3A96D8C(v4, a1);
  v13 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF31B40, &qword_1E42B6F08) + 48);
  *v13 = 0;
  *(v13 + 8) = 0;
  sub_1E3A96DF0(v7, type metadata accessor for SportsCanonicalBannerScoreboardView);
  return sub_1E3A96DF0(v4, type metadata accessor for SportsCanonicalBannerScoreboardView);
}

uint64_t sub_1E3A96D8C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SportsCanonicalBannerScoreboardView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E3A96DF0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_10();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_1E3A96E4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EE287220;
  if (!qword_1EE287220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE287220);
  }

  return result;
}

unint64_t sub_1E3A96EA0()
{
  result = qword_1ECF31B68;
  if (!qword_1ECF31B68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ECF31B70, &qword_1E42B6F18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF31B68);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_48_24(uint64_t result)
{
  *(v2 + v4) = result;
  *(v2 + v1[6]) = v3;
  *(v2 + v1[7]) = 0;
  *(v2 + v1[8]) = 0;
  *(v2 + v1[9]) = 0;
  return result;
}

id OUTLINED_FUNCTION_58_17(uint64_t a1, const char *a2, uint64_t a3)
{

  return [v4 a2];
}

double OUTLINED_FUNCTION_74_10(uint64_t a1, __n128 a2, __n128 a3, __n128 a4, __n128 a5)
{

  VUIRectWithFlippedOriginRelativeToBoundingRectWithCondition();
  return result;
}

id OUTLINED_FUNCTION_77_9(void *a1, double a2)
{
  LODWORD(a2) = v4;

  return [a1 (v2 + 3485)];
}

uint64_t type metadata accessor for CastRoomBanner(uint64_t a1)
{
  result = qword_1EE2A5DE0;
  if (!qword_1EE2A5DE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E3A9700C(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18, &qword_1E42982F0);
  swift_storeEnumTagMultiPayload();
  v4 = type metadata accessor for CastRoomBanner(0);
  *(a2 + v4[8]) = MEMORY[0x1E69E7CC0];
  v5 = (a2 + v4[12]);
  v63[0] = 0;
  v6 = sub_1E42038E4();
  v7 = __src[1];
  *v5 = __src[0];
  v5[1] = v7;
  v8 = *(*a1 + 488);
  v9 = v8(v6);
  if (v9)
  {
    v11 = sub_1E373E010(41, v9, v10);
  }

  else
  {
    v11 = 0;
  }

  *(a2 + v4[6]) = v11;

  v13 = v8(v12);
  if (!v13)
  {
    goto LABEL_8;
  }

  v15 = sub_1E373E010(23, v13, v14);

  if (v15 && *v15 != _TtC8VideosUI13TextViewModel)
  {

LABEL_8:
    v15 = 0;
  }

  *(a2 + v4[7]) = v15;

  v17 = v8(v16);
  if (v17)
  {
    v19 = sub_1E373E010(9, v17, v18);

    if (v19)
    {
      if (*v19 == _TtC8VideosUI13TextViewModel)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750, &unk_1E429DD30);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1E4298880;
        *(inited + 32) = v19;
        v17 = sub_1E3A98978(inited);
      }

      else
      {
      }
    }
  }

  v21 = v8(v17);
  if (v21)
  {
    v23 = sub_1E373E010(14, v21, v22);

    if (v23)
    {
      if (*v23 != _TtC8VideosUI13TextViewModel)
      {

        if (v11)
        {
          goto LABEL_19;
        }

LABEL_29:
        v32 = 0;
        v29 = 0;
        goto LABEL_30;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750, &unk_1E429DD30);
      v24 = swift_initStackObject();
      *(v24 + 16) = xmmword_1E4298880;
      *(v24 + 32) = v23;
      sub_1E3A98978(v24);
    }
  }

  if (!v11)
  {
    goto LABEL_29;
  }

LABEL_19:
  v25 = *(*v11 + 392);

  v27 = v25(v26);

  if (v27)
  {
    v29 = (*(*v27 + 200))(v28);
    v31 = v30;

    if (v31)
    {
      v29 = 0;
    }
  }

  else
  {
    v29 = 0;
  }

  v32 = (*(*v11 + 392))(v28);

  if (v32)
  {
    v34 = (*(*v32 + 304))(v33);
    v36 = v35;

    if (v36)
    {
      v32 = 0;
    }

    else
    {
      v32 = v34;
    }
  }

LABEL_30:
  v37 = j__OUTLINED_FUNCTION_51_1();
  v38 = j__OUTLINED_FUNCTION_18();
  v39 = j__OUTLINED_FUNCTION_18();
  sub_1E3EB9C0C(v29, v32, 0, 0, 0, 1, v37 & 1, 2, __src, 0, 1, 0, 1, 0, 2, v38 & 1, v39 & 1);
  v40 = memcpy(a2 + v4[5], __src, 0x5BuLL);
  if (v15)
  {
    v42 = sub_1E3C27528(v40, v41);

    if (!v42 || (v15 = (*(*v42 + 248))(v40), v44 = v43, v40 = , (v44 & 1) != 0))
    {
      v15 = 0;
    }
  }

  *(a2 + v4[9]) = v15;
  v45 = (*a1 + 392);
  v46 = *v45;
  v47 = (*v45)(v40);
  if (v47)
  {
    v48 = (*(*v47 + 304))(v47);
    v50 = v49;

    if (v50)
    {
      v51 = 0;
    }

    else
    {
      v51 = v48;
    }
  }

  else
  {
    v51 = 0;
  }

  *(a2 + v4[10]) = v51;
  v52 = v46(v47);
  if (!v52 || ((*(*v52 + 176))(v63), v57 = v63[0], v58 = v63[1], v59 = v63[2], v60 = v63[3], , (v64 & 1) != 0))
  {
    v57 = *MEMORY[0x1E69DDCE0];
    v58 = *(MEMORY[0x1E69DDCE0] + 8);
    v59 = *(MEMORY[0x1E69DDCE0] + 16);
    v60 = *(MEMORY[0x1E69DDCE0] + 24);
  }

  v53.n128_u64[0] = v57;
  v54.n128_u64[0] = v58;
  v55.n128_u64[0] = v59;
  v56.n128_u64[0] = v60;
  j_nullsub_1(v53, v54, v55, v56);
  OUTLINED_FUNCTION_3();

  v61 = (a2 + v4[11]);
  *v61 = v57;
  v61[1] = v58;
  v61[2] = v59;
  v61[3] = v60;
}

uint64_t sub_1E3A97654@<X0>(uint64_t a1@<X8>)
{
  v6 = v1;
  v91 = a1;
  v92 = type metadata accessor for CastRoomBanner(0);
  OUTLINED_FUNCTION_0_10();
  v88 = v7;
  MEMORY[0x1EEE9AC00](v8);
  v89 = v9;
  OUTLINED_FUNCTION_17_3(v80 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v87 = sub_1E42012F4();
  OUTLINED_FUNCTION_0_10();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31B80, &qword_1E42B6F50);
  OUTLINED_FUNCTION_17_2(v13);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v14);
  v16 = v80 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31B88, &qword_1E42B6F58);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v18);
  v20 = v80 - v19;
  v80[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31B90, &qword_1E42B6F60);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v21);
  v23 = v80 - v22;
  v80[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31B98, &qword_1E42B6F68);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v24);
  v26 = v80 - v25;
  v80[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31BA0, &qword_1E42B6F70);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v28);
  v80[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31BA8, &qword_1E42B6F78);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v30);
  v80[5] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31BB0, &qword_1E42B6F80);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v32);
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31BB8, &qword_1E42B6F88);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v34);
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31BC0, &qword_1E42B6F90);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v36);
  *v16 = sub_1E4201B84();
  *(v16 + 1) = 0;
  v16[16] = 0;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31BC8, &unk_1E42B6F98);
  sub_1E3A97FCC(v6, &v16[*(v37 + 44)]);
  v38 = sub_1E4202764();
  v39 = sub_1E4202774();
  sub_1E4202774();
  if (sub_1E4202774() != v38)
  {
    v39 = sub_1E4202774();
  }

  sub_1E4200A54();
  OUTLINED_FUNCTION_3();
  sub_1E3741EA0(v16, v20, &qword_1ECF31B80, &qword_1E42B6F50);
  v40 = &v20[*(v17 + 36)];
  *v40 = v39;
  *(v40 + 1) = v2;
  *(v40 + 2) = v3;
  *(v40 + 3) = v4;
  *(v40 + 4) = v5;
  v40[40] = 0;
  v41 = sub_1E4202784();
  sub_1E4202774();
  sub_1E4202774();
  if (sub_1E4202774() != v41)
  {
    sub_1E4202774();
  }

  sub_1E4200A54();
  OUTLINED_FUNCTION_3();
  sub_1E3741EA0(v20, v23, &qword_1ECF31B88, &qword_1E42B6F58);
  OUTLINED_FUNCTION_141();
  OUTLINED_FUNCTION_5_106(&v23[v42]);
  v43 = sub_1E4202754();
  sub_1E4202774();
  sub_1E4202774();
  if (sub_1E4202774() != v43)
  {
    sub_1E4202774();
  }

  OUTLINED_FUNCTION_16_67();
  sub_1E3B0352C();
  v44 = *(v11 + 8);
  v45 = OUTLINED_FUNCTION_114_1();
  v44(v45);
  sub_1E4200A54();
  OUTLINED_FUNCTION_3();
  sub_1E3741EA0(v23, v26, &qword_1ECF31B90, &qword_1E42B6F60);
  OUTLINED_FUNCTION_141();
  OUTLINED_FUNCTION_5_106(&v26[v46]);
  v47 = sub_1E4202744();
  sub_1E4202774();
  sub_1E4202774();
  if (sub_1E4202774() != v47)
  {
    sub_1E4202774();
  }

  OUTLINED_FUNCTION_16_67();
  sub_1E3B0352C();
  v48 = OUTLINED_FUNCTION_114_1();
  v44(v48);
  v49 = v80[4];
  sub_1E4200A54();
  OUTLINED_FUNCTION_3();
  sub_1E3741EA0(v26, v49, &qword_1ECF31B98, &qword_1E42B6F68);
  OUTLINED_FUNCTION_141();
  OUTLINED_FUNCTION_5_106(v49 + v50);
  OUTLINED_FUNCTION_16_67();
  sub_1E3B0352C();
  v51 = OUTLINED_FUNCTION_114_1();
  v44(v51);
  v52 = v92;
  sub_1E4203D84();
  sub_1E4200D94();
  v53 = v81;
  sub_1E3741EA0(v49, v81, &qword_1ECF31BA0, &qword_1E42B6F70);
  OUTLINED_FUNCTION_141();
  v55 = (v53 + v54);
  v56 = v97;
  *v55 = v96;
  v55[1] = v56;
  v55[2] = v98;
  sub_1E4203DA4();
  sub_1E42015C4();
  v57 = v83;
  sub_1E3741EA0(v53, v83, &qword_1ECF31BA8, &qword_1E42B6F78);
  OUTLINED_FUNCTION_141();
  memcpy((v57 + v58), __src, 0x70uLL);
  OUTLINED_FUNCTION_16_67();
  LOBYTE(v53) = sub_1E3B0352C();
  v59 = OUTLINED_FUNCTION_114_1();
  v44(v59);
  v60 = v57;
  v61 = v84;
  sub_1E3741EA0(v60, v84, &qword_1ECF31BB0, &qword_1E42B6F80);
  OUTLINED_FUNCTION_141();
  v63 = (v61 + v62);
  *v63 = 0;
  v63[1] = v53 & 1;
  v64 = (v6 + *(v52 + 48));
  v65 = *v64;
  v66 = v64[1];
  v94 = v65;
  v95 = v66;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28868, &unk_1E4297BF0);
  sub_1E42038F4();
  v67 = v93 + -10.0;
  type metadata accessor for AppEnvironment(0);
  sub_1E39DC8E8();
  v68 = sub_1E4201754();
  v70 = v69;
  v71 = v61;
  v72 = v86;
  sub_1E3741EA0(v71, v86, &qword_1ECF31BB8, &qword_1E42B6F88);
  v73 = v72 + *(v85 + 36);
  *v73 = v67;
  *(v73 + 8) = v68;
  *(v73 + 16) = v70;
  v74 = v6;
  v75 = v90;
  sub_1E3A98A24(v74, v90);
  v76 = (*(v88 + 80) + 16) & ~*(v88 + 80);
  v77 = swift_allocObject();
  sub_1E3A99320(v75, v77 + v76, type metadata accessor for CastRoomBanner);
  sub_1E3A98AF4();
  v78 = OUTLINED_FUNCTION_51_1();
  sub_1E40AB6EC(v78 & 1);

  return sub_1E325F6F0(v72, &qword_1ECF31BC0, &qword_1E42B6F90);
}

uint64_t sub_1E3A97FCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31C30, &qword_1E42B70B8);
  v5 = OUTLINED_FUNCTION_17_2(v4);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_4_6();
  v8 = v6 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v31[-v10];
  v12 = type metadata accessor for Monogram(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5();
  v16 = (v15 - v14);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29648, &qword_1E42B70C0);
  v18 = OUTLINED_FUNCTION_17_2(v17);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_4_6();
  v21 = v19 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v31[-v23];
  v25 = type metadata accessor for CastRoomBanner(0);
  v26 = *(a1 + *(v25 + 24));
  if (v26)
  {
    memcpy(__dst, (a1 + *(v25 + 20)), 0x5BuLL);

    sub_1E375C2C0(__dst, v31);
    sub_1E3BD63E4(v26, 0, __dst, 0, 0, 0, 0, 0, v16);
    sub_1E3A99320(v16, v24, type metadata accessor for Monogram);
    v27 = 0;
  }

  else
  {
    v27 = 1;
  }

  __swift_storeEnumTagSinglePayload(v24, v27, 1, v12);
  *v11 = sub_1E4201D54();
  *(v11 + 1) = 0;
  v11[16] = 0;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31C38, &qword_1E42B70C8);
  sub_1E3A982B4(a1, &v11[*(v28 + 44)]);
  sub_1E3743538(v24, v21, &qword_1ECF29648, &qword_1E42B70C0);
  sub_1E3743538(v11, v8, &qword_1ECF31C30, &qword_1E42B70B8);
  sub_1E3743538(v21, a2, &qword_1ECF29648, &qword_1E42B70C0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31C40, &qword_1E42B70D0);
  sub_1E3743538(v8, a2 + *(v29 + 48), &qword_1ECF31C30, &qword_1E42B70B8);
  sub_1E325F6F0(v11, &qword_1ECF31C30, &qword_1E42B70B8);
  sub_1E325F6F0(v24, &qword_1ECF29648, &qword_1E42B70C0);
  sub_1E325F6F0(v8, &qword_1ECF31C30, &qword_1E42B70B8);
  return sub_1E325F6F0(v21, &qword_1ECF29648, &qword_1E42B70C0);
}

uint64_t sub_1E3A982B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31C48, &qword_1E42B70D8);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_4_6();
  v6 = v4 - v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v33 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CB8, &unk_1E429B6E0);
  OUTLINED_FUNCTION_0_10();
  v12 = v11;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v33 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29210, &qword_1E4299980);
  v17 = OUTLINED_FUNCTION_17_2(v16);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_4_6();
  v20 = v18 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v33 - v22;
  v24 = type metadata accessor for CastRoomBanner(0);
  if (*(a1 + *(v24 + 28)))
  {

    OUTLINED_FUNCTION_18();
    sub_1E3F23370();

    (*(v12 + 32))(v23, v15, v10);
    v25 = 0;
  }

  else
  {
    v25 = 1;
  }

  __swift_storeEnumTagSinglePayload(v23, v25, 1, v10);
  v26 = sub_1E375B30C(*(a1 + *(v24 + 32)));
  v27 = sub_1E4201D54();
  sub_1E403E654(v26, v27, 1, v9);
  sub_1E4203DB4();
  sub_1E4200D94();
  v28 = &v9[*(v33 + 36)];
  v29 = v36;
  *v28 = v35;
  *(v28 + 1) = v29;
  *(v28 + 2) = v37;
  sub_1E3743538(v23, v20, &qword_1ECF29210, &qword_1E4299980);
  sub_1E3743538(v9, v6, &qword_1ECF31C48, &qword_1E42B70D8);
  v30 = v34;
  sub_1E3743538(v20, v34, &qword_1ECF29210, &qword_1E4299980);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31C50, &unk_1E42B70E0);
  sub_1E3743538(v6, v30 + *(v31 + 48), &qword_1ECF31C48, &qword_1E42B70D8);
  sub_1E325F6F0(v9, &qword_1ECF31C48, &qword_1E42B70D8);
  sub_1E325F6F0(v23, &qword_1ECF29210, &qword_1E4299980);
  sub_1E325F6F0(v6, &qword_1ECF31C48, &qword_1E42B70D8);
  return sub_1E325F6F0(v20, &qword_1ECF29210, &qword_1E4299980);
}

uint64_t sub_1E3A985F0(uint64_t a1, double a2)
{
  v2 = sub_1E42012F4();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v8 = v7 - v6;
  sub_1E3746E10((v7 - v6));
  v9 = sub_1E3B0352C();
  (*(v4 + 8))(v8, v2);
  if ((v9 & 1) == 0)
  {
    type metadata accessor for CastRoomBanner(0);
  }

  type metadata accessor for CastRoomBanner(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28868, &unk_1E4297BF0);
  return sub_1E4203904();
}

uint64_t sub_1E3A98724@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>, double a5@<D0>)
{
  if (a2)
  {
    v8 = *(*a2 + 184);

    v8(v9);
    v11 = v10;
    v13 = v12;

    if (v13)
    {
      v14 = 0.0;
    }

    else
    {
      v14 = v11 * 1.5;
    }

    sub_1E42036C4();
    v15 = sub_1E4203734();

    sub_1E4203DA4();
    sub_1E4200D94();
    *&v24[6] = v35;
    *&v24[22] = v36;
    *&v24[38] = v37;
    v16 = (v14 - a5) * -0.5;
    v17 = sub_1E4203DA4();
    v19 = v18;
    __src[0] = v15;
    LOWORD(__src[1]) = 256;
    *(&__src[1] + 2) = *v24;
    *(&__src[3] + 2) = *&v24[16];
    *(&__src[5] + 2) = *&v24[32];
    __src[7] = *(&v37 + 1);
    __src[8] = 0;
    *&__src[9] = v16;
    __src[10] = v17;
    __src[11] = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31C18, &qword_1E42B7098);
    OUTLINED_FUNCTION_2();
    (*(v20 + 16))(a4, a1);
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31C20, &qword_1E42B70A0);
    memcpy((a4 + *(v21 + 36)), __src, 0x60uLL);
    v26 = v15;
    v27 = 256;
    v28 = *v24;
    v29 = *&v24[16];
    *v30 = *&v24[32];
    *&v30[14] = *&v24[46];
    v31 = 0;
    v32 = v16;
    v33 = v17;
    v34 = v19;
    sub_1E3743538(__src, v23, &qword_1ECF31C28, &unk_1E42B70A8);
    return sub_1E325F6F0(&v26, &qword_1ECF31C28, &unk_1E42B70A8);
  }

  else
  {
    type metadata accessor for AppEnvironment(0);
    sub_1E39DC8E8();
    result = sub_1E4201744();
    __break(1u);
  }

  return result;
}

uint64_t sub_1E3A98978(unint64_t a1)
{
  v3 = sub_1E32AE9B0(a1);
  v4 = sub_1E32AE9B0(*v1);
  v5 = __OFADD__(v4, v3);
  result = v4 + v3;
  if (v5)
  {
    __break(1u);
    goto LABEL_8;
  }

  sub_1E3797CDC(result, 1);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_1E3A9937C(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v10 < 1)
  {
LABEL_6:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_6;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_1E3A98A24(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CastRoomBanner(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E3A98A88(double a1, double a2)
{
  v4 = type metadata accessor for CastRoomBanner(0);
  OUTLINED_FUNCTION_17_2(v4);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1E3A985F0(v6, a2);
}

unint64_t sub_1E3A98AF4()
{
  result = qword_1ECF31BD0;
  if (!qword_1ECF31BD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF31BC0, &qword_1E42B6F90);
    v3 = sub_1E3A98B80();
    sub_1E3A98F80(v3, v1, v2);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF31BD0);
  }

  return result;
}

unint64_t sub_1E3A98B80()
{
  result = qword_1ECF31BD8;
  if (!qword_1ECF31BD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF31BB8, &qword_1E42B6F88);
    sub_1E3A98C0C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF31BD8);
  }

  return result;
}

unint64_t sub_1E3A98C0C()
{
  result = qword_1ECF31BE0;
  if (!qword_1ECF31BE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF31BB0, &qword_1E42B6F80);
    sub_1E3A98C98();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF31BE0);
  }

  return result;
}

unint64_t sub_1E3A98C98()
{
  result = qword_1ECF31BE8;
  if (!qword_1ECF31BE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF31BA8, &qword_1E42B6F78);
    sub_1E3A98D24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF31BE8);
  }

  return result;
}

unint64_t sub_1E3A98D24()
{
  result = qword_1ECF31BF0;
  if (!qword_1ECF31BF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF31BA0, &qword_1E42B6F70);
    sub_1E3A98DB0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF31BF0);
  }

  return result;
}

unint64_t sub_1E3A98DB0()
{
  result = qword_1ECF31BF8;
  if (!qword_1ECF31BF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF31B98, &qword_1E42B6F68);
    sub_1E3A98E3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF31BF8);
  }

  return result;
}

unint64_t sub_1E3A98E3C()
{
  result = qword_1ECF31C00;
  if (!qword_1ECF31C00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF31B90, &qword_1E42B6F60);
    sub_1E3A98EC8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF31C00);
  }

  return result;
}

unint64_t sub_1E3A98EC8()
{
  result = qword_1ECF31C08;
  if (!qword_1ECF31C08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF31B88, &qword_1E42B6F58);
    sub_1E32752B0(&qword_1ECF31C10, &qword_1ECF31B80, &qword_1E42B6F50, MEMORY[0x1E69817F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF31C08);
  }

  return result;
}

unint64_t sub_1E3A98F80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF54A18[0];
  if (!qword_1ECF54A18[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECF54A18);
  }

  return result;
}

void sub_1E3A99014(uint64_t a1)
{
  sub_1E3A9919C(319, &qword_1EE289EB0, MEMORY[0x1E697E730], MEMORY[0x1E697DCC0]);
  if (v1 <= 0x3F)
  {
    sub_1E3A9919C(319, qword_1EE23B6C8, type metadata accessor for ViewModel, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      OUTLINED_FUNCTION_3_111();
      sub_1E3A9919C(319, v3, v4, MEMORY[0x1E69E6720]);
      if (v5 <= 0x3F)
      {
        OUTLINED_FUNCTION_3_111();
        sub_1E3A9919C(319, v6, v7, MEMORY[0x1E69E62F8]);
        if (v8 <= 0x3F)
        {
          sub_1E3A99200();
          if (v9 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1E3A9919C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1E3A99200()
{
  if (!qword_1EE288680)
  {
    v0 = sub_1E4203924();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE288680);
    }
  }
}

uint64_t sub_1E3A99250(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 24))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
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

uint64_t sub_1E3A992A4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_1E3A99320(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_2();
  v4 = OUTLINED_FUNCTION_32_0();
  v5(v4);
  return a2;
}

uint64_t sub_1E3A9937C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = sub_1E4207384();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = sub_1E32AE9B0(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        type metadata accessor for TextViewModel();
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_1E32752B0(&qword_1EE23B5B0, &qword_1ECF2B6E8, &qword_1E42A0FA0, MEMORY[0x1E69E6340]);
        for (i = 0; i != v7; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B6E8, &qword_1E42A0FA0);
          v9 = sub_1E3797EB0(v12, i, a3);
          v11 = *v10;

          (v9)(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_1E3A99504()
{
  result = qword_1ECF31C58;
  if (!qword_1ECF31C58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF31C20, &qword_1E42B70A0);
    sub_1E32752B0(&qword_1ECF31C60, &qword_1ECF31C18, &qword_1E42B7098, MEMORY[0x1E697FDF8]);
    sub_1E32752B0(&qword_1ECF31C68, &qword_1ECF31C28, &unk_1E42B70A8, MEMORY[0x1E697F940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF31C58);
  }

  return result;
}

double sub_1E3A995E8()
{
  v1 = v0 + OBJC_IVAR____TtC8VideosUI17AlertTemplateView_viewSafeAreaInsets;
  OUTLINED_FUNCTION_5_0(v0 + OBJC_IVAR____TtC8VideosUI17AlertTemplateView_viewSafeAreaInsets, v3);
  return *v1;
}

uint64_t sub_1E3A9962C()
{
  OUTLINED_FUNCTION_0_8();
  v5 = (v0 + OBJC_IVAR____TtC8VideosUI17AlertTemplateView_viewSafeAreaInsets);
  result = OUTLINED_FUNCTION_3_0(v0 + OBJC_IVAR____TtC8VideosUI17AlertTemplateView_viewSafeAreaInsets, v7);
  *v5 = v4;
  v5[1] = v3;
  v5[2] = v2;
  v5[3] = v1;
  return result;
}

id sub_1E3A996D4(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC8VideosUI17AlertTemplateView_collectionView;
  OUTLINED_FUNCTION_0_12(a1);
  v3 = *(v1 + v2);

  return v3;
}

void sub_1E3A99718(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI17AlertTemplateView_collectionView;
  OUTLINED_FUNCTION_3_0(v1 + OBJC_IVAR____TtC8VideosUI17AlertTemplateView_collectionView, v5);
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

double sub_1E3A997A0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI17AlertTemplateView_alertTemplateLayout;
  OUTLINED_FUNCTION_3_0(v1 + OBJC_IVAR____TtC8VideosUI17AlertTemplateView_alertTemplateLayout, v5);
  *(v1 + v3) = a1;

  return result;
}

void sub_1E3A99840(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = *(a1 + 16);
  v6 = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    v38 = MEMORY[0x1E69E7CC0];
    sub_1E4207574();
    v8 = (a1 + 32);
    do
    {
      v9 = *v8;
      v8 += 2;
      v10 = v9;
      sub_1E4207544();
      sub_1E4207584();
      sub_1E4207594();
      sub_1E4207554();
      --v5;
    }

    while (v5);
    v6 = v38;
  }

  v11 = *(a2 + 16);
  v12 = MEMORY[0x1E69E7CC0];
  if (v11)
  {
    v39 = MEMORY[0x1E69E7CC0];
    sub_1E4207574();
    v13 = (a2 + 32);
    do
    {
      v14 = *v13;
      v13 += 2;
      v15 = v14;
      sub_1E4207544();
      sub_1E4207584();
      sub_1E4207594();
      sub_1E4207554();
      --v11;
    }

    while (v11);
    v16 = v39;
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
  }

  if (sub_1E3A9BD04(v6, v16))
  {
  }

  else
  {
    j = sub_1E32AE9B0(v16);
    for (i = 0; j != i; ++i)
    {
      if ((v16 & 0xC000000000000001) != 0)
      {
        v19 = MEMORY[0x1E6911E60](i, v16);
      }

      else
      {
        if (i >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_48;
        }

        v19 = *(v16 + 8 * i + 32);
      }

      v20 = v19;
      if (__OFADD__(i, 1))
      {
        __break(1u);
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
        __break(1u);
LABEL_52:
        v32 = MEMORY[0x1E6911E60](0, v12);
        goto LABEL_42;
      }

      [v19 removeFromSuperview];
    }

    v21 = sub_1E32AE9B0(v6);
    for (j = 0; v21 != j; ++j)
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v22 = MEMORY[0x1E6911E60](j, v6);
      }

      else
      {
        if (j >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_50;
        }

        v22 = *(v6 + 8 * j + 32);
      }

      v23 = v22;
      if (__OFADD__(j, 1))
      {
        goto LABEL_49;
      }

      [v3 addSubview_];
    }

    [v3 setNeedsLayout];
    j = objc_opt_self();
    v24 = [j defaultCenter];
    v37 = *MEMORY[0x1E69DF860];
    [v24 removeObserver:v3 name:? object:?];

    v25 = (*((*MEMORY[0x1E69E7D40] & *v3) + 0x138))();
    v26 = 0;
    v40 = v12;
    v27 = *(v25 + 16);
LABEL_31:
    v28 = 16 * v26 + 32;
    while (v27 != v26)
    {
      if (v26 >= *(v25 + 16))
      {
        goto LABEL_51;
      }

      ++v26;
      v29 = v28 + 16;
      v30 = *(v25 + v28);
      objc_opt_self();
      v31 = swift_dynamicCastObjCClass();
      v28 = v29;
      if (v31)
      {
        MEMORY[0x1E6910BF0](v30);
        if (*((v40 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v40 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1E42062F4();
        }

        sub_1E4206324();
        v12 = v40;
        goto LABEL_31;
      }
    }

    if (sub_1E32AE9B0(v12))
    {
      if ((v12 & 0xC000000000000001) != 0)
      {
        goto LABEL_52;
      }

      if (!*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return;
      }

      v32 = *(v12 + 32);
LABEL_42:
      v33 = v32;

      goto LABEL_44;
    }

    v33 = 0;
LABEL_44:
    v34 = OBJC_IVAR____TtC8VideosUI17AlertTemplateView_mainImageView;
    v35 = *(v3 + OBJC_IVAR____TtC8VideosUI17AlertTemplateView_mainImageView);
    *(v3 + OBJC_IVAR____TtC8VideosUI17AlertTemplateView_mainImageView) = v33;

    v36 = [j defaultCenter];
    [v36 addObserver:v3 selector:sel_imageDidLoad_ name:v37 object:*(v3 + v34)];
  }
}

uint64_t sub_1E3A99D0C()
{
  v2 = OUTLINED_FUNCTION_12_11();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_3_9(v3);
  v4 = OBJC_IVAR____TtC8VideosUI17AlertTemplateView_aboveCollectionComponents;
  OUTLINED_FUNCTION_4_13();
  *(v1 + 24) = *(v0 + v4);

  return OUTLINED_FUNCTION_27_0();
}

uint64_t sub_1E3A99DA4()
{
  v2 = OUTLINED_FUNCTION_12_11();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_3_9(v3);
  v4 = OBJC_IVAR____TtC8VideosUI17AlertTemplateView_belowCollectionComponents;
  OUTLINED_FUNCTION_4_13();
  *(v1 + 24) = *(v0 + v4);

  return OUTLINED_FUNCTION_27_0();
}

void sub_1E3A99E24(uint64_t a1, char a2, void (*a3)(uint64_t))
{
  v4 = *a1;
  v5 = *(*a1 + 24);
  if (a2)
  {

    a3(v6);
  }

  else
  {
    a3(v5);
  }

  free(v4);
}

uint64_t sub_1E3A99EAC(uint64_t a1, uint64_t *a2)
{
  v5 = *a2;
  OUTLINED_FUNCTION_3_0(v2 + *a2, &v9);
  v6 = *(v2 + v5);
  *(v2 + v5) = a1;
  OUTLINED_FUNCTION_5_0(v2 + *a2, v10);

  sub_1E3A99840(v7, v6);
}

uint64_t sub_1E3A99F34()
{
  v2 = OUTLINED_FUNCTION_12_11();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_3_9(v3);
  v4 = OBJC_IVAR____TtC8VideosUI17AlertTemplateView_footerComponents;
  OUTLINED_FUNCTION_4_13();
  *(v1 + 24) = *(v0 + v4);

  return OUTLINED_FUNCTION_27_0();
}

uint64_t sub_1E3A99FB4()
{
  v1 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_21();
  v3 = (*(v2 + 240))();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF31CA0, qword_1E42B7100);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E4297BE0;
  OUTLINED_FUNCTION_21();
  *(inited + 32) = (*(v5 + 168))();
  type metadata accessor for ViewLayout();
  *(inited + 40) = sub_1E3C2F968();
  v6 = sub_1E3A9C008(inited);
  v7 = (*((*v1 & *v0) + 0x108))(v6);
  sub_1E3A9C008(v7);
  return v3;
}

void sub_1E3A9A0F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + OBJC_IVAR____TtC8VideosUI17AlertTemplateView_mainImageView) = 0;
  *(v5 + OBJC_IVAR____TtC8VideosUI17AlertTemplateView_alertTemplateLayout) = 0;
  v6 = MEMORY[0x1E69E7CC0];
  *(v5 + OBJC_IVAR____TtC8VideosUI17AlertTemplateView_aboveCollectionComponents) = MEMORY[0x1E69E7CC0];
  *(v5 + OBJC_IVAR____TtC8VideosUI17AlertTemplateView_belowCollectionComponents) = v6;
  *(v5 + OBJC_IVAR____TtC8VideosUI17AlertTemplateView_footerComponents) = v6;
  *(v5 + OBJC_IVAR____TtC8VideosUI17AlertTemplateView_debugUIOverlay) = 0;
  OUTLINED_FUNCTION_4_109("Fatal error", a2, a3, a4, a5, "VideosUI/AlertTemplateView.swift");
  __break(1u);
}

char *sub_1E3A9A194()
{
  OUTLINED_FUNCTION_0_8();
  *(v0 + OBJC_IVAR____TtC8VideosUI17AlertTemplateView_mainImageView) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI17AlertTemplateView_alertTemplateLayout) = 0;
  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtC8VideosUI17AlertTemplateView_aboveCollectionComponents) = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtC8VideosUI17AlertTemplateView_belowCollectionComponents) = v1;
  *(v0 + OBJC_IVAR____TtC8VideosUI17AlertTemplateView_footerComponents) = v1;
  *(v0 + OBJC_IVAR____TtC8VideosUI17AlertTemplateView_debugUIOverlay) = 0;
  v2 = sub_1E3952C10(0.0, 60.0);
  v3 = v0 + OBJC_IVAR____TtC8VideosUI17AlertTemplateView_viewSafeAreaInsets;
  *v3 = v2;
  *(v3 + 8) = v4;
  *(v3 + 16) = v5;
  *(v3 + 24) = v6;
  v7 = [objc_allocWithZone(MEMORY[0x1E69DC840]) init];
  [v7 setScrollDirection_];
  [v7 setMinimumLineSpacing_];
  [v7 setMinimumInteritemSpacing_];
  [v7 setSectionInset_];
  v8 = objc_allocWithZone(VUILegacyCollectionView);
  v9 = OUTLINED_FUNCTION_5_8();
  v12 = [v10 v11];
  [v12 setAutoresizingMask_];
  [v12 setBackgroundColor_];
  [v12 setOpaque_];
  type metadata accessor for AlertTemplateView.AlertActionCell();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  OUTLINED_FUNCTION_11_77();
  v14 = sub_1E4205ED4();
  [v12 registerClass:ObjCClassFromMetadata forCellWithReuseIdentifier:v14];

  type metadata accessor for OfferListLockupCell();
  v15 = swift_getObjCClassFromMetadata();
  sub_1E384EE08(182);
  v16 = sub_1E4205ED4();

  [v12 registerClass:v15 forCellWithReuseIdentifier:v16];

  *(v0 + OBJC_IVAR____TtC8VideosUI17AlertTemplateView_collectionView) = v12;
  v32 = v0;
  v33 = type metadata accessor for AlertTemplateView();
  v17 = v12;
  v18 = OUTLINED_FUNCTION_2_0();
  v21 = objc_msgSendSuper2(v19, v20, v18);
  v22 = objc_opt_self();
  v23 = v21;
  v24 = [v22 clearColor];
  [v23 setBackgroundColor_];

  v25 = OBJC_IVAR____TtC8VideosUI17AlertTemplateView_collectionView;
  OUTLINED_FUNCTION_5_0(&v23[OBJC_IVAR____TtC8VideosUI17AlertTemplateView_collectionView], v31);
  [v23 addSubview_];
  if (v23[OBJC_IVAR____TtC8VideosUI17AlertTemplateView_debugUIOverlay] == 1)
  {
    v26 = *&v23[v25];
    v27 = objc_opt_self();
    v28 = v26;
    v29 = [v27 randomColor];
    [v28 setBackgroundColor_];
  }

  else
  {
    v29 = v17;
    v17 = v7;
    v7 = v23;
  }

  return v23;
}

void sub_1E3A9A4F8()
{
  v1 = v0;
  [v0 bounds];
  y = v337.origin.y;
  width = v337.size.width;
  x = v337.origin.x;
  height = v337.size.height;
  v4 = CGRectGetWidth(v337);
  OUTLINED_FUNCTION_21();
  v6 = *(v5 + 216);
  v7 = v6();
  v8 = 0.0;
  if (v7)
  {
    (*(*v7 + 176))(&v308);
    v9 = v308;
    v10 = v309;
    v11 = v310;
    v12 = v311;

    if ((v312 & 1) == 0)
    {
      v8 = sub_1E3952BE0(v9, v10, v11, v12);
    }
  }

  v328[0] = v4 - v8;
  v13 = v6();
  v305 = *&y;
  if (v13)
  {
    *&v16 = COERCE_DOUBLE((*(*v13 + 248))());
    v18 = v17;
  }

  else
  {
    *&v16 = 0.0;
    v18 = 1;
  }

  v334 = v16;
  LOBYTE(v335) = v18 & 1;
  v304 = sub_1E3793CAC(v13, v14, v15);
  min<A>(_:_:)();
  v301 = v330;
  v298 = v1;
  v19 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0xF0))();
  v20 = *(v19 + 16);
  v21 = 0.0;
  v22 = 0.0;
  if (v20)
  {
    v23 = (v19 + 40);
    v24 = 0.0;
    do
    {
      v25 = *(v23 - 1);
      v26 = *v23;
      objc_opt_self();
      if (!swift_dynamicCastObjCClass())
      {
        v27 = *(*v26 + 152);
        v28 = v25;

        v30 = v27(&v313, v29);
        v31 = (*(*v26 + 248))(v30);
        v41 = OUTLINED_FUNCTION_7_106(v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v251, v257, v262, v268, v273, height, v283, x, v294, *&v298, v301);
        OUTLINED_FUNCTION_10_75(v41, v50, v51, v52, v53, v54, v55, v56, v42, v43, v44, v45, v46, v47, v48, v49, v252, v258, v263, v269, v274, v279, v284, v290, v295, v299, v302, v304, v305, v307, *&v308, *&v309, *&v310, *&v311, v312, v313, v314, *&v315, v316, v317, *&v318, v319, v320, v321, v322, *&v323, v324, v325, v326, v327, v328[0]);
        v57 = v330;

        sub_1E3C8B764(v58, v57, 0.0);
        v60 = v59;

        if (v22 <= 0.0)
        {

          v62 = v317;
        }

        else
        {
          v61 = v313;
          v62 = v317;

          if (v62)
          {
            v63 = 0.0;
          }

          else
          {
            v63 = *&v61;
          }

          v22 = v22 + fmax(v63, v24);
        }

        v22 = v60 + v22;
        if (v62)
        {
          v24 = 0.0;
        }

        else
        {
          v24 = v315;
        }
      }

      v23 += 2;
      --v20;
    }

    while (v20);
  }

  OUTLINED_FUNCTION_21();
  v65 = (*(v64 + 264))();
  v66 = *(v65 + 16);
  if (v66)
  {
    v67 = v65 + 40;
    v21 = 0.0;
    v68 = 0.0;
    do
    {
      v69 = *(v67 - 8);
      v70 = *v67;
      v71 = *(**v67 + 152);
      swift_retain_n();
      v72 = v69;
      v73 = v71(&v318);
      v74 = (*(*v70 + 248))(v73);
      v84 = OUTLINED_FUNCTION_7_106(v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v251, v257, v262, v268, v273, height, v283, x, v294, *&v298, v301);
      OUTLINED_FUNCTION_10_75(v84, v93, v94, v95, v96, v97, v98, v99, v85, v86, v87, v88, v89, v90, v91, v92, v253, v259, v264, v270, v275, v280, v285, v291, v296, v300, v303, v304, v305, v307, *&v308, *&v309, *&v310, *&v311, v312, v313, v314, *&v315, v316, v317, *&v318, v319, v320, v321, v322, *&v323, v324, v325, v326, v327, v328[0]);
      v100 = v330;

      sub_1E3C8B764(v101, v100, 0.0);
      v103 = v102;

      if (v21 <= 0.0)
      {

        v105 = v322;
      }

      else
      {
        v104 = v320;
        v105 = v322;

        if (v105)
        {
          v106 = 0.0;
        }

        else
        {
          v106 = *&v104;
        }

        v21 = v21 + fmax(v106, v68);
      }

      v21 = v103 + v21;
      if (v105)
      {
        v68 = 0.0;
      }

      else
      {
        v68 = v318;
      }

      v67 += 16;
      --v66;
    }

    while (v66);
  }

  OUTLINED_FUNCTION_21();
  v108 = *(v107 + 168);
  *&v109 = v107 + 168;
  v110 = v108();
  v111 = [v110 collectionViewLayout];

  objc_opt_self();
  v112 = swift_dynamicCastObjCClass();
  v113 = v112;
  if (v112)
  {
    v114 = [v112 itemSize];
    v254 = v115;
    v117 = v116;
  }

  else
  {

    v254 = 0.0;
    v117 = 0.0;
  }

  v118 = (v108)(v114);
  v119 = [v118 numberOfItemsInSection_];

  if (v113)
  {
    v120 = [v113 minimumLineSpacing];
    v122 = v121;
  }

  else
  {
    v122 = 0.0;
  }

  v297 = v108;
  v286 = v109;
  v123 = (v108)(v120);
  v124 = [v123 numberOfItemsInSection_];

  if (!__OFSUB__(v124, 1))
  {
    v125 = v117 * v119 + v122 * (v124 - 1);
    v126 = 0.0;
    if (v22 <= 0.0)
    {
      v127 = 0.0;
    }

    else
    {
      v127 = 50.0;
    }

    OUTLINED_FUNCTION_21();
    v129 = *(v128 + 144);
    v130 = v129();
    if (v21 <= 0.0)
    {
      v138 = 0.0;
    }

    else
    {
      v138 = 50.0;
    }

    v139 = v127;
    v140 = v127 + v22 + v131;
    v141 = v138;
    v142 = v138 + v125 + v140;
    v143 = v21 + v142;
    if (v21 > 0.0)
    {
      (v129)(v130);
      v126 = v132;
    }

    v144 = v143 + v126;
    v338.origin.x = OUTLINED_FUNCTION_9_75(v142, v138, v132, v133, v134, v135, v136, v137, v254, v257, v262, v268, v273, height, v286, x);
    v145 = v281;
    v338.size.height = v281;
    if (CGRectGetHeight(v338) >= v144)
    {
      v167 = v139;
      v165 = v141 + v139 + v125;
      v168 = v297();
      v166 = *MEMORY[0x1E69DDCE0];
      v267 = *(MEMORY[0x1E69DDCE0] + 16);
      [v168 _setGradientMaskInsets_];

      v169 = v297();
      [v169 setClipsToBounds_];

      v170 = v297();
      [v170 setContentInset_];

      v340.origin.x = OUTLINED_FUNCTION_9_75(v171, v172, v173, v174, v175, v176, v177, v178, v255, v260, v267, v271, v276, v281, v287, v292);
      v340.size.height = v145;
      v147 = floor((CGRectGetHeight(v340) - (v21 + v22 + v165)) * 0.5);
    }

    else
    {
      v146 = v281;
      v147 = (v129)();
      v148 = v297();
      [v148 setClipsToBounds_];

      v149 = v297();
      v150 = v149;
      if (v21 <= 0.0)
      {
        v151 = 90.0;
      }

      else
      {
        v151 = 50.0;
      }

      [v149 setContentInset_];

      v152 = v297();
      sub_1E3952C58();
      [v152 _setGradientMaskInsets_];

      v339.origin.x = OUTLINED_FUNCTION_9_75(v153, v154, v155, v156, v157, v158, v159, v160, v255, v260, v265, v271, v276, v281, v287, v292);
      v339.size.height = v146;
      v161 = CGRectGetHeight(v339);
      v162 = (v129)();
      v163 = 0.0;
      if (v21 > 0.0)
      {
        (v129)(0.0);
        v163 = v21 + v164;
      }

      v165 = v161 - v162 - v22 - v163;
      v166 = *MEMORY[0x1E69DDCE0];
      v266 = *(MEMORY[0x1E69DDCE0] + 16);
    }

    v261 = v113;
    OUTLINED_FUNCTION_21();
    v180 = (*(v179 + 312))();
    v181 = 0;
    *&v182 = v180 + 40;
    v282 = *&OBJC_IVAR____TtC8VideosUI17AlertTemplateView_debugUIOverlay;
    v306 = -*(v180 + 16);
    *&v293 = v180 + 40;
LABEL_56:
    v183 = (*&v182 + 16 * v181++);
    while (v306 + v181 != 1)
    {
      if ((v181 - 1) >= *(v180 + 16))
      {
        goto LABEL_99;
      }

      v184 = *(v183 - 1);
      v185 = *v183;
      *&v330 = v181 - 2;
      v331 = 0;
      v186 = v184;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31CB0, &qword_1E42B9FB0);
      sub_1E3A9C128();
      sub_1E38D2054(&v330, &v334);
      v187 = v334;
      if (v334 <= 1)
      {
        v188 = 1;
      }

      else
      {
        v188 = v334;
      }

      if (v334 >= 2)
      {
        v189 = v335;
      }

      else
      {
        v189 = 0;
      }

      if (v334 >= 2)
      {
        v190 = v188;
      }

      else
      {
        v190 = 0;
      }

      objc_opt_self();
      if (!swift_dynamicCastObjCClass())
      {
        (*(*v185 + 152))(&v323);
        v277 = v166;
        if (v327)
        {
          v192 = v166;
        }

        else
        {
          v192 = v323;
        }

        if (!v189 || (v193 = *(*v189 + 152), v194 = , v193(v328, v194), v195 = v328[2], , (v329 & 1) != 0))
        {
          v195 = v266;
        }

        v196 = fmax(v195, v192);
        if (v181 == 1)
        {
          v197 = 0.0;
        }

        else
        {
          v197 = v196;
        }

        v272 = sub_1E3280A90(0, &qword_1EE23AD70, 0x1E69E58C0);
        v198 = v297();
        v199 = sub_1E4206F64();

        if (v199)
        {
          v200 = v297();
          [v200 contentInset];
          v202 = v201;
          v204 = v203;
          v206 = v205;
          v207 = v147;
          v208 = v165;
          v210 = v209;

          v211 = v210;
          v165 = v208;
          v147 = v207;
          v212 = v256 + sub_1E3952BE0(v202, v204, v206, v211);
          v213 = v165;
        }

        else
        {
          v214 = (*(*v185 + 248))();
          OUTLINED_FUNCTION_7_106(v214, v215, v216, v217, v218, v219, v220, v221, v222, v223, v256, *&v261, v266, *&v272, v277, v282, v288, v293, *&v297, *&v298, v301);
          min<A>(_:_:)();
          v224 = v330;

          sub_1E3C8B764(v225, v224, 0.0);
          v212 = v226;
          v213 = v227;
        }

        v182 = v293;
        [v186 setFrame_];
        if (*(v298 + *&v282) == 1)
        {
          v228 = [objc_opt_self() randomColor];
          [v186 setVuiBackgroundColor_];
        }

        v147 = v147 + v197 + v213;
        v166 = v277;
        goto LABEL_56;
      }

      v191 = OUTLINED_FUNCTION_5_8();
      if (v187 >= 2)
      {
        [v188 frame];
      }

      [v186 setFrame_];

      ++v181;
      v183 += 2;
    }

    [v298 bounds];
    v229 = CGRectGetHeight(v341);
    v230 = (*((*MEMORY[0x1E69E7D40] & *v298) + 0x120))();
    v231 = v230;
    v232 = *(v230 + 16);
    if (!v232)
    {
LABEL_97:

      return;
    }

    v233 = v230 + 16 * v232 + 24;
    while (v232 <= *(v231 + 16))
    {
      --v232;
      v234 = *v233;
      v235 = *(**v233 + 248);
      v236 = *(v233 - 8);

      v238 = COERCE_DOUBLE(v235(v237));
      if (v239)
      {
        v238 = 0.0;
      }

      v240 = [v236 sizeThatFits_];
      v242 = v241;
      v244 = v243;
      v245 = *(*v234 + 152);
      v246 = v245(&v330, v240);
      v247 = v332;
      if (v333)
      {
        v247 = 0.0;
      }

      v248 = v229 - (v244 + v247);
      v249 = floor((width - v242) * 0.5);
      v245(&v334, v246);
      v250 = *&v334;
      if (v336)
      {
        v250 = 0.0;
      }

      v229 = v248 - v250;
      [v236 setFrame_];

      v233 -= 16;
      if (!v232)
      {
        goto LABEL_97;
      }
    }

    __break(1u);
LABEL_99:
    __break(1u);
  }

  __break(1u);
}

void sub_1E3A9B3B0()
{
  v1 = *(v0 + OBJC_IVAR____TtC8VideosUI17AlertTemplateView_mainImageView);
  if (v1)
  {
    v2 = [v1 image];
    if (v2)
    {
      v3 = v2;
      OUTLINED_FUNCTION_21();
      v5 = (*(v4 + 312))();
      v6 = 0;
      v7 = MEMORY[0x1E69E7CC0];
      v16 = MEMORY[0x1E69E7CC0];
      v8 = *(v5 + 16);
LABEL_4:
      v9 = 16 * v6 + 32;
      while (v8 != v6)
      {
        if (v6 >= *(v5 + 16))
        {
          __break(1u);
LABEL_22:
          __break(1u);
LABEL_23:
          __break(1u);
          return;
        }

        ++v6;
        v10 = v9 + 16;
        v11 = *(v5 + v9);
        v12 = swift_dynamicCastObjCProtocolConditional();
        v9 = v10;
        if (v12)
        {
          MEMORY[0x1E6910BF0](v11);
          if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1E42062F4();
          }

          sub_1E4206324();
          v7 = v16;
          goto LABEL_4;
        }
      }

      v13 = sub_1E32AE9B0(v7);
      for (i = 0; v13 != i; ++i)
      {
        if ((v7 & 0xC000000000000001) != 0)
        {
          v15 = MEMORY[0x1E6911E60](i, v7);
        }

        else
        {
          if (i >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_23;
          }

          v15 = *(v7 + 8 * i + 32);
          swift_unknownObjectRetain();
        }

        if (__OFADD__(i, 1))
        {
          goto LABEL_22;
        }

        [v15 sampleWithImage_];
        swift_unknownObjectRelease();
      }
    }
  }
}

void *sub_1E3A9B698(uint64_t a1)
{
  v2 = OBJC_IVAR____TtCC8VideosUI17AlertTemplateView15AlertActionCell_buttonView;
  OUTLINED_FUNCTION_0_12(a1);
  v3 = *(v1 + v2);
  v4 = v3;
  return v3;
}

void sub_1E3A9B6D4(void *a1)
{
  v3 = OBJC_IVAR____TtCC8VideosUI17AlertTemplateView15AlertActionCell_buttonView;
  OUTLINED_FUNCTION_3_0(&v1[OBJC_IVAR____TtCC8VideosUI17AlertTemplateView15AlertActionCell_buttonView], &v11);
  v4 = *&v1[v3];
  *&v1[v3] = a1;
  v5 = OBJC_IVAR____TtCC8VideosUI17AlertTemplateView15AlertActionCell_buttonView;
  v6 = a1;
  OUTLINED_FUNCTION_5_0(&v1[v5], v12);
  v7 = *&v1[v5];
  if (v7)
  {
    if (v7 == v4)
    {
      goto LABEL_8;
    }
  }

  else if (!v4)
  {
    goto LABEL_8;
  }

  [v4 removeFromSuperview];
  v8 = *&v1[v5];
  if (v8)
  {
    v9 = v8;
    v10 = [v1 contentView];
    [v10 addSubview_];
  }

  [v1 setNeedsLayout];
LABEL_8:
}

uint64_t sub_1E3A9B7C4()
{
  v2 = OUTLINED_FUNCTION_12_11();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_3_9(v3);
  v4 = OBJC_IVAR____TtCC8VideosUI17AlertTemplateView15AlertActionCell_buttonView;
  OUTLINED_FUNCTION_4_13();
  v5 = *(v0 + v4);
  *(v1 + 24) = v5;
  v6 = v5;
  return OUTLINED_FUNCTION_27_0();
}

void sub_1E3A9B82C(uint64_t a1, char a2)
{
  v2 = *a1;
  v4 = (*a1 + 24);
  v3 = *v4;
  if (a2)
  {
    v5 = v3;
    sub_1E3A9B6D4(v3);
  }

  else
  {
    sub_1E3A9B6D4(*(*a1 + 24));
  }

  free(v2);
}

uint64_t sub_1E3A9B908()
{
  OUTLINED_FUNCTION_21();
  v1 = (*(v0 + 88))();
  if (!v1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750, &unk_1E429DD30);
  result = swift_allocObject();
  *(result + 16) = xmmword_1E4298880;
  *(result + 32) = v2;
  return result;
}

uint64_t sub_1E3A9B998(uint64_t a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for AlertTemplateView.AlertActionCell();
  objc_msgSendSuper2(&v4, sel_prepareForReuse);
  OUTLINED_FUNCTION_21();
  return (*(v2 + 96))(0);
}

void sub_1E3A9BA48(uint64_t a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for AlertTemplateView.AlertActionCell();
  objc_msgSendSuper2(&v5, sel_layoutSubviews);
  OUTLINED_FUNCTION_21();
  v3 = (*(v2 + 88))();
  if (v3)
  {
    v4 = v3;
    [v1 bounds];
    [v4 setFrame_];
  }
}

id sub_1E3A9BB2C()
{
  OUTLINED_FUNCTION_0_8();
  *(v0 + OBJC_IVAR____TtCC8VideosUI17AlertTemplateView15AlertActionCell_buttonView) = 0;
  v9 = type metadata accessor for AlertTemplateView.AlertActionCell();
  v1 = OUTLINED_FUNCTION_2_0();
  v4 = objc_msgSendSuper2(v2, v3, v1, v0, v9);
  v5 = objc_opt_self();
  v6 = v4;
  v7 = [v5 clearColor];
  [v6 setBackgroundColor_];

  [v6 setClipsToBounds_];
  [v6 setOpaque_];
  [v6 setAutoresizingMask_];

  return v6;
}

void sub_1E3A9BC4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + OBJC_IVAR____TtCC8VideosUI17AlertTemplateView15AlertActionCell_buttonView) = 0;
  OUTLINED_FUNCTION_4_109("Fatal error", a2, a3, a4, a5, "VideosUI/AlertTemplateView.swift");
  __break(1u);
}

id sub_1E3A9BCBC(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_1E3A9BD04(unint64_t a1, unint64_t a2)
{
  v3 = a1;
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_36;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1E4207384())
  {
    if (a2 >> 62)
    {
      result = sub_1E4207384();
    }

    else
    {
      result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (i != result)
    {
      v21 = 0;
      return v21 & 1;
    }

    if (!i)
    {
      goto LABEL_31;
    }

    v7 = v3 & 0xFFFFFFFFFFFFFF8;
    v8 = (v3 & 0xFFFFFFFFFFFFFF8) + 32;
    v23 = v3 & 0xFFFFFFFFFFFFFF8;
    if (v3 < 0)
    {
      v7 = v3;
    }

    if (v4)
    {
      v8 = v7;
    }

    v9 = a2 & 0xFFFFFFFFFFFFFF8;
    v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    v22 = a2 & 0xFFFFFFFFFFFFFF8;
    if ((a2 & 0x8000000000000000) != 0)
    {
      v9 = a2;
    }

    if (a2 >> 62)
    {
      v10 = v9;
    }

    if (v8 == v10)
    {
LABEL_31:
      v21 = 1;
      return v21 & 1;
    }

    if (i < 0)
    {
      break;
    }

    v4 = sub_1E3280A90(0, &qword_1EE23AE80, 0x1E69DD250);
    v24 = v3;
    v11 = v3 & 0xC000000000000001;
    v12 = a2 & 0xC000000000000001;
    v13 = 4;
    v3 = i;
    v14 = a2;
    while (1)
    {
      v15 = v13 - 4;
      v16 = v13 - 3;
      if (__OFADD__(v13 - 4, 1))
      {
        break;
      }

      if (v11)
      {
        v17 = MEMORY[0x1E6911E60](v13 - 4, v24);
      }

      else
      {
        if (v15 >= *(v23 + 16))
        {
          goto LABEL_34;
        }

        v17 = *(v24 + 8 * v13);
      }

      v18 = v17;
      if (v12)
      {
        v19 = MEMORY[0x1E6911E60](v13 - 4, a2);
      }

      else
      {
        if (v15 >= *(v22 + 16))
        {
          goto LABEL_35;
        }

        v19 = *(a2 + 8 * v13);
      }

      v20 = v19;
      v21 = sub_1E4206F64();

      if (v21)
      {
        ++v13;
        a2 = v14;
        if (v16 != v3)
        {
          continue;
        }
      }

      return v21 & 1;
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    ;
  }

  __break(1u);
  return result;
}

void *sub_1E3A9BED8(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF31CA0, qword_1E42B7100);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[2 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31D38, &qword_1E42B9FF0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1E3A9C008(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(*v1 + 16);
  result = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = sub_1E3A9C18C(result, 1);
  v6 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  if ((*(v6 + 24) >> 1) - *(v6 + 16) < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31D38, &qword_1E42B9FF0);
  swift_arrayInitWithCopy();

  if (!v3)
  {
LABEL_8:
    *v1 = v6;
    return result;
  }

  v7 = *(v6 + 16);
  v8 = __OFADD__(v7, v3);
  v9 = v7 + v3;
  if (!v8)
  {
    *(v6 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

unint64_t sub_1E3A9C128()
{
  result = qword_1ECF31CB8;
  if (!qword_1ECF31CB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF31CB0, &qword_1E42B9FB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF31CB8);
  }

  return result;
}

void *sub_1E3A9C18C(int64_t a1, char a2)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v5;
  if (!result || a1 > v5[3] >> 1)
  {
    if (v5[2] <= a1)
    {
      v7 = a1;
    }

    else
    {
      v7 = v5[2];
    }

    result = sub_1E3A9BED8(result, v7, a2 & 1, v5);
    *v2 = result;
  }

  return result;
}

uint64_t sub_1E3A9C1F8()
{
  if (*(v0 + 120))
  {
    v1 = *(v0 + 120);
  }

  else
  {
    v2 = v0;
    type metadata accessor for ViewLayout();
    v1 = sub_1E3C2F968();
    sub_1E3952C88();
    OUTLINED_FUNCTION_4_110();
    (*(*v1 + 160))(v4);
    *(v2 + 120) = v1;
  }

  return v1;
}

uint64_t sub_1E3A9C2A0()
{
  if (*(v0 + 128))
  {
    v1 = *(v0 + 128);
  }

  else
  {
    v2 = v0;
    type metadata accessor for ButtonLayout();
    v3 = j__OUTLINED_FUNCTION_18();
    v4 = sub_1E3B050E8();
    v5 = j__OUTLINED_FUNCTION_18();
    v1 = sub_1E3BBD964(3, v3 & 1, v4, v5 & 1);
    *(v2 + 128) = v1;
  }

  return v1;
}

uint64_t sub_1E3A9C360(uint64_t a1)
{
  *(v1 + 136) = 0u;
  *(v1 + 120) = 0u;
  *(v1 + 104) = 0u;
  v2 = sub_1E3C2F9A0();

  sub_1E3A9C988();
  sub_1E37BD068();
  OUTLINED_FUNCTION_2_1();
  (*(v3 + 1696))(2);
  OUTLINED_FUNCTION_36();
  (*(v4 + 2056))(2, 0);
  OUTLINED_FUNCTION_36();
  v5 = OUTLINED_FUNCTION_5_107();
  v6(v5);
  OUTLINED_FUNCTION_36();
  (*(v7 + 1792))(10);
  OUTLINED_FUNCTION_36();
  (*(v8 + 2032))(1);
  v9 = *sub_1E3E5FD88();
  v10 = *(*v2 + 680);
  v11 = v9;
  v10(v9);
  sub_1E3952C58();
  OUTLINED_FUNCTION_4_110();
  (*(*v2 + 160))(v58);

  v12 = sub_1E374EA2C();
  sub_1E3A9CA58(v12);

  v13 = sub_1E3A9C2A0();
  (*(*v13 + 2048))();
  OUTLINED_FUNCTION_2_1();
  (*(v14 + 1696))(15);

  sub_1E3952C58();
  OUTLINED_FUNCTION_4_110();
  (*(*v13 + 160))(v58);
  OUTLINED_FUNCTION_13();
  v16 = *(v15 + 2096);
  v16();
  OUTLINED_FUNCTION_2_1();
  (*(v17 + 2072))(2);

  (v16)(v18);
  OUTLINED_FUNCTION_2_1();
  (*(v19 + 2024))(1, 0);

  (v16)(v20);
  OUTLINED_FUNCTION_2_1();
  (*(v21 + 2168))(7);

  v23 = (v16)(v22);
  v24 = *sub_1E3E5FD88();
  v25 = *(*v23 + 680);
  v26 = v24;
  v25(v24);

  v27.n128_u64[0] = 23.0;
  j__OUTLINED_FUNCTION_7_78(v27);
  OUTLINED_FUNCTION_3();
  type metadata accessor for RelationalLayout();
  v28 = sub_1E4177030();
  OUTLINED_FUNCTION_6();
  nullsub_1();
  OUTLINED_FUNCTION_3();
  sub_1E41776B0(23, v29, v30, v31, v32);
  v33 = OUTLINED_FUNCTION_6();
  sub_1E41776B0(v34, v33, v35, v36, v37);
  v38 = OUTLINED_FUNCTION_6();
  sub_1E41776B0(v39, v38, v40, v41, v42);
  v43 = OUTLINED_FUNCTION_6();
  sub_1E41776B0(v44, v43, v45, v46, v47);
  sub_1E37BD068();
  OUTLINED_FUNCTION_2_1();
  v49 = *(v48 + 1424);
  v50 = swift_retain_n();
  v49(v50);

  sub_1E374EA2C();
  OUTLINED_FUNCTION_2_1();
  (*(v51 + 1424))(v28);

  sub_1E3A9C2A0();
  OUTLINED_FUNCTION_2_1();
  (*(v52 + 1424))(v28);

  sub_1E3C37CBC(v53, 23);

  sub_1E3C37CBC(v54, 15);

  sub_1E3C37CBC(v55, 60);

  v56 = sub_1E3A9C1F8();
  sub_1E3C37CBC(v56, 113);

  return v2;
}

uint64_t sub_1E3A9C988()
{
  v1 = v0;
  v2 = sub_1E41FFF54();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E41FFF14();
  sub_1E41FFF04();
  v9 = v8;
  v11 = v10;
  result = (*(v4 + 8))(v7, v2);
  *(v1 + 136) = v9;
  *(v1 + 144) = v11;
  return result;
}

uint64_t sub_1E3A9CA58(uint64_t a1)
{
  v2 = sub_1E41FFF54();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v20[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E41FFF14();
  OUTLINED_FUNCTION_13();
  (*(v8 + 2056))(2, 0);
  OUTLINED_FUNCTION_13();
  v9 = OUTLINED_FUNCTION_5_107();
  v10(v9);
  v11 = [objc_opt_self() systemGrayColor];
  OUTLINED_FUNCTION_13();
  (*(v12 + 680))();
  OUTLINED_FUNCTION_13();
  (*(v13 + 1696))(17);
  sub_1E41FFF24();
  sub_1E3952C58();
  v20[0] = v14;
  v20[1] = v15;
  v20[2] = v16;
  v20[3] = v17;
  v21 = 0;
  (*(*a1 + 160))(v20);
  return (*(v4 + 8))(v7, v2);
}

uint64_t sub_1E3A9CC6C()
{
  v0 = sub_1E38F0724();

  return MEMORY[0x1EEE6BDC0](v0, 152, 7);
}

double sub_1E3A9CCF0()
{
  v0 = objc_opt_self();
  v1 = [v0 isMac];
  result = 30.0;
  if ((v1 & 1) == 0)
  {
    v3 = [v0 isVision];
    result = 28.0;
    if ((v3 & 1) == 0)
    {
      v4 = [v0 isTV];
      result = 34.0;
      if (v4)
      {
        return 48.0;
      }
    }
  }

  return result;
}

double sub_1E3A9CD78(void *a1, void *a2, double a3)
{
  v15[1] = *MEMORY[0x1E69E9840];
  v14 = 0;
  v15[0] = 0;
  v12 = 0.0;
  v13 = 0;
  [objc_opt_self() vuiColor:a1 getRed:v15 green:&v14 blue:&v13 alpha:&v12];
  if (a2)
  {
    v5 = v12;
    v6 = a2;
    v7 = [v6 colorWithAlphaComponent_];
    sub_1E38F08C4(v7);

    sub_1E4203C14();
    v9 = v8;
  }

  else
  {
    sub_1E38F08C4(a1);
    sub_1E4203C14();
    return v10;
  }

  return v9;
}

void sub_1E3A9CE94(unint64_t a1, uint64_t a2, uint64_t (*a3)(id, double))
{
  v4 = a1;
  v5 = sub_1E32AE9B0(a1);
  v6 = v5;
  v7 = *(a2 + 16);
  if (v7 >= v5)
  {
    v8 = v5;
  }

  else
  {
    v8 = *(a2 + 16);
  }

  v34 = MEMORY[0x1E69E7CC0];
  sub_1E3A9D65C(0, v8 & ~(v8 >> 63), 0);
  if (v6 < 0)
  {
LABEL_43:
    __break(1u);
LABEL_44:

    __break(1u);
    return;
  }

  v33 = v4 >> 62;
  v30 = v4;
  if (v8)
  {
    v9 = 0;
    v32 = v4 & 0xC000000000000001;
    v10 = v4 & 0xFFFFFFFFFFFFFF8;
    v28 = a2;
    v29 = a2 + 32;
    while (1)
    {
      v11 = v33 ? sub_1E4207384() : *(v10 + 16);
      if (v9 == v11)
      {
        break;
      }

      if (v32)
      {
        v12 = MEMORY[0x1E6911E60](v9, v4);
      }

      else
      {
        if (v9 >= *(v10 + 16))
        {
          goto LABEL_42;
        }

        v12 = *(v4 + 8 * v9 + 32);
      }

      v6 = v12;
      if (v7 == v9)
      {
        goto LABEL_44;
      }

      v13 = a3(v12, *(v29 + 8 * v9));
      v15 = v14;

      v17 = *(v34 + 16);
      v16 = *(v34 + 24);
      v6 = v17 + 1;
      if (v17 >= v16 >> 1)
      {
        sub_1E3A9D65C((v16 > 1), v17 + 1, 1);
      }

      ++v9;
      *(v34 + 16) = v6;
      v18 = v34 + 16 * v17;
      *(v18 + 32) = v13;
      *(v18 + 40) = v15;
      v4 = v30;
      if (v8 == v9)
      {
        a2 = v28;
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v10 = v4 & 0xFFFFFFFFFFFFFF8;
  v32 = v4 & 0xC000000000000001;
LABEL_21:
  v19 = a2 + 32;
  while (1)
  {
    v20 = v33 ? sub_1E4207384() : *(v10 + 16);
    if (v8 == v20)
    {
      break;
    }

    if (v32)
    {
      v21 = MEMORY[0x1E6911E60](v8, v4);
    }

    else
    {
      if (v8 >= *(v10 + 16))
      {
        goto LABEL_40;
      }

      v21 = *(v4 + 8 * v8 + 32);
    }

    v22 = v21;
    if (__OFADD__(v8, 1))
    {
      goto LABEL_39;
    }

    if (v7 == v8)
    {

      return;
    }

    if (v8 >= v7)
    {
      goto LABEL_41;
    }

    v6 = a3(v21, *(v19 + 8 * v8));
    v24 = v23;

    v26 = *(v34 + 16);
    v25 = *(v34 + 24);
    if (v26 >= v25 >> 1)
    {
      sub_1E3A9D65C((v25 > 1), v26 + 1, 1);
    }

    *(v34 + 16) = v26 + 1;
    v27 = v34 + 16 * v26;
    *(v27 + 32) = v6;
    *(v27 + 40) = v24;
    ++v8;
    v4 = v30;
  }
}

void sub_1E3A9D168()
{
  OUTLINED_FUNCTION_16_68();
  if (!v2)
  {
    if (v0)
    {
      OUTLINED_FUNCTION_8();
      v3 = (*(v4 + 1816))();
      goto LABEL_6;
    }

LABEL_14:
    v16 = 0;
    v17 = 0uLL;
    v18 = 0uLL;
    goto LABEL_15;
  }

  if (!v0)
  {
    goto LABEL_14;
  }

  v3 = v1;
LABEL_6:
  OUTLINED_FUNCTION_8();
  v6 = *(v5 + 1768);

  v8 = v6(v7);
  if (v8 == 5 || (sub_1E3A9D374(v8, 1, v9) & 1) == 0 || (OUTLINED_FUNCTION_8(), (*(v10 + 1720))(), (v11 & 1) != 0) || (OUTLINED_FUNCTION_8(), (*(v12 + 1744))(), (v13 & 1) != 0) || (OUTLINED_FUNCTION_8(), (v15 = (*(v14 + 1792))()) == 0) || !v3)
  {

    goto LABEL_14;
  }

  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_17_64();
  OUTLINED_FUNCTION_19_59();

  sub_1E4203C24();
  OUTLINED_FUNCTION_14_85();
  sub_1E4201064();
  v16 = v19;
  v17 = v20;
  v18 = v21;
LABEL_15:
  OUTLINED_FUNCTION_15_76(v16, v17, v18);
}

uint64_t sub_1E3A9D374(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1E3A9D7B4(a1, a2, a3);
  sub_1E4206254();
  sub_1E4206254();
  if (v8 == v6 && v9 == v7)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_1E42079A4();
  }

  return v4 & 1;
}

void sub_1E3A9D424()
{
  OUTLINED_FUNCTION_16_68();
  if (!v2)
  {
    if (v0)
    {
      OUTLINED_FUNCTION_8();
      v3 = (*(v4 + 1816))();
      goto LABEL_6;
    }

LABEL_15:
    v18 = 0;
    v19 = 0uLL;
    v20 = 0uLL;
    goto LABEL_16;
  }

  if (!v0)
  {
    goto LABEL_15;
  }

  v3 = v1;
LABEL_6:
  OUTLINED_FUNCTION_8();
  v6 = *(v5 + 1768);

  v8 = v6(v7);
  if (v8 == 5 || (sub_1E3A9D374(v8, 2, v9) & 1) == 0 || (OUTLINED_FUNCTION_8(), (*(v10 + 1720))(), (v11 & 1) != 0) || (OUTLINED_FUNCTION_8(), (*(v12 + 1840))(), (v13 & 1) != 0) || (OUTLINED_FUNCTION_8(), (*(v14 + 1864))(), (v15 & 1) != 0) || (OUTLINED_FUNCTION_8(), (v17 = (*(v16 + 1792))()) == 0) || !v3)
  {

    goto LABEL_15;
  }

  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_17_64();
  OUTLINED_FUNCTION_19_59();

  sub_1E4203C24();
  OUTLINED_FUNCTION_14_85();
  sub_1E4201144();
  v18 = v21;
  v19 = v22;
  v20 = v23;
LABEL_16:
  OUTLINED_FUNCTION_15_76(v18, v19, v20);
}

char *sub_1E3A9D65C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1E3A9D67C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1E3A9D67C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E378, &qword_1E42B4C40);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_1E3A9D7B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EE275F80;
  if (!qword_1EE275F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE275F80);
  }

  return result;
}

uint64_t sub_1E3A9D80C(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for ViewInteractionStates(0);
  sub_1E3A9D8C8();
  v12[0] = sub_1E4201754();
  v12[1] = v10;
  v13 = a1;
  v14 = a2;
  v15 = a3;
  sub_1E37FAED4(a2, a3);
  MEMORY[0x1E690DE70](v12, a4, &type metadata for TappableHighlightedArea, a5);

  return sub_1E37FAED8(a2, a3);
}

unint64_t sub_1E3A9D8C8()
{
  result = qword_1EE263DF8[0];
  if (!qword_1EE263DF8[0])
  {
    type metadata accessor for ViewInteractionStates(255);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE263DF8);
  }

  return result;
}

double sub_1E3A9D920(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for ViewInteractionStates(0);
  sub_1E3A9D8C8();
  v8[0] = sub_1E4201754();
  v8[1] = v6;
  v8[2] = a1;

  MEMORY[0x1E690DE70](v8, a2, &type metadata for HighlightRowIfNeed, a3);

  return result;
}

unint64_t sub_1E3A9D9C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EE298530[0];
  if (!qword_1EE298530[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE298530);
  }

  return result;
}

uint64_t get_witness_table_7SwiftUI4ViewRzlAA15ModifiedContentVyx06VideosB023TappableHighlightedArea33_6ECA81762323E6D1CADDB158CB2F2631LLVGAaBHPxAaBHD1__AhA0C8ModifierHPyHCHCTm(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  sub_1E42013A4();
  a3();
  return swift_getWitnessTable();
}

unint64_t sub_1E3A9DA84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EE2A0D28[0];
  if (!qword_1EE2A0D28[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE2A0D28);
  }

  return result;
}

void *sub_1E3A9DAD8(void *result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    result[1] = 0;
    result[2] = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      return OUTLINED_FUNCTION_65(result, a2);
    }
  }

  return result;
}

uint64_t sub_1E3A9DB34(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 40))
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

void *sub_1E3A9DB88(void *result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 1) = 0u;
    *(result + 3) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      return OUTLINED_FUNCTION_65(result, a2);
    }
  }

  return result;
}

uint64_t sub_1E3A9DC04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  if (a4)
  {
    v9 = (*(*a4 + 744))(a1, a2, a3);
    v10 = (*(*a4 + 864))();
    if (v10)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v9 = 0;
  }

  v11 = v9;
  v10 = v9;
LABEL_6:
  if (a2)
  {

    if ((sub_1E3B1DDD8() & 1) != 0 && v10)
    {
      v12 = v10;
    }

    else
    {
      v12 = [objc_opt_self() clearColor];
    }

    v13 = v12;
    sub_1E38F08C4(v12);

    sub_1E3B1DDD8();

    sub_1E4203734();

    v14 = sub_1E4203A74();
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31D50, &qword_1E42B73C8);
    (*(*(v15 - 8) + 16))(a5, a1, v15);
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31D58, &qword_1E42B73D0);
    *(a5 + *(result + 36)) = v14;
  }

  else
  {
    type metadata accessor for ViewInteractionStates(0);
    sub_1E3A9D8C8();
    result = sub_1E4201744();
    __break(1u);
  }

  return result;
}

double sub_1E3A9DE50()
{
  v11 = *v0;
  v1 = *(v0 + 3);
  v2 = *(v0 + 4);
  v3 = swift_allocObject();
  v4 = v0[1];
  *(v3 + 16) = *v0;
  *(v3 + 32) = v4;
  *(v3 + 48) = *(v0 + 4);
  sub_1E3A9E050(&v11, &v10);
  sub_1E37FAED4(v1, v2);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31D48, &qword_1E42B73C0);
  OUTLINED_FUNCTION_1_11();
  v8 = sub_1E32752B0(v6, &qword_1ECF31D48, &qword_1E42B73C0, v7);
  sub_1E383F5C4(1, sub_1E3A9DF5C, v3, v1, v2, v5, v8);

  return result;
}

void sub_1E3A9DF5C(uint64_t a1)
{
  if ((*(v1 + 32) & 1) == 0)
  {
    v2 = sub_1E383E8EC();
    sub_1E383FB9C(v2, v3, v4);
    sub_1E4207284();
    if ((sub_1E4207294() & 1) == 0)
    {
      sub_1E42072A4();
    }
  }

  if (*(v1 + 16))
  {

    sub_1E3B1E260(a1);
  }

  else
  {
    type metadata accessor for ViewInteractionStates(0);
    sub_1E3A9D8C8();
    sub_1E4201744();
    __break(1u);
  }
}

uint64_t sub_1E3A9E050(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31D40, &qword_1E42B73B8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1E3A9E0C0()
{
  result = qword_1EE289A78;
  if (!qword_1EE289A78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF31D58, &qword_1E42B73D0);
    sub_1E32752B0(&qword_1EE2888F0, &qword_1ECF31D50, &qword_1E42B73C8, MEMORY[0x1E697FDF8]);
    sub_1E32752B0(&qword_1EE2889C8, &qword_1ECF31D60, &qword_1E42B73D8, MEMORY[0x1E697FDC0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289A78);
  }

  return result;
}

uint64_t sub_1E3A9E1BC()
{
  v1 = (v0 + OBJC_IVAR____TtC8VideosUI18MetricsRenderEvent_sessionUUID);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_1E3A9E214(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC8VideosUI18MetricsRenderEvent_sessionUUID);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_1E3A9E2D4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1684632949 && a2 == 0xE400000000000000;
  if (v3 || (OUTLINED_FUNCTION_0_54(1684632949, 0xE400000000000000) & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = OUTLINED_FUNCTION_21_54();
    v8 = a1 == v6 && a2 == v7;
    if (v8 || (OUTLINED_FUNCTION_0_54(v6, v7) & 1) != 0)
    {

      return 1;
    }

    else
    {
      v9 = a1 == 0x644965676170 && a2 == 0xE600000000000000;
      if (v9 || (OUTLINED_FUNCTION_0_54(0x644965676170, 0xE600000000000000) & 1) != 0)
      {

        return 2;
      }

      else
      {
        v10 = a1 == 0x6570795465676170 && a2 == 0xE800000000000000;
        if (v10 || (OUTLINED_FUNCTION_0_54(0x6570795465676170, 0xE800000000000000) & 1) != 0)
        {

          return 3;
        }

        else
        {
          v11 = OUTLINED_FUNCTION_20_57();
          v13 = a1 == v11 && a2 == v12;
          if (v13 || (OUTLINED_FUNCTION_0_54(v11, v12) & 1) != 0)
          {

            return 4;
          }

          else
          {
            v14 = a1 == 0x656D614E65676170 && a2 == 0xE800000000000000;
            if (v14 || (OUTLINED_FUNCTION_0_54(0x656D614E65676170, 0xE800000000000000) & 1) != 0)
            {

              return 5;
            }

            else
            {
              v15 = a1 == 0x6F527361766E6163 && a2 == 0xEA0000000000746FLL;
              if (v15 || (OUTLINED_FUNCTION_0_54(0x6F527361766E6163, 0xEA0000000000746FLL) & 1) != 0)
              {

                return 6;
              }

              else
              {
                v16 = OUTLINED_FUNCTION_22_44() & 0xFFFFFFFFFFFFLL | 0x6570000000000000;
                v18 = a1 == v16 && a2 == v17;
                if (v18 || (OUTLINED_FUNCTION_0_54(v16, v17) & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  OUTLINED_FUNCTION_23();
                  v20 = a1 == 0xD000000000000011 && v19 == a2;
                  if (v20 || (OUTLINED_FUNCTION_0_54(0xD000000000000011, v19) & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    OUTLINED_FUNCTION_23();
                    v22 = a1 == 0xD000000000000014 && v21 == a2;
                    if (v22 || (OUTLINED_FUNCTION_0_54(0xD000000000000014, v21) & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      OUTLINED_FUNCTION_23();
                      v24 = a1 == 0xD000000000000012 && v23 == a2;
                      if (v24 || (OUTLINED_FUNCTION_0_54(0xD000000000000012, v23) & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        OUTLINED_FUNCTION_23();
                        v26 = a1 == 0xD00000000000001ALL && v25 == a2;
                        if (v26 || (OUTLINED_FUNCTION_0_54(0xD00000000000001ALL, v25) & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          OUTLINED_FUNCTION_23();
                          v28 = a1 == 0xD000000000000018 && v27 == a2;
                          if (v28 || (OUTLINED_FUNCTION_0_54(0xD000000000000018, v27) & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            OUTLINED_FUNCTION_23();
                            v30 = a1 == 0xD000000000000017 && v29 == a2;
                            if (v30 || (OUTLINED_FUNCTION_0_54(0xD000000000000017, v29) & 1) != 0)
                            {

                              return 13;
                            }

                            else
                            {
                              OUTLINED_FUNCTION_23();
                              v32 = a1 == 0xD00000000000001ALL && v31 == a2;
                              if (v32 || (OUTLINED_FUNCTION_0_54(0xD00000000000001ALL, v31) & 1) != 0)
                              {

                                return 14;
                              }

                              else
                              {
                                OUTLINED_FUNCTION_23();
                                v34 = a1 == 0xD00000000000001DLL && v33 == a2;
                                if (v34 || (OUTLINED_FUNCTION_0_54(0xD00000000000001DLL, v33) & 1) != 0)
                                {

                                  return 15;
                                }

                                else
                                {
                                  OUTLINED_FUNCTION_23();
                                  v36 = a1 == 0xD000000000000014 && v35 == a2;
                                  if (v36 || (OUTLINED_FUNCTION_0_54(0xD000000000000014, v35) & 1) != 0)
                                  {

                                    return 16;
                                  }

                                  else
                                  {
                                    OUTLINED_FUNCTION_23();
                                    v38 = a1 == 0xD000000000000012 && v37 == a2;
                                    if (v38 || (OUTLINED_FUNCTION_0_54(0xD000000000000012, v37) & 1) != 0)
                                    {

                                      return 17;
                                    }

                                    else
                                    {
                                      OUTLINED_FUNCTION_23();
                                      v40 = a1 == 0xD000000000000018 && v39 == a2;
                                      if (v40 || (OUTLINED_FUNCTION_0_54(0xD000000000000018, v39) & 1) != 0)
                                      {

                                        return 18;
                                      }

                                      else
                                      {
                                        OUTLINED_FUNCTION_23();
                                        v42 = a1 == 0xD000000000000016 && v41 == a2;
                                        if (v42 || (OUTLINED_FUNCTION_0_54(0xD000000000000016, v41) & 1) != 0)
                                        {

                                          return 19;
                                        }

                                        else
                                        {
                                          v43 = OUTLINED_FUNCTION_19_60();
                                          if (a1 == v43 && a2 == v44)
                                          {

                                            return 20;
                                          }

                                          else
                                          {
                                            v46 = OUTLINED_FUNCTION_0_54(v43, v44);

                                            if (v46)
                                            {
                                              return 20;
                                            }

                                            else
                                            {
                                              return 21;
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_1E3A9E77C(char a1)
{
  switch(a1)
  {
    case 1:
      OUTLINED_FUNCTION_21_54();
      break;
    case 4:
      OUTLINED_FUNCTION_20_57();
      break;
    case 7:
      OUTLINED_FUNCTION_22_44();
      break;
    case 8:
    case 9:
    case 11:
    case 12:
    case 14:
    case 15:
    case 16:
    case 18:
    case 19:
      OUTLINED_FUNCTION_23_43();
      break;
    case 10:
    case 13:
    case 17:
      OUTLINED_FUNCTION_23();
      break;
    case 20:
      OUTLINED_FUNCTION_19_60();
      break;
    default:
      return;
  }
}

uint64_t sub_1E3A9E9E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E3A9E2D4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E3A9EA14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1E3A9EF90(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1E3A9EA50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1E3A9EF90(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

id MetricsRenderEvent.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for MetricsRenderEvent();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t MetricsRenderEvent.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31E10, &qword_1E42B73E0);
  OUTLINED_FUNCTION_0_10();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v16[-v9];
  v11 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E3A9EF90(v11, v12, v13);
  sub_1E4207C14();
  OUTLINED_FUNCTION_16_69(OBJC_IVAR____TtC8VideosUI18MetricsRenderEvent_uuid);
  v16[15] = 0;
  sub_1E42078C4();
  if (v2)
  {
    return (*(v7 + 8))(v10, v5);
  }

  OUTLINED_FUNCTION_3_112(1);
  sub_1E42078D4();
  OUTLINED_FUNCTION_16_69(OBJC_IVAR____TtC8VideosUI18MetricsRenderEvent_pageId);
  OUTLINED_FUNCTION_0_129(2);
  sub_1E42078C4();
  OUTLINED_FUNCTION_16_69(OBJC_IVAR____TtC8VideosUI18MetricsRenderEvent_pageType);
  OUTLINED_FUNCTION_0_129(3);
  sub_1E42078C4();
  OUTLINED_FUNCTION_16_69(OBJC_IVAR____TtC8VideosUI18MetricsRenderEvent_pageContext);
  OUTLINED_FUNCTION_0_129(4);
  sub_1E42078C4();
  OUTLINED_FUNCTION_16_69(OBJC_IVAR____TtC8VideosUI18MetricsRenderEvent_pageName);
  OUTLINED_FUNCTION_0_129(5);
  sub_1E4207894();
  OUTLINED_FUNCTION_16_69(OBJC_IVAR____TtC8VideosUI18MetricsRenderEvent_canvasRoot);
  OUTLINED_FUNCTION_0_129(6);
  sub_1E4207894();
  OUTLINED_FUNCTION_3_112(7);
  sub_1E42078F4();
  OUTLINED_FUNCTION_7_30(OBJC_IVAR____TtC8VideosUI18MetricsRenderEvent_pageInterruptTime);
  OUTLINED_FUNCTION_0_129(8);
  sub_1E42078B4();
  OUTLINED_FUNCTION_3_112(9);
  sub_1E42078F4();
  OUTLINED_FUNCTION_3_112(10);
  sub_1E42078F4();
  OUTLINED_FUNCTION_3_112(11);
  sub_1E42078F4();
  OUTLINED_FUNCTION_3_112(12);
  sub_1E42078F4();
  OUTLINED_FUNCTION_3_112(13);
  sub_1E42078F4();
  OUTLINED_FUNCTION_7_30(OBJC_IVAR____TtC8VideosUI18MetricsRenderEvent_interstitialPageAppearTime);
  OUTLINED_FUNCTION_0_129(14);
  sub_1E42078B4();
  OUTLINED_FUNCTION_7_30(OBJC_IVAR____TtC8VideosUI18MetricsRenderEvent_interstitialPageDisappearTime);
  OUTLINED_FUNCTION_0_129(15);
  sub_1E42078B4();
  OUTLINED_FUNCTION_7_30(OBJC_IVAR____TtC8VideosUI18MetricsRenderEvent_modelRenderStartTime);
  OUTLINED_FUNCTION_0_129(16);
  sub_1E42078B4();
  OUTLINED_FUNCTION_7_30(OBJC_IVAR____TtC8VideosUI18MetricsRenderEvent_modelRenderEndTime);
  OUTLINED_FUNCTION_0_129(17);
  sub_1E42078B4();
  OUTLINED_FUNCTION_7_30(OBJC_IVAR____TtC8VideosUI18MetricsRenderEvent_resourceRequestStartTime);
  OUTLINED_FUNCTION_0_129(18);
  sub_1E42078B4();
  OUTLINED_FUNCTION_7_30(OBJC_IVAR____TtC8VideosUI18MetricsRenderEvent_resourceRequestEndTime);
  OUTLINED_FUNCTION_0_129(19);
  v14 = sub_1E42078B4();
  (*((*MEMORY[0x1E69E7D40] & *v3) + 0xF8))(v14);
  OUTLINED_FUNCTION_0_129(20);
  sub_1E4207894();
  (*(v7 + 8))(v10, v5);
}

unint64_t sub_1E3A9EF90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF54AA0[0];
  if (!qword_1ECF54AA0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECF54AA0);
  }

  return result;
}

id MetricsRenderEvent.init(from:)(void *a1)
{
  v3 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31E18, &unk_1E42B73E8);
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v5);
  v6 = &v1[OBJC_IVAR____TtC8VideosUI18MetricsRenderEvent_sessionUUID];
  *v6 = 0;
  v6[1] = 0;
  v46 = v6;
  v7 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E3A9EF90(v7, v8, v9);
  sub_1E4207C04();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);

    type metadata accessor for MetricsRenderEvent();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v45 = 0;
    v10 = sub_1E4207834();
    OUTLINED_FUNCTION_17_65(v10, v12, OBJC_IVAR____TtC8VideosUI18MetricsRenderEvent_uuid);
    OUTLINED_FUNCTION_2_106(1);
    v1[OBJC_IVAR____TtC8VideosUI18MetricsRenderEvent_isAppLaunch] = sub_1E4207844() & 1;
    OUTLINED_FUNCTION_2_106(2);
    v13 = sub_1E4207834();
    OUTLINED_FUNCTION_17_65(v13, v14, OBJC_IVAR____TtC8VideosUI18MetricsRenderEvent_pageId);
    OUTLINED_FUNCTION_2_106(3);
    v15 = sub_1E4207834();
    OUTLINED_FUNCTION_17_65(v15, v16, OBJC_IVAR____TtC8VideosUI18MetricsRenderEvent_pageType);
    OUTLINED_FUNCTION_2_106(4);
    v17 = sub_1E4207834();
    OUTLINED_FUNCTION_17_65(v17, v18, OBJC_IVAR____TtC8VideosUI18MetricsRenderEvent_pageContext);
    OUTLINED_FUNCTION_2_106(5);
    v19 = sub_1E4207804();
    OUTLINED_FUNCTION_17_65(v19, v20, OBJC_IVAR____TtC8VideosUI18MetricsRenderEvent_pageName);
    OUTLINED_FUNCTION_2_106(6);
    v21 = sub_1E4207804();
    OUTLINED_FUNCTION_17_65(v21, v22, OBJC_IVAR____TtC8VideosUI18MetricsRenderEvent_canvasRoot);
    OUTLINED_FUNCTION_2_106(7);
    *&v1[OBJC_IVAR____TtC8VideosUI18MetricsRenderEvent_pageAppearTime] = sub_1E4207874();
    OUTLINED_FUNCTION_2_106(8);
    v23 = sub_1E4207824();
    OUTLINED_FUNCTION_5_108(v23, v24, OBJC_IVAR____TtC8VideosUI18MetricsRenderEvent_pageInterruptTime);
    OUTLINED_FUNCTION_2_106(9);
    *&v1[OBJC_IVAR____TtC8VideosUI18MetricsRenderEvent_pageRequestStartTime] = sub_1E4207874();
    OUTLINED_FUNCTION_1_131(10);
    *&v1[OBJC_IVAR____TtC8VideosUI18MetricsRenderEvent_pageRequestEndTime] = sub_1E4207874();
    OUTLINED_FUNCTION_1_131(11);
    *&v1[OBJC_IVAR____TtC8VideosUI18MetricsRenderEvent_viewModelCreationStartTime] = sub_1E4207874();
    OUTLINED_FUNCTION_1_131(12);
    *&v1[OBJC_IVAR____TtC8VideosUI18MetricsRenderEvent_viewModelCreationEndTime] = sub_1E4207874();
    OUTLINED_FUNCTION_1_131(13);
    *&v1[OBJC_IVAR____TtC8VideosUI18MetricsRenderEvent_pageUserInteractiveTime] = sub_1E4207874();
    OUTLINED_FUNCTION_1_131(14);
    v25 = sub_1E4207824();
    OUTLINED_FUNCTION_5_108(v25, v26, OBJC_IVAR____TtC8VideosUI18MetricsRenderEvent_interstitialPageAppearTime);
    OUTLINED_FUNCTION_1_131(15);
    v27 = sub_1E4207824();
    OUTLINED_FUNCTION_5_108(v27, v28, OBJC_IVAR____TtC8VideosUI18MetricsRenderEvent_interstitialPageDisappearTime);
    OUTLINED_FUNCTION_1_131(16);
    v29 = sub_1E4207824();
    OUTLINED_FUNCTION_5_108(v29, v30, OBJC_IVAR____TtC8VideosUI18MetricsRenderEvent_modelRenderStartTime);
    OUTLINED_FUNCTION_1_131(17);
    v31 = sub_1E4207824();
    OUTLINED_FUNCTION_5_108(v31, v32, OBJC_IVAR____TtC8VideosUI18MetricsRenderEvent_modelRenderEndTime);
    OUTLINED_FUNCTION_1_131(18);
    v33 = sub_1E4207824();
    OUTLINED_FUNCTION_5_108(v33, v34, OBJC_IVAR____TtC8VideosUI18MetricsRenderEvent_resourceRequestStartTime);
    OUTLINED_FUNCTION_1_131(19);
    v35 = sub_1E4207824();
    OUTLINED_FUNCTION_5_108(v35, v36, OBJC_IVAR____TtC8VideosUI18MetricsRenderEvent_resourceRequestEndTime);
    OUTLINED_FUNCTION_1_131(20);
    v37 = sub_1E4207804();
    v39 = v38;
    v40 = v46;
    swift_beginAccess();
    *v40 = v37;
    v40[1] = v39;

    v41 = type metadata accessor for MetricsRenderEvent();
    v44.receiver = v3;
    v44.super_class = v41;
    v3 = objc_msgSendSuper2(&v44, sel_init);
    v42 = OUTLINED_FUNCTION_18_52();
    v43(v42);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v3;
}

uint64_t sub_1E3A9F664@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 280))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1E3A9F6FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v43 = *MEMORY[0x1E69E9840];
  v6 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1E41FE624();
  OUTLINED_FUNCTION_0_10();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = MEMORY[0x1E69E6158];

  if (a3)
  {
    v18 = a3;
  }

  else
  {
    sub_1E41FE614();
    a2 = sub_1E41FE5E4();
    v18 = v19;
    (*(v14 + 8))(v17, v12);
  }

  *&v41 = a2;
  *(&v41 + 1) = v18;
  sub_1E329504C(&v41, v40);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v39[2] = a1;
  sub_1E32A87C0(v40, 1684632949, 0xE400000000000000, isUniquelyReferenced_nonNull_native);
  v21 = objc_opt_self();
  v22 = sub_1E4205C44();

  *&v41 = 0;
  v23 = [v21 dataWithJSONObject:v22 options:0 error:&v41];

  v24 = v41;
  if (v23)
  {
    v25 = sub_1E41FE464();
    v27 = v26;

    sub_1E41FDE24();
    swift_allocObject();
    sub_1E41FDE14();
    type metadata accessor for MetricsRenderEvent();
    sub_1E3A9FCA8();
    sub_1E41FDE04();
    sub_1E38DCCB0(v25, v27);

    return v41;
  }

  else
  {
    v28 = v24;
    v29 = sub_1E41FE274();

    swift_willThrow();
    v30 = sub_1E324FBDC();
    (*(v8 + 16))(v11, v30, v6);
    v31 = v29;
    v32 = sub_1E41FFC94();
    v33 = sub_1E42067F4();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      *v34 = 138412290;
      v36 = v29;
      v37 = _swift_stdlib_bridgeErrorToNSError();
      *(v34 + 4) = v37;
      *v35 = v37;
      _os_log_impl(&dword_1E323F000, v32, v33, "Could not parse MetricsRenderEvent from VUIDictionary: %@", v34, 0xCu);
      sub_1E3A66B00(v35);
      MEMORY[0x1E69143B0](v35, -1, -1);
      MEMORY[0x1E69143B0](v34, -1, -1);
    }

    else
    {
    }

    (*(v8 + 8))(v11, v6);
    return 0;
  }
}

unint64_t sub_1E3A9FB38()
{
  v1 = *(v0 + OBJC_IVAR____TtC8VideosUI18MetricsRenderEvent_pageRequestEndTime);
  v2 = *(v0 + OBJC_IVAR____TtC8VideosUI18MetricsRenderEvent_pageRequestStartTime);
  v3 = v1 >= v2;
  v4 = v1 - v2;
  if (v3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_1E3A9FB5C()
{
  v1 = *(v0 + OBJC_IVAR____TtC8VideosUI18MetricsRenderEvent_pageUserInteractiveTime);
  v2 = *(v0 + OBJC_IVAR____TtC8VideosUI18MetricsRenderEvent_pageRequestEndTime);
  v3 = v1 >= v2;
  v4 = v1 - v2;
  if (v3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_1E3A9FB94()
{
  v1 = *(v0 + OBJC_IVAR____TtC8VideosUI18MetricsRenderEvent_viewModelCreationEndTime);
  v2 = *(v0 + OBJC_IVAR____TtC8VideosUI18MetricsRenderEvent_viewModelCreationStartTime);
  v3 = v1 >= v2;
  v4 = v1 - v2;
  if (v3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_1E3A9FBE0(void *a1, void *a2)
{
  v3 = (v2 + *a1);
  if (v3[1])
  {
    return 0;
  }

  v5 = *v3;
  v6 = (v2 + *a2);
  v7 = *v6;
  v8 = *(v6 + 8);
  v9 = v7 >= v5;
  v10 = v7 - v5;
  v11 = !v9;
  v12 = v8 | v11;
  if (v9)
  {
    v13 = v10;
  }

  else
  {
    v13 = 0;
  }

  if (v12)
  {
    return 0;
  }

  else
  {
    return v13;
  }
}

unint64_t sub_1E3A9FC30()
{
  v1 = *(v0 + OBJC_IVAR____TtC8VideosUI18MetricsRenderEvent_pageUserInteractiveTime);
  v2 = *(v0 + OBJC_IVAR____TtC8VideosUI18MetricsRenderEvent_pageRequestStartTime);
  v3 = v1 >= v2;
  v4 = v1 - v2;
  if (v3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1E3A9FC54()
{
  if (!*(v0 + OBJC_IVAR____TtC8VideosUI18MetricsRenderEvent_pageName + 8))
  {
    OUTLINED_FUNCTION_11_2();
  }

  return OUTLINED_FUNCTION_32_0();
}

unint64_t sub_1E3A9FCA8()
{
  result = qword_1ECF315C0;
  if (!qword_1ECF315C0)
  {
    type metadata accessor for MetricsRenderEvent();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF315C0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MetricsRenderEvent.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xEC)
  {
    if (a2 + 20 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 20) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 21;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x15;
  v5 = v6 - 21;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for MetricsRenderEvent.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 20 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 20) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xEC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xEB)
  {
    v6 = ((a2 - 236) >> 8) + 1;
    *result = a2 + 20;
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
          *result = a2 + 20;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1E3A9FE64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF54CB0[0];
  if (!qword_1ECF54CB0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECF54CB0);
  }

  return result;
}

unint64_t sub_1E3A9FEBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF54DC0;
  if (!qword_1ECF54DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF54DC0);
  }

  return result;
}

unint64_t sub_1E3A9FF14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF54DC8[0];
  if (!qword_1ECF54DC8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECF54DC8);
  }

  return result;
}

uint64_t sub_1E3A9FF6C(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC8VideosUI8CardView_debugUI;
  OUTLINED_FUNCTION_0_12(a1);
  return *(v1 + v2);
}

uint64_t sub_1E3A9FFA0(char a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC8VideosUI8CardView_debugUI;
  result = OUTLINED_FUNCTION_14_0(v2 + OBJC_IVAR____TtC8VideosUI8CardView_debugUI, a2);
  *(v2 + v4) = a1;
  return result;
}

double sub_1E3AA006C(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC8VideosUI8CardView_cardViewLayout;
  OUTLINED_FUNCTION_14_0(v2 + OBJC_IVAR____TtC8VideosUI8CardView_cardViewLayout, a2);
  *(v2 + v4) = a1;

  return result;
}

void *sub_1E3AA0108(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC8VideosUI8CardView_imageAndOverlayContainerView;
  OUTLINED_FUNCTION_0_12(a1);
  v3 = *(v1 + v2);
  v4 = v3;
  return v3;
}

uint64_t sub_1E3AA0150()
{
  v0 = OUTLINED_FUNCTION_12_11();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_3_9(v1);
  OUTLINED_FUNCTION_4_13();
  OUTLINED_FUNCTION_13_9();
  v3 = v2;
  return OUTLINED_FUNCTION_27_0();
}

void *sub_1E3AA01CC(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC8VideosUI8CardView_imageView;
  OUTLINED_FUNCTION_0_12(a1);
  v3 = *(v1 + v2);
  v4 = v3;
  return v3;
}

void sub_1E3AA0208(void *a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC8VideosUI8CardView_imageView;
  OUTLINED_FUNCTION_14_0(&v2[OBJC_IVAR____TtC8VideosUI8CardView_imageView], a2);
  v5 = *&v2[v4];
  *&v2[v4] = a1;
  OUTLINED_FUNCTION_21();
  v7 = *(v6 + 216);
  v8 = a1;
  v9 = v7();
  if (v9)
  {
    v10 = v9;
    v11 = OBJC_IVAR____TtC8VideosUI8CardView_imageView;
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    if ([v10 vui:*&v2[v11] addSubview:v5 oldView:?] && *&v2[v11])
    {
      [v10 vui_sendSubviewToBack_];
    }
  }

  v12 = objc_opt_self();
  v13 = [v12 defaultCenter];
  v14 = *MEMORY[0x1E69DF860];
  [v13 removeObserver:v2 name:*MEMORY[0x1E69DF860] object:0];

  v15 = OBJC_IVAR____TtC8VideosUI8CardView_imageView;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  if (*&v2[v15])
  {
    v16 = [v12 defaultCenter];
    [v16 addObserver:v2 selector:sel_mainImageLoadedNotificationHandler name:v14 object:*&v2[v15]];
  }

  [v2 vui_setNeedsLayout];
}

uint64_t sub_1E3AA03AC()
{
  v0 = OUTLINED_FUNCTION_12_11();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_3_9(v1);
  OUTLINED_FUNCTION_4_13();
  OUTLINED_FUNCTION_13_9();
  v3 = v2;
  return OUTLINED_FUNCTION_27_0();
}

void sub_1E3AA0428(uint64_t a1, char a2, void (*a3)(id))
{
  v4 = *a1;
  v6 = (*a1 + 24);
  v5 = *v6;
  if (a2)
  {
    v7 = v5;
    a3(v5);
  }

  else
  {
    a3(*(*a1 + 24));
  }

  free(v4);
}

void *sub_1E3AA04A8(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC8VideosUI8CardView_appImageView;
  OUTLINED_FUNCTION_0_12(a1);
  v3 = *(v1 + v2);
  v4 = v3;
  return v3;
}

uint64_t sub_1E3AA04F0()
{
  v0 = OUTLINED_FUNCTION_12_11();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_3_9(v1);
  OUTLINED_FUNCTION_4_13();
  OUTLINED_FUNCTION_13_9();
  v3 = v2;
  return OUTLINED_FUNCTION_27_0();
}

void *sub_1E3AA056C(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC8VideosUI8CardView_overlayView;
  OUTLINED_FUNCTION_0_12(a1);
  v3 = *(v1 + v2);
  v4 = v3;
  return v3;
}

void sub_1E3AA05A8(void *a1, uint64_t a2)
{
  v3 = v2;
  v5 = OBJC_IVAR____TtC8VideosUI8CardView_overlayView;
  OUTLINED_FUNCTION_14_0(&v3[OBJC_IVAR____TtC8VideosUI8CardView_overlayView], a2);
  v6 = *&v3[v5];
  *&v3[v5] = a1;
  OUTLINED_FUNCTION_8_22();
  v8 = *(v7 + 216);
  v9 = a1;
  v10 = v8();
  if (v10)
  {
    v11 = v10;
    v12 = OBJC_IVAR____TtC8VideosUI8CardView_overlayView;
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    if ([v11 vui:*&v3[v12] addSubview:v6 oldView:?] && *&v3[v12])
    {
      [v11 vui_bringSubviewToFront_];
    }
  }

  OUTLINED_FUNCTION_8_22();
  if ((*(v13 + 192))())
  {
    OUTLINED_FUNCTION_26_0();
    (*(v14 + 1920))();
    OUTLINED_FUNCTION_30();
    (*(v15 + 552))(v35);
    v16 = *&v35[3];

    if (v36)
    {
      OUTLINED_FUNCTION_26();
      (*(v17 + 552))(v37);
      if (v38)
      {

        goto LABEL_20;
      }

      v20 = *&v37[2];
      v21 = *&v37[3];
      v18 = *v37;
      v19 = *&v37[1];
    }

    else
    {
      v18 = OUTLINED_FUNCTION_4_94();
      v21 = v16;
    }

    v22 = sub_1E3952BE8(v18, v19, v20, v21);
    OUTLINED_FUNCTION_8_22();
    v23 += 36;
    v24 = *v23;
    v25 = (*v23)();
    v26 = [v25 vuiLayer];

    [v26 setCornerRadius_];
    if (v24())
    {
      sub_1E3280A90(0, &qword_1EE23AE80, 0x1E69DD250);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3BDD0, qword_1E42DC520);
      if (swift_dynamicCast())
      {
        if (*(&v30 + 1))
        {
          sub_1E3251BE8(&v29, v32);
          v27 = v33;
          v28 = v34;
          __swift_mutable_project_boxed_opaque_existential_1(v32, v33);
          (*(v28 + 48))(v27, v28, v22);

          __swift_destroy_boxed_opaque_existential_1(v32);
          goto LABEL_20;
        }
      }

      else
      {
        v31 = 0;
        v29 = 0u;
        v30 = 0u;
      }
    }

    else
    {

      v31 = 0;
      v29 = 0u;
      v30 = 0u;
    }

    sub_1E3AA22F4(&v29);
  }

LABEL_20:
  [v3 mainImageLoadedNotificationHandler];
}

uint64_t sub_1E3AA091C()
{
  v0 = OUTLINED_FUNCTION_12_11();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_3_9(v1);
  OUTLINED_FUNCTION_4_13();
  OUTLINED_FUNCTION_13_9();
  v3 = v2;
  return OUTLINED_FUNCTION_27_0();
}

void sub_1E3AA0998(unint64_t a1, unint64_t *a2, double *a3, uint64_t *a4, uint64_t *a5, void *a6, uint64_t *a7)
{
  v12 = 0;
  v21 = a1 & 0xC000000000000001;
  v22 = sub_1E32AE9B0(a1);
  while (1)
  {
    if (v22 == v12)
    {

      return;
    }

    if (v21)
    {
      v13 = MEMORY[0x1E6911E60](v12, a1);
    }

    else
    {
      if (v12 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_16;
      }

      v13 = *(a1 + 8 * v12 + 32);
    }

    v14 = v13;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    v15 = *a5;
    v28 = *a4;
    v23 = v15;
    v24 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31EA8, &unk_1E42F41A0);
    sub_1E3827828(&unk_1EE23B460, &qword_1ECF31EA8, &unk_1E42F41A0);
    sub_1E38D2054(&v23, &v25);
    [a6 bounds];
    [a6 vuiIsRTL];
    VUIRectWithFlippedOriginRelativeToBoundingRectWithCondition();
    [v14 setFrame_];
    v16 = *a5;
    v28 = *a4;
    v23 = v16;
    v24 = 0;
    sub_1E38D2054(&v23, &v25);
    v17 = v26;
    if (v27)
    {
      v17 = 0.0;
    }

    *a3 = v17 + *a3;
    v18 = *a5 + 1;
    if (__OFADD__(*a5, 1))
    {
      goto LABEL_17;
    }

    *a5 = v18;
    v28 = *a7;
    v23 = v18;
    v24 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2FC90, &unk_1E42A75C0);
    sub_1E3827828(&unk_1ECF31EB0, &unk_1ECF2FC90, &unk_1E42A75C0);
    sub_1E38D2054(&v23, &v25);
    v19 = v25;
    if (LOBYTE(v26))
    {
      v19 = 0.0;
    }

    *a3 = v19 + *a3;

    ++v12;
  }

  __break(1u);
LABEL_16:
  __break(1u);
LABEL_17:
  __break(1u);
}

void sub_1E3AA0C60(unint64_t a1, double a2, double a3, double a4, double a5, double a6, uint64_t a7, char a8, id *a9, double *a10, _BYTE *a11, void *a12, uint64_t *a13, _BYTE *a14, id *a15)
{
  v22 = 0;
  v85 = a1 & 0xC000000000000001;
  v86 = sub_1E32AE9B0(a1);
  v83 = a1 & 0xFFFFFFFFFFFFFF8;
  v84 = a1;
  while (1)
  {
    if (v86 == v22)
    {

      return;
    }

    if (v85)
    {
      v23 = MEMORY[0x1E6911E60](v22, v84);
    }

    else
    {
      if (v22 >= *(v83 + 16))
      {
        goto LABEL_74;
      }

      v23 = *(v84 + 8 * v22 + 32);
    }

    v24 = v23;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    v25 = [v23 textLayout];
    [v25 margin];
    v27 = v26;
    v29 = v28;
    v31 = v30;

    [v24 sizeThatFits_];
    if (v33 == 0.0 && v32 == 0.0)
    {
      goto LABEL_68;
    }

    v34 = VUIRoundValue();
    v36 = v35;
    sub_1E3A96E4C(v34, v37, v38);
    sub_1E4206254();
    sub_1E4206254();
    if (v89 == v87 && v90 == v88)
    {
    }

    else
    {
      v40 = sub_1E42079A4();

      if ((v40 & 1) == 0)
      {
        goto LABEL_17;
      }
    }

    if ((a8 & 1) == 0)
    {
      goto LABEL_25;
    }

LABEL_17:
    sub_1E4206254();
    sub_1E4206254();
    if (v89 == v87 && v90 == v88)
    {

LABEL_24:
      if ((a8 & 1) == 0)
      {
        goto LABEL_26;
      }

LABEL_25:
      v29 = v29 + a3;
      goto LABEL_26;
    }

    v42 = sub_1E42079A4();

    if (v42)
    {
      goto LABEL_24;
    }

LABEL_26:
    if (v27 <= 0.0)
    {
      if (v31 <= 0.0)
      {
        goto LABEL_55;
      }

      if (*a9)
      {
        v46 = *a9;
        sub_1E3C8B6B4(v24, v31);
        v48 = v47;

        v49 = v36 + v48;
        v50 = *a10;
      }

      else
      {
        [v24 bottomMarginWithBaselineMargin_];
        v50 = a6 - v36;
      }

      *a10 = v50 - v49;
      sub_1E4206254();
      sub_1E4206254();
      if (v89 == v87 && v90 == v88)
      {
        goto LABEL_48;
      }

      v53 = sub_1E42079A4();

      if (v53)
      {
        goto LABEL_49;
      }

      sub_1E4206254();
      sub_1E4206254();
      if (v89 == v87 && v90 == v88)
      {
LABEL_48:

LABEL_49:
        *a11 = 0;
        goto LABEL_55;
      }

      v55 = sub_1E42079A4();

      if (v55)
      {
        goto LABEL_49;
      }
    }

    else
    {
      if (*a9)
      {
        v43 = [*a9 attributedText];
        if (*a9)
        {
          v44 = *a9;
          if (v43)
          {
            v45 = [v43 attributedSubstringFromRange_];
          }

          else
          {
            v45 = 0;
          }

          [v44 setAttributedText_];

          v51 = *a9;
        }

        else
        {
          v51 = 0;
        }
      }

      else
      {
        v51 = 0;
        v43 = 0;
      }

      v56 = v51;
      sub_1E3C8B6B4(v51, v27);
      v58 = v57;

      if (*a9)
      {
        v59 = *a9;
        [v59 setAttributedText_];
      }

      *a10 = v58 + *a10;
    }

LABEL_55:
    v60 = *a10;
    if (a8)
    {
      [a12 bounds];
      VUIRectWithFlippedOriginRelativeToBoundingRect();
      v29 = v61;
      v60 = v62;
      v64 = v63;
      v66 = v65;
    }

    else
    {
      v64 = a2;
      v66 = v36;
    }

    [v24 setFrame_];
    v67 = *a13;
    v68 = v24;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *a13 = v67;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v67 = sub_1E3AA7018(0, v67[2] + 1, 1, v67);
      *a13 = v67;
    }

    v71 = v67[2];
    v70 = v67[3];
    if (v71 >= v70 >> 1)
    {
      v67 = sub_1E3AA7018((v70 > 1), v71 + 1, 1, v67);
      *a13 = v67;
    }

    v67[2] = v71 + 1;
    v72 = &v67[5 * v71];
    *(v72 + 4) = v68;
    v72[5] = v29;
    v72[6] = v60;
    v72[7] = v64;
    v72[8] = v66;
    if (*a14 == 1)
    {
      *a10 = v36 + *a10;
    }

    v73 = *a9;
    *a9 = v68;
    v24 = v68;

    if (((*((*MEMORY[0x1E69E7D40] & *a12) + 0xA8))() & 1) == 0 || (v74 = sub_1E3AA73A8(v24), !v75))
    {
LABEL_68:

      goto LABEL_69;
    }

    v76 = v75;
    if (*a15)
    {
      v77 = v74;
      v78 = *a15;
      sub_1E42074B4();

      v89 = 0x206C6562614C200ALL;
      v90 = 0xE90000000000005BLL;
      MEMORY[0x1E69109E0](v77, v76);

      MEMORY[0x1E69109E0](0x20656D617246205DLL, 0xE90000000000005BLL);
      sub_1E3280A90(0, &unk_1ECF31E80, 0x1E696AB10);
      v79 = sub_1E389BF5C(v29, v60, v64, v66);
      MEMORY[0x1E69109E0](v79);

      MEMORY[0x1E69109E0](93, 0xE100000000000000);
      v80 = sub_1E4205ED4();

      sub_1E4206854();
    }

    else
    {
    }

LABEL_69:
    ++v22;
  }

  __break(1u);
LABEL_74:
  __break(1u);
}

double sub_1E3AA1448(uint64_t a1)
{
  OUTLINED_FUNCTION_0_12(a1);

  return result;
}

void sub_1E3AA1480(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI8CardView_labelViews;
  swift_beginAccess();
  v4 = *&v1[v3];
  *&v1[v3] = a1;
  v5 = OBJC_IVAR____TtC8VideosUI8CardView_labelViews;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v6 = *&v1[v5];
  if (v4)
  {
    if (v6)
    {

      v7 = OUTLINED_FUNCTION_27_0();
      v9 = sub_1E3AA6E44(v7, v8);

      if (v9)
      {
        goto LABEL_27;
      }
    }

    v10 = sub_1E32AE9B0(v4);
    for (i = 0; v10 != i; ++i)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x1E6911E60](i, v4);
      }

      else
      {
        if (i >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_31;
        }

        v12 = *(v4 + 8 * i + 32);
      }

      v13 = v12;
      if (__OFADD__(i, 1))
      {
        goto LABEL_30;
      }

      [v12 removeFromSuperview];
    }

    v6 = *&v1[v5];
    if (!v6)
    {
LABEL_26:
      [v1 vui_setNeedsLayout];
      goto LABEL_27;
    }
  }

  else if (!v6)
  {
LABEL_27:

    return;
  }

  v14 = sub_1E32AE9B0(v6);

  v15 = 0;
  v16 = &selRef_textLayout;
  while (1)
  {
    if (v14 == v15)
    {

      goto LABEL_26;
    }

    if ((v6 & 0xC000000000000001) != 0)
    {
      v17 = MEMORY[0x1E6911E60](v15, v6);
    }

    else
    {
      if (v15 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_29;
      }

      v17 = *(v6 + 8 * v15 + 32);
    }

    v18 = v17;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    [v1 v16[466]];
    OUTLINED_FUNCTION_21();
    if ((*(v19 + 168))())
    {
      v20 = v16;
      v21 = [objc_opt_self() randomColor];
      [v18 setBackgroundColor_];

      v16 = v20;
    }

    ++v15;
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
}

uint64_t sub_1E3AA16E4()
{
  v2 = OUTLINED_FUNCTION_12_11();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_3_9(v3);
  v4 = OBJC_IVAR____TtC8VideosUI8CardView_labelViews;
  OUTLINED_FUNCTION_4_13();
  *(v1 + 24) = *(v0 + v4);

  return OUTLINED_FUNCTION_27_0();
}

void sub_1E3AA174C(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  if (a2)
  {

    sub_1E3AA1480(v4);
  }

  else
  {
    sub_1E3AA1480(v3);
  }

  free(v2);
}

void *sub_1E3AA17B0(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC8VideosUI8CardView_button;
  OUTLINED_FUNCTION_0_12(a1);
  v3 = *(v1 + v2);
  v4 = v3;
  return v3;
}

void sub_1E3AA17F8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_29_31(a1, a2, a3, a4, a5, a6, a7, a8, v12);
  v11 = OUTLINED_FUNCTION_43_26();
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  [v8 vui:*&v8[v10] addSubview:v9 oldView:?];
}

uint64_t sub_1E3AA1868()
{
  v0 = OUTLINED_FUNCTION_12_11();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_3_9(v1);
  OUTLINED_FUNCTION_4_13();
  OUTLINED_FUNCTION_13_9();
  v3 = v2;
  return OUTLINED_FUNCTION_27_0();
}

void *sub_1E3AA18E4(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC8VideosUI8CardView_downloadIndicator;
  OUTLINED_FUNCTION_0_12(a1);
  v3 = *(v1 + v2);
  v4 = v3;
  return v3;
}

uint64_t sub_1E3AA192C()
{
  v0 = OUTLINED_FUNCTION_12_11();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_3_9(v1);
  OUTLINED_FUNCTION_4_13();
  OUTLINED_FUNCTION_13_9();
  v3 = v2;
  return OUTLINED_FUNCTION_27_0();
}

void *sub_1E3AA19A8(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC8VideosUI8CardView_attributionView;
  OUTLINED_FUNCTION_0_12(a1);
  v3 = *(v1 + v2);
  v4 = v3;
  return v3;
}

uint64_t sub_1E3AA19F0()
{
  v0 = OUTLINED_FUNCTION_12_11();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_3_9(v1);
  OUTLINED_FUNCTION_4_13();
  OUTLINED_FUNCTION_13_9();
  v3 = v2;
  return OUTLINED_FUNCTION_27_0();
}

void *sub_1E3AA1A6C(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC8VideosUI8CardView_bottomSeparatorView;
  OUTLINED_FUNCTION_0_12(a1);
  v3 = *(v1 + v2);
  v4 = v3;
  return v3;
}

void sub_1E3AA1AB4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_29_31(a1, a2, a3, a4, a5, a6, a7, a8, v12);
  v11 = OUTLINED_FUNCTION_43_26();
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  [v8 vui:*&v8[v10] addSubview:v9 oldView:?];
  [v8 vui_setNeedsLayout];
}

uint64_t sub_1E3AA1B34()
{
  v0 = OUTLINED_FUNCTION_12_11();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_3_9(v1);
  OUTLINED_FUNCTION_4_13();
  OUTLINED_FUNCTION_13_9();
  v3 = v2;
  return OUTLINED_FUNCTION_27_0();
}

id sub_1E3AA1BB0()
{
  OUTLINED_FUNCTION_0_8();
  *(v0 + OBJC_IVAR____TtC8VideosUI8CardView_debugUI) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI8CardView_cardViewLayout) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI8CardView_imageAndOverlayContainerView) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI8CardView_imageView) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI8CardView_appImageView) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI8CardView_overlayView) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI8CardView_labelViews) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI8CardView_button) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI8CardView_downloadIndicator) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI8CardView_attributionView) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI8CardView_bottomSeparatorView) = 0;
  v5 = type metadata accessor for CardView();
  v1 = OUTLINED_FUNCTION_2_0();
  return objc_msgSendSuper2(v2, v3, v1, v0, v5);
}

void sub_1E3AA1CC8()
{
  *(v0 + OBJC_IVAR____TtC8VideosUI8CardView_debugUI) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI8CardView_cardViewLayout) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI8CardView_imageAndOverlayContainerView) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI8CardView_imageView) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI8CardView_appImageView) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI8CardView_overlayView) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI8CardView_labelViews) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI8CardView_button) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI8CardView_downloadIndicator) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI8CardView_attributionView) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI8CardView_bottomSeparatorView) = 0;
  sub_1E42076B4();
  __break(1u);
}

id sub_1E3AA1DC0()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver:v0 name:*MEMORY[0x1E69DF860] object:0];

  v3.receiver = v0;
  v3.super_class = type metadata accessor for CardView();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_1E3AA1FA0(char a1)
{
  v6.receiver = v1;
  v6.super_class = type metadata accessor for CardView();
  objc_msgSendSuper2(&v6, sel_setHighlighted_, a1 & 1);
  OUTLINED_FUNCTION_21();
  v4 = (*(v3 + 240))();
  if (v4)
  {
    v5 = v4;
    [v4 setHighlighted_];
  }
}

uint64_t sub_1E3AA2088()
{
  v1 = [objc_opt_self() defaultCenter];
  v2 = *MEMORY[0x1E69DF860];
  OUTLINED_FUNCTION_21();
  v4 = *(v3 + 240);
  v5 = v4();
  [v1 removeObserver:v0 name:v2 object:v5];

  v6 = v4();
  if (v6)
  {
    v7 = v6;
    OUTLINED_FUNCTION_25();
    [v8 v9];
  }

  v10 = v4();
  if (v10)
  {
    v11 = v10;
    [v10 setImageContainsCornerRadius_];
  }

  v12 = v4();
  if (v12)
  {
    v13 = v12;
    [v12 setImage_];
  }

  OUTLINED_FUNCTION_21();
  v15 = (*(v14 + 264))();
  if (v15)
  {
    v16 = v15;
    [v15 setImage_];
  }

  OUTLINED_FUNCTION_21();
  v18 = (*(v17 + 288))();
  if (v18 && (v25[0] = v18, sub_1E3280A90(0, &qword_1EE23AE80, 0x1E69DD250), __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3BDD0, qword_1E42DC520), (swift_dynamicCast() & 1) != 0))
  {
    if (*(&v23 + 1))
    {
      sub_1E3251BE8(&v22, v25);
      __swift_project_boxed_opaque_existential_1(v25, v25[3]);
      v19 = OUTLINED_FUNCTION_27_0();
      v20(v19);
      return __swift_destroy_boxed_opaque_existential_1(v25);
    }
  }

  else
  {
    v24 = 0;
    v22 = 0u;
    v23 = 0u;
  }

  return sub_1E3AA22F4(&v22);
}